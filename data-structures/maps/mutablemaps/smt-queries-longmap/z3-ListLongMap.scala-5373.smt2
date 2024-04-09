; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71862 () Bool)

(assert start!71862)

(declare-fun b!834805 () Bool)

(declare-fun res!567854 () Bool)

(declare-fun e!465796 () Bool)

(assert (=> b!834805 (=> (not res!567854) (not e!465796))))

(declare-datatypes ((array!46716 0))(
  ( (array!46717 (arr!22388 (Array (_ BitVec 32) (_ BitVec 64))) (size!22809 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46716)

(declare-fun to!390 () (_ BitVec 32))

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> b!834805 (= res!567854 (and (bvslt (size!22809 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22809 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!834806 () Bool)

(assert (=> b!834806 (= e!465796 (and (= to!390 (size!22809 a!4227)) (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000)))))

(declare-fun res!567853 () Bool)

(assert (=> start!71862 (=> (not res!567853) (not e!465796))))

(assert (=> start!71862 (= res!567853 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22809 a!4227))))))

(assert (=> start!71862 e!465796))

(assert (=> start!71862 true))

(declare-fun array_inv!17811 (array!46716) Bool)

(assert (=> start!71862 (array_inv!17811 a!4227)))

(declare-fun b!834807 () Bool)

(declare-fun res!567855 () Bool)

(assert (=> b!834807 (=> (not res!567855) (not e!465796))))

(declare-fun k0!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!834807 (= res!567855 (validKeyInArray!0 k0!2968))))

(declare-fun b!834808 () Bool)

(declare-fun res!567856 () Bool)

(assert (=> b!834808 (=> (not res!567856) (not e!465796))))

(declare-fun arrayCountValidKeys!0 (array!46716 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!834808 (= res!567856 (= (arrayCountValidKeys!0 (array!46717 (store (arr!22388 a!4227) i!1466 k0!2968) (size!22809 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!834809 () Bool)

(declare-fun res!567852 () Bool)

(assert (=> b!834809 (=> (not res!567852) (not e!465796))))

(assert (=> b!834809 (= res!567852 (not (validKeyInArray!0 (select (arr!22388 a!4227) i!1466))))))

(assert (= (and start!71862 res!567853) b!834809))

(assert (= (and b!834809 res!567852) b!834807))

(assert (= (and b!834807 res!567855) b!834805))

(assert (= (and b!834805 res!567854) b!834808))

(assert (= (and b!834808 res!567856) b!834806))

(declare-fun m!780075 () Bool)

(assert (=> start!71862 m!780075))

(declare-fun m!780077 () Bool)

(assert (=> b!834807 m!780077))

(declare-fun m!780079 () Bool)

(assert (=> b!834808 m!780079))

(declare-fun m!780081 () Bool)

(assert (=> b!834808 m!780081))

(declare-fun m!780083 () Bool)

(assert (=> b!834808 m!780083))

(declare-fun m!780085 () Bool)

(assert (=> b!834809 m!780085))

(assert (=> b!834809 m!780085))

(declare-fun m!780087 () Bool)

(assert (=> b!834809 m!780087))

(check-sat (not start!71862) (not b!834809) (not b!834808) (not b!834807))
(check-sat)
