; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65274 () Bool)

(assert start!65274)

(declare-fun b!739866 () Bool)

(declare-fun res!497609 () Bool)

(declare-fun e!413707 () Bool)

(assert (=> b!739866 (=> res!497609 e!413707)))

(declare-fun e!413711 () Bool)

(assert (=> b!739866 (= res!497609 e!413711)))

(declare-fun c!81511 () Bool)

(declare-fun lt!328638 () Bool)

(assert (=> b!739866 (= c!81511 lt!328638)))

(declare-fun b!739867 () Bool)

(declare-fun res!497605 () Bool)

(declare-fun e!413706 () Bool)

(assert (=> b!739867 (=> (not res!497605) (not e!413706))))

(declare-datatypes ((array!41400 0))(
  ( (array!41401 (arr!19810 (Array (_ BitVec 32) (_ BitVec 64))) (size!20231 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41400)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!739867 (= res!497605 (and (= (size!20231 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20231 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20231 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739868 () Bool)

(declare-fun e!413705 () Bool)

(assert (=> b!739868 (= e!413705 e!413707)))

(declare-fun res!497617 () Bool)

(assert (=> b!739868 (=> res!497617 e!413707)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!328643 () (_ BitVec 32))

(assert (=> b!739868 (= res!497617 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328643 #b00000000000000000000000000000000) (bvsge lt!328643 (size!20231 a!3186))))))

(declare-datatypes ((Unit!25286 0))(
  ( (Unit!25287) )
))
(declare-fun lt!328641 () Unit!25286)

(declare-fun e!413704 () Unit!25286)

(assert (=> b!739868 (= lt!328641 e!413704)))

(declare-fun c!81513 () Bool)

(assert (=> b!739868 (= c!81513 lt!328638)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!739868 (= lt!328638 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739868 (= lt!328643 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739869 () Bool)

(declare-fun res!497618 () Bool)

(declare-fun e!413708 () Bool)

(assert (=> b!739869 (=> (not res!497618) (not e!413708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41400 (_ BitVec 32)) Bool)

(assert (=> b!739869 (= res!497618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739870 () Bool)

(declare-fun Unit!25288 () Unit!25286)

(assert (=> b!739870 (= e!413704 Unit!25288)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7417 0))(
  ( (MissingZero!7417 (index!32035 (_ BitVec 32))) (Found!7417 (index!32036 (_ BitVec 32))) (Intermediate!7417 (undefined!8229 Bool) (index!32037 (_ BitVec 32)) (x!63048 (_ BitVec 32))) (Undefined!7417) (MissingVacant!7417 (index!32038 (_ BitVec 32))) )
))
(declare-fun lt!328639 () SeekEntryResult!7417)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41400 (_ BitVec 32)) SeekEntryResult!7417)

(assert (=> b!739870 (= lt!328639 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19810 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!328644 () SeekEntryResult!7417)

(assert (=> b!739870 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328643 resIntermediateIndex!5 (select (arr!19810 a!3186) j!159) a!3186 mask!3328) lt!328644)))

(declare-fun b!739871 () Bool)

(declare-fun e!413714 () Bool)

(assert (=> b!739871 (= e!413708 e!413714)))

(declare-fun res!497614 () Bool)

(assert (=> b!739871 (=> (not res!497614) (not e!413714))))

(declare-fun lt!328642 () SeekEntryResult!7417)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41400 (_ BitVec 32)) SeekEntryResult!7417)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739871 (= res!497614 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19810 a!3186) j!159) mask!3328) (select (arr!19810 a!3186) j!159) a!3186 mask!3328) lt!328642))))

(assert (=> b!739871 (= lt!328642 (Intermediate!7417 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739872 () Bool)

(declare-fun res!497607 () Bool)

(assert (=> b!739872 (=> (not res!497607) (not e!413706))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739872 (= res!497607 (validKeyInArray!0 (select (arr!19810 a!3186) j!159)))))

(declare-fun b!739873 () Bool)

(declare-fun Unit!25289 () Unit!25286)

(assert (=> b!739873 (= e!413704 Unit!25289)))

(assert (=> b!739873 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328643 (select (arr!19810 a!3186) j!159) a!3186 mask!3328) lt!328642)))

(declare-fun b!739874 () Bool)

(assert (=> b!739874 (= e!413707 true)))

(declare-fun lt!328637 () SeekEntryResult!7417)

(declare-fun lt!328636 () (_ BitVec 64))

(declare-fun lt!328646 () array!41400)

(assert (=> b!739874 (= lt!328637 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328643 lt!328636 lt!328646 mask!3328))))

(declare-fun b!739875 () Bool)

(declare-fun res!497619 () Bool)

(assert (=> b!739875 (=> (not res!497619) (not e!413708))))

(declare-datatypes ((List!13865 0))(
  ( (Nil!13862) (Cons!13861 (h!14933 (_ BitVec 64)) (t!20188 List!13865)) )
))
(declare-fun arrayNoDuplicates!0 (array!41400 (_ BitVec 32) List!13865) Bool)

(assert (=> b!739875 (= res!497619 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13862))))

(declare-fun b!739876 () Bool)

(declare-fun e!413709 () Bool)

(assert (=> b!739876 (= e!413714 e!413709)))

(declare-fun res!497622 () Bool)

(assert (=> b!739876 (=> (not res!497622) (not e!413709))))

(declare-fun lt!328635 () SeekEntryResult!7417)

(declare-fun lt!328634 () SeekEntryResult!7417)

(assert (=> b!739876 (= res!497622 (= lt!328635 lt!328634))))

(assert (=> b!739876 (= lt!328634 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328636 lt!328646 mask!3328))))

(assert (=> b!739876 (= lt!328635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328636 mask!3328) lt!328636 lt!328646 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!739876 (= lt!328636 (select (store (arr!19810 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!739876 (= lt!328646 (array!41401 (store (arr!19810 a!3186) i!1173 k0!2102) (size!20231 a!3186)))))

(declare-fun b!739877 () Bool)

(assert (=> b!739877 (= e!413711 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328643 (select (arr!19810 a!3186) j!159) a!3186 mask!3328) lt!328642)))))

(declare-fun b!739878 () Bool)

(assert (=> b!739878 (= e!413706 e!413708)))

(declare-fun res!497620 () Bool)

(assert (=> b!739878 (=> (not res!497620) (not e!413708))))

(declare-fun lt!328633 () SeekEntryResult!7417)

(assert (=> b!739878 (= res!497620 (or (= lt!328633 (MissingZero!7417 i!1173)) (= lt!328633 (MissingVacant!7417 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41400 (_ BitVec 32)) SeekEntryResult!7417)

(assert (=> b!739878 (= lt!328633 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!739879 () Bool)

(declare-fun res!497615 () Bool)

(assert (=> b!739879 (=> (not res!497615) (not e!413714))))

(declare-fun e!413710 () Bool)

(assert (=> b!739879 (= res!497615 e!413710)))

(declare-fun c!81512 () Bool)

(assert (=> b!739879 (= c!81512 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!328645 () SeekEntryResult!7417)

(declare-fun e!413713 () Bool)

(declare-fun b!739880 () Bool)

(assert (=> b!739880 (= e!413713 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19810 a!3186) j!159) a!3186 mask!3328) lt!328645))))

(declare-fun res!497621 () Bool)

(assert (=> start!65274 (=> (not res!497621) (not e!413706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65274 (= res!497621 (validMask!0 mask!3328))))

(assert (=> start!65274 e!413706))

(assert (=> start!65274 true))

(declare-fun array_inv!15584 (array!41400) Bool)

(assert (=> start!65274 (array_inv!15584 a!3186)))

(declare-fun b!739881 () Bool)

(declare-fun res!497606 () Bool)

(assert (=> b!739881 (=> (not res!497606) (not e!413714))))

(assert (=> b!739881 (= res!497606 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19810 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739882 () Bool)

(declare-fun e!413715 () Bool)

(assert (=> b!739882 (= e!413715 e!413713)))

(declare-fun res!497610 () Bool)

(assert (=> b!739882 (=> (not res!497610) (not e!413713))))

(assert (=> b!739882 (= res!497610 (= (seekEntryOrOpen!0 (select (arr!19810 a!3186) j!159) a!3186 mask!3328) lt!328645))))

(assert (=> b!739882 (= lt!328645 (Found!7417 j!159))))

(declare-fun b!739883 () Bool)

(assert (=> b!739883 (= e!413710 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19810 a!3186) j!159) a!3186 mask!3328) (Found!7417 j!159)))))

(declare-fun b!739884 () Bool)

(assert (=> b!739884 (= e!413711 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328643 resIntermediateIndex!5 (select (arr!19810 a!3186) j!159) a!3186 mask!3328) lt!328644)))))

(declare-fun b!739885 () Bool)

(assert (=> b!739885 (= e!413709 (not e!413705))))

(declare-fun res!497613 () Bool)

(assert (=> b!739885 (=> res!497613 e!413705)))

(get-info :version)

(assert (=> b!739885 (= res!497613 (or (not ((_ is Intermediate!7417) lt!328634)) (bvsge x!1131 (x!63048 lt!328634))))))

(assert (=> b!739885 (= lt!328644 (Found!7417 j!159))))

(assert (=> b!739885 e!413715))

(declare-fun res!497616 () Bool)

(assert (=> b!739885 (=> (not res!497616) (not e!413715))))

(assert (=> b!739885 (= res!497616 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328640 () Unit!25286)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41400 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25286)

(assert (=> b!739885 (= lt!328640 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739886 () Bool)

(declare-fun res!497612 () Bool)

(assert (=> b!739886 (=> (not res!497612) (not e!413706))))

(assert (=> b!739886 (= res!497612 (validKeyInArray!0 k0!2102))))

(declare-fun b!739887 () Bool)

(declare-fun res!497611 () Bool)

(assert (=> b!739887 (=> (not res!497611) (not e!413706))))

(declare-fun arrayContainsKey!0 (array!41400 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739887 (= res!497611 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739888 () Bool)

(declare-fun res!497608 () Bool)

(assert (=> b!739888 (=> (not res!497608) (not e!413708))))

(assert (=> b!739888 (= res!497608 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20231 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20231 a!3186))))))

(declare-fun b!739889 () Bool)

(assert (=> b!739889 (= e!413710 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19810 a!3186) j!159) a!3186 mask!3328) lt!328642))))

(assert (= (and start!65274 res!497621) b!739867))

(assert (= (and b!739867 res!497605) b!739872))

(assert (= (and b!739872 res!497607) b!739886))

(assert (= (and b!739886 res!497612) b!739887))

(assert (= (and b!739887 res!497611) b!739878))

(assert (= (and b!739878 res!497620) b!739869))

(assert (= (and b!739869 res!497618) b!739875))

(assert (= (and b!739875 res!497619) b!739888))

(assert (= (and b!739888 res!497608) b!739871))

(assert (= (and b!739871 res!497614) b!739881))

(assert (= (and b!739881 res!497606) b!739879))

(assert (= (and b!739879 c!81512) b!739889))

(assert (= (and b!739879 (not c!81512)) b!739883))

(assert (= (and b!739879 res!497615) b!739876))

(assert (= (and b!739876 res!497622) b!739885))

(assert (= (and b!739885 res!497616) b!739882))

(assert (= (and b!739882 res!497610) b!739880))

(assert (= (and b!739885 (not res!497613)) b!739868))

(assert (= (and b!739868 c!81513) b!739873))

(assert (= (and b!739868 (not c!81513)) b!739870))

(assert (= (and b!739868 (not res!497617)) b!739866))

(assert (= (and b!739866 c!81511) b!739877))

(assert (= (and b!739866 (not c!81511)) b!739884))

(assert (= (and b!739866 (not res!497609)) b!739874))

(declare-fun m!691207 () Bool)

(assert (=> b!739881 m!691207))

(declare-fun m!691209 () Bool)

(assert (=> b!739875 m!691209))

(declare-fun m!691211 () Bool)

(assert (=> start!65274 m!691211))

(declare-fun m!691213 () Bool)

(assert (=> start!65274 m!691213))

(declare-fun m!691215 () Bool)

(assert (=> b!739884 m!691215))

(assert (=> b!739884 m!691215))

(declare-fun m!691217 () Bool)

(assert (=> b!739884 m!691217))

(declare-fun m!691219 () Bool)

(assert (=> b!739876 m!691219))

(declare-fun m!691221 () Bool)

(assert (=> b!739876 m!691221))

(declare-fun m!691223 () Bool)

(assert (=> b!739876 m!691223))

(declare-fun m!691225 () Bool)

(assert (=> b!739876 m!691225))

(declare-fun m!691227 () Bool)

(assert (=> b!739876 m!691227))

(assert (=> b!739876 m!691219))

(assert (=> b!739883 m!691215))

(assert (=> b!739883 m!691215))

(declare-fun m!691229 () Bool)

(assert (=> b!739883 m!691229))

(declare-fun m!691231 () Bool)

(assert (=> b!739886 m!691231))

(assert (=> b!739880 m!691215))

(assert (=> b!739880 m!691215))

(declare-fun m!691233 () Bool)

(assert (=> b!739880 m!691233))

(declare-fun m!691235 () Bool)

(assert (=> b!739868 m!691235))

(declare-fun m!691237 () Bool)

(assert (=> b!739869 m!691237))

(declare-fun m!691239 () Bool)

(assert (=> b!739885 m!691239))

(declare-fun m!691241 () Bool)

(assert (=> b!739885 m!691241))

(assert (=> b!739870 m!691215))

(assert (=> b!739870 m!691215))

(assert (=> b!739870 m!691229))

(assert (=> b!739870 m!691215))

(assert (=> b!739870 m!691217))

(assert (=> b!739882 m!691215))

(assert (=> b!739882 m!691215))

(declare-fun m!691243 () Bool)

(assert (=> b!739882 m!691243))

(assert (=> b!739871 m!691215))

(assert (=> b!739871 m!691215))

(declare-fun m!691245 () Bool)

(assert (=> b!739871 m!691245))

(assert (=> b!739871 m!691245))

(assert (=> b!739871 m!691215))

(declare-fun m!691247 () Bool)

(assert (=> b!739871 m!691247))

(declare-fun m!691249 () Bool)

(assert (=> b!739887 m!691249))

(assert (=> b!739889 m!691215))

(assert (=> b!739889 m!691215))

(declare-fun m!691251 () Bool)

(assert (=> b!739889 m!691251))

(declare-fun m!691253 () Bool)

(assert (=> b!739874 m!691253))

(assert (=> b!739873 m!691215))

(assert (=> b!739873 m!691215))

(declare-fun m!691255 () Bool)

(assert (=> b!739873 m!691255))

(assert (=> b!739877 m!691215))

(assert (=> b!739877 m!691215))

(assert (=> b!739877 m!691255))

(assert (=> b!739872 m!691215))

(assert (=> b!739872 m!691215))

(declare-fun m!691257 () Bool)

(assert (=> b!739872 m!691257))

(declare-fun m!691259 () Bool)

(assert (=> b!739878 m!691259))

(check-sat (not b!739884) (not b!739880) (not b!739875) (not b!739886) (not b!739871) (not b!739876) (not start!65274) (not b!739883) (not b!739885) (not b!739877) (not b!739878) (not b!739869) (not b!739882) (not b!739889) (not b!739868) (not b!739872) (not b!739887) (not b!739870) (not b!739874) (not b!739873))
(check-sat)
