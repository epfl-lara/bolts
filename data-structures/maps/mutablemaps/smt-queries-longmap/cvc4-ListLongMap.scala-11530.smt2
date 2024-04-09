; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134300 () Bool)

(assert start!134300)

(declare-datatypes ((array!104731 0))(
  ( (array!104732 (arr!50541 (Array (_ BitVec 32) (_ BitVec 64))) (size!51092 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104731)

(declare-datatypes ((List!36852 0))(
  ( (Nil!36849) (Cons!36848 (h!38296 (_ BitVec 64)) (t!51767 List!36852)) )
))
(declare-fun acc!619 () List!36852)

(declare-fun b!1568118 () Bool)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun e!874196 () Bool)

(declare-fun contains!10411 (List!36852 (_ BitVec 64)) Bool)

(assert (=> b!1568118 (= e!874196 (not (contains!10411 acc!619 (select (arr!50541 a!3481) from!2856))))))

(declare-fun b!1568119 () Bool)

(declare-fun e!874195 () Bool)

(assert (=> b!1568119 (= e!874195 false)))

(declare-fun lt!673060 () Bool)

(assert (=> b!1568119 (= lt!673060 e!874196)))

(declare-fun res!1071944 () Bool)

(assert (=> b!1568119 (=> res!1071944 e!874196)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568119 (= res!1071944 (not (validKeyInArray!0 (select (arr!50541 a!3481) from!2856))))))

(declare-fun b!1568120 () Bool)

(declare-fun res!1071946 () Bool)

(assert (=> b!1568120 (=> (not res!1071946) (not e!874195))))

(declare-fun noDuplicate!2702 (List!36852) Bool)

(assert (=> b!1568120 (= res!1071946 (noDuplicate!2702 acc!619))))

(declare-fun b!1568121 () Bool)

(declare-fun res!1071943 () Bool)

(assert (=> b!1568121 (=> (not res!1071943) (not e!874195))))

(assert (=> b!1568121 (= res!1071943 (not (contains!10411 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568122 () Bool)

(declare-fun res!1071947 () Bool)

(assert (=> b!1568122 (=> (not res!1071947) (not e!874195))))

(assert (=> b!1568122 (= res!1071947 (bvslt from!2856 (size!51092 a!3481)))))

(declare-fun res!1071945 () Bool)

(assert (=> start!134300 (=> (not res!1071945) (not e!874195))))

(assert (=> start!134300 (= res!1071945 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51092 a!3481)) (bvslt (size!51092 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134300 e!874195))

(assert (=> start!134300 true))

(declare-fun array_inv!39186 (array!104731) Bool)

(assert (=> start!134300 (array_inv!39186 a!3481)))

(declare-fun b!1568123 () Bool)

(declare-fun res!1071942 () Bool)

(assert (=> b!1568123 (=> (not res!1071942) (not e!874195))))

(assert (=> b!1568123 (= res!1071942 (not (contains!10411 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!134300 res!1071945) b!1568120))

(assert (= (and b!1568120 res!1071946) b!1568121))

(assert (= (and b!1568121 res!1071943) b!1568123))

(assert (= (and b!1568123 res!1071942) b!1568122))

(assert (= (and b!1568122 res!1071947) b!1568119))

(assert (= (and b!1568119 (not res!1071944)) b!1568118))

(declare-fun m!1442867 () Bool)

(assert (=> b!1568123 m!1442867))

(declare-fun m!1442869 () Bool)

(assert (=> b!1568118 m!1442869))

(assert (=> b!1568118 m!1442869))

(declare-fun m!1442871 () Bool)

(assert (=> b!1568118 m!1442871))

(declare-fun m!1442873 () Bool)

(assert (=> b!1568120 m!1442873))

(assert (=> b!1568119 m!1442869))

(assert (=> b!1568119 m!1442869))

(declare-fun m!1442875 () Bool)

(assert (=> b!1568119 m!1442875))

(declare-fun m!1442877 () Bool)

(assert (=> b!1568121 m!1442877))

(declare-fun m!1442879 () Bool)

(assert (=> start!134300 m!1442879))

(push 1)

(assert (not b!1568123))

(assert (not b!1568120))

(assert (not b!1568119))

(assert (not b!1568118))

(assert (not start!134300))

(assert (not b!1568121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

