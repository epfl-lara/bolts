; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134286 () Bool)

(assert start!134286)

(declare-fun b!1567992 () Bool)

(declare-fun res!1071818 () Bool)

(declare-fun e!874134 () Bool)

(assert (=> b!1567992 (=> (not res!1071818) (not e!874134))))

(declare-datatypes ((List!36845 0))(
  ( (Nil!36842) (Cons!36841 (h!38289 (_ BitVec 64)) (t!51760 List!36845)) )
))
(declare-fun acc!619 () List!36845)

(declare-fun contains!10404 (List!36845 (_ BitVec 64)) Bool)

(assert (=> b!1567992 (= res!1071818 (not (contains!10404 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1567993 () Bool)

(declare-datatypes ((array!104717 0))(
  ( (array!104718 (arr!50534 (Array (_ BitVec 32) (_ BitVec 64))) (size!51085 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104717)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun e!874132 () Bool)

(assert (=> b!1567993 (= e!874132 (not (contains!10404 acc!619 (select (arr!50534 a!3481) from!2856))))))

(declare-fun b!1567994 () Bool)

(declare-fun res!1071820 () Bool)

(assert (=> b!1567994 (=> (not res!1071820) (not e!874134))))

(assert (=> b!1567994 (= res!1071820 (bvslt from!2856 (size!51085 a!3481)))))

(declare-fun b!1567995 () Bool)

(assert (=> b!1567995 (= e!874134 false)))

(declare-fun lt!673039 () Bool)

(assert (=> b!1567995 (= lt!673039 e!874132)))

(declare-fun res!1071819 () Bool)

(assert (=> b!1567995 (=> res!1071819 e!874132)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1567995 (= res!1071819 (not (validKeyInArray!0 (select (arr!50534 a!3481) from!2856))))))

(declare-fun b!1567996 () Bool)

(declare-fun res!1071817 () Bool)

(assert (=> b!1567996 (=> (not res!1071817) (not e!874134))))

(assert (=> b!1567996 (= res!1071817 (not (contains!10404 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1071821 () Bool)

(assert (=> start!134286 (=> (not res!1071821) (not e!874134))))

(assert (=> start!134286 (= res!1071821 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51085 a!3481)) (bvslt (size!51085 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134286 e!874134))

(assert (=> start!134286 true))

(declare-fun array_inv!39179 (array!104717) Bool)

(assert (=> start!134286 (array_inv!39179 a!3481)))

(declare-fun b!1567997 () Bool)

(declare-fun res!1071816 () Bool)

(assert (=> b!1567997 (=> (not res!1071816) (not e!874134))))

(declare-fun noDuplicate!2695 (List!36845) Bool)

(assert (=> b!1567997 (= res!1071816 (noDuplicate!2695 acc!619))))

(assert (= (and start!134286 res!1071821) b!1567997))

(assert (= (and b!1567997 res!1071816) b!1567992))

(assert (= (and b!1567992 res!1071818) b!1567996))

(assert (= (and b!1567996 res!1071817) b!1567994))

(assert (= (and b!1567994 res!1071820) b!1567995))

(assert (= (and b!1567995 (not res!1071819)) b!1567993))

(declare-fun m!1442769 () Bool)

(assert (=> b!1567997 m!1442769))

(declare-fun m!1442771 () Bool)

(assert (=> b!1567995 m!1442771))

(assert (=> b!1567995 m!1442771))

(declare-fun m!1442773 () Bool)

(assert (=> b!1567995 m!1442773))

(declare-fun m!1442775 () Bool)

(assert (=> start!134286 m!1442775))

(assert (=> b!1567993 m!1442771))

(assert (=> b!1567993 m!1442771))

(declare-fun m!1442777 () Bool)

(assert (=> b!1567993 m!1442777))

(declare-fun m!1442779 () Bool)

(assert (=> b!1567996 m!1442779))

(declare-fun m!1442781 () Bool)

(assert (=> b!1567992 m!1442781))

(check-sat (not b!1567993) (not b!1567995) (not b!1567997) (not b!1567992) (not b!1567996) (not start!134286))
