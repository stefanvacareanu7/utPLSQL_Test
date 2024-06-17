-- This PL/SQL block demonstrates patterns that trigger Codacy rules

-- Rule: codacy.generic.plsql.empty-strings
-- Description: Detects empty strings in the code which might cause issues or bugs.
-- Severity: WARNING
DECLARE
    empty_string1 VARCHAR2(100) := ''; -- Example of empty string (triggers warning)
    empty_string2 VARCHAR2(100);
BEGIN
    empty_string2 := ''; -- Another example of empty string (triggers warning)
END;
/

-- Rule: codacy.generic.plsql.find-all-passwords
-- Description: Finding all occurrences of passwords in different languages and formats.
-- Severity: ERROR
DECLARE
    password VARCHAR2(100) := 'MySecretPassword'; -- Example of hardcoded password (triggers error)
    psw VARCHAR2(100) := '1234';                  -- Example of hardcoded password (triggers error)
    pwd VARCHAR2(100) := 'abcd';                  -- Example of hardcoded password (triggers error)
    pass VARCHAR2(100) := 'password';             -- Example of hardcoded password (triggers error)
    adgangskode VARCHAR2(100) := 'securecode';    -- Example in Danish (triggers error)
    benutzerkennwort VARCHAR2(100) := 'geheim';   -- Example in German (triggers error)
    clave VARCHAR2(100) := 'secret';              -- Example in Spanish (triggers error)
BEGIN
    DBMS_OUTPUT.PUT_LINE('Passwords are hardcoded which is a security risk.');
END;
/
