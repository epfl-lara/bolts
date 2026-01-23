; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!579460 () Bool)

(assert start!579460)

(declare-fun b!5578258 () Bool)

(assert (=> b!5578258 true))

(assert (=> b!5578258 true))

(declare-fun lambda!299074 () Int)

(declare-fun lambda!299073 () Int)

(assert (=> b!5578258 (not (= lambda!299074 lambda!299073))))

(assert (=> b!5578258 true))

(assert (=> b!5578258 true))

(declare-fun b!5578248 () Bool)

(assert (=> b!5578248 true))

(declare-fun b!5578237 () Bool)

(declare-fun e!3442134 () Bool)

(declare-fun e!3442142 () Bool)

(assert (=> b!5578237 (= e!3442134 e!3442142)))

(declare-fun res!2367493 () Bool)

(assert (=> b!5578237 (=> res!2367493 e!3442142)))

(declare-datatypes ((C!31390 0))(
  ( (C!31391 (val!25397 Int)) )
))
(declare-datatypes ((Regex!15560 0))(
  ( (ElementMatch!15560 (c!976609 C!31390)) (Concat!24405 (regOne!31632 Regex!15560) (regTwo!31632 Regex!15560)) (EmptyExpr!15560) (Star!15560 (reg!15889 Regex!15560)) (EmptyLang!15560) (Union!15560 (regOne!31633 Regex!15560) (regTwo!31633 Regex!15560)) )
))
(declare-fun r!7292 () Regex!15560)

(declare-fun nullable!5592 (Regex!15560) Bool)

(assert (=> b!5578237 (= res!2367493 (nullable!5592 (regOne!31633 (regOne!31632 r!7292))))))

(declare-datatypes ((List!62979 0))(
  ( (Nil!62855) (Cons!62855 (h!69303 C!31390) (t!376250 List!62979)) )
))
(declare-fun s!2326 () List!62979)

(declare-datatypes ((List!62980 0))(
  ( (Nil!62856) (Cons!62856 (h!69304 Regex!15560) (t!376251 List!62980)) )
))
(declare-datatypes ((Context!9888 0))(
  ( (Context!9889 (exprs!5444 List!62980)) )
))
(declare-fun lt!2253060 () Context!9888)

(declare-fun lambda!299075 () Int)

(declare-fun lt!2253051 () (Set Context!9888))

(declare-fun flatMap!1173 ((Set Context!9888) Int) (Set Context!9888))

(declare-fun derivationStepZipperUp!828 (Context!9888 C!31390) (Set Context!9888))

(assert (=> b!5578237 (= (flatMap!1173 lt!2253051 lambda!299075) (derivationStepZipperUp!828 lt!2253060 (h!69303 s!2326)))))

(declare-datatypes ((Unit!155612 0))(
  ( (Unit!155613) )
))
(declare-fun lt!2253052 () Unit!155612)

(declare-fun lemmaFlatMapOnSingletonSet!705 ((Set Context!9888) Context!9888 Int) Unit!155612)

(assert (=> b!5578237 (= lt!2253052 (lemmaFlatMapOnSingletonSet!705 lt!2253051 lt!2253060 lambda!299075))))

(declare-fun lt!2253045 () (Set Context!9888))

(assert (=> b!5578237 (= lt!2253045 (derivationStepZipperUp!828 lt!2253060 (h!69303 s!2326)))))

(assert (=> b!5578237 (= lt!2253051 (set.insert lt!2253060 (as set.empty (Set Context!9888))))))

(declare-datatypes ((List!62981 0))(
  ( (Nil!62857) (Cons!62857 (h!69305 Context!9888) (t!376252 List!62981)) )
))
(declare-fun zl!343 () List!62981)

(assert (=> b!5578237 (= lt!2253060 (Context!9889 (Cons!62856 (regOne!31633 (regOne!31632 r!7292)) (t!376251 (exprs!5444 (h!69305 zl!343))))))))

(declare-fun b!5578238 () Bool)

(declare-fun res!2367504 () Bool)

(declare-fun e!3442143 () Bool)

(assert (=> b!5578238 (=> res!2367504 e!3442143)))

(declare-fun isEmpty!34661 (List!62981) Bool)

(assert (=> b!5578238 (= res!2367504 (not (isEmpty!34661 (t!376252 zl!343))))))

(declare-fun b!5578239 () Bool)

(declare-fun e!3442137 () Bool)

(declare-fun lt!2253053 () (Set Context!9888))

(declare-fun matchZipper!1698 ((Set Context!9888) List!62979) Bool)

(assert (=> b!5578239 (= e!3442137 (not (matchZipper!1698 lt!2253053 (t!376250 s!2326))))))

(declare-fun b!5578240 () Bool)

(declare-fun e!3442138 () Bool)

(assert (=> b!5578240 (= e!3442138 e!3442134)))

(declare-fun res!2367496 () Bool)

(assert (=> b!5578240 (=> res!2367496 e!3442134)))

(assert (=> b!5578240 (= res!2367496 e!3442137)))

(declare-fun res!2367500 () Bool)

(assert (=> b!5578240 (=> (not res!2367500) (not e!3442137))))

(declare-fun lt!2253042 () (Set Context!9888))

(declare-fun lt!2253055 () Bool)

(assert (=> b!5578240 (= res!2367500 (not (= (matchZipper!1698 lt!2253042 (t!376250 s!2326)) lt!2253055)))))

(declare-fun lt!2253044 () (Set Context!9888))

(declare-fun e!3442139 () Bool)

(assert (=> b!5578240 (= (matchZipper!1698 lt!2253044 (t!376250 s!2326)) e!3442139)))

(declare-fun res!2367488 () Bool)

(assert (=> b!5578240 (=> res!2367488 e!3442139)))

(assert (=> b!5578240 (= res!2367488 lt!2253055)))

(declare-fun lt!2253048 () (Set Context!9888))

(assert (=> b!5578240 (= lt!2253055 (matchZipper!1698 lt!2253048 (t!376250 s!2326)))))

(declare-fun lt!2253043 () Unit!155612)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!585 ((Set Context!9888) (Set Context!9888) List!62979) Unit!155612)

(assert (=> b!5578240 (= lt!2253043 (lemmaZipperConcatMatchesSameAsBothZippers!585 lt!2253048 lt!2253053 (t!376250 s!2326)))))

(declare-fun b!5578241 () Bool)

(declare-fun e!3442145 () Bool)

(declare-fun tp!1543685 () Bool)

(assert (=> b!5578241 (= e!3442145 tp!1543685)))

(declare-fun b!5578242 () Bool)

(declare-fun e!3442148 () Bool)

(declare-fun tp!1543684 () Bool)

(assert (=> b!5578242 (= e!3442148 tp!1543684)))

(declare-fun b!5578243 () Bool)

(declare-fun res!2367489 () Bool)

(assert (=> b!5578243 (=> res!2367489 e!3442143)))

(declare-fun generalisedUnion!1423 (List!62980) Regex!15560)

(declare-fun unfocusZipperList!988 (List!62981) List!62980)

(assert (=> b!5578243 (= res!2367489 (not (= r!7292 (generalisedUnion!1423 (unfocusZipperList!988 zl!343)))))))

(declare-fun b!5578244 () Bool)

(declare-fun tp!1543682 () Bool)

(declare-fun tp!1543686 () Bool)

(assert (=> b!5578244 (= e!3442148 (and tp!1543682 tp!1543686))))

(declare-fun b!5578245 () Bool)

(declare-fun e!3442147 () Bool)

(assert (=> b!5578245 (= e!3442147 (not e!3442143))))

(declare-fun res!2367494 () Bool)

(assert (=> b!5578245 (=> res!2367494 e!3442143)))

(assert (=> b!5578245 (= res!2367494 (not (is-Cons!62857 zl!343)))))

(declare-fun lt!2253047 () Bool)

(declare-fun matchRSpec!2663 (Regex!15560 List!62979) Bool)

(assert (=> b!5578245 (= lt!2253047 (matchRSpec!2663 r!7292 s!2326))))

(declare-fun matchR!7745 (Regex!15560 List!62979) Bool)

(assert (=> b!5578245 (= lt!2253047 (matchR!7745 r!7292 s!2326))))

(declare-fun lt!2253041 () Unit!155612)

(declare-fun mainMatchTheorem!2663 (Regex!15560 List!62979) Unit!155612)

(assert (=> b!5578245 (= lt!2253041 (mainMatchTheorem!2663 r!7292 s!2326))))

(declare-fun b!5578246 () Bool)

(declare-fun e!3442146 () Bool)

(declare-fun lt!2253054 () (Set Context!9888))

(assert (=> b!5578246 (= e!3442146 (matchZipper!1698 lt!2253054 (t!376250 s!2326)))))

(declare-fun b!5578247 () Bool)

(declare-fun res!2367497 () Bool)

(assert (=> b!5578247 (=> res!2367497 e!3442143)))

(assert (=> b!5578247 (= res!2367497 (or (is-EmptyExpr!15560 r!7292) (is-EmptyLang!15560 r!7292) (is-ElementMatch!15560 r!7292) (is-Union!15560 r!7292) (not (is-Concat!24405 r!7292))))))

(declare-fun b!5578249 () Bool)

(declare-fun res!2367499 () Bool)

(declare-fun e!3442136 () Bool)

(assert (=> b!5578249 (=> res!2367499 e!3442136)))

(declare-fun isEmpty!34662 (List!62980) Bool)

(assert (=> b!5578249 (= res!2367499 (isEmpty!34662 (t!376251 (exprs!5444 (h!69305 zl!343)))))))

(declare-fun b!5578250 () Bool)

(declare-fun e!3442141 () Unit!155612)

(declare-fun Unit!155614 () Unit!155612)

(assert (=> b!5578250 (= e!3442141 Unit!155614)))

(declare-fun lt!2253046 () Unit!155612)

(assert (=> b!5578250 (= lt!2253046 (lemmaZipperConcatMatchesSameAsBothZippers!585 lt!2253042 lt!2253054 (t!376250 s!2326)))))

(declare-fun res!2367498 () Bool)

(assert (=> b!5578250 (= res!2367498 (matchZipper!1698 lt!2253042 (t!376250 s!2326)))))

(assert (=> b!5578250 (=> res!2367498 e!3442146)))

(assert (=> b!5578250 (= (matchZipper!1698 (set.union lt!2253042 lt!2253054) (t!376250 s!2326)) e!3442146)))

(declare-fun b!5578251 () Bool)

(declare-fun tp_is_empty!40373 () Bool)

(assert (=> b!5578251 (= e!3442148 tp_is_empty!40373)))

(declare-fun b!5578252 () Bool)

(declare-fun e!3442140 () Bool)

(declare-fun tp!1543689 () Bool)

(assert (=> b!5578252 (= e!3442140 (and tp_is_empty!40373 tp!1543689))))

(declare-fun b!5578253 () Bool)

(declare-fun res!2367490 () Bool)

(assert (=> b!5578253 (=> res!2367490 e!3442143)))

(assert (=> b!5578253 (= res!2367490 (not (is-Cons!62856 (exprs!5444 (h!69305 zl!343)))))))

(declare-fun e!3442144 () Bool)

(declare-fun tp!1543687 () Bool)

(declare-fun e!3442135 () Bool)

(declare-fun b!5578254 () Bool)

(declare-fun inv!82148 (Context!9888) Bool)

(assert (=> b!5578254 (= e!3442135 (and (inv!82148 (h!69305 zl!343)) e!3442144 tp!1543687))))

(declare-fun b!5578255 () Bool)

(declare-fun res!2367503 () Bool)

(assert (=> b!5578255 (=> (not res!2367503) (not e!3442147))))

(declare-fun unfocusZipper!1302 (List!62981) Regex!15560)

(assert (=> b!5578255 (= res!2367503 (= r!7292 (unfocusZipper!1302 zl!343)))))

(declare-fun b!5578256 () Bool)

(declare-fun res!2367502 () Bool)

(assert (=> b!5578256 (=> res!2367502 e!3442143)))

(declare-fun generalisedConcat!1175 (List!62980) Regex!15560)

(assert (=> b!5578256 (= res!2367502 (not (= r!7292 (generalisedConcat!1175 (exprs!5444 (h!69305 zl!343))))))))

(declare-fun b!5578257 () Bool)

(declare-fun Unit!155615 () Unit!155612)

(assert (=> b!5578257 (= e!3442141 Unit!155615)))

(assert (=> b!5578258 (= e!3442143 e!3442136)))

(declare-fun res!2367501 () Bool)

(assert (=> b!5578258 (=> res!2367501 e!3442136)))

(declare-fun lt!2253059 () Bool)

(assert (=> b!5578258 (= res!2367501 (or (not (= lt!2253047 lt!2253059)) (is-Nil!62855 s!2326)))))

(declare-fun Exists!2660 (Int) Bool)

(assert (=> b!5578258 (= (Exists!2660 lambda!299073) (Exists!2660 lambda!299074))))

(declare-fun lt!2253061 () Unit!155612)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1289 (Regex!15560 Regex!15560 List!62979) Unit!155612)

(assert (=> b!5578258 (= lt!2253061 (lemmaExistCutMatchRandMatchRSpecEquivalent!1289 (regOne!31632 r!7292) (regTwo!31632 r!7292) s!2326))))

(assert (=> b!5578258 (= lt!2253059 (Exists!2660 lambda!299073))))

(declare-datatypes ((tuple2!65314 0))(
  ( (tuple2!65315 (_1!35960 List!62979) (_2!35960 List!62979)) )
))
(declare-datatypes ((Option!15569 0))(
  ( (None!15568) (Some!15568 (v!51609 tuple2!65314)) )
))
(declare-fun isDefined!12272 (Option!15569) Bool)

(declare-fun findConcatSeparation!1983 (Regex!15560 Regex!15560 List!62979 List!62979 List!62979) Option!15569)

(assert (=> b!5578258 (= lt!2253059 (isDefined!12272 (findConcatSeparation!1983 (regOne!31632 r!7292) (regTwo!31632 r!7292) Nil!62855 s!2326 s!2326)))))

(declare-fun lt!2253049 () Unit!155612)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1747 (Regex!15560 Regex!15560 List!62979) Unit!155612)

(assert (=> b!5578258 (= lt!2253049 (lemmaFindConcatSeparationEquivalentToExists!1747 (regOne!31632 r!7292) (regTwo!31632 r!7292) s!2326))))

(declare-fun b!5578259 () Bool)

(declare-fun e!3442149 () Bool)

(assert (=> b!5578259 (= e!3442149 e!3442138)))

(declare-fun res!2367487 () Bool)

(assert (=> b!5578259 (=> res!2367487 e!3442138)))

(assert (=> b!5578259 (= res!2367487 (not (= lt!2253042 lt!2253044)))))

(assert (=> b!5578259 (= lt!2253044 (set.union lt!2253048 lt!2253053))))

(declare-fun lt!2253050 () Context!9888)

(declare-fun derivationStepZipperDown!902 (Regex!15560 Context!9888 C!31390) (Set Context!9888))

(assert (=> b!5578259 (= lt!2253053 (derivationStepZipperDown!902 (regTwo!31633 (regOne!31632 r!7292)) lt!2253050 (h!69303 s!2326)))))

(assert (=> b!5578259 (= lt!2253048 (derivationStepZipperDown!902 (regOne!31633 (regOne!31632 r!7292)) lt!2253050 (h!69303 s!2326)))))

(declare-fun b!5578260 () Bool)

(declare-fun tp!1543680 () Bool)

(assert (=> b!5578260 (= e!3442144 tp!1543680)))

(declare-fun res!2367492 () Bool)

(assert (=> start!579460 (=> (not res!2367492) (not e!3442147))))

(declare-fun validRegex!7296 (Regex!15560) Bool)

(assert (=> start!579460 (= res!2367492 (validRegex!7296 r!7292))))

(assert (=> start!579460 e!3442147))

(assert (=> start!579460 e!3442148))

(declare-fun condSetEmpty!37116 () Bool)

(declare-fun z!1189 () (Set Context!9888))

(assert (=> start!579460 (= condSetEmpty!37116 (= z!1189 (as set.empty (Set Context!9888))))))

(declare-fun setRes!37116 () Bool)

(assert (=> start!579460 setRes!37116))

(assert (=> start!579460 e!3442135))

(assert (=> start!579460 e!3442140))

(assert (=> b!5578248 (= e!3442136 e!3442149)))

(declare-fun res!2367491 () Bool)

(assert (=> b!5578248 (=> res!2367491 e!3442149)))

(assert (=> b!5578248 (= res!2367491 (or (and (is-ElementMatch!15560 (regOne!31632 r!7292)) (= (c!976609 (regOne!31632 r!7292)) (h!69303 s!2326))) (not (is-Union!15560 (regOne!31632 r!7292)))))))

(declare-fun lt!2253056 () Unit!155612)

(assert (=> b!5578248 (= lt!2253056 e!3442141)))

(declare-fun c!976608 () Bool)

(assert (=> b!5578248 (= c!976608 (nullable!5592 (h!69304 (exprs!5444 (h!69305 zl!343)))))))

(assert (=> b!5578248 (= (flatMap!1173 z!1189 lambda!299075) (derivationStepZipperUp!828 (h!69305 zl!343) (h!69303 s!2326)))))

(declare-fun lt!2253058 () Unit!155612)

(assert (=> b!5578248 (= lt!2253058 (lemmaFlatMapOnSingletonSet!705 z!1189 (h!69305 zl!343) lambda!299075))))

(assert (=> b!5578248 (= lt!2253054 (derivationStepZipperUp!828 lt!2253050 (h!69303 s!2326)))))

(assert (=> b!5578248 (= lt!2253042 (derivationStepZipperDown!902 (h!69304 (exprs!5444 (h!69305 zl!343))) lt!2253050 (h!69303 s!2326)))))

(assert (=> b!5578248 (= lt!2253050 (Context!9889 (t!376251 (exprs!5444 (h!69305 zl!343)))))))

(declare-fun lt!2253057 () (Set Context!9888))

(assert (=> b!5578248 (= lt!2253057 (derivationStepZipperUp!828 (Context!9889 (Cons!62856 (h!69304 (exprs!5444 (h!69305 zl!343))) (t!376251 (exprs!5444 (h!69305 zl!343))))) (h!69303 s!2326)))))

(declare-fun b!5578261 () Bool)

(assert (=> b!5578261 (= e!3442142 (= lt!2253045 lt!2253048))))

(declare-fun setElem!37116 () Context!9888)

(declare-fun setNonEmpty!37116 () Bool)

(declare-fun tp!1543681 () Bool)

(assert (=> setNonEmpty!37116 (= setRes!37116 (and tp!1543681 (inv!82148 setElem!37116) e!3442145))))

(declare-fun setRest!37116 () (Set Context!9888))

(assert (=> setNonEmpty!37116 (= z!1189 (set.union (set.insert setElem!37116 (as set.empty (Set Context!9888))) setRest!37116))))

(declare-fun b!5578262 () Bool)

(declare-fun tp!1543688 () Bool)

(declare-fun tp!1543683 () Bool)

(assert (=> b!5578262 (= e!3442148 (and tp!1543688 tp!1543683))))

(declare-fun b!5578263 () Bool)

(declare-fun res!2367495 () Bool)

(assert (=> b!5578263 (=> (not res!2367495) (not e!3442147))))

(declare-fun toList!9344 ((Set Context!9888)) List!62981)

(assert (=> b!5578263 (= res!2367495 (= (toList!9344 z!1189) zl!343))))

(declare-fun setIsEmpty!37116 () Bool)

(assert (=> setIsEmpty!37116 setRes!37116))

(declare-fun b!5578264 () Bool)

(assert (=> b!5578264 (= e!3442139 (matchZipper!1698 lt!2253053 (t!376250 s!2326)))))

(assert (= (and start!579460 res!2367492) b!5578263))

(assert (= (and b!5578263 res!2367495) b!5578255))

(assert (= (and b!5578255 res!2367503) b!5578245))

(assert (= (and b!5578245 (not res!2367494)) b!5578238))

(assert (= (and b!5578238 (not res!2367504)) b!5578256))

(assert (= (and b!5578256 (not res!2367502)) b!5578253))

(assert (= (and b!5578253 (not res!2367490)) b!5578243))

(assert (= (and b!5578243 (not res!2367489)) b!5578247))

(assert (= (and b!5578247 (not res!2367497)) b!5578258))

(assert (= (and b!5578258 (not res!2367501)) b!5578249))

(assert (= (and b!5578249 (not res!2367499)) b!5578248))

(assert (= (and b!5578248 c!976608) b!5578250))

(assert (= (and b!5578248 (not c!976608)) b!5578257))

(assert (= (and b!5578250 (not res!2367498)) b!5578246))

(assert (= (and b!5578248 (not res!2367491)) b!5578259))

(assert (= (and b!5578259 (not res!2367487)) b!5578240))

(assert (= (and b!5578240 (not res!2367488)) b!5578264))

(assert (= (and b!5578240 res!2367500) b!5578239))

(assert (= (and b!5578240 (not res!2367496)) b!5578237))

(assert (= (and b!5578237 (not res!2367493)) b!5578261))

(assert (= (and start!579460 (is-ElementMatch!15560 r!7292)) b!5578251))

(assert (= (and start!579460 (is-Concat!24405 r!7292)) b!5578244))

(assert (= (and start!579460 (is-Star!15560 r!7292)) b!5578242))

(assert (= (and start!579460 (is-Union!15560 r!7292)) b!5578262))

(assert (= (and start!579460 condSetEmpty!37116) setIsEmpty!37116))

(assert (= (and start!579460 (not condSetEmpty!37116)) setNonEmpty!37116))

(assert (= setNonEmpty!37116 b!5578241))

(assert (= b!5578254 b!5578260))

(assert (= (and start!579460 (is-Cons!62857 zl!343)) b!5578254))

(assert (= (and start!579460 (is-Cons!62855 s!2326)) b!5578252))

(declare-fun m!6560922 () Bool)

(assert (=> b!5578264 m!6560922))

(assert (=> b!5578239 m!6560922))

(declare-fun m!6560924 () Bool)

(assert (=> b!5578246 m!6560924))

(declare-fun m!6560926 () Bool)

(assert (=> b!5578243 m!6560926))

(assert (=> b!5578243 m!6560926))

(declare-fun m!6560928 () Bool)

(assert (=> b!5578243 m!6560928))

(declare-fun m!6560930 () Bool)

(assert (=> b!5578250 m!6560930))

(declare-fun m!6560932 () Bool)

(assert (=> b!5578250 m!6560932))

(declare-fun m!6560934 () Bool)

(assert (=> b!5578250 m!6560934))

(declare-fun m!6560936 () Bool)

(assert (=> setNonEmpty!37116 m!6560936))

(declare-fun m!6560938 () Bool)

(assert (=> b!5578256 m!6560938))

(declare-fun m!6560940 () Bool)

(assert (=> b!5578259 m!6560940))

(declare-fun m!6560942 () Bool)

(assert (=> b!5578259 m!6560942))

(declare-fun m!6560944 () Bool)

(assert (=> b!5578238 m!6560944))

(declare-fun m!6560946 () Bool)

(assert (=> b!5578249 m!6560946))

(declare-fun m!6560948 () Bool)

(assert (=> b!5578263 m!6560948))

(assert (=> b!5578240 m!6560932))

(declare-fun m!6560950 () Bool)

(assert (=> b!5578240 m!6560950))

(declare-fun m!6560952 () Bool)

(assert (=> b!5578240 m!6560952))

(declare-fun m!6560954 () Bool)

(assert (=> b!5578240 m!6560954))

(declare-fun m!6560956 () Bool)

(assert (=> b!5578255 m!6560956))

(declare-fun m!6560958 () Bool)

(assert (=> b!5578237 m!6560958))

(declare-fun m!6560960 () Bool)

(assert (=> b!5578237 m!6560960))

(declare-fun m!6560962 () Bool)

(assert (=> b!5578237 m!6560962))

(declare-fun m!6560964 () Bool)

(assert (=> b!5578237 m!6560964))

(declare-fun m!6560966 () Bool)

(assert (=> b!5578237 m!6560966))

(declare-fun m!6560968 () Bool)

(assert (=> b!5578245 m!6560968))

(declare-fun m!6560970 () Bool)

(assert (=> b!5578245 m!6560970))

(declare-fun m!6560972 () Bool)

(assert (=> b!5578245 m!6560972))

(declare-fun m!6560974 () Bool)

(assert (=> b!5578258 m!6560974))

(declare-fun m!6560976 () Bool)

(assert (=> b!5578258 m!6560976))

(declare-fun m!6560978 () Bool)

(assert (=> b!5578258 m!6560978))

(assert (=> b!5578258 m!6560978))

(assert (=> b!5578258 m!6560974))

(declare-fun m!6560980 () Bool)

(assert (=> b!5578258 m!6560980))

(declare-fun m!6560982 () Bool)

(assert (=> b!5578258 m!6560982))

(declare-fun m!6560984 () Bool)

(assert (=> b!5578258 m!6560984))

(declare-fun m!6560986 () Bool)

(assert (=> b!5578248 m!6560986))

(declare-fun m!6560988 () Bool)

(assert (=> b!5578248 m!6560988))

(declare-fun m!6560990 () Bool)

(assert (=> b!5578248 m!6560990))

(declare-fun m!6560992 () Bool)

(assert (=> b!5578248 m!6560992))

(declare-fun m!6560994 () Bool)

(assert (=> b!5578248 m!6560994))

(declare-fun m!6560996 () Bool)

(assert (=> b!5578248 m!6560996))

(declare-fun m!6560998 () Bool)

(assert (=> b!5578248 m!6560998))

(declare-fun m!6561000 () Bool)

(assert (=> start!579460 m!6561000))

(declare-fun m!6561002 () Bool)

(assert (=> b!5578254 m!6561002))

(push 1)

(assert (not b!5578263))

(assert (not start!579460))

(assert (not b!5578250))

(assert (not b!5578249))

(assert (not b!5578256))

(assert (not b!5578246))

(assert (not b!5578260))

(assert (not b!5578237))

(assert (not b!5578252))

(assert (not b!5578243))

(assert (not b!5578244))

(assert (not setNonEmpty!37116))

(assert (not b!5578255))

(assert (not b!5578241))

(assert (not b!5578238))

(assert (not b!5578259))

(assert (not b!5578239))

(assert (not b!5578240))

(assert (not b!5578264))

(assert (not b!5578245))

(assert (not b!5578248))

(assert (not b!5578258))

(assert tp_is_empty!40373)

(assert (not b!5578242))

(assert (not b!5578262))

(assert (not b!5578254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1763614 () Bool)

(declare-fun lambda!299091 () Int)

(declare-fun forall!14729 (List!62980 Int) Bool)

(assert (=> d!1763614 (= (inv!82148 setElem!37116) (forall!14729 (exprs!5444 setElem!37116) lambda!299091))))

(declare-fun bs!1290736 () Bool)

(assert (= bs!1290736 d!1763614))

(declare-fun m!6561086 () Bool)

(assert (=> bs!1290736 m!6561086))

(assert (=> setNonEmpty!37116 d!1763614))

(declare-fun d!1763616 () Bool)

(declare-fun c!976621 () Bool)

(declare-fun isEmpty!34665 (List!62979) Bool)

(assert (=> d!1763616 (= c!976621 (isEmpty!34665 (t!376250 s!2326)))))

(declare-fun e!3442206 () Bool)

(assert (=> d!1763616 (= (matchZipper!1698 lt!2253042 (t!376250 s!2326)) e!3442206)))

(declare-fun b!5578377 () Bool)

(declare-fun nullableZipper!1557 ((Set Context!9888)) Bool)

(assert (=> b!5578377 (= e!3442206 (nullableZipper!1557 lt!2253042))))

(declare-fun b!5578378 () Bool)

(declare-fun derivationStepZipper!1659 ((Set Context!9888) C!31390) (Set Context!9888))

(declare-fun head!11894 (List!62979) C!31390)

(declare-fun tail!10989 (List!62979) List!62979)

(assert (=> b!5578378 (= e!3442206 (matchZipper!1698 (derivationStepZipper!1659 lt!2253042 (head!11894 (t!376250 s!2326))) (tail!10989 (t!376250 s!2326))))))

(assert (= (and d!1763616 c!976621) b!5578377))

(assert (= (and d!1763616 (not c!976621)) b!5578378))

(declare-fun m!6561088 () Bool)

(assert (=> d!1763616 m!6561088))

(declare-fun m!6561090 () Bool)

(assert (=> b!5578377 m!6561090))

(declare-fun m!6561092 () Bool)

(assert (=> b!5578378 m!6561092))

(assert (=> b!5578378 m!6561092))

(declare-fun m!6561094 () Bool)

(assert (=> b!5578378 m!6561094))

(declare-fun m!6561096 () Bool)

(assert (=> b!5578378 m!6561096))

(assert (=> b!5578378 m!6561094))

(assert (=> b!5578378 m!6561096))

(declare-fun m!6561098 () Bool)

(assert (=> b!5578378 m!6561098))

(assert (=> b!5578240 d!1763616))

(declare-fun d!1763618 () Bool)

(declare-fun c!976622 () Bool)

(assert (=> d!1763618 (= c!976622 (isEmpty!34665 (t!376250 s!2326)))))

(declare-fun e!3442207 () Bool)

(assert (=> d!1763618 (= (matchZipper!1698 lt!2253044 (t!376250 s!2326)) e!3442207)))

(declare-fun b!5578379 () Bool)

(assert (=> b!5578379 (= e!3442207 (nullableZipper!1557 lt!2253044))))

(declare-fun b!5578380 () Bool)

(assert (=> b!5578380 (= e!3442207 (matchZipper!1698 (derivationStepZipper!1659 lt!2253044 (head!11894 (t!376250 s!2326))) (tail!10989 (t!376250 s!2326))))))

(assert (= (and d!1763618 c!976622) b!5578379))

(assert (= (and d!1763618 (not c!976622)) b!5578380))

(assert (=> d!1763618 m!6561088))

(declare-fun m!6561100 () Bool)

(assert (=> b!5578379 m!6561100))

(assert (=> b!5578380 m!6561092))

(assert (=> b!5578380 m!6561092))

(declare-fun m!6561102 () Bool)

(assert (=> b!5578380 m!6561102))

(assert (=> b!5578380 m!6561096))

(assert (=> b!5578380 m!6561102))

(assert (=> b!5578380 m!6561096))

(declare-fun m!6561104 () Bool)

(assert (=> b!5578380 m!6561104))

(assert (=> b!5578240 d!1763618))

(declare-fun d!1763620 () Bool)

(declare-fun c!976623 () Bool)

(assert (=> d!1763620 (= c!976623 (isEmpty!34665 (t!376250 s!2326)))))

(declare-fun e!3442208 () Bool)

(assert (=> d!1763620 (= (matchZipper!1698 lt!2253048 (t!376250 s!2326)) e!3442208)))

(declare-fun b!5578381 () Bool)

(assert (=> b!5578381 (= e!3442208 (nullableZipper!1557 lt!2253048))))

(declare-fun b!5578382 () Bool)

(assert (=> b!5578382 (= e!3442208 (matchZipper!1698 (derivationStepZipper!1659 lt!2253048 (head!11894 (t!376250 s!2326))) (tail!10989 (t!376250 s!2326))))))

(assert (= (and d!1763620 c!976623) b!5578381))

(assert (= (and d!1763620 (not c!976623)) b!5578382))

(assert (=> d!1763620 m!6561088))

(declare-fun m!6561106 () Bool)

(assert (=> b!5578381 m!6561106))

(assert (=> b!5578382 m!6561092))

(assert (=> b!5578382 m!6561092))

(declare-fun m!6561108 () Bool)

(assert (=> b!5578382 m!6561108))

(assert (=> b!5578382 m!6561096))

(assert (=> b!5578382 m!6561108))

(assert (=> b!5578382 m!6561096))

(declare-fun m!6561110 () Bool)

(assert (=> b!5578382 m!6561110))

(assert (=> b!5578240 d!1763620))

(declare-fun e!3442211 () Bool)

(declare-fun d!1763622 () Bool)

(assert (=> d!1763622 (= (matchZipper!1698 (set.union lt!2253048 lt!2253053) (t!376250 s!2326)) e!3442211)))

(declare-fun res!2367573 () Bool)

(assert (=> d!1763622 (=> res!2367573 e!3442211)))

(assert (=> d!1763622 (= res!2367573 (matchZipper!1698 lt!2253048 (t!376250 s!2326)))))

(declare-fun lt!2253127 () Unit!155612)

(declare-fun choose!42263 ((Set Context!9888) (Set Context!9888) List!62979) Unit!155612)

(assert (=> d!1763622 (= lt!2253127 (choose!42263 lt!2253048 lt!2253053 (t!376250 s!2326)))))

(assert (=> d!1763622 (= (lemmaZipperConcatMatchesSameAsBothZippers!585 lt!2253048 lt!2253053 (t!376250 s!2326)) lt!2253127)))

(declare-fun b!5578385 () Bool)

(assert (=> b!5578385 (= e!3442211 (matchZipper!1698 lt!2253053 (t!376250 s!2326)))))

(assert (= (and d!1763622 (not res!2367573)) b!5578385))

(declare-fun m!6561112 () Bool)

(assert (=> d!1763622 m!6561112))

(assert (=> d!1763622 m!6560952))

(declare-fun m!6561114 () Bool)

(assert (=> d!1763622 m!6561114))

(assert (=> b!5578385 m!6560922))

(assert (=> b!5578240 d!1763622))

(declare-fun d!1763624 () Bool)

(declare-fun e!3442212 () Bool)

(assert (=> d!1763624 (= (matchZipper!1698 (set.union lt!2253042 lt!2253054) (t!376250 s!2326)) e!3442212)))

(declare-fun res!2367574 () Bool)

(assert (=> d!1763624 (=> res!2367574 e!3442212)))

(assert (=> d!1763624 (= res!2367574 (matchZipper!1698 lt!2253042 (t!376250 s!2326)))))

(declare-fun lt!2253128 () Unit!155612)

(assert (=> d!1763624 (= lt!2253128 (choose!42263 lt!2253042 lt!2253054 (t!376250 s!2326)))))

(assert (=> d!1763624 (= (lemmaZipperConcatMatchesSameAsBothZippers!585 lt!2253042 lt!2253054 (t!376250 s!2326)) lt!2253128)))

(declare-fun b!5578386 () Bool)

(assert (=> b!5578386 (= e!3442212 (matchZipper!1698 lt!2253054 (t!376250 s!2326)))))

(assert (= (and d!1763624 (not res!2367574)) b!5578386))

(assert (=> d!1763624 m!6560934))

(assert (=> d!1763624 m!6560932))

(declare-fun m!6561116 () Bool)

(assert (=> d!1763624 m!6561116))

(assert (=> b!5578386 m!6560924))

(assert (=> b!5578250 d!1763624))

(assert (=> b!5578250 d!1763616))

(declare-fun d!1763626 () Bool)

(declare-fun c!976624 () Bool)

(assert (=> d!1763626 (= c!976624 (isEmpty!34665 (t!376250 s!2326)))))

(declare-fun e!3442213 () Bool)

(assert (=> d!1763626 (= (matchZipper!1698 (set.union lt!2253042 lt!2253054) (t!376250 s!2326)) e!3442213)))

(declare-fun b!5578387 () Bool)

(assert (=> b!5578387 (= e!3442213 (nullableZipper!1557 (set.union lt!2253042 lt!2253054)))))

(declare-fun b!5578388 () Bool)

(assert (=> b!5578388 (= e!3442213 (matchZipper!1698 (derivationStepZipper!1659 (set.union lt!2253042 lt!2253054) (head!11894 (t!376250 s!2326))) (tail!10989 (t!376250 s!2326))))))

(assert (= (and d!1763626 c!976624) b!5578387))

(assert (= (and d!1763626 (not c!976624)) b!5578388))

(assert (=> d!1763626 m!6561088))

(declare-fun m!6561118 () Bool)

(assert (=> b!5578387 m!6561118))

(assert (=> b!5578388 m!6561092))

(assert (=> b!5578388 m!6561092))

(declare-fun m!6561120 () Bool)

(assert (=> b!5578388 m!6561120))

(assert (=> b!5578388 m!6561096))

(assert (=> b!5578388 m!6561120))

(assert (=> b!5578388 m!6561096))

(declare-fun m!6561122 () Bool)

(assert (=> b!5578388 m!6561122))

(assert (=> b!5578250 d!1763626))

(declare-fun d!1763628 () Bool)

(declare-fun c!976625 () Bool)

(assert (=> d!1763628 (= c!976625 (isEmpty!34665 (t!376250 s!2326)))))

(declare-fun e!3442214 () Bool)

(assert (=> d!1763628 (= (matchZipper!1698 lt!2253053 (t!376250 s!2326)) e!3442214)))

(declare-fun b!5578389 () Bool)

(assert (=> b!5578389 (= e!3442214 (nullableZipper!1557 lt!2253053))))

(declare-fun b!5578390 () Bool)

(assert (=> b!5578390 (= e!3442214 (matchZipper!1698 (derivationStepZipper!1659 lt!2253053 (head!11894 (t!376250 s!2326))) (tail!10989 (t!376250 s!2326))))))

(assert (= (and d!1763628 c!976625) b!5578389))

(assert (= (and d!1763628 (not c!976625)) b!5578390))

(assert (=> d!1763628 m!6561088))

(declare-fun m!6561124 () Bool)

(assert (=> b!5578389 m!6561124))

(assert (=> b!5578390 m!6561092))

(assert (=> b!5578390 m!6561092))

(declare-fun m!6561126 () Bool)

(assert (=> b!5578390 m!6561126))

(assert (=> b!5578390 m!6561096))

(assert (=> b!5578390 m!6561126))

(assert (=> b!5578390 m!6561096))

(declare-fun m!6561128 () Bool)

(assert (=> b!5578390 m!6561128))

(assert (=> b!5578239 d!1763628))

(declare-fun bs!1290737 () Bool)

(declare-fun d!1763630 () Bool)

(assert (= bs!1290737 (and d!1763630 d!1763614)))

(declare-fun lambda!299092 () Int)

(assert (=> bs!1290737 (= lambda!299092 lambda!299091)))

(assert (=> d!1763630 (= (inv!82148 (h!69305 zl!343)) (forall!14729 (exprs!5444 (h!69305 zl!343)) lambda!299092))))

(declare-fun bs!1290738 () Bool)

(assert (= bs!1290738 d!1763630))

(declare-fun m!6561130 () Bool)

(assert (=> bs!1290738 m!6561130))

(assert (=> b!5578254 d!1763630))

(declare-fun d!1763632 () Bool)

(declare-fun e!3442217 () Bool)

(assert (=> d!1763632 e!3442217))

(declare-fun res!2367577 () Bool)

(assert (=> d!1763632 (=> (not res!2367577) (not e!3442217))))

(declare-fun lt!2253131 () List!62981)

(declare-fun noDuplicate!1538 (List!62981) Bool)

(assert (=> d!1763632 (= res!2367577 (noDuplicate!1538 lt!2253131))))

(declare-fun choose!42264 ((Set Context!9888)) List!62981)

(assert (=> d!1763632 (= lt!2253131 (choose!42264 z!1189))))

(assert (=> d!1763632 (= (toList!9344 z!1189) lt!2253131)))

(declare-fun b!5578393 () Bool)

(declare-fun content!11328 (List!62981) (Set Context!9888))

(assert (=> b!5578393 (= e!3442217 (= (content!11328 lt!2253131) z!1189))))

(assert (= (and d!1763632 res!2367577) b!5578393))

(declare-fun m!6561132 () Bool)

(assert (=> d!1763632 m!6561132))

(declare-fun m!6561134 () Bool)

(assert (=> d!1763632 m!6561134))

(declare-fun m!6561136 () Bool)

(assert (=> b!5578393 m!6561136))

(assert (=> b!5578263 d!1763632))

(declare-fun bs!1290739 () Bool)

(declare-fun d!1763634 () Bool)

(assert (= bs!1290739 (and d!1763634 d!1763614)))

(declare-fun lambda!299095 () Int)

(assert (=> bs!1290739 (= lambda!299095 lambda!299091)))

(declare-fun bs!1290740 () Bool)

(assert (= bs!1290740 (and d!1763634 d!1763630)))

(assert (=> bs!1290740 (= lambda!299095 lambda!299092)))

(declare-fun b!5578414 () Bool)

(declare-fun e!3442230 () Regex!15560)

(assert (=> b!5578414 (= e!3442230 (h!69304 (unfocusZipperList!988 zl!343)))))

(declare-fun b!5578415 () Bool)

(declare-fun e!3442234 () Regex!15560)

(assert (=> b!5578415 (= e!3442230 e!3442234)))

(declare-fun c!976635 () Bool)

(assert (=> b!5578415 (= c!976635 (is-Cons!62856 (unfocusZipperList!988 zl!343)))))

(declare-fun b!5578416 () Bool)

(declare-fun e!3442232 () Bool)

(declare-fun e!3442233 () Bool)

(assert (=> b!5578416 (= e!3442232 e!3442233)))

(declare-fun c!976636 () Bool)

(assert (=> b!5578416 (= c!976636 (isEmpty!34662 (unfocusZipperList!988 zl!343)))))

(declare-fun b!5578417 () Bool)

(declare-fun lt!2253134 () Regex!15560)

(declare-fun isEmptyLang!1128 (Regex!15560) Bool)

(assert (=> b!5578417 (= e!3442233 (isEmptyLang!1128 lt!2253134))))

(declare-fun b!5578418 () Bool)

(declare-fun e!3442235 () Bool)

(declare-fun head!11895 (List!62980) Regex!15560)

(assert (=> b!5578418 (= e!3442235 (= lt!2253134 (head!11895 (unfocusZipperList!988 zl!343))))))

(declare-fun b!5578419 () Bool)

(declare-fun e!3442231 () Bool)

(assert (=> b!5578419 (= e!3442231 (isEmpty!34662 (t!376251 (unfocusZipperList!988 zl!343))))))

(declare-fun b!5578420 () Bool)

(declare-fun isUnion!558 (Regex!15560) Bool)

(assert (=> b!5578420 (= e!3442235 (isUnion!558 lt!2253134))))

(declare-fun b!5578421 () Bool)

(assert (=> b!5578421 (= e!3442234 EmptyLang!15560)))

(assert (=> d!1763634 e!3442232))

(declare-fun res!2367582 () Bool)

(assert (=> d!1763634 (=> (not res!2367582) (not e!3442232))))

(assert (=> d!1763634 (= res!2367582 (validRegex!7296 lt!2253134))))

(assert (=> d!1763634 (= lt!2253134 e!3442230)))

(declare-fun c!976637 () Bool)

(assert (=> d!1763634 (= c!976637 e!3442231)))

(declare-fun res!2367583 () Bool)

(assert (=> d!1763634 (=> (not res!2367583) (not e!3442231))))

(assert (=> d!1763634 (= res!2367583 (is-Cons!62856 (unfocusZipperList!988 zl!343)))))

(assert (=> d!1763634 (forall!14729 (unfocusZipperList!988 zl!343) lambda!299095)))

(assert (=> d!1763634 (= (generalisedUnion!1423 (unfocusZipperList!988 zl!343)) lt!2253134)))

(declare-fun b!5578422 () Bool)

(assert (=> b!5578422 (= e!3442233 e!3442235)))

(declare-fun c!976634 () Bool)

(declare-fun tail!10990 (List!62980) List!62980)

(assert (=> b!5578422 (= c!976634 (isEmpty!34662 (tail!10990 (unfocusZipperList!988 zl!343))))))

(declare-fun b!5578423 () Bool)

(assert (=> b!5578423 (= e!3442234 (Union!15560 (h!69304 (unfocusZipperList!988 zl!343)) (generalisedUnion!1423 (t!376251 (unfocusZipperList!988 zl!343)))))))

(assert (= (and d!1763634 res!2367583) b!5578419))

(assert (= (and d!1763634 c!976637) b!5578414))

(assert (= (and d!1763634 (not c!976637)) b!5578415))

(assert (= (and b!5578415 c!976635) b!5578423))

(assert (= (and b!5578415 (not c!976635)) b!5578421))

(assert (= (and d!1763634 res!2367582) b!5578416))

(assert (= (and b!5578416 c!976636) b!5578417))

(assert (= (and b!5578416 (not c!976636)) b!5578422))

(assert (= (and b!5578422 c!976634) b!5578418))

(assert (= (and b!5578422 (not c!976634)) b!5578420))

(assert (=> b!5578422 m!6560926))

(declare-fun m!6561138 () Bool)

(assert (=> b!5578422 m!6561138))

(assert (=> b!5578422 m!6561138))

(declare-fun m!6561140 () Bool)

(assert (=> b!5578422 m!6561140))

(declare-fun m!6561142 () Bool)

(assert (=> d!1763634 m!6561142))

(assert (=> d!1763634 m!6560926))

(declare-fun m!6561144 () Bool)

(assert (=> d!1763634 m!6561144))

(declare-fun m!6561146 () Bool)

(assert (=> b!5578420 m!6561146))

(declare-fun m!6561148 () Bool)

(assert (=> b!5578417 m!6561148))

(assert (=> b!5578416 m!6560926))

(declare-fun m!6561150 () Bool)

(assert (=> b!5578416 m!6561150))

(declare-fun m!6561152 () Bool)

(assert (=> b!5578419 m!6561152))

(assert (=> b!5578418 m!6560926))

(declare-fun m!6561154 () Bool)

(assert (=> b!5578418 m!6561154))

(declare-fun m!6561156 () Bool)

(assert (=> b!5578423 m!6561156))

(assert (=> b!5578243 d!1763634))

(declare-fun bs!1290741 () Bool)

(declare-fun d!1763636 () Bool)

(assert (= bs!1290741 (and d!1763636 d!1763614)))

(declare-fun lambda!299098 () Int)

(assert (=> bs!1290741 (= lambda!299098 lambda!299091)))

(declare-fun bs!1290742 () Bool)

(assert (= bs!1290742 (and d!1763636 d!1763630)))

(assert (=> bs!1290742 (= lambda!299098 lambda!299092)))

(declare-fun bs!1290743 () Bool)

(assert (= bs!1290743 (and d!1763636 d!1763634)))

(assert (=> bs!1290743 (= lambda!299098 lambda!299095)))

(declare-fun lt!2253137 () List!62980)

(assert (=> d!1763636 (forall!14729 lt!2253137 lambda!299098)))

(declare-fun e!3442238 () List!62980)

(assert (=> d!1763636 (= lt!2253137 e!3442238)))

(declare-fun c!976640 () Bool)

(assert (=> d!1763636 (= c!976640 (is-Cons!62857 zl!343))))

(assert (=> d!1763636 (= (unfocusZipperList!988 zl!343) lt!2253137)))

(declare-fun b!5578428 () Bool)

(assert (=> b!5578428 (= e!3442238 (Cons!62856 (generalisedConcat!1175 (exprs!5444 (h!69305 zl!343))) (unfocusZipperList!988 (t!376252 zl!343))))))

(declare-fun b!5578429 () Bool)

(assert (=> b!5578429 (= e!3442238 Nil!62856)))

(assert (= (and d!1763636 c!976640) b!5578428))

(assert (= (and d!1763636 (not c!976640)) b!5578429))

(declare-fun m!6561158 () Bool)

(assert (=> d!1763636 m!6561158))

(assert (=> b!5578428 m!6560938))

(declare-fun m!6561160 () Bool)

(assert (=> b!5578428 m!6561160))

(assert (=> b!5578243 d!1763636))

(declare-fun d!1763638 () Bool)

(declare-fun c!976641 () Bool)

(assert (=> d!1763638 (= c!976641 (isEmpty!34665 (t!376250 s!2326)))))

(declare-fun e!3442239 () Bool)

(assert (=> d!1763638 (= (matchZipper!1698 lt!2253054 (t!376250 s!2326)) e!3442239)))

(declare-fun b!5578430 () Bool)

(assert (=> b!5578430 (= e!3442239 (nullableZipper!1557 lt!2253054))))

(declare-fun b!5578431 () Bool)

(assert (=> b!5578431 (= e!3442239 (matchZipper!1698 (derivationStepZipper!1659 lt!2253054 (head!11894 (t!376250 s!2326))) (tail!10989 (t!376250 s!2326))))))

(assert (= (and d!1763638 c!976641) b!5578430))

(assert (= (and d!1763638 (not c!976641)) b!5578431))

(assert (=> d!1763638 m!6561088))

(declare-fun m!6561162 () Bool)

(assert (=> b!5578430 m!6561162))

(assert (=> b!5578431 m!6561092))

(assert (=> b!5578431 m!6561092))

(declare-fun m!6561164 () Bool)

(assert (=> b!5578431 m!6561164))

(assert (=> b!5578431 m!6561096))

(assert (=> b!5578431 m!6561164))

(assert (=> b!5578431 m!6561096))

(declare-fun m!6561166 () Bool)

(assert (=> b!5578431 m!6561166))

(assert (=> b!5578246 d!1763638))

(declare-fun b!5578450 () Bool)

(declare-fun res!2367596 () Bool)

(declare-fun e!3442258 () Bool)

(assert (=> b!5578450 (=> res!2367596 e!3442258)))

(assert (=> b!5578450 (= res!2367596 (not (is-Concat!24405 r!7292)))))

(declare-fun e!3442254 () Bool)

(assert (=> b!5578450 (= e!3442254 e!3442258)))

(declare-fun b!5578451 () Bool)

(declare-fun e!3442259 () Bool)

(declare-fun e!3442256 () Bool)

(assert (=> b!5578451 (= e!3442259 e!3442256)))

(declare-fun c!976647 () Bool)

(assert (=> b!5578451 (= c!976647 (is-Star!15560 r!7292))))

(declare-fun b!5578452 () Bool)

(declare-fun e!3442257 () Bool)

(declare-fun call!417054 () Bool)

(assert (=> b!5578452 (= e!3442257 call!417054)))

(declare-fun b!5578453 () Bool)

(declare-fun e!3442260 () Bool)

(assert (=> b!5578453 (= e!3442256 e!3442260)))

(declare-fun res!2367598 () Bool)

(assert (=> b!5578453 (= res!2367598 (not (nullable!5592 (reg!15889 r!7292))))))

(assert (=> b!5578453 (=> (not res!2367598) (not e!3442260))))

(declare-fun b!5578454 () Bool)

(declare-fun e!3442255 () Bool)

(assert (=> b!5578454 (= e!3442255 call!417054)))

(declare-fun b!5578455 () Bool)

(assert (=> b!5578455 (= e!3442256 e!3442254)))

(declare-fun c!976646 () Bool)

(assert (=> b!5578455 (= c!976646 (is-Union!15560 r!7292))))

(declare-fun b!5578456 () Bool)

(declare-fun call!417055 () Bool)

(assert (=> b!5578456 (= e!3442260 call!417055)))

(declare-fun bm!417048 () Bool)

(assert (=> bm!417048 (= call!417054 call!417055)))

(declare-fun bm!417049 () Bool)

(assert (=> bm!417049 (= call!417055 (validRegex!7296 (ite c!976647 (reg!15889 r!7292) (ite c!976646 (regTwo!31633 r!7292) (regTwo!31632 r!7292)))))))

(declare-fun bm!417050 () Bool)

(declare-fun call!417053 () Bool)

(assert (=> bm!417050 (= call!417053 (validRegex!7296 (ite c!976646 (regOne!31633 r!7292) (regOne!31632 r!7292))))))

(declare-fun b!5578458 () Bool)

(assert (=> b!5578458 (= e!3442258 e!3442257)))

(declare-fun res!2367594 () Bool)

(assert (=> b!5578458 (=> (not res!2367594) (not e!3442257))))

(assert (=> b!5578458 (= res!2367594 call!417053)))

(declare-fun b!5578457 () Bool)

(declare-fun res!2367597 () Bool)

(assert (=> b!5578457 (=> (not res!2367597) (not e!3442255))))

(assert (=> b!5578457 (= res!2367597 call!417053)))

(assert (=> b!5578457 (= e!3442254 e!3442255)))

(declare-fun d!1763640 () Bool)

(declare-fun res!2367595 () Bool)

(assert (=> d!1763640 (=> res!2367595 e!3442259)))

(assert (=> d!1763640 (= res!2367595 (is-ElementMatch!15560 r!7292))))

(assert (=> d!1763640 (= (validRegex!7296 r!7292) e!3442259)))

(assert (= (and d!1763640 (not res!2367595)) b!5578451))

(assert (= (and b!5578451 c!976647) b!5578453))

(assert (= (and b!5578451 (not c!976647)) b!5578455))

(assert (= (and b!5578453 res!2367598) b!5578456))

(assert (= (and b!5578455 c!976646) b!5578457))

(assert (= (and b!5578455 (not c!976646)) b!5578450))

(assert (= (and b!5578457 res!2367597) b!5578454))

(assert (= (and b!5578450 (not res!2367596)) b!5578458))

(assert (= (and b!5578458 res!2367594) b!5578452))

(assert (= (or b!5578454 b!5578452) bm!417048))

(assert (= (or b!5578457 b!5578458) bm!417050))

(assert (= (or b!5578456 bm!417048) bm!417049))

(declare-fun m!6561168 () Bool)

(assert (=> b!5578453 m!6561168))

(declare-fun m!6561170 () Bool)

(assert (=> bm!417049 m!6561170))

(declare-fun m!6561172 () Bool)

(assert (=> bm!417050 m!6561172))

(assert (=> start!579460 d!1763640))

(declare-fun bs!1290744 () Bool)

(declare-fun d!1763642 () Bool)

(assert (= bs!1290744 (and d!1763642 d!1763614)))

(declare-fun lambda!299101 () Int)

(assert (=> bs!1290744 (= lambda!299101 lambda!299091)))

(declare-fun bs!1290745 () Bool)

(assert (= bs!1290745 (and d!1763642 d!1763630)))

(assert (=> bs!1290745 (= lambda!299101 lambda!299092)))

(declare-fun bs!1290746 () Bool)

(assert (= bs!1290746 (and d!1763642 d!1763634)))

(assert (=> bs!1290746 (= lambda!299101 lambda!299095)))

(declare-fun bs!1290747 () Bool)

(assert (= bs!1290747 (and d!1763642 d!1763636)))

(assert (=> bs!1290747 (= lambda!299101 lambda!299098)))

(declare-fun b!5578479 () Bool)

(declare-fun e!3442274 () Bool)

(declare-fun lt!2253140 () Regex!15560)

(declare-fun isConcat!640 (Regex!15560) Bool)

(assert (=> b!5578479 (= e!3442274 (isConcat!640 lt!2253140))))

(declare-fun b!5578480 () Bool)

(declare-fun e!3442273 () Bool)

(assert (=> b!5578480 (= e!3442273 (isEmpty!34662 (t!376251 (exprs!5444 (h!69305 zl!343)))))))

(declare-fun b!5578481 () Bool)

(declare-fun e!3442278 () Bool)

(declare-fun e!3442277 () Bool)

(assert (=> b!5578481 (= e!3442278 e!3442277)))

(declare-fun c!976656 () Bool)

(assert (=> b!5578481 (= c!976656 (isEmpty!34662 (exprs!5444 (h!69305 zl!343))))))

(declare-fun b!5578482 () Bool)

(declare-fun e!3442276 () Regex!15560)

(assert (=> b!5578482 (= e!3442276 EmptyExpr!15560)))

(assert (=> d!1763642 e!3442278))

(declare-fun res!2367603 () Bool)

(assert (=> d!1763642 (=> (not res!2367603) (not e!3442278))))

(assert (=> d!1763642 (= res!2367603 (validRegex!7296 lt!2253140))))

(declare-fun e!3442275 () Regex!15560)

(assert (=> d!1763642 (= lt!2253140 e!3442275)))

(declare-fun c!976659 () Bool)

(assert (=> d!1763642 (= c!976659 e!3442273)))

(declare-fun res!2367604 () Bool)

(assert (=> d!1763642 (=> (not res!2367604) (not e!3442273))))

(assert (=> d!1763642 (= res!2367604 (is-Cons!62856 (exprs!5444 (h!69305 zl!343))))))

(assert (=> d!1763642 (forall!14729 (exprs!5444 (h!69305 zl!343)) lambda!299101)))

(assert (=> d!1763642 (= (generalisedConcat!1175 (exprs!5444 (h!69305 zl!343))) lt!2253140)))

(declare-fun b!5578483 () Bool)

(assert (=> b!5578483 (= e!3442277 e!3442274)))

(declare-fun c!976657 () Bool)

(assert (=> b!5578483 (= c!976657 (isEmpty!34662 (tail!10990 (exprs!5444 (h!69305 zl!343)))))))

(declare-fun b!5578484 () Bool)

(assert (=> b!5578484 (= e!3442275 (h!69304 (exprs!5444 (h!69305 zl!343))))))

(declare-fun b!5578485 () Bool)

(assert (=> b!5578485 (= e!3442275 e!3442276)))

(declare-fun c!976658 () Bool)

(assert (=> b!5578485 (= c!976658 (is-Cons!62856 (exprs!5444 (h!69305 zl!343))))))

(declare-fun b!5578486 () Bool)

(declare-fun isEmptyExpr!1117 (Regex!15560) Bool)

(assert (=> b!5578486 (= e!3442277 (isEmptyExpr!1117 lt!2253140))))

(declare-fun b!5578487 () Bool)

(assert (=> b!5578487 (= e!3442276 (Concat!24405 (h!69304 (exprs!5444 (h!69305 zl!343))) (generalisedConcat!1175 (t!376251 (exprs!5444 (h!69305 zl!343))))))))

(declare-fun b!5578488 () Bool)

(assert (=> b!5578488 (= e!3442274 (= lt!2253140 (head!11895 (exprs!5444 (h!69305 zl!343)))))))

(assert (= (and d!1763642 res!2367604) b!5578480))

(assert (= (and d!1763642 c!976659) b!5578484))

(assert (= (and d!1763642 (not c!976659)) b!5578485))

(assert (= (and b!5578485 c!976658) b!5578487))

(assert (= (and b!5578485 (not c!976658)) b!5578482))

(assert (= (and d!1763642 res!2367603) b!5578481))

(assert (= (and b!5578481 c!976656) b!5578486))

(assert (= (and b!5578481 (not c!976656)) b!5578483))

(assert (= (and b!5578483 c!976657) b!5578488))

(assert (= (and b!5578483 (not c!976657)) b!5578479))

(assert (=> b!5578480 m!6560946))

(declare-fun m!6561174 () Bool)

(assert (=> b!5578486 m!6561174))

(declare-fun m!6561176 () Bool)

(assert (=> b!5578487 m!6561176))

(declare-fun m!6561178 () Bool)

(assert (=> b!5578479 m!6561178))

(declare-fun m!6561180 () Bool)

(assert (=> b!5578481 m!6561180))

(declare-fun m!6561182 () Bool)

(assert (=> b!5578483 m!6561182))

(assert (=> b!5578483 m!6561182))

(declare-fun m!6561184 () Bool)

(assert (=> b!5578483 m!6561184))

(declare-fun m!6561186 () Bool)

(assert (=> d!1763642 m!6561186))

(declare-fun m!6561188 () Bool)

(assert (=> d!1763642 m!6561188))

(declare-fun m!6561190 () Bool)

(assert (=> b!5578488 m!6561190))

(assert (=> b!5578256 d!1763642))

(assert (=> b!5578264 d!1763628))

(declare-fun bs!1290748 () Bool)

(declare-fun b!5578524 () Bool)

(assert (= bs!1290748 (and b!5578524 b!5578258)))

(declare-fun lambda!299106 () Int)

(assert (=> bs!1290748 (not (= lambda!299106 lambda!299073))))

(assert (=> bs!1290748 (not (= lambda!299106 lambda!299074))))

(assert (=> b!5578524 true))

(assert (=> b!5578524 true))

(declare-fun bs!1290749 () Bool)

(declare-fun b!5578530 () Bool)

(assert (= bs!1290749 (and b!5578530 b!5578258)))

(declare-fun lambda!299107 () Int)

(assert (=> bs!1290749 (not (= lambda!299107 lambda!299073))))

(assert (=> bs!1290749 (= lambda!299107 lambda!299074)))

(declare-fun bs!1290750 () Bool)

(assert (= bs!1290750 (and b!5578530 b!5578524)))

(assert (=> bs!1290750 (not (= lambda!299107 lambda!299106))))

(assert (=> b!5578530 true))

(assert (=> b!5578530 true))

(declare-fun b!5578521 () Bool)

(declare-fun e!3442301 () Bool)

(declare-fun e!3442302 () Bool)

(assert (=> b!5578521 (= e!3442301 e!3442302)))

(declare-fun c!976671 () Bool)

(assert (=> b!5578521 (= c!976671 (is-Star!15560 r!7292))))

(declare-fun b!5578523 () Bool)

(declare-fun c!976669 () Bool)

(assert (=> b!5578523 (= c!976669 (is-ElementMatch!15560 r!7292))))

(declare-fun e!3442298 () Bool)

(declare-fun e!3442300 () Bool)

(assert (=> b!5578523 (= e!3442298 e!3442300)))

(declare-fun call!417060 () Bool)

(declare-fun bm!417055 () Bool)

(assert (=> bm!417055 (= call!417060 (Exists!2660 (ite c!976671 lambda!299106 lambda!299107)))))

(declare-fun bm!417056 () Bool)

(declare-fun call!417061 () Bool)

(assert (=> bm!417056 (= call!417061 (isEmpty!34665 s!2326))))

(declare-fun e!3442299 () Bool)

(assert (=> b!5578524 (= e!3442299 call!417060)))

(declare-fun b!5578525 () Bool)

(declare-fun e!3442303 () Bool)

(assert (=> b!5578525 (= e!3442303 (matchRSpec!2663 (regTwo!31633 r!7292) s!2326))))

(declare-fun b!5578526 () Bool)

(assert (=> b!5578526 (= e!3442300 (= s!2326 (Cons!62855 (c!976609 r!7292) Nil!62855)))))

(declare-fun b!5578527 () Bool)

(assert (=> b!5578527 (= e!3442301 e!3442303)))

(declare-fun res!2367622 () Bool)

(assert (=> b!5578527 (= res!2367622 (matchRSpec!2663 (regOne!31633 r!7292) s!2326))))

(assert (=> b!5578527 (=> res!2367622 e!3442303)))

(declare-fun b!5578528 () Bool)

(declare-fun c!976670 () Bool)

(assert (=> b!5578528 (= c!976670 (is-Union!15560 r!7292))))

(assert (=> b!5578528 (= e!3442300 e!3442301)))

(declare-fun b!5578529 () Bool)

(declare-fun res!2367623 () Bool)

(assert (=> b!5578529 (=> res!2367623 e!3442299)))

(assert (=> b!5578529 (= res!2367623 call!417061)))

(assert (=> b!5578529 (= e!3442302 e!3442299)))

(assert (=> b!5578530 (= e!3442302 call!417060)))

(declare-fun b!5578531 () Bool)

(declare-fun e!3442297 () Bool)

(assert (=> b!5578531 (= e!3442297 e!3442298)))

(declare-fun res!2367621 () Bool)

(assert (=> b!5578531 (= res!2367621 (not (is-EmptyLang!15560 r!7292)))))

(assert (=> b!5578531 (=> (not res!2367621) (not e!3442298))))

(declare-fun d!1763644 () Bool)

(declare-fun c!976668 () Bool)

(assert (=> d!1763644 (= c!976668 (is-EmptyExpr!15560 r!7292))))

(assert (=> d!1763644 (= (matchRSpec!2663 r!7292 s!2326) e!3442297)))

(declare-fun b!5578522 () Bool)

(assert (=> b!5578522 (= e!3442297 call!417061)))

(assert (= (and d!1763644 c!976668) b!5578522))

(assert (= (and d!1763644 (not c!976668)) b!5578531))

(assert (= (and b!5578531 res!2367621) b!5578523))

(assert (= (and b!5578523 c!976669) b!5578526))

(assert (= (and b!5578523 (not c!976669)) b!5578528))

(assert (= (and b!5578528 c!976670) b!5578527))

(assert (= (and b!5578528 (not c!976670)) b!5578521))

(assert (= (and b!5578527 (not res!2367622)) b!5578525))

(assert (= (and b!5578521 c!976671) b!5578529))

(assert (= (and b!5578521 (not c!976671)) b!5578530))

(assert (= (and b!5578529 (not res!2367623)) b!5578524))

(assert (= (or b!5578524 b!5578530) bm!417055))

(assert (= (or b!5578522 b!5578529) bm!417056))

(declare-fun m!6561192 () Bool)

(assert (=> bm!417055 m!6561192))

(declare-fun m!6561194 () Bool)

(assert (=> bm!417056 m!6561194))

(declare-fun m!6561196 () Bool)

(assert (=> b!5578525 m!6561196))

(declare-fun m!6561198 () Bool)

(assert (=> b!5578527 m!6561198))

(assert (=> b!5578245 d!1763644))

(declare-fun b!5578560 () Bool)

(declare-fun e!3442319 () Bool)

(assert (=> b!5578560 (= e!3442319 (not (= (head!11894 s!2326) (c!976609 r!7292))))))

(declare-fun b!5578561 () Bool)

(declare-fun res!2367641 () Bool)

(assert (=> b!5578561 (=> res!2367641 e!3442319)))

(assert (=> b!5578561 (= res!2367641 (not (isEmpty!34665 (tail!10989 s!2326))))))

(declare-fun bm!417059 () Bool)

(declare-fun call!417064 () Bool)

(assert (=> bm!417059 (= call!417064 (isEmpty!34665 s!2326))))

(declare-fun b!5578562 () Bool)

(declare-fun res!2367645 () Bool)

(declare-fun e!3442324 () Bool)

(assert (=> b!5578562 (=> (not res!2367645) (not e!3442324))))

(assert (=> b!5578562 (= res!2367645 (not call!417064))))

(declare-fun b!5578563 () Bool)

(assert (=> b!5578563 (= e!3442324 (= (head!11894 s!2326) (c!976609 r!7292)))))

(declare-fun b!5578564 () Bool)

(declare-fun e!3442318 () Bool)

(declare-fun lt!2253143 () Bool)

(assert (=> b!5578564 (= e!3442318 (not lt!2253143))))

(declare-fun b!5578565 () Bool)

(declare-fun res!2367640 () Bool)

(declare-fun e!3442320 () Bool)

(assert (=> b!5578565 (=> res!2367640 e!3442320)))

(assert (=> b!5578565 (= res!2367640 e!3442324)))

(declare-fun res!2367646 () Bool)

(assert (=> b!5578565 (=> (not res!2367646) (not e!3442324))))

(assert (=> b!5578565 (= res!2367646 lt!2253143)))

(declare-fun b!5578567 () Bool)

(declare-fun e!3442323 () Bool)

(assert (=> b!5578567 (= e!3442323 (= lt!2253143 call!417064))))

(declare-fun b!5578568 () Bool)

(declare-fun e!3442321 () Bool)

(declare-fun derivativeStep!4411 (Regex!15560 C!31390) Regex!15560)

(assert (=> b!5578568 (= e!3442321 (matchR!7745 (derivativeStep!4411 r!7292 (head!11894 s!2326)) (tail!10989 s!2326)))))

(declare-fun b!5578569 () Bool)

(declare-fun res!2367644 () Bool)

(assert (=> b!5578569 (=> res!2367644 e!3442320)))

(assert (=> b!5578569 (= res!2367644 (not (is-ElementMatch!15560 r!7292)))))

(assert (=> b!5578569 (= e!3442318 e!3442320)))

(declare-fun b!5578570 () Bool)

(declare-fun res!2367647 () Bool)

(assert (=> b!5578570 (=> (not res!2367647) (not e!3442324))))

(assert (=> b!5578570 (= res!2367647 (isEmpty!34665 (tail!10989 s!2326)))))

(declare-fun b!5578571 () Bool)

(declare-fun e!3442322 () Bool)

(assert (=> b!5578571 (= e!3442322 e!3442319)))

(declare-fun res!2367642 () Bool)

(assert (=> b!5578571 (=> res!2367642 e!3442319)))

(assert (=> b!5578571 (= res!2367642 call!417064)))

(declare-fun b!5578572 () Bool)

(assert (=> b!5578572 (= e!3442320 e!3442322)))

(declare-fun res!2367643 () Bool)

(assert (=> b!5578572 (=> (not res!2367643) (not e!3442322))))

(assert (=> b!5578572 (= res!2367643 (not lt!2253143))))

(declare-fun b!5578573 () Bool)

(assert (=> b!5578573 (= e!3442323 e!3442318)))

(declare-fun c!976680 () Bool)

(assert (=> b!5578573 (= c!976680 (is-EmptyLang!15560 r!7292))))

(declare-fun d!1763646 () Bool)

(assert (=> d!1763646 e!3442323))

(declare-fun c!976679 () Bool)

(assert (=> d!1763646 (= c!976679 (is-EmptyExpr!15560 r!7292))))

(assert (=> d!1763646 (= lt!2253143 e!3442321)))

(declare-fun c!976678 () Bool)

(assert (=> d!1763646 (= c!976678 (isEmpty!34665 s!2326))))

(assert (=> d!1763646 (validRegex!7296 r!7292)))

(assert (=> d!1763646 (= (matchR!7745 r!7292 s!2326) lt!2253143)))

(declare-fun b!5578566 () Bool)

(assert (=> b!5578566 (= e!3442321 (nullable!5592 r!7292))))

(assert (= (and d!1763646 c!976678) b!5578566))

(assert (= (and d!1763646 (not c!976678)) b!5578568))

(assert (= (and d!1763646 c!976679) b!5578567))

(assert (= (and d!1763646 (not c!976679)) b!5578573))

(assert (= (and b!5578573 c!976680) b!5578564))

(assert (= (and b!5578573 (not c!976680)) b!5578569))

(assert (= (and b!5578569 (not res!2367644)) b!5578565))

(assert (= (and b!5578565 res!2367646) b!5578562))

(assert (= (and b!5578562 res!2367645) b!5578570))

(assert (= (and b!5578570 res!2367647) b!5578563))

(assert (= (and b!5578565 (not res!2367640)) b!5578572))

(assert (= (and b!5578572 res!2367643) b!5578571))

(assert (= (and b!5578571 (not res!2367642)) b!5578561))

(assert (= (and b!5578561 (not res!2367641)) b!5578560))

(assert (= (or b!5578567 b!5578562 b!5578571) bm!417059))

(declare-fun m!6561200 () Bool)

(assert (=> b!5578568 m!6561200))

(assert (=> b!5578568 m!6561200))

(declare-fun m!6561202 () Bool)

(assert (=> b!5578568 m!6561202))

(declare-fun m!6561204 () Bool)

(assert (=> b!5578568 m!6561204))

(assert (=> b!5578568 m!6561202))

(assert (=> b!5578568 m!6561204))

(declare-fun m!6561206 () Bool)

(assert (=> b!5578568 m!6561206))

(assert (=> d!1763646 m!6561194))

(assert (=> d!1763646 m!6561000))

(declare-fun m!6561208 () Bool)

(assert (=> b!5578566 m!6561208))

(assert (=> bm!417059 m!6561194))

(assert (=> b!5578570 m!6561204))

(assert (=> b!5578570 m!6561204))

(declare-fun m!6561210 () Bool)

(assert (=> b!5578570 m!6561210))

(assert (=> b!5578561 m!6561204))

(assert (=> b!5578561 m!6561204))

(assert (=> b!5578561 m!6561210))

(assert (=> b!5578560 m!6561200))

(assert (=> b!5578563 m!6561200))

(assert (=> b!5578245 d!1763646))

(declare-fun d!1763648 () Bool)

(assert (=> d!1763648 (= (matchR!7745 r!7292 s!2326) (matchRSpec!2663 r!7292 s!2326))))

(declare-fun lt!2253146 () Unit!155612)

(declare-fun choose!42265 (Regex!15560 List!62979) Unit!155612)

(assert (=> d!1763648 (= lt!2253146 (choose!42265 r!7292 s!2326))))

(assert (=> d!1763648 (validRegex!7296 r!7292)))

(assert (=> d!1763648 (= (mainMatchTheorem!2663 r!7292 s!2326) lt!2253146)))

(declare-fun bs!1290751 () Bool)

(assert (= bs!1290751 d!1763648))

(assert (=> bs!1290751 m!6560970))

(assert (=> bs!1290751 m!6560968))

(declare-fun m!6561212 () Bool)

(assert (=> bs!1290751 m!6561212))

(assert (=> bs!1290751 m!6561000))

(assert (=> b!5578245 d!1763648))

(declare-fun d!1763650 () Bool)

(declare-fun lt!2253149 () Regex!15560)

(assert (=> d!1763650 (validRegex!7296 lt!2253149)))

(assert (=> d!1763650 (= lt!2253149 (generalisedUnion!1423 (unfocusZipperList!988 zl!343)))))

(assert (=> d!1763650 (= (unfocusZipper!1302 zl!343) lt!2253149)))

(declare-fun bs!1290752 () Bool)

(assert (= bs!1290752 d!1763650))

(declare-fun m!6561214 () Bool)

(assert (=> bs!1290752 m!6561214))

(assert (=> bs!1290752 m!6560926))

(assert (=> bs!1290752 m!6560926))

(assert (=> bs!1290752 m!6560928))

(assert (=> b!5578255 d!1763650))

(declare-fun d!1763652 () Bool)

(assert (=> d!1763652 (= (isEmpty!34661 (t!376252 zl!343)) (is-Nil!62857 (t!376252 zl!343)))))

(assert (=> b!5578238 d!1763652))

(declare-fun d!1763654 () Bool)

(assert (=> d!1763654 (= (isEmpty!34662 (t!376251 (exprs!5444 (h!69305 zl!343)))) (is-Nil!62856 (t!376251 (exprs!5444 (h!69305 zl!343)))))))

(assert (=> b!5578249 d!1763654))

(declare-fun b!5578584 () Bool)

(declare-fun e!3442332 () (Set Context!9888))

(declare-fun call!417067 () (Set Context!9888))

(assert (=> b!5578584 (= e!3442332 call!417067)))

(declare-fun b!5578585 () Bool)

(assert (=> b!5578585 (= e!3442332 (as set.empty (Set Context!9888)))))

(declare-fun b!5578586 () Bool)

(declare-fun e!3442331 () (Set Context!9888))

(assert (=> b!5578586 (= e!3442331 e!3442332)))

(declare-fun c!976685 () Bool)

(assert (=> b!5578586 (= c!976685 (is-Cons!62856 (exprs!5444 lt!2253050)))))

(declare-fun d!1763656 () Bool)

(declare-fun c!976686 () Bool)

(declare-fun e!3442333 () Bool)

(assert (=> d!1763656 (= c!976686 e!3442333)))

(declare-fun res!2367650 () Bool)

(assert (=> d!1763656 (=> (not res!2367650) (not e!3442333))))

(assert (=> d!1763656 (= res!2367650 (is-Cons!62856 (exprs!5444 lt!2253050)))))

(assert (=> d!1763656 (= (derivationStepZipperUp!828 lt!2253050 (h!69303 s!2326)) e!3442331)))

(declare-fun bm!417062 () Bool)

(assert (=> bm!417062 (= call!417067 (derivationStepZipperDown!902 (h!69304 (exprs!5444 lt!2253050)) (Context!9889 (t!376251 (exprs!5444 lt!2253050))) (h!69303 s!2326)))))

(declare-fun b!5578587 () Bool)

(assert (=> b!5578587 (= e!3442333 (nullable!5592 (h!69304 (exprs!5444 lt!2253050))))))

(declare-fun b!5578588 () Bool)

(assert (=> b!5578588 (= e!3442331 (set.union call!417067 (derivationStepZipperUp!828 (Context!9889 (t!376251 (exprs!5444 lt!2253050))) (h!69303 s!2326))))))

(assert (= (and d!1763656 res!2367650) b!5578587))

(assert (= (and d!1763656 c!976686) b!5578588))

(assert (= (and d!1763656 (not c!976686)) b!5578586))

(assert (= (and b!5578586 c!976685) b!5578584))

(assert (= (and b!5578586 (not c!976685)) b!5578585))

(assert (= (or b!5578588 b!5578584) bm!417062))

(declare-fun m!6561216 () Bool)

(assert (=> bm!417062 m!6561216))

(declare-fun m!6561218 () Bool)

(assert (=> b!5578587 m!6561218))

(declare-fun m!6561220 () Bool)

(assert (=> b!5578588 m!6561220))

(assert (=> b!5578248 d!1763656))

(declare-fun d!1763658 () Bool)

(declare-fun nullableFct!1704 (Regex!15560) Bool)

(assert (=> d!1763658 (= (nullable!5592 (h!69304 (exprs!5444 (h!69305 zl!343)))) (nullableFct!1704 (h!69304 (exprs!5444 (h!69305 zl!343)))))))

(declare-fun bs!1290753 () Bool)

(assert (= bs!1290753 d!1763658))

(declare-fun m!6561222 () Bool)

(assert (=> bs!1290753 m!6561222))

(assert (=> b!5578248 d!1763658))

(declare-fun b!5578589 () Bool)

(declare-fun e!3442335 () (Set Context!9888))

(declare-fun call!417068 () (Set Context!9888))

(assert (=> b!5578589 (= e!3442335 call!417068)))

(declare-fun b!5578590 () Bool)

(assert (=> b!5578590 (= e!3442335 (as set.empty (Set Context!9888)))))

(declare-fun b!5578591 () Bool)

(declare-fun e!3442334 () (Set Context!9888))

(assert (=> b!5578591 (= e!3442334 e!3442335)))

(declare-fun c!976687 () Bool)

(assert (=> b!5578591 (= c!976687 (is-Cons!62856 (exprs!5444 (Context!9889 (Cons!62856 (h!69304 (exprs!5444 (h!69305 zl!343))) (t!376251 (exprs!5444 (h!69305 zl!343))))))))))

(declare-fun d!1763660 () Bool)

(declare-fun c!976688 () Bool)

(declare-fun e!3442336 () Bool)

(assert (=> d!1763660 (= c!976688 e!3442336)))

(declare-fun res!2367651 () Bool)

(assert (=> d!1763660 (=> (not res!2367651) (not e!3442336))))

(assert (=> d!1763660 (= res!2367651 (is-Cons!62856 (exprs!5444 (Context!9889 (Cons!62856 (h!69304 (exprs!5444 (h!69305 zl!343))) (t!376251 (exprs!5444 (h!69305 zl!343))))))))))

(assert (=> d!1763660 (= (derivationStepZipperUp!828 (Context!9889 (Cons!62856 (h!69304 (exprs!5444 (h!69305 zl!343))) (t!376251 (exprs!5444 (h!69305 zl!343))))) (h!69303 s!2326)) e!3442334)))

(declare-fun bm!417063 () Bool)

(assert (=> bm!417063 (= call!417068 (derivationStepZipperDown!902 (h!69304 (exprs!5444 (Context!9889 (Cons!62856 (h!69304 (exprs!5444 (h!69305 zl!343))) (t!376251 (exprs!5444 (h!69305 zl!343))))))) (Context!9889 (t!376251 (exprs!5444 (Context!9889 (Cons!62856 (h!69304 (exprs!5444 (h!69305 zl!343))) (t!376251 (exprs!5444 (h!69305 zl!343)))))))) (h!69303 s!2326)))))

(declare-fun b!5578592 () Bool)

(assert (=> b!5578592 (= e!3442336 (nullable!5592 (h!69304 (exprs!5444 (Context!9889 (Cons!62856 (h!69304 (exprs!5444 (h!69305 zl!343))) (t!376251 (exprs!5444 (h!69305 zl!343)))))))))))

(declare-fun b!5578593 () Bool)

(assert (=> b!5578593 (= e!3442334 (set.union call!417068 (derivationStepZipperUp!828 (Context!9889 (t!376251 (exprs!5444 (Context!9889 (Cons!62856 (h!69304 (exprs!5444 (h!69305 zl!343))) (t!376251 (exprs!5444 (h!69305 zl!343)))))))) (h!69303 s!2326))))))

(assert (= (and d!1763660 res!2367651) b!5578592))

(assert (= (and d!1763660 c!976688) b!5578593))

(assert (= (and d!1763660 (not c!976688)) b!5578591))

(assert (= (and b!5578591 c!976687) b!5578589))

(assert (= (and b!5578591 (not c!976687)) b!5578590))

(assert (= (or b!5578593 b!5578589) bm!417063))

(declare-fun m!6561224 () Bool)

(assert (=> bm!417063 m!6561224))

(declare-fun m!6561226 () Bool)

(assert (=> b!5578592 m!6561226))

(declare-fun m!6561228 () Bool)

(assert (=> b!5578593 m!6561228))

(assert (=> b!5578248 d!1763660))

(declare-fun d!1763662 () Bool)

(declare-fun choose!42266 ((Set Context!9888) Int) (Set Context!9888))

(assert (=> d!1763662 (= (flatMap!1173 z!1189 lambda!299075) (choose!42266 z!1189 lambda!299075))))

(declare-fun bs!1290754 () Bool)

(assert (= bs!1290754 d!1763662))

(declare-fun m!6561230 () Bool)

(assert (=> bs!1290754 m!6561230))

(assert (=> b!5578248 d!1763662))

(declare-fun b!5578594 () Bool)

(declare-fun e!3442338 () (Set Context!9888))

(declare-fun call!417069 () (Set Context!9888))

(assert (=> b!5578594 (= e!3442338 call!417069)))

(declare-fun b!5578595 () Bool)

(assert (=> b!5578595 (= e!3442338 (as set.empty (Set Context!9888)))))

(declare-fun b!5578596 () Bool)

(declare-fun e!3442337 () (Set Context!9888))

(assert (=> b!5578596 (= e!3442337 e!3442338)))

(declare-fun c!976689 () Bool)

(assert (=> b!5578596 (= c!976689 (is-Cons!62856 (exprs!5444 (h!69305 zl!343))))))

(declare-fun d!1763664 () Bool)

(declare-fun c!976690 () Bool)

(declare-fun e!3442339 () Bool)

(assert (=> d!1763664 (= c!976690 e!3442339)))

(declare-fun res!2367652 () Bool)

(assert (=> d!1763664 (=> (not res!2367652) (not e!3442339))))

(assert (=> d!1763664 (= res!2367652 (is-Cons!62856 (exprs!5444 (h!69305 zl!343))))))

(assert (=> d!1763664 (= (derivationStepZipperUp!828 (h!69305 zl!343) (h!69303 s!2326)) e!3442337)))

(declare-fun bm!417064 () Bool)

(assert (=> bm!417064 (= call!417069 (derivationStepZipperDown!902 (h!69304 (exprs!5444 (h!69305 zl!343))) (Context!9889 (t!376251 (exprs!5444 (h!69305 zl!343)))) (h!69303 s!2326)))))

(declare-fun b!5578597 () Bool)

(assert (=> b!5578597 (= e!3442339 (nullable!5592 (h!69304 (exprs!5444 (h!69305 zl!343)))))))

(declare-fun b!5578598 () Bool)

(assert (=> b!5578598 (= e!3442337 (set.union call!417069 (derivationStepZipperUp!828 (Context!9889 (t!376251 (exprs!5444 (h!69305 zl!343)))) (h!69303 s!2326))))))

(assert (= (and d!1763664 res!2367652) b!5578597))

(assert (= (and d!1763664 c!976690) b!5578598))

(assert (= (and d!1763664 (not c!976690)) b!5578596))

(assert (= (and b!5578596 c!976689) b!5578594))

(assert (= (and b!5578596 (not c!976689)) b!5578595))

(assert (= (or b!5578598 b!5578594) bm!417064))

(declare-fun m!6561232 () Bool)

(assert (=> bm!417064 m!6561232))

(assert (=> b!5578597 m!6560996))

(declare-fun m!6561234 () Bool)

(assert (=> b!5578598 m!6561234))

(assert (=> b!5578248 d!1763664))

(declare-fun d!1763666 () Bool)

(declare-fun dynLambda!24582 (Int Context!9888) (Set Context!9888))

(assert (=> d!1763666 (= (flatMap!1173 z!1189 lambda!299075) (dynLambda!24582 lambda!299075 (h!69305 zl!343)))))

(declare-fun lt!2253152 () Unit!155612)

(declare-fun choose!42267 ((Set Context!9888) Context!9888 Int) Unit!155612)

(assert (=> d!1763666 (= lt!2253152 (choose!42267 z!1189 (h!69305 zl!343) lambda!299075))))

(assert (=> d!1763666 (= z!1189 (set.insert (h!69305 zl!343) (as set.empty (Set Context!9888))))))

(assert (=> d!1763666 (= (lemmaFlatMapOnSingletonSet!705 z!1189 (h!69305 zl!343) lambda!299075) lt!2253152)))

(declare-fun b_lambda!211459 () Bool)

(assert (=> (not b_lambda!211459) (not d!1763666)))

(declare-fun bs!1290755 () Bool)

(assert (= bs!1290755 d!1763666))

(assert (=> bs!1290755 m!6560998))

(declare-fun m!6561236 () Bool)

(assert (=> bs!1290755 m!6561236))

(declare-fun m!6561238 () Bool)

(assert (=> bs!1290755 m!6561238))

(declare-fun m!6561240 () Bool)

(assert (=> bs!1290755 m!6561240))

(assert (=> b!5578248 d!1763666))

(declare-fun call!417087 () (Set Context!9888))

(declare-fun c!976705 () Bool)

(declare-fun c!976703 () Bool)

(declare-fun c!976701 () Bool)

(declare-fun call!417086 () List!62980)

(declare-fun bm!417077 () Bool)

(assert (=> bm!417077 (= call!417087 (derivationStepZipperDown!902 (ite c!976701 (regTwo!31633 (h!69304 (exprs!5444 (h!69305 zl!343)))) (ite c!976703 (regTwo!31632 (h!69304 (exprs!5444 (h!69305 zl!343)))) (ite c!976705 (regOne!31632 (h!69304 (exprs!5444 (h!69305 zl!343)))) (reg!15889 (h!69304 (exprs!5444 (h!69305 zl!343))))))) (ite (or c!976701 c!976703) lt!2253050 (Context!9889 call!417086)) (h!69303 s!2326)))))

(declare-fun b!5578622 () Bool)

(declare-fun e!3442357 () (Set Context!9888))

(declare-fun call!417082 () (Set Context!9888))

(assert (=> b!5578622 (= e!3442357 (set.union call!417082 call!417087))))

(declare-fun bm!417078 () Bool)

(declare-fun call!417084 () List!62980)

(declare-fun $colon$colon!1625 (List!62980 Regex!15560) List!62980)

(assert (=> bm!417078 (= call!417084 ($colon$colon!1625 (exprs!5444 lt!2253050) (ite (or c!976703 c!976705) (regTwo!31632 (h!69304 (exprs!5444 (h!69305 zl!343)))) (h!69304 (exprs!5444 (h!69305 zl!343))))))))

(declare-fun b!5578623 () Bool)

(declare-fun e!3442354 () (Set Context!9888))

(declare-fun call!417085 () (Set Context!9888))

(assert (=> b!5578623 (= e!3442354 call!417085)))

(declare-fun b!5578624 () Bool)

(declare-fun e!3442356 () (Set Context!9888))

(assert (=> b!5578624 (= e!3442356 call!417085)))

(declare-fun bm!417079 () Bool)

(declare-fun call!417083 () (Set Context!9888))

(assert (=> bm!417079 (= call!417083 call!417087)))

(declare-fun b!5578625 () Bool)

(assert (=> b!5578625 (= e!3442354 (as set.empty (Set Context!9888)))))

(declare-fun b!5578626 () Bool)

(declare-fun e!3442352 () (Set Context!9888))

(assert (=> b!5578626 (= e!3442352 (set.union call!417082 call!417083))))

(declare-fun bm!417080 () Bool)

(assert (=> bm!417080 (= call!417086 call!417084)))

(declare-fun b!5578627 () Bool)

(assert (=> b!5578627 (= e!3442352 e!3442356)))

(assert (=> b!5578627 (= c!976705 (is-Concat!24405 (h!69304 (exprs!5444 (h!69305 zl!343)))))))

(declare-fun b!5578628 () Bool)

(declare-fun c!976704 () Bool)

(assert (=> b!5578628 (= c!976704 (is-Star!15560 (h!69304 (exprs!5444 (h!69305 zl!343)))))))

(assert (=> b!5578628 (= e!3442356 e!3442354)))

(declare-fun b!5578629 () Bool)

(declare-fun e!3442353 () Bool)

(assert (=> b!5578629 (= c!976703 e!3442353)))

(declare-fun res!2367655 () Bool)

(assert (=> b!5578629 (=> (not res!2367655) (not e!3442353))))

(assert (=> b!5578629 (= res!2367655 (is-Concat!24405 (h!69304 (exprs!5444 (h!69305 zl!343)))))))

(assert (=> b!5578629 (= e!3442357 e!3442352)))

(declare-fun d!1763668 () Bool)

(declare-fun c!976702 () Bool)

(assert (=> d!1763668 (= c!976702 (and (is-ElementMatch!15560 (h!69304 (exprs!5444 (h!69305 zl!343)))) (= (c!976609 (h!69304 (exprs!5444 (h!69305 zl!343)))) (h!69303 s!2326))))))

(declare-fun e!3442355 () (Set Context!9888))

(assert (=> d!1763668 (= (derivationStepZipperDown!902 (h!69304 (exprs!5444 (h!69305 zl!343))) lt!2253050 (h!69303 s!2326)) e!3442355)))

(declare-fun b!5578621 () Bool)

(assert (=> b!5578621 (= e!3442355 e!3442357)))

(assert (=> b!5578621 (= c!976701 (is-Union!15560 (h!69304 (exprs!5444 (h!69305 zl!343)))))))

(declare-fun b!5578630 () Bool)

(assert (=> b!5578630 (= e!3442353 (nullable!5592 (regOne!31632 (h!69304 (exprs!5444 (h!69305 zl!343))))))))

(declare-fun bm!417081 () Bool)

(assert (=> bm!417081 (= call!417082 (derivationStepZipperDown!902 (ite c!976701 (regOne!31633 (h!69304 (exprs!5444 (h!69305 zl!343)))) (regOne!31632 (h!69304 (exprs!5444 (h!69305 zl!343))))) (ite c!976701 lt!2253050 (Context!9889 call!417084)) (h!69303 s!2326)))))

(declare-fun b!5578631 () Bool)

(assert (=> b!5578631 (= e!3442355 (set.insert lt!2253050 (as set.empty (Set Context!9888))))))

(declare-fun bm!417082 () Bool)

(assert (=> bm!417082 (= call!417085 call!417083)))

(assert (= (and d!1763668 c!976702) b!5578631))

(assert (= (and d!1763668 (not c!976702)) b!5578621))

(assert (= (and b!5578621 c!976701) b!5578622))

(assert (= (and b!5578621 (not c!976701)) b!5578629))

(assert (= (and b!5578629 res!2367655) b!5578630))

(assert (= (and b!5578629 c!976703) b!5578626))

(assert (= (and b!5578629 (not c!976703)) b!5578627))

(assert (= (and b!5578627 c!976705) b!5578624))

(assert (= (and b!5578627 (not c!976705)) b!5578628))

(assert (= (and b!5578628 c!976704) b!5578623))

(assert (= (and b!5578628 (not c!976704)) b!5578625))

(assert (= (or b!5578624 b!5578623) bm!417080))

(assert (= (or b!5578624 b!5578623) bm!417082))

(assert (= (or b!5578626 bm!417080) bm!417078))

(assert (= (or b!5578626 bm!417082) bm!417079))

(assert (= (or b!5578622 bm!417079) bm!417077))

(assert (= (or b!5578622 b!5578626) bm!417081))

(declare-fun m!6561242 () Bool)

(assert (=> bm!417077 m!6561242))

(declare-fun m!6561244 () Bool)

(assert (=> b!5578631 m!6561244))

(declare-fun m!6561246 () Bool)

(assert (=> bm!417081 m!6561246))

(declare-fun m!6561248 () Bool)

(assert (=> bm!417078 m!6561248))

(declare-fun m!6561250 () Bool)

(assert (=> b!5578630 m!6561250))

(assert (=> b!5578248 d!1763668))

(declare-fun c!976706 () Bool)

(declare-fun bm!417083 () Bool)

(declare-fun c!976708 () Bool)

(declare-fun c!976710 () Bool)

(declare-fun call!417092 () List!62980)

(declare-fun call!417093 () (Set Context!9888))

(assert (=> bm!417083 (= call!417093 (derivationStepZipperDown!902 (ite c!976706 (regTwo!31633 (regTwo!31633 (regOne!31632 r!7292))) (ite c!976708 (regTwo!31632 (regTwo!31633 (regOne!31632 r!7292))) (ite c!976710 (regOne!31632 (regTwo!31633 (regOne!31632 r!7292))) (reg!15889 (regTwo!31633 (regOne!31632 r!7292)))))) (ite (or c!976706 c!976708) lt!2253050 (Context!9889 call!417092)) (h!69303 s!2326)))))

(declare-fun b!5578633 () Bool)

(declare-fun e!3442363 () (Set Context!9888))

(declare-fun call!417088 () (Set Context!9888))

(assert (=> b!5578633 (= e!3442363 (set.union call!417088 call!417093))))

(declare-fun call!417090 () List!62980)

(declare-fun bm!417084 () Bool)

(assert (=> bm!417084 (= call!417090 ($colon$colon!1625 (exprs!5444 lt!2253050) (ite (or c!976708 c!976710) (regTwo!31632 (regTwo!31633 (regOne!31632 r!7292))) (regTwo!31633 (regOne!31632 r!7292)))))))

(declare-fun b!5578634 () Bool)

(declare-fun e!3442360 () (Set Context!9888))

(declare-fun call!417091 () (Set Context!9888))

(assert (=> b!5578634 (= e!3442360 call!417091)))

(declare-fun b!5578635 () Bool)

(declare-fun e!3442362 () (Set Context!9888))

(assert (=> b!5578635 (= e!3442362 call!417091)))

(declare-fun bm!417085 () Bool)

(declare-fun call!417089 () (Set Context!9888))

(assert (=> bm!417085 (= call!417089 call!417093)))

(declare-fun b!5578636 () Bool)

(assert (=> b!5578636 (= e!3442360 (as set.empty (Set Context!9888)))))

(declare-fun b!5578637 () Bool)

(declare-fun e!3442358 () (Set Context!9888))

(assert (=> b!5578637 (= e!3442358 (set.union call!417088 call!417089))))

(declare-fun bm!417086 () Bool)

(assert (=> bm!417086 (= call!417092 call!417090)))

(declare-fun b!5578638 () Bool)

(assert (=> b!5578638 (= e!3442358 e!3442362)))

(assert (=> b!5578638 (= c!976710 (is-Concat!24405 (regTwo!31633 (regOne!31632 r!7292))))))

(declare-fun b!5578639 () Bool)

(declare-fun c!976709 () Bool)

(assert (=> b!5578639 (= c!976709 (is-Star!15560 (regTwo!31633 (regOne!31632 r!7292))))))

(assert (=> b!5578639 (= e!3442362 e!3442360)))

(declare-fun b!5578640 () Bool)

(declare-fun e!3442359 () Bool)

(assert (=> b!5578640 (= c!976708 e!3442359)))

(declare-fun res!2367656 () Bool)

(assert (=> b!5578640 (=> (not res!2367656) (not e!3442359))))

(assert (=> b!5578640 (= res!2367656 (is-Concat!24405 (regTwo!31633 (regOne!31632 r!7292))))))

(assert (=> b!5578640 (= e!3442363 e!3442358)))

(declare-fun d!1763670 () Bool)

(declare-fun c!976707 () Bool)

(assert (=> d!1763670 (= c!976707 (and (is-ElementMatch!15560 (regTwo!31633 (regOne!31632 r!7292))) (= (c!976609 (regTwo!31633 (regOne!31632 r!7292))) (h!69303 s!2326))))))

(declare-fun e!3442361 () (Set Context!9888))

(assert (=> d!1763670 (= (derivationStepZipperDown!902 (regTwo!31633 (regOne!31632 r!7292)) lt!2253050 (h!69303 s!2326)) e!3442361)))

(declare-fun b!5578632 () Bool)

(assert (=> b!5578632 (= e!3442361 e!3442363)))

(assert (=> b!5578632 (= c!976706 (is-Union!15560 (regTwo!31633 (regOne!31632 r!7292))))))

(declare-fun b!5578641 () Bool)

(assert (=> b!5578641 (= e!3442359 (nullable!5592 (regOne!31632 (regTwo!31633 (regOne!31632 r!7292)))))))

(declare-fun bm!417087 () Bool)

(assert (=> bm!417087 (= call!417088 (derivationStepZipperDown!902 (ite c!976706 (regOne!31633 (regTwo!31633 (regOne!31632 r!7292))) (regOne!31632 (regTwo!31633 (regOne!31632 r!7292)))) (ite c!976706 lt!2253050 (Context!9889 call!417090)) (h!69303 s!2326)))))

(declare-fun b!5578642 () Bool)

(assert (=> b!5578642 (= e!3442361 (set.insert lt!2253050 (as set.empty (Set Context!9888))))))

(declare-fun bm!417088 () Bool)

(assert (=> bm!417088 (= call!417091 call!417089)))

(assert (= (and d!1763670 c!976707) b!5578642))

(assert (= (and d!1763670 (not c!976707)) b!5578632))

(assert (= (and b!5578632 c!976706) b!5578633))

(assert (= (and b!5578632 (not c!976706)) b!5578640))

(assert (= (and b!5578640 res!2367656) b!5578641))

(assert (= (and b!5578640 c!976708) b!5578637))

(assert (= (and b!5578640 (not c!976708)) b!5578638))

(assert (= (and b!5578638 c!976710) b!5578635))

(assert (= (and b!5578638 (not c!976710)) b!5578639))

(assert (= (and b!5578639 c!976709) b!5578634))

(assert (= (and b!5578639 (not c!976709)) b!5578636))

(assert (= (or b!5578635 b!5578634) bm!417086))

(assert (= (or b!5578635 b!5578634) bm!417088))

(assert (= (or b!5578637 bm!417086) bm!417084))

(assert (= (or b!5578637 bm!417088) bm!417085))

(assert (= (or b!5578633 bm!417085) bm!417083))

(assert (= (or b!5578633 b!5578637) bm!417087))

(declare-fun m!6561252 () Bool)

(assert (=> bm!417083 m!6561252))

(assert (=> b!5578642 m!6561244))

(declare-fun m!6561254 () Bool)

(assert (=> bm!417087 m!6561254))

(declare-fun m!6561256 () Bool)

(assert (=> bm!417084 m!6561256))

(declare-fun m!6561258 () Bool)

(assert (=> b!5578641 m!6561258))

(assert (=> b!5578259 d!1763670))

(declare-fun c!976713 () Bool)

(declare-fun call!417099 () (Set Context!9888))

(declare-fun call!417098 () List!62980)

(declare-fun c!976715 () Bool)

(declare-fun bm!417089 () Bool)

(declare-fun c!976711 () Bool)

(assert (=> bm!417089 (= call!417099 (derivationStepZipperDown!902 (ite c!976711 (regTwo!31633 (regOne!31633 (regOne!31632 r!7292))) (ite c!976713 (regTwo!31632 (regOne!31633 (regOne!31632 r!7292))) (ite c!976715 (regOne!31632 (regOne!31633 (regOne!31632 r!7292))) (reg!15889 (regOne!31633 (regOne!31632 r!7292)))))) (ite (or c!976711 c!976713) lt!2253050 (Context!9889 call!417098)) (h!69303 s!2326)))))

(declare-fun b!5578644 () Bool)

(declare-fun e!3442369 () (Set Context!9888))

(declare-fun call!417094 () (Set Context!9888))

(assert (=> b!5578644 (= e!3442369 (set.union call!417094 call!417099))))

(declare-fun bm!417090 () Bool)

(declare-fun call!417096 () List!62980)

(assert (=> bm!417090 (= call!417096 ($colon$colon!1625 (exprs!5444 lt!2253050) (ite (or c!976713 c!976715) (regTwo!31632 (regOne!31633 (regOne!31632 r!7292))) (regOne!31633 (regOne!31632 r!7292)))))))

(declare-fun b!5578645 () Bool)

(declare-fun e!3442366 () (Set Context!9888))

(declare-fun call!417097 () (Set Context!9888))

(assert (=> b!5578645 (= e!3442366 call!417097)))

(declare-fun b!5578646 () Bool)

(declare-fun e!3442368 () (Set Context!9888))

(assert (=> b!5578646 (= e!3442368 call!417097)))

(declare-fun bm!417091 () Bool)

(declare-fun call!417095 () (Set Context!9888))

(assert (=> bm!417091 (= call!417095 call!417099)))

(declare-fun b!5578647 () Bool)

(assert (=> b!5578647 (= e!3442366 (as set.empty (Set Context!9888)))))

(declare-fun b!5578648 () Bool)

(declare-fun e!3442364 () (Set Context!9888))

(assert (=> b!5578648 (= e!3442364 (set.union call!417094 call!417095))))

(declare-fun bm!417092 () Bool)

(assert (=> bm!417092 (= call!417098 call!417096)))

(declare-fun b!5578649 () Bool)

(assert (=> b!5578649 (= e!3442364 e!3442368)))

(assert (=> b!5578649 (= c!976715 (is-Concat!24405 (regOne!31633 (regOne!31632 r!7292))))))

(declare-fun b!5578650 () Bool)

(declare-fun c!976714 () Bool)

(assert (=> b!5578650 (= c!976714 (is-Star!15560 (regOne!31633 (regOne!31632 r!7292))))))

(assert (=> b!5578650 (= e!3442368 e!3442366)))

(declare-fun b!5578651 () Bool)

(declare-fun e!3442365 () Bool)

(assert (=> b!5578651 (= c!976713 e!3442365)))

(declare-fun res!2367657 () Bool)

(assert (=> b!5578651 (=> (not res!2367657) (not e!3442365))))

(assert (=> b!5578651 (= res!2367657 (is-Concat!24405 (regOne!31633 (regOne!31632 r!7292))))))

(assert (=> b!5578651 (= e!3442369 e!3442364)))

(declare-fun d!1763672 () Bool)

(declare-fun c!976712 () Bool)

(assert (=> d!1763672 (= c!976712 (and (is-ElementMatch!15560 (regOne!31633 (regOne!31632 r!7292))) (= (c!976609 (regOne!31633 (regOne!31632 r!7292))) (h!69303 s!2326))))))

(declare-fun e!3442367 () (Set Context!9888))

(assert (=> d!1763672 (= (derivationStepZipperDown!902 (regOne!31633 (regOne!31632 r!7292)) lt!2253050 (h!69303 s!2326)) e!3442367)))

(declare-fun b!5578643 () Bool)

(assert (=> b!5578643 (= e!3442367 e!3442369)))

(assert (=> b!5578643 (= c!976711 (is-Union!15560 (regOne!31633 (regOne!31632 r!7292))))))

(declare-fun b!5578652 () Bool)

(assert (=> b!5578652 (= e!3442365 (nullable!5592 (regOne!31632 (regOne!31633 (regOne!31632 r!7292)))))))

(declare-fun bm!417093 () Bool)

(assert (=> bm!417093 (= call!417094 (derivationStepZipperDown!902 (ite c!976711 (regOne!31633 (regOne!31633 (regOne!31632 r!7292))) (regOne!31632 (regOne!31633 (regOne!31632 r!7292)))) (ite c!976711 lt!2253050 (Context!9889 call!417096)) (h!69303 s!2326)))))

(declare-fun b!5578653 () Bool)

(assert (=> b!5578653 (= e!3442367 (set.insert lt!2253050 (as set.empty (Set Context!9888))))))

(declare-fun bm!417094 () Bool)

(assert (=> bm!417094 (= call!417097 call!417095)))

(assert (= (and d!1763672 c!976712) b!5578653))

(assert (= (and d!1763672 (not c!976712)) b!5578643))

(assert (= (and b!5578643 c!976711) b!5578644))

(assert (= (and b!5578643 (not c!976711)) b!5578651))

(assert (= (and b!5578651 res!2367657) b!5578652))

(assert (= (and b!5578651 c!976713) b!5578648))

(assert (= (and b!5578651 (not c!976713)) b!5578649))

(assert (= (and b!5578649 c!976715) b!5578646))

(assert (= (and b!5578649 (not c!976715)) b!5578650))

(assert (= (and b!5578650 c!976714) b!5578645))

(assert (= (and b!5578650 (not c!976714)) b!5578647))

(assert (= (or b!5578646 b!5578645) bm!417092))

(assert (= (or b!5578646 b!5578645) bm!417094))

(assert (= (or b!5578648 bm!417092) bm!417090))

(assert (= (or b!5578648 bm!417094) bm!417091))

(assert (= (or b!5578644 bm!417091) bm!417089))

(assert (= (or b!5578644 b!5578648) bm!417093))

(declare-fun m!6561260 () Bool)

(assert (=> bm!417089 m!6561260))

(assert (=> b!5578653 m!6561244))

(declare-fun m!6561262 () Bool)

(assert (=> bm!417093 m!6561262))

(declare-fun m!6561264 () Bool)

(assert (=> bm!417090 m!6561264))

(declare-fun m!6561266 () Bool)

(assert (=> b!5578652 m!6561266))

(assert (=> b!5578259 d!1763672))

(declare-fun d!1763674 () Bool)

(declare-fun choose!42268 (Int) Bool)

(assert (=> d!1763674 (= (Exists!2660 lambda!299073) (choose!42268 lambda!299073))))

(declare-fun bs!1290756 () Bool)

(assert (= bs!1290756 d!1763674))

(declare-fun m!6561268 () Bool)

(assert (=> bs!1290756 m!6561268))

(assert (=> b!5578258 d!1763674))

(declare-fun bs!1290757 () Bool)

(declare-fun d!1763676 () Bool)

(assert (= bs!1290757 (and d!1763676 b!5578258)))

(declare-fun lambda!299110 () Int)

(assert (=> bs!1290757 (= lambda!299110 lambda!299073)))

(assert (=> bs!1290757 (not (= lambda!299110 lambda!299074))))

(declare-fun bs!1290758 () Bool)

(assert (= bs!1290758 (and d!1763676 b!5578524)))

(assert (=> bs!1290758 (not (= lambda!299110 lambda!299106))))

(declare-fun bs!1290759 () Bool)

(assert (= bs!1290759 (and d!1763676 b!5578530)))

(assert (=> bs!1290759 (not (= lambda!299110 lambda!299107))))

(assert (=> d!1763676 true))

(assert (=> d!1763676 true))

(assert (=> d!1763676 true))

(assert (=> d!1763676 (= (isDefined!12272 (findConcatSeparation!1983 (regOne!31632 r!7292) (regTwo!31632 r!7292) Nil!62855 s!2326 s!2326)) (Exists!2660 lambda!299110))))

(declare-fun lt!2253155 () Unit!155612)

(declare-fun choose!42269 (Regex!15560 Regex!15560 List!62979) Unit!155612)

(assert (=> d!1763676 (= lt!2253155 (choose!42269 (regOne!31632 r!7292) (regTwo!31632 r!7292) s!2326))))

(assert (=> d!1763676 (validRegex!7296 (regOne!31632 r!7292))))

(assert (=> d!1763676 (= (lemmaFindConcatSeparationEquivalentToExists!1747 (regOne!31632 r!7292) (regTwo!31632 r!7292) s!2326) lt!2253155)))

(declare-fun bs!1290760 () Bool)

(assert (= bs!1290760 d!1763676))

(assert (=> bs!1290760 m!6560974))

(assert (=> bs!1290760 m!6560976))

(declare-fun m!6561270 () Bool)

(assert (=> bs!1290760 m!6561270))

(declare-fun m!6561272 () Bool)

(assert (=> bs!1290760 m!6561272))

(declare-fun m!6561274 () Bool)

(assert (=> bs!1290760 m!6561274))

(assert (=> bs!1290760 m!6560974))

(assert (=> b!5578258 d!1763676))

(declare-fun d!1763678 () Bool)

(declare-fun e!3442384 () Bool)

(assert (=> d!1763678 e!3442384))

(declare-fun res!2367676 () Bool)

(assert (=> d!1763678 (=> res!2367676 e!3442384)))

(declare-fun e!3442385 () Bool)

(assert (=> d!1763678 (= res!2367676 e!3442385)))

(declare-fun res!2367674 () Bool)

(assert (=> d!1763678 (=> (not res!2367674) (not e!3442385))))

(declare-fun lt!2253162 () Option!15569)

(assert (=> d!1763678 (= res!2367674 (isDefined!12272 lt!2253162))))

(declare-fun e!3442383 () Option!15569)

(assert (=> d!1763678 (= lt!2253162 e!3442383)))

(declare-fun c!976720 () Bool)

(declare-fun e!3442382 () Bool)

(assert (=> d!1763678 (= c!976720 e!3442382)))

(declare-fun res!2367673 () Bool)

(assert (=> d!1763678 (=> (not res!2367673) (not e!3442382))))

(assert (=> d!1763678 (= res!2367673 (matchR!7745 (regOne!31632 r!7292) Nil!62855))))

(assert (=> d!1763678 (validRegex!7296 (regOne!31632 r!7292))))

(assert (=> d!1763678 (= (findConcatSeparation!1983 (regOne!31632 r!7292) (regTwo!31632 r!7292) Nil!62855 s!2326 s!2326) lt!2253162)))

(declare-fun b!5578676 () Bool)

(declare-fun res!2367675 () Bool)

(assert (=> b!5578676 (=> (not res!2367675) (not e!3442385))))

(declare-fun get!21640 (Option!15569) tuple2!65314)

(assert (=> b!5578676 (= res!2367675 (matchR!7745 (regTwo!31632 r!7292) (_2!35960 (get!21640 lt!2253162))))))

(declare-fun b!5578677 () Bool)

(assert (=> b!5578677 (= e!3442383 (Some!15568 (tuple2!65315 Nil!62855 s!2326)))))

(declare-fun b!5578678 () Bool)

(declare-fun e!3442386 () Option!15569)

(assert (=> b!5578678 (= e!3442386 None!15568)))

(declare-fun b!5578679 () Bool)

(assert (=> b!5578679 (= e!3442382 (matchR!7745 (regTwo!31632 r!7292) s!2326))))

(declare-fun b!5578680 () Bool)

(declare-fun lt!2253163 () Unit!155612)

(declare-fun lt!2253164 () Unit!155612)

(assert (=> b!5578680 (= lt!2253163 lt!2253164)))

(declare-fun ++!13792 (List!62979 List!62979) List!62979)

(assert (=> b!5578680 (= (++!13792 (++!13792 Nil!62855 (Cons!62855 (h!69303 s!2326) Nil!62855)) (t!376250 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1961 (List!62979 C!31390 List!62979 List!62979) Unit!155612)

(assert (=> b!5578680 (= lt!2253164 (lemmaMoveElementToOtherListKeepsConcatEq!1961 Nil!62855 (h!69303 s!2326) (t!376250 s!2326) s!2326))))

(assert (=> b!5578680 (= e!3442386 (findConcatSeparation!1983 (regOne!31632 r!7292) (regTwo!31632 r!7292) (++!13792 Nil!62855 (Cons!62855 (h!69303 s!2326) Nil!62855)) (t!376250 s!2326) s!2326))))

(declare-fun b!5578681 () Bool)

(assert (=> b!5578681 (= e!3442385 (= (++!13792 (_1!35960 (get!21640 lt!2253162)) (_2!35960 (get!21640 lt!2253162))) s!2326))))

(declare-fun b!5578682 () Bool)

(assert (=> b!5578682 (= e!3442384 (not (isDefined!12272 lt!2253162)))))

(declare-fun b!5578683 () Bool)

(assert (=> b!5578683 (= e!3442383 e!3442386)))

(declare-fun c!976721 () Bool)

(assert (=> b!5578683 (= c!976721 (is-Nil!62855 s!2326))))

(declare-fun b!5578684 () Bool)

(declare-fun res!2367672 () Bool)

(assert (=> b!5578684 (=> (not res!2367672) (not e!3442385))))

(assert (=> b!5578684 (= res!2367672 (matchR!7745 (regOne!31632 r!7292) (_1!35960 (get!21640 lt!2253162))))))

(assert (= (and d!1763678 res!2367673) b!5578679))

(assert (= (and d!1763678 c!976720) b!5578677))

(assert (= (and d!1763678 (not c!976720)) b!5578683))

(assert (= (and b!5578683 c!976721) b!5578678))

(assert (= (and b!5578683 (not c!976721)) b!5578680))

(assert (= (and d!1763678 res!2367674) b!5578684))

(assert (= (and b!5578684 res!2367672) b!5578676))

(assert (= (and b!5578676 res!2367675) b!5578681))

(assert (= (and d!1763678 (not res!2367676)) b!5578682))

(declare-fun m!6561276 () Bool)

(assert (=> b!5578682 m!6561276))

(declare-fun m!6561278 () Bool)

(assert (=> b!5578684 m!6561278))

(declare-fun m!6561280 () Bool)

(assert (=> b!5578684 m!6561280))

(assert (=> b!5578676 m!6561278))

(declare-fun m!6561282 () Bool)

(assert (=> b!5578676 m!6561282))

(assert (=> d!1763678 m!6561276))

(declare-fun m!6561284 () Bool)

(assert (=> d!1763678 m!6561284))

(assert (=> d!1763678 m!6561272))

(assert (=> b!5578681 m!6561278))

(declare-fun m!6561286 () Bool)

(assert (=> b!5578681 m!6561286))

(declare-fun m!6561288 () Bool)

(assert (=> b!5578680 m!6561288))

(assert (=> b!5578680 m!6561288))

(declare-fun m!6561290 () Bool)

(assert (=> b!5578680 m!6561290))

(declare-fun m!6561292 () Bool)

(assert (=> b!5578680 m!6561292))

(assert (=> b!5578680 m!6561288))

(declare-fun m!6561294 () Bool)

(assert (=> b!5578680 m!6561294))

(declare-fun m!6561296 () Bool)

(assert (=> b!5578679 m!6561296))

(assert (=> b!5578258 d!1763678))

(declare-fun d!1763680 () Bool)

(assert (=> d!1763680 (= (Exists!2660 lambda!299074) (choose!42268 lambda!299074))))

(declare-fun bs!1290761 () Bool)

(assert (= bs!1290761 d!1763680))

(declare-fun m!6561298 () Bool)

(assert (=> bs!1290761 m!6561298))

(assert (=> b!5578258 d!1763680))

(declare-fun bs!1290762 () Bool)

(declare-fun d!1763682 () Bool)

(assert (= bs!1290762 (and d!1763682 d!1763676)))

(declare-fun lambda!299115 () Int)

(assert (=> bs!1290762 (= lambda!299115 lambda!299110)))

(declare-fun bs!1290763 () Bool)

(assert (= bs!1290763 (and d!1763682 b!5578530)))

(assert (=> bs!1290763 (not (= lambda!299115 lambda!299107))))

(declare-fun bs!1290764 () Bool)

(assert (= bs!1290764 (and d!1763682 b!5578258)))

(assert (=> bs!1290764 (not (= lambda!299115 lambda!299074))))

(assert (=> bs!1290764 (= lambda!299115 lambda!299073)))

(declare-fun bs!1290765 () Bool)

(assert (= bs!1290765 (and d!1763682 b!5578524)))

(assert (=> bs!1290765 (not (= lambda!299115 lambda!299106))))

(assert (=> d!1763682 true))

(assert (=> d!1763682 true))

(assert (=> d!1763682 true))

(declare-fun lambda!299116 () Int)

(assert (=> bs!1290762 (not (= lambda!299116 lambda!299110))))

(assert (=> bs!1290763 (= lambda!299116 lambda!299107)))

(assert (=> bs!1290764 (= lambda!299116 lambda!299074)))

(assert (=> bs!1290764 (not (= lambda!299116 lambda!299073))))

(assert (=> bs!1290765 (not (= lambda!299116 lambda!299106))))

(declare-fun bs!1290766 () Bool)

(assert (= bs!1290766 d!1763682))

(assert (=> bs!1290766 (not (= lambda!299116 lambda!299115))))

(assert (=> d!1763682 true))

(assert (=> d!1763682 true))

(assert (=> d!1763682 true))

(assert (=> d!1763682 (= (Exists!2660 lambda!299115) (Exists!2660 lambda!299116))))

(declare-fun lt!2253167 () Unit!155612)

(declare-fun choose!42270 (Regex!15560 Regex!15560 List!62979) Unit!155612)

(assert (=> d!1763682 (= lt!2253167 (choose!42270 (regOne!31632 r!7292) (regTwo!31632 r!7292) s!2326))))

(assert (=> d!1763682 (validRegex!7296 (regOne!31632 r!7292))))

(assert (=> d!1763682 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1289 (regOne!31632 r!7292) (regTwo!31632 r!7292) s!2326) lt!2253167)))

(declare-fun m!6561300 () Bool)

(assert (=> bs!1290766 m!6561300))

(declare-fun m!6561302 () Bool)

(assert (=> bs!1290766 m!6561302))

(declare-fun m!6561304 () Bool)

(assert (=> bs!1290766 m!6561304))

(assert (=> bs!1290766 m!6561272))

(assert (=> b!5578258 d!1763682))

(declare-fun d!1763684 () Bool)

(declare-fun isEmpty!34666 (Option!15569) Bool)

(assert (=> d!1763684 (= (isDefined!12272 (findConcatSeparation!1983 (regOne!31632 r!7292) (regTwo!31632 r!7292) Nil!62855 s!2326 s!2326)) (not (isEmpty!34666 (findConcatSeparation!1983 (regOne!31632 r!7292) (regTwo!31632 r!7292) Nil!62855 s!2326 s!2326))))))

(declare-fun bs!1290767 () Bool)

(assert (= bs!1290767 d!1763684))

(assert (=> bs!1290767 m!6560974))

(declare-fun m!6561306 () Bool)

(assert (=> bs!1290767 m!6561306))

(assert (=> b!5578258 d!1763684))

(declare-fun d!1763686 () Bool)

(assert (=> d!1763686 (= (nullable!5592 (regOne!31633 (regOne!31632 r!7292))) (nullableFct!1704 (regOne!31633 (regOne!31632 r!7292))))))

(declare-fun bs!1290768 () Bool)

(assert (= bs!1290768 d!1763686))

(declare-fun m!6561308 () Bool)

(assert (=> bs!1290768 m!6561308))

(assert (=> b!5578237 d!1763686))

(declare-fun d!1763688 () Bool)

(assert (=> d!1763688 (= (flatMap!1173 lt!2253051 lambda!299075) (choose!42266 lt!2253051 lambda!299075))))

(declare-fun bs!1290769 () Bool)

(assert (= bs!1290769 d!1763688))

(declare-fun m!6561310 () Bool)

(assert (=> bs!1290769 m!6561310))

(assert (=> b!5578237 d!1763688))

(declare-fun b!5578693 () Bool)

(declare-fun e!3442392 () (Set Context!9888))

(declare-fun call!417100 () (Set Context!9888))

(assert (=> b!5578693 (= e!3442392 call!417100)))

(declare-fun b!5578694 () Bool)

(assert (=> b!5578694 (= e!3442392 (as set.empty (Set Context!9888)))))

(declare-fun b!5578695 () Bool)

(declare-fun e!3442391 () (Set Context!9888))

(assert (=> b!5578695 (= e!3442391 e!3442392)))

(declare-fun c!976722 () Bool)

(assert (=> b!5578695 (= c!976722 (is-Cons!62856 (exprs!5444 lt!2253060)))))

(declare-fun d!1763690 () Bool)

(declare-fun c!976723 () Bool)

(declare-fun e!3442393 () Bool)

(assert (=> d!1763690 (= c!976723 e!3442393)))

(declare-fun res!2367685 () Bool)

(assert (=> d!1763690 (=> (not res!2367685) (not e!3442393))))

(assert (=> d!1763690 (= res!2367685 (is-Cons!62856 (exprs!5444 lt!2253060)))))

(assert (=> d!1763690 (= (derivationStepZipperUp!828 lt!2253060 (h!69303 s!2326)) e!3442391)))

(declare-fun bm!417095 () Bool)

(assert (=> bm!417095 (= call!417100 (derivationStepZipperDown!902 (h!69304 (exprs!5444 lt!2253060)) (Context!9889 (t!376251 (exprs!5444 lt!2253060))) (h!69303 s!2326)))))

(declare-fun b!5578696 () Bool)

(assert (=> b!5578696 (= e!3442393 (nullable!5592 (h!69304 (exprs!5444 lt!2253060))))))

(declare-fun b!5578697 () Bool)

(assert (=> b!5578697 (= e!3442391 (set.union call!417100 (derivationStepZipperUp!828 (Context!9889 (t!376251 (exprs!5444 lt!2253060))) (h!69303 s!2326))))))

(assert (= (and d!1763690 res!2367685) b!5578696))

(assert (= (and d!1763690 c!976723) b!5578697))

(assert (= (and d!1763690 (not c!976723)) b!5578695))

(assert (= (and b!5578695 c!976722) b!5578693))

(assert (= (and b!5578695 (not c!976722)) b!5578694))

(assert (= (or b!5578697 b!5578693) bm!417095))

(declare-fun m!6561312 () Bool)

(assert (=> bm!417095 m!6561312))

(declare-fun m!6561314 () Bool)

(assert (=> b!5578696 m!6561314))

(declare-fun m!6561316 () Bool)

(assert (=> b!5578697 m!6561316))

(assert (=> b!5578237 d!1763690))

(declare-fun d!1763692 () Bool)

(assert (=> d!1763692 (= (flatMap!1173 lt!2253051 lambda!299075) (dynLambda!24582 lambda!299075 lt!2253060))))

(declare-fun lt!2253168 () Unit!155612)

(assert (=> d!1763692 (= lt!2253168 (choose!42267 lt!2253051 lt!2253060 lambda!299075))))

(assert (=> d!1763692 (= lt!2253051 (set.insert lt!2253060 (as set.empty (Set Context!9888))))))

(assert (=> d!1763692 (= (lemmaFlatMapOnSingletonSet!705 lt!2253051 lt!2253060 lambda!299075) lt!2253168)))

(declare-fun b_lambda!211461 () Bool)

(assert (=> (not b_lambda!211461) (not d!1763692)))

(declare-fun bs!1290770 () Bool)

(assert (= bs!1290770 d!1763692))

(assert (=> bs!1290770 m!6560962))

(declare-fun m!6561318 () Bool)

(assert (=> bs!1290770 m!6561318))

(declare-fun m!6561320 () Bool)

(assert (=> bs!1290770 m!6561320))

(assert (=> bs!1290770 m!6560960))

(assert (=> b!5578237 d!1763692))

(declare-fun condSetEmpty!37122 () Bool)

(assert (=> setNonEmpty!37116 (= condSetEmpty!37122 (= setRest!37116 (as set.empty (Set Context!9888))))))

(declare-fun setRes!37122 () Bool)

(assert (=> setNonEmpty!37116 (= tp!1543681 setRes!37122)))

(declare-fun setIsEmpty!37122 () Bool)

(assert (=> setIsEmpty!37122 setRes!37122))

(declare-fun setNonEmpty!37122 () Bool)

(declare-fun e!3442396 () Bool)

(declare-fun tp!1543724 () Bool)

(declare-fun setElem!37122 () Context!9888)

(assert (=> setNonEmpty!37122 (= setRes!37122 (and tp!1543724 (inv!82148 setElem!37122) e!3442396))))

(declare-fun setRest!37122 () (Set Context!9888))

(assert (=> setNonEmpty!37122 (= setRest!37116 (set.union (set.insert setElem!37122 (as set.empty (Set Context!9888))) setRest!37122))))

(declare-fun b!5578702 () Bool)

(declare-fun tp!1543725 () Bool)

(assert (=> b!5578702 (= e!3442396 tp!1543725)))

(assert (= (and setNonEmpty!37116 condSetEmpty!37122) setIsEmpty!37122))

(assert (= (and setNonEmpty!37116 (not condSetEmpty!37122)) setNonEmpty!37122))

(assert (= setNonEmpty!37122 b!5578702))

(declare-fun m!6561322 () Bool)

(assert (=> setNonEmpty!37122 m!6561322))

(declare-fun b!5578707 () Bool)

(declare-fun e!3442399 () Bool)

(declare-fun tp!1543730 () Bool)

(declare-fun tp!1543731 () Bool)

(assert (=> b!5578707 (= e!3442399 (and tp!1543730 tp!1543731))))

(assert (=> b!5578241 (= tp!1543685 e!3442399)))

(assert (= (and b!5578241 (is-Cons!62856 (exprs!5444 setElem!37116))) b!5578707))

(declare-fun b!5578708 () Bool)

(declare-fun e!3442400 () Bool)

(declare-fun tp!1543732 () Bool)

(declare-fun tp!1543733 () Bool)

(assert (=> b!5578708 (= e!3442400 (and tp!1543732 tp!1543733))))

(assert (=> b!5578260 (= tp!1543680 e!3442400)))

(assert (= (and b!5578260 (is-Cons!62856 (exprs!5444 (h!69305 zl!343)))) b!5578708))

(declare-fun b!5578719 () Bool)

(declare-fun e!3442403 () Bool)

(assert (=> b!5578719 (= e!3442403 tp_is_empty!40373)))

(declare-fun b!5578722 () Bool)

(declare-fun tp!1543747 () Bool)

(declare-fun tp!1543744 () Bool)

(assert (=> b!5578722 (= e!3442403 (and tp!1543747 tp!1543744))))

(declare-fun b!5578721 () Bool)

(declare-fun tp!1543745 () Bool)

(assert (=> b!5578721 (= e!3442403 tp!1543745)))

(assert (=> b!5578244 (= tp!1543682 e!3442403)))

(declare-fun b!5578720 () Bool)

(declare-fun tp!1543748 () Bool)

(declare-fun tp!1543746 () Bool)

(assert (=> b!5578720 (= e!3442403 (and tp!1543748 tp!1543746))))

(assert (= (and b!5578244 (is-ElementMatch!15560 (regOne!31632 r!7292))) b!5578719))

(assert (= (and b!5578244 (is-Concat!24405 (regOne!31632 r!7292))) b!5578720))

(assert (= (and b!5578244 (is-Star!15560 (regOne!31632 r!7292))) b!5578721))

(assert (= (and b!5578244 (is-Union!15560 (regOne!31632 r!7292))) b!5578722))

(declare-fun b!5578723 () Bool)

(declare-fun e!3442404 () Bool)

(assert (=> b!5578723 (= e!3442404 tp_is_empty!40373)))

(declare-fun b!5578726 () Bool)

(declare-fun tp!1543752 () Bool)

(declare-fun tp!1543749 () Bool)

(assert (=> b!5578726 (= e!3442404 (and tp!1543752 tp!1543749))))

(declare-fun b!5578725 () Bool)

(declare-fun tp!1543750 () Bool)

(assert (=> b!5578725 (= e!3442404 tp!1543750)))

(assert (=> b!5578244 (= tp!1543686 e!3442404)))

(declare-fun b!5578724 () Bool)

(declare-fun tp!1543753 () Bool)

(declare-fun tp!1543751 () Bool)

(assert (=> b!5578724 (= e!3442404 (and tp!1543753 tp!1543751))))

(assert (= (and b!5578244 (is-ElementMatch!15560 (regTwo!31632 r!7292))) b!5578723))

(assert (= (and b!5578244 (is-Concat!24405 (regTwo!31632 r!7292))) b!5578724))

(assert (= (and b!5578244 (is-Star!15560 (regTwo!31632 r!7292))) b!5578725))

(assert (= (and b!5578244 (is-Union!15560 (regTwo!31632 r!7292))) b!5578726))

(declare-fun b!5578734 () Bool)

(declare-fun e!3442410 () Bool)

(declare-fun tp!1543758 () Bool)

(assert (=> b!5578734 (= e!3442410 tp!1543758)))

(declare-fun b!5578733 () Bool)

(declare-fun e!3442409 () Bool)

(declare-fun tp!1543759 () Bool)

(assert (=> b!5578733 (= e!3442409 (and (inv!82148 (h!69305 (t!376252 zl!343))) e!3442410 tp!1543759))))

(assert (=> b!5578254 (= tp!1543687 e!3442409)))

(assert (= b!5578733 b!5578734))

(assert (= (and b!5578254 (is-Cons!62857 (t!376252 zl!343))) b!5578733))

(declare-fun m!6561324 () Bool)

(assert (=> b!5578733 m!6561324))

(declare-fun b!5578735 () Bool)

(declare-fun e!3442411 () Bool)

(assert (=> b!5578735 (= e!3442411 tp_is_empty!40373)))

(declare-fun b!5578738 () Bool)

(declare-fun tp!1543763 () Bool)

(declare-fun tp!1543760 () Bool)

(assert (=> b!5578738 (= e!3442411 (and tp!1543763 tp!1543760))))

(declare-fun b!5578737 () Bool)

(declare-fun tp!1543761 () Bool)

(assert (=> b!5578737 (= e!3442411 tp!1543761)))

(assert (=> b!5578242 (= tp!1543684 e!3442411)))

(declare-fun b!5578736 () Bool)

(declare-fun tp!1543764 () Bool)

(declare-fun tp!1543762 () Bool)

(assert (=> b!5578736 (= e!3442411 (and tp!1543764 tp!1543762))))

(assert (= (and b!5578242 (is-ElementMatch!15560 (reg!15889 r!7292))) b!5578735))

(assert (= (and b!5578242 (is-Concat!24405 (reg!15889 r!7292))) b!5578736))

(assert (= (and b!5578242 (is-Star!15560 (reg!15889 r!7292))) b!5578737))

(assert (= (and b!5578242 (is-Union!15560 (reg!15889 r!7292))) b!5578738))

(declare-fun b!5578743 () Bool)

(declare-fun e!3442414 () Bool)

(declare-fun tp!1543767 () Bool)

(assert (=> b!5578743 (= e!3442414 (and tp_is_empty!40373 tp!1543767))))

(assert (=> b!5578252 (= tp!1543689 e!3442414)))

(assert (= (and b!5578252 (is-Cons!62855 (t!376250 s!2326))) b!5578743))

(declare-fun b!5578744 () Bool)

(declare-fun e!3442415 () Bool)

(assert (=> b!5578744 (= e!3442415 tp_is_empty!40373)))

(declare-fun b!5578747 () Bool)

(declare-fun tp!1543771 () Bool)

(declare-fun tp!1543768 () Bool)

(assert (=> b!5578747 (= e!3442415 (and tp!1543771 tp!1543768))))

(declare-fun b!5578746 () Bool)

(declare-fun tp!1543769 () Bool)

(assert (=> b!5578746 (= e!3442415 tp!1543769)))

(assert (=> b!5578262 (= tp!1543688 e!3442415)))

(declare-fun b!5578745 () Bool)

(declare-fun tp!1543772 () Bool)

(declare-fun tp!1543770 () Bool)

(assert (=> b!5578745 (= e!3442415 (and tp!1543772 tp!1543770))))

(assert (= (and b!5578262 (is-ElementMatch!15560 (regOne!31633 r!7292))) b!5578744))

(assert (= (and b!5578262 (is-Concat!24405 (regOne!31633 r!7292))) b!5578745))

(assert (= (and b!5578262 (is-Star!15560 (regOne!31633 r!7292))) b!5578746))

(assert (= (and b!5578262 (is-Union!15560 (regOne!31633 r!7292))) b!5578747))

(declare-fun b!5578748 () Bool)

(declare-fun e!3442416 () Bool)

(assert (=> b!5578748 (= e!3442416 tp_is_empty!40373)))

(declare-fun b!5578751 () Bool)

(declare-fun tp!1543776 () Bool)

(declare-fun tp!1543773 () Bool)

(assert (=> b!5578751 (= e!3442416 (and tp!1543776 tp!1543773))))

(declare-fun b!5578750 () Bool)

(declare-fun tp!1543774 () Bool)

(assert (=> b!5578750 (= e!3442416 tp!1543774)))

(assert (=> b!5578262 (= tp!1543683 e!3442416)))

(declare-fun b!5578749 () Bool)

(declare-fun tp!1543777 () Bool)

(declare-fun tp!1543775 () Bool)

(assert (=> b!5578749 (= e!3442416 (and tp!1543777 tp!1543775))))

(assert (= (and b!5578262 (is-ElementMatch!15560 (regTwo!31633 r!7292))) b!5578748))

(assert (= (and b!5578262 (is-Concat!24405 (regTwo!31633 r!7292))) b!5578749))

(assert (= (and b!5578262 (is-Star!15560 (regTwo!31633 r!7292))) b!5578750))

(assert (= (and b!5578262 (is-Union!15560 (regTwo!31633 r!7292))) b!5578751))

(declare-fun b_lambda!211463 () Bool)

(assert (= b_lambda!211459 (or b!5578248 b_lambda!211463)))

(declare-fun bs!1290771 () Bool)

(declare-fun d!1763694 () Bool)

(assert (= bs!1290771 (and d!1763694 b!5578248)))

(assert (=> bs!1290771 (= (dynLambda!24582 lambda!299075 (h!69305 zl!343)) (derivationStepZipperUp!828 (h!69305 zl!343) (h!69303 s!2326)))))

(assert (=> bs!1290771 m!6560990))

(assert (=> d!1763666 d!1763694))

(declare-fun b_lambda!211465 () Bool)

(assert (= b_lambda!211461 (or b!5578248 b_lambda!211465)))

(declare-fun bs!1290772 () Bool)

(declare-fun d!1763696 () Bool)

(assert (= bs!1290772 (and d!1763696 b!5578248)))

(assert (=> bs!1290772 (= (dynLambda!24582 lambda!299075 lt!2253060) (derivationStepZipperUp!828 lt!2253060 (h!69303 s!2326)))))

(assert (=> bs!1290772 m!6560958))

(assert (=> d!1763692 d!1763696))

(push 1)

(assert (not b!5578746))

(assert (not b!5578722))

(assert (not d!1763650))

(assert (not b!5578682))

(assert (not b!5578587))

(assert (not b!5578725))

(assert (not d!1763614))

(assert (not setNonEmpty!37122))

(assert (not bm!417063))

(assert (not b!5578481))

(assert (not d!1763684))

(assert (not b!5578597))

(assert (not b!5578428))

(assert (not b!5578676))

(assert (not b!5578747))

(assert (not b!5578483))

(assert (not b!5578734))

(assert (not d!1763620))

(assert (not b!5578560))

(assert (not b!5578707))

(assert (not d!1763682))

(assert (not b!5578630))

(assert (not b!5578726))

(assert (not d!1763624))

(assert (not b!5578750))

(assert (not b!5578720))

(assert (not bm!417084))

(assert (not d!1763686))

(assert (not b!5578702))

(assert (not d!1763638))

(assert (not b!5578387))

(assert (not bm!417095))

(assert (not b!5578385))

(assert (not b!5578453))

(assert (not b_lambda!211465))

(assert (not b!5578379))

(assert (not b!5578420))

(assert (not d!1763678))

(assert (not d!1763674))

(assert (not b!5578416))

(assert (not bm!417064))

(assert (not d!1763692))

(assert (not d!1763616))

(assert (not b!5578487))

(assert (not bm!417062))

(assert (not b!5578708))

(assert (not b!5578388))

(assert (not bm!417077))

(assert (not d!1763636))

(assert (not bm!417087))

(assert tp_is_empty!40373)

(assert (not b!5578736))

(assert (not bm!417049))

(assert (not b!5578423))

(assert (not b!5578745))

(assert (not b!5578480))

(assert (not b!5578738))

(assert (not d!1763646))

(assert (not d!1763628))

(assert (not bm!417081))

(assert (not d!1763622))

(assert (not d!1763666))

(assert (not d!1763642))

(assert (not b!5578382))

(assert (not b!5578527))

(assert (not d!1763680))

(assert (not b!5578390))

(assert (not d!1763662))

(assert (not bm!417055))

(assert (not b!5578393))

(assert (not b!5578417))

(assert (not b!5578743))

(assert (not b!5578380))

(assert (not b!5578418))

(assert (not b!5578724))

(assert (not bm!417090))

(assert (not b!5578679))

(assert (not b!5578377))

(assert (not b!5578697))

(assert (not bm!417089))

(assert (not b!5578566))

(assert (not b!5578479))

(assert (not d!1763648))

(assert (not bm!417059))

(assert (not b!5578681))

(assert (not bm!417050))

(assert (not b!5578486))

(assert (not b!5578721))

(assert (not b!5578593))

(assert (not b!5578378))

(assert (not b!5578588))

(assert (not b!5578563))

(assert (not b!5578389))

(assert (not b!5578386))

(assert (not b!5578525))

(assert (not bs!1290771))

(assert (not b!5578751))

(assert (not b!5578431))

(assert (not b!5578430))

(assert (not bm!417083))

(assert (not d!1763676))

(assert (not b!5578419))

(assert (not b!5578684))

(assert (not b!5578652))

(assert (not b!5578568))

(assert (not b!5578696))

(assert (not d!1763634))

(assert (not b_lambda!211463))

(assert (not b!5578570))

(assert (not b!5578598))

(assert (not bs!1290772))

(assert (not bm!417078))

(assert (not b!5578381))

(assert (not b!5578749))

(assert (not b!5578680))

(assert (not d!1763626))

(assert (not b!5578561))

(assert (not bm!417056))

(assert (not b!5578422))

(assert (not d!1763658))

(assert (not bm!417093))

(assert (not d!1763688))

(assert (not d!1763632))

(assert (not d!1763630))

(assert (not b!5578641))

(assert (not b!5578737))

(assert (not b!5578488))

(assert (not b!5578733))

(assert (not d!1763618))

(assert (not b!5578592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

