; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102934 () Bool)

(assert start!102934)

(declare-fun b!1236587 () Bool)

(declare-fun e!700906 () Bool)

(assert (=> b!1236587 (= e!700906 (not true))))

(declare-datatypes ((List!27415 0))(
  ( (Nil!27412) (Cons!27411 (h!28620 (_ BitVec 64)) (t!40885 List!27415)) )
))
(declare-fun lt!560781 () List!27415)

(declare-fun subseq!567 (List!27415 List!27415) Bool)

(assert (=> b!1236587 (subseq!567 lt!560781 lt!560781)))

(declare-datatypes ((Unit!40966 0))(
  ( (Unit!40967) )
))
(declare-fun lt!560782 () Unit!40966)

(declare-fun lemmaListSubSeqRefl!0 (List!27415) Unit!40966)

(assert (=> b!1236587 (= lt!560782 (lemmaListSubSeqRefl!0 lt!560781))))

(declare-datatypes ((array!79720 0))(
  ( (array!79721 (arr!38464 (Array (_ BitVec 32) (_ BitVec 64))) (size!39001 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79720)

(declare-fun acc!846 () List!27415)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1236587 (= lt!560781 (Cons!27411 (select (arr!38464 a!3835) from!3213) acc!846))))

(declare-fun b!1236588 () Bool)

(declare-fun res!824681 () Bool)

(assert (=> b!1236588 (=> (not res!824681) (not e!700906))))

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7330 (List!27415 (_ BitVec 64)) Bool)

(assert (=> b!1236588 (= res!824681 (contains!7330 acc!846 k0!2925))))

(declare-fun b!1236589 () Bool)

(declare-fun res!824682 () Bool)

(assert (=> b!1236589 (=> (not res!824682) (not e!700906))))

(declare-fun noDuplicate!1937 (List!27415) Bool)

(assert (=> b!1236589 (= res!824682 (noDuplicate!1937 acc!846))))

(declare-fun b!1236590 () Bool)

(declare-fun res!824685 () Bool)

(assert (=> b!1236590 (=> (not res!824685) (not e!700906))))

(assert (=> b!1236590 (= res!824685 (not (contains!7330 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236591 () Bool)

(declare-fun res!824686 () Bool)

(assert (=> b!1236591 (=> (not res!824686) (not e!700906))))

(assert (=> b!1236591 (= res!824686 (not (contains!7330 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236593 () Bool)

(declare-fun res!824687 () Bool)

(assert (=> b!1236593 (=> (not res!824687) (not e!700906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236593 (= res!824687 (validKeyInArray!0 (select (arr!38464 a!3835) from!3213)))))

(declare-fun b!1236594 () Bool)

(declare-fun res!824684 () Bool)

(assert (=> b!1236594 (=> (not res!824684) (not e!700906))))

(declare-fun arrayNoDuplicates!0 (array!79720 (_ BitVec 32) List!27415) Bool)

(assert (=> b!1236594 (= res!824684 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236592 () Bool)

(declare-fun res!824683 () Bool)

(assert (=> b!1236592 (=> (not res!824683) (not e!700906))))

(assert (=> b!1236592 (= res!824683 (not (= from!3213 (bvsub (size!39001 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!824680 () Bool)

(assert (=> start!102934 (=> (not res!824680) (not e!700906))))

(assert (=> start!102934 (= res!824680 (and (bvslt (size!39001 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39001 a!3835))))))

(assert (=> start!102934 e!700906))

(declare-fun array_inv!29240 (array!79720) Bool)

(assert (=> start!102934 (array_inv!29240 a!3835)))

(assert (=> start!102934 true))

(assert (= (and start!102934 res!824680) b!1236589))

(assert (= (and b!1236589 res!824682) b!1236591))

(assert (= (and b!1236591 res!824686) b!1236590))

(assert (= (and b!1236590 res!824685) b!1236594))

(assert (= (and b!1236594 res!824684) b!1236588))

(assert (= (and b!1236588 res!824681) b!1236592))

(assert (= (and b!1236592 res!824683) b!1236593))

(assert (= (and b!1236593 res!824687) b!1236587))

(declare-fun m!1140403 () Bool)

(assert (=> b!1236591 m!1140403))

(declare-fun m!1140405 () Bool)

(assert (=> b!1236588 m!1140405))

(declare-fun m!1140407 () Bool)

(assert (=> b!1236593 m!1140407))

(assert (=> b!1236593 m!1140407))

(declare-fun m!1140409 () Bool)

(assert (=> b!1236593 m!1140409))

(declare-fun m!1140411 () Bool)

(assert (=> start!102934 m!1140411))

(declare-fun m!1140413 () Bool)

(assert (=> b!1236587 m!1140413))

(declare-fun m!1140415 () Bool)

(assert (=> b!1236587 m!1140415))

(assert (=> b!1236587 m!1140407))

(declare-fun m!1140417 () Bool)

(assert (=> b!1236590 m!1140417))

(declare-fun m!1140419 () Bool)

(assert (=> b!1236594 m!1140419))

(declare-fun m!1140421 () Bool)

(assert (=> b!1236589 m!1140421))

(check-sat (not b!1236588) (not b!1236591) (not b!1236594) (not b!1236587) (not start!102934) (not b!1236593) (not b!1236589) (not b!1236590))
