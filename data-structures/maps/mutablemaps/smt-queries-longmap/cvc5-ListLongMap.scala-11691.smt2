; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136798 () Bool)

(assert start!136798)

(declare-fun b!1578416 () Bool)

(declare-fun e!880415 () Bool)

(assert (=> b!1578416 (= e!880415 (not true))))

(declare-datatypes ((array!105727 0))(
  ( (array!105728 (arr!50968 (Array (_ BitVec 32) (_ BitVec 64))) (size!51519 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105727)

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578416 (arrayContainsKey!0 a!3559 k!2792 #b00000000000000000000000000000000)))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((Unit!52114 0))(
  ( (Unit!52115) )
))
(declare-fun lt!676219 () Unit!52114)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105727 (_ BitVec 64) (_ BitVec 32)) Unit!52114)

(assert (=> b!1578416 (= lt!676219 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578415 () Bool)

(declare-fun res!1078493 () Bool)

(assert (=> b!1578415 (=> (not res!1078493) (not e!880415))))

(assert (=> b!1578415 (= res!1078493 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun res!1078490 () Bool)

(assert (=> start!136798 (=> (not res!1078490) (not e!880415))))

(assert (=> start!136798 (= res!1078490 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51519 a!3559)) (bvslt (size!51519 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136798 e!880415))

(assert (=> start!136798 true))

(declare-fun array_inv!39613 (array!105727) Bool)

(assert (=> start!136798 (array_inv!39613 a!3559)))

(declare-fun b!1578414 () Bool)

(declare-fun res!1078492 () Bool)

(assert (=> b!1578414 (=> (not res!1078492) (not e!880415))))

(assert (=> b!1578414 (= res!1078492 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51519 a!3559))))))

(declare-fun b!1578413 () Bool)

(declare-fun res!1078491 () Bool)

(assert (=> b!1578413 (=> (not res!1078491) (not e!880415))))

(assert (=> b!1578413 (= res!1078491 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(assert (= (and start!136798 res!1078490) b!1578413))

(assert (= (and b!1578413 res!1078491) b!1578414))

(assert (= (and b!1578414 res!1078492) b!1578415))

(assert (= (and b!1578415 res!1078493) b!1578416))

(declare-fun m!1450535 () Bool)

(assert (=> b!1578416 m!1450535))

(declare-fun m!1450537 () Bool)

(assert (=> b!1578416 m!1450537))

(declare-fun m!1450539 () Bool)

(assert (=> b!1578415 m!1450539))

(declare-fun m!1450541 () Bool)

(assert (=> start!136798 m!1450541))

(declare-fun m!1450543 () Bool)

(assert (=> b!1578413 m!1450543))

(push 1)

(assert (not b!1578415))

(assert (not start!136798))

(assert (not b!1578416))

(assert (not b!1578413))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

