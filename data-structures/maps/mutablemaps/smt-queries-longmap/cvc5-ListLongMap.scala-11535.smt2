; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134326 () Bool)

(assert start!134326)

(declare-fun b!1568271 () Bool)

(declare-fun e!874287 () Bool)

(assert (=> b!1568271 (= e!874287 false)))

(declare-fun lt!673099 () Bool)

(declare-fun e!874285 () Bool)

(assert (=> b!1568271 (= lt!673099 e!874285)))

(declare-fun res!1072100 () Bool)

(assert (=> b!1568271 (=> res!1072100 e!874285)))

(declare-datatypes ((array!104757 0))(
  ( (array!104758 (arr!50554 (Array (_ BitVec 32) (_ BitVec 64))) (size!51105 (_ BitVec 32))) )
))
(declare-fun a!3481 () array!104757)

(declare-fun from!2856 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1568271 (= res!1072100 (not (validKeyInArray!0 (select (arr!50554 a!3481) from!2856))))))

(declare-fun b!1568272 () Bool)

(declare-fun res!1072096 () Bool)

(assert (=> b!1568272 (=> (not res!1072096) (not e!874287))))

(declare-datatypes ((List!36865 0))(
  ( (Nil!36862) (Cons!36861 (h!38309 (_ BitVec 64)) (t!51780 List!36865)) )
))
(declare-fun acc!619 () List!36865)

(declare-fun contains!10424 (List!36865 (_ BitVec 64)) Bool)

(assert (=> b!1568272 (= res!1072096 (not (contains!10424 acc!619 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568273 () Bool)

(declare-fun res!1072097 () Bool)

(assert (=> b!1568273 (=> (not res!1072097) (not e!874287))))

(declare-fun noDuplicate!2715 (List!36865) Bool)

(assert (=> b!1568273 (= res!1072097 (noDuplicate!2715 acc!619))))

(declare-fun res!1072099 () Bool)

(assert (=> start!134326 (=> (not res!1072099) (not e!874287))))

(assert (=> start!134326 (= res!1072099 (and (bvsge from!2856 #b00000000000000000000000000000000) (bvsle from!2856 (size!51105 a!3481)) (bvslt (size!51105 a!3481) #b01111111111111111111111111111111)))))

(assert (=> start!134326 e!874287))

(assert (=> start!134326 true))

(declare-fun array_inv!39199 (array!104757) Bool)

(assert (=> start!134326 (array_inv!39199 a!3481)))

(declare-fun b!1568274 () Bool)

(declare-fun res!1072095 () Bool)

(assert (=> b!1568274 (=> (not res!1072095) (not e!874287))))

(assert (=> b!1568274 (= res!1072095 (not (contains!10424 acc!619 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1568275 () Bool)

(assert (=> b!1568275 (= e!874285 (not (contains!10424 acc!619 (select (arr!50554 a!3481) from!2856))))))

(declare-fun b!1568276 () Bool)

(declare-fun res!1072098 () Bool)

(assert (=> b!1568276 (=> (not res!1072098) (not e!874287))))

(assert (=> b!1568276 (= res!1072098 (bvslt from!2856 (size!51105 a!3481)))))

(assert (= (and start!134326 res!1072099) b!1568273))

(assert (= (and b!1568273 res!1072097) b!1568272))

(assert (= (and b!1568272 res!1072096) b!1568274))

(assert (= (and b!1568274 res!1072095) b!1568276))

(assert (= (and b!1568276 res!1072098) b!1568271))

(assert (= (and b!1568271 (not res!1072100)) b!1568275))

(declare-fun m!1442995 () Bool)

(assert (=> start!134326 m!1442995))

(declare-fun m!1442997 () Bool)

(assert (=> b!1568274 m!1442997))

(declare-fun m!1442999 () Bool)

(assert (=> b!1568272 m!1442999))

(declare-fun m!1443001 () Bool)

(assert (=> b!1568273 m!1443001))

(declare-fun m!1443003 () Bool)

(assert (=> b!1568275 m!1443003))

(assert (=> b!1568275 m!1443003))

(declare-fun m!1443005 () Bool)

(assert (=> b!1568275 m!1443005))

(assert (=> b!1568271 m!1443003))

(assert (=> b!1568271 m!1443003))

(declare-fun m!1443007 () Bool)

(assert (=> b!1568271 m!1443007))

(push 1)

(assert (not b!1568273))

(assert (not b!1568271))

(assert (not start!134326))

(assert (not b!1568275))

(assert (not b!1568272))

(assert (not b!1568274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

