; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60028 () Bool)

(assert start!60028)

(declare-fun b!666809 () Bool)

(declare-fun res!434271 () Bool)

(declare-fun e!381753 () Bool)

(assert (=> b!666809 (=> (not res!434271) (not e!381753))))

(declare-datatypes ((List!12798 0))(
  ( (Nil!12795) (Cons!12794 (h!13839 (_ BitVec 64)) (t!19034 List!12798)) )
))
(declare-fun acc!681 () List!12798)

(declare-fun contains!3341 (List!12798 (_ BitVec 64)) Bool)

(assert (=> b!666809 (= res!434271 (not (contains!3341 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666810 () Bool)

(declare-fun res!434274 () Bool)

(assert (=> b!666810 (=> (not res!434274) (not e!381753))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666810 (= res!434274 (validKeyInArray!0 k!2843))))

(declare-fun b!666811 () Bool)

(declare-fun res!434270 () Bool)

(assert (=> b!666811 (=> (not res!434270) (not e!381753))))

(declare-datatypes ((array!39031 0))(
  ( (array!39032 (arr!18704 (Array (_ BitVec 32) (_ BitVec 64))) (size!19068 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39031)

(declare-fun arrayNoDuplicates!0 (array!39031 (_ BitVec 32) List!12798) Bool)

(assert (=> b!666811 (= res!434270 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12795))))

(declare-fun b!666812 () Bool)

(declare-fun e!381754 () Bool)

(assert (=> b!666812 (= e!381754 (not (contains!3341 acc!681 k!2843)))))

(declare-fun b!666813 () Bool)

(declare-fun res!434279 () Bool)

(assert (=> b!666813 (=> (not res!434279) (not e!381753))))

(declare-fun e!381749 () Bool)

(assert (=> b!666813 (= res!434279 e!381749)))

(declare-fun res!434262 () Bool)

(assert (=> b!666813 (=> res!434262 e!381749)))

(declare-fun e!381752 () Bool)

(assert (=> b!666813 (= res!434262 e!381752)))

(declare-fun res!434278 () Bool)

(assert (=> b!666813 (=> (not res!434278) (not e!381752))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666813 (= res!434278 (bvsgt from!3004 i!1382))))

(declare-fun b!666814 () Bool)

(declare-fun res!434263 () Bool)

(declare-fun e!381750 () Bool)

(assert (=> b!666814 (=> res!434263 e!381750)))

(declare-fun lt!310593 () List!12798)

(declare-fun subseq!79 (List!12798 List!12798) Bool)

(assert (=> b!666814 (= res!434263 (not (subseq!79 acc!681 lt!310593)))))

(declare-fun b!666815 () Bool)

(declare-datatypes ((Unit!23315 0))(
  ( (Unit!23316) )
))
(declare-fun e!381747 () Unit!23315)

(declare-fun Unit!23317 () Unit!23315)

(assert (=> b!666815 (= e!381747 Unit!23317)))

(declare-fun res!434268 () Bool)

(assert (=> start!60028 (=> (not res!434268) (not e!381753))))

(assert (=> start!60028 (= res!434268 (and (bvslt (size!19068 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19068 a!3626))))))

(assert (=> start!60028 e!381753))

(assert (=> start!60028 true))

(declare-fun array_inv!14478 (array!39031) Bool)

(assert (=> start!60028 (array_inv!14478 a!3626)))

(declare-fun b!666816 () Bool)

(assert (=> b!666816 (= e!381750 true)))

(declare-fun lt!310595 () Bool)

(assert (=> b!666816 (= lt!310595 (contains!3341 lt!310593 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666817 () Bool)

(declare-fun res!434265 () Bool)

(assert (=> b!666817 (=> res!434265 e!381750)))

(assert (=> b!666817 (= res!434265 (not (contains!3341 lt!310593 k!2843)))))

(declare-fun b!666818 () Bool)

(declare-fun res!434264 () Bool)

(assert (=> b!666818 (=> (not res!434264) (not e!381753))))

(assert (=> b!666818 (= res!434264 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19068 a!3626))))))

(declare-fun b!666819 () Bool)

(declare-fun e!381748 () Unit!23315)

(declare-fun Unit!23318 () Unit!23315)

(assert (=> b!666819 (= e!381748 Unit!23318)))

(declare-fun b!666820 () Bool)

(declare-fun res!434260 () Bool)

(assert (=> b!666820 (=> (not res!434260) (not e!381753))))

(declare-fun noDuplicate!588 (List!12798) Bool)

(assert (=> b!666820 (= res!434260 (noDuplicate!588 acc!681))))

(declare-fun b!666821 () Bool)

(declare-fun res!434277 () Bool)

(assert (=> b!666821 (=> (not res!434277) (not e!381753))))

(assert (=> b!666821 (= res!434277 (not (contains!3341 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666822 () Bool)

(declare-fun Unit!23319 () Unit!23315)

(assert (=> b!666822 (= e!381747 Unit!23319)))

(declare-fun lt!310602 () Unit!23315)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39031 (_ BitVec 64) (_ BitVec 32)) Unit!23315)

(assert (=> b!666822 (= lt!310602 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!666822 false))

(declare-fun b!666823 () Bool)

(declare-fun res!434273 () Bool)

(assert (=> b!666823 (=> (not res!434273) (not e!381753))))

(declare-fun arrayContainsKey!0 (array!39031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666823 (= res!434273 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666824 () Bool)

(declare-fun res!434259 () Bool)

(assert (=> b!666824 (=> (not res!434259) (not e!381753))))

(assert (=> b!666824 (= res!434259 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666825 () Bool)

(declare-fun res!434272 () Bool)

(assert (=> b!666825 (=> res!434272 e!381750)))

(assert (=> b!666825 (= res!434272 (not (noDuplicate!588 lt!310593)))))

(declare-fun b!666826 () Bool)

(declare-fun res!434267 () Bool)

(assert (=> b!666826 (=> res!434267 e!381750)))

(declare-fun lt!310597 () Bool)

(assert (=> b!666826 (= res!434267 lt!310597)))

(declare-fun b!666827 () Bool)

(assert (=> b!666827 (= e!381749 e!381754)))

(declare-fun res!434276 () Bool)

(assert (=> b!666827 (=> (not res!434276) (not e!381754))))

(assert (=> b!666827 (= res!434276 (bvsle from!3004 i!1382))))

(declare-fun b!666828 () Bool)

(declare-fun res!434275 () Bool)

(assert (=> b!666828 (=> res!434275 e!381750)))

(assert (=> b!666828 (= res!434275 (contains!3341 acc!681 k!2843))))

(declare-fun b!666829 () Bool)

(assert (=> b!666829 (= e!381753 (not e!381750))))

(declare-fun res!434269 () Bool)

(assert (=> b!666829 (=> res!434269 e!381750)))

(assert (=> b!666829 (= res!434269 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!77 (List!12798 (_ BitVec 64)) List!12798)

(assert (=> b!666829 (= (-!77 lt!310593 k!2843) acc!681)))

(declare-fun $colon$colon!210 (List!12798 (_ BitVec 64)) List!12798)

(assert (=> b!666829 (= lt!310593 ($colon$colon!210 acc!681 k!2843))))

(declare-fun lt!310594 () Unit!23315)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12798) Unit!23315)

(assert (=> b!666829 (= lt!310594 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!666829 (subseq!79 acc!681 acc!681)))

(declare-fun lt!310600 () Unit!23315)

(declare-fun lemmaListSubSeqRefl!0 (List!12798) Unit!23315)

(assert (=> b!666829 (= lt!310600 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666829 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310598 () Unit!23315)

(assert (=> b!666829 (= lt!310598 e!381748)))

(declare-fun c!76642 () Bool)

(assert (=> b!666829 (= c!76642 (validKeyInArray!0 (select (arr!18704 a!3626) from!3004)))))

(declare-fun lt!310599 () Unit!23315)

(assert (=> b!666829 (= lt!310599 e!381747)))

(declare-fun c!76643 () Bool)

(assert (=> b!666829 (= c!76643 lt!310597)))

(assert (=> b!666829 (= lt!310597 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666829 (arrayContainsKey!0 (array!39032 (store (arr!18704 a!3626) i!1382 k!2843) (size!19068 a!3626)) k!2843 from!3004)))

(declare-fun b!666830 () Bool)

(assert (=> b!666830 (= e!381752 (contains!3341 acc!681 k!2843))))

(declare-fun b!666831 () Bool)

(declare-fun res!434266 () Bool)

(assert (=> b!666831 (=> (not res!434266) (not e!381753))))

(assert (=> b!666831 (= res!434266 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19068 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666832 () Bool)

(declare-fun lt!310596 () Unit!23315)

(assert (=> b!666832 (= e!381748 lt!310596)))

(declare-fun lt!310601 () Unit!23315)

(assert (=> b!666832 (= lt!310601 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666832 (subseq!79 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39031 List!12798 List!12798 (_ BitVec 32)) Unit!23315)

(assert (=> b!666832 (= lt!310596 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!210 acc!681 (select (arr!18704 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666832 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666833 () Bool)

(declare-fun res!434261 () Bool)

(assert (=> b!666833 (=> res!434261 e!381750)))

(assert (=> b!666833 (= res!434261 (contains!3341 lt!310593 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60028 res!434268) b!666820))

(assert (= (and b!666820 res!434260) b!666809))

(assert (= (and b!666809 res!434271) b!666821))

(assert (= (and b!666821 res!434277) b!666813))

(assert (= (and b!666813 res!434278) b!666830))

(assert (= (and b!666813 (not res!434262)) b!666827))

(assert (= (and b!666827 res!434276) b!666812))

(assert (= (and b!666813 res!434279) b!666811))

(assert (= (and b!666811 res!434270) b!666824))

(assert (= (and b!666824 res!434259) b!666818))

(assert (= (and b!666818 res!434264) b!666810))

(assert (= (and b!666810 res!434274) b!666823))

(assert (= (and b!666823 res!434273) b!666831))

(assert (= (and b!666831 res!434266) b!666829))

(assert (= (and b!666829 c!76643) b!666822))

(assert (= (and b!666829 (not c!76643)) b!666815))

(assert (= (and b!666829 c!76642) b!666832))

(assert (= (and b!666829 (not c!76642)) b!666819))

(assert (= (and b!666829 (not res!434269)) b!666825))

(assert (= (and b!666825 (not res!434272)) b!666826))

(assert (= (and b!666826 (not res!434267)) b!666828))

(assert (= (and b!666828 (not res!434275)) b!666814))

(assert (= (and b!666814 (not res!434263)) b!666817))

(assert (= (and b!666817 (not res!434265)) b!666833))

(assert (= (and b!666833 (not res!434261)) b!666816))

(declare-fun m!637531 () Bool)

(assert (=> b!666825 m!637531))

(declare-fun m!637533 () Bool)

(assert (=> b!666820 m!637533))

(declare-fun m!637535 () Bool)

(assert (=> b!666828 m!637535))

(declare-fun m!637537 () Bool)

(assert (=> b!666816 m!637537))

(declare-fun m!637539 () Bool)

(assert (=> b!666824 m!637539))

(assert (=> b!666812 m!637535))

(declare-fun m!637541 () Bool)

(assert (=> b!666823 m!637541))

(declare-fun m!637543 () Bool)

(assert (=> b!666811 m!637543))

(declare-fun m!637545 () Bool)

(assert (=> b!666821 m!637545))

(declare-fun m!637547 () Bool)

(assert (=> b!666814 m!637547))

(declare-fun m!637549 () Bool)

(assert (=> start!60028 m!637549))

(assert (=> b!666830 m!637535))

(declare-fun m!637551 () Bool)

(assert (=> b!666822 m!637551))

(declare-fun m!637553 () Bool)

(assert (=> b!666809 m!637553))

(declare-fun m!637555 () Bool)

(assert (=> b!666829 m!637555))

(declare-fun m!637557 () Bool)

(assert (=> b!666829 m!637557))

(declare-fun m!637559 () Bool)

(assert (=> b!666829 m!637559))

(declare-fun m!637561 () Bool)

(assert (=> b!666829 m!637561))

(declare-fun m!637563 () Bool)

(assert (=> b!666829 m!637563))

(declare-fun m!637565 () Bool)

(assert (=> b!666829 m!637565))

(declare-fun m!637567 () Bool)

(assert (=> b!666829 m!637567))

(declare-fun m!637569 () Bool)

(assert (=> b!666829 m!637569))

(assert (=> b!666829 m!637559))

(declare-fun m!637571 () Bool)

(assert (=> b!666829 m!637571))

(declare-fun m!637573 () Bool)

(assert (=> b!666829 m!637573))

(declare-fun m!637575 () Bool)

(assert (=> b!666829 m!637575))

(declare-fun m!637577 () Bool)

(assert (=> b!666810 m!637577))

(assert (=> b!666832 m!637557))

(assert (=> b!666832 m!637559))

(declare-fun m!637579 () Bool)

(assert (=> b!666832 m!637579))

(declare-fun m!637581 () Bool)

(assert (=> b!666832 m!637581))

(assert (=> b!666832 m!637559))

(assert (=> b!666832 m!637579))

(assert (=> b!666832 m!637565))

(assert (=> b!666832 m!637575))

(declare-fun m!637583 () Bool)

(assert (=> b!666817 m!637583))

(declare-fun m!637585 () Bool)

(assert (=> b!666833 m!637585))

(push 1)

(assert (not b!666829))

(assert (not b!666824))

(assert (not b!666830))

(assert (not b!666832))

(assert (not b!666812))

(assert (not b!666817))

(assert (not b!666823))

(assert (not b!666825))

(assert (not b!666820))

(assert (not b!666821))

(assert (not b!666828))

(assert (not b!666833))

(assert (not b!666809))

(assert (not b!666810))

(assert (not start!60028))

