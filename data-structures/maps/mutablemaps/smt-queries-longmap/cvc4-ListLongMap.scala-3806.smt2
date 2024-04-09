; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52212 () Bool)

(assert start!52212)

(declare-fun b!569583 () Bool)

(declare-fun e!327625 () Bool)

(declare-fun e!327624 () Bool)

(assert (=> b!569583 (= e!327625 e!327624)))

(declare-fun res!359757 () Bool)

(assert (=> b!569583 (=> (not res!359757) (not e!327624))))

(declare-datatypes ((SeekEntryResult!5588 0))(
  ( (MissingZero!5588 (index!24579 (_ BitVec 32))) (Found!5588 (index!24580 (_ BitVec 32))) (Intermediate!5588 (undefined!6400 Bool) (index!24581 (_ BitVec 32)) (x!53474 (_ BitVec 32))) (Undefined!5588) (MissingVacant!5588 (index!24582 (_ BitVec 32))) )
))
(declare-fun lt!259731 () SeekEntryResult!5588)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569583 (= res!359757 (or (= lt!259731 (MissingZero!5588 i!1132)) (= lt!259731 (MissingVacant!5588 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35689 0))(
  ( (array!35690 (arr!17132 (Array (_ BitVec 32) (_ BitVec 64))) (size!17496 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35689)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35689 (_ BitVec 32)) SeekEntryResult!5588)

(assert (=> b!569583 (= lt!259731 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569584 () Bool)

(declare-fun res!359752 () Bool)

(assert (=> b!569584 (=> (not res!359752) (not e!327624))))

(declare-datatypes ((List!11265 0))(
  ( (Nil!11262) (Cons!11261 (h!12282 (_ BitVec 64)) (t!17501 List!11265)) )
))
(declare-fun arrayNoDuplicates!0 (array!35689 (_ BitVec 32) List!11265) Bool)

(assert (=> b!569584 (= res!359752 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11262))))

(declare-fun b!569585 () Bool)

(declare-fun e!327622 () Bool)

(assert (=> b!569585 (= e!327622 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!259735 () SeekEntryResult!5588)

(declare-fun lt!259732 () SeekEntryResult!5588)

(assert (=> b!569585 (and (= lt!259735 (Found!5588 j!142)) (or (undefined!6400 lt!259732) (not (is-Intermediate!5588 lt!259732)) (= (select (arr!17132 a!3118) (index!24581 lt!259732)) (select (arr!17132 a!3118) j!142)) (not (= (select (arr!17132 a!3118) (index!24581 lt!259732)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259735 (MissingZero!5588 (index!24581 lt!259732)))))))

(assert (=> b!569585 (= lt!259735 (seekEntryOrOpen!0 (select (arr!17132 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35689 (_ BitVec 32)) Bool)

(assert (=> b!569585 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17878 0))(
  ( (Unit!17879) )
))
(declare-fun lt!259736 () Unit!17878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17878)

(assert (=> b!569585 (= lt!259736 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569586 () Bool)

(declare-fun res!359759 () Bool)

(assert (=> b!569586 (=> (not res!359759) (not e!327624))))

(assert (=> b!569586 (= res!359759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!359753 () Bool)

(assert (=> start!52212 (=> (not res!359753) (not e!327625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52212 (= res!359753 (validMask!0 mask!3119))))

(assert (=> start!52212 e!327625))

(assert (=> start!52212 true))

(declare-fun array_inv!12906 (array!35689) Bool)

(assert (=> start!52212 (array_inv!12906 a!3118)))

(declare-fun b!569587 () Bool)

(assert (=> b!569587 (= e!327624 e!327622)))

(declare-fun res!359751 () Bool)

(assert (=> b!569587 (=> (not res!359751) (not e!327622))))

(declare-fun lt!259733 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35689 (_ BitVec 32)) SeekEntryResult!5588)

(assert (=> b!569587 (= res!359751 (= lt!259732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259733 (select (store (arr!17132 a!3118) i!1132 k!1914) j!142) (array!35690 (store (arr!17132 a!3118) i!1132 k!1914) (size!17496 a!3118)) mask!3119)))))

(declare-fun lt!259734 () (_ BitVec 32))

(assert (=> b!569587 (= lt!259732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259734 (select (arr!17132 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569587 (= lt!259733 (toIndex!0 (select (store (arr!17132 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569587 (= lt!259734 (toIndex!0 (select (arr!17132 a!3118) j!142) mask!3119))))

(declare-fun b!569588 () Bool)

(declare-fun res!359758 () Bool)

(assert (=> b!569588 (=> (not res!359758) (not e!327625))))

(assert (=> b!569588 (= res!359758 (and (= (size!17496 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17496 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17496 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569589 () Bool)

(declare-fun res!359756 () Bool)

(assert (=> b!569589 (=> (not res!359756) (not e!327625))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569589 (= res!359756 (validKeyInArray!0 k!1914))))

(declare-fun b!569590 () Bool)

(declare-fun res!359755 () Bool)

(assert (=> b!569590 (=> (not res!359755) (not e!327625))))

(declare-fun arrayContainsKey!0 (array!35689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569590 (= res!359755 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569591 () Bool)

(declare-fun res!359754 () Bool)

(assert (=> b!569591 (=> (not res!359754) (not e!327625))))

(assert (=> b!569591 (= res!359754 (validKeyInArray!0 (select (arr!17132 a!3118) j!142)))))

(assert (= (and start!52212 res!359753) b!569588))

(assert (= (and b!569588 res!359758) b!569591))

(assert (= (and b!569591 res!359754) b!569589))

(assert (= (and b!569589 res!359756) b!569590))

(assert (= (and b!569590 res!359755) b!569583))

(assert (= (and b!569583 res!359757) b!569586))

(assert (= (and b!569586 res!359759) b!569584))

(assert (= (and b!569584 res!359752) b!569587))

(assert (= (and b!569587 res!359751) b!569585))

(declare-fun m!548489 () Bool)

(assert (=> b!569591 m!548489))

(assert (=> b!569591 m!548489))

(declare-fun m!548491 () Bool)

(assert (=> b!569591 m!548491))

(declare-fun m!548493 () Bool)

(assert (=> b!569584 m!548493))

(declare-fun m!548495 () Bool)

(assert (=> b!569589 m!548495))

(declare-fun m!548497 () Bool)

(assert (=> b!569585 m!548497))

(declare-fun m!548499 () Bool)

(assert (=> b!569585 m!548499))

(assert (=> b!569585 m!548489))

(declare-fun m!548501 () Bool)

(assert (=> b!569585 m!548501))

(declare-fun m!548503 () Bool)

(assert (=> b!569585 m!548503))

(assert (=> b!569585 m!548489))

(assert (=> b!569587 m!548489))

(declare-fun m!548505 () Bool)

(assert (=> b!569587 m!548505))

(assert (=> b!569587 m!548489))

(declare-fun m!548507 () Bool)

(assert (=> b!569587 m!548507))

(assert (=> b!569587 m!548507))

(declare-fun m!548509 () Bool)

(assert (=> b!569587 m!548509))

(assert (=> b!569587 m!548489))

(declare-fun m!548511 () Bool)

(assert (=> b!569587 m!548511))

(declare-fun m!548513 () Bool)

(assert (=> b!569587 m!548513))

(assert (=> b!569587 m!548507))

(declare-fun m!548515 () Bool)

(assert (=> b!569587 m!548515))

(declare-fun m!548517 () Bool)

(assert (=> b!569583 m!548517))

(declare-fun m!548519 () Bool)

(assert (=> b!569590 m!548519))

(declare-fun m!548521 () Bool)

(assert (=> start!52212 m!548521))

(declare-fun m!548523 () Bool)

(assert (=> start!52212 m!548523))

(declare-fun m!548525 () Bool)

(assert (=> b!569586 m!548525))

(push 1)

