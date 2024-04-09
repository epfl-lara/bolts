; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134304 () Bool)

(assert start!134304)

(declare-fun res!1071965 () Bool)

(declare-fun e!874208 () Bool)

(assert (=> start!134304 (=> (not res!1071965) (not e!874208))))

(declare-fun from!2856 () (_ BitVec 32))

(declare-datatypes ((array!104735 0))(
  ( (array!104736 (arr!50543 (Array (_ BitVec 32) (_ BitVec 64))) (size!51094 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104735)

(assert (=> start!134304 (= res!1071965 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51094 a!3481)) (bvslt (size!51094 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134304 e!874208))

(assert (=> start!134304 true))

(declare-fun array_inv!39188 (array!104735) Bool)

(assert (=> start!134304 (array_inv!39188 a!3481)))

(declare-fun b!1568139 () Bool)

(declare-fun res!1071963 () Bool)

(assert (=> b!1568139 (=> (not res!1071963) (not e!874208))))

(declare-datatypes ((List!36854 0))(
  ( (Nil!36851) (Cons!36850 (h!38298 (_ BitVec 64)) (t!51769 List!36854)) )
))
(declare-fun acc!619 () List!36854)

(declare-fun noDuplicate!2704 (List!36854) Bool)

(assert (=> b!1568139 (= res!1071963 (noDuplicate!2704 acc!619))))

(declare-fun b!1568140 () Bool)

(declare-fun res!1071964 () Bool)

(assert (=> b!1568140 (=> (not res!1071964) (not e!874208))))

(declare-fun contains!10413 (List!36854 (_ BitVec 64)) Bool)

(assert (=> b!1568140 (= res!1071964 (not (contains!10413 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568141 () Bool)

(assert (=> b!1568141 (= e!874208 false)))

(declare-fun lt!673066 () Bool)

(assert (=> b!1568141 (= lt!673066 (contains!10413 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!134304 res!1071965) b!1568139))

(assert (= (and b!1568139 res!1071963) b!1568140))

(assert (= (and b!1568140 res!1071964) b!1568141))

(declare-fun m!1442889 () Bool)

(assert (=> start!134304 m!1442889))

(declare-fun m!1442891 () Bool)

(assert (=> b!1568139 m!1442891))

(declare-fun m!1442893 () Bool)

(assert (=> b!1568140 m!1442893))

(declare-fun m!1442895 () Bool)

(assert (=> b!1568141 m!1442895))

(check-sat (not b!1568140) (not b!1568141) (not start!134304) (not b!1568139))
(check-sat)
