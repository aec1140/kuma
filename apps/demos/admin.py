from django.contrib import admin

from .models import Submission

from taggit.managers import TaggableManager
from taggit.forms import TagWidget, TagField


class SubmissionAdmin(admin.ModelAdmin):
    change_list_template = 'smuggler/change_list.html'
    
    list_display = ( 'title', 'creator', 'featured', 'hidden', 'censored', 'modified', )
    list_editable = ( 'featured', 'hidden', 'censored', )

    formfield_overrides = {
        TaggableManager: {
            "widget": TagWidget(attrs={"size":100})
        }
    }

    def queryset(self, request):
        return Submission.admin_manager

admin.site.register(Submission, SubmissionAdmin)

