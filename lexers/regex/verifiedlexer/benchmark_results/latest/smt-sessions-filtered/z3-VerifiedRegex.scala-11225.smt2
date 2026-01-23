; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!587596 () Bool)

(assert start!587596)

(declare-fun b!5698946 () Bool)

(assert (=> b!5698946 true))

(assert (=> b!5698946 true))

(declare-fun lambda!307360 () Int)

(declare-fun lambda!307359 () Int)

(assert (=> b!5698946 (not (= lambda!307360 lambda!307359))))

(assert (=> b!5698946 true))

(assert (=> b!5698946 true))

(declare-fun b!5698937 () Bool)

(assert (=> b!5698937 true))

(declare-fun bs!1328154 () Bool)

(declare-fun b!5698914 () Bool)

(assert (= bs!1328154 (and b!5698914 b!5698946)))

(declare-fun lambda!307362 () Int)

(declare-datatypes ((C!31664 0))(
  ( (C!31665 (val!25534 Int)) )
))
(declare-datatypes ((Regex!15697 0))(
  ( (ElementMatch!15697 (c!1003547 C!31664)) (Concat!24542 (regOne!31906 Regex!15697) (regTwo!31906 Regex!15697)) (EmptyExpr!15697) (Star!15697 (reg!16026 Regex!15697)) (EmptyLang!15697) (Union!15697 (regOne!31907 Regex!15697) (regTwo!31907 Regex!15697)) )
))
(declare-fun lt!2273584 () Regex!15697)

(declare-fun r!7292 () Regex!15697)

(assert (=> bs!1328154 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307362 lambda!307359))))

(assert (=> bs!1328154 (not (= lambda!307362 lambda!307360))))

(assert (=> b!5698914 true))

(assert (=> b!5698914 true))

(assert (=> b!5698914 true))

(declare-fun lambda!307363 () Int)

(assert (=> bs!1328154 (not (= lambda!307363 lambda!307359))))

(assert (=> bs!1328154 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307363 lambda!307360))))

(assert (=> b!5698914 (not (= lambda!307363 lambda!307362))))

(assert (=> b!5698914 true))

(assert (=> b!5698914 true))

(assert (=> b!5698914 true))

(declare-fun b!5698909 () Bool)

(declare-fun res!2406831 () Bool)

(declare-fun e!3505914 () Bool)

(assert (=> b!5698909 (=> res!2406831 e!3505914)))

(declare-datatypes ((List!63390 0))(
  ( (Nil!63266) (Cons!63266 (h!69714 C!31664) (t!376708 List!63390)) )
))
(declare-datatypes ((tuple2!65588 0))(
  ( (tuple2!65589 (_1!36097 List!63390) (_2!36097 List!63390)) )
))
(declare-fun lt!2273601 () tuple2!65588)

(declare-fun matchR!7882 (Regex!15697 List!63390) Bool)

(assert (=> b!5698909 (= res!2406831 (not (matchR!7882 lt!2273584 (_1!36097 lt!2273601))))))

(declare-fun b!5698910 () Bool)

(declare-fun res!2406845 () Bool)

(declare-fun e!3505926 () Bool)

(assert (=> b!5698910 (=> res!2406845 e!3505926)))

(declare-datatypes ((List!63391 0))(
  ( (Nil!63267) (Cons!63267 (h!69715 Regex!15697) (t!376709 List!63391)) )
))
(declare-datatypes ((Context!10162 0))(
  ( (Context!10163 (exprs!5581 List!63391)) )
))
(declare-datatypes ((List!63392 0))(
  ( (Nil!63268) (Cons!63268 (h!69716 Context!10162) (t!376710 List!63392)) )
))
(declare-fun zl!343 () List!63392)

(declare-fun isEmpty!35128 (List!63391) Bool)

(assert (=> b!5698910 (= res!2406845 (isEmpty!35128 (t!376709 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun b!5698911 () Bool)

(declare-fun e!3505917 () Bool)

(declare-fun tp_is_empty!40647 () Bool)

(declare-fun tp!1580535 () Bool)

(assert (=> b!5698911 (= e!3505917 (and tp_is_empty!40647 tp!1580535))))

(declare-fun b!5698912 () Bool)

(declare-fun e!3505908 () Bool)

(declare-fun e!3505911 () Bool)

(assert (=> b!5698912 (= e!3505908 (not e!3505911))))

(declare-fun res!2406830 () Bool)

(assert (=> b!5698912 (=> res!2406830 e!3505911)))

(get-info :version)

(assert (=> b!5698912 (= res!2406830 (not ((_ is Cons!63268) zl!343)))))

(declare-fun lt!2273597 () Bool)

(declare-fun lt!2273592 () Bool)

(assert (=> b!5698912 (= lt!2273597 lt!2273592)))

(declare-fun s!2326 () List!63390)

(declare-fun matchRSpec!2800 (Regex!15697 List!63390) Bool)

(assert (=> b!5698912 (= lt!2273592 (matchRSpec!2800 r!7292 s!2326))))

(assert (=> b!5698912 (= lt!2273597 (matchR!7882 r!7292 s!2326))))

(declare-datatypes ((Unit!156320 0))(
  ( (Unit!156321) )
))
(declare-fun lt!2273575 () Unit!156320)

(declare-fun mainMatchTheorem!2800 (Regex!15697 List!63390) Unit!156320)

(assert (=> b!5698912 (= lt!2273575 (mainMatchTheorem!2800 r!7292 s!2326))))

(declare-fun b!5698913 () Bool)

(declare-fun e!3505916 () Bool)

(declare-fun e!3505905 () Bool)

(assert (=> b!5698913 (= e!3505916 e!3505905)))

(declare-fun res!2406832 () Bool)

(assert (=> b!5698913 (=> res!2406832 e!3505905)))

(declare-fun lt!2273576 () Regex!15697)

(assert (=> b!5698913 (= res!2406832 (not (= r!7292 lt!2273576)))))

(assert (=> b!5698913 (= lt!2273576 (Concat!24542 lt!2273584 (regTwo!31906 r!7292)))))

(declare-fun e!3505918 () Bool)

(assert (=> b!5698914 (= e!3505918 e!3505914)))

(declare-fun res!2406819 () Bool)

(assert (=> b!5698914 (=> res!2406819 e!3505914)))

(declare-fun ++!13889 (List!63390 List!63390) List!63390)

(assert (=> b!5698914 (= res!2406819 (not (= (++!13889 (_1!36097 lt!2273601) (_2!36097 lt!2273601)) s!2326)))))

(declare-datatypes ((Option!15706 0))(
  ( (None!15705) (Some!15705 (v!51758 tuple2!65588)) )
))
(declare-fun lt!2273589 () Option!15706)

(declare-fun get!21805 (Option!15706) tuple2!65588)

(assert (=> b!5698914 (= lt!2273601 (get!21805 lt!2273589))))

(declare-fun Exists!2797 (Int) Bool)

(assert (=> b!5698914 (= (Exists!2797 lambda!307362) (Exists!2797 lambda!307363))))

(declare-fun lt!2273594 () Unit!156320)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1426 (Regex!15697 Regex!15697 List!63390) Unit!156320)

(assert (=> b!5698914 (= lt!2273594 (lemmaExistCutMatchRandMatchRSpecEquivalent!1426 lt!2273584 (regTwo!31906 r!7292) s!2326))))

(declare-fun isDefined!12409 (Option!15706) Bool)

(assert (=> b!5698914 (= (isDefined!12409 lt!2273589) (Exists!2797 lambda!307362))))

(declare-fun findConcatSeparation!2120 (Regex!15697 Regex!15697 List!63390 List!63390 List!63390) Option!15706)

(assert (=> b!5698914 (= lt!2273589 (findConcatSeparation!2120 lt!2273584 (regTwo!31906 r!7292) Nil!63266 s!2326 s!2326))))

(declare-fun lt!2273586 () Unit!156320)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1884 (Regex!15697 Regex!15697 List!63390) Unit!156320)

(assert (=> b!5698914 (= lt!2273586 (lemmaFindConcatSeparationEquivalentToExists!1884 lt!2273584 (regTwo!31906 r!7292) s!2326))))

(declare-fun b!5698915 () Bool)

(declare-fun e!3505924 () Bool)

(declare-fun nullable!5729 (Regex!15697) Bool)

(assert (=> b!5698915 (= e!3505924 (nullable!5729 (regOne!31906 (regOne!31906 r!7292))))))

(declare-fun setIsEmpty!38169 () Bool)

(declare-fun setRes!38169 () Bool)

(assert (=> setIsEmpty!38169 setRes!38169))

(declare-fun b!5698916 () Bool)

(declare-fun res!2406833 () Bool)

(assert (=> b!5698916 (=> res!2406833 e!3505914)))

(assert (=> b!5698916 (= res!2406833 (not (matchR!7882 (regTwo!31906 r!7292) (_2!36097 lt!2273601))))))

(declare-fun b!5698917 () Bool)

(declare-fun res!2406823 () Bool)

(assert (=> b!5698917 (=> res!2406823 e!3505916)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2273577 () (InoxSet Context!10162))

(declare-fun lt!2273599 () (InoxSet Context!10162))

(declare-fun matchZipper!1835 ((InoxSet Context!10162) List!63390) Bool)

(assert (=> b!5698917 (= res!2406823 (not (= (matchZipper!1835 lt!2273599 s!2326) (matchZipper!1835 lt!2273577 (t!376708 s!2326)))))))

(declare-fun b!5698918 () Bool)

(declare-fun e!3505920 () Bool)

(declare-fun tp!1580538 () Bool)

(assert (=> b!5698918 (= e!3505920 tp!1580538)))

(declare-fun b!5698919 () Bool)

(declare-fun res!2406843 () Bool)

(declare-fun e!3505909 () Bool)

(assert (=> b!5698919 (=> res!2406843 e!3505909)))

(assert (=> b!5698919 (= res!2406843 e!3505924)))

(declare-fun res!2406816 () Bool)

(assert (=> b!5698919 (=> (not res!2406816) (not e!3505924))))

(assert (=> b!5698919 (= res!2406816 ((_ is Concat!24542) (regOne!31906 r!7292)))))

(declare-fun b!5698920 () Bool)

(declare-fun res!2406822 () Bool)

(assert (=> b!5698920 (=> res!2406822 e!3505911)))

(declare-fun generalisedUnion!1560 (List!63391) Regex!15697)

(declare-fun unfocusZipperList!1125 (List!63392) List!63391)

(assert (=> b!5698920 (= res!2406822 (not (= r!7292 (generalisedUnion!1560 (unfocusZipperList!1125 zl!343)))))))

(declare-fun b!5698921 () Bool)

(declare-fun e!3505919 () Bool)

(declare-fun e!3505921 () Bool)

(assert (=> b!5698921 (= e!3505919 e!3505921)))

(declare-fun res!2406835 () Bool)

(assert (=> b!5698921 (=> res!2406835 e!3505921)))

(declare-fun lt!2273568 () Context!10162)

(declare-fun unfocusZipper!1439 (List!63392) Regex!15697)

(assert (=> b!5698921 (= res!2406835 (not (= (unfocusZipper!1439 (Cons!63268 lt!2273568 Nil!63268)) (reg!16026 (regOne!31906 r!7292)))))))

(declare-fun lt!2273566 () (InoxSet Context!10162))

(declare-fun lambda!307361 () Int)

(declare-fun lt!2273593 () Context!10162)

(declare-fun flatMap!1310 ((InoxSet Context!10162) Int) (InoxSet Context!10162))

(declare-fun derivationStepZipperUp!965 (Context!10162 C!31664) (InoxSet Context!10162))

(assert (=> b!5698921 (= (flatMap!1310 lt!2273566 lambda!307361) (derivationStepZipperUp!965 lt!2273593 (h!69714 s!2326)))))

(declare-fun lt!2273600 () Unit!156320)

(declare-fun lemmaFlatMapOnSingletonSet!842 ((InoxSet Context!10162) Context!10162 Int) Unit!156320)

(assert (=> b!5698921 (= lt!2273600 (lemmaFlatMapOnSingletonSet!842 lt!2273566 lt!2273593 lambda!307361))))

(declare-fun lt!2273598 () (InoxSet Context!10162))

(assert (=> b!5698921 (= (flatMap!1310 lt!2273598 lambda!307361) (derivationStepZipperUp!965 lt!2273568 (h!69714 s!2326)))))

(declare-fun lt!2273587 () Unit!156320)

(assert (=> b!5698921 (= lt!2273587 (lemmaFlatMapOnSingletonSet!842 lt!2273598 lt!2273568 lambda!307361))))

(declare-fun lt!2273567 () (InoxSet Context!10162))

(assert (=> b!5698921 (= lt!2273567 (derivationStepZipperUp!965 lt!2273593 (h!69714 s!2326)))))

(declare-fun lt!2273580 () (InoxSet Context!10162))

(assert (=> b!5698921 (= lt!2273580 (derivationStepZipperUp!965 lt!2273568 (h!69714 s!2326)))))

(assert (=> b!5698921 (= lt!2273566 (store ((as const (Array Context!10162 Bool)) false) lt!2273593 true))))

(assert (=> b!5698921 (= lt!2273598 (store ((as const (Array Context!10162 Bool)) false) lt!2273568 true))))

(assert (=> b!5698921 (= lt!2273568 (Context!10163 (Cons!63267 (reg!16026 (regOne!31906 r!7292)) Nil!63267)))))

(declare-fun b!5698922 () Bool)

(declare-fun e!3505925 () Bool)

(declare-fun regexDepth!228 (Regex!15697) Int)

(declare-fun generalisedConcat!1312 (List!63391) Regex!15697)

(assert (=> b!5698922 (= e!3505925 (>= (regexDepth!228 r!7292) (regexDepth!228 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343)))))))))

(declare-fun b!5698923 () Bool)

(assert (=> b!5698923 (= e!3505914 e!3505925)))

(declare-fun res!2406820 () Bool)

(assert (=> b!5698923 (=> res!2406820 e!3505925)))

(declare-fun lt!2273590 () (InoxSet Context!10162))

(declare-fun lt!2273574 () (InoxSet Context!10162))

(declare-fun derivationStepZipper!1780 ((InoxSet Context!10162) C!31664) (InoxSet Context!10162))

(assert (=> b!5698923 (= res!2406820 (not (= lt!2273590 (derivationStepZipper!1780 lt!2273574 (h!69714 s!2326)))))))

(declare-fun lt!2273595 () Context!10162)

(assert (=> b!5698923 (= (flatMap!1310 lt!2273574 lambda!307361) (derivationStepZipperUp!965 lt!2273595 (h!69714 s!2326)))))

(declare-fun lt!2273571 () Unit!156320)

(assert (=> b!5698923 (= lt!2273571 (lemmaFlatMapOnSingletonSet!842 lt!2273574 lt!2273595 lambda!307361))))

(assert (=> b!5698923 (= lt!2273574 (store ((as const (Array Context!10162 Bool)) false) lt!2273595 true))))

(declare-fun b!5698924 () Bool)

(declare-fun res!2406837 () Bool)

(assert (=> b!5698924 (=> res!2406837 e!3505909)))

(assert (=> b!5698924 (= res!2406837 (or ((_ is Concat!24542) (regOne!31906 r!7292)) (not ((_ is Star!15697) (regOne!31906 r!7292)))))))

(declare-fun b!5698925 () Bool)

(declare-fun res!2406840 () Bool)

(assert (=> b!5698925 (=> res!2406840 e!3505911)))

(assert (=> b!5698925 (= res!2406840 (or ((_ is EmptyExpr!15697) r!7292) ((_ is EmptyLang!15697) r!7292) ((_ is ElementMatch!15697) r!7292) ((_ is Union!15697) r!7292) (not ((_ is Concat!24542) r!7292))))))

(declare-fun b!5698926 () Bool)

(declare-fun e!3505907 () Bool)

(declare-fun tp!1580533 () Bool)

(assert (=> b!5698926 (= e!3505907 tp!1580533)))

(declare-fun b!5698927 () Bool)

(declare-fun e!3505915 () Unit!156320)

(declare-fun Unit!156322 () Unit!156320)

(assert (=> b!5698927 (= e!3505915 Unit!156322)))

(declare-fun lt!2273573 () Unit!156320)

(declare-fun lt!2273565 () (InoxSet Context!10162))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!722 ((InoxSet Context!10162) (InoxSet Context!10162) List!63390) Unit!156320)

(assert (=> b!5698927 (= lt!2273573 (lemmaZipperConcatMatchesSameAsBothZippers!722 lt!2273565 lt!2273590 (t!376708 s!2326)))))

(declare-fun res!2406836 () Bool)

(assert (=> b!5698927 (= res!2406836 (matchZipper!1835 lt!2273565 (t!376708 s!2326)))))

(declare-fun e!3505910 () Bool)

(assert (=> b!5698927 (=> res!2406836 e!3505910)))

(assert (=> b!5698927 (= (matchZipper!1835 ((_ map or) lt!2273565 lt!2273590) (t!376708 s!2326)) e!3505910)))

(declare-fun b!5698928 () Bool)

(declare-fun e!3505922 () Bool)

(declare-fun tp!1580537 () Bool)

(assert (=> b!5698928 (= e!3505922 tp!1580537)))

(declare-fun b!5698929 () Bool)

(declare-fun e!3505912 () Bool)

(assert (=> b!5698929 (= e!3505912 e!3505908)))

(declare-fun res!2406818 () Bool)

(assert (=> b!5698929 (=> (not res!2406818) (not e!3505908))))

(declare-fun lt!2273564 () Regex!15697)

(assert (=> b!5698929 (= res!2406818 (= r!7292 lt!2273564))))

(assert (=> b!5698929 (= lt!2273564 (unfocusZipper!1439 zl!343))))

(declare-fun b!5698930 () Bool)

(declare-fun res!2406824 () Bool)

(assert (=> b!5698930 (=> res!2406824 e!3505911)))

(declare-fun isEmpty!35129 (List!63392) Bool)

(assert (=> b!5698930 (= res!2406824 (not (isEmpty!35129 (t!376710 zl!343))))))

(declare-fun b!5698931 () Bool)

(declare-fun res!2406838 () Bool)

(assert (=> b!5698931 (=> res!2406838 e!3505911)))

(assert (=> b!5698931 (= res!2406838 (not (= r!7292 (generalisedConcat!1312 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun b!5698932 () Bool)

(declare-fun res!2406817 () Bool)

(assert (=> b!5698932 (=> res!2406817 e!3505911)))

(assert (=> b!5698932 (= res!2406817 (not ((_ is Cons!63267) (exprs!5581 (h!69716 zl!343)))))))

(declare-fun b!5698933 () Bool)

(assert (=> b!5698933 (= e!3505905 e!3505919)))

(declare-fun res!2406839 () Bool)

(assert (=> b!5698933 (=> res!2406839 e!3505919)))

(declare-fun lt!2273579 () Context!10162)

(declare-fun lt!2273581 () Regex!15697)

(assert (=> b!5698933 (= res!2406839 (not (= (unfocusZipper!1439 (Cons!63268 lt!2273579 Nil!63268)) lt!2273581)))))

(assert (=> b!5698933 (= lt!2273581 (Concat!24542 (reg!16026 (regOne!31906 r!7292)) lt!2273576))))

(declare-fun b!5698934 () Bool)

(declare-fun tp!1580529 () Bool)

(declare-fun tp!1580530 () Bool)

(assert (=> b!5698934 (= e!3505922 (and tp!1580529 tp!1580530))))

(declare-fun b!5698935 () Bool)

(declare-fun e!3505913 () Bool)

(assert (=> b!5698935 (= e!3505913 e!3505916)))

(declare-fun res!2406825 () Bool)

(assert (=> b!5698935 (=> res!2406825 e!3505916)))

(declare-fun lt!2273572 () (InoxSet Context!10162))

(assert (=> b!5698935 (= res!2406825 (not (= lt!2273577 lt!2273572)))))

(assert (=> b!5698935 (= (flatMap!1310 lt!2273599 lambda!307361) (derivationStepZipperUp!965 lt!2273579 (h!69714 s!2326)))))

(declare-fun lt!2273602 () Unit!156320)

(assert (=> b!5698935 (= lt!2273602 (lemmaFlatMapOnSingletonSet!842 lt!2273599 lt!2273579 lambda!307361))))

(declare-fun lt!2273588 () (InoxSet Context!10162))

(assert (=> b!5698935 (= lt!2273588 (derivationStepZipperUp!965 lt!2273579 (h!69714 s!2326)))))

(assert (=> b!5698935 (= lt!2273577 (derivationStepZipper!1780 lt!2273599 (h!69714 s!2326)))))

(assert (=> b!5698935 (= lt!2273599 (store ((as const (Array Context!10162 Bool)) false) lt!2273579 true))))

(declare-fun lt!2273596 () List!63391)

(assert (=> b!5698935 (= lt!2273579 (Context!10163 (Cons!63267 (reg!16026 (regOne!31906 r!7292)) lt!2273596)))))

(declare-fun b!5698936 () Bool)

(assert (=> b!5698936 (= e!3505910 (matchZipper!1835 lt!2273590 (t!376708 s!2326)))))

(assert (=> b!5698937 (= e!3505926 e!3505909)))

(declare-fun res!2406821 () Bool)

(assert (=> b!5698937 (=> res!2406821 e!3505909)))

(assert (=> b!5698937 (= res!2406821 (or (and ((_ is ElementMatch!15697) (regOne!31906 r!7292)) (= (c!1003547 (regOne!31906 r!7292)) (h!69714 s!2326))) ((_ is Union!15697) (regOne!31906 r!7292))))))

(declare-fun lt!2273578 () Unit!156320)

(assert (=> b!5698937 (= lt!2273578 e!3505915)))

(declare-fun c!1003546 () Bool)

(assert (=> b!5698937 (= c!1003546 (nullable!5729 (h!69715 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!10162))

(assert (=> b!5698937 (= (flatMap!1310 z!1189 lambda!307361) (derivationStepZipperUp!965 (h!69716 zl!343) (h!69714 s!2326)))))

(declare-fun lt!2273582 () Unit!156320)

(assert (=> b!5698937 (= lt!2273582 (lemmaFlatMapOnSingletonSet!842 z!1189 (h!69716 zl!343) lambda!307361))))

(assert (=> b!5698937 (= lt!2273590 (derivationStepZipperUp!965 lt!2273595 (h!69714 s!2326)))))

(declare-fun derivationStepZipperDown!1039 (Regex!15697 Context!10162 C!31664) (InoxSet Context!10162))

(assert (=> b!5698937 (= lt!2273565 (derivationStepZipperDown!1039 (h!69715 (exprs!5581 (h!69716 zl!343))) lt!2273595 (h!69714 s!2326)))))

(assert (=> b!5698937 (= lt!2273595 (Context!10163 (t!376709 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun lt!2273585 () (InoxSet Context!10162))

(assert (=> b!5698937 (= lt!2273585 (derivationStepZipperUp!965 (Context!10163 (Cons!63267 (h!69715 (exprs!5581 (h!69716 zl!343))) (t!376709 (exprs!5581 (h!69716 zl!343))))) (h!69714 s!2326)))))

(declare-fun b!5698938 () Bool)

(assert (=> b!5698938 (= e!3505909 e!3505913)))

(declare-fun res!2406842 () Bool)

(assert (=> b!5698938 (=> res!2406842 e!3505913)))

(assert (=> b!5698938 (= res!2406842 (not (= lt!2273565 lt!2273572)))))

(assert (=> b!5698938 (= lt!2273572 (derivationStepZipperDown!1039 (reg!16026 (regOne!31906 r!7292)) lt!2273593 (h!69714 s!2326)))))

(assert (=> b!5698938 (= lt!2273593 (Context!10163 lt!2273596))))

(assert (=> b!5698938 (= lt!2273596 (Cons!63267 lt!2273584 (t!376709 (exprs!5581 (h!69716 zl!343)))))))

(assert (=> b!5698938 (= lt!2273584 (Star!15697 (reg!16026 (regOne!31906 r!7292))))))

(declare-fun b!5698939 () Bool)

(declare-fun res!2406844 () Bool)

(assert (=> b!5698939 (=> (not res!2406844) (not e!3505912))))

(declare-fun toList!9481 ((InoxSet Context!10162)) List!63392)

(assert (=> b!5698939 (= res!2406844 (= (toList!9481 z!1189) zl!343))))

(declare-fun b!5698940 () Bool)

(assert (=> b!5698940 (= e!3505921 e!3505918)))

(declare-fun res!2406829 () Bool)

(assert (=> b!5698940 (=> res!2406829 e!3505918)))

(assert (=> b!5698940 (= res!2406829 (not lt!2273597))))

(declare-fun e!3505923 () Bool)

(assert (=> b!5698940 e!3505923))

(declare-fun res!2406841 () Bool)

(assert (=> b!5698940 (=> (not res!2406841) (not e!3505923))))

(assert (=> b!5698940 (= res!2406841 (= (matchR!7882 lt!2273581 s!2326) (matchRSpec!2800 lt!2273581 s!2326)))))

(declare-fun lt!2273583 () Unit!156320)

(assert (=> b!5698940 (= lt!2273583 (mainMatchTheorem!2800 lt!2273581 s!2326))))

(declare-fun b!5698941 () Bool)

(declare-fun res!2406834 () Bool)

(assert (=> b!5698941 (=> res!2406834 e!3505914)))

(declare-fun isEmpty!35130 (List!63390) Bool)

(assert (=> b!5698941 (= res!2406834 (not (isEmpty!35130 (_1!36097 lt!2273601))))))

(declare-fun b!5698942 () Bool)

(declare-fun Unit!156323 () Unit!156320)

(assert (=> b!5698942 (= e!3505915 Unit!156323)))

(declare-fun res!2406815 () Bool)

(assert (=> start!587596 (=> (not res!2406815) (not e!3505912))))

(declare-fun validRegex!7433 (Regex!15697) Bool)

(assert (=> start!587596 (= res!2406815 (validRegex!7433 r!7292))))

(assert (=> start!587596 e!3505912))

(assert (=> start!587596 e!3505922))

(declare-fun condSetEmpty!38169 () Bool)

(assert (=> start!587596 (= condSetEmpty!38169 (= z!1189 ((as const (Array Context!10162 Bool)) false)))))

(assert (=> start!587596 setRes!38169))

(declare-fun e!3505906 () Bool)

(assert (=> start!587596 e!3505906))

(assert (=> start!587596 e!3505917))

(declare-fun b!5698943 () Bool)

(declare-fun tp!1580536 () Bool)

(declare-fun tp!1580534 () Bool)

(assert (=> b!5698943 (= e!3505922 (and tp!1580536 tp!1580534))))

(declare-fun b!5698944 () Bool)

(declare-fun res!2406826 () Bool)

(assert (=> b!5698944 (=> res!2406826 e!3505921)))

(assert (=> b!5698944 (= res!2406826 (not (= (unfocusZipper!1439 (Cons!63268 lt!2273593 Nil!63268)) lt!2273576)))))

(declare-fun b!5698945 () Bool)

(assert (=> b!5698945 (= e!3505923 (or (not lt!2273597) lt!2273592))))

(assert (=> b!5698946 (= e!3505911 e!3505926)))

(declare-fun res!2406827 () Bool)

(assert (=> b!5698946 (=> res!2406827 e!3505926)))

(declare-fun lt!2273569 () Bool)

(assert (=> b!5698946 (= res!2406827 (or (not (= lt!2273597 lt!2273569)) ((_ is Nil!63266) s!2326)))))

(assert (=> b!5698946 (= (Exists!2797 lambda!307359) (Exists!2797 lambda!307360))))

(declare-fun lt!2273591 () Unit!156320)

(assert (=> b!5698946 (= lt!2273591 (lemmaExistCutMatchRandMatchRSpecEquivalent!1426 (regOne!31906 r!7292) (regTwo!31906 r!7292) s!2326))))

(assert (=> b!5698946 (= lt!2273569 (Exists!2797 lambda!307359))))

(assert (=> b!5698946 (= lt!2273569 (isDefined!12409 (findConcatSeparation!2120 (regOne!31906 r!7292) (regTwo!31906 r!7292) Nil!63266 s!2326 s!2326)))))

(declare-fun lt!2273570 () Unit!156320)

(assert (=> b!5698946 (= lt!2273570 (lemmaFindConcatSeparationEquivalentToExists!1884 (regOne!31906 r!7292) (regTwo!31906 r!7292) s!2326))))

(declare-fun tp!1580532 () Bool)

(declare-fun b!5698947 () Bool)

(declare-fun inv!82489 (Context!10162) Bool)

(assert (=> b!5698947 (= e!3505906 (and (inv!82489 (h!69716 zl!343)) e!3505920 tp!1580532))))

(declare-fun b!5698948 () Bool)

(declare-fun res!2406828 () Bool)

(assert (=> b!5698948 (=> res!2406828 e!3505916)))

(assert (=> b!5698948 (= res!2406828 (not (= lt!2273564 r!7292)))))

(declare-fun tp!1580531 () Bool)

(declare-fun setNonEmpty!38169 () Bool)

(declare-fun setElem!38169 () Context!10162)

(assert (=> setNonEmpty!38169 (= setRes!38169 (and tp!1580531 (inv!82489 setElem!38169) e!3505907))))

(declare-fun setRest!38169 () (InoxSet Context!10162))

(assert (=> setNonEmpty!38169 (= z!1189 ((_ map or) (store ((as const (Array Context!10162 Bool)) false) setElem!38169 true) setRest!38169))))

(declare-fun b!5698949 () Bool)

(assert (=> b!5698949 (= e!3505922 tp_is_empty!40647)))

(assert (= (and start!587596 res!2406815) b!5698939))

(assert (= (and b!5698939 res!2406844) b!5698929))

(assert (= (and b!5698929 res!2406818) b!5698912))

(assert (= (and b!5698912 (not res!2406830)) b!5698930))

(assert (= (and b!5698930 (not res!2406824)) b!5698931))

(assert (= (and b!5698931 (not res!2406838)) b!5698932))

(assert (= (and b!5698932 (not res!2406817)) b!5698920))

(assert (= (and b!5698920 (not res!2406822)) b!5698925))

(assert (= (and b!5698925 (not res!2406840)) b!5698946))

(assert (= (and b!5698946 (not res!2406827)) b!5698910))

(assert (= (and b!5698910 (not res!2406845)) b!5698937))

(assert (= (and b!5698937 c!1003546) b!5698927))

(assert (= (and b!5698937 (not c!1003546)) b!5698942))

(assert (= (and b!5698927 (not res!2406836)) b!5698936))

(assert (= (and b!5698937 (not res!2406821)) b!5698919))

(assert (= (and b!5698919 res!2406816) b!5698915))

(assert (= (and b!5698919 (not res!2406843)) b!5698924))

(assert (= (and b!5698924 (not res!2406837)) b!5698938))

(assert (= (and b!5698938 (not res!2406842)) b!5698935))

(assert (= (and b!5698935 (not res!2406825)) b!5698917))

(assert (= (and b!5698917 (not res!2406823)) b!5698948))

(assert (= (and b!5698948 (not res!2406828)) b!5698913))

(assert (= (and b!5698913 (not res!2406832)) b!5698933))

(assert (= (and b!5698933 (not res!2406839)) b!5698921))

(assert (= (and b!5698921 (not res!2406835)) b!5698944))

(assert (= (and b!5698944 (not res!2406826)) b!5698940))

(assert (= (and b!5698940 res!2406841) b!5698945))

(assert (= (and b!5698940 (not res!2406829)) b!5698914))

(assert (= (and b!5698914 (not res!2406819)) b!5698909))

(assert (= (and b!5698909 (not res!2406831)) b!5698916))

(assert (= (and b!5698916 (not res!2406833)) b!5698941))

(assert (= (and b!5698941 (not res!2406834)) b!5698923))

(assert (= (and b!5698923 (not res!2406820)) b!5698922))

(assert (= (and start!587596 ((_ is ElementMatch!15697) r!7292)) b!5698949))

(assert (= (and start!587596 ((_ is Concat!24542) r!7292)) b!5698934))

(assert (= (and start!587596 ((_ is Star!15697) r!7292)) b!5698928))

(assert (= (and start!587596 ((_ is Union!15697) r!7292)) b!5698943))

(assert (= (and start!587596 condSetEmpty!38169) setIsEmpty!38169))

(assert (= (and start!587596 (not condSetEmpty!38169)) setNonEmpty!38169))

(assert (= setNonEmpty!38169 b!5698926))

(assert (= b!5698947 b!5698918))

(assert (= (and start!587596 ((_ is Cons!63268) zl!343)) b!5698947))

(assert (= (and start!587596 ((_ is Cons!63266) s!2326)) b!5698911))

(declare-fun m!6654412 () Bool)

(assert (=> b!5698931 m!6654412))

(declare-fun m!6654414 () Bool)

(assert (=> setNonEmpty!38169 m!6654414))

(declare-fun m!6654416 () Bool)

(assert (=> b!5698929 m!6654416))

(declare-fun m!6654418 () Bool)

(assert (=> b!5698936 m!6654418))

(declare-fun m!6654420 () Bool)

(assert (=> b!5698915 m!6654420))

(declare-fun m!6654422 () Bool)

(assert (=> b!5698910 m!6654422))

(declare-fun m!6654424 () Bool)

(assert (=> b!5698917 m!6654424))

(declare-fun m!6654426 () Bool)

(assert (=> b!5698917 m!6654426))

(declare-fun m!6654428 () Bool)

(assert (=> b!5698946 m!6654428))

(declare-fun m!6654430 () Bool)

(assert (=> b!5698946 m!6654430))

(declare-fun m!6654432 () Bool)

(assert (=> b!5698946 m!6654432))

(assert (=> b!5698946 m!6654428))

(declare-fun m!6654434 () Bool)

(assert (=> b!5698946 m!6654434))

(declare-fun m!6654436 () Bool)

(assert (=> b!5698946 m!6654436))

(assert (=> b!5698946 m!6654430))

(declare-fun m!6654438 () Bool)

(assert (=> b!5698946 m!6654438))

(declare-fun m!6654440 () Bool)

(assert (=> b!5698937 m!6654440))

(declare-fun m!6654442 () Bool)

(assert (=> b!5698937 m!6654442))

(declare-fun m!6654444 () Bool)

(assert (=> b!5698937 m!6654444))

(declare-fun m!6654446 () Bool)

(assert (=> b!5698937 m!6654446))

(declare-fun m!6654448 () Bool)

(assert (=> b!5698937 m!6654448))

(declare-fun m!6654450 () Bool)

(assert (=> b!5698937 m!6654450))

(declare-fun m!6654452 () Bool)

(assert (=> b!5698937 m!6654452))

(declare-fun m!6654454 () Bool)

(assert (=> b!5698916 m!6654454))

(declare-fun m!6654456 () Bool)

(assert (=> b!5698940 m!6654456))

(declare-fun m!6654458 () Bool)

(assert (=> b!5698940 m!6654458))

(declare-fun m!6654460 () Bool)

(assert (=> b!5698940 m!6654460))

(declare-fun m!6654462 () Bool)

(assert (=> b!5698927 m!6654462))

(declare-fun m!6654464 () Bool)

(assert (=> b!5698927 m!6654464))

(declare-fun m!6654466 () Bool)

(assert (=> b!5698927 m!6654466))

(declare-fun m!6654468 () Bool)

(assert (=> b!5698930 m!6654468))

(declare-fun m!6654470 () Bool)

(assert (=> b!5698921 m!6654470))

(declare-fun m!6654472 () Bool)

(assert (=> b!5698921 m!6654472))

(declare-fun m!6654474 () Bool)

(assert (=> b!5698921 m!6654474))

(declare-fun m!6654476 () Bool)

(assert (=> b!5698921 m!6654476))

(declare-fun m!6654478 () Bool)

(assert (=> b!5698921 m!6654478))

(declare-fun m!6654480 () Bool)

(assert (=> b!5698921 m!6654480))

(declare-fun m!6654482 () Bool)

(assert (=> b!5698921 m!6654482))

(declare-fun m!6654484 () Bool)

(assert (=> b!5698921 m!6654484))

(declare-fun m!6654486 () Bool)

(assert (=> b!5698921 m!6654486))

(declare-fun m!6654488 () Bool)

(assert (=> b!5698922 m!6654488))

(declare-fun m!6654490 () Bool)

(assert (=> b!5698922 m!6654490))

(assert (=> b!5698922 m!6654490))

(declare-fun m!6654492 () Bool)

(assert (=> b!5698922 m!6654492))

(declare-fun m!6654494 () Bool)

(assert (=> b!5698912 m!6654494))

(declare-fun m!6654496 () Bool)

(assert (=> b!5698912 m!6654496))

(declare-fun m!6654498 () Bool)

(assert (=> b!5698912 m!6654498))

(declare-fun m!6654500 () Bool)

(assert (=> b!5698909 m!6654500))

(declare-fun m!6654502 () Bool)

(assert (=> b!5698920 m!6654502))

(assert (=> b!5698920 m!6654502))

(declare-fun m!6654504 () Bool)

(assert (=> b!5698920 m!6654504))

(declare-fun m!6654506 () Bool)

(assert (=> b!5698935 m!6654506))

(declare-fun m!6654508 () Bool)

(assert (=> b!5698935 m!6654508))

(declare-fun m!6654510 () Bool)

(assert (=> b!5698935 m!6654510))

(declare-fun m!6654512 () Bool)

(assert (=> b!5698935 m!6654512))

(declare-fun m!6654514 () Bool)

(assert (=> b!5698935 m!6654514))

(declare-fun m!6654516 () Bool)

(assert (=> b!5698914 m!6654516))

(declare-fun m!6654518 () Bool)

(assert (=> b!5698914 m!6654518))

(declare-fun m!6654520 () Bool)

(assert (=> b!5698914 m!6654520))

(assert (=> b!5698914 m!6654516))

(declare-fun m!6654522 () Bool)

(assert (=> b!5698914 m!6654522))

(declare-fun m!6654524 () Bool)

(assert (=> b!5698914 m!6654524))

(declare-fun m!6654526 () Bool)

(assert (=> b!5698914 m!6654526))

(declare-fun m!6654528 () Bool)

(assert (=> b!5698914 m!6654528))

(declare-fun m!6654530 () Bool)

(assert (=> b!5698914 m!6654530))

(declare-fun m!6654532 () Bool)

(assert (=> b!5698923 m!6654532))

(declare-fun m!6654534 () Bool)

(assert (=> b!5698923 m!6654534))

(declare-fun m!6654536 () Bool)

(assert (=> b!5698923 m!6654536))

(declare-fun m!6654538 () Bool)

(assert (=> b!5698923 m!6654538))

(assert (=> b!5698923 m!6654452))

(declare-fun m!6654540 () Bool)

(assert (=> b!5698941 m!6654540))

(declare-fun m!6654542 () Bool)

(assert (=> b!5698947 m!6654542))

(declare-fun m!6654544 () Bool)

(assert (=> b!5698933 m!6654544))

(declare-fun m!6654546 () Bool)

(assert (=> b!5698939 m!6654546))

(declare-fun m!6654548 () Bool)

(assert (=> b!5698938 m!6654548))

(declare-fun m!6654550 () Bool)

(assert (=> b!5698944 m!6654550))

(declare-fun m!6654552 () Bool)

(assert (=> start!587596 m!6654552))

(check-sat (not b!5698923) (not b!5698931) (not b!5698922) (not b!5698935) (not b!5698936) (not b!5698943) (not b!5698946) (not b!5698937) (not b!5698912) (not b!5698918) (not b!5698921) (not b!5698926) (not b!5698915) (not start!587596) (not b!5698933) (not b!5698927) (not b!5698911) (not setNonEmpty!38169) (not b!5698929) (not b!5698910) (not b!5698916) (not b!5698944) (not b!5698928) tp_is_empty!40647 (not b!5698917) (not b!5698934) (not b!5698941) (not b!5698938) (not b!5698940) (not b!5698909) (not b!5698939) (not b!5698920) (not b!5698947) (not b!5698914) (not b!5698930))
(check-sat)
(get-model)

(declare-fun d!1797984 () Bool)

(declare-fun e!3506066 () Bool)

(assert (=> d!1797984 (= (matchZipper!1835 ((_ map or) lt!2273565 lt!2273590) (t!376708 s!2326)) e!3506066)))

(declare-fun res!2406909 () Bool)

(assert (=> d!1797984 (=> res!2406909 e!3506066)))

(assert (=> d!1797984 (= res!2406909 (matchZipper!1835 lt!2273565 (t!376708 s!2326)))))

(declare-fun lt!2273636 () Unit!156320)

(declare-fun choose!43106 ((InoxSet Context!10162) (InoxSet Context!10162) List!63390) Unit!156320)

(assert (=> d!1797984 (= lt!2273636 (choose!43106 lt!2273565 lt!2273590 (t!376708 s!2326)))))

(assert (=> d!1797984 (= (lemmaZipperConcatMatchesSameAsBothZippers!722 lt!2273565 lt!2273590 (t!376708 s!2326)) lt!2273636)))

(declare-fun b!5699197 () Bool)

(assert (=> b!5699197 (= e!3506066 (matchZipper!1835 lt!2273590 (t!376708 s!2326)))))

(assert (= (and d!1797984 (not res!2406909)) b!5699197))

(assert (=> d!1797984 m!6654466))

(assert (=> d!1797984 m!6654464))

(declare-fun m!6654702 () Bool)

(assert (=> d!1797984 m!6654702))

(assert (=> b!5699197 m!6654418))

(assert (=> b!5698927 d!1797984))

(declare-fun d!1797988 () Bool)

(declare-fun c!1003656 () Bool)

(assert (=> d!1797988 (= c!1003656 (isEmpty!35130 (t!376708 s!2326)))))

(declare-fun e!3506096 () Bool)

(assert (=> d!1797988 (= (matchZipper!1835 lt!2273565 (t!376708 s!2326)) e!3506096)))

(declare-fun b!5699249 () Bool)

(declare-fun nullableZipper!1653 ((InoxSet Context!10162)) Bool)

(assert (=> b!5699249 (= e!3506096 (nullableZipper!1653 lt!2273565))))

(declare-fun b!5699250 () Bool)

(declare-fun head!12086 (List!63390) C!31664)

(declare-fun tail!11181 (List!63390) List!63390)

(assert (=> b!5699250 (= e!3506096 (matchZipper!1835 (derivationStepZipper!1780 lt!2273565 (head!12086 (t!376708 s!2326))) (tail!11181 (t!376708 s!2326))))))

(assert (= (and d!1797988 c!1003656) b!5699249))

(assert (= (and d!1797988 (not c!1003656)) b!5699250))

(declare-fun m!6654730 () Bool)

(assert (=> d!1797988 m!6654730))

(declare-fun m!6654732 () Bool)

(assert (=> b!5699249 m!6654732))

(declare-fun m!6654734 () Bool)

(assert (=> b!5699250 m!6654734))

(assert (=> b!5699250 m!6654734))

(declare-fun m!6654736 () Bool)

(assert (=> b!5699250 m!6654736))

(declare-fun m!6654738 () Bool)

(assert (=> b!5699250 m!6654738))

(assert (=> b!5699250 m!6654736))

(assert (=> b!5699250 m!6654738))

(declare-fun m!6654740 () Bool)

(assert (=> b!5699250 m!6654740))

(assert (=> b!5698927 d!1797988))

(declare-fun d!1797996 () Bool)

(declare-fun c!1003657 () Bool)

(assert (=> d!1797996 (= c!1003657 (isEmpty!35130 (t!376708 s!2326)))))

(declare-fun e!3506099 () Bool)

(assert (=> d!1797996 (= (matchZipper!1835 ((_ map or) lt!2273565 lt!2273590) (t!376708 s!2326)) e!3506099)))

(declare-fun b!5699257 () Bool)

(assert (=> b!5699257 (= e!3506099 (nullableZipper!1653 ((_ map or) lt!2273565 lt!2273590)))))

(declare-fun b!5699258 () Bool)

(assert (=> b!5699258 (= e!3506099 (matchZipper!1835 (derivationStepZipper!1780 ((_ map or) lt!2273565 lt!2273590) (head!12086 (t!376708 s!2326))) (tail!11181 (t!376708 s!2326))))))

(assert (= (and d!1797996 c!1003657) b!5699257))

(assert (= (and d!1797996 (not c!1003657)) b!5699258))

(assert (=> d!1797996 m!6654730))

(declare-fun m!6654742 () Bool)

(assert (=> b!5699257 m!6654742))

(assert (=> b!5699258 m!6654734))

(assert (=> b!5699258 m!6654734))

(declare-fun m!6654744 () Bool)

(assert (=> b!5699258 m!6654744))

(assert (=> b!5699258 m!6654738))

(assert (=> b!5699258 m!6654744))

(assert (=> b!5699258 m!6654738))

(declare-fun m!6654746 () Bool)

(assert (=> b!5699258 m!6654746))

(assert (=> b!5698927 d!1797996))

(declare-fun d!1797998 () Bool)

(declare-fun lambda!307386 () Int)

(declare-fun forall!14836 (List!63391 Int) Bool)

(assert (=> d!1797998 (= (inv!82489 setElem!38169) (forall!14836 (exprs!5581 setElem!38169) lambda!307386))))

(declare-fun bs!1328174 () Bool)

(assert (= bs!1328174 d!1797998))

(declare-fun m!6654748 () Bool)

(assert (=> bs!1328174 m!6654748))

(assert (=> setNonEmpty!38169 d!1797998))

(declare-fun d!1798000 () Bool)

(declare-fun lt!2273640 () Regex!15697)

(assert (=> d!1798000 (validRegex!7433 lt!2273640)))

(assert (=> d!1798000 (= lt!2273640 (generalisedUnion!1560 (unfocusZipperList!1125 zl!343)))))

(assert (=> d!1798000 (= (unfocusZipper!1439 zl!343) lt!2273640)))

(declare-fun bs!1328175 () Bool)

(assert (= bs!1328175 d!1798000))

(declare-fun m!6654750 () Bool)

(assert (=> bs!1328175 m!6654750))

(assert (=> bs!1328175 m!6654502))

(assert (=> bs!1328175 m!6654502))

(assert (=> bs!1328175 m!6654504))

(assert (=> b!5698929 d!1798000))

(declare-fun b!5699339 () Bool)

(declare-fun res!2406971 () Bool)

(declare-fun e!3506144 () Bool)

(assert (=> b!5699339 (=> (not res!2406971) (not e!3506144))))

(declare-fun lt!2273660 () Option!15706)

(assert (=> b!5699339 (= res!2406971 (matchR!7882 (regTwo!31906 r!7292) (_2!36097 (get!21805 lt!2273660))))))

(declare-fun b!5699340 () Bool)

(declare-fun e!3506145 () Option!15706)

(assert (=> b!5699340 (= e!3506145 (Some!15705 (tuple2!65589 Nil!63266 s!2326)))))

(declare-fun b!5699342 () Bool)

(declare-fun e!3506148 () Bool)

(assert (=> b!5699342 (= e!3506148 (matchR!7882 (regTwo!31906 r!7292) s!2326))))

(declare-fun b!5699343 () Bool)

(declare-fun lt!2273662 () Unit!156320)

(declare-fun lt!2273661 () Unit!156320)

(assert (=> b!5699343 (= lt!2273662 lt!2273661)))

(assert (=> b!5699343 (= (++!13889 (++!13889 Nil!63266 (Cons!63266 (h!69714 s!2326) Nil!63266)) (t!376708 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2055 (List!63390 C!31664 List!63390 List!63390) Unit!156320)

(assert (=> b!5699343 (= lt!2273661 (lemmaMoveElementToOtherListKeepsConcatEq!2055 Nil!63266 (h!69714 s!2326) (t!376708 s!2326) s!2326))))

(declare-fun e!3506146 () Option!15706)

(assert (=> b!5699343 (= e!3506146 (findConcatSeparation!2120 (regOne!31906 r!7292) (regTwo!31906 r!7292) (++!13889 Nil!63266 (Cons!63266 (h!69714 s!2326) Nil!63266)) (t!376708 s!2326) s!2326))))

(declare-fun b!5699344 () Bool)

(assert (=> b!5699344 (= e!3506146 None!15705)))

(declare-fun b!5699345 () Bool)

(declare-fun res!2406973 () Bool)

(assert (=> b!5699345 (=> (not res!2406973) (not e!3506144))))

(assert (=> b!5699345 (= res!2406973 (matchR!7882 (regOne!31906 r!7292) (_1!36097 (get!21805 lt!2273660))))))

(declare-fun b!5699346 () Bool)

(declare-fun e!3506147 () Bool)

(assert (=> b!5699346 (= e!3506147 (not (isDefined!12409 lt!2273660)))))

(declare-fun b!5699347 () Bool)

(assert (=> b!5699347 (= e!3506144 (= (++!13889 (_1!36097 (get!21805 lt!2273660)) (_2!36097 (get!21805 lt!2273660))) s!2326))))

(declare-fun d!1798002 () Bool)

(assert (=> d!1798002 e!3506147))

(declare-fun res!2406972 () Bool)

(assert (=> d!1798002 (=> res!2406972 e!3506147)))

(assert (=> d!1798002 (= res!2406972 e!3506144)))

(declare-fun res!2406974 () Bool)

(assert (=> d!1798002 (=> (not res!2406974) (not e!3506144))))

(assert (=> d!1798002 (= res!2406974 (isDefined!12409 lt!2273660))))

(assert (=> d!1798002 (= lt!2273660 e!3506145)))

(declare-fun c!1003678 () Bool)

(assert (=> d!1798002 (= c!1003678 e!3506148)))

(declare-fun res!2406975 () Bool)

(assert (=> d!1798002 (=> (not res!2406975) (not e!3506148))))

(assert (=> d!1798002 (= res!2406975 (matchR!7882 (regOne!31906 r!7292) Nil!63266))))

(assert (=> d!1798002 (validRegex!7433 (regOne!31906 r!7292))))

(assert (=> d!1798002 (= (findConcatSeparation!2120 (regOne!31906 r!7292) (regTwo!31906 r!7292) Nil!63266 s!2326 s!2326) lt!2273660)))

(declare-fun b!5699341 () Bool)

(assert (=> b!5699341 (= e!3506145 e!3506146)))

(declare-fun c!1003679 () Bool)

(assert (=> b!5699341 (= c!1003679 ((_ is Nil!63266) s!2326))))

(assert (= (and d!1798002 res!2406975) b!5699342))

(assert (= (and d!1798002 c!1003678) b!5699340))

(assert (= (and d!1798002 (not c!1003678)) b!5699341))

(assert (= (and b!5699341 c!1003679) b!5699344))

(assert (= (and b!5699341 (not c!1003679)) b!5699343))

(assert (= (and d!1798002 res!2406974) b!5699345))

(assert (= (and b!5699345 res!2406973) b!5699339))

(assert (= (and b!5699339 res!2406971) b!5699347))

(assert (= (and d!1798002 (not res!2406972)) b!5699346))

(declare-fun m!6654822 () Bool)

(assert (=> b!5699342 m!6654822))

(declare-fun m!6654824 () Bool)

(assert (=> b!5699345 m!6654824))

(declare-fun m!6654826 () Bool)

(assert (=> b!5699345 m!6654826))

(declare-fun m!6654828 () Bool)

(assert (=> d!1798002 m!6654828))

(declare-fun m!6654830 () Bool)

(assert (=> d!1798002 m!6654830))

(declare-fun m!6654832 () Bool)

(assert (=> d!1798002 m!6654832))

(assert (=> b!5699347 m!6654824))

(declare-fun m!6654834 () Bool)

(assert (=> b!5699347 m!6654834))

(assert (=> b!5699339 m!6654824))

(declare-fun m!6654836 () Bool)

(assert (=> b!5699339 m!6654836))

(assert (=> b!5699346 m!6654828))

(declare-fun m!6654838 () Bool)

(assert (=> b!5699343 m!6654838))

(assert (=> b!5699343 m!6654838))

(declare-fun m!6654840 () Bool)

(assert (=> b!5699343 m!6654840))

(declare-fun m!6654842 () Bool)

(assert (=> b!5699343 m!6654842))

(assert (=> b!5699343 m!6654838))

(declare-fun m!6654844 () Bool)

(assert (=> b!5699343 m!6654844))

(assert (=> b!5698946 d!1798002))

(declare-fun d!1798024 () Bool)

(declare-fun choose!43108 (Int) Bool)

(assert (=> d!1798024 (= (Exists!2797 lambda!307360) (choose!43108 lambda!307360))))

(declare-fun bs!1328184 () Bool)

(assert (= bs!1328184 d!1798024))

(declare-fun m!6654846 () Bool)

(assert (=> bs!1328184 m!6654846))

(assert (=> b!5698946 d!1798024))

(declare-fun d!1798026 () Bool)

(assert (=> d!1798026 (= (Exists!2797 lambda!307359) (choose!43108 lambda!307359))))

(declare-fun bs!1328185 () Bool)

(assert (= bs!1328185 d!1798026))

(declare-fun m!6654848 () Bool)

(assert (=> bs!1328185 m!6654848))

(assert (=> b!5698946 d!1798026))

(declare-fun bs!1328191 () Bool)

(declare-fun d!1798028 () Bool)

(assert (= bs!1328191 (and d!1798028 b!5698946)))

(declare-fun lambda!307394 () Int)

(assert (=> bs!1328191 (= lambda!307394 lambda!307359)))

(assert (=> bs!1328191 (not (= lambda!307394 lambda!307360))))

(declare-fun bs!1328192 () Bool)

(assert (= bs!1328192 (and d!1798028 b!5698914)))

(assert (=> bs!1328192 (= (= (regOne!31906 r!7292) lt!2273584) (= lambda!307394 lambda!307362))))

(assert (=> bs!1328192 (not (= lambda!307394 lambda!307363))))

(assert (=> d!1798028 true))

(assert (=> d!1798028 true))

(assert (=> d!1798028 true))

(assert (=> d!1798028 (= (isDefined!12409 (findConcatSeparation!2120 (regOne!31906 r!7292) (regTwo!31906 r!7292) Nil!63266 s!2326 s!2326)) (Exists!2797 lambda!307394))))

(declare-fun lt!2273670 () Unit!156320)

(declare-fun choose!43109 (Regex!15697 Regex!15697 List!63390) Unit!156320)

(assert (=> d!1798028 (= lt!2273670 (choose!43109 (regOne!31906 r!7292) (regTwo!31906 r!7292) s!2326))))

(assert (=> d!1798028 (validRegex!7433 (regOne!31906 r!7292))))

(assert (=> d!1798028 (= (lemmaFindConcatSeparationEquivalentToExists!1884 (regOne!31906 r!7292) (regTwo!31906 r!7292) s!2326) lt!2273670)))

(declare-fun bs!1328193 () Bool)

(assert (= bs!1328193 d!1798028))

(declare-fun m!6654854 () Bool)

(assert (=> bs!1328193 m!6654854))

(assert (=> bs!1328193 m!6654832))

(assert (=> bs!1328193 m!6654430))

(declare-fun m!6654856 () Bool)

(assert (=> bs!1328193 m!6654856))

(assert (=> bs!1328193 m!6654430))

(assert (=> bs!1328193 m!6654432))

(assert (=> b!5698946 d!1798028))

(declare-fun bs!1328207 () Bool)

(declare-fun d!1798032 () Bool)

(assert (= bs!1328207 (and d!1798032 b!5698914)))

(declare-fun lambda!307406 () Int)

(assert (=> bs!1328207 (= (= (regOne!31906 r!7292) lt!2273584) (= lambda!307406 lambda!307362))))

(declare-fun bs!1328208 () Bool)

(assert (= bs!1328208 (and d!1798032 b!5698946)))

(assert (=> bs!1328208 (= lambda!307406 lambda!307359)))

(assert (=> bs!1328207 (not (= lambda!307406 lambda!307363))))

(assert (=> bs!1328208 (not (= lambda!307406 lambda!307360))))

(declare-fun bs!1328212 () Bool)

(assert (= bs!1328212 (and d!1798032 d!1798028)))

(assert (=> bs!1328212 (= lambda!307406 lambda!307394)))

(assert (=> d!1798032 true))

(assert (=> d!1798032 true))

(assert (=> d!1798032 true))

(declare-fun lambda!307408 () Int)

(assert (=> bs!1328207 (not (= lambda!307408 lambda!307362))))

(declare-fun bs!1328216 () Bool)

(assert (= bs!1328216 d!1798032))

(assert (=> bs!1328216 (not (= lambda!307408 lambda!307406))))

(assert (=> bs!1328208 (not (= lambda!307408 lambda!307359))))

(assert (=> bs!1328207 (= (= (regOne!31906 r!7292) lt!2273584) (= lambda!307408 lambda!307363))))

(assert (=> bs!1328208 (= lambda!307408 lambda!307360)))

(assert (=> bs!1328212 (not (= lambda!307408 lambda!307394))))

(assert (=> d!1798032 true))

(assert (=> d!1798032 true))

(assert (=> d!1798032 true))

(assert (=> d!1798032 (= (Exists!2797 lambda!307406) (Exists!2797 lambda!307408))))

(declare-fun lt!2273674 () Unit!156320)

(declare-fun choose!43110 (Regex!15697 Regex!15697 List!63390) Unit!156320)

(assert (=> d!1798032 (= lt!2273674 (choose!43110 (regOne!31906 r!7292) (regTwo!31906 r!7292) s!2326))))

(assert (=> d!1798032 (validRegex!7433 (regOne!31906 r!7292))))

(assert (=> d!1798032 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1426 (regOne!31906 r!7292) (regTwo!31906 r!7292) s!2326) lt!2273674)))

(declare-fun m!6654872 () Bool)

(assert (=> bs!1328216 m!6654872))

(declare-fun m!6654874 () Bool)

(assert (=> bs!1328216 m!6654874))

(declare-fun m!6654876 () Bool)

(assert (=> bs!1328216 m!6654876))

(assert (=> bs!1328216 m!6654832))

(assert (=> b!5698946 d!1798032))

(declare-fun d!1798040 () Bool)

(declare-fun isEmpty!35131 (Option!15706) Bool)

(assert (=> d!1798040 (= (isDefined!12409 (findConcatSeparation!2120 (regOne!31906 r!7292) (regTwo!31906 r!7292) Nil!63266 s!2326 s!2326)) (not (isEmpty!35131 (findConcatSeparation!2120 (regOne!31906 r!7292) (regTwo!31906 r!7292) Nil!63266 s!2326 s!2326))))))

(declare-fun bs!1328218 () Bool)

(assert (= bs!1328218 d!1798040))

(assert (=> bs!1328218 m!6654430))

(declare-fun m!6654878 () Bool)

(assert (=> bs!1328218 m!6654878))

(assert (=> b!5698946 d!1798040))

(declare-fun bs!1328219 () Bool)

(declare-fun d!1798042 () Bool)

(assert (= bs!1328219 (and d!1798042 d!1797998)))

(declare-fun lambda!307409 () Int)

(assert (=> bs!1328219 (= lambda!307409 lambda!307386)))

(assert (=> d!1798042 (= (inv!82489 (h!69716 zl!343)) (forall!14836 (exprs!5581 (h!69716 zl!343)) lambda!307409))))

(declare-fun bs!1328220 () Bool)

(assert (= bs!1328220 d!1798042))

(declare-fun m!6654886 () Bool)

(assert (=> bs!1328220 m!6654886))

(assert (=> b!5698947 d!1798042))

(declare-fun bs!1328247 () Bool)

(declare-fun b!5699487 () Bool)

(assert (= bs!1328247 (and b!5699487 b!5698914)))

(declare-fun lambda!307417 () Int)

(assert (=> bs!1328247 (not (= lambda!307417 lambda!307362))))

(declare-fun bs!1328249 () Bool)

(assert (= bs!1328249 (and b!5699487 d!1798032)))

(assert (=> bs!1328249 (not (= lambda!307417 lambda!307408))))

(assert (=> bs!1328249 (not (= lambda!307417 lambda!307406))))

(declare-fun bs!1328250 () Bool)

(assert (= bs!1328250 (and b!5699487 b!5698946)))

(assert (=> bs!1328250 (not (= lambda!307417 lambda!307359))))

(assert (=> bs!1328247 (not (= lambda!307417 lambda!307363))))

(assert (=> bs!1328250 (not (= lambda!307417 lambda!307360))))

(declare-fun bs!1328252 () Bool)

(assert (= bs!1328252 (and b!5699487 d!1798028)))

(assert (=> bs!1328252 (not (= lambda!307417 lambda!307394))))

(assert (=> b!5699487 true))

(assert (=> b!5699487 true))

(declare-fun bs!1328253 () Bool)

(declare-fun b!5699481 () Bool)

(assert (= bs!1328253 (and b!5699481 b!5698914)))

(declare-fun lambda!307419 () Int)

(assert (=> bs!1328253 (not (= lambda!307419 lambda!307362))))

(declare-fun bs!1328254 () Bool)

(assert (= bs!1328254 (and b!5699481 d!1798032)))

(assert (=> bs!1328254 (= lambda!307419 lambda!307408)))

(declare-fun bs!1328255 () Bool)

(assert (= bs!1328255 (and b!5699481 b!5699487)))

(assert (=> bs!1328255 (not (= lambda!307419 lambda!307417))))

(assert (=> bs!1328254 (not (= lambda!307419 lambda!307406))))

(declare-fun bs!1328256 () Bool)

(assert (= bs!1328256 (and b!5699481 b!5698946)))

(assert (=> bs!1328256 (not (= lambda!307419 lambda!307359))))

(assert (=> bs!1328253 (= (= (regOne!31906 r!7292) lt!2273584) (= lambda!307419 lambda!307363))))

(assert (=> bs!1328256 (= lambda!307419 lambda!307360)))

(declare-fun bs!1328257 () Bool)

(assert (= bs!1328257 (and b!5699481 d!1798028)))

(assert (=> bs!1328257 (not (= lambda!307419 lambda!307394))))

(assert (=> b!5699481 true))

(assert (=> b!5699481 true))

(declare-fun b!5699480 () Bool)

(declare-fun e!3506228 () Bool)

(declare-fun e!3506234 () Bool)

(assert (=> b!5699480 (= e!3506228 e!3506234)))

(declare-fun res!2407050 () Bool)

(assert (=> b!5699480 (= res!2407050 (not ((_ is EmptyLang!15697) r!7292)))))

(assert (=> b!5699480 (=> (not res!2407050) (not e!3506234))))

(declare-fun e!3506231 () Bool)

(declare-fun call!433825 () Bool)

(assert (=> b!5699481 (= e!3506231 call!433825)))

(declare-fun b!5699482 () Bool)

(declare-fun e!3506230 () Bool)

(assert (=> b!5699482 (= e!3506230 (matchRSpec!2800 (regTwo!31907 r!7292) s!2326))))

(declare-fun d!1798044 () Bool)

(declare-fun c!1003710 () Bool)

(assert (=> d!1798044 (= c!1003710 ((_ is EmptyExpr!15697) r!7292))))

(assert (=> d!1798044 (= (matchRSpec!2800 r!7292 s!2326) e!3506228)))

(declare-fun b!5699483 () Bool)

(declare-fun e!3506232 () Bool)

(assert (=> b!5699483 (= e!3506232 e!3506231)))

(declare-fun c!1003711 () Bool)

(assert (=> b!5699483 (= c!1003711 ((_ is Star!15697) r!7292))))

(declare-fun b!5699484 () Bool)

(assert (=> b!5699484 (= e!3506232 e!3506230)))

(declare-fun res!2407051 () Bool)

(assert (=> b!5699484 (= res!2407051 (matchRSpec!2800 (regOne!31907 r!7292) s!2326))))

(assert (=> b!5699484 (=> res!2407051 e!3506230)))

(declare-fun b!5699485 () Bool)

(declare-fun e!3506229 () Bool)

(assert (=> b!5699485 (= e!3506229 (= s!2326 (Cons!63266 (c!1003547 r!7292) Nil!63266)))))

(declare-fun bm!433819 () Bool)

(assert (=> bm!433819 (= call!433825 (Exists!2797 (ite c!1003711 lambda!307417 lambda!307419)))))

(declare-fun bm!433820 () Bool)

(declare-fun call!433824 () Bool)

(assert (=> bm!433820 (= call!433824 (isEmpty!35130 s!2326))))

(declare-fun b!5699486 () Bool)

(declare-fun c!1003709 () Bool)

(assert (=> b!5699486 (= c!1003709 ((_ is Union!15697) r!7292))))

(assert (=> b!5699486 (= e!3506229 e!3506232)))

(declare-fun e!3506233 () Bool)

(assert (=> b!5699487 (= e!3506233 call!433825)))

(declare-fun b!5699488 () Bool)

(declare-fun res!2407052 () Bool)

(assert (=> b!5699488 (=> res!2407052 e!3506233)))

(assert (=> b!5699488 (= res!2407052 call!433824)))

(assert (=> b!5699488 (= e!3506231 e!3506233)))

(declare-fun b!5699489 () Bool)

(declare-fun c!1003712 () Bool)

(assert (=> b!5699489 (= c!1003712 ((_ is ElementMatch!15697) r!7292))))

(assert (=> b!5699489 (= e!3506234 e!3506229)))

(declare-fun b!5699490 () Bool)

(assert (=> b!5699490 (= e!3506228 call!433824)))

(assert (= (and d!1798044 c!1003710) b!5699490))

(assert (= (and d!1798044 (not c!1003710)) b!5699480))

(assert (= (and b!5699480 res!2407050) b!5699489))

(assert (= (and b!5699489 c!1003712) b!5699485))

(assert (= (and b!5699489 (not c!1003712)) b!5699486))

(assert (= (and b!5699486 c!1003709) b!5699484))

(assert (= (and b!5699486 (not c!1003709)) b!5699483))

(assert (= (and b!5699484 (not res!2407051)) b!5699482))

(assert (= (and b!5699483 c!1003711) b!5699488))

(assert (= (and b!5699483 (not c!1003711)) b!5699481))

(assert (= (and b!5699488 (not res!2407052)) b!5699487))

(assert (= (or b!5699487 b!5699481) bm!433819))

(assert (= (or b!5699490 b!5699488) bm!433820))

(declare-fun m!6654966 () Bool)

(assert (=> b!5699482 m!6654966))

(declare-fun m!6654968 () Bool)

(assert (=> b!5699484 m!6654968))

(declare-fun m!6654970 () Bool)

(assert (=> bm!433819 m!6654970))

(declare-fun m!6654972 () Bool)

(assert (=> bm!433820 m!6654972))

(assert (=> b!5698912 d!1798044))

(declare-fun b!5699556 () Bool)

(declare-fun e!3506274 () Bool)

(assert (=> b!5699556 (= e!3506274 (= (head!12086 s!2326) (c!1003547 r!7292)))))

(declare-fun b!5699557 () Bool)

(declare-fun res!2407084 () Bool)

(declare-fun e!3506275 () Bool)

(assert (=> b!5699557 (=> res!2407084 e!3506275)))

(assert (=> b!5699557 (= res!2407084 e!3506274)))

(declare-fun res!2407078 () Bool)

(assert (=> b!5699557 (=> (not res!2407078) (not e!3506274))))

(declare-fun lt!2273692 () Bool)

(assert (=> b!5699557 (= res!2407078 lt!2273692)))

(declare-fun b!5699558 () Bool)

(declare-fun res!2407081 () Bool)

(declare-fun e!3506270 () Bool)

(assert (=> b!5699558 (=> res!2407081 e!3506270)))

(assert (=> b!5699558 (= res!2407081 (not (isEmpty!35130 (tail!11181 s!2326))))))

(declare-fun d!1798088 () Bool)

(declare-fun e!3506272 () Bool)

(assert (=> d!1798088 e!3506272))

(declare-fun c!1003732 () Bool)

(assert (=> d!1798088 (= c!1003732 ((_ is EmptyExpr!15697) r!7292))))

(declare-fun e!3506273 () Bool)

(assert (=> d!1798088 (= lt!2273692 e!3506273)))

(declare-fun c!1003733 () Bool)

(assert (=> d!1798088 (= c!1003733 (isEmpty!35130 s!2326))))

(assert (=> d!1798088 (validRegex!7433 r!7292)))

(assert (=> d!1798088 (= (matchR!7882 r!7292 s!2326) lt!2273692)))

(declare-fun b!5699559 () Bool)

(declare-fun e!3506271 () Bool)

(assert (=> b!5699559 (= e!3506271 (not lt!2273692))))

(declare-fun b!5699560 () Bool)

(declare-fun res!2407082 () Bool)

(assert (=> b!5699560 (=> res!2407082 e!3506275)))

(assert (=> b!5699560 (= res!2407082 (not ((_ is ElementMatch!15697) r!7292)))))

(assert (=> b!5699560 (= e!3506271 e!3506275)))

(declare-fun b!5699561 () Bool)

(declare-fun call!433836 () Bool)

(assert (=> b!5699561 (= e!3506272 (= lt!2273692 call!433836))))

(declare-fun b!5699562 () Bool)

(declare-fun e!3506269 () Bool)

(assert (=> b!5699562 (= e!3506269 e!3506270)))

(declare-fun res!2407085 () Bool)

(assert (=> b!5699562 (=> res!2407085 e!3506270)))

(assert (=> b!5699562 (= res!2407085 call!433836)))

(declare-fun b!5699563 () Bool)

(declare-fun derivativeStep!4506 (Regex!15697 C!31664) Regex!15697)

(assert (=> b!5699563 (= e!3506273 (matchR!7882 (derivativeStep!4506 r!7292 (head!12086 s!2326)) (tail!11181 s!2326)))))

(declare-fun b!5699564 () Bool)

(assert (=> b!5699564 (= e!3506272 e!3506271)))

(declare-fun c!1003731 () Bool)

(assert (=> b!5699564 (= c!1003731 ((_ is EmptyLang!15697) r!7292))))

(declare-fun b!5699565 () Bool)

(assert (=> b!5699565 (= e!3506273 (nullable!5729 r!7292))))

(declare-fun b!5699566 () Bool)

(assert (=> b!5699566 (= e!3506275 e!3506269)))

(declare-fun res!2407083 () Bool)

(assert (=> b!5699566 (=> (not res!2407083) (not e!3506269))))

(assert (=> b!5699566 (= res!2407083 (not lt!2273692))))

(declare-fun bm!433831 () Bool)

(assert (=> bm!433831 (= call!433836 (isEmpty!35130 s!2326))))

(declare-fun b!5699567 () Bool)

(declare-fun res!2407079 () Bool)

(assert (=> b!5699567 (=> (not res!2407079) (not e!3506274))))

(assert (=> b!5699567 (= res!2407079 (isEmpty!35130 (tail!11181 s!2326)))))

(declare-fun b!5699568 () Bool)

(assert (=> b!5699568 (= e!3506270 (not (= (head!12086 s!2326) (c!1003547 r!7292))))))

(declare-fun b!5699569 () Bool)

(declare-fun res!2407080 () Bool)

(assert (=> b!5699569 (=> (not res!2407080) (not e!3506274))))

(assert (=> b!5699569 (= res!2407080 (not call!433836))))

(assert (= (and d!1798088 c!1003733) b!5699565))

(assert (= (and d!1798088 (not c!1003733)) b!5699563))

(assert (= (and d!1798088 c!1003732) b!5699561))

(assert (= (and d!1798088 (not c!1003732)) b!5699564))

(assert (= (and b!5699564 c!1003731) b!5699559))

(assert (= (and b!5699564 (not c!1003731)) b!5699560))

(assert (= (and b!5699560 (not res!2407082)) b!5699557))

(assert (= (and b!5699557 res!2407078) b!5699569))

(assert (= (and b!5699569 res!2407080) b!5699567))

(assert (= (and b!5699567 res!2407079) b!5699556))

(assert (= (and b!5699557 (not res!2407084)) b!5699566))

(assert (= (and b!5699566 res!2407083) b!5699562))

(assert (= (and b!5699562 (not res!2407085)) b!5699558))

(assert (= (and b!5699558 (not res!2407081)) b!5699568))

(assert (= (or b!5699561 b!5699562 b!5699569) bm!433831))

(declare-fun m!6655024 () Bool)

(assert (=> b!5699556 m!6655024))

(assert (=> b!5699563 m!6655024))

(assert (=> b!5699563 m!6655024))

(declare-fun m!6655026 () Bool)

(assert (=> b!5699563 m!6655026))

(declare-fun m!6655028 () Bool)

(assert (=> b!5699563 m!6655028))

(assert (=> b!5699563 m!6655026))

(assert (=> b!5699563 m!6655028))

(declare-fun m!6655030 () Bool)

(assert (=> b!5699563 m!6655030))

(assert (=> d!1798088 m!6654972))

(assert (=> d!1798088 m!6654552))

(assert (=> b!5699567 m!6655028))

(assert (=> b!5699567 m!6655028))

(declare-fun m!6655032 () Bool)

(assert (=> b!5699567 m!6655032))

(assert (=> b!5699558 m!6655028))

(assert (=> b!5699558 m!6655028))

(assert (=> b!5699558 m!6655032))

(assert (=> bm!433831 m!6654972))

(declare-fun m!6655034 () Bool)

(assert (=> b!5699565 m!6655034))

(assert (=> b!5699568 m!6655024))

(assert (=> b!5698912 d!1798088))

(declare-fun d!1798106 () Bool)

(assert (=> d!1798106 (= (matchR!7882 r!7292 s!2326) (matchRSpec!2800 r!7292 s!2326))))

(declare-fun lt!2273695 () Unit!156320)

(declare-fun choose!43114 (Regex!15697 List!63390) Unit!156320)

(assert (=> d!1798106 (= lt!2273695 (choose!43114 r!7292 s!2326))))

(assert (=> d!1798106 (validRegex!7433 r!7292)))

(assert (=> d!1798106 (= (mainMatchTheorem!2800 r!7292 s!2326) lt!2273695)))

(declare-fun bs!1328272 () Bool)

(assert (= bs!1328272 d!1798106))

(assert (=> bs!1328272 m!6654496))

(assert (=> bs!1328272 m!6654494))

(declare-fun m!6655038 () Bool)

(assert (=> bs!1328272 m!6655038))

(assert (=> bs!1328272 m!6654552))

(assert (=> b!5698912 d!1798106))

(declare-fun d!1798108 () Bool)

(declare-fun lt!2273696 () Regex!15697)

(assert (=> d!1798108 (validRegex!7433 lt!2273696)))

(assert (=> d!1798108 (= lt!2273696 (generalisedUnion!1560 (unfocusZipperList!1125 (Cons!63268 lt!2273579 Nil!63268))))))

(assert (=> d!1798108 (= (unfocusZipper!1439 (Cons!63268 lt!2273579 Nil!63268)) lt!2273696)))

(declare-fun bs!1328273 () Bool)

(assert (= bs!1328273 d!1798108))

(declare-fun m!6655040 () Bool)

(assert (=> bs!1328273 m!6655040))

(declare-fun m!6655042 () Bool)

(assert (=> bs!1328273 m!6655042))

(assert (=> bs!1328273 m!6655042))

(declare-fun m!6655044 () Bool)

(assert (=> bs!1328273 m!6655044))

(assert (=> b!5698933 d!1798108))

(declare-fun d!1798110 () Bool)

(assert (=> d!1798110 (= (Exists!2797 lambda!307362) (choose!43108 lambda!307362))))

(declare-fun bs!1328274 () Bool)

(assert (= bs!1328274 d!1798110))

(declare-fun m!6655046 () Bool)

(assert (=> bs!1328274 m!6655046))

(assert (=> b!5698914 d!1798110))

(declare-fun b!5699619 () Bool)

(declare-fun res!2407086 () Bool)

(declare-fun e!3506296 () Bool)

(assert (=> b!5699619 (=> (not res!2407086) (not e!3506296))))

(declare-fun lt!2273697 () Option!15706)

(assert (=> b!5699619 (= res!2407086 (matchR!7882 (regTwo!31906 r!7292) (_2!36097 (get!21805 lt!2273697))))))

(declare-fun b!5699620 () Bool)

(declare-fun e!3506297 () Option!15706)

(assert (=> b!5699620 (= e!3506297 (Some!15705 (tuple2!65589 Nil!63266 s!2326)))))

(declare-fun b!5699622 () Bool)

(declare-fun e!3506300 () Bool)

(assert (=> b!5699622 (= e!3506300 (matchR!7882 (regTwo!31906 r!7292) s!2326))))

(declare-fun b!5699623 () Bool)

(declare-fun lt!2273699 () Unit!156320)

(declare-fun lt!2273698 () Unit!156320)

(assert (=> b!5699623 (= lt!2273699 lt!2273698)))

(assert (=> b!5699623 (= (++!13889 (++!13889 Nil!63266 (Cons!63266 (h!69714 s!2326) Nil!63266)) (t!376708 s!2326)) s!2326)))

(assert (=> b!5699623 (= lt!2273698 (lemmaMoveElementToOtherListKeepsConcatEq!2055 Nil!63266 (h!69714 s!2326) (t!376708 s!2326) s!2326))))

(declare-fun e!3506298 () Option!15706)

(assert (=> b!5699623 (= e!3506298 (findConcatSeparation!2120 lt!2273584 (regTwo!31906 r!7292) (++!13889 Nil!63266 (Cons!63266 (h!69714 s!2326) Nil!63266)) (t!376708 s!2326) s!2326))))

(declare-fun b!5699624 () Bool)

(assert (=> b!5699624 (= e!3506298 None!15705)))

(declare-fun b!5699625 () Bool)

(declare-fun res!2407088 () Bool)

(assert (=> b!5699625 (=> (not res!2407088) (not e!3506296))))

(assert (=> b!5699625 (= res!2407088 (matchR!7882 lt!2273584 (_1!36097 (get!21805 lt!2273697))))))

(declare-fun b!5699626 () Bool)

(declare-fun e!3506299 () Bool)

(assert (=> b!5699626 (= e!3506299 (not (isDefined!12409 lt!2273697)))))

(declare-fun b!5699627 () Bool)

(assert (=> b!5699627 (= e!3506296 (= (++!13889 (_1!36097 (get!21805 lt!2273697)) (_2!36097 (get!21805 lt!2273697))) s!2326))))

(declare-fun d!1798112 () Bool)

(assert (=> d!1798112 e!3506299))

(declare-fun res!2407087 () Bool)

(assert (=> d!1798112 (=> res!2407087 e!3506299)))

(assert (=> d!1798112 (= res!2407087 e!3506296)))

(declare-fun res!2407089 () Bool)

(assert (=> d!1798112 (=> (not res!2407089) (not e!3506296))))

(assert (=> d!1798112 (= res!2407089 (isDefined!12409 lt!2273697))))

(assert (=> d!1798112 (= lt!2273697 e!3506297)))

(declare-fun c!1003734 () Bool)

(assert (=> d!1798112 (= c!1003734 e!3506300)))

(declare-fun res!2407090 () Bool)

(assert (=> d!1798112 (=> (not res!2407090) (not e!3506300))))

(assert (=> d!1798112 (= res!2407090 (matchR!7882 lt!2273584 Nil!63266))))

(assert (=> d!1798112 (validRegex!7433 lt!2273584)))

(assert (=> d!1798112 (= (findConcatSeparation!2120 lt!2273584 (regTwo!31906 r!7292) Nil!63266 s!2326 s!2326) lt!2273697)))

(declare-fun b!5699621 () Bool)

(assert (=> b!5699621 (= e!3506297 e!3506298)))

(declare-fun c!1003735 () Bool)

(assert (=> b!5699621 (= c!1003735 ((_ is Nil!63266) s!2326))))

(assert (= (and d!1798112 res!2407090) b!5699622))

(assert (= (and d!1798112 c!1003734) b!5699620))

(assert (= (and d!1798112 (not c!1003734)) b!5699621))

(assert (= (and b!5699621 c!1003735) b!5699624))

(assert (= (and b!5699621 (not c!1003735)) b!5699623))

(assert (= (and d!1798112 res!2407089) b!5699625))

(assert (= (and b!5699625 res!2407088) b!5699619))

(assert (= (and b!5699619 res!2407086) b!5699627))

(assert (= (and d!1798112 (not res!2407087)) b!5699626))

(assert (=> b!5699622 m!6654822))

(declare-fun m!6655050 () Bool)

(assert (=> b!5699625 m!6655050))

(declare-fun m!6655052 () Bool)

(assert (=> b!5699625 m!6655052))

(declare-fun m!6655054 () Bool)

(assert (=> d!1798112 m!6655054))

(declare-fun m!6655056 () Bool)

(assert (=> d!1798112 m!6655056))

(declare-fun m!6655058 () Bool)

(assert (=> d!1798112 m!6655058))

(assert (=> b!5699627 m!6655050))

(declare-fun m!6655060 () Bool)

(assert (=> b!5699627 m!6655060))

(assert (=> b!5699619 m!6655050))

(declare-fun m!6655062 () Bool)

(assert (=> b!5699619 m!6655062))

(assert (=> b!5699626 m!6655054))

(assert (=> b!5699623 m!6654838))

(assert (=> b!5699623 m!6654838))

(assert (=> b!5699623 m!6654840))

(assert (=> b!5699623 m!6654842))

(assert (=> b!5699623 m!6654838))

(declare-fun m!6655064 () Bool)

(assert (=> b!5699623 m!6655064))

(assert (=> b!5698914 d!1798112))

(declare-fun b!5699640 () Bool)

(declare-fun e!3506306 () Bool)

(declare-fun lt!2273702 () List!63390)

(assert (=> b!5699640 (= e!3506306 (or (not (= (_2!36097 lt!2273601) Nil!63266)) (= lt!2273702 (_1!36097 lt!2273601))))))

(declare-fun b!5699638 () Bool)

(declare-fun e!3506307 () List!63390)

(assert (=> b!5699638 (= e!3506307 (Cons!63266 (h!69714 (_1!36097 lt!2273601)) (++!13889 (t!376708 (_1!36097 lt!2273601)) (_2!36097 lt!2273601))))))

(declare-fun b!5699639 () Bool)

(declare-fun res!2407096 () Bool)

(assert (=> b!5699639 (=> (not res!2407096) (not e!3506306))))

(declare-fun size!40012 (List!63390) Int)

(assert (=> b!5699639 (= res!2407096 (= (size!40012 lt!2273702) (+ (size!40012 (_1!36097 lt!2273601)) (size!40012 (_2!36097 lt!2273601)))))))

(declare-fun d!1798124 () Bool)

(assert (=> d!1798124 e!3506306))

(declare-fun res!2407095 () Bool)

(assert (=> d!1798124 (=> (not res!2407095) (not e!3506306))))

(declare-fun content!11478 (List!63390) (InoxSet C!31664))

(assert (=> d!1798124 (= res!2407095 (= (content!11478 lt!2273702) ((_ map or) (content!11478 (_1!36097 lt!2273601)) (content!11478 (_2!36097 lt!2273601)))))))

(assert (=> d!1798124 (= lt!2273702 e!3506307)))

(declare-fun c!1003738 () Bool)

(assert (=> d!1798124 (= c!1003738 ((_ is Nil!63266) (_1!36097 lt!2273601)))))

(assert (=> d!1798124 (= (++!13889 (_1!36097 lt!2273601) (_2!36097 lt!2273601)) lt!2273702)))

(declare-fun b!5699637 () Bool)

(assert (=> b!5699637 (= e!3506307 (_2!36097 lt!2273601))))

(assert (= (and d!1798124 c!1003738) b!5699637))

(assert (= (and d!1798124 (not c!1003738)) b!5699638))

(assert (= (and d!1798124 res!2407095) b!5699639))

(assert (= (and b!5699639 res!2407096) b!5699640))

(declare-fun m!6655066 () Bool)

(assert (=> b!5699638 m!6655066))

(declare-fun m!6655068 () Bool)

(assert (=> b!5699639 m!6655068))

(declare-fun m!6655070 () Bool)

(assert (=> b!5699639 m!6655070))

(declare-fun m!6655072 () Bool)

(assert (=> b!5699639 m!6655072))

(declare-fun m!6655074 () Bool)

(assert (=> d!1798124 m!6655074))

(declare-fun m!6655076 () Bool)

(assert (=> d!1798124 m!6655076))

(declare-fun m!6655078 () Bool)

(assert (=> d!1798124 m!6655078))

(assert (=> b!5698914 d!1798124))

(declare-fun d!1798126 () Bool)

(assert (=> d!1798126 (= (isDefined!12409 lt!2273589) (not (isEmpty!35131 lt!2273589)))))

(declare-fun bs!1328280 () Bool)

(assert (= bs!1328280 d!1798126))

(declare-fun m!6655080 () Bool)

(assert (=> bs!1328280 m!6655080))

(assert (=> b!5698914 d!1798126))

(declare-fun bs!1328281 () Bool)

(declare-fun d!1798128 () Bool)

(assert (= bs!1328281 (and d!1798128 b!5698914)))

(declare-fun lambda!307421 () Int)

(assert (=> bs!1328281 (= lambda!307421 lambda!307362)))

(declare-fun bs!1328282 () Bool)

(assert (= bs!1328282 (and d!1798128 d!1798032)))

(assert (=> bs!1328282 (not (= lambda!307421 lambda!307408))))

(declare-fun bs!1328283 () Bool)

(assert (= bs!1328283 (and d!1798128 b!5699481)))

(assert (=> bs!1328283 (not (= lambda!307421 lambda!307419))))

(declare-fun bs!1328284 () Bool)

(assert (= bs!1328284 (and d!1798128 b!5699487)))

(assert (=> bs!1328284 (not (= lambda!307421 lambda!307417))))

(assert (=> bs!1328282 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307421 lambda!307406))))

(declare-fun bs!1328285 () Bool)

(assert (= bs!1328285 (and d!1798128 b!5698946)))

(assert (=> bs!1328285 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307421 lambda!307359))))

(assert (=> bs!1328281 (not (= lambda!307421 lambda!307363))))

(assert (=> bs!1328285 (not (= lambda!307421 lambda!307360))))

(declare-fun bs!1328286 () Bool)

(assert (= bs!1328286 (and d!1798128 d!1798028)))

(assert (=> bs!1328286 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307421 lambda!307394))))

(assert (=> d!1798128 true))

(assert (=> d!1798128 true))

(assert (=> d!1798128 true))

(assert (=> d!1798128 (= (isDefined!12409 (findConcatSeparation!2120 lt!2273584 (regTwo!31906 r!7292) Nil!63266 s!2326 s!2326)) (Exists!2797 lambda!307421))))

(declare-fun lt!2273703 () Unit!156320)

(assert (=> d!1798128 (= lt!2273703 (choose!43109 lt!2273584 (regTwo!31906 r!7292) s!2326))))

(assert (=> d!1798128 (validRegex!7433 lt!2273584)))

(assert (=> d!1798128 (= (lemmaFindConcatSeparationEquivalentToExists!1884 lt!2273584 (regTwo!31906 r!7292) s!2326) lt!2273703)))

(declare-fun bs!1328287 () Bool)

(assert (= bs!1328287 d!1798128))

(declare-fun m!6655082 () Bool)

(assert (=> bs!1328287 m!6655082))

(assert (=> bs!1328287 m!6655058))

(assert (=> bs!1328287 m!6654526))

(declare-fun m!6655084 () Bool)

(assert (=> bs!1328287 m!6655084))

(assert (=> bs!1328287 m!6654526))

(declare-fun m!6655086 () Bool)

(assert (=> bs!1328287 m!6655086))

(assert (=> b!5698914 d!1798128))

(declare-fun bs!1328288 () Bool)

(declare-fun d!1798130 () Bool)

(assert (= bs!1328288 (and d!1798130 b!5698914)))

(declare-fun lambda!307422 () Int)

(assert (=> bs!1328288 (= lambda!307422 lambda!307362)))

(declare-fun bs!1328289 () Bool)

(assert (= bs!1328289 (and d!1798130 d!1798032)))

(assert (=> bs!1328289 (not (= lambda!307422 lambda!307408))))

(declare-fun bs!1328290 () Bool)

(assert (= bs!1328290 (and d!1798130 b!5699481)))

(assert (=> bs!1328290 (not (= lambda!307422 lambda!307419))))

(declare-fun bs!1328291 () Bool)

(assert (= bs!1328291 (and d!1798130 b!5699487)))

(assert (=> bs!1328291 (not (= lambda!307422 lambda!307417))))

(declare-fun bs!1328292 () Bool)

(assert (= bs!1328292 (and d!1798130 b!5698946)))

(assert (=> bs!1328292 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307422 lambda!307359))))

(assert (=> bs!1328288 (not (= lambda!307422 lambda!307363))))

(assert (=> bs!1328292 (not (= lambda!307422 lambda!307360))))

(declare-fun bs!1328293 () Bool)

(assert (= bs!1328293 (and d!1798130 d!1798028)))

(assert (=> bs!1328293 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307422 lambda!307394))))

(assert (=> bs!1328289 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307422 lambda!307406))))

(declare-fun bs!1328294 () Bool)

(assert (= bs!1328294 (and d!1798130 d!1798128)))

(assert (=> bs!1328294 (= lambda!307422 lambda!307421)))

(assert (=> d!1798130 true))

(assert (=> d!1798130 true))

(assert (=> d!1798130 true))

(declare-fun lambda!307423 () Int)

(assert (=> bs!1328288 (not (= lambda!307423 lambda!307362))))

(assert (=> bs!1328289 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307423 lambda!307408))))

(assert (=> bs!1328290 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307423 lambda!307419))))

(assert (=> bs!1328291 (not (= lambda!307423 lambda!307417))))

(assert (=> bs!1328292 (not (= lambda!307423 lambda!307359))))

(assert (=> bs!1328288 (= lambda!307423 lambda!307363)))

(assert (=> bs!1328292 (= (= lt!2273584 (regOne!31906 r!7292)) (= lambda!307423 lambda!307360))))

(declare-fun bs!1328295 () Bool)

(assert (= bs!1328295 d!1798130))

(assert (=> bs!1328295 (not (= lambda!307423 lambda!307422))))

(assert (=> bs!1328293 (not (= lambda!307423 lambda!307394))))

(assert (=> bs!1328289 (not (= lambda!307423 lambda!307406))))

(assert (=> bs!1328294 (not (= lambda!307423 lambda!307421))))

(assert (=> d!1798130 true))

(assert (=> d!1798130 true))

(assert (=> d!1798130 true))

(assert (=> d!1798130 (= (Exists!2797 lambda!307422) (Exists!2797 lambda!307423))))

(declare-fun lt!2273704 () Unit!156320)

(assert (=> d!1798130 (= lt!2273704 (choose!43110 lt!2273584 (regTwo!31906 r!7292) s!2326))))

(assert (=> d!1798130 (validRegex!7433 lt!2273584)))

(assert (=> d!1798130 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1426 lt!2273584 (regTwo!31906 r!7292) s!2326) lt!2273704)))

(declare-fun m!6655088 () Bool)

(assert (=> bs!1328295 m!6655088))

(declare-fun m!6655090 () Bool)

(assert (=> bs!1328295 m!6655090))

(declare-fun m!6655092 () Bool)

(assert (=> bs!1328295 m!6655092))

(assert (=> bs!1328295 m!6655058))

(assert (=> b!5698914 d!1798130))

(declare-fun d!1798132 () Bool)

(assert (=> d!1798132 (= (Exists!2797 lambda!307363) (choose!43108 lambda!307363))))

(declare-fun bs!1328296 () Bool)

(assert (= bs!1328296 d!1798132))

(declare-fun m!6655094 () Bool)

(assert (=> bs!1328296 m!6655094))

(assert (=> b!5698914 d!1798132))

(declare-fun d!1798134 () Bool)

(assert (=> d!1798134 (= (get!21805 lt!2273589) (v!51758 lt!2273589))))

(assert (=> b!5698914 d!1798134))

(declare-fun b!5699641 () Bool)

(declare-fun e!3506313 () Bool)

(assert (=> b!5699641 (= e!3506313 (= (head!12086 (_1!36097 lt!2273601)) (c!1003547 lt!2273584)))))

(declare-fun b!5699642 () Bool)

(declare-fun res!2407103 () Bool)

(declare-fun e!3506314 () Bool)

(assert (=> b!5699642 (=> res!2407103 e!3506314)))

(assert (=> b!5699642 (= res!2407103 e!3506313)))

(declare-fun res!2407097 () Bool)

(assert (=> b!5699642 (=> (not res!2407097) (not e!3506313))))

(declare-fun lt!2273705 () Bool)

(assert (=> b!5699642 (= res!2407097 lt!2273705)))

(declare-fun b!5699643 () Bool)

(declare-fun res!2407100 () Bool)

(declare-fun e!3506309 () Bool)

(assert (=> b!5699643 (=> res!2407100 e!3506309)))

(assert (=> b!5699643 (= res!2407100 (not (isEmpty!35130 (tail!11181 (_1!36097 lt!2273601)))))))

(declare-fun d!1798136 () Bool)

(declare-fun e!3506311 () Bool)

(assert (=> d!1798136 e!3506311))

(declare-fun c!1003740 () Bool)

(assert (=> d!1798136 (= c!1003740 ((_ is EmptyExpr!15697) lt!2273584))))

(declare-fun e!3506312 () Bool)

(assert (=> d!1798136 (= lt!2273705 e!3506312)))

(declare-fun c!1003741 () Bool)

(assert (=> d!1798136 (= c!1003741 (isEmpty!35130 (_1!36097 lt!2273601)))))

(assert (=> d!1798136 (validRegex!7433 lt!2273584)))

(assert (=> d!1798136 (= (matchR!7882 lt!2273584 (_1!36097 lt!2273601)) lt!2273705)))

(declare-fun b!5699644 () Bool)

(declare-fun e!3506310 () Bool)

(assert (=> b!5699644 (= e!3506310 (not lt!2273705))))

(declare-fun b!5699645 () Bool)

(declare-fun res!2407101 () Bool)

(assert (=> b!5699645 (=> res!2407101 e!3506314)))

(assert (=> b!5699645 (= res!2407101 (not ((_ is ElementMatch!15697) lt!2273584)))))

(assert (=> b!5699645 (= e!3506310 e!3506314)))

(declare-fun b!5699646 () Bool)

(declare-fun call!433837 () Bool)

(assert (=> b!5699646 (= e!3506311 (= lt!2273705 call!433837))))

(declare-fun b!5699647 () Bool)

(declare-fun e!3506308 () Bool)

(assert (=> b!5699647 (= e!3506308 e!3506309)))

(declare-fun res!2407104 () Bool)

(assert (=> b!5699647 (=> res!2407104 e!3506309)))

(assert (=> b!5699647 (= res!2407104 call!433837)))

(declare-fun b!5699648 () Bool)

(assert (=> b!5699648 (= e!3506312 (matchR!7882 (derivativeStep!4506 lt!2273584 (head!12086 (_1!36097 lt!2273601))) (tail!11181 (_1!36097 lt!2273601))))))

(declare-fun b!5699649 () Bool)

(assert (=> b!5699649 (= e!3506311 e!3506310)))

(declare-fun c!1003739 () Bool)

(assert (=> b!5699649 (= c!1003739 ((_ is EmptyLang!15697) lt!2273584))))

(declare-fun b!5699650 () Bool)

(assert (=> b!5699650 (= e!3506312 (nullable!5729 lt!2273584))))

(declare-fun b!5699651 () Bool)

(assert (=> b!5699651 (= e!3506314 e!3506308)))

(declare-fun res!2407102 () Bool)

(assert (=> b!5699651 (=> (not res!2407102) (not e!3506308))))

(assert (=> b!5699651 (= res!2407102 (not lt!2273705))))

(declare-fun bm!433832 () Bool)

(assert (=> bm!433832 (= call!433837 (isEmpty!35130 (_1!36097 lt!2273601)))))

(declare-fun b!5699652 () Bool)

(declare-fun res!2407098 () Bool)

(assert (=> b!5699652 (=> (not res!2407098) (not e!3506313))))

(assert (=> b!5699652 (= res!2407098 (isEmpty!35130 (tail!11181 (_1!36097 lt!2273601))))))

(declare-fun b!5699653 () Bool)

(assert (=> b!5699653 (= e!3506309 (not (= (head!12086 (_1!36097 lt!2273601)) (c!1003547 lt!2273584))))))

(declare-fun b!5699654 () Bool)

(declare-fun res!2407099 () Bool)

(assert (=> b!5699654 (=> (not res!2407099) (not e!3506313))))

(assert (=> b!5699654 (= res!2407099 (not call!433837))))

(assert (= (and d!1798136 c!1003741) b!5699650))

(assert (= (and d!1798136 (not c!1003741)) b!5699648))

(assert (= (and d!1798136 c!1003740) b!5699646))

(assert (= (and d!1798136 (not c!1003740)) b!5699649))

(assert (= (and b!5699649 c!1003739) b!5699644))

(assert (= (and b!5699649 (not c!1003739)) b!5699645))

(assert (= (and b!5699645 (not res!2407101)) b!5699642))

(assert (= (and b!5699642 res!2407097) b!5699654))

(assert (= (and b!5699654 res!2407099) b!5699652))

(assert (= (and b!5699652 res!2407098) b!5699641))

(assert (= (and b!5699642 (not res!2407103)) b!5699651))

(assert (= (and b!5699651 res!2407102) b!5699647))

(assert (= (and b!5699647 (not res!2407104)) b!5699643))

(assert (= (and b!5699643 (not res!2407100)) b!5699653))

(assert (= (or b!5699646 b!5699647 b!5699654) bm!433832))

(declare-fun m!6655096 () Bool)

(assert (=> b!5699641 m!6655096))

(assert (=> b!5699648 m!6655096))

(assert (=> b!5699648 m!6655096))

(declare-fun m!6655098 () Bool)

(assert (=> b!5699648 m!6655098))

(declare-fun m!6655100 () Bool)

(assert (=> b!5699648 m!6655100))

(assert (=> b!5699648 m!6655098))

(assert (=> b!5699648 m!6655100))

(declare-fun m!6655102 () Bool)

(assert (=> b!5699648 m!6655102))

(assert (=> d!1798136 m!6654540))

(assert (=> d!1798136 m!6655058))

(assert (=> b!5699652 m!6655100))

(assert (=> b!5699652 m!6655100))

(declare-fun m!6655104 () Bool)

(assert (=> b!5699652 m!6655104))

(assert (=> b!5699643 m!6655100))

(assert (=> b!5699643 m!6655100))

(assert (=> b!5699643 m!6655104))

(assert (=> bm!433832 m!6654540))

(declare-fun m!6655106 () Bool)

(assert (=> b!5699650 m!6655106))

(assert (=> b!5699653 m!6655096))

(assert (=> b!5698909 d!1798136))

(declare-fun d!1798138 () Bool)

(assert (=> d!1798138 (= (isEmpty!35129 (t!376710 zl!343)) ((_ is Nil!63268) (t!376710 zl!343)))))

(assert (=> b!5698930 d!1798138))

(declare-fun d!1798140 () Bool)

(assert (=> d!1798140 (= (isEmpty!35128 (t!376709 (exprs!5581 (h!69716 zl!343)))) ((_ is Nil!63267) (t!376709 (exprs!5581 (h!69716 zl!343)))))))

(assert (=> b!5698910 d!1798140))

(declare-fun bs!1328297 () Bool)

(declare-fun d!1798142 () Bool)

(assert (= bs!1328297 (and d!1798142 d!1797998)))

(declare-fun lambda!307426 () Int)

(assert (=> bs!1328297 (= lambda!307426 lambda!307386)))

(declare-fun bs!1328298 () Bool)

(assert (= bs!1328298 (and d!1798142 d!1798042)))

(assert (=> bs!1328298 (= lambda!307426 lambda!307409)))

(declare-fun b!5699675 () Bool)

(declare-fun e!3506332 () Bool)

(declare-fun e!3506331 () Bool)

(assert (=> b!5699675 (= e!3506332 e!3506331)))

(declare-fun c!1003751 () Bool)

(assert (=> b!5699675 (= c!1003751 (isEmpty!35128 (exprs!5581 (h!69716 zl!343))))))

(declare-fun b!5699676 () Bool)

(declare-fun lt!2273708 () Regex!15697)

(declare-fun isEmptyExpr!1211 (Regex!15697) Bool)

(assert (=> b!5699676 (= e!3506331 (isEmptyExpr!1211 lt!2273708))))

(assert (=> d!1798142 e!3506332))

(declare-fun res!2407109 () Bool)

(assert (=> d!1798142 (=> (not res!2407109) (not e!3506332))))

(assert (=> d!1798142 (= res!2407109 (validRegex!7433 lt!2273708))))

(declare-fun e!3506329 () Regex!15697)

(assert (=> d!1798142 (= lt!2273708 e!3506329)))

(declare-fun c!1003753 () Bool)

(declare-fun e!3506330 () Bool)

(assert (=> d!1798142 (= c!1003753 e!3506330)))

(declare-fun res!2407110 () Bool)

(assert (=> d!1798142 (=> (not res!2407110) (not e!3506330))))

(assert (=> d!1798142 (= res!2407110 ((_ is Cons!63267) (exprs!5581 (h!69716 zl!343))))))

(assert (=> d!1798142 (forall!14836 (exprs!5581 (h!69716 zl!343)) lambda!307426)))

(assert (=> d!1798142 (= (generalisedConcat!1312 (exprs!5581 (h!69716 zl!343))) lt!2273708)))

(declare-fun b!5699677 () Bool)

(declare-fun e!3506327 () Regex!15697)

(assert (=> b!5699677 (= e!3506327 EmptyExpr!15697)))

(declare-fun b!5699678 () Bool)

(declare-fun e!3506328 () Bool)

(declare-fun head!12087 (List!63391) Regex!15697)

(assert (=> b!5699678 (= e!3506328 (= lt!2273708 (head!12087 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun b!5699679 () Bool)

(assert (=> b!5699679 (= e!3506331 e!3506328)))

(declare-fun c!1003752 () Bool)

(declare-fun tail!11182 (List!63391) List!63391)

(assert (=> b!5699679 (= c!1003752 (isEmpty!35128 (tail!11182 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun b!5699680 () Bool)

(assert (=> b!5699680 (= e!3506329 e!3506327)))

(declare-fun c!1003750 () Bool)

(assert (=> b!5699680 (= c!1003750 ((_ is Cons!63267) (exprs!5581 (h!69716 zl!343))))))

(declare-fun b!5699681 () Bool)

(assert (=> b!5699681 (= e!3506329 (h!69715 (exprs!5581 (h!69716 zl!343))))))

(declare-fun b!5699682 () Bool)

(declare-fun isConcat!734 (Regex!15697) Bool)

(assert (=> b!5699682 (= e!3506328 (isConcat!734 lt!2273708))))

(declare-fun b!5699683 () Bool)

(assert (=> b!5699683 (= e!3506330 (isEmpty!35128 (t!376709 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun b!5699684 () Bool)

(assert (=> b!5699684 (= e!3506327 (Concat!24542 (h!69715 (exprs!5581 (h!69716 zl!343))) (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(assert (= (and d!1798142 res!2407110) b!5699683))

(assert (= (and d!1798142 c!1003753) b!5699681))

(assert (= (and d!1798142 (not c!1003753)) b!5699680))

(assert (= (and b!5699680 c!1003750) b!5699684))

(assert (= (and b!5699680 (not c!1003750)) b!5699677))

(assert (= (and d!1798142 res!2407109) b!5699675))

(assert (= (and b!5699675 c!1003751) b!5699676))

(assert (= (and b!5699675 (not c!1003751)) b!5699679))

(assert (= (and b!5699679 c!1003752) b!5699678))

(assert (= (and b!5699679 (not c!1003752)) b!5699682))

(assert (=> b!5699684 m!6654490))

(declare-fun m!6655108 () Bool)

(assert (=> b!5699682 m!6655108))

(declare-fun m!6655110 () Bool)

(assert (=> d!1798142 m!6655110))

(declare-fun m!6655112 () Bool)

(assert (=> d!1798142 m!6655112))

(declare-fun m!6655114 () Bool)

(assert (=> b!5699678 m!6655114))

(assert (=> b!5699683 m!6654422))

(declare-fun m!6655116 () Bool)

(assert (=> b!5699675 m!6655116))

(declare-fun m!6655118 () Bool)

(assert (=> b!5699676 m!6655118))

(declare-fun m!6655120 () Bool)

(assert (=> b!5699679 m!6655120))

(assert (=> b!5699679 m!6655120))

(declare-fun m!6655122 () Bool)

(assert (=> b!5699679 m!6655122))

(assert (=> b!5698931 d!1798142))

(declare-fun b!5699685 () Bool)

(declare-fun e!3506338 () Bool)

(assert (=> b!5699685 (= e!3506338 (= (head!12086 (_2!36097 lt!2273601)) (c!1003547 (regTwo!31906 r!7292))))))

(declare-fun b!5699686 () Bool)

(declare-fun res!2407117 () Bool)

(declare-fun e!3506339 () Bool)

(assert (=> b!5699686 (=> res!2407117 e!3506339)))

(assert (=> b!5699686 (= res!2407117 e!3506338)))

(declare-fun res!2407111 () Bool)

(assert (=> b!5699686 (=> (not res!2407111) (not e!3506338))))

(declare-fun lt!2273709 () Bool)

(assert (=> b!5699686 (= res!2407111 lt!2273709)))

(declare-fun b!5699687 () Bool)

(declare-fun res!2407114 () Bool)

(declare-fun e!3506334 () Bool)

(assert (=> b!5699687 (=> res!2407114 e!3506334)))

(assert (=> b!5699687 (= res!2407114 (not (isEmpty!35130 (tail!11181 (_2!36097 lt!2273601)))))))

(declare-fun d!1798144 () Bool)

(declare-fun e!3506336 () Bool)

(assert (=> d!1798144 e!3506336))

(declare-fun c!1003755 () Bool)

(assert (=> d!1798144 (= c!1003755 ((_ is EmptyExpr!15697) (regTwo!31906 r!7292)))))

(declare-fun e!3506337 () Bool)

(assert (=> d!1798144 (= lt!2273709 e!3506337)))

(declare-fun c!1003756 () Bool)

(assert (=> d!1798144 (= c!1003756 (isEmpty!35130 (_2!36097 lt!2273601)))))

(assert (=> d!1798144 (validRegex!7433 (regTwo!31906 r!7292))))

(assert (=> d!1798144 (= (matchR!7882 (regTwo!31906 r!7292) (_2!36097 lt!2273601)) lt!2273709)))

(declare-fun b!5699688 () Bool)

(declare-fun e!3506335 () Bool)

(assert (=> b!5699688 (= e!3506335 (not lt!2273709))))

(declare-fun b!5699689 () Bool)

(declare-fun res!2407115 () Bool)

(assert (=> b!5699689 (=> res!2407115 e!3506339)))

(assert (=> b!5699689 (= res!2407115 (not ((_ is ElementMatch!15697) (regTwo!31906 r!7292))))))

(assert (=> b!5699689 (= e!3506335 e!3506339)))

(declare-fun b!5699690 () Bool)

(declare-fun call!433838 () Bool)

(assert (=> b!5699690 (= e!3506336 (= lt!2273709 call!433838))))

(declare-fun b!5699691 () Bool)

(declare-fun e!3506333 () Bool)

(assert (=> b!5699691 (= e!3506333 e!3506334)))

(declare-fun res!2407118 () Bool)

(assert (=> b!5699691 (=> res!2407118 e!3506334)))

(assert (=> b!5699691 (= res!2407118 call!433838)))

(declare-fun b!5699692 () Bool)

(assert (=> b!5699692 (= e!3506337 (matchR!7882 (derivativeStep!4506 (regTwo!31906 r!7292) (head!12086 (_2!36097 lt!2273601))) (tail!11181 (_2!36097 lt!2273601))))))

(declare-fun b!5699693 () Bool)

(assert (=> b!5699693 (= e!3506336 e!3506335)))

(declare-fun c!1003754 () Bool)

(assert (=> b!5699693 (= c!1003754 ((_ is EmptyLang!15697) (regTwo!31906 r!7292)))))

(declare-fun b!5699694 () Bool)

(assert (=> b!5699694 (= e!3506337 (nullable!5729 (regTwo!31906 r!7292)))))

(declare-fun b!5699695 () Bool)

(assert (=> b!5699695 (= e!3506339 e!3506333)))

(declare-fun res!2407116 () Bool)

(assert (=> b!5699695 (=> (not res!2407116) (not e!3506333))))

(assert (=> b!5699695 (= res!2407116 (not lt!2273709))))

(declare-fun bm!433833 () Bool)

(assert (=> bm!433833 (= call!433838 (isEmpty!35130 (_2!36097 lt!2273601)))))

(declare-fun b!5699696 () Bool)

(declare-fun res!2407112 () Bool)

(assert (=> b!5699696 (=> (not res!2407112) (not e!3506338))))

(assert (=> b!5699696 (= res!2407112 (isEmpty!35130 (tail!11181 (_2!36097 lt!2273601))))))

(declare-fun b!5699697 () Bool)

(assert (=> b!5699697 (= e!3506334 (not (= (head!12086 (_2!36097 lt!2273601)) (c!1003547 (regTwo!31906 r!7292)))))))

(declare-fun b!5699698 () Bool)

(declare-fun res!2407113 () Bool)

(assert (=> b!5699698 (=> (not res!2407113) (not e!3506338))))

(assert (=> b!5699698 (= res!2407113 (not call!433838))))

(assert (= (and d!1798144 c!1003756) b!5699694))

(assert (= (and d!1798144 (not c!1003756)) b!5699692))

(assert (= (and d!1798144 c!1003755) b!5699690))

(assert (= (and d!1798144 (not c!1003755)) b!5699693))

(assert (= (and b!5699693 c!1003754) b!5699688))

(assert (= (and b!5699693 (not c!1003754)) b!5699689))

(assert (= (and b!5699689 (not res!2407115)) b!5699686))

(assert (= (and b!5699686 res!2407111) b!5699698))

(assert (= (and b!5699698 res!2407113) b!5699696))

(assert (= (and b!5699696 res!2407112) b!5699685))

(assert (= (and b!5699686 (not res!2407117)) b!5699695))

(assert (= (and b!5699695 res!2407116) b!5699691))

(assert (= (and b!5699691 (not res!2407118)) b!5699687))

(assert (= (and b!5699687 (not res!2407114)) b!5699697))

(assert (= (or b!5699690 b!5699691 b!5699698) bm!433833))

(declare-fun m!6655124 () Bool)

(assert (=> b!5699685 m!6655124))

(assert (=> b!5699692 m!6655124))

(assert (=> b!5699692 m!6655124))

(declare-fun m!6655126 () Bool)

(assert (=> b!5699692 m!6655126))

(declare-fun m!6655128 () Bool)

(assert (=> b!5699692 m!6655128))

(assert (=> b!5699692 m!6655126))

(assert (=> b!5699692 m!6655128))

(declare-fun m!6655130 () Bool)

(assert (=> b!5699692 m!6655130))

(declare-fun m!6655132 () Bool)

(assert (=> d!1798144 m!6655132))

(declare-fun m!6655134 () Bool)

(assert (=> d!1798144 m!6655134))

(assert (=> b!5699696 m!6655128))

(assert (=> b!5699696 m!6655128))

(declare-fun m!6655136 () Bool)

(assert (=> b!5699696 m!6655136))

(assert (=> b!5699687 m!6655128))

(assert (=> b!5699687 m!6655128))

(assert (=> b!5699687 m!6655136))

(assert (=> bm!433833 m!6655132))

(declare-fun m!6655138 () Bool)

(assert (=> b!5699694 m!6655138))

(assert (=> b!5699697 m!6655124))

(assert (=> b!5698916 d!1798144))

(declare-fun b!5699721 () Bool)

(declare-fun e!3506357 () (InoxSet Context!10162))

(assert (=> b!5699721 (= e!3506357 ((as const (Array Context!10162 Bool)) false))))

(declare-fun call!433854 () (InoxSet Context!10162))

(declare-fun c!1003769 () Bool)

(declare-fun bm!433846 () Bool)

(declare-fun call!433855 () List!63391)

(assert (=> bm!433846 (= call!433854 (derivationStepZipperDown!1039 (ite c!1003769 (regTwo!31907 (reg!16026 (regOne!31906 r!7292))) (regOne!31906 (reg!16026 (regOne!31906 r!7292)))) (ite c!1003769 lt!2273593 (Context!10163 call!433855)) (h!69714 s!2326)))))

(declare-fun b!5699722 () Bool)

(declare-fun c!1003770 () Bool)

(assert (=> b!5699722 (= c!1003770 ((_ is Star!15697) (reg!16026 (regOne!31906 r!7292))))))

(declare-fun e!3506353 () (InoxSet Context!10162))

(assert (=> b!5699722 (= e!3506353 e!3506357)))

(declare-fun b!5699723 () Bool)

(declare-fun call!433851 () (InoxSet Context!10162))

(assert (=> b!5699723 (= e!3506357 call!433851)))

(declare-fun b!5699724 () Bool)

(declare-fun e!3506355 () (InoxSet Context!10162))

(assert (=> b!5699724 (= e!3506355 e!3506353)))

(declare-fun c!1003767 () Bool)

(assert (=> b!5699724 (= c!1003767 ((_ is Concat!24542) (reg!16026 (regOne!31906 r!7292))))))

(declare-fun b!5699725 () Bool)

(declare-fun call!433856 () (InoxSet Context!10162))

(assert (=> b!5699725 (= e!3506355 ((_ map or) call!433854 call!433856))))

(declare-fun bm!433847 () Bool)

(declare-fun call!433852 () List!63391)

(assert (=> bm!433847 (= call!433852 call!433855)))

(declare-fun b!5699727 () Bool)

(declare-fun e!3506354 () (InoxSet Context!10162))

(assert (=> b!5699727 (= e!3506354 (store ((as const (Array Context!10162 Bool)) false) lt!2273593 true))))

(declare-fun b!5699728 () Bool)

(declare-fun c!1003771 () Bool)

(declare-fun e!3506352 () Bool)

(assert (=> b!5699728 (= c!1003771 e!3506352)))

(declare-fun res!2407121 () Bool)

(assert (=> b!5699728 (=> (not res!2407121) (not e!3506352))))

(assert (=> b!5699728 (= res!2407121 ((_ is Concat!24542) (reg!16026 (regOne!31906 r!7292))))))

(declare-fun e!3506356 () (InoxSet Context!10162))

(assert (=> b!5699728 (= e!3506356 e!3506355)))

(declare-fun bm!433848 () Bool)

(declare-fun $colon$colon!1720 (List!63391 Regex!15697) List!63391)

(assert (=> bm!433848 (= call!433855 ($colon$colon!1720 (exprs!5581 lt!2273593) (ite (or c!1003771 c!1003767) (regTwo!31906 (reg!16026 (regOne!31906 r!7292))) (reg!16026 (regOne!31906 r!7292)))))))

(declare-fun bm!433849 () Bool)

(declare-fun call!433853 () (InoxSet Context!10162))

(assert (=> bm!433849 (= call!433856 call!433853)))

(declare-fun b!5699729 () Bool)

(assert (=> b!5699729 (= e!3506356 ((_ map or) call!433853 call!433854))))

(declare-fun bm!433850 () Bool)

(assert (=> bm!433850 (= call!433853 (derivationStepZipperDown!1039 (ite c!1003769 (regOne!31907 (reg!16026 (regOne!31906 r!7292))) (ite c!1003771 (regTwo!31906 (reg!16026 (regOne!31906 r!7292))) (ite c!1003767 (regOne!31906 (reg!16026 (regOne!31906 r!7292))) (reg!16026 (reg!16026 (regOne!31906 r!7292)))))) (ite (or c!1003769 c!1003771) lt!2273593 (Context!10163 call!433852)) (h!69714 s!2326)))))

(declare-fun b!5699730 () Bool)

(assert (=> b!5699730 (= e!3506353 call!433851)))

(declare-fun bm!433851 () Bool)

(assert (=> bm!433851 (= call!433851 call!433856)))

(declare-fun b!5699731 () Bool)

(assert (=> b!5699731 (= e!3506352 (nullable!5729 (regOne!31906 (reg!16026 (regOne!31906 r!7292)))))))

(declare-fun d!1798146 () Bool)

(declare-fun c!1003768 () Bool)

(assert (=> d!1798146 (= c!1003768 (and ((_ is ElementMatch!15697) (reg!16026 (regOne!31906 r!7292))) (= (c!1003547 (reg!16026 (regOne!31906 r!7292))) (h!69714 s!2326))))))

(assert (=> d!1798146 (= (derivationStepZipperDown!1039 (reg!16026 (regOne!31906 r!7292)) lt!2273593 (h!69714 s!2326)) e!3506354)))

(declare-fun b!5699726 () Bool)

(assert (=> b!5699726 (= e!3506354 e!3506356)))

(assert (=> b!5699726 (= c!1003769 ((_ is Union!15697) (reg!16026 (regOne!31906 r!7292))))))

(assert (= (and d!1798146 c!1003768) b!5699727))

(assert (= (and d!1798146 (not c!1003768)) b!5699726))

(assert (= (and b!5699726 c!1003769) b!5699729))

(assert (= (and b!5699726 (not c!1003769)) b!5699728))

(assert (= (and b!5699728 res!2407121) b!5699731))

(assert (= (and b!5699728 c!1003771) b!5699725))

(assert (= (and b!5699728 (not c!1003771)) b!5699724))

(assert (= (and b!5699724 c!1003767) b!5699730))

(assert (= (and b!5699724 (not c!1003767)) b!5699722))

(assert (= (and b!5699722 c!1003770) b!5699723))

(assert (= (and b!5699722 (not c!1003770)) b!5699721))

(assert (= (or b!5699730 b!5699723) bm!433847))

(assert (= (or b!5699730 b!5699723) bm!433851))

(assert (= (or b!5699725 bm!433847) bm!433848))

(assert (= (or b!5699725 bm!433851) bm!433849))

(assert (= (or b!5699729 b!5699725) bm!433846))

(assert (= (or b!5699729 bm!433849) bm!433850))

(declare-fun m!6655140 () Bool)

(assert (=> bm!433848 m!6655140))

(declare-fun m!6655142 () Bool)

(assert (=> bm!433846 m!6655142))

(declare-fun m!6655144 () Bool)

(assert (=> b!5699731 m!6655144))

(assert (=> b!5699727 m!6654486))

(declare-fun m!6655146 () Bool)

(assert (=> bm!433850 m!6655146))

(assert (=> b!5698938 d!1798146))

(declare-fun c!1003776 () Bool)

(declare-fun call!433863 () Bool)

(declare-fun c!1003777 () Bool)

(declare-fun bm!433858 () Bool)

(assert (=> bm!433858 (= call!433863 (validRegex!7433 (ite c!1003776 (reg!16026 r!7292) (ite c!1003777 (regTwo!31907 r!7292) (regTwo!31906 r!7292)))))))

(declare-fun b!5699750 () Bool)

(declare-fun e!3506377 () Bool)

(declare-fun call!433865 () Bool)

(assert (=> b!5699750 (= e!3506377 call!433865)))

(declare-fun b!5699751 () Bool)

(declare-fun e!3506372 () Bool)

(declare-fun e!3506374 () Bool)

(assert (=> b!5699751 (= e!3506372 e!3506374)))

(assert (=> b!5699751 (= c!1003777 ((_ is Union!15697) r!7292))))

(declare-fun b!5699752 () Bool)

(declare-fun e!3506378 () Bool)

(assert (=> b!5699752 (= e!3506378 call!433865)))

(declare-fun b!5699753 () Bool)

(declare-fun e!3506373 () Bool)

(assert (=> b!5699753 (= e!3506372 e!3506373)))

(declare-fun res!2407132 () Bool)

(assert (=> b!5699753 (= res!2407132 (not (nullable!5729 (reg!16026 r!7292))))))

(assert (=> b!5699753 (=> (not res!2407132) (not e!3506373))))

(declare-fun bm!433859 () Bool)

(assert (=> bm!433859 (= call!433865 call!433863)))

(declare-fun b!5699754 () Bool)

(declare-fun e!3506375 () Bool)

(assert (=> b!5699754 (= e!3506375 e!3506372)))

(assert (=> b!5699754 (= c!1003776 ((_ is Star!15697) r!7292))))

(declare-fun bm!433860 () Bool)

(declare-fun call!433864 () Bool)

(assert (=> bm!433860 (= call!433864 (validRegex!7433 (ite c!1003777 (regOne!31907 r!7292) (regOne!31906 r!7292))))))

(declare-fun b!5699755 () Bool)

(declare-fun res!2407133 () Bool)

(assert (=> b!5699755 (=> (not res!2407133) (not e!3506377))))

(assert (=> b!5699755 (= res!2407133 call!433864)))

(assert (=> b!5699755 (= e!3506374 e!3506377)))

(declare-fun b!5699756 () Bool)

(declare-fun e!3506376 () Bool)

(assert (=> b!5699756 (= e!3506376 e!3506378)))

(declare-fun res!2407135 () Bool)

(assert (=> b!5699756 (=> (not res!2407135) (not e!3506378))))

(assert (=> b!5699756 (= res!2407135 call!433864)))

(declare-fun b!5699757 () Bool)

(assert (=> b!5699757 (= e!3506373 call!433863)))

(declare-fun d!1798148 () Bool)

(declare-fun res!2407134 () Bool)

(assert (=> d!1798148 (=> res!2407134 e!3506375)))

(assert (=> d!1798148 (= res!2407134 ((_ is ElementMatch!15697) r!7292))))

(assert (=> d!1798148 (= (validRegex!7433 r!7292) e!3506375)))

(declare-fun b!5699758 () Bool)

(declare-fun res!2407136 () Bool)

(assert (=> b!5699758 (=> res!2407136 e!3506376)))

(assert (=> b!5699758 (= res!2407136 (not ((_ is Concat!24542) r!7292)))))

(assert (=> b!5699758 (= e!3506374 e!3506376)))

(assert (= (and d!1798148 (not res!2407134)) b!5699754))

(assert (= (and b!5699754 c!1003776) b!5699753))

(assert (= (and b!5699754 (not c!1003776)) b!5699751))

(assert (= (and b!5699753 res!2407132) b!5699757))

(assert (= (and b!5699751 c!1003777) b!5699755))

(assert (= (and b!5699751 (not c!1003777)) b!5699758))

(assert (= (and b!5699755 res!2407133) b!5699750))

(assert (= (and b!5699758 (not res!2407136)) b!5699756))

(assert (= (and b!5699756 res!2407135) b!5699752))

(assert (= (or b!5699750 b!5699752) bm!433859))

(assert (= (or b!5699755 b!5699756) bm!433860))

(assert (= (or b!5699757 bm!433859) bm!433858))

(declare-fun m!6655148 () Bool)

(assert (=> bm!433858 m!6655148))

(declare-fun m!6655150 () Bool)

(assert (=> b!5699753 m!6655150))

(declare-fun m!6655152 () Bool)

(assert (=> bm!433860 m!6655152))

(assert (=> start!587596 d!1798148))

(declare-fun d!1798150 () Bool)

(declare-fun c!1003778 () Bool)

(assert (=> d!1798150 (= c!1003778 (isEmpty!35130 s!2326))))

(declare-fun e!3506379 () Bool)

(assert (=> d!1798150 (= (matchZipper!1835 lt!2273599 s!2326) e!3506379)))

(declare-fun b!5699759 () Bool)

(assert (=> b!5699759 (= e!3506379 (nullableZipper!1653 lt!2273599))))

(declare-fun b!5699760 () Bool)

(assert (=> b!5699760 (= e!3506379 (matchZipper!1835 (derivationStepZipper!1780 lt!2273599 (head!12086 s!2326)) (tail!11181 s!2326)))))

(assert (= (and d!1798150 c!1003778) b!5699759))

(assert (= (and d!1798150 (not c!1003778)) b!5699760))

(assert (=> d!1798150 m!6654972))

(declare-fun m!6655154 () Bool)

(assert (=> b!5699759 m!6655154))

(assert (=> b!5699760 m!6655024))

(assert (=> b!5699760 m!6655024))

(declare-fun m!6655156 () Bool)

(assert (=> b!5699760 m!6655156))

(assert (=> b!5699760 m!6655028))

(assert (=> b!5699760 m!6655156))

(assert (=> b!5699760 m!6655028))

(declare-fun m!6655158 () Bool)

(assert (=> b!5699760 m!6655158))

(assert (=> b!5698917 d!1798150))

(declare-fun d!1798152 () Bool)

(declare-fun c!1003779 () Bool)

(assert (=> d!1798152 (= c!1003779 (isEmpty!35130 (t!376708 s!2326)))))

(declare-fun e!3506380 () Bool)

(assert (=> d!1798152 (= (matchZipper!1835 lt!2273577 (t!376708 s!2326)) e!3506380)))

(declare-fun b!5699761 () Bool)

(assert (=> b!5699761 (= e!3506380 (nullableZipper!1653 lt!2273577))))

(declare-fun b!5699762 () Bool)

(assert (=> b!5699762 (= e!3506380 (matchZipper!1835 (derivationStepZipper!1780 lt!2273577 (head!12086 (t!376708 s!2326))) (tail!11181 (t!376708 s!2326))))))

(assert (= (and d!1798152 c!1003779) b!5699761))

(assert (= (and d!1798152 (not c!1003779)) b!5699762))

(assert (=> d!1798152 m!6654730))

(declare-fun m!6655160 () Bool)

(assert (=> b!5699761 m!6655160))

(assert (=> b!5699762 m!6654734))

(assert (=> b!5699762 m!6654734))

(declare-fun m!6655162 () Bool)

(assert (=> b!5699762 m!6655162))

(assert (=> b!5699762 m!6654738))

(assert (=> b!5699762 m!6655162))

(assert (=> b!5699762 m!6654738))

(declare-fun m!6655164 () Bool)

(assert (=> b!5699762 m!6655164))

(assert (=> b!5698917 d!1798152))

(declare-fun d!1798154 () Bool)

(declare-fun e!3506383 () Bool)

(assert (=> d!1798154 e!3506383))

(declare-fun res!2407139 () Bool)

(assert (=> d!1798154 (=> (not res!2407139) (not e!3506383))))

(declare-fun lt!2273712 () List!63392)

(declare-fun noDuplicate!1633 (List!63392) Bool)

(assert (=> d!1798154 (= res!2407139 (noDuplicate!1633 lt!2273712))))

(declare-fun choose!43115 ((InoxSet Context!10162)) List!63392)

(assert (=> d!1798154 (= lt!2273712 (choose!43115 z!1189))))

(assert (=> d!1798154 (= (toList!9481 z!1189) lt!2273712)))

(declare-fun b!5699765 () Bool)

(declare-fun content!11480 (List!63392) (InoxSet Context!10162))

(assert (=> b!5699765 (= e!3506383 (= (content!11480 lt!2273712) z!1189))))

(assert (= (and d!1798154 res!2407139) b!5699765))

(declare-fun m!6655166 () Bool)

(assert (=> d!1798154 m!6655166))

(declare-fun m!6655168 () Bool)

(assert (=> d!1798154 m!6655168))

(declare-fun m!6655170 () Bool)

(assert (=> b!5699765 m!6655170))

(assert (=> b!5698939 d!1798154))

(declare-fun d!1798156 () Bool)

(declare-fun choose!43116 ((InoxSet Context!10162) Int) (InoxSet Context!10162))

(assert (=> d!1798156 (= (flatMap!1310 lt!2273599 lambda!307361) (choose!43116 lt!2273599 lambda!307361))))

(declare-fun bs!1328299 () Bool)

(assert (= bs!1328299 d!1798156))

(declare-fun m!6655172 () Bool)

(assert (=> bs!1328299 m!6655172))

(assert (=> b!5698935 d!1798156))

(declare-fun b!5699776 () Bool)

(declare-fun e!3506390 () (InoxSet Context!10162))

(declare-fun e!3506392 () (InoxSet Context!10162))

(assert (=> b!5699776 (= e!3506390 e!3506392)))

(declare-fun c!1003785 () Bool)

(assert (=> b!5699776 (= c!1003785 ((_ is Cons!63267) (exprs!5581 lt!2273579)))))

(declare-fun b!5699777 () Bool)

(assert (=> b!5699777 (= e!3506392 ((as const (Array Context!10162 Bool)) false))))

(declare-fun bm!433863 () Bool)

(declare-fun call!433868 () (InoxSet Context!10162))

(assert (=> bm!433863 (= call!433868 (derivationStepZipperDown!1039 (h!69715 (exprs!5581 lt!2273579)) (Context!10163 (t!376709 (exprs!5581 lt!2273579))) (h!69714 s!2326)))))

(declare-fun b!5699778 () Bool)

(assert (=> b!5699778 (= e!3506392 call!433868)))

(declare-fun d!1798158 () Bool)

(declare-fun c!1003784 () Bool)

(declare-fun e!3506391 () Bool)

(assert (=> d!1798158 (= c!1003784 e!3506391)))

(declare-fun res!2407142 () Bool)

(assert (=> d!1798158 (=> (not res!2407142) (not e!3506391))))

(assert (=> d!1798158 (= res!2407142 ((_ is Cons!63267) (exprs!5581 lt!2273579)))))

(assert (=> d!1798158 (= (derivationStepZipperUp!965 lt!2273579 (h!69714 s!2326)) e!3506390)))

(declare-fun b!5699779 () Bool)

(assert (=> b!5699779 (= e!3506390 ((_ map or) call!433868 (derivationStepZipperUp!965 (Context!10163 (t!376709 (exprs!5581 lt!2273579))) (h!69714 s!2326))))))

(declare-fun b!5699780 () Bool)

(assert (=> b!5699780 (= e!3506391 (nullable!5729 (h!69715 (exprs!5581 lt!2273579))))))

(assert (= (and d!1798158 res!2407142) b!5699780))

(assert (= (and d!1798158 c!1003784) b!5699779))

(assert (= (and d!1798158 (not c!1003784)) b!5699776))

(assert (= (and b!5699776 c!1003785) b!5699778))

(assert (= (and b!5699776 (not c!1003785)) b!5699777))

(assert (= (or b!5699779 b!5699778) bm!433863))

(declare-fun m!6655174 () Bool)

(assert (=> bm!433863 m!6655174))

(declare-fun m!6655176 () Bool)

(assert (=> b!5699779 m!6655176))

(declare-fun m!6655178 () Bool)

(assert (=> b!5699780 m!6655178))

(assert (=> b!5698935 d!1798158))

(declare-fun d!1798160 () Bool)

(declare-fun dynLambda!24752 (Int Context!10162) (InoxSet Context!10162))

(assert (=> d!1798160 (= (flatMap!1310 lt!2273599 lambda!307361) (dynLambda!24752 lambda!307361 lt!2273579))))

(declare-fun lt!2273715 () Unit!156320)

(declare-fun choose!43117 ((InoxSet Context!10162) Context!10162 Int) Unit!156320)

(assert (=> d!1798160 (= lt!2273715 (choose!43117 lt!2273599 lt!2273579 lambda!307361))))

(assert (=> d!1798160 (= lt!2273599 (store ((as const (Array Context!10162 Bool)) false) lt!2273579 true))))

(assert (=> d!1798160 (= (lemmaFlatMapOnSingletonSet!842 lt!2273599 lt!2273579 lambda!307361) lt!2273715)))

(declare-fun b_lambda!215411 () Bool)

(assert (=> (not b_lambda!215411) (not d!1798160)))

(declare-fun bs!1328300 () Bool)

(assert (= bs!1328300 d!1798160))

(assert (=> bs!1328300 m!6654514))

(declare-fun m!6655180 () Bool)

(assert (=> bs!1328300 m!6655180))

(declare-fun m!6655182 () Bool)

(assert (=> bs!1328300 m!6655182))

(assert (=> bs!1328300 m!6654506))

(assert (=> b!5698935 d!1798160))

(declare-fun bs!1328301 () Bool)

(declare-fun d!1798162 () Bool)

(assert (= bs!1328301 (and d!1798162 b!5698937)))

(declare-fun lambda!307429 () Int)

(assert (=> bs!1328301 (= lambda!307429 lambda!307361)))

(assert (=> d!1798162 true))

(assert (=> d!1798162 (= (derivationStepZipper!1780 lt!2273599 (h!69714 s!2326)) (flatMap!1310 lt!2273599 lambda!307429))))

(declare-fun bs!1328302 () Bool)

(assert (= bs!1328302 d!1798162))

(declare-fun m!6655184 () Bool)

(assert (=> bs!1328302 m!6655184))

(assert (=> b!5698935 d!1798162))

(declare-fun d!1798164 () Bool)

(declare-fun nullableFct!1799 (Regex!15697) Bool)

(assert (=> d!1798164 (= (nullable!5729 (regOne!31906 (regOne!31906 r!7292))) (nullableFct!1799 (regOne!31906 (regOne!31906 r!7292))))))

(declare-fun bs!1328303 () Bool)

(assert (= bs!1328303 d!1798164))

(declare-fun m!6655186 () Bool)

(assert (=> bs!1328303 m!6655186))

(assert (=> b!5698915 d!1798164))

(declare-fun d!1798166 () Bool)

(declare-fun c!1003788 () Bool)

(assert (=> d!1798166 (= c!1003788 (isEmpty!35130 (t!376708 s!2326)))))

(declare-fun e!3506393 () Bool)

(assert (=> d!1798166 (= (matchZipper!1835 lt!2273590 (t!376708 s!2326)) e!3506393)))

(declare-fun b!5699783 () Bool)

(assert (=> b!5699783 (= e!3506393 (nullableZipper!1653 lt!2273590))))

(declare-fun b!5699784 () Bool)

(assert (=> b!5699784 (= e!3506393 (matchZipper!1835 (derivationStepZipper!1780 lt!2273590 (head!12086 (t!376708 s!2326))) (tail!11181 (t!376708 s!2326))))))

(assert (= (and d!1798166 c!1003788) b!5699783))

(assert (= (and d!1798166 (not c!1003788)) b!5699784))

(assert (=> d!1798166 m!6654730))

(declare-fun m!6655188 () Bool)

(assert (=> b!5699783 m!6655188))

(assert (=> b!5699784 m!6654734))

(assert (=> b!5699784 m!6654734))

(declare-fun m!6655190 () Bool)

(assert (=> b!5699784 m!6655190))

(assert (=> b!5699784 m!6654738))

(assert (=> b!5699784 m!6655190))

(assert (=> b!5699784 m!6654738))

(declare-fun m!6655192 () Bool)

(assert (=> b!5699784 m!6655192))

(assert (=> b!5698936 d!1798166))

(declare-fun b!5699785 () Bool)

(declare-fun e!3506399 () (InoxSet Context!10162))

(assert (=> b!5699785 (= e!3506399 ((as const (Array Context!10162 Bool)) false))))

(declare-fun c!1003791 () Bool)

(declare-fun call!433872 () (InoxSet Context!10162))

(declare-fun call!433873 () List!63391)

(declare-fun bm!433864 () Bool)

(assert (=> bm!433864 (= call!433872 (derivationStepZipperDown!1039 (ite c!1003791 (regTwo!31907 (h!69715 (exprs!5581 (h!69716 zl!343)))) (regOne!31906 (h!69715 (exprs!5581 (h!69716 zl!343))))) (ite c!1003791 lt!2273595 (Context!10163 call!433873)) (h!69714 s!2326)))))

(declare-fun b!5699786 () Bool)

(declare-fun c!1003792 () Bool)

(assert (=> b!5699786 (= c!1003792 ((_ is Star!15697) (h!69715 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun e!3506395 () (InoxSet Context!10162))

(assert (=> b!5699786 (= e!3506395 e!3506399)))

(declare-fun b!5699787 () Bool)

(declare-fun call!433869 () (InoxSet Context!10162))

(assert (=> b!5699787 (= e!3506399 call!433869)))

(declare-fun b!5699788 () Bool)

(declare-fun e!3506397 () (InoxSet Context!10162))

(assert (=> b!5699788 (= e!3506397 e!3506395)))

(declare-fun c!1003789 () Bool)

(assert (=> b!5699788 (= c!1003789 ((_ is Concat!24542) (h!69715 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun b!5699789 () Bool)

(declare-fun call!433874 () (InoxSet Context!10162))

(assert (=> b!5699789 (= e!3506397 ((_ map or) call!433872 call!433874))))

(declare-fun bm!433865 () Bool)

(declare-fun call!433870 () List!63391)

(assert (=> bm!433865 (= call!433870 call!433873)))

(declare-fun b!5699791 () Bool)

(declare-fun e!3506396 () (InoxSet Context!10162))

(assert (=> b!5699791 (= e!3506396 (store ((as const (Array Context!10162 Bool)) false) lt!2273595 true))))

(declare-fun b!5699792 () Bool)

(declare-fun c!1003793 () Bool)

(declare-fun e!3506394 () Bool)

(assert (=> b!5699792 (= c!1003793 e!3506394)))

(declare-fun res!2407143 () Bool)

(assert (=> b!5699792 (=> (not res!2407143) (not e!3506394))))

(assert (=> b!5699792 (= res!2407143 ((_ is Concat!24542) (h!69715 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun e!3506398 () (InoxSet Context!10162))

(assert (=> b!5699792 (= e!3506398 e!3506397)))

(declare-fun bm!433866 () Bool)

(assert (=> bm!433866 (= call!433873 ($colon$colon!1720 (exprs!5581 lt!2273595) (ite (or c!1003793 c!1003789) (regTwo!31906 (h!69715 (exprs!5581 (h!69716 zl!343)))) (h!69715 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun bm!433867 () Bool)

(declare-fun call!433871 () (InoxSet Context!10162))

(assert (=> bm!433867 (= call!433874 call!433871)))

(declare-fun b!5699793 () Bool)

(assert (=> b!5699793 (= e!3506398 ((_ map or) call!433871 call!433872))))

(declare-fun bm!433868 () Bool)

(assert (=> bm!433868 (= call!433871 (derivationStepZipperDown!1039 (ite c!1003791 (regOne!31907 (h!69715 (exprs!5581 (h!69716 zl!343)))) (ite c!1003793 (regTwo!31906 (h!69715 (exprs!5581 (h!69716 zl!343)))) (ite c!1003789 (regOne!31906 (h!69715 (exprs!5581 (h!69716 zl!343)))) (reg!16026 (h!69715 (exprs!5581 (h!69716 zl!343))))))) (ite (or c!1003791 c!1003793) lt!2273595 (Context!10163 call!433870)) (h!69714 s!2326)))))

(declare-fun b!5699794 () Bool)

(assert (=> b!5699794 (= e!3506395 call!433869)))

(declare-fun bm!433869 () Bool)

(assert (=> bm!433869 (= call!433869 call!433874)))

(declare-fun b!5699795 () Bool)

(assert (=> b!5699795 (= e!3506394 (nullable!5729 (regOne!31906 (h!69715 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun d!1798168 () Bool)

(declare-fun c!1003790 () Bool)

(assert (=> d!1798168 (= c!1003790 (and ((_ is ElementMatch!15697) (h!69715 (exprs!5581 (h!69716 zl!343)))) (= (c!1003547 (h!69715 (exprs!5581 (h!69716 zl!343)))) (h!69714 s!2326))))))

(assert (=> d!1798168 (= (derivationStepZipperDown!1039 (h!69715 (exprs!5581 (h!69716 zl!343))) lt!2273595 (h!69714 s!2326)) e!3506396)))

(declare-fun b!5699790 () Bool)

(assert (=> b!5699790 (= e!3506396 e!3506398)))

(assert (=> b!5699790 (= c!1003791 ((_ is Union!15697) (h!69715 (exprs!5581 (h!69716 zl!343)))))))

(assert (= (and d!1798168 c!1003790) b!5699791))

(assert (= (and d!1798168 (not c!1003790)) b!5699790))

(assert (= (and b!5699790 c!1003791) b!5699793))

(assert (= (and b!5699790 (not c!1003791)) b!5699792))

(assert (= (and b!5699792 res!2407143) b!5699795))

(assert (= (and b!5699792 c!1003793) b!5699789))

(assert (= (and b!5699792 (not c!1003793)) b!5699788))

(assert (= (and b!5699788 c!1003789) b!5699794))

(assert (= (and b!5699788 (not c!1003789)) b!5699786))

(assert (= (and b!5699786 c!1003792) b!5699787))

(assert (= (and b!5699786 (not c!1003792)) b!5699785))

(assert (= (or b!5699794 b!5699787) bm!433865))

(assert (= (or b!5699794 b!5699787) bm!433869))

(assert (= (or b!5699789 bm!433865) bm!433866))

(assert (= (or b!5699789 bm!433869) bm!433867))

(assert (= (or b!5699793 b!5699789) bm!433864))

(assert (= (or b!5699793 bm!433867) bm!433868))

(declare-fun m!6655194 () Bool)

(assert (=> bm!433866 m!6655194))

(declare-fun m!6655196 () Bool)

(assert (=> bm!433864 m!6655196))

(declare-fun m!6655198 () Bool)

(assert (=> b!5699795 m!6655198))

(assert (=> b!5699791 m!6654538))

(declare-fun m!6655200 () Bool)

(assert (=> bm!433868 m!6655200))

(assert (=> b!5698937 d!1798168))

(declare-fun d!1798170 () Bool)

(assert (=> d!1798170 (= (flatMap!1310 z!1189 lambda!307361) (dynLambda!24752 lambda!307361 (h!69716 zl!343)))))

(declare-fun lt!2273716 () Unit!156320)

(assert (=> d!1798170 (= lt!2273716 (choose!43117 z!1189 (h!69716 zl!343) lambda!307361))))

(assert (=> d!1798170 (= z!1189 (store ((as const (Array Context!10162 Bool)) false) (h!69716 zl!343) true))))

(assert (=> d!1798170 (= (lemmaFlatMapOnSingletonSet!842 z!1189 (h!69716 zl!343) lambda!307361) lt!2273716)))

(declare-fun b_lambda!215413 () Bool)

(assert (=> (not b_lambda!215413) (not d!1798170)))

(declare-fun bs!1328304 () Bool)

(assert (= bs!1328304 d!1798170))

(assert (=> bs!1328304 m!6654446))

(declare-fun m!6655202 () Bool)

(assert (=> bs!1328304 m!6655202))

(declare-fun m!6655204 () Bool)

(assert (=> bs!1328304 m!6655204))

(declare-fun m!6655206 () Bool)

(assert (=> bs!1328304 m!6655206))

(assert (=> b!5698937 d!1798170))

(declare-fun d!1798172 () Bool)

(assert (=> d!1798172 (= (flatMap!1310 z!1189 lambda!307361) (choose!43116 z!1189 lambda!307361))))

(declare-fun bs!1328305 () Bool)

(assert (= bs!1328305 d!1798172))

(declare-fun m!6655208 () Bool)

(assert (=> bs!1328305 m!6655208))

(assert (=> b!5698937 d!1798172))

(declare-fun d!1798174 () Bool)

(assert (=> d!1798174 (= (nullable!5729 (h!69715 (exprs!5581 (h!69716 zl!343)))) (nullableFct!1799 (h!69715 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun bs!1328306 () Bool)

(assert (= bs!1328306 d!1798174))

(declare-fun m!6655210 () Bool)

(assert (=> bs!1328306 m!6655210))

(assert (=> b!5698937 d!1798174))

(declare-fun b!5699796 () Bool)

(declare-fun e!3506400 () (InoxSet Context!10162))

(declare-fun e!3506402 () (InoxSet Context!10162))

(assert (=> b!5699796 (= e!3506400 e!3506402)))

(declare-fun c!1003795 () Bool)

(assert (=> b!5699796 (= c!1003795 ((_ is Cons!63267) (exprs!5581 (Context!10163 (Cons!63267 (h!69715 (exprs!5581 (h!69716 zl!343))) (t!376709 (exprs!5581 (h!69716 zl!343))))))))))

(declare-fun b!5699797 () Bool)

(assert (=> b!5699797 (= e!3506402 ((as const (Array Context!10162 Bool)) false))))

(declare-fun bm!433870 () Bool)

(declare-fun call!433875 () (InoxSet Context!10162))

(assert (=> bm!433870 (= call!433875 (derivationStepZipperDown!1039 (h!69715 (exprs!5581 (Context!10163 (Cons!63267 (h!69715 (exprs!5581 (h!69716 zl!343))) (t!376709 (exprs!5581 (h!69716 zl!343))))))) (Context!10163 (t!376709 (exprs!5581 (Context!10163 (Cons!63267 (h!69715 (exprs!5581 (h!69716 zl!343))) (t!376709 (exprs!5581 (h!69716 zl!343)))))))) (h!69714 s!2326)))))

(declare-fun b!5699798 () Bool)

(assert (=> b!5699798 (= e!3506402 call!433875)))

(declare-fun d!1798176 () Bool)

(declare-fun c!1003794 () Bool)

(declare-fun e!3506401 () Bool)

(assert (=> d!1798176 (= c!1003794 e!3506401)))

(declare-fun res!2407144 () Bool)

(assert (=> d!1798176 (=> (not res!2407144) (not e!3506401))))

(assert (=> d!1798176 (= res!2407144 ((_ is Cons!63267) (exprs!5581 (Context!10163 (Cons!63267 (h!69715 (exprs!5581 (h!69716 zl!343))) (t!376709 (exprs!5581 (h!69716 zl!343))))))))))

(assert (=> d!1798176 (= (derivationStepZipperUp!965 (Context!10163 (Cons!63267 (h!69715 (exprs!5581 (h!69716 zl!343))) (t!376709 (exprs!5581 (h!69716 zl!343))))) (h!69714 s!2326)) e!3506400)))

(declare-fun b!5699799 () Bool)

(assert (=> b!5699799 (= e!3506400 ((_ map or) call!433875 (derivationStepZipperUp!965 (Context!10163 (t!376709 (exprs!5581 (Context!10163 (Cons!63267 (h!69715 (exprs!5581 (h!69716 zl!343))) (t!376709 (exprs!5581 (h!69716 zl!343)))))))) (h!69714 s!2326))))))

(declare-fun b!5699800 () Bool)

(assert (=> b!5699800 (= e!3506401 (nullable!5729 (h!69715 (exprs!5581 (Context!10163 (Cons!63267 (h!69715 (exprs!5581 (h!69716 zl!343))) (t!376709 (exprs!5581 (h!69716 zl!343)))))))))))

(assert (= (and d!1798176 res!2407144) b!5699800))

(assert (= (and d!1798176 c!1003794) b!5699799))

(assert (= (and d!1798176 (not c!1003794)) b!5699796))

(assert (= (and b!5699796 c!1003795) b!5699798))

(assert (= (and b!5699796 (not c!1003795)) b!5699797))

(assert (= (or b!5699799 b!5699798) bm!433870))

(declare-fun m!6655212 () Bool)

(assert (=> bm!433870 m!6655212))

(declare-fun m!6655214 () Bool)

(assert (=> b!5699799 m!6655214))

(declare-fun m!6655216 () Bool)

(assert (=> b!5699800 m!6655216))

(assert (=> b!5698937 d!1798176))

(declare-fun b!5699801 () Bool)

(declare-fun e!3506403 () (InoxSet Context!10162))

(declare-fun e!3506405 () (InoxSet Context!10162))

(assert (=> b!5699801 (= e!3506403 e!3506405)))

(declare-fun c!1003797 () Bool)

(assert (=> b!5699801 (= c!1003797 ((_ is Cons!63267) (exprs!5581 (h!69716 zl!343))))))

(declare-fun b!5699802 () Bool)

(assert (=> b!5699802 (= e!3506405 ((as const (Array Context!10162 Bool)) false))))

(declare-fun bm!433871 () Bool)

(declare-fun call!433876 () (InoxSet Context!10162))

(assert (=> bm!433871 (= call!433876 (derivationStepZipperDown!1039 (h!69715 (exprs!5581 (h!69716 zl!343))) (Context!10163 (t!376709 (exprs!5581 (h!69716 zl!343)))) (h!69714 s!2326)))))

(declare-fun b!5699803 () Bool)

(assert (=> b!5699803 (= e!3506405 call!433876)))

(declare-fun d!1798178 () Bool)

(declare-fun c!1003796 () Bool)

(declare-fun e!3506404 () Bool)

(assert (=> d!1798178 (= c!1003796 e!3506404)))

(declare-fun res!2407145 () Bool)

(assert (=> d!1798178 (=> (not res!2407145) (not e!3506404))))

(assert (=> d!1798178 (= res!2407145 ((_ is Cons!63267) (exprs!5581 (h!69716 zl!343))))))

(assert (=> d!1798178 (= (derivationStepZipperUp!965 (h!69716 zl!343) (h!69714 s!2326)) e!3506403)))

(declare-fun b!5699804 () Bool)

(assert (=> b!5699804 (= e!3506403 ((_ map or) call!433876 (derivationStepZipperUp!965 (Context!10163 (t!376709 (exprs!5581 (h!69716 zl!343)))) (h!69714 s!2326))))))

(declare-fun b!5699805 () Bool)

(assert (=> b!5699805 (= e!3506404 (nullable!5729 (h!69715 (exprs!5581 (h!69716 zl!343)))))))

(assert (= (and d!1798178 res!2407145) b!5699805))

(assert (= (and d!1798178 c!1003796) b!5699804))

(assert (= (and d!1798178 (not c!1003796)) b!5699801))

(assert (= (and b!5699801 c!1003797) b!5699803))

(assert (= (and b!5699801 (not c!1003797)) b!5699802))

(assert (= (or b!5699804 b!5699803) bm!433871))

(declare-fun m!6655218 () Bool)

(assert (=> bm!433871 m!6655218))

(declare-fun m!6655220 () Bool)

(assert (=> b!5699804 m!6655220))

(assert (=> b!5699805 m!6654450))

(assert (=> b!5698937 d!1798178))

(declare-fun b!5699806 () Bool)

(declare-fun e!3506406 () (InoxSet Context!10162))

(declare-fun e!3506408 () (InoxSet Context!10162))

(assert (=> b!5699806 (= e!3506406 e!3506408)))

(declare-fun c!1003799 () Bool)

(assert (=> b!5699806 (= c!1003799 ((_ is Cons!63267) (exprs!5581 lt!2273595)))))

(declare-fun b!5699807 () Bool)

(assert (=> b!5699807 (= e!3506408 ((as const (Array Context!10162 Bool)) false))))

(declare-fun bm!433872 () Bool)

(declare-fun call!433877 () (InoxSet Context!10162))

(assert (=> bm!433872 (= call!433877 (derivationStepZipperDown!1039 (h!69715 (exprs!5581 lt!2273595)) (Context!10163 (t!376709 (exprs!5581 lt!2273595))) (h!69714 s!2326)))))

(declare-fun b!5699808 () Bool)

(assert (=> b!5699808 (= e!3506408 call!433877)))

(declare-fun d!1798180 () Bool)

(declare-fun c!1003798 () Bool)

(declare-fun e!3506407 () Bool)

(assert (=> d!1798180 (= c!1003798 e!3506407)))

(declare-fun res!2407146 () Bool)

(assert (=> d!1798180 (=> (not res!2407146) (not e!3506407))))

(assert (=> d!1798180 (= res!2407146 ((_ is Cons!63267) (exprs!5581 lt!2273595)))))

(assert (=> d!1798180 (= (derivationStepZipperUp!965 lt!2273595 (h!69714 s!2326)) e!3506406)))

(declare-fun b!5699809 () Bool)

(assert (=> b!5699809 (= e!3506406 ((_ map or) call!433877 (derivationStepZipperUp!965 (Context!10163 (t!376709 (exprs!5581 lt!2273595))) (h!69714 s!2326))))))

(declare-fun b!5699810 () Bool)

(assert (=> b!5699810 (= e!3506407 (nullable!5729 (h!69715 (exprs!5581 lt!2273595))))))

(assert (= (and d!1798180 res!2407146) b!5699810))

(assert (= (and d!1798180 c!1003798) b!5699809))

(assert (= (and d!1798180 (not c!1003798)) b!5699806))

(assert (= (and b!5699806 c!1003799) b!5699808))

(assert (= (and b!5699806 (not c!1003799)) b!5699807))

(assert (= (or b!5699809 b!5699808) bm!433872))

(declare-fun m!6655222 () Bool)

(assert (=> bm!433872 m!6655222))

(declare-fun m!6655224 () Bool)

(assert (=> b!5699809 m!6655224))

(declare-fun m!6655226 () Bool)

(assert (=> b!5699810 m!6655226))

(assert (=> b!5698937 d!1798180))

(declare-fun b!5699845 () Bool)

(declare-fun e!3506429 () Bool)

(declare-fun lt!2273719 () Int)

(declare-fun call!433898 () Int)

(assert (=> b!5699845 (= e!3506429 (> lt!2273719 call!433898))))

(declare-fun b!5699846 () Bool)

(declare-fun e!3506431 () Bool)

(declare-fun call!433896 () Int)

(assert (=> b!5699846 (= e!3506431 (> lt!2273719 call!433896))))

(declare-fun bm!433887 () Bool)

(declare-fun call!433893 () Int)

(declare-fun call!433894 () Int)

(assert (=> bm!433887 (= call!433893 call!433894)))

(declare-fun b!5699847 () Bool)

(assert (=> b!5699847 (= e!3506429 (= lt!2273719 1))))

(declare-fun b!5699849 () Bool)

(declare-fun e!3506434 () Int)

(assert (=> b!5699849 (= e!3506434 1)))

(declare-fun bm!433888 () Bool)

(declare-fun call!433892 () Int)

(assert (=> bm!433888 (= call!433898 call!433892)))

(declare-fun b!5699850 () Bool)

(declare-fun e!3506433 () Bool)

(declare-fun e!3506435 () Bool)

(assert (=> b!5699850 (= e!3506433 e!3506435)))

(declare-fun res!2407154 () Bool)

(assert (=> b!5699850 (= res!2407154 (> lt!2273719 call!433896))))

(assert (=> b!5699850 (=> (not res!2407154) (not e!3506435))))

(declare-fun c!1003820 () Bool)

(declare-fun bm!433889 () Bool)

(declare-fun c!1003817 () Bool)

(assert (=> bm!433889 (= call!433892 (regexDepth!228 (ite c!1003817 (regTwo!31907 r!7292) (ite c!1003820 (regOne!31906 r!7292) (reg!16026 r!7292)))))))

(declare-fun b!5699851 () Bool)

(declare-fun e!3506432 () Int)

(declare-fun e!3506437 () Int)

(assert (=> b!5699851 (= e!3506432 e!3506437)))

(declare-fun c!1003816 () Bool)

(assert (=> b!5699851 (= c!1003816 ((_ is Star!15697) r!7292))))

(declare-fun bm!433890 () Bool)

(assert (=> bm!433890 (= call!433896 (regexDepth!228 (ite c!1003817 (regOne!31907 r!7292) (regTwo!31906 r!7292))))))

(declare-fun b!5699852 () Bool)

(declare-fun e!3506438 () Int)

(assert (=> b!5699852 (= e!3506438 e!3506434)))

(declare-fun c!1003815 () Bool)

(assert (=> b!5699852 (= c!1003815 ((_ is Concat!24542) r!7292))))

(declare-fun b!5699853 () Bool)

(assert (=> b!5699853 (= e!3506432 1)))

(declare-fun b!5699854 () Bool)

(declare-fun c!1003819 () Bool)

(assert (=> b!5699854 (= c!1003819 ((_ is Star!15697) r!7292))))

(declare-fun e!3506436 () Bool)

(assert (=> b!5699854 (= e!3506436 e!3506429)))

(declare-fun b!5699848 () Bool)

(declare-fun e!3506430 () Bool)

(assert (=> b!5699848 (= e!3506430 e!3506433)))

(assert (=> b!5699848 (= c!1003817 ((_ is Union!15697) r!7292))))

(declare-fun d!1798182 () Bool)

(assert (=> d!1798182 e!3506430))

(declare-fun res!2407153 () Bool)

(assert (=> d!1798182 (=> (not res!2407153) (not e!3506430))))

(assert (=> d!1798182 (= res!2407153 (> lt!2273719 0))))

(assert (=> d!1798182 (= lt!2273719 e!3506432)))

(declare-fun c!1003814 () Bool)

(assert (=> d!1798182 (= c!1003814 ((_ is ElementMatch!15697) r!7292))))

(assert (=> d!1798182 (= (regexDepth!228 r!7292) lt!2273719)))

(declare-fun b!5699855 () Bool)

(declare-fun c!1003818 () Bool)

(assert (=> b!5699855 (= c!1003818 ((_ is Union!15697) r!7292))))

(assert (=> b!5699855 (= e!3506437 e!3506438)))

(declare-fun b!5699856 () Bool)

(assert (=> b!5699856 (= e!3506433 e!3506436)))

(assert (=> b!5699856 (= c!1003820 ((_ is Concat!24542) r!7292))))

(declare-fun call!433895 () Int)

(declare-fun call!433897 () Int)

(declare-fun bm!433891 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!433891 (= call!433897 (maxBigInt!0 (ite c!1003818 call!433893 call!433895) (ite c!1003818 call!433895 call!433893)))))

(declare-fun b!5699857 () Bool)

(assert (=> b!5699857 (= e!3506437 (+ 1 call!433894))))

(declare-fun b!5699858 () Bool)

(assert (=> b!5699858 (= e!3506438 (+ 1 call!433897))))

(declare-fun bm!433892 () Bool)

(assert (=> bm!433892 (= call!433894 (regexDepth!228 (ite c!1003816 (reg!16026 r!7292) (ite c!1003818 (regOne!31907 r!7292) (regTwo!31906 r!7292)))))))

(declare-fun b!5699859 () Bool)

(declare-fun res!2407155 () Bool)

(assert (=> b!5699859 (=> (not res!2407155) (not e!3506431))))

(assert (=> b!5699859 (= res!2407155 (> lt!2273719 call!433898))))

(assert (=> b!5699859 (= e!3506436 e!3506431)))

(declare-fun b!5699860 () Bool)

(assert (=> b!5699860 (= e!3506434 (+ 1 call!433897))))

(declare-fun bm!433893 () Bool)

(assert (=> bm!433893 (= call!433895 (regexDepth!228 (ite c!1003818 (regTwo!31907 r!7292) (regOne!31906 r!7292))))))

(declare-fun b!5699861 () Bool)

(assert (=> b!5699861 (= e!3506435 (> lt!2273719 call!433892))))

(assert (= (and d!1798182 c!1003814) b!5699853))

(assert (= (and d!1798182 (not c!1003814)) b!5699851))

(assert (= (and b!5699851 c!1003816) b!5699857))

(assert (= (and b!5699851 (not c!1003816)) b!5699855))

(assert (= (and b!5699855 c!1003818) b!5699858))

(assert (= (and b!5699855 (not c!1003818)) b!5699852))

(assert (= (and b!5699852 c!1003815) b!5699860))

(assert (= (and b!5699852 (not c!1003815)) b!5699849))

(assert (= (or b!5699858 b!5699860) bm!433893))

(assert (= (or b!5699858 b!5699860) bm!433887))

(assert (= (or b!5699858 b!5699860) bm!433891))

(assert (= (or b!5699857 bm!433887) bm!433892))

(assert (= (and d!1798182 res!2407153) b!5699848))

(assert (= (and b!5699848 c!1003817) b!5699850))

(assert (= (and b!5699848 (not c!1003817)) b!5699856))

(assert (= (and b!5699850 res!2407154) b!5699861))

(assert (= (and b!5699856 c!1003820) b!5699859))

(assert (= (and b!5699856 (not c!1003820)) b!5699854))

(assert (= (and b!5699859 res!2407155) b!5699846))

(assert (= (and b!5699854 c!1003819) b!5699845))

(assert (= (and b!5699854 (not c!1003819)) b!5699847))

(assert (= (or b!5699859 b!5699845) bm!433888))

(assert (= (or b!5699861 bm!433888) bm!433889))

(assert (= (or b!5699850 b!5699846) bm!433890))

(declare-fun m!6655228 () Bool)

(assert (=> bm!433891 m!6655228))

(declare-fun m!6655230 () Bool)

(assert (=> bm!433893 m!6655230))

(declare-fun m!6655232 () Bool)

(assert (=> bm!433892 m!6655232))

(declare-fun m!6655234 () Bool)

(assert (=> bm!433890 m!6655234))

(declare-fun m!6655236 () Bool)

(assert (=> bm!433889 m!6655236))

(assert (=> b!5698922 d!1798182))

(declare-fun b!5699862 () Bool)

(declare-fun e!3506439 () Bool)

(declare-fun lt!2273720 () Int)

(declare-fun call!433905 () Int)

(assert (=> b!5699862 (= e!3506439 (> lt!2273720 call!433905))))

(declare-fun b!5699863 () Bool)

(declare-fun e!3506441 () Bool)

(declare-fun call!433903 () Int)

(assert (=> b!5699863 (= e!3506441 (> lt!2273720 call!433903))))

(declare-fun bm!433894 () Bool)

(declare-fun call!433900 () Int)

(declare-fun call!433901 () Int)

(assert (=> bm!433894 (= call!433900 call!433901)))

(declare-fun b!5699864 () Bool)

(assert (=> b!5699864 (= e!3506439 (= lt!2273720 1))))

(declare-fun b!5699866 () Bool)

(declare-fun e!3506444 () Int)

(assert (=> b!5699866 (= e!3506444 1)))

(declare-fun bm!433895 () Bool)

(declare-fun call!433899 () Int)

(assert (=> bm!433895 (= call!433905 call!433899)))

(declare-fun b!5699867 () Bool)

(declare-fun e!3506443 () Bool)

(declare-fun e!3506445 () Bool)

(assert (=> b!5699867 (= e!3506443 e!3506445)))

(declare-fun res!2407157 () Bool)

(assert (=> b!5699867 (= res!2407157 (> lt!2273720 call!433903))))

(assert (=> b!5699867 (=> (not res!2407157) (not e!3506445))))

(declare-fun c!1003827 () Bool)

(declare-fun bm!433896 () Bool)

(declare-fun c!1003824 () Bool)

(assert (=> bm!433896 (= call!433899 (regexDepth!228 (ite c!1003824 (regTwo!31907 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))) (ite c!1003827 (regOne!31906 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))) (reg!16026 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343)))))))))))

(declare-fun b!5699868 () Bool)

(declare-fun e!3506442 () Int)

(declare-fun e!3506447 () Int)

(assert (=> b!5699868 (= e!3506442 e!3506447)))

(declare-fun c!1003823 () Bool)

(assert (=> b!5699868 (= c!1003823 ((_ is Star!15697) (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun bm!433897 () Bool)

(assert (=> bm!433897 (= call!433903 (regexDepth!228 (ite c!1003824 (regOne!31907 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))) (regTwo!31906 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))))

(declare-fun b!5699869 () Bool)

(declare-fun e!3506448 () Int)

(assert (=> b!5699869 (= e!3506448 e!3506444)))

(declare-fun c!1003822 () Bool)

(assert (=> b!5699869 (= c!1003822 ((_ is Concat!24542) (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun b!5699870 () Bool)

(assert (=> b!5699870 (= e!3506442 1)))

(declare-fun b!5699871 () Bool)

(declare-fun c!1003826 () Bool)

(assert (=> b!5699871 (= c!1003826 ((_ is Star!15697) (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun e!3506446 () Bool)

(assert (=> b!5699871 (= e!3506446 e!3506439)))

(declare-fun b!5699865 () Bool)

(declare-fun e!3506440 () Bool)

(assert (=> b!5699865 (= e!3506440 e!3506443)))

(assert (=> b!5699865 (= c!1003824 ((_ is Union!15697) (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun d!1798184 () Bool)

(assert (=> d!1798184 e!3506440))

(declare-fun res!2407156 () Bool)

(assert (=> d!1798184 (=> (not res!2407156) (not e!3506440))))

(assert (=> d!1798184 (= res!2407156 (> lt!2273720 0))))

(assert (=> d!1798184 (= lt!2273720 e!3506442)))

(declare-fun c!1003821 () Bool)

(assert (=> d!1798184 (= c!1003821 ((_ is ElementMatch!15697) (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(assert (=> d!1798184 (= (regexDepth!228 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))) lt!2273720)))

(declare-fun b!5699872 () Bool)

(declare-fun c!1003825 () Bool)

(assert (=> b!5699872 (= c!1003825 ((_ is Union!15697) (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(assert (=> b!5699872 (= e!3506447 e!3506448)))

(declare-fun b!5699873 () Bool)

(assert (=> b!5699873 (= e!3506443 e!3506446)))

(assert (=> b!5699873 (= c!1003827 ((_ is Concat!24542) (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun bm!433898 () Bool)

(declare-fun call!433902 () Int)

(declare-fun call!433904 () Int)

(assert (=> bm!433898 (= call!433904 (maxBigInt!0 (ite c!1003825 call!433900 call!433902) (ite c!1003825 call!433902 call!433900)))))

(declare-fun b!5699874 () Bool)

(assert (=> b!5699874 (= e!3506447 (+ 1 call!433901))))

(declare-fun b!5699875 () Bool)

(assert (=> b!5699875 (= e!3506448 (+ 1 call!433904))))

(declare-fun bm!433899 () Bool)

(assert (=> bm!433899 (= call!433901 (regexDepth!228 (ite c!1003823 (reg!16026 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))) (ite c!1003825 (regOne!31907 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))) (regTwo!31906 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343)))))))))))

(declare-fun b!5699876 () Bool)

(declare-fun res!2407158 () Bool)

(assert (=> b!5699876 (=> (not res!2407158) (not e!3506441))))

(assert (=> b!5699876 (= res!2407158 (> lt!2273720 call!433905))))

(assert (=> b!5699876 (= e!3506446 e!3506441)))

(declare-fun b!5699877 () Bool)

(assert (=> b!5699877 (= e!3506444 (+ 1 call!433904))))

(declare-fun bm!433900 () Bool)

(assert (=> bm!433900 (= call!433902 (regexDepth!228 (ite c!1003825 (regTwo!31907 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))) (regOne!31906 (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343))))))))))

(declare-fun b!5699878 () Bool)

(assert (=> b!5699878 (= e!3506445 (> lt!2273720 call!433899))))

(assert (= (and d!1798184 c!1003821) b!5699870))

(assert (= (and d!1798184 (not c!1003821)) b!5699868))

(assert (= (and b!5699868 c!1003823) b!5699874))

(assert (= (and b!5699868 (not c!1003823)) b!5699872))

(assert (= (and b!5699872 c!1003825) b!5699875))

(assert (= (and b!5699872 (not c!1003825)) b!5699869))

(assert (= (and b!5699869 c!1003822) b!5699877))

(assert (= (and b!5699869 (not c!1003822)) b!5699866))

(assert (= (or b!5699875 b!5699877) bm!433900))

(assert (= (or b!5699875 b!5699877) bm!433894))

(assert (= (or b!5699875 b!5699877) bm!433898))

(assert (= (or b!5699874 bm!433894) bm!433899))

(assert (= (and d!1798184 res!2407156) b!5699865))

(assert (= (and b!5699865 c!1003824) b!5699867))

(assert (= (and b!5699865 (not c!1003824)) b!5699873))

(assert (= (and b!5699867 res!2407157) b!5699878))

(assert (= (and b!5699873 c!1003827) b!5699876))

(assert (= (and b!5699873 (not c!1003827)) b!5699871))

(assert (= (and b!5699876 res!2407158) b!5699863))

(assert (= (and b!5699871 c!1003826) b!5699862))

(assert (= (and b!5699871 (not c!1003826)) b!5699864))

(assert (= (or b!5699876 b!5699862) bm!433895))

(assert (= (or b!5699878 bm!433895) bm!433896))

(assert (= (or b!5699867 b!5699863) bm!433897))

(declare-fun m!6655238 () Bool)

(assert (=> bm!433898 m!6655238))

(declare-fun m!6655240 () Bool)

(assert (=> bm!433900 m!6655240))

(declare-fun m!6655242 () Bool)

(assert (=> bm!433899 m!6655242))

(declare-fun m!6655244 () Bool)

(assert (=> bm!433897 m!6655244))

(declare-fun m!6655246 () Bool)

(assert (=> bm!433896 m!6655246))

(assert (=> b!5698922 d!1798184))

(declare-fun bs!1328307 () Bool)

(declare-fun d!1798186 () Bool)

(assert (= bs!1328307 (and d!1798186 d!1797998)))

(declare-fun lambda!307430 () Int)

(assert (=> bs!1328307 (= lambda!307430 lambda!307386)))

(declare-fun bs!1328308 () Bool)

(assert (= bs!1328308 (and d!1798186 d!1798042)))

(assert (=> bs!1328308 (= lambda!307430 lambda!307409)))

(declare-fun bs!1328309 () Bool)

(assert (= bs!1328309 (and d!1798186 d!1798142)))

(assert (=> bs!1328309 (= lambda!307430 lambda!307426)))

(declare-fun b!5699879 () Bool)

(declare-fun e!3506454 () Bool)

(declare-fun e!3506453 () Bool)

(assert (=> b!5699879 (= e!3506454 e!3506453)))

(declare-fun c!1003829 () Bool)

(assert (=> b!5699879 (= c!1003829 (isEmpty!35128 (t!376709 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun b!5699880 () Bool)

(declare-fun lt!2273721 () Regex!15697)

(assert (=> b!5699880 (= e!3506453 (isEmptyExpr!1211 lt!2273721))))

(assert (=> d!1798186 e!3506454))

(declare-fun res!2407159 () Bool)

(assert (=> d!1798186 (=> (not res!2407159) (not e!3506454))))

(assert (=> d!1798186 (= res!2407159 (validRegex!7433 lt!2273721))))

(declare-fun e!3506451 () Regex!15697)

(assert (=> d!1798186 (= lt!2273721 e!3506451)))

(declare-fun c!1003831 () Bool)

(declare-fun e!3506452 () Bool)

(assert (=> d!1798186 (= c!1003831 e!3506452)))

(declare-fun res!2407160 () Bool)

(assert (=> d!1798186 (=> (not res!2407160) (not e!3506452))))

(assert (=> d!1798186 (= res!2407160 ((_ is Cons!63267) (t!376709 (exprs!5581 (h!69716 zl!343)))))))

(assert (=> d!1798186 (forall!14836 (t!376709 (exprs!5581 (h!69716 zl!343))) lambda!307430)))

(assert (=> d!1798186 (= (generalisedConcat!1312 (t!376709 (exprs!5581 (h!69716 zl!343)))) lt!2273721)))

(declare-fun b!5699881 () Bool)

(declare-fun e!3506449 () Regex!15697)

(assert (=> b!5699881 (= e!3506449 EmptyExpr!15697)))

(declare-fun b!5699882 () Bool)

(declare-fun e!3506450 () Bool)

(assert (=> b!5699882 (= e!3506450 (= lt!2273721 (head!12087 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun b!5699883 () Bool)

(assert (=> b!5699883 (= e!3506453 e!3506450)))

(declare-fun c!1003830 () Bool)

(assert (=> b!5699883 (= c!1003830 (isEmpty!35128 (tail!11182 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun b!5699884 () Bool)

(assert (=> b!5699884 (= e!3506451 e!3506449)))

(declare-fun c!1003828 () Bool)

(assert (=> b!5699884 (= c!1003828 ((_ is Cons!63267) (t!376709 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun b!5699885 () Bool)

(assert (=> b!5699885 (= e!3506451 (h!69715 (t!376709 (exprs!5581 (h!69716 zl!343)))))))

(declare-fun b!5699886 () Bool)

(assert (=> b!5699886 (= e!3506450 (isConcat!734 lt!2273721))))

(declare-fun b!5699887 () Bool)

(assert (=> b!5699887 (= e!3506452 (isEmpty!35128 (t!376709 (t!376709 (exprs!5581 (h!69716 zl!343))))))))

(declare-fun b!5699888 () Bool)

(assert (=> b!5699888 (= e!3506449 (Concat!24542 (h!69715 (t!376709 (exprs!5581 (h!69716 zl!343)))) (generalisedConcat!1312 (t!376709 (t!376709 (exprs!5581 (h!69716 zl!343)))))))))

(assert (= (and d!1798186 res!2407160) b!5699887))

(assert (= (and d!1798186 c!1003831) b!5699885))

(assert (= (and d!1798186 (not c!1003831)) b!5699884))

(assert (= (and b!5699884 c!1003828) b!5699888))

(assert (= (and b!5699884 (not c!1003828)) b!5699881))

(assert (= (and d!1798186 res!2407159) b!5699879))

(assert (= (and b!5699879 c!1003829) b!5699880))

(assert (= (and b!5699879 (not c!1003829)) b!5699883))

(assert (= (and b!5699883 c!1003830) b!5699882))

(assert (= (and b!5699883 (not c!1003830)) b!5699886))

(declare-fun m!6655248 () Bool)

(assert (=> b!5699888 m!6655248))

(declare-fun m!6655250 () Bool)

(assert (=> b!5699886 m!6655250))

(declare-fun m!6655252 () Bool)

(assert (=> d!1798186 m!6655252))

(declare-fun m!6655254 () Bool)

(assert (=> d!1798186 m!6655254))

(declare-fun m!6655256 () Bool)

(assert (=> b!5699882 m!6655256))

(declare-fun m!6655258 () Bool)

(assert (=> b!5699887 m!6655258))

(assert (=> b!5699879 m!6654422))

(declare-fun m!6655260 () Bool)

(assert (=> b!5699880 m!6655260))

(declare-fun m!6655262 () Bool)

(assert (=> b!5699883 m!6655262))

(assert (=> b!5699883 m!6655262))

(declare-fun m!6655264 () Bool)

(assert (=> b!5699883 m!6655264))

(assert (=> b!5698922 d!1798186))

(declare-fun d!1798188 () Bool)

(declare-fun lt!2273722 () Regex!15697)

(assert (=> d!1798188 (validRegex!7433 lt!2273722)))

(assert (=> d!1798188 (= lt!2273722 (generalisedUnion!1560 (unfocusZipperList!1125 (Cons!63268 lt!2273593 Nil!63268))))))

(assert (=> d!1798188 (= (unfocusZipper!1439 (Cons!63268 lt!2273593 Nil!63268)) lt!2273722)))

(declare-fun bs!1328310 () Bool)

(assert (= bs!1328310 d!1798188))

(declare-fun m!6655266 () Bool)

(assert (=> bs!1328310 m!6655266))

(declare-fun m!6655268 () Bool)

(assert (=> bs!1328310 m!6655268))

(assert (=> bs!1328310 m!6655268))

(declare-fun m!6655270 () Bool)

(assert (=> bs!1328310 m!6655270))

(assert (=> b!5698944 d!1798188))

(declare-fun bs!1328311 () Bool)

(declare-fun d!1798190 () Bool)

(assert (= bs!1328311 (and d!1798190 b!5698937)))

(declare-fun lambda!307431 () Int)

(assert (=> bs!1328311 (= lambda!307431 lambda!307361)))

(declare-fun bs!1328312 () Bool)

(assert (= bs!1328312 (and d!1798190 d!1798162)))

(assert (=> bs!1328312 (= lambda!307431 lambda!307429)))

(assert (=> d!1798190 true))

(assert (=> d!1798190 (= (derivationStepZipper!1780 lt!2273574 (h!69714 s!2326)) (flatMap!1310 lt!2273574 lambda!307431))))

(declare-fun bs!1328313 () Bool)

(assert (= bs!1328313 d!1798190))

(declare-fun m!6655272 () Bool)

(assert (=> bs!1328313 m!6655272))

(assert (=> b!5698923 d!1798190))

(declare-fun d!1798192 () Bool)

(assert (=> d!1798192 (= (flatMap!1310 lt!2273574 lambda!307361) (choose!43116 lt!2273574 lambda!307361))))

(declare-fun bs!1328314 () Bool)

(assert (= bs!1328314 d!1798192))

(declare-fun m!6655274 () Bool)

(assert (=> bs!1328314 m!6655274))

(assert (=> b!5698923 d!1798192))

(assert (=> b!5698923 d!1798180))

(declare-fun d!1798194 () Bool)

(assert (=> d!1798194 (= (flatMap!1310 lt!2273574 lambda!307361) (dynLambda!24752 lambda!307361 lt!2273595))))

(declare-fun lt!2273723 () Unit!156320)

(assert (=> d!1798194 (= lt!2273723 (choose!43117 lt!2273574 lt!2273595 lambda!307361))))

(assert (=> d!1798194 (= lt!2273574 (store ((as const (Array Context!10162 Bool)) false) lt!2273595 true))))

(assert (=> d!1798194 (= (lemmaFlatMapOnSingletonSet!842 lt!2273574 lt!2273595 lambda!307361) lt!2273723)))

(declare-fun b_lambda!215415 () Bool)

(assert (=> (not b_lambda!215415) (not d!1798194)))

(declare-fun bs!1328315 () Bool)

(assert (= bs!1328315 d!1798194))

(assert (=> bs!1328315 m!6654536))

(declare-fun m!6655276 () Bool)

(assert (=> bs!1328315 m!6655276))

(declare-fun m!6655278 () Bool)

(assert (=> bs!1328315 m!6655278))

(assert (=> bs!1328315 m!6654538))

(assert (=> b!5698923 d!1798194))

(declare-fun b!5699889 () Bool)

(declare-fun e!3506460 () Bool)

(assert (=> b!5699889 (= e!3506460 (= (head!12086 s!2326) (c!1003547 lt!2273581)))))

(declare-fun b!5699890 () Bool)

(declare-fun res!2407167 () Bool)

(declare-fun e!3506461 () Bool)

(assert (=> b!5699890 (=> res!2407167 e!3506461)))

(assert (=> b!5699890 (= res!2407167 e!3506460)))

(declare-fun res!2407161 () Bool)

(assert (=> b!5699890 (=> (not res!2407161) (not e!3506460))))

(declare-fun lt!2273724 () Bool)

(assert (=> b!5699890 (= res!2407161 lt!2273724)))

(declare-fun b!5699891 () Bool)

(declare-fun res!2407164 () Bool)

(declare-fun e!3506456 () Bool)

(assert (=> b!5699891 (=> res!2407164 e!3506456)))

(assert (=> b!5699891 (= res!2407164 (not (isEmpty!35130 (tail!11181 s!2326))))))

(declare-fun d!1798196 () Bool)

(declare-fun e!3506458 () Bool)

(assert (=> d!1798196 e!3506458))

(declare-fun c!1003833 () Bool)

(assert (=> d!1798196 (= c!1003833 ((_ is EmptyExpr!15697) lt!2273581))))

(declare-fun e!3506459 () Bool)

(assert (=> d!1798196 (= lt!2273724 e!3506459)))

(declare-fun c!1003834 () Bool)

(assert (=> d!1798196 (= c!1003834 (isEmpty!35130 s!2326))))

(assert (=> d!1798196 (validRegex!7433 lt!2273581)))

(assert (=> d!1798196 (= (matchR!7882 lt!2273581 s!2326) lt!2273724)))

(declare-fun b!5699892 () Bool)

(declare-fun e!3506457 () Bool)

(assert (=> b!5699892 (= e!3506457 (not lt!2273724))))

(declare-fun b!5699893 () Bool)

(declare-fun res!2407165 () Bool)

(assert (=> b!5699893 (=> res!2407165 e!3506461)))

(assert (=> b!5699893 (= res!2407165 (not ((_ is ElementMatch!15697) lt!2273581)))))

(assert (=> b!5699893 (= e!3506457 e!3506461)))

(declare-fun b!5699894 () Bool)

(declare-fun call!433906 () Bool)

(assert (=> b!5699894 (= e!3506458 (= lt!2273724 call!433906))))

(declare-fun b!5699895 () Bool)

(declare-fun e!3506455 () Bool)

(assert (=> b!5699895 (= e!3506455 e!3506456)))

(declare-fun res!2407168 () Bool)

(assert (=> b!5699895 (=> res!2407168 e!3506456)))

(assert (=> b!5699895 (= res!2407168 call!433906)))

(declare-fun b!5699896 () Bool)

(assert (=> b!5699896 (= e!3506459 (matchR!7882 (derivativeStep!4506 lt!2273581 (head!12086 s!2326)) (tail!11181 s!2326)))))

(declare-fun b!5699897 () Bool)

(assert (=> b!5699897 (= e!3506458 e!3506457)))

(declare-fun c!1003832 () Bool)

(assert (=> b!5699897 (= c!1003832 ((_ is EmptyLang!15697) lt!2273581))))

(declare-fun b!5699898 () Bool)

(assert (=> b!5699898 (= e!3506459 (nullable!5729 lt!2273581))))

(declare-fun b!5699899 () Bool)

(assert (=> b!5699899 (= e!3506461 e!3506455)))

(declare-fun res!2407166 () Bool)

(assert (=> b!5699899 (=> (not res!2407166) (not e!3506455))))

(assert (=> b!5699899 (= res!2407166 (not lt!2273724))))

(declare-fun bm!433901 () Bool)

(assert (=> bm!433901 (= call!433906 (isEmpty!35130 s!2326))))

(declare-fun b!5699900 () Bool)

(declare-fun res!2407162 () Bool)

(assert (=> b!5699900 (=> (not res!2407162) (not e!3506460))))

(assert (=> b!5699900 (= res!2407162 (isEmpty!35130 (tail!11181 s!2326)))))

(declare-fun b!5699901 () Bool)

(assert (=> b!5699901 (= e!3506456 (not (= (head!12086 s!2326) (c!1003547 lt!2273581))))))

(declare-fun b!5699902 () Bool)

(declare-fun res!2407163 () Bool)

(assert (=> b!5699902 (=> (not res!2407163) (not e!3506460))))

(assert (=> b!5699902 (= res!2407163 (not call!433906))))

(assert (= (and d!1798196 c!1003834) b!5699898))

(assert (= (and d!1798196 (not c!1003834)) b!5699896))

(assert (= (and d!1798196 c!1003833) b!5699894))

(assert (= (and d!1798196 (not c!1003833)) b!5699897))

(assert (= (and b!5699897 c!1003832) b!5699892))

(assert (= (and b!5699897 (not c!1003832)) b!5699893))

(assert (= (and b!5699893 (not res!2407165)) b!5699890))

(assert (= (and b!5699890 res!2407161) b!5699902))

(assert (= (and b!5699902 res!2407163) b!5699900))

(assert (= (and b!5699900 res!2407162) b!5699889))

(assert (= (and b!5699890 (not res!2407167)) b!5699899))

(assert (= (and b!5699899 res!2407166) b!5699895))

(assert (= (and b!5699895 (not res!2407168)) b!5699891))

(assert (= (and b!5699891 (not res!2407164)) b!5699901))

(assert (= (or b!5699894 b!5699895 b!5699902) bm!433901))

(assert (=> b!5699889 m!6655024))

(assert (=> b!5699896 m!6655024))

(assert (=> b!5699896 m!6655024))

(declare-fun m!6655280 () Bool)

(assert (=> b!5699896 m!6655280))

(assert (=> b!5699896 m!6655028))

(assert (=> b!5699896 m!6655280))

(assert (=> b!5699896 m!6655028))

(declare-fun m!6655282 () Bool)

(assert (=> b!5699896 m!6655282))

(assert (=> d!1798196 m!6654972))

(declare-fun m!6655284 () Bool)

(assert (=> d!1798196 m!6655284))

(assert (=> b!5699900 m!6655028))

(assert (=> b!5699900 m!6655028))

(assert (=> b!5699900 m!6655032))

(assert (=> b!5699891 m!6655028))

(assert (=> b!5699891 m!6655028))

(assert (=> b!5699891 m!6655032))

(assert (=> bm!433901 m!6654972))

(declare-fun m!6655286 () Bool)

(assert (=> b!5699898 m!6655286))

(assert (=> b!5699901 m!6655024))

(assert (=> b!5698940 d!1798196))

(declare-fun bs!1328316 () Bool)

(declare-fun b!5699910 () Bool)

(assert (= bs!1328316 (and b!5699910 b!5698914)))

(declare-fun lambda!307432 () Int)

(assert (=> bs!1328316 (not (= lambda!307432 lambda!307362))))

(declare-fun bs!1328317 () Bool)

(assert (= bs!1328317 (and b!5699910 d!1798032)))

(assert (=> bs!1328317 (not (= lambda!307432 lambda!307408))))

(declare-fun bs!1328318 () Bool)

(assert (= bs!1328318 (and b!5699910 b!5699481)))

(assert (=> bs!1328318 (not (= lambda!307432 lambda!307419))))

(declare-fun bs!1328319 () Bool)

(assert (= bs!1328319 (and b!5699910 b!5699487)))

(assert (=> bs!1328319 (= (and (= (reg!16026 lt!2273581) (reg!16026 r!7292)) (= lt!2273581 r!7292)) (= lambda!307432 lambda!307417))))

(declare-fun bs!1328320 () Bool)

(assert (= bs!1328320 (and b!5699910 b!5698946)))

(assert (=> bs!1328320 (not (= lambda!307432 lambda!307359))))

(declare-fun bs!1328321 () Bool)

(assert (= bs!1328321 (and b!5699910 d!1798130)))

(assert (=> bs!1328321 (not (= lambda!307432 lambda!307423))))

(assert (=> bs!1328316 (not (= lambda!307432 lambda!307363))))

(assert (=> bs!1328320 (not (= lambda!307432 lambda!307360))))

(assert (=> bs!1328321 (not (= lambda!307432 lambda!307422))))

(declare-fun bs!1328322 () Bool)

(assert (= bs!1328322 (and b!5699910 d!1798028)))

(assert (=> bs!1328322 (not (= lambda!307432 lambda!307394))))

(assert (=> bs!1328317 (not (= lambda!307432 lambda!307406))))

(declare-fun bs!1328323 () Bool)

(assert (= bs!1328323 (and b!5699910 d!1798128)))

(assert (=> bs!1328323 (not (= lambda!307432 lambda!307421))))

(assert (=> b!5699910 true))

(assert (=> b!5699910 true))

(declare-fun bs!1328324 () Bool)

(declare-fun b!5699904 () Bool)

(assert (= bs!1328324 (and b!5699904 b!5698914)))

(declare-fun lambda!307433 () Int)

(assert (=> bs!1328324 (not (= lambda!307433 lambda!307362))))

(declare-fun bs!1328325 () Bool)

(assert (= bs!1328325 (and b!5699904 d!1798032)))

(assert (=> bs!1328325 (= (and (= (regOne!31906 lt!2273581) (regOne!31906 r!7292)) (= (regTwo!31906 lt!2273581) (regTwo!31906 r!7292))) (= lambda!307433 lambda!307408))))

(declare-fun bs!1328326 () Bool)

(assert (= bs!1328326 (and b!5699904 b!5699481)))

(assert (=> bs!1328326 (= (and (= (regOne!31906 lt!2273581) (regOne!31906 r!7292)) (= (regTwo!31906 lt!2273581) (regTwo!31906 r!7292))) (= lambda!307433 lambda!307419))))

(declare-fun bs!1328327 () Bool)

(assert (= bs!1328327 (and b!5699904 b!5699487)))

(assert (=> bs!1328327 (not (= lambda!307433 lambda!307417))))

(declare-fun bs!1328328 () Bool)

(assert (= bs!1328328 (and b!5699904 b!5699910)))

(assert (=> bs!1328328 (not (= lambda!307433 lambda!307432))))

(declare-fun bs!1328329 () Bool)

(assert (= bs!1328329 (and b!5699904 b!5698946)))

(assert (=> bs!1328329 (not (= lambda!307433 lambda!307359))))

(declare-fun bs!1328330 () Bool)

(assert (= bs!1328330 (and b!5699904 d!1798130)))

(assert (=> bs!1328330 (= (and (= (regOne!31906 lt!2273581) lt!2273584) (= (regTwo!31906 lt!2273581) (regTwo!31906 r!7292))) (= lambda!307433 lambda!307423))))

(assert (=> bs!1328324 (= (and (= (regOne!31906 lt!2273581) lt!2273584) (= (regTwo!31906 lt!2273581) (regTwo!31906 r!7292))) (= lambda!307433 lambda!307363))))

(assert (=> bs!1328329 (= (and (= (regOne!31906 lt!2273581) (regOne!31906 r!7292)) (= (regTwo!31906 lt!2273581) (regTwo!31906 r!7292))) (= lambda!307433 lambda!307360))))

(assert (=> bs!1328330 (not (= lambda!307433 lambda!307422))))

(declare-fun bs!1328331 () Bool)

(assert (= bs!1328331 (and b!5699904 d!1798028)))

(assert (=> bs!1328331 (not (= lambda!307433 lambda!307394))))

(assert (=> bs!1328325 (not (= lambda!307433 lambda!307406))))

(declare-fun bs!1328332 () Bool)

(assert (= bs!1328332 (and b!5699904 d!1798128)))

(assert (=> bs!1328332 (not (= lambda!307433 lambda!307421))))

(assert (=> b!5699904 true))

(assert (=> b!5699904 true))

(declare-fun b!5699903 () Bool)

(declare-fun e!3506462 () Bool)

(declare-fun e!3506468 () Bool)

(assert (=> b!5699903 (= e!3506462 e!3506468)))

(declare-fun res!2407169 () Bool)

(assert (=> b!5699903 (= res!2407169 (not ((_ is EmptyLang!15697) lt!2273581)))))

(assert (=> b!5699903 (=> (not res!2407169) (not e!3506468))))

(declare-fun e!3506465 () Bool)

(declare-fun call!433908 () Bool)

(assert (=> b!5699904 (= e!3506465 call!433908)))

(declare-fun b!5699905 () Bool)

(declare-fun e!3506464 () Bool)

(assert (=> b!5699905 (= e!3506464 (matchRSpec!2800 (regTwo!31907 lt!2273581) s!2326))))

(declare-fun d!1798198 () Bool)

(declare-fun c!1003836 () Bool)

(assert (=> d!1798198 (= c!1003836 ((_ is EmptyExpr!15697) lt!2273581))))

(assert (=> d!1798198 (= (matchRSpec!2800 lt!2273581 s!2326) e!3506462)))

(declare-fun b!5699906 () Bool)

(declare-fun e!3506466 () Bool)

(assert (=> b!5699906 (= e!3506466 e!3506465)))

(declare-fun c!1003837 () Bool)

(assert (=> b!5699906 (= c!1003837 ((_ is Star!15697) lt!2273581))))

(declare-fun b!5699907 () Bool)

(assert (=> b!5699907 (= e!3506466 e!3506464)))

(declare-fun res!2407170 () Bool)

(assert (=> b!5699907 (= res!2407170 (matchRSpec!2800 (regOne!31907 lt!2273581) s!2326))))

(assert (=> b!5699907 (=> res!2407170 e!3506464)))

(declare-fun b!5699908 () Bool)

(declare-fun e!3506463 () Bool)

(assert (=> b!5699908 (= e!3506463 (= s!2326 (Cons!63266 (c!1003547 lt!2273581) Nil!63266)))))

(declare-fun bm!433902 () Bool)

(assert (=> bm!433902 (= call!433908 (Exists!2797 (ite c!1003837 lambda!307432 lambda!307433)))))

(declare-fun bm!433903 () Bool)

(declare-fun call!433907 () Bool)

(assert (=> bm!433903 (= call!433907 (isEmpty!35130 s!2326))))

(declare-fun b!5699909 () Bool)

(declare-fun c!1003835 () Bool)

(assert (=> b!5699909 (= c!1003835 ((_ is Union!15697) lt!2273581))))

(assert (=> b!5699909 (= e!3506463 e!3506466)))

(declare-fun e!3506467 () Bool)

(assert (=> b!5699910 (= e!3506467 call!433908)))

(declare-fun b!5699911 () Bool)

(declare-fun res!2407171 () Bool)

(assert (=> b!5699911 (=> res!2407171 e!3506467)))

(assert (=> b!5699911 (= res!2407171 call!433907)))

(assert (=> b!5699911 (= e!3506465 e!3506467)))

(declare-fun b!5699912 () Bool)

(declare-fun c!1003838 () Bool)

(assert (=> b!5699912 (= c!1003838 ((_ is ElementMatch!15697) lt!2273581))))

(assert (=> b!5699912 (= e!3506468 e!3506463)))

(declare-fun b!5699913 () Bool)

(assert (=> b!5699913 (= e!3506462 call!433907)))

(assert (= (and d!1798198 c!1003836) b!5699913))

(assert (= (and d!1798198 (not c!1003836)) b!5699903))

(assert (= (and b!5699903 res!2407169) b!5699912))

(assert (= (and b!5699912 c!1003838) b!5699908))

(assert (= (and b!5699912 (not c!1003838)) b!5699909))

(assert (= (and b!5699909 c!1003835) b!5699907))

(assert (= (and b!5699909 (not c!1003835)) b!5699906))

(assert (= (and b!5699907 (not res!2407170)) b!5699905))

(assert (= (and b!5699906 c!1003837) b!5699911))

(assert (= (and b!5699906 (not c!1003837)) b!5699904))

(assert (= (and b!5699911 (not res!2407171)) b!5699910))

(assert (= (or b!5699910 b!5699904) bm!433902))

(assert (= (or b!5699913 b!5699911) bm!433903))

(declare-fun m!6655288 () Bool)

(assert (=> b!5699905 m!6655288))

(declare-fun m!6655290 () Bool)

(assert (=> b!5699907 m!6655290))

(declare-fun m!6655292 () Bool)

(assert (=> bm!433902 m!6655292))

(assert (=> bm!433903 m!6654972))

(assert (=> b!5698940 d!1798198))

(declare-fun d!1798200 () Bool)

(assert (=> d!1798200 (= (matchR!7882 lt!2273581 s!2326) (matchRSpec!2800 lt!2273581 s!2326))))

(declare-fun lt!2273725 () Unit!156320)

(assert (=> d!1798200 (= lt!2273725 (choose!43114 lt!2273581 s!2326))))

(assert (=> d!1798200 (validRegex!7433 lt!2273581)))

(assert (=> d!1798200 (= (mainMatchTheorem!2800 lt!2273581 s!2326) lt!2273725)))

(declare-fun bs!1328333 () Bool)

(assert (= bs!1328333 d!1798200))

(assert (=> bs!1328333 m!6654456))

(assert (=> bs!1328333 m!6654458))

(declare-fun m!6655294 () Bool)

(assert (=> bs!1328333 m!6655294))

(assert (=> bs!1328333 m!6655284))

(assert (=> b!5698940 d!1798200))

(declare-fun d!1798202 () Bool)

(assert (=> d!1798202 (= (isEmpty!35130 (_1!36097 lt!2273601)) ((_ is Nil!63266) (_1!36097 lt!2273601)))))

(assert (=> b!5698941 d!1798202))

(declare-fun bs!1328334 () Bool)

(declare-fun d!1798204 () Bool)

(assert (= bs!1328334 (and d!1798204 d!1797998)))

(declare-fun lambda!307436 () Int)

(assert (=> bs!1328334 (= lambda!307436 lambda!307386)))

(declare-fun bs!1328335 () Bool)

(assert (= bs!1328335 (and d!1798204 d!1798042)))

(assert (=> bs!1328335 (= lambda!307436 lambda!307409)))

(declare-fun bs!1328336 () Bool)

(assert (= bs!1328336 (and d!1798204 d!1798142)))

(assert (=> bs!1328336 (= lambda!307436 lambda!307426)))

(declare-fun bs!1328337 () Bool)

(assert (= bs!1328337 (and d!1798204 d!1798186)))

(assert (=> bs!1328337 (= lambda!307436 lambda!307430)))

(declare-fun b!5699934 () Bool)

(declare-fun e!3506485 () Regex!15697)

(assert (=> b!5699934 (= e!3506485 EmptyLang!15697)))

(declare-fun b!5699935 () Bool)

(declare-fun e!3506483 () Bool)

(declare-fun e!3506486 () Bool)

(assert (=> b!5699935 (= e!3506483 e!3506486)))

(declare-fun c!1003847 () Bool)

(assert (=> b!5699935 (= c!1003847 (isEmpty!35128 (tail!11182 (unfocusZipperList!1125 zl!343))))))

(declare-fun b!5699936 () Bool)

(declare-fun e!3506484 () Regex!15697)

(assert (=> b!5699936 (= e!3506484 (h!69715 (unfocusZipperList!1125 zl!343)))))

(declare-fun e!3506482 () Bool)

(assert (=> d!1798204 e!3506482))

(declare-fun res!2407176 () Bool)

(assert (=> d!1798204 (=> (not res!2407176) (not e!3506482))))

(declare-fun lt!2273728 () Regex!15697)

(assert (=> d!1798204 (= res!2407176 (validRegex!7433 lt!2273728))))

(assert (=> d!1798204 (= lt!2273728 e!3506484)))

(declare-fun c!1003849 () Bool)

(declare-fun e!3506481 () Bool)

(assert (=> d!1798204 (= c!1003849 e!3506481)))

(declare-fun res!2407177 () Bool)

(assert (=> d!1798204 (=> (not res!2407177) (not e!3506481))))

(assert (=> d!1798204 (= res!2407177 ((_ is Cons!63267) (unfocusZipperList!1125 zl!343)))))

(assert (=> d!1798204 (forall!14836 (unfocusZipperList!1125 zl!343) lambda!307436)))

(assert (=> d!1798204 (= (generalisedUnion!1560 (unfocusZipperList!1125 zl!343)) lt!2273728)))

(declare-fun b!5699937 () Bool)

(assert (=> b!5699937 (= e!3506484 e!3506485)))

(declare-fun c!1003850 () Bool)

(assert (=> b!5699937 (= c!1003850 ((_ is Cons!63267) (unfocusZipperList!1125 zl!343)))))

(declare-fun b!5699938 () Bool)

(assert (=> b!5699938 (= e!3506485 (Union!15697 (h!69715 (unfocusZipperList!1125 zl!343)) (generalisedUnion!1560 (t!376709 (unfocusZipperList!1125 zl!343)))))))

(declare-fun b!5699939 () Bool)

(declare-fun isEmptyLang!1222 (Regex!15697) Bool)

(assert (=> b!5699939 (= e!3506483 (isEmptyLang!1222 lt!2273728))))

(declare-fun b!5699940 () Bool)

(assert (=> b!5699940 (= e!3506481 (isEmpty!35128 (t!376709 (unfocusZipperList!1125 zl!343))))))

(declare-fun b!5699941 () Bool)

(declare-fun isUnion!652 (Regex!15697) Bool)

(assert (=> b!5699941 (= e!3506486 (isUnion!652 lt!2273728))))

(declare-fun b!5699942 () Bool)

(assert (=> b!5699942 (= e!3506486 (= lt!2273728 (head!12087 (unfocusZipperList!1125 zl!343))))))

(declare-fun b!5699943 () Bool)

(assert (=> b!5699943 (= e!3506482 e!3506483)))

(declare-fun c!1003848 () Bool)

(assert (=> b!5699943 (= c!1003848 (isEmpty!35128 (unfocusZipperList!1125 zl!343)))))

(assert (= (and d!1798204 res!2407177) b!5699940))

(assert (= (and d!1798204 c!1003849) b!5699936))

(assert (= (and d!1798204 (not c!1003849)) b!5699937))

(assert (= (and b!5699937 c!1003850) b!5699938))

(assert (= (and b!5699937 (not c!1003850)) b!5699934))

(assert (= (and d!1798204 res!2407176) b!5699943))

(assert (= (and b!5699943 c!1003848) b!5699939))

(assert (= (and b!5699943 (not c!1003848)) b!5699935))

(assert (= (and b!5699935 c!1003847) b!5699942))

(assert (= (and b!5699935 (not c!1003847)) b!5699941))

(declare-fun m!6655296 () Bool)

(assert (=> b!5699941 m!6655296))

(assert (=> b!5699935 m!6654502))

(declare-fun m!6655298 () Bool)

(assert (=> b!5699935 m!6655298))

(assert (=> b!5699935 m!6655298))

(declare-fun m!6655300 () Bool)

(assert (=> b!5699935 m!6655300))

(declare-fun m!6655302 () Bool)

(assert (=> b!5699940 m!6655302))

(declare-fun m!6655304 () Bool)

(assert (=> b!5699939 m!6655304))

(declare-fun m!6655306 () Bool)

(assert (=> b!5699938 m!6655306))

(declare-fun m!6655308 () Bool)

(assert (=> d!1798204 m!6655308))

(assert (=> d!1798204 m!6654502))

(declare-fun m!6655310 () Bool)

(assert (=> d!1798204 m!6655310))

(assert (=> b!5699943 m!6654502))

(declare-fun m!6655312 () Bool)

(assert (=> b!5699943 m!6655312))

(assert (=> b!5699942 m!6654502))

(declare-fun m!6655314 () Bool)

(assert (=> b!5699942 m!6655314))

(assert (=> b!5698920 d!1798204))

(declare-fun bs!1328338 () Bool)

(declare-fun d!1798206 () Bool)

(assert (= bs!1328338 (and d!1798206 d!1798142)))

(declare-fun lambda!307439 () Int)

(assert (=> bs!1328338 (= lambda!307439 lambda!307426)))

(declare-fun bs!1328339 () Bool)

(assert (= bs!1328339 (and d!1798206 d!1798042)))

(assert (=> bs!1328339 (= lambda!307439 lambda!307409)))

(declare-fun bs!1328340 () Bool)

(assert (= bs!1328340 (and d!1798206 d!1797998)))

(assert (=> bs!1328340 (= lambda!307439 lambda!307386)))

(declare-fun bs!1328341 () Bool)

(assert (= bs!1328341 (and d!1798206 d!1798204)))

(assert (=> bs!1328341 (= lambda!307439 lambda!307436)))

(declare-fun bs!1328342 () Bool)

(assert (= bs!1328342 (and d!1798206 d!1798186)))

(assert (=> bs!1328342 (= lambda!307439 lambda!307430)))

(declare-fun lt!2273731 () List!63391)

(assert (=> d!1798206 (forall!14836 lt!2273731 lambda!307439)))

(declare-fun e!3506489 () List!63391)

(assert (=> d!1798206 (= lt!2273731 e!3506489)))

(declare-fun c!1003853 () Bool)

(assert (=> d!1798206 (= c!1003853 ((_ is Cons!63268) zl!343))))

(assert (=> d!1798206 (= (unfocusZipperList!1125 zl!343) lt!2273731)))

(declare-fun b!5699948 () Bool)

(assert (=> b!5699948 (= e!3506489 (Cons!63267 (generalisedConcat!1312 (exprs!5581 (h!69716 zl!343))) (unfocusZipperList!1125 (t!376710 zl!343))))))

(declare-fun b!5699949 () Bool)

(assert (=> b!5699949 (= e!3506489 Nil!63267)))

(assert (= (and d!1798206 c!1003853) b!5699948))

(assert (= (and d!1798206 (not c!1003853)) b!5699949))

(declare-fun m!6655316 () Bool)

(assert (=> d!1798206 m!6655316))

(assert (=> b!5699948 m!6654412))

(declare-fun m!6655318 () Bool)

(assert (=> b!5699948 m!6655318))

(assert (=> b!5698920 d!1798206))

(declare-fun b!5699950 () Bool)

(declare-fun e!3506490 () (InoxSet Context!10162))

(declare-fun e!3506492 () (InoxSet Context!10162))

(assert (=> b!5699950 (= e!3506490 e!3506492)))

(declare-fun c!1003855 () Bool)

(assert (=> b!5699950 (= c!1003855 ((_ is Cons!63267) (exprs!5581 lt!2273568)))))

(declare-fun b!5699951 () Bool)

(assert (=> b!5699951 (= e!3506492 ((as const (Array Context!10162 Bool)) false))))

(declare-fun bm!433904 () Bool)

(declare-fun call!433909 () (InoxSet Context!10162))

(assert (=> bm!433904 (= call!433909 (derivationStepZipperDown!1039 (h!69715 (exprs!5581 lt!2273568)) (Context!10163 (t!376709 (exprs!5581 lt!2273568))) (h!69714 s!2326)))))

(declare-fun b!5699952 () Bool)

(assert (=> b!5699952 (= e!3506492 call!433909)))

(declare-fun d!1798208 () Bool)

(declare-fun c!1003854 () Bool)

(declare-fun e!3506491 () Bool)

(assert (=> d!1798208 (= c!1003854 e!3506491)))

(declare-fun res!2407178 () Bool)

(assert (=> d!1798208 (=> (not res!2407178) (not e!3506491))))

(assert (=> d!1798208 (= res!2407178 ((_ is Cons!63267) (exprs!5581 lt!2273568)))))

(assert (=> d!1798208 (= (derivationStepZipperUp!965 lt!2273568 (h!69714 s!2326)) e!3506490)))

(declare-fun b!5699953 () Bool)

(assert (=> b!5699953 (= e!3506490 ((_ map or) call!433909 (derivationStepZipperUp!965 (Context!10163 (t!376709 (exprs!5581 lt!2273568))) (h!69714 s!2326))))))

(declare-fun b!5699954 () Bool)

(assert (=> b!5699954 (= e!3506491 (nullable!5729 (h!69715 (exprs!5581 lt!2273568))))))

(assert (= (and d!1798208 res!2407178) b!5699954))

(assert (= (and d!1798208 c!1003854) b!5699953))

(assert (= (and d!1798208 (not c!1003854)) b!5699950))

(assert (= (and b!5699950 c!1003855) b!5699952))

(assert (= (and b!5699950 (not c!1003855)) b!5699951))

(assert (= (or b!5699953 b!5699952) bm!433904))

(declare-fun m!6655320 () Bool)

(assert (=> bm!433904 m!6655320))

(declare-fun m!6655322 () Bool)

(assert (=> b!5699953 m!6655322))

(declare-fun m!6655324 () Bool)

(assert (=> b!5699954 m!6655324))

(assert (=> b!5698921 d!1798208))

(declare-fun d!1798210 () Bool)

(assert (=> d!1798210 (= (flatMap!1310 lt!2273566 lambda!307361) (choose!43116 lt!2273566 lambda!307361))))

(declare-fun bs!1328343 () Bool)

(assert (= bs!1328343 d!1798210))

(declare-fun m!6655326 () Bool)

(assert (=> bs!1328343 m!6655326))

(assert (=> b!5698921 d!1798210))

(declare-fun b!5699955 () Bool)

(declare-fun e!3506493 () (InoxSet Context!10162))

(declare-fun e!3506495 () (InoxSet Context!10162))

(assert (=> b!5699955 (= e!3506493 e!3506495)))

(declare-fun c!1003857 () Bool)

(assert (=> b!5699955 (= c!1003857 ((_ is Cons!63267) (exprs!5581 lt!2273593)))))

(declare-fun b!5699956 () Bool)

(assert (=> b!5699956 (= e!3506495 ((as const (Array Context!10162 Bool)) false))))

(declare-fun bm!433905 () Bool)

(declare-fun call!433910 () (InoxSet Context!10162))

(assert (=> bm!433905 (= call!433910 (derivationStepZipperDown!1039 (h!69715 (exprs!5581 lt!2273593)) (Context!10163 (t!376709 (exprs!5581 lt!2273593))) (h!69714 s!2326)))))

(declare-fun b!5699957 () Bool)

(assert (=> b!5699957 (= e!3506495 call!433910)))

(declare-fun d!1798212 () Bool)

(declare-fun c!1003856 () Bool)

(declare-fun e!3506494 () Bool)

(assert (=> d!1798212 (= c!1003856 e!3506494)))

(declare-fun res!2407179 () Bool)

(assert (=> d!1798212 (=> (not res!2407179) (not e!3506494))))

(assert (=> d!1798212 (= res!2407179 ((_ is Cons!63267) (exprs!5581 lt!2273593)))))

(assert (=> d!1798212 (= (derivationStepZipperUp!965 lt!2273593 (h!69714 s!2326)) e!3506493)))

(declare-fun b!5699958 () Bool)

(assert (=> b!5699958 (= e!3506493 ((_ map or) call!433910 (derivationStepZipperUp!965 (Context!10163 (t!376709 (exprs!5581 lt!2273593))) (h!69714 s!2326))))))

(declare-fun b!5699959 () Bool)

(assert (=> b!5699959 (= e!3506494 (nullable!5729 (h!69715 (exprs!5581 lt!2273593))))))

(assert (= (and d!1798212 res!2407179) b!5699959))

(assert (= (and d!1798212 c!1003856) b!5699958))

(assert (= (and d!1798212 (not c!1003856)) b!5699955))

(assert (= (and b!5699955 c!1003857) b!5699957))

(assert (= (and b!5699955 (not c!1003857)) b!5699956))

(assert (= (or b!5699958 b!5699957) bm!433905))

(declare-fun m!6655328 () Bool)

(assert (=> bm!433905 m!6655328))

(declare-fun m!6655330 () Bool)

(assert (=> b!5699958 m!6655330))

(declare-fun m!6655332 () Bool)

(assert (=> b!5699959 m!6655332))

(assert (=> b!5698921 d!1798212))

(declare-fun d!1798214 () Bool)

(declare-fun lt!2273732 () Regex!15697)

(assert (=> d!1798214 (validRegex!7433 lt!2273732)))

(assert (=> d!1798214 (= lt!2273732 (generalisedUnion!1560 (unfocusZipperList!1125 (Cons!63268 lt!2273568 Nil!63268))))))

(assert (=> d!1798214 (= (unfocusZipper!1439 (Cons!63268 lt!2273568 Nil!63268)) lt!2273732)))

(declare-fun bs!1328344 () Bool)

(assert (= bs!1328344 d!1798214))

(declare-fun m!6655334 () Bool)

(assert (=> bs!1328344 m!6655334))

(declare-fun m!6655336 () Bool)

(assert (=> bs!1328344 m!6655336))

(assert (=> bs!1328344 m!6655336))

(declare-fun m!6655338 () Bool)

(assert (=> bs!1328344 m!6655338))

(assert (=> b!5698921 d!1798214))

(declare-fun d!1798216 () Bool)

(assert (=> d!1798216 (= (flatMap!1310 lt!2273598 lambda!307361) (choose!43116 lt!2273598 lambda!307361))))

(declare-fun bs!1328345 () Bool)

(assert (= bs!1328345 d!1798216))

(declare-fun m!6655340 () Bool)

(assert (=> bs!1328345 m!6655340))

(assert (=> b!5698921 d!1798216))

(declare-fun d!1798218 () Bool)

(assert (=> d!1798218 (= (flatMap!1310 lt!2273566 lambda!307361) (dynLambda!24752 lambda!307361 lt!2273593))))

(declare-fun lt!2273733 () Unit!156320)

(assert (=> d!1798218 (= lt!2273733 (choose!43117 lt!2273566 lt!2273593 lambda!307361))))

(assert (=> d!1798218 (= lt!2273566 (store ((as const (Array Context!10162 Bool)) false) lt!2273593 true))))

(assert (=> d!1798218 (= (lemmaFlatMapOnSingletonSet!842 lt!2273566 lt!2273593 lambda!307361) lt!2273733)))

(declare-fun b_lambda!215417 () Bool)

(assert (=> (not b_lambda!215417) (not d!1798218)))

(declare-fun bs!1328346 () Bool)

(assert (= bs!1328346 d!1798218))

(assert (=> bs!1328346 m!6654474))

(declare-fun m!6655342 () Bool)

(assert (=> bs!1328346 m!6655342))

(declare-fun m!6655344 () Bool)

(assert (=> bs!1328346 m!6655344))

(assert (=> bs!1328346 m!6654486))

(assert (=> b!5698921 d!1798218))

(declare-fun d!1798220 () Bool)

(assert (=> d!1798220 (= (flatMap!1310 lt!2273598 lambda!307361) (dynLambda!24752 lambda!307361 lt!2273568))))

(declare-fun lt!2273734 () Unit!156320)

(assert (=> d!1798220 (= lt!2273734 (choose!43117 lt!2273598 lt!2273568 lambda!307361))))

(assert (=> d!1798220 (= lt!2273598 (store ((as const (Array Context!10162 Bool)) false) lt!2273568 true))))

(assert (=> d!1798220 (= (lemmaFlatMapOnSingletonSet!842 lt!2273598 lt!2273568 lambda!307361) lt!2273734)))

(declare-fun b_lambda!215419 () Bool)

(assert (=> (not b_lambda!215419) (not d!1798220)))

(declare-fun bs!1328347 () Bool)

(assert (= bs!1328347 d!1798220))

(assert (=> bs!1328347 m!6654482))

(declare-fun m!6655346 () Bool)

(assert (=> bs!1328347 m!6655346))

(declare-fun m!6655348 () Bool)

(assert (=> bs!1328347 m!6655348))

(assert (=> bs!1328347 m!6654478))

(assert (=> b!5698921 d!1798220))

(declare-fun e!3506498 () Bool)

(assert (=> b!5698943 (= tp!1580536 e!3506498)))

(declare-fun b!5699970 () Bool)

(assert (=> b!5699970 (= e!3506498 tp_is_empty!40647)))

(declare-fun b!5699971 () Bool)

(declare-fun tp!1580608 () Bool)

(declare-fun tp!1580607 () Bool)

(assert (=> b!5699971 (= e!3506498 (and tp!1580608 tp!1580607))))

(declare-fun b!5699972 () Bool)

(declare-fun tp!1580609 () Bool)

(assert (=> b!5699972 (= e!3506498 tp!1580609)))

(declare-fun b!5699973 () Bool)

(declare-fun tp!1580610 () Bool)

(declare-fun tp!1580611 () Bool)

(assert (=> b!5699973 (= e!3506498 (and tp!1580610 tp!1580611))))

(assert (= (and b!5698943 ((_ is ElementMatch!15697) (regOne!31907 r!7292))) b!5699970))

(assert (= (and b!5698943 ((_ is Concat!24542) (regOne!31907 r!7292))) b!5699971))

(assert (= (and b!5698943 ((_ is Star!15697) (regOne!31907 r!7292))) b!5699972))

(assert (= (and b!5698943 ((_ is Union!15697) (regOne!31907 r!7292))) b!5699973))

(declare-fun e!3506499 () Bool)

(assert (=> b!5698943 (= tp!1580534 e!3506499)))

(declare-fun b!5699974 () Bool)

(assert (=> b!5699974 (= e!3506499 tp_is_empty!40647)))

(declare-fun b!5699975 () Bool)

(declare-fun tp!1580613 () Bool)

(declare-fun tp!1580612 () Bool)

(assert (=> b!5699975 (= e!3506499 (and tp!1580613 tp!1580612))))

(declare-fun b!5699976 () Bool)

(declare-fun tp!1580614 () Bool)

(assert (=> b!5699976 (= e!3506499 tp!1580614)))

(declare-fun b!5699977 () Bool)

(declare-fun tp!1580615 () Bool)

(declare-fun tp!1580616 () Bool)

(assert (=> b!5699977 (= e!3506499 (and tp!1580615 tp!1580616))))

(assert (= (and b!5698943 ((_ is ElementMatch!15697) (regTwo!31907 r!7292))) b!5699974))

(assert (= (and b!5698943 ((_ is Concat!24542) (regTwo!31907 r!7292))) b!5699975))

(assert (= (and b!5698943 ((_ is Star!15697) (regTwo!31907 r!7292))) b!5699976))

(assert (= (and b!5698943 ((_ is Union!15697) (regTwo!31907 r!7292))) b!5699977))

(declare-fun condSetEmpty!38175 () Bool)

(assert (=> setNonEmpty!38169 (= condSetEmpty!38175 (= setRest!38169 ((as const (Array Context!10162 Bool)) false)))))

(declare-fun setRes!38175 () Bool)

(assert (=> setNonEmpty!38169 (= tp!1580531 setRes!38175)))

(declare-fun setIsEmpty!38175 () Bool)

(assert (=> setIsEmpty!38175 setRes!38175))

(declare-fun tp!1580621 () Bool)

(declare-fun e!3506502 () Bool)

(declare-fun setElem!38175 () Context!10162)

(declare-fun setNonEmpty!38175 () Bool)

(assert (=> setNonEmpty!38175 (= setRes!38175 (and tp!1580621 (inv!82489 setElem!38175) e!3506502))))

(declare-fun setRest!38175 () (InoxSet Context!10162))

(assert (=> setNonEmpty!38175 (= setRest!38169 ((_ map or) (store ((as const (Array Context!10162 Bool)) false) setElem!38175 true) setRest!38175))))

(declare-fun b!5699982 () Bool)

(declare-fun tp!1580622 () Bool)

(assert (=> b!5699982 (= e!3506502 tp!1580622)))

(assert (= (and setNonEmpty!38169 condSetEmpty!38175) setIsEmpty!38175))

(assert (= (and setNonEmpty!38169 (not condSetEmpty!38175)) setNonEmpty!38175))

(assert (= setNonEmpty!38175 b!5699982))

(declare-fun m!6655350 () Bool)

(assert (=> setNonEmpty!38175 m!6655350))

(declare-fun e!3506503 () Bool)

(assert (=> b!5698928 (= tp!1580537 e!3506503)))

(declare-fun b!5699983 () Bool)

(assert (=> b!5699983 (= e!3506503 tp_is_empty!40647)))

(declare-fun b!5699984 () Bool)

(declare-fun tp!1580624 () Bool)

(declare-fun tp!1580623 () Bool)

(assert (=> b!5699984 (= e!3506503 (and tp!1580624 tp!1580623))))

(declare-fun b!5699985 () Bool)

(declare-fun tp!1580625 () Bool)

(assert (=> b!5699985 (= e!3506503 tp!1580625)))

(declare-fun b!5699986 () Bool)

(declare-fun tp!1580626 () Bool)

(declare-fun tp!1580627 () Bool)

(assert (=> b!5699986 (= e!3506503 (and tp!1580626 tp!1580627))))

(assert (= (and b!5698928 ((_ is ElementMatch!15697) (reg!16026 r!7292))) b!5699983))

(assert (= (and b!5698928 ((_ is Concat!24542) (reg!16026 r!7292))) b!5699984))

(assert (= (and b!5698928 ((_ is Star!15697) (reg!16026 r!7292))) b!5699985))

(assert (= (and b!5698928 ((_ is Union!15697) (reg!16026 r!7292))) b!5699986))

(declare-fun b!5699991 () Bool)

(declare-fun e!3506506 () Bool)

(declare-fun tp!1580632 () Bool)

(declare-fun tp!1580633 () Bool)

(assert (=> b!5699991 (= e!3506506 (and tp!1580632 tp!1580633))))

(assert (=> b!5698918 (= tp!1580538 e!3506506)))

(assert (= (and b!5698918 ((_ is Cons!63267) (exprs!5581 (h!69716 zl!343)))) b!5699991))

(declare-fun e!3506507 () Bool)

(assert (=> b!5698934 (= tp!1580529 e!3506507)))

(declare-fun b!5699992 () Bool)

(assert (=> b!5699992 (= e!3506507 tp_is_empty!40647)))

(declare-fun b!5699993 () Bool)

(declare-fun tp!1580635 () Bool)

(declare-fun tp!1580634 () Bool)

(assert (=> b!5699993 (= e!3506507 (and tp!1580635 tp!1580634))))

(declare-fun b!5699994 () Bool)

(declare-fun tp!1580636 () Bool)

(assert (=> b!5699994 (= e!3506507 tp!1580636)))

(declare-fun b!5699995 () Bool)

(declare-fun tp!1580637 () Bool)

(declare-fun tp!1580638 () Bool)

(assert (=> b!5699995 (= e!3506507 (and tp!1580637 tp!1580638))))

(assert (= (and b!5698934 ((_ is ElementMatch!15697) (regOne!31906 r!7292))) b!5699992))

(assert (= (and b!5698934 ((_ is Concat!24542) (regOne!31906 r!7292))) b!5699993))

(assert (= (and b!5698934 ((_ is Star!15697) (regOne!31906 r!7292))) b!5699994))

(assert (= (and b!5698934 ((_ is Union!15697) (regOne!31906 r!7292))) b!5699995))

(declare-fun e!3506508 () Bool)

(assert (=> b!5698934 (= tp!1580530 e!3506508)))

(declare-fun b!5699996 () Bool)

(assert (=> b!5699996 (= e!3506508 tp_is_empty!40647)))

(declare-fun b!5699997 () Bool)

(declare-fun tp!1580640 () Bool)

(declare-fun tp!1580639 () Bool)

(assert (=> b!5699997 (= e!3506508 (and tp!1580640 tp!1580639))))

(declare-fun b!5699998 () Bool)

(declare-fun tp!1580641 () Bool)

(assert (=> b!5699998 (= e!3506508 tp!1580641)))

(declare-fun b!5699999 () Bool)

(declare-fun tp!1580642 () Bool)

(declare-fun tp!1580643 () Bool)

(assert (=> b!5699999 (= e!3506508 (and tp!1580642 tp!1580643))))

(assert (= (and b!5698934 ((_ is ElementMatch!15697) (regTwo!31906 r!7292))) b!5699996))

(assert (= (and b!5698934 ((_ is Concat!24542) (regTwo!31906 r!7292))) b!5699997))

(assert (= (and b!5698934 ((_ is Star!15697) (regTwo!31906 r!7292))) b!5699998))

(assert (= (and b!5698934 ((_ is Union!15697) (regTwo!31906 r!7292))) b!5699999))

(declare-fun b!5700007 () Bool)

(declare-fun e!3506514 () Bool)

(declare-fun tp!1580648 () Bool)

(assert (=> b!5700007 (= e!3506514 tp!1580648)))

(declare-fun e!3506513 () Bool)

(declare-fun tp!1580649 () Bool)

(declare-fun b!5700006 () Bool)

(assert (=> b!5700006 (= e!3506513 (and (inv!82489 (h!69716 (t!376710 zl!343))) e!3506514 tp!1580649))))

(assert (=> b!5698947 (= tp!1580532 e!3506513)))

(assert (= b!5700006 b!5700007))

(assert (= (and b!5698947 ((_ is Cons!63268) (t!376710 zl!343))) b!5700006))

(declare-fun m!6655352 () Bool)

(assert (=> b!5700006 m!6655352))

(declare-fun b!5700012 () Bool)

(declare-fun e!3506517 () Bool)

(declare-fun tp!1580652 () Bool)

(assert (=> b!5700012 (= e!3506517 (and tp_is_empty!40647 tp!1580652))))

(assert (=> b!5698911 (= tp!1580535 e!3506517)))

(assert (= (and b!5698911 ((_ is Cons!63266) (t!376708 s!2326))) b!5700012))

(declare-fun b!5700013 () Bool)

(declare-fun e!3506518 () Bool)

(declare-fun tp!1580653 () Bool)

(declare-fun tp!1580654 () Bool)

(assert (=> b!5700013 (= e!3506518 (and tp!1580653 tp!1580654))))

(assert (=> b!5698926 (= tp!1580533 e!3506518)))

(assert (= (and b!5698926 ((_ is Cons!63267) (exprs!5581 setElem!38169))) b!5700013))

(declare-fun b_lambda!215421 () Bool)

(assert (= b_lambda!215413 (or b!5698937 b_lambda!215421)))

(declare-fun bs!1328348 () Bool)

(declare-fun d!1798222 () Bool)

(assert (= bs!1328348 (and d!1798222 b!5698937)))

(assert (=> bs!1328348 (= (dynLambda!24752 lambda!307361 (h!69716 zl!343)) (derivationStepZipperUp!965 (h!69716 zl!343) (h!69714 s!2326)))))

(assert (=> bs!1328348 m!6654444))

(assert (=> d!1798170 d!1798222))

(declare-fun b_lambda!215423 () Bool)

(assert (= b_lambda!215419 (or b!5698937 b_lambda!215423)))

(declare-fun bs!1328349 () Bool)

(declare-fun d!1798224 () Bool)

(assert (= bs!1328349 (and d!1798224 b!5698937)))

(assert (=> bs!1328349 (= (dynLambda!24752 lambda!307361 lt!2273568) (derivationStepZipperUp!965 lt!2273568 (h!69714 s!2326)))))

(assert (=> bs!1328349 m!6654476))

(assert (=> d!1798220 d!1798224))

(declare-fun b_lambda!215425 () Bool)

(assert (= b_lambda!215415 (or b!5698937 b_lambda!215425)))

(declare-fun bs!1328350 () Bool)

(declare-fun d!1798226 () Bool)

(assert (= bs!1328350 (and d!1798226 b!5698937)))

(assert (=> bs!1328350 (= (dynLambda!24752 lambda!307361 lt!2273595) (derivationStepZipperUp!965 lt!2273595 (h!69714 s!2326)))))

(assert (=> bs!1328350 m!6654452))

(assert (=> d!1798194 d!1798226))

(declare-fun b_lambda!215427 () Bool)

(assert (= b_lambda!215417 (or b!5698937 b_lambda!215427)))

(declare-fun bs!1328351 () Bool)

(declare-fun d!1798228 () Bool)

(assert (= bs!1328351 (and d!1798228 b!5698937)))

(assert (=> bs!1328351 (= (dynLambda!24752 lambda!307361 lt!2273593) (derivationStepZipperUp!965 lt!2273593 (h!69714 s!2326)))))

(assert (=> bs!1328351 m!6654484))

(assert (=> d!1798218 d!1798228))

(declare-fun b_lambda!215429 () Bool)

(assert (= b_lambda!215411 (or b!5698937 b_lambda!215429)))

(declare-fun bs!1328352 () Bool)

(declare-fun d!1798230 () Bool)

(assert (= bs!1328352 (and d!1798230 b!5698937)))

(assert (=> bs!1328352 (= (dynLambda!24752 lambda!307361 lt!2273579) (derivationStepZipperUp!965 lt!2273579 (h!69714 s!2326)))))

(assert (=> bs!1328352 m!6654510))

(assert (=> d!1798160 d!1798230))

(check-sat (not b!5699257) (not b!5699995) (not d!1798026) (not d!1798218) (not bs!1328352) (not b!5700006) (not b!5699558) (not b!5699623) (not d!1797984) (not b!5699346) (not d!1798024) (not b!5699907) (not b!5699883) (not d!1798196) (not d!1798110) (not b!5699991) (not b!5699958) (not b!5699622) (not b_lambda!215429) (not b!5699568) (not b!5699258) (not d!1798000) (not b!5699679) (not bm!433891) (not bm!433898) (not b!5699941) (not bm!433872) (not b!5699683) (not b!5699880) (not b!5699982) (not b!5699799) (not d!1798142) (not bm!433864) (not bm!433903) (not b!5699676) (not b!5699805) (not d!1798206) (not d!1798186) (not b!5699997) (not d!1798204) (not d!1798032) (not b!5699976) (not b!5699342) (not d!1798124) (not d!1798130) (not b!5699619) (not bm!433831) (not d!1798132) (not b!5699795) (not b!5699694) (not d!1798128) (not b!5699809) (not b!5699886) (not b!5699692) (not d!1798106) (not bs!1328349) (not d!1798042) (not b!5699653) (not d!1798190) (not b!5699249) (not b!5699563) (not b!5699948) (not bm!433866) (not d!1798126) (not d!1798164) (not d!1798220) (not b!5699627) (not d!1798162) (not b!5699993) (not b!5699939) (not d!1798156) (not b!5699985) (not b!5699343) (not b!5699482) (not d!1798040) (not bm!433900) (not d!1798002) (not b!5699675) (not d!1798150) (not b!5699986) (not b!5699891) (not bm!433833) (not b!5699626) (not d!1798154) (not b!5699935) (not bm!433846) (not b!5699900) (not b!5699954) (not b!5699804) (not d!1798174) (not b!5699648) (not b!5699250) (not b!5699905) (not d!1798152) (not b!5699650) (not d!1798166) (not b!5700007) (not d!1798192) (not b!5699638) (not b_lambda!215427) (not b!5699556) (not b!5699938) (not b!5699641) (not bm!433848) (not b_lambda!215423) (not b!5699898) (not bm!433899) (not b!5699697) (not b!5699780) (not bm!433860) (not b!5699984) (not b_lambda!215421) (not d!1798160) (not bs!1328350) (not d!1797988) (not b!5699484) (not bm!433871) (not b!5699696) (not bm!433902) (not b!5699639) (not b!5699753) (not bm!433889) (not b!5699759) (not d!1798170) (not bm!433905) (not bm!433897) (not b!5699800) (not b!5699784) (not b!5700013) (not d!1798200) (not b!5699761) (not b!5699943) (not b_lambda!215425) (not d!1798112) (not b!5699678) (not d!1797998) (not b!5699882) (not d!1798144) (not bm!433850) (not b!5699959) tp_is_empty!40647 (not b!5699347) (not b!5699685) (not d!1798188) (not bm!433893) (not bm!433819) (not b!5699760) (not b!5699197) (not d!1798108) (not bm!433832) (not d!1798210) (not bm!433904) (not b!5699765) (not b!5699971) (not b!5699942) (not b!5699565) (not b!5699901) (not bm!433820) (not b!5699889) (not bm!433858) (not b!5699994) (not b!5699879) (not bm!433890) (not b!5699779) (not d!1798088) (not bm!433901) (not b!5699999) (not b!5699973) (not bm!433870) (not b!5699810) (not b!5699652) (not b!5699687) (not d!1798028) (not d!1797996) (not bs!1328348) (not d!1798136) (not b!5699953) (not d!1798172) (not b!5699762) (not b!5699567) (not b!5699977) (not b!5699888) (not b!5699887) (not b!5699896) (not bm!433863) (not b!5699783) (not b!5699339) (not b!5699643) (not b!5699731) (not b!5700012) (not b!5699940) (not d!1798216) (not bm!433896) (not setNonEmpty!38175) (not b!5699998) (not d!1798214) (not b!5699345) (not bs!1328351) (not bm!433892) (not b!5699625) (not d!1798194) (not bm!433868) (not b!5699975) (not b!5699972) (not b!5699684) (not b!5699682))
(check-sat)
