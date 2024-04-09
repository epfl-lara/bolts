; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61000 () Bool)

(assert start!61000)

(declare-fun b!683704 () Bool)

(declare-datatypes ((Unit!24032 0))(
  ( (Unit!24033) )
))
(declare-fun e!389459 () Unit!24032)

(declare-fun Unit!24034 () Unit!24032)

(assert (=> b!683704 (= e!389459 Unit!24034)))

(declare-fun b!683705 () Bool)

(declare-fun res!449544 () Bool)

(declare-fun e!389457 () Bool)

(assert (=> b!683705 (=> (not res!449544) (not e!389457))))

(declare-fun e!389456 () Bool)

(assert (=> b!683705 (= res!449544 e!389456)))

(declare-fun res!449552 () Bool)

(assert (=> b!683705 (=> res!449552 e!389456)))

(declare-fun e!389454 () Bool)

(assert (=> b!683705 (= res!449552 e!389454)))

(declare-fun res!449553 () Bool)

(assert (=> b!683705 (=> (not res!449553) (not e!389454))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683705 (= res!449553 (bvsgt from!3004 i!1382))))

(declare-fun res!449554 () Bool)

(assert (=> start!61000 (=> (not res!449554) (not e!389457))))

(declare-datatypes ((array!39565 0))(
  ( (array!39566 (arr!18959 (Array (_ BitVec 32) (_ BitVec 64))) (size!19325 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39565)

(assert (=> start!61000 (= res!449554 (and (bvslt (size!19325 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19325 a!3626))))))

(assert (=> start!61000 e!389457))

(assert (=> start!61000 true))

(declare-fun array_inv!14733 (array!39565) Bool)

(assert (=> start!61000 (array_inv!14733 a!3626)))

(declare-fun b!683706 () Bool)

(declare-fun e!389461 () Bool)

(assert (=> b!683706 (= e!389457 (not e!389461))))

(declare-fun res!449540 () Bool)

(assert (=> b!683706 (=> res!449540 e!389461)))

(assert (=> b!683706 (= res!449540 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13053 0))(
  ( (Nil!13050) (Cons!13049 (h!14094 (_ BitVec 64)) (t!19307 List!13053)) )
))
(declare-fun lt!314027 () List!13053)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun acc!681 () List!13053)

(declare-fun -!146 (List!13053 (_ BitVec 64)) List!13053)

(assert (=> b!683706 (= (-!146 lt!314027 k!2843) acc!681)))

(declare-fun $colon$colon!345 (List!13053 (_ BitVec 64)) List!13053)

(assert (=> b!683706 (= lt!314027 ($colon$colon!345 acc!681 k!2843))))

(declare-fun lt!314029 () Unit!24032)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13053) Unit!24032)

(assert (=> b!683706 (= lt!314029 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!181 (List!13053 List!13053) Bool)

(assert (=> b!683706 (subseq!181 acc!681 acc!681)))

(declare-fun lt!314032 () Unit!24032)

(declare-fun lemmaListSubSeqRefl!0 (List!13053) Unit!24032)

(assert (=> b!683706 (= lt!314032 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39565 (_ BitVec 32) List!13053) Bool)

(assert (=> b!683706 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314028 () Unit!24032)

(declare-fun e!389458 () Unit!24032)

(assert (=> b!683706 (= lt!314028 e!389458)))

(declare-fun c!77449 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683706 (= c!77449 (validKeyInArray!0 (select (arr!18959 a!3626) from!3004)))))

(declare-fun lt!314026 () Unit!24032)

(assert (=> b!683706 (= lt!314026 e!389459)))

(declare-fun c!77450 () Bool)

(declare-fun lt!314033 () Bool)

(assert (=> b!683706 (= c!77450 lt!314033)))

(declare-fun arrayContainsKey!0 (array!39565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683706 (= lt!314033 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683706 (arrayContainsKey!0 (array!39566 (store (arr!18959 a!3626) i!1382 k!2843) (size!19325 a!3626)) k!2843 from!3004)))

(declare-fun b!683707 () Bool)

(declare-fun e!389460 () Bool)

(assert (=> b!683707 (= e!389456 e!389460)))

(declare-fun res!449541 () Bool)

(assert (=> b!683707 (=> (not res!449541) (not e!389460))))

(assert (=> b!683707 (= res!449541 (bvsle from!3004 i!1382))))

(declare-fun b!683708 () Bool)

(declare-fun contains!3596 (List!13053 (_ BitVec 64)) Bool)

(assert (=> b!683708 (= e!389454 (contains!3596 acc!681 k!2843))))

(declare-fun b!683709 () Bool)

(declare-fun res!449545 () Bool)

(assert (=> b!683709 (=> (not res!449545) (not e!389457))))

(assert (=> b!683709 (= res!449545 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13050))))

(declare-fun b!683710 () Bool)

(declare-fun Unit!24035 () Unit!24032)

(assert (=> b!683710 (= e!389458 Unit!24035)))

(declare-fun b!683711 () Bool)

(declare-fun res!449546 () Bool)

(assert (=> b!683711 (=> (not res!449546) (not e!389457))))

(assert (=> b!683711 (= res!449546 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19325 a!3626))))))

(declare-fun b!683712 () Bool)

(declare-fun res!449542 () Bool)

(assert (=> b!683712 (=> (not res!449542) (not e!389457))))

(assert (=> b!683712 (= res!449542 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683713 () Bool)

(declare-fun res!449543 () Bool)

(assert (=> b!683713 (=> (not res!449543) (not e!389457))))

(assert (=> b!683713 (= res!449543 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683714 () Bool)

(declare-fun res!449551 () Bool)

(assert (=> b!683714 (=> (not res!449551) (not e!389457))))

(assert (=> b!683714 (= res!449551 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19325 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683715 () Bool)

(declare-fun res!449549 () Bool)

(assert (=> b!683715 (=> res!449549 e!389461)))

(declare-fun noDuplicate!843 (List!13053) Bool)

(assert (=> b!683715 (= res!449549 (not (noDuplicate!843 lt!314027)))))

(declare-fun b!683716 () Bool)

(declare-fun res!449547 () Bool)

(assert (=> b!683716 (=> (not res!449547) (not e!389457))))

(assert (=> b!683716 (= res!449547 (not (contains!3596 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683717 () Bool)

(assert (=> b!683717 (= e!389460 (not (contains!3596 acc!681 k!2843)))))

(declare-fun b!683718 () Bool)

(assert (=> b!683718 (= e!389461 (not lt!314033))))

(declare-fun b!683719 () Bool)

(declare-fun res!449548 () Bool)

(assert (=> b!683719 (=> (not res!449548) (not e!389457))))

(assert (=> b!683719 (= res!449548 (noDuplicate!843 acc!681))))

(declare-fun b!683720 () Bool)

(declare-fun res!449555 () Bool)

(assert (=> b!683720 (=> (not res!449555) (not e!389457))))

(assert (=> b!683720 (= res!449555 (not (contains!3596 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683721 () Bool)

(declare-fun lt!314034 () Unit!24032)

(assert (=> b!683721 (= e!389458 lt!314034)))

(declare-fun lt!314030 () Unit!24032)

(assert (=> b!683721 (= lt!314030 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683721 (subseq!181 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39565 List!13053 List!13053 (_ BitVec 32)) Unit!24032)

(assert (=> b!683721 (= lt!314034 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!345 acc!681 (select (arr!18959 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683721 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683722 () Bool)

(declare-fun res!449550 () Bool)

(assert (=> b!683722 (=> (not res!449550) (not e!389457))))

(assert (=> b!683722 (= res!449550 (validKeyInArray!0 k!2843))))

(declare-fun b!683723 () Bool)

(declare-fun Unit!24036 () Unit!24032)

(assert (=> b!683723 (= e!389459 Unit!24036)))

(declare-fun lt!314031 () Unit!24032)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39565 (_ BitVec 64) (_ BitVec 32)) Unit!24032)

(assert (=> b!683723 (= lt!314031 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!683723 false))

(assert (= (and start!61000 res!449554) b!683719))

(assert (= (and b!683719 res!449548) b!683720))

(assert (= (and b!683720 res!449555) b!683716))

(assert (= (and b!683716 res!449547) b!683705))

(assert (= (and b!683705 res!449553) b!683708))

(assert (= (and b!683705 (not res!449552)) b!683707))

(assert (= (and b!683707 res!449541) b!683717))

(assert (= (and b!683705 res!449544) b!683709))

(assert (= (and b!683709 res!449545) b!683713))

(assert (= (and b!683713 res!449543) b!683711))

(assert (= (and b!683711 res!449546) b!683722))

(assert (= (and b!683722 res!449550) b!683712))

(assert (= (and b!683712 res!449542) b!683714))

(assert (= (and b!683714 res!449551) b!683706))

(assert (= (and b!683706 c!77450) b!683723))

(assert (= (and b!683706 (not c!77450)) b!683704))

(assert (= (and b!683706 c!77449) b!683721))

(assert (= (and b!683706 (not c!77449)) b!683710))

(assert (= (and b!683706 (not res!449540)) b!683715))

(assert (= (and b!683715 (not res!449549)) b!683718))

(declare-fun m!648255 () Bool)

(assert (=> b!683708 m!648255))

(declare-fun m!648257 () Bool)

(assert (=> b!683722 m!648257))

(declare-fun m!648259 () Bool)

(assert (=> b!683720 m!648259))

(declare-fun m!648261 () Bool)

(assert (=> b!683719 m!648261))

(assert (=> b!683717 m!648255))

(declare-fun m!648263 () Bool)

(assert (=> b!683706 m!648263))

(declare-fun m!648265 () Bool)

(assert (=> b!683706 m!648265))

(declare-fun m!648267 () Bool)

(assert (=> b!683706 m!648267))

(declare-fun m!648269 () Bool)

(assert (=> b!683706 m!648269))

(declare-fun m!648271 () Bool)

(assert (=> b!683706 m!648271))

(declare-fun m!648273 () Bool)

(assert (=> b!683706 m!648273))

(declare-fun m!648275 () Bool)

(assert (=> b!683706 m!648275))

(declare-fun m!648277 () Bool)

(assert (=> b!683706 m!648277))

(assert (=> b!683706 m!648265))

(declare-fun m!648279 () Bool)

(assert (=> b!683706 m!648279))

(declare-fun m!648281 () Bool)

(assert (=> b!683706 m!648281))

(declare-fun m!648283 () Bool)

(assert (=> b!683706 m!648283))

(declare-fun m!648285 () Bool)

(assert (=> b!683715 m!648285))

(assert (=> b!683721 m!648263))

(assert (=> b!683721 m!648265))

(declare-fun m!648287 () Bool)

(assert (=> b!683721 m!648287))

(declare-fun m!648289 () Bool)

(assert (=> b!683721 m!648289))

(assert (=> b!683721 m!648265))

(assert (=> b!683721 m!648287))

(assert (=> b!683721 m!648273))

(assert (=> b!683721 m!648283))

(declare-fun m!648291 () Bool)

(assert (=> b!683713 m!648291))

(declare-fun m!648293 () Bool)

(assert (=> b!683709 m!648293))

(declare-fun m!648295 () Bool)

(assert (=> b!683712 m!648295))

(declare-fun m!648297 () Bool)

(assert (=> b!683716 m!648297))

(declare-fun m!648299 () Bool)

(assert (=> b!683723 m!648299))

(declare-fun m!648301 () Bool)

(assert (=> start!61000 m!648301))

(push 1)

(assert (not b!683713))

(assert (not b!683715))

(assert (not b!683709))

(assert (not b!683722))

(assert (not b!683720))

(assert (not b!683721))

(assert (not b!683712))

(assert (not b!683708))

(assert (not start!61000))

(assert (not b!683723))

(assert (not b!683717))

