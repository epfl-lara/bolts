; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60052 () Bool)

(assert start!60052)

(declare-fun b!667709 () Bool)

(declare-fun e!382116 () Bool)

(declare-datatypes ((List!12810 0))(
  ( (Nil!12807) (Cons!12806 (h!13851 (_ BitVec 64)) (t!19046 List!12810)) )
))
(declare-fun acc!681 () List!12810)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3353 (List!12810 (_ BitVec 64)) Bool)

(assert (=> b!667709 (= e!382116 (contains!3353 acc!681 k!2843))))

(declare-fun b!667710 () Bool)

(declare-fun e!382113 () Bool)

(declare-fun lt!310953 () List!12810)

(assert (=> b!667710 (= e!382113 (contains!3353 lt!310953 k!2843))))

(declare-fun b!667711 () Bool)

(declare-fun res!435021 () Bool)

(declare-fun e!382120 () Bool)

(assert (=> b!667711 (=> (not res!435021) (not e!382120))))

(assert (=> b!667711 (= res!435021 (not (contains!3353 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667712 () Bool)

(declare-fun res!435023 () Bool)

(assert (=> b!667712 (=> (not res!435023) (not e!382120))))

(declare-fun noDuplicate!600 (List!12810) Bool)

(assert (=> b!667712 (= res!435023 (noDuplicate!600 acc!681))))

(declare-fun b!667713 () Bool)

(declare-datatypes ((Unit!23375 0))(
  ( (Unit!23376) )
))
(declare-fun e!382121 () Unit!23375)

(declare-fun lt!310961 () Unit!23375)

(assert (=> b!667713 (= e!382121 lt!310961)))

(declare-fun lt!310958 () Unit!23375)

(declare-fun lemmaListSubSeqRefl!0 (List!12810) Unit!23375)

(assert (=> b!667713 (= lt!310958 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!91 (List!12810 List!12810) Bool)

(assert (=> b!667713 (subseq!91 acc!681 acc!681)))

(declare-datatypes ((array!39055 0))(
  ( (array!39056 (arr!18716 (Array (_ BitVec 32) (_ BitVec 64))) (size!19080 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39055)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39055 List!12810 List!12810 (_ BitVec 32)) Unit!23375)

(declare-fun $colon$colon!222 (List!12810 (_ BitVec 64)) List!12810)

(assert (=> b!667713 (= lt!310961 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!222 acc!681 (select (arr!18716 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39055 (_ BitVec 32) List!12810) Bool)

(assert (=> b!667713 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667714 () Bool)

(declare-fun res!435032 () Bool)

(assert (=> b!667714 (=> (not res!435032) (not e!382120))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667714 (= res!435032 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19080 a!3626))))))

(declare-fun b!667715 () Bool)

(declare-fun res!435020 () Bool)

(assert (=> b!667715 (=> (not res!435020) (not e!382120))))

(declare-fun e!382117 () Bool)

(assert (=> b!667715 (= res!435020 e!382117)))

(declare-fun res!435026 () Bool)

(assert (=> b!667715 (=> res!435026 e!382117)))

(assert (=> b!667715 (= res!435026 e!382116)))

(declare-fun res!435033 () Bool)

(assert (=> b!667715 (=> (not res!435033) (not e!382116))))

(assert (=> b!667715 (= res!435033 (bvsgt from!3004 i!1382))))

(declare-fun b!667716 () Bool)

(declare-fun e!382115 () Bool)

(declare-fun e!382122 () Bool)

(assert (=> b!667716 (= e!382115 e!382122)))

(declare-fun res!435028 () Bool)

(assert (=> b!667716 (=> (not res!435028) (not e!382122))))

(assert (=> b!667716 (= res!435028 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667717 () Bool)

(declare-fun e!382114 () Bool)

(assert (=> b!667717 (= e!382120 (not e!382114))))

(declare-fun res!435018 () Bool)

(assert (=> b!667717 (=> res!435018 e!382114)))

(assert (=> b!667717 (= res!435018 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!667717 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310953)))

(declare-fun lt!310954 () Unit!23375)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39055 (_ BitVec 64) (_ BitVec 32) List!12810 List!12810) Unit!23375)

(assert (=> b!667717 (= lt!310954 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310953))))

(declare-fun -!89 (List!12810 (_ BitVec 64)) List!12810)

(assert (=> b!667717 (= (-!89 lt!310953 k!2843) acc!681)))

(assert (=> b!667717 (= lt!310953 ($colon$colon!222 acc!681 k!2843))))

(declare-fun lt!310957 () Unit!23375)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12810) Unit!23375)

(assert (=> b!667717 (= lt!310957 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!667717 (subseq!91 acc!681 acc!681)))

(declare-fun lt!310962 () Unit!23375)

(assert (=> b!667717 (= lt!310962 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667717 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310956 () Unit!23375)

(assert (=> b!667717 (= lt!310956 e!382121)))

(declare-fun c!76714 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667717 (= c!76714 (validKeyInArray!0 (select (arr!18716 a!3626) from!3004)))))

(declare-fun lt!310960 () Unit!23375)

(declare-fun e!382118 () Unit!23375)

(assert (=> b!667717 (= lt!310960 e!382118)))

(declare-fun c!76715 () Bool)

(declare-fun arrayContainsKey!0 (array!39055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667717 (= c!76715 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667717 (arrayContainsKey!0 (array!39056 (store (arr!18716 a!3626) i!1382 k!2843) (size!19080 a!3626)) k!2843 from!3004)))

(declare-fun b!667718 () Bool)

(declare-fun Unit!23377 () Unit!23375)

(assert (=> b!667718 (= e!382118 Unit!23377)))

(declare-fun b!667719 () Bool)

(declare-fun res!435016 () Bool)

(assert (=> b!667719 (=> (not res!435016) (not e!382120))))

(assert (=> b!667719 (= res!435016 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19080 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667720 () Bool)

(declare-fun res!435015 () Bool)

(assert (=> b!667720 (=> (not res!435015) (not e!382120))))

(assert (=> b!667720 (= res!435015 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12807))))

(declare-fun b!667721 () Bool)

(declare-fun res!435035 () Bool)

(assert (=> b!667721 (=> res!435035 e!382114)))

(assert (=> b!667721 (= res!435035 (not (noDuplicate!600 lt!310953)))))

(declare-fun b!667722 () Bool)

(declare-fun res!435024 () Bool)

(assert (=> b!667722 (=> (not res!435024) (not e!382120))))

(assert (=> b!667722 (= res!435024 (validKeyInArray!0 k!2843))))

(declare-fun b!667723 () Bool)

(declare-fun res!435029 () Bool)

(assert (=> b!667723 (=> (not res!435029) (not e!382120))))

(assert (=> b!667723 (= res!435029 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!667724 () Bool)

(declare-fun e!382123 () Bool)

(assert (=> b!667724 (= e!382123 (not (contains!3353 acc!681 k!2843)))))

(declare-fun b!667725 () Bool)

(declare-fun res!435025 () Bool)

(assert (=> b!667725 (=> (not res!435025) (not e!382120))))

(assert (=> b!667725 (= res!435025 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!435017 () Bool)

(assert (=> start!60052 (=> (not res!435017) (not e!382120))))

(assert (=> start!60052 (= res!435017 (and (bvslt (size!19080 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19080 a!3626))))))

(assert (=> start!60052 e!382120))

(assert (=> start!60052 true))

(declare-fun array_inv!14490 (array!39055) Bool)

(assert (=> start!60052 (array_inv!14490 a!3626)))

(declare-fun b!667726 () Bool)

(assert (=> b!667726 (= e!382114 true)))

(declare-fun lt!310959 () Bool)

(assert (=> b!667726 (= lt!310959 e!382115)))

(declare-fun res!435034 () Bool)

(assert (=> b!667726 (=> res!435034 e!382115)))

(assert (=> b!667726 (= res!435034 e!382113)))

(declare-fun res!435030 () Bool)

(assert (=> b!667726 (=> (not res!435030) (not e!382113))))

(assert (=> b!667726 (= res!435030 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667727 () Bool)

(declare-fun res!435031 () Bool)

(assert (=> b!667727 (=> (not res!435031) (not e!382120))))

(assert (=> b!667727 (= res!435031 (not (contains!3353 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667728 () Bool)

(declare-fun Unit!23378 () Unit!23375)

(assert (=> b!667728 (= e!382118 Unit!23378)))

(declare-fun lt!310955 () Unit!23375)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39055 (_ BitVec 64) (_ BitVec 32)) Unit!23375)

(assert (=> b!667728 (= lt!310955 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!667728 false))

(declare-fun b!667729 () Bool)

(declare-fun res!435019 () Bool)

(assert (=> b!667729 (=> res!435019 e!382114)))

(assert (=> b!667729 (= res!435019 (contains!3353 lt!310953 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667730 () Bool)

(assert (=> b!667730 (= e!382117 e!382123)))

(declare-fun res!435022 () Bool)

(assert (=> b!667730 (=> (not res!435022) (not e!382123))))

(assert (=> b!667730 (= res!435022 (bvsle from!3004 i!1382))))

(declare-fun b!667731 () Bool)

(declare-fun res!435027 () Bool)

(assert (=> b!667731 (=> res!435027 e!382114)))

(assert (=> b!667731 (= res!435027 (contains!3353 lt!310953 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667732 () Bool)

(declare-fun Unit!23379 () Unit!23375)

(assert (=> b!667732 (= e!382121 Unit!23379)))

(declare-fun b!667733 () Bool)

(assert (=> b!667733 (= e!382122 (not (contains!3353 lt!310953 k!2843)))))

(assert (= (and start!60052 res!435017) b!667712))

(assert (= (and b!667712 res!435023) b!667711))

(assert (= (and b!667711 res!435021) b!667727))

(assert (= (and b!667727 res!435031) b!667715))

(assert (= (and b!667715 res!435033) b!667709))

(assert (= (and b!667715 (not res!435026)) b!667730))

(assert (= (and b!667730 res!435022) b!667724))

(assert (= (and b!667715 res!435020) b!667720))

(assert (= (and b!667720 res!435015) b!667725))

(assert (= (and b!667725 res!435025) b!667714))

(assert (= (and b!667714 res!435032) b!667722))

(assert (= (and b!667722 res!435024) b!667723))

(assert (= (and b!667723 res!435029) b!667719))

(assert (= (and b!667719 res!435016) b!667717))

(assert (= (and b!667717 c!76715) b!667728))

(assert (= (and b!667717 (not c!76715)) b!667718))

(assert (= (and b!667717 c!76714) b!667713))

(assert (= (and b!667717 (not c!76714)) b!667732))

(assert (= (and b!667717 (not res!435018)) b!667721))

(assert (= (and b!667721 (not res!435035)) b!667731))

(assert (= (and b!667731 (not res!435027)) b!667729))

(assert (= (and b!667729 (not res!435019)) b!667726))

(assert (= (and b!667726 res!435030) b!667710))

(assert (= (and b!667726 (not res!435034)) b!667716))

(assert (= (and b!667716 res!435028) b!667733))

(declare-fun m!638219 () Bool)

(assert (=> b!667709 m!638219))

(declare-fun m!638221 () Bool)

(assert (=> b!667733 m!638221))

(declare-fun m!638223 () Bool)

(assert (=> b!667711 m!638223))

(declare-fun m!638225 () Bool)

(assert (=> b!667717 m!638225))

(declare-fun m!638227 () Bool)

(assert (=> b!667717 m!638227))

(declare-fun m!638229 () Bool)

(assert (=> b!667717 m!638229))

(declare-fun m!638231 () Bool)

(assert (=> b!667717 m!638231))

(declare-fun m!638233 () Bool)

(assert (=> b!667717 m!638233))

(declare-fun m!638235 () Bool)

(assert (=> b!667717 m!638235))

(declare-fun m!638237 () Bool)

(assert (=> b!667717 m!638237))

(declare-fun m!638239 () Bool)

(assert (=> b!667717 m!638239))

(declare-fun m!638241 () Bool)

(assert (=> b!667717 m!638241))

(declare-fun m!638243 () Bool)

(assert (=> b!667717 m!638243))

(assert (=> b!667717 m!638227))

(declare-fun m!638245 () Bool)

(assert (=> b!667717 m!638245))

(declare-fun m!638247 () Bool)

(assert (=> b!667717 m!638247))

(declare-fun m!638249 () Bool)

(assert (=> b!667717 m!638249))

(declare-fun m!638251 () Bool)

(assert (=> b!667725 m!638251))

(declare-fun m!638253 () Bool)

(assert (=> b!667729 m!638253))

(declare-fun m!638255 () Bool)

(assert (=> b!667712 m!638255))

(declare-fun m!638257 () Bool)

(assert (=> b!667731 m!638257))

(declare-fun m!638259 () Bool)

(assert (=> b!667722 m!638259))

(declare-fun m!638261 () Bool)

(assert (=> b!667721 m!638261))

(declare-fun m!638263 () Bool)

(assert (=> start!60052 m!638263))

(declare-fun m!638265 () Bool)

(assert (=> b!667728 m!638265))

(declare-fun m!638267 () Bool)

(assert (=> b!667720 m!638267))

(declare-fun m!638269 () Bool)

(assert (=> b!667727 m!638269))

(assert (=> b!667713 m!638225))

(assert (=> b!667713 m!638227))

(declare-fun m!638271 () Bool)

(assert (=> b!667713 m!638271))

(declare-fun m!638273 () Bool)

(assert (=> b!667713 m!638273))

(assert (=> b!667713 m!638227))

(assert (=> b!667713 m!638271))

(assert (=> b!667713 m!638239))

(assert (=> b!667713 m!638249))

(assert (=> b!667710 m!638221))

(assert (=> b!667724 m!638219))

(declare-fun m!638275 () Bool)

(assert (=> b!667723 m!638275))

(push 1)

(assert (not b!667722))

(assert (not b!667709))

(assert (not b!667729))

(assert (not b!667725))

(assert (not b!667727))

(assert (not b!667720))

(assert (not b!667733))

(assert (not b!667728))

(assert (not b!667717))

(assert (not start!60052))

(assert (not b!667711))

(assert (not b!667710))

(assert (not b!667723))

(assert (not b!667731))

(assert (not b!667713))

(assert (not b!667724))

(assert (not b!667712))

(assert (not b!667721))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

