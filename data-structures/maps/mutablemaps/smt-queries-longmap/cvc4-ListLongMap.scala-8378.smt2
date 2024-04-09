; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101912 () Bool)

(assert start!101912)

(declare-fun b!1226871 () Bool)

(declare-fun res!815636 () Bool)

(declare-fun e!696694 () Bool)

(assert (=> b!1226871 (=> (not res!815636) (not e!696694))))

(declare-datatypes ((array!79194 0))(
  ( (array!79195 (arr!38219 (Array (_ BitVec 32) (_ BitVec 64))) (size!38756 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79194)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226871 (= res!815636 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1226872 () Bool)

(declare-fun res!815641 () Bool)

(assert (=> b!1226872 (=> (not res!815641) (not e!696694))))

(assert (=> b!1226872 (= res!815641 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38756 a!3806)) (bvslt from!3184 (size!38756 a!3806))))))

(declare-fun b!1226873 () Bool)

(declare-datatypes ((List!27170 0))(
  ( (Nil!27167) (Cons!27166 (h!28375 (_ BitVec 64)) (t!40640 List!27170)) )
))
(declare-fun acc!823 () List!27170)

(declare-fun noDuplicate!1692 (List!27170) Bool)

(assert (=> b!1226873 (= e!696694 (not (noDuplicate!1692 (Cons!27166 (select (arr!38219 a!3806) from!3184) acc!823))))))

(declare-fun b!1226874 () Bool)

(declare-fun res!815637 () Bool)

(assert (=> b!1226874 (=> (not res!815637) (not e!696694))))

(declare-fun contains!7085 (List!27170 (_ BitVec 64)) Bool)

(assert (=> b!1226874 (= res!815637 (not (contains!7085 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!815638 () Bool)

(assert (=> start!101912 (=> (not res!815638) (not e!696694))))

(assert (=> start!101912 (= res!815638 (bvslt (size!38756 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101912 e!696694))

(declare-fun array_inv!28995 (array!79194) Bool)

(assert (=> start!101912 (array_inv!28995 a!3806)))

(assert (=> start!101912 true))

(declare-fun b!1226875 () Bool)

(declare-fun res!815643 () Bool)

(assert (=> b!1226875 (=> (not res!815643) (not e!696694))))

(assert (=> b!1226875 (= res!815643 (noDuplicate!1692 acc!823))))

(declare-fun b!1226876 () Bool)

(declare-fun res!815645 () Bool)

(assert (=> b!1226876 (=> (not res!815645) (not e!696694))))

(assert (=> b!1226876 (= res!815645 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-fun b!1226877 () Bool)

(declare-fun res!815639 () Bool)

(assert (=> b!1226877 (=> (not res!815639) (not e!696694))))

(assert (=> b!1226877 (= res!815639 (not (contains!7085 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226878 () Bool)

(declare-fun res!815640 () Bool)

(assert (=> b!1226878 (=> (not res!815640) (not e!696694))))

(declare-fun arrayNoDuplicates!0 (array!79194 (_ BitVec 32) List!27170) Bool)

(assert (=> b!1226878 (= res!815640 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1226879 () Bool)

(declare-fun res!815642 () Bool)

(assert (=> b!1226879 (=> (not res!815642) (not e!696694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226879 (= res!815642 (validKeyInArray!0 (select (arr!38219 a!3806) from!3184)))))

(declare-fun b!1226880 () Bool)

(declare-fun res!815644 () Bool)

(assert (=> b!1226880 (=> (not res!815644) (not e!696694))))

(assert (=> b!1226880 (= res!815644 (validKeyInArray!0 k!2913))))

(assert (= (and start!101912 res!815638) b!1226880))

(assert (= (and b!1226880 res!815644) b!1226872))

(assert (= (and b!1226872 res!815641) b!1226875))

(assert (= (and b!1226875 res!815643) b!1226874))

(assert (= (and b!1226874 res!815637) b!1226877))

(assert (= (and b!1226877 res!815639) b!1226871))

(assert (= (and b!1226871 res!815636) b!1226878))

(assert (= (and b!1226878 res!815640) b!1226879))

(assert (= (and b!1226879 res!815642) b!1226876))

(assert (= (and b!1226876 res!815645) b!1226873))

(declare-fun m!1131831 () Bool)

(assert (=> b!1226878 m!1131831))

(declare-fun m!1131833 () Bool)

(assert (=> b!1226877 m!1131833))

(declare-fun m!1131835 () Bool)

(assert (=> b!1226879 m!1131835))

(assert (=> b!1226879 m!1131835))

(declare-fun m!1131837 () Bool)

(assert (=> b!1226879 m!1131837))

(declare-fun m!1131839 () Bool)

(assert (=> b!1226875 m!1131839))

(declare-fun m!1131841 () Bool)

(assert (=> start!101912 m!1131841))

(declare-fun m!1131843 () Bool)

(assert (=> b!1226871 m!1131843))

(declare-fun m!1131845 () Bool)

(assert (=> b!1226874 m!1131845))

(declare-fun m!1131847 () Bool)

(assert (=> b!1226880 m!1131847))

(assert (=> b!1226873 m!1131835))

(declare-fun m!1131849 () Bool)

(assert (=> b!1226873 m!1131849))

(push 1)

(assert (not b!1226880))

(assert (not start!101912))

(assert (not b!1226877))

(assert (not b!1226871))

(assert (not b!1226878))

(assert (not b!1226879))

(assert (not b!1226873))

(assert (not b!1226875))

(assert (not b!1226874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!133997 () Bool)

(declare-fun lt!558810 () Bool)

(declare-fun content!553 (List!27170) (Set (_ BitVec 64)))

(assert (=> d!133997 (= lt!558810 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!553 acc!823)))))

(declare-fun e!696732 () Bool)

(assert (=> d!133997 (= lt!558810 e!696732)))

(declare-fun res!815680 () Bool)

(assert (=> d!133997 (=> (not res!815680) (not e!696732))))

(assert (=> d!133997 (= res!815680 (is-Cons!27166 acc!823))))

(assert (=> d!133997 (= (contains!7085 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558810)))

(declare-fun b!1226919 () Bool)

(declare-fun e!696731 () Bool)

(assert (=> b!1226919 (= e!696732 e!696731)))

(declare-fun res!815681 () Bool)

(assert (=> b!1226919 (=> res!815681 e!696731)))

(assert (=> b!1226919 (= res!815681 (= (h!28375 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226920 () Bool)

(assert (=> b!1226920 (= e!696731 (contains!7085 (t!40640 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!133997 res!815680) b!1226919))

(assert (= (and b!1226919 (not res!815681)) b!1226920))

(declare-fun m!1131869 () Bool)

(assert (=> d!133997 m!1131869))

(declare-fun m!1131871 () Bool)

(assert (=> d!133997 m!1131871))

(declare-fun m!1131873 () Bool)

(assert (=> b!1226920 m!1131873))

(assert (=> b!1226877 d!133997))

(declare-fun d!134001 () Bool)

(declare-fun res!815693 () Bool)

(declare-fun e!696745 () Bool)

(assert (=> d!134001 (=> res!815693 e!696745)))

(assert (=> d!134001 (= res!815693 (= (select (arr!38219 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134001 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!696745)))

(declare-fun b!1226934 () Bool)

(declare-fun e!696746 () Bool)

(assert (=> b!1226934 (= e!696745 e!696746)))

(declare-fun res!815694 () Bool)

(assert (=> b!1226934 (=> (not res!815694) (not e!696746))))

(assert (=> b!1226934 (= res!815694 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38756 a!3806)))))

(declare-fun b!1226935 () Bool)

(assert (=> b!1226935 (= e!696746 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134001 (not res!815693)) b!1226934))

(assert (= (and b!1226934 res!815694) b!1226935))

(declare-fun m!1131887 () Bool)

(assert (=> d!134001 m!1131887))

(declare-fun m!1131889 () Bool)

(assert (=> b!1226935 m!1131889))

(assert (=> b!1226871 d!134001))

(declare-fun d!134017 () Bool)

(declare-fun lt!558811 () Bool)

(assert (=> d!134017 (= lt!558811 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!553 acc!823)))))

(declare-fun e!696748 () Bool)

(assert (=> d!134017 (= lt!558811 e!696748)))

(declare-fun res!815695 () Bool)

(assert (=> d!134017 (=> (not res!815695) (not e!696748))))

(assert (=> d!134017 (= res!815695 (is-Cons!27166 acc!823))))

(assert (=> d!134017 (= (contains!7085 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558811)))

(declare-fun b!1226936 () Bool)

(declare-fun e!696747 () Bool)

(assert (=> b!1226936 (= e!696748 e!696747)))

(declare-fun res!815696 () Bool)

(assert (=> b!1226936 (=> res!815696 e!696747)))

(assert (=> b!1226936 (= res!815696 (= (h!28375 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226937 () Bool)

(assert (=> b!1226937 (= e!696747 (contains!7085 (t!40640 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134017 res!815695) b!1226936))

(assert (= (and b!1226936 (not res!815696)) b!1226937))

(assert (=> d!134017 m!1131869))

(declare-fun m!1131891 () Bool)

(assert (=> d!134017 m!1131891))

(declare-fun m!1131893 () Bool)

(assert (=> b!1226937 m!1131893))

(assert (=> b!1226874 d!134017))

(declare-fun d!134019 () Bool)

(declare-fun res!815709 () Bool)

(declare-fun e!696761 () Bool)

(assert (=> d!134019 (=> res!815709 e!696761)))

(assert (=> d!134019 (= res!815709 (is-Nil!27167 acc!823))))

(assert (=> d!134019 (= (noDuplicate!1692 acc!823) e!696761)))

(declare-fun b!1226950 () Bool)

(declare-fun e!696762 () Bool)

(assert (=> b!1226950 (= e!696761 e!696762)))

(declare-fun res!815710 () Bool)

(assert (=> b!1226950 (=> (not res!815710) (not e!696762))))

(assert (=> b!1226950 (= res!815710 (not (contains!7085 (t!40640 acc!823) (h!28375 acc!823))))))

(declare-fun b!1226951 () Bool)

(assert (=> b!1226951 (= e!696762 (noDuplicate!1692 (t!40640 acc!823)))))

(assert (= (and d!134019 (not res!815709)) b!1226950))

(assert (= (and b!1226950 res!815710) b!1226951))

(declare-fun m!1131895 () Bool)

(assert (=> b!1226950 m!1131895))

(declare-fun m!1131897 () Bool)

(assert (=> b!1226951 m!1131897))

(assert (=> b!1226875 d!134019))

(declare-fun d!134025 () Bool)

(assert (=> d!134025 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1226880 d!134025))

