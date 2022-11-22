require "application_system_test_case"

class MahasiswasTest < ApplicationSystemTestCase
  setup do
    @mahasiswa = mahasiswas(:one)
  end

  test "visiting the index" do
    visit mahasiswas_url
    assert_selector "h1", text: "Mahasiswas"
  end

  test "should create mahasiswa" do
    visit mahasiswas_url
    click_on "New mahasiswa"

    fill_in "Alamat", with: @mahasiswa.alamat
    fill_in "Nama", with: @mahasiswa.nama
    fill_in "Umur", with: @mahasiswa.umur
    click_on "Create Mahasiswa"

    assert_text "Mahasiswa was successfully created"
    click_on "Back"
  end

  test "should update Mahasiswa" do
    visit mahasiswa_url(@mahasiswa)
    click_on "Edit this mahasiswa", match: :first

    fill_in "Alamat", with: @mahasiswa.alamat
    fill_in "Nama", with: @mahasiswa.nama
    fill_in "Umur", with: @mahasiswa.umur
    click_on "Update Mahasiswa"

    assert_text "Mahasiswa was successfully updated"
    click_on "Back"
  end

  test "should destroy Mahasiswa" do
    visit mahasiswa_url(@mahasiswa)
    click_on "Destroy this mahasiswa", match: :first

    assert_text "Mahasiswa was successfully destroyed"
  end
end
