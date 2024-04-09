; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65218 () Bool)

(assert start!65218)

(declare-fun b!737850 () Bool)

(declare-fun res!496105 () Bool)

(declare-fun e!412706 () Bool)

(assert (=> b!737850 (=> res!496105 e!412706)))

(declare-fun e!412707 () Bool)

(assert (=> b!737850 (= res!496105 e!412707)))

(declare-fun c!81259 () Bool)

(declare-fun lt!327465 () Bool)

(assert (=> b!737850 (= c!81259 lt!327465)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41344 0))(
  ( (array!41345 (arr!19782 (Array (_ BitVec 32) (_ BitVec 64))) (size!20203 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41344)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!412705 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!737851 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7389 0))(
  ( (MissingZero!7389 (index!31923 (_ BitVec 32))) (Found!7389 (index!31924 (_ BitVec 32))) (Intermediate!7389 (undefined!8201 Bool) (index!31925 (_ BitVec 32)) (x!62948 (_ BitVec 32))) (Undefined!7389) (MissingVacant!7389 (index!31926 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41344 (_ BitVec 32)) SeekEntryResult!7389)

(assert (=> b!737851 (= e!412705 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19782 a!3186) j!159) a!3186 mask!3328) (Found!7389 j!159)))))

(declare-fun b!737852 () Bool)

(declare-fun res!496110 () Bool)

(declare-fun e!412699 () Bool)

(assert (=> b!737852 (=> (not res!496110) (not e!412699))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737852 (= res!496110 (and (= (size!20203 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20203 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20203 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!327464 () SeekEntryResult!7389)

(declare-fun b!737853 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41344 (_ BitVec 32)) SeekEntryResult!7389)

(assert (=> b!737853 (= e!412705 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19782 a!3186) j!159) a!3186 mask!3328) lt!327464))))

(declare-fun b!737854 () Bool)

(declare-fun res!496103 () Bool)

(declare-fun e!412696 () Bool)

(assert (=> b!737854 (=> (not res!496103) (not e!412696))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!737854 (= res!496103 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20203 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20203 a!3186))))))

(declare-fun lt!327470 () SeekEntryResult!7389)

(declare-fun e!412697 () Bool)

(declare-fun b!737855 () Bool)

(assert (=> b!737855 (= e!412697 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19782 a!3186) j!159) a!3186 mask!3328) lt!327470))))

(declare-fun b!737856 () Bool)

(declare-fun e!412703 () Bool)

(declare-fun e!412698 () Bool)

(assert (=> b!737856 (= e!412703 e!412698)))

(declare-fun res!496094 () Bool)

(assert (=> b!737856 (=> (not res!496094) (not e!412698))))

(declare-fun lt!327467 () SeekEntryResult!7389)

(declare-fun lt!327463 () SeekEntryResult!7389)

(assert (=> b!737856 (= res!496094 (= lt!327467 lt!327463))))

(declare-fun lt!327457 () array!41344)

(declare-fun lt!327462 () (_ BitVec 64))

(assert (=> b!737856 (= lt!327463 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327462 lt!327457 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737856 (= lt!327467 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327462 mask!3328) lt!327462 lt!327457 mask!3328))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!737856 (= lt!327462 (select (store (arr!19782 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!737856 (= lt!327457 (array!41345 (store (arr!19782 a!3186) i!1173 k!2102) (size!20203 a!3186)))))

(declare-fun b!737857 () Bool)

(declare-fun res!496100 () Bool)

(assert (=> b!737857 (=> (not res!496100) (not e!412703))))

(assert (=> b!737857 (= res!496100 e!412705)))

(declare-fun c!81261 () Bool)

(assert (=> b!737857 (= c!81261 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737859 () Bool)

(declare-fun res!496098 () Bool)

(assert (=> b!737859 (=> (not res!496098) (not e!412696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41344 (_ BitVec 32)) Bool)

(assert (=> b!737859 (= res!496098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737860 () Bool)

(declare-fun res!496109 () Bool)

(assert (=> b!737860 (=> (not res!496109) (not e!412703))))

(assert (=> b!737860 (= res!496109 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19782 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737861 () Bool)

(declare-fun res!496093 () Bool)

(assert (=> b!737861 (=> (not res!496093) (not e!412696))))

(declare-datatypes ((List!13837 0))(
  ( (Nil!13834) (Cons!13833 (h!14905 (_ BitVec 64)) (t!20160 List!13837)) )
))
(declare-fun arrayNoDuplicates!0 (array!41344 (_ BitVec 32) List!13837) Bool)

(assert (=> b!737861 (= res!496093 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13834))))

(declare-fun b!737862 () Bool)

(declare-fun res!496102 () Bool)

(assert (=> b!737862 (=> (not res!496102) (not e!412699))))

(declare-fun arrayContainsKey!0 (array!41344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737862 (= res!496102 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737863 () Bool)

(declare-datatypes ((Unit!25174 0))(
  ( (Unit!25175) )
))
(declare-fun e!412700 () Unit!25174)

(declare-fun Unit!25176 () Unit!25174)

(assert (=> b!737863 (= e!412700 Unit!25176)))

(declare-fun lt!327458 () SeekEntryResult!7389)

(assert (=> b!737863 (= lt!327458 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19782 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327466 () (_ BitVec 32))

(declare-fun lt!327469 () SeekEntryResult!7389)

(assert (=> b!737863 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327466 resIntermediateIndex!5 (select (arr!19782 a!3186) j!159) a!3186 mask!3328) lt!327469)))

(declare-fun res!496096 () Bool)

(assert (=> start!65218 (=> (not res!496096) (not e!412699))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65218 (= res!496096 (validMask!0 mask!3328))))

(assert (=> start!65218 e!412699))

(assert (=> start!65218 true))

(declare-fun array_inv!15556 (array!41344) Bool)

(assert (=> start!65218 (array_inv!15556 a!3186)))

(declare-fun b!737858 () Bool)

(declare-fun res!496099 () Bool)

(assert (=> b!737858 (=> (not res!496099) (not e!412699))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737858 (= res!496099 (validKeyInArray!0 (select (arr!19782 a!3186) j!159)))))

(declare-fun b!737864 () Bool)

(declare-fun res!496108 () Bool)

(assert (=> b!737864 (=> (not res!496108) (not e!412699))))

(assert (=> b!737864 (= res!496108 (validKeyInArray!0 k!2102))))

(declare-fun b!737865 () Bool)

(assert (=> b!737865 (= e!412707 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327466 resIntermediateIndex!5 (select (arr!19782 a!3186) j!159) a!3186 mask!3328) lt!327469)))))

(declare-fun b!737866 () Bool)

(assert (=> b!737866 (= e!412696 e!412703)))

(declare-fun res!496101 () Bool)

(assert (=> b!737866 (=> (not res!496101) (not e!412703))))

(assert (=> b!737866 (= res!496101 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19782 a!3186) j!159) mask!3328) (select (arr!19782 a!3186) j!159) a!3186 mask!3328) lt!327464))))

(assert (=> b!737866 (= lt!327464 (Intermediate!7389 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737867 () Bool)

(declare-fun e!412701 () Bool)

(assert (=> b!737867 (= e!412701 e!412706)))

(declare-fun res!496095 () Bool)

(assert (=> b!737867 (=> res!496095 e!412706)))

(assert (=> b!737867 (= res!496095 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327466 #b00000000000000000000000000000000) (bvsge lt!327466 (size!20203 a!3186))))))

(declare-fun lt!327461 () Unit!25174)

(assert (=> b!737867 (= lt!327461 e!412700)))

(declare-fun c!81260 () Bool)

(assert (=> b!737867 (= c!81260 lt!327465)))

(assert (=> b!737867 (= lt!327465 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737867 (= lt!327466 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737868 () Bool)

(assert (=> b!737868 (= e!412699 e!412696)))

(declare-fun res!496097 () Bool)

(assert (=> b!737868 (=> (not res!496097) (not e!412696))))

(declare-fun lt!327459 () SeekEntryResult!7389)

(assert (=> b!737868 (= res!496097 (or (= lt!327459 (MissingZero!7389 i!1173)) (= lt!327459 (MissingVacant!7389 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41344 (_ BitVec 32)) SeekEntryResult!7389)

(assert (=> b!737868 (= lt!327459 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!737869 () Bool)

(assert (=> b!737869 (= e!412706 true)))

(declare-fun lt!327468 () SeekEntryResult!7389)

(assert (=> b!737869 (= lt!327468 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327466 lt!327462 lt!327457 mask!3328))))

(declare-fun b!737870 () Bool)

(declare-fun e!412704 () Bool)

(assert (=> b!737870 (= e!412704 e!412697)))

(declare-fun res!496107 () Bool)

(assert (=> b!737870 (=> (not res!496107) (not e!412697))))

(assert (=> b!737870 (= res!496107 (= (seekEntryOrOpen!0 (select (arr!19782 a!3186) j!159) a!3186 mask!3328) lt!327470))))

(assert (=> b!737870 (= lt!327470 (Found!7389 j!159))))

(declare-fun b!737871 () Bool)

(assert (=> b!737871 (= e!412698 (not e!412701))))

(declare-fun res!496104 () Bool)

(assert (=> b!737871 (=> res!496104 e!412701)))

(assert (=> b!737871 (= res!496104 (or (not (is-Intermediate!7389 lt!327463)) (bvsge x!1131 (x!62948 lt!327463))))))

(assert (=> b!737871 (= lt!327469 (Found!7389 j!159))))

(assert (=> b!737871 e!412704))

(declare-fun res!496106 () Bool)

(assert (=> b!737871 (=> (not res!496106) (not e!412704))))

(assert (=> b!737871 (= res!496106 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327460 () Unit!25174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41344 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25174)

(assert (=> b!737871 (= lt!327460 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737872 () Bool)

(assert (=> b!737872 (= e!412707 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327466 (select (arr!19782 a!3186) j!159) a!3186 mask!3328) lt!327464)))))

(declare-fun b!737873 () Bool)

(declare-fun Unit!25177 () Unit!25174)

(assert (=> b!737873 (= e!412700 Unit!25177)))

(assert (=> b!737873 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327466 (select (arr!19782 a!3186) j!159) a!3186 mask!3328) lt!327464)))

(assert (= (and start!65218 res!496096) b!737852))

(assert (= (and b!737852 res!496110) b!737858))

(assert (= (and b!737858 res!496099) b!737864))

(assert (= (and b!737864 res!496108) b!737862))

(assert (= (and b!737862 res!496102) b!737868))

(assert (= (and b!737868 res!496097) b!737859))

(assert (= (and b!737859 res!496098) b!737861))

(assert (= (and b!737861 res!496093) b!737854))

(assert (= (and b!737854 res!496103) b!737866))

(assert (= (and b!737866 res!496101) b!737860))

(assert (= (and b!737860 res!496109) b!737857))

(assert (= (and b!737857 c!81261) b!737853))

(assert (= (and b!737857 (not c!81261)) b!737851))

(assert (= (and b!737857 res!496100) b!737856))

(assert (= (and b!737856 res!496094) b!737871))

(assert (= (and b!737871 res!496106) b!737870))

(assert (= (and b!737870 res!496107) b!737855))

(assert (= (and b!737871 (not res!496104)) b!737867))

(assert (= (and b!737867 c!81260) b!737873))

(assert (= (and b!737867 (not c!81260)) b!737863))

(assert (= (and b!737867 (not res!496095)) b!737850))

(assert (= (and b!737850 c!81259) b!737872))

(assert (= (and b!737850 (not c!81259)) b!737865))

(assert (= (and b!737850 (not res!496105)) b!737869))

(declare-fun m!689695 () Bool)

(assert (=> b!737860 m!689695))

(declare-fun m!689697 () Bool)

(assert (=> b!737866 m!689697))

(assert (=> b!737866 m!689697))

(declare-fun m!689699 () Bool)

(assert (=> b!737866 m!689699))

(assert (=> b!737866 m!689699))

(assert (=> b!737866 m!689697))

(declare-fun m!689701 () Bool)

(assert (=> b!737866 m!689701))

(declare-fun m!689703 () Bool)

(assert (=> b!737871 m!689703))

(declare-fun m!689705 () Bool)

(assert (=> b!737871 m!689705))

(declare-fun m!689707 () Bool)

(assert (=> b!737861 m!689707))

(declare-fun m!689709 () Bool)

(assert (=> b!737856 m!689709))

(declare-fun m!689711 () Bool)

(assert (=> b!737856 m!689711))

(declare-fun m!689713 () Bool)

(assert (=> b!737856 m!689713))

(declare-fun m!689715 () Bool)

(assert (=> b!737856 m!689715))

(assert (=> b!737856 m!689711))

(declare-fun m!689717 () Bool)

(assert (=> b!737856 m!689717))

(assert (=> b!737872 m!689697))

(assert (=> b!737872 m!689697))

(declare-fun m!689719 () Bool)

(assert (=> b!737872 m!689719))

(assert (=> b!737858 m!689697))

(assert (=> b!737858 m!689697))

(declare-fun m!689721 () Bool)

(assert (=> b!737858 m!689721))

(declare-fun m!689723 () Bool)

(assert (=> b!737867 m!689723))

(declare-fun m!689725 () Bool)

(assert (=> b!737868 m!689725))

(assert (=> b!737851 m!689697))

(assert (=> b!737851 m!689697))

(declare-fun m!689727 () Bool)

(assert (=> b!737851 m!689727))

(declare-fun m!689729 () Bool)

(assert (=> start!65218 m!689729))

(declare-fun m!689731 () Bool)

(assert (=> start!65218 m!689731))

(declare-fun m!689733 () Bool)

(assert (=> b!737862 m!689733))

(declare-fun m!689735 () Bool)

(assert (=> b!737859 m!689735))

(declare-fun m!689737 () Bool)

(assert (=> b!737864 m!689737))

(assert (=> b!737853 m!689697))

(assert (=> b!737853 m!689697))

(declare-fun m!689739 () Bool)

(assert (=> b!737853 m!689739))

(assert (=> b!737870 m!689697))

(assert (=> b!737870 m!689697))

(declare-fun m!689741 () Bool)

(assert (=> b!737870 m!689741))

(declare-fun m!689743 () Bool)

(assert (=> b!737869 m!689743))

(assert (=> b!737865 m!689697))

(assert (=> b!737865 m!689697))

(declare-fun m!689745 () Bool)

(assert (=> b!737865 m!689745))

(assert (=> b!737873 m!689697))

(assert (=> b!737873 m!689697))

(assert (=> b!737873 m!689719))

(assert (=> b!737855 m!689697))

(assert (=> b!737855 m!689697))

(declare-fun m!689747 () Bool)

(assert (=> b!737855 m!689747))

(assert (=> b!737863 m!689697))

(assert (=> b!737863 m!689697))

(assert (=> b!737863 m!689727))

(assert (=> b!737863 m!689697))

(assert (=> b!737863 m!689745))

(push 1)

