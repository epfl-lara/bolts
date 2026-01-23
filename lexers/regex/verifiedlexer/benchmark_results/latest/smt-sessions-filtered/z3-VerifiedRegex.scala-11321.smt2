; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597372 () Bool)

(assert start!597372)

(declare-fun res!2458164 () Bool)

(declare-fun e!3578891 () Bool)

(assert (=> start!597372 (=> (not res!2458164) (not e!3578891))))

(declare-datatypes ((C!32048 0))(
  ( (C!32049 (val!25726 Int)) )
))
(declare-datatypes ((Regex!15889 0))(
  ( (ElementMatch!15889 (c!1033549 C!32048)) (Concat!24734 (regOne!32290 Regex!15889) (regTwo!32290 Regex!15889)) (EmptyExpr!15889) (Star!15889 (reg!16218 Regex!15889)) (EmptyLang!15889) (Union!15889 (regOne!32291 Regex!15889) (regTwo!32291 Regex!15889)) )
))
(declare-fun r!7292 () Regex!15889)

(declare-fun validRegex!7625 (Regex!15889) Bool)

(assert (=> start!597372 (= res!2458164 (validRegex!7625 r!7292))))

(assert (=> start!597372 e!3578891))

(declare-fun e!3578888 () Bool)

(assert (=> start!597372 e!3578888))

(declare-fun condSetEmpty!39460 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63966 0))(
  ( (Nil!63842) (Cons!63842 (h!70290 Regex!15889) (t!377321 List!63966)) )
))
(declare-datatypes ((Context!10546 0))(
  ( (Context!10547 (exprs!5773 List!63966)) )
))
(declare-fun z!1189 () (InoxSet Context!10546))

(assert (=> start!597372 (= condSetEmpty!39460 (= z!1189 ((as const (Array Context!10546 Bool)) false)))))

(declare-fun setRes!39460 () Bool)

(assert (=> start!597372 setRes!39460))

(declare-fun e!3578890 () Bool)

(assert (=> start!597372 e!3578890))

(declare-fun e!3578885 () Bool)

(assert (=> start!597372 e!3578885))

(declare-fun b!5833845 () Bool)

(declare-fun tp_is_empty!41031 () Bool)

(assert (=> b!5833845 (= e!3578888 tp_is_empty!41031)))

(declare-fun setNonEmpty!39460 () Bool)

(declare-fun setElem!39460 () Context!10546)

(declare-fun e!3578889 () Bool)

(declare-fun tp!1612919 () Bool)

(declare-fun inv!82969 (Context!10546) Bool)

(assert (=> setNonEmpty!39460 (= setRes!39460 (and tp!1612919 (inv!82969 setElem!39460) e!3578889))))

(declare-fun setRest!39460 () (InoxSet Context!10546))

(assert (=> setNonEmpty!39460 (= z!1189 ((_ map or) (store ((as const (Array Context!10546 Bool)) false) setElem!39460 true) setRest!39460))))

(declare-fun b!5833846 () Bool)

(declare-fun res!2458166 () Bool)

(declare-fun e!3578887 () Bool)

(assert (=> b!5833846 (=> res!2458166 e!3578887)))

(get-info :version)

(assert (=> b!5833846 (= res!2458166 (or ((_ is EmptyExpr!15889) r!7292) ((_ is EmptyLang!15889) r!7292) (not ((_ is ElementMatch!15889) r!7292))))))

(declare-fun b!5833847 () Bool)

(declare-fun res!2458160 () Bool)

(assert (=> b!5833847 (=> res!2458160 e!3578887)))

(declare-datatypes ((List!63967 0))(
  ( (Nil!63843) (Cons!63843 (h!70291 Context!10546) (t!377322 List!63967)) )
))
(declare-fun zl!343 () List!63967)

(assert (=> b!5833847 (= res!2458160 (not ((_ is Cons!63842) (exprs!5773 (h!70291 zl!343)))))))

(declare-fun b!5833848 () Bool)

(declare-fun e!3578884 () Bool)

(declare-fun lt!2303002 () List!63966)

(declare-fun isEmpty!35709 (List!63966) Bool)

(assert (=> b!5833848 (= e!3578884 (not (isEmpty!35709 lt!2303002)))))

(declare-fun e!3578886 () Bool)

(declare-fun tp!1612926 () Bool)

(declare-fun b!5833849 () Bool)

(assert (=> b!5833849 (= e!3578890 (and (inv!82969 (h!70291 zl!343)) e!3578886 tp!1612926))))

(declare-fun setIsEmpty!39460 () Bool)

(assert (=> setIsEmpty!39460 setRes!39460))

(declare-fun b!5833850 () Bool)

(declare-fun tp!1612925 () Bool)

(assert (=> b!5833850 (= e!3578888 tp!1612925)))

(declare-fun b!5833851 () Bool)

(declare-fun res!2458163 () Bool)

(assert (=> b!5833851 (=> (not res!2458163) (not e!3578891))))

(declare-fun unfocusZipper!1631 (List!63967) Regex!15889)

(assert (=> b!5833851 (= res!2458163 (= r!7292 (unfocusZipper!1631 zl!343)))))

(declare-fun b!5833852 () Bool)

(declare-fun res!2458161 () Bool)

(assert (=> b!5833852 (=> res!2458161 e!3578887)))

(declare-fun generalisedUnion!1733 (List!63966) Regex!15889)

(declare-fun unfocusZipperList!1310 (List!63967) List!63966)

(assert (=> b!5833852 (= res!2458161 (not (= r!7292 (generalisedUnion!1733 (unfocusZipperList!1310 zl!343)))))))

(declare-fun b!5833853 () Bool)

(declare-fun tp!1612928 () Bool)

(declare-fun tp!1612924 () Bool)

(assert (=> b!5833853 (= e!3578888 (and tp!1612928 tp!1612924))))

(declare-fun b!5833854 () Bool)

(declare-fun tp!1612920 () Bool)

(assert (=> b!5833854 (= e!3578885 (and tp_is_empty!41031 tp!1612920))))

(declare-fun b!5833855 () Bool)

(assert (=> b!5833855 (= e!3578887 e!3578884)))

(declare-fun res!2458167 () Bool)

(assert (=> b!5833855 (=> res!2458167 e!3578884)))

(assert (=> b!5833855 (= res!2458167 (not (= z!1189 (store ((as const (Array Context!10546 Bool)) false) (Context!10547 lt!2303002) true))))))

(assert (=> b!5833855 (= lt!2303002 (Cons!63842 (ElementMatch!15889 (c!1033549 r!7292)) Nil!63842))))

(declare-fun b!5833856 () Bool)

(declare-fun res!2458168 () Bool)

(assert (=> b!5833856 (=> (not res!2458168) (not e!3578891))))

(declare-fun toList!9673 ((InoxSet Context!10546)) List!63967)

(assert (=> b!5833856 (= res!2458168 (= (toList!9673 z!1189) zl!343))))

(declare-fun b!5833857 () Bool)

(declare-fun tp!1612923 () Bool)

(assert (=> b!5833857 (= e!3578889 tp!1612923)))

(declare-fun b!5833858 () Bool)

(assert (=> b!5833858 (= e!3578891 (not e!3578887))))

(declare-fun res!2458165 () Bool)

(assert (=> b!5833858 (=> res!2458165 e!3578887)))

(assert (=> b!5833858 (= res!2458165 (not ((_ is Cons!63843) zl!343)))))

(declare-datatypes ((List!63968 0))(
  ( (Nil!63844) (Cons!63844 (h!70292 C!32048) (t!377323 List!63968)) )
))
(declare-fun s!2326 () List!63968)

(declare-fun matchR!8072 (Regex!15889 List!63968) Bool)

(declare-fun matchRSpec!2990 (Regex!15889 List!63968) Bool)

(assert (=> b!5833858 (= (matchR!8072 r!7292 s!2326) (matchRSpec!2990 r!7292 s!2326))))

(declare-datatypes ((Unit!157049 0))(
  ( (Unit!157050) )
))
(declare-fun lt!2303001 () Unit!157049)

(declare-fun mainMatchTheorem!2990 (Regex!15889 List!63968) Unit!157049)

(assert (=> b!5833858 (= lt!2303001 (mainMatchTheorem!2990 r!7292 s!2326))))

(declare-fun b!5833859 () Bool)

(declare-fun tp!1612922 () Bool)

(declare-fun tp!1612927 () Bool)

(assert (=> b!5833859 (= e!3578888 (and tp!1612922 tp!1612927))))

(declare-fun b!5833860 () Bool)

(declare-fun res!2458162 () Bool)

(assert (=> b!5833860 (=> res!2458162 e!3578887)))

(declare-fun generalisedConcat!1486 (List!63966) Regex!15889)

(assert (=> b!5833860 (= res!2458162 (not (= r!7292 (generalisedConcat!1486 (exprs!5773 (h!70291 zl!343))))))))

(declare-fun b!5833861 () Bool)

(declare-fun tp!1612921 () Bool)

(assert (=> b!5833861 (= e!3578886 tp!1612921)))

(declare-fun b!5833862 () Bool)

(declare-fun res!2458159 () Bool)

(assert (=> b!5833862 (=> res!2458159 e!3578887)))

(declare-fun isEmpty!35710 (List!63967) Bool)

(assert (=> b!5833862 (= res!2458159 (not (isEmpty!35710 (t!377322 zl!343))))))

(assert (= (and start!597372 res!2458164) b!5833856))

(assert (= (and b!5833856 res!2458168) b!5833851))

(assert (= (and b!5833851 res!2458163) b!5833858))

(assert (= (and b!5833858 (not res!2458165)) b!5833862))

(assert (= (and b!5833862 (not res!2458159)) b!5833860))

(assert (= (and b!5833860 (not res!2458162)) b!5833847))

(assert (= (and b!5833847 (not res!2458160)) b!5833852))

(assert (= (and b!5833852 (not res!2458161)) b!5833846))

(assert (= (and b!5833846 (not res!2458166)) b!5833855))

(assert (= (and b!5833855 (not res!2458167)) b!5833848))

(assert (= (and start!597372 ((_ is ElementMatch!15889) r!7292)) b!5833845))

(assert (= (and start!597372 ((_ is Concat!24734) r!7292)) b!5833859))

(assert (= (and start!597372 ((_ is Star!15889) r!7292)) b!5833850))

(assert (= (and start!597372 ((_ is Union!15889) r!7292)) b!5833853))

(assert (= (and start!597372 condSetEmpty!39460) setIsEmpty!39460))

(assert (= (and start!597372 (not condSetEmpty!39460)) setNonEmpty!39460))

(assert (= setNonEmpty!39460 b!5833857))

(assert (= b!5833849 b!5833861))

(assert (= (and start!597372 ((_ is Cons!63843) zl!343)) b!5833849))

(assert (= (and start!597372 ((_ is Cons!63844) s!2326)) b!5833854))

(declare-fun m!6761820 () Bool)

(assert (=> b!5833860 m!6761820))

(declare-fun m!6761822 () Bool)

(assert (=> b!5833855 m!6761822))

(declare-fun m!6761824 () Bool)

(assert (=> setNonEmpty!39460 m!6761824))

(declare-fun m!6761826 () Bool)

(assert (=> b!5833851 m!6761826))

(declare-fun m!6761828 () Bool)

(assert (=> start!597372 m!6761828))

(declare-fun m!6761830 () Bool)

(assert (=> b!5833862 m!6761830))

(declare-fun m!6761832 () Bool)

(assert (=> b!5833852 m!6761832))

(assert (=> b!5833852 m!6761832))

(declare-fun m!6761834 () Bool)

(assert (=> b!5833852 m!6761834))

(declare-fun m!6761836 () Bool)

(assert (=> b!5833858 m!6761836))

(declare-fun m!6761838 () Bool)

(assert (=> b!5833858 m!6761838))

(declare-fun m!6761840 () Bool)

(assert (=> b!5833858 m!6761840))

(declare-fun m!6761842 () Bool)

(assert (=> b!5833856 m!6761842))

(declare-fun m!6761844 () Bool)

(assert (=> b!5833848 m!6761844))

(declare-fun m!6761846 () Bool)

(assert (=> b!5833849 m!6761846))

(check-sat tp_is_empty!41031 (not b!5833861) (not b!5833853) (not b!5833859) (not b!5833850) (not b!5833858) (not b!5833848) (not b!5833857) (not b!5833852) (not b!5833849) (not b!5833856) (not setNonEmpty!39460) (not b!5833854) (not b!5833862) (not b!5833851) (not b!5833860) (not start!597372))
(check-sat)
(get-model)

(declare-fun d!1834168 () Bool)

(declare-fun lambda!319119 () Int)

(declare-fun forall!14979 (List!63966 Int) Bool)

(assert (=> d!1834168 (= (inv!82969 setElem!39460) (forall!14979 (exprs!5773 setElem!39460) lambda!319119))))

(declare-fun bs!1375260 () Bool)

(assert (= bs!1375260 d!1834168))

(declare-fun m!6761848 () Bool)

(assert (=> bs!1375260 m!6761848))

(assert (=> setNonEmpty!39460 d!1834168))

(declare-fun bs!1375261 () Bool)

(declare-fun d!1834172 () Bool)

(assert (= bs!1375261 (and d!1834172 d!1834168)))

(declare-fun lambda!319122 () Int)

(assert (=> bs!1375261 (= lambda!319122 lambda!319119)))

(declare-fun b!5833883 () Bool)

(declare-fun e!3578909 () Bool)

(declare-fun lt!2303005 () Regex!15889)

(declare-fun head!12338 (List!63966) Regex!15889)

(assert (=> b!5833883 (= e!3578909 (= lt!2303005 (head!12338 (exprs!5773 (h!70291 zl!343)))))))

(declare-fun b!5833884 () Bool)

(declare-fun e!3578908 () Regex!15889)

(declare-fun e!3578905 () Regex!15889)

(assert (=> b!5833884 (= e!3578908 e!3578905)))

(declare-fun c!1033559 () Bool)

(assert (=> b!5833884 (= c!1033559 ((_ is Cons!63842) (exprs!5773 (h!70291 zl!343))))))

(declare-fun b!5833885 () Bool)

(declare-fun e!3578906 () Bool)

(assert (=> b!5833885 (= e!3578906 e!3578909)))

(declare-fun c!1033561 () Bool)

(declare-fun tail!11423 (List!63966) List!63966)

(assert (=> b!5833885 (= c!1033561 (isEmpty!35709 (tail!11423 (exprs!5773 (h!70291 zl!343)))))))

(declare-fun b!5833886 () Bool)

(assert (=> b!5833886 (= e!3578905 (Concat!24734 (h!70290 (exprs!5773 (h!70291 zl!343))) (generalisedConcat!1486 (t!377321 (exprs!5773 (h!70291 zl!343))))))))

(declare-fun b!5833887 () Bool)

(declare-fun e!3578904 () Bool)

(assert (=> b!5833887 (= e!3578904 e!3578906)))

(declare-fun c!1033558 () Bool)

(assert (=> b!5833887 (= c!1033558 (isEmpty!35709 (exprs!5773 (h!70291 zl!343))))))

(declare-fun b!5833888 () Bool)

(declare-fun isConcat!850 (Regex!15889) Bool)

(assert (=> b!5833888 (= e!3578909 (isConcat!850 lt!2303005))))

(assert (=> d!1834172 e!3578904))

(declare-fun res!2458174 () Bool)

(assert (=> d!1834172 (=> (not res!2458174) (not e!3578904))))

(assert (=> d!1834172 (= res!2458174 (validRegex!7625 lt!2303005))))

(assert (=> d!1834172 (= lt!2303005 e!3578908)))

(declare-fun c!1033560 () Bool)

(declare-fun e!3578907 () Bool)

(assert (=> d!1834172 (= c!1033560 e!3578907)))

(declare-fun res!2458173 () Bool)

(assert (=> d!1834172 (=> (not res!2458173) (not e!3578907))))

(assert (=> d!1834172 (= res!2458173 ((_ is Cons!63842) (exprs!5773 (h!70291 zl!343))))))

(assert (=> d!1834172 (forall!14979 (exprs!5773 (h!70291 zl!343)) lambda!319122)))

(assert (=> d!1834172 (= (generalisedConcat!1486 (exprs!5773 (h!70291 zl!343))) lt!2303005)))

(declare-fun b!5833889 () Bool)

(assert (=> b!5833889 (= e!3578908 (h!70290 (exprs!5773 (h!70291 zl!343))))))

(declare-fun b!5833890 () Bool)

(declare-fun isEmptyExpr!1327 (Regex!15889) Bool)

(assert (=> b!5833890 (= e!3578906 (isEmptyExpr!1327 lt!2303005))))

(declare-fun b!5833891 () Bool)

(assert (=> b!5833891 (= e!3578907 (isEmpty!35709 (t!377321 (exprs!5773 (h!70291 zl!343)))))))

(declare-fun b!5833892 () Bool)

(assert (=> b!5833892 (= e!3578905 EmptyExpr!15889)))

(assert (= (and d!1834172 res!2458173) b!5833891))

(assert (= (and d!1834172 c!1033560) b!5833889))

(assert (= (and d!1834172 (not c!1033560)) b!5833884))

(assert (= (and b!5833884 c!1033559) b!5833886))

(assert (= (and b!5833884 (not c!1033559)) b!5833892))

(assert (= (and d!1834172 res!2458174) b!5833887))

(assert (= (and b!5833887 c!1033558) b!5833890))

(assert (= (and b!5833887 (not c!1033558)) b!5833885))

(assert (= (and b!5833885 c!1033561) b!5833883))

(assert (= (and b!5833885 (not c!1033561)) b!5833888))

(declare-fun m!6761850 () Bool)

(assert (=> b!5833890 m!6761850))

(declare-fun m!6761852 () Bool)

(assert (=> b!5833891 m!6761852))

(declare-fun m!6761854 () Bool)

(assert (=> b!5833888 m!6761854))

(declare-fun m!6761856 () Bool)

(assert (=> b!5833883 m!6761856))

(declare-fun m!6761858 () Bool)

(assert (=> b!5833887 m!6761858))

(declare-fun m!6761860 () Bool)

(assert (=> d!1834172 m!6761860))

(declare-fun m!6761862 () Bool)

(assert (=> d!1834172 m!6761862))

(declare-fun m!6761864 () Bool)

(assert (=> b!5833886 m!6761864))

(declare-fun m!6761866 () Bool)

(assert (=> b!5833885 m!6761866))

(assert (=> b!5833885 m!6761866))

(declare-fun m!6761868 () Bool)

(assert (=> b!5833885 m!6761868))

(assert (=> b!5833860 d!1834172))

(declare-fun d!1834174 () Bool)

(declare-fun lt!2303008 () Regex!15889)

(assert (=> d!1834174 (validRegex!7625 lt!2303008)))

(assert (=> d!1834174 (= lt!2303008 (generalisedUnion!1733 (unfocusZipperList!1310 zl!343)))))

(assert (=> d!1834174 (= (unfocusZipper!1631 zl!343) lt!2303008)))

(declare-fun bs!1375262 () Bool)

(assert (= bs!1375262 d!1834174))

(declare-fun m!6761870 () Bool)

(assert (=> bs!1375262 m!6761870))

(assert (=> bs!1375262 m!6761832))

(assert (=> bs!1375262 m!6761832))

(assert (=> bs!1375262 m!6761834))

(assert (=> b!5833851 d!1834174))

(declare-fun d!1834176 () Bool)

(assert (=> d!1834176 (= (isEmpty!35710 (t!377322 zl!343)) ((_ is Nil!63843) (t!377322 zl!343)))))

(assert (=> b!5833862 d!1834176))

(declare-fun d!1834178 () Bool)

(declare-fun e!3578912 () Bool)

(assert (=> d!1834178 e!3578912))

(declare-fun res!2458177 () Bool)

(assert (=> d!1834178 (=> (not res!2458177) (not e!3578912))))

(declare-fun lt!2303011 () List!63967)

(declare-fun noDuplicate!1758 (List!63967) Bool)

(assert (=> d!1834178 (= res!2458177 (noDuplicate!1758 lt!2303011))))

(declare-fun choose!44300 ((InoxSet Context!10546)) List!63967)

(assert (=> d!1834178 (= lt!2303011 (choose!44300 z!1189))))

(assert (=> d!1834178 (= (toList!9673 z!1189) lt!2303011)))

(declare-fun b!5833895 () Bool)

(declare-fun content!11723 (List!63967) (InoxSet Context!10546))

(assert (=> b!5833895 (= e!3578912 (= (content!11723 lt!2303011) z!1189))))

(assert (= (and d!1834178 res!2458177) b!5833895))

(declare-fun m!6761872 () Bool)

(assert (=> d!1834178 m!6761872))

(declare-fun m!6761874 () Bool)

(assert (=> d!1834178 m!6761874))

(declare-fun m!6761876 () Bool)

(assert (=> b!5833895 m!6761876))

(assert (=> b!5833856 d!1834178))

(declare-fun d!1834180 () Bool)

(assert (=> d!1834180 (= (isEmpty!35709 lt!2303002) ((_ is Nil!63842) lt!2303002))))

(assert (=> b!5833848 d!1834180))

(declare-fun b!5833924 () Bool)

(declare-fun res!2458196 () Bool)

(declare-fun e!3578930 () Bool)

(assert (=> b!5833924 (=> res!2458196 e!3578930)))

(declare-fun e!3578931 () Bool)

(assert (=> b!5833924 (= res!2458196 e!3578931)))

(declare-fun res!2458194 () Bool)

(assert (=> b!5833924 (=> (not res!2458194) (not e!3578931))))

(declare-fun lt!2303014 () Bool)

(assert (=> b!5833924 (= res!2458194 lt!2303014)))

(declare-fun b!5833925 () Bool)

(declare-fun e!3578929 () Bool)

(declare-fun e!3578927 () Bool)

(assert (=> b!5833925 (= e!3578929 e!3578927)))

(declare-fun res!2458200 () Bool)

(assert (=> b!5833925 (=> res!2458200 e!3578927)))

(declare-fun call!455631 () Bool)

(assert (=> b!5833925 (= res!2458200 call!455631)))

(declare-fun b!5833926 () Bool)

(declare-fun head!12339 (List!63968) C!32048)

(assert (=> b!5833926 (= e!3578927 (not (= (head!12339 s!2326) (c!1033549 r!7292))))))

(declare-fun b!5833927 () Bool)

(declare-fun e!3578932 () Bool)

(declare-fun derivativeStep!4630 (Regex!15889 C!32048) Regex!15889)

(declare-fun tail!11424 (List!63968) List!63968)

(assert (=> b!5833927 (= e!3578932 (matchR!8072 (derivativeStep!4630 r!7292 (head!12339 s!2326)) (tail!11424 s!2326)))))

(declare-fun b!5833928 () Bool)

(declare-fun e!3578933 () Bool)

(assert (=> b!5833928 (= e!3578933 (not lt!2303014))))

(declare-fun bm!455626 () Bool)

(declare-fun isEmpty!35711 (List!63968) Bool)

(assert (=> bm!455626 (= call!455631 (isEmpty!35711 s!2326))))

(declare-fun b!5833930 () Bool)

(declare-fun res!2458197 () Bool)

(assert (=> b!5833930 (=> (not res!2458197) (not e!3578931))))

(assert (=> b!5833930 (= res!2458197 (isEmpty!35711 (tail!11424 s!2326)))))

(declare-fun b!5833931 () Bool)

(declare-fun nullable!5890 (Regex!15889) Bool)

(assert (=> b!5833931 (= e!3578932 (nullable!5890 r!7292))))

(declare-fun b!5833932 () Bool)

(assert (=> b!5833932 (= e!3578931 (= (head!12339 s!2326) (c!1033549 r!7292)))))

(declare-fun b!5833933 () Bool)

(declare-fun res!2458198 () Bool)

(assert (=> b!5833933 (=> res!2458198 e!3578927)))

(assert (=> b!5833933 (= res!2458198 (not (isEmpty!35711 (tail!11424 s!2326))))))

(declare-fun d!1834182 () Bool)

(declare-fun e!3578928 () Bool)

(assert (=> d!1834182 e!3578928))

(declare-fun c!1033568 () Bool)

(assert (=> d!1834182 (= c!1033568 ((_ is EmptyExpr!15889) r!7292))))

(assert (=> d!1834182 (= lt!2303014 e!3578932)))

(declare-fun c!1033569 () Bool)

(assert (=> d!1834182 (= c!1033569 (isEmpty!35711 s!2326))))

(assert (=> d!1834182 (validRegex!7625 r!7292)))

(assert (=> d!1834182 (= (matchR!8072 r!7292 s!2326) lt!2303014)))

(declare-fun b!5833929 () Bool)

(declare-fun res!2458201 () Bool)

(assert (=> b!5833929 (=> res!2458201 e!3578930)))

(assert (=> b!5833929 (= res!2458201 (not ((_ is ElementMatch!15889) r!7292)))))

(assert (=> b!5833929 (= e!3578933 e!3578930)))

(declare-fun b!5833934 () Bool)

(assert (=> b!5833934 (= e!3578928 e!3578933)))

(declare-fun c!1033570 () Bool)

(assert (=> b!5833934 (= c!1033570 ((_ is EmptyLang!15889) r!7292))))

(declare-fun b!5833935 () Bool)

(assert (=> b!5833935 (= e!3578928 (= lt!2303014 call!455631))))

(declare-fun b!5833936 () Bool)

(declare-fun res!2458199 () Bool)

(assert (=> b!5833936 (=> (not res!2458199) (not e!3578931))))

(assert (=> b!5833936 (= res!2458199 (not call!455631))))

(declare-fun b!5833937 () Bool)

(assert (=> b!5833937 (= e!3578930 e!3578929)))

(declare-fun res!2458195 () Bool)

(assert (=> b!5833937 (=> (not res!2458195) (not e!3578929))))

(assert (=> b!5833937 (= res!2458195 (not lt!2303014))))

(assert (= (and d!1834182 c!1033569) b!5833931))

(assert (= (and d!1834182 (not c!1033569)) b!5833927))

(assert (= (and d!1834182 c!1033568) b!5833935))

(assert (= (and d!1834182 (not c!1033568)) b!5833934))

(assert (= (and b!5833934 c!1033570) b!5833928))

(assert (= (and b!5833934 (not c!1033570)) b!5833929))

(assert (= (and b!5833929 (not res!2458201)) b!5833924))

(assert (= (and b!5833924 res!2458194) b!5833936))

(assert (= (and b!5833936 res!2458199) b!5833930))

(assert (= (and b!5833930 res!2458197) b!5833932))

(assert (= (and b!5833924 (not res!2458196)) b!5833937))

(assert (= (and b!5833937 res!2458195) b!5833925))

(assert (= (and b!5833925 (not res!2458200)) b!5833933))

(assert (= (and b!5833933 (not res!2458198)) b!5833926))

(assert (= (or b!5833935 b!5833925 b!5833936) bm!455626))

(declare-fun m!6761878 () Bool)

(assert (=> b!5833926 m!6761878))

(declare-fun m!6761880 () Bool)

(assert (=> b!5833931 m!6761880))

(assert (=> b!5833932 m!6761878))

(declare-fun m!6761882 () Bool)

(assert (=> b!5833930 m!6761882))

(assert (=> b!5833930 m!6761882))

(declare-fun m!6761884 () Bool)

(assert (=> b!5833930 m!6761884))

(declare-fun m!6761886 () Bool)

(assert (=> bm!455626 m!6761886))

(assert (=> b!5833933 m!6761882))

(assert (=> b!5833933 m!6761882))

(assert (=> b!5833933 m!6761884))

(assert (=> d!1834182 m!6761886))

(assert (=> d!1834182 m!6761828))

(assert (=> b!5833927 m!6761878))

(assert (=> b!5833927 m!6761878))

(declare-fun m!6761888 () Bool)

(assert (=> b!5833927 m!6761888))

(assert (=> b!5833927 m!6761882))

(assert (=> b!5833927 m!6761888))

(assert (=> b!5833927 m!6761882))

(declare-fun m!6761890 () Bool)

(assert (=> b!5833927 m!6761890))

(assert (=> b!5833858 d!1834182))

(declare-fun b!5833978 () Bool)

(assert (=> b!5833978 true))

(assert (=> b!5833978 true))

(declare-fun bs!1375263 () Bool)

(declare-fun b!5833977 () Bool)

(assert (= bs!1375263 (and b!5833977 b!5833978)))

(declare-fun lambda!319128 () Int)

(declare-fun lambda!319127 () Int)

(assert (=> bs!1375263 (not (= lambda!319128 lambda!319127))))

(assert (=> b!5833977 true))

(assert (=> b!5833977 true))

(declare-fun b!5833970 () Bool)

(declare-fun e!3578955 () Bool)

(declare-fun e!3578953 () Bool)

(assert (=> b!5833970 (= e!3578955 e!3578953)))

(declare-fun res!2458218 () Bool)

(assert (=> b!5833970 (= res!2458218 (not ((_ is EmptyLang!15889) r!7292)))))

(assert (=> b!5833970 (=> (not res!2458218) (not e!3578953))))

(declare-fun b!5833971 () Bool)

(declare-fun res!2458219 () Bool)

(declare-fun e!3578957 () Bool)

(assert (=> b!5833971 (=> res!2458219 e!3578957)))

(declare-fun call!455637 () Bool)

(assert (=> b!5833971 (= res!2458219 call!455637)))

(declare-fun e!3578958 () Bool)

(assert (=> b!5833971 (= e!3578958 e!3578957)))

(declare-fun b!5833972 () Bool)

(declare-fun e!3578954 () Bool)

(assert (=> b!5833972 (= e!3578954 (= s!2326 (Cons!63844 (c!1033549 r!7292) Nil!63844)))))

(declare-fun b!5833973 () Bool)

(declare-fun c!1033581 () Bool)

(assert (=> b!5833973 (= c!1033581 ((_ is Union!15889) r!7292))))

(declare-fun e!3578956 () Bool)

(assert (=> b!5833973 (= e!3578954 e!3578956)))

(declare-fun d!1834184 () Bool)

(declare-fun c!1033580 () Bool)

(assert (=> d!1834184 (= c!1033580 ((_ is EmptyExpr!15889) r!7292))))

(assert (=> d!1834184 (= (matchRSpec!2990 r!7292 s!2326) e!3578955)))

(declare-fun b!5833974 () Bool)

(declare-fun e!3578952 () Bool)

(assert (=> b!5833974 (= e!3578956 e!3578952)))

(declare-fun res!2458220 () Bool)

(assert (=> b!5833974 (= res!2458220 (matchRSpec!2990 (regOne!32291 r!7292) s!2326))))

(assert (=> b!5833974 (=> res!2458220 e!3578952)))

(declare-fun b!5833975 () Bool)

(assert (=> b!5833975 (= e!3578956 e!3578958)))

(declare-fun c!1033582 () Bool)

(assert (=> b!5833975 (= c!1033582 ((_ is Star!15889) r!7292))))

(declare-fun b!5833976 () Bool)

(assert (=> b!5833976 (= e!3578952 (matchRSpec!2990 (regTwo!32291 r!7292) s!2326))))

(declare-fun call!455636 () Bool)

(assert (=> b!5833977 (= e!3578958 call!455636)))

(declare-fun bm!455631 () Bool)

(declare-fun Exists!2965 (Int) Bool)

(assert (=> bm!455631 (= call!455636 (Exists!2965 (ite c!1033582 lambda!319127 lambda!319128)))))

(assert (=> b!5833978 (= e!3578957 call!455636)))

(declare-fun bm!455632 () Bool)

(assert (=> bm!455632 (= call!455637 (isEmpty!35711 s!2326))))

(declare-fun b!5833979 () Bool)

(assert (=> b!5833979 (= e!3578955 call!455637)))

(declare-fun b!5833980 () Bool)

(declare-fun c!1033579 () Bool)

(assert (=> b!5833980 (= c!1033579 ((_ is ElementMatch!15889) r!7292))))

(assert (=> b!5833980 (= e!3578953 e!3578954)))

(assert (= (and d!1834184 c!1033580) b!5833979))

(assert (= (and d!1834184 (not c!1033580)) b!5833970))

(assert (= (and b!5833970 res!2458218) b!5833980))

(assert (= (and b!5833980 c!1033579) b!5833972))

(assert (= (and b!5833980 (not c!1033579)) b!5833973))

(assert (= (and b!5833973 c!1033581) b!5833974))

(assert (= (and b!5833973 (not c!1033581)) b!5833975))

(assert (= (and b!5833974 (not res!2458220)) b!5833976))

(assert (= (and b!5833975 c!1033582) b!5833971))

(assert (= (and b!5833975 (not c!1033582)) b!5833977))

(assert (= (and b!5833971 (not res!2458219)) b!5833978))

(assert (= (or b!5833978 b!5833977) bm!455631))

(assert (= (or b!5833979 b!5833971) bm!455632))

(declare-fun m!6761892 () Bool)

(assert (=> b!5833974 m!6761892))

(declare-fun m!6761894 () Bool)

(assert (=> b!5833976 m!6761894))

(declare-fun m!6761896 () Bool)

(assert (=> bm!455631 m!6761896))

(assert (=> bm!455632 m!6761886))

(assert (=> b!5833858 d!1834184))

(declare-fun d!1834186 () Bool)

(assert (=> d!1834186 (= (matchR!8072 r!7292 s!2326) (matchRSpec!2990 r!7292 s!2326))))

(declare-fun lt!2303017 () Unit!157049)

(declare-fun choose!44301 (Regex!15889 List!63968) Unit!157049)

(assert (=> d!1834186 (= lt!2303017 (choose!44301 r!7292 s!2326))))

(assert (=> d!1834186 (validRegex!7625 r!7292)))

(assert (=> d!1834186 (= (mainMatchTheorem!2990 r!7292 s!2326) lt!2303017)))

(declare-fun bs!1375264 () Bool)

(assert (= bs!1375264 d!1834186))

(assert (=> bs!1375264 m!6761836))

(assert (=> bs!1375264 m!6761838))

(declare-fun m!6761898 () Bool)

(assert (=> bs!1375264 m!6761898))

(assert (=> bs!1375264 m!6761828))

(assert (=> b!5833858 d!1834186))

(declare-fun b!5834003 () Bool)

(declare-fun e!3578974 () Bool)

(declare-fun call!455645 () Bool)

(assert (=> b!5834003 (= e!3578974 call!455645)))

(declare-fun b!5834004 () Bool)

(declare-fun e!3578975 () Bool)

(assert (=> b!5834004 (= e!3578975 call!455645)))

(declare-fun b!5834005 () Bool)

(declare-fun e!3578978 () Bool)

(declare-fun call!455644 () Bool)

(assert (=> b!5834005 (= e!3578978 call!455644)))

(declare-fun b!5834006 () Bool)

(declare-fun res!2458231 () Bool)

(assert (=> b!5834006 (=> (not res!2458231) (not e!3578975))))

(declare-fun call!455646 () Bool)

(assert (=> b!5834006 (= res!2458231 call!455646)))

(declare-fun e!3578977 () Bool)

(assert (=> b!5834006 (= e!3578977 e!3578975)))

(declare-fun d!1834188 () Bool)

(declare-fun res!2458232 () Bool)

(declare-fun e!3578976 () Bool)

(assert (=> d!1834188 (=> res!2458232 e!3578976)))

(assert (=> d!1834188 (= res!2458232 ((_ is ElementMatch!15889) r!7292))))

(assert (=> d!1834188 (= (validRegex!7625 r!7292) e!3578976)))

(declare-fun b!5834007 () Bool)

(declare-fun e!3578973 () Bool)

(assert (=> b!5834007 (= e!3578976 e!3578973)))

(declare-fun c!1033588 () Bool)

(assert (=> b!5834007 (= c!1033588 ((_ is Star!15889) r!7292))))

(declare-fun b!5834008 () Bool)

(declare-fun res!2458235 () Bool)

(declare-fun e!3578979 () Bool)

(assert (=> b!5834008 (=> res!2458235 e!3578979)))

(assert (=> b!5834008 (= res!2458235 (not ((_ is Concat!24734) r!7292)))))

(assert (=> b!5834008 (= e!3578977 e!3578979)))

(declare-fun b!5834009 () Bool)

(assert (=> b!5834009 (= e!3578973 e!3578977)))

(declare-fun c!1033587 () Bool)

(assert (=> b!5834009 (= c!1033587 ((_ is Union!15889) r!7292))))

(declare-fun b!5834010 () Bool)

(assert (=> b!5834010 (= e!3578979 e!3578974)))

(declare-fun res!2458234 () Bool)

(assert (=> b!5834010 (=> (not res!2458234) (not e!3578974))))

(assert (=> b!5834010 (= res!2458234 call!455646)))

(declare-fun bm!455639 () Bool)

(assert (=> bm!455639 (= call!455645 (validRegex!7625 (ite c!1033587 (regTwo!32291 r!7292) (regTwo!32290 r!7292))))))

(declare-fun bm!455640 () Bool)

(assert (=> bm!455640 (= call!455644 (validRegex!7625 (ite c!1033588 (reg!16218 r!7292) (ite c!1033587 (regOne!32291 r!7292) (regOne!32290 r!7292)))))))

(declare-fun b!5834011 () Bool)

(assert (=> b!5834011 (= e!3578973 e!3578978)))

(declare-fun res!2458233 () Bool)

(assert (=> b!5834011 (= res!2458233 (not (nullable!5890 (reg!16218 r!7292))))))

(assert (=> b!5834011 (=> (not res!2458233) (not e!3578978))))

(declare-fun bm!455641 () Bool)

(assert (=> bm!455641 (= call!455646 call!455644)))

(assert (= (and d!1834188 (not res!2458232)) b!5834007))

(assert (= (and b!5834007 c!1033588) b!5834011))

(assert (= (and b!5834007 (not c!1033588)) b!5834009))

(assert (= (and b!5834011 res!2458233) b!5834005))

(assert (= (and b!5834009 c!1033587) b!5834006))

(assert (= (and b!5834009 (not c!1033587)) b!5834008))

(assert (= (and b!5834006 res!2458231) b!5834004))

(assert (= (and b!5834008 (not res!2458235)) b!5834010))

(assert (= (and b!5834010 res!2458234) b!5834003))

(assert (= (or b!5834004 b!5834003) bm!455639))

(assert (= (or b!5834006 b!5834010) bm!455641))

(assert (= (or b!5834005 bm!455641) bm!455640))

(declare-fun m!6761900 () Bool)

(assert (=> bm!455639 m!6761900))

(declare-fun m!6761902 () Bool)

(assert (=> bm!455640 m!6761902))

(declare-fun m!6761904 () Bool)

(assert (=> b!5834011 m!6761904))

(assert (=> start!597372 d!1834188))

(declare-fun bs!1375265 () Bool)

(declare-fun d!1834190 () Bool)

(assert (= bs!1375265 (and d!1834190 d!1834168)))

(declare-fun lambda!319131 () Int)

(assert (=> bs!1375265 (= lambda!319131 lambda!319119)))

(declare-fun bs!1375266 () Bool)

(assert (= bs!1375266 (and d!1834190 d!1834172)))

(assert (=> bs!1375266 (= lambda!319131 lambda!319122)))

(declare-fun b!5834032 () Bool)

(declare-fun e!3578994 () Bool)

(declare-fun lt!2303020 () Regex!15889)

(assert (=> b!5834032 (= e!3578994 (= lt!2303020 (head!12338 (unfocusZipperList!1310 zl!343))))))

(declare-fun b!5834033 () Bool)

(declare-fun e!3578997 () Regex!15889)

(assert (=> b!5834033 (= e!3578997 (Union!15889 (h!70290 (unfocusZipperList!1310 zl!343)) (generalisedUnion!1733 (t!377321 (unfocusZipperList!1310 zl!343)))))))

(declare-fun b!5834034 () Bool)

(declare-fun e!3578993 () Bool)

(assert (=> b!5834034 (= e!3578993 (isEmpty!35709 (t!377321 (unfocusZipperList!1310 zl!343))))))

(declare-fun b!5834035 () Bool)

(declare-fun e!3578995 () Bool)

(assert (=> b!5834035 (= e!3578995 e!3578994)))

(declare-fun c!1033599 () Bool)

(assert (=> b!5834035 (= c!1033599 (isEmpty!35709 (tail!11423 (unfocusZipperList!1310 zl!343))))))

(declare-fun b!5834036 () Bool)

(declare-fun e!3578992 () Bool)

(assert (=> b!5834036 (= e!3578992 e!3578995)))

(declare-fun c!1033600 () Bool)

(assert (=> b!5834036 (= c!1033600 (isEmpty!35709 (unfocusZipperList!1310 zl!343)))))

(declare-fun b!5834037 () Bool)

(declare-fun isEmptyLang!1335 (Regex!15889) Bool)

(assert (=> b!5834037 (= e!3578995 (isEmptyLang!1335 lt!2303020))))

(assert (=> d!1834190 e!3578992))

(declare-fun res!2458241 () Bool)

(assert (=> d!1834190 (=> (not res!2458241) (not e!3578992))))

(assert (=> d!1834190 (= res!2458241 (validRegex!7625 lt!2303020))))

(declare-fun e!3578996 () Regex!15889)

(assert (=> d!1834190 (= lt!2303020 e!3578996)))

(declare-fun c!1033598 () Bool)

(assert (=> d!1834190 (= c!1033598 e!3578993)))

(declare-fun res!2458240 () Bool)

(assert (=> d!1834190 (=> (not res!2458240) (not e!3578993))))

(assert (=> d!1834190 (= res!2458240 ((_ is Cons!63842) (unfocusZipperList!1310 zl!343)))))

(assert (=> d!1834190 (forall!14979 (unfocusZipperList!1310 zl!343) lambda!319131)))

(assert (=> d!1834190 (= (generalisedUnion!1733 (unfocusZipperList!1310 zl!343)) lt!2303020)))

(declare-fun b!5834038 () Bool)

(assert (=> b!5834038 (= e!3578996 e!3578997)))

(declare-fun c!1033597 () Bool)

(assert (=> b!5834038 (= c!1033597 ((_ is Cons!63842) (unfocusZipperList!1310 zl!343)))))

(declare-fun b!5834039 () Bool)

(assert (=> b!5834039 (= e!3578996 (h!70290 (unfocusZipperList!1310 zl!343)))))

(declare-fun b!5834040 () Bool)

(declare-fun isUnion!765 (Regex!15889) Bool)

(assert (=> b!5834040 (= e!3578994 (isUnion!765 lt!2303020))))

(declare-fun b!5834041 () Bool)

(assert (=> b!5834041 (= e!3578997 EmptyLang!15889)))

(assert (= (and d!1834190 res!2458240) b!5834034))

(assert (= (and d!1834190 c!1033598) b!5834039))

(assert (= (and d!1834190 (not c!1033598)) b!5834038))

(assert (= (and b!5834038 c!1033597) b!5834033))

(assert (= (and b!5834038 (not c!1033597)) b!5834041))

(assert (= (and d!1834190 res!2458241) b!5834036))

(assert (= (and b!5834036 c!1033600) b!5834037))

(assert (= (and b!5834036 (not c!1033600)) b!5834035))

(assert (= (and b!5834035 c!1033599) b!5834032))

(assert (= (and b!5834035 (not c!1033599)) b!5834040))

(declare-fun m!6761906 () Bool)

(assert (=> b!5834033 m!6761906))

(declare-fun m!6761908 () Bool)

(assert (=> b!5834037 m!6761908))

(declare-fun m!6761910 () Bool)

(assert (=> b!5834040 m!6761910))

(declare-fun m!6761912 () Bool)

(assert (=> d!1834190 m!6761912))

(assert (=> d!1834190 m!6761832))

(declare-fun m!6761914 () Bool)

(assert (=> d!1834190 m!6761914))

(assert (=> b!5834036 m!6761832))

(declare-fun m!6761916 () Bool)

(assert (=> b!5834036 m!6761916))

(declare-fun m!6761918 () Bool)

(assert (=> b!5834034 m!6761918))

(assert (=> b!5834035 m!6761832))

(declare-fun m!6761920 () Bool)

(assert (=> b!5834035 m!6761920))

(assert (=> b!5834035 m!6761920))

(declare-fun m!6761922 () Bool)

(assert (=> b!5834035 m!6761922))

(assert (=> b!5834032 m!6761832))

(declare-fun m!6761924 () Bool)

(assert (=> b!5834032 m!6761924))

(assert (=> b!5833852 d!1834190))

(declare-fun bs!1375267 () Bool)

(declare-fun d!1834192 () Bool)

(assert (= bs!1375267 (and d!1834192 d!1834168)))

(declare-fun lambda!319134 () Int)

(assert (=> bs!1375267 (= lambda!319134 lambda!319119)))

(declare-fun bs!1375268 () Bool)

(assert (= bs!1375268 (and d!1834192 d!1834172)))

(assert (=> bs!1375268 (= lambda!319134 lambda!319122)))

(declare-fun bs!1375269 () Bool)

(assert (= bs!1375269 (and d!1834192 d!1834190)))

(assert (=> bs!1375269 (= lambda!319134 lambda!319131)))

(declare-fun lt!2303023 () List!63966)

(assert (=> d!1834192 (forall!14979 lt!2303023 lambda!319134)))

(declare-fun e!3579000 () List!63966)

(assert (=> d!1834192 (= lt!2303023 e!3579000)))

(declare-fun c!1033603 () Bool)

(assert (=> d!1834192 (= c!1033603 ((_ is Cons!63843) zl!343))))

(assert (=> d!1834192 (= (unfocusZipperList!1310 zl!343) lt!2303023)))

(declare-fun b!5834046 () Bool)

(assert (=> b!5834046 (= e!3579000 (Cons!63842 (generalisedConcat!1486 (exprs!5773 (h!70291 zl!343))) (unfocusZipperList!1310 (t!377322 zl!343))))))

(declare-fun b!5834047 () Bool)

(assert (=> b!5834047 (= e!3579000 Nil!63842)))

(assert (= (and d!1834192 c!1033603) b!5834046))

(assert (= (and d!1834192 (not c!1033603)) b!5834047))

(declare-fun m!6761926 () Bool)

(assert (=> d!1834192 m!6761926))

(assert (=> b!5834046 m!6761820))

(declare-fun m!6761928 () Bool)

(assert (=> b!5834046 m!6761928))

(assert (=> b!5833852 d!1834192))

(declare-fun bs!1375270 () Bool)

(declare-fun d!1834194 () Bool)

(assert (= bs!1375270 (and d!1834194 d!1834168)))

(declare-fun lambda!319135 () Int)

(assert (=> bs!1375270 (= lambda!319135 lambda!319119)))

(declare-fun bs!1375271 () Bool)

(assert (= bs!1375271 (and d!1834194 d!1834172)))

(assert (=> bs!1375271 (= lambda!319135 lambda!319122)))

(declare-fun bs!1375272 () Bool)

(assert (= bs!1375272 (and d!1834194 d!1834190)))

(assert (=> bs!1375272 (= lambda!319135 lambda!319131)))

(declare-fun bs!1375273 () Bool)

(assert (= bs!1375273 (and d!1834194 d!1834192)))

(assert (=> bs!1375273 (= lambda!319135 lambda!319134)))

(assert (=> d!1834194 (= (inv!82969 (h!70291 zl!343)) (forall!14979 (exprs!5773 (h!70291 zl!343)) lambda!319135))))

(declare-fun bs!1375274 () Bool)

(assert (= bs!1375274 d!1834194))

(declare-fun m!6761930 () Bool)

(assert (=> bs!1375274 m!6761930))

(assert (=> b!5833849 d!1834194))

(declare-fun b!5834061 () Bool)

(declare-fun e!3579003 () Bool)

(declare-fun tp!1612941 () Bool)

(declare-fun tp!1612939 () Bool)

(assert (=> b!5834061 (= e!3579003 (and tp!1612941 tp!1612939))))

(assert (=> b!5833850 (= tp!1612925 e!3579003)))

(declare-fun b!5834058 () Bool)

(assert (=> b!5834058 (= e!3579003 tp_is_empty!41031)))

(declare-fun b!5834060 () Bool)

(declare-fun tp!1612940 () Bool)

(assert (=> b!5834060 (= e!3579003 tp!1612940)))

(declare-fun b!5834059 () Bool)

(declare-fun tp!1612942 () Bool)

(declare-fun tp!1612943 () Bool)

(assert (=> b!5834059 (= e!3579003 (and tp!1612942 tp!1612943))))

(assert (= (and b!5833850 ((_ is ElementMatch!15889) (reg!16218 r!7292))) b!5834058))

(assert (= (and b!5833850 ((_ is Concat!24734) (reg!16218 r!7292))) b!5834059))

(assert (= (and b!5833850 ((_ is Star!15889) (reg!16218 r!7292))) b!5834060))

(assert (= (and b!5833850 ((_ is Union!15889) (reg!16218 r!7292))) b!5834061))

(declare-fun condSetEmpty!39463 () Bool)

(assert (=> setNonEmpty!39460 (= condSetEmpty!39463 (= setRest!39460 ((as const (Array Context!10546 Bool)) false)))))

(declare-fun setRes!39463 () Bool)

(assert (=> setNonEmpty!39460 (= tp!1612919 setRes!39463)))

(declare-fun setIsEmpty!39463 () Bool)

(assert (=> setIsEmpty!39463 setRes!39463))

(declare-fun setElem!39463 () Context!10546)

(declare-fun setNonEmpty!39463 () Bool)

(declare-fun e!3579006 () Bool)

(declare-fun tp!1612949 () Bool)

(assert (=> setNonEmpty!39463 (= setRes!39463 (and tp!1612949 (inv!82969 setElem!39463) e!3579006))))

(declare-fun setRest!39463 () (InoxSet Context!10546))

(assert (=> setNonEmpty!39463 (= setRest!39460 ((_ map or) (store ((as const (Array Context!10546 Bool)) false) setElem!39463 true) setRest!39463))))

(declare-fun b!5834066 () Bool)

(declare-fun tp!1612948 () Bool)

(assert (=> b!5834066 (= e!3579006 tp!1612948)))

(assert (= (and setNonEmpty!39460 condSetEmpty!39463) setIsEmpty!39463))

(assert (= (and setNonEmpty!39460 (not condSetEmpty!39463)) setNonEmpty!39463))

(assert (= setNonEmpty!39463 b!5834066))

(declare-fun m!6761932 () Bool)

(assert (=> setNonEmpty!39463 m!6761932))

(declare-fun b!5834071 () Bool)

(declare-fun e!3579009 () Bool)

(declare-fun tp!1612954 () Bool)

(declare-fun tp!1612955 () Bool)

(assert (=> b!5834071 (= e!3579009 (and tp!1612954 tp!1612955))))

(assert (=> b!5833861 (= tp!1612921 e!3579009)))

(assert (= (and b!5833861 ((_ is Cons!63842) (exprs!5773 (h!70291 zl!343)))) b!5834071))

(declare-fun b!5834072 () Bool)

(declare-fun e!3579010 () Bool)

(declare-fun tp!1612956 () Bool)

(declare-fun tp!1612957 () Bool)

(assert (=> b!5834072 (= e!3579010 (and tp!1612956 tp!1612957))))

(assert (=> b!5833857 (= tp!1612923 e!3579010)))

(assert (= (and b!5833857 ((_ is Cons!63842) (exprs!5773 setElem!39460))) b!5834072))

(declare-fun b!5834076 () Bool)

(declare-fun e!3579011 () Bool)

(declare-fun tp!1612960 () Bool)

(declare-fun tp!1612958 () Bool)

(assert (=> b!5834076 (= e!3579011 (and tp!1612960 tp!1612958))))

(assert (=> b!5833859 (= tp!1612922 e!3579011)))

(declare-fun b!5834073 () Bool)

(assert (=> b!5834073 (= e!3579011 tp_is_empty!41031)))

(declare-fun b!5834075 () Bool)

(declare-fun tp!1612959 () Bool)

(assert (=> b!5834075 (= e!3579011 tp!1612959)))

(declare-fun b!5834074 () Bool)

(declare-fun tp!1612961 () Bool)

(declare-fun tp!1612962 () Bool)

(assert (=> b!5834074 (= e!3579011 (and tp!1612961 tp!1612962))))

(assert (= (and b!5833859 ((_ is ElementMatch!15889) (regOne!32290 r!7292))) b!5834073))

(assert (= (and b!5833859 ((_ is Concat!24734) (regOne!32290 r!7292))) b!5834074))

(assert (= (and b!5833859 ((_ is Star!15889) (regOne!32290 r!7292))) b!5834075))

(assert (= (and b!5833859 ((_ is Union!15889) (regOne!32290 r!7292))) b!5834076))

(declare-fun b!5834080 () Bool)

(declare-fun e!3579012 () Bool)

(declare-fun tp!1612965 () Bool)

(declare-fun tp!1612963 () Bool)

(assert (=> b!5834080 (= e!3579012 (and tp!1612965 tp!1612963))))

(assert (=> b!5833859 (= tp!1612927 e!3579012)))

(declare-fun b!5834077 () Bool)

(assert (=> b!5834077 (= e!3579012 tp_is_empty!41031)))

(declare-fun b!5834079 () Bool)

(declare-fun tp!1612964 () Bool)

(assert (=> b!5834079 (= e!3579012 tp!1612964)))

(declare-fun b!5834078 () Bool)

(declare-fun tp!1612966 () Bool)

(declare-fun tp!1612967 () Bool)

(assert (=> b!5834078 (= e!3579012 (and tp!1612966 tp!1612967))))

(assert (= (and b!5833859 ((_ is ElementMatch!15889) (regTwo!32290 r!7292))) b!5834077))

(assert (= (and b!5833859 ((_ is Concat!24734) (regTwo!32290 r!7292))) b!5834078))

(assert (= (and b!5833859 ((_ is Star!15889) (regTwo!32290 r!7292))) b!5834079))

(assert (= (and b!5833859 ((_ is Union!15889) (regTwo!32290 r!7292))) b!5834080))

(declare-fun b!5834085 () Bool)

(declare-fun e!3579015 () Bool)

(declare-fun tp!1612970 () Bool)

(assert (=> b!5834085 (= e!3579015 (and tp_is_empty!41031 tp!1612970))))

(assert (=> b!5833854 (= tp!1612920 e!3579015)))

(assert (= (and b!5833854 ((_ is Cons!63844) (t!377323 s!2326))) b!5834085))

(declare-fun b!5834089 () Bool)

(declare-fun e!3579016 () Bool)

(declare-fun tp!1612973 () Bool)

(declare-fun tp!1612971 () Bool)

(assert (=> b!5834089 (= e!3579016 (and tp!1612973 tp!1612971))))

(assert (=> b!5833853 (= tp!1612928 e!3579016)))

(declare-fun b!5834086 () Bool)

(assert (=> b!5834086 (= e!3579016 tp_is_empty!41031)))

(declare-fun b!5834088 () Bool)

(declare-fun tp!1612972 () Bool)

(assert (=> b!5834088 (= e!3579016 tp!1612972)))

(declare-fun b!5834087 () Bool)

(declare-fun tp!1612974 () Bool)

(declare-fun tp!1612975 () Bool)

(assert (=> b!5834087 (= e!3579016 (and tp!1612974 tp!1612975))))

(assert (= (and b!5833853 ((_ is ElementMatch!15889) (regOne!32291 r!7292))) b!5834086))

(assert (= (and b!5833853 ((_ is Concat!24734) (regOne!32291 r!7292))) b!5834087))

(assert (= (and b!5833853 ((_ is Star!15889) (regOne!32291 r!7292))) b!5834088))

(assert (= (and b!5833853 ((_ is Union!15889) (regOne!32291 r!7292))) b!5834089))

(declare-fun b!5834093 () Bool)

(declare-fun e!3579017 () Bool)

(declare-fun tp!1612978 () Bool)

(declare-fun tp!1612976 () Bool)

(assert (=> b!5834093 (= e!3579017 (and tp!1612978 tp!1612976))))

(assert (=> b!5833853 (= tp!1612924 e!3579017)))

(declare-fun b!5834090 () Bool)

(assert (=> b!5834090 (= e!3579017 tp_is_empty!41031)))

(declare-fun b!5834092 () Bool)

(declare-fun tp!1612977 () Bool)

(assert (=> b!5834092 (= e!3579017 tp!1612977)))

(declare-fun b!5834091 () Bool)

(declare-fun tp!1612979 () Bool)

(declare-fun tp!1612980 () Bool)

(assert (=> b!5834091 (= e!3579017 (and tp!1612979 tp!1612980))))

(assert (= (and b!5833853 ((_ is ElementMatch!15889) (regTwo!32291 r!7292))) b!5834090))

(assert (= (and b!5833853 ((_ is Concat!24734) (regTwo!32291 r!7292))) b!5834091))

(assert (= (and b!5833853 ((_ is Star!15889) (regTwo!32291 r!7292))) b!5834092))

(assert (= (and b!5833853 ((_ is Union!15889) (regTwo!32291 r!7292))) b!5834093))

(declare-fun b!5834101 () Bool)

(declare-fun e!3579023 () Bool)

(declare-fun tp!1612985 () Bool)

(assert (=> b!5834101 (= e!3579023 tp!1612985)))

(declare-fun b!5834100 () Bool)

(declare-fun e!3579022 () Bool)

(declare-fun tp!1612986 () Bool)

(assert (=> b!5834100 (= e!3579022 (and (inv!82969 (h!70291 (t!377322 zl!343))) e!3579023 tp!1612986))))

(assert (=> b!5833849 (= tp!1612926 e!3579022)))

(assert (= b!5834100 b!5834101))

(assert (= (and b!5833849 ((_ is Cons!63843) (t!377322 zl!343))) b!5834100))

(declare-fun m!6761934 () Bool)

(assert (=> b!5834100 m!6761934))

(check-sat tp_is_empty!41031 (not b!5834080) (not b!5833927) (not b!5834061) (not bm!455639) (not b!5833974) (not b!5834032) (not b!5834037) (not b!5833888) (not b!5834075) (not d!1834182) (not b!5833886) (not d!1834178) (not b!5834087) (not b!5834033) (not b!5834078) (not b!5833885) (not b!5833895) (not b!5833976) (not b!5833930) (not bm!455632) (not b!5834093) (not b!5834074) (not b!5833883) (not bm!455631) (not b!5834036) (not b!5833926) (not b!5834034) (not b!5834092) (not d!1834190) (not b!5834091) (not b!5834071) (not b!5834059) (not b!5834011) (not b!5834089) (not d!1834168) (not b!5834060) (not b!5833887) (not setNonEmpty!39463) (not b!5834076) (not d!1834174) (not b!5833891) (not b!5834100) (not b!5833932) (not b!5833933) (not b!5834072) (not b!5834079) (not b!5834040) (not d!1834186) (not d!1834192) (not b!5833890) (not b!5834046) (not b!5834066) (not d!1834172) (not bm!455626) (not b!5833931) (not b!5834101) (not b!5834035) (not b!5834088) (not bm!455640) (not b!5834085) (not d!1834194))
(check-sat)
