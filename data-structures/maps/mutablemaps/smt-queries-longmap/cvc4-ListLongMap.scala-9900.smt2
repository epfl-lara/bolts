; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117192 () Bool)

(assert start!117192)

(declare-fun b!1378704 () Bool)

(declare-fun res!921348 () Bool)

(declare-fun e!781057 () Bool)

(assert (=> b!1378704 (=> (not res!921348) (not e!781057))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93725 0))(
  ( (array!93726 (arr!45258 (Array (_ BitVec 32) (_ BitVec 64))) (size!45809 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93725)

(declare-fun arrayCountValidKeys!0 (array!93725 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378704 (= res!921348 (= (arrayCountValidKeys!0 (array!93726 (store (arr!45258 a!4094) i!1451 k!2953) (size!45809 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001)))))

(declare-fun b!1378705 () Bool)

(declare-fun res!921349 () Bool)

(assert (=> b!1378705 (=> (not res!921349) (not e!781057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378705 (= res!921349 (validKeyInArray!0 (select (arr!45258 a!4094) i!1451)))))

(declare-fun b!1378706 () Bool)

(declare-fun res!921350 () Bool)

(assert (=> b!1378706 (=> (not res!921350) (not e!781057))))

(assert (=> b!1378706 (= res!921350 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378707 () Bool)

(declare-fun res!921347 () Bool)

(assert (=> b!1378707 (=> (not res!921347) (not e!781057))))

(assert (=> b!1378707 (= res!921347 (and (bvslt (size!45809 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45809 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378708 () Bool)

(assert (=> b!1378708 (= e!781057 (and (bvsle from!3466 #b00000000000000000000000000000000) (bvsgt #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451))))))

(declare-fun res!921351 () Bool)

(assert (=> start!117192 (=> (not res!921351) (not e!781057))))

(assert (=> start!117192 (= res!921351 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45809 a!4094))))))

(assert (=> start!117192 e!781057))

(assert (=> start!117192 true))

(declare-fun array_inv!34203 (array!93725) Bool)

(assert (=> start!117192 (array_inv!34203 a!4094)))

(assert (= (and start!117192 res!921351) b!1378705))

(assert (= (and b!1378705 res!921349) b!1378706))

(assert (= (and b!1378706 res!921350) b!1378707))

(assert (= (and b!1378707 res!921347) b!1378704))

(assert (= (and b!1378704 res!921348) b!1378708))

(declare-fun m!1263583 () Bool)

(assert (=> b!1378704 m!1263583))

(declare-fun m!1263585 () Bool)

(assert (=> b!1378704 m!1263585))

(declare-fun m!1263587 () Bool)

(assert (=> b!1378704 m!1263587))

(declare-fun m!1263589 () Bool)

(assert (=> b!1378705 m!1263589))

(assert (=> b!1378705 m!1263589))

(declare-fun m!1263591 () Bool)

(assert (=> b!1378705 m!1263591))

(declare-fun m!1263593 () Bool)

(assert (=> b!1378706 m!1263593))

(declare-fun m!1263595 () Bool)

(assert (=> start!117192 m!1263595))

(push 1)

(assert (not b!1378705))

(assert (not start!117192))

(assert (not b!1378704))

(assert (not b!1378706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

