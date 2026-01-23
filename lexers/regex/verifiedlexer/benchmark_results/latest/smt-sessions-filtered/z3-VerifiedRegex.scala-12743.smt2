; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704568 () Bool)

(assert start!704568)

(declare-fun b!7245815 () Bool)

(assert (=> b!7245815 true))

(declare-fun b!7245819 () Bool)

(assert (=> b!7245819 true))

(declare-fun b!7245807 () Bool)

(declare-fun e!4344407 () Bool)

(declare-fun e!4344409 () Bool)

(assert (=> b!7245807 (= e!4344407 e!4344409)))

(declare-fun res!2939120 () Bool)

(assert (=> b!7245807 (=> res!2939120 e!4344409)))

(declare-datatypes ((C!37464 0))(
  ( (C!37465 (val!28680 Int)) )
))
(declare-datatypes ((Regex!18595 0))(
  ( (ElementMatch!18595 (c!1346091 C!37464)) (Concat!27440 (regOne!37702 Regex!18595) (regTwo!37702 Regex!18595)) (EmptyExpr!18595) (Star!18595 (reg!18924 Regex!18595)) (EmptyLang!18595) (Union!18595 (regOne!37703 Regex!18595) (regTwo!37703 Regex!18595)) )
))
(declare-datatypes ((List!70382 0))(
  ( (Nil!70258) (Cons!70258 (h!76706 Regex!18595) (t!384434 List!70382)) )
))
(declare-datatypes ((Context!15070 0))(
  ( (Context!15071 (exprs!8035 List!70382)) )
))
(declare-fun ct1!232 () Context!15070)

(declare-fun isEmpty!40475 (List!70382) Bool)

(assert (=> b!7245807 (= res!2939120 (isEmpty!40475 (exprs!8035 ct1!232)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2582664 () (InoxSet Context!15070))

(declare-datatypes ((List!70383 0))(
  ( (Nil!70259) (Cons!70259 (h!76707 C!37464) (t!384435 List!70383)) )
))
(declare-fun s1!1971 () List!70383)

(declare-fun derivationStepZipperUp!2449 (Context!15070 C!37464) (InoxSet Context!15070))

(assert (=> b!7245807 (= lt!2582664 (derivationStepZipperUp!2449 ct1!232 (h!76707 s1!1971)))))

(declare-fun lt!2582675 () Context!15070)

(declare-fun lambda!443087 () Int)

(declare-fun ct2!328 () Context!15070)

(declare-datatypes ((Unit!163777 0))(
  ( (Unit!163778) )
))
(declare-fun lt!2582677 () Unit!163777)

(declare-fun lemmaConcatPreservesForall!1404 (List!70382 List!70382 Int) Unit!163777)

(assert (=> b!7245807 (= lt!2582677 (lemmaConcatPreservesForall!1404 (exprs!8035 lt!2582675) (exprs!8035 ct2!328) lambda!443087))))

(declare-fun s2!1849 () List!70383)

(declare-fun matchZipper!3505 ((InoxSet Context!15070) List!70383) Bool)

(declare-fun ++!16474 (List!70382 List!70382) List!70382)

(declare-fun ++!16475 (List!70383 List!70383) List!70383)

(assert (=> b!7245807 (matchZipper!3505 (store ((as const (Array Context!15070 Bool)) false) (Context!15071 (++!16474 (exprs!8035 lt!2582675) (exprs!8035 ct2!328))) true) (++!16475 (t!384435 s1!1971) s2!1849))))

(declare-fun lt!2582678 () Unit!163777)

(assert (=> b!7245807 (= lt!2582678 (lemmaConcatPreservesForall!1404 (exprs!8035 lt!2582675) (exprs!8035 ct2!328) lambda!443087))))

(declare-fun lt!2582681 () Unit!163777)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!368 (Context!15070 Context!15070 List!70383 List!70383) Unit!163777)

(assert (=> b!7245807 (= lt!2582681 (lemmaConcatenateContextMatchesConcatOfStrings!368 lt!2582675 ct2!328 (t!384435 s1!1971) s2!1849))))

(declare-fun lt!2582671 () (InoxSet Context!15070))

(declare-fun lambda!443088 () Int)

(declare-fun getWitness!2151 ((InoxSet Context!15070) Int) Context!15070)

(assert (=> b!7245807 (= lt!2582675 (getWitness!2151 lt!2582671 lambda!443088))))

(declare-fun b!7245808 () Bool)

(declare-fun e!4344415 () Bool)

(declare-fun e!4344408 () Bool)

(assert (=> b!7245808 (= e!4344415 e!4344408)))

(declare-fun res!2939125 () Bool)

(assert (=> b!7245808 (=> (not res!2939125) (not e!4344408))))

(assert (=> b!7245808 (= res!2939125 (matchZipper!3505 lt!2582671 (t!384435 s1!1971)))))

(declare-fun lt!2582680 () (InoxSet Context!15070))

(declare-fun derivationStepZipper!3383 ((InoxSet Context!15070) C!37464) (InoxSet Context!15070))

(assert (=> b!7245808 (= lt!2582671 (derivationStepZipper!3383 lt!2582680 (h!76707 s1!1971)))))

(declare-fun b!7245809 () Bool)

(declare-fun e!4344412 () Bool)

(declare-fun tp!2036209 () Bool)

(assert (=> b!7245809 (= e!4344412 tp!2036209)))

(declare-fun b!7245810 () Bool)

(declare-fun e!4344413 () Bool)

(declare-fun lt!2582672 () (InoxSet Context!15070))

(assert (=> b!7245810 (= e!4344413 (matchZipper!3505 lt!2582672 (t!384435 s1!1971)))))

(declare-fun b!7245811 () Bool)

(declare-fun e!4344411 () Bool)

(declare-fun tp_is_empty!46655 () Bool)

(declare-fun tp!2036210 () Bool)

(assert (=> b!7245811 (= e!4344411 (and tp_is_empty!46655 tp!2036210))))

(declare-fun b!7245812 () Bool)

(declare-fun e!4344410 () Bool)

(declare-fun tp!2036211 () Bool)

(assert (=> b!7245812 (= e!4344410 tp!2036211)))

(declare-fun b!7245813 () Bool)

(declare-fun e!4344416 () Bool)

(assert (=> b!7245813 (= e!4344416 e!4344415)))

(declare-fun res!2939123 () Bool)

(assert (=> b!7245813 (=> (not res!2939123) (not e!4344415))))

(get-info :version)

(assert (=> b!7245813 (= res!2939123 (and (not ((_ is Nil!70258) (exprs!8035 ct1!232))) ((_ is Cons!70259) s1!1971)))))

(declare-fun lt!2582666 () (InoxSet Context!15070))

(declare-fun lt!2582679 () Context!15070)

(assert (=> b!7245813 (= lt!2582666 (store ((as const (Array Context!15070 Bool)) false) lt!2582679 true))))

(declare-fun lt!2582662 () List!70382)

(assert (=> b!7245813 (= lt!2582679 (Context!15071 lt!2582662))))

(assert (=> b!7245813 (= lt!2582662 (++!16474 (exprs!8035 ct1!232) (exprs!8035 ct2!328)))))

(declare-fun lt!2582674 () Unit!163777)

(assert (=> b!7245813 (= lt!2582674 (lemmaConcatPreservesForall!1404 (exprs!8035 ct1!232) (exprs!8035 ct2!328) lambda!443087))))

(declare-fun b!7245814 () Bool)

(declare-fun e!4344414 () Bool)

(assert (=> b!7245814 (= e!4344409 e!4344414)))

(declare-fun res!2939118 () Bool)

(assert (=> b!7245814 (=> res!2939118 e!4344414)))

(assert (=> b!7245814 (= res!2939118 (isEmpty!40475 lt!2582662))))

(declare-fun lt!2582661 () Unit!163777)

(assert (=> b!7245814 (= lt!2582661 (lemmaConcatPreservesForall!1404 (exprs!8035 ct1!232) (exprs!8035 ct2!328) lambda!443087))))

(declare-fun lt!2582670 () (InoxSet Context!15070))

(assert (=> b!7245814 (= lt!2582670 (derivationStepZipperUp!2449 lt!2582679 (h!76707 s1!1971)))))

(declare-fun lt!2582676 () Unit!163777)

(assert (=> b!7245814 (= lt!2582676 (lemmaConcatPreservesForall!1404 (exprs!8035 ct1!232) (exprs!8035 ct2!328) lambda!443087))))

(declare-fun derivationStepZipperDown!2619 (Regex!18595 Context!15070 C!37464) (InoxSet Context!15070))

(declare-fun tail!14268 (List!70382) List!70382)

(assert (=> b!7245814 (= lt!2582672 (derivationStepZipperDown!2619 (h!76706 (exprs!8035 ct1!232)) (Context!15071 (tail!14268 (exprs!8035 ct1!232))) (h!76707 s1!1971)))))

(assert (=> b!7245815 (= e!4344408 (not e!4344407))))

(declare-fun res!2939122 () Bool)

(assert (=> b!7245815 (=> res!2939122 e!4344407)))

(declare-fun exists!4309 ((InoxSet Context!15070) Int) Bool)

(assert (=> b!7245815 (= res!2939122 (not (exists!4309 lt!2582671 lambda!443088)))))

(declare-datatypes ((List!70384 0))(
  ( (Nil!70260) (Cons!70260 (h!76708 Context!15070) (t!384436 List!70384)) )
))
(declare-fun lt!2582669 () List!70384)

(declare-fun exists!4310 (List!70384 Int) Bool)

(assert (=> b!7245815 (exists!4310 lt!2582669 lambda!443088)))

(declare-fun lt!2582668 () Unit!163777)

(declare-fun lemmaZipperMatchesExistsMatchingContext!722 (List!70384 List!70383) Unit!163777)

(assert (=> b!7245815 (= lt!2582668 (lemmaZipperMatchesExistsMatchingContext!722 lt!2582669 (t!384435 s1!1971)))))

(declare-fun toList!11441 ((InoxSet Context!15070)) List!70384)

(assert (=> b!7245815 (= lt!2582669 (toList!11441 lt!2582671))))

(declare-fun res!2939117 () Bool)

(assert (=> start!704568 (=> (not res!2939117) (not e!4344416))))

(assert (=> start!704568 (= res!2939117 (matchZipper!3505 lt!2582680 s1!1971))))

(assert (=> start!704568 (= lt!2582680 (store ((as const (Array Context!15070 Bool)) false) ct1!232 true))))

(assert (=> start!704568 e!4344416))

(declare-fun inv!89497 (Context!15070) Bool)

(assert (=> start!704568 (and (inv!89497 ct1!232) e!4344410)))

(assert (=> start!704568 e!4344411))

(declare-fun e!4344406 () Bool)

(assert (=> start!704568 e!4344406))

(assert (=> start!704568 (and (inv!89497 ct2!328) e!4344412)))

(declare-fun b!7245816 () Bool)

(declare-fun res!2939121 () Bool)

(assert (=> b!7245816 (=> res!2939121 e!4344413)))

(assert (=> b!7245816 (= res!2939121 (or (not (= lt!2582664 lt!2582672)) (not (= lt!2582671 lt!2582672))))))

(declare-fun b!7245817 () Bool)

(declare-fun tp!2036212 () Bool)

(assert (=> b!7245817 (= e!4344406 (and tp_is_empty!46655 tp!2036212))))

(declare-fun b!7245818 () Bool)

(declare-fun res!2939124 () Bool)

(assert (=> b!7245818 (=> (not res!2939124) (not e!4344416))))

(assert (=> b!7245818 (= res!2939124 (matchZipper!3505 (store ((as const (Array Context!15070 Bool)) false) ct2!328 true) s2!1849))))

(assert (=> b!7245819 (= e!4344414 e!4344413)))

(declare-fun res!2939119 () Bool)

(assert (=> b!7245819 (=> res!2939119 e!4344413)))

(declare-fun nullable!7888 (Regex!18595) Bool)

(assert (=> b!7245819 (= res!2939119 (nullable!7888 (h!76706 (exprs!8035 ct1!232))))))

(declare-fun lambda!443089 () Int)

(declare-fun flatMap!2783 ((InoxSet Context!15070) Int) (InoxSet Context!15070))

(assert (=> b!7245819 (= (flatMap!2783 lt!2582666 lambda!443089) (derivationStepZipperUp!2449 lt!2582679 (h!76707 s1!1971)))))

(declare-fun lt!2582665 () Unit!163777)

(declare-fun lemmaFlatMapOnSingletonSet!2206 ((InoxSet Context!15070) Context!15070 Int) Unit!163777)

(assert (=> b!7245819 (= lt!2582665 (lemmaFlatMapOnSingletonSet!2206 lt!2582666 lt!2582679 lambda!443089))))

(declare-fun lt!2582663 () Unit!163777)

(assert (=> b!7245819 (= lt!2582663 (lemmaConcatPreservesForall!1404 (exprs!8035 ct1!232) (exprs!8035 ct2!328) lambda!443087))))

(assert (=> b!7245819 (= (flatMap!2783 lt!2582680 lambda!443089) (derivationStepZipperUp!2449 ct1!232 (h!76707 s1!1971)))))

(declare-fun lt!2582667 () Unit!163777)

(assert (=> b!7245819 (= lt!2582667 (lemmaFlatMapOnSingletonSet!2206 lt!2582680 ct1!232 lambda!443089))))

(declare-fun lt!2582673 () (InoxSet Context!15070))

(assert (=> b!7245819 (= lt!2582673 (derivationStepZipperDown!2619 (h!76706 (exprs!8035 ct1!232)) (Context!15071 (tail!14268 lt!2582662)) (h!76707 s1!1971)))))

(assert (= (and start!704568 res!2939117) b!7245818))

(assert (= (and b!7245818 res!2939124) b!7245813))

(assert (= (and b!7245813 res!2939123) b!7245808))

(assert (= (and b!7245808 res!2939125) b!7245815))

(assert (= (and b!7245815 (not res!2939122)) b!7245807))

(assert (= (and b!7245807 (not res!2939120)) b!7245814))

(assert (= (and b!7245814 (not res!2939118)) b!7245819))

(assert (= (and b!7245819 (not res!2939119)) b!7245816))

(assert (= (and b!7245816 (not res!2939121)) b!7245810))

(assert (= start!704568 b!7245812))

(assert (= (and start!704568 ((_ is Cons!70259) s1!1971)) b!7245811))

(assert (= (and start!704568 ((_ is Cons!70259) s2!1849)) b!7245817))

(assert (= start!704568 b!7245809))

(declare-fun m!7922422 () Bool)

(assert (=> b!7245819 m!7922422))

(declare-fun m!7922424 () Bool)

(assert (=> b!7245819 m!7922424))

(declare-fun m!7922426 () Bool)

(assert (=> b!7245819 m!7922426))

(declare-fun m!7922428 () Bool)

(assert (=> b!7245819 m!7922428))

(declare-fun m!7922430 () Bool)

(assert (=> b!7245819 m!7922430))

(declare-fun m!7922432 () Bool)

(assert (=> b!7245819 m!7922432))

(declare-fun m!7922434 () Bool)

(assert (=> b!7245819 m!7922434))

(declare-fun m!7922436 () Bool)

(assert (=> b!7245819 m!7922436))

(declare-fun m!7922438 () Bool)

(assert (=> b!7245819 m!7922438))

(declare-fun m!7922440 () Bool)

(assert (=> b!7245819 m!7922440))

(declare-fun m!7922442 () Bool)

(assert (=> b!7245808 m!7922442))

(declare-fun m!7922444 () Bool)

(assert (=> b!7245808 m!7922444))

(declare-fun m!7922446 () Bool)

(assert (=> b!7245813 m!7922446))

(declare-fun m!7922448 () Bool)

(assert (=> b!7245813 m!7922448))

(assert (=> b!7245813 m!7922438))

(declare-fun m!7922450 () Bool)

(assert (=> b!7245807 m!7922450))

(declare-fun m!7922452 () Bool)

(assert (=> b!7245807 m!7922452))

(assert (=> b!7245807 m!7922452))

(declare-fun m!7922454 () Bool)

(assert (=> b!7245807 m!7922454))

(declare-fun m!7922456 () Bool)

(assert (=> b!7245807 m!7922456))

(assert (=> b!7245807 m!7922428))

(assert (=> b!7245807 m!7922456))

(declare-fun m!7922458 () Bool)

(assert (=> b!7245807 m!7922458))

(declare-fun m!7922460 () Bool)

(assert (=> b!7245807 m!7922460))

(assert (=> b!7245807 m!7922458))

(declare-fun m!7922462 () Bool)

(assert (=> b!7245807 m!7922462))

(declare-fun m!7922464 () Bool)

(assert (=> b!7245807 m!7922464))

(declare-fun m!7922466 () Bool)

(assert (=> b!7245818 m!7922466))

(assert (=> b!7245818 m!7922466))

(declare-fun m!7922468 () Bool)

(assert (=> b!7245818 m!7922468))

(declare-fun m!7922470 () Bool)

(assert (=> b!7245810 m!7922470))

(declare-fun m!7922472 () Bool)

(assert (=> start!704568 m!7922472))

(declare-fun m!7922474 () Bool)

(assert (=> start!704568 m!7922474))

(declare-fun m!7922476 () Bool)

(assert (=> start!704568 m!7922476))

(declare-fun m!7922478 () Bool)

(assert (=> start!704568 m!7922478))

(declare-fun m!7922480 () Bool)

(assert (=> b!7245815 m!7922480))

(declare-fun m!7922482 () Bool)

(assert (=> b!7245815 m!7922482))

(declare-fun m!7922484 () Bool)

(assert (=> b!7245815 m!7922484))

(declare-fun m!7922486 () Bool)

(assert (=> b!7245815 m!7922486))

(declare-fun m!7922488 () Bool)

(assert (=> b!7245814 m!7922488))

(assert (=> b!7245814 m!7922438))

(assert (=> b!7245814 m!7922430))

(declare-fun m!7922490 () Bool)

(assert (=> b!7245814 m!7922490))

(declare-fun m!7922492 () Bool)

(assert (=> b!7245814 m!7922492))

(assert (=> b!7245814 m!7922438))

(check-sat (not b!7245808) (not start!704568) (not b!7245810) (not b!7245818) (not b!7245817) (not b!7245819) (not b!7245815) (not b!7245814) (not b!7245809) (not b!7245813) (not b!7245812) tp_is_empty!46655 (not b!7245807) (not b!7245811))
(check-sat)
