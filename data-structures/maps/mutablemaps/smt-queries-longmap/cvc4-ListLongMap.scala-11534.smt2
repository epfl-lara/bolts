; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134324 () Bool)

(assert start!134324)

(declare-fun b!1568253 () Bool)

(declare-fun res!1072081 () Bool)

(declare-fun e!874278 () Bool)

(assert (=> b!1568253 (=> (not res!1072081) (not e!874278))))

(declare-datatypes ((List!36864 0))(
  ( (Nil!36861) (Cons!36860 (h!38308 (_ BitVec 64)) (t!51779 List!36864)) )
))
(declare-fun acc!619 () List!36864)

(declare-fun contains!10423 (List!36864 (_ BitVec 64)) Bool)

(assert (=> b!1568253 (= res!1072081 (not (contains!10423 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((array!104755 0))(
  ( (array!104756 (arr!50553 (Array (_ BitVec 32) (_ BitVec 64))) (size!51104 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104755)

(declare-fun b!1568254 () Bool)

(declare-fun e!874276 () Bool)

(declare-fun from!2856 () (_ BitVec 32))

(assert (=> b!1568254 (= e!874276 (not (contains!10423 acc!619 (select (arr!50553 a!3481) from!2856))))))

(declare-fun b!1568255 () Bool)

(declare-fun res!1072080 () Bool)

(assert (=> b!1568255 (=> (not res!1072080) (not e!874278))))

(declare-fun noDuplicate!2714 (List!36864) Bool)

(assert (=> b!1568255 (= res!1072080 (noDuplicate!2714 acc!619))))

(declare-fun b!1568256 () Bool)

(declare-fun res!1072078 () Bool)

(assert (=> b!1568256 (=> (not res!1072078) (not e!874278))))

(assert (=> b!1568256 (= res!1072078 (not (contains!10423 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1072077 () Bool)

(assert (=> start!134324 (=> (not res!1072077) (not e!874278))))

(assert (=> start!134324 (= res!1072077 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51104 a!3481)) (bvslt (size!51104 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134324 e!874278))

(assert (=> start!134324 true))

(declare-fun array_inv!39198 (array!104755) Bool)

(assert (=> start!134324 (array_inv!39198 a!3481)))

(declare-fun b!1568257 () Bool)

(assert (=> b!1568257 (= e!874278 false)))

(declare-fun lt!673096 () Bool)

(assert (=> b!1568257 (= lt!673096 e!874276)))

(declare-fun res!1072079 () Bool)

(assert (=> b!1568257 (=> res!1072079 e!874276)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568257 (= res!1072079 (not (validKeyInArray!0 (select (arr!50553 a!3481) from!2856))))))

(declare-fun b!1568258 () Bool)

(declare-fun res!1072082 () Bool)

(assert (=> b!1568258 (=> (not res!1072082) (not e!874278))))

(assert (=> b!1568258 (= res!1072082 (bvslt from!2856 (size!51104 a!3481)))))

(assert (= (and start!134324 res!1072077) b!1568255))

(assert (= (and b!1568255 res!1072080) b!1568256))

(assert (= (and b!1568256 res!1072078) b!1568253))

(assert (= (and b!1568253 res!1072081) b!1568258))

(assert (= (and b!1568258 res!1072082) b!1568257))

(assert (= (and b!1568257 (not res!1072079)) b!1568254))

(declare-fun m!1442981 () Bool)

(assert (=> b!1568256 m!1442981))

(declare-fun m!1442983 () Bool)

(assert (=> b!1568253 m!1442983))

(declare-fun m!1442985 () Bool)

(assert (=> b!1568257 m!1442985))

(assert (=> b!1568257 m!1442985))

(declare-fun m!1442987 () Bool)

(assert (=> b!1568257 m!1442987))

(declare-fun m!1442989 () Bool)

(assert (=> b!1568255 m!1442989))

(assert (=> b!1568254 m!1442985))

(assert (=> b!1568254 m!1442985))

(declare-fun m!1442991 () Bool)

(assert (=> b!1568254 m!1442991))

(declare-fun m!1442993 () Bool)

(assert (=> start!134324 m!1442993))

(push 1)

(assert (not start!134324))

(assert (not b!1568255))

(assert (not b!1568257))

(assert (not b!1568256))

(assert (not b!1568253))

(assert (not b!1568254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

