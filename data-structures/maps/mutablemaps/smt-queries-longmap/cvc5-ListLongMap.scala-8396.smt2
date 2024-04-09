; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102196 () Bool)

(assert start!102196)

(declare-fun b!1229609 () Bool)

(declare-fun res!818206 () Bool)

(declare-fun e!697906 () Bool)

(assert (=> b!1229609 (=> (not res!818206) (not e!697906))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229609 (= res!818206 (validKeyInArray!0 k!2913))))

(declare-fun b!1229610 () Bool)

(declare-fun e!697904 () Bool)

(assert (=> b!1229610 (= e!697904 true)))

(declare-datatypes ((array!79310 0))(
  ( (array!79311 (arr!38271 (Array (_ BitVec 32) (_ BitVec 64))) (size!38808 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79310)

(declare-datatypes ((List!27222 0))(
  ( (Nil!27219) (Cons!27218 (h!28427 (_ BitVec 64)) (t!40692 List!27222)) )
))
(declare-fun lt!559171 () List!27222)

(declare-fun lt!559170 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun contains!7137 (List!27222 (_ BitVec 64)) Bool)

(assert (=> b!1229610 (= lt!559170 (contains!7137 lt!559171 (select (arr!38271 a!3806) from!3184)))))

(declare-fun b!1229611 () Bool)

(assert (=> b!1229611 (= e!697906 (not e!697904))))

(declare-fun res!818202 () Bool)

(assert (=> b!1229611 (=> res!818202 e!697904)))

(assert (=> b!1229611 (= res!818202 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229611 (= lt!559171 (Cons!27218 (select (arr!38271 a!3806) from!3184) Nil!27219))))

(declare-fun e!697905 () Bool)

(assert (=> b!1229611 e!697905))

(declare-fun res!818201 () Bool)

(assert (=> b!1229611 (=> (not res!818201) (not e!697905))))

(declare-fun arrayNoDuplicates!0 (array!79310 (_ BitVec 32) List!27222) Bool)

(assert (=> b!1229611 (= res!818201 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27219))))

(declare-fun acc!823 () List!27222)

(declare-datatypes ((Unit!40682 0))(
  ( (Unit!40683) )
))
(declare-fun lt!559172 () Unit!40682)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79310 List!27222 List!27222 (_ BitVec 32)) Unit!40682)

(assert (=> b!1229611 (= lt!559172 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27219 from!3184))))

(assert (=> b!1229611 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27218 (select (arr!38271 a!3806) from!3184) acc!823))))

(declare-fun b!1229612 () Bool)

(declare-fun res!818200 () Bool)

(assert (=> b!1229612 (=> res!818200 e!697904)))

(assert (=> b!1229612 (= res!818200 (contains!7137 lt!559171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229613 () Bool)

(assert (=> b!1229613 (= e!697905 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27218 (select (arr!38271 a!3806) from!3184) Nil!27219)))))

(declare-fun b!1229614 () Bool)

(declare-fun res!818207 () Bool)

(assert (=> b!1229614 (=> (not res!818207) (not e!697906))))

(assert (=> b!1229614 (= res!818207 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229615 () Bool)

(declare-fun res!818205 () Bool)

(assert (=> b!1229615 (=> (not res!818205) (not e!697906))))

(declare-fun noDuplicate!1744 (List!27222) Bool)

(assert (=> b!1229615 (= res!818205 (noDuplicate!1744 acc!823))))

(declare-fun res!818210 () Bool)

(assert (=> start!102196 (=> (not res!818210) (not e!697906))))

(assert (=> start!102196 (= res!818210 (bvslt (size!38808 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102196 e!697906))

(declare-fun array_inv!29047 (array!79310) Bool)

(assert (=> start!102196 (array_inv!29047 a!3806)))

(assert (=> start!102196 true))

(declare-fun b!1229616 () Bool)

(declare-fun res!818203 () Bool)

(assert (=> b!1229616 (=> (not res!818203) (not e!697906))))

(assert (=> b!1229616 (= res!818203 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38808 a!3806)) (bvslt from!3184 (size!38808 a!3806))))))

(declare-fun b!1229617 () Bool)

(declare-fun res!818211 () Bool)

(assert (=> b!1229617 (=> res!818211 e!697904)))

(assert (=> b!1229617 (= res!818211 (not (noDuplicate!1744 lt!559171)))))

(declare-fun b!1229618 () Bool)

(declare-fun res!818209 () Bool)

(assert (=> b!1229618 (=> (not res!818209) (not e!697906))))

(assert (=> b!1229618 (= res!818209 (not (contains!7137 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229619 () Bool)

(declare-fun res!818208 () Bool)

(assert (=> b!1229619 (=> (not res!818208) (not e!697906))))

(assert (=> b!1229619 (= res!818208 (not (contains!7137 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229620 () Bool)

(declare-fun res!818213 () Bool)

(assert (=> b!1229620 (=> (not res!818213) (not e!697906))))

(assert (=> b!1229620 (= res!818213 (validKeyInArray!0 (select (arr!38271 a!3806) from!3184)))))

(declare-fun b!1229621 () Bool)

(declare-fun res!818204 () Bool)

(assert (=> b!1229621 (=> (not res!818204) (not e!697906))))

(declare-fun arrayContainsKey!0 (array!79310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229621 (= res!818204 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229622 () Bool)

(declare-fun res!818212 () Bool)

(assert (=> b!1229622 (=> res!818212 e!697904)))

(assert (=> b!1229622 (= res!818212 (contains!7137 lt!559171 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102196 res!818210) b!1229609))

(assert (= (and b!1229609 res!818206) b!1229616))

(assert (= (and b!1229616 res!818203) b!1229615))

(assert (= (and b!1229615 res!818205) b!1229619))

(assert (= (and b!1229619 res!818208) b!1229618))

(assert (= (and b!1229618 res!818209) b!1229621))

(assert (= (and b!1229621 res!818204) b!1229614))

(assert (= (and b!1229614 res!818207) b!1229620))

(assert (= (and b!1229620 res!818213) b!1229611))

(assert (= (and b!1229611 res!818201) b!1229613))

(assert (= (and b!1229611 (not res!818202)) b!1229617))

(assert (= (and b!1229617 (not res!818211)) b!1229612))

(assert (= (and b!1229612 (not res!818200)) b!1229622))

(assert (= (and b!1229622 (not res!818212)) b!1229610))

(declare-fun m!1134197 () Bool)

(assert (=> b!1229614 m!1134197))

(declare-fun m!1134199 () Bool)

(assert (=> b!1229618 m!1134199))

(declare-fun m!1134201 () Bool)

(assert (=> b!1229615 m!1134201))

(declare-fun m!1134203 () Bool)

(assert (=> b!1229617 m!1134203))

(declare-fun m!1134205 () Bool)

(assert (=> b!1229609 m!1134205))

(declare-fun m!1134207 () Bool)

(assert (=> b!1229610 m!1134207))

(assert (=> b!1229610 m!1134207))

(declare-fun m!1134209 () Bool)

(assert (=> b!1229610 m!1134209))

(declare-fun m!1134211 () Bool)

(assert (=> b!1229619 m!1134211))

(declare-fun m!1134213 () Bool)

(assert (=> b!1229621 m!1134213))

(assert (=> b!1229620 m!1134207))

(assert (=> b!1229620 m!1134207))

(declare-fun m!1134215 () Bool)

(assert (=> b!1229620 m!1134215))

(declare-fun m!1134217 () Bool)

(assert (=> start!102196 m!1134217))

(declare-fun m!1134219 () Bool)

(assert (=> b!1229622 m!1134219))

(assert (=> b!1229613 m!1134207))

(declare-fun m!1134221 () Bool)

(assert (=> b!1229613 m!1134221))

(declare-fun m!1134223 () Bool)

(assert (=> b!1229612 m!1134223))

(assert (=> b!1229611 m!1134207))

(declare-fun m!1134225 () Bool)

(assert (=> b!1229611 m!1134225))

(declare-fun m!1134227 () Bool)

(assert (=> b!1229611 m!1134227))

(declare-fun m!1134229 () Bool)

(assert (=> b!1229611 m!1134229))

(push 1)

(assert (not b!1229620))

(assert (not b!1229612))

(assert (not b!1229618))

(assert (not start!102196))

(assert (not b!1229611))

(assert (not b!1229621))

(assert (not b!1229619))

(assert (not b!1229615))

(assert (not b!1229617))

(assert (not b!1229622))

(assert (not b!1229614))

(assert (not b!1229609))

(assert (not b!1229613))

(assert (not b!1229610))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

