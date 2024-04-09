; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61004 () Bool)

(assert start!61004)

(declare-fun b!683829 () Bool)

(declare-datatypes ((Unit!24042 0))(
  ( (Unit!24043) )
))
(declare-fun e!389502 () Unit!24042)

(declare-fun Unit!24044 () Unit!24042)

(assert (=> b!683829 (= e!389502 Unit!24044)))

(declare-fun lt!314083 () Unit!24042)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!39569 0))(
  ( (array!39570 (arr!18961 (Array (_ BitVec 32) (_ BitVec 64))) (size!19327 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39569)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39569 (_ BitVec 64) (_ BitVec 32)) Unit!24042)

(assert (=> b!683829 (= lt!314083 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!683829 false))

(declare-fun b!683831 () Bool)

(declare-fun e!389508 () Bool)

(declare-datatypes ((List!13055 0))(
  ( (Nil!13052) (Cons!13051 (h!14096 (_ BitVec 64)) (t!19309 List!13055)) )
))
(declare-fun acc!681 () List!13055)

(declare-fun contains!3598 (List!13055 (_ BitVec 64)) Bool)

(assert (=> b!683831 (= e!389508 (contains!3598 acc!681 k0!2843))))

(declare-fun b!683832 () Bool)

(declare-fun res!449648 () Bool)

(declare-fun e!389509 () Bool)

(assert (=> b!683832 (=> (not res!449648) (not e!389509))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!683832 (= res!449648 (validKeyInArray!0 k0!2843))))

(declare-fun b!683833 () Bool)

(declare-fun res!449657 () Bool)

(assert (=> b!683833 (=> (not res!449657) (not e!389509))))

(declare-fun arrayNoDuplicates!0 (array!39569 (_ BitVec 32) List!13055) Bool)

(assert (=> b!683833 (= res!449657 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13052))))

(declare-fun b!683834 () Bool)

(declare-fun res!449650 () Bool)

(assert (=> b!683834 (=> (not res!449650) (not e!389509))))

(assert (=> b!683834 (= res!449650 (not (contains!3598 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683835 () Bool)

(declare-fun e!389503 () Unit!24042)

(declare-fun Unit!24045 () Unit!24042)

(assert (=> b!683835 (= e!389503 Unit!24045)))

(declare-fun b!683836 () Bool)

(declare-fun res!449647 () Bool)

(assert (=> b!683836 (=> (not res!449647) (not e!389509))))

(declare-fun arrayContainsKey!0 (array!39569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!683836 (= res!449647 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!683837 () Bool)

(declare-fun lt!314082 () Unit!24042)

(assert (=> b!683837 (= e!389503 lt!314082)))

(declare-fun lt!314088 () Unit!24042)

(declare-fun lemmaListSubSeqRefl!0 (List!13055) Unit!24042)

(assert (=> b!683837 (= lt!314088 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!183 (List!13055 List!13055) Bool)

(assert (=> b!683837 (subseq!183 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39569 List!13055 List!13055 (_ BitVec 32)) Unit!24042)

(declare-fun $colon$colon!347 (List!13055 (_ BitVec 64)) List!13055)

(assert (=> b!683837 (= lt!314082 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!347 acc!681 (select (arr!18961 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683837 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!683838 () Bool)

(declare-fun res!449655 () Bool)

(assert (=> b!683838 (=> (not res!449655) (not e!389509))))

(declare-fun noDuplicate!845 (List!13055) Bool)

(assert (=> b!683838 (= res!449655 (noDuplicate!845 acc!681))))

(declare-fun b!683839 () Bool)

(declare-fun e!389505 () Bool)

(assert (=> b!683839 (= e!389505 (not (contains!3598 acc!681 k0!2843)))))

(declare-fun b!683840 () Bool)

(declare-fun res!449653 () Bool)

(assert (=> b!683840 (=> (not res!449653) (not e!389509))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!683840 (= res!449653 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19327 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!449649 () Bool)

(assert (=> start!61004 (=> (not res!449649) (not e!389509))))

(assert (=> start!61004 (= res!449649 (and (bvslt (size!19327 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19327 a!3626))))))

(assert (=> start!61004 e!389509))

(assert (=> start!61004 true))

(declare-fun array_inv!14735 (array!39569) Bool)

(assert (=> start!61004 (array_inv!14735 a!3626)))

(declare-fun b!683830 () Bool)

(declare-fun res!449642 () Bool)

(assert (=> b!683830 (=> (not res!449642) (not e!389509))))

(assert (=> b!683830 (= res!449642 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19327 a!3626))))))

(declare-fun b!683841 () Bool)

(declare-fun Unit!24046 () Unit!24042)

(assert (=> b!683841 (= e!389502 Unit!24046)))

(declare-fun b!683842 () Bool)

(declare-fun res!449651 () Bool)

(assert (=> b!683842 (=> (not res!449651) (not e!389509))))

(assert (=> b!683842 (= res!449651 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!683843 () Bool)

(declare-fun e!389507 () Bool)

(assert (=> b!683843 (= e!389507 (not (contains!3598 acc!681 k0!2843)))))

(declare-fun b!683844 () Bool)

(declare-fun res!449645 () Bool)

(assert (=> b!683844 (=> (not res!449645) (not e!389509))))

(assert (=> b!683844 (= res!449645 (not (contains!3598 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!683845 () Bool)

(declare-fun res!449652 () Bool)

(assert (=> b!683845 (=> res!449652 e!389505)))

(declare-fun lt!314085 () List!13055)

(assert (=> b!683845 (= res!449652 (not (noDuplicate!845 lt!314085)))))

(declare-fun b!683846 () Bool)

(declare-fun res!449641 () Bool)

(assert (=> b!683846 (=> (not res!449641) (not e!389509))))

(declare-fun e!389506 () Bool)

(assert (=> b!683846 (= res!449641 e!389506)))

(declare-fun res!449643 () Bool)

(assert (=> b!683846 (=> res!449643 e!389506)))

(assert (=> b!683846 (= res!449643 e!389508)))

(declare-fun res!449646 () Bool)

(assert (=> b!683846 (=> (not res!449646) (not e!389508))))

(assert (=> b!683846 (= res!449646 (bvsgt from!3004 i!1382))))

(declare-fun b!683847 () Bool)

(declare-fun res!449644 () Bool)

(assert (=> b!683847 (=> res!449644 e!389505)))

(declare-fun lt!314087 () Bool)

(assert (=> b!683847 (= res!449644 lt!314087)))

(declare-fun b!683848 () Bool)

(assert (=> b!683848 (= e!389509 (not e!389505))))

(declare-fun res!449656 () Bool)

(assert (=> b!683848 (=> res!449656 e!389505)))

(assert (=> b!683848 (= res!449656 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!148 (List!13055 (_ BitVec 64)) List!13055)

(assert (=> b!683848 (= (-!148 lt!314085 k0!2843) acc!681)))

(assert (=> b!683848 (= lt!314085 ($colon$colon!347 acc!681 k0!2843))))

(declare-fun lt!314084 () Unit!24042)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13055) Unit!24042)

(assert (=> b!683848 (= lt!314084 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!683848 (subseq!183 acc!681 acc!681)))

(declare-fun lt!314086 () Unit!24042)

(assert (=> b!683848 (= lt!314086 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!683848 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314080 () Unit!24042)

(assert (=> b!683848 (= lt!314080 e!389503)))

(declare-fun c!77461 () Bool)

(assert (=> b!683848 (= c!77461 (validKeyInArray!0 (select (arr!18961 a!3626) from!3004)))))

(declare-fun lt!314081 () Unit!24042)

(assert (=> b!683848 (= lt!314081 e!389502)))

(declare-fun c!77462 () Bool)

(assert (=> b!683848 (= c!77462 lt!314087)))

(assert (=> b!683848 (= lt!314087 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!683848 (arrayContainsKey!0 (array!39570 (store (arr!18961 a!3626) i!1382 k0!2843) (size!19327 a!3626)) k0!2843 from!3004)))

(declare-fun b!683849 () Bool)

(assert (=> b!683849 (= e!389506 e!389507)))

(declare-fun res!449654 () Bool)

(assert (=> b!683849 (=> (not res!449654) (not e!389507))))

(assert (=> b!683849 (= res!449654 (bvsle from!3004 i!1382))))

(assert (= (and start!61004 res!449649) b!683838))

(assert (= (and b!683838 res!449655) b!683844))

(assert (= (and b!683844 res!449645) b!683834))

(assert (= (and b!683834 res!449650) b!683846))

(assert (= (and b!683846 res!449646) b!683831))

(assert (= (and b!683846 (not res!449643)) b!683849))

(assert (= (and b!683849 res!449654) b!683843))

(assert (= (and b!683846 res!449641) b!683833))

(assert (= (and b!683833 res!449657) b!683842))

(assert (= (and b!683842 res!449651) b!683830))

(assert (= (and b!683830 res!449642) b!683832))

(assert (= (and b!683832 res!449648) b!683836))

(assert (= (and b!683836 res!449647) b!683840))

(assert (= (and b!683840 res!449653) b!683848))

(assert (= (and b!683848 c!77462) b!683829))

(assert (= (and b!683848 (not c!77462)) b!683841))

(assert (= (and b!683848 c!77461) b!683837))

(assert (= (and b!683848 (not c!77461)) b!683835))

(assert (= (and b!683848 (not res!449656)) b!683845))

(assert (= (and b!683845 (not res!449652)) b!683847))

(assert (= (and b!683847 (not res!449644)) b!683839))

(declare-fun m!648351 () Bool)

(assert (=> b!683842 m!648351))

(declare-fun m!648353 () Bool)

(assert (=> b!683836 m!648353))

(declare-fun m!648355 () Bool)

(assert (=> b!683829 m!648355))

(declare-fun m!648357 () Bool)

(assert (=> b!683838 m!648357))

(declare-fun m!648359 () Bool)

(assert (=> b!683834 m!648359))

(declare-fun m!648361 () Bool)

(assert (=> b!683844 m!648361))

(declare-fun m!648363 () Bool)

(assert (=> b!683837 m!648363))

(declare-fun m!648365 () Bool)

(assert (=> b!683837 m!648365))

(declare-fun m!648367 () Bool)

(assert (=> b!683837 m!648367))

(declare-fun m!648369 () Bool)

(assert (=> b!683837 m!648369))

(assert (=> b!683837 m!648365))

(assert (=> b!683837 m!648367))

(declare-fun m!648371 () Bool)

(assert (=> b!683837 m!648371))

(declare-fun m!648373 () Bool)

(assert (=> b!683837 m!648373))

(declare-fun m!648375 () Bool)

(assert (=> b!683832 m!648375))

(declare-fun m!648377 () Bool)

(assert (=> b!683833 m!648377))

(declare-fun m!648379 () Bool)

(assert (=> start!61004 m!648379))

(declare-fun m!648381 () Bool)

(assert (=> b!683839 m!648381))

(assert (=> b!683831 m!648381))

(assert (=> b!683843 m!648381))

(declare-fun m!648383 () Bool)

(assert (=> b!683845 m!648383))

(assert (=> b!683848 m!648363))

(assert (=> b!683848 m!648365))

(declare-fun m!648385 () Bool)

(assert (=> b!683848 m!648385))

(assert (=> b!683848 m!648371))

(declare-fun m!648387 () Bool)

(assert (=> b!683848 m!648387))

(declare-fun m!648389 () Bool)

(assert (=> b!683848 m!648389))

(assert (=> b!683848 m!648365))

(declare-fun m!648391 () Bool)

(assert (=> b!683848 m!648391))

(declare-fun m!648393 () Bool)

(assert (=> b!683848 m!648393))

(declare-fun m!648395 () Bool)

(assert (=> b!683848 m!648395))

(declare-fun m!648397 () Bool)

(assert (=> b!683848 m!648397))

(assert (=> b!683848 m!648373))

(check-sat (not b!683838) (not b!683832) (not b!683833) (not b!683843) (not b!683829) (not b!683842) (not b!683837) (not b!683831) (not b!683848) (not b!683844) (not b!683836) (not start!61004) (not b!683839) (not b!683845) (not b!683834))
(check-sat)
