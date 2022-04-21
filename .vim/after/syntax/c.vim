syn keyword cStandardFunctions abort abs alloca assert atexit atoi calloc ceil ceilf exit fclose fflush floor floorf fopen fprintf fputc fputs fread free fseek fwrite isdigit islower isupper isxdidit labs malloc memchr memcmp memcpy memmem memmove memset open printf putchar puts qsort rand read realloc seek snprintf sprintf srand strcat strcmp strlen strstr strtod strtol strtoul time tolower toupper va_end va_start vfprintf vprintf vsnprintf write
hi link cStandardFunctions Function

syn match cFixedSizeIntFormat /\<PRI[ux]\(8\|16\|32\|64\)\>/
hi link cFixedSizeIntFormat Constant

syn keyword cRestrict restrict
hi link cRestrict Type
