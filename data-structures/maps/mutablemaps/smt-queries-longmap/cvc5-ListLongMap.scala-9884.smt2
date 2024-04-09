; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117092 () Bool)

(assert start!117092)

(declare-fun res!920602 () Bool)

(declare-fun e!780622 () Bool)

(assert (=> start!117092 (=> (not res!920602) (not e!780622))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93625 0))(
  ( (array!93626 (arr!45208 (Array (_ BitVec 32) (_ BitVec 64))) (size!45759 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93625)

(assert (=> start!117092 (= res!920602 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45759 a!4094))))))

(assert (=> start!117092 e!780622))

(assert (=> start!117092 true))

(declare-fun array_inv!34153 (array!93625) Bool)

(assert (=> start!117092 (array_inv!34153 a!4094)))

(declare-fun b!1377959 () Bool)

(declare-fun res!920603 () Bool)

(assert (=> b!1377959 (=> (not res!920603) (not e!780622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377959 (= res!920603 (validKeyInArray!0 (select (arr!45208 a!4094) i!1451)))))

(declare-fun b!1377960 () Bool)

(declare-fun res!920604 () Bool)

(assert (=> b!1377960 (=> (not res!920604) (not e!780622))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1377960 (= res!920604 (not (validKeyInArray!0 k!2953)))))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun b!1377961 () Bool)

(assert (=> b!1377961 (= e!780622 (and (bvslt (size!45759 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45759 a!4094)) (bvsge i!1451 from!3466) (bvsgt from!3466 (bvadd #b00000000000000000000000000000001 i!1451))))))

(assert (= (and start!117092 res!920602) b!1377959))

(assert (= (and b!1377959 res!920603) b!1377960))

(assert (= (and b!1377960 res!920604) b!1377961))

(declare-fun m!1262469 () Bool)

(assert (=> start!117092 m!1262469))

(declare-fun m!1262471 () Bool)

(assert (=> b!1377959 m!1262471))

(assert (=> b!1377959 m!1262471))

(declare-fun m!1262473 () Bool)

(assert (=> b!1377959 m!1262473))

(declare-fun m!1262475 () Bool)

(assert (=> b!1377960 m!1262475))

(push 1)

(assert (not b!1377960))

(assert (not start!117092))

(assert (not b!1377959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

