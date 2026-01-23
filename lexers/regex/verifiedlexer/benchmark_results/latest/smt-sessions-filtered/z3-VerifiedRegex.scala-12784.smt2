; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707068 () Bool)

(assert start!707068)

(declare-fun b!7258236 () Bool)

(assert (=> b!7258236 true))

(declare-fun b!7258233 () Bool)

(assert (=> b!7258233 true))

(declare-fun bs!1908103 () Bool)

(assert (= bs!1908103 (and b!7258233 b!7258236)))

(declare-fun lambda!445841 () Int)

(declare-datatypes ((C!37628 0))(
  ( (C!37629 (val!28762 Int)) )
))
(declare-datatypes ((List!70611 0))(
  ( (Nil!70487) (Cons!70487 (h!76935 C!37628) (t!384675 List!70611)) )
))
(declare-fun s1!1971 () List!70611)

(declare-fun lambda!445843 () Int)

(declare-fun lt!2589116 () List!70611)

(assert (=> bs!1908103 (= (= lt!2589116 (t!384675 s1!1971)) (= lambda!445843 lambda!445841))))

(assert (=> b!7258233 true))

(declare-fun b!7258223 () Bool)

(declare-datatypes ((Unit!163976 0))(
  ( (Unit!163977) )
))
(declare-fun e!4352296 () Unit!163976)

(declare-fun Unit!163978 () Unit!163976)

(assert (=> b!7258223 (= e!4352296 Unit!163978)))

(declare-fun b!7258224 () Bool)

(declare-fun e!4352292 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18677 0))(
  ( (ElementMatch!18677 (c!1349919 C!37628)) (Concat!27522 (regOne!37866 Regex!18677) (regTwo!37866 Regex!18677)) (EmptyExpr!18677) (Star!18677 (reg!19006 Regex!18677)) (EmptyLang!18677) (Union!18677 (regOne!37867 Regex!18677) (regTwo!37867 Regex!18677)) )
))
(declare-datatypes ((List!70612 0))(
  ( (Nil!70488) (Cons!70488 (h!76936 Regex!18677) (t!384676 List!70612)) )
))
(declare-datatypes ((Context!15234 0))(
  ( (Context!15235 (exprs!8117 List!70612)) )
))
(declare-fun lt!2589105 () (InoxSet Context!15234))

(declare-fun matchZipper!3587 ((InoxSet Context!15234) List!70611) Bool)

(assert (=> b!7258224 (= e!4352292 (matchZipper!3587 lt!2589105 lt!2589116))))

(declare-fun b!7258225 () Bool)

(declare-fun e!4352290 () Bool)

(declare-fun lt!2589089 () (InoxSet Context!15234))

(assert (=> b!7258225 (= e!4352290 (matchZipper!3587 lt!2589089 (t!384675 s1!1971)))))

(declare-fun b!7258226 () Bool)

(declare-fun e!4352291 () Bool)

(declare-fun tp!2038479 () Bool)

(assert (=> b!7258226 (= e!4352291 tp!2038479)))

(declare-fun b!7258227 () Bool)

(declare-fun e!4352288 () Bool)

(declare-fun tp_is_empty!46819 () Bool)

(declare-fun tp!2038482 () Bool)

(assert (=> b!7258227 (= e!4352288 (and tp_is_empty!46819 tp!2038482))))

(declare-fun b!7258228 () Bool)

(declare-fun Unit!163979 () Unit!163976)

(assert (=> b!7258228 (= e!4352296 Unit!163979)))

(declare-fun ct1!232 () Context!15234)

(declare-fun lt!2589094 () Unit!163976)

(declare-fun lambda!445840 () Int)

(declare-fun ct2!328 () Context!15234)

(declare-fun lemmaConcatPreservesForall!1484 (List!70612 List!70612 Int) Unit!163976)

(assert (=> b!7258228 (= lt!2589094 (lemmaConcatPreservesForall!1484 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445840))))

(declare-fun lt!2589104 () Context!15234)

(declare-fun derivationStepZipperUp!2501 (Context!15234 C!37628) (InoxSet Context!15234))

(assert (=> b!7258228 (= lt!2589089 (derivationStepZipperUp!2501 lt!2589104 (h!76935 s1!1971)))))

(declare-fun lt!2589083 () (InoxSet Context!15234))

(declare-fun lt!2589082 () Unit!163976)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1732 ((InoxSet Context!15234) (InoxSet Context!15234) List!70611) Unit!163976)

(assert (=> b!7258228 (= lt!2589082 (lemmaZipperConcatMatchesSameAsBothZippers!1732 lt!2589083 lt!2589089 (t!384675 s1!1971)))))

(declare-fun res!2943220 () Bool)

(assert (=> b!7258228 (= res!2943220 (matchZipper!3587 lt!2589083 (t!384675 s1!1971)))))

(assert (=> b!7258228 (=> res!2943220 e!4352290)))

(assert (=> b!7258228 (= (matchZipper!3587 ((_ map or) lt!2589083 lt!2589089) (t!384675 s1!1971)) e!4352290)))

(declare-fun lt!2589097 () Unit!163976)

(assert (=> b!7258228 (= lt!2589097 (lemmaConcatPreservesForall!1484 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445840))))

(declare-fun lt!2589095 () Context!15234)

(assert (=> b!7258228 (= lt!2589105 (derivationStepZipperUp!2501 lt!2589095 (h!76935 s1!1971)))))

(declare-fun lt!2589085 () Unit!163976)

(declare-fun lt!2589114 () (InoxSet Context!15234))

(assert (=> b!7258228 (= lt!2589085 (lemmaZipperConcatMatchesSameAsBothZippers!1732 lt!2589114 lt!2589105 lt!2589116))))

(declare-fun res!2943219 () Bool)

(assert (=> b!7258228 (= res!2943219 (matchZipper!3587 lt!2589114 lt!2589116))))

(assert (=> b!7258228 (=> res!2943219 e!4352292)))

(assert (=> b!7258228 (= (matchZipper!3587 ((_ map or) lt!2589114 lt!2589105) lt!2589116) e!4352292)))

(declare-fun res!2943213 () Bool)

(declare-fun e!4352289 () Bool)

(assert (=> start!707068 (=> (not res!2943213) (not e!4352289))))

(declare-fun lt!2589101 () (InoxSet Context!15234))

(assert (=> start!707068 (= res!2943213 (matchZipper!3587 lt!2589101 s1!1971))))

(assert (=> start!707068 (= lt!2589101 (store ((as const (Array Context!15234 Bool)) false) ct1!232 true))))

(assert (=> start!707068 e!4352289))

(declare-fun inv!89702 (Context!15234) Bool)

(assert (=> start!707068 (and (inv!89702 ct1!232) e!4352291)))

(declare-fun e!4352294 () Bool)

(assert (=> start!707068 e!4352294))

(assert (=> start!707068 e!4352288))

(declare-fun e!4352298 () Bool)

(assert (=> start!707068 (and (inv!89702 ct2!328) e!4352298)))

(declare-fun b!7258229 () Bool)

(declare-fun e!4352293 () Bool)

(declare-fun e!4352287 () Bool)

(assert (=> b!7258229 (= e!4352293 e!4352287)))

(declare-fun res!2943211 () Bool)

(assert (=> b!7258229 (=> res!2943211 e!4352287)))

(declare-fun isEmpty!40589 (List!70612) Bool)

(assert (=> b!7258229 (= res!2943211 (isEmpty!40589 (exprs!8117 ct1!232)))))

(declare-fun lt!2589107 () (InoxSet Context!15234))

(assert (=> b!7258229 (= lt!2589107 (derivationStepZipperUp!2501 ct1!232 (h!76935 s1!1971)))))

(declare-fun lt!2589090 () Context!15234)

(declare-fun lt!2589115 () Unit!163976)

(assert (=> b!7258229 (= lt!2589115 (lemmaConcatPreservesForall!1484 (exprs!8117 lt!2589090) (exprs!8117 ct2!328) lambda!445840))))

(declare-fun lt!2589079 () Context!15234)

(assert (=> b!7258229 (matchZipper!3587 (store ((as const (Array Context!15234 Bool)) false) lt!2589079 true) lt!2589116)))

(declare-fun s2!1849 () List!70611)

(declare-fun ++!16616 (List!70611 List!70611) List!70611)

(assert (=> b!7258229 (= lt!2589116 (++!16616 (t!384675 s1!1971) s2!1849))))

(declare-fun ++!16617 (List!70612 List!70612) List!70612)

(assert (=> b!7258229 (= lt!2589079 (Context!15235 (++!16617 (exprs!8117 lt!2589090) (exprs!8117 ct2!328))))))

(declare-fun lt!2589118 () Unit!163976)

(assert (=> b!7258229 (= lt!2589118 (lemmaConcatPreservesForall!1484 (exprs!8117 lt!2589090) (exprs!8117 ct2!328) lambda!445840))))

(declare-fun lt!2589086 () Unit!163976)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!422 (Context!15234 Context!15234 List!70611 List!70611) Unit!163976)

(assert (=> b!7258229 (= lt!2589086 (lemmaConcatenateContextMatchesConcatOfStrings!422 lt!2589090 ct2!328 (t!384675 s1!1971) s2!1849))))

(declare-fun lt!2589096 () (InoxSet Context!15234))

(declare-fun getWitness!2253 ((InoxSet Context!15234) Int) Context!15234)

(assert (=> b!7258229 (= lt!2589090 (getWitness!2253 lt!2589096 lambda!445841))))

(declare-fun b!7258230 () Bool)

(declare-fun tp!2038481 () Bool)

(assert (=> b!7258230 (= e!4352294 (and tp_is_empty!46819 tp!2038481))))

(declare-fun b!7258231 () Bool)

(declare-fun e!4352299 () Bool)

(assert (=> b!7258231 (= e!4352289 e!4352299)))

(declare-fun res!2943218 () Bool)

(assert (=> b!7258231 (=> (not res!2943218) (not e!4352299))))

(get-info :version)

(assert (=> b!7258231 (= res!2943218 (and (not ((_ is Nil!70488) (exprs!8117 ct1!232))) ((_ is Cons!70487) s1!1971)))))

(declare-fun lt!2589084 () (InoxSet Context!15234))

(declare-fun lt!2589102 () Context!15234)

(assert (=> b!7258231 (= lt!2589084 (store ((as const (Array Context!15234 Bool)) false) lt!2589102 true))))

(declare-fun lt!2589110 () List!70612)

(assert (=> b!7258231 (= lt!2589102 (Context!15235 lt!2589110))))

(assert (=> b!7258231 (= lt!2589110 (++!16617 (exprs!8117 ct1!232) (exprs!8117 ct2!328)))))

(declare-fun lt!2589099 () Unit!163976)

(assert (=> b!7258231 (= lt!2589099 (lemmaConcatPreservesForall!1484 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445840))))

(declare-fun b!7258232 () Bool)

(declare-fun tp!2038480 () Bool)

(assert (=> b!7258232 (= e!4352298 tp!2038480)))

(declare-fun e!4352297 () Bool)

(declare-fun lt!2589106 () (InoxSet Context!15234))

(assert (=> b!7258233 (= e!4352297 (matchZipper!3587 lt!2589106 lt!2589116))))

(declare-datatypes ((List!70613 0))(
  ( (Nil!70489) (Cons!70489 (h!76937 Context!15234) (t!384677 List!70613)) )
))
(declare-fun lt!2589112 () List!70613)

(declare-fun content!14664 (List!70613) (InoxSet Context!15234))

(assert (=> b!7258233 (matchZipper!3587 (content!14664 lt!2589112) lt!2589116)))

(declare-fun lt!2589103 () Unit!163976)

(declare-fun lemmaExistsMatchingContextThenMatchingString!86 (List!70613 List!70611) Unit!163976)

(assert (=> b!7258233 (= lt!2589103 (lemmaExistsMatchingContextThenMatchingString!86 lt!2589112 lt!2589116))))

(declare-fun toList!11506 ((InoxSet Context!15234)) List!70613)

(assert (=> b!7258233 (= lt!2589112 (toList!11506 lt!2589106))))

(declare-fun e!4352286 () Bool)

(assert (=> b!7258233 e!4352286))

(declare-fun res!2943217 () Bool)

(assert (=> b!7258233 (=> (not res!2943217) (not e!4352286))))

(declare-fun exists!4432 ((InoxSet Context!15234) Int) Bool)

(assert (=> b!7258233 (= res!2943217 (exists!4432 lt!2589106 lambda!445843))))

(declare-fun lt!2589091 () Unit!163976)

(declare-fun lemmaContainsThenExists!225 ((InoxSet Context!15234) Context!15234 Int) Unit!163976)

(assert (=> b!7258233 (= lt!2589091 (lemmaContainsThenExists!225 lt!2589106 lt!2589079 lambda!445843))))

(declare-fun lt!2589081 () Unit!163976)

(assert (=> b!7258233 (= lt!2589081 (lemmaConcatPreservesForall!1484 (exprs!8117 lt!2589090) (exprs!8117 ct2!328) lambda!445840))))

(assert (=> b!7258233 (select lt!2589106 lt!2589079)))

(declare-fun lt!2589080 () Unit!163976)

(assert (=> b!7258233 (= lt!2589080 (lemmaConcatPreservesForall!1484 (exprs!8117 lt!2589090) (exprs!8117 ct2!328) lambda!445840))))

(declare-fun lt!2589109 () (InoxSet Context!15234))

(assert (=> b!7258233 (select lt!2589109 lt!2589079)))

(declare-fun lt!2589100 () Unit!163976)

(assert (=> b!7258233 (= lt!2589100 (lemmaConcatPreservesForall!1484 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445840))))

(declare-fun lt!2589119 () Unit!163976)

(assert (=> b!7258233 (= lt!2589119 (lemmaConcatPreservesForall!1484 (exprs!8117 lt!2589090) (exprs!8117 ct2!328) lambda!445840))))

(declare-fun lt!2589093 () Unit!163976)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!32 (Context!15234 Context!15234 Context!15234 C!37628) Unit!163976)

(assert (=> b!7258233 (= lt!2589093 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!32 ct1!232 ct2!328 lt!2589090 (h!76935 s1!1971)))))

(declare-fun tail!14378 (List!70611) List!70611)

(assert (=> b!7258233 (= (tail!14378 (++!16616 s1!1971 s2!1849)) lt!2589116)))

(declare-fun lt!2589113 () Unit!163976)

(assert (=> b!7258233 (= lt!2589113 e!4352296)))

(declare-fun c!1349918 () Bool)

(declare-fun nullable!7937 (Regex!18677) Bool)

(assert (=> b!7258233 (= c!1349918 (nullable!7937 (h!76936 (exprs!8117 ct1!232))))))

(declare-fun lambda!445842 () Int)

(declare-fun flatMap!2842 ((InoxSet Context!15234) Int) (InoxSet Context!15234))

(assert (=> b!7258233 (= (flatMap!2842 lt!2589084 lambda!445842) (derivationStepZipperUp!2501 lt!2589102 (h!76935 s1!1971)))))

(declare-fun lt!2589092 () Unit!163976)

(declare-fun lemmaFlatMapOnSingletonSet!2246 ((InoxSet Context!15234) Context!15234 Int) Unit!163976)

(assert (=> b!7258233 (= lt!2589092 (lemmaFlatMapOnSingletonSet!2246 lt!2589084 lt!2589102 lambda!445842))))

(declare-fun lt!2589098 () Unit!163976)

(assert (=> b!7258233 (= lt!2589098 (lemmaConcatPreservesForall!1484 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445840))))

(assert (=> b!7258233 (= (flatMap!2842 lt!2589101 lambda!445842) (derivationStepZipperUp!2501 ct1!232 (h!76935 s1!1971)))))

(declare-fun lt!2589088 () Unit!163976)

(assert (=> b!7258233 (= lt!2589088 (lemmaFlatMapOnSingletonSet!2246 lt!2589101 ct1!232 lambda!445842))))

(declare-fun derivationStepZipperDown!2671 (Regex!18677 Context!15234 C!37628) (InoxSet Context!15234))

(assert (=> b!7258233 (= lt!2589114 (derivationStepZipperDown!2671 (h!76936 (exprs!8117 ct1!232)) lt!2589095 (h!76935 s1!1971)))))

(declare-fun tail!14379 (List!70612) List!70612)

(assert (=> b!7258233 (= lt!2589095 (Context!15235 (tail!14379 lt!2589110)))))

(declare-fun b!7258234 () Bool)

(declare-fun res!2943215 () Bool)

(assert (=> b!7258234 (=> (not res!2943215) (not e!4352289))))

(assert (=> b!7258234 (= res!2943215 (matchZipper!3587 (store ((as const (Array Context!15234 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7258235 () Bool)

(declare-fun e!4352295 () Bool)

(assert (=> b!7258235 (= e!4352299 e!4352295)))

(declare-fun res!2943216 () Bool)

(assert (=> b!7258235 (=> (not res!2943216) (not e!4352295))))

(assert (=> b!7258235 (= res!2943216 (matchZipper!3587 lt!2589096 (t!384675 s1!1971)))))

(declare-fun derivationStepZipper!3455 ((InoxSet Context!15234) C!37628) (InoxSet Context!15234))

(assert (=> b!7258235 (= lt!2589096 (derivationStepZipper!3455 lt!2589101 (h!76935 s1!1971)))))

(assert (=> b!7258236 (= e!4352295 (not e!4352293))))

(declare-fun res!2943214 () Bool)

(assert (=> b!7258236 (=> res!2943214 e!4352293)))

(assert (=> b!7258236 (= res!2943214 (not (exists!4432 lt!2589096 lambda!445841)))))

(declare-fun lt!2589111 () List!70613)

(declare-fun exists!4433 (List!70613 Int) Bool)

(assert (=> b!7258236 (exists!4433 lt!2589111 lambda!445841)))

(declare-fun lt!2589108 () Unit!163976)

(declare-fun lemmaZipperMatchesExistsMatchingContext!780 (List!70613 List!70611) Unit!163976)

(assert (=> b!7258236 (= lt!2589108 (lemmaZipperMatchesExistsMatchingContext!780 lt!2589111 (t!384675 s1!1971)))))

(assert (=> b!7258236 (= lt!2589111 (toList!11506 lt!2589096))))

(assert (=> b!7258236 (= lt!2589106 (derivationStepZipper!3455 lt!2589084 (h!76935 s1!1971)))))

(declare-fun b!7258237 () Bool)

(assert (=> b!7258237 (= e!4352287 e!4352297)))

(declare-fun res!2943212 () Bool)

(assert (=> b!7258237 (=> res!2943212 e!4352297)))

(assert (=> b!7258237 (= res!2943212 (isEmpty!40589 lt!2589110))))

(declare-fun lt!2589087 () Unit!163976)

(assert (=> b!7258237 (= lt!2589087 (lemmaConcatPreservesForall!1484 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445840))))

(assert (=> b!7258237 (= lt!2589109 (derivationStepZipperUp!2501 lt!2589102 (h!76935 s1!1971)))))

(declare-fun lt!2589117 () Unit!163976)

(assert (=> b!7258237 (= lt!2589117 (lemmaConcatPreservesForall!1484 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445840))))

(assert (=> b!7258237 (= lt!2589083 (derivationStepZipperDown!2671 (h!76936 (exprs!8117 ct1!232)) lt!2589104 (h!76935 s1!1971)))))

(assert (=> b!7258237 (= lt!2589104 (Context!15235 (tail!14379 (exprs!8117 ct1!232))))))

(declare-fun b!7258238 () Bool)

(assert (=> b!7258238 (= e!4352286 (exists!4432 lt!2589106 lambda!445843))))

(assert (= (and start!707068 res!2943213) b!7258234))

(assert (= (and b!7258234 res!2943215) b!7258231))

(assert (= (and b!7258231 res!2943218) b!7258235))

(assert (= (and b!7258235 res!2943216) b!7258236))

(assert (= (and b!7258236 (not res!2943214)) b!7258229))

(assert (= (and b!7258229 (not res!2943211)) b!7258237))

(assert (= (and b!7258237 (not res!2943212)) b!7258233))

(assert (= (and b!7258233 c!1349918) b!7258228))

(assert (= (and b!7258233 (not c!1349918)) b!7258223))

(assert (= (and b!7258228 (not res!2943220)) b!7258225))

(assert (= (and b!7258228 (not res!2943219)) b!7258224))

(assert (= (and b!7258233 res!2943217) b!7258238))

(assert (= start!707068 b!7258226))

(assert (= (and start!707068 ((_ is Cons!70487) s1!1971)) b!7258230))

(assert (= (and start!707068 ((_ is Cons!70487) s2!1849)) b!7258227))

(assert (= start!707068 b!7258232))

(declare-fun m!7941060 () Bool)

(assert (=> start!707068 m!7941060))

(declare-fun m!7941062 () Bool)

(assert (=> start!707068 m!7941062))

(declare-fun m!7941064 () Bool)

(assert (=> start!707068 m!7941064))

(declare-fun m!7941066 () Bool)

(assert (=> start!707068 m!7941066))

(declare-fun m!7941068 () Bool)

(assert (=> b!7258224 m!7941068))

(declare-fun m!7941070 () Bool)

(assert (=> b!7258237 m!7941070))

(declare-fun m!7941072 () Bool)

(assert (=> b!7258237 m!7941072))

(assert (=> b!7258237 m!7941072))

(declare-fun m!7941074 () Bool)

(assert (=> b!7258237 m!7941074))

(declare-fun m!7941076 () Bool)

(assert (=> b!7258237 m!7941076))

(declare-fun m!7941078 () Bool)

(assert (=> b!7258237 m!7941078))

(declare-fun m!7941080 () Bool)

(assert (=> b!7258238 m!7941080))

(declare-fun m!7941082 () Bool)

(assert (=> b!7258234 m!7941082))

(assert (=> b!7258234 m!7941082))

(declare-fun m!7941084 () Bool)

(assert (=> b!7258234 m!7941084))

(declare-fun m!7941086 () Bool)

(assert (=> b!7258233 m!7941086))

(declare-fun m!7941088 () Bool)

(assert (=> b!7258233 m!7941088))

(assert (=> b!7258233 m!7941072))

(declare-fun m!7941090 () Bool)

(assert (=> b!7258233 m!7941090))

(declare-fun m!7941092 () Bool)

(assert (=> b!7258233 m!7941092))

(declare-fun m!7941094 () Bool)

(assert (=> b!7258233 m!7941094))

(declare-fun m!7941096 () Bool)

(assert (=> b!7258233 m!7941096))

(declare-fun m!7941098 () Bool)

(assert (=> b!7258233 m!7941098))

(declare-fun m!7941100 () Bool)

(assert (=> b!7258233 m!7941100))

(declare-fun m!7941102 () Bool)

(assert (=> b!7258233 m!7941102))

(declare-fun m!7941104 () Bool)

(assert (=> b!7258233 m!7941104))

(declare-fun m!7941106 () Bool)

(assert (=> b!7258233 m!7941106))

(assert (=> b!7258233 m!7941070))

(assert (=> b!7258233 m!7941086))

(assert (=> b!7258233 m!7941072))

(declare-fun m!7941108 () Bool)

(assert (=> b!7258233 m!7941108))

(declare-fun m!7941110 () Bool)

(assert (=> b!7258233 m!7941110))

(assert (=> b!7258233 m!7941094))

(declare-fun m!7941112 () Bool)

(assert (=> b!7258233 m!7941112))

(declare-fun m!7941114 () Bool)

(assert (=> b!7258233 m!7941114))

(declare-fun m!7941116 () Bool)

(assert (=> b!7258233 m!7941116))

(declare-fun m!7941118 () Bool)

(assert (=> b!7258233 m!7941118))

(assert (=> b!7258233 m!7941086))

(declare-fun m!7941120 () Bool)

(assert (=> b!7258233 m!7941120))

(declare-fun m!7941122 () Bool)

(assert (=> b!7258233 m!7941122))

(assert (=> b!7258233 m!7941080))

(assert (=> b!7258233 m!7941102))

(declare-fun m!7941124 () Bool)

(assert (=> b!7258233 m!7941124))

(declare-fun m!7941126 () Bool)

(assert (=> b!7258236 m!7941126))

(declare-fun m!7941128 () Bool)

(assert (=> b!7258236 m!7941128))

(declare-fun m!7941130 () Bool)

(assert (=> b!7258236 m!7941130))

(declare-fun m!7941132 () Bool)

(assert (=> b!7258236 m!7941132))

(declare-fun m!7941134 () Bool)

(assert (=> b!7258236 m!7941134))

(assert (=> b!7258228 m!7941072))

(declare-fun m!7941136 () Bool)

(assert (=> b!7258228 m!7941136))

(declare-fun m!7941138 () Bool)

(assert (=> b!7258228 m!7941138))

(declare-fun m!7941140 () Bool)

(assert (=> b!7258228 m!7941140))

(declare-fun m!7941142 () Bool)

(assert (=> b!7258228 m!7941142))

(declare-fun m!7941144 () Bool)

(assert (=> b!7258228 m!7941144))

(declare-fun m!7941146 () Bool)

(assert (=> b!7258228 m!7941146))

(declare-fun m!7941148 () Bool)

(assert (=> b!7258228 m!7941148))

(declare-fun m!7941150 () Bool)

(assert (=> b!7258228 m!7941150))

(assert (=> b!7258228 m!7941072))

(declare-fun m!7941152 () Bool)

(assert (=> b!7258231 m!7941152))

(declare-fun m!7941154 () Bool)

(assert (=> b!7258231 m!7941154))

(assert (=> b!7258231 m!7941072))

(declare-fun m!7941156 () Bool)

(assert (=> b!7258225 m!7941156))

(declare-fun m!7941158 () Bool)

(assert (=> b!7258235 m!7941158))

(declare-fun m!7941160 () Bool)

(assert (=> b!7258235 m!7941160))

(declare-fun m!7941162 () Bool)

(assert (=> b!7258229 m!7941162))

(declare-fun m!7941164 () Bool)

(assert (=> b!7258229 m!7941164))

(assert (=> b!7258229 m!7941086))

(declare-fun m!7941166 () Bool)

(assert (=> b!7258229 m!7941166))

(declare-fun m!7941168 () Bool)

(assert (=> b!7258229 m!7941168))

(declare-fun m!7941170 () Bool)

(assert (=> b!7258229 m!7941170))

(assert (=> b!7258229 m!7941166))

(declare-fun m!7941172 () Bool)

(assert (=> b!7258229 m!7941172))

(declare-fun m!7941174 () Bool)

(assert (=> b!7258229 m!7941174))

(assert (=> b!7258229 m!7941120))

(assert (=> b!7258229 m!7941086))

(check-sat (not b!7258236) (not b!7258225) (not start!707068) (not b!7258238) (not b!7258227) (not b!7258234) (not b!7258224) (not b!7258231) (not b!7258229) (not b!7258233) (not b!7258232) (not b!7258237) tp_is_empty!46819 (not b!7258226) (not b!7258235) (not b!7258228) (not b!7258230))
(check-sat)
(get-model)

(declare-fun d!2257623 () Bool)

(declare-fun forall!17530 (List!70612 Int) Bool)

(assert (=> d!2257623 (forall!17530 (++!16617 (exprs!8117 ct1!232) (exprs!8117 ct2!328)) lambda!445840)))

(declare-fun lt!2589177 () Unit!163976)

(declare-fun choose!56165 (List!70612 List!70612 Int) Unit!163976)

(assert (=> d!2257623 (= lt!2589177 (choose!56165 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445840))))

(assert (=> d!2257623 (forall!17530 (exprs!8117 ct1!232) lambda!445840)))

(assert (=> d!2257623 (= (lemmaConcatPreservesForall!1484 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445840) lt!2589177)))

(declare-fun bs!1908148 () Bool)

(assert (= bs!1908148 d!2257623))

(assert (=> bs!1908148 m!7941154))

(assert (=> bs!1908148 m!7941154))

(declare-fun m!7941470 () Bool)

(assert (=> bs!1908148 m!7941470))

(declare-fun m!7941472 () Bool)

(assert (=> bs!1908148 m!7941472))

(declare-fun m!7941474 () Bool)

(assert (=> bs!1908148 m!7941474))

(assert (=> b!7258237 d!2257623))

(declare-fun d!2257631 () Bool)

(assert (=> d!2257631 (= (tail!14379 (exprs!8117 ct1!232)) (t!384676 (exprs!8117 ct1!232)))))

(assert (=> b!7258237 d!2257631))

(declare-fun d!2257633 () Bool)

(assert (=> d!2257633 (= (isEmpty!40589 lt!2589110) ((_ is Nil!70488) lt!2589110))))

(assert (=> b!7258237 d!2257633))

(declare-fun b!7258420 () Bool)

(declare-fun e!4352401 () (InoxSet Context!15234))

(declare-fun e!4352403 () (InoxSet Context!15234))

(assert (=> b!7258420 (= e!4352401 e!4352403)))

(declare-fun c!1349989 () Bool)

(assert (=> b!7258420 (= c!1349989 ((_ is Cons!70488) (exprs!8117 lt!2589102)))))

(declare-fun b!7258421 () Bool)

(assert (=> b!7258421 (= e!4352403 ((as const (Array Context!15234 Bool)) false))))

(declare-fun bm!661524 () Bool)

(declare-fun call!661529 () (InoxSet Context!15234))

(assert (=> bm!661524 (= call!661529 (derivationStepZipperDown!2671 (h!76936 (exprs!8117 lt!2589102)) (Context!15235 (t!384676 (exprs!8117 lt!2589102))) (h!76935 s1!1971)))))

(declare-fun b!7258423 () Bool)

(declare-fun e!4352402 () Bool)

(assert (=> b!7258423 (= e!4352402 (nullable!7937 (h!76936 (exprs!8117 lt!2589102))))))

(declare-fun b!7258424 () Bool)

(assert (=> b!7258424 (= e!4352403 call!661529)))

(declare-fun b!7258422 () Bool)

(assert (=> b!7258422 (= e!4352401 ((_ map or) call!661529 (derivationStepZipperUp!2501 (Context!15235 (t!384676 (exprs!8117 lt!2589102))) (h!76935 s1!1971))))))

(declare-fun d!2257635 () Bool)

(declare-fun c!1349988 () Bool)

(assert (=> d!2257635 (= c!1349988 e!4352402)))

(declare-fun res!2943260 () Bool)

(assert (=> d!2257635 (=> (not res!2943260) (not e!4352402))))

(assert (=> d!2257635 (= res!2943260 ((_ is Cons!70488) (exprs!8117 lt!2589102)))))

(assert (=> d!2257635 (= (derivationStepZipperUp!2501 lt!2589102 (h!76935 s1!1971)) e!4352401)))

(assert (= (and d!2257635 res!2943260) b!7258423))

(assert (= (and d!2257635 c!1349988) b!7258422))

(assert (= (and d!2257635 (not c!1349988)) b!7258420))

(assert (= (and b!7258420 c!1349989) b!7258424))

(assert (= (and b!7258420 (not c!1349989)) b!7258421))

(assert (= (or b!7258422 b!7258424) bm!661524))

(declare-fun m!7941476 () Bool)

(assert (=> bm!661524 m!7941476))

(declare-fun m!7941478 () Bool)

(assert (=> b!7258423 m!7941478))

(declare-fun m!7941480 () Bool)

(assert (=> b!7258422 m!7941480))

(assert (=> b!7258237 d!2257635))

(declare-fun b!7258447 () Bool)

(declare-fun e!4352418 () Bool)

(assert (=> b!7258447 (= e!4352418 (nullable!7937 (regOne!37866 (h!76936 (exprs!8117 ct1!232)))))))

(declare-fun b!7258448 () Bool)

(declare-fun c!1350003 () Bool)

(assert (=> b!7258448 (= c!1350003 e!4352418)))

(declare-fun res!2943263 () Bool)

(assert (=> b!7258448 (=> (not res!2943263) (not e!4352418))))

(assert (=> b!7258448 (= res!2943263 ((_ is Concat!27522) (h!76936 (exprs!8117 ct1!232))))))

(declare-fun e!4352416 () (InoxSet Context!15234))

(declare-fun e!4352419 () (InoxSet Context!15234))

(assert (=> b!7258448 (= e!4352416 e!4352419)))

(declare-fun b!7258449 () Bool)

(declare-fun e!4352420 () (InoxSet Context!15234))

(assert (=> b!7258449 (= e!4352420 (store ((as const (Array Context!15234 Bool)) false) lt!2589104 true))))

(declare-fun call!661544 () List!70612)

(declare-fun c!1350001 () Bool)

(declare-fun bm!661538 () Bool)

(declare-fun $colon$colon!2935 (List!70612 Regex!18677) List!70612)

(assert (=> bm!661538 (= call!661544 ($colon$colon!2935 (exprs!8117 lt!2589104) (ite (or c!1350003 c!1350001) (regTwo!37866 (h!76936 (exprs!8117 ct1!232))) (h!76936 (exprs!8117 ct1!232)))))))

(declare-fun bm!661539 () Bool)

(declare-fun call!661547 () List!70612)

(assert (=> bm!661539 (= call!661547 call!661544)))

(declare-fun b!7258450 () Bool)

(declare-fun call!661543 () (InoxSet Context!15234))

(declare-fun call!661542 () (InoxSet Context!15234))

(assert (=> b!7258450 (= e!4352419 ((_ map or) call!661543 call!661542))))

(declare-fun b!7258451 () Bool)

(declare-fun e!4352417 () (InoxSet Context!15234))

(assert (=> b!7258451 (= e!4352419 e!4352417)))

(assert (=> b!7258451 (= c!1350001 ((_ is Concat!27522) (h!76936 (exprs!8117 ct1!232))))))

(declare-fun c!1350004 () Bool)

(declare-fun bm!661540 () Bool)

(assert (=> bm!661540 (= call!661543 (derivationStepZipperDown!2671 (ite c!1350004 (regTwo!37867 (h!76936 (exprs!8117 ct1!232))) (regOne!37866 (h!76936 (exprs!8117 ct1!232)))) (ite c!1350004 lt!2589104 (Context!15235 call!661544)) (h!76935 s1!1971)))))

(declare-fun b!7258452 () Bool)

(declare-fun call!661545 () (InoxSet Context!15234))

(assert (=> b!7258452 (= e!4352416 ((_ map or) call!661545 call!661543))))

(declare-fun b!7258453 () Bool)

(declare-fun e!4352421 () (InoxSet Context!15234))

(declare-fun call!661546 () (InoxSet Context!15234))

(assert (=> b!7258453 (= e!4352421 call!661546)))

(declare-fun bm!661541 () Bool)

(assert (=> bm!661541 (= call!661542 call!661545)))

(declare-fun d!2257637 () Bool)

(declare-fun c!1350002 () Bool)

(assert (=> d!2257637 (= c!1350002 (and ((_ is ElementMatch!18677) (h!76936 (exprs!8117 ct1!232))) (= (c!1349919 (h!76936 (exprs!8117 ct1!232))) (h!76935 s1!1971))))))

(assert (=> d!2257637 (= (derivationStepZipperDown!2671 (h!76936 (exprs!8117 ct1!232)) lt!2589104 (h!76935 s1!1971)) e!4352420)))

(declare-fun bm!661537 () Bool)

(assert (=> bm!661537 (= call!661545 (derivationStepZipperDown!2671 (ite c!1350004 (regOne!37867 (h!76936 (exprs!8117 ct1!232))) (ite c!1350003 (regTwo!37866 (h!76936 (exprs!8117 ct1!232))) (ite c!1350001 (regOne!37866 (h!76936 (exprs!8117 ct1!232))) (reg!19006 (h!76936 (exprs!8117 ct1!232)))))) (ite (or c!1350004 c!1350003) lt!2589104 (Context!15235 call!661547)) (h!76935 s1!1971)))))

(declare-fun bm!661542 () Bool)

(assert (=> bm!661542 (= call!661546 call!661542)))

(declare-fun b!7258454 () Bool)

(assert (=> b!7258454 (= e!4352421 ((as const (Array Context!15234 Bool)) false))))

(declare-fun b!7258455 () Bool)

(assert (=> b!7258455 (= e!4352420 e!4352416)))

(assert (=> b!7258455 (= c!1350004 ((_ is Union!18677) (h!76936 (exprs!8117 ct1!232))))))

(declare-fun b!7258456 () Bool)

(assert (=> b!7258456 (= e!4352417 call!661546)))

(declare-fun b!7258457 () Bool)

(declare-fun c!1350000 () Bool)

(assert (=> b!7258457 (= c!1350000 ((_ is Star!18677) (h!76936 (exprs!8117 ct1!232))))))

(assert (=> b!7258457 (= e!4352417 e!4352421)))

(assert (= (and d!2257637 c!1350002) b!7258449))

(assert (= (and d!2257637 (not c!1350002)) b!7258455))

(assert (= (and b!7258455 c!1350004) b!7258452))

(assert (= (and b!7258455 (not c!1350004)) b!7258448))

(assert (= (and b!7258448 res!2943263) b!7258447))

(assert (= (and b!7258448 c!1350003) b!7258450))

(assert (= (and b!7258448 (not c!1350003)) b!7258451))

(assert (= (and b!7258451 c!1350001) b!7258456))

(assert (= (and b!7258451 (not c!1350001)) b!7258457))

(assert (= (and b!7258457 c!1350000) b!7258453))

(assert (= (and b!7258457 (not c!1350000)) b!7258454))

(assert (= (or b!7258456 b!7258453) bm!661539))

(assert (= (or b!7258456 b!7258453) bm!661542))

(assert (= (or b!7258450 bm!661539) bm!661538))

(assert (= (or b!7258450 bm!661542) bm!661541))

(assert (= (or b!7258452 b!7258450) bm!661540))

(assert (= (or b!7258452 bm!661541) bm!661537))

(declare-fun m!7941482 () Bool)

(assert (=> b!7258447 m!7941482))

(declare-fun m!7941484 () Bool)

(assert (=> bm!661537 m!7941484))

(declare-fun m!7941486 () Bool)

(assert (=> bm!661540 m!7941486))

(declare-fun m!7941488 () Bool)

(assert (=> b!7258449 m!7941488))

(declare-fun m!7941490 () Bool)

(assert (=> bm!661538 m!7941490))

(assert (=> b!7258237 d!2257637))

(declare-fun d!2257639 () Bool)

(declare-fun lt!2589180 () Bool)

(assert (=> d!2257639 (= lt!2589180 (exists!4433 (toList!11506 lt!2589106) lambda!445843))))

(declare-fun choose!56167 ((InoxSet Context!15234) Int) Bool)

(assert (=> d!2257639 (= lt!2589180 (choose!56167 lt!2589106 lambda!445843))))

(assert (=> d!2257639 (= (exists!4432 lt!2589106 lambda!445843) lt!2589180)))

(declare-fun bs!1908149 () Bool)

(assert (= bs!1908149 d!2257639))

(assert (=> bs!1908149 m!7941088))

(assert (=> bs!1908149 m!7941088))

(declare-fun m!7941492 () Bool)

(assert (=> bs!1908149 m!7941492))

(declare-fun m!7941494 () Bool)

(assert (=> bs!1908149 m!7941494))

(assert (=> b!7258238 d!2257639))

(assert (=> b!7258228 d!2257623))

(declare-fun e!4352424 () Bool)

(declare-fun d!2257641 () Bool)

(assert (=> d!2257641 (= (matchZipper!3587 ((_ map or) lt!2589114 lt!2589105) lt!2589116) e!4352424)))

(declare-fun res!2943266 () Bool)

(assert (=> d!2257641 (=> res!2943266 e!4352424)))

(assert (=> d!2257641 (= res!2943266 (matchZipper!3587 lt!2589114 lt!2589116))))

(declare-fun lt!2589183 () Unit!163976)

(declare-fun choose!56169 ((InoxSet Context!15234) (InoxSet Context!15234) List!70611) Unit!163976)

(assert (=> d!2257641 (= lt!2589183 (choose!56169 lt!2589114 lt!2589105 lt!2589116))))

(assert (=> d!2257641 (= (lemmaZipperConcatMatchesSameAsBothZippers!1732 lt!2589114 lt!2589105 lt!2589116) lt!2589183)))

(declare-fun b!7258460 () Bool)

(assert (=> b!7258460 (= e!4352424 (matchZipper!3587 lt!2589105 lt!2589116))))

(assert (= (and d!2257641 (not res!2943266)) b!7258460))

(assert (=> d!2257641 m!7941138))

(assert (=> d!2257641 m!7941142))

(declare-fun m!7941496 () Bool)

(assert (=> d!2257641 m!7941496))

(assert (=> b!7258460 m!7941068))

(assert (=> b!7258228 d!2257641))

(declare-fun b!7258461 () Bool)

(declare-fun e!4352425 () (InoxSet Context!15234))

(declare-fun e!4352427 () (InoxSet Context!15234))

(assert (=> b!7258461 (= e!4352425 e!4352427)))

(declare-fun c!1350006 () Bool)

(assert (=> b!7258461 (= c!1350006 ((_ is Cons!70488) (exprs!8117 lt!2589104)))))

(declare-fun b!7258462 () Bool)

(assert (=> b!7258462 (= e!4352427 ((as const (Array Context!15234 Bool)) false))))

(declare-fun bm!661543 () Bool)

(declare-fun call!661548 () (InoxSet Context!15234))

(assert (=> bm!661543 (= call!661548 (derivationStepZipperDown!2671 (h!76936 (exprs!8117 lt!2589104)) (Context!15235 (t!384676 (exprs!8117 lt!2589104))) (h!76935 s1!1971)))))

(declare-fun b!7258464 () Bool)

(declare-fun e!4352426 () Bool)

(assert (=> b!7258464 (= e!4352426 (nullable!7937 (h!76936 (exprs!8117 lt!2589104))))))

(declare-fun b!7258465 () Bool)

(assert (=> b!7258465 (= e!4352427 call!661548)))

(declare-fun b!7258463 () Bool)

(assert (=> b!7258463 (= e!4352425 ((_ map or) call!661548 (derivationStepZipperUp!2501 (Context!15235 (t!384676 (exprs!8117 lt!2589104))) (h!76935 s1!1971))))))

(declare-fun d!2257643 () Bool)

(declare-fun c!1350005 () Bool)

(assert (=> d!2257643 (= c!1350005 e!4352426)))

(declare-fun res!2943267 () Bool)

(assert (=> d!2257643 (=> (not res!2943267) (not e!4352426))))

(assert (=> d!2257643 (= res!2943267 ((_ is Cons!70488) (exprs!8117 lt!2589104)))))

(assert (=> d!2257643 (= (derivationStepZipperUp!2501 lt!2589104 (h!76935 s1!1971)) e!4352425)))

(assert (= (and d!2257643 res!2943267) b!7258464))

(assert (= (and d!2257643 c!1350005) b!7258463))

(assert (= (and d!2257643 (not c!1350005)) b!7258461))

(assert (= (and b!7258461 c!1350006) b!7258465))

(assert (= (and b!7258461 (not c!1350006)) b!7258462))

(assert (= (or b!7258463 b!7258465) bm!661543))

(declare-fun m!7941498 () Bool)

(assert (=> bm!661543 m!7941498))

(declare-fun m!7941500 () Bool)

(assert (=> b!7258464 m!7941500))

(declare-fun m!7941502 () Bool)

(assert (=> b!7258463 m!7941502))

(assert (=> b!7258228 d!2257643))

(declare-fun d!2257645 () Bool)

(declare-fun c!1350009 () Bool)

(declare-fun isEmpty!40591 (List!70611) Bool)

(assert (=> d!2257645 (= c!1350009 (isEmpty!40591 lt!2589116))))

(declare-fun e!4352430 () Bool)

(assert (=> d!2257645 (= (matchZipper!3587 lt!2589114 lt!2589116) e!4352430)))

(declare-fun b!7258470 () Bool)

(declare-fun nullableZipper!2933 ((InoxSet Context!15234)) Bool)

(assert (=> b!7258470 (= e!4352430 (nullableZipper!2933 lt!2589114))))

(declare-fun b!7258471 () Bool)

(declare-fun head!14930 (List!70611) C!37628)

(assert (=> b!7258471 (= e!4352430 (matchZipper!3587 (derivationStepZipper!3455 lt!2589114 (head!14930 lt!2589116)) (tail!14378 lt!2589116)))))

(assert (= (and d!2257645 c!1350009) b!7258470))

(assert (= (and d!2257645 (not c!1350009)) b!7258471))

(declare-fun m!7941504 () Bool)

(assert (=> d!2257645 m!7941504))

(declare-fun m!7941506 () Bool)

(assert (=> b!7258470 m!7941506))

(declare-fun m!7941508 () Bool)

(assert (=> b!7258471 m!7941508))

(assert (=> b!7258471 m!7941508))

(declare-fun m!7941510 () Bool)

(assert (=> b!7258471 m!7941510))

(declare-fun m!7941512 () Bool)

(assert (=> b!7258471 m!7941512))

(assert (=> b!7258471 m!7941510))

(assert (=> b!7258471 m!7941512))

(declare-fun m!7941514 () Bool)

(assert (=> b!7258471 m!7941514))

(assert (=> b!7258228 d!2257645))

(declare-fun d!2257647 () Bool)

(declare-fun c!1350010 () Bool)

(assert (=> d!2257647 (= c!1350010 (isEmpty!40591 (t!384675 s1!1971)))))

(declare-fun e!4352431 () Bool)

(assert (=> d!2257647 (= (matchZipper!3587 lt!2589083 (t!384675 s1!1971)) e!4352431)))

(declare-fun b!7258472 () Bool)

(assert (=> b!7258472 (= e!4352431 (nullableZipper!2933 lt!2589083))))

(declare-fun b!7258473 () Bool)

(assert (=> b!7258473 (= e!4352431 (matchZipper!3587 (derivationStepZipper!3455 lt!2589083 (head!14930 (t!384675 s1!1971))) (tail!14378 (t!384675 s1!1971))))))

(assert (= (and d!2257647 c!1350010) b!7258472))

(assert (= (and d!2257647 (not c!1350010)) b!7258473))

(declare-fun m!7941516 () Bool)

(assert (=> d!2257647 m!7941516))

(declare-fun m!7941518 () Bool)

(assert (=> b!7258472 m!7941518))

(declare-fun m!7941520 () Bool)

(assert (=> b!7258473 m!7941520))

(assert (=> b!7258473 m!7941520))

(declare-fun m!7941522 () Bool)

(assert (=> b!7258473 m!7941522))

(declare-fun m!7941524 () Bool)

(assert (=> b!7258473 m!7941524))

(assert (=> b!7258473 m!7941522))

(assert (=> b!7258473 m!7941524))

(declare-fun m!7941526 () Bool)

(assert (=> b!7258473 m!7941526))

(assert (=> b!7258228 d!2257647))

(declare-fun d!2257649 () Bool)

(declare-fun c!1350011 () Bool)

(assert (=> d!2257649 (= c!1350011 (isEmpty!40591 lt!2589116))))

(declare-fun e!4352432 () Bool)

(assert (=> d!2257649 (= (matchZipper!3587 ((_ map or) lt!2589114 lt!2589105) lt!2589116) e!4352432)))

(declare-fun b!7258474 () Bool)

(assert (=> b!7258474 (= e!4352432 (nullableZipper!2933 ((_ map or) lt!2589114 lt!2589105)))))

(declare-fun b!7258475 () Bool)

(assert (=> b!7258475 (= e!4352432 (matchZipper!3587 (derivationStepZipper!3455 ((_ map or) lt!2589114 lt!2589105) (head!14930 lt!2589116)) (tail!14378 lt!2589116)))))

(assert (= (and d!2257649 c!1350011) b!7258474))

(assert (= (and d!2257649 (not c!1350011)) b!7258475))

(assert (=> d!2257649 m!7941504))

(declare-fun m!7941528 () Bool)

(assert (=> b!7258474 m!7941528))

(assert (=> b!7258475 m!7941508))

(assert (=> b!7258475 m!7941508))

(declare-fun m!7941530 () Bool)

(assert (=> b!7258475 m!7941530))

(assert (=> b!7258475 m!7941512))

(assert (=> b!7258475 m!7941530))

(assert (=> b!7258475 m!7941512))

(declare-fun m!7941532 () Bool)

(assert (=> b!7258475 m!7941532))

(assert (=> b!7258228 d!2257649))

(declare-fun b!7258476 () Bool)

(declare-fun e!4352433 () (InoxSet Context!15234))

(declare-fun e!4352435 () (InoxSet Context!15234))

(assert (=> b!7258476 (= e!4352433 e!4352435)))

(declare-fun c!1350013 () Bool)

(assert (=> b!7258476 (= c!1350013 ((_ is Cons!70488) (exprs!8117 lt!2589095)))))

(declare-fun b!7258477 () Bool)

(assert (=> b!7258477 (= e!4352435 ((as const (Array Context!15234 Bool)) false))))

(declare-fun bm!661544 () Bool)

(declare-fun call!661549 () (InoxSet Context!15234))

(assert (=> bm!661544 (= call!661549 (derivationStepZipperDown!2671 (h!76936 (exprs!8117 lt!2589095)) (Context!15235 (t!384676 (exprs!8117 lt!2589095))) (h!76935 s1!1971)))))

(declare-fun b!7258479 () Bool)

(declare-fun e!4352434 () Bool)

(assert (=> b!7258479 (= e!4352434 (nullable!7937 (h!76936 (exprs!8117 lt!2589095))))))

(declare-fun b!7258480 () Bool)

(assert (=> b!7258480 (= e!4352435 call!661549)))

(declare-fun b!7258478 () Bool)

(assert (=> b!7258478 (= e!4352433 ((_ map or) call!661549 (derivationStepZipperUp!2501 (Context!15235 (t!384676 (exprs!8117 lt!2589095))) (h!76935 s1!1971))))))

(declare-fun d!2257651 () Bool)

(declare-fun c!1350012 () Bool)

(assert (=> d!2257651 (= c!1350012 e!4352434)))

(declare-fun res!2943268 () Bool)

(assert (=> d!2257651 (=> (not res!2943268) (not e!4352434))))

(assert (=> d!2257651 (= res!2943268 ((_ is Cons!70488) (exprs!8117 lt!2589095)))))

(assert (=> d!2257651 (= (derivationStepZipperUp!2501 lt!2589095 (h!76935 s1!1971)) e!4352433)))

(assert (= (and d!2257651 res!2943268) b!7258479))

(assert (= (and d!2257651 c!1350012) b!7258478))

(assert (= (and d!2257651 (not c!1350012)) b!7258476))

(assert (= (and b!7258476 c!1350013) b!7258480))

(assert (= (and b!7258476 (not c!1350013)) b!7258477))

(assert (= (or b!7258478 b!7258480) bm!661544))

(declare-fun m!7941534 () Bool)

(assert (=> bm!661544 m!7941534))

(declare-fun m!7941536 () Bool)

(assert (=> b!7258479 m!7941536))

(declare-fun m!7941538 () Bool)

(assert (=> b!7258478 m!7941538))

(assert (=> b!7258228 d!2257651))

(declare-fun d!2257653 () Bool)

(declare-fun c!1350014 () Bool)

(assert (=> d!2257653 (= c!1350014 (isEmpty!40591 (t!384675 s1!1971)))))

(declare-fun e!4352436 () Bool)

(assert (=> d!2257653 (= (matchZipper!3587 ((_ map or) lt!2589083 lt!2589089) (t!384675 s1!1971)) e!4352436)))

(declare-fun b!7258481 () Bool)

(assert (=> b!7258481 (= e!4352436 (nullableZipper!2933 ((_ map or) lt!2589083 lt!2589089)))))

(declare-fun b!7258482 () Bool)

(assert (=> b!7258482 (= e!4352436 (matchZipper!3587 (derivationStepZipper!3455 ((_ map or) lt!2589083 lt!2589089) (head!14930 (t!384675 s1!1971))) (tail!14378 (t!384675 s1!1971))))))

(assert (= (and d!2257653 c!1350014) b!7258481))

(assert (= (and d!2257653 (not c!1350014)) b!7258482))

(assert (=> d!2257653 m!7941516))

(declare-fun m!7941540 () Bool)

(assert (=> b!7258481 m!7941540))

(assert (=> b!7258482 m!7941520))

(assert (=> b!7258482 m!7941520))

(declare-fun m!7941542 () Bool)

(assert (=> b!7258482 m!7941542))

(assert (=> b!7258482 m!7941524))

(assert (=> b!7258482 m!7941542))

(assert (=> b!7258482 m!7941524))

(declare-fun m!7941544 () Bool)

(assert (=> b!7258482 m!7941544))

(assert (=> b!7258228 d!2257653))

(declare-fun e!4352437 () Bool)

(declare-fun d!2257655 () Bool)

(assert (=> d!2257655 (= (matchZipper!3587 ((_ map or) lt!2589083 lt!2589089) (t!384675 s1!1971)) e!4352437)))

(declare-fun res!2943269 () Bool)

(assert (=> d!2257655 (=> res!2943269 e!4352437)))

(assert (=> d!2257655 (= res!2943269 (matchZipper!3587 lt!2589083 (t!384675 s1!1971)))))

(declare-fun lt!2589184 () Unit!163976)

(assert (=> d!2257655 (= lt!2589184 (choose!56169 lt!2589083 lt!2589089 (t!384675 s1!1971)))))

(assert (=> d!2257655 (= (lemmaZipperConcatMatchesSameAsBothZippers!1732 lt!2589083 lt!2589089 (t!384675 s1!1971)) lt!2589184)))

(declare-fun b!7258483 () Bool)

(assert (=> b!7258483 (= e!4352437 (matchZipper!3587 lt!2589089 (t!384675 s1!1971)))))

(assert (= (and d!2257655 (not res!2943269)) b!7258483))

(assert (=> d!2257655 m!7941150))

(assert (=> d!2257655 m!7941140))

(declare-fun m!7941546 () Bool)

(assert (=> d!2257655 m!7941546))

(assert (=> b!7258483 m!7941156))

(assert (=> b!7258228 d!2257655))

(declare-fun d!2257657 () Bool)

(declare-fun c!1350015 () Bool)

(assert (=> d!2257657 (= c!1350015 (isEmpty!40591 s1!1971))))

(declare-fun e!4352438 () Bool)

(assert (=> d!2257657 (= (matchZipper!3587 lt!2589101 s1!1971) e!4352438)))

(declare-fun b!7258484 () Bool)

(assert (=> b!7258484 (= e!4352438 (nullableZipper!2933 lt!2589101))))

(declare-fun b!7258485 () Bool)

(assert (=> b!7258485 (= e!4352438 (matchZipper!3587 (derivationStepZipper!3455 lt!2589101 (head!14930 s1!1971)) (tail!14378 s1!1971)))))

(assert (= (and d!2257657 c!1350015) b!7258484))

(assert (= (and d!2257657 (not c!1350015)) b!7258485))

(declare-fun m!7941548 () Bool)

(assert (=> d!2257657 m!7941548))

(declare-fun m!7941550 () Bool)

(assert (=> b!7258484 m!7941550))

(declare-fun m!7941552 () Bool)

(assert (=> b!7258485 m!7941552))

(assert (=> b!7258485 m!7941552))

(declare-fun m!7941554 () Bool)

(assert (=> b!7258485 m!7941554))

(declare-fun m!7941556 () Bool)

(assert (=> b!7258485 m!7941556))

(assert (=> b!7258485 m!7941554))

(assert (=> b!7258485 m!7941556))

(declare-fun m!7941558 () Bool)

(assert (=> b!7258485 m!7941558))

(assert (=> start!707068 d!2257657))

(declare-fun bs!1908150 () Bool)

(declare-fun d!2257659 () Bool)

(assert (= bs!1908150 (and d!2257659 b!7258231)))

(declare-fun lambda!445871 () Int)

(assert (=> bs!1908150 (= lambda!445871 lambda!445840)))

(assert (=> d!2257659 (= (inv!89702 ct1!232) (forall!17530 (exprs!8117 ct1!232) lambda!445871))))

(declare-fun bs!1908151 () Bool)

(assert (= bs!1908151 d!2257659))

(declare-fun m!7941560 () Bool)

(assert (=> bs!1908151 m!7941560))

(assert (=> start!707068 d!2257659))

(declare-fun bs!1908152 () Bool)

(declare-fun d!2257661 () Bool)

(assert (= bs!1908152 (and d!2257661 b!7258231)))

(declare-fun lambda!445872 () Int)

(assert (=> bs!1908152 (= lambda!445872 lambda!445840)))

(declare-fun bs!1908153 () Bool)

(assert (= bs!1908153 (and d!2257661 d!2257659)))

(assert (=> bs!1908153 (= lambda!445872 lambda!445871)))

(assert (=> d!2257661 (= (inv!89702 ct2!328) (forall!17530 (exprs!8117 ct2!328) lambda!445872))))

(declare-fun bs!1908154 () Bool)

(assert (= bs!1908154 d!2257661))

(declare-fun m!7941562 () Bool)

(assert (=> bs!1908154 m!7941562))

(assert (=> start!707068 d!2257661))

(declare-fun d!2257663 () Bool)

(assert (=> d!2257663 (forall!17530 (++!16617 (exprs!8117 lt!2589090) (exprs!8117 ct2!328)) lambda!445840)))

(declare-fun lt!2589185 () Unit!163976)

(assert (=> d!2257663 (= lt!2589185 (choose!56165 (exprs!8117 lt!2589090) (exprs!8117 ct2!328) lambda!445840))))

(assert (=> d!2257663 (forall!17530 (exprs!8117 lt!2589090) lambda!445840)))

(assert (=> d!2257663 (= (lemmaConcatPreservesForall!1484 (exprs!8117 lt!2589090) (exprs!8117 ct2!328) lambda!445840) lt!2589185)))

(declare-fun bs!1908155 () Bool)

(assert (= bs!1908155 d!2257663))

(assert (=> bs!1908155 m!7941174))

(assert (=> bs!1908155 m!7941174))

(declare-fun m!7941564 () Bool)

(assert (=> bs!1908155 m!7941564))

(declare-fun m!7941566 () Bool)

(assert (=> bs!1908155 m!7941566))

(declare-fun m!7941568 () Bool)

(assert (=> bs!1908155 m!7941568))

(assert (=> b!7258229 d!2257663))

(declare-fun d!2257665 () Bool)

(assert (=> d!2257665 (= (isEmpty!40589 (exprs!8117 ct1!232)) ((_ is Nil!70488) (exprs!8117 ct1!232)))))

(assert (=> b!7258229 d!2257665))

(declare-fun e!4352443 () Bool)

(declare-fun lt!2589188 () List!70612)

(declare-fun b!7258497 () Bool)

(assert (=> b!7258497 (= e!4352443 (or (not (= (exprs!8117 ct2!328) Nil!70488)) (= lt!2589188 (exprs!8117 lt!2589090))))))

(declare-fun b!7258495 () Bool)

(declare-fun e!4352444 () List!70612)

(assert (=> b!7258495 (= e!4352444 (Cons!70488 (h!76936 (exprs!8117 lt!2589090)) (++!16617 (t!384676 (exprs!8117 lt!2589090)) (exprs!8117 ct2!328))))))

(declare-fun b!7258496 () Bool)

(declare-fun res!2943275 () Bool)

(assert (=> b!7258496 (=> (not res!2943275) (not e!4352443))))

(declare-fun size!41754 (List!70612) Int)

(assert (=> b!7258496 (= res!2943275 (= (size!41754 lt!2589188) (+ (size!41754 (exprs!8117 lt!2589090)) (size!41754 (exprs!8117 ct2!328)))))))

(declare-fun d!2257667 () Bool)

(assert (=> d!2257667 e!4352443))

(declare-fun res!2943274 () Bool)

(assert (=> d!2257667 (=> (not res!2943274) (not e!4352443))))

(declare-fun content!14667 (List!70612) (InoxSet Regex!18677))

(assert (=> d!2257667 (= res!2943274 (= (content!14667 lt!2589188) ((_ map or) (content!14667 (exprs!8117 lt!2589090)) (content!14667 (exprs!8117 ct2!328)))))))

(assert (=> d!2257667 (= lt!2589188 e!4352444)))

(declare-fun c!1350018 () Bool)

(assert (=> d!2257667 (= c!1350018 ((_ is Nil!70488) (exprs!8117 lt!2589090)))))

(assert (=> d!2257667 (= (++!16617 (exprs!8117 lt!2589090) (exprs!8117 ct2!328)) lt!2589188)))

(declare-fun b!7258494 () Bool)

(assert (=> b!7258494 (= e!4352444 (exprs!8117 ct2!328))))

(assert (= (and d!2257667 c!1350018) b!7258494))

(assert (= (and d!2257667 (not c!1350018)) b!7258495))

(assert (= (and d!2257667 res!2943274) b!7258496))

(assert (= (and b!7258496 res!2943275) b!7258497))

(declare-fun m!7941570 () Bool)

(assert (=> b!7258495 m!7941570))

(declare-fun m!7941572 () Bool)

(assert (=> b!7258496 m!7941572))

(declare-fun m!7941574 () Bool)

(assert (=> b!7258496 m!7941574))

(declare-fun m!7941576 () Bool)

(assert (=> b!7258496 m!7941576))

(declare-fun m!7941578 () Bool)

(assert (=> d!2257667 m!7941578))

(declare-fun m!7941580 () Bool)

(assert (=> d!2257667 m!7941580))

(declare-fun m!7941582 () Bool)

(assert (=> d!2257667 m!7941582))

(assert (=> b!7258229 d!2257667))

(declare-fun d!2257669 () Bool)

(declare-fun c!1350019 () Bool)

(assert (=> d!2257669 (= c!1350019 (isEmpty!40591 lt!2589116))))

(declare-fun e!4352445 () Bool)

(assert (=> d!2257669 (= (matchZipper!3587 (store ((as const (Array Context!15234 Bool)) false) lt!2589079 true) lt!2589116) e!4352445)))

(declare-fun b!7258498 () Bool)

(assert (=> b!7258498 (= e!4352445 (nullableZipper!2933 (store ((as const (Array Context!15234 Bool)) false) lt!2589079 true)))))

(declare-fun b!7258499 () Bool)

(assert (=> b!7258499 (= e!4352445 (matchZipper!3587 (derivationStepZipper!3455 (store ((as const (Array Context!15234 Bool)) false) lt!2589079 true) (head!14930 lt!2589116)) (tail!14378 lt!2589116)))))

(assert (= (and d!2257669 c!1350019) b!7258498))

(assert (= (and d!2257669 (not c!1350019)) b!7258499))

(assert (=> d!2257669 m!7941504))

(assert (=> b!7258498 m!7941166))

(declare-fun m!7941584 () Bool)

(assert (=> b!7258498 m!7941584))

(assert (=> b!7258499 m!7941508))

(assert (=> b!7258499 m!7941166))

(assert (=> b!7258499 m!7941508))

(declare-fun m!7941586 () Bool)

(assert (=> b!7258499 m!7941586))

(assert (=> b!7258499 m!7941512))

(assert (=> b!7258499 m!7941586))

(assert (=> b!7258499 m!7941512))

(declare-fun m!7941588 () Bool)

(assert (=> b!7258499 m!7941588))

(assert (=> b!7258229 d!2257669))

(declare-fun bs!1908156 () Bool)

(declare-fun d!2257671 () Bool)

(assert (= bs!1908156 (and d!2257671 b!7258231)))

(declare-fun lambda!445875 () Int)

(assert (=> bs!1908156 (= lambda!445875 lambda!445840)))

(declare-fun bs!1908157 () Bool)

(assert (= bs!1908157 (and d!2257671 d!2257659)))

(assert (=> bs!1908157 (= lambda!445875 lambda!445871)))

(declare-fun bs!1908158 () Bool)

(assert (= bs!1908158 (and d!2257671 d!2257661)))

(assert (=> bs!1908158 (= lambda!445875 lambda!445872)))

(assert (=> d!2257671 (matchZipper!3587 (store ((as const (Array Context!15234 Bool)) false) (Context!15235 (++!16617 (exprs!8117 lt!2589090) (exprs!8117 ct2!328))) true) (++!16616 (t!384675 s1!1971) s2!1849))))

(declare-fun lt!2589194 () Unit!163976)

(assert (=> d!2257671 (= lt!2589194 (lemmaConcatPreservesForall!1484 (exprs!8117 lt!2589090) (exprs!8117 ct2!328) lambda!445875))))

(declare-fun lt!2589193 () Unit!163976)

(declare-fun choose!56170 (Context!15234 Context!15234 List!70611 List!70611) Unit!163976)

(assert (=> d!2257671 (= lt!2589193 (choose!56170 lt!2589090 ct2!328 (t!384675 s1!1971) s2!1849))))

(assert (=> d!2257671 (matchZipper!3587 (store ((as const (Array Context!15234 Bool)) false) lt!2589090 true) (t!384675 s1!1971))))

(assert (=> d!2257671 (= (lemmaConcatenateContextMatchesConcatOfStrings!422 lt!2589090 ct2!328 (t!384675 s1!1971) s2!1849) lt!2589193)))

(declare-fun bs!1908159 () Bool)

(assert (= bs!1908159 d!2257671))

(declare-fun m!7941590 () Bool)

(assert (=> bs!1908159 m!7941590))

(declare-fun m!7941592 () Bool)

(assert (=> bs!1908159 m!7941592))

(declare-fun m!7941594 () Bool)

(assert (=> bs!1908159 m!7941594))

(assert (=> bs!1908159 m!7941168))

(declare-fun m!7941596 () Bool)

(assert (=> bs!1908159 m!7941596))

(assert (=> bs!1908159 m!7941174))

(assert (=> bs!1908159 m!7941594))

(declare-fun m!7941598 () Bool)

(assert (=> bs!1908159 m!7941598))

(declare-fun m!7941600 () Bool)

(assert (=> bs!1908159 m!7941600))

(assert (=> bs!1908159 m!7941590))

(assert (=> bs!1908159 m!7941168))

(assert (=> b!7258229 d!2257671))

(declare-fun e!4352450 () Bool)

(declare-fun b!7258511 () Bool)

(declare-fun lt!2589197 () List!70611)

(assert (=> b!7258511 (= e!4352450 (or (not (= s2!1849 Nil!70487)) (= lt!2589197 (t!384675 s1!1971))))))

(declare-fun d!2257673 () Bool)

(assert (=> d!2257673 e!4352450))

(declare-fun res!2943280 () Bool)

(assert (=> d!2257673 (=> (not res!2943280) (not e!4352450))))

(declare-fun content!14668 (List!70611) (InoxSet C!37628))

(assert (=> d!2257673 (= res!2943280 (= (content!14668 lt!2589197) ((_ map or) (content!14668 (t!384675 s1!1971)) (content!14668 s2!1849))))))

(declare-fun e!4352451 () List!70611)

(assert (=> d!2257673 (= lt!2589197 e!4352451)))

(declare-fun c!1350022 () Bool)

(assert (=> d!2257673 (= c!1350022 ((_ is Nil!70487) (t!384675 s1!1971)))))

(assert (=> d!2257673 (= (++!16616 (t!384675 s1!1971) s2!1849) lt!2589197)))

(declare-fun b!7258509 () Bool)

(assert (=> b!7258509 (= e!4352451 (Cons!70487 (h!76935 (t!384675 s1!1971)) (++!16616 (t!384675 (t!384675 s1!1971)) s2!1849)))))

(declare-fun b!7258508 () Bool)

(assert (=> b!7258508 (= e!4352451 s2!1849)))

(declare-fun b!7258510 () Bool)

(declare-fun res!2943281 () Bool)

(assert (=> b!7258510 (=> (not res!2943281) (not e!4352450))))

(declare-fun size!41755 (List!70611) Int)

(assert (=> b!7258510 (= res!2943281 (= (size!41755 lt!2589197) (+ (size!41755 (t!384675 s1!1971)) (size!41755 s2!1849))))))

(assert (= (and d!2257673 c!1350022) b!7258508))

(assert (= (and d!2257673 (not c!1350022)) b!7258509))

(assert (= (and d!2257673 res!2943280) b!7258510))

(assert (= (and b!7258510 res!2943281) b!7258511))

(declare-fun m!7941602 () Bool)

(assert (=> d!2257673 m!7941602))

(declare-fun m!7941604 () Bool)

(assert (=> d!2257673 m!7941604))

(declare-fun m!7941606 () Bool)

(assert (=> d!2257673 m!7941606))

(declare-fun m!7941608 () Bool)

(assert (=> b!7258509 m!7941608))

(declare-fun m!7941610 () Bool)

(assert (=> b!7258510 m!7941610))

(declare-fun m!7941612 () Bool)

(assert (=> b!7258510 m!7941612))

(declare-fun m!7941614 () Bool)

(assert (=> b!7258510 m!7941614))

(assert (=> b!7258229 d!2257673))

(declare-fun b!7258512 () Bool)

(declare-fun e!4352452 () (InoxSet Context!15234))

(declare-fun e!4352454 () (InoxSet Context!15234))

(assert (=> b!7258512 (= e!4352452 e!4352454)))

(declare-fun c!1350024 () Bool)

(assert (=> b!7258512 (= c!1350024 ((_ is Cons!70488) (exprs!8117 ct1!232)))))

(declare-fun b!7258513 () Bool)

(assert (=> b!7258513 (= e!4352454 ((as const (Array Context!15234 Bool)) false))))

(declare-fun bm!661545 () Bool)

(declare-fun call!661550 () (InoxSet Context!15234))

(assert (=> bm!661545 (= call!661550 (derivationStepZipperDown!2671 (h!76936 (exprs!8117 ct1!232)) (Context!15235 (t!384676 (exprs!8117 ct1!232))) (h!76935 s1!1971)))))

(declare-fun b!7258515 () Bool)

(declare-fun e!4352453 () Bool)

(assert (=> b!7258515 (= e!4352453 (nullable!7937 (h!76936 (exprs!8117 ct1!232))))))

(declare-fun b!7258516 () Bool)

(assert (=> b!7258516 (= e!4352454 call!661550)))

(declare-fun b!7258514 () Bool)

(assert (=> b!7258514 (= e!4352452 ((_ map or) call!661550 (derivationStepZipperUp!2501 (Context!15235 (t!384676 (exprs!8117 ct1!232))) (h!76935 s1!1971))))))

(declare-fun d!2257675 () Bool)

(declare-fun c!1350023 () Bool)

(assert (=> d!2257675 (= c!1350023 e!4352453)))

(declare-fun res!2943282 () Bool)

(assert (=> d!2257675 (=> (not res!2943282) (not e!4352453))))

(assert (=> d!2257675 (= res!2943282 ((_ is Cons!70488) (exprs!8117 ct1!232)))))

(assert (=> d!2257675 (= (derivationStepZipperUp!2501 ct1!232 (h!76935 s1!1971)) e!4352452)))

(assert (= (and d!2257675 res!2943282) b!7258515))

(assert (= (and d!2257675 c!1350023) b!7258514))

(assert (= (and d!2257675 (not c!1350023)) b!7258512))

(assert (= (and b!7258512 c!1350024) b!7258516))

(assert (= (and b!7258512 (not c!1350024)) b!7258513))

(assert (= (or b!7258514 b!7258516) bm!661545))

(declare-fun m!7941616 () Bool)

(assert (=> bm!661545 m!7941616))

(assert (=> b!7258515 m!7941110))

(declare-fun m!7941618 () Bool)

(assert (=> b!7258514 m!7941618))

(assert (=> b!7258229 d!2257675))

(declare-fun d!2257677 () Bool)

(declare-fun e!4352457 () Bool)

(assert (=> d!2257677 e!4352457))

(declare-fun res!2943285 () Bool)

(assert (=> d!2257677 (=> (not res!2943285) (not e!4352457))))

(declare-fun lt!2589200 () Context!15234)

(declare-fun dynLambda!28803 (Int Context!15234) Bool)

(assert (=> d!2257677 (= res!2943285 (dynLambda!28803 lambda!445841 lt!2589200))))

(declare-fun getWitness!2255 (List!70613 Int) Context!15234)

(assert (=> d!2257677 (= lt!2589200 (getWitness!2255 (toList!11506 lt!2589096) lambda!445841))))

(assert (=> d!2257677 (exists!4432 lt!2589096 lambda!445841)))

(assert (=> d!2257677 (= (getWitness!2253 lt!2589096 lambda!445841) lt!2589200)))

(declare-fun b!7258519 () Bool)

(assert (=> b!7258519 (= e!4352457 (select lt!2589096 lt!2589200))))

(assert (= (and d!2257677 res!2943285) b!7258519))

(declare-fun b_lambda!279117 () Bool)

(assert (=> (not b_lambda!279117) (not d!2257677)))

(declare-fun m!7941620 () Bool)

(assert (=> d!2257677 m!7941620))

(assert (=> d!2257677 m!7941130))

(assert (=> d!2257677 m!7941130))

(declare-fun m!7941622 () Bool)

(assert (=> d!2257677 m!7941622))

(assert (=> d!2257677 m!7941134))

(declare-fun m!7941624 () Bool)

(assert (=> b!7258519 m!7941624))

(assert (=> b!7258229 d!2257677))

(declare-fun b!7258523 () Bool)

(declare-fun lt!2589201 () List!70612)

(declare-fun e!4352458 () Bool)

(assert (=> b!7258523 (= e!4352458 (or (not (= (exprs!8117 ct2!328) Nil!70488)) (= lt!2589201 (exprs!8117 ct1!232))))))

(declare-fun b!7258521 () Bool)

(declare-fun e!4352459 () List!70612)

(assert (=> b!7258521 (= e!4352459 (Cons!70488 (h!76936 (exprs!8117 ct1!232)) (++!16617 (t!384676 (exprs!8117 ct1!232)) (exprs!8117 ct2!328))))))

(declare-fun b!7258522 () Bool)

(declare-fun res!2943287 () Bool)

(assert (=> b!7258522 (=> (not res!2943287) (not e!4352458))))

(assert (=> b!7258522 (= res!2943287 (= (size!41754 lt!2589201) (+ (size!41754 (exprs!8117 ct1!232)) (size!41754 (exprs!8117 ct2!328)))))))

(declare-fun d!2257679 () Bool)

(assert (=> d!2257679 e!4352458))

(declare-fun res!2943286 () Bool)

(assert (=> d!2257679 (=> (not res!2943286) (not e!4352458))))

(assert (=> d!2257679 (= res!2943286 (= (content!14667 lt!2589201) ((_ map or) (content!14667 (exprs!8117 ct1!232)) (content!14667 (exprs!8117 ct2!328)))))))

(assert (=> d!2257679 (= lt!2589201 e!4352459)))

(declare-fun c!1350025 () Bool)

(assert (=> d!2257679 (= c!1350025 ((_ is Nil!70488) (exprs!8117 ct1!232)))))

(assert (=> d!2257679 (= (++!16617 (exprs!8117 ct1!232) (exprs!8117 ct2!328)) lt!2589201)))

(declare-fun b!7258520 () Bool)

(assert (=> b!7258520 (= e!4352459 (exprs!8117 ct2!328))))

(assert (= (and d!2257679 c!1350025) b!7258520))

(assert (= (and d!2257679 (not c!1350025)) b!7258521))

(assert (= (and d!2257679 res!2943286) b!7258522))

(assert (= (and b!7258522 res!2943287) b!7258523))

(declare-fun m!7941626 () Bool)

(assert (=> b!7258521 m!7941626))

(declare-fun m!7941628 () Bool)

(assert (=> b!7258522 m!7941628))

(declare-fun m!7941630 () Bool)

(assert (=> b!7258522 m!7941630))

(assert (=> b!7258522 m!7941576))

(declare-fun m!7941632 () Bool)

(assert (=> d!2257679 m!7941632))

(declare-fun m!7941634 () Bool)

(assert (=> d!2257679 m!7941634))

(assert (=> d!2257679 m!7941582))

(assert (=> b!7258231 d!2257679))

(assert (=> b!7258231 d!2257623))

(assert (=> b!7258233 d!2257623))

(assert (=> b!7258233 d!2257635))

(declare-fun d!2257681 () Bool)

(declare-fun choose!56172 ((InoxSet Context!15234) Int) (InoxSet Context!15234))

(assert (=> d!2257681 (= (flatMap!2842 lt!2589084 lambda!445842) (choose!56172 lt!2589084 lambda!445842))))

(declare-fun bs!1908160 () Bool)

(assert (= bs!1908160 d!2257681))

(declare-fun m!7941636 () Bool)

(assert (=> bs!1908160 m!7941636))

(assert (=> b!7258233 d!2257681))

(assert (=> b!7258233 d!2257639))

(declare-fun d!2257683 () Bool)

(declare-fun nullableFct!3120 (Regex!18677) Bool)

(assert (=> d!2257683 (= (nullable!7937 (h!76936 (exprs!8117 ct1!232))) (nullableFct!3120 (h!76936 (exprs!8117 ct1!232))))))

(declare-fun bs!1908161 () Bool)

(assert (= bs!1908161 d!2257683))

(declare-fun m!7941638 () Bool)

(assert (=> bs!1908161 m!7941638))

(assert (=> b!7258233 d!2257683))

(declare-fun b!7258527 () Bool)

(declare-fun e!4352460 () Bool)

(declare-fun lt!2589202 () List!70611)

(assert (=> b!7258527 (= e!4352460 (or (not (= s2!1849 Nil!70487)) (= lt!2589202 s1!1971)))))

(declare-fun d!2257685 () Bool)

(assert (=> d!2257685 e!4352460))

(declare-fun res!2943288 () Bool)

(assert (=> d!2257685 (=> (not res!2943288) (not e!4352460))))

(assert (=> d!2257685 (= res!2943288 (= (content!14668 lt!2589202) ((_ map or) (content!14668 s1!1971) (content!14668 s2!1849))))))

(declare-fun e!4352461 () List!70611)

(assert (=> d!2257685 (= lt!2589202 e!4352461)))

(declare-fun c!1350026 () Bool)

(assert (=> d!2257685 (= c!1350026 ((_ is Nil!70487) s1!1971))))

(assert (=> d!2257685 (= (++!16616 s1!1971 s2!1849) lt!2589202)))

(declare-fun b!7258525 () Bool)

(assert (=> b!7258525 (= e!4352461 (Cons!70487 (h!76935 s1!1971) (++!16616 (t!384675 s1!1971) s2!1849)))))

(declare-fun b!7258524 () Bool)

(assert (=> b!7258524 (= e!4352461 s2!1849)))

(declare-fun b!7258526 () Bool)

(declare-fun res!2943289 () Bool)

(assert (=> b!7258526 (=> (not res!2943289) (not e!4352460))))

(assert (=> b!7258526 (= res!2943289 (= (size!41755 lt!2589202) (+ (size!41755 s1!1971) (size!41755 s2!1849))))))

(assert (= (and d!2257685 c!1350026) b!7258524))

(assert (= (and d!2257685 (not c!1350026)) b!7258525))

(assert (= (and d!2257685 res!2943288) b!7258526))

(assert (= (and b!7258526 res!2943289) b!7258527))

(declare-fun m!7941640 () Bool)

(assert (=> d!2257685 m!7941640))

(declare-fun m!7941642 () Bool)

(assert (=> d!2257685 m!7941642))

(assert (=> d!2257685 m!7941606))

(assert (=> b!7258525 m!7941168))

(declare-fun m!7941644 () Bool)

(assert (=> b!7258526 m!7941644))

(declare-fun m!7941646 () Bool)

(assert (=> b!7258526 m!7941646))

(assert (=> b!7258526 m!7941614))

(assert (=> b!7258233 d!2257685))

(declare-fun d!2257687 () Bool)

(declare-fun c!1350029 () Bool)

(assert (=> d!2257687 (= c!1350029 ((_ is Nil!70489) lt!2589112))))

(declare-fun e!4352464 () (InoxSet Context!15234))

(assert (=> d!2257687 (= (content!14664 lt!2589112) e!4352464)))

(declare-fun b!7258532 () Bool)

(assert (=> b!7258532 (= e!4352464 ((as const (Array Context!15234 Bool)) false))))

(declare-fun b!7258533 () Bool)

(assert (=> b!7258533 (= e!4352464 ((_ map or) (store ((as const (Array Context!15234 Bool)) false) (h!76937 lt!2589112) true) (content!14664 (t!384677 lt!2589112))))))

(assert (= (and d!2257687 c!1350029) b!7258532))

(assert (= (and d!2257687 (not c!1350029)) b!7258533))

(declare-fun m!7941648 () Bool)

(assert (=> b!7258533 m!7941648))

(declare-fun m!7941650 () Bool)

(assert (=> b!7258533 m!7941650))

(assert (=> b!7258233 d!2257687))

(declare-fun b!7258534 () Bool)

(declare-fun e!4352467 () Bool)

(assert (=> b!7258534 (= e!4352467 (nullable!7937 (regOne!37866 (h!76936 (exprs!8117 ct1!232)))))))

(declare-fun b!7258535 () Bool)

(declare-fun c!1350033 () Bool)

(assert (=> b!7258535 (= c!1350033 e!4352467)))

(declare-fun res!2943290 () Bool)

(assert (=> b!7258535 (=> (not res!2943290) (not e!4352467))))

(assert (=> b!7258535 (= res!2943290 ((_ is Concat!27522) (h!76936 (exprs!8117 ct1!232))))))

(declare-fun e!4352465 () (InoxSet Context!15234))

(declare-fun e!4352468 () (InoxSet Context!15234))

(assert (=> b!7258535 (= e!4352465 e!4352468)))

(declare-fun b!7258536 () Bool)

(declare-fun e!4352469 () (InoxSet Context!15234))

(assert (=> b!7258536 (= e!4352469 (store ((as const (Array Context!15234 Bool)) false) lt!2589095 true))))

(declare-fun c!1350031 () Bool)

(declare-fun bm!661547 () Bool)

(declare-fun call!661553 () List!70612)

(assert (=> bm!661547 (= call!661553 ($colon$colon!2935 (exprs!8117 lt!2589095) (ite (or c!1350033 c!1350031) (regTwo!37866 (h!76936 (exprs!8117 ct1!232))) (h!76936 (exprs!8117 ct1!232)))))))

(declare-fun bm!661548 () Bool)

(declare-fun call!661556 () List!70612)

(assert (=> bm!661548 (= call!661556 call!661553)))

(declare-fun b!7258537 () Bool)

(declare-fun call!661552 () (InoxSet Context!15234))

(declare-fun call!661551 () (InoxSet Context!15234))

(assert (=> b!7258537 (= e!4352468 ((_ map or) call!661552 call!661551))))

(declare-fun b!7258538 () Bool)

(declare-fun e!4352466 () (InoxSet Context!15234))

(assert (=> b!7258538 (= e!4352468 e!4352466)))

(assert (=> b!7258538 (= c!1350031 ((_ is Concat!27522) (h!76936 (exprs!8117 ct1!232))))))

(declare-fun bm!661549 () Bool)

(declare-fun c!1350034 () Bool)

(assert (=> bm!661549 (= call!661552 (derivationStepZipperDown!2671 (ite c!1350034 (regTwo!37867 (h!76936 (exprs!8117 ct1!232))) (regOne!37866 (h!76936 (exprs!8117 ct1!232)))) (ite c!1350034 lt!2589095 (Context!15235 call!661553)) (h!76935 s1!1971)))))

(declare-fun b!7258539 () Bool)

(declare-fun call!661554 () (InoxSet Context!15234))

(assert (=> b!7258539 (= e!4352465 ((_ map or) call!661554 call!661552))))

(declare-fun b!7258540 () Bool)

(declare-fun e!4352470 () (InoxSet Context!15234))

(declare-fun call!661555 () (InoxSet Context!15234))

(assert (=> b!7258540 (= e!4352470 call!661555)))

(declare-fun bm!661550 () Bool)

(assert (=> bm!661550 (= call!661551 call!661554)))

(declare-fun d!2257689 () Bool)

(declare-fun c!1350032 () Bool)

(assert (=> d!2257689 (= c!1350032 (and ((_ is ElementMatch!18677) (h!76936 (exprs!8117 ct1!232))) (= (c!1349919 (h!76936 (exprs!8117 ct1!232))) (h!76935 s1!1971))))))

(assert (=> d!2257689 (= (derivationStepZipperDown!2671 (h!76936 (exprs!8117 ct1!232)) lt!2589095 (h!76935 s1!1971)) e!4352469)))

(declare-fun bm!661546 () Bool)

(assert (=> bm!661546 (= call!661554 (derivationStepZipperDown!2671 (ite c!1350034 (regOne!37867 (h!76936 (exprs!8117 ct1!232))) (ite c!1350033 (regTwo!37866 (h!76936 (exprs!8117 ct1!232))) (ite c!1350031 (regOne!37866 (h!76936 (exprs!8117 ct1!232))) (reg!19006 (h!76936 (exprs!8117 ct1!232)))))) (ite (or c!1350034 c!1350033) lt!2589095 (Context!15235 call!661556)) (h!76935 s1!1971)))))

(declare-fun bm!661551 () Bool)

(assert (=> bm!661551 (= call!661555 call!661551)))

(declare-fun b!7258541 () Bool)

(assert (=> b!7258541 (= e!4352470 ((as const (Array Context!15234 Bool)) false))))

(declare-fun b!7258542 () Bool)

(assert (=> b!7258542 (= e!4352469 e!4352465)))

(assert (=> b!7258542 (= c!1350034 ((_ is Union!18677) (h!76936 (exprs!8117 ct1!232))))))

(declare-fun b!7258543 () Bool)

(assert (=> b!7258543 (= e!4352466 call!661555)))

(declare-fun b!7258544 () Bool)

(declare-fun c!1350030 () Bool)

(assert (=> b!7258544 (= c!1350030 ((_ is Star!18677) (h!76936 (exprs!8117 ct1!232))))))

(assert (=> b!7258544 (= e!4352466 e!4352470)))

(assert (= (and d!2257689 c!1350032) b!7258536))

(assert (= (and d!2257689 (not c!1350032)) b!7258542))

(assert (= (and b!7258542 c!1350034) b!7258539))

(assert (= (and b!7258542 (not c!1350034)) b!7258535))

(assert (= (and b!7258535 res!2943290) b!7258534))

(assert (= (and b!7258535 c!1350033) b!7258537))

(assert (= (and b!7258535 (not c!1350033)) b!7258538))

(assert (= (and b!7258538 c!1350031) b!7258543))

(assert (= (and b!7258538 (not c!1350031)) b!7258544))

(assert (= (and b!7258544 c!1350030) b!7258540))

(assert (= (and b!7258544 (not c!1350030)) b!7258541))

(assert (= (or b!7258543 b!7258540) bm!661548))

(assert (= (or b!7258543 b!7258540) bm!661551))

(assert (= (or b!7258537 bm!661548) bm!661547))

(assert (= (or b!7258537 bm!661551) bm!661550))

(assert (= (or b!7258539 b!7258537) bm!661549))

(assert (= (or b!7258539 bm!661550) bm!661546))

(assert (=> b!7258534 m!7941482))

(declare-fun m!7941652 () Bool)

(assert (=> bm!661546 m!7941652))

(declare-fun m!7941654 () Bool)

(assert (=> bm!661549 m!7941654))

(declare-fun m!7941656 () Bool)

(assert (=> b!7258536 m!7941656))

(declare-fun m!7941658 () Bool)

(assert (=> bm!661547 m!7941658))

(assert (=> b!7258233 d!2257689))

(assert (=> b!7258233 d!2257675))

(declare-fun d!2257691 () Bool)

(assert (=> d!2257691 (= (flatMap!2842 lt!2589101 lambda!445842) (choose!56172 lt!2589101 lambda!445842))))

(declare-fun bs!1908162 () Bool)

(assert (= bs!1908162 d!2257691))

(declare-fun m!7941660 () Bool)

(assert (=> bs!1908162 m!7941660))

(assert (=> b!7258233 d!2257691))

(declare-fun bs!1908163 () Bool)

(declare-fun d!2257693 () Bool)

(assert (= bs!1908163 (and d!2257693 b!7258231)))

(declare-fun lambda!445880 () Int)

(assert (=> bs!1908163 (= lambda!445880 lambda!445840)))

(declare-fun bs!1908164 () Bool)

(assert (= bs!1908164 (and d!2257693 d!2257659)))

(assert (=> bs!1908164 (= lambda!445880 lambda!445871)))

(declare-fun bs!1908165 () Bool)

(assert (= bs!1908165 (and d!2257693 d!2257661)))

(assert (=> bs!1908165 (= lambda!445880 lambda!445872)))

(declare-fun bs!1908166 () Bool)

(assert (= bs!1908166 (and d!2257693 d!2257671)))

(assert (=> bs!1908166 (= lambda!445880 lambda!445875)))

(assert (=> d!2257693 (select (derivationStepZipperUp!2501 (Context!15235 (++!16617 (exprs!8117 ct1!232) (exprs!8117 ct2!328))) (h!76935 s1!1971)) (Context!15235 (++!16617 (exprs!8117 lt!2589090) (exprs!8117 ct2!328))))))

(declare-fun lt!2589211 () Unit!163976)

(assert (=> d!2257693 (= lt!2589211 (lemmaConcatPreservesForall!1484 (exprs!8117 ct1!232) (exprs!8117 ct2!328) lambda!445880))))

(declare-fun lt!2589210 () Unit!163976)

(assert (=> d!2257693 (= lt!2589210 (lemmaConcatPreservesForall!1484 (exprs!8117 lt!2589090) (exprs!8117 ct2!328) lambda!445880))))

(declare-fun lt!2589209 () Unit!163976)

(declare-fun choose!56173 (Context!15234 Context!15234 Context!15234 C!37628) Unit!163976)

(assert (=> d!2257693 (= lt!2589209 (choose!56173 ct1!232 ct2!328 lt!2589090 (h!76935 s1!1971)))))

(assert (=> d!2257693 (select (derivationStepZipperUp!2501 ct1!232 (h!76935 s1!1971)) lt!2589090)))

(assert (=> d!2257693 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!32 ct1!232 ct2!328 lt!2589090 (h!76935 s1!1971)) lt!2589209)))

(declare-fun bs!1908167 () Bool)

(assert (= bs!1908167 d!2257693))

(declare-fun m!7941662 () Bool)

(assert (=> bs!1908167 m!7941662))

(assert (=> bs!1908167 m!7941174))

(declare-fun m!7941664 () Bool)

(assert (=> bs!1908167 m!7941664))

(declare-fun m!7941666 () Bool)

(assert (=> bs!1908167 m!7941666))

(declare-fun m!7941668 () Bool)

(assert (=> bs!1908167 m!7941668))

(assert (=> bs!1908167 m!7941154))

(declare-fun m!7941670 () Bool)

(assert (=> bs!1908167 m!7941670))

(assert (=> bs!1908167 m!7941120))

(declare-fun m!7941672 () Bool)

(assert (=> bs!1908167 m!7941672))

(assert (=> b!7258233 d!2257693))

(declare-fun d!2257695 () Bool)

(assert (=> d!2257695 (exists!4432 lt!2589106 lambda!445843)))

(declare-fun lt!2589214 () Unit!163976)

(declare-fun choose!56174 ((InoxSet Context!15234) Context!15234 Int) Unit!163976)

(assert (=> d!2257695 (= lt!2589214 (choose!56174 lt!2589106 lt!2589079 lambda!445843))))

(assert (=> d!2257695 (select lt!2589106 lt!2589079)))

(assert (=> d!2257695 (= (lemmaContainsThenExists!225 lt!2589106 lt!2589079 lambda!445843) lt!2589214)))

(declare-fun bs!1908168 () Bool)

(assert (= bs!1908168 d!2257695))

(assert (=> bs!1908168 m!7941080))

(declare-fun m!7941674 () Bool)

(assert (=> bs!1908168 m!7941674))

(assert (=> bs!1908168 m!7941106))

(assert (=> b!7258233 d!2257695))

(assert (=> b!7258233 d!2257663))

(declare-fun d!2257697 () Bool)

(declare-fun dynLambda!28804 (Int Context!15234) (InoxSet Context!15234))

(assert (=> d!2257697 (= (flatMap!2842 lt!2589101 lambda!445842) (dynLambda!28804 lambda!445842 ct1!232))))

(declare-fun lt!2589217 () Unit!163976)

(declare-fun choose!56175 ((InoxSet Context!15234) Context!15234 Int) Unit!163976)

(assert (=> d!2257697 (= lt!2589217 (choose!56175 lt!2589101 ct1!232 lambda!445842))))

(assert (=> d!2257697 (= lt!2589101 (store ((as const (Array Context!15234 Bool)) false) ct1!232 true))))

(assert (=> d!2257697 (= (lemmaFlatMapOnSingletonSet!2246 lt!2589101 ct1!232 lambda!445842) lt!2589217)))

(declare-fun b_lambda!279119 () Bool)

(assert (=> (not b_lambda!279119) (not d!2257697)))

(declare-fun bs!1908169 () Bool)

(assert (= bs!1908169 d!2257697))

(assert (=> bs!1908169 m!7941096))

(declare-fun m!7941676 () Bool)

(assert (=> bs!1908169 m!7941676))

(declare-fun m!7941678 () Bool)

(assert (=> bs!1908169 m!7941678))

(assert (=> bs!1908169 m!7941062))

(assert (=> b!7258233 d!2257697))

(declare-fun d!2257699 () Bool)

(assert (=> d!2257699 (= (flatMap!2842 lt!2589084 lambda!445842) (dynLambda!28804 lambda!445842 lt!2589102))))

(declare-fun lt!2589218 () Unit!163976)

(assert (=> d!2257699 (= lt!2589218 (choose!56175 lt!2589084 lt!2589102 lambda!445842))))

(assert (=> d!2257699 (= lt!2589084 (store ((as const (Array Context!15234 Bool)) false) lt!2589102 true))))

(assert (=> d!2257699 (= (lemmaFlatMapOnSingletonSet!2246 lt!2589084 lt!2589102 lambda!445842) lt!2589218)))

(declare-fun b_lambda!279121 () Bool)

(assert (=> (not b_lambda!279121) (not d!2257699)))

(declare-fun bs!1908170 () Bool)

(assert (= bs!1908170 d!2257699))

(assert (=> bs!1908170 m!7941098))

(declare-fun m!7941680 () Bool)

(assert (=> bs!1908170 m!7941680))

(declare-fun m!7941682 () Bool)

(assert (=> bs!1908170 m!7941682))

(assert (=> bs!1908170 m!7941152))

(assert (=> b!7258233 d!2257699))

(declare-fun d!2257701 () Bool)

(declare-fun e!4352474 () Bool)

(assert (=> d!2257701 e!4352474))

(declare-fun res!2943293 () Bool)

(assert (=> d!2257701 (=> (not res!2943293) (not e!4352474))))

(declare-fun lt!2589221 () List!70613)

(declare-fun noDuplicate!3008 (List!70613) Bool)

(assert (=> d!2257701 (= res!2943293 (noDuplicate!3008 lt!2589221))))

(declare-fun choose!56176 ((InoxSet Context!15234)) List!70613)

(assert (=> d!2257701 (= lt!2589221 (choose!56176 lt!2589106))))

(assert (=> d!2257701 (= (toList!11506 lt!2589106) lt!2589221)))

(declare-fun b!7258547 () Bool)

(assert (=> b!7258547 (= e!4352474 (= (content!14664 lt!2589221) lt!2589106))))

(assert (= (and d!2257701 res!2943293) b!7258547))

(declare-fun m!7941684 () Bool)

(assert (=> d!2257701 m!7941684))

(declare-fun m!7941686 () Bool)

(assert (=> d!2257701 m!7941686))

(declare-fun m!7941688 () Bool)

(assert (=> b!7258547 m!7941688))

(assert (=> b!7258233 d!2257701))

(declare-fun d!2257703 () Bool)

(assert (=> d!2257703 (= (tail!14379 lt!2589110) (t!384676 lt!2589110))))

(assert (=> b!7258233 d!2257703))

(declare-fun d!2257705 () Bool)

(declare-fun c!1350036 () Bool)

(assert (=> d!2257705 (= c!1350036 (isEmpty!40591 lt!2589116))))

(declare-fun e!4352475 () Bool)

(assert (=> d!2257705 (= (matchZipper!3587 lt!2589106 lt!2589116) e!4352475)))

(declare-fun b!7258548 () Bool)

(assert (=> b!7258548 (= e!4352475 (nullableZipper!2933 lt!2589106))))

(declare-fun b!7258549 () Bool)

(assert (=> b!7258549 (= e!4352475 (matchZipper!3587 (derivationStepZipper!3455 lt!2589106 (head!14930 lt!2589116)) (tail!14378 lt!2589116)))))

(assert (= (and d!2257705 c!1350036) b!7258548))

(assert (= (and d!2257705 (not c!1350036)) b!7258549))

(assert (=> d!2257705 m!7941504))

(declare-fun m!7941690 () Bool)

(assert (=> b!7258548 m!7941690))

(assert (=> b!7258549 m!7941508))

(assert (=> b!7258549 m!7941508))

(declare-fun m!7941692 () Bool)

(assert (=> b!7258549 m!7941692))

(assert (=> b!7258549 m!7941512))

(assert (=> b!7258549 m!7941692))

(assert (=> b!7258549 m!7941512))

(declare-fun m!7941694 () Bool)

(assert (=> b!7258549 m!7941694))

(assert (=> b!7258233 d!2257705))

(declare-fun d!2257707 () Bool)

(declare-fun c!1350037 () Bool)

(assert (=> d!2257707 (= c!1350037 (isEmpty!40591 lt!2589116))))

(declare-fun e!4352476 () Bool)

(assert (=> d!2257707 (= (matchZipper!3587 (content!14664 lt!2589112) lt!2589116) e!4352476)))

(declare-fun b!7258550 () Bool)

(assert (=> b!7258550 (= e!4352476 (nullableZipper!2933 (content!14664 lt!2589112)))))

(declare-fun b!7258551 () Bool)

(assert (=> b!7258551 (= e!4352476 (matchZipper!3587 (derivationStepZipper!3455 (content!14664 lt!2589112) (head!14930 lt!2589116)) (tail!14378 lt!2589116)))))

(assert (= (and d!2257707 c!1350037) b!7258550))

(assert (= (and d!2257707 (not c!1350037)) b!7258551))

(assert (=> d!2257707 m!7941504))

(assert (=> b!7258550 m!7941102))

(declare-fun m!7941696 () Bool)

(assert (=> b!7258550 m!7941696))

(assert (=> b!7258551 m!7941508))

(assert (=> b!7258551 m!7941102))

(assert (=> b!7258551 m!7941508))

(declare-fun m!7941698 () Bool)

(assert (=> b!7258551 m!7941698))

(assert (=> b!7258551 m!7941512))

(assert (=> b!7258551 m!7941698))

(assert (=> b!7258551 m!7941512))

(declare-fun m!7941700 () Bool)

(assert (=> b!7258551 m!7941700))

(assert (=> b!7258233 d!2257707))

(declare-fun bs!1908171 () Bool)

(declare-fun d!2257709 () Bool)

(assert (= bs!1908171 (and d!2257709 b!7258236)))

(declare-fun lambda!445883 () Int)

(assert (=> bs!1908171 (= (= lt!2589116 (t!384675 s1!1971)) (= lambda!445883 lambda!445841))))

(declare-fun bs!1908172 () Bool)

(assert (= bs!1908172 (and d!2257709 b!7258233)))

(assert (=> bs!1908172 (= lambda!445883 lambda!445843)))

(assert (=> d!2257709 true))

(assert (=> d!2257709 (matchZipper!3587 (content!14664 lt!2589112) lt!2589116)))

(declare-fun lt!2589224 () Unit!163976)

(declare-fun choose!56177 (List!70613 List!70611) Unit!163976)

(assert (=> d!2257709 (= lt!2589224 (choose!56177 lt!2589112 lt!2589116))))

(assert (=> d!2257709 (exists!4433 lt!2589112 lambda!445883)))

(assert (=> d!2257709 (= (lemmaExistsMatchingContextThenMatchingString!86 lt!2589112 lt!2589116) lt!2589224)))

(declare-fun bs!1908173 () Bool)

(assert (= bs!1908173 d!2257709))

(assert (=> bs!1908173 m!7941102))

(assert (=> bs!1908173 m!7941102))

(assert (=> bs!1908173 m!7941104))

(declare-fun m!7941702 () Bool)

(assert (=> bs!1908173 m!7941702))

(declare-fun m!7941704 () Bool)

(assert (=> bs!1908173 m!7941704))

(assert (=> b!7258233 d!2257709))

(declare-fun d!2257711 () Bool)

(assert (=> d!2257711 (= (tail!14378 (++!16616 s1!1971 s2!1849)) (t!384675 (++!16616 s1!1971 s2!1849)))))

(assert (=> b!7258233 d!2257711))

(declare-fun d!2257713 () Bool)

(declare-fun c!1350040 () Bool)

(assert (=> d!2257713 (= c!1350040 (isEmpty!40591 s2!1849))))

(declare-fun e!4352477 () Bool)

(assert (=> d!2257713 (= (matchZipper!3587 (store ((as const (Array Context!15234 Bool)) false) ct2!328 true) s2!1849) e!4352477)))

(declare-fun b!7258552 () Bool)

(assert (=> b!7258552 (= e!4352477 (nullableZipper!2933 (store ((as const (Array Context!15234 Bool)) false) ct2!328 true)))))

(declare-fun b!7258553 () Bool)

(assert (=> b!7258553 (= e!4352477 (matchZipper!3587 (derivationStepZipper!3455 (store ((as const (Array Context!15234 Bool)) false) ct2!328 true) (head!14930 s2!1849)) (tail!14378 s2!1849)))))

(assert (= (and d!2257713 c!1350040) b!7258552))

(assert (= (and d!2257713 (not c!1350040)) b!7258553))

(declare-fun m!7941706 () Bool)

(assert (=> d!2257713 m!7941706))

(assert (=> b!7258552 m!7941082))

(declare-fun m!7941708 () Bool)

(assert (=> b!7258552 m!7941708))

(declare-fun m!7941710 () Bool)

(assert (=> b!7258553 m!7941710))

(assert (=> b!7258553 m!7941082))

(assert (=> b!7258553 m!7941710))

(declare-fun m!7941712 () Bool)

(assert (=> b!7258553 m!7941712))

(declare-fun m!7941714 () Bool)

(assert (=> b!7258553 m!7941714))

(assert (=> b!7258553 m!7941712))

(assert (=> b!7258553 m!7941714))

(declare-fun m!7941716 () Bool)

(assert (=> b!7258553 m!7941716))

(assert (=> b!7258234 d!2257713))

(declare-fun d!2257715 () Bool)

(declare-fun c!1350041 () Bool)

(assert (=> d!2257715 (= c!1350041 (isEmpty!40591 lt!2589116))))

(declare-fun e!4352478 () Bool)

(assert (=> d!2257715 (= (matchZipper!3587 lt!2589105 lt!2589116) e!4352478)))

(declare-fun b!7258554 () Bool)

(assert (=> b!7258554 (= e!4352478 (nullableZipper!2933 lt!2589105))))

(declare-fun b!7258555 () Bool)

(assert (=> b!7258555 (= e!4352478 (matchZipper!3587 (derivationStepZipper!3455 lt!2589105 (head!14930 lt!2589116)) (tail!14378 lt!2589116)))))

(assert (= (and d!2257715 c!1350041) b!7258554))

(assert (= (and d!2257715 (not c!1350041)) b!7258555))

(assert (=> d!2257715 m!7941504))

(declare-fun m!7941718 () Bool)

(assert (=> b!7258554 m!7941718))

(assert (=> b!7258555 m!7941508))

(assert (=> b!7258555 m!7941508))

(declare-fun m!7941720 () Bool)

(assert (=> b!7258555 m!7941720))

(assert (=> b!7258555 m!7941512))

(assert (=> b!7258555 m!7941720))

(assert (=> b!7258555 m!7941512))

(declare-fun m!7941722 () Bool)

(assert (=> b!7258555 m!7941722))

(assert (=> b!7258224 d!2257715))

(declare-fun d!2257717 () Bool)

(declare-fun c!1350042 () Bool)

(assert (=> d!2257717 (= c!1350042 (isEmpty!40591 (t!384675 s1!1971)))))

(declare-fun e!4352479 () Bool)

(assert (=> d!2257717 (= (matchZipper!3587 lt!2589096 (t!384675 s1!1971)) e!4352479)))

(declare-fun b!7258556 () Bool)

(assert (=> b!7258556 (= e!4352479 (nullableZipper!2933 lt!2589096))))

(declare-fun b!7258557 () Bool)

(assert (=> b!7258557 (= e!4352479 (matchZipper!3587 (derivationStepZipper!3455 lt!2589096 (head!14930 (t!384675 s1!1971))) (tail!14378 (t!384675 s1!1971))))))

(assert (= (and d!2257717 c!1350042) b!7258556))

(assert (= (and d!2257717 (not c!1350042)) b!7258557))

(assert (=> d!2257717 m!7941516))

(declare-fun m!7941724 () Bool)

(assert (=> b!7258556 m!7941724))

(assert (=> b!7258557 m!7941520))

(assert (=> b!7258557 m!7941520))

(declare-fun m!7941726 () Bool)

(assert (=> b!7258557 m!7941726))

(assert (=> b!7258557 m!7941524))

(assert (=> b!7258557 m!7941726))

(assert (=> b!7258557 m!7941524))

(declare-fun m!7941728 () Bool)

(assert (=> b!7258557 m!7941728))

(assert (=> b!7258235 d!2257717))

(declare-fun bs!1908174 () Bool)

(declare-fun d!2257719 () Bool)

(assert (= bs!1908174 (and d!2257719 b!7258233)))

(declare-fun lambda!445886 () Int)

(assert (=> bs!1908174 (= lambda!445886 lambda!445842)))

(assert (=> d!2257719 true))

(assert (=> d!2257719 (= (derivationStepZipper!3455 lt!2589101 (h!76935 s1!1971)) (flatMap!2842 lt!2589101 lambda!445886))))

(declare-fun bs!1908175 () Bool)

(assert (= bs!1908175 d!2257719))

(declare-fun m!7941730 () Bool)

(assert (=> bs!1908175 m!7941730))

(assert (=> b!7258235 d!2257719))

(declare-fun d!2257721 () Bool)

(declare-fun c!1350045 () Bool)

(assert (=> d!2257721 (= c!1350045 (isEmpty!40591 (t!384675 s1!1971)))))

(declare-fun e!4352480 () Bool)

(assert (=> d!2257721 (= (matchZipper!3587 lt!2589089 (t!384675 s1!1971)) e!4352480)))

(declare-fun b!7258560 () Bool)

(assert (=> b!7258560 (= e!4352480 (nullableZipper!2933 lt!2589089))))

(declare-fun b!7258561 () Bool)

(assert (=> b!7258561 (= e!4352480 (matchZipper!3587 (derivationStepZipper!3455 lt!2589089 (head!14930 (t!384675 s1!1971))) (tail!14378 (t!384675 s1!1971))))))

(assert (= (and d!2257721 c!1350045) b!7258560))

(assert (= (and d!2257721 (not c!1350045)) b!7258561))

(assert (=> d!2257721 m!7941516))

(declare-fun m!7941732 () Bool)

(assert (=> b!7258560 m!7941732))

(assert (=> b!7258561 m!7941520))

(assert (=> b!7258561 m!7941520))

(declare-fun m!7941734 () Bool)

(assert (=> b!7258561 m!7941734))

(assert (=> b!7258561 m!7941524))

(assert (=> b!7258561 m!7941734))

(assert (=> b!7258561 m!7941524))

(declare-fun m!7941736 () Bool)

(assert (=> b!7258561 m!7941736))

(assert (=> b!7258225 d!2257721))

(declare-fun d!2257723 () Bool)

(declare-fun e!4352481 () Bool)

(assert (=> d!2257723 e!4352481))

(declare-fun res!2943294 () Bool)

(assert (=> d!2257723 (=> (not res!2943294) (not e!4352481))))

(declare-fun lt!2589225 () List!70613)

(assert (=> d!2257723 (= res!2943294 (noDuplicate!3008 lt!2589225))))

(assert (=> d!2257723 (= lt!2589225 (choose!56176 lt!2589096))))

(assert (=> d!2257723 (= (toList!11506 lt!2589096) lt!2589225)))

(declare-fun b!7258562 () Bool)

(assert (=> b!7258562 (= e!4352481 (= (content!14664 lt!2589225) lt!2589096))))

(assert (= (and d!2257723 res!2943294) b!7258562))

(declare-fun m!7941738 () Bool)

(assert (=> d!2257723 m!7941738))

(declare-fun m!7941740 () Bool)

(assert (=> d!2257723 m!7941740))

(declare-fun m!7941742 () Bool)

(assert (=> b!7258562 m!7941742))

(assert (=> b!7258236 d!2257723))

(declare-fun bs!1908176 () Bool)

(declare-fun d!2257725 () Bool)

(assert (= bs!1908176 (and d!2257725 b!7258236)))

(declare-fun lambda!445889 () Int)

(assert (=> bs!1908176 (not (= lambda!445889 lambda!445841))))

(declare-fun bs!1908177 () Bool)

(assert (= bs!1908177 (and d!2257725 b!7258233)))

(assert (=> bs!1908177 (not (= lambda!445889 lambda!445843))))

(declare-fun bs!1908178 () Bool)

(assert (= bs!1908178 (and d!2257725 d!2257709)))

(assert (=> bs!1908178 (not (= lambda!445889 lambda!445883))))

(assert (=> d!2257725 true))

(declare-fun order!29027 () Int)

(declare-fun dynLambda!28805 (Int Int) Int)

(assert (=> d!2257725 (< (dynLambda!28805 order!29027 lambda!445841) (dynLambda!28805 order!29027 lambda!445889))))

(declare-fun forall!17532 (List!70613 Int) Bool)

(assert (=> d!2257725 (= (exists!4433 lt!2589111 lambda!445841) (not (forall!17532 lt!2589111 lambda!445889)))))

(declare-fun bs!1908179 () Bool)

(assert (= bs!1908179 d!2257725))

(declare-fun m!7941744 () Bool)

(assert (=> bs!1908179 m!7941744))

(assert (=> b!7258236 d!2257725))

(declare-fun d!2257727 () Bool)

(declare-fun lt!2589226 () Bool)

(assert (=> d!2257727 (= lt!2589226 (exists!4433 (toList!11506 lt!2589096) lambda!445841))))

(assert (=> d!2257727 (= lt!2589226 (choose!56167 lt!2589096 lambda!445841))))

(assert (=> d!2257727 (= (exists!4432 lt!2589096 lambda!445841) lt!2589226)))

(declare-fun bs!1908180 () Bool)

(assert (= bs!1908180 d!2257727))

(assert (=> bs!1908180 m!7941130))

(assert (=> bs!1908180 m!7941130))

(declare-fun m!7941746 () Bool)

(assert (=> bs!1908180 m!7941746))

(declare-fun m!7941748 () Bool)

(assert (=> bs!1908180 m!7941748))

(assert (=> b!7258236 d!2257727))

(declare-fun bs!1908181 () Bool)

(declare-fun d!2257729 () Bool)

(assert (= bs!1908181 (and d!2257729 b!7258236)))

(declare-fun lambda!445892 () Int)

(assert (=> bs!1908181 (= lambda!445892 lambda!445841)))

(declare-fun bs!1908182 () Bool)

(assert (= bs!1908182 (and d!2257729 b!7258233)))

(assert (=> bs!1908182 (= (= (t!384675 s1!1971) lt!2589116) (= lambda!445892 lambda!445843))))

(declare-fun bs!1908183 () Bool)

(assert (= bs!1908183 (and d!2257729 d!2257709)))

(assert (=> bs!1908183 (= (= (t!384675 s1!1971) lt!2589116) (= lambda!445892 lambda!445883))))

(declare-fun bs!1908184 () Bool)

(assert (= bs!1908184 (and d!2257729 d!2257725)))

(assert (=> bs!1908184 (not (= lambda!445892 lambda!445889))))

(assert (=> d!2257729 true))

(assert (=> d!2257729 (exists!4433 lt!2589111 lambda!445892)))

(declare-fun lt!2589229 () Unit!163976)

(declare-fun choose!56178 (List!70613 List!70611) Unit!163976)

(assert (=> d!2257729 (= lt!2589229 (choose!56178 lt!2589111 (t!384675 s1!1971)))))

(assert (=> d!2257729 (matchZipper!3587 (content!14664 lt!2589111) (t!384675 s1!1971))))

(assert (=> d!2257729 (= (lemmaZipperMatchesExistsMatchingContext!780 lt!2589111 (t!384675 s1!1971)) lt!2589229)))

(declare-fun bs!1908185 () Bool)

(assert (= bs!1908185 d!2257729))

(declare-fun m!7941750 () Bool)

(assert (=> bs!1908185 m!7941750))

(declare-fun m!7941752 () Bool)

(assert (=> bs!1908185 m!7941752))

(declare-fun m!7941754 () Bool)

(assert (=> bs!1908185 m!7941754))

(assert (=> bs!1908185 m!7941754))

(declare-fun m!7941756 () Bool)

(assert (=> bs!1908185 m!7941756))

(assert (=> b!7258236 d!2257729))

(declare-fun bs!1908186 () Bool)

(declare-fun d!2257731 () Bool)

(assert (= bs!1908186 (and d!2257731 b!7258233)))

(declare-fun lambda!445893 () Int)

(assert (=> bs!1908186 (= lambda!445893 lambda!445842)))

(declare-fun bs!1908187 () Bool)

(assert (= bs!1908187 (and d!2257731 d!2257719)))

(assert (=> bs!1908187 (= lambda!445893 lambda!445886)))

(assert (=> d!2257731 true))

(assert (=> d!2257731 (= (derivationStepZipper!3455 lt!2589084 (h!76935 s1!1971)) (flatMap!2842 lt!2589084 lambda!445893))))

(declare-fun bs!1908188 () Bool)

(assert (= bs!1908188 d!2257731))

(declare-fun m!7941758 () Bool)

(assert (=> bs!1908188 m!7941758))

(assert (=> b!7258236 d!2257731))

(declare-fun b!7258569 () Bool)

(declare-fun e!4352484 () Bool)

(declare-fun tp!2038499 () Bool)

(declare-fun tp!2038500 () Bool)

(assert (=> b!7258569 (= e!4352484 (and tp!2038499 tp!2038500))))

(assert (=> b!7258226 (= tp!2038479 e!4352484)))

(assert (= (and b!7258226 ((_ is Cons!70488) (exprs!8117 ct1!232))) b!7258569))

(declare-fun b!7258570 () Bool)

(declare-fun e!4352485 () Bool)

(declare-fun tp!2038501 () Bool)

(declare-fun tp!2038502 () Bool)

(assert (=> b!7258570 (= e!4352485 (and tp!2038501 tp!2038502))))

(assert (=> b!7258232 (= tp!2038480 e!4352485)))

(assert (= (and b!7258232 ((_ is Cons!70488) (exprs!8117 ct2!328))) b!7258570))

(declare-fun b!7258575 () Bool)

(declare-fun e!4352488 () Bool)

(declare-fun tp!2038505 () Bool)

(assert (=> b!7258575 (= e!4352488 (and tp_is_empty!46819 tp!2038505))))

(assert (=> b!7258227 (= tp!2038482 e!4352488)))

(assert (= (and b!7258227 ((_ is Cons!70487) (t!384675 s2!1849))) b!7258575))

(declare-fun b!7258576 () Bool)

(declare-fun e!4352489 () Bool)

(declare-fun tp!2038506 () Bool)

(assert (=> b!7258576 (= e!4352489 (and tp_is_empty!46819 tp!2038506))))

(assert (=> b!7258230 (= tp!2038481 e!4352489)))

(assert (= (and b!7258230 ((_ is Cons!70487) (t!384675 s1!1971))) b!7258576))

(declare-fun b_lambda!279123 () Bool)

(assert (= b_lambda!279121 (or b!7258233 b_lambda!279123)))

(declare-fun bs!1908189 () Bool)

(declare-fun d!2257733 () Bool)

(assert (= bs!1908189 (and d!2257733 b!7258233)))

(assert (=> bs!1908189 (= (dynLambda!28804 lambda!445842 lt!2589102) (derivationStepZipperUp!2501 lt!2589102 (h!76935 s1!1971)))))

(assert (=> bs!1908189 m!7941070))

(assert (=> d!2257699 d!2257733))

(declare-fun b_lambda!279125 () Bool)

(assert (= b_lambda!279119 (or b!7258233 b_lambda!279125)))

(declare-fun bs!1908190 () Bool)

(declare-fun d!2257735 () Bool)

(assert (= bs!1908190 (and d!2257735 b!7258233)))

(assert (=> bs!1908190 (= (dynLambda!28804 lambda!445842 ct1!232) (derivationStepZipperUp!2501 ct1!232 (h!76935 s1!1971)))))

(assert (=> bs!1908190 m!7941120))

(assert (=> d!2257697 d!2257735))

(declare-fun b_lambda!279127 () Bool)

(assert (= b_lambda!279117 (or b!7258236 b_lambda!279127)))

(declare-fun bs!1908191 () Bool)

(declare-fun d!2257737 () Bool)

(assert (= bs!1908191 (and d!2257737 b!7258236)))

(assert (=> bs!1908191 (= (dynLambda!28803 lambda!445841 lt!2589200) (matchZipper!3587 (store ((as const (Array Context!15234 Bool)) false) lt!2589200 true) (t!384675 s1!1971)))))

(declare-fun m!7941760 () Bool)

(assert (=> bs!1908191 m!7941760))

(assert (=> bs!1908191 m!7941760))

(declare-fun m!7941762 () Bool)

(assert (=> bs!1908191 m!7941762))

(assert (=> d!2257677 d!2257737))

(check-sat (not b!7258509) (not b!7258525) (not d!2257693) (not b!7258555) (not d!2257723) (not b!7258447) (not bs!1908191) (not b!7258460) (not bm!661537) (not d!2257623) (not d!2257713) (not bm!661544) (not b!7258482) (not bm!661538) (not b!7258570) (not d!2257649) (not b!7258547) (not d!2257719) (not b!7258552) (not d!2257685) (not bm!661545) (not b!7258472) (not d!2257653) (not b!7258471) (not bs!1908189) (not d!2257641) (not b_lambda!279127) (not b!7258569) (not d!2257663) (not d!2257645) (not d!2257729) (not b!7258553) (not b!7258534) (not d!2257667) (not d!2257661) (not d!2257669) (not d!2257677) (not b!7258521) (not d!2257673) (not b!7258496) (not d!2257699) (not d!2257639) (not b!7258576) (not b!7258463) (not b!7258485) (not d!2257691) (not d!2257659) (not b_lambda!279123) (not d!2257709) (not d!2257705) (not d!2257655) (not b_lambda!279125) (not b!7258562) (not d!2257727) (not b!7258549) (not b!7258483) (not b!7258551) (not d!2257681) (not b!7258470) (not b!7258515) (not b!7258561) (not d!2257731) tp_is_empty!46819 (not b!7258533) (not b!7258557) (not bm!661549) (not bm!661547) (not b!7258495) (not bm!661546) (not b!7258514) (not b!7258484) (not b!7258548) (not b!7258554) (not b!7258478) (not b!7258474) (not bm!661540) (not d!2257701) (not b!7258560) (not d!2257697) (not d!2257717) (not d!2257657) (not d!2257695) (not d!2257725) (not b!7258473) (not d!2257679) (not b!7258479) (not b!7258422) (not b!7258550) (not d!2257721) (not bs!1908190) (not b!7258556) (not d!2257671) (not b!7258510) (not b!7258423) (not b!7258481) (not b!7258475) (not bm!661543) (not b!7258498) (not b!7258526) (not d!2257683) (not b!7258464) (not bm!661524) (not b!7258499) (not b!7258522) (not d!2257715) (not d!2257647) (not d!2257707) (not b!7258575))
(check-sat)
