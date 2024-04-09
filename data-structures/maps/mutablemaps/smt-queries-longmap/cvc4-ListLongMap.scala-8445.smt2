; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102846 () Bool)

(assert start!102846)

(declare-fun b!1235529 () Bool)

(declare-fun res!823755 () Bool)

(declare-fun e!700514 () Bool)

(assert (=> b!1235529 (=> (not res!823755) (not e!700514))))

(declare-datatypes ((array!79632 0))(
  ( (array!79633 (arr!38420 (Array (_ BitVec 32) (_ BitVec 64))) (size!38957 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79632)

(declare-datatypes ((List!27371 0))(
  ( (Nil!27368) (Cons!27367 (h!28576 (_ BitVec 64)) (t!40841 List!27371)) )
))
(declare-fun acc!846 () List!27371)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79632 (_ BitVec 32) List!27371) Bool)

(assert (=> b!1235529 (= res!823755 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235530 () Bool)

(declare-fun e!700513 () Bool)

(assert (=> b!1235530 (= e!700514 e!700513)))

(declare-fun res!823751 () Bool)

(assert (=> b!1235530 (=> (not res!823751) (not e!700513))))

(assert (=> b!1235530 (= res!823751 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38957 a!3835))))))

(declare-datatypes ((Unit!40892 0))(
  ( (Unit!40893) )
))
(declare-fun lt!560327 () Unit!40892)

(declare-fun e!700516 () Unit!40892)

(assert (=> b!1235530 (= lt!560327 e!700516)))

(declare-fun c!120752 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235530 (= c!120752 (validKeyInArray!0 (select (arr!38420 a!3835) from!3213)))))

(declare-fun b!1235531 () Bool)

(declare-fun res!823752 () Bool)

(assert (=> b!1235531 (=> (not res!823752) (not e!700514))))

(declare-fun noDuplicate!1893 (List!27371) Bool)

(assert (=> b!1235531 (= res!823752 (noDuplicate!1893 acc!846))))

(declare-fun b!1235532 () Bool)

(assert (=> b!1235532 (= e!700513 false)))

(declare-fun lt!560325 () Bool)

(assert (=> b!1235532 (= lt!560325 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235533 () Bool)

(declare-fun res!823754 () Bool)

(assert (=> b!1235533 (=> (not res!823754) (not e!700514))))

(declare-fun contains!7286 (List!27371 (_ BitVec 64)) Bool)

(assert (=> b!1235533 (= res!823754 (not (contains!7286 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!823757 () Bool)

(assert (=> start!102846 (=> (not res!823757) (not e!700514))))

(assert (=> start!102846 (= res!823757 (and (bvslt (size!38957 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38957 a!3835))))))

(assert (=> start!102846 e!700514))

(declare-fun array_inv!29196 (array!79632) Bool)

(assert (=> start!102846 (array_inv!29196 a!3835)))

(assert (=> start!102846 true))

(declare-fun b!1235534 () Bool)

(declare-fun Unit!40894 () Unit!40892)

(assert (=> b!1235534 (= e!700516 Unit!40894)))

(declare-fun b!1235535 () Bool)

(declare-fun res!823750 () Bool)

(assert (=> b!1235535 (=> (not res!823750) (not e!700514))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235535 (= res!823750 (contains!7286 acc!846 k!2925))))

(declare-fun b!1235536 () Bool)

(declare-fun res!823756 () Bool)

(assert (=> b!1235536 (=> (not res!823756) (not e!700514))))

(assert (=> b!1235536 (= res!823756 (not (contains!7286 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235537 () Bool)

(declare-fun res!823753 () Bool)

(assert (=> b!1235537 (=> (not res!823753) (not e!700514))))

(assert (=> b!1235537 (= res!823753 (not (= from!3213 (bvsub (size!38957 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235538 () Bool)

(declare-fun lt!560329 () Unit!40892)

(assert (=> b!1235538 (= e!700516 lt!560329)))

(declare-fun lt!560326 () List!27371)

(assert (=> b!1235538 (= lt!560326 (Cons!27367 (select (arr!38420 a!3835) from!3213) acc!846))))

(declare-fun lt!560324 () Unit!40892)

(declare-fun lemmaListSubSeqRefl!0 (List!27371) Unit!40892)

(assert (=> b!1235538 (= lt!560324 (lemmaListSubSeqRefl!0 lt!560326))))

(declare-fun subseq!541 (List!27371 List!27371) Bool)

(assert (=> b!1235538 (subseq!541 lt!560326 lt!560326)))

(declare-fun lt!560328 () Unit!40892)

(declare-fun subseqTail!34 (List!27371 List!27371) Unit!40892)

(assert (=> b!1235538 (= lt!560328 (subseqTail!34 lt!560326 lt!560326))))

(assert (=> b!1235538 (subseq!541 acc!846 lt!560326)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79632 List!27371 List!27371 (_ BitVec 32)) Unit!40892)

(assert (=> b!1235538 (= lt!560329 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560326 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235538 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102846 res!823757) b!1235531))

(assert (= (and b!1235531 res!823752) b!1235533))

(assert (= (and b!1235533 res!823754) b!1235536))

(assert (= (and b!1235536 res!823756) b!1235529))

(assert (= (and b!1235529 res!823755) b!1235535))

(assert (= (and b!1235535 res!823750) b!1235537))

(assert (= (and b!1235537 res!823753) b!1235530))

(assert (= (and b!1235530 c!120752) b!1235538))

(assert (= (and b!1235530 (not c!120752)) b!1235534))

(assert (= (and b!1235530 res!823751) b!1235532))

(declare-fun m!1139455 () Bool)

(assert (=> b!1235536 m!1139455))

(declare-fun m!1139457 () Bool)

(assert (=> b!1235531 m!1139457))

(declare-fun m!1139459 () Bool)

(assert (=> b!1235530 m!1139459))

(assert (=> b!1235530 m!1139459))

(declare-fun m!1139461 () Bool)

(assert (=> b!1235530 m!1139461))

(declare-fun m!1139463 () Bool)

(assert (=> b!1235538 m!1139463))

(declare-fun m!1139465 () Bool)

(assert (=> b!1235538 m!1139465))

(declare-fun m!1139467 () Bool)

(assert (=> b!1235538 m!1139467))

(assert (=> b!1235538 m!1139459))

(declare-fun m!1139469 () Bool)

(assert (=> b!1235538 m!1139469))

(declare-fun m!1139471 () Bool)

(assert (=> b!1235538 m!1139471))

(declare-fun m!1139473 () Bool)

(assert (=> b!1235538 m!1139473))

(declare-fun m!1139475 () Bool)

(assert (=> b!1235529 m!1139475))

(assert (=> b!1235532 m!1139465))

(declare-fun m!1139477 () Bool)

(assert (=> start!102846 m!1139477))

(declare-fun m!1139479 () Bool)

(assert (=> b!1235533 m!1139479))

(declare-fun m!1139481 () Bool)

(assert (=> b!1235535 m!1139481))

(push 1)

(assert (not b!1235533))

(assert (not b!1235536))

