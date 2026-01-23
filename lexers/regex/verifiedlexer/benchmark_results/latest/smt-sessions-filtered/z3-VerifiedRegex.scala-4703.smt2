; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243784 () Bool)

(assert start!243784)

(declare-fun b!2496317 () Bool)

(declare-fun e!1583941 () Bool)

(declare-fun tp!799533 () Bool)

(assert (=> b!2496317 (= e!1583941 tp!799533)))

(declare-fun b!2496318 () Bool)

(declare-fun tp!799537 () Bool)

(declare-fun tp!799536 () Bool)

(assert (=> b!2496318 (= e!1583941 (and tp!799537 tp!799536))))

(declare-fun b!2496319 () Bool)

(declare-fun e!1583943 () Bool)

(declare-datatypes ((C!14920 0))(
  ( (C!14921 (val!9112 Int)) )
))
(declare-datatypes ((Regex!7381 0))(
  ( (ElementMatch!7381 (c!396979 C!14920)) (Concat!12077 (regOne!15274 Regex!7381) (regTwo!15274 Regex!7381)) (EmptyExpr!7381) (Star!7381 (reg!7710 Regex!7381)) (EmptyLang!7381) (Union!7381 (regOne!15275 Regex!7381) (regTwo!15275 Regex!7381)) )
))
(declare-fun lt!894796 () Regex!7381)

(declare-fun validRegex!3007 (Regex!7381) Bool)

(assert (=> b!2496319 (= e!1583943 (validRegex!3007 lt!894796))))

(declare-fun b!2496320 () Bool)

(declare-fun tp_is_empty!12617 () Bool)

(assert (=> b!2496320 (= e!1583941 tp_is_empty!12617)))

(declare-fun b!2496321 () Bool)

(declare-fun e!1583942 () Bool)

(declare-fun e!1583944 () Bool)

(assert (=> b!2496321 (= e!1583942 (not e!1583944))))

(declare-fun res!1055792 () Bool)

(assert (=> b!2496321 (=> res!1055792 e!1583944)))

(declare-fun lt!894793 () Bool)

(assert (=> b!2496321 (= res!1055792 (not lt!894793))))

(declare-fun lt!894790 () Regex!7381)

(declare-datatypes ((List!29446 0))(
  ( (Nil!29346) (Cons!29346 (h!34766 C!14920) (t!211145 List!29446)) )
))
(declare-fun matchR!3390 (Regex!7381 List!29446) Bool)

(assert (=> b!2496321 (= lt!894793 (matchR!3390 lt!894790 Nil!29346))))

(declare-fun lt!894792 () Regex!7381)

(declare-fun tl!4068 () List!29446)

(assert (=> b!2496321 (= lt!894793 (matchR!3390 lt!894792 tl!4068))))

(declare-datatypes ((Unit!43031 0))(
  ( (Unit!43032) )
))
(declare-fun lt!894795 () Unit!43031)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!36 (Regex!7381 List!29446) Unit!43031)

(assert (=> b!2496321 (= lt!894795 (lemmaMatchRIsSameAsWholeDerivativeAndNil!36 lt!894792 tl!4068))))

(declare-fun b!2496322 () Bool)

(declare-fun res!1055793 () Bool)

(declare-fun e!1583940 () Bool)

(assert (=> b!2496322 (=> (not res!1055793) (not e!1583940))))

(declare-fun r!27340 () Regex!7381)

(get-info :version)

(assert (=> b!2496322 (= res!1055793 (and (not ((_ is EmptyExpr!7381) r!27340)) (not ((_ is EmptyLang!7381) r!27340)) (not ((_ is ElementMatch!7381) r!27340)) (not ((_ is Union!7381) r!27340)) ((_ is Star!7381) r!27340)))))

(declare-fun b!2496324 () Bool)

(declare-fun tp!799538 () Bool)

(declare-fun tp!799535 () Bool)

(assert (=> b!2496324 (= e!1583941 (and tp!799538 tp!799535))))

(declare-fun b!2496325 () Bool)

(assert (=> b!2496325 (= e!1583944 e!1583943)))

(declare-fun res!1055791 () Bool)

(assert (=> b!2496325 (=> res!1055791 e!1583943)))

(declare-datatypes ((tuple2!29380 0))(
  ( (tuple2!29381 (_1!17232 List!29446) (_2!17232 List!29446)) )
))
(declare-fun lt!894797 () tuple2!29380)

(declare-fun ++!7163 (List!29446 List!29446) List!29446)

(assert (=> b!2496325 (= res!1055791 (not (= (++!7163 (_1!17232 lt!894797) (_2!17232 lt!894797)) tl!4068)))))

(declare-datatypes ((Option!5810 0))(
  ( (None!5809) (Some!5809 (v!31740 tuple2!29380)) )
))
(declare-fun lt!894791 () Option!5810)

(declare-fun get!9083 (Option!5810) tuple2!29380)

(assert (=> b!2496325 (= lt!894797 (get!9083 lt!894791))))

(declare-fun isDefined!4632 (Option!5810) Bool)

(assert (=> b!2496325 (isDefined!4632 lt!894791)))

(declare-fun lt!894798 () Regex!7381)

(declare-fun findConcatSeparation!832 (Regex!7381 Regex!7381 List!29446 List!29446 List!29446) Option!5810)

(assert (=> b!2496325 (= lt!894791 (findConcatSeparation!832 lt!894798 lt!894796 Nil!29346 tl!4068 tl!4068))))

(declare-fun lt!894794 () Unit!43031)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!114 (Regex!7381 Regex!7381 List!29446) Unit!43031)

(assert (=> b!2496325 (= lt!894794 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!114 lt!894798 lt!894796 tl!4068))))

(declare-fun b!2496326 () Bool)

(declare-fun e!1583945 () Bool)

(assert (=> b!2496326 (= e!1583945 e!1583940)))

(declare-fun res!1055790 () Bool)

(assert (=> b!2496326 (=> (not res!1055790) (not e!1583940))))

(declare-fun nullable!2298 (Regex!7381) Bool)

(assert (=> b!2496326 (= res!1055790 (nullable!2298 lt!894790))))

(declare-fun derivative!76 (Regex!7381 List!29446) Regex!7381)

(assert (=> b!2496326 (= lt!894790 (derivative!76 lt!894792 tl!4068))))

(declare-fun c!14016 () C!14920)

(declare-fun derivativeStep!1950 (Regex!7381 C!14920) Regex!7381)

(assert (=> b!2496326 (= lt!894792 (derivativeStep!1950 r!27340 c!14016))))

(declare-fun b!2496323 () Bool)

(declare-fun e!1583946 () Bool)

(declare-fun tp!799534 () Bool)

(assert (=> b!2496323 (= e!1583946 (and tp_is_empty!12617 tp!799534))))

(declare-fun res!1055794 () Bool)

(assert (=> start!243784 (=> (not res!1055794) (not e!1583945))))

(assert (=> start!243784 (= res!1055794 (validRegex!3007 r!27340))))

(assert (=> start!243784 e!1583945))

(assert (=> start!243784 e!1583941))

(assert (=> start!243784 tp_is_empty!12617))

(assert (=> start!243784 e!1583946))

(declare-fun b!2496327 () Bool)

(declare-fun res!1055788 () Bool)

(assert (=> b!2496327 (=> (not res!1055788) (not e!1583942))))

(assert (=> b!2496327 (= res!1055788 (not (nullable!2298 (derivative!76 lt!894798 tl!4068))))))

(declare-fun b!2496328 () Bool)

(assert (=> b!2496328 (= e!1583940 e!1583942)))

(declare-fun res!1055789 () Bool)

(assert (=> b!2496328 (=> (not res!1055789) (not e!1583942))))

(assert (=> b!2496328 (= res!1055789 (= lt!894792 (Concat!12077 lt!894798 lt!894796)))))

(assert (=> b!2496328 (= lt!894796 (Star!7381 (reg!7710 r!27340)))))

(assert (=> b!2496328 (= lt!894798 (derivativeStep!1950 (reg!7710 r!27340) c!14016))))

(assert (= (and start!243784 res!1055794) b!2496326))

(assert (= (and b!2496326 res!1055790) b!2496322))

(assert (= (and b!2496322 res!1055793) b!2496328))

(assert (= (and b!2496328 res!1055789) b!2496327))

(assert (= (and b!2496327 res!1055788) b!2496321))

(assert (= (and b!2496321 (not res!1055792)) b!2496325))

(assert (= (and b!2496325 (not res!1055791)) b!2496319))

(assert (= (and start!243784 ((_ is ElementMatch!7381) r!27340)) b!2496320))

(assert (= (and start!243784 ((_ is Concat!12077) r!27340)) b!2496318))

(assert (= (and start!243784 ((_ is Star!7381) r!27340)) b!2496317))

(assert (= (and start!243784 ((_ is Union!7381) r!27340)) b!2496324))

(assert (= (and start!243784 ((_ is Cons!29346) tl!4068)) b!2496323))

(declare-fun m!2860705 () Bool)

(assert (=> b!2496327 m!2860705))

(assert (=> b!2496327 m!2860705))

(declare-fun m!2860707 () Bool)

(assert (=> b!2496327 m!2860707))

(declare-fun m!2860709 () Bool)

(assert (=> b!2496319 m!2860709))

(declare-fun m!2860711 () Bool)

(assert (=> b!2496328 m!2860711))

(declare-fun m!2860713 () Bool)

(assert (=> b!2496326 m!2860713))

(declare-fun m!2860715 () Bool)

(assert (=> b!2496326 m!2860715))

(declare-fun m!2860717 () Bool)

(assert (=> b!2496326 m!2860717))

(declare-fun m!2860719 () Bool)

(assert (=> start!243784 m!2860719))

(declare-fun m!2860721 () Bool)

(assert (=> b!2496325 m!2860721))

(declare-fun m!2860723 () Bool)

(assert (=> b!2496325 m!2860723))

(declare-fun m!2860725 () Bool)

(assert (=> b!2496325 m!2860725))

(declare-fun m!2860727 () Bool)

(assert (=> b!2496325 m!2860727))

(declare-fun m!2860729 () Bool)

(assert (=> b!2496325 m!2860729))

(declare-fun m!2860731 () Bool)

(assert (=> b!2496321 m!2860731))

(declare-fun m!2860733 () Bool)

(assert (=> b!2496321 m!2860733))

(declare-fun m!2860735 () Bool)

(assert (=> b!2496321 m!2860735))

(check-sat tp_is_empty!12617 (not b!2496317) (not b!2496327) (not start!243784) (not b!2496324) (not b!2496328) (not b!2496319) (not b!2496325) (not b!2496321) (not b!2496318) (not b!2496323) (not b!2496326))
(check-sat)
