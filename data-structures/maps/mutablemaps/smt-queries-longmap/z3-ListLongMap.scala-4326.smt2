; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60002 () Bool)

(assert start!60002)

(declare-fun b!665834 () Bool)

(declare-datatypes ((Unit!23250 0))(
  ( (Unit!23251) )
))
(declare-fun e!381435 () Unit!23250)

(declare-fun lt!310211 () Unit!23250)

(assert (=> b!665834 (= e!381435 lt!310211)))

(declare-fun lt!310206 () Unit!23250)

(declare-datatypes ((List!12785 0))(
  ( (Nil!12782) (Cons!12781 (h!13826 (_ BitVec 64)) (t!19021 List!12785)) )
))
(declare-fun acc!681 () List!12785)

(declare-fun lemmaListSubSeqRefl!0 (List!12785) Unit!23250)

(assert (=> b!665834 (= lt!310206 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!66 (List!12785 List!12785) Bool)

(assert (=> b!665834 (subseq!66 acc!681 acc!681)))

(declare-datatypes ((array!39005 0))(
  ( (array!39006 (arr!18691 (Array (_ BitVec 32) (_ BitVec 64))) (size!19055 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39005)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39005 List!12785 List!12785 (_ BitVec 32)) Unit!23250)

(declare-fun $colon$colon!197 (List!12785 (_ BitVec 64)) List!12785)

(assert (=> b!665834 (= lt!310211 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!197 acc!681 (select (arr!18691 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39005 (_ BitVec 32) List!12785) Bool)

(assert (=> b!665834 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!665835 () Bool)

(declare-fun res!433454 () Bool)

(declare-fun e!381438 () Bool)

(assert (=> b!665835 (=> res!433454 e!381438)))

(declare-fun lt!310203 () Bool)

(assert (=> b!665835 (= res!433454 lt!310203)))

(declare-fun b!665836 () Bool)

(declare-fun res!433457 () Bool)

(declare-fun e!381439 () Bool)

(assert (=> b!665836 (=> (not res!433457) (not e!381439))))

(declare-fun noDuplicate!575 (List!12785) Bool)

(assert (=> b!665836 (= res!433457 (noDuplicate!575 acc!681))))

(declare-fun b!665837 () Bool)

(declare-fun res!433443 () Bool)

(assert (=> b!665837 (=> res!433443 e!381438)))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3328 (List!12785 (_ BitVec 64)) Bool)

(assert (=> b!665837 (= res!433443 (contains!3328 acc!681 k0!2843))))

(declare-fun b!665838 () Bool)

(declare-fun res!433456 () Bool)

(assert (=> b!665838 (=> res!433456 e!381438)))

(declare-fun lt!310204 () List!12785)

(assert (=> b!665838 (= res!433456 (contains!3328 lt!310204 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665839 () Bool)

(declare-fun e!381437 () Unit!23250)

(declare-fun Unit!23252 () Unit!23250)

(assert (=> b!665839 (= e!381437 Unit!23252)))

(declare-fun b!665840 () Bool)

(declare-fun e!381436 () Bool)

(assert (=> b!665840 (= e!381436 (contains!3328 acc!681 k0!2843))))

(declare-fun b!665841 () Bool)

(assert (=> b!665841 (= e!381438 true)))

(declare-fun lt!310205 () Bool)

(assert (=> b!665841 (= lt!310205 (contains!3328 lt!310204 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665842 () Bool)

(declare-fun res!433458 () Bool)

(assert (=> b!665842 (=> (not res!433458) (not e!381439))))

(assert (=> b!665842 (= res!433458 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665843 () Bool)

(declare-fun Unit!23253 () Unit!23250)

(assert (=> b!665843 (= e!381435 Unit!23253)))

(declare-fun b!665844 () Bool)

(declare-fun res!433459 () Bool)

(assert (=> b!665844 (=> res!433459 e!381438)))

(assert (=> b!665844 (= res!433459 (not (contains!3328 lt!310204 k0!2843)))))

(declare-fun b!665845 () Bool)

(declare-fun res!433440 () Bool)

(assert (=> b!665845 (=> (not res!433440) (not e!381439))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665845 (= res!433440 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19055 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665846 () Bool)

(declare-fun res!433441 () Bool)

(assert (=> b!665846 (=> (not res!433441) (not e!381439))))

(assert (=> b!665846 (= res!433441 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12782))))

(declare-fun b!665847 () Bool)

(declare-fun res!433446 () Bool)

(assert (=> b!665847 (=> (not res!433446) (not e!381439))))

(declare-fun e!381441 () Bool)

(assert (=> b!665847 (= res!433446 e!381441)))

(declare-fun res!433451 () Bool)

(assert (=> b!665847 (=> res!433451 e!381441)))

(assert (=> b!665847 (= res!433451 e!381436)))

(declare-fun res!433442 () Bool)

(assert (=> b!665847 (=> (not res!433442) (not e!381436))))

(assert (=> b!665847 (= res!433442 (bvsgt from!3004 i!1382))))

(declare-fun b!665848 () Bool)

(declare-fun res!433445 () Bool)

(assert (=> b!665848 (=> (not res!433445) (not e!381439))))

(assert (=> b!665848 (= res!433445 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19055 a!3626))))))

(declare-fun b!665849 () Bool)

(declare-fun res!433448 () Bool)

(assert (=> b!665849 (=> res!433448 e!381438)))

(assert (=> b!665849 (= res!433448 (not (noDuplicate!575 lt!310204)))))

(declare-fun res!433455 () Bool)

(assert (=> start!60002 (=> (not res!433455) (not e!381439))))

(assert (=> start!60002 (= res!433455 (and (bvslt (size!19055 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19055 a!3626))))))

(assert (=> start!60002 e!381439))

(assert (=> start!60002 true))

(declare-fun array_inv!14465 (array!39005) Bool)

(assert (=> start!60002 (array_inv!14465 a!3626)))

(declare-fun b!665850 () Bool)

(declare-fun e!381440 () Bool)

(assert (=> b!665850 (= e!381441 e!381440)))

(declare-fun res!433453 () Bool)

(assert (=> b!665850 (=> (not res!433453) (not e!381440))))

(assert (=> b!665850 (= res!433453 (bvsle from!3004 i!1382))))

(declare-fun b!665851 () Bool)

(declare-fun res!433447 () Bool)

(assert (=> b!665851 (=> (not res!433447) (not e!381439))))

(assert (=> b!665851 (= res!433447 (not (contains!3328 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665852 () Bool)

(assert (=> b!665852 (= e!381439 (not e!381438))))

(declare-fun res!433444 () Bool)

(assert (=> b!665852 (=> res!433444 e!381438)))

(assert (=> b!665852 (= res!433444 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!64 (List!12785 (_ BitVec 64)) List!12785)

(assert (=> b!665852 (= (-!64 lt!310204 k0!2843) acc!681)))

(assert (=> b!665852 (= lt!310204 ($colon$colon!197 acc!681 k0!2843))))

(declare-fun lt!310207 () Unit!23250)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12785) Unit!23250)

(assert (=> b!665852 (= lt!310207 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!665852 (subseq!66 acc!681 acc!681)))

(declare-fun lt!310212 () Unit!23250)

(assert (=> b!665852 (= lt!310212 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665852 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310210 () Unit!23250)

(assert (=> b!665852 (= lt!310210 e!381435)))

(declare-fun c!76565 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665852 (= c!76565 (validKeyInArray!0 (select (arr!18691 a!3626) from!3004)))))

(declare-fun lt!310209 () Unit!23250)

(assert (=> b!665852 (= lt!310209 e!381437)))

(declare-fun c!76564 () Bool)

(assert (=> b!665852 (= c!76564 lt!310203)))

(declare-fun arrayContainsKey!0 (array!39005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665852 (= lt!310203 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665852 (arrayContainsKey!0 (array!39006 (store (arr!18691 a!3626) i!1382 k0!2843) (size!19055 a!3626)) k0!2843 from!3004)))

(declare-fun b!665853 () Bool)

(declare-fun res!433460 () Bool)

(assert (=> b!665853 (=> res!433460 e!381438)))

(assert (=> b!665853 (= res!433460 (not (subseq!66 acc!681 lt!310204)))))

(declare-fun b!665854 () Bool)

(declare-fun res!433449 () Bool)

(assert (=> b!665854 (=> (not res!433449) (not e!381439))))

(assert (=> b!665854 (= res!433449 (not (contains!3328 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665855 () Bool)

(assert (=> b!665855 (= e!381440 (not (contains!3328 acc!681 k0!2843)))))

(declare-fun b!665856 () Bool)

(declare-fun res!433452 () Bool)

(assert (=> b!665856 (=> (not res!433452) (not e!381439))))

(assert (=> b!665856 (= res!433452 (validKeyInArray!0 k0!2843))))

(declare-fun b!665857 () Bool)

(declare-fun res!433450 () Bool)

(assert (=> b!665857 (=> (not res!433450) (not e!381439))))

(assert (=> b!665857 (= res!433450 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665858 () Bool)

(declare-fun Unit!23254 () Unit!23250)

(assert (=> b!665858 (= e!381437 Unit!23254)))

(declare-fun lt!310208 () Unit!23250)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39005 (_ BitVec 64) (_ BitVec 32)) Unit!23250)

(assert (=> b!665858 (= lt!310208 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!665858 false))

(assert (= (and start!60002 res!433455) b!665836))

(assert (= (and b!665836 res!433457) b!665851))

(assert (= (and b!665851 res!433447) b!665854))

(assert (= (and b!665854 res!433449) b!665847))

(assert (= (and b!665847 res!433442) b!665840))

(assert (= (and b!665847 (not res!433451)) b!665850))

(assert (= (and b!665850 res!433453) b!665855))

(assert (= (and b!665847 res!433446) b!665846))

(assert (= (and b!665846 res!433441) b!665842))

(assert (= (and b!665842 res!433458) b!665848))

(assert (= (and b!665848 res!433445) b!665856))

(assert (= (and b!665856 res!433452) b!665857))

(assert (= (and b!665857 res!433450) b!665845))

(assert (= (and b!665845 res!433440) b!665852))

(assert (= (and b!665852 c!76564) b!665858))

(assert (= (and b!665852 (not c!76564)) b!665839))

(assert (= (and b!665852 c!76565) b!665834))

(assert (= (and b!665852 (not c!76565)) b!665843))

(assert (= (and b!665852 (not res!433444)) b!665849))

(assert (= (and b!665849 (not res!433448)) b!665835))

(assert (= (and b!665835 (not res!433454)) b!665837))

(assert (= (and b!665837 (not res!433443)) b!665853))

(assert (= (and b!665853 (not res!433460)) b!665844))

(assert (= (and b!665844 (not res!433459)) b!665838))

(assert (= (and b!665838 (not res!433456)) b!665841))

(declare-fun m!636803 () Bool)

(assert (=> b!665856 m!636803))

(declare-fun m!636805 () Bool)

(assert (=> b!665854 m!636805))

(declare-fun m!636807 () Bool)

(assert (=> b!665840 m!636807))

(assert (=> b!665855 m!636807))

(declare-fun m!636809 () Bool)

(assert (=> b!665844 m!636809))

(declare-fun m!636811 () Bool)

(assert (=> b!665851 m!636811))

(declare-fun m!636813 () Bool)

(assert (=> start!60002 m!636813))

(declare-fun m!636815 () Bool)

(assert (=> b!665846 m!636815))

(assert (=> b!665837 m!636807))

(declare-fun m!636817 () Bool)

(assert (=> b!665841 m!636817))

(declare-fun m!636819 () Bool)

(assert (=> b!665836 m!636819))

(declare-fun m!636821 () Bool)

(assert (=> b!665838 m!636821))

(declare-fun m!636823 () Bool)

(assert (=> b!665857 m!636823))

(declare-fun m!636825 () Bool)

(assert (=> b!665853 m!636825))

(declare-fun m!636827 () Bool)

(assert (=> b!665852 m!636827))

(declare-fun m!636829 () Bool)

(assert (=> b!665852 m!636829))

(declare-fun m!636831 () Bool)

(assert (=> b!665852 m!636831))

(declare-fun m!636833 () Bool)

(assert (=> b!665852 m!636833))

(declare-fun m!636835 () Bool)

(assert (=> b!665852 m!636835))

(declare-fun m!636837 () Bool)

(assert (=> b!665852 m!636837))

(declare-fun m!636839 () Bool)

(assert (=> b!665852 m!636839))

(declare-fun m!636841 () Bool)

(assert (=> b!665852 m!636841))

(assert (=> b!665852 m!636829))

(declare-fun m!636843 () Bool)

(assert (=> b!665852 m!636843))

(declare-fun m!636845 () Bool)

(assert (=> b!665852 m!636845))

(declare-fun m!636847 () Bool)

(assert (=> b!665852 m!636847))

(declare-fun m!636849 () Bool)

(assert (=> b!665842 m!636849))

(declare-fun m!636851 () Bool)

(assert (=> b!665849 m!636851))

(declare-fun m!636853 () Bool)

(assert (=> b!665858 m!636853))

(assert (=> b!665834 m!636827))

(assert (=> b!665834 m!636829))

(declare-fun m!636855 () Bool)

(assert (=> b!665834 m!636855))

(declare-fun m!636857 () Bool)

(assert (=> b!665834 m!636857))

(assert (=> b!665834 m!636829))

(assert (=> b!665834 m!636855))

(assert (=> b!665834 m!636837))

(assert (=> b!665834 m!636847))

(check-sat (not b!665841) (not b!665852) (not b!665854) (not start!60002) (not b!665846) (not b!665834) (not b!665842) (not b!665855) (not b!665857) (not b!665853) (not b!665836) (not b!665858) (not b!665856) (not b!665851) (not b!665838) (not b!665840) (not b!665837) (not b!665844) (not b!665849))
(check-sat)
