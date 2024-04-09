; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136858 () Bool)

(assert start!136858)

(declare-fun res!1078756 () Bool)

(declare-fun e!880583 () Bool)

(assert (=> start!136858 (=> (not res!1078756) (not e!880583))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105778 0))(
  ( (array!105779 (arr!50992 (Array (_ BitVec 32) (_ BitVec 64))) (size!51543 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105778)

(assert (=> start!136858 (= res!1078756 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51543 a!3559)) (bvslt (size!51543 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136858 e!880583))

(assert (=> start!136858 true))

(declare-fun array_inv!39637 (array!105778) Bool)

(assert (=> start!136858 (array_inv!39637 a!3559)))

(declare-fun b!1578678 () Bool)

(declare-fun res!1078757 () Bool)

(assert (=> b!1578678 (=> (not res!1078757) (not e!880583))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578678 (= res!1078757 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578679 () Bool)

(declare-fun res!1078755 () Bool)

(assert (=> b!1578679 (=> (not res!1078755) (not e!880583))))

(assert (=> b!1578679 (= res!1078755 (bvsle from!2937 #b00000000000000000000000000000000))))

(declare-fun b!1578680 () Bool)

(assert (=> b!1578680 (= e!880583 (not (arrayContainsKey!0 a!3559 k!2792 #b00000000000000000000000000000000)))))

(assert (= (and start!136858 res!1078756) b!1578678))

(assert (= (and b!1578678 res!1078757) b!1578679))

(assert (= (and b!1578679 res!1078755) b!1578680))

(declare-fun m!1450739 () Bool)

(assert (=> start!136858 m!1450739))

(declare-fun m!1450741 () Bool)

(assert (=> b!1578678 m!1450741))

(declare-fun m!1450743 () Bool)

(assert (=> b!1578680 m!1450743))

(push 1)

(assert (not start!136858))

(assert (not b!1578678))

(assert (not b!1578680))

(check-sat)

