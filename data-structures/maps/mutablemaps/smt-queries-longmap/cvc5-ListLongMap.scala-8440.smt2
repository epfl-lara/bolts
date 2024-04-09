; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102812 () Bool)

(assert start!102812)

(declare-fun b!1234969 () Bool)

(declare-fun e!700336 () Bool)

(assert (=> b!1234969 (= e!700336 true)))

(declare-fun lt!560044 () Bool)

(declare-datatypes ((array!79598 0))(
  ( (array!79599 (arr!38403 (Array (_ BitVec 32) (_ BitVec 64))) (size!38940 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79598)

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((List!27354 0))(
  ( (Nil!27351) (Cons!27350 (h!28559 (_ BitVec 64)) (t!40824 List!27354)) )
))
(declare-fun lt!560047 () List!27354)

(declare-fun arrayNoDuplicates!0 (array!79598 (_ BitVec 32) List!27354) Bool)

(assert (=> b!1234969 (= lt!560044 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560047))))

(declare-datatypes ((Unit!40850 0))(
  ( (Unit!40851) )
))
(declare-fun lt!560046 () Unit!40850)

(declare-fun acc!846 () List!27354)

(declare-fun noDuplicateSubseq!71 (List!27354 List!27354) Unit!40850)

(assert (=> b!1234969 (= lt!560046 (noDuplicateSubseq!71 acc!846 lt!560047))))

(declare-fun b!1234970 () Bool)

(declare-fun res!823250 () Bool)

(declare-fun e!700334 () Bool)

(assert (=> b!1234970 (=> (not res!823250) (not e!700334))))

(declare-fun noDuplicate!1876 (List!27354) Bool)

(assert (=> b!1234970 (= res!823250 (noDuplicate!1876 acc!846))))

(declare-fun b!1234971 () Bool)

(declare-fun res!823252 () Bool)

(assert (=> b!1234971 (=> (not res!823252) (not e!700334))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234971 (= res!823252 (validKeyInArray!0 (select (arr!38403 a!3835) from!3213)))))

(declare-fun b!1234972 () Bool)

(assert (=> b!1234972 (= e!700334 (not e!700336))))

(declare-fun res!823243 () Bool)

(assert (=> b!1234972 (=> res!823243 e!700336)))

(assert (=> b!1234972 (= res!823243 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!524 (List!27354 List!27354) Bool)

(assert (=> b!1234972 (subseq!524 acc!846 lt!560047)))

(declare-fun lt!560043 () Unit!40850)

(declare-fun subseqTail!17 (List!27354 List!27354) Unit!40850)

(assert (=> b!1234972 (= lt!560043 (subseqTail!17 lt!560047 lt!560047))))

(assert (=> b!1234972 (subseq!524 lt!560047 lt!560047)))

(declare-fun lt!560045 () Unit!40850)

(declare-fun lemmaListSubSeqRefl!0 (List!27354) Unit!40850)

(assert (=> b!1234972 (= lt!560045 (lemmaListSubSeqRefl!0 lt!560047))))

(assert (=> b!1234972 (= lt!560047 (Cons!27350 (select (arr!38403 a!3835) from!3213) acc!846))))

(declare-fun res!823242 () Bool)

(assert (=> start!102812 (=> (not res!823242) (not e!700334))))

(assert (=> start!102812 (= res!823242 (and (bvslt (size!38940 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38940 a!3835))))))

(assert (=> start!102812 e!700334))

(declare-fun array_inv!29179 (array!79598) Bool)

(assert (=> start!102812 (array_inv!29179 a!3835)))

(assert (=> start!102812 true))

(declare-fun b!1234973 () Bool)

(declare-fun res!823247 () Bool)

(assert (=> b!1234973 (=> (not res!823247) (not e!700334))))

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7269 (List!27354 (_ BitVec 64)) Bool)

(assert (=> b!1234973 (= res!823247 (contains!7269 acc!846 k!2925))))

(declare-fun b!1234974 () Bool)

(declare-fun res!823251 () Bool)

(assert (=> b!1234974 (=> (not res!823251) (not e!700334))))

(assert (=> b!1234974 (= res!823251 (not (contains!7269 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234975 () Bool)

(declare-fun res!823253 () Bool)

(assert (=> b!1234975 (=> (not res!823253) (not e!700334))))

(assert (=> b!1234975 (= res!823253 (not (contains!7269 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234976 () Bool)

(declare-fun res!823244 () Bool)

(assert (=> b!1234976 (=> res!823244 e!700336)))

(assert (=> b!1234976 (= res!823244 (contains!7269 lt!560047 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234977 () Bool)

(declare-fun res!823245 () Bool)

(assert (=> b!1234977 (=> res!823245 e!700336)))

(assert (=> b!1234977 (= res!823245 (not (noDuplicate!1876 lt!560047)))))

(declare-fun b!1234978 () Bool)

(declare-fun res!823248 () Bool)

(assert (=> b!1234978 (=> (not res!823248) (not e!700334))))

(assert (=> b!1234978 (= res!823248 (not (= from!3213 (bvsub (size!38940 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234979 () Bool)

(declare-fun res!823249 () Bool)

(assert (=> b!1234979 (=> res!823249 e!700336)))

(assert (=> b!1234979 (= res!823249 (contains!7269 lt!560047 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234980 () Bool)

(declare-fun res!823246 () Bool)

(assert (=> b!1234980 (=> (not res!823246) (not e!700334))))

(assert (=> b!1234980 (= res!823246 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(assert (= (and start!102812 res!823242) b!1234970))

(assert (= (and b!1234970 res!823250) b!1234974))

(assert (= (and b!1234974 res!823251) b!1234975))

(assert (= (and b!1234975 res!823253) b!1234980))

(assert (= (and b!1234980 res!823246) b!1234973))

(assert (= (and b!1234973 res!823247) b!1234978))

(assert (= (and b!1234978 res!823248) b!1234971))

(assert (= (and b!1234971 res!823252) b!1234972))

(assert (= (and b!1234972 (not res!823243)) b!1234977))

(assert (= (and b!1234977 (not res!823245)) b!1234979))

(assert (= (and b!1234979 (not res!823249)) b!1234976))

(assert (= (and b!1234976 (not res!823244)) b!1234969))

(declare-fun m!1138925 () Bool)

(assert (=> b!1234974 m!1138925))

(declare-fun m!1138927 () Bool)

(assert (=> b!1234975 m!1138927))

(declare-fun m!1138929 () Bool)

(assert (=> b!1234972 m!1138929))

(declare-fun m!1138931 () Bool)

(assert (=> b!1234972 m!1138931))

(declare-fun m!1138933 () Bool)

(assert (=> b!1234972 m!1138933))

(declare-fun m!1138935 () Bool)

(assert (=> b!1234972 m!1138935))

(declare-fun m!1138937 () Bool)

(assert (=> b!1234972 m!1138937))

(declare-fun m!1138939 () Bool)

(assert (=> b!1234977 m!1138939))

(declare-fun m!1138941 () Bool)

(assert (=> b!1234980 m!1138941))

(declare-fun m!1138943 () Bool)

(assert (=> b!1234970 m!1138943))

(declare-fun m!1138945 () Bool)

(assert (=> b!1234973 m!1138945))

(declare-fun m!1138947 () Bool)

(assert (=> b!1234969 m!1138947))

(declare-fun m!1138949 () Bool)

(assert (=> b!1234969 m!1138949))

(declare-fun m!1138951 () Bool)

(assert (=> b!1234976 m!1138951))

(declare-fun m!1138953 () Bool)

(assert (=> b!1234979 m!1138953))

(assert (=> b!1234971 m!1138937))

(assert (=> b!1234971 m!1138937))

(declare-fun m!1138955 () Bool)

(assert (=> b!1234971 m!1138955))

(declare-fun m!1138957 () Bool)

(assert (=> start!102812 m!1138957))

(push 1)

(assert (not b!1234972))

(assert (not b!1234975))

(assert (not b!1234977))

(assert (not b!1234980))

(assert (not b!1234971))

(assert (not b!1234976))

(assert (not b!1234974))

(assert (not b!1234970))

(assert (not start!102812))

(assert (not b!1234969))

(assert (not b!1234973))

(assert (not b!1234979))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

