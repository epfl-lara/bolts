; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294516 () Bool)

(assert start!294516)

(declare-fun res!1272084 () Bool)

(declare-fun e!1940931 () Bool)

(assert (=> start!294516 (=> (not res!1272084) (not e!1940931))))

(declare-datatypes ((C!19344 0))(
  ( (C!19345 (val!11708 Int)) )
))
(declare-datatypes ((Regex!9579 0))(
  ( (ElementMatch!9579 (c!519585 C!19344)) (Concat!14900 (regOne!19670 Regex!9579) (regTwo!19670 Regex!9579)) (EmptyExpr!9579) (Star!9579 (reg!9908 Regex!9579)) (EmptyLang!9579) (Union!9579 (regOne!19671 Regex!9579) (regTwo!19671 Regex!9579)) )
))
(declare-fun r!17423 () Regex!9579)

(declare-fun validRegex!4312 (Regex!9579) Bool)

(assert (=> start!294516 (= res!1272084 (validRegex!4312 r!17423))))

(assert (=> start!294516 e!1940931))

(declare-fun e!1940926 () Bool)

(assert (=> start!294516 e!1940926))

(declare-fun e!1940928 () Bool)

(assert (=> start!294516 e!1940928))

(declare-fun b!3106572 () Bool)

(declare-fun tp_is_empty!16721 () Bool)

(assert (=> b!3106572 (= e!1940926 tp_is_empty!16721)))

(declare-fun b!3106573 () Bool)

(declare-fun tp!975664 () Bool)

(declare-fun tp!975663 () Bool)

(assert (=> b!3106573 (= e!1940926 (and tp!975664 tp!975663))))

(declare-fun b!3106574 () Bool)

(declare-fun res!1272086 () Bool)

(declare-fun e!1940927 () Bool)

(assert (=> b!3106574 (=> res!1272086 e!1940927)))

(declare-fun lt!1056712 () Regex!9579)

(declare-fun isEmptyLang!630 (Regex!9579) Bool)

(assert (=> b!3106574 (= res!1272086 (not (isEmptyLang!630 lt!1056712)))))

(declare-fun b!3106575 () Bool)

(declare-fun e!1940930 () Bool)

(assert (=> b!3106575 (= e!1940930 false)))

(declare-datatypes ((List!35444 0))(
  ( (Nil!35320) (Cons!35320 (h!40740 C!19344) (t!234509 List!35444)) )
))
(declare-fun s!11993 () List!35444)

(declare-fun matchR!4461 (Regex!9579 List!35444) Bool)

(assert (=> b!3106575 (matchR!4461 (Union!9579 (regOne!19671 r!17423) (regTwo!19671 r!17423)) s!11993)))

(declare-datatypes ((Unit!49597 0))(
  ( (Unit!49598) )
))
(declare-fun lt!1056713 () Unit!49597)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!84 (Regex!9579 Regex!9579 List!35444) Unit!49597)

(assert (=> b!3106575 (= lt!1056713 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!84 (regOne!19671 r!17423) (regTwo!19671 r!17423) s!11993))))

(declare-fun b!3106576 () Bool)

(assert (=> b!3106576 (= e!1940927 e!1940930)))

(declare-fun res!1272087 () Bool)

(assert (=> b!3106576 (=> res!1272087 e!1940930)))

(declare-fun lt!1056711 () Bool)

(assert (=> b!3106576 (= res!1272087 (not lt!1056711))))

(declare-fun lt!1056710 () Regex!9579)

(assert (=> b!3106576 (= lt!1056711 (matchR!4461 lt!1056710 s!11993))))

(assert (=> b!3106576 (= lt!1056711 (matchR!4461 (regOne!19671 r!17423) s!11993))))

(declare-fun lt!1056714 () Unit!49597)

(declare-fun lemmaSimplifySound!338 (Regex!9579 List!35444) Unit!49597)

(assert (=> b!3106576 (= lt!1056714 (lemmaSimplifySound!338 (regOne!19671 r!17423) s!11993))))

(declare-fun b!3106577 () Bool)

(declare-fun tp!975661 () Bool)

(assert (=> b!3106577 (= e!1940928 (and tp_is_empty!16721 tp!975661))))

(declare-fun b!3106578 () Bool)

(declare-fun e!1940929 () Bool)

(assert (=> b!3106578 (= e!1940929 e!1940927)))

(declare-fun res!1272088 () Bool)

(assert (=> b!3106578 (=> res!1272088 e!1940927)))

(assert (=> b!3106578 (= res!1272088 (isEmptyLang!630 lt!1056710))))

(declare-fun simplify!534 (Regex!9579) Regex!9579)

(assert (=> b!3106578 (= lt!1056712 (simplify!534 (regTwo!19671 r!17423)))))

(assert (=> b!3106578 (= lt!1056710 (simplify!534 (regOne!19671 r!17423)))))

(declare-fun b!3106579 () Bool)

(declare-fun tp!975662 () Bool)

(assert (=> b!3106579 (= e!1940926 tp!975662)))

(declare-fun b!3106580 () Bool)

(declare-fun tp!975660 () Bool)

(declare-fun tp!975665 () Bool)

(assert (=> b!3106580 (= e!1940926 (and tp!975660 tp!975665))))

(declare-fun b!3106581 () Bool)

(assert (=> b!3106581 (= e!1940931 (not e!1940929))))

(declare-fun res!1272085 () Bool)

(assert (=> b!3106581 (=> res!1272085 e!1940929)))

(declare-fun lt!1056715 () Bool)

(get-info :version)

(assert (=> b!3106581 (= res!1272085 (or lt!1056715 ((_ is Concat!14900) r!17423) (not ((_ is Union!9579) r!17423))))))

(declare-fun matchRSpec!1716 (Regex!9579 List!35444) Bool)

(assert (=> b!3106581 (= lt!1056715 (matchRSpec!1716 r!17423 s!11993))))

(assert (=> b!3106581 (= lt!1056715 (matchR!4461 r!17423 s!11993))))

(declare-fun lt!1056716 () Unit!49597)

(declare-fun mainMatchTheorem!1716 (Regex!9579 List!35444) Unit!49597)

(assert (=> b!3106581 (= lt!1056716 (mainMatchTheorem!1716 r!17423 s!11993))))

(assert (= (and start!294516 res!1272084) b!3106581))

(assert (= (and b!3106581 (not res!1272085)) b!3106578))

(assert (= (and b!3106578 (not res!1272088)) b!3106574))

(assert (= (and b!3106574 (not res!1272086)) b!3106576))

(assert (= (and b!3106576 (not res!1272087)) b!3106575))

(assert (= (and start!294516 ((_ is ElementMatch!9579) r!17423)) b!3106572))

(assert (= (and start!294516 ((_ is Concat!14900) r!17423)) b!3106573))

(assert (= (and start!294516 ((_ is Star!9579) r!17423)) b!3106579))

(assert (= (and start!294516 ((_ is Union!9579) r!17423)) b!3106580))

(assert (= (and start!294516 ((_ is Cons!35320) s!11993)) b!3106577))

(declare-fun m!3403043 () Bool)

(assert (=> b!3106575 m!3403043))

(declare-fun m!3403045 () Bool)

(assert (=> b!3106575 m!3403045))

(declare-fun m!3403047 () Bool)

(assert (=> start!294516 m!3403047))

(declare-fun m!3403049 () Bool)

(assert (=> b!3106576 m!3403049))

(declare-fun m!3403051 () Bool)

(assert (=> b!3106576 m!3403051))

(declare-fun m!3403053 () Bool)

(assert (=> b!3106576 m!3403053))

(declare-fun m!3403055 () Bool)

(assert (=> b!3106574 m!3403055))

(declare-fun m!3403057 () Bool)

(assert (=> b!3106578 m!3403057))

(declare-fun m!3403059 () Bool)

(assert (=> b!3106578 m!3403059))

(declare-fun m!3403061 () Bool)

(assert (=> b!3106578 m!3403061))

(declare-fun m!3403063 () Bool)

(assert (=> b!3106581 m!3403063))

(declare-fun m!3403065 () Bool)

(assert (=> b!3106581 m!3403065))

(declare-fun m!3403067 () Bool)

(assert (=> b!3106581 m!3403067))

(check-sat (not b!3106580) (not b!3106576) (not b!3106577) (not b!3106574) (not b!3106575) (not b!3106581) (not b!3106579) (not start!294516) (not b!3106573) (not b!3106578) tp_is_empty!16721)
(check-sat)
