package dbnp.studycapturing

/**
 * Enum describing the type of a protocol parameter.
 */
public enum ProtocolParameterType {
    STRING('String'),
    INTEGER('Integer number'),
    FLOAT('Decimal number'),
    STRINGLIST('List')

    String name

    ProtocolParameterType(String name) {
     this.name = name
    }

    static list() {
     [STRING, INTEGER, FLOAT, STRINGLIST]
    }


    // It would be nice to see the description string in the scaffolding,
    // and the following works, but then the item cannot be saved properly.
    // TODO: find a way to display the enum description but save the enum value in the scaffolding
    /*def String toString() {
        return this.name
    }*/

}