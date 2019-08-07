({
    doInit : function(component, event, helper) {
        helper.callServer(
            component,
            "c.getVehicles",
            function (response) {
                component.set("v.vehicles", response);
            },
            { 
                policyId : component.get("v.recordId") 
            }
        );
    },
    handleSelect : function(component, event, helper) {
        var vehicleId = event.getParam('selectedId');
        component.set('v.selectedVehicleId', vehicleId);
       
    }
})