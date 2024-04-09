; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45648 () Bool)

(assert start!45648)

(declare-fun b!503002 () Bool)

(declare-fun res!304490 () Bool)

(declare-fun e!294594 () Bool)

(assert (=> b!503002 (=> res!304490 e!294594)))

(declare-datatypes ((SeekEntryResult!4033 0))(
  ( (MissingZero!4033 (index!18320 (_ BitVec 32))) (Found!4033 (index!18321 (_ BitVec 32))) (Intermediate!4033 (undefined!4845 Bool) (index!18322 (_ BitVec 32)) (x!47373 (_ BitVec 32))) (Undefined!4033) (MissingVacant!4033 (index!18323 (_ BitVec 32))) )
))
(declare-fun lt!228835 () SeekEntryResult!4033)

(get-info :version)

(assert (=> b!503002 (= res!304490 (or (undefined!4845 lt!228835) (not ((_ is Intermediate!4033) lt!228835))))))

(declare-fun b!503003 () Bool)

(declare-fun e!294595 () Bool)

(assert (=> b!503003 (= e!294595 (not e!294594))))

(declare-fun res!304489 () Bool)

(assert (=> b!503003 (=> res!304489 e!294594)))

(declare-fun lt!228831 () (_ BitVec 64))

(declare-datatypes ((array!32364 0))(
  ( (array!32365 (arr!15559 (Array (_ BitVec 32) (_ BitVec 64))) (size!15923 (_ BitVec 32))) )
))
(declare-fun lt!228832 () array!32364)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!228833 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32364 (_ BitVec 32)) SeekEntryResult!4033)

(assert (=> b!503003 (= res!304489 (= lt!228835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228833 lt!228831 lt!228832 mask!3524)))))

(declare-fun a!3235 () array!32364)

(declare-fun lt!228830 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!503003 (= lt!228835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228830 (select (arr!15559 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503003 (= lt!228833 (toIndex!0 lt!228831 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503003 (= lt!228831 (select (store (arr!15559 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!503003 (= lt!228830 (toIndex!0 (select (arr!15559 a!3235) j!176) mask!3524))))

(assert (=> b!503003 (= lt!228832 (array!32365 (store (arr!15559 a!3235) i!1204 k0!2280) (size!15923 a!3235)))))

(declare-fun e!294588 () Bool)

(assert (=> b!503003 e!294588))

(declare-fun res!304488 () Bool)

(assert (=> b!503003 (=> (not res!304488) (not e!294588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32364 (_ BitVec 32)) Bool)

(assert (=> b!503003 (= res!304488 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15222 0))(
  ( (Unit!15223) )
))
(declare-fun lt!228837 () Unit!15222)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32364 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15222)

(assert (=> b!503003 (= lt!228837 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503004 () Bool)

(declare-fun res!304484 () Bool)

(declare-fun e!294593 () Bool)

(assert (=> b!503004 (=> res!304484 e!294593)))

(declare-fun e!294592 () Bool)

(assert (=> b!503004 (= res!304484 e!294592)))

(declare-fun res!304481 () Bool)

(assert (=> b!503004 (=> (not res!304481) (not e!294592))))

(assert (=> b!503004 (= res!304481 (bvsgt #b00000000000000000000000000000000 (x!47373 lt!228835)))))

(declare-fun b!503005 () Bool)

(declare-fun e!294589 () Unit!15222)

(declare-fun Unit!15224 () Unit!15222)

(assert (=> b!503005 (= e!294589 Unit!15224)))

(declare-fun b!503006 () Bool)

(declare-fun res!304480 () Bool)

(declare-fun e!294590 () Bool)

(assert (=> b!503006 (=> (not res!304480) (not e!294590))))

(assert (=> b!503006 (= res!304480 (and (= (size!15923 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15923 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15923 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503007 () Bool)

(declare-fun res!304482 () Bool)

(assert (=> b!503007 (=> (not res!304482) (not e!294590))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503007 (= res!304482 (validKeyInArray!0 (select (arr!15559 a!3235) j!176)))))

(declare-fun b!503008 () Bool)

(assert (=> b!503008 (= e!294590 e!294595)))

(declare-fun res!304485 () Bool)

(assert (=> b!503008 (=> (not res!304485) (not e!294595))))

(declare-fun lt!228836 () SeekEntryResult!4033)

(assert (=> b!503008 (= res!304485 (or (= lt!228836 (MissingZero!4033 i!1204)) (= lt!228836 (MissingVacant!4033 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32364 (_ BitVec 32)) SeekEntryResult!4033)

(assert (=> b!503008 (= lt!228836 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!503009 () Bool)

(declare-fun e!294591 () Bool)

(assert (=> b!503009 (= e!294591 false)))

(declare-fun b!503010 () Bool)

(declare-fun res!304486 () Bool)

(assert (=> b!503010 (=> (not res!304486) (not e!294595))))

(assert (=> b!503010 (= res!304486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503011 () Bool)

(declare-fun res!304492 () Bool)

(assert (=> b!503011 (=> (not res!304492) (not e!294595))))

(declare-datatypes ((List!9770 0))(
  ( (Nil!9767) (Cons!9766 (h!10643 (_ BitVec 64)) (t!16006 List!9770)) )
))
(declare-fun arrayNoDuplicates!0 (array!32364 (_ BitVec 32) List!9770) Bool)

(assert (=> b!503011 (= res!304492 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9767))))

(declare-fun b!503012 () Bool)

(assert (=> b!503012 (= e!294588 (= (seekEntryOrOpen!0 (select (arr!15559 a!3235) j!176) a!3235 mask!3524) (Found!4033 j!176)))))

(declare-fun b!503014 () Bool)

(declare-fun res!304491 () Bool)

(assert (=> b!503014 (=> (not res!304491) (not e!294590))))

(declare-fun arrayContainsKey!0 (array!32364 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503014 (= res!304491 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503015 () Bool)

(declare-fun Unit!15225 () Unit!15222)

(assert (=> b!503015 (= e!294589 Unit!15225)))

(declare-fun lt!228839 () Unit!15222)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32364 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15222)

(assert (=> b!503015 (= lt!228839 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228830 #b00000000000000000000000000000000 (index!18322 lt!228835) (x!47373 lt!228835) mask!3524))))

(declare-fun res!304483 () Bool)

(assert (=> b!503015 (= res!304483 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228830 lt!228831 lt!228832 mask!3524) (Intermediate!4033 false (index!18322 lt!228835) (x!47373 lt!228835))))))

(assert (=> b!503015 (=> (not res!304483) (not e!294591))))

(assert (=> b!503015 e!294591))

(declare-fun b!503016 () Bool)

(assert (=> b!503016 (= e!294593 true)))

(declare-fun lt!228838 () SeekEntryResult!4033)

(assert (=> b!503016 (= lt!228838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228830 lt!228831 lt!228832 mask!3524))))

(declare-fun b!503017 () Bool)

(declare-fun res!304487 () Bool)

(assert (=> b!503017 (=> (not res!304487) (not e!294590))))

(assert (=> b!503017 (= res!304487 (validKeyInArray!0 k0!2280))))

(declare-fun b!503018 () Bool)

(assert (=> b!503018 (= e!294594 e!294593)))

(declare-fun res!304493 () Bool)

(assert (=> b!503018 (=> res!304493 e!294593)))

(assert (=> b!503018 (= res!304493 (or (bvsgt (x!47373 lt!228835) #b01111111111111111111111111111110) (bvslt lt!228830 #b00000000000000000000000000000000) (bvsge lt!228830 (size!15923 a!3235)) (bvslt (index!18322 lt!228835) #b00000000000000000000000000000000) (bvsge (index!18322 lt!228835) (size!15923 a!3235)) (not (= lt!228835 (Intermediate!4033 false (index!18322 lt!228835) (x!47373 lt!228835))))))))

(assert (=> b!503018 (= (index!18322 lt!228835) i!1204)))

(declare-fun lt!228829 () Unit!15222)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32364 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15222)

(assert (=> b!503018 (= lt!228829 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228830 #b00000000000000000000000000000000 (index!18322 lt!228835) (x!47373 lt!228835) mask!3524))))

(assert (=> b!503018 (and (or (= (select (arr!15559 a!3235) (index!18322 lt!228835)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15559 a!3235) (index!18322 lt!228835)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15559 a!3235) (index!18322 lt!228835)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15559 a!3235) (index!18322 lt!228835)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228834 () Unit!15222)

(assert (=> b!503018 (= lt!228834 e!294589)))

(declare-fun c!59540 () Bool)

(assert (=> b!503018 (= c!59540 (= (select (arr!15559 a!3235) (index!18322 lt!228835)) (select (arr!15559 a!3235) j!176)))))

(assert (=> b!503018 (and (bvslt (x!47373 lt!228835) #b01111111111111111111111111111110) (or (= (select (arr!15559 a!3235) (index!18322 lt!228835)) (select (arr!15559 a!3235) j!176)) (= (select (arr!15559 a!3235) (index!18322 lt!228835)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15559 a!3235) (index!18322 lt!228835)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!304479 () Bool)

(assert (=> start!45648 (=> (not res!304479) (not e!294590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45648 (= res!304479 (validMask!0 mask!3524))))

(assert (=> start!45648 e!294590))

(assert (=> start!45648 true))

(declare-fun array_inv!11333 (array!32364) Bool)

(assert (=> start!45648 (array_inv!11333 a!3235)))

(declare-fun b!503013 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32364 (_ BitVec 32)) SeekEntryResult!4033)

(assert (=> b!503013 (= e!294592 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228830 (index!18322 lt!228835) (select (arr!15559 a!3235) j!176) a!3235 mask!3524) (Found!4033 j!176))))))

(assert (= (and start!45648 res!304479) b!503006))

(assert (= (and b!503006 res!304480) b!503007))

(assert (= (and b!503007 res!304482) b!503017))

(assert (= (and b!503017 res!304487) b!503014))

(assert (= (and b!503014 res!304491) b!503008))

(assert (= (and b!503008 res!304485) b!503010))

(assert (= (and b!503010 res!304486) b!503011))

(assert (= (and b!503011 res!304492) b!503003))

(assert (= (and b!503003 res!304488) b!503012))

(assert (= (and b!503003 (not res!304489)) b!503002))

(assert (= (and b!503002 (not res!304490)) b!503018))

(assert (= (and b!503018 c!59540) b!503015))

(assert (= (and b!503018 (not c!59540)) b!503005))

(assert (= (and b!503015 res!304483) b!503009))

(assert (= (and b!503018 (not res!304493)) b!503004))

(assert (= (and b!503004 res!304481) b!503013))

(assert (= (and b!503004 (not res!304484)) b!503016))

(declare-fun m!483899 () Bool)

(assert (=> b!503014 m!483899))

(declare-fun m!483901 () Bool)

(assert (=> b!503015 m!483901))

(declare-fun m!483903 () Bool)

(assert (=> b!503015 m!483903))

(declare-fun m!483905 () Bool)

(assert (=> b!503018 m!483905))

(declare-fun m!483907 () Bool)

(assert (=> b!503018 m!483907))

(declare-fun m!483909 () Bool)

(assert (=> b!503018 m!483909))

(assert (=> b!503013 m!483909))

(assert (=> b!503013 m!483909))

(declare-fun m!483911 () Bool)

(assert (=> b!503013 m!483911))

(declare-fun m!483913 () Bool)

(assert (=> start!45648 m!483913))

(declare-fun m!483915 () Bool)

(assert (=> start!45648 m!483915))

(assert (=> b!503007 m!483909))

(assert (=> b!503007 m!483909))

(declare-fun m!483917 () Bool)

(assert (=> b!503007 m!483917))

(declare-fun m!483919 () Bool)

(assert (=> b!503011 m!483919))

(declare-fun m!483921 () Bool)

(assert (=> b!503010 m!483921))

(assert (=> b!503003 m!483909))

(declare-fun m!483923 () Bool)

(assert (=> b!503003 m!483923))

(declare-fun m!483925 () Bool)

(assert (=> b!503003 m!483925))

(declare-fun m!483927 () Bool)

(assert (=> b!503003 m!483927))

(declare-fun m!483929 () Bool)

(assert (=> b!503003 m!483929))

(assert (=> b!503003 m!483909))

(declare-fun m!483931 () Bool)

(assert (=> b!503003 m!483931))

(assert (=> b!503003 m!483909))

(declare-fun m!483933 () Bool)

(assert (=> b!503003 m!483933))

(declare-fun m!483935 () Bool)

(assert (=> b!503003 m!483935))

(declare-fun m!483937 () Bool)

(assert (=> b!503003 m!483937))

(declare-fun m!483939 () Bool)

(assert (=> b!503017 m!483939))

(declare-fun m!483941 () Bool)

(assert (=> b!503008 m!483941))

(assert (=> b!503012 m!483909))

(assert (=> b!503012 m!483909))

(declare-fun m!483943 () Bool)

(assert (=> b!503012 m!483943))

(assert (=> b!503016 m!483903))

(check-sat (not b!503010) (not b!503017) (not b!503015) (not b!503012) (not b!503008) (not start!45648) (not b!503011) (not b!503003) (not b!503013) (not b!503016) (not b!503018) (not b!503014) (not b!503007))
(check-sat)
