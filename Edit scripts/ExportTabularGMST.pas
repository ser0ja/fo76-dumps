unit ExportTabularGMST;

uses ExportCore,
     ExportTabularCore;


var outputLines: TStringList;


function initialize: Integer;
begin
    outputLines := TStringList.create;
    outputLines.add('"File", "Form ID", "Editor ID", "Type", "Value"');
end;

function canProcess(e: IInterface): Boolean;
begin
    result := signature(e) = 'GMST';
end;

function process(gmst: IInterface): Integer;
begin
    if not canProcess(gmst) then begin
        addMessage('Warning: ' + name(gmst) + ' is not a GMST. Entry was ignored.');
        exit;
    end;

    outputLines.add(
        escapeCsvString(getFileName(getFile(gmst))) + ', ' +
        escapeCsvString(stringFormID(gmst)) + ', ' +
        escapeCsvString(evBySignature(gmst, 'EDID')) + ', ' +
        escapeCsvString(letterToType(copy(evBySignature(gmst, 'EDID'), 1, 1))) + ', ' +
        escapeCsvString(gev(lastElement(eBySignature(gmst, 'DATA'))))
    );
end;

function finalize: Integer;
begin
    createDir('dumps/');
    outputLines.saveToFile('dumps/GMST.csv');
end;


function letterToType(letter: String): String;
begin
    if letter = 'b' then begin
        result := 'boolean';
    end else if letter = 'f' then begin
        result := 'float';
    end else if letter = 'i' then begin
        result := 'integer';
    end else if letter = 's' then begin
        result := 'string';
    end else if letter = 'u' then begin
        result := 'unsigned integer';
    end else begin
        addMessage('<! DUMP ERROR. UNKNOWN TYPE `' + letter + '` !>');
        result := '<! DUMP ERROR. UNKNOWN TYPE `' + letter + '` !>';
    end;
end;


end.
