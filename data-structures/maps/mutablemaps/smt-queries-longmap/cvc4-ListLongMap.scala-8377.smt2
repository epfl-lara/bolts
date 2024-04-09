; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101906 () Bool)

(assert start!101906)

(declare-fun b!1226784 () Bool)

(declare-fun res!815552 () Bool)

(declare-fun e!696675 () Bool)

(assert (=> b!1226784 (=> (not res!815552) (not e!696675))))

(declare-datatypes ((List!27167 0))(
  ( (Nil!27164) (Cons!27163 (h!28372 (_ BitVec 64)) (t!40637 List!27167)) )
))
(declare-fun acc!823 () List!27167)

(declare-fun contains!7082 (List!27167 (_ BitVec 64)) Bool)

(assert (=> b!1226784 (= res!815552 (not (contains!7082 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226785 () Bool)

(declare-fun res!815553 () Bool)

(assert (=> b!1226785 (=> (not res!815553) (not e!696675))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79188 0))(
  ( (array!79189 (arr!38216 (Array (_ BitVec 32) (_ BitVec 64))) (size!38753 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79188)

(assert (=> b!1226785 (= res!815553 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38753 a!3806)) (bvslt from!3184 (size!38753 a!3806))))))

(declare-fun b!1226786 () Bool)

(declare-fun res!815551 () Bool)

(assert (=> b!1226786 (=> (not res!815551) (not e!696675))))

(declare-fun noDuplicate!1689 (List!27167) Bool)

(assert (=> b!1226786 (= res!815551 (noDuplicate!1689 acc!823))))

(declare-fun b!1226787 () Bool)

(declare-fun res!815549 () Bool)

(assert (=> b!1226787 (=> (not res!815549) (not e!696675))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226787 (= res!815549 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1226788 () Bool)

(declare-fun res!815554 () Bool)

(assert (=> b!1226788 (=> (not res!815554) (not e!696675))))

(assert (=> b!1226788 (= res!815554 (not (contains!7082 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226789 () Bool)

(assert (=> b!1226789 (= e!696675 false)))

(declare-fun lt!558803 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79188 (_ BitVec 32) List!27167) Bool)

(assert (=> b!1226789 (= lt!558803 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1226790 () Bool)

(declare-fun res!815555 () Bool)

(assert (=> b!1226790 (=> (not res!815555) (not e!696675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226790 (= res!815555 (validKeyInArray!0 k!2913))))

(declare-fun res!815550 () Bool)

(assert (=> start!101906 (=> (not res!815550) (not e!696675))))

(assert (=> start!101906 (= res!815550 (bvslt (size!38753 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101906 e!696675))

(declare-fun array_inv!28992 (array!79188) Bool)

(assert (=> start!101906 (array_inv!28992 a!3806)))

(assert (=> start!101906 true))

(assert (= (and start!101906 res!815550) b!1226790))

(assert (= (and b!1226790 res!815555) b!1226785))

(assert (= (and b!1226785 res!815553) b!1226786))

(assert (= (and b!1226786 res!815551) b!1226784))

(assert (= (and b!1226784 res!815552) b!1226788))

(assert (= (and b!1226788 res!815554) b!1226787))

(assert (= (and b!1226787 res!815549) b!1226789))

(declare-fun m!1131777 () Bool)

(assert (=> b!1226784 m!1131777))

(declare-fun m!1131779 () Bool)

(assert (=> b!1226790 m!1131779))

(declare-fun m!1131781 () Bool)

(assert (=> b!1226787 m!1131781))

(declare-fun m!1131783 () Bool)

(assert (=> b!1226786 m!1131783))

(declare-fun m!1131785 () Bool)

(assert (=> b!1226788 m!1131785))

(declare-fun m!1131787 () Bool)

(assert (=> start!101906 m!1131787))

(declare-fun m!1131789 () Bool)

(assert (=> b!1226789 m!1131789))

(push 1)

(assert (not b!1226789))

(assert (not b!1226790))

(assert (not start!101906))

(assert (not b!1226786))

(assert (not b!1226787))

(assert (not b!1226784))

(assert (not b!1226788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

