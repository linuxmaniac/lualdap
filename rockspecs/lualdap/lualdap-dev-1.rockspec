package="lualdap"
version="dev-1"
source = {
   url = "git://github.com/bdellegrazie/lualdap",
   branch = "master",
}
description = {
   summary = "Simple interface from Lua to an LDAP Client",
   detailed = [[
      Simple interface from Lua to an LDAP client.
   ]],
   homepage = "https://github.com/bdellegrazie/lualdap",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   LIBLDAP = {
      header = "ldap.h",
      library = "ldap",
   }
}
build = {
   type = "builtin",
   modules = {
      lualdap = {
         sources = {"src/lualdap.c"},
         libdirs = {"$(LIBLDAP_LIBDIR)"},
         incdirs = {"$(LIBLDAP_INCDIR)"},
         libraries = {"ldap"},
      },
   }
}
