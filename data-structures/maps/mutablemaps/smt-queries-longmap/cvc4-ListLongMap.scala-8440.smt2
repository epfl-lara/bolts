; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102816 () Bool)

(assert start!102816)

(declare-fun b!1235042 () Bool)

(declare-fun res!823314 () Bool)

(declare-fun e!700354 () Bool)

(assert (=> b!1235042 (=> (not res!823314) (not e!700354))))

(declare-datatypes ((List!27356 0))(
  ( (Nil!27353) (Cons!27352 (h!28561 (_ BitVec 64)) (t!40826 List!27356)) )
))
(declare-fun acc!846 () List!27356)

(declare-fun contains!7271 (List!27356 (_ BitVec 64)) Bool)

(assert (=> b!1235042 (= res!823314 (not (contains!7271 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235043 () Bool)

(declare-fun e!700352 () Bool)

(assert (=> b!1235043 (= e!700352 true)))

(declare-fun lt!560073 () List!27356)

(declare-datatypes ((array!79602 0))(
  ( (array!79603 (arr!38405 (Array (_ BitVec 32) (_ BitVec 64))) (size!38942 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79602)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun lt!560074 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79602 (_ BitVec 32) List!27356) Bool)

(assert (=> b!1235043 (= lt!560074 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560073))))

(declare-datatypes ((Unit!40854 0))(
  ( (Unit!40855) )
))
(declare-fun lt!560075 () Unit!40854)

(declare-fun noDuplicateSubseq!73 (List!27356 List!27356) Unit!40854)

(assert (=> b!1235043 (= lt!560075 (noDuplicateSubseq!73 acc!846 lt!560073))))

(declare-fun b!1235044 () Bool)

(declare-fun res!823317 () Bool)

(assert (=> b!1235044 (=> (not res!823317) (not e!700354))))

(assert (=> b!1235044 (= res!823317 (not (= from!3213 (bvsub (size!38942 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235045 () Bool)

(declare-fun res!823320 () Bool)

(assert (=> b!1235045 (=> (not res!823320) (not e!700354))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235045 (= res!823320 (validKeyInArray!0 (select (arr!38405 a!3835) from!3213)))))

(declare-fun b!1235046 () Bool)

(declare-fun res!823324 () Bool)

(assert (=> b!1235046 (=> (not res!823324) (not e!700354))))

(assert (=> b!1235046 (= res!823324 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235047 () Bool)

(declare-fun res!823316 () Bool)

(assert (=> b!1235047 (=> res!823316 e!700352)))

(assert (=> b!1235047 (= res!823316 (contains!7271 lt!560073 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235048 () Bool)

(declare-fun res!823315 () Bool)

(assert (=> b!1235048 (=> (not res!823315) (not e!700354))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235048 (= res!823315 (contains!7271 acc!846 k!2925))))

(declare-fun b!1235049 () Bool)

(declare-fun res!823318 () Bool)

(assert (=> b!1235049 (=> (not res!823318) (not e!700354))))

(assert (=> b!1235049 (= res!823318 (not (contains!7271 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235041 () Bool)

(declare-fun res!823322 () Bool)

(assert (=> b!1235041 (=> res!823322 e!700352)))

(assert (=> b!1235041 (= res!823322 (contains!7271 lt!560073 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!823319 () Bool)

(assert (=> start!102816 (=> (not res!823319) (not e!700354))))

(assert (=> start!102816 (= res!823319 (and (bvslt (size!38942 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38942 a!3835))))))

(assert (=> start!102816 e!700354))

(declare-fun array_inv!29181 (array!79602) Bool)

(assert (=> start!102816 (array_inv!29181 a!3835)))

(assert (=> start!102816 true))

(declare-fun b!1235050 () Bool)

(assert (=> b!1235050 (= e!700354 (not e!700352))))

(declare-fun res!823325 () Bool)

(assert (=> b!1235050 (=> res!823325 e!700352)))

(assert (=> b!1235050 (= res!823325 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!526 (List!27356 List!27356) Bool)

(assert (=> b!1235050 (subseq!526 acc!846 lt!560073)))

(declare-fun lt!560077 () Unit!40854)

(declare-fun subseqTail!19 (List!27356 List!27356) Unit!40854)

(assert (=> b!1235050 (= lt!560077 (subseqTail!19 lt!560073 lt!560073))))

(assert (=> b!1235050 (subseq!526 lt!560073 lt!560073)))

(declare-fun lt!560076 () Unit!40854)

(declare-fun lemmaListSubSeqRefl!0 (List!27356) Unit!40854)

(assert (=> b!1235050 (= lt!560076 (lemmaListSubSeqRefl!0 lt!560073))))

(assert (=> b!1235050 (= lt!560073 (Cons!27352 (select (arr!38405 a!3835) from!3213) acc!846))))

(declare-fun b!1235051 () Bool)

(declare-fun res!823321 () Bool)

(assert (=> b!1235051 (=> (not res!823321) (not e!700354))))

(declare-fun noDuplicate!1878 (List!27356) Bool)

(assert (=> b!1235051 (= res!823321 (noDuplicate!1878 acc!846))))

(declare-fun b!1235052 () Bool)

(declare-fun res!823323 () Bool)

(assert (=> b!1235052 (=> res!823323 e!700352)))

(assert (=> b!1235052 (= res!823323 (not (noDuplicate!1878 lt!560073)))))

(assert (= (and start!102816 res!823319) b!1235051))

(assert (= (and b!1235051 res!823321) b!1235042))

(assert (= (and b!1235042 res!823314) b!1235049))

(assert (= (and b!1235049 res!823318) b!1235046))

(assert (= (and b!1235046 res!823324) b!1235048))

(assert (= (and b!1235048 res!823315) b!1235044))

(assert (= (and b!1235044 res!823317) b!1235045))

(assert (= (and b!1235045 res!823320) b!1235050))

(assert (= (and b!1235050 (not res!823325)) b!1235052))

(assert (= (and b!1235052 (not res!823323)) b!1235041))

(assert (= (and b!1235041 (not res!823322)) b!1235047))

(assert (= (and b!1235047 (not res!823316)) b!1235043))

(declare-fun m!1138993 () Bool)

(assert (=> b!1235048 m!1138993))

(declare-fun m!1138995 () Bool)

(assert (=> b!1235047 m!1138995))

(declare-fun m!1138997 () Bool)

(assert (=> b!1235043 m!1138997))

(declare-fun m!1138999 () Bool)

(assert (=> b!1235043 m!1138999))

(declare-fun m!1139001 () Bool)

(assert (=> b!1235050 m!1139001))

(declare-fun m!1139003 () Bool)

(assert (=> b!1235050 m!1139003))

(declare-fun m!1139005 () Bool)

(assert (=> b!1235050 m!1139005))

(declare-fun m!1139007 () Bool)

(assert (=> b!1235050 m!1139007))

(declare-fun m!1139009 () Bool)

(assert (=> b!1235050 m!1139009))

(declare-fun m!1139011 () Bool)

(assert (=> b!1235052 m!1139011))

(declare-fun m!1139013 () Bool)

(assert (=> b!1235046 m!1139013))

(declare-fun m!1139015 () Bool)

(assert (=> start!102816 m!1139015))

(declare-fun m!1139017 () Bool)

(assert (=> b!1235049 m!1139017))

(assert (=> b!1235045 m!1139009))

(assert (=> b!1235045 m!1139009))

(declare-fun m!1139019 () Bool)

(assert (=> b!1235045 m!1139019))

(declare-fun m!1139021 () Bool)

(assert (=> b!1235051 m!1139021))

(declare-fun m!1139023 () Bool)

(assert (=> b!1235042 m!1139023))

(declare-fun m!1139025 () Bool)

(assert (=> b!1235041 m!1139025))

(push 1)

(assert (not b!1235051))

(assert (not b!1235049))

(assert (not b!1235042))

(assert (not b!1235047))

(assert (not b!1235048))

(assert (not b!1235043))

(assert (not b!1235046))

(assert (not start!102816))

(assert (not b!1235041))

(assert (not b!1235052))

(assert (not b!1235050))

(assert (not b!1235045))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

