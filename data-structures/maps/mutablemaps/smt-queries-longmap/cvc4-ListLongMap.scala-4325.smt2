; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59998 () Bool)

(assert start!59998)

(declare-fun b!665684 () Bool)

(declare-fun res!433315 () Bool)

(declare-fun e!381394 () Bool)

(assert (=> b!665684 (=> (not res!433315) (not e!381394))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39001 0))(
  ( (array!39002 (arr!18689 (Array (_ BitVec 32) (_ BitVec 64))) (size!19053 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39001)

(assert (=> b!665684 (= res!433315 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19053 a!3626))))))

(declare-fun b!665685 () Bool)

(declare-fun res!433314 () Bool)

(assert (=> b!665685 (=> (not res!433314) (not e!381394))))

(declare-datatypes ((List!12783 0))(
  ( (Nil!12780) (Cons!12779 (h!13824 (_ BitVec 64)) (t!19019 List!12783)) )
))
(declare-fun acc!681 () List!12783)

(declare-fun contains!3326 (List!12783 (_ BitVec 64)) Bool)

(assert (=> b!665685 (= res!433314 (not (contains!3326 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665686 () Bool)

(declare-datatypes ((Unit!23240 0))(
  ( (Unit!23241) )
))
(declare-fun e!381387 () Unit!23240)

(declare-fun lt!310151 () Unit!23240)

(assert (=> b!665686 (= e!381387 lt!310151)))

(declare-fun lt!310152 () Unit!23240)

(declare-fun lemmaListSubSeqRefl!0 (List!12783) Unit!23240)

(assert (=> b!665686 (= lt!310152 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!64 (List!12783 List!12783) Bool)

(assert (=> b!665686 (subseq!64 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39001 List!12783 List!12783 (_ BitVec 32)) Unit!23240)

(declare-fun $colon$colon!195 (List!12783 (_ BitVec 64)) List!12783)

(assert (=> b!665686 (= lt!310151 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!195 acc!681 (select (arr!18689 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39001 (_ BitVec 32) List!12783) Bool)

(assert (=> b!665686 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665687 () Bool)

(declare-fun e!381392 () Unit!23240)

(declare-fun Unit!23242 () Unit!23240)

(assert (=> b!665687 (= e!381392 Unit!23242)))

(declare-fun lt!310144 () Unit!23240)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39001 (_ BitVec 64) (_ BitVec 32)) Unit!23240)

(assert (=> b!665687 (= lt!310144 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665687 false))

(declare-fun b!665689 () Bool)

(declare-fun e!381389 () Bool)

(assert (=> b!665689 (= e!381389 true)))

(declare-fun lt!310147 () Bool)

(declare-fun lt!310143 () List!12783)

(assert (=> b!665689 (= lt!310147 (contains!3326 lt!310143 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665690 () Bool)

(declare-fun res!433329 () Bool)

(assert (=> b!665690 (=> (not res!433329) (not e!381394))))

(assert (=> b!665690 (= res!433329 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19053 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665691 () Bool)

(declare-fun res!433330 () Bool)

(assert (=> b!665691 (=> (not res!433330) (not e!381394))))

(declare-fun arrayContainsKey!0 (array!39001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665691 (= res!433330 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665692 () Bool)

(declare-fun e!381390 () Bool)

(declare-fun e!381393 () Bool)

(assert (=> b!665692 (= e!381390 e!381393)))

(declare-fun res!433317 () Bool)

(assert (=> b!665692 (=> (not res!433317) (not e!381393))))

(assert (=> b!665692 (= res!433317 (bvsle from!3004 i!1382))))

(declare-fun b!665693 () Bool)

(declare-fun e!381388 () Bool)

(assert (=> b!665693 (= e!381388 (contains!3326 acc!681 k!2843))))

(declare-fun b!665694 () Bool)

(declare-fun Unit!23243 () Unit!23240)

(assert (=> b!665694 (= e!381392 Unit!23243)))

(declare-fun b!665695 () Bool)

(declare-fun res!433324 () Bool)

(assert (=> b!665695 (=> res!433324 e!381389)))

(assert (=> b!665695 (= res!433324 (contains!3326 lt!310143 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665696 () Bool)

(declare-fun Unit!23244 () Unit!23240)

(assert (=> b!665696 (= e!381387 Unit!23244)))

(declare-fun b!665697 () Bool)

(declare-fun res!433327 () Bool)

(assert (=> b!665697 (=> (not res!433327) (not e!381394))))

(assert (=> b!665697 (= res!433327 e!381390)))

(declare-fun res!433323 () Bool)

(assert (=> b!665697 (=> res!433323 e!381390)))

(assert (=> b!665697 (= res!433323 e!381388)))

(declare-fun res!433326 () Bool)

(assert (=> b!665697 (=> (not res!433326) (not e!381388))))

(assert (=> b!665697 (= res!433326 (bvsgt from!3004 i!1382))))

(declare-fun b!665698 () Bool)

(declare-fun res!433332 () Bool)

(assert (=> b!665698 (=> (not res!433332) (not e!381394))))

(assert (=> b!665698 (= res!433332 (not (contains!3326 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665699 () Bool)

(declare-fun res!433319 () Bool)

(assert (=> b!665699 (=> (not res!433319) (not e!381394))))

(declare-fun noDuplicate!573 (List!12783) Bool)

(assert (=> b!665699 (= res!433319 (noDuplicate!573 acc!681))))

(declare-fun res!433331 () Bool)

(assert (=> start!59998 (=> (not res!433331) (not e!381394))))

(assert (=> start!59998 (= res!433331 (and (bvslt (size!19053 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19053 a!3626))))))

(assert (=> start!59998 e!381394))

(assert (=> start!59998 true))

(declare-fun array_inv!14463 (array!39001) Bool)

(assert (=> start!59998 (array_inv!14463 a!3626)))

(declare-fun b!665688 () Bool)

(declare-fun res!433321 () Bool)

(assert (=> b!665688 (=> res!433321 e!381389)))

(assert (=> b!665688 (= res!433321 (contains!3326 acc!681 k!2843))))

(declare-fun b!665700 () Bool)

(declare-fun res!433322 () Bool)

(assert (=> b!665700 (=> (not res!433322) (not e!381394))))

(assert (=> b!665700 (= res!433322 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12780))))

(declare-fun b!665701 () Bool)

(declare-fun res!433333 () Bool)

(assert (=> b!665701 (=> res!433333 e!381389)))

(assert (=> b!665701 (= res!433333 (not (subseq!64 acc!681 lt!310143)))))

(declare-fun b!665702 () Bool)

(declare-fun res!433318 () Bool)

(assert (=> b!665702 (=> res!433318 e!381389)))

(declare-fun lt!310148 () Bool)

(assert (=> b!665702 (= res!433318 lt!310148)))

(declare-fun b!665703 () Bool)

(declare-fun res!433334 () Bool)

(assert (=> b!665703 (=> (not res!433334) (not e!381394))))

(assert (=> b!665703 (= res!433334 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665704 () Bool)

(assert (=> b!665704 (= e!381393 (not (contains!3326 acc!681 k!2843)))))

(declare-fun b!665705 () Bool)

(declare-fun res!433320 () Bool)

(assert (=> b!665705 (=> res!433320 e!381389)))

(assert (=> b!665705 (= res!433320 (not (noDuplicate!573 lt!310143)))))

(declare-fun b!665706 () Bool)

(declare-fun res!433328 () Bool)

(assert (=> b!665706 (=> (not res!433328) (not e!381394))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665706 (= res!433328 (validKeyInArray!0 k!2843))))

(declare-fun b!665707 () Bool)

(declare-fun res!433325 () Bool)

(assert (=> b!665707 (=> res!433325 e!381389)))

(assert (=> b!665707 (= res!433325 (not (contains!3326 lt!310143 k!2843)))))

(declare-fun b!665708 () Bool)

(assert (=> b!665708 (= e!381394 (not e!381389))))

(declare-fun res!433316 () Bool)

(assert (=> b!665708 (=> res!433316 e!381389)))

(assert (=> b!665708 (= res!433316 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!62 (List!12783 (_ BitVec 64)) List!12783)

(assert (=> b!665708 (= (-!62 lt!310143 k!2843) acc!681)))

(assert (=> b!665708 (= lt!310143 ($colon$colon!195 acc!681 k!2843))))

(declare-fun lt!310149 () Unit!23240)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12783) Unit!23240)

(assert (=> b!665708 (= lt!310149 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!665708 (subseq!64 acc!681 acc!681)))

(declare-fun lt!310146 () Unit!23240)

(assert (=> b!665708 (= lt!310146 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665708 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310145 () Unit!23240)

(assert (=> b!665708 (= lt!310145 e!381387)))

(declare-fun c!76553 () Bool)

(assert (=> b!665708 (= c!76553 (validKeyInArray!0 (select (arr!18689 a!3626) from!3004)))))

(declare-fun lt!310150 () Unit!23240)

(assert (=> b!665708 (= lt!310150 e!381392)))

(declare-fun c!76552 () Bool)

(assert (=> b!665708 (= c!76552 lt!310148)))

(assert (=> b!665708 (= lt!310148 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665708 (arrayContainsKey!0 (array!39002 (store (arr!18689 a!3626) i!1382 k!2843) (size!19053 a!3626)) k!2843 from!3004)))

(assert (= (and start!59998 res!433331) b!665699))

(assert (= (and b!665699 res!433319) b!665698))

(assert (= (and b!665698 res!433332) b!665685))

(assert (= (and b!665685 res!433314) b!665697))

(assert (= (and b!665697 res!433326) b!665693))

(assert (= (and b!665697 (not res!433323)) b!665692))

(assert (= (and b!665692 res!433317) b!665704))

(assert (= (and b!665697 res!433327) b!665700))

(assert (= (and b!665700 res!433322) b!665703))

(assert (= (and b!665703 res!433334) b!665684))

(assert (= (and b!665684 res!433315) b!665706))

(assert (= (and b!665706 res!433328) b!665691))

(assert (= (and b!665691 res!433330) b!665690))

(assert (= (and b!665690 res!433329) b!665708))

(assert (= (and b!665708 c!76552) b!665687))

(assert (= (and b!665708 (not c!76552)) b!665694))

(assert (= (and b!665708 c!76553) b!665686))

(assert (= (and b!665708 (not c!76553)) b!665696))

(assert (= (and b!665708 (not res!433316)) b!665705))

(assert (= (and b!665705 (not res!433320)) b!665702))

(assert (= (and b!665702 (not res!433318)) b!665688))

(assert (= (and b!665688 (not res!433321)) b!665701))

(assert (= (and b!665701 (not res!433333)) b!665707))

(assert (= (and b!665707 (not res!433325)) b!665695))

(assert (= (and b!665695 (not res!433324)) b!665689))

(declare-fun m!636691 () Bool)

(assert (=> b!665703 m!636691))

(declare-fun m!636693 () Bool)

(assert (=> b!665695 m!636693))

(declare-fun m!636695 () Bool)

(assert (=> b!665699 m!636695))

(declare-fun m!636697 () Bool)

(assert (=> b!665686 m!636697))

(declare-fun m!636699 () Bool)

(assert (=> b!665686 m!636699))

(declare-fun m!636701 () Bool)

(assert (=> b!665686 m!636701))

(declare-fun m!636703 () Bool)

(assert (=> b!665686 m!636703))

(assert (=> b!665686 m!636699))

(assert (=> b!665686 m!636701))

(declare-fun m!636705 () Bool)

(assert (=> b!665686 m!636705))

(declare-fun m!636707 () Bool)

(assert (=> b!665686 m!636707))

(declare-fun m!636709 () Bool)

(assert (=> b!665691 m!636709))

(declare-fun m!636711 () Bool)

(assert (=> b!665689 m!636711))

(declare-fun m!636713 () Bool)

(assert (=> b!665687 m!636713))

(declare-fun m!636715 () Bool)

(assert (=> start!59998 m!636715))

(declare-fun m!636717 () Bool)

(assert (=> b!665698 m!636717))

(declare-fun m!636719 () Bool)

(assert (=> b!665705 m!636719))

(declare-fun m!636721 () Bool)

(assert (=> b!665685 m!636721))

(declare-fun m!636723 () Bool)

(assert (=> b!665708 m!636723))

(assert (=> b!665708 m!636697))

(assert (=> b!665708 m!636699))

(declare-fun m!636725 () Bool)

(assert (=> b!665708 m!636725))

(declare-fun m!636727 () Bool)

(assert (=> b!665708 m!636727))

(assert (=> b!665708 m!636705))

(declare-fun m!636729 () Bool)

(assert (=> b!665708 m!636729))

(declare-fun m!636731 () Bool)

(assert (=> b!665708 m!636731))

(assert (=> b!665708 m!636699))

(declare-fun m!636733 () Bool)

(assert (=> b!665708 m!636733))

(declare-fun m!636735 () Bool)

(assert (=> b!665708 m!636735))

(assert (=> b!665708 m!636707))

(declare-fun m!636737 () Bool)

(assert (=> b!665707 m!636737))

(declare-fun m!636739 () Bool)

(assert (=> b!665700 m!636739))

(declare-fun m!636741 () Bool)

(assert (=> b!665706 m!636741))

(declare-fun m!636743 () Bool)

(assert (=> b!665693 m!636743))

(assert (=> b!665704 m!636743))

(declare-fun m!636745 () Bool)

(assert (=> b!665701 m!636745))

(assert (=> b!665688 m!636743))

(push 1)

(assert (not b!665686))

(assert (not b!665701))

(assert (not b!665699))

(assert (not b!665706))

(assert (not start!59998))

(assert (not b!665693))

(assert (not b!665704))

(assert (not b!665688))

(assert (not b!665705))

(assert (not b!665708))

(assert (not b!665687))

(assert (not b!665698))

(assert (not b!665695))

(assert (not b!665700))

(assert (not b!665689))

(assert (not b!665707))

(assert (not b!665703))

(assert (not b!665685))

(assert (not b!665691))

(check-sat)

