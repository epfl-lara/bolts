; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31046 () Bool)

(assert start!31046)

(declare-fun b!311964 () Bool)

(declare-fun res!168576 () Bool)

(declare-fun e!194574 () Bool)

(assert (=> b!311964 (=> (not res!168576) (not e!194574))))

(declare-datatypes ((array!15946 0))(
  ( (array!15947 (arr!7553 (Array (_ BitVec 32) (_ BitVec 64))) (size!7905 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15946)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2704 0))(
  ( (MissingZero!2704 (index!12992 (_ BitVec 32))) (Found!2704 (index!12993 (_ BitVec 32))) (Intermediate!2704 (undefined!3516 Bool) (index!12994 (_ BitVec 32)) (x!31168 (_ BitVec 32))) (Undefined!2704) (MissingVacant!2704 (index!12995 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15946 (_ BitVec 32)) SeekEntryResult!2704)

(assert (=> b!311964 (= res!168576 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2704 i!1240)))))

(declare-fun b!311965 () Bool)

(declare-fun res!168585 () Bool)

(assert (=> b!311965 (=> (not res!168585) (not e!194574))))

(declare-fun arrayContainsKey!0 (array!15946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!311965 (= res!168585 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!311966 () Bool)

(declare-fun res!168578 () Bool)

(declare-fun e!194572 () Bool)

(assert (=> b!311966 (=> (not res!168578) (not e!194572))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(assert (=> b!311966 (= res!168578 (and (= (select (arr!7553 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7905 a!3293))))))

(declare-fun b!311967 () Bool)

(declare-fun res!168580 () Bool)

(assert (=> b!311967 (=> (not res!168580) (not e!194574))))

(assert (=> b!311967 (= res!168580 (and (= (size!7905 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7905 a!3293))))))

(declare-fun b!311968 () Bool)

(declare-fun e!194573 () Bool)

(assert (=> b!311968 (= e!194573 (or (bvslt mask!3709 #b00000000000000000000000000000000) (bvsge index!1781 (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsle x!1427 #b01111111111111111111111111111110)))))

(declare-fun lt!152777 () SeekEntryResult!2704)

(declare-fun lt!152776 () SeekEntryResult!2704)

(assert (=> b!311968 (= lt!152777 lt!152776)))

(declare-fun lt!152770 () (_ BitVec 32))

(declare-datatypes ((Unit!9606 0))(
  ( (Unit!9607) )
))
(declare-fun lt!152773 () Unit!9606)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15946 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9606)

(assert (=> b!311968 (= lt!152773 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3293 i!1240 k0!2441 (bvadd #b00000000000000000000000000000001 x!1427) lt!152770 resIndex!52 resX!52 mask!3709))))

(declare-fun res!168577 () Bool)

(assert (=> start!31046 (=> (not res!168577) (not e!194574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31046 (= res!168577 (validMask!0 mask!3709))))

(assert (=> start!31046 e!194574))

(declare-fun array_inv!5507 (array!15946) Bool)

(assert (=> start!31046 (array_inv!5507 a!3293)))

(assert (=> start!31046 true))

(declare-fun b!311969 () Bool)

(assert (=> b!311969 (= e!194574 e!194572)))

(declare-fun res!168579 () Bool)

(assert (=> b!311969 (=> (not res!168579) (not e!194572))))

(declare-fun lt!152774 () SeekEntryResult!2704)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15946 (_ BitVec 32)) SeekEntryResult!2704)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311969 (= res!168579 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!152774))))

(assert (=> b!311969 (= lt!152774 (Intermediate!2704 false resIndex!52 resX!52))))

(declare-fun b!311970 () Bool)

(declare-fun e!194575 () Bool)

(assert (=> b!311970 (= e!194575 (not e!194573))))

(declare-fun res!168582 () Bool)

(assert (=> b!311970 (=> res!168582 e!194573)))

(assert (=> b!311970 (= res!168582 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (bvslt lt!152770 #b00000000000000000000000000000000) (bvsge lt!152770 (size!7905 a!3293)) (not (= lt!152776 lt!152774))))))

(declare-fun lt!152775 () SeekEntryResult!2704)

(assert (=> b!311970 (= lt!152775 lt!152777)))

(declare-fun lt!152772 () array!15946)

(assert (=> b!311970 (= lt!152777 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152770 k0!2441 lt!152772 mask!3709))))

(assert (=> b!311970 (= lt!152775 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 lt!152772 mask!3709))))

(assert (=> b!311970 (= lt!152772 (array!15947 (store (arr!7553 a!3293) i!1240 k0!2441) (size!7905 a!3293)))))

(declare-fun lt!152771 () SeekEntryResult!2704)

(assert (=> b!311970 (= lt!152771 lt!152776)))

(assert (=> b!311970 (= lt!152776 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!152770 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!311970 (= lt!152770 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!311971 () Bool)

(declare-fun res!168584 () Bool)

(assert (=> b!311971 (=> (not res!168584) (not e!194574))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15946 (_ BitVec 32)) Bool)

(assert (=> b!311971 (= res!168584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!311972 () Bool)

(declare-fun res!168581 () Bool)

(assert (=> b!311972 (=> (not res!168581) (not e!194574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!311972 (= res!168581 (validKeyInArray!0 k0!2441))))

(declare-fun b!311973 () Bool)

(assert (=> b!311973 (= e!194572 e!194575)))

(declare-fun res!168583 () Bool)

(assert (=> b!311973 (=> (not res!168583) (not e!194575))))

(assert (=> b!311973 (= res!168583 (and (= lt!152771 lt!152774) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7553 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!311973 (= lt!152771 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(assert (= (and start!31046 res!168577) b!311967))

(assert (= (and b!311967 res!168580) b!311972))

(assert (= (and b!311972 res!168581) b!311965))

(assert (= (and b!311965 res!168585) b!311964))

(assert (= (and b!311964 res!168576) b!311971))

(assert (= (and b!311971 res!168584) b!311969))

(assert (= (and b!311969 res!168579) b!311966))

(assert (= (and b!311966 res!168578) b!311973))

(assert (= (and b!311973 res!168583) b!311970))

(assert (= (and b!311970 (not res!168582)) b!311968))

(declare-fun m!322055 () Bool)

(assert (=> b!311965 m!322055))

(declare-fun m!322057 () Bool)

(assert (=> b!311971 m!322057))

(declare-fun m!322059 () Bool)

(assert (=> b!311969 m!322059))

(assert (=> b!311969 m!322059))

(declare-fun m!322061 () Bool)

(assert (=> b!311969 m!322061))

(declare-fun m!322063 () Bool)

(assert (=> b!311972 m!322063))

(declare-fun m!322065 () Bool)

(assert (=> b!311973 m!322065))

(declare-fun m!322067 () Bool)

(assert (=> b!311973 m!322067))

(declare-fun m!322069 () Bool)

(assert (=> start!31046 m!322069))

(declare-fun m!322071 () Bool)

(assert (=> start!31046 m!322071))

(declare-fun m!322073 () Bool)

(assert (=> b!311970 m!322073))

(declare-fun m!322075 () Bool)

(assert (=> b!311970 m!322075))

(declare-fun m!322077 () Bool)

(assert (=> b!311970 m!322077))

(declare-fun m!322079 () Bool)

(assert (=> b!311970 m!322079))

(declare-fun m!322081 () Bool)

(assert (=> b!311970 m!322081))

(declare-fun m!322083 () Bool)

(assert (=> b!311968 m!322083))

(declare-fun m!322085 () Bool)

(assert (=> b!311964 m!322085))

(declare-fun m!322087 () Bool)

(assert (=> b!311966 m!322087))

(check-sat (not b!311969) (not b!311972) (not b!311965) (not b!311973) (not b!311970) (not start!31046) (not b!311971) (not b!311968) (not b!311964))
(check-sat)
