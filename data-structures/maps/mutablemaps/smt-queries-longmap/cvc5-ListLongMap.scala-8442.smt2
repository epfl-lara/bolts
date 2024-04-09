; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102824 () Bool)

(assert start!102824)

(declare-fun b!1235185 () Bool)

(declare-fun res!823465 () Bool)

(declare-fun e!700388 () Bool)

(assert (=> b!1235185 (=> res!823465 e!700388)))

(declare-datatypes ((List!27360 0))(
  ( (Nil!27357) (Cons!27356 (h!28565 (_ BitVec 64)) (t!40830 List!27360)) )
))
(declare-fun lt!560137 () List!27360)

(declare-fun noDuplicate!1882 (List!27360) Bool)

(assert (=> b!1235185 (= res!823465 (not (noDuplicate!1882 lt!560137)))))

(declare-fun b!1235187 () Bool)

(declare-fun res!823458 () Bool)

(declare-fun e!700390 () Bool)

(assert (=> b!1235187 (=> (not res!823458) (not e!700390))))

(declare-fun acc!846 () List!27360)

(assert (=> b!1235187 (= res!823458 (noDuplicate!1882 acc!846))))

(declare-fun b!1235188 () Bool)

(assert (=> b!1235188 (= e!700388 true)))

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun lt!560134 () Bool)

(declare-datatypes ((array!79610 0))(
  ( (array!79611 (arr!38409 (Array (_ BitVec 32) (_ BitVec 64))) (size!38946 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79610)

(declare-fun arrayNoDuplicates!0 (array!79610 (_ BitVec 32) List!27360) Bool)

(assert (=> b!1235188 (= lt!560134 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560137))))

(declare-datatypes ((Unit!40862 0))(
  ( (Unit!40863) )
))
(declare-fun lt!560136 () Unit!40862)

(declare-fun noDuplicateSubseq!77 (List!27360 List!27360) Unit!40862)

(assert (=> b!1235188 (= lt!560136 (noDuplicateSubseq!77 acc!846 lt!560137))))

(declare-fun b!1235189 () Bool)

(declare-fun res!823461 () Bool)

(assert (=> b!1235189 (=> (not res!823461) (not e!700390))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235189 (= res!823461 (validKeyInArray!0 (select (arr!38409 a!3835) from!3213)))))

(declare-fun b!1235190 () Bool)

(declare-fun res!823462 () Bool)

(assert (=> b!1235190 (=> (not res!823462) (not e!700390))))

(declare-fun contains!7275 (List!27360 (_ BitVec 64)) Bool)

(assert (=> b!1235190 (= res!823462 (not (contains!7275 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235191 () Bool)

(declare-fun res!823469 () Bool)

(assert (=> b!1235191 (=> (not res!823469) (not e!700390))))

(assert (=> b!1235191 (= res!823469 (not (contains!7275 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235192 () Bool)

(assert (=> b!1235192 (= e!700390 (not e!700388))))

(declare-fun res!823466 () Bool)

(assert (=> b!1235192 (=> res!823466 e!700388)))

(assert (=> b!1235192 (= res!823466 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!530 (List!27360 List!27360) Bool)

(assert (=> b!1235192 (subseq!530 acc!846 lt!560137)))

(declare-fun lt!560135 () Unit!40862)

(declare-fun subseqTail!23 (List!27360 List!27360) Unit!40862)

(assert (=> b!1235192 (= lt!560135 (subseqTail!23 lt!560137 lt!560137))))

(assert (=> b!1235192 (subseq!530 lt!560137 lt!560137)))

(declare-fun lt!560133 () Unit!40862)

(declare-fun lemmaListSubSeqRefl!0 (List!27360) Unit!40862)

(assert (=> b!1235192 (= lt!560133 (lemmaListSubSeqRefl!0 lt!560137))))

(assert (=> b!1235192 (= lt!560137 (Cons!27356 (select (arr!38409 a!3835) from!3213) acc!846))))

(declare-fun b!1235193 () Bool)

(declare-fun res!823463 () Bool)

(assert (=> b!1235193 (=> res!823463 e!700388)))

(assert (=> b!1235193 (= res!823463 (contains!7275 lt!560137 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235194 () Bool)

(declare-fun res!823464 () Bool)

(assert (=> b!1235194 (=> (not res!823464) (not e!700390))))

(assert (=> b!1235194 (= res!823464 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235195 () Bool)

(declare-fun res!823459 () Bool)

(assert (=> b!1235195 (=> res!823459 e!700388)))

(assert (=> b!1235195 (= res!823459 (contains!7275 lt!560137 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235196 () Bool)

(declare-fun res!823467 () Bool)

(assert (=> b!1235196 (=> (not res!823467) (not e!700390))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235196 (= res!823467 (contains!7275 acc!846 k!2925))))

(declare-fun res!823468 () Bool)

(assert (=> start!102824 (=> (not res!823468) (not e!700390))))

(assert (=> start!102824 (= res!823468 (and (bvslt (size!38946 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38946 a!3835))))))

(assert (=> start!102824 e!700390))

(declare-fun array_inv!29185 (array!79610) Bool)

(assert (=> start!102824 (array_inv!29185 a!3835)))

(assert (=> start!102824 true))

(declare-fun b!1235186 () Bool)

(declare-fun res!823460 () Bool)

(assert (=> b!1235186 (=> (not res!823460) (not e!700390))))

(assert (=> b!1235186 (= res!823460 (not (= from!3213 (bvsub (size!38946 a!3835) #b00000000000000000000000000000001))))))

(assert (= (and start!102824 res!823468) b!1235187))

(assert (= (and b!1235187 res!823458) b!1235190))

(assert (= (and b!1235190 res!823462) b!1235191))

(assert (= (and b!1235191 res!823469) b!1235194))

(assert (= (and b!1235194 res!823464) b!1235196))

(assert (= (and b!1235196 res!823467) b!1235186))

(assert (= (and b!1235186 res!823460) b!1235189))

(assert (= (and b!1235189 res!823461) b!1235192))

(assert (= (and b!1235192 (not res!823466)) b!1235185))

(assert (= (and b!1235185 (not res!823465)) b!1235195))

(assert (= (and b!1235195 (not res!823459)) b!1235193))

(assert (= (and b!1235193 (not res!823463)) b!1235188))

(declare-fun m!1139129 () Bool)

(assert (=> b!1235190 m!1139129))

(declare-fun m!1139131 () Bool)

(assert (=> b!1235195 m!1139131))

(declare-fun m!1139133 () Bool)

(assert (=> b!1235188 m!1139133))

(declare-fun m!1139135 () Bool)

(assert (=> b!1235188 m!1139135))

(declare-fun m!1139137 () Bool)

(assert (=> b!1235196 m!1139137))

(declare-fun m!1139139 () Bool)

(assert (=> b!1235189 m!1139139))

(assert (=> b!1235189 m!1139139))

(declare-fun m!1139141 () Bool)

(assert (=> b!1235189 m!1139141))

(declare-fun m!1139143 () Bool)

(assert (=> start!102824 m!1139143))

(declare-fun m!1139145 () Bool)

(assert (=> b!1235187 m!1139145))

(declare-fun m!1139147 () Bool)

(assert (=> b!1235192 m!1139147))

(declare-fun m!1139149 () Bool)

(assert (=> b!1235192 m!1139149))

(declare-fun m!1139151 () Bool)

(assert (=> b!1235192 m!1139151))

(declare-fun m!1139153 () Bool)

(assert (=> b!1235192 m!1139153))

(assert (=> b!1235192 m!1139139))

(declare-fun m!1139155 () Bool)

(assert (=> b!1235191 m!1139155))

(declare-fun m!1139157 () Bool)

(assert (=> b!1235194 m!1139157))

(declare-fun m!1139159 () Bool)

(assert (=> b!1235193 m!1139159))

(declare-fun m!1139161 () Bool)

(assert (=> b!1235185 m!1139161))

(push 1)

(assert (not b!1235196))

(assert (not b!1235185))

(assert (not b!1235187))

(assert (not b!1235191))

(assert (not b!1235195))

(assert (not b!1235192))

(assert (not b!1235188))

(assert (not b!1235193))

(assert (not b!1235190))

(assert (not b!1235189))

(assert (not start!102824))

(assert (not b!1235194))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

