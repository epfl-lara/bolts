; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117176 () Bool)

(assert start!117176)

(declare-fun b!1378593 () Bool)

(declare-fun e!781010 () Bool)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1378593 (= e!781010 (and (bvsle from!3466 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451))))))

(declare-fun b!1378594 () Bool)

(declare-fun res!921239 () Bool)

(assert (=> b!1378594 (=> (not res!921239) (not e!781010))))

(declare-datatypes ((array!93709 0))(
  ( (array!93710 (arr!45250 (Array (_ BitVec 32) (_ BitVec 64))) (size!45801 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93709)

(assert (=> b!1378594 (= res!921239 (and (bvslt (size!45801 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45801 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378595 () Bool)

(declare-fun res!921236 () Bool)

(assert (=> b!1378595 (=> (not res!921236) (not e!781010))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93709 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378595 (= res!921236 (= (arrayCountValidKeys!0 (array!93710 (store (arr!45250 a!4094) i!1451 k!2953) (size!45801 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun b!1378596 () Bool)

(declare-fun res!921240 () Bool)

(assert (=> b!1378596 (=> (not res!921240) (not e!781010))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378596 (= res!921240 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378597 () Bool)

(declare-fun res!921237 () Bool)

(assert (=> b!1378597 (=> (not res!921237) (not e!781010))))

(assert (=> b!1378597 (= res!921237 (validKeyInArray!0 (select (arr!45250 a!4094) i!1451)))))

(declare-fun res!921238 () Bool)

(assert (=> start!117176 (=> (not res!921238) (not e!781010))))

(assert (=> start!117176 (= res!921238 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45801 a!4094))))))

(assert (=> start!117176 e!781010))

(assert (=> start!117176 true))

(declare-fun array_inv!34195 (array!93709) Bool)

(assert (=> start!117176 (array_inv!34195 a!4094)))

(assert (= (and start!117176 res!921238) b!1378597))

(assert (= (and b!1378597 res!921237) b!1378596))

(assert (= (and b!1378596 res!921240) b!1378594))

(assert (= (and b!1378594 res!921239) b!1378595))

(assert (= (and b!1378595 res!921236) b!1378593))

(declare-fun m!1263471 () Bool)

(assert (=> b!1378595 m!1263471))

(declare-fun m!1263473 () Bool)

(assert (=> b!1378595 m!1263473))

(declare-fun m!1263475 () Bool)

(assert (=> b!1378595 m!1263475))

(declare-fun m!1263477 () Bool)

(assert (=> b!1378596 m!1263477))

(declare-fun m!1263479 () Bool)

(assert (=> b!1378597 m!1263479))

(assert (=> b!1378597 m!1263479))

(declare-fun m!1263481 () Bool)

(assert (=> b!1378597 m!1263481))

(declare-fun m!1263483 () Bool)

(assert (=> start!117176 m!1263483))

(push 1)

(assert (not b!1378597))

(assert (not b!1378596))

(assert (not b!1378595))

(assert (not start!117176))

(check-sat)

(pop 1)

