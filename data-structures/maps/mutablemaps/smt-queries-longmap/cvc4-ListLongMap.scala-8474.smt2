; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103234 () Bool)

(assert start!103234)

(declare-fun b!1238755 () Bool)

(declare-fun res!826480 () Bool)

(declare-fun e!702066 () Bool)

(assert (=> b!1238755 (=> (not res!826480) (not e!702066))))

(declare-datatypes ((List!27458 0))(
  ( (Nil!27455) (Cons!27454 (h!28663 (_ BitVec 64)) (t!40928 List!27458)) )
))
(declare-fun acc!846 () List!27458)

(declare-fun contains!7373 (List!27458 (_ BitVec 64)) Bool)

(assert (=> b!1238755 (= res!826480 (not (contains!7373 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238756 () Bool)

(declare-fun res!826478 () Bool)

(assert (=> b!1238756 (=> (not res!826478) (not e!702066))))

(declare-datatypes ((array!79818 0))(
  ( (array!79819 (arr!38507 (Array (_ BitVec 32) (_ BitVec 64))) (size!39044 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79818)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79818 (_ BitVec 32) List!27458) Bool)

(assert (=> b!1238756 (= res!826478 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238757 () Bool)

(declare-fun res!826475 () Bool)

(assert (=> b!1238757 (=> (not res!826475) (not e!702066))))

(declare-fun noDuplicate!1980 (List!27458) Bool)

(assert (=> b!1238757 (= res!826475 (noDuplicate!1980 acc!846))))

(declare-fun b!1238758 () Bool)

(declare-fun res!826477 () Bool)

(assert (=> b!1238758 (=> (not res!826477) (not e!702066))))

(assert (=> b!1238758 (= res!826477 (not (contains!7373 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238759 () Bool)

(assert (=> b!1238759 (= e!702066 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39044 a!3835))))))

(declare-datatypes ((Unit!41082 0))(
  ( (Unit!41083) )
))
(declare-fun lt!561408 () Unit!41082)

(declare-fun e!702068 () Unit!41082)

(assert (=> b!1238759 (= lt!561408 e!702068)))

(declare-fun c!121003 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238759 (= c!121003 (validKeyInArray!0 (select (arr!38507 a!3835) from!3213)))))

(declare-fun res!826474 () Bool)

(assert (=> start!103234 (=> (not res!826474) (not e!702066))))

(assert (=> start!103234 (= res!826474 (and (bvslt (size!39044 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39044 a!3835))))))

(assert (=> start!103234 e!702066))

(declare-fun array_inv!29283 (array!79818) Bool)

(assert (=> start!103234 (array_inv!29283 a!3835)))

(assert (=> start!103234 true))

(declare-fun b!1238760 () Bool)

(declare-fun lt!561412 () Unit!41082)

(assert (=> b!1238760 (= e!702068 lt!561412)))

(declare-fun lt!561410 () List!27458)

(assert (=> b!1238760 (= lt!561410 (Cons!27454 (select (arr!38507 a!3835) from!3213) acc!846))))

(declare-fun lt!561411 () Unit!41082)

(declare-fun lemmaListSubSeqRefl!0 (List!27458) Unit!41082)

(assert (=> b!1238760 (= lt!561411 (lemmaListSubSeqRefl!0 lt!561410))))

(declare-fun subseq!610 (List!27458 List!27458) Bool)

(assert (=> b!1238760 (subseq!610 lt!561410 lt!561410)))

(declare-fun lt!561409 () Unit!41082)

(declare-fun subseqTail!97 (List!27458 List!27458) Unit!41082)

(assert (=> b!1238760 (= lt!561409 (subseqTail!97 lt!561410 lt!561410))))

(assert (=> b!1238760 (subseq!610 acc!846 lt!561410)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79818 List!27458 List!27458 (_ BitVec 32)) Unit!41082)

(assert (=> b!1238760 (= lt!561412 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561410 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1238760 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1238761 () Bool)

(declare-fun res!826479 () Bool)

(assert (=> b!1238761 (=> (not res!826479) (not e!702066))))

(assert (=> b!1238761 (= res!826479 (not (= from!3213 (bvsub (size!39044 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238762 () Bool)

(declare-fun res!826476 () Bool)

(assert (=> b!1238762 (=> (not res!826476) (not e!702066))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1238762 (= res!826476 (contains!7373 acc!846 k!2925))))

(declare-fun b!1238763 () Bool)

(declare-fun Unit!41084 () Unit!41082)

(assert (=> b!1238763 (= e!702068 Unit!41084)))

(assert (= (and start!103234 res!826474) b!1238757))

(assert (= (and b!1238757 res!826475) b!1238755))

(assert (= (and b!1238755 res!826480) b!1238758))

(assert (= (and b!1238758 res!826477) b!1238756))

(assert (= (and b!1238756 res!826478) b!1238762))

(assert (= (and b!1238762 res!826476) b!1238761))

(assert (= (and b!1238761 res!826479) b!1238759))

(assert (= (and b!1238759 c!121003) b!1238760))

(assert (= (and b!1238759 (not c!121003)) b!1238763))

(declare-fun m!1142305 () Bool)

(assert (=> b!1238760 m!1142305))

(declare-fun m!1142307 () Bool)

(assert (=> b!1238760 m!1142307))

(declare-fun m!1142309 () Bool)

(assert (=> b!1238760 m!1142309))

(declare-fun m!1142311 () Bool)

(assert (=> b!1238760 m!1142311))

(declare-fun m!1142313 () Bool)

(assert (=> b!1238760 m!1142313))

(declare-fun m!1142315 () Bool)

(assert (=> b!1238760 m!1142315))

(declare-fun m!1142317 () Bool)

(assert (=> b!1238760 m!1142317))

(declare-fun m!1142319 () Bool)

(assert (=> b!1238762 m!1142319))

(assert (=> b!1238759 m!1142313))

(assert (=> b!1238759 m!1142313))

(declare-fun m!1142321 () Bool)

(assert (=> b!1238759 m!1142321))

(declare-fun m!1142323 () Bool)

(assert (=> b!1238758 m!1142323))

(declare-fun m!1142325 () Bool)

(assert (=> b!1238756 m!1142325))

(declare-fun m!1142327 () Bool)

(assert (=> b!1238757 m!1142327))

(declare-fun m!1142329 () Bool)

(assert (=> b!1238755 m!1142329))

(declare-fun m!1142331 () Bool)

(assert (=> start!103234 m!1142331))

(push 1)

(assert (not b!1238762))

(assert (not b!1238755))

(assert (not b!1238759))

(assert (not b!1238758))

(assert (not b!1238756))

(assert (not b!1238757))

(assert (not start!103234))

(assert (not b!1238760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

