; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102886 () Bool)

(assert start!102886)

(declare-fun b!1236152 () Bool)

(declare-fun res!824254 () Bool)

(declare-fun e!700756 () Bool)

(assert (=> b!1236152 (=> (not res!824254) (not e!700756))))

(declare-datatypes ((array!79672 0))(
  ( (array!79673 (arr!38440 (Array (_ BitVec 32) (_ BitVec 64))) (size!38977 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79672)

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((List!27391 0))(
  ( (Nil!27388) (Cons!27387 (h!28596 (_ BitVec 64)) (t!40861 List!27391)) )
))
(declare-fun acc!846 () List!27391)

(declare-fun arrayNoDuplicates!0 (array!79672 (_ BitVec 32) List!27391) Bool)

(assert (=> b!1236152 (= res!824254 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236153 () Bool)

(declare-fun res!824257 () Bool)

(assert (=> b!1236153 (=> (not res!824257) (not e!700756))))

(declare-fun noDuplicate!1913 (List!27391) Bool)

(assert (=> b!1236153 (= res!824257 (noDuplicate!1913 acc!846))))

(declare-fun b!1236154 () Bool)

(declare-datatypes ((Unit!40952 0))(
  ( (Unit!40953) )
))
(declare-fun e!700754 () Unit!40952)

(declare-fun Unit!40954 () Unit!40952)

(assert (=> b!1236154 (= e!700754 Unit!40954)))

(declare-fun b!1236155 () Bool)

(declare-fun lt!560688 () Unit!40952)

(assert (=> b!1236155 (= e!700754 lt!560688)))

(declare-fun lt!560685 () List!27391)

(assert (=> b!1236155 (= lt!560685 (Cons!27387 (select (arr!38440 a!3835) from!3213) acc!846))))

(declare-fun lt!560689 () Unit!40952)

(declare-fun lemmaListSubSeqRefl!0 (List!27391) Unit!40952)

(assert (=> b!1236155 (= lt!560689 (lemmaListSubSeqRefl!0 lt!560685))))

(declare-fun subseq!561 (List!27391 List!27391) Bool)

(assert (=> b!1236155 (subseq!561 lt!560685 lt!560685)))

(declare-fun lt!560686 () Unit!40952)

(declare-fun subseqTail!54 (List!27391 List!27391) Unit!40952)

(assert (=> b!1236155 (= lt!560686 (subseqTail!54 lt!560685 lt!560685))))

(assert (=> b!1236155 (subseq!561 acc!846 lt!560685)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79672 List!27391 List!27391 (_ BitVec 32)) Unit!40952)

(assert (=> b!1236155 (= lt!560688 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560685 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1236155 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1236156 () Bool)

(declare-fun e!700753 () Bool)

(assert (=> b!1236156 (= e!700756 e!700753)))

(declare-fun res!824255 () Bool)

(assert (=> b!1236156 (=> (not res!824255) (not e!700753))))

(assert (=> b!1236156 (= res!824255 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38977 a!3835))))))

(declare-fun lt!560687 () Unit!40952)

(assert (=> b!1236156 (= lt!560687 e!700754)))

(declare-fun c!120812 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236156 (= c!120812 (validKeyInArray!0 (select (arr!38440 a!3835) from!3213)))))

(declare-fun b!1236157 () Bool)

(declare-fun res!824261 () Bool)

(assert (=> b!1236157 (=> (not res!824261) (not e!700756))))

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7306 (List!27391 (_ BitVec 64)) Bool)

(assert (=> b!1236157 (= res!824261 (contains!7306 acc!846 k0!2925))))

(declare-fun res!824256 () Bool)

(assert (=> start!102886 (=> (not res!824256) (not e!700756))))

(assert (=> start!102886 (= res!824256 (and (bvslt (size!38977 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38977 a!3835))))))

(assert (=> start!102886 e!700756))

(declare-fun array_inv!29216 (array!79672) Bool)

(assert (=> start!102886 (array_inv!29216 a!3835)))

(assert (=> start!102886 true))

(declare-fun b!1236158 () Bool)

(declare-fun res!824260 () Bool)

(assert (=> b!1236158 (=> (not res!824260) (not e!700756))))

(assert (=> b!1236158 (= res!824260 (not (= from!3213 (bvsub (size!38977 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236159 () Bool)

(declare-fun res!824253 () Bool)

(assert (=> b!1236159 (=> (not res!824253) (not e!700756))))

(assert (=> b!1236159 (= res!824253 (not (contains!7306 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236160 () Bool)

(declare-fun res!824259 () Bool)

(assert (=> b!1236160 (=> (not res!824259) (not e!700756))))

(assert (=> b!1236160 (= res!824259 (not (contains!7306 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236161 () Bool)

(assert (=> b!1236161 (= e!700753 (not true))))

(declare-fun arrayContainsKey!0 (array!79672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1236161 (not (arrayContainsKey!0 a!3835 k0!2925 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun lt!560684 () Unit!40952)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79672 (_ BitVec 32) (_ BitVec 64) List!27391) Unit!40952)

(assert (=> b!1236161 (= lt!560684 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) k0!2925 acc!846))))

(declare-fun b!1236162 () Bool)

(declare-fun res!824258 () Bool)

(assert (=> b!1236162 (=> (not res!824258) (not e!700753))))

(assert (=> b!1236162 (= res!824258 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(assert (= (and start!102886 res!824256) b!1236153))

(assert (= (and b!1236153 res!824257) b!1236159))

(assert (= (and b!1236159 res!824253) b!1236160))

(assert (= (and b!1236160 res!824259) b!1236152))

(assert (= (and b!1236152 res!824254) b!1236157))

(assert (= (and b!1236157 res!824261) b!1236158))

(assert (= (and b!1236158 res!824260) b!1236156))

(assert (= (and b!1236156 c!120812) b!1236155))

(assert (= (and b!1236156 (not c!120812)) b!1236154))

(assert (= (and b!1236156 res!824255) b!1236162))

(assert (= (and b!1236162 res!824258) b!1236161))

(declare-fun m!1140043 () Bool)

(assert (=> b!1236152 m!1140043))

(declare-fun m!1140045 () Bool)

(assert (=> b!1236160 m!1140045))

(declare-fun m!1140047 () Bool)

(assert (=> b!1236157 m!1140047))

(declare-fun m!1140049 () Bool)

(assert (=> b!1236155 m!1140049))

(declare-fun m!1140051 () Bool)

(assert (=> b!1236155 m!1140051))

(declare-fun m!1140053 () Bool)

(assert (=> b!1236155 m!1140053))

(declare-fun m!1140055 () Bool)

(assert (=> b!1236155 m!1140055))

(declare-fun m!1140057 () Bool)

(assert (=> b!1236155 m!1140057))

(declare-fun m!1140059 () Bool)

(assert (=> b!1236155 m!1140059))

(declare-fun m!1140061 () Bool)

(assert (=> b!1236155 m!1140061))

(declare-fun m!1140063 () Bool)

(assert (=> start!102886 m!1140063))

(assert (=> b!1236156 m!1140059))

(assert (=> b!1236156 m!1140059))

(declare-fun m!1140065 () Bool)

(assert (=> b!1236156 m!1140065))

(assert (=> b!1236162 m!1140057))

(declare-fun m!1140067 () Bool)

(assert (=> b!1236159 m!1140067))

(declare-fun m!1140069 () Bool)

(assert (=> b!1236161 m!1140069))

(declare-fun m!1140071 () Bool)

(assert (=> b!1236161 m!1140071))

(declare-fun m!1140073 () Bool)

(assert (=> b!1236153 m!1140073))

(check-sat (not b!1236153) (not b!1236162) (not b!1236152) (not b!1236161) (not start!102886) (not b!1236159) (not b!1236160) (not b!1236157) (not b!1236156) (not b!1236155))
(check-sat)
