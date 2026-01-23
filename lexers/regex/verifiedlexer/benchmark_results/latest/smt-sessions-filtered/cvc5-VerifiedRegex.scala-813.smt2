; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45446 () Bool)

(assert start!45446)

(declare-fun b!473071 () Bool)

(declare-fun e!289279 () Bool)

(declare-fun tp_is_empty!2241 () Bool)

(assert (=> b!473071 (= e!289279 tp_is_empty!2241)))

(declare-fun b!473072 () Bool)

(declare-fun tp!131165 () Bool)

(declare-fun tp!131164 () Bool)

(assert (=> b!473072 (= e!289279 (and tp!131165 tp!131164))))

(declare-fun res!210011 () Bool)

(declare-fun e!289278 () Bool)

(assert (=> start!45446 (=> (not res!210011) (not e!289278))))

(declare-datatypes ((C!3166 0))(
  ( (C!3167 (val!1569 Int)) )
))
(declare-datatypes ((Regex!1122 0))(
  ( (ElementMatch!1122 (c!94923 C!3166)) (Concat!2022 (regOne!2756 Regex!1122) (regTwo!2756 Regex!1122)) (EmptyExpr!1122) (Star!1122 (reg!1451 Regex!1122)) (EmptyLang!1122) (Union!1122 (regOne!2757 Regex!1122) (regTwo!2757 Regex!1122)) )
))
(declare-fun r!20230 () Regex!1122)

(declare-fun validRegex!350 (Regex!1122) Bool)

(assert (=> start!45446 (= res!210011 (validRegex!350 r!20230))))

(assert (=> start!45446 e!289278))

(assert (=> start!45446 e!289279))

(declare-fun b!473073 () Bool)

(declare-fun tp!131166 () Bool)

(declare-fun tp!131162 () Bool)

(assert (=> b!473073 (= e!289279 (and tp!131166 tp!131162))))

(declare-fun b!473074 () Bool)

(declare-fun e!289280 () Bool)

(declare-fun lostCause!116 (Regex!1122) Bool)

(assert (=> b!473074 (= e!289280 (lostCause!116 (regTwo!2756 r!20230)))))

(declare-fun b!473075 () Bool)

(declare-fun res!210012 () Bool)

(assert (=> b!473075 (=> (not res!210012) (not e!289278))))

(assert (=> b!473075 (= res!210012 (lostCause!116 r!20230))))

(declare-fun b!473076 () Bool)

(declare-fun res!210010 () Bool)

(assert (=> b!473076 (=> (not res!210010) (not e!289278))))

(assert (=> b!473076 (= res!210010 e!289280)))

(declare-fun res!210009 () Bool)

(assert (=> b!473076 (=> res!210009 e!289280)))

(assert (=> b!473076 (= res!210009 (lostCause!116 (regOne!2756 r!20230)))))

(declare-fun b!473077 () Bool)

(declare-fun res!210008 () Bool)

(assert (=> b!473077 (=> (not res!210008) (not e!289278))))

(assert (=> b!473077 (= res!210008 (and (not (is-EmptyLang!1122 r!20230)) (not (is-EmptyExpr!1122 r!20230)) (not (is-ElementMatch!1122 r!20230)) (not (is-Union!1122 r!20230)) (not (is-Star!1122 r!20230))))))

(declare-fun b!473078 () Bool)

(assert (=> b!473078 (= e!289278 false)))

(declare-fun b!473079 () Bool)

(declare-fun tp!131163 () Bool)

(assert (=> b!473079 (= e!289279 tp!131163)))

(assert (= (and start!45446 res!210011) b!473075))

(assert (= (and b!473075 res!210012) b!473077))

(assert (= (and b!473077 res!210008) b!473076))

(assert (= (and b!473076 (not res!210009)) b!473074))

(assert (= (and b!473076 res!210010) b!473078))

(assert (= (and start!45446 (is-ElementMatch!1122 r!20230)) b!473071))

(assert (= (and start!45446 (is-Concat!2022 r!20230)) b!473073))

(assert (= (and start!45446 (is-Star!1122 r!20230)) b!473079))

(assert (= (and start!45446 (is-Union!1122 r!20230)) b!473072))

(declare-fun m!746487 () Bool)

(assert (=> start!45446 m!746487))

(declare-fun m!746489 () Bool)

(assert (=> b!473074 m!746489))

(declare-fun m!746491 () Bool)

(assert (=> b!473075 m!746491))

(declare-fun m!746493 () Bool)

(assert (=> b!473076 m!746493))

(push 1)

(assert (not b!473073))

(assert tp_is_empty!2241)

(assert (not start!45446))

(assert (not b!473079))

(assert (not b!473074))

(assert (not b!473076))

(assert (not b!473075))

(assert (not b!473072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

