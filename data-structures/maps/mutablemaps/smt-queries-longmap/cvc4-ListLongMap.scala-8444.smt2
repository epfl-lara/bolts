; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102840 () Bool)

(assert start!102840)

(declare-fun b!1235439 () Bool)

(declare-fun res!823683 () Bool)

(declare-fun e!700478 () Bool)

(assert (=> b!1235439 (=> (not res!823683) (not e!700478))))

(declare-datatypes ((array!79626 0))(
  ( (array!79627 (arr!38417 (Array (_ BitVec 32) (_ BitVec 64))) (size!38954 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79626)

(declare-datatypes ((List!27368 0))(
  ( (Nil!27365) (Cons!27364 (h!28573 (_ BitVec 64)) (t!40838 List!27368)) )
))
(declare-fun acc!846 () List!27368)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79626 (_ BitVec 32) List!27368) Bool)

(assert (=> b!1235439 (= res!823683 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235440 () Bool)

(declare-fun res!823682 () Bool)

(assert (=> b!1235440 (=> (not res!823682) (not e!700478))))

(declare-fun contains!7283 (List!27368 (_ BitVec 64)) Bool)

(assert (=> b!1235440 (= res!823682 (not (contains!7283 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235441 () Bool)

(declare-fun res!823678 () Bool)

(assert (=> b!1235441 (=> (not res!823678) (not e!700478))))

(declare-fun noDuplicate!1890 (List!27368) Bool)

(assert (=> b!1235441 (= res!823678 (noDuplicate!1890 acc!846))))

(declare-fun b!1235442 () Bool)

(declare-fun e!700477 () Bool)

(assert (=> b!1235442 (= e!700478 e!700477)))

(declare-fun res!823681 () Bool)

(assert (=> b!1235442 (=> (not res!823681) (not e!700477))))

(assert (=> b!1235442 (= res!823681 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38954 a!3835))))))

(declare-datatypes ((Unit!40883 0))(
  ( (Unit!40884) )
))
(declare-fun lt!560274 () Unit!40883)

(declare-fun e!700480 () Unit!40883)

(assert (=> b!1235442 (= lt!560274 e!700480)))

(declare-fun c!120743 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235442 (= c!120743 (validKeyInArray!0 (select (arr!38417 a!3835) from!3213)))))

(declare-fun b!1235443 () Bool)

(declare-fun res!823685 () Bool)

(assert (=> b!1235443 (=> (not res!823685) (not e!700478))))

(assert (=> b!1235443 (= res!823685 (not (= from!3213 (bvsub (size!38954 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235444 () Bool)

(declare-fun Unit!40885 () Unit!40883)

(assert (=> b!1235444 (= e!700480 Unit!40885)))

(declare-fun b!1235445 () Bool)

(declare-fun res!823679 () Bool)

(assert (=> b!1235445 (=> (not res!823679) (not e!700478))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235445 (= res!823679 (contains!7283 acc!846 k!2925))))

(declare-fun res!823684 () Bool)

(assert (=> start!102840 (=> (not res!823684) (not e!700478))))

(assert (=> start!102840 (= res!823684 (and (bvslt (size!38954 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38954 a!3835))))))

(assert (=> start!102840 e!700478))

(declare-fun array_inv!29193 (array!79626) Bool)

(assert (=> start!102840 (array_inv!29193 a!3835)))

(assert (=> start!102840 true))

(declare-fun b!1235446 () Bool)

(assert (=> b!1235446 (= e!700477 false)))

(declare-fun lt!560272 () Bool)

(assert (=> b!1235446 (= lt!560272 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235447 () Bool)

(declare-fun res!823680 () Bool)

(assert (=> b!1235447 (=> (not res!823680) (not e!700478))))

(assert (=> b!1235447 (= res!823680 (not (contains!7283 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235448 () Bool)

(declare-fun lt!560270 () Unit!40883)

(assert (=> b!1235448 (= e!700480 lt!560270)))

(declare-fun lt!560271 () List!27368)

(assert (=> b!1235448 (= lt!560271 (Cons!27364 (select (arr!38417 a!3835) from!3213) acc!846))))

(declare-fun lt!560273 () Unit!40883)

(declare-fun lemmaListSubSeqRefl!0 (List!27368) Unit!40883)

(assert (=> b!1235448 (= lt!560273 (lemmaListSubSeqRefl!0 lt!560271))))

(declare-fun subseq!538 (List!27368 List!27368) Bool)

(assert (=> b!1235448 (subseq!538 lt!560271 lt!560271)))

(declare-fun lt!560275 () Unit!40883)

(declare-fun subseqTail!31 (List!27368 List!27368) Unit!40883)

(assert (=> b!1235448 (= lt!560275 (subseqTail!31 lt!560271 lt!560271))))

(assert (=> b!1235448 (subseq!538 acc!846 lt!560271)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79626 List!27368 List!27368 (_ BitVec 32)) Unit!40883)

(assert (=> b!1235448 (= lt!560270 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560271 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235448 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(assert (= (and start!102840 res!823684) b!1235441))

(assert (= (and b!1235441 res!823678) b!1235447))

(assert (= (and b!1235447 res!823680) b!1235440))

(assert (= (and b!1235440 res!823682) b!1235439))

(assert (= (and b!1235439 res!823683) b!1235445))

(assert (= (and b!1235445 res!823679) b!1235443))

(assert (= (and b!1235443 res!823685) b!1235442))

(assert (= (and b!1235442 c!120743) b!1235448))

(assert (= (and b!1235442 (not c!120743)) b!1235444))

(assert (= (and b!1235442 res!823681) b!1235446))

(declare-fun m!1139371 () Bool)

(assert (=> b!1235442 m!1139371))

(assert (=> b!1235442 m!1139371))

(declare-fun m!1139373 () Bool)

(assert (=> b!1235442 m!1139373))

(declare-fun m!1139375 () Bool)

(assert (=> b!1235446 m!1139375))

(declare-fun m!1139377 () Bool)

(assert (=> b!1235445 m!1139377))

(declare-fun m!1139379 () Bool)

(assert (=> start!102840 m!1139379))

(declare-fun m!1139381 () Bool)

(assert (=> b!1235441 m!1139381))

(declare-fun m!1139383 () Bool)

(assert (=> b!1235448 m!1139383))

(declare-fun m!1139385 () Bool)

(assert (=> b!1235448 m!1139385))

(declare-fun m!1139387 () Bool)

(assert (=> b!1235448 m!1139387))

(assert (=> b!1235448 m!1139375))

(assert (=> b!1235448 m!1139371))

(declare-fun m!1139389 () Bool)

(assert (=> b!1235448 m!1139389))

(declare-fun m!1139391 () Bool)

(assert (=> b!1235448 m!1139391))

(declare-fun m!1139393 () Bool)

(assert (=> b!1235440 m!1139393))

(declare-fun m!1139395 () Bool)

(assert (=> b!1235439 m!1139395))

(declare-fun m!1139397 () Bool)

(assert (=> b!1235447 m!1139397))

(push 1)

(assert (not b!1235448))

(assert (not b!1235442))

(assert (not b!1235441))

(assert (not b!1235439))

(assert (not b!1235440))

(assert (not start!102840))

(assert (not b!1235446))

(assert (not b!1235445))

(assert (not b!1235447))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

