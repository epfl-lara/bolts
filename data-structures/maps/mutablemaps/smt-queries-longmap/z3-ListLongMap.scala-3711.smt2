; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51082 () Bool)

(assert start!51082)

(declare-fun b!557722 () Bool)

(declare-fun res!349741 () Bool)

(declare-fun e!321304 () Bool)

(assert (=> b!557722 (=> (not res!349741) (not e!321304))))

(declare-datatypes ((array!35090 0))(
  ( (array!35091 (arr!16846 (Array (_ BitVec 32) (_ BitVec 64))) (size!17210 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35090)

(declare-datatypes ((List!10979 0))(
  ( (Nil!10976) (Cons!10975 (h!11969 (_ BitVec 64)) (t!17215 List!10979)) )
))
(declare-fun arrayNoDuplicates!0 (array!35090 (_ BitVec 32) List!10979) Bool)

(assert (=> b!557722 (= res!349741 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10976))))

(declare-fun b!557723 () Bool)

(declare-fun e!321305 () Bool)

(declare-fun e!321306 () Bool)

(assert (=> b!557723 (= e!321305 e!321306)))

(declare-fun res!349745 () Bool)

(assert (=> b!557723 (=> res!349745 e!321306)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5302 0))(
  ( (MissingZero!5302 (index!23435 (_ BitVec 32))) (Found!5302 (index!23436 (_ BitVec 32))) (Intermediate!5302 (undefined!6114 Bool) (index!23437 (_ BitVec 32)) (x!52365 (_ BitVec 32))) (Undefined!5302) (MissingVacant!5302 (index!23438 (_ BitVec 32))) )
))
(declare-fun lt!253458 () SeekEntryResult!5302)

(get-info :version)

(assert (=> b!557723 (= res!349745 (or (undefined!6114 lt!253458) (not ((_ is Intermediate!5302) lt!253458)) (= (select (arr!16846 a!3118) (index!23437 lt!253458)) (select (arr!16846 a!3118) j!142)) (= (select (arr!16846 a!3118) (index!23437 lt!253458)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!349735 () Bool)

(declare-fun e!321303 () Bool)

(assert (=> start!51082 (=> (not res!349735) (not e!321303))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51082 (= res!349735 (validMask!0 mask!3119))))

(assert (=> start!51082 e!321303))

(assert (=> start!51082 true))

(declare-fun array_inv!12620 (array!35090) Bool)

(assert (=> start!51082 (array_inv!12620 a!3118)))

(declare-fun b!557724 () Bool)

(declare-fun res!349742 () Bool)

(assert (=> b!557724 (=> (not res!349742) (not e!321303))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557724 (= res!349742 (validKeyInArray!0 k0!1914))))

(declare-fun b!557725 () Bool)

(declare-fun res!349740 () Bool)

(assert (=> b!557725 (=> (not res!349740) (not e!321303))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!557725 (= res!349740 (and (= (size!17210 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17210 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17210 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557726 () Bool)

(declare-fun lt!253460 () SeekEntryResult!5302)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35090 (_ BitVec 32)) SeekEntryResult!5302)

(assert (=> b!557726 (= e!321306 (= lt!253460 (seekKeyOrZeroReturnVacant!0 (x!52365 lt!253458) (index!23437 lt!253458) (index!23437 lt!253458) (select (arr!16846 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557727 () Bool)

(declare-fun e!321307 () Bool)

(assert (=> b!557727 (= e!321307 (not true))))

(assert (=> b!557727 e!321305))

(declare-fun res!349744 () Bool)

(assert (=> b!557727 (=> (not res!349744) (not e!321305))))

(assert (=> b!557727 (= res!349744 (= lt!253460 (Found!5302 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35090 (_ BitVec 32)) SeekEntryResult!5302)

(assert (=> b!557727 (= lt!253460 (seekEntryOrOpen!0 (select (arr!16846 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35090 (_ BitVec 32)) Bool)

(assert (=> b!557727 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17378 0))(
  ( (Unit!17379) )
))
(declare-fun lt!253461 () Unit!17378)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35090 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17378)

(assert (=> b!557727 (= lt!253461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557728 () Bool)

(declare-fun res!349739 () Bool)

(assert (=> b!557728 (=> (not res!349739) (not e!321303))))

(assert (=> b!557728 (= res!349739 (validKeyInArray!0 (select (arr!16846 a!3118) j!142)))))

(declare-fun b!557729 () Bool)

(assert (=> b!557729 (= e!321303 e!321304)))

(declare-fun res!349737 () Bool)

(assert (=> b!557729 (=> (not res!349737) (not e!321304))))

(declare-fun lt!253463 () SeekEntryResult!5302)

(assert (=> b!557729 (= res!349737 (or (= lt!253463 (MissingZero!5302 i!1132)) (= lt!253463 (MissingVacant!5302 i!1132))))))

(assert (=> b!557729 (= lt!253463 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!557730 () Bool)

(declare-fun res!349743 () Bool)

(assert (=> b!557730 (=> (not res!349743) (not e!321304))))

(assert (=> b!557730 (= res!349743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557731 () Bool)

(declare-fun res!349738 () Bool)

(assert (=> b!557731 (=> (not res!349738) (not e!321303))))

(declare-fun arrayContainsKey!0 (array!35090 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557731 (= res!349738 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557732 () Bool)

(assert (=> b!557732 (= e!321304 e!321307)))

(declare-fun res!349736 () Bool)

(assert (=> b!557732 (=> (not res!349736) (not e!321307))))

(declare-fun lt!253462 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35090 (_ BitVec 32)) SeekEntryResult!5302)

(assert (=> b!557732 (= res!349736 (= lt!253458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253462 (select (store (arr!16846 a!3118) i!1132 k0!1914) j!142) (array!35091 (store (arr!16846 a!3118) i!1132 k0!1914) (size!17210 a!3118)) mask!3119)))))

(declare-fun lt!253459 () (_ BitVec 32))

(assert (=> b!557732 (= lt!253458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253459 (select (arr!16846 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557732 (= lt!253462 (toIndex!0 (select (store (arr!16846 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!557732 (= lt!253459 (toIndex!0 (select (arr!16846 a!3118) j!142) mask!3119))))

(assert (= (and start!51082 res!349735) b!557725))

(assert (= (and b!557725 res!349740) b!557728))

(assert (= (and b!557728 res!349739) b!557724))

(assert (= (and b!557724 res!349742) b!557731))

(assert (= (and b!557731 res!349738) b!557729))

(assert (= (and b!557729 res!349737) b!557730))

(assert (= (and b!557730 res!349743) b!557722))

(assert (= (and b!557722 res!349741) b!557732))

(assert (= (and b!557732 res!349736) b!557727))

(assert (= (and b!557727 res!349744) b!557723))

(assert (= (and b!557723 (not res!349745)) b!557726))

(declare-fun m!535631 () Bool)

(assert (=> b!557726 m!535631))

(assert (=> b!557726 m!535631))

(declare-fun m!535633 () Bool)

(assert (=> b!557726 m!535633))

(assert (=> b!557728 m!535631))

(assert (=> b!557728 m!535631))

(declare-fun m!535635 () Bool)

(assert (=> b!557728 m!535635))

(declare-fun m!535637 () Bool)

(assert (=> b!557723 m!535637))

(assert (=> b!557723 m!535631))

(assert (=> b!557727 m!535631))

(assert (=> b!557727 m!535631))

(declare-fun m!535639 () Bool)

(assert (=> b!557727 m!535639))

(declare-fun m!535641 () Bool)

(assert (=> b!557727 m!535641))

(declare-fun m!535643 () Bool)

(assert (=> b!557727 m!535643))

(declare-fun m!535645 () Bool)

(assert (=> b!557731 m!535645))

(assert (=> b!557732 m!535631))

(declare-fun m!535647 () Bool)

(assert (=> b!557732 m!535647))

(assert (=> b!557732 m!535631))

(assert (=> b!557732 m!535631))

(declare-fun m!535649 () Bool)

(assert (=> b!557732 m!535649))

(declare-fun m!535651 () Bool)

(assert (=> b!557732 m!535651))

(declare-fun m!535653 () Bool)

(assert (=> b!557732 m!535653))

(assert (=> b!557732 m!535651))

(declare-fun m!535655 () Bool)

(assert (=> b!557732 m!535655))

(assert (=> b!557732 m!535651))

(declare-fun m!535657 () Bool)

(assert (=> b!557732 m!535657))

(declare-fun m!535659 () Bool)

(assert (=> b!557722 m!535659))

(declare-fun m!535661 () Bool)

(assert (=> b!557730 m!535661))

(declare-fun m!535663 () Bool)

(assert (=> b!557724 m!535663))

(declare-fun m!535665 () Bool)

(assert (=> b!557729 m!535665))

(declare-fun m!535667 () Bool)

(assert (=> start!51082 m!535667))

(declare-fun m!535669 () Bool)

(assert (=> start!51082 m!535669))

(check-sat (not b!557724) (not b!557722) (not b!557729) (not b!557730) (not start!51082) (not b!557732) (not b!557727) (not b!557731) (not b!557726) (not b!557728))
(check-sat)
