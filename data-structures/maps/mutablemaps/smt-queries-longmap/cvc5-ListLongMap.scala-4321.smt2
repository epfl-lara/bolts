; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59970 () Bool)

(assert start!59970)

(declare-fun b!664634 () Bool)

(declare-fun res!432439 () Bool)

(declare-fun e!381053 () Bool)

(assert (=> b!664634 (=> res!432439 e!381053)))

(declare-datatypes ((List!12769 0))(
  ( (Nil!12766) (Cons!12765 (h!13810 (_ BitVec 64)) (t!19005 List!12769)) )
))
(declare-fun lt!309732 () List!12769)

(declare-fun contains!3312 (List!12769 (_ BitVec 64)) Bool)

(assert (=> b!664634 (= res!432439 (contains!3312 lt!309732 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664635 () Bool)

(declare-fun res!432432 () Bool)

(assert (=> b!664635 (=> res!432432 e!381053)))

(declare-fun noDuplicate!559 (List!12769) Bool)

(assert (=> b!664635 (= res!432432 (not (noDuplicate!559 lt!309732)))))

(declare-fun b!664636 () Bool)

(declare-fun res!432450 () Bool)

(declare-fun e!381051 () Bool)

(assert (=> b!664636 (=> (not res!432450) (not e!381051))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38973 0))(
  ( (array!38974 (arr!18675 (Array (_ BitVec 32) (_ BitVec 64))) (size!19039 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38973)

(assert (=> b!664636 (= res!432450 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19039 a!3626))))))

(declare-fun b!664637 () Bool)

(declare-fun res!432443 () Bool)

(assert (=> b!664637 (=> (not res!432443) (not e!381051))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!664637 (= res!432443 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19039 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664638 () Bool)

(declare-fun res!432451 () Bool)

(assert (=> b!664638 (=> res!432451 e!381053)))

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!664638 (= res!432451 (not (contains!3312 lt!309732 k!2843)))))

(declare-fun b!664639 () Bool)

(declare-fun res!432440 () Bool)

(assert (=> b!664639 (=> (not res!432440) (not e!381051))))

(declare-fun arrayNoDuplicates!0 (array!38973 (_ BitVec 32) List!12769) Bool)

(assert (=> b!664639 (= res!432440 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12766))))

(declare-fun b!664640 () Bool)

(declare-fun res!432448 () Bool)

(assert (=> b!664640 (=> (not res!432448) (not e!381051))))

(declare-fun acc!681 () List!12769)

(assert (=> b!664640 (= res!432448 (not (contains!3312 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664641 () Bool)

(declare-datatypes ((Unit!23170 0))(
  ( (Unit!23171) )
))
(declare-fun e!381055 () Unit!23170)

(declare-fun Unit!23172 () Unit!23170)

(assert (=> b!664641 (= e!381055 Unit!23172)))

(declare-fun b!664642 () Bool)

(declare-fun res!432437 () Bool)

(assert (=> b!664642 (=> (not res!432437) (not e!381051))))

(declare-fun e!381057 () Bool)

(assert (=> b!664642 (= res!432437 e!381057)))

(declare-fun res!432449 () Bool)

(assert (=> b!664642 (=> res!432449 e!381057)))

(declare-fun e!381056 () Bool)

(assert (=> b!664642 (= res!432449 e!381056)))

(declare-fun res!432434 () Bool)

(assert (=> b!664642 (=> (not res!432434) (not e!381056))))

(assert (=> b!664642 (= res!432434 (bvsgt from!3004 i!1382))))

(declare-fun b!664643 () Bool)

(declare-fun res!432433 () Bool)

(assert (=> b!664643 (=> res!432433 e!381053)))

(assert (=> b!664643 (= res!432433 (contains!3312 acc!681 k!2843))))

(declare-fun b!664645 () Bool)

(declare-fun res!432447 () Bool)

(assert (=> b!664645 (=> res!432447 e!381053)))

(declare-fun subseq!50 (List!12769 List!12769) Bool)

(assert (=> b!664645 (= res!432447 (not (subseq!50 acc!681 lt!309732)))))

(declare-fun b!664646 () Bool)

(assert (=> b!664646 (= e!381051 (not e!381053))))

(declare-fun res!432442 () Bool)

(assert (=> b!664646 (=> res!432442 e!381053)))

(assert (=> b!664646 (= res!432442 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!48 (List!12769 (_ BitVec 64)) List!12769)

(assert (=> b!664646 (= (-!48 lt!309732 k!2843) acc!681)))

(declare-fun $colon$colon!181 (List!12769 (_ BitVec 64)) List!12769)

(assert (=> b!664646 (= lt!309732 ($colon$colon!181 acc!681 k!2843))))

(declare-fun lt!309731 () Unit!23170)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12769) Unit!23170)

(assert (=> b!664646 (= lt!309731 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!664646 (subseq!50 acc!681 acc!681)))

(declare-fun lt!309728 () Unit!23170)

(declare-fun lemmaListSubSeqRefl!0 (List!12769) Unit!23170)

(assert (=> b!664646 (= lt!309728 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664646 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309726 () Unit!23170)

(assert (=> b!664646 (= lt!309726 e!381055)))

(declare-fun c!76468 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664646 (= c!76468 (validKeyInArray!0 (select (arr!18675 a!3626) from!3004)))))

(declare-fun lt!309730 () Unit!23170)

(declare-fun e!381052 () Unit!23170)

(assert (=> b!664646 (= lt!309730 e!381052)))

(declare-fun c!76469 () Bool)

(declare-fun lt!309727 () Bool)

(assert (=> b!664646 (= c!76469 lt!309727)))

(declare-fun arrayContainsKey!0 (array!38973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664646 (= lt!309727 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664646 (arrayContainsKey!0 (array!38974 (store (arr!18675 a!3626) i!1382 k!2843) (size!19039 a!3626)) k!2843 from!3004)))

(declare-fun b!664647 () Bool)

(declare-fun lt!309723 () Unit!23170)

(assert (=> b!664647 (= e!381055 lt!309723)))

(declare-fun lt!309729 () Unit!23170)

(assert (=> b!664647 (= lt!309729 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664647 (subseq!50 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38973 List!12769 List!12769 (_ BitVec 32)) Unit!23170)

(assert (=> b!664647 (= lt!309723 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!181 acc!681 (select (arr!18675 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664647 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664648 () Bool)

(declare-fun res!432446 () Bool)

(assert (=> b!664648 (=> (not res!432446) (not e!381051))))

(assert (=> b!664648 (= res!432446 (not (contains!3312 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664649 () Bool)

(declare-fun e!381054 () Bool)

(assert (=> b!664649 (= e!381054 (not (contains!3312 acc!681 k!2843)))))

(declare-fun b!664650 () Bool)

(declare-fun res!432452 () Bool)

(assert (=> b!664650 (=> res!432452 e!381053)))

(assert (=> b!664650 (= res!432452 lt!309727)))

(declare-fun b!664651 () Bool)

(declare-fun Unit!23173 () Unit!23170)

(assert (=> b!664651 (= e!381052 Unit!23173)))

(declare-fun lt!309725 () Unit!23170)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38973 (_ BitVec 64) (_ BitVec 32)) Unit!23170)

(assert (=> b!664651 (= lt!309725 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!664651 false))

(declare-fun b!664652 () Bool)

(declare-fun res!432445 () Bool)

(assert (=> b!664652 (=> (not res!432445) (not e!381051))))

(assert (=> b!664652 (= res!432445 (validKeyInArray!0 k!2843))))

(declare-fun b!664653 () Bool)

(declare-fun res!432436 () Bool)

(assert (=> b!664653 (=> (not res!432436) (not e!381051))))

(assert (=> b!664653 (= res!432436 (noDuplicate!559 acc!681))))

(declare-fun res!432441 () Bool)

(assert (=> start!59970 (=> (not res!432441) (not e!381051))))

(assert (=> start!59970 (= res!432441 (and (bvslt (size!19039 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19039 a!3626))))))

(assert (=> start!59970 e!381051))

(assert (=> start!59970 true))

(declare-fun array_inv!14449 (array!38973) Bool)

(assert (=> start!59970 (array_inv!14449 a!3626)))

(declare-fun b!664644 () Bool)

(declare-fun res!432435 () Bool)

(assert (=> b!664644 (=> (not res!432435) (not e!381051))))

(assert (=> b!664644 (= res!432435 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!664654 () Bool)

(assert (=> b!664654 (= e!381053 true)))

(declare-fun lt!309724 () Bool)

(assert (=> b!664654 (= lt!309724 (contains!3312 lt!309732 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664655 () Bool)

(declare-fun Unit!23174 () Unit!23170)

(assert (=> b!664655 (= e!381052 Unit!23174)))

(declare-fun b!664656 () Bool)

(assert (=> b!664656 (= e!381057 e!381054)))

(declare-fun res!432438 () Bool)

(assert (=> b!664656 (=> (not res!432438) (not e!381054))))

(assert (=> b!664656 (= res!432438 (bvsle from!3004 i!1382))))

(declare-fun b!664657 () Bool)

(declare-fun res!432444 () Bool)

(assert (=> b!664657 (=> (not res!432444) (not e!381051))))

(assert (=> b!664657 (= res!432444 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664658 () Bool)

(assert (=> b!664658 (= e!381056 (contains!3312 acc!681 k!2843))))

(assert (= (and start!59970 res!432441) b!664653))

(assert (= (and b!664653 res!432436) b!664648))

(assert (= (and b!664648 res!432446) b!664640))

(assert (= (and b!664640 res!432448) b!664642))

(assert (= (and b!664642 res!432434) b!664658))

(assert (= (and b!664642 (not res!432449)) b!664656))

(assert (= (and b!664656 res!432438) b!664649))

(assert (= (and b!664642 res!432437) b!664639))

(assert (= (and b!664639 res!432440) b!664657))

(assert (= (and b!664657 res!432444) b!664636))

(assert (= (and b!664636 res!432450) b!664652))

(assert (= (and b!664652 res!432445) b!664644))

(assert (= (and b!664644 res!432435) b!664637))

(assert (= (and b!664637 res!432443) b!664646))

(assert (= (and b!664646 c!76469) b!664651))

(assert (= (and b!664646 (not c!76469)) b!664655))

(assert (= (and b!664646 c!76468) b!664647))

(assert (= (and b!664646 (not c!76468)) b!664641))

(assert (= (and b!664646 (not res!432442)) b!664635))

(assert (= (and b!664635 (not res!432432)) b!664650))

(assert (= (and b!664650 (not res!432452)) b!664643))

(assert (= (and b!664643 (not res!432433)) b!664645))

(assert (= (and b!664645 (not res!432447)) b!664638))

(assert (= (and b!664638 (not res!432451)) b!664634))

(assert (= (and b!664634 (not res!432439)) b!664654))

(declare-fun m!635907 () Bool)

(assert (=> start!59970 m!635907))

(declare-fun m!635909 () Bool)

(assert (=> b!664653 m!635909))

(declare-fun m!635911 () Bool)

(assert (=> b!664644 m!635911))

(declare-fun m!635913 () Bool)

(assert (=> b!664634 m!635913))

(declare-fun m!635915 () Bool)

(assert (=> b!664645 m!635915))

(declare-fun m!635917 () Bool)

(assert (=> b!664652 m!635917))

(declare-fun m!635919 () Bool)

(assert (=> b!664654 m!635919))

(declare-fun m!635921 () Bool)

(assert (=> b!664639 m!635921))

(declare-fun m!635923 () Bool)

(assert (=> b!664647 m!635923))

(declare-fun m!635925 () Bool)

(assert (=> b!664647 m!635925))

(declare-fun m!635927 () Bool)

(assert (=> b!664647 m!635927))

(declare-fun m!635929 () Bool)

(assert (=> b!664647 m!635929))

(assert (=> b!664647 m!635925))

(assert (=> b!664647 m!635927))

(declare-fun m!635931 () Bool)

(assert (=> b!664647 m!635931))

(declare-fun m!635933 () Bool)

(assert (=> b!664647 m!635933))

(declare-fun m!635935 () Bool)

(assert (=> b!664643 m!635935))

(assert (=> b!664646 m!635923))

(assert (=> b!664646 m!635925))

(declare-fun m!635937 () Bool)

(assert (=> b!664646 m!635937))

(declare-fun m!635939 () Bool)

(assert (=> b!664646 m!635939))

(declare-fun m!635941 () Bool)

(assert (=> b!664646 m!635941))

(assert (=> b!664646 m!635931))

(declare-fun m!635943 () Bool)

(assert (=> b!664646 m!635943))

(declare-fun m!635945 () Bool)

(assert (=> b!664646 m!635945))

(assert (=> b!664646 m!635925))

(declare-fun m!635947 () Bool)

(assert (=> b!664646 m!635947))

(declare-fun m!635949 () Bool)

(assert (=> b!664646 m!635949))

(assert (=> b!664646 m!635933))

(assert (=> b!664649 m!635935))

(declare-fun m!635951 () Bool)

(assert (=> b!664640 m!635951))

(declare-fun m!635953 () Bool)

(assert (=> b!664648 m!635953))

(declare-fun m!635955 () Bool)

(assert (=> b!664651 m!635955))

(declare-fun m!635957 () Bool)

(assert (=> b!664657 m!635957))

(declare-fun m!635959 () Bool)

(assert (=> b!664638 m!635959))

(declare-fun m!635961 () Bool)

(assert (=> b!664635 m!635961))

(assert (=> b!664658 m!635935))

(push 1)

(assert (not b!664646))

(assert (not b!664658))

(assert (not b!664647))

(assert (not b!664638))

(assert (not b!664635))

(assert (not b!664634))

(assert (not b!664657))

(assert (not start!59970))

(assert (not b!664645))

(assert (not b!664649))

(assert (not b!664644))

(assert (not b!664651))

(assert (not b!664652))

(assert (not b!664643))

(assert (not b!664639))

(assert (not b!664654))

(assert (not b!664653))

(assert (not b!664640))

(assert (not b!664648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

