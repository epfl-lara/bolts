; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134310 () Bool)

(assert start!134310)

(declare-fun res!1071990 () Bool)

(declare-fun e!874227 () Bool)

(assert (=> start!134310 (=> (not res!1071990) (not e!874227))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104741 0))(
  ( (array!104742 (arr!50546 (Array (_ BitVec 32) (_ BitVec 64))) (size!51097 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104741)

(assert (=> start!134310 (= res!1071990 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51097 a!3481)) (bvslt (size!51097 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134310 e!874227))

(assert (=> start!134310 true))

(declare-fun array_inv!39191 (array!104741) Bool)

(assert (=> start!134310 (array_inv!39191 a!3481)))

(declare-fun b!1568166 () Bool)

(declare-fun res!1071991 () Bool)

(assert (=> b!1568166 (=> (not res!1071991) (not e!874227))))

(declare-datatypes ((List!36857 0))(
  ( (Nil!36854) (Cons!36853 (h!38301 (_ BitVec 64)) (t!51772 List!36857)) )
))
(declare-fun acc!619 () List!36857)

(declare-fun noDuplicate!2707 (List!36857) Bool)

(assert (=> b!1568166 (= res!1071991 (noDuplicate!2707 acc!619))))

(declare-fun b!1568167 () Bool)

(declare-fun res!1071992 () Bool)

(assert (=> b!1568167 (=> (not res!1071992) (not e!874227))))

(declare-fun contains!10416 (List!36857 (_ BitVec 64)) Bool)

(assert (=> b!1568167 (= res!1071992 (not (contains!10416 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568168 () Bool)

(assert (=> b!1568168 (= e!874227 false)))

(declare-fun lt!673075 () Bool)

(assert (=> b!1568168 (= lt!673075 (contains!10416 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134310 res!1071990) b!1568166))

(assert (= (and b!1568166 res!1071991) b!1568167))

(assert (= (and b!1568167 res!1071992) b!1568168))

(declare-fun m!1442913 () Bool)

(assert (=> start!134310 m!1442913))

(declare-fun m!1442915 () Bool)

(assert (=> b!1568166 m!1442915))

(declare-fun m!1442917 () Bool)

(assert (=> b!1568167 m!1442917))

(declare-fun m!1442919 () Bool)

(assert (=> b!1568168 m!1442919))

(check-sat (not b!1568167) (not b!1568166) (not b!1568168) (not start!134310))
(check-sat)
