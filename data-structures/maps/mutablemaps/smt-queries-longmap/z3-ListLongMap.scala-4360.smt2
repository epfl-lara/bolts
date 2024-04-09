; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60206 () Bool)

(assert start!60206)

(declare-fun b!672823 () Bool)

(declare-fun e!384276 () Bool)

(declare-fun e!384282 () Bool)

(assert (=> b!672823 (= e!384276 e!384282)))

(declare-fun res!439582 () Bool)

(assert (=> b!672823 (=> (not res!439582) (not e!384282))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!672823 (= res!439582 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-datatypes ((array!39209 0))(
  ( (array!39210 (arr!18793 (Array (_ BitVec 32) (_ BitVec 64))) (size!19157 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39209)

(declare-datatypes ((List!12887 0))(
  ( (Nil!12884) (Cons!12883 (h!13928 (_ BitVec 64)) (t!19123 List!12887)) )
))
(declare-fun acc!681 () List!12887)

(declare-fun lt!312345 () List!12887)

(declare-fun $colon$colon!278 (List!12887 (_ BitVec 64)) List!12887)

(assert (=> b!672823 (= lt!312345 ($colon$colon!278 acc!681 (select (arr!18793 a!3626) from!3004)))))

(declare-fun b!672824 () Bool)

(declare-fun e!384283 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3430 (List!12887 (_ BitVec 64)) Bool)

(assert (=> b!672824 (= e!384283 (not (contains!3430 lt!312345 k0!2843)))))

(declare-fun b!672825 () Bool)

(declare-fun res!439594 () Bool)

(declare-fun e!384284 () Bool)

(assert (=> b!672825 (=> (not res!439594) (not e!384284))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672825 (= res!439594 (validKeyInArray!0 (select (arr!18793 a!3626) from!3004)))))

(declare-fun b!672826 () Bool)

(declare-fun res!439576 () Bool)

(assert (=> b!672826 (=> (not res!439576) (not e!384282))))

(declare-fun noDuplicate!677 (List!12887) Bool)

(assert (=> b!672826 (= res!439576 (noDuplicate!677 lt!312345))))

(declare-fun b!672827 () Bool)

(declare-fun res!439595 () Bool)

(assert (=> b!672827 (=> (not res!439595) (not e!384284))))

(assert (=> b!672827 (= res!439595 (not (contains!3430 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672828 () Bool)

(declare-fun res!439589 () Bool)

(assert (=> b!672828 (=> (not res!439589) (not e!384282))))

(assert (=> b!672828 (= res!439589 (not (contains!3430 lt!312345 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672829 () Bool)

(declare-fun res!439586 () Bool)

(assert (=> b!672829 (=> (not res!439586) (not e!384284))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672829 (= res!439586 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19157 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!672830 () Bool)

(declare-fun e!384278 () Bool)

(assert (=> b!672830 (= e!384278 (contains!3430 lt!312345 k0!2843))))

(declare-fun b!672831 () Bool)

(declare-fun res!439588 () Bool)

(assert (=> b!672831 (=> (not res!439588) (not e!384284))))

(declare-fun e!384280 () Bool)

(assert (=> b!672831 (= res!439588 e!384280)))

(declare-fun res!439590 () Bool)

(assert (=> b!672831 (=> res!439590 e!384280)))

(declare-fun e!384281 () Bool)

(assert (=> b!672831 (= res!439590 e!384281)))

(declare-fun res!439581 () Bool)

(assert (=> b!672831 (=> (not res!439581) (not e!384281))))

(assert (=> b!672831 (= res!439581 (bvsgt from!3004 i!1382))))

(declare-fun b!672832 () Bool)

(declare-fun res!439579 () Bool)

(assert (=> b!672832 (=> (not res!439579) (not e!384284))))

(declare-fun arrayContainsKey!0 (array!39209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672832 (= res!439579 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672833 () Bool)

(declare-datatypes ((Unit!23636 0))(
  ( (Unit!23637) )
))
(declare-fun e!384285 () Unit!23636)

(declare-fun Unit!23638 () Unit!23636)

(assert (=> b!672833 (= e!384285 Unit!23638)))

(assert (=> b!672833 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312343 () Unit!23636)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39209 (_ BitVec 64) (_ BitVec 32)) Unit!23636)

(assert (=> b!672833 (= lt!312343 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!672833 false))

(declare-fun b!672834 () Bool)

(assert (=> b!672834 (= e!384284 e!384276)))

(declare-fun res!439587 () Bool)

(assert (=> b!672834 (=> (not res!439587) (not e!384276))))

(assert (=> b!672834 (= res!439587 (not (= (select (arr!18793 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312342 () Unit!23636)

(assert (=> b!672834 (= lt!312342 e!384285)))

(declare-fun c!76991 () Bool)

(assert (=> b!672834 (= c!76991 (= (select (arr!18793 a!3626) from!3004) k0!2843))))

(declare-fun b!672835 () Bool)

(declare-fun res!439578 () Bool)

(assert (=> b!672835 (=> (not res!439578) (not e!384284))))

(assert (=> b!672835 (= res!439578 (validKeyInArray!0 k0!2843))))

(declare-fun b!672836 () Bool)

(declare-fun res!439591 () Bool)

(assert (=> b!672836 (=> (not res!439591) (not e!384284))))

(assert (=> b!672836 (= res!439591 (noDuplicate!677 acc!681))))

(declare-fun b!672837 () Bool)

(declare-fun e!384286 () Bool)

(assert (=> b!672837 (= e!384286 (not (contains!3430 acc!681 k0!2843)))))

(declare-fun b!672838 () Bool)

(declare-fun res!439598 () Bool)

(assert (=> b!672838 (=> (not res!439598) (not e!384282))))

(declare-fun e!384277 () Bool)

(assert (=> b!672838 (= res!439598 e!384277)))

(declare-fun res!439580 () Bool)

(assert (=> b!672838 (=> res!439580 e!384277)))

(assert (=> b!672838 (= res!439580 e!384278)))

(declare-fun res!439575 () Bool)

(assert (=> b!672838 (=> (not res!439575) (not e!384278))))

(assert (=> b!672838 (= res!439575 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672839 () Bool)

(declare-fun Unit!23639 () Unit!23636)

(assert (=> b!672839 (= e!384285 Unit!23639)))

(declare-fun b!672840 () Bool)

(assert (=> b!672840 (= e!384281 (contains!3430 acc!681 k0!2843))))

(declare-fun b!672841 () Bool)

(declare-fun res!439593 () Bool)

(assert (=> b!672841 (=> (not res!439593) (not e!384284))))

(assert (=> b!672841 (= res!439593 (not (contains!3430 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672842 () Bool)

(declare-fun res!439585 () Bool)

(assert (=> b!672842 (=> (not res!439585) (not e!384284))))

(declare-fun arrayNoDuplicates!0 (array!39209 (_ BitVec 32) List!12887) Bool)

(assert (=> b!672842 (= res!439585 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12884))))

(declare-fun b!672843 () Bool)

(declare-fun res!439583 () Bool)

(assert (=> b!672843 (=> (not res!439583) (not e!384282))))

(assert (=> b!672843 (= res!439583 (not (contains!3430 lt!312345 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672844 () Bool)

(declare-fun res!439577 () Bool)

(assert (=> b!672844 (=> (not res!439577) (not e!384284))))

(assert (=> b!672844 (= res!439577 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672845 () Bool)

(declare-fun res!439596 () Bool)

(assert (=> b!672845 (=> (not res!439596) (not e!384284))))

(assert (=> b!672845 (= res!439596 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19157 a!3626))))))

(declare-fun b!672846 () Bool)

(assert (=> b!672846 (= e!384280 e!384286)))

(declare-fun res!439584 () Bool)

(assert (=> b!672846 (=> (not res!439584) (not e!384286))))

(assert (=> b!672846 (= res!439584 (bvsle from!3004 i!1382))))

(declare-fun b!672847 () Bool)

(assert (=> b!672847 (= e!384282 false)))

(declare-fun lt!312344 () Bool)

(assert (=> b!672847 (= lt!312344 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312345))))

(declare-fun b!672848 () Bool)

(assert (=> b!672848 (= e!384277 e!384283)))

(declare-fun res!439592 () Bool)

(assert (=> b!672848 (=> (not res!439592) (not e!384283))))

(assert (=> b!672848 (= res!439592 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!439597 () Bool)

(assert (=> start!60206 (=> (not res!439597) (not e!384284))))

(assert (=> start!60206 (= res!439597 (and (bvslt (size!19157 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19157 a!3626))))))

(assert (=> start!60206 e!384284))

(assert (=> start!60206 true))

(declare-fun array_inv!14567 (array!39209) Bool)

(assert (=> start!60206 (array_inv!14567 a!3626)))

(assert (= (and start!60206 res!439597) b!672836))

(assert (= (and b!672836 res!439591) b!672841))

(assert (= (and b!672841 res!439593) b!672827))

(assert (= (and b!672827 res!439595) b!672831))

(assert (= (and b!672831 res!439581) b!672840))

(assert (= (and b!672831 (not res!439590)) b!672846))

(assert (= (and b!672846 res!439584) b!672837))

(assert (= (and b!672831 res!439588) b!672842))

(assert (= (and b!672842 res!439585) b!672844))

(assert (= (and b!672844 res!439577) b!672845))

(assert (= (and b!672845 res!439596) b!672835))

(assert (= (and b!672835 res!439578) b!672832))

(assert (= (and b!672832 res!439579) b!672829))

(assert (= (and b!672829 res!439586) b!672825))

(assert (= (and b!672825 res!439594) b!672834))

(assert (= (and b!672834 c!76991) b!672833))

(assert (= (and b!672834 (not c!76991)) b!672839))

(assert (= (and b!672834 res!439587) b!672823))

(assert (= (and b!672823 res!439582) b!672826))

(assert (= (and b!672826 res!439576) b!672828))

(assert (= (and b!672828 res!439589) b!672843))

(assert (= (and b!672843 res!439583) b!672838))

(assert (= (and b!672838 res!439575) b!672830))

(assert (= (and b!672838 (not res!439580)) b!672848))

(assert (= (and b!672848 res!439592) b!672824))

(assert (= (and b!672838 res!439598) b!672847))

(declare-fun m!641549 () Bool)

(assert (=> start!60206 m!641549))

(declare-fun m!641551 () Bool)

(assert (=> b!672844 m!641551))

(declare-fun m!641553 () Bool)

(assert (=> b!672833 m!641553))

(declare-fun m!641555 () Bool)

(assert (=> b!672833 m!641555))

(declare-fun m!641557 () Bool)

(assert (=> b!672836 m!641557))

(declare-fun m!641559 () Bool)

(assert (=> b!672826 m!641559))

(declare-fun m!641561 () Bool)

(assert (=> b!672827 m!641561))

(declare-fun m!641563 () Bool)

(assert (=> b!672823 m!641563))

(assert (=> b!672823 m!641563))

(declare-fun m!641565 () Bool)

(assert (=> b!672823 m!641565))

(declare-fun m!641567 () Bool)

(assert (=> b!672832 m!641567))

(declare-fun m!641569 () Bool)

(assert (=> b!672841 m!641569))

(declare-fun m!641571 () Bool)

(assert (=> b!672824 m!641571))

(declare-fun m!641573 () Bool)

(assert (=> b!672828 m!641573))

(declare-fun m!641575 () Bool)

(assert (=> b!672843 m!641575))

(declare-fun m!641577 () Bool)

(assert (=> b!672842 m!641577))

(declare-fun m!641579 () Bool)

(assert (=> b!672837 m!641579))

(assert (=> b!672825 m!641563))

(assert (=> b!672825 m!641563))

(declare-fun m!641581 () Bool)

(assert (=> b!672825 m!641581))

(assert (=> b!672834 m!641563))

(assert (=> b!672830 m!641571))

(declare-fun m!641583 () Bool)

(assert (=> b!672847 m!641583))

(assert (=> b!672840 m!641579))

(declare-fun m!641585 () Bool)

(assert (=> b!672835 m!641585))

(check-sat (not b!672828) (not b!672825) (not b!672841) (not b!672823) (not b!672832) (not b!672824) (not b!672843) (not b!672837) (not b!672840) (not b!672835) (not b!672833) (not b!672844) (not b!672836) (not b!672827) (not b!672842) (not b!672847) (not start!60206) (not b!672830) (not b!672826))
(check-sat)
