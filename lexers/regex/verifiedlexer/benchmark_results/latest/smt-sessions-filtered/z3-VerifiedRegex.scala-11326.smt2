; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597656 () Bool)

(assert start!597656)

(declare-fun setIsEmpty!39520 () Bool)

(declare-fun setRes!39520 () Bool)

(assert (=> setIsEmpty!39520 setRes!39520))

(declare-fun b!5836830 () Bool)

(declare-fun e!3580456 () Bool)

(declare-fun tp!1613802 () Bool)

(assert (=> b!5836830 (= e!3580456 tp!1613802)))

(declare-fun b!5836831 () Bool)

(declare-datatypes ((C!32068 0))(
  ( (C!32069 (val!25736 Int)) )
))
(declare-datatypes ((Regex!15899 0))(
  ( (ElementMatch!15899 (c!1034111 C!32068)) (Concat!24744 (regOne!32310 Regex!15899) (regTwo!32310 Regex!15899)) (EmptyExpr!15899) (Star!15899 (reg!16228 Regex!15899)) (EmptyLang!15899) (Union!15899 (regOne!32311 Regex!15899) (regTwo!32311 Regex!15899)) )
))
(declare-datatypes ((List!63996 0))(
  ( (Nil!63872) (Cons!63872 (h!70320 Regex!15899) (t!377351 List!63996)) )
))
(declare-datatypes ((Context!10566 0))(
  ( (Context!10567 (exprs!5783 List!63996)) )
))
(declare-datatypes ((List!63997 0))(
  ( (Nil!63873) (Cons!63873 (h!70321 Context!10566) (t!377352 List!63997)) )
))
(declare-fun zl!343 () List!63997)

(declare-fun tp!1613799 () Bool)

(declare-fun e!3580458 () Bool)

(declare-fun inv!82994 (Context!10566) Bool)

(assert (=> b!5836831 (= e!3580458 (and (inv!82994 (h!70321 zl!343)) e!3580456 tp!1613799))))

(declare-fun b!5836832 () Bool)

(declare-fun e!3580455 () Bool)

(declare-fun tp!1613801 () Bool)

(declare-fun tp!1613805 () Bool)

(assert (=> b!5836832 (= e!3580455 (and tp!1613801 tp!1613805))))

(declare-fun b!5836833 () Bool)

(declare-fun tp_is_empty!41051 () Bool)

(assert (=> b!5836833 (= e!3580455 tp_is_empty!41051)))

(declare-fun b!5836834 () Bool)

(declare-fun res!2459228 () Bool)

(declare-fun e!3580459 () Bool)

(assert (=> b!5836834 (=> res!2459228 e!3580459)))

(declare-fun r!7292 () Regex!15899)

(get-info :version)

(assert (=> b!5836834 (= res!2459228 (or ((_ is EmptyExpr!15899) r!7292) ((_ is EmptyLang!15899) r!7292) ((_ is ElementMatch!15899) r!7292) (not ((_ is Union!15899) r!7292))))))

(declare-fun b!5836835 () Bool)

(declare-fun validRegex!7635 (Regex!15899) Bool)

(assert (=> b!5836835 (= e!3580459 (validRegex!7635 (regTwo!32311 r!7292)))))

(declare-datatypes ((List!63998 0))(
  ( (Nil!63874) (Cons!63874 (h!70322 C!32068) (t!377353 List!63998)) )
))
(declare-fun s!2326 () List!63998)

(declare-fun matchR!8082 (Regex!15899 List!63998) Bool)

(declare-fun matchRSpec!3000 (Regex!15899 List!63998) Bool)

(assert (=> b!5836835 (= (matchR!8082 (regOne!32311 r!7292) s!2326) (matchRSpec!3000 (regOne!32311 r!7292) s!2326))))

(declare-datatypes ((Unit!157069 0))(
  ( (Unit!157070) )
))
(declare-fun lt!2303314 () Unit!157069)

(declare-fun mainMatchTheorem!3000 (Regex!15899 List!63998) Unit!157069)

(assert (=> b!5836835 (= lt!2303314 (mainMatchTheorem!3000 (regOne!32311 r!7292) s!2326))))

(declare-fun b!5836836 () Bool)

(declare-fun res!2459225 () Bool)

(declare-fun e!3580453 () Bool)

(assert (=> b!5836836 (=> (not res!2459225) (not e!3580453))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10566))

(declare-fun toList!9683 ((InoxSet Context!10566)) List!63997)

(assert (=> b!5836836 (= res!2459225 (= (toList!9683 z!1189) zl!343))))

(declare-fun b!5836837 () Bool)

(declare-fun res!2459226 () Bool)

(assert (=> b!5836837 (=> res!2459226 e!3580459)))

(assert (=> b!5836837 (= res!2459226 (not ((_ is Cons!63872) (exprs!5783 (h!70321 zl!343)))))))

(declare-fun b!5836838 () Bool)

(assert (=> b!5836838 (= e!3580453 (not e!3580459))))

(declare-fun res!2459231 () Bool)

(assert (=> b!5836838 (=> res!2459231 e!3580459)))

(assert (=> b!5836838 (= res!2459231 (not ((_ is Cons!63873) zl!343)))))

(assert (=> b!5836838 (= (matchR!8082 r!7292 s!2326) (matchRSpec!3000 r!7292 s!2326))))

(declare-fun lt!2303313 () Unit!157069)

(assert (=> b!5836838 (= lt!2303313 (mainMatchTheorem!3000 r!7292 s!2326))))

(declare-fun b!5836839 () Bool)

(declare-fun res!2459232 () Bool)

(assert (=> b!5836839 (=> res!2459232 e!3580459)))

(declare-fun generalisedUnion!1743 (List!63996) Regex!15899)

(declare-fun unfocusZipperList!1320 (List!63997) List!63996)

(assert (=> b!5836839 (= res!2459232 (not (= r!7292 (generalisedUnion!1743 (unfocusZipperList!1320 zl!343)))))))

(declare-fun b!5836840 () Bool)

(declare-fun res!2459229 () Bool)

(assert (=> b!5836840 (=> res!2459229 e!3580459)))

(declare-fun isEmpty!35738 (List!63997) Bool)

(assert (=> b!5836840 (= res!2459229 (not (isEmpty!35738 (t!377352 zl!343))))))

(declare-fun b!5836841 () Bool)

(declare-fun tp!1613807 () Bool)

(declare-fun tp!1613803 () Bool)

(assert (=> b!5836841 (= e!3580455 (and tp!1613807 tp!1613803))))

(declare-fun b!5836842 () Bool)

(declare-fun tp!1613808 () Bool)

(assert (=> b!5836842 (= e!3580455 tp!1613808)))

(declare-fun b!5836843 () Bool)

(declare-fun e!3580454 () Bool)

(declare-fun tp!1613806 () Bool)

(assert (=> b!5836843 (= e!3580454 tp!1613806)))

(declare-fun res!2459224 () Bool)

(assert (=> start!597656 (=> (not res!2459224) (not e!3580453))))

(assert (=> start!597656 (= res!2459224 (validRegex!7635 r!7292))))

(assert (=> start!597656 e!3580453))

(assert (=> start!597656 e!3580455))

(declare-fun condSetEmpty!39520 () Bool)

(assert (=> start!597656 (= condSetEmpty!39520 (= z!1189 ((as const (Array Context!10566 Bool)) false)))))

(assert (=> start!597656 setRes!39520))

(assert (=> start!597656 e!3580458))

(declare-fun e!3580457 () Bool)

(assert (=> start!597656 e!3580457))

(declare-fun b!5836844 () Bool)

(declare-fun tp!1613800 () Bool)

(assert (=> b!5836844 (= e!3580457 (and tp_is_empty!41051 tp!1613800))))

(declare-fun b!5836845 () Bool)

(declare-fun res!2459230 () Bool)

(assert (=> b!5836845 (=> (not res!2459230) (not e!3580453))))

(declare-fun unfocusZipper!1641 (List!63997) Regex!15899)

(assert (=> b!5836845 (= res!2459230 (= r!7292 (unfocusZipper!1641 zl!343)))))

(declare-fun b!5836846 () Bool)

(declare-fun res!2459227 () Bool)

(assert (=> b!5836846 (=> res!2459227 e!3580459)))

(declare-fun generalisedConcat!1496 (List!63996) Regex!15899)

(assert (=> b!5836846 (= res!2459227 (not (= r!7292 (generalisedConcat!1496 (exprs!5783 (h!70321 zl!343))))))))

(declare-fun tp!1613804 () Bool)

(declare-fun setElem!39520 () Context!10566)

(declare-fun setNonEmpty!39520 () Bool)

(assert (=> setNonEmpty!39520 (= setRes!39520 (and tp!1613804 (inv!82994 setElem!39520) e!3580454))))

(declare-fun setRest!39520 () (InoxSet Context!10566))

(assert (=> setNonEmpty!39520 (= z!1189 ((_ map or) (store ((as const (Array Context!10566 Bool)) false) setElem!39520 true) setRest!39520))))

(assert (= (and start!597656 res!2459224) b!5836836))

(assert (= (and b!5836836 res!2459225) b!5836845))

(assert (= (and b!5836845 res!2459230) b!5836838))

(assert (= (and b!5836838 (not res!2459231)) b!5836840))

(assert (= (and b!5836840 (not res!2459229)) b!5836846))

(assert (= (and b!5836846 (not res!2459227)) b!5836837))

(assert (= (and b!5836837 (not res!2459226)) b!5836839))

(assert (= (and b!5836839 (not res!2459232)) b!5836834))

(assert (= (and b!5836834 (not res!2459228)) b!5836835))

(assert (= (and start!597656 ((_ is ElementMatch!15899) r!7292)) b!5836833))

(assert (= (and start!597656 ((_ is Concat!24744) r!7292)) b!5836832))

(assert (= (and start!597656 ((_ is Star!15899) r!7292)) b!5836842))

(assert (= (and start!597656 ((_ is Union!15899) r!7292)) b!5836841))

(assert (= (and start!597656 condSetEmpty!39520) setIsEmpty!39520))

(assert (= (and start!597656 (not condSetEmpty!39520)) setNonEmpty!39520))

(assert (= setNonEmpty!39520 b!5836843))

(assert (= b!5836831 b!5836830))

(assert (= (and start!597656 ((_ is Cons!63873) zl!343)) b!5836831))

(assert (= (and start!597656 ((_ is Cons!63874) s!2326)) b!5836844))

(declare-fun m!6763044 () Bool)

(assert (=> b!5836839 m!6763044))

(assert (=> b!5836839 m!6763044))

(declare-fun m!6763046 () Bool)

(assert (=> b!5836839 m!6763046))

(declare-fun m!6763048 () Bool)

(assert (=> b!5836835 m!6763048))

(declare-fun m!6763050 () Bool)

(assert (=> b!5836835 m!6763050))

(declare-fun m!6763052 () Bool)

(assert (=> b!5836835 m!6763052))

(declare-fun m!6763054 () Bool)

(assert (=> b!5836835 m!6763054))

(declare-fun m!6763056 () Bool)

(assert (=> b!5836840 m!6763056))

(declare-fun m!6763058 () Bool)

(assert (=> b!5836845 m!6763058))

(declare-fun m!6763060 () Bool)

(assert (=> b!5836838 m!6763060))

(declare-fun m!6763062 () Bool)

(assert (=> b!5836838 m!6763062))

(declare-fun m!6763064 () Bool)

(assert (=> b!5836838 m!6763064))

(declare-fun m!6763066 () Bool)

(assert (=> setNonEmpty!39520 m!6763066))

(declare-fun m!6763068 () Bool)

(assert (=> b!5836846 m!6763068))

(declare-fun m!6763070 () Bool)

(assert (=> b!5836836 m!6763070))

(declare-fun m!6763072 () Bool)

(assert (=> start!597656 m!6763072))

(declare-fun m!6763074 () Bool)

(assert (=> b!5836831 m!6763074))

(check-sat (not b!5836839) (not b!5836846) (not b!5836844) (not b!5836845) (not b!5836832) (not b!5836838) (not b!5836836) (not b!5836843) (not b!5836841) tp_is_empty!41051 (not setNonEmpty!39520) (not b!5836830) (not b!5836831) (not b!5836842) (not b!5836835) (not b!5836840) (not start!597656))
(check-sat)
(get-model)

(declare-fun d!1834469 () Bool)

(declare-fun lambda!319330 () Int)

(declare-fun forall!14990 (List!63996 Int) Bool)

(assert (=> d!1834469 (= (inv!82994 setElem!39520) (forall!14990 (exprs!5783 setElem!39520) lambda!319330))))

(declare-fun bs!1375443 () Bool)

(assert (= bs!1375443 d!1834469))

(declare-fun m!6763184 () Bool)

(assert (=> bs!1375443 m!6763184))

(assert (=> setNonEmpty!39520 d!1834469))

(declare-fun bs!1375444 () Bool)

(declare-fun d!1834503 () Bool)

(assert (= bs!1375444 (and d!1834503 d!1834469)))

(declare-fun lambda!319331 () Int)

(assert (=> bs!1375444 (= lambda!319331 lambda!319330)))

(assert (=> d!1834503 (= (inv!82994 (h!70321 zl!343)) (forall!14990 (exprs!5783 (h!70321 zl!343)) lambda!319331))))

(declare-fun bs!1375445 () Bool)

(assert (= bs!1375445 d!1834503))

(declare-fun m!6763186 () Bool)

(assert (=> bs!1375445 m!6763186))

(assert (=> b!5836831 d!1834503))

(declare-fun d!1834505 () Bool)

(declare-fun e!3580615 () Bool)

(assert (=> d!1834505 e!3580615))

(declare-fun res!2459324 () Bool)

(assert (=> d!1834505 (=> (not res!2459324) (not e!3580615))))

(declare-fun lt!2303340 () List!63997)

(declare-fun noDuplicate!1767 (List!63997) Bool)

(assert (=> d!1834505 (= res!2459324 (noDuplicate!1767 lt!2303340))))

(declare-fun choose!44321 ((InoxSet Context!10566)) List!63997)

(assert (=> d!1834505 (= lt!2303340 (choose!44321 z!1189))))

(assert (=> d!1834505 (= (toList!9683 z!1189) lt!2303340)))

(declare-fun b!5837122 () Bool)

(declare-fun content!11732 (List!63997) (InoxSet Context!10566))

(assert (=> b!5837122 (= e!3580615 (= (content!11732 lt!2303340) z!1189))))

(assert (= (and d!1834505 res!2459324) b!5837122))

(declare-fun m!6763188 () Bool)

(assert (=> d!1834505 m!6763188))

(declare-fun m!6763190 () Bool)

(assert (=> d!1834505 m!6763190))

(declare-fun m!6763192 () Bool)

(assert (=> b!5837122 m!6763192))

(assert (=> b!5836836 d!1834505))

(declare-fun b!5837141 () Bool)

(declare-fun e!3580632 () Bool)

(declare-fun e!3580633 () Bool)

(assert (=> b!5837141 (= e!3580632 e!3580633)))

(declare-fun res!2459336 () Bool)

(assert (=> b!5837141 (=> (not res!2459336) (not e!3580633))))

(declare-fun call!455846 () Bool)

(assert (=> b!5837141 (= res!2459336 call!455846)))

(declare-fun b!5837142 () Bool)

(declare-fun e!3580631 () Bool)

(declare-fun e!3580630 () Bool)

(assert (=> b!5837142 (= e!3580631 e!3580630)))

(declare-fun c!1034179 () Bool)

(assert (=> b!5837142 (= c!1034179 ((_ is Star!15899) r!7292))))

(declare-fun d!1834507 () Bool)

(declare-fun res!2459339 () Bool)

(assert (=> d!1834507 (=> res!2459339 e!3580631)))

(assert (=> d!1834507 (= res!2459339 ((_ is ElementMatch!15899) r!7292))))

(assert (=> d!1834507 (= (validRegex!7635 r!7292) e!3580631)))

(declare-fun bm!455840 () Bool)

(declare-fun call!455845 () Bool)

(declare-fun c!1034180 () Bool)

(assert (=> bm!455840 (= call!455845 (validRegex!7635 (ite c!1034180 (regTwo!32311 r!7292) (regTwo!32310 r!7292))))))

(declare-fun b!5837143 () Bool)

(declare-fun res!2459335 () Bool)

(declare-fun e!3580635 () Bool)

(assert (=> b!5837143 (=> (not res!2459335) (not e!3580635))))

(assert (=> b!5837143 (= res!2459335 call!455846)))

(declare-fun e!3580636 () Bool)

(assert (=> b!5837143 (= e!3580636 e!3580635)))

(declare-fun bm!455841 () Bool)

(declare-fun call!455847 () Bool)

(assert (=> bm!455841 (= call!455847 (validRegex!7635 (ite c!1034179 (reg!16228 r!7292) (ite c!1034180 (regOne!32311 r!7292) (regOne!32310 r!7292)))))))

(declare-fun b!5837144 () Bool)

(declare-fun res!2459338 () Bool)

(assert (=> b!5837144 (=> res!2459338 e!3580632)))

(assert (=> b!5837144 (= res!2459338 (not ((_ is Concat!24744) r!7292)))))

(assert (=> b!5837144 (= e!3580636 e!3580632)))

(declare-fun b!5837145 () Bool)

(assert (=> b!5837145 (= e!3580630 e!3580636)))

(assert (=> b!5837145 (= c!1034180 ((_ is Union!15899) r!7292))))

(declare-fun bm!455842 () Bool)

(assert (=> bm!455842 (= call!455846 call!455847)))

(declare-fun b!5837146 () Bool)

(declare-fun e!3580634 () Bool)

(assert (=> b!5837146 (= e!3580630 e!3580634)))

(declare-fun res!2459337 () Bool)

(declare-fun nullable!5901 (Regex!15899) Bool)

(assert (=> b!5837146 (= res!2459337 (not (nullable!5901 (reg!16228 r!7292))))))

(assert (=> b!5837146 (=> (not res!2459337) (not e!3580634))))

(declare-fun b!5837147 () Bool)

(assert (=> b!5837147 (= e!3580634 call!455847)))

(declare-fun b!5837148 () Bool)

(assert (=> b!5837148 (= e!3580635 call!455845)))

(declare-fun b!5837149 () Bool)

(assert (=> b!5837149 (= e!3580633 call!455845)))

(assert (= (and d!1834507 (not res!2459339)) b!5837142))

(assert (= (and b!5837142 c!1034179) b!5837146))

(assert (= (and b!5837142 (not c!1034179)) b!5837145))

(assert (= (and b!5837146 res!2459337) b!5837147))

(assert (= (and b!5837145 c!1034180) b!5837143))

(assert (= (and b!5837145 (not c!1034180)) b!5837144))

(assert (= (and b!5837143 res!2459335) b!5837148))

(assert (= (and b!5837144 (not res!2459338)) b!5837141))

(assert (= (and b!5837141 res!2459336) b!5837149))

(assert (= (or b!5837148 b!5837149) bm!455840))

(assert (= (or b!5837143 b!5837141) bm!455842))

(assert (= (or b!5837147 bm!455842) bm!455841))

(declare-fun m!6763194 () Bool)

(assert (=> bm!455840 m!6763194))

(declare-fun m!6763196 () Bool)

(assert (=> bm!455841 m!6763196))

(declare-fun m!6763198 () Bool)

(assert (=> b!5837146 m!6763198))

(assert (=> start!597656 d!1834507))

(declare-fun bs!1375446 () Bool)

(declare-fun d!1834509 () Bool)

(assert (= bs!1375446 (and d!1834509 d!1834469)))

(declare-fun lambda!319334 () Int)

(assert (=> bs!1375446 (= lambda!319334 lambda!319330)))

(declare-fun bs!1375447 () Bool)

(assert (= bs!1375447 (and d!1834509 d!1834503)))

(assert (=> bs!1375447 (= lambda!319334 lambda!319331)))

(declare-fun e!3580654 () Bool)

(assert (=> d!1834509 e!3580654))

(declare-fun res!2459345 () Bool)

(assert (=> d!1834509 (=> (not res!2459345) (not e!3580654))))

(declare-fun lt!2303343 () Regex!15899)

(assert (=> d!1834509 (= res!2459345 (validRegex!7635 lt!2303343))))

(declare-fun e!3580649 () Regex!15899)

(assert (=> d!1834509 (= lt!2303343 e!3580649)))

(declare-fun c!1034192 () Bool)

(declare-fun e!3580651 () Bool)

(assert (=> d!1834509 (= c!1034192 e!3580651)))

(declare-fun res!2459344 () Bool)

(assert (=> d!1834509 (=> (not res!2459344) (not e!3580651))))

(assert (=> d!1834509 (= res!2459344 ((_ is Cons!63872) (exprs!5783 (h!70321 zl!343))))))

(assert (=> d!1834509 (forall!14990 (exprs!5783 (h!70321 zl!343)) lambda!319334)))

(assert (=> d!1834509 (= (generalisedConcat!1496 (exprs!5783 (h!70321 zl!343))) lt!2303343)))

(declare-fun b!5837170 () Bool)

(declare-fun isEmpty!35741 (List!63996) Bool)

(assert (=> b!5837170 (= e!3580651 (isEmpty!35741 (t!377351 (exprs!5783 (h!70321 zl!343)))))))

(declare-fun b!5837171 () Bool)

(declare-fun e!3580653 () Bool)

(declare-fun e!3580652 () Bool)

(assert (=> b!5837171 (= e!3580653 e!3580652)))

(declare-fun c!1034191 () Bool)

(declare-fun tail!11445 (List!63996) List!63996)

(assert (=> b!5837171 (= c!1034191 (isEmpty!35741 (tail!11445 (exprs!5783 (h!70321 zl!343)))))))

(declare-fun b!5837172 () Bool)

(declare-fun e!3580650 () Regex!15899)

(assert (=> b!5837172 (= e!3580650 EmptyExpr!15899)))

(declare-fun b!5837173 () Bool)

(assert (=> b!5837173 (= e!3580650 (Concat!24744 (h!70320 (exprs!5783 (h!70321 zl!343))) (generalisedConcat!1496 (t!377351 (exprs!5783 (h!70321 zl!343))))))))

(declare-fun b!5837174 () Bool)

(declare-fun isEmptyExpr!1338 (Regex!15899) Bool)

(assert (=> b!5837174 (= e!3580653 (isEmptyExpr!1338 lt!2303343))))

(declare-fun b!5837175 () Bool)

(declare-fun head!12360 (List!63996) Regex!15899)

(assert (=> b!5837175 (= e!3580652 (= lt!2303343 (head!12360 (exprs!5783 (h!70321 zl!343)))))))

(declare-fun b!5837176 () Bool)

(assert (=> b!5837176 (= e!3580649 e!3580650)))

(declare-fun c!1034190 () Bool)

(assert (=> b!5837176 (= c!1034190 ((_ is Cons!63872) (exprs!5783 (h!70321 zl!343))))))

(declare-fun b!5837177 () Bool)

(assert (=> b!5837177 (= e!3580654 e!3580653)))

(declare-fun c!1034189 () Bool)

(assert (=> b!5837177 (= c!1034189 (isEmpty!35741 (exprs!5783 (h!70321 zl!343))))))

(declare-fun b!5837178 () Bool)

(declare-fun isConcat!861 (Regex!15899) Bool)

(assert (=> b!5837178 (= e!3580652 (isConcat!861 lt!2303343))))

(declare-fun b!5837179 () Bool)

(assert (=> b!5837179 (= e!3580649 (h!70320 (exprs!5783 (h!70321 zl!343))))))

(assert (= (and d!1834509 res!2459344) b!5837170))

(assert (= (and d!1834509 c!1034192) b!5837179))

(assert (= (and d!1834509 (not c!1034192)) b!5837176))

(assert (= (and b!5837176 c!1034190) b!5837173))

(assert (= (and b!5837176 (not c!1034190)) b!5837172))

(assert (= (and d!1834509 res!2459345) b!5837177))

(assert (= (and b!5837177 c!1034189) b!5837174))

(assert (= (and b!5837177 (not c!1034189)) b!5837171))

(assert (= (and b!5837171 c!1034191) b!5837175))

(assert (= (and b!5837171 (not c!1034191)) b!5837178))

(declare-fun m!6763200 () Bool)

(assert (=> b!5837175 m!6763200))

(declare-fun m!6763202 () Bool)

(assert (=> b!5837171 m!6763202))

(assert (=> b!5837171 m!6763202))

(declare-fun m!6763204 () Bool)

(assert (=> b!5837171 m!6763204))

(declare-fun m!6763206 () Bool)

(assert (=> b!5837173 m!6763206))

(declare-fun m!6763208 () Bool)

(assert (=> b!5837177 m!6763208))

(declare-fun m!6763210 () Bool)

(assert (=> d!1834509 m!6763210))

(declare-fun m!6763212 () Bool)

(assert (=> d!1834509 m!6763212))

(declare-fun m!6763214 () Bool)

(assert (=> b!5837174 m!6763214))

(declare-fun m!6763216 () Bool)

(assert (=> b!5837170 m!6763216))

(declare-fun m!6763218 () Bool)

(assert (=> b!5837178 m!6763218))

(assert (=> b!5836846 d!1834509))

(declare-fun b!5837180 () Bool)

(declare-fun e!3580657 () Bool)

(declare-fun e!3580658 () Bool)

(assert (=> b!5837180 (= e!3580657 e!3580658)))

(declare-fun res!2459347 () Bool)

(assert (=> b!5837180 (=> (not res!2459347) (not e!3580658))))

(declare-fun call!455849 () Bool)

(assert (=> b!5837180 (= res!2459347 call!455849)))

(declare-fun b!5837181 () Bool)

(declare-fun e!3580656 () Bool)

(declare-fun e!3580655 () Bool)

(assert (=> b!5837181 (= e!3580656 e!3580655)))

(declare-fun c!1034193 () Bool)

(assert (=> b!5837181 (= c!1034193 ((_ is Star!15899) (regTwo!32311 r!7292)))))

(declare-fun d!1834511 () Bool)

(declare-fun res!2459350 () Bool)

(assert (=> d!1834511 (=> res!2459350 e!3580656)))

(assert (=> d!1834511 (= res!2459350 ((_ is ElementMatch!15899) (regTwo!32311 r!7292)))))

(assert (=> d!1834511 (= (validRegex!7635 (regTwo!32311 r!7292)) e!3580656)))

(declare-fun bm!455843 () Bool)

(declare-fun call!455848 () Bool)

(declare-fun c!1034194 () Bool)

(assert (=> bm!455843 (= call!455848 (validRegex!7635 (ite c!1034194 (regTwo!32311 (regTwo!32311 r!7292)) (regTwo!32310 (regTwo!32311 r!7292)))))))

(declare-fun b!5837182 () Bool)

(declare-fun res!2459346 () Bool)

(declare-fun e!3580660 () Bool)

(assert (=> b!5837182 (=> (not res!2459346) (not e!3580660))))

(assert (=> b!5837182 (= res!2459346 call!455849)))

(declare-fun e!3580661 () Bool)

(assert (=> b!5837182 (= e!3580661 e!3580660)))

(declare-fun bm!455844 () Bool)

(declare-fun call!455850 () Bool)

(assert (=> bm!455844 (= call!455850 (validRegex!7635 (ite c!1034193 (reg!16228 (regTwo!32311 r!7292)) (ite c!1034194 (regOne!32311 (regTwo!32311 r!7292)) (regOne!32310 (regTwo!32311 r!7292))))))))

(declare-fun b!5837183 () Bool)

(declare-fun res!2459349 () Bool)

(assert (=> b!5837183 (=> res!2459349 e!3580657)))

(assert (=> b!5837183 (= res!2459349 (not ((_ is Concat!24744) (regTwo!32311 r!7292))))))

(assert (=> b!5837183 (= e!3580661 e!3580657)))

(declare-fun b!5837184 () Bool)

(assert (=> b!5837184 (= e!3580655 e!3580661)))

(assert (=> b!5837184 (= c!1034194 ((_ is Union!15899) (regTwo!32311 r!7292)))))

(declare-fun bm!455845 () Bool)

(assert (=> bm!455845 (= call!455849 call!455850)))

(declare-fun b!5837185 () Bool)

(declare-fun e!3580659 () Bool)

(assert (=> b!5837185 (= e!3580655 e!3580659)))

(declare-fun res!2459348 () Bool)

(assert (=> b!5837185 (= res!2459348 (not (nullable!5901 (reg!16228 (regTwo!32311 r!7292)))))))

(assert (=> b!5837185 (=> (not res!2459348) (not e!3580659))))

(declare-fun b!5837186 () Bool)

(assert (=> b!5837186 (= e!3580659 call!455850)))

(declare-fun b!5837187 () Bool)

(assert (=> b!5837187 (= e!3580660 call!455848)))

(declare-fun b!5837188 () Bool)

(assert (=> b!5837188 (= e!3580658 call!455848)))

(assert (= (and d!1834511 (not res!2459350)) b!5837181))

(assert (= (and b!5837181 c!1034193) b!5837185))

(assert (= (and b!5837181 (not c!1034193)) b!5837184))

(assert (= (and b!5837185 res!2459348) b!5837186))

(assert (= (and b!5837184 c!1034194) b!5837182))

(assert (= (and b!5837184 (not c!1034194)) b!5837183))

(assert (= (and b!5837182 res!2459346) b!5837187))

(assert (= (and b!5837183 (not res!2459349)) b!5837180))

(assert (= (and b!5837180 res!2459347) b!5837188))

(assert (= (or b!5837187 b!5837188) bm!455843))

(assert (= (or b!5837182 b!5837180) bm!455845))

(assert (= (or b!5837186 bm!455845) bm!455844))

(declare-fun m!6763220 () Bool)

(assert (=> bm!455843 m!6763220))

(declare-fun m!6763222 () Bool)

(assert (=> bm!455844 m!6763222))

(declare-fun m!6763224 () Bool)

(assert (=> b!5837185 m!6763224))

(assert (=> b!5836835 d!1834511))

(declare-fun b!5837217 () Bool)

(declare-fun e!3580681 () Bool)

(declare-fun e!3580682 () Bool)

(assert (=> b!5837217 (= e!3580681 e!3580682)))

(declare-fun c!1034201 () Bool)

(assert (=> b!5837217 (= c!1034201 ((_ is EmptyLang!15899) (regOne!32311 r!7292)))))

(declare-fun b!5837219 () Bool)

(declare-fun lt!2303346 () Bool)

(assert (=> b!5837219 (= e!3580682 (not lt!2303346))))

(declare-fun b!5837220 () Bool)

(declare-fun e!3580680 () Bool)

(declare-fun e!3580678 () Bool)

(assert (=> b!5837220 (= e!3580680 e!3580678)))

(declare-fun res!2459368 () Bool)

(assert (=> b!5837220 (=> res!2459368 e!3580678)))

(declare-fun call!455853 () Bool)

(assert (=> b!5837220 (= res!2459368 call!455853)))

(declare-fun b!5837221 () Bool)

(declare-fun e!3580679 () Bool)

(assert (=> b!5837221 (= e!3580679 (nullable!5901 (regOne!32311 r!7292)))))

(declare-fun b!5837222 () Bool)

(declare-fun res!2459367 () Bool)

(declare-fun e!3580677 () Bool)

(assert (=> b!5837222 (=> res!2459367 e!3580677)))

(assert (=> b!5837222 (= res!2459367 (not ((_ is ElementMatch!15899) (regOne!32311 r!7292))))))

(assert (=> b!5837222 (= e!3580682 e!3580677)))

(declare-fun b!5837223 () Bool)

(declare-fun res!2459370 () Bool)

(declare-fun e!3580676 () Bool)

(assert (=> b!5837223 (=> (not res!2459370) (not e!3580676))))

(assert (=> b!5837223 (= res!2459370 (not call!455853))))

(declare-fun b!5837224 () Bool)

(declare-fun res!2459369 () Bool)

(assert (=> b!5837224 (=> (not res!2459369) (not e!3580676))))

(declare-fun isEmpty!35742 (List!63998) Bool)

(declare-fun tail!11446 (List!63998) List!63998)

(assert (=> b!5837224 (= res!2459369 (isEmpty!35742 (tail!11446 s!2326)))))

(declare-fun b!5837225 () Bool)

(assert (=> b!5837225 (= e!3580677 e!3580680)))

(declare-fun res!2459374 () Bool)

(assert (=> b!5837225 (=> (not res!2459374) (not e!3580680))))

(assert (=> b!5837225 (= res!2459374 (not lt!2303346))))

(declare-fun b!5837226 () Bool)

(assert (=> b!5837226 (= e!3580681 (= lt!2303346 call!455853))))

(declare-fun b!5837227 () Bool)

(declare-fun head!12361 (List!63998) C!32068)

(assert (=> b!5837227 (= e!3580678 (not (= (head!12361 s!2326) (c!1034111 (regOne!32311 r!7292)))))))

(declare-fun b!5837228 () Bool)

(assert (=> b!5837228 (= e!3580676 (= (head!12361 s!2326) (c!1034111 (regOne!32311 r!7292))))))

(declare-fun b!5837229 () Bool)

(declare-fun res!2459372 () Bool)

(assert (=> b!5837229 (=> res!2459372 e!3580677)))

(assert (=> b!5837229 (= res!2459372 e!3580676)))

(declare-fun res!2459371 () Bool)

(assert (=> b!5837229 (=> (not res!2459371) (not e!3580676))))

(assert (=> b!5837229 (= res!2459371 lt!2303346)))

(declare-fun d!1834513 () Bool)

(assert (=> d!1834513 e!3580681))

(declare-fun c!1034203 () Bool)

(assert (=> d!1834513 (= c!1034203 ((_ is EmptyExpr!15899) (regOne!32311 r!7292)))))

(assert (=> d!1834513 (= lt!2303346 e!3580679)))

(declare-fun c!1034202 () Bool)

(assert (=> d!1834513 (= c!1034202 (isEmpty!35742 s!2326))))

(assert (=> d!1834513 (validRegex!7635 (regOne!32311 r!7292))))

(assert (=> d!1834513 (= (matchR!8082 (regOne!32311 r!7292) s!2326) lt!2303346)))

(declare-fun b!5837218 () Bool)

(declare-fun res!2459373 () Bool)

(assert (=> b!5837218 (=> res!2459373 e!3580678)))

(assert (=> b!5837218 (= res!2459373 (not (isEmpty!35742 (tail!11446 s!2326))))))

(declare-fun bm!455848 () Bool)

(assert (=> bm!455848 (= call!455853 (isEmpty!35742 s!2326))))

(declare-fun b!5837230 () Bool)

(declare-fun derivativeStep!4641 (Regex!15899 C!32068) Regex!15899)

(assert (=> b!5837230 (= e!3580679 (matchR!8082 (derivativeStep!4641 (regOne!32311 r!7292) (head!12361 s!2326)) (tail!11446 s!2326)))))

(assert (= (and d!1834513 c!1034202) b!5837221))

(assert (= (and d!1834513 (not c!1034202)) b!5837230))

(assert (= (and d!1834513 c!1034203) b!5837226))

(assert (= (and d!1834513 (not c!1034203)) b!5837217))

(assert (= (and b!5837217 c!1034201) b!5837219))

(assert (= (and b!5837217 (not c!1034201)) b!5837222))

(assert (= (and b!5837222 (not res!2459367)) b!5837229))

(assert (= (and b!5837229 res!2459371) b!5837223))

(assert (= (and b!5837223 res!2459370) b!5837224))

(assert (= (and b!5837224 res!2459369) b!5837228))

(assert (= (and b!5837229 (not res!2459372)) b!5837225))

(assert (= (and b!5837225 res!2459374) b!5837220))

(assert (= (and b!5837220 (not res!2459368)) b!5837218))

(assert (= (and b!5837218 (not res!2459373)) b!5837227))

(assert (= (or b!5837226 b!5837220 b!5837223) bm!455848))

(declare-fun m!6763226 () Bool)

(assert (=> bm!455848 m!6763226))

(declare-fun m!6763228 () Bool)

(assert (=> b!5837224 m!6763228))

(assert (=> b!5837224 m!6763228))

(declare-fun m!6763230 () Bool)

(assert (=> b!5837224 m!6763230))

(declare-fun m!6763232 () Bool)

(assert (=> b!5837227 m!6763232))

(assert (=> b!5837218 m!6763228))

(assert (=> b!5837218 m!6763228))

(assert (=> b!5837218 m!6763230))

(assert (=> b!5837230 m!6763232))

(assert (=> b!5837230 m!6763232))

(declare-fun m!6763234 () Bool)

(assert (=> b!5837230 m!6763234))

(assert (=> b!5837230 m!6763228))

(assert (=> b!5837230 m!6763234))

(assert (=> b!5837230 m!6763228))

(declare-fun m!6763236 () Bool)

(assert (=> b!5837230 m!6763236))

(declare-fun m!6763238 () Bool)

(assert (=> b!5837221 m!6763238))

(assert (=> b!5837228 m!6763232))

(assert (=> d!1834513 m!6763226))

(declare-fun m!6763240 () Bool)

(assert (=> d!1834513 m!6763240))

(assert (=> b!5836835 d!1834513))

(declare-fun b!5837271 () Bool)

(assert (=> b!5837271 true))

(assert (=> b!5837271 true))

(declare-fun bs!1375448 () Bool)

(declare-fun b!5837266 () Bool)

(assert (= bs!1375448 (and b!5837266 b!5837271)))

(declare-fun lambda!319340 () Int)

(declare-fun lambda!319339 () Int)

(assert (=> bs!1375448 (not (= lambda!319340 lambda!319339))))

(assert (=> b!5837266 true))

(assert (=> b!5837266 true))

(declare-fun d!1834515 () Bool)

(declare-fun c!1034212 () Bool)

(assert (=> d!1834515 (= c!1034212 ((_ is EmptyExpr!15899) (regOne!32311 r!7292)))))

(declare-fun e!3580704 () Bool)

(assert (=> d!1834515 (= (matchRSpec!3000 (regOne!32311 r!7292) s!2326) e!3580704)))

(declare-fun b!5837263 () Bool)

(declare-fun e!3580701 () Bool)

(declare-fun e!3580706 () Bool)

(assert (=> b!5837263 (= e!3580701 e!3580706)))

(declare-fun res!2459392 () Bool)

(assert (=> b!5837263 (= res!2459392 (matchRSpec!3000 (regOne!32311 (regOne!32311 r!7292)) s!2326))))

(assert (=> b!5837263 (=> res!2459392 e!3580706)))

(declare-fun b!5837264 () Bool)

(declare-fun res!2459391 () Bool)

(declare-fun e!3580705 () Bool)

(assert (=> b!5837264 (=> res!2459391 e!3580705)))

(declare-fun call!455858 () Bool)

(assert (=> b!5837264 (= res!2459391 call!455858)))

(declare-fun e!3580703 () Bool)

(assert (=> b!5837264 (= e!3580703 e!3580705)))

(declare-fun b!5837265 () Bool)

(declare-fun c!1034213 () Bool)

(assert (=> b!5837265 (= c!1034213 ((_ is ElementMatch!15899) (regOne!32311 r!7292)))))

(declare-fun e!3580707 () Bool)

(declare-fun e!3580702 () Bool)

(assert (=> b!5837265 (= e!3580707 e!3580702)))

(declare-fun c!1034215 () Bool)

(declare-fun call!455859 () Bool)

(declare-fun bm!455853 () Bool)

(declare-fun Exists!2975 (Int) Bool)

(assert (=> bm!455853 (= call!455859 (Exists!2975 (ite c!1034215 lambda!319339 lambda!319340)))))

(assert (=> b!5837266 (= e!3580703 call!455859)))

(declare-fun b!5837267 () Bool)

(assert (=> b!5837267 (= e!3580704 e!3580707)))

(declare-fun res!2459393 () Bool)

(assert (=> b!5837267 (= res!2459393 (not ((_ is EmptyLang!15899) (regOne!32311 r!7292))))))

(assert (=> b!5837267 (=> (not res!2459393) (not e!3580707))))

(declare-fun bm!455854 () Bool)

(assert (=> bm!455854 (= call!455858 (isEmpty!35742 s!2326))))

(declare-fun b!5837268 () Bool)

(assert (=> b!5837268 (= e!3580704 call!455858)))

(declare-fun b!5837269 () Bool)

(declare-fun c!1034214 () Bool)

(assert (=> b!5837269 (= c!1034214 ((_ is Union!15899) (regOne!32311 r!7292)))))

(assert (=> b!5837269 (= e!3580702 e!3580701)))

(declare-fun b!5837270 () Bool)

(assert (=> b!5837270 (= e!3580706 (matchRSpec!3000 (regTwo!32311 (regOne!32311 r!7292)) s!2326))))

(assert (=> b!5837271 (= e!3580705 call!455859)))

(declare-fun b!5837272 () Bool)

(assert (=> b!5837272 (= e!3580702 (= s!2326 (Cons!63874 (c!1034111 (regOne!32311 r!7292)) Nil!63874)))))

(declare-fun b!5837273 () Bool)

(assert (=> b!5837273 (= e!3580701 e!3580703)))

(assert (=> b!5837273 (= c!1034215 ((_ is Star!15899) (regOne!32311 r!7292)))))

(assert (= (and d!1834515 c!1034212) b!5837268))

(assert (= (and d!1834515 (not c!1034212)) b!5837267))

(assert (= (and b!5837267 res!2459393) b!5837265))

(assert (= (and b!5837265 c!1034213) b!5837272))

(assert (= (and b!5837265 (not c!1034213)) b!5837269))

(assert (= (and b!5837269 c!1034214) b!5837263))

(assert (= (and b!5837269 (not c!1034214)) b!5837273))

(assert (= (and b!5837263 (not res!2459392)) b!5837270))

(assert (= (and b!5837273 c!1034215) b!5837264))

(assert (= (and b!5837273 (not c!1034215)) b!5837266))

(assert (= (and b!5837264 (not res!2459391)) b!5837271))

(assert (= (or b!5837271 b!5837266) bm!455853))

(assert (= (or b!5837268 b!5837264) bm!455854))

(declare-fun m!6763242 () Bool)

(assert (=> b!5837263 m!6763242))

(declare-fun m!6763244 () Bool)

(assert (=> bm!455853 m!6763244))

(assert (=> bm!455854 m!6763226))

(declare-fun m!6763246 () Bool)

(assert (=> b!5837270 m!6763246))

(assert (=> b!5836835 d!1834515))

(declare-fun d!1834517 () Bool)

(assert (=> d!1834517 (= (matchR!8082 (regOne!32311 r!7292) s!2326) (matchRSpec!3000 (regOne!32311 r!7292) s!2326))))

(declare-fun lt!2303349 () Unit!157069)

(declare-fun choose!44323 (Regex!15899 List!63998) Unit!157069)

(assert (=> d!1834517 (= lt!2303349 (choose!44323 (regOne!32311 r!7292) s!2326))))

(assert (=> d!1834517 (validRegex!7635 (regOne!32311 r!7292))))

(assert (=> d!1834517 (= (mainMatchTheorem!3000 (regOne!32311 r!7292) s!2326) lt!2303349)))

(declare-fun bs!1375449 () Bool)

(assert (= bs!1375449 d!1834517))

(assert (=> bs!1375449 m!6763050))

(assert (=> bs!1375449 m!6763052))

(declare-fun m!6763248 () Bool)

(assert (=> bs!1375449 m!6763248))

(assert (=> bs!1375449 m!6763240))

(assert (=> b!5836835 d!1834517))

(declare-fun d!1834519 () Bool)

(assert (=> d!1834519 (= (isEmpty!35738 (t!377352 zl!343)) ((_ is Nil!63873) (t!377352 zl!343)))))

(assert (=> b!5836840 d!1834519))

(declare-fun d!1834521 () Bool)

(declare-fun lt!2303352 () Regex!15899)

(assert (=> d!1834521 (validRegex!7635 lt!2303352)))

(assert (=> d!1834521 (= lt!2303352 (generalisedUnion!1743 (unfocusZipperList!1320 zl!343)))))

(assert (=> d!1834521 (= (unfocusZipper!1641 zl!343) lt!2303352)))

(declare-fun bs!1375450 () Bool)

(assert (= bs!1375450 d!1834521))

(declare-fun m!6763250 () Bool)

(assert (=> bs!1375450 m!6763250))

(assert (=> bs!1375450 m!6763044))

(assert (=> bs!1375450 m!6763044))

(assert (=> bs!1375450 m!6763046))

(assert (=> b!5836845 d!1834521))

(declare-fun bs!1375451 () Bool)

(declare-fun d!1834523 () Bool)

(assert (= bs!1375451 (and d!1834523 d!1834469)))

(declare-fun lambda!319343 () Int)

(assert (=> bs!1375451 (= lambda!319343 lambda!319330)))

(declare-fun bs!1375452 () Bool)

(assert (= bs!1375452 (and d!1834523 d!1834503)))

(assert (=> bs!1375452 (= lambda!319343 lambda!319331)))

(declare-fun bs!1375453 () Bool)

(assert (= bs!1375453 (and d!1834523 d!1834509)))

(assert (=> bs!1375453 (= lambda!319343 lambda!319334)))

(declare-fun b!5837298 () Bool)

(declare-fun e!3580721 () Bool)

(declare-fun lt!2303355 () Regex!15899)

(assert (=> b!5837298 (= e!3580721 (= lt!2303355 (head!12360 (unfocusZipperList!1320 zl!343))))))

(declare-fun b!5837299 () Bool)

(declare-fun e!3580725 () Bool)

(assert (=> b!5837299 (= e!3580725 e!3580721)))

(declare-fun c!1034226 () Bool)

(assert (=> b!5837299 (= c!1034226 (isEmpty!35741 (tail!11445 (unfocusZipperList!1320 zl!343))))))

(declare-fun b!5837300 () Bool)

(declare-fun e!3580720 () Regex!15899)

(assert (=> b!5837300 (= e!3580720 (h!70320 (unfocusZipperList!1320 zl!343)))))

(declare-fun b!5837302 () Bool)

(declare-fun e!3580724 () Regex!15899)

(assert (=> b!5837302 (= e!3580720 e!3580724)))

(declare-fun c!1034225 () Bool)

(assert (=> b!5837302 (= c!1034225 ((_ is Cons!63872) (unfocusZipperList!1320 zl!343)))))

(declare-fun b!5837303 () Bool)

(declare-fun e!3580722 () Bool)

(assert (=> b!5837303 (= e!3580722 e!3580725)))

(declare-fun c!1034224 () Bool)

(assert (=> b!5837303 (= c!1034224 (isEmpty!35741 (unfocusZipperList!1320 zl!343)))))

(declare-fun b!5837304 () Bool)

(assert (=> b!5837304 (= e!3580724 (Union!15899 (h!70320 (unfocusZipperList!1320 zl!343)) (generalisedUnion!1743 (t!377351 (unfocusZipperList!1320 zl!343)))))))

(declare-fun b!5837305 () Bool)

(declare-fun isUnion!776 (Regex!15899) Bool)

(assert (=> b!5837305 (= e!3580721 (isUnion!776 lt!2303355))))

(declare-fun b!5837306 () Bool)

(declare-fun e!3580723 () Bool)

(assert (=> b!5837306 (= e!3580723 (isEmpty!35741 (t!377351 (unfocusZipperList!1320 zl!343))))))

(declare-fun b!5837307 () Bool)

(assert (=> b!5837307 (= e!3580724 EmptyLang!15899)))

(assert (=> d!1834523 e!3580722))

(declare-fun res!2459399 () Bool)

(assert (=> d!1834523 (=> (not res!2459399) (not e!3580722))))

(assert (=> d!1834523 (= res!2459399 (validRegex!7635 lt!2303355))))

(assert (=> d!1834523 (= lt!2303355 e!3580720)))

(declare-fun c!1034227 () Bool)

(assert (=> d!1834523 (= c!1034227 e!3580723)))

(declare-fun res!2459398 () Bool)

(assert (=> d!1834523 (=> (not res!2459398) (not e!3580723))))

(assert (=> d!1834523 (= res!2459398 ((_ is Cons!63872) (unfocusZipperList!1320 zl!343)))))

(assert (=> d!1834523 (forall!14990 (unfocusZipperList!1320 zl!343) lambda!319343)))

(assert (=> d!1834523 (= (generalisedUnion!1743 (unfocusZipperList!1320 zl!343)) lt!2303355)))

(declare-fun b!5837301 () Bool)

(declare-fun isEmptyLang!1346 (Regex!15899) Bool)

(assert (=> b!5837301 (= e!3580725 (isEmptyLang!1346 lt!2303355))))

(assert (= (and d!1834523 res!2459398) b!5837306))

(assert (= (and d!1834523 c!1034227) b!5837300))

(assert (= (and d!1834523 (not c!1034227)) b!5837302))

(assert (= (and b!5837302 c!1034225) b!5837304))

(assert (= (and b!5837302 (not c!1034225)) b!5837307))

(assert (= (and d!1834523 res!2459399) b!5837303))

(assert (= (and b!5837303 c!1034224) b!5837301))

(assert (= (and b!5837303 (not c!1034224)) b!5837299))

(assert (= (and b!5837299 c!1034226) b!5837298))

(assert (= (and b!5837299 (not c!1034226)) b!5837305))

(assert (=> b!5837299 m!6763044))

(declare-fun m!6763252 () Bool)

(assert (=> b!5837299 m!6763252))

(assert (=> b!5837299 m!6763252))

(declare-fun m!6763254 () Bool)

(assert (=> b!5837299 m!6763254))

(declare-fun m!6763256 () Bool)

(assert (=> b!5837304 m!6763256))

(assert (=> b!5837303 m!6763044))

(declare-fun m!6763258 () Bool)

(assert (=> b!5837303 m!6763258))

(declare-fun m!6763260 () Bool)

(assert (=> b!5837301 m!6763260))

(assert (=> b!5837298 m!6763044))

(declare-fun m!6763262 () Bool)

(assert (=> b!5837298 m!6763262))

(declare-fun m!6763264 () Bool)

(assert (=> b!5837305 m!6763264))

(declare-fun m!6763266 () Bool)

(assert (=> d!1834523 m!6763266))

(assert (=> d!1834523 m!6763044))

(declare-fun m!6763268 () Bool)

(assert (=> d!1834523 m!6763268))

(declare-fun m!6763270 () Bool)

(assert (=> b!5837306 m!6763270))

(assert (=> b!5836839 d!1834523))

(declare-fun bs!1375454 () Bool)

(declare-fun d!1834525 () Bool)

(assert (= bs!1375454 (and d!1834525 d!1834469)))

(declare-fun lambda!319346 () Int)

(assert (=> bs!1375454 (= lambda!319346 lambda!319330)))

(declare-fun bs!1375455 () Bool)

(assert (= bs!1375455 (and d!1834525 d!1834503)))

(assert (=> bs!1375455 (= lambda!319346 lambda!319331)))

(declare-fun bs!1375456 () Bool)

(assert (= bs!1375456 (and d!1834525 d!1834509)))

(assert (=> bs!1375456 (= lambda!319346 lambda!319334)))

(declare-fun bs!1375457 () Bool)

(assert (= bs!1375457 (and d!1834525 d!1834523)))

(assert (=> bs!1375457 (= lambda!319346 lambda!319343)))

(declare-fun lt!2303358 () List!63996)

(assert (=> d!1834525 (forall!14990 lt!2303358 lambda!319346)))

(declare-fun e!3580728 () List!63996)

(assert (=> d!1834525 (= lt!2303358 e!3580728)))

(declare-fun c!1034230 () Bool)

(assert (=> d!1834525 (= c!1034230 ((_ is Cons!63873) zl!343))))

(assert (=> d!1834525 (= (unfocusZipperList!1320 zl!343) lt!2303358)))

(declare-fun b!5837312 () Bool)

(assert (=> b!5837312 (= e!3580728 (Cons!63872 (generalisedConcat!1496 (exprs!5783 (h!70321 zl!343))) (unfocusZipperList!1320 (t!377352 zl!343))))))

(declare-fun b!5837313 () Bool)

(assert (=> b!5837313 (= e!3580728 Nil!63872)))

(assert (= (and d!1834525 c!1034230) b!5837312))

(assert (= (and d!1834525 (not c!1034230)) b!5837313))

(declare-fun m!6763272 () Bool)

(assert (=> d!1834525 m!6763272))

(assert (=> b!5837312 m!6763068))

(declare-fun m!6763274 () Bool)

(assert (=> b!5837312 m!6763274))

(assert (=> b!5836839 d!1834525))

(declare-fun b!5837314 () Bool)

(declare-fun e!3580734 () Bool)

(declare-fun e!3580735 () Bool)

(assert (=> b!5837314 (= e!3580734 e!3580735)))

(declare-fun c!1034231 () Bool)

(assert (=> b!5837314 (= c!1034231 ((_ is EmptyLang!15899) r!7292))))

(declare-fun b!5837316 () Bool)

(declare-fun lt!2303359 () Bool)

(assert (=> b!5837316 (= e!3580735 (not lt!2303359))))

(declare-fun b!5837317 () Bool)

(declare-fun e!3580733 () Bool)

(declare-fun e!3580731 () Bool)

(assert (=> b!5837317 (= e!3580733 e!3580731)))

(declare-fun res!2459401 () Bool)

(assert (=> b!5837317 (=> res!2459401 e!3580731)))

(declare-fun call!455860 () Bool)

(assert (=> b!5837317 (= res!2459401 call!455860)))

(declare-fun b!5837318 () Bool)

(declare-fun e!3580732 () Bool)

(assert (=> b!5837318 (= e!3580732 (nullable!5901 r!7292))))

(declare-fun b!5837319 () Bool)

(declare-fun res!2459400 () Bool)

(declare-fun e!3580730 () Bool)

(assert (=> b!5837319 (=> res!2459400 e!3580730)))

(assert (=> b!5837319 (= res!2459400 (not ((_ is ElementMatch!15899) r!7292)))))

(assert (=> b!5837319 (= e!3580735 e!3580730)))

(declare-fun b!5837320 () Bool)

(declare-fun res!2459403 () Bool)

(declare-fun e!3580729 () Bool)

(assert (=> b!5837320 (=> (not res!2459403) (not e!3580729))))

(assert (=> b!5837320 (= res!2459403 (not call!455860))))

(declare-fun b!5837321 () Bool)

(declare-fun res!2459402 () Bool)

(assert (=> b!5837321 (=> (not res!2459402) (not e!3580729))))

(assert (=> b!5837321 (= res!2459402 (isEmpty!35742 (tail!11446 s!2326)))))

(declare-fun b!5837322 () Bool)

(assert (=> b!5837322 (= e!3580730 e!3580733)))

(declare-fun res!2459407 () Bool)

(assert (=> b!5837322 (=> (not res!2459407) (not e!3580733))))

(assert (=> b!5837322 (= res!2459407 (not lt!2303359))))

(declare-fun b!5837323 () Bool)

(assert (=> b!5837323 (= e!3580734 (= lt!2303359 call!455860))))

(declare-fun b!5837324 () Bool)

(assert (=> b!5837324 (= e!3580731 (not (= (head!12361 s!2326) (c!1034111 r!7292))))))

(declare-fun b!5837325 () Bool)

(assert (=> b!5837325 (= e!3580729 (= (head!12361 s!2326) (c!1034111 r!7292)))))

(declare-fun b!5837326 () Bool)

(declare-fun res!2459405 () Bool)

(assert (=> b!5837326 (=> res!2459405 e!3580730)))

(assert (=> b!5837326 (= res!2459405 e!3580729)))

(declare-fun res!2459404 () Bool)

(assert (=> b!5837326 (=> (not res!2459404) (not e!3580729))))

(assert (=> b!5837326 (= res!2459404 lt!2303359)))

(declare-fun d!1834527 () Bool)

(assert (=> d!1834527 e!3580734))

(declare-fun c!1034233 () Bool)

(assert (=> d!1834527 (= c!1034233 ((_ is EmptyExpr!15899) r!7292))))

(assert (=> d!1834527 (= lt!2303359 e!3580732)))

(declare-fun c!1034232 () Bool)

(assert (=> d!1834527 (= c!1034232 (isEmpty!35742 s!2326))))

(assert (=> d!1834527 (validRegex!7635 r!7292)))

(assert (=> d!1834527 (= (matchR!8082 r!7292 s!2326) lt!2303359)))

(declare-fun b!5837315 () Bool)

(declare-fun res!2459406 () Bool)

(assert (=> b!5837315 (=> res!2459406 e!3580731)))

(assert (=> b!5837315 (= res!2459406 (not (isEmpty!35742 (tail!11446 s!2326))))))

(declare-fun bm!455855 () Bool)

(assert (=> bm!455855 (= call!455860 (isEmpty!35742 s!2326))))

(declare-fun b!5837327 () Bool)

(assert (=> b!5837327 (= e!3580732 (matchR!8082 (derivativeStep!4641 r!7292 (head!12361 s!2326)) (tail!11446 s!2326)))))

(assert (= (and d!1834527 c!1034232) b!5837318))

(assert (= (and d!1834527 (not c!1034232)) b!5837327))

(assert (= (and d!1834527 c!1034233) b!5837323))

(assert (= (and d!1834527 (not c!1034233)) b!5837314))

(assert (= (and b!5837314 c!1034231) b!5837316))

(assert (= (and b!5837314 (not c!1034231)) b!5837319))

(assert (= (and b!5837319 (not res!2459400)) b!5837326))

(assert (= (and b!5837326 res!2459404) b!5837320))

(assert (= (and b!5837320 res!2459403) b!5837321))

(assert (= (and b!5837321 res!2459402) b!5837325))

(assert (= (and b!5837326 (not res!2459405)) b!5837322))

(assert (= (and b!5837322 res!2459407) b!5837317))

(assert (= (and b!5837317 (not res!2459401)) b!5837315))

(assert (= (and b!5837315 (not res!2459406)) b!5837324))

(assert (= (or b!5837323 b!5837317 b!5837320) bm!455855))

(assert (=> bm!455855 m!6763226))

(assert (=> b!5837321 m!6763228))

(assert (=> b!5837321 m!6763228))

(assert (=> b!5837321 m!6763230))

(assert (=> b!5837324 m!6763232))

(assert (=> b!5837315 m!6763228))

(assert (=> b!5837315 m!6763228))

(assert (=> b!5837315 m!6763230))

(assert (=> b!5837327 m!6763232))

(assert (=> b!5837327 m!6763232))

(declare-fun m!6763276 () Bool)

(assert (=> b!5837327 m!6763276))

(assert (=> b!5837327 m!6763228))

(assert (=> b!5837327 m!6763276))

(assert (=> b!5837327 m!6763228))

(declare-fun m!6763278 () Bool)

(assert (=> b!5837327 m!6763278))

(declare-fun m!6763280 () Bool)

(assert (=> b!5837318 m!6763280))

(assert (=> b!5837325 m!6763232))

(assert (=> d!1834527 m!6763226))

(assert (=> d!1834527 m!6763072))

(assert (=> b!5836838 d!1834527))

(declare-fun bs!1375458 () Bool)

(declare-fun b!5837336 () Bool)

(assert (= bs!1375458 (and b!5837336 b!5837271)))

(declare-fun lambda!319347 () Int)

(assert (=> bs!1375458 (= (and (= (reg!16228 r!7292) (reg!16228 (regOne!32311 r!7292))) (= r!7292 (regOne!32311 r!7292))) (= lambda!319347 lambda!319339))))

(declare-fun bs!1375459 () Bool)

(assert (= bs!1375459 (and b!5837336 b!5837266)))

(assert (=> bs!1375459 (not (= lambda!319347 lambda!319340))))

(assert (=> b!5837336 true))

(assert (=> b!5837336 true))

(declare-fun bs!1375460 () Bool)

(declare-fun b!5837331 () Bool)

(assert (= bs!1375460 (and b!5837331 b!5837271)))

(declare-fun lambda!319348 () Int)

(assert (=> bs!1375460 (not (= lambda!319348 lambda!319339))))

(declare-fun bs!1375461 () Bool)

(assert (= bs!1375461 (and b!5837331 b!5837266)))

(assert (=> bs!1375461 (= (and (= (regOne!32310 r!7292) (regOne!32310 (regOne!32311 r!7292))) (= (regTwo!32310 r!7292) (regTwo!32310 (regOne!32311 r!7292)))) (= lambda!319348 lambda!319340))))

(declare-fun bs!1375462 () Bool)

(assert (= bs!1375462 (and b!5837331 b!5837336)))

(assert (=> bs!1375462 (not (= lambda!319348 lambda!319347))))

(assert (=> b!5837331 true))

(assert (=> b!5837331 true))

(declare-fun d!1834529 () Bool)

(declare-fun c!1034234 () Bool)

(assert (=> d!1834529 (= c!1034234 ((_ is EmptyExpr!15899) r!7292))))

(declare-fun e!3580739 () Bool)

(assert (=> d!1834529 (= (matchRSpec!3000 r!7292 s!2326) e!3580739)))

(declare-fun b!5837328 () Bool)

(declare-fun e!3580736 () Bool)

(declare-fun e!3580741 () Bool)

(assert (=> b!5837328 (= e!3580736 e!3580741)))

(declare-fun res!2459409 () Bool)

(assert (=> b!5837328 (= res!2459409 (matchRSpec!3000 (regOne!32311 r!7292) s!2326))))

(assert (=> b!5837328 (=> res!2459409 e!3580741)))

(declare-fun b!5837329 () Bool)

(declare-fun res!2459408 () Bool)

(declare-fun e!3580740 () Bool)

(assert (=> b!5837329 (=> res!2459408 e!3580740)))

(declare-fun call!455861 () Bool)

(assert (=> b!5837329 (= res!2459408 call!455861)))

(declare-fun e!3580738 () Bool)

(assert (=> b!5837329 (= e!3580738 e!3580740)))

(declare-fun b!5837330 () Bool)

(declare-fun c!1034235 () Bool)

(assert (=> b!5837330 (= c!1034235 ((_ is ElementMatch!15899) r!7292))))

(declare-fun e!3580742 () Bool)

(declare-fun e!3580737 () Bool)

(assert (=> b!5837330 (= e!3580742 e!3580737)))

(declare-fun call!455862 () Bool)

(declare-fun bm!455856 () Bool)

(declare-fun c!1034237 () Bool)

(assert (=> bm!455856 (= call!455862 (Exists!2975 (ite c!1034237 lambda!319347 lambda!319348)))))

(assert (=> b!5837331 (= e!3580738 call!455862)))

(declare-fun b!5837332 () Bool)

(assert (=> b!5837332 (= e!3580739 e!3580742)))

(declare-fun res!2459410 () Bool)

(assert (=> b!5837332 (= res!2459410 (not ((_ is EmptyLang!15899) r!7292)))))

(assert (=> b!5837332 (=> (not res!2459410) (not e!3580742))))

(declare-fun bm!455857 () Bool)

(assert (=> bm!455857 (= call!455861 (isEmpty!35742 s!2326))))

(declare-fun b!5837333 () Bool)

(assert (=> b!5837333 (= e!3580739 call!455861)))

(declare-fun b!5837334 () Bool)

(declare-fun c!1034236 () Bool)

(assert (=> b!5837334 (= c!1034236 ((_ is Union!15899) r!7292))))

(assert (=> b!5837334 (= e!3580737 e!3580736)))

(declare-fun b!5837335 () Bool)

(assert (=> b!5837335 (= e!3580741 (matchRSpec!3000 (regTwo!32311 r!7292) s!2326))))

(assert (=> b!5837336 (= e!3580740 call!455862)))

(declare-fun b!5837337 () Bool)

(assert (=> b!5837337 (= e!3580737 (= s!2326 (Cons!63874 (c!1034111 r!7292) Nil!63874)))))

(declare-fun b!5837338 () Bool)

(assert (=> b!5837338 (= e!3580736 e!3580738)))

(assert (=> b!5837338 (= c!1034237 ((_ is Star!15899) r!7292))))

(assert (= (and d!1834529 c!1034234) b!5837333))

(assert (= (and d!1834529 (not c!1034234)) b!5837332))

(assert (= (and b!5837332 res!2459410) b!5837330))

(assert (= (and b!5837330 c!1034235) b!5837337))

(assert (= (and b!5837330 (not c!1034235)) b!5837334))

(assert (= (and b!5837334 c!1034236) b!5837328))

(assert (= (and b!5837334 (not c!1034236)) b!5837338))

(assert (= (and b!5837328 (not res!2459409)) b!5837335))

(assert (= (and b!5837338 c!1034237) b!5837329))

(assert (= (and b!5837338 (not c!1034237)) b!5837331))

(assert (= (and b!5837329 (not res!2459408)) b!5837336))

(assert (= (or b!5837336 b!5837331) bm!455856))

(assert (= (or b!5837333 b!5837329) bm!455857))

(assert (=> b!5837328 m!6763052))

(declare-fun m!6763282 () Bool)

(assert (=> bm!455856 m!6763282))

(assert (=> bm!455857 m!6763226))

(declare-fun m!6763284 () Bool)

(assert (=> b!5837335 m!6763284))

(assert (=> b!5836838 d!1834529))

(declare-fun d!1834531 () Bool)

(assert (=> d!1834531 (= (matchR!8082 r!7292 s!2326) (matchRSpec!3000 r!7292 s!2326))))

(declare-fun lt!2303360 () Unit!157069)

(assert (=> d!1834531 (= lt!2303360 (choose!44323 r!7292 s!2326))))

(assert (=> d!1834531 (validRegex!7635 r!7292)))

(assert (=> d!1834531 (= (mainMatchTheorem!3000 r!7292 s!2326) lt!2303360)))

(declare-fun bs!1375463 () Bool)

(assert (= bs!1375463 d!1834531))

(assert (=> bs!1375463 m!6763060))

(assert (=> bs!1375463 m!6763062))

(declare-fun m!6763286 () Bool)

(assert (=> bs!1375463 m!6763286))

(assert (=> bs!1375463 m!6763072))

(assert (=> b!5836838 d!1834531))

(declare-fun b!5837343 () Bool)

(declare-fun e!3580745 () Bool)

(declare-fun tp!1613871 () Bool)

(declare-fun tp!1613872 () Bool)

(assert (=> b!5837343 (= e!3580745 (and tp!1613871 tp!1613872))))

(assert (=> b!5836843 (= tp!1613806 e!3580745)))

(assert (= (and b!5836843 ((_ is Cons!63872) (exprs!5783 setElem!39520))) b!5837343))

(declare-fun b!5837355 () Bool)

(declare-fun e!3580748 () Bool)

(declare-fun tp!1613886 () Bool)

(declare-fun tp!1613887 () Bool)

(assert (=> b!5837355 (= e!3580748 (and tp!1613886 tp!1613887))))

(declare-fun b!5837357 () Bool)

(declare-fun tp!1613885 () Bool)

(declare-fun tp!1613883 () Bool)

(assert (=> b!5837357 (= e!3580748 (and tp!1613885 tp!1613883))))

(declare-fun b!5837356 () Bool)

(declare-fun tp!1613884 () Bool)

(assert (=> b!5837356 (= e!3580748 tp!1613884)))

(declare-fun b!5837354 () Bool)

(assert (=> b!5837354 (= e!3580748 tp_is_empty!41051)))

(assert (=> b!5836832 (= tp!1613801 e!3580748)))

(assert (= (and b!5836832 ((_ is ElementMatch!15899) (regOne!32310 r!7292))) b!5837354))

(assert (= (and b!5836832 ((_ is Concat!24744) (regOne!32310 r!7292))) b!5837355))

(assert (= (and b!5836832 ((_ is Star!15899) (regOne!32310 r!7292))) b!5837356))

(assert (= (and b!5836832 ((_ is Union!15899) (regOne!32310 r!7292))) b!5837357))

(declare-fun b!5837359 () Bool)

(declare-fun e!3580749 () Bool)

(declare-fun tp!1613891 () Bool)

(declare-fun tp!1613892 () Bool)

(assert (=> b!5837359 (= e!3580749 (and tp!1613891 tp!1613892))))

(declare-fun b!5837361 () Bool)

(declare-fun tp!1613890 () Bool)

(declare-fun tp!1613888 () Bool)

(assert (=> b!5837361 (= e!3580749 (and tp!1613890 tp!1613888))))

(declare-fun b!5837360 () Bool)

(declare-fun tp!1613889 () Bool)

(assert (=> b!5837360 (= e!3580749 tp!1613889)))

(declare-fun b!5837358 () Bool)

(assert (=> b!5837358 (= e!3580749 tp_is_empty!41051)))

(assert (=> b!5836832 (= tp!1613805 e!3580749)))

(assert (= (and b!5836832 ((_ is ElementMatch!15899) (regTwo!32310 r!7292))) b!5837358))

(assert (= (and b!5836832 ((_ is Concat!24744) (regTwo!32310 r!7292))) b!5837359))

(assert (= (and b!5836832 ((_ is Star!15899) (regTwo!32310 r!7292))) b!5837360))

(assert (= (and b!5836832 ((_ is Union!15899) (regTwo!32310 r!7292))) b!5837361))

(declare-fun b!5837363 () Bool)

(declare-fun e!3580750 () Bool)

(declare-fun tp!1613896 () Bool)

(declare-fun tp!1613897 () Bool)

(assert (=> b!5837363 (= e!3580750 (and tp!1613896 tp!1613897))))

(declare-fun b!5837365 () Bool)

(declare-fun tp!1613895 () Bool)

(declare-fun tp!1613893 () Bool)

(assert (=> b!5837365 (= e!3580750 (and tp!1613895 tp!1613893))))

(declare-fun b!5837364 () Bool)

(declare-fun tp!1613894 () Bool)

(assert (=> b!5837364 (= e!3580750 tp!1613894)))

(declare-fun b!5837362 () Bool)

(assert (=> b!5837362 (= e!3580750 tp_is_empty!41051)))

(assert (=> b!5836842 (= tp!1613808 e!3580750)))

(assert (= (and b!5836842 ((_ is ElementMatch!15899) (reg!16228 r!7292))) b!5837362))

(assert (= (and b!5836842 ((_ is Concat!24744) (reg!16228 r!7292))) b!5837363))

(assert (= (and b!5836842 ((_ is Star!15899) (reg!16228 r!7292))) b!5837364))

(assert (= (and b!5836842 ((_ is Union!15899) (reg!16228 r!7292))) b!5837365))

(declare-fun condSetEmpty!39526 () Bool)

(assert (=> setNonEmpty!39520 (= condSetEmpty!39526 (= setRest!39520 ((as const (Array Context!10566 Bool)) false)))))

(declare-fun setRes!39526 () Bool)

(assert (=> setNonEmpty!39520 (= tp!1613804 setRes!39526)))

(declare-fun setIsEmpty!39526 () Bool)

(assert (=> setIsEmpty!39526 setRes!39526))

(declare-fun setElem!39526 () Context!10566)

(declare-fun tp!1613902 () Bool)

(declare-fun setNonEmpty!39526 () Bool)

(declare-fun e!3580753 () Bool)

(assert (=> setNonEmpty!39526 (= setRes!39526 (and tp!1613902 (inv!82994 setElem!39526) e!3580753))))

(declare-fun setRest!39526 () (InoxSet Context!10566))

(assert (=> setNonEmpty!39526 (= setRest!39520 ((_ map or) (store ((as const (Array Context!10566 Bool)) false) setElem!39526 true) setRest!39526))))

(declare-fun b!5837370 () Bool)

(declare-fun tp!1613903 () Bool)

(assert (=> b!5837370 (= e!3580753 tp!1613903)))

(assert (= (and setNonEmpty!39520 condSetEmpty!39526) setIsEmpty!39526))

(assert (= (and setNonEmpty!39520 (not condSetEmpty!39526)) setNonEmpty!39526))

(assert (= setNonEmpty!39526 b!5837370))

(declare-fun m!6763288 () Bool)

(assert (=> setNonEmpty!39526 m!6763288))

(declare-fun b!5837378 () Bool)

(declare-fun e!3580759 () Bool)

(declare-fun tp!1613908 () Bool)

(assert (=> b!5837378 (= e!3580759 tp!1613908)))

(declare-fun tp!1613909 () Bool)

(declare-fun e!3580758 () Bool)

(declare-fun b!5837377 () Bool)

(assert (=> b!5837377 (= e!3580758 (and (inv!82994 (h!70321 (t!377352 zl!343))) e!3580759 tp!1613909))))

(assert (=> b!5836831 (= tp!1613799 e!3580758)))

(assert (= b!5837377 b!5837378))

(assert (= (and b!5836831 ((_ is Cons!63873) (t!377352 zl!343))) b!5837377))

(declare-fun m!6763290 () Bool)

(assert (=> b!5837377 m!6763290))

(declare-fun b!5837380 () Bool)

(declare-fun e!3580760 () Bool)

(declare-fun tp!1613913 () Bool)

(declare-fun tp!1613914 () Bool)

(assert (=> b!5837380 (= e!3580760 (and tp!1613913 tp!1613914))))

(declare-fun b!5837382 () Bool)

(declare-fun tp!1613912 () Bool)

(declare-fun tp!1613910 () Bool)

(assert (=> b!5837382 (= e!3580760 (and tp!1613912 tp!1613910))))

(declare-fun b!5837381 () Bool)

(declare-fun tp!1613911 () Bool)

(assert (=> b!5837381 (= e!3580760 tp!1613911)))

(declare-fun b!5837379 () Bool)

(assert (=> b!5837379 (= e!3580760 tp_is_empty!41051)))

(assert (=> b!5836841 (= tp!1613807 e!3580760)))

(assert (= (and b!5836841 ((_ is ElementMatch!15899) (regOne!32311 r!7292))) b!5837379))

(assert (= (and b!5836841 ((_ is Concat!24744) (regOne!32311 r!7292))) b!5837380))

(assert (= (and b!5836841 ((_ is Star!15899) (regOne!32311 r!7292))) b!5837381))

(assert (= (and b!5836841 ((_ is Union!15899) (regOne!32311 r!7292))) b!5837382))

(declare-fun b!5837384 () Bool)

(declare-fun e!3580761 () Bool)

(declare-fun tp!1613918 () Bool)

(declare-fun tp!1613919 () Bool)

(assert (=> b!5837384 (= e!3580761 (and tp!1613918 tp!1613919))))

(declare-fun b!5837386 () Bool)

(declare-fun tp!1613917 () Bool)

(declare-fun tp!1613915 () Bool)

(assert (=> b!5837386 (= e!3580761 (and tp!1613917 tp!1613915))))

(declare-fun b!5837385 () Bool)

(declare-fun tp!1613916 () Bool)

(assert (=> b!5837385 (= e!3580761 tp!1613916)))

(declare-fun b!5837383 () Bool)

(assert (=> b!5837383 (= e!3580761 tp_is_empty!41051)))

(assert (=> b!5836841 (= tp!1613803 e!3580761)))

(assert (= (and b!5836841 ((_ is ElementMatch!15899) (regTwo!32311 r!7292))) b!5837383))

(assert (= (and b!5836841 ((_ is Concat!24744) (regTwo!32311 r!7292))) b!5837384))

(assert (= (and b!5836841 ((_ is Star!15899) (regTwo!32311 r!7292))) b!5837385))

(assert (= (and b!5836841 ((_ is Union!15899) (regTwo!32311 r!7292))) b!5837386))

(declare-fun b!5837387 () Bool)

(declare-fun e!3580762 () Bool)

(declare-fun tp!1613920 () Bool)

(declare-fun tp!1613921 () Bool)

(assert (=> b!5837387 (= e!3580762 (and tp!1613920 tp!1613921))))

(assert (=> b!5836830 (= tp!1613802 e!3580762)))

(assert (= (and b!5836830 ((_ is Cons!63872) (exprs!5783 (h!70321 zl!343)))) b!5837387))

(declare-fun b!5837392 () Bool)

(declare-fun e!3580765 () Bool)

(declare-fun tp!1613924 () Bool)

(assert (=> b!5837392 (= e!3580765 (and tp_is_empty!41051 tp!1613924))))

(assert (=> b!5836844 (= tp!1613800 e!3580765)))

(assert (= (and b!5836844 ((_ is Cons!63874) (t!377353 s!2326))) b!5837392))

(check-sat (not b!5837270) (not b!5837177) (not b!5837364) (not b!5837325) (not b!5837387) (not b!5837224) (not bm!455855) (not b!5837218) (not b!5837298) (not b!5837343) (not bm!455856) (not bm!455853) (not b!5837174) (not b!5837381) (not b!5837361) (not bm!455841) (not bm!455854) (not b!5837386) (not b!5837171) (not d!1834523) (not bm!455848) (not bm!455843) (not b!5837146) (not d!1834469) (not d!1834503) (not b!5837384) (not b!5837230) (not b!5837318) (not b!5837178) (not b!5837122) (not b!5837303) (not b!5837315) (not b!5837175) (not d!1834517) (not b!5837355) (not b!5837378) (not b!5837299) (not b!5837357) (not d!1834527) (not bm!455857) (not b!5837370) (not b!5837321) (not b!5837228) (not bm!455844) (not b!5837312) (not b!5837185) (not d!1834521) (not b!5837385) (not d!1834531) (not b!5837328) (not b!5837301) (not b!5837359) (not b!5837335) tp_is_empty!41051 (not b!5837377) (not b!5837324) (not b!5837365) (not b!5837263) (not d!1834509) (not b!5837227) (not b!5837305) (not b!5837306) (not d!1834525) (not b!5837356) (not b!5837363) (not d!1834513) (not b!5837382) (not bm!455840) (not b!5837327) (not b!5837392) (not b!5837304) (not b!5837380) (not b!5837173) (not setNonEmpty!39526) (not b!5837170) (not d!1834505) (not b!5837221) (not b!5837360))
(check-sat)
