; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102842 () Bool)

(assert start!102842)

(declare-fun res!823702 () Bool)

(declare-fun e!700491 () Bool)

(assert (=> start!102842 (=> (not res!823702) (not e!700491))))

(declare-datatypes ((array!79628 0))(
  ( (array!79629 (arr!38418 (Array (_ BitVec 32) (_ BitVec 64))) (size!38955 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79628)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102842 (= res!823702 (and (bvslt (size!38955 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38955 a!3835))))))

(assert (=> start!102842 e!700491))

(declare-fun array_inv!29194 (array!79628) Bool)

(assert (=> start!102842 (array_inv!29194 a!3835)))

(assert (=> start!102842 true))

(declare-fun b!1235469 () Bool)

(declare-datatypes ((Unit!40886 0))(
  ( (Unit!40887) )
))
(declare-fun e!700492 () Unit!40886)

(declare-fun Unit!40888 () Unit!40886)

(assert (=> b!1235469 (= e!700492 Unit!40888)))

(declare-fun b!1235470 () Bool)

(declare-fun res!823706 () Bool)

(assert (=> b!1235470 (=> (not res!823706) (not e!700491))))

(declare-datatypes ((List!27369 0))(
  ( (Nil!27366) (Cons!27365 (h!28574 (_ BitVec 64)) (t!40839 List!27369)) )
))
(declare-fun acc!846 () List!27369)

(declare-fun contains!7284 (List!27369 (_ BitVec 64)) Bool)

(assert (=> b!1235470 (= res!823706 (not (contains!7284 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235471 () Bool)

(declare-fun res!823707 () Bool)

(assert (=> b!1235471 (=> (not res!823707) (not e!700491))))

(assert (=> b!1235471 (= res!823707 (not (contains!7284 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235472 () Bool)

(declare-fun res!823709 () Bool)

(assert (=> b!1235472 (=> (not res!823709) (not e!700491))))

(declare-fun noDuplicate!1891 (List!27369) Bool)

(assert (=> b!1235472 (= res!823709 (noDuplicate!1891 acc!846))))

(declare-fun b!1235473 () Bool)

(declare-fun res!823703 () Bool)

(assert (=> b!1235473 (=> (not res!823703) (not e!700491))))

(declare-fun arrayNoDuplicates!0 (array!79628 (_ BitVec 32) List!27369) Bool)

(assert (=> b!1235473 (= res!823703 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235474 () Bool)

(declare-fun res!823708 () Bool)

(assert (=> b!1235474 (=> (not res!823708) (not e!700491))))

(assert (=> b!1235474 (= res!823708 (not (= from!3213 (bvsub (size!38955 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235475 () Bool)

(declare-fun e!700490 () Bool)

(assert (=> b!1235475 (= e!700490 false)))

(declare-fun lt!560293 () Bool)

(assert (=> b!1235475 (= lt!560293 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235476 () Bool)

(assert (=> b!1235476 (= e!700491 e!700490)))

(declare-fun res!823704 () Bool)

(assert (=> b!1235476 (=> (not res!823704) (not e!700490))))

(assert (=> b!1235476 (= res!823704 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38955 a!3835))))))

(declare-fun lt!560291 () Unit!40886)

(assert (=> b!1235476 (= lt!560291 e!700492)))

(declare-fun c!120746 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235476 (= c!120746 (validKeyInArray!0 (select (arr!38418 a!3835) from!3213)))))

(declare-fun b!1235477 () Bool)

(declare-fun res!823705 () Bool)

(assert (=> b!1235477 (=> (not res!823705) (not e!700491))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235477 (= res!823705 (contains!7284 acc!846 k!2925))))

(declare-fun b!1235478 () Bool)

(declare-fun lt!560288 () Unit!40886)

(assert (=> b!1235478 (= e!700492 lt!560288)))

(declare-fun lt!560292 () List!27369)

(assert (=> b!1235478 (= lt!560292 (Cons!27365 (select (arr!38418 a!3835) from!3213) acc!846))))

(declare-fun lt!560290 () Unit!40886)

(declare-fun lemmaListSubSeqRefl!0 (List!27369) Unit!40886)

(assert (=> b!1235478 (= lt!560290 (lemmaListSubSeqRefl!0 lt!560292))))

(declare-fun subseq!539 (List!27369 List!27369) Bool)

(assert (=> b!1235478 (subseq!539 lt!560292 lt!560292)))

(declare-fun lt!560289 () Unit!40886)

(declare-fun subseqTail!32 (List!27369 List!27369) Unit!40886)

(assert (=> b!1235478 (= lt!560289 (subseqTail!32 lt!560292 lt!560292))))

(assert (=> b!1235478 (subseq!539 acc!846 lt!560292)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79628 List!27369 List!27369 (_ BitVec 32)) Unit!40886)

(assert (=> b!1235478 (= lt!560288 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560292 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235478 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102842 res!823702) b!1235472))

(assert (= (and b!1235472 res!823709) b!1235471))

(assert (= (and b!1235471 res!823707) b!1235470))

(assert (= (and b!1235470 res!823706) b!1235473))

(assert (= (and b!1235473 res!823703) b!1235477))

(assert (= (and b!1235477 res!823705) b!1235474))

(assert (= (and b!1235474 res!823708) b!1235476))

(assert (= (and b!1235476 c!120746) b!1235478))

(assert (= (and b!1235476 (not c!120746)) b!1235469))

(assert (= (and b!1235476 res!823704) b!1235475))

(declare-fun m!1139399 () Bool)

(assert (=> b!1235475 m!1139399))

(declare-fun m!1139401 () Bool)

(assert (=> b!1235470 m!1139401))

(declare-fun m!1139403 () Bool)

(assert (=> b!1235472 m!1139403))

(declare-fun m!1139405 () Bool)

(assert (=> b!1235477 m!1139405))

(declare-fun m!1139407 () Bool)

(assert (=> start!102842 m!1139407))

(declare-fun m!1139409 () Bool)

(assert (=> b!1235473 m!1139409))

(declare-fun m!1139411 () Bool)

(assert (=> b!1235471 m!1139411))

(declare-fun m!1139413 () Bool)

(assert (=> b!1235478 m!1139413))

(declare-fun m!1139415 () Bool)

(assert (=> b!1235478 m!1139415))

(declare-fun m!1139417 () Bool)

(assert (=> b!1235478 m!1139417))

(declare-fun m!1139419 () Bool)

(assert (=> b!1235478 m!1139419))

(declare-fun m!1139421 () Bool)

(assert (=> b!1235478 m!1139421))

(assert (=> b!1235478 m!1139399))

(declare-fun m!1139423 () Bool)

(assert (=> b!1235478 m!1139423))

(assert (=> b!1235476 m!1139419))

(assert (=> b!1235476 m!1139419))

(declare-fun m!1139425 () Bool)

(assert (=> b!1235476 m!1139425))

(push 1)

