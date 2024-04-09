; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61188 () Bool)

(assert start!61188)

(declare-fun b!685252 () Bool)

(declare-fun e!390288 () Bool)

(declare-datatypes ((List!13069 0))(
  ( (Nil!13066) (Cons!13065 (h!14110 (_ BitVec 64)) (t!19329 List!13069)) )
))
(declare-fun acc!681 () List!13069)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3612 (List!13069 (_ BitVec 64)) Bool)

(assert (=> b!685252 (= e!390288 (contains!3612 acc!681 k!2843))))

(declare-fun b!685253 () Bool)

(declare-fun res!450769 () Bool)

(declare-fun e!390292 () Bool)

(assert (=> b!685253 (=> (not res!450769) (not e!390292))))

(declare-fun e!390294 () Bool)

(assert (=> b!685253 (= res!450769 e!390294)))

(declare-fun res!450764 () Bool)

(assert (=> b!685253 (=> res!450764 e!390294)))

(assert (=> b!685253 (= res!450764 e!390288)))

(declare-fun res!450775 () Bool)

(assert (=> b!685253 (=> (not res!450775) (not e!390288))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!685253 (= res!450775 (bvsgt from!3004 i!1382))))

(declare-fun b!685254 () Bool)

(declare-fun res!450766 () Bool)

(declare-fun e!390293 () Bool)

(assert (=> b!685254 (=> res!450766 e!390293)))

(assert (=> b!685254 (= res!450766 (contains!3612 acc!681 k!2843))))

(declare-fun b!685255 () Bool)

(declare-fun res!450781 () Bool)

(assert (=> b!685255 (=> (not res!450781) (not e!390292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!685255 (= res!450781 (validKeyInArray!0 k!2843))))

(declare-fun b!685256 () Bool)

(declare-fun res!450767 () Bool)

(assert (=> b!685256 (=> (not res!450767) (not e!390292))))

(declare-fun noDuplicate!859 (List!13069) Bool)

(assert (=> b!685256 (= res!450767 (noDuplicate!859 acc!681))))

(declare-fun b!685257 () Bool)

(declare-fun res!450777 () Bool)

(assert (=> b!685257 (=> (not res!450777) (not e!390292))))

(assert (=> b!685257 (= res!450777 (not (contains!3612 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685258 () Bool)

(declare-datatypes ((Unit!24112 0))(
  ( (Unit!24113) )
))
(declare-fun e!390290 () Unit!24112)

(declare-fun Unit!24114 () Unit!24112)

(assert (=> b!685258 (= e!390290 Unit!24114)))

(declare-fun b!685259 () Bool)

(declare-fun res!450765 () Bool)

(assert (=> b!685259 (=> res!450765 e!390293)))

(declare-fun lt!314609 () List!13069)

(declare-fun subseq!197 (List!13069 List!13069) Bool)

(assert (=> b!685259 (= res!450765 (not (subseq!197 acc!681 lt!314609)))))

(declare-fun b!685260 () Bool)

(declare-fun e!390291 () Bool)

(assert (=> b!685260 (= e!390291 (not (contains!3612 acc!681 k!2843)))))

(declare-fun b!685261 () Bool)

(declare-fun e!390295 () Unit!24112)

(declare-fun Unit!24115 () Unit!24112)

(assert (=> b!685261 (= e!390295 Unit!24115)))

(declare-fun lt!314604 () Unit!24112)

(declare-datatypes ((array!39603 0))(
  ( (array!39604 (arr!18975 (Array (_ BitVec 32) (_ BitVec 64))) (size!19347 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39603)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39603 (_ BitVec 64) (_ BitVec 32)) Unit!24112)

(assert (=> b!685261 (= lt!314604 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!685261 false))

(declare-fun b!685262 () Bool)

(assert (=> b!685262 (= e!390293 true)))

(declare-fun lt!314610 () Bool)

(assert (=> b!685262 (= lt!314610 (contains!3612 lt!314609 k!2843))))

(declare-fun b!685264 () Bool)

(declare-fun res!450773 () Bool)

(assert (=> b!685264 (=> res!450773 e!390293)))

(declare-fun lt!314606 () Bool)

(assert (=> b!685264 (= res!450773 lt!314606)))

(declare-fun b!685265 () Bool)

(declare-fun res!450772 () Bool)

(assert (=> b!685265 (=> (not res!450772) (not e!390292))))

(declare-fun arrayNoDuplicates!0 (array!39603 (_ BitVec 32) List!13069) Bool)

(assert (=> b!685265 (= res!450772 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13066))))

(declare-fun b!685266 () Bool)

(declare-fun res!450771 () Bool)

(assert (=> b!685266 (=> (not res!450771) (not e!390292))))

(assert (=> b!685266 (= res!450771 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19347 a!3626))))))

(declare-fun b!685267 () Bool)

(assert (=> b!685267 (= e!390294 e!390291)))

(declare-fun res!450780 () Bool)

(assert (=> b!685267 (=> (not res!450780) (not e!390291))))

(assert (=> b!685267 (= res!450780 (bvsle from!3004 i!1382))))

(declare-fun b!685268 () Bool)

(declare-fun res!450782 () Bool)

(assert (=> b!685268 (=> (not res!450782) (not e!390292))))

(assert (=> b!685268 (= res!450782 (not (contains!3612 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685269 () Bool)

(declare-fun res!450779 () Bool)

(assert (=> b!685269 (=> (not res!450779) (not e!390292))))

(assert (=> b!685269 (= res!450779 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19347 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!685270 () Bool)

(declare-fun res!450770 () Bool)

(assert (=> b!685270 (=> (not res!450770) (not e!390292))))

(declare-fun arrayContainsKey!0 (array!39603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!685270 (= res!450770 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!685271 () Bool)

(assert (=> b!685271 (= e!390292 (not e!390293))))

(declare-fun res!450774 () Bool)

(assert (=> b!685271 (=> res!450774 e!390293)))

(assert (=> b!685271 (= res!450774 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!162 (List!13069 (_ BitVec 64)) List!13069)

(assert (=> b!685271 (= (-!162 lt!314609 k!2843) acc!681)))

(declare-fun $colon$colon!361 (List!13069 (_ BitVec 64)) List!13069)

(assert (=> b!685271 (= lt!314609 ($colon$colon!361 acc!681 k!2843))))

(declare-fun lt!314602 () Unit!24112)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13069) Unit!24112)

(assert (=> b!685271 (= lt!314602 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!685271 (subseq!197 acc!681 acc!681)))

(declare-fun lt!314605 () Unit!24112)

(declare-fun lemmaListSubSeqRefl!0 (List!13069) Unit!24112)

(assert (=> b!685271 (= lt!314605 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685271 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314608 () Unit!24112)

(assert (=> b!685271 (= lt!314608 e!390290)))

(declare-fun c!77611 () Bool)

(assert (=> b!685271 (= c!77611 (validKeyInArray!0 (select (arr!18975 a!3626) from!3004)))))

(declare-fun lt!314607 () Unit!24112)

(assert (=> b!685271 (= lt!314607 e!390295)))

(declare-fun c!77612 () Bool)

(assert (=> b!685271 (= c!77612 lt!314606)))

(assert (=> b!685271 (= lt!314606 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685271 (arrayContainsKey!0 (array!39604 (store (arr!18975 a!3626) i!1382 k!2843) (size!19347 a!3626)) k!2843 from!3004)))

(declare-fun b!685272 () Bool)

(declare-fun Unit!24116 () Unit!24112)

(assert (=> b!685272 (= e!390295 Unit!24116)))

(declare-fun b!685263 () Bool)

(declare-fun res!450776 () Bool)

(assert (=> b!685263 (=> (not res!450776) (not e!390292))))

(assert (=> b!685263 (= res!450776 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!450768 () Bool)

(assert (=> start!61188 (=> (not res!450768) (not e!390292))))

(assert (=> start!61188 (= res!450768 (and (bvslt (size!19347 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19347 a!3626))))))

(assert (=> start!61188 e!390292))

(assert (=> start!61188 true))

(declare-fun array_inv!14749 (array!39603) Bool)

(assert (=> start!61188 (array_inv!14749 a!3626)))

(declare-fun b!685273 () Bool)

(declare-fun res!450778 () Bool)

(assert (=> b!685273 (=> res!450778 e!390293)))

(assert (=> b!685273 (= res!450778 (not (noDuplicate!859 lt!314609)))))

(declare-fun b!685274 () Bool)

(declare-fun lt!314603 () Unit!24112)

(assert (=> b!685274 (= e!390290 lt!314603)))

(declare-fun lt!314601 () Unit!24112)

(assert (=> b!685274 (= lt!314601 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685274 (subseq!197 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39603 List!13069 List!13069 (_ BitVec 32)) Unit!24112)

(assert (=> b!685274 (= lt!314603 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!361 acc!681 (select (arr!18975 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685274 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!61188 res!450768) b!685256))

(assert (= (and b!685256 res!450767) b!685257))

(assert (= (and b!685257 res!450777) b!685268))

(assert (= (and b!685268 res!450782) b!685253))

(assert (= (and b!685253 res!450775) b!685252))

(assert (= (and b!685253 (not res!450764)) b!685267))

(assert (= (and b!685267 res!450780) b!685260))

(assert (= (and b!685253 res!450769) b!685265))

(assert (= (and b!685265 res!450772) b!685263))

(assert (= (and b!685263 res!450776) b!685266))

(assert (= (and b!685266 res!450771) b!685255))

(assert (= (and b!685255 res!450781) b!685270))

(assert (= (and b!685270 res!450770) b!685269))

(assert (= (and b!685269 res!450779) b!685271))

(assert (= (and b!685271 c!77612) b!685261))

(assert (= (and b!685271 (not c!77612)) b!685272))

(assert (= (and b!685271 c!77611) b!685274))

(assert (= (and b!685271 (not c!77611)) b!685258))

(assert (= (and b!685271 (not res!450774)) b!685273))

(assert (= (and b!685273 (not res!450778)) b!685264))

(assert (= (and b!685264 (not res!450773)) b!685254))

(assert (= (and b!685254 (not res!450766)) b!685259))

(assert (= (and b!685259 (not res!450765)) b!685262))

(declare-fun m!649533 () Bool)

(assert (=> b!685260 m!649533))

(assert (=> b!685254 m!649533))

(declare-fun m!649535 () Bool)

(assert (=> b!685265 m!649535))

(declare-fun m!649537 () Bool)

(assert (=> b!685273 m!649537))

(declare-fun m!649539 () Bool)

(assert (=> b!685261 m!649539))

(declare-fun m!649541 () Bool)

(assert (=> b!685274 m!649541))

(declare-fun m!649543 () Bool)

(assert (=> b!685274 m!649543))

(declare-fun m!649545 () Bool)

(assert (=> b!685274 m!649545))

(declare-fun m!649547 () Bool)

(assert (=> b!685274 m!649547))

(assert (=> b!685274 m!649543))

(assert (=> b!685274 m!649545))

(declare-fun m!649549 () Bool)

(assert (=> b!685274 m!649549))

(declare-fun m!649551 () Bool)

(assert (=> b!685274 m!649551))

(declare-fun m!649553 () Bool)

(assert (=> b!685262 m!649553))

(assert (=> b!685271 m!649541))

(assert (=> b!685271 m!649543))

(declare-fun m!649555 () Bool)

(assert (=> b!685271 m!649555))

(declare-fun m!649557 () Bool)

(assert (=> b!685271 m!649557))

(declare-fun m!649559 () Bool)

(assert (=> b!685271 m!649559))

(assert (=> b!685271 m!649549))

(declare-fun m!649561 () Bool)

(assert (=> b!685271 m!649561))

(declare-fun m!649563 () Bool)

(assert (=> b!685271 m!649563))

(assert (=> b!685271 m!649543))

(declare-fun m!649565 () Bool)

(assert (=> b!685271 m!649565))

(declare-fun m!649567 () Bool)

(assert (=> b!685271 m!649567))

(assert (=> b!685271 m!649551))

(declare-fun m!649569 () Bool)

(assert (=> b!685263 m!649569))

(declare-fun m!649571 () Bool)

(assert (=> b!685268 m!649571))

(declare-fun m!649573 () Bool)

(assert (=> start!61188 m!649573))

(declare-fun m!649575 () Bool)

(assert (=> b!685257 m!649575))

(declare-fun m!649577 () Bool)

(assert (=> b!685270 m!649577))

(declare-fun m!649579 () Bool)

(assert (=> b!685259 m!649579))

(assert (=> b!685252 m!649533))

(declare-fun m!649581 () Bool)

(assert (=> b!685255 m!649581))

(declare-fun m!649583 () Bool)

(assert (=> b!685256 m!649583))

(push 1)

(assert (not b!685260))

(assert (not b!685271))

(assert (not b!685262))

(assert (not start!61188))

(assert (not b!685273))

(assert (not b!685263))

(assert (not b!685270))

(assert (not b!685257))

(assert (not b!685254))

(assert (not b!685261))

(assert (not b!685274))

(assert (not b!685252))

(assert (not b!685265))

(assert (not b!685256))

(assert (not b!685268))

(assert (not b!685259))

(assert (not b!685255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

