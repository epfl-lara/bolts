; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103310 () Bool)

(assert start!103310)

(declare-fun b!1239285 () Bool)

(declare-fun res!826861 () Bool)

(declare-fun e!702362 () Bool)

(assert (=> b!1239285 (=> (not res!826861) (not e!702362))))

(declare-datatypes ((List!27469 0))(
  ( (Nil!27466) (Cons!27465 (h!28674 (_ BitVec 64)) (t!40939 List!27469)) )
))
(declare-fun acc!846 () List!27469)

(declare-fun contains!7384 (List!27469 (_ BitVec 64)) Bool)

(assert (=> b!1239285 (= res!826861 (not (contains!7384 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239286 () Bool)

(declare-datatypes ((Unit!41119 0))(
  ( (Unit!41120) )
))
(declare-fun e!702359 () Unit!41119)

(declare-fun lt!561622 () Unit!41119)

(assert (=> b!1239286 (= e!702359 lt!561622)))

(declare-fun lt!561624 () List!27469)

(declare-datatypes ((array!79843 0))(
  ( (array!79844 (arr!38518 (Array (_ BitVec 32) (_ BitVec 64))) (size!39055 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79843)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1239286 (= lt!561624 (Cons!27465 (select (arr!38518 a!3835) from!3213) acc!846))))

(declare-fun lt!561625 () Unit!41119)

(declare-fun lemmaListSubSeqRefl!0 (List!27469) Unit!41119)

(assert (=> b!1239286 (= lt!561625 (lemmaListSubSeqRefl!0 lt!561624))))

(declare-fun subseq!621 (List!27469 List!27469) Bool)

(assert (=> b!1239286 (subseq!621 lt!561624 lt!561624)))

(declare-fun lt!561621 () Unit!41119)

(declare-fun subseqTail!108 (List!27469 List!27469) Unit!41119)

(assert (=> b!1239286 (= lt!561621 (subseqTail!108 lt!561624 lt!561624))))

(assert (=> b!1239286 (subseq!621 acc!846 lt!561624)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79843 List!27469 List!27469 (_ BitVec 32)) Unit!41119)

(assert (=> b!1239286 (= lt!561622 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561624 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79843 (_ BitVec 32) List!27469) Bool)

(assert (=> b!1239286 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun res!826866 () Bool)

(assert (=> start!103310 (=> (not res!826866) (not e!702362))))

(assert (=> start!103310 (= res!826866 (and (bvslt (size!39055 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39055 a!3835))))))

(assert (=> start!103310 e!702362))

(declare-fun array_inv!29294 (array!79843) Bool)

(assert (=> start!103310 (array_inv!29294 a!3835)))

(assert (=> start!103310 true))

(declare-fun b!1239287 () Bool)

(declare-fun res!826865 () Bool)

(assert (=> b!1239287 (=> (not res!826865) (not e!702362))))

(assert (=> b!1239287 (= res!826865 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239288 () Bool)

(declare-fun e!702361 () Bool)

(assert (=> b!1239288 (= e!702362 e!702361)))

(declare-fun res!826867 () Bool)

(assert (=> b!1239288 (=> (not res!826867) (not e!702361))))

(assert (=> b!1239288 (= res!826867 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39055 a!3835))))))

(declare-fun lt!561620 () Unit!41119)

(assert (=> b!1239288 (= lt!561620 e!702359)))

(declare-fun c!121075 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239288 (= c!121075 (validKeyInArray!0 (select (arr!38518 a!3835) from!3213)))))

(declare-fun b!1239289 () Bool)

(declare-fun res!826863 () Bool)

(assert (=> b!1239289 (=> (not res!826863) (not e!702362))))

(assert (=> b!1239289 (= res!826863 (not (= from!3213 (bvsub (size!39055 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239290 () Bool)

(declare-fun res!826860 () Bool)

(assert (=> b!1239290 (=> (not res!826860) (not e!702362))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1239290 (= res!826860 (contains!7384 acc!846 k0!2925))))

(declare-fun b!1239291 () Bool)

(declare-fun res!826864 () Bool)

(assert (=> b!1239291 (=> (not res!826864) (not e!702362))))

(assert (=> b!1239291 (= res!826864 (not (contains!7384 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239292 () Bool)

(assert (=> b!1239292 (= e!702361 false)))

(declare-fun lt!561623 () Bool)

(assert (=> b!1239292 (= lt!561623 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1239293 () Bool)

(declare-fun Unit!41121 () Unit!41119)

(assert (=> b!1239293 (= e!702359 Unit!41121)))

(declare-fun b!1239294 () Bool)

(declare-fun res!826862 () Bool)

(assert (=> b!1239294 (=> (not res!826862) (not e!702362))))

(declare-fun noDuplicate!1991 (List!27469) Bool)

(assert (=> b!1239294 (= res!826862 (noDuplicate!1991 acc!846))))

(assert (= (and start!103310 res!826866) b!1239294))

(assert (= (and b!1239294 res!826862) b!1239285))

(assert (= (and b!1239285 res!826861) b!1239291))

(assert (= (and b!1239291 res!826864) b!1239287))

(assert (= (and b!1239287 res!826865) b!1239290))

(assert (= (and b!1239290 res!826860) b!1239289))

(assert (= (and b!1239289 res!826863) b!1239288))

(assert (= (and b!1239288 c!121075) b!1239286))

(assert (= (and b!1239288 (not c!121075)) b!1239293))

(assert (= (and b!1239288 res!826867) b!1239292))

(declare-fun m!1142769 () Bool)

(assert (=> b!1239292 m!1142769))

(declare-fun m!1142771 () Bool)

(assert (=> b!1239290 m!1142771))

(declare-fun m!1142773 () Bool)

(assert (=> b!1239294 m!1142773))

(declare-fun m!1142775 () Bool)

(assert (=> start!103310 m!1142775))

(declare-fun m!1142777 () Bool)

(assert (=> b!1239288 m!1142777))

(assert (=> b!1239288 m!1142777))

(declare-fun m!1142779 () Bool)

(assert (=> b!1239288 m!1142779))

(declare-fun m!1142781 () Bool)

(assert (=> b!1239287 m!1142781))

(declare-fun m!1142783 () Bool)

(assert (=> b!1239291 m!1142783))

(declare-fun m!1142785 () Bool)

(assert (=> b!1239285 m!1142785))

(declare-fun m!1142787 () Bool)

(assert (=> b!1239286 m!1142787))

(declare-fun m!1142789 () Bool)

(assert (=> b!1239286 m!1142789))

(declare-fun m!1142791 () Bool)

(assert (=> b!1239286 m!1142791))

(assert (=> b!1239286 m!1142777))

(declare-fun m!1142793 () Bool)

(assert (=> b!1239286 m!1142793))

(assert (=> b!1239286 m!1142769))

(declare-fun m!1142795 () Bool)

(assert (=> b!1239286 m!1142795))

(check-sat (not b!1239291) (not b!1239286) (not b!1239285) (not start!103310) (not b!1239294) (not b!1239287) (not b!1239292) (not b!1239290) (not b!1239288))
(check-sat)
