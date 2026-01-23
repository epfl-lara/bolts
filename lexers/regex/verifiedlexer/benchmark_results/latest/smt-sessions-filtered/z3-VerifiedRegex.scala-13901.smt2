; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!738824 () Bool)

(assert start!738824)

(declare-fun b!7749253 () Bool)

(assert (=> b!7749253 true))

(assert (=> b!7749253 true))

(declare-fun bs!1965766 () Bool)

(declare-fun b!7749256 () Bool)

(assert (= bs!1965766 (and b!7749256 b!7749253)))

(declare-fun lambda!471899 () Int)

(declare-fun lambda!471898 () Int)

(assert (=> bs!1965766 (not (= lambda!471899 lambda!471898))))

(assert (=> b!7749256 true))

(assert (=> b!7749256 true))

(declare-fun b!7749247 () Bool)

(declare-fun e!4594083 () Bool)

(assert (=> b!7749247 (= e!4594083 false)))

(declare-fun b!7749248 () Bool)

(declare-fun e!4594077 () Bool)

(declare-fun tp!2273448 () Bool)

(declare-fun tp!2273446 () Bool)

(assert (=> b!7749248 (= e!4594077 (and tp!2273448 tp!2273446))))

(declare-fun b!7749249 () Bool)

(declare-fun res!3089991 () Bool)

(declare-fun e!4594082 () Bool)

(assert (=> b!7749249 (=> (not res!3089991) (not e!4594082))))

(declare-datatypes ((C!41520 0))(
  ( (C!41521 (val!31200 Int)) )
))
(declare-datatypes ((Regex!20597 0))(
  ( (ElementMatch!20597 (c!1429278 C!41520)) (Concat!29442 (regOne!41706 Regex!20597) (regTwo!41706 Regex!20597)) (EmptyExpr!20597) (Star!20597 (reg!20926 Regex!20597)) (EmptyLang!20597) (Union!20597 (regOne!41707 Regex!20597) (regTwo!41707 Regex!20597)) )
))
(declare-fun r!14126 () Regex!20597)

(get-info :version)

(assert (=> b!7749249 (= res!3089991 (and (not ((_ is EmptyExpr!20597) r!14126)) (not ((_ is EmptyLang!20597) r!14126)) (not ((_ is ElementMatch!20597) r!14126)) (not ((_ is Union!20597) r!14126)) (not ((_ is Star!20597) r!14126))))))

(declare-fun b!7749250 () Bool)

(declare-fun e!4594079 () Bool)

(assert (=> b!7749250 (= e!4594079 false)))

(declare-fun lt!2669225 () Bool)

(assert (=> b!7749250 lt!2669225))

(declare-datatypes ((Unit!168312 0))(
  ( (Unit!168313) )
))
(declare-fun lt!2669223 () Unit!168312)

(declare-datatypes ((List!73444 0))(
  ( (Nil!73320) (Cons!73320 (h!79768 C!41520) (t!388179 List!73444)) )
))
(declare-fun s!9605 () List!73444)

(declare-datatypes ((tuple2!69648 0))(
  ( (tuple2!69649 (_1!38127 List!73444) (_2!38127 List!73444)) )
))
(declare-fun lt!2669229 () tuple2!69648)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!126 (Regex!20597 Regex!20597 List!73444 List!73444 List!73444 List!73444 List!73444) Unit!168312)

(assert (=> b!7749250 (= lt!2669223 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!126 (regOne!41706 r!14126) (regTwo!41706 r!14126) (_1!38127 lt!2669229) (_2!38127 lt!2669229) s!9605 Nil!73320 s!9605))))

(declare-fun matchR!10089 (Regex!20597 List!73444) Bool)

(declare-fun matchRSpec!4662 (Regex!20597 List!73444) Bool)

(assert (=> b!7749250 (= (matchR!10089 (regTwo!41706 r!14126) (_2!38127 lt!2669229)) (matchRSpec!4662 (regTwo!41706 r!14126) (_2!38127 lt!2669229)))))

(declare-fun lt!2669228 () Unit!168312)

(declare-fun mainMatchTheorem!4632 (Regex!20597 List!73444) Unit!168312)

(assert (=> b!7749250 (= lt!2669228 (mainMatchTheorem!4632 (regTwo!41706 r!14126) (_2!38127 lt!2669229)))))

(assert (=> b!7749250 (= (matchR!10089 (regOne!41706 r!14126) (_1!38127 lt!2669229)) (matchRSpec!4662 (regOne!41706 r!14126) (_1!38127 lt!2669229)))))

(declare-fun lt!2669227 () Unit!168312)

(assert (=> b!7749250 (= lt!2669227 (mainMatchTheorem!4632 (regOne!41706 r!14126) (_1!38127 lt!2669229)))))

(declare-fun pickWitness!554 (Int) tuple2!69648)

(assert (=> b!7749250 (= lt!2669229 (pickWitness!554 lambda!471899))))

(declare-fun b!7749251 () Bool)

(declare-fun e!4594078 () Bool)

(assert (=> b!7749251 (= e!4594078 e!4594079)))

(declare-fun res!3089989 () Bool)

(assert (=> b!7749251 (=> res!3089989 e!4594079)))

(declare-fun Exists!4718 (Int) Bool)

(assert (=> b!7749251 (= res!3089989 (Exists!4718 lambda!471898))))

(declare-fun lt!2669226 () Unit!168312)

(declare-fun e!4594081 () Unit!168312)

(assert (=> b!7749251 (= lt!2669226 e!4594081)))

(declare-fun c!1429277 () Bool)

(assert (=> b!7749251 (= c!1429277 lt!2669225)))

(declare-fun b!7749252 () Bool)

(declare-fun tp!2273445 () Bool)

(assert (=> b!7749252 (= e!4594077 tp!2273445)))

(assert (=> b!7749253 (= e!4594082 (not e!4594078))))

(declare-fun res!3089994 () Bool)

(assert (=> b!7749253 (=> res!3089994 e!4594078)))

(assert (=> b!7749253 (= res!3089994 (matchR!10089 r!14126 s!9605))))

(assert (=> b!7749253 (= lt!2669225 (Exists!4718 lambda!471898))))

(declare-datatypes ((Option!17618 0))(
  ( (None!17617) (Some!17617 (v!54752 tuple2!69648)) )
))
(declare-fun lt!2669231 () Option!17618)

(declare-fun isDefined!14234 (Option!17618) Bool)

(assert (=> b!7749253 (= lt!2669225 (isDefined!14234 lt!2669231))))

(declare-fun findConcatSeparation!3648 (Regex!20597 Regex!20597 List!73444 List!73444 List!73444) Option!17618)

(assert (=> b!7749253 (= lt!2669231 (findConcatSeparation!3648 (regOne!41706 r!14126) (regTwo!41706 r!14126) Nil!73320 s!9605 s!9605))))

(declare-fun lt!2669230 () Unit!168312)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3406 (Regex!20597 Regex!20597 List!73444) Unit!168312)

(assert (=> b!7749253 (= lt!2669230 (lemmaFindConcatSeparationEquivalentToExists!3406 (regOne!41706 r!14126) (regTwo!41706 r!14126) s!9605))))

(declare-fun res!3089993 () Bool)

(assert (=> start!738824 (=> (not res!3089993) (not e!4594082))))

(declare-fun validRegex!11015 (Regex!20597) Bool)

(assert (=> start!738824 (= res!3089993 (validRegex!11015 r!14126))))

(assert (=> start!738824 e!4594082))

(assert (=> start!738824 e!4594077))

(declare-fun e!4594080 () Bool)

(assert (=> start!738824 e!4594080))

(declare-fun b!7749254 () Bool)

(declare-fun tp_is_empty!51549 () Bool)

(declare-fun tp!2273444 () Bool)

(assert (=> b!7749254 (= e!4594080 (and tp_is_empty!51549 tp!2273444))))

(declare-fun b!7749255 () Bool)

(declare-fun tp!2273449 () Bool)

(declare-fun tp!2273447 () Bool)

(assert (=> b!7749255 (= e!4594077 (and tp!2273449 tp!2273447))))

(declare-fun res!3089990 () Bool)

(assert (=> b!7749256 (=> res!3089990 e!4594079)))

(assert (=> b!7749256 (= res!3089990 (not (Exists!4718 lambda!471899)))))

(declare-fun b!7749257 () Bool)

(declare-fun Unit!168314 () Unit!168312)

(assert (=> b!7749257 (= e!4594081 Unit!168314)))

(declare-fun b!7749258 () Bool)

(declare-fun Unit!168315 () Unit!168312)

(assert (=> b!7749258 (= e!4594081 Unit!168315)))

(declare-fun lt!2669232 () tuple2!69648)

(declare-fun get!26086 (Option!17618) tuple2!69648)

(assert (=> b!7749258 (= lt!2669232 (get!26086 lt!2669231))))

(declare-fun lt!2669224 () Unit!168312)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!222 (Regex!20597 Regex!20597 List!73444 List!73444 List!73444) Unit!168312)

(assert (=> b!7749258 (= lt!2669224 (lemmaFindSeparationIsDefinedThenConcatMatches!222 (regOne!41706 r!14126) (regTwo!41706 r!14126) (_1!38127 lt!2669232) (_2!38127 lt!2669232) s!9605))))

(declare-fun res!3089992 () Bool)

(declare-fun ++!17796 (List!73444 List!73444) List!73444)

(assert (=> b!7749258 (= res!3089992 (matchR!10089 r!14126 (++!17796 (_1!38127 lt!2669232) (_2!38127 lt!2669232))))))

(assert (=> b!7749258 (=> (not res!3089992) (not e!4594083))))

(assert (=> b!7749258 e!4594083))

(declare-fun b!7749259 () Bool)

(assert (=> b!7749259 (= e!4594077 tp_is_empty!51549)))

(assert (= (and start!738824 res!3089993) b!7749249))

(assert (= (and b!7749249 res!3089991) b!7749253))

(assert (= (and b!7749253 (not res!3089994)) b!7749251))

(assert (= (and b!7749251 c!1429277) b!7749258))

(assert (= (and b!7749251 (not c!1429277)) b!7749257))

(assert (= (and b!7749258 res!3089992) b!7749247))

(assert (= (and b!7749251 (not res!3089989)) b!7749256))

(assert (= (and b!7749256 (not res!3089990)) b!7749250))

(assert (= (and start!738824 ((_ is ElementMatch!20597) r!14126)) b!7749259))

(assert (= (and start!738824 ((_ is Concat!29442) r!14126)) b!7749255))

(assert (= (and start!738824 ((_ is Star!20597) r!14126)) b!7749252))

(assert (= (and start!738824 ((_ is Union!20597) r!14126)) b!7749248))

(assert (= (and start!738824 ((_ is Cons!73320) s!9605)) b!7749254))

(declare-fun m!8216020 () Bool)

(assert (=> b!7749258 m!8216020))

(declare-fun m!8216022 () Bool)

(assert (=> b!7749258 m!8216022))

(declare-fun m!8216024 () Bool)

(assert (=> b!7749258 m!8216024))

(assert (=> b!7749258 m!8216024))

(declare-fun m!8216026 () Bool)

(assert (=> b!7749258 m!8216026))

(declare-fun m!8216028 () Bool)

(assert (=> b!7749253 m!8216028))

(declare-fun m!8216030 () Bool)

(assert (=> b!7749253 m!8216030))

(declare-fun m!8216032 () Bool)

(assert (=> b!7749253 m!8216032))

(declare-fun m!8216034 () Bool)

(assert (=> b!7749253 m!8216034))

(declare-fun m!8216036 () Bool)

(assert (=> b!7749253 m!8216036))

(declare-fun m!8216038 () Bool)

(assert (=> b!7749250 m!8216038))

(declare-fun m!8216040 () Bool)

(assert (=> b!7749250 m!8216040))

(declare-fun m!8216042 () Bool)

(assert (=> b!7749250 m!8216042))

(declare-fun m!8216044 () Bool)

(assert (=> b!7749250 m!8216044))

(declare-fun m!8216046 () Bool)

(assert (=> b!7749250 m!8216046))

(declare-fun m!8216048 () Bool)

(assert (=> b!7749250 m!8216048))

(declare-fun m!8216050 () Bool)

(assert (=> b!7749250 m!8216050))

(declare-fun m!8216052 () Bool)

(assert (=> b!7749250 m!8216052))

(assert (=> b!7749251 m!8216036))

(declare-fun m!8216054 () Bool)

(assert (=> b!7749256 m!8216054))

(declare-fun m!8216056 () Bool)

(assert (=> start!738824 m!8216056))

(check-sat (not start!738824) tp_is_empty!51549 (not b!7749254) (not b!7749251) (not b!7749248) (not b!7749255) (not b!7749252) (not b!7749250) (not b!7749253) (not b!7749258) (not b!7749256))
(check-sat)
