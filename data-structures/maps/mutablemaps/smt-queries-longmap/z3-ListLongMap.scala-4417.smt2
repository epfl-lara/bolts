; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61010 () Bool)

(assert start!61010)

(declare-fun b!684018 () Bool)

(declare-fun res!449799 () Bool)

(declare-fun e!389578 () Bool)

(assert (=> b!684018 (=> (not res!449799) (not e!389578))))

(declare-datatypes ((array!39575 0))(
  ( (array!39576 (arr!18964 (Array (_ BitVec 32) (_ BitVec 64))) (size!19330 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39575)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39575 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684018 (= res!449799 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684019 () Bool)

(declare-datatypes ((Unit!24057 0))(
  ( (Unit!24058) )
))
(declare-fun e!389575 () Unit!24057)

(declare-fun Unit!24059 () Unit!24057)

(assert (=> b!684019 (= e!389575 Unit!24059)))

(declare-fun b!684020 () Bool)

(declare-fun Unit!24060 () Unit!24057)

(assert (=> b!684020 (= e!389575 Unit!24060)))

(declare-fun lt!314170 () Unit!24057)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39575 (_ BitVec 64) (_ BitVec 32)) Unit!24057)

(assert (=> b!684020 (= lt!314170 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!684020 false))

(declare-fun b!684021 () Bool)

(declare-fun res!449796 () Bool)

(assert (=> b!684021 (=> (not res!449796) (not e!389578))))

(declare-datatypes ((List!13058 0))(
  ( (Nil!13055) (Cons!13054 (h!14099 (_ BitVec 64)) (t!19312 List!13058)) )
))
(declare-fun acc!681 () List!13058)

(declare-fun contains!3601 (List!13058 (_ BitVec 64)) Bool)

(assert (=> b!684021 (= res!449796 (not (contains!3601 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684022 () Bool)

(declare-fun res!449805 () Bool)

(assert (=> b!684022 (=> (not res!449805) (not e!389578))))

(assert (=> b!684022 (= res!449805 (not (contains!3601 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684023 () Bool)

(declare-fun e!389579 () Bool)

(assert (=> b!684023 (= e!389579 (not (contains!3601 acc!681 k0!2843)))))

(declare-fun b!684024 () Bool)

(declare-fun res!449810 () Bool)

(assert (=> b!684024 (=> (not res!449810) (not e!389578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684024 (= res!449810 (validKeyInArray!0 k0!2843))))

(declare-fun b!684025 () Bool)

(declare-fun res!449807 () Bool)

(assert (=> b!684025 (=> (not res!449807) (not e!389578))))

(declare-fun e!389581 () Bool)

(assert (=> b!684025 (= res!449807 e!389581)))

(declare-fun res!449798 () Bool)

(assert (=> b!684025 (=> res!449798 e!389581)))

(declare-fun e!389577 () Bool)

(assert (=> b!684025 (= res!449798 e!389577)))

(declare-fun res!449806 () Bool)

(assert (=> b!684025 (=> (not res!449806) (not e!389577))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!684025 (= res!449806 (bvsgt from!3004 i!1382))))

(declare-fun b!684026 () Bool)

(declare-fun res!449801 () Bool)

(assert (=> b!684026 (=> (not res!449801) (not e!389578))))

(declare-fun noDuplicate!848 (List!13058) Bool)

(assert (=> b!684026 (= res!449801 (noDuplicate!848 acc!681))))

(declare-fun b!684027 () Bool)

(assert (=> b!684027 (= e!389577 (contains!3601 acc!681 k0!2843))))

(declare-fun b!684028 () Bool)

(declare-fun e!389580 () Unit!24057)

(declare-fun Unit!24061 () Unit!24057)

(assert (=> b!684028 (= e!389580 Unit!24061)))

(declare-fun b!684029 () Bool)

(declare-fun res!449795 () Bool)

(declare-fun e!389576 () Bool)

(assert (=> b!684029 (=> res!449795 e!389576)))

(declare-fun lt!314175 () List!13058)

(assert (=> b!684029 (= res!449795 (not (noDuplicate!848 lt!314175)))))

(declare-fun b!684030 () Bool)

(assert (=> b!684030 (= e!389578 (not e!389576))))

(declare-fun res!449800 () Bool)

(assert (=> b!684030 (=> res!449800 e!389576)))

(assert (=> b!684030 (= res!449800 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!151 (List!13058 (_ BitVec 64)) List!13058)

(assert (=> b!684030 (= (-!151 lt!314175 k0!2843) acc!681)))

(declare-fun $colon$colon!350 (List!13058 (_ BitVec 64)) List!13058)

(assert (=> b!684030 (= lt!314175 ($colon$colon!350 acc!681 k0!2843))))

(declare-fun lt!314168 () Unit!24057)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13058) Unit!24057)

(assert (=> b!684030 (= lt!314168 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!186 (List!13058 List!13058) Bool)

(assert (=> b!684030 (subseq!186 acc!681 acc!681)))

(declare-fun lt!314173 () Unit!24057)

(declare-fun lemmaListSubSeqRefl!0 (List!13058) Unit!24057)

(assert (=> b!684030 (= lt!314173 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun arrayNoDuplicates!0 (array!39575 (_ BitVec 32) List!13058) Bool)

(assert (=> b!684030 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314167 () Unit!24057)

(assert (=> b!684030 (= lt!314167 e!389580)))

(declare-fun c!77480 () Bool)

(assert (=> b!684030 (= c!77480 (validKeyInArray!0 (select (arr!18964 a!3626) from!3004)))))

(declare-fun lt!314174 () Unit!24057)

(assert (=> b!684030 (= lt!314174 e!389575)))

(declare-fun c!77479 () Bool)

(declare-fun lt!314171 () Bool)

(assert (=> b!684030 (= c!77479 lt!314171)))

(assert (=> b!684030 (= lt!314171 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684030 (arrayContainsKey!0 (array!39576 (store (arr!18964 a!3626) i!1382 k0!2843) (size!19330 a!3626)) k0!2843 from!3004)))

(declare-fun b!684031 () Bool)

(declare-fun res!449802 () Bool)

(assert (=> b!684031 (=> (not res!449802) (not e!389578))))

(assert (=> b!684031 (= res!449802 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19330 a!3626))))))

(declare-fun b!684032 () Bool)

(declare-fun res!449794 () Bool)

(assert (=> b!684032 (=> (not res!449794) (not e!389578))))

(assert (=> b!684032 (= res!449794 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13055))))

(declare-fun res!449804 () Bool)

(assert (=> start!61010 (=> (not res!449804) (not e!389578))))

(assert (=> start!61010 (= res!449804 (and (bvslt (size!19330 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19330 a!3626))))))

(assert (=> start!61010 e!389578))

(assert (=> start!61010 true))

(declare-fun array_inv!14738 (array!39575) Bool)

(assert (=> start!61010 (array_inv!14738 a!3626)))

(declare-fun b!684033 () Bool)

(assert (=> b!684033 (= e!389576 true)))

(declare-fun lt!314172 () Bool)

(assert (=> b!684033 (= lt!314172 (contains!3601 acc!681 k0!2843))))

(declare-fun b!684034 () Bool)

(declare-fun res!449808 () Bool)

(assert (=> b!684034 (=> res!449808 e!389576)))

(assert (=> b!684034 (= res!449808 lt!314171)))

(declare-fun b!684035 () Bool)

(declare-fun lt!314169 () Unit!24057)

(assert (=> b!684035 (= e!389580 lt!314169)))

(declare-fun lt!314166 () Unit!24057)

(assert (=> b!684035 (= lt!314166 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684035 (subseq!186 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39575 List!13058 List!13058 (_ BitVec 32)) Unit!24057)

(assert (=> b!684035 (= lt!314169 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!350 acc!681 (select (arr!18964 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684035 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684036 () Bool)

(assert (=> b!684036 (= e!389581 e!389579)))

(declare-fun res!449803 () Bool)

(assert (=> b!684036 (=> (not res!449803) (not e!389579))))

(assert (=> b!684036 (= res!449803 (bvsle from!3004 i!1382))))

(declare-fun b!684037 () Bool)

(declare-fun res!449797 () Bool)

(assert (=> b!684037 (=> (not res!449797) (not e!389578))))

(assert (=> b!684037 (= res!449797 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19330 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!684038 () Bool)

(declare-fun res!449809 () Bool)

(assert (=> b!684038 (=> (not res!449809) (not e!389578))))

(assert (=> b!684038 (= res!449809 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!61010 res!449804) b!684026))

(assert (= (and b!684026 res!449801) b!684022))

(assert (= (and b!684022 res!449805) b!684021))

(assert (= (and b!684021 res!449796) b!684025))

(assert (= (and b!684025 res!449806) b!684027))

(assert (= (and b!684025 (not res!449798)) b!684036))

(assert (= (and b!684036 res!449803) b!684023))

(assert (= (and b!684025 res!449807) b!684032))

(assert (= (and b!684032 res!449794) b!684038))

(assert (= (and b!684038 res!449809) b!684031))

(assert (= (and b!684031 res!449802) b!684024))

(assert (= (and b!684024 res!449810) b!684018))

(assert (= (and b!684018 res!449799) b!684037))

(assert (= (and b!684037 res!449797) b!684030))

(assert (= (and b!684030 c!77479) b!684020))

(assert (= (and b!684030 (not c!77479)) b!684019))

(assert (= (and b!684030 c!77480) b!684035))

(assert (= (and b!684030 (not c!77480)) b!684028))

(assert (= (and b!684030 (not res!449800)) b!684029))

(assert (= (and b!684029 (not res!449795)) b!684034))

(assert (= (and b!684034 (not res!449808)) b!684033))

(declare-fun m!648495 () Bool)

(assert (=> b!684020 m!648495))

(declare-fun m!648497 () Bool)

(assert (=> b!684022 m!648497))

(declare-fun m!648499 () Bool)

(assert (=> b!684023 m!648499))

(assert (=> b!684027 m!648499))

(declare-fun m!648501 () Bool)

(assert (=> b!684021 m!648501))

(declare-fun m!648503 () Bool)

(assert (=> b!684038 m!648503))

(declare-fun m!648505 () Bool)

(assert (=> b!684029 m!648505))

(assert (=> b!684033 m!648499))

(declare-fun m!648507 () Bool)

(assert (=> b!684018 m!648507))

(declare-fun m!648509 () Bool)

(assert (=> b!684035 m!648509))

(declare-fun m!648511 () Bool)

(assert (=> b!684035 m!648511))

(declare-fun m!648513 () Bool)

(assert (=> b!684035 m!648513))

(declare-fun m!648515 () Bool)

(assert (=> b!684035 m!648515))

(assert (=> b!684035 m!648511))

(assert (=> b!684035 m!648513))

(declare-fun m!648517 () Bool)

(assert (=> b!684035 m!648517))

(declare-fun m!648519 () Bool)

(assert (=> b!684035 m!648519))

(assert (=> b!684030 m!648509))

(assert (=> b!684030 m!648511))

(declare-fun m!648521 () Bool)

(assert (=> b!684030 m!648521))

(declare-fun m!648523 () Bool)

(assert (=> b!684030 m!648523))

(declare-fun m!648525 () Bool)

(assert (=> b!684030 m!648525))

(assert (=> b!684030 m!648517))

(declare-fun m!648527 () Bool)

(assert (=> b!684030 m!648527))

(declare-fun m!648529 () Bool)

(assert (=> b!684030 m!648529))

(assert (=> b!684030 m!648511))

(declare-fun m!648531 () Bool)

(assert (=> b!684030 m!648531))

(declare-fun m!648533 () Bool)

(assert (=> b!684030 m!648533))

(assert (=> b!684030 m!648519))

(declare-fun m!648535 () Bool)

(assert (=> start!61010 m!648535))

(declare-fun m!648537 () Bool)

(assert (=> b!684032 m!648537))

(declare-fun m!648539 () Bool)

(assert (=> b!684024 m!648539))

(declare-fun m!648541 () Bool)

(assert (=> b!684026 m!648541))

(check-sat (not b!684033) (not b!684030) (not b!684029) (not b!684035) (not b!684038) (not b!684032) (not b!684018) (not b!684024) (not b!684022) (not b!684026) (not b!684021) (not b!684027) (not b!684020) (not start!61010) (not b!684023))
(check-sat)
