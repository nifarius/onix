module ONIX
  class RelatedProduct
    include ROXML

    xml_name "RelatedProduct"

    xml_accessor :relation_code,        from: "RelationCode",       as: Fixnum, to_xml: ONIX::Formatters.two_digit
    xml_accessor :product_identifiers,  from: "ProductIdentifier",  as: [ONIX::ProductIdentifier]

    def initialize
      self.product_identifiers = []
    end
  end
end