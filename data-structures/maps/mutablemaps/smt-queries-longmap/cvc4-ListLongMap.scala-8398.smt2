; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102212 () Bool)

(assert start!102212)

(declare-fun b!1229945 () Bool)

(declare-fun res!818544 () Bool)

(declare-fun e!698000 () Bool)

(assert (=> b!1229945 (=> (not res!818544) (not e!698000))))

(declare-datatypes ((List!27230 0))(
  ( (Nil!27227) (Cons!27226 (h!28435 (_ BitVec 64)) (t!40700 List!27230)) )
))
(declare-fun acc!823 () List!27230)

(declare-fun contains!7145 (List!27230 (_ BitVec 64)) Bool)

(assert (=> b!1229945 (= res!818544 (not (contains!7145 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229946 () Bool)

(declare-fun e!697999 () Bool)

(assert (=> b!1229946 (= e!698000 (not e!697999))))

(declare-fun res!818545 () Bool)

(assert (=> b!1229946 (=> res!818545 e!697999)))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1229946 (= res!818545 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-fun lt!559242 () List!27230)

(declare-datatypes ((array!79326 0))(
  ( (array!79327 (arr!38279 (Array (_ BitVec 32) (_ BitVec 64))) (size!38816 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79326)

(assert (=> b!1229946 (= lt!559242 (Cons!27226 (select (arr!38279 a!3806) from!3184) Nil!27227))))

(declare-fun e!698002 () Bool)

(assert (=> b!1229946 e!698002))

(declare-fun res!818539 () Bool)

(assert (=> b!1229946 (=> (not res!818539) (not e!698002))))

(declare-fun arrayNoDuplicates!0 (array!79326 (_ BitVec 32) List!27230) Bool)

(assert (=> b!1229946 (= res!818539 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27227))))

(declare-datatypes ((Unit!40698 0))(
  ( (Unit!40699) )
))
(declare-fun lt!559244 () Unit!40698)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79326 List!27230 List!27230 (_ BitVec 32)) Unit!40698)

(assert (=> b!1229946 (= lt!559244 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27227 from!3184))))

(assert (=> b!1229946 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27226 (select (arr!38279 a!3806) from!3184) acc!823))))

(declare-fun b!1229947 () Bool)

(declare-fun res!818542 () Bool)

(assert (=> b!1229947 (=> (not res!818542) (not e!698000))))

(assert (=> b!1229947 (= res!818542 (not (contains!7145 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!818549 () Bool)

(assert (=> start!102212 (=> (not res!818549) (not e!698000))))

(assert (=> start!102212 (= res!818549 (bvslt (size!38816 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102212 e!698000))

(declare-fun array_inv!29055 (array!79326) Bool)

(assert (=> start!102212 (array_inv!29055 a!3806)))

(assert (=> start!102212 true))

(declare-fun b!1229948 () Bool)

(declare-fun res!818547 () Bool)

(assert (=> b!1229948 (=> res!818547 e!697999)))

(assert (=> b!1229948 (= res!818547 (contains!7145 lt!559242 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229949 () Bool)

(declare-fun res!818538 () Bool)

(assert (=> b!1229949 (=> (not res!818538) (not e!698000))))

(declare-fun noDuplicate!1752 (List!27230) Bool)

(assert (=> b!1229949 (= res!818538 (noDuplicate!1752 acc!823))))

(declare-fun b!1229950 () Bool)

(assert (=> b!1229950 (= e!698002 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27226 (select (arr!38279 a!3806) from!3184) Nil!27227)))))

(declare-fun b!1229951 () Bool)

(declare-fun res!818541 () Bool)

(assert (=> b!1229951 (=> (not res!818541) (not e!698000))))

(assert (=> b!1229951 (= res!818541 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229952 () Bool)

(declare-fun res!818536 () Bool)

(assert (=> b!1229952 (=> (not res!818536) (not e!698000))))

(assert (=> b!1229952 (= res!818536 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38816 a!3806)) (bvslt from!3184 (size!38816 a!3806))))))

(declare-fun b!1229953 () Bool)

(declare-fun res!818548 () Bool)

(assert (=> b!1229953 (=> res!818548 e!697999)))

(assert (=> b!1229953 (= res!818548 (contains!7145 lt!559242 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229954 () Bool)

(declare-fun res!818546 () Bool)

(assert (=> b!1229954 (=> res!818546 e!697999)))

(assert (=> b!1229954 (= res!818546 (not (noDuplicate!1752 lt!559242)))))

(declare-fun b!1229955 () Bool)

(declare-fun res!818537 () Bool)

(assert (=> b!1229955 (=> (not res!818537) (not e!698000))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229955 (= res!818537 (validKeyInArray!0 (select (arr!38279 a!3806) from!3184)))))

(declare-fun b!1229956 () Bool)

(declare-fun res!818543 () Bool)

(assert (=> b!1229956 (=> (not res!818543) (not e!698000))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1229956 (= res!818543 (validKeyInArray!0 k!2913))))

(declare-fun b!1229957 () Bool)

(declare-fun res!818540 () Bool)

(assert (=> b!1229957 (=> (not res!818540) (not e!698000))))

(declare-fun arrayContainsKey!0 (array!79326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229957 (= res!818540 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229958 () Bool)

(assert (=> b!1229958 (= e!697999 true)))

(declare-fun lt!559243 () Bool)

(assert (=> b!1229958 (= lt!559243 (contains!7145 lt!559242 (select (arr!38279 a!3806) from!3184)))))

(assert (= (and start!102212 res!818549) b!1229956))

(assert (= (and b!1229956 res!818543) b!1229952))

(assert (= (and b!1229952 res!818536) b!1229949))

(assert (= (and b!1229949 res!818538) b!1229947))

(assert (= (and b!1229947 res!818542) b!1229945))

(assert (= (and b!1229945 res!818544) b!1229957))

(assert (= (and b!1229957 res!818540) b!1229951))

(assert (= (and b!1229951 res!818541) b!1229955))

(assert (= (and b!1229955 res!818537) b!1229946))

(assert (= (and b!1229946 res!818539) b!1229950))

(assert (= (and b!1229946 (not res!818545)) b!1229954))

(assert (= (and b!1229954 (not res!818546)) b!1229948))

(assert (= (and b!1229948 (not res!818547)) b!1229953))

(assert (= (and b!1229953 (not res!818548)) b!1229958))

(declare-fun m!1134469 () Bool)

(assert (=> b!1229947 m!1134469))

(declare-fun m!1134471 () Bool)

(assert (=> b!1229950 m!1134471))

(declare-fun m!1134473 () Bool)

(assert (=> b!1229950 m!1134473))

(declare-fun m!1134475 () Bool)

(assert (=> b!1229949 m!1134475))

(declare-fun m!1134477 () Bool)

(assert (=> b!1229956 m!1134477))

(declare-fun m!1134479 () Bool)

(assert (=> b!1229953 m!1134479))

(assert (=> b!1229946 m!1134471))

(declare-fun m!1134481 () Bool)

(assert (=> b!1229946 m!1134481))

(declare-fun m!1134483 () Bool)

(assert (=> b!1229946 m!1134483))

(declare-fun m!1134485 () Bool)

(assert (=> b!1229946 m!1134485))

(declare-fun m!1134487 () Bool)

(assert (=> b!1229957 m!1134487))

(declare-fun m!1134489 () Bool)

(assert (=> b!1229948 m!1134489))

(assert (=> b!1229955 m!1134471))

(assert (=> b!1229955 m!1134471))

(declare-fun m!1134491 () Bool)

(assert (=> b!1229955 m!1134491))

(declare-fun m!1134493 () Bool)

(assert (=> start!102212 m!1134493))

(assert (=> b!1229958 m!1134471))

(assert (=> b!1229958 m!1134471))

(declare-fun m!1134495 () Bool)

(assert (=> b!1229958 m!1134495))

(declare-fun m!1134497 () Bool)

(assert (=> b!1229945 m!1134497))

(declare-fun m!1134499 () Bool)

(assert (=> b!1229951 m!1134499))

(declare-fun m!1134501 () Bool)

(assert (=> b!1229954 m!1134501))

(push 1)

(assert (not b!1229948))

(assert (not b!1229957))

(assert (not b!1229947))

(assert (not b!1229945))

(assert (not start!102212))

(assert (not b!1229951))

(assert (not b!1229955))

(assert (not b!1229950))

(assert (not b!1229946))

(assert (not b!1229958))

(assert (not b!1229956))

(assert (not b!1229953))

(assert (not b!1229954))

(assert (not b!1229949))

(check-sat)

