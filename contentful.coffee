module.exports =
    access_token: 'eb9c6d6c95becf8d17240d4029ec7e95bf5f509399eca1369d9e42429571625f'
    management_token: 'c8c76e23b20e1057c3853dba7e2085ff7371f29cf0c8d0d5171f44a5acfc63d3'
    space_id: 'z8tj17zl5vyd'
    content_types:
        posts:
            id: 'blogPost'
            filters: {
                # 'fields.private': 'false',
                'order': '-sys.createdAt'
            }
            template: 'views/_post.jade'
            path: (entry) -> "blog/#{entry.slug}"