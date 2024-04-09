; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117302 () Bool)

(assert start!117302)

(declare-fun b!1379463 () Bool)

(declare-fun res!922011 () Bool)

(declare-fun e!781481 () Bool)

(assert (=> b!1379463 (=> (not res!922011) (not e!781481))))

(declare-datatypes ((array!93814 0))(
  ( (array!93815 (arr!45301 (Array (_ BitVec 32) (_ BitVec 64))) (size!45852 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93814)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun i!1451 () (_ BitVec 32))

(assert (=> b!1379463 (= res!922011 (and (bvslt (size!45852 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45852 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!922008 () Bool)

(assert (=> start!117302 (=> (not res!922008) (not e!781481))))

(assert (=> start!117302 (= res!922008 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45852 a!4094))))))

(assert (=> start!117302 e!781481))

(assert (=> start!117302 true))

(declare-fun array_inv!34246 (array!93814) Bool)

(assert (=> start!117302 (array_inv!34246 a!4094)))

(declare-fun b!1379464 () Bool)

(assert (=> b!1379464 (= e!781481 false)))

(declare-fun lt!607596 () (_ BitVec 32))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!93814 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379464 (= lt!607596 (arrayCountValidKeys!0 (array!93815 (store (arr!45301 a!4094) i!1451 k!2953) (size!45852 a!4094)) from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607597 () (_ BitVec 32))

(assert (=> b!1379464 (= lt!607597 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379461 () Bool)

(declare-fun res!922009 () Bool)

(assert (=> b!1379461 (=> (not res!922009) (not e!781481))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379461 (= res!922009 (validKeyInArray!0 (select (arr!45301 a!4094) i!1451)))))

(declare-fun b!1379462 () Bool)

(declare-fun res!922010 () Bool)

(assert (=> b!1379462 (=> (not res!922010) (not e!781481))))

(assert (=> b!1379462 (= res!922010 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117302 res!922008) b!1379461))

(assert (= (and b!1379461 res!922009) b!1379462))

(assert (= (and b!1379462 res!922010) b!1379463))

(assert (= (and b!1379463 res!922011) b!1379464))

(declare-fun m!1264677 () Bool)

(assert (=> start!117302 m!1264677))

(declare-fun m!1264679 () Bool)

(assert (=> b!1379464 m!1264679))

(declare-fun m!1264681 () Bool)

(assert (=> b!1379464 m!1264681))

(declare-fun m!1264683 () Bool)

(assert (=> b!1379464 m!1264683))

(declare-fun m!1264685 () Bool)

(assert (=> b!1379461 m!1264685))

(assert (=> b!1379461 m!1264685))

(declare-fun m!1264687 () Bool)

(assert (=> b!1379461 m!1264687))

(declare-fun m!1264689 () Bool)

(assert (=> b!1379462 m!1264689))

(push 1)

(assert (not b!1379464))

(assert (not start!117302))

(assert (not b!1379461))

(assert (not b!1379462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

