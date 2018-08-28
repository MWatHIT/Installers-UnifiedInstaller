# Installer messages. Note that these are typically single-quoted and
# sometimes contain variables for expansion via eval.
# So, all characters meaningful to the shell will need
# escaping if they're not meant to be interpreted.

USAGE_MESSAGE=\
'
用法: [sudo] `basename $0` [options] standalone|zeo

安装方式:
   standalone - 单机安装emc系统
   zeo        - 服务器版安装emc系统

   利用 sudo (or run as root) 进行客户模式安装.

   选择项 (完整列表详见顶部的install.sh):

   --with-python=/full/path/to/python-${WANT_PYTHON}
     利用Plone进入想要的Python-${WANT_PYTHON}路径。
     利用虚拟环境隔离安装。

   --build-python
     如果没有可利用的适合的Python,安装者将按你自身的选择建立想要的Python,需要网络连接去下载Python源。

   --password=InstancePassword
     如果没有特殊需求，将生成随机密码。

   --target=pathname
     用于明确安装的顶级路径。Plone实例以及Python 将被安装在此目录中。
     (默认为 $EMCsite_HOME)

   --clients=client-count
     利用\"zeo\" 安装法明确应用服务器代码
     自定义clients. 默认为 2.

   --instance=instance-name
     用于明确待生成的操作实例名称。这将会在目标目录中生成。
     默认standalone为 \"zinstance\" , ZEO为\"zeocluster\"。

   --daemon-user=user-name
     在客户模式安装时，为正在运行的安装设置有效使用者。
     默认为 \"plone_daemon\". 忽略无客户模式安装。

   --owner=owner-name
     在客户模式安装中，设置安装的所有者。
     默认为\"buildout_user\"。这是用于运行buildout、生成标准要求代码或者产品调整的使用者身份。

   --group=group-name
     在客户模式安装中，为后台程序和buildout使用者建立有效群。
     默认为 \"plone_group\"。忽略无客户模式安装。

   --template=template-name
     明确buildout.cfg的模板文件名. 模板文件必须在 ${TEMPLATE_DIR} 子目录中。
     默认为buildout.cfg。

   --static-lxml
     强制静态安装 libxml2 和 libxslt 管理。需要网络进入下载组件。

   更多的安装选择项详见顶部的install.sh 。
'

BAD_BUILD_PYTHON=\
'python构建的参数错误'

BAD_USER_OPTION=\
'是否用后台程序用户替代当前用户？'

BAD_TEMPLATE=\
'未能发现在$TEMPLATE_DIR中发现 $TEMPLATE 或者 ${TEMPLATE}.cfg '

NO_METHOD_SELECTED=\
'没有选定方法。No method selected.
为了方便，是否使用单机方法，但不运行 bin/buildout？'

CONTRADICTORY_PYTHON_COMMANDS=\
'--with-python 和 --build-python 可能不会同时运行。'

POLITE_GOODBYE=\
'
再见'

WELCOME='欢迎'

DIALOG_WELCOME='
欢迎使用系统安装器，是否继续使用安装器？您可以使用 --help参数获取命令行信息。'

INSTALL_TYPE_TITLE='安装型号'
CHOOSE_CONFIG_MSG='选择基本配置。'
# note that # is the choice separator
INSTALL_TYPE_CHOICES=\
"单机 (适合测试和优化)#ZEO群 (适合生产;需要负载平衡器设置。)"

CLIENT_CHOICES="1#2#3#4#5#6"
CHOOSE_CLIENTS_TITLE="ZEO 客户端"
CHOOSE_CLIENTS_PROMPT=\
'想要创建多少ZEO 客户端\?
这个之后很好更改.
客户端是存储器/CPU密集型.'

INSTALL_DIR_TITLE="Install Directory"
INSTALL_DIR_PROMPT='Installation target directory? (Leave empty for ${EMCsite_HOME}): '

PASSWORD_TITLE=Password
PASSWORD_PROMPT="Pick an administrative password. (Leave empty for random): "

Q_CONTINUE="Continue?"
CONTINUE_PROMPT=\
"
Continue with the command line:
"

NO_GCC_MSG="
Error: gcc is required for the install.
See README.txt for dependencies."

PREFLIGHT_FAILED_MSG="
Unable to run preflight check. Basic build tools are missing.
You may get more information about what went wrong by running
sh ./preflight
Aborting installation.
"

IGNORING_WITH_PYTHON="We already have a Python environment for this target; ignoring --with-python."
IGNORING_BUILD_PYTHON="We already have a Python environment for this target; ignoring --build-python."

SUDO_REQUIRED_MSG="sudo utility is required to do a server-mode install."

MISSING_PARTS_MSG='
The install script directory must contain
$PACKAGES_DIR and $HSCRIPTS_DIR subdirectories.
'

NEED_INSTALL_PYTHON_MSG='
Please do one of the following:
1) Install python${WANT_PYTHON} as a system "dev" package\;
2) Use --with-python=... option to point the installer to a useable python\; or
3) Use the --build-python option to tell the installer to build Python.
'

NEED_INSTALL_LIBZ_MSG="

Unable to find libz library and headers. These are required to build Python.
Please use your system package or port manager to install libz dev.
(Debian/Ubuntu zlibg-dev)
Exiting now.
"

NEED_INSTALL_LIBJPEG_MSG="

Unable to find libjpeg library and headers. These are required to build Plone.
Please use your system package or port manager to install libjpeg dev.
(Debian/Ubuntu libjpeg-dev)
Exiting now.
"

NEED_INSTALL_SSL_MSG="
Unable to find libssl or openssl/ssl.h.
libssl and its development headers are required for Plone.
Please install your platform's openssl-dev package
and try again.
(If your system is using an SSL other than openssl or is
putting the libraries/headers in an unconventional place,
you may need to set CFLAGS/CPPFLAGS/LDFLAGS environment variables
to specify the locations.)
If you want to install Plone without SSL support, specify
--without-ssl on the installer command line.
"

SORRY_OPENSSL='
***Aborting***
Sorry, but the Unified Installer cannot build a Python ${WANT_PYTHON} for OpenBSD.
There are too many platform-specific patches required.
Please consider installing the Python ${WANT_PYTHON} port and re-run installer.
'

PYTHON_NOT_FOUND='Unable to find python${WANT_PYTHON} on system exec path.'

WITH_PYTHON_IS_OK='$WITH_PYTHON looks OK. We will use it.'

WITH_PYTHON_IS_BAD='
$WITH_PYTHON does not meet the requirements for Zope/Plone.
'

WITH_PYTHON_NOT_EX='Error: $WITH_PYTHON is not an executable. It should be the filename of a Python binary.'

TESTING_WITH_PYTHON='Testing $WITH_PYTHON for Zope/Plone requirements....'

MISSING_GCC="Note: gcc is required for the install. Exiting now."

MISSING_GPP="Note: g++ is required for the install. Exiting now."

MISSING_MAKE="Note: make is required for the install. Exiting now."

MISSING_TAR="Note: gnu tar is required for the install. Exiting now."

MISSING_PATCH="Note: gnu patch program is required for the install. Exiting now."

MISSING_GUNZIP="Note: gunzip is required for the install. Exiting now."

MISSING_BUNZIP2="Note: bunzip2 is required for the install. Exiting now."

MISSING_MINIMUM_XSLT='
Plone installation requires the development versions of libxml2 and libxslt.
libxml2 must be version $NEED_XML2 or greater\; libxslt must be $NEED_XSLT or greater.
Ideally, you should install these as dev package libraries before running install.sh.
If -- and only if -- these packages are not available for your platform, you may
try adding --static-lxml=yes to your install.sh command line to force a
local, static build of these libraries. This will require Internet access for the
installer to download the extra source.
Installation aborted.'

MISSING_XSLT_DEV="Unable to find libxslt development libraries."

MISSING_XML2_DEV="Unable to find libxml2 development libraries."

BAD_XML2_VER='We need development version $NEED_XML2 of libxml2. Not found.'

BAD_XSLT_VER='We need development version $NEED_XSLT of libxslt. Not found.'

ROOT_INSTALL_CHOSEN='
Root install method chosen. Will install for use by users:
  ZEO & Client Daemons:      $DAEMON_USER
  Code Resources & buildout: $BUILDOUT_USER'

ROOTLESS_INSTALL_CHOSEN='Rootless install method chosen. Will install for use by system user $USER'

CANNOT_WRITE_LOG='Unable to write to ${INSTALL_LOG}\; detailed log will go to stdout.'

LOGGING_MSG='
Detailed installation log being written to $INSTALL_LOG'

SEE_LOG_EXIT_MSG='
Installation has failed.
See the detailed installation log at $INSTALL_LOG
to determine the cause.'

INSTALLING_NOW='Installing Plone ${FOR_PLONE} at $EMCsite_HOME
'

CANNOT_CREATE_HOME='
Unable to create $EMCsite_HOME
Please check rights and pathnames.

Installation has failed.
'

INSTANCE_HOME_EXISTS='Instance target $INSTANCE_HOME already exists\; aborting install.'

CREATING_VIRTUALENV="Creating Python virtual environment."

VIRTUALENV_CREATION_FAILED='
Failed to create virtual environment for $WITH_PYTHON'

VIRTUALENV_BAD='
Python created with virtualenv no longer passes baseline tests.
You may need to use --build-python and let the Unified Installer
build its own Python.'

DOWNLOADING_PYTHON='Downloading Python source from $PYTHON_URL'

PYTHON_BUILD_OK="Python build looks OK."

PYTHON_BUILD_BAD='
***Aborting***
The built Python does not meet the requirements for Zope/Plone.
Check messages and the install.log to find out what went wrong.

See the "Built Python does not meet requirements" section of
README.txt for more information about this error.'

INSTALLING_BUILDOUT='Installing zc.buildout in virtual environment.'

INSTALLING_BUILDOUT_FAILED='Unable to install zc.buildout in virtual environment.'

FOUND_BUILDOUT_CACHE='Found existing buildout cache at $BUILDOUT_CACHE\; skipping step.'

UNPACKING_BUILDOUT_CACHE='Unpacking buildout cache to $BUILDOUT_CACHE'

BUILDOUT_CACHE_UNPACK_FAILED="Buildout cache unpack failed. Unable to continue."

BUILDOUT_FAILED="Buildout failed. Unable to continue"

BUILDOUT_SUCCESS="Buildout completed"

INSTALL_COMPLETE='
######################  Installation Complete  ######################

Plone successfully installed at $EMCsite_HOME
See $RMFILE
for startup instructions.
'

BUILDOUT_SKIPPED_OK='
Buildout was skipped at your request, but the installation is
otherwise complete and may be found at $EMCsite_HOME
'

NEED_HELP_MSG='


请联系系统管理员获取帮助。
'

REPORT_ERRORS_MSG='
安装过程出错，请联系相关人员获取帮助或查看readme.txt.
'

# build_python.sh

INSTALLING_PYTHON='正在安装 ${PYTHON_DIR}. 请稍候...'

UNABLE_TO_CONFIGURE_PY="Unable to configure Python build."

PY_BUILD_FAILED="Python build has failed."

INSTALL_PY_FAILED='Install of ${PYTHON_DIR} has failed.'

# user_group_utilities.sh

USING_USERADD="Using useradd and groupadd to create users and groups."

GROUP_EXISTS='"$TARGET_GROUP" already exists; no need to create it.'

GROUP_FAILED='Creation of "$TARGET_GROUP" failed. Unable to continue.'

USER_EXISTS='User "$TARGET_USER" already exists. No need to create it.'

ADD_USER_TO_GROUP='Adding user $TARGET_USER to group $TARGET_GROUP.'

USING_PW="Using pw to create users and groups"

UNKNOWN_USER_ENV='We do not know how to add users and groups in this environment.
This is no problem if the required users and group already exist.
'

UG_CREATE_FAILED='Expected to find uid for $TARGET_USER and gid for $TARGET_GROUP but did not.
Please use your system tools to create/edit required users and group, then try again.'
