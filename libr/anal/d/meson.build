sdb_files = [
  'cc-arm-16',
  'cc-arm-32',
  'cc-arm-64',
  'cc-avr-8',
  'cc-m68k-32',
  'cc-mips-32',
  'cc-mips-64',
  'cc-ppc-32',
  'cc-ppc-64',
  'cc-riscv-64',
  'cc-sparc-32',
  'cc-v850-32',
  'cc-s390-64',
  'cc-x86-16',
  'cc-x86-32',
  'cc-x86-64',
  'cc-xtensa-32',
  'spec',
  'types-16',
  'types-32',
  'types-64',
  'types-arm-ios-16',
  'types-arm-ios-32',
  'types-arm-ios-64',
  'types-android',
  'types-darwin',
  'types-linux',
  'types',
  'types-windows',
  'types-x86-macos-64',
  'types-x86-windows-32',
  'types-x86-windows-64'
]

win_types_extra = [
  'bcrypt',
  'cfgmgr32',
  'combaseapi',
  'commctrl',
  'consoleapi2',
  'dbghelp',
  'evntrace',
  'fileapi',
  'libloaderapi',
  'memoryapi',
  'ncrypt',
  'objbase',
  'oleauto',
  'processthreadsapi',
  'psapi',
  'securitybaseapi',
  'shellapi',
  'shlwapi',
  'synchapi',
  'sysinfoapi',
  'threadpoolapiset',
  'userenv',
  'winbase',
  'wincred',
  'wincrypt',
  'winhttp',
  'winldap',
  'winnls',
  'winreg',
  'winsock2',
  'winsvc',
  'winuser',
  'ws2spi',
]

r_anal_d_sources = []

foreach file : sdb_files
  if get_option('sdb_cgen')
    outfile = '@0@.c'.format(file)
    gen_cmd = sdb_gen_cmd_cgen
  else
    outfile = '@0@.sdb'.format(file)
    gen_cmd = sdb_gen_cmd
  endif
  infiles = ['@0@.sdb.txt'.format(file)]
  if file == 'types-windows'
    foreach f : win_types_extra
      infiles += 'types-windows_@0@.sdb.txt'.format(f)
    endforeach
  endif
  ct = custom_target(outfile,
    input: infiles,
    output: outfile,
    command: gen_cmd,
    depends: sdb_exe,
    build_by_default: true,
    install: true,
    install_dir: join_paths(r2_sdb, 'fcnsign')
  )
  if get_option('sdb_cgen')
    r_anal_d_sources += ct
  endif
endforeach
