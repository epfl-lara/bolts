; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136828 () Bool)

(assert start!136828)

(declare-fun res!1078632 () Bool)

(declare-fun e!880505 () Bool)

(assert (=> start!136828 (=> (not res!1078632) (not e!880505))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105757 0))(
  ( (array!105758 (arr!50983 (Array (_ BitVec 32) (_ BitVec 64))) (size!51534 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105757)

(assert (=> start!136828 (= res!1078632 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51534 a!3559)) (bvslt (size!51534 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136828 e!880505))

(assert (=> start!136828 true))

(declare-fun array_inv!39628 (array!105757) Bool)

(assert (=> start!136828 (array_inv!39628 a!3559)))

(declare-fun b!1578555 () Bool)

(declare-fun res!1078634 () Bool)

(assert (=> b!1578555 (=> (not res!1078634) (not e!880505))))

(declare-fun k!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105757 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578555 (= res!1078634 (arrayContainsKey!0 a!3559 k!2792 from!2937))))

(declare-fun b!1578556 () Bool)

(declare-fun res!1078633 () Bool)

(assert (=> b!1578556 (=> (not res!1078633) (not e!880505))))

(assert (=> b!1578556 (= res!1078633 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51534 a!3559))))))

(declare-fun b!1578557 () Bool)

(assert (=> b!1578557 (= e!880505 (not (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001))))))

(assert (= (and start!136828 res!1078632) b!1578555))

(assert (= (and b!1578555 res!1078634) b!1578556))

(assert (= (and b!1578556 res!1078633) b!1578557))

(declare-fun m!1450649 () Bool)

(assert (=> start!136828 m!1450649))

(declare-fun m!1450651 () Bool)

(assert (=> b!1578555 m!1450651))

(declare-fun m!1450653 () Bool)

(assert (=> b!1578557 m!1450653))

(push 1)

(assert (not start!136828))

(assert (not b!1578555))

(assert (not b!1578557))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166057 () Bool)

(assert (=> d!166057 (= (array_inv!39628 a!3559) (bvsge (size!51534 a!3559) #b00000000000000000000000000000000))))

(assert (=> start!136828 d!166057))

(declare-fun d!166059 () Bool)

(declare-fun res!1078665 () Bool)

(declare-fun e!880531 () Bool)

(assert (=> d!166059 (=> res!1078665 e!880531)))

(assert (=> d!166059 (= res!1078665 (= (select (arr!50983 a!3559) from!2937) k!2792))))

(assert (=> d!166059 (= (arrayContainsKey!0 a!3559 k!2792 from!2937) e!880531)))

(declare-fun b!1578588 () Bool)

(declare-fun e!880532 () Bool)

(assert (=> b!1578588 (= e!880531 e!880532)))

(declare-fun res!1078666 () Bool)

(assert (=> b!1578588 (=> (not res!1078666) (not e!880532))))

(assert (=> b!1578588 (= res!1078666 (bvslt (bvadd from!2937 #b00000000000000000000000000000001) (size!51534 a!3559)))))

(declare-fun b!1578589 () Bool)

(assert (=> b!1578589 (= e!880532 (arrayContainsKey!0 a!3559 k!2792 (bvadd from!2937 #b00000000000000000000000000000001)))))

(assert (= (and d!166059 (not res!1078665)) b!1578588))

(assert (= (and b!1578588 res!1078666) b!1578589))

(declare-fun m!1450675 () Bool)

(assert (=> d!166059 m!1450675))

(declare-fun m!1450677 () Bool)

(assert (=> b!1578589 m!1450677))

(assert (=> b!1578555 d!166059))

(declare-fun d!166067 () Bool)

(declare-fun res!1078671 () Bool)

(declare-fun e!880537 () Bool)

(assert (=> d!166067 (=> res!1078671 e!880537)))

(assert (=> d!166067 (= res!1078671 (= (select (arr!50983 a!3559) (bvsub from!2937 #b00000000000000000000000000000001)) k!2792))))

(assert (=> d!166067 (= (arrayContainsKey!0 a!3559 k!2792 (bvsub from!2937 #b00000000000000000000000000000001)) e!880537)))

(declare-fun b!1578592 () Bool)

(declare-fun e!880538 () Bool)

(assert (=> b!1578592 (= e!880537 e!880538)))

(declare-fun res!1078672 () Bool)

(assert (=> b!1578592 (=> (not res!1078672) (not e!880538))))

(assert (=> b!1578592 (= res!1078672 (bvslt (bvadd (bvsub from!2937 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!51534 a!3559)))))

(declare-fun b!1578593 () Bool)

(assert (=> b!1578593 (= e!880538 (arrayContainsKey!0 a!3559 k!2792 (bvadd (bvsub from!2937 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (= (and d!166067 (not res!1078671)) b!1578592))

(assert (= (and b!1578592 res!1078672) b!1578593))

(declare-fun m!1450679 () Bool)

(assert (=> d!166067 m!1450679))

(declare-fun m!1450681 () Bool)

(assert (=> b!1578593 m!1450681))

(assert (=> b!1578557 d!166067))

(push 1)

