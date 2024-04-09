; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71896 () Bool)

(assert start!71896)

(declare-fun b!835046 () Bool)

(declare-fun res!568093 () Bool)

(declare-fun e!465899 () Bool)

(assert (=> b!835046 (=> (not res!568093) (not e!465899))))

(declare-fun to!390 () (_ BitVec 32))

(declare-datatypes ((array!46750 0))(
  ( (array!46751 (arr!22405 (Array (_ BitVec 32) (_ BitVec 64))) (size!22826 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46750)

(assert (=> b!835046 (= res!568093 (not (= to!390 (size!22826 a!4227))))))

(declare-fun b!835047 () Bool)

(declare-fun res!568097 () Bool)

(assert (=> b!835047 (=> (not res!568097) (not e!465899))))

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> b!835047 (= res!568097 (and (bvslt (size!22826 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22826 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835048 () Bool)

(declare-fun res!568098 () Bool)

(assert (=> b!835048 (=> (not res!568098) (not e!465899))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835048 (= res!568098 (validKeyInArray!0 k!2968))))

(declare-fun b!835049 () Bool)

(declare-fun res!568095 () Bool)

(assert (=> b!835049 (=> (not res!568095) (not e!465899))))

(assert (=> b!835049 (= res!568095 (not (validKeyInArray!0 (select (arr!22405 a!4227) i!1466))))))

(declare-fun b!835050 () Bool)

(declare-fun res!568099 () Bool)

(assert (=> b!835050 (=> (not res!568099) (not e!465899))))

(declare-fun arrayCountValidKeys!0 (array!46750 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835050 (= res!568099 (= (arrayCountValidKeys!0 (array!46751 (store (arr!22405 a!4227) i!1466 k!2968) (size!22826 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!835051 () Bool)

(assert (=> b!835051 (= e!465899 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvsge to!390 (size!22826 a!4227))))))

(declare-fun b!835052 () Bool)

(declare-fun res!568096 () Bool)

(assert (=> b!835052 (=> (not res!568096) (not e!465899))))

(assert (=> b!835052 (= res!568096 (validKeyInArray!0 (select (arr!22405 a!4227) to!390)))))

(declare-fun res!568094 () Bool)

(assert (=> start!71896 (=> (not res!568094) (not e!465899))))

(assert (=> start!71896 (= res!568094 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22826 a!4227))))))

(assert (=> start!71896 e!465899))

(assert (=> start!71896 true))

(declare-fun array_inv!17828 (array!46750) Bool)

(assert (=> start!71896 (array_inv!17828 a!4227)))

(assert (= (and start!71896 res!568094) b!835049))

(assert (= (and b!835049 res!568095) b!835048))

(assert (= (and b!835048 res!568098) b!835047))

(assert (= (and b!835047 res!568097) b!835050))

(assert (= (and b!835050 res!568099) b!835046))

(assert (= (and b!835046 res!568093) b!835052))

(assert (= (and b!835052 res!568096) b!835051))

(declare-fun m!780313 () Bool)

(assert (=> b!835050 m!780313))

(declare-fun m!780315 () Bool)

(assert (=> b!835050 m!780315))

(declare-fun m!780317 () Bool)

(assert (=> b!835050 m!780317))

(declare-fun m!780319 () Bool)

(assert (=> b!835048 m!780319))

(declare-fun m!780321 () Bool)

(assert (=> start!71896 m!780321))

(declare-fun m!780323 () Bool)

(assert (=> b!835052 m!780323))

(assert (=> b!835052 m!780323))

(declare-fun m!780325 () Bool)

(assert (=> b!835052 m!780325))

(declare-fun m!780327 () Bool)

(assert (=> b!835049 m!780327))

(assert (=> b!835049 m!780327))

(declare-fun m!780329 () Bool)

(assert (=> b!835049 m!780329))

(push 1)

(assert (not b!835048))

(assert (not b!835052))

(assert (not b!835050))

(assert (not start!71896))

(assert (not b!835049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

