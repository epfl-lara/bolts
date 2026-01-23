; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564270 () Bool)

(assert start!564270)

(declare-fun b!5360665 () Bool)

(assert (=> b!5360665 true))

(assert (=> b!5360665 true))

(declare-fun lambda!276042 () Int)

(declare-fun lambda!276041 () Int)

(assert (=> b!5360665 (not (= lambda!276042 lambda!276041))))

(assert (=> b!5360665 true))

(assert (=> b!5360665 true))

(declare-fun b!5360635 () Bool)

(assert (=> b!5360635 true))

(declare-fun bs!1241734 () Bool)

(declare-fun b!5360638 () Bool)

(assert (= bs!1241734 (and b!5360638 b!5360665)))

(declare-datatypes ((C!30404 0))(
  ( (C!30405 (val!24904 Int)) )
))
(declare-datatypes ((Regex!15067 0))(
  ( (ElementMatch!15067 (c!933471 C!30404)) (Concat!23912 (regOne!30646 Regex!15067) (regTwo!30646 Regex!15067)) (EmptyExpr!15067) (Star!15067 (reg!15396 Regex!15067)) (EmptyLang!15067) (Union!15067 (regOne!30647 Regex!15067) (regTwo!30647 Regex!15067)) )
))
(declare-fun r!7292 () Regex!15067)

(declare-fun lambda!276044 () Int)

(declare-fun lt!2184251 () Regex!15067)

(assert (=> bs!1241734 (= (= lt!2184251 (regOne!30646 r!7292)) (= lambda!276044 lambda!276041))))

(assert (=> bs!1241734 (not (= lambda!276044 lambda!276042))))

(assert (=> b!5360638 true))

(assert (=> b!5360638 true))

(assert (=> b!5360638 true))

(declare-fun lambda!276045 () Int)

(assert (=> bs!1241734 (not (= lambda!276045 lambda!276041))))

(assert (=> bs!1241734 (= (= lt!2184251 (regOne!30646 r!7292)) (= lambda!276045 lambda!276042))))

(assert (=> b!5360638 (not (= lambda!276045 lambda!276044))))

(assert (=> b!5360638 true))

(assert (=> b!5360638 true))

(assert (=> b!5360638 true))

(declare-fun e!3327008 () Bool)

(declare-fun e!3327015 () Bool)

(assert (=> b!5360635 (= e!3327008 e!3327015)))

(declare-fun res!2274905 () Bool)

(assert (=> b!5360635 (=> res!2274905 e!3327015)))

(declare-datatypes ((List!61500 0))(
  ( (Nil!61376) (Cons!61376 (h!67824 C!30404) (t!374721 List!61500)) )
))
(declare-fun s!2326 () List!61500)

(get-info :version)

(assert (=> b!5360635 (= res!2274905 (or (and ((_ is ElementMatch!15067) (regOne!30646 r!7292)) (= (c!933471 (regOne!30646 r!7292)) (h!67824 s!2326))) ((_ is Union!15067) (regOne!30646 r!7292))))))

(declare-datatypes ((Unit!153786 0))(
  ( (Unit!153787) )
))
(declare-fun lt!2184233 () Unit!153786)

(declare-fun e!3327009 () Unit!153786)

(assert (=> b!5360635 (= lt!2184233 e!3327009)))

(declare-fun c!933470 () Bool)

(declare-datatypes ((List!61501 0))(
  ( (Nil!61377) (Cons!61377 (h!67825 Regex!15067) (t!374722 List!61501)) )
))
(declare-datatypes ((Context!8902 0))(
  ( (Context!8903 (exprs!4951 List!61501)) )
))
(declare-datatypes ((List!61502 0))(
  ( (Nil!61378) (Cons!61378 (h!67826 Context!8902) (t!374723 List!61502)) )
))
(declare-fun zl!343 () List!61502)

(declare-fun nullable!5236 (Regex!15067) Bool)

(assert (=> b!5360635 (= c!933470 (nullable!5236 (h!67825 (exprs!4951 (h!67826 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8902))

(declare-fun lambda!276043 () Int)

(declare-fun flatMap!794 ((InoxSet Context!8902) Int) (InoxSet Context!8902))

(declare-fun derivationStepZipperUp!439 (Context!8902 C!30404) (InoxSet Context!8902))

(assert (=> b!5360635 (= (flatMap!794 z!1189 lambda!276043) (derivationStepZipperUp!439 (h!67826 zl!343) (h!67824 s!2326)))))

(declare-fun lt!2184258 () Unit!153786)

(declare-fun lemmaFlatMapOnSingletonSet!326 ((InoxSet Context!8902) Context!8902 Int) Unit!153786)

(assert (=> b!5360635 (= lt!2184258 (lemmaFlatMapOnSingletonSet!326 z!1189 (h!67826 zl!343) lambda!276043))))

(declare-fun lt!2184255 () (InoxSet Context!8902))

(declare-fun lt!2184254 () Context!8902)

(assert (=> b!5360635 (= lt!2184255 (derivationStepZipperUp!439 lt!2184254 (h!67824 s!2326)))))

(declare-fun lt!2184226 () (InoxSet Context!8902))

(declare-fun derivationStepZipperDown!515 (Regex!15067 Context!8902 C!30404) (InoxSet Context!8902))

(assert (=> b!5360635 (= lt!2184226 (derivationStepZipperDown!515 (h!67825 (exprs!4951 (h!67826 zl!343))) lt!2184254 (h!67824 s!2326)))))

(assert (=> b!5360635 (= lt!2184254 (Context!8903 (t!374722 (exprs!4951 (h!67826 zl!343)))))))

(declare-fun lt!2184253 () (InoxSet Context!8902))

(assert (=> b!5360635 (= lt!2184253 (derivationStepZipperUp!439 (Context!8903 (Cons!61377 (h!67825 (exprs!4951 (h!67826 zl!343))) (t!374722 (exprs!4951 (h!67826 zl!343))))) (h!67824 s!2326)))))

(declare-fun b!5360636 () Bool)

(declare-fun res!2274910 () Bool)

(declare-fun e!3327010 () Bool)

(assert (=> b!5360636 (=> res!2274910 e!3327010)))

(declare-fun generalisedConcat!736 (List!61501) Regex!15067)

(assert (=> b!5360636 (= res!2274910 (not (= r!7292 (generalisedConcat!736 (exprs!4951 (h!67826 zl!343))))))))

(declare-fun b!5360637 () Bool)

(declare-fun e!3327007 () Bool)

(declare-fun tp_is_empty!39387 () Bool)

(declare-fun tp!1488458 () Bool)

(assert (=> b!5360637 (= e!3327007 (and tp_is_empty!39387 tp!1488458))))

(declare-fun e!3326998 () Bool)

(declare-fun e!3327011 () Bool)

(assert (=> b!5360638 (= e!3326998 e!3327011)))

(declare-fun res!2274917 () Bool)

(assert (=> b!5360638 (=> res!2274917 e!3327011)))

(declare-datatypes ((tuple2!64532 0))(
  ( (tuple2!64533 (_1!35569 List!61500) (_2!35569 List!61500)) )
))
(declare-fun lt!2184230 () tuple2!64532)

(declare-fun ++!13370 (List!61500 List!61500) List!61500)

(assert (=> b!5360638 (= res!2274917 (not (= (++!13370 (_1!35569 lt!2184230) (_2!35569 lt!2184230)) s!2326)))))

(declare-datatypes ((Option!15178 0))(
  ( (None!15177) (Some!15177 (v!51206 tuple2!64532)) )
))
(declare-fun lt!2184229 () Option!15178)

(declare-fun get!21109 (Option!15178) tuple2!64532)

(assert (=> b!5360638 (= lt!2184230 (get!21109 lt!2184229))))

(declare-fun Exists!2248 (Int) Bool)

(assert (=> b!5360638 (= (Exists!2248 lambda!276044) (Exists!2248 lambda!276045))))

(declare-fun lt!2184260 () Unit!153786)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!902 (Regex!15067 Regex!15067 List!61500) Unit!153786)

(assert (=> b!5360638 (= lt!2184260 (lemmaExistCutMatchRandMatchRSpecEquivalent!902 lt!2184251 (regTwo!30646 r!7292) s!2326))))

(declare-fun isDefined!11881 (Option!15178) Bool)

(assert (=> b!5360638 (= (isDefined!11881 lt!2184229) (Exists!2248 lambda!276044))))

(declare-fun findConcatSeparation!1592 (Regex!15067 Regex!15067 List!61500 List!61500 List!61500) Option!15178)

(assert (=> b!5360638 (= lt!2184229 (findConcatSeparation!1592 lt!2184251 (regTwo!30646 r!7292) Nil!61376 s!2326 s!2326))))

(declare-fun lt!2184256 () Unit!153786)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1356 (Regex!15067 Regex!15067 List!61500) Unit!153786)

(assert (=> b!5360638 (= lt!2184256 (lemmaFindConcatSeparationEquivalentToExists!1356 lt!2184251 (regTwo!30646 r!7292) s!2326))))

(declare-fun b!5360639 () Bool)

(declare-fun res!2274894 () Bool)

(declare-fun e!3327004 () Bool)

(assert (=> b!5360639 (=> res!2274894 e!3327004)))

(declare-fun lt!2184250 () Regex!15067)

(assert (=> b!5360639 (= res!2274894 (not (= lt!2184250 r!7292)))))

(declare-fun b!5360640 () Bool)

(declare-fun Unit!153788 () Unit!153786)

(assert (=> b!5360640 (= e!3327009 Unit!153788)))

(declare-fun lt!2184224 () Unit!153786)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!304 ((InoxSet Context!8902) (InoxSet Context!8902) List!61500) Unit!153786)

(assert (=> b!5360640 (= lt!2184224 (lemmaZipperConcatMatchesSameAsBothZippers!304 lt!2184226 lt!2184255 (t!374721 s!2326)))))

(declare-fun res!2274907 () Bool)

(declare-fun matchZipper!1311 ((InoxSet Context!8902) List!61500) Bool)

(assert (=> b!5360640 (= res!2274907 (matchZipper!1311 lt!2184226 (t!374721 s!2326)))))

(declare-fun e!3327006 () Bool)

(assert (=> b!5360640 (=> res!2274907 e!3327006)))

(assert (=> b!5360640 (= (matchZipper!1311 ((_ map or) lt!2184226 lt!2184255) (t!374721 s!2326)) e!3327006)))

(declare-fun b!5360641 () Bool)

(declare-fun e!3327000 () Bool)

(declare-fun e!3327013 () Bool)

(assert (=> b!5360641 (= e!3327000 e!3327013)))

(declare-fun res!2274893 () Bool)

(assert (=> b!5360641 (=> res!2274893 e!3327013)))

(declare-fun lt!2184239 () Context!8902)

(declare-fun lt!2184241 () Regex!15067)

(declare-fun unfocusZipper!809 (List!61502) Regex!15067)

(assert (=> b!5360641 (= res!2274893 (not (= (unfocusZipper!809 (Cons!61378 lt!2184239 Nil!61378)) lt!2184241)))))

(declare-fun lt!2184252 () Regex!15067)

(assert (=> b!5360641 (= lt!2184241 (Concat!23912 (reg!15396 (regOne!30646 r!7292)) lt!2184252))))

(declare-fun b!5360642 () Bool)

(declare-fun res!2274916 () Bool)

(assert (=> b!5360642 (=> res!2274916 e!3327010)))

(declare-fun generalisedUnion!996 (List!61501) Regex!15067)

(declare-fun unfocusZipperList!509 (List!61502) List!61501)

(assert (=> b!5360642 (= res!2274916 (not (= r!7292 (generalisedUnion!996 (unfocusZipperList!509 zl!343)))))))

(declare-fun setIsEmpty!34699 () Bool)

(declare-fun setRes!34699 () Bool)

(assert (=> setIsEmpty!34699 setRes!34699))

(declare-fun b!5360643 () Bool)

(declare-fun e!3327016 () Bool)

(assert (=> b!5360643 (= e!3327016 (not e!3327010))))

(declare-fun res!2274908 () Bool)

(assert (=> b!5360643 (=> res!2274908 e!3327010)))

(assert (=> b!5360643 (= res!2274908 (not ((_ is Cons!61378) zl!343)))))

(declare-fun lt!2184234 () Bool)

(declare-fun lt!2184238 () Bool)

(assert (=> b!5360643 (= lt!2184234 lt!2184238)))

(declare-fun matchRSpec!2170 (Regex!15067 List!61500) Bool)

(assert (=> b!5360643 (= lt!2184238 (matchRSpec!2170 r!7292 s!2326))))

(declare-fun matchR!7252 (Regex!15067 List!61500) Bool)

(assert (=> b!5360643 (= lt!2184234 (matchR!7252 r!7292 s!2326))))

(declare-fun lt!2184259 () Unit!153786)

(declare-fun mainMatchTheorem!2170 (Regex!15067 List!61500) Unit!153786)

(assert (=> b!5360643 (= lt!2184259 (mainMatchTheorem!2170 r!7292 s!2326))))

(declare-fun b!5360644 () Bool)

(declare-fun e!3326999 () Bool)

(assert (=> b!5360644 (= e!3327013 e!3326999)))

(declare-fun res!2274912 () Bool)

(assert (=> b!5360644 (=> res!2274912 e!3326999)))

(declare-fun lt!2184240 () Context!8902)

(assert (=> b!5360644 (= res!2274912 (not (= (unfocusZipper!809 (Cons!61378 lt!2184240 Nil!61378)) (reg!15396 (regOne!30646 r!7292)))))))

(declare-fun lt!2184235 () (InoxSet Context!8902))

(declare-fun lt!2184244 () Context!8902)

(assert (=> b!5360644 (= (flatMap!794 lt!2184235 lambda!276043) (derivationStepZipperUp!439 lt!2184244 (h!67824 s!2326)))))

(declare-fun lt!2184231 () Unit!153786)

(assert (=> b!5360644 (= lt!2184231 (lemmaFlatMapOnSingletonSet!326 lt!2184235 lt!2184244 lambda!276043))))

(declare-fun lt!2184242 () (InoxSet Context!8902))

(assert (=> b!5360644 (= (flatMap!794 lt!2184242 lambda!276043) (derivationStepZipperUp!439 lt!2184240 (h!67824 s!2326)))))

(declare-fun lt!2184257 () Unit!153786)

(assert (=> b!5360644 (= lt!2184257 (lemmaFlatMapOnSingletonSet!326 lt!2184242 lt!2184240 lambda!276043))))

(declare-fun lt!2184227 () (InoxSet Context!8902))

(assert (=> b!5360644 (= lt!2184227 (derivationStepZipperUp!439 lt!2184244 (h!67824 s!2326)))))

(declare-fun lt!2184225 () (InoxSet Context!8902))

(assert (=> b!5360644 (= lt!2184225 (derivationStepZipperUp!439 lt!2184240 (h!67824 s!2326)))))

(assert (=> b!5360644 (= lt!2184235 (store ((as const (Array Context!8902 Bool)) false) lt!2184244 true))))

(assert (=> b!5360644 (= lt!2184242 (store ((as const (Array Context!8902 Bool)) false) lt!2184240 true))))

(assert (=> b!5360644 (= lt!2184240 (Context!8903 (Cons!61377 (reg!15396 (regOne!30646 r!7292)) Nil!61377)))))

(declare-fun b!5360645 () Bool)

(declare-fun res!2274892 () Bool)

(assert (=> b!5360645 (=> res!2274892 e!3327015)))

(declare-fun e!3327003 () Bool)

(assert (=> b!5360645 (= res!2274892 e!3327003)))

(declare-fun res!2274909 () Bool)

(assert (=> b!5360645 (=> (not res!2274909) (not e!3327003))))

(assert (=> b!5360645 (= res!2274909 ((_ is Concat!23912) (regOne!30646 r!7292)))))

(declare-fun res!2274915 () Bool)

(declare-fun e!3327012 () Bool)

(assert (=> start!564270 (=> (not res!2274915) (not e!3327012))))

(declare-fun validRegex!6803 (Regex!15067) Bool)

(assert (=> start!564270 (= res!2274915 (validRegex!6803 r!7292))))

(assert (=> start!564270 e!3327012))

(declare-fun e!3326996 () Bool)

(assert (=> start!564270 e!3326996))

(declare-fun condSetEmpty!34699 () Bool)

(assert (=> start!564270 (= condSetEmpty!34699 (= z!1189 ((as const (Array Context!8902 Bool)) false)))))

(assert (=> start!564270 setRes!34699))

(declare-fun e!3327005 () Bool)

(assert (=> start!564270 e!3327005))

(assert (=> start!564270 e!3327007))

(declare-fun b!5360646 () Bool)

(declare-fun e!3327001 () Bool)

(assert (=> b!5360646 (= e!3327001 e!3327004)))

(declare-fun res!2274903 () Bool)

(assert (=> b!5360646 (=> res!2274903 e!3327004)))

(declare-fun lt!2184243 () (InoxSet Context!8902))

(declare-fun lt!2184245 () (InoxSet Context!8902))

(assert (=> b!5360646 (= res!2274903 (not (= lt!2184243 lt!2184245)))))

(declare-fun lt!2184228 () (InoxSet Context!8902))

(assert (=> b!5360646 (= (flatMap!794 lt!2184228 lambda!276043) (derivationStepZipperUp!439 lt!2184239 (h!67824 s!2326)))))

(declare-fun lt!2184247 () Unit!153786)

(assert (=> b!5360646 (= lt!2184247 (lemmaFlatMapOnSingletonSet!326 lt!2184228 lt!2184239 lambda!276043))))

(declare-fun lt!2184246 () (InoxSet Context!8902))

(assert (=> b!5360646 (= lt!2184246 (derivationStepZipperUp!439 lt!2184239 (h!67824 s!2326)))))

(declare-fun derivationStepZipper!1306 ((InoxSet Context!8902) C!30404) (InoxSet Context!8902))

(assert (=> b!5360646 (= lt!2184243 (derivationStepZipper!1306 lt!2184228 (h!67824 s!2326)))))

(assert (=> b!5360646 (= lt!2184228 (store ((as const (Array Context!8902 Bool)) false) lt!2184239 true))))

(declare-fun lt!2184237 () List!61501)

(assert (=> b!5360646 (= lt!2184239 (Context!8903 (Cons!61377 (reg!15396 (regOne!30646 r!7292)) lt!2184237)))))

(declare-fun b!5360647 () Bool)

(declare-fun tp!1488460 () Bool)

(assert (=> b!5360647 (= e!3326996 tp!1488460)))

(declare-fun e!3327002 () Bool)

(declare-fun b!5360648 () Bool)

(declare-fun tp!1488465 () Bool)

(declare-fun inv!80914 (Context!8902) Bool)

(assert (=> b!5360648 (= e!3327005 (and (inv!80914 (h!67826 zl!343)) e!3327002 tp!1488465))))

(declare-fun b!5360649 () Bool)

(assert (=> b!5360649 (= e!3327011 (validRegex!6803 lt!2184251))))

(declare-fun b!5360650 () Bool)

(declare-fun e!3327014 () Bool)

(assert (=> b!5360650 (= e!3327014 (or (not lt!2184234) lt!2184238))))

(declare-fun setElem!34699 () Context!8902)

(declare-fun tp!1488462 () Bool)

(declare-fun setNonEmpty!34699 () Bool)

(declare-fun e!3326997 () Bool)

(assert (=> setNonEmpty!34699 (= setRes!34699 (and tp!1488462 (inv!80914 setElem!34699) e!3326997))))

(declare-fun setRest!34699 () (InoxSet Context!8902))

(assert (=> setNonEmpty!34699 (= z!1189 ((_ map or) (store ((as const (Array Context!8902 Bool)) false) setElem!34699 true) setRest!34699))))

(declare-fun b!5360651 () Bool)

(declare-fun res!2274901 () Bool)

(assert (=> b!5360651 (=> res!2274901 e!3327008)))

(declare-fun isEmpty!33347 (List!61501) Bool)

(assert (=> b!5360651 (= res!2274901 (isEmpty!33347 (t!374722 (exprs!4951 (h!67826 zl!343)))))))

(declare-fun b!5360652 () Bool)

(declare-fun Unit!153789 () Unit!153786)

(assert (=> b!5360652 (= e!3327009 Unit!153789)))

(declare-fun b!5360653 () Bool)

(assert (=> b!5360653 (= e!3327004 e!3327000)))

(declare-fun res!2274914 () Bool)

(assert (=> b!5360653 (=> res!2274914 e!3327000)))

(assert (=> b!5360653 (= res!2274914 (not (= r!7292 lt!2184252)))))

(assert (=> b!5360653 (= lt!2184252 (Concat!23912 lt!2184251 (regTwo!30646 r!7292)))))

(declare-fun b!5360654 () Bool)

(declare-fun tp!1488463 () Bool)

(declare-fun tp!1488459 () Bool)

(assert (=> b!5360654 (= e!3326996 (and tp!1488463 tp!1488459))))

(declare-fun b!5360655 () Bool)

(assert (=> b!5360655 (= e!3327012 e!3327016)))

(declare-fun res!2274906 () Bool)

(assert (=> b!5360655 (=> (not res!2274906) (not e!3327016))))

(assert (=> b!5360655 (= res!2274906 (= r!7292 lt!2184250))))

(assert (=> b!5360655 (= lt!2184250 (unfocusZipper!809 zl!343))))

(declare-fun b!5360656 () Bool)

(declare-fun res!2274911 () Bool)

(assert (=> b!5360656 (=> res!2274911 e!3327004)))

(assert (=> b!5360656 (= res!2274911 (not (= (matchZipper!1311 lt!2184228 s!2326) (matchZipper!1311 lt!2184243 (t!374721 s!2326)))))))

(declare-fun b!5360657 () Bool)

(declare-fun tp!1488464 () Bool)

(assert (=> b!5360657 (= e!3326997 tp!1488464)))

(declare-fun b!5360658 () Bool)

(declare-fun res!2274900 () Bool)

(assert (=> b!5360658 (=> (not res!2274900) (not e!3327012))))

(declare-fun toList!8851 ((InoxSet Context!8902)) List!61502)

(assert (=> b!5360658 (= res!2274900 (= (toList!8851 z!1189) zl!343))))

(declare-fun b!5360659 () Bool)

(assert (=> b!5360659 (= e!3327003 (nullable!5236 (regOne!30646 (regOne!30646 r!7292))))))

(declare-fun b!5360660 () Bool)

(declare-fun res!2274897 () Bool)

(assert (=> b!5360660 (=> res!2274897 e!3327010)))

(assert (=> b!5360660 (= res!2274897 (not ((_ is Cons!61377) (exprs!4951 (h!67826 zl!343)))))))

(declare-fun b!5360661 () Bool)

(declare-fun res!2274902 () Bool)

(assert (=> b!5360661 (=> res!2274902 e!3326999)))

(assert (=> b!5360661 (= res!2274902 (not (= (unfocusZipper!809 (Cons!61378 lt!2184244 Nil!61378)) lt!2184252)))))

(declare-fun b!5360662 () Bool)

(declare-fun res!2274913 () Bool)

(assert (=> b!5360662 (=> res!2274913 e!3327010)))

(assert (=> b!5360662 (= res!2274913 (or ((_ is EmptyExpr!15067) r!7292) ((_ is EmptyLang!15067) r!7292) ((_ is ElementMatch!15067) r!7292) ((_ is Union!15067) r!7292) (not ((_ is Concat!23912) r!7292))))))

(declare-fun b!5360663 () Bool)

(declare-fun tp!1488457 () Bool)

(declare-fun tp!1488456 () Bool)

(assert (=> b!5360663 (= e!3326996 (and tp!1488457 tp!1488456))))

(declare-fun b!5360664 () Bool)

(assert (=> b!5360664 (= e!3326999 e!3326998)))

(declare-fun res!2274896 () Bool)

(assert (=> b!5360664 (=> res!2274896 e!3326998)))

(assert (=> b!5360664 (= res!2274896 (not lt!2184234))))

(assert (=> b!5360664 e!3327014))

(declare-fun res!2274895 () Bool)

(assert (=> b!5360664 (=> (not res!2274895) (not e!3327014))))

(assert (=> b!5360664 (= res!2274895 (= (matchR!7252 lt!2184241 s!2326) (matchRSpec!2170 lt!2184241 s!2326)))))

(declare-fun lt!2184232 () Unit!153786)

(assert (=> b!5360664 (= lt!2184232 (mainMatchTheorem!2170 lt!2184241 s!2326))))

(assert (=> b!5360665 (= e!3327010 e!3327008)))

(declare-fun res!2274904 () Bool)

(assert (=> b!5360665 (=> res!2274904 e!3327008)))

(declare-fun lt!2184248 () Bool)

(assert (=> b!5360665 (= res!2274904 (or (not (= lt!2184234 lt!2184248)) ((_ is Nil!61376) s!2326)))))

(assert (=> b!5360665 (= (Exists!2248 lambda!276041) (Exists!2248 lambda!276042))))

(declare-fun lt!2184236 () Unit!153786)

(assert (=> b!5360665 (= lt!2184236 (lemmaExistCutMatchRandMatchRSpecEquivalent!902 (regOne!30646 r!7292) (regTwo!30646 r!7292) s!2326))))

(assert (=> b!5360665 (= lt!2184248 (Exists!2248 lambda!276041))))

(assert (=> b!5360665 (= lt!2184248 (isDefined!11881 (findConcatSeparation!1592 (regOne!30646 r!7292) (regTwo!30646 r!7292) Nil!61376 s!2326 s!2326)))))

(declare-fun lt!2184249 () Unit!153786)

(assert (=> b!5360665 (= lt!2184249 (lemmaFindConcatSeparationEquivalentToExists!1356 (regOne!30646 r!7292) (regTwo!30646 r!7292) s!2326))))

(declare-fun b!5360666 () Bool)

(assert (=> b!5360666 (= e!3327015 e!3327001)))

(declare-fun res!2274891 () Bool)

(assert (=> b!5360666 (=> res!2274891 e!3327001)))

(assert (=> b!5360666 (= res!2274891 (not (= lt!2184226 lt!2184245)))))

(assert (=> b!5360666 (= lt!2184245 (derivationStepZipperDown!515 (reg!15396 (regOne!30646 r!7292)) lt!2184244 (h!67824 s!2326)))))

(assert (=> b!5360666 (= lt!2184244 (Context!8903 lt!2184237))))

(assert (=> b!5360666 (= lt!2184237 (Cons!61377 lt!2184251 (t!374722 (exprs!4951 (h!67826 zl!343)))))))

(assert (=> b!5360666 (= lt!2184251 (Star!15067 (reg!15396 (regOne!30646 r!7292))))))

(declare-fun b!5360667 () Bool)

(assert (=> b!5360667 (= e!3327006 (matchZipper!1311 lt!2184255 (t!374721 s!2326)))))

(declare-fun b!5360668 () Bool)

(declare-fun tp!1488461 () Bool)

(assert (=> b!5360668 (= e!3327002 tp!1488461)))

(declare-fun b!5360669 () Bool)

(assert (=> b!5360669 (= e!3326996 tp_is_empty!39387)))

(declare-fun b!5360670 () Bool)

(declare-fun res!2274898 () Bool)

(assert (=> b!5360670 (=> res!2274898 e!3327010)))

(declare-fun isEmpty!33348 (List!61502) Bool)

(assert (=> b!5360670 (= res!2274898 (not (isEmpty!33348 (t!374723 zl!343))))))

(declare-fun b!5360671 () Bool)

(declare-fun res!2274899 () Bool)

(assert (=> b!5360671 (=> res!2274899 e!3327015)))

(assert (=> b!5360671 (= res!2274899 (or ((_ is Concat!23912) (regOne!30646 r!7292)) (not ((_ is Star!15067) (regOne!30646 r!7292)))))))

(assert (= (and start!564270 res!2274915) b!5360658))

(assert (= (and b!5360658 res!2274900) b!5360655))

(assert (= (and b!5360655 res!2274906) b!5360643))

(assert (= (and b!5360643 (not res!2274908)) b!5360670))

(assert (= (and b!5360670 (not res!2274898)) b!5360636))

(assert (= (and b!5360636 (not res!2274910)) b!5360660))

(assert (= (and b!5360660 (not res!2274897)) b!5360642))

(assert (= (and b!5360642 (not res!2274916)) b!5360662))

(assert (= (and b!5360662 (not res!2274913)) b!5360665))

(assert (= (and b!5360665 (not res!2274904)) b!5360651))

(assert (= (and b!5360651 (not res!2274901)) b!5360635))

(assert (= (and b!5360635 c!933470) b!5360640))

(assert (= (and b!5360635 (not c!933470)) b!5360652))

(assert (= (and b!5360640 (not res!2274907)) b!5360667))

(assert (= (and b!5360635 (not res!2274905)) b!5360645))

(assert (= (and b!5360645 res!2274909) b!5360659))

(assert (= (and b!5360645 (not res!2274892)) b!5360671))

(assert (= (and b!5360671 (not res!2274899)) b!5360666))

(assert (= (and b!5360666 (not res!2274891)) b!5360646))

(assert (= (and b!5360646 (not res!2274903)) b!5360656))

(assert (= (and b!5360656 (not res!2274911)) b!5360639))

(assert (= (and b!5360639 (not res!2274894)) b!5360653))

(assert (= (and b!5360653 (not res!2274914)) b!5360641))

(assert (= (and b!5360641 (not res!2274893)) b!5360644))

(assert (= (and b!5360644 (not res!2274912)) b!5360661))

(assert (= (and b!5360661 (not res!2274902)) b!5360664))

(assert (= (and b!5360664 res!2274895) b!5360650))

(assert (= (and b!5360664 (not res!2274896)) b!5360638))

(assert (= (and b!5360638 (not res!2274917)) b!5360649))

(assert (= (and start!564270 ((_ is ElementMatch!15067) r!7292)) b!5360669))

(assert (= (and start!564270 ((_ is Concat!23912) r!7292)) b!5360654))

(assert (= (and start!564270 ((_ is Star!15067) r!7292)) b!5360647))

(assert (= (and start!564270 ((_ is Union!15067) r!7292)) b!5360663))

(assert (= (and start!564270 condSetEmpty!34699) setIsEmpty!34699))

(assert (= (and start!564270 (not condSetEmpty!34699)) setNonEmpty!34699))

(assert (= setNonEmpty!34699 b!5360657))

(assert (= b!5360648 b!5360668))

(assert (= (and start!564270 ((_ is Cons!61378) zl!343)) b!5360648))

(assert (= (and start!564270 ((_ is Cons!61376) s!2326)) b!5360637))

(declare-fun m!6389468 () Bool)

(assert (=> b!5360661 m!6389468))

(declare-fun m!6389470 () Bool)

(assert (=> b!5360659 m!6389470))

(declare-fun m!6389472 () Bool)

(assert (=> b!5360666 m!6389472))

(declare-fun m!6389474 () Bool)

(assert (=> b!5360649 m!6389474))

(declare-fun m!6389476 () Bool)

(assert (=> b!5360636 m!6389476))

(declare-fun m!6389478 () Bool)

(assert (=> b!5360643 m!6389478))

(declare-fun m!6389480 () Bool)

(assert (=> b!5360643 m!6389480))

(declare-fun m!6389482 () Bool)

(assert (=> b!5360643 m!6389482))

(declare-fun m!6389484 () Bool)

(assert (=> b!5360635 m!6389484))

(declare-fun m!6389486 () Bool)

(assert (=> b!5360635 m!6389486))

(declare-fun m!6389488 () Bool)

(assert (=> b!5360635 m!6389488))

(declare-fun m!6389490 () Bool)

(assert (=> b!5360635 m!6389490))

(declare-fun m!6389492 () Bool)

(assert (=> b!5360635 m!6389492))

(declare-fun m!6389494 () Bool)

(assert (=> b!5360635 m!6389494))

(declare-fun m!6389496 () Bool)

(assert (=> b!5360635 m!6389496))

(declare-fun m!6389498 () Bool)

(assert (=> start!564270 m!6389498))

(declare-fun m!6389500 () Bool)

(assert (=> setNonEmpty!34699 m!6389500))

(declare-fun m!6389502 () Bool)

(assert (=> b!5360638 m!6389502))

(declare-fun m!6389504 () Bool)

(assert (=> b!5360638 m!6389504))

(declare-fun m!6389506 () Bool)

(assert (=> b!5360638 m!6389506))

(declare-fun m!6389508 () Bool)

(assert (=> b!5360638 m!6389508))

(declare-fun m!6389510 () Bool)

(assert (=> b!5360638 m!6389510))

(declare-fun m!6389512 () Bool)

(assert (=> b!5360638 m!6389512))

(declare-fun m!6389514 () Bool)

(assert (=> b!5360638 m!6389514))

(declare-fun m!6389516 () Bool)

(assert (=> b!5360638 m!6389516))

(assert (=> b!5360638 m!6389516))

(declare-fun m!6389518 () Bool)

(assert (=> b!5360644 m!6389518))

(declare-fun m!6389520 () Bool)

(assert (=> b!5360644 m!6389520))

(declare-fun m!6389522 () Bool)

(assert (=> b!5360644 m!6389522))

(declare-fun m!6389524 () Bool)

(assert (=> b!5360644 m!6389524))

(declare-fun m!6389526 () Bool)

(assert (=> b!5360644 m!6389526))

(declare-fun m!6389528 () Bool)

(assert (=> b!5360644 m!6389528))

(declare-fun m!6389530 () Bool)

(assert (=> b!5360644 m!6389530))

(declare-fun m!6389532 () Bool)

(assert (=> b!5360644 m!6389532))

(declare-fun m!6389534 () Bool)

(assert (=> b!5360644 m!6389534))

(declare-fun m!6389536 () Bool)

(assert (=> b!5360646 m!6389536))

(declare-fun m!6389538 () Bool)

(assert (=> b!5360646 m!6389538))

(declare-fun m!6389540 () Bool)

(assert (=> b!5360646 m!6389540))

(declare-fun m!6389542 () Bool)

(assert (=> b!5360646 m!6389542))

(declare-fun m!6389544 () Bool)

(assert (=> b!5360646 m!6389544))

(declare-fun m!6389546 () Bool)

(assert (=> b!5360670 m!6389546))

(declare-fun m!6389548 () Bool)

(assert (=> b!5360655 m!6389548))

(declare-fun m!6389550 () Bool)

(assert (=> b!5360667 m!6389550))

(declare-fun m!6389552 () Bool)

(assert (=> b!5360651 m!6389552))

(declare-fun m!6389554 () Bool)

(assert (=> b!5360640 m!6389554))

(declare-fun m!6389556 () Bool)

(assert (=> b!5360640 m!6389556))

(declare-fun m!6389558 () Bool)

(assert (=> b!5360640 m!6389558))

(declare-fun m!6389560 () Bool)

(assert (=> b!5360658 m!6389560))

(declare-fun m!6389562 () Bool)

(assert (=> b!5360664 m!6389562))

(declare-fun m!6389564 () Bool)

(assert (=> b!5360664 m!6389564))

(declare-fun m!6389566 () Bool)

(assert (=> b!5360664 m!6389566))

(declare-fun m!6389568 () Bool)

(assert (=> b!5360648 m!6389568))

(declare-fun m!6389570 () Bool)

(assert (=> b!5360656 m!6389570))

(declare-fun m!6389572 () Bool)

(assert (=> b!5360656 m!6389572))

(declare-fun m!6389574 () Bool)

(assert (=> b!5360642 m!6389574))

(assert (=> b!5360642 m!6389574))

(declare-fun m!6389576 () Bool)

(assert (=> b!5360642 m!6389576))

(declare-fun m!6389578 () Bool)

(assert (=> b!5360665 m!6389578))

(declare-fun m!6389580 () Bool)

(assert (=> b!5360665 m!6389580))

(declare-fun m!6389582 () Bool)

(assert (=> b!5360665 m!6389582))

(assert (=> b!5360665 m!6389582))

(declare-fun m!6389584 () Bool)

(assert (=> b!5360665 m!6389584))

(declare-fun m!6389586 () Bool)

(assert (=> b!5360665 m!6389586))

(assert (=> b!5360665 m!6389578))

(declare-fun m!6389588 () Bool)

(assert (=> b!5360665 m!6389588))

(declare-fun m!6389590 () Bool)

(assert (=> b!5360641 m!6389590))

(check-sat (not b!5360657) (not b!5360651) (not b!5360666) (not setNonEmpty!34699) (not b!5360658) (not b!5360642) (not b!5360654) (not b!5360647) (not start!564270) (not b!5360646) (not b!5360640) (not b!5360670) (not b!5360661) (not b!5360643) (not b!5360641) (not b!5360648) (not b!5360667) (not b!5360635) (not b!5360649) (not b!5360664) (not b!5360655) (not b!5360659) (not b!5360638) (not b!5360636) (not b!5360663) (not b!5360644) (not b!5360668) (not b!5360656) (not b!5360665) tp_is_empty!39387 (not b!5360637))
(check-sat)
(get-model)

(declare-fun d!1717669 () Bool)

(declare-fun c!933522 () Bool)

(declare-fun isEmpty!33351 (List!61500) Bool)

(assert (=> d!1717669 (= c!933522 (isEmpty!33351 s!2326))))

(declare-fun e!3327117 () Bool)

(assert (=> d!1717669 (= (matchZipper!1311 lt!2184228 s!2326) e!3327117)))

(declare-fun b!5360845 () Bool)

(declare-fun nullableZipper!1390 ((InoxSet Context!8902)) Bool)

(assert (=> b!5360845 (= e!3327117 (nullableZipper!1390 lt!2184228))))

(declare-fun b!5360846 () Bool)

(declare-fun head!11498 (List!61500) C!30404)

(declare-fun tail!10595 (List!61500) List!61500)

(assert (=> b!5360846 (= e!3327117 (matchZipper!1311 (derivationStepZipper!1306 lt!2184228 (head!11498 s!2326)) (tail!10595 s!2326)))))

(assert (= (and d!1717669 c!933522) b!5360845))

(assert (= (and d!1717669 (not c!933522)) b!5360846))

(declare-fun m!6389806 () Bool)

(assert (=> d!1717669 m!6389806))

(declare-fun m!6389810 () Bool)

(assert (=> b!5360845 m!6389810))

(declare-fun m!6389816 () Bool)

(assert (=> b!5360846 m!6389816))

(assert (=> b!5360846 m!6389816))

(declare-fun m!6389818 () Bool)

(assert (=> b!5360846 m!6389818))

(declare-fun m!6389820 () Bool)

(assert (=> b!5360846 m!6389820))

(assert (=> b!5360846 m!6389818))

(assert (=> b!5360846 m!6389820))

(declare-fun m!6389822 () Bool)

(assert (=> b!5360846 m!6389822))

(assert (=> b!5360656 d!1717669))

(declare-fun d!1717685 () Bool)

(declare-fun c!933523 () Bool)

(assert (=> d!1717685 (= c!933523 (isEmpty!33351 (t!374721 s!2326)))))

(declare-fun e!3327119 () Bool)

(assert (=> d!1717685 (= (matchZipper!1311 lt!2184243 (t!374721 s!2326)) e!3327119)))

(declare-fun b!5360848 () Bool)

(assert (=> b!5360848 (= e!3327119 (nullableZipper!1390 lt!2184243))))

(declare-fun b!5360849 () Bool)

(assert (=> b!5360849 (= e!3327119 (matchZipper!1311 (derivationStepZipper!1306 lt!2184243 (head!11498 (t!374721 s!2326))) (tail!10595 (t!374721 s!2326))))))

(assert (= (and d!1717685 c!933523) b!5360848))

(assert (= (and d!1717685 (not c!933523)) b!5360849))

(declare-fun m!6389824 () Bool)

(assert (=> d!1717685 m!6389824))

(declare-fun m!6389826 () Bool)

(assert (=> b!5360848 m!6389826))

(declare-fun m!6389828 () Bool)

(assert (=> b!5360849 m!6389828))

(assert (=> b!5360849 m!6389828))

(declare-fun m!6389830 () Bool)

(assert (=> b!5360849 m!6389830))

(declare-fun m!6389832 () Bool)

(assert (=> b!5360849 m!6389832))

(assert (=> b!5360849 m!6389830))

(assert (=> b!5360849 m!6389832))

(declare-fun m!6389834 () Bool)

(assert (=> b!5360849 m!6389834))

(assert (=> b!5360656 d!1717685))

(declare-fun d!1717687 () Bool)

(assert (=> d!1717687 (= (get!21109 lt!2184229) (v!51206 lt!2184229))))

(assert (=> b!5360638 d!1717687))

(declare-fun bs!1241784 () Bool)

(declare-fun d!1717689 () Bool)

(assert (= bs!1241784 (and d!1717689 b!5360665)))

(declare-fun lambda!276078 () Int)

(assert (=> bs!1241784 (= (= lt!2184251 (regOne!30646 r!7292)) (= lambda!276078 lambda!276041))))

(assert (=> bs!1241784 (not (= lambda!276078 lambda!276042))))

(declare-fun bs!1241785 () Bool)

(assert (= bs!1241785 (and d!1717689 b!5360638)))

(assert (=> bs!1241785 (= lambda!276078 lambda!276044)))

(assert (=> bs!1241785 (not (= lambda!276078 lambda!276045))))

(assert (=> d!1717689 true))

(assert (=> d!1717689 true))

(assert (=> d!1717689 true))

(assert (=> d!1717689 (= (isDefined!11881 (findConcatSeparation!1592 lt!2184251 (regTwo!30646 r!7292) Nil!61376 s!2326 s!2326)) (Exists!2248 lambda!276078))))

(declare-fun lt!2184312 () Unit!153786)

(declare-fun choose!40241 (Regex!15067 Regex!15067 List!61500) Unit!153786)

(assert (=> d!1717689 (= lt!2184312 (choose!40241 lt!2184251 (regTwo!30646 r!7292) s!2326))))

(assert (=> d!1717689 (validRegex!6803 lt!2184251)))

(assert (=> d!1717689 (= (lemmaFindConcatSeparationEquivalentToExists!1356 lt!2184251 (regTwo!30646 r!7292) s!2326) lt!2184312)))

(declare-fun bs!1241786 () Bool)

(assert (= bs!1241786 d!1717689))

(declare-fun m!6389864 () Bool)

(assert (=> bs!1241786 m!6389864))

(declare-fun m!6389866 () Bool)

(assert (=> bs!1241786 m!6389866))

(assert (=> bs!1241786 m!6389474))

(assert (=> bs!1241786 m!6389512))

(assert (=> bs!1241786 m!6389512))

(declare-fun m!6389868 () Bool)

(assert (=> bs!1241786 m!6389868))

(assert (=> b!5360638 d!1717689))

(declare-fun d!1717699 () Bool)

(declare-fun isEmpty!33352 (Option!15178) Bool)

(assert (=> d!1717699 (= (isDefined!11881 lt!2184229) (not (isEmpty!33352 lt!2184229)))))

(declare-fun bs!1241787 () Bool)

(assert (= bs!1241787 d!1717699))

(declare-fun m!6389870 () Bool)

(assert (=> bs!1241787 m!6389870))

(assert (=> b!5360638 d!1717699))

(declare-fun bs!1241803 () Bool)

(declare-fun d!1717701 () Bool)

(assert (= bs!1241803 (and d!1717701 b!5360665)))

(declare-fun lambda!276087 () Int)

(assert (=> bs!1241803 (not (= lambda!276087 lambda!276042))))

(declare-fun bs!1241804 () Bool)

(assert (= bs!1241804 (and d!1717701 b!5360638)))

(assert (=> bs!1241804 (= lambda!276087 lambda!276044)))

(assert (=> bs!1241803 (= (= lt!2184251 (regOne!30646 r!7292)) (= lambda!276087 lambda!276041))))

(declare-fun bs!1241805 () Bool)

(assert (= bs!1241805 (and d!1717701 d!1717689)))

(assert (=> bs!1241805 (= lambda!276087 lambda!276078)))

(assert (=> bs!1241804 (not (= lambda!276087 lambda!276045))))

(assert (=> d!1717701 true))

(assert (=> d!1717701 true))

(assert (=> d!1717701 true))

(declare-fun lambda!276088 () Int)

(assert (=> bs!1241803 (= (= lt!2184251 (regOne!30646 r!7292)) (= lambda!276088 lambda!276042))))

(assert (=> bs!1241804 (not (= lambda!276088 lambda!276044))))

(assert (=> bs!1241803 (not (= lambda!276088 lambda!276041))))

(assert (=> bs!1241805 (not (= lambda!276088 lambda!276078))))

(declare-fun bs!1241808 () Bool)

(assert (= bs!1241808 d!1717701))

(assert (=> bs!1241808 (not (= lambda!276088 lambda!276087))))

(assert (=> bs!1241804 (= lambda!276088 lambda!276045)))

(assert (=> d!1717701 true))

(assert (=> d!1717701 true))

(assert (=> d!1717701 true))

(assert (=> d!1717701 (= (Exists!2248 lambda!276087) (Exists!2248 lambda!276088))))

(declare-fun lt!2184318 () Unit!153786)

(declare-fun choose!40242 (Regex!15067 Regex!15067 List!61500) Unit!153786)

(assert (=> d!1717701 (= lt!2184318 (choose!40242 lt!2184251 (regTwo!30646 r!7292) s!2326))))

(assert (=> d!1717701 (validRegex!6803 lt!2184251)))

(assert (=> d!1717701 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!902 lt!2184251 (regTwo!30646 r!7292) s!2326) lt!2184318)))

(declare-fun m!6389914 () Bool)

(assert (=> bs!1241808 m!6389914))

(declare-fun m!6389916 () Bool)

(assert (=> bs!1241808 m!6389916))

(declare-fun m!6389918 () Bool)

(assert (=> bs!1241808 m!6389918))

(assert (=> bs!1241808 m!6389474))

(assert (=> b!5360638 d!1717701))

(declare-fun b!5361028 () Bool)

(declare-fun e!3327219 () List!61500)

(assert (=> b!5361028 (= e!3327219 (_2!35569 lt!2184230))))

(declare-fun b!5361029 () Bool)

(assert (=> b!5361029 (= e!3327219 (Cons!61376 (h!67824 (_1!35569 lt!2184230)) (++!13370 (t!374721 (_1!35569 lt!2184230)) (_2!35569 lt!2184230))))))

(declare-fun b!5361030 () Bool)

(declare-fun res!2275058 () Bool)

(declare-fun e!3327218 () Bool)

(assert (=> b!5361030 (=> (not res!2275058) (not e!3327218))))

(declare-fun lt!2184325 () List!61500)

(declare-fun size!39781 (List!61500) Int)

(assert (=> b!5361030 (= res!2275058 (= (size!39781 lt!2184325) (+ (size!39781 (_1!35569 lt!2184230)) (size!39781 (_2!35569 lt!2184230)))))))

(declare-fun d!1717721 () Bool)

(assert (=> d!1717721 e!3327218))

(declare-fun res!2275059 () Bool)

(assert (=> d!1717721 (=> (not res!2275059) (not e!3327218))))

(declare-fun content!10955 (List!61500) (InoxSet C!30404))

(assert (=> d!1717721 (= res!2275059 (= (content!10955 lt!2184325) ((_ map or) (content!10955 (_1!35569 lt!2184230)) (content!10955 (_2!35569 lt!2184230)))))))

(assert (=> d!1717721 (= lt!2184325 e!3327219)))

(declare-fun c!933578 () Bool)

(assert (=> d!1717721 (= c!933578 ((_ is Nil!61376) (_1!35569 lt!2184230)))))

(assert (=> d!1717721 (= (++!13370 (_1!35569 lt!2184230) (_2!35569 lt!2184230)) lt!2184325)))

(declare-fun b!5361031 () Bool)

(assert (=> b!5361031 (= e!3327218 (or (not (= (_2!35569 lt!2184230) Nil!61376)) (= lt!2184325 (_1!35569 lt!2184230))))))

(assert (= (and d!1717721 c!933578) b!5361028))

(assert (= (and d!1717721 (not c!933578)) b!5361029))

(assert (= (and d!1717721 res!2275059) b!5361030))

(assert (= (and b!5361030 res!2275058) b!5361031))

(declare-fun m!6389920 () Bool)

(assert (=> b!5361029 m!6389920))

(declare-fun m!6389922 () Bool)

(assert (=> b!5361030 m!6389922))

(declare-fun m!6389924 () Bool)

(assert (=> b!5361030 m!6389924))

(declare-fun m!6389926 () Bool)

(assert (=> b!5361030 m!6389926))

(declare-fun m!6389928 () Bool)

(assert (=> d!1717721 m!6389928))

(declare-fun m!6389930 () Bool)

(assert (=> d!1717721 m!6389930))

(declare-fun m!6389932 () Bool)

(assert (=> d!1717721 m!6389932))

(assert (=> b!5360638 d!1717721))

(declare-fun b!5361160 () Bool)

(declare-fun e!3327289 () Bool)

(declare-fun lt!2184334 () Option!15178)

(assert (=> b!5361160 (= e!3327289 (not (isDefined!11881 lt!2184334)))))

(declare-fun b!5361161 () Bool)

(declare-fun e!3327290 () Option!15178)

(assert (=> b!5361161 (= e!3327290 (Some!15177 (tuple2!64533 Nil!61376 s!2326)))))

(declare-fun b!5361162 () Bool)

(declare-fun res!2275091 () Bool)

(declare-fun e!3327286 () Bool)

(assert (=> b!5361162 (=> (not res!2275091) (not e!3327286))))

(assert (=> b!5361162 (= res!2275091 (matchR!7252 lt!2184251 (_1!35569 (get!21109 lt!2184334))))))

(declare-fun b!5361163 () Bool)

(declare-fun e!3327288 () Option!15178)

(assert (=> b!5361163 (= e!3327290 e!3327288)))

(declare-fun c!933603 () Bool)

(assert (=> b!5361163 (= c!933603 ((_ is Nil!61376) s!2326))))

(declare-fun b!5361164 () Bool)

(assert (=> b!5361164 (= e!3327286 (= (++!13370 (_1!35569 (get!21109 lt!2184334)) (_2!35569 (get!21109 lt!2184334))) s!2326))))

(declare-fun b!5361165 () Bool)

(declare-fun e!3327287 () Bool)

(assert (=> b!5361165 (= e!3327287 (matchR!7252 (regTwo!30646 r!7292) s!2326))))

(declare-fun d!1717723 () Bool)

(assert (=> d!1717723 e!3327289))

(declare-fun res!2275092 () Bool)

(assert (=> d!1717723 (=> res!2275092 e!3327289)))

(assert (=> d!1717723 (= res!2275092 e!3327286)))

(declare-fun res!2275089 () Bool)

(assert (=> d!1717723 (=> (not res!2275089) (not e!3327286))))

(assert (=> d!1717723 (= res!2275089 (isDefined!11881 lt!2184334))))

(assert (=> d!1717723 (= lt!2184334 e!3327290)))

(declare-fun c!933602 () Bool)

(assert (=> d!1717723 (= c!933602 e!3327287)))

(declare-fun res!2275090 () Bool)

(assert (=> d!1717723 (=> (not res!2275090) (not e!3327287))))

(assert (=> d!1717723 (= res!2275090 (matchR!7252 lt!2184251 Nil!61376))))

(assert (=> d!1717723 (validRegex!6803 lt!2184251)))

(assert (=> d!1717723 (= (findConcatSeparation!1592 lt!2184251 (regTwo!30646 r!7292) Nil!61376 s!2326 s!2326) lt!2184334)))

(declare-fun b!5361166 () Bool)

(declare-fun lt!2184335 () Unit!153786)

(declare-fun lt!2184336 () Unit!153786)

(assert (=> b!5361166 (= lt!2184335 lt!2184336)))

(assert (=> b!5361166 (= (++!13370 (++!13370 Nil!61376 (Cons!61376 (h!67824 s!2326) Nil!61376)) (t!374721 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1785 (List!61500 C!30404 List!61500 List!61500) Unit!153786)

(assert (=> b!5361166 (= lt!2184336 (lemmaMoveElementToOtherListKeepsConcatEq!1785 Nil!61376 (h!67824 s!2326) (t!374721 s!2326) s!2326))))

(assert (=> b!5361166 (= e!3327288 (findConcatSeparation!1592 lt!2184251 (regTwo!30646 r!7292) (++!13370 Nil!61376 (Cons!61376 (h!67824 s!2326) Nil!61376)) (t!374721 s!2326) s!2326))))

(declare-fun b!5361167 () Bool)

(assert (=> b!5361167 (= e!3327288 None!15177)))

(declare-fun b!5361168 () Bool)

(declare-fun res!2275088 () Bool)

(assert (=> b!5361168 (=> (not res!2275088) (not e!3327286))))

(assert (=> b!5361168 (= res!2275088 (matchR!7252 (regTwo!30646 r!7292) (_2!35569 (get!21109 lt!2184334))))))

(assert (= (and d!1717723 res!2275090) b!5361165))

(assert (= (and d!1717723 c!933602) b!5361161))

(assert (= (and d!1717723 (not c!933602)) b!5361163))

(assert (= (and b!5361163 c!933603) b!5361167))

(assert (= (and b!5361163 (not c!933603)) b!5361166))

(assert (= (and d!1717723 res!2275089) b!5361162))

(assert (= (and b!5361162 res!2275091) b!5361168))

(assert (= (and b!5361168 res!2275088) b!5361164))

(assert (= (and d!1717723 (not res!2275092)) b!5361160))

(declare-fun m!6389978 () Bool)

(assert (=> b!5361165 m!6389978))

(declare-fun m!6389980 () Bool)

(assert (=> b!5361160 m!6389980))

(assert (=> d!1717723 m!6389980))

(declare-fun m!6389982 () Bool)

(assert (=> d!1717723 m!6389982))

(assert (=> d!1717723 m!6389474))

(declare-fun m!6389984 () Bool)

(assert (=> b!5361168 m!6389984))

(declare-fun m!6389986 () Bool)

(assert (=> b!5361168 m!6389986))

(assert (=> b!5361164 m!6389984))

(declare-fun m!6389988 () Bool)

(assert (=> b!5361164 m!6389988))

(assert (=> b!5361162 m!6389984))

(declare-fun m!6389990 () Bool)

(assert (=> b!5361162 m!6389990))

(declare-fun m!6389992 () Bool)

(assert (=> b!5361166 m!6389992))

(assert (=> b!5361166 m!6389992))

(declare-fun m!6389994 () Bool)

(assert (=> b!5361166 m!6389994))

(declare-fun m!6389996 () Bool)

(assert (=> b!5361166 m!6389996))

(assert (=> b!5361166 m!6389992))

(declare-fun m!6389998 () Bool)

(assert (=> b!5361166 m!6389998))

(assert (=> b!5360638 d!1717723))

(declare-fun d!1717743 () Bool)

(declare-fun choose!40243 (Int) Bool)

(assert (=> d!1717743 (= (Exists!2248 lambda!276044) (choose!40243 lambda!276044))))

(declare-fun bs!1241831 () Bool)

(assert (= bs!1241831 d!1717743))

(declare-fun m!6390000 () Bool)

(assert (=> bs!1241831 m!6390000))

(assert (=> b!5360638 d!1717743))

(declare-fun d!1717745 () Bool)

(assert (=> d!1717745 (= (Exists!2248 lambda!276045) (choose!40243 lambda!276045))))

(declare-fun bs!1241832 () Bool)

(assert (= bs!1241832 d!1717745))

(declare-fun m!6390002 () Bool)

(assert (=> bs!1241832 m!6390002))

(assert (=> b!5360638 d!1717745))

(declare-fun d!1717747 () Bool)

(declare-fun e!3327293 () Bool)

(assert (=> d!1717747 e!3327293))

(declare-fun res!2275095 () Bool)

(assert (=> d!1717747 (=> (not res!2275095) (not e!3327293))))

(declare-fun lt!2184339 () List!61502)

(declare-fun noDuplicate!1344 (List!61502) Bool)

(assert (=> d!1717747 (= res!2275095 (noDuplicate!1344 lt!2184339))))

(declare-fun choose!40244 ((InoxSet Context!8902)) List!61502)

(assert (=> d!1717747 (= lt!2184339 (choose!40244 z!1189))))

(assert (=> d!1717747 (= (toList!8851 z!1189) lt!2184339)))

(declare-fun b!5361171 () Bool)

(declare-fun content!10956 (List!61502) (InoxSet Context!8902))

(assert (=> b!5361171 (= e!3327293 (= (content!10956 lt!2184339) z!1189))))

(assert (= (and d!1717747 res!2275095) b!5361171))

(declare-fun m!6390004 () Bool)

(assert (=> d!1717747 m!6390004))

(declare-fun m!6390006 () Bool)

(assert (=> d!1717747 m!6390006))

(declare-fun m!6390008 () Bool)

(assert (=> b!5361171 m!6390008))

(assert (=> b!5360658 d!1717747))

(declare-fun d!1717749 () Bool)

(declare-fun nullableFct!1542 (Regex!15067) Bool)

(assert (=> d!1717749 (= (nullable!5236 (regOne!30646 (regOne!30646 r!7292))) (nullableFct!1542 (regOne!30646 (regOne!30646 r!7292))))))

(declare-fun bs!1241833 () Bool)

(assert (= bs!1241833 d!1717749))

(declare-fun m!6390010 () Bool)

(assert (=> bs!1241833 m!6390010))

(assert (=> b!5360659 d!1717749))

(declare-fun e!3327296 () Bool)

(declare-fun d!1717751 () Bool)

(assert (=> d!1717751 (= (matchZipper!1311 ((_ map or) lt!2184226 lt!2184255) (t!374721 s!2326)) e!3327296)))

(declare-fun res!2275098 () Bool)

(assert (=> d!1717751 (=> res!2275098 e!3327296)))

(assert (=> d!1717751 (= res!2275098 (matchZipper!1311 lt!2184226 (t!374721 s!2326)))))

(declare-fun lt!2184342 () Unit!153786)

(declare-fun choose!40245 ((InoxSet Context!8902) (InoxSet Context!8902) List!61500) Unit!153786)

(assert (=> d!1717751 (= lt!2184342 (choose!40245 lt!2184226 lt!2184255 (t!374721 s!2326)))))

(assert (=> d!1717751 (= (lemmaZipperConcatMatchesSameAsBothZippers!304 lt!2184226 lt!2184255 (t!374721 s!2326)) lt!2184342)))

(declare-fun b!5361174 () Bool)

(assert (=> b!5361174 (= e!3327296 (matchZipper!1311 lt!2184255 (t!374721 s!2326)))))

(assert (= (and d!1717751 (not res!2275098)) b!5361174))

(assert (=> d!1717751 m!6389558))

(assert (=> d!1717751 m!6389556))

(declare-fun m!6390012 () Bool)

(assert (=> d!1717751 m!6390012))

(assert (=> b!5361174 m!6389550))

(assert (=> b!5360640 d!1717751))

(declare-fun d!1717753 () Bool)

(declare-fun c!933604 () Bool)

(assert (=> d!1717753 (= c!933604 (isEmpty!33351 (t!374721 s!2326)))))

(declare-fun e!3327297 () Bool)

(assert (=> d!1717753 (= (matchZipper!1311 lt!2184226 (t!374721 s!2326)) e!3327297)))

(declare-fun b!5361175 () Bool)

(assert (=> b!5361175 (= e!3327297 (nullableZipper!1390 lt!2184226))))

(declare-fun b!5361176 () Bool)

(assert (=> b!5361176 (= e!3327297 (matchZipper!1311 (derivationStepZipper!1306 lt!2184226 (head!11498 (t!374721 s!2326))) (tail!10595 (t!374721 s!2326))))))

(assert (= (and d!1717753 c!933604) b!5361175))

(assert (= (and d!1717753 (not c!933604)) b!5361176))

(assert (=> d!1717753 m!6389824))

(declare-fun m!6390014 () Bool)

(assert (=> b!5361175 m!6390014))

(assert (=> b!5361176 m!6389828))

(assert (=> b!5361176 m!6389828))

(declare-fun m!6390016 () Bool)

(assert (=> b!5361176 m!6390016))

(assert (=> b!5361176 m!6389832))

(assert (=> b!5361176 m!6390016))

(assert (=> b!5361176 m!6389832))

(declare-fun m!6390018 () Bool)

(assert (=> b!5361176 m!6390018))

(assert (=> b!5360640 d!1717753))

(declare-fun d!1717755 () Bool)

(declare-fun c!933605 () Bool)

(assert (=> d!1717755 (= c!933605 (isEmpty!33351 (t!374721 s!2326)))))

(declare-fun e!3327298 () Bool)

(assert (=> d!1717755 (= (matchZipper!1311 ((_ map or) lt!2184226 lt!2184255) (t!374721 s!2326)) e!3327298)))

(declare-fun b!5361177 () Bool)

(assert (=> b!5361177 (= e!3327298 (nullableZipper!1390 ((_ map or) lt!2184226 lt!2184255)))))

(declare-fun b!5361178 () Bool)

(assert (=> b!5361178 (= e!3327298 (matchZipper!1311 (derivationStepZipper!1306 ((_ map or) lt!2184226 lt!2184255) (head!11498 (t!374721 s!2326))) (tail!10595 (t!374721 s!2326))))))

(assert (= (and d!1717755 c!933605) b!5361177))

(assert (= (and d!1717755 (not c!933605)) b!5361178))

(assert (=> d!1717755 m!6389824))

(declare-fun m!6390020 () Bool)

(assert (=> b!5361177 m!6390020))

(assert (=> b!5361178 m!6389828))

(assert (=> b!5361178 m!6389828))

(declare-fun m!6390022 () Bool)

(assert (=> b!5361178 m!6390022))

(assert (=> b!5361178 m!6389832))

(assert (=> b!5361178 m!6390022))

(assert (=> b!5361178 m!6389832))

(declare-fun m!6390024 () Bool)

(assert (=> b!5361178 m!6390024))

(assert (=> b!5360640 d!1717755))

(declare-fun d!1717757 () Bool)

(declare-fun lt!2184345 () Regex!15067)

(assert (=> d!1717757 (validRegex!6803 lt!2184345)))

(assert (=> d!1717757 (= lt!2184345 (generalisedUnion!996 (unfocusZipperList!509 (Cons!61378 lt!2184239 Nil!61378))))))

(assert (=> d!1717757 (= (unfocusZipper!809 (Cons!61378 lt!2184239 Nil!61378)) lt!2184345)))

(declare-fun bs!1241834 () Bool)

(assert (= bs!1241834 d!1717757))

(declare-fun m!6390026 () Bool)

(assert (=> bs!1241834 m!6390026))

(declare-fun m!6390028 () Bool)

(assert (=> bs!1241834 m!6390028))

(assert (=> bs!1241834 m!6390028))

(declare-fun m!6390030 () Bool)

(assert (=> bs!1241834 m!6390030))

(assert (=> b!5360641 d!1717757))

(declare-fun d!1717759 () Bool)

(declare-fun lt!2184346 () Regex!15067)

(assert (=> d!1717759 (validRegex!6803 lt!2184346)))

(assert (=> d!1717759 (= lt!2184346 (generalisedUnion!996 (unfocusZipperList!509 (Cons!61378 lt!2184244 Nil!61378))))))

(assert (=> d!1717759 (= (unfocusZipper!809 (Cons!61378 lt!2184244 Nil!61378)) lt!2184346)))

(declare-fun bs!1241835 () Bool)

(assert (= bs!1241835 d!1717759))

(declare-fun m!6390032 () Bool)

(assert (=> bs!1241835 m!6390032))

(declare-fun m!6390034 () Bool)

(assert (=> bs!1241835 m!6390034))

(assert (=> bs!1241835 m!6390034))

(declare-fun m!6390036 () Bool)

(assert (=> bs!1241835 m!6390036))

(assert (=> b!5360661 d!1717759))

(declare-fun b!5361199 () Bool)

(declare-fun e!3327314 () Bool)

(assert (=> b!5361199 (= e!3327314 (isEmpty!33347 (t!374722 (unfocusZipperList!509 zl!343))))))

(declare-fun b!5361200 () Bool)

(declare-fun e!3327313 () Bool)

(declare-fun lt!2184349 () Regex!15067)

(declare-fun isUnion!365 (Regex!15067) Bool)

(assert (=> b!5361200 (= e!3327313 (isUnion!365 lt!2184349))))

(declare-fun b!5361201 () Bool)

(declare-fun e!3327312 () Bool)

(declare-fun isEmptyLang!933 (Regex!15067) Bool)

(assert (=> b!5361201 (= e!3327312 (isEmptyLang!933 lt!2184349))))

(declare-fun b!5361202 () Bool)

(declare-fun e!3327311 () Regex!15067)

(assert (=> b!5361202 (= e!3327311 EmptyLang!15067)))

(declare-fun b!5361203 () Bool)

(declare-fun head!11499 (List!61501) Regex!15067)

(assert (=> b!5361203 (= e!3327313 (= lt!2184349 (head!11499 (unfocusZipperList!509 zl!343))))))

(declare-fun d!1717761 () Bool)

(declare-fun e!3327316 () Bool)

(assert (=> d!1717761 e!3327316))

(declare-fun res!2275104 () Bool)

(assert (=> d!1717761 (=> (not res!2275104) (not e!3327316))))

(assert (=> d!1717761 (= res!2275104 (validRegex!6803 lt!2184349))))

(declare-fun e!3327315 () Regex!15067)

(assert (=> d!1717761 (= lt!2184349 e!3327315)))

(declare-fun c!933614 () Bool)

(assert (=> d!1717761 (= c!933614 e!3327314)))

(declare-fun res!2275103 () Bool)

(assert (=> d!1717761 (=> (not res!2275103) (not e!3327314))))

(assert (=> d!1717761 (= res!2275103 ((_ is Cons!61377) (unfocusZipperList!509 zl!343)))))

(declare-fun lambda!276093 () Int)

(declare-fun forall!14477 (List!61501 Int) Bool)

(assert (=> d!1717761 (forall!14477 (unfocusZipperList!509 zl!343) lambda!276093)))

(assert (=> d!1717761 (= (generalisedUnion!996 (unfocusZipperList!509 zl!343)) lt!2184349)))

(declare-fun b!5361204 () Bool)

(assert (=> b!5361204 (= e!3327315 e!3327311)))

(declare-fun c!933615 () Bool)

(assert (=> b!5361204 (= c!933615 ((_ is Cons!61377) (unfocusZipperList!509 zl!343)))))

(declare-fun b!5361205 () Bool)

(assert (=> b!5361205 (= e!3327316 e!3327312)))

(declare-fun c!933617 () Bool)

(assert (=> b!5361205 (= c!933617 (isEmpty!33347 (unfocusZipperList!509 zl!343)))))

(declare-fun b!5361206 () Bool)

(assert (=> b!5361206 (= e!3327315 (h!67825 (unfocusZipperList!509 zl!343)))))

(declare-fun b!5361207 () Bool)

(assert (=> b!5361207 (= e!3327311 (Union!15067 (h!67825 (unfocusZipperList!509 zl!343)) (generalisedUnion!996 (t!374722 (unfocusZipperList!509 zl!343)))))))

(declare-fun b!5361208 () Bool)

(assert (=> b!5361208 (= e!3327312 e!3327313)))

(declare-fun c!933616 () Bool)

(declare-fun tail!10596 (List!61501) List!61501)

(assert (=> b!5361208 (= c!933616 (isEmpty!33347 (tail!10596 (unfocusZipperList!509 zl!343))))))

(assert (= (and d!1717761 res!2275103) b!5361199))

(assert (= (and d!1717761 c!933614) b!5361206))

(assert (= (and d!1717761 (not c!933614)) b!5361204))

(assert (= (and b!5361204 c!933615) b!5361207))

(assert (= (and b!5361204 (not c!933615)) b!5361202))

(assert (= (and d!1717761 res!2275104) b!5361205))

(assert (= (and b!5361205 c!933617) b!5361201))

(assert (= (and b!5361205 (not c!933617)) b!5361208))

(assert (= (and b!5361208 c!933616) b!5361203))

(assert (= (and b!5361208 (not c!933616)) b!5361200))

(assert (=> b!5361203 m!6389574))

(declare-fun m!6390038 () Bool)

(assert (=> b!5361203 m!6390038))

(declare-fun m!6390040 () Bool)

(assert (=> b!5361200 m!6390040))

(declare-fun m!6390042 () Bool)

(assert (=> b!5361199 m!6390042))

(assert (=> b!5361208 m!6389574))

(declare-fun m!6390044 () Bool)

(assert (=> b!5361208 m!6390044))

(assert (=> b!5361208 m!6390044))

(declare-fun m!6390046 () Bool)

(assert (=> b!5361208 m!6390046))

(declare-fun m!6390048 () Bool)

(assert (=> b!5361201 m!6390048))

(assert (=> b!5361205 m!6389574))

(declare-fun m!6390050 () Bool)

(assert (=> b!5361205 m!6390050))

(declare-fun m!6390052 () Bool)

(assert (=> b!5361207 m!6390052))

(declare-fun m!6390054 () Bool)

(assert (=> d!1717761 m!6390054))

(assert (=> d!1717761 m!6389574))

(declare-fun m!6390056 () Bool)

(assert (=> d!1717761 m!6390056))

(assert (=> b!5360642 d!1717761))

(declare-fun bs!1241836 () Bool)

(declare-fun d!1717763 () Bool)

(assert (= bs!1241836 (and d!1717763 d!1717761)))

(declare-fun lambda!276096 () Int)

(assert (=> bs!1241836 (= lambda!276096 lambda!276093)))

(declare-fun lt!2184352 () List!61501)

(assert (=> d!1717763 (forall!14477 lt!2184352 lambda!276096)))

(declare-fun e!3327319 () List!61501)

(assert (=> d!1717763 (= lt!2184352 e!3327319)))

(declare-fun c!933620 () Bool)

(assert (=> d!1717763 (= c!933620 ((_ is Cons!61378) zl!343))))

(assert (=> d!1717763 (= (unfocusZipperList!509 zl!343) lt!2184352)))

(declare-fun b!5361213 () Bool)

(assert (=> b!5361213 (= e!3327319 (Cons!61377 (generalisedConcat!736 (exprs!4951 (h!67826 zl!343))) (unfocusZipperList!509 (t!374723 zl!343))))))

(declare-fun b!5361214 () Bool)

(assert (=> b!5361214 (= e!3327319 Nil!61377)))

(assert (= (and d!1717763 c!933620) b!5361213))

(assert (= (and d!1717763 (not c!933620)) b!5361214))

(declare-fun m!6390058 () Bool)

(assert (=> d!1717763 m!6390058))

(assert (=> b!5361213 m!6389476))

(declare-fun m!6390060 () Bool)

(assert (=> b!5361213 m!6390060))

(assert (=> b!5360642 d!1717763))

(declare-fun bs!1241837 () Bool)

(declare-fun b!5361254 () Bool)

(assert (= bs!1241837 (and b!5361254 b!5360665)))

(declare-fun lambda!276101 () Int)

(assert (=> bs!1241837 (not (= lambda!276101 lambda!276042))))

(declare-fun bs!1241838 () Bool)

(assert (= bs!1241838 (and b!5361254 d!1717701)))

(assert (=> bs!1241838 (not (= lambda!276101 lambda!276088))))

(declare-fun bs!1241839 () Bool)

(assert (= bs!1241839 (and b!5361254 b!5360638)))

(assert (=> bs!1241839 (not (= lambda!276101 lambda!276044))))

(assert (=> bs!1241837 (not (= lambda!276101 lambda!276041))))

(declare-fun bs!1241840 () Bool)

(assert (= bs!1241840 (and b!5361254 d!1717689)))

(assert (=> bs!1241840 (not (= lambda!276101 lambda!276078))))

(assert (=> bs!1241838 (not (= lambda!276101 lambda!276087))))

(assert (=> bs!1241839 (not (= lambda!276101 lambda!276045))))

(assert (=> b!5361254 true))

(assert (=> b!5361254 true))

(declare-fun bs!1241841 () Bool)

(declare-fun b!5361253 () Bool)

(assert (= bs!1241841 (and b!5361253 b!5360665)))

(declare-fun lambda!276102 () Int)

(assert (=> bs!1241841 (= lambda!276102 lambda!276042)))

(declare-fun bs!1241842 () Bool)

(assert (= bs!1241842 (and b!5361253 b!5361254)))

(assert (=> bs!1241842 (not (= lambda!276102 lambda!276101))))

(declare-fun bs!1241843 () Bool)

(assert (= bs!1241843 (and b!5361253 d!1717701)))

(assert (=> bs!1241843 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276102 lambda!276088))))

(declare-fun bs!1241844 () Bool)

(assert (= bs!1241844 (and b!5361253 b!5360638)))

(assert (=> bs!1241844 (not (= lambda!276102 lambda!276044))))

(assert (=> bs!1241841 (not (= lambda!276102 lambda!276041))))

(declare-fun bs!1241845 () Bool)

(assert (= bs!1241845 (and b!5361253 d!1717689)))

(assert (=> bs!1241845 (not (= lambda!276102 lambda!276078))))

(assert (=> bs!1241843 (not (= lambda!276102 lambda!276087))))

(assert (=> bs!1241844 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276102 lambda!276045))))

(assert (=> b!5361253 true))

(assert (=> b!5361253 true))

(declare-fun b!5361247 () Bool)

(declare-fun e!3327340 () Bool)

(declare-fun e!3327342 () Bool)

(assert (=> b!5361247 (= e!3327340 e!3327342)))

(declare-fun res!2275122 () Bool)

(assert (=> b!5361247 (= res!2275122 (not ((_ is EmptyLang!15067) r!7292)))))

(assert (=> b!5361247 (=> (not res!2275122) (not e!3327342))))

(declare-fun b!5361248 () Bool)

(declare-fun res!2275121 () Bool)

(declare-fun e!3327341 () Bool)

(assert (=> b!5361248 (=> res!2275121 e!3327341)))

(declare-fun call!383499 () Bool)

(assert (=> b!5361248 (= res!2275121 call!383499)))

(declare-fun e!3327343 () Bool)

(assert (=> b!5361248 (= e!3327343 e!3327341)))

(declare-fun b!5361249 () Bool)

(declare-fun e!3327338 () Bool)

(assert (=> b!5361249 (= e!3327338 e!3327343)))

(declare-fun c!933629 () Bool)

(assert (=> b!5361249 (= c!933629 ((_ is Star!15067) r!7292))))

(declare-fun b!5361250 () Bool)

(declare-fun e!3327339 () Bool)

(assert (=> b!5361250 (= e!3327338 e!3327339)))

(declare-fun res!2275123 () Bool)

(assert (=> b!5361250 (= res!2275123 (matchRSpec!2170 (regOne!30647 r!7292) s!2326))))

(assert (=> b!5361250 (=> res!2275123 e!3327339)))

(declare-fun b!5361252 () Bool)

(declare-fun c!933631 () Bool)

(assert (=> b!5361252 (= c!933631 ((_ is ElementMatch!15067) r!7292))))

(declare-fun e!3327344 () Bool)

(assert (=> b!5361252 (= e!3327342 e!3327344)))

(declare-fun call!383500 () Bool)

(assert (=> b!5361253 (= e!3327343 call!383500)))

(declare-fun bm!383494 () Bool)

(assert (=> bm!383494 (= call!383500 (Exists!2248 (ite c!933629 lambda!276101 lambda!276102)))))

(assert (=> b!5361254 (= e!3327341 call!383500)))

(declare-fun b!5361255 () Bool)

(assert (=> b!5361255 (= e!3327344 (= s!2326 (Cons!61376 (c!933471 r!7292) Nil!61376)))))

(declare-fun bm!383495 () Bool)

(assert (=> bm!383495 (= call!383499 (isEmpty!33351 s!2326))))

(declare-fun b!5361256 () Bool)

(assert (=> b!5361256 (= e!3327340 call!383499)))

(declare-fun b!5361257 () Bool)

(assert (=> b!5361257 (= e!3327339 (matchRSpec!2170 (regTwo!30647 r!7292) s!2326))))

(declare-fun b!5361251 () Bool)

(declare-fun c!933630 () Bool)

(assert (=> b!5361251 (= c!933630 ((_ is Union!15067) r!7292))))

(assert (=> b!5361251 (= e!3327344 e!3327338)))

(declare-fun d!1717765 () Bool)

(declare-fun c!933632 () Bool)

(assert (=> d!1717765 (= c!933632 ((_ is EmptyExpr!15067) r!7292))))

(assert (=> d!1717765 (= (matchRSpec!2170 r!7292 s!2326) e!3327340)))

(assert (= (and d!1717765 c!933632) b!5361256))

(assert (= (and d!1717765 (not c!933632)) b!5361247))

(assert (= (and b!5361247 res!2275122) b!5361252))

(assert (= (and b!5361252 c!933631) b!5361255))

(assert (= (and b!5361252 (not c!933631)) b!5361251))

(assert (= (and b!5361251 c!933630) b!5361250))

(assert (= (and b!5361251 (not c!933630)) b!5361249))

(assert (= (and b!5361250 (not res!2275123)) b!5361257))

(assert (= (and b!5361249 c!933629) b!5361248))

(assert (= (and b!5361249 (not c!933629)) b!5361253))

(assert (= (and b!5361248 (not res!2275121)) b!5361254))

(assert (= (or b!5361254 b!5361253) bm!383494))

(assert (= (or b!5361256 b!5361248) bm!383495))

(declare-fun m!6390062 () Bool)

(assert (=> b!5361250 m!6390062))

(declare-fun m!6390064 () Bool)

(assert (=> bm!383494 m!6390064))

(assert (=> bm!383495 m!6389806))

(declare-fun m!6390066 () Bool)

(assert (=> b!5361257 m!6390066))

(assert (=> b!5360643 d!1717765))

(declare-fun b!5361286 () Bool)

(declare-fun res!2275146 () Bool)

(declare-fun e!3327365 () Bool)

(assert (=> b!5361286 (=> res!2275146 e!3327365)))

(assert (=> b!5361286 (= res!2275146 (not (isEmpty!33351 (tail!10595 s!2326))))))

(declare-fun b!5361287 () Bool)

(declare-fun e!3327362 () Bool)

(declare-fun lt!2184355 () Bool)

(declare-fun call!383503 () Bool)

(assert (=> b!5361287 (= e!3327362 (= lt!2184355 call!383503))))

(declare-fun b!5361288 () Bool)

(declare-fun res!2275147 () Bool)

(declare-fun e!3327364 () Bool)

(assert (=> b!5361288 (=> res!2275147 e!3327364)))

(declare-fun e!3327361 () Bool)

(assert (=> b!5361288 (= res!2275147 e!3327361)))

(declare-fun res!2275140 () Bool)

(assert (=> b!5361288 (=> (not res!2275140) (not e!3327361))))

(assert (=> b!5361288 (= res!2275140 lt!2184355)))

(declare-fun d!1717767 () Bool)

(assert (=> d!1717767 e!3327362))

(declare-fun c!933640 () Bool)

(assert (=> d!1717767 (= c!933640 ((_ is EmptyExpr!15067) r!7292))))

(declare-fun e!3327363 () Bool)

(assert (=> d!1717767 (= lt!2184355 e!3327363)))

(declare-fun c!933639 () Bool)

(assert (=> d!1717767 (= c!933639 (isEmpty!33351 s!2326))))

(assert (=> d!1717767 (validRegex!6803 r!7292)))

(assert (=> d!1717767 (= (matchR!7252 r!7292 s!2326) lt!2184355)))

(declare-fun b!5361289 () Bool)

(declare-fun res!2275144 () Bool)

(assert (=> b!5361289 (=> (not res!2275144) (not e!3327361))))

(assert (=> b!5361289 (= res!2275144 (not call!383503))))

(declare-fun b!5361290 () Bool)

(assert (=> b!5361290 (= e!3327365 (not (= (head!11498 s!2326) (c!933471 r!7292))))))

(declare-fun b!5361291 () Bool)

(assert (=> b!5361291 (= e!3327363 (nullable!5236 r!7292))))

(declare-fun b!5361292 () Bool)

(declare-fun e!3327359 () Bool)

(assert (=> b!5361292 (= e!3327364 e!3327359)))

(declare-fun res!2275142 () Bool)

(assert (=> b!5361292 (=> (not res!2275142) (not e!3327359))))

(assert (=> b!5361292 (= res!2275142 (not lt!2184355))))

(declare-fun b!5361293 () Bool)

(declare-fun e!3327360 () Bool)

(assert (=> b!5361293 (= e!3327360 (not lt!2184355))))

(declare-fun b!5361294 () Bool)

(declare-fun res!2275141 () Bool)

(assert (=> b!5361294 (=> (not res!2275141) (not e!3327361))))

(assert (=> b!5361294 (= res!2275141 (isEmpty!33351 (tail!10595 s!2326)))))

(declare-fun bm!383498 () Bool)

(assert (=> bm!383498 (= call!383503 (isEmpty!33351 s!2326))))

(declare-fun b!5361295 () Bool)

(declare-fun derivativeStep!4211 (Regex!15067 C!30404) Regex!15067)

(assert (=> b!5361295 (= e!3327363 (matchR!7252 (derivativeStep!4211 r!7292 (head!11498 s!2326)) (tail!10595 s!2326)))))

(declare-fun b!5361296 () Bool)

(assert (=> b!5361296 (= e!3327361 (= (head!11498 s!2326) (c!933471 r!7292)))))

(declare-fun b!5361297 () Bool)

(declare-fun res!2275143 () Bool)

(assert (=> b!5361297 (=> res!2275143 e!3327364)))

(assert (=> b!5361297 (= res!2275143 (not ((_ is ElementMatch!15067) r!7292)))))

(assert (=> b!5361297 (= e!3327360 e!3327364)))

(declare-fun b!5361298 () Bool)

(assert (=> b!5361298 (= e!3327359 e!3327365)))

(declare-fun res!2275145 () Bool)

(assert (=> b!5361298 (=> res!2275145 e!3327365)))

(assert (=> b!5361298 (= res!2275145 call!383503)))

(declare-fun b!5361299 () Bool)

(assert (=> b!5361299 (= e!3327362 e!3327360)))

(declare-fun c!933641 () Bool)

(assert (=> b!5361299 (= c!933641 ((_ is EmptyLang!15067) r!7292))))

(assert (= (and d!1717767 c!933639) b!5361291))

(assert (= (and d!1717767 (not c!933639)) b!5361295))

(assert (= (and d!1717767 c!933640) b!5361287))

(assert (= (and d!1717767 (not c!933640)) b!5361299))

(assert (= (and b!5361299 c!933641) b!5361293))

(assert (= (and b!5361299 (not c!933641)) b!5361297))

(assert (= (and b!5361297 (not res!2275143)) b!5361288))

(assert (= (and b!5361288 res!2275140) b!5361289))

(assert (= (and b!5361289 res!2275144) b!5361294))

(assert (= (and b!5361294 res!2275141) b!5361296))

(assert (= (and b!5361288 (not res!2275147)) b!5361292))

(assert (= (and b!5361292 res!2275142) b!5361298))

(assert (= (and b!5361298 (not res!2275145)) b!5361286))

(assert (= (and b!5361286 (not res!2275146)) b!5361290))

(assert (= (or b!5361287 b!5361289 b!5361298) bm!383498))

(declare-fun m!6390068 () Bool)

(assert (=> b!5361291 m!6390068))

(assert (=> b!5361286 m!6389820))

(assert (=> b!5361286 m!6389820))

(declare-fun m!6390070 () Bool)

(assert (=> b!5361286 m!6390070))

(assert (=> bm!383498 m!6389806))

(assert (=> b!5361296 m!6389816))

(assert (=> b!5361295 m!6389816))

(assert (=> b!5361295 m!6389816))

(declare-fun m!6390072 () Bool)

(assert (=> b!5361295 m!6390072))

(assert (=> b!5361295 m!6389820))

(assert (=> b!5361295 m!6390072))

(assert (=> b!5361295 m!6389820))

(declare-fun m!6390074 () Bool)

(assert (=> b!5361295 m!6390074))

(assert (=> b!5361294 m!6389820))

(assert (=> b!5361294 m!6389820))

(assert (=> b!5361294 m!6390070))

(assert (=> b!5361290 m!6389816))

(assert (=> d!1717767 m!6389806))

(assert (=> d!1717767 m!6389498))

(assert (=> b!5360643 d!1717767))

(declare-fun d!1717769 () Bool)

(assert (=> d!1717769 (= (matchR!7252 r!7292 s!2326) (matchRSpec!2170 r!7292 s!2326))))

(declare-fun lt!2184358 () Unit!153786)

(declare-fun choose!40247 (Regex!15067 List!61500) Unit!153786)

(assert (=> d!1717769 (= lt!2184358 (choose!40247 r!7292 s!2326))))

(assert (=> d!1717769 (validRegex!6803 r!7292)))

(assert (=> d!1717769 (= (mainMatchTheorem!2170 r!7292 s!2326) lt!2184358)))

(declare-fun bs!1241846 () Bool)

(assert (= bs!1241846 d!1717769))

(assert (=> bs!1241846 m!6389480))

(assert (=> bs!1241846 m!6389478))

(declare-fun m!6390076 () Bool)

(assert (=> bs!1241846 m!6390076))

(assert (=> bs!1241846 m!6389498))

(assert (=> b!5360643 d!1717769))

(declare-fun b!5361300 () Bool)

(declare-fun res!2275154 () Bool)

(declare-fun e!3327372 () Bool)

(assert (=> b!5361300 (=> res!2275154 e!3327372)))

(assert (=> b!5361300 (= res!2275154 (not (isEmpty!33351 (tail!10595 s!2326))))))

(declare-fun b!5361301 () Bool)

(declare-fun e!3327369 () Bool)

(declare-fun lt!2184359 () Bool)

(declare-fun call!383504 () Bool)

(assert (=> b!5361301 (= e!3327369 (= lt!2184359 call!383504))))

(declare-fun b!5361302 () Bool)

(declare-fun res!2275155 () Bool)

(declare-fun e!3327371 () Bool)

(assert (=> b!5361302 (=> res!2275155 e!3327371)))

(declare-fun e!3327368 () Bool)

(assert (=> b!5361302 (= res!2275155 e!3327368)))

(declare-fun res!2275148 () Bool)

(assert (=> b!5361302 (=> (not res!2275148) (not e!3327368))))

(assert (=> b!5361302 (= res!2275148 lt!2184359)))

(declare-fun d!1717771 () Bool)

(assert (=> d!1717771 e!3327369))

(declare-fun c!933643 () Bool)

(assert (=> d!1717771 (= c!933643 ((_ is EmptyExpr!15067) lt!2184241))))

(declare-fun e!3327370 () Bool)

(assert (=> d!1717771 (= lt!2184359 e!3327370)))

(declare-fun c!933642 () Bool)

(assert (=> d!1717771 (= c!933642 (isEmpty!33351 s!2326))))

(assert (=> d!1717771 (validRegex!6803 lt!2184241)))

(assert (=> d!1717771 (= (matchR!7252 lt!2184241 s!2326) lt!2184359)))

(declare-fun b!5361303 () Bool)

(declare-fun res!2275152 () Bool)

(assert (=> b!5361303 (=> (not res!2275152) (not e!3327368))))

(assert (=> b!5361303 (= res!2275152 (not call!383504))))

(declare-fun b!5361304 () Bool)

(assert (=> b!5361304 (= e!3327372 (not (= (head!11498 s!2326) (c!933471 lt!2184241))))))

(declare-fun b!5361305 () Bool)

(assert (=> b!5361305 (= e!3327370 (nullable!5236 lt!2184241))))

(declare-fun b!5361306 () Bool)

(declare-fun e!3327366 () Bool)

(assert (=> b!5361306 (= e!3327371 e!3327366)))

(declare-fun res!2275150 () Bool)

(assert (=> b!5361306 (=> (not res!2275150) (not e!3327366))))

(assert (=> b!5361306 (= res!2275150 (not lt!2184359))))

(declare-fun b!5361307 () Bool)

(declare-fun e!3327367 () Bool)

(assert (=> b!5361307 (= e!3327367 (not lt!2184359))))

(declare-fun b!5361308 () Bool)

(declare-fun res!2275149 () Bool)

(assert (=> b!5361308 (=> (not res!2275149) (not e!3327368))))

(assert (=> b!5361308 (= res!2275149 (isEmpty!33351 (tail!10595 s!2326)))))

(declare-fun bm!383499 () Bool)

(assert (=> bm!383499 (= call!383504 (isEmpty!33351 s!2326))))

(declare-fun b!5361309 () Bool)

(assert (=> b!5361309 (= e!3327370 (matchR!7252 (derivativeStep!4211 lt!2184241 (head!11498 s!2326)) (tail!10595 s!2326)))))

(declare-fun b!5361310 () Bool)

(assert (=> b!5361310 (= e!3327368 (= (head!11498 s!2326) (c!933471 lt!2184241)))))

(declare-fun b!5361311 () Bool)

(declare-fun res!2275151 () Bool)

(assert (=> b!5361311 (=> res!2275151 e!3327371)))

(assert (=> b!5361311 (= res!2275151 (not ((_ is ElementMatch!15067) lt!2184241)))))

(assert (=> b!5361311 (= e!3327367 e!3327371)))

(declare-fun b!5361312 () Bool)

(assert (=> b!5361312 (= e!3327366 e!3327372)))

(declare-fun res!2275153 () Bool)

(assert (=> b!5361312 (=> res!2275153 e!3327372)))

(assert (=> b!5361312 (= res!2275153 call!383504)))

(declare-fun b!5361313 () Bool)

(assert (=> b!5361313 (= e!3327369 e!3327367)))

(declare-fun c!933644 () Bool)

(assert (=> b!5361313 (= c!933644 ((_ is EmptyLang!15067) lt!2184241))))

(assert (= (and d!1717771 c!933642) b!5361305))

(assert (= (and d!1717771 (not c!933642)) b!5361309))

(assert (= (and d!1717771 c!933643) b!5361301))

(assert (= (and d!1717771 (not c!933643)) b!5361313))

(assert (= (and b!5361313 c!933644) b!5361307))

(assert (= (and b!5361313 (not c!933644)) b!5361311))

(assert (= (and b!5361311 (not res!2275151)) b!5361302))

(assert (= (and b!5361302 res!2275148) b!5361303))

(assert (= (and b!5361303 res!2275152) b!5361308))

(assert (= (and b!5361308 res!2275149) b!5361310))

(assert (= (and b!5361302 (not res!2275155)) b!5361306))

(assert (= (and b!5361306 res!2275150) b!5361312))

(assert (= (and b!5361312 (not res!2275153)) b!5361300))

(assert (= (and b!5361300 (not res!2275154)) b!5361304))

(assert (= (or b!5361301 b!5361303 b!5361312) bm!383499))

(declare-fun m!6390078 () Bool)

(assert (=> b!5361305 m!6390078))

(assert (=> b!5361300 m!6389820))

(assert (=> b!5361300 m!6389820))

(assert (=> b!5361300 m!6390070))

(assert (=> bm!383499 m!6389806))

(assert (=> b!5361310 m!6389816))

(assert (=> b!5361309 m!6389816))

(assert (=> b!5361309 m!6389816))

(declare-fun m!6390080 () Bool)

(assert (=> b!5361309 m!6390080))

(assert (=> b!5361309 m!6389820))

(assert (=> b!5361309 m!6390080))

(assert (=> b!5361309 m!6389820))

(declare-fun m!6390082 () Bool)

(assert (=> b!5361309 m!6390082))

(assert (=> b!5361308 m!6389820))

(assert (=> b!5361308 m!6389820))

(assert (=> b!5361308 m!6390070))

(assert (=> b!5361304 m!6389816))

(assert (=> d!1717771 m!6389806))

(declare-fun m!6390084 () Bool)

(assert (=> d!1717771 m!6390084))

(assert (=> b!5360664 d!1717771))

(declare-fun bs!1241847 () Bool)

(declare-fun b!5361321 () Bool)

(assert (= bs!1241847 (and b!5361321 b!5360665)))

(declare-fun lambda!276103 () Int)

(assert (=> bs!1241847 (not (= lambda!276103 lambda!276042))))

(declare-fun bs!1241848 () Bool)

(assert (= bs!1241848 (and b!5361321 b!5361254)))

(assert (=> bs!1241848 (= (and (= (reg!15396 lt!2184241) (reg!15396 r!7292)) (= lt!2184241 r!7292)) (= lambda!276103 lambda!276101))))

(declare-fun bs!1241849 () Bool)

(assert (= bs!1241849 (and b!5361321 d!1717701)))

(assert (=> bs!1241849 (not (= lambda!276103 lambda!276088))))

(declare-fun bs!1241850 () Bool)

(assert (= bs!1241850 (and b!5361321 b!5360638)))

(assert (=> bs!1241850 (not (= lambda!276103 lambda!276044))))

(assert (=> bs!1241847 (not (= lambda!276103 lambda!276041))))

(declare-fun bs!1241851 () Bool)

(assert (= bs!1241851 (and b!5361321 d!1717689)))

(assert (=> bs!1241851 (not (= lambda!276103 lambda!276078))))

(assert (=> bs!1241849 (not (= lambda!276103 lambda!276087))))

(declare-fun bs!1241852 () Bool)

(assert (= bs!1241852 (and b!5361321 b!5361253)))

(assert (=> bs!1241852 (not (= lambda!276103 lambda!276102))))

(assert (=> bs!1241850 (not (= lambda!276103 lambda!276045))))

(assert (=> b!5361321 true))

(assert (=> b!5361321 true))

(declare-fun bs!1241853 () Bool)

(declare-fun b!5361320 () Bool)

(assert (= bs!1241853 (and b!5361320 b!5360665)))

(declare-fun lambda!276104 () Int)

(assert (=> bs!1241853 (= (and (= (regOne!30646 lt!2184241) (regOne!30646 r!7292)) (= (regTwo!30646 lt!2184241) (regTwo!30646 r!7292))) (= lambda!276104 lambda!276042))))

(declare-fun bs!1241854 () Bool)

(assert (= bs!1241854 (and b!5361320 b!5361321)))

(assert (=> bs!1241854 (not (= lambda!276104 lambda!276103))))

(declare-fun bs!1241855 () Bool)

(assert (= bs!1241855 (and b!5361320 b!5361254)))

(assert (=> bs!1241855 (not (= lambda!276104 lambda!276101))))

(declare-fun bs!1241856 () Bool)

(assert (= bs!1241856 (and b!5361320 d!1717701)))

(assert (=> bs!1241856 (= (and (= (regOne!30646 lt!2184241) lt!2184251) (= (regTwo!30646 lt!2184241) (regTwo!30646 r!7292))) (= lambda!276104 lambda!276088))))

(declare-fun bs!1241857 () Bool)

(assert (= bs!1241857 (and b!5361320 b!5360638)))

(assert (=> bs!1241857 (not (= lambda!276104 lambda!276044))))

(assert (=> bs!1241853 (not (= lambda!276104 lambda!276041))))

(declare-fun bs!1241858 () Bool)

(assert (= bs!1241858 (and b!5361320 d!1717689)))

(assert (=> bs!1241858 (not (= lambda!276104 lambda!276078))))

(assert (=> bs!1241856 (not (= lambda!276104 lambda!276087))))

(declare-fun bs!1241859 () Bool)

(assert (= bs!1241859 (and b!5361320 b!5361253)))

(assert (=> bs!1241859 (= (and (= (regOne!30646 lt!2184241) (regOne!30646 r!7292)) (= (regTwo!30646 lt!2184241) (regTwo!30646 r!7292))) (= lambda!276104 lambda!276102))))

(assert (=> bs!1241857 (= (and (= (regOne!30646 lt!2184241) lt!2184251) (= (regTwo!30646 lt!2184241) (regTwo!30646 r!7292))) (= lambda!276104 lambda!276045))))

(assert (=> b!5361320 true))

(assert (=> b!5361320 true))

(declare-fun b!5361314 () Bool)

(declare-fun e!3327375 () Bool)

(declare-fun e!3327377 () Bool)

(assert (=> b!5361314 (= e!3327375 e!3327377)))

(declare-fun res!2275157 () Bool)

(assert (=> b!5361314 (= res!2275157 (not ((_ is EmptyLang!15067) lt!2184241)))))

(assert (=> b!5361314 (=> (not res!2275157) (not e!3327377))))

(declare-fun b!5361315 () Bool)

(declare-fun res!2275156 () Bool)

(declare-fun e!3327376 () Bool)

(assert (=> b!5361315 (=> res!2275156 e!3327376)))

(declare-fun call!383505 () Bool)

(assert (=> b!5361315 (= res!2275156 call!383505)))

(declare-fun e!3327378 () Bool)

(assert (=> b!5361315 (= e!3327378 e!3327376)))

(declare-fun b!5361316 () Bool)

(declare-fun e!3327373 () Bool)

(assert (=> b!5361316 (= e!3327373 e!3327378)))

(declare-fun c!933645 () Bool)

(assert (=> b!5361316 (= c!933645 ((_ is Star!15067) lt!2184241))))

(declare-fun b!5361317 () Bool)

(declare-fun e!3327374 () Bool)

(assert (=> b!5361317 (= e!3327373 e!3327374)))

(declare-fun res!2275158 () Bool)

(assert (=> b!5361317 (= res!2275158 (matchRSpec!2170 (regOne!30647 lt!2184241) s!2326))))

(assert (=> b!5361317 (=> res!2275158 e!3327374)))

(declare-fun b!5361319 () Bool)

(declare-fun c!933647 () Bool)

(assert (=> b!5361319 (= c!933647 ((_ is ElementMatch!15067) lt!2184241))))

(declare-fun e!3327379 () Bool)

(assert (=> b!5361319 (= e!3327377 e!3327379)))

(declare-fun call!383506 () Bool)

(assert (=> b!5361320 (= e!3327378 call!383506)))

(declare-fun bm!383500 () Bool)

(assert (=> bm!383500 (= call!383506 (Exists!2248 (ite c!933645 lambda!276103 lambda!276104)))))

(assert (=> b!5361321 (= e!3327376 call!383506)))

(declare-fun b!5361322 () Bool)

(assert (=> b!5361322 (= e!3327379 (= s!2326 (Cons!61376 (c!933471 lt!2184241) Nil!61376)))))

(declare-fun bm!383501 () Bool)

(assert (=> bm!383501 (= call!383505 (isEmpty!33351 s!2326))))

(declare-fun b!5361323 () Bool)

(assert (=> b!5361323 (= e!3327375 call!383505)))

(declare-fun b!5361324 () Bool)

(assert (=> b!5361324 (= e!3327374 (matchRSpec!2170 (regTwo!30647 lt!2184241) s!2326))))

(declare-fun b!5361318 () Bool)

(declare-fun c!933646 () Bool)

(assert (=> b!5361318 (= c!933646 ((_ is Union!15067) lt!2184241))))

(assert (=> b!5361318 (= e!3327379 e!3327373)))

(declare-fun d!1717773 () Bool)

(declare-fun c!933648 () Bool)

(assert (=> d!1717773 (= c!933648 ((_ is EmptyExpr!15067) lt!2184241))))

(assert (=> d!1717773 (= (matchRSpec!2170 lt!2184241 s!2326) e!3327375)))

(assert (= (and d!1717773 c!933648) b!5361323))

(assert (= (and d!1717773 (not c!933648)) b!5361314))

(assert (= (and b!5361314 res!2275157) b!5361319))

(assert (= (and b!5361319 c!933647) b!5361322))

(assert (= (and b!5361319 (not c!933647)) b!5361318))

(assert (= (and b!5361318 c!933646) b!5361317))

(assert (= (and b!5361318 (not c!933646)) b!5361316))

(assert (= (and b!5361317 (not res!2275158)) b!5361324))

(assert (= (and b!5361316 c!933645) b!5361315))

(assert (= (and b!5361316 (not c!933645)) b!5361320))

(assert (= (and b!5361315 (not res!2275156)) b!5361321))

(assert (= (or b!5361321 b!5361320) bm!383500))

(assert (= (or b!5361323 b!5361315) bm!383501))

(declare-fun m!6390086 () Bool)

(assert (=> b!5361317 m!6390086))

(declare-fun m!6390088 () Bool)

(assert (=> bm!383500 m!6390088))

(assert (=> bm!383501 m!6389806))

(declare-fun m!6390090 () Bool)

(assert (=> b!5361324 m!6390090))

(assert (=> b!5360664 d!1717773))

(declare-fun d!1717775 () Bool)

(assert (=> d!1717775 (= (matchR!7252 lt!2184241 s!2326) (matchRSpec!2170 lt!2184241 s!2326))))

(declare-fun lt!2184360 () Unit!153786)

(assert (=> d!1717775 (= lt!2184360 (choose!40247 lt!2184241 s!2326))))

(assert (=> d!1717775 (validRegex!6803 lt!2184241)))

(assert (=> d!1717775 (= (mainMatchTheorem!2170 lt!2184241 s!2326) lt!2184360)))

(declare-fun bs!1241860 () Bool)

(assert (= bs!1241860 d!1717775))

(assert (=> bs!1241860 m!6389562))

(assert (=> bs!1241860 m!6389564))

(declare-fun m!6390092 () Bool)

(assert (=> bs!1241860 m!6390092))

(assert (=> bs!1241860 m!6390084))

(assert (=> b!5360664 d!1717775))

(declare-fun d!1717777 () Bool)

(declare-fun lt!2184361 () Regex!15067)

(assert (=> d!1717777 (validRegex!6803 lt!2184361)))

(assert (=> d!1717777 (= lt!2184361 (generalisedUnion!996 (unfocusZipperList!509 (Cons!61378 lt!2184240 Nil!61378))))))

(assert (=> d!1717777 (= (unfocusZipper!809 (Cons!61378 lt!2184240 Nil!61378)) lt!2184361)))

(declare-fun bs!1241861 () Bool)

(assert (= bs!1241861 d!1717777))

(declare-fun m!6390094 () Bool)

(assert (=> bs!1241861 m!6390094))

(declare-fun m!6390096 () Bool)

(assert (=> bs!1241861 m!6390096))

(assert (=> bs!1241861 m!6390096))

(declare-fun m!6390098 () Bool)

(assert (=> bs!1241861 m!6390098))

(assert (=> b!5360644 d!1717777))

(declare-fun d!1717779 () Bool)

(declare-fun dynLambda!24243 (Int Context!8902) (InoxSet Context!8902))

(assert (=> d!1717779 (= (flatMap!794 lt!2184242 lambda!276043) (dynLambda!24243 lambda!276043 lt!2184240))))

(declare-fun lt!2184364 () Unit!153786)

(declare-fun choose!40248 ((InoxSet Context!8902) Context!8902 Int) Unit!153786)

(assert (=> d!1717779 (= lt!2184364 (choose!40248 lt!2184242 lt!2184240 lambda!276043))))

(assert (=> d!1717779 (= lt!2184242 (store ((as const (Array Context!8902 Bool)) false) lt!2184240 true))))

(assert (=> d!1717779 (= (lemmaFlatMapOnSingletonSet!326 lt!2184242 lt!2184240 lambda!276043) lt!2184364)))

(declare-fun b_lambda!205565 () Bool)

(assert (=> (not b_lambda!205565) (not d!1717779)))

(declare-fun bs!1241862 () Bool)

(assert (= bs!1241862 d!1717779))

(assert (=> bs!1241862 m!6389528))

(declare-fun m!6390100 () Bool)

(assert (=> bs!1241862 m!6390100))

(declare-fun m!6390102 () Bool)

(assert (=> bs!1241862 m!6390102))

(assert (=> bs!1241862 m!6389522))

(assert (=> b!5360644 d!1717779))

(declare-fun d!1717781 () Bool)

(declare-fun choose!40249 ((InoxSet Context!8902) Int) (InoxSet Context!8902))

(assert (=> d!1717781 (= (flatMap!794 lt!2184242 lambda!276043) (choose!40249 lt!2184242 lambda!276043))))

(declare-fun bs!1241863 () Bool)

(assert (= bs!1241863 d!1717781))

(declare-fun m!6390104 () Bool)

(assert (=> bs!1241863 m!6390104))

(assert (=> b!5360644 d!1717781))

(declare-fun d!1717783 () Bool)

(declare-fun c!933654 () Bool)

(declare-fun e!3327388 () Bool)

(assert (=> d!1717783 (= c!933654 e!3327388)))

(declare-fun res!2275161 () Bool)

(assert (=> d!1717783 (=> (not res!2275161) (not e!3327388))))

(assert (=> d!1717783 (= res!2275161 ((_ is Cons!61377) (exprs!4951 lt!2184240)))))

(declare-fun e!3327387 () (InoxSet Context!8902))

(assert (=> d!1717783 (= (derivationStepZipperUp!439 lt!2184240 (h!67824 s!2326)) e!3327387)))

(declare-fun b!5361335 () Bool)

(declare-fun e!3327386 () (InoxSet Context!8902))

(declare-fun call!383509 () (InoxSet Context!8902))

(assert (=> b!5361335 (= e!3327386 call!383509)))

(declare-fun b!5361336 () Bool)

(assert (=> b!5361336 (= e!3327387 e!3327386)))

(declare-fun c!933653 () Bool)

(assert (=> b!5361336 (= c!933653 ((_ is Cons!61377) (exprs!4951 lt!2184240)))))

(declare-fun b!5361337 () Bool)

(assert (=> b!5361337 (= e!3327388 (nullable!5236 (h!67825 (exprs!4951 lt!2184240))))))

(declare-fun bm!383504 () Bool)

(assert (=> bm!383504 (= call!383509 (derivationStepZipperDown!515 (h!67825 (exprs!4951 lt!2184240)) (Context!8903 (t!374722 (exprs!4951 lt!2184240))) (h!67824 s!2326)))))

(declare-fun b!5361338 () Bool)

(assert (=> b!5361338 (= e!3327387 ((_ map or) call!383509 (derivationStepZipperUp!439 (Context!8903 (t!374722 (exprs!4951 lt!2184240))) (h!67824 s!2326))))))

(declare-fun b!5361339 () Bool)

(assert (=> b!5361339 (= e!3327386 ((as const (Array Context!8902 Bool)) false))))

(assert (= (and d!1717783 res!2275161) b!5361337))

(assert (= (and d!1717783 c!933654) b!5361338))

(assert (= (and d!1717783 (not c!933654)) b!5361336))

(assert (= (and b!5361336 c!933653) b!5361335))

(assert (= (and b!5361336 (not c!933653)) b!5361339))

(assert (= (or b!5361338 b!5361335) bm!383504))

(declare-fun m!6390106 () Bool)

(assert (=> b!5361337 m!6390106))

(declare-fun m!6390108 () Bool)

(assert (=> bm!383504 m!6390108))

(declare-fun m!6390110 () Bool)

(assert (=> b!5361338 m!6390110))

(assert (=> b!5360644 d!1717783))

(declare-fun d!1717785 () Bool)

(assert (=> d!1717785 (= (flatMap!794 lt!2184235 lambda!276043) (choose!40249 lt!2184235 lambda!276043))))

(declare-fun bs!1241864 () Bool)

(assert (= bs!1241864 d!1717785))

(declare-fun m!6390112 () Bool)

(assert (=> bs!1241864 m!6390112))

(assert (=> b!5360644 d!1717785))

(declare-fun d!1717787 () Bool)

(declare-fun c!933656 () Bool)

(declare-fun e!3327391 () Bool)

(assert (=> d!1717787 (= c!933656 e!3327391)))

(declare-fun res!2275162 () Bool)

(assert (=> d!1717787 (=> (not res!2275162) (not e!3327391))))

(assert (=> d!1717787 (= res!2275162 ((_ is Cons!61377) (exprs!4951 lt!2184244)))))

(declare-fun e!3327390 () (InoxSet Context!8902))

(assert (=> d!1717787 (= (derivationStepZipperUp!439 lt!2184244 (h!67824 s!2326)) e!3327390)))

(declare-fun b!5361340 () Bool)

(declare-fun e!3327389 () (InoxSet Context!8902))

(declare-fun call!383510 () (InoxSet Context!8902))

(assert (=> b!5361340 (= e!3327389 call!383510)))

(declare-fun b!5361341 () Bool)

(assert (=> b!5361341 (= e!3327390 e!3327389)))

(declare-fun c!933655 () Bool)

(assert (=> b!5361341 (= c!933655 ((_ is Cons!61377) (exprs!4951 lt!2184244)))))

(declare-fun b!5361342 () Bool)

(assert (=> b!5361342 (= e!3327391 (nullable!5236 (h!67825 (exprs!4951 lt!2184244))))))

(declare-fun bm!383505 () Bool)

(assert (=> bm!383505 (= call!383510 (derivationStepZipperDown!515 (h!67825 (exprs!4951 lt!2184244)) (Context!8903 (t!374722 (exprs!4951 lt!2184244))) (h!67824 s!2326)))))

(declare-fun b!5361343 () Bool)

(assert (=> b!5361343 (= e!3327390 ((_ map or) call!383510 (derivationStepZipperUp!439 (Context!8903 (t!374722 (exprs!4951 lt!2184244))) (h!67824 s!2326))))))

(declare-fun b!5361344 () Bool)

(assert (=> b!5361344 (= e!3327389 ((as const (Array Context!8902 Bool)) false))))

(assert (= (and d!1717787 res!2275162) b!5361342))

(assert (= (and d!1717787 c!933656) b!5361343))

(assert (= (and d!1717787 (not c!933656)) b!5361341))

(assert (= (and b!5361341 c!933655) b!5361340))

(assert (= (and b!5361341 (not c!933655)) b!5361344))

(assert (= (or b!5361343 b!5361340) bm!383505))

(declare-fun m!6390114 () Bool)

(assert (=> b!5361342 m!6390114))

(declare-fun m!6390116 () Bool)

(assert (=> bm!383505 m!6390116))

(declare-fun m!6390118 () Bool)

(assert (=> b!5361343 m!6390118))

(assert (=> b!5360644 d!1717787))

(declare-fun d!1717789 () Bool)

(assert (=> d!1717789 (= (flatMap!794 lt!2184235 lambda!276043) (dynLambda!24243 lambda!276043 lt!2184244))))

(declare-fun lt!2184365 () Unit!153786)

(assert (=> d!1717789 (= lt!2184365 (choose!40248 lt!2184235 lt!2184244 lambda!276043))))

(assert (=> d!1717789 (= lt!2184235 (store ((as const (Array Context!8902 Bool)) false) lt!2184244 true))))

(assert (=> d!1717789 (= (lemmaFlatMapOnSingletonSet!326 lt!2184235 lt!2184244 lambda!276043) lt!2184365)))

(declare-fun b_lambda!205567 () Bool)

(assert (=> (not b_lambda!205567) (not d!1717789)))

(declare-fun bs!1241865 () Bool)

(assert (= bs!1241865 d!1717789))

(assert (=> bs!1241865 m!6389518))

(declare-fun m!6390120 () Bool)

(assert (=> bs!1241865 m!6390120))

(declare-fun m!6390122 () Bool)

(assert (=> bs!1241865 m!6390122))

(assert (=> bs!1241865 m!6389532))

(assert (=> b!5360644 d!1717789))

(declare-fun b!5361345 () Bool)

(declare-fun e!3327395 () Bool)

(declare-fun lt!2184366 () Option!15178)

(assert (=> b!5361345 (= e!3327395 (not (isDefined!11881 lt!2184366)))))

(declare-fun b!5361346 () Bool)

(declare-fun e!3327396 () Option!15178)

(assert (=> b!5361346 (= e!3327396 (Some!15177 (tuple2!64533 Nil!61376 s!2326)))))

(declare-fun b!5361347 () Bool)

(declare-fun res!2275166 () Bool)

(declare-fun e!3327392 () Bool)

(assert (=> b!5361347 (=> (not res!2275166) (not e!3327392))))

(assert (=> b!5361347 (= res!2275166 (matchR!7252 (regOne!30646 r!7292) (_1!35569 (get!21109 lt!2184366))))))

(declare-fun b!5361348 () Bool)

(declare-fun e!3327394 () Option!15178)

(assert (=> b!5361348 (= e!3327396 e!3327394)))

(declare-fun c!933658 () Bool)

(assert (=> b!5361348 (= c!933658 ((_ is Nil!61376) s!2326))))

(declare-fun b!5361349 () Bool)

(assert (=> b!5361349 (= e!3327392 (= (++!13370 (_1!35569 (get!21109 lt!2184366)) (_2!35569 (get!21109 lt!2184366))) s!2326))))

(declare-fun b!5361350 () Bool)

(declare-fun e!3327393 () Bool)

(assert (=> b!5361350 (= e!3327393 (matchR!7252 (regTwo!30646 r!7292) s!2326))))

(declare-fun d!1717791 () Bool)

(assert (=> d!1717791 e!3327395))

(declare-fun res!2275167 () Bool)

(assert (=> d!1717791 (=> res!2275167 e!3327395)))

(assert (=> d!1717791 (= res!2275167 e!3327392)))

(declare-fun res!2275164 () Bool)

(assert (=> d!1717791 (=> (not res!2275164) (not e!3327392))))

(assert (=> d!1717791 (= res!2275164 (isDefined!11881 lt!2184366))))

(assert (=> d!1717791 (= lt!2184366 e!3327396)))

(declare-fun c!933657 () Bool)

(assert (=> d!1717791 (= c!933657 e!3327393)))

(declare-fun res!2275165 () Bool)

(assert (=> d!1717791 (=> (not res!2275165) (not e!3327393))))

(assert (=> d!1717791 (= res!2275165 (matchR!7252 (regOne!30646 r!7292) Nil!61376))))

(assert (=> d!1717791 (validRegex!6803 (regOne!30646 r!7292))))

(assert (=> d!1717791 (= (findConcatSeparation!1592 (regOne!30646 r!7292) (regTwo!30646 r!7292) Nil!61376 s!2326 s!2326) lt!2184366)))

(declare-fun b!5361351 () Bool)

(declare-fun lt!2184367 () Unit!153786)

(declare-fun lt!2184368 () Unit!153786)

(assert (=> b!5361351 (= lt!2184367 lt!2184368)))

(assert (=> b!5361351 (= (++!13370 (++!13370 Nil!61376 (Cons!61376 (h!67824 s!2326) Nil!61376)) (t!374721 s!2326)) s!2326)))

(assert (=> b!5361351 (= lt!2184368 (lemmaMoveElementToOtherListKeepsConcatEq!1785 Nil!61376 (h!67824 s!2326) (t!374721 s!2326) s!2326))))

(assert (=> b!5361351 (= e!3327394 (findConcatSeparation!1592 (regOne!30646 r!7292) (regTwo!30646 r!7292) (++!13370 Nil!61376 (Cons!61376 (h!67824 s!2326) Nil!61376)) (t!374721 s!2326) s!2326))))

(declare-fun b!5361352 () Bool)

(assert (=> b!5361352 (= e!3327394 None!15177)))

(declare-fun b!5361353 () Bool)

(declare-fun res!2275163 () Bool)

(assert (=> b!5361353 (=> (not res!2275163) (not e!3327392))))

(assert (=> b!5361353 (= res!2275163 (matchR!7252 (regTwo!30646 r!7292) (_2!35569 (get!21109 lt!2184366))))))

(assert (= (and d!1717791 res!2275165) b!5361350))

(assert (= (and d!1717791 c!933657) b!5361346))

(assert (= (and d!1717791 (not c!933657)) b!5361348))

(assert (= (and b!5361348 c!933658) b!5361352))

(assert (= (and b!5361348 (not c!933658)) b!5361351))

(assert (= (and d!1717791 res!2275164) b!5361347))

(assert (= (and b!5361347 res!2275166) b!5361353))

(assert (= (and b!5361353 res!2275163) b!5361349))

(assert (= (and d!1717791 (not res!2275167)) b!5361345))

(assert (=> b!5361350 m!6389978))

(declare-fun m!6390124 () Bool)

(assert (=> b!5361345 m!6390124))

(assert (=> d!1717791 m!6390124))

(declare-fun m!6390126 () Bool)

(assert (=> d!1717791 m!6390126))

(declare-fun m!6390128 () Bool)

(assert (=> d!1717791 m!6390128))

(declare-fun m!6390130 () Bool)

(assert (=> b!5361353 m!6390130))

(declare-fun m!6390132 () Bool)

(assert (=> b!5361353 m!6390132))

(assert (=> b!5361349 m!6390130))

(declare-fun m!6390134 () Bool)

(assert (=> b!5361349 m!6390134))

(assert (=> b!5361347 m!6390130))

(declare-fun m!6390136 () Bool)

(assert (=> b!5361347 m!6390136))

(assert (=> b!5361351 m!6389992))

(assert (=> b!5361351 m!6389992))

(assert (=> b!5361351 m!6389994))

(assert (=> b!5361351 m!6389996))

(assert (=> b!5361351 m!6389992))

(declare-fun m!6390138 () Bool)

(assert (=> b!5361351 m!6390138))

(assert (=> b!5360665 d!1717791))

(declare-fun d!1717793 () Bool)

(assert (=> d!1717793 (= (Exists!2248 lambda!276042) (choose!40243 lambda!276042))))

(declare-fun bs!1241866 () Bool)

(assert (= bs!1241866 d!1717793))

(declare-fun m!6390140 () Bool)

(assert (=> bs!1241866 m!6390140))

(assert (=> b!5360665 d!1717793))

(declare-fun d!1717795 () Bool)

(assert (=> d!1717795 (= (Exists!2248 lambda!276041) (choose!40243 lambda!276041))))

(declare-fun bs!1241867 () Bool)

(assert (= bs!1241867 d!1717795))

(declare-fun m!6390142 () Bool)

(assert (=> bs!1241867 m!6390142))

(assert (=> b!5360665 d!1717795))

(declare-fun bs!1241868 () Bool)

(declare-fun d!1717797 () Bool)

(assert (= bs!1241868 (and d!1717797 b!5360665)))

(declare-fun lambda!276105 () Int)

(assert (=> bs!1241868 (not (= lambda!276105 lambda!276042))))

(declare-fun bs!1241869 () Bool)

(assert (= bs!1241869 (and d!1717797 b!5361321)))

(assert (=> bs!1241869 (not (= lambda!276105 lambda!276103))))

(declare-fun bs!1241870 () Bool)

(assert (= bs!1241870 (and d!1717797 b!5361254)))

(assert (=> bs!1241870 (not (= lambda!276105 lambda!276101))))

(declare-fun bs!1241871 () Bool)

(assert (= bs!1241871 (and d!1717797 d!1717701)))

(assert (=> bs!1241871 (not (= lambda!276105 lambda!276088))))

(declare-fun bs!1241872 () Bool)

(assert (= bs!1241872 (and d!1717797 b!5360638)))

(assert (=> bs!1241872 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276105 lambda!276044))))

(declare-fun bs!1241873 () Bool)

(assert (= bs!1241873 (and d!1717797 d!1717689)))

(assert (=> bs!1241873 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276105 lambda!276078))))

(assert (=> bs!1241871 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276105 lambda!276087))))

(declare-fun bs!1241874 () Bool)

(assert (= bs!1241874 (and d!1717797 b!5361253)))

(assert (=> bs!1241874 (not (= lambda!276105 lambda!276102))))

(assert (=> bs!1241872 (not (= lambda!276105 lambda!276045))))

(declare-fun bs!1241875 () Bool)

(assert (= bs!1241875 (and d!1717797 b!5361320)))

(assert (=> bs!1241875 (not (= lambda!276105 lambda!276104))))

(assert (=> bs!1241868 (= lambda!276105 lambda!276041)))

(assert (=> d!1717797 true))

(assert (=> d!1717797 true))

(assert (=> d!1717797 true))

(assert (=> d!1717797 (= (isDefined!11881 (findConcatSeparation!1592 (regOne!30646 r!7292) (regTwo!30646 r!7292) Nil!61376 s!2326 s!2326)) (Exists!2248 lambda!276105))))

(declare-fun lt!2184369 () Unit!153786)

(assert (=> d!1717797 (= lt!2184369 (choose!40241 (regOne!30646 r!7292) (regTwo!30646 r!7292) s!2326))))

(assert (=> d!1717797 (validRegex!6803 (regOne!30646 r!7292))))

(assert (=> d!1717797 (= (lemmaFindConcatSeparationEquivalentToExists!1356 (regOne!30646 r!7292) (regTwo!30646 r!7292) s!2326) lt!2184369)))

(declare-fun bs!1241876 () Bool)

(assert (= bs!1241876 d!1717797))

(declare-fun m!6390144 () Bool)

(assert (=> bs!1241876 m!6390144))

(declare-fun m!6390146 () Bool)

(assert (=> bs!1241876 m!6390146))

(assert (=> bs!1241876 m!6390128))

(assert (=> bs!1241876 m!6389578))

(assert (=> bs!1241876 m!6389578))

(assert (=> bs!1241876 m!6389580))

(assert (=> b!5360665 d!1717797))

(declare-fun bs!1241877 () Bool)

(declare-fun d!1717799 () Bool)

(assert (= bs!1241877 (and d!1717799 b!5360665)))

(declare-fun lambda!276106 () Int)

(assert (=> bs!1241877 (not (= lambda!276106 lambda!276042))))

(declare-fun bs!1241878 () Bool)

(assert (= bs!1241878 (and d!1717799 b!5361321)))

(assert (=> bs!1241878 (not (= lambda!276106 lambda!276103))))

(declare-fun bs!1241879 () Bool)

(assert (= bs!1241879 (and d!1717799 d!1717797)))

(assert (=> bs!1241879 (= lambda!276106 lambda!276105)))

(declare-fun bs!1241880 () Bool)

(assert (= bs!1241880 (and d!1717799 b!5361254)))

(assert (=> bs!1241880 (not (= lambda!276106 lambda!276101))))

(declare-fun bs!1241881 () Bool)

(assert (= bs!1241881 (and d!1717799 d!1717701)))

(assert (=> bs!1241881 (not (= lambda!276106 lambda!276088))))

(declare-fun bs!1241882 () Bool)

(assert (= bs!1241882 (and d!1717799 b!5360638)))

(assert (=> bs!1241882 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276106 lambda!276044))))

(declare-fun bs!1241883 () Bool)

(assert (= bs!1241883 (and d!1717799 d!1717689)))

(assert (=> bs!1241883 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276106 lambda!276078))))

(assert (=> bs!1241881 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276106 lambda!276087))))

(declare-fun bs!1241884 () Bool)

(assert (= bs!1241884 (and d!1717799 b!5361253)))

(assert (=> bs!1241884 (not (= lambda!276106 lambda!276102))))

(assert (=> bs!1241882 (not (= lambda!276106 lambda!276045))))

(declare-fun bs!1241885 () Bool)

(assert (= bs!1241885 (and d!1717799 b!5361320)))

(assert (=> bs!1241885 (not (= lambda!276106 lambda!276104))))

(assert (=> bs!1241877 (= lambda!276106 lambda!276041)))

(assert (=> d!1717799 true))

(assert (=> d!1717799 true))

(assert (=> d!1717799 true))

(declare-fun lambda!276107 () Int)

(assert (=> bs!1241877 (= lambda!276107 lambda!276042)))

(assert (=> bs!1241878 (not (= lambda!276107 lambda!276103))))

(assert (=> bs!1241879 (not (= lambda!276107 lambda!276105))))

(assert (=> bs!1241880 (not (= lambda!276107 lambda!276101))))

(assert (=> bs!1241881 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276107 lambda!276088))))

(assert (=> bs!1241882 (not (= lambda!276107 lambda!276044))))

(assert (=> bs!1241883 (not (= lambda!276107 lambda!276078))))

(assert (=> bs!1241881 (not (= lambda!276107 lambda!276087))))

(assert (=> bs!1241882 (= (= (regOne!30646 r!7292) lt!2184251) (= lambda!276107 lambda!276045))))

(assert (=> bs!1241885 (= (and (= (regOne!30646 r!7292) (regOne!30646 lt!2184241)) (= (regTwo!30646 r!7292) (regTwo!30646 lt!2184241))) (= lambda!276107 lambda!276104))))

(assert (=> bs!1241877 (not (= lambda!276107 lambda!276041))))

(assert (=> bs!1241884 (= lambda!276107 lambda!276102)))

(declare-fun bs!1241886 () Bool)

(assert (= bs!1241886 d!1717799))

(assert (=> bs!1241886 (not (= lambda!276107 lambda!276106))))

(assert (=> d!1717799 true))

(assert (=> d!1717799 true))

(assert (=> d!1717799 true))

(assert (=> d!1717799 (= (Exists!2248 lambda!276106) (Exists!2248 lambda!276107))))

(declare-fun lt!2184370 () Unit!153786)

(assert (=> d!1717799 (= lt!2184370 (choose!40242 (regOne!30646 r!7292) (regTwo!30646 r!7292) s!2326))))

(assert (=> d!1717799 (validRegex!6803 (regOne!30646 r!7292))))

(assert (=> d!1717799 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!902 (regOne!30646 r!7292) (regTwo!30646 r!7292) s!2326) lt!2184370)))

(declare-fun m!6390148 () Bool)

(assert (=> bs!1241886 m!6390148))

(declare-fun m!6390150 () Bool)

(assert (=> bs!1241886 m!6390150))

(declare-fun m!6390152 () Bool)

(assert (=> bs!1241886 m!6390152))

(assert (=> bs!1241886 m!6390128))

(assert (=> b!5360665 d!1717799))

(declare-fun d!1717801 () Bool)

(assert (=> d!1717801 (= (isDefined!11881 (findConcatSeparation!1592 (regOne!30646 r!7292) (regTwo!30646 r!7292) Nil!61376 s!2326 s!2326)) (not (isEmpty!33352 (findConcatSeparation!1592 (regOne!30646 r!7292) (regTwo!30646 r!7292) Nil!61376 s!2326 s!2326))))))

(declare-fun bs!1241887 () Bool)

(assert (= bs!1241887 d!1717801))

(assert (=> bs!1241887 m!6389578))

(declare-fun m!6390154 () Bool)

(assert (=> bs!1241887 m!6390154))

(assert (=> b!5360665 d!1717801))

(declare-fun bm!383518 () Bool)

(declare-fun call!383528 () (InoxSet Context!8902))

(declare-fun call!383523 () (InoxSet Context!8902))

(assert (=> bm!383518 (= call!383528 call!383523)))

(declare-fun b!5361376 () Bool)

(declare-fun c!933672 () Bool)

(declare-fun e!3327412 () Bool)

(assert (=> b!5361376 (= c!933672 e!3327412)))

(declare-fun res!2275170 () Bool)

(assert (=> b!5361376 (=> (not res!2275170) (not e!3327412))))

(assert (=> b!5361376 (= res!2275170 ((_ is Concat!23912) (reg!15396 (regOne!30646 r!7292))))))

(declare-fun e!3327410 () (InoxSet Context!8902))

(declare-fun e!3327414 () (InoxSet Context!8902))

(assert (=> b!5361376 (= e!3327410 e!3327414)))

(declare-fun b!5361377 () Bool)

(declare-fun call!383526 () (InoxSet Context!8902))

(assert (=> b!5361377 (= e!3327410 ((_ map or) call!383526 call!383523))))

(declare-fun b!5361378 () Bool)

(declare-fun e!3327411 () (InoxSet Context!8902))

(assert (=> b!5361378 (= e!3327411 (store ((as const (Array Context!8902 Bool)) false) lt!2184244 true))))

(declare-fun bm!383519 () Bool)

(declare-fun c!933673 () Bool)

(declare-fun call!383527 () List!61501)

(declare-fun $colon$colon!1440 (List!61501 Regex!15067) List!61501)

(assert (=> bm!383519 (= call!383527 ($colon$colon!1440 (exprs!4951 lt!2184244) (ite (or c!933672 c!933673) (regTwo!30646 (reg!15396 (regOne!30646 r!7292))) (reg!15396 (regOne!30646 r!7292)))))))

(declare-fun b!5361379 () Bool)

(declare-fun e!3327409 () (InoxSet Context!8902))

(assert (=> b!5361379 (= e!3327409 ((as const (Array Context!8902 Bool)) false))))

(declare-fun b!5361380 () Bool)

(assert (=> b!5361380 (= e!3327412 (nullable!5236 (regOne!30646 (reg!15396 (regOne!30646 r!7292)))))))

(declare-fun c!933670 () Bool)

(declare-fun bm!383520 () Bool)

(assert (=> bm!383520 (= call!383526 (derivationStepZipperDown!515 (ite c!933670 (regOne!30647 (reg!15396 (regOne!30646 r!7292))) (regOne!30646 (reg!15396 (regOne!30646 r!7292)))) (ite c!933670 lt!2184244 (Context!8903 call!383527)) (h!67824 s!2326)))))

(declare-fun b!5361381 () Bool)

(declare-fun e!3327413 () (InoxSet Context!8902))

(assert (=> b!5361381 (= e!3327414 e!3327413)))

(assert (=> b!5361381 (= c!933673 ((_ is Concat!23912) (reg!15396 (regOne!30646 r!7292))))))

(declare-fun b!5361382 () Bool)

(declare-fun call!383525 () (InoxSet Context!8902))

(assert (=> b!5361382 (= e!3327413 call!383525)))

(declare-fun d!1717803 () Bool)

(declare-fun c!933669 () Bool)

(assert (=> d!1717803 (= c!933669 (and ((_ is ElementMatch!15067) (reg!15396 (regOne!30646 r!7292))) (= (c!933471 (reg!15396 (regOne!30646 r!7292))) (h!67824 s!2326))))))

(assert (=> d!1717803 (= (derivationStepZipperDown!515 (reg!15396 (regOne!30646 r!7292)) lt!2184244 (h!67824 s!2326)) e!3327411)))

(declare-fun b!5361383 () Bool)

(declare-fun c!933671 () Bool)

(assert (=> b!5361383 (= c!933671 ((_ is Star!15067) (reg!15396 (regOne!30646 r!7292))))))

(assert (=> b!5361383 (= e!3327413 e!3327409)))

(declare-fun b!5361384 () Bool)

(assert (=> b!5361384 (= e!3327411 e!3327410)))

(assert (=> b!5361384 (= c!933670 ((_ is Union!15067) (reg!15396 (regOne!30646 r!7292))))))

(declare-fun b!5361385 () Bool)

(assert (=> b!5361385 (= e!3327409 call!383525)))

(declare-fun b!5361386 () Bool)

(assert (=> b!5361386 (= e!3327414 ((_ map or) call!383526 call!383528))))

(declare-fun call!383524 () List!61501)

(declare-fun bm!383521 () Bool)

(assert (=> bm!383521 (= call!383523 (derivationStepZipperDown!515 (ite c!933670 (regTwo!30647 (reg!15396 (regOne!30646 r!7292))) (ite c!933672 (regTwo!30646 (reg!15396 (regOne!30646 r!7292))) (ite c!933673 (regOne!30646 (reg!15396 (regOne!30646 r!7292))) (reg!15396 (reg!15396 (regOne!30646 r!7292)))))) (ite (or c!933670 c!933672) lt!2184244 (Context!8903 call!383524)) (h!67824 s!2326)))))

(declare-fun bm!383522 () Bool)

(assert (=> bm!383522 (= call!383525 call!383528)))

(declare-fun bm!383523 () Bool)

(assert (=> bm!383523 (= call!383524 call!383527)))

(assert (= (and d!1717803 c!933669) b!5361378))

(assert (= (and d!1717803 (not c!933669)) b!5361384))

(assert (= (and b!5361384 c!933670) b!5361377))

(assert (= (and b!5361384 (not c!933670)) b!5361376))

(assert (= (and b!5361376 res!2275170) b!5361380))

(assert (= (and b!5361376 c!933672) b!5361386))

(assert (= (and b!5361376 (not c!933672)) b!5361381))

(assert (= (and b!5361381 c!933673) b!5361382))

(assert (= (and b!5361381 (not c!933673)) b!5361383))

(assert (= (and b!5361383 c!933671) b!5361385))

(assert (= (and b!5361383 (not c!933671)) b!5361379))

(assert (= (or b!5361382 b!5361385) bm!383523))

(assert (= (or b!5361382 b!5361385) bm!383522))

(assert (= (or b!5361386 bm!383523) bm!383519))

(assert (= (or b!5361386 bm!383522) bm!383518))

(assert (= (or b!5361377 bm!383518) bm!383521))

(assert (= (or b!5361377 b!5361386) bm!383520))

(declare-fun m!6390156 () Bool)

(assert (=> bm!383521 m!6390156))

(declare-fun m!6390158 () Bool)

(assert (=> bm!383520 m!6390158))

(assert (=> b!5361378 m!6389532))

(declare-fun m!6390160 () Bool)

(assert (=> bm!383519 m!6390160))

(declare-fun m!6390162 () Bool)

(assert (=> b!5361380 m!6390162))

(assert (=> b!5360666 d!1717803))

(declare-fun d!1717805 () Bool)

(assert (=> d!1717805 (= (flatMap!794 lt!2184228 lambda!276043) (choose!40249 lt!2184228 lambda!276043))))

(declare-fun bs!1241888 () Bool)

(assert (= bs!1241888 d!1717805))

(declare-fun m!6390164 () Bool)

(assert (=> bs!1241888 m!6390164))

(assert (=> b!5360646 d!1717805))

(declare-fun d!1717807 () Bool)

(declare-fun c!933675 () Bool)

(declare-fun e!3327417 () Bool)

(assert (=> d!1717807 (= c!933675 e!3327417)))

(declare-fun res!2275171 () Bool)

(assert (=> d!1717807 (=> (not res!2275171) (not e!3327417))))

(assert (=> d!1717807 (= res!2275171 ((_ is Cons!61377) (exprs!4951 lt!2184239)))))

(declare-fun e!3327416 () (InoxSet Context!8902))

(assert (=> d!1717807 (= (derivationStepZipperUp!439 lt!2184239 (h!67824 s!2326)) e!3327416)))

(declare-fun b!5361387 () Bool)

(declare-fun e!3327415 () (InoxSet Context!8902))

(declare-fun call!383529 () (InoxSet Context!8902))

(assert (=> b!5361387 (= e!3327415 call!383529)))

(declare-fun b!5361388 () Bool)

(assert (=> b!5361388 (= e!3327416 e!3327415)))

(declare-fun c!933674 () Bool)

(assert (=> b!5361388 (= c!933674 ((_ is Cons!61377) (exprs!4951 lt!2184239)))))

(declare-fun b!5361389 () Bool)

(assert (=> b!5361389 (= e!3327417 (nullable!5236 (h!67825 (exprs!4951 lt!2184239))))))

(declare-fun bm!383524 () Bool)

(assert (=> bm!383524 (= call!383529 (derivationStepZipperDown!515 (h!67825 (exprs!4951 lt!2184239)) (Context!8903 (t!374722 (exprs!4951 lt!2184239))) (h!67824 s!2326)))))

(declare-fun b!5361390 () Bool)

(assert (=> b!5361390 (= e!3327416 ((_ map or) call!383529 (derivationStepZipperUp!439 (Context!8903 (t!374722 (exprs!4951 lt!2184239))) (h!67824 s!2326))))))

(declare-fun b!5361391 () Bool)

(assert (=> b!5361391 (= e!3327415 ((as const (Array Context!8902 Bool)) false))))

(assert (= (and d!1717807 res!2275171) b!5361389))

(assert (= (and d!1717807 c!933675) b!5361390))

(assert (= (and d!1717807 (not c!933675)) b!5361388))

(assert (= (and b!5361388 c!933674) b!5361387))

(assert (= (and b!5361388 (not c!933674)) b!5361391))

(assert (= (or b!5361390 b!5361387) bm!383524))

(declare-fun m!6390166 () Bool)

(assert (=> b!5361389 m!6390166))

(declare-fun m!6390168 () Bool)

(assert (=> bm!383524 m!6390168))

(declare-fun m!6390170 () Bool)

(assert (=> b!5361390 m!6390170))

(assert (=> b!5360646 d!1717807))

(declare-fun d!1717809 () Bool)

(assert (=> d!1717809 (= (flatMap!794 lt!2184228 lambda!276043) (dynLambda!24243 lambda!276043 lt!2184239))))

(declare-fun lt!2184371 () Unit!153786)

(assert (=> d!1717809 (= lt!2184371 (choose!40248 lt!2184228 lt!2184239 lambda!276043))))

(assert (=> d!1717809 (= lt!2184228 (store ((as const (Array Context!8902 Bool)) false) lt!2184239 true))))

(assert (=> d!1717809 (= (lemmaFlatMapOnSingletonSet!326 lt!2184228 lt!2184239 lambda!276043) lt!2184371)))

(declare-fun b_lambda!205569 () Bool)

(assert (=> (not b_lambda!205569) (not d!1717809)))

(declare-fun bs!1241889 () Bool)

(assert (= bs!1241889 d!1717809))

(assert (=> bs!1241889 m!6389540))

(declare-fun m!6390172 () Bool)

(assert (=> bs!1241889 m!6390172))

(declare-fun m!6390174 () Bool)

(assert (=> bs!1241889 m!6390174))

(assert (=> bs!1241889 m!6389538))

(assert (=> b!5360646 d!1717809))

(declare-fun bs!1241890 () Bool)

(declare-fun d!1717811 () Bool)

(assert (= bs!1241890 (and d!1717811 b!5360635)))

(declare-fun lambda!276110 () Int)

(assert (=> bs!1241890 (= lambda!276110 lambda!276043)))

(assert (=> d!1717811 true))

(assert (=> d!1717811 (= (derivationStepZipper!1306 lt!2184228 (h!67824 s!2326)) (flatMap!794 lt!2184228 lambda!276110))))

(declare-fun bs!1241891 () Bool)

(assert (= bs!1241891 d!1717811))

(declare-fun m!6390176 () Bool)

(assert (=> bs!1241891 m!6390176))

(assert (=> b!5360646 d!1717811))

(declare-fun d!1717813 () Bool)

(declare-fun c!933678 () Bool)

(assert (=> d!1717813 (= c!933678 (isEmpty!33351 (t!374721 s!2326)))))

(declare-fun e!3327418 () Bool)

(assert (=> d!1717813 (= (matchZipper!1311 lt!2184255 (t!374721 s!2326)) e!3327418)))

(declare-fun b!5361394 () Bool)

(assert (=> b!5361394 (= e!3327418 (nullableZipper!1390 lt!2184255))))

(declare-fun b!5361395 () Bool)

(assert (=> b!5361395 (= e!3327418 (matchZipper!1311 (derivationStepZipper!1306 lt!2184255 (head!11498 (t!374721 s!2326))) (tail!10595 (t!374721 s!2326))))))

(assert (= (and d!1717813 c!933678) b!5361394))

(assert (= (and d!1717813 (not c!933678)) b!5361395))

(assert (=> d!1717813 m!6389824))

(declare-fun m!6390178 () Bool)

(assert (=> b!5361394 m!6390178))

(assert (=> b!5361395 m!6389828))

(assert (=> b!5361395 m!6389828))

(declare-fun m!6390180 () Bool)

(assert (=> b!5361395 m!6390180))

(assert (=> b!5361395 m!6389832))

(assert (=> b!5361395 m!6390180))

(assert (=> b!5361395 m!6389832))

(declare-fun m!6390182 () Bool)

(assert (=> b!5361395 m!6390182))

(assert (=> b!5360667 d!1717813))

(declare-fun bs!1241892 () Bool)

(declare-fun d!1717815 () Bool)

(assert (= bs!1241892 (and d!1717815 d!1717761)))

(declare-fun lambda!276113 () Int)

(assert (=> bs!1241892 (= lambda!276113 lambda!276093)))

(declare-fun bs!1241893 () Bool)

(assert (= bs!1241893 (and d!1717815 d!1717763)))

(assert (=> bs!1241893 (= lambda!276113 lambda!276096)))

(assert (=> d!1717815 (= (inv!80914 (h!67826 zl!343)) (forall!14477 (exprs!4951 (h!67826 zl!343)) lambda!276113))))

(declare-fun bs!1241894 () Bool)

(assert (= bs!1241894 d!1717815))

(declare-fun m!6390184 () Bool)

(assert (=> bs!1241894 m!6390184))

(assert (=> b!5360648 d!1717815))

(declare-fun b!5361414 () Bool)

(declare-fun e!3327433 () Bool)

(declare-fun call!383536 () Bool)

(assert (=> b!5361414 (= e!3327433 call!383536)))

(declare-fun c!933683 () Bool)

(declare-fun call!383538 () Bool)

(declare-fun c!933684 () Bool)

(declare-fun bm!383531 () Bool)

(assert (=> bm!383531 (= call!383538 (validRegex!6803 (ite c!933683 (reg!15396 lt!2184251) (ite c!933684 (regOne!30647 lt!2184251) (regOne!30646 lt!2184251)))))))

(declare-fun b!5361415 () Bool)

(declare-fun res!2275183 () Bool)

(assert (=> b!5361415 (=> (not res!2275183) (not e!3327433))))

(declare-fun call!383537 () Bool)

(assert (=> b!5361415 (= res!2275183 call!383537)))

(declare-fun e!3327434 () Bool)

(assert (=> b!5361415 (= e!3327434 e!3327433)))

(declare-fun b!5361416 () Bool)

(declare-fun e!3327439 () Bool)

(assert (=> b!5361416 (= e!3327439 call!383536)))

(declare-fun b!5361417 () Bool)

(declare-fun e!3327435 () Bool)

(assert (=> b!5361417 (= e!3327435 e!3327439)))

(declare-fun res!2275186 () Bool)

(assert (=> b!5361417 (=> (not res!2275186) (not e!3327439))))

(assert (=> b!5361417 (= res!2275186 call!383537)))

(declare-fun b!5361418 () Bool)

(declare-fun e!3327436 () Bool)

(assert (=> b!5361418 (= e!3327436 call!383538)))

(declare-fun b!5361419 () Bool)

(declare-fun e!3327437 () Bool)

(assert (=> b!5361419 (= e!3327437 e!3327436)))

(declare-fun res!2275184 () Bool)

(assert (=> b!5361419 (= res!2275184 (not (nullable!5236 (reg!15396 lt!2184251))))))

(assert (=> b!5361419 (=> (not res!2275184) (not e!3327436))))

(declare-fun bm!383533 () Bool)

(assert (=> bm!383533 (= call!383537 call!383538)))

(declare-fun b!5361420 () Bool)

(declare-fun e!3327438 () Bool)

(assert (=> b!5361420 (= e!3327438 e!3327437)))

(assert (=> b!5361420 (= c!933683 ((_ is Star!15067) lt!2184251))))

(declare-fun d!1717817 () Bool)

(declare-fun res!2275185 () Bool)

(assert (=> d!1717817 (=> res!2275185 e!3327438)))

(assert (=> d!1717817 (= res!2275185 ((_ is ElementMatch!15067) lt!2184251))))

(assert (=> d!1717817 (= (validRegex!6803 lt!2184251) e!3327438)))

(declare-fun bm!383532 () Bool)

(assert (=> bm!383532 (= call!383536 (validRegex!6803 (ite c!933684 (regTwo!30647 lt!2184251) (regTwo!30646 lt!2184251))))))

(declare-fun b!5361421 () Bool)

(declare-fun res!2275182 () Bool)

(assert (=> b!5361421 (=> res!2275182 e!3327435)))

(assert (=> b!5361421 (= res!2275182 (not ((_ is Concat!23912) lt!2184251)))))

(assert (=> b!5361421 (= e!3327434 e!3327435)))

(declare-fun b!5361422 () Bool)

(assert (=> b!5361422 (= e!3327437 e!3327434)))

(assert (=> b!5361422 (= c!933684 ((_ is Union!15067) lt!2184251))))

(assert (= (and d!1717817 (not res!2275185)) b!5361420))

(assert (= (and b!5361420 c!933683) b!5361419))

(assert (= (and b!5361420 (not c!933683)) b!5361422))

(assert (= (and b!5361419 res!2275184) b!5361418))

(assert (= (and b!5361422 c!933684) b!5361415))

(assert (= (and b!5361422 (not c!933684)) b!5361421))

(assert (= (and b!5361415 res!2275183) b!5361414))

(assert (= (and b!5361421 (not res!2275182)) b!5361417))

(assert (= (and b!5361417 res!2275186) b!5361416))

(assert (= (or b!5361414 b!5361416) bm!383532))

(assert (= (or b!5361415 b!5361417) bm!383533))

(assert (= (or b!5361418 bm!383533) bm!383531))

(declare-fun m!6390186 () Bool)

(assert (=> bm!383531 m!6390186))

(declare-fun m!6390188 () Bool)

(assert (=> b!5361419 m!6390188))

(declare-fun m!6390190 () Bool)

(assert (=> bm!383532 m!6390190))

(assert (=> b!5360649 d!1717817))

(declare-fun d!1717819 () Bool)

(assert (=> d!1717819 (= (isEmpty!33348 (t!374723 zl!343)) ((_ is Nil!61378) (t!374723 zl!343)))))

(assert (=> b!5360670 d!1717819))

(declare-fun bs!1241895 () Bool)

(declare-fun d!1717821 () Bool)

(assert (= bs!1241895 (and d!1717821 d!1717761)))

(declare-fun lambda!276114 () Int)

(assert (=> bs!1241895 (= lambda!276114 lambda!276093)))

(declare-fun bs!1241896 () Bool)

(assert (= bs!1241896 (and d!1717821 d!1717763)))

(assert (=> bs!1241896 (= lambda!276114 lambda!276096)))

(declare-fun bs!1241897 () Bool)

(assert (= bs!1241897 (and d!1717821 d!1717815)))

(assert (=> bs!1241897 (= lambda!276114 lambda!276113)))

(assert (=> d!1717821 (= (inv!80914 setElem!34699) (forall!14477 (exprs!4951 setElem!34699) lambda!276114))))

(declare-fun bs!1241898 () Bool)

(assert (= bs!1241898 d!1717821))

(declare-fun m!6390192 () Bool)

(assert (=> bs!1241898 m!6390192))

(assert (=> setNonEmpty!34699 d!1717821))

(declare-fun d!1717823 () Bool)

(assert (=> d!1717823 (= (isEmpty!33347 (t!374722 (exprs!4951 (h!67826 zl!343)))) ((_ is Nil!61377) (t!374722 (exprs!4951 (h!67826 zl!343)))))))

(assert (=> b!5360651 d!1717823))

(declare-fun b!5361423 () Bool)

(declare-fun e!3327440 () Bool)

(declare-fun call!383539 () Bool)

(assert (=> b!5361423 (= e!3327440 call!383539)))

(declare-fun bm!383534 () Bool)

(declare-fun call!383541 () Bool)

(declare-fun c!933686 () Bool)

(declare-fun c!933685 () Bool)

(assert (=> bm!383534 (= call!383541 (validRegex!6803 (ite c!933685 (reg!15396 r!7292) (ite c!933686 (regOne!30647 r!7292) (regOne!30646 r!7292)))))))

(declare-fun b!5361424 () Bool)

(declare-fun res!2275188 () Bool)

(assert (=> b!5361424 (=> (not res!2275188) (not e!3327440))))

(declare-fun call!383540 () Bool)

(assert (=> b!5361424 (= res!2275188 call!383540)))

(declare-fun e!3327441 () Bool)

(assert (=> b!5361424 (= e!3327441 e!3327440)))

(declare-fun b!5361425 () Bool)

(declare-fun e!3327446 () Bool)

(assert (=> b!5361425 (= e!3327446 call!383539)))

(declare-fun b!5361426 () Bool)

(declare-fun e!3327442 () Bool)

(assert (=> b!5361426 (= e!3327442 e!3327446)))

(declare-fun res!2275191 () Bool)

(assert (=> b!5361426 (=> (not res!2275191) (not e!3327446))))

(assert (=> b!5361426 (= res!2275191 call!383540)))

(declare-fun b!5361427 () Bool)

(declare-fun e!3327443 () Bool)

(assert (=> b!5361427 (= e!3327443 call!383541)))

(declare-fun b!5361428 () Bool)

(declare-fun e!3327444 () Bool)

(assert (=> b!5361428 (= e!3327444 e!3327443)))

(declare-fun res!2275189 () Bool)

(assert (=> b!5361428 (= res!2275189 (not (nullable!5236 (reg!15396 r!7292))))))

(assert (=> b!5361428 (=> (not res!2275189) (not e!3327443))))

(declare-fun bm!383536 () Bool)

(assert (=> bm!383536 (= call!383540 call!383541)))

(declare-fun b!5361429 () Bool)

(declare-fun e!3327445 () Bool)

(assert (=> b!5361429 (= e!3327445 e!3327444)))

(assert (=> b!5361429 (= c!933685 ((_ is Star!15067) r!7292))))

(declare-fun d!1717825 () Bool)

(declare-fun res!2275190 () Bool)

(assert (=> d!1717825 (=> res!2275190 e!3327445)))

(assert (=> d!1717825 (= res!2275190 ((_ is ElementMatch!15067) r!7292))))

(assert (=> d!1717825 (= (validRegex!6803 r!7292) e!3327445)))

(declare-fun bm!383535 () Bool)

(assert (=> bm!383535 (= call!383539 (validRegex!6803 (ite c!933686 (regTwo!30647 r!7292) (regTwo!30646 r!7292))))))

(declare-fun b!5361430 () Bool)

(declare-fun res!2275187 () Bool)

(assert (=> b!5361430 (=> res!2275187 e!3327442)))

(assert (=> b!5361430 (= res!2275187 (not ((_ is Concat!23912) r!7292)))))

(assert (=> b!5361430 (= e!3327441 e!3327442)))

(declare-fun b!5361431 () Bool)

(assert (=> b!5361431 (= e!3327444 e!3327441)))

(assert (=> b!5361431 (= c!933686 ((_ is Union!15067) r!7292))))

(assert (= (and d!1717825 (not res!2275190)) b!5361429))

(assert (= (and b!5361429 c!933685) b!5361428))

(assert (= (and b!5361429 (not c!933685)) b!5361431))

(assert (= (and b!5361428 res!2275189) b!5361427))

(assert (= (and b!5361431 c!933686) b!5361424))

(assert (= (and b!5361431 (not c!933686)) b!5361430))

(assert (= (and b!5361424 res!2275188) b!5361423))

(assert (= (and b!5361430 (not res!2275187)) b!5361426))

(assert (= (and b!5361426 res!2275191) b!5361425))

(assert (= (or b!5361423 b!5361425) bm!383535))

(assert (= (or b!5361424 b!5361426) bm!383536))

(assert (= (or b!5361427 bm!383536) bm!383534))

(declare-fun m!6390194 () Bool)

(assert (=> bm!383534 m!6390194))

(declare-fun m!6390196 () Bool)

(assert (=> b!5361428 m!6390196))

(declare-fun m!6390198 () Bool)

(assert (=> bm!383535 m!6390198))

(assert (=> start!564270 d!1717825))

(declare-fun d!1717827 () Bool)

(assert (=> d!1717827 (= (nullable!5236 (h!67825 (exprs!4951 (h!67826 zl!343)))) (nullableFct!1542 (h!67825 (exprs!4951 (h!67826 zl!343)))))))

(declare-fun bs!1241899 () Bool)

(assert (= bs!1241899 d!1717827))

(declare-fun m!6390200 () Bool)

(assert (=> bs!1241899 m!6390200))

(assert (=> b!5360635 d!1717827))

(declare-fun d!1717829 () Bool)

(declare-fun c!933688 () Bool)

(declare-fun e!3327449 () Bool)

(assert (=> d!1717829 (= c!933688 e!3327449)))

(declare-fun res!2275192 () Bool)

(assert (=> d!1717829 (=> (not res!2275192) (not e!3327449))))

(assert (=> d!1717829 (= res!2275192 ((_ is Cons!61377) (exprs!4951 (Context!8903 (Cons!61377 (h!67825 (exprs!4951 (h!67826 zl!343))) (t!374722 (exprs!4951 (h!67826 zl!343))))))))))

(declare-fun e!3327448 () (InoxSet Context!8902))

(assert (=> d!1717829 (= (derivationStepZipperUp!439 (Context!8903 (Cons!61377 (h!67825 (exprs!4951 (h!67826 zl!343))) (t!374722 (exprs!4951 (h!67826 zl!343))))) (h!67824 s!2326)) e!3327448)))

(declare-fun b!5361432 () Bool)

(declare-fun e!3327447 () (InoxSet Context!8902))

(declare-fun call!383542 () (InoxSet Context!8902))

(assert (=> b!5361432 (= e!3327447 call!383542)))

(declare-fun b!5361433 () Bool)

(assert (=> b!5361433 (= e!3327448 e!3327447)))

(declare-fun c!933687 () Bool)

(assert (=> b!5361433 (= c!933687 ((_ is Cons!61377) (exprs!4951 (Context!8903 (Cons!61377 (h!67825 (exprs!4951 (h!67826 zl!343))) (t!374722 (exprs!4951 (h!67826 zl!343))))))))))

(declare-fun b!5361434 () Bool)

(assert (=> b!5361434 (= e!3327449 (nullable!5236 (h!67825 (exprs!4951 (Context!8903 (Cons!61377 (h!67825 (exprs!4951 (h!67826 zl!343))) (t!374722 (exprs!4951 (h!67826 zl!343)))))))))))

(declare-fun bm!383537 () Bool)

(assert (=> bm!383537 (= call!383542 (derivationStepZipperDown!515 (h!67825 (exprs!4951 (Context!8903 (Cons!61377 (h!67825 (exprs!4951 (h!67826 zl!343))) (t!374722 (exprs!4951 (h!67826 zl!343))))))) (Context!8903 (t!374722 (exprs!4951 (Context!8903 (Cons!61377 (h!67825 (exprs!4951 (h!67826 zl!343))) (t!374722 (exprs!4951 (h!67826 zl!343)))))))) (h!67824 s!2326)))))

(declare-fun b!5361435 () Bool)

(assert (=> b!5361435 (= e!3327448 ((_ map or) call!383542 (derivationStepZipperUp!439 (Context!8903 (t!374722 (exprs!4951 (Context!8903 (Cons!61377 (h!67825 (exprs!4951 (h!67826 zl!343))) (t!374722 (exprs!4951 (h!67826 zl!343)))))))) (h!67824 s!2326))))))

(declare-fun b!5361436 () Bool)

(assert (=> b!5361436 (= e!3327447 ((as const (Array Context!8902 Bool)) false))))

(assert (= (and d!1717829 res!2275192) b!5361434))

(assert (= (and d!1717829 c!933688) b!5361435))

(assert (= (and d!1717829 (not c!933688)) b!5361433))

(assert (= (and b!5361433 c!933687) b!5361432))

(assert (= (and b!5361433 (not c!933687)) b!5361436))

(assert (= (or b!5361435 b!5361432) bm!383537))

(declare-fun m!6390202 () Bool)

(assert (=> b!5361434 m!6390202))

(declare-fun m!6390204 () Bool)

(assert (=> bm!383537 m!6390204))

(declare-fun m!6390206 () Bool)

(assert (=> b!5361435 m!6390206))

(assert (=> b!5360635 d!1717829))

(declare-fun d!1717831 () Bool)

(declare-fun c!933690 () Bool)

(declare-fun e!3327452 () Bool)

(assert (=> d!1717831 (= c!933690 e!3327452)))

(declare-fun res!2275193 () Bool)

(assert (=> d!1717831 (=> (not res!2275193) (not e!3327452))))

(assert (=> d!1717831 (= res!2275193 ((_ is Cons!61377) (exprs!4951 lt!2184254)))))

(declare-fun e!3327451 () (InoxSet Context!8902))

(assert (=> d!1717831 (= (derivationStepZipperUp!439 lt!2184254 (h!67824 s!2326)) e!3327451)))

(declare-fun b!5361437 () Bool)

(declare-fun e!3327450 () (InoxSet Context!8902))

(declare-fun call!383543 () (InoxSet Context!8902))

(assert (=> b!5361437 (= e!3327450 call!383543)))

(declare-fun b!5361438 () Bool)

(assert (=> b!5361438 (= e!3327451 e!3327450)))

(declare-fun c!933689 () Bool)

(assert (=> b!5361438 (= c!933689 ((_ is Cons!61377) (exprs!4951 lt!2184254)))))

(declare-fun b!5361439 () Bool)

(assert (=> b!5361439 (= e!3327452 (nullable!5236 (h!67825 (exprs!4951 lt!2184254))))))

(declare-fun bm!383538 () Bool)

(assert (=> bm!383538 (= call!383543 (derivationStepZipperDown!515 (h!67825 (exprs!4951 lt!2184254)) (Context!8903 (t!374722 (exprs!4951 lt!2184254))) (h!67824 s!2326)))))

(declare-fun b!5361440 () Bool)

(assert (=> b!5361440 (= e!3327451 ((_ map or) call!383543 (derivationStepZipperUp!439 (Context!8903 (t!374722 (exprs!4951 lt!2184254))) (h!67824 s!2326))))))

(declare-fun b!5361441 () Bool)

(assert (=> b!5361441 (= e!3327450 ((as const (Array Context!8902 Bool)) false))))

(assert (= (and d!1717831 res!2275193) b!5361439))

(assert (= (and d!1717831 c!933690) b!5361440))

(assert (= (and d!1717831 (not c!933690)) b!5361438))

(assert (= (and b!5361438 c!933689) b!5361437))

(assert (= (and b!5361438 (not c!933689)) b!5361441))

(assert (= (or b!5361440 b!5361437) bm!383538))

(declare-fun m!6390208 () Bool)

(assert (=> b!5361439 m!6390208))

(declare-fun m!6390210 () Bool)

(assert (=> bm!383538 m!6390210))

(declare-fun m!6390212 () Bool)

(assert (=> b!5361440 m!6390212))

(assert (=> b!5360635 d!1717831))

(declare-fun bm!383539 () Bool)

(declare-fun call!383549 () (InoxSet Context!8902))

(declare-fun call!383544 () (InoxSet Context!8902))

(assert (=> bm!383539 (= call!383549 call!383544)))

(declare-fun b!5361442 () Bool)

(declare-fun c!933694 () Bool)

(declare-fun e!3327456 () Bool)

(assert (=> b!5361442 (= c!933694 e!3327456)))

(declare-fun res!2275194 () Bool)

(assert (=> b!5361442 (=> (not res!2275194) (not e!3327456))))

(assert (=> b!5361442 (= res!2275194 ((_ is Concat!23912) (h!67825 (exprs!4951 (h!67826 zl!343)))))))

(declare-fun e!3327454 () (InoxSet Context!8902))

(declare-fun e!3327458 () (InoxSet Context!8902))

(assert (=> b!5361442 (= e!3327454 e!3327458)))

(declare-fun b!5361443 () Bool)

(declare-fun call!383547 () (InoxSet Context!8902))

(assert (=> b!5361443 (= e!3327454 ((_ map or) call!383547 call!383544))))

(declare-fun b!5361444 () Bool)

(declare-fun e!3327455 () (InoxSet Context!8902))

(assert (=> b!5361444 (= e!3327455 (store ((as const (Array Context!8902 Bool)) false) lt!2184254 true))))

(declare-fun call!383548 () List!61501)

(declare-fun bm!383540 () Bool)

(declare-fun c!933695 () Bool)

(assert (=> bm!383540 (= call!383548 ($colon$colon!1440 (exprs!4951 lt!2184254) (ite (or c!933694 c!933695) (regTwo!30646 (h!67825 (exprs!4951 (h!67826 zl!343)))) (h!67825 (exprs!4951 (h!67826 zl!343))))))))

(declare-fun b!5361445 () Bool)

(declare-fun e!3327453 () (InoxSet Context!8902))

(assert (=> b!5361445 (= e!3327453 ((as const (Array Context!8902 Bool)) false))))

(declare-fun b!5361446 () Bool)

(assert (=> b!5361446 (= e!3327456 (nullable!5236 (regOne!30646 (h!67825 (exprs!4951 (h!67826 zl!343))))))))

(declare-fun bm!383541 () Bool)

(declare-fun c!933692 () Bool)

(assert (=> bm!383541 (= call!383547 (derivationStepZipperDown!515 (ite c!933692 (regOne!30647 (h!67825 (exprs!4951 (h!67826 zl!343)))) (regOne!30646 (h!67825 (exprs!4951 (h!67826 zl!343))))) (ite c!933692 lt!2184254 (Context!8903 call!383548)) (h!67824 s!2326)))))

(declare-fun b!5361447 () Bool)

(declare-fun e!3327457 () (InoxSet Context!8902))

(assert (=> b!5361447 (= e!3327458 e!3327457)))

(assert (=> b!5361447 (= c!933695 ((_ is Concat!23912) (h!67825 (exprs!4951 (h!67826 zl!343)))))))

(declare-fun b!5361448 () Bool)

(declare-fun call!383546 () (InoxSet Context!8902))

(assert (=> b!5361448 (= e!3327457 call!383546)))

(declare-fun d!1717833 () Bool)

(declare-fun c!933691 () Bool)

(assert (=> d!1717833 (= c!933691 (and ((_ is ElementMatch!15067) (h!67825 (exprs!4951 (h!67826 zl!343)))) (= (c!933471 (h!67825 (exprs!4951 (h!67826 zl!343)))) (h!67824 s!2326))))))

(assert (=> d!1717833 (= (derivationStepZipperDown!515 (h!67825 (exprs!4951 (h!67826 zl!343))) lt!2184254 (h!67824 s!2326)) e!3327455)))

(declare-fun b!5361449 () Bool)

(declare-fun c!933693 () Bool)

(assert (=> b!5361449 (= c!933693 ((_ is Star!15067) (h!67825 (exprs!4951 (h!67826 zl!343)))))))

(assert (=> b!5361449 (= e!3327457 e!3327453)))

(declare-fun b!5361450 () Bool)

(assert (=> b!5361450 (= e!3327455 e!3327454)))

(assert (=> b!5361450 (= c!933692 ((_ is Union!15067) (h!67825 (exprs!4951 (h!67826 zl!343)))))))

(declare-fun b!5361451 () Bool)

(assert (=> b!5361451 (= e!3327453 call!383546)))

(declare-fun b!5361452 () Bool)

(assert (=> b!5361452 (= e!3327458 ((_ map or) call!383547 call!383549))))

(declare-fun bm!383542 () Bool)

(declare-fun call!383545 () List!61501)

(assert (=> bm!383542 (= call!383544 (derivationStepZipperDown!515 (ite c!933692 (regTwo!30647 (h!67825 (exprs!4951 (h!67826 zl!343)))) (ite c!933694 (regTwo!30646 (h!67825 (exprs!4951 (h!67826 zl!343)))) (ite c!933695 (regOne!30646 (h!67825 (exprs!4951 (h!67826 zl!343)))) (reg!15396 (h!67825 (exprs!4951 (h!67826 zl!343))))))) (ite (or c!933692 c!933694) lt!2184254 (Context!8903 call!383545)) (h!67824 s!2326)))))

(declare-fun bm!383543 () Bool)

(assert (=> bm!383543 (= call!383546 call!383549)))

(declare-fun bm!383544 () Bool)

(assert (=> bm!383544 (= call!383545 call!383548)))

(assert (= (and d!1717833 c!933691) b!5361444))

(assert (= (and d!1717833 (not c!933691)) b!5361450))

(assert (= (and b!5361450 c!933692) b!5361443))

(assert (= (and b!5361450 (not c!933692)) b!5361442))

(assert (= (and b!5361442 res!2275194) b!5361446))

(assert (= (and b!5361442 c!933694) b!5361452))

(assert (= (and b!5361442 (not c!933694)) b!5361447))

(assert (= (and b!5361447 c!933695) b!5361448))

(assert (= (and b!5361447 (not c!933695)) b!5361449))

(assert (= (and b!5361449 c!933693) b!5361451))

(assert (= (and b!5361449 (not c!933693)) b!5361445))

(assert (= (or b!5361448 b!5361451) bm!383544))

(assert (= (or b!5361448 b!5361451) bm!383543))

(assert (= (or b!5361452 bm!383544) bm!383540))

(assert (= (or b!5361452 bm!383543) bm!383539))

(assert (= (or b!5361443 bm!383539) bm!383542))

(assert (= (or b!5361443 b!5361452) bm!383541))

(declare-fun m!6390214 () Bool)

(assert (=> bm!383542 m!6390214))

(declare-fun m!6390216 () Bool)

(assert (=> bm!383541 m!6390216))

(declare-fun m!6390218 () Bool)

(assert (=> b!5361444 m!6390218))

(declare-fun m!6390220 () Bool)

(assert (=> bm!383540 m!6390220))

(declare-fun m!6390222 () Bool)

(assert (=> b!5361446 m!6390222))

(assert (=> b!5360635 d!1717833))

(declare-fun d!1717835 () Bool)

(declare-fun c!933697 () Bool)

(declare-fun e!3327461 () Bool)

(assert (=> d!1717835 (= c!933697 e!3327461)))

(declare-fun res!2275195 () Bool)

(assert (=> d!1717835 (=> (not res!2275195) (not e!3327461))))

(assert (=> d!1717835 (= res!2275195 ((_ is Cons!61377) (exprs!4951 (h!67826 zl!343))))))

(declare-fun e!3327460 () (InoxSet Context!8902))

(assert (=> d!1717835 (= (derivationStepZipperUp!439 (h!67826 zl!343) (h!67824 s!2326)) e!3327460)))

(declare-fun b!5361453 () Bool)

(declare-fun e!3327459 () (InoxSet Context!8902))

(declare-fun call!383550 () (InoxSet Context!8902))

(assert (=> b!5361453 (= e!3327459 call!383550)))

(declare-fun b!5361454 () Bool)

(assert (=> b!5361454 (= e!3327460 e!3327459)))

(declare-fun c!933696 () Bool)

(assert (=> b!5361454 (= c!933696 ((_ is Cons!61377) (exprs!4951 (h!67826 zl!343))))))

(declare-fun b!5361455 () Bool)

(assert (=> b!5361455 (= e!3327461 (nullable!5236 (h!67825 (exprs!4951 (h!67826 zl!343)))))))

(declare-fun bm!383545 () Bool)

(assert (=> bm!383545 (= call!383550 (derivationStepZipperDown!515 (h!67825 (exprs!4951 (h!67826 zl!343))) (Context!8903 (t!374722 (exprs!4951 (h!67826 zl!343)))) (h!67824 s!2326)))))

(declare-fun b!5361456 () Bool)

(assert (=> b!5361456 (= e!3327460 ((_ map or) call!383550 (derivationStepZipperUp!439 (Context!8903 (t!374722 (exprs!4951 (h!67826 zl!343)))) (h!67824 s!2326))))))

(declare-fun b!5361457 () Bool)

(assert (=> b!5361457 (= e!3327459 ((as const (Array Context!8902 Bool)) false))))

(assert (= (and d!1717835 res!2275195) b!5361455))

(assert (= (and d!1717835 c!933697) b!5361456))

(assert (= (and d!1717835 (not c!933697)) b!5361454))

(assert (= (and b!5361454 c!933696) b!5361453))

(assert (= (and b!5361454 (not c!933696)) b!5361457))

(assert (= (or b!5361456 b!5361453) bm!383545))

(assert (=> b!5361455 m!6389490))

(declare-fun m!6390224 () Bool)

(assert (=> bm!383545 m!6390224))

(declare-fun m!6390226 () Bool)

(assert (=> b!5361456 m!6390226))

(assert (=> b!5360635 d!1717835))

(declare-fun d!1717837 () Bool)

(assert (=> d!1717837 (= (flatMap!794 z!1189 lambda!276043) (choose!40249 z!1189 lambda!276043))))

(declare-fun bs!1241900 () Bool)

(assert (= bs!1241900 d!1717837))

(declare-fun m!6390228 () Bool)

(assert (=> bs!1241900 m!6390228))

(assert (=> b!5360635 d!1717837))

(declare-fun d!1717839 () Bool)

(assert (=> d!1717839 (= (flatMap!794 z!1189 lambda!276043) (dynLambda!24243 lambda!276043 (h!67826 zl!343)))))

(declare-fun lt!2184372 () Unit!153786)

(assert (=> d!1717839 (= lt!2184372 (choose!40248 z!1189 (h!67826 zl!343) lambda!276043))))

(assert (=> d!1717839 (= z!1189 (store ((as const (Array Context!8902 Bool)) false) (h!67826 zl!343) true))))

(assert (=> d!1717839 (= (lemmaFlatMapOnSingletonSet!326 z!1189 (h!67826 zl!343) lambda!276043) lt!2184372)))

(declare-fun b_lambda!205571 () Bool)

(assert (=> (not b_lambda!205571) (not d!1717839)))

(declare-fun bs!1241901 () Bool)

(assert (= bs!1241901 d!1717839))

(assert (=> bs!1241901 m!6389486))

(declare-fun m!6390230 () Bool)

(assert (=> bs!1241901 m!6390230))

(declare-fun m!6390232 () Bool)

(assert (=> bs!1241901 m!6390232))

(declare-fun m!6390234 () Bool)

(assert (=> bs!1241901 m!6390234))

(assert (=> b!5360635 d!1717839))

(declare-fun d!1717841 () Bool)

(declare-fun lt!2184373 () Regex!15067)

(assert (=> d!1717841 (validRegex!6803 lt!2184373)))

(assert (=> d!1717841 (= lt!2184373 (generalisedUnion!996 (unfocusZipperList!509 zl!343)))))

(assert (=> d!1717841 (= (unfocusZipper!809 zl!343) lt!2184373)))

(declare-fun bs!1241902 () Bool)

(assert (= bs!1241902 d!1717841))

(declare-fun m!6390236 () Bool)

(assert (=> bs!1241902 m!6390236))

(assert (=> bs!1241902 m!6389574))

(assert (=> bs!1241902 m!6389574))

(assert (=> bs!1241902 m!6389576))

(assert (=> b!5360655 d!1717841))

(declare-fun bs!1241903 () Bool)

(declare-fun d!1717843 () Bool)

(assert (= bs!1241903 (and d!1717843 d!1717761)))

(declare-fun lambda!276117 () Int)

(assert (=> bs!1241903 (= lambda!276117 lambda!276093)))

(declare-fun bs!1241904 () Bool)

(assert (= bs!1241904 (and d!1717843 d!1717763)))

(assert (=> bs!1241904 (= lambda!276117 lambda!276096)))

(declare-fun bs!1241905 () Bool)

(assert (= bs!1241905 (and d!1717843 d!1717815)))

(assert (=> bs!1241905 (= lambda!276117 lambda!276113)))

(declare-fun bs!1241906 () Bool)

(assert (= bs!1241906 (and d!1717843 d!1717821)))

(assert (=> bs!1241906 (= lambda!276117 lambda!276114)))

(declare-fun b!5361478 () Bool)

(declare-fun e!3327479 () Bool)

(declare-fun lt!2184376 () Regex!15067)

(declare-fun isEmptyExpr!925 (Regex!15067) Bool)

(assert (=> b!5361478 (= e!3327479 (isEmptyExpr!925 lt!2184376))))

(declare-fun b!5361479 () Bool)

(declare-fun e!3327474 () Bool)

(assert (=> b!5361479 (= e!3327474 e!3327479)))

(declare-fun c!933709 () Bool)

(assert (=> b!5361479 (= c!933709 (isEmpty!33347 (exprs!4951 (h!67826 zl!343))))))

(declare-fun b!5361480 () Bool)

(declare-fun e!3327477 () Regex!15067)

(assert (=> b!5361480 (= e!3327477 (Concat!23912 (h!67825 (exprs!4951 (h!67826 zl!343))) (generalisedConcat!736 (t!374722 (exprs!4951 (h!67826 zl!343))))))))

(declare-fun b!5361481 () Bool)

(declare-fun e!3327475 () Regex!15067)

(assert (=> b!5361481 (= e!3327475 e!3327477)))

(declare-fun c!933706 () Bool)

(assert (=> b!5361481 (= c!933706 ((_ is Cons!61377) (exprs!4951 (h!67826 zl!343))))))

(declare-fun b!5361482 () Bool)

(assert (=> b!5361482 (= e!3327475 (h!67825 (exprs!4951 (h!67826 zl!343))))))

(assert (=> d!1717843 e!3327474))

(declare-fun res!2275201 () Bool)

(assert (=> d!1717843 (=> (not res!2275201) (not e!3327474))))

(assert (=> d!1717843 (= res!2275201 (validRegex!6803 lt!2184376))))

(assert (=> d!1717843 (= lt!2184376 e!3327475)))

(declare-fun c!933707 () Bool)

(declare-fun e!3327478 () Bool)

(assert (=> d!1717843 (= c!933707 e!3327478)))

(declare-fun res!2275200 () Bool)

(assert (=> d!1717843 (=> (not res!2275200) (not e!3327478))))

(assert (=> d!1717843 (= res!2275200 ((_ is Cons!61377) (exprs!4951 (h!67826 zl!343))))))

(assert (=> d!1717843 (forall!14477 (exprs!4951 (h!67826 zl!343)) lambda!276117)))

(assert (=> d!1717843 (= (generalisedConcat!736 (exprs!4951 (h!67826 zl!343))) lt!2184376)))

(declare-fun b!5361483 () Bool)

(declare-fun e!3327476 () Bool)

(assert (=> b!5361483 (= e!3327476 (= lt!2184376 (head!11499 (exprs!4951 (h!67826 zl!343)))))))

(declare-fun b!5361484 () Bool)

(assert (=> b!5361484 (= e!3327477 EmptyExpr!15067)))

(declare-fun b!5361485 () Bool)

(declare-fun isConcat!448 (Regex!15067) Bool)

(assert (=> b!5361485 (= e!3327476 (isConcat!448 lt!2184376))))

(declare-fun b!5361486 () Bool)

(assert (=> b!5361486 (= e!3327478 (isEmpty!33347 (t!374722 (exprs!4951 (h!67826 zl!343)))))))

(declare-fun b!5361487 () Bool)

(assert (=> b!5361487 (= e!3327479 e!3327476)))

(declare-fun c!933708 () Bool)

(assert (=> b!5361487 (= c!933708 (isEmpty!33347 (tail!10596 (exprs!4951 (h!67826 zl!343)))))))

(assert (= (and d!1717843 res!2275200) b!5361486))

(assert (= (and d!1717843 c!933707) b!5361482))

(assert (= (and d!1717843 (not c!933707)) b!5361481))

(assert (= (and b!5361481 c!933706) b!5361480))

(assert (= (and b!5361481 (not c!933706)) b!5361484))

(assert (= (and d!1717843 res!2275201) b!5361479))

(assert (= (and b!5361479 c!933709) b!5361478))

(assert (= (and b!5361479 (not c!933709)) b!5361487))

(assert (= (and b!5361487 c!933708) b!5361483))

(assert (= (and b!5361487 (not c!933708)) b!5361485))

(declare-fun m!6390238 () Bool)

(assert (=> b!5361483 m!6390238))

(declare-fun m!6390240 () Bool)

(assert (=> b!5361479 m!6390240))

(declare-fun m!6390242 () Bool)

(assert (=> b!5361487 m!6390242))

(assert (=> b!5361487 m!6390242))

(declare-fun m!6390244 () Bool)

(assert (=> b!5361487 m!6390244))

(declare-fun m!6390246 () Bool)

(assert (=> d!1717843 m!6390246))

(declare-fun m!6390248 () Bool)

(assert (=> d!1717843 m!6390248))

(declare-fun m!6390250 () Bool)

(assert (=> b!5361485 m!6390250))

(assert (=> b!5361486 m!6389552))

(declare-fun m!6390252 () Bool)

(assert (=> b!5361480 m!6390252))

(declare-fun m!6390254 () Bool)

(assert (=> b!5361478 m!6390254))

(assert (=> b!5360636 d!1717843))

(declare-fun b!5361492 () Bool)

(declare-fun e!3327482 () Bool)

(declare-fun tp!1488526 () Bool)

(assert (=> b!5361492 (= e!3327482 (and tp_is_empty!39387 tp!1488526))))

(assert (=> b!5360637 (= tp!1488458 e!3327482)))

(assert (= (and b!5360637 ((_ is Cons!61376) (t!374721 s!2326))) b!5361492))

(declare-fun b!5361503 () Bool)

(declare-fun e!3327485 () Bool)

(assert (=> b!5361503 (= e!3327485 tp_is_empty!39387)))

(declare-fun b!5361504 () Bool)

(declare-fun tp!1488538 () Bool)

(declare-fun tp!1488541 () Bool)

(assert (=> b!5361504 (= e!3327485 (and tp!1488538 tp!1488541))))

(declare-fun b!5361506 () Bool)

(declare-fun tp!1488537 () Bool)

(declare-fun tp!1488539 () Bool)

(assert (=> b!5361506 (= e!3327485 (and tp!1488537 tp!1488539))))

(assert (=> b!5360647 (= tp!1488460 e!3327485)))

(declare-fun b!5361505 () Bool)

(declare-fun tp!1488540 () Bool)

(assert (=> b!5361505 (= e!3327485 tp!1488540)))

(assert (= (and b!5360647 ((_ is ElementMatch!15067) (reg!15396 r!7292))) b!5361503))

(assert (= (and b!5360647 ((_ is Concat!23912) (reg!15396 r!7292))) b!5361504))

(assert (= (and b!5360647 ((_ is Star!15067) (reg!15396 r!7292))) b!5361505))

(assert (= (and b!5360647 ((_ is Union!15067) (reg!15396 r!7292))) b!5361506))

(declare-fun b!5361511 () Bool)

(declare-fun e!3327488 () Bool)

(declare-fun tp!1488546 () Bool)

(declare-fun tp!1488547 () Bool)

(assert (=> b!5361511 (= e!3327488 (and tp!1488546 tp!1488547))))

(assert (=> b!5360657 (= tp!1488464 e!3327488)))

(assert (= (and b!5360657 ((_ is Cons!61377) (exprs!4951 setElem!34699))) b!5361511))

(declare-fun b!5361512 () Bool)

(declare-fun e!3327489 () Bool)

(declare-fun tp!1488548 () Bool)

(declare-fun tp!1488549 () Bool)

(assert (=> b!5361512 (= e!3327489 (and tp!1488548 tp!1488549))))

(assert (=> b!5360668 (= tp!1488461 e!3327489)))

(assert (= (and b!5360668 ((_ is Cons!61377) (exprs!4951 (h!67826 zl!343)))) b!5361512))

(declare-fun b!5361520 () Bool)

(declare-fun e!3327495 () Bool)

(declare-fun tp!1488554 () Bool)

(assert (=> b!5361520 (= e!3327495 tp!1488554)))

(declare-fun b!5361519 () Bool)

(declare-fun tp!1488555 () Bool)

(declare-fun e!3327494 () Bool)

(assert (=> b!5361519 (= e!3327494 (and (inv!80914 (h!67826 (t!374723 zl!343))) e!3327495 tp!1488555))))

(assert (=> b!5360648 (= tp!1488465 e!3327494)))

(assert (= b!5361519 b!5361520))

(assert (= (and b!5360648 ((_ is Cons!61378) (t!374723 zl!343))) b!5361519))

(declare-fun m!6390256 () Bool)

(assert (=> b!5361519 m!6390256))

(declare-fun b!5361521 () Bool)

(declare-fun e!3327496 () Bool)

(assert (=> b!5361521 (= e!3327496 tp_is_empty!39387)))

(declare-fun b!5361522 () Bool)

(declare-fun tp!1488557 () Bool)

(declare-fun tp!1488560 () Bool)

(assert (=> b!5361522 (= e!3327496 (and tp!1488557 tp!1488560))))

(declare-fun b!5361524 () Bool)

(declare-fun tp!1488556 () Bool)

(declare-fun tp!1488558 () Bool)

(assert (=> b!5361524 (= e!3327496 (and tp!1488556 tp!1488558))))

(assert (=> b!5360663 (= tp!1488457 e!3327496)))

(declare-fun b!5361523 () Bool)

(declare-fun tp!1488559 () Bool)

(assert (=> b!5361523 (= e!3327496 tp!1488559)))

(assert (= (and b!5360663 ((_ is ElementMatch!15067) (regOne!30647 r!7292))) b!5361521))

(assert (= (and b!5360663 ((_ is Concat!23912) (regOne!30647 r!7292))) b!5361522))

(assert (= (and b!5360663 ((_ is Star!15067) (regOne!30647 r!7292))) b!5361523))

(assert (= (and b!5360663 ((_ is Union!15067) (regOne!30647 r!7292))) b!5361524))

(declare-fun b!5361525 () Bool)

(declare-fun e!3327497 () Bool)

(assert (=> b!5361525 (= e!3327497 tp_is_empty!39387)))

(declare-fun b!5361526 () Bool)

(declare-fun tp!1488562 () Bool)

(declare-fun tp!1488565 () Bool)

(assert (=> b!5361526 (= e!3327497 (and tp!1488562 tp!1488565))))

(declare-fun b!5361528 () Bool)

(declare-fun tp!1488561 () Bool)

(declare-fun tp!1488563 () Bool)

(assert (=> b!5361528 (= e!3327497 (and tp!1488561 tp!1488563))))

(assert (=> b!5360663 (= tp!1488456 e!3327497)))

(declare-fun b!5361527 () Bool)

(declare-fun tp!1488564 () Bool)

(assert (=> b!5361527 (= e!3327497 tp!1488564)))

(assert (= (and b!5360663 ((_ is ElementMatch!15067) (regTwo!30647 r!7292))) b!5361525))

(assert (= (and b!5360663 ((_ is Concat!23912) (regTwo!30647 r!7292))) b!5361526))

(assert (= (and b!5360663 ((_ is Star!15067) (regTwo!30647 r!7292))) b!5361527))

(assert (= (and b!5360663 ((_ is Union!15067) (regTwo!30647 r!7292))) b!5361528))

(declare-fun b!5361529 () Bool)

(declare-fun e!3327498 () Bool)

(assert (=> b!5361529 (= e!3327498 tp_is_empty!39387)))

(declare-fun b!5361530 () Bool)

(declare-fun tp!1488567 () Bool)

(declare-fun tp!1488570 () Bool)

(assert (=> b!5361530 (= e!3327498 (and tp!1488567 tp!1488570))))

(declare-fun b!5361532 () Bool)

(declare-fun tp!1488566 () Bool)

(declare-fun tp!1488568 () Bool)

(assert (=> b!5361532 (= e!3327498 (and tp!1488566 tp!1488568))))

(assert (=> b!5360654 (= tp!1488463 e!3327498)))

(declare-fun b!5361531 () Bool)

(declare-fun tp!1488569 () Bool)

(assert (=> b!5361531 (= e!3327498 tp!1488569)))

(assert (= (and b!5360654 ((_ is ElementMatch!15067) (regOne!30646 r!7292))) b!5361529))

(assert (= (and b!5360654 ((_ is Concat!23912) (regOne!30646 r!7292))) b!5361530))

(assert (= (and b!5360654 ((_ is Star!15067) (regOne!30646 r!7292))) b!5361531))

(assert (= (and b!5360654 ((_ is Union!15067) (regOne!30646 r!7292))) b!5361532))

(declare-fun b!5361533 () Bool)

(declare-fun e!3327499 () Bool)

(assert (=> b!5361533 (= e!3327499 tp_is_empty!39387)))

(declare-fun b!5361534 () Bool)

(declare-fun tp!1488572 () Bool)

(declare-fun tp!1488575 () Bool)

(assert (=> b!5361534 (= e!3327499 (and tp!1488572 tp!1488575))))

(declare-fun b!5361536 () Bool)

(declare-fun tp!1488571 () Bool)

(declare-fun tp!1488573 () Bool)

(assert (=> b!5361536 (= e!3327499 (and tp!1488571 tp!1488573))))

(assert (=> b!5360654 (= tp!1488459 e!3327499)))

(declare-fun b!5361535 () Bool)

(declare-fun tp!1488574 () Bool)

(assert (=> b!5361535 (= e!3327499 tp!1488574)))

(assert (= (and b!5360654 ((_ is ElementMatch!15067) (regTwo!30646 r!7292))) b!5361533))

(assert (= (and b!5360654 ((_ is Concat!23912) (regTwo!30646 r!7292))) b!5361534))

(assert (= (and b!5360654 ((_ is Star!15067) (regTwo!30646 r!7292))) b!5361535))

(assert (= (and b!5360654 ((_ is Union!15067) (regTwo!30646 r!7292))) b!5361536))

(declare-fun condSetEmpty!34705 () Bool)

(assert (=> setNonEmpty!34699 (= condSetEmpty!34705 (= setRest!34699 ((as const (Array Context!8902 Bool)) false)))))

(declare-fun setRes!34705 () Bool)

(assert (=> setNonEmpty!34699 (= tp!1488462 setRes!34705)))

(declare-fun setIsEmpty!34705 () Bool)

(assert (=> setIsEmpty!34705 setRes!34705))

(declare-fun setNonEmpty!34705 () Bool)

(declare-fun e!3327502 () Bool)

(declare-fun tp!1488581 () Bool)

(declare-fun setElem!34705 () Context!8902)

(assert (=> setNonEmpty!34705 (= setRes!34705 (and tp!1488581 (inv!80914 setElem!34705) e!3327502))))

(declare-fun setRest!34705 () (InoxSet Context!8902))

(assert (=> setNonEmpty!34705 (= setRest!34699 ((_ map or) (store ((as const (Array Context!8902 Bool)) false) setElem!34705 true) setRest!34705))))

(declare-fun b!5361541 () Bool)

(declare-fun tp!1488580 () Bool)

(assert (=> b!5361541 (= e!3327502 tp!1488580)))

(assert (= (and setNonEmpty!34699 condSetEmpty!34705) setIsEmpty!34705))

(assert (= (and setNonEmpty!34699 (not condSetEmpty!34705)) setNonEmpty!34705))

(assert (= setNonEmpty!34705 b!5361541))

(declare-fun m!6390258 () Bool)

(assert (=> setNonEmpty!34705 m!6390258))

(declare-fun b_lambda!205573 () Bool)

(assert (= b_lambda!205567 (or b!5360635 b_lambda!205573)))

(declare-fun bs!1241907 () Bool)

(declare-fun d!1717845 () Bool)

(assert (= bs!1241907 (and d!1717845 b!5360635)))

(assert (=> bs!1241907 (= (dynLambda!24243 lambda!276043 lt!2184244) (derivationStepZipperUp!439 lt!2184244 (h!67824 s!2326)))))

(assert (=> bs!1241907 m!6389530))

(assert (=> d!1717789 d!1717845))

(declare-fun b_lambda!205575 () Bool)

(assert (= b_lambda!205569 (or b!5360635 b_lambda!205575)))

(declare-fun bs!1241908 () Bool)

(declare-fun d!1717847 () Bool)

(assert (= bs!1241908 (and d!1717847 b!5360635)))

(assert (=> bs!1241908 (= (dynLambda!24243 lambda!276043 lt!2184239) (derivationStepZipperUp!439 lt!2184239 (h!67824 s!2326)))))

(assert (=> bs!1241908 m!6389542))

(assert (=> d!1717809 d!1717847))

(declare-fun b_lambda!205577 () Bool)

(assert (= b_lambda!205571 (or b!5360635 b_lambda!205577)))

(declare-fun bs!1241909 () Bool)

(declare-fun d!1717849 () Bool)

(assert (= bs!1241909 (and d!1717849 b!5360635)))

(assert (=> bs!1241909 (= (dynLambda!24243 lambda!276043 (h!67826 zl!343)) (derivationStepZipperUp!439 (h!67826 zl!343) (h!67824 s!2326)))))

(assert (=> bs!1241909 m!6389484))

(assert (=> d!1717839 d!1717849))

(declare-fun b_lambda!205579 () Bool)

(assert (= b_lambda!205565 (or b!5360635 b_lambda!205579)))

(declare-fun bs!1241910 () Bool)

(declare-fun d!1717851 () Bool)

(assert (= bs!1241910 (and d!1717851 b!5360635)))

(assert (=> bs!1241910 (= (dynLambda!24243 lambda!276043 lt!2184240) (derivationStepZipperUp!439 lt!2184240 (h!67824 s!2326)))))

(assert (=> bs!1241910 m!6389526))

(assert (=> d!1717779 d!1717851))

(check-sat (not b!5361483) (not bm!383532) (not b!5361524) (not d!1717759) (not bm!383537) (not bm!383494) (not d!1717685) (not b!5361199) (not d!1717751) (not b_lambda!205575) (not b!5361213) (not bs!1241907) (not b!5361351) (not b!5361532) (not b_lambda!205577) (not b!5361177) (not b!5361353) (not d!1717791) (not setNonEmpty!34705) (not b!5361536) (not b!5361200) (not b!5361419) (not d!1717781) (not b!5361511) (not b!5360848) (not b!5361294) (not b!5361435) (not b!5361029) (not b!5361492) (not b!5361534) (not b!5360845) (not bs!1241908) (not d!1717815) (not b!5361343) (not b!5361347) (not b!5361201) (not b!5361349) (not b!5361304) (not bm!383500) (not d!1717749) (not b!5361160) (not b!5361486) (not bs!1241909) (not b_lambda!205579) (not d!1717793) (not b!5361168) (not b!5361309) (not b!5361520) (not b!5361208) (not b!5361203) (not b!5360849) (not d!1717755) (not bm!383531) (not d!1717795) (not d!1717743) (not d!1717789) (not bm!383504) (not b!5361434) (not b!5361541) (not d!1717745) (not d!1717805) (not d!1717843) (not b!5361176) (not bm!383505) (not bm!383545) (not d!1717701) (not d!1717827) (not d!1717689) (not b!5361205) (not d!1717809) (not d!1717669) (not b!5361480) (not d!1717699) (not b!5361296) (not b_lambda!205573) (not b!5361455) (not b!5361305) (not bm!383519) (not b!5361286) (not b!5361390) (not d!1717753) (not b!5361338) (not d!1717757) (not d!1717779) (not b!5361178) (not bm!383524) (not d!1717821) (not b!5361528) (not b!5361174) (not b!5361291) (not b!5361535) (not b!5361505) (not b!5360846) (not bm!383501) (not b!5361165) (not bs!1241910) (not b!5361317) (not b!5361171) (not b!5361207) (not b!5361030) (not b!5361527) (not d!1717767) (not d!1717839) (not b!5361324) (not bm!383495) (not d!1717799) (not d!1717797) (not bm!383534) (not d!1717813) (not d!1717785) (not d!1717723) (not b!5361175) (not bm!383520) (not b!5361337) (not bm!383521) (not bm!383542) (not d!1717775) (not b!5361519) (not b!5361257) (not b!5361310) (not d!1717761) (not bm!383498) (not d!1717747) (not b!5361523) (not b!5361478) (not bm!383538) (not b!5361345) (not d!1717777) (not b!5361380) (not b!5361162) (not d!1717721) (not b!5361439) (not b!5361531) (not b!5361526) (not b!5361308) (not b!5361456) (not b!5361522) (not b!5361487) (not d!1717841) (not b!5361428) (not d!1717769) (not b!5361512) (not bm!383540) (not b!5361394) (not b!5361295) (not b!5361440) (not b!5361506) (not bm!383499) (not b!5361166) tp_is_empty!39387 (not bm!383535) (not b!5361485) (not d!1717811) (not b!5361479) (not bm!383541) (not b!5361342) (not b!5361164) (not b!5361350) (not d!1717763) (not d!1717801) (not b!5361504) (not b!5361395) (not b!5361530) (not b!5361290) (not b!5361389) (not b!5361300) (not b!5361250) (not b!5361446) (not d!1717837) (not d!1717771))
(check-sat)
