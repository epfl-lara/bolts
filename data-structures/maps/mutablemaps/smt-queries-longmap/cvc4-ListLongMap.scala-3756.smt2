; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51552 () Bool)

(assert start!51552)

(declare-fun b!563660 () Bool)

(declare-fun res!354965 () Bool)

(declare-fun e!324762 () Bool)

(assert (=> b!563660 (=> (not res!354965) (not e!324762))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35371 0))(
  ( (array!35372 (arr!16982 (Array (_ BitVec 32) (_ BitVec 64))) (size!17346 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35371)

(assert (=> b!563660 (= res!354965 (and (= (size!17346 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17346 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17346 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563661 () Bool)

(declare-fun res!354969 () Bool)

(declare-fun e!324760 () Bool)

(assert (=> b!563661 (=> (not res!354969) (not e!324760))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5438 0))(
  ( (MissingZero!5438 (index!23979 (_ BitVec 32))) (Found!5438 (index!23980 (_ BitVec 32))) (Intermediate!5438 (undefined!6250 Bool) (index!23981 (_ BitVec 32)) (x!52888 (_ BitVec 32))) (Undefined!5438) (MissingVacant!5438 (index!23982 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35371 (_ BitVec 32)) SeekEntryResult!5438)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563661 (= res!354969 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16982 a!3118) j!142) mask!3119) (select (arr!16982 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16982 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16982 a!3118) i!1132 k!1914) j!142) (array!35372 (store (arr!16982 a!3118) i!1132 k!1914) (size!17346 a!3118)) mask!3119)))))

(declare-fun res!354971 () Bool)

(assert (=> start!51552 (=> (not res!354971) (not e!324762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51552 (= res!354971 (validMask!0 mask!3119))))

(assert (=> start!51552 e!324762))

(assert (=> start!51552 true))

(declare-fun array_inv!12756 (array!35371) Bool)

(assert (=> start!51552 (array_inv!12756 a!3118)))

(declare-fun b!563662 () Bool)

(assert (=> b!563662 (= e!324762 e!324760)))

(declare-fun res!354964 () Bool)

(assert (=> b!563662 (=> (not res!354964) (not e!324760))))

(declare-fun lt!257314 () SeekEntryResult!5438)

(assert (=> b!563662 (= res!354964 (or (= lt!257314 (MissingZero!5438 i!1132)) (= lt!257314 (MissingVacant!5438 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35371 (_ BitVec 32)) SeekEntryResult!5438)

(assert (=> b!563662 (= lt!257314 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563663 () Bool)

(declare-fun res!354970 () Bool)

(assert (=> b!563663 (=> (not res!354970) (not e!324760))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35371 (_ BitVec 32)) Bool)

(assert (=> b!563663 (= res!354970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563664 () Bool)

(declare-fun res!354968 () Bool)

(assert (=> b!563664 (=> (not res!354968) (not e!324762))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563664 (= res!354968 (validKeyInArray!0 k!1914))))

(declare-fun b!563665 () Bool)

(assert (=> b!563665 (= e!324760 (not true))))

(declare-fun e!324761 () Bool)

(assert (=> b!563665 e!324761))

(declare-fun res!354967 () Bool)

(assert (=> b!563665 (=> (not res!354967) (not e!324761))))

(assert (=> b!563665 (= res!354967 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17650 0))(
  ( (Unit!17651) )
))
(declare-fun lt!257315 () Unit!17650)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35371 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17650)

(assert (=> b!563665 (= lt!257315 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563666 () Bool)

(declare-fun res!354963 () Bool)

(assert (=> b!563666 (=> (not res!354963) (not e!324760))))

(declare-datatypes ((List!11115 0))(
  ( (Nil!11112) (Cons!11111 (h!12114 (_ BitVec 64)) (t!17351 List!11115)) )
))
(declare-fun arrayNoDuplicates!0 (array!35371 (_ BitVec 32) List!11115) Bool)

(assert (=> b!563666 (= res!354963 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11112))))

(declare-fun b!563667 () Bool)

(declare-fun res!354962 () Bool)

(assert (=> b!563667 (=> (not res!354962) (not e!324762))))

(declare-fun arrayContainsKey!0 (array!35371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563667 (= res!354962 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563668 () Bool)

(assert (=> b!563668 (= e!324761 (= (seekEntryOrOpen!0 (select (arr!16982 a!3118) j!142) a!3118 mask!3119) (Found!5438 j!142)))))

(declare-fun b!563669 () Bool)

(declare-fun res!354966 () Bool)

(assert (=> b!563669 (=> (not res!354966) (not e!324762))))

(assert (=> b!563669 (= res!354966 (validKeyInArray!0 (select (arr!16982 a!3118) j!142)))))

(assert (= (and start!51552 res!354971) b!563660))

(assert (= (and b!563660 res!354965) b!563669))

(assert (= (and b!563669 res!354966) b!563664))

(assert (= (and b!563664 res!354968) b!563667))

(assert (= (and b!563667 res!354962) b!563662))

(assert (= (and b!563662 res!354964) b!563663))

(assert (= (and b!563663 res!354970) b!563666))

(assert (= (and b!563666 res!354963) b!563661))

(assert (= (and b!563661 res!354969) b!563665))

(assert (= (and b!563665 res!354967) b!563668))

(declare-fun m!542125 () Bool)

(assert (=> b!563661 m!542125))

(declare-fun m!542127 () Bool)

(assert (=> b!563661 m!542127))

(assert (=> b!563661 m!542125))

(declare-fun m!542129 () Bool)

(assert (=> b!563661 m!542129))

(declare-fun m!542131 () Bool)

(assert (=> b!563661 m!542131))

(assert (=> b!563661 m!542129))

(declare-fun m!542133 () Bool)

(assert (=> b!563661 m!542133))

(assert (=> b!563661 m!542127))

(assert (=> b!563661 m!542125))

(declare-fun m!542135 () Bool)

(assert (=> b!563661 m!542135))

(declare-fun m!542137 () Bool)

(assert (=> b!563661 m!542137))

(assert (=> b!563661 m!542129))

(assert (=> b!563661 m!542131))

(declare-fun m!542139 () Bool)

(assert (=> b!563665 m!542139))

(declare-fun m!542141 () Bool)

(assert (=> b!563665 m!542141))

(declare-fun m!542143 () Bool)

(assert (=> b!563666 m!542143))

(declare-fun m!542145 () Bool)

(assert (=> b!563662 m!542145))

(declare-fun m!542147 () Bool)

(assert (=> b!563667 m!542147))

(declare-fun m!542149 () Bool)

(assert (=> start!51552 m!542149))

(declare-fun m!542151 () Bool)

(assert (=> start!51552 m!542151))

(assert (=> b!563669 m!542125))

(assert (=> b!563669 m!542125))

(declare-fun m!542153 () Bool)

(assert (=> b!563669 m!542153))

(declare-fun m!542155 () Bool)

(assert (=> b!563664 m!542155))

(assert (=> b!563668 m!542125))

(assert (=> b!563668 m!542125))

(declare-fun m!542157 () Bool)

(assert (=> b!563668 m!542157))

(declare-fun m!542159 () Bool)

(assert (=> b!563663 m!542159))

(push 1)

