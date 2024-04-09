; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60030 () Bool)

(assert start!60030)

(declare-fun b!666884 () Bool)

(declare-datatypes ((Unit!23320 0))(
  ( (Unit!23321) )
))
(declare-fun e!381775 () Unit!23320)

(declare-fun lt!310627 () Unit!23320)

(assert (=> b!666884 (= e!381775 lt!310627)))

(declare-fun lt!310626 () Unit!23320)

(declare-datatypes ((List!12799 0))(
  ( (Nil!12796) (Cons!12795 (h!13840 (_ BitVec 64)) (t!19035 List!12799)) )
))
(declare-fun acc!681 () List!12799)

(declare-fun lemmaListSubSeqRefl!0 (List!12799) Unit!23320)

(assert (=> b!666884 (= lt!310626 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!80 (List!12799 List!12799) Bool)

(assert (=> b!666884 (subseq!80 acc!681 acc!681)))

(declare-datatypes ((array!39033 0))(
  ( (array!39034 (arr!18705 (Array (_ BitVec 32) (_ BitVec 64))) (size!19069 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39033)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39033 List!12799 List!12799 (_ BitVec 32)) Unit!23320)

(declare-fun $colon$colon!211 (List!12799 (_ BitVec 64)) List!12799)

(assert (=> b!666884 (= lt!310627 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!211 acc!681 (select (arr!18705 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39033 (_ BitVec 32) List!12799) Bool)

(assert (=> b!666884 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666885 () Bool)

(declare-fun e!381777 () Unit!23320)

(declare-fun Unit!23322 () Unit!23320)

(assert (=> b!666885 (= e!381777 Unit!23322)))

(declare-fun b!666886 () Bool)

(declare-fun res!434326 () Bool)

(declare-fun e!381776 () Bool)

(assert (=> b!666886 (=> (not res!434326) (not e!381776))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666886 (= res!434326 (validKeyInArray!0 k!2843))))

(declare-fun b!666887 () Bool)

(declare-fun res!434337 () Bool)

(declare-fun e!381774 () Bool)

(assert (=> b!666887 (=> res!434337 e!381774)))

(declare-fun lt!310631 () Bool)

(assert (=> b!666887 (= res!434337 lt!310631)))

(declare-fun b!666888 () Bool)

(declare-fun res!434322 () Bool)

(assert (=> b!666888 (=> (not res!434322) (not e!381776))))

(declare-fun arrayContainsKey!0 (array!39033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666888 (= res!434322 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666889 () Bool)

(assert (=> b!666889 (= e!381776 (not e!381774))))

(declare-fun res!434328 () Bool)

(assert (=> b!666889 (=> res!434328 e!381774)))

(assert (=> b!666889 (= res!434328 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!310623 () List!12799)

(declare-fun -!78 (List!12799 (_ BitVec 64)) List!12799)

(assert (=> b!666889 (= (-!78 lt!310623 k!2843) acc!681)))

(assert (=> b!666889 (= lt!310623 ($colon$colon!211 acc!681 k!2843))))

(declare-fun lt!310629 () Unit!23320)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12799) Unit!23320)

(assert (=> b!666889 (= lt!310629 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!666889 (subseq!80 acc!681 acc!681)))

(declare-fun lt!310630 () Unit!23320)

(assert (=> b!666889 (= lt!310630 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666889 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310632 () Unit!23320)

(assert (=> b!666889 (= lt!310632 e!381775)))

(declare-fun c!76649 () Bool)

(assert (=> b!666889 (= c!76649 (validKeyInArray!0 (select (arr!18705 a!3626) from!3004)))))

(declare-fun lt!310625 () Unit!23320)

(assert (=> b!666889 (= lt!310625 e!381777)))

(declare-fun c!76648 () Bool)

(assert (=> b!666889 (= c!76648 lt!310631)))

(assert (=> b!666889 (= lt!310631 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666889 (arrayContainsKey!0 (array!39034 (store (arr!18705 a!3626) i!1382 k!2843) (size!19069 a!3626)) k!2843 from!3004)))

(declare-fun b!666890 () Bool)

(declare-fun e!381773 () Bool)

(declare-fun contains!3342 (List!12799 (_ BitVec 64)) Bool)

(assert (=> b!666890 (= e!381773 (contains!3342 acc!681 k!2843))))

(declare-fun b!666891 () Bool)

(declare-fun res!434338 () Bool)

(assert (=> b!666891 (=> res!434338 e!381774)))

(assert (=> b!666891 (= res!434338 (not (contains!3342 lt!310623 k!2843)))))

(declare-fun b!666892 () Bool)

(declare-fun res!434341 () Bool)

(assert (=> b!666892 (=> (not res!434341) (not e!381776))))

(assert (=> b!666892 (= res!434341 (not (contains!3342 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666893 () Bool)

(declare-fun res!434332 () Bool)

(assert (=> b!666893 (=> (not res!434332) (not e!381776))))

(assert (=> b!666893 (= res!434332 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12796))))

(declare-fun b!666894 () Bool)

(declare-fun res!434323 () Bool)

(assert (=> b!666894 (=> (not res!434323) (not e!381776))))

(declare-fun e!381778 () Bool)

(assert (=> b!666894 (= res!434323 e!381778)))

(declare-fun res!434333 () Bool)

(assert (=> b!666894 (=> res!434333 e!381778)))

(assert (=> b!666894 (= res!434333 e!381773)))

(declare-fun res!434324 () Bool)

(assert (=> b!666894 (=> (not res!434324) (not e!381773))))

(assert (=> b!666894 (= res!434324 (bvsgt from!3004 i!1382))))

(declare-fun b!666895 () Bool)

(declare-fun res!434327 () Bool)

(assert (=> b!666895 (=> res!434327 e!381774)))

(declare-fun noDuplicate!589 (List!12799) Bool)

(assert (=> b!666895 (= res!434327 (not (noDuplicate!589 lt!310623)))))

(declare-fun b!666896 () Bool)

(assert (=> b!666896 (= e!381774 true)))

(declare-fun lt!310628 () Bool)

(assert (=> b!666896 (= lt!310628 (contains!3342 lt!310623 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666897 () Bool)

(declare-fun Unit!23323 () Unit!23320)

(assert (=> b!666897 (= e!381775 Unit!23323)))

(declare-fun res!434340 () Bool)

(assert (=> start!60030 (=> (not res!434340) (not e!381776))))

(assert (=> start!60030 (= res!434340 (and (bvslt (size!19069 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19069 a!3626))))))

(assert (=> start!60030 e!381776))

(assert (=> start!60030 true))

(declare-fun array_inv!14479 (array!39033) Bool)

(assert (=> start!60030 (array_inv!14479 a!3626)))

(declare-fun b!666898 () Bool)

(declare-fun res!434330 () Bool)

(assert (=> b!666898 (=> res!434330 e!381774)))

(assert (=> b!666898 (= res!434330 (contains!3342 lt!310623 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666899 () Bool)

(declare-fun res!434325 () Bool)

(assert (=> b!666899 (=> (not res!434325) (not e!381776))))

(assert (=> b!666899 (= res!434325 (not (contains!3342 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666900 () Bool)

(declare-fun res!434342 () Bool)

(assert (=> b!666900 (=> res!434342 e!381774)))

(assert (=> b!666900 (= res!434342 (not (subseq!80 acc!681 lt!310623)))))

(declare-fun b!666901 () Bool)

(declare-fun res!434329 () Bool)

(assert (=> b!666901 (=> (not res!434329) (not e!381776))))

(assert (=> b!666901 (= res!434329 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19069 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666902 () Bool)

(declare-fun Unit!23324 () Unit!23320)

(assert (=> b!666902 (= e!381777 Unit!23324)))

(declare-fun lt!310624 () Unit!23320)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39033 (_ BitVec 64) (_ BitVec 32)) Unit!23320)

(assert (=> b!666902 (= lt!310624 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!666902 false))

(declare-fun b!666903 () Bool)

(declare-fun e!381771 () Bool)

(assert (=> b!666903 (= e!381771 (not (contains!3342 acc!681 k!2843)))))

(declare-fun b!666904 () Bool)

(declare-fun res!434335 () Bool)

(assert (=> b!666904 (=> (not res!434335) (not e!381776))))

(assert (=> b!666904 (= res!434335 (noDuplicate!589 acc!681))))

(declare-fun b!666905 () Bool)

(declare-fun res!434334 () Bool)

(assert (=> b!666905 (=> res!434334 e!381774)))

(assert (=> b!666905 (= res!434334 (contains!3342 acc!681 k!2843))))

(declare-fun b!666906 () Bool)

(declare-fun res!434331 () Bool)

(assert (=> b!666906 (=> (not res!434331) (not e!381776))))

(assert (=> b!666906 (= res!434331 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19069 a!3626))))))

(declare-fun b!666907 () Bool)

(declare-fun res!434336 () Bool)

(assert (=> b!666907 (=> (not res!434336) (not e!381776))))

(assert (=> b!666907 (= res!434336 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666908 () Bool)

(assert (=> b!666908 (= e!381778 e!381771)))

(declare-fun res!434339 () Bool)

(assert (=> b!666908 (=> (not res!434339) (not e!381771))))

(assert (=> b!666908 (= res!434339 (bvsle from!3004 i!1382))))

(assert (= (and start!60030 res!434340) b!666904))

(assert (= (and b!666904 res!434335) b!666892))

(assert (= (and b!666892 res!434341) b!666899))

(assert (= (and b!666899 res!434325) b!666894))

(assert (= (and b!666894 res!434324) b!666890))

(assert (= (and b!666894 (not res!434333)) b!666908))

(assert (= (and b!666908 res!434339) b!666903))

(assert (= (and b!666894 res!434323) b!666893))

(assert (= (and b!666893 res!434332) b!666907))

(assert (= (and b!666907 res!434336) b!666906))

(assert (= (and b!666906 res!434331) b!666886))

(assert (= (and b!666886 res!434326) b!666888))

(assert (= (and b!666888 res!434322) b!666901))

(assert (= (and b!666901 res!434329) b!666889))

(assert (= (and b!666889 c!76648) b!666902))

(assert (= (and b!666889 (not c!76648)) b!666885))

(assert (= (and b!666889 c!76649) b!666884))

(assert (= (and b!666889 (not c!76649)) b!666897))

(assert (= (and b!666889 (not res!434328)) b!666895))

(assert (= (and b!666895 (not res!434327)) b!666887))

(assert (= (and b!666887 (not res!434337)) b!666905))

(assert (= (and b!666905 (not res!434334)) b!666900))

(assert (= (and b!666900 (not res!434342)) b!666891))

(assert (= (and b!666891 (not res!434338)) b!666898))

(assert (= (and b!666898 (not res!434330)) b!666896))

(declare-fun m!637587 () Bool)

(assert (=> b!666898 m!637587))

(declare-fun m!637589 () Bool)

(assert (=> b!666893 m!637589))

(declare-fun m!637591 () Bool)

(assert (=> b!666900 m!637591))

(declare-fun m!637593 () Bool)

(assert (=> b!666891 m!637593))

(declare-fun m!637595 () Bool)

(assert (=> b!666904 m!637595))

(declare-fun m!637597 () Bool)

(assert (=> b!666905 m!637597))

(declare-fun m!637599 () Bool)

(assert (=> b!666889 m!637599))

(declare-fun m!637601 () Bool)

(assert (=> b!666889 m!637601))

(declare-fun m!637603 () Bool)

(assert (=> b!666889 m!637603))

(declare-fun m!637605 () Bool)

(assert (=> b!666889 m!637605))

(declare-fun m!637607 () Bool)

(assert (=> b!666889 m!637607))

(declare-fun m!637609 () Bool)

(assert (=> b!666889 m!637609))

(declare-fun m!637611 () Bool)

(assert (=> b!666889 m!637611))

(declare-fun m!637613 () Bool)

(assert (=> b!666889 m!637613))

(assert (=> b!666889 m!637603))

(declare-fun m!637615 () Bool)

(assert (=> b!666889 m!637615))

(declare-fun m!637617 () Bool)

(assert (=> b!666889 m!637617))

(declare-fun m!637619 () Bool)

(assert (=> b!666889 m!637619))

(declare-fun m!637621 () Bool)

(assert (=> b!666902 m!637621))

(declare-fun m!637623 () Bool)

(assert (=> b!666907 m!637623))

(declare-fun m!637625 () Bool)

(assert (=> b!666892 m!637625))

(declare-fun m!637627 () Bool)

(assert (=> b!666896 m!637627))

(assert (=> b!666890 m!637597))

(declare-fun m!637629 () Bool)

(assert (=> b!666895 m!637629))

(declare-fun m!637631 () Bool)

(assert (=> b!666899 m!637631))

(assert (=> b!666884 m!637601))

(assert (=> b!666884 m!637603))

(declare-fun m!637633 () Bool)

(assert (=> b!666884 m!637633))

(declare-fun m!637635 () Bool)

(assert (=> b!666884 m!637635))

(assert (=> b!666884 m!637603))

(assert (=> b!666884 m!637633))

(assert (=> b!666884 m!637609))

(assert (=> b!666884 m!637619))

(declare-fun m!637637 () Bool)

(assert (=> b!666888 m!637637))

(declare-fun m!637639 () Bool)

(assert (=> start!60030 m!637639))

(declare-fun m!637641 () Bool)

(assert (=> b!666886 m!637641))

(assert (=> b!666903 m!637597))

(push 1)

(assert (not b!666888))

(assert (not b!666886))

(assert (not b!666895))

(assert (not b!666899))

(assert (not b!666907))

(assert (not b!666891))

(assert (not b!666900))

(assert (not b!666898))

(assert (not b!666884))

(assert (not b!666896))

(assert (not b!666903))

(assert (not b!666904))

(assert (not b!666902))

(assert (not b!666892))

(assert (not b!666889))

(assert (not start!60030))

(assert (not b!666905))

(assert (not b!666890))

(assert (not b!666893))

(check-sat)

(pop 1)

