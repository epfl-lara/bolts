; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294384 () Bool)

(assert start!294384)

(declare-fun b!3103861 () Bool)

(declare-fun e!1939451 () Bool)

(declare-fun tp!975180 () Bool)

(assert (=> b!3103861 (= e!1939451 tp!975180)))

(declare-fun b!3103862 () Bool)

(declare-fun e!1939448 () Bool)

(declare-fun tp_is_empty!16701 () Bool)

(declare-fun tp!975177 () Bool)

(assert (=> b!3103862 (= e!1939448 (and tp_is_empty!16701 tp!975177))))

(declare-fun res!1271233 () Bool)

(declare-fun e!1939452 () Bool)

(assert (=> start!294384 (=> (not res!1271233) (not e!1939452))))

(declare-datatypes ((C!19324 0))(
  ( (C!19325 (val!11698 Int)) )
))
(declare-datatypes ((Regex!9569 0))(
  ( (ElementMatch!9569 (c!518877 C!19324)) (Concat!14890 (regOne!19650 Regex!9569) (regTwo!19650 Regex!9569)) (EmptyExpr!9569) (Star!9569 (reg!9898 Regex!9569)) (EmptyLang!9569) (Union!9569 (regOne!19651 Regex!9569) (regTwo!19651 Regex!9569)) )
))
(declare-fun r!17423 () Regex!9569)

(declare-fun validRegex!4302 (Regex!9569) Bool)

(assert (=> start!294384 (= res!1271233 (validRegex!4302 r!17423))))

(assert (=> start!294384 e!1939452))

(assert (=> start!294384 e!1939451))

(assert (=> start!294384 e!1939448))

(declare-fun b!3103863 () Bool)

(declare-fun tp!975178 () Bool)

(declare-fun tp!975181 () Bool)

(assert (=> b!3103863 (= e!1939451 (and tp!975178 tp!975181))))

(declare-fun b!3103864 () Bool)

(assert (=> b!3103864 (= e!1939451 tp_is_empty!16701)))

(declare-fun b!3103865 () Bool)

(declare-fun e!1939450 () Bool)

(declare-fun e!1939453 () Bool)

(assert (=> b!3103865 (= e!1939450 e!1939453)))

(declare-fun res!1271234 () Bool)

(assert (=> b!3103865 (=> res!1271234 e!1939453)))

(declare-fun lt!1056252 () Bool)

(assert (=> b!3103865 (= res!1271234 (not lt!1056252))))

(declare-fun lt!1056250 () Regex!9569)

(declare-datatypes ((List!35434 0))(
  ( (Nil!35310) (Cons!35310 (h!40730 C!19324) (t!234499 List!35434)) )
))
(declare-fun s!11993 () List!35434)

(declare-fun matchR!4451 (Regex!9569 List!35434) Bool)

(assert (=> b!3103865 (= lt!1056252 (matchR!4451 lt!1056250 s!11993))))

(assert (=> b!3103865 (= lt!1056252 (matchR!4451 (regTwo!19651 r!17423) s!11993))))

(declare-datatypes ((Unit!49577 0))(
  ( (Unit!49578) )
))
(declare-fun lt!1056248 () Unit!49577)

(declare-fun lemmaSimplifySound!332 (Regex!9569 List!35434) Unit!49577)

(assert (=> b!3103865 (= lt!1056248 (lemmaSimplifySound!332 (regTwo!19651 r!17423) s!11993))))

(declare-fun b!3103866 () Bool)

(declare-fun e!1939449 () Bool)

(assert (=> b!3103866 (= e!1939452 (not e!1939449))))

(declare-fun res!1271232 () Bool)

(assert (=> b!3103866 (=> res!1271232 e!1939449)))

(declare-fun lt!1056253 () Bool)

(get-info :version)

(assert (=> b!3103866 (= res!1271232 (or lt!1056253 ((_ is Concat!14890) r!17423) (not ((_ is Union!9569) r!17423))))))

(declare-fun matchRSpec!1706 (Regex!9569 List!35434) Bool)

(assert (=> b!3103866 (= lt!1056253 (matchRSpec!1706 r!17423 s!11993))))

(assert (=> b!3103866 (= lt!1056253 (matchR!4451 r!17423 s!11993))))

(declare-fun lt!1056247 () Unit!49577)

(declare-fun mainMatchTheorem!1706 (Regex!9569 List!35434) Unit!49577)

(assert (=> b!3103866 (= lt!1056247 (mainMatchTheorem!1706 r!17423 s!11993))))

(declare-fun b!3103867 () Bool)

(assert (=> b!3103867 (= e!1939453 false)))

(assert (=> b!3103867 (matchR!4451 (Union!9569 (regOne!19651 r!17423) (regTwo!19651 r!17423)) s!11993)))

(declare-fun lt!1056251 () Unit!49577)

(declare-fun lemmaReversedUnionAcceptsSameString!26 (Regex!9569 Regex!9569 List!35434) Unit!49577)

(assert (=> b!3103867 (= lt!1056251 (lemmaReversedUnionAcceptsSameString!26 (regTwo!19651 r!17423) (regOne!19651 r!17423) s!11993))))

(assert (=> b!3103867 (matchR!4451 (Union!9569 (regTwo!19651 r!17423) (regOne!19651 r!17423)) s!11993)))

(declare-fun lt!1056254 () Unit!49577)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!82 (Regex!9569 Regex!9569 List!35434) Unit!49577)

(assert (=> b!3103867 (= lt!1056254 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!82 (regTwo!19651 r!17423) (regOne!19651 r!17423) s!11993))))

(declare-fun b!3103868 () Bool)

(assert (=> b!3103868 (= e!1939449 e!1939450)))

(declare-fun res!1271231 () Bool)

(assert (=> b!3103868 (=> res!1271231 e!1939450)))

(declare-fun lt!1056249 () Regex!9569)

(declare-fun isEmptyLang!620 (Regex!9569) Bool)

(assert (=> b!3103868 (= res!1271231 (not (isEmptyLang!620 lt!1056249)))))

(declare-fun simplify!524 (Regex!9569) Regex!9569)

(assert (=> b!3103868 (= lt!1056250 (simplify!524 (regTwo!19651 r!17423)))))

(assert (=> b!3103868 (= lt!1056249 (simplify!524 (regOne!19651 r!17423)))))

(declare-fun b!3103869 () Bool)

(declare-fun tp!975176 () Bool)

(declare-fun tp!975179 () Bool)

(assert (=> b!3103869 (= e!1939451 (and tp!975176 tp!975179))))

(assert (= (and start!294384 res!1271233) b!3103866))

(assert (= (and b!3103866 (not res!1271232)) b!3103868))

(assert (= (and b!3103868 (not res!1271231)) b!3103865))

(assert (= (and b!3103865 (not res!1271234)) b!3103867))

(assert (= (and start!294384 ((_ is ElementMatch!9569) r!17423)) b!3103864))

(assert (= (and start!294384 ((_ is Concat!14890) r!17423)) b!3103869))

(assert (= (and start!294384 ((_ is Star!9569) r!17423)) b!3103861))

(assert (= (and start!294384 ((_ is Union!9569) r!17423)) b!3103863))

(assert (= (and start!294384 ((_ is Cons!35310) s!11993)) b!3103862))

(declare-fun m!3402073 () Bool)

(assert (=> b!3103868 m!3402073))

(declare-fun m!3402075 () Bool)

(assert (=> b!3103868 m!3402075))

(declare-fun m!3402077 () Bool)

(assert (=> b!3103868 m!3402077))

(declare-fun m!3402079 () Bool)

(assert (=> b!3103867 m!3402079))

(declare-fun m!3402081 () Bool)

(assert (=> b!3103867 m!3402081))

(declare-fun m!3402083 () Bool)

(assert (=> b!3103867 m!3402083))

(declare-fun m!3402085 () Bool)

(assert (=> b!3103867 m!3402085))

(declare-fun m!3402087 () Bool)

(assert (=> start!294384 m!3402087))

(declare-fun m!3402089 () Bool)

(assert (=> b!3103865 m!3402089))

(declare-fun m!3402091 () Bool)

(assert (=> b!3103865 m!3402091))

(declare-fun m!3402093 () Bool)

(assert (=> b!3103865 m!3402093))

(declare-fun m!3402095 () Bool)

(assert (=> b!3103866 m!3402095))

(declare-fun m!3402097 () Bool)

(assert (=> b!3103866 m!3402097))

(declare-fun m!3402099 () Bool)

(assert (=> b!3103866 m!3402099))

(check-sat (not b!3103862) (not b!3103865) (not b!3103861) (not b!3103863) (not b!3103869) (not b!3103868) (not b!3103866) tp_is_empty!16701 (not b!3103867) (not start!294384))
(check-sat)
