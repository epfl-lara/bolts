; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60042 () Bool)

(assert start!60042)

(declare-fun b!667334 () Bool)

(declare-fun e!381956 () Bool)

(declare-fun e!381952 () Bool)

(assert (=> b!667334 (= e!381956 (not e!381952))))

(declare-fun res!434710 () Bool)

(assert (=> b!667334 (=> res!434710 e!381952)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!667334 (= res!434710 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((array!39045 0))(
  ( (array!39046 (arr!18711 (Array (_ BitVec 32) (_ BitVec 64))) (size!19075 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39045)

(declare-datatypes ((List!12805 0))(
  ( (Nil!12802) (Cons!12801 (h!13846 (_ BitVec 64)) (t!19041 List!12805)) )
))
(declare-fun lt!310806 () List!12805)

(declare-fun arrayNoDuplicates!0 (array!39045 (_ BitVec 32) List!12805) Bool)

(assert (=> b!667334 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310806)))

(declare-fun acc!681 () List!12805)

(declare-datatypes ((Unit!23350 0))(
  ( (Unit!23351) )
))
(declare-fun lt!310804 () Unit!23350)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39045 (_ BitVec 64) (_ BitVec 32) List!12805 List!12805) Unit!23350)

(assert (=> b!667334 (= lt!310804 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310806))))

(declare-fun -!84 (List!12805 (_ BitVec 64)) List!12805)

(assert (=> b!667334 (= (-!84 lt!310806 k!2843) acc!681)))

(declare-fun $colon$colon!217 (List!12805 (_ BitVec 64)) List!12805)

(assert (=> b!667334 (= lt!310806 ($colon$colon!217 acc!681 k!2843))))

(declare-fun lt!310812 () Unit!23350)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12805) Unit!23350)

(assert (=> b!667334 (= lt!310812 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!86 (List!12805 List!12805) Bool)

(assert (=> b!667334 (subseq!86 acc!681 acc!681)))

(declare-fun lt!310808 () Unit!23350)

(declare-fun lemmaListSubSeqRefl!0 (List!12805) Unit!23350)

(assert (=> b!667334 (= lt!310808 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667334 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310803 () Unit!23350)

(declare-fun e!381951 () Unit!23350)

(assert (=> b!667334 (= lt!310803 e!381951)))

(declare-fun c!76684 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667334 (= c!76684 (validKeyInArray!0 (select (arr!18711 a!3626) from!3004)))))

(declare-fun lt!310807 () Unit!23350)

(declare-fun e!381957 () Unit!23350)

(assert (=> b!667334 (= lt!310807 e!381957)))

(declare-fun c!76685 () Bool)

(declare-fun arrayContainsKey!0 (array!39045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667334 (= c!76685 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667334 (arrayContainsKey!0 (array!39046 (store (arr!18711 a!3626) i!1382 k!2843) (size!19075 a!3626)) k!2843 from!3004)))

(declare-fun b!667335 () Bool)

(assert (=> b!667335 (= e!381952 true)))

(declare-fun lt!310811 () Bool)

(declare-fun e!381954 () Bool)

(assert (=> b!667335 (= lt!310811 e!381954)))

(declare-fun res!434703 () Bool)

(assert (=> b!667335 (=> res!434703 e!381954)))

(declare-fun e!381958 () Bool)

(assert (=> b!667335 (= res!434703 e!381958)))

(declare-fun res!434709 () Bool)

(assert (=> b!667335 (=> (not res!434709) (not e!381958))))

(assert (=> b!667335 (= res!434709 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667336 () Bool)

(declare-fun res!434714 () Bool)

(assert (=> b!667336 (=> res!434714 e!381952)))

(declare-fun noDuplicate!595 (List!12805) Bool)

(assert (=> b!667336 (= res!434714 (not (noDuplicate!595 lt!310806)))))

(declare-fun b!667337 () Bool)

(declare-fun Unit!23352 () Unit!23350)

(assert (=> b!667337 (= e!381957 Unit!23352)))

(declare-fun b!667338 () Bool)

(declare-fun res!434700 () Bool)

(assert (=> b!667338 (=> res!434700 e!381952)))

(declare-fun contains!3348 (List!12805 (_ BitVec 64)) Bool)

(assert (=> b!667338 (= res!434700 (contains!3348 lt!310806 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667339 () Bool)

(declare-fun res!434702 () Bool)

(assert (=> b!667339 (=> (not res!434702) (not e!381956))))

(assert (=> b!667339 (= res!434702 (noDuplicate!595 acc!681))))

(declare-fun b!667340 () Bool)

(declare-fun e!381955 () Bool)

(assert (=> b!667340 (= e!381955 (not (contains!3348 acc!681 k!2843)))))

(declare-fun b!667341 () Bool)

(declare-fun res!434704 () Bool)

(assert (=> b!667341 (=> (not res!434704) (not e!381956))))

(assert (=> b!667341 (= res!434704 (validKeyInArray!0 k!2843))))

(declare-fun res!434718 () Bool)

(assert (=> start!60042 (=> (not res!434718) (not e!381956))))

(assert (=> start!60042 (= res!434718 (and (bvslt (size!19075 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19075 a!3626))))))

(assert (=> start!60042 e!381956))

(assert (=> start!60042 true))

(declare-fun array_inv!14485 (array!39045) Bool)

(assert (=> start!60042 (array_inv!14485 a!3626)))

(declare-fun b!667342 () Bool)

(declare-fun e!381953 () Bool)

(assert (=> b!667342 (= e!381953 e!381955)))

(declare-fun res!434715 () Bool)

(assert (=> b!667342 (=> (not res!434715) (not e!381955))))

(assert (=> b!667342 (= res!434715 (bvsle from!3004 i!1382))))

(declare-fun b!667343 () Bool)

(declare-fun res!434706 () Bool)

(assert (=> b!667343 (=> (not res!434706) (not e!381956))))

(assert (=> b!667343 (= res!434706 (not (contains!3348 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667344 () Bool)

(assert (=> b!667344 (= e!381958 (contains!3348 lt!310806 k!2843))))

(declare-fun b!667345 () Bool)

(declare-fun res!434716 () Bool)

(assert (=> b!667345 (=> (not res!434716) (not e!381956))))

(assert (=> b!667345 (= res!434716 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667346 () Bool)

(declare-fun res!434719 () Bool)

(assert (=> b!667346 (=> (not res!434719) (not e!381956))))

(assert (=> b!667346 (= res!434719 (not (contains!3348 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667347 () Bool)

(declare-fun e!381948 () Bool)

(assert (=> b!667347 (= e!381948 (contains!3348 acc!681 k!2843))))

(declare-fun b!667348 () Bool)

(declare-fun res!434713 () Bool)

(assert (=> b!667348 (=> (not res!434713) (not e!381956))))

(assert (=> b!667348 (= res!434713 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19075 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667349 () Bool)

(declare-fun e!381950 () Bool)

(assert (=> b!667349 (= e!381954 e!381950)))

(declare-fun res!434711 () Bool)

(assert (=> b!667349 (=> (not res!434711) (not e!381950))))

(assert (=> b!667349 (= res!434711 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667350 () Bool)

(declare-fun res!434717 () Bool)

(assert (=> b!667350 (=> (not res!434717) (not e!381956))))

(assert (=> b!667350 (= res!434717 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12802))))

(declare-fun b!667351 () Bool)

(declare-fun res!434701 () Bool)

(assert (=> b!667351 (=> res!434701 e!381952)))

(assert (=> b!667351 (= res!434701 (contains!3348 lt!310806 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667352 () Bool)

(declare-fun Unit!23353 () Unit!23350)

(assert (=> b!667352 (= e!381951 Unit!23353)))

(declare-fun b!667353 () Bool)

(assert (=> b!667353 (= e!381950 (not (contains!3348 lt!310806 k!2843)))))

(declare-fun b!667354 () Bool)

(declare-fun res!434712 () Bool)

(assert (=> b!667354 (=> (not res!434712) (not e!381956))))

(assert (=> b!667354 (= res!434712 e!381953)))

(declare-fun res!434708 () Bool)

(assert (=> b!667354 (=> res!434708 e!381953)))

(assert (=> b!667354 (= res!434708 e!381948)))

(declare-fun res!434705 () Bool)

(assert (=> b!667354 (=> (not res!434705) (not e!381948))))

(assert (=> b!667354 (= res!434705 (bvsgt from!3004 i!1382))))

(declare-fun b!667355 () Bool)

(declare-fun res!434707 () Bool)

(assert (=> b!667355 (=> (not res!434707) (not e!381956))))

(assert (=> b!667355 (= res!434707 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19075 a!3626))))))

(declare-fun b!667356 () Bool)

(declare-fun res!434720 () Bool)

(assert (=> b!667356 (=> (not res!434720) (not e!381956))))

(assert (=> b!667356 (= res!434720 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667357 () Bool)

(declare-fun lt!310809 () Unit!23350)

(assert (=> b!667357 (= e!381951 lt!310809)))

(declare-fun lt!310810 () Unit!23350)

(assert (=> b!667357 (= lt!310810 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667357 (subseq!86 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39045 List!12805 List!12805 (_ BitVec 32)) Unit!23350)

(assert (=> b!667357 (= lt!310809 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!217 acc!681 (select (arr!18711 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667357 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667358 () Bool)

(declare-fun Unit!23354 () Unit!23350)

(assert (=> b!667358 (= e!381957 Unit!23354)))

(declare-fun lt!310805 () Unit!23350)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39045 (_ BitVec 64) (_ BitVec 32)) Unit!23350)

(assert (=> b!667358 (= lt!310805 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!667358 false))

(assert (= (and start!60042 res!434718) b!667339))

(assert (= (and b!667339 res!434702) b!667346))

(assert (= (and b!667346 res!434719) b!667343))

(assert (= (and b!667343 res!434706) b!667354))

(assert (= (and b!667354 res!434705) b!667347))

(assert (= (and b!667354 (not res!434708)) b!667342))

(assert (= (and b!667342 res!434715) b!667340))

(assert (= (and b!667354 res!434712) b!667350))

(assert (= (and b!667350 res!434717) b!667356))

(assert (= (and b!667356 res!434720) b!667355))

(assert (= (and b!667355 res!434707) b!667341))

(assert (= (and b!667341 res!434704) b!667345))

(assert (= (and b!667345 res!434716) b!667348))

(assert (= (and b!667348 res!434713) b!667334))

(assert (= (and b!667334 c!76685) b!667358))

(assert (= (and b!667334 (not c!76685)) b!667337))

(assert (= (and b!667334 c!76684) b!667357))

(assert (= (and b!667334 (not c!76684)) b!667352))

(assert (= (and b!667334 (not res!434710)) b!667336))

(assert (= (and b!667336 (not res!434714)) b!667338))

(assert (= (and b!667338 (not res!434700)) b!667351))

(assert (= (and b!667351 (not res!434701)) b!667335))

(assert (= (and b!667335 res!434709) b!667344))

(assert (= (and b!667335 (not res!434703)) b!667349))

(assert (= (and b!667349 res!434711) b!667353))

(declare-fun m!637929 () Bool)

(assert (=> b!667340 m!637929))

(declare-fun m!637931 () Bool)

(assert (=> b!667351 m!637931))

(declare-fun m!637933 () Bool)

(assert (=> b!667356 m!637933))

(declare-fun m!637935 () Bool)

(assert (=> b!667341 m!637935))

(declare-fun m!637937 () Bool)

(assert (=> b!667350 m!637937))

(declare-fun m!637939 () Bool)

(assert (=> b!667344 m!637939))

(assert (=> b!667347 m!637929))

(declare-fun m!637941 () Bool)

(assert (=> b!667339 m!637941))

(declare-fun m!637943 () Bool)

(assert (=> start!60042 m!637943))

(declare-fun m!637945 () Bool)

(assert (=> b!667358 m!637945))

(declare-fun m!637947 () Bool)

(assert (=> b!667345 m!637947))

(declare-fun m!637949 () Bool)

(assert (=> b!667346 m!637949))

(declare-fun m!637951 () Bool)

(assert (=> b!667336 m!637951))

(declare-fun m!637953 () Bool)

(assert (=> b!667338 m!637953))

(declare-fun m!637955 () Bool)

(assert (=> b!667334 m!637955))

(declare-fun m!637957 () Bool)

(assert (=> b!667334 m!637957))

(declare-fun m!637959 () Bool)

(assert (=> b!667334 m!637959))

(declare-fun m!637961 () Bool)

(assert (=> b!667334 m!637961))

(declare-fun m!637963 () Bool)

(assert (=> b!667334 m!637963))

(declare-fun m!637965 () Bool)

(assert (=> b!667334 m!637965))

(declare-fun m!637967 () Bool)

(assert (=> b!667334 m!637967))

(declare-fun m!637969 () Bool)

(assert (=> b!667334 m!637969))

(declare-fun m!637971 () Bool)

(assert (=> b!667334 m!637971))

(declare-fun m!637973 () Bool)

(assert (=> b!667334 m!637973))

(assert (=> b!667334 m!637961))

(declare-fun m!637975 () Bool)

(assert (=> b!667334 m!637975))

(declare-fun m!637977 () Bool)

(assert (=> b!667334 m!637977))

(declare-fun m!637979 () Bool)

(assert (=> b!667334 m!637979))

(declare-fun m!637981 () Bool)

(assert (=> b!667343 m!637981))

(assert (=> b!667353 m!637939))

(assert (=> b!667357 m!637959))

(assert (=> b!667357 m!637961))

(declare-fun m!637983 () Bool)

(assert (=> b!667357 m!637983))

(declare-fun m!637985 () Bool)

(assert (=> b!667357 m!637985))

(assert (=> b!667357 m!637961))

(assert (=> b!667357 m!637983))

(assert (=> b!667357 m!637967))

(assert (=> b!667357 m!637979))

(push 1)

(assert (not b!667338))

(assert (not b!667343))

(assert (not b!667341))

(assert (not b!667344))

(assert (not b!667357))

(assert (not b!667345))

(assert (not b!667339))

(assert (not b!667350))

(assert (not b!667358))

(assert (not b!667356))

(assert (not b!667340))

(assert (not b!667353))

(assert (not b!667336))

(assert (not b!667334))

(assert (not b!667351))

(assert (not start!60042))

(assert (not b!667346))

(assert (not b!667347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

