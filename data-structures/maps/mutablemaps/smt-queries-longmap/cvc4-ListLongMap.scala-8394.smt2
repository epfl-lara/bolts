; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102188 () Bool)

(assert start!102188)

(declare-fun b!1229441 () Bool)

(declare-fun res!818042 () Bool)

(declare-fun e!697856 () Bool)

(assert (=> b!1229441 (=> (not res!818042) (not e!697856))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229441 (= res!818042 (validKeyInArray!0 k!2913))))

(declare-fun b!1229442 () Bool)

(declare-fun res!818039 () Bool)

(declare-fun e!697855 () Bool)

(assert (=> b!1229442 (=> res!818039 e!697855)))

(declare-datatypes ((List!27218 0))(
  ( (Nil!27215) (Cons!27214 (h!28423 (_ BitVec 64)) (t!40688 List!27218)) )
))
(declare-fun lt!559134 () List!27218)

(declare-fun noDuplicate!1740 (List!27218) Bool)

(assert (=> b!1229442 (= res!818039 (not (noDuplicate!1740 lt!559134)))))

(declare-fun b!1229443 () Bool)

(assert (=> b!1229443 (= e!697855 true)))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun lt!559136 () Bool)

(declare-datatypes ((array!79302 0))(
  ( (array!79303 (arr!38267 (Array (_ BitVec 32) (_ BitVec 64))) (size!38804 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79302)

(declare-fun contains!7133 (List!27218 (_ BitVec 64)) Bool)

(assert (=> b!1229443 (= lt!559136 (contains!7133 lt!559134 (select (arr!38267 a!3806) from!3184)))))

(declare-fun b!1229444 () Bool)

(declare-fun res!818040 () Bool)

(assert (=> b!1229444 (=> (not res!818040) (not e!697856))))

(declare-fun acc!823 () List!27218)

(assert (=> b!1229444 (= res!818040 (not (contains!7133 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229445 () Bool)

(declare-fun res!818033 () Bool)

(assert (=> b!1229445 (=> res!818033 e!697855)))

(assert (=> b!1229445 (= res!818033 (contains!7133 lt!559134 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229446 () Bool)

(declare-fun res!818043 () Bool)

(assert (=> b!1229446 (=> (not res!818043) (not e!697856))))

(declare-fun arrayContainsKey!0 (array!79302 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229446 (= res!818043 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229447 () Bool)

(assert (=> b!1229447 (= e!697856 (not e!697855))))

(declare-fun res!818032 () Bool)

(assert (=> b!1229447 (=> res!818032 e!697855)))

(assert (=> b!1229447 (= res!818032 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229447 (= lt!559134 (Cons!27214 (select (arr!38267 a!3806) from!3184) Nil!27215))))

(declare-fun e!697858 () Bool)

(assert (=> b!1229447 e!697858))

(declare-fun res!818037 () Bool)

(assert (=> b!1229447 (=> (not res!818037) (not e!697858))))

(declare-fun arrayNoDuplicates!0 (array!79302 (_ BitVec 32) List!27218) Bool)

(assert (=> b!1229447 (= res!818037 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27215))))

(declare-datatypes ((Unit!40674 0))(
  ( (Unit!40675) )
))
(declare-fun lt!559135 () Unit!40674)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79302 List!27218 List!27218 (_ BitVec 32)) Unit!40674)

(assert (=> b!1229447 (= lt!559135 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27215 from!3184))))

(assert (=> b!1229447 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27214 (select (arr!38267 a!3806) from!3184) acc!823))))

(declare-fun b!1229448 () Bool)

(declare-fun res!818041 () Bool)

(assert (=> b!1229448 (=> (not res!818041) (not e!697856))))

(assert (=> b!1229448 (= res!818041 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229449 () Bool)

(declare-fun res!818045 () Bool)

(assert (=> b!1229449 (=> res!818045 e!697855)))

(assert (=> b!1229449 (= res!818045 (contains!7133 lt!559134 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229450 () Bool)

(declare-fun res!818044 () Bool)

(assert (=> b!1229450 (=> (not res!818044) (not e!697856))))

(assert (=> b!1229450 (= res!818044 (noDuplicate!1740 acc!823))))

(declare-fun b!1229451 () Bool)

(declare-fun res!818038 () Bool)

(assert (=> b!1229451 (=> (not res!818038) (not e!697856))))

(assert (=> b!1229451 (= res!818038 (not (contains!7133 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!818035 () Bool)

(assert (=> start!102188 (=> (not res!818035) (not e!697856))))

(assert (=> start!102188 (= res!818035 (bvslt (size!38804 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102188 e!697856))

(declare-fun array_inv!29043 (array!79302) Bool)

(assert (=> start!102188 (array_inv!29043 a!3806)))

(assert (=> start!102188 true))

(declare-fun b!1229452 () Bool)

(declare-fun res!818036 () Bool)

(assert (=> b!1229452 (=> (not res!818036) (not e!697856))))

(assert (=> b!1229452 (= res!818036 (validKeyInArray!0 (select (arr!38267 a!3806) from!3184)))))

(declare-fun b!1229453 () Bool)

(declare-fun res!818034 () Bool)

(assert (=> b!1229453 (=> (not res!818034) (not e!697856))))

(assert (=> b!1229453 (= res!818034 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38804 a!3806)) (bvslt from!3184 (size!38804 a!3806))))))

(declare-fun b!1229454 () Bool)

(assert (=> b!1229454 (= e!697858 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27214 (select (arr!38267 a!3806) from!3184) Nil!27215)))))

(assert (= (and start!102188 res!818035) b!1229441))

(assert (= (and b!1229441 res!818042) b!1229453))

(assert (= (and b!1229453 res!818034) b!1229450))

(assert (= (and b!1229450 res!818044) b!1229444))

(assert (= (and b!1229444 res!818040) b!1229451))

(assert (= (and b!1229451 res!818038) b!1229446))

(assert (= (and b!1229446 res!818043) b!1229448))

(assert (= (and b!1229448 res!818041) b!1229452))

(assert (= (and b!1229452 res!818036) b!1229447))

(assert (= (and b!1229447 res!818037) b!1229454))

(assert (= (and b!1229447 (not res!818032)) b!1229442))

(assert (= (and b!1229442 (not res!818039)) b!1229445))

(assert (= (and b!1229445 (not res!818033)) b!1229449))

(assert (= (and b!1229449 (not res!818045)) b!1229443))

(declare-fun m!1134061 () Bool)

(assert (=> b!1229447 m!1134061))

(declare-fun m!1134063 () Bool)

(assert (=> b!1229447 m!1134063))

(declare-fun m!1134065 () Bool)

(assert (=> b!1229447 m!1134065))

(declare-fun m!1134067 () Bool)

(assert (=> b!1229447 m!1134067))

(declare-fun m!1134069 () Bool)

(assert (=> b!1229444 m!1134069))

(declare-fun m!1134071 () Bool)

(assert (=> b!1229442 m!1134071))

(declare-fun m!1134073 () Bool)

(assert (=> b!1229451 m!1134073))

(assert (=> b!1229454 m!1134061))

(declare-fun m!1134075 () Bool)

(assert (=> b!1229454 m!1134075))

(declare-fun m!1134077 () Bool)

(assert (=> start!102188 m!1134077))

(declare-fun m!1134079 () Bool)

(assert (=> b!1229446 m!1134079))

(declare-fun m!1134081 () Bool)

(assert (=> b!1229450 m!1134081))

(declare-fun m!1134083 () Bool)

(assert (=> b!1229441 m!1134083))

(declare-fun m!1134085 () Bool)

(assert (=> b!1229449 m!1134085))

(declare-fun m!1134087 () Bool)

(assert (=> b!1229445 m!1134087))

(assert (=> b!1229443 m!1134061))

(assert (=> b!1229443 m!1134061))

(declare-fun m!1134089 () Bool)

(assert (=> b!1229443 m!1134089))

(assert (=> b!1229452 m!1134061))

(assert (=> b!1229452 m!1134061))

(declare-fun m!1134091 () Bool)

(assert (=> b!1229452 m!1134091))

(declare-fun m!1134093 () Bool)

(assert (=> b!1229448 m!1134093))

(push 1)

(assert (not b!1229450))

(assert (not b!1229448))

(assert (not b!1229443))

(assert (not start!102188))

(assert (not b!1229447))

(assert (not b!1229442))

(assert (not b!1229454))

(assert (not b!1229446))

(assert (not b!1229444))

(assert (not b!1229451))

(assert (not b!1229441))

(assert (not b!1229452))

(assert (not b!1229445))

(assert (not b!1229449))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

