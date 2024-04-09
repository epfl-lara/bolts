; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134212 () Bool)

(assert start!134212)

(declare-fun res!1071394 () Bool)

(declare-fun e!873852 () Bool)

(assert (=> start!134212 (=> (not res!1071394) (not e!873852))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104685 0))(
  ( (array!104686 (arr!50521 (Array (_ BitVec 32) (_ BitVec 64))) (size!51072 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104685)

(assert (=> start!134212 (= res!1071394 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51072 a!3481)) (bvslt (size!51072 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134212 e!873852))

(assert (=> start!134212 true))

(declare-fun array_inv!39166 (array!104685) Bool)

(assert (=> start!134212 (array_inv!39166 a!3481)))

(declare-fun b!1567566 () Bool)

(declare-datatypes ((List!36832 0))(
  ( (Nil!36829) (Cons!36828 (h!38276 (_ BitVec 64)) (t!51747 List!36832)) )
))
(declare-fun acc!619 () List!36832)

(declare-fun e!873850 () Bool)

(declare-fun contains!10391 (List!36832 (_ BitVec 64)) Bool)

(assert (=> b!1567566 (= e!873850 (not (contains!10391 acc!619 (select (arr!50521 a!3481) from!2856))))))

(declare-fun b!1567567 () Bool)

(declare-fun res!1071392 () Bool)

(assert (=> b!1567567 (=> (not res!1071392) (not e!873852))))

(assert (=> b!1567567 (= res!1071392 (not (contains!10391 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567568 () Bool)

(declare-fun res!1071393 () Bool)

(assert (=> b!1567568 (=> (not res!1071393) (not e!873852))))

(assert (=> b!1567568 (= res!1071393 (not (contains!10391 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567569 () Bool)

(declare-fun res!1071395 () Bool)

(assert (=> b!1567569 (=> (not res!1071395) (not e!873852))))

(assert (=> b!1567569 (= res!1071395 (bvslt from!2856 (size!51072 a!3481)))))

(declare-fun b!1567570 () Bool)

(declare-fun res!1071390 () Bool)

(assert (=> b!1567570 (=> (not res!1071390) (not e!873852))))

(declare-fun noDuplicate!2682 (List!36832) Bool)

(assert (=> b!1567570 (= res!1071390 (noDuplicate!2682 acc!619))))

(declare-fun b!1567571 () Bool)

(assert (=> b!1567571 (= e!873852 false)))

(declare-fun lt!672955 () Bool)

(assert (=> b!1567571 (= lt!672955 e!873850)))

(declare-fun res!1071391 () Bool)

(assert (=> b!1567571 (=> res!1071391 e!873850)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567571 (= res!1071391 (not (validKeyInArray!0 (select (arr!50521 a!3481) from!2856))))))

(assert (= (and start!134212 res!1071394) b!1567570))

(assert (= (and b!1567570 res!1071390) b!1567567))

(assert (= (and b!1567567 res!1071392) b!1567568))

(assert (= (and b!1567568 res!1071393) b!1567569))

(assert (= (and b!1567569 res!1071395) b!1567571))

(assert (= (and b!1567571 (not res!1071391)) b!1567566))

(declare-fun m!1442401 () Bool)

(assert (=> b!1567570 m!1442401))

(declare-fun m!1442403 () Bool)

(assert (=> start!134212 m!1442403))

(declare-fun m!1442405 () Bool)

(assert (=> b!1567567 m!1442405))

(declare-fun m!1442407 () Bool)

(assert (=> b!1567568 m!1442407))

(declare-fun m!1442409 () Bool)

(assert (=> b!1567566 m!1442409))

(assert (=> b!1567566 m!1442409))

(declare-fun m!1442411 () Bool)

(assert (=> b!1567566 m!1442411))

(assert (=> b!1567571 m!1442409))

(assert (=> b!1567571 m!1442409))

(declare-fun m!1442413 () Bool)

(assert (=> b!1567571 m!1442413))

(push 1)

(assert (not b!1567571))

(assert (not start!134212))

(assert (not b!1567567))

(assert (not b!1567570))

(assert (not b!1567566))

(assert (not b!1567568))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

