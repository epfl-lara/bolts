; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134216 () Bool)

(assert start!134216)

(declare-datatypes ((array!104689 0))(
  ( (array!104690 (arr!50523 (Array (_ BitVec 32) (_ BitVec 64))) (size!51074 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104689)

(declare-datatypes ((List!36834 0))(
  ( (Nil!36831) (Cons!36830 (h!38278 (_ BitVec 64)) (t!51749 List!36834)) )
))
(declare-fun acc!619 () List!36834)

(declare-fun e!873870 () Bool)

(declare-fun b!1567602 () Bool)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun contains!10393 (List!36834 (_ BitVec 64)) Bool)

(assert (=> b!1567602 (= e!873870 (not (contains!10393 acc!619 (select (arr!50523 a!3481) from!2856))))))

(declare-fun res!1071428 () Bool)

(declare-fun e!873869 () Bool)

(assert (=> start!134216 (=> (not res!1071428) (not e!873869))))

(assert (=> start!134216 (= res!1071428 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51074 a!3481)) (bvslt (size!51074 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134216 e!873869))

(assert (=> start!134216 true))

(declare-fun array_inv!39168 (array!104689) Bool)

(assert (=> start!134216 (array_inv!39168 a!3481)))

(declare-fun b!1567603 () Bool)

(declare-fun res!1071426 () Bool)

(assert (=> b!1567603 (=> (not res!1071426) (not e!873869))))

(declare-fun noDuplicate!2684 (List!36834) Bool)

(assert (=> b!1567603 (= res!1071426 (noDuplicate!2684 acc!619))))

(declare-fun b!1567604 () Bool)

(declare-fun res!1071431 () Bool)

(assert (=> b!1567604 (=> (not res!1071431) (not e!873869))))

(assert (=> b!1567604 (= res!1071431 (bvslt from!2856 (size!51074 a!3481)))))

(declare-fun b!1567605 () Bool)

(declare-fun res!1071427 () Bool)

(assert (=> b!1567605 (=> (not res!1071427) (not e!873869))))

(assert (=> b!1567605 (= res!1071427 (not (contains!10393 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567606 () Bool)

(assert (=> b!1567606 (= e!873869 false)))

(declare-fun lt!672961 () Bool)

(assert (=> b!1567606 (= lt!672961 e!873870)))

(declare-fun res!1071429 () Bool)

(assert (=> b!1567606 (=> res!1071429 e!873870)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567606 (= res!1071429 (not (validKeyInArray!0 (select (arr!50523 a!3481) from!2856))))))

(declare-fun b!1567607 () Bool)

(declare-fun res!1071430 () Bool)

(assert (=> b!1567607 (=> (not res!1071430) (not e!873869))))

(assert (=> b!1567607 (= res!1071430 (not (contains!10393 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!134216 res!1071428) b!1567603))

(assert (= (and b!1567603 res!1071426) b!1567607))

(assert (= (and b!1567607 res!1071430) b!1567605))

(assert (= (and b!1567605 res!1071427) b!1567604))

(assert (= (and b!1567604 res!1071431) b!1567606))

(assert (= (and b!1567606 (not res!1071429)) b!1567602))

(declare-fun m!1442429 () Bool)

(assert (=> b!1567607 m!1442429))

(declare-fun m!1442431 () Bool)

(assert (=> b!1567605 m!1442431))

(declare-fun m!1442433 () Bool)

(assert (=> b!1567602 m!1442433))

(assert (=> b!1567602 m!1442433))

(declare-fun m!1442435 () Bool)

(assert (=> b!1567602 m!1442435))

(assert (=> b!1567606 m!1442433))

(assert (=> b!1567606 m!1442433))

(declare-fun m!1442437 () Bool)

(assert (=> b!1567606 m!1442437))

(declare-fun m!1442439 () Bool)

(assert (=> start!134216 m!1442439))

(declare-fun m!1442441 () Bool)

(assert (=> b!1567603 m!1442441))

(push 1)

(assert (not start!134216))

(assert (not b!1567603))

(assert (not b!1567605))

(assert (not b!1567602))

(assert (not b!1567607))

(assert (not b!1567606))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

