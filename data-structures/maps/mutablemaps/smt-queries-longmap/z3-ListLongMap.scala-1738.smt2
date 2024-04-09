; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31940 () Bool)

(assert start!31940)

(declare-fun b!318966 () Bool)

(declare-fun res!173510 () Bool)

(declare-fun e!198147 () Bool)

(assert (=> b!318966 (=> (not res!173510) (not e!198147))))

(declare-datatypes ((array!16258 0))(
  ( (array!16259 (arr!7691 (Array (_ BitVec 32) (_ BitVec 64))) (size!8043 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16258)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318966 (= res!173510 (and (= (size!8043 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8043 a!3293))))))

(declare-fun b!318967 () Bool)

(declare-fun e!198149 () Bool)

(declare-fun e!198151 () Bool)

(assert (=> b!318967 (= e!198149 e!198151)))

(declare-fun res!173508 () Bool)

(assert (=> b!318967 (=> (not res!173508) (not e!198151))))

(declare-datatypes ((SeekEntryResult!2842 0))(
  ( (MissingZero!2842 (index!13544 (_ BitVec 32))) (Found!2842 (index!13545 (_ BitVec 32))) (Intermediate!2842 (undefined!3654 Bool) (index!13546 (_ BitVec 32)) (x!31767 (_ BitVec 32))) (Undefined!2842) (MissingVacant!2842 (index!13547 (_ BitVec 32))) )
))
(declare-fun lt!155648 () SeekEntryResult!2842)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun lt!155647 () SeekEntryResult!2842)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!318967 (= res!173508 (and (= lt!155648 lt!155647) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7691 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16258 (_ BitVec 32)) SeekEntryResult!2842)

(assert (=> b!318967 (= lt!155648 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!318968 () Bool)

(assert (=> b!318968 (= e!198147 e!198149)))

(declare-fun res!173514 () Bool)

(assert (=> b!318968 (=> (not res!173514) (not e!198149))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318968 (= res!173514 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!155647))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318968 (= lt!155647 (Intermediate!2842 false resIndex!52 resX!52))))

(declare-fun b!318969 () Bool)

(declare-fun e!198150 () Bool)

(assert (=> b!318969 (= e!198151 (not e!198150))))

(declare-fun res!173511 () Bool)

(assert (=> b!318969 (=> res!173511 e!198150)))

(declare-fun lt!155651 () SeekEntryResult!2842)

(declare-fun lt!155650 () (_ BitVec 32))

(assert (=> b!318969 (= res!173511 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!155650 #b00000000000000000000000000000000) (bvsge lt!155650 (size!8043 a!3293)) (not (= lt!155651 lt!155647))))))

(declare-fun lt!155646 () SeekEntryResult!2842)

(declare-fun lt!155649 () SeekEntryResult!2842)

(assert (=> b!318969 (= lt!155646 lt!155649)))

(declare-fun lt!155645 () array!16258)

(assert (=> b!318969 (= lt!155649 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155650 k0!2441 lt!155645 mask!3709))))

(assert (=> b!318969 (= lt!155646 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!155645 mask!3709))))

(assert (=> b!318969 (= lt!155645 (array!16259 (store (arr!7691 a!3293) i!1240 k0!2441) (size!8043 a!3293)))))

(assert (=> b!318969 (= lt!155648 lt!155651)))

(assert (=> b!318969 (= lt!155651 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155650 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318969 (= lt!155650 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318970 () Bool)

(declare-fun res!173517 () Bool)

(assert (=> b!318970 (=> (not res!173517) (not e!198147))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16258 (_ BitVec 32)) SeekEntryResult!2842)

(assert (=> b!318970 (= res!173517 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2842 i!1240)))))

(declare-fun res!173509 () Bool)

(assert (=> start!31940 (=> (not res!173509) (not e!198147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31940 (= res!173509 (validMask!0 mask!3709))))

(assert (=> start!31940 e!198147))

(declare-fun array_inv!5645 (array!16258) Bool)

(assert (=> start!31940 (array_inv!5645 a!3293)))

(assert (=> start!31940 true))

(declare-fun b!318971 () Bool)

(assert (=> b!318971 (= e!198150 true)))

(assert (=> b!318971 (= lt!155649 lt!155651)))

(declare-datatypes ((Unit!9795 0))(
  ( (Unit!9796) )
))
(declare-fun lt!155644 () Unit!9795)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!16258 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9795)

(assert (=> b!318971 (= lt!155644 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!155650 resIndex!52 resX!52 mask!3709))))

(declare-fun b!318972 () Bool)

(declare-fun res!173513 () Bool)

(assert (=> b!318972 (=> (not res!173513) (not e!198147))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16258 (_ BitVec 32)) Bool)

(assert (=> b!318972 (= res!173513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318973 () Bool)

(declare-fun res!173516 () Bool)

(assert (=> b!318973 (=> (not res!173516) (not e!198147))))

(declare-fun arrayContainsKey!0 (array!16258 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318973 (= res!173516 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318974 () Bool)

(declare-fun res!173512 () Bool)

(assert (=> b!318974 (=> (not res!173512) (not e!198149))))

(assert (=> b!318974 (= res!173512 (and (= (select (arr!7691 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8043 a!3293))))))

(declare-fun b!318975 () Bool)

(declare-fun res!173515 () Bool)

(assert (=> b!318975 (=> (not res!173515) (not e!198147))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318975 (= res!173515 (validKeyInArray!0 k0!2441))))

(assert (= (and start!31940 res!173509) b!318966))

(assert (= (and b!318966 res!173510) b!318975))

(assert (= (and b!318975 res!173515) b!318973))

(assert (= (and b!318973 res!173516) b!318970))

(assert (= (and b!318970 res!173517) b!318972))

(assert (= (and b!318972 res!173513) b!318968))

(assert (= (and b!318968 res!173514) b!318974))

(assert (= (and b!318974 res!173512) b!318967))

(assert (= (and b!318967 res!173508) b!318969))

(assert (= (and b!318969 (not res!173511)) b!318971))

(declare-fun m!327617 () Bool)

(assert (=> b!318968 m!327617))

(assert (=> b!318968 m!327617))

(declare-fun m!327619 () Bool)

(assert (=> b!318968 m!327619))

(declare-fun m!327621 () Bool)

(assert (=> b!318973 m!327621))

(declare-fun m!327623 () Bool)

(assert (=> b!318974 m!327623))

(declare-fun m!327625 () Bool)

(assert (=> b!318975 m!327625))

(declare-fun m!327627 () Bool)

(assert (=> start!31940 m!327627))

(declare-fun m!327629 () Bool)

(assert (=> start!31940 m!327629))

(declare-fun m!327631 () Bool)

(assert (=> b!318971 m!327631))

(declare-fun m!327633 () Bool)

(assert (=> b!318970 m!327633))

(declare-fun m!327635 () Bool)

(assert (=> b!318967 m!327635))

(declare-fun m!327637 () Bool)

(assert (=> b!318967 m!327637))

(declare-fun m!327639 () Bool)

(assert (=> b!318969 m!327639))

(declare-fun m!327641 () Bool)

(assert (=> b!318969 m!327641))

(declare-fun m!327643 () Bool)

(assert (=> b!318969 m!327643))

(declare-fun m!327645 () Bool)

(assert (=> b!318969 m!327645))

(declare-fun m!327647 () Bool)

(assert (=> b!318969 m!327647))

(declare-fun m!327649 () Bool)

(assert (=> b!318972 m!327649))

(check-sat (not b!318970) (not b!318972) (not b!318968) (not b!318969) (not b!318967) (not b!318971) (not b!318973) (not start!31940) (not b!318975))
(check-sat)
