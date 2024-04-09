; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103316 () Bool)

(assert start!103316)

(declare-fun b!1239380 () Bool)

(declare-datatypes ((Unit!41128 0))(
  ( (Unit!41129) )
))
(declare-fun e!702398 () Unit!41128)

(declare-fun lt!561669 () Unit!41128)

(assert (=> b!1239380 (= e!702398 lt!561669)))

(declare-datatypes ((array!79849 0))(
  ( (array!79850 (arr!38521 (Array (_ BitVec 32) (_ BitVec 64))) (size!39058 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79849)

(declare-datatypes ((List!27472 0))(
  ( (Nil!27469) (Cons!27468 (h!28677 (_ BitVec 64)) (t!40942 List!27472)) )
))
(declare-fun acc!846 () List!27472)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun lt!561671 () List!27472)

(assert (=> b!1239380 (= lt!561671 (Cons!27468 (select (arr!38521 a!3835) from!3213) acc!846))))

(declare-fun lt!561670 () Unit!41128)

(declare-fun lemmaListSubSeqRefl!0 (List!27472) Unit!41128)

(assert (=> b!1239380 (= lt!561670 (lemmaListSubSeqRefl!0 lt!561671))))

(declare-fun subseq!624 (List!27472 List!27472) Bool)

(assert (=> b!1239380 (subseq!624 lt!561671 lt!561671)))

(declare-fun lt!561672 () Unit!41128)

(declare-fun subseqTail!111 (List!27472 List!27472) Unit!41128)

(assert (=> b!1239380 (= lt!561672 (subseqTail!111 lt!561671 lt!561671))))

(assert (=> b!1239380 (subseq!624 acc!846 lt!561671)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79849 List!27472 List!27472 (_ BitVec 32)) Unit!41128)

(assert (=> b!1239380 (= lt!561669 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3835 lt!561671 acc!846 (bvadd #b00000000000000000000000000000001 from!3213)))))

(declare-fun arrayNoDuplicates!0 (array!79849 (_ BitVec 32) List!27472) Bool)

(assert (=> b!1239380 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846)))

(declare-fun b!1239381 () Bool)

(declare-fun res!826944 () Bool)

(declare-fun e!702396 () Bool)

(assert (=> b!1239381 (=> (not res!826944) (not e!702396))))

(declare-fun contains!7387 (List!27472 (_ BitVec 64)) Bool)

(assert (=> b!1239381 (= res!826944 (not (contains!7387 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!826938 () Bool)

(assert (=> start!103316 (=> (not res!826938) (not e!702396))))

(assert (=> start!103316 (= res!826938 (and (bvslt (size!39058 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39058 a!3835))))))

(assert (=> start!103316 e!702396))

(declare-fun array_inv!29297 (array!79849) Bool)

(assert (=> start!103316 (array_inv!29297 a!3835)))

(assert (=> start!103316 true))

(declare-fun b!1239382 () Bool)

(declare-fun e!702397 () Bool)

(assert (=> b!1239382 (= e!702397 (bvsge (bvsub (size!39058 a!3835) (bvadd #b00000000000000000000000000000001 from!3213)) (bvsub (size!39058 a!3835) from!3213)))))

(declare-fun b!1239383 () Bool)

(declare-fun res!826943 () Bool)

(assert (=> b!1239383 (=> (not res!826943) (not e!702396))))

(declare-fun noDuplicate!1994 (List!27472) Bool)

(assert (=> b!1239383 (= res!826943 (noDuplicate!1994 acc!846))))

(declare-fun b!1239384 () Bool)

(declare-fun res!826939 () Bool)

(assert (=> b!1239384 (=> (not res!826939) (not e!702396))))

(assert (=> b!1239384 (= res!826939 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1239385 () Bool)

(assert (=> b!1239385 (= e!702396 e!702397)))

(declare-fun res!826937 () Bool)

(assert (=> b!1239385 (=> (not res!826937) (not e!702397))))

(assert (=> b!1239385 (= res!826937 (and (bvsge (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3213) (size!39058 a!3835))))))

(declare-fun lt!561673 () Unit!41128)

(assert (=> b!1239385 (= lt!561673 e!702398)))

(declare-fun c!121084 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1239385 (= c!121084 (validKeyInArray!0 (select (arr!38521 a!3835) from!3213)))))

(declare-fun b!1239386 () Bool)

(declare-fun res!826945 () Bool)

(assert (=> b!1239386 (=> (not res!826945) (not e!702396))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1239386 (= res!826945 (contains!7387 acc!846 k0!2925))))

(declare-fun b!1239387 () Bool)

(declare-fun Unit!41130 () Unit!41128)

(assert (=> b!1239387 (= e!702398 Unit!41130)))

(declare-fun b!1239388 () Bool)

(declare-fun res!826941 () Bool)

(assert (=> b!1239388 (=> (not res!826941) (not e!702396))))

(assert (=> b!1239388 (= res!826941 (not (contains!7387 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1239389 () Bool)

(declare-fun res!826940 () Bool)

(assert (=> b!1239389 (=> (not res!826940) (not e!702396))))

(assert (=> b!1239389 (= res!826940 (not (= from!3213 (bvsub (size!39058 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1239390 () Bool)

(declare-fun res!826942 () Bool)

(assert (=> b!1239390 (=> (not res!826942) (not e!702397))))

(assert (=> b!1239390 (= res!826942 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) acc!846))))

(assert (= (and start!103316 res!826938) b!1239383))

(assert (= (and b!1239383 res!826943) b!1239388))

(assert (= (and b!1239388 res!826941) b!1239381))

(assert (= (and b!1239381 res!826944) b!1239384))

(assert (= (and b!1239384 res!826939) b!1239386))

(assert (= (and b!1239386 res!826945) b!1239389))

(assert (= (and b!1239389 res!826940) b!1239385))

(assert (= (and b!1239385 c!121084) b!1239380))

(assert (= (and b!1239385 (not c!121084)) b!1239387))

(assert (= (and b!1239385 res!826937) b!1239390))

(assert (= (and b!1239390 res!826942) b!1239382))

(declare-fun m!1142853 () Bool)

(assert (=> b!1239385 m!1142853))

(assert (=> b!1239385 m!1142853))

(declare-fun m!1142855 () Bool)

(assert (=> b!1239385 m!1142855))

(declare-fun m!1142857 () Bool)

(assert (=> b!1239384 m!1142857))

(declare-fun m!1142859 () Bool)

(assert (=> b!1239381 m!1142859))

(declare-fun m!1142861 () Bool)

(assert (=> b!1239388 m!1142861))

(declare-fun m!1142863 () Bool)

(assert (=> start!103316 m!1142863))

(declare-fun m!1142865 () Bool)

(assert (=> b!1239386 m!1142865))

(declare-fun m!1142867 () Bool)

(assert (=> b!1239390 m!1142867))

(declare-fun m!1142869 () Bool)

(assert (=> b!1239380 m!1142869))

(declare-fun m!1142871 () Bool)

(assert (=> b!1239380 m!1142871))

(assert (=> b!1239380 m!1142853))

(declare-fun m!1142873 () Bool)

(assert (=> b!1239380 m!1142873))

(declare-fun m!1142875 () Bool)

(assert (=> b!1239380 m!1142875))

(declare-fun m!1142877 () Bool)

(assert (=> b!1239380 m!1142877))

(assert (=> b!1239380 m!1142867))

(declare-fun m!1142879 () Bool)

(assert (=> b!1239383 m!1142879))

(check-sat (not b!1239381) (not b!1239390) (not b!1239388) (not b!1239383) (not b!1239386) (not b!1239384) (not b!1239380) (not b!1239385) (not start!103316))
(check-sat)
