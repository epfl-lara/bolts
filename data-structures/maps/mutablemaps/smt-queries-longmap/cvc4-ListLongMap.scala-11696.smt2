; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136832 () Bool)

(assert start!136832)

(declare-fun res!1078651 () Bool)

(declare-fun e!880517 () Bool)

(assert (=> start!136832 (=> (not res!1078651) (not e!880517))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105761 0))(
  ( (array!105762 (arr!50985 (Array (_ BitVec 32) (_ BitVec 64))) (size!51536 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105761)

(assert (=> start!136832 (= res!1078651 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51536 a!3559)) (bvslt (size!51536 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136832 e!880517))

(assert (=> start!136832 true))

(declare-fun array_inv!39630 (array!105761) Bool)

(assert (=> start!136832 (array_inv!39630 a!3559)))

(declare-fun b!1578573 () Bool)

(declare-fun res!1078652 () Bool)

(assert (=> b!1578573 (=> (not res!1078652) (not e!880517))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105761 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578573 (= res!1078652 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578574 () Bool)

(declare-fun res!1078650 () Bool)

(assert (=> b!1578574 (=> (not res!1078650) (not e!880517))))

(assert (=> b!1578574 (= res!1078650 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51536 a!3559))))))

(declare-fun b!1578575 () Bool)

(assert (=> b!1578575 (= e!880517 (not (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001))))))

(assert (= (and start!136832 res!1078651) b!1578573))

(assert (= (and b!1578573 res!1078652) b!1578574))

(assert (= (and b!1578574 res!1078650) b!1578575))

(declare-fun m!1450661 () Bool)

(assert (=> start!136832 m!1450661))

(declare-fun m!1450663 () Bool)

(assert (=> b!1578573 m!1450663))

(declare-fun m!1450665 () Bool)

(assert (=> b!1578575 m!1450665))

(push 1)

(assert (not start!136832))

(assert (not b!1578573))

(assert (not b!1578575))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166061 () Bool)

(assert (=> d!166061 (= (array_inv!39630 a!3559) (bvsge (size!51536 a!3559) #b00000000000000000000000000000000))))

(assert (=> start!136832 d!166061))

(declare-fun d!166065 () Bool)

(declare-fun res!1078673 () Bool)

(declare-fun e!880539 () Bool)

(assert (=> d!166065 (=> res!1078673 e!880539)))

(assert (=> d!166065 (= res!1078673 (= (select (arr!50985 a!3559) from!2937) k!2792))))

(assert (=> d!166065 (= (arrayContainsKey!0 a!3559 k!2792 from!2937) e!880539)))

(declare-fun b!1578596 () Bool)

(declare-fun e!880540 () Bool)

(assert (=> b!1578596 (= e!880539 e!880540)))

(declare-fun res!1078674 () Bool)

(assert (=> b!1578596 (=> (not res!1078674) (not e!880540))))

(assert (=> b!1578596 (= res!1078674 (bvslt (bvadd from!2937 #b00000000000000000000000000000001) (size!51536 a!3559)))))

(declare-fun b!1578597 () Bool)

(assert (=> b!1578597 (= e!880540 (arrayContainsKey!0 a!3559 k!2792 (bvadd from!2937 #b00000000000000000000000000000001)))))

(assert (= (and d!166065 (not res!1078673)) b!1578596))

(assert (= (and b!1578596 res!1078674) b!1578597))

(declare-fun m!1450683 () Bool)

(assert (=> d!166065 m!1450683))

(declare-fun m!1450685 () Bool)

(assert (=> b!1578597 m!1450685))

(assert (=> b!1578573 d!166065))

(declare-fun d!166069 () Bool)

(declare-fun res!1078675 () Bool)

(declare-fun e!880541 () Bool)

(assert (=> d!166069 (=> res!1078675 e!880541)))

(assert (=> d!166069 (= res!1078675 (= (select (arr!50985 a!3559) (bvsub from!2937 #b00000000000000000000000000000001)) k!2792))))

(assert (=> d!166069 (= (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)) e!880541)))

