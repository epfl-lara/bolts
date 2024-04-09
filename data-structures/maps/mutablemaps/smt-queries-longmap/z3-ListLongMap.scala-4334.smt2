; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60050 () Bool)

(assert start!60050)

(declare-fun b!667634 () Bool)

(declare-fun e!382089 () Bool)

(declare-datatypes ((List!12809 0))(
  ( (Nil!12806) (Cons!12805 (h!13850 (_ BitVec 64)) (t!19045 List!12809)) )
))
(declare-fun lt!310925 () List!12809)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3352 (List!12809 (_ BitVec 64)) Bool)

(assert (=> b!667634 (= e!382089 (not (contains!3352 lt!310925 k0!2843)))))

(declare-fun b!667635 () Bool)

(declare-fun res!434967 () Bool)

(declare-fun e!382086 () Bool)

(assert (=> b!667635 (=> (not res!434967) (not e!382086))))

(declare-fun e!382081 () Bool)

(assert (=> b!667635 (= res!434967 e!382081)))

(declare-fun res!434963 () Bool)

(assert (=> b!667635 (=> res!434963 e!382081)))

(declare-fun e!382085 () Bool)

(assert (=> b!667635 (= res!434963 e!382085)))

(declare-fun res!434956 () Bool)

(assert (=> b!667635 (=> (not res!434956) (not e!382085))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!667635 (= res!434956 (bvsgt from!3004 i!1382))))

(declare-fun b!667636 () Bool)

(declare-fun res!434954 () Bool)

(declare-fun e!382082 () Bool)

(assert (=> b!667636 (=> res!434954 e!382082)))

(declare-fun noDuplicate!599 (List!12809) Bool)

(assert (=> b!667636 (= res!434954 (not (noDuplicate!599 lt!310925)))))

(declare-fun b!667637 () Bool)

(declare-fun res!434964 () Bool)

(assert (=> b!667637 (=> (not res!434964) (not e!382086))))

(declare-datatypes ((array!39053 0))(
  ( (array!39054 (arr!18715 (Array (_ BitVec 32) (_ BitVec 64))) (size!19079 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39053)

(assert (=> b!667637 (= res!434964 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19079 a!3626))))))

(declare-fun b!667638 () Bool)

(declare-fun res!434966 () Bool)

(assert (=> b!667638 (=> (not res!434966) (not e!382086))))

(declare-fun acc!681 () List!12809)

(assert (=> b!667638 (= res!434966 (noDuplicate!599 acc!681))))

(declare-fun b!667639 () Bool)

(assert (=> b!667639 (= e!382085 (contains!3352 acc!681 k0!2843))))

(declare-fun b!667640 () Bool)

(declare-datatypes ((Unit!23370 0))(
  ( (Unit!23371) )
))
(declare-fun e!382087 () Unit!23370)

(declare-fun Unit!23372 () Unit!23370)

(assert (=> b!667640 (= e!382087 Unit!23372)))

(declare-fun b!667641 () Bool)

(declare-fun res!434972 () Bool)

(assert (=> b!667641 (=> (not res!434972) (not e!382086))))

(assert (=> b!667641 (= res!434972 (not (contains!3352 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667642 () Bool)

(declare-fun res!434968 () Bool)

(assert (=> b!667642 (=> (not res!434968) (not e!382086))))

(declare-fun arrayNoDuplicates!0 (array!39053 (_ BitVec 32) List!12809) Bool)

(assert (=> b!667642 (= res!434968 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12806))))

(declare-fun b!667643 () Bool)

(declare-fun e!382088 () Bool)

(assert (=> b!667643 (= e!382088 (contains!3352 lt!310925 k0!2843))))

(declare-fun b!667644 () Bool)

(declare-fun res!434960 () Bool)

(assert (=> b!667644 (=> (not res!434960) (not e!382086))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!667644 (= res!434960 (validKeyInArray!0 k0!2843))))

(declare-fun b!667645 () Bool)

(declare-fun e!382083 () Unit!23370)

(declare-fun Unit!23373 () Unit!23370)

(assert (=> b!667645 (= e!382083 Unit!23373)))

(declare-fun b!667646 () Bool)

(declare-fun e!382084 () Bool)

(assert (=> b!667646 (= e!382084 (not (contains!3352 acc!681 k0!2843)))))

(declare-fun res!434958 () Bool)

(assert (=> start!60050 (=> (not res!434958) (not e!382086))))

(assert (=> start!60050 (= res!434958 (and (bvslt (size!19079 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19079 a!3626))))))

(assert (=> start!60050 e!382086))

(assert (=> start!60050 true))

(declare-fun array_inv!14489 (array!39053) Bool)

(assert (=> start!60050 (array_inv!14489 a!3626)))

(declare-fun b!667647 () Bool)

(declare-fun Unit!23374 () Unit!23370)

(assert (=> b!667647 (= e!382083 Unit!23374)))

(declare-fun lt!310930 () Unit!23370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39053 (_ BitVec 64) (_ BitVec 32)) Unit!23370)

(assert (=> b!667647 (= lt!310930 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!667647 false))

(declare-fun b!667648 () Bool)

(declare-fun res!434953 () Bool)

(assert (=> b!667648 (=> (not res!434953) (not e!382086))))

(assert (=> b!667648 (= res!434953 (not (contains!3352 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!667649 () Bool)

(declare-fun lt!310929 () Unit!23370)

(assert (=> b!667649 (= e!382087 lt!310929)))

(declare-fun lt!310931 () Unit!23370)

(declare-fun lemmaListSubSeqRefl!0 (List!12809) Unit!23370)

(assert (=> b!667649 (= lt!310931 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!90 (List!12809 List!12809) Bool)

(assert (=> b!667649 (subseq!90 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39053 List!12809 List!12809 (_ BitVec 32)) Unit!23370)

(declare-fun $colon$colon!221 (List!12809 (_ BitVec 64)) List!12809)

(assert (=> b!667649 (= lt!310929 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!221 acc!681 (select (arr!18715 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667649 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!667650 () Bool)

(assert (=> b!667650 (= e!382081 e!382084)))

(declare-fun res!434959 () Bool)

(assert (=> b!667650 (=> (not res!434959) (not e!382084))))

(assert (=> b!667650 (= res!434959 (bvsle from!3004 i!1382))))

(declare-fun b!667651 () Bool)

(assert (=> b!667651 (= e!382086 (not e!382082))))

(declare-fun res!434955 () Bool)

(assert (=> b!667651 (=> res!434955 e!382082)))

(assert (=> b!667651 (= res!434955 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!667651 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!310925)))

(declare-fun lt!310932 () Unit!23370)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39053 (_ BitVec 64) (_ BitVec 32) List!12809 List!12809) Unit!23370)

(assert (=> b!667651 (= lt!310932 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!310925))))

(declare-fun -!88 (List!12809 (_ BitVec 64)) List!12809)

(assert (=> b!667651 (= (-!88 lt!310925 k0!2843) acc!681)))

(assert (=> b!667651 (= lt!310925 ($colon$colon!221 acc!681 k0!2843))))

(declare-fun lt!310924 () Unit!23370)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12809) Unit!23370)

(assert (=> b!667651 (= lt!310924 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!667651 (subseq!90 acc!681 acc!681)))

(declare-fun lt!310927 () Unit!23370)

(assert (=> b!667651 (= lt!310927 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!667651 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310926 () Unit!23370)

(assert (=> b!667651 (= lt!310926 e!382087)))

(declare-fun c!76708 () Bool)

(assert (=> b!667651 (= c!76708 (validKeyInArray!0 (select (arr!18715 a!3626) from!3004)))))

(declare-fun lt!310928 () Unit!23370)

(assert (=> b!667651 (= lt!310928 e!382083)))

(declare-fun c!76709 () Bool)

(declare-fun arrayContainsKey!0 (array!39053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!667651 (= c!76709 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!667651 (arrayContainsKey!0 (array!39054 (store (arr!18715 a!3626) i!1382 k0!2843) (size!19079 a!3626)) k0!2843 from!3004)))

(declare-fun b!667652 () Bool)

(declare-fun res!434971 () Bool)

(assert (=> b!667652 (=> res!434971 e!382082)))

(assert (=> b!667652 (= res!434971 (contains!3352 lt!310925 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667653 () Bool)

(declare-fun e!382090 () Bool)

(assert (=> b!667653 (= e!382090 e!382089)))

(declare-fun res!434957 () Bool)

(assert (=> b!667653 (=> (not res!434957) (not e!382089))))

(assert (=> b!667653 (= res!434957 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667654 () Bool)

(declare-fun res!434961 () Bool)

(assert (=> b!667654 (=> res!434961 e!382082)))

(assert (=> b!667654 (= res!434961 (contains!3352 lt!310925 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!667655 () Bool)

(declare-fun res!434970 () Bool)

(assert (=> b!667655 (=> (not res!434970) (not e!382086))))

(assert (=> b!667655 (= res!434970 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19079 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!667656 () Bool)

(declare-fun res!434969 () Bool)

(assert (=> b!667656 (=> (not res!434969) (not e!382086))))

(assert (=> b!667656 (= res!434969 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!667657 () Bool)

(assert (=> b!667657 (= e!382082 true)))

(declare-fun lt!310923 () Bool)

(assert (=> b!667657 (= lt!310923 e!382090)))

(declare-fun res!434952 () Bool)

(assert (=> b!667657 (=> res!434952 e!382090)))

(assert (=> b!667657 (= res!434952 e!382088)))

(declare-fun res!434965 () Bool)

(assert (=> b!667657 (=> (not res!434965) (not e!382088))))

(assert (=> b!667657 (= res!434965 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!667658 () Bool)

(declare-fun res!434962 () Bool)

(assert (=> b!667658 (=> (not res!434962) (not e!382086))))

(assert (=> b!667658 (= res!434962 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!60050 res!434958) b!667638))

(assert (= (and b!667638 res!434966) b!667648))

(assert (= (and b!667648 res!434953) b!667641))

(assert (= (and b!667641 res!434972) b!667635))

(assert (= (and b!667635 res!434956) b!667639))

(assert (= (and b!667635 (not res!434963)) b!667650))

(assert (= (and b!667650 res!434959) b!667646))

(assert (= (and b!667635 res!434967) b!667642))

(assert (= (and b!667642 res!434968) b!667656))

(assert (= (and b!667656 res!434969) b!667637))

(assert (= (and b!667637 res!434964) b!667644))

(assert (= (and b!667644 res!434960) b!667658))

(assert (= (and b!667658 res!434962) b!667655))

(assert (= (and b!667655 res!434970) b!667651))

(assert (= (and b!667651 c!76709) b!667647))

(assert (= (and b!667651 (not c!76709)) b!667645))

(assert (= (and b!667651 c!76708) b!667649))

(assert (= (and b!667651 (not c!76708)) b!667640))

(assert (= (and b!667651 (not res!434955)) b!667636))

(assert (= (and b!667636 (not res!434954)) b!667654))

(assert (= (and b!667654 (not res!434961)) b!667652))

(assert (= (and b!667652 (not res!434971)) b!667657))

(assert (= (and b!667657 res!434965) b!667643))

(assert (= (and b!667657 (not res!434952)) b!667653))

(assert (= (and b!667653 res!434957) b!667634))

(declare-fun m!638161 () Bool)

(assert (=> b!667636 m!638161))

(declare-fun m!638163 () Bool)

(assert (=> b!667658 m!638163))

(declare-fun m!638165 () Bool)

(assert (=> b!667648 m!638165))

(declare-fun m!638167 () Bool)

(assert (=> b!667649 m!638167))

(declare-fun m!638169 () Bool)

(assert (=> b!667649 m!638169))

(declare-fun m!638171 () Bool)

(assert (=> b!667649 m!638171))

(declare-fun m!638173 () Bool)

(assert (=> b!667649 m!638173))

(assert (=> b!667649 m!638169))

(assert (=> b!667649 m!638171))

(declare-fun m!638175 () Bool)

(assert (=> b!667649 m!638175))

(declare-fun m!638177 () Bool)

(assert (=> b!667649 m!638177))

(declare-fun m!638179 () Bool)

(assert (=> b!667644 m!638179))

(declare-fun m!638181 () Bool)

(assert (=> b!667641 m!638181))

(assert (=> b!667651 m!638167))

(assert (=> b!667651 m!638169))

(declare-fun m!638183 () Bool)

(assert (=> b!667651 m!638183))

(declare-fun m!638185 () Bool)

(assert (=> b!667651 m!638185))

(assert (=> b!667651 m!638175))

(declare-fun m!638187 () Bool)

(assert (=> b!667651 m!638187))

(declare-fun m!638189 () Bool)

(assert (=> b!667651 m!638189))

(declare-fun m!638191 () Bool)

(assert (=> b!667651 m!638191))

(declare-fun m!638193 () Bool)

(assert (=> b!667651 m!638193))

(assert (=> b!667651 m!638169))

(declare-fun m!638195 () Bool)

(assert (=> b!667651 m!638195))

(declare-fun m!638197 () Bool)

(assert (=> b!667651 m!638197))

(declare-fun m!638199 () Bool)

(assert (=> b!667651 m!638199))

(assert (=> b!667651 m!638177))

(declare-fun m!638201 () Bool)

(assert (=> b!667642 m!638201))

(declare-fun m!638203 () Bool)

(assert (=> b!667638 m!638203))

(declare-fun m!638205 () Bool)

(assert (=> start!60050 m!638205))

(declare-fun m!638207 () Bool)

(assert (=> b!667654 m!638207))

(declare-fun m!638209 () Bool)

(assert (=> b!667656 m!638209))

(declare-fun m!638211 () Bool)

(assert (=> b!667652 m!638211))

(declare-fun m!638213 () Bool)

(assert (=> b!667639 m!638213))

(declare-fun m!638215 () Bool)

(assert (=> b!667634 m!638215))

(assert (=> b!667646 m!638213))

(declare-fun m!638217 () Bool)

(assert (=> b!667647 m!638217))

(assert (=> b!667643 m!638215))

(check-sat (not b!667644) (not b!667641) (not b!667638) (not b!667649) (not b!667636) (not b!667634) (not b!667642) (not b!667656) (not b!667646) (not b!667643) (not b!667648) (not b!667658) (not b!667652) (not b!667639) (not start!60050) (not b!667647) (not b!667654) (not b!667651))
(check-sat)
