; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102838 () Bool)

(assert start!102838)

(declare-fun res!823654 () Bool)

(declare-fun e!700468 () Bool)

(assert (=> start!102838 (=> (not res!823654) (not e!700468))))

(declare-datatypes ((array!79624 0))(
  ( (array!79625 (arr!38416 (Array (_ BitVec 32) (_ BitVec 64))) (size!38953 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79624)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102838 (= res!823654 (and (bvslt (size!38953 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38953 a!3835))))))

(assert (=> start!102838 e!700468))

(declare-fun array_inv!29192 (array!79624) Bool)

(assert (=> start!102838 (array_inv!29192 a!3835)))

(assert (=> start!102838 true))

(declare-fun b!1235409 () Bool)

(declare-fun res!823661 () Bool)

(assert (=> b!1235409 (=> (not res!823661) (not e!700468))))

(assert (=> b!1235409 (= res!823661 (not (= from!3213 (bvsub (size!38953 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235410 () Bool)

(declare-fun res!823659 () Bool)

(assert (=> b!1235410 (=> (not res!823659) (not e!700468))))

(declare-datatypes ((List!27367 0))(
  ( (Nil!27364) (Cons!27363 (h!28572 (_ BitVec 64)) (t!40837 List!27367)) )
))
(declare-fun acc!846 () List!27367)

(declare-fun noDuplicate!1889 (List!27367) Bool)

(assert (=> b!1235410 (= res!823659 (noDuplicate!1889 acc!846))))

(declare-fun b!1235411 () Bool)

(declare-fun e!700467 () Bool)

(assert (=> b!1235411 (= e!700467 false)))

(declare-fun lt!560253 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79624 (_ BitVec 32) List!27367) Bool)

(assert (=> b!1235411 (= lt!560253 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235412 () Bool)

(declare-fun res!823655 () Bool)

(assert (=> b!1235412 (=> (not res!823655) (not e!700468))))

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7282 (List!27367 (_ BitVec 64)) Bool)

(assert (=> b!1235412 (= res!823655 (contains!7282 acc!846 k0!2925))))

(declare-fun b!1235413 () Bool)

(assert (=> b!1235413 (= e!700468 e!700467)))

(declare-fun res!823660 () Bool)

(assert (=> b!1235413 (=> (not res!823660) (not e!700467))))

(assert (=> b!1235413 (= res!823660 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38953 a!3835))))))

(declare-datatypes ((Unit!40880 0))(
  ( (Unit!40881) )
))
(declare-fun lt!560257 () Unit!40880)

(declare-fun e!700466 () Unit!40880)

(assert (=> b!1235413 (= lt!560257 e!700466)))

(declare-fun c!120740 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235413 (= c!120740 (validKeyInArray!0 (select (arr!38416 a!3835) from!3213)))))

(declare-fun b!1235414 () Bool)

(declare-fun lt!560254 () Unit!40880)

(assert (=> b!1235414 (= e!700466 lt!560254)))

(declare-fun lt!560252 () List!27367)

(assert (=> b!1235414 (= lt!560252 (Cons!27363 (select (arr!38416 a!3835) from!3213) acc!846))))

(declare-fun lt!560256 () Unit!40880)

(declare-fun lemmaListSubSeqRefl!0 (List!27367) Unit!40880)

(assert (=> b!1235414 (= lt!560256 (lemmaListSubSeqRefl!0 lt!560252))))

(declare-fun subseq!537 (List!27367 List!27367) Bool)

(assert (=> b!1235414 (subseq!537 lt!560252 lt!560252)))

(declare-fun lt!560255 () Unit!40880)

(declare-fun subseqTail!30 (List!27367 List!27367) Unit!40880)

(assert (=> b!1235414 (= lt!560255 (subseqTail!30 lt!560252 lt!560252))))

(assert (=> b!1235414 (subseq!537 acc!846 lt!560252)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79624 List!27367 List!27367 (_ BitVec 32)) Unit!40880)

(assert (=> b!1235414 (= lt!560254 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560252 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235414 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235415 () Bool)

(declare-fun Unit!40882 () Unit!40880)

(assert (=> b!1235415 (= e!700466 Unit!40882)))

(declare-fun b!1235416 () Bool)

(declare-fun res!823656 () Bool)

(assert (=> b!1235416 (=> (not res!823656) (not e!700468))))

(assert (=> b!1235416 (= res!823656 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235417 () Bool)

(declare-fun res!823658 () Bool)

(assert (=> b!1235417 (=> (not res!823658) (not e!700468))))

(assert (=> b!1235417 (= res!823658 (not (contains!7282 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235418 () Bool)

(declare-fun res!823657 () Bool)

(assert (=> b!1235418 (=> (not res!823657) (not e!700468))))

(assert (=> b!1235418 (= res!823657 (not (contains!7282 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102838 res!823654) b!1235410))

(assert (= (and b!1235410 res!823659) b!1235417))

(assert (= (and b!1235417 res!823658) b!1235418))

(assert (= (and b!1235418 res!823657) b!1235416))

(assert (= (and b!1235416 res!823656) b!1235412))

(assert (= (and b!1235412 res!823655) b!1235409))

(assert (= (and b!1235409 res!823661) b!1235413))

(assert (= (and b!1235413 c!120740) b!1235414))

(assert (= (and b!1235413 (not c!120740)) b!1235415))

(assert (= (and b!1235413 res!823660) b!1235411))

(declare-fun m!1139343 () Bool)

(assert (=> b!1235416 m!1139343))

(declare-fun m!1139345 () Bool)

(assert (=> b!1235417 m!1139345))

(declare-fun m!1139347 () Bool)

(assert (=> b!1235410 m!1139347))

(declare-fun m!1139349 () Bool)

(assert (=> b!1235412 m!1139349))

(declare-fun m!1139351 () Bool)

(assert (=> b!1235411 m!1139351))

(declare-fun m!1139353 () Bool)

(assert (=> b!1235418 m!1139353))

(declare-fun m!1139355 () Bool)

(assert (=> b!1235414 m!1139355))

(declare-fun m!1139357 () Bool)

(assert (=> b!1235414 m!1139357))

(declare-fun m!1139359 () Bool)

(assert (=> b!1235414 m!1139359))

(declare-fun m!1139361 () Bool)

(assert (=> b!1235414 m!1139361))

(declare-fun m!1139363 () Bool)

(assert (=> b!1235414 m!1139363))

(assert (=> b!1235414 m!1139351))

(declare-fun m!1139365 () Bool)

(assert (=> b!1235414 m!1139365))

(declare-fun m!1139367 () Bool)

(assert (=> start!102838 m!1139367))

(assert (=> b!1235413 m!1139365))

(assert (=> b!1235413 m!1139365))

(declare-fun m!1139369 () Bool)

(assert (=> b!1235413 m!1139369))

(check-sat (not b!1235418) (not b!1235411) (not b!1235413) (not start!102838) (not b!1235412) (not b!1235417) (not b!1235416) (not b!1235410) (not b!1235414))
(check-sat)
