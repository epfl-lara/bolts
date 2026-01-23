; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!288480 () Bool)

(assert start!288480)

(declare-fun b!2986581 () Bool)

(declare-fun e!1877832 () Bool)

(declare-fun tp_is_empty!16225 () Bool)

(declare-fun tp!950121 () Bool)

(assert (=> b!2986581 (= e!1877832 (and tp_is_empty!16225 tp!950121))))

(declare-fun b!2986582 () Bool)

(declare-fun e!1877835 () Bool)

(declare-datatypes ((C!18848 0))(
  ( (C!18849 (val!11460 Int)) )
))
(declare-datatypes ((Regex!9331 0))(
  ( (ElementMatch!9331 (c!490731 C!18848)) (Concat!14652 (regOne!19174 Regex!9331) (regTwo!19174 Regex!9331)) (EmptyExpr!9331) (Star!9331 (reg!9660 Regex!9331)) (EmptyLang!9331) (Union!9331 (regOne!19175 Regex!9331) (regTwo!19175 Regex!9331)) )
))
(declare-fun r!17423 () Regex!9331)

(declare-datatypes ((List!35196 0))(
  ( (Nil!35072) (Cons!35072 (h!40492 C!18848) (t!234261 List!35196)) )
))
(declare-fun s!11993 () List!35196)

(declare-fun matchR!4213 (Regex!9331 List!35196) Bool)

(assert (=> b!2986582 (= e!1877835 (matchR!4213 (regTwo!19175 r!17423) s!11993))))

(declare-fun b!2986583 () Bool)

(declare-fun e!1877833 () Bool)

(declare-fun e!1877830 () Bool)

(assert (=> b!2986583 (= e!1877833 e!1877830)))

(declare-fun res!1231703 () Bool)

(assert (=> b!2986583 (=> res!1231703 e!1877830)))

(declare-fun lt!1039486 () Bool)

(assert (=> b!2986583 (= res!1231703 (not lt!1039486))))

(assert (=> b!2986583 e!1877835))

(declare-fun res!1231704 () Bool)

(assert (=> b!2986583 (=> res!1231704 e!1877835)))

(assert (=> b!2986583 (= res!1231704 lt!1039486)))

(assert (=> b!2986583 (= lt!1039486 (matchR!4213 (regOne!19175 r!17423) s!11993))))

(declare-datatypes ((Unit!49065 0))(
  ( (Unit!49066) )
))
(declare-fun lt!1039488 () Unit!49065)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!290 (Regex!9331 Regex!9331 List!35196) Unit!49065)

(assert (=> b!2986583 (= lt!1039488 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!290 (regOne!19175 r!17423) (regTwo!19175 r!17423) s!11993))))

(declare-fun b!2986584 () Bool)

(declare-fun e!1877834 () Bool)

(assert (=> b!2986584 (= e!1877834 tp_is_empty!16225)))

(declare-fun b!2986585 () Bool)

(declare-fun tp!950117 () Bool)

(assert (=> b!2986585 (= e!1877834 tp!950117)))

(declare-fun res!1231706 () Bool)

(declare-fun e!1877831 () Bool)

(assert (=> start!288480 (=> (not res!1231706) (not e!1877831))))

(declare-fun validRegex!4064 (Regex!9331) Bool)

(assert (=> start!288480 (= res!1231706 (validRegex!4064 r!17423))))

(assert (=> start!288480 e!1877831))

(assert (=> start!288480 e!1877834))

(assert (=> start!288480 e!1877832))

(declare-fun b!2986586 () Bool)

(declare-fun tp!950120 () Bool)

(declare-fun tp!950119 () Bool)

(assert (=> b!2986586 (= e!1877834 (and tp!950120 tp!950119))))

(declare-fun b!2986587 () Bool)

(assert (=> b!2986587 (= e!1877830 true)))

(declare-fun simplify!328 (Regex!9331) Regex!9331)

(assert (=> b!2986587 (matchR!4213 (simplify!328 (regOne!19175 r!17423)) s!11993)))

(declare-fun lt!1039487 () Unit!49065)

(declare-fun lemmaSimplifySound!186 (Regex!9331 List!35196) Unit!49065)

(assert (=> b!2986587 (= lt!1039487 (lemmaSimplifySound!186 (regOne!19175 r!17423) s!11993))))

(declare-fun b!2986588 () Bool)

(assert (=> b!2986588 (= e!1877831 (not e!1877833))))

(declare-fun res!1231705 () Bool)

(assert (=> b!2986588 (=> res!1231705 e!1877833)))

(declare-fun lt!1039484 () Bool)

(get-info :version)

(assert (=> b!2986588 (= res!1231705 (or (not lt!1039484) ((_ is Concat!14652) r!17423) (not ((_ is Union!9331) r!17423))))))

(declare-fun matchRSpec!1468 (Regex!9331 List!35196) Bool)

(assert (=> b!2986588 (= lt!1039484 (matchRSpec!1468 r!17423 s!11993))))

(assert (=> b!2986588 (= lt!1039484 (matchR!4213 r!17423 s!11993))))

(declare-fun lt!1039485 () Unit!49065)

(declare-fun mainMatchTheorem!1468 (Regex!9331 List!35196) Unit!49065)

(assert (=> b!2986588 (= lt!1039485 (mainMatchTheorem!1468 r!17423 s!11993))))

(declare-fun b!2986589 () Bool)

(declare-fun tp!950118 () Bool)

(declare-fun tp!950116 () Bool)

(assert (=> b!2986589 (= e!1877834 (and tp!950118 tp!950116))))

(assert (= (and start!288480 res!1231706) b!2986588))

(assert (= (and b!2986588 (not res!1231705)) b!2986583))

(assert (= (and b!2986583 (not res!1231704)) b!2986582))

(assert (= (and b!2986583 (not res!1231703)) b!2986587))

(assert (= (and start!288480 ((_ is ElementMatch!9331) r!17423)) b!2986584))

(assert (= (and start!288480 ((_ is Concat!14652) r!17423)) b!2986586))

(assert (= (and start!288480 ((_ is Star!9331) r!17423)) b!2986585))

(assert (= (and start!288480 ((_ is Union!9331) r!17423)) b!2986589))

(assert (= (and start!288480 ((_ is Cons!35072) s!11993)) b!2986581))

(declare-fun m!3345061 () Bool)

(assert (=> b!2986582 m!3345061))

(declare-fun m!3345063 () Bool)

(assert (=> b!2986583 m!3345063))

(declare-fun m!3345065 () Bool)

(assert (=> b!2986583 m!3345065))

(declare-fun m!3345067 () Bool)

(assert (=> b!2986588 m!3345067))

(declare-fun m!3345069 () Bool)

(assert (=> b!2986588 m!3345069))

(declare-fun m!3345071 () Bool)

(assert (=> b!2986588 m!3345071))

(declare-fun m!3345073 () Bool)

(assert (=> b!2986587 m!3345073))

(assert (=> b!2986587 m!3345073))

(declare-fun m!3345075 () Bool)

(assert (=> b!2986587 m!3345075))

(declare-fun m!3345077 () Bool)

(assert (=> b!2986587 m!3345077))

(declare-fun m!3345079 () Bool)

(assert (=> start!288480 m!3345079))

(check-sat tp_is_empty!16225 (not b!2986587) (not b!2986589) (not b!2986583) (not b!2986582) (not b!2986586) (not start!288480) (not b!2986581) (not b!2986588) (not b!2986585))
(check-sat)
