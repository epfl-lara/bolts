; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117200 () Bool)

(assert start!117200)

(declare-fun b!1378753 () Bool)

(declare-fun res!921399 () Bool)

(declare-fun e!781081 () Bool)

(assert (=> b!1378753 (=> (not res!921399) (not e!781081))))

(declare-datatypes ((array!93733 0))(
  ( (array!93734 (arr!45262 (Array (_ BitVec 32) (_ BitVec 64))) (size!45813 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93733)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378753 (= res!921399 (validKeyInArray!0 (select (arr!45262 a!4094) i!1451)))))

(declare-fun b!1378754 () Bool)

(declare-fun res!921396 () Bool)

(assert (=> b!1378754 (=> (not res!921396) (not e!781081))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378754 (= res!921396 (not (validKeyInArray!0 k!2953)))))

(declare-fun b!1378755 () Bool)

(declare-fun res!921397 () Bool)

(assert (=> b!1378755 (=> (not res!921397) (not e!781081))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1378755 (= res!921397 (and (bvslt (size!45813 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45813 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378756 () Bool)

(assert (=> b!1378756 (= e!781081 false)))

(declare-fun lt!606939 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93733 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378756 (= lt!606939 (arrayCountValidKeys!0 (array!93734 (store (arr!45262 a!4094) i!1451 k!2953) (size!45813 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!606940 () (_ BitVec 32))

(assert (=> b!1378756 (= lt!606940 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun res!921398 () Bool)

(assert (=> start!117200 (=> (not res!921398) (not e!781081))))

(assert (=> start!117200 (= res!921398 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45813 a!4094))))))

(assert (=> start!117200 e!781081))

(assert (=> start!117200 true))

(declare-fun array_inv!34207 (array!93733) Bool)

(assert (=> start!117200 (array_inv!34207 a!4094)))

(assert (= (and start!117200 res!921398) b!1378753))

(assert (= (and b!1378753 res!921399) b!1378754))

(assert (= (and b!1378754 res!921396) b!1378755))

(assert (= (and b!1378755 res!921397) b!1378756))

(declare-fun m!1263639 () Bool)

(assert (=> b!1378753 m!1263639))

(assert (=> b!1378753 m!1263639))

(declare-fun m!1263641 () Bool)

(assert (=> b!1378753 m!1263641))

(declare-fun m!1263643 () Bool)

(assert (=> b!1378754 m!1263643))

(declare-fun m!1263645 () Bool)

(assert (=> b!1378756 m!1263645))

(declare-fun m!1263647 () Bool)

(assert (=> b!1378756 m!1263647))

(declare-fun m!1263649 () Bool)

(assert (=> b!1378756 m!1263649))

(declare-fun m!1263651 () Bool)

(assert (=> start!117200 m!1263651))

(push 1)

(assert (not start!117200))

(assert (not b!1378756))

(assert (not b!1378754))

(assert (not b!1378753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

