public class INS_PopulatePropertyDetails {
    public class PropertyInput {
        
        @InvocableVariable
        public String street;
        
        @InvocableVariable
        public String city;
        
        @InvocableVariable
        public String state;
        
        @InvocableVariable
        public String postalCode;
        
        @InvocableVariable
        public String country;
        
        @InvocableVariable
        public String description;
        
        @InvocableVariable
        public String make;
        
        @InvocableVariable
        public String model;
        
        @InvocableVariable
        public String accountId;
        
        @InvocableVariable
        public String recordTypeId;
        
        @InvocableVariable
        public String imageUrl;
        
    }
    @InvocableMethod(label='Populate property details from Domain API')
    public static List<String> populatePropertyDetails(List<PropertyInput> inputs) {
        PropertyInput input = inputs[0];
        CustomerProperty property = new CustomerProperty();
        property.City = input.city;
        property.Country = input.country;
        property.Description = input.description;
        property.Make = input.make;
        property.ModelName = input.model;
        property.PostalCode = input.postalCode;
        property.PrimaryOwnerId = input.accountId;
        property.RecordTypeId = input.recordTypeId;
        property.State = input.state;
        property.Street = input.street;
        property.Main_Image__c = input.imageUrl;
        
        
        /* For Fins Basecamp - stub the API response instead of making a call */
        property.BathroomCount     = 3;
        property.BedroomCount      = 4;
        property.GarageSpaceCount  = 2;
        property.BuiltUpArea       = '649';
        property.RoofType          = 'Slate';
        property.FloorType         = 'Carpet';
        property.CeilingType       = 'Conventional';
        property.DwellingType      = 'Duplex';
        property.GarageType        = 'Carport';
        property.FoundationType    = 'Slab';
        property.ConstructionClass = 'Basic';
        property.PrimaryUse        = 'Personal';
        property.YearBuilt         = 1999;
        
        insert property;
        
        // Make a call to the Domain API to fill up the property information
        //INS_DomainAPIController.updateCustomerProperty(property.Id);
        System.Debug(property.Id);
        return new List<String>{ property.Id };
    }
}