; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61592 () Bool)

(assert start!61592)

(declare-fun b!688799 () Bool)

(declare-datatypes ((Unit!24297 0))(
  ( (Unit!24298) )
))
(declare-fun e!392247 () Unit!24297)

(declare-fun Unit!24299 () Unit!24297)

(assert (=> b!688799 (= e!392247 Unit!24299)))

(declare-fun b!688800 () Bool)

(declare-fun e!392253 () Bool)

(declare-datatypes ((List!13106 0))(
  ( (Nil!13103) (Cons!13102 (h!14147 (_ BitVec 64)) (t!19378 List!13106)) )
))
(declare-fun acc!681 () List!13106)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3649 (List!13106 (_ BitVec 64)) Bool)

(assert (=> b!688800 (= e!392253 (not (contains!3649 acc!681 k0!2843)))))

(declare-fun b!688801 () Bool)

(declare-fun e!392246 () Bool)

(assert (=> b!688801 (= e!392246 e!392253)))

(declare-fun res!453589 () Bool)

(assert (=> b!688801 (=> (not res!453589) (not e!392253))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!688801 (= res!453589 (bvsle from!3004 i!1382))))

(declare-fun b!688802 () Bool)

(declare-fun res!453604 () Bool)

(declare-fun e!392245 () Bool)

(assert (=> b!688802 (=> (not res!453604) (not e!392245))))

(assert (=> b!688802 (= res!453604 (not (contains!3649 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688803 () Bool)

(declare-fun res!453603 () Bool)

(assert (=> b!688803 (=> (not res!453603) (not e!392245))))

(declare-datatypes ((array!39689 0))(
  ( (array!39690 (arr!19012 (Array (_ BitVec 32) (_ BitVec 64))) (size!19393 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39689)

(assert (=> b!688803 (= res!453603 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19393 a!3626))))))

(declare-fun b!688804 () Bool)

(declare-fun res!453599 () Bool)

(assert (=> b!688804 (=> (not res!453599) (not e!392245))))

(declare-fun arrayContainsKey!0 (array!39689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688804 (= res!453599 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688805 () Bool)

(declare-fun e!392244 () Unit!24297)

(declare-fun lt!315947 () Unit!24297)

(assert (=> b!688805 (= e!392244 lt!315947)))

(declare-fun lt!315939 () Unit!24297)

(declare-fun lemmaListSubSeqRefl!0 (List!13106) Unit!24297)

(assert (=> b!688805 (= lt!315939 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!234 (List!13106 List!13106) Bool)

(assert (=> b!688805 (subseq!234 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39689 List!13106 List!13106 (_ BitVec 32)) Unit!24297)

(declare-fun $colon$colon!398 (List!13106 (_ BitVec 64)) List!13106)

(assert (=> b!688805 (= lt!315947 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!398 acc!681 (select (arr!19012 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39689 (_ BitVec 32) List!13106) Bool)

(assert (=> b!688805 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688806 () Bool)

(declare-fun res!453587 () Bool)

(declare-fun e!392248 () Bool)

(assert (=> b!688806 (=> res!453587 e!392248)))

(declare-fun lt!315946 () List!13106)

(assert (=> b!688806 (= res!453587 (contains!3649 lt!315946 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688807 () Bool)

(declare-fun Unit!24300 () Unit!24297)

(assert (=> b!688807 (= e!392244 Unit!24300)))

(declare-fun b!688808 () Bool)

(declare-fun res!453593 () Bool)

(assert (=> b!688808 (=> (not res!453593) (not e!392245))))

(assert (=> b!688808 (= res!453593 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13103))))

(declare-fun b!688809 () Bool)

(declare-fun res!453591 () Bool)

(assert (=> b!688809 (=> (not res!453591) (not e!392245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688809 (= res!453591 (validKeyInArray!0 k0!2843))))

(declare-fun b!688810 () Bool)

(assert (=> b!688810 (= e!392245 (not e!392248))))

(declare-fun res!453588 () Bool)

(assert (=> b!688810 (=> res!453588 e!392248)))

(assert (=> b!688810 (= res!453588 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!688810 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315946)))

(declare-fun lt!315945 () Unit!24297)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39689 (_ BitVec 64) (_ BitVec 32) List!13106 List!13106) Unit!24297)

(assert (=> b!688810 (= lt!315945 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315946))))

(declare-fun -!199 (List!13106 (_ BitVec 64)) List!13106)

(assert (=> b!688810 (= (-!199 lt!315946 k0!2843) acc!681)))

(assert (=> b!688810 (= lt!315946 ($colon$colon!398 acc!681 k0!2843))))

(declare-fun lt!315948 () Unit!24297)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13106) Unit!24297)

(assert (=> b!688810 (= lt!315948 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!688810 (subseq!234 acc!681 acc!681)))

(declare-fun lt!315944 () Unit!24297)

(assert (=> b!688810 (= lt!315944 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688810 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315943 () Unit!24297)

(assert (=> b!688810 (= lt!315943 e!392244)))

(declare-fun c!77974 () Bool)

(assert (=> b!688810 (= c!77974 (validKeyInArray!0 (select (arr!19012 a!3626) from!3004)))))

(declare-fun lt!315940 () Unit!24297)

(assert (=> b!688810 (= lt!315940 e!392247)))

(declare-fun c!77975 () Bool)

(assert (=> b!688810 (= c!77975 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688810 (arrayContainsKey!0 (array!39690 (store (arr!19012 a!3626) i!1382 k0!2843) (size!19393 a!3626)) k0!2843 from!3004)))

(declare-fun b!688811 () Bool)

(declare-fun res!453586 () Bool)

(assert (=> b!688811 (=> (not res!453586) (not e!392245))))

(assert (=> b!688811 (= res!453586 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19393 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!688812 () Bool)

(declare-fun e!392252 () Bool)

(assert (=> b!688812 (= e!392252 (contains!3649 acc!681 k0!2843))))

(declare-fun res!453595 () Bool)

(assert (=> start!61592 (=> (not res!453595) (not e!392245))))

(assert (=> start!61592 (= res!453595 (and (bvslt (size!19393 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19393 a!3626))))))

(assert (=> start!61592 e!392245))

(assert (=> start!61592 true))

(declare-fun array_inv!14786 (array!39689) Bool)

(assert (=> start!61592 (array_inv!14786 a!3626)))

(declare-fun b!688813 () Bool)

(declare-fun res!453590 () Bool)

(assert (=> b!688813 (=> res!453590 e!392248)))

(assert (=> b!688813 (= res!453590 (contains!3649 lt!315946 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688814 () Bool)

(declare-fun e!392250 () Bool)

(declare-fun e!392249 () Bool)

(assert (=> b!688814 (= e!392250 e!392249)))

(declare-fun res!453585 () Bool)

(assert (=> b!688814 (=> (not res!453585) (not e!392249))))

(assert (=> b!688814 (= res!453585 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688815 () Bool)

(declare-fun res!453598 () Bool)

(assert (=> b!688815 (=> (not res!453598) (not e!392245))))

(assert (=> b!688815 (= res!453598 (not (contains!3649 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688816 () Bool)

(declare-fun res!453592 () Bool)

(assert (=> b!688816 (=> (not res!453592) (not e!392245))))

(assert (=> b!688816 (= res!453592 e!392246)))

(declare-fun res!453602 () Bool)

(assert (=> b!688816 (=> res!453602 e!392246)))

(assert (=> b!688816 (= res!453602 e!392252)))

(declare-fun res!453594 () Bool)

(assert (=> b!688816 (=> (not res!453594) (not e!392252))))

(assert (=> b!688816 (= res!453594 (bvsgt from!3004 i!1382))))

(declare-fun b!688817 () Bool)

(declare-fun res!453596 () Bool)

(assert (=> b!688817 (=> (not res!453596) (not e!392245))))

(assert (=> b!688817 (= res!453596 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688818 () Bool)

(declare-fun res!453600 () Bool)

(assert (=> b!688818 (=> (not res!453600) (not e!392245))))

(declare-fun noDuplicate!896 (List!13106) Bool)

(assert (=> b!688818 (= res!453600 (noDuplicate!896 acc!681))))

(declare-fun b!688819 () Bool)

(declare-fun e!392254 () Bool)

(assert (=> b!688819 (= e!392254 (contains!3649 lt!315946 k0!2843))))

(declare-fun b!688820 () Bool)

(assert (=> b!688820 (= e!392249 (not (contains!3649 lt!315946 k0!2843)))))

(declare-fun b!688821 () Bool)

(assert (=> b!688821 (= e!392248 true)))

(declare-fun lt!315942 () Bool)

(assert (=> b!688821 (= lt!315942 e!392250)))

(declare-fun res!453597 () Bool)

(assert (=> b!688821 (=> res!453597 e!392250)))

(assert (=> b!688821 (= res!453597 e!392254)))

(declare-fun res!453601 () Bool)

(assert (=> b!688821 (=> (not res!453601) (not e!392254))))

(assert (=> b!688821 (= res!453601 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688822 () Bool)

(declare-fun res!453605 () Bool)

(assert (=> b!688822 (=> res!453605 e!392248)))

(assert (=> b!688822 (= res!453605 (not (noDuplicate!896 lt!315946)))))

(declare-fun b!688823 () Bool)

(declare-fun Unit!24301 () Unit!24297)

(assert (=> b!688823 (= e!392247 Unit!24301)))

(declare-fun lt!315941 () Unit!24297)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39689 (_ BitVec 64) (_ BitVec 32)) Unit!24297)

(assert (=> b!688823 (= lt!315941 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!688823 false))

(assert (= (and start!61592 res!453595) b!688818))

(assert (= (and b!688818 res!453600) b!688815))

(assert (= (and b!688815 res!453598) b!688802))

(assert (= (and b!688802 res!453604) b!688816))

(assert (= (and b!688816 res!453594) b!688812))

(assert (= (and b!688816 (not res!453602)) b!688801))

(assert (= (and b!688801 res!453589) b!688800))

(assert (= (and b!688816 res!453592) b!688808))

(assert (= (and b!688808 res!453593) b!688817))

(assert (= (and b!688817 res!453596) b!688803))

(assert (= (and b!688803 res!453603) b!688809))

(assert (= (and b!688809 res!453591) b!688804))

(assert (= (and b!688804 res!453599) b!688811))

(assert (= (and b!688811 res!453586) b!688810))

(assert (= (and b!688810 c!77975) b!688823))

(assert (= (and b!688810 (not c!77975)) b!688799))

(assert (= (and b!688810 c!77974) b!688805))

(assert (= (and b!688810 (not c!77974)) b!688807))

(assert (= (and b!688810 (not res!453588)) b!688822))

(assert (= (and b!688822 (not res!453605)) b!688813))

(assert (= (and b!688813 (not res!453590)) b!688806))

(assert (= (and b!688806 (not res!453587)) b!688821))

(assert (= (and b!688821 res!453601) b!688819))

(assert (= (and b!688821 (not res!453597)) b!688814))

(assert (= (and b!688814 res!453585) b!688820))

(declare-fun m!652633 () Bool)

(assert (=> b!688806 m!652633))

(declare-fun m!652635 () Bool)

(assert (=> b!688812 m!652635))

(declare-fun m!652637 () Bool)

(assert (=> b!688815 m!652637))

(declare-fun m!652639 () Bool)

(assert (=> b!688820 m!652639))

(declare-fun m!652641 () Bool)

(assert (=> b!688823 m!652641))

(declare-fun m!652643 () Bool)

(assert (=> b!688804 m!652643))

(declare-fun m!652645 () Bool)

(assert (=> start!61592 m!652645))

(assert (=> b!688819 m!652639))

(declare-fun m!652647 () Bool)

(assert (=> b!688802 m!652647))

(declare-fun m!652649 () Bool)

(assert (=> b!688817 m!652649))

(declare-fun m!652651 () Bool)

(assert (=> b!688810 m!652651))

(declare-fun m!652653 () Bool)

(assert (=> b!688810 m!652653))

(declare-fun m!652655 () Bool)

(assert (=> b!688810 m!652655))

(declare-fun m!652657 () Bool)

(assert (=> b!688810 m!652657))

(declare-fun m!652659 () Bool)

(assert (=> b!688810 m!652659))

(declare-fun m!652661 () Bool)

(assert (=> b!688810 m!652661))

(assert (=> b!688810 m!652655))

(declare-fun m!652663 () Bool)

(assert (=> b!688810 m!652663))

(declare-fun m!652665 () Bool)

(assert (=> b!688810 m!652665))

(declare-fun m!652667 () Bool)

(assert (=> b!688810 m!652667))

(declare-fun m!652669 () Bool)

(assert (=> b!688810 m!652669))

(declare-fun m!652671 () Bool)

(assert (=> b!688810 m!652671))

(declare-fun m!652673 () Bool)

(assert (=> b!688810 m!652673))

(declare-fun m!652675 () Bool)

(assert (=> b!688810 m!652675))

(assert (=> b!688800 m!652635))

(declare-fun m!652677 () Bool)

(assert (=> b!688808 m!652677))

(declare-fun m!652679 () Bool)

(assert (=> b!688813 m!652679))

(declare-fun m!652681 () Bool)

(assert (=> b!688809 m!652681))

(assert (=> b!688805 m!652651))

(assert (=> b!688805 m!652655))

(declare-fun m!652683 () Bool)

(assert (=> b!688805 m!652683))

(declare-fun m!652685 () Bool)

(assert (=> b!688805 m!652685))

(assert (=> b!688805 m!652655))

(assert (=> b!688805 m!652683))

(assert (=> b!688805 m!652671))

(assert (=> b!688805 m!652675))

(declare-fun m!652687 () Bool)

(assert (=> b!688822 m!652687))

(declare-fun m!652689 () Bool)

(assert (=> b!688818 m!652689))

(check-sat (not b!688810) (not b!688812) (not b!688818) (not b!688800) (not b!688802) (not b!688823) (not b!688822) (not b!688804) (not start!61592) (not b!688819) (not b!688820) (not b!688805) (not b!688815) (not b!688806) (not b!688808) (not b!688809) (not b!688817) (not b!688813))
