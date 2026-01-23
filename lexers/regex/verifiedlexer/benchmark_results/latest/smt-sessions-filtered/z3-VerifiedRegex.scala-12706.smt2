; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!702488 () Bool)

(assert start!702488)

(declare-fun b!7235735 () Bool)

(assert (=> b!7235735 true))

(declare-fun b!7235745 () Bool)

(assert (=> b!7235745 true))

(declare-fun b!7235734 () Bool)

(declare-fun e!4337905 () Bool)

(declare-fun tp!2034552 () Bool)

(assert (=> b!7235734 (= e!4337905 tp!2034552)))

(declare-fun e!4337907 () Bool)

(declare-fun e!4337908 () Bool)

(assert (=> b!7235735 (= e!4337907 (not e!4337908))))

(declare-fun res!2935493 () Bool)

(assert (=> b!7235735 (=> res!2935493 e!4337908)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37316 0))(
  ( (C!37317 (val!28606 Int)) )
))
(declare-datatypes ((Regex!18521 0))(
  ( (ElementMatch!18521 (c!1342947 C!37316)) (Concat!27366 (regOne!37554 Regex!18521) (regTwo!37554 Regex!18521)) (EmptyExpr!18521) (Star!18521 (reg!18850 Regex!18521)) (EmptyLang!18521) (Union!18521 (regOne!37555 Regex!18521) (regTwo!37555 Regex!18521)) )
))
(declare-datatypes ((List!70171 0))(
  ( (Nil!70047) (Cons!70047 (h!76495 Regex!18521) (t!384222 List!70171)) )
))
(declare-datatypes ((Context!14922 0))(
  ( (Context!14923 (exprs!7961 List!70171)) )
))
(declare-fun lt!2575510 () (InoxSet Context!14922))

(declare-fun lambda!440306 () Int)

(declare-fun exists!4185 ((InoxSet Context!14922) Int) Bool)

(assert (=> b!7235735 (= res!2935493 (not (exists!4185 lt!2575510 lambda!440306)))))

(declare-datatypes ((List!70172 0))(
  ( (Nil!70048) (Cons!70048 (h!76496 Context!14922) (t!384223 List!70172)) )
))
(declare-fun lt!2575527 () List!70172)

(declare-fun exists!4186 (List!70172 Int) Bool)

(assert (=> b!7235735 (exists!4186 lt!2575527 lambda!440306)))

(declare-datatypes ((Unit!163580 0))(
  ( (Unit!163581) )
))
(declare-fun lt!2575511 () Unit!163580)

(declare-datatypes ((List!70173 0))(
  ( (Nil!70049) (Cons!70049 (h!76497 C!37316) (t!384224 List!70173)) )
))
(declare-fun s1!1971 () List!70173)

(declare-fun lemmaZipperMatchesExistsMatchingContext!664 (List!70172 List!70173) Unit!163580)

(assert (=> b!7235735 (= lt!2575511 (lemmaZipperMatchesExistsMatchingContext!664 lt!2575527 (t!384224 s1!1971)))))

(declare-fun toList!11378 ((InoxSet Context!14922)) List!70172)

(assert (=> b!7235735 (= lt!2575527 (toList!11378 lt!2575510))))

(declare-fun b!7235736 () Bool)

(declare-fun e!4337906 () Bool)

(assert (=> b!7235736 (= e!4337908 e!4337906)))

(declare-fun res!2935494 () Bool)

(assert (=> b!7235736 (=> res!2935494 e!4337906)))

(declare-fun ct1!232 () Context!14922)

(declare-fun isEmpty!40370 (List!70171) Bool)

(assert (=> b!7235736 (= res!2935494 (isEmpty!40370 (exprs!7961 ct1!232)))))

(declare-fun lt!2575523 () (InoxSet Context!14922))

(declare-fun derivationStepZipperUp!2395 (Context!14922 C!37316) (InoxSet Context!14922))

(assert (=> b!7235736 (= lt!2575523 (derivationStepZipperUp!2395 ct1!232 (h!76497 s1!1971)))))

(declare-fun lt!2575508 () Context!14922)

(declare-fun lt!2575524 () Unit!163580)

(declare-fun lambda!440305 () Int)

(declare-fun ct2!328 () Context!14922)

(declare-fun lemmaConcatPreservesForall!1330 (List!70171 List!70171 Int) Unit!163580)

(assert (=> b!7235736 (= lt!2575524 (lemmaConcatPreservesForall!1330 (exprs!7961 lt!2575508) (exprs!7961 ct2!328) lambda!440305))))

(declare-fun s2!1849 () List!70173)

(declare-fun matchZipper!3431 ((InoxSet Context!14922) List!70173) Bool)

(declare-fun ++!16342 (List!70171 List!70171) List!70171)

(declare-fun ++!16343 (List!70173 List!70173) List!70173)

(assert (=> b!7235736 (matchZipper!3431 (store ((as const (Array Context!14922 Bool)) false) (Context!14923 (++!16342 (exprs!7961 lt!2575508) (exprs!7961 ct2!328))) true) (++!16343 (t!384224 s1!1971) s2!1849))))

(declare-fun lt!2575514 () Unit!163580)

(assert (=> b!7235736 (= lt!2575514 (lemmaConcatPreservesForall!1330 (exprs!7961 lt!2575508) (exprs!7961 ct2!328) lambda!440305))))

(declare-fun lt!2575507 () Unit!163580)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!312 (Context!14922 Context!14922 List!70173 List!70173) Unit!163580)

(assert (=> b!7235736 (= lt!2575507 (lemmaConcatenateContextMatchesConcatOfStrings!312 lt!2575508 ct2!328 (t!384224 s1!1971) s2!1849))))

(declare-fun getWitness!2054 ((InoxSet Context!14922) Int) Context!14922)

(assert (=> b!7235736 (= lt!2575508 (getWitness!2054 lt!2575510 lambda!440306))))

(declare-fun b!7235737 () Bool)

(declare-fun e!4337909 () Bool)

(assert (=> b!7235737 (= e!4337906 e!4337909)))

(declare-fun res!2935492 () Bool)

(assert (=> b!7235737 (=> res!2935492 e!4337909)))

(declare-fun lt!2575517 () List!70171)

(assert (=> b!7235737 (= res!2935492 (isEmpty!40370 lt!2575517))))

(declare-fun lt!2575512 () Unit!163580)

(assert (=> b!7235737 (= lt!2575512 (lemmaConcatPreservesForall!1330 (exprs!7961 ct1!232) (exprs!7961 ct2!328) lambda!440305))))

(declare-fun lt!2575528 () (InoxSet Context!14922))

(declare-fun lt!2575525 () Context!14922)

(assert (=> b!7235737 (= lt!2575528 (derivationStepZipperUp!2395 lt!2575525 (h!76497 s1!1971)))))

(declare-fun lt!2575515 () Unit!163580)

(assert (=> b!7235737 (= lt!2575515 (lemmaConcatPreservesForall!1330 (exprs!7961 ct1!232) (exprs!7961 ct2!328) lambda!440305))))

(declare-fun lt!2575521 () (InoxSet Context!14922))

(declare-fun lt!2575509 () Context!14922)

(declare-fun derivationStepZipperDown!2565 (Regex!18521 Context!14922 C!37316) (InoxSet Context!14922))

(assert (=> b!7235737 (= lt!2575521 (derivationStepZipperDown!2565 (h!76495 (exprs!7961 ct1!232)) lt!2575509 (h!76497 s1!1971)))))

(declare-fun tail!14156 (List!70171) List!70171)

(assert (=> b!7235737 (= lt!2575509 (Context!14923 (tail!14156 (exprs!7961 ct1!232))))))

(declare-fun b!7235738 () Bool)

(declare-fun res!2935489 () Bool)

(declare-fun e!4337912 () Bool)

(assert (=> b!7235738 (=> res!2935489 e!4337912)))

(assert (=> b!7235738 (= res!2935489 (not (= lt!2575523 ((_ map or) lt!2575521 (derivationStepZipperUp!2395 lt!2575509 (h!76497 s1!1971))))))))

(declare-fun b!7235739 () Bool)

(declare-fun e!4337902 () Bool)

(declare-fun e!4337904 () Bool)

(assert (=> b!7235739 (= e!4337902 e!4337904)))

(declare-fun res!2935488 () Bool)

(assert (=> b!7235739 (=> (not res!2935488) (not e!4337904))))

(get-info :version)

(assert (=> b!7235739 (= res!2935488 (and (not ((_ is Nil!70047) (exprs!7961 ct1!232))) ((_ is Cons!70049) s1!1971)))))

(declare-fun lt!2575516 () (InoxSet Context!14922))

(assert (=> b!7235739 (= lt!2575516 (store ((as const (Array Context!14922 Bool)) false) lt!2575525 true))))

(assert (=> b!7235739 (= lt!2575525 (Context!14923 lt!2575517))))

(assert (=> b!7235739 (= lt!2575517 (++!16342 (exprs!7961 ct1!232) (exprs!7961 ct2!328)))))

(declare-fun lt!2575520 () Unit!163580)

(assert (=> b!7235739 (= lt!2575520 (lemmaConcatPreservesForall!1330 (exprs!7961 ct1!232) (exprs!7961 ct2!328) lambda!440305))))

(declare-fun b!7235740 () Bool)

(declare-fun res!2935490 () Bool)

(assert (=> b!7235740 (=> res!2935490 e!4337912)))

(assert (=> b!7235740 (= res!2935490 (not (= lt!2575510 lt!2575523)))))

(declare-fun b!7235741 () Bool)

(assert (=> b!7235741 (= e!4337904 e!4337907)))

(declare-fun res!2935491 () Bool)

(assert (=> b!7235741 (=> (not res!2935491) (not e!4337907))))

(assert (=> b!7235741 (= res!2935491 (matchZipper!3431 lt!2575510 (t!384224 s1!1971)))))

(declare-fun lt!2575529 () (InoxSet Context!14922))

(declare-fun derivationStepZipper!3313 ((InoxSet Context!14922) C!37316) (InoxSet Context!14922))

(assert (=> b!7235741 (= lt!2575510 (derivationStepZipper!3313 lt!2575529 (h!76497 s1!1971)))))

(declare-fun b!7235742 () Bool)

(declare-fun e!4337910 () Bool)

(declare-fun tp_is_empty!46507 () Bool)

(declare-fun tp!2034550 () Bool)

(assert (=> b!7235742 (= e!4337910 (and tp_is_empty!46507 tp!2034550))))

(declare-fun b!7235743 () Bool)

(declare-fun res!2935487 () Bool)

(assert (=> b!7235743 (=> (not res!2935487) (not e!4337902))))

(assert (=> b!7235743 (= res!2935487 (matchZipper!3431 (store ((as const (Array Context!14922 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7235744 () Bool)

(assert (=> b!7235744 (= e!4337912 (not (= lt!2575517 Nil!70047)))))

(declare-fun lt!2575513 () Unit!163580)

(assert (=> b!7235744 (= lt!2575513 (lemmaConcatPreservesForall!1330 (exprs!7961 ct1!232) (exprs!7961 ct2!328) lambda!440305))))

(declare-fun res!2935496 () Bool)

(assert (=> start!702488 (=> (not res!2935496) (not e!4337902))))

(assert (=> start!702488 (= res!2935496 (matchZipper!3431 lt!2575529 s1!1971))))

(assert (=> start!702488 (= lt!2575529 (store ((as const (Array Context!14922 Bool)) false) ct1!232 true))))

(assert (=> start!702488 e!4337902))

(declare-fun inv!89312 (Context!14922) Bool)

(assert (=> start!702488 (and (inv!89312 ct1!232) e!4337905)))

(assert (=> start!702488 e!4337910))

(declare-fun e!4337903 () Bool)

(assert (=> start!702488 e!4337903))

(declare-fun e!4337911 () Bool)

(assert (=> start!702488 (and (inv!89312 ct2!328) e!4337911)))

(assert (=> b!7235745 (= e!4337909 e!4337912)))

(declare-fun res!2935495 () Bool)

(assert (=> b!7235745 (=> res!2935495 e!4337912)))

(declare-fun nullable!7834 (Regex!18521) Bool)

(assert (=> b!7235745 (= res!2935495 (not (nullable!7834 (h!76495 (exprs!7961 ct1!232)))))))

(declare-fun lambda!440307 () Int)

(declare-fun flatMap!2725 ((InoxSet Context!14922) Int) (InoxSet Context!14922))

(assert (=> b!7235745 (= (flatMap!2725 lt!2575516 lambda!440307) (derivationStepZipperUp!2395 lt!2575525 (h!76497 s1!1971)))))

(declare-fun lt!2575522 () Unit!163580)

(declare-fun lemmaFlatMapOnSingletonSet!2152 ((InoxSet Context!14922) Context!14922 Int) Unit!163580)

(assert (=> b!7235745 (= lt!2575522 (lemmaFlatMapOnSingletonSet!2152 lt!2575516 lt!2575525 lambda!440307))))

(declare-fun lt!2575519 () Unit!163580)

(assert (=> b!7235745 (= lt!2575519 (lemmaConcatPreservesForall!1330 (exprs!7961 ct1!232) (exprs!7961 ct2!328) lambda!440305))))

(assert (=> b!7235745 (= (flatMap!2725 lt!2575529 lambda!440307) (derivationStepZipperUp!2395 ct1!232 (h!76497 s1!1971)))))

(declare-fun lt!2575526 () Unit!163580)

(assert (=> b!7235745 (= lt!2575526 (lemmaFlatMapOnSingletonSet!2152 lt!2575529 ct1!232 lambda!440307))))

(declare-fun lt!2575518 () (InoxSet Context!14922))

(assert (=> b!7235745 (= lt!2575518 (derivationStepZipperDown!2565 (h!76495 (exprs!7961 ct1!232)) (Context!14923 (tail!14156 lt!2575517)) (h!76497 s1!1971)))))

(declare-fun b!7235746 () Bool)

(declare-fun tp!2034551 () Bool)

(assert (=> b!7235746 (= e!4337903 (and tp_is_empty!46507 tp!2034551))))

(declare-fun b!7235747 () Bool)

(declare-fun tp!2034549 () Bool)

(assert (=> b!7235747 (= e!4337911 tp!2034549)))

(assert (= (and start!702488 res!2935496) b!7235743))

(assert (= (and b!7235743 res!2935487) b!7235739))

(assert (= (and b!7235739 res!2935488) b!7235741))

(assert (= (and b!7235741 res!2935491) b!7235735))

(assert (= (and b!7235735 (not res!2935493)) b!7235736))

(assert (= (and b!7235736 (not res!2935494)) b!7235737))

(assert (= (and b!7235737 (not res!2935492)) b!7235745))

(assert (= (and b!7235745 (not res!2935495)) b!7235738))

(assert (= (and b!7235738 (not res!2935489)) b!7235740))

(assert (= (and b!7235740 (not res!2935490)) b!7235744))

(assert (= start!702488 b!7235734))

(assert (= (and start!702488 ((_ is Cons!70049) s1!1971)) b!7235742))

(assert (= (and start!702488 ((_ is Cons!70049) s2!1849)) b!7235746))

(assert (= start!702488 b!7235747))

(declare-fun m!7906412 () Bool)

(assert (=> b!7235744 m!7906412))

(declare-fun m!7906414 () Bool)

(assert (=> b!7235735 m!7906414))

(declare-fun m!7906416 () Bool)

(assert (=> b!7235735 m!7906416))

(declare-fun m!7906418 () Bool)

(assert (=> b!7235735 m!7906418))

(declare-fun m!7906420 () Bool)

(assert (=> b!7235735 m!7906420))

(declare-fun m!7906422 () Bool)

(assert (=> b!7235743 m!7906422))

(assert (=> b!7235743 m!7906422))

(declare-fun m!7906424 () Bool)

(assert (=> b!7235743 m!7906424))

(declare-fun m!7906426 () Bool)

(assert (=> b!7235745 m!7906426))

(declare-fun m!7906428 () Bool)

(assert (=> b!7235745 m!7906428))

(declare-fun m!7906430 () Bool)

(assert (=> b!7235745 m!7906430))

(declare-fun m!7906432 () Bool)

(assert (=> b!7235745 m!7906432))

(declare-fun m!7906434 () Bool)

(assert (=> b!7235745 m!7906434))

(declare-fun m!7906436 () Bool)

(assert (=> b!7235745 m!7906436))

(declare-fun m!7906438 () Bool)

(assert (=> b!7235745 m!7906438))

(assert (=> b!7235745 m!7906412))

(declare-fun m!7906440 () Bool)

(assert (=> b!7235745 m!7906440))

(declare-fun m!7906442 () Bool)

(assert (=> b!7235745 m!7906442))

(declare-fun m!7906444 () Bool)

(assert (=> b!7235736 m!7906444))

(declare-fun m!7906446 () Bool)

(assert (=> b!7235736 m!7906446))

(declare-fun m!7906448 () Bool)

(assert (=> b!7235736 m!7906448))

(declare-fun m!7906450 () Bool)

(assert (=> b!7235736 m!7906450))

(declare-fun m!7906452 () Bool)

(assert (=> b!7235736 m!7906452))

(declare-fun m!7906454 () Bool)

(assert (=> b!7235736 m!7906454))

(assert (=> b!7235736 m!7906448))

(assert (=> b!7235736 m!7906434))

(declare-fun m!7906456 () Bool)

(assert (=> b!7235736 m!7906456))

(declare-fun m!7906458 () Bool)

(assert (=> b!7235736 m!7906458))

(assert (=> b!7235736 m!7906450))

(assert (=> b!7235736 m!7906452))

(declare-fun m!7906460 () Bool)

(assert (=> b!7235738 m!7906460))

(assert (=> b!7235737 m!7906428))

(declare-fun m!7906462 () Bool)

(assert (=> b!7235737 m!7906462))

(declare-fun m!7906464 () Bool)

(assert (=> b!7235737 m!7906464))

(declare-fun m!7906466 () Bool)

(assert (=> b!7235737 m!7906466))

(assert (=> b!7235737 m!7906412))

(assert (=> b!7235737 m!7906412))

(declare-fun m!7906468 () Bool)

(assert (=> b!7235741 m!7906468))

(declare-fun m!7906470 () Bool)

(assert (=> b!7235741 m!7906470))

(declare-fun m!7906472 () Bool)

(assert (=> b!7235739 m!7906472))

(declare-fun m!7906474 () Bool)

(assert (=> b!7235739 m!7906474))

(assert (=> b!7235739 m!7906412))

(declare-fun m!7906476 () Bool)

(assert (=> start!702488 m!7906476))

(declare-fun m!7906478 () Bool)

(assert (=> start!702488 m!7906478))

(declare-fun m!7906480 () Bool)

(assert (=> start!702488 m!7906480))

(declare-fun m!7906482 () Bool)

(assert (=> start!702488 m!7906482))

(check-sat tp_is_empty!46507 (not b!7235743) (not start!702488) (not b!7235741) (not b!7235738) (not b!7235736) (not b!7235734) (not b!7235747) (not b!7235745) (not b!7235737) (not b!7235746) (not b!7235744) (not b!7235735) (not b!7235739) (not b!7235742))
(check-sat)
(get-model)

(declare-fun d!2247595 () Bool)

(declare-fun forall!17357 (List!70171 Int) Bool)

(assert (=> d!2247595 (forall!17357 (++!16342 (exprs!7961 ct1!232) (exprs!7961 ct2!328)) lambda!440305)))

(declare-fun lt!2575538 () Unit!163580)

(declare-fun choose!55628 (List!70171 List!70171 Int) Unit!163580)

(assert (=> d!2247595 (= lt!2575538 (choose!55628 (exprs!7961 ct1!232) (exprs!7961 ct2!328) lambda!440305))))

(assert (=> d!2247595 (forall!17357 (exprs!7961 ct1!232) lambda!440305)))

(assert (=> d!2247595 (= (lemmaConcatPreservesForall!1330 (exprs!7961 ct1!232) (exprs!7961 ct2!328) lambda!440305) lt!2575538)))

(declare-fun bs!1903355 () Bool)

(assert (= bs!1903355 d!2247595))

(assert (=> bs!1903355 m!7906474))

(assert (=> bs!1903355 m!7906474))

(declare-fun m!7906510 () Bool)

(assert (=> bs!1903355 m!7906510))

(declare-fun m!7906512 () Bool)

(assert (=> bs!1903355 m!7906512))

(declare-fun m!7906514 () Bool)

(assert (=> bs!1903355 m!7906514))

(assert (=> b!7235745 d!2247595))

(declare-fun d!2247599 () Bool)

(declare-fun choose!55630 ((InoxSet Context!14922) Int) (InoxSet Context!14922))

(assert (=> d!2247599 (= (flatMap!2725 lt!2575516 lambda!440307) (choose!55630 lt!2575516 lambda!440307))))

(declare-fun bs!1903356 () Bool)

(assert (= bs!1903356 d!2247599))

(declare-fun m!7906516 () Bool)

(assert (=> bs!1903356 m!7906516))

(assert (=> b!7235745 d!2247599))

(declare-fun b!7235777 () Bool)

(declare-fun e!4337928 () Bool)

(assert (=> b!7235777 (= e!4337928 (nullable!7834 (h!76495 (exprs!7961 lt!2575525))))))

(declare-fun b!7235778 () Bool)

(declare-fun e!4337927 () (InoxSet Context!14922))

(declare-fun call!658765 () (InoxSet Context!14922))

(assert (=> b!7235778 (= e!4337927 call!658765)))

(declare-fun b!7235779 () Bool)

(declare-fun e!4337926 () (InoxSet Context!14922))

(assert (=> b!7235779 (= e!4337926 ((_ map or) call!658765 (derivationStepZipperUp!2395 (Context!14923 (t!384222 (exprs!7961 lt!2575525))) (h!76497 s1!1971))))))

(declare-fun bm!658760 () Bool)

(assert (=> bm!658760 (= call!658765 (derivationStepZipperDown!2565 (h!76495 (exprs!7961 lt!2575525)) (Context!14923 (t!384222 (exprs!7961 lt!2575525))) (h!76497 s1!1971)))))

(declare-fun b!7235780 () Bool)

(assert (=> b!7235780 (= e!4337927 ((as const (Array Context!14922 Bool)) false))))

(declare-fun b!7235781 () Bool)

(assert (=> b!7235781 (= e!4337926 e!4337927)))

(declare-fun c!1342961 () Bool)

(assert (=> b!7235781 (= c!1342961 ((_ is Cons!70047) (exprs!7961 lt!2575525)))))

(declare-fun d!2247601 () Bool)

(declare-fun c!1342960 () Bool)

(assert (=> d!2247601 (= c!1342960 e!4337928)))

(declare-fun res!2935502 () Bool)

(assert (=> d!2247601 (=> (not res!2935502) (not e!4337928))))

(assert (=> d!2247601 (= res!2935502 ((_ is Cons!70047) (exprs!7961 lt!2575525)))))

(assert (=> d!2247601 (= (derivationStepZipperUp!2395 lt!2575525 (h!76497 s1!1971)) e!4337926)))

(assert (= (and d!2247601 res!2935502) b!7235777))

(assert (= (and d!2247601 c!1342960) b!7235779))

(assert (= (and d!2247601 (not c!1342960)) b!7235781))

(assert (= (and b!7235781 c!1342961) b!7235778))

(assert (= (and b!7235781 (not c!1342961)) b!7235780))

(assert (= (or b!7235779 b!7235778) bm!658760))

(declare-fun m!7906544 () Bool)

(assert (=> b!7235777 m!7906544))

(declare-fun m!7906546 () Bool)

(assert (=> b!7235779 m!7906546))

(declare-fun m!7906548 () Bool)

(assert (=> bm!658760 m!7906548))

(assert (=> b!7235745 d!2247601))

(declare-fun b!7235782 () Bool)

(declare-fun e!4337931 () Bool)

(assert (=> b!7235782 (= e!4337931 (nullable!7834 (h!76495 (exprs!7961 ct1!232))))))

(declare-fun b!7235783 () Bool)

(declare-fun e!4337930 () (InoxSet Context!14922))

(declare-fun call!658766 () (InoxSet Context!14922))

(assert (=> b!7235783 (= e!4337930 call!658766)))

(declare-fun e!4337929 () (InoxSet Context!14922))

(declare-fun b!7235784 () Bool)

(assert (=> b!7235784 (= e!4337929 ((_ map or) call!658766 (derivationStepZipperUp!2395 (Context!14923 (t!384222 (exprs!7961 ct1!232))) (h!76497 s1!1971))))))

(declare-fun bm!658761 () Bool)

(assert (=> bm!658761 (= call!658766 (derivationStepZipperDown!2565 (h!76495 (exprs!7961 ct1!232)) (Context!14923 (t!384222 (exprs!7961 ct1!232))) (h!76497 s1!1971)))))

(declare-fun b!7235785 () Bool)

(assert (=> b!7235785 (= e!4337930 ((as const (Array Context!14922 Bool)) false))))

(declare-fun b!7235786 () Bool)

(assert (=> b!7235786 (= e!4337929 e!4337930)))

(declare-fun c!1342963 () Bool)

(assert (=> b!7235786 (= c!1342963 ((_ is Cons!70047) (exprs!7961 ct1!232)))))

(declare-fun d!2247609 () Bool)

(declare-fun c!1342962 () Bool)

(assert (=> d!2247609 (= c!1342962 e!4337931)))

(declare-fun res!2935503 () Bool)

(assert (=> d!2247609 (=> (not res!2935503) (not e!4337931))))

(assert (=> d!2247609 (= res!2935503 ((_ is Cons!70047) (exprs!7961 ct1!232)))))

(assert (=> d!2247609 (= (derivationStepZipperUp!2395 ct1!232 (h!76497 s1!1971)) e!4337929)))

(assert (= (and d!2247609 res!2935503) b!7235782))

(assert (= (and d!2247609 c!1342962) b!7235784))

(assert (= (and d!2247609 (not c!1342962)) b!7235786))

(assert (= (and b!7235786 c!1342963) b!7235783))

(assert (= (and b!7235786 (not c!1342963)) b!7235785))

(assert (= (or b!7235784 b!7235783) bm!658761))

(assert (=> b!7235782 m!7906440))

(declare-fun m!7906550 () Bool)

(assert (=> b!7235784 m!7906550))

(declare-fun m!7906554 () Bool)

(assert (=> bm!658761 m!7906554))

(assert (=> b!7235745 d!2247609))

(declare-fun d!2247613 () Bool)

(assert (=> d!2247613 (= (flatMap!2725 lt!2575529 lambda!440307) (choose!55630 lt!2575529 lambda!440307))))

(declare-fun bs!1903363 () Bool)

(assert (= bs!1903363 d!2247613))

(declare-fun m!7906556 () Bool)

(assert (=> bs!1903363 m!7906556))

(assert (=> b!7235745 d!2247613))

(declare-fun d!2247615 () Bool)

(declare-fun dynLambda!28576 (Int Context!14922) (InoxSet Context!14922))

(assert (=> d!2247615 (= (flatMap!2725 lt!2575516 lambda!440307) (dynLambda!28576 lambda!440307 lt!2575525))))

(declare-fun lt!2575547 () Unit!163580)

(declare-fun choose!55631 ((InoxSet Context!14922) Context!14922 Int) Unit!163580)

(assert (=> d!2247615 (= lt!2575547 (choose!55631 lt!2575516 lt!2575525 lambda!440307))))

(assert (=> d!2247615 (= lt!2575516 (store ((as const (Array Context!14922 Bool)) false) lt!2575525 true))))

(assert (=> d!2247615 (= (lemmaFlatMapOnSingletonSet!2152 lt!2575516 lt!2575525 lambda!440307) lt!2575547)))

(declare-fun b_lambda!277443 () Bool)

(assert (=> (not b_lambda!277443) (not d!2247615)))

(declare-fun bs!1903366 () Bool)

(assert (= bs!1903366 d!2247615))

(assert (=> bs!1903366 m!7906432))

(declare-fun m!7906560 () Bool)

(assert (=> bs!1903366 m!7906560))

(declare-fun m!7906562 () Bool)

(assert (=> bs!1903366 m!7906562))

(assert (=> bs!1903366 m!7906472))

(assert (=> b!7235745 d!2247615))

(declare-fun d!2247619 () Bool)

(assert (=> d!2247619 (= (flatMap!2725 lt!2575529 lambda!440307) (dynLambda!28576 lambda!440307 ct1!232))))

(declare-fun lt!2575548 () Unit!163580)

(assert (=> d!2247619 (= lt!2575548 (choose!55631 lt!2575529 ct1!232 lambda!440307))))

(assert (=> d!2247619 (= lt!2575529 (store ((as const (Array Context!14922 Bool)) false) ct1!232 true))))

(assert (=> d!2247619 (= (lemmaFlatMapOnSingletonSet!2152 lt!2575529 ct1!232 lambda!440307) lt!2575548)))

(declare-fun b_lambda!277445 () Bool)

(assert (=> (not b_lambda!277445) (not d!2247619)))

(declare-fun bs!1903367 () Bool)

(assert (= bs!1903367 d!2247619))

(assert (=> bs!1903367 m!7906442))

(declare-fun m!7906564 () Bool)

(assert (=> bs!1903367 m!7906564))

(declare-fun m!7906566 () Bool)

(assert (=> bs!1903367 m!7906566))

(assert (=> bs!1903367 m!7906478))

(assert (=> b!7235745 d!2247619))

(declare-fun b!7235841 () Bool)

(declare-fun e!4337966 () (InoxSet Context!14922))

(assert (=> b!7235841 (= e!4337966 (store ((as const (Array Context!14922 Bool)) false) (Context!14923 (tail!14156 lt!2575517)) true))))

(declare-fun b!7235842 () Bool)

(declare-fun e!4337967 () (InoxSet Context!14922))

(assert (=> b!7235842 (= e!4337966 e!4337967)))

(declare-fun c!1342987 () Bool)

(assert (=> b!7235842 (= c!1342987 ((_ is Union!18521) (h!76495 (exprs!7961 ct1!232))))))

(declare-fun b!7235843 () Bool)

(declare-fun e!4337965 () (InoxSet Context!14922))

(declare-fun e!4337968 () (InoxSet Context!14922))

(assert (=> b!7235843 (= e!4337965 e!4337968)))

(declare-fun c!1342986 () Bool)

(assert (=> b!7235843 (= c!1342986 ((_ is Concat!27366) (h!76495 (exprs!7961 ct1!232))))))

(declare-fun b!7235844 () Bool)

(declare-fun c!1342985 () Bool)

(declare-fun e!4337964 () Bool)

(assert (=> b!7235844 (= c!1342985 e!4337964)))

(declare-fun res!2935518 () Bool)

(assert (=> b!7235844 (=> (not res!2935518) (not e!4337964))))

(assert (=> b!7235844 (= res!2935518 ((_ is Concat!27366) (h!76495 (exprs!7961 ct1!232))))))

(assert (=> b!7235844 (= e!4337967 e!4337965)))

(declare-fun b!7235845 () Bool)

(declare-fun c!1342988 () Bool)

(assert (=> b!7235845 (= c!1342988 ((_ is Star!18521) (h!76495 (exprs!7961 ct1!232))))))

(declare-fun e!4337963 () (InoxSet Context!14922))

(assert (=> b!7235845 (= e!4337968 e!4337963)))

(declare-fun call!658783 () (InoxSet Context!14922))

(declare-fun call!658784 () List!70171)

(declare-fun bm!658777 () Bool)

(assert (=> bm!658777 (= call!658783 (derivationStepZipperDown!2565 (ite c!1342987 (regTwo!37555 (h!76495 (exprs!7961 ct1!232))) (ite c!1342985 (regTwo!37554 (h!76495 (exprs!7961 ct1!232))) (ite c!1342986 (regOne!37554 (h!76495 (exprs!7961 ct1!232))) (reg!18850 (h!76495 (exprs!7961 ct1!232)))))) (ite (or c!1342987 c!1342985) (Context!14923 (tail!14156 lt!2575517)) (Context!14923 call!658784)) (h!76497 s1!1971)))))

(declare-fun b!7235846 () Bool)

(declare-fun call!658782 () (InoxSet Context!14922))

(assert (=> b!7235846 (= e!4337968 call!658782)))

(declare-fun b!7235847 () Bool)

(assert (=> b!7235847 (= e!4337964 (nullable!7834 (regOne!37554 (h!76495 (exprs!7961 ct1!232)))))))

(declare-fun bm!658778 () Bool)

(declare-fun call!658785 () (InoxSet Context!14922))

(assert (=> bm!658778 (= call!658782 call!658785)))

(declare-fun bm!658779 () Bool)

(declare-fun call!658786 () List!70171)

(assert (=> bm!658779 (= call!658784 call!658786)))

(declare-fun b!7235849 () Bool)

(assert (=> b!7235849 (= e!4337963 ((as const (Array Context!14922 Bool)) false))))

(declare-fun bm!658780 () Bool)

(assert (=> bm!658780 (= call!658785 call!658783)))

(declare-fun b!7235850 () Bool)

(declare-fun call!658787 () (InoxSet Context!14922))

(assert (=> b!7235850 (= e!4337965 ((_ map or) call!658787 call!658785))))

(declare-fun bm!658781 () Bool)

(declare-fun $colon$colon!2875 (List!70171 Regex!18521) List!70171)

(assert (=> bm!658781 (= call!658786 ($colon$colon!2875 (exprs!7961 (Context!14923 (tail!14156 lt!2575517))) (ite (or c!1342985 c!1342986) (regTwo!37554 (h!76495 (exprs!7961 ct1!232))) (h!76495 (exprs!7961 ct1!232)))))))

(declare-fun d!2247621 () Bool)

(declare-fun c!1342984 () Bool)

(assert (=> d!2247621 (= c!1342984 (and ((_ is ElementMatch!18521) (h!76495 (exprs!7961 ct1!232))) (= (c!1342947 (h!76495 (exprs!7961 ct1!232))) (h!76497 s1!1971))))))

(assert (=> d!2247621 (= (derivationStepZipperDown!2565 (h!76495 (exprs!7961 ct1!232)) (Context!14923 (tail!14156 lt!2575517)) (h!76497 s1!1971)) e!4337966)))

(declare-fun b!7235848 () Bool)

(assert (=> b!7235848 (= e!4337963 call!658782)))

(declare-fun bm!658782 () Bool)

(assert (=> bm!658782 (= call!658787 (derivationStepZipperDown!2565 (ite c!1342987 (regOne!37555 (h!76495 (exprs!7961 ct1!232))) (regOne!37554 (h!76495 (exprs!7961 ct1!232)))) (ite c!1342987 (Context!14923 (tail!14156 lt!2575517)) (Context!14923 call!658786)) (h!76497 s1!1971)))))

(declare-fun b!7235851 () Bool)

(assert (=> b!7235851 (= e!4337967 ((_ map or) call!658787 call!658783))))

(assert (= (and d!2247621 c!1342984) b!7235841))

(assert (= (and d!2247621 (not c!1342984)) b!7235842))

(assert (= (and b!7235842 c!1342987) b!7235851))

(assert (= (and b!7235842 (not c!1342987)) b!7235844))

(assert (= (and b!7235844 res!2935518) b!7235847))

(assert (= (and b!7235844 c!1342985) b!7235850))

(assert (= (and b!7235844 (not c!1342985)) b!7235843))

(assert (= (and b!7235843 c!1342986) b!7235846))

(assert (= (and b!7235843 (not c!1342986)) b!7235845))

(assert (= (and b!7235845 c!1342988) b!7235848))

(assert (= (and b!7235845 (not c!1342988)) b!7235849))

(assert (= (or b!7235846 b!7235848) bm!658779))

(assert (= (or b!7235846 b!7235848) bm!658778))

(assert (= (or b!7235850 bm!658779) bm!658781))

(assert (= (or b!7235850 bm!658778) bm!658780))

(assert (= (or b!7235851 bm!658780) bm!658777))

(assert (= (or b!7235851 b!7235850) bm!658782))

(declare-fun m!7906612 () Bool)

(assert (=> bm!658781 m!7906612))

(declare-fun m!7906614 () Bool)

(assert (=> bm!658782 m!7906614))

(declare-fun m!7906616 () Bool)

(assert (=> b!7235841 m!7906616))

(declare-fun m!7906618 () Bool)

(assert (=> bm!658777 m!7906618))

(declare-fun m!7906620 () Bool)

(assert (=> b!7235847 m!7906620))

(assert (=> b!7235745 d!2247621))

(declare-fun d!2247635 () Bool)

(declare-fun nullableFct!3068 (Regex!18521) Bool)

(assert (=> d!2247635 (= (nullable!7834 (h!76495 (exprs!7961 ct1!232))) (nullableFct!3068 (h!76495 (exprs!7961 ct1!232))))))

(declare-fun bs!1903369 () Bool)

(assert (= bs!1903369 d!2247635))

(declare-fun m!7906622 () Bool)

(assert (=> bs!1903369 m!7906622))

(assert (=> b!7235745 d!2247635))

(declare-fun d!2247637 () Bool)

(assert (=> d!2247637 (= (tail!14156 lt!2575517) (t!384222 lt!2575517))))

(assert (=> b!7235745 d!2247637))

(assert (=> b!7235744 d!2247595))

(declare-fun b!7235884 () Bool)

(declare-fun e!4337984 () List!70171)

(assert (=> b!7235884 (= e!4337984 (Cons!70047 (h!76495 (exprs!7961 ct1!232)) (++!16342 (t!384222 (exprs!7961 ct1!232)) (exprs!7961 ct2!328))))))

(declare-fun b!7235885 () Bool)

(declare-fun res!2935532 () Bool)

(declare-fun e!4337986 () Bool)

(assert (=> b!7235885 (=> (not res!2935532) (not e!4337986))))

(declare-fun lt!2575562 () List!70171)

(declare-fun size!41589 (List!70171) Int)

(assert (=> b!7235885 (= res!2935532 (= (size!41589 lt!2575562) (+ (size!41589 (exprs!7961 ct1!232)) (size!41589 (exprs!7961 ct2!328)))))))

(declare-fun b!7235882 () Bool)

(assert (=> b!7235882 (= e!4337984 (exprs!7961 ct2!328))))

(declare-fun d!2247639 () Bool)

(assert (=> d!2247639 e!4337986))

(declare-fun res!2935533 () Bool)

(assert (=> d!2247639 (=> (not res!2935533) (not e!4337986))))

(declare-fun content!14434 (List!70171) (InoxSet Regex!18521))

(assert (=> d!2247639 (= res!2935533 (= (content!14434 lt!2575562) ((_ map or) (content!14434 (exprs!7961 ct1!232)) (content!14434 (exprs!7961 ct2!328)))))))

(assert (=> d!2247639 (= lt!2575562 e!4337984)))

(declare-fun c!1342998 () Bool)

(assert (=> d!2247639 (= c!1342998 ((_ is Nil!70047) (exprs!7961 ct1!232)))))

(assert (=> d!2247639 (= (++!16342 (exprs!7961 ct1!232) (exprs!7961 ct2!328)) lt!2575562)))

(declare-fun b!7235886 () Bool)

(assert (=> b!7235886 (= e!4337986 (or (not (= (exprs!7961 ct2!328) Nil!70047)) (= lt!2575562 (exprs!7961 ct1!232))))))

(assert (= (and d!2247639 c!1342998) b!7235882))

(assert (= (and d!2247639 (not c!1342998)) b!7235884))

(assert (= (and d!2247639 res!2935533) b!7235885))

(assert (= (and b!7235885 res!2935532) b!7235886))

(declare-fun m!7906658 () Bool)

(assert (=> b!7235884 m!7906658))

(declare-fun m!7906662 () Bool)

(assert (=> b!7235885 m!7906662))

(declare-fun m!7906666 () Bool)

(assert (=> b!7235885 m!7906666))

(declare-fun m!7906670 () Bool)

(assert (=> b!7235885 m!7906670))

(declare-fun m!7906672 () Bool)

(assert (=> d!2247639 m!7906672))

(declare-fun m!7906674 () Bool)

(assert (=> d!2247639 m!7906674))

(declare-fun m!7906676 () Bool)

(assert (=> d!2247639 m!7906676))

(assert (=> b!7235739 d!2247639))

(assert (=> b!7235739 d!2247595))

(declare-fun b!7235887 () Bool)

(declare-fun e!4337989 () Bool)

(assert (=> b!7235887 (= e!4337989 (nullable!7834 (h!76495 (exprs!7961 lt!2575509))))))

(declare-fun b!7235888 () Bool)

(declare-fun e!4337988 () (InoxSet Context!14922))

(declare-fun call!658789 () (InoxSet Context!14922))

(assert (=> b!7235888 (= e!4337988 call!658789)))

(declare-fun b!7235889 () Bool)

(declare-fun e!4337987 () (InoxSet Context!14922))

(assert (=> b!7235889 (= e!4337987 ((_ map or) call!658789 (derivationStepZipperUp!2395 (Context!14923 (t!384222 (exprs!7961 lt!2575509))) (h!76497 s1!1971))))))

(declare-fun bm!658784 () Bool)

(assert (=> bm!658784 (= call!658789 (derivationStepZipperDown!2565 (h!76495 (exprs!7961 lt!2575509)) (Context!14923 (t!384222 (exprs!7961 lt!2575509))) (h!76497 s1!1971)))))

(declare-fun b!7235890 () Bool)

(assert (=> b!7235890 (= e!4337988 ((as const (Array Context!14922 Bool)) false))))

(declare-fun b!7235891 () Bool)

(assert (=> b!7235891 (= e!4337987 e!4337988)))

(declare-fun c!1343000 () Bool)

(assert (=> b!7235891 (= c!1343000 ((_ is Cons!70047) (exprs!7961 lt!2575509)))))

(declare-fun d!2247649 () Bool)

(declare-fun c!1342999 () Bool)

(assert (=> d!2247649 (= c!1342999 e!4337989)))

(declare-fun res!2935534 () Bool)

(assert (=> d!2247649 (=> (not res!2935534) (not e!4337989))))

(assert (=> d!2247649 (= res!2935534 ((_ is Cons!70047) (exprs!7961 lt!2575509)))))

(assert (=> d!2247649 (= (derivationStepZipperUp!2395 lt!2575509 (h!76497 s1!1971)) e!4337987)))

(assert (= (and d!2247649 res!2935534) b!7235887))

(assert (= (and d!2247649 c!1342999) b!7235889))

(assert (= (and d!2247649 (not c!1342999)) b!7235891))

(assert (= (and b!7235891 c!1343000) b!7235888))

(assert (= (and b!7235891 (not c!1343000)) b!7235890))

(assert (= (or b!7235889 b!7235888) bm!658784))

(declare-fun m!7906678 () Bool)

(assert (=> b!7235887 m!7906678))

(declare-fun m!7906680 () Bool)

(assert (=> b!7235889 m!7906680))

(declare-fun m!7906682 () Bool)

(assert (=> bm!658784 m!7906682))

(assert (=> b!7235738 d!2247649))

(declare-fun d!2247651 () Bool)

(declare-fun c!1343003 () Bool)

(declare-fun isEmpty!40372 (List!70173) Bool)

(assert (=> d!2247651 (= c!1343003 (isEmpty!40372 s2!1849))))

(declare-fun e!4337992 () Bool)

(assert (=> d!2247651 (= (matchZipper!3431 (store ((as const (Array Context!14922 Bool)) false) ct2!328 true) s2!1849) e!4337992)))

(declare-fun b!7235896 () Bool)

(declare-fun nullableZipper!2829 ((InoxSet Context!14922)) Bool)

(assert (=> b!7235896 (= e!4337992 (nullableZipper!2829 (store ((as const (Array Context!14922 Bool)) false) ct2!328 true)))))

(declare-fun b!7235897 () Bool)

(declare-fun head!14818 (List!70173) C!37316)

(declare-fun tail!14158 (List!70173) List!70173)

(assert (=> b!7235897 (= e!4337992 (matchZipper!3431 (derivationStepZipper!3313 (store ((as const (Array Context!14922 Bool)) false) ct2!328 true) (head!14818 s2!1849)) (tail!14158 s2!1849)))))

(assert (= (and d!2247651 c!1343003) b!7235896))

(assert (= (and d!2247651 (not c!1343003)) b!7235897))

(declare-fun m!7906684 () Bool)

(assert (=> d!2247651 m!7906684))

(assert (=> b!7235896 m!7906422))

(declare-fun m!7906686 () Bool)

(assert (=> b!7235896 m!7906686))

(declare-fun m!7906688 () Bool)

(assert (=> b!7235897 m!7906688))

(assert (=> b!7235897 m!7906422))

(assert (=> b!7235897 m!7906688))

(declare-fun m!7906690 () Bool)

(assert (=> b!7235897 m!7906690))

(declare-fun m!7906692 () Bool)

(assert (=> b!7235897 m!7906692))

(assert (=> b!7235897 m!7906690))

(assert (=> b!7235897 m!7906692))

(declare-fun m!7906694 () Bool)

(assert (=> b!7235897 m!7906694))

(assert (=> b!7235743 d!2247651))

(declare-fun d!2247653 () Bool)

(assert (=> d!2247653 (= (tail!14156 (exprs!7961 ct1!232)) (t!384222 (exprs!7961 ct1!232)))))

(assert (=> b!7235737 d!2247653))

(declare-fun b!7235898 () Bool)

(declare-fun e!4337996 () (InoxSet Context!14922))

(assert (=> b!7235898 (= e!4337996 (store ((as const (Array Context!14922 Bool)) false) lt!2575509 true))))

(declare-fun b!7235899 () Bool)

(declare-fun e!4337997 () (InoxSet Context!14922))

(assert (=> b!7235899 (= e!4337996 e!4337997)))

(declare-fun c!1343007 () Bool)

(assert (=> b!7235899 (= c!1343007 ((_ is Union!18521) (h!76495 (exprs!7961 ct1!232))))))

(declare-fun b!7235900 () Bool)

(declare-fun e!4337995 () (InoxSet Context!14922))

(declare-fun e!4337998 () (InoxSet Context!14922))

(assert (=> b!7235900 (= e!4337995 e!4337998)))

(declare-fun c!1343006 () Bool)

(assert (=> b!7235900 (= c!1343006 ((_ is Concat!27366) (h!76495 (exprs!7961 ct1!232))))))

(declare-fun b!7235901 () Bool)

(declare-fun c!1343005 () Bool)

(declare-fun e!4337994 () Bool)

(assert (=> b!7235901 (= c!1343005 e!4337994)))

(declare-fun res!2935535 () Bool)

(assert (=> b!7235901 (=> (not res!2935535) (not e!4337994))))

(assert (=> b!7235901 (= res!2935535 ((_ is Concat!27366) (h!76495 (exprs!7961 ct1!232))))))

(assert (=> b!7235901 (= e!4337997 e!4337995)))

(declare-fun b!7235902 () Bool)

(declare-fun c!1343008 () Bool)

(assert (=> b!7235902 (= c!1343008 ((_ is Star!18521) (h!76495 (exprs!7961 ct1!232))))))

(declare-fun e!4337993 () (InoxSet Context!14922))

(assert (=> b!7235902 (= e!4337998 e!4337993)))

(declare-fun call!658791 () (InoxSet Context!14922))

(declare-fun bm!658785 () Bool)

(declare-fun call!658792 () List!70171)

(assert (=> bm!658785 (= call!658791 (derivationStepZipperDown!2565 (ite c!1343007 (regTwo!37555 (h!76495 (exprs!7961 ct1!232))) (ite c!1343005 (regTwo!37554 (h!76495 (exprs!7961 ct1!232))) (ite c!1343006 (regOne!37554 (h!76495 (exprs!7961 ct1!232))) (reg!18850 (h!76495 (exprs!7961 ct1!232)))))) (ite (or c!1343007 c!1343005) lt!2575509 (Context!14923 call!658792)) (h!76497 s1!1971)))))

(declare-fun b!7235903 () Bool)

(declare-fun call!658790 () (InoxSet Context!14922))

(assert (=> b!7235903 (= e!4337998 call!658790)))

(declare-fun b!7235904 () Bool)

(assert (=> b!7235904 (= e!4337994 (nullable!7834 (regOne!37554 (h!76495 (exprs!7961 ct1!232)))))))

(declare-fun bm!658786 () Bool)

(declare-fun call!658793 () (InoxSet Context!14922))

(assert (=> bm!658786 (= call!658790 call!658793)))

(declare-fun bm!658787 () Bool)

(declare-fun call!658794 () List!70171)

(assert (=> bm!658787 (= call!658792 call!658794)))

(declare-fun b!7235906 () Bool)

(assert (=> b!7235906 (= e!4337993 ((as const (Array Context!14922 Bool)) false))))

(declare-fun bm!658788 () Bool)

(assert (=> bm!658788 (= call!658793 call!658791)))

(declare-fun b!7235907 () Bool)

(declare-fun call!658795 () (InoxSet Context!14922))

(assert (=> b!7235907 (= e!4337995 ((_ map or) call!658795 call!658793))))

(declare-fun bm!658789 () Bool)

(assert (=> bm!658789 (= call!658794 ($colon$colon!2875 (exprs!7961 lt!2575509) (ite (or c!1343005 c!1343006) (regTwo!37554 (h!76495 (exprs!7961 ct1!232))) (h!76495 (exprs!7961 ct1!232)))))))

(declare-fun d!2247655 () Bool)

(declare-fun c!1343004 () Bool)

(assert (=> d!2247655 (= c!1343004 (and ((_ is ElementMatch!18521) (h!76495 (exprs!7961 ct1!232))) (= (c!1342947 (h!76495 (exprs!7961 ct1!232))) (h!76497 s1!1971))))))

(assert (=> d!2247655 (= (derivationStepZipperDown!2565 (h!76495 (exprs!7961 ct1!232)) lt!2575509 (h!76497 s1!1971)) e!4337996)))

(declare-fun b!7235905 () Bool)

(assert (=> b!7235905 (= e!4337993 call!658790)))

(declare-fun bm!658790 () Bool)

(assert (=> bm!658790 (= call!658795 (derivationStepZipperDown!2565 (ite c!1343007 (regOne!37555 (h!76495 (exprs!7961 ct1!232))) (regOne!37554 (h!76495 (exprs!7961 ct1!232)))) (ite c!1343007 lt!2575509 (Context!14923 call!658794)) (h!76497 s1!1971)))))

(declare-fun b!7235908 () Bool)

(assert (=> b!7235908 (= e!4337997 ((_ map or) call!658795 call!658791))))

(assert (= (and d!2247655 c!1343004) b!7235898))

(assert (= (and d!2247655 (not c!1343004)) b!7235899))

(assert (= (and b!7235899 c!1343007) b!7235908))

(assert (= (and b!7235899 (not c!1343007)) b!7235901))

(assert (= (and b!7235901 res!2935535) b!7235904))

(assert (= (and b!7235901 c!1343005) b!7235907))

(assert (= (and b!7235901 (not c!1343005)) b!7235900))

(assert (= (and b!7235900 c!1343006) b!7235903))

(assert (= (and b!7235900 (not c!1343006)) b!7235902))

(assert (= (and b!7235902 c!1343008) b!7235905))

(assert (= (and b!7235902 (not c!1343008)) b!7235906))

(assert (= (or b!7235903 b!7235905) bm!658787))

(assert (= (or b!7235903 b!7235905) bm!658786))

(assert (= (or b!7235907 bm!658787) bm!658789))

(assert (= (or b!7235907 bm!658786) bm!658788))

(assert (= (or b!7235908 bm!658788) bm!658785))

(assert (= (or b!7235908 b!7235907) bm!658790))

(declare-fun m!7906696 () Bool)

(assert (=> bm!658789 m!7906696))

(declare-fun m!7906698 () Bool)

(assert (=> bm!658790 m!7906698))

(declare-fun m!7906700 () Bool)

(assert (=> b!7235898 m!7906700))

(declare-fun m!7906702 () Bool)

(assert (=> bm!658785 m!7906702))

(assert (=> b!7235904 m!7906620))

(assert (=> b!7235737 d!2247655))

(assert (=> b!7235737 d!2247595))

(declare-fun d!2247657 () Bool)

(assert (=> d!2247657 (= (isEmpty!40370 lt!2575517) ((_ is Nil!70047) lt!2575517))))

(assert (=> b!7235737 d!2247657))

(assert (=> b!7235737 d!2247601))

(declare-fun d!2247659 () Bool)

(declare-fun c!1343009 () Bool)

(assert (=> d!2247659 (= c!1343009 (isEmpty!40372 (++!16343 (t!384224 s1!1971) s2!1849)))))

(declare-fun e!4337999 () Bool)

(assert (=> d!2247659 (= (matchZipper!3431 (store ((as const (Array Context!14922 Bool)) false) (Context!14923 (++!16342 (exprs!7961 lt!2575508) (exprs!7961 ct2!328))) true) (++!16343 (t!384224 s1!1971) s2!1849)) e!4337999)))

(declare-fun b!7235909 () Bool)

(assert (=> b!7235909 (= e!4337999 (nullableZipper!2829 (store ((as const (Array Context!14922 Bool)) false) (Context!14923 (++!16342 (exprs!7961 lt!2575508) (exprs!7961 ct2!328))) true)))))

(declare-fun b!7235910 () Bool)

(assert (=> b!7235910 (= e!4337999 (matchZipper!3431 (derivationStepZipper!3313 (store ((as const (Array Context!14922 Bool)) false) (Context!14923 (++!16342 (exprs!7961 lt!2575508) (exprs!7961 ct2!328))) true) (head!14818 (++!16343 (t!384224 s1!1971) s2!1849))) (tail!14158 (++!16343 (t!384224 s1!1971) s2!1849))))))

(assert (= (and d!2247659 c!1343009) b!7235909))

(assert (= (and d!2247659 (not c!1343009)) b!7235910))

(assert (=> d!2247659 m!7906452))

(declare-fun m!7906704 () Bool)

(assert (=> d!2247659 m!7906704))

(assert (=> b!7235909 m!7906450))

(declare-fun m!7906706 () Bool)

(assert (=> b!7235909 m!7906706))

(assert (=> b!7235910 m!7906452))

(declare-fun m!7906708 () Bool)

(assert (=> b!7235910 m!7906708))

(assert (=> b!7235910 m!7906450))

(assert (=> b!7235910 m!7906708))

(declare-fun m!7906710 () Bool)

(assert (=> b!7235910 m!7906710))

(assert (=> b!7235910 m!7906452))

(declare-fun m!7906712 () Bool)

(assert (=> b!7235910 m!7906712))

(assert (=> b!7235910 m!7906710))

(assert (=> b!7235910 m!7906712))

(declare-fun m!7906714 () Bool)

(assert (=> b!7235910 m!7906714))

(assert (=> b!7235736 d!2247659))

(declare-fun d!2247661 () Bool)

(assert (=> d!2247661 (= (isEmpty!40370 (exprs!7961 ct1!232)) ((_ is Nil!70047) (exprs!7961 ct1!232)))))

(assert (=> b!7235736 d!2247661))

(declare-fun bs!1903374 () Bool)

(declare-fun d!2247663 () Bool)

(assert (= bs!1903374 (and d!2247663 b!7235739)))

(declare-fun lambda!440326 () Int)

(assert (=> bs!1903374 (= lambda!440326 lambda!440305)))

(assert (=> d!2247663 (matchZipper!3431 (store ((as const (Array Context!14922 Bool)) false) (Context!14923 (++!16342 (exprs!7961 lt!2575508) (exprs!7961 ct2!328))) true) (++!16343 (t!384224 s1!1971) s2!1849))))

(declare-fun lt!2575574 () Unit!163580)

(assert (=> d!2247663 (= lt!2575574 (lemmaConcatPreservesForall!1330 (exprs!7961 lt!2575508) (exprs!7961 ct2!328) lambda!440326))))

(declare-fun lt!2575573 () Unit!163580)

(declare-fun choose!55633 (Context!14922 Context!14922 List!70173 List!70173) Unit!163580)

(assert (=> d!2247663 (= lt!2575573 (choose!55633 lt!2575508 ct2!328 (t!384224 s1!1971) s2!1849))))

(assert (=> d!2247663 (matchZipper!3431 (store ((as const (Array Context!14922 Bool)) false) lt!2575508 true) (t!384224 s1!1971))))

(assert (=> d!2247663 (= (lemmaConcatenateContextMatchesConcatOfStrings!312 lt!2575508 ct2!328 (t!384224 s1!1971) s2!1849) lt!2575573)))

(declare-fun bs!1903375 () Bool)

(assert (= bs!1903375 d!2247663))

(assert (=> bs!1903375 m!7906456))

(declare-fun m!7906724 () Bool)

(assert (=> bs!1903375 m!7906724))

(assert (=> bs!1903375 m!7906450))

(declare-fun m!7906726 () Bool)

(assert (=> bs!1903375 m!7906726))

(declare-fun m!7906728 () Bool)

(assert (=> bs!1903375 m!7906728))

(assert (=> bs!1903375 m!7906726))

(declare-fun m!7906730 () Bool)

(assert (=> bs!1903375 m!7906730))

(assert (=> bs!1903375 m!7906450))

(assert (=> bs!1903375 m!7906452))

(assert (=> bs!1903375 m!7906454))

(assert (=> bs!1903375 m!7906452))

(assert (=> b!7235736 d!2247663))

(declare-fun b!7235934 () Bool)

(declare-fun e!4338012 () List!70171)

(assert (=> b!7235934 (= e!4338012 (Cons!70047 (h!76495 (exprs!7961 lt!2575508)) (++!16342 (t!384222 (exprs!7961 lt!2575508)) (exprs!7961 ct2!328))))))

(declare-fun b!7235935 () Bool)

(declare-fun res!2935538 () Bool)

(declare-fun e!4338013 () Bool)

(assert (=> b!7235935 (=> (not res!2935538) (not e!4338013))))

(declare-fun lt!2575575 () List!70171)

(assert (=> b!7235935 (= res!2935538 (= (size!41589 lt!2575575) (+ (size!41589 (exprs!7961 lt!2575508)) (size!41589 (exprs!7961 ct2!328)))))))

(declare-fun b!7235933 () Bool)

(assert (=> b!7235933 (= e!4338012 (exprs!7961 ct2!328))))

(declare-fun d!2247667 () Bool)

(assert (=> d!2247667 e!4338013))

(declare-fun res!2935539 () Bool)

(assert (=> d!2247667 (=> (not res!2935539) (not e!4338013))))

(assert (=> d!2247667 (= res!2935539 (= (content!14434 lt!2575575) ((_ map or) (content!14434 (exprs!7961 lt!2575508)) (content!14434 (exprs!7961 ct2!328)))))))

(assert (=> d!2247667 (= lt!2575575 e!4338012)))

(declare-fun c!1343020 () Bool)

(assert (=> d!2247667 (= c!1343020 ((_ is Nil!70047) (exprs!7961 lt!2575508)))))

(assert (=> d!2247667 (= (++!16342 (exprs!7961 lt!2575508) (exprs!7961 ct2!328)) lt!2575575)))

(declare-fun b!7235936 () Bool)

(assert (=> b!7235936 (= e!4338013 (or (not (= (exprs!7961 ct2!328) Nil!70047)) (= lt!2575575 (exprs!7961 lt!2575508))))))

(assert (= (and d!2247667 c!1343020) b!7235933))

(assert (= (and d!2247667 (not c!1343020)) b!7235934))

(assert (= (and d!2247667 res!2935539) b!7235935))

(assert (= (and b!7235935 res!2935538) b!7235936))

(declare-fun m!7906732 () Bool)

(assert (=> b!7235934 m!7906732))

(declare-fun m!7906734 () Bool)

(assert (=> b!7235935 m!7906734))

(declare-fun m!7906736 () Bool)

(assert (=> b!7235935 m!7906736))

(assert (=> b!7235935 m!7906670))

(declare-fun m!7906738 () Bool)

(assert (=> d!2247667 m!7906738))

(declare-fun m!7906740 () Bool)

(assert (=> d!2247667 m!7906740))

(assert (=> d!2247667 m!7906676))

(assert (=> b!7235736 d!2247667))

(declare-fun d!2247669 () Bool)

(declare-fun e!4338028 () Bool)

(assert (=> d!2247669 e!4338028))

(declare-fun res!2935547 () Bool)

(assert (=> d!2247669 (=> (not res!2935547) (not e!4338028))))

(declare-fun lt!2575578 () List!70173)

(declare-fun content!14436 (List!70173) (InoxSet C!37316))

(assert (=> d!2247669 (= res!2935547 (= (content!14436 lt!2575578) ((_ map or) (content!14436 (t!384224 s1!1971)) (content!14436 s2!1849))))))

(declare-fun e!4338027 () List!70173)

(assert (=> d!2247669 (= lt!2575578 e!4338027)))

(declare-fun c!1343030 () Bool)

(assert (=> d!2247669 (= c!1343030 ((_ is Nil!70049) (t!384224 s1!1971)))))

(assert (=> d!2247669 (= (++!16343 (t!384224 s1!1971) s2!1849) lt!2575578)))

(declare-fun b!7235961 () Bool)

(assert (=> b!7235961 (= e!4338027 s2!1849)))

(declare-fun b!7235962 () Bool)

(assert (=> b!7235962 (= e!4338027 (Cons!70049 (h!76497 (t!384224 s1!1971)) (++!16343 (t!384224 (t!384224 s1!1971)) s2!1849)))))

(declare-fun b!7235964 () Bool)

(assert (=> b!7235964 (= e!4338028 (or (not (= s2!1849 Nil!70049)) (= lt!2575578 (t!384224 s1!1971))))))

(declare-fun b!7235963 () Bool)

(declare-fun res!2935546 () Bool)

(assert (=> b!7235963 (=> (not res!2935546) (not e!4338028))))

(declare-fun size!41591 (List!70173) Int)

(assert (=> b!7235963 (= res!2935546 (= (size!41591 lt!2575578) (+ (size!41591 (t!384224 s1!1971)) (size!41591 s2!1849))))))

(assert (= (and d!2247669 c!1343030) b!7235961))

(assert (= (and d!2247669 (not c!1343030)) b!7235962))

(assert (= (and d!2247669 res!2935547) b!7235963))

(assert (= (and b!7235963 res!2935546) b!7235964))

(declare-fun m!7906758 () Bool)

(assert (=> d!2247669 m!7906758))

(declare-fun m!7906760 () Bool)

(assert (=> d!2247669 m!7906760))

(declare-fun m!7906762 () Bool)

(assert (=> d!2247669 m!7906762))

(declare-fun m!7906764 () Bool)

(assert (=> b!7235962 m!7906764))

(declare-fun m!7906766 () Bool)

(assert (=> b!7235963 m!7906766))

(declare-fun m!7906768 () Bool)

(assert (=> b!7235963 m!7906768))

(declare-fun m!7906770 () Bool)

(assert (=> b!7235963 m!7906770))

(assert (=> b!7235736 d!2247669))

(assert (=> b!7235736 d!2247609))

(declare-fun d!2247675 () Bool)

(assert (=> d!2247675 (forall!17357 (++!16342 (exprs!7961 lt!2575508) (exprs!7961 ct2!328)) lambda!440305)))

(declare-fun lt!2575579 () Unit!163580)

(assert (=> d!2247675 (= lt!2575579 (choose!55628 (exprs!7961 lt!2575508) (exprs!7961 ct2!328) lambda!440305))))

(assert (=> d!2247675 (forall!17357 (exprs!7961 lt!2575508) lambda!440305)))

(assert (=> d!2247675 (= (lemmaConcatPreservesForall!1330 (exprs!7961 lt!2575508) (exprs!7961 ct2!328) lambda!440305) lt!2575579)))

(declare-fun bs!1903376 () Bool)

(assert (= bs!1903376 d!2247675))

(assert (=> bs!1903376 m!7906456))

(assert (=> bs!1903376 m!7906456))

(declare-fun m!7906772 () Bool)

(assert (=> bs!1903376 m!7906772))

(declare-fun m!7906774 () Bool)

(assert (=> bs!1903376 m!7906774))

(declare-fun m!7906776 () Bool)

(assert (=> bs!1903376 m!7906776))

(assert (=> b!7235736 d!2247675))

(declare-fun d!2247677 () Bool)

(declare-fun e!4338031 () Bool)

(assert (=> d!2247677 e!4338031))

(declare-fun res!2935550 () Bool)

(assert (=> d!2247677 (=> (not res!2935550) (not e!4338031))))

(declare-fun lt!2575585 () Context!14922)

(declare-fun dynLambda!28578 (Int Context!14922) Bool)

(assert (=> d!2247677 (= res!2935550 (dynLambda!28578 lambda!440306 lt!2575585))))

(declare-fun getWitness!2056 (List!70172 Int) Context!14922)

(assert (=> d!2247677 (= lt!2575585 (getWitness!2056 (toList!11378 lt!2575510) lambda!440306))))

(assert (=> d!2247677 (exists!4185 lt!2575510 lambda!440306)))

(assert (=> d!2247677 (= (getWitness!2054 lt!2575510 lambda!440306) lt!2575585)))

(declare-fun b!7235967 () Bool)

(assert (=> b!7235967 (= e!4338031 (select lt!2575510 lt!2575585))))

(assert (= (and d!2247677 res!2935550) b!7235967))

(declare-fun b_lambda!277451 () Bool)

(assert (=> (not b_lambda!277451) (not d!2247677)))

(declare-fun m!7906788 () Bool)

(assert (=> d!2247677 m!7906788))

(assert (=> d!2247677 m!7906420))

(assert (=> d!2247677 m!7906420))

(declare-fun m!7906790 () Bool)

(assert (=> d!2247677 m!7906790))

(assert (=> d!2247677 m!7906414))

(declare-fun m!7906792 () Bool)

(assert (=> b!7235967 m!7906792))

(assert (=> b!7235736 d!2247677))

(declare-fun d!2247689 () Bool)

(declare-fun c!1343031 () Bool)

(assert (=> d!2247689 (= c!1343031 (isEmpty!40372 s1!1971))))

(declare-fun e!4338032 () Bool)

(assert (=> d!2247689 (= (matchZipper!3431 lt!2575529 s1!1971) e!4338032)))

(declare-fun b!7235968 () Bool)

(assert (=> b!7235968 (= e!4338032 (nullableZipper!2829 lt!2575529))))

(declare-fun b!7235969 () Bool)

(assert (=> b!7235969 (= e!4338032 (matchZipper!3431 (derivationStepZipper!3313 lt!2575529 (head!14818 s1!1971)) (tail!14158 s1!1971)))))

(assert (= (and d!2247689 c!1343031) b!7235968))

(assert (= (and d!2247689 (not c!1343031)) b!7235969))

(declare-fun m!7906798 () Bool)

(assert (=> d!2247689 m!7906798))

(declare-fun m!7906800 () Bool)

(assert (=> b!7235968 m!7906800))

(declare-fun m!7906802 () Bool)

(assert (=> b!7235969 m!7906802))

(assert (=> b!7235969 m!7906802))

(declare-fun m!7906804 () Bool)

(assert (=> b!7235969 m!7906804))

(declare-fun m!7906806 () Bool)

(assert (=> b!7235969 m!7906806))

(assert (=> b!7235969 m!7906804))

(assert (=> b!7235969 m!7906806))

(declare-fun m!7906808 () Bool)

(assert (=> b!7235969 m!7906808))

(assert (=> start!702488 d!2247689))

(declare-fun bs!1903382 () Bool)

(declare-fun d!2247695 () Bool)

(assert (= bs!1903382 (and d!2247695 b!7235739)))

(declare-fun lambda!440329 () Int)

(assert (=> bs!1903382 (= lambda!440329 lambda!440305)))

(declare-fun bs!1903383 () Bool)

(assert (= bs!1903383 (and d!2247695 d!2247663)))

(assert (=> bs!1903383 (= lambda!440329 lambda!440326)))

(assert (=> d!2247695 (= (inv!89312 ct1!232) (forall!17357 (exprs!7961 ct1!232) lambda!440329))))

(declare-fun bs!1903384 () Bool)

(assert (= bs!1903384 d!2247695))

(declare-fun m!7906818 () Bool)

(assert (=> bs!1903384 m!7906818))

(assert (=> start!702488 d!2247695))

(declare-fun bs!1903385 () Bool)

(declare-fun d!2247699 () Bool)

(assert (= bs!1903385 (and d!2247699 b!7235739)))

(declare-fun lambda!440330 () Int)

(assert (=> bs!1903385 (= lambda!440330 lambda!440305)))

(declare-fun bs!1903386 () Bool)

(assert (= bs!1903386 (and d!2247699 d!2247663)))

(assert (=> bs!1903386 (= lambda!440330 lambda!440326)))

(declare-fun bs!1903387 () Bool)

(assert (= bs!1903387 (and d!2247699 d!2247695)))

(assert (=> bs!1903387 (= lambda!440330 lambda!440329)))

(assert (=> d!2247699 (= (inv!89312 ct2!328) (forall!17357 (exprs!7961 ct2!328) lambda!440330))))

(declare-fun bs!1903388 () Bool)

(assert (= bs!1903388 d!2247699))

(declare-fun m!7906820 () Bool)

(assert (=> bs!1903388 m!7906820))

(assert (=> start!702488 d!2247699))

(declare-fun d!2247701 () Bool)

(declare-fun c!1343037 () Bool)

(assert (=> d!2247701 (= c!1343037 (isEmpty!40372 (t!384224 s1!1971)))))

(declare-fun e!4338045 () Bool)

(assert (=> d!2247701 (= (matchZipper!3431 lt!2575510 (t!384224 s1!1971)) e!4338045)))

(declare-fun b!7235991 () Bool)

(assert (=> b!7235991 (= e!4338045 (nullableZipper!2829 lt!2575510))))

(declare-fun b!7235992 () Bool)

(assert (=> b!7235992 (= e!4338045 (matchZipper!3431 (derivationStepZipper!3313 lt!2575510 (head!14818 (t!384224 s1!1971))) (tail!14158 (t!384224 s1!1971))))))

(assert (= (and d!2247701 c!1343037) b!7235991))

(assert (= (and d!2247701 (not c!1343037)) b!7235992))

(declare-fun m!7906822 () Bool)

(assert (=> d!2247701 m!7906822))

(declare-fun m!7906824 () Bool)

(assert (=> b!7235991 m!7906824))

(declare-fun m!7906826 () Bool)

(assert (=> b!7235992 m!7906826))

(assert (=> b!7235992 m!7906826))

(declare-fun m!7906828 () Bool)

(assert (=> b!7235992 m!7906828))

(declare-fun m!7906830 () Bool)

(assert (=> b!7235992 m!7906830))

(assert (=> b!7235992 m!7906828))

(assert (=> b!7235992 m!7906830))

(declare-fun m!7906832 () Bool)

(assert (=> b!7235992 m!7906832))

(assert (=> b!7235741 d!2247701))

(declare-fun bs!1903392 () Bool)

(declare-fun d!2247703 () Bool)

(assert (= bs!1903392 (and d!2247703 b!7235745)))

(declare-fun lambda!440333 () Int)

(assert (=> bs!1903392 (= lambda!440333 lambda!440307)))

(assert (=> d!2247703 true))

(assert (=> d!2247703 (= (derivationStepZipper!3313 lt!2575529 (h!76497 s1!1971)) (flatMap!2725 lt!2575529 lambda!440333))))

(declare-fun bs!1903393 () Bool)

(assert (= bs!1903393 d!2247703))

(declare-fun m!7906838 () Bool)

(assert (=> bs!1903393 m!7906838))

(assert (=> b!7235741 d!2247703))

(declare-fun d!2247711 () Bool)

(declare-fun lt!2575589 () Bool)

(assert (=> d!2247711 (= lt!2575589 (exists!4186 (toList!11378 lt!2575510) lambda!440306))))

(declare-fun choose!55636 ((InoxSet Context!14922) Int) Bool)

(assert (=> d!2247711 (= lt!2575589 (choose!55636 lt!2575510 lambda!440306))))

(assert (=> d!2247711 (= (exists!4185 lt!2575510 lambda!440306) lt!2575589)))

(declare-fun bs!1903394 () Bool)

(assert (= bs!1903394 d!2247711))

(assert (=> bs!1903394 m!7906420))

(assert (=> bs!1903394 m!7906420))

(declare-fun m!7906840 () Bool)

(assert (=> bs!1903394 m!7906840))

(declare-fun m!7906842 () Bool)

(assert (=> bs!1903394 m!7906842))

(assert (=> b!7235735 d!2247711))

(declare-fun bs!1903395 () Bool)

(declare-fun d!2247713 () Bool)

(assert (= bs!1903395 (and d!2247713 b!7235735)))

(declare-fun lambda!440336 () Int)

(assert (=> bs!1903395 (not (= lambda!440336 lambda!440306))))

(assert (=> d!2247713 true))

(declare-fun order!28857 () Int)

(declare-fun dynLambda!28580 (Int Int) Int)

(assert (=> d!2247713 (< (dynLambda!28580 order!28857 lambda!440306) (dynLambda!28580 order!28857 lambda!440336))))

(declare-fun forall!17358 (List!70172 Int) Bool)

(assert (=> d!2247713 (= (exists!4186 lt!2575527 lambda!440306) (not (forall!17358 lt!2575527 lambda!440336)))))

(declare-fun bs!1903396 () Bool)

(assert (= bs!1903396 d!2247713))

(declare-fun m!7906844 () Bool)

(assert (=> bs!1903396 m!7906844))

(assert (=> b!7235735 d!2247713))

(declare-fun bs!1903397 () Bool)

(declare-fun d!2247715 () Bool)

(assert (= bs!1903397 (and d!2247715 b!7235735)))

(declare-fun lambda!440339 () Int)

(assert (=> bs!1903397 (= lambda!440339 lambda!440306)))

(declare-fun bs!1903398 () Bool)

(assert (= bs!1903398 (and d!2247715 d!2247713)))

(assert (=> bs!1903398 (not (= lambda!440339 lambda!440336))))

(assert (=> d!2247715 true))

(assert (=> d!2247715 (exists!4186 lt!2575527 lambda!440339)))

(declare-fun lt!2575592 () Unit!163580)

(declare-fun choose!55637 (List!70172 List!70173) Unit!163580)

(assert (=> d!2247715 (= lt!2575592 (choose!55637 lt!2575527 (t!384224 s1!1971)))))

(declare-fun content!14437 (List!70172) (InoxSet Context!14922))

(assert (=> d!2247715 (matchZipper!3431 (content!14437 lt!2575527) (t!384224 s1!1971))))

(assert (=> d!2247715 (= (lemmaZipperMatchesExistsMatchingContext!664 lt!2575527 (t!384224 s1!1971)) lt!2575592)))

(declare-fun bs!1903399 () Bool)

(assert (= bs!1903399 d!2247715))

(declare-fun m!7906846 () Bool)

(assert (=> bs!1903399 m!7906846))

(declare-fun m!7906848 () Bool)

(assert (=> bs!1903399 m!7906848))

(declare-fun m!7906850 () Bool)

(assert (=> bs!1903399 m!7906850))

(assert (=> bs!1903399 m!7906850))

(declare-fun m!7906852 () Bool)

(assert (=> bs!1903399 m!7906852))

(assert (=> b!7235735 d!2247715))

(declare-fun d!2247717 () Bool)

(declare-fun e!4338050 () Bool)

(assert (=> d!2247717 e!4338050))

(declare-fun res!2935554 () Bool)

(assert (=> d!2247717 (=> (not res!2935554) (not e!4338050))))

(declare-fun lt!2575595 () List!70172)

(declare-fun noDuplicate!2939 (List!70172) Bool)

(assert (=> d!2247717 (= res!2935554 (noDuplicate!2939 lt!2575595))))

(declare-fun choose!55638 ((InoxSet Context!14922)) List!70172)

(assert (=> d!2247717 (= lt!2575595 (choose!55638 lt!2575510))))

(assert (=> d!2247717 (= (toList!11378 lt!2575510) lt!2575595)))

(declare-fun b!7236001 () Bool)

(assert (=> b!7236001 (= e!4338050 (= (content!14437 lt!2575595) lt!2575510))))

(assert (= (and d!2247717 res!2935554) b!7236001))

(declare-fun m!7906854 () Bool)

(assert (=> d!2247717 m!7906854))

(declare-fun m!7906856 () Bool)

(assert (=> d!2247717 m!7906856))

(declare-fun m!7906858 () Bool)

(assert (=> b!7236001 m!7906858))

(assert (=> b!7235735 d!2247717))

(declare-fun b!7236006 () Bool)

(declare-fun e!4338053 () Bool)

(declare-fun tp!2034569 () Bool)

(declare-fun tp!2034570 () Bool)

(assert (=> b!7236006 (= e!4338053 (and tp!2034569 tp!2034570))))

(assert (=> b!7235734 (= tp!2034552 e!4338053)))

(assert (= (and b!7235734 ((_ is Cons!70047) (exprs!7961 ct1!232))) b!7236006))

(declare-fun b!7236011 () Bool)

(declare-fun e!4338056 () Bool)

(declare-fun tp!2034573 () Bool)

(assert (=> b!7236011 (= e!4338056 (and tp_is_empty!46507 tp!2034573))))

(assert (=> b!7235742 (= tp!2034550 e!4338056)))

(assert (= (and b!7235742 ((_ is Cons!70049) (t!384224 s1!1971))) b!7236011))

(declare-fun b!7236012 () Bool)

(declare-fun e!4338057 () Bool)

(declare-fun tp!2034574 () Bool)

(declare-fun tp!2034575 () Bool)

(assert (=> b!7236012 (= e!4338057 (and tp!2034574 tp!2034575))))

(assert (=> b!7235747 (= tp!2034549 e!4338057)))

(assert (= (and b!7235747 ((_ is Cons!70047) (exprs!7961 ct2!328))) b!7236012))

(declare-fun b!7236013 () Bool)

(declare-fun e!4338058 () Bool)

(declare-fun tp!2034576 () Bool)

(assert (=> b!7236013 (= e!4338058 (and tp_is_empty!46507 tp!2034576))))

(assert (=> b!7235746 (= tp!2034551 e!4338058)))

(assert (= (and b!7235746 ((_ is Cons!70049) (t!384224 s2!1849))) b!7236013))

(declare-fun b_lambda!277461 () Bool)

(assert (= b_lambda!277451 (or b!7235735 b_lambda!277461)))

(declare-fun bs!1903400 () Bool)

(declare-fun d!2247719 () Bool)

(assert (= bs!1903400 (and d!2247719 b!7235735)))

(assert (=> bs!1903400 (= (dynLambda!28578 lambda!440306 lt!2575585) (matchZipper!3431 (store ((as const (Array Context!14922 Bool)) false) lt!2575585 true) (t!384224 s1!1971)))))

(declare-fun m!7906860 () Bool)

(assert (=> bs!1903400 m!7906860))

(assert (=> bs!1903400 m!7906860))

(declare-fun m!7906862 () Bool)

(assert (=> bs!1903400 m!7906862))

(assert (=> d!2247677 d!2247719))

(declare-fun b_lambda!277463 () Bool)

(assert (= b_lambda!277445 (or b!7235745 b_lambda!277463)))

(declare-fun bs!1903401 () Bool)

(declare-fun d!2247721 () Bool)

(assert (= bs!1903401 (and d!2247721 b!7235745)))

(assert (=> bs!1903401 (= (dynLambda!28576 lambda!440307 ct1!232) (derivationStepZipperUp!2395 ct1!232 (h!76497 s1!1971)))))

(assert (=> bs!1903401 m!7906434))

(assert (=> d!2247619 d!2247721))

(declare-fun b_lambda!277465 () Bool)

(assert (= b_lambda!277443 (or b!7235745 b_lambda!277465)))

(declare-fun bs!1903402 () Bool)

(declare-fun d!2247723 () Bool)

(assert (= bs!1903402 (and d!2247723 b!7235745)))

(assert (=> bs!1903402 (= (dynLambda!28576 lambda!440307 lt!2575525) (derivationStepZipperUp!2395 lt!2575525 (h!76497 s1!1971)))))

(assert (=> bs!1903402 m!7906428))

(assert (=> d!2247615 d!2247723))

(check-sat (not d!2247613) (not d!2247651) (not d!2247663) (not b!7235779) (not d!2247715) (not bm!658785) (not b!7236011) (not d!2247619) (not d!2247703) (not d!2247675) tp_is_empty!46507 (not d!2247689) (not b!7235934) (not d!2247677) (not bm!658784) (not b!7235896) (not d!2247701) (not b_lambda!277461) (not b!7235968) (not bs!1903401) (not b!7235887) (not b!7235963) (not bm!658782) (not b!7235847) (not bm!658760) (not d!2247717) (not d!2247695) (not b!7235777) (not b!7236006) (not b!7235889) (not bm!658790) (not b!7235782) (not b!7236013) (not d!2247711) (not b!7235885) (not bm!658789) (not b!7235897) (not d!2247635) (not d!2247713) (not b!7235904) (not b!7235935) (not b!7235784) (not b_lambda!277465) (not d!2247669) (not d!2247595) (not b!7235991) (not bs!1903402) (not bs!1903400) (not b!7236012) (not b!7235909) (not b!7235962) (not b_lambda!277463) (not d!2247599) (not bm!658761) (not d!2247615) (not bm!658777) (not bm!658781) (not b!7235910) (not b!7236001) (not d!2247699) (not b!7235992) (not d!2247667) (not d!2247639) (not d!2247659) (not b!7235884) (not b!7235969))
(check-sat)
