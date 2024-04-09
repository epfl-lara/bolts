; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127690 () Bool)

(assert start!127690)

(declare-fun b!1499590 () Bool)

(declare-fun res!1020743 () Bool)

(declare-fun e!839363 () Bool)

(assert (=> b!1499590 (=> (not res!1020743) (not e!839363))))

(declare-datatypes ((array!99984 0))(
  ( (array!99985 (arr!48247 (Array (_ BitVec 32) (_ BitVec 64))) (size!48798 (_ BitVec 32))) )
))
(declare-fun a!2850 () array!99984)

(declare-fun index!625 () (_ BitVec 32))

(declare-fun j!87 () (_ BitVec 32))

(assert (=> b!1499590 (= res!1020743 (not (= (select (arr!48247 a!2850) index!625) (select (arr!48247 a!2850) j!87))))))

(declare-fun b!1499591 () Bool)

(declare-fun res!1020741 () Bool)

(assert (=> b!1499591 (=> (not res!1020741) (not e!839363))))

(declare-fun i!996 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1499591 (= res!1020741 (validKeyInArray!0 (select (arr!48247 a!2850) i!996)))))

(declare-fun b!1499592 () Bool)

(declare-fun res!1020738 () Bool)

(assert (=> b!1499592 (=> (not res!1020738) (not e!839363))))

(declare-fun vacantBefore!10 () (_ BitVec 32))

(declare-fun x!647 () (_ BitVec 32))

(declare-fun vacantAfter!10 () (_ BitVec 32))

(assert (=> b!1499592 (= res!1020738 (and (bvsge x!647 #b00000000000000000000000000000000) (bvsle x!647 #b01111111111111111111111111111110) (bvsge vacantBefore!10 #b00000000000000000000000000000000) (bvslt vacantBefore!10 (size!48798 a!2850)) (bvsge vacantAfter!10 #b00000000000000000000000000000000) (bvslt vacantAfter!10 (size!48798 a!2850)) (= (select (arr!48247 a!2850) vacantBefore!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!48247 a!2850) i!996 #b1000000000000000000000000000000000000000000000000000000000000000) vacantAfter!10) #b1000000000000000000000000000000000000000000000000000000000000000) (= vacantAfter!10 i!996) (bvsge index!625 #b00000000000000000000000000000000) (bvslt index!625 (size!48798 a!2850))))))

(declare-fun res!1020745 () Bool)

(assert (=> start!127690 (=> (not res!1020745) (not e!839363))))

(declare-fun mask!2661 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127690 (= res!1020745 (validMask!0 mask!2661))))

(assert (=> start!127690 e!839363))

(assert (=> start!127690 true))

(declare-fun array_inv!37192 (array!99984) Bool)

(assert (=> start!127690 (array_inv!37192 a!2850)))

(declare-fun b!1499593 () Bool)

(declare-fun res!1020740 () Bool)

(assert (=> b!1499593 (=> (not res!1020740) (not e!839363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99984 (_ BitVec 32)) Bool)

(assert (=> b!1499593 (= res!1020740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2850 mask!2661))))

(declare-fun b!1499594 () Bool)

(declare-fun res!1020746 () Bool)

(assert (=> b!1499594 (=> (not res!1020746) (not e!839363))))

(declare-datatypes ((SeekEntryResult!12476 0))(
  ( (MissingZero!12476 (index!52295 (_ BitVec 32))) (Found!12476 (index!52296 (_ BitVec 32))) (Intermediate!12476 (undefined!13288 Bool) (index!52297 (_ BitVec 32)) (x!133995 (_ BitVec 32))) (Undefined!12476) (MissingVacant!12476 (index!52298 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99984 (_ BitVec 32)) SeekEntryResult!12476)

(assert (=> b!1499594 (= res!1020746 (= (seekKeyOrZeroReturnVacant!0 x!647 index!625 vacantBefore!10 (select (arr!48247 a!2850) j!87) a!2850 mask!2661) (Found!12476 j!87)))))

(declare-fun b!1499595 () Bool)

(declare-fun res!1020747 () Bool)

(assert (=> b!1499595 (=> (not res!1020747) (not e!839363))))

(assert (=> b!1499595 (= res!1020747 (validKeyInArray!0 (select (arr!48247 a!2850) j!87)))))

(declare-fun b!1499596 () Bool)

(declare-fun res!1020742 () Bool)

(assert (=> b!1499596 (=> (not res!1020742) (not e!839363))))

(assert (=> b!1499596 (= res!1020742 (and (= (size!48798 a!2850) (bvadd #b00000000000000000000000000000001 mask!2661)) (bvsge i!996 #b00000000000000000000000000000000) (bvslt i!996 (size!48798 a!2850)) (bvsge j!87 #b00000000000000000000000000000000) (bvslt j!87 (size!48798 a!2850)) (not (= i!996 j!87))))))

(declare-fun b!1499597 () Bool)

(declare-fun e!839361 () Bool)

(assert (=> b!1499597 (= e!839361 false)))

(declare-fun lt!652738 () SeekEntryResult!12476)

(declare-fun lt!652737 () (_ BitVec 32))

(assert (=> b!1499597 (= lt!652738 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!647) lt!652737 vacantBefore!10 (select (arr!48247 a!2850) j!87) a!2850 mask!2661))))

(declare-fun b!1499598 () Bool)

(assert (=> b!1499598 (= e!839363 e!839361)))

(declare-fun res!1020739 () Bool)

(assert (=> b!1499598 (=> (not res!1020739) (not e!839361))))

(assert (=> b!1499598 (= res!1020739 (and (bvsge (bvadd #b00000000000000000000000000000001 x!647) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!647) #b01111111111111111111111111111110) (bvsge lt!652737 #b00000000000000000000000000000000) (bvslt lt!652737 (size!48798 a!2850))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1499598 (= lt!652737 (nextIndex!0 index!625 x!647 mask!2661))))

(declare-fun b!1499599 () Bool)

(declare-fun res!1020744 () Bool)

(assert (=> b!1499599 (=> (not res!1020744) (not e!839363))))

(declare-datatypes ((List!34919 0))(
  ( (Nil!34916) (Cons!34915 (h!36313 (_ BitVec 64)) (t!49620 List!34919)) )
))
(declare-fun arrayNoDuplicates!0 (array!99984 (_ BitVec 32) List!34919) Bool)

(assert (=> b!1499599 (= res!1020744 (arrayNoDuplicates!0 a!2850 #b00000000000000000000000000000000 Nil!34916))))

(assert (= (and start!127690 res!1020745) b!1499596))

(assert (= (and b!1499596 res!1020742) b!1499591))

(assert (= (and b!1499591 res!1020741) b!1499595))

(assert (= (and b!1499595 res!1020747) b!1499593))

(assert (= (and b!1499593 res!1020740) b!1499599))

(assert (= (and b!1499599 res!1020744) b!1499592))

(assert (= (and b!1499592 res!1020738) b!1499594))

(assert (= (and b!1499594 res!1020746) b!1499590))

(assert (= (and b!1499590 res!1020743) b!1499598))

(assert (= (and b!1499598 res!1020739) b!1499597))

(declare-fun m!1382841 () Bool)

(assert (=> b!1499597 m!1382841))

(assert (=> b!1499597 m!1382841))

(declare-fun m!1382843 () Bool)

(assert (=> b!1499597 m!1382843))

(assert (=> b!1499594 m!1382841))

(assert (=> b!1499594 m!1382841))

(declare-fun m!1382845 () Bool)

(assert (=> b!1499594 m!1382845))

(declare-fun m!1382847 () Bool)

(assert (=> start!127690 m!1382847))

(declare-fun m!1382849 () Bool)

(assert (=> start!127690 m!1382849))

(assert (=> b!1499595 m!1382841))

(assert (=> b!1499595 m!1382841))

(declare-fun m!1382851 () Bool)

(assert (=> b!1499595 m!1382851))

(declare-fun m!1382853 () Bool)

(assert (=> b!1499598 m!1382853))

(declare-fun m!1382855 () Bool)

(assert (=> b!1499599 m!1382855))

(declare-fun m!1382857 () Bool)

(assert (=> b!1499590 m!1382857))

(assert (=> b!1499590 m!1382841))

(declare-fun m!1382859 () Bool)

(assert (=> b!1499593 m!1382859))

(declare-fun m!1382861 () Bool)

(assert (=> b!1499591 m!1382861))

(assert (=> b!1499591 m!1382861))

(declare-fun m!1382863 () Bool)

(assert (=> b!1499591 m!1382863))

(declare-fun m!1382865 () Bool)

(assert (=> b!1499592 m!1382865))

(declare-fun m!1382867 () Bool)

(assert (=> b!1499592 m!1382867))

(declare-fun m!1382869 () Bool)

(assert (=> b!1499592 m!1382869))

(push 1)

