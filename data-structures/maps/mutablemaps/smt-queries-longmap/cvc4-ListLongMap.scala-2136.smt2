; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36120 () Bool)

(assert start!36120)

(declare-fun b!362077 () Bool)

(declare-fun res!201521 () Bool)

(declare-fun e!221786 () Bool)

(assert (=> b!362077 (=> (not res!201521) (not e!221786))))

(declare-datatypes ((array!20398 0))(
  ( (array!20399 (arr!9678 (Array (_ BitVec 32) (_ BitVec 64))) (size!10030 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20398)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362077 (= res!201521 (not (validKeyInArray!0 (select (arr!9678 a!4337) i!1478))))))

(declare-fun b!362080 () Bool)

(assert (=> b!362080 (= e!221786 false)))

(declare-fun lt!166610 () (_ BitVec 32))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20398 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362080 (= lt!166610 (arrayCountValidKeys!0 (array!20399 (store (arr!9678 a!4337) i!1478 k!2980) (size!10030 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166609 () (_ BitVec 32))

(assert (=> b!362080 (= lt!166609 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362078 () Bool)

(declare-fun res!201523 () Bool)

(assert (=> b!362078 (=> (not res!201523) (not e!221786))))

(assert (=> b!362078 (= res!201523 (validKeyInArray!0 k!2980))))

(declare-fun res!201520 () Bool)

(assert (=> start!36120 (=> (not res!201520) (not e!221786))))

(assert (=> start!36120 (= res!201520 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10030 a!4337))))))

(assert (=> start!36120 e!221786))

(assert (=> start!36120 true))

(declare-fun array_inv!7116 (array!20398) Bool)

(assert (=> start!36120 (array_inv!7116 a!4337)))

(declare-fun b!362079 () Bool)

(declare-fun res!201522 () Bool)

(assert (=> b!362079 (=> (not res!201522) (not e!221786))))

(assert (=> b!362079 (= res!201522 (and (bvslt (size!10030 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10030 a!4337))))))

(assert (= (and start!36120 res!201520) b!362077))

(assert (= (and b!362077 res!201521) b!362078))

(assert (= (and b!362078 res!201523) b!362079))

(assert (= (and b!362079 res!201522) b!362080))

(declare-fun m!358631 () Bool)

(assert (=> b!362077 m!358631))

(assert (=> b!362077 m!358631))

(declare-fun m!358633 () Bool)

(assert (=> b!362077 m!358633))

(declare-fun m!358635 () Bool)

(assert (=> b!362080 m!358635))

(declare-fun m!358637 () Bool)

(assert (=> b!362080 m!358637))

(declare-fun m!358639 () Bool)

(assert (=> b!362080 m!358639))

(declare-fun m!358641 () Bool)

(assert (=> b!362078 m!358641))

(declare-fun m!358643 () Bool)

(assert (=> start!36120 m!358643))

(push 1)

(assert (not b!362078))

(assert (not b!362080))

(assert (not start!36120))

(assert (not b!362077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

