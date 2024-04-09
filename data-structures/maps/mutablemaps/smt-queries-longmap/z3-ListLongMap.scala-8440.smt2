; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102814 () Bool)

(assert start!102814)

(declare-fun b!1235005 () Bool)

(declare-fun res!823285 () Bool)

(declare-fun e!700344 () Bool)

(assert (=> b!1235005 (=> res!823285 e!700344)))

(declare-datatypes ((List!27355 0))(
  ( (Nil!27352) (Cons!27351 (h!28560 (_ BitVec 64)) (t!40825 List!27355)) )
))
(declare-fun lt!560062 () List!27355)

(declare-fun contains!7270 (List!27355 (_ BitVec 64)) Bool)

(assert (=> b!1235005 (= res!823285 (contains!7270 lt!560062 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235006 () Bool)

(declare-fun res!823283 () Bool)

(declare-fun e!700345 () Bool)

(assert (=> b!1235006 (=> (not res!823283) (not e!700345))))

(declare-fun acc!846 () List!27355)

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1235006 (= res!823283 (contains!7270 acc!846 k0!2925))))

(declare-fun b!1235007 () Bool)

(declare-fun res!823289 () Bool)

(assert (=> b!1235007 (=> (not res!823289) (not e!700345))))

(assert (=> b!1235007 (= res!823289 (not (contains!7270 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235008 () Bool)

(declare-fun res!823287 () Bool)

(assert (=> b!1235008 (=> (not res!823287) (not e!700345))))

(declare-fun noDuplicate!1877 (List!27355) Bool)

(assert (=> b!1235008 (= res!823287 (noDuplicate!1877 acc!846))))

(declare-fun b!1235009 () Bool)

(declare-fun res!823282 () Bool)

(assert (=> b!1235009 (=> (not res!823282) (not e!700345))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79600 0))(
  ( (array!79601 (arr!38404 (Array (_ BitVec 32) (_ BitVec 64))) (size!38941 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79600)

(assert (=> b!1235009 (= res!823282 (not (= from!3213 (bvsub (size!38941 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235010 () Bool)

(declare-fun res!823288 () Bool)

(assert (=> b!1235010 (=> res!823288 e!700344)))

(assert (=> b!1235010 (= res!823288 (contains!7270 lt!560062 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235011 () Bool)

(declare-fun res!823279 () Bool)

(assert (=> b!1235011 (=> res!823279 e!700344)))

(assert (=> b!1235011 (= res!823279 (not (noDuplicate!1877 lt!560062)))))

(declare-fun b!1235012 () Bool)

(declare-fun res!823281 () Bool)

(assert (=> b!1235012 (=> (not res!823281) (not e!700345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235012 (= res!823281 (validKeyInArray!0 (select (arr!38404 a!3835) from!3213)))))

(declare-fun b!1235013 () Bool)

(declare-fun res!823280 () Bool)

(assert (=> b!1235013 (=> (not res!823280) (not e!700345))))

(declare-fun arrayNoDuplicates!0 (array!79600 (_ BitVec 32) List!27355) Bool)

(assert (=> b!1235013 (= res!823280 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235014 () Bool)

(assert (=> b!1235014 (= e!700344 true)))

(declare-fun lt!560061 () Bool)

(assert (=> b!1235014 (= lt!560061 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560062))))

(declare-datatypes ((Unit!40852 0))(
  ( (Unit!40853) )
))
(declare-fun lt!560059 () Unit!40852)

(declare-fun noDuplicateSubseq!72 (List!27355 List!27355) Unit!40852)

(assert (=> b!1235014 (= lt!560059 (noDuplicateSubseq!72 acc!846 lt!560062))))

(declare-fun res!823278 () Bool)

(assert (=> start!102814 (=> (not res!823278) (not e!700345))))

(assert (=> start!102814 (= res!823278 (and (bvslt (size!38941 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38941 a!3835))))))

(assert (=> start!102814 e!700345))

(declare-fun array_inv!29180 (array!79600) Bool)

(assert (=> start!102814 (array_inv!29180 a!3835)))

(assert (=> start!102814 true))

(declare-fun b!1235015 () Bool)

(assert (=> b!1235015 (= e!700345 (not e!700344))))

(declare-fun res!823286 () Bool)

(assert (=> b!1235015 (=> res!823286 e!700344)))

(assert (=> b!1235015 (= res!823286 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!525 (List!27355 List!27355) Bool)

(assert (=> b!1235015 (subseq!525 acc!846 lt!560062)))

(declare-fun lt!560058 () Unit!40852)

(declare-fun subseqTail!18 (List!27355 List!27355) Unit!40852)

(assert (=> b!1235015 (= lt!560058 (subseqTail!18 lt!560062 lt!560062))))

(assert (=> b!1235015 (subseq!525 lt!560062 lt!560062)))

(declare-fun lt!560060 () Unit!40852)

(declare-fun lemmaListSubSeqRefl!0 (List!27355) Unit!40852)

(assert (=> b!1235015 (= lt!560060 (lemmaListSubSeqRefl!0 lt!560062))))

(assert (=> b!1235015 (= lt!560062 (Cons!27351 (select (arr!38404 a!3835) from!3213) acc!846))))

(declare-fun b!1235016 () Bool)

(declare-fun res!823284 () Bool)

(assert (=> b!1235016 (=> (not res!823284) (not e!700345))))

(assert (=> b!1235016 (= res!823284 (not (contains!7270 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102814 res!823278) b!1235008))

(assert (= (and b!1235008 res!823287) b!1235007))

(assert (= (and b!1235007 res!823289) b!1235016))

(assert (= (and b!1235016 res!823284) b!1235013))

(assert (= (and b!1235013 res!823280) b!1235006))

(assert (= (and b!1235006 res!823283) b!1235009))

(assert (= (and b!1235009 res!823282) b!1235012))

(assert (= (and b!1235012 res!823281) b!1235015))

(assert (= (and b!1235015 (not res!823286)) b!1235011))

(assert (= (and b!1235011 (not res!823279)) b!1235010))

(assert (= (and b!1235010 (not res!823288)) b!1235005))

(assert (= (and b!1235005 (not res!823285)) b!1235014))

(declare-fun m!1138959 () Bool)

(assert (=> b!1235011 m!1138959))

(declare-fun m!1138961 () Bool)

(assert (=> b!1235007 m!1138961))

(declare-fun m!1138963 () Bool)

(assert (=> start!102814 m!1138963))

(declare-fun m!1138965 () Bool)

(assert (=> b!1235006 m!1138965))

(declare-fun m!1138967 () Bool)

(assert (=> b!1235005 m!1138967))

(declare-fun m!1138969 () Bool)

(assert (=> b!1235016 m!1138969))

(declare-fun m!1138971 () Bool)

(assert (=> b!1235008 m!1138971))

(declare-fun m!1138973 () Bool)

(assert (=> b!1235014 m!1138973))

(declare-fun m!1138975 () Bool)

(assert (=> b!1235014 m!1138975))

(declare-fun m!1138977 () Bool)

(assert (=> b!1235013 m!1138977))

(declare-fun m!1138979 () Bool)

(assert (=> b!1235010 m!1138979))

(declare-fun m!1138981 () Bool)

(assert (=> b!1235012 m!1138981))

(assert (=> b!1235012 m!1138981))

(declare-fun m!1138983 () Bool)

(assert (=> b!1235012 m!1138983))

(declare-fun m!1138985 () Bool)

(assert (=> b!1235015 m!1138985))

(declare-fun m!1138987 () Bool)

(assert (=> b!1235015 m!1138987))

(declare-fun m!1138989 () Bool)

(assert (=> b!1235015 m!1138989))

(declare-fun m!1138991 () Bool)

(assert (=> b!1235015 m!1138991))

(assert (=> b!1235015 m!1138981))

(check-sat (not b!1235012) (not b!1235011) (not b!1235014) (not start!102814) (not b!1235008) (not b!1235016) (not b!1235005) (not b!1235006) (not b!1235010) (not b!1235013) (not b!1235007) (not b!1235015))
