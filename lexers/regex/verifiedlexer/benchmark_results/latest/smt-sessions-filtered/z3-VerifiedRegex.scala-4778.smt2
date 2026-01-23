; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246372 () Bool)

(assert start!246372)

(declare-fun b!2530379 () Bool)

(declare-fun e!1601350 () Bool)

(declare-fun tp!807826 () Bool)

(assert (=> b!2530379 (= e!1601350 tp!807826)))

(declare-fun b!2530380 () Bool)

(declare-fun e!1601352 () Bool)

(assert (=> b!2530380 (= e!1601352 (not true))))

(declare-datatypes ((C!15220 0))(
  ( (C!15221 (val!9262 Int)) )
))
(declare-datatypes ((Regex!7531 0))(
  ( (ElementMatch!7531 (c!404207 C!15220)) (Concat!12227 (regOne!15574 Regex!7531) (regTwo!15574 Regex!7531)) (EmptyExpr!7531) (Star!7531 (reg!7860 Regex!7531)) (EmptyLang!7531) (Union!7531 (regOne!15575 Regex!7531) (regTwo!15575 Regex!7531)) )
))
(declare-fun lt!901124 () Regex!7531)

(declare-fun lt!901126 () Regex!7531)

(assert (=> b!2530380 (= lt!901124 lt!901126)))

(declare-datatypes ((Unit!43283 0))(
  ( (Unit!43284) )
))
(declare-fun lt!901125 () Unit!43283)

(declare-datatypes ((List!29596 0))(
  ( (Nil!29496) (Cons!29496 (h!34916 C!15220) (t!211295 List!29596)) )
))
(declare-fun tl!4068 () List!29596)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!46 (Regex!7531 List!29596) Unit!43283)

(assert (=> b!2530380 (= lt!901125 (lemmaEmptyLangDerivativeIsAFixPoint!46 lt!901126 tl!4068))))

(declare-fun b!2530381 () Bool)

(declare-fun res!1068446 () Bool)

(assert (=> b!2530381 (=> (not res!1068446) (not e!1601352))))

(declare-fun r!27340 () Regex!7531)

(get-info :version)

(assert (=> b!2530381 (= res!1068446 (and ((_ is EmptyExpr!7531) r!27340) (= lt!901126 EmptyLang!7531)))))

(declare-fun b!2530382 () Bool)

(declare-fun tp_is_empty!12917 () Bool)

(assert (=> b!2530382 (= e!1601350 tp_is_empty!12917)))

(declare-fun b!2530383 () Bool)

(declare-fun e!1601349 () Bool)

(declare-fun tp!807830 () Bool)

(assert (=> b!2530383 (= e!1601349 (and tp_is_empty!12917 tp!807830))))

(declare-fun b!2530384 () Bool)

(declare-fun e!1601351 () Bool)

(assert (=> b!2530384 (= e!1601351 e!1601352)))

(declare-fun res!1068445 () Bool)

(assert (=> b!2530384 (=> (not res!1068445) (not e!1601352))))

(declare-fun nullable!2448 (Regex!7531) Bool)

(assert (=> b!2530384 (= res!1068445 (nullable!2448 lt!901124))))

(declare-fun derivative!226 (Regex!7531 List!29596) Regex!7531)

(assert (=> b!2530384 (= lt!901124 (derivative!226 lt!901126 tl!4068))))

(declare-fun c!14016 () C!15220)

(declare-fun derivativeStep!2100 (Regex!7531 C!15220) Regex!7531)

(assert (=> b!2530384 (= lt!901126 (derivativeStep!2100 r!27340 c!14016))))

(declare-fun res!1068444 () Bool)

(assert (=> start!246372 (=> (not res!1068444) (not e!1601351))))

(declare-fun validRegex!3157 (Regex!7531) Bool)

(assert (=> start!246372 (= res!1068444 (validRegex!3157 r!27340))))

(assert (=> start!246372 e!1601351))

(assert (=> start!246372 e!1601350))

(assert (=> start!246372 tp_is_empty!12917))

(assert (=> start!246372 e!1601349))

(declare-fun b!2530385 () Bool)

(declare-fun tp!807828 () Bool)

(declare-fun tp!807829 () Bool)

(assert (=> b!2530385 (= e!1601350 (and tp!807828 tp!807829))))

(declare-fun b!2530386 () Bool)

(declare-fun tp!807825 () Bool)

(declare-fun tp!807827 () Bool)

(assert (=> b!2530386 (= e!1601350 (and tp!807825 tp!807827))))

(assert (= (and start!246372 res!1068444) b!2530384))

(assert (= (and b!2530384 res!1068445) b!2530381))

(assert (= (and b!2530381 res!1068446) b!2530380))

(assert (= (and start!246372 ((_ is ElementMatch!7531) r!27340)) b!2530382))

(assert (= (and start!246372 ((_ is Concat!12227) r!27340)) b!2530385))

(assert (= (and start!246372 ((_ is Star!7531) r!27340)) b!2530379))

(assert (= (and start!246372 ((_ is Union!7531) r!27340)) b!2530386))

(assert (= (and start!246372 ((_ is Cons!29496) tl!4068)) b!2530383))

(declare-fun m!2881947 () Bool)

(assert (=> b!2530380 m!2881947))

(declare-fun m!2881949 () Bool)

(assert (=> b!2530384 m!2881949))

(declare-fun m!2881951 () Bool)

(assert (=> b!2530384 m!2881951))

(declare-fun m!2881953 () Bool)

(assert (=> b!2530384 m!2881953))

(declare-fun m!2881955 () Bool)

(assert (=> start!246372 m!2881955))

(check-sat (not b!2530386) tp_is_empty!12917 (not start!246372) (not b!2530384) (not b!2530385) (not b!2530383) (not b!2530379) (not b!2530380))
(check-sat)
