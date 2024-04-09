; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64758 () Bool)

(assert start!64758)

(declare-fun b!730613 () Bool)

(declare-fun e!408874 () Bool)

(declare-fun e!408872 () Bool)

(assert (=> b!730613 (= e!408874 e!408872)))

(declare-fun res!491020 () Bool)

(assert (=> b!730613 (=> res!491020 e!408872)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730613 (= res!491020 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!323786 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730613 (= lt!323786 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730614 () Bool)

(declare-fun res!491028 () Bool)

(declare-fun e!408871 () Bool)

(assert (=> b!730614 (=> (not res!491028) (not e!408871))))

(declare-datatypes ((array!41160 0))(
  ( (array!41161 (arr!19696 (Array (_ BitVec 32) (_ BitVec 64))) (size!20117 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41160)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730614 (= res!491028 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730615 () Bool)

(declare-fun res!491026 () Bool)

(declare-fun e!408876 () Bool)

(assert (=> b!730615 (=> (not res!491026) (not e!408876))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!730615 (= res!491026 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19696 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730616 () Bool)

(declare-fun res!491016 () Bool)

(declare-fun e!408879 () Bool)

(assert (=> b!730616 (=> (not res!491016) (not e!408879))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41160 (_ BitVec 32)) Bool)

(assert (=> b!730616 (= res!491016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!730617 () Bool)

(declare-fun res!491013 () Bool)

(assert (=> b!730617 (=> (not res!491013) (not e!408871))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730617 (= res!491013 (validKeyInArray!0 (select (arr!19696 a!3186) j!159)))))

(declare-fun b!730618 () Bool)

(declare-fun e!408873 () Bool)

(declare-datatypes ((SeekEntryResult!7303 0))(
  ( (MissingZero!7303 (index!31579 (_ BitVec 32))) (Found!7303 (index!31580 (_ BitVec 32))) (Intermediate!7303 (undefined!8115 Bool) (index!31581 (_ BitVec 32)) (x!62582 (_ BitVec 32))) (Undefined!7303) (MissingVacant!7303 (index!31582 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41160 (_ BitVec 32)) SeekEntryResult!7303)

(assert (=> b!730618 (= e!408873 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19696 a!3186) j!159) a!3186 mask!3328) (Found!7303 j!159)))))

(declare-fun b!730619 () Bool)

(declare-fun res!491024 () Bool)

(assert (=> b!730619 (=> (not res!491024) (not e!408879))))

(declare-datatypes ((List!13751 0))(
  ( (Nil!13748) (Cons!13747 (h!14807 (_ BitVec 64)) (t!20074 List!13751)) )
))
(declare-fun arrayNoDuplicates!0 (array!41160 (_ BitVec 32) List!13751) Bool)

(assert (=> b!730619 (= res!491024 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13748))))

(declare-fun b!730620 () Bool)

(declare-fun res!491027 () Bool)

(assert (=> b!730620 (=> (not res!491027) (not e!408876))))

(assert (=> b!730620 (= res!491027 e!408873)))

(declare-fun c!80175 () Bool)

(assert (=> b!730620 (= c!80175 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730621 () Bool)

(assert (=> b!730621 (= e!408879 e!408876)))

(declare-fun res!491017 () Bool)

(assert (=> b!730621 (=> (not res!491017) (not e!408876))))

(declare-fun lt!323778 () SeekEntryResult!7303)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41160 (_ BitVec 32)) SeekEntryResult!7303)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730621 (= res!491017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19696 a!3186) j!159) mask!3328) (select (arr!19696 a!3186) j!159) a!3186 mask!3328) lt!323778))))

(assert (=> b!730621 (= lt!323778 (Intermediate!7303 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730622 () Bool)

(declare-fun e!408875 () Bool)

(assert (=> b!730622 (= e!408875 (not e!408874))))

(declare-fun res!491022 () Bool)

(assert (=> b!730622 (=> res!491022 e!408874)))

(declare-fun lt!323783 () SeekEntryResult!7303)

(get-info :version)

(assert (=> b!730622 (= res!491022 (or (not ((_ is Intermediate!7303) lt!323783)) (bvsge x!1131 (x!62582 lt!323783))))))

(declare-fun e!408877 () Bool)

(assert (=> b!730622 e!408877))

(declare-fun res!491023 () Bool)

(assert (=> b!730622 (=> (not res!491023) (not e!408877))))

(assert (=> b!730622 (= res!491023 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24924 0))(
  ( (Unit!24925) )
))
(declare-fun lt!323779 () Unit!24924)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41160 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24924)

(assert (=> b!730622 (= lt!323779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun res!491021 () Bool)

(assert (=> start!64758 (=> (not res!491021) (not e!408871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64758 (= res!491021 (validMask!0 mask!3328))))

(assert (=> start!64758 e!408871))

(assert (=> start!64758 true))

(declare-fun array_inv!15470 (array!41160) Bool)

(assert (=> start!64758 (array_inv!15470 a!3186)))

(declare-fun b!730623 () Bool)

(assert (=> b!730623 (= e!408876 e!408875)))

(declare-fun res!491019 () Bool)

(assert (=> b!730623 (=> (not res!491019) (not e!408875))))

(declare-fun lt!323781 () SeekEntryResult!7303)

(assert (=> b!730623 (= res!491019 (= lt!323781 lt!323783))))

(declare-fun lt!323780 () (_ BitVec 64))

(declare-fun lt!323785 () array!41160)

(assert (=> b!730623 (= lt!323783 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323780 lt!323785 mask!3328))))

(assert (=> b!730623 (= lt!323781 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323780 mask!3328) lt!323780 lt!323785 mask!3328))))

(assert (=> b!730623 (= lt!323780 (select (store (arr!19696 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!730623 (= lt!323785 (array!41161 (store (arr!19696 a!3186) i!1173 k0!2102) (size!20117 a!3186)))))

(declare-fun b!730624 () Bool)

(declare-fun res!491012 () Bool)

(assert (=> b!730624 (=> (not res!491012) (not e!408871))))

(assert (=> b!730624 (= res!491012 (and (= (size!20117 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20117 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20117 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!730625 () Bool)

(assert (=> b!730625 (= e!408873 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19696 a!3186) j!159) a!3186 mask!3328) lt!323778))))

(declare-fun b!730626 () Bool)

(assert (=> b!730626 (= e!408871 e!408879)))

(declare-fun res!491018 () Bool)

(assert (=> b!730626 (=> (not res!491018) (not e!408879))))

(declare-fun lt!323777 () SeekEntryResult!7303)

(assert (=> b!730626 (= res!491018 (or (= lt!323777 (MissingZero!7303 i!1173)) (= lt!323777 (MissingVacant!7303 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41160 (_ BitVec 32)) SeekEntryResult!7303)

(assert (=> b!730626 (= lt!323777 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!730627 () Bool)

(assert (=> b!730627 (= e!408872 true)))

(declare-fun lt!323782 () SeekEntryResult!7303)

(assert (=> b!730627 (= lt!323782 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19696 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!730628 () Bool)

(declare-fun res!491025 () Bool)

(assert (=> b!730628 (=> (not res!491025) (not e!408879))))

(assert (=> b!730628 (= res!491025 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20117 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20117 a!3186))))))

(declare-fun e!408878 () Bool)

(declare-fun lt!323784 () SeekEntryResult!7303)

(declare-fun b!730629 () Bool)

(assert (=> b!730629 (= e!408878 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19696 a!3186) j!159) a!3186 mask!3328) lt!323784))))

(declare-fun b!730630 () Bool)

(assert (=> b!730630 (= e!408877 e!408878)))

(declare-fun res!491014 () Bool)

(assert (=> b!730630 (=> (not res!491014) (not e!408878))))

(assert (=> b!730630 (= res!491014 (= (seekEntryOrOpen!0 (select (arr!19696 a!3186) j!159) a!3186 mask!3328) lt!323784))))

(assert (=> b!730630 (= lt!323784 (Found!7303 j!159))))

(declare-fun b!730631 () Bool)

(declare-fun res!491015 () Bool)

(assert (=> b!730631 (=> (not res!491015) (not e!408871))))

(assert (=> b!730631 (= res!491015 (validKeyInArray!0 k0!2102))))

(assert (= (and start!64758 res!491021) b!730624))

(assert (= (and b!730624 res!491012) b!730617))

(assert (= (and b!730617 res!491013) b!730631))

(assert (= (and b!730631 res!491015) b!730614))

(assert (= (and b!730614 res!491028) b!730626))

(assert (= (and b!730626 res!491018) b!730616))

(assert (= (and b!730616 res!491016) b!730619))

(assert (= (and b!730619 res!491024) b!730628))

(assert (= (and b!730628 res!491025) b!730621))

(assert (= (and b!730621 res!491017) b!730615))

(assert (= (and b!730615 res!491026) b!730620))

(assert (= (and b!730620 c!80175) b!730625))

(assert (= (and b!730620 (not c!80175)) b!730618))

(assert (= (and b!730620 res!491027) b!730623))

(assert (= (and b!730623 res!491019) b!730622))

(assert (= (and b!730622 res!491023) b!730630))

(assert (= (and b!730630 res!491014) b!730629))

(assert (= (and b!730622 (not res!491022)) b!730613))

(assert (= (and b!730613 (not res!491020)) b!730627))

(declare-fun m!684205 () Bool)

(assert (=> b!730630 m!684205))

(assert (=> b!730630 m!684205))

(declare-fun m!684207 () Bool)

(assert (=> b!730630 m!684207))

(declare-fun m!684209 () Bool)

(assert (=> b!730626 m!684209))

(declare-fun m!684211 () Bool)

(assert (=> start!64758 m!684211))

(declare-fun m!684213 () Bool)

(assert (=> start!64758 m!684213))

(declare-fun m!684215 () Bool)

(assert (=> b!730616 m!684215))

(declare-fun m!684217 () Bool)

(assert (=> b!730631 m!684217))

(assert (=> b!730617 m!684205))

(assert (=> b!730617 m!684205))

(declare-fun m!684219 () Bool)

(assert (=> b!730617 m!684219))

(declare-fun m!684221 () Bool)

(assert (=> b!730622 m!684221))

(declare-fun m!684223 () Bool)

(assert (=> b!730622 m!684223))

(declare-fun m!684225 () Bool)

(assert (=> b!730615 m!684225))

(assert (=> b!730625 m!684205))

(assert (=> b!730625 m!684205))

(declare-fun m!684227 () Bool)

(assert (=> b!730625 m!684227))

(assert (=> b!730618 m!684205))

(assert (=> b!730618 m!684205))

(declare-fun m!684229 () Bool)

(assert (=> b!730618 m!684229))

(assert (=> b!730629 m!684205))

(assert (=> b!730629 m!684205))

(declare-fun m!684231 () Bool)

(assert (=> b!730629 m!684231))

(declare-fun m!684233 () Bool)

(assert (=> b!730614 m!684233))

(declare-fun m!684235 () Bool)

(assert (=> b!730623 m!684235))

(declare-fun m!684237 () Bool)

(assert (=> b!730623 m!684237))

(declare-fun m!684239 () Bool)

(assert (=> b!730623 m!684239))

(declare-fun m!684241 () Bool)

(assert (=> b!730623 m!684241))

(declare-fun m!684243 () Bool)

(assert (=> b!730623 m!684243))

(assert (=> b!730623 m!684235))

(assert (=> b!730627 m!684205))

(assert (=> b!730627 m!684205))

(assert (=> b!730627 m!684229))

(declare-fun m!684245 () Bool)

(assert (=> b!730613 m!684245))

(declare-fun m!684247 () Bool)

(assert (=> b!730619 m!684247))

(assert (=> b!730621 m!684205))

(assert (=> b!730621 m!684205))

(declare-fun m!684249 () Bool)

(assert (=> b!730621 m!684249))

(assert (=> b!730621 m!684249))

(assert (=> b!730621 m!684205))

(declare-fun m!684251 () Bool)

(assert (=> b!730621 m!684251))

(check-sat (not b!730623) (not b!730625) (not b!730630) (not b!730613) (not b!730626) (not start!64758) (not b!730627) (not b!730619) (not b!730631) (not b!730618) (not b!730629) (not b!730622) (not b!730614) (not b!730621) (not b!730616) (not b!730617))
(check-sat)
