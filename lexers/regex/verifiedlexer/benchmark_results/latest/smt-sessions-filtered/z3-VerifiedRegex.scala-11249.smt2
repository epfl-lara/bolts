; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!590272 () Bool)

(assert start!590272)

(declare-fun b!5736286 () Bool)

(assert (=> b!5736286 true))

(assert (=> b!5736286 true))

(declare-fun lambda!310887 () Int)

(declare-fun lambda!310886 () Int)

(assert (=> b!5736286 (not (= lambda!310887 lambda!310886))))

(assert (=> b!5736286 true))

(assert (=> b!5736286 true))

(declare-fun b!5736294 () Bool)

(assert (=> b!5736294 true))

(declare-fun b!5736299 () Bool)

(assert (=> b!5736299 true))

(declare-fun bs!1340738 () Bool)

(declare-fun b!5736281 () Bool)

(assert (= bs!1340738 (and b!5736281 b!5736286)))

(declare-datatypes ((C!31760 0))(
  ( (C!31761 (val!25582 Int)) )
))
(declare-datatypes ((Regex!15745 0))(
  ( (ElementMatch!15745 (c!1012253 C!31760)) (Concat!24590 (regOne!32002 Regex!15745) (regTwo!32002 Regex!15745)) (EmptyExpr!15745) (Star!15745 (reg!16074 Regex!15745)) (EmptyLang!15745) (Union!15745 (regOne!32003 Regex!15745) (regTwo!32003 Regex!15745)) )
))
(declare-fun r!7292 () Regex!15745)

(declare-fun lambda!310891 () Int)

(declare-fun lt!2283800 () Regex!15745)

(assert (=> bs!1340738 (= (= lt!2283800 (regOne!32002 r!7292)) (= lambda!310891 lambda!310886))))

(assert (=> bs!1340738 (not (= lambda!310891 lambda!310887))))

(assert (=> b!5736281 true))

(assert (=> b!5736281 true))

(assert (=> b!5736281 true))

(declare-fun lambda!310892 () Int)

(assert (=> bs!1340738 (not (= lambda!310892 lambda!310886))))

(assert (=> bs!1340738 (= (= lt!2283800 (regOne!32002 r!7292)) (= lambda!310892 lambda!310887))))

(assert (=> b!5736281 (not (= lambda!310892 lambda!310891))))

(assert (=> b!5736281 true))

(assert (=> b!5736281 true))

(assert (=> b!5736281 true))

(declare-fun bs!1340739 () Bool)

(declare-fun b!5736301 () Bool)

(assert (= bs!1340739 (and b!5736301 b!5736286)))

(declare-datatypes ((List!63534 0))(
  ( (Nil!63410) (Cons!63410 (h!69858 C!31760) (t!376862 List!63534)) )
))
(declare-fun s!2326 () List!63534)

(declare-datatypes ((tuple2!65684 0))(
  ( (tuple2!65685 (_1!36145 List!63534) (_2!36145 List!63534)) )
))
(declare-fun lt!2283847 () tuple2!65684)

(declare-fun lambda!310893 () Int)

(declare-fun lt!2283853 () Regex!15745)

(assert (=> bs!1340739 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 r!7292)) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310893 lambda!310886))))

(assert (=> bs!1340739 (not (= lambda!310893 lambda!310887))))

(declare-fun bs!1340740 () Bool)

(assert (= bs!1340740 (and b!5736301 b!5736281)))

(assert (=> bs!1340740 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310893 lambda!310891))))

(assert (=> bs!1340740 (not (= lambda!310893 lambda!310892))))

(assert (=> b!5736301 true))

(assert (=> b!5736301 true))

(assert (=> b!5736301 true))

(declare-fun lambda!310894 () Int)

(assert (=> bs!1340739 (not (= lambda!310894 lambda!310886))))

(assert (=> bs!1340739 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 r!7292)) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310894 lambda!310887))))

(assert (=> bs!1340740 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310894 lambda!310892))))

(assert (=> b!5736301 (not (= lambda!310894 lambda!310893))))

(assert (=> bs!1340740 (not (= lambda!310894 lambda!310891))))

(assert (=> b!5736301 true))

(assert (=> b!5736301 true))

(assert (=> b!5736301 true))

(declare-fun lambda!310895 () Int)

(assert (=> b!5736301 (not (= lambda!310895 lambda!310894))))

(assert (=> bs!1340739 (not (= lambda!310895 lambda!310886))))

(assert (=> bs!1340739 (not (= lambda!310895 lambda!310887))))

(assert (=> bs!1340740 (not (= lambda!310895 lambda!310892))))

(assert (=> b!5736301 (not (= lambda!310895 lambda!310893))))

(assert (=> bs!1340740 (not (= lambda!310895 lambda!310891))))

(assert (=> b!5736301 true))

(assert (=> b!5736301 true))

(assert (=> b!5736301 true))

(declare-fun b!5736266 () Bool)

(declare-fun res!2422566 () Bool)

(declare-fun e!3526411 () Bool)

(assert (=> b!5736266 (=> res!2422566 e!3526411)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63535 0))(
  ( (Nil!63411) (Cons!63411 (h!69859 Regex!15745) (t!376863 List!63535)) )
))
(declare-datatypes ((Context!10258 0))(
  ( (Context!10259 (exprs!5629 List!63535)) )
))
(declare-fun lt!2283842 () (InoxSet Context!10258))

(declare-fun lt!2283852 () tuple2!65684)

(declare-fun matchZipper!1883 ((InoxSet Context!10258) List!63534) Bool)

(assert (=> b!5736266 (= res!2422566 (not (matchZipper!1883 lt!2283842 (_2!36145 lt!2283852))))))

(declare-fun b!5736267 () Bool)

(declare-datatypes ((Unit!156512 0))(
  ( (Unit!156513) )
))
(declare-fun e!3526400 () Unit!156512)

(declare-fun Unit!156514 () Unit!156512)

(assert (=> b!5736267 (= e!3526400 Unit!156514)))

(declare-fun b!5736268 () Bool)

(declare-fun e!3526405 () Bool)

(declare-fun tp!1586874 () Bool)

(assert (=> b!5736268 (= e!3526405 tp!1586874)))

(declare-fun b!5736269 () Bool)

(declare-fun res!2422553 () Bool)

(declare-fun e!3526403 () Bool)

(assert (=> b!5736269 (=> res!2422553 e!3526403)))

(declare-datatypes ((List!63536 0))(
  ( (Nil!63412) (Cons!63412 (h!69860 Context!10258) (t!376864 List!63536)) )
))
(declare-fun zl!343 () List!63536)

(get-info :version)

(assert (=> b!5736269 (= res!2422553 (not ((_ is Cons!63411) (exprs!5629 (h!69860 zl!343)))))))

(declare-fun b!5736270 () Bool)

(declare-fun e!3526415 () Bool)

(declare-fun lt!2283795 () Bool)

(assert (=> b!5736270 (= e!3526415 lt!2283795)))

(declare-fun b!5736271 () Bool)

(declare-fun e!3526402 () Bool)

(declare-fun tp!1586866 () Bool)

(declare-fun tp!1586867 () Bool)

(assert (=> b!5736271 (= e!3526402 (and tp!1586866 tp!1586867))))

(declare-fun setIsEmpty!38497 () Bool)

(declare-fun setRes!38497 () Bool)

(assert (=> setIsEmpty!38497 setRes!38497))

(declare-fun b!5736272 () Bool)

(declare-fun e!3526416 () Bool)

(declare-fun lt!2283825 () (InoxSet Context!10258))

(assert (=> b!5736272 (= e!3526416 (matchZipper!1883 lt!2283825 (t!376862 s!2326)))))

(declare-fun b!5736273 () Bool)

(declare-fun res!2422549 () Bool)

(assert (=> b!5736273 (=> res!2422549 e!3526403)))

(declare-fun generalisedUnion!1608 (List!63535) Regex!15745)

(declare-fun unfocusZipperList!1173 (List!63536) List!63535)

(assert (=> b!5736273 (= res!2422549 (not (= r!7292 (generalisedUnion!1608 (unfocusZipperList!1173 zl!343)))))))

(declare-fun b!5736274 () Bool)

(declare-fun res!2422567 () Bool)

(declare-fun e!3526401 () Bool)

(assert (=> b!5736274 (=> (not res!2422567) (not e!3526401))))

(declare-fun z!1189 () (InoxSet Context!10258))

(declare-fun toList!9529 ((InoxSet Context!10258)) List!63536)

(assert (=> b!5736274 (= res!2422567 (= (toList!9529 z!1189) zl!343))))

(declare-fun b!5736275 () Bool)

(declare-fun tp!1586873 () Bool)

(assert (=> b!5736275 (= e!3526402 tp!1586873)))

(declare-fun res!2422550 () Bool)

(assert (=> start!590272 (=> (not res!2422550) (not e!3526401))))

(declare-fun validRegex!7481 (Regex!15745) Bool)

(assert (=> start!590272 (= res!2422550 (validRegex!7481 r!7292))))

(assert (=> start!590272 e!3526401))

(assert (=> start!590272 e!3526402))

(declare-fun condSetEmpty!38497 () Bool)

(assert (=> start!590272 (= condSetEmpty!38497 (= z!1189 ((as const (Array Context!10258 Bool)) false)))))

(assert (=> start!590272 setRes!38497))

(declare-fun e!3526419 () Bool)

(assert (=> start!590272 e!3526419))

(declare-fun e!3526421 () Bool)

(assert (=> start!590272 e!3526421))

(declare-fun b!5736276 () Bool)

(declare-fun res!2422543 () Bool)

(declare-fun e!3526417 () Bool)

(assert (=> b!5736276 (=> res!2422543 e!3526417)))

(declare-fun lt!2283794 () Regex!15745)

(assert (=> b!5736276 (= res!2422543 (not (= lt!2283794 r!7292)))))

(declare-fun b!5736277 () Bool)

(declare-fun e!3526397 () Bool)

(assert (=> b!5736277 (= e!3526397 (not (matchZipper!1883 lt!2283825 (t!376862 s!2326))))))

(declare-fun b!5736278 () Bool)

(declare-fun e!3526413 () Bool)

(declare-fun e!3526408 () Bool)

(assert (=> b!5736278 (= e!3526413 e!3526408)))

(declare-fun res!2422554 () Bool)

(assert (=> b!5736278 (=> res!2422554 e!3526408)))

(declare-fun lt!2283796 () Context!10258)

(declare-fun lt!2283839 () Regex!15745)

(declare-fun unfocusZipper!1487 (List!63536) Regex!15745)

(assert (=> b!5736278 (= res!2422554 (not (= (unfocusZipper!1487 (Cons!63412 lt!2283796 Nil!63412)) lt!2283839)))))

(declare-fun lt!2283854 () Regex!15745)

(assert (=> b!5736278 (= lt!2283839 (Concat!24590 (reg!16074 (regOne!32002 r!7292)) lt!2283854))))

(declare-fun b!5736279 () Bool)

(declare-fun tp_is_empty!40743 () Bool)

(declare-fun tp!1586872 () Bool)

(assert (=> b!5736279 (= e!3526421 (and tp_is_empty!40743 tp!1586872))))

(declare-fun b!5736280 () Bool)

(declare-fun e!3526407 () Bool)

(assert (=> b!5736280 (= e!3526407 e!3526411)))

(declare-fun res!2422568 () Bool)

(assert (=> b!5736280 (=> res!2422568 e!3526411)))

(declare-fun lt!2283846 () List!63534)

(assert (=> b!5736280 (= res!2422568 (not (= s!2326 lt!2283846)))))

(declare-fun ++!13962 (List!63534 List!63534) List!63534)

(assert (=> b!5736280 (= lt!2283846 (++!13962 (_1!36145 lt!2283852) (_2!36145 lt!2283852)))))

(declare-datatypes ((Option!15754 0))(
  ( (None!15753) (Some!15753 (v!51808 tuple2!65684)) )
))
(declare-fun lt!2283841 () Option!15754)

(declare-fun get!21873 (Option!15754) tuple2!65684)

(assert (=> b!5736280 (= lt!2283852 (get!21873 lt!2283841))))

(declare-fun isDefined!12457 (Option!15754) Bool)

(assert (=> b!5736280 (isDefined!12457 lt!2283841)))

(declare-fun lt!2283821 () (InoxSet Context!10258))

(declare-fun findConcatSeparationZippers!132 ((InoxSet Context!10258) (InoxSet Context!10258) List!63534 List!63534 List!63534) Option!15754)

(assert (=> b!5736280 (= lt!2283841 (findConcatSeparationZippers!132 lt!2283821 lt!2283842 Nil!63410 s!2326 s!2326))))

(declare-fun lt!2283815 () Context!10258)

(declare-fun lt!2283799 () Unit!156512)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!132 ((InoxSet Context!10258) Context!10258 List!63534) Unit!156512)

(assert (=> b!5736280 (= lt!2283799 (lemmaConcatZipperMatchesStringThenFindConcatDefined!132 lt!2283821 lt!2283815 s!2326))))

(declare-fun e!3526418 () Bool)

(assert (=> b!5736281 (= e!3526411 e!3526418)))

(declare-fun res!2422548 () Bool)

(assert (=> b!5736281 (=> res!2422548 e!3526418)))

(declare-fun matchR!7930 (Regex!15745 List!63534) Bool)

(assert (=> b!5736281 (= res!2422548 (not (matchR!7930 lt!2283800 (_1!36145 lt!2283847))))))

(declare-fun lt!2283860 () Option!15754)

(assert (=> b!5736281 (= lt!2283847 (get!21873 lt!2283860))))

(declare-fun Exists!2845 (Int) Bool)

(assert (=> b!5736281 (= (Exists!2845 lambda!310891) (Exists!2845 lambda!310892))))

(declare-fun lt!2283840 () Unit!156512)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1474 (Regex!15745 Regex!15745 List!63534) Unit!156512)

(assert (=> b!5736281 (= lt!2283840 (lemmaExistCutMatchRandMatchRSpecEquivalent!1474 lt!2283800 (regTwo!32002 r!7292) s!2326))))

(assert (=> b!5736281 (= (isDefined!12457 lt!2283860) (Exists!2845 lambda!310891))))

(declare-fun findConcatSeparation!2168 (Regex!15745 Regex!15745 List!63534 List!63534 List!63534) Option!15754)

(assert (=> b!5736281 (= lt!2283860 (findConcatSeparation!2168 lt!2283800 (regTwo!32002 r!7292) Nil!63410 s!2326 s!2326))))

(declare-fun lt!2283855 () Unit!156512)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1932 (Regex!15745 Regex!15745 List!63534) Unit!156512)

(assert (=> b!5736281 (= lt!2283855 (lemmaFindConcatSeparationEquivalentToExists!1932 lt!2283800 (regTwo!32002 r!7292) s!2326))))

(declare-fun lt!2283816 () Regex!15745)

(declare-fun matchRSpec!2848 (Regex!15745 List!63534) Bool)

(assert (=> b!5736281 (matchRSpec!2848 lt!2283816 s!2326)))

(declare-fun lt!2283837 () Unit!156512)

(declare-fun mainMatchTheorem!2848 (Regex!15745 List!63534) Unit!156512)

(assert (=> b!5736281 (= lt!2283837 (mainMatchTheorem!2848 lt!2283816 s!2326))))

(assert (=> b!5736281 (matchR!7930 lt!2283816 s!2326)))

(assert (=> b!5736281 (= lt!2283816 (Concat!24590 lt!2283800 (regTwo!32002 r!7292)))))

(assert (=> b!5736281 (= lt!2283800 (Concat!24590 (reg!16074 (regOne!32002 r!7292)) lt!2283853))))

(declare-fun lt!2283829 () Unit!156512)

(declare-fun lemmaConcatAssociative!98 (Regex!15745 Regex!15745 Regex!15745 List!63534) Unit!156512)

(assert (=> b!5736281 (= lt!2283829 (lemmaConcatAssociative!98 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (regTwo!32002 r!7292) s!2326))))

(assert (=> b!5736281 e!3526415))

(declare-fun res!2422544 () Bool)

(assert (=> b!5736281 (=> (not res!2422544) (not e!3526415))))

(assert (=> b!5736281 (= res!2422544 (matchR!7930 lt!2283839 lt!2283846))))

(declare-fun lt!2283803 () Unit!156512)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!282 (Regex!15745 Regex!15745 List!63534 List!63534) Unit!156512)

(assert (=> b!5736281 (= lt!2283803 (lemmaTwoRegexMatchThenConcatMatchesConcatString!282 (reg!16074 (regOne!32002 r!7292)) lt!2283854 (_1!36145 lt!2283852) (_2!36145 lt!2283852)))))

(assert (=> b!5736281 (matchR!7930 lt!2283854 (_2!36145 lt!2283852))))

(declare-fun lt!2283843 () List!63536)

(declare-fun lt!2283836 () Unit!156512)

(declare-fun theoremZipperRegexEquiv!665 ((InoxSet Context!10258) List!63536 Regex!15745 List!63534) Unit!156512)

(assert (=> b!5736281 (= lt!2283836 (theoremZipperRegexEquiv!665 lt!2283842 lt!2283843 lt!2283854 (_2!36145 lt!2283852)))))

(assert (=> b!5736281 (matchR!7930 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283852))))

(declare-fun lt!2283834 () List!63536)

(declare-fun lt!2283838 () Unit!156512)

(assert (=> b!5736281 (= lt!2283838 (theoremZipperRegexEquiv!665 lt!2283821 lt!2283834 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283852)))))

(declare-fun lt!2283845 () List!63535)

(declare-fun lt!2283809 () List!63535)

(declare-fun ++!13963 (List!63535 List!63535) List!63535)

(assert (=> b!5736281 (matchZipper!1883 (store ((as const (Array Context!10258 Bool)) false) (Context!10259 (++!13963 lt!2283845 lt!2283809)) true) lt!2283846)))

(declare-fun lambda!310890 () Int)

(declare-fun lt!2283828 () Unit!156512)

(declare-fun lemmaConcatPreservesForall!314 (List!63535 List!63535 Int) Unit!156512)

(assert (=> b!5736281 (= lt!2283828 (lemmaConcatPreservesForall!314 lt!2283845 lt!2283809 lambda!310890))))

(declare-fun lt!2283807 () Context!10258)

(declare-fun lt!2283798 () Unit!156512)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!144 (Context!10258 Context!10258 List!63534 List!63534) Unit!156512)

(assert (=> b!5736281 (= lt!2283798 (lemmaConcatenateContextMatchesConcatOfStrings!144 lt!2283807 lt!2283815 (_1!36145 lt!2283852) (_2!36145 lt!2283852)))))

(declare-fun b!5736282 () Bool)

(declare-fun e!3526406 () Bool)

(assert (=> b!5736282 (= e!3526408 e!3526406)))

(declare-fun res!2422564 () Bool)

(assert (=> b!5736282 (=> res!2422564 e!3526406)))

(assert (=> b!5736282 (= res!2422564 (not (= (unfocusZipper!1487 lt!2283834) (reg!16074 (regOne!32002 r!7292)))))))

(assert (=> b!5736282 (= lt!2283834 (Cons!63412 lt!2283807 Nil!63412))))

(declare-fun lambda!310888 () Int)

(declare-fun flatMap!1358 ((InoxSet Context!10258) Int) (InoxSet Context!10258))

(declare-fun derivationStepZipperUp!1013 (Context!10258 C!31760) (InoxSet Context!10258))

(assert (=> b!5736282 (= (flatMap!1358 lt!2283842 lambda!310888) (derivationStepZipperUp!1013 lt!2283815 (h!69858 s!2326)))))

(declare-fun lt!2283823 () Unit!156512)

(declare-fun lemmaFlatMapOnSingletonSet!890 ((InoxSet Context!10258) Context!10258 Int) Unit!156512)

(assert (=> b!5736282 (= lt!2283823 (lemmaFlatMapOnSingletonSet!890 lt!2283842 lt!2283815 lambda!310888))))

(assert (=> b!5736282 (= (flatMap!1358 lt!2283821 lambda!310888) (derivationStepZipperUp!1013 lt!2283807 (h!69858 s!2326)))))

(declare-fun lt!2283827 () Unit!156512)

(assert (=> b!5736282 (= lt!2283827 (lemmaFlatMapOnSingletonSet!890 lt!2283821 lt!2283807 lambda!310888))))

(declare-fun lt!2283830 () (InoxSet Context!10258))

(assert (=> b!5736282 (= lt!2283830 (derivationStepZipperUp!1013 lt!2283815 (h!69858 s!2326)))))

(declare-fun lt!2283849 () (InoxSet Context!10258))

(assert (=> b!5736282 (= lt!2283849 (derivationStepZipperUp!1013 lt!2283807 (h!69858 s!2326)))))

(assert (=> b!5736282 (= lt!2283842 (store ((as const (Array Context!10258 Bool)) false) lt!2283815 true))))

(assert (=> b!5736282 (= lt!2283821 (store ((as const (Array Context!10258 Bool)) false) lt!2283807 true))))

(assert (=> b!5736282 (= lt!2283807 (Context!10259 lt!2283845))))

(assert (=> b!5736282 (= lt!2283845 (Cons!63411 (reg!16074 (regOne!32002 r!7292)) Nil!63411))))

(declare-fun b!5736283 () Bool)

(declare-fun e!3526422 () Bool)

(declare-fun e!3526414 () Bool)

(assert (=> b!5736283 (= e!3526422 e!3526414)))

(declare-fun res!2422571 () Bool)

(assert (=> b!5736283 (=> res!2422571 e!3526414)))

(declare-fun lt!2283812 () Bool)

(assert (=> b!5736283 (= res!2422571 lt!2283812)))

(assert (=> b!5736283 (= lt!2283795 (matchRSpec!2848 lt!2283839 s!2326))))

(assert (=> b!5736283 (= lt!2283795 (matchR!7930 lt!2283839 s!2326))))

(declare-fun lt!2283835 () Unit!156512)

(assert (=> b!5736283 (= lt!2283835 (mainMatchTheorem!2848 lt!2283839 s!2326))))

(declare-fun b!5736284 () Bool)

(declare-fun res!2422570 () Bool)

(assert (=> b!5736284 (=> res!2422570 e!3526411)))

(assert (=> b!5736284 (= res!2422570 (not (matchZipper!1883 lt!2283821 (_1!36145 lt!2283852))))))

(declare-fun e!3526410 () Bool)

(declare-fun setNonEmpty!38497 () Bool)

(declare-fun setElem!38497 () Context!10258)

(declare-fun tp!1586865 () Bool)

(declare-fun inv!82609 (Context!10258) Bool)

(assert (=> setNonEmpty!38497 (= setRes!38497 (and tp!1586865 (inv!82609 setElem!38497) e!3526410))))

(declare-fun setRest!38497 () (InoxSet Context!10258))

(assert (=> setNonEmpty!38497 (= z!1189 ((_ map or) (store ((as const (Array Context!10258 Bool)) false) setElem!38497 true) setRest!38497))))

(declare-fun b!5736285 () Bool)

(declare-fun e!3526423 () Bool)

(assert (=> b!5736285 (= e!3526414 e!3526423)))

(declare-fun res!2422560 () Bool)

(assert (=> b!5736285 (=> res!2422560 e!3526423)))

(assert (=> b!5736285 (= res!2422560 e!3526397)))

(declare-fun res!2422563 () Bool)

(assert (=> b!5736285 (=> (not res!2422563) (not e!3526397))))

(declare-fun lt!2283844 () Bool)

(assert (=> b!5736285 (= res!2422563 (not lt!2283844))))

(declare-fun lt!2283814 () (InoxSet Context!10258))

(assert (=> b!5736285 (= lt!2283844 (matchZipper!1883 lt!2283814 (t!376862 s!2326)))))

(declare-fun e!3526409 () Bool)

(assert (=> b!5736286 (= e!3526403 e!3526409)))

(declare-fun res!2422540 () Bool)

(assert (=> b!5736286 (=> res!2422540 e!3526409)))

(declare-fun lt!2283802 () Bool)

(assert (=> b!5736286 (= res!2422540 (or (not (= lt!2283812 lt!2283802)) ((_ is Nil!63410) s!2326)))))

(assert (=> b!5736286 (= (Exists!2845 lambda!310886) (Exists!2845 lambda!310887))))

(declare-fun lt!2283858 () Unit!156512)

(assert (=> b!5736286 (= lt!2283858 (lemmaExistCutMatchRandMatchRSpecEquivalent!1474 (regOne!32002 r!7292) (regTwo!32002 r!7292) s!2326))))

(assert (=> b!5736286 (= lt!2283802 (Exists!2845 lambda!310886))))

(assert (=> b!5736286 (= lt!2283802 (isDefined!12457 (findConcatSeparation!2168 (regOne!32002 r!7292) (regTwo!32002 r!7292) Nil!63410 s!2326 s!2326)))))

(declare-fun lt!2283856 () Unit!156512)

(assert (=> b!5736286 (= lt!2283856 (lemmaFindConcatSeparationEquivalentToExists!1932 (regOne!32002 r!7292) (regTwo!32002 r!7292) s!2326))))

(declare-fun b!5736287 () Bool)

(declare-fun e!3526420 () Bool)

(declare-fun e!3526404 () Bool)

(assert (=> b!5736287 (= e!3526420 e!3526404)))

(declare-fun res!2422552 () Bool)

(assert (=> b!5736287 (=> res!2422552 e!3526404)))

(declare-fun lt!2283810 () (InoxSet Context!10258))

(assert (=> b!5736287 (= res!2422552 (not (= lt!2283814 lt!2283810)))))

(declare-fun derivationStepZipperDown!1087 (Regex!15745 Context!10258 C!31760) (InoxSet Context!10258))

(assert (=> b!5736287 (= lt!2283810 (derivationStepZipperDown!1087 (reg!16074 (regOne!32002 r!7292)) lt!2283815 (h!69858 s!2326)))))

(assert (=> b!5736287 (= lt!2283815 (Context!10259 lt!2283809))))

(assert (=> b!5736287 (= lt!2283809 (Cons!63411 lt!2283853 (t!376863 (exprs!5629 (h!69860 zl!343)))))))

(assert (=> b!5736287 (= lt!2283853 (Star!15745 (reg!16074 (regOne!32002 r!7292))))))

(declare-fun b!5736288 () Bool)

(declare-fun res!2422558 () Bool)

(assert (=> b!5736288 (=> res!2422558 e!3526423)))

(declare-fun lt!2283808 () Bool)

(assert (=> b!5736288 (= res!2422558 (or (not lt!2283844) (not lt!2283808)))))

(declare-fun b!5736289 () Bool)

(declare-fun res!2422546 () Bool)

(assert (=> b!5736289 (=> res!2422546 e!3526403)))

(declare-fun generalisedConcat!1360 (List!63535) Regex!15745)

(assert (=> b!5736289 (= res!2422546 (not (= r!7292 (generalisedConcat!1360 (exprs!5629 (h!69860 zl!343))))))))

(declare-fun b!5736290 () Bool)

(declare-fun res!2422551 () Bool)

(assert (=> b!5736290 (=> res!2422551 e!3526414)))

(assert (=> b!5736290 (= res!2422551 (not (matchZipper!1883 z!1189 s!2326)))))

(declare-fun b!5736291 () Bool)

(declare-fun res!2422575 () Bool)

(declare-fun e!3526412 () Bool)

(assert (=> b!5736291 (=> res!2422575 e!3526412)))

(declare-fun lt!2283811 () tuple2!65684)

(assert (=> b!5736291 (= res!2422575 (not (matchR!7930 lt!2283853 (_2!36145 lt!2283811))))))

(declare-fun b!5736292 () Bool)

(declare-fun Unit!156515 () Unit!156512)

(assert (=> b!5736292 (= e!3526400 Unit!156515)))

(declare-fun lt!2283826 () Unit!156512)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!770 ((InoxSet Context!10258) (InoxSet Context!10258) List!63534) Unit!156512)

(assert (=> b!5736292 (= lt!2283826 (lemmaZipperConcatMatchesSameAsBothZippers!770 lt!2283814 lt!2283825 (t!376862 s!2326)))))

(declare-fun res!2422555 () Bool)

(assert (=> b!5736292 (= res!2422555 (matchZipper!1883 lt!2283814 (t!376862 s!2326)))))

(assert (=> b!5736292 (=> res!2422555 e!3526416)))

(assert (=> b!5736292 (= (matchZipper!1883 ((_ map or) lt!2283814 lt!2283825) (t!376862 s!2326)) e!3526416)))

(declare-fun tp!1586869 () Bool)

(declare-fun b!5736293 () Bool)

(assert (=> b!5736293 (= e!3526419 (and (inv!82609 (h!69860 zl!343)) e!3526405 tp!1586869))))

(assert (=> b!5736294 (= e!3526409 e!3526420)))

(declare-fun res!2422573 () Bool)

(assert (=> b!5736294 (=> res!2422573 e!3526420)))

(assert (=> b!5736294 (= res!2422573 (or (and ((_ is ElementMatch!15745) (regOne!32002 r!7292)) (= (c!1012253 (regOne!32002 r!7292)) (h!69858 s!2326))) ((_ is Union!15745) (regOne!32002 r!7292))))))

(declare-fun lt!2283805 () Unit!156512)

(assert (=> b!5736294 (= lt!2283805 e!3526400)))

(declare-fun c!1012252 () Bool)

(declare-fun lt!2283820 () Bool)

(assert (=> b!5736294 (= c!1012252 lt!2283820)))

(declare-fun nullable!5777 (Regex!15745) Bool)

(assert (=> b!5736294 (= lt!2283820 (nullable!5777 (h!69859 (exprs!5629 (h!69860 zl!343)))))))

(assert (=> b!5736294 (= (flatMap!1358 z!1189 lambda!310888) (derivationStepZipperUp!1013 (h!69860 zl!343) (h!69858 s!2326)))))

(declare-fun lt!2283804 () Unit!156512)

(assert (=> b!5736294 (= lt!2283804 (lemmaFlatMapOnSingletonSet!890 z!1189 (h!69860 zl!343) lambda!310888))))

(declare-fun lt!2283832 () Context!10258)

(assert (=> b!5736294 (= lt!2283825 (derivationStepZipperUp!1013 lt!2283832 (h!69858 s!2326)))))

(assert (=> b!5736294 (= lt!2283814 (derivationStepZipperDown!1087 (h!69859 (exprs!5629 (h!69860 zl!343))) lt!2283832 (h!69858 s!2326)))))

(assert (=> b!5736294 (= lt!2283832 (Context!10259 (t!376863 (exprs!5629 (h!69860 zl!343)))))))

(declare-fun lt!2283831 () (InoxSet Context!10258))

(assert (=> b!5736294 (= lt!2283831 (derivationStepZipperUp!1013 (Context!10259 (Cons!63411 (h!69859 (exprs!5629 (h!69860 zl!343))) (t!376863 (exprs!5629 (h!69860 zl!343))))) (h!69858 s!2326)))))

(declare-fun b!5736295 () Bool)

(declare-fun e!3526398 () Bool)

(assert (=> b!5736295 (= e!3526404 e!3526398)))

(declare-fun res!2422556 () Bool)

(assert (=> b!5736295 (=> res!2422556 e!3526398)))

(declare-fun lt!2283819 () (InoxSet Context!10258))

(assert (=> b!5736295 (= res!2422556 (not (= lt!2283819 lt!2283810)))))

(declare-fun lt!2283857 () (InoxSet Context!10258))

(assert (=> b!5736295 (= (flatMap!1358 lt!2283857 lambda!310888) (derivationStepZipperUp!1013 lt!2283796 (h!69858 s!2326)))))

(declare-fun lt!2283813 () Unit!156512)

(assert (=> b!5736295 (= lt!2283813 (lemmaFlatMapOnSingletonSet!890 lt!2283857 lt!2283796 lambda!310888))))

(declare-fun lt!2283848 () (InoxSet Context!10258))

(assert (=> b!5736295 (= lt!2283848 (derivationStepZipperUp!1013 lt!2283796 (h!69858 s!2326)))))

(declare-fun derivationStepZipper!1828 ((InoxSet Context!10258) C!31760) (InoxSet Context!10258))

(assert (=> b!5736295 (= lt!2283819 (derivationStepZipper!1828 lt!2283857 (h!69858 s!2326)))))

(assert (=> b!5736295 (= lt!2283857 (store ((as const (Array Context!10258 Bool)) false) lt!2283796 true))))

(assert (=> b!5736295 (= lt!2283796 (Context!10259 (Cons!63411 (reg!16074 (regOne!32002 r!7292)) lt!2283809)))))

(declare-fun b!5736296 () Bool)

(assert (=> b!5736296 (= e!3526412 (matchR!7930 (regTwo!32002 r!7292) (_2!36145 lt!2283847)))))

(declare-fun lt!2283851 () List!63534)

(assert (=> b!5736296 (matchR!7930 lt!2283853 lt!2283851)))

(declare-fun lt!2283824 () Unit!156512)

(declare-fun lemmaStarApp!96 (Regex!15745 List!63534 List!63534) Unit!156512)

(assert (=> b!5736296 (= lt!2283824 (lemmaStarApp!96 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283811) (_2!36145 lt!2283811)))))

(declare-fun b!5736297 () Bool)

(declare-fun res!2422547 () Bool)

(assert (=> b!5736297 (=> res!2422547 e!3526409)))

(declare-fun isEmpty!35289 (List!63535) Bool)

(assert (=> b!5736297 (= res!2422547 (isEmpty!35289 (t!376863 (exprs!5629 (h!69860 zl!343)))))))

(declare-fun b!5736298 () Bool)

(assert (=> b!5736298 (= e!3526402 tp_is_empty!40743)))

(assert (=> b!5736299 (= e!3526423 e!3526407)))

(declare-fun res!2422557 () Bool)

(assert (=> b!5736299 (=> res!2422557 e!3526407)))

(declare-fun appendTo!124 ((InoxSet Context!10258) Context!10258) (InoxSet Context!10258))

(assert (=> b!5736299 (= res!2422557 (not (= (appendTo!124 lt!2283821 lt!2283815) lt!2283857)))))

(declare-fun lambda!310889 () Int)

(declare-fun map!14538 ((InoxSet Context!10258) Int) (InoxSet Context!10258))

(assert (=> b!5736299 (= (map!14538 lt!2283821 lambda!310889) (store ((as const (Array Context!10258 Bool)) false) (Context!10259 (++!13963 lt!2283845 lt!2283809)) true))))

(declare-fun lt!2283850 () Unit!156512)

(assert (=> b!5736299 (= lt!2283850 (lemmaConcatPreservesForall!314 lt!2283845 lt!2283809 lambda!310890))))

(declare-fun lt!2283859 () Unit!156512)

(declare-fun lemmaMapOnSingletonSet!140 ((InoxSet Context!10258) Context!10258 Int) Unit!156512)

(assert (=> b!5736299 (= lt!2283859 (lemmaMapOnSingletonSet!140 lt!2283821 lt!2283807 lambda!310889))))

(declare-fun b!5736300 () Bool)

(declare-fun res!2422561 () Bool)

(assert (=> b!5736300 (=> res!2422561 e!3526420)))

(assert (=> b!5736300 (= res!2422561 (or ((_ is Concat!24590) (regOne!32002 r!7292)) (not ((_ is Star!15745) (regOne!32002 r!7292)))))))

(assert (=> b!5736301 (= e!3526418 e!3526412)))

(declare-fun res!2422565 () Bool)

(assert (=> b!5736301 (=> res!2422565 e!3526412)))

(assert (=> b!5736301 (= res!2422565 (not (matchR!7930 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283811))))))

(assert (=> b!5736301 (= (++!13962 lt!2283851 (_2!36145 lt!2283847)) (++!13962 (_1!36145 lt!2283811) (++!13962 (_2!36145 lt!2283811) (_2!36145 lt!2283847))))))

(assert (=> b!5736301 (= lt!2283851 (++!13962 (_1!36145 lt!2283811) (_2!36145 lt!2283811)))))

(declare-fun lt!2283817 () Unit!156512)

(declare-fun lemmaConcatAssociativity!2888 (List!63534 List!63534 List!63534) Unit!156512)

(assert (=> b!5736301 (= lt!2283817 (lemmaConcatAssociativity!2888 (_1!36145 lt!2283811) (_2!36145 lt!2283811) (_2!36145 lt!2283847)))))

(declare-fun lt!2283833 () Option!15754)

(assert (=> b!5736301 (= lt!2283811 (get!21873 lt!2283833))))

(assert (=> b!5736301 (= (Exists!2845 lambda!310893) (Exists!2845 lambda!310895))))

(declare-fun lt!2283801 () Unit!156512)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!558 (Regex!15745 List!63534) Unit!156512)

(assert (=> b!5736301 (= lt!2283801 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!558 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283847)))))

(assert (=> b!5736301 (= (Exists!2845 lambda!310893) (Exists!2845 lambda!310894))))

(declare-fun lt!2283818 () Unit!156512)

(assert (=> b!5736301 (= lt!2283818 (lemmaExistCutMatchRandMatchRSpecEquivalent!1474 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (_1!36145 lt!2283847)))))

(assert (=> b!5736301 (= (isDefined!12457 lt!2283833) (Exists!2845 lambda!310893))))

(assert (=> b!5736301 (= lt!2283833 (findConcatSeparation!2168 (reg!16074 (regOne!32002 r!7292)) lt!2283853 Nil!63410 (_1!36145 lt!2283847) (_1!36145 lt!2283847)))))

(declare-fun lt!2283797 () Unit!156512)

(assert (=> b!5736301 (= lt!2283797 (lemmaFindConcatSeparationEquivalentToExists!1932 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (_1!36145 lt!2283847)))))

(assert (=> b!5736301 (matchRSpec!2848 lt!2283800 (_1!36145 lt!2283847))))

(declare-fun lt!2283806 () Unit!156512)

(assert (=> b!5736301 (= lt!2283806 (mainMatchTheorem!2848 lt!2283800 (_1!36145 lt!2283847)))))

(declare-fun b!5736302 () Bool)

(assert (=> b!5736302 (= e!3526398 e!3526417)))

(declare-fun res!2422542 () Bool)

(assert (=> b!5736302 (=> res!2422542 e!3526417)))

(assert (=> b!5736302 (= res!2422542 (not (= lt!2283808 (matchZipper!1883 lt!2283819 (t!376862 s!2326)))))))

(assert (=> b!5736302 (= lt!2283808 (matchZipper!1883 lt!2283857 s!2326))))

(declare-fun b!5736303 () Bool)

(declare-fun e!3526399 () Bool)

(assert (=> b!5736303 (= e!3526401 e!3526399)))

(declare-fun res!2422577 () Bool)

(assert (=> b!5736303 (=> (not res!2422577) (not e!3526399))))

(assert (=> b!5736303 (= res!2422577 (= r!7292 lt!2283794))))

(assert (=> b!5736303 (= lt!2283794 (unfocusZipper!1487 zl!343))))

(declare-fun b!5736304 () Bool)

(assert (=> b!5736304 (= e!3526399 (not e!3526403))))

(declare-fun res!2422574 () Bool)

(assert (=> b!5736304 (=> res!2422574 e!3526403)))

(assert (=> b!5736304 (= res!2422574 (not ((_ is Cons!63412) zl!343)))))

(assert (=> b!5736304 (= lt!2283812 (matchRSpec!2848 r!7292 s!2326))))

(assert (=> b!5736304 (= lt!2283812 (matchR!7930 r!7292 s!2326))))

(declare-fun lt!2283822 () Unit!156512)

(assert (=> b!5736304 (= lt!2283822 (mainMatchTheorem!2848 r!7292 s!2326))))

(declare-fun b!5736305 () Bool)

(declare-fun e!3526424 () Bool)

(assert (=> b!5736305 (= e!3526424 (nullable!5777 (regOne!32002 (regOne!32002 r!7292))))))

(declare-fun b!5736306 () Bool)

(declare-fun res!2422576 () Bool)

(assert (=> b!5736306 (=> res!2422576 e!3526403)))

(declare-fun isEmpty!35290 (List!63536) Bool)

(assert (=> b!5736306 (= res!2422576 (not (isEmpty!35290 (t!376864 zl!343))))))

(declare-fun b!5736307 () Bool)

(assert (=> b!5736307 (= e!3526406 e!3526422)))

(declare-fun res!2422562 () Bool)

(assert (=> b!5736307 (=> res!2422562 e!3526422)))

(assert (=> b!5736307 (= res!2422562 (not (= (unfocusZipper!1487 lt!2283843) lt!2283854)))))

(assert (=> b!5736307 (= lt!2283843 (Cons!63412 lt!2283815 Nil!63412))))

(declare-fun b!5736308 () Bool)

(declare-fun res!2422559 () Bool)

(assert (=> b!5736308 (=> res!2422559 e!3526420)))

(assert (=> b!5736308 (= res!2422559 e!3526424)))

(declare-fun res!2422569 () Bool)

(assert (=> b!5736308 (=> (not res!2422569) (not e!3526424))))

(assert (=> b!5736308 (= res!2422569 ((_ is Concat!24590) (regOne!32002 r!7292)))))

(declare-fun b!5736309 () Bool)

(declare-fun tp!1586870 () Bool)

(assert (=> b!5736309 (= e!3526410 tp!1586870)))

(declare-fun b!5736310 () Bool)

(declare-fun res!2422541 () Bool)

(assert (=> b!5736310 (=> res!2422541 e!3526414)))

(assert (=> b!5736310 (= res!2422541 (not lt!2283820))))

(declare-fun b!5736311 () Bool)

(declare-fun res!2422545 () Bool)

(assert (=> b!5736311 (=> res!2422545 e!3526403)))

(assert (=> b!5736311 (= res!2422545 (or ((_ is EmptyExpr!15745) r!7292) ((_ is EmptyLang!15745) r!7292) ((_ is ElementMatch!15745) r!7292) ((_ is Union!15745) r!7292) (not ((_ is Concat!24590) r!7292))))))

(declare-fun b!5736312 () Bool)

(declare-fun tp!1586868 () Bool)

(declare-fun tp!1586871 () Bool)

(assert (=> b!5736312 (= e!3526402 (and tp!1586868 tp!1586871))))

(declare-fun b!5736313 () Bool)

(assert (=> b!5736313 (= e!3526417 e!3526413)))

(declare-fun res!2422572 () Bool)

(assert (=> b!5736313 (=> res!2422572 e!3526413)))

(assert (=> b!5736313 (= res!2422572 (not (= r!7292 lt!2283854)))))

(assert (=> b!5736313 (= lt!2283854 (Concat!24590 lt!2283853 (regTwo!32002 r!7292)))))

(assert (= (and start!590272 res!2422550) b!5736274))

(assert (= (and b!5736274 res!2422567) b!5736303))

(assert (= (and b!5736303 res!2422577) b!5736304))

(assert (= (and b!5736304 (not res!2422574)) b!5736306))

(assert (= (and b!5736306 (not res!2422576)) b!5736289))

(assert (= (and b!5736289 (not res!2422546)) b!5736269))

(assert (= (and b!5736269 (not res!2422553)) b!5736273))

(assert (= (and b!5736273 (not res!2422549)) b!5736311))

(assert (= (and b!5736311 (not res!2422545)) b!5736286))

(assert (= (and b!5736286 (not res!2422540)) b!5736297))

(assert (= (and b!5736297 (not res!2422547)) b!5736294))

(assert (= (and b!5736294 c!1012252) b!5736292))

(assert (= (and b!5736294 (not c!1012252)) b!5736267))

(assert (= (and b!5736292 (not res!2422555)) b!5736272))

(assert (= (and b!5736294 (not res!2422573)) b!5736308))

(assert (= (and b!5736308 res!2422569) b!5736305))

(assert (= (and b!5736308 (not res!2422559)) b!5736300))

(assert (= (and b!5736300 (not res!2422561)) b!5736287))

(assert (= (and b!5736287 (not res!2422552)) b!5736295))

(assert (= (and b!5736295 (not res!2422556)) b!5736302))

(assert (= (and b!5736302 (not res!2422542)) b!5736276))

(assert (= (and b!5736276 (not res!2422543)) b!5736313))

(assert (= (and b!5736313 (not res!2422572)) b!5736278))

(assert (= (and b!5736278 (not res!2422554)) b!5736282))

(assert (= (and b!5736282 (not res!2422564)) b!5736307))

(assert (= (and b!5736307 (not res!2422562)) b!5736283))

(assert (= (and b!5736283 (not res!2422571)) b!5736290))

(assert (= (and b!5736290 (not res!2422551)) b!5736310))

(assert (= (and b!5736310 (not res!2422541)) b!5736285))

(assert (= (and b!5736285 res!2422563) b!5736277))

(assert (= (and b!5736285 (not res!2422560)) b!5736288))

(assert (= (and b!5736288 (not res!2422558)) b!5736299))

(assert (= (and b!5736299 (not res!2422557)) b!5736280))

(assert (= (and b!5736280 (not res!2422568)) b!5736284))

(assert (= (and b!5736284 (not res!2422570)) b!5736266))

(assert (= (and b!5736266 (not res!2422566)) b!5736281))

(assert (= (and b!5736281 res!2422544) b!5736270))

(assert (= (and b!5736281 (not res!2422548)) b!5736301))

(assert (= (and b!5736301 (not res!2422565)) b!5736291))

(assert (= (and b!5736291 (not res!2422575)) b!5736296))

(assert (= (and start!590272 ((_ is ElementMatch!15745) r!7292)) b!5736298))

(assert (= (and start!590272 ((_ is Concat!24590) r!7292)) b!5736312))

(assert (= (and start!590272 ((_ is Star!15745) r!7292)) b!5736275))

(assert (= (and start!590272 ((_ is Union!15745) r!7292)) b!5736271))

(assert (= (and start!590272 condSetEmpty!38497) setIsEmpty!38497))

(assert (= (and start!590272 (not condSetEmpty!38497)) setNonEmpty!38497))

(assert (= setNonEmpty!38497 b!5736309))

(assert (= b!5736293 b!5736268))

(assert (= (and start!590272 ((_ is Cons!63412) zl!343)) b!5736293))

(assert (= (and start!590272 ((_ is Cons!63410) s!2326)) b!5736279))

(declare-fun m!6688230 () Bool)

(assert (=> b!5736266 m!6688230))

(declare-fun m!6688232 () Bool)

(assert (=> b!5736306 m!6688232))

(declare-fun m!6688234 () Bool)

(assert (=> b!5736299 m!6688234))

(declare-fun m!6688236 () Bool)

(assert (=> b!5736299 m!6688236))

(declare-fun m!6688238 () Bool)

(assert (=> b!5736299 m!6688238))

(declare-fun m!6688240 () Bool)

(assert (=> b!5736299 m!6688240))

(declare-fun m!6688242 () Bool)

(assert (=> b!5736299 m!6688242))

(declare-fun m!6688244 () Bool)

(assert (=> b!5736299 m!6688244))

(declare-fun m!6688246 () Bool)

(assert (=> b!5736296 m!6688246))

(declare-fun m!6688248 () Bool)

(assert (=> b!5736296 m!6688248))

(declare-fun m!6688250 () Bool)

(assert (=> b!5736296 m!6688250))

(declare-fun m!6688252 () Bool)

(assert (=> b!5736292 m!6688252))

(declare-fun m!6688254 () Bool)

(assert (=> b!5736292 m!6688254))

(declare-fun m!6688256 () Bool)

(assert (=> b!5736292 m!6688256))

(declare-fun m!6688258 () Bool)

(assert (=> b!5736307 m!6688258))

(declare-fun m!6688260 () Bool)

(assert (=> b!5736293 m!6688260))

(declare-fun m!6688262 () Bool)

(assert (=> b!5736272 m!6688262))

(declare-fun m!6688264 () Bool)

(assert (=> b!5736290 m!6688264))

(declare-fun m!6688266 () Bool)

(assert (=> b!5736281 m!6688266))

(declare-fun m!6688268 () Bool)

(assert (=> b!5736281 m!6688268))

(declare-fun m!6688270 () Bool)

(assert (=> b!5736281 m!6688270))

(declare-fun m!6688272 () Bool)

(assert (=> b!5736281 m!6688272))

(declare-fun m!6688274 () Bool)

(assert (=> b!5736281 m!6688274))

(declare-fun m!6688276 () Bool)

(assert (=> b!5736281 m!6688276))

(declare-fun m!6688278 () Bool)

(assert (=> b!5736281 m!6688278))

(assert (=> b!5736281 m!6688234))

(declare-fun m!6688280 () Bool)

(assert (=> b!5736281 m!6688280))

(declare-fun m!6688282 () Bool)

(assert (=> b!5736281 m!6688282))

(assert (=> b!5736281 m!6688236))

(declare-fun m!6688284 () Bool)

(assert (=> b!5736281 m!6688284))

(declare-fun m!6688286 () Bool)

(assert (=> b!5736281 m!6688286))

(assert (=> b!5736281 m!6688272))

(declare-fun m!6688288 () Bool)

(assert (=> b!5736281 m!6688288))

(declare-fun m!6688290 () Bool)

(assert (=> b!5736281 m!6688290))

(assert (=> b!5736281 m!6688238))

(declare-fun m!6688292 () Bool)

(assert (=> b!5736281 m!6688292))

(declare-fun m!6688294 () Bool)

(assert (=> b!5736281 m!6688294))

(declare-fun m!6688296 () Bool)

(assert (=> b!5736281 m!6688296))

(declare-fun m!6688298 () Bool)

(assert (=> b!5736281 m!6688298))

(declare-fun m!6688300 () Bool)

(assert (=> b!5736281 m!6688300))

(assert (=> b!5736281 m!6688236))

(declare-fun m!6688302 () Bool)

(assert (=> b!5736281 m!6688302))

(declare-fun m!6688304 () Bool)

(assert (=> b!5736281 m!6688304))

(declare-fun m!6688306 () Bool)

(assert (=> b!5736283 m!6688306))

(declare-fun m!6688308 () Bool)

(assert (=> b!5736283 m!6688308))

(declare-fun m!6688310 () Bool)

(assert (=> b!5736283 m!6688310))

(declare-fun m!6688312 () Bool)

(assert (=> b!5736289 m!6688312))

(declare-fun m!6688314 () Bool)

(assert (=> b!5736294 m!6688314))

(declare-fun m!6688316 () Bool)

(assert (=> b!5736294 m!6688316))

(declare-fun m!6688318 () Bool)

(assert (=> b!5736294 m!6688318))

(declare-fun m!6688320 () Bool)

(assert (=> b!5736294 m!6688320))

(declare-fun m!6688322 () Bool)

(assert (=> b!5736294 m!6688322))

(declare-fun m!6688324 () Bool)

(assert (=> b!5736294 m!6688324))

(declare-fun m!6688326 () Bool)

(assert (=> b!5736294 m!6688326))

(declare-fun m!6688328 () Bool)

(assert (=> b!5736282 m!6688328))

(declare-fun m!6688330 () Bool)

(assert (=> b!5736282 m!6688330))

(declare-fun m!6688332 () Bool)

(assert (=> b!5736282 m!6688332))

(declare-fun m!6688334 () Bool)

(assert (=> b!5736282 m!6688334))

(declare-fun m!6688336 () Bool)

(assert (=> b!5736282 m!6688336))

(declare-fun m!6688338 () Bool)

(assert (=> b!5736282 m!6688338))

(declare-fun m!6688340 () Bool)

(assert (=> b!5736282 m!6688340))

(declare-fun m!6688342 () Bool)

(assert (=> b!5736282 m!6688342))

(declare-fun m!6688344 () Bool)

(assert (=> b!5736282 m!6688344))

(declare-fun m!6688346 () Bool)

(assert (=> b!5736274 m!6688346))

(declare-fun m!6688348 () Bool)

(assert (=> b!5736302 m!6688348))

(declare-fun m!6688350 () Bool)

(assert (=> b!5736302 m!6688350))

(declare-fun m!6688352 () Bool)

(assert (=> start!590272 m!6688352))

(assert (=> b!5736277 m!6688262))

(declare-fun m!6688354 () Bool)

(assert (=> b!5736278 m!6688354))

(declare-fun m!6688356 () Bool)

(assert (=> b!5736301 m!6688356))

(declare-fun m!6688358 () Bool)

(assert (=> b!5736301 m!6688358))

(declare-fun m!6688360 () Bool)

(assert (=> b!5736301 m!6688360))

(declare-fun m!6688362 () Bool)

(assert (=> b!5736301 m!6688362))

(declare-fun m!6688364 () Bool)

(assert (=> b!5736301 m!6688364))

(assert (=> b!5736301 m!6688364))

(declare-fun m!6688366 () Bool)

(assert (=> b!5736301 m!6688366))

(declare-fun m!6688368 () Bool)

(assert (=> b!5736301 m!6688368))

(assert (=> b!5736301 m!6688364))

(declare-fun m!6688370 () Bool)

(assert (=> b!5736301 m!6688370))

(declare-fun m!6688372 () Bool)

(assert (=> b!5736301 m!6688372))

(declare-fun m!6688374 () Bool)

(assert (=> b!5736301 m!6688374))

(declare-fun m!6688376 () Bool)

(assert (=> b!5736301 m!6688376))

(declare-fun m!6688378 () Bool)

(assert (=> b!5736301 m!6688378))

(declare-fun m!6688380 () Bool)

(assert (=> b!5736301 m!6688380))

(declare-fun m!6688382 () Bool)

(assert (=> b!5736301 m!6688382))

(declare-fun m!6688384 () Bool)

(assert (=> b!5736301 m!6688384))

(assert (=> b!5736301 m!6688382))

(declare-fun m!6688386 () Bool)

(assert (=> b!5736301 m!6688386))

(declare-fun m!6688388 () Bool)

(assert (=> b!5736301 m!6688388))

(declare-fun m!6688390 () Bool)

(assert (=> setNonEmpty!38497 m!6688390))

(declare-fun m!6688392 () Bool)

(assert (=> b!5736297 m!6688392))

(declare-fun m!6688394 () Bool)

(assert (=> b!5736284 m!6688394))

(declare-fun m!6688396 () Bool)

(assert (=> b!5736291 m!6688396))

(declare-fun m!6688398 () Bool)

(assert (=> b!5736287 m!6688398))

(declare-fun m!6688400 () Bool)

(assert (=> b!5736280 m!6688400))

(declare-fun m!6688402 () Bool)

(assert (=> b!5736280 m!6688402))

(declare-fun m!6688404 () Bool)

(assert (=> b!5736280 m!6688404))

(declare-fun m!6688406 () Bool)

(assert (=> b!5736280 m!6688406))

(declare-fun m!6688408 () Bool)

(assert (=> b!5736280 m!6688408))

(declare-fun m!6688410 () Bool)

(assert (=> b!5736273 m!6688410))

(assert (=> b!5736273 m!6688410))

(declare-fun m!6688412 () Bool)

(assert (=> b!5736273 m!6688412))

(declare-fun m!6688414 () Bool)

(assert (=> b!5736295 m!6688414))

(declare-fun m!6688416 () Bool)

(assert (=> b!5736295 m!6688416))

(declare-fun m!6688418 () Bool)

(assert (=> b!5736295 m!6688418))

(declare-fun m!6688420 () Bool)

(assert (=> b!5736295 m!6688420))

(declare-fun m!6688422 () Bool)

(assert (=> b!5736295 m!6688422))

(assert (=> b!5736285 m!6688254))

(declare-fun m!6688424 () Bool)

(assert (=> b!5736304 m!6688424))

(declare-fun m!6688426 () Bool)

(assert (=> b!5736304 m!6688426))

(declare-fun m!6688428 () Bool)

(assert (=> b!5736304 m!6688428))

(declare-fun m!6688430 () Bool)

(assert (=> b!5736303 m!6688430))

(declare-fun m!6688432 () Bool)

(assert (=> b!5736286 m!6688432))

(declare-fun m!6688434 () Bool)

(assert (=> b!5736286 m!6688434))

(declare-fun m!6688436 () Bool)

(assert (=> b!5736286 m!6688436))

(declare-fun m!6688438 () Bool)

(assert (=> b!5736286 m!6688438))

(declare-fun m!6688440 () Bool)

(assert (=> b!5736286 m!6688440))

(assert (=> b!5736286 m!6688438))

(assert (=> b!5736286 m!6688434))

(declare-fun m!6688442 () Bool)

(assert (=> b!5736286 m!6688442))

(declare-fun m!6688444 () Bool)

(assert (=> b!5736305 m!6688444))

(check-sat (not b!5736292) (not b!5736301) (not b!5736266) (not b!5736305) (not b!5736295) (not b!5736283) (not b!5736275) (not b!5736302) (not b!5736299) (not b!5736286) (not b!5736268) (not b!5736309) (not b!5736272) (not b!5736273) (not b!5736284) (not b!5736289) (not b!5736304) (not setNonEmpty!38497) (not b!5736293) (not b!5736279) (not b!5736312) (not b!5736296) (not b!5736306) (not b!5736278) (not b!5736297) (not b!5736285) (not b!5736291) (not b!5736303) (not b!5736294) tp_is_empty!40743 (not start!590272) (not b!5736271) (not b!5736274) (not b!5736281) (not b!5736307) (not b!5736287) (not b!5736282) (not b!5736290) (not b!5736277) (not b!5736280))
(check-sat)
(get-model)

(declare-fun d!1808448 () Bool)

(declare-fun lt!2283888 () Regex!15745)

(assert (=> d!1808448 (validRegex!7481 lt!2283888)))

(assert (=> d!1808448 (= lt!2283888 (generalisedUnion!1608 (unfocusZipperList!1173 zl!343)))))

(assert (=> d!1808448 (= (unfocusZipper!1487 zl!343) lt!2283888)))

(declare-fun bs!1340762 () Bool)

(assert (= bs!1340762 d!1808448))

(declare-fun m!6688616 () Bool)

(assert (=> bs!1340762 m!6688616))

(assert (=> bs!1340762 m!6688410))

(assert (=> bs!1340762 m!6688410))

(assert (=> bs!1340762 m!6688412))

(assert (=> b!5736303 d!1808448))

(declare-fun bs!1340781 () Bool)

(declare-fun b!5736652 () Bool)

(assert (= bs!1340781 (and b!5736652 b!5736301)))

(declare-fun lambda!310922 () Int)

(assert (=> bs!1340781 (not (= lambda!310922 lambda!310894))))

(declare-fun bs!1340783 () Bool)

(assert (= bs!1340783 (and b!5736652 b!5736286)))

(assert (=> bs!1340783 (not (= lambda!310922 lambda!310886))))

(assert (=> bs!1340783 (not (= lambda!310922 lambda!310887))))

(declare-fun bs!1340784 () Bool)

(assert (= bs!1340784 (and b!5736652 b!5736281)))

(assert (=> bs!1340784 (not (= lambda!310922 lambda!310892))))

(assert (=> bs!1340781 (not (= lambda!310922 lambda!310893))))

(assert (=> bs!1340784 (not (= lambda!310922 lambda!310891))))

(assert (=> bs!1340781 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (reg!16074 lt!2283839) (reg!16074 (regOne!32002 r!7292))) (= lt!2283839 lt!2283853)) (= lambda!310922 lambda!310895))))

(assert (=> b!5736652 true))

(assert (=> b!5736652 true))

(declare-fun bs!1340786 () Bool)

(declare-fun b!5736653 () Bool)

(assert (= bs!1340786 (and b!5736653 b!5736301)))

(declare-fun lambda!310923 () Int)

(assert (=> bs!1340786 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 lt!2283839) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 lt!2283839) lt!2283853)) (= lambda!310923 lambda!310894))))

(declare-fun bs!1340787 () Bool)

(assert (= bs!1340787 (and b!5736653 b!5736652)))

(assert (=> bs!1340787 (not (= lambda!310923 lambda!310922))))

(declare-fun bs!1340788 () Bool)

(assert (= bs!1340788 (and b!5736653 b!5736286)))

(assert (=> bs!1340788 (not (= lambda!310923 lambda!310886))))

(assert (=> bs!1340788 (= (and (= (regOne!32002 lt!2283839) (regOne!32002 r!7292)) (= (regTwo!32002 lt!2283839) (regTwo!32002 r!7292))) (= lambda!310923 lambda!310887))))

(declare-fun bs!1340789 () Bool)

(assert (= bs!1340789 (and b!5736653 b!5736281)))

(assert (=> bs!1340789 (= (and (= (regOne!32002 lt!2283839) lt!2283800) (= (regTwo!32002 lt!2283839) (regTwo!32002 r!7292))) (= lambda!310923 lambda!310892))))

(assert (=> bs!1340786 (not (= lambda!310923 lambda!310893))))

(assert (=> bs!1340789 (not (= lambda!310923 lambda!310891))))

(assert (=> bs!1340786 (not (= lambda!310923 lambda!310895))))

(assert (=> b!5736653 true))

(assert (=> b!5736653 true))

(declare-fun b!5736644 () Bool)

(declare-fun e!3526608 () Bool)

(assert (=> b!5736644 (= e!3526608 (matchRSpec!2848 (regTwo!32003 lt!2283839) s!2326))))

(declare-fun b!5736646 () Bool)

(declare-fun c!1012366 () Bool)

(assert (=> b!5736646 (= c!1012366 ((_ is Union!15745) lt!2283839))))

(declare-fun e!3526605 () Bool)

(declare-fun e!3526607 () Bool)

(assert (=> b!5736646 (= e!3526605 e!3526607)))

(declare-fun b!5736647 () Bool)

(assert (=> b!5736647 (= e!3526607 e!3526608)))

(declare-fun res!2422683 () Bool)

(assert (=> b!5736647 (= res!2422683 (matchRSpec!2848 (regOne!32003 lt!2283839) s!2326))))

(assert (=> b!5736647 (=> res!2422683 e!3526608)))

(declare-fun b!5736648 () Bool)

(declare-fun e!3526604 () Bool)

(declare-fun e!3526606 () Bool)

(assert (=> b!5736648 (= e!3526604 e!3526606)))

(declare-fun res!2422684 () Bool)

(assert (=> b!5736648 (= res!2422684 (not ((_ is EmptyLang!15745) lt!2283839)))))

(assert (=> b!5736648 (=> (not res!2422684) (not e!3526606))))

(declare-fun bm!438535 () Bool)

(declare-fun call!438541 () Bool)

(declare-fun isEmpty!35292 (List!63534) Bool)

(assert (=> bm!438535 (= call!438541 (isEmpty!35292 s!2326))))

(declare-fun b!5736649 () Bool)

(declare-fun c!1012365 () Bool)

(assert (=> b!5736649 (= c!1012365 ((_ is ElementMatch!15745) lt!2283839))))

(assert (=> b!5736649 (= e!3526606 e!3526605)))

(declare-fun b!5736650 () Bool)

(declare-fun e!3526609 () Bool)

(assert (=> b!5736650 (= e!3526607 e!3526609)))

(declare-fun c!1012363 () Bool)

(assert (=> b!5736650 (= c!1012363 ((_ is Star!15745) lt!2283839))))

(declare-fun b!5736651 () Bool)

(assert (=> b!5736651 (= e!3526604 call!438541)))

(declare-fun d!1808454 () Bool)

(declare-fun c!1012364 () Bool)

(assert (=> d!1808454 (= c!1012364 ((_ is EmptyExpr!15745) lt!2283839))))

(assert (=> d!1808454 (= (matchRSpec!2848 lt!2283839 s!2326) e!3526604)))

(declare-fun b!5736645 () Bool)

(assert (=> b!5736645 (= e!3526605 (= s!2326 (Cons!63410 (c!1012253 lt!2283839) Nil!63410)))))

(declare-fun e!3526610 () Bool)

(declare-fun call!438540 () Bool)

(assert (=> b!5736652 (= e!3526610 call!438540)))

(assert (=> b!5736653 (= e!3526609 call!438540)))

(declare-fun bm!438536 () Bool)

(assert (=> bm!438536 (= call!438540 (Exists!2845 (ite c!1012363 lambda!310922 lambda!310923)))))

(declare-fun b!5736654 () Bool)

(declare-fun res!2422682 () Bool)

(assert (=> b!5736654 (=> res!2422682 e!3526610)))

(assert (=> b!5736654 (= res!2422682 call!438541)))

(assert (=> b!5736654 (= e!3526609 e!3526610)))

(assert (= (and d!1808454 c!1012364) b!5736651))

(assert (= (and d!1808454 (not c!1012364)) b!5736648))

(assert (= (and b!5736648 res!2422684) b!5736649))

(assert (= (and b!5736649 c!1012365) b!5736645))

(assert (= (and b!5736649 (not c!1012365)) b!5736646))

(assert (= (and b!5736646 c!1012366) b!5736647))

(assert (= (and b!5736646 (not c!1012366)) b!5736650))

(assert (= (and b!5736647 (not res!2422683)) b!5736644))

(assert (= (and b!5736650 c!1012363) b!5736654))

(assert (= (and b!5736650 (not c!1012363)) b!5736653))

(assert (= (and b!5736654 (not res!2422682)) b!5736652))

(assert (= (or b!5736652 b!5736653) bm!438536))

(assert (= (or b!5736651 b!5736654) bm!438535))

(declare-fun m!6688718 () Bool)

(assert (=> b!5736644 m!6688718))

(declare-fun m!6688720 () Bool)

(assert (=> b!5736647 m!6688720))

(declare-fun m!6688722 () Bool)

(assert (=> bm!438535 m!6688722))

(declare-fun m!6688724 () Bool)

(assert (=> bm!438536 m!6688724))

(assert (=> b!5736283 d!1808454))

(declare-fun b!5736725 () Bool)

(declare-fun res!2422730 () Bool)

(declare-fun e!3526647 () Bool)

(assert (=> b!5736725 (=> (not res!2422730) (not e!3526647))))

(declare-fun tail!11241 (List!63534) List!63534)

(assert (=> b!5736725 (= res!2422730 (isEmpty!35292 (tail!11241 s!2326)))))

(declare-fun b!5736726 () Bool)

(declare-fun e!3526646 () Bool)

(declare-fun e!3526649 () Bool)

(assert (=> b!5736726 (= e!3526646 e!3526649)))

(declare-fun c!1012385 () Bool)

(assert (=> b!5736726 (= c!1012385 ((_ is EmptyLang!15745) lt!2283839))))

(declare-fun b!5736727 () Bool)

(declare-fun e!3526650 () Bool)

(declare-fun e!3526648 () Bool)

(assert (=> b!5736727 (= e!3526650 e!3526648)))

(declare-fun res!2422731 () Bool)

(assert (=> b!5736727 (=> (not res!2422731) (not e!3526648))))

(declare-fun lt!2283914 () Bool)

(assert (=> b!5736727 (= res!2422731 (not lt!2283914))))

(declare-fun b!5736728 () Bool)

(declare-fun e!3526651 () Bool)

(assert (=> b!5736728 (= e!3526651 (nullable!5777 lt!2283839))))

(declare-fun b!5736729 () Bool)

(declare-fun e!3526645 () Bool)

(declare-fun head!12146 (List!63534) C!31760)

(assert (=> b!5736729 (= e!3526645 (not (= (head!12146 s!2326) (c!1012253 lt!2283839))))))

(declare-fun b!5736730 () Bool)

(declare-fun res!2422728 () Bool)

(assert (=> b!5736730 (=> (not res!2422728) (not e!3526647))))

(declare-fun call!438547 () Bool)

(assert (=> b!5736730 (= res!2422728 (not call!438547))))

(declare-fun b!5736731 () Bool)

(declare-fun res!2422729 () Bool)

(assert (=> b!5736731 (=> res!2422729 e!3526650)))

(assert (=> b!5736731 (= res!2422729 (not ((_ is ElementMatch!15745) lt!2283839)))))

(assert (=> b!5736731 (= e!3526649 e!3526650)))

(declare-fun bm!438542 () Bool)

(assert (=> bm!438542 (= call!438547 (isEmpty!35292 s!2326))))

(declare-fun b!5736732 () Bool)

(declare-fun derivativeStep!4536 (Regex!15745 C!31760) Regex!15745)

(assert (=> b!5736732 (= e!3526651 (matchR!7930 (derivativeStep!4536 lt!2283839 (head!12146 s!2326)) (tail!11241 s!2326)))))

(declare-fun b!5736733 () Bool)

(assert (=> b!5736733 (= e!3526647 (= (head!12146 s!2326) (c!1012253 lt!2283839)))))

(declare-fun b!5736734 () Bool)

(declare-fun res!2422727 () Bool)

(assert (=> b!5736734 (=> res!2422727 e!3526650)))

(assert (=> b!5736734 (= res!2422727 e!3526647)))

(declare-fun res!2422724 () Bool)

(assert (=> b!5736734 (=> (not res!2422724) (not e!3526647))))

(assert (=> b!5736734 (= res!2422724 lt!2283914)))

(declare-fun b!5736735 () Bool)

(assert (=> b!5736735 (= e!3526646 (= lt!2283914 call!438547))))

(declare-fun d!1808498 () Bool)

(assert (=> d!1808498 e!3526646))

(declare-fun c!1012384 () Bool)

(assert (=> d!1808498 (= c!1012384 ((_ is EmptyExpr!15745) lt!2283839))))

(assert (=> d!1808498 (= lt!2283914 e!3526651)))

(declare-fun c!1012383 () Bool)

(assert (=> d!1808498 (= c!1012383 (isEmpty!35292 s!2326))))

(assert (=> d!1808498 (validRegex!7481 lt!2283839)))

(assert (=> d!1808498 (= (matchR!7930 lt!2283839 s!2326) lt!2283914)))

(declare-fun b!5736724 () Bool)

(assert (=> b!5736724 (= e!3526649 (not lt!2283914))))

(declare-fun b!5736736 () Bool)

(declare-fun res!2422726 () Bool)

(assert (=> b!5736736 (=> res!2422726 e!3526645)))

(assert (=> b!5736736 (= res!2422726 (not (isEmpty!35292 (tail!11241 s!2326))))))

(declare-fun b!5736737 () Bool)

(assert (=> b!5736737 (= e!3526648 e!3526645)))

(declare-fun res!2422725 () Bool)

(assert (=> b!5736737 (=> res!2422725 e!3526645)))

(assert (=> b!5736737 (= res!2422725 call!438547)))

(assert (= (and d!1808498 c!1012383) b!5736728))

(assert (= (and d!1808498 (not c!1012383)) b!5736732))

(assert (= (and d!1808498 c!1012384) b!5736735))

(assert (= (and d!1808498 (not c!1012384)) b!5736726))

(assert (= (and b!5736726 c!1012385) b!5736724))

(assert (= (and b!5736726 (not c!1012385)) b!5736731))

(assert (= (and b!5736731 (not res!2422729)) b!5736734))

(assert (= (and b!5736734 res!2422724) b!5736730))

(assert (= (and b!5736730 res!2422728) b!5736725))

(assert (= (and b!5736725 res!2422730) b!5736733))

(assert (= (and b!5736734 (not res!2422727)) b!5736727))

(assert (= (and b!5736727 res!2422731) b!5736737))

(assert (= (and b!5736737 (not res!2422725)) b!5736736))

(assert (= (and b!5736736 (not res!2422726)) b!5736729))

(assert (= (or b!5736735 b!5736730 b!5736737) bm!438542))

(declare-fun m!6688764 () Bool)

(assert (=> b!5736728 m!6688764))

(declare-fun m!6688766 () Bool)

(assert (=> b!5736729 m!6688766))

(assert (=> b!5736732 m!6688766))

(assert (=> b!5736732 m!6688766))

(declare-fun m!6688768 () Bool)

(assert (=> b!5736732 m!6688768))

(declare-fun m!6688770 () Bool)

(assert (=> b!5736732 m!6688770))

(assert (=> b!5736732 m!6688768))

(assert (=> b!5736732 m!6688770))

(declare-fun m!6688772 () Bool)

(assert (=> b!5736732 m!6688772))

(assert (=> b!5736733 m!6688766))

(assert (=> b!5736725 m!6688770))

(assert (=> b!5736725 m!6688770))

(declare-fun m!6688774 () Bool)

(assert (=> b!5736725 m!6688774))

(assert (=> d!1808498 m!6688722))

(declare-fun m!6688776 () Bool)

(assert (=> d!1808498 m!6688776))

(assert (=> b!5736736 m!6688770))

(assert (=> b!5736736 m!6688770))

(assert (=> b!5736736 m!6688774))

(assert (=> bm!438542 m!6688722))

(assert (=> b!5736283 d!1808498))

(declare-fun d!1808510 () Bool)

(assert (=> d!1808510 (= (matchR!7930 lt!2283839 s!2326) (matchRSpec!2848 lt!2283839 s!2326))))

(declare-fun lt!2283921 () Unit!156512)

(declare-fun choose!43471 (Regex!15745 List!63534) Unit!156512)

(assert (=> d!1808510 (= lt!2283921 (choose!43471 lt!2283839 s!2326))))

(assert (=> d!1808510 (validRegex!7481 lt!2283839)))

(assert (=> d!1808510 (= (mainMatchTheorem!2848 lt!2283839 s!2326) lt!2283921)))

(declare-fun bs!1340797 () Bool)

(assert (= bs!1340797 d!1808510))

(assert (=> bs!1340797 m!6688308))

(assert (=> bs!1340797 m!6688306))

(declare-fun m!6688784 () Bool)

(assert (=> bs!1340797 m!6688784))

(assert (=> bs!1340797 m!6688776))

(assert (=> b!5736283 d!1808510))

(declare-fun b!5736749 () Bool)

(declare-fun e!3526659 () List!63535)

(assert (=> b!5736749 (= e!3526659 lt!2283809)))

(declare-fun d!1808516 () Bool)

(declare-fun e!3526660 () Bool)

(assert (=> d!1808516 e!3526660))

(declare-fun res!2422740 () Bool)

(assert (=> d!1808516 (=> (not res!2422740) (not e!3526660))))

(declare-fun lt!2283927 () List!63535)

(declare-fun content!11553 (List!63535) (InoxSet Regex!15745))

(assert (=> d!1808516 (= res!2422740 (= (content!11553 lt!2283927) ((_ map or) (content!11553 lt!2283845) (content!11553 lt!2283809))))))

(assert (=> d!1808516 (= lt!2283927 e!3526659)))

(declare-fun c!1012388 () Bool)

(assert (=> d!1808516 (= c!1012388 ((_ is Nil!63411) lt!2283845))))

(assert (=> d!1808516 (= (++!13963 lt!2283845 lt!2283809) lt!2283927)))

(declare-fun b!5736752 () Bool)

(assert (=> b!5736752 (= e!3526660 (or (not (= lt!2283809 Nil!63411)) (= lt!2283927 lt!2283845)))))

(declare-fun b!5736751 () Bool)

(declare-fun res!2422739 () Bool)

(assert (=> b!5736751 (=> (not res!2422739) (not e!3526660))))

(declare-fun size!40058 (List!63535) Int)

(assert (=> b!5736751 (= res!2422739 (= (size!40058 lt!2283927) (+ (size!40058 lt!2283845) (size!40058 lt!2283809))))))

(declare-fun b!5736750 () Bool)

(assert (=> b!5736750 (= e!3526659 (Cons!63411 (h!69859 lt!2283845) (++!13963 (t!376863 lt!2283845) lt!2283809)))))

(assert (= (and d!1808516 c!1012388) b!5736749))

(assert (= (and d!1808516 (not c!1012388)) b!5736750))

(assert (= (and d!1808516 res!2422740) b!5736751))

(assert (= (and b!5736751 res!2422739) b!5736752))

(declare-fun m!6688792 () Bool)

(assert (=> d!1808516 m!6688792))

(declare-fun m!6688794 () Bool)

(assert (=> d!1808516 m!6688794))

(declare-fun m!6688796 () Bool)

(assert (=> d!1808516 m!6688796))

(declare-fun m!6688798 () Bool)

(assert (=> b!5736751 m!6688798))

(declare-fun m!6688800 () Bool)

(assert (=> b!5736751 m!6688800))

(declare-fun m!6688802 () Bool)

(assert (=> b!5736751 m!6688802))

(declare-fun m!6688804 () Bool)

(assert (=> b!5736750 m!6688804))

(assert (=> b!5736281 d!1808516))

(declare-fun d!1808522 () Bool)

(declare-fun forall!14868 (List!63535 Int) Bool)

(assert (=> d!1808522 (forall!14868 (++!13963 lt!2283845 lt!2283809) lambda!310890)))

(declare-fun lt!2283930 () Unit!156512)

(declare-fun choose!43472 (List!63535 List!63535 Int) Unit!156512)

(assert (=> d!1808522 (= lt!2283930 (choose!43472 lt!2283845 lt!2283809 lambda!310890))))

(assert (=> d!1808522 (forall!14868 lt!2283845 lambda!310890)))

(assert (=> d!1808522 (= (lemmaConcatPreservesForall!314 lt!2283845 lt!2283809 lambda!310890) lt!2283930)))

(declare-fun bs!1340799 () Bool)

(assert (= bs!1340799 d!1808522))

(assert (=> bs!1340799 m!6688234))

(assert (=> bs!1340799 m!6688234))

(declare-fun m!6688806 () Bool)

(assert (=> bs!1340799 m!6688806))

(declare-fun m!6688808 () Bool)

(assert (=> bs!1340799 m!6688808))

(declare-fun m!6688810 () Bool)

(assert (=> bs!1340799 m!6688810))

(assert (=> b!5736281 d!1808522))

(declare-fun bs!1340800 () Bool)

(declare-fun d!1808524 () Bool)

(assert (= bs!1340800 (and d!1808524 b!5736299)))

(declare-fun lambda!310929 () Int)

(assert (=> bs!1340800 (= lambda!310929 lambda!310890)))

(assert (=> d!1808524 (matchZipper!1883 (store ((as const (Array Context!10258 Bool)) false) (Context!10259 (++!13963 (exprs!5629 lt!2283807) (exprs!5629 lt!2283815))) true) (++!13962 (_1!36145 lt!2283852) (_2!36145 lt!2283852)))))

(declare-fun lt!2283942 () Unit!156512)

(assert (=> d!1808524 (= lt!2283942 (lemmaConcatPreservesForall!314 (exprs!5629 lt!2283807) (exprs!5629 lt!2283815) lambda!310929))))

(declare-fun lt!2283941 () Unit!156512)

(declare-fun choose!43473 (Context!10258 Context!10258 List!63534 List!63534) Unit!156512)

(assert (=> d!1808524 (= lt!2283941 (choose!43473 lt!2283807 lt!2283815 (_1!36145 lt!2283852) (_2!36145 lt!2283852)))))

(assert (=> d!1808524 (matchZipper!1883 (store ((as const (Array Context!10258 Bool)) false) lt!2283807 true) (_1!36145 lt!2283852))))

(assert (=> d!1808524 (= (lemmaConcatenateContextMatchesConcatOfStrings!144 lt!2283807 lt!2283815 (_1!36145 lt!2283852) (_2!36145 lt!2283852)) lt!2283941)))

(declare-fun bs!1340801 () Bool)

(assert (= bs!1340801 d!1808524))

(assert (=> bs!1340801 m!6688340))

(declare-fun m!6688812 () Bool)

(assert (=> bs!1340801 m!6688812))

(declare-fun m!6688814 () Bool)

(assert (=> bs!1340801 m!6688814))

(assert (=> bs!1340801 m!6688406))

(declare-fun m!6688816 () Bool)

(assert (=> bs!1340801 m!6688816))

(assert (=> bs!1340801 m!6688406))

(declare-fun m!6688818 () Bool)

(assert (=> bs!1340801 m!6688818))

(assert (=> bs!1340801 m!6688340))

(assert (=> bs!1340801 m!6688814))

(declare-fun m!6688820 () Bool)

(assert (=> bs!1340801 m!6688820))

(declare-fun m!6688822 () Bool)

(assert (=> bs!1340801 m!6688822))

(assert (=> b!5736281 d!1808524))

(declare-fun b!5736772 () Bool)

(declare-fun res!2422757 () Bool)

(declare-fun e!3526673 () Bool)

(assert (=> b!5736772 (=> (not res!2422757) (not e!3526673))))

(assert (=> b!5736772 (= res!2422757 (isEmpty!35292 (tail!11241 (_2!36145 lt!2283852))))))

(declare-fun b!5736773 () Bool)

(declare-fun e!3526672 () Bool)

(declare-fun e!3526675 () Bool)

(assert (=> b!5736773 (= e!3526672 e!3526675)))

(declare-fun c!1012395 () Bool)

(assert (=> b!5736773 (= c!1012395 ((_ is EmptyLang!15745) lt!2283854))))

(declare-fun b!5736774 () Bool)

(declare-fun e!3526676 () Bool)

(declare-fun e!3526674 () Bool)

(assert (=> b!5736774 (= e!3526676 e!3526674)))

(declare-fun res!2422758 () Bool)

(assert (=> b!5736774 (=> (not res!2422758) (not e!3526674))))

(declare-fun lt!2283943 () Bool)

(assert (=> b!5736774 (= res!2422758 (not lt!2283943))))

(declare-fun b!5736775 () Bool)

(declare-fun e!3526677 () Bool)

(assert (=> b!5736775 (= e!3526677 (nullable!5777 lt!2283854))))

(declare-fun b!5736776 () Bool)

(declare-fun e!3526671 () Bool)

(assert (=> b!5736776 (= e!3526671 (not (= (head!12146 (_2!36145 lt!2283852)) (c!1012253 lt!2283854))))))

(declare-fun b!5736777 () Bool)

(declare-fun res!2422755 () Bool)

(assert (=> b!5736777 (=> (not res!2422755) (not e!3526673))))

(declare-fun call!438548 () Bool)

(assert (=> b!5736777 (= res!2422755 (not call!438548))))

(declare-fun b!5736778 () Bool)

(declare-fun res!2422756 () Bool)

(assert (=> b!5736778 (=> res!2422756 e!3526676)))

(assert (=> b!5736778 (= res!2422756 (not ((_ is ElementMatch!15745) lt!2283854)))))

(assert (=> b!5736778 (= e!3526675 e!3526676)))

(declare-fun bm!438543 () Bool)

(assert (=> bm!438543 (= call!438548 (isEmpty!35292 (_2!36145 lt!2283852)))))

(declare-fun b!5736779 () Bool)

(assert (=> b!5736779 (= e!3526677 (matchR!7930 (derivativeStep!4536 lt!2283854 (head!12146 (_2!36145 lt!2283852))) (tail!11241 (_2!36145 lt!2283852))))))

(declare-fun b!5736780 () Bool)

(assert (=> b!5736780 (= e!3526673 (= (head!12146 (_2!36145 lt!2283852)) (c!1012253 lt!2283854)))))

(declare-fun b!5736781 () Bool)

(declare-fun res!2422754 () Bool)

(assert (=> b!5736781 (=> res!2422754 e!3526676)))

(assert (=> b!5736781 (= res!2422754 e!3526673)))

(declare-fun res!2422751 () Bool)

(assert (=> b!5736781 (=> (not res!2422751) (not e!3526673))))

(assert (=> b!5736781 (= res!2422751 lt!2283943)))

(declare-fun b!5736782 () Bool)

(assert (=> b!5736782 (= e!3526672 (= lt!2283943 call!438548))))

(declare-fun d!1808526 () Bool)

(assert (=> d!1808526 e!3526672))

(declare-fun c!1012394 () Bool)

(assert (=> d!1808526 (= c!1012394 ((_ is EmptyExpr!15745) lt!2283854))))

(assert (=> d!1808526 (= lt!2283943 e!3526677)))

(declare-fun c!1012393 () Bool)

(assert (=> d!1808526 (= c!1012393 (isEmpty!35292 (_2!36145 lt!2283852)))))

(assert (=> d!1808526 (validRegex!7481 lt!2283854)))

(assert (=> d!1808526 (= (matchR!7930 lt!2283854 (_2!36145 lt!2283852)) lt!2283943)))

(declare-fun b!5736771 () Bool)

(assert (=> b!5736771 (= e!3526675 (not lt!2283943))))

(declare-fun b!5736783 () Bool)

(declare-fun res!2422753 () Bool)

(assert (=> b!5736783 (=> res!2422753 e!3526671)))

(assert (=> b!5736783 (= res!2422753 (not (isEmpty!35292 (tail!11241 (_2!36145 lt!2283852)))))))

(declare-fun b!5736784 () Bool)

(assert (=> b!5736784 (= e!3526674 e!3526671)))

(declare-fun res!2422752 () Bool)

(assert (=> b!5736784 (=> res!2422752 e!3526671)))

(assert (=> b!5736784 (= res!2422752 call!438548)))

(assert (= (and d!1808526 c!1012393) b!5736775))

(assert (= (and d!1808526 (not c!1012393)) b!5736779))

(assert (= (and d!1808526 c!1012394) b!5736782))

(assert (= (and d!1808526 (not c!1012394)) b!5736773))

(assert (= (and b!5736773 c!1012395) b!5736771))

(assert (= (and b!5736773 (not c!1012395)) b!5736778))

(assert (= (and b!5736778 (not res!2422756)) b!5736781))

(assert (= (and b!5736781 res!2422751) b!5736777))

(assert (= (and b!5736777 res!2422755) b!5736772))

(assert (= (and b!5736772 res!2422757) b!5736780))

(assert (= (and b!5736781 (not res!2422754)) b!5736774))

(assert (= (and b!5736774 res!2422758) b!5736784))

(assert (= (and b!5736784 (not res!2422752)) b!5736783))

(assert (= (and b!5736783 (not res!2422753)) b!5736776))

(assert (= (or b!5736782 b!5736777 b!5736784) bm!438543))

(declare-fun m!6688824 () Bool)

(assert (=> b!5736775 m!6688824))

(declare-fun m!6688826 () Bool)

(assert (=> b!5736776 m!6688826))

(assert (=> b!5736779 m!6688826))

(assert (=> b!5736779 m!6688826))

(declare-fun m!6688828 () Bool)

(assert (=> b!5736779 m!6688828))

(declare-fun m!6688830 () Bool)

(assert (=> b!5736779 m!6688830))

(assert (=> b!5736779 m!6688828))

(assert (=> b!5736779 m!6688830))

(declare-fun m!6688832 () Bool)

(assert (=> b!5736779 m!6688832))

(assert (=> b!5736780 m!6688826))

(assert (=> b!5736772 m!6688830))

(assert (=> b!5736772 m!6688830))

(declare-fun m!6688834 () Bool)

(assert (=> b!5736772 m!6688834))

(declare-fun m!6688836 () Bool)

(assert (=> d!1808526 m!6688836))

(declare-fun m!6688838 () Bool)

(assert (=> d!1808526 m!6688838))

(assert (=> b!5736783 m!6688830))

(assert (=> b!5736783 m!6688830))

(assert (=> b!5736783 m!6688834))

(assert (=> bm!438543 m!6688836))

(assert (=> b!5736281 d!1808526))

(declare-fun d!1808528 () Bool)

(declare-fun isEmpty!35293 (Option!15754) Bool)

(assert (=> d!1808528 (= (isDefined!12457 lt!2283860) (not (isEmpty!35293 lt!2283860)))))

(declare-fun bs!1340802 () Bool)

(assert (= bs!1340802 d!1808528))

(declare-fun m!6688840 () Bool)

(assert (=> bs!1340802 m!6688840))

(assert (=> b!5736281 d!1808528))

(declare-fun d!1808530 () Bool)

(assert (=> d!1808530 (= (matchR!7930 lt!2283816 s!2326) (matchRSpec!2848 lt!2283816 s!2326))))

(declare-fun lt!2283947 () Unit!156512)

(assert (=> d!1808530 (= lt!2283947 (choose!43471 lt!2283816 s!2326))))

(assert (=> d!1808530 (validRegex!7481 lt!2283816)))

(assert (=> d!1808530 (= (mainMatchTheorem!2848 lt!2283816 s!2326) lt!2283947)))

(declare-fun bs!1340803 () Bool)

(assert (= bs!1340803 d!1808530))

(assert (=> bs!1340803 m!6688284))

(assert (=> bs!1340803 m!6688292))

(declare-fun m!6688842 () Bool)

(assert (=> bs!1340803 m!6688842))

(declare-fun m!6688844 () Bool)

(assert (=> bs!1340803 m!6688844))

(assert (=> b!5736281 d!1808530))

(declare-fun b!5736795 () Bool)

(declare-fun res!2422770 () Bool)

(declare-fun e!3526685 () Bool)

(assert (=> b!5736795 (=> (not res!2422770) (not e!3526685))))

(assert (=> b!5736795 (= res!2422770 (isEmpty!35292 (tail!11241 lt!2283846)))))

(declare-fun b!5736796 () Bool)

(declare-fun e!3526684 () Bool)

(declare-fun e!3526687 () Bool)

(assert (=> b!5736796 (= e!3526684 e!3526687)))

(declare-fun c!1012400 () Bool)

(assert (=> b!5736796 (= c!1012400 ((_ is EmptyLang!15745) lt!2283839))))

(declare-fun b!5736797 () Bool)

(declare-fun e!3526688 () Bool)

(declare-fun e!3526686 () Bool)

(assert (=> b!5736797 (= e!3526688 e!3526686)))

(declare-fun res!2422771 () Bool)

(assert (=> b!5736797 (=> (not res!2422771) (not e!3526686))))

(declare-fun lt!2283948 () Bool)

(assert (=> b!5736797 (= res!2422771 (not lt!2283948))))

(declare-fun b!5736798 () Bool)

(declare-fun e!3526689 () Bool)

(assert (=> b!5736798 (= e!3526689 (nullable!5777 lt!2283839))))

(declare-fun b!5736799 () Bool)

(declare-fun e!3526683 () Bool)

(assert (=> b!5736799 (= e!3526683 (not (= (head!12146 lt!2283846) (c!1012253 lt!2283839))))))

(declare-fun b!5736800 () Bool)

(declare-fun res!2422768 () Bool)

(assert (=> b!5736800 (=> (not res!2422768) (not e!3526685))))

(declare-fun call!438549 () Bool)

(assert (=> b!5736800 (= res!2422768 (not call!438549))))

(declare-fun b!5736801 () Bool)

(declare-fun res!2422769 () Bool)

(assert (=> b!5736801 (=> res!2422769 e!3526688)))

(assert (=> b!5736801 (= res!2422769 (not ((_ is ElementMatch!15745) lt!2283839)))))

(assert (=> b!5736801 (= e!3526687 e!3526688)))

(declare-fun bm!438544 () Bool)

(assert (=> bm!438544 (= call!438549 (isEmpty!35292 lt!2283846))))

(declare-fun b!5736802 () Bool)

(assert (=> b!5736802 (= e!3526689 (matchR!7930 (derivativeStep!4536 lt!2283839 (head!12146 lt!2283846)) (tail!11241 lt!2283846)))))

(declare-fun b!5736803 () Bool)

(assert (=> b!5736803 (= e!3526685 (= (head!12146 lt!2283846) (c!1012253 lt!2283839)))))

(declare-fun b!5736804 () Bool)

(declare-fun res!2422767 () Bool)

(assert (=> b!5736804 (=> res!2422767 e!3526688)))

(assert (=> b!5736804 (= res!2422767 e!3526685)))

(declare-fun res!2422764 () Bool)

(assert (=> b!5736804 (=> (not res!2422764) (not e!3526685))))

(assert (=> b!5736804 (= res!2422764 lt!2283948)))

(declare-fun b!5736805 () Bool)

(assert (=> b!5736805 (= e!3526684 (= lt!2283948 call!438549))))

(declare-fun d!1808532 () Bool)

(assert (=> d!1808532 e!3526684))

(declare-fun c!1012399 () Bool)

(assert (=> d!1808532 (= c!1012399 ((_ is EmptyExpr!15745) lt!2283839))))

(assert (=> d!1808532 (= lt!2283948 e!3526689)))

(declare-fun c!1012398 () Bool)

(assert (=> d!1808532 (= c!1012398 (isEmpty!35292 lt!2283846))))

(assert (=> d!1808532 (validRegex!7481 lt!2283839)))

(assert (=> d!1808532 (= (matchR!7930 lt!2283839 lt!2283846) lt!2283948)))

(declare-fun b!5736794 () Bool)

(assert (=> b!5736794 (= e!3526687 (not lt!2283948))))

(declare-fun b!5736806 () Bool)

(declare-fun res!2422766 () Bool)

(assert (=> b!5736806 (=> res!2422766 e!3526683)))

(assert (=> b!5736806 (= res!2422766 (not (isEmpty!35292 (tail!11241 lt!2283846))))))

(declare-fun b!5736807 () Bool)

(assert (=> b!5736807 (= e!3526686 e!3526683)))

(declare-fun res!2422765 () Bool)

(assert (=> b!5736807 (=> res!2422765 e!3526683)))

(assert (=> b!5736807 (= res!2422765 call!438549)))

(assert (= (and d!1808532 c!1012398) b!5736798))

(assert (= (and d!1808532 (not c!1012398)) b!5736802))

(assert (= (and d!1808532 c!1012399) b!5736805))

(assert (= (and d!1808532 (not c!1012399)) b!5736796))

(assert (= (and b!5736796 c!1012400) b!5736794))

(assert (= (and b!5736796 (not c!1012400)) b!5736801))

(assert (= (and b!5736801 (not res!2422769)) b!5736804))

(assert (= (and b!5736804 res!2422764) b!5736800))

(assert (= (and b!5736800 res!2422768) b!5736795))

(assert (= (and b!5736795 res!2422770) b!5736803))

(assert (= (and b!5736804 (not res!2422767)) b!5736797))

(assert (= (and b!5736797 res!2422771) b!5736807))

(assert (= (and b!5736807 (not res!2422765)) b!5736806))

(assert (= (and b!5736806 (not res!2422766)) b!5736799))

(assert (= (or b!5736805 b!5736800 b!5736807) bm!438544))

(assert (=> b!5736798 m!6688764))

(declare-fun m!6688854 () Bool)

(assert (=> b!5736799 m!6688854))

(assert (=> b!5736802 m!6688854))

(assert (=> b!5736802 m!6688854))

(declare-fun m!6688858 () Bool)

(assert (=> b!5736802 m!6688858))

(declare-fun m!6688860 () Bool)

(assert (=> b!5736802 m!6688860))

(assert (=> b!5736802 m!6688858))

(assert (=> b!5736802 m!6688860))

(declare-fun m!6688866 () Bool)

(assert (=> b!5736802 m!6688866))

(assert (=> b!5736803 m!6688854))

(assert (=> b!5736795 m!6688860))

(assert (=> b!5736795 m!6688860))

(declare-fun m!6688868 () Bool)

(assert (=> b!5736795 m!6688868))

(declare-fun m!6688872 () Bool)

(assert (=> d!1808532 m!6688872))

(assert (=> d!1808532 m!6688776))

(assert (=> b!5736806 m!6688860))

(assert (=> b!5736806 m!6688860))

(assert (=> b!5736806 m!6688868))

(assert (=> bm!438544 m!6688872))

(assert (=> b!5736281 d!1808532))

(declare-fun b!5736809 () Bool)

(declare-fun res!2422778 () Bool)

(declare-fun e!3526692 () Bool)

(assert (=> b!5736809 (=> (not res!2422778) (not e!3526692))))

(assert (=> b!5736809 (= res!2422778 (isEmpty!35292 (tail!11241 (_1!36145 lt!2283852))))))

(declare-fun b!5736810 () Bool)

(declare-fun e!3526691 () Bool)

(declare-fun e!3526694 () Bool)

(assert (=> b!5736810 (= e!3526691 e!3526694)))

(declare-fun c!1012403 () Bool)

(assert (=> b!5736810 (= c!1012403 ((_ is EmptyLang!15745) (reg!16074 (regOne!32002 r!7292))))))

(declare-fun b!5736811 () Bool)

(declare-fun e!3526695 () Bool)

(declare-fun e!3526693 () Bool)

(assert (=> b!5736811 (= e!3526695 e!3526693)))

(declare-fun res!2422779 () Bool)

(assert (=> b!5736811 (=> (not res!2422779) (not e!3526693))))

(declare-fun lt!2283949 () Bool)

(assert (=> b!5736811 (= res!2422779 (not lt!2283949))))

(declare-fun b!5736812 () Bool)

(declare-fun e!3526696 () Bool)

(assert (=> b!5736812 (= e!3526696 (nullable!5777 (reg!16074 (regOne!32002 r!7292))))))

(declare-fun b!5736813 () Bool)

(declare-fun e!3526690 () Bool)

(assert (=> b!5736813 (= e!3526690 (not (= (head!12146 (_1!36145 lt!2283852)) (c!1012253 (reg!16074 (regOne!32002 r!7292))))))))

(declare-fun b!5736814 () Bool)

(declare-fun res!2422776 () Bool)

(assert (=> b!5736814 (=> (not res!2422776) (not e!3526692))))

(declare-fun call!438550 () Bool)

(assert (=> b!5736814 (= res!2422776 (not call!438550))))

(declare-fun b!5736815 () Bool)

(declare-fun res!2422777 () Bool)

(assert (=> b!5736815 (=> res!2422777 e!3526695)))

(assert (=> b!5736815 (= res!2422777 (not ((_ is ElementMatch!15745) (reg!16074 (regOne!32002 r!7292)))))))

(assert (=> b!5736815 (= e!3526694 e!3526695)))

(declare-fun bm!438545 () Bool)

(assert (=> bm!438545 (= call!438550 (isEmpty!35292 (_1!36145 lt!2283852)))))

(declare-fun b!5736816 () Bool)

(assert (=> b!5736816 (= e!3526696 (matchR!7930 (derivativeStep!4536 (reg!16074 (regOne!32002 r!7292)) (head!12146 (_1!36145 lt!2283852))) (tail!11241 (_1!36145 lt!2283852))))))

(declare-fun b!5736817 () Bool)

(assert (=> b!5736817 (= e!3526692 (= (head!12146 (_1!36145 lt!2283852)) (c!1012253 (reg!16074 (regOne!32002 r!7292)))))))

(declare-fun b!5736818 () Bool)

(declare-fun res!2422775 () Bool)

(assert (=> b!5736818 (=> res!2422775 e!3526695)))

(assert (=> b!5736818 (= res!2422775 e!3526692)))

(declare-fun res!2422772 () Bool)

(assert (=> b!5736818 (=> (not res!2422772) (not e!3526692))))

(assert (=> b!5736818 (= res!2422772 lt!2283949)))

(declare-fun b!5736819 () Bool)

(assert (=> b!5736819 (= e!3526691 (= lt!2283949 call!438550))))

(declare-fun d!1808534 () Bool)

(assert (=> d!1808534 e!3526691))

(declare-fun c!1012402 () Bool)

(assert (=> d!1808534 (= c!1012402 ((_ is EmptyExpr!15745) (reg!16074 (regOne!32002 r!7292))))))

(assert (=> d!1808534 (= lt!2283949 e!3526696)))

(declare-fun c!1012401 () Bool)

(assert (=> d!1808534 (= c!1012401 (isEmpty!35292 (_1!36145 lt!2283852)))))

(assert (=> d!1808534 (validRegex!7481 (reg!16074 (regOne!32002 r!7292)))))

(assert (=> d!1808534 (= (matchR!7930 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283852)) lt!2283949)))

(declare-fun b!5736808 () Bool)

(assert (=> b!5736808 (= e!3526694 (not lt!2283949))))

(declare-fun b!5736820 () Bool)

(declare-fun res!2422774 () Bool)

(assert (=> b!5736820 (=> res!2422774 e!3526690)))

(assert (=> b!5736820 (= res!2422774 (not (isEmpty!35292 (tail!11241 (_1!36145 lt!2283852)))))))

(declare-fun b!5736821 () Bool)

(assert (=> b!5736821 (= e!3526693 e!3526690)))

(declare-fun res!2422773 () Bool)

(assert (=> b!5736821 (=> res!2422773 e!3526690)))

(assert (=> b!5736821 (= res!2422773 call!438550)))

(assert (= (and d!1808534 c!1012401) b!5736812))

(assert (= (and d!1808534 (not c!1012401)) b!5736816))

(assert (= (and d!1808534 c!1012402) b!5736819))

(assert (= (and d!1808534 (not c!1012402)) b!5736810))

(assert (= (and b!5736810 c!1012403) b!5736808))

(assert (= (and b!5736810 (not c!1012403)) b!5736815))

(assert (= (and b!5736815 (not res!2422777)) b!5736818))

(assert (= (and b!5736818 res!2422772) b!5736814))

(assert (= (and b!5736814 res!2422776) b!5736809))

(assert (= (and b!5736809 res!2422778) b!5736817))

(assert (= (and b!5736818 (not res!2422775)) b!5736811))

(assert (= (and b!5736811 res!2422779) b!5736821))

(assert (= (and b!5736821 (not res!2422773)) b!5736820))

(assert (= (and b!5736820 (not res!2422774)) b!5736813))

(assert (= (or b!5736819 b!5736814 b!5736821) bm!438545))

(declare-fun m!6688892 () Bool)

(assert (=> b!5736812 m!6688892))

(declare-fun m!6688894 () Bool)

(assert (=> b!5736813 m!6688894))

(assert (=> b!5736816 m!6688894))

(assert (=> b!5736816 m!6688894))

(declare-fun m!6688896 () Bool)

(assert (=> b!5736816 m!6688896))

(declare-fun m!6688898 () Bool)

(assert (=> b!5736816 m!6688898))

(assert (=> b!5736816 m!6688896))

(assert (=> b!5736816 m!6688898))

(declare-fun m!6688900 () Bool)

(assert (=> b!5736816 m!6688900))

(assert (=> b!5736817 m!6688894))

(assert (=> b!5736809 m!6688898))

(assert (=> b!5736809 m!6688898))

(declare-fun m!6688902 () Bool)

(assert (=> b!5736809 m!6688902))

(declare-fun m!6688904 () Bool)

(assert (=> d!1808534 m!6688904))

(declare-fun m!6688906 () Bool)

(assert (=> d!1808534 m!6688906))

(assert (=> b!5736820 m!6688898))

(assert (=> b!5736820 m!6688898))

(assert (=> b!5736820 m!6688902))

(assert (=> bm!438545 m!6688904))

(assert (=> b!5736281 d!1808534))

(declare-fun d!1808540 () Bool)

(assert (=> d!1808540 (= (matchR!7930 (Concat!24590 (Concat!24590 (reg!16074 (regOne!32002 r!7292)) lt!2283853) (regTwo!32002 r!7292)) s!2326) (matchR!7930 (Concat!24590 (reg!16074 (regOne!32002 r!7292)) (Concat!24590 lt!2283853 (regTwo!32002 r!7292))) s!2326))))

(declare-fun lt!2283952 () Unit!156512)

(declare-fun choose!43477 (Regex!15745 Regex!15745 Regex!15745 List!63534) Unit!156512)

(assert (=> d!1808540 (= lt!2283952 (choose!43477 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (regTwo!32002 r!7292) s!2326))))

(declare-fun e!3526700 () Bool)

(assert (=> d!1808540 e!3526700))

(declare-fun res!2422784 () Bool)

(assert (=> d!1808540 (=> (not res!2422784) (not e!3526700))))

(assert (=> d!1808540 (= res!2422784 (validRegex!7481 (reg!16074 (regOne!32002 r!7292))))))

(assert (=> d!1808540 (= (lemmaConcatAssociative!98 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (regTwo!32002 r!7292) s!2326) lt!2283952)))

(declare-fun b!5736828 () Bool)

(declare-fun res!2422785 () Bool)

(assert (=> b!5736828 (=> (not res!2422785) (not e!3526700))))

(assert (=> b!5736828 (= res!2422785 (validRegex!7481 lt!2283853))))

(declare-fun b!5736829 () Bool)

(assert (=> b!5736829 (= e!3526700 (validRegex!7481 (regTwo!32002 r!7292)))))

(assert (= (and d!1808540 res!2422784) b!5736828))

(assert (= (and b!5736828 res!2422785) b!5736829))

(declare-fun m!6688908 () Bool)

(assert (=> d!1808540 m!6688908))

(declare-fun m!6688910 () Bool)

(assert (=> d!1808540 m!6688910))

(declare-fun m!6688912 () Bool)

(assert (=> d!1808540 m!6688912))

(assert (=> d!1808540 m!6688906))

(declare-fun m!6688914 () Bool)

(assert (=> b!5736828 m!6688914))

(declare-fun m!6688916 () Bool)

(assert (=> b!5736829 m!6688916))

(assert (=> b!5736281 d!1808540))

(declare-fun d!1808544 () Bool)

(assert (=> d!1808544 (matchR!7930 (Concat!24590 (reg!16074 (regOne!32002 r!7292)) lt!2283854) (++!13962 (_1!36145 lt!2283852) (_2!36145 lt!2283852)))))

(declare-fun lt!2283957 () Unit!156512)

(declare-fun choose!43479 (Regex!15745 Regex!15745 List!63534 List!63534) Unit!156512)

(assert (=> d!1808544 (= lt!2283957 (choose!43479 (reg!16074 (regOne!32002 r!7292)) lt!2283854 (_1!36145 lt!2283852) (_2!36145 lt!2283852)))))

(declare-fun e!3526707 () Bool)

(assert (=> d!1808544 e!3526707))

(declare-fun res!2422796 () Bool)

(assert (=> d!1808544 (=> (not res!2422796) (not e!3526707))))

(assert (=> d!1808544 (= res!2422796 (validRegex!7481 (reg!16074 (regOne!32002 r!7292))))))

(assert (=> d!1808544 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!282 (reg!16074 (regOne!32002 r!7292)) lt!2283854 (_1!36145 lt!2283852) (_2!36145 lt!2283852)) lt!2283957)))

(declare-fun b!5736840 () Bool)

(assert (=> b!5736840 (= e!3526707 (validRegex!7481 lt!2283854))))

(assert (= (and d!1808544 res!2422796) b!5736840))

(assert (=> d!1808544 m!6688406))

(assert (=> d!1808544 m!6688406))

(declare-fun m!6688918 () Bool)

(assert (=> d!1808544 m!6688918))

(declare-fun m!6688920 () Bool)

(assert (=> d!1808544 m!6688920))

(assert (=> d!1808544 m!6688906))

(assert (=> b!5736840 m!6688838))

(assert (=> b!5736281 d!1808544))

(declare-fun d!1808546 () Bool)

(assert (=> d!1808546 (= (matchR!7930 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283852)) (matchZipper!1883 lt!2283821 (_1!36145 lt!2283852)))))

(declare-fun lt!2283961 () Unit!156512)

(declare-fun choose!43480 ((InoxSet Context!10258) List!63536 Regex!15745 List!63534) Unit!156512)

(assert (=> d!1808546 (= lt!2283961 (choose!43480 lt!2283821 lt!2283834 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283852)))))

(assert (=> d!1808546 (validRegex!7481 (reg!16074 (regOne!32002 r!7292)))))

(assert (=> d!1808546 (= (theoremZipperRegexEquiv!665 lt!2283821 lt!2283834 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283852)) lt!2283961)))

(declare-fun bs!1340812 () Bool)

(assert (= bs!1340812 d!1808546))

(assert (=> bs!1340812 m!6688270))

(assert (=> bs!1340812 m!6688394))

(declare-fun m!6688928 () Bool)

(assert (=> bs!1340812 m!6688928))

(assert (=> bs!1340812 m!6688906))

(assert (=> b!5736281 d!1808546))

(declare-fun b!5736902 () Bool)

(declare-fun lt!2283973 () Unit!156512)

(declare-fun lt!2283974 () Unit!156512)

(assert (=> b!5736902 (= lt!2283973 lt!2283974)))

(assert (=> b!5736902 (= (++!13962 (++!13962 Nil!63410 (Cons!63410 (h!69858 s!2326) Nil!63410)) (t!376862 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2085 (List!63534 C!31760 List!63534 List!63534) Unit!156512)

(assert (=> b!5736902 (= lt!2283974 (lemmaMoveElementToOtherListKeepsConcatEq!2085 Nil!63410 (h!69858 s!2326) (t!376862 s!2326) s!2326))))

(declare-fun e!3526744 () Option!15754)

(assert (=> b!5736902 (= e!3526744 (findConcatSeparation!2168 lt!2283800 (regTwo!32002 r!7292) (++!13962 Nil!63410 (Cons!63410 (h!69858 s!2326) Nil!63410)) (t!376862 s!2326) s!2326))))

(declare-fun b!5736903 () Bool)

(declare-fun e!3526742 () Bool)

(declare-fun lt!2283972 () Option!15754)

(assert (=> b!5736903 (= e!3526742 (= (++!13962 (_1!36145 (get!21873 lt!2283972)) (_2!36145 (get!21873 lt!2283972))) s!2326))))

(declare-fun b!5736905 () Bool)

(declare-fun e!3526743 () Option!15754)

(assert (=> b!5736905 (= e!3526743 (Some!15753 (tuple2!65685 Nil!63410 s!2326)))))

(declare-fun b!5736906 () Bool)

(declare-fun res!2422831 () Bool)

(assert (=> b!5736906 (=> (not res!2422831) (not e!3526742))))

(assert (=> b!5736906 (= res!2422831 (matchR!7930 (regTwo!32002 r!7292) (_2!36145 (get!21873 lt!2283972))))))

(declare-fun b!5736907 () Bool)

(declare-fun res!2422830 () Bool)

(assert (=> b!5736907 (=> (not res!2422830) (not e!3526742))))

(assert (=> b!5736907 (= res!2422830 (matchR!7930 lt!2283800 (_1!36145 (get!21873 lt!2283972))))))

(declare-fun b!5736908 () Bool)

(declare-fun e!3526741 () Bool)

(assert (=> b!5736908 (= e!3526741 (matchR!7930 (regTwo!32002 r!7292) s!2326))))

(declare-fun b!5736904 () Bool)

(declare-fun e!3526745 () Bool)

(assert (=> b!5736904 (= e!3526745 (not (isDefined!12457 lt!2283972)))))

(declare-fun d!1808550 () Bool)

(assert (=> d!1808550 e!3526745))

(declare-fun res!2422834 () Bool)

(assert (=> d!1808550 (=> res!2422834 e!3526745)))

(assert (=> d!1808550 (= res!2422834 e!3526742)))

(declare-fun res!2422832 () Bool)

(assert (=> d!1808550 (=> (not res!2422832) (not e!3526742))))

(assert (=> d!1808550 (= res!2422832 (isDefined!12457 lt!2283972))))

(assert (=> d!1808550 (= lt!2283972 e!3526743)))

(declare-fun c!1012419 () Bool)

(assert (=> d!1808550 (= c!1012419 e!3526741)))

(declare-fun res!2422833 () Bool)

(assert (=> d!1808550 (=> (not res!2422833) (not e!3526741))))

(assert (=> d!1808550 (= res!2422833 (matchR!7930 lt!2283800 Nil!63410))))

(assert (=> d!1808550 (validRegex!7481 lt!2283800)))

(assert (=> d!1808550 (= (findConcatSeparation!2168 lt!2283800 (regTwo!32002 r!7292) Nil!63410 s!2326 s!2326) lt!2283972)))

(declare-fun b!5736909 () Bool)

(assert (=> b!5736909 (= e!3526743 e!3526744)))

(declare-fun c!1012420 () Bool)

(assert (=> b!5736909 (= c!1012420 ((_ is Nil!63410) s!2326))))

(declare-fun b!5736910 () Bool)

(assert (=> b!5736910 (= e!3526744 None!15753)))

(assert (= (and d!1808550 res!2422833) b!5736908))

(assert (= (and d!1808550 c!1012419) b!5736905))

(assert (= (and d!1808550 (not c!1012419)) b!5736909))

(assert (= (and b!5736909 c!1012420) b!5736910))

(assert (= (and b!5736909 (not c!1012420)) b!5736902))

(assert (= (and d!1808550 res!2422832) b!5736907))

(assert (= (and b!5736907 res!2422830) b!5736906))

(assert (= (and b!5736906 res!2422831) b!5736903))

(assert (= (and d!1808550 (not res!2422834)) b!5736904))

(declare-fun m!6688952 () Bool)

(assert (=> b!5736902 m!6688952))

(assert (=> b!5736902 m!6688952))

(declare-fun m!6688954 () Bool)

(assert (=> b!5736902 m!6688954))

(declare-fun m!6688956 () Bool)

(assert (=> b!5736902 m!6688956))

(assert (=> b!5736902 m!6688952))

(declare-fun m!6688958 () Bool)

(assert (=> b!5736902 m!6688958))

(declare-fun m!6688960 () Bool)

(assert (=> b!5736906 m!6688960))

(declare-fun m!6688962 () Bool)

(assert (=> b!5736906 m!6688962))

(assert (=> b!5736903 m!6688960))

(declare-fun m!6688964 () Bool)

(assert (=> b!5736903 m!6688964))

(declare-fun m!6688966 () Bool)

(assert (=> d!1808550 m!6688966))

(declare-fun m!6688968 () Bool)

(assert (=> d!1808550 m!6688968))

(declare-fun m!6688970 () Bool)

(assert (=> d!1808550 m!6688970))

(assert (=> b!5736904 m!6688966))

(declare-fun m!6688972 () Bool)

(assert (=> b!5736908 m!6688972))

(assert (=> b!5736907 m!6688960))

(declare-fun m!6688974 () Bool)

(assert (=> b!5736907 m!6688974))

(assert (=> b!5736281 d!1808550))

(declare-fun d!1808560 () Bool)

(assert (=> d!1808560 (= (matchR!7930 lt!2283854 (_2!36145 lt!2283852)) (matchZipper!1883 lt!2283842 (_2!36145 lt!2283852)))))

(declare-fun lt!2283976 () Unit!156512)

(assert (=> d!1808560 (= lt!2283976 (choose!43480 lt!2283842 lt!2283843 lt!2283854 (_2!36145 lt!2283852)))))

(assert (=> d!1808560 (validRegex!7481 lt!2283854)))

(assert (=> d!1808560 (= (theoremZipperRegexEquiv!665 lt!2283842 lt!2283843 lt!2283854 (_2!36145 lt!2283852)) lt!2283976)))

(declare-fun bs!1340836 () Bool)

(assert (= bs!1340836 d!1808560))

(assert (=> bs!1340836 m!6688268))

(assert (=> bs!1340836 m!6688230))

(declare-fun m!6688976 () Bool)

(assert (=> bs!1340836 m!6688976))

(assert (=> bs!1340836 m!6688838))

(assert (=> b!5736281 d!1808560))

(declare-fun b!5736912 () Bool)

(declare-fun res!2422841 () Bool)

(declare-fun e!3526748 () Bool)

(assert (=> b!5736912 (=> (not res!2422841) (not e!3526748))))

(assert (=> b!5736912 (= res!2422841 (isEmpty!35292 (tail!11241 s!2326)))))

(declare-fun b!5736913 () Bool)

(declare-fun e!3526747 () Bool)

(declare-fun e!3526750 () Bool)

(assert (=> b!5736913 (= e!3526747 e!3526750)))

(declare-fun c!1012423 () Bool)

(assert (=> b!5736913 (= c!1012423 ((_ is EmptyLang!15745) lt!2283816))))

(declare-fun b!5736914 () Bool)

(declare-fun e!3526751 () Bool)

(declare-fun e!3526749 () Bool)

(assert (=> b!5736914 (= e!3526751 e!3526749)))

(declare-fun res!2422842 () Bool)

(assert (=> b!5736914 (=> (not res!2422842) (not e!3526749))))

(declare-fun lt!2283977 () Bool)

(assert (=> b!5736914 (= res!2422842 (not lt!2283977))))

(declare-fun b!5736915 () Bool)

(declare-fun e!3526752 () Bool)

(assert (=> b!5736915 (= e!3526752 (nullable!5777 lt!2283816))))

(declare-fun b!5736916 () Bool)

(declare-fun e!3526746 () Bool)

(assert (=> b!5736916 (= e!3526746 (not (= (head!12146 s!2326) (c!1012253 lt!2283816))))))

(declare-fun b!5736917 () Bool)

(declare-fun res!2422839 () Bool)

(assert (=> b!5736917 (=> (not res!2422839) (not e!3526748))))

(declare-fun call!438555 () Bool)

(assert (=> b!5736917 (= res!2422839 (not call!438555))))

(declare-fun b!5736918 () Bool)

(declare-fun res!2422840 () Bool)

(assert (=> b!5736918 (=> res!2422840 e!3526751)))

(assert (=> b!5736918 (= res!2422840 (not ((_ is ElementMatch!15745) lt!2283816)))))

(assert (=> b!5736918 (= e!3526750 e!3526751)))

(declare-fun bm!438550 () Bool)

(assert (=> bm!438550 (= call!438555 (isEmpty!35292 s!2326))))

(declare-fun b!5736919 () Bool)

(assert (=> b!5736919 (= e!3526752 (matchR!7930 (derivativeStep!4536 lt!2283816 (head!12146 s!2326)) (tail!11241 s!2326)))))

(declare-fun b!5736920 () Bool)

(assert (=> b!5736920 (= e!3526748 (= (head!12146 s!2326) (c!1012253 lt!2283816)))))

(declare-fun b!5736921 () Bool)

(declare-fun res!2422838 () Bool)

(assert (=> b!5736921 (=> res!2422838 e!3526751)))

(assert (=> b!5736921 (= res!2422838 e!3526748)))

(declare-fun res!2422835 () Bool)

(assert (=> b!5736921 (=> (not res!2422835) (not e!3526748))))

(assert (=> b!5736921 (= res!2422835 lt!2283977)))

(declare-fun b!5736922 () Bool)

(assert (=> b!5736922 (= e!3526747 (= lt!2283977 call!438555))))

(declare-fun d!1808562 () Bool)

(assert (=> d!1808562 e!3526747))

(declare-fun c!1012422 () Bool)

(assert (=> d!1808562 (= c!1012422 ((_ is EmptyExpr!15745) lt!2283816))))

(assert (=> d!1808562 (= lt!2283977 e!3526752)))

(declare-fun c!1012421 () Bool)

(assert (=> d!1808562 (= c!1012421 (isEmpty!35292 s!2326))))

(assert (=> d!1808562 (validRegex!7481 lt!2283816)))

(assert (=> d!1808562 (= (matchR!7930 lt!2283816 s!2326) lt!2283977)))

(declare-fun b!5736911 () Bool)

(assert (=> b!5736911 (= e!3526750 (not lt!2283977))))

(declare-fun b!5736923 () Bool)

(declare-fun res!2422837 () Bool)

(assert (=> b!5736923 (=> res!2422837 e!3526746)))

(assert (=> b!5736923 (= res!2422837 (not (isEmpty!35292 (tail!11241 s!2326))))))

(declare-fun b!5736924 () Bool)

(assert (=> b!5736924 (= e!3526749 e!3526746)))

(declare-fun res!2422836 () Bool)

(assert (=> b!5736924 (=> res!2422836 e!3526746)))

(assert (=> b!5736924 (= res!2422836 call!438555)))

(assert (= (and d!1808562 c!1012421) b!5736915))

(assert (= (and d!1808562 (not c!1012421)) b!5736919))

(assert (= (and d!1808562 c!1012422) b!5736922))

(assert (= (and d!1808562 (not c!1012422)) b!5736913))

(assert (= (and b!5736913 c!1012423) b!5736911))

(assert (= (and b!5736913 (not c!1012423)) b!5736918))

(assert (= (and b!5736918 (not res!2422840)) b!5736921))

(assert (= (and b!5736921 res!2422835) b!5736917))

(assert (= (and b!5736917 res!2422839) b!5736912))

(assert (= (and b!5736912 res!2422841) b!5736920))

(assert (= (and b!5736921 (not res!2422838)) b!5736914))

(assert (= (and b!5736914 res!2422842) b!5736924))

(assert (= (and b!5736924 (not res!2422836)) b!5736923))

(assert (= (and b!5736923 (not res!2422837)) b!5736916))

(assert (= (or b!5736922 b!5736917 b!5736924) bm!438550))

(declare-fun m!6688978 () Bool)

(assert (=> b!5736915 m!6688978))

(assert (=> b!5736916 m!6688766))

(assert (=> b!5736919 m!6688766))

(assert (=> b!5736919 m!6688766))

(declare-fun m!6688980 () Bool)

(assert (=> b!5736919 m!6688980))

(assert (=> b!5736919 m!6688770))

(assert (=> b!5736919 m!6688980))

(assert (=> b!5736919 m!6688770))

(declare-fun m!6688982 () Bool)

(assert (=> b!5736919 m!6688982))

(assert (=> b!5736920 m!6688766))

(assert (=> b!5736912 m!6688770))

(assert (=> b!5736912 m!6688770))

(assert (=> b!5736912 m!6688774))

(assert (=> d!1808562 m!6688722))

(assert (=> d!1808562 m!6688844))

(assert (=> b!5736923 m!6688770))

(assert (=> b!5736923 m!6688770))

(assert (=> b!5736923 m!6688774))

(assert (=> bm!438550 m!6688722))

(assert (=> b!5736281 d!1808562))

(declare-fun bs!1340850 () Bool)

(declare-fun d!1808564 () Bool)

(assert (= bs!1340850 (and d!1808564 b!5736301)))

(declare-fun lambda!310948 () Int)

(assert (=> bs!1340850 (not (= lambda!310948 lambda!310894))))

(declare-fun bs!1340851 () Bool)

(assert (= bs!1340851 (and d!1808564 b!5736652)))

(assert (=> bs!1340851 (not (= lambda!310948 lambda!310922))))

(declare-fun bs!1340852 () Bool)

(assert (= bs!1340852 (and d!1808564 b!5736286)))

(assert (=> bs!1340852 (= (= lt!2283800 (regOne!32002 r!7292)) (= lambda!310948 lambda!310886))))

(assert (=> bs!1340852 (not (= lambda!310948 lambda!310887))))

(declare-fun bs!1340853 () Bool)

(assert (= bs!1340853 (and d!1808564 b!5736281)))

(assert (=> bs!1340853 (not (= lambda!310948 lambda!310892))))

(assert (=> bs!1340850 (= (and (= s!2326 (_1!36145 lt!2283847)) (= lt!2283800 (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!310948 lambda!310893))))

(assert (=> bs!1340853 (= lambda!310948 lambda!310891)))

(declare-fun bs!1340854 () Bool)

(assert (= bs!1340854 (and d!1808564 b!5736653)))

(assert (=> bs!1340854 (not (= lambda!310948 lambda!310923))))

(assert (=> bs!1340850 (not (= lambda!310948 lambda!310895))))

(assert (=> d!1808564 true))

(assert (=> d!1808564 true))

(assert (=> d!1808564 true))

(declare-fun lambda!310949 () Int)

(assert (=> bs!1340850 (= (and (= s!2326 (_1!36145 lt!2283847)) (= lt!2283800 (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!310949 lambda!310894))))

(assert (=> bs!1340851 (not (= lambda!310949 lambda!310922))))

(assert (=> bs!1340852 (not (= lambda!310949 lambda!310886))))

(assert (=> bs!1340852 (= (= lt!2283800 (regOne!32002 r!7292)) (= lambda!310949 lambda!310887))))

(assert (=> bs!1340853 (= lambda!310949 lambda!310892)))

(assert (=> bs!1340850 (not (= lambda!310949 lambda!310893))))

(assert (=> bs!1340853 (not (= lambda!310949 lambda!310891))))

(declare-fun bs!1340856 () Bool)

(assert (= bs!1340856 d!1808564))

(assert (=> bs!1340856 (not (= lambda!310949 lambda!310948))))

(assert (=> bs!1340854 (= (and (= lt!2283800 (regOne!32002 lt!2283839)) (= (regTwo!32002 r!7292) (regTwo!32002 lt!2283839))) (= lambda!310949 lambda!310923))))

(assert (=> bs!1340850 (not (= lambda!310949 lambda!310895))))

(assert (=> d!1808564 true))

(assert (=> d!1808564 true))

(assert (=> d!1808564 true))

(assert (=> d!1808564 (= (Exists!2845 lambda!310948) (Exists!2845 lambda!310949))))

(declare-fun lt!2283987 () Unit!156512)

(declare-fun choose!43481 (Regex!15745 Regex!15745 List!63534) Unit!156512)

(assert (=> d!1808564 (= lt!2283987 (choose!43481 lt!2283800 (regTwo!32002 r!7292) s!2326))))

(assert (=> d!1808564 (validRegex!7481 lt!2283800)))

(assert (=> d!1808564 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1474 lt!2283800 (regTwo!32002 r!7292) s!2326) lt!2283987)))

(declare-fun m!6689030 () Bool)

(assert (=> bs!1340856 m!6689030))

(declare-fun m!6689032 () Bool)

(assert (=> bs!1340856 m!6689032))

(declare-fun m!6689034 () Bool)

(assert (=> bs!1340856 m!6689034))

(assert (=> bs!1340856 m!6688970))

(assert (=> b!5736281 d!1808564))

(declare-fun bs!1340858 () Bool)

(declare-fun d!1808580 () Bool)

(assert (= bs!1340858 (and d!1808580 b!5736301)))

(declare-fun lambda!310952 () Int)

(assert (=> bs!1340858 (not (= lambda!310952 lambda!310894))))

(declare-fun bs!1340859 () Bool)

(assert (= bs!1340859 (and d!1808580 b!5736652)))

(assert (=> bs!1340859 (not (= lambda!310952 lambda!310922))))

(declare-fun bs!1340860 () Bool)

(assert (= bs!1340860 (and d!1808580 b!5736286)))

(assert (=> bs!1340860 (not (= lambda!310952 lambda!310887))))

(declare-fun bs!1340861 () Bool)

(assert (= bs!1340861 (and d!1808580 b!5736281)))

(assert (=> bs!1340861 (not (= lambda!310952 lambda!310892))))

(assert (=> bs!1340858 (= (and (= s!2326 (_1!36145 lt!2283847)) (= lt!2283800 (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!310952 lambda!310893))))

(assert (=> bs!1340861 (= lambda!310952 lambda!310891)))

(declare-fun bs!1340862 () Bool)

(assert (= bs!1340862 (and d!1808580 d!1808564)))

(assert (=> bs!1340862 (= lambda!310952 lambda!310948)))

(declare-fun bs!1340863 () Bool)

(assert (= bs!1340863 (and d!1808580 b!5736653)))

(assert (=> bs!1340863 (not (= lambda!310952 lambda!310923))))

(assert (=> bs!1340858 (not (= lambda!310952 lambda!310895))))

(assert (=> bs!1340860 (= (= lt!2283800 (regOne!32002 r!7292)) (= lambda!310952 lambda!310886))))

(assert (=> bs!1340862 (not (= lambda!310952 lambda!310949))))

(assert (=> d!1808580 true))

(assert (=> d!1808580 true))

(assert (=> d!1808580 true))

(assert (=> d!1808580 (= (isDefined!12457 (findConcatSeparation!2168 lt!2283800 (regTwo!32002 r!7292) Nil!63410 s!2326 s!2326)) (Exists!2845 lambda!310952))))

(declare-fun lt!2283999 () Unit!156512)

(declare-fun choose!43482 (Regex!15745 Regex!15745 List!63534) Unit!156512)

(assert (=> d!1808580 (= lt!2283999 (choose!43482 lt!2283800 (regTwo!32002 r!7292) s!2326))))

(assert (=> d!1808580 (validRegex!7481 lt!2283800)))

(assert (=> d!1808580 (= (lemmaFindConcatSeparationEquivalentToExists!1932 lt!2283800 (regTwo!32002 r!7292) s!2326) lt!2283999)))

(declare-fun bs!1340864 () Bool)

(assert (= bs!1340864 d!1808580))

(declare-fun m!6689064 () Bool)

(assert (=> bs!1340864 m!6689064))

(declare-fun m!6689066 () Bool)

(assert (=> bs!1340864 m!6689066))

(assert (=> bs!1340864 m!6688970))

(assert (=> bs!1340864 m!6688276))

(assert (=> bs!1340864 m!6688276))

(declare-fun m!6689068 () Bool)

(assert (=> bs!1340864 m!6689068))

(assert (=> b!5736281 d!1808580))

(declare-fun d!1808588 () Bool)

(declare-fun c!1012436 () Bool)

(assert (=> d!1808588 (= c!1012436 (isEmpty!35292 lt!2283846))))

(declare-fun e!3526783 () Bool)

(assert (=> d!1808588 (= (matchZipper!1883 (store ((as const (Array Context!10258 Bool)) false) (Context!10259 (++!13963 lt!2283845 lt!2283809)) true) lt!2283846) e!3526783)))

(declare-fun b!5736985 () Bool)

(declare-fun nullableZipper!1683 ((InoxSet Context!10258)) Bool)

(assert (=> b!5736985 (= e!3526783 (nullableZipper!1683 (store ((as const (Array Context!10258 Bool)) false) (Context!10259 (++!13963 lt!2283845 lt!2283809)) true)))))

(declare-fun b!5736986 () Bool)

(assert (=> b!5736986 (= e!3526783 (matchZipper!1883 (derivationStepZipper!1828 (store ((as const (Array Context!10258 Bool)) false) (Context!10259 (++!13963 lt!2283845 lt!2283809)) true) (head!12146 lt!2283846)) (tail!11241 lt!2283846)))))

(assert (= (and d!1808588 c!1012436) b!5736985))

(assert (= (and d!1808588 (not c!1012436)) b!5736986))

(assert (=> d!1808588 m!6688872))

(assert (=> b!5736985 m!6688236))

(declare-fun m!6689070 () Bool)

(assert (=> b!5736985 m!6689070))

(assert (=> b!5736986 m!6688854))

(assert (=> b!5736986 m!6688236))

(assert (=> b!5736986 m!6688854))

(declare-fun m!6689072 () Bool)

(assert (=> b!5736986 m!6689072))

(assert (=> b!5736986 m!6688860))

(assert (=> b!5736986 m!6689072))

(assert (=> b!5736986 m!6688860))

(declare-fun m!6689074 () Bool)

(assert (=> b!5736986 m!6689074))

(assert (=> b!5736281 d!1808588))

(declare-fun d!1808590 () Bool)

(declare-fun choose!43484 (Int) Bool)

(assert (=> d!1808590 (= (Exists!2845 lambda!310892) (choose!43484 lambda!310892))))

(declare-fun bs!1340865 () Bool)

(assert (= bs!1340865 d!1808590))

(declare-fun m!6689076 () Bool)

(assert (=> bs!1340865 m!6689076))

(assert (=> b!5736281 d!1808590))

(declare-fun d!1808592 () Bool)

(assert (=> d!1808592 (= (get!21873 lt!2283860) (v!51808 lt!2283860))))

(assert (=> b!5736281 d!1808592))

(declare-fun d!1808594 () Bool)

(assert (=> d!1808594 (= (Exists!2845 lambda!310891) (choose!43484 lambda!310891))))

(declare-fun bs!1340866 () Bool)

(assert (= bs!1340866 d!1808594))

(declare-fun m!6689078 () Bool)

(assert (=> bs!1340866 m!6689078))

(assert (=> b!5736281 d!1808594))

(declare-fun bs!1340867 () Bool)

(declare-fun b!5736999 () Bool)

(assert (= bs!1340867 (and b!5736999 b!5736301)))

(declare-fun lambda!310956 () Int)

(assert (=> bs!1340867 (not (= lambda!310956 lambda!310894))))

(declare-fun bs!1340868 () Bool)

(assert (= bs!1340868 (and b!5736999 b!5736652)))

(assert (=> bs!1340868 (= (and (= (reg!16074 lt!2283816) (reg!16074 lt!2283839)) (= lt!2283816 lt!2283839)) (= lambda!310956 lambda!310922))))

(declare-fun bs!1340869 () Bool)

(assert (= bs!1340869 (and b!5736999 b!5736286)))

(assert (=> bs!1340869 (not (= lambda!310956 lambda!310887))))

(declare-fun bs!1340870 () Bool)

(assert (= bs!1340870 (and b!5736999 b!5736281)))

(assert (=> bs!1340870 (not (= lambda!310956 lambda!310892))))

(assert (=> bs!1340867 (not (= lambda!310956 lambda!310893))))

(assert (=> bs!1340870 (not (= lambda!310956 lambda!310891))))

(declare-fun bs!1340871 () Bool)

(assert (= bs!1340871 (and b!5736999 d!1808564)))

(assert (=> bs!1340871 (not (= lambda!310956 lambda!310948))))

(declare-fun bs!1340872 () Bool)

(assert (= bs!1340872 (and b!5736999 b!5736653)))

(assert (=> bs!1340872 (not (= lambda!310956 lambda!310923))))

(declare-fun bs!1340873 () Bool)

(assert (= bs!1340873 (and b!5736999 d!1808580)))

(assert (=> bs!1340873 (not (= lambda!310956 lambda!310952))))

(assert (=> bs!1340867 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (reg!16074 lt!2283816) (reg!16074 (regOne!32002 r!7292))) (= lt!2283816 lt!2283853)) (= lambda!310956 lambda!310895))))

(assert (=> bs!1340869 (not (= lambda!310956 lambda!310886))))

(assert (=> bs!1340871 (not (= lambda!310956 lambda!310949))))

(assert (=> b!5736999 true))

(assert (=> b!5736999 true))

(declare-fun bs!1340874 () Bool)

(declare-fun b!5737000 () Bool)

(assert (= bs!1340874 (and b!5737000 b!5736301)))

(declare-fun lambda!310958 () Int)

(assert (=> bs!1340874 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 lt!2283816) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 lt!2283816) lt!2283853)) (= lambda!310958 lambda!310894))))

(declare-fun bs!1340875 () Bool)

(assert (= bs!1340875 (and b!5737000 b!5736652)))

(assert (=> bs!1340875 (not (= lambda!310958 lambda!310922))))

(declare-fun bs!1340877 () Bool)

(assert (= bs!1340877 (and b!5737000 b!5736286)))

(assert (=> bs!1340877 (= (and (= (regOne!32002 lt!2283816) (regOne!32002 r!7292)) (= (regTwo!32002 lt!2283816) (regTwo!32002 r!7292))) (= lambda!310958 lambda!310887))))

(declare-fun bs!1340879 () Bool)

(assert (= bs!1340879 (and b!5737000 b!5736281)))

(assert (=> bs!1340879 (= (and (= (regOne!32002 lt!2283816) lt!2283800) (= (regTwo!32002 lt!2283816) (regTwo!32002 r!7292))) (= lambda!310958 lambda!310892))))

(declare-fun bs!1340881 () Bool)

(assert (= bs!1340881 (and b!5737000 b!5736999)))

(assert (=> bs!1340881 (not (= lambda!310958 lambda!310956))))

(assert (=> bs!1340874 (not (= lambda!310958 lambda!310893))))

(assert (=> bs!1340879 (not (= lambda!310958 lambda!310891))))

(declare-fun bs!1340884 () Bool)

(assert (= bs!1340884 (and b!5737000 d!1808564)))

(assert (=> bs!1340884 (not (= lambda!310958 lambda!310948))))

(declare-fun bs!1340886 () Bool)

(assert (= bs!1340886 (and b!5737000 b!5736653)))

(assert (=> bs!1340886 (= (and (= (regOne!32002 lt!2283816) (regOne!32002 lt!2283839)) (= (regTwo!32002 lt!2283816) (regTwo!32002 lt!2283839))) (= lambda!310958 lambda!310923))))

(declare-fun bs!1340887 () Bool)

(assert (= bs!1340887 (and b!5737000 d!1808580)))

(assert (=> bs!1340887 (not (= lambda!310958 lambda!310952))))

(assert (=> bs!1340874 (not (= lambda!310958 lambda!310895))))

(assert (=> bs!1340877 (not (= lambda!310958 lambda!310886))))

(assert (=> bs!1340884 (= (and (= (regOne!32002 lt!2283816) lt!2283800) (= (regTwo!32002 lt!2283816) (regTwo!32002 r!7292))) (= lambda!310958 lambda!310949))))

(assert (=> b!5737000 true))

(assert (=> b!5737000 true))

(declare-fun b!5736991 () Bool)

(declare-fun e!3526790 () Bool)

(assert (=> b!5736991 (= e!3526790 (matchRSpec!2848 (regTwo!32003 lt!2283816) s!2326))))

(declare-fun b!5736993 () Bool)

(declare-fun c!1012440 () Bool)

(assert (=> b!5736993 (= c!1012440 ((_ is Union!15745) lt!2283816))))

(declare-fun e!3526787 () Bool)

(declare-fun e!3526789 () Bool)

(assert (=> b!5736993 (= e!3526787 e!3526789)))

(declare-fun b!5736994 () Bool)

(assert (=> b!5736994 (= e!3526789 e!3526790)))

(declare-fun res!2422884 () Bool)

(assert (=> b!5736994 (= res!2422884 (matchRSpec!2848 (regOne!32003 lt!2283816) s!2326))))

(assert (=> b!5736994 (=> res!2422884 e!3526790)))

(declare-fun b!5736995 () Bool)

(declare-fun e!3526786 () Bool)

(declare-fun e!3526788 () Bool)

(assert (=> b!5736995 (= e!3526786 e!3526788)))

(declare-fun res!2422885 () Bool)

(assert (=> b!5736995 (= res!2422885 (not ((_ is EmptyLang!15745) lt!2283816)))))

(assert (=> b!5736995 (=> (not res!2422885) (not e!3526788))))

(declare-fun bm!438553 () Bool)

(declare-fun call!438559 () Bool)

(assert (=> bm!438553 (= call!438559 (isEmpty!35292 s!2326))))

(declare-fun b!5736996 () Bool)

(declare-fun c!1012439 () Bool)

(assert (=> b!5736996 (= c!1012439 ((_ is ElementMatch!15745) lt!2283816))))

(assert (=> b!5736996 (= e!3526788 e!3526787)))

(declare-fun b!5736997 () Bool)

(declare-fun e!3526791 () Bool)

(assert (=> b!5736997 (= e!3526789 e!3526791)))

(declare-fun c!1012437 () Bool)

(assert (=> b!5736997 (= c!1012437 ((_ is Star!15745) lt!2283816))))

(declare-fun b!5736998 () Bool)

(assert (=> b!5736998 (= e!3526786 call!438559)))

(declare-fun d!1808596 () Bool)

(declare-fun c!1012438 () Bool)

(assert (=> d!1808596 (= c!1012438 ((_ is EmptyExpr!15745) lt!2283816))))

(assert (=> d!1808596 (= (matchRSpec!2848 lt!2283816 s!2326) e!3526786)))

(declare-fun b!5736992 () Bool)

(assert (=> b!5736992 (= e!3526787 (= s!2326 (Cons!63410 (c!1012253 lt!2283816) Nil!63410)))))

(declare-fun e!3526792 () Bool)

(declare-fun call!438558 () Bool)

(assert (=> b!5736999 (= e!3526792 call!438558)))

(assert (=> b!5737000 (= e!3526791 call!438558)))

(declare-fun bm!438554 () Bool)

(assert (=> bm!438554 (= call!438558 (Exists!2845 (ite c!1012437 lambda!310956 lambda!310958)))))

(declare-fun b!5737001 () Bool)

(declare-fun res!2422883 () Bool)

(assert (=> b!5737001 (=> res!2422883 e!3526792)))

(assert (=> b!5737001 (= res!2422883 call!438559)))

(assert (=> b!5737001 (= e!3526791 e!3526792)))

(assert (= (and d!1808596 c!1012438) b!5736998))

(assert (= (and d!1808596 (not c!1012438)) b!5736995))

(assert (= (and b!5736995 res!2422885) b!5736996))

(assert (= (and b!5736996 c!1012439) b!5736992))

(assert (= (and b!5736996 (not c!1012439)) b!5736993))

(assert (= (and b!5736993 c!1012440) b!5736994))

(assert (= (and b!5736993 (not c!1012440)) b!5736997))

(assert (= (and b!5736994 (not res!2422884)) b!5736991))

(assert (= (and b!5736997 c!1012437) b!5737001))

(assert (= (and b!5736997 (not c!1012437)) b!5737000))

(assert (= (and b!5737001 (not res!2422883)) b!5736999))

(assert (= (or b!5736999 b!5737000) bm!438554))

(assert (= (or b!5736998 b!5737001) bm!438553))

(declare-fun m!6689080 () Bool)

(assert (=> b!5736991 m!6689080))

(declare-fun m!6689082 () Bool)

(assert (=> b!5736994 m!6689082))

(assert (=> bm!438553 m!6688722))

(declare-fun m!6689084 () Bool)

(assert (=> bm!438554 m!6689084))

(assert (=> b!5736281 d!1808596))

(declare-fun b!5737009 () Bool)

(declare-fun res!2422898 () Bool)

(declare-fun e!3526797 () Bool)

(assert (=> b!5737009 (=> (not res!2422898) (not e!3526797))))

(assert (=> b!5737009 (= res!2422898 (isEmpty!35292 (tail!11241 (_1!36145 lt!2283847))))))

(declare-fun b!5737010 () Bool)

(declare-fun e!3526796 () Bool)

(declare-fun e!3526799 () Bool)

(assert (=> b!5737010 (= e!3526796 e!3526799)))

(declare-fun c!1012443 () Bool)

(assert (=> b!5737010 (= c!1012443 ((_ is EmptyLang!15745) lt!2283800))))

(declare-fun b!5737011 () Bool)

(declare-fun e!3526800 () Bool)

(declare-fun e!3526798 () Bool)

(assert (=> b!5737011 (= e!3526800 e!3526798)))

(declare-fun res!2422899 () Bool)

(assert (=> b!5737011 (=> (not res!2422899) (not e!3526798))))

(declare-fun lt!2284003 () Bool)

(assert (=> b!5737011 (= res!2422899 (not lt!2284003))))

(declare-fun b!5737012 () Bool)

(declare-fun e!3526801 () Bool)

(assert (=> b!5737012 (= e!3526801 (nullable!5777 lt!2283800))))

(declare-fun b!5737013 () Bool)

(declare-fun e!3526795 () Bool)

(assert (=> b!5737013 (= e!3526795 (not (= (head!12146 (_1!36145 lt!2283847)) (c!1012253 lt!2283800))))))

(declare-fun b!5737014 () Bool)

(declare-fun res!2422896 () Bool)

(assert (=> b!5737014 (=> (not res!2422896) (not e!3526797))))

(declare-fun call!438560 () Bool)

(assert (=> b!5737014 (= res!2422896 (not call!438560))))

(declare-fun b!5737015 () Bool)

(declare-fun res!2422897 () Bool)

(assert (=> b!5737015 (=> res!2422897 e!3526800)))

(assert (=> b!5737015 (= res!2422897 (not ((_ is ElementMatch!15745) lt!2283800)))))

(assert (=> b!5737015 (= e!3526799 e!3526800)))

(declare-fun bm!438555 () Bool)

(assert (=> bm!438555 (= call!438560 (isEmpty!35292 (_1!36145 lt!2283847)))))

(declare-fun b!5737016 () Bool)

(assert (=> b!5737016 (= e!3526801 (matchR!7930 (derivativeStep!4536 lt!2283800 (head!12146 (_1!36145 lt!2283847))) (tail!11241 (_1!36145 lt!2283847))))))

(declare-fun b!5737017 () Bool)

(assert (=> b!5737017 (= e!3526797 (= (head!12146 (_1!36145 lt!2283847)) (c!1012253 lt!2283800)))))

(declare-fun b!5737018 () Bool)

(declare-fun res!2422895 () Bool)

(assert (=> b!5737018 (=> res!2422895 e!3526800)))

(assert (=> b!5737018 (= res!2422895 e!3526797)))

(declare-fun res!2422892 () Bool)

(assert (=> b!5737018 (=> (not res!2422892) (not e!3526797))))

(assert (=> b!5737018 (= res!2422892 lt!2284003)))

(declare-fun b!5737019 () Bool)

(assert (=> b!5737019 (= e!3526796 (= lt!2284003 call!438560))))

(declare-fun d!1808598 () Bool)

(assert (=> d!1808598 e!3526796))

(declare-fun c!1012442 () Bool)

(assert (=> d!1808598 (= c!1012442 ((_ is EmptyExpr!15745) lt!2283800))))

(assert (=> d!1808598 (= lt!2284003 e!3526801)))

(declare-fun c!1012441 () Bool)

(assert (=> d!1808598 (= c!1012441 (isEmpty!35292 (_1!36145 lt!2283847)))))

(assert (=> d!1808598 (validRegex!7481 lt!2283800)))

(assert (=> d!1808598 (= (matchR!7930 lt!2283800 (_1!36145 lt!2283847)) lt!2284003)))

(declare-fun b!5737008 () Bool)

(assert (=> b!5737008 (= e!3526799 (not lt!2284003))))

(declare-fun b!5737020 () Bool)

(declare-fun res!2422894 () Bool)

(assert (=> b!5737020 (=> res!2422894 e!3526795)))

(assert (=> b!5737020 (= res!2422894 (not (isEmpty!35292 (tail!11241 (_1!36145 lt!2283847)))))))

(declare-fun b!5737021 () Bool)

(assert (=> b!5737021 (= e!3526798 e!3526795)))

(declare-fun res!2422893 () Bool)

(assert (=> b!5737021 (=> res!2422893 e!3526795)))

(assert (=> b!5737021 (= res!2422893 call!438560)))

(assert (= (and d!1808598 c!1012441) b!5737012))

(assert (= (and d!1808598 (not c!1012441)) b!5737016))

(assert (= (and d!1808598 c!1012442) b!5737019))

(assert (= (and d!1808598 (not c!1012442)) b!5737010))

(assert (= (and b!5737010 c!1012443) b!5737008))

(assert (= (and b!5737010 (not c!1012443)) b!5737015))

(assert (= (and b!5737015 (not res!2422897)) b!5737018))

(assert (= (and b!5737018 res!2422892) b!5737014))

(assert (= (and b!5737014 res!2422896) b!5737009))

(assert (= (and b!5737009 res!2422898) b!5737017))

(assert (= (and b!5737018 (not res!2422895)) b!5737011))

(assert (= (and b!5737011 res!2422899) b!5737021))

(assert (= (and b!5737021 (not res!2422893)) b!5737020))

(assert (= (and b!5737020 (not res!2422894)) b!5737013))

(assert (= (or b!5737019 b!5737014 b!5737021) bm!438555))

(declare-fun m!6689086 () Bool)

(assert (=> b!5737012 m!6689086))

(declare-fun m!6689088 () Bool)

(assert (=> b!5737013 m!6689088))

(assert (=> b!5737016 m!6689088))

(assert (=> b!5737016 m!6689088))

(declare-fun m!6689090 () Bool)

(assert (=> b!5737016 m!6689090))

(declare-fun m!6689092 () Bool)

(assert (=> b!5737016 m!6689092))

(assert (=> b!5737016 m!6689090))

(assert (=> b!5737016 m!6689092))

(declare-fun m!6689094 () Bool)

(assert (=> b!5737016 m!6689094))

(assert (=> b!5737017 m!6689088))

(assert (=> b!5737009 m!6689092))

(assert (=> b!5737009 m!6689092))

(declare-fun m!6689096 () Bool)

(assert (=> b!5737009 m!6689096))

(declare-fun m!6689098 () Bool)

(assert (=> d!1808598 m!6689098))

(assert (=> d!1808598 m!6688970))

(assert (=> b!5737020 m!6689092))

(assert (=> b!5737020 m!6689092))

(assert (=> b!5737020 m!6689096))

(assert (=> bm!438555 m!6689098))

(assert (=> b!5736281 d!1808598))

(declare-fun d!1808600 () Bool)

(declare-fun c!1012444 () Bool)

(assert (=> d!1808600 (= c!1012444 (isEmpty!35292 (t!376862 s!2326)))))

(declare-fun e!3526802 () Bool)

(assert (=> d!1808600 (= (matchZipper!1883 lt!2283819 (t!376862 s!2326)) e!3526802)))

(declare-fun b!5737022 () Bool)

(assert (=> b!5737022 (= e!3526802 (nullableZipper!1683 lt!2283819))))

(declare-fun b!5737023 () Bool)

(assert (=> b!5737023 (= e!3526802 (matchZipper!1883 (derivationStepZipper!1828 lt!2283819 (head!12146 (t!376862 s!2326))) (tail!11241 (t!376862 s!2326))))))

(assert (= (and d!1808600 c!1012444) b!5737022))

(assert (= (and d!1808600 (not c!1012444)) b!5737023))

(declare-fun m!6689100 () Bool)

(assert (=> d!1808600 m!6689100))

(declare-fun m!6689102 () Bool)

(assert (=> b!5737022 m!6689102))

(declare-fun m!6689104 () Bool)

(assert (=> b!5737023 m!6689104))

(assert (=> b!5737023 m!6689104))

(declare-fun m!6689106 () Bool)

(assert (=> b!5737023 m!6689106))

(declare-fun m!6689108 () Bool)

(assert (=> b!5737023 m!6689108))

(assert (=> b!5737023 m!6689106))

(assert (=> b!5737023 m!6689108))

(declare-fun m!6689110 () Bool)

(assert (=> b!5737023 m!6689110))

(assert (=> b!5736302 d!1808600))

(declare-fun d!1808602 () Bool)

(declare-fun c!1012445 () Bool)

(assert (=> d!1808602 (= c!1012445 (isEmpty!35292 s!2326))))

(declare-fun e!3526803 () Bool)

(assert (=> d!1808602 (= (matchZipper!1883 lt!2283857 s!2326) e!3526803)))

(declare-fun b!5737024 () Bool)

(assert (=> b!5737024 (= e!3526803 (nullableZipper!1683 lt!2283857))))

(declare-fun b!5737025 () Bool)

(assert (=> b!5737025 (= e!3526803 (matchZipper!1883 (derivationStepZipper!1828 lt!2283857 (head!12146 s!2326)) (tail!11241 s!2326)))))

(assert (= (and d!1808602 c!1012445) b!5737024))

(assert (= (and d!1808602 (not c!1012445)) b!5737025))

(assert (=> d!1808602 m!6688722))

(declare-fun m!6689112 () Bool)

(assert (=> b!5737024 m!6689112))

(assert (=> b!5737025 m!6688766))

(assert (=> b!5737025 m!6688766))

(declare-fun m!6689114 () Bool)

(assert (=> b!5737025 m!6689114))

(assert (=> b!5737025 m!6688770))

(assert (=> b!5737025 m!6689114))

(assert (=> b!5737025 m!6688770))

(declare-fun m!6689116 () Bool)

(assert (=> b!5737025 m!6689116))

(assert (=> b!5736302 d!1808602))

(declare-fun b!5737036 () Bool)

(declare-fun e!3526810 () (InoxSet Context!10258))

(declare-fun e!3526812 () (InoxSet Context!10258))

(assert (=> b!5737036 (= e!3526810 e!3526812)))

(declare-fun c!1012451 () Bool)

(assert (=> b!5737036 (= c!1012451 ((_ is Cons!63411) (exprs!5629 lt!2283807)))))

(declare-fun bm!438558 () Bool)

(declare-fun call!438563 () (InoxSet Context!10258))

(assert (=> bm!438558 (= call!438563 (derivationStepZipperDown!1087 (h!69859 (exprs!5629 lt!2283807)) (Context!10259 (t!376863 (exprs!5629 lt!2283807))) (h!69858 s!2326)))))

(declare-fun b!5737037 () Bool)

(assert (=> b!5737037 (= e!3526810 ((_ map or) call!438563 (derivationStepZipperUp!1013 (Context!10259 (t!376863 (exprs!5629 lt!2283807))) (h!69858 s!2326))))))

(declare-fun b!5737038 () Bool)

(declare-fun e!3526811 () Bool)

(assert (=> b!5737038 (= e!3526811 (nullable!5777 (h!69859 (exprs!5629 lt!2283807))))))

(declare-fun d!1808604 () Bool)

(declare-fun c!1012450 () Bool)

(assert (=> d!1808604 (= c!1012450 e!3526811)))

(declare-fun res!2422902 () Bool)

(assert (=> d!1808604 (=> (not res!2422902) (not e!3526811))))

(assert (=> d!1808604 (= res!2422902 ((_ is Cons!63411) (exprs!5629 lt!2283807)))))

(assert (=> d!1808604 (= (derivationStepZipperUp!1013 lt!2283807 (h!69858 s!2326)) e!3526810)))

(declare-fun b!5737039 () Bool)

(assert (=> b!5737039 (= e!3526812 call!438563)))

(declare-fun b!5737040 () Bool)

(assert (=> b!5737040 (= e!3526812 ((as const (Array Context!10258 Bool)) false))))

(assert (= (and d!1808604 res!2422902) b!5737038))

(assert (= (and d!1808604 c!1012450) b!5737037))

(assert (= (and d!1808604 (not c!1012450)) b!5737036))

(assert (= (and b!5737036 c!1012451) b!5737039))

(assert (= (and b!5737036 (not c!1012451)) b!5737040))

(assert (= (or b!5737037 b!5737039) bm!438558))

(declare-fun m!6689126 () Bool)

(assert (=> bm!438558 m!6689126))

(declare-fun m!6689128 () Bool)

(assert (=> b!5737037 m!6689128))

(declare-fun m!6689130 () Bool)

(assert (=> b!5737038 m!6689130))

(assert (=> b!5736282 d!1808604))

(declare-fun d!1808610 () Bool)

(declare-fun dynLambda!24815 (Int Context!10258) (InoxSet Context!10258))

(assert (=> d!1808610 (= (flatMap!1358 lt!2283842 lambda!310888) (dynLambda!24815 lambda!310888 lt!2283815))))

(declare-fun lt!2284008 () Unit!156512)

(declare-fun choose!43488 ((InoxSet Context!10258) Context!10258 Int) Unit!156512)

(assert (=> d!1808610 (= lt!2284008 (choose!43488 lt!2283842 lt!2283815 lambda!310888))))

(assert (=> d!1808610 (= lt!2283842 (store ((as const (Array Context!10258 Bool)) false) lt!2283815 true))))

(assert (=> d!1808610 (= (lemmaFlatMapOnSingletonSet!890 lt!2283842 lt!2283815 lambda!310888) lt!2284008)))

(declare-fun b_lambda!216657 () Bool)

(assert (=> (not b_lambda!216657) (not d!1808610)))

(declare-fun bs!1340908 () Bool)

(assert (= bs!1340908 d!1808610))

(assert (=> bs!1340908 m!6688336))

(declare-fun m!6689148 () Bool)

(assert (=> bs!1340908 m!6689148))

(declare-fun m!6689150 () Bool)

(assert (=> bs!1340908 m!6689150))

(assert (=> bs!1340908 m!6688332))

(assert (=> b!5736282 d!1808610))

(declare-fun d!1808616 () Bool)

(declare-fun lt!2284010 () Regex!15745)

(assert (=> d!1808616 (validRegex!7481 lt!2284010)))

(assert (=> d!1808616 (= lt!2284010 (generalisedUnion!1608 (unfocusZipperList!1173 lt!2283834)))))

(assert (=> d!1808616 (= (unfocusZipper!1487 lt!2283834) lt!2284010)))

(declare-fun bs!1340909 () Bool)

(assert (= bs!1340909 d!1808616))

(declare-fun m!6689152 () Bool)

(assert (=> bs!1340909 m!6689152))

(declare-fun m!6689154 () Bool)

(assert (=> bs!1340909 m!6689154))

(assert (=> bs!1340909 m!6689154))

(declare-fun m!6689156 () Bool)

(assert (=> bs!1340909 m!6689156))

(assert (=> b!5736282 d!1808616))

(declare-fun b!5737045 () Bool)

(declare-fun e!3526815 () (InoxSet Context!10258))

(declare-fun e!3526817 () (InoxSet Context!10258))

(assert (=> b!5737045 (= e!3526815 e!3526817)))

(declare-fun c!1012454 () Bool)

(assert (=> b!5737045 (= c!1012454 ((_ is Cons!63411) (exprs!5629 lt!2283815)))))

(declare-fun bm!438559 () Bool)

(declare-fun call!438564 () (InoxSet Context!10258))

(assert (=> bm!438559 (= call!438564 (derivationStepZipperDown!1087 (h!69859 (exprs!5629 lt!2283815)) (Context!10259 (t!376863 (exprs!5629 lt!2283815))) (h!69858 s!2326)))))

(declare-fun b!5737046 () Bool)

(assert (=> b!5737046 (= e!3526815 ((_ map or) call!438564 (derivationStepZipperUp!1013 (Context!10259 (t!376863 (exprs!5629 lt!2283815))) (h!69858 s!2326))))))

(declare-fun b!5737047 () Bool)

(declare-fun e!3526816 () Bool)

(assert (=> b!5737047 (= e!3526816 (nullable!5777 (h!69859 (exprs!5629 lt!2283815))))))

(declare-fun d!1808618 () Bool)

(declare-fun c!1012453 () Bool)

(assert (=> d!1808618 (= c!1012453 e!3526816)))

(declare-fun res!2422905 () Bool)

(assert (=> d!1808618 (=> (not res!2422905) (not e!3526816))))

(assert (=> d!1808618 (= res!2422905 ((_ is Cons!63411) (exprs!5629 lt!2283815)))))

(assert (=> d!1808618 (= (derivationStepZipperUp!1013 lt!2283815 (h!69858 s!2326)) e!3526815)))

(declare-fun b!5737048 () Bool)

(assert (=> b!5737048 (= e!3526817 call!438564)))

(declare-fun b!5737049 () Bool)

(assert (=> b!5737049 (= e!3526817 ((as const (Array Context!10258 Bool)) false))))

(assert (= (and d!1808618 res!2422905) b!5737047))

(assert (= (and d!1808618 c!1012453) b!5737046))

(assert (= (and d!1808618 (not c!1012453)) b!5737045))

(assert (= (and b!5737045 c!1012454) b!5737048))

(assert (= (and b!5737045 (not c!1012454)) b!5737049))

(assert (= (or b!5737046 b!5737048) bm!438559))

(declare-fun m!6689158 () Bool)

(assert (=> bm!438559 m!6689158))

(declare-fun m!6689160 () Bool)

(assert (=> b!5737046 m!6689160))

(declare-fun m!6689162 () Bool)

(assert (=> b!5737047 m!6689162))

(assert (=> b!5736282 d!1808618))

(declare-fun d!1808620 () Bool)

(declare-fun choose!43490 ((InoxSet Context!10258) Int) (InoxSet Context!10258))

(assert (=> d!1808620 (= (flatMap!1358 lt!2283821 lambda!310888) (choose!43490 lt!2283821 lambda!310888))))

(declare-fun bs!1340918 () Bool)

(assert (= bs!1340918 d!1808620))

(declare-fun m!6689164 () Bool)

(assert (=> bs!1340918 m!6689164))

(assert (=> b!5736282 d!1808620))

(declare-fun d!1808622 () Bool)

(assert (=> d!1808622 (= (flatMap!1358 lt!2283821 lambda!310888) (dynLambda!24815 lambda!310888 lt!2283807))))

(declare-fun lt!2284011 () Unit!156512)

(assert (=> d!1808622 (= lt!2284011 (choose!43488 lt!2283821 lt!2283807 lambda!310888))))

(assert (=> d!1808622 (= lt!2283821 (store ((as const (Array Context!10258 Bool)) false) lt!2283807 true))))

(assert (=> d!1808622 (= (lemmaFlatMapOnSingletonSet!890 lt!2283821 lt!2283807 lambda!310888) lt!2284011)))

(declare-fun b_lambda!216659 () Bool)

(assert (=> (not b_lambda!216659) (not d!1808622)))

(declare-fun bs!1340920 () Bool)

(assert (= bs!1340920 d!1808622))

(assert (=> bs!1340920 m!6688330))

(declare-fun m!6689166 () Bool)

(assert (=> bs!1340920 m!6689166))

(declare-fun m!6689168 () Bool)

(assert (=> bs!1340920 m!6689168))

(assert (=> bs!1340920 m!6688340))

(assert (=> b!5736282 d!1808622))

(declare-fun d!1808624 () Bool)

(assert (=> d!1808624 (= (flatMap!1358 lt!2283842 lambda!310888) (choose!43490 lt!2283842 lambda!310888))))

(declare-fun bs!1340922 () Bool)

(assert (= bs!1340922 d!1808624))

(declare-fun m!6689170 () Bool)

(assert (=> bs!1340922 m!6689170))

(assert (=> b!5736282 d!1808624))

(declare-fun bs!1340927 () Bool)

(declare-fun d!1808626 () Bool)

(assert (= bs!1340927 (and d!1808626 b!5736299)))

(declare-fun lambda!310966 () Int)

(assert (=> bs!1340927 (= lambda!310966 lambda!310890)))

(declare-fun bs!1340928 () Bool)

(assert (= bs!1340928 (and d!1808626 d!1808524)))

(assert (=> bs!1340928 (= lambda!310966 lambda!310929)))

(assert (=> d!1808626 (= (inv!82609 setElem!38497) (forall!14868 (exprs!5629 setElem!38497) lambda!310966))))

(declare-fun bs!1340929 () Bool)

(assert (= bs!1340929 d!1808626))

(declare-fun m!6689188 () Bool)

(assert (=> bs!1340929 m!6689188))

(assert (=> setNonEmpty!38497 d!1808626))

(declare-fun d!1808632 () Bool)

(assert (=> d!1808632 (= (isEmpty!35290 (t!376864 zl!343)) ((_ is Nil!63412) (t!376864 zl!343)))))

(assert (=> b!5736306 d!1808632))

(declare-fun d!1808634 () Bool)

(declare-fun c!1012458 () Bool)

(assert (=> d!1808634 (= c!1012458 (isEmpty!35292 (t!376862 s!2326)))))

(declare-fun e!3526825 () Bool)

(assert (=> d!1808634 (= (matchZipper!1883 lt!2283814 (t!376862 s!2326)) e!3526825)))

(declare-fun b!5737063 () Bool)

(assert (=> b!5737063 (= e!3526825 (nullableZipper!1683 lt!2283814))))

(declare-fun b!5737064 () Bool)

(assert (=> b!5737064 (= e!3526825 (matchZipper!1883 (derivationStepZipper!1828 lt!2283814 (head!12146 (t!376862 s!2326))) (tail!11241 (t!376862 s!2326))))))

(assert (= (and d!1808634 c!1012458) b!5737063))

(assert (= (and d!1808634 (not c!1012458)) b!5737064))

(assert (=> d!1808634 m!6689100))

(declare-fun m!6689190 () Bool)

(assert (=> b!5737063 m!6689190))

(assert (=> b!5737064 m!6689104))

(assert (=> b!5737064 m!6689104))

(declare-fun m!6689192 () Bool)

(assert (=> b!5737064 m!6689192))

(assert (=> b!5737064 m!6689108))

(assert (=> b!5737064 m!6689192))

(assert (=> b!5737064 m!6689108))

(declare-fun m!6689194 () Bool)

(assert (=> b!5737064 m!6689194))

(assert (=> b!5736285 d!1808634))

(declare-fun bs!1340931 () Bool)

(declare-fun b!5737073 () Bool)

(assert (= bs!1340931 (and b!5737073 b!5736301)))

(declare-fun lambda!310967 () Int)

(assert (=> bs!1340931 (not (= lambda!310967 lambda!310894))))

(declare-fun bs!1340932 () Bool)

(assert (= bs!1340932 (and b!5737073 b!5736652)))

(assert (=> bs!1340932 (= (and (= (reg!16074 r!7292) (reg!16074 lt!2283839)) (= r!7292 lt!2283839)) (= lambda!310967 lambda!310922))))

(declare-fun bs!1340933 () Bool)

(assert (= bs!1340933 (and b!5737073 b!5736286)))

(assert (=> bs!1340933 (not (= lambda!310967 lambda!310887))))

(declare-fun bs!1340934 () Bool)

(assert (= bs!1340934 (and b!5737073 b!5736281)))

(assert (=> bs!1340934 (not (= lambda!310967 lambda!310892))))

(declare-fun bs!1340935 () Bool)

(assert (= bs!1340935 (and b!5737073 b!5736999)))

(assert (=> bs!1340935 (= (and (= (reg!16074 r!7292) (reg!16074 lt!2283816)) (= r!7292 lt!2283816)) (= lambda!310967 lambda!310956))))

(assert (=> bs!1340931 (not (= lambda!310967 lambda!310893))))

(assert (=> bs!1340934 (not (= lambda!310967 lambda!310891))))

(declare-fun bs!1340937 () Bool)

(assert (= bs!1340937 (and b!5737073 d!1808564)))

(assert (=> bs!1340937 (not (= lambda!310967 lambda!310948))))

(declare-fun bs!1340939 () Bool)

(assert (= bs!1340939 (and b!5737073 b!5736653)))

(assert (=> bs!1340939 (not (= lambda!310967 lambda!310923))))

(declare-fun bs!1340940 () Bool)

(assert (= bs!1340940 (and b!5737073 d!1808580)))

(assert (=> bs!1340940 (not (= lambda!310967 lambda!310952))))

(declare-fun bs!1340943 () Bool)

(assert (= bs!1340943 (and b!5737073 b!5737000)))

(assert (=> bs!1340943 (not (= lambda!310967 lambda!310958))))

(assert (=> bs!1340931 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (reg!16074 r!7292) (reg!16074 (regOne!32002 r!7292))) (= r!7292 lt!2283853)) (= lambda!310967 lambda!310895))))

(assert (=> bs!1340933 (not (= lambda!310967 lambda!310886))))

(assert (=> bs!1340937 (not (= lambda!310967 lambda!310949))))

(assert (=> b!5737073 true))

(assert (=> b!5737073 true))

(declare-fun bs!1340949 () Bool)

(declare-fun b!5737074 () Bool)

(assert (= bs!1340949 (and b!5737074 b!5736301)))

(declare-fun lambda!310969 () Int)

(assert (=> bs!1340949 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!310969 lambda!310894))))

(declare-fun bs!1340951 () Bool)

(assert (= bs!1340951 (and b!5737074 b!5736652)))

(assert (=> bs!1340951 (not (= lambda!310969 lambda!310922))))

(declare-fun bs!1340953 () Bool)

(assert (= bs!1340953 (and b!5737074 b!5736286)))

(assert (=> bs!1340953 (= lambda!310969 lambda!310887)))

(declare-fun bs!1340954 () Bool)

(assert (= bs!1340954 (and b!5737074 b!5736281)))

(assert (=> bs!1340954 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!310969 lambda!310892))))

(declare-fun bs!1340956 () Bool)

(assert (= bs!1340956 (and b!5737074 b!5736999)))

(assert (=> bs!1340956 (not (= lambda!310969 lambda!310956))))

(assert (=> bs!1340954 (not (= lambda!310969 lambda!310891))))

(declare-fun bs!1340959 () Bool)

(assert (= bs!1340959 (and b!5737074 d!1808564)))

(assert (=> bs!1340959 (not (= lambda!310969 lambda!310948))))

(declare-fun bs!1340960 () Bool)

(assert (= bs!1340960 (and b!5737074 b!5736653)))

(assert (=> bs!1340960 (= (and (= (regOne!32002 r!7292) (regOne!32002 lt!2283839)) (= (regTwo!32002 r!7292) (regTwo!32002 lt!2283839))) (= lambda!310969 lambda!310923))))

(declare-fun bs!1340961 () Bool)

(assert (= bs!1340961 (and b!5737074 d!1808580)))

(assert (=> bs!1340961 (not (= lambda!310969 lambda!310952))))

(declare-fun bs!1340962 () Bool)

(assert (= bs!1340962 (and b!5737074 b!5737000)))

(assert (=> bs!1340962 (= (and (= (regOne!32002 r!7292) (regOne!32002 lt!2283816)) (= (regTwo!32002 r!7292) (regTwo!32002 lt!2283816))) (= lambda!310969 lambda!310958))))

(assert (=> bs!1340949 (not (= lambda!310969 lambda!310895))))

(assert (=> bs!1340953 (not (= lambda!310969 lambda!310886))))

(assert (=> bs!1340959 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!310969 lambda!310949))))

(declare-fun bs!1340963 () Bool)

(assert (= bs!1340963 (and b!5737074 b!5737073)))

(assert (=> bs!1340963 (not (= lambda!310969 lambda!310967))))

(assert (=> bs!1340949 (not (= lambda!310969 lambda!310893))))

(assert (=> b!5737074 true))

(assert (=> b!5737074 true))

(declare-fun b!5737065 () Bool)

(declare-fun e!3526830 () Bool)

(assert (=> b!5737065 (= e!3526830 (matchRSpec!2848 (regTwo!32003 r!7292) s!2326))))

(declare-fun b!5737067 () Bool)

(declare-fun c!1012462 () Bool)

(assert (=> b!5737067 (= c!1012462 ((_ is Union!15745) r!7292))))

(declare-fun e!3526827 () Bool)

(declare-fun e!3526829 () Bool)

(assert (=> b!5737067 (= e!3526827 e!3526829)))

(declare-fun b!5737068 () Bool)

(assert (=> b!5737068 (= e!3526829 e!3526830)))

(declare-fun res!2422914 () Bool)

(assert (=> b!5737068 (= res!2422914 (matchRSpec!2848 (regOne!32003 r!7292) s!2326))))

(assert (=> b!5737068 (=> res!2422914 e!3526830)))

(declare-fun b!5737069 () Bool)

(declare-fun e!3526826 () Bool)

(declare-fun e!3526828 () Bool)

(assert (=> b!5737069 (= e!3526826 e!3526828)))

(declare-fun res!2422915 () Bool)

(assert (=> b!5737069 (= res!2422915 (not ((_ is EmptyLang!15745) r!7292)))))

(assert (=> b!5737069 (=> (not res!2422915) (not e!3526828))))

(declare-fun bm!438560 () Bool)

(declare-fun call!438566 () Bool)

(assert (=> bm!438560 (= call!438566 (isEmpty!35292 s!2326))))

(declare-fun b!5737070 () Bool)

(declare-fun c!1012461 () Bool)

(assert (=> b!5737070 (= c!1012461 ((_ is ElementMatch!15745) r!7292))))

(assert (=> b!5737070 (= e!3526828 e!3526827)))

(declare-fun b!5737071 () Bool)

(declare-fun e!3526831 () Bool)

(assert (=> b!5737071 (= e!3526829 e!3526831)))

(declare-fun c!1012459 () Bool)

(assert (=> b!5737071 (= c!1012459 ((_ is Star!15745) r!7292))))

(declare-fun b!5737072 () Bool)

(assert (=> b!5737072 (= e!3526826 call!438566)))

(declare-fun d!1808636 () Bool)

(declare-fun c!1012460 () Bool)

(assert (=> d!1808636 (= c!1012460 ((_ is EmptyExpr!15745) r!7292))))

(assert (=> d!1808636 (= (matchRSpec!2848 r!7292 s!2326) e!3526826)))

(declare-fun b!5737066 () Bool)

(assert (=> b!5737066 (= e!3526827 (= s!2326 (Cons!63410 (c!1012253 r!7292) Nil!63410)))))

(declare-fun e!3526832 () Bool)

(declare-fun call!438565 () Bool)

(assert (=> b!5737073 (= e!3526832 call!438565)))

(assert (=> b!5737074 (= e!3526831 call!438565)))

(declare-fun bm!438561 () Bool)

(assert (=> bm!438561 (= call!438565 (Exists!2845 (ite c!1012459 lambda!310967 lambda!310969)))))

(declare-fun b!5737075 () Bool)

(declare-fun res!2422913 () Bool)

(assert (=> b!5737075 (=> res!2422913 e!3526832)))

(assert (=> b!5737075 (= res!2422913 call!438566)))

(assert (=> b!5737075 (= e!3526831 e!3526832)))

(assert (= (and d!1808636 c!1012460) b!5737072))

(assert (= (and d!1808636 (not c!1012460)) b!5737069))

(assert (= (and b!5737069 res!2422915) b!5737070))

(assert (= (and b!5737070 c!1012461) b!5737066))

(assert (= (and b!5737070 (not c!1012461)) b!5737067))

(assert (= (and b!5737067 c!1012462) b!5737068))

(assert (= (and b!5737067 (not c!1012462)) b!5737071))

(assert (= (and b!5737068 (not res!2422914)) b!5737065))

(assert (= (and b!5737071 c!1012459) b!5737075))

(assert (= (and b!5737071 (not c!1012459)) b!5737074))

(assert (= (and b!5737075 (not res!2422913)) b!5737073))

(assert (= (or b!5737073 b!5737074) bm!438561))

(assert (= (or b!5737072 b!5737075) bm!438560))

(declare-fun m!6689220 () Bool)

(assert (=> b!5737065 m!6689220))

(declare-fun m!6689222 () Bool)

(assert (=> b!5737068 m!6689222))

(assert (=> bm!438560 m!6688722))

(declare-fun m!6689224 () Bool)

(assert (=> bm!438561 m!6689224))

(assert (=> b!5736304 d!1808636))

(declare-fun b!5737088 () Bool)

(declare-fun res!2422925 () Bool)

(declare-fun e!3526842 () Bool)

(assert (=> b!5737088 (=> (not res!2422925) (not e!3526842))))

(assert (=> b!5737088 (= res!2422925 (isEmpty!35292 (tail!11241 s!2326)))))

(declare-fun b!5737089 () Bool)

(declare-fun e!3526841 () Bool)

(declare-fun e!3526844 () Bool)

(assert (=> b!5737089 (= e!3526841 e!3526844)))

(declare-fun c!1012469 () Bool)

(assert (=> b!5737089 (= c!1012469 ((_ is EmptyLang!15745) r!7292))))

(declare-fun b!5737090 () Bool)

(declare-fun e!3526845 () Bool)

(declare-fun e!3526843 () Bool)

(assert (=> b!5737090 (= e!3526845 e!3526843)))

(declare-fun res!2422926 () Bool)

(assert (=> b!5737090 (=> (not res!2422926) (not e!3526843))))

(declare-fun lt!2284017 () Bool)

(assert (=> b!5737090 (= res!2422926 (not lt!2284017))))

(declare-fun b!5737091 () Bool)

(declare-fun e!3526846 () Bool)

(assert (=> b!5737091 (= e!3526846 (nullable!5777 r!7292))))

(declare-fun b!5737092 () Bool)

(declare-fun e!3526840 () Bool)

(assert (=> b!5737092 (= e!3526840 (not (= (head!12146 s!2326) (c!1012253 r!7292))))))

(declare-fun b!5737093 () Bool)

(declare-fun res!2422923 () Bool)

(assert (=> b!5737093 (=> (not res!2422923) (not e!3526842))))

(declare-fun call!438569 () Bool)

(assert (=> b!5737093 (= res!2422923 (not call!438569))))

(declare-fun b!5737094 () Bool)

(declare-fun res!2422924 () Bool)

(assert (=> b!5737094 (=> res!2422924 e!3526845)))

(assert (=> b!5737094 (= res!2422924 (not ((_ is ElementMatch!15745) r!7292)))))

(assert (=> b!5737094 (= e!3526844 e!3526845)))

(declare-fun bm!438564 () Bool)

(assert (=> bm!438564 (= call!438569 (isEmpty!35292 s!2326))))

(declare-fun b!5737095 () Bool)

(assert (=> b!5737095 (= e!3526846 (matchR!7930 (derivativeStep!4536 r!7292 (head!12146 s!2326)) (tail!11241 s!2326)))))

(declare-fun b!5737096 () Bool)

(assert (=> b!5737096 (= e!3526842 (= (head!12146 s!2326) (c!1012253 r!7292)))))

(declare-fun b!5737097 () Bool)

(declare-fun res!2422922 () Bool)

(assert (=> b!5737097 (=> res!2422922 e!3526845)))

(assert (=> b!5737097 (= res!2422922 e!3526842)))

(declare-fun res!2422919 () Bool)

(assert (=> b!5737097 (=> (not res!2422919) (not e!3526842))))

(assert (=> b!5737097 (= res!2422919 lt!2284017)))

(declare-fun b!5737098 () Bool)

(assert (=> b!5737098 (= e!3526841 (= lt!2284017 call!438569))))

(declare-fun d!1808642 () Bool)

(assert (=> d!1808642 e!3526841))

(declare-fun c!1012468 () Bool)

(assert (=> d!1808642 (= c!1012468 ((_ is EmptyExpr!15745) r!7292))))

(assert (=> d!1808642 (= lt!2284017 e!3526846)))

(declare-fun c!1012467 () Bool)

(assert (=> d!1808642 (= c!1012467 (isEmpty!35292 s!2326))))

(assert (=> d!1808642 (validRegex!7481 r!7292)))

(assert (=> d!1808642 (= (matchR!7930 r!7292 s!2326) lt!2284017)))

(declare-fun b!5737087 () Bool)

(assert (=> b!5737087 (= e!3526844 (not lt!2284017))))

(declare-fun b!5737099 () Bool)

(declare-fun res!2422921 () Bool)

(assert (=> b!5737099 (=> res!2422921 e!3526840)))

(assert (=> b!5737099 (= res!2422921 (not (isEmpty!35292 (tail!11241 s!2326))))))

(declare-fun b!5737100 () Bool)

(assert (=> b!5737100 (= e!3526843 e!3526840)))

(declare-fun res!2422920 () Bool)

(assert (=> b!5737100 (=> res!2422920 e!3526840)))

(assert (=> b!5737100 (= res!2422920 call!438569)))

(assert (= (and d!1808642 c!1012467) b!5737091))

(assert (= (and d!1808642 (not c!1012467)) b!5737095))

(assert (= (and d!1808642 c!1012468) b!5737098))

(assert (= (and d!1808642 (not c!1012468)) b!5737089))

(assert (= (and b!5737089 c!1012469) b!5737087))

(assert (= (and b!5737089 (not c!1012469)) b!5737094))

(assert (= (and b!5737094 (not res!2422924)) b!5737097))

(assert (= (and b!5737097 res!2422919) b!5737093))

(assert (= (and b!5737093 res!2422923) b!5737088))

(assert (= (and b!5737088 res!2422925) b!5737096))

(assert (= (and b!5737097 (not res!2422922)) b!5737090))

(assert (= (and b!5737090 res!2422926) b!5737100))

(assert (= (and b!5737100 (not res!2422920)) b!5737099))

(assert (= (and b!5737099 (not res!2422921)) b!5737092))

(assert (= (or b!5737098 b!5737093 b!5737100) bm!438564))

(declare-fun m!6689226 () Bool)

(assert (=> b!5737091 m!6689226))

(assert (=> b!5737092 m!6688766))

(assert (=> b!5737095 m!6688766))

(assert (=> b!5737095 m!6688766))

(declare-fun m!6689228 () Bool)

(assert (=> b!5737095 m!6689228))

(assert (=> b!5737095 m!6688770))

(assert (=> b!5737095 m!6689228))

(assert (=> b!5737095 m!6688770))

(declare-fun m!6689230 () Bool)

(assert (=> b!5737095 m!6689230))

(assert (=> b!5737096 m!6688766))

(assert (=> b!5737088 m!6688770))

(assert (=> b!5737088 m!6688770))

(assert (=> b!5737088 m!6688774))

(assert (=> d!1808642 m!6688722))

(assert (=> d!1808642 m!6688352))

(assert (=> b!5737099 m!6688770))

(assert (=> b!5737099 m!6688770))

(assert (=> b!5737099 m!6688774))

(assert (=> bm!438564 m!6688722))

(assert (=> b!5736304 d!1808642))

(declare-fun d!1808644 () Bool)

(assert (=> d!1808644 (= (matchR!7930 r!7292 s!2326) (matchRSpec!2848 r!7292 s!2326))))

(declare-fun lt!2284018 () Unit!156512)

(assert (=> d!1808644 (= lt!2284018 (choose!43471 r!7292 s!2326))))

(assert (=> d!1808644 (validRegex!7481 r!7292)))

(assert (=> d!1808644 (= (mainMatchTheorem!2848 r!7292 s!2326) lt!2284018)))

(declare-fun bs!1340978 () Bool)

(assert (= bs!1340978 d!1808644))

(assert (=> bs!1340978 m!6688426))

(assert (=> bs!1340978 m!6688424))

(declare-fun m!6689232 () Bool)

(assert (=> bs!1340978 m!6689232))

(assert (=> bs!1340978 m!6688352))

(assert (=> b!5736304 d!1808644))

(declare-fun d!1808646 () Bool)

(declare-fun c!1012470 () Bool)

(assert (=> d!1808646 (= c!1012470 (isEmpty!35292 (_1!36145 lt!2283852)))))

(declare-fun e!3526847 () Bool)

(assert (=> d!1808646 (= (matchZipper!1883 lt!2283821 (_1!36145 lt!2283852)) e!3526847)))

(declare-fun b!5737101 () Bool)

(assert (=> b!5737101 (= e!3526847 (nullableZipper!1683 lt!2283821))))

(declare-fun b!5737102 () Bool)

(assert (=> b!5737102 (= e!3526847 (matchZipper!1883 (derivationStepZipper!1828 lt!2283821 (head!12146 (_1!36145 lt!2283852))) (tail!11241 (_1!36145 lt!2283852))))))

(assert (= (and d!1808646 c!1012470) b!5737101))

(assert (= (and d!1808646 (not c!1012470)) b!5737102))

(assert (=> d!1808646 m!6688904))

(declare-fun m!6689234 () Bool)

(assert (=> b!5737101 m!6689234))

(assert (=> b!5737102 m!6688894))

(assert (=> b!5737102 m!6688894))

(declare-fun m!6689236 () Bool)

(assert (=> b!5737102 m!6689236))

(assert (=> b!5737102 m!6688898))

(assert (=> b!5737102 m!6689236))

(assert (=> b!5737102 m!6688898))

(declare-fun m!6689238 () Bool)

(assert (=> b!5737102 m!6689238))

(assert (=> b!5736284 d!1808646))

(declare-fun d!1808648 () Bool)

(declare-fun nullableFct!1829 (Regex!15745) Bool)

(assert (=> d!1808648 (= (nullable!5777 (regOne!32002 (regOne!32002 r!7292))) (nullableFct!1829 (regOne!32002 (regOne!32002 r!7292))))))

(declare-fun bs!1340980 () Bool)

(assert (= bs!1340980 d!1808648))

(declare-fun m!6689246 () Bool)

(assert (=> bs!1340980 m!6689246))

(assert (=> b!5736305 d!1808648))

(declare-fun d!1808652 () Bool)

(declare-fun c!1012471 () Bool)

(assert (=> d!1808652 (= c!1012471 (isEmpty!35292 (t!376862 s!2326)))))

(declare-fun e!3526848 () Bool)

(assert (=> d!1808652 (= (matchZipper!1883 lt!2283825 (t!376862 s!2326)) e!3526848)))

(declare-fun b!5737103 () Bool)

(assert (=> b!5737103 (= e!3526848 (nullableZipper!1683 lt!2283825))))

(declare-fun b!5737104 () Bool)

(assert (=> b!5737104 (= e!3526848 (matchZipper!1883 (derivationStepZipper!1828 lt!2283825 (head!12146 (t!376862 s!2326))) (tail!11241 (t!376862 s!2326))))))

(assert (= (and d!1808652 c!1012471) b!5737103))

(assert (= (and d!1808652 (not c!1012471)) b!5737104))

(assert (=> d!1808652 m!6689100))

(declare-fun m!6689252 () Bool)

(assert (=> b!5737103 m!6689252))

(assert (=> b!5737104 m!6689104))

(assert (=> b!5737104 m!6689104))

(declare-fun m!6689254 () Bool)

(assert (=> b!5737104 m!6689254))

(assert (=> b!5737104 m!6689108))

(assert (=> b!5737104 m!6689254))

(assert (=> b!5737104 m!6689108))

(declare-fun m!6689256 () Bool)

(assert (=> b!5737104 m!6689256))

(assert (=> b!5736277 d!1808652))

(declare-fun d!1808660 () Bool)

(declare-fun lt!2284020 () Regex!15745)

(assert (=> d!1808660 (validRegex!7481 lt!2284020)))

(assert (=> d!1808660 (= lt!2284020 (generalisedUnion!1608 (unfocusZipperList!1173 (Cons!63412 lt!2283796 Nil!63412))))))

(assert (=> d!1808660 (= (unfocusZipper!1487 (Cons!63412 lt!2283796 Nil!63412)) lt!2284020)))

(declare-fun bs!1340983 () Bool)

(assert (= bs!1340983 d!1808660))

(declare-fun m!6689258 () Bool)

(assert (=> bs!1340983 m!6689258))

(declare-fun m!6689260 () Bool)

(assert (=> bs!1340983 m!6689260))

(assert (=> bs!1340983 m!6689260))

(declare-fun m!6689262 () Bool)

(assert (=> bs!1340983 m!6689262))

(assert (=> b!5736278 d!1808660))

(declare-fun b!5737120 () Bool)

(declare-fun res!2422941 () Bool)

(declare-fun e!3526858 () Bool)

(assert (=> b!5737120 (=> (not res!2422941) (not e!3526858))))

(assert (=> b!5737120 (= res!2422941 (isEmpty!35292 (tail!11241 (_2!36145 lt!2283847))))))

(declare-fun b!5737121 () Bool)

(declare-fun e!3526857 () Bool)

(declare-fun e!3526860 () Bool)

(assert (=> b!5737121 (= e!3526857 e!3526860)))

(declare-fun c!1012477 () Bool)

(assert (=> b!5737121 (= c!1012477 ((_ is EmptyLang!15745) (regTwo!32002 r!7292)))))

(declare-fun b!5737122 () Bool)

(declare-fun e!3526861 () Bool)

(declare-fun e!3526859 () Bool)

(assert (=> b!5737122 (= e!3526861 e!3526859)))

(declare-fun res!2422942 () Bool)

(assert (=> b!5737122 (=> (not res!2422942) (not e!3526859))))

(declare-fun lt!2284021 () Bool)

(assert (=> b!5737122 (= res!2422942 (not lt!2284021))))

(declare-fun b!5737123 () Bool)

(declare-fun e!3526862 () Bool)

(assert (=> b!5737123 (= e!3526862 (nullable!5777 (regTwo!32002 r!7292)))))

(declare-fun b!5737124 () Bool)

(declare-fun e!3526856 () Bool)

(assert (=> b!5737124 (= e!3526856 (not (= (head!12146 (_2!36145 lt!2283847)) (c!1012253 (regTwo!32002 r!7292)))))))

(declare-fun b!5737125 () Bool)

(declare-fun res!2422939 () Bool)

(assert (=> b!5737125 (=> (not res!2422939) (not e!3526858))))

(declare-fun call!438571 () Bool)

(assert (=> b!5737125 (= res!2422939 (not call!438571))))

(declare-fun b!5737126 () Bool)

(declare-fun res!2422940 () Bool)

(assert (=> b!5737126 (=> res!2422940 e!3526861)))

(assert (=> b!5737126 (= res!2422940 (not ((_ is ElementMatch!15745) (regTwo!32002 r!7292))))))

(assert (=> b!5737126 (= e!3526860 e!3526861)))

(declare-fun bm!438566 () Bool)

(assert (=> bm!438566 (= call!438571 (isEmpty!35292 (_2!36145 lt!2283847)))))

(declare-fun b!5737127 () Bool)

(assert (=> b!5737127 (= e!3526862 (matchR!7930 (derivativeStep!4536 (regTwo!32002 r!7292) (head!12146 (_2!36145 lt!2283847))) (tail!11241 (_2!36145 lt!2283847))))))

(declare-fun b!5737128 () Bool)

(assert (=> b!5737128 (= e!3526858 (= (head!12146 (_2!36145 lt!2283847)) (c!1012253 (regTwo!32002 r!7292))))))

(declare-fun b!5737129 () Bool)

(declare-fun res!2422938 () Bool)

(assert (=> b!5737129 (=> res!2422938 e!3526861)))

(assert (=> b!5737129 (= res!2422938 e!3526858)))

(declare-fun res!2422935 () Bool)

(assert (=> b!5737129 (=> (not res!2422935) (not e!3526858))))

(assert (=> b!5737129 (= res!2422935 lt!2284021)))

(declare-fun b!5737130 () Bool)

(assert (=> b!5737130 (= e!3526857 (= lt!2284021 call!438571))))

(declare-fun d!1808662 () Bool)

(assert (=> d!1808662 e!3526857))

(declare-fun c!1012476 () Bool)

(assert (=> d!1808662 (= c!1012476 ((_ is EmptyExpr!15745) (regTwo!32002 r!7292)))))

(assert (=> d!1808662 (= lt!2284021 e!3526862)))

(declare-fun c!1012475 () Bool)

(assert (=> d!1808662 (= c!1012475 (isEmpty!35292 (_2!36145 lt!2283847)))))

(assert (=> d!1808662 (validRegex!7481 (regTwo!32002 r!7292))))

(assert (=> d!1808662 (= (matchR!7930 (regTwo!32002 r!7292) (_2!36145 lt!2283847)) lt!2284021)))

(declare-fun b!5737119 () Bool)

(assert (=> b!5737119 (= e!3526860 (not lt!2284021))))

(declare-fun b!5737131 () Bool)

(declare-fun res!2422937 () Bool)

(assert (=> b!5737131 (=> res!2422937 e!3526856)))

(assert (=> b!5737131 (= res!2422937 (not (isEmpty!35292 (tail!11241 (_2!36145 lt!2283847)))))))

(declare-fun b!5737132 () Bool)

(assert (=> b!5737132 (= e!3526859 e!3526856)))

(declare-fun res!2422936 () Bool)

(assert (=> b!5737132 (=> res!2422936 e!3526856)))

(assert (=> b!5737132 (= res!2422936 call!438571)))

(assert (= (and d!1808662 c!1012475) b!5737123))

(assert (= (and d!1808662 (not c!1012475)) b!5737127))

(assert (= (and d!1808662 c!1012476) b!5737130))

(assert (= (and d!1808662 (not c!1012476)) b!5737121))

(assert (= (and b!5737121 c!1012477) b!5737119))

(assert (= (and b!5737121 (not c!1012477)) b!5737126))

(assert (= (and b!5737126 (not res!2422940)) b!5737129))

(assert (= (and b!5737129 res!2422935) b!5737125))

(assert (= (and b!5737125 res!2422939) b!5737120))

(assert (= (and b!5737120 res!2422941) b!5737128))

(assert (= (and b!5737129 (not res!2422938)) b!5737122))

(assert (= (and b!5737122 res!2422942) b!5737132))

(assert (= (and b!5737132 (not res!2422936)) b!5737131))

(assert (= (and b!5737131 (not res!2422937)) b!5737124))

(assert (= (or b!5737130 b!5737125 b!5737132) bm!438566))

(declare-fun m!6689274 () Bool)

(assert (=> b!5737123 m!6689274))

(declare-fun m!6689276 () Bool)

(assert (=> b!5737124 m!6689276))

(assert (=> b!5737127 m!6689276))

(assert (=> b!5737127 m!6689276))

(declare-fun m!6689280 () Bool)

(assert (=> b!5737127 m!6689280))

(declare-fun m!6689282 () Bool)

(assert (=> b!5737127 m!6689282))

(assert (=> b!5737127 m!6689280))

(assert (=> b!5737127 m!6689282))

(declare-fun m!6689284 () Bool)

(assert (=> b!5737127 m!6689284))

(assert (=> b!5737128 m!6689276))

(assert (=> b!5737120 m!6689282))

(assert (=> b!5737120 m!6689282))

(declare-fun m!6689286 () Bool)

(assert (=> b!5737120 m!6689286))

(declare-fun m!6689288 () Bool)

(assert (=> d!1808662 m!6689288))

(assert (=> d!1808662 m!6688916))

(assert (=> b!5737131 m!6689282))

(assert (=> b!5737131 m!6689282))

(assert (=> b!5737131 m!6689286))

(assert (=> bm!438566 m!6689288))

(assert (=> b!5736296 d!1808662))

(declare-fun b!5737134 () Bool)

(declare-fun res!2422949 () Bool)

(declare-fun e!3526865 () Bool)

(assert (=> b!5737134 (=> (not res!2422949) (not e!3526865))))

(assert (=> b!5737134 (= res!2422949 (isEmpty!35292 (tail!11241 lt!2283851)))))

(declare-fun b!5737135 () Bool)

(declare-fun e!3526864 () Bool)

(declare-fun e!3526867 () Bool)

(assert (=> b!5737135 (= e!3526864 e!3526867)))

(declare-fun c!1012480 () Bool)

(assert (=> b!5737135 (= c!1012480 ((_ is EmptyLang!15745) lt!2283853))))

(declare-fun b!5737136 () Bool)

(declare-fun e!3526868 () Bool)

(declare-fun e!3526866 () Bool)

(assert (=> b!5737136 (= e!3526868 e!3526866)))

(declare-fun res!2422950 () Bool)

(assert (=> b!5737136 (=> (not res!2422950) (not e!3526866))))

(declare-fun lt!2284022 () Bool)

(assert (=> b!5737136 (= res!2422950 (not lt!2284022))))

(declare-fun b!5737137 () Bool)

(declare-fun e!3526869 () Bool)

(assert (=> b!5737137 (= e!3526869 (nullable!5777 lt!2283853))))

(declare-fun b!5737138 () Bool)

(declare-fun e!3526863 () Bool)

(assert (=> b!5737138 (= e!3526863 (not (= (head!12146 lt!2283851) (c!1012253 lt!2283853))))))

(declare-fun b!5737139 () Bool)

(declare-fun res!2422947 () Bool)

(assert (=> b!5737139 (=> (not res!2422947) (not e!3526865))))

(declare-fun call!438572 () Bool)

(assert (=> b!5737139 (= res!2422947 (not call!438572))))

(declare-fun b!5737140 () Bool)

(declare-fun res!2422948 () Bool)

(assert (=> b!5737140 (=> res!2422948 e!3526868)))

(assert (=> b!5737140 (= res!2422948 (not ((_ is ElementMatch!15745) lt!2283853)))))

(assert (=> b!5737140 (= e!3526867 e!3526868)))

(declare-fun bm!438567 () Bool)

(assert (=> bm!438567 (= call!438572 (isEmpty!35292 lt!2283851))))

(declare-fun b!5737141 () Bool)

(assert (=> b!5737141 (= e!3526869 (matchR!7930 (derivativeStep!4536 lt!2283853 (head!12146 lt!2283851)) (tail!11241 lt!2283851)))))

(declare-fun b!5737142 () Bool)

(assert (=> b!5737142 (= e!3526865 (= (head!12146 lt!2283851) (c!1012253 lt!2283853)))))

(declare-fun b!5737143 () Bool)

(declare-fun res!2422946 () Bool)

(assert (=> b!5737143 (=> res!2422946 e!3526868)))

(assert (=> b!5737143 (= res!2422946 e!3526865)))

(declare-fun res!2422943 () Bool)

(assert (=> b!5737143 (=> (not res!2422943) (not e!3526865))))

(assert (=> b!5737143 (= res!2422943 lt!2284022)))

(declare-fun b!5737144 () Bool)

(assert (=> b!5737144 (= e!3526864 (= lt!2284022 call!438572))))

(declare-fun d!1808666 () Bool)

(assert (=> d!1808666 e!3526864))

(declare-fun c!1012479 () Bool)

(assert (=> d!1808666 (= c!1012479 ((_ is EmptyExpr!15745) lt!2283853))))

(assert (=> d!1808666 (= lt!2284022 e!3526869)))

(declare-fun c!1012478 () Bool)

(assert (=> d!1808666 (= c!1012478 (isEmpty!35292 lt!2283851))))

(assert (=> d!1808666 (validRegex!7481 lt!2283853)))

(assert (=> d!1808666 (= (matchR!7930 lt!2283853 lt!2283851) lt!2284022)))

(declare-fun b!5737133 () Bool)

(assert (=> b!5737133 (= e!3526867 (not lt!2284022))))

(declare-fun b!5737145 () Bool)

(declare-fun res!2422945 () Bool)

(assert (=> b!5737145 (=> res!2422945 e!3526863)))

(assert (=> b!5737145 (= res!2422945 (not (isEmpty!35292 (tail!11241 lt!2283851))))))

(declare-fun b!5737146 () Bool)

(assert (=> b!5737146 (= e!3526866 e!3526863)))

(declare-fun res!2422944 () Bool)

(assert (=> b!5737146 (=> res!2422944 e!3526863)))

(assert (=> b!5737146 (= res!2422944 call!438572)))

(assert (= (and d!1808666 c!1012478) b!5737137))

(assert (= (and d!1808666 (not c!1012478)) b!5737141))

(assert (= (and d!1808666 c!1012479) b!5737144))

(assert (= (and d!1808666 (not c!1012479)) b!5737135))

(assert (= (and b!5737135 c!1012480) b!5737133))

(assert (= (and b!5737135 (not c!1012480)) b!5737140))

(assert (= (and b!5737140 (not res!2422948)) b!5737143))

(assert (= (and b!5737143 res!2422943) b!5737139))

(assert (= (and b!5737139 res!2422947) b!5737134))

(assert (= (and b!5737134 res!2422949) b!5737142))

(assert (= (and b!5737143 (not res!2422946)) b!5737136))

(assert (= (and b!5737136 res!2422950) b!5737146))

(assert (= (and b!5737146 (not res!2422944)) b!5737145))

(assert (= (and b!5737145 (not res!2422945)) b!5737138))

(assert (= (or b!5737144 b!5737139 b!5737146) bm!438567))

(declare-fun m!6689290 () Bool)

(assert (=> b!5737137 m!6689290))

(declare-fun m!6689292 () Bool)

(assert (=> b!5737138 m!6689292))

(assert (=> b!5737141 m!6689292))

(assert (=> b!5737141 m!6689292))

(declare-fun m!6689294 () Bool)

(assert (=> b!5737141 m!6689294))

(declare-fun m!6689296 () Bool)

(assert (=> b!5737141 m!6689296))

(assert (=> b!5737141 m!6689294))

(assert (=> b!5737141 m!6689296))

(declare-fun m!6689298 () Bool)

(assert (=> b!5737141 m!6689298))

(assert (=> b!5737142 m!6689292))

(assert (=> b!5737134 m!6689296))

(assert (=> b!5737134 m!6689296))

(declare-fun m!6689300 () Bool)

(assert (=> b!5737134 m!6689300))

(declare-fun m!6689302 () Bool)

(assert (=> d!1808666 m!6689302))

(assert (=> d!1808666 m!6688914))

(assert (=> b!5737145 m!6689296))

(assert (=> b!5737145 m!6689296))

(assert (=> b!5737145 m!6689300))

(assert (=> bm!438567 m!6689302))

(assert (=> b!5736296 d!1808666))

(declare-fun d!1808668 () Bool)

(assert (=> d!1808668 (matchR!7930 (Star!15745 (reg!16074 (regOne!32002 r!7292))) (++!13962 (_1!36145 lt!2283811) (_2!36145 lt!2283811)))))

(declare-fun lt!2284025 () Unit!156512)

(declare-fun choose!43493 (Regex!15745 List!63534 List!63534) Unit!156512)

(assert (=> d!1808668 (= lt!2284025 (choose!43493 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283811) (_2!36145 lt!2283811)))))

(assert (=> d!1808668 (validRegex!7481 (Star!15745 (reg!16074 (regOne!32002 r!7292))))))

(assert (=> d!1808668 (= (lemmaStarApp!96 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283811) (_2!36145 lt!2283811)) lt!2284025)))

(declare-fun bs!1340984 () Bool)

(assert (= bs!1340984 d!1808668))

(assert (=> bs!1340984 m!6688362))

(assert (=> bs!1340984 m!6688362))

(declare-fun m!6689304 () Bool)

(assert (=> bs!1340984 m!6689304))

(declare-fun m!6689306 () Bool)

(assert (=> bs!1340984 m!6689306))

(declare-fun m!6689308 () Bool)

(assert (=> bs!1340984 m!6689308))

(assert (=> b!5736296 d!1808668))

(declare-fun d!1808670 () Bool)

(assert (=> d!1808670 (= (isEmpty!35289 (t!376863 (exprs!5629 (h!69860 zl!343)))) ((_ is Nil!63411) (t!376863 (exprs!5629 (h!69860 zl!343)))))))

(assert (=> b!5736297 d!1808670))

(declare-fun d!1808672 () Bool)

(assert (=> d!1808672 (= (get!21873 lt!2283841) (v!51808 lt!2283841))))

(assert (=> b!5736280 d!1808672))

(declare-fun d!1808674 () Bool)

(assert (=> d!1808674 (= (isDefined!12457 lt!2283841) (not (isEmpty!35293 lt!2283841)))))

(declare-fun bs!1340985 () Bool)

(assert (= bs!1340985 d!1808674))

(declare-fun m!6689310 () Bool)

(assert (=> bs!1340985 m!6689310))

(assert (=> b!5736280 d!1808674))

(declare-fun d!1808676 () Bool)

(declare-fun e!3526897 () Bool)

(assert (=> d!1808676 e!3526897))

(declare-fun res!2422970 () Bool)

(assert (=> d!1808676 (=> (not res!2422970) (not e!3526897))))

(declare-fun lt!2284028 () List!63534)

(declare-fun content!11556 (List!63534) (InoxSet C!31760))

(assert (=> d!1808676 (= res!2422970 (= (content!11556 lt!2284028) ((_ map or) (content!11556 (_1!36145 lt!2283852)) (content!11556 (_2!36145 lt!2283852)))))))

(declare-fun e!3526896 () List!63534)

(assert (=> d!1808676 (= lt!2284028 e!3526896)))

(declare-fun c!1012490 () Bool)

(assert (=> d!1808676 (= c!1012490 ((_ is Nil!63410) (_1!36145 lt!2283852)))))

(assert (=> d!1808676 (= (++!13962 (_1!36145 lt!2283852) (_2!36145 lt!2283852)) lt!2284028)))

(declare-fun b!5737187 () Bool)

(assert (=> b!5737187 (= e!3526897 (or (not (= (_2!36145 lt!2283852) Nil!63410)) (= lt!2284028 (_1!36145 lt!2283852))))))

(declare-fun b!5737185 () Bool)

(assert (=> b!5737185 (= e!3526896 (Cons!63410 (h!69858 (_1!36145 lt!2283852)) (++!13962 (t!376862 (_1!36145 lt!2283852)) (_2!36145 lt!2283852))))))

(declare-fun b!5737184 () Bool)

(assert (=> b!5737184 (= e!3526896 (_2!36145 lt!2283852))))

(declare-fun b!5737186 () Bool)

(declare-fun res!2422971 () Bool)

(assert (=> b!5737186 (=> (not res!2422971) (not e!3526897))))

(declare-fun size!40060 (List!63534) Int)

(assert (=> b!5737186 (= res!2422971 (= (size!40060 lt!2284028) (+ (size!40060 (_1!36145 lt!2283852)) (size!40060 (_2!36145 lt!2283852)))))))

(assert (= (and d!1808676 c!1012490) b!5737184))

(assert (= (and d!1808676 (not c!1012490)) b!5737185))

(assert (= (and d!1808676 res!2422970) b!5737186))

(assert (= (and b!5737186 res!2422971) b!5737187))

(declare-fun m!6689326 () Bool)

(assert (=> d!1808676 m!6689326))

(declare-fun m!6689328 () Bool)

(assert (=> d!1808676 m!6689328))

(declare-fun m!6689330 () Bool)

(assert (=> d!1808676 m!6689330))

(declare-fun m!6689332 () Bool)

(assert (=> b!5737185 m!6689332))

(declare-fun m!6689334 () Bool)

(assert (=> b!5737186 m!6689334))

(declare-fun m!6689336 () Bool)

(assert (=> b!5737186 m!6689336))

(declare-fun m!6689338 () Bool)

(assert (=> b!5737186 m!6689338))

(assert (=> b!5736280 d!1808676))

(declare-fun b!5737243 () Bool)

(declare-fun e!3526929 () Bool)

(assert (=> b!5737243 (= e!3526929 (matchZipper!1883 lt!2283842 s!2326))))

(declare-fun b!5737244 () Bool)

(declare-fun e!3526932 () Bool)

(declare-fun lt!2284045 () Option!15754)

(assert (=> b!5737244 (= e!3526932 (not (isDefined!12457 lt!2284045)))))

(declare-fun b!5737245 () Bool)

(declare-fun e!3526928 () Option!15754)

(declare-fun e!3526930 () Option!15754)

(assert (=> b!5737245 (= e!3526928 e!3526930)))

(declare-fun c!1012503 () Bool)

(assert (=> b!5737245 (= c!1012503 ((_ is Nil!63410) s!2326))))

(declare-fun b!5737246 () Bool)

(assert (=> b!5737246 (= e!3526930 None!15753)))

(declare-fun b!5737247 () Bool)

(declare-fun res!2423005 () Bool)

(declare-fun e!3526931 () Bool)

(assert (=> b!5737247 (=> (not res!2423005) (not e!3526931))))

(assert (=> b!5737247 (= res!2423005 (matchZipper!1883 lt!2283821 (_1!36145 (get!21873 lt!2284045))))))

(declare-fun b!5737248 () Bool)

(assert (=> b!5737248 (= e!3526931 (= (++!13962 (_1!36145 (get!21873 lt!2284045)) (_2!36145 (get!21873 lt!2284045))) s!2326))))

(declare-fun d!1808684 () Bool)

(assert (=> d!1808684 e!3526932))

(declare-fun res!2423004 () Bool)

(assert (=> d!1808684 (=> res!2423004 e!3526932)))

(assert (=> d!1808684 (= res!2423004 e!3526931)))

(declare-fun res!2423007 () Bool)

(assert (=> d!1808684 (=> (not res!2423007) (not e!3526931))))

(assert (=> d!1808684 (= res!2423007 (isDefined!12457 lt!2284045))))

(assert (=> d!1808684 (= lt!2284045 e!3526928)))

(declare-fun c!1012504 () Bool)

(assert (=> d!1808684 (= c!1012504 e!3526929)))

(declare-fun res!2423006 () Bool)

(assert (=> d!1808684 (=> (not res!2423006) (not e!3526929))))

(assert (=> d!1808684 (= res!2423006 (matchZipper!1883 lt!2283821 Nil!63410))))

(assert (=> d!1808684 (= (++!13962 Nil!63410 s!2326) s!2326)))

(assert (=> d!1808684 (= (findConcatSeparationZippers!132 lt!2283821 lt!2283842 Nil!63410 s!2326 s!2326) lt!2284045)))

(declare-fun b!5737249 () Bool)

(assert (=> b!5737249 (= e!3526928 (Some!15753 (tuple2!65685 Nil!63410 s!2326)))))

(declare-fun b!5737250 () Bool)

(declare-fun lt!2284044 () Unit!156512)

(declare-fun lt!2284046 () Unit!156512)

(assert (=> b!5737250 (= lt!2284044 lt!2284046)))

(assert (=> b!5737250 (= (++!13962 (++!13962 Nil!63410 (Cons!63410 (h!69858 s!2326) Nil!63410)) (t!376862 s!2326)) s!2326)))

(assert (=> b!5737250 (= lt!2284046 (lemmaMoveElementToOtherListKeepsConcatEq!2085 Nil!63410 (h!69858 s!2326) (t!376862 s!2326) s!2326))))

(assert (=> b!5737250 (= e!3526930 (findConcatSeparationZippers!132 lt!2283821 lt!2283842 (++!13962 Nil!63410 (Cons!63410 (h!69858 s!2326) Nil!63410)) (t!376862 s!2326) s!2326))))

(declare-fun b!5737251 () Bool)

(declare-fun res!2423003 () Bool)

(assert (=> b!5737251 (=> (not res!2423003) (not e!3526931))))

(assert (=> b!5737251 (= res!2423003 (matchZipper!1883 lt!2283842 (_2!36145 (get!21873 lt!2284045))))))

(assert (= (and d!1808684 res!2423006) b!5737243))

(assert (= (and d!1808684 c!1012504) b!5737249))

(assert (= (and d!1808684 (not c!1012504)) b!5737245))

(assert (= (and b!5737245 c!1012503) b!5737246))

(assert (= (and b!5737245 (not c!1012503)) b!5737250))

(assert (= (and d!1808684 res!2423007) b!5737247))

(assert (= (and b!5737247 res!2423005) b!5737251))

(assert (= (and b!5737251 res!2423003) b!5737248))

(assert (= (and d!1808684 (not res!2423004)) b!5737244))

(declare-fun m!6689394 () Bool)

(assert (=> b!5737251 m!6689394))

(declare-fun m!6689396 () Bool)

(assert (=> b!5737251 m!6689396))

(assert (=> b!5737250 m!6688952))

(assert (=> b!5737250 m!6688952))

(assert (=> b!5737250 m!6688954))

(assert (=> b!5737250 m!6688956))

(assert (=> b!5737250 m!6688952))

(declare-fun m!6689398 () Bool)

(assert (=> b!5737250 m!6689398))

(declare-fun m!6689400 () Bool)

(assert (=> b!5737243 m!6689400))

(declare-fun m!6689402 () Bool)

(assert (=> d!1808684 m!6689402))

(declare-fun m!6689404 () Bool)

(assert (=> d!1808684 m!6689404))

(declare-fun m!6689406 () Bool)

(assert (=> d!1808684 m!6689406))

(assert (=> b!5737248 m!6689394))

(declare-fun m!6689408 () Bool)

(assert (=> b!5737248 m!6689408))

(assert (=> b!5737244 m!6689402))

(assert (=> b!5737247 m!6689394))

(declare-fun m!6689410 () Bool)

(assert (=> b!5737247 m!6689410))

(assert (=> b!5736280 d!1808684))

(declare-fun d!1808702 () Bool)

(assert (=> d!1808702 (isDefined!12457 (findConcatSeparationZippers!132 lt!2283821 (store ((as const (Array Context!10258 Bool)) false) lt!2283815 true) Nil!63410 s!2326 s!2326))))

(declare-fun lt!2284055 () Unit!156512)

(declare-fun choose!43494 ((InoxSet Context!10258) Context!10258 List!63534) Unit!156512)

(assert (=> d!1808702 (= lt!2284055 (choose!43494 lt!2283821 lt!2283815 s!2326))))

(assert (=> d!1808702 (matchZipper!1883 (appendTo!124 lt!2283821 lt!2283815) s!2326)))

(assert (=> d!1808702 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!132 lt!2283821 lt!2283815 s!2326) lt!2284055)))

(declare-fun bs!1340993 () Bool)

(assert (= bs!1340993 d!1808702))

(assert (=> bs!1340993 m!6688332))

(declare-fun m!6689412 () Bool)

(assert (=> bs!1340993 m!6689412))

(assert (=> bs!1340993 m!6688332))

(assert (=> bs!1340993 m!6688242))

(declare-fun m!6689414 () Bool)

(assert (=> bs!1340993 m!6689414))

(assert (=> bs!1340993 m!6689412))

(declare-fun m!6689416 () Bool)

(assert (=> bs!1340993 m!6689416))

(declare-fun m!6689418 () Bool)

(assert (=> bs!1340993 m!6689418))

(assert (=> bs!1340993 m!6688242))

(assert (=> b!5736280 d!1808702))

(declare-fun d!1808704 () Bool)

(declare-fun e!3526944 () Bool)

(assert (=> d!1808704 e!3526944))

(declare-fun res!2423018 () Bool)

(assert (=> d!1808704 (=> (not res!2423018) (not e!3526944))))

(declare-fun lt!2284056 () List!63534)

(assert (=> d!1808704 (= res!2423018 (= (content!11556 lt!2284056) ((_ map or) (content!11556 (_1!36145 lt!2283811)) (content!11556 (++!13962 (_2!36145 lt!2283811) (_2!36145 lt!2283847))))))))

(declare-fun e!3526943 () List!63534)

(assert (=> d!1808704 (= lt!2284056 e!3526943)))

(declare-fun c!1012509 () Bool)

(assert (=> d!1808704 (= c!1012509 ((_ is Nil!63410) (_1!36145 lt!2283811)))))

(assert (=> d!1808704 (= (++!13962 (_1!36145 lt!2283811) (++!13962 (_2!36145 lt!2283811) (_2!36145 lt!2283847))) lt!2284056)))

(declare-fun b!5737273 () Bool)

(assert (=> b!5737273 (= e!3526944 (or (not (= (++!13962 (_2!36145 lt!2283811) (_2!36145 lt!2283847)) Nil!63410)) (= lt!2284056 (_1!36145 lt!2283811))))))

(declare-fun b!5737271 () Bool)

(assert (=> b!5737271 (= e!3526943 (Cons!63410 (h!69858 (_1!36145 lt!2283811)) (++!13962 (t!376862 (_1!36145 lt!2283811)) (++!13962 (_2!36145 lt!2283811) (_2!36145 lt!2283847)))))))

(declare-fun b!5737270 () Bool)

(assert (=> b!5737270 (= e!3526943 (++!13962 (_2!36145 lt!2283811) (_2!36145 lt!2283847)))))

(declare-fun b!5737272 () Bool)

(declare-fun res!2423019 () Bool)

(assert (=> b!5737272 (=> (not res!2423019) (not e!3526944))))

(assert (=> b!5737272 (= res!2423019 (= (size!40060 lt!2284056) (+ (size!40060 (_1!36145 lt!2283811)) (size!40060 (++!13962 (_2!36145 lt!2283811) (_2!36145 lt!2283847))))))))

(assert (= (and d!1808704 c!1012509) b!5737270))

(assert (= (and d!1808704 (not c!1012509)) b!5737271))

(assert (= (and d!1808704 res!2423018) b!5737272))

(assert (= (and b!5737272 res!2423019) b!5737273))

(declare-fun m!6689420 () Bool)

(assert (=> d!1808704 m!6689420))

(declare-fun m!6689422 () Bool)

(assert (=> d!1808704 m!6689422))

(assert (=> d!1808704 m!6688382))

(declare-fun m!6689424 () Bool)

(assert (=> d!1808704 m!6689424))

(assert (=> b!5737271 m!6688382))

(declare-fun m!6689426 () Bool)

(assert (=> b!5737271 m!6689426))

(declare-fun m!6689428 () Bool)

(assert (=> b!5737272 m!6689428))

(declare-fun m!6689430 () Bool)

(assert (=> b!5737272 m!6689430))

(assert (=> b!5737272 m!6688382))

(declare-fun m!6689432 () Bool)

(assert (=> b!5737272 m!6689432))

(assert (=> b!5736301 d!1808704))

(declare-fun d!1808706 () Bool)

(assert (=> d!1808706 (= (Exists!2845 lambda!310894) (choose!43484 lambda!310894))))

(declare-fun bs!1340994 () Bool)

(assert (= bs!1340994 d!1808706))

(declare-fun m!6689434 () Bool)

(assert (=> bs!1340994 m!6689434))

(assert (=> b!5736301 d!1808706))

(declare-fun bs!1340995 () Bool)

(declare-fun d!1808708 () Bool)

(assert (= bs!1340995 (and d!1808708 b!5736301)))

(declare-fun lambda!310974 () Int)

(assert (=> bs!1340995 (not (= lambda!310974 lambda!310894))))

(declare-fun bs!1340996 () Bool)

(assert (= bs!1340996 (and d!1808708 b!5736652)))

(assert (=> bs!1340996 (not (= lambda!310974 lambda!310922))))

(declare-fun bs!1340997 () Bool)

(assert (= bs!1340997 (and d!1808708 b!5736286)))

(assert (=> bs!1340997 (not (= lambda!310974 lambda!310887))))

(declare-fun bs!1340998 () Bool)

(assert (= bs!1340998 (and d!1808708 b!5736281)))

(assert (=> bs!1340998 (not (= lambda!310974 lambda!310892))))

(declare-fun bs!1340999 () Bool)

(assert (= bs!1340999 (and d!1808708 b!5736999)))

(assert (=> bs!1340999 (not (= lambda!310974 lambda!310956))))

(declare-fun bs!1341000 () Bool)

(assert (= bs!1341000 (and d!1808708 d!1808564)))

(assert (=> bs!1341000 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310974 lambda!310948))))

(declare-fun bs!1341001 () Bool)

(assert (= bs!1341001 (and d!1808708 b!5736653)))

(assert (=> bs!1341001 (not (= lambda!310974 lambda!310923))))

(declare-fun bs!1341002 () Bool)

(assert (= bs!1341002 (and d!1808708 d!1808580)))

(assert (=> bs!1341002 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310974 lambda!310952))))

(declare-fun bs!1341003 () Bool)

(assert (= bs!1341003 (and d!1808708 b!5737000)))

(assert (=> bs!1341003 (not (= lambda!310974 lambda!310958))))

(assert (=> bs!1340995 (not (= lambda!310974 lambda!310895))))

(assert (=> bs!1340997 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 r!7292)) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310974 lambda!310886))))

(assert (=> bs!1341000 (not (= lambda!310974 lambda!310949))))

(declare-fun bs!1341004 () Bool)

(assert (= bs!1341004 (and d!1808708 b!5737073)))

(assert (=> bs!1341004 (not (= lambda!310974 lambda!310967))))

(assert (=> bs!1340995 (= lambda!310974 lambda!310893)))

(assert (=> bs!1340998 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310974 lambda!310891))))

(declare-fun bs!1341005 () Bool)

(assert (= bs!1341005 (and d!1808708 b!5737074)))

(assert (=> bs!1341005 (not (= lambda!310974 lambda!310969))))

(assert (=> d!1808708 true))

(assert (=> d!1808708 true))

(assert (=> d!1808708 true))

(assert (=> d!1808708 (= (isDefined!12457 (findConcatSeparation!2168 (reg!16074 (regOne!32002 r!7292)) lt!2283853 Nil!63410 (_1!36145 lt!2283847) (_1!36145 lt!2283847))) (Exists!2845 lambda!310974))))

(declare-fun lt!2284057 () Unit!156512)

(assert (=> d!1808708 (= lt!2284057 (choose!43482 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (_1!36145 lt!2283847)))))

(assert (=> d!1808708 (validRegex!7481 (reg!16074 (regOne!32002 r!7292)))))

(assert (=> d!1808708 (= (lemmaFindConcatSeparationEquivalentToExists!1932 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (_1!36145 lt!2283847)) lt!2284057)))

(declare-fun bs!1341006 () Bool)

(assert (= bs!1341006 d!1808708))

(declare-fun m!6689454 () Bool)

(assert (=> bs!1341006 m!6689454))

(declare-fun m!6689456 () Bool)

(assert (=> bs!1341006 m!6689456))

(assert (=> bs!1341006 m!6688906))

(assert (=> bs!1341006 m!6688376))

(assert (=> bs!1341006 m!6688376))

(declare-fun m!6689458 () Bool)

(assert (=> bs!1341006 m!6689458))

(assert (=> b!5736301 d!1808708))

(declare-fun d!1808712 () Bool)

(assert (=> d!1808712 (= (Exists!2845 lambda!310893) (choose!43484 lambda!310893))))

(declare-fun bs!1341007 () Bool)

(assert (= bs!1341007 d!1808712))

(declare-fun m!6689460 () Bool)

(assert (=> bs!1341007 m!6689460))

(assert (=> b!5736301 d!1808712))

(declare-fun d!1808714 () Bool)

(assert (=> d!1808714 (= (matchR!7930 lt!2283800 (_1!36145 lt!2283847)) (matchRSpec!2848 lt!2283800 (_1!36145 lt!2283847)))))

(declare-fun lt!2284061 () Unit!156512)

(assert (=> d!1808714 (= lt!2284061 (choose!43471 lt!2283800 (_1!36145 lt!2283847)))))

(assert (=> d!1808714 (validRegex!7481 lt!2283800)))

(assert (=> d!1808714 (= (mainMatchTheorem!2848 lt!2283800 (_1!36145 lt!2283847)) lt!2284061)))

(declare-fun bs!1341008 () Bool)

(assert (= bs!1341008 d!1808714))

(assert (=> bs!1341008 m!6688300))

(assert (=> bs!1341008 m!6688366))

(declare-fun m!6689462 () Bool)

(assert (=> bs!1341008 m!6689462))

(assert (=> bs!1341008 m!6688970))

(assert (=> b!5736301 d!1808714))

(declare-fun d!1808716 () Bool)

(assert (=> d!1808716 (= (isDefined!12457 lt!2283833) (not (isEmpty!35293 lt!2283833)))))

(declare-fun bs!1341009 () Bool)

(assert (= bs!1341009 d!1808716))

(declare-fun m!6689464 () Bool)

(assert (=> bs!1341009 m!6689464))

(assert (=> b!5736301 d!1808716))

(declare-fun d!1808718 () Bool)

(assert (=> d!1808718 (= (get!21873 lt!2283833) (v!51808 lt!2283833))))

(assert (=> b!5736301 d!1808718))

(declare-fun bs!1341010 () Bool)

(declare-fun b!5737291 () Bool)

(assert (= bs!1341010 (and b!5737291 b!5736301)))

(declare-fun lambda!310975 () Int)

(assert (=> bs!1341010 (not (= lambda!310975 lambda!310894))))

(declare-fun bs!1341011 () Bool)

(assert (= bs!1341011 (and b!5737291 b!5736652)))

(assert (=> bs!1341011 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 lt!2283800) (reg!16074 lt!2283839)) (= lt!2283800 lt!2283839)) (= lambda!310975 lambda!310922))))

(declare-fun bs!1341012 () Bool)

(assert (= bs!1341012 (and b!5737291 b!5736286)))

(assert (=> bs!1341012 (not (= lambda!310975 lambda!310887))))

(declare-fun bs!1341013 () Bool)

(assert (= bs!1341013 (and b!5737291 d!1808708)))

(assert (=> bs!1341013 (not (= lambda!310975 lambda!310974))))

(declare-fun bs!1341014 () Bool)

(assert (= bs!1341014 (and b!5737291 b!5736281)))

(assert (=> bs!1341014 (not (= lambda!310975 lambda!310892))))

(declare-fun bs!1341015 () Bool)

(assert (= bs!1341015 (and b!5737291 b!5736999)))

(assert (=> bs!1341015 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 lt!2283800) (reg!16074 lt!2283816)) (= lt!2283800 lt!2283816)) (= lambda!310975 lambda!310956))))

(declare-fun bs!1341016 () Bool)

(assert (= bs!1341016 (and b!5737291 d!1808564)))

(assert (=> bs!1341016 (not (= lambda!310975 lambda!310948))))

(declare-fun bs!1341017 () Bool)

(assert (= bs!1341017 (and b!5737291 b!5736653)))

(assert (=> bs!1341017 (not (= lambda!310975 lambda!310923))))

(declare-fun bs!1341018 () Bool)

(assert (= bs!1341018 (and b!5737291 d!1808580)))

(assert (=> bs!1341018 (not (= lambda!310975 lambda!310952))))

(declare-fun bs!1341019 () Bool)

(assert (= bs!1341019 (and b!5737291 b!5737000)))

(assert (=> bs!1341019 (not (= lambda!310975 lambda!310958))))

(assert (=> bs!1341010 (= (and (= (reg!16074 lt!2283800) (reg!16074 (regOne!32002 r!7292))) (= lt!2283800 lt!2283853)) (= lambda!310975 lambda!310895))))

(assert (=> bs!1341012 (not (= lambda!310975 lambda!310886))))

(assert (=> bs!1341016 (not (= lambda!310975 lambda!310949))))

(declare-fun bs!1341020 () Bool)

(assert (= bs!1341020 (and b!5737291 b!5737073)))

(assert (=> bs!1341020 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 lt!2283800) (reg!16074 r!7292)) (= lt!2283800 r!7292)) (= lambda!310975 lambda!310967))))

(assert (=> bs!1341010 (not (= lambda!310975 lambda!310893))))

(assert (=> bs!1341014 (not (= lambda!310975 lambda!310891))))

(declare-fun bs!1341021 () Bool)

(assert (= bs!1341021 (and b!5737291 b!5737074)))

(assert (=> bs!1341021 (not (= lambda!310975 lambda!310969))))

(assert (=> b!5737291 true))

(assert (=> b!5737291 true))

(declare-fun bs!1341022 () Bool)

(declare-fun b!5737292 () Bool)

(assert (= bs!1341022 (and b!5737292 b!5736301)))

(declare-fun lambda!310976 () Int)

(assert (=> bs!1341022 (= (and (= (regOne!32002 lt!2283800) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 lt!2283800) lt!2283853)) (= lambda!310976 lambda!310894))))

(declare-fun bs!1341023 () Bool)

(assert (= bs!1341023 (and b!5737292 b!5736652)))

(assert (=> bs!1341023 (not (= lambda!310976 lambda!310922))))

(declare-fun bs!1341024 () Bool)

(assert (= bs!1341024 (and b!5737292 b!5736286)))

(assert (=> bs!1341024 (= (and (= (_1!36145 lt!2283847) s!2326) (= (regOne!32002 lt!2283800) (regOne!32002 r!7292)) (= (regTwo!32002 lt!2283800) (regTwo!32002 r!7292))) (= lambda!310976 lambda!310887))))

(declare-fun bs!1341025 () Bool)

(assert (= bs!1341025 (and b!5737292 d!1808708)))

(assert (=> bs!1341025 (not (= lambda!310976 lambda!310974))))

(declare-fun bs!1341026 () Bool)

(assert (= bs!1341026 (and b!5737292 b!5736281)))

(assert (=> bs!1341026 (= (and (= (_1!36145 lt!2283847) s!2326) (= (regOne!32002 lt!2283800) lt!2283800) (= (regTwo!32002 lt!2283800) (regTwo!32002 r!7292))) (= lambda!310976 lambda!310892))))

(declare-fun bs!1341027 () Bool)

(assert (= bs!1341027 (and b!5737292 b!5736999)))

(assert (=> bs!1341027 (not (= lambda!310976 lambda!310956))))

(declare-fun bs!1341028 () Bool)

(assert (= bs!1341028 (and b!5737292 d!1808564)))

(assert (=> bs!1341028 (not (= lambda!310976 lambda!310948))))

(declare-fun bs!1341029 () Bool)

(assert (= bs!1341029 (and b!5737292 b!5736653)))

(assert (=> bs!1341029 (= (and (= (_1!36145 lt!2283847) s!2326) (= (regOne!32002 lt!2283800) (regOne!32002 lt!2283839)) (= (regTwo!32002 lt!2283800) (regTwo!32002 lt!2283839))) (= lambda!310976 lambda!310923))))

(declare-fun bs!1341030 () Bool)

(assert (= bs!1341030 (and b!5737292 b!5737291)))

(assert (=> bs!1341030 (not (= lambda!310976 lambda!310975))))

(declare-fun bs!1341031 () Bool)

(assert (= bs!1341031 (and b!5737292 d!1808580)))

(assert (=> bs!1341031 (not (= lambda!310976 lambda!310952))))

(declare-fun bs!1341032 () Bool)

(assert (= bs!1341032 (and b!5737292 b!5737000)))

(assert (=> bs!1341032 (= (and (= (_1!36145 lt!2283847) s!2326) (= (regOne!32002 lt!2283800) (regOne!32002 lt!2283816)) (= (regTwo!32002 lt!2283800) (regTwo!32002 lt!2283816))) (= lambda!310976 lambda!310958))))

(assert (=> bs!1341022 (not (= lambda!310976 lambda!310895))))

(assert (=> bs!1341024 (not (= lambda!310976 lambda!310886))))

(assert (=> bs!1341028 (= (and (= (_1!36145 lt!2283847) s!2326) (= (regOne!32002 lt!2283800) lt!2283800) (= (regTwo!32002 lt!2283800) (regTwo!32002 r!7292))) (= lambda!310976 lambda!310949))))

(declare-fun bs!1341033 () Bool)

(assert (= bs!1341033 (and b!5737292 b!5737073)))

(assert (=> bs!1341033 (not (= lambda!310976 lambda!310967))))

(assert (=> bs!1341022 (not (= lambda!310976 lambda!310893))))

(assert (=> bs!1341026 (not (= lambda!310976 lambda!310891))))

(declare-fun bs!1341034 () Bool)

(assert (= bs!1341034 (and b!5737292 b!5737074)))

(assert (=> bs!1341034 (= (and (= (_1!36145 lt!2283847) s!2326) (= (regOne!32002 lt!2283800) (regOne!32002 r!7292)) (= (regTwo!32002 lt!2283800) (regTwo!32002 r!7292))) (= lambda!310976 lambda!310969))))

(assert (=> b!5737292 true))

(assert (=> b!5737292 true))

(declare-fun b!5737283 () Bool)

(declare-fun e!3526954 () Bool)

(assert (=> b!5737283 (= e!3526954 (matchRSpec!2848 (regTwo!32003 lt!2283800) (_1!36145 lt!2283847)))))

(declare-fun b!5737285 () Bool)

(declare-fun c!1012515 () Bool)

(assert (=> b!5737285 (= c!1012515 ((_ is Union!15745) lt!2283800))))

(declare-fun e!3526951 () Bool)

(declare-fun e!3526953 () Bool)

(assert (=> b!5737285 (= e!3526951 e!3526953)))

(declare-fun b!5737286 () Bool)

(assert (=> b!5737286 (= e!3526953 e!3526954)))

(declare-fun res!2423026 () Bool)

(assert (=> b!5737286 (= res!2423026 (matchRSpec!2848 (regOne!32003 lt!2283800) (_1!36145 lt!2283847)))))

(assert (=> b!5737286 (=> res!2423026 e!3526954)))

(declare-fun b!5737287 () Bool)

(declare-fun e!3526950 () Bool)

(declare-fun e!3526952 () Bool)

(assert (=> b!5737287 (= e!3526950 e!3526952)))

(declare-fun res!2423027 () Bool)

(assert (=> b!5737287 (= res!2423027 (not ((_ is EmptyLang!15745) lt!2283800)))))

(assert (=> b!5737287 (=> (not res!2423027) (not e!3526952))))

(declare-fun bm!438579 () Bool)

(declare-fun call!438585 () Bool)

(assert (=> bm!438579 (= call!438585 (isEmpty!35292 (_1!36145 lt!2283847)))))

(declare-fun b!5737288 () Bool)

(declare-fun c!1012514 () Bool)

(assert (=> b!5737288 (= c!1012514 ((_ is ElementMatch!15745) lt!2283800))))

(assert (=> b!5737288 (= e!3526952 e!3526951)))

(declare-fun b!5737289 () Bool)

(declare-fun e!3526955 () Bool)

(assert (=> b!5737289 (= e!3526953 e!3526955)))

(declare-fun c!1012512 () Bool)

(assert (=> b!5737289 (= c!1012512 ((_ is Star!15745) lt!2283800))))

(declare-fun b!5737290 () Bool)

(assert (=> b!5737290 (= e!3526950 call!438585)))

(declare-fun d!1808720 () Bool)

(declare-fun c!1012513 () Bool)

(assert (=> d!1808720 (= c!1012513 ((_ is EmptyExpr!15745) lt!2283800))))

(assert (=> d!1808720 (= (matchRSpec!2848 lt!2283800 (_1!36145 lt!2283847)) e!3526950)))

(declare-fun b!5737284 () Bool)

(assert (=> b!5737284 (= e!3526951 (= (_1!36145 lt!2283847) (Cons!63410 (c!1012253 lt!2283800) Nil!63410)))))

(declare-fun e!3526956 () Bool)

(declare-fun call!438584 () Bool)

(assert (=> b!5737291 (= e!3526956 call!438584)))

(assert (=> b!5737292 (= e!3526955 call!438584)))

(declare-fun bm!438580 () Bool)

(assert (=> bm!438580 (= call!438584 (Exists!2845 (ite c!1012512 lambda!310975 lambda!310976)))))

(declare-fun b!5737293 () Bool)

(declare-fun res!2423025 () Bool)

(assert (=> b!5737293 (=> res!2423025 e!3526956)))

(assert (=> b!5737293 (= res!2423025 call!438585)))

(assert (=> b!5737293 (= e!3526955 e!3526956)))

(assert (= (and d!1808720 c!1012513) b!5737290))

(assert (= (and d!1808720 (not c!1012513)) b!5737287))

(assert (= (and b!5737287 res!2423027) b!5737288))

(assert (= (and b!5737288 c!1012514) b!5737284))

(assert (= (and b!5737288 (not c!1012514)) b!5737285))

(assert (= (and b!5737285 c!1012515) b!5737286))

(assert (= (and b!5737285 (not c!1012515)) b!5737289))

(assert (= (and b!5737286 (not res!2423026)) b!5737283))

(assert (= (and b!5737289 c!1012512) b!5737293))

(assert (= (and b!5737289 (not c!1012512)) b!5737292))

(assert (= (and b!5737293 (not res!2423025)) b!5737291))

(assert (= (or b!5737291 b!5737292) bm!438580))

(assert (= (or b!5737290 b!5737293) bm!438579))

(declare-fun m!6689478 () Bool)

(assert (=> b!5737283 m!6689478))

(declare-fun m!6689480 () Bool)

(assert (=> b!5737286 m!6689480))

(assert (=> bm!438579 m!6689098))

(declare-fun m!6689482 () Bool)

(assert (=> bm!438580 m!6689482))

(assert (=> b!5736301 d!1808720))

(declare-fun b!5737304 () Bool)

(declare-fun res!2423039 () Bool)

(declare-fun e!3526964 () Bool)

(assert (=> b!5737304 (=> (not res!2423039) (not e!3526964))))

(assert (=> b!5737304 (= res!2423039 (isEmpty!35292 (tail!11241 (_1!36145 lt!2283811))))))

(declare-fun b!5737305 () Bool)

(declare-fun e!3526963 () Bool)

(declare-fun e!3526966 () Bool)

(assert (=> b!5737305 (= e!3526963 e!3526966)))

(declare-fun c!1012520 () Bool)

(assert (=> b!5737305 (= c!1012520 ((_ is EmptyLang!15745) (reg!16074 (regOne!32002 r!7292))))))

(declare-fun b!5737306 () Bool)

(declare-fun e!3526967 () Bool)

(declare-fun e!3526965 () Bool)

(assert (=> b!5737306 (= e!3526967 e!3526965)))

(declare-fun res!2423040 () Bool)

(assert (=> b!5737306 (=> (not res!2423040) (not e!3526965))))

(declare-fun lt!2284068 () Bool)

(assert (=> b!5737306 (= res!2423040 (not lt!2284068))))

(declare-fun b!5737307 () Bool)

(declare-fun e!3526968 () Bool)

(assert (=> b!5737307 (= e!3526968 (nullable!5777 (reg!16074 (regOne!32002 r!7292))))))

(declare-fun b!5737308 () Bool)

(declare-fun e!3526962 () Bool)

(assert (=> b!5737308 (= e!3526962 (not (= (head!12146 (_1!36145 lt!2283811)) (c!1012253 (reg!16074 (regOne!32002 r!7292))))))))

(declare-fun b!5737309 () Bool)

(declare-fun res!2423037 () Bool)

(assert (=> b!5737309 (=> (not res!2423037) (not e!3526964))))

(declare-fun call!438586 () Bool)

(assert (=> b!5737309 (= res!2423037 (not call!438586))))

(declare-fun b!5737310 () Bool)

(declare-fun res!2423038 () Bool)

(assert (=> b!5737310 (=> res!2423038 e!3526967)))

(assert (=> b!5737310 (= res!2423038 (not ((_ is ElementMatch!15745) (reg!16074 (regOne!32002 r!7292)))))))

(assert (=> b!5737310 (= e!3526966 e!3526967)))

(declare-fun bm!438581 () Bool)

(assert (=> bm!438581 (= call!438586 (isEmpty!35292 (_1!36145 lt!2283811)))))

(declare-fun b!5737311 () Bool)

(assert (=> b!5737311 (= e!3526968 (matchR!7930 (derivativeStep!4536 (reg!16074 (regOne!32002 r!7292)) (head!12146 (_1!36145 lt!2283811))) (tail!11241 (_1!36145 lt!2283811))))))

(declare-fun b!5737312 () Bool)

(assert (=> b!5737312 (= e!3526964 (= (head!12146 (_1!36145 lt!2283811)) (c!1012253 (reg!16074 (regOne!32002 r!7292)))))))

(declare-fun b!5737313 () Bool)

(declare-fun res!2423036 () Bool)

(assert (=> b!5737313 (=> res!2423036 e!3526967)))

(assert (=> b!5737313 (= res!2423036 e!3526964)))

(declare-fun res!2423033 () Bool)

(assert (=> b!5737313 (=> (not res!2423033) (not e!3526964))))

(assert (=> b!5737313 (= res!2423033 lt!2284068)))

(declare-fun b!5737314 () Bool)

(assert (=> b!5737314 (= e!3526963 (= lt!2284068 call!438586))))

(declare-fun d!1808728 () Bool)

(assert (=> d!1808728 e!3526963))

(declare-fun c!1012519 () Bool)

(assert (=> d!1808728 (= c!1012519 ((_ is EmptyExpr!15745) (reg!16074 (regOne!32002 r!7292))))))

(assert (=> d!1808728 (= lt!2284068 e!3526968)))

(declare-fun c!1012518 () Bool)

(assert (=> d!1808728 (= c!1012518 (isEmpty!35292 (_1!36145 lt!2283811)))))

(assert (=> d!1808728 (validRegex!7481 (reg!16074 (regOne!32002 r!7292)))))

(assert (=> d!1808728 (= (matchR!7930 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283811)) lt!2284068)))

(declare-fun b!5737303 () Bool)

(assert (=> b!5737303 (= e!3526966 (not lt!2284068))))

(declare-fun b!5737315 () Bool)

(declare-fun res!2423035 () Bool)

(assert (=> b!5737315 (=> res!2423035 e!3526962)))

(assert (=> b!5737315 (= res!2423035 (not (isEmpty!35292 (tail!11241 (_1!36145 lt!2283811)))))))

(declare-fun b!5737316 () Bool)

(assert (=> b!5737316 (= e!3526965 e!3526962)))

(declare-fun res!2423034 () Bool)

(assert (=> b!5737316 (=> res!2423034 e!3526962)))

(assert (=> b!5737316 (= res!2423034 call!438586)))

(assert (= (and d!1808728 c!1012518) b!5737307))

(assert (= (and d!1808728 (not c!1012518)) b!5737311))

(assert (= (and d!1808728 c!1012519) b!5737314))

(assert (= (and d!1808728 (not c!1012519)) b!5737305))

(assert (= (and b!5737305 c!1012520) b!5737303))

(assert (= (and b!5737305 (not c!1012520)) b!5737310))

(assert (= (and b!5737310 (not res!2423038)) b!5737313))

(assert (= (and b!5737313 res!2423033) b!5737309))

(assert (= (and b!5737309 res!2423037) b!5737304))

(assert (= (and b!5737304 res!2423039) b!5737312))

(assert (= (and b!5737313 (not res!2423036)) b!5737306))

(assert (= (and b!5737306 res!2423040) b!5737316))

(assert (= (and b!5737316 (not res!2423034)) b!5737315))

(assert (= (and b!5737315 (not res!2423035)) b!5737308))

(assert (= (or b!5737314 b!5737309 b!5737316) bm!438581))

(assert (=> b!5737307 m!6688892))

(declare-fun m!6689486 () Bool)

(assert (=> b!5737308 m!6689486))

(assert (=> b!5737311 m!6689486))

(assert (=> b!5737311 m!6689486))

(declare-fun m!6689490 () Bool)

(assert (=> b!5737311 m!6689490))

(declare-fun m!6689494 () Bool)

(assert (=> b!5737311 m!6689494))

(assert (=> b!5737311 m!6689490))

(assert (=> b!5737311 m!6689494))

(declare-fun m!6689496 () Bool)

(assert (=> b!5737311 m!6689496))

(assert (=> b!5737312 m!6689486))

(assert (=> b!5737304 m!6689494))

(assert (=> b!5737304 m!6689494))

(declare-fun m!6689498 () Bool)

(assert (=> b!5737304 m!6689498))

(declare-fun m!6689500 () Bool)

(assert (=> d!1808728 m!6689500))

(assert (=> d!1808728 m!6688906))

(assert (=> b!5737315 m!6689494))

(assert (=> b!5737315 m!6689494))

(assert (=> b!5737315 m!6689498))

(assert (=> bm!438581 m!6689500))

(assert (=> b!5736301 d!1808728))

(declare-fun d!1808730 () Bool)

(assert (=> d!1808730 (= (++!13962 (++!13962 (_1!36145 lt!2283811) (_2!36145 lt!2283811)) (_2!36145 lt!2283847)) (++!13962 (_1!36145 lt!2283811) (++!13962 (_2!36145 lt!2283811) (_2!36145 lt!2283847))))))

(declare-fun lt!2284072 () Unit!156512)

(declare-fun choose!43497 (List!63534 List!63534 List!63534) Unit!156512)

(assert (=> d!1808730 (= lt!2284072 (choose!43497 (_1!36145 lt!2283811) (_2!36145 lt!2283811) (_2!36145 lt!2283847)))))

(assert (=> d!1808730 (= (lemmaConcatAssociativity!2888 (_1!36145 lt!2283811) (_2!36145 lt!2283811) (_2!36145 lt!2283847)) lt!2284072)))

(declare-fun bs!1341048 () Bool)

(assert (= bs!1341048 d!1808730))

(assert (=> bs!1341048 m!6688382))

(declare-fun m!6689516 () Bool)

(assert (=> bs!1341048 m!6689516))

(assert (=> bs!1341048 m!6688362))

(assert (=> bs!1341048 m!6688382))

(assert (=> bs!1341048 m!6688386))

(assert (=> bs!1341048 m!6688362))

(declare-fun m!6689518 () Bool)

(assert (=> bs!1341048 m!6689518))

(assert (=> b!5736301 d!1808730))

(declare-fun d!1808738 () Bool)

(assert (=> d!1808738 (= (Exists!2845 lambda!310895) (choose!43484 lambda!310895))))

(declare-fun bs!1341051 () Bool)

(assert (= bs!1341051 d!1808738))

(declare-fun m!6689520 () Bool)

(assert (=> bs!1341051 m!6689520))

(assert (=> b!5736301 d!1808738))

(declare-fun d!1808740 () Bool)

(declare-fun e!3526970 () Bool)

(assert (=> d!1808740 e!3526970))

(declare-fun res!2423041 () Bool)

(assert (=> d!1808740 (=> (not res!2423041) (not e!3526970))))

(declare-fun lt!2284073 () List!63534)

(assert (=> d!1808740 (= res!2423041 (= (content!11556 lt!2284073) ((_ map or) (content!11556 (_1!36145 lt!2283811)) (content!11556 (_2!36145 lt!2283811)))))))

(declare-fun e!3526969 () List!63534)

(assert (=> d!1808740 (= lt!2284073 e!3526969)))

(declare-fun c!1012521 () Bool)

(assert (=> d!1808740 (= c!1012521 ((_ is Nil!63410) (_1!36145 lt!2283811)))))

(assert (=> d!1808740 (= (++!13962 (_1!36145 lt!2283811) (_2!36145 lt!2283811)) lt!2284073)))

(declare-fun b!5737320 () Bool)

(assert (=> b!5737320 (= e!3526970 (or (not (= (_2!36145 lt!2283811) Nil!63410)) (= lt!2284073 (_1!36145 lt!2283811))))))

(declare-fun b!5737318 () Bool)

(assert (=> b!5737318 (= e!3526969 (Cons!63410 (h!69858 (_1!36145 lt!2283811)) (++!13962 (t!376862 (_1!36145 lt!2283811)) (_2!36145 lt!2283811))))))

(declare-fun b!5737317 () Bool)

(assert (=> b!5737317 (= e!3526969 (_2!36145 lt!2283811))))

(declare-fun b!5737319 () Bool)

(declare-fun res!2423042 () Bool)

(assert (=> b!5737319 (=> (not res!2423042) (not e!3526970))))

(assert (=> b!5737319 (= res!2423042 (= (size!40060 lt!2284073) (+ (size!40060 (_1!36145 lt!2283811)) (size!40060 (_2!36145 lt!2283811)))))))

(assert (= (and d!1808740 c!1012521) b!5737317))

(assert (= (and d!1808740 (not c!1012521)) b!5737318))

(assert (= (and d!1808740 res!2423041) b!5737319))

(assert (= (and b!5737319 res!2423042) b!5737320))

(declare-fun m!6689522 () Bool)

(assert (=> d!1808740 m!6689522))

(assert (=> d!1808740 m!6689422))

(declare-fun m!6689524 () Bool)

(assert (=> d!1808740 m!6689524))

(declare-fun m!6689526 () Bool)

(assert (=> b!5737318 m!6689526))

(declare-fun m!6689528 () Bool)

(assert (=> b!5737319 m!6689528))

(assert (=> b!5737319 m!6689430))

(declare-fun m!6689530 () Bool)

(assert (=> b!5737319 m!6689530))

(assert (=> b!5736301 d!1808740))

(declare-fun d!1808742 () Bool)

(declare-fun e!3526972 () Bool)

(assert (=> d!1808742 e!3526972))

(declare-fun res!2423043 () Bool)

(assert (=> d!1808742 (=> (not res!2423043) (not e!3526972))))

(declare-fun lt!2284074 () List!63534)

(assert (=> d!1808742 (= res!2423043 (= (content!11556 lt!2284074) ((_ map or) (content!11556 lt!2283851) (content!11556 (_2!36145 lt!2283847)))))))

(declare-fun e!3526971 () List!63534)

(assert (=> d!1808742 (= lt!2284074 e!3526971)))

(declare-fun c!1012522 () Bool)

(assert (=> d!1808742 (= c!1012522 ((_ is Nil!63410) lt!2283851))))

(assert (=> d!1808742 (= (++!13962 lt!2283851 (_2!36145 lt!2283847)) lt!2284074)))

(declare-fun b!5737324 () Bool)

(assert (=> b!5737324 (= e!3526972 (or (not (= (_2!36145 lt!2283847) Nil!63410)) (= lt!2284074 lt!2283851)))))

(declare-fun b!5737322 () Bool)

(assert (=> b!5737322 (= e!3526971 (Cons!63410 (h!69858 lt!2283851) (++!13962 (t!376862 lt!2283851) (_2!36145 lt!2283847))))))

(declare-fun b!5737321 () Bool)

(assert (=> b!5737321 (= e!3526971 (_2!36145 lt!2283847))))

(declare-fun b!5737323 () Bool)

(declare-fun res!2423044 () Bool)

(assert (=> b!5737323 (=> (not res!2423044) (not e!3526972))))

(assert (=> b!5737323 (= res!2423044 (= (size!40060 lt!2284074) (+ (size!40060 lt!2283851) (size!40060 (_2!36145 lt!2283847)))))))

(assert (= (and d!1808742 c!1012522) b!5737321))

(assert (= (and d!1808742 (not c!1012522)) b!5737322))

(assert (= (and d!1808742 res!2423043) b!5737323))

(assert (= (and b!5737323 res!2423044) b!5737324))

(declare-fun m!6689532 () Bool)

(assert (=> d!1808742 m!6689532))

(declare-fun m!6689534 () Bool)

(assert (=> d!1808742 m!6689534))

(declare-fun m!6689536 () Bool)

(assert (=> d!1808742 m!6689536))

(declare-fun m!6689538 () Bool)

(assert (=> b!5737322 m!6689538))

(declare-fun m!6689540 () Bool)

(assert (=> b!5737323 m!6689540))

(declare-fun m!6689542 () Bool)

(assert (=> b!5737323 m!6689542))

(declare-fun m!6689544 () Bool)

(assert (=> b!5737323 m!6689544))

(assert (=> b!5736301 d!1808742))

(declare-fun d!1808744 () Bool)

(declare-fun e!3526974 () Bool)

(assert (=> d!1808744 e!3526974))

(declare-fun res!2423045 () Bool)

(assert (=> d!1808744 (=> (not res!2423045) (not e!3526974))))

(declare-fun lt!2284075 () List!63534)

(assert (=> d!1808744 (= res!2423045 (= (content!11556 lt!2284075) ((_ map or) (content!11556 (_2!36145 lt!2283811)) (content!11556 (_2!36145 lt!2283847)))))))

(declare-fun e!3526973 () List!63534)

(assert (=> d!1808744 (= lt!2284075 e!3526973)))

(declare-fun c!1012523 () Bool)

(assert (=> d!1808744 (= c!1012523 ((_ is Nil!63410) (_2!36145 lt!2283811)))))

(assert (=> d!1808744 (= (++!13962 (_2!36145 lt!2283811) (_2!36145 lt!2283847)) lt!2284075)))

(declare-fun b!5737328 () Bool)

(assert (=> b!5737328 (= e!3526974 (or (not (= (_2!36145 lt!2283847) Nil!63410)) (= lt!2284075 (_2!36145 lt!2283811))))))

(declare-fun b!5737326 () Bool)

(assert (=> b!5737326 (= e!3526973 (Cons!63410 (h!69858 (_2!36145 lt!2283811)) (++!13962 (t!376862 (_2!36145 lt!2283811)) (_2!36145 lt!2283847))))))

(declare-fun b!5737325 () Bool)

(assert (=> b!5737325 (= e!3526973 (_2!36145 lt!2283847))))

(declare-fun b!5737327 () Bool)

(declare-fun res!2423046 () Bool)

(assert (=> b!5737327 (=> (not res!2423046) (not e!3526974))))

(assert (=> b!5737327 (= res!2423046 (= (size!40060 lt!2284075) (+ (size!40060 (_2!36145 lt!2283811)) (size!40060 (_2!36145 lt!2283847)))))))

(assert (= (and d!1808744 c!1012523) b!5737325))

(assert (= (and d!1808744 (not c!1012523)) b!5737326))

(assert (= (and d!1808744 res!2423045) b!5737327))

(assert (= (and b!5737327 res!2423046) b!5737328))

(declare-fun m!6689546 () Bool)

(assert (=> d!1808744 m!6689546))

(assert (=> d!1808744 m!6689524))

(assert (=> d!1808744 m!6689536))

(declare-fun m!6689548 () Bool)

(assert (=> b!5737326 m!6689548))

(declare-fun m!6689550 () Bool)

(assert (=> b!5737327 m!6689550))

(assert (=> b!5737327 m!6689530))

(assert (=> b!5737327 m!6689544))

(assert (=> b!5736301 d!1808744))

(declare-fun bs!1341059 () Bool)

(declare-fun d!1808746 () Bool)

(assert (= bs!1341059 (and d!1808746 b!5736301)))

(declare-fun lambda!310978 () Int)

(assert (=> bs!1341059 (not (= lambda!310978 lambda!310894))))

(declare-fun bs!1341061 () Bool)

(assert (= bs!1341061 (and d!1808746 b!5737292)))

(assert (=> bs!1341061 (not (= lambda!310978 lambda!310976))))

(declare-fun bs!1341063 () Bool)

(assert (= bs!1341063 (and d!1808746 b!5736652)))

(assert (=> bs!1341063 (not (= lambda!310978 lambda!310922))))

(declare-fun bs!1341065 () Bool)

(assert (= bs!1341065 (and d!1808746 b!5736286)))

(assert (=> bs!1341065 (not (= lambda!310978 lambda!310887))))

(declare-fun bs!1341067 () Bool)

(assert (= bs!1341067 (and d!1808746 d!1808708)))

(assert (=> bs!1341067 (= lambda!310978 lambda!310974)))

(declare-fun bs!1341069 () Bool)

(assert (= bs!1341069 (and d!1808746 b!5736281)))

(assert (=> bs!1341069 (not (= lambda!310978 lambda!310892))))

(declare-fun bs!1341071 () Bool)

(assert (= bs!1341071 (and d!1808746 b!5736999)))

(assert (=> bs!1341071 (not (= lambda!310978 lambda!310956))))

(declare-fun bs!1341073 () Bool)

(assert (= bs!1341073 (and d!1808746 d!1808564)))

(assert (=> bs!1341073 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310978 lambda!310948))))

(declare-fun bs!1341075 () Bool)

(assert (= bs!1341075 (and d!1808746 b!5736653)))

(assert (=> bs!1341075 (not (= lambda!310978 lambda!310923))))

(declare-fun bs!1341076 () Bool)

(assert (= bs!1341076 (and d!1808746 b!5737291)))

(assert (=> bs!1341076 (not (= lambda!310978 lambda!310975))))

(declare-fun bs!1341077 () Bool)

(assert (= bs!1341077 (and d!1808746 d!1808580)))

(assert (=> bs!1341077 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310978 lambda!310952))))

(declare-fun bs!1341079 () Bool)

(assert (= bs!1341079 (and d!1808746 b!5737000)))

(assert (=> bs!1341079 (not (= lambda!310978 lambda!310958))))

(assert (=> bs!1341059 (not (= lambda!310978 lambda!310895))))

(assert (=> bs!1341065 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 r!7292)) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310978 lambda!310886))))

(assert (=> bs!1341073 (not (= lambda!310978 lambda!310949))))

(declare-fun bs!1341083 () Bool)

(assert (= bs!1341083 (and d!1808746 b!5737073)))

(assert (=> bs!1341083 (not (= lambda!310978 lambda!310967))))

(assert (=> bs!1341059 (= lambda!310978 lambda!310893)))

(assert (=> bs!1341069 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310978 lambda!310891))))

(declare-fun bs!1341086 () Bool)

(assert (= bs!1341086 (and d!1808746 b!5737074)))

(assert (=> bs!1341086 (not (= lambda!310978 lambda!310969))))

(assert (=> d!1808746 true))

(assert (=> d!1808746 true))

(assert (=> d!1808746 true))

(declare-fun lambda!310980 () Int)

(assert (=> bs!1341059 (= lambda!310980 lambda!310894)))

(assert (=> bs!1341061 (= (and (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 lt!2283800)) (= lt!2283853 (regTwo!32002 lt!2283800))) (= lambda!310980 lambda!310976))))

(assert (=> bs!1341063 (not (= lambda!310980 lambda!310922))))

(assert (=> bs!1341065 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 r!7292)) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310980 lambda!310887))))

(assert (=> bs!1341067 (not (= lambda!310980 lambda!310974))))

(assert (=> bs!1341069 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310980 lambda!310892))))

(assert (=> bs!1341071 (not (= lambda!310980 lambda!310956))))

(assert (=> bs!1341073 (not (= lambda!310980 lambda!310948))))

(declare-fun bs!1341090 () Bool)

(assert (= bs!1341090 d!1808746))

(assert (=> bs!1341090 (not (= lambda!310980 lambda!310978))))

(assert (=> bs!1341075 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 lt!2283839)) (= lt!2283853 (regTwo!32002 lt!2283839))) (= lambda!310980 lambda!310923))))

(assert (=> bs!1341076 (not (= lambda!310980 lambda!310975))))

(assert (=> bs!1341077 (not (= lambda!310980 lambda!310952))))

(assert (=> bs!1341079 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 lt!2283816)) (= lt!2283853 (regTwo!32002 lt!2283816))) (= lambda!310980 lambda!310958))))

(assert (=> bs!1341059 (not (= lambda!310980 lambda!310895))))

(assert (=> bs!1341065 (not (= lambda!310980 lambda!310886))))

(assert (=> bs!1341073 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310980 lambda!310949))))

(assert (=> bs!1341083 (not (= lambda!310980 lambda!310967))))

(assert (=> bs!1341059 (not (= lambda!310980 lambda!310893))))

(assert (=> bs!1341069 (not (= lambda!310980 lambda!310891))))

(assert (=> bs!1341086 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 r!7292)) (= lt!2283853 (regTwo!32002 r!7292))) (= lambda!310980 lambda!310969))))

(assert (=> d!1808746 true))

(assert (=> d!1808746 true))

(assert (=> d!1808746 true))

(assert (=> d!1808746 (= (Exists!2845 lambda!310978) (Exists!2845 lambda!310980))))

(declare-fun lt!2284076 () Unit!156512)

(assert (=> d!1808746 (= lt!2284076 (choose!43481 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (_1!36145 lt!2283847)))))

(assert (=> d!1808746 (validRegex!7481 (reg!16074 (regOne!32002 r!7292)))))

(assert (=> d!1808746 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1474 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (_1!36145 lt!2283847)) lt!2284076)))

(declare-fun m!6689556 () Bool)

(assert (=> bs!1341090 m!6689556))

(declare-fun m!6689558 () Bool)

(assert (=> bs!1341090 m!6689558))

(declare-fun m!6689560 () Bool)

(assert (=> bs!1341090 m!6689560))

(assert (=> bs!1341090 m!6688906))

(assert (=> b!5736301 d!1808746))

(declare-fun bs!1341105 () Bool)

(declare-fun d!1808750 () Bool)

(assert (= bs!1341105 (and d!1808750 b!5736301)))

(declare-fun lambda!310987 () Int)

(assert (=> bs!1341105 (not (= lambda!310987 lambda!310894))))

(declare-fun bs!1341106 () Bool)

(assert (= bs!1341106 (and d!1808750 d!1808746)))

(assert (=> bs!1341106 (not (= lambda!310987 lambda!310980))))

(declare-fun bs!1341107 () Bool)

(assert (= bs!1341107 (and d!1808750 b!5737292)))

(assert (=> bs!1341107 (not (= lambda!310987 lambda!310976))))

(declare-fun bs!1341108 () Bool)

(assert (= bs!1341108 (and d!1808750 b!5736652)))

(assert (=> bs!1341108 (not (= lambda!310987 lambda!310922))))

(declare-fun bs!1341109 () Bool)

(assert (= bs!1341109 (and d!1808750 b!5736286)))

(assert (=> bs!1341109 (not (= lambda!310987 lambda!310887))))

(declare-fun bs!1341110 () Bool)

(assert (= bs!1341110 (and d!1808750 d!1808708)))

(assert (=> bs!1341110 (= (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) lt!2283853) (= lambda!310987 lambda!310974))))

(declare-fun bs!1341111 () Bool)

(assert (= bs!1341111 (and d!1808750 b!5736281)))

(assert (=> bs!1341111 (not (= lambda!310987 lambda!310892))))

(declare-fun bs!1341112 () Bool)

(assert (= bs!1341112 (and d!1808750 b!5736999)))

(assert (=> bs!1341112 (not (= lambda!310987 lambda!310956))))

(declare-fun bs!1341113 () Bool)

(assert (= bs!1341113 (and d!1808750 d!1808564)))

(assert (=> bs!1341113 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) (regTwo!32002 r!7292))) (= lambda!310987 lambda!310948))))

(assert (=> bs!1341106 (= (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) lt!2283853) (= lambda!310987 lambda!310978))))

(declare-fun bs!1341114 () Bool)

(assert (= bs!1341114 (and d!1808750 b!5736653)))

(assert (=> bs!1341114 (not (= lambda!310987 lambda!310923))))

(declare-fun bs!1341115 () Bool)

(assert (= bs!1341115 (and d!1808750 b!5737291)))

(assert (=> bs!1341115 (not (= lambda!310987 lambda!310975))))

(declare-fun bs!1341116 () Bool)

(assert (= bs!1341116 (and d!1808750 d!1808580)))

(assert (=> bs!1341116 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) (regTwo!32002 r!7292))) (= lambda!310987 lambda!310952))))

(declare-fun bs!1341117 () Bool)

(assert (= bs!1341117 (and d!1808750 b!5737000)))

(assert (=> bs!1341117 (not (= lambda!310987 lambda!310958))))

(assert (=> bs!1341105 (not (= lambda!310987 lambda!310895))))

(assert (=> bs!1341109 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (regOne!32002 r!7292)) (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) (regTwo!32002 r!7292))) (= lambda!310987 lambda!310886))))

(assert (=> bs!1341113 (not (= lambda!310987 lambda!310949))))

(declare-fun bs!1341118 () Bool)

(assert (= bs!1341118 (and d!1808750 b!5737073)))

(assert (=> bs!1341118 (not (= lambda!310987 lambda!310967))))

(assert (=> bs!1341105 (= (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) lt!2283853) (= lambda!310987 lambda!310893))))

(assert (=> bs!1341111 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) lt!2283800) (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) (regTwo!32002 r!7292))) (= lambda!310987 lambda!310891))))

(declare-fun bs!1341119 () Bool)

(assert (= bs!1341119 (and d!1808750 b!5737074)))

(assert (=> bs!1341119 (not (= lambda!310987 lambda!310969))))

(assert (=> d!1808750 true))

(assert (=> d!1808750 true))

(declare-fun lambda!310988 () Int)

(assert (=> bs!1341105 (not (= lambda!310988 lambda!310894))))

(assert (=> bs!1341106 (not (= lambda!310988 lambda!310980))))

(assert (=> bs!1341107 (not (= lambda!310988 lambda!310976))))

(assert (=> bs!1341108 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (reg!16074 lt!2283839)) (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) lt!2283839)) (= lambda!310988 lambda!310922))))

(declare-fun bs!1341120 () Bool)

(assert (= bs!1341120 d!1808750))

(assert (=> bs!1341120 (not (= lambda!310988 lambda!310987))))

(assert (=> bs!1341109 (not (= lambda!310988 lambda!310887))))

(assert (=> bs!1341110 (not (= lambda!310988 lambda!310974))))

(assert (=> bs!1341111 (not (= lambda!310988 lambda!310892))))

(assert (=> bs!1341112 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (reg!16074 lt!2283816)) (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) lt!2283816)) (= lambda!310988 lambda!310956))))

(assert (=> bs!1341113 (not (= lambda!310988 lambda!310948))))

(assert (=> bs!1341106 (not (= lambda!310988 lambda!310978))))

(assert (=> bs!1341114 (not (= lambda!310988 lambda!310923))))

(assert (=> bs!1341115 (= (and (= (reg!16074 (regOne!32002 r!7292)) (reg!16074 lt!2283800)) (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) lt!2283800)) (= lambda!310988 lambda!310975))))

(assert (=> bs!1341116 (not (= lambda!310988 lambda!310952))))

(assert (=> bs!1341117 (not (= lambda!310988 lambda!310958))))

(assert (=> bs!1341105 (= (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) lt!2283853) (= lambda!310988 lambda!310895))))

(assert (=> bs!1341109 (not (= lambda!310988 lambda!310886))))

(assert (=> bs!1341113 (not (= lambda!310988 lambda!310949))))

(assert (=> bs!1341118 (= (and (= (_1!36145 lt!2283847) s!2326) (= (reg!16074 (regOne!32002 r!7292)) (reg!16074 r!7292)) (= (Star!15745 (reg!16074 (regOne!32002 r!7292))) r!7292)) (= lambda!310988 lambda!310967))))

(assert (=> bs!1341105 (not (= lambda!310988 lambda!310893))))

(assert (=> bs!1341111 (not (= lambda!310988 lambda!310891))))

(assert (=> bs!1341119 (not (= lambda!310988 lambda!310969))))

(assert (=> d!1808750 true))

(assert (=> d!1808750 true))

(assert (=> d!1808750 (= (Exists!2845 lambda!310987) (Exists!2845 lambda!310988))))

(declare-fun lt!2284081 () Unit!156512)

(declare-fun choose!43498 (Regex!15745 List!63534) Unit!156512)

(assert (=> d!1808750 (= lt!2284081 (choose!43498 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283847)))))

(assert (=> d!1808750 (validRegex!7481 (reg!16074 (regOne!32002 r!7292)))))

(assert (=> d!1808750 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!558 (reg!16074 (regOne!32002 r!7292)) (_1!36145 lt!2283847)) lt!2284081)))

(declare-fun m!6689580 () Bool)

(assert (=> bs!1341120 m!6689580))

(declare-fun m!6689582 () Bool)

(assert (=> bs!1341120 m!6689582))

(declare-fun m!6689584 () Bool)

(assert (=> bs!1341120 m!6689584))

(assert (=> bs!1341120 m!6688906))

(assert (=> b!5736301 d!1808750))

(declare-fun b!5737393 () Bool)

(declare-fun lt!2284083 () Unit!156512)

(declare-fun lt!2284084 () Unit!156512)

(assert (=> b!5737393 (= lt!2284083 lt!2284084)))

(assert (=> b!5737393 (= (++!13962 (++!13962 Nil!63410 (Cons!63410 (h!69858 (_1!36145 lt!2283847)) Nil!63410)) (t!376862 (_1!36145 lt!2283847))) (_1!36145 lt!2283847))))

(assert (=> b!5737393 (= lt!2284084 (lemmaMoveElementToOtherListKeepsConcatEq!2085 Nil!63410 (h!69858 (_1!36145 lt!2283847)) (t!376862 (_1!36145 lt!2283847)) (_1!36145 lt!2283847)))))

(declare-fun e!3527005 () Option!15754)

(assert (=> b!5737393 (= e!3527005 (findConcatSeparation!2168 (reg!16074 (regOne!32002 r!7292)) lt!2283853 (++!13962 Nil!63410 (Cons!63410 (h!69858 (_1!36145 lt!2283847)) Nil!63410)) (t!376862 (_1!36145 lt!2283847)) (_1!36145 lt!2283847)))))

(declare-fun b!5737394 () Bool)

(declare-fun e!3527003 () Bool)

(declare-fun lt!2284082 () Option!15754)

(assert (=> b!5737394 (= e!3527003 (= (++!13962 (_1!36145 (get!21873 lt!2284082)) (_2!36145 (get!21873 lt!2284082))) (_1!36145 lt!2283847)))))

(declare-fun b!5737396 () Bool)

(declare-fun e!3527004 () Option!15754)

(assert (=> b!5737396 (= e!3527004 (Some!15753 (tuple2!65685 Nil!63410 (_1!36145 lt!2283847))))))

(declare-fun b!5737397 () Bool)

(declare-fun res!2423058 () Bool)

(assert (=> b!5737397 (=> (not res!2423058) (not e!3527003))))

(assert (=> b!5737397 (= res!2423058 (matchR!7930 lt!2283853 (_2!36145 (get!21873 lt!2284082))))))

(declare-fun b!5737398 () Bool)

(declare-fun res!2423057 () Bool)

(assert (=> b!5737398 (=> (not res!2423057) (not e!3527003))))

(assert (=> b!5737398 (= res!2423057 (matchR!7930 (reg!16074 (regOne!32002 r!7292)) (_1!36145 (get!21873 lt!2284082))))))

(declare-fun b!5737399 () Bool)

(declare-fun e!3527002 () Bool)

(assert (=> b!5737399 (= e!3527002 (matchR!7930 lt!2283853 (_1!36145 lt!2283847)))))

(declare-fun b!5737395 () Bool)

(declare-fun e!3527006 () Bool)

(assert (=> b!5737395 (= e!3527006 (not (isDefined!12457 lt!2284082)))))

(declare-fun d!1808766 () Bool)

(assert (=> d!1808766 e!3527006))

(declare-fun res!2423061 () Bool)

(assert (=> d!1808766 (=> res!2423061 e!3527006)))

(assert (=> d!1808766 (= res!2423061 e!3527003)))

(declare-fun res!2423059 () Bool)

(assert (=> d!1808766 (=> (not res!2423059) (not e!3527003))))

(assert (=> d!1808766 (= res!2423059 (isDefined!12457 lt!2284082))))

(assert (=> d!1808766 (= lt!2284082 e!3527004)))

(declare-fun c!1012524 () Bool)

(assert (=> d!1808766 (= c!1012524 e!3527002)))

(declare-fun res!2423060 () Bool)

(assert (=> d!1808766 (=> (not res!2423060) (not e!3527002))))

(assert (=> d!1808766 (= res!2423060 (matchR!7930 (reg!16074 (regOne!32002 r!7292)) Nil!63410))))

(assert (=> d!1808766 (validRegex!7481 (reg!16074 (regOne!32002 r!7292)))))

(assert (=> d!1808766 (= (findConcatSeparation!2168 (reg!16074 (regOne!32002 r!7292)) lt!2283853 Nil!63410 (_1!36145 lt!2283847) (_1!36145 lt!2283847)) lt!2284082)))

(declare-fun b!5737400 () Bool)

(assert (=> b!5737400 (= e!3527004 e!3527005)))

(declare-fun c!1012525 () Bool)

(assert (=> b!5737400 (= c!1012525 ((_ is Nil!63410) (_1!36145 lt!2283847)))))

(declare-fun b!5737401 () Bool)

(assert (=> b!5737401 (= e!3527005 None!15753)))

(assert (= (and d!1808766 res!2423060) b!5737399))

(assert (= (and d!1808766 c!1012524) b!5737396))

(assert (= (and d!1808766 (not c!1012524)) b!5737400))

(assert (= (and b!5737400 c!1012525) b!5737401))

(assert (= (and b!5737400 (not c!1012525)) b!5737393))

(assert (= (and d!1808766 res!2423059) b!5737398))

(assert (= (and b!5737398 res!2423057) b!5737397))

(assert (= (and b!5737397 res!2423058) b!5737394))

(assert (= (and d!1808766 (not res!2423061)) b!5737395))

(declare-fun m!6689586 () Bool)

(assert (=> b!5737393 m!6689586))

(assert (=> b!5737393 m!6689586))

(declare-fun m!6689588 () Bool)

(assert (=> b!5737393 m!6689588))

(declare-fun m!6689590 () Bool)

(assert (=> b!5737393 m!6689590))

(assert (=> b!5737393 m!6689586))

(declare-fun m!6689592 () Bool)

(assert (=> b!5737393 m!6689592))

(declare-fun m!6689594 () Bool)

(assert (=> b!5737397 m!6689594))

(declare-fun m!6689596 () Bool)

(assert (=> b!5737397 m!6689596))

(assert (=> b!5737394 m!6689594))

(declare-fun m!6689598 () Bool)

(assert (=> b!5737394 m!6689598))

(declare-fun m!6689600 () Bool)

(assert (=> d!1808766 m!6689600))

(declare-fun m!6689602 () Bool)

(assert (=> d!1808766 m!6689602))

(assert (=> d!1808766 m!6688906))

(assert (=> b!5737395 m!6689600))

(declare-fun m!6689604 () Bool)

(assert (=> b!5737399 m!6689604))

(assert (=> b!5737398 m!6689594))

(declare-fun m!6689606 () Bool)

(assert (=> b!5737398 m!6689606))

(assert (=> b!5736301 d!1808766))

(declare-fun bm!438588 () Bool)

(declare-fun c!1012531 () Bool)

(declare-fun c!1012530 () Bool)

(declare-fun call!438595 () Bool)

(assert (=> bm!438588 (= call!438595 (validRegex!7481 (ite c!1012530 (reg!16074 r!7292) (ite c!1012531 (regOne!32003 r!7292) (regOne!32002 r!7292)))))))

(declare-fun b!5737420 () Bool)

(declare-fun e!3527025 () Bool)

(declare-fun call!438593 () Bool)

(assert (=> b!5737420 (= e!3527025 call!438593)))

(declare-fun b!5737421 () Bool)

(declare-fun res!2423074 () Bool)

(declare-fun e!3527022 () Bool)

(assert (=> b!5737421 (=> res!2423074 e!3527022)))

(assert (=> b!5737421 (= res!2423074 (not ((_ is Concat!24590) r!7292)))))

(declare-fun e!3527023 () Bool)

(assert (=> b!5737421 (= e!3527023 e!3527022)))

(declare-fun bm!438589 () Bool)

(assert (=> bm!438589 (= call!438593 (validRegex!7481 (ite c!1012531 (regTwo!32003 r!7292) (regTwo!32002 r!7292))))))

(declare-fun b!5737423 () Bool)

(declare-fun e!3527024 () Bool)

(assert (=> b!5737423 (= e!3527024 call!438593)))

(declare-fun b!5737424 () Bool)

(declare-fun e!3527027 () Bool)

(declare-fun e!3527021 () Bool)

(assert (=> b!5737424 (= e!3527027 e!3527021)))

(declare-fun res!2423073 () Bool)

(assert (=> b!5737424 (= res!2423073 (not (nullable!5777 (reg!16074 r!7292))))))

(assert (=> b!5737424 (=> (not res!2423073) (not e!3527021))))

(declare-fun b!5737425 () Bool)

(declare-fun e!3527026 () Bool)

(assert (=> b!5737425 (= e!3527026 e!3527027)))

(assert (=> b!5737425 (= c!1012530 ((_ is Star!15745) r!7292))))

(declare-fun b!5737426 () Bool)

(assert (=> b!5737426 (= e!3527021 call!438595)))

(declare-fun bm!438590 () Bool)

(declare-fun call!438594 () Bool)

(assert (=> bm!438590 (= call!438594 call!438595)))

(declare-fun d!1808768 () Bool)

(declare-fun res!2423072 () Bool)

(assert (=> d!1808768 (=> res!2423072 e!3527026)))

(assert (=> d!1808768 (= res!2423072 ((_ is ElementMatch!15745) r!7292))))

(assert (=> d!1808768 (= (validRegex!7481 r!7292) e!3527026)))

(declare-fun b!5737422 () Bool)

(assert (=> b!5737422 (= e!3527027 e!3527023)))

(assert (=> b!5737422 (= c!1012531 ((_ is Union!15745) r!7292))))

(declare-fun b!5737427 () Bool)

(assert (=> b!5737427 (= e!3527022 e!3527024)))

(declare-fun res!2423076 () Bool)

(assert (=> b!5737427 (=> (not res!2423076) (not e!3527024))))

(assert (=> b!5737427 (= res!2423076 call!438594)))

(declare-fun b!5737428 () Bool)

(declare-fun res!2423075 () Bool)

(assert (=> b!5737428 (=> (not res!2423075) (not e!3527025))))

(assert (=> b!5737428 (= res!2423075 call!438594)))

(assert (=> b!5737428 (= e!3527023 e!3527025)))

(assert (= (and d!1808768 (not res!2423072)) b!5737425))

(assert (= (and b!5737425 c!1012530) b!5737424))

(assert (= (and b!5737425 (not c!1012530)) b!5737422))

(assert (= (and b!5737424 res!2423073) b!5737426))

(assert (= (and b!5737422 c!1012531) b!5737428))

(assert (= (and b!5737422 (not c!1012531)) b!5737421))

(assert (= (and b!5737428 res!2423075) b!5737420))

(assert (= (and b!5737421 (not res!2423074)) b!5737427))

(assert (= (and b!5737427 res!2423076) b!5737423))

(assert (= (or b!5737420 b!5737423) bm!438589))

(assert (= (or b!5737428 b!5737427) bm!438590))

(assert (= (or b!5737426 bm!438590) bm!438588))

(declare-fun m!6689608 () Bool)

(assert (=> bm!438588 m!6689608))

(declare-fun m!6689610 () Bool)

(assert (=> bm!438589 m!6689610))

(declare-fun m!6689612 () Bool)

(assert (=> b!5737424 m!6689612))

(assert (=> start!590272 d!1808768))

(assert (=> b!5736299 d!1808516))

(assert (=> b!5736299 d!1808522))

(declare-fun d!1808770 () Bool)

(declare-fun dynLambda!24816 (Int Context!10258) Context!10258)

(assert (=> d!1808770 (= (map!14538 lt!2283821 lambda!310889) (store ((as const (Array Context!10258 Bool)) false) (dynLambda!24816 lambda!310889 lt!2283807) true))))

(declare-fun lt!2284087 () Unit!156512)

(declare-fun choose!43499 ((InoxSet Context!10258) Context!10258 Int) Unit!156512)

(assert (=> d!1808770 (= lt!2284087 (choose!43499 lt!2283821 lt!2283807 lambda!310889))))

(assert (=> d!1808770 (= lt!2283821 (store ((as const (Array Context!10258 Bool)) false) lt!2283807 true))))

(assert (=> d!1808770 (= (lemmaMapOnSingletonSet!140 lt!2283821 lt!2283807 lambda!310889) lt!2284087)))

(declare-fun b_lambda!216671 () Bool)

(assert (=> (not b_lambda!216671) (not d!1808770)))

(declare-fun bs!1341121 () Bool)

(assert (= bs!1341121 d!1808770))

(declare-fun m!6689614 () Bool)

(assert (=> bs!1341121 m!6689614))

(assert (=> bs!1341121 m!6688244))

(assert (=> bs!1341121 m!6688340))

(declare-fun m!6689616 () Bool)

(assert (=> bs!1341121 m!6689616))

(assert (=> bs!1341121 m!6689614))

(declare-fun m!6689618 () Bool)

(assert (=> bs!1341121 m!6689618))

(assert (=> b!5736299 d!1808770))

(declare-fun d!1808772 () Bool)

(declare-fun choose!43500 ((InoxSet Context!10258) Int) (InoxSet Context!10258))

(assert (=> d!1808772 (= (map!14538 lt!2283821 lambda!310889) (choose!43500 lt!2283821 lambda!310889))))

(declare-fun bs!1341122 () Bool)

(assert (= bs!1341122 d!1808772))

(declare-fun m!6689620 () Bool)

(assert (=> bs!1341122 m!6689620))

(assert (=> b!5736299 d!1808772))

(declare-fun bs!1341123 () Bool)

(declare-fun d!1808774 () Bool)

(assert (= bs!1341123 (and d!1808774 b!5736299)))

(declare-fun lambda!310993 () Int)

(assert (=> bs!1341123 (= (= (exprs!5629 lt!2283815) lt!2283809) (= lambda!310993 lambda!310889))))

(assert (=> d!1808774 true))

(assert (=> d!1808774 (= (appendTo!124 lt!2283821 lt!2283815) (map!14538 lt!2283821 lambda!310993))))

(declare-fun bs!1341124 () Bool)

(assert (= bs!1341124 d!1808774))

(declare-fun m!6689622 () Bool)

(assert (=> bs!1341124 m!6689622))

(assert (=> b!5736299 d!1808774))

(declare-fun e!3527030 () Bool)

(declare-fun d!1808776 () Bool)

(assert (=> d!1808776 (= (matchZipper!1883 ((_ map or) lt!2283814 lt!2283825) (t!376862 s!2326)) e!3527030)))

(declare-fun res!2423079 () Bool)

(assert (=> d!1808776 (=> res!2423079 e!3527030)))

(assert (=> d!1808776 (= res!2423079 (matchZipper!1883 lt!2283814 (t!376862 s!2326)))))

(declare-fun lt!2284092 () Unit!156512)

(declare-fun choose!43501 ((InoxSet Context!10258) (InoxSet Context!10258) List!63534) Unit!156512)

(assert (=> d!1808776 (= lt!2284092 (choose!43501 lt!2283814 lt!2283825 (t!376862 s!2326)))))

(assert (=> d!1808776 (= (lemmaZipperConcatMatchesSameAsBothZippers!770 lt!2283814 lt!2283825 (t!376862 s!2326)) lt!2284092)))

(declare-fun b!5737433 () Bool)

(assert (=> b!5737433 (= e!3527030 (matchZipper!1883 lt!2283825 (t!376862 s!2326)))))

(assert (= (and d!1808776 (not res!2423079)) b!5737433))

(assert (=> d!1808776 m!6688256))

(assert (=> d!1808776 m!6688254))

(declare-fun m!6689624 () Bool)

(assert (=> d!1808776 m!6689624))

(assert (=> b!5737433 m!6688262))

(assert (=> b!5736292 d!1808776))

(assert (=> b!5736292 d!1808634))

(declare-fun d!1808778 () Bool)

(declare-fun c!1012533 () Bool)

(assert (=> d!1808778 (= c!1012533 (isEmpty!35292 (t!376862 s!2326)))))

(declare-fun e!3527031 () Bool)

(assert (=> d!1808778 (= (matchZipper!1883 ((_ map or) lt!2283814 lt!2283825) (t!376862 s!2326)) e!3527031)))

(declare-fun b!5737434 () Bool)

(assert (=> b!5737434 (= e!3527031 (nullableZipper!1683 ((_ map or) lt!2283814 lt!2283825)))))

(declare-fun b!5737435 () Bool)

(assert (=> b!5737435 (= e!3527031 (matchZipper!1883 (derivationStepZipper!1828 ((_ map or) lt!2283814 lt!2283825) (head!12146 (t!376862 s!2326))) (tail!11241 (t!376862 s!2326))))))

(assert (= (and d!1808778 c!1012533) b!5737434))

(assert (= (and d!1808778 (not c!1012533)) b!5737435))

(assert (=> d!1808778 m!6689100))

(declare-fun m!6689626 () Bool)

(assert (=> b!5737434 m!6689626))

(assert (=> b!5737435 m!6689104))

(assert (=> b!5737435 m!6689104))

(declare-fun m!6689628 () Bool)

(assert (=> b!5737435 m!6689628))

(assert (=> b!5737435 m!6689108))

(assert (=> b!5737435 m!6689628))

(assert (=> b!5737435 m!6689108))

(declare-fun m!6689630 () Bool)

(assert (=> b!5737435 m!6689630))

(assert (=> b!5736292 d!1808778))

(assert (=> b!5736272 d!1808652))

(declare-fun bs!1341125 () Bool)

(declare-fun d!1808780 () Bool)

(assert (= bs!1341125 (and d!1808780 b!5736299)))

(declare-fun lambda!310994 () Int)

(assert (=> bs!1341125 (= lambda!310994 lambda!310890)))

(declare-fun bs!1341126 () Bool)

(assert (= bs!1341126 (and d!1808780 d!1808524)))

(assert (=> bs!1341126 (= lambda!310994 lambda!310929)))

(declare-fun bs!1341127 () Bool)

(assert (= bs!1341127 (and d!1808780 d!1808626)))

(assert (=> bs!1341127 (= lambda!310994 lambda!310966)))

(assert (=> d!1808780 (= (inv!82609 (h!69860 zl!343)) (forall!14868 (exprs!5629 (h!69860 zl!343)) lambda!310994))))

(declare-fun bs!1341128 () Bool)

(assert (= bs!1341128 d!1808780))

(declare-fun m!6689632 () Bool)

(assert (=> bs!1341128 m!6689632))

(assert (=> b!5736293 d!1808780))

(declare-fun b!5737437 () Bool)

(declare-fun res!2423086 () Bool)

(declare-fun e!3527034 () Bool)

(assert (=> b!5737437 (=> (not res!2423086) (not e!3527034))))

(assert (=> b!5737437 (= res!2423086 (isEmpty!35292 (tail!11241 (_2!36145 lt!2283811))))))

(declare-fun b!5737438 () Bool)

(declare-fun e!3527033 () Bool)

(declare-fun e!3527036 () Bool)

(assert (=> b!5737438 (= e!3527033 e!3527036)))

(declare-fun c!1012536 () Bool)

(assert (=> b!5737438 (= c!1012536 ((_ is EmptyLang!15745) lt!2283853))))

(declare-fun b!5737439 () Bool)

(declare-fun e!3527037 () Bool)

(declare-fun e!3527035 () Bool)

(assert (=> b!5737439 (= e!3527037 e!3527035)))

(declare-fun res!2423087 () Bool)

(assert (=> b!5737439 (=> (not res!2423087) (not e!3527035))))

(declare-fun lt!2284093 () Bool)

(assert (=> b!5737439 (= res!2423087 (not lt!2284093))))

(declare-fun b!5737440 () Bool)

(declare-fun e!3527038 () Bool)

(assert (=> b!5737440 (= e!3527038 (nullable!5777 lt!2283853))))

(declare-fun b!5737441 () Bool)

(declare-fun e!3527032 () Bool)

(assert (=> b!5737441 (= e!3527032 (not (= (head!12146 (_2!36145 lt!2283811)) (c!1012253 lt!2283853))))))

(declare-fun b!5737442 () Bool)

(declare-fun res!2423084 () Bool)

(assert (=> b!5737442 (=> (not res!2423084) (not e!3527034))))

(declare-fun call!438596 () Bool)

(assert (=> b!5737442 (= res!2423084 (not call!438596))))

(declare-fun b!5737443 () Bool)

(declare-fun res!2423085 () Bool)

(assert (=> b!5737443 (=> res!2423085 e!3527037)))

(assert (=> b!5737443 (= res!2423085 (not ((_ is ElementMatch!15745) lt!2283853)))))

(assert (=> b!5737443 (= e!3527036 e!3527037)))

(declare-fun bm!438591 () Bool)

(assert (=> bm!438591 (= call!438596 (isEmpty!35292 (_2!36145 lt!2283811)))))

(declare-fun b!5737444 () Bool)

(assert (=> b!5737444 (= e!3527038 (matchR!7930 (derivativeStep!4536 lt!2283853 (head!12146 (_2!36145 lt!2283811))) (tail!11241 (_2!36145 lt!2283811))))))

(declare-fun b!5737445 () Bool)

(assert (=> b!5737445 (= e!3527034 (= (head!12146 (_2!36145 lt!2283811)) (c!1012253 lt!2283853)))))

(declare-fun b!5737446 () Bool)

(declare-fun res!2423083 () Bool)

(assert (=> b!5737446 (=> res!2423083 e!3527037)))

(assert (=> b!5737446 (= res!2423083 e!3527034)))

(declare-fun res!2423080 () Bool)

(assert (=> b!5737446 (=> (not res!2423080) (not e!3527034))))

(assert (=> b!5737446 (= res!2423080 lt!2284093)))

(declare-fun b!5737447 () Bool)

(assert (=> b!5737447 (= e!3527033 (= lt!2284093 call!438596))))

(declare-fun d!1808782 () Bool)

(assert (=> d!1808782 e!3527033))

(declare-fun c!1012535 () Bool)

(assert (=> d!1808782 (= c!1012535 ((_ is EmptyExpr!15745) lt!2283853))))

(assert (=> d!1808782 (= lt!2284093 e!3527038)))

(declare-fun c!1012534 () Bool)

(assert (=> d!1808782 (= c!1012534 (isEmpty!35292 (_2!36145 lt!2283811)))))

(assert (=> d!1808782 (validRegex!7481 lt!2283853)))

(assert (=> d!1808782 (= (matchR!7930 lt!2283853 (_2!36145 lt!2283811)) lt!2284093)))

(declare-fun b!5737436 () Bool)

(assert (=> b!5737436 (= e!3527036 (not lt!2284093))))

(declare-fun b!5737448 () Bool)

(declare-fun res!2423082 () Bool)

(assert (=> b!5737448 (=> res!2423082 e!3527032)))

(assert (=> b!5737448 (= res!2423082 (not (isEmpty!35292 (tail!11241 (_2!36145 lt!2283811)))))))

(declare-fun b!5737449 () Bool)

(assert (=> b!5737449 (= e!3527035 e!3527032)))

(declare-fun res!2423081 () Bool)

(assert (=> b!5737449 (=> res!2423081 e!3527032)))

(assert (=> b!5737449 (= res!2423081 call!438596)))

(assert (= (and d!1808782 c!1012534) b!5737440))

(assert (= (and d!1808782 (not c!1012534)) b!5737444))

(assert (= (and d!1808782 c!1012535) b!5737447))

(assert (= (and d!1808782 (not c!1012535)) b!5737438))

(assert (= (and b!5737438 c!1012536) b!5737436))

(assert (= (and b!5737438 (not c!1012536)) b!5737443))

(assert (= (and b!5737443 (not res!2423085)) b!5737446))

(assert (= (and b!5737446 res!2423080) b!5737442))

(assert (= (and b!5737442 res!2423084) b!5737437))

(assert (= (and b!5737437 res!2423086) b!5737445))

(assert (= (and b!5737446 (not res!2423083)) b!5737439))

(assert (= (and b!5737439 res!2423087) b!5737449))

(assert (= (and b!5737449 (not res!2423081)) b!5737448))

(assert (= (and b!5737448 (not res!2423082)) b!5737441))

(assert (= (or b!5737447 b!5737442 b!5737449) bm!438591))

(assert (=> b!5737440 m!6689290))

(declare-fun m!6689634 () Bool)

(assert (=> b!5737441 m!6689634))

(assert (=> b!5737444 m!6689634))

(assert (=> b!5737444 m!6689634))

(declare-fun m!6689636 () Bool)

(assert (=> b!5737444 m!6689636))

(declare-fun m!6689638 () Bool)

(assert (=> b!5737444 m!6689638))

(assert (=> b!5737444 m!6689636))

(assert (=> b!5737444 m!6689638))

(declare-fun m!6689640 () Bool)

(assert (=> b!5737444 m!6689640))

(assert (=> b!5737445 m!6689634))

(assert (=> b!5737437 m!6689638))

(assert (=> b!5737437 m!6689638))

(declare-fun m!6689642 () Bool)

(assert (=> b!5737437 m!6689642))

(declare-fun m!6689644 () Bool)

(assert (=> d!1808782 m!6689644))

(assert (=> d!1808782 m!6688914))

(assert (=> b!5737448 m!6689638))

(assert (=> b!5737448 m!6689638))

(assert (=> b!5737448 m!6689642))

(assert (=> bm!438591 m!6689644))

(assert (=> b!5736291 d!1808782))

(declare-fun d!1808784 () Bool)

(assert (=> d!1808784 (= (flatMap!1358 lt!2283857 lambda!310888) (choose!43490 lt!2283857 lambda!310888))))

(declare-fun bs!1341129 () Bool)

(assert (= bs!1341129 d!1808784))

(declare-fun m!6689646 () Bool)

(assert (=> bs!1341129 m!6689646))

(assert (=> b!5736295 d!1808784))

(declare-fun b!5737450 () Bool)

(declare-fun e!3527039 () (InoxSet Context!10258))

(declare-fun e!3527041 () (InoxSet Context!10258))

(assert (=> b!5737450 (= e!3527039 e!3527041)))

(declare-fun c!1012538 () Bool)

(assert (=> b!5737450 (= c!1012538 ((_ is Cons!63411) (exprs!5629 lt!2283796)))))

(declare-fun bm!438592 () Bool)

(declare-fun call!438597 () (InoxSet Context!10258))

(assert (=> bm!438592 (= call!438597 (derivationStepZipperDown!1087 (h!69859 (exprs!5629 lt!2283796)) (Context!10259 (t!376863 (exprs!5629 lt!2283796))) (h!69858 s!2326)))))

(declare-fun b!5737451 () Bool)

(assert (=> b!5737451 (= e!3527039 ((_ map or) call!438597 (derivationStepZipperUp!1013 (Context!10259 (t!376863 (exprs!5629 lt!2283796))) (h!69858 s!2326))))))

(declare-fun b!5737452 () Bool)

(declare-fun e!3527040 () Bool)

(assert (=> b!5737452 (= e!3527040 (nullable!5777 (h!69859 (exprs!5629 lt!2283796))))))

(declare-fun d!1808786 () Bool)

(declare-fun c!1012537 () Bool)

(assert (=> d!1808786 (= c!1012537 e!3527040)))

(declare-fun res!2423088 () Bool)

(assert (=> d!1808786 (=> (not res!2423088) (not e!3527040))))

(assert (=> d!1808786 (= res!2423088 ((_ is Cons!63411) (exprs!5629 lt!2283796)))))

(assert (=> d!1808786 (= (derivationStepZipperUp!1013 lt!2283796 (h!69858 s!2326)) e!3527039)))

(declare-fun b!5737453 () Bool)

(assert (=> b!5737453 (= e!3527041 call!438597)))

(declare-fun b!5737454 () Bool)

(assert (=> b!5737454 (= e!3527041 ((as const (Array Context!10258 Bool)) false))))

(assert (= (and d!1808786 res!2423088) b!5737452))

(assert (= (and d!1808786 c!1012537) b!5737451))

(assert (= (and d!1808786 (not c!1012537)) b!5737450))

(assert (= (and b!5737450 c!1012538) b!5737453))

(assert (= (and b!5737450 (not c!1012538)) b!5737454))

(assert (= (or b!5737451 b!5737453) bm!438592))

(declare-fun m!6689648 () Bool)

(assert (=> bm!438592 m!6689648))

(declare-fun m!6689650 () Bool)

(assert (=> b!5737451 m!6689650))

(declare-fun m!6689652 () Bool)

(assert (=> b!5737452 m!6689652))

(assert (=> b!5736295 d!1808786))

(declare-fun d!1808788 () Bool)

(assert (=> d!1808788 (= (flatMap!1358 lt!2283857 lambda!310888) (dynLambda!24815 lambda!310888 lt!2283796))))

(declare-fun lt!2284094 () Unit!156512)

(assert (=> d!1808788 (= lt!2284094 (choose!43488 lt!2283857 lt!2283796 lambda!310888))))

(assert (=> d!1808788 (= lt!2283857 (store ((as const (Array Context!10258 Bool)) false) lt!2283796 true))))

(assert (=> d!1808788 (= (lemmaFlatMapOnSingletonSet!890 lt!2283857 lt!2283796 lambda!310888) lt!2284094)))

(declare-fun b_lambda!216673 () Bool)

(assert (=> (not b_lambda!216673) (not d!1808788)))

(declare-fun bs!1341130 () Bool)

(assert (= bs!1341130 d!1808788))

(assert (=> bs!1341130 m!6688420))

(declare-fun m!6689654 () Bool)

(assert (=> bs!1341130 m!6689654))

(declare-fun m!6689656 () Bool)

(assert (=> bs!1341130 m!6689656))

(assert (=> bs!1341130 m!6688414))

(assert (=> b!5736295 d!1808788))

(declare-fun bs!1341131 () Bool)

(declare-fun d!1808790 () Bool)

(assert (= bs!1341131 (and d!1808790 b!5736294)))

(declare-fun lambda!310997 () Int)

(assert (=> bs!1341131 (= lambda!310997 lambda!310888)))

(assert (=> d!1808790 true))

(assert (=> d!1808790 (= (derivationStepZipper!1828 lt!2283857 (h!69858 s!2326)) (flatMap!1358 lt!2283857 lambda!310997))))

(declare-fun bs!1341132 () Bool)

(assert (= bs!1341132 d!1808790))

(declare-fun m!6689658 () Bool)

(assert (=> bs!1341132 m!6689658))

(assert (=> b!5736295 d!1808790))

(declare-fun bs!1341133 () Bool)

(declare-fun d!1808792 () Bool)

(assert (= bs!1341133 (and d!1808792 b!5736299)))

(declare-fun lambda!311000 () Int)

(assert (=> bs!1341133 (= lambda!311000 lambda!310890)))

(declare-fun bs!1341134 () Bool)

(assert (= bs!1341134 (and d!1808792 d!1808524)))

(assert (=> bs!1341134 (= lambda!311000 lambda!310929)))

(declare-fun bs!1341135 () Bool)

(assert (= bs!1341135 (and d!1808792 d!1808626)))

(assert (=> bs!1341135 (= lambda!311000 lambda!310966)))

(declare-fun bs!1341136 () Bool)

(assert (= bs!1341136 (and d!1808792 d!1808780)))

(assert (=> bs!1341136 (= lambda!311000 lambda!310994)))

(declare-fun b!5737477 () Bool)

(declare-fun e!3527058 () Bool)

(declare-fun lt!2284097 () Regex!15745)

(declare-fun isUnion!682 (Regex!15745) Bool)

(assert (=> b!5737477 (= e!3527058 (isUnion!682 lt!2284097))))

(declare-fun b!5737478 () Bool)

(declare-fun head!12147 (List!63535) Regex!15745)

(assert (=> b!5737478 (= e!3527058 (= lt!2284097 (head!12147 (unfocusZipperList!1173 zl!343))))))

(declare-fun b!5737479 () Bool)

(declare-fun e!3527059 () Bool)

(declare-fun e!3527057 () Bool)

(assert (=> b!5737479 (= e!3527059 e!3527057)))

(declare-fun c!1012549 () Bool)

(assert (=> b!5737479 (= c!1012549 (isEmpty!35289 (unfocusZipperList!1173 zl!343)))))

(declare-fun b!5737480 () Bool)

(declare-fun isEmptyLang!1252 (Regex!15745) Bool)

(assert (=> b!5737480 (= e!3527057 (isEmptyLang!1252 lt!2284097))))

(assert (=> d!1808792 e!3527059))

(declare-fun res!2423094 () Bool)

(assert (=> d!1808792 (=> (not res!2423094) (not e!3527059))))

(assert (=> d!1808792 (= res!2423094 (validRegex!7481 lt!2284097))))

(declare-fun e!3527055 () Regex!15745)

(assert (=> d!1808792 (= lt!2284097 e!3527055)))

(declare-fun c!1012551 () Bool)

(declare-fun e!3527056 () Bool)

(assert (=> d!1808792 (= c!1012551 e!3527056)))

(declare-fun res!2423093 () Bool)

(assert (=> d!1808792 (=> (not res!2423093) (not e!3527056))))

(assert (=> d!1808792 (= res!2423093 ((_ is Cons!63411) (unfocusZipperList!1173 zl!343)))))

(assert (=> d!1808792 (forall!14868 (unfocusZipperList!1173 zl!343) lambda!311000)))

(assert (=> d!1808792 (= (generalisedUnion!1608 (unfocusZipperList!1173 zl!343)) lt!2284097)))

(declare-fun b!5737481 () Bool)

(assert (=> b!5737481 (= e!3527057 e!3527058)))

(declare-fun c!1012550 () Bool)

(declare-fun tail!11242 (List!63535) List!63535)

(assert (=> b!5737481 (= c!1012550 (isEmpty!35289 (tail!11242 (unfocusZipperList!1173 zl!343))))))

(declare-fun b!5737482 () Bool)

(declare-fun e!3527054 () Regex!15745)

(assert (=> b!5737482 (= e!3527055 e!3527054)))

(declare-fun c!1012552 () Bool)

(assert (=> b!5737482 (= c!1012552 ((_ is Cons!63411) (unfocusZipperList!1173 zl!343)))))

(declare-fun b!5737483 () Bool)

(assert (=> b!5737483 (= e!3527054 EmptyLang!15745)))

(declare-fun b!5737484 () Bool)

(assert (=> b!5737484 (= e!3527056 (isEmpty!35289 (t!376863 (unfocusZipperList!1173 zl!343))))))

(declare-fun b!5737485 () Bool)

(assert (=> b!5737485 (= e!3527054 (Union!15745 (h!69859 (unfocusZipperList!1173 zl!343)) (generalisedUnion!1608 (t!376863 (unfocusZipperList!1173 zl!343)))))))

(declare-fun b!5737486 () Bool)

(assert (=> b!5737486 (= e!3527055 (h!69859 (unfocusZipperList!1173 zl!343)))))

(assert (= (and d!1808792 res!2423093) b!5737484))

(assert (= (and d!1808792 c!1012551) b!5737486))

(assert (= (and d!1808792 (not c!1012551)) b!5737482))

(assert (= (and b!5737482 c!1012552) b!5737485))

(assert (= (and b!5737482 (not c!1012552)) b!5737483))

(assert (= (and d!1808792 res!2423094) b!5737479))

(assert (= (and b!5737479 c!1012549) b!5737480))

(assert (= (and b!5737479 (not c!1012549)) b!5737481))

(assert (= (and b!5737481 c!1012550) b!5737478))

(assert (= (and b!5737481 (not c!1012550)) b!5737477))

(declare-fun m!6689660 () Bool)

(assert (=> d!1808792 m!6689660))

(assert (=> d!1808792 m!6688410))

(declare-fun m!6689662 () Bool)

(assert (=> d!1808792 m!6689662))

(assert (=> b!5737481 m!6688410))

(declare-fun m!6689664 () Bool)

(assert (=> b!5737481 m!6689664))

(assert (=> b!5737481 m!6689664))

(declare-fun m!6689666 () Bool)

(assert (=> b!5737481 m!6689666))

(declare-fun m!6689668 () Bool)

(assert (=> b!5737477 m!6689668))

(declare-fun m!6689670 () Bool)

(assert (=> b!5737485 m!6689670))

(declare-fun m!6689672 () Bool)

(assert (=> b!5737484 m!6689672))

(assert (=> b!5737478 m!6688410))

(declare-fun m!6689674 () Bool)

(assert (=> b!5737478 m!6689674))

(declare-fun m!6689676 () Bool)

(assert (=> b!5737480 m!6689676))

(assert (=> b!5737479 m!6688410))

(declare-fun m!6689678 () Bool)

(assert (=> b!5737479 m!6689678))

(assert (=> b!5736273 d!1808792))

(declare-fun bs!1341137 () Bool)

(declare-fun d!1808794 () Bool)

(assert (= bs!1341137 (and d!1808794 b!5736299)))

(declare-fun lambda!311003 () Int)

(assert (=> bs!1341137 (= lambda!311003 lambda!310890)))

(declare-fun bs!1341138 () Bool)

(assert (= bs!1341138 (and d!1808794 d!1808780)))

(assert (=> bs!1341138 (= lambda!311003 lambda!310994)))

(declare-fun bs!1341139 () Bool)

(assert (= bs!1341139 (and d!1808794 d!1808626)))

(assert (=> bs!1341139 (= lambda!311003 lambda!310966)))

(declare-fun bs!1341140 () Bool)

(assert (= bs!1341140 (and d!1808794 d!1808792)))

(assert (=> bs!1341140 (= lambda!311003 lambda!311000)))

(declare-fun bs!1341141 () Bool)

(assert (= bs!1341141 (and d!1808794 d!1808524)))

(assert (=> bs!1341141 (= lambda!311003 lambda!310929)))

(declare-fun lt!2284100 () List!63535)

(assert (=> d!1808794 (forall!14868 lt!2284100 lambda!311003)))

(declare-fun e!3527062 () List!63535)

(assert (=> d!1808794 (= lt!2284100 e!3527062)))

(declare-fun c!1012555 () Bool)

(assert (=> d!1808794 (= c!1012555 ((_ is Cons!63412) zl!343))))

(assert (=> d!1808794 (= (unfocusZipperList!1173 zl!343) lt!2284100)))

(declare-fun b!5737491 () Bool)

(assert (=> b!5737491 (= e!3527062 (Cons!63411 (generalisedConcat!1360 (exprs!5629 (h!69860 zl!343))) (unfocusZipperList!1173 (t!376864 zl!343))))))

(declare-fun b!5737492 () Bool)

(assert (=> b!5737492 (= e!3527062 Nil!63411)))

(assert (= (and d!1808794 c!1012555) b!5737491))

(assert (= (and d!1808794 (not c!1012555)) b!5737492))

(declare-fun m!6689680 () Bool)

(assert (=> d!1808794 m!6689680))

(assert (=> b!5737491 m!6688312))

(declare-fun m!6689682 () Bool)

(assert (=> b!5737491 m!6689682))

(assert (=> b!5736273 d!1808794))

(declare-fun b!5737493 () Bool)

(declare-fun e!3527063 () (InoxSet Context!10258))

(declare-fun e!3527065 () (InoxSet Context!10258))

(assert (=> b!5737493 (= e!3527063 e!3527065)))

(declare-fun c!1012557 () Bool)

(assert (=> b!5737493 (= c!1012557 ((_ is Cons!63411) (exprs!5629 (Context!10259 (Cons!63411 (h!69859 (exprs!5629 (h!69860 zl!343))) (t!376863 (exprs!5629 (h!69860 zl!343))))))))))

(declare-fun bm!438593 () Bool)

(declare-fun call!438598 () (InoxSet Context!10258))

(assert (=> bm!438593 (= call!438598 (derivationStepZipperDown!1087 (h!69859 (exprs!5629 (Context!10259 (Cons!63411 (h!69859 (exprs!5629 (h!69860 zl!343))) (t!376863 (exprs!5629 (h!69860 zl!343))))))) (Context!10259 (t!376863 (exprs!5629 (Context!10259 (Cons!63411 (h!69859 (exprs!5629 (h!69860 zl!343))) (t!376863 (exprs!5629 (h!69860 zl!343)))))))) (h!69858 s!2326)))))

(declare-fun b!5737494 () Bool)

(assert (=> b!5737494 (= e!3527063 ((_ map or) call!438598 (derivationStepZipperUp!1013 (Context!10259 (t!376863 (exprs!5629 (Context!10259 (Cons!63411 (h!69859 (exprs!5629 (h!69860 zl!343))) (t!376863 (exprs!5629 (h!69860 zl!343)))))))) (h!69858 s!2326))))))

(declare-fun b!5737495 () Bool)

(declare-fun e!3527064 () Bool)

(assert (=> b!5737495 (= e!3527064 (nullable!5777 (h!69859 (exprs!5629 (Context!10259 (Cons!63411 (h!69859 (exprs!5629 (h!69860 zl!343))) (t!376863 (exprs!5629 (h!69860 zl!343)))))))))))

(declare-fun d!1808796 () Bool)

(declare-fun c!1012556 () Bool)

(assert (=> d!1808796 (= c!1012556 e!3527064)))

(declare-fun res!2423095 () Bool)

(assert (=> d!1808796 (=> (not res!2423095) (not e!3527064))))

(assert (=> d!1808796 (= res!2423095 ((_ is Cons!63411) (exprs!5629 (Context!10259 (Cons!63411 (h!69859 (exprs!5629 (h!69860 zl!343))) (t!376863 (exprs!5629 (h!69860 zl!343))))))))))

(assert (=> d!1808796 (= (derivationStepZipperUp!1013 (Context!10259 (Cons!63411 (h!69859 (exprs!5629 (h!69860 zl!343))) (t!376863 (exprs!5629 (h!69860 zl!343))))) (h!69858 s!2326)) e!3527063)))

(declare-fun b!5737496 () Bool)

(assert (=> b!5737496 (= e!3527065 call!438598)))

(declare-fun b!5737497 () Bool)

(assert (=> b!5737497 (= e!3527065 ((as const (Array Context!10258 Bool)) false))))

(assert (= (and d!1808796 res!2423095) b!5737495))

(assert (= (and d!1808796 c!1012556) b!5737494))

(assert (= (and d!1808796 (not c!1012556)) b!5737493))

(assert (= (and b!5737493 c!1012557) b!5737496))

(assert (= (and b!5737493 (not c!1012557)) b!5737497))

(assert (= (or b!5737494 b!5737496) bm!438593))

(declare-fun m!6689684 () Bool)

(assert (=> bm!438593 m!6689684))

(declare-fun m!6689686 () Bool)

(assert (=> b!5737494 m!6689686))

(declare-fun m!6689688 () Bool)

(assert (=> b!5737495 m!6689688))

(assert (=> b!5736294 d!1808796))

(declare-fun bm!438606 () Bool)

(declare-fun call!438612 () (InoxSet Context!10258))

(declare-fun call!438616 () (InoxSet Context!10258))

(assert (=> bm!438606 (= call!438612 call!438616)))

(declare-fun b!5737520 () Bool)

(declare-fun e!3527083 () (InoxSet Context!10258))

(declare-fun e!3527080 () (InoxSet Context!10258))

(assert (=> b!5737520 (= e!3527083 e!3527080)))

(declare-fun c!1012569 () Bool)

(assert (=> b!5737520 (= c!1012569 ((_ is Union!15745) (h!69859 (exprs!5629 (h!69860 zl!343)))))))

(declare-fun b!5737521 () Bool)

(declare-fun e!3527081 () (InoxSet Context!10258))

(assert (=> b!5737521 (= e!3527081 call!438612)))

(declare-fun b!5737522 () Bool)

(declare-fun e!3527079 () (InoxSet Context!10258))

(assert (=> b!5737522 (= e!3527079 e!3527081)))

(declare-fun c!1012572 () Bool)

(assert (=> b!5737522 (= c!1012572 ((_ is Concat!24590) (h!69859 (exprs!5629 (h!69860 zl!343)))))))

(declare-fun c!1012571 () Bool)

(declare-fun bm!438607 () Bool)

(declare-fun call!438614 () List!63535)

(declare-fun $colon$colon!1750 (List!63535 Regex!15745) List!63535)

(assert (=> bm!438607 (= call!438614 ($colon$colon!1750 (exprs!5629 lt!2283832) (ite (or c!1012571 c!1012572) (regTwo!32002 (h!69859 (exprs!5629 (h!69860 zl!343)))) (h!69859 (exprs!5629 (h!69860 zl!343))))))))

(declare-fun b!5737523 () Bool)

(declare-fun call!438615 () (InoxSet Context!10258))

(assert (=> b!5737523 (= e!3527079 ((_ map or) call!438615 call!438616))))

(declare-fun b!5737524 () Bool)

(declare-fun e!3527082 () (InoxSet Context!10258))

(assert (=> b!5737524 (= e!3527082 ((as const (Array Context!10258 Bool)) false))))

(declare-fun d!1808798 () Bool)

(declare-fun c!1012568 () Bool)

(assert (=> d!1808798 (= c!1012568 (and ((_ is ElementMatch!15745) (h!69859 (exprs!5629 (h!69860 zl!343)))) (= (c!1012253 (h!69859 (exprs!5629 (h!69860 zl!343)))) (h!69858 s!2326))))))

(assert (=> d!1808798 (= (derivationStepZipperDown!1087 (h!69859 (exprs!5629 (h!69860 zl!343))) lt!2283832 (h!69858 s!2326)) e!3527083)))

(declare-fun b!5737525 () Bool)

(declare-fun c!1012570 () Bool)

(assert (=> b!5737525 (= c!1012570 ((_ is Star!15745) (h!69859 (exprs!5629 (h!69860 zl!343)))))))

(assert (=> b!5737525 (= e!3527081 e!3527082)))

(declare-fun b!5737526 () Bool)

(declare-fun e!3527078 () Bool)

(assert (=> b!5737526 (= c!1012571 e!3527078)))

(declare-fun res!2423098 () Bool)

(assert (=> b!5737526 (=> (not res!2423098) (not e!3527078))))

(assert (=> b!5737526 (= res!2423098 ((_ is Concat!24590) (h!69859 (exprs!5629 (h!69860 zl!343)))))))

(assert (=> b!5737526 (= e!3527080 e!3527079)))

(declare-fun b!5737527 () Bool)

(assert (=> b!5737527 (= e!3527082 call!438612)))

(declare-fun b!5737528 () Bool)

(declare-fun call!438611 () (InoxSet Context!10258))

(assert (=> b!5737528 (= e!3527080 ((_ map or) call!438615 call!438611))))

(declare-fun bm!438608 () Bool)

(assert (=> bm!438608 (= call!438616 call!438611)))

(declare-fun call!438613 () List!63535)

(declare-fun bm!438609 () Bool)

(assert (=> bm!438609 (= call!438611 (derivationStepZipperDown!1087 (ite c!1012569 (regTwo!32003 (h!69859 (exprs!5629 (h!69860 zl!343)))) (ite c!1012571 (regTwo!32002 (h!69859 (exprs!5629 (h!69860 zl!343)))) (ite c!1012572 (regOne!32002 (h!69859 (exprs!5629 (h!69860 zl!343)))) (reg!16074 (h!69859 (exprs!5629 (h!69860 zl!343))))))) (ite (or c!1012569 c!1012571) lt!2283832 (Context!10259 call!438613)) (h!69858 s!2326)))))

(declare-fun b!5737529 () Bool)

(assert (=> b!5737529 (= e!3527078 (nullable!5777 (regOne!32002 (h!69859 (exprs!5629 (h!69860 zl!343))))))))

(declare-fun bm!438610 () Bool)

(assert (=> bm!438610 (= call!438613 call!438614)))

(declare-fun b!5737530 () Bool)

(assert (=> b!5737530 (= e!3527083 (store ((as const (Array Context!10258 Bool)) false) lt!2283832 true))))

(declare-fun bm!438611 () Bool)

(assert (=> bm!438611 (= call!438615 (derivationStepZipperDown!1087 (ite c!1012569 (regOne!32003 (h!69859 (exprs!5629 (h!69860 zl!343)))) (regOne!32002 (h!69859 (exprs!5629 (h!69860 zl!343))))) (ite c!1012569 lt!2283832 (Context!10259 call!438614)) (h!69858 s!2326)))))

(assert (= (and d!1808798 c!1012568) b!5737530))

(assert (= (and d!1808798 (not c!1012568)) b!5737520))

(assert (= (and b!5737520 c!1012569) b!5737528))

(assert (= (and b!5737520 (not c!1012569)) b!5737526))

(assert (= (and b!5737526 res!2423098) b!5737529))

(assert (= (and b!5737526 c!1012571) b!5737523))

(assert (= (and b!5737526 (not c!1012571)) b!5737522))

(assert (= (and b!5737522 c!1012572) b!5737521))

(assert (= (and b!5737522 (not c!1012572)) b!5737525))

(assert (= (and b!5737525 c!1012570) b!5737527))

(assert (= (and b!5737525 (not c!1012570)) b!5737524))

(assert (= (or b!5737521 b!5737527) bm!438610))

(assert (= (or b!5737521 b!5737527) bm!438606))

(assert (= (or b!5737523 bm!438610) bm!438607))

(assert (= (or b!5737523 bm!438606) bm!438608))

(assert (= (or b!5737528 bm!438608) bm!438609))

(assert (= (or b!5737528 b!5737523) bm!438611))

(declare-fun m!6689690 () Bool)

(assert (=> b!5737530 m!6689690))

(declare-fun m!6689692 () Bool)

(assert (=> bm!438607 m!6689692))

(declare-fun m!6689694 () Bool)

(assert (=> bm!438611 m!6689694))

(declare-fun m!6689696 () Bool)

(assert (=> b!5737529 m!6689696))

(declare-fun m!6689698 () Bool)

(assert (=> bm!438609 m!6689698))

(assert (=> b!5736294 d!1808798))

(declare-fun d!1808800 () Bool)

(assert (=> d!1808800 (= (flatMap!1358 z!1189 lambda!310888) (dynLambda!24815 lambda!310888 (h!69860 zl!343)))))

(declare-fun lt!2284101 () Unit!156512)

(assert (=> d!1808800 (= lt!2284101 (choose!43488 z!1189 (h!69860 zl!343) lambda!310888))))

(assert (=> d!1808800 (= z!1189 (store ((as const (Array Context!10258 Bool)) false) (h!69860 zl!343) true))))

(assert (=> d!1808800 (= (lemmaFlatMapOnSingletonSet!890 z!1189 (h!69860 zl!343) lambda!310888) lt!2284101)))

(declare-fun b_lambda!216675 () Bool)

(assert (=> (not b_lambda!216675) (not d!1808800)))

(declare-fun bs!1341142 () Bool)

(assert (= bs!1341142 d!1808800))

(assert (=> bs!1341142 m!6688322))

(declare-fun m!6689700 () Bool)

(assert (=> bs!1341142 m!6689700))

(declare-fun m!6689702 () Bool)

(assert (=> bs!1341142 m!6689702))

(declare-fun m!6689704 () Bool)

(assert (=> bs!1341142 m!6689704))

(assert (=> b!5736294 d!1808800))

(declare-fun d!1808802 () Bool)

(assert (=> d!1808802 (= (nullable!5777 (h!69859 (exprs!5629 (h!69860 zl!343)))) (nullableFct!1829 (h!69859 (exprs!5629 (h!69860 zl!343)))))))

(declare-fun bs!1341143 () Bool)

(assert (= bs!1341143 d!1808802))

(declare-fun m!6689706 () Bool)

(assert (=> bs!1341143 m!6689706))

(assert (=> b!5736294 d!1808802))

(declare-fun d!1808804 () Bool)

(assert (=> d!1808804 (= (flatMap!1358 z!1189 lambda!310888) (choose!43490 z!1189 lambda!310888))))

(declare-fun bs!1341144 () Bool)

(assert (= bs!1341144 d!1808804))

(declare-fun m!6689708 () Bool)

(assert (=> bs!1341144 m!6689708))

(assert (=> b!5736294 d!1808804))

(declare-fun b!5737531 () Bool)

(declare-fun e!3527084 () (InoxSet Context!10258))

(declare-fun e!3527086 () (InoxSet Context!10258))

(assert (=> b!5737531 (= e!3527084 e!3527086)))

(declare-fun c!1012574 () Bool)

(assert (=> b!5737531 (= c!1012574 ((_ is Cons!63411) (exprs!5629 lt!2283832)))))

(declare-fun bm!438612 () Bool)

(declare-fun call!438617 () (InoxSet Context!10258))

(assert (=> bm!438612 (= call!438617 (derivationStepZipperDown!1087 (h!69859 (exprs!5629 lt!2283832)) (Context!10259 (t!376863 (exprs!5629 lt!2283832))) (h!69858 s!2326)))))

(declare-fun b!5737532 () Bool)

(assert (=> b!5737532 (= e!3527084 ((_ map or) call!438617 (derivationStepZipperUp!1013 (Context!10259 (t!376863 (exprs!5629 lt!2283832))) (h!69858 s!2326))))))

(declare-fun b!5737533 () Bool)

(declare-fun e!3527085 () Bool)

(assert (=> b!5737533 (= e!3527085 (nullable!5777 (h!69859 (exprs!5629 lt!2283832))))))

(declare-fun d!1808806 () Bool)

(declare-fun c!1012573 () Bool)

(assert (=> d!1808806 (= c!1012573 e!3527085)))

(declare-fun res!2423099 () Bool)

(assert (=> d!1808806 (=> (not res!2423099) (not e!3527085))))

(assert (=> d!1808806 (= res!2423099 ((_ is Cons!63411) (exprs!5629 lt!2283832)))))

(assert (=> d!1808806 (= (derivationStepZipperUp!1013 lt!2283832 (h!69858 s!2326)) e!3527084)))

(declare-fun b!5737534 () Bool)

(assert (=> b!5737534 (= e!3527086 call!438617)))

(declare-fun b!5737535 () Bool)

(assert (=> b!5737535 (= e!3527086 ((as const (Array Context!10258 Bool)) false))))

(assert (= (and d!1808806 res!2423099) b!5737533))

(assert (= (and d!1808806 c!1012573) b!5737532))

(assert (= (and d!1808806 (not c!1012573)) b!5737531))

(assert (= (and b!5737531 c!1012574) b!5737534))

(assert (= (and b!5737531 (not c!1012574)) b!5737535))

(assert (= (or b!5737532 b!5737534) bm!438612))

(declare-fun m!6689710 () Bool)

(assert (=> bm!438612 m!6689710))

(declare-fun m!6689712 () Bool)

(assert (=> b!5737532 m!6689712))

(declare-fun m!6689714 () Bool)

(assert (=> b!5737533 m!6689714))

(assert (=> b!5736294 d!1808806))

(declare-fun b!5737536 () Bool)

(declare-fun e!3527087 () (InoxSet Context!10258))

(declare-fun e!3527089 () (InoxSet Context!10258))

(assert (=> b!5737536 (= e!3527087 e!3527089)))

(declare-fun c!1012576 () Bool)

(assert (=> b!5737536 (= c!1012576 ((_ is Cons!63411) (exprs!5629 (h!69860 zl!343))))))

(declare-fun bm!438613 () Bool)

(declare-fun call!438618 () (InoxSet Context!10258))

(assert (=> bm!438613 (= call!438618 (derivationStepZipperDown!1087 (h!69859 (exprs!5629 (h!69860 zl!343))) (Context!10259 (t!376863 (exprs!5629 (h!69860 zl!343)))) (h!69858 s!2326)))))

(declare-fun b!5737537 () Bool)

(assert (=> b!5737537 (= e!3527087 ((_ map or) call!438618 (derivationStepZipperUp!1013 (Context!10259 (t!376863 (exprs!5629 (h!69860 zl!343)))) (h!69858 s!2326))))))

(declare-fun b!5737538 () Bool)

(declare-fun e!3527088 () Bool)

(assert (=> b!5737538 (= e!3527088 (nullable!5777 (h!69859 (exprs!5629 (h!69860 zl!343)))))))

(declare-fun d!1808808 () Bool)

(declare-fun c!1012575 () Bool)

(assert (=> d!1808808 (= c!1012575 e!3527088)))

(declare-fun res!2423100 () Bool)

(assert (=> d!1808808 (=> (not res!2423100) (not e!3527088))))

(assert (=> d!1808808 (= res!2423100 ((_ is Cons!63411) (exprs!5629 (h!69860 zl!343))))))

(assert (=> d!1808808 (= (derivationStepZipperUp!1013 (h!69860 zl!343) (h!69858 s!2326)) e!3527087)))

(declare-fun b!5737539 () Bool)

(assert (=> b!5737539 (= e!3527089 call!438618)))

(declare-fun b!5737540 () Bool)

(assert (=> b!5737540 (= e!3527089 ((as const (Array Context!10258 Bool)) false))))

(assert (= (and d!1808808 res!2423100) b!5737538))

(assert (= (and d!1808808 c!1012575) b!5737537))

(assert (= (and d!1808808 (not c!1012575)) b!5737536))

(assert (= (and b!5737536 c!1012576) b!5737539))

(assert (= (and b!5737536 (not c!1012576)) b!5737540))

(assert (= (or b!5737537 b!5737539) bm!438613))

(declare-fun m!6689716 () Bool)

(assert (=> bm!438613 m!6689716))

(declare-fun m!6689718 () Bool)

(assert (=> b!5737537 m!6689718))

(assert (=> b!5737538 m!6688324))

(assert (=> b!5736294 d!1808808))

(declare-fun d!1808810 () Bool)

(declare-fun e!3527092 () Bool)

(assert (=> d!1808810 e!3527092))

(declare-fun res!2423103 () Bool)

(assert (=> d!1808810 (=> (not res!2423103) (not e!3527092))))

(declare-fun lt!2284104 () List!63536)

(declare-fun noDuplicate!1663 (List!63536) Bool)

(assert (=> d!1808810 (= res!2423103 (noDuplicate!1663 lt!2284104))))

(declare-fun choose!43505 ((InoxSet Context!10258)) List!63536)

(assert (=> d!1808810 (= lt!2284104 (choose!43505 z!1189))))

(assert (=> d!1808810 (= (toList!9529 z!1189) lt!2284104)))

(declare-fun b!5737543 () Bool)

(declare-fun content!11558 (List!63536) (InoxSet Context!10258))

(assert (=> b!5737543 (= e!3527092 (= (content!11558 lt!2284104) z!1189))))

(assert (= (and d!1808810 res!2423103) b!5737543))

(declare-fun m!6689720 () Bool)

(assert (=> d!1808810 m!6689720))

(declare-fun m!6689722 () Bool)

(assert (=> d!1808810 m!6689722))

(declare-fun m!6689724 () Bool)

(assert (=> b!5737543 m!6689724))

(assert (=> b!5736274 d!1808810))

(declare-fun bm!438614 () Bool)

(declare-fun call!438620 () (InoxSet Context!10258))

(declare-fun call!438624 () (InoxSet Context!10258))

(assert (=> bm!438614 (= call!438620 call!438624)))

(declare-fun b!5737544 () Bool)

(declare-fun e!3527098 () (InoxSet Context!10258))

(declare-fun e!3527095 () (InoxSet Context!10258))

(assert (=> b!5737544 (= e!3527098 e!3527095)))

(declare-fun c!1012578 () Bool)

(assert (=> b!5737544 (= c!1012578 ((_ is Union!15745) (reg!16074 (regOne!32002 r!7292))))))

(declare-fun b!5737545 () Bool)

(declare-fun e!3527096 () (InoxSet Context!10258))

(assert (=> b!5737545 (= e!3527096 call!438620)))

(declare-fun b!5737546 () Bool)

(declare-fun e!3527094 () (InoxSet Context!10258))

(assert (=> b!5737546 (= e!3527094 e!3527096)))

(declare-fun c!1012581 () Bool)

(assert (=> b!5737546 (= c!1012581 ((_ is Concat!24590) (reg!16074 (regOne!32002 r!7292))))))

(declare-fun bm!438615 () Bool)

(declare-fun call!438622 () List!63535)

(declare-fun c!1012580 () Bool)

(assert (=> bm!438615 (= call!438622 ($colon$colon!1750 (exprs!5629 lt!2283815) (ite (or c!1012580 c!1012581) (regTwo!32002 (reg!16074 (regOne!32002 r!7292))) (reg!16074 (regOne!32002 r!7292)))))))

(declare-fun b!5737547 () Bool)

(declare-fun call!438623 () (InoxSet Context!10258))

(assert (=> b!5737547 (= e!3527094 ((_ map or) call!438623 call!438624))))

(declare-fun b!5737548 () Bool)

(declare-fun e!3527097 () (InoxSet Context!10258))

(assert (=> b!5737548 (= e!3527097 ((as const (Array Context!10258 Bool)) false))))

(declare-fun d!1808812 () Bool)

(declare-fun c!1012577 () Bool)

(assert (=> d!1808812 (= c!1012577 (and ((_ is ElementMatch!15745) (reg!16074 (regOne!32002 r!7292))) (= (c!1012253 (reg!16074 (regOne!32002 r!7292))) (h!69858 s!2326))))))

(assert (=> d!1808812 (= (derivationStepZipperDown!1087 (reg!16074 (regOne!32002 r!7292)) lt!2283815 (h!69858 s!2326)) e!3527098)))

(declare-fun b!5737549 () Bool)

(declare-fun c!1012579 () Bool)

(assert (=> b!5737549 (= c!1012579 ((_ is Star!15745) (reg!16074 (regOne!32002 r!7292))))))

(assert (=> b!5737549 (= e!3527096 e!3527097)))

(declare-fun b!5737550 () Bool)

(declare-fun e!3527093 () Bool)

(assert (=> b!5737550 (= c!1012580 e!3527093)))

(declare-fun res!2423104 () Bool)

(assert (=> b!5737550 (=> (not res!2423104) (not e!3527093))))

(assert (=> b!5737550 (= res!2423104 ((_ is Concat!24590) (reg!16074 (regOne!32002 r!7292))))))

(assert (=> b!5737550 (= e!3527095 e!3527094)))

(declare-fun b!5737551 () Bool)

(assert (=> b!5737551 (= e!3527097 call!438620)))

(declare-fun b!5737552 () Bool)

(declare-fun call!438619 () (InoxSet Context!10258))

(assert (=> b!5737552 (= e!3527095 ((_ map or) call!438623 call!438619))))

(declare-fun bm!438616 () Bool)

(assert (=> bm!438616 (= call!438624 call!438619)))

(declare-fun call!438621 () List!63535)

(declare-fun bm!438617 () Bool)

(assert (=> bm!438617 (= call!438619 (derivationStepZipperDown!1087 (ite c!1012578 (regTwo!32003 (reg!16074 (regOne!32002 r!7292))) (ite c!1012580 (regTwo!32002 (reg!16074 (regOne!32002 r!7292))) (ite c!1012581 (regOne!32002 (reg!16074 (regOne!32002 r!7292))) (reg!16074 (reg!16074 (regOne!32002 r!7292)))))) (ite (or c!1012578 c!1012580) lt!2283815 (Context!10259 call!438621)) (h!69858 s!2326)))))

(declare-fun b!5737553 () Bool)

(assert (=> b!5737553 (= e!3527093 (nullable!5777 (regOne!32002 (reg!16074 (regOne!32002 r!7292)))))))

(declare-fun bm!438618 () Bool)

(assert (=> bm!438618 (= call!438621 call!438622)))

(declare-fun b!5737554 () Bool)

(assert (=> b!5737554 (= e!3527098 (store ((as const (Array Context!10258 Bool)) false) lt!2283815 true))))

(declare-fun bm!438619 () Bool)

(assert (=> bm!438619 (= call!438623 (derivationStepZipperDown!1087 (ite c!1012578 (regOne!32003 (reg!16074 (regOne!32002 r!7292))) (regOne!32002 (reg!16074 (regOne!32002 r!7292)))) (ite c!1012578 lt!2283815 (Context!10259 call!438622)) (h!69858 s!2326)))))

(assert (= (and d!1808812 c!1012577) b!5737554))

(assert (= (and d!1808812 (not c!1012577)) b!5737544))

(assert (= (and b!5737544 c!1012578) b!5737552))

(assert (= (and b!5737544 (not c!1012578)) b!5737550))

(assert (= (and b!5737550 res!2423104) b!5737553))

(assert (= (and b!5737550 c!1012580) b!5737547))

(assert (= (and b!5737550 (not c!1012580)) b!5737546))

(assert (= (and b!5737546 c!1012581) b!5737545))

(assert (= (and b!5737546 (not c!1012581)) b!5737549))

(assert (= (and b!5737549 c!1012579) b!5737551))

(assert (= (and b!5737549 (not c!1012579)) b!5737548))

(assert (= (or b!5737545 b!5737551) bm!438618))

(assert (= (or b!5737545 b!5737551) bm!438614))

(assert (= (or b!5737547 bm!438618) bm!438615))

(assert (= (or b!5737547 bm!438614) bm!438616))

(assert (= (or b!5737552 bm!438616) bm!438617))

(assert (= (or b!5737552 b!5737547) bm!438619))

(assert (=> b!5737554 m!6688332))

(declare-fun m!6689726 () Bool)

(assert (=> bm!438615 m!6689726))

(declare-fun m!6689728 () Bool)

(assert (=> bm!438619 m!6689728))

(declare-fun m!6689730 () Bool)

(assert (=> b!5737553 m!6689730))

(declare-fun m!6689732 () Bool)

(assert (=> bm!438617 m!6689732))

(assert (=> b!5736287 d!1808812))

(declare-fun d!1808814 () Bool)

(declare-fun c!1012582 () Bool)

(assert (=> d!1808814 (= c!1012582 (isEmpty!35292 (_2!36145 lt!2283852)))))

(declare-fun e!3527099 () Bool)

(assert (=> d!1808814 (= (matchZipper!1883 lt!2283842 (_2!36145 lt!2283852)) e!3527099)))

(declare-fun b!5737555 () Bool)

(assert (=> b!5737555 (= e!3527099 (nullableZipper!1683 lt!2283842))))

(declare-fun b!5737556 () Bool)

(assert (=> b!5737556 (= e!3527099 (matchZipper!1883 (derivationStepZipper!1828 lt!2283842 (head!12146 (_2!36145 lt!2283852))) (tail!11241 (_2!36145 lt!2283852))))))

(assert (= (and d!1808814 c!1012582) b!5737555))

(assert (= (and d!1808814 (not c!1012582)) b!5737556))

(assert (=> d!1808814 m!6688836))

(declare-fun m!6689734 () Bool)

(assert (=> b!5737555 m!6689734))

(assert (=> b!5737556 m!6688826))

(assert (=> b!5737556 m!6688826))

(declare-fun m!6689736 () Bool)

(assert (=> b!5737556 m!6689736))

(assert (=> b!5737556 m!6688830))

(assert (=> b!5737556 m!6689736))

(assert (=> b!5737556 m!6688830))

(declare-fun m!6689738 () Bool)

(assert (=> b!5737556 m!6689738))

(assert (=> b!5736266 d!1808814))

(declare-fun d!1808816 () Bool)

(declare-fun lt!2284105 () Regex!15745)

(assert (=> d!1808816 (validRegex!7481 lt!2284105)))

(assert (=> d!1808816 (= lt!2284105 (generalisedUnion!1608 (unfocusZipperList!1173 lt!2283843)))))

(assert (=> d!1808816 (= (unfocusZipper!1487 lt!2283843) lt!2284105)))

(declare-fun bs!1341145 () Bool)

(assert (= bs!1341145 d!1808816))

(declare-fun m!6689740 () Bool)

(assert (=> bs!1341145 m!6689740))

(declare-fun m!6689742 () Bool)

(assert (=> bs!1341145 m!6689742))

(assert (=> bs!1341145 m!6689742))

(declare-fun m!6689744 () Bool)

(assert (=> bs!1341145 m!6689744))

(assert (=> b!5736307 d!1808816))

(declare-fun b!5737557 () Bool)

(declare-fun lt!2284107 () Unit!156512)

(declare-fun lt!2284108 () Unit!156512)

(assert (=> b!5737557 (= lt!2284107 lt!2284108)))

(assert (=> b!5737557 (= (++!13962 (++!13962 Nil!63410 (Cons!63410 (h!69858 s!2326) Nil!63410)) (t!376862 s!2326)) s!2326)))

(assert (=> b!5737557 (= lt!2284108 (lemmaMoveElementToOtherListKeepsConcatEq!2085 Nil!63410 (h!69858 s!2326) (t!376862 s!2326) s!2326))))

(declare-fun e!3527103 () Option!15754)

(assert (=> b!5737557 (= e!3527103 (findConcatSeparation!2168 (regOne!32002 r!7292) (regTwo!32002 r!7292) (++!13962 Nil!63410 (Cons!63410 (h!69858 s!2326) Nil!63410)) (t!376862 s!2326) s!2326))))

(declare-fun b!5737558 () Bool)

(declare-fun e!3527101 () Bool)

(declare-fun lt!2284106 () Option!15754)

(assert (=> b!5737558 (= e!3527101 (= (++!13962 (_1!36145 (get!21873 lt!2284106)) (_2!36145 (get!21873 lt!2284106))) s!2326))))

(declare-fun b!5737560 () Bool)

(declare-fun e!3527102 () Option!15754)

(assert (=> b!5737560 (= e!3527102 (Some!15753 (tuple2!65685 Nil!63410 s!2326)))))

(declare-fun b!5737561 () Bool)

(declare-fun res!2423106 () Bool)

(assert (=> b!5737561 (=> (not res!2423106) (not e!3527101))))

(assert (=> b!5737561 (= res!2423106 (matchR!7930 (regTwo!32002 r!7292) (_2!36145 (get!21873 lt!2284106))))))

(declare-fun b!5737562 () Bool)

(declare-fun res!2423105 () Bool)

(assert (=> b!5737562 (=> (not res!2423105) (not e!3527101))))

(assert (=> b!5737562 (= res!2423105 (matchR!7930 (regOne!32002 r!7292) (_1!36145 (get!21873 lt!2284106))))))

(declare-fun b!5737563 () Bool)

(declare-fun e!3527100 () Bool)

(assert (=> b!5737563 (= e!3527100 (matchR!7930 (regTwo!32002 r!7292) s!2326))))

(declare-fun b!5737559 () Bool)

(declare-fun e!3527104 () Bool)

(assert (=> b!5737559 (= e!3527104 (not (isDefined!12457 lt!2284106)))))

(declare-fun d!1808818 () Bool)

(assert (=> d!1808818 e!3527104))

(declare-fun res!2423109 () Bool)

(assert (=> d!1808818 (=> res!2423109 e!3527104)))

(assert (=> d!1808818 (= res!2423109 e!3527101)))

(declare-fun res!2423107 () Bool)

(assert (=> d!1808818 (=> (not res!2423107) (not e!3527101))))

(assert (=> d!1808818 (= res!2423107 (isDefined!12457 lt!2284106))))

(assert (=> d!1808818 (= lt!2284106 e!3527102)))

(declare-fun c!1012583 () Bool)

(assert (=> d!1808818 (= c!1012583 e!3527100)))

(declare-fun res!2423108 () Bool)

(assert (=> d!1808818 (=> (not res!2423108) (not e!3527100))))

(assert (=> d!1808818 (= res!2423108 (matchR!7930 (regOne!32002 r!7292) Nil!63410))))

(assert (=> d!1808818 (validRegex!7481 (regOne!32002 r!7292))))

(assert (=> d!1808818 (= (findConcatSeparation!2168 (regOne!32002 r!7292) (regTwo!32002 r!7292) Nil!63410 s!2326 s!2326) lt!2284106)))

(declare-fun b!5737564 () Bool)

(assert (=> b!5737564 (= e!3527102 e!3527103)))

(declare-fun c!1012584 () Bool)

(assert (=> b!5737564 (= c!1012584 ((_ is Nil!63410) s!2326))))

(declare-fun b!5737565 () Bool)

(assert (=> b!5737565 (= e!3527103 None!15753)))

(assert (= (and d!1808818 res!2423108) b!5737563))

(assert (= (and d!1808818 c!1012583) b!5737560))

(assert (= (and d!1808818 (not c!1012583)) b!5737564))

(assert (= (and b!5737564 c!1012584) b!5737565))

(assert (= (and b!5737564 (not c!1012584)) b!5737557))

(assert (= (and d!1808818 res!2423107) b!5737562))

(assert (= (and b!5737562 res!2423105) b!5737561))

(assert (= (and b!5737561 res!2423106) b!5737558))

(assert (= (and d!1808818 (not res!2423109)) b!5737559))

(assert (=> b!5737557 m!6688952))

(assert (=> b!5737557 m!6688952))

(assert (=> b!5737557 m!6688954))

(assert (=> b!5737557 m!6688956))

(assert (=> b!5737557 m!6688952))

(declare-fun m!6689746 () Bool)

(assert (=> b!5737557 m!6689746))

(declare-fun m!6689748 () Bool)

(assert (=> b!5737561 m!6689748))

(declare-fun m!6689750 () Bool)

(assert (=> b!5737561 m!6689750))

(assert (=> b!5737558 m!6689748))

(declare-fun m!6689752 () Bool)

(assert (=> b!5737558 m!6689752))

(declare-fun m!6689754 () Bool)

(assert (=> d!1808818 m!6689754))

(declare-fun m!6689756 () Bool)

(assert (=> d!1808818 m!6689756))

(declare-fun m!6689758 () Bool)

(assert (=> d!1808818 m!6689758))

(assert (=> b!5737559 m!6689754))

(assert (=> b!5737563 m!6688972))

(assert (=> b!5737562 m!6689748))

(declare-fun m!6689760 () Bool)

(assert (=> b!5737562 m!6689760))

(assert (=> b!5736286 d!1808818))

(declare-fun d!1808820 () Bool)

(assert (=> d!1808820 (= (Exists!2845 lambda!310886) (choose!43484 lambda!310886))))

(declare-fun bs!1341146 () Bool)

(assert (= bs!1341146 d!1808820))

(declare-fun m!6689762 () Bool)

(assert (=> bs!1341146 m!6689762))

(assert (=> b!5736286 d!1808820))

(declare-fun d!1808822 () Bool)

(assert (=> d!1808822 (= (Exists!2845 lambda!310887) (choose!43484 lambda!310887))))

(declare-fun bs!1341147 () Bool)

(assert (= bs!1341147 d!1808822))

(declare-fun m!6689764 () Bool)

(assert (=> bs!1341147 m!6689764))

(assert (=> b!5736286 d!1808822))

(declare-fun bs!1341148 () Bool)

(declare-fun d!1808824 () Bool)

(assert (= bs!1341148 (and d!1808824 b!5736301)))

(declare-fun lambda!311004 () Int)

(assert (=> bs!1341148 (not (= lambda!311004 lambda!310894))))

(declare-fun bs!1341149 () Bool)

(assert (= bs!1341149 (and d!1808824 d!1808746)))

(assert (=> bs!1341149 (not (= lambda!311004 lambda!310980))))

(declare-fun bs!1341150 () Bool)

(assert (= bs!1341150 (and d!1808824 b!5737292)))

(assert (=> bs!1341150 (not (= lambda!311004 lambda!310976))))

(declare-fun bs!1341151 () Bool)

(assert (= bs!1341151 (and d!1808824 b!5736652)))

(assert (=> bs!1341151 (not (= lambda!311004 lambda!310922))))

(declare-fun bs!1341152 () Bool)

(assert (= bs!1341152 (and d!1808824 d!1808750)))

(assert (=> bs!1341152 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) (Star!15745 (reg!16074 (regOne!32002 r!7292))))) (= lambda!311004 lambda!310987))))

(declare-fun bs!1341153 () Bool)

(assert (= bs!1341153 (and d!1808824 b!5736286)))

(assert (=> bs!1341153 (not (= lambda!311004 lambda!310887))))

(declare-fun bs!1341154 () Bool)

(assert (= bs!1341154 (and d!1808824 d!1808708)))

(assert (=> bs!1341154 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!311004 lambda!310974))))

(declare-fun bs!1341155 () Bool)

(assert (= bs!1341155 (and d!1808824 b!5736281)))

(assert (=> bs!1341155 (not (= lambda!311004 lambda!310892))))

(declare-fun bs!1341156 () Bool)

(assert (= bs!1341156 (and d!1808824 b!5736999)))

(assert (=> bs!1341156 (not (= lambda!311004 lambda!310956))))

(declare-fun bs!1341157 () Bool)

(assert (= bs!1341157 (and d!1808824 d!1808564)))

(assert (=> bs!1341157 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!311004 lambda!310948))))

(assert (=> bs!1341149 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!311004 lambda!310978))))

(declare-fun bs!1341158 () Bool)

(assert (= bs!1341158 (and d!1808824 b!5736653)))

(assert (=> bs!1341158 (not (= lambda!311004 lambda!310923))))

(declare-fun bs!1341159 () Bool)

(assert (= bs!1341159 (and d!1808824 b!5737291)))

(assert (=> bs!1341159 (not (= lambda!311004 lambda!310975))))

(declare-fun bs!1341160 () Bool)

(assert (= bs!1341160 (and d!1808824 d!1808580)))

(assert (=> bs!1341160 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!311004 lambda!310952))))

(declare-fun bs!1341161 () Bool)

(assert (= bs!1341161 (and d!1808824 b!5737000)))

(assert (=> bs!1341161 (not (= lambda!311004 lambda!310958))))

(assert (=> bs!1341153 (= lambda!311004 lambda!310886)))

(assert (=> bs!1341157 (not (= lambda!311004 lambda!310949))))

(declare-fun bs!1341162 () Bool)

(assert (= bs!1341162 (and d!1808824 b!5737073)))

(assert (=> bs!1341162 (not (= lambda!311004 lambda!310967))))

(assert (=> bs!1341148 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!311004 lambda!310893))))

(assert (=> bs!1341155 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!311004 lambda!310891))))

(declare-fun bs!1341163 () Bool)

(assert (= bs!1341163 (and d!1808824 b!5737074)))

(assert (=> bs!1341163 (not (= lambda!311004 lambda!310969))))

(assert (=> bs!1341152 (not (= lambda!311004 lambda!310988))))

(assert (=> bs!1341148 (not (= lambda!311004 lambda!310895))))

(assert (=> d!1808824 true))

(assert (=> d!1808824 true))

(assert (=> d!1808824 true))

(assert (=> d!1808824 (= (isDefined!12457 (findConcatSeparation!2168 (regOne!32002 r!7292) (regTwo!32002 r!7292) Nil!63410 s!2326 s!2326)) (Exists!2845 lambda!311004))))

(declare-fun lt!2284109 () Unit!156512)

(assert (=> d!1808824 (= lt!2284109 (choose!43482 (regOne!32002 r!7292) (regTwo!32002 r!7292) s!2326))))

(assert (=> d!1808824 (validRegex!7481 (regOne!32002 r!7292))))

(assert (=> d!1808824 (= (lemmaFindConcatSeparationEquivalentToExists!1932 (regOne!32002 r!7292) (regTwo!32002 r!7292) s!2326) lt!2284109)))

(declare-fun bs!1341164 () Bool)

(assert (= bs!1341164 d!1808824))

(declare-fun m!6689766 () Bool)

(assert (=> bs!1341164 m!6689766))

(declare-fun m!6689768 () Bool)

(assert (=> bs!1341164 m!6689768))

(assert (=> bs!1341164 m!6689758))

(assert (=> bs!1341164 m!6688434))

(assert (=> bs!1341164 m!6688434))

(assert (=> bs!1341164 m!6688436))

(assert (=> b!5736286 d!1808824))

(declare-fun bs!1341165 () Bool)

(declare-fun d!1808826 () Bool)

(assert (= bs!1341165 (and d!1808826 b!5736301)))

(declare-fun lambda!311005 () Int)

(assert (=> bs!1341165 (not (= lambda!311005 lambda!310894))))

(declare-fun bs!1341166 () Bool)

(assert (= bs!1341166 (and d!1808826 d!1808746)))

(assert (=> bs!1341166 (not (= lambda!311005 lambda!310980))))

(declare-fun bs!1341167 () Bool)

(assert (= bs!1341167 (and d!1808826 b!5737292)))

(assert (=> bs!1341167 (not (= lambda!311005 lambda!310976))))

(declare-fun bs!1341168 () Bool)

(assert (= bs!1341168 (and d!1808826 b!5736652)))

(assert (=> bs!1341168 (not (= lambda!311005 lambda!310922))))

(declare-fun bs!1341169 () Bool)

(assert (= bs!1341169 (and d!1808826 d!1808750)))

(assert (=> bs!1341169 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) (Star!15745 (reg!16074 (regOne!32002 r!7292))))) (= lambda!311005 lambda!310987))))

(declare-fun bs!1341170 () Bool)

(assert (= bs!1341170 (and d!1808826 b!5736286)))

(assert (=> bs!1341170 (not (= lambda!311005 lambda!310887))))

(declare-fun bs!1341171 () Bool)

(assert (= bs!1341171 (and d!1808826 d!1808708)))

(assert (=> bs!1341171 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!311005 lambda!310974))))

(declare-fun bs!1341172 () Bool)

(assert (= bs!1341172 (and d!1808826 b!5736999)))

(assert (=> bs!1341172 (not (= lambda!311005 lambda!310956))))

(declare-fun bs!1341173 () Bool)

(assert (= bs!1341173 (and d!1808826 d!1808564)))

(assert (=> bs!1341173 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!311005 lambda!310948))))

(assert (=> bs!1341166 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!311005 lambda!310978))))

(declare-fun bs!1341174 () Bool)

(assert (= bs!1341174 (and d!1808826 b!5736653)))

(assert (=> bs!1341174 (not (= lambda!311005 lambda!310923))))

(declare-fun bs!1341175 () Bool)

(assert (= bs!1341175 (and d!1808826 b!5737291)))

(assert (=> bs!1341175 (not (= lambda!311005 lambda!310975))))

(declare-fun bs!1341176 () Bool)

(assert (= bs!1341176 (and d!1808826 d!1808580)))

(assert (=> bs!1341176 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!311005 lambda!310952))))

(declare-fun bs!1341177 () Bool)

(assert (= bs!1341177 (and d!1808826 b!5737000)))

(assert (=> bs!1341177 (not (= lambda!311005 lambda!310958))))

(assert (=> bs!1341170 (= lambda!311005 lambda!310886)))

(assert (=> bs!1341173 (not (= lambda!311005 lambda!310949))))

(declare-fun bs!1341178 () Bool)

(assert (= bs!1341178 (and d!1808826 b!5736281)))

(assert (=> bs!1341178 (not (= lambda!311005 lambda!310892))))

(declare-fun bs!1341179 () Bool)

(assert (= bs!1341179 (and d!1808826 d!1808824)))

(assert (=> bs!1341179 (= lambda!311005 lambda!311004)))

(declare-fun bs!1341180 () Bool)

(assert (= bs!1341180 (and d!1808826 b!5737073)))

(assert (=> bs!1341180 (not (= lambda!311005 lambda!310967))))

(assert (=> bs!1341165 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!311005 lambda!310893))))

(assert (=> bs!1341178 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!311005 lambda!310891))))

(declare-fun bs!1341181 () Bool)

(assert (= bs!1341181 (and d!1808826 b!5737074)))

(assert (=> bs!1341181 (not (= lambda!311005 lambda!310969))))

(assert (=> bs!1341169 (not (= lambda!311005 lambda!310988))))

(assert (=> bs!1341165 (not (= lambda!311005 lambda!310895))))

(assert (=> d!1808826 true))

(assert (=> d!1808826 true))

(assert (=> d!1808826 true))

(declare-fun lambda!311006 () Int)

(assert (=> bs!1341165 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!311006 lambda!310894))))

(assert (=> bs!1341166 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (reg!16074 (regOne!32002 r!7292))) (= (regTwo!32002 r!7292) lt!2283853)) (= lambda!311006 lambda!310980))))

(assert (=> bs!1341167 (= (and (= s!2326 (_1!36145 lt!2283847)) (= (regOne!32002 r!7292) (regOne!32002 lt!2283800)) (= (regTwo!32002 r!7292) (regTwo!32002 lt!2283800))) (= lambda!311006 lambda!310976))))

(assert (=> bs!1341168 (not (= lambda!311006 lambda!310922))))

(assert (=> bs!1341169 (not (= lambda!311006 lambda!310987))))

(assert (=> bs!1341170 (= lambda!311006 lambda!310887)))

(assert (=> bs!1341171 (not (= lambda!311006 lambda!310974))))

(assert (=> bs!1341172 (not (= lambda!311006 lambda!310956))))

(declare-fun bs!1341182 () Bool)

(assert (= bs!1341182 d!1808826))

(assert (=> bs!1341182 (not (= lambda!311006 lambda!311005))))

(assert (=> bs!1341173 (not (= lambda!311006 lambda!310948))))

(assert (=> bs!1341166 (not (= lambda!311006 lambda!310978))))

(assert (=> bs!1341174 (= (and (= (regOne!32002 r!7292) (regOne!32002 lt!2283839)) (= (regTwo!32002 r!7292) (regTwo!32002 lt!2283839))) (= lambda!311006 lambda!310923))))

(assert (=> bs!1341175 (not (= lambda!311006 lambda!310975))))

(assert (=> bs!1341176 (not (= lambda!311006 lambda!310952))))

(assert (=> bs!1341177 (= (and (= (regOne!32002 r!7292) (regOne!32002 lt!2283816)) (= (regTwo!32002 r!7292) (regTwo!32002 lt!2283816))) (= lambda!311006 lambda!310958))))

(assert (=> bs!1341170 (not (= lambda!311006 lambda!310886))))

(assert (=> bs!1341173 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!311006 lambda!310949))))

(assert (=> bs!1341178 (= (= (regOne!32002 r!7292) lt!2283800) (= lambda!311006 lambda!310892))))

(assert (=> bs!1341179 (not (= lambda!311006 lambda!311004))))

(assert (=> bs!1341180 (not (= lambda!311006 lambda!310967))))

(assert (=> bs!1341165 (not (= lambda!311006 lambda!310893))))

(assert (=> bs!1341178 (not (= lambda!311006 lambda!310891))))

(assert (=> bs!1341181 (= lambda!311006 lambda!310969)))

(assert (=> bs!1341169 (not (= lambda!311006 lambda!310988))))

(assert (=> bs!1341165 (not (= lambda!311006 lambda!310895))))

(assert (=> d!1808826 true))

(assert (=> d!1808826 true))

(assert (=> d!1808826 true))

(assert (=> d!1808826 (= (Exists!2845 lambda!311005) (Exists!2845 lambda!311006))))

(declare-fun lt!2284110 () Unit!156512)

(assert (=> d!1808826 (= lt!2284110 (choose!43481 (regOne!32002 r!7292) (regTwo!32002 r!7292) s!2326))))

(assert (=> d!1808826 (validRegex!7481 (regOne!32002 r!7292))))

(assert (=> d!1808826 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1474 (regOne!32002 r!7292) (regTwo!32002 r!7292) s!2326) lt!2284110)))

(declare-fun m!6689770 () Bool)

(assert (=> bs!1341182 m!6689770))

(declare-fun m!6689772 () Bool)

(assert (=> bs!1341182 m!6689772))

(declare-fun m!6689774 () Bool)

(assert (=> bs!1341182 m!6689774))

(assert (=> bs!1341182 m!6689758))

(assert (=> b!5736286 d!1808826))

(declare-fun d!1808828 () Bool)

(assert (=> d!1808828 (= (isDefined!12457 (findConcatSeparation!2168 (regOne!32002 r!7292) (regTwo!32002 r!7292) Nil!63410 s!2326 s!2326)) (not (isEmpty!35293 (findConcatSeparation!2168 (regOne!32002 r!7292) (regTwo!32002 r!7292) Nil!63410 s!2326 s!2326))))))

(declare-fun bs!1341183 () Bool)

(assert (= bs!1341183 d!1808828))

(assert (=> bs!1341183 m!6688434))

(declare-fun m!6689776 () Bool)

(assert (=> bs!1341183 m!6689776))

(assert (=> b!5736286 d!1808828))

(declare-fun d!1808830 () Bool)

(declare-fun c!1012585 () Bool)

(assert (=> d!1808830 (= c!1012585 (isEmpty!35292 s!2326))))

(declare-fun e!3527105 () Bool)

(assert (=> d!1808830 (= (matchZipper!1883 z!1189 s!2326) e!3527105)))

(declare-fun b!5737566 () Bool)

(assert (=> b!5737566 (= e!3527105 (nullableZipper!1683 z!1189))))

(declare-fun b!5737567 () Bool)

(assert (=> b!5737567 (= e!3527105 (matchZipper!1883 (derivationStepZipper!1828 z!1189 (head!12146 s!2326)) (tail!11241 s!2326)))))

(assert (= (and d!1808830 c!1012585) b!5737566))

(assert (= (and d!1808830 (not c!1012585)) b!5737567))

(assert (=> d!1808830 m!6688722))

(declare-fun m!6689778 () Bool)

(assert (=> b!5737566 m!6689778))

(assert (=> b!5737567 m!6688766))

(assert (=> b!5737567 m!6688766))

(declare-fun m!6689780 () Bool)

(assert (=> b!5737567 m!6689780))

(assert (=> b!5737567 m!6688770))

(assert (=> b!5737567 m!6689780))

(assert (=> b!5737567 m!6688770))

(declare-fun m!6689782 () Bool)

(assert (=> b!5737567 m!6689782))

(assert (=> b!5736290 d!1808830))

(declare-fun bs!1341184 () Bool)

(declare-fun d!1808832 () Bool)

(assert (= bs!1341184 (and d!1808832 b!5736299)))

(declare-fun lambda!311009 () Int)

(assert (=> bs!1341184 (= lambda!311009 lambda!310890)))

(declare-fun bs!1341185 () Bool)

(assert (= bs!1341185 (and d!1808832 d!1808780)))

(assert (=> bs!1341185 (= lambda!311009 lambda!310994)))

(declare-fun bs!1341186 () Bool)

(assert (= bs!1341186 (and d!1808832 d!1808626)))

(assert (=> bs!1341186 (= lambda!311009 lambda!310966)))

(declare-fun bs!1341187 () Bool)

(assert (= bs!1341187 (and d!1808832 d!1808794)))

(assert (=> bs!1341187 (= lambda!311009 lambda!311003)))

(declare-fun bs!1341188 () Bool)

(assert (= bs!1341188 (and d!1808832 d!1808792)))

(assert (=> bs!1341188 (= lambda!311009 lambda!311000)))

(declare-fun bs!1341189 () Bool)

(assert (= bs!1341189 (and d!1808832 d!1808524)))

(assert (=> bs!1341189 (= lambda!311009 lambda!310929)))

(declare-fun b!5737588 () Bool)

(declare-fun e!3527122 () Regex!15745)

(assert (=> b!5737588 (= e!3527122 EmptyExpr!15745)))

(declare-fun b!5737589 () Bool)

(declare-fun e!3527120 () Bool)

(declare-fun lt!2284113 () Regex!15745)

(assert (=> b!5737589 (= e!3527120 (= lt!2284113 (head!12147 (exprs!5629 (h!69860 zl!343)))))))

(declare-fun e!3527121 () Bool)

(assert (=> d!1808832 e!3527121))

(declare-fun res!2423114 () Bool)

(assert (=> d!1808832 (=> (not res!2423114) (not e!3527121))))

(assert (=> d!1808832 (= res!2423114 (validRegex!7481 lt!2284113))))

(declare-fun e!3527123 () Regex!15745)

(assert (=> d!1808832 (= lt!2284113 e!3527123)))

(declare-fun c!1012595 () Bool)

(declare-fun e!3527119 () Bool)

(assert (=> d!1808832 (= c!1012595 e!3527119)))

(declare-fun res!2423115 () Bool)

(assert (=> d!1808832 (=> (not res!2423115) (not e!3527119))))

(assert (=> d!1808832 (= res!2423115 ((_ is Cons!63411) (exprs!5629 (h!69860 zl!343))))))

(assert (=> d!1808832 (forall!14868 (exprs!5629 (h!69860 zl!343)) lambda!311009)))

(assert (=> d!1808832 (= (generalisedConcat!1360 (exprs!5629 (h!69860 zl!343))) lt!2284113)))

(declare-fun b!5737590 () Bool)

(declare-fun e!3527118 () Bool)

(assert (=> b!5737590 (= e!3527121 e!3527118)))

(declare-fun c!1012596 () Bool)

(assert (=> b!5737590 (= c!1012596 (isEmpty!35289 (exprs!5629 (h!69860 zl!343))))))

(declare-fun b!5737591 () Bool)

(assert (=> b!5737591 (= e!3527119 (isEmpty!35289 (t!376863 (exprs!5629 (h!69860 zl!343)))))))

(declare-fun b!5737592 () Bool)

(assert (=> b!5737592 (= e!3527118 e!3527120)))

(declare-fun c!1012597 () Bool)

(assert (=> b!5737592 (= c!1012597 (isEmpty!35289 (tail!11242 (exprs!5629 (h!69860 zl!343)))))))

(declare-fun b!5737593 () Bool)

(assert (=> b!5737593 (= e!3527122 (Concat!24590 (h!69859 (exprs!5629 (h!69860 zl!343))) (generalisedConcat!1360 (t!376863 (exprs!5629 (h!69860 zl!343))))))))

(declare-fun b!5737594 () Bool)

(declare-fun isConcat!764 (Regex!15745) Bool)

(assert (=> b!5737594 (= e!3527120 (isConcat!764 lt!2284113))))

(declare-fun b!5737595 () Bool)

(assert (=> b!5737595 (= e!3527123 (h!69859 (exprs!5629 (h!69860 zl!343))))))

(declare-fun b!5737596 () Bool)

(declare-fun isEmptyExpr!1241 (Regex!15745) Bool)

(assert (=> b!5737596 (= e!3527118 (isEmptyExpr!1241 lt!2284113))))

(declare-fun b!5737597 () Bool)

(assert (=> b!5737597 (= e!3527123 e!3527122)))

(declare-fun c!1012594 () Bool)

(assert (=> b!5737597 (= c!1012594 ((_ is Cons!63411) (exprs!5629 (h!69860 zl!343))))))

(assert (= (and d!1808832 res!2423115) b!5737591))

(assert (= (and d!1808832 c!1012595) b!5737595))

(assert (= (and d!1808832 (not c!1012595)) b!5737597))

(assert (= (and b!5737597 c!1012594) b!5737593))

(assert (= (and b!5737597 (not c!1012594)) b!5737588))

(assert (= (and d!1808832 res!2423114) b!5737590))

(assert (= (and b!5737590 c!1012596) b!5737596))

(assert (= (and b!5737590 (not c!1012596)) b!5737592))

(assert (= (and b!5737592 c!1012597) b!5737589))

(assert (= (and b!5737592 (not c!1012597)) b!5737594))

(declare-fun m!6689784 () Bool)

(assert (=> b!5737589 m!6689784))

(declare-fun m!6689786 () Bool)

(assert (=> b!5737596 m!6689786))

(declare-fun m!6689788 () Bool)

(assert (=> b!5737590 m!6689788))

(assert (=> b!5737591 m!6688392))

(declare-fun m!6689790 () Bool)

(assert (=> d!1808832 m!6689790))

(declare-fun m!6689792 () Bool)

(assert (=> d!1808832 m!6689792))

(declare-fun m!6689794 () Bool)

(assert (=> b!5737593 m!6689794))

(declare-fun m!6689796 () Bool)

(assert (=> b!5737594 m!6689796))

(declare-fun m!6689798 () Bool)

(assert (=> b!5737592 m!6689798))

(assert (=> b!5737592 m!6689798))

(declare-fun m!6689800 () Bool)

(assert (=> b!5737592 m!6689800))

(assert (=> b!5736289 d!1808832))

(declare-fun b!5737602 () Bool)

(declare-fun e!3527126 () Bool)

(declare-fun tp!1586937 () Bool)

(declare-fun tp!1586938 () Bool)

(assert (=> b!5737602 (= e!3527126 (and tp!1586937 tp!1586938))))

(assert (=> b!5736268 (= tp!1586874 e!3527126)))

(assert (= (and b!5736268 ((_ is Cons!63411) (exprs!5629 (h!69860 zl!343)))) b!5737602))

(declare-fun b!5737610 () Bool)

(declare-fun e!3527132 () Bool)

(declare-fun tp!1586943 () Bool)

(assert (=> b!5737610 (= e!3527132 tp!1586943)))

(declare-fun tp!1586944 () Bool)

(declare-fun e!3527131 () Bool)

(declare-fun b!5737609 () Bool)

(assert (=> b!5737609 (= e!3527131 (and (inv!82609 (h!69860 (t!376864 zl!343))) e!3527132 tp!1586944))))

(assert (=> b!5736293 (= tp!1586869 e!3527131)))

(assert (= b!5737609 b!5737610))

(assert (= (and b!5736293 ((_ is Cons!63412) (t!376864 zl!343))) b!5737609))

(declare-fun m!6689802 () Bool)

(assert (=> b!5737609 m!6689802))

(declare-fun b!5737611 () Bool)

(declare-fun e!3527133 () Bool)

(declare-fun tp!1586945 () Bool)

(declare-fun tp!1586946 () Bool)

(assert (=> b!5737611 (= e!3527133 (and tp!1586945 tp!1586946))))

(assert (=> b!5736309 (= tp!1586870 e!3527133)))

(assert (= (and b!5736309 ((_ is Cons!63411) (exprs!5629 setElem!38497))) b!5737611))

(declare-fun e!3527136 () Bool)

(assert (=> b!5736312 (= tp!1586868 e!3527136)))

(declare-fun b!5737623 () Bool)

(declare-fun tp!1586958 () Bool)

(declare-fun tp!1586961 () Bool)

(assert (=> b!5737623 (= e!3527136 (and tp!1586958 tp!1586961))))

(declare-fun b!5737622 () Bool)

(assert (=> b!5737622 (= e!3527136 tp_is_empty!40743)))

(declare-fun b!5737624 () Bool)

(declare-fun tp!1586959 () Bool)

(assert (=> b!5737624 (= e!3527136 tp!1586959)))

(declare-fun b!5737625 () Bool)

(declare-fun tp!1586957 () Bool)

(declare-fun tp!1586960 () Bool)

(assert (=> b!5737625 (= e!3527136 (and tp!1586957 tp!1586960))))

(assert (= (and b!5736312 ((_ is ElementMatch!15745) (regOne!32002 r!7292))) b!5737622))

(assert (= (and b!5736312 ((_ is Concat!24590) (regOne!32002 r!7292))) b!5737623))

(assert (= (and b!5736312 ((_ is Star!15745) (regOne!32002 r!7292))) b!5737624))

(assert (= (and b!5736312 ((_ is Union!15745) (regOne!32002 r!7292))) b!5737625))

(declare-fun e!3527137 () Bool)

(assert (=> b!5736312 (= tp!1586871 e!3527137)))

(declare-fun b!5737627 () Bool)

(declare-fun tp!1586963 () Bool)

(declare-fun tp!1586966 () Bool)

(assert (=> b!5737627 (= e!3527137 (and tp!1586963 tp!1586966))))

(declare-fun b!5737626 () Bool)

(assert (=> b!5737626 (= e!3527137 tp_is_empty!40743)))

(declare-fun b!5737628 () Bool)

(declare-fun tp!1586964 () Bool)

(assert (=> b!5737628 (= e!3527137 tp!1586964)))

(declare-fun b!5737629 () Bool)

(declare-fun tp!1586962 () Bool)

(declare-fun tp!1586965 () Bool)

(assert (=> b!5737629 (= e!3527137 (and tp!1586962 tp!1586965))))

(assert (= (and b!5736312 ((_ is ElementMatch!15745) (regTwo!32002 r!7292))) b!5737626))

(assert (= (and b!5736312 ((_ is Concat!24590) (regTwo!32002 r!7292))) b!5737627))

(assert (= (and b!5736312 ((_ is Star!15745) (regTwo!32002 r!7292))) b!5737628))

(assert (= (and b!5736312 ((_ is Union!15745) (regTwo!32002 r!7292))) b!5737629))

(declare-fun condSetEmpty!38503 () Bool)

(assert (=> setNonEmpty!38497 (= condSetEmpty!38503 (= setRest!38497 ((as const (Array Context!10258 Bool)) false)))))

(declare-fun setRes!38503 () Bool)

(assert (=> setNonEmpty!38497 (= tp!1586865 setRes!38503)))

(declare-fun setIsEmpty!38503 () Bool)

(assert (=> setIsEmpty!38503 setRes!38503))

(declare-fun setElem!38503 () Context!10258)

(declare-fun e!3527140 () Bool)

(declare-fun tp!1586971 () Bool)

(declare-fun setNonEmpty!38503 () Bool)

(assert (=> setNonEmpty!38503 (= setRes!38503 (and tp!1586971 (inv!82609 setElem!38503) e!3527140))))

(declare-fun setRest!38503 () (InoxSet Context!10258))

(assert (=> setNonEmpty!38503 (= setRest!38497 ((_ map or) (store ((as const (Array Context!10258 Bool)) false) setElem!38503 true) setRest!38503))))

(declare-fun b!5737634 () Bool)

(declare-fun tp!1586972 () Bool)

(assert (=> b!5737634 (= e!3527140 tp!1586972)))

(assert (= (and setNonEmpty!38497 condSetEmpty!38503) setIsEmpty!38503))

(assert (= (and setNonEmpty!38497 (not condSetEmpty!38503)) setNonEmpty!38503))

(assert (= setNonEmpty!38503 b!5737634))

(declare-fun m!6689804 () Bool)

(assert (=> setNonEmpty!38503 m!6689804))

(declare-fun e!3527141 () Bool)

(assert (=> b!5736275 (= tp!1586873 e!3527141)))

(declare-fun b!5737636 () Bool)

(declare-fun tp!1586974 () Bool)

(declare-fun tp!1586977 () Bool)

(assert (=> b!5737636 (= e!3527141 (and tp!1586974 tp!1586977))))

(declare-fun b!5737635 () Bool)

(assert (=> b!5737635 (= e!3527141 tp_is_empty!40743)))

(declare-fun b!5737637 () Bool)

(declare-fun tp!1586975 () Bool)

(assert (=> b!5737637 (= e!3527141 tp!1586975)))

(declare-fun b!5737638 () Bool)

(declare-fun tp!1586973 () Bool)

(declare-fun tp!1586976 () Bool)

(assert (=> b!5737638 (= e!3527141 (and tp!1586973 tp!1586976))))

(assert (= (and b!5736275 ((_ is ElementMatch!15745) (reg!16074 r!7292))) b!5737635))

(assert (= (and b!5736275 ((_ is Concat!24590) (reg!16074 r!7292))) b!5737636))

(assert (= (and b!5736275 ((_ is Star!15745) (reg!16074 r!7292))) b!5737637))

(assert (= (and b!5736275 ((_ is Union!15745) (reg!16074 r!7292))) b!5737638))

(declare-fun e!3527142 () Bool)

(assert (=> b!5736271 (= tp!1586866 e!3527142)))

(declare-fun b!5737640 () Bool)

(declare-fun tp!1586979 () Bool)

(declare-fun tp!1586982 () Bool)

(assert (=> b!5737640 (= e!3527142 (and tp!1586979 tp!1586982))))

(declare-fun b!5737639 () Bool)

(assert (=> b!5737639 (= e!3527142 tp_is_empty!40743)))

(declare-fun b!5737641 () Bool)

(declare-fun tp!1586980 () Bool)

(assert (=> b!5737641 (= e!3527142 tp!1586980)))

(declare-fun b!5737642 () Bool)

(declare-fun tp!1586978 () Bool)

(declare-fun tp!1586981 () Bool)

(assert (=> b!5737642 (= e!3527142 (and tp!1586978 tp!1586981))))

(assert (= (and b!5736271 ((_ is ElementMatch!15745) (regOne!32003 r!7292))) b!5737639))

(assert (= (and b!5736271 ((_ is Concat!24590) (regOne!32003 r!7292))) b!5737640))

(assert (= (and b!5736271 ((_ is Star!15745) (regOne!32003 r!7292))) b!5737641))

(assert (= (and b!5736271 ((_ is Union!15745) (regOne!32003 r!7292))) b!5737642))

(declare-fun e!3527143 () Bool)

(assert (=> b!5736271 (= tp!1586867 e!3527143)))

(declare-fun b!5737644 () Bool)

(declare-fun tp!1586984 () Bool)

(declare-fun tp!1586987 () Bool)

(assert (=> b!5737644 (= e!3527143 (and tp!1586984 tp!1586987))))

(declare-fun b!5737643 () Bool)

(assert (=> b!5737643 (= e!3527143 tp_is_empty!40743)))

(declare-fun b!5737645 () Bool)

(declare-fun tp!1586985 () Bool)

(assert (=> b!5737645 (= e!3527143 tp!1586985)))

(declare-fun b!5737646 () Bool)

(declare-fun tp!1586983 () Bool)

(declare-fun tp!1586986 () Bool)

(assert (=> b!5737646 (= e!3527143 (and tp!1586983 tp!1586986))))

(assert (= (and b!5736271 ((_ is ElementMatch!15745) (regTwo!32003 r!7292))) b!5737643))

(assert (= (and b!5736271 ((_ is Concat!24590) (regTwo!32003 r!7292))) b!5737644))

(assert (= (and b!5736271 ((_ is Star!15745) (regTwo!32003 r!7292))) b!5737645))

(assert (= (and b!5736271 ((_ is Union!15745) (regTwo!32003 r!7292))) b!5737646))

(declare-fun b!5737651 () Bool)

(declare-fun e!3527146 () Bool)

(declare-fun tp!1586990 () Bool)

(assert (=> b!5737651 (= e!3527146 (and tp_is_empty!40743 tp!1586990))))

(assert (=> b!5736279 (= tp!1586872 e!3527146)))

(assert (= (and b!5736279 ((_ is Cons!63410) (t!376862 s!2326))) b!5737651))

(declare-fun b_lambda!216677 () Bool)

(assert (= b_lambda!216659 (or b!5736294 b_lambda!216677)))

(declare-fun bs!1341190 () Bool)

(declare-fun d!1808834 () Bool)

(assert (= bs!1341190 (and d!1808834 b!5736294)))

(assert (=> bs!1341190 (= (dynLambda!24815 lambda!310888 lt!2283807) (derivationStepZipperUp!1013 lt!2283807 (h!69858 s!2326)))))

(assert (=> bs!1341190 m!6688344))

(assert (=> d!1808622 d!1808834))

(declare-fun b_lambda!216679 () Bool)

(assert (= b_lambda!216675 (or b!5736294 b_lambda!216679)))

(declare-fun bs!1341191 () Bool)

(declare-fun d!1808836 () Bool)

(assert (= bs!1341191 (and d!1808836 b!5736294)))

(assert (=> bs!1341191 (= (dynLambda!24815 lambda!310888 (h!69860 zl!343)) (derivationStepZipperUp!1013 (h!69860 zl!343) (h!69858 s!2326)))))

(assert (=> bs!1341191 m!6688316))

(assert (=> d!1808800 d!1808836))

(declare-fun b_lambda!216681 () Bool)

(assert (= b_lambda!216671 (or b!5736299 b_lambda!216681)))

(declare-fun bs!1341192 () Bool)

(declare-fun d!1808838 () Bool)

(assert (= bs!1341192 (and d!1808838 b!5736299)))

(declare-fun lt!2284114 () Unit!156512)

(assert (=> bs!1341192 (= lt!2284114 (lemmaConcatPreservesForall!314 (exprs!5629 lt!2283807) lt!2283809 lambda!310890))))

(assert (=> bs!1341192 (= (dynLambda!24816 lambda!310889 lt!2283807) (Context!10259 (++!13963 (exprs!5629 lt!2283807) lt!2283809)))))

(declare-fun m!6689806 () Bool)

(assert (=> bs!1341192 m!6689806))

(declare-fun m!6689808 () Bool)

(assert (=> bs!1341192 m!6689808))

(assert (=> d!1808770 d!1808838))

(declare-fun b_lambda!216683 () Bool)

(assert (= b_lambda!216673 (or b!5736294 b_lambda!216683)))

(declare-fun bs!1341193 () Bool)

(declare-fun d!1808840 () Bool)

(assert (= bs!1341193 (and d!1808840 b!5736294)))

(assert (=> bs!1341193 (= (dynLambda!24815 lambda!310888 lt!2283796) (derivationStepZipperUp!1013 lt!2283796 (h!69858 s!2326)))))

(assert (=> bs!1341193 m!6688422))

(assert (=> d!1808788 d!1808840))

(declare-fun b_lambda!216685 () Bool)

(assert (= b_lambda!216657 (or b!5736294 b_lambda!216685)))

(declare-fun bs!1341194 () Bool)

(declare-fun d!1808842 () Bool)

(assert (= bs!1341194 (and d!1808842 b!5736294)))

(assert (=> bs!1341194 (= (dynLambda!24815 lambda!310888 lt!2283815) (derivationStepZipperUp!1013 lt!2283815 (h!69858 s!2326)))))

(assert (=> bs!1341194 m!6688334))

(assert (=> d!1808610 d!1808842))

(check-sat (not d!1808790) (not d!1808778) (not d!1808814) (not d!1808660) (not b!5737559) (not b!5736828) (not b!5736736) (not bm!438535) (not d!1808598) (not b!5737480) (not d!1808600) (not b!5737485) (not b!5737646) (not b!5737437) (not b!5736902) (not b!5736840) (not d!1808708) (not d!1808622) (not b!5737272) (not d!1808620) (not b!5737248) (not d!1808546) (not b!5737016) (not bm!438564) (not d!1808560) (not b!5737120) (not d!1808646) (not b!5737625) (not b!5737124) (not d!1808448) (not bm!438593) (not b!5737435) (not b!5737047) (not b!5737009) (not bm!438607) (not d!1808648) (not b_lambda!216677) (not d!1808610) (not b!5737537) (not b!5737095) (not b!5737247) (not b!5737142) (not b!5736733) (not d!1808642) (not b!5737312) (not d!1808770) (not b!5737558) (not bs!1341191) (not b!5737023) (not bm!438579) (not bm!438612) (not d!1808706) (not b!5737096) (not d!1808702) (not b!5737543) (not b!5737068) (not bm!438609) (not b!5737308) (not d!1808750) (not b!5737315) (not b!5737445) (not b!5737491) (not b!5737629) (not d!1808666) (not b!5737556) (not b!5737561) (not b!5737128) (not d!1808616) (not b!5737628) (not d!1808564) (not b!5737064) (not d!1808634) (not b!5737591) (not d!1808652) (not d!1808550) (not b!5737304) (not d!1808532) (not b!5737022) (not b!5737020) (not b!5737102) (not b!5737596) (not bm!438613) (not b!5737623) (not b!5736817) (not b_lambda!216679) (not d!1808820) (not b!5737138) (not b!5736916) (not bm!438553) (not b!5736647) (not b!5737286) (not b!5737478) (not d!1808746) (not b!5736779) (not bm!438588) (not b!5736907) (not b!5737186) (not b!5737137) (not b!5737092) (not b!5737395) (not b!5737185) (not d!1808828) (not bm!438550) (not b!5737307) (not b!5736923) (not b!5737566) (not d!1808498) (not bm!438611) (not b!5736920) (not d!1808826) (not d!1808774) (not d!1808644) (not d!1808794) (not b!5736803) (not b!5737037) (not bs!1341190) (not bm!438542) (not b!5736908) (not d!1808534) (not d!1808810) (not b!5737433) (not b!5737590) (not b!5737099) (not b!5737477) (not b!5737494) (not b!5736906) (not b!5736915) (not b!5737326) (not d!1808792) (not b!5736816) (not b!5737065) (not b!5737593) (not b!5737636) (not d!1808800) (not b!5737250) (not b!5737012) (not b!5736732) (not b!5737397) (not b_lambda!216685) (not b!5737327) (not d!1808602) (not b!5737088) (not d!1808780) (not b!5737641) (not d!1808684) (not b!5736775) (not b!5737495) (not b!5737101) (not bm!438555) (not d!1808510) (not b!5737627) (not b!5736986) (not d!1808562) (not b!5737038) (not b!5736780) (not d!1808528) (not bm!438554) (not d!1808830) (not d!1808728) (not b!5737594) (not bm!438617) (not bm!438544) (not b!5736728) (not d!1808766) (not d!1808676) (not b!5737538) (not b!5737103) (not b!5736806) (not d!1808540) (not bs!1341194) (not bm!438566) (not d!1808524) (not d!1808788) (not b!5737452) (not bm!438591) (not b!5737393) (not b!5737131) (not d!1808782) (not b!5736751) (not bm!438536) (not d!1808730) (not b!5737589) (not b!5737640) (not b!5736799) (not d!1808662) (not b!5736903) (not b!5737017) (not b!5737311) (not b!5737484) (not b!5736829) (not b!5737644) (not d!1808744) (not bm!438545) (not b!5737529) (not d!1808594) (not b!5736776) (not bs!1341192) (not b!5736644) (not b!5737451) (not b!5737533) (not b!5737444) (not bm!438580) (not bm!438615) (not b!5737624) (not b!5736772) (not b!5737424) (not d!1808530) (not d!1808588) (not b!5736783) (not b!5736985) (not b!5737637) (not b!5737025) (not b!5737063) (not b!5737141) (not bm!438567) (not b!5737609) (not bm!438592) (not d!1808516) (not b!5737104) (not b!5737645) (not d!1808772) (not b!5736912) (not b!5737323) (not d!1808626) (not b!5737145) (not b!5737610) (not b_lambda!216683) (not b!5737244) (not bm!438581) (not d!1808624) (not bm!438543) (not b!5737651) (not d!1808716) (not b!5736904) (not b!5737479) (not b!5737638) (not b!5736991) (not b!5737563) (not d!1808742) (not b!5737319) (not b!5737557) (not b!5737134) (not d!1808832) (not b!5737611) (not b!5737013) (not bm!438559) tp_is_empty!40743 (not bm!438589) (not d!1808704) (not d!1808526) (not b!5737318) (not b!5737440) (not d!1808712) (not b!5736750) (not b!5737562) (not d!1808668) (not d!1808816) (not b!5736798) (not b!5736919) (not b!5737592) (not b!5736795) (not b!5736725) (not b!5736729) (not d!1808590) (not d!1808740) (not b!5737441) (not b!5736820) (not b_lambda!216681) (not b!5737532) (not d!1808818) (not d!1808824) (not b!5737434) (not b!5737448) (not b!5736994) (not b!5737243) (not bm!438558) (not bm!438561) (not b!5737091) (not b!5737567) (not b!5737398) (not b!5737024) (not b!5737642) (not d!1808804) (not d!1808784) (not d!1808674) (not d!1808714) (not d!1808522) (not d!1808776) (not b!5737399) (not bm!438619) (not d!1808738) (not b!5737555) (not b!5737251) (not setNonEmpty!38503) (not b!5737553) (not bm!438560) (not b!5737123) (not b!5736809) (not b!5737271) (not b!5737283) (not d!1808544) (not b!5736802) (not b!5737634) (not b!5736813) (not d!1808580) (not b!5737602) (not b!5737322) (not b!5737394) (not b!5737046) (not b!5736812) (not d!1808822) (not b!5737481) (not b!5737127) (not d!1808802) (not bs!1341193))
(check-sat)
