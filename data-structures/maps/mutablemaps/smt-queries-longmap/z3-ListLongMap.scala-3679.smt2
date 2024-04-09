; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50710 () Bool)

(assert start!50710)

(declare-fun b!554117 () Bool)

(declare-fun e!319533 () Bool)

(declare-fun e!319535 () Bool)

(assert (=> b!554117 (= e!319533 e!319535)))

(declare-fun res!346682 () Bool)

(assert (=> b!554117 (=> (not res!346682) (not e!319535))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!251720 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34889 0))(
  ( (array!34890 (arr!16750 (Array (_ BitVec 32) (_ BitVec 64))) (size!17114 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34889)

(declare-datatypes ((SeekEntryResult!5206 0))(
  ( (MissingZero!5206 (index!23051 (_ BitVec 32))) (Found!5206 (index!23052 (_ BitVec 32))) (Intermediate!5206 (undefined!6018 Bool) (index!23053 (_ BitVec 32)) (x!51995 (_ BitVec 32))) (Undefined!5206) (MissingVacant!5206 (index!23054 (_ BitVec 32))) )
))
(declare-fun lt!251716 () SeekEntryResult!5206)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34889 (_ BitVec 32)) SeekEntryResult!5206)

(assert (=> b!554117 (= res!346682 (= lt!251716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251720 (select (store (arr!16750 a!3118) i!1132 k0!1914) j!142) (array!34890 (store (arr!16750 a!3118) i!1132 k0!1914) (size!17114 a!3118)) mask!3119)))))

(declare-fun lt!251717 () (_ BitVec 32))

(assert (=> b!554117 (= lt!251716 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251717 (select (arr!16750 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554117 (= lt!251720 (toIndex!0 (select (store (arr!16750 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!554117 (= lt!251717 (toIndex!0 (select (arr!16750 a!3118) j!142) mask!3119))))

(declare-fun b!554118 () Bool)

(declare-fun res!346687 () Bool)

(declare-fun e!319537 () Bool)

(assert (=> b!554118 (=> (not res!346687) (not e!319537))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554118 (= res!346687 (validKeyInArray!0 (select (arr!16750 a!3118) j!142)))))

(declare-fun b!554119 () Bool)

(declare-fun res!346684 () Bool)

(assert (=> b!554119 (=> (not res!346684) (not e!319537))))

(declare-fun arrayContainsKey!0 (array!34889 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554119 (= res!346684 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554120 () Bool)

(declare-fun res!346681 () Bool)

(assert (=> b!554120 (=> (not res!346681) (not e!319537))))

(assert (=> b!554120 (= res!346681 (and (= (size!17114 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17114 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17114 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554121 () Bool)

(declare-fun e!319534 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34889 (_ BitVec 32)) SeekEntryResult!5206)

(assert (=> b!554121 (= e!319534 (= (seekEntryOrOpen!0 (select (arr!16750 a!3118) j!142) a!3118 mask!3119) (Found!5206 j!142)))))

(declare-fun b!554122 () Bool)

(declare-fun res!346680 () Bool)

(assert (=> b!554122 (=> (not res!346680) (not e!319537))))

(assert (=> b!554122 (= res!346680 (validKeyInArray!0 k0!1914))))

(declare-fun b!554123 () Bool)

(get-info :version)

(assert (=> b!554123 (= e!319535 (not (or (not ((_ is Intermediate!5206) lt!251716)) (undefined!6018 lt!251716) (= (select (arr!16750 a!3118) (index!23053 lt!251716)) (select (arr!16750 a!3118) j!142)) (not (= (select (arr!16750 a!3118) (index!23053 lt!251716)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!554123 e!319534))

(declare-fun res!346683 () Bool)

(assert (=> b!554123 (=> (not res!346683) (not e!319534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34889 (_ BitVec 32)) Bool)

(assert (=> b!554123 (= res!346683 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17186 0))(
  ( (Unit!17187) )
))
(declare-fun lt!251719 () Unit!17186)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17186)

(assert (=> b!554123 (= lt!251719 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554124 () Bool)

(declare-fun res!346685 () Bool)

(assert (=> b!554124 (=> (not res!346685) (not e!319533))))

(declare-datatypes ((List!10883 0))(
  ( (Nil!10880) (Cons!10879 (h!11864 (_ BitVec 64)) (t!17119 List!10883)) )
))
(declare-fun arrayNoDuplicates!0 (array!34889 (_ BitVec 32) List!10883) Bool)

(assert (=> b!554124 (= res!346685 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10880))))

(declare-fun res!346686 () Bool)

(assert (=> start!50710 (=> (not res!346686) (not e!319537))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50710 (= res!346686 (validMask!0 mask!3119))))

(assert (=> start!50710 e!319537))

(assert (=> start!50710 true))

(declare-fun array_inv!12524 (array!34889) Bool)

(assert (=> start!50710 (array_inv!12524 a!3118)))

(declare-fun b!554125 () Bool)

(assert (=> b!554125 (= e!319537 e!319533)))

(declare-fun res!346688 () Bool)

(assert (=> b!554125 (=> (not res!346688) (not e!319533))))

(declare-fun lt!251718 () SeekEntryResult!5206)

(assert (=> b!554125 (= res!346688 (or (= lt!251718 (MissingZero!5206 i!1132)) (= lt!251718 (MissingVacant!5206 i!1132))))))

(assert (=> b!554125 (= lt!251718 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!554126 () Bool)

(declare-fun res!346679 () Bool)

(assert (=> b!554126 (=> (not res!346679) (not e!319533))))

(assert (=> b!554126 (= res!346679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50710 res!346686) b!554120))

(assert (= (and b!554120 res!346681) b!554118))

(assert (= (and b!554118 res!346687) b!554122))

(assert (= (and b!554122 res!346680) b!554119))

(assert (= (and b!554119 res!346684) b!554125))

(assert (= (and b!554125 res!346688) b!554126))

(assert (= (and b!554126 res!346679) b!554124))

(assert (= (and b!554124 res!346685) b!554117))

(assert (= (and b!554117 res!346682) b!554123))

(assert (= (and b!554123 res!346683) b!554121))

(declare-fun m!531423 () Bool)

(assert (=> b!554119 m!531423))

(declare-fun m!531425 () Bool)

(assert (=> b!554124 m!531425))

(declare-fun m!531427 () Bool)

(assert (=> start!50710 m!531427))

(declare-fun m!531429 () Bool)

(assert (=> start!50710 m!531429))

(declare-fun m!531431 () Bool)

(assert (=> b!554121 m!531431))

(assert (=> b!554121 m!531431))

(declare-fun m!531433 () Bool)

(assert (=> b!554121 m!531433))

(declare-fun m!531435 () Bool)

(assert (=> b!554126 m!531435))

(declare-fun m!531437 () Bool)

(assert (=> b!554123 m!531437))

(assert (=> b!554123 m!531431))

(declare-fun m!531439 () Bool)

(assert (=> b!554123 m!531439))

(declare-fun m!531441 () Bool)

(assert (=> b!554123 m!531441))

(assert (=> b!554117 m!531431))

(declare-fun m!531443 () Bool)

(assert (=> b!554117 m!531443))

(assert (=> b!554117 m!531431))

(declare-fun m!531445 () Bool)

(assert (=> b!554117 m!531445))

(declare-fun m!531447 () Bool)

(assert (=> b!554117 m!531447))

(assert (=> b!554117 m!531445))

(assert (=> b!554117 m!531445))

(declare-fun m!531449 () Bool)

(assert (=> b!554117 m!531449))

(declare-fun m!531451 () Bool)

(assert (=> b!554117 m!531451))

(assert (=> b!554117 m!531431))

(declare-fun m!531453 () Bool)

(assert (=> b!554117 m!531453))

(declare-fun m!531455 () Bool)

(assert (=> b!554125 m!531455))

(assert (=> b!554118 m!531431))

(assert (=> b!554118 m!531431))

(declare-fun m!531457 () Bool)

(assert (=> b!554118 m!531457))

(declare-fun m!531459 () Bool)

(assert (=> b!554122 m!531459))

(check-sat (not b!554122) (not b!554125) (not b!554119) (not b!554124) (not b!554117) (not b!554126) (not b!554123) (not b!554118) (not b!554121) (not start!50710))
(check-sat)
