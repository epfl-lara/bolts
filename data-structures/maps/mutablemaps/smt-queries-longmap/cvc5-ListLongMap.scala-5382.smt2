; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71914 () Bool)

(assert start!71914)

(declare-fun res!568274 () Bool)

(declare-fun e!465980 () Bool)

(assert (=> start!71914 (=> (not res!568274) (not e!465980))))

(declare-fun i!1466 () (_ BitVec 32))

(declare-datatypes ((array!46768 0))(
  ( (array!46769 (arr!22414 (Array (_ BitVec 32) (_ BitVec 64))) (size!22835 (_ BitVec 32))) )
))
(declare-fun a!4227 () array!46768)

(assert (=> start!71914 (= res!568274 (and (bvsge i!1466 #b00000000000000000000000000000000) (bvslt i!1466 (size!22835 a!4227))))))

(assert (=> start!71914 e!465980))

(assert (=> start!71914 true))

(declare-fun array_inv!17837 (array!46768) Bool)

(assert (=> start!71914 (array_inv!17837 a!4227)))

(declare-fun b!835226 () Bool)

(declare-fun res!568277 () Bool)

(assert (=> b!835226 (=> (not res!568277) (not e!465980))))

(declare-fun k!2968 () (_ BitVec 64))

(declare-fun to!390 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!46768 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!835226 (= res!568277 (= (arrayCountValidKeys!0 (array!46769 (store (arr!22414 a!4227) i!1466 k!2968) (size!22835 a!4227)) (bvadd #b00000000000000000000000000000001 i!1466) to!390) (arrayCountValidKeys!0 a!4227 (bvadd #b00000000000000000000000000000001 i!1466) to!390)))))

(declare-fun b!835227 () Bool)

(declare-fun res!568278 () Bool)

(assert (=> b!835227 (=> (not res!568278) (not e!465980))))

(assert (=> b!835227 (= res!568278 (not (= to!390 (size!22835 a!4227))))))

(declare-fun b!835228 () Bool)

(declare-fun res!568276 () Bool)

(assert (=> b!835228 (=> (not res!568276) (not e!465980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!835228 (= res!568276 (validKeyInArray!0 k!2968))))

(declare-fun b!835229 () Bool)

(declare-fun res!568273 () Bool)

(assert (=> b!835229 (=> (not res!568273) (not e!465980))))

(assert (=> b!835229 (= res!568273 (and (bvslt (size!22835 a!4227) #b01111111111111111111111111111111) (bvsge to!390 #b00000000000000000000000000000000) (bvsle to!390 (size!22835 a!4227)) (bvsgt to!390 i!1466)))))

(declare-fun b!835230 () Bool)

(assert (=> b!835230 (= e!465980 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1466) #b00000000000000000000000000000000) (bvsge to!390 (size!22835 a!4227))))))

(declare-fun b!835231 () Bool)

(declare-fun res!568279 () Bool)

(assert (=> b!835231 (=> (not res!568279) (not e!465980))))

(assert (=> b!835231 (= res!568279 (not (validKeyInArray!0 (select (arr!22414 a!4227) to!390))))))

(declare-fun b!835232 () Bool)

(declare-fun res!568275 () Bool)

(assert (=> b!835232 (=> (not res!568275) (not e!465980))))

(assert (=> b!835232 (= res!568275 (not (validKeyInArray!0 (select (arr!22414 a!4227) i!1466))))))

(assert (= (and start!71914 res!568274) b!835232))

(assert (= (and b!835232 res!568275) b!835228))

(assert (= (and b!835228 res!568276) b!835229))

(assert (= (and b!835229 res!568273) b!835226))

(assert (= (and b!835226 res!568277) b!835227))

(assert (= (and b!835227 res!568278) b!835231))

(assert (= (and b!835231 res!568279) b!835230))

(declare-fun m!780511 () Bool)

(assert (=> start!71914 m!780511))

(declare-fun m!780513 () Bool)

(assert (=> b!835226 m!780513))

(declare-fun m!780515 () Bool)

(assert (=> b!835226 m!780515))

(declare-fun m!780517 () Bool)

(assert (=> b!835226 m!780517))

(declare-fun m!780519 () Bool)

(assert (=> b!835231 m!780519))

(assert (=> b!835231 m!780519))

(declare-fun m!780521 () Bool)

(assert (=> b!835231 m!780521))

(declare-fun m!780523 () Bool)

(assert (=> b!835228 m!780523))

(declare-fun m!780525 () Bool)

(assert (=> b!835232 m!780525))

(assert (=> b!835232 m!780525))

(declare-fun m!780527 () Bool)

(assert (=> b!835232 m!780527))

(push 1)

(assert (not start!71914))

(assert (not b!835228))

(assert (not b!835226))

(assert (not b!835231))

(assert (not b!835232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

