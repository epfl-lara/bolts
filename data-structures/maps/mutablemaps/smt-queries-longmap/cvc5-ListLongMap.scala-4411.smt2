; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60894 () Bool)

(assert start!60894)

(declare-fun b!682674 () Bool)

(declare-fun res!448745 () Bool)

(declare-fun e!388925 () Bool)

(assert (=> b!682674 (=> (not res!448745) (not e!388925))))

(declare-datatypes ((List!13039 0))(
  ( (Nil!13036) (Cons!13035 (h!14080 (_ BitVec 64)) (t!19290 List!13039)) )
))
(declare-fun acc!681 () List!13039)

(declare-fun contains!3582 (List!13039 (_ BitVec 64)) Bool)

(assert (=> b!682674 (= res!448745 (not (contains!3582 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682675 () Bool)

(declare-fun res!448751 () Bool)

(assert (=> b!682675 (=> (not res!448751) (not e!388925))))

(declare-datatypes ((array!39534 0))(
  ( (array!39535 (arr!18945 (Array (_ BitVec 32) (_ BitVec 64))) (size!19309 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39534)

(declare-fun arrayNoDuplicates!0 (array!39534 (_ BitVec 32) List!13039) Bool)

(assert (=> b!682675 (= res!448751 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13036))))

(declare-fun res!448750 () Bool)

(assert (=> start!60894 (=> (not res!448750) (not e!388925))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!60894 (= res!448750 (and (bvslt (size!19309 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19309 a!3626))))))

(assert (=> start!60894 e!388925))

(assert (=> start!60894 true))

(declare-fun array_inv!14719 (array!39534) Bool)

(assert (=> start!60894 (array_inv!14719 a!3626)))

(declare-fun b!682676 () Bool)

(declare-fun res!448755 () Bool)

(assert (=> b!682676 (=> (not res!448755) (not e!388925))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682676 (= res!448755 (validKeyInArray!0 k!2843))))

(declare-fun b!682677 () Bool)

(declare-fun res!448746 () Bool)

(assert (=> b!682677 (=> (not res!448746) (not e!388925))))

(declare-fun e!388928 () Bool)

(assert (=> b!682677 (= res!448746 e!388928)))

(declare-fun res!448753 () Bool)

(assert (=> b!682677 (=> res!448753 e!388928)))

(declare-fun e!388930 () Bool)

(assert (=> b!682677 (= res!448753 e!388930)))

(declare-fun res!448757 () Bool)

(assert (=> b!682677 (=> (not res!448757) (not e!388930))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682677 (= res!448757 (bvsgt from!3004 i!1382))))

(declare-fun b!682678 () Bool)

(declare-datatypes ((Unit!23962 0))(
  ( (Unit!23963) )
))
(declare-fun e!388924 () Unit!23962)

(declare-fun Unit!23964 () Unit!23962)

(assert (=> b!682678 (= e!388924 Unit!23964)))

(declare-fun b!682679 () Bool)

(declare-fun res!448744 () Bool)

(assert (=> b!682679 (=> (not res!448744) (not e!388925))))

(assert (=> b!682679 (= res!448744 (not (contains!3582 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682680 () Bool)

(declare-fun e!388929 () Unit!23962)

(declare-fun Unit!23965 () Unit!23962)

(assert (=> b!682680 (= e!388929 Unit!23965)))

(declare-fun lt!313634 () Unit!23962)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39534 (_ BitVec 64) (_ BitVec 32)) Unit!23962)

(assert (=> b!682680 (= lt!313634 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682680 false))

(declare-fun b!682681 () Bool)

(declare-fun e!388926 () Bool)

(assert (=> b!682681 (= e!388928 e!388926)))

(declare-fun res!448754 () Bool)

(assert (=> b!682681 (=> (not res!448754) (not e!388926))))

(assert (=> b!682681 (= res!448754 (bvsle from!3004 i!1382))))

(declare-fun b!682682 () Bool)

(declare-fun Unit!23966 () Unit!23962)

(assert (=> b!682682 (= e!388929 Unit!23966)))

(declare-fun b!682683 () Bool)

(assert (=> b!682683 (= e!388926 (not (contains!3582 acc!681 k!2843)))))

(declare-fun b!682684 () Bool)

(declare-fun res!448752 () Bool)

(assert (=> b!682684 (=> (not res!448752) (not e!388925))))

(assert (=> b!682684 (= res!448752 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19309 a!3626))))))

(declare-fun b!682685 () Bool)

(declare-fun lt!313632 () Unit!23962)

(assert (=> b!682685 (= e!388924 lt!313632)))

(declare-fun lt!313630 () Unit!23962)

(declare-fun lemmaListSubSeqRefl!0 (List!13039) Unit!23962)

(assert (=> b!682685 (= lt!313630 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!167 (List!13039 List!13039) Bool)

(assert (=> b!682685 (subseq!167 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39534 List!13039 List!13039 (_ BitVec 32)) Unit!23962)

(declare-fun $colon$colon!331 (List!13039 (_ BitVec 64)) List!13039)

(assert (=> b!682685 (= lt!313632 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!331 acc!681 (select (arr!18945 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682685 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682686 () Bool)

(declare-fun res!448748 () Bool)

(assert (=> b!682686 (=> (not res!448748) (not e!388925))))

(declare-fun arrayContainsKey!0 (array!39534 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682686 (= res!448748 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682687 () Bool)

(declare-fun res!448749 () Bool)

(assert (=> b!682687 (=> (not res!448749) (not e!388925))))

(assert (=> b!682687 (= res!448749 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682688 () Bool)

(declare-fun res!448756 () Bool)

(assert (=> b!682688 (=> (not res!448756) (not e!388925))))

(declare-fun noDuplicate!829 (List!13039) Bool)

(assert (=> b!682688 (= res!448756 (noDuplicate!829 acc!681))))

(declare-fun b!682689 () Bool)

(assert (=> b!682689 (= e!388925 (not true))))

(declare-fun -!132 (List!13039 (_ BitVec 64)) List!13039)

(assert (=> b!682689 (= (-!132 ($colon$colon!331 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313631 () Unit!23962)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13039) Unit!23962)

(assert (=> b!682689 (= lt!313631 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!682689 (subseq!167 acc!681 acc!681)))

(declare-fun lt!313629 () Unit!23962)

(assert (=> b!682689 (= lt!313629 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682689 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313635 () Unit!23962)

(assert (=> b!682689 (= lt!313635 e!388924)))

(declare-fun c!77332 () Bool)

(assert (=> b!682689 (= c!77332 (validKeyInArray!0 (select (arr!18945 a!3626) from!3004)))))

(declare-fun lt!313633 () Unit!23962)

(assert (=> b!682689 (= lt!313633 e!388929)))

(declare-fun c!77333 () Bool)

(assert (=> b!682689 (= c!77333 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682689 (arrayContainsKey!0 (array!39535 (store (arr!18945 a!3626) i!1382 k!2843) (size!19309 a!3626)) k!2843 from!3004)))

(declare-fun b!682690 () Bool)

(assert (=> b!682690 (= e!388930 (contains!3582 acc!681 k!2843))))

(declare-fun b!682691 () Bool)

(declare-fun res!448747 () Bool)

(assert (=> b!682691 (=> (not res!448747) (not e!388925))))

(assert (=> b!682691 (= res!448747 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19309 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!60894 res!448750) b!682688))

(assert (= (and b!682688 res!448756) b!682674))

(assert (= (and b!682674 res!448745) b!682679))

(assert (= (and b!682679 res!448744) b!682677))

(assert (= (and b!682677 res!448757) b!682690))

(assert (= (and b!682677 (not res!448753)) b!682681))

(assert (= (and b!682681 res!448754) b!682683))

(assert (= (and b!682677 res!448746) b!682675))

(assert (= (and b!682675 res!448751) b!682687))

(assert (= (and b!682687 res!448749) b!682684))

(assert (= (and b!682684 res!448752) b!682676))

(assert (= (and b!682676 res!448755) b!682686))

(assert (= (and b!682686 res!448748) b!682691))

(assert (= (and b!682691 res!448747) b!682689))

(assert (= (and b!682689 c!77333) b!682680))

(assert (= (and b!682689 (not c!77333)) b!682682))

(assert (= (and b!682689 c!77332) b!682685))

(assert (= (and b!682689 (not c!77332)) b!682678))

(declare-fun m!647367 () Bool)

(assert (=> b!682688 m!647367))

(declare-fun m!647369 () Bool)

(assert (=> b!682680 m!647369))

(declare-fun m!647371 () Bool)

(assert (=> b!682687 m!647371))

(declare-fun m!647373 () Bool)

(assert (=> b!682674 m!647373))

(declare-fun m!647375 () Bool)

(assert (=> b!682689 m!647375))

(declare-fun m!647377 () Bool)

(assert (=> b!682689 m!647377))

(declare-fun m!647379 () Bool)

(assert (=> b!682689 m!647379))

(declare-fun m!647381 () Bool)

(assert (=> b!682689 m!647381))

(declare-fun m!647383 () Bool)

(assert (=> b!682689 m!647383))

(declare-fun m!647385 () Bool)

(assert (=> b!682689 m!647385))

(declare-fun m!647387 () Bool)

(assert (=> b!682689 m!647387))

(declare-fun m!647389 () Bool)

(assert (=> b!682689 m!647389))

(assert (=> b!682689 m!647375))

(assert (=> b!682689 m!647381))

(declare-fun m!647391 () Bool)

(assert (=> b!682689 m!647391))

(declare-fun m!647393 () Bool)

(assert (=> b!682689 m!647393))

(declare-fun m!647395 () Bool)

(assert (=> b!682689 m!647395))

(declare-fun m!647397 () Bool)

(assert (=> b!682690 m!647397))

(declare-fun m!647399 () Bool)

(assert (=> start!60894 m!647399))

(declare-fun m!647401 () Bool)

(assert (=> b!682675 m!647401))

(declare-fun m!647403 () Bool)

(assert (=> b!682676 m!647403))

(assert (=> b!682683 m!647397))

(declare-fun m!647405 () Bool)

(assert (=> b!682679 m!647405))

(assert (=> b!682685 m!647379))

(assert (=> b!682685 m!647381))

(declare-fun m!647407 () Bool)

(assert (=> b!682685 m!647407))

(declare-fun m!647409 () Bool)

(assert (=> b!682685 m!647409))

(assert (=> b!682685 m!647381))

(assert (=> b!682685 m!647407))

(assert (=> b!682685 m!647387))

(assert (=> b!682685 m!647395))

(declare-fun m!647411 () Bool)

(assert (=> b!682686 m!647411))

(push 1)

(assert (not b!682675))

(assert (not b!682687))

(assert (not b!682689))

(assert (not b!682676))

(assert (not b!682686))

(assert (not b!682680))

(assert (not b!682690))

(assert (not b!682674))

(assert (not b!682685))

(assert (not b!682683))

(assert (not b!682688))

(assert (not b!682679))

(assert (not start!60894))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

