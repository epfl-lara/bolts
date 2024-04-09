; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61192 () Bool)

(assert start!61192)

(declare-fun b!685390 () Bool)

(declare-fun res!450880 () Bool)

(declare-fun e!390339 () Bool)

(assert (=> b!685390 (=> (not res!450880) (not e!390339))))

(declare-fun e!390338 () Bool)

(assert (=> b!685390 (= res!450880 e!390338)))

(declare-fun res!450889 () Bool)

(assert (=> b!685390 (=> res!450889 e!390338)))

(declare-fun e!390341 () Bool)

(assert (=> b!685390 (= res!450889 e!390341)))

(declare-fun res!450895 () Bool)

(assert (=> b!685390 (=> (not res!450895) (not e!390341))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!685390 (= res!450895 (bvsgt from!3004 i!1382))))

(declare-fun b!685391 () Bool)

(declare-fun res!450884 () Bool)

(declare-fun e!390340 () Bool)

(assert (=> b!685391 (=> res!450884 e!390340)))

(declare-datatypes ((List!13071 0))(
  ( (Nil!13068) (Cons!13067 (h!14112 (_ BitVec 64)) (t!19331 List!13071)) )
))
(declare-fun acc!681 () List!13071)

(declare-fun lt!314662 () List!13071)

(declare-fun subseq!199 (List!13071 List!13071) Bool)

(assert (=> b!685391 (= res!450884 (not (subseq!199 acc!681 lt!314662)))))

(declare-fun b!685392 () Bool)

(declare-fun res!450882 () Bool)

(assert (=> b!685392 (=> (not res!450882) (not e!390339))))

(declare-fun contains!3614 (List!13071 (_ BitVec 64)) Bool)

(assert (=> b!685392 (= res!450882 (not (contains!3614 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!450896 () Bool)

(assert (=> start!61192 (=> (not res!450896) (not e!390339))))

(declare-datatypes ((array!39607 0))(
  ( (array!39608 (arr!18977 (Array (_ BitVec 32) (_ BitVec 64))) (size!19349 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39607)

(assert (=> start!61192 (= res!450896 (and (bvslt (size!19349 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19349 a!3626))))))

(assert (=> start!61192 e!390339))

(assert (=> start!61192 true))

(declare-fun array_inv!14751 (array!39607) Bool)

(assert (=> start!61192 (array_inv!14751 a!3626)))

(declare-fun b!685393 () Bool)

(declare-fun e!390343 () Bool)

(assert (=> b!685393 (= e!390338 e!390343)))

(declare-fun res!450888 () Bool)

(assert (=> b!685393 (=> (not res!450888) (not e!390343))))

(assert (=> b!685393 (= res!450888 (bvsle from!3004 i!1382))))

(declare-fun b!685394 () Bool)

(declare-datatypes ((Unit!24122 0))(
  ( (Unit!24123) )
))
(declare-fun e!390336 () Unit!24122)

(declare-fun Unit!24124 () Unit!24122)

(assert (=> b!685394 (= e!390336 Unit!24124)))

(declare-fun lt!314669 () Unit!24122)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39607 (_ BitVec 64) (_ BitVec 32)) Unit!24122)

(assert (=> b!685394 (= lt!314669 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!685394 false))

(declare-fun b!685395 () Bool)

(declare-fun res!450879 () Bool)

(assert (=> b!685395 (=> (not res!450879) (not e!390339))))

(assert (=> b!685395 (= res!450879 (not (contains!3614 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!685396 () Bool)

(declare-fun res!450878 () Bool)

(assert (=> b!685396 (=> (not res!450878) (not e!390339))))

(declare-fun arrayNoDuplicates!0 (array!39607 (_ BitVec 32) List!13071) Bool)

(assert (=> b!685396 (= res!450878 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13068))))

(declare-fun b!685397 () Bool)

(declare-fun res!450894 () Bool)

(assert (=> b!685397 (=> (not res!450894) (not e!390339))))

(assert (=> b!685397 (= res!450894 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19349 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!685398 () Bool)

(declare-fun res!450883 () Bool)

(assert (=> b!685398 (=> (not res!450883) (not e!390339))))

(assert (=> b!685398 (= res!450883 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!685399 () Bool)

(declare-fun res!450886 () Bool)

(assert (=> b!685399 (=> res!450886 e!390340)))

(assert (=> b!685399 (= res!450886 (contains!3614 acc!681 k!2843))))

(declare-fun b!685400 () Bool)

(declare-fun res!450885 () Bool)

(assert (=> b!685400 (=> (not res!450885) (not e!390339))))

(declare-fun arrayContainsKey!0 (array!39607 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!685400 (= res!450885 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!685401 () Bool)

(assert (=> b!685401 (= e!390340 true)))

(declare-fun lt!314667 () Bool)

(assert (=> b!685401 (= lt!314667 (contains!3614 lt!314662 k!2843))))

(declare-fun b!685402 () Bool)

(declare-fun res!450893 () Bool)

(assert (=> b!685402 (=> (not res!450893) (not e!390339))))

(declare-fun noDuplicate!861 (List!13071) Bool)

(assert (=> b!685402 (= res!450893 (noDuplicate!861 acc!681))))

(declare-fun b!685403 () Bool)

(declare-fun e!390342 () Unit!24122)

(declare-fun Unit!24125 () Unit!24122)

(assert (=> b!685403 (= e!390342 Unit!24125)))

(declare-fun b!685404 () Bool)

(assert (=> b!685404 (= e!390339 (not e!390340))))

(declare-fun res!450891 () Bool)

(assert (=> b!685404 (=> res!450891 e!390340)))

(assert (=> b!685404 (= res!450891 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!164 (List!13071 (_ BitVec 64)) List!13071)

(assert (=> b!685404 (= (-!164 lt!314662 k!2843) acc!681)))

(declare-fun $colon$colon!363 (List!13071 (_ BitVec 64)) List!13071)

(assert (=> b!685404 (= lt!314662 ($colon$colon!363 acc!681 k!2843))))

(declare-fun lt!314665 () Unit!24122)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13071) Unit!24122)

(assert (=> b!685404 (= lt!314665 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!685404 (subseq!199 acc!681 acc!681)))

(declare-fun lt!314668 () Unit!24122)

(declare-fun lemmaListSubSeqRefl!0 (List!13071) Unit!24122)

(assert (=> b!685404 (= lt!314668 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685404 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314661 () Unit!24122)

(assert (=> b!685404 (= lt!314661 e!390342)))

(declare-fun c!77624 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!685404 (= c!77624 (validKeyInArray!0 (select (arr!18977 a!3626) from!3004)))))

(declare-fun lt!314666 () Unit!24122)

(assert (=> b!685404 (= lt!314666 e!390336)))

(declare-fun c!77623 () Bool)

(declare-fun lt!314670 () Bool)

(assert (=> b!685404 (= c!77623 lt!314670)))

(assert (=> b!685404 (= lt!314670 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685404 (arrayContainsKey!0 (array!39608 (store (arr!18977 a!3626) i!1382 k!2843) (size!19349 a!3626)) k!2843 from!3004)))

(declare-fun b!685405 () Bool)

(declare-fun Unit!24126 () Unit!24122)

(assert (=> b!685405 (= e!390336 Unit!24126)))

(declare-fun b!685406 () Bool)

(declare-fun res!450892 () Bool)

(assert (=> b!685406 (=> (not res!450892) (not e!390339))))

(assert (=> b!685406 (= res!450892 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19349 a!3626))))))

(declare-fun b!685407 () Bool)

(declare-fun res!450890 () Bool)

(assert (=> b!685407 (=> res!450890 e!390340)))

(assert (=> b!685407 (= res!450890 (not (noDuplicate!861 lt!314662)))))

(declare-fun b!685408 () Bool)

(assert (=> b!685408 (= e!390343 (not (contains!3614 acc!681 k!2843)))))

(declare-fun b!685409 () Bool)

(declare-fun res!450881 () Bool)

(assert (=> b!685409 (=> (not res!450881) (not e!390339))))

(assert (=> b!685409 (= res!450881 (validKeyInArray!0 k!2843))))

(declare-fun b!685410 () Bool)

(declare-fun lt!314664 () Unit!24122)

(assert (=> b!685410 (= e!390342 lt!314664)))

(declare-fun lt!314663 () Unit!24122)

(assert (=> b!685410 (= lt!314663 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!685410 (subseq!199 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39607 List!13071 List!13071 (_ BitVec 32)) Unit!24122)

(assert (=> b!685410 (= lt!314664 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!363 acc!681 (select (arr!18977 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!685410 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!685411 () Bool)

(declare-fun res!450887 () Bool)

(assert (=> b!685411 (=> res!450887 e!390340)))

(assert (=> b!685411 (= res!450887 lt!314670)))

(declare-fun b!685412 () Bool)

(assert (=> b!685412 (= e!390341 (contains!3614 acc!681 k!2843))))

(assert (= (and start!61192 res!450896) b!685402))

(assert (= (and b!685402 res!450893) b!685392))

(assert (= (and b!685392 res!450882) b!685395))

(assert (= (and b!685395 res!450879) b!685390))

(assert (= (and b!685390 res!450895) b!685412))

(assert (= (and b!685390 (not res!450889)) b!685393))

(assert (= (and b!685393 res!450888) b!685408))

(assert (= (and b!685390 res!450880) b!685396))

(assert (= (and b!685396 res!450878) b!685398))

(assert (= (and b!685398 res!450883) b!685406))

(assert (= (and b!685406 res!450892) b!685409))

(assert (= (and b!685409 res!450881) b!685400))

(assert (= (and b!685400 res!450885) b!685397))

(assert (= (and b!685397 res!450894) b!685404))

(assert (= (and b!685404 c!77623) b!685394))

(assert (= (and b!685404 (not c!77623)) b!685405))

(assert (= (and b!685404 c!77624) b!685410))

(assert (= (and b!685404 (not c!77624)) b!685403))

(assert (= (and b!685404 (not res!450891)) b!685407))

(assert (= (and b!685407 (not res!450890)) b!685411))

(assert (= (and b!685411 (not res!450887)) b!685399))

(assert (= (and b!685399 (not res!450886)) b!685391))

(assert (= (and b!685391 (not res!450884)) b!685401))

(declare-fun m!649637 () Bool)

(assert (=> b!685391 m!649637))

(declare-fun m!649639 () Bool)

(assert (=> b!685407 m!649639))

(declare-fun m!649641 () Bool)

(assert (=> b!685401 m!649641))

(declare-fun m!649643 () Bool)

(assert (=> b!685392 m!649643))

(declare-fun m!649645 () Bool)

(assert (=> b!685399 m!649645))

(assert (=> b!685408 m!649645))

(declare-fun m!649647 () Bool)

(assert (=> b!685402 m!649647))

(declare-fun m!649649 () Bool)

(assert (=> b!685398 m!649649))

(assert (=> b!685412 m!649645))

(declare-fun m!649651 () Bool)

(assert (=> b!685400 m!649651))

(declare-fun m!649653 () Bool)

(assert (=> b!685396 m!649653))

(declare-fun m!649655 () Bool)

(assert (=> b!685395 m!649655))

(declare-fun m!649657 () Bool)

(assert (=> start!61192 m!649657))

(declare-fun m!649659 () Bool)

(assert (=> b!685410 m!649659))

(declare-fun m!649661 () Bool)

(assert (=> b!685410 m!649661))

(declare-fun m!649663 () Bool)

(assert (=> b!685410 m!649663))

(declare-fun m!649665 () Bool)

(assert (=> b!685410 m!649665))

(assert (=> b!685410 m!649661))

(assert (=> b!685410 m!649663))

(declare-fun m!649667 () Bool)

(assert (=> b!685410 m!649667))

(declare-fun m!649669 () Bool)

(assert (=> b!685410 m!649669))

(declare-fun m!649671 () Bool)

(assert (=> b!685394 m!649671))

(assert (=> b!685404 m!649659))

(assert (=> b!685404 m!649661))

(declare-fun m!649673 () Bool)

(assert (=> b!685404 m!649673))

(declare-fun m!649675 () Bool)

(assert (=> b!685404 m!649675))

(declare-fun m!649677 () Bool)

(assert (=> b!685404 m!649677))

(assert (=> b!685404 m!649667))

(declare-fun m!649679 () Bool)

(assert (=> b!685404 m!649679))

(declare-fun m!649681 () Bool)

(assert (=> b!685404 m!649681))

(assert (=> b!685404 m!649661))

(declare-fun m!649683 () Bool)

(assert (=> b!685404 m!649683))

(declare-fun m!649685 () Bool)

(assert (=> b!685404 m!649685))

(assert (=> b!685404 m!649669))

(declare-fun m!649687 () Bool)

(assert (=> b!685409 m!649687))

(push 1)

(assert (not b!685398))

(assert (not b!685412))

(assert (not b!685394))

(assert (not b!685404))

(assert (not b!685401))

(assert (not b!685396))

(assert (not b!685407))

(assert (not b!685400))

(assert (not b!685409))

(assert (not b!685408))

(assert (not b!685410))

(assert (not start!61192))

(assert (not b!685392))

(assert (not b!685395))

(assert (not b!685402))

(assert (not b!685399))

(assert (not b!685391))

(check-sat)

