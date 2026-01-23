; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80184 () Bool)

(assert start!80184)

(declare-fun b!888008 () Bool)

(declare-fun e!582090 () Bool)

(declare-fun tp!279766 () Bool)

(assert (=> b!888008 (= e!582090 tp!279766)))

(declare-fun b!888009 () Bool)

(declare-fun e!582087 () Bool)

(declare-fun tp_is_empty!4227 () Bool)

(declare-fun tp!279770 () Bool)

(assert (=> b!888009 (= e!582087 (and tp_is_empty!4227 tp!279770))))

(declare-fun b!888010 () Bool)

(declare-fun e!582088 () Bool)

(assert (=> b!888010 (= e!582088 true)))

(declare-fun e!582089 () Bool)

(assert (=> b!888010 e!582089))

(declare-fun res!403899 () Bool)

(assert (=> b!888010 (=> res!403899 e!582089)))

(declare-datatypes ((C!5154 0))(
  ( (C!5155 (val!2825 Int)) )
))
(declare-datatypes ((Regex!2292 0))(
  ( (ElementMatch!2292 (c!143609 C!5154)) (Concat!4125 (regOne!5096 Regex!2292) (regTwo!5096 Regex!2292)) (EmptyExpr!2292) (Star!2292 (reg!2621 Regex!2292)) (EmptyLang!2292) (Union!2292 (regOne!5097 Regex!2292) (regTwo!5097 Regex!2292)) )
))
(declare-fun r!15766 () Regex!2292)

(declare-datatypes ((List!9522 0))(
  ( (Nil!9506) (Cons!9506 (h!14907 C!5154) (t!100568 List!9522)) )
))
(declare-fun s!10566 () List!9522)

(declare-fun matchR!830 (Regex!2292 List!9522) Bool)

(assert (=> b!888010 (= res!403899 (matchR!830 (regOne!5097 r!15766) s!10566))))

(declare-datatypes ((Unit!14163 0))(
  ( (Unit!14164) )
))
(declare-fun lt!331914 () Unit!14163)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!3 (Regex!2292 Regex!2292 List!9522) Unit!14163)

(assert (=> b!888010 (= lt!331914 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!3 (regOne!5097 r!15766) (regTwo!5097 r!15766) s!10566))))

(declare-fun b!888011 () Bool)

(assert (=> b!888011 (= e!582090 tp_is_empty!4227)))

(declare-fun res!403897 () Bool)

(declare-fun e!582086 () Bool)

(assert (=> start!80184 (=> (not res!403897) (not e!582086))))

(declare-fun validRegex!761 (Regex!2292) Bool)

(assert (=> start!80184 (= res!403897 (validRegex!761 r!15766))))

(assert (=> start!80184 e!582086))

(assert (=> start!80184 e!582090))

(assert (=> start!80184 e!582087))

(declare-fun b!888012 () Bool)

(assert (=> b!888012 (= e!582089 (matchR!830 (regTwo!5097 r!15766) s!10566))))

(declare-fun b!888013 () Bool)

(declare-fun tp!279767 () Bool)

(declare-fun tp!279765 () Bool)

(assert (=> b!888013 (= e!582090 (and tp!279767 tp!279765))))

(declare-fun b!888014 () Bool)

(assert (=> b!888014 (= e!582086 (not e!582088))))

(declare-fun res!403898 () Bool)

(assert (=> b!888014 (=> res!403898 e!582088)))

(declare-fun lt!331915 () Bool)

(assert (=> b!888014 (= res!403898 (or (not lt!331915) (and (is-Concat!4125 r!15766) (is-EmptyExpr!2292 (regOne!5096 r!15766))) (and (is-Concat!4125 r!15766) (is-EmptyExpr!2292 (regTwo!5096 r!15766))) (is-Concat!4125 r!15766) (not (is-Union!2292 r!15766))))))

(declare-fun matchRSpec!93 (Regex!2292 List!9522) Bool)

(assert (=> b!888014 (= lt!331915 (matchRSpec!93 r!15766 s!10566))))

(assert (=> b!888014 (= lt!331915 (matchR!830 r!15766 s!10566))))

(declare-fun lt!331916 () Unit!14163)

(declare-fun mainMatchTheorem!93 (Regex!2292 List!9522) Unit!14163)

(assert (=> b!888014 (= lt!331916 (mainMatchTheorem!93 r!15766 s!10566))))

(declare-fun b!888015 () Bool)

(declare-fun tp!279768 () Bool)

(declare-fun tp!279769 () Bool)

(assert (=> b!888015 (= e!582090 (and tp!279768 tp!279769))))

(assert (= (and start!80184 res!403897) b!888014))

(assert (= (and b!888014 (not res!403898)) b!888010))

(assert (= (and b!888010 (not res!403899)) b!888012))

(assert (= (and start!80184 (is-ElementMatch!2292 r!15766)) b!888011))

(assert (= (and start!80184 (is-Concat!4125 r!15766)) b!888015))

(assert (= (and start!80184 (is-Star!2292 r!15766)) b!888008))

(assert (= (and start!80184 (is-Union!2292 r!15766)) b!888013))

(assert (= (and start!80184 (is-Cons!9506 s!10566)) b!888009))

(declare-fun m!1132825 () Bool)

(assert (=> b!888010 m!1132825))

(declare-fun m!1132827 () Bool)

(assert (=> b!888010 m!1132827))

(declare-fun m!1132829 () Bool)

(assert (=> start!80184 m!1132829))

(declare-fun m!1132831 () Bool)

(assert (=> b!888012 m!1132831))

(declare-fun m!1132833 () Bool)

(assert (=> b!888014 m!1132833))

(declare-fun m!1132835 () Bool)

(assert (=> b!888014 m!1132835))

(declare-fun m!1132837 () Bool)

(assert (=> b!888014 m!1132837))

(push 1)

(assert tp_is_empty!4227)

(assert (not b!888010))

(assert (not start!80184))

(assert (not b!888009))

(assert (not b!888012))

(assert (not b!888014))

(assert (not b!888015))

(assert (not b!888013))

(assert (not b!888008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

