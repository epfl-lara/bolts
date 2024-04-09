; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61190 () Bool)

(assert start!61190)

(declare-fun b!685321 () Bool)

(declare-fun res!450831 () Bool)

(declare-fun e!390315 () Bool)

(assert (=> b!685321 (=> res!450831 e!390315)))

(declare-datatypes ((List!13070 0))(
  ( (Nil!13067) (Cons!13066 (h!14111 (_ BitVec 64)) (t!19330 List!13070)) )
))
(declare-fun acc!681 () List!13070)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3613 (List!13070 (_ BitVec 64)) Bool)

(assert (=> b!685321 (= res!450831 (contains!3613 acc!681 k0!2843))))

(declare-fun b!685322 () Bool)

(declare-datatypes ((Unit!24117 0))(
  ( (Unit!24118) )
))
(declare-fun e!390313 () Unit!24117)

(declare-fun lt!314639 () Unit!24117)

(assert (=> b!685322 (= e!390313 lt!314639)))

(declare-fun lt!314636 () Unit!24117)

(declare-fun lemmaListSubSeqRefl!0 (List!13070) Unit!24117)

(assert (=> b!685322 (= lt!314636 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!198 (List!13070 List!13070) Bool)

(assert (=> b!685322 (subseq!198 acc!681 acc!681)))

(declare-datatypes ((array!39605 0))(
  ( (array!39606 (arr!18976 (Array (_ BitVec 32) (_ BitVec 64))) (size!19348 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39605)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39605 List!13070 List!13070 (_ BitVec 32)) Unit!24117)

(declare-fun $colon$colon!362 (List!13070 (_ BitVec 64)) List!13070)

(assert (=> b!685322 (= lt!314639 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!362 acc!681 (select (arr!18976 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39605 (_ BitVec 32) List!13070) Bool)

(assert (=> b!685322 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!685323 () Bool)

(declare-fun res!450830 () Bool)

(declare-fun e!390316 () Bool)

(assert (=> b!685323 (=> (not res!450830) (not e!390316))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!685323 (= res!450830 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19348 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!685324 () Bool)

(declare-fun e!390317 () Unit!24117)

(declare-fun Unit!24119 () Unit!24117)

(assert (=> b!685324 (= e!390317 Unit!24119)))

(declare-fun lt!314632 () Unit!24117)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39605 (_ BitVec 64) (_ BitVec 32)) Unit!24117)

(assert (=> b!685324 (= lt!314632 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!685324 false))

(declare-fun b!685325 () Bool)

(declare-fun res!450839 () Bool)

(assert (=> b!685325 (=> (not res!450839) (not e!390316))))

(declare-fun arrayContainsKey!0 (array!39605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!685325 (= res!450839 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!685326 () Bool)

(declare-fun e!390319 () Bool)

(assert (=> b!685326 (= e!390319 (contains!3613 acc!681 k0!2843))))

(declare-fun b!685327 () Bool)

(declare-fun res!450834 () Bool)

(assert (=> b!685327 (=> (not res!450834) (not e!390316))))

(declare-fun noDuplicate!860 (List!13070) Bool)

(assert (=> b!685327 (= res!450834 (noDuplicate!860 acc!681))))

(declare-fun b!685328 () Bool)

(assert (=> b!685328 (= e!390316 (not e!390315))))

(declare-fun res!450835 () Bool)

(assert (=> b!685328 (=> res!450835 e!390315)))

(assert (=> b!685328 (= res!450835 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!314637 () List!13070)

(declare-fun -!163 (List!13070 (_ BitVec 64)) List!13070)

(assert (=> b!685328 (= (-!163 lt!314637 k0!2843) acc!681)))

(assert (=> b!685328 (= lt!314637 ($colon$colon!362 acc!681 k0!2843))))

(declare-fun lt!314633 () Unit!24117)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13070) Unit!24117)

(assert (=> b!685328 (= lt!314633 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!685328 (subseq!198 acc!681 acc!681)))

(declare-fun lt!314634 () Unit!24117)

(assert (=> b!685328 (= lt!314634 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685328 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314635 () Unit!24117)

(assert (=> b!685328 (= lt!314635 e!390313)))

(declare-fun c!77617 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!685328 (= c!77617 (validKeyInArray!0 (select (arr!18976 a!3626) from!3004)))))

(declare-fun lt!314638 () Unit!24117)

(assert (=> b!685328 (= lt!314638 e!390317)))

(declare-fun c!77618 () Bool)

(declare-fun lt!314631 () Bool)

(assert (=> b!685328 (= c!77618 lt!314631)))

(assert (=> b!685328 (= lt!314631 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685328 (arrayContainsKey!0 (array!39606 (store (arr!18976 a!3626) i!1382 k0!2843) (size!19348 a!3626)) k0!2843 from!3004)))

(declare-fun b!685329 () Bool)

(declare-fun Unit!24120 () Unit!24117)

(assert (=> b!685329 (= e!390313 Unit!24120)))

(declare-fun res!450822 () Bool)

(assert (=> start!61190 (=> (not res!450822) (not e!390316))))

(assert (=> start!61190 (= res!450822 (and (bvslt (size!19348 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19348 a!3626))))))

(assert (=> start!61190 e!390316))

(assert (=> start!61190 true))

(declare-fun array_inv!14750 (array!39605) Bool)

(assert (=> start!61190 (array_inv!14750 a!3626)))

(declare-fun b!685330 () Bool)

(declare-fun res!450823 () Bool)

(assert (=> b!685330 (=> (not res!450823) (not e!390316))))

(assert (=> b!685330 (= res!450823 (not (contains!3613 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685331 () Bool)

(assert (=> b!685331 (= e!390315 true)))

(declare-fun lt!314640 () Bool)

(assert (=> b!685331 (= lt!314640 (contains!3613 lt!314637 k0!2843))))

(declare-fun b!685332 () Bool)

(declare-fun e!390318 () Bool)

(assert (=> b!685332 (= e!390318 (not (contains!3613 acc!681 k0!2843)))))

(declare-fun b!685333 () Bool)

(declare-fun res!450836 () Bool)

(assert (=> b!685333 (=> (not res!450836) (not e!390316))))

(assert (=> b!685333 (= res!450836 (validKeyInArray!0 k0!2843))))

(declare-fun b!685334 () Bool)

(declare-fun res!450832 () Bool)

(assert (=> b!685334 (=> res!450832 e!390315)))

(assert (=> b!685334 (= res!450832 (not (subseq!198 acc!681 lt!314637)))))

(declare-fun b!685335 () Bool)

(declare-fun res!450829 () Bool)

(assert (=> b!685335 (=> (not res!450829) (not e!390316))))

(assert (=> b!685335 (= res!450829 (not (contains!3613 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685336 () Bool)

(declare-fun e!390312 () Bool)

(assert (=> b!685336 (= e!390312 e!390318)))

(declare-fun res!450826 () Bool)

(assert (=> b!685336 (=> (not res!450826) (not e!390318))))

(assert (=> b!685336 (= res!450826 (bvsle from!3004 i!1382))))

(declare-fun b!685337 () Bool)

(declare-fun res!450821 () Bool)

(assert (=> b!685337 (=> res!450821 e!390315)))

(assert (=> b!685337 (= res!450821 (not (noDuplicate!860 lt!314637)))))

(declare-fun b!685338 () Bool)

(declare-fun Unit!24121 () Unit!24117)

(assert (=> b!685338 (= e!390317 Unit!24121)))

(declare-fun b!685339 () Bool)

(declare-fun res!450833 () Bool)

(assert (=> b!685339 (=> res!450833 e!390315)))

(assert (=> b!685339 (= res!450833 lt!314631)))

(declare-fun b!685340 () Bool)

(declare-fun res!450824 () Bool)

(assert (=> b!685340 (=> (not res!450824) (not e!390316))))

(assert (=> b!685340 (= res!450824 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19348 a!3626))))))

(declare-fun b!685341 () Bool)

(declare-fun res!450827 () Bool)

(assert (=> b!685341 (=> (not res!450827) (not e!390316))))

(assert (=> b!685341 (= res!450827 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!685342 () Bool)

(declare-fun res!450828 () Bool)

(assert (=> b!685342 (=> (not res!450828) (not e!390316))))

(assert (=> b!685342 (= res!450828 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13067))))

(declare-fun b!685343 () Bool)

(declare-fun res!450837 () Bool)

(assert (=> b!685343 (=> (not res!450837) (not e!390316))))

(assert (=> b!685343 (= res!450837 e!390312)))

(declare-fun res!450825 () Bool)

(assert (=> b!685343 (=> res!450825 e!390312)))

(assert (=> b!685343 (= res!450825 e!390319)))

(declare-fun res!450838 () Bool)

(assert (=> b!685343 (=> (not res!450838) (not e!390319))))

(assert (=> b!685343 (= res!450838 (bvsgt from!3004 i!1382))))

(assert (= (and start!61190 res!450822) b!685327))

(assert (= (and b!685327 res!450834) b!685330))

(assert (= (and b!685330 res!450823) b!685335))

(assert (= (and b!685335 res!450829) b!685343))

(assert (= (and b!685343 res!450838) b!685326))

(assert (= (and b!685343 (not res!450825)) b!685336))

(assert (= (and b!685336 res!450826) b!685332))

(assert (= (and b!685343 res!450837) b!685342))

(assert (= (and b!685342 res!450828) b!685341))

(assert (= (and b!685341 res!450827) b!685340))

(assert (= (and b!685340 res!450824) b!685333))

(assert (= (and b!685333 res!450836) b!685325))

(assert (= (and b!685325 res!450839) b!685323))

(assert (= (and b!685323 res!450830) b!685328))

(assert (= (and b!685328 c!77618) b!685324))

(assert (= (and b!685328 (not c!77618)) b!685338))

(assert (= (and b!685328 c!77617) b!685322))

(assert (= (and b!685328 (not c!77617)) b!685329))

(assert (= (and b!685328 (not res!450835)) b!685337))

(assert (= (and b!685337 (not res!450821)) b!685339))

(assert (= (and b!685339 (not res!450833)) b!685321))

(assert (= (and b!685321 (not res!450831)) b!685334))

(assert (= (and b!685334 (not res!450832)) b!685331))

(declare-fun m!649585 () Bool)

(assert (=> b!685322 m!649585))

(declare-fun m!649587 () Bool)

(assert (=> b!685322 m!649587))

(declare-fun m!649589 () Bool)

(assert (=> b!685322 m!649589))

(declare-fun m!649591 () Bool)

(assert (=> b!685322 m!649591))

(assert (=> b!685322 m!649587))

(assert (=> b!685322 m!649589))

(declare-fun m!649593 () Bool)

(assert (=> b!685322 m!649593))

(declare-fun m!649595 () Bool)

(assert (=> b!685322 m!649595))

(declare-fun m!649597 () Bool)

(assert (=> b!685342 m!649597))

(declare-fun m!649599 () Bool)

(assert (=> b!685332 m!649599))

(declare-fun m!649601 () Bool)

(assert (=> b!685337 m!649601))

(declare-fun m!649603 () Bool)

(assert (=> b!685330 m!649603))

(assert (=> b!685321 m!649599))

(declare-fun m!649605 () Bool)

(assert (=> start!61190 m!649605))

(declare-fun m!649607 () Bool)

(assert (=> b!685327 m!649607))

(declare-fun m!649609 () Bool)

(assert (=> b!685333 m!649609))

(declare-fun m!649611 () Bool)

(assert (=> b!685331 m!649611))

(assert (=> b!685328 m!649585))

(assert (=> b!685328 m!649587))

(declare-fun m!649613 () Bool)

(assert (=> b!685328 m!649613))

(declare-fun m!649615 () Bool)

(assert (=> b!685328 m!649615))

(assert (=> b!685328 m!649593))

(declare-fun m!649617 () Bool)

(assert (=> b!685328 m!649617))

(declare-fun m!649619 () Bool)

(assert (=> b!685328 m!649619))

(declare-fun m!649621 () Bool)

(assert (=> b!685328 m!649621))

(assert (=> b!685328 m!649587))

(declare-fun m!649623 () Bool)

(assert (=> b!685328 m!649623))

(declare-fun m!649625 () Bool)

(assert (=> b!685328 m!649625))

(assert (=> b!685328 m!649595))

(declare-fun m!649627 () Bool)

(assert (=> b!685324 m!649627))

(declare-fun m!649629 () Bool)

(assert (=> b!685341 m!649629))

(assert (=> b!685326 m!649599))

(declare-fun m!649631 () Bool)

(assert (=> b!685325 m!649631))

(declare-fun m!649633 () Bool)

(assert (=> b!685334 m!649633))

(declare-fun m!649635 () Bool)

(assert (=> b!685335 m!649635))

(check-sat (not b!685332) (not b!685330) (not b!685334) (not b!685324) (not b!685322) (not b!685326) (not b!685335) (not b!685321) (not b!685328) (not b!685341) (not b!685337) (not start!61190) (not b!685342) (not b!685325) (not b!685327) (not b!685331) (not b!685333))
(check-sat)
