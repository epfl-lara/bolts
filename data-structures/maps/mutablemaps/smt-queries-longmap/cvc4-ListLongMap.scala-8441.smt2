; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102822 () Bool)

(assert start!102822)

(declare-fun b!1235149 () Bool)

(declare-fun res!823430 () Bool)

(declare-fun e!700380 () Bool)

(assert (=> b!1235149 (=> (not res!823430) (not e!700380))))

(declare-datatypes ((List!27359 0))(
  ( (Nil!27356) (Cons!27355 (h!28564 (_ BitVec 64)) (t!40829 List!27359)) )
))
(declare-fun acc!846 () List!27359)

(declare-fun contains!7274 (List!27359 (_ BitVec 64)) Bool)

(assert (=> b!1235149 (= res!823430 (not (contains!7274 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235150 () Bool)

(declare-fun res!823429 () Bool)

(declare-fun e!700381 () Bool)

(assert (=> b!1235150 (=> res!823429 e!700381)))

(declare-fun lt!560119 () List!27359)

(declare-fun noDuplicate!1881 (List!27359) Bool)

(assert (=> b!1235150 (= res!823429 (not (noDuplicate!1881 lt!560119)))))

(declare-fun b!1235151 () Bool)

(declare-fun res!823426 () Bool)

(assert (=> b!1235151 (=> (not res!823426) (not e!700380))))

(declare-datatypes ((array!79608 0))(
  ( (array!79609 (arr!38408 (Array (_ BitVec 32) (_ BitVec 64))) (size!38945 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79608)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235151 (= res!823426 (validKeyInArray!0 (select (arr!38408 a!3835) from!3213)))))

(declare-fun b!1235152 () Bool)

(declare-fun res!823432 () Bool)

(assert (=> b!1235152 (=> (not res!823432) (not e!700380))))

(assert (=> b!1235152 (= res!823432 (not (contains!7274 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235153 () Bool)

(declare-fun res!823423 () Bool)

(assert (=> b!1235153 (=> (not res!823423) (not e!700380))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235153 (= res!823423 (contains!7274 acc!846 k!2925))))

(declare-fun b!1235154 () Bool)

(declare-fun res!823433 () Bool)

(assert (=> b!1235154 (=> res!823433 e!700381)))

(assert (=> b!1235154 (= res!823433 (contains!7274 lt!560119 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235155 () Bool)

(assert (=> b!1235155 (= e!700381 true)))

(declare-fun lt!560122 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79608 (_ BitVec 32) List!27359) Bool)

(assert (=> b!1235155 (= lt!560122 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560119))))

(declare-datatypes ((Unit!40860 0))(
  ( (Unit!40861) )
))
(declare-fun lt!560120 () Unit!40860)

(declare-fun noDuplicateSubseq!76 (List!27359 List!27359) Unit!40860)

(assert (=> b!1235155 (= lt!560120 (noDuplicateSubseq!76 acc!846 lt!560119))))

(declare-fun b!1235156 () Bool)

(declare-fun res!823427 () Bool)

(assert (=> b!1235156 (=> (not res!823427) (not e!700380))))

(assert (=> b!1235156 (= res!823427 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!823428 () Bool)

(assert (=> start!102822 (=> (not res!823428) (not e!700380))))

(assert (=> start!102822 (= res!823428 (and (bvslt (size!38945 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38945 a!3835))))))

(assert (=> start!102822 e!700380))

(declare-fun array_inv!29184 (array!79608) Bool)

(assert (=> start!102822 (array_inv!29184 a!3835)))

(assert (=> start!102822 true))

(declare-fun b!1235157 () Bool)

(declare-fun res!823425 () Bool)

(assert (=> b!1235157 (=> (not res!823425) (not e!700380))))

(assert (=> b!1235157 (= res!823425 (not (= from!3213 (bvsub (size!38945 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235158 () Bool)

(declare-fun res!823424 () Bool)

(assert (=> b!1235158 (=> (not res!823424) (not e!700380))))

(assert (=> b!1235158 (= res!823424 (noDuplicate!1881 acc!846))))

(declare-fun b!1235159 () Bool)

(assert (=> b!1235159 (= e!700380 (not e!700381))))

(declare-fun res!823422 () Bool)

(assert (=> b!1235159 (=> res!823422 e!700381)))

(assert (=> b!1235159 (= res!823422 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!529 (List!27359 List!27359) Bool)

(assert (=> b!1235159 (subseq!529 acc!846 lt!560119)))

(declare-fun lt!560118 () Unit!40860)

(declare-fun subseqTail!22 (List!27359 List!27359) Unit!40860)

(assert (=> b!1235159 (= lt!560118 (subseqTail!22 lt!560119 lt!560119))))

(assert (=> b!1235159 (subseq!529 lt!560119 lt!560119)))

(declare-fun lt!560121 () Unit!40860)

(declare-fun lemmaListSubSeqRefl!0 (List!27359) Unit!40860)

(assert (=> b!1235159 (= lt!560121 (lemmaListSubSeqRefl!0 lt!560119))))

(assert (=> b!1235159 (= lt!560119 (Cons!27355 (select (arr!38408 a!3835) from!3213) acc!846))))

(declare-fun b!1235160 () Bool)

(declare-fun res!823431 () Bool)

(assert (=> b!1235160 (=> res!823431 e!700381)))

(assert (=> b!1235160 (= res!823431 (contains!7274 lt!560119 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102822 res!823428) b!1235158))

(assert (= (and b!1235158 res!823424) b!1235152))

(assert (= (and b!1235152 res!823432) b!1235149))

(assert (= (and b!1235149 res!823430) b!1235156))

(assert (= (and b!1235156 res!823427) b!1235153))

(assert (= (and b!1235153 res!823423) b!1235157))

(assert (= (and b!1235157 res!823425) b!1235151))

(assert (= (and b!1235151 res!823426) b!1235159))

(assert (= (and b!1235159 (not res!823422)) b!1235150))

(assert (= (and b!1235150 (not res!823429)) b!1235154))

(assert (= (and b!1235154 (not res!823433)) b!1235160))

(assert (= (and b!1235160 (not res!823431)) b!1235155))

(declare-fun m!1139095 () Bool)

(assert (=> b!1235150 m!1139095))

(declare-fun m!1139097 () Bool)

(assert (=> b!1235151 m!1139097))

(assert (=> b!1235151 m!1139097))

(declare-fun m!1139099 () Bool)

(assert (=> b!1235151 m!1139099))

(declare-fun m!1139101 () Bool)

(assert (=> b!1235152 m!1139101))

(declare-fun m!1139103 () Bool)

(assert (=> b!1235159 m!1139103))

(declare-fun m!1139105 () Bool)

(assert (=> b!1235159 m!1139105))

(declare-fun m!1139107 () Bool)

(assert (=> b!1235159 m!1139107))

(assert (=> b!1235159 m!1139097))

(declare-fun m!1139109 () Bool)

(assert (=> b!1235159 m!1139109))

(declare-fun m!1139111 () Bool)

(assert (=> b!1235149 m!1139111))

(declare-fun m!1139113 () Bool)

(assert (=> b!1235153 m!1139113))

(declare-fun m!1139115 () Bool)

(assert (=> b!1235160 m!1139115))

(declare-fun m!1139117 () Bool)

(assert (=> start!102822 m!1139117))

(declare-fun m!1139119 () Bool)

(assert (=> b!1235158 m!1139119))

(declare-fun m!1139121 () Bool)

(assert (=> b!1235156 m!1139121))

(declare-fun m!1139123 () Bool)

(assert (=> b!1235154 m!1139123))

(declare-fun m!1139125 () Bool)

(assert (=> b!1235155 m!1139125))

(declare-fun m!1139127 () Bool)

(assert (=> b!1235155 m!1139127))

(push 1)

(assert (not b!1235158))

(assert (not b!1235156))

(assert (not b!1235149))

(assert (not b!1235154))

(assert (not b!1235155))

(assert (not b!1235153))

(assert (not b!1235152))

(assert (not b!1235159))

(assert (not b!1235160))

(assert (not b!1235151))

(assert (not b!1235150))

(assert (not start!102822))

(check-sat)

