; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734344 () Bool)

(assert start!734344)

(declare-fun b!7624970 () Bool)

(assert (=> b!7624970 true))

(assert (=> b!7624970 true))

(declare-fun bs!1943620 () Bool)

(declare-fun b!7624981 () Bool)

(assert (= bs!1943620 (and b!7624981 b!7624970)))

(declare-fun lambda!468713 () Int)

(declare-fun lambda!468712 () Int)

(assert (=> bs!1943620 (not (= lambda!468713 lambda!468712))))

(assert (=> b!7624981 true))

(assert (=> b!7624981 true))

(declare-fun res!3053223 () Bool)

(declare-fun e!4533579 () Bool)

(assert (=> start!734344 (=> (not res!3053223) (not e!4533579))))

(declare-datatypes ((C!41008 0))(
  ( (C!41009 (val!30944 Int)) )
))
(declare-datatypes ((Regex!20341 0))(
  ( (ElementMatch!20341 (c!1405050 C!41008)) (Concat!29186 (regOne!41194 Regex!20341) (regTwo!41194 Regex!20341)) (EmptyExpr!20341) (Star!20341 (reg!20670 Regex!20341)) (EmptyLang!20341) (Union!20341 (regOne!41195 Regex!20341) (regTwo!41195 Regex!20341)) )
))
(declare-fun r!14126 () Regex!20341)

(declare-fun validRegex!10761 (Regex!20341) Bool)

(assert (=> start!734344 (= res!3053223 (validRegex!10761 r!14126))))

(assert (=> start!734344 e!4533579))

(declare-fun e!4533575 () Bool)

(assert (=> start!734344 e!4533575))

(declare-fun e!4533580 () Bool)

(assert (=> start!734344 e!4533580))

(declare-fun b!7624967 () Bool)

(declare-fun tp!2226190 () Bool)

(assert (=> b!7624967 (= e!4533575 tp!2226190)))

(declare-fun b!7624968 () Bool)

(declare-fun tp_is_empty!51037 () Bool)

(declare-fun tp!2226193 () Bool)

(assert (=> b!7624968 (= e!4533580 (and tp_is_empty!51037 tp!2226193))))

(declare-fun b!7624969 () Bool)

(declare-fun tp!2226192 () Bool)

(declare-fun tp!2226194 () Bool)

(assert (=> b!7624969 (= e!4533575 (and tp!2226192 tp!2226194))))

(declare-fun e!4533578 () Bool)

(assert (=> b!7624970 (= e!4533579 (not e!4533578))))

(declare-fun res!3053224 () Bool)

(assert (=> b!7624970 (=> res!3053224 e!4533578)))

(declare-fun lt!2657699 () Bool)

(assert (=> b!7624970 (= res!3053224 lt!2657699)))

(declare-fun Exists!4497 (Int) Bool)

(assert (=> b!7624970 (= lt!2657699 (Exists!4497 lambda!468712))))

(declare-datatypes ((List!73194 0))(
  ( (Nil!73070) (Cons!73070 (h!79518 C!41008) (t!387929 List!73194)) )
))
(declare-fun s!9605 () List!73194)

(declare-datatypes ((tuple2!69244 0))(
  ( (tuple2!69245 (_1!37925 List!73194) (_2!37925 List!73194)) )
))
(declare-datatypes ((Option!17416 0))(
  ( (None!17415) (Some!17415 (v!54550 tuple2!69244)) )
))
(declare-fun isDefined!14032 (Option!17416) Bool)

(declare-fun findConcatSeparation!3446 (Regex!20341 Regex!20341 List!73194 List!73194 List!73194) Option!17416)

(assert (=> b!7624970 (= lt!2657699 (isDefined!14032 (findConcatSeparation!3446 (reg!20670 r!14126) r!14126 Nil!73070 s!9605 s!9605)))))

(declare-datatypes ((Unit!167604 0))(
  ( (Unit!167605) )
))
(declare-fun lt!2657700 () Unit!167604)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3204 (Regex!20341 Regex!20341 List!73194) Unit!167604)

(assert (=> b!7624970 (= lt!2657700 (lemmaFindConcatSeparationEquivalentToExists!3204 (reg!20670 r!14126) r!14126 s!9605))))

(declare-fun b!7624971 () Bool)

(declare-fun e!4533581 () Bool)

(assert (=> b!7624971 (= e!4533578 e!4533581)))

(declare-fun res!3053219 () Bool)

(assert (=> b!7624971 (=> res!3053219 e!4533581)))

(assert (=> b!7624971 (= res!3053219 (Exists!4497 lambda!468712))))

(declare-fun lt!2657701 () Unit!167604)

(declare-fun e!4533577 () Unit!167604)

(assert (=> b!7624971 (= lt!2657701 e!4533577)))

(declare-fun c!1405049 () Bool)

(declare-fun matchR!9848 (Regex!20341 List!73194) Bool)

(assert (=> b!7624971 (= c!1405049 (matchR!9848 r!14126 s!9605))))

(declare-fun b!7624972 () Bool)

(declare-fun Unit!167606 () Unit!167604)

(assert (=> b!7624972 (= e!4533577 Unit!167606)))

(declare-fun lt!2657698 () Unit!167604)

(declare-fun lemmaStarAppConcat!22 (Regex!20341 List!73194) Unit!167604)

(assert (=> b!7624972 (= lt!2657698 (lemmaStarAppConcat!22 (reg!20670 r!14126) s!9605))))

(assert (=> b!7624972 (matchR!9848 (Concat!29186 (reg!20670 r!14126) r!14126) s!9605)))

(declare-fun lt!2657704 () Unit!167604)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!254 (Regex!20341 Regex!20341 List!73194) Unit!167604)

(assert (=> b!7624972 (= lt!2657704 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!254 (reg!20670 r!14126) r!14126 s!9605))))

(assert (=> b!7624972 false))

(declare-fun b!7624973 () Bool)

(declare-fun res!3053218 () Bool)

(declare-fun e!4533576 () Bool)

(assert (=> b!7624973 (=> res!3053218 e!4533576)))

(declare-fun lt!2657697 () tuple2!69244)

(declare-fun isPrefix!6221 (List!73194 List!73194) Bool)

(assert (=> b!7624973 (= res!3053218 (not (isPrefix!6221 Nil!73070 (_1!37925 lt!2657697))))))

(declare-fun b!7624974 () Bool)

(assert (=> b!7624974 (= e!4533581 e!4533576)))

(declare-fun res!3053216 () Bool)

(assert (=> b!7624974 (=> res!3053216 e!4533576)))

(assert (=> b!7624974 (= res!3053216 (not (validRegex!10761 (reg!20670 r!14126))))))

(declare-fun matchRSpec!4524 (Regex!20341 List!73194) Bool)

(assert (=> b!7624974 (= (matchR!9848 r!14126 (_2!37925 lt!2657697)) (matchRSpec!4524 r!14126 (_2!37925 lt!2657697)))))

(declare-fun lt!2657703 () Unit!167604)

(declare-fun mainMatchTheorem!4514 (Regex!20341 List!73194) Unit!167604)

(assert (=> b!7624974 (= lt!2657703 (mainMatchTheorem!4514 r!14126 (_2!37925 lt!2657697)))))

(assert (=> b!7624974 (= (matchR!9848 (reg!20670 r!14126) (_1!37925 lt!2657697)) (matchRSpec!4524 (reg!20670 r!14126) (_1!37925 lt!2657697)))))

(declare-fun lt!2657696 () Unit!167604)

(assert (=> b!7624974 (= lt!2657696 (mainMatchTheorem!4514 (reg!20670 r!14126) (_1!37925 lt!2657697)))))

(declare-fun pickWitness!454 (Int) tuple2!69244)

(assert (=> b!7624974 (= lt!2657697 (pickWitness!454 lambda!468713))))

(declare-fun b!7624975 () Bool)

(declare-fun tp!2226191 () Bool)

(declare-fun tp!2226195 () Bool)

(assert (=> b!7624975 (= e!4533575 (and tp!2226191 tp!2226195))))

(declare-fun b!7624976 () Bool)

(declare-fun res!3053222 () Bool)

(assert (=> b!7624976 (=> res!3053222 e!4533576)))

(declare-fun ++!17641 (List!73194 List!73194) List!73194)

(assert (=> b!7624976 (= res!3053222 (not (= (++!17641 (_1!37925 lt!2657697) (_2!37925 lt!2657697)) s!9605)))))

(declare-fun b!7624977 () Bool)

(declare-fun Unit!167607 () Unit!167604)

(assert (=> b!7624977 (= e!4533577 Unit!167607)))

(declare-fun b!7624978 () Bool)

(declare-fun res!3053217 () Bool)

(assert (=> b!7624978 (=> (not res!3053217) (not e!4533579))))

(get-info :version)

(assert (=> b!7624978 (= res!3053217 (and (not ((_ is EmptyExpr!20341) r!14126)) (not ((_ is EmptyLang!20341) r!14126)) (not ((_ is ElementMatch!20341) r!14126)) (not ((_ is Union!20341) r!14126)) ((_ is Star!20341) r!14126)))))

(declare-fun b!7624979 () Bool)

(assert (=> b!7624979 (= e!4533575 tp_is_empty!51037)))

(declare-fun b!7624980 () Bool)

(assert (=> b!7624980 (= e!4533576 true)))

(declare-fun lt!2657702 () List!73194)

(assert (=> b!7624980 (= lt!2657702 (++!17641 Nil!73070 s!9605))))

(declare-fun res!3053220 () Bool)

(assert (=> b!7624981 (=> res!3053220 e!4533581)))

(assert (=> b!7624981 (= res!3053220 (not (Exists!4497 lambda!468713)))))

(declare-fun b!7624982 () Bool)

(declare-fun res!3053215 () Bool)

(assert (=> b!7624982 (=> (not res!3053215) (not e!4533579))))

(declare-fun isEmpty!41698 (List!73194) Bool)

(assert (=> b!7624982 (= res!3053215 (not (isEmpty!41698 s!9605)))))

(declare-fun b!7624983 () Bool)

(declare-fun res!3053221 () Bool)

(assert (=> b!7624983 (=> res!3053221 e!4533576)))

(assert (=> b!7624983 (= res!3053221 (not (validRegex!10761 r!14126)))))

(assert (= (and start!734344 res!3053223) b!7624978))

(assert (= (and b!7624978 res!3053217) b!7624982))

(assert (= (and b!7624982 res!3053215) b!7624970))

(assert (= (and b!7624970 (not res!3053224)) b!7624971))

(assert (= (and b!7624971 c!1405049) b!7624972))

(assert (= (and b!7624971 (not c!1405049)) b!7624977))

(assert (= (and b!7624971 (not res!3053219)) b!7624981))

(assert (= (and b!7624981 (not res!3053220)) b!7624974))

(assert (= (and b!7624974 (not res!3053216)) b!7624983))

(assert (= (and b!7624983 (not res!3053221)) b!7624976))

(assert (= (and b!7624976 (not res!3053222)) b!7624973))

(assert (= (and b!7624973 (not res!3053218)) b!7624980))

(assert (= (and start!734344 ((_ is ElementMatch!20341) r!14126)) b!7624979))

(assert (= (and start!734344 ((_ is Concat!29186) r!14126)) b!7624975))

(assert (= (and start!734344 ((_ is Star!20341) r!14126)) b!7624967))

(assert (= (and start!734344 ((_ is Union!20341) r!14126)) b!7624969))

(assert (= (and start!734344 ((_ is Cons!73070) s!9605)) b!7624968))

(declare-fun m!8154910 () Bool)

(assert (=> b!7624973 m!8154910))

(declare-fun m!8154912 () Bool)

(assert (=> start!734344 m!8154912))

(declare-fun m!8154914 () Bool)

(assert (=> b!7624981 m!8154914))

(declare-fun m!8154916 () Bool)

(assert (=> b!7624982 m!8154916))

(declare-fun m!8154918 () Bool)

(assert (=> b!7624976 m!8154918))

(declare-fun m!8154920 () Bool)

(assert (=> b!7624971 m!8154920))

(declare-fun m!8154922 () Bool)

(assert (=> b!7624971 m!8154922))

(declare-fun m!8154924 () Bool)

(assert (=> b!7624980 m!8154924))

(assert (=> b!7624970 m!8154920))

(declare-fun m!8154926 () Bool)

(assert (=> b!7624970 m!8154926))

(assert (=> b!7624970 m!8154926))

(declare-fun m!8154928 () Bool)

(assert (=> b!7624970 m!8154928))

(declare-fun m!8154930 () Bool)

(assert (=> b!7624970 m!8154930))

(declare-fun m!8154932 () Bool)

(assert (=> b!7624974 m!8154932))

(declare-fun m!8154934 () Bool)

(assert (=> b!7624974 m!8154934))

(declare-fun m!8154936 () Bool)

(assert (=> b!7624974 m!8154936))

(declare-fun m!8154938 () Bool)

(assert (=> b!7624974 m!8154938))

(declare-fun m!8154940 () Bool)

(assert (=> b!7624974 m!8154940))

(declare-fun m!8154942 () Bool)

(assert (=> b!7624974 m!8154942))

(declare-fun m!8154944 () Bool)

(assert (=> b!7624974 m!8154944))

(declare-fun m!8154946 () Bool)

(assert (=> b!7624974 m!8154946))

(declare-fun m!8154948 () Bool)

(assert (=> b!7624972 m!8154948))

(declare-fun m!8154950 () Bool)

(assert (=> b!7624972 m!8154950))

(declare-fun m!8154952 () Bool)

(assert (=> b!7624972 m!8154952))

(assert (=> b!7624983 m!8154912))

(check-sat (not b!7624972) (not b!7624971) (not b!7624976) (not b!7624967) (not b!7624981) (not b!7624973) tp_is_empty!51037 (not b!7624980) (not b!7624975) (not b!7624982) (not b!7624969) (not b!7624970) (not start!734344) (not b!7624983) (not b!7624968) (not b!7624974))
(check-sat)
