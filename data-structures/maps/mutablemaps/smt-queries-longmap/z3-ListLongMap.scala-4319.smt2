; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59960 () Bool)

(assert start!59960)

(declare-fun b!664259 () Bool)

(declare-fun res!432121 () Bool)

(declare-fun e!380935 () Bool)

(assert (=> b!664259 (=> (not res!432121) (not e!380935))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38963 0))(
  ( (array!38964 (arr!18670 (Array (_ BitVec 32) (_ BitVec 64))) (size!19034 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38963)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!664259 (= res!432121 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19034 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664260 () Bool)

(declare-fun res!432129 () Bool)

(assert (=> b!664260 (=> (not res!432129) (not e!380935))))

(declare-datatypes ((List!12764 0))(
  ( (Nil!12761) (Cons!12760 (h!13805 (_ BitVec 64)) (t!19000 List!12764)) )
))
(declare-fun acc!681 () List!12764)

(declare-fun arrayNoDuplicates!0 (array!38963 (_ BitVec 32) List!12764) Bool)

(assert (=> b!664260 (= res!432129 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664261 () Bool)

(declare-fun res!432132 () Bool)

(declare-fun e!380931 () Bool)

(assert (=> b!664261 (=> res!432132 e!380931)))

(declare-fun lt!309576 () List!12764)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3307 (List!12764 (_ BitVec 64)) Bool)

(assert (=> b!664261 (= res!432132 (not (contains!3307 lt!309576 k0!2843)))))

(declare-fun b!664262 () Bool)

(declare-fun res!432133 () Bool)

(assert (=> b!664262 (=> (not res!432133) (not e!380935))))

(assert (=> b!664262 (= res!432133 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19034 a!3626))))))

(declare-fun b!664263 () Bool)

(declare-fun res!432127 () Bool)

(assert (=> b!664263 (=> (not res!432127) (not e!380935))))

(assert (=> b!664263 (= res!432127 (not (contains!3307 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664264 () Bool)

(declare-datatypes ((Unit!23145 0))(
  ( (Unit!23146) )
))
(declare-fun e!380932 () Unit!23145)

(declare-fun Unit!23147 () Unit!23145)

(assert (=> b!664264 (= e!380932 Unit!23147)))

(declare-fun lt!309577 () Unit!23145)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38963 (_ BitVec 64) (_ BitVec 32)) Unit!23145)

(assert (=> b!664264 (= lt!309577 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!664264 false))

(declare-fun b!664265 () Bool)

(assert (=> b!664265 (= e!380931 true)))

(declare-fun lt!309580 () Bool)

(assert (=> b!664265 (= lt!309580 (contains!3307 lt!309576 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664266 () Bool)

(declare-fun e!380937 () Unit!23145)

(declare-fun lt!309573 () Unit!23145)

(assert (=> b!664266 (= e!380937 lt!309573)))

(declare-fun lt!309579 () Unit!23145)

(declare-fun lemmaListSubSeqRefl!0 (List!12764) Unit!23145)

(assert (=> b!664266 (= lt!309579 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!45 (List!12764 List!12764) Bool)

(assert (=> b!664266 (subseq!45 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38963 List!12764 List!12764 (_ BitVec 32)) Unit!23145)

(declare-fun $colon$colon!176 (List!12764 (_ BitVec 64)) List!12764)

(assert (=> b!664266 (= lt!309573 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!176 acc!681 (select (arr!18670 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664266 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664267 () Bool)

(declare-fun e!380933 () Bool)

(assert (=> b!664267 (= e!380933 (not (contains!3307 acc!681 k0!2843)))))

(declare-fun b!664268 () Bool)

(declare-fun Unit!23148 () Unit!23145)

(assert (=> b!664268 (= e!380937 Unit!23148)))

(declare-fun b!664269 () Bool)

(assert (=> b!664269 (= e!380935 (not e!380931))))

(declare-fun res!432117 () Bool)

(assert (=> b!664269 (=> res!432117 e!380931)))

(assert (=> b!664269 (= res!432117 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!43 (List!12764 (_ BitVec 64)) List!12764)

(assert (=> b!664269 (= (-!43 lt!309576 k0!2843) acc!681)))

(assert (=> b!664269 (= lt!309576 ($colon$colon!176 acc!681 k0!2843))))

(declare-fun lt!309575 () Unit!23145)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12764) Unit!23145)

(assert (=> b!664269 (= lt!309575 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!664269 (subseq!45 acc!681 acc!681)))

(declare-fun lt!309582 () Unit!23145)

(assert (=> b!664269 (= lt!309582 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664269 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309578 () Unit!23145)

(assert (=> b!664269 (= lt!309578 e!380937)))

(declare-fun c!76439 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664269 (= c!76439 (validKeyInArray!0 (select (arr!18670 a!3626) from!3004)))))

(declare-fun lt!309574 () Unit!23145)

(assert (=> b!664269 (= lt!309574 e!380932)))

(declare-fun c!76438 () Bool)

(declare-fun lt!309581 () Bool)

(assert (=> b!664269 (= c!76438 lt!309581)))

(declare-fun arrayContainsKey!0 (array!38963 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664269 (= lt!309581 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664269 (arrayContainsKey!0 (array!38964 (store (arr!18670 a!3626) i!1382 k0!2843) (size!19034 a!3626)) k0!2843 from!3004)))

(declare-fun res!432131 () Bool)

(assert (=> start!59960 (=> (not res!432131) (not e!380935))))

(assert (=> start!59960 (= res!432131 (and (bvslt (size!19034 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19034 a!3626))))))

(assert (=> start!59960 e!380935))

(assert (=> start!59960 true))

(declare-fun array_inv!14444 (array!38963) Bool)

(assert (=> start!59960 (array_inv!14444 a!3626)))

(declare-fun b!664270 () Bool)

(declare-fun res!432128 () Bool)

(assert (=> b!664270 (=> res!432128 e!380931)))

(assert (=> b!664270 (= res!432128 (contains!3307 acc!681 k0!2843))))

(declare-fun b!664271 () Bool)

(declare-fun res!432135 () Bool)

(assert (=> b!664271 (=> (not res!432135) (not e!380935))))

(declare-fun e!380936 () Bool)

(assert (=> b!664271 (= res!432135 e!380936)))

(declare-fun res!432123 () Bool)

(assert (=> b!664271 (=> res!432123 e!380936)))

(declare-fun e!380938 () Bool)

(assert (=> b!664271 (= res!432123 e!380938)))

(declare-fun res!432118 () Bool)

(assert (=> b!664271 (=> (not res!432118) (not e!380938))))

(assert (=> b!664271 (= res!432118 (bvsgt from!3004 i!1382))))

(declare-fun b!664272 () Bool)

(declare-fun res!432136 () Bool)

(assert (=> b!664272 (=> res!432136 e!380931)))

(assert (=> b!664272 (= res!432136 lt!309581)))

(declare-fun b!664273 () Bool)

(declare-fun res!432134 () Bool)

(assert (=> b!664273 (=> res!432134 e!380931)))

(assert (=> b!664273 (= res!432134 (not (subseq!45 acc!681 lt!309576)))))

(declare-fun b!664274 () Bool)

(assert (=> b!664274 (= e!380938 (contains!3307 acc!681 k0!2843))))

(declare-fun b!664275 () Bool)

(declare-fun res!432119 () Bool)

(assert (=> b!664275 (=> (not res!432119) (not e!380935))))

(assert (=> b!664275 (= res!432119 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12761))))

(declare-fun b!664276 () Bool)

(declare-fun res!432124 () Bool)

(assert (=> b!664276 (=> (not res!432124) (not e!380935))))

(assert (=> b!664276 (= res!432124 (not (contains!3307 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664277 () Bool)

(declare-fun res!432130 () Bool)

(assert (=> b!664277 (=> res!432130 e!380931)))

(assert (=> b!664277 (= res!432130 (contains!3307 lt!309576 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664278 () Bool)

(declare-fun res!432126 () Bool)

(assert (=> b!664278 (=> (not res!432126) (not e!380935))))

(assert (=> b!664278 (= res!432126 (validKeyInArray!0 k0!2843))))

(declare-fun b!664279 () Bool)

(assert (=> b!664279 (= e!380936 e!380933)))

(declare-fun res!432137 () Bool)

(assert (=> b!664279 (=> (not res!432137) (not e!380933))))

(assert (=> b!664279 (= res!432137 (bvsle from!3004 i!1382))))

(declare-fun b!664280 () Bool)

(declare-fun res!432122 () Bool)

(assert (=> b!664280 (=> (not res!432122) (not e!380935))))

(declare-fun noDuplicate!554 (List!12764) Bool)

(assert (=> b!664280 (= res!432122 (noDuplicate!554 acc!681))))

(declare-fun b!664281 () Bool)

(declare-fun Unit!23149 () Unit!23145)

(assert (=> b!664281 (= e!380932 Unit!23149)))

(declare-fun b!664282 () Bool)

(declare-fun res!432125 () Bool)

(assert (=> b!664282 (=> res!432125 e!380931)))

(assert (=> b!664282 (= res!432125 (not (noDuplicate!554 lt!309576)))))

(declare-fun b!664283 () Bool)

(declare-fun res!432120 () Bool)

(assert (=> b!664283 (=> (not res!432120) (not e!380935))))

(assert (=> b!664283 (= res!432120 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!59960 res!432131) b!664280))

(assert (= (and b!664280 res!432122) b!664276))

(assert (= (and b!664276 res!432124) b!664263))

(assert (= (and b!664263 res!432127) b!664271))

(assert (= (and b!664271 res!432118) b!664274))

(assert (= (and b!664271 (not res!432123)) b!664279))

(assert (= (and b!664279 res!432137) b!664267))

(assert (= (and b!664271 res!432135) b!664275))

(assert (= (and b!664275 res!432119) b!664260))

(assert (= (and b!664260 res!432129) b!664262))

(assert (= (and b!664262 res!432133) b!664278))

(assert (= (and b!664278 res!432126) b!664283))

(assert (= (and b!664283 res!432120) b!664259))

(assert (= (and b!664259 res!432121) b!664269))

(assert (= (and b!664269 c!76438) b!664264))

(assert (= (and b!664269 (not c!76438)) b!664281))

(assert (= (and b!664269 c!76439) b!664266))

(assert (= (and b!664269 (not c!76439)) b!664268))

(assert (= (and b!664269 (not res!432117)) b!664282))

(assert (= (and b!664282 (not res!432125)) b!664272))

(assert (= (and b!664272 (not res!432136)) b!664270))

(assert (= (and b!664270 (not res!432128)) b!664273))

(assert (= (and b!664273 (not res!432134)) b!664261))

(assert (= (and b!664261 (not res!432132)) b!664277))

(assert (= (and b!664277 (not res!432130)) b!664265))

(declare-fun m!635627 () Bool)

(assert (=> b!664265 m!635627))

(declare-fun m!635629 () Bool)

(assert (=> b!664276 m!635629))

(declare-fun m!635631 () Bool)

(assert (=> b!664274 m!635631))

(assert (=> b!664267 m!635631))

(declare-fun m!635633 () Bool)

(assert (=> b!664278 m!635633))

(declare-fun m!635635 () Bool)

(assert (=> b!664283 m!635635))

(declare-fun m!635637 () Bool)

(assert (=> b!664260 m!635637))

(declare-fun m!635639 () Bool)

(assert (=> b!664280 m!635639))

(declare-fun m!635641 () Bool)

(assert (=> b!664266 m!635641))

(declare-fun m!635643 () Bool)

(assert (=> b!664266 m!635643))

(declare-fun m!635645 () Bool)

(assert (=> b!664266 m!635645))

(declare-fun m!635647 () Bool)

(assert (=> b!664266 m!635647))

(assert (=> b!664266 m!635643))

(assert (=> b!664266 m!635645))

(declare-fun m!635649 () Bool)

(assert (=> b!664266 m!635649))

(declare-fun m!635651 () Bool)

(assert (=> b!664266 m!635651))

(declare-fun m!635653 () Bool)

(assert (=> b!664273 m!635653))

(declare-fun m!635655 () Bool)

(assert (=> b!664277 m!635655))

(declare-fun m!635657 () Bool)

(assert (=> start!59960 m!635657))

(declare-fun m!635659 () Bool)

(assert (=> b!664263 m!635659))

(declare-fun m!635661 () Bool)

(assert (=> b!664282 m!635661))

(declare-fun m!635663 () Bool)

(assert (=> b!664264 m!635663))

(assert (=> b!664270 m!635631))

(declare-fun m!635665 () Bool)

(assert (=> b!664269 m!635665))

(assert (=> b!664269 m!635641))

(assert (=> b!664269 m!635643))

(declare-fun m!635667 () Bool)

(assert (=> b!664269 m!635667))

(declare-fun m!635669 () Bool)

(assert (=> b!664269 m!635669))

(assert (=> b!664269 m!635649))

(declare-fun m!635671 () Bool)

(assert (=> b!664269 m!635671))

(declare-fun m!635673 () Bool)

(assert (=> b!664269 m!635673))

(assert (=> b!664269 m!635643))

(declare-fun m!635675 () Bool)

(assert (=> b!664269 m!635675))

(declare-fun m!635677 () Bool)

(assert (=> b!664269 m!635677))

(assert (=> b!664269 m!635651))

(declare-fun m!635679 () Bool)

(assert (=> b!664261 m!635679))

(declare-fun m!635681 () Bool)

(assert (=> b!664275 m!635681))

(check-sat (not b!664282) (not b!664265) (not b!664263) (not b!664261) (not b!664260) (not b!664277) (not b!664269) (not b!664267) (not start!59960) (not b!664276) (not b!664266) (not b!664264) (not b!664278) (not b!664275) (not b!664280) (not b!664283) (not b!664270) (not b!664274) (not b!664273))
(check-sat)
