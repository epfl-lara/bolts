; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59964 () Bool)

(assert start!59964)

(declare-fun b!664409 () Bool)

(declare-datatypes ((Unit!23155 0))(
  ( (Unit!23156) )
))
(declare-fun e!380983 () Unit!23155)

(declare-fun Unit!23157 () Unit!23155)

(assert (=> b!664409 (= e!380983 Unit!23157)))

(declare-fun b!664410 () Bool)

(declare-fun res!432248 () Bool)

(declare-fun e!380980 () Bool)

(assert (=> b!664410 (=> (not res!432248) (not e!380980))))

(declare-datatypes ((List!12766 0))(
  ( (Nil!12763) (Cons!12762 (h!13807 (_ BitVec 64)) (t!19002 List!12766)) )
))
(declare-fun acc!681 () List!12766)

(declare-fun contains!3309 (List!12766 (_ BitVec 64)) Bool)

(assert (=> b!664410 (= res!432248 (not (contains!3309 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664411 () Bool)

(declare-fun e!380979 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!664411 (= e!380979 (not (contains!3309 acc!681 k!2843)))))

(declare-fun b!664412 () Bool)

(declare-fun res!432251 () Bool)

(declare-fun e!380985 () Bool)

(assert (=> b!664412 (=> res!432251 e!380985)))

(assert (=> b!664412 (= res!432251 (contains!3309 acc!681 k!2843))))

(declare-fun b!664413 () Bool)

(declare-fun e!380984 () Unit!23155)

(declare-fun Unit!23158 () Unit!23155)

(assert (=> b!664413 (= e!380984 Unit!23158)))

(declare-fun b!664414 () Bool)

(declare-fun res!432247 () Bool)

(assert (=> b!664414 (=> (not res!432247) (not e!380980))))

(assert (=> b!664414 (= res!432247 (not (contains!3309 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!664415 () Bool)

(declare-fun res!432243 () Bool)

(assert (=> b!664415 (=> res!432243 e!380985)))

(declare-fun lt!309635 () List!12766)

(assert (=> b!664415 (= res!432243 (contains!3309 lt!309635 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664416 () Bool)

(declare-fun res!432252 () Bool)

(assert (=> b!664416 (=> res!432252 e!380985)))

(assert (=> b!664416 (= res!432252 (not (contains!3309 lt!309635 k!2843)))))

(declare-fun b!664417 () Bool)

(declare-fun res!432249 () Bool)

(assert (=> b!664417 (=> res!432249 e!380985)))

(declare-fun lt!309636 () Bool)

(assert (=> b!664417 (= res!432249 lt!309636)))

(declare-fun b!664418 () Bool)

(declare-fun res!432261 () Bool)

(assert (=> b!664418 (=> (not res!432261) (not e!380980))))

(declare-datatypes ((array!38967 0))(
  ( (array!38968 (arr!18672 (Array (_ BitVec 32) (_ BitVec 64))) (size!19036 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38967)

(declare-fun arrayContainsKey!0 (array!38967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!664418 (= res!432261 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun res!432260 () Bool)

(assert (=> start!59964 (=> (not res!432260) (not e!380980))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59964 (= res!432260 (and (bvslt (size!19036 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19036 a!3626))))))

(assert (=> start!59964 e!380980))

(assert (=> start!59964 true))

(declare-fun array_inv!14446 (array!38967) Bool)

(assert (=> start!59964 (array_inv!14446 a!3626)))

(declare-fun b!664419 () Bool)

(declare-fun res!432244 () Bool)

(assert (=> b!664419 (=> (not res!432244) (not e!380980))))

(declare-fun arrayNoDuplicates!0 (array!38967 (_ BitVec 32) List!12766) Bool)

(assert (=> b!664419 (= res!432244 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!664420 () Bool)

(declare-fun e!380981 () Bool)

(assert (=> b!664420 (= e!380981 e!380979)))

(declare-fun res!432262 () Bool)

(assert (=> b!664420 (=> (not res!432262) (not e!380979))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!664420 (= res!432262 (bvsle from!3004 i!1382))))

(declare-fun b!664421 () Bool)

(declare-fun e!380982 () Bool)

(assert (=> b!664421 (= e!380982 (contains!3309 acc!681 k!2843))))

(declare-fun b!664422 () Bool)

(declare-fun res!432254 () Bool)

(assert (=> b!664422 (=> res!432254 e!380985)))

(declare-fun subseq!47 (List!12766 List!12766) Bool)

(assert (=> b!664422 (= res!432254 (not (subseq!47 acc!681 lt!309635)))))

(declare-fun b!664423 () Bool)

(declare-fun lt!309638 () Unit!23155)

(assert (=> b!664423 (= e!380984 lt!309638)))

(declare-fun lt!309640 () Unit!23155)

(declare-fun lemmaListSubSeqRefl!0 (List!12766) Unit!23155)

(assert (=> b!664423 (= lt!309640 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664423 (subseq!47 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38967 List!12766 List!12766 (_ BitVec 32)) Unit!23155)

(declare-fun $colon$colon!178 (List!12766 (_ BitVec 64)) List!12766)

(assert (=> b!664423 (= lt!309638 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!178 acc!681 (select (arr!18672 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664423 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!664424 () Bool)

(assert (=> b!664424 (= e!380985 true)))

(declare-fun lt!309637 () Bool)

(assert (=> b!664424 (= lt!309637 (contains!3309 lt!309635 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!664425 () Bool)

(declare-fun res!432256 () Bool)

(assert (=> b!664425 (=> (not res!432256) (not e!380980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!664425 (= res!432256 (validKeyInArray!0 k!2843))))

(declare-fun b!664426 () Bool)

(declare-fun Unit!23159 () Unit!23155)

(assert (=> b!664426 (= e!380983 Unit!23159)))

(declare-fun lt!309633 () Unit!23155)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38967 (_ BitVec 64) (_ BitVec 32)) Unit!23155)

(assert (=> b!664426 (= lt!309633 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!664426 false))

(declare-fun b!664427 () Bool)

(declare-fun res!432246 () Bool)

(assert (=> b!664427 (=> (not res!432246) (not e!380980))))

(assert (=> b!664427 (= res!432246 e!380981)))

(declare-fun res!432255 () Bool)

(assert (=> b!664427 (=> res!432255 e!380981)))

(assert (=> b!664427 (= res!432255 e!380982)))

(declare-fun res!432258 () Bool)

(assert (=> b!664427 (=> (not res!432258) (not e!380982))))

(assert (=> b!664427 (= res!432258 (bvsgt from!3004 i!1382))))

(declare-fun b!664428 () Bool)

(declare-fun res!432257 () Bool)

(assert (=> b!664428 (=> res!432257 e!380985)))

(declare-fun noDuplicate!556 (List!12766) Bool)

(assert (=> b!664428 (= res!432257 (not (noDuplicate!556 lt!309635)))))

(declare-fun b!664429 () Bool)

(declare-fun res!432245 () Bool)

(assert (=> b!664429 (=> (not res!432245) (not e!380980))))

(assert (=> b!664429 (= res!432245 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19036 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!664430 () Bool)

(declare-fun res!432253 () Bool)

(assert (=> b!664430 (=> (not res!432253) (not e!380980))))

(assert (=> b!664430 (= res!432253 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19036 a!3626))))))

(declare-fun b!664431 () Bool)

(declare-fun res!432250 () Bool)

(assert (=> b!664431 (=> (not res!432250) (not e!380980))))

(assert (=> b!664431 (= res!432250 (noDuplicate!556 acc!681))))

(declare-fun b!664432 () Bool)

(assert (=> b!664432 (= e!380980 (not e!380985))))

(declare-fun res!432263 () Bool)

(assert (=> b!664432 (=> res!432263 e!380985)))

(assert (=> b!664432 (= res!432263 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!45 (List!12766 (_ BitVec 64)) List!12766)

(assert (=> b!664432 (= (-!45 lt!309635 k!2843) acc!681)))

(assert (=> b!664432 (= lt!309635 ($colon$colon!178 acc!681 k!2843))))

(declare-fun lt!309634 () Unit!23155)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12766) Unit!23155)

(assert (=> b!664432 (= lt!309634 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!664432 (subseq!47 acc!681 acc!681)))

(declare-fun lt!309641 () Unit!23155)

(assert (=> b!664432 (= lt!309641 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!664432 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309642 () Unit!23155)

(assert (=> b!664432 (= lt!309642 e!380984)))

(declare-fun c!76450 () Bool)

(assert (=> b!664432 (= c!76450 (validKeyInArray!0 (select (arr!18672 a!3626) from!3004)))))

(declare-fun lt!309639 () Unit!23155)

(assert (=> b!664432 (= lt!309639 e!380983)))

(declare-fun c!76451 () Bool)

(assert (=> b!664432 (= c!76451 lt!309636)))

(assert (=> b!664432 (= lt!309636 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!664432 (arrayContainsKey!0 (array!38968 (store (arr!18672 a!3626) i!1382 k!2843) (size!19036 a!3626)) k!2843 from!3004)))

(declare-fun b!664433 () Bool)

(declare-fun res!432259 () Bool)

(assert (=> b!664433 (=> (not res!432259) (not e!380980))))

(assert (=> b!664433 (= res!432259 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12763))))

(assert (= (and start!59964 res!432260) b!664431))

(assert (= (and b!664431 res!432250) b!664414))

(assert (= (and b!664414 res!432247) b!664410))

(assert (= (and b!664410 res!432248) b!664427))

(assert (= (and b!664427 res!432258) b!664421))

(assert (= (and b!664427 (not res!432255)) b!664420))

(assert (= (and b!664420 res!432262) b!664411))

(assert (= (and b!664427 res!432246) b!664433))

(assert (= (and b!664433 res!432259) b!664419))

(assert (= (and b!664419 res!432244) b!664430))

(assert (= (and b!664430 res!432253) b!664425))

(assert (= (and b!664425 res!432256) b!664418))

(assert (= (and b!664418 res!432261) b!664429))

(assert (= (and b!664429 res!432245) b!664432))

(assert (= (and b!664432 c!76451) b!664426))

(assert (= (and b!664432 (not c!76451)) b!664409))

(assert (= (and b!664432 c!76450) b!664423))

(assert (= (and b!664432 (not c!76450)) b!664413))

(assert (= (and b!664432 (not res!432263)) b!664428))

(assert (= (and b!664428 (not res!432257)) b!664417))

(assert (= (and b!664417 (not res!432249)) b!664412))

(assert (= (and b!664412 (not res!432251)) b!664422))

(assert (= (and b!664422 (not res!432254)) b!664416))

(assert (= (and b!664416 (not res!432252)) b!664415))

(assert (= (and b!664415 (not res!432243)) b!664424))

(declare-fun m!635739 () Bool)

(assert (=> b!664415 m!635739))

(declare-fun m!635741 () Bool)

(assert (=> b!664421 m!635741))

(assert (=> b!664411 m!635741))

(declare-fun m!635743 () Bool)

(assert (=> b!664419 m!635743))

(declare-fun m!635745 () Bool)

(assert (=> start!59964 m!635745))

(declare-fun m!635747 () Bool)

(assert (=> b!664426 m!635747))

(declare-fun m!635749 () Bool)

(assert (=> b!664432 m!635749))

(declare-fun m!635751 () Bool)

(assert (=> b!664432 m!635751))

(declare-fun m!635753 () Bool)

(assert (=> b!664432 m!635753))

(declare-fun m!635755 () Bool)

(assert (=> b!664432 m!635755))

(declare-fun m!635757 () Bool)

(assert (=> b!664432 m!635757))

(declare-fun m!635759 () Bool)

(assert (=> b!664432 m!635759))

(declare-fun m!635761 () Bool)

(assert (=> b!664432 m!635761))

(declare-fun m!635763 () Bool)

(assert (=> b!664432 m!635763))

(assert (=> b!664432 m!635753))

(declare-fun m!635765 () Bool)

(assert (=> b!664432 m!635765))

(declare-fun m!635767 () Bool)

(assert (=> b!664432 m!635767))

(declare-fun m!635769 () Bool)

(assert (=> b!664432 m!635769))

(declare-fun m!635771 () Bool)

(assert (=> b!664433 m!635771))

(declare-fun m!635773 () Bool)

(assert (=> b!664425 m!635773))

(declare-fun m!635775 () Bool)

(assert (=> b!664410 m!635775))

(declare-fun m!635777 () Bool)

(assert (=> b!664431 m!635777))

(declare-fun m!635779 () Bool)

(assert (=> b!664424 m!635779))

(declare-fun m!635781 () Bool)

(assert (=> b!664414 m!635781))

(declare-fun m!635783 () Bool)

(assert (=> b!664416 m!635783))

(declare-fun m!635785 () Bool)

(assert (=> b!664428 m!635785))

(declare-fun m!635787 () Bool)

(assert (=> b!664418 m!635787))

(assert (=> b!664423 m!635751))

(assert (=> b!664423 m!635753))

(declare-fun m!635789 () Bool)

(assert (=> b!664423 m!635789))

(declare-fun m!635791 () Bool)

(assert (=> b!664423 m!635791))

(assert (=> b!664423 m!635753))

(assert (=> b!664423 m!635789))

(assert (=> b!664423 m!635759))

(assert (=> b!664423 m!635769))

(assert (=> b!664412 m!635741))

(declare-fun m!635793 () Bool)

(assert (=> b!664422 m!635793))

(push 1)

(assert (not b!664414))

(assert (not b!664418))

(assert (not b!664421))

(assert (not b!664416))

(assert (not b!664412))

(assert (not b!664419))

(assert (not b!664433))

(assert (not b!664422))

(assert (not b!664411))

(assert (not b!664410))

(assert (not start!59964))

(assert (not b!664431))

(assert (not b!664424))

(assert (not b!664432))

(assert (not b!664428))

(assert (not b!664426))

(assert (not b!664425))

(assert (not b!664415))

(assert (not b!664423))

(check-sat)

