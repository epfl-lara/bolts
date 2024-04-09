; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103232 () Bool)

(assert start!103232)

(declare-fun b!1238728 () Bool)

(declare-fun e!702057 () Bool)

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79816 0))(
  ( (array!79817 (arr!38506 (Array (_ BitVec 32) (_ BitVec 64))) (size!39043 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79816)

(assert (=> b!1238728 (= e!702057 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!3213) (size!39043 a!3835))))))

(declare-datatypes ((Unit!41079 0))(
  ( (Unit!41080) )
))
(declare-fun lt!561394 () Unit!41079)

(declare-fun e!702059 () Unit!41079)

(assert (=> b!1238728 (= lt!561394 e!702059)))

(declare-fun c!121000 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1238728 (= c!121000 (validKeyInArray!0 (select (arr!38506 a!3835) from!3213)))))

(declare-fun res!826458 () Bool)

(assert (=> start!103232 (=> (not res!826458) (not e!702057))))

(assert (=> start!103232 (= res!826458 (and (bvslt (size!39043 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39043 a!3835))))))

(assert (=> start!103232 e!702057))

(declare-fun array_inv!29282 (array!79816) Bool)

(assert (=> start!103232 (array_inv!29282 a!3835)))

(assert (=> start!103232 true))

(declare-fun b!1238729 () Bool)

(declare-fun res!826455 () Bool)

(assert (=> b!1238729 (=> (not res!826455) (not e!702057))))

(declare-datatypes ((List!27457 0))(
  ( (Nil!27454) (Cons!27453 (h!28662 (_ BitVec 64)) (t!40927 List!27457)) )
))
(declare-fun acc!846 () List!27457)

(declare-fun arrayNoDuplicates!0 (array!79816 (_ BitVec 32) List!27457) Bool)

(assert (=> b!1238729 (= res!826455 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1238730 () Bool)

(declare-fun res!826457 () Bool)

(assert (=> b!1238730 (=> (not res!826457) (not e!702057))))

(assert (=> b!1238730 (= res!826457 (not (= from!3213 (bvsub (size!39043 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1238731 () Bool)

(declare-fun res!826453 () Bool)

(assert (=> b!1238731 (=> (not res!826453) (not e!702057))))

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7372 (List!27457 (_ BitVec 64)) Bool)

(assert (=> b!1238731 (= res!826453 (contains!7372 acc!846 k0!2925))))

(declare-fun b!1238732 () Bool)

(declare-fun res!826456 () Bool)

(assert (=> b!1238732 (=> (not res!826456) (not e!702057))))

(declare-fun noDuplicate!1979 (List!27457) Bool)

(assert (=> b!1238732 (= res!826456 (noDuplicate!1979 acc!846))))

(declare-fun b!1238733 () Bool)

(declare-fun res!826454 () Bool)

(assert (=> b!1238733 (=> (not res!826454) (not e!702057))))

(assert (=> b!1238733 (= res!826454 (not (contains!7372 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238734 () Bool)

(declare-fun Unit!41081 () Unit!41079)

(assert (=> b!1238734 (= e!702059 Unit!41081)))

(declare-fun b!1238735 () Bool)

(declare-fun res!826459 () Bool)

(assert (=> b!1238735 (=> (not res!826459) (not e!702057))))

(assert (=> b!1238735 (= res!826459 (not (contains!7372 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1238736 () Bool)

(declare-fun lt!561396 () Unit!41079)

(assert (=> b!1238736 (= e!702059 lt!561396)))

(declare-fun lt!561393 () List!27457)

(assert (=> b!1238736 (= lt!561393 (Cons!27453 (select (arr!38506 a!3835) from!3213) acc!846))))

(declare-fun lt!561395 () Unit!41079)

(declare-fun lemmaListSubSeqRefl!0 (List!27457) Unit!41079)

(assert (=> b!1238736 (= lt!561395 (lemmaListSubSeqRefl!0 lt!561393))))

(declare-fun subseq!609 (List!27457 List!27457) Bool)

(assert (=> b!1238736 (subseq!609 lt!561393 lt!561393)))

(declare-fun lt!561397 () Unit!41079)

(declare-fun subseqTail!96 (List!27457 List!27457) Unit!41079)

(assert (=> b!1238736 (= lt!561397 (subseqTail!96 lt!561393 lt!561393))))

(assert (=> b!1238736 (subseq!609 acc!846 lt!561393)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79816 List!27457 List!27457 (_ BitVec 32)) Unit!41079)

(assert (=> b!1238736 (= lt!561396 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561393 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1238736 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!103232 res!826458) b!1238732))

(assert (= (and b!1238732 res!826456) b!1238733))

(assert (= (and b!1238733 res!826454) b!1238735))

(assert (= (and b!1238735 res!826459) b!1238729))

(assert (= (and b!1238729 res!826455) b!1238731))

(assert (= (and b!1238731 res!826453) b!1238730))

(assert (= (and b!1238730 res!826457) b!1238728))

(assert (= (and b!1238728 c!121000) b!1238736))

(assert (= (and b!1238728 (not c!121000)) b!1238734))

(declare-fun m!1142277 () Bool)

(assert (=> start!103232 m!1142277))

(declare-fun m!1142279 () Bool)

(assert (=> b!1238733 m!1142279))

(declare-fun m!1142281 () Bool)

(assert (=> b!1238729 m!1142281))

(declare-fun m!1142283 () Bool)

(assert (=> b!1238728 m!1142283))

(assert (=> b!1238728 m!1142283))

(declare-fun m!1142285 () Bool)

(assert (=> b!1238728 m!1142285))

(declare-fun m!1142287 () Bool)

(assert (=> b!1238731 m!1142287))

(declare-fun m!1142289 () Bool)

(assert (=> b!1238736 m!1142289))

(declare-fun m!1142291 () Bool)

(assert (=> b!1238736 m!1142291))

(declare-fun m!1142293 () Bool)

(assert (=> b!1238736 m!1142293))

(declare-fun m!1142295 () Bool)

(assert (=> b!1238736 m!1142295))

(declare-fun m!1142297 () Bool)

(assert (=> b!1238736 m!1142297))

(declare-fun m!1142299 () Bool)

(assert (=> b!1238736 m!1142299))

(assert (=> b!1238736 m!1142283))

(declare-fun m!1142301 () Bool)

(assert (=> b!1238732 m!1142301))

(declare-fun m!1142303 () Bool)

(assert (=> b!1238735 m!1142303))

(check-sat (not start!103232) (not b!1238728) (not b!1238732) (not b!1238736) (not b!1238729) (not b!1238731) (not b!1238735) (not b!1238733))
(check-sat)
