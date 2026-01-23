; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!562726 () Bool)

(assert start!562726)

(declare-fun b!5341313 () Bool)

(assert (=> b!5341313 true))

(assert (=> b!5341313 true))

(declare-fun lambda!273812 () Int)

(declare-fun lambda!273811 () Int)

(assert (=> b!5341313 (not (= lambda!273812 lambda!273811))))

(assert (=> b!5341313 true))

(assert (=> b!5341313 true))

(declare-fun b!5341317 () Bool)

(assert (=> b!5341317 true))

(declare-fun bs!1238580 () Bool)

(declare-fun b!5341300 () Bool)

(assert (= bs!1238580 (and b!5341300 b!5341313)))

(declare-datatypes ((C!30308 0))(
  ( (C!30309 (val!24856 Int)) )
))
(declare-datatypes ((Regex!15019 0))(
  ( (ElementMatch!15019 (c!929435 C!30308)) (Concat!23864 (regOne!30550 Regex!15019) (regTwo!30550 Regex!15019)) (EmptyExpr!15019) (Star!15019 (reg!15348 Regex!15019)) (EmptyLang!15019) (Union!15019 (regOne!30551 Regex!15019) (regTwo!30551 Regex!15019)) )
))
(declare-fun r!7292 () Regex!15019)

(declare-fun lt!2177917 () Regex!15019)

(declare-fun lambda!273814 () Int)

(assert (=> bs!1238580 (= (and (= (regOne!30550 (regOne!30550 r!7292)) (regOne!30550 r!7292)) (= lt!2177917 (regTwo!30550 r!7292))) (= lambda!273814 lambda!273811))))

(assert (=> bs!1238580 (not (= lambda!273814 lambda!273812))))

(assert (=> b!5341300 true))

(assert (=> b!5341300 true))

(assert (=> b!5341300 true))

(declare-fun lambda!273815 () Int)

(assert (=> bs!1238580 (not (= lambda!273815 lambda!273811))))

(assert (=> bs!1238580 (= (and (= (regOne!30550 (regOne!30550 r!7292)) (regOne!30550 r!7292)) (= lt!2177917 (regTwo!30550 r!7292))) (= lambda!273815 lambda!273812))))

(assert (=> b!5341300 (not (= lambda!273815 lambda!273814))))

(assert (=> b!5341300 true))

(assert (=> b!5341300 true))

(assert (=> b!5341300 true))

(declare-fun lt!2177891 () Regex!15019)

(declare-fun lambda!273816 () Int)

(assert (=> bs!1238580 (= (and (= (regTwo!30550 (regOne!30550 r!7292)) (regOne!30550 r!7292)) (= lt!2177891 (regTwo!30550 r!7292))) (= lambda!273816 lambda!273811))))

(assert (=> bs!1238580 (not (= lambda!273816 lambda!273812))))

(assert (=> b!5341300 (= (and (= (regTwo!30550 (regOne!30550 r!7292)) (regOne!30550 (regOne!30550 r!7292))) (= lt!2177891 lt!2177917)) (= lambda!273816 lambda!273814))))

(assert (=> b!5341300 (not (= lambda!273816 lambda!273815))))

(assert (=> b!5341300 true))

(assert (=> b!5341300 true))

(assert (=> b!5341300 true))

(declare-fun lambda!273817 () Int)

(assert (=> b!5341300 (= (and (= (regTwo!30550 (regOne!30550 r!7292)) (regOne!30550 (regOne!30550 r!7292))) (= lt!2177891 lt!2177917)) (= lambda!273817 lambda!273815))))

(assert (=> b!5341300 (not (= lambda!273817 lambda!273816))))

(assert (=> bs!1238580 (not (= lambda!273817 lambda!273811))))

(assert (=> b!5341300 (not (= lambda!273817 lambda!273814))))

(assert (=> bs!1238580 (= (and (= (regTwo!30550 (regOne!30550 r!7292)) (regOne!30550 r!7292)) (= lt!2177891 (regTwo!30550 r!7292))) (= lambda!273817 lambda!273812))))

(assert (=> b!5341300 true))

(assert (=> b!5341300 true))

(assert (=> b!5341300 true))

(declare-fun b!5341287 () Bool)

(declare-fun e!3316627 () Bool)

(declare-fun e!3316624 () Bool)

(assert (=> b!5341287 (= e!3316627 e!3316624)))

(declare-fun res!2265787 () Bool)

(assert (=> b!5341287 (=> res!2265787 e!3316624)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61356 0))(
  ( (Nil!61232) (Cons!61232 (h!67680 Regex!15019) (t!374573 List!61356)) )
))
(declare-datatypes ((Context!8806 0))(
  ( (Context!8807 (exprs!4903 List!61356)) )
))
(declare-fun lt!2177920 () (InoxSet Context!8806))

(declare-fun lt!2177904 () (InoxSet Context!8806))

(assert (=> b!5341287 (= res!2265787 (not (= lt!2177920 lt!2177904)))))

(declare-datatypes ((List!61357 0))(
  ( (Nil!61233) (Cons!61233 (h!67681 C!30308) (t!374574 List!61357)) )
))
(declare-fun s!2326 () List!61357)

(declare-fun lt!2177912 () Context!8806)

(declare-fun lt!2177907 () (InoxSet Context!8806))

(declare-fun lambda!273813 () Int)

(declare-fun flatMap!746 ((InoxSet Context!8806) Int) (InoxSet Context!8806))

(declare-fun derivationStepZipperUp!391 (Context!8806 C!30308) (InoxSet Context!8806))

(assert (=> b!5341287 (= (flatMap!746 lt!2177907 lambda!273813) (derivationStepZipperUp!391 lt!2177912 (h!67681 s!2326)))))

(declare-datatypes ((Unit!153594 0))(
  ( (Unit!153595) )
))
(declare-fun lt!2177893 () Unit!153594)

(declare-fun lemmaFlatMapOnSingletonSet!278 ((InoxSet Context!8806) Context!8806 Int) Unit!153594)

(assert (=> b!5341287 (= lt!2177893 (lemmaFlatMapOnSingletonSet!278 lt!2177907 lt!2177912 lambda!273813))))

(declare-fun lt!2177921 () (InoxSet Context!8806))

(assert (=> b!5341287 (= lt!2177921 (derivationStepZipperUp!391 lt!2177912 (h!67681 s!2326)))))

(declare-fun derivationStepZipper!1260 ((InoxSet Context!8806) C!30308) (InoxSet Context!8806))

(assert (=> b!5341287 (= lt!2177920 (derivationStepZipper!1260 lt!2177907 (h!67681 s!2326)))))

(assert (=> b!5341287 (= lt!2177907 (store ((as const (Array Context!8806 Bool)) false) lt!2177912 true))))

(declare-fun lt!2177888 () List!61356)

(assert (=> b!5341287 (= lt!2177912 (Context!8807 lt!2177888))))

(declare-fun lt!2177895 () List!61356)

(assert (=> b!5341287 (= lt!2177888 (Cons!61232 (regOne!30550 (regOne!30550 r!7292)) lt!2177895))))

(declare-fun b!5341288 () Bool)

(declare-fun e!3316622 () Bool)

(declare-fun e!3316616 () Bool)

(declare-datatypes ((List!61358 0))(
  ( (Nil!61234) (Cons!61234 (h!67682 Context!8806) (t!374575 List!61358)) )
))
(declare-fun zl!343 () List!61358)

(declare-fun tp!1485096 () Bool)

(declare-fun inv!80794 (Context!8806) Bool)

(assert (=> b!5341288 (= e!3316622 (and (inv!80794 (h!67682 zl!343)) e!3316616 tp!1485096))))

(declare-fun b!5341289 () Bool)

(declare-fun res!2265791 () Bool)

(declare-fun e!3316612 () Bool)

(assert (=> b!5341289 (=> res!2265791 e!3316612)))

(declare-fun lt!2177894 () List!61358)

(declare-fun zipperDepth!128 (List!61358) Int)

(assert (=> b!5341289 (= res!2265791 (> (zipperDepth!128 lt!2177894) (zipperDepth!128 zl!343)))))

(declare-fun setNonEmpty!34471 () Bool)

(declare-fun tp!1485103 () Bool)

(declare-fun setRes!34471 () Bool)

(declare-fun setElem!34471 () Context!8806)

(declare-fun e!3316620 () Bool)

(assert (=> setNonEmpty!34471 (= setRes!34471 (and tp!1485103 (inv!80794 setElem!34471) e!3316620))))

(declare-fun z!1189 () (InoxSet Context!8806))

(declare-fun setRest!34471 () (InoxSet Context!8806))

(assert (=> setNonEmpty!34471 (= z!1189 ((_ map or) (store ((as const (Array Context!8806 Bool)) false) setElem!34471 true) setRest!34471))))

(declare-fun b!5341290 () Bool)

(declare-fun e!3316614 () Bool)

(declare-fun tp_is_empty!39291 () Bool)

(assert (=> b!5341290 (= e!3316614 tp_is_empty!39291)))

(declare-fun b!5341291 () Bool)

(declare-fun res!2265803 () Bool)

(declare-fun e!3316615 () Bool)

(assert (=> b!5341291 (=> res!2265803 e!3316615)))

(declare-fun isEmpty!33207 (List!61356) Bool)

(assert (=> b!5341291 (= res!2265803 (isEmpty!33207 (t!374573 (exprs!4903 (h!67682 zl!343)))))))

(declare-fun b!5341292 () Bool)

(declare-fun res!2265807 () Bool)

(declare-fun e!3316613 () Bool)

(assert (=> b!5341292 (=> (not res!2265807) (not e!3316613))))

(declare-fun unfocusZipper!761 (List!61358) Regex!15019)

(assert (=> b!5341292 (= res!2265807 (= r!7292 (unfocusZipper!761 zl!343)))))

(declare-fun b!5341293 () Bool)

(declare-fun tp!1485101 () Bool)

(assert (=> b!5341293 (= e!3316616 tp!1485101)))

(declare-fun b!5341294 () Bool)

(assert (=> b!5341294 (= e!3316624 e!3316612)))

(declare-fun res!2265790 () Bool)

(assert (=> b!5341294 (=> res!2265790 e!3316612)))

(declare-fun zipperDepthTotal!172 (List!61358) Int)

(assert (=> b!5341294 (= res!2265790 (>= (zipperDepthTotal!172 lt!2177894) (zipperDepthTotal!172 zl!343)))))

(assert (=> b!5341294 (= lt!2177894 (Cons!61234 lt!2177912 Nil!61234))))

(declare-fun b!5341295 () Bool)

(declare-fun res!2265789 () Bool)

(declare-fun e!3316623 () Bool)

(assert (=> b!5341295 (=> res!2265789 e!3316623)))

(get-info :version)

(assert (=> b!5341295 (= res!2265789 (not ((_ is Concat!23864) (regOne!30550 r!7292))))))

(declare-fun b!5341296 () Bool)

(declare-fun e!3316621 () Bool)

(declare-fun tp!1485097 () Bool)

(assert (=> b!5341296 (= e!3316621 (and tp_is_empty!39291 tp!1485097))))

(declare-fun b!5341297 () Bool)

(declare-fun res!2265797 () Bool)

(declare-fun e!3316617 () Bool)

(assert (=> b!5341297 (=> res!2265797 e!3316617)))

(assert (=> b!5341297 (= res!2265797 (not ((_ is Cons!61232) (exprs!4903 (h!67682 zl!343)))))))

(declare-fun b!5341298 () Bool)

(assert (=> b!5341298 (= e!3316613 (not e!3316617))))

(declare-fun res!2265788 () Bool)

(assert (=> b!5341298 (=> res!2265788 e!3316617)))

(assert (=> b!5341298 (= res!2265788 (not ((_ is Cons!61234) zl!343)))))

(declare-fun lt!2177896 () Bool)

(declare-fun matchRSpec!2122 (Regex!15019 List!61357) Bool)

(assert (=> b!5341298 (= lt!2177896 (matchRSpec!2122 r!7292 s!2326))))

(declare-fun matchR!7204 (Regex!15019 List!61357) Bool)

(assert (=> b!5341298 (= lt!2177896 (matchR!7204 r!7292 s!2326))))

(declare-fun lt!2177905 () Unit!153594)

(declare-fun mainMatchTheorem!2122 (Regex!15019 List!61357) Unit!153594)

(assert (=> b!5341298 (= lt!2177905 (mainMatchTheorem!2122 r!7292 s!2326))))

(declare-fun res!2265802 () Bool)

(assert (=> start!562726 (=> (not res!2265802) (not e!3316613))))

(declare-fun validRegex!6755 (Regex!15019) Bool)

(assert (=> start!562726 (= res!2265802 (validRegex!6755 r!7292))))

(assert (=> start!562726 e!3316613))

(assert (=> start!562726 e!3316614))

(declare-fun condSetEmpty!34471 () Bool)

(assert (=> start!562726 (= condSetEmpty!34471 (= z!1189 ((as const (Array Context!8806 Bool)) false)))))

(assert (=> start!562726 setRes!34471))

(assert (=> start!562726 e!3316622))

(assert (=> start!562726 e!3316621))

(declare-fun b!5341299 () Bool)

(declare-fun tp!1485098 () Bool)

(declare-fun tp!1485100 () Bool)

(assert (=> b!5341299 (= e!3316614 (and tp!1485098 tp!1485100))))

(declare-fun e!3316618 () Bool)

(assert (=> b!5341300 (= e!3316612 e!3316618)))

(declare-fun res!2265809 () Bool)

(assert (=> b!5341300 (=> res!2265809 e!3316618)))

(declare-fun lt!2177899 () Bool)

(declare-fun lt!2177906 () Bool)

(declare-fun lt!2177918 () Bool)

(assert (=> b!5341300 (= res!2265809 (or (not (= lt!2177918 lt!2177906)) (not (= lt!2177918 lt!2177899))))))

(declare-fun matchZipper!1263 ((InoxSet Context!8806) List!61357) Bool)

(assert (=> b!5341300 (= lt!2177918 (matchZipper!1263 z!1189 s!2326))))

(declare-fun Exists!2200 (Int) Bool)

(assert (=> b!5341300 (= (Exists!2200 lambda!273816) (Exists!2200 lambda!273817))))

(declare-fun lt!2177915 () Unit!153594)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!854 (Regex!15019 Regex!15019 List!61357) Unit!153594)

(assert (=> b!5341300 (= lt!2177915 (lemmaExistCutMatchRandMatchRSpecEquivalent!854 (regTwo!30550 (regOne!30550 r!7292)) lt!2177891 s!2326))))

(declare-datatypes ((tuple2!64436 0))(
  ( (tuple2!64437 (_1!35521 List!61357) (_2!35521 List!61357)) )
))
(declare-datatypes ((Option!15130 0))(
  ( (None!15129) (Some!15129 (v!51158 tuple2!64436)) )
))
(declare-fun isDefined!11833 (Option!15130) Bool)

(declare-fun findConcatSeparation!1544 (Regex!15019 Regex!15019 List!61357 List!61357 List!61357) Option!15130)

(assert (=> b!5341300 (= (isDefined!11833 (findConcatSeparation!1544 (regTwo!30550 (regOne!30550 r!7292)) lt!2177891 Nil!61233 s!2326 s!2326)) (Exists!2200 lambda!273816))))

(declare-fun lt!2177913 () Unit!153594)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1308 (Regex!15019 Regex!15019 List!61357) Unit!153594)

(assert (=> b!5341300 (= lt!2177913 (lemmaFindConcatSeparationEquivalentToExists!1308 (regTwo!30550 (regOne!30550 r!7292)) lt!2177891 s!2326))))

(declare-fun generalisedConcat!688 (List!61356) Regex!15019)

(assert (=> b!5341300 (= lt!2177891 (generalisedConcat!688 (t!374573 (exprs!4903 (h!67682 zl!343)))))))

(assert (=> b!5341300 (= (matchR!7204 lt!2177917 s!2326) (matchRSpec!2122 lt!2177917 s!2326))))

(declare-fun lt!2177903 () Unit!153594)

(assert (=> b!5341300 (= lt!2177903 (mainMatchTheorem!2122 lt!2177917 s!2326))))

(assert (=> b!5341300 (= (Exists!2200 lambda!273814) (Exists!2200 lambda!273815))))

(declare-fun lt!2177901 () Unit!153594)

(assert (=> b!5341300 (= lt!2177901 (lemmaExistCutMatchRandMatchRSpecEquivalent!854 (regOne!30550 (regOne!30550 r!7292)) lt!2177917 s!2326))))

(assert (=> b!5341300 (= (isDefined!11833 (findConcatSeparation!1544 (regOne!30550 (regOne!30550 r!7292)) lt!2177917 Nil!61233 s!2326 s!2326)) (Exists!2200 lambda!273814))))

(declare-fun lt!2177890 () Unit!153594)

(assert (=> b!5341300 (= lt!2177890 (lemmaFindConcatSeparationEquivalentToExists!1308 (regOne!30550 (regOne!30550 r!7292)) lt!2177917 s!2326))))

(assert (=> b!5341300 (= lt!2177917 (generalisedConcat!688 lt!2177895))))

(declare-fun lt!2177909 () Regex!15019)

(assert (=> b!5341300 (= lt!2177899 (matchRSpec!2122 lt!2177909 s!2326))))

(declare-fun lt!2177889 () Unit!153594)

(assert (=> b!5341300 (= lt!2177889 (mainMatchTheorem!2122 lt!2177909 s!2326))))

(assert (=> b!5341300 (= lt!2177899 lt!2177906)))

(assert (=> b!5341300 (= lt!2177906 (matchZipper!1263 lt!2177907 s!2326))))

(assert (=> b!5341300 (= lt!2177899 (matchR!7204 lt!2177909 s!2326))))

(declare-fun lt!2177916 () Unit!153594)

(declare-fun theoremZipperRegexEquiv!417 ((InoxSet Context!8806) List!61358 Regex!15019 List!61357) Unit!153594)

(assert (=> b!5341300 (= lt!2177916 (theoremZipperRegexEquiv!417 lt!2177907 lt!2177894 lt!2177909 s!2326))))

(assert (=> b!5341300 (= lt!2177909 (generalisedConcat!688 lt!2177888))))

(declare-fun b!5341301 () Bool)

(declare-fun res!2265810 () Bool)

(assert (=> b!5341301 (=> res!2265810 e!3316623)))

(declare-fun e!3316628 () Bool)

(assert (=> b!5341301 (= res!2265810 e!3316628)))

(declare-fun res!2265794 () Bool)

(assert (=> b!5341301 (=> (not res!2265794) (not e!3316628))))

(assert (=> b!5341301 (= res!2265794 ((_ is Concat!23864) (regOne!30550 r!7292)))))

(declare-fun b!5341302 () Bool)

(declare-fun res!2265795 () Bool)

(assert (=> b!5341302 (=> res!2265795 e!3316617)))

(declare-fun isEmpty!33208 (List!61358) Bool)

(assert (=> b!5341302 (= res!2265795 (not (isEmpty!33208 (t!374575 zl!343))))))

(declare-fun b!5341303 () Bool)

(declare-fun tp!1485099 () Bool)

(declare-fun tp!1485104 () Bool)

(assert (=> b!5341303 (= e!3316614 (and tp!1485099 tp!1485104))))

(declare-fun b!5341304 () Bool)

(declare-fun e!3316625 () Bool)

(assert (=> b!5341304 (= e!3316625 e!3316627)))

(declare-fun res!2265805 () Bool)

(assert (=> b!5341304 (=> res!2265805 e!3316627)))

(declare-fun lt!2177898 () Bool)

(assert (=> b!5341304 (= res!2265805 (not (= lt!2177898 (matchZipper!1263 lt!2177904 (t!374574 s!2326)))))))

(declare-fun lt!2177908 () (InoxSet Context!8806))

(assert (=> b!5341304 (= lt!2177898 (matchZipper!1263 lt!2177908 (t!374574 s!2326)))))

(declare-fun b!5341305 () Bool)

(declare-fun tp!1485102 () Bool)

(assert (=> b!5341305 (= e!3316614 tp!1485102)))

(declare-fun b!5341306 () Bool)

(declare-fun nullable!5188 (Regex!15019) Bool)

(assert (=> b!5341306 (= e!3316628 (nullable!5188 (regOne!30550 (regOne!30550 r!7292))))))

(declare-fun b!5341307 () Bool)

(declare-fun e!3316626 () Unit!153594)

(declare-fun Unit!153596 () Unit!153594)

(assert (=> b!5341307 (= e!3316626 Unit!153596)))

(declare-fun b!5341308 () Bool)

(declare-fun res!2265806 () Bool)

(assert (=> b!5341308 (=> res!2265806 e!3316617)))

(assert (=> b!5341308 (= res!2265806 (or ((_ is EmptyExpr!15019) r!7292) ((_ is EmptyLang!15019) r!7292) ((_ is ElementMatch!15019) r!7292) ((_ is Union!15019) r!7292) (not ((_ is Concat!23864) r!7292))))))

(declare-fun b!5341309 () Bool)

(declare-fun res!2265796 () Bool)

(assert (=> b!5341309 (=> (not res!2265796) (not e!3316613))))

(declare-fun toList!8803 ((InoxSet Context!8806)) List!61358)

(assert (=> b!5341309 (= res!2265796 (= (toList!8803 z!1189) zl!343))))

(declare-fun b!5341310 () Bool)

(declare-fun res!2265811 () Bool)

(assert (=> b!5341310 (=> res!2265811 e!3316617)))

(declare-fun generalisedUnion!948 (List!61356) Regex!15019)

(declare-fun unfocusZipperList!461 (List!61358) List!61356)

(assert (=> b!5341310 (= res!2265811 (not (= r!7292 (generalisedUnion!948 (unfocusZipperList!461 zl!343)))))))

(declare-fun b!5341311 () Bool)

(assert (=> b!5341311 (= e!3316618 true)))

(declare-fun lt!2177897 () Bool)

(assert (=> b!5341311 (= lt!2177897 (matchR!7204 (Concat!23864 (regOne!30550 r!7292) (regTwo!30550 r!7292)) s!2326))))

(declare-fun b!5341312 () Bool)

(assert (=> b!5341312 (= e!3316623 e!3316625)))

(declare-fun res!2265804 () Bool)

(assert (=> b!5341312 (=> res!2265804 e!3316625)))

(assert (=> b!5341312 (= res!2265804 (not (= lt!2177908 lt!2177904)))))

(declare-fun derivationStepZipperDown!467 (Regex!15019 Context!8806 C!30308) (InoxSet Context!8806))

(assert (=> b!5341312 (= lt!2177904 (derivationStepZipperDown!467 (regOne!30550 (regOne!30550 r!7292)) (Context!8807 lt!2177895) (h!67681 s!2326)))))

(assert (=> b!5341312 (= lt!2177895 (Cons!61232 (regTwo!30550 (regOne!30550 r!7292)) (t!374573 (exprs!4903 (h!67682 zl!343)))))))

(assert (=> b!5341313 (= e!3316617 e!3316615)))

(declare-fun res!2265799 () Bool)

(assert (=> b!5341313 (=> res!2265799 e!3316615)))

(declare-fun lt!2177910 () Bool)

(assert (=> b!5341313 (= res!2265799 (or (not (= lt!2177896 lt!2177910)) ((_ is Nil!61233) s!2326)))))

(assert (=> b!5341313 (= (Exists!2200 lambda!273811) (Exists!2200 lambda!273812))))

(declare-fun lt!2177900 () Unit!153594)

(assert (=> b!5341313 (= lt!2177900 (lemmaExistCutMatchRandMatchRSpecEquivalent!854 (regOne!30550 r!7292) (regTwo!30550 r!7292) s!2326))))

(assert (=> b!5341313 (= lt!2177910 (Exists!2200 lambda!273811))))

(assert (=> b!5341313 (= lt!2177910 (isDefined!11833 (findConcatSeparation!1544 (regOne!30550 r!7292) (regTwo!30550 r!7292) Nil!61233 s!2326 s!2326)))))

(declare-fun lt!2177887 () Unit!153594)

(assert (=> b!5341313 (= lt!2177887 (lemmaFindConcatSeparationEquivalentToExists!1308 (regOne!30550 r!7292) (regTwo!30550 r!7292) s!2326))))

(declare-fun b!5341314 () Bool)

(declare-fun e!3316619 () Bool)

(declare-fun lt!2177911 () (InoxSet Context!8806))

(assert (=> b!5341314 (= e!3316619 (matchZipper!1263 lt!2177911 (t!374574 s!2326)))))

(declare-fun setIsEmpty!34471 () Bool)

(assert (=> setIsEmpty!34471 setRes!34471))

(declare-fun b!5341315 () Bool)

(declare-fun res!2265798 () Bool)

(assert (=> b!5341315 (=> res!2265798 e!3316617)))

(assert (=> b!5341315 (= res!2265798 (not (= r!7292 (generalisedConcat!688 (exprs!4903 (h!67682 zl!343))))))))

(declare-fun b!5341316 () Bool)

(declare-fun res!2265793 () Bool)

(assert (=> b!5341316 (=> res!2265793 e!3316624)))

(assert (=> b!5341316 (= res!2265793 (not (= lt!2177898 (matchZipper!1263 lt!2177920 (t!374574 s!2326)))))))

(assert (=> b!5341317 (= e!3316615 e!3316623)))

(declare-fun res!2265801 () Bool)

(assert (=> b!5341317 (=> res!2265801 e!3316623)))

(assert (=> b!5341317 (= res!2265801 (or (and ((_ is ElementMatch!15019) (regOne!30550 r!7292)) (= (c!929435 (regOne!30550 r!7292)) (h!67681 s!2326))) ((_ is Union!15019) (regOne!30550 r!7292))))))

(declare-fun lt!2177922 () Unit!153594)

(assert (=> b!5341317 (= lt!2177922 e!3316626)))

(declare-fun c!929434 () Bool)

(assert (=> b!5341317 (= c!929434 (nullable!5188 (h!67680 (exprs!4903 (h!67682 zl!343)))))))

(assert (=> b!5341317 (= (flatMap!746 z!1189 lambda!273813) (derivationStepZipperUp!391 (h!67682 zl!343) (h!67681 s!2326)))))

(declare-fun lt!2177914 () Unit!153594)

(assert (=> b!5341317 (= lt!2177914 (lemmaFlatMapOnSingletonSet!278 z!1189 (h!67682 zl!343) lambda!273813))))

(declare-fun lt!2177902 () Context!8806)

(assert (=> b!5341317 (= lt!2177911 (derivationStepZipperUp!391 lt!2177902 (h!67681 s!2326)))))

(assert (=> b!5341317 (= lt!2177908 (derivationStepZipperDown!467 (h!67680 (exprs!4903 (h!67682 zl!343))) lt!2177902 (h!67681 s!2326)))))

(assert (=> b!5341317 (= lt!2177902 (Context!8807 (t!374573 (exprs!4903 (h!67682 zl!343)))))))

(declare-fun lt!2177892 () (InoxSet Context!8806))

(assert (=> b!5341317 (= lt!2177892 (derivationStepZipperUp!391 (Context!8807 (Cons!61232 (h!67680 (exprs!4903 (h!67682 zl!343))) (t!374573 (exprs!4903 (h!67682 zl!343))))) (h!67681 s!2326)))))

(declare-fun b!5341318 () Bool)

(declare-fun tp!1485105 () Bool)

(assert (=> b!5341318 (= e!3316620 tp!1485105)))

(declare-fun b!5341319 () Bool)

(declare-fun Unit!153597 () Unit!153594)

(assert (=> b!5341319 (= e!3316626 Unit!153597)))

(declare-fun lt!2177919 () Unit!153594)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!256 ((InoxSet Context!8806) (InoxSet Context!8806) List!61357) Unit!153594)

(assert (=> b!5341319 (= lt!2177919 (lemmaZipperConcatMatchesSameAsBothZippers!256 lt!2177908 lt!2177911 (t!374574 s!2326)))))

(declare-fun res!2265800 () Bool)

(assert (=> b!5341319 (= res!2265800 (matchZipper!1263 lt!2177908 (t!374574 s!2326)))))

(assert (=> b!5341319 (=> res!2265800 e!3316619)))

(assert (=> b!5341319 (= (matchZipper!1263 ((_ map or) lt!2177908 lt!2177911) (t!374574 s!2326)) e!3316619)))

(declare-fun b!5341320 () Bool)

(declare-fun res!2265792 () Bool)

(assert (=> b!5341320 (=> res!2265792 e!3316624)))

(assert (=> b!5341320 (= res!2265792 (not (= (exprs!4903 (h!67682 zl!343)) (Cons!61232 (Concat!23864 (regOne!30550 (regOne!30550 r!7292)) (regTwo!30550 (regOne!30550 r!7292))) (t!374573 (exprs!4903 (h!67682 zl!343)))))))))

(declare-fun b!5341321 () Bool)

(declare-fun res!2265808 () Bool)

(assert (=> b!5341321 (=> res!2265808 e!3316624)))

(declare-fun contextDepthTotal!152 (Context!8806) Int)

(assert (=> b!5341321 (= res!2265808 (>= (contextDepthTotal!152 lt!2177912) (contextDepthTotal!152 (h!67682 zl!343))))))

(assert (= (and start!562726 res!2265802) b!5341309))

(assert (= (and b!5341309 res!2265796) b!5341292))

(assert (= (and b!5341292 res!2265807) b!5341298))

(assert (= (and b!5341298 (not res!2265788)) b!5341302))

(assert (= (and b!5341302 (not res!2265795)) b!5341315))

(assert (= (and b!5341315 (not res!2265798)) b!5341297))

(assert (= (and b!5341297 (not res!2265797)) b!5341310))

(assert (= (and b!5341310 (not res!2265811)) b!5341308))

(assert (= (and b!5341308 (not res!2265806)) b!5341313))

(assert (= (and b!5341313 (not res!2265799)) b!5341291))

(assert (= (and b!5341291 (not res!2265803)) b!5341317))

(assert (= (and b!5341317 c!929434) b!5341319))

(assert (= (and b!5341317 (not c!929434)) b!5341307))

(assert (= (and b!5341319 (not res!2265800)) b!5341314))

(assert (= (and b!5341317 (not res!2265801)) b!5341301))

(assert (= (and b!5341301 res!2265794) b!5341306))

(assert (= (and b!5341301 (not res!2265810)) b!5341295))

(assert (= (and b!5341295 (not res!2265789)) b!5341312))

(assert (= (and b!5341312 (not res!2265804)) b!5341304))

(assert (= (and b!5341304 (not res!2265805)) b!5341287))

(assert (= (and b!5341287 (not res!2265787)) b!5341316))

(assert (= (and b!5341316 (not res!2265793)) b!5341320))

(assert (= (and b!5341320 (not res!2265792)) b!5341321))

(assert (= (and b!5341321 (not res!2265808)) b!5341294))

(assert (= (and b!5341294 (not res!2265790)) b!5341289))

(assert (= (and b!5341289 (not res!2265791)) b!5341300))

(assert (= (and b!5341300 (not res!2265809)) b!5341311))

(assert (= (and start!562726 ((_ is ElementMatch!15019) r!7292)) b!5341290))

(assert (= (and start!562726 ((_ is Concat!23864) r!7292)) b!5341303))

(assert (= (and start!562726 ((_ is Star!15019) r!7292)) b!5341305))

(assert (= (and start!562726 ((_ is Union!15019) r!7292)) b!5341299))

(assert (= (and start!562726 condSetEmpty!34471) setIsEmpty!34471))

(assert (= (and start!562726 (not condSetEmpty!34471)) setNonEmpty!34471))

(assert (= setNonEmpty!34471 b!5341318))

(assert (= b!5341288 b!5341293))

(assert (= (and start!562726 ((_ is Cons!61234) zl!343)) b!5341288))

(assert (= (and start!562726 ((_ is Cons!61233) s!2326)) b!5341296))

(declare-fun m!6373540 () Bool)

(assert (=> start!562726 m!6373540))

(declare-fun m!6373542 () Bool)

(assert (=> b!5341317 m!6373542))

(declare-fun m!6373544 () Bool)

(assert (=> b!5341317 m!6373544))

(declare-fun m!6373546 () Bool)

(assert (=> b!5341317 m!6373546))

(declare-fun m!6373548 () Bool)

(assert (=> b!5341317 m!6373548))

(declare-fun m!6373550 () Bool)

(assert (=> b!5341317 m!6373550))

(declare-fun m!6373552 () Bool)

(assert (=> b!5341317 m!6373552))

(declare-fun m!6373554 () Bool)

(assert (=> b!5341317 m!6373554))

(declare-fun m!6373556 () Bool)

(assert (=> b!5341312 m!6373556))

(declare-fun m!6373558 () Bool)

(assert (=> b!5341292 m!6373558))

(declare-fun m!6373560 () Bool)

(assert (=> b!5341306 m!6373560))

(declare-fun m!6373562 () Bool)

(assert (=> b!5341321 m!6373562))

(declare-fun m!6373564 () Bool)

(assert (=> b!5341321 m!6373564))

(declare-fun m!6373566 () Bool)

(assert (=> b!5341309 m!6373566))

(declare-fun m!6373568 () Bool)

(assert (=> b!5341298 m!6373568))

(declare-fun m!6373570 () Bool)

(assert (=> b!5341298 m!6373570))

(declare-fun m!6373572 () Bool)

(assert (=> b!5341298 m!6373572))

(declare-fun m!6373574 () Bool)

(assert (=> b!5341294 m!6373574))

(declare-fun m!6373576 () Bool)

(assert (=> b!5341294 m!6373576))

(declare-fun m!6373578 () Bool)

(assert (=> b!5341289 m!6373578))

(declare-fun m!6373580 () Bool)

(assert (=> b!5341289 m!6373580))

(declare-fun m!6373582 () Bool)

(assert (=> b!5341304 m!6373582))

(declare-fun m!6373584 () Bool)

(assert (=> b!5341304 m!6373584))

(declare-fun m!6373586 () Bool)

(assert (=> b!5341314 m!6373586))

(declare-fun m!6373588 () Bool)

(assert (=> b!5341315 m!6373588))

(declare-fun m!6373590 () Bool)

(assert (=> b!5341310 m!6373590))

(assert (=> b!5341310 m!6373590))

(declare-fun m!6373592 () Bool)

(assert (=> b!5341310 m!6373592))

(declare-fun m!6373594 () Bool)

(assert (=> b!5341316 m!6373594))

(declare-fun m!6373596 () Bool)

(assert (=> b!5341288 m!6373596))

(declare-fun m!6373598 () Bool)

(assert (=> b!5341311 m!6373598))

(declare-fun m!6373600 () Bool)

(assert (=> b!5341287 m!6373600))

(declare-fun m!6373602 () Bool)

(assert (=> b!5341287 m!6373602))

(declare-fun m!6373604 () Bool)

(assert (=> b!5341287 m!6373604))

(declare-fun m!6373606 () Bool)

(assert (=> b!5341287 m!6373606))

(declare-fun m!6373608 () Bool)

(assert (=> b!5341287 m!6373608))

(declare-fun m!6373610 () Bool)

(assert (=> b!5341302 m!6373610))

(declare-fun m!6373612 () Bool)

(assert (=> b!5341313 m!6373612))

(declare-fun m!6373614 () Bool)

(assert (=> b!5341313 m!6373614))

(declare-fun m!6373616 () Bool)

(assert (=> b!5341313 m!6373616))

(declare-fun m!6373618 () Bool)

(assert (=> b!5341313 m!6373618))

(assert (=> b!5341313 m!6373618))

(declare-fun m!6373620 () Bool)

(assert (=> b!5341313 m!6373620))

(assert (=> b!5341313 m!6373614))

(declare-fun m!6373622 () Bool)

(assert (=> b!5341313 m!6373622))

(declare-fun m!6373624 () Bool)

(assert (=> b!5341291 m!6373624))

(declare-fun m!6373626 () Bool)

(assert (=> b!5341319 m!6373626))

(assert (=> b!5341319 m!6373584))

(declare-fun m!6373628 () Bool)

(assert (=> b!5341319 m!6373628))

(declare-fun m!6373630 () Bool)

(assert (=> setNonEmpty!34471 m!6373630))

(declare-fun m!6373632 () Bool)

(assert (=> b!5341300 m!6373632))

(declare-fun m!6373634 () Bool)

(assert (=> b!5341300 m!6373634))

(declare-fun m!6373636 () Bool)

(assert (=> b!5341300 m!6373636))

(declare-fun m!6373638 () Bool)

(assert (=> b!5341300 m!6373638))

(declare-fun m!6373640 () Bool)

(assert (=> b!5341300 m!6373640))

(declare-fun m!6373642 () Bool)

(assert (=> b!5341300 m!6373642))

(declare-fun m!6373644 () Bool)

(assert (=> b!5341300 m!6373644))

(declare-fun m!6373646 () Bool)

(assert (=> b!5341300 m!6373646))

(declare-fun m!6373648 () Bool)

(assert (=> b!5341300 m!6373648))

(declare-fun m!6373650 () Bool)

(assert (=> b!5341300 m!6373650))

(declare-fun m!6373652 () Bool)

(assert (=> b!5341300 m!6373652))

(declare-fun m!6373654 () Bool)

(assert (=> b!5341300 m!6373654))

(declare-fun m!6373656 () Bool)

(assert (=> b!5341300 m!6373656))

(assert (=> b!5341300 m!6373636))

(declare-fun m!6373658 () Bool)

(assert (=> b!5341300 m!6373658))

(declare-fun m!6373660 () Bool)

(assert (=> b!5341300 m!6373660))

(declare-fun m!6373662 () Bool)

(assert (=> b!5341300 m!6373662))

(declare-fun m!6373664 () Bool)

(assert (=> b!5341300 m!6373664))

(assert (=> b!5341300 m!6373660))

(declare-fun m!6373666 () Bool)

(assert (=> b!5341300 m!6373666))

(declare-fun m!6373668 () Bool)

(assert (=> b!5341300 m!6373668))

(declare-fun m!6373670 () Bool)

(assert (=> b!5341300 m!6373670))

(assert (=> b!5341300 m!6373646))

(declare-fun m!6373672 () Bool)

(assert (=> b!5341300 m!6373672))

(declare-fun m!6373674 () Bool)

(assert (=> b!5341300 m!6373674))

(declare-fun m!6373676 () Bool)

(assert (=> b!5341300 m!6373676))

(assert (=> b!5341300 m!6373650))

(declare-fun m!6373678 () Bool)

(assert (=> b!5341300 m!6373678))

(check-sat (not b!5341303) (not b!5341291) (not b!5341294) (not b!5341318) (not b!5341321) (not b!5341298) (not b!5341287) (not b!5341304) (not b!5341316) (not b!5341312) (not b!5341311) (not start!562726) (not b!5341292) (not b!5341315) (not b!5341300) (not b!5341309) tp_is_empty!39291 (not b!5341310) (not setNonEmpty!34471) (not b!5341302) (not b!5341305) (not b!5341317) (not b!5341293) (not b!5341319) (not b!5341314) (not b!5341296) (not b!5341288) (not b!5341299) (not b!5341289) (not b!5341313) (not b!5341306))
(check-sat)
