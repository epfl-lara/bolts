; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71918 () Bool)

(assert start!71918)

(declare-fun b!835268 () Bool)

(declare-fun res!568315 () Bool)

(declare-fun e!465991 () Bool)

(assert (=> b!835268 (=> (not res!568315) (not e!465991))))

(declare-fun to!390 () (_ BitVec 32))

(declare-datatypes ((array!46772 0))(
  ( (array!46773 (arr!22416 (Array (_ BitVec 32) (_ BitVec 64))) (size!22837 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46772)

(assert (=> b!835268 (= res!568315 (not (= to!390 (size!22837 a!4227))))))

(declare-fun res!568317 () Bool)

(assert (=> start!71918 (=> (not res!568317) (not e!465991))))

(declare-fun i!1466 () (_ BitVec 32))

(assert (=> start!71918 (= res!568317 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22837 a!4227))))))

(assert (=> start!71918 e!465991))

(assert (=> start!71918 true))

(declare-fun array_inv!17839 (array!46772) Bool)

(assert (=> start!71918 (array_inv!17839 a!4227)))

(declare-fun b!835269 () Bool)

(assert (=> b!835269 (= e!465991 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvsge to!390 (size!22837 a!4227))))))

(declare-fun b!835270 () Bool)

(declare-fun res!568318 () Bool)

(assert (=> b!835270 (=> (not res!568318) (not e!465991))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!46772 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835270 (= res!568318 (= (arrayCountValidKeys!0 (array!46773 (store (arr!22416 a!4227) i!1466 k!2968) (size!22837 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!835271 () Bool)

(declare-fun res!568320 () Bool)

(assert (=> b!835271 (=> (not res!568320) (not e!465991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835271 (= res!568320 (validKeyInArray!0 k!2968))))

(declare-fun b!835272 () Bool)

(declare-fun res!568316 () Bool)

(assert (=> b!835272 (=> (not res!568316) (not e!465991))))

(assert (=> b!835272 (= res!568316 (not (validKeyInArray!0 (select (arr!22416 a!4227) i!1466))))))

(declare-fun b!835273 () Bool)

(declare-fun res!568321 () Bool)

(assert (=> b!835273 (=> (not res!568321) (not e!465991))))

(assert (=> b!835273 (= res!568321 (not (validKeyInArray!0 (select (arr!22416 a!4227) to!390))))))

(declare-fun b!835274 () Bool)

(declare-fun res!568319 () Bool)

(assert (=> b!835274 (=> (not res!568319) (not e!465991))))

(assert (=> b!835274 (= res!568319 (and (bvslt (size!22837 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22837 a!4227)) (bvsgt to!390 i!1466)))))

(assert (= (and start!71918 res!568317) b!835272))

(assert (= (and b!835272 res!568316) b!835271))

(assert (= (and b!835271 res!568320) b!835274))

(assert (= (and b!835274 res!568319) b!835270))

(assert (= (and b!835270 res!568318) b!835268))

(assert (= (and b!835268 res!568315) b!835273))

(assert (= (and b!835273 res!568321) b!835269))

(declare-fun m!780547 () Bool)

(assert (=> b!835273 m!780547))

(assert (=> b!835273 m!780547))

(declare-fun m!780549 () Bool)

(assert (=> b!835273 m!780549))

(declare-fun m!780551 () Bool)

(assert (=> b!835272 m!780551))

(assert (=> b!835272 m!780551))

(declare-fun m!780553 () Bool)

(assert (=> b!835272 m!780553))

(declare-fun m!780555 () Bool)

(assert (=> b!835271 m!780555))

(declare-fun m!780557 () Bool)

(assert (=> start!71918 m!780557))

(declare-fun m!780559 () Bool)

(assert (=> b!835270 m!780559))

(declare-fun m!780561 () Bool)

(assert (=> b!835270 m!780561))

(declare-fun m!780563 () Bool)

(assert (=> b!835270 m!780563))

(push 1)

(assert (not b!835273))

(assert (not b!835271))

(assert (not b!835270))

(assert (not start!71918))

(assert (not b!835272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

