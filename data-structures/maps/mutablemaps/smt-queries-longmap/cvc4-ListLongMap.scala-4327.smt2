; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60010 () Bool)

(assert start!60010)

(declare-fun b!666134 () Bool)

(declare-fun res!433696 () Bool)

(declare-fun e!381535 () Bool)

(assert (=> b!666134 (=> res!433696 e!381535)))

(declare-datatypes ((List!12789 0))(
  ( (Nil!12786) (Cons!12785 (h!13830 (_ BitVec 64)) (t!19025 List!12789)) )
))
(declare-fun lt!310323 () List!12789)

(declare-fun contains!3332 (List!12789 (_ BitVec 64)) Bool)

(assert (=> b!666134 (= res!433696 (contains!3332 lt!310323 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666136 () Bool)

(declare-datatypes ((Unit!23270 0))(
  ( (Unit!23271) )
))
(declare-fun e!381534 () Unit!23270)

(declare-fun Unit!23272 () Unit!23270)

(assert (=> b!666136 (= e!381534 Unit!23272)))

(declare-fun b!666137 () Bool)

(declare-fun e!381533 () Unit!23270)

(declare-fun Unit!23273 () Unit!23270)

(assert (=> b!666137 (= e!381533 Unit!23273)))

(declare-fun b!666138 () Bool)

(declare-fun lt!310331 () Unit!23270)

(assert (=> b!666138 (= e!381534 lt!310331)))

(declare-fun lt!310332 () Unit!23270)

(declare-fun acc!681 () List!12789)

(declare-fun lemmaListSubSeqRefl!0 (List!12789) Unit!23270)

(assert (=> b!666138 (= lt!310332 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!70 (List!12789 List!12789) Bool)

(assert (=> b!666138 (subseq!70 acc!681 acc!681)))

(declare-datatypes ((array!39013 0))(
  ( (array!39014 (arr!18695 (Array (_ BitVec 32) (_ BitVec 64))) (size!19059 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39013)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39013 List!12789 List!12789 (_ BitVec 32)) Unit!23270)

(declare-fun $colon$colon!201 (List!12789 (_ BitVec 64)) List!12789)

(assert (=> b!666138 (= lt!310331 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!201 acc!681 (select (arr!18695 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39013 (_ BitVec 32) List!12789) Bool)

(assert (=> b!666138 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666139 () Bool)

(declare-fun res!433699 () Bool)

(assert (=> b!666139 (=> res!433699 e!381535)))

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!666139 (= res!433699 (contains!3332 acc!681 k!2843))))

(declare-fun b!666140 () Bool)

(declare-fun e!381538 () Bool)

(declare-fun e!381531 () Bool)

(assert (=> b!666140 (= e!381538 e!381531)))

(declare-fun res!433709 () Bool)

(assert (=> b!666140 (=> (not res!433709) (not e!381531))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666140 (= res!433709 (bvsle from!3004 i!1382))))

(declare-fun b!666141 () Bool)

(declare-fun res!433706 () Bool)

(declare-fun e!381532 () Bool)

(assert (=> b!666141 (=> (not res!433706) (not e!381532))))

(assert (=> b!666141 (= res!433706 (not (contains!3332 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666142 () Bool)

(declare-fun res!433702 () Bool)

(assert (=> b!666142 (=> (not res!433702) (not e!381532))))

(assert (=> b!666142 (= res!433702 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19059 a!3626))))))

(declare-fun b!666143 () Bool)

(declare-fun res!433707 () Bool)

(assert (=> b!666143 (=> (not res!433707) (not e!381532))))

(assert (=> b!666143 (= res!433707 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12786))))

(declare-fun b!666144 () Bool)

(declare-fun res!433703 () Bool)

(assert (=> b!666144 (=> res!433703 e!381535)))

(declare-fun noDuplicate!579 (List!12789) Bool)

(assert (=> b!666144 (= res!433703 (not (noDuplicate!579 lt!310323)))))

(declare-fun b!666145 () Bool)

(declare-fun res!433710 () Bool)

(assert (=> b!666145 (=> (not res!433710) (not e!381532))))

(declare-fun arrayContainsKey!0 (array!39013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666145 (= res!433710 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666146 () Bool)

(assert (=> b!666146 (= e!381531 (not (contains!3332 acc!681 k!2843)))))

(declare-fun b!666147 () Bool)

(declare-fun res!433711 () Bool)

(assert (=> b!666147 (=> (not res!433711) (not e!381532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666147 (= res!433711 (validKeyInArray!0 k!2843))))

(declare-fun b!666148 () Bool)

(assert (=> b!666148 (= e!381532 (not e!381535))))

(declare-fun res!433701 () Bool)

(assert (=> b!666148 (=> res!433701 e!381535)))

(assert (=> b!666148 (= res!433701 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!68 (List!12789 (_ BitVec 64)) List!12789)

(assert (=> b!666148 (= (-!68 lt!310323 k!2843) acc!681)))

(assert (=> b!666148 (= lt!310323 ($colon$colon!201 acc!681 k!2843))))

(declare-fun lt!310329 () Unit!23270)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12789) Unit!23270)

(assert (=> b!666148 (= lt!310329 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!666148 (subseq!70 acc!681 acc!681)))

(declare-fun lt!310328 () Unit!23270)

(assert (=> b!666148 (= lt!310328 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666148 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310326 () Unit!23270)

(assert (=> b!666148 (= lt!310326 e!381534)))

(declare-fun c!76589 () Bool)

(assert (=> b!666148 (= c!76589 (validKeyInArray!0 (select (arr!18695 a!3626) from!3004)))))

(declare-fun lt!310327 () Unit!23270)

(assert (=> b!666148 (= lt!310327 e!381533)))

(declare-fun c!76588 () Bool)

(declare-fun lt!310325 () Bool)

(assert (=> b!666148 (= c!76588 lt!310325)))

(assert (=> b!666148 (= lt!310325 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666148 (arrayContainsKey!0 (array!39014 (store (arr!18695 a!3626) i!1382 k!2843) (size!19059 a!3626)) k!2843 from!3004)))

(declare-fun b!666135 () Bool)

(declare-fun res!433693 () Bool)

(assert (=> b!666135 (=> (not res!433693) (not e!381532))))

(assert (=> b!666135 (= res!433693 (noDuplicate!579 acc!681))))

(declare-fun res!433695 () Bool)

(assert (=> start!60010 (=> (not res!433695) (not e!381532))))

(assert (=> start!60010 (= res!433695 (and (bvslt (size!19059 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19059 a!3626))))))

(assert (=> start!60010 e!381532))

(assert (=> start!60010 true))

(declare-fun array_inv!14469 (array!39013) Bool)

(assert (=> start!60010 (array_inv!14469 a!3626)))

(declare-fun b!666149 () Bool)

(declare-fun res!433700 () Bool)

(assert (=> b!666149 (=> (not res!433700) (not e!381532))))

(assert (=> b!666149 (= res!433700 (not (contains!3332 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666150 () Bool)

(declare-fun e!381536 () Bool)

(assert (=> b!666150 (= e!381536 (contains!3332 acc!681 k!2843))))

(declare-fun b!666151 () Bool)

(declare-fun res!433698 () Bool)

(assert (=> b!666151 (=> res!433698 e!381535)))

(assert (=> b!666151 (= res!433698 (not (contains!3332 lt!310323 k!2843)))))

(declare-fun b!666152 () Bool)

(declare-fun res!433692 () Bool)

(assert (=> b!666152 (=> (not res!433692) (not e!381532))))

(assert (=> b!666152 (= res!433692 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19059 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666153 () Bool)

(declare-fun res!433704 () Bool)

(assert (=> b!666153 (=> (not res!433704) (not e!381532))))

(assert (=> b!666153 (= res!433704 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666154 () Bool)

(declare-fun res!433705 () Bool)

(assert (=> b!666154 (=> res!433705 e!381535)))

(assert (=> b!666154 (= res!433705 lt!310325)))

(declare-fun b!666155 () Bool)

(declare-fun Unit!23274 () Unit!23270)

(assert (=> b!666155 (= e!381533 Unit!23274)))

(declare-fun lt!310330 () Unit!23270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39013 (_ BitVec 64) (_ BitVec 32)) Unit!23270)

(assert (=> b!666155 (= lt!310330 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!666155 false))

(declare-fun b!666156 () Bool)

(declare-fun res!433708 () Bool)

(assert (=> b!666156 (=> (not res!433708) (not e!381532))))

(assert (=> b!666156 (= res!433708 e!381538)))

(declare-fun res!433697 () Bool)

(assert (=> b!666156 (=> res!433697 e!381538)))

(assert (=> b!666156 (= res!433697 e!381536)))

(declare-fun res!433712 () Bool)

(assert (=> b!666156 (=> (not res!433712) (not e!381536))))

(assert (=> b!666156 (= res!433712 (bvsgt from!3004 i!1382))))

(declare-fun b!666157 () Bool)

(declare-fun res!433694 () Bool)

(assert (=> b!666157 (=> res!433694 e!381535)))

(assert (=> b!666157 (= res!433694 (not (subseq!70 acc!681 lt!310323)))))

(declare-fun b!666158 () Bool)

(assert (=> b!666158 (= e!381535 true)))

(declare-fun lt!310324 () Bool)

(assert (=> b!666158 (= lt!310324 (contains!3332 lt!310323 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!60010 res!433695) b!666135))

(assert (= (and b!666135 res!433693) b!666149))

(assert (= (and b!666149 res!433700) b!666141))

(assert (= (and b!666141 res!433706) b!666156))

(assert (= (and b!666156 res!433712) b!666150))

(assert (= (and b!666156 (not res!433697)) b!666140))

(assert (= (and b!666140 res!433709) b!666146))

(assert (= (and b!666156 res!433708) b!666143))

(assert (= (and b!666143 res!433707) b!666153))

(assert (= (and b!666153 res!433704) b!666142))

(assert (= (and b!666142 res!433702) b!666147))

(assert (= (and b!666147 res!433711) b!666145))

(assert (= (and b!666145 res!433710) b!666152))

(assert (= (and b!666152 res!433692) b!666148))

(assert (= (and b!666148 c!76588) b!666155))

(assert (= (and b!666148 (not c!76588)) b!666137))

(assert (= (and b!666148 c!76589) b!666138))

(assert (= (and b!666148 (not c!76589)) b!666136))

(assert (= (and b!666148 (not res!433701)) b!666144))

(assert (= (and b!666144 (not res!433703)) b!666154))

(assert (= (and b!666154 (not res!433705)) b!666139))

(assert (= (and b!666139 (not res!433699)) b!666157))

(assert (= (and b!666157 (not res!433694)) b!666151))

(assert (= (and b!666151 (not res!433698)) b!666134))

(assert (= (and b!666134 (not res!433696)) b!666158))

(declare-fun m!637027 () Bool)

(assert (=> b!666157 m!637027))

(declare-fun m!637029 () Bool)

(assert (=> start!60010 m!637029))

(declare-fun m!637031 () Bool)

(assert (=> b!666149 m!637031))

(declare-fun m!637033 () Bool)

(assert (=> b!666143 m!637033))

(declare-fun m!637035 () Bool)

(assert (=> b!666155 m!637035))

(declare-fun m!637037 () Bool)

(assert (=> b!666144 m!637037))

(declare-fun m!637039 () Bool)

(assert (=> b!666134 m!637039))

(declare-fun m!637041 () Bool)

(assert (=> b!666147 m!637041))

(declare-fun m!637043 () Bool)

(assert (=> b!666150 m!637043))

(declare-fun m!637045 () Bool)

(assert (=> b!666145 m!637045))

(declare-fun m!637047 () Bool)

(assert (=> b!666138 m!637047))

(declare-fun m!637049 () Bool)

(assert (=> b!666138 m!637049))

(declare-fun m!637051 () Bool)

(assert (=> b!666138 m!637051))

(declare-fun m!637053 () Bool)

(assert (=> b!666138 m!637053))

(assert (=> b!666138 m!637049))

(assert (=> b!666138 m!637051))

(declare-fun m!637055 () Bool)

(assert (=> b!666138 m!637055))

(declare-fun m!637057 () Bool)

(assert (=> b!666138 m!637057))

(declare-fun m!637059 () Bool)

(assert (=> b!666153 m!637059))

(assert (=> b!666146 m!637043))

(assert (=> b!666139 m!637043))

(declare-fun m!637061 () Bool)

(assert (=> b!666135 m!637061))

(declare-fun m!637063 () Bool)

(assert (=> b!666151 m!637063))

(declare-fun m!637065 () Bool)

(assert (=> b!666148 m!637065))

(assert (=> b!666148 m!637047))

(assert (=> b!666148 m!637049))

(declare-fun m!637067 () Bool)

(assert (=> b!666148 m!637067))

(declare-fun m!637069 () Bool)

(assert (=> b!666148 m!637069))

(assert (=> b!666148 m!637055))

(declare-fun m!637071 () Bool)

(assert (=> b!666148 m!637071))

(declare-fun m!637073 () Bool)

(assert (=> b!666148 m!637073))

(assert (=> b!666148 m!637049))

(declare-fun m!637075 () Bool)

(assert (=> b!666148 m!637075))

(declare-fun m!637077 () Bool)

(assert (=> b!666148 m!637077))

(assert (=> b!666148 m!637057))

(declare-fun m!637079 () Bool)

(assert (=> b!666158 m!637079))

(declare-fun m!637081 () Bool)

(assert (=> b!666141 m!637081))

(push 1)

(assert (not b!666158))

(assert (not b!666146))

(assert (not b!666155))

(assert (not b!666135))

(assert (not b!666148))

(assert (not b!666139))

(assert (not b!666134))

(assert (not b!666157))

(assert (not b!666147))

(assert (not b!666149))

(assert (not b!666144))

(assert (not b!666153))

(assert (not b!666143))

(assert (not b!666138))

(assert (not b!666150))

(assert (not b!666141))

(assert (not start!60010))

(assert (not b!666151))

(assert (not b!666145))

(check-sat)

(pop 1)

