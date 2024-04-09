; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51478 () Bool)

(assert start!51478)

(declare-fun b!562443 () Bool)

(declare-fun e!324147 () Bool)

(declare-fun e!324142 () Bool)

(assert (=> b!562443 (= e!324147 e!324142)))

(declare-fun res!353745 () Bool)

(assert (=> b!562443 (=> (not res!353745) (not e!324142))))

(declare-datatypes ((SeekEntryResult!5401 0))(
  ( (MissingZero!5401 (index!23831 (_ BitVec 32))) (Found!5401 (index!23832 (_ BitVec 32))) (Intermediate!5401 (undefined!6213 Bool) (index!23833 (_ BitVec 32)) (x!52755 (_ BitVec 32))) (Undefined!5401) (MissingVacant!5401 (index!23834 (_ BitVec 32))) )
))
(declare-fun lt!256432 () SeekEntryResult!5401)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562443 (= res!353745 (or (= lt!256432 (MissingZero!5401 i!1132)) (= lt!256432 (MissingVacant!5401 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35297 0))(
  ( (array!35298 (arr!16945 (Array (_ BitVec 32) (_ BitVec 64))) (size!17309 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35297)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35297 (_ BitVec 32)) SeekEntryResult!5401)

(assert (=> b!562443 (= lt!256432 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!562444 () Bool)

(declare-fun e!324145 () Bool)

(assert (=> b!562444 (= e!324142 e!324145)))

(declare-fun res!353754 () Bool)

(assert (=> b!562444 (=> (not res!353754) (not e!324145))))

(declare-fun lt!256440 () (_ BitVec 64))

(declare-fun lt!256439 () SeekEntryResult!5401)

(declare-fun lt!256438 () (_ BitVec 32))

(declare-fun lt!256435 () array!35297)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35297 (_ BitVec 32)) SeekEntryResult!5401)

(assert (=> b!562444 (= res!353754 (= lt!256439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256438 lt!256440 lt!256435 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!256434 () (_ BitVec 32))

(assert (=> b!562444 (= lt!256439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256434 (select (arr!16945 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562444 (= lt!256438 (toIndex!0 lt!256440 mask!3119))))

(assert (=> b!562444 (= lt!256440 (select (store (arr!16945 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562444 (= lt!256434 (toIndex!0 (select (arr!16945 a!3118) j!142) mask!3119))))

(assert (=> b!562444 (= lt!256435 (array!35298 (store (arr!16945 a!3118) i!1132 k0!1914) (size!17309 a!3118)))))

(declare-fun b!562445 () Bool)

(declare-fun res!353747 () Bool)

(assert (=> b!562445 (=> (not res!353747) (not e!324147))))

(assert (=> b!562445 (= res!353747 (and (= (size!17309 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17309 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17309 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562446 () Bool)

(declare-fun e!324144 () Bool)

(assert (=> b!562446 (= e!324145 (not e!324144))))

(declare-fun res!353746 () Bool)

(assert (=> b!562446 (=> res!353746 e!324144)))

(get-info :version)

(assert (=> b!562446 (= res!353746 (or (undefined!6213 lt!256439) (not ((_ is Intermediate!5401) lt!256439))))))

(declare-fun lt!256443 () SeekEntryResult!5401)

(declare-fun lt!256433 () SeekEntryResult!5401)

(assert (=> b!562446 (= lt!256443 lt!256433)))

(assert (=> b!562446 (= lt!256433 (Found!5401 j!142))))

(assert (=> b!562446 (= lt!256443 (seekEntryOrOpen!0 (select (arr!16945 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35297 (_ BitVec 32)) Bool)

(assert (=> b!562446 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17576 0))(
  ( (Unit!17577) )
))
(declare-fun lt!256437 () Unit!17576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35297 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17576)

(assert (=> b!562446 (= lt!256437 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562447 () Bool)

(declare-fun res!353748 () Bool)

(assert (=> b!562447 (=> (not res!353748) (not e!324147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562447 (= res!353748 (validKeyInArray!0 k0!1914))))

(declare-fun b!562448 () Bool)

(declare-fun e!324143 () Bool)

(assert (=> b!562448 (= e!324143 true)))

(declare-fun lt!256445 () SeekEntryResult!5401)

(declare-fun lt!256442 () SeekEntryResult!5401)

(assert (=> b!562448 (= lt!256445 lt!256442)))

(declare-fun lt!256444 () Unit!17576)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35297 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17576)

(assert (=> b!562448 (= lt!256444 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!52755 lt!256439) (index!23833 lt!256439) (index!23833 lt!256439) mask!3119))))

(declare-fun b!562450 () Bool)

(declare-fun res!353753 () Bool)

(assert (=> b!562450 (=> (not res!353753) (not e!324142))))

(declare-datatypes ((List!11078 0))(
  ( (Nil!11075) (Cons!11074 (h!12077 (_ BitVec 64)) (t!17314 List!11078)) )
))
(declare-fun arrayNoDuplicates!0 (array!35297 (_ BitVec 32) List!11078) Bool)

(assert (=> b!562450 (= res!353753 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11075))))

(declare-fun b!562451 () Bool)

(declare-fun e!324148 () Bool)

(assert (=> b!562451 (= e!324144 e!324148)))

(declare-fun res!353751 () Bool)

(assert (=> b!562451 (=> res!353751 e!324148)))

(declare-fun lt!256441 () (_ BitVec 64))

(assert (=> b!562451 (= res!353751 (or (= lt!256441 (select (arr!16945 a!3118) j!142)) (= lt!256441 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562451 (= lt!256441 (select (arr!16945 a!3118) (index!23833 lt!256439)))))

(declare-fun b!562449 () Bool)

(assert (=> b!562449 (= e!324148 e!324143)))

(declare-fun res!353755 () Bool)

(assert (=> b!562449 (=> res!353755 e!324143)))

(assert (=> b!562449 (= res!353755 (or (bvslt (index!23833 lt!256439) #b00000000000000000000000000000000) (bvsge (index!23833 lt!256439) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52755 lt!256439) #b01111111111111111111111111111110) (bvslt (x!52755 lt!256439) #b00000000000000000000000000000000) (not (= lt!256441 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16945 a!3118) i!1132 k0!1914) (index!23833 lt!256439)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256445 lt!256433))))))

(declare-fun lt!256436 () SeekEntryResult!5401)

(assert (=> b!562449 (= lt!256436 lt!256442)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35297 (_ BitVec 32)) SeekEntryResult!5401)

(assert (=> b!562449 (= lt!256442 (seekKeyOrZeroReturnVacant!0 (x!52755 lt!256439) (index!23833 lt!256439) (index!23833 lt!256439) lt!256440 lt!256435 mask!3119))))

(assert (=> b!562449 (= lt!256436 (seekEntryOrOpen!0 lt!256440 lt!256435 mask!3119))))

(assert (=> b!562449 (= lt!256443 lt!256445)))

(assert (=> b!562449 (= lt!256445 (seekKeyOrZeroReturnVacant!0 (x!52755 lt!256439) (index!23833 lt!256439) (index!23833 lt!256439) (select (arr!16945 a!3118) j!142) a!3118 mask!3119))))

(declare-fun res!353756 () Bool)

(assert (=> start!51478 (=> (not res!353756) (not e!324147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51478 (= res!353756 (validMask!0 mask!3119))))

(assert (=> start!51478 e!324147))

(assert (=> start!51478 true))

(declare-fun array_inv!12719 (array!35297) Bool)

(assert (=> start!51478 (array_inv!12719 a!3118)))

(declare-fun b!562452 () Bool)

(declare-fun res!353750 () Bool)

(assert (=> b!562452 (=> (not res!353750) (not e!324147))))

(declare-fun arrayContainsKey!0 (array!35297 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562452 (= res!353750 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562453 () Bool)

(declare-fun res!353752 () Bool)

(assert (=> b!562453 (=> (not res!353752) (not e!324142))))

(assert (=> b!562453 (= res!353752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562454 () Bool)

(declare-fun res!353749 () Bool)

(assert (=> b!562454 (=> (not res!353749) (not e!324147))))

(assert (=> b!562454 (= res!353749 (validKeyInArray!0 (select (arr!16945 a!3118) j!142)))))

(assert (= (and start!51478 res!353756) b!562445))

(assert (= (and b!562445 res!353747) b!562454))

(assert (= (and b!562454 res!353749) b!562447))

(assert (= (and b!562447 res!353748) b!562452))

(assert (= (and b!562452 res!353750) b!562443))

(assert (= (and b!562443 res!353745) b!562453))

(assert (= (and b!562453 res!353752) b!562450))

(assert (= (and b!562450 res!353753) b!562444))

(assert (= (and b!562444 res!353754) b!562446))

(assert (= (and b!562446 (not res!353746)) b!562451))

(assert (= (and b!562451 (not res!353751)) b!562449))

(assert (= (and b!562449 (not res!353755)) b!562448))

(declare-fun m!540583 () Bool)

(assert (=> b!562447 m!540583))

(declare-fun m!540585 () Bool)

(assert (=> b!562454 m!540585))

(assert (=> b!562454 m!540585))

(declare-fun m!540587 () Bool)

(assert (=> b!562454 m!540587))

(assert (=> b!562451 m!540585))

(declare-fun m!540589 () Bool)

(assert (=> b!562451 m!540589))

(declare-fun m!540591 () Bool)

(assert (=> start!51478 m!540591))

(declare-fun m!540593 () Bool)

(assert (=> start!51478 m!540593))

(declare-fun m!540595 () Bool)

(assert (=> b!562443 m!540595))

(assert (=> b!562446 m!540585))

(assert (=> b!562446 m!540585))

(declare-fun m!540597 () Bool)

(assert (=> b!562446 m!540597))

(declare-fun m!540599 () Bool)

(assert (=> b!562446 m!540599))

(declare-fun m!540601 () Bool)

(assert (=> b!562446 m!540601))

(assert (=> b!562444 m!540585))

(declare-fun m!540603 () Bool)

(assert (=> b!562444 m!540603))

(declare-fun m!540605 () Bool)

(assert (=> b!562444 m!540605))

(assert (=> b!562444 m!540585))

(declare-fun m!540607 () Bool)

(assert (=> b!562444 m!540607))

(declare-fun m!540609 () Bool)

(assert (=> b!562444 m!540609))

(assert (=> b!562444 m!540585))

(declare-fun m!540611 () Bool)

(assert (=> b!562444 m!540611))

(declare-fun m!540613 () Bool)

(assert (=> b!562444 m!540613))

(declare-fun m!540615 () Bool)

(assert (=> b!562452 m!540615))

(declare-fun m!540617 () Bool)

(assert (=> b!562449 m!540617))

(declare-fun m!540619 () Bool)

(assert (=> b!562449 m!540619))

(assert (=> b!562449 m!540609))

(assert (=> b!562449 m!540585))

(declare-fun m!540621 () Bool)

(assert (=> b!562449 m!540621))

(declare-fun m!540623 () Bool)

(assert (=> b!562449 m!540623))

(assert (=> b!562449 m!540585))

(declare-fun m!540625 () Bool)

(assert (=> b!562448 m!540625))

(declare-fun m!540627 () Bool)

(assert (=> b!562450 m!540627))

(declare-fun m!540629 () Bool)

(assert (=> b!562453 m!540629))

(check-sat (not b!562449) (not b!562454) (not b!562450) (not b!562446) (not start!51478) (not b!562452) (not b!562444) (not b!562453) (not b!562443) (not b!562447) (not b!562448))
(check-sat)
