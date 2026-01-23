; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734332 () Bool)

(assert start!734332)

(declare-fun b!7624572 () Bool)

(assert (=> b!7624572 true))

(assert (=> b!7624572 true))

(declare-fun bs!1943608 () Bool)

(declare-fun b!7624580 () Bool)

(assert (= bs!1943608 (and b!7624580 b!7624572)))

(declare-fun lambda!468653 () Int)

(declare-fun lambda!468652 () Int)

(assert (=> bs!1943608 (not (= lambda!468653 lambda!468652))))

(assert (=> b!7624580 true))

(assert (=> b!7624580 true))

(declare-fun b!7624569 () Bool)

(declare-fun e!4533418 () Bool)

(declare-fun tp_is_empty!51025 () Bool)

(declare-fun tp!2226085 () Bool)

(assert (=> b!7624569 (= e!4533418 (and tp_is_empty!51025 tp!2226085))))

(declare-fun b!7624570 () Bool)

(declare-datatypes ((Unit!167580 0))(
  ( (Unit!167581) )
))
(declare-fun e!4533414 () Unit!167580)

(declare-fun Unit!167582 () Unit!167580)

(assert (=> b!7624570 (= e!4533414 Unit!167582)))

(declare-fun lt!2657568 () Unit!167580)

(declare-datatypes ((C!40996 0))(
  ( (C!40997 (val!30938 Int)) )
))
(declare-datatypes ((Regex!20335 0))(
  ( (ElementMatch!20335 (c!1405026 C!40996)) (Concat!29180 (regOne!41182 Regex!20335) (regTwo!41182 Regex!20335)) (EmptyExpr!20335) (Star!20335 (reg!20664 Regex!20335)) (EmptyLang!20335) (Union!20335 (regOne!41183 Regex!20335) (regTwo!41183 Regex!20335)) )
))
(declare-fun r!14126 () Regex!20335)

(declare-datatypes ((List!73188 0))(
  ( (Nil!73064) (Cons!73064 (h!79512 C!40996) (t!387923 List!73188)) )
))
(declare-fun s!9605 () List!73188)

(declare-fun lemmaStarAppConcat!16 (Regex!20335 List!73188) Unit!167580)

(assert (=> b!7624570 (= lt!2657568 (lemmaStarAppConcat!16 (reg!20664 r!14126) s!9605))))

(declare-fun matchR!9842 (Regex!20335 List!73188) Bool)

(assert (=> b!7624570 (matchR!9842 (Concat!29180 (reg!20664 r!14126) r!14126) s!9605)))

(declare-fun lt!2657571 () Unit!167580)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!248 (Regex!20335 Regex!20335 List!73188) Unit!167580)

(assert (=> b!7624570 (= lt!2657571 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!248 (reg!20664 r!14126) r!14126 s!9605))))

(assert (=> b!7624570 false))

(declare-fun b!7624571 () Bool)

(declare-fun e!4533419 () Bool)

(declare-fun tp!2226084 () Bool)

(declare-fun tp!2226086 () Bool)

(assert (=> b!7624571 (= e!4533419 (and tp!2226084 tp!2226086))))

(declare-fun e!4533417 () Bool)

(declare-fun e!4533415 () Bool)

(assert (=> b!7624572 (= e!4533417 (not e!4533415))))

(declare-fun res!3052968 () Bool)

(assert (=> b!7624572 (=> res!3052968 e!4533415)))

(declare-fun lt!2657570 () Bool)

(assert (=> b!7624572 (= res!3052968 lt!2657570)))

(declare-fun Exists!4491 (Int) Bool)

(assert (=> b!7624572 (= lt!2657570 (Exists!4491 lambda!468652))))

(declare-datatypes ((tuple2!69232 0))(
  ( (tuple2!69233 (_1!37919 List!73188) (_2!37919 List!73188)) )
))
(declare-datatypes ((Option!17410 0))(
  ( (None!17409) (Some!17409 (v!54544 tuple2!69232)) )
))
(declare-fun isDefined!14026 (Option!17410) Bool)

(declare-fun findConcatSeparation!3440 (Regex!20335 Regex!20335 List!73188 List!73188 List!73188) Option!17410)

(assert (=> b!7624572 (= lt!2657570 (isDefined!14026 (findConcatSeparation!3440 (reg!20664 r!14126) r!14126 Nil!73064 s!9605 s!9605)))))

(declare-fun lt!2657572 () Unit!167580)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3198 (Regex!20335 Regex!20335 List!73188) Unit!167580)

(assert (=> b!7624572 (= lt!2657572 (lemmaFindConcatSeparationEquivalentToExists!3198 (reg!20664 r!14126) r!14126 s!9605))))

(declare-fun b!7624573 () Bool)

(declare-fun tp!2226087 () Bool)

(assert (=> b!7624573 (= e!4533419 tp!2226087)))

(declare-fun b!7624574 () Bool)

(assert (=> b!7624574 (= e!4533419 tp_is_empty!51025)))

(declare-fun b!7624575 () Bool)

(declare-fun res!3052970 () Bool)

(assert (=> b!7624575 (=> (not res!3052970) (not e!4533417))))

(get-info :version)

(assert (=> b!7624575 (= res!3052970 (and (not ((_ is EmptyExpr!20335) r!14126)) (not ((_ is EmptyLang!20335) r!14126)) (not ((_ is ElementMatch!20335) r!14126)) (not ((_ is Union!20335) r!14126)) ((_ is Star!20335) r!14126)))))

(declare-fun b!7624576 () Bool)

(declare-fun res!3052969 () Bool)

(assert (=> b!7624576 (=> (not res!3052969) (not e!4533417))))

(declare-fun isEmpty!41692 (List!73188) Bool)

(assert (=> b!7624576 (= res!3052969 (not (isEmpty!41692 s!9605)))))

(declare-fun b!7624577 () Bool)

(declare-fun tp!2226082 () Bool)

(declare-fun tp!2226083 () Bool)

(assert (=> b!7624577 (= e!4533419 (and tp!2226082 tp!2226083))))

(declare-fun b!7624578 () Bool)

(declare-fun e!4533416 () Bool)

(assert (=> b!7624578 (= e!4533416 (Exists!4491 lambda!468653))))

(declare-fun res!3052972 () Bool)

(assert (=> b!7624580 (=> res!3052972 e!4533416)))

(assert (=> b!7624580 (= res!3052972 (not (Exists!4491 lambda!468653)))))

(declare-fun b!7624581 () Bool)

(assert (=> b!7624581 (= e!4533415 e!4533416)))

(declare-fun res!3052971 () Bool)

(assert (=> b!7624581 (=> res!3052971 e!4533416)))

(assert (=> b!7624581 (= res!3052971 (Exists!4491 lambda!468652))))

(declare-fun lt!2657569 () Unit!167580)

(assert (=> b!7624581 (= lt!2657569 e!4533414)))

(declare-fun c!1405025 () Bool)

(assert (=> b!7624581 (= c!1405025 (matchR!9842 r!14126 s!9605))))

(declare-fun b!7624579 () Bool)

(declare-fun Unit!167583 () Unit!167580)

(assert (=> b!7624579 (= e!4533414 Unit!167583)))

(declare-fun res!3052967 () Bool)

(assert (=> start!734332 (=> (not res!3052967) (not e!4533417))))

(declare-fun validRegex!10755 (Regex!20335) Bool)

(assert (=> start!734332 (= res!3052967 (validRegex!10755 r!14126))))

(assert (=> start!734332 e!4533417))

(assert (=> start!734332 e!4533419))

(assert (=> start!734332 e!4533418))

(assert (= (and start!734332 res!3052967) b!7624575))

(assert (= (and b!7624575 res!3052970) b!7624576))

(assert (= (and b!7624576 res!3052969) b!7624572))

(assert (= (and b!7624572 (not res!3052968)) b!7624581))

(assert (= (and b!7624581 c!1405025) b!7624570))

(assert (= (and b!7624581 (not c!1405025)) b!7624579))

(assert (= (and b!7624581 (not res!3052971)) b!7624580))

(assert (= (and b!7624580 (not res!3052972)) b!7624578))

(assert (= (and start!734332 ((_ is ElementMatch!20335) r!14126)) b!7624574))

(assert (= (and start!734332 ((_ is Concat!29180) r!14126)) b!7624577))

(assert (= (and start!734332 ((_ is Star!20335) r!14126)) b!7624573))

(assert (= (and start!734332 ((_ is Union!20335) r!14126)) b!7624571))

(assert (= (and start!734332 ((_ is Cons!73064) s!9605)) b!7624569))

(declare-fun m!8154736 () Bool)

(assert (=> start!734332 m!8154736))

(declare-fun m!8154738 () Bool)

(assert (=> b!7624570 m!8154738))

(declare-fun m!8154740 () Bool)

(assert (=> b!7624570 m!8154740))

(declare-fun m!8154742 () Bool)

(assert (=> b!7624570 m!8154742))

(declare-fun m!8154744 () Bool)

(assert (=> b!7624578 m!8154744))

(declare-fun m!8154746 () Bool)

(assert (=> b!7624581 m!8154746))

(declare-fun m!8154748 () Bool)

(assert (=> b!7624581 m!8154748))

(assert (=> b!7624580 m!8154744))

(assert (=> b!7624572 m!8154746))

(declare-fun m!8154750 () Bool)

(assert (=> b!7624572 m!8154750))

(assert (=> b!7624572 m!8154750))

(declare-fun m!8154752 () Bool)

(assert (=> b!7624572 m!8154752))

(declare-fun m!8154754 () Bool)

(assert (=> b!7624572 m!8154754))

(declare-fun m!8154756 () Bool)

(assert (=> b!7624576 m!8154756))

(check-sat (not b!7624577) (not b!7624578) (not b!7624572) (not b!7624576) (not b!7624581) (not start!734332) tp_is_empty!51025 (not b!7624573) (not b!7624570) (not b!7624571) (not b!7624580) (not b!7624569))
(check-sat)
