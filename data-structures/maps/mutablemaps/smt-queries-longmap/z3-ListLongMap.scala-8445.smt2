; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102844 () Bool)

(assert start!102844)

(declare-fun res!823733 () Bool)

(declare-fun e!700502 () Bool)

(assert (=> start!102844 (=> (not res!823733) (not e!700502))))

(declare-datatypes ((array!79630 0))(
  ( (array!79631 (arr!38419 (Array (_ BitVec 32) (_ BitVec 64))) (size!38956 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79630)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102844 (= res!823733 (and (bvslt (size!38956 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38956 a!3835))))))

(assert (=> start!102844 e!700502))

(declare-fun array_inv!29195 (array!79630) Bool)

(assert (=> start!102844 (array_inv!29195 a!3835)))

(assert (=> start!102844 true))

(declare-fun b!1235499 () Bool)

(declare-fun e!700501 () Bool)

(assert (=> b!1235499 (= e!700501 false)))

(declare-fun lt!560310 () Bool)

(declare-datatypes ((List!27370 0))(
  ( (Nil!27367) (Cons!27366 (h!28575 (_ BitVec 64)) (t!40840 List!27370)) )
))
(declare-fun acc!846 () List!27370)

(declare-fun arrayNoDuplicates!0 (array!79630 (_ BitVec 32) List!27370) Bool)

(assert (=> b!1235499 (= lt!560310 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(declare-fun b!1235500 () Bool)

(declare-fun res!823728 () Bool)

(assert (=> b!1235500 (=> (not res!823728) (not e!700502))))

(assert (=> b!1235500 (= res!823728 (not (= from!3213 (bvsub (size!38956 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235501 () Bool)

(declare-datatypes ((Unit!40889 0))(
  ( (Unit!40890) )
))
(declare-fun e!700504 () Unit!40889)

(declare-fun Unit!40891 () Unit!40889)

(assert (=> b!1235501 (= e!700504 Unit!40891)))

(declare-fun b!1235502 () Bool)

(declare-fun res!823729 () Bool)

(assert (=> b!1235502 (=> (not res!823729) (not e!700502))))

(declare-fun contains!7285 (List!27370 (_ BitVec 64)) Bool)

(assert (=> b!1235502 (= res!823729 (not (contains!7285 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235503 () Bool)

(declare-fun res!823732 () Bool)

(assert (=> b!1235503 (=> (not res!823732) (not e!700502))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1235503 (= res!823732 (contains!7285 acc!846 k0!2925))))

(declare-fun b!1235504 () Bool)

(declare-fun lt!560306 () Unit!40889)

(assert (=> b!1235504 (= e!700504 lt!560306)))

(declare-fun lt!560308 () List!27370)

(assert (=> b!1235504 (= lt!560308 (Cons!27366 (select (arr!38419 a!3835) from!3213) acc!846))))

(declare-fun lt!560307 () Unit!40889)

(declare-fun lemmaListSubSeqRefl!0 (List!27370) Unit!40889)

(assert (=> b!1235504 (= lt!560307 (lemmaListSubSeqRefl!0 lt!560308))))

(declare-fun subseq!540 (List!27370 List!27370) Bool)

(assert (=> b!1235504 (subseq!540 lt!560308 lt!560308)))

(declare-fun lt!560311 () Unit!40889)

(declare-fun subseqTail!33 (List!27370 List!27370) Unit!40889)

(assert (=> b!1235504 (= lt!560311 (subseqTail!33 lt!560308 lt!560308))))

(assert (=> b!1235504 (subseq!540 acc!846 lt!560308)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79630 List!27370 List!27370 (_ BitVec 32)) Unit!40889)

(assert (=> b!1235504 (= lt!560306 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!560308 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(assert (=> b!1235504 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1235505 () Bool)

(declare-fun res!823727 () Bool)

(assert (=> b!1235505 (=> (not res!823727) (not e!700502))))

(assert (=> b!1235505 (= res!823727 (not (contains!7285 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235506 () Bool)

(assert (=> b!1235506 (= e!700502 e!700501)))

(declare-fun res!823731 () Bool)

(assert (=> b!1235506 (=> (not res!823731) (not e!700501))))

(assert (=> b!1235506 (= res!823731 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!38956 a!3835))))))

(declare-fun lt!560309 () Unit!40889)

(assert (=> b!1235506 (= lt!560309 e!700504)))

(declare-fun c!120749 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235506 (= c!120749 (validKeyInArray!0 (select (arr!38419 a!3835) from!3213)))))

(declare-fun b!1235507 () Bool)

(declare-fun res!823730 () Bool)

(assert (=> b!1235507 (=> (not res!823730) (not e!700502))))

(assert (=> b!1235507 (= res!823730 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235508 () Bool)

(declare-fun res!823726 () Bool)

(assert (=> b!1235508 (=> (not res!823726) (not e!700502))))

(declare-fun noDuplicate!1892 (List!27370) Bool)

(assert (=> b!1235508 (= res!823726 (noDuplicate!1892 acc!846))))

(assert (= (and start!102844 res!823733) b!1235508))

(assert (= (and b!1235508 res!823726) b!1235502))

(assert (= (and b!1235502 res!823729) b!1235505))

(assert (= (and b!1235505 res!823727) b!1235507))

(assert (= (and b!1235507 res!823730) b!1235503))

(assert (= (and b!1235503 res!823732) b!1235500))

(assert (= (and b!1235500 res!823728) b!1235506))

(assert (= (and b!1235506 c!120749) b!1235504))

(assert (= (and b!1235506 (not c!120749)) b!1235501))

(assert (= (and b!1235506 res!823731) b!1235499))

(declare-fun m!1139427 () Bool)

(assert (=> b!1235508 m!1139427))

(declare-fun m!1139429 () Bool)

(assert (=> b!1235506 m!1139429))

(assert (=> b!1235506 m!1139429))

(declare-fun m!1139431 () Bool)

(assert (=> b!1235506 m!1139431))

(declare-fun m!1139433 () Bool)

(assert (=> b!1235505 m!1139433))

(declare-fun m!1139435 () Bool)

(assert (=> start!102844 m!1139435))

(declare-fun m!1139437 () Bool)

(assert (=> b!1235499 m!1139437))

(declare-fun m!1139439 () Bool)

(assert (=> b!1235503 m!1139439))

(declare-fun m!1139441 () Bool)

(assert (=> b!1235507 m!1139441))

(declare-fun m!1139443 () Bool)

(assert (=> b!1235502 m!1139443))

(declare-fun m!1139445 () Bool)

(assert (=> b!1235504 m!1139445))

(declare-fun m!1139447 () Bool)

(assert (=> b!1235504 m!1139447))

(declare-fun m!1139449 () Bool)

(assert (=> b!1235504 m!1139449))

(declare-fun m!1139451 () Bool)

(assert (=> b!1235504 m!1139451))

(assert (=> b!1235504 m!1139437))

(assert (=> b!1235504 m!1139429))

(declare-fun m!1139453 () Bool)

(assert (=> b!1235504 m!1139453))

(check-sat (not b!1235506) (not start!102844) (not b!1235499) (not b!1235508) (not b!1235505) (not b!1235503) (not b!1235502) (not b!1235507) (not b!1235504))
(check-sat)
