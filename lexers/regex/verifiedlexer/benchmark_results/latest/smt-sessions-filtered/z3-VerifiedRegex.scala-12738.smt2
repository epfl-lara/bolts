; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!704252 () Bool)

(assert start!704252)

(declare-fun b!7244133 () Bool)

(assert (=> b!7244133 true))

(declare-fun b!7244146 () Bool)

(assert (=> b!7244146 true))

(declare-fun b!7244131 () Bool)

(declare-fun e!4343336 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37444 0))(
  ( (C!37445 (val!28670 Int)) )
))
(declare-datatypes ((Regex!18585 0))(
  ( (ElementMatch!18585 (c!1345556 C!37444)) (Concat!27430 (regOne!37682 Regex!18585) (regTwo!37682 Regex!18585)) (EmptyExpr!18585) (Star!18585 (reg!18914 Regex!18585)) (EmptyLang!18585) (Union!18585 (regOne!37683 Regex!18585) (regTwo!37683 Regex!18585)) )
))
(declare-datatypes ((List!70352 0))(
  ( (Nil!70228) (Cons!70228 (h!76676 Regex!18585) (t!384403 List!70352)) )
))
(declare-datatypes ((Context!15050 0))(
  ( (Context!15051 (exprs!8025 List!70352)) )
))
(declare-fun lt!2581624 () (InoxSet Context!15050))

(declare-datatypes ((List!70353 0))(
  ( (Nil!70229) (Cons!70229 (h!76677 C!37444) (t!384404 List!70353)) )
))
(declare-fun lt!2581613 () List!70353)

(declare-fun matchZipper!3495 ((InoxSet Context!15050) List!70353) Bool)

(assert (=> b!7244131 (= e!4343336 (matchZipper!3495 lt!2581624 lt!2581613))))

(declare-fun b!7244132 () Bool)

(declare-fun e!4343328 () Bool)

(declare-fun lt!2581615 () (InoxSet Context!15050))

(declare-fun s1!1971 () List!70353)

(assert (=> b!7244132 (= e!4343328 (matchZipper!3495 lt!2581615 (t!384404 s1!1971)))))

(declare-fun b!7244134 () Bool)

(declare-fun e!4343330 () Bool)

(declare-fun tp_is_empty!46635 () Bool)

(declare-fun tp!2035946 () Bool)

(assert (=> b!7244134 (= e!4343330 (and tp_is_empty!46635 tp!2035946))))

(declare-fun b!7244135 () Bool)

(declare-fun e!4343329 () Bool)

(declare-fun tp!2035945 () Bool)

(assert (=> b!7244135 (= e!4343329 tp!2035945)))

(declare-fun b!7244136 () Bool)

(declare-fun e!4343335 () Bool)

(declare-fun e!4343340 () Bool)

(assert (=> b!7244136 (= e!4343335 e!4343340)))

(declare-fun res!2938536 () Bool)

(assert (=> b!7244136 (=> res!2938536 e!4343340)))

(declare-fun lt!2581618 () (InoxSet Context!15050))

(declare-fun lt!2581608 () (InoxSet Context!15050))

(declare-fun lt!2581603 () (InoxSet Context!15050))

(assert (=> b!7244136 (= res!2938536 (or (not (= lt!2581608 lt!2581603)) (not (= lt!2581618 lt!2581608))))))

(declare-fun lt!2581619 () (InoxSet Context!15050))

(assert (=> b!7244136 (= lt!2581603 ((_ map or) lt!2581619 lt!2581615))))

(declare-fun lt!2581621 () Context!15050)

(declare-fun derivationStepZipperUp!2439 (Context!15050 C!37444) (InoxSet Context!15050))

(assert (=> b!7244136 (= lt!2581615 (derivationStepZipperUp!2439 lt!2581621 (h!76677 s1!1971)))))

(declare-fun b!7244137 () Bool)

(declare-fun e!4343337 () Bool)

(declare-fun e!4343326 () Bool)

(assert (=> b!7244137 (= e!4343337 e!4343326)))

(declare-fun res!2938530 () Bool)

(assert (=> b!7244137 (=> res!2938530 e!4343326)))

(declare-fun lt!2581625 () List!70352)

(declare-fun isEmpty!40459 (List!70352) Bool)

(assert (=> b!7244137 (= res!2938530 (isEmpty!40459 lt!2581625))))

(declare-datatypes ((Unit!163756 0))(
  ( (Unit!163757) )
))
(declare-fun lt!2581606 () Unit!163756)

(declare-fun lambda!442679 () Int)

(declare-fun ct1!232 () Context!15050)

(declare-fun ct2!328 () Context!15050)

(declare-fun lemmaConcatPreservesForall!1394 (List!70352 List!70352 Int) Unit!163756)

(assert (=> b!7244137 (= lt!2581606 (lemmaConcatPreservesForall!1394 (exprs!8025 ct1!232) (exprs!8025 ct2!328) lambda!442679))))

(declare-fun lt!2581602 () (InoxSet Context!15050))

(declare-fun lt!2581605 () Context!15050)

(assert (=> b!7244137 (= lt!2581602 (derivationStepZipperUp!2439 lt!2581605 (h!76677 s1!1971)))))

(declare-fun lt!2581629 () Unit!163756)

(assert (=> b!7244137 (= lt!2581629 (lemmaConcatPreservesForall!1394 (exprs!8025 ct1!232) (exprs!8025 ct2!328) lambda!442679))))

(declare-fun derivationStepZipperDown!2609 (Regex!18585 Context!15050 C!37444) (InoxSet Context!15050))

(assert (=> b!7244137 (= lt!2581619 (derivationStepZipperDown!2609 (h!76676 (exprs!8025 ct1!232)) lt!2581621 (h!76677 s1!1971)))))

(declare-fun tail!14252 (List!70352) List!70352)

(assert (=> b!7244137 (= lt!2581621 (Context!15051 (tail!14252 (exprs!8025 ct1!232))))))

(declare-fun b!7244138 () Bool)

(declare-fun e!4343334 () Bool)

(declare-fun tp!2035947 () Bool)

(assert (=> b!7244138 (= e!4343334 (and tp_is_empty!46635 tp!2035947))))

(declare-fun b!7244139 () Bool)

(declare-fun e!4343331 () Bool)

(declare-fun tp!2035948 () Bool)

(assert (=> b!7244139 (= e!4343331 tp!2035948)))

(declare-fun e!4343338 () Bool)

(declare-fun e!4343333 () Bool)

(assert (=> b!7244133 (= e!4343338 (not e!4343333))))

(declare-fun res!2938531 () Bool)

(assert (=> b!7244133 (=> res!2938531 e!4343333)))

(declare-fun lambda!442680 () Int)

(declare-fun exists!4289 ((InoxSet Context!15050) Int) Bool)

(assert (=> b!7244133 (= res!2938531 (not (exists!4289 lt!2581618 lambda!442680)))))

(declare-datatypes ((List!70354 0))(
  ( (Nil!70230) (Cons!70230 (h!76678 Context!15050) (t!384405 List!70354)) )
))
(declare-fun lt!2581616 () List!70354)

(declare-fun exists!4290 (List!70354 Int) Bool)

(assert (=> b!7244133 (exists!4290 lt!2581616 lambda!442680)))

(declare-fun lt!2581604 () Unit!163756)

(declare-fun lemmaZipperMatchesExistsMatchingContext!712 (List!70354 List!70353) Unit!163756)

(assert (=> b!7244133 (= lt!2581604 (lemmaZipperMatchesExistsMatchingContext!712 lt!2581616 (t!384404 s1!1971)))))

(declare-fun toList!11431 ((InoxSet Context!15050)) List!70354)

(assert (=> b!7244133 (= lt!2581616 (toList!11431 lt!2581618))))

(declare-fun res!2938541 () Bool)

(declare-fun e!4343339 () Bool)

(assert (=> start!704252 (=> (not res!2938541) (not e!4343339))))

(declare-fun lt!2581601 () (InoxSet Context!15050))

(assert (=> start!704252 (= res!2938541 (matchZipper!3495 lt!2581601 s1!1971))))

(assert (=> start!704252 (= lt!2581601 (store ((as const (Array Context!15050 Bool)) false) ct1!232 true))))

(assert (=> start!704252 e!4343339))

(declare-fun inv!89472 (Context!15050) Bool)

(assert (=> start!704252 (and (inv!89472 ct1!232) e!4343329)))

(assert (=> start!704252 e!4343330))

(assert (=> start!704252 e!4343334))

(assert (=> start!704252 (and (inv!89472 ct2!328) e!4343331)))

(declare-fun b!7244140 () Bool)

(declare-fun res!2938534 () Bool)

(declare-fun e!4343332 () Bool)

(assert (=> b!7244140 (=> res!2938534 e!4343332)))

(declare-fun lt!2581607 () (InoxSet Context!15050))

(declare-fun derivationStepZipper!3373 ((InoxSet Context!15050) C!37444) (InoxSet Context!15050))

(assert (=> b!7244140 (= res!2938534 (not (= (derivationStepZipper!3373 lt!2581607 (h!76677 s1!1971)) lt!2581602)))))

(declare-fun b!7244141 () Bool)

(declare-fun e!4343327 () Bool)

(assert (=> b!7244141 (= e!4343327 e!4343338)))

(declare-fun res!2938533 () Bool)

(assert (=> b!7244141 (=> (not res!2938533) (not e!4343338))))

(assert (=> b!7244141 (= res!2938533 (matchZipper!3495 lt!2581618 (t!384404 s1!1971)))))

(assert (=> b!7244141 (= lt!2581618 (derivationStepZipper!3373 lt!2581601 (h!76677 s1!1971)))))

(declare-fun b!7244142 () Bool)

(assert (=> b!7244142 (= e!4343339 e!4343327)))

(declare-fun res!2938537 () Bool)

(assert (=> b!7244142 (=> (not res!2938537) (not e!4343327))))

(get-info :version)

(assert (=> b!7244142 (= res!2938537 (and (not ((_ is Nil!70228) (exprs!8025 ct1!232))) ((_ is Cons!70229) s1!1971)))))

(assert (=> b!7244142 (= lt!2581607 (store ((as const (Array Context!15050 Bool)) false) lt!2581605 true))))

(assert (=> b!7244142 (= lt!2581605 (Context!15051 lt!2581625))))

(declare-fun ++!16454 (List!70352 List!70352) List!70352)

(assert (=> b!7244142 (= lt!2581625 (++!16454 (exprs!8025 ct1!232) (exprs!8025 ct2!328)))))

(declare-fun lt!2581614 () Unit!163756)

(assert (=> b!7244142 (= lt!2581614 (lemmaConcatPreservesForall!1394 (exprs!8025 ct1!232) (exprs!8025 ct2!328) lambda!442679))))

(declare-fun b!7244143 () Bool)

(assert (=> b!7244143 (= e!4343332 true)))

(declare-fun lt!2581628 () (InoxSet Context!15050))

(assert (=> b!7244143 (= (matchZipper!3495 lt!2581628 lt!2581613) e!4343336)))

(declare-fun res!2938542 () Bool)

(assert (=> b!7244143 (=> res!2938542 e!4343336)))

(declare-fun lt!2581623 () (InoxSet Context!15050))

(assert (=> b!7244143 (= res!2938542 (matchZipper!3495 lt!2581623 lt!2581613))))

(declare-fun lt!2581598 () Unit!163756)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1704 ((InoxSet Context!15050) (InoxSet Context!15050) List!70353) Unit!163756)

(assert (=> b!7244143 (= lt!2581598 (lemmaZipperConcatMatchesSameAsBothZippers!1704 lt!2581623 lt!2581624 lt!2581613))))

(declare-fun lt!2581627 () Unit!163756)

(assert (=> b!7244143 (= lt!2581627 (lemmaConcatPreservesForall!1394 (exprs!8025 ct1!232) (exprs!8025 ct2!328) lambda!442679))))

(assert (=> b!7244143 (= (matchZipper!3495 lt!2581603 (t!384404 s1!1971)) e!4343328)))

(declare-fun res!2938540 () Bool)

(assert (=> b!7244143 (=> res!2938540 e!4343328)))

(assert (=> b!7244143 (= res!2938540 (matchZipper!3495 lt!2581619 (t!384404 s1!1971)))))

(declare-fun lt!2581617 () Unit!163756)

(assert (=> b!7244143 (= lt!2581617 (lemmaZipperConcatMatchesSameAsBothZippers!1704 lt!2581619 lt!2581615 (t!384404 s1!1971)))))

(declare-fun b!7244144 () Bool)

(assert (=> b!7244144 (= e!4343340 e!4343332)))

(declare-fun res!2938538 () Bool)

(assert (=> b!7244144 (=> res!2938538 e!4343332)))

(assert (=> b!7244144 (= res!2938538 (not (= lt!2581602 lt!2581628)))))

(assert (=> b!7244144 (= lt!2581628 ((_ map or) lt!2581623 lt!2581624))))

(declare-fun lt!2581611 () Context!15050)

(assert (=> b!7244144 (= lt!2581624 (derivationStepZipperUp!2439 lt!2581611 (h!76677 s1!1971)))))

(declare-fun lt!2581599 () Unit!163756)

(assert (=> b!7244144 (= lt!2581599 (lemmaConcatPreservesForall!1394 (exprs!8025 ct1!232) (exprs!8025 ct2!328) lambda!442679))))

(declare-fun b!7244145 () Bool)

(assert (=> b!7244145 (= e!4343333 e!4343337)))

(declare-fun res!2938532 () Bool)

(assert (=> b!7244145 (=> res!2938532 e!4343337)))

(assert (=> b!7244145 (= res!2938532 (isEmpty!40459 (exprs!8025 ct1!232)))))

(assert (=> b!7244145 (= lt!2581608 (derivationStepZipperUp!2439 ct1!232 (h!76677 s1!1971)))))

(declare-fun lt!2581626 () Context!15050)

(declare-fun lt!2581622 () Unit!163756)

(assert (=> b!7244145 (= lt!2581622 (lemmaConcatPreservesForall!1394 (exprs!8025 lt!2581626) (exprs!8025 ct2!328) lambda!442679))))

(declare-fun lt!2581610 () List!70352)

(assert (=> b!7244145 (matchZipper!3495 (store ((as const (Array Context!15050 Bool)) false) (Context!15051 lt!2581610) true) lt!2581613)))

(declare-fun s2!1849 () List!70353)

(declare-fun ++!16455 (List!70353 List!70353) List!70353)

(assert (=> b!7244145 (= lt!2581613 (++!16455 (t!384404 s1!1971) s2!1849))))

(assert (=> b!7244145 (= lt!2581610 (++!16454 (exprs!8025 lt!2581626) (exprs!8025 ct2!328)))))

(declare-fun lt!2581600 () Unit!163756)

(assert (=> b!7244145 (= lt!2581600 (lemmaConcatPreservesForall!1394 (exprs!8025 lt!2581626) (exprs!8025 ct2!328) lambda!442679))))

(declare-fun lt!2581609 () Unit!163756)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!358 (Context!15050 Context!15050 List!70353 List!70353) Unit!163756)

(assert (=> b!7244145 (= lt!2581609 (lemmaConcatenateContextMatchesConcatOfStrings!358 lt!2581626 ct2!328 (t!384404 s1!1971) s2!1849))))

(declare-fun getWitness!2136 ((InoxSet Context!15050) Int) Context!15050)

(assert (=> b!7244145 (= lt!2581626 (getWitness!2136 lt!2581618 lambda!442680))))

(assert (=> b!7244146 (= e!4343326 e!4343335)))

(declare-fun res!2938535 () Bool)

(assert (=> b!7244146 (=> res!2938535 e!4343335)))

(declare-fun nullable!7878 (Regex!18585) Bool)

(assert (=> b!7244146 (= res!2938535 (not (nullable!7878 (h!76676 (exprs!8025 ct1!232)))))))

(declare-fun lambda!442681 () Int)

(declare-fun flatMap!2773 ((InoxSet Context!15050) Int) (InoxSet Context!15050))

(assert (=> b!7244146 (= (flatMap!2773 lt!2581607 lambda!442681) (derivationStepZipperUp!2439 lt!2581605 (h!76677 s1!1971)))))

(declare-fun lt!2581612 () Unit!163756)

(declare-fun lemmaFlatMapOnSingletonSet!2196 ((InoxSet Context!15050) Context!15050 Int) Unit!163756)

(assert (=> b!7244146 (= lt!2581612 (lemmaFlatMapOnSingletonSet!2196 lt!2581607 lt!2581605 lambda!442681))))

(declare-fun lt!2581597 () Unit!163756)

(assert (=> b!7244146 (= lt!2581597 (lemmaConcatPreservesForall!1394 (exprs!8025 ct1!232) (exprs!8025 ct2!328) lambda!442679))))

(assert (=> b!7244146 (= (flatMap!2773 lt!2581601 lambda!442681) (derivationStepZipperUp!2439 ct1!232 (h!76677 s1!1971)))))

(declare-fun lt!2581620 () Unit!163756)

(assert (=> b!7244146 (= lt!2581620 (lemmaFlatMapOnSingletonSet!2196 lt!2581601 ct1!232 lambda!442681))))

(assert (=> b!7244146 (= lt!2581623 (derivationStepZipperDown!2609 (h!76676 (exprs!8025 ct1!232)) lt!2581611 (h!76677 s1!1971)))))

(assert (=> b!7244146 (= lt!2581611 (Context!15051 (tail!14252 lt!2581625)))))

(declare-fun b!7244147 () Bool)

(declare-fun res!2938539 () Bool)

(assert (=> b!7244147 (=> (not res!2938539) (not e!4343339))))

(assert (=> b!7244147 (= res!2938539 (matchZipper!3495 (store ((as const (Array Context!15050 Bool)) false) ct2!328 true) s2!1849))))

(assert (= (and start!704252 res!2938541) b!7244147))

(assert (= (and b!7244147 res!2938539) b!7244142))

(assert (= (and b!7244142 res!2938537) b!7244141))

(assert (= (and b!7244141 res!2938533) b!7244133))

(assert (= (and b!7244133 (not res!2938531)) b!7244145))

(assert (= (and b!7244145 (not res!2938532)) b!7244137))

(assert (= (and b!7244137 (not res!2938530)) b!7244146))

(assert (= (and b!7244146 (not res!2938535)) b!7244136))

(assert (= (and b!7244136 (not res!2938536)) b!7244144))

(assert (= (and b!7244144 (not res!2938538)) b!7244140))

(assert (= (and b!7244140 (not res!2938534)) b!7244143))

(assert (= (and b!7244143 (not res!2938540)) b!7244132))

(assert (= (and b!7244143 (not res!2938542)) b!7244131))

(assert (= start!704252 b!7244135))

(assert (= (and start!704252 ((_ is Cons!70229) s1!1971)) b!7244134))

(assert (= (and start!704252 ((_ is Cons!70229) s2!1849)) b!7244138))

(assert (= start!704252 b!7244139))

(declare-fun m!7919800 () Bool)

(assert (=> b!7244131 m!7919800))

(declare-fun m!7919802 () Bool)

(assert (=> b!7244143 m!7919802))

(declare-fun m!7919804 () Bool)

(assert (=> b!7244143 m!7919804))

(declare-fun m!7919806 () Bool)

(assert (=> b!7244143 m!7919806))

(declare-fun m!7919808 () Bool)

(assert (=> b!7244143 m!7919808))

(declare-fun m!7919810 () Bool)

(assert (=> b!7244143 m!7919810))

(declare-fun m!7919812 () Bool)

(assert (=> b!7244143 m!7919812))

(declare-fun m!7919814 () Bool)

(assert (=> b!7244143 m!7919814))

(declare-fun m!7919816 () Bool)

(assert (=> b!7244145 m!7919816))

(declare-fun m!7919818 () Bool)

(assert (=> b!7244145 m!7919818))

(declare-fun m!7919820 () Bool)

(assert (=> b!7244145 m!7919820))

(declare-fun m!7919822 () Bool)

(assert (=> b!7244145 m!7919822))

(assert (=> b!7244145 m!7919816))

(declare-fun m!7919824 () Bool)

(assert (=> b!7244145 m!7919824))

(declare-fun m!7919826 () Bool)

(assert (=> b!7244145 m!7919826))

(declare-fun m!7919828 () Bool)

(assert (=> b!7244145 m!7919828))

(declare-fun m!7919830 () Bool)

(assert (=> b!7244145 m!7919830))

(assert (=> b!7244145 m!7919818))

(declare-fun m!7919832 () Bool)

(assert (=> b!7244145 m!7919832))

(declare-fun m!7919834 () Bool)

(assert (=> b!7244132 m!7919834))

(declare-fun m!7919836 () Bool)

(assert (=> start!704252 m!7919836))

(declare-fun m!7919838 () Bool)

(assert (=> start!704252 m!7919838))

(declare-fun m!7919840 () Bool)

(assert (=> start!704252 m!7919840))

(declare-fun m!7919842 () Bool)

(assert (=> start!704252 m!7919842))

(declare-fun m!7919844 () Bool)

(assert (=> b!7244137 m!7919844))

(assert (=> b!7244137 m!7919808))

(declare-fun m!7919846 () Bool)

(assert (=> b!7244137 m!7919846))

(declare-fun m!7919848 () Bool)

(assert (=> b!7244137 m!7919848))

(declare-fun m!7919850 () Bool)

(assert (=> b!7244137 m!7919850))

(assert (=> b!7244137 m!7919808))

(declare-fun m!7919852 () Bool)

(assert (=> b!7244141 m!7919852))

(declare-fun m!7919854 () Bool)

(assert (=> b!7244141 m!7919854))

(declare-fun m!7919856 () Bool)

(assert (=> b!7244133 m!7919856))

(declare-fun m!7919858 () Bool)

(assert (=> b!7244133 m!7919858))

(declare-fun m!7919860 () Bool)

(assert (=> b!7244133 m!7919860))

(declare-fun m!7919862 () Bool)

(assert (=> b!7244133 m!7919862))

(declare-fun m!7919864 () Bool)

(assert (=> b!7244140 m!7919864))

(declare-fun m!7919866 () Bool)

(assert (=> b!7244142 m!7919866))

(declare-fun m!7919868 () Bool)

(assert (=> b!7244142 m!7919868))

(assert (=> b!7244142 m!7919808))

(declare-fun m!7919870 () Bool)

(assert (=> b!7244144 m!7919870))

(assert (=> b!7244144 m!7919808))

(declare-fun m!7919872 () Bool)

(assert (=> b!7244146 m!7919872))

(assert (=> b!7244146 m!7919844))

(declare-fun m!7919874 () Bool)

(assert (=> b!7244146 m!7919874))

(assert (=> b!7244146 m!7919808))

(declare-fun m!7919876 () Bool)

(assert (=> b!7244146 m!7919876))

(assert (=> b!7244146 m!7919822))

(declare-fun m!7919878 () Bool)

(assert (=> b!7244146 m!7919878))

(declare-fun m!7919880 () Bool)

(assert (=> b!7244146 m!7919880))

(declare-fun m!7919882 () Bool)

(assert (=> b!7244146 m!7919882))

(declare-fun m!7919884 () Bool)

(assert (=> b!7244146 m!7919884))

(declare-fun m!7919886 () Bool)

(assert (=> b!7244147 m!7919886))

(assert (=> b!7244147 m!7919886))

(declare-fun m!7919888 () Bool)

(assert (=> b!7244147 m!7919888))

(declare-fun m!7919890 () Bool)

(assert (=> b!7244136 m!7919890))

(check-sat (not b!7244142) (not b!7244141) (not b!7244147) (not b!7244135) (not b!7244139) (not b!7244132) (not start!704252) (not b!7244143) (not b!7244137) (not b!7244136) (not b!7244145) (not b!7244144) (not b!7244133) (not b!7244138) (not b!7244131) (not b!7244146) (not b!7244134) (not b!7244140) tp_is_empty!46635)
(check-sat)
