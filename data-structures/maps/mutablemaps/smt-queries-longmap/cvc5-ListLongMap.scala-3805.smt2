; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52202 () Bool)

(assert start!52202)

(declare-fun b!569448 () Bool)

(declare-fun res!359623 () Bool)

(declare-fun e!327565 () Bool)

(assert (=> b!569448 (=> (not res!359623) (not e!327565))))

(declare-datatypes ((array!35679 0))(
  ( (array!35680 (arr!17127 (Array (_ BitVec 32) (_ BitVec 64))) (size!17491 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35679)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35679 (_ BitVec 32)) Bool)

(assert (=> b!569448 (= res!359623 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569449 () Bool)

(declare-fun e!327563 () Bool)

(assert (=> b!569449 (= e!327563 e!327565)))

(declare-fun res!359621 () Bool)

(assert (=> b!569449 (=> (not res!359621) (not e!327565))))

(declare-datatypes ((SeekEntryResult!5583 0))(
  ( (MissingZero!5583 (index!24559 (_ BitVec 32))) (Found!5583 (index!24560 (_ BitVec 32))) (Intermediate!5583 (undefined!6395 Bool) (index!24561 (_ BitVec 32)) (x!53461 (_ BitVec 32))) (Undefined!5583) (MissingVacant!5583 (index!24562 (_ BitVec 32))) )
))
(declare-fun lt!259642 () SeekEntryResult!5583)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569449 (= res!359621 (or (= lt!259642 (MissingZero!5583 i!1132)) (= lt!259642 (MissingVacant!5583 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35679 (_ BitVec 32)) SeekEntryResult!5583)

(assert (=> b!569449 (= lt!259642 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!569450 () Bool)

(declare-fun res!359620 () Bool)

(assert (=> b!569450 (=> (not res!359620) (not e!327565))))

(declare-datatypes ((List!11260 0))(
  ( (Nil!11257) (Cons!11256 (h!12277 (_ BitVec 64)) (t!17496 List!11260)) )
))
(declare-fun arrayNoDuplicates!0 (array!35679 (_ BitVec 32) List!11260) Bool)

(assert (=> b!569450 (= res!359620 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11257))))

(declare-fun b!569451 () Bool)

(declare-fun res!359622 () Bool)

(assert (=> b!569451 (=> (not res!359622) (not e!327563))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569451 (= res!359622 (validKeyInArray!0 k!1914))))

(declare-fun b!569452 () Bool)

(declare-fun e!327562 () Bool)

(assert (=> b!569452 (= e!327562 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!259645 () SeekEntryResult!5583)

(declare-fun lt!259641 () SeekEntryResult!5583)

(assert (=> b!569452 (and (= lt!259645 (Found!5583 j!142)) (or (undefined!6395 lt!259641) (not (is-Intermediate!5583 lt!259641)) (= (select (arr!17127 a!3118) (index!24561 lt!259641)) (select (arr!17127 a!3118) j!142)) (not (= (select (arr!17127 a!3118) (index!24561 lt!259641)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259645 (MissingZero!5583 (index!24561 lt!259641)))))))

(assert (=> b!569452 (= lt!259645 (seekEntryOrOpen!0 (select (arr!17127 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569452 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17868 0))(
  ( (Unit!17869) )
))
(declare-fun lt!259643 () Unit!17868)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17868)

(assert (=> b!569452 (= lt!259643 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569454 () Bool)

(assert (=> b!569454 (= e!327565 e!327562)))

(declare-fun res!359616 () Bool)

(assert (=> b!569454 (=> (not res!359616) (not e!327562))))

(declare-fun lt!259644 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35679 (_ BitVec 32)) SeekEntryResult!5583)

(assert (=> b!569454 (= res!359616 (= lt!259641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259644 (select (store (arr!17127 a!3118) i!1132 k!1914) j!142) (array!35680 (store (arr!17127 a!3118) i!1132 k!1914) (size!17491 a!3118)) mask!3119)))))

(declare-fun lt!259646 () (_ BitVec 32))

(assert (=> b!569454 (= lt!259641 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259646 (select (arr!17127 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569454 (= lt!259644 (toIndex!0 (select (store (arr!17127 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569454 (= lt!259646 (toIndex!0 (select (arr!17127 a!3118) j!142) mask!3119))))

(declare-fun b!569455 () Bool)

(declare-fun res!359617 () Bool)

(assert (=> b!569455 (=> (not res!359617) (not e!327563))))

(declare-fun arrayContainsKey!0 (array!35679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569455 (= res!359617 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569456 () Bool)

(declare-fun res!359618 () Bool)

(assert (=> b!569456 (=> (not res!359618) (not e!327563))))

(assert (=> b!569456 (= res!359618 (and (= (size!17491 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17491 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17491 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!359619 () Bool)

(assert (=> start!52202 (=> (not res!359619) (not e!327563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52202 (= res!359619 (validMask!0 mask!3119))))

(assert (=> start!52202 e!327563))

(assert (=> start!52202 true))

(declare-fun array_inv!12901 (array!35679) Bool)

(assert (=> start!52202 (array_inv!12901 a!3118)))

(declare-fun b!569453 () Bool)

(declare-fun res!359624 () Bool)

(assert (=> b!569453 (=> (not res!359624) (not e!327563))))

(assert (=> b!569453 (= res!359624 (validKeyInArray!0 (select (arr!17127 a!3118) j!142)))))

(assert (= (and start!52202 res!359619) b!569456))

(assert (= (and b!569456 res!359618) b!569453))

(assert (= (and b!569453 res!359624) b!569451))

(assert (= (and b!569451 res!359622) b!569455))

(assert (= (and b!569455 res!359617) b!569449))

(assert (= (and b!569449 res!359621) b!569448))

(assert (= (and b!569448 res!359623) b!569450))

(assert (= (and b!569450 res!359620) b!569454))

(assert (= (and b!569454 res!359616) b!569452))

(declare-fun m!548299 () Bool)

(assert (=> b!569455 m!548299))

(declare-fun m!548301 () Bool)

(assert (=> b!569448 m!548301))

(declare-fun m!548303 () Bool)

(assert (=> b!569453 m!548303))

(assert (=> b!569453 m!548303))

(declare-fun m!548305 () Bool)

(assert (=> b!569453 m!548305))

(declare-fun m!548307 () Bool)

(assert (=> b!569450 m!548307))

(declare-fun m!548309 () Bool)

(assert (=> b!569451 m!548309))

(assert (=> b!569454 m!548303))

(declare-fun m!548311 () Bool)

(assert (=> b!569454 m!548311))

(assert (=> b!569454 m!548303))

(assert (=> b!569454 m!548303))

(declare-fun m!548313 () Bool)

(assert (=> b!569454 m!548313))

(declare-fun m!548315 () Bool)

(assert (=> b!569454 m!548315))

(assert (=> b!569454 m!548315))

(declare-fun m!548317 () Bool)

(assert (=> b!569454 m!548317))

(declare-fun m!548319 () Bool)

(assert (=> b!569454 m!548319))

(assert (=> b!569454 m!548315))

(declare-fun m!548321 () Bool)

(assert (=> b!569454 m!548321))

(declare-fun m!548323 () Bool)

(assert (=> start!52202 m!548323))

(declare-fun m!548325 () Bool)

(assert (=> start!52202 m!548325))

(assert (=> b!569452 m!548303))

(declare-fun m!548327 () Bool)

(assert (=> b!569452 m!548327))

(declare-fun m!548329 () Bool)

(assert (=> b!569452 m!548329))

(declare-fun m!548331 () Bool)

(assert (=> b!569452 m!548331))

(assert (=> b!569452 m!548303))

(declare-fun m!548333 () Bool)

(assert (=> b!569452 m!548333))

(declare-fun m!548335 () Bool)

(assert (=> b!569449 m!548335))

(push 1)

