; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61002 () Bool)

(assert start!61002)

(declare-fun b!683766 () Bool)

(declare-fun res!449595 () Bool)

(declare-fun e!389485 () Bool)

(assert (=> b!683766 (=> (not res!449595) (not e!389485))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39567 0))(
  ( (array!39568 (arr!18960 (Array (_ BitVec 32) (_ BitVec 64))) (size!19326 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39567)

(assert (=> b!683766 (= res!449595 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19326 a!3626))))))

(declare-fun b!683767 () Bool)

(declare-fun res!449590 () Bool)

(assert (=> b!683767 (=> (not res!449590) (not e!389485))))

(declare-datatypes ((List!13054 0))(
  ( (Nil!13051) (Cons!13050 (h!14095 (_ BitVec 64)) (t!19308 List!13054)) )
))
(declare-fun acc!681 () List!13054)

(declare-fun contains!3597 (List!13054 (_ BitVec 64)) Bool)

(assert (=> b!683767 (= res!449590 (not (contains!3597 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683768 () Bool)

(declare-fun res!449604 () Bool)

(assert (=> b!683768 (=> (not res!449604) (not e!389485))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39567 (_ BitVec 32) List!13054) Bool)

(assert (=> b!683768 (= res!449604 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun res!449603 () Bool)

(assert (=> start!61002 (=> (not res!449603) (not e!389485))))

(assert (=> start!61002 (= res!449603 (and (bvslt (size!19326 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19326 a!3626))))))

(assert (=> start!61002 e!389485))

(assert (=> start!61002 true))

(declare-fun array_inv!14734 (array!39567) Bool)

(assert (=> start!61002 (array_inv!14734 a!3626)))

(declare-fun b!683769 () Bool)

(declare-fun e!389478 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!683769 (= e!389478 (contains!3597 acc!681 k!2843))))

(declare-fun b!683770 () Bool)

(declare-fun res!449606 () Bool)

(assert (=> b!683770 (=> (not res!449606) (not e!389485))))

(assert (=> b!683770 (= res!449606 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19326 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!683771 () Bool)

(declare-fun res!449596 () Bool)

(assert (=> b!683771 (=> (not res!449596) (not e!389485))))

(declare-fun noDuplicate!844 (List!13054) Bool)

(assert (=> b!683771 (= res!449596 (noDuplicate!844 acc!681))))

(declare-fun b!683772 () Bool)

(declare-fun res!449597 () Bool)

(declare-fun e!389480 () Bool)

(assert (=> b!683772 (=> res!449597 e!389480)))

(declare-fun lt!314060 () List!13054)

(assert (=> b!683772 (= res!449597 (not (noDuplicate!844 lt!314060)))))

(declare-fun b!683773 () Bool)

(declare-fun res!449602 () Bool)

(assert (=> b!683773 (=> (not res!449602) (not e!389485))))

(assert (=> b!683773 (= res!449602 (not (contains!3597 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683774 () Bool)

(declare-datatypes ((Unit!24037 0))(
  ( (Unit!24038) )
))
(declare-fun e!389481 () Unit!24037)

(declare-fun Unit!24039 () Unit!24037)

(assert (=> b!683774 (= e!389481 Unit!24039)))

(declare-fun lt!314056 () Unit!24037)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39567 (_ BitVec 64) (_ BitVec 32)) Unit!24037)

(assert (=> b!683774 (= lt!314056 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!683774 false))

(declare-fun b!683775 () Bool)

(declare-fun res!449599 () Bool)

(assert (=> b!683775 (=> (not res!449599) (not e!389485))))

(declare-fun arrayContainsKey!0 (array!39567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683775 (= res!449599 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683776 () Bool)

(declare-fun e!389479 () Unit!24037)

(declare-fun lt!314057 () Unit!24037)

(assert (=> b!683776 (= e!389479 lt!314057)))

(declare-fun lt!314061 () Unit!24037)

(declare-fun lemmaListSubSeqRefl!0 (List!13054) Unit!24037)

(assert (=> b!683776 (= lt!314061 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!182 (List!13054 List!13054) Bool)

(assert (=> b!683776 (subseq!182 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39567 List!13054 List!13054 (_ BitVec 32)) Unit!24037)

(declare-fun $colon$colon!346 (List!13054 (_ BitVec 64)) List!13054)

(assert (=> b!683776 (= lt!314057 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!346 acc!681 (select (arr!18960 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683776 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683777 () Bool)

(declare-fun res!449600 () Bool)

(assert (=> b!683777 (=> (not res!449600) (not e!389485))))

(assert (=> b!683777 (= res!449600 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13051))))

(declare-fun b!683778 () Bool)

(declare-fun Unit!24040 () Unit!24037)

(assert (=> b!683778 (= e!389481 Unit!24040)))

(declare-fun b!683779 () Bool)

(declare-fun res!449598 () Bool)

(assert (=> b!683779 (=> (not res!449598) (not e!389485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683779 (= res!449598 (validKeyInArray!0 k!2843))))

(declare-fun b!683780 () Bool)

(declare-fun e!389484 () Bool)

(assert (=> b!683780 (= e!389484 (not (contains!3597 acc!681 k!2843)))))

(declare-fun b!683781 () Bool)

(assert (=> b!683781 (= e!389485 (not e!389480))))

(declare-fun res!449605 () Bool)

(assert (=> b!683781 (=> res!449605 e!389480)))

(assert (=> b!683781 (= res!449605 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!147 (List!13054 (_ BitVec 64)) List!13054)

(assert (=> b!683781 (= (-!147 lt!314060 k!2843) acc!681)))

(assert (=> b!683781 (= lt!314060 ($colon$colon!346 acc!681 k!2843))))

(declare-fun lt!314054 () Unit!24037)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13054) Unit!24037)

(assert (=> b!683781 (= lt!314054 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!683781 (subseq!182 acc!681 acc!681)))

(declare-fun lt!314053 () Unit!24037)

(assert (=> b!683781 (= lt!314053 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683781 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314055 () Unit!24037)

(assert (=> b!683781 (= lt!314055 e!389479)))

(declare-fun c!77456 () Bool)

(assert (=> b!683781 (= c!77456 (validKeyInArray!0 (select (arr!18960 a!3626) from!3004)))))

(declare-fun lt!314058 () Unit!24037)

(assert (=> b!683781 (= lt!314058 e!389481)))

(declare-fun c!77455 () Bool)

(declare-fun lt!314059 () Bool)

(assert (=> b!683781 (= c!77455 lt!314059)))

(assert (=> b!683781 (= lt!314059 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683781 (arrayContainsKey!0 (array!39568 (store (arr!18960 a!3626) i!1382 k!2843) (size!19326 a!3626)) k!2843 from!3004)))

(declare-fun b!683782 () Bool)

(declare-fun Unit!24041 () Unit!24037)

(assert (=> b!683782 (= e!389479 Unit!24041)))

(declare-fun b!683783 () Bool)

(declare-fun res!449593 () Bool)

(assert (=> b!683783 (=> res!449593 e!389480)))

(assert (=> b!683783 (= res!449593 lt!314059)))

(declare-fun b!683784 () Bool)

(assert (=> b!683784 (= e!389480 (not (contains!3597 acc!681 k!2843)))))

(declare-fun b!683785 () Bool)

(declare-fun e!389483 () Bool)

(assert (=> b!683785 (= e!389483 e!389484)))

(declare-fun res!449601 () Bool)

(assert (=> b!683785 (=> (not res!449601) (not e!389484))))

(assert (=> b!683785 (= res!449601 (bvsle from!3004 i!1382))))

(declare-fun b!683786 () Bool)

(declare-fun res!449592 () Bool)

(assert (=> b!683786 (=> (not res!449592) (not e!389485))))

(assert (=> b!683786 (= res!449592 e!389483)))

(declare-fun res!449594 () Bool)

(assert (=> b!683786 (=> res!449594 e!389483)))

(assert (=> b!683786 (= res!449594 e!389478)))

(declare-fun res!449591 () Bool)

(assert (=> b!683786 (=> (not res!449591) (not e!389478))))

(assert (=> b!683786 (= res!449591 (bvsgt from!3004 i!1382))))

(assert (= (and start!61002 res!449603) b!683771))

(assert (= (and b!683771 res!449596) b!683773))

(assert (= (and b!683773 res!449602) b!683767))

(assert (= (and b!683767 res!449590) b!683786))

(assert (= (and b!683786 res!449591) b!683769))

(assert (= (and b!683786 (not res!449594)) b!683785))

(assert (= (and b!683785 res!449601) b!683780))

(assert (= (and b!683786 res!449592) b!683777))

(assert (= (and b!683777 res!449600) b!683768))

(assert (= (and b!683768 res!449604) b!683766))

(assert (= (and b!683766 res!449595) b!683779))

(assert (= (and b!683779 res!449598) b!683775))

(assert (= (and b!683775 res!449599) b!683770))

(assert (= (and b!683770 res!449606) b!683781))

(assert (= (and b!683781 c!77455) b!683774))

(assert (= (and b!683781 (not c!77455)) b!683778))

(assert (= (and b!683781 c!77456) b!683776))

(assert (= (and b!683781 (not c!77456)) b!683782))

(assert (= (and b!683781 (not res!449605)) b!683772))

(assert (= (and b!683772 (not res!449597)) b!683783))

(assert (= (and b!683783 (not res!449593)) b!683784))

(declare-fun m!648303 () Bool)

(assert (=> b!683771 m!648303))

(declare-fun m!648305 () Bool)

(assert (=> start!61002 m!648305))

(declare-fun m!648307 () Bool)

(assert (=> b!683777 m!648307))

(declare-fun m!648309 () Bool)

(assert (=> b!683769 m!648309))

(declare-fun m!648311 () Bool)

(assert (=> b!683768 m!648311))

(declare-fun m!648313 () Bool)

(assert (=> b!683772 m!648313))

(declare-fun m!648315 () Bool)

(assert (=> b!683776 m!648315))

(declare-fun m!648317 () Bool)

(assert (=> b!683776 m!648317))

(declare-fun m!648319 () Bool)

(assert (=> b!683776 m!648319))

(declare-fun m!648321 () Bool)

(assert (=> b!683776 m!648321))

(assert (=> b!683776 m!648317))

(assert (=> b!683776 m!648319))

(declare-fun m!648323 () Bool)

(assert (=> b!683776 m!648323))

(declare-fun m!648325 () Bool)

(assert (=> b!683776 m!648325))

(declare-fun m!648327 () Bool)

(assert (=> b!683779 m!648327))

(declare-fun m!648329 () Bool)

(assert (=> b!683767 m!648329))

(declare-fun m!648331 () Bool)

(assert (=> b!683781 m!648331))

(assert (=> b!683781 m!648315))

(assert (=> b!683781 m!648317))

(declare-fun m!648333 () Bool)

(assert (=> b!683781 m!648333))

(declare-fun m!648335 () Bool)

(assert (=> b!683781 m!648335))

(assert (=> b!683781 m!648323))

(declare-fun m!648337 () Bool)

(assert (=> b!683781 m!648337))

(declare-fun m!648339 () Bool)

(assert (=> b!683781 m!648339))

(assert (=> b!683781 m!648317))

(declare-fun m!648341 () Bool)

(assert (=> b!683781 m!648341))

(declare-fun m!648343 () Bool)

(assert (=> b!683781 m!648343))

(assert (=> b!683781 m!648325))

(declare-fun m!648345 () Bool)

(assert (=> b!683775 m!648345))

(declare-fun m!648347 () Bool)

(assert (=> b!683773 m!648347))

(assert (=> b!683780 m!648309))

(assert (=> b!683784 m!648309))

(declare-fun m!648349 () Bool)

(assert (=> b!683774 m!648349))

(push 1)

(assert (not b!683767))

(assert (not b!683771))

(assert (not b!683776))

(assert (not b!683773))

(assert (not b!683772))

(assert (not b!683775))

(assert (not b!683780))

(assert (not b!683768))

(assert (not b!683784))

(assert (not start!61002))

(assert (not b!683774))

(assert (not b!683779))

(assert (not b!683769))

(assert (not b!683781))

(assert (not b!683777))

(check-sat)

(pop 1)

(push 1)

(check-sat)

