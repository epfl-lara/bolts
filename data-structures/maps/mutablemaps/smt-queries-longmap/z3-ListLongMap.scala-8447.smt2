; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102856 () Bool)

(assert start!102856)

(declare-fun b!1235679 () Bool)

(declare-fun res!823872 () Bool)

(declare-fun e!700574 () Bool)

(assert (=> b!1235679 (=> (not res!823872) (not e!700574))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79642 0))(
  ( (array!79643 (arr!38425 (Array (_ BitVec 32) (_ BitVec 64))) (size!38962 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79642)

(assert (=> b!1235679 (= res!823872 (not (= from!3213 (bvsub (size!38962 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235680 () Bool)

(declare-fun res!823876 () Bool)

(assert (=> b!1235680 (=> (not res!823876) (not e!700574))))

(declare-datatypes ((List!27376 0))(
  ( (Nil!27373) (Cons!27372 (h!28581 (_ BitVec 64)) (t!40846 List!27376)) )
))
(declare-fun acc!846 () List!27376)

(declare-fun contains!7291 (List!27376 (_ BitVec 64)) Bool)

(assert (=> b!1235680 (= res!823876 (not (contains!7291 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235681 () Bool)

(declare-datatypes ((Unit!40907 0))(
  ( (Unit!40908) )
))
(declare-fun e!700575 () Unit!40907)

(declare-fun Unit!40909 () Unit!40907)

(assert (=> b!1235681 (= e!700575 Unit!40909)))

(declare-fun b!1235682 () Bool)

(declare-fun e!700576 () Bool)

(assert (=> b!1235682 (= e!700576 false)))

(declare-fun lt!560417 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79642 (_ BitVec 32) List!27376) Bool)

(assert (=> b!1235682 (= lt!560417 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun res!823875 () Bool)

(assert (=> start!102856 (=> (not res!823875) (not e!700574))))

(assert (=> start!102856 (= res!823875 (and (bvslt (size!38962 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38962 a!3835))))))

(assert (=> start!102856 e!700574))

(declare-fun array_inv!29201 (array!79642) Bool)

(assert (=> start!102856 (array_inv!29201 a!3835)))

(assert (=> start!102856 true))

(declare-fun b!1235683 () Bool)

(assert (=> b!1235683 (= e!700574 e!700576)))

(declare-fun res!823874 () Bool)

(assert (=> b!1235683 (=> (not res!823874) (not e!700576))))

(assert (=> b!1235683 (= res!823874 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38962 a!3835))))))

(declare-fun lt!560419 () Unit!40907)

(assert (=> b!1235683 (= lt!560419 e!700575)))

(declare-fun c!120767 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235683 (= c!120767 (validKeyInArray!0 (select (arr!38425 a!3835) from!3213)))))

(declare-fun b!1235684 () Bool)

(declare-fun res!823877 () Bool)

(assert (=> b!1235684 (=> (not res!823877) (not e!700574))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1235684 (= res!823877 (contains!7291 acc!846 k0!2925))))

(declare-fun b!1235685 () Bool)

(declare-fun res!823873 () Bool)

(assert (=> b!1235685 (=> (not res!823873) (not e!700574))))

(assert (=> b!1235685 (= res!823873 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235686 () Bool)

(declare-fun res!823871 () Bool)

(assert (=> b!1235686 (=> (not res!823871) (not e!700574))))

(assert (=> b!1235686 (= res!823871 (not (contains!7291 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235687 () Bool)

(declare-fun res!823870 () Bool)

(assert (=> b!1235687 (=> (not res!823870) (not e!700574))))

(declare-fun noDuplicate!1898 (List!27376) Bool)

(assert (=> b!1235687 (= res!823870 (noDuplicate!1898 acc!846))))

(declare-fun b!1235688 () Bool)

(declare-fun lt!560415 () Unit!40907)

(assert (=> b!1235688 (= e!700575 lt!560415)))

(declare-fun lt!560414 () List!27376)

(assert (=> b!1235688 (= lt!560414 (Cons!27372 (select (arr!38425 a!3835) from!3213) acc!846))))

(declare-fun lt!560416 () Unit!40907)

(declare-fun lemmaListSubSeqRefl!0 (List!27376) Unit!40907)

(assert (=> b!1235688 (= lt!560416 (lemmaListSubSeqRefl!0 lt!560414))))

(declare-fun subseq!546 (List!27376 List!27376) Bool)

(assert (=> b!1235688 (subseq!546 lt!560414 lt!560414)))

(declare-fun lt!560418 () Unit!40907)

(declare-fun subseqTail!39 (List!27376 List!27376) Unit!40907)

(assert (=> b!1235688 (= lt!560418 (subseqTail!39 lt!560414 lt!560414))))

(assert (=> b!1235688 (subseq!546 acc!846 lt!560414)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79642 List!27376 List!27376 (_ BitVec 32)) Unit!40907)

(assert (=> b!1235688 (= lt!560415 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560414 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235688 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102856 res!823875) b!1235687))

(assert (= (and b!1235687 res!823870) b!1235686))

(assert (= (and b!1235686 res!823871) b!1235680))

(assert (= (and b!1235680 res!823876) b!1235685))

(assert (= (and b!1235685 res!823873) b!1235684))

(assert (= (and b!1235684 res!823877) b!1235679))

(assert (= (and b!1235679 res!823872) b!1235683))

(assert (= (and b!1235683 c!120767) b!1235688))

(assert (= (and b!1235683 (not c!120767)) b!1235681))

(assert (= (and b!1235683 res!823874) b!1235682))

(declare-fun m!1139595 () Bool)

(assert (=> b!1235685 m!1139595))

(declare-fun m!1139597 () Bool)

(assert (=> b!1235687 m!1139597))

(declare-fun m!1139599 () Bool)

(assert (=> b!1235682 m!1139599))

(declare-fun m!1139601 () Bool)

(assert (=> b!1235680 m!1139601))

(declare-fun m!1139603 () Bool)

(assert (=> b!1235688 m!1139603))

(declare-fun m!1139605 () Bool)

(assert (=> b!1235688 m!1139605))

(declare-fun m!1139607 () Bool)

(assert (=> b!1235688 m!1139607))

(declare-fun m!1139609 () Bool)

(assert (=> b!1235688 m!1139609))

(assert (=> b!1235688 m!1139599))

(declare-fun m!1139611 () Bool)

(assert (=> b!1235688 m!1139611))

(declare-fun m!1139613 () Bool)

(assert (=> b!1235688 m!1139613))

(declare-fun m!1139615 () Bool)

(assert (=> b!1235684 m!1139615))

(assert (=> b!1235683 m!1139611))

(assert (=> b!1235683 m!1139611))

(declare-fun m!1139617 () Bool)

(assert (=> b!1235683 m!1139617))

(declare-fun m!1139619 () Bool)

(assert (=> b!1235686 m!1139619))

(declare-fun m!1139621 () Bool)

(assert (=> start!102856 m!1139621))

(check-sat (not start!102856) (not b!1235682) (not b!1235688) (not b!1235680) (not b!1235684) (not b!1235683) (not b!1235685) (not b!1235686) (not b!1235687))
(check-sat)
