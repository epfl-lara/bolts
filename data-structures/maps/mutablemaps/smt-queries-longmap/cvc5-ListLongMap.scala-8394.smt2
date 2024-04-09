; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102184 () Bool)

(assert start!102184)

(declare-fun b!1229357 () Bool)

(declare-fun res!817949 () Bool)

(declare-fun e!697834 () Bool)

(assert (=> b!1229357 (=> (not res!817949) (not e!697834))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229357 (= res!817949 (validKeyInArray!0 k!2913))))

(declare-fun b!1229358 () Bool)

(declare-fun res!817950 () Bool)

(assert (=> b!1229358 (=> (not res!817950) (not e!697834))))

(declare-datatypes ((array!79298 0))(
  ( (array!79299 (arr!38265 (Array (_ BitVec 32) (_ BitVec 64))) (size!38802 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79298)

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1229358 (= res!817950 (validKeyInArray!0 (select (arr!38265 a!3806) from!3184)))))

(declare-fun b!1229359 () Bool)

(declare-fun res!817961 () Bool)

(declare-fun e!697832 () Bool)

(assert (=> b!1229359 (=> res!817961 e!697832)))

(declare-datatypes ((List!27216 0))(
  ( (Nil!27213) (Cons!27212 (h!28421 (_ BitVec 64)) (t!40686 List!27216)) )
))
(declare-fun lt!559118 () List!27216)

(declare-fun contains!7131 (List!27216 (_ BitVec 64)) Bool)

(assert (=> b!1229359 (= res!817961 (contains!7131 lt!559118 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229360 () Bool)

(declare-fun res!817952 () Bool)

(assert (=> b!1229360 (=> (not res!817952) (not e!697834))))

(declare-fun acc!823 () List!27216)

(declare-fun noDuplicate!1738 (List!27216) Bool)

(assert (=> b!1229360 (= res!817952 (noDuplicate!1738 acc!823))))

(declare-fun b!1229361 () Bool)

(declare-fun res!817955 () Bool)

(assert (=> b!1229361 (=> res!817955 e!697832)))

(assert (=> b!1229361 (= res!817955 (not (noDuplicate!1738 lt!559118)))))

(declare-fun b!1229362 () Bool)

(declare-fun e!697831 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79298 (_ BitVec 32) List!27216) Bool)

(assert (=> b!1229362 (= e!697831 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27212 (select (arr!38265 a!3806) from!3184) Nil!27213)))))

(declare-fun b!1229363 () Bool)

(declare-fun res!817953 () Bool)

(assert (=> b!1229363 (=> (not res!817953) (not e!697834))))

(declare-fun arrayContainsKey!0 (array!79298 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229363 (= res!817953 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229364 () Bool)

(declare-fun res!817957 () Bool)

(assert (=> b!1229364 (=> (not res!817957) (not e!697834))))

(assert (=> b!1229364 (= res!817957 (not (contains!7131 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229365 () Bool)

(declare-fun res!817954 () Bool)

(assert (=> b!1229365 (=> (not res!817954) (not e!697834))))

(assert (=> b!1229365 (= res!817954 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229366 () Bool)

(assert (=> b!1229366 (= e!697832 true)))

(declare-fun lt!559117 () Bool)

(assert (=> b!1229366 (= lt!559117 (contains!7131 lt!559118 (select (arr!38265 a!3806) from!3184)))))

(declare-fun b!1229367 () Bool)

(declare-fun res!817956 () Bool)

(assert (=> b!1229367 (=> res!817956 e!697832)))

(assert (=> b!1229367 (= res!817956 (contains!7131 lt!559118 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229368 () Bool)

(assert (=> b!1229368 (= e!697834 (not e!697832))))

(declare-fun res!817958 () Bool)

(assert (=> b!1229368 (=> res!817958 e!697832)))

(assert (=> b!1229368 (= res!817958 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229368 (= lt!559118 (Cons!27212 (select (arr!38265 a!3806) from!3184) Nil!27213))))

(assert (=> b!1229368 e!697831))

(declare-fun res!817951 () Bool)

(assert (=> b!1229368 (=> (not res!817951) (not e!697831))))

(assert (=> b!1229368 (= res!817951 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27213))))

(declare-datatypes ((Unit!40670 0))(
  ( (Unit!40671) )
))
(declare-fun lt!559116 () Unit!40670)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79298 List!27216 List!27216 (_ BitVec 32)) Unit!40670)

(assert (=> b!1229368 (= lt!559116 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27213 from!3184))))

(assert (=> b!1229368 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27212 (select (arr!38265 a!3806) from!3184) acc!823))))

(declare-fun res!817960 () Bool)

(assert (=> start!102184 (=> (not res!817960) (not e!697834))))

(assert (=> start!102184 (= res!817960 (bvslt (size!38802 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102184 e!697834))

(declare-fun array_inv!29041 (array!79298) Bool)

(assert (=> start!102184 (array_inv!29041 a!3806)))

(assert (=> start!102184 true))

(declare-fun b!1229369 () Bool)

(declare-fun res!817948 () Bool)

(assert (=> b!1229369 (=> (not res!817948) (not e!697834))))

(assert (=> b!1229369 (= res!817948 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38802 a!3806)) (bvslt from!3184 (size!38802 a!3806))))))

(declare-fun b!1229370 () Bool)

(declare-fun res!817959 () Bool)

(assert (=> b!1229370 (=> (not res!817959) (not e!697834))))

(assert (=> b!1229370 (= res!817959 (not (contains!7131 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102184 res!817960) b!1229357))

(assert (= (and b!1229357 res!817949) b!1229369))

(assert (= (and b!1229369 res!817948) b!1229360))

(assert (= (and b!1229360 res!817952) b!1229370))

(assert (= (and b!1229370 res!817959) b!1229364))

(assert (= (and b!1229364 res!817957) b!1229363))

(assert (= (and b!1229363 res!817953) b!1229365))

(assert (= (and b!1229365 res!817954) b!1229358))

(assert (= (and b!1229358 res!817950) b!1229368))

(assert (= (and b!1229368 res!817951) b!1229362))

(assert (= (and b!1229368 (not res!817958)) b!1229361))

(assert (= (and b!1229361 (not res!817955)) b!1229367))

(assert (= (and b!1229367 (not res!817956)) b!1229359))

(assert (= (and b!1229359 (not res!817961)) b!1229366))

(declare-fun m!1133993 () Bool)

(assert (=> b!1229363 m!1133993))

(declare-fun m!1133995 () Bool)

(assert (=> b!1229358 m!1133995))

(assert (=> b!1229358 m!1133995))

(declare-fun m!1133997 () Bool)

(assert (=> b!1229358 m!1133997))

(declare-fun m!1133999 () Bool)

(assert (=> b!1229370 m!1133999))

(assert (=> b!1229362 m!1133995))

(declare-fun m!1134001 () Bool)

(assert (=> b!1229362 m!1134001))

(declare-fun m!1134003 () Bool)

(assert (=> start!102184 m!1134003))

(declare-fun m!1134005 () Bool)

(assert (=> b!1229361 m!1134005))

(assert (=> b!1229368 m!1133995))

(declare-fun m!1134007 () Bool)

(assert (=> b!1229368 m!1134007))

(declare-fun m!1134009 () Bool)

(assert (=> b!1229368 m!1134009))

(declare-fun m!1134011 () Bool)

(assert (=> b!1229368 m!1134011))

(declare-fun m!1134013 () Bool)

(assert (=> b!1229359 m!1134013))

(assert (=> b!1229366 m!1133995))

(assert (=> b!1229366 m!1133995))

(declare-fun m!1134015 () Bool)

(assert (=> b!1229366 m!1134015))

(declare-fun m!1134017 () Bool)

(assert (=> b!1229367 m!1134017))

(declare-fun m!1134019 () Bool)

(assert (=> b!1229360 m!1134019))

(declare-fun m!1134021 () Bool)

(assert (=> b!1229357 m!1134021))

(declare-fun m!1134023 () Bool)

(assert (=> b!1229365 m!1134023))

(declare-fun m!1134025 () Bool)

(assert (=> b!1229364 m!1134025))

(push 1)

(assert (not b!1229360))

(assert (not b!1229368))

(assert (not b!1229367))

(assert (not b!1229364))

(assert (not b!1229361))

(assert (not b!1229366))

(assert (not b!1229370))

(assert (not b!1229358))

(assert (not b!1229363))

(assert (not b!1229365))

(assert (not b!1229362))

(assert (not b!1229359))

(assert (not b!1229357))

(assert (not start!102184))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

