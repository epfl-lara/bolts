; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117180 () Bool)

(assert start!117180)

(declare-fun b!1378624 () Bool)

(declare-fun res!921269 () Bool)

(declare-fun e!781021 () Bool)

(assert (=> b!1378624 (=> (not res!921269) (not e!781021))))

(declare-datatypes ((array!93713 0))(
  ( (array!93714 (arr!45252 (Array (_ BitVec 32) (_ BitVec 64))) (size!45803 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93713)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378624 (= res!921269 (and (bvslt (size!45803 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45803 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378625 () Bool)

(assert (=> b!1378625 (= e!781021 (and (bvsle from!3466 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451))))))

(declare-fun b!1378626 () Bool)

(declare-fun res!921266 () Bool)

(assert (=> b!1378626 (=> (not res!921266) (not e!781021))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378626 (= res!921266 (validKeyInArray!0 (select (arr!45252 a!4094) i!1451)))))

(declare-fun b!1378627 () Bool)

(declare-fun res!921270 () Bool)

(assert (=> b!1378627 (=> (not res!921270) (not e!781021))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93713 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378627 (= res!921270 (= (arrayCountValidKeys!0 (array!93714 (store (arr!45252 a!4094) i!1451 k!2953) (size!45803 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun res!921267 () Bool)

(assert (=> start!117180 (=> (not res!921267) (not e!781021))))

(assert (=> start!117180 (= res!921267 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45803 a!4094))))))

(assert (=> start!117180 e!781021))

(assert (=> start!117180 true))

(declare-fun array_inv!34197 (array!93713) Bool)

(assert (=> start!117180 (array_inv!34197 a!4094)))

(declare-fun b!1378623 () Bool)

(declare-fun res!921268 () Bool)

(assert (=> b!1378623 (=> (not res!921268) (not e!781021))))

(assert (=> b!1378623 (= res!921268 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117180 res!921267) b!1378626))

(assert (= (and b!1378626 res!921266) b!1378623))

(assert (= (and b!1378623 res!921268) b!1378624))

(assert (= (and b!1378624 res!921269) b!1378627))

(assert (= (and b!1378627 res!921270) b!1378625))

(declare-fun m!1263499 () Bool)

(assert (=> b!1378626 m!1263499))

(assert (=> b!1378626 m!1263499))

(declare-fun m!1263501 () Bool)

(assert (=> b!1378626 m!1263501))

(declare-fun m!1263503 () Bool)

(assert (=> b!1378627 m!1263503))

(declare-fun m!1263505 () Bool)

(assert (=> b!1378627 m!1263505))

(declare-fun m!1263507 () Bool)

(assert (=> b!1378627 m!1263507))

(declare-fun m!1263509 () Bool)

(assert (=> start!117180 m!1263509))

(declare-fun m!1263511 () Bool)

(assert (=> b!1378623 m!1263511))

(push 1)

(assert (not b!1378626))

(assert (not start!117180))

(assert (not b!1378623))

(assert (not b!1378627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

