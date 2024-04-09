; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44760 () Bool)

(assert start!44760)

(declare-fun b!491031 () Bool)

(declare-fun e!288555 () Bool)

(declare-fun e!288554 () Bool)

(assert (=> b!491031 (= e!288555 e!288554)))

(declare-fun res!294118 () Bool)

(assert (=> b!491031 (=> (not res!294118) (not e!288554))))

(declare-datatypes ((SeekEntryResult!3748 0))(
  ( (MissingZero!3748 (index!17171 (_ BitVec 32))) (Found!3748 (index!17172 (_ BitVec 32))) (Intermediate!3748 (undefined!4560 Bool) (index!17173 (_ BitVec 32)) (x!46289 (_ BitVec 32))) (Undefined!3748) (MissingVacant!3748 (index!17174 (_ BitVec 32))) )
))
(declare-fun lt!221976 () SeekEntryResult!3748)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!491031 (= res!294118 (or (= lt!221976 (MissingZero!3748 i!1204)) (= lt!221976 (MissingVacant!3748 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31779 0))(
  ( (array!31780 (arr!15274 (Array (_ BitVec 32) (_ BitVec 64))) (size!15638 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31779)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31779 (_ BitVec 32)) SeekEntryResult!3748)

(assert (=> b!491031 (= lt!221976 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!294124 () Bool)

(assert (=> start!44760 (=> (not res!294124) (not e!288555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44760 (= res!294124 (validMask!0 mask!3524))))

(assert (=> start!44760 e!288555))

(assert (=> start!44760 true))

(declare-fun array_inv!11048 (array!31779) Bool)

(assert (=> start!44760 (array_inv!11048 a!3235)))

(declare-fun b!491032 () Bool)

(declare-fun res!294119 () Bool)

(assert (=> b!491032 (=> (not res!294119) (not e!288554))))

(declare-datatypes ((List!9485 0))(
  ( (Nil!9482) (Cons!9481 (h!10343 (_ BitVec 64)) (t!15721 List!9485)) )
))
(declare-fun arrayNoDuplicates!0 (array!31779 (_ BitVec 32) List!9485) Bool)

(assert (=> b!491032 (= res!294119 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9482))))

(declare-fun b!491033 () Bool)

(declare-fun res!294121 () Bool)

(assert (=> b!491033 (=> (not res!294121) (not e!288554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31779 (_ BitVec 32)) Bool)

(assert (=> b!491033 (= res!294121 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!491034 () Bool)

(declare-fun e!288556 () Bool)

(assert (=> b!491034 (= e!288556 (bvsge mask!3524 #b00000000000000000000000000000000))))

(declare-fun lt!221977 () SeekEntryResult!3748)

(declare-fun lt!221974 () (_ BitVec 64))

(declare-fun lt!221973 () array!31779)

(assert (=> b!491034 (= lt!221977 (seekEntryOrOpen!0 lt!221974 lt!221973 mask!3524))))

(declare-datatypes ((Unit!14434 0))(
  ( (Unit!14435) )
))
(declare-fun lt!221978 () Unit!14434)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 (array!31779 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!14434)

(assert (=> b!491034 (= lt!221978 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey1!0 a!3235 i!1204 k0!2280 j!176 mask!3524))))

(declare-fun b!491035 () Bool)

(declare-fun res!294125 () Bool)

(assert (=> b!491035 (=> (not res!294125) (not e!288555))))

(assert (=> b!491035 (= res!294125 (and (= (size!15638 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15638 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15638 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!491036 () Bool)

(assert (=> b!491036 (= e!288554 (not e!288556))))

(declare-fun res!294120 () Bool)

(assert (=> b!491036 (=> res!294120 e!288556)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31779 (_ BitVec 32)) SeekEntryResult!3748)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!491036 (= res!294120 (not (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15274 a!3235) j!176) mask!3524) (select (arr!15274 a!3235) j!176) a!3235 mask!3524) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!221974 mask!3524) lt!221974 lt!221973 mask!3524))))))

(assert (=> b!491036 (= lt!221974 (select (store (arr!15274 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!491036 (= lt!221973 (array!31780 (store (arr!15274 a!3235) i!1204 k0!2280) (size!15638 a!3235)))))

(assert (=> b!491036 (= lt!221977 (Found!3748 j!176))))

(assert (=> b!491036 (= lt!221977 (seekEntryOrOpen!0 (select (arr!15274 a!3235) j!176) a!3235 mask!3524))))

(assert (=> b!491036 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!221975 () Unit!14434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14434)

(assert (=> b!491036 (= lt!221975 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!491037 () Bool)

(declare-fun res!294122 () Bool)

(assert (=> b!491037 (=> (not res!294122) (not e!288555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!491037 (= res!294122 (validKeyInArray!0 (select (arr!15274 a!3235) j!176)))))

(declare-fun b!491038 () Bool)

(declare-fun res!294117 () Bool)

(assert (=> b!491038 (=> (not res!294117) (not e!288555))))

(assert (=> b!491038 (= res!294117 (validKeyInArray!0 k0!2280))))

(declare-fun b!491039 () Bool)

(declare-fun res!294123 () Bool)

(assert (=> b!491039 (=> (not res!294123) (not e!288555))))

(declare-fun arrayContainsKey!0 (array!31779 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!491039 (= res!294123 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!44760 res!294124) b!491035))

(assert (= (and b!491035 res!294125) b!491037))

(assert (= (and b!491037 res!294122) b!491038))

(assert (= (and b!491038 res!294117) b!491039))

(assert (= (and b!491039 res!294123) b!491031))

(assert (= (and b!491031 res!294118) b!491033))

(assert (= (and b!491033 res!294121) b!491032))

(assert (= (and b!491032 res!294119) b!491036))

(assert (= (and b!491036 (not res!294120)) b!491034))

(declare-fun m!471545 () Bool)

(assert (=> start!44760 m!471545))

(declare-fun m!471547 () Bool)

(assert (=> start!44760 m!471547))

(declare-fun m!471549 () Bool)

(assert (=> b!491039 m!471549))

(declare-fun m!471551 () Bool)

(assert (=> b!491038 m!471551))

(declare-fun m!471553 () Bool)

(assert (=> b!491033 m!471553))

(declare-fun m!471555 () Bool)

(assert (=> b!491032 m!471555))

(declare-fun m!471557 () Bool)

(assert (=> b!491034 m!471557))

(declare-fun m!471559 () Bool)

(assert (=> b!491034 m!471559))

(declare-fun m!471561 () Bool)

(assert (=> b!491036 m!471561))

(assert (=> b!491036 m!471561))

(declare-fun m!471563 () Bool)

(assert (=> b!491036 m!471563))

(declare-fun m!471565 () Bool)

(assert (=> b!491036 m!471565))

(declare-fun m!471567 () Bool)

(assert (=> b!491036 m!471567))

(declare-fun m!471569 () Bool)

(assert (=> b!491036 m!471569))

(declare-fun m!471571 () Bool)

(assert (=> b!491036 m!471571))

(declare-fun m!471573 () Bool)

(assert (=> b!491036 m!471573))

(declare-fun m!471575 () Bool)

(assert (=> b!491036 m!471575))

(assert (=> b!491036 m!471573))

(assert (=> b!491036 m!471571))

(assert (=> b!491036 m!471573))

(declare-fun m!471577 () Bool)

(assert (=> b!491036 m!471577))

(assert (=> b!491036 m!471573))

(declare-fun m!471579 () Bool)

(assert (=> b!491036 m!471579))

(declare-fun m!471581 () Bool)

(assert (=> b!491031 m!471581))

(assert (=> b!491037 m!471573))

(assert (=> b!491037 m!471573))

(declare-fun m!471583 () Bool)

(assert (=> b!491037 m!471583))

(check-sat (not b!491033) (not b!491038) (not b!491034) (not b!491032) (not b!491036) (not b!491037) (not start!44760) (not b!491031) (not b!491039))
(check-sat)
