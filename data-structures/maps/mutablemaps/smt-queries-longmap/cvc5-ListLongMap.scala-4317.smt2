; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59946 () Bool)

(assert start!59946)

(declare-fun b!663783 () Bool)

(declare-fun e!380774 () Bool)

(declare-datatypes ((List!12757 0))(
  ( (Nil!12754) (Cons!12753 (h!13798 (_ BitVec 64)) (t!18993 List!12757)) )
))
(declare-fun acc!681 () List!12757)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3300 (List!12757 (_ BitVec 64)) Bool)

(assert (=> b!663783 (= e!380774 (not (contains!3300 acc!681 k!2843)))))

(declare-fun b!663784 () Bool)

(declare-fun res!431730 () Bool)

(declare-fun e!380773 () Bool)

(assert (=> b!663784 (=> (not res!431730) (not e!380773))))

(declare-datatypes ((array!38949 0))(
  ( (array!38950 (arr!18663 (Array (_ BitVec 32) (_ BitVec 64))) (size!19027 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38949)

(declare-fun arrayContainsKey!0 (array!38949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663784 (= res!431730 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663785 () Bool)

(declare-fun res!431731 () Bool)

(assert (=> b!663785 (=> (not res!431731) (not e!380773))))

(assert (=> b!663785 (= res!431731 (not (contains!3300 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663786 () Bool)

(declare-datatypes ((Unit!23110 0))(
  ( (Unit!23111) )
))
(declare-fun e!380776 () Unit!23110)

(declare-fun lt!309390 () Unit!23110)

(assert (=> b!663786 (= e!380776 lt!309390)))

(declare-fun lt!309384 () Unit!23110)

(declare-fun lemmaListSubSeqRefl!0 (List!12757) Unit!23110)

(assert (=> b!663786 (= lt!309384 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!38 (List!12757 List!12757) Bool)

(assert (=> b!663786 (subseq!38 acc!681 acc!681)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38949 List!12757 List!12757 (_ BitVec 32)) Unit!23110)

(declare-fun $colon$colon!169 (List!12757 (_ BitVec 64)) List!12757)

(assert (=> b!663786 (= lt!309390 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!169 acc!681 (select (arr!18663 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!38949 (_ BitVec 32) List!12757) Bool)

(assert (=> b!663786 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663787 () Bool)

(declare-fun res!431728 () Bool)

(assert (=> b!663787 (=> (not res!431728) (not e!380773))))

(declare-fun e!380770 () Bool)

(assert (=> b!663787 (= res!431728 e!380770)))

(declare-fun res!431733 () Bool)

(assert (=> b!663787 (=> res!431733 e!380770)))

(declare-fun e!380771 () Bool)

(assert (=> b!663787 (= res!431733 e!380771)))

(declare-fun res!431727 () Bool)

(assert (=> b!663787 (=> (not res!431727) (not e!380771))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663787 (= res!431727 (bvsgt from!3004 i!1382))))

(declare-fun b!663789 () Bool)

(assert (=> b!663789 (= e!380773 (not true))))

(declare-fun lt!309388 () Bool)

(assert (=> b!663789 (= lt!309388 (contains!3300 acc!681 k!2843))))

(assert (=> b!663789 (subseq!38 acc!681 acc!681)))

(declare-fun lt!309385 () Unit!23110)

(assert (=> b!663789 (= lt!309385 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!663789 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309389 () Unit!23110)

(assert (=> b!663789 (= lt!309389 e!380776)))

(declare-fun c!76396 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663789 (= c!76396 (validKeyInArray!0 (select (arr!18663 a!3626) from!3004)))))

(declare-fun lt!309386 () Unit!23110)

(declare-fun e!380775 () Unit!23110)

(assert (=> b!663789 (= lt!309386 e!380775)))

(declare-fun c!76397 () Bool)

(assert (=> b!663789 (= c!76397 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663789 (arrayContainsKey!0 (array!38950 (store (arr!18663 a!3626) i!1382 k!2843) (size!19027 a!3626)) k!2843 from!3004)))

(declare-fun b!663790 () Bool)

(declare-fun Unit!23112 () Unit!23110)

(assert (=> b!663790 (= e!380776 Unit!23112)))

(declare-fun b!663791 () Bool)

(declare-fun res!431738 () Bool)

(assert (=> b!663791 (=> (not res!431738) (not e!380773))))

(assert (=> b!663791 (= res!431738 (validKeyInArray!0 k!2843))))

(declare-fun b!663792 () Bool)

(declare-fun res!431726 () Bool)

(assert (=> b!663792 (=> (not res!431726) (not e!380773))))

(declare-fun noDuplicate!547 (List!12757) Bool)

(assert (=> b!663792 (= res!431726 (noDuplicate!547 acc!681))))

(declare-fun b!663793 () Bool)

(declare-fun res!431732 () Bool)

(assert (=> b!663793 (=> (not res!431732) (not e!380773))))

(assert (=> b!663793 (= res!431732 (not (contains!3300 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663794 () Bool)

(declare-fun res!431729 () Bool)

(assert (=> b!663794 (=> (not res!431729) (not e!380773))))

(assert (=> b!663794 (= res!431729 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19027 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663795 () Bool)

(assert (=> b!663795 (= e!380771 (contains!3300 acc!681 k!2843))))

(declare-fun b!663796 () Bool)

(declare-fun res!431737 () Bool)

(assert (=> b!663796 (=> (not res!431737) (not e!380773))))

(assert (=> b!663796 (= res!431737 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663797 () Bool)

(assert (=> b!663797 (= e!380770 e!380774)))

(declare-fun res!431735 () Bool)

(assert (=> b!663797 (=> (not res!431735) (not e!380774))))

(assert (=> b!663797 (= res!431735 (bvsle from!3004 i!1382))))

(declare-fun b!663798 () Bool)

(declare-fun res!431725 () Bool)

(assert (=> b!663798 (=> (not res!431725) (not e!380773))))

(assert (=> b!663798 (= res!431725 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12754))))

(declare-fun b!663788 () Bool)

(declare-fun Unit!23113 () Unit!23110)

(assert (=> b!663788 (= e!380775 Unit!23113)))

(declare-fun lt!309387 () Unit!23110)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38949 (_ BitVec 64) (_ BitVec 32)) Unit!23110)

(assert (=> b!663788 (= lt!309387 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663788 false))

(declare-fun res!431734 () Bool)

(assert (=> start!59946 (=> (not res!431734) (not e!380773))))

(assert (=> start!59946 (= res!431734 (and (bvslt (size!19027 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19027 a!3626))))))

(assert (=> start!59946 e!380773))

(assert (=> start!59946 true))

(declare-fun array_inv!14437 (array!38949) Bool)

(assert (=> start!59946 (array_inv!14437 a!3626)))

(declare-fun b!663799 () Bool)

(declare-fun Unit!23114 () Unit!23110)

(assert (=> b!663799 (= e!380775 Unit!23114)))

(declare-fun b!663800 () Bool)

(declare-fun res!431736 () Bool)

(assert (=> b!663800 (=> (not res!431736) (not e!380773))))

(assert (=> b!663800 (= res!431736 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19027 a!3626))))))

(assert (= (and start!59946 res!431734) b!663792))

(assert (= (and b!663792 res!431726) b!663785))

(assert (= (and b!663785 res!431731) b!663793))

(assert (= (and b!663793 res!431732) b!663787))

(assert (= (and b!663787 res!431727) b!663795))

(assert (= (and b!663787 (not res!431733)) b!663797))

(assert (= (and b!663797 res!431735) b!663783))

(assert (= (and b!663787 res!431728) b!663798))

(assert (= (and b!663798 res!431725) b!663796))

(assert (= (and b!663796 res!431737) b!663800))

(assert (= (and b!663800 res!431736) b!663791))

(assert (= (and b!663791 res!431738) b!663784))

(assert (= (and b!663784 res!431730) b!663794))

(assert (= (and b!663794 res!431729) b!663789))

(assert (= (and b!663789 c!76397) b!663788))

(assert (= (and b!663789 (not c!76397)) b!663799))

(assert (= (and b!663789 c!76396) b!663786))

(assert (= (and b!663789 (not c!76396)) b!663790))

(declare-fun m!635283 () Bool)

(assert (=> b!663792 m!635283))

(declare-fun m!635285 () Bool)

(assert (=> b!663793 m!635285))

(declare-fun m!635287 () Bool)

(assert (=> b!663795 m!635287))

(declare-fun m!635289 () Bool)

(assert (=> b!663798 m!635289))

(assert (=> b!663783 m!635287))

(declare-fun m!635291 () Bool)

(assert (=> b!663791 m!635291))

(declare-fun m!635293 () Bool)

(assert (=> b!663789 m!635293))

(declare-fun m!635295 () Bool)

(assert (=> b!663789 m!635295))

(assert (=> b!663789 m!635287))

(declare-fun m!635297 () Bool)

(assert (=> b!663789 m!635297))

(declare-fun m!635299 () Bool)

(assert (=> b!663789 m!635299))

(declare-fun m!635301 () Bool)

(assert (=> b!663789 m!635301))

(assert (=> b!663789 m!635295))

(declare-fun m!635303 () Bool)

(assert (=> b!663789 m!635303))

(declare-fun m!635305 () Bool)

(assert (=> b!663789 m!635305))

(declare-fun m!635307 () Bool)

(assert (=> b!663789 m!635307))

(assert (=> b!663786 m!635293))

(assert (=> b!663786 m!635295))

(declare-fun m!635309 () Bool)

(assert (=> b!663786 m!635309))

(declare-fun m!635311 () Bool)

(assert (=> b!663786 m!635311))

(assert (=> b!663786 m!635295))

(assert (=> b!663786 m!635309))

(assert (=> b!663786 m!635299))

(assert (=> b!663786 m!635307))

(declare-fun m!635313 () Bool)

(assert (=> start!59946 m!635313))

(declare-fun m!635315 () Bool)

(assert (=> b!663796 m!635315))

(declare-fun m!635317 () Bool)

(assert (=> b!663788 m!635317))

(declare-fun m!635319 () Bool)

(assert (=> b!663784 m!635319))

(declare-fun m!635321 () Bool)

(assert (=> b!663785 m!635321))

(push 1)

(assert (not b!663789))

(assert (not b!663788))

(assert (not b!663793))

(assert (not b!663796))

(assert (not b!663785))

(assert (not b!663784))

(assert (not b!663792))

(assert (not b!663791))

(assert (not b!663798))

(assert (not b!663783))

(assert (not b!663795))

(assert (not b!663786))

(assert (not start!59946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

