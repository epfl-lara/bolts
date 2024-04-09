; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134316 () Bool)

(assert start!134316)

(declare-fun res!1072018 () Bool)

(declare-fun e!874245 () Bool)

(assert (=> start!134316 (=> (not res!1072018) (not e!874245))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104747 0))(
  ( (array!104748 (arr!50549 (Array (_ BitVec 32) (_ BitVec 64))) (size!51100 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104747)

(assert (=> start!134316 (= res!1072018 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51100 a!3481)) (bvslt (size!51100 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134316 e!874245))

(assert (=> start!134316 true))

(declare-fun array_inv!39194 (array!104747) Bool)

(assert (=> start!134316 (array_inv!39194 a!3481)))

(declare-fun b!1568193 () Bool)

(declare-fun res!1072017 () Bool)

(assert (=> b!1568193 (=> (not res!1072017) (not e!874245))))

(declare-datatypes ((List!36860 0))(
  ( (Nil!36857) (Cons!36856 (h!38304 (_ BitVec 64)) (t!51775 List!36860)) )
))
(declare-fun acc!619 () List!36860)

(declare-fun noDuplicate!2710 (List!36860) Bool)

(assert (=> b!1568193 (= res!1072017 (noDuplicate!2710 acc!619))))

(declare-fun b!1568194 () Bool)

(declare-fun res!1072019 () Bool)

(assert (=> b!1568194 (=> (not res!1072019) (not e!874245))))

(declare-fun contains!10419 (List!36860 (_ BitVec 64)) Bool)

(assert (=> b!1568194 (= res!1072019 (not (contains!10419 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568195 () Bool)

(assert (=> b!1568195 (= e!874245 false)))

(declare-fun lt!673084 () Bool)

(assert (=> b!1568195 (= lt!673084 (contains!10419 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134316 res!1072018) b!1568193))

(assert (= (and b!1568193 res!1072017) b!1568194))

(assert (= (and b!1568194 res!1072019) b!1568195))

(declare-fun m!1442937 () Bool)

(assert (=> start!134316 m!1442937))

(declare-fun m!1442939 () Bool)

(assert (=> b!1568193 m!1442939))

(declare-fun m!1442941 () Bool)

(assert (=> b!1568194 m!1442941))

(declare-fun m!1442943 () Bool)

(assert (=> b!1568195 m!1442943))

(check-sat (not b!1568194) (not b!1568195) (not start!134316) (not b!1568193))
(check-sat)
