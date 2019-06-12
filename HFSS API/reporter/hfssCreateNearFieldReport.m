% ----------------------------------------------------------------------------
% function hfssCreateNearFieldReport(fid, ReportName, Solution,...
%                           Sweep, Context, Freq, HFSSDesignName, HFSSProjectName)
% 
% Description :
% -------------
% Creates a new report with a single trace and adds it to the Results
% branch in the project tree.
%
% Parameters :
% ------------
% fid        - file identifier of the HFSS script file.
% ReportName - name of the report.
% Solution   - name of the solution given to hfssInsertSolution.
% Sweep      - name of the frequency sweep given to hfssInterpolatingSweep.
%              This can be an empty string, in which case it will be
%              used LastAdaptive instead.
% Context    - near field solution .
%              e.g. "NearFieldLine_1"
% Freq      - Frequency, is a string '20GHz'
% Note :
% ------
% This function has to be used AFTER a solution is inserted with
% hfssInsertSolution.
%
% Example :
% ---------
% ----------------------------------------------------------------------------
% CHANGELOG
%
% ----------------------------------------------------------------------------

% ----------------------------------------------------------------------------
% Written by Luigi Boccia
% March 2014
% ----------------------------------------------------------------------------
function hfssCreateNearFieldReport(fid, ReportName, Solution,...
                          Sweep, Context, Freq)

if length(Sweep)==0
    Sweep='LastAdaptive';
end;
% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("ReportSetup")\n');
fprintf(fid, 'oModule.CreateReport "%s", _\n', ReportName);
fprintf(fid, '"Near Fields", _\n' );
fprintf(fid, '"Rectangular Plot", _\n');
fprintf(fid, '"%s : %s", _\n', Solution, Sweep);


% Context parameters
fprintf(fid, 'Array(');
fprintf(fid, '"Context:=", "%s"', Context);
fprintf(fid, '), _\n');
fprintf(fid, 'Array("NormalizedDistance:=",_\n');
fprintf(fid, 'Array( "All"), "Freq:=", Array("%s")),_\n', Freq);
fprintf(fid, 'Array("X Component:=", "NormalizedDistance", "Y Component:=", _\n');
fprintf(fid, 'Array("ang_deg(NearEY)")), Array() \n');

