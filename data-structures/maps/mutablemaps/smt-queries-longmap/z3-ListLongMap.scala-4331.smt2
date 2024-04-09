; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60032 () Bool)

(assert start!60032)

(declare-fun b!666959 () Bool)

(declare-fun res!434385 () Bool)

(declare-fun e!381799 () Bool)

(assert (=> b!666959 (=> (not res!434385) (not e!381799))))

(declare-fun e!381797 () Bool)

(assert (=> b!666959 (= res!434385 e!381797)))

(declare-fun res!434400 () Bool)

(assert (=> b!666959 (=> res!434400 e!381797)))

(declare-fun e!381796 () Bool)

(assert (=> b!666959 (= res!434400 e!381796)))

(declare-fun res!434404 () Bool)

(assert (=> b!666959 (=> (not res!434404) (not e!381796))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666959 (= res!434404 (bvsgt from!3004 i!1382))))

(declare-fun b!666961 () Bool)

(declare-fun res!434390 () Bool)

(assert (=> b!666961 (=> (not res!434390) (not e!381799))))

(declare-datatypes ((List!12800 0))(
  ( (Nil!12797) (Cons!12796 (h!13841 (_ BitVec 64)) (t!19036 List!12800)) )
))
(declare-fun acc!681 () List!12800)

(declare-fun noDuplicate!590 (List!12800) Bool)

(assert (=> b!666961 (= res!434390 (noDuplicate!590 acc!681))))

(declare-fun b!666962 () Bool)

(declare-fun res!434392 () Bool)

(assert (=> b!666962 (=> (not res!434392) (not e!381799))))

(declare-fun contains!3343 (List!12800 (_ BitVec 64)) Bool)

(assert (=> b!666962 (= res!434392 (not (contains!3343 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666963 () Bool)

(declare-fun res!434401 () Bool)

(declare-fun e!381798 () Bool)

(assert (=> b!666963 (=> res!434401 e!381798)))

(declare-fun lt!310658 () List!12800)

(assert (=> b!666963 (= res!434401 (contains!3343 lt!310658 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666964 () Bool)

(declare-datatypes ((Unit!23325 0))(
  ( (Unit!23326) )
))
(declare-fun e!381800 () Unit!23325)

(declare-fun Unit!23327 () Unit!23325)

(assert (=> b!666964 (= e!381800 Unit!23327)))

(declare-fun b!666965 () Bool)

(declare-fun res!434402 () Bool)

(assert (=> b!666965 (=> res!434402 e!381798)))

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!666965 (= res!434402 (contains!3343 acc!681 k0!2843))))

(declare-fun b!666966 () Bool)

(declare-fun res!434393 () Bool)

(assert (=> b!666966 (=> (not res!434393) (not e!381799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666966 (= res!434393 (validKeyInArray!0 k0!2843))))

(declare-fun b!666967 () Bool)

(declare-fun res!434391 () Bool)

(assert (=> b!666967 (=> res!434391 e!381798)))

(assert (=> b!666967 (= res!434391 (not (contains!3343 lt!310658 k0!2843)))))

(declare-fun b!666968 () Bool)

(declare-fun e!381802 () Unit!23325)

(declare-fun lt!310655 () Unit!23325)

(assert (=> b!666968 (= e!381802 lt!310655)))

(declare-fun lt!310662 () Unit!23325)

(declare-fun lemmaListSubSeqRefl!0 (List!12800) Unit!23325)

(assert (=> b!666968 (= lt!310662 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!81 (List!12800 List!12800) Bool)

(assert (=> b!666968 (subseq!81 acc!681 acc!681)))

(declare-datatypes ((array!39035 0))(
  ( (array!39036 (arr!18706 (Array (_ BitVec 32) (_ BitVec 64))) (size!19070 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39035)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39035 List!12800 List!12800 (_ BitVec 32)) Unit!23325)

(declare-fun $colon$colon!212 (List!12800 (_ BitVec 64)) List!12800)

(assert (=> b!666968 (= lt!310655 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!212 acc!681 (select (arr!18706 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39035 (_ BitVec 32) List!12800) Bool)

(assert (=> b!666968 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666969 () Bool)

(declare-fun res!434397 () Bool)

(assert (=> b!666969 (=> (not res!434397) (not e!381799))))

(assert (=> b!666969 (= res!434397 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12797))))

(declare-fun b!666970 () Bool)

(declare-fun e!381801 () Bool)

(assert (=> b!666970 (= e!381801 (not (contains!3343 acc!681 k0!2843)))))

(declare-fun b!666971 () Bool)

(declare-fun res!434403 () Bool)

(assert (=> b!666971 (=> (not res!434403) (not e!381799))))

(declare-fun arrayContainsKey!0 (array!39035 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666971 (= res!434403 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666972 () Bool)

(assert (=> b!666972 (= e!381798 true)))

(declare-fun lt!310659 () Bool)

(assert (=> b!666972 (= lt!310659 (contains!3343 lt!310658 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666973 () Bool)

(assert (=> b!666973 (= e!381796 (contains!3343 acc!681 k0!2843))))

(declare-fun b!666974 () Bool)

(declare-fun res!434395 () Bool)

(assert (=> b!666974 (=> (not res!434395) (not e!381799))))

(assert (=> b!666974 (= res!434395 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666975 () Bool)

(declare-fun res!434387 () Bool)

(assert (=> b!666975 (=> (not res!434387) (not e!381799))))

(assert (=> b!666975 (= res!434387 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19070 a!3626))))))

(declare-fun res!434388 () Bool)

(assert (=> start!60032 (=> (not res!434388) (not e!381799))))

(assert (=> start!60032 (= res!434388 (and (bvslt (size!19070 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19070 a!3626))))))

(assert (=> start!60032 e!381799))

(assert (=> start!60032 true))

(declare-fun array_inv!14480 (array!39035) Bool)

(assert (=> start!60032 (array_inv!14480 a!3626)))

(declare-fun b!666960 () Bool)

(declare-fun res!434386 () Bool)

(assert (=> b!666960 (=> (not res!434386) (not e!381799))))

(assert (=> b!666960 (= res!434386 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19070 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666976 () Bool)

(declare-fun res!434398 () Bool)

(assert (=> b!666976 (=> res!434398 e!381798)))

(assert (=> b!666976 (= res!434398 (not (subseq!81 acc!681 lt!310658)))))

(declare-fun b!666977 () Bool)

(assert (=> b!666977 (= e!381797 e!381801)))

(declare-fun res!434389 () Bool)

(assert (=> b!666977 (=> (not res!434389) (not e!381801))))

(assert (=> b!666977 (= res!434389 (bvsle from!3004 i!1382))))

(declare-fun b!666978 () Bool)

(declare-fun res!434399 () Bool)

(assert (=> b!666978 (=> res!434399 e!381798)))

(declare-fun lt!310654 () Bool)

(assert (=> b!666978 (= res!434399 lt!310654)))

(declare-fun b!666979 () Bool)

(declare-fun res!434396 () Bool)

(assert (=> b!666979 (=> res!434396 e!381798)))

(assert (=> b!666979 (= res!434396 (not (noDuplicate!590 lt!310658)))))

(declare-fun b!666980 () Bool)

(declare-fun Unit!23328 () Unit!23325)

(assert (=> b!666980 (= e!381802 Unit!23328)))

(declare-fun b!666981 () Bool)

(declare-fun Unit!23329 () Unit!23325)

(assert (=> b!666981 (= e!381800 Unit!23329)))

(declare-fun lt!310653 () Unit!23325)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39035 (_ BitVec 64) (_ BitVec 32)) Unit!23325)

(assert (=> b!666981 (= lt!310653 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!666981 false))

(declare-fun b!666982 () Bool)

(assert (=> b!666982 (= e!381799 (not e!381798))))

(declare-fun res!434394 () Bool)

(assert (=> b!666982 (=> res!434394 e!381798)))

(assert (=> b!666982 (= res!434394 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!79 (List!12800 (_ BitVec 64)) List!12800)

(assert (=> b!666982 (= (-!79 lt!310658 k0!2843) acc!681)))

(assert (=> b!666982 (= lt!310658 ($colon$colon!212 acc!681 k0!2843))))

(declare-fun lt!310661 () Unit!23325)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12800) Unit!23325)

(assert (=> b!666982 (= lt!310661 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!666982 (subseq!81 acc!681 acc!681)))

(declare-fun lt!310657 () Unit!23325)

(assert (=> b!666982 (= lt!310657 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666982 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310660 () Unit!23325)

(assert (=> b!666982 (= lt!310660 e!381802)))

(declare-fun c!76654 () Bool)

(assert (=> b!666982 (= c!76654 (validKeyInArray!0 (select (arr!18706 a!3626) from!3004)))))

(declare-fun lt!310656 () Unit!23325)

(assert (=> b!666982 (= lt!310656 e!381800)))

(declare-fun c!76655 () Bool)

(assert (=> b!666982 (= c!76655 lt!310654)))

(assert (=> b!666982 (= lt!310654 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666982 (arrayContainsKey!0 (array!39036 (store (arr!18706 a!3626) i!1382 k0!2843) (size!19070 a!3626)) k0!2843 from!3004)))

(declare-fun b!666983 () Bool)

(declare-fun res!434405 () Bool)

(assert (=> b!666983 (=> (not res!434405) (not e!381799))))

(assert (=> b!666983 (= res!434405 (not (contains!3343 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60032 res!434388) b!666961))

(assert (= (and b!666961 res!434390) b!666983))

(assert (= (and b!666983 res!434405) b!666962))

(assert (= (and b!666962 res!434392) b!666959))

(assert (= (and b!666959 res!434404) b!666973))

(assert (= (and b!666959 (not res!434400)) b!666977))

(assert (= (and b!666977 res!434389) b!666970))

(assert (= (and b!666959 res!434385) b!666969))

(assert (= (and b!666969 res!434397) b!666974))

(assert (= (and b!666974 res!434395) b!666975))

(assert (= (and b!666975 res!434387) b!666966))

(assert (= (and b!666966 res!434393) b!666971))

(assert (= (and b!666971 res!434403) b!666960))

(assert (= (and b!666960 res!434386) b!666982))

(assert (= (and b!666982 c!76655) b!666981))

(assert (= (and b!666982 (not c!76655)) b!666964))

(assert (= (and b!666982 c!76654) b!666968))

(assert (= (and b!666982 (not c!76654)) b!666980))

(assert (= (and b!666982 (not res!434394)) b!666979))

(assert (= (and b!666979 (not res!434396)) b!666978))

(assert (= (and b!666978 (not res!434399)) b!666965))

(assert (= (and b!666965 (not res!434402)) b!666976))

(assert (= (and b!666976 (not res!434398)) b!666967))

(assert (= (and b!666967 (not res!434391)) b!666963))

(assert (= (and b!666963 (not res!434401)) b!666972))

(declare-fun m!637643 () Bool)

(assert (=> b!666962 m!637643))

(declare-fun m!637645 () Bool)

(assert (=> b!666974 m!637645))

(declare-fun m!637647 () Bool)

(assert (=> b!666971 m!637647))

(declare-fun m!637649 () Bool)

(assert (=> b!666976 m!637649))

(declare-fun m!637651 () Bool)

(assert (=> b!666970 m!637651))

(declare-fun m!637653 () Bool)

(assert (=> b!666969 m!637653))

(declare-fun m!637655 () Bool)

(assert (=> b!666968 m!637655))

(declare-fun m!637657 () Bool)

(assert (=> b!666968 m!637657))

(declare-fun m!637659 () Bool)

(assert (=> b!666968 m!637659))

(declare-fun m!637661 () Bool)

(assert (=> b!666968 m!637661))

(assert (=> b!666968 m!637657))

(assert (=> b!666968 m!637659))

(declare-fun m!637663 () Bool)

(assert (=> b!666968 m!637663))

(declare-fun m!637665 () Bool)

(assert (=> b!666968 m!637665))

(declare-fun m!637667 () Bool)

(assert (=> b!666966 m!637667))

(assert (=> b!666965 m!637651))

(declare-fun m!637669 () Bool)

(assert (=> b!666963 m!637669))

(assert (=> b!666973 m!637651))

(assert (=> b!666982 m!637655))

(assert (=> b!666982 m!637657))

(declare-fun m!637671 () Bool)

(assert (=> b!666982 m!637671))

(declare-fun m!637673 () Bool)

(assert (=> b!666982 m!637673))

(declare-fun m!637675 () Bool)

(assert (=> b!666982 m!637675))

(declare-fun m!637677 () Bool)

(assert (=> b!666982 m!637677))

(assert (=> b!666982 m!637657))

(declare-fun m!637679 () Bool)

(assert (=> b!666982 m!637679))

(declare-fun m!637681 () Bool)

(assert (=> b!666982 m!637681))

(assert (=> b!666982 m!637663))

(declare-fun m!637683 () Bool)

(assert (=> b!666982 m!637683))

(assert (=> b!666982 m!637665))

(declare-fun m!637685 () Bool)

(assert (=> start!60032 m!637685))

(declare-fun m!637687 () Bool)

(assert (=> b!666961 m!637687))

(declare-fun m!637689 () Bool)

(assert (=> b!666967 m!637689))

(declare-fun m!637691 () Bool)

(assert (=> b!666981 m!637691))

(declare-fun m!637693 () Bool)

(assert (=> b!666983 m!637693))

(declare-fun m!637695 () Bool)

(assert (=> b!666972 m!637695))

(declare-fun m!637697 () Bool)

(assert (=> b!666979 m!637697))

(check-sat (not b!666962) (not b!666961) (not b!666969) (not b!666967) (not b!666979) (not b!666966) (not start!60032) (not b!666981) (not b!666970) (not b!666973) (not b!666976) (not b!666968) (not b!666982) (not b!666983) (not b!666963) (not b!666965) (not b!666971) (not b!666972) (not b!666974))
(check-sat)
