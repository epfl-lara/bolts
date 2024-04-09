; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52188 () Bool)

(assert start!52188)

(declare-fun b!569259 () Bool)

(declare-fun res!359432 () Bool)

(declare-fun e!327480 () Bool)

(assert (=> b!569259 (=> (not res!359432) (not e!327480))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569259 (= res!359432 (validKeyInArray!0 k!1914))))

(declare-fun b!569260 () Bool)

(declare-fun res!359429 () Bool)

(declare-fun e!327479 () Bool)

(assert (=> b!569260 (=> (not res!359429) (not e!327479))))

(declare-datatypes ((array!35665 0))(
  ( (array!35666 (arr!17120 (Array (_ BitVec 32) (_ BitVec 64))) (size!17484 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35665)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35665 (_ BitVec 32)) Bool)

(assert (=> b!569260 (= res!359429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!359435 () Bool)

(assert (=> start!52188 (=> (not res!359435) (not e!327480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52188 (= res!359435 (validMask!0 mask!3119))))

(assert (=> start!52188 e!327480))

(assert (=> start!52188 true))

(declare-fun array_inv!12894 (array!35665) Bool)

(assert (=> start!52188 (array_inv!12894 a!3118)))

(declare-fun b!569261 () Bool)

(declare-fun res!359431 () Bool)

(assert (=> b!569261 (=> (not res!359431) (not e!327480))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569261 (= res!359431 (and (= (size!17484 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17484 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17484 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569262 () Bool)

(declare-fun res!359433 () Bool)

(assert (=> b!569262 (=> (not res!359433) (not e!327480))))

(assert (=> b!569262 (= res!359433 (validKeyInArray!0 (select (arr!17120 a!3118) j!142)))))

(declare-fun b!569263 () Bool)

(assert (=> b!569263 (= e!327480 e!327479)))

(declare-fun res!359427 () Bool)

(assert (=> b!569263 (=> (not res!359427) (not e!327479))))

(declare-datatypes ((SeekEntryResult!5576 0))(
  ( (MissingZero!5576 (index!24531 (_ BitVec 32))) (Found!5576 (index!24532 (_ BitVec 32))) (Intermediate!5576 (undefined!6388 Bool) (index!24533 (_ BitVec 32)) (x!53430 (_ BitVec 32))) (Undefined!5576) (MissingVacant!5576 (index!24534 (_ BitVec 32))) )
))
(declare-fun lt!259516 () SeekEntryResult!5576)

(assert (=> b!569263 (= res!359427 (or (= lt!259516 (MissingZero!5576 i!1132)) (= lt!259516 (MissingVacant!5576 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35665 (_ BitVec 32)) SeekEntryResult!5576)

(assert (=> b!569263 (= lt!259516 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569264 () Bool)

(declare-fun e!327481 () Bool)

(assert (=> b!569264 (= e!327481 (not true))))

(declare-fun lt!259518 () SeekEntryResult!5576)

(declare-fun lt!259519 () SeekEntryResult!5576)

(assert (=> b!569264 (and (= lt!259518 (Found!5576 j!142)) (or (undefined!6388 lt!259519) (not (is-Intermediate!5576 lt!259519)) (= (select (arr!17120 a!3118) (index!24533 lt!259519)) (select (arr!17120 a!3118) j!142)) (not (= (select (arr!17120 a!3118) (index!24533 lt!259519)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259518 (MissingZero!5576 (index!24533 lt!259519)))))))

(assert (=> b!569264 (= lt!259518 (seekEntryOrOpen!0 (select (arr!17120 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569264 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17854 0))(
  ( (Unit!17855) )
))
(declare-fun lt!259517 () Unit!17854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35665 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17854)

(assert (=> b!569264 (= lt!259517 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569265 () Bool)

(declare-fun res!359434 () Bool)

(assert (=> b!569265 (=> (not res!359434) (not e!327479))))

(declare-datatypes ((List!11253 0))(
  ( (Nil!11250) (Cons!11249 (h!12270 (_ BitVec 64)) (t!17489 List!11253)) )
))
(declare-fun arrayNoDuplicates!0 (array!35665 (_ BitVec 32) List!11253) Bool)

(assert (=> b!569265 (= res!359434 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11250))))

(declare-fun b!569266 () Bool)

(declare-fun res!359428 () Bool)

(assert (=> b!569266 (=> (not res!359428) (not e!327480))))

(declare-fun arrayContainsKey!0 (array!35665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569266 (= res!359428 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569267 () Bool)

(assert (=> b!569267 (= e!327479 e!327481)))

(declare-fun res!359430 () Bool)

(assert (=> b!569267 (=> (not res!359430) (not e!327481))))

(declare-fun lt!259515 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35665 (_ BitVec 32)) SeekEntryResult!5576)

(assert (=> b!569267 (= res!359430 (= lt!259519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259515 (select (store (arr!17120 a!3118) i!1132 k!1914) j!142) (array!35666 (store (arr!17120 a!3118) i!1132 k!1914) (size!17484 a!3118)) mask!3119)))))

(declare-fun lt!259520 () (_ BitVec 32))

(assert (=> b!569267 (= lt!259519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259520 (select (arr!17120 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569267 (= lt!259515 (toIndex!0 (select (store (arr!17120 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569267 (= lt!259520 (toIndex!0 (select (arr!17120 a!3118) j!142) mask!3119))))

(assert (= (and start!52188 res!359435) b!569261))

(assert (= (and b!569261 res!359431) b!569262))

(assert (= (and b!569262 res!359433) b!569259))

(assert (= (and b!569259 res!359432) b!569266))

(assert (= (and b!569266 res!359428) b!569263))

(assert (= (and b!569263 res!359427) b!569260))

(assert (= (and b!569260 res!359429) b!569265))

(assert (= (and b!569265 res!359434) b!569267))

(assert (= (and b!569267 res!359430) b!569264))

(declare-fun m!548033 () Bool)

(assert (=> start!52188 m!548033))

(declare-fun m!548035 () Bool)

(assert (=> start!52188 m!548035))

(declare-fun m!548037 () Bool)

(assert (=> b!569259 m!548037))

(declare-fun m!548039 () Bool)

(assert (=> b!569266 m!548039))

(declare-fun m!548041 () Bool)

(assert (=> b!569265 m!548041))

(declare-fun m!548043 () Bool)

(assert (=> b!569267 m!548043))

(declare-fun m!548045 () Bool)

(assert (=> b!569267 m!548045))

(assert (=> b!569267 m!548043))

(declare-fun m!548047 () Bool)

(assert (=> b!569267 m!548047))

(declare-fun m!548049 () Bool)

(assert (=> b!569267 m!548049))

(assert (=> b!569267 m!548047))

(declare-fun m!548051 () Bool)

(assert (=> b!569267 m!548051))

(assert (=> b!569267 m!548043))

(declare-fun m!548053 () Bool)

(assert (=> b!569267 m!548053))

(assert (=> b!569267 m!548047))

(declare-fun m!548055 () Bool)

(assert (=> b!569267 m!548055))

(declare-fun m!548057 () Bool)

(assert (=> b!569263 m!548057))

(assert (=> b!569262 m!548043))

(assert (=> b!569262 m!548043))

(declare-fun m!548059 () Bool)

(assert (=> b!569262 m!548059))

(declare-fun m!548061 () Bool)

(assert (=> b!569260 m!548061))

(declare-fun m!548063 () Bool)

(assert (=> b!569264 m!548063))

(assert (=> b!569264 m!548043))

(declare-fun m!548065 () Bool)

(assert (=> b!569264 m!548065))

(declare-fun m!548067 () Bool)

(assert (=> b!569264 m!548067))

(assert (=> b!569264 m!548043))

(declare-fun m!548069 () Bool)

(assert (=> b!569264 m!548069))

(push 1)

