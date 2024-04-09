; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102862 () Bool)

(assert start!102862)

(declare-fun b!1235769 () Bool)

(declare-fun res!823948 () Bool)

(declare-fun e!700612 () Bool)

(assert (=> b!1235769 (=> (not res!823948) (not e!700612))))

(declare-datatypes ((List!27379 0))(
  ( (Nil!27376) (Cons!27375 (h!28584 (_ BitVec 64)) (t!40849 List!27379)) )
))
(declare-fun acc!846 () List!27379)

(declare-fun contains!7294 (List!27379 (_ BitVec 64)) Bool)

(assert (=> b!1235769 (= res!823948 (not (contains!7294 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235770 () Bool)

(declare-fun e!700610 () Bool)

(assert (=> b!1235770 (= e!700610 false)))

(declare-fun lt!560468 () Bool)

(declare-datatypes ((array!79648 0))(
  ( (array!79649 (arr!38428 (Array (_ BitVec 32) (_ BitVec 64))) (size!38965 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79648)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79648 (_ BitVec 32) List!27379) Bool)

(assert (=> b!1235770 (= lt!560468 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235771 () Bool)

(declare-fun res!823944 () Bool)

(assert (=> b!1235771 (=> (not res!823944) (not e!700612))))

(assert (=> b!1235771 (= res!823944 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235772 () Bool)

(declare-fun res!823947 () Bool)

(assert (=> b!1235772 (=> (not res!823947) (not e!700612))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1235772 (= res!823947 (contains!7294 acc!846 k0!2925))))

(declare-fun b!1235773 () Bool)

(declare-fun res!823943 () Bool)

(assert (=> b!1235773 (=> (not res!823943) (not e!700612))))

(assert (=> b!1235773 (= res!823943 (not (contains!7294 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235774 () Bool)

(declare-datatypes ((Unit!40916 0))(
  ( (Unit!40917) )
))
(declare-fun e!700609 () Unit!40916)

(declare-fun Unit!40918 () Unit!40916)

(assert (=> b!1235774 (= e!700609 Unit!40918)))

(declare-fun b!1235775 () Bool)

(assert (=> b!1235775 (= e!700612 e!700610)))

(declare-fun res!823945 () Bool)

(assert (=> b!1235775 (=> (not res!823945) (not e!700610))))

(assert (=> b!1235775 (= res!823945 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38965 a!3835))))))

(declare-fun lt!560470 () Unit!40916)

(assert (=> b!1235775 (= lt!560470 e!700609)))

(declare-fun c!120776 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235775 (= c!120776 (validKeyInArray!0 (select (arr!38428 a!3835) from!3213)))))

(declare-fun res!823946 () Bool)

(assert (=> start!102862 (=> (not res!823946) (not e!700612))))

(assert (=> start!102862 (= res!823946 (and (bvslt (size!38965 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38965 a!3835))))))

(assert (=> start!102862 e!700612))

(declare-fun array_inv!29204 (array!79648) Bool)

(assert (=> start!102862 (array_inv!29204 a!3835)))

(assert (=> start!102862 true))

(declare-fun b!1235776 () Bool)

(declare-fun res!823949 () Bool)

(assert (=> b!1235776 (=> (not res!823949) (not e!700612))))

(assert (=> b!1235776 (= res!823949 (not (= from!3213 (bvsub (size!38965 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235777 () Bool)

(declare-fun res!823942 () Bool)

(assert (=> b!1235777 (=> (not res!823942) (not e!700612))))

(declare-fun noDuplicate!1901 (List!27379) Bool)

(assert (=> b!1235777 (= res!823942 (noDuplicate!1901 acc!846))))

(declare-fun b!1235778 () Bool)

(declare-fun lt!560473 () Unit!40916)

(assert (=> b!1235778 (= e!700609 lt!560473)))

(declare-fun lt!560471 () List!27379)

(assert (=> b!1235778 (= lt!560471 (Cons!27375 (select (arr!38428 a!3835) from!3213) acc!846))))

(declare-fun lt!560469 () Unit!40916)

(declare-fun lemmaListSubSeqRefl!0 (List!27379) Unit!40916)

(assert (=> b!1235778 (= lt!560469 (lemmaListSubSeqRefl!0 lt!560471))))

(declare-fun subseq!549 (List!27379 List!27379) Bool)

(assert (=> b!1235778 (subseq!549 lt!560471 lt!560471)))

(declare-fun lt!560472 () Unit!40916)

(declare-fun subseqTail!42 (List!27379 List!27379) Unit!40916)

(assert (=> b!1235778 (= lt!560472 (subseqTail!42 lt!560471 lt!560471))))

(assert (=> b!1235778 (subseq!549 acc!846 lt!560471)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79648 List!27379 List!27379 (_ BitVec 32)) Unit!40916)

(assert (=> b!1235778 (= lt!560473 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560471 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235778 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102862 res!823946) b!1235777))

(assert (= (and b!1235777 res!823942) b!1235773))

(assert (= (and b!1235773 res!823943) b!1235769))

(assert (= (and b!1235769 res!823948) b!1235771))

(assert (= (and b!1235771 res!823944) b!1235772))

(assert (= (and b!1235772 res!823947) b!1235776))

(assert (= (and b!1235776 res!823949) b!1235775))

(assert (= (and b!1235775 c!120776) b!1235778))

(assert (= (and b!1235775 (not c!120776)) b!1235774))

(assert (= (and b!1235775 res!823945) b!1235770))

(declare-fun m!1139679 () Bool)

(assert (=> b!1235769 m!1139679))

(declare-fun m!1139681 () Bool)

(assert (=> b!1235772 m!1139681))

(declare-fun m!1139683 () Bool)

(assert (=> start!102862 m!1139683))

(declare-fun m!1139685 () Bool)

(assert (=> b!1235778 m!1139685))

(declare-fun m!1139687 () Bool)

(assert (=> b!1235778 m!1139687))

(declare-fun m!1139689 () Bool)

(assert (=> b!1235778 m!1139689))

(declare-fun m!1139691 () Bool)

(assert (=> b!1235778 m!1139691))

(declare-fun m!1139693 () Bool)

(assert (=> b!1235778 m!1139693))

(declare-fun m!1139695 () Bool)

(assert (=> b!1235778 m!1139695))

(declare-fun m!1139697 () Bool)

(assert (=> b!1235778 m!1139697))

(declare-fun m!1139699 () Bool)

(assert (=> b!1235773 m!1139699))

(assert (=> b!1235770 m!1139695))

(declare-fun m!1139701 () Bool)

(assert (=> b!1235771 m!1139701))

(declare-fun m!1139703 () Bool)

(assert (=> b!1235777 m!1139703))

(assert (=> b!1235775 m!1139697))

(assert (=> b!1235775 m!1139697))

(declare-fun m!1139705 () Bool)

(assert (=> b!1235775 m!1139705))

(check-sat (not b!1235775) (not b!1235773) (not b!1235770) (not b!1235778) (not b!1235772) (not b!1235771) (not b!1235769) (not b!1235777) (not start!102862))
(check-sat)
