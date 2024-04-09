; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136816 () Bool)

(assert start!136816)

(declare-fun res!1078594 () Bool)

(declare-fun e!880469 () Bool)

(assert (=> start!136816 (=> (not res!1078594) (not e!880469))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105745 0))(
  ( (array!105746 (arr!50977 (Array (_ BitVec 32) (_ BitVec 64))) (size!51528 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105745)

(assert (=> start!136816 (= res!1078594 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51528 a!3559)) (bvslt (size!51528 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136816 e!880469))

(assert (=> start!136816 true))

(declare-fun array_inv!39622 (array!105745) Bool)

(assert (=> start!136816 (array_inv!39622 a!3559)))

(declare-fun b!1578517 () Bool)

(declare-fun res!1078595 () Bool)

(assert (=> b!1578517 (=> (not res!1078595) (not e!880469))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105745 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578517 (= res!1078595 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578518 () Bool)

(assert (=> b!1578518 (= e!880469 (and (bvsle from!2937 #b00000000000000000000000000000000) (bvsge #b00000000000000000000000000000000 (size!51528 a!3559))))))

(assert (= (and start!136816 res!1078594) b!1578517))

(assert (= (and b!1578517 res!1078595) b!1578518))

(declare-fun m!1450625 () Bool)

(assert (=> start!136816 m!1450625))

(declare-fun m!1450627 () Bool)

(assert (=> b!1578517 m!1450627))

(push 1)

(assert (not b!1578517))

(assert (not start!136816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

