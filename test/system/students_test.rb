require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Birthdate", with: @student.birthdate
    fill_in "Career", with: @student.career
    fill_in "Career year", with: @student.career_year
    fill_in "Document number", with: @student.document_number
    fill_in "Document type", with: @student.document_type
    fill_in "Email", with: @student.email
    fill_in "Experience", with: @student.experience
    check "Is active" if @student.is_active
    fill_in "Last name", with: @student.last_name
    fill_in "Name", with: @student.name
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Birthdate", with: @student.birthdate
    fill_in "Career", with: @student.career
    fill_in "Career year", with: @student.career_year
    fill_in "Document number", with: @student.document_number
    fill_in "Document type", with: @student.document_type
    fill_in "Email", with: @student.email
    fill_in "Experience", with: @student.experience
    check "Is active" if @student.is_active
    fill_in "Last name", with: @student.last_name
    fill_in "Name", with: @student.name
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end