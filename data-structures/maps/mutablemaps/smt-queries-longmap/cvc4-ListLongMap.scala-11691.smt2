; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136802 () Bool)

(assert start!136802)

(declare-fun b!1578440 () Bool)

(declare-fun e!880427 () Bool)

(assert (=> b!1578440 (= e!880427 (not true))))

(declare-datatypes ((array!105731 0))(
  ( (array!105732 (arr!50970 (Array (_ BitVec 32) (_ BitVec 64))) (size!51521 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105731)

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105731 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578440 (arrayContainsKey!0 a!3559 k!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52118 0))(
  ( (Unit!52119) )
))
(declare-fun lt!676225 () Unit!52118)

(declare-fun from!2937 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105731 (_ BitVec 64) (_ BitVec 32)) Unit!52118)

(assert (=> b!1578440 (= lt!676225 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578439 () Bool)

(declare-fun res!1078517 () Bool)

(assert (=> b!1578439 (=> (not res!1078517) (not e!880427))))

(assert (=> b!1578439 (= res!1078517 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun res!1078514 () Bool)

(assert (=> start!136802 (=> (not res!1078514) (not e!880427))))

(assert (=> start!136802 (= res!1078514 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51521 a!3559)) (bvslt (size!51521 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136802 e!880427))

(assert (=> start!136802 true))

(declare-fun array_inv!39615 (array!105731) Bool)

(assert (=> start!136802 (array_inv!39615 a!3559)))

(declare-fun b!1578437 () Bool)

(declare-fun res!1078516 () Bool)

(assert (=> b!1578437 (=> (not res!1078516) (not e!880427))))

(assert (=> b!1578437 (= res!1078516 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578438 () Bool)

(declare-fun res!1078515 () Bool)

(assert (=> b!1578438 (=> (not res!1078515) (not e!880427))))

(assert (=> b!1578438 (= res!1078515 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51521 a!3559))))))

(assert (= (and start!136802 res!1078514) b!1578437))

(assert (= (and b!1578437 res!1078516) b!1578438))

(assert (= (and b!1578438 res!1078515) b!1578439))

(assert (= (and b!1578439 res!1078517) b!1578440))

(declare-fun m!1450555 () Bool)

(assert (=> b!1578440 m!1450555))

(declare-fun m!1450557 () Bool)

(assert (=> b!1578440 m!1450557))

(declare-fun m!1450559 () Bool)

(assert (=> b!1578439 m!1450559))

(declare-fun m!1450561 () Bool)

(assert (=> start!136802 m!1450561))

(declare-fun m!1450563 () Bool)

(assert (=> b!1578437 m!1450563))

(push 1)

(assert (not b!1578437))

(assert (not b!1578439))

(assert (not start!136802))

(assert (not b!1578440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

