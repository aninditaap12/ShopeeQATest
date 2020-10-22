# Variable for user credential (Please change to the correct one)
$username = '********'
$password = '********'

# Objects for Login
$btn_sign_in = '/html/body/div[1]/div/div[5]/a[1]'
$field_username = 'login_field'
$field_password = 'password'
$submit_login = '//*[@id="login"]/form/div[3]/input[12]'
$avatar = 'user-links'

# Objects for Adding Gist
$icon_add = '/html/body/div[1]/div/div[5]'
$gist_desc = '//*[@id="gists"]/input'
$file_name = '//*[@id="gists"]/div[2]/div/div[1]/div/input[2]'
$content_gist = "//pre[contains(@class,'CodeMirror-line')]"
$btn_create_secret_gist = '//*[@id="new_gist"]/div/div[2]/div/button'
$btn_gist_option = '//*[@id="new_gist"]/div/div[2]/div/details/summary'
$public_gist = '//*[@id="new_gist"]/div/div[2]/div/details/details-menu/label[2]'
$btn_create_public_gist = '//*[@id="new_gist"]/div/div[2]/div/button'
$section_discussion = '//*[@id="gist-pjax-container"]/div[2]/div/div/div[3]/div/div[2]'

# Objects for Edit Gist
$account_menu = '//*[@id="user-links"]/details/summary'
$your_gist_menu = '//*[@id="user-links"]/details/details-menu/a[1]'
$select_gist = '//*[@id="gist-pjax-container"]/div/div/div[2]/div[2]/div[1]/div/div[2]/span[1]/a[2]/strong'
$btn_edit = '//*[@id="gist-pjax-container"]/div[1]/div/div[1]/ul/li[1]/a'
$submit_edit = '//*[@id="edit_gist_106029035"]/div/div[2]/button'

# Objects for Delete Gist
$btn_delete = '//*[@id="gist-pjax-container"]/div[1]/div/div[1]/ul/li[2]/form/button'

# Objects for getting list of Gist
$all_gists = '//*[@id="gist-pjax-container"]/div/div/div[2]/div[1]/nav/div[1]/a'