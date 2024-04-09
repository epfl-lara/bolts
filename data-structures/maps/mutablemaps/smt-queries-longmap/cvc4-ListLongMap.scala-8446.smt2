; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102852 () Bool)

(assert start!102852)

(declare-fun b!1235619 () Bool)

(declare-fun res!823822 () Bool)

(declare-fun e!700551 () Bool)

(assert (=> b!1235619 (=> (not res!823822) (not e!700551))))

(declare-datatypes ((array!79638 0))(
  ( (array!79639 (arr!38423 (Array (_ BitVec 32) (_ BitVec 64))) (size!38960 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79638)

(declare-datatypes ((List!27374 0))(
  ( (Nil!27371) (Cons!27370 (h!28579 (_ BitVec 64)) (t!40844 List!27374)) )
))
(declare-fun acc!846 () List!27374)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79638 (_ BitVec 32) List!27374) Bool)

(assert (=> b!1235619 (= res!823822 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235620 () Bool)

(declare-datatypes ((Unit!40901 0))(
  ( (Unit!40902) )
))
(declare-fun e!700550 () Unit!40901)

(declare-fun lt!560383 () Unit!40901)

(assert (=> b!1235620 (= e!700550 lt!560383)))

(declare-fun lt!560379 () List!27374)

(assert (=> b!1235620 (= lt!560379 (Cons!27370 (select (arr!38423 a!3835) from!3213) acc!846))))

(declare-fun lt!560382 () Unit!40901)

(declare-fun lemmaListSubSeqRefl!0 (List!27374) Unit!40901)

(assert (=> b!1235620 (= lt!560382 (lemmaListSubSeqRefl!0 lt!560379))))

(declare-fun subseq!544 (List!27374 List!27374) Bool)

(assert (=> b!1235620 (subseq!544 lt!560379 lt!560379)))

(declare-fun lt!560381 () Unit!40901)

(declare-fun subseqTail!37 (List!27374 List!27374) Unit!40901)

(assert (=> b!1235620 (= lt!560381 (subseqTail!37 lt!560379 lt!560379))))

(assert (=> b!1235620 (subseq!544 acc!846 lt!560379)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79638 List!27374 List!27374 (_ BitVec 32)) Unit!40901)

(assert (=> b!1235620 (= lt!560383 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560379 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235620 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235622 () Bool)

(declare-fun e!700549 () Bool)

(assert (=> b!1235622 (= e!700549 false)))

(declare-fun lt!560378 () Bool)

(assert (=> b!1235622 (= lt!560378 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235623 () Bool)

(declare-fun Unit!40903 () Unit!40901)

(assert (=> b!1235623 (= e!700550 Unit!40903)))

(declare-fun b!1235624 () Bool)

(declare-fun res!823824 () Bool)

(assert (=> b!1235624 (=> (not res!823824) (not e!700551))))

(declare-fun contains!7289 (List!27374 (_ BitVec 64)) Bool)

(assert (=> b!1235624 (= res!823824 (not (contains!7289 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235621 () Bool)

(assert (=> b!1235621 (= e!700551 e!700549)))

(declare-fun res!823826 () Bool)

(assert (=> b!1235621 (=> (not res!823826) (not e!700549))))

(assert (=> b!1235621 (= res!823826 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38960 a!3835))))))

(declare-fun lt!560380 () Unit!40901)

(assert (=> b!1235621 (= lt!560380 e!700550)))

(declare-fun c!120761 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235621 (= c!120761 (validKeyInArray!0 (select (arr!38423 a!3835) from!3213)))))

(declare-fun res!823827 () Bool)

(assert (=> start!102852 (=> (not res!823827) (not e!700551))))

(assert (=> start!102852 (= res!823827 (and (bvslt (size!38960 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38960 a!3835))))))

(assert (=> start!102852 e!700551))

(declare-fun array_inv!29199 (array!79638) Bool)

(assert (=> start!102852 (array_inv!29199 a!3835)))

(assert (=> start!102852 true))

(declare-fun b!1235625 () Bool)

(declare-fun res!823825 () Bool)

(assert (=> b!1235625 (=> (not res!823825) (not e!700551))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235625 (= res!823825 (contains!7289 acc!846 k!2925))))

(declare-fun b!1235626 () Bool)

(declare-fun res!823829 () Bool)

(assert (=> b!1235626 (=> (not res!823829) (not e!700551))))

(declare-fun noDuplicate!1896 (List!27374) Bool)

(assert (=> b!1235626 (= res!823829 (noDuplicate!1896 acc!846))))

(declare-fun b!1235627 () Bool)

(declare-fun res!823828 () Bool)

(assert (=> b!1235627 (=> (not res!823828) (not e!700551))))

(assert (=> b!1235627 (= res!823828 (not (contains!7289 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235628 () Bool)

(declare-fun res!823823 () Bool)

(assert (=> b!1235628 (=> (not res!823823) (not e!700551))))

(assert (=> b!1235628 (= res!823823 (not (= from!3213 (bvsub (size!38960 a!3835) #b00000000000000000000000000000001))))))

(assert (= (and start!102852 res!823827) b!1235626))

(assert (= (and b!1235626 res!823829) b!1235624))

(assert (= (and b!1235624 res!823824) b!1235627))

(assert (= (and b!1235627 res!823828) b!1235619))

(assert (= (and b!1235619 res!823822) b!1235625))

(assert (= (and b!1235625 res!823825) b!1235628))

(assert (= (and b!1235628 res!823823) b!1235621))

(assert (= (and b!1235621 c!120761) b!1235620))

(assert (= (and b!1235621 (not c!120761)) b!1235623))

(assert (= (and b!1235621 res!823826) b!1235622))

(declare-fun m!1139539 () Bool)

(assert (=> start!102852 m!1139539))

(declare-fun m!1139541 () Bool)

(assert (=> b!1235620 m!1139541))

(declare-fun m!1139543 () Bool)

(assert (=> b!1235620 m!1139543))

(declare-fun m!1139545 () Bool)

(assert (=> b!1235620 m!1139545))

(declare-fun m!1139547 () Bool)

(assert (=> b!1235620 m!1139547))

(declare-fun m!1139549 () Bool)

(assert (=> b!1235620 m!1139549))

(declare-fun m!1139551 () Bool)

(assert (=> b!1235620 m!1139551))

(declare-fun m!1139553 () Bool)

(assert (=> b!1235620 m!1139553))

(declare-fun m!1139555 () Bool)

(assert (=> b!1235625 m!1139555))

(declare-fun m!1139557 () Bool)

(assert (=> b!1235624 m!1139557))

(declare-fun m!1139559 () Bool)

(assert (=> b!1235627 m!1139559))

(declare-fun m!1139561 () Bool)

(assert (=> b!1235619 m!1139561))

(declare-fun m!1139563 () Bool)

(assert (=> b!1235626 m!1139563))

(assert (=> b!1235622 m!1139551))

(assert (=> b!1235621 m!1139553))

(assert (=> b!1235621 m!1139553))

(declare-fun m!1139565 () Bool)

(assert (=> b!1235621 m!1139565))

(push 1)

(assert (not start!102852))

(assert (not b!1235620))

(assert (not b!1235622))

(assert (not b!1235625))

