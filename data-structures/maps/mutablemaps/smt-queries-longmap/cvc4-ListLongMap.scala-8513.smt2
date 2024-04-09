; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103894 () Bool)

(assert start!103894)

(declare-fun res!828991 () Bool)

(declare-fun e!704805 () Bool)

(assert (=> start!103894 (=> (not res!828991) (not e!704805))))

(declare-datatypes ((array!79947 0))(
  ( (array!79948 (arr!38564 (Array (_ BitVec 32) (_ BitVec 64))) (size!39101 (_ BitVec 32))) )
))
(declare-fun a!3892 () array!79947)

(declare-fun newFrom!287 () (_ BitVec 32))

(declare-fun from!3270 () (_ BitVec 32))

(assert (=> start!103894 (= res!828991 (and (bvslt (size!39101 a!3892) #b01111111111111111111111111111111) (bvsge from!3270 #b00000000000000000000000000000000) (bvsle from!3270 (size!39101 a!3892)) (bvsge newFrom!287 from!3270) (bvsle newFrom!287 (size!39101 a!3892))))))

(assert (=> start!103894 e!704805))

(declare-fun array_inv!29340 (array!79947) Bool)

(assert (=> start!103894 (array_inv!29340 a!3892)))

(assert (=> start!103894 true))

(declare-fun b!1243087 () Bool)

(declare-fun res!828990 () Bool)

(assert (=> b!1243087 (=> (not res!828990) (not e!704805))))

(declare-datatypes ((List!27545 0))(
  ( (Nil!27542) (Cons!27541 (h!28750 (_ BitVec 64)) (t!41021 List!27545)) )
))
(declare-fun noDuplicate!2007 (List!27545) Bool)

(assert (=> b!1243087 (= res!828990 (noDuplicate!2007 Nil!27542))))

(declare-fun b!1243088 () Bool)

(declare-fun e!704807 () Bool)

(assert (=> b!1243088 (= e!704805 e!704807)))

(declare-fun res!828989 () Bool)

(assert (=> b!1243088 (=> res!828989 e!704807)))

(declare-fun contains!7417 (List!27545 (_ BitVec 64)) Bool)

(assert (=> b!1243088 (= res!828989 (contains!7417 Nil!27542 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1243089 () Bool)

(assert (=> b!1243089 (= e!704807 (contains!7417 Nil!27542 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!103894 res!828991) b!1243087))

(assert (= (and b!1243087 res!828990) b!1243088))

(assert (= (and b!1243088 (not res!828989)) b!1243089))

(declare-fun m!1145743 () Bool)

(assert (=> start!103894 m!1145743))

(declare-fun m!1145745 () Bool)

(assert (=> b!1243087 m!1145745))

(declare-fun m!1145747 () Bool)

(assert (=> b!1243088 m!1145747))

(declare-fun m!1145749 () Bool)

(assert (=> b!1243089 m!1145749))

(push 1)

(assert (not b!1243087))

(assert (not start!103894))

(assert (not b!1243088))

(assert (not b!1243089))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136985 () Bool)

(declare-fun res!829016 () Bool)

(declare-fun e!704832 () Bool)

(assert (=> d!136985 (=> res!829016 e!704832)))

(assert (=> d!136985 (= res!829016 (is-Nil!27542 Nil!27542))))

(assert (=> d!136985 (= (noDuplicate!2007 Nil!27542) e!704832)))

(declare-fun b!1243114 () Bool)

(declare-fun e!704833 () Bool)

(assert (=> b!1243114 (= e!704832 e!704833)))

(declare-fun res!829017 () Bool)

(assert (=> b!1243114 (=> (not res!829017) (not e!704833))))

(assert (=> b!1243114 (= res!829017 (not (contains!7417 (t!41021 Nil!27542) (h!28750 Nil!27542))))))

(declare-fun b!1243115 () Bool)

(assert (=> b!1243115 (= e!704833 (noDuplicate!2007 (t!41021 Nil!27542)))))

(assert (= (and d!136985 (not res!829016)) b!1243114))

(assert (= (and b!1243114 res!829017) b!1243115))

(declare-fun m!1145771 () Bool)

(assert (=> b!1243114 m!1145771))

(declare-fun m!1145773 () Bool)

(assert (=> b!1243115 m!1145773))

(assert (=> b!1243087 d!136985))

(declare-fun d!136989 () Bool)

(assert (=> d!136989 (= (array_inv!29340 a!3892) (bvsge (size!39101 a!3892) #b00000000000000000000000000000000))))

(assert (=> start!103894 d!136989))

(declare-fun d!136991 () Bool)

(declare-fun lt!562266 () Bool)

(declare-fun content!616 (List!27545) (Set (_ BitVec 64)))

(assert (=> d!136991 (= lt!562266 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!616 Nil!27542)))))

(declare-fun e!704847 () Bool)

