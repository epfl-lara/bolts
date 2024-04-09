; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31076 () Bool)

(assert start!31076)

(declare-fun b!312414 () Bool)

(declare-fun res!169026 () Bool)

(declare-fun e!194800 () Bool)

(assert (=> b!312414 (=> (not res!169026) (not e!194800))))

(declare-datatypes ((array!15976 0))(
  ( (array!15977 (arr!7568 (Array (_ BitVec 32) (_ BitVec 64))) (size!7920 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15976)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2719 0))(
  ( (MissingZero!2719 (index!13052 (_ BitVec 32))) (Found!2719 (index!13053 (_ BitVec 32))) (Intermediate!2719 (undefined!3531 Bool) (index!13054 (_ BitVec 32)) (x!31223 (_ BitVec 32))) (Undefined!2719) (MissingVacant!2719 (index!13055 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15976 (_ BitVec 32)) SeekEntryResult!2719)

(assert (=> b!312414 (= res!169026 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2719 i!1240)))))

(declare-fun b!312415 () Bool)

(declare-fun res!169032 () Bool)

(assert (=> b!312415 (=> (not res!169032) (not e!194800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312415 (= res!169032 (validKeyInArray!0 k0!2441))))

(declare-fun b!312416 () Bool)

(declare-fun e!194799 () Bool)

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312416 (= e!194799 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvslt index!1781 (bvadd #b00000000000000000000000000000001 mask!3709))))))

(declare-fun lt!153131 () SeekEntryResult!2719)

(declare-fun lt!153137 () SeekEntryResult!2719)

(assert (=> b!312416 (= lt!153131 lt!153137)))

(declare-fun lt!153130 () (_ BitVec 32))

(declare-datatypes ((Unit!9636 0))(
  ( (Unit!9637) )
))
(declare-fun lt!153135 () Unit!9636)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15976 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9636)

(assert (=> b!312416 (= lt!153135 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!153130 resIndex!52 resX!52 mask!3709))))

(declare-fun b!312417 () Bool)

(declare-fun e!194797 () Bool)

(assert (=> b!312417 (= e!194800 e!194797)))

(declare-fun res!169033 () Bool)

(assert (=> b!312417 (=> (not res!169033) (not e!194797))))

(declare-fun lt!153132 () SeekEntryResult!2719)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15976 (_ BitVec 32)) SeekEntryResult!2719)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312417 (= res!169033 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153132))))

(assert (=> b!312417 (= lt!153132 (Intermediate!2719 false resIndex!52 resX!52))))

(declare-fun res!169029 () Bool)

(assert (=> start!31076 (=> (not res!169029) (not e!194800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31076 (= res!169029 (validMask!0 mask!3709))))

(assert (=> start!31076 e!194800))

(declare-fun array_inv!5522 (array!15976) Bool)

(assert (=> start!31076 (array_inv!5522 a!3293)))

(assert (=> start!31076 true))

(declare-fun b!312418 () Bool)

(declare-fun e!194798 () Bool)

(assert (=> b!312418 (= e!194798 (not e!194799))))

(declare-fun res!169031 () Bool)

(assert (=> b!312418 (=> res!169031 e!194799)))

(assert (=> b!312418 (= res!169031 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!153130 #b00000000000000000000000000000000) (bvsge lt!153130 (size!7920 a!3293)) (not (= lt!153137 lt!153132))))))

(declare-fun lt!153136 () SeekEntryResult!2719)

(assert (=> b!312418 (= lt!153136 lt!153131)))

(declare-fun lt!153134 () array!15976)

(assert (=> b!312418 (= lt!153131 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153130 k0!2441 lt!153134 mask!3709))))

(assert (=> b!312418 (= lt!153136 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!153134 mask!3709))))

(assert (=> b!312418 (= lt!153134 (array!15977 (store (arr!7568 a!3293) i!1240 k0!2441) (size!7920 a!3293)))))

(declare-fun lt!153133 () SeekEntryResult!2719)

(assert (=> b!312418 (= lt!153133 lt!153137)))

(assert (=> b!312418 (= lt!153137 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!153130 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312418 (= lt!153130 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!312419 () Bool)

(declare-fun res!169030 () Bool)

(assert (=> b!312419 (=> (not res!169030) (not e!194800))))

(assert (=> b!312419 (= res!169030 (and (= (size!7920 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7920 a!3293))))))

(declare-fun b!312420 () Bool)

(declare-fun res!169027 () Bool)

(assert (=> b!312420 (=> (not res!169027) (not e!194800))))

(declare-fun arrayContainsKey!0 (array!15976 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312420 (= res!169027 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312421 () Bool)

(assert (=> b!312421 (= e!194797 e!194798)))

(declare-fun res!169035 () Bool)

(assert (=> b!312421 (=> (not res!169035) (not e!194798))))

(assert (=> b!312421 (= res!169035 (and (= lt!153133 lt!153132) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7568 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!312421 (= lt!153133 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!312422 () Bool)

(declare-fun res!169034 () Bool)

(assert (=> b!312422 (=> (not res!169034) (not e!194800))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15976 (_ BitVec 32)) Bool)

(assert (=> b!312422 (= res!169034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312423 () Bool)

(declare-fun res!169028 () Bool)

(assert (=> b!312423 (=> (not res!169028) (not e!194797))))

(assert (=> b!312423 (= res!169028 (and (= (select (arr!7568 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7920 a!3293))))))

(assert (= (and start!31076 res!169029) b!312419))

(assert (= (and b!312419 res!169030) b!312415))

(assert (= (and b!312415 res!169032) b!312420))

(assert (= (and b!312420 res!169027) b!312414))

(assert (= (and b!312414 res!169026) b!312422))

(assert (= (and b!312422 res!169034) b!312417))

(assert (= (and b!312417 res!169033) b!312423))

(assert (= (and b!312423 res!169028) b!312421))

(assert (= (and b!312421 res!169035) b!312418))

(assert (= (and b!312418 (not res!169031)) b!312416))

(declare-fun m!322565 () Bool)

(assert (=> b!312416 m!322565))

(declare-fun m!322567 () Bool)

(assert (=> b!312423 m!322567))

(declare-fun m!322569 () Bool)

(assert (=> b!312421 m!322569))

(declare-fun m!322571 () Bool)

(assert (=> b!312421 m!322571))

(declare-fun m!322573 () Bool)

(assert (=> b!312420 m!322573))

(declare-fun m!322575 () Bool)

(assert (=> b!312422 m!322575))

(declare-fun m!322577 () Bool)

(assert (=> start!31076 m!322577))

(declare-fun m!322579 () Bool)

(assert (=> start!31076 m!322579))

(declare-fun m!322581 () Bool)

(assert (=> b!312414 m!322581))

(declare-fun m!322583 () Bool)

(assert (=> b!312415 m!322583))

(declare-fun m!322585 () Bool)

(assert (=> b!312417 m!322585))

(assert (=> b!312417 m!322585))

(declare-fun m!322587 () Bool)

(assert (=> b!312417 m!322587))

(declare-fun m!322589 () Bool)

(assert (=> b!312418 m!322589))

(declare-fun m!322591 () Bool)

(assert (=> b!312418 m!322591))

(declare-fun m!322593 () Bool)

(assert (=> b!312418 m!322593))

(declare-fun m!322595 () Bool)

(assert (=> b!312418 m!322595))

(declare-fun m!322597 () Bool)

(assert (=> b!312418 m!322597))

(check-sat (not b!312415) (not b!312416) (not start!31076) (not b!312418) (not b!312420) (not b!312421) (not b!312422) (not b!312417) (not b!312414))
(check-sat)
