       Identification Division.
       program-id. Excercise1 as "Excercise1".
       Author.     Naz Sassine.
       Installation. Desktop.
       Date-written. 2022-05-27.
       Date-compiled. 2022-05-27.
       Security. None.
       
       environment division.
       configuration section.
       source-computer. Desktop.
       object-computer. Desktop.
       Input-Output Section.
       File-Control.
           Select InFile assign "C:\DataFiles\DataIn.dat".
           Select OutFile assign "C:\DataFiles\DataOut.dat".

       Data Division.
       File Section.
       fd InFile.
       01 infile-record pic x(80).
       fd OutFile.
       01 outfile-record pic x(100).
       
       working-storage section.
       01 Work-field pic x(20).
       01 Counter-field pic x99.
       
       Linkage Section.
       01 ls-field pic x(10).
       
       Procedure Division.
       001-Main Section.
       001-Begin.
           open input infile
           open output outfile
           perform 010-read-write
           close infile outfile
           stop run.
       010-read-write Section.
       010-Begin.
           read infile
           move infile-record to outfile-record
           write outfile-record
           display outfile-record.

       End program Excercise1.
