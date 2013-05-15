module ONIX
  class MainSubject
    include ROXML

    xml_name "MainSubject"

    xml_accessor :main_subject_scheme_identifier, from: "MainSubjectSchemeIdentifier",  to_xml: ONIX::Formatters.two_digit
    xml_accessor :subject_code,                   from: "SubjectCode"
  end
end