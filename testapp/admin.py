from django.contrib import admin
from mptt.admin import DraggableMPTTAdmin
from testapp.models import Rubric

admin.site.register(
    Rubric,
    DraggableMPTTAdmin,
    list_display=(
        'tree_actions',
        'indented_title',
        # ...more fields if you feel like it...
    ),
    list_display_links=(
        'indented_title',
    ),
)
