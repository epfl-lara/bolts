; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136852 () Bool)

(assert start!136852)

(declare-fun b!1578647 () Bool)

(declare-fun e!880565 () Bool)

(assert (=> b!1578647 (= e!880565 (not true))))

(declare-datatypes ((array!105772 0))(
  ( (array!105773 (arr!50989 (Array (_ BitVec 32) (_ BitVec 64))) (size!51540 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105772)

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105772 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578647 (arrayContainsKey!0 a!3559 k!2792 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52132 0))(
  ( (Unit!52133) )
))
(declare-fun lt!676246 () Unit!52132)

(declare-fun from!2937 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105772 (_ BitVec 64) (_ BitVec 32)) Unit!52132)

(assert (=> b!1578647 (= lt!676246 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun b!1578646 () Bool)

(declare-fun res!1078721 () Bool)

(assert (=> b!1578646 (=> (not res!1078721) (not e!880565))))

(assert (=> b!1578646 (= res!1078721 (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)))))

(declare-fun res!1078724 () Bool)

(assert (=> start!136852 (=> (not res!1078724) (not e!880565))))

(assert (=> start!136852 (= res!1078724 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51540 a!3559)) (bvslt (size!51540 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136852 e!880565))

(assert (=> start!136852 true))

(declare-fun array_inv!39634 (array!105772) Bool)

(assert (=> start!136852 (array_inv!39634 a!3559)))

(declare-fun b!1578645 () Bool)

(declare-fun res!1078723 () Bool)

(assert (=> b!1578645 (=> (not res!1078723) (not e!880565))))

(assert (=> b!1578645 (= res!1078723 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51540 a!3559))))))

(declare-fun b!1578644 () Bool)

(declare-fun res!1078722 () Bool)

(assert (=> b!1578644 (=> (not res!1078722) (not e!880565))))

(assert (=> b!1578644 (= res!1078722 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(assert (= (and start!136852 res!1078724) b!1578644))

(assert (= (and b!1578644 res!1078722) b!1578645))

(assert (= (and b!1578645 res!1078723) b!1578646))

(assert (= (and b!1578646 res!1078721) b!1578647))

(declare-fun m!1450709 () Bool)

(assert (=> b!1578647 m!1450709))

(declare-fun m!1450711 () Bool)

(assert (=> b!1578647 m!1450711))

(declare-fun m!1450713 () Bool)

(assert (=> b!1578646 m!1450713))

(declare-fun m!1450715 () Bool)

(assert (=> start!136852 m!1450715))

(declare-fun m!1450717 () Bool)

(assert (=> b!1578644 m!1450717))

(push 1)

(assert (not b!1578646))

(assert (not start!136852))

(assert (not b!1578647))

(assert (not b!1578644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

