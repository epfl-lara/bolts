; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45846 () Bool)

(assert start!45846)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32562 0))(
  ( (array!32563 (arr!15658 (Array (_ BitVec 32) (_ BitVec 64))) (size!16022 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32562)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!507382 () Bool)

(declare-fun e!296933 () Bool)

(declare-datatypes ((SeekEntryResult!4132 0))(
  ( (MissingZero!4132 (index!18716 (_ BitVec 32))) (Found!4132 (index!18717 (_ BitVec 32))) (Intermediate!4132 (undefined!4944 Bool) (index!18718 (_ BitVec 32)) (x!47736 (_ BitVec 32))) (Undefined!4132) (MissingVacant!4132 (index!18719 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32562 (_ BitVec 32)) SeekEntryResult!4132)

(assert (=> b!507382 (= e!296933 (= (seekEntryOrOpen!0 (select (arr!15658 a!3235) j!176) a!3235 mask!3524) (Found!4132 j!176)))))

(declare-fun b!507383 () Bool)

(declare-fun e!296932 () Bool)

(declare-fun e!296934 () Bool)

(assert (=> b!507383 (= e!296932 e!296934)))

(declare-fun res!308499 () Bool)

(assert (=> b!507383 (=> (not res!308499) (not e!296934))))

(declare-fun lt!231798 () SeekEntryResult!4132)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507383 (= res!308499 (or (= lt!231798 (MissingZero!4132 i!1204)) (= lt!231798 (MissingVacant!4132 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!507383 (= lt!231798 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!507384 () Bool)

(declare-fun res!308491 () Bool)

(assert (=> b!507384 (=> (not res!308491) (not e!296932))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507384 (= res!308491 (validKeyInArray!0 k0!2280))))

(declare-fun res!308497 () Bool)

(assert (=> start!45846 (=> (not res!308497) (not e!296932))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45846 (= res!308497 (validMask!0 mask!3524))))

(assert (=> start!45846 e!296932))

(assert (=> start!45846 true))

(declare-fun array_inv!11432 (array!32562) Bool)

(assert (=> start!45846 (array_inv!11432 a!3235)))

(declare-fun b!507385 () Bool)

(declare-fun res!308495 () Bool)

(assert (=> b!507385 (=> (not res!308495) (not e!296932))))

(declare-fun arrayContainsKey!0 (array!32562 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507385 (= res!308495 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507386 () Bool)

(declare-fun res!308496 () Bool)

(assert (=> b!507386 (=> (not res!308496) (not e!296934))))

(declare-datatypes ((List!9869 0))(
  ( (Nil!9866) (Cons!9865 (h!10742 (_ BitVec 64)) (t!16105 List!9869)) )
))
(declare-fun arrayNoDuplicates!0 (array!32562 (_ BitVec 32) List!9869) Bool)

(assert (=> b!507386 (= res!308496 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9866))))

(declare-fun b!507387 () Bool)

(declare-fun res!308500 () Bool)

(assert (=> b!507387 (=> (not res!308500) (not e!296932))))

(assert (=> b!507387 (= res!308500 (validKeyInArray!0 (select (arr!15658 a!3235) j!176)))))

(declare-fun b!507388 () Bool)

(declare-fun e!296935 () Bool)

(declare-fun e!296931 () Bool)

(assert (=> b!507388 (= e!296935 e!296931)))

(declare-fun res!308501 () Bool)

(assert (=> b!507388 (=> res!308501 e!296931)))

(declare-fun lt!231805 () Bool)

(declare-fun lt!231800 () SeekEntryResult!4132)

(assert (=> b!507388 (= res!308501 (or (and (not lt!231805) (undefined!4944 lt!231800)) (and (not lt!231805) (not (undefined!4944 lt!231800)))))))

(get-info :version)

(assert (=> b!507388 (= lt!231805 (not ((_ is Intermediate!4132) lt!231800)))))

(declare-fun b!507389 () Bool)

(declare-fun res!308498 () Bool)

(assert (=> b!507389 (=> (not res!308498) (not e!296934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32562 (_ BitVec 32)) Bool)

(assert (=> b!507389 (= res!308498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507390 () Bool)

(assert (=> b!507390 (= e!296934 (not e!296935))))

(declare-fun res!308494 () Bool)

(assert (=> b!507390 (=> res!308494 e!296935)))

(declare-fun lt!231799 () (_ BitVec 32))

(declare-fun lt!231806 () array!32562)

(declare-fun lt!231804 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32562 (_ BitVec 32)) SeekEntryResult!4132)

(assert (=> b!507390 (= res!308494 (= lt!231800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231799 lt!231804 lt!231806 mask!3524)))))

(declare-fun lt!231803 () (_ BitVec 32))

(assert (=> b!507390 (= lt!231800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231803 (select (arr!15658 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507390 (= lt!231799 (toIndex!0 lt!231804 mask!3524))))

(assert (=> b!507390 (= lt!231804 (select (store (arr!15658 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!507390 (= lt!231803 (toIndex!0 (select (arr!15658 a!3235) j!176) mask!3524))))

(assert (=> b!507390 (= lt!231806 (array!32563 (store (arr!15658 a!3235) i!1204 k0!2280) (size!16022 a!3235)))))

(assert (=> b!507390 e!296933))

(declare-fun res!308492 () Bool)

(assert (=> b!507390 (=> (not res!308492) (not e!296933))))

(assert (=> b!507390 (= res!308492 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15544 0))(
  ( (Unit!15545) )
))
(declare-fun lt!231801 () Unit!15544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32562 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15544)

(assert (=> b!507390 (= lt!231801 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507391 () Bool)

(assert (=> b!507391 (= e!296931 true)))

(declare-fun lt!231802 () SeekEntryResult!4132)

(assert (=> b!507391 (= lt!231802 (seekEntryOrOpen!0 lt!231804 lt!231806 mask!3524))))

(assert (=> b!507391 false))

(declare-fun b!507392 () Bool)

(declare-fun res!308493 () Bool)

(assert (=> b!507392 (=> (not res!308493) (not e!296932))))

(assert (=> b!507392 (= res!308493 (and (= (size!16022 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16022 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16022 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45846 res!308497) b!507392))

(assert (= (and b!507392 res!308493) b!507387))

(assert (= (and b!507387 res!308500) b!507384))

(assert (= (and b!507384 res!308491) b!507385))

(assert (= (and b!507385 res!308495) b!507383))

(assert (= (and b!507383 res!308499) b!507389))

(assert (= (and b!507389 res!308498) b!507386))

(assert (= (and b!507386 res!308496) b!507390))

(assert (= (and b!507390 res!308492) b!507382))

(assert (= (and b!507390 (not res!308494)) b!507388))

(assert (= (and b!507388 (not res!308501)) b!507391))

(declare-fun m!488211 () Bool)

(assert (=> b!507384 m!488211))

(declare-fun m!488213 () Bool)

(assert (=> b!507391 m!488213))

(declare-fun m!488215 () Bool)

(assert (=> b!507383 m!488215))

(declare-fun m!488217 () Bool)

(assert (=> b!507389 m!488217))

(declare-fun m!488219 () Bool)

(assert (=> b!507387 m!488219))

(assert (=> b!507387 m!488219))

(declare-fun m!488221 () Bool)

(assert (=> b!507387 m!488221))

(declare-fun m!488223 () Bool)

(assert (=> b!507385 m!488223))

(assert (=> b!507382 m!488219))

(assert (=> b!507382 m!488219))

(declare-fun m!488225 () Bool)

(assert (=> b!507382 m!488225))

(declare-fun m!488227 () Bool)

(assert (=> b!507390 m!488227))

(declare-fun m!488229 () Bool)

(assert (=> b!507390 m!488229))

(declare-fun m!488231 () Bool)

(assert (=> b!507390 m!488231))

(assert (=> b!507390 m!488219))

(declare-fun m!488233 () Bool)

(assert (=> b!507390 m!488233))

(assert (=> b!507390 m!488219))

(declare-fun m!488235 () Bool)

(assert (=> b!507390 m!488235))

(assert (=> b!507390 m!488219))

(declare-fun m!488237 () Bool)

(assert (=> b!507390 m!488237))

(declare-fun m!488239 () Bool)

(assert (=> b!507390 m!488239))

(declare-fun m!488241 () Bool)

(assert (=> b!507390 m!488241))

(declare-fun m!488243 () Bool)

(assert (=> start!45846 m!488243))

(declare-fun m!488245 () Bool)

(assert (=> start!45846 m!488245))

(declare-fun m!488247 () Bool)

(assert (=> b!507386 m!488247))

(check-sat (not b!507386) (not b!507384) (not b!507390) (not b!507391) (not b!507383) (not b!507382) (not b!507387) (not start!45846) (not b!507389) (not b!507385))
(check-sat)
