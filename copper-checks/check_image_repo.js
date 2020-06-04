$$.forEach(function($){
    if ($.kind === 'Deployment') {
        $.spec.template.spec.containers.forEach(function(container) {
            var image = new DockerImage(container.image);
            if (image.registry.lastIndexOf('my-company.com/') != 0) {
                errors.add_error('no_company_repo',"Image " + $.metadata.name + " is not from my-company.com repo", 1)
            }
        });
    }
});

