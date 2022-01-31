%{
  /* agilent.cmd */
  #ifdef SERVER
  
    void write_savelog( char *s ) {
      FILE *fp;
      fp = fopen( "saverun.log", "a" );
      if ( fp == 0 ) msg(MSG_ERROR, "Unable to write to saverun.log");
      else {
        fprintf( fp, "%s\n", s );
        fclose( fp );
      }
    }
    
    void write_restart() {
      FILE *fp;
      fp = fopen("restart.txt", "a");
      if (fp == 0) msg(MSG_ERROR, "Unable to create restart.txt");
      else {
        fclose(fp);
      }
    }

  #endif
%}

&command
  : Savelog %s (Enter Log Message) * { write_savelog($2); }
# : Request Restart * { write_restart(); }
  ;
