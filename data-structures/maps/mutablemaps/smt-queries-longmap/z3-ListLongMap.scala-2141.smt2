; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36148 () Bool)

(assert start!36148)

(declare-fun b!362247 () Bool)

(declare-fun res!201688 () Bool)

(declare-fun e!221870 () Bool)

(assert (=> b!362247 (=> (not res!201688) (not e!221870))))

(declare-datatypes ((array!20426 0))(
  ( (array!20427 (arr!9692 (Array (_ BitVec 32) (_ BitVec 64))) (size!10044 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20426)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362247 (= res!201688 (and (bvslt (size!10044 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10044 a!4337))))))

(declare-fun b!362246 () Bool)

(declare-fun res!201689 () Bool)

(assert (=> b!362246 (=> (not res!201689) (not e!221870))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362246 (= res!201689 (validKeyInArray!0 k0!2980))))

(declare-fun res!201690 () Bool)

(assert (=> start!36148 (=> (not res!201690) (not e!221870))))

(assert (=> start!36148 (= res!201690 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10044 a!4337))))))

(assert (=> start!36148 e!221870))

(assert (=> start!36148 true))

(declare-fun array_inv!7130 (array!20426) Bool)

(assert (=> start!36148 (array_inv!7130 a!4337)))

(declare-fun b!362245 () Bool)

(declare-fun res!201691 () Bool)

(assert (=> b!362245 (=> (not res!201691) (not e!221870))))

(assert (=> b!362245 (= res!201691 (not (validKeyInArray!0 (select (arr!9692 a!4337) i!1478))))))

(declare-fun b!362248 () Bool)

(assert (=> b!362248 (= e!221870 false)))

(declare-fun lt!166693 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20426 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362248 (= lt!166693 (arrayCountValidKeys!0 (array!20427 (store (arr!9692 a!4337) i!1478 k0!2980) (size!10044 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166694 () (_ BitVec 32))

(assert (=> b!362248 (= lt!166694 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36148 res!201690) b!362245))

(assert (= (and b!362245 res!201691) b!362246))

(assert (= (and b!362246 res!201689) b!362247))

(assert (= (and b!362247 res!201688) b!362248))

(declare-fun m!358827 () Bool)

(assert (=> b!362246 m!358827))

(declare-fun m!358829 () Bool)

(assert (=> start!36148 m!358829))

(declare-fun m!358831 () Bool)

(assert (=> b!362245 m!358831))

(assert (=> b!362245 m!358831))

(declare-fun m!358833 () Bool)

(assert (=> b!362245 m!358833))

(declare-fun m!358835 () Bool)

(assert (=> b!362248 m!358835))

(declare-fun m!358837 () Bool)

(assert (=> b!362248 m!358837))

(declare-fun m!358839 () Bool)

(assert (=> b!362248 m!358839))

(check-sat (not b!362245) (not start!36148) (not b!362248) (not b!362246))
