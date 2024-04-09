; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59968 () Bool)

(assert start!59968)

(declare-fun b!664559 () Bool)

(declare-fun res!432369 () Bool)

(declare-fun e!381034 () Bool)

(assert (=> b!664559 (=> res!432369 e!381034)))

(declare-fun lt!309698 () Bool)

(assert (=> b!664559 (= res!432369 lt!309698)))

(declare-fun b!664560 () Bool)

(declare-fun res!432382 () Bool)

(declare-fun e!381032 () Bool)

(assert (=> b!664560 (=> (not res!432382) (not e!381032))))

(declare-datatypes ((List!12768 0))(
  ( (Nil!12765) (Cons!12764 (h!13809 (_ BitVec 64)) (t!19004 List!12768)) )
))
(declare-fun acc!681 () List!12768)

(declare-fun contains!3311 (List!12768 (_ BitVec 64)) Bool)

(assert (=> b!664560 (= res!432382 (not (contains!3311 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664561 () Bool)

(declare-fun e!381027 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!664561 (= e!381027 (contains!3311 acc!681 k!2843))))

(declare-fun b!664562 () Bool)

(declare-fun res!432378 () Bool)

(assert (=> b!664562 (=> (not res!432378) (not e!381032))))

(declare-datatypes ((array!38971 0))(
  ( (array!38972 (arr!18674 (Array (_ BitVec 32) (_ BitVec 64))) (size!19038 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38971)

(declare-fun arrayContainsKey!0 (array!38971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664562 (= res!432378 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664563 () Bool)

(declare-fun e!381030 () Bool)

(assert (=> b!664563 (= e!381030 (not (contains!3311 acc!681 k!2843)))))

(declare-fun b!664564 () Bool)

(declare-datatypes ((Unit!23165 0))(
  ( (Unit!23166) )
))
(declare-fun e!381033 () Unit!23165)

(declare-fun Unit!23167 () Unit!23165)

(assert (=> b!664564 (= e!381033 Unit!23167)))

(declare-fun res!432381 () Bool)

(assert (=> start!59968 (=> (not res!432381) (not e!381032))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59968 (= res!432381 (and (bvslt (size!19038 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19038 a!3626))))))

(assert (=> start!59968 e!381032))

(assert (=> start!59968 true))

(declare-fun array_inv!14448 (array!38971) Bool)

(assert (=> start!59968 (array_inv!14448 a!3626)))

(declare-fun b!664565 () Bool)

(declare-fun res!432380 () Bool)

(assert (=> b!664565 (=> res!432380 e!381034)))

(declare-fun lt!309694 () List!12768)

(assert (=> b!664565 (= res!432380 (contains!3311 lt!309694 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664566 () Bool)

(assert (=> b!664566 (= e!381032 (not e!381034))))

(declare-fun res!432370 () Bool)

(assert (=> b!664566 (=> res!432370 e!381034)))

(assert (=> b!664566 (= res!432370 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!47 (List!12768 (_ BitVec 64)) List!12768)

(assert (=> b!664566 (= (-!47 lt!309694 k!2843) acc!681)))

(declare-fun $colon$colon!180 (List!12768 (_ BitVec 64)) List!12768)

(assert (=> b!664566 (= lt!309694 ($colon$colon!180 acc!681 k!2843))))

(declare-fun lt!309701 () Unit!23165)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12768) Unit!23165)

(assert (=> b!664566 (= lt!309701 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!49 (List!12768 List!12768) Bool)

(assert (=> b!664566 (subseq!49 acc!681 acc!681)))

(declare-fun lt!309700 () Unit!23165)

(declare-fun lemmaListSubSeqRefl!0 (List!12768) Unit!23165)

(assert (=> b!664566 (= lt!309700 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!38971 (_ BitVec 32) List!12768) Bool)

(assert (=> b!664566 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309693 () Unit!23165)

(assert (=> b!664566 (= lt!309693 e!381033)))

(declare-fun c!76463 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664566 (= c!76463 (validKeyInArray!0 (select (arr!18674 a!3626) from!3004)))))

(declare-fun lt!309699 () Unit!23165)

(declare-fun e!381031 () Unit!23165)

(assert (=> b!664566 (= lt!309699 e!381031)))

(declare-fun c!76462 () Bool)

(assert (=> b!664566 (= c!76462 lt!309698)))

(assert (=> b!664566 (= lt!309698 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!664566 (arrayContainsKey!0 (array!38972 (store (arr!18674 a!3626) i!1382 k!2843) (size!19038 a!3626)) k!2843 from!3004)))

(declare-fun b!664567 () Bool)

(declare-fun res!432372 () Bool)

(assert (=> b!664567 (=> res!432372 e!381034)))

(assert (=> b!664567 (= res!432372 (contains!3311 acc!681 k!2843))))

(declare-fun b!664568 () Bool)

(declare-fun e!381028 () Bool)

(assert (=> b!664568 (= e!381028 e!381030)))

(declare-fun res!432387 () Bool)

(assert (=> b!664568 (=> (not res!432387) (not e!381030))))

(assert (=> b!664568 (= res!432387 (bvsle from!3004 i!1382))))

(declare-fun b!664569 () Bool)

(declare-fun res!432386 () Bool)

(assert (=> b!664569 (=> res!432386 e!381034)))

(assert (=> b!664569 (= res!432386 (not (contains!3311 lt!309694 k!2843)))))

(declare-fun b!664570 () Bool)

(declare-fun res!432375 () Bool)

(assert (=> b!664570 (=> (not res!432375) (not e!381032))))

(assert (=> b!664570 (= res!432375 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19038 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664571 () Bool)

(declare-fun Unit!23168 () Unit!23165)

(assert (=> b!664571 (= e!381031 Unit!23168)))

(declare-fun lt!309696 () Unit!23165)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38971 (_ BitVec 64) (_ BitVec 32)) Unit!23165)

(assert (=> b!664571 (= lt!309696 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!664571 false))

(declare-fun b!664572 () Bool)

(declare-fun res!432385 () Bool)

(assert (=> b!664572 (=> (not res!432385) (not e!381032))))

(assert (=> b!664572 (= res!432385 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664573 () Bool)

(declare-fun res!432376 () Bool)

(assert (=> b!664573 (=> (not res!432376) (not e!381032))))

(assert (=> b!664573 (= res!432376 (validKeyInArray!0 k!2843))))

(declare-fun b!664574 () Bool)

(declare-fun Unit!23169 () Unit!23165)

(assert (=> b!664574 (= e!381031 Unit!23169)))

(declare-fun b!664575 () Bool)

(declare-fun res!432377 () Bool)

(assert (=> b!664575 (=> (not res!432377) (not e!381032))))

(assert (=> b!664575 (= res!432377 e!381028)))

(declare-fun res!432389 () Bool)

(assert (=> b!664575 (=> res!432389 e!381028)))

(assert (=> b!664575 (= res!432389 e!381027)))

(declare-fun res!432388 () Bool)

(assert (=> b!664575 (=> (not res!432388) (not e!381027))))

(assert (=> b!664575 (= res!432388 (bvsgt from!3004 i!1382))))

(declare-fun b!664576 () Bool)

(declare-fun lt!309697 () Unit!23165)

(assert (=> b!664576 (= e!381033 lt!309697)))

(declare-fun lt!309702 () Unit!23165)

(assert (=> b!664576 (= lt!309702 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664576 (subseq!49 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38971 List!12768 List!12768 (_ BitVec 32)) Unit!23165)

(assert (=> b!664576 (= lt!309697 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!180 acc!681 (select (arr!18674 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664576 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664577 () Bool)

(declare-fun res!432374 () Bool)

(assert (=> b!664577 (=> (not res!432374) (not e!381032))))

(assert (=> b!664577 (= res!432374 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19038 a!3626))))))

(declare-fun b!664578 () Bool)

(declare-fun res!432379 () Bool)

(assert (=> b!664578 (=> res!432379 e!381034)))

(declare-fun noDuplicate!558 (List!12768) Bool)

(assert (=> b!664578 (= res!432379 (not (noDuplicate!558 lt!309694)))))

(declare-fun b!664579 () Bool)

(assert (=> b!664579 (= e!381034 true)))

(declare-fun lt!309695 () Bool)

(assert (=> b!664579 (= lt!309695 (contains!3311 lt!309694 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664580 () Bool)

(declare-fun res!432371 () Bool)

(assert (=> b!664580 (=> (not res!432371) (not e!381032))))

(assert (=> b!664580 (= res!432371 (noDuplicate!558 acc!681))))

(declare-fun b!664581 () Bool)

(declare-fun res!432383 () Bool)

(assert (=> b!664581 (=> (not res!432383) (not e!381032))))

(assert (=> b!664581 (= res!432383 (not (contains!3311 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664582 () Bool)

(declare-fun res!432373 () Bool)

(assert (=> b!664582 (=> res!432373 e!381034)))

(assert (=> b!664582 (= res!432373 (not (subseq!49 acc!681 lt!309694)))))

(declare-fun b!664583 () Bool)

(declare-fun res!432384 () Bool)

(assert (=> b!664583 (=> (not res!432384) (not e!381032))))

(assert (=> b!664583 (= res!432384 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12765))))

(assert (= (and start!59968 res!432381) b!664580))

(assert (= (and b!664580 res!432371) b!664560))

(assert (= (and b!664560 res!432382) b!664581))

(assert (= (and b!664581 res!432383) b!664575))

(assert (= (and b!664575 res!432388) b!664561))

(assert (= (and b!664575 (not res!432389)) b!664568))

(assert (= (and b!664568 res!432387) b!664563))

(assert (= (and b!664575 res!432377) b!664583))

(assert (= (and b!664583 res!432384) b!664572))

(assert (= (and b!664572 res!432385) b!664577))

(assert (= (and b!664577 res!432374) b!664573))

(assert (= (and b!664573 res!432376) b!664562))

(assert (= (and b!664562 res!432378) b!664570))

(assert (= (and b!664570 res!432375) b!664566))

(assert (= (and b!664566 c!76462) b!664571))

(assert (= (and b!664566 (not c!76462)) b!664574))

(assert (= (and b!664566 c!76463) b!664576))

(assert (= (and b!664566 (not c!76463)) b!664564))

(assert (= (and b!664566 (not res!432370)) b!664578))

(assert (= (and b!664578 (not res!432379)) b!664559))

(assert (= (and b!664559 (not res!432369)) b!664567))

(assert (= (and b!664567 (not res!432372)) b!664582))

(assert (= (and b!664582 (not res!432373)) b!664569))

(assert (= (and b!664569 (not res!432386)) b!664565))

(assert (= (and b!664565 (not res!432380)) b!664579))

(declare-fun m!635851 () Bool)

(assert (=> b!664569 m!635851))

(declare-fun m!635853 () Bool)

(assert (=> b!664572 m!635853))

(declare-fun m!635855 () Bool)

(assert (=> start!59968 m!635855))

(declare-fun m!635857 () Bool)

(assert (=> b!664582 m!635857))

(declare-fun m!635859 () Bool)

(assert (=> b!664580 m!635859))

(declare-fun m!635861 () Bool)

(assert (=> b!664579 m!635861))

(declare-fun m!635863 () Bool)

(assert (=> b!664578 m!635863))

(declare-fun m!635865 () Bool)

(assert (=> b!664581 m!635865))

(declare-fun m!635867 () Bool)

(assert (=> b!664565 m!635867))

(declare-fun m!635869 () Bool)

(assert (=> b!664563 m!635869))

(declare-fun m!635871 () Bool)

(assert (=> b!664583 m!635871))

(assert (=> b!664561 m!635869))

(declare-fun m!635873 () Bool)

(assert (=> b!664576 m!635873))

(declare-fun m!635875 () Bool)

(assert (=> b!664576 m!635875))

(declare-fun m!635877 () Bool)

(assert (=> b!664576 m!635877))

(declare-fun m!635879 () Bool)

(assert (=> b!664576 m!635879))

(assert (=> b!664576 m!635875))

(assert (=> b!664576 m!635877))

(declare-fun m!635881 () Bool)

(assert (=> b!664576 m!635881))

(declare-fun m!635883 () Bool)

(assert (=> b!664576 m!635883))

(declare-fun m!635885 () Bool)

(assert (=> b!664573 m!635885))

(assert (=> b!664567 m!635869))

(declare-fun m!635887 () Bool)

(assert (=> b!664560 m!635887))

(assert (=> b!664566 m!635873))

(assert (=> b!664566 m!635875))

(declare-fun m!635889 () Bool)

(assert (=> b!664566 m!635889))

(declare-fun m!635891 () Bool)

(assert (=> b!664566 m!635891))

(assert (=> b!664566 m!635881))

(declare-fun m!635893 () Bool)

(assert (=> b!664566 m!635893))

(declare-fun m!635895 () Bool)

(assert (=> b!664566 m!635895))

(declare-fun m!635897 () Bool)

(assert (=> b!664566 m!635897))

(assert (=> b!664566 m!635875))

(declare-fun m!635899 () Bool)

(assert (=> b!664566 m!635899))

(declare-fun m!635901 () Bool)

(assert (=> b!664566 m!635901))

(assert (=> b!664566 m!635883))

(declare-fun m!635903 () Bool)

(assert (=> b!664562 m!635903))

(declare-fun m!635905 () Bool)

(assert (=> b!664571 m!635905))

(push 1)

(assert (not b!664583))

(assert (not b!664580))

(assert (not start!59968))

(assert (not b!664566))

(assert (not b!664562))

(assert (not b!664561))

(assert (not b!664582))

(assert (not b!664581))

(assert (not b!664572))

(assert (not b!664578))

(assert (not b!664576))

(assert (not b!664563))

(assert (not b!664567))

(assert (not b!664579))

(assert (not b!664565))

(assert (not b!664573))

(assert (not b!664569))

(assert (not b!664571))

(assert (not b!664560))

(check-sat)

