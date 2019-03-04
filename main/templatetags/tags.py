# for navigation bar
from django import template

register = template.Library()

# https://stackoverflow.com/a/477719

@register.simple_tag
def active(request, pattern):
    # print(pattern)
    import re
    # require exact match for root
    if pattern == '/' and request.path != '/':
        return ''
    if re.search(pattern, request.path):
        return 'active'
    return ''
