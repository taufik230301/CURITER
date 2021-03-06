<?php
defined('BASEPATH') or exit('No direct script access allowed');

/**
 * 
 */
class Dokter extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('admin/model_dokter');
		$this->load->model('admin/model_jadwal');
		$this->load->model('m_poli');
		$this->load->model('m_rs');
		$this->load->model('admin/model_rs');
		$this->load->library('form_validation');
		$this->load->model('admin/m_admin');
		$this->load->library('session');
		$this->load->library('upload');
	}

	public function index()
	{
		$this->m_admin->checklogin();
		$data['title'] = 'Curiter | Admin';
		$data['d'] = $this->model_dokter->get_dokter();
		$data['rs'] = $this->model_dokter->get_rs();
		$this->load->view('header_page_admin', $data);
		$this->load->view('admin/v_rumahsakit', $data);
		$this->load->view('footer_page');
	}

	public function detaildokter($id)
	{
		$data['title'] = 'Curiter | Admin';
		$data['d'] = $this->model_dokter->get_dokterbyid($id);
		$data['rs'] = $this->m_rs->get_datars($id);
		$data['poli'] = $this->m_poli->get_polibyid($id);
		$this->load->view('header_page_admin', $data);
		$this->load->view('admin/v_datadokter', $data);
		$this->load->view('footer_page');
	}

	public function tambah()
	{
		$id_rs = $this->input->post('id_rs', true);
		$no_dokter = $this->input->post('no', true);
		$nama_dokter = $this->input->post('nama', true);
		$id_poli = $this->input->post('id_poli', true);
		$email_dokter = $this->input->post('email', true);

		$config['upload_path'] = './assets/dokter';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048';  //2MB max
		$config['max_width'] = '4480'; // pixel
		$config['max_height'] = '4480'; // pixel
		$config['file_name'] = $_FILES['foto_dokter']['name'];

		$this->upload->initialize($config);

		if (!empty($_FILES['foto_dokter']['name'])) {
			if ($this->upload->do_upload('foto_dokter')) {
				$foto = $this->upload->data();
				$data = array(
					'id_rs'       => $id_rs,
					'no_dokter'			=> $no_dokter,
					'nama_dokter'			=> $nama_dokter,
					'id_poli'			=> $id_poli,
					'email_dokter'	=> $email_dokter,
					'foto_dokter'       => $foto['file_name'],
				);
				$this->model_dokter->tambah_dokter($data);
				redirect('admin/dokter/detaildokter/' . $data['id_rs']);
			} else {
				$this->load->view('gagal');
			}
		} else {

			$this->load->view('gagal');
		}
	}
	public function edit($id)
	{
		$id_rs = $this->input->post('rs', true);
		$no_dokter = $this->input->post('no', true);
		$nama_dokter = $this->input->post('nama', true);
		$email_dokter = $this->input->post('email', true);

		$path = './assets/dokter/';
		$kondisi = array('id_dokter' => $id);

		// ambil foto
		$config['upload_path'] = './assets/dokter';
		$config['allowed_types'] = 'jpg|png|jpeg|gif';
		$config['max_size'] = '2048'; // 2MB
		$config['max_widht'] = '4480'; // Pixel
		$config['max_height'] = '4480'; //Pixel
		$config['file_name'] = $_FILES['foto_dokter']['name'];

		$this->upload->initialize($config);

		if (!empty($_FILES['foto_dokter']['name'])) {
			if ($this->upload->do_upload('foto_dokter')) {
				$foto = $this->upload->data();
				$data = array(
					'id_rs'       => $id_rs,
					'no_dokter'			=> $no_dokter,
					'nama_dokter'			=> $nama_dokter,
					'email_dokter'		=> $email_dokter,
					'foto_dokter'       => $foto['file_name'],
				);
				// hapus foto pada direktori
				@unlink($path . $this->input->post('filelama'));

				$this->model_dokter->update_dokter($kondisi, $data);
				redirect('admin/dokter/detaildokter/' . $data['id_rs']);
			} else {
				echo "Upload Gagal";
			}
		} else {
			$this->load->view('gagal');
		}


		// $data = [
		// 	'id_rs' => $this->input->post('rs', true),
		// 	'no_dokter' => $this->input->post('no', true),
		// 	'nama_dokter' => $this->input->post('nama', true),
		// 	'email_dokter' => $this->input->post('email', true),

		// ];
		// $this->model_dokter->update_dokter($id, $data);
		// redirect('admin/dokter/index');
	}
	public function hapus($id, $data)
	{
		$path = './assets/dokter/';
		@unlink($path . $data);
		$this->model_rs->delete_poli($id);
		$this->model_dokter->delete_dokter($id);
		redirect('admin/dokter/index');
	}

	public function jadwal($id)
	{
		$data['title'] = 'Curiter | Admin';
		$data['jadwal'] = $this->model_jadwal->getjadwal($id);
		$data['dokter'] = $this->model_dokter->get_dokter($id);
		$this->load->view('header_page_admin', $data);
		$this->load->view('admin/v_jadwal_dokter', $data);
		$this->load->view('footer_page');
	}

	public function tambahJadwal()
	{
		$data = [
			'id_dokter' => $this->input->post('id_dokter', true),
			'senin' => $this->input->post('senin', true),
			'selasa' => $this->input->post('selasa', true),
			'rabu' => $this->input->post('rabu', true),
			'kamis' => $this->input->post('kamis', true),
			'jumat' => $this->input->post('jumat', true),
			'sabtu' => $this->input->post('sabtu', true),
			'minggu' => $this->input->post('minggu', true)
		];
		$this->model_jadwal->tambah_jadwal($data);
		redirect('admin/dokter/jadwal/' . $data['id_dokter']);
	}

	public function editJadwal($id)
	{
		$data = [
			'id_dokter' => $this->input->post('id_dokter', true),
			'senin' => $this->input->post('senin', true),
			'selasa' => $this->input->post('selasa', true),
			'rabu' => $this->input->post('rabu', true),
			'kamis' => $this->input->post('kamis', true),
			'jumat' => $this->input->post('jumat', true),
			'sabtu' => $this->input->post('sabtu', true),
			'minggu' => $this->input->post('minggu', true)

		];
		$this->model_jadwal->update_jadwal($id, $data);
		redirect('admin/dokter/jadwal/' . $data['id_dokter']);
	}

	public function hapusJadwal($id)
	{
		$this->model_jadwal->delete_jadwal($id);
		redirect('admin/dokter/index/');
	}
}
