; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!620020 () Bool)

(assert start!620020)

(declare-fun b!6220911 () Bool)

(assert (=> b!6220911 true))

(assert (=> b!6220911 true))

(declare-fun lambda!340022 () Int)

(declare-fun lambda!340021 () Int)

(assert (=> b!6220911 (not (= lambda!340022 lambda!340021))))

(assert (=> b!6220911 true))

(assert (=> b!6220911 true))

(declare-fun b!6220909 () Bool)

(assert (=> b!6220909 true))

(declare-fun b!6220893 () Bool)

(declare-fun e!3786781 () Bool)

(declare-fun e!3786795 () Bool)

(assert (=> b!6220893 (= e!3786781 e!3786795)))

(declare-fun res!2571222 () Bool)

(assert (=> b!6220893 (=> res!2571222 e!3786795)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32584 0))(
  ( (C!32585 (val!25994 Int)) )
))
(declare-datatypes ((Regex!16157 0))(
  ( (ElementMatch!16157 (c!1123967 C!32584)) (Concat!25002 (regOne!32826 Regex!16157) (regTwo!32826 Regex!16157)) (EmptyExpr!16157) (Star!16157 (reg!16486 Regex!16157)) (EmptyLang!16157) (Union!16157 (regOne!32827 Regex!16157) (regTwo!32827 Regex!16157)) )
))
(declare-datatypes ((List!64770 0))(
  ( (Nil!64646) (Cons!64646 (h!71094 Regex!16157) (t!378302 List!64770)) )
))
(declare-datatypes ((Context!11082 0))(
  ( (Context!11083 (exprs!6041 List!64770)) )
))
(declare-fun lt!2344969 () (InoxSet Context!11082))

(declare-fun lt!2344951 () (InoxSet Context!11082))

(assert (=> b!6220893 (= res!2571222 (not (= lt!2344969 lt!2344951)))))

(declare-fun lt!2344960 () (InoxSet Context!11082))

(declare-fun lt!2344949 () (InoxSet Context!11082))

(assert (=> b!6220893 (= lt!2344951 ((_ map or) lt!2344960 lt!2344949))))

(declare-fun r!7292 () Regex!16157)

(declare-datatypes ((List!64771 0))(
  ( (Nil!64647) (Cons!64647 (h!71095 C!32584) (t!378303 List!64771)) )
))
(declare-fun s!2326 () List!64771)

(declare-fun lt!2344955 () Context!11082)

(declare-fun derivationStepZipperDown!1405 (Regex!16157 Context!11082 C!32584) (InoxSet Context!11082))

(assert (=> b!6220893 (= lt!2344949 (derivationStepZipperDown!1405 (regTwo!32826 (regOne!32826 r!7292)) lt!2344955 (h!71095 s!2326)))))

(declare-fun lt!2344958 () Context!11082)

(assert (=> b!6220893 (= lt!2344960 (derivationStepZipperDown!1405 (regOne!32826 (regOne!32826 r!7292)) lt!2344958 (h!71095 s!2326)))))

(declare-fun lt!2344962 () List!64770)

(assert (=> b!6220893 (= lt!2344958 (Context!11083 lt!2344962))))

(declare-datatypes ((List!64772 0))(
  ( (Nil!64648) (Cons!64648 (h!71096 Context!11082) (t!378304 List!64772)) )
))
(declare-fun zl!343 () List!64772)

(assert (=> b!6220893 (= lt!2344962 (Cons!64646 (regTwo!32826 (regOne!32826 r!7292)) (t!378302 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6220894 () Bool)

(declare-fun e!3786791 () Bool)

(declare-fun e!3786793 () Bool)

(assert (=> b!6220894 (= e!3786791 e!3786793)))

(declare-fun res!2571214 () Bool)

(assert (=> b!6220894 (=> res!2571214 e!3786793)))

(declare-fun lt!2344946 () (InoxSet Context!11082))

(declare-fun derivationStepZipper!2123 ((InoxSet Context!11082) C!32584) (InoxSet Context!11082))

(declare-fun derivationStepZipperUp!1331 (Context!11082 C!32584) (InoxSet Context!11082))

(assert (=> b!6220894 (= res!2571214 (not (= (derivationStepZipper!2123 lt!2344946 (h!71095 s!2326)) ((_ map or) lt!2344960 (derivationStepZipperUp!1331 lt!2344958 (h!71095 s!2326))))))))

(declare-fun lambda!340023 () Int)

(declare-fun lt!2344947 () Context!11082)

(declare-fun flatMap!1662 ((InoxSet Context!11082) Int) (InoxSet Context!11082))

(assert (=> b!6220894 (= (flatMap!1662 lt!2344946 lambda!340023) (derivationStepZipperUp!1331 lt!2344947 (h!71095 s!2326)))))

(declare-datatypes ((Unit!157959 0))(
  ( (Unit!157960) )
))
(declare-fun lt!2344953 () Unit!157959)

(declare-fun lemmaFlatMapOnSingletonSet!1188 ((InoxSet Context!11082) Context!11082 Int) Unit!157959)

(assert (=> b!6220894 (= lt!2344953 (lemmaFlatMapOnSingletonSet!1188 lt!2344946 lt!2344947 lambda!340023))))

(declare-fun lt!2344966 () (InoxSet Context!11082))

(assert (=> b!6220894 (= lt!2344966 (derivationStepZipperUp!1331 lt!2344947 (h!71095 s!2326)))))

(declare-fun lt!2344961 () (InoxSet Context!11082))

(assert (=> b!6220894 (= lt!2344961 (store ((as const (Array Context!11082 Bool)) false) lt!2344958 true))))

(assert (=> b!6220894 (= lt!2344946 (store ((as const (Array Context!11082 Bool)) false) lt!2344947 true))))

(assert (=> b!6220894 (= lt!2344947 (Context!11083 (Cons!64646 (regOne!32826 (regOne!32826 r!7292)) lt!2344962)))))

(declare-fun b!6220895 () Bool)

(declare-fun res!2571221 () Bool)

(declare-fun e!3786784 () Bool)

(assert (=> b!6220895 (=> res!2571221 e!3786784)))

(get-info :version)

(assert (=> b!6220895 (= res!2571221 (or ((_ is EmptyExpr!16157) r!7292) ((_ is EmptyLang!16157) r!7292) ((_ is ElementMatch!16157) r!7292) ((_ is Union!16157) r!7292) (not ((_ is Concat!25002) r!7292))))))

(declare-fun b!6220896 () Bool)

(declare-fun e!3786794 () Bool)

(declare-fun tp!1735435 () Bool)

(assert (=> b!6220896 (= e!3786794 tp!1735435)))

(declare-fun b!6220897 () Bool)

(declare-fun e!3786785 () Bool)

(declare-fun tp_is_empty!41567 () Bool)

(declare-fun tp!1735437 () Bool)

(assert (=> b!6220897 (= e!3786785 (and tp_is_empty!41567 tp!1735437))))

(declare-fun b!6220898 () Bool)

(declare-fun res!2571205 () Bool)

(assert (=> b!6220898 (=> res!2571205 e!3786781)))

(declare-fun nullable!6150 (Regex!16157) Bool)

(assert (=> b!6220898 (= res!2571205 (not (nullable!6150 (regOne!32826 (regOne!32826 r!7292)))))))

(declare-fun setIsEmpty!42254 () Bool)

(declare-fun setRes!42254 () Bool)

(assert (=> setIsEmpty!42254 setRes!42254))

(declare-fun b!6220899 () Bool)

(declare-fun e!3786786 () Bool)

(assert (=> b!6220899 (= e!3786786 (not e!3786784))))

(declare-fun res!2571217 () Bool)

(assert (=> b!6220899 (=> res!2571217 e!3786784)))

(assert (=> b!6220899 (= res!2571217 (not ((_ is Cons!64648) zl!343)))))

(declare-fun lt!2344959 () Bool)

(declare-fun matchRSpec!3258 (Regex!16157 List!64771) Bool)

(assert (=> b!6220899 (= lt!2344959 (matchRSpec!3258 r!7292 s!2326))))

(declare-fun matchR!8340 (Regex!16157 List!64771) Bool)

(assert (=> b!6220899 (= lt!2344959 (matchR!8340 r!7292 s!2326))))

(declare-fun lt!2344957 () Unit!157959)

(declare-fun mainMatchTheorem!3258 (Regex!16157 List!64771) Unit!157959)

(assert (=> b!6220899 (= lt!2344957 (mainMatchTheorem!3258 r!7292 s!2326))))

(declare-fun b!6220900 () Bool)

(declare-fun res!2571215 () Bool)

(assert (=> b!6220900 (=> res!2571215 e!3786784)))

(declare-fun generalisedConcat!1754 (List!64770) Regex!16157)

(assert (=> b!6220900 (= res!2571215 (not (= r!7292 (generalisedConcat!1754 (exprs!6041 (h!71096 zl!343))))))))

(declare-fun b!6220902 () Bool)

(declare-fun e!3786792 () Bool)

(declare-fun tp!1735438 () Bool)

(assert (=> b!6220902 (= e!3786792 tp!1735438)))

(declare-fun b!6220903 () Bool)

(assert (=> b!6220903 (= e!3786794 tp_is_empty!41567)))

(declare-fun b!6220904 () Bool)

(declare-fun res!2571220 () Bool)

(assert (=> b!6220904 (=> (not res!2571220) (not e!3786786))))

(declare-fun unfocusZipper!1899 (List!64772) Regex!16157)

(assert (=> b!6220904 (= res!2571220 (= r!7292 (unfocusZipper!1899 zl!343)))))

(declare-fun b!6220905 () Bool)

(declare-fun res!2571208 () Bool)

(assert (=> b!6220905 (=> res!2571208 e!3786784)))

(declare-fun isEmpty!36654 (List!64772) Bool)

(assert (=> b!6220905 (= res!2571208 (not (isEmpty!36654 (t!378304 zl!343))))))

(declare-fun b!6220906 () Bool)

(declare-fun e!3786788 () Bool)

(declare-fun inv!83639 (Context!11082) Bool)

(assert (=> b!6220906 (= e!3786788 (inv!83639 lt!2344955))))

(declare-fun b!6220907 () Bool)

(declare-fun e!3786779 () Unit!157959)

(declare-fun Unit!157961 () Unit!157959)

(assert (=> b!6220907 (= e!3786779 Unit!157961)))

(declare-fun lt!2344967 () (InoxSet Context!11082))

(declare-fun lt!2344968 () Unit!157959)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!988 ((InoxSet Context!11082) (InoxSet Context!11082) List!64771) Unit!157959)

(assert (=> b!6220907 (= lt!2344968 (lemmaZipperConcatMatchesSameAsBothZippers!988 lt!2344969 lt!2344967 (t!378303 s!2326)))))

(declare-fun res!2571218 () Bool)

(declare-fun matchZipper!2169 ((InoxSet Context!11082) List!64771) Bool)

(assert (=> b!6220907 (= res!2571218 (matchZipper!2169 lt!2344969 (t!378303 s!2326)))))

(declare-fun e!3786783 () Bool)

(assert (=> b!6220907 (=> res!2571218 e!3786783)))

(assert (=> b!6220907 (= (matchZipper!2169 ((_ map or) lt!2344969 lt!2344967) (t!378303 s!2326)) e!3786783)))

(declare-fun setNonEmpty!42254 () Bool)

(declare-fun tp!1735440 () Bool)

(declare-fun setElem!42254 () Context!11082)

(assert (=> setNonEmpty!42254 (= setRes!42254 (and tp!1735440 (inv!83639 setElem!42254) e!3786792))))

(declare-fun z!1189 () (InoxSet Context!11082))

(declare-fun setRest!42254 () (InoxSet Context!11082))

(assert (=> setNonEmpty!42254 (= z!1189 ((_ map or) (store ((as const (Array Context!11082 Bool)) false) setElem!42254 true) setRest!42254))))

(declare-fun b!6220908 () Bool)

(declare-fun res!2571213 () Bool)

(assert (=> b!6220908 (=> res!2571213 e!3786784)))

(declare-fun generalisedUnion!2001 (List!64770) Regex!16157)

(declare-fun unfocusZipperList!1578 (List!64772) List!64770)

(assert (=> b!6220908 (= res!2571213 (not (= r!7292 (generalisedUnion!2001 (unfocusZipperList!1578 zl!343)))))))

(declare-fun e!3786789 () Bool)

(assert (=> b!6220909 (= e!3786789 e!3786781)))

(declare-fun res!2571219 () Bool)

(assert (=> b!6220909 (=> res!2571219 e!3786781)))

(assert (=> b!6220909 (= res!2571219 (or (and ((_ is ElementMatch!16157) (regOne!32826 r!7292)) (= (c!1123967 (regOne!32826 r!7292)) (h!71095 s!2326))) ((_ is Union!16157) (regOne!32826 r!7292)) (not ((_ is Concat!25002) (regOne!32826 r!7292)))))))

(declare-fun lt!2344970 () Unit!157959)

(assert (=> b!6220909 (= lt!2344970 e!3786779)))

(declare-fun c!1123966 () Bool)

(assert (=> b!6220909 (= c!1123966 (nullable!6150 (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(assert (=> b!6220909 (= (flatMap!1662 z!1189 lambda!340023) (derivationStepZipperUp!1331 (h!71096 zl!343) (h!71095 s!2326)))))

(declare-fun lt!2344965 () Unit!157959)

(assert (=> b!6220909 (= lt!2344965 (lemmaFlatMapOnSingletonSet!1188 z!1189 (h!71096 zl!343) lambda!340023))))

(assert (=> b!6220909 (= lt!2344967 (derivationStepZipperUp!1331 lt!2344955 (h!71095 s!2326)))))

(assert (=> b!6220909 (= lt!2344969 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (h!71096 zl!343))) lt!2344955 (h!71095 s!2326)))))

(assert (=> b!6220909 (= lt!2344955 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun lt!2344948 () (InoxSet Context!11082))

(assert (=> b!6220909 (= lt!2344948 (derivationStepZipperUp!1331 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))) (h!71095 s!2326)))))

(declare-fun b!6220910 () Bool)

(declare-fun res!2571206 () Bool)

(assert (=> b!6220910 (=> (not res!2571206) (not e!3786786))))

(declare-fun toList!9941 ((InoxSet Context!11082)) List!64772)

(assert (=> b!6220910 (= res!2571206 (= (toList!9941 z!1189) zl!343))))

(assert (=> b!6220911 (= e!3786784 e!3786789)))

(declare-fun res!2571209 () Bool)

(assert (=> b!6220911 (=> res!2571209 e!3786789)))

(declare-fun lt!2344950 () Bool)

(assert (=> b!6220911 (= res!2571209 (or (not (= lt!2344959 lt!2344950)) ((_ is Nil!64647) s!2326)))))

(declare-fun Exists!3227 (Int) Bool)

(assert (=> b!6220911 (= (Exists!3227 lambda!340021) (Exists!3227 lambda!340022))))

(declare-fun lt!2344963 () Unit!157959)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1764 (Regex!16157 Regex!16157 List!64771) Unit!157959)

(assert (=> b!6220911 (= lt!2344963 (lemmaExistCutMatchRandMatchRSpecEquivalent!1764 (regOne!32826 r!7292) (regTwo!32826 r!7292) s!2326))))

(assert (=> b!6220911 (= lt!2344950 (Exists!3227 lambda!340021))))

(declare-datatypes ((tuple2!66272 0))(
  ( (tuple2!66273 (_1!36439 List!64771) (_2!36439 List!64771)) )
))
(declare-datatypes ((Option!16048 0))(
  ( (None!16047) (Some!16047 (v!52193 tuple2!66272)) )
))
(declare-fun isDefined!12751 (Option!16048) Bool)

(declare-fun findConcatSeparation!2462 (Regex!16157 Regex!16157 List!64771 List!64771 List!64771) Option!16048)

(assert (=> b!6220911 (= lt!2344950 (isDefined!12751 (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) Nil!64647 s!2326 s!2326)))))

(declare-fun lt!2344956 () Unit!157959)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2226 (Regex!16157 Regex!16157 List!64771) Unit!157959)

(assert (=> b!6220911 (= lt!2344956 (lemmaFindConcatSeparationEquivalentToExists!2226 (regOne!32826 r!7292) (regTwo!32826 r!7292) s!2326))))

(declare-fun b!6220912 () Bool)

(declare-fun tp!1735433 () Bool)

(declare-fun tp!1735434 () Bool)

(assert (=> b!6220912 (= e!3786794 (and tp!1735433 tp!1735434))))

(declare-fun b!6220913 () Bool)

(declare-fun e!3786790 () Bool)

(assert (=> b!6220913 (= e!3786790 (matchZipper!2169 lt!2344949 (t!378303 s!2326)))))

(declare-fun b!6220914 () Bool)

(declare-fun Unit!157962 () Unit!157959)

(assert (=> b!6220914 (= e!3786779 Unit!157962)))

(declare-fun b!6220915 () Bool)

(declare-fun res!2571212 () Bool)

(assert (=> b!6220915 (=> res!2571212 e!3786789)))

(declare-fun isEmpty!36655 (List!64770) Bool)

(assert (=> b!6220915 (= res!2571212 (isEmpty!36655 (t!378302 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6220916 () Bool)

(declare-fun e!3786782 () Bool)

(declare-fun tp!1735442 () Bool)

(assert (=> b!6220916 (= e!3786782 tp!1735442)))

(declare-fun b!6220917 () Bool)

(declare-fun e!3786780 () Bool)

(assert (=> b!6220917 (= e!3786780 (not (matchZipper!2169 lt!2344949 (t!378303 s!2326))))))

(declare-fun b!6220918 () Bool)

(assert (=> b!6220918 (= e!3786783 (matchZipper!2169 lt!2344967 (t!378303 s!2326)))))

(declare-fun b!6220919 () Bool)

(declare-fun tp!1735439 () Bool)

(declare-fun tp!1735441 () Bool)

(assert (=> b!6220919 (= e!3786794 (and tp!1735439 tp!1735441))))

(declare-fun b!6220920 () Bool)

(assert (=> b!6220920 (= e!3786795 e!3786791)))

(declare-fun res!2571203 () Bool)

(assert (=> b!6220920 (=> res!2571203 e!3786791)))

(assert (=> b!6220920 (= res!2571203 e!3786780)))

(declare-fun res!2571216 () Bool)

(assert (=> b!6220920 (=> (not res!2571216) (not e!3786780))))

(declare-fun lt!2344952 () Bool)

(assert (=> b!6220920 (= res!2571216 (not (= (matchZipper!2169 lt!2344969 (t!378303 s!2326)) lt!2344952)))))

(assert (=> b!6220920 (= (matchZipper!2169 lt!2344951 (t!378303 s!2326)) e!3786790)))

(declare-fun res!2571211 () Bool)

(assert (=> b!6220920 (=> res!2571211 e!3786790)))

(assert (=> b!6220920 (= res!2571211 lt!2344952)))

(assert (=> b!6220920 (= lt!2344952 (matchZipper!2169 lt!2344960 (t!378303 s!2326)))))

(declare-fun lt!2344964 () Unit!157959)

(assert (=> b!6220920 (= lt!2344964 (lemmaZipperConcatMatchesSameAsBothZippers!988 lt!2344960 lt!2344949 (t!378303 s!2326)))))

(declare-fun b!6220921 () Bool)

(declare-fun tp!1735436 () Bool)

(declare-fun e!3786787 () Bool)

(assert (=> b!6220921 (= e!3786787 (and (inv!83639 (h!71096 zl!343)) e!3786782 tp!1735436))))

(declare-fun b!6220922 () Bool)

(declare-fun res!2571207 () Bool)

(assert (=> b!6220922 (=> res!2571207 e!3786784)))

(assert (=> b!6220922 (= res!2571207 (not ((_ is Cons!64646) (exprs!6041 (h!71096 zl!343)))))))

(declare-fun res!2571210 () Bool)

(assert (=> start!620020 (=> (not res!2571210) (not e!3786786))))

(declare-fun validRegex!7893 (Regex!16157) Bool)

(assert (=> start!620020 (= res!2571210 (validRegex!7893 r!7292))))

(assert (=> start!620020 e!3786786))

(assert (=> start!620020 e!3786794))

(declare-fun condSetEmpty!42254 () Bool)

(assert (=> start!620020 (= condSetEmpty!42254 (= z!1189 ((as const (Array Context!11082 Bool)) false)))))

(assert (=> start!620020 setRes!42254))

(assert (=> start!620020 e!3786787))

(assert (=> start!620020 e!3786785))

(declare-fun b!6220901 () Bool)

(assert (=> b!6220901 (= e!3786793 e!3786788)))

(declare-fun res!2571204 () Bool)

(assert (=> b!6220901 (=> res!2571204 e!3786788)))

(assert (=> b!6220901 (= res!2571204 (not (nullable!6150 (regTwo!32826 (regOne!32826 r!7292)))))))

(assert (=> b!6220901 (= (flatMap!1662 lt!2344961 lambda!340023) (derivationStepZipperUp!1331 lt!2344958 (h!71095 s!2326)))))

(declare-fun lt!2344954 () Unit!157959)

(assert (=> b!6220901 (= lt!2344954 (lemmaFlatMapOnSingletonSet!1188 lt!2344961 lt!2344958 lambda!340023))))

(assert (= (and start!620020 res!2571210) b!6220910))

(assert (= (and b!6220910 res!2571206) b!6220904))

(assert (= (and b!6220904 res!2571220) b!6220899))

(assert (= (and b!6220899 (not res!2571217)) b!6220905))

(assert (= (and b!6220905 (not res!2571208)) b!6220900))

(assert (= (and b!6220900 (not res!2571215)) b!6220922))

(assert (= (and b!6220922 (not res!2571207)) b!6220908))

(assert (= (and b!6220908 (not res!2571213)) b!6220895))

(assert (= (and b!6220895 (not res!2571221)) b!6220911))

(assert (= (and b!6220911 (not res!2571209)) b!6220915))

(assert (= (and b!6220915 (not res!2571212)) b!6220909))

(assert (= (and b!6220909 c!1123966) b!6220907))

(assert (= (and b!6220909 (not c!1123966)) b!6220914))

(assert (= (and b!6220907 (not res!2571218)) b!6220918))

(assert (= (and b!6220909 (not res!2571219)) b!6220898))

(assert (= (and b!6220898 (not res!2571205)) b!6220893))

(assert (= (and b!6220893 (not res!2571222)) b!6220920))

(assert (= (and b!6220920 (not res!2571211)) b!6220913))

(assert (= (and b!6220920 res!2571216) b!6220917))

(assert (= (and b!6220920 (not res!2571203)) b!6220894))

(assert (= (and b!6220894 (not res!2571214)) b!6220901))

(assert (= (and b!6220901 (not res!2571204)) b!6220906))

(assert (= (and start!620020 ((_ is ElementMatch!16157) r!7292)) b!6220903))

(assert (= (and start!620020 ((_ is Concat!25002) r!7292)) b!6220912))

(assert (= (and start!620020 ((_ is Star!16157) r!7292)) b!6220896))

(assert (= (and start!620020 ((_ is Union!16157) r!7292)) b!6220919))

(assert (= (and start!620020 condSetEmpty!42254) setIsEmpty!42254))

(assert (= (and start!620020 (not condSetEmpty!42254)) setNonEmpty!42254))

(assert (= setNonEmpty!42254 b!6220902))

(assert (= b!6220921 b!6220916))

(assert (= (and start!620020 ((_ is Cons!64648) zl!343)) b!6220921))

(assert (= (and start!620020 ((_ is Cons!64647) s!2326)) b!6220897))

(declare-fun m!7048726 () Bool)

(assert (=> b!6220900 m!7048726))

(declare-fun m!7048728 () Bool)

(assert (=> b!6220898 m!7048728))

(declare-fun m!7048730 () Bool)

(assert (=> b!6220918 m!7048730))

(declare-fun m!7048732 () Bool)

(assert (=> b!6220893 m!7048732))

(declare-fun m!7048734 () Bool)

(assert (=> b!6220893 m!7048734))

(declare-fun m!7048736 () Bool)

(assert (=> start!620020 m!7048736))

(declare-fun m!7048738 () Bool)

(assert (=> b!6220917 m!7048738))

(declare-fun m!7048740 () Bool)

(assert (=> b!6220905 m!7048740))

(declare-fun m!7048742 () Bool)

(assert (=> b!6220915 m!7048742))

(declare-fun m!7048744 () Bool)

(assert (=> b!6220904 m!7048744))

(declare-fun m!7048746 () Bool)

(assert (=> b!6220908 m!7048746))

(assert (=> b!6220908 m!7048746))

(declare-fun m!7048748 () Bool)

(assert (=> b!6220908 m!7048748))

(declare-fun m!7048750 () Bool)

(assert (=> b!6220894 m!7048750))

(declare-fun m!7048752 () Bool)

(assert (=> b!6220894 m!7048752))

(declare-fun m!7048754 () Bool)

(assert (=> b!6220894 m!7048754))

(declare-fun m!7048756 () Bool)

(assert (=> b!6220894 m!7048756))

(declare-fun m!7048758 () Bool)

(assert (=> b!6220894 m!7048758))

(declare-fun m!7048760 () Bool)

(assert (=> b!6220894 m!7048760))

(declare-fun m!7048762 () Bool)

(assert (=> b!6220894 m!7048762))

(declare-fun m!7048764 () Bool)

(assert (=> b!6220910 m!7048764))

(declare-fun m!7048766 () Bool)

(assert (=> b!6220911 m!7048766))

(declare-fun m!7048768 () Bool)

(assert (=> b!6220911 m!7048768))

(declare-fun m!7048770 () Bool)

(assert (=> b!6220911 m!7048770))

(declare-fun m!7048772 () Bool)

(assert (=> b!6220911 m!7048772))

(assert (=> b!6220911 m!7048766))

(declare-fun m!7048774 () Bool)

(assert (=> b!6220911 m!7048774))

(declare-fun m!7048776 () Bool)

(assert (=> b!6220911 m!7048776))

(assert (=> b!6220911 m!7048776))

(declare-fun m!7048778 () Bool)

(assert (=> b!6220907 m!7048778))

(declare-fun m!7048780 () Bool)

(assert (=> b!6220907 m!7048780))

(declare-fun m!7048782 () Bool)

(assert (=> b!6220907 m!7048782))

(declare-fun m!7048784 () Bool)

(assert (=> b!6220921 m!7048784))

(declare-fun m!7048786 () Bool)

(assert (=> b!6220901 m!7048786))

(declare-fun m!7048788 () Bool)

(assert (=> b!6220901 m!7048788))

(assert (=> b!6220901 m!7048752))

(declare-fun m!7048790 () Bool)

(assert (=> b!6220901 m!7048790))

(declare-fun m!7048792 () Bool)

(assert (=> b!6220899 m!7048792))

(declare-fun m!7048794 () Bool)

(assert (=> b!6220899 m!7048794))

(declare-fun m!7048796 () Bool)

(assert (=> b!6220899 m!7048796))

(declare-fun m!7048798 () Bool)

(assert (=> b!6220906 m!7048798))

(assert (=> b!6220913 m!7048738))

(assert (=> b!6220920 m!7048780))

(declare-fun m!7048800 () Bool)

(assert (=> b!6220920 m!7048800))

(declare-fun m!7048802 () Bool)

(assert (=> b!6220920 m!7048802))

(declare-fun m!7048804 () Bool)

(assert (=> b!6220920 m!7048804))

(declare-fun m!7048806 () Bool)

(assert (=> b!6220909 m!7048806))

(declare-fun m!7048808 () Bool)

(assert (=> b!6220909 m!7048808))

(declare-fun m!7048810 () Bool)

(assert (=> b!6220909 m!7048810))

(declare-fun m!7048812 () Bool)

(assert (=> b!6220909 m!7048812))

(declare-fun m!7048814 () Bool)

(assert (=> b!6220909 m!7048814))

(declare-fun m!7048816 () Bool)

(assert (=> b!6220909 m!7048816))

(declare-fun m!7048818 () Bool)

(assert (=> b!6220909 m!7048818))

(declare-fun m!7048820 () Bool)

(assert (=> setNonEmpty!42254 m!7048820))

(check-sat (not b!6220915) (not b!6220913) (not b!6220902) (not b!6220896) (not b!6220897) (not b!6220901) (not b!6220910) tp_is_empty!41567 (not b!6220917) (not b!6220906) (not setNonEmpty!42254) (not b!6220911) (not b!6220908) (not b!6220918) (not b!6220898) (not b!6220912) (not b!6220899) (not b!6220905) (not b!6220920) (not b!6220916) (not b!6220893) (not b!6220921) (not b!6220904) (not start!620020) (not b!6220907) (not b!6220900) (not b!6220894) (not b!6220909) (not b!6220919))
(check-sat)
(get-model)

(declare-fun bm!522163 () Bool)

(declare-fun call!522170 () Bool)

(declare-fun c!1124019 () Bool)

(assert (=> bm!522163 (= call!522170 (validRegex!7893 (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))))))

(declare-fun d!1950070 () Bool)

(declare-fun res!2571266 () Bool)

(declare-fun e!3786893 () Bool)

(assert (=> d!1950070 (=> res!2571266 e!3786893)))

(assert (=> d!1950070 (= res!2571266 ((_ is ElementMatch!16157) r!7292))))

(assert (=> d!1950070 (= (validRegex!7893 r!7292) e!3786893)))

(declare-fun b!6221072 () Bool)

(declare-fun e!3786892 () Bool)

(declare-fun e!3786889 () Bool)

(assert (=> b!6221072 (= e!3786892 e!3786889)))

(declare-fun res!2571267 () Bool)

(assert (=> b!6221072 (= res!2571267 (not (nullable!6150 (reg!16486 r!7292))))))

(assert (=> b!6221072 (=> (not res!2571267) (not e!3786889))))

(declare-fun b!6221073 () Bool)

(declare-fun e!3786891 () Bool)

(assert (=> b!6221073 (= e!3786892 e!3786891)))

(assert (=> b!6221073 (= c!1124019 ((_ is Union!16157) r!7292))))

(declare-fun b!6221074 () Bool)

(declare-fun res!2571268 () Bool)

(declare-fun e!3786890 () Bool)

(assert (=> b!6221074 (=> (not res!2571268) (not e!3786890))))

(declare-fun call!522168 () Bool)

(assert (=> b!6221074 (= res!2571268 call!522168)))

(assert (=> b!6221074 (= e!3786891 e!3786890)))

(declare-fun b!6221075 () Bool)

(declare-fun e!3786888 () Bool)

(declare-fun e!3786894 () Bool)

(assert (=> b!6221075 (= e!3786888 e!3786894)))

(declare-fun res!2571265 () Bool)

(assert (=> b!6221075 (=> (not res!2571265) (not e!3786894))))

(assert (=> b!6221075 (= res!2571265 call!522168)))

(declare-fun b!6221076 () Bool)

(assert (=> b!6221076 (= e!3786894 call!522170)))

(declare-fun b!6221077 () Bool)

(assert (=> b!6221077 (= e!3786890 call!522170)))

(declare-fun b!6221078 () Bool)

(declare-fun call!522169 () Bool)

(assert (=> b!6221078 (= e!3786889 call!522169)))

(declare-fun bm!522164 () Bool)

(assert (=> bm!522164 (= call!522168 call!522169)))

(declare-fun c!1124020 () Bool)

(declare-fun bm!522165 () Bool)

(assert (=> bm!522165 (= call!522169 (validRegex!7893 (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))))))

(declare-fun b!6221079 () Bool)

(declare-fun res!2571264 () Bool)

(assert (=> b!6221079 (=> res!2571264 e!3786888)))

(assert (=> b!6221079 (= res!2571264 (not ((_ is Concat!25002) r!7292)))))

(assert (=> b!6221079 (= e!3786891 e!3786888)))

(declare-fun b!6221080 () Bool)

(assert (=> b!6221080 (= e!3786893 e!3786892)))

(assert (=> b!6221080 (= c!1124020 ((_ is Star!16157) r!7292))))

(assert (= (and d!1950070 (not res!2571266)) b!6221080))

(assert (= (and b!6221080 c!1124020) b!6221072))

(assert (= (and b!6221080 (not c!1124020)) b!6221073))

(assert (= (and b!6221072 res!2571267) b!6221078))

(assert (= (and b!6221073 c!1124019) b!6221074))

(assert (= (and b!6221073 (not c!1124019)) b!6221079))

(assert (= (and b!6221074 res!2571268) b!6221077))

(assert (= (and b!6221079 (not res!2571264)) b!6221075))

(assert (= (and b!6221075 res!2571265) b!6221076))

(assert (= (or b!6221077 b!6221076) bm!522163))

(assert (= (or b!6221074 b!6221075) bm!522164))

(assert (= (or b!6221078 bm!522164) bm!522165))

(declare-fun m!7048914 () Bool)

(assert (=> bm!522163 m!7048914))

(declare-fun m!7048916 () Bool)

(assert (=> b!6221072 m!7048916))

(declare-fun m!7048918 () Bool)

(assert (=> bm!522165 m!7048918))

(assert (=> start!620020 d!1950070))

(declare-fun b!6221160 () Bool)

(declare-fun e!3786940 () (InoxSet Context!11082))

(declare-fun e!3786943 () (InoxSet Context!11082))

(assert (=> b!6221160 (= e!3786940 e!3786943)))

(declare-fun c!1124056 () Bool)

(assert (=> b!6221160 (= c!1124056 ((_ is Union!16157) (regTwo!32826 (regOne!32826 r!7292))))))

(declare-fun b!6221161 () Bool)

(declare-fun e!3786941 () (InoxSet Context!11082))

(declare-fun call!522193 () (InoxSet Context!11082))

(assert (=> b!6221161 (= e!3786941 call!522193)))

(declare-fun b!6221162 () Bool)

(declare-fun call!522194 () (InoxSet Context!11082))

(declare-fun call!522196 () (InoxSet Context!11082))

(assert (=> b!6221162 (= e!3786943 ((_ map or) call!522194 call!522196))))

(declare-fun call!522192 () List!64770)

(declare-fun c!1124054 () Bool)

(declare-fun bm!522187 () Bool)

(declare-fun c!1124055 () Bool)

(assert (=> bm!522187 (= call!522196 (derivationStepZipperDown!1405 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292)))))) (ite (or c!1124056 c!1124055) lt!2344955 (Context!11083 call!522192)) (h!71095 s!2326)))))

(declare-fun b!6221163 () Bool)

(declare-fun e!3786945 () (InoxSet Context!11082))

(declare-fun call!522197 () (InoxSet Context!11082))

(assert (=> b!6221163 (= e!3786945 ((_ map or) call!522194 call!522197))))

(declare-fun call!522195 () List!64770)

(declare-fun bm!522188 () Bool)

(assert (=> bm!522188 (= call!522194 (derivationStepZipperDown!1405 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292)))) (ite c!1124056 lt!2344955 (Context!11083 call!522195)) (h!71095 s!2326)))))

(declare-fun bm!522189 () Bool)

(assert (=> bm!522189 (= call!522197 call!522196)))

(declare-fun b!6221164 () Bool)

(declare-fun c!1124058 () Bool)

(assert (=> b!6221164 (= c!1124058 ((_ is Star!16157) (regTwo!32826 (regOne!32826 r!7292))))))

(declare-fun e!3786942 () (InoxSet Context!11082))

(assert (=> b!6221164 (= e!3786941 e!3786942)))

(declare-fun b!6221165 () Bool)

(assert (=> b!6221165 (= e!3786940 (store ((as const (Array Context!11082 Bool)) false) lt!2344955 true))))

(declare-fun b!6221159 () Bool)

(declare-fun e!3786944 () Bool)

(assert (=> b!6221159 (= c!1124055 e!3786944)))

(declare-fun res!2571281 () Bool)

(assert (=> b!6221159 (=> (not res!2571281) (not e!3786944))))

(assert (=> b!6221159 (= res!2571281 ((_ is Concat!25002) (regTwo!32826 (regOne!32826 r!7292))))))

(assert (=> b!6221159 (= e!3786943 e!3786945)))

(declare-fun d!1950074 () Bool)

(declare-fun c!1124057 () Bool)

(assert (=> d!1950074 (= c!1124057 (and ((_ is ElementMatch!16157) (regTwo!32826 (regOne!32826 r!7292))) (= (c!1123967 (regTwo!32826 (regOne!32826 r!7292))) (h!71095 s!2326))))))

(assert (=> d!1950074 (= (derivationStepZipperDown!1405 (regTwo!32826 (regOne!32826 r!7292)) lt!2344955 (h!71095 s!2326)) e!3786940)))

(declare-fun b!6221166 () Bool)

(assert (=> b!6221166 (= e!3786942 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522190 () Bool)

(assert (=> bm!522190 (= call!522192 call!522195)))

(declare-fun b!6221167 () Bool)

(assert (=> b!6221167 (= e!3786944 (nullable!6150 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292)))))))

(declare-fun b!6221168 () Bool)

(assert (=> b!6221168 (= e!3786942 call!522193)))

(declare-fun bm!522191 () Bool)

(assert (=> bm!522191 (= call!522193 call!522197)))

(declare-fun b!6221169 () Bool)

(assert (=> b!6221169 (= e!3786945 e!3786941)))

(assert (=> b!6221169 (= c!1124054 ((_ is Concat!25002) (regTwo!32826 (regOne!32826 r!7292))))))

(declare-fun bm!522192 () Bool)

(declare-fun $colon$colon!2026 (List!64770 Regex!16157) List!64770)

(assert (=> bm!522192 (= call!522195 ($colon$colon!2026 (exprs!6041 lt!2344955) (ite (or c!1124055 c!1124054) (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (regTwo!32826 (regOne!32826 r!7292)))))))

(assert (= (and d!1950074 c!1124057) b!6221165))

(assert (= (and d!1950074 (not c!1124057)) b!6221160))

(assert (= (and b!6221160 c!1124056) b!6221162))

(assert (= (and b!6221160 (not c!1124056)) b!6221159))

(assert (= (and b!6221159 res!2571281) b!6221167))

(assert (= (and b!6221159 c!1124055) b!6221163))

(assert (= (and b!6221159 (not c!1124055)) b!6221169))

(assert (= (and b!6221169 c!1124054) b!6221161))

(assert (= (and b!6221169 (not c!1124054)) b!6221164))

(assert (= (and b!6221164 c!1124058) b!6221168))

(assert (= (and b!6221164 (not c!1124058)) b!6221166))

(assert (= (or b!6221161 b!6221168) bm!522190))

(assert (= (or b!6221161 b!6221168) bm!522191))

(assert (= (or b!6221163 bm!522190) bm!522192))

(assert (= (or b!6221163 bm!522191) bm!522189))

(assert (= (or b!6221162 bm!522189) bm!522187))

(assert (= (or b!6221162 b!6221163) bm!522188))

(declare-fun m!7048954 () Bool)

(assert (=> bm!522192 m!7048954))

(declare-fun m!7048956 () Bool)

(assert (=> b!6221167 m!7048956))

(declare-fun m!7048958 () Bool)

(assert (=> bm!522187 m!7048958))

(declare-fun m!7048960 () Bool)

(assert (=> bm!522188 m!7048960))

(declare-fun m!7048962 () Bool)

(assert (=> b!6221165 m!7048962))

(assert (=> b!6220893 d!1950074))

(declare-fun b!6221171 () Bool)

(declare-fun e!3786946 () (InoxSet Context!11082))

(declare-fun e!3786949 () (InoxSet Context!11082))

(assert (=> b!6221171 (= e!3786946 e!3786949)))

(declare-fun c!1124061 () Bool)

(assert (=> b!6221171 (= c!1124061 ((_ is Union!16157) (regOne!32826 (regOne!32826 r!7292))))))

(declare-fun b!6221172 () Bool)

(declare-fun e!3786947 () (InoxSet Context!11082))

(declare-fun call!522199 () (InoxSet Context!11082))

(assert (=> b!6221172 (= e!3786947 call!522199)))

(declare-fun b!6221173 () Bool)

(declare-fun call!522200 () (InoxSet Context!11082))

(declare-fun call!522202 () (InoxSet Context!11082))

(assert (=> b!6221173 (= e!3786949 ((_ map or) call!522200 call!522202))))

(declare-fun bm!522193 () Bool)

(declare-fun call!522198 () List!64770)

(declare-fun c!1124059 () Bool)

(declare-fun c!1124060 () Bool)

(assert (=> bm!522193 (= call!522202 (derivationStepZipperDown!1405 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292)))))) (ite (or c!1124061 c!1124060) lt!2344958 (Context!11083 call!522198)) (h!71095 s!2326)))))

(declare-fun b!6221174 () Bool)

(declare-fun e!3786951 () (InoxSet Context!11082))

(declare-fun call!522203 () (InoxSet Context!11082))

(assert (=> b!6221174 (= e!3786951 ((_ map or) call!522200 call!522203))))

(declare-fun bm!522194 () Bool)

(declare-fun call!522201 () List!64770)

(assert (=> bm!522194 (= call!522200 (derivationStepZipperDown!1405 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292)))) (ite c!1124061 lt!2344958 (Context!11083 call!522201)) (h!71095 s!2326)))))

(declare-fun bm!522195 () Bool)

(assert (=> bm!522195 (= call!522203 call!522202)))

(declare-fun b!6221175 () Bool)

(declare-fun c!1124063 () Bool)

(assert (=> b!6221175 (= c!1124063 ((_ is Star!16157) (regOne!32826 (regOne!32826 r!7292))))))

(declare-fun e!3786948 () (InoxSet Context!11082))

(assert (=> b!6221175 (= e!3786947 e!3786948)))

(declare-fun b!6221176 () Bool)

(assert (=> b!6221176 (= e!3786946 (store ((as const (Array Context!11082 Bool)) false) lt!2344958 true))))

(declare-fun b!6221170 () Bool)

(declare-fun e!3786950 () Bool)

(assert (=> b!6221170 (= c!1124060 e!3786950)))

(declare-fun res!2571282 () Bool)

(assert (=> b!6221170 (=> (not res!2571282) (not e!3786950))))

(assert (=> b!6221170 (= res!2571282 ((_ is Concat!25002) (regOne!32826 (regOne!32826 r!7292))))))

(assert (=> b!6221170 (= e!3786949 e!3786951)))

(declare-fun d!1950084 () Bool)

(declare-fun c!1124062 () Bool)

(assert (=> d!1950084 (= c!1124062 (and ((_ is ElementMatch!16157) (regOne!32826 (regOne!32826 r!7292))) (= (c!1123967 (regOne!32826 (regOne!32826 r!7292))) (h!71095 s!2326))))))

(assert (=> d!1950084 (= (derivationStepZipperDown!1405 (regOne!32826 (regOne!32826 r!7292)) lt!2344958 (h!71095 s!2326)) e!3786946)))

(declare-fun b!6221177 () Bool)

(assert (=> b!6221177 (= e!3786948 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522196 () Bool)

(assert (=> bm!522196 (= call!522198 call!522201)))

(declare-fun b!6221178 () Bool)

(assert (=> b!6221178 (= e!3786950 (nullable!6150 (regOne!32826 (regOne!32826 (regOne!32826 r!7292)))))))

(declare-fun b!6221179 () Bool)

(assert (=> b!6221179 (= e!3786948 call!522199)))

(declare-fun bm!522197 () Bool)

(assert (=> bm!522197 (= call!522199 call!522203)))

(declare-fun b!6221180 () Bool)

(assert (=> b!6221180 (= e!3786951 e!3786947)))

(assert (=> b!6221180 (= c!1124059 ((_ is Concat!25002) (regOne!32826 (regOne!32826 r!7292))))))

(declare-fun bm!522198 () Bool)

(assert (=> bm!522198 (= call!522201 ($colon$colon!2026 (exprs!6041 lt!2344958) (ite (or c!1124060 c!1124059) (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 r!7292)))))))

(assert (= (and d!1950084 c!1124062) b!6221176))

(assert (= (and d!1950084 (not c!1124062)) b!6221171))

(assert (= (and b!6221171 c!1124061) b!6221173))

(assert (= (and b!6221171 (not c!1124061)) b!6221170))

(assert (= (and b!6221170 res!2571282) b!6221178))

(assert (= (and b!6221170 c!1124060) b!6221174))

(assert (= (and b!6221170 (not c!1124060)) b!6221180))

(assert (= (and b!6221180 c!1124059) b!6221172))

(assert (= (and b!6221180 (not c!1124059)) b!6221175))

(assert (= (and b!6221175 c!1124063) b!6221179))

(assert (= (and b!6221175 (not c!1124063)) b!6221177))

(assert (= (or b!6221172 b!6221179) bm!522196))

(assert (= (or b!6221172 b!6221179) bm!522197))

(assert (= (or b!6221174 bm!522196) bm!522198))

(assert (= (or b!6221174 bm!522197) bm!522195))

(assert (= (or b!6221173 bm!522195) bm!522193))

(assert (= (or b!6221173 b!6221174) bm!522194))

(declare-fun m!7048964 () Bool)

(assert (=> bm!522198 m!7048964))

(declare-fun m!7048966 () Bool)

(assert (=> b!6221178 m!7048966))

(declare-fun m!7048968 () Bool)

(assert (=> bm!522193 m!7048968))

(declare-fun m!7048970 () Bool)

(assert (=> bm!522194 m!7048970))

(assert (=> b!6221176 m!7048756))

(assert (=> b!6220893 d!1950084))

(declare-fun d!1950086 () Bool)

(declare-fun c!1124072 () Bool)

(declare-fun isEmpty!36657 (List!64771) Bool)

(assert (=> d!1950086 (= c!1124072 (isEmpty!36657 (t!378303 s!2326)))))

(declare-fun e!3786963 () Bool)

(assert (=> d!1950086 (= (matchZipper!2169 lt!2344949 (t!378303 s!2326)) e!3786963)))

(declare-fun b!6221200 () Bool)

(declare-fun nullableZipper!1931 ((InoxSet Context!11082)) Bool)

(assert (=> b!6221200 (= e!3786963 (nullableZipper!1931 lt!2344949))))

(declare-fun b!6221201 () Bool)

(declare-fun head!12822 (List!64771) C!32584)

(declare-fun tail!11907 (List!64771) List!64771)

(assert (=> b!6221201 (= e!3786963 (matchZipper!2169 (derivationStepZipper!2123 lt!2344949 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))))))

(assert (= (and d!1950086 c!1124072) b!6221200))

(assert (= (and d!1950086 (not c!1124072)) b!6221201))

(declare-fun m!7049004 () Bool)

(assert (=> d!1950086 m!7049004))

(declare-fun m!7049006 () Bool)

(assert (=> b!6221200 m!7049006))

(declare-fun m!7049008 () Bool)

(assert (=> b!6221201 m!7049008))

(assert (=> b!6221201 m!7049008))

(declare-fun m!7049010 () Bool)

(assert (=> b!6221201 m!7049010))

(declare-fun m!7049012 () Bool)

(assert (=> b!6221201 m!7049012))

(assert (=> b!6221201 m!7049010))

(assert (=> b!6221201 m!7049012))

(declare-fun m!7049014 () Bool)

(assert (=> b!6221201 m!7049014))

(assert (=> b!6220913 d!1950086))

(declare-fun d!1950102 () Bool)

(declare-fun dynLambda!25507 (Int Context!11082) (InoxSet Context!11082))

(assert (=> d!1950102 (= (flatMap!1662 lt!2344946 lambda!340023) (dynLambda!25507 lambda!340023 lt!2344947))))

(declare-fun lt!2344995 () Unit!157959)

(declare-fun choose!46226 ((InoxSet Context!11082) Context!11082 Int) Unit!157959)

(assert (=> d!1950102 (= lt!2344995 (choose!46226 lt!2344946 lt!2344947 lambda!340023))))

(assert (=> d!1950102 (= lt!2344946 (store ((as const (Array Context!11082 Bool)) false) lt!2344947 true))))

(assert (=> d!1950102 (= (lemmaFlatMapOnSingletonSet!1188 lt!2344946 lt!2344947 lambda!340023) lt!2344995)))

(declare-fun b_lambda!236507 () Bool)

(assert (=> (not b_lambda!236507) (not d!1950102)))

(declare-fun bs!1542727 () Bool)

(assert (= bs!1542727 d!1950102))

(assert (=> bs!1542727 m!7048760))

(declare-fun m!7049016 () Bool)

(assert (=> bs!1542727 m!7049016))

(declare-fun m!7049018 () Bool)

(assert (=> bs!1542727 m!7049018))

(assert (=> bs!1542727 m!7048762))

(assert (=> b!6220894 d!1950102))

(declare-fun d!1950104 () Bool)

(declare-fun c!1124085 () Bool)

(declare-fun e!3786986 () Bool)

(assert (=> d!1950104 (= c!1124085 e!3786986)))

(declare-fun res!2571300 () Bool)

(assert (=> d!1950104 (=> (not res!2571300) (not e!3786986))))

(assert (=> d!1950104 (= res!2571300 ((_ is Cons!64646) (exprs!6041 lt!2344958)))))

(declare-fun e!3786987 () (InoxSet Context!11082))

(assert (=> d!1950104 (= (derivationStepZipperUp!1331 lt!2344958 (h!71095 s!2326)) e!3786987)))

(declare-fun b!6221240 () Bool)

(declare-fun e!3786988 () (InoxSet Context!11082))

(assert (=> b!6221240 (= e!3786987 e!3786988)))

(declare-fun c!1124086 () Bool)

(assert (=> b!6221240 (= c!1124086 ((_ is Cons!64646) (exprs!6041 lt!2344958)))))

(declare-fun b!6221241 () Bool)

(assert (=> b!6221241 (= e!3786986 (nullable!6150 (h!71094 (exprs!6041 lt!2344958))))))

(declare-fun bm!522203 () Bool)

(declare-fun call!522208 () (InoxSet Context!11082))

(assert (=> bm!522203 (= call!522208 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 lt!2344958)) (Context!11083 (t!378302 (exprs!6041 lt!2344958))) (h!71095 s!2326)))))

(declare-fun b!6221242 () Bool)

(assert (=> b!6221242 (= e!3786988 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6221243 () Bool)

(assert (=> b!6221243 (= e!3786987 ((_ map or) call!522208 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 lt!2344958))) (h!71095 s!2326))))))

(declare-fun b!6221244 () Bool)

(assert (=> b!6221244 (= e!3786988 call!522208)))

(assert (= (and d!1950104 res!2571300) b!6221241))

(assert (= (and d!1950104 c!1124085) b!6221243))

(assert (= (and d!1950104 (not c!1124085)) b!6221240))

(assert (= (and b!6221240 c!1124086) b!6221244))

(assert (= (and b!6221240 (not c!1124086)) b!6221242))

(assert (= (or b!6221243 b!6221244) bm!522203))

(declare-fun m!7049020 () Bool)

(assert (=> b!6221241 m!7049020))

(declare-fun m!7049022 () Bool)

(assert (=> bm!522203 m!7049022))

(declare-fun m!7049024 () Bool)

(assert (=> b!6221243 m!7049024))

(assert (=> b!6220894 d!1950104))

(declare-fun d!1950106 () Bool)

(declare-fun choose!46228 ((InoxSet Context!11082) Int) (InoxSet Context!11082))

(assert (=> d!1950106 (= (flatMap!1662 lt!2344946 lambda!340023) (choose!46228 lt!2344946 lambda!340023))))

(declare-fun bs!1542728 () Bool)

(assert (= bs!1542728 d!1950106))

(declare-fun m!7049026 () Bool)

(assert (=> bs!1542728 m!7049026))

(assert (=> b!6220894 d!1950106))

(declare-fun d!1950108 () Bool)

(declare-fun c!1124087 () Bool)

(declare-fun e!3786991 () Bool)

(assert (=> d!1950108 (= c!1124087 e!3786991)))

(declare-fun res!2571305 () Bool)

(assert (=> d!1950108 (=> (not res!2571305) (not e!3786991))))

(assert (=> d!1950108 (= res!2571305 ((_ is Cons!64646) (exprs!6041 lt!2344947)))))

(declare-fun e!3786992 () (InoxSet Context!11082))

(assert (=> d!1950108 (= (derivationStepZipperUp!1331 lt!2344947 (h!71095 s!2326)) e!3786992)))

(declare-fun b!6221249 () Bool)

(declare-fun e!3786993 () (InoxSet Context!11082))

(assert (=> b!6221249 (= e!3786992 e!3786993)))

(declare-fun c!1124088 () Bool)

(assert (=> b!6221249 (= c!1124088 ((_ is Cons!64646) (exprs!6041 lt!2344947)))))

(declare-fun b!6221250 () Bool)

(assert (=> b!6221250 (= e!3786991 (nullable!6150 (h!71094 (exprs!6041 lt!2344947))))))

(declare-fun bm!522204 () Bool)

(declare-fun call!522209 () (InoxSet Context!11082))

(assert (=> bm!522204 (= call!522209 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 lt!2344947)) (Context!11083 (t!378302 (exprs!6041 lt!2344947))) (h!71095 s!2326)))))

(declare-fun b!6221251 () Bool)

(assert (=> b!6221251 (= e!3786993 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6221252 () Bool)

(assert (=> b!6221252 (= e!3786992 ((_ map or) call!522209 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 lt!2344947))) (h!71095 s!2326))))))

(declare-fun b!6221253 () Bool)

(assert (=> b!6221253 (= e!3786993 call!522209)))

(assert (= (and d!1950108 res!2571305) b!6221250))

(assert (= (and d!1950108 c!1124087) b!6221252))

(assert (= (and d!1950108 (not c!1124087)) b!6221249))

(assert (= (and b!6221249 c!1124088) b!6221253))

(assert (= (and b!6221249 (not c!1124088)) b!6221251))

(assert (= (or b!6221252 b!6221253) bm!522204))

(declare-fun m!7049028 () Bool)

(assert (=> b!6221250 m!7049028))

(declare-fun m!7049030 () Bool)

(assert (=> bm!522204 m!7049030))

(declare-fun m!7049032 () Bool)

(assert (=> b!6221252 m!7049032))

(assert (=> b!6220894 d!1950108))

(declare-fun bs!1542729 () Bool)

(declare-fun d!1950110 () Bool)

(assert (= bs!1542729 (and d!1950110 b!6220909)))

(declare-fun lambda!340042 () Int)

(assert (=> bs!1542729 (= lambda!340042 lambda!340023)))

(assert (=> d!1950110 true))

(assert (=> d!1950110 (= (derivationStepZipper!2123 lt!2344946 (h!71095 s!2326)) (flatMap!1662 lt!2344946 lambda!340042))))

(declare-fun bs!1542730 () Bool)

(assert (= bs!1542730 d!1950110))

(declare-fun m!7049034 () Bool)

(assert (=> bs!1542730 m!7049034))

(assert (=> b!6220894 d!1950110))

(declare-fun d!1950112 () Bool)

(declare-fun lt!2344998 () Regex!16157)

(assert (=> d!1950112 (validRegex!7893 lt!2344998)))

(assert (=> d!1950112 (= lt!2344998 (generalisedUnion!2001 (unfocusZipperList!1578 zl!343)))))

(assert (=> d!1950112 (= (unfocusZipper!1899 zl!343) lt!2344998)))

(declare-fun bs!1542731 () Bool)

(assert (= bs!1542731 d!1950112))

(declare-fun m!7049036 () Bool)

(assert (=> bs!1542731 m!7049036))

(assert (=> bs!1542731 m!7048746))

(assert (=> bs!1542731 m!7048746))

(assert (=> bs!1542731 m!7048748))

(assert (=> b!6220904 d!1950112))

(declare-fun d!1950114 () Bool)

(assert (=> d!1950114 (= (isEmpty!36654 (t!378304 zl!343)) ((_ is Nil!64648) (t!378304 zl!343)))))

(assert (=> b!6220905 d!1950114))

(declare-fun b!6221315 () Bool)

(declare-fun e!3787032 () Regex!16157)

(declare-fun e!3787030 () Regex!16157)

(assert (=> b!6221315 (= e!3787032 e!3787030)))

(declare-fun c!1124110 () Bool)

(assert (=> b!6221315 (= c!1124110 ((_ is Cons!64646) (exprs!6041 (h!71096 zl!343))))))

(declare-fun b!6221316 () Bool)

(assert (=> b!6221316 (= e!3787030 (Concat!25002 (h!71094 (exprs!6041 (h!71096 zl!343))) (generalisedConcat!1754 (t!378302 (exprs!6041 (h!71096 zl!343))))))))

(declare-fun b!6221317 () Bool)

(assert (=> b!6221317 (= e!3787032 (h!71094 (exprs!6041 (h!71096 zl!343))))))

(declare-fun b!6221318 () Bool)

(declare-fun e!3787028 () Bool)

(declare-fun lt!2345003 () Regex!16157)

(declare-fun head!12823 (List!64770) Regex!16157)

(assert (=> b!6221318 (= e!3787028 (= lt!2345003 (head!12823 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6221319 () Bool)

(declare-fun isConcat!1090 (Regex!16157) Bool)

(assert (=> b!6221319 (= e!3787028 (isConcat!1090 lt!2345003))))

(declare-fun b!6221320 () Bool)

(assert (=> b!6221320 (= e!3787030 EmptyExpr!16157)))

(declare-fun d!1950116 () Bool)

(declare-fun e!3787027 () Bool)

(assert (=> d!1950116 e!3787027))

(declare-fun res!2571329 () Bool)

(assert (=> d!1950116 (=> (not res!2571329) (not e!3787027))))

(assert (=> d!1950116 (= res!2571329 (validRegex!7893 lt!2345003))))

(assert (=> d!1950116 (= lt!2345003 e!3787032)))

(declare-fun c!1124112 () Bool)

(declare-fun e!3787029 () Bool)

(assert (=> d!1950116 (= c!1124112 e!3787029)))

(declare-fun res!2571330 () Bool)

(assert (=> d!1950116 (=> (not res!2571330) (not e!3787029))))

(assert (=> d!1950116 (= res!2571330 ((_ is Cons!64646) (exprs!6041 (h!71096 zl!343))))))

(declare-fun lambda!340047 () Int)

(declare-fun forall!15271 (List!64770 Int) Bool)

(assert (=> d!1950116 (forall!15271 (exprs!6041 (h!71096 zl!343)) lambda!340047)))

(assert (=> d!1950116 (= (generalisedConcat!1754 (exprs!6041 (h!71096 zl!343))) lt!2345003)))

(declare-fun b!6221321 () Bool)

(declare-fun e!3787031 () Bool)

(declare-fun isEmptyExpr!1567 (Regex!16157) Bool)

(assert (=> b!6221321 (= e!3787031 (isEmptyExpr!1567 lt!2345003))))

(declare-fun b!6221322 () Bool)

(assert (=> b!6221322 (= e!3787027 e!3787031)))

(declare-fun c!1124111 () Bool)

(assert (=> b!6221322 (= c!1124111 (isEmpty!36655 (exprs!6041 (h!71096 zl!343))))))

(declare-fun b!6221323 () Bool)

(assert (=> b!6221323 (= e!3787029 (isEmpty!36655 (t!378302 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6221324 () Bool)

(assert (=> b!6221324 (= e!3787031 e!3787028)))

(declare-fun c!1124109 () Bool)

(declare-fun tail!11908 (List!64770) List!64770)

(assert (=> b!6221324 (= c!1124109 (isEmpty!36655 (tail!11908 (exprs!6041 (h!71096 zl!343)))))))

(assert (= (and d!1950116 res!2571330) b!6221323))

(assert (= (and d!1950116 c!1124112) b!6221317))

(assert (= (and d!1950116 (not c!1124112)) b!6221315))

(assert (= (and b!6221315 c!1124110) b!6221316))

(assert (= (and b!6221315 (not c!1124110)) b!6221320))

(assert (= (and d!1950116 res!2571329) b!6221322))

(assert (= (and b!6221322 c!1124111) b!6221321))

(assert (= (and b!6221322 (not c!1124111)) b!6221324))

(assert (= (and b!6221324 c!1124109) b!6221318))

(assert (= (and b!6221324 (not c!1124109)) b!6221319))

(declare-fun m!7049046 () Bool)

(assert (=> b!6221324 m!7049046))

(assert (=> b!6221324 m!7049046))

(declare-fun m!7049048 () Bool)

(assert (=> b!6221324 m!7049048))

(declare-fun m!7049050 () Bool)

(assert (=> b!6221318 m!7049050))

(declare-fun m!7049052 () Bool)

(assert (=> b!6221321 m!7049052))

(declare-fun m!7049054 () Bool)

(assert (=> d!1950116 m!7049054))

(declare-fun m!7049056 () Bool)

(assert (=> d!1950116 m!7049056))

(declare-fun m!7049058 () Bool)

(assert (=> b!6221316 m!7049058))

(assert (=> b!6221323 m!7048742))

(declare-fun m!7049060 () Bool)

(assert (=> b!6221322 m!7049060))

(declare-fun m!7049062 () Bool)

(assert (=> b!6221319 m!7049062))

(assert (=> b!6220900 d!1950116))

(declare-fun d!1950120 () Bool)

(declare-fun e!3787035 () Bool)

(assert (=> d!1950120 e!3787035))

(declare-fun res!2571333 () Bool)

(assert (=> d!1950120 (=> (not res!2571333) (not e!3787035))))

(declare-fun lt!2345006 () List!64772)

(declare-fun noDuplicate!1995 (List!64772) Bool)

(assert (=> d!1950120 (= res!2571333 (noDuplicate!1995 lt!2345006))))

(declare-fun choose!46229 ((InoxSet Context!11082)) List!64772)

(assert (=> d!1950120 (= lt!2345006 (choose!46229 z!1189))))

(assert (=> d!1950120 (= (toList!9941 z!1189) lt!2345006)))

(declare-fun b!6221327 () Bool)

(declare-fun content!12108 (List!64772) (InoxSet Context!11082))

(assert (=> b!6221327 (= e!3787035 (= (content!12108 lt!2345006) z!1189))))

(assert (= (and d!1950120 res!2571333) b!6221327))

(declare-fun m!7049064 () Bool)

(assert (=> d!1950120 m!7049064))

(declare-fun m!7049066 () Bool)

(assert (=> d!1950120 m!7049066))

(declare-fun m!7049068 () Bool)

(assert (=> b!6221327 m!7049068))

(assert (=> b!6220910 d!1950120))

(declare-fun bs!1542735 () Bool)

(declare-fun d!1950122 () Bool)

(assert (= bs!1542735 (and d!1950122 d!1950116)))

(declare-fun lambda!340050 () Int)

(assert (=> bs!1542735 (= lambda!340050 lambda!340047)))

(assert (=> d!1950122 (= (inv!83639 (h!71096 zl!343)) (forall!15271 (exprs!6041 (h!71096 zl!343)) lambda!340050))))

(declare-fun bs!1542736 () Bool)

(assert (= bs!1542736 d!1950122))

(declare-fun m!7049070 () Bool)

(assert (=> bs!1542736 m!7049070))

(assert (=> b!6220921 d!1950122))

(declare-fun d!1950124 () Bool)

(declare-fun nullableFct!2106 (Regex!16157) Bool)

(assert (=> d!1950124 (= (nullable!6150 (regTwo!32826 (regOne!32826 r!7292))) (nullableFct!2106 (regTwo!32826 (regOne!32826 r!7292))))))

(declare-fun bs!1542737 () Bool)

(assert (= bs!1542737 d!1950124))

(declare-fun m!7049084 () Bool)

(assert (=> bs!1542737 m!7049084))

(assert (=> b!6220901 d!1950124))

(declare-fun d!1950128 () Bool)

(assert (=> d!1950128 (= (flatMap!1662 lt!2344961 lambda!340023) (choose!46228 lt!2344961 lambda!340023))))

(declare-fun bs!1542738 () Bool)

(assert (= bs!1542738 d!1950128))

(declare-fun m!7049086 () Bool)

(assert (=> bs!1542738 m!7049086))

(assert (=> b!6220901 d!1950128))

(assert (=> b!6220901 d!1950104))

(declare-fun d!1950130 () Bool)

(assert (=> d!1950130 (= (flatMap!1662 lt!2344961 lambda!340023) (dynLambda!25507 lambda!340023 lt!2344958))))

(declare-fun lt!2345008 () Unit!157959)

(assert (=> d!1950130 (= lt!2345008 (choose!46226 lt!2344961 lt!2344958 lambda!340023))))

(assert (=> d!1950130 (= lt!2344961 (store ((as const (Array Context!11082 Bool)) false) lt!2344958 true))))

(assert (=> d!1950130 (= (lemmaFlatMapOnSingletonSet!1188 lt!2344961 lt!2344958 lambda!340023) lt!2345008)))

(declare-fun b_lambda!236509 () Bool)

(assert (=> (not b_lambda!236509) (not d!1950130)))

(declare-fun bs!1542739 () Bool)

(assert (= bs!1542739 d!1950130))

(assert (=> bs!1542739 m!7048788))

(declare-fun m!7049088 () Bool)

(assert (=> bs!1542739 m!7049088))

(declare-fun m!7049090 () Bool)

(assert (=> bs!1542739 m!7049090))

(assert (=> bs!1542739 m!7048756))

(assert (=> b!6220901 d!1950130))

(declare-fun b!6221372 () Bool)

(declare-fun e!3787061 () Bool)

(assert (=> b!6221372 (= e!3787061 (matchR!8340 (regTwo!32826 r!7292) s!2326))))

(declare-fun b!6221373 () Bool)

(declare-fun res!2571358 () Bool)

(declare-fun e!3787063 () Bool)

(assert (=> b!6221373 (=> (not res!2571358) (not e!3787063))))

(declare-fun lt!2345021 () Option!16048)

(declare-fun get!22328 (Option!16048) tuple2!66272)

(assert (=> b!6221373 (= res!2571358 (matchR!8340 (regTwo!32826 r!7292) (_2!36439 (get!22328 lt!2345021))))))

(declare-fun b!6221374 () Bool)

(declare-fun e!3787059 () Option!16048)

(assert (=> b!6221374 (= e!3787059 None!16047)))

(declare-fun b!6221375 () Bool)

(declare-fun e!3787060 () Option!16048)

(assert (=> b!6221375 (= e!3787060 (Some!16047 (tuple2!66273 Nil!64647 s!2326)))))

(declare-fun b!6221377 () Bool)

(declare-fun lt!2345022 () Unit!157959)

(declare-fun lt!2345020 () Unit!157959)

(assert (=> b!6221377 (= lt!2345022 lt!2345020)))

(declare-fun ++!14234 (List!64771 List!64771) List!64771)

(assert (=> b!6221377 (= (++!14234 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) (t!378303 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2329 (List!64771 C!32584 List!64771 List!64771) Unit!157959)

(assert (=> b!6221377 (= lt!2345020 (lemmaMoveElementToOtherListKeepsConcatEq!2329 Nil!64647 (h!71095 s!2326) (t!378303 s!2326) s!2326))))

(assert (=> b!6221377 (= e!3787059 (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) (t!378303 s!2326) s!2326))))

(declare-fun b!6221378 () Bool)

(assert (=> b!6221378 (= e!3787060 e!3787059)))

(declare-fun c!1124126 () Bool)

(assert (=> b!6221378 (= c!1124126 ((_ is Nil!64647) s!2326))))

(declare-fun b!6221379 () Bool)

(declare-fun e!3787062 () Bool)

(assert (=> b!6221379 (= e!3787062 (not (isDefined!12751 lt!2345021)))))

(declare-fun b!6221380 () Bool)

(declare-fun res!2571354 () Bool)

(assert (=> b!6221380 (=> (not res!2571354) (not e!3787063))))

(assert (=> b!6221380 (= res!2571354 (matchR!8340 (regOne!32826 r!7292) (_1!36439 (get!22328 lt!2345021))))))

(declare-fun b!6221376 () Bool)

(assert (=> b!6221376 (= e!3787063 (= (++!14234 (_1!36439 (get!22328 lt!2345021)) (_2!36439 (get!22328 lt!2345021))) s!2326))))

(declare-fun d!1950132 () Bool)

(assert (=> d!1950132 e!3787062))

(declare-fun res!2571356 () Bool)

(assert (=> d!1950132 (=> res!2571356 e!3787062)))

(assert (=> d!1950132 (= res!2571356 e!3787063)))

(declare-fun res!2571357 () Bool)

(assert (=> d!1950132 (=> (not res!2571357) (not e!3787063))))

(assert (=> d!1950132 (= res!2571357 (isDefined!12751 lt!2345021))))

(assert (=> d!1950132 (= lt!2345021 e!3787060)))

(declare-fun c!1124127 () Bool)

(assert (=> d!1950132 (= c!1124127 e!3787061)))

(declare-fun res!2571355 () Bool)

(assert (=> d!1950132 (=> (not res!2571355) (not e!3787061))))

(assert (=> d!1950132 (= res!2571355 (matchR!8340 (regOne!32826 r!7292) Nil!64647))))

(assert (=> d!1950132 (validRegex!7893 (regOne!32826 r!7292))))

(assert (=> d!1950132 (= (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) Nil!64647 s!2326 s!2326) lt!2345021)))

(assert (= (and d!1950132 res!2571355) b!6221372))

(assert (= (and d!1950132 c!1124127) b!6221375))

(assert (= (and d!1950132 (not c!1124127)) b!6221378))

(assert (= (and b!6221378 c!1124126) b!6221374))

(assert (= (and b!6221378 (not c!1124126)) b!6221377))

(assert (= (and d!1950132 res!2571357) b!6221380))

(assert (= (and b!6221380 res!2571354) b!6221373))

(assert (= (and b!6221373 res!2571358) b!6221376))

(assert (= (and d!1950132 (not res!2571356)) b!6221379))

(declare-fun m!7049122 () Bool)

(assert (=> b!6221376 m!7049122))

(declare-fun m!7049124 () Bool)

(assert (=> b!6221376 m!7049124))

(assert (=> b!6221373 m!7049122))

(declare-fun m!7049126 () Bool)

(assert (=> b!6221373 m!7049126))

(declare-fun m!7049128 () Bool)

(assert (=> b!6221379 m!7049128))

(declare-fun m!7049130 () Bool)

(assert (=> b!6221372 m!7049130))

(declare-fun m!7049132 () Bool)

(assert (=> b!6221377 m!7049132))

(assert (=> b!6221377 m!7049132))

(declare-fun m!7049134 () Bool)

(assert (=> b!6221377 m!7049134))

(declare-fun m!7049136 () Bool)

(assert (=> b!6221377 m!7049136))

(assert (=> b!6221377 m!7049132))

(declare-fun m!7049138 () Bool)

(assert (=> b!6221377 m!7049138))

(assert (=> b!6221380 m!7049122))

(declare-fun m!7049140 () Bool)

(assert (=> b!6221380 m!7049140))

(assert (=> d!1950132 m!7049128))

(declare-fun m!7049142 () Bool)

(assert (=> d!1950132 m!7049142))

(declare-fun m!7049144 () Bool)

(assert (=> d!1950132 m!7049144))

(assert (=> b!6220911 d!1950132))

(declare-fun d!1950152 () Bool)

(declare-fun choose!46231 (Int) Bool)

(assert (=> d!1950152 (= (Exists!3227 lambda!340021) (choose!46231 lambda!340021))))

(declare-fun bs!1542748 () Bool)

(assert (= bs!1542748 d!1950152))

(declare-fun m!7049146 () Bool)

(assert (=> bs!1542748 m!7049146))

(assert (=> b!6220911 d!1950152))

(declare-fun d!1950154 () Bool)

(assert (=> d!1950154 (= (Exists!3227 lambda!340022) (choose!46231 lambda!340022))))

(declare-fun bs!1542749 () Bool)

(assert (= bs!1542749 d!1950154))

(declare-fun m!7049148 () Bool)

(assert (=> bs!1542749 m!7049148))

(assert (=> b!6220911 d!1950154))

(declare-fun bs!1542752 () Bool)

(declare-fun d!1950156 () Bool)

(assert (= bs!1542752 (and d!1950156 b!6220911)))

(declare-fun lambda!340056 () Int)

(assert (=> bs!1542752 (= lambda!340056 lambda!340021)))

(assert (=> bs!1542752 (not (= lambda!340056 lambda!340022))))

(assert (=> d!1950156 true))

(assert (=> d!1950156 true))

(assert (=> d!1950156 true))

(assert (=> d!1950156 (= (isDefined!12751 (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) Nil!64647 s!2326 s!2326)) (Exists!3227 lambda!340056))))

(declare-fun lt!2345034 () Unit!157959)

(declare-fun choose!46232 (Regex!16157 Regex!16157 List!64771) Unit!157959)

(assert (=> d!1950156 (= lt!2345034 (choose!46232 (regOne!32826 r!7292) (regTwo!32826 r!7292) s!2326))))

(assert (=> d!1950156 (validRegex!7893 (regOne!32826 r!7292))))

(assert (=> d!1950156 (= (lemmaFindConcatSeparationEquivalentToExists!2226 (regOne!32826 r!7292) (regTwo!32826 r!7292) s!2326) lt!2345034)))

(declare-fun bs!1542753 () Bool)

(assert (= bs!1542753 d!1950156))

(assert (=> bs!1542753 m!7048766))

(declare-fun m!7049178 () Bool)

(assert (=> bs!1542753 m!7049178))

(assert (=> bs!1542753 m!7049144))

(declare-fun m!7049180 () Bool)

(assert (=> bs!1542753 m!7049180))

(assert (=> bs!1542753 m!7048766))

(assert (=> bs!1542753 m!7048768))

(assert (=> b!6220911 d!1950156))

(declare-fun bs!1542758 () Bool)

(declare-fun d!1950164 () Bool)

(assert (= bs!1542758 (and d!1950164 b!6220911)))

(declare-fun lambda!340064 () Int)

(assert (=> bs!1542758 (= lambda!340064 lambda!340021)))

(assert (=> bs!1542758 (not (= lambda!340064 lambda!340022))))

(declare-fun bs!1542759 () Bool)

(assert (= bs!1542759 (and d!1950164 d!1950156)))

(assert (=> bs!1542759 (= lambda!340064 lambda!340056)))

(assert (=> d!1950164 true))

(assert (=> d!1950164 true))

(assert (=> d!1950164 true))

(declare-fun lambda!340065 () Int)

(assert (=> bs!1542758 (not (= lambda!340065 lambda!340021))))

(assert (=> bs!1542758 (= lambda!340065 lambda!340022)))

(assert (=> bs!1542759 (not (= lambda!340065 lambda!340056))))

(declare-fun bs!1542760 () Bool)

(assert (= bs!1542760 d!1950164))

(assert (=> bs!1542760 (not (= lambda!340065 lambda!340064))))

(assert (=> d!1950164 true))

(assert (=> d!1950164 true))

(assert (=> d!1950164 true))

(assert (=> d!1950164 (= (Exists!3227 lambda!340064) (Exists!3227 lambda!340065))))

(declare-fun lt!2345040 () Unit!157959)

(declare-fun choose!46233 (Regex!16157 Regex!16157 List!64771) Unit!157959)

(assert (=> d!1950164 (= lt!2345040 (choose!46233 (regOne!32826 r!7292) (regTwo!32826 r!7292) s!2326))))

(assert (=> d!1950164 (validRegex!7893 (regOne!32826 r!7292))))

(assert (=> d!1950164 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1764 (regOne!32826 r!7292) (regTwo!32826 r!7292) s!2326) lt!2345040)))

(declare-fun m!7049186 () Bool)

(assert (=> bs!1542760 m!7049186))

(declare-fun m!7049188 () Bool)

(assert (=> bs!1542760 m!7049188))

(declare-fun m!7049190 () Bool)

(assert (=> bs!1542760 m!7049190))

(assert (=> bs!1542760 m!7049144))

(assert (=> b!6220911 d!1950164))

(declare-fun d!1950168 () Bool)

(declare-fun isEmpty!36658 (Option!16048) Bool)

(assert (=> d!1950168 (= (isDefined!12751 (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) Nil!64647 s!2326 s!2326)) (not (isEmpty!36658 (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) Nil!64647 s!2326 s!2326))))))

(declare-fun bs!1542761 () Bool)

(assert (= bs!1542761 d!1950168))

(assert (=> bs!1542761 m!7048766))

(declare-fun m!7049192 () Bool)

(assert (=> bs!1542761 m!7049192))

(assert (=> b!6220911 d!1950168))

(declare-fun bs!1542762 () Bool)

(declare-fun d!1950170 () Bool)

(assert (= bs!1542762 (and d!1950170 d!1950116)))

(declare-fun lambda!340066 () Int)

(assert (=> bs!1542762 (= lambda!340066 lambda!340047)))

(declare-fun bs!1542763 () Bool)

(assert (= bs!1542763 (and d!1950170 d!1950122)))

(assert (=> bs!1542763 (= lambda!340066 lambda!340050)))

(assert (=> d!1950170 (= (inv!83639 setElem!42254) (forall!15271 (exprs!6041 setElem!42254) lambda!340066))))

(declare-fun bs!1542764 () Bool)

(assert (= bs!1542764 d!1950170))

(declare-fun m!7049194 () Bool)

(assert (=> bs!1542764 m!7049194))

(assert (=> setNonEmpty!42254 d!1950170))

(declare-fun d!1950172 () Bool)

(declare-fun c!1124134 () Bool)

(assert (=> d!1950172 (= c!1124134 (isEmpty!36657 (t!378303 s!2326)))))

(declare-fun e!3787087 () Bool)

(assert (=> d!1950172 (= (matchZipper!2169 lt!2344967 (t!378303 s!2326)) e!3787087)))

(declare-fun b!6221424 () Bool)

(assert (=> b!6221424 (= e!3787087 (nullableZipper!1931 lt!2344967))))

(declare-fun b!6221425 () Bool)

(assert (=> b!6221425 (= e!3787087 (matchZipper!2169 (derivationStepZipper!2123 lt!2344967 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))))))

(assert (= (and d!1950172 c!1124134) b!6221424))

(assert (= (and d!1950172 (not c!1124134)) b!6221425))

(assert (=> d!1950172 m!7049004))

(declare-fun m!7049196 () Bool)

(assert (=> b!6221424 m!7049196))

(assert (=> b!6221425 m!7049008))

(assert (=> b!6221425 m!7049008))

(declare-fun m!7049198 () Bool)

(assert (=> b!6221425 m!7049198))

(assert (=> b!6221425 m!7049012))

(assert (=> b!6221425 m!7049198))

(assert (=> b!6221425 m!7049012))

(declare-fun m!7049200 () Bool)

(assert (=> b!6221425 m!7049200))

(assert (=> b!6220918 d!1950172))

(declare-fun bs!1542780 () Bool)

(declare-fun d!1950174 () Bool)

(assert (= bs!1542780 (and d!1950174 d!1950116)))

(declare-fun lambda!340077 () Int)

(assert (=> bs!1542780 (= lambda!340077 lambda!340047)))

(declare-fun bs!1542782 () Bool)

(assert (= bs!1542782 (and d!1950174 d!1950122)))

(assert (=> bs!1542782 (= lambda!340077 lambda!340050)))

(declare-fun bs!1542784 () Bool)

(assert (= bs!1542784 (and d!1950174 d!1950170)))

(assert (=> bs!1542784 (= lambda!340077 lambda!340066)))

(declare-fun b!6221454 () Bool)

(declare-fun e!3787104 () Regex!16157)

(assert (=> b!6221454 (= e!3787104 (Union!16157 (h!71094 (unfocusZipperList!1578 zl!343)) (generalisedUnion!2001 (t!378302 (unfocusZipperList!1578 zl!343)))))))

(declare-fun b!6221455 () Bool)

(declare-fun e!3787109 () Bool)

(declare-fun lt!2345046 () Regex!16157)

(declare-fun isEmptyLang!1576 (Regex!16157) Bool)

(assert (=> b!6221455 (= e!3787109 (isEmptyLang!1576 lt!2345046))))

(declare-fun e!3787108 () Bool)

(assert (=> d!1950174 e!3787108))

(declare-fun res!2571402 () Bool)

(assert (=> d!1950174 (=> (not res!2571402) (not e!3787108))))

(assert (=> d!1950174 (= res!2571402 (validRegex!7893 lt!2345046))))

(declare-fun e!3787106 () Regex!16157)

(assert (=> d!1950174 (= lt!2345046 e!3787106)))

(declare-fun c!1124143 () Bool)

(declare-fun e!3787105 () Bool)

(assert (=> d!1950174 (= c!1124143 e!3787105)))

(declare-fun res!2571403 () Bool)

(assert (=> d!1950174 (=> (not res!2571403) (not e!3787105))))

(assert (=> d!1950174 (= res!2571403 ((_ is Cons!64646) (unfocusZipperList!1578 zl!343)))))

(assert (=> d!1950174 (forall!15271 (unfocusZipperList!1578 zl!343) lambda!340077)))

(assert (=> d!1950174 (= (generalisedUnion!2001 (unfocusZipperList!1578 zl!343)) lt!2345046)))

(declare-fun b!6221456 () Bool)

(assert (=> b!6221456 (= e!3787108 e!3787109)))

(declare-fun c!1124144 () Bool)

(assert (=> b!6221456 (= c!1124144 (isEmpty!36655 (unfocusZipperList!1578 zl!343)))))

(declare-fun b!6221457 () Bool)

(assert (=> b!6221457 (= e!3787105 (isEmpty!36655 (t!378302 (unfocusZipperList!1578 zl!343))))))

(declare-fun b!6221458 () Bool)

(declare-fun e!3787107 () Bool)

(declare-fun isUnion!1006 (Regex!16157) Bool)

(assert (=> b!6221458 (= e!3787107 (isUnion!1006 lt!2345046))))

(declare-fun b!6221459 () Bool)

(assert (=> b!6221459 (= e!3787104 EmptyLang!16157)))

(declare-fun b!6221460 () Bool)

(assert (=> b!6221460 (= e!3787109 e!3787107)))

(declare-fun c!1124145 () Bool)

(assert (=> b!6221460 (= c!1124145 (isEmpty!36655 (tail!11908 (unfocusZipperList!1578 zl!343))))))

(declare-fun b!6221461 () Bool)

(assert (=> b!6221461 (= e!3787106 e!3787104)))

(declare-fun c!1124146 () Bool)

(assert (=> b!6221461 (= c!1124146 ((_ is Cons!64646) (unfocusZipperList!1578 zl!343)))))

(declare-fun b!6221462 () Bool)

(assert (=> b!6221462 (= e!3787106 (h!71094 (unfocusZipperList!1578 zl!343)))))

(declare-fun b!6221463 () Bool)

(assert (=> b!6221463 (= e!3787107 (= lt!2345046 (head!12823 (unfocusZipperList!1578 zl!343))))))

(assert (= (and d!1950174 res!2571403) b!6221457))

(assert (= (and d!1950174 c!1124143) b!6221462))

(assert (= (and d!1950174 (not c!1124143)) b!6221461))

(assert (= (and b!6221461 c!1124146) b!6221454))

(assert (= (and b!6221461 (not c!1124146)) b!6221459))

(assert (= (and d!1950174 res!2571402) b!6221456))

(assert (= (and b!6221456 c!1124144) b!6221455))

(assert (= (and b!6221456 (not c!1124144)) b!6221460))

(assert (= (and b!6221460 c!1124145) b!6221463))

(assert (= (and b!6221460 (not c!1124145)) b!6221458))

(assert (=> b!6221463 m!7048746))

(declare-fun m!7049216 () Bool)

(assert (=> b!6221463 m!7049216))

(declare-fun m!7049218 () Bool)

(assert (=> b!6221458 m!7049218))

(declare-fun m!7049220 () Bool)

(assert (=> b!6221457 m!7049220))

(declare-fun m!7049222 () Bool)

(assert (=> b!6221455 m!7049222))

(declare-fun m!7049224 () Bool)

(assert (=> b!6221454 m!7049224))

(assert (=> b!6221460 m!7048746))

(declare-fun m!7049226 () Bool)

(assert (=> b!6221460 m!7049226))

(assert (=> b!6221460 m!7049226))

(declare-fun m!7049228 () Bool)

(assert (=> b!6221460 m!7049228))

(assert (=> b!6221456 m!7048746))

(declare-fun m!7049230 () Bool)

(assert (=> b!6221456 m!7049230))

(declare-fun m!7049232 () Bool)

(assert (=> d!1950174 m!7049232))

(assert (=> d!1950174 m!7048746))

(declare-fun m!7049234 () Bool)

(assert (=> d!1950174 m!7049234))

(assert (=> b!6220908 d!1950174))

(declare-fun bs!1542786 () Bool)

(declare-fun d!1950186 () Bool)

(assert (= bs!1542786 (and d!1950186 d!1950116)))

(declare-fun lambda!340080 () Int)

(assert (=> bs!1542786 (= lambda!340080 lambda!340047)))

(declare-fun bs!1542787 () Bool)

(assert (= bs!1542787 (and d!1950186 d!1950122)))

(assert (=> bs!1542787 (= lambda!340080 lambda!340050)))

(declare-fun bs!1542788 () Bool)

(assert (= bs!1542788 (and d!1950186 d!1950170)))

(assert (=> bs!1542788 (= lambda!340080 lambda!340066)))

(declare-fun bs!1542789 () Bool)

(assert (= bs!1542789 (and d!1950186 d!1950174)))

(assert (=> bs!1542789 (= lambda!340080 lambda!340077)))

(declare-fun lt!2345049 () List!64770)

(assert (=> d!1950186 (forall!15271 lt!2345049 lambda!340080)))

(declare-fun e!3787132 () List!64770)

(assert (=> d!1950186 (= lt!2345049 e!3787132)))

(declare-fun c!1124149 () Bool)

(assert (=> d!1950186 (= c!1124149 ((_ is Cons!64648) zl!343))))

(assert (=> d!1950186 (= (unfocusZipperList!1578 zl!343) lt!2345049)))

(declare-fun b!6221513 () Bool)

(assert (=> b!6221513 (= e!3787132 (Cons!64646 (generalisedConcat!1754 (exprs!6041 (h!71096 zl!343))) (unfocusZipperList!1578 (t!378304 zl!343))))))

(declare-fun b!6221514 () Bool)

(assert (=> b!6221514 (= e!3787132 Nil!64646)))

(assert (= (and d!1950186 c!1124149) b!6221513))

(assert (= (and d!1950186 (not c!1124149)) b!6221514))

(declare-fun m!7049240 () Bool)

(assert (=> d!1950186 m!7049240))

(assert (=> b!6221513 m!7048726))

(declare-fun m!7049242 () Bool)

(assert (=> b!6221513 m!7049242))

(assert (=> b!6220908 d!1950186))

(declare-fun bs!1542793 () Bool)

(declare-fun b!6221566 () Bool)

(assert (= bs!1542793 (and b!6221566 d!1950164)))

(declare-fun lambda!340085 () Int)

(assert (=> bs!1542793 (not (= lambda!340085 lambda!340064))))

(declare-fun bs!1542794 () Bool)

(assert (= bs!1542794 (and b!6221566 b!6220911)))

(assert (=> bs!1542794 (not (= lambda!340085 lambda!340021))))

(declare-fun bs!1542795 () Bool)

(assert (= bs!1542795 (and b!6221566 d!1950156)))

(assert (=> bs!1542795 (not (= lambda!340085 lambda!340056))))

(assert (=> bs!1542794 (not (= lambda!340085 lambda!340022))))

(assert (=> bs!1542793 (not (= lambda!340085 lambda!340065))))

(assert (=> b!6221566 true))

(assert (=> b!6221566 true))

(declare-fun bs!1542796 () Bool)

(declare-fun b!6221560 () Bool)

(assert (= bs!1542796 (and b!6221560 b!6220911)))

(declare-fun lambda!340086 () Int)

(assert (=> bs!1542796 (not (= lambda!340086 lambda!340021))))

(declare-fun bs!1542797 () Bool)

(assert (= bs!1542797 (and b!6221560 d!1950156)))

(assert (=> bs!1542797 (not (= lambda!340086 lambda!340056))))

(assert (=> bs!1542796 (= lambda!340086 lambda!340022)))

(declare-fun bs!1542798 () Bool)

(assert (= bs!1542798 (and b!6221560 d!1950164)))

(assert (=> bs!1542798 (= lambda!340086 lambda!340065)))

(assert (=> bs!1542798 (not (= lambda!340086 lambda!340064))))

(declare-fun bs!1542799 () Bool)

(assert (= bs!1542799 (and b!6221560 b!6221566)))

(assert (=> bs!1542799 (not (= lambda!340086 lambda!340085))))

(assert (=> b!6221560 true))

(assert (=> b!6221560 true))

(declare-fun bm!522220 () Bool)

(declare-fun call!522226 () Bool)

(assert (=> bm!522220 (= call!522226 (isEmpty!36657 s!2326))))

(declare-fun bm!522221 () Bool)

(declare-fun c!1124158 () Bool)

(declare-fun call!522225 () Bool)

(assert (=> bm!522221 (= call!522225 (Exists!3227 (ite c!1124158 lambda!340085 lambda!340086)))))

(declare-fun b!6221556 () Bool)

(declare-fun e!3787156 () Bool)

(declare-fun e!3787158 () Bool)

(assert (=> b!6221556 (= e!3787156 e!3787158)))

(declare-fun res!2571421 () Bool)

(assert (=> b!6221556 (= res!2571421 (not ((_ is EmptyLang!16157) r!7292)))))

(assert (=> b!6221556 (=> (not res!2571421) (not e!3787158))))

(declare-fun b!6221557 () Bool)

(assert (=> b!6221557 (= e!3787156 call!522226)))

(declare-fun b!6221558 () Bool)

(declare-fun e!3787154 () Bool)

(assert (=> b!6221558 (= e!3787154 (matchRSpec!3258 (regTwo!32827 r!7292) s!2326))))

(declare-fun b!6221559 () Bool)

(declare-fun e!3787159 () Bool)

(assert (=> b!6221559 (= e!3787159 e!3787154)))

(declare-fun res!2571420 () Bool)

(assert (=> b!6221559 (= res!2571420 (matchRSpec!3258 (regOne!32827 r!7292) s!2326))))

(assert (=> b!6221559 (=> res!2571420 e!3787154)))

(declare-fun e!3787157 () Bool)

(assert (=> b!6221560 (= e!3787157 call!522225)))

(declare-fun b!6221561 () Bool)

(declare-fun res!2571422 () Bool)

(declare-fun e!3787160 () Bool)

(assert (=> b!6221561 (=> res!2571422 e!3787160)))

(assert (=> b!6221561 (= res!2571422 call!522226)))

(assert (=> b!6221561 (= e!3787157 e!3787160)))

(declare-fun b!6221562 () Bool)

(declare-fun c!1124161 () Bool)

(assert (=> b!6221562 (= c!1124161 ((_ is ElementMatch!16157) r!7292))))

(declare-fun e!3787155 () Bool)

(assert (=> b!6221562 (= e!3787158 e!3787155)))

(declare-fun b!6221564 () Bool)

(assert (=> b!6221564 (= e!3787159 e!3787157)))

(assert (=> b!6221564 (= c!1124158 ((_ is Star!16157) r!7292))))

(declare-fun b!6221565 () Bool)

(assert (=> b!6221565 (= e!3787155 (= s!2326 (Cons!64647 (c!1123967 r!7292) Nil!64647)))))

(assert (=> b!6221566 (= e!3787160 call!522225)))

(declare-fun d!1950190 () Bool)

(declare-fun c!1124159 () Bool)

(assert (=> d!1950190 (= c!1124159 ((_ is EmptyExpr!16157) r!7292))))

(assert (=> d!1950190 (= (matchRSpec!3258 r!7292 s!2326) e!3787156)))

(declare-fun b!6221563 () Bool)

(declare-fun c!1124160 () Bool)

(assert (=> b!6221563 (= c!1124160 ((_ is Union!16157) r!7292))))

(assert (=> b!6221563 (= e!3787155 e!3787159)))

(assert (= (and d!1950190 c!1124159) b!6221557))

(assert (= (and d!1950190 (not c!1124159)) b!6221556))

(assert (= (and b!6221556 res!2571421) b!6221562))

(assert (= (and b!6221562 c!1124161) b!6221565))

(assert (= (and b!6221562 (not c!1124161)) b!6221563))

(assert (= (and b!6221563 c!1124160) b!6221559))

(assert (= (and b!6221563 (not c!1124160)) b!6221564))

(assert (= (and b!6221559 (not res!2571420)) b!6221558))

(assert (= (and b!6221564 c!1124158) b!6221561))

(assert (= (and b!6221564 (not c!1124158)) b!6221560))

(assert (= (and b!6221561 (not res!2571422)) b!6221566))

(assert (= (or b!6221566 b!6221560) bm!522221))

(assert (= (or b!6221557 b!6221561) bm!522220))

(declare-fun m!7049244 () Bool)

(assert (=> bm!522220 m!7049244))

(declare-fun m!7049246 () Bool)

(assert (=> bm!522221 m!7049246))

(declare-fun m!7049248 () Bool)

(assert (=> b!6221558 m!7049248))

(declare-fun m!7049250 () Bool)

(assert (=> b!6221559 m!7049250))

(assert (=> b!6220899 d!1950190))

(declare-fun b!6221595 () Bool)

(declare-fun e!3787178 () Bool)

(declare-fun e!3787175 () Bool)

(assert (=> b!6221595 (= e!3787178 e!3787175)))

(declare-fun res!2571443 () Bool)

(assert (=> b!6221595 (=> res!2571443 e!3787175)))

(declare-fun call!522229 () Bool)

(assert (=> b!6221595 (= res!2571443 call!522229)))

(declare-fun b!6221596 () Bool)

(declare-fun e!3787181 () Bool)

(declare-fun lt!2345052 () Bool)

(assert (=> b!6221596 (= e!3787181 (= lt!2345052 call!522229))))

(declare-fun bm!522224 () Bool)

(assert (=> bm!522224 (= call!522229 (isEmpty!36657 s!2326))))

(declare-fun b!6221597 () Bool)

(declare-fun res!2571446 () Bool)

(declare-fun e!3787179 () Bool)

(assert (=> b!6221597 (=> res!2571446 e!3787179)))

(declare-fun e!3787176 () Bool)

(assert (=> b!6221597 (= res!2571446 e!3787176)))

(declare-fun res!2571441 () Bool)

(assert (=> b!6221597 (=> (not res!2571441) (not e!3787176))))

(assert (=> b!6221597 (= res!2571441 lt!2345052)))

(declare-fun b!6221598 () Bool)

(declare-fun res!2571445 () Bool)

(assert (=> b!6221598 (=> (not res!2571445) (not e!3787176))))

(assert (=> b!6221598 (= res!2571445 (isEmpty!36657 (tail!11907 s!2326)))))

(declare-fun b!6221599 () Bool)

(declare-fun e!3787177 () Bool)

(assert (=> b!6221599 (= e!3787181 e!3787177)))

(declare-fun c!1124169 () Bool)

(assert (=> b!6221599 (= c!1124169 ((_ is EmptyLang!16157) r!7292))))

(declare-fun b!6221600 () Bool)

(assert (=> b!6221600 (= e!3787177 (not lt!2345052))))

(declare-fun b!6221601 () Bool)

(assert (=> b!6221601 (= e!3787175 (not (= (head!12822 s!2326) (c!1123967 r!7292))))))

(declare-fun b!6221602 () Bool)

(declare-fun e!3787180 () Bool)

(assert (=> b!6221602 (= e!3787180 (nullable!6150 r!7292))))

(declare-fun b!6221603 () Bool)

(declare-fun derivativeStep!4870 (Regex!16157 C!32584) Regex!16157)

(assert (=> b!6221603 (= e!3787180 (matchR!8340 (derivativeStep!4870 r!7292 (head!12822 s!2326)) (tail!11907 s!2326)))))

(declare-fun b!6221604 () Bool)

(declare-fun res!2571444 () Bool)

(assert (=> b!6221604 (=> (not res!2571444) (not e!3787176))))

(assert (=> b!6221604 (= res!2571444 (not call!522229))))

(declare-fun b!6221605 () Bool)

(assert (=> b!6221605 (= e!3787179 e!3787178)))

(declare-fun res!2571440 () Bool)

(assert (=> b!6221605 (=> (not res!2571440) (not e!3787178))))

(assert (=> b!6221605 (= res!2571440 (not lt!2345052))))

(declare-fun d!1950196 () Bool)

(assert (=> d!1950196 e!3787181))

(declare-fun c!1124170 () Bool)

(assert (=> d!1950196 (= c!1124170 ((_ is EmptyExpr!16157) r!7292))))

(assert (=> d!1950196 (= lt!2345052 e!3787180)))

(declare-fun c!1124168 () Bool)

(assert (=> d!1950196 (= c!1124168 (isEmpty!36657 s!2326))))

(assert (=> d!1950196 (validRegex!7893 r!7292)))

(assert (=> d!1950196 (= (matchR!8340 r!7292 s!2326) lt!2345052)))

(declare-fun b!6221606 () Bool)

(declare-fun res!2571442 () Bool)

(assert (=> b!6221606 (=> res!2571442 e!3787179)))

(assert (=> b!6221606 (= res!2571442 (not ((_ is ElementMatch!16157) r!7292)))))

(assert (=> b!6221606 (= e!3787177 e!3787179)))

(declare-fun b!6221607 () Bool)

(declare-fun res!2571439 () Bool)

(assert (=> b!6221607 (=> res!2571439 e!3787175)))

(assert (=> b!6221607 (= res!2571439 (not (isEmpty!36657 (tail!11907 s!2326))))))

(declare-fun b!6221608 () Bool)

(assert (=> b!6221608 (= e!3787176 (= (head!12822 s!2326) (c!1123967 r!7292)))))

(assert (= (and d!1950196 c!1124168) b!6221602))

(assert (= (and d!1950196 (not c!1124168)) b!6221603))

(assert (= (and d!1950196 c!1124170) b!6221596))

(assert (= (and d!1950196 (not c!1124170)) b!6221599))

(assert (= (and b!6221599 c!1124169) b!6221600))

(assert (= (and b!6221599 (not c!1124169)) b!6221606))

(assert (= (and b!6221606 (not res!2571442)) b!6221597))

(assert (= (and b!6221597 res!2571441) b!6221604))

(assert (= (and b!6221604 res!2571444) b!6221598))

(assert (= (and b!6221598 res!2571445) b!6221608))

(assert (= (and b!6221597 (not res!2571446)) b!6221605))

(assert (= (and b!6221605 res!2571440) b!6221595))

(assert (= (and b!6221595 (not res!2571443)) b!6221607))

(assert (= (and b!6221607 (not res!2571439)) b!6221601))

(assert (= (or b!6221596 b!6221595 b!6221604) bm!522224))

(declare-fun m!7049252 () Bool)

(assert (=> b!6221602 m!7049252))

(assert (=> bm!522224 m!7049244))

(declare-fun m!7049254 () Bool)

(assert (=> b!6221601 m!7049254))

(assert (=> b!6221608 m!7049254))

(assert (=> d!1950196 m!7049244))

(assert (=> d!1950196 m!7048736))

(assert (=> b!6221603 m!7049254))

(assert (=> b!6221603 m!7049254))

(declare-fun m!7049256 () Bool)

(assert (=> b!6221603 m!7049256))

(declare-fun m!7049258 () Bool)

(assert (=> b!6221603 m!7049258))

(assert (=> b!6221603 m!7049256))

(assert (=> b!6221603 m!7049258))

(declare-fun m!7049260 () Bool)

(assert (=> b!6221603 m!7049260))

(assert (=> b!6221607 m!7049258))

(assert (=> b!6221607 m!7049258))

(declare-fun m!7049262 () Bool)

(assert (=> b!6221607 m!7049262))

(assert (=> b!6221598 m!7049258))

(assert (=> b!6221598 m!7049258))

(assert (=> b!6221598 m!7049262))

(assert (=> b!6220899 d!1950196))

(declare-fun d!1950198 () Bool)

(assert (=> d!1950198 (= (matchR!8340 r!7292 s!2326) (matchRSpec!3258 r!7292 s!2326))))

(declare-fun lt!2345055 () Unit!157959)

(declare-fun choose!46237 (Regex!16157 List!64771) Unit!157959)

(assert (=> d!1950198 (= lt!2345055 (choose!46237 r!7292 s!2326))))

(assert (=> d!1950198 (validRegex!7893 r!7292)))

(assert (=> d!1950198 (= (mainMatchTheorem!3258 r!7292 s!2326) lt!2345055)))

(declare-fun bs!1542800 () Bool)

(assert (= bs!1542800 d!1950198))

(assert (=> bs!1542800 m!7048794))

(assert (=> bs!1542800 m!7048792))

(declare-fun m!7049264 () Bool)

(assert (=> bs!1542800 m!7049264))

(assert (=> bs!1542800 m!7048736))

(assert (=> b!6220899 d!1950198))

(declare-fun d!1950200 () Bool)

(declare-fun c!1124171 () Bool)

(declare-fun e!3787182 () Bool)

(assert (=> d!1950200 (= c!1124171 e!3787182)))

(declare-fun res!2571447 () Bool)

(assert (=> d!1950200 (=> (not res!2571447) (not e!3787182))))

(assert (=> d!1950200 (= res!2571447 ((_ is Cons!64646) (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))))

(declare-fun e!3787183 () (InoxSet Context!11082))

(assert (=> d!1950200 (= (derivationStepZipperUp!1331 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))) (h!71095 s!2326)) e!3787183)))

(declare-fun b!6221609 () Bool)

(declare-fun e!3787184 () (InoxSet Context!11082))

(assert (=> b!6221609 (= e!3787183 e!3787184)))

(declare-fun c!1124172 () Bool)

(assert (=> b!6221609 (= c!1124172 ((_ is Cons!64646) (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))))

(declare-fun b!6221610 () Bool)

(assert (=> b!6221610 (= e!3787182 (nullable!6150 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))))))

(declare-fun bm!522225 () Bool)

(declare-fun call!522230 () (InoxSet Context!11082))

(assert (=> bm!522225 (= call!522230 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))) (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (h!71095 s!2326)))))

(declare-fun b!6221611 () Bool)

(assert (=> b!6221611 (= e!3787184 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6221612 () Bool)

(assert (=> b!6221612 (= e!3787183 ((_ map or) call!522230 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (h!71095 s!2326))))))

(declare-fun b!6221613 () Bool)

(assert (=> b!6221613 (= e!3787184 call!522230)))

(assert (= (and d!1950200 res!2571447) b!6221610))

(assert (= (and d!1950200 c!1124171) b!6221612))

(assert (= (and d!1950200 (not c!1124171)) b!6221609))

(assert (= (and b!6221609 c!1124172) b!6221613))

(assert (= (and b!6221609 (not c!1124172)) b!6221611))

(assert (= (or b!6221612 b!6221613) bm!522225))

(declare-fun m!7049266 () Bool)

(assert (=> b!6221610 m!7049266))

(declare-fun m!7049268 () Bool)

(assert (=> bm!522225 m!7049268))

(declare-fun m!7049270 () Bool)

(assert (=> b!6221612 m!7049270))

(assert (=> b!6220909 d!1950200))

(declare-fun d!1950202 () Bool)

(assert (=> d!1950202 (= (flatMap!1662 z!1189 lambda!340023) (dynLambda!25507 lambda!340023 (h!71096 zl!343)))))

(declare-fun lt!2345056 () Unit!157959)

(assert (=> d!1950202 (= lt!2345056 (choose!46226 z!1189 (h!71096 zl!343) lambda!340023))))

(assert (=> d!1950202 (= z!1189 (store ((as const (Array Context!11082 Bool)) false) (h!71096 zl!343) true))))

(assert (=> d!1950202 (= (lemmaFlatMapOnSingletonSet!1188 z!1189 (h!71096 zl!343) lambda!340023) lt!2345056)))

(declare-fun b_lambda!236521 () Bool)

(assert (=> (not b_lambda!236521) (not d!1950202)))

(declare-fun bs!1542801 () Bool)

(assert (= bs!1542801 d!1950202))

(assert (=> bs!1542801 m!7048814))

(declare-fun m!7049272 () Bool)

(assert (=> bs!1542801 m!7049272))

(declare-fun m!7049274 () Bool)

(assert (=> bs!1542801 m!7049274))

(declare-fun m!7049276 () Bool)

(assert (=> bs!1542801 m!7049276))

(assert (=> b!6220909 d!1950202))

(declare-fun d!1950204 () Bool)

(declare-fun c!1124173 () Bool)

(declare-fun e!3787185 () Bool)

(assert (=> d!1950204 (= c!1124173 e!3787185)))

(declare-fun res!2571448 () Bool)

(assert (=> d!1950204 (=> (not res!2571448) (not e!3787185))))

(assert (=> d!1950204 (= res!2571448 ((_ is Cons!64646) (exprs!6041 lt!2344955)))))

(declare-fun e!3787186 () (InoxSet Context!11082))

(assert (=> d!1950204 (= (derivationStepZipperUp!1331 lt!2344955 (h!71095 s!2326)) e!3787186)))

(declare-fun b!6221614 () Bool)

(declare-fun e!3787187 () (InoxSet Context!11082))

(assert (=> b!6221614 (= e!3787186 e!3787187)))

(declare-fun c!1124174 () Bool)

(assert (=> b!6221614 (= c!1124174 ((_ is Cons!64646) (exprs!6041 lt!2344955)))))

(declare-fun b!6221615 () Bool)

(assert (=> b!6221615 (= e!3787185 (nullable!6150 (h!71094 (exprs!6041 lt!2344955))))))

(declare-fun bm!522226 () Bool)

(declare-fun call!522231 () (InoxSet Context!11082))

(assert (=> bm!522226 (= call!522231 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 lt!2344955)) (Context!11083 (t!378302 (exprs!6041 lt!2344955))) (h!71095 s!2326)))))

(declare-fun b!6221616 () Bool)

(assert (=> b!6221616 (= e!3787187 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6221617 () Bool)

(assert (=> b!6221617 (= e!3787186 ((_ map or) call!522231 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 lt!2344955))) (h!71095 s!2326))))))

(declare-fun b!6221618 () Bool)

(assert (=> b!6221618 (= e!3787187 call!522231)))

(assert (= (and d!1950204 res!2571448) b!6221615))

(assert (= (and d!1950204 c!1124173) b!6221617))

(assert (= (and d!1950204 (not c!1124173)) b!6221614))

(assert (= (and b!6221614 c!1124174) b!6221618))

(assert (= (and b!6221614 (not c!1124174)) b!6221616))

(assert (= (or b!6221617 b!6221618) bm!522226))

(declare-fun m!7049278 () Bool)

(assert (=> b!6221615 m!7049278))

(declare-fun m!7049280 () Bool)

(assert (=> bm!522226 m!7049280))

(declare-fun m!7049282 () Bool)

(assert (=> b!6221617 m!7049282))

(assert (=> b!6220909 d!1950204))

(declare-fun d!1950206 () Bool)

(declare-fun c!1124175 () Bool)

(declare-fun e!3787188 () Bool)

(assert (=> d!1950206 (= c!1124175 e!3787188)))

(declare-fun res!2571449 () Bool)

(assert (=> d!1950206 (=> (not res!2571449) (not e!3787188))))

(assert (=> d!1950206 (= res!2571449 ((_ is Cons!64646) (exprs!6041 (h!71096 zl!343))))))

(declare-fun e!3787189 () (InoxSet Context!11082))

(assert (=> d!1950206 (= (derivationStepZipperUp!1331 (h!71096 zl!343) (h!71095 s!2326)) e!3787189)))

(declare-fun b!6221619 () Bool)

(declare-fun e!3787190 () (InoxSet Context!11082))

(assert (=> b!6221619 (= e!3787189 e!3787190)))

(declare-fun c!1124176 () Bool)

(assert (=> b!6221619 (= c!1124176 ((_ is Cons!64646) (exprs!6041 (h!71096 zl!343))))))

(declare-fun b!6221620 () Bool)

(assert (=> b!6221620 (= e!3787188 (nullable!6150 (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun bm!522227 () Bool)

(declare-fun call!522232 () (InoxSet Context!11082))

(assert (=> bm!522227 (= call!522232 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (h!71096 zl!343))) (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))) (h!71095 s!2326)))))

(declare-fun b!6221621 () Bool)

(assert (=> b!6221621 (= e!3787190 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6221622 () Bool)

(assert (=> b!6221622 (= e!3787189 ((_ map or) call!522232 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))) (h!71095 s!2326))))))

(declare-fun b!6221623 () Bool)

(assert (=> b!6221623 (= e!3787190 call!522232)))

(assert (= (and d!1950206 res!2571449) b!6221620))

(assert (= (and d!1950206 c!1124175) b!6221622))

(assert (= (and d!1950206 (not c!1124175)) b!6221619))

(assert (= (and b!6221619 c!1124176) b!6221623))

(assert (= (and b!6221619 (not c!1124176)) b!6221621))

(assert (= (or b!6221622 b!6221623) bm!522227))

(assert (=> b!6221620 m!7048816))

(declare-fun m!7049284 () Bool)

(assert (=> bm!522227 m!7049284))

(declare-fun m!7049286 () Bool)

(assert (=> b!6221622 m!7049286))

(assert (=> b!6220909 d!1950206))

(declare-fun b!6221625 () Bool)

(declare-fun e!3787191 () (InoxSet Context!11082))

(declare-fun e!3787194 () (InoxSet Context!11082))

(assert (=> b!6221625 (= e!3787191 e!3787194)))

(declare-fun c!1124179 () Bool)

(assert (=> b!6221625 (= c!1124179 ((_ is Union!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6221626 () Bool)

(declare-fun e!3787192 () (InoxSet Context!11082))

(declare-fun call!522234 () (InoxSet Context!11082))

(assert (=> b!6221626 (= e!3787192 call!522234)))

(declare-fun b!6221627 () Bool)

(declare-fun call!522235 () (InoxSet Context!11082))

(declare-fun call!522237 () (InoxSet Context!11082))

(assert (=> b!6221627 (= e!3787194 ((_ map or) call!522235 call!522237))))

(declare-fun bm!522228 () Bool)

(declare-fun call!522233 () List!64770)

(declare-fun c!1124178 () Bool)

(declare-fun c!1124177 () Bool)

(assert (=> bm!522228 (= call!522237 (derivationStepZipperDown!1405 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343))))))) (ite (or c!1124179 c!1124178) lt!2344955 (Context!11083 call!522233)) (h!71095 s!2326)))))

(declare-fun b!6221628 () Bool)

(declare-fun e!3787196 () (InoxSet Context!11082))

(declare-fun call!522238 () (InoxSet Context!11082))

(assert (=> b!6221628 (= e!3787196 ((_ map or) call!522235 call!522238))))

(declare-fun bm!522229 () Bool)

(declare-fun call!522236 () List!64770)

(assert (=> bm!522229 (= call!522235 (derivationStepZipperDown!1405 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))) (ite c!1124179 lt!2344955 (Context!11083 call!522236)) (h!71095 s!2326)))))

(declare-fun bm!522230 () Bool)

(assert (=> bm!522230 (= call!522238 call!522237)))

(declare-fun b!6221629 () Bool)

(declare-fun c!1124181 () Bool)

(assert (=> b!6221629 (= c!1124181 ((_ is Star!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun e!3787193 () (InoxSet Context!11082))

(assert (=> b!6221629 (= e!3787192 e!3787193)))

(declare-fun b!6221630 () Bool)

(assert (=> b!6221630 (= e!3787191 (store ((as const (Array Context!11082 Bool)) false) lt!2344955 true))))

(declare-fun b!6221624 () Bool)

(declare-fun e!3787195 () Bool)

(assert (=> b!6221624 (= c!1124178 e!3787195)))

(declare-fun res!2571450 () Bool)

(assert (=> b!6221624 (=> (not res!2571450) (not e!3787195))))

(assert (=> b!6221624 (= res!2571450 ((_ is Concat!25002) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(assert (=> b!6221624 (= e!3787194 e!3787196)))

(declare-fun d!1950208 () Bool)

(declare-fun c!1124180 () Bool)

(assert (=> d!1950208 (= c!1124180 (and ((_ is ElementMatch!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))) (= (c!1123967 (h!71094 (exprs!6041 (h!71096 zl!343)))) (h!71095 s!2326))))))

(assert (=> d!1950208 (= (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (h!71096 zl!343))) lt!2344955 (h!71095 s!2326)) e!3787191)))

(declare-fun b!6221631 () Bool)

(assert (=> b!6221631 (= e!3787193 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522231 () Bool)

(assert (=> bm!522231 (= call!522233 call!522236)))

(declare-fun b!6221632 () Bool)

(assert (=> b!6221632 (= e!3787195 (nullable!6150 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))))))

(declare-fun b!6221633 () Bool)

(assert (=> b!6221633 (= e!3787193 call!522234)))

(declare-fun bm!522232 () Bool)

(assert (=> bm!522232 (= call!522234 call!522238)))

(declare-fun b!6221634 () Bool)

(assert (=> b!6221634 (= e!3787196 e!3787192)))

(assert (=> b!6221634 (= c!1124177 ((_ is Concat!25002) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun bm!522233 () Bool)

(assert (=> bm!522233 (= call!522236 ($colon$colon!2026 (exprs!6041 lt!2344955) (ite (or c!1124178 c!1124177) (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (h!71094 (exprs!6041 (h!71096 zl!343))))))))

(assert (= (and d!1950208 c!1124180) b!6221630))

(assert (= (and d!1950208 (not c!1124180)) b!6221625))

(assert (= (and b!6221625 c!1124179) b!6221627))

(assert (= (and b!6221625 (not c!1124179)) b!6221624))

(assert (= (and b!6221624 res!2571450) b!6221632))

(assert (= (and b!6221624 c!1124178) b!6221628))

(assert (= (and b!6221624 (not c!1124178)) b!6221634))

(assert (= (and b!6221634 c!1124177) b!6221626))

(assert (= (and b!6221634 (not c!1124177)) b!6221629))

(assert (= (and b!6221629 c!1124181) b!6221633))

(assert (= (and b!6221629 (not c!1124181)) b!6221631))

(assert (= (or b!6221626 b!6221633) bm!522231))

(assert (= (or b!6221626 b!6221633) bm!522232))

(assert (= (or b!6221628 bm!522231) bm!522233))

(assert (= (or b!6221628 bm!522232) bm!522230))

(assert (= (or b!6221627 bm!522230) bm!522228))

(assert (= (or b!6221627 b!6221628) bm!522229))

(declare-fun m!7049288 () Bool)

(assert (=> bm!522233 m!7049288))

(declare-fun m!7049290 () Bool)

(assert (=> b!6221632 m!7049290))

(declare-fun m!7049292 () Bool)

(assert (=> bm!522228 m!7049292))

(declare-fun m!7049294 () Bool)

(assert (=> bm!522229 m!7049294))

(assert (=> b!6221630 m!7048962))

(assert (=> b!6220909 d!1950208))

(declare-fun d!1950210 () Bool)

(assert (=> d!1950210 (= (nullable!6150 (h!71094 (exprs!6041 (h!71096 zl!343)))) (nullableFct!2106 (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun bs!1542802 () Bool)

(assert (= bs!1542802 d!1950210))

(declare-fun m!7049296 () Bool)

(assert (=> bs!1542802 m!7049296))

(assert (=> b!6220909 d!1950210))

(declare-fun d!1950212 () Bool)

(assert (=> d!1950212 (= (flatMap!1662 z!1189 lambda!340023) (choose!46228 z!1189 lambda!340023))))

(declare-fun bs!1542803 () Bool)

(assert (= bs!1542803 d!1950212))

(declare-fun m!7049298 () Bool)

(assert (=> bs!1542803 m!7049298))

(assert (=> b!6220909 d!1950212))

(declare-fun d!1950214 () Bool)

(declare-fun c!1124182 () Bool)

(assert (=> d!1950214 (= c!1124182 (isEmpty!36657 (t!378303 s!2326)))))

(declare-fun e!3787197 () Bool)

(assert (=> d!1950214 (= (matchZipper!2169 lt!2344969 (t!378303 s!2326)) e!3787197)))

(declare-fun b!6221635 () Bool)

(assert (=> b!6221635 (= e!3787197 (nullableZipper!1931 lt!2344969))))

(declare-fun b!6221636 () Bool)

(assert (=> b!6221636 (= e!3787197 (matchZipper!2169 (derivationStepZipper!2123 lt!2344969 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))))))

(assert (= (and d!1950214 c!1124182) b!6221635))

(assert (= (and d!1950214 (not c!1124182)) b!6221636))

(assert (=> d!1950214 m!7049004))

(declare-fun m!7049300 () Bool)

(assert (=> b!6221635 m!7049300))

(assert (=> b!6221636 m!7049008))

(assert (=> b!6221636 m!7049008))

(declare-fun m!7049302 () Bool)

(assert (=> b!6221636 m!7049302))

(assert (=> b!6221636 m!7049012))

(assert (=> b!6221636 m!7049302))

(assert (=> b!6221636 m!7049012))

(declare-fun m!7049304 () Bool)

(assert (=> b!6221636 m!7049304))

(assert (=> b!6220920 d!1950214))

(declare-fun d!1950216 () Bool)

(declare-fun c!1124183 () Bool)

(assert (=> d!1950216 (= c!1124183 (isEmpty!36657 (t!378303 s!2326)))))

(declare-fun e!3787198 () Bool)

(assert (=> d!1950216 (= (matchZipper!2169 lt!2344951 (t!378303 s!2326)) e!3787198)))

(declare-fun b!6221637 () Bool)

(assert (=> b!6221637 (= e!3787198 (nullableZipper!1931 lt!2344951))))

(declare-fun b!6221638 () Bool)

(assert (=> b!6221638 (= e!3787198 (matchZipper!2169 (derivationStepZipper!2123 lt!2344951 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))))))

(assert (= (and d!1950216 c!1124183) b!6221637))

(assert (= (and d!1950216 (not c!1124183)) b!6221638))

(assert (=> d!1950216 m!7049004))

(declare-fun m!7049306 () Bool)

(assert (=> b!6221637 m!7049306))

(assert (=> b!6221638 m!7049008))

(assert (=> b!6221638 m!7049008))

(declare-fun m!7049308 () Bool)

(assert (=> b!6221638 m!7049308))

(assert (=> b!6221638 m!7049012))

(assert (=> b!6221638 m!7049308))

(assert (=> b!6221638 m!7049012))

(declare-fun m!7049310 () Bool)

(assert (=> b!6221638 m!7049310))

(assert (=> b!6220920 d!1950216))

(declare-fun d!1950218 () Bool)

(declare-fun c!1124184 () Bool)

(assert (=> d!1950218 (= c!1124184 (isEmpty!36657 (t!378303 s!2326)))))

(declare-fun e!3787199 () Bool)

(assert (=> d!1950218 (= (matchZipper!2169 lt!2344960 (t!378303 s!2326)) e!3787199)))

(declare-fun b!6221639 () Bool)

(assert (=> b!6221639 (= e!3787199 (nullableZipper!1931 lt!2344960))))

(declare-fun b!6221640 () Bool)

(assert (=> b!6221640 (= e!3787199 (matchZipper!2169 (derivationStepZipper!2123 lt!2344960 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))))))

(assert (= (and d!1950218 c!1124184) b!6221639))

(assert (= (and d!1950218 (not c!1124184)) b!6221640))

(assert (=> d!1950218 m!7049004))

(declare-fun m!7049312 () Bool)

(assert (=> b!6221639 m!7049312))

(assert (=> b!6221640 m!7049008))

(assert (=> b!6221640 m!7049008))

(declare-fun m!7049314 () Bool)

(assert (=> b!6221640 m!7049314))

(assert (=> b!6221640 m!7049012))

(assert (=> b!6221640 m!7049314))

(assert (=> b!6221640 m!7049012))

(declare-fun m!7049316 () Bool)

(assert (=> b!6221640 m!7049316))

(assert (=> b!6220920 d!1950218))

(declare-fun e!3787202 () Bool)

(declare-fun d!1950220 () Bool)

(assert (=> d!1950220 (= (matchZipper!2169 ((_ map or) lt!2344960 lt!2344949) (t!378303 s!2326)) e!3787202)))

(declare-fun res!2571453 () Bool)

(assert (=> d!1950220 (=> res!2571453 e!3787202)))

(assert (=> d!1950220 (= res!2571453 (matchZipper!2169 lt!2344960 (t!378303 s!2326)))))

(declare-fun lt!2345059 () Unit!157959)

(declare-fun choose!46238 ((InoxSet Context!11082) (InoxSet Context!11082) List!64771) Unit!157959)

(assert (=> d!1950220 (= lt!2345059 (choose!46238 lt!2344960 lt!2344949 (t!378303 s!2326)))))

(assert (=> d!1950220 (= (lemmaZipperConcatMatchesSameAsBothZippers!988 lt!2344960 lt!2344949 (t!378303 s!2326)) lt!2345059)))

(declare-fun b!6221643 () Bool)

(assert (=> b!6221643 (= e!3787202 (matchZipper!2169 lt!2344949 (t!378303 s!2326)))))

(assert (= (and d!1950220 (not res!2571453)) b!6221643))

(declare-fun m!7049318 () Bool)

(assert (=> d!1950220 m!7049318))

(assert (=> d!1950220 m!7048802))

(declare-fun m!7049320 () Bool)

(assert (=> d!1950220 m!7049320))

(assert (=> b!6221643 m!7048738))

(assert (=> b!6220920 d!1950220))

(declare-fun d!1950222 () Bool)

(assert (=> d!1950222 (= (isEmpty!36655 (t!378302 (exprs!6041 (h!71096 zl!343)))) ((_ is Nil!64646) (t!378302 (exprs!6041 (h!71096 zl!343)))))))

(assert (=> b!6220915 d!1950222))

(declare-fun bs!1542804 () Bool)

(declare-fun d!1950224 () Bool)

(assert (= bs!1542804 (and d!1950224 d!1950170)))

(declare-fun lambda!340087 () Int)

(assert (=> bs!1542804 (= lambda!340087 lambda!340066)))

(declare-fun bs!1542805 () Bool)

(assert (= bs!1542805 (and d!1950224 d!1950122)))

(assert (=> bs!1542805 (= lambda!340087 lambda!340050)))

(declare-fun bs!1542806 () Bool)

(assert (= bs!1542806 (and d!1950224 d!1950174)))

(assert (=> bs!1542806 (= lambda!340087 lambda!340077)))

(declare-fun bs!1542807 () Bool)

(assert (= bs!1542807 (and d!1950224 d!1950116)))

(assert (=> bs!1542807 (= lambda!340087 lambda!340047)))

(declare-fun bs!1542808 () Bool)

(assert (= bs!1542808 (and d!1950224 d!1950186)))

(assert (=> bs!1542808 (= lambda!340087 lambda!340080)))

(assert (=> d!1950224 (= (inv!83639 lt!2344955) (forall!15271 (exprs!6041 lt!2344955) lambda!340087))))

(declare-fun bs!1542809 () Bool)

(assert (= bs!1542809 d!1950224))

(declare-fun m!7049322 () Bool)

(assert (=> bs!1542809 m!7049322))

(assert (=> b!6220906 d!1950224))

(declare-fun e!3787203 () Bool)

(declare-fun d!1950226 () Bool)

(assert (=> d!1950226 (= (matchZipper!2169 ((_ map or) lt!2344969 lt!2344967) (t!378303 s!2326)) e!3787203)))

(declare-fun res!2571454 () Bool)

(assert (=> d!1950226 (=> res!2571454 e!3787203)))

(assert (=> d!1950226 (= res!2571454 (matchZipper!2169 lt!2344969 (t!378303 s!2326)))))

(declare-fun lt!2345060 () Unit!157959)

(assert (=> d!1950226 (= lt!2345060 (choose!46238 lt!2344969 lt!2344967 (t!378303 s!2326)))))

(assert (=> d!1950226 (= (lemmaZipperConcatMatchesSameAsBothZippers!988 lt!2344969 lt!2344967 (t!378303 s!2326)) lt!2345060)))

(declare-fun b!6221644 () Bool)

(assert (=> b!6221644 (= e!3787203 (matchZipper!2169 lt!2344967 (t!378303 s!2326)))))

(assert (= (and d!1950226 (not res!2571454)) b!6221644))

(assert (=> d!1950226 m!7048782))

(assert (=> d!1950226 m!7048780))

(declare-fun m!7049324 () Bool)

(assert (=> d!1950226 m!7049324))

(assert (=> b!6221644 m!7048730))

(assert (=> b!6220907 d!1950226))

(assert (=> b!6220907 d!1950214))

(declare-fun d!1950228 () Bool)

(declare-fun c!1124185 () Bool)

(assert (=> d!1950228 (= c!1124185 (isEmpty!36657 (t!378303 s!2326)))))

(declare-fun e!3787204 () Bool)

(assert (=> d!1950228 (= (matchZipper!2169 ((_ map or) lt!2344969 lt!2344967) (t!378303 s!2326)) e!3787204)))

(declare-fun b!6221645 () Bool)

(assert (=> b!6221645 (= e!3787204 (nullableZipper!1931 ((_ map or) lt!2344969 lt!2344967)))))

(declare-fun b!6221646 () Bool)

(assert (=> b!6221646 (= e!3787204 (matchZipper!2169 (derivationStepZipper!2123 ((_ map or) lt!2344969 lt!2344967) (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))))))

(assert (= (and d!1950228 c!1124185) b!6221645))

(assert (= (and d!1950228 (not c!1124185)) b!6221646))

(assert (=> d!1950228 m!7049004))

(declare-fun m!7049326 () Bool)

(assert (=> b!6221645 m!7049326))

(assert (=> b!6221646 m!7049008))

(assert (=> b!6221646 m!7049008))

(declare-fun m!7049328 () Bool)

(assert (=> b!6221646 m!7049328))

(assert (=> b!6221646 m!7049012))

(assert (=> b!6221646 m!7049328))

(assert (=> b!6221646 m!7049012))

(declare-fun m!7049330 () Bool)

(assert (=> b!6221646 m!7049330))

(assert (=> b!6220907 d!1950228))

(assert (=> b!6220917 d!1950086))

(declare-fun d!1950230 () Bool)

(assert (=> d!1950230 (= (nullable!6150 (regOne!32826 (regOne!32826 r!7292))) (nullableFct!2106 (regOne!32826 (regOne!32826 r!7292))))))

(declare-fun bs!1542810 () Bool)

(assert (= bs!1542810 d!1950230))

(declare-fun m!7049332 () Bool)

(assert (=> bs!1542810 m!7049332))

(assert (=> b!6220898 d!1950230))

(declare-fun condSetEmpty!42260 () Bool)

(assert (=> setNonEmpty!42254 (= condSetEmpty!42260 (= setRest!42254 ((as const (Array Context!11082 Bool)) false)))))

(declare-fun setRes!42260 () Bool)

(assert (=> setNonEmpty!42254 (= tp!1735440 setRes!42260)))

(declare-fun setIsEmpty!42260 () Bool)

(assert (=> setIsEmpty!42260 setRes!42260))

(declare-fun setElem!42260 () Context!11082)

(declare-fun setNonEmpty!42260 () Bool)

(declare-fun e!3787207 () Bool)

(declare-fun tp!1735506 () Bool)

(assert (=> setNonEmpty!42260 (= setRes!42260 (and tp!1735506 (inv!83639 setElem!42260) e!3787207))))

(declare-fun setRest!42260 () (InoxSet Context!11082))

(assert (=> setNonEmpty!42260 (= setRest!42254 ((_ map or) (store ((as const (Array Context!11082 Bool)) false) setElem!42260 true) setRest!42260))))

(declare-fun b!6221651 () Bool)

(declare-fun tp!1735505 () Bool)

(assert (=> b!6221651 (= e!3787207 tp!1735505)))

(assert (= (and setNonEmpty!42254 condSetEmpty!42260) setIsEmpty!42260))

(assert (= (and setNonEmpty!42254 (not condSetEmpty!42260)) setNonEmpty!42260))

(assert (= setNonEmpty!42260 b!6221651))

(declare-fun m!7049334 () Bool)

(assert (=> setNonEmpty!42260 m!7049334))

(declare-fun b!6221665 () Bool)

(declare-fun e!3787210 () Bool)

(declare-fun tp!1735518 () Bool)

(declare-fun tp!1735517 () Bool)

(assert (=> b!6221665 (= e!3787210 (and tp!1735518 tp!1735517))))

(declare-fun b!6221664 () Bool)

(declare-fun tp!1735520 () Bool)

(assert (=> b!6221664 (= e!3787210 tp!1735520)))

(declare-fun b!6221662 () Bool)

(assert (=> b!6221662 (= e!3787210 tp_is_empty!41567)))

(assert (=> b!6220919 (= tp!1735439 e!3787210)))

(declare-fun b!6221663 () Bool)

(declare-fun tp!1735519 () Bool)

(declare-fun tp!1735521 () Bool)

(assert (=> b!6221663 (= e!3787210 (and tp!1735519 tp!1735521))))

(assert (= (and b!6220919 ((_ is ElementMatch!16157) (regOne!32827 r!7292))) b!6221662))

(assert (= (and b!6220919 ((_ is Concat!25002) (regOne!32827 r!7292))) b!6221663))

(assert (= (and b!6220919 ((_ is Star!16157) (regOne!32827 r!7292))) b!6221664))

(assert (= (and b!6220919 ((_ is Union!16157) (regOne!32827 r!7292))) b!6221665))

(declare-fun b!6221669 () Bool)

(declare-fun e!3787211 () Bool)

(declare-fun tp!1735523 () Bool)

(declare-fun tp!1735522 () Bool)

(assert (=> b!6221669 (= e!3787211 (and tp!1735523 tp!1735522))))

(declare-fun b!6221668 () Bool)

(declare-fun tp!1735525 () Bool)

(assert (=> b!6221668 (= e!3787211 tp!1735525)))

(declare-fun b!6221666 () Bool)

(assert (=> b!6221666 (= e!3787211 tp_is_empty!41567)))

(assert (=> b!6220919 (= tp!1735441 e!3787211)))

(declare-fun b!6221667 () Bool)

(declare-fun tp!1735524 () Bool)

(declare-fun tp!1735526 () Bool)

(assert (=> b!6221667 (= e!3787211 (and tp!1735524 tp!1735526))))

(assert (= (and b!6220919 ((_ is ElementMatch!16157) (regTwo!32827 r!7292))) b!6221666))

(assert (= (and b!6220919 ((_ is Concat!25002) (regTwo!32827 r!7292))) b!6221667))

(assert (= (and b!6220919 ((_ is Star!16157) (regTwo!32827 r!7292))) b!6221668))

(assert (= (and b!6220919 ((_ is Union!16157) (regTwo!32827 r!7292))) b!6221669))

(declare-fun b!6221673 () Bool)

(declare-fun e!3787212 () Bool)

(declare-fun tp!1735528 () Bool)

(declare-fun tp!1735527 () Bool)

(assert (=> b!6221673 (= e!3787212 (and tp!1735528 tp!1735527))))

(declare-fun b!6221672 () Bool)

(declare-fun tp!1735530 () Bool)

(assert (=> b!6221672 (= e!3787212 tp!1735530)))

(declare-fun b!6221670 () Bool)

(assert (=> b!6221670 (= e!3787212 tp_is_empty!41567)))

(assert (=> b!6220896 (= tp!1735435 e!3787212)))

(declare-fun b!6221671 () Bool)

(declare-fun tp!1735529 () Bool)

(declare-fun tp!1735531 () Bool)

(assert (=> b!6221671 (= e!3787212 (and tp!1735529 tp!1735531))))

(assert (= (and b!6220896 ((_ is ElementMatch!16157) (reg!16486 r!7292))) b!6221670))

(assert (= (and b!6220896 ((_ is Concat!25002) (reg!16486 r!7292))) b!6221671))

(assert (= (and b!6220896 ((_ is Star!16157) (reg!16486 r!7292))) b!6221672))

(assert (= (and b!6220896 ((_ is Union!16157) (reg!16486 r!7292))) b!6221673))

(declare-fun b!6221681 () Bool)

(declare-fun e!3787218 () Bool)

(declare-fun tp!1735536 () Bool)

(assert (=> b!6221681 (= e!3787218 tp!1735536)))

(declare-fun e!3787217 () Bool)

(declare-fun b!6221680 () Bool)

(declare-fun tp!1735537 () Bool)

(assert (=> b!6221680 (= e!3787217 (and (inv!83639 (h!71096 (t!378304 zl!343))) e!3787218 tp!1735537))))

(assert (=> b!6220921 (= tp!1735436 e!3787217)))

(assert (= b!6221680 b!6221681))

(assert (= (and b!6220921 ((_ is Cons!64648) (t!378304 zl!343))) b!6221680))

(declare-fun m!7049336 () Bool)

(assert (=> b!6221680 m!7049336))

(declare-fun b!6221686 () Bool)

(declare-fun e!3787221 () Bool)

(declare-fun tp!1735542 () Bool)

(declare-fun tp!1735543 () Bool)

(assert (=> b!6221686 (= e!3787221 (and tp!1735542 tp!1735543))))

(assert (=> b!6220916 (= tp!1735442 e!3787221)))

(assert (= (and b!6220916 ((_ is Cons!64646) (exprs!6041 (h!71096 zl!343)))) b!6221686))

(declare-fun b!6221691 () Bool)

(declare-fun e!3787224 () Bool)

(declare-fun tp!1735546 () Bool)

(assert (=> b!6221691 (= e!3787224 (and tp_is_empty!41567 tp!1735546))))

(assert (=> b!6220897 (= tp!1735437 e!3787224)))

(assert (= (and b!6220897 ((_ is Cons!64647) (t!378303 s!2326))) b!6221691))

(declare-fun b!6221692 () Bool)

(declare-fun e!3787225 () Bool)

(declare-fun tp!1735547 () Bool)

(declare-fun tp!1735548 () Bool)

(assert (=> b!6221692 (= e!3787225 (and tp!1735547 tp!1735548))))

(assert (=> b!6220902 (= tp!1735438 e!3787225)))

(assert (= (and b!6220902 ((_ is Cons!64646) (exprs!6041 setElem!42254))) b!6221692))

(declare-fun b!6221696 () Bool)

(declare-fun e!3787226 () Bool)

(declare-fun tp!1735550 () Bool)

(declare-fun tp!1735549 () Bool)

(assert (=> b!6221696 (= e!3787226 (and tp!1735550 tp!1735549))))

(declare-fun b!6221695 () Bool)

(declare-fun tp!1735552 () Bool)

(assert (=> b!6221695 (= e!3787226 tp!1735552)))

(declare-fun b!6221693 () Bool)

(assert (=> b!6221693 (= e!3787226 tp_is_empty!41567)))

(assert (=> b!6220912 (= tp!1735433 e!3787226)))

(declare-fun b!6221694 () Bool)

(declare-fun tp!1735551 () Bool)

(declare-fun tp!1735553 () Bool)

(assert (=> b!6221694 (= e!3787226 (and tp!1735551 tp!1735553))))

(assert (= (and b!6220912 ((_ is ElementMatch!16157) (regOne!32826 r!7292))) b!6221693))

(assert (= (and b!6220912 ((_ is Concat!25002) (regOne!32826 r!7292))) b!6221694))

(assert (= (and b!6220912 ((_ is Star!16157) (regOne!32826 r!7292))) b!6221695))

(assert (= (and b!6220912 ((_ is Union!16157) (regOne!32826 r!7292))) b!6221696))

(declare-fun b!6221700 () Bool)

(declare-fun e!3787227 () Bool)

(declare-fun tp!1735555 () Bool)

(declare-fun tp!1735554 () Bool)

(assert (=> b!6221700 (= e!3787227 (and tp!1735555 tp!1735554))))

(declare-fun b!6221699 () Bool)

(declare-fun tp!1735557 () Bool)

(assert (=> b!6221699 (= e!3787227 tp!1735557)))

(declare-fun b!6221697 () Bool)

(assert (=> b!6221697 (= e!3787227 tp_is_empty!41567)))

(assert (=> b!6220912 (= tp!1735434 e!3787227)))

(declare-fun b!6221698 () Bool)

(declare-fun tp!1735556 () Bool)

(declare-fun tp!1735558 () Bool)

(assert (=> b!6221698 (= e!3787227 (and tp!1735556 tp!1735558))))

(assert (= (and b!6220912 ((_ is ElementMatch!16157) (regTwo!32826 r!7292))) b!6221697))

(assert (= (and b!6220912 ((_ is Concat!25002) (regTwo!32826 r!7292))) b!6221698))

(assert (= (and b!6220912 ((_ is Star!16157) (regTwo!32826 r!7292))) b!6221699))

(assert (= (and b!6220912 ((_ is Union!16157) (regTwo!32826 r!7292))) b!6221700))

(declare-fun b_lambda!236523 () Bool)

(assert (= b_lambda!236521 (or b!6220909 b_lambda!236523)))

(declare-fun bs!1542811 () Bool)

(declare-fun d!1950232 () Bool)

(assert (= bs!1542811 (and d!1950232 b!6220909)))

(assert (=> bs!1542811 (= (dynLambda!25507 lambda!340023 (h!71096 zl!343)) (derivationStepZipperUp!1331 (h!71096 zl!343) (h!71095 s!2326)))))

(assert (=> bs!1542811 m!7048812))

(assert (=> d!1950202 d!1950232))

(declare-fun b_lambda!236525 () Bool)

(assert (= b_lambda!236509 (or b!6220909 b_lambda!236525)))

(declare-fun bs!1542812 () Bool)

(declare-fun d!1950234 () Bool)

(assert (= bs!1542812 (and d!1950234 b!6220909)))

(assert (=> bs!1542812 (= (dynLambda!25507 lambda!340023 lt!2344958) (derivationStepZipperUp!1331 lt!2344958 (h!71095 s!2326)))))

(assert (=> bs!1542812 m!7048752))

(assert (=> d!1950130 d!1950234))

(declare-fun b_lambda!236527 () Bool)

(assert (= b_lambda!236507 (or b!6220909 b_lambda!236527)))

(declare-fun bs!1542813 () Bool)

(declare-fun d!1950236 () Bool)

(assert (= bs!1542813 (and d!1950236 b!6220909)))

(assert (=> bs!1542813 (= (dynLambda!25507 lambda!340023 lt!2344947) (derivationStepZipperUp!1331 lt!2344947 (h!71095 s!2326)))))

(assert (=> bs!1542813 m!7048750))

(assert (=> d!1950102 d!1950236))

(check-sat (not b!6221379) (not b!6221201) (not b!6221615) (not b!6221424) (not b!6221327) tp_is_empty!41567 (not b!6221601) (not b!6221318) (not b!6221559) (not b!6221673) (not b!6221603) (not d!1950086) (not d!1950216) (not d!1950102) (not b!6221463) (not b!6221691) (not bm!522233) (not d!1950110) (not b!6221178) (not d!1950198) (not b!6221608) (not b!6221692) (not b_lambda!236523) (not b!6221316) (not bm!522192) (not d!1950226) (not b!6221373) (not b!6221686) (not b!6221681) (not b!6221637) (not b!6221380) (not d!1950210) (not b!6221699) (not bm!522198) (not b!6221695) (not d!1950214) (not d!1950196) (not bm!522203) (not d!1950202) (not bs!1542813) (not b!6221454) (not b!6221322) (not d!1950124) (not b!6221321) (not bm!522194) (not b!6221638) (not bm!522220) (not b!6221323) (not b!6221635) (not d!1950106) (not bm!522187) (not b!6221651) (not b!6221700) (not b!6221645) (not d!1950224) (not bm!522228) (not d!1950152) (not b!6221372) (not b!6221667) (not d!1950168) (not b!6221602) (not b!6221669) (not bm!522229) (not d!1950170) (not b!6221665) (not bm!522221) (not b_lambda!236525) (not bm!522163) (not b!6221607) (not b!6221558) (not b!6221324) (not b!6221632) (not b!6221072) (not b!6221456) (not b!6221252) (not b!6221200) (not b!6221664) (not d!1950116) (not d!1950174) (not b!6221663) (not b!6221457) (not b!6221612) (not bs!1542811) (not b!6221610) (not b!6221698) (not b!6221250) (not b!6221636) (not b!6221644) (not b!6221460) (not b!6221167) (not b!6221377) (not bm!522225) (not d!1950132) (not b!6221455) (not b!6221643) (not d!1950220) (not b_lambda!236527) (not d!1950112) (not b!6221376) (not b!6221617) (not b!6221646) (not bm!522227) (not bm!522224) (not d!1950128) (not b!6221640) (not bm!522204) (not b!6221319) (not d!1950154) (not b!6221668) (not d!1950164) (not bm!522165) (not d!1950120) (not b!6221513) (not b!6221639) (not b!6221680) (not d!1950122) (not d!1950230) (not d!1950130) (not d!1950172) (not d!1950186) (not bm!522193) (not b!6221598) (not b!6221622) (not b!6221241) (not bm!522226) (not b!6221425) (not b!6221672) (not d!1950228) (not b!6221696) (not b!6221694) (not b!6221671) (not d!1950212) (not setNonEmpty!42260) (not b!6221458) (not b!6221243) (not bs!1542812) (not bm!522188) (not b!6221620) (not d!1950156) (not d!1950218))
(check-sat)
(get-model)

(declare-fun b!6221943 () Bool)

(declare-fun e!3787390 () Bool)

(declare-fun e!3787387 () Bool)

(assert (=> b!6221943 (= e!3787390 e!3787387)))

(declare-fun res!2571560 () Bool)

(assert (=> b!6221943 (=> res!2571560 e!3787387)))

(declare-fun call!522298 () Bool)

(assert (=> b!6221943 (= res!2571560 call!522298)))

(declare-fun b!6221944 () Bool)

(declare-fun e!3787393 () Bool)

(declare-fun lt!2345074 () Bool)

(assert (=> b!6221944 (= e!3787393 (= lt!2345074 call!522298))))

(declare-fun bm!522293 () Bool)

(assert (=> bm!522293 (= call!522298 (isEmpty!36657 (tail!11907 s!2326)))))

(declare-fun b!6221945 () Bool)

(declare-fun res!2571563 () Bool)

(declare-fun e!3787391 () Bool)

(assert (=> b!6221945 (=> res!2571563 e!3787391)))

(declare-fun e!3787388 () Bool)

(assert (=> b!6221945 (= res!2571563 e!3787388)))

(declare-fun res!2571558 () Bool)

(assert (=> b!6221945 (=> (not res!2571558) (not e!3787388))))

(assert (=> b!6221945 (= res!2571558 lt!2345074)))

(declare-fun b!6221946 () Bool)

(declare-fun res!2571562 () Bool)

(assert (=> b!6221946 (=> (not res!2571562) (not e!3787388))))

(assert (=> b!6221946 (= res!2571562 (isEmpty!36657 (tail!11907 (tail!11907 s!2326))))))

(declare-fun b!6221947 () Bool)

(declare-fun e!3787389 () Bool)

(assert (=> b!6221947 (= e!3787393 e!3787389)))

(declare-fun c!1124258 () Bool)

(assert (=> b!6221947 (= c!1124258 ((_ is EmptyLang!16157) (derivativeStep!4870 r!7292 (head!12822 s!2326))))))

(declare-fun b!6221948 () Bool)

(assert (=> b!6221948 (= e!3787389 (not lt!2345074))))

(declare-fun b!6221949 () Bool)

(assert (=> b!6221949 (= e!3787387 (not (= (head!12822 (tail!11907 s!2326)) (c!1123967 (derivativeStep!4870 r!7292 (head!12822 s!2326))))))))

(declare-fun b!6221950 () Bool)

(declare-fun e!3787392 () Bool)

(assert (=> b!6221950 (= e!3787392 (nullable!6150 (derivativeStep!4870 r!7292 (head!12822 s!2326))))))

(declare-fun b!6221951 () Bool)

(assert (=> b!6221951 (= e!3787392 (matchR!8340 (derivativeStep!4870 (derivativeStep!4870 r!7292 (head!12822 s!2326)) (head!12822 (tail!11907 s!2326))) (tail!11907 (tail!11907 s!2326))))))

(declare-fun b!6221952 () Bool)

(declare-fun res!2571561 () Bool)

(assert (=> b!6221952 (=> (not res!2571561) (not e!3787388))))

(assert (=> b!6221952 (= res!2571561 (not call!522298))))

(declare-fun b!6221953 () Bool)

(assert (=> b!6221953 (= e!3787391 e!3787390)))

(declare-fun res!2571557 () Bool)

(assert (=> b!6221953 (=> (not res!2571557) (not e!3787390))))

(assert (=> b!6221953 (= res!2571557 (not lt!2345074))))

(declare-fun d!1950362 () Bool)

(assert (=> d!1950362 e!3787393))

(declare-fun c!1124259 () Bool)

(assert (=> d!1950362 (= c!1124259 ((_ is EmptyExpr!16157) (derivativeStep!4870 r!7292 (head!12822 s!2326))))))

(assert (=> d!1950362 (= lt!2345074 e!3787392)))

(declare-fun c!1124257 () Bool)

(assert (=> d!1950362 (= c!1124257 (isEmpty!36657 (tail!11907 s!2326)))))

(assert (=> d!1950362 (validRegex!7893 (derivativeStep!4870 r!7292 (head!12822 s!2326)))))

(assert (=> d!1950362 (= (matchR!8340 (derivativeStep!4870 r!7292 (head!12822 s!2326)) (tail!11907 s!2326)) lt!2345074)))

(declare-fun b!6221954 () Bool)

(declare-fun res!2571559 () Bool)

(assert (=> b!6221954 (=> res!2571559 e!3787391)))

(assert (=> b!6221954 (= res!2571559 (not ((_ is ElementMatch!16157) (derivativeStep!4870 r!7292 (head!12822 s!2326)))))))

(assert (=> b!6221954 (= e!3787389 e!3787391)))

(declare-fun b!6221955 () Bool)

(declare-fun res!2571556 () Bool)

(assert (=> b!6221955 (=> res!2571556 e!3787387)))

(assert (=> b!6221955 (= res!2571556 (not (isEmpty!36657 (tail!11907 (tail!11907 s!2326)))))))

(declare-fun b!6221956 () Bool)

(assert (=> b!6221956 (= e!3787388 (= (head!12822 (tail!11907 s!2326)) (c!1123967 (derivativeStep!4870 r!7292 (head!12822 s!2326)))))))

(assert (= (and d!1950362 c!1124257) b!6221950))

(assert (= (and d!1950362 (not c!1124257)) b!6221951))

(assert (= (and d!1950362 c!1124259) b!6221944))

(assert (= (and d!1950362 (not c!1124259)) b!6221947))

(assert (= (and b!6221947 c!1124258) b!6221948))

(assert (= (and b!6221947 (not c!1124258)) b!6221954))

(assert (= (and b!6221954 (not res!2571559)) b!6221945))

(assert (= (and b!6221945 res!2571558) b!6221952))

(assert (= (and b!6221952 res!2571561) b!6221946))

(assert (= (and b!6221946 res!2571562) b!6221956))

(assert (= (and b!6221945 (not res!2571563)) b!6221953))

(assert (= (and b!6221953 res!2571557) b!6221943))

(assert (= (and b!6221943 (not res!2571560)) b!6221955))

(assert (= (and b!6221955 (not res!2571556)) b!6221949))

(assert (= (or b!6221944 b!6221943 b!6221952) bm!522293))

(assert (=> b!6221950 m!7049256))

(declare-fun m!7049610 () Bool)

(assert (=> b!6221950 m!7049610))

(assert (=> bm!522293 m!7049258))

(assert (=> bm!522293 m!7049262))

(assert (=> b!6221949 m!7049258))

(declare-fun m!7049612 () Bool)

(assert (=> b!6221949 m!7049612))

(assert (=> b!6221956 m!7049258))

(assert (=> b!6221956 m!7049612))

(assert (=> d!1950362 m!7049258))

(assert (=> d!1950362 m!7049262))

(assert (=> d!1950362 m!7049256))

(declare-fun m!7049614 () Bool)

(assert (=> d!1950362 m!7049614))

(assert (=> b!6221951 m!7049258))

(assert (=> b!6221951 m!7049612))

(assert (=> b!6221951 m!7049256))

(assert (=> b!6221951 m!7049612))

(declare-fun m!7049616 () Bool)

(assert (=> b!6221951 m!7049616))

(assert (=> b!6221951 m!7049258))

(declare-fun m!7049618 () Bool)

(assert (=> b!6221951 m!7049618))

(assert (=> b!6221951 m!7049616))

(assert (=> b!6221951 m!7049618))

(declare-fun m!7049620 () Bool)

(assert (=> b!6221951 m!7049620))

(assert (=> b!6221955 m!7049258))

(assert (=> b!6221955 m!7049618))

(assert (=> b!6221955 m!7049618))

(declare-fun m!7049622 () Bool)

(assert (=> b!6221955 m!7049622))

(assert (=> b!6221946 m!7049258))

(assert (=> b!6221946 m!7049618))

(assert (=> b!6221946 m!7049618))

(assert (=> b!6221946 m!7049622))

(assert (=> b!6221603 d!1950362))

(declare-fun b!6222017 () Bool)

(declare-fun c!1124281 () Bool)

(assert (=> b!6222017 (= c!1124281 (nullable!6150 (regOne!32826 r!7292)))))

(declare-fun e!3787431 () Regex!16157)

(declare-fun e!3787428 () Regex!16157)

(assert (=> b!6222017 (= e!3787431 e!3787428)))

(declare-fun bm!522306 () Bool)

(declare-fun call!522314 () Regex!16157)

(declare-fun call!522313 () Regex!16157)

(assert (=> bm!522306 (= call!522314 call!522313)))

(declare-fun b!6222018 () Bool)

(declare-fun e!3787432 () Regex!16157)

(assert (=> b!6222018 (= e!3787432 e!3787431)))

(declare-fun c!1124280 () Bool)

(assert (=> b!6222018 (= c!1124280 ((_ is Star!16157) r!7292))))

(declare-fun b!6222019 () Bool)

(declare-fun call!522311 () Regex!16157)

(assert (=> b!6222019 (= e!3787428 (Union!16157 (Concat!25002 call!522311 (regTwo!32826 r!7292)) EmptyLang!16157))))

(declare-fun bm!522307 () Bool)

(assert (=> bm!522307 (= call!522311 call!522314)))

(declare-fun b!6222020 () Bool)

(assert (=> b!6222020 (= e!3787431 (Concat!25002 call!522314 r!7292))))

(declare-fun bm!522308 () Bool)

(declare-fun call!522312 () Regex!16157)

(declare-fun c!1124282 () Bool)

(assert (=> bm!522308 (= call!522312 (derivativeStep!4870 (ite c!1124282 (regOne!32827 r!7292) (regOne!32826 r!7292)) (head!12822 s!2326)))))

(declare-fun b!6222021 () Bool)

(declare-fun e!3787430 () Regex!16157)

(declare-fun e!3787429 () Regex!16157)

(assert (=> b!6222021 (= e!3787430 e!3787429)))

(declare-fun c!1124283 () Bool)

(assert (=> b!6222021 (= c!1124283 ((_ is ElementMatch!16157) r!7292))))

(declare-fun b!6222022 () Bool)

(assert (=> b!6222022 (= c!1124282 ((_ is Union!16157) r!7292))))

(assert (=> b!6222022 (= e!3787429 e!3787432)))

(declare-fun d!1950372 () Bool)

(declare-fun lt!2345079 () Regex!16157)

(assert (=> d!1950372 (validRegex!7893 lt!2345079)))

(assert (=> d!1950372 (= lt!2345079 e!3787430)))

(declare-fun c!1124279 () Bool)

(assert (=> d!1950372 (= c!1124279 (or ((_ is EmptyExpr!16157) r!7292) ((_ is EmptyLang!16157) r!7292)))))

(assert (=> d!1950372 (validRegex!7893 r!7292)))

(assert (=> d!1950372 (= (derivativeStep!4870 r!7292 (head!12822 s!2326)) lt!2345079)))

(declare-fun b!6222016 () Bool)

(assert (=> b!6222016 (= e!3787428 (Union!16157 (Concat!25002 call!522312 (regTwo!32826 r!7292)) call!522311))))

(declare-fun b!6222023 () Bool)

(assert (=> b!6222023 (= e!3787432 (Union!16157 call!522312 call!522313))))

(declare-fun b!6222024 () Bool)

(assert (=> b!6222024 (= e!3787429 (ite (= (head!12822 s!2326) (c!1123967 r!7292)) EmptyExpr!16157 EmptyLang!16157))))

(declare-fun bm!522309 () Bool)

(assert (=> bm!522309 (= call!522313 (derivativeStep!4870 (ite c!1124282 (regTwo!32827 r!7292) (ite c!1124280 (reg!16486 r!7292) (ite c!1124281 (regTwo!32826 r!7292) (regOne!32826 r!7292)))) (head!12822 s!2326)))))

(declare-fun b!6222025 () Bool)

(assert (=> b!6222025 (= e!3787430 EmptyLang!16157)))

(assert (= (and d!1950372 c!1124279) b!6222025))

(assert (= (and d!1950372 (not c!1124279)) b!6222021))

(assert (= (and b!6222021 c!1124283) b!6222024))

(assert (= (and b!6222021 (not c!1124283)) b!6222022))

(assert (= (and b!6222022 c!1124282) b!6222023))

(assert (= (and b!6222022 (not c!1124282)) b!6222018))

(assert (= (and b!6222018 c!1124280) b!6222020))

(assert (= (and b!6222018 (not c!1124280)) b!6222017))

(assert (= (and b!6222017 c!1124281) b!6222016))

(assert (= (and b!6222017 (not c!1124281)) b!6222019))

(assert (= (or b!6222016 b!6222019) bm!522307))

(assert (= (or b!6222020 bm!522307) bm!522306))

(assert (= (or b!6222023 bm!522306) bm!522309))

(assert (= (or b!6222023 b!6222016) bm!522308))

(declare-fun m!7049664 () Bool)

(assert (=> b!6222017 m!7049664))

(assert (=> bm!522308 m!7049254))

(declare-fun m!7049666 () Bool)

(assert (=> bm!522308 m!7049666))

(declare-fun m!7049668 () Bool)

(assert (=> d!1950372 m!7049668))

(assert (=> d!1950372 m!7048736))

(assert (=> bm!522309 m!7049254))

(declare-fun m!7049670 () Bool)

(assert (=> bm!522309 m!7049670))

(assert (=> b!6221603 d!1950372))

(declare-fun d!1950384 () Bool)

(assert (=> d!1950384 (= (head!12822 s!2326) (h!71095 s!2326))))

(assert (=> b!6221603 d!1950384))

(declare-fun d!1950386 () Bool)

(assert (=> d!1950386 (= (tail!11907 s!2326) (t!378303 s!2326))))

(assert (=> b!6221603 d!1950386))

(declare-fun bs!1542887 () Bool)

(declare-fun d!1950388 () Bool)

(assert (= bs!1542887 (and d!1950388 d!1950170)))

(declare-fun lambda!340104 () Int)

(assert (=> bs!1542887 (= lambda!340104 lambda!340066)))

(declare-fun bs!1542888 () Bool)

(assert (= bs!1542888 (and d!1950388 d!1950122)))

(assert (=> bs!1542888 (= lambda!340104 lambda!340050)))

(declare-fun bs!1542889 () Bool)

(assert (= bs!1542889 (and d!1950388 d!1950174)))

(assert (=> bs!1542889 (= lambda!340104 lambda!340077)))

(declare-fun bs!1542890 () Bool)

(assert (= bs!1542890 (and d!1950388 d!1950186)))

(assert (=> bs!1542890 (= lambda!340104 lambda!340080)))

(declare-fun bs!1542891 () Bool)

(assert (= bs!1542891 (and d!1950388 d!1950116)))

(assert (=> bs!1542891 (= lambda!340104 lambda!340047)))

(declare-fun bs!1542892 () Bool)

(assert (= bs!1542892 (and d!1950388 d!1950224)))

(assert (=> bs!1542892 (= lambda!340104 lambda!340087)))

(assert (=> d!1950388 (= (inv!83639 (h!71096 (t!378304 zl!343))) (forall!15271 (exprs!6041 (h!71096 (t!378304 zl!343))) lambda!340104))))

(declare-fun bs!1542893 () Bool)

(assert (= bs!1542893 d!1950388))

(declare-fun m!7049682 () Bool)

(assert (=> bs!1542893 m!7049682))

(assert (=> b!6221680 d!1950388))

(declare-fun b!6222043 () Bool)

(declare-fun e!3787442 () (InoxSet Context!11082))

(declare-fun e!3787445 () (InoxSet Context!11082))

(assert (=> b!6222043 (= e!3787442 e!3787445)))

(declare-fun c!1124293 () Bool)

(assert (=> b!6222043 (= c!1124293 ((_ is Union!16157) (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))))

(declare-fun b!6222044 () Bool)

(declare-fun e!3787443 () (InoxSet Context!11082))

(declare-fun call!522323 () (InoxSet Context!11082))

(assert (=> b!6222044 (= e!3787443 call!522323)))

(declare-fun b!6222045 () Bool)

(declare-fun call!522324 () (InoxSet Context!11082))

(declare-fun call!522326 () (InoxSet Context!11082))

(assert (=> b!6222045 (= e!3787445 ((_ map or) call!522324 call!522326))))

(declare-fun c!1124291 () Bool)

(declare-fun call!522322 () List!64770)

(declare-fun bm!522317 () Bool)

(declare-fun c!1124292 () Bool)

(assert (=> bm!522317 (= call!522326 (derivationStepZipperDown!1405 (ite c!1124293 (regTwo!32827 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))) (ite c!1124292 (regTwo!32826 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))) (ite c!1124291 (regOne!32826 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))) (reg!16486 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343))))))))))) (ite (or c!1124293 c!1124292) (ite (or c!1124179 c!1124178) lt!2344955 (Context!11083 call!522233)) (Context!11083 call!522322)) (h!71095 s!2326)))))

(declare-fun b!6222046 () Bool)

(declare-fun e!3787447 () (InoxSet Context!11082))

(declare-fun call!522327 () (InoxSet Context!11082))

(assert (=> b!6222046 (= e!3787447 ((_ map or) call!522324 call!522327))))

(declare-fun bm!522318 () Bool)

(declare-fun call!522325 () List!64770)

(assert (=> bm!522318 (= call!522324 (derivationStepZipperDown!1405 (ite c!1124293 (regOne!32827 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))) (regOne!32826 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343))))))))) (ite c!1124293 (ite (or c!1124179 c!1124178) lt!2344955 (Context!11083 call!522233)) (Context!11083 call!522325)) (h!71095 s!2326)))))

(declare-fun bm!522319 () Bool)

(assert (=> bm!522319 (= call!522327 call!522326)))

(declare-fun c!1124295 () Bool)

(declare-fun b!6222047 () Bool)

(assert (=> b!6222047 (= c!1124295 ((_ is Star!16157) (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))))

(declare-fun e!3787444 () (InoxSet Context!11082))

(assert (=> b!6222047 (= e!3787443 e!3787444)))

(declare-fun b!6222048 () Bool)

(assert (=> b!6222048 (= e!3787442 (store ((as const (Array Context!11082 Bool)) false) (ite (or c!1124179 c!1124178) lt!2344955 (Context!11083 call!522233)) true))))

(declare-fun b!6222042 () Bool)

(declare-fun e!3787446 () Bool)

(assert (=> b!6222042 (= c!1124292 e!3787446)))

(declare-fun res!2571587 () Bool)

(assert (=> b!6222042 (=> (not res!2571587) (not e!3787446))))

(assert (=> b!6222042 (= res!2571587 ((_ is Concat!25002) (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))))

(assert (=> b!6222042 (= e!3787445 e!3787447)))

(declare-fun c!1124294 () Bool)

(declare-fun d!1950394 () Bool)

(assert (=> d!1950394 (= c!1124294 (and ((_ is ElementMatch!16157) (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))) (= (c!1123967 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))) (h!71095 s!2326))))))

(assert (=> d!1950394 (= (derivationStepZipperDown!1405 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343))))))) (ite (or c!1124179 c!1124178) lt!2344955 (Context!11083 call!522233)) (h!71095 s!2326)) e!3787442)))

(declare-fun b!6222049 () Bool)

(assert (=> b!6222049 (= e!3787444 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522320 () Bool)

(assert (=> bm!522320 (= call!522322 call!522325)))

(declare-fun b!6222050 () Bool)

(assert (=> b!6222050 (= e!3787446 (nullable!6150 (regOne!32826 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343))))))))))))

(declare-fun b!6222051 () Bool)

(assert (=> b!6222051 (= e!3787444 call!522323)))

(declare-fun bm!522321 () Bool)

(assert (=> bm!522321 (= call!522323 call!522327)))

(declare-fun b!6222052 () Bool)

(assert (=> b!6222052 (= e!3787447 e!3787443)))

(assert (=> b!6222052 (= c!1124291 ((_ is Concat!25002) (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))))

(declare-fun bm!522322 () Bool)

(assert (=> bm!522322 (= call!522325 ($colon$colon!2026 (exprs!6041 (ite (or c!1124179 c!1124178) lt!2344955 (Context!11083 call!522233))) (ite (or c!1124292 c!1124291) (regTwo!32826 (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343)))))))) (ite c!1124179 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124178 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124177 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343))))))))))))

(assert (= (and d!1950394 c!1124294) b!6222048))

(assert (= (and d!1950394 (not c!1124294)) b!6222043))

(assert (= (and b!6222043 c!1124293) b!6222045))

(assert (= (and b!6222043 (not c!1124293)) b!6222042))

(assert (= (and b!6222042 res!2571587) b!6222050))

(assert (= (and b!6222042 c!1124292) b!6222046))

(assert (= (and b!6222042 (not c!1124292)) b!6222052))

(assert (= (and b!6222052 c!1124291) b!6222044))

(assert (= (and b!6222052 (not c!1124291)) b!6222047))

(assert (= (and b!6222047 c!1124295) b!6222051))

(assert (= (and b!6222047 (not c!1124295)) b!6222049))

(assert (= (or b!6222044 b!6222051) bm!522320))

(assert (= (or b!6222044 b!6222051) bm!522321))

(assert (= (or b!6222046 bm!522320) bm!522322))

(assert (= (or b!6222046 bm!522321) bm!522319))

(assert (= (or b!6222045 bm!522319) bm!522317))

(assert (= (or b!6222045 b!6222046) bm!522318))

(declare-fun m!7049698 () Bool)

(assert (=> bm!522322 m!7049698))

(declare-fun m!7049702 () Bool)

(assert (=> b!6222050 m!7049702))

(declare-fun m!7049706 () Bool)

(assert (=> bm!522317 m!7049706))

(declare-fun m!7049708 () Bool)

(assert (=> bm!522318 m!7049708))

(declare-fun m!7049710 () Bool)

(assert (=> b!6222048 m!7049710))

(assert (=> bm!522228 d!1950394))

(declare-fun d!1950404 () Bool)

(assert (=> d!1950404 (= (nullable!6150 (reg!16486 r!7292)) (nullableFct!2106 (reg!16486 r!7292)))))

(declare-fun bs!1542895 () Bool)

(assert (= bs!1542895 d!1950404))

(declare-fun m!7049712 () Bool)

(assert (=> bs!1542895 m!7049712))

(assert (=> b!6221072 d!1950404))

(declare-fun b!6222065 () Bool)

(declare-fun e!3787457 () (InoxSet Context!11082))

(declare-fun e!3787460 () (InoxSet Context!11082))

(assert (=> b!6222065 (= e!3787457 e!3787460)))

(declare-fun c!1124300 () Bool)

(assert (=> b!6222065 (= c!1124300 ((_ is Union!16157) (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))))))

(declare-fun b!6222066 () Bool)

(declare-fun e!3787458 () (InoxSet Context!11082))

(declare-fun call!522332 () (InoxSet Context!11082))

(assert (=> b!6222066 (= e!3787458 call!522332)))

(declare-fun b!6222067 () Bool)

(declare-fun call!522333 () (InoxSet Context!11082))

(declare-fun call!522335 () (InoxSet Context!11082))

(assert (=> b!6222067 (= e!3787460 ((_ map or) call!522333 call!522335))))

(declare-fun c!1124298 () Bool)

(declare-fun bm!522326 () Bool)

(declare-fun c!1124299 () Bool)

(declare-fun call!522331 () List!64770)

(assert (=> bm!522326 (= call!522335 (derivationStepZipperDown!1405 (ite c!1124300 (regTwo!32827 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))) (ite c!1124299 (regTwo!32826 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))) (ite c!1124298 (regOne!32826 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))) (reg!16486 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292)))))))) (ite (or c!1124300 c!1124299) (ite c!1124061 lt!2344958 (Context!11083 call!522201)) (Context!11083 call!522331)) (h!71095 s!2326)))))

(declare-fun b!6222068 () Bool)

(declare-fun e!3787462 () (InoxSet Context!11082))

(declare-fun call!522336 () (InoxSet Context!11082))

(assert (=> b!6222068 (= e!3787462 ((_ map or) call!522333 call!522336))))

(declare-fun bm!522327 () Bool)

(declare-fun call!522334 () List!64770)

(assert (=> bm!522327 (= call!522333 (derivationStepZipperDown!1405 (ite c!1124300 (regOne!32827 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))) (regOne!32826 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292)))))) (ite c!1124300 (ite c!1124061 lt!2344958 (Context!11083 call!522201)) (Context!11083 call!522334)) (h!71095 s!2326)))))

(declare-fun bm!522328 () Bool)

(assert (=> bm!522328 (= call!522336 call!522335)))

(declare-fun b!6222069 () Bool)

(declare-fun c!1124302 () Bool)

(assert (=> b!6222069 (= c!1124302 ((_ is Star!16157) (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))))))

(declare-fun e!3787459 () (InoxSet Context!11082))

(assert (=> b!6222069 (= e!3787458 e!3787459)))

(declare-fun b!6222070 () Bool)

(assert (=> b!6222070 (= e!3787457 (store ((as const (Array Context!11082 Bool)) false) (ite c!1124061 lt!2344958 (Context!11083 call!522201)) true))))

(declare-fun b!6222064 () Bool)

(declare-fun e!3787461 () Bool)

(assert (=> b!6222064 (= c!1124299 e!3787461)))

(declare-fun res!2571595 () Bool)

(assert (=> b!6222064 (=> (not res!2571595) (not e!3787461))))

(assert (=> b!6222064 (= res!2571595 ((_ is Concat!25002) (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))))))

(assert (=> b!6222064 (= e!3787460 e!3787462)))

(declare-fun c!1124301 () Bool)

(declare-fun d!1950406 () Bool)

(assert (=> d!1950406 (= c!1124301 (and ((_ is ElementMatch!16157) (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))) (= (c!1123967 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))) (h!71095 s!2326))))))

(assert (=> d!1950406 (= (derivationStepZipperDown!1405 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292)))) (ite c!1124061 lt!2344958 (Context!11083 call!522201)) (h!71095 s!2326)) e!3787457)))

(declare-fun b!6222071 () Bool)

(assert (=> b!6222071 (= e!3787459 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522329 () Bool)

(assert (=> bm!522329 (= call!522331 call!522334)))

(declare-fun b!6222072 () Bool)

(assert (=> b!6222072 (= e!3787461 (nullable!6150 (regOne!32826 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292)))))))))

(declare-fun b!6222073 () Bool)

(assert (=> b!6222073 (= e!3787459 call!522332)))

(declare-fun bm!522330 () Bool)

(assert (=> bm!522330 (= call!522332 call!522336)))

(declare-fun b!6222074 () Bool)

(assert (=> b!6222074 (= e!3787462 e!3787458)))

(assert (=> b!6222074 (= c!1124298 ((_ is Concat!25002) (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))))))

(declare-fun bm!522331 () Bool)

(assert (=> bm!522331 (= call!522334 ($colon$colon!2026 (exprs!6041 (ite c!1124061 lt!2344958 (Context!11083 call!522201))) (ite (or c!1124299 c!1124298) (regTwo!32826 (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))) (ite c!1124061 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292)))))))))

(assert (= (and d!1950406 c!1124301) b!6222070))

(assert (= (and d!1950406 (not c!1124301)) b!6222065))

(assert (= (and b!6222065 c!1124300) b!6222067))

(assert (= (and b!6222065 (not c!1124300)) b!6222064))

(assert (= (and b!6222064 res!2571595) b!6222072))

(assert (= (and b!6222064 c!1124299) b!6222068))

(assert (= (and b!6222064 (not c!1124299)) b!6222074))

(assert (= (and b!6222074 c!1124298) b!6222066))

(assert (= (and b!6222074 (not c!1124298)) b!6222069))

(assert (= (and b!6222069 c!1124302) b!6222073))

(assert (= (and b!6222069 (not c!1124302)) b!6222071))

(assert (= (or b!6222066 b!6222073) bm!522329))

(assert (= (or b!6222066 b!6222073) bm!522330))

(assert (= (or b!6222068 bm!522329) bm!522331))

(assert (= (or b!6222068 bm!522330) bm!522328))

(assert (= (or b!6222067 bm!522328) bm!522326))

(assert (= (or b!6222067 b!6222068) bm!522327))

(declare-fun m!7049720 () Bool)

(assert (=> bm!522331 m!7049720))

(declare-fun m!7049722 () Bool)

(assert (=> b!6222072 m!7049722))

(declare-fun m!7049724 () Bool)

(assert (=> bm!522326 m!7049724))

(declare-fun m!7049726 () Bool)

(assert (=> bm!522327 m!7049726))

(declare-fun m!7049728 () Bool)

(assert (=> b!6222070 m!7049728))

(assert (=> bm!522194 d!1950406))

(declare-fun d!1950412 () Bool)

(assert (=> d!1950412 true))

(declare-fun setRes!42267 () Bool)

(assert (=> d!1950412 setRes!42267))

(declare-fun condSetEmpty!42267 () Bool)

(declare-fun res!2571598 () (InoxSet Context!11082))

(assert (=> d!1950412 (= condSetEmpty!42267 (= res!2571598 ((as const (Array Context!11082 Bool)) false)))))

(assert (=> d!1950412 (= (choose!46228 lt!2344946 lambda!340023) res!2571598)))

(declare-fun setIsEmpty!42267 () Bool)

(assert (=> setIsEmpty!42267 setRes!42267))

(declare-fun e!3787466 () Bool)

(declare-fun tp!1735578 () Bool)

(declare-fun setNonEmpty!42267 () Bool)

(declare-fun setElem!42267 () Context!11082)

(assert (=> setNonEmpty!42267 (= setRes!42267 (and tp!1735578 (inv!83639 setElem!42267) e!3787466))))

(declare-fun setRest!42267 () (InoxSet Context!11082))

(assert (=> setNonEmpty!42267 (= res!2571598 ((_ map or) (store ((as const (Array Context!11082 Bool)) false) setElem!42267 true) setRest!42267))))

(declare-fun b!6222079 () Bool)

(declare-fun tp!1735577 () Bool)

(assert (=> b!6222079 (= e!3787466 tp!1735577)))

(assert (= (and d!1950412 condSetEmpty!42267) setIsEmpty!42267))

(assert (= (and d!1950412 (not condSetEmpty!42267)) setNonEmpty!42267))

(assert (= setNonEmpty!42267 b!6222079))

(declare-fun m!7049736 () Bool)

(assert (=> setNonEmpty!42267 m!7049736))

(assert (=> d!1950106 d!1950412))

(declare-fun d!1950420 () Bool)

(assert (=> d!1950420 (= (isConcat!1090 lt!2345003) ((_ is Concat!25002) lt!2345003))))

(assert (=> b!6221319 d!1950420))

(declare-fun bm!522332 () Bool)

(declare-fun c!1124304 () Bool)

(declare-fun call!522339 () Bool)

(assert (=> bm!522332 (= call!522339 (validRegex!7893 (ite c!1124304 (regTwo!32827 (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))) (regTwo!32826 (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))))))))

(declare-fun d!1950422 () Bool)

(declare-fun res!2571601 () Bool)

(declare-fun e!3787472 () Bool)

(assert (=> d!1950422 (=> res!2571601 e!3787472)))

(assert (=> d!1950422 (= res!2571601 ((_ is ElementMatch!16157) (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))))))

(assert (=> d!1950422 (= (validRegex!7893 (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))) e!3787472)))

(declare-fun b!6222080 () Bool)

(declare-fun e!3787471 () Bool)

(declare-fun e!3787468 () Bool)

(assert (=> b!6222080 (= e!3787471 e!3787468)))

(declare-fun res!2571602 () Bool)

(assert (=> b!6222080 (= res!2571602 (not (nullable!6150 (reg!16486 (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))))))))

(assert (=> b!6222080 (=> (not res!2571602) (not e!3787468))))

(declare-fun b!6222081 () Bool)

(declare-fun e!3787470 () Bool)

(assert (=> b!6222081 (= e!3787471 e!3787470)))

(assert (=> b!6222081 (= c!1124304 ((_ is Union!16157) (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))))))

(declare-fun b!6222082 () Bool)

(declare-fun res!2571603 () Bool)

(declare-fun e!3787469 () Bool)

(assert (=> b!6222082 (=> (not res!2571603) (not e!3787469))))

(declare-fun call!522337 () Bool)

(assert (=> b!6222082 (= res!2571603 call!522337)))

(assert (=> b!6222082 (= e!3787470 e!3787469)))

(declare-fun b!6222083 () Bool)

(declare-fun e!3787467 () Bool)

(declare-fun e!3787473 () Bool)

(assert (=> b!6222083 (= e!3787467 e!3787473)))

(declare-fun res!2571600 () Bool)

(assert (=> b!6222083 (=> (not res!2571600) (not e!3787473))))

(assert (=> b!6222083 (= res!2571600 call!522337)))

(declare-fun b!6222084 () Bool)

(assert (=> b!6222084 (= e!3787473 call!522339)))

(declare-fun b!6222085 () Bool)

(assert (=> b!6222085 (= e!3787469 call!522339)))

(declare-fun b!6222086 () Bool)

(declare-fun call!522338 () Bool)

(assert (=> b!6222086 (= e!3787468 call!522338)))

(declare-fun bm!522333 () Bool)

(assert (=> bm!522333 (= call!522337 call!522338)))

(declare-fun bm!522334 () Bool)

(declare-fun c!1124305 () Bool)

(assert (=> bm!522334 (= call!522338 (validRegex!7893 (ite c!1124305 (reg!16486 (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))) (ite c!1124304 (regOne!32827 (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))) (regOne!32826 (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292))))))))))

(declare-fun b!6222087 () Bool)

(declare-fun res!2571599 () Bool)

(assert (=> b!6222087 (=> res!2571599 e!3787467)))

(assert (=> b!6222087 (= res!2571599 (not ((_ is Concat!25002) (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292))))))))

(assert (=> b!6222087 (= e!3787470 e!3787467)))

(declare-fun b!6222088 () Bool)

(assert (=> b!6222088 (= e!3787472 e!3787471)))

(assert (=> b!6222088 (= c!1124305 ((_ is Star!16157) (ite c!1124020 (reg!16486 r!7292) (ite c!1124019 (regOne!32827 r!7292) (regOne!32826 r!7292)))))))

(assert (= (and d!1950422 (not res!2571601)) b!6222088))

(assert (= (and b!6222088 c!1124305) b!6222080))

(assert (= (and b!6222088 (not c!1124305)) b!6222081))

(assert (= (and b!6222080 res!2571602) b!6222086))

(assert (= (and b!6222081 c!1124304) b!6222082))

(assert (= (and b!6222081 (not c!1124304)) b!6222087))

(assert (= (and b!6222082 res!2571603) b!6222085))

(assert (= (and b!6222087 (not res!2571599)) b!6222083))

(assert (= (and b!6222083 res!2571600) b!6222084))

(assert (= (or b!6222085 b!6222084) bm!522332))

(assert (= (or b!6222082 b!6222083) bm!522333))

(assert (= (or b!6222086 bm!522333) bm!522334))

(declare-fun m!7049738 () Bool)

(assert (=> bm!522332 m!7049738))

(declare-fun m!7049740 () Bool)

(assert (=> b!6222080 m!7049740))

(declare-fun m!7049742 () Bool)

(assert (=> bm!522334 m!7049742))

(assert (=> bm!522165 d!1950422))

(declare-fun d!1950424 () Bool)

(assert (=> d!1950424 (= (flatMap!1662 lt!2344946 lambda!340042) (choose!46228 lt!2344946 lambda!340042))))

(declare-fun bs!1542905 () Bool)

(assert (= bs!1542905 d!1950424))

(declare-fun m!7049744 () Bool)

(assert (=> bs!1542905 m!7049744))

(assert (=> d!1950110 d!1950424))

(declare-fun d!1950426 () Bool)

(assert (=> d!1950426 (= (isEmpty!36657 (tail!11907 s!2326)) ((_ is Nil!64647) (tail!11907 s!2326)))))

(assert (=> b!6221607 d!1950426))

(assert (=> b!6221607 d!1950386))

(declare-fun bs!1542906 () Bool)

(declare-fun d!1950428 () Bool)

(assert (= bs!1542906 (and d!1950428 d!1950170)))

(declare-fun lambda!340108 () Int)

(assert (=> bs!1542906 (= lambda!340108 lambda!340066)))

(declare-fun bs!1542907 () Bool)

(assert (= bs!1542907 (and d!1950428 d!1950388)))

(assert (=> bs!1542907 (= lambda!340108 lambda!340104)))

(declare-fun bs!1542908 () Bool)

(assert (= bs!1542908 (and d!1950428 d!1950122)))

(assert (=> bs!1542908 (= lambda!340108 lambda!340050)))

(declare-fun bs!1542909 () Bool)

(assert (= bs!1542909 (and d!1950428 d!1950174)))

(assert (=> bs!1542909 (= lambda!340108 lambda!340077)))

(declare-fun bs!1542910 () Bool)

(assert (= bs!1542910 (and d!1950428 d!1950186)))

(assert (=> bs!1542910 (= lambda!340108 lambda!340080)))

(declare-fun bs!1542911 () Bool)

(assert (= bs!1542911 (and d!1950428 d!1950116)))

(assert (=> bs!1542911 (= lambda!340108 lambda!340047)))

(declare-fun bs!1542912 () Bool)

(assert (= bs!1542912 (and d!1950428 d!1950224)))

(assert (=> bs!1542912 (= lambda!340108 lambda!340087)))

(declare-fun b!6222093 () Bool)

(declare-fun e!3787476 () Regex!16157)

(assert (=> b!6222093 (= e!3787476 (Union!16157 (h!71094 (t!378302 (unfocusZipperList!1578 zl!343))) (generalisedUnion!2001 (t!378302 (t!378302 (unfocusZipperList!1578 zl!343))))))))

(declare-fun b!6222094 () Bool)

(declare-fun e!3787481 () Bool)

(declare-fun lt!2345080 () Regex!16157)

(assert (=> b!6222094 (= e!3787481 (isEmptyLang!1576 lt!2345080))))

(declare-fun e!3787480 () Bool)

(assert (=> d!1950428 e!3787480))

(declare-fun res!2571608 () Bool)

(assert (=> d!1950428 (=> (not res!2571608) (not e!3787480))))

(assert (=> d!1950428 (= res!2571608 (validRegex!7893 lt!2345080))))

(declare-fun e!3787478 () Regex!16157)

(assert (=> d!1950428 (= lt!2345080 e!3787478)))

(declare-fun c!1124306 () Bool)

(declare-fun e!3787477 () Bool)

(assert (=> d!1950428 (= c!1124306 e!3787477)))

(declare-fun res!2571609 () Bool)

(assert (=> d!1950428 (=> (not res!2571609) (not e!3787477))))

(assert (=> d!1950428 (= res!2571609 ((_ is Cons!64646) (t!378302 (unfocusZipperList!1578 zl!343))))))

(assert (=> d!1950428 (forall!15271 (t!378302 (unfocusZipperList!1578 zl!343)) lambda!340108)))

(assert (=> d!1950428 (= (generalisedUnion!2001 (t!378302 (unfocusZipperList!1578 zl!343))) lt!2345080)))

(declare-fun b!6222095 () Bool)

(assert (=> b!6222095 (= e!3787480 e!3787481)))

(declare-fun c!1124307 () Bool)

(assert (=> b!6222095 (= c!1124307 (isEmpty!36655 (t!378302 (unfocusZipperList!1578 zl!343))))))

(declare-fun b!6222096 () Bool)

(assert (=> b!6222096 (= e!3787477 (isEmpty!36655 (t!378302 (t!378302 (unfocusZipperList!1578 zl!343)))))))

(declare-fun b!6222097 () Bool)

(declare-fun e!3787479 () Bool)

(assert (=> b!6222097 (= e!3787479 (isUnion!1006 lt!2345080))))

(declare-fun b!6222098 () Bool)

(assert (=> b!6222098 (= e!3787476 EmptyLang!16157)))

(declare-fun b!6222099 () Bool)

(assert (=> b!6222099 (= e!3787481 e!3787479)))

(declare-fun c!1124308 () Bool)

(assert (=> b!6222099 (= c!1124308 (isEmpty!36655 (tail!11908 (t!378302 (unfocusZipperList!1578 zl!343)))))))

(declare-fun b!6222100 () Bool)

(assert (=> b!6222100 (= e!3787478 e!3787476)))

(declare-fun c!1124309 () Bool)

(assert (=> b!6222100 (= c!1124309 ((_ is Cons!64646) (t!378302 (unfocusZipperList!1578 zl!343))))))

(declare-fun b!6222101 () Bool)

(assert (=> b!6222101 (= e!3787478 (h!71094 (t!378302 (unfocusZipperList!1578 zl!343))))))

(declare-fun b!6222102 () Bool)

(assert (=> b!6222102 (= e!3787479 (= lt!2345080 (head!12823 (t!378302 (unfocusZipperList!1578 zl!343)))))))

(assert (= (and d!1950428 res!2571609) b!6222096))

(assert (= (and d!1950428 c!1124306) b!6222101))

(assert (= (and d!1950428 (not c!1124306)) b!6222100))

(assert (= (and b!6222100 c!1124309) b!6222093))

(assert (= (and b!6222100 (not c!1124309)) b!6222098))

(assert (= (and d!1950428 res!2571608) b!6222095))

(assert (= (and b!6222095 c!1124307) b!6222094))

(assert (= (and b!6222095 (not c!1124307)) b!6222099))

(assert (= (and b!6222099 c!1124308) b!6222102))

(assert (= (and b!6222099 (not c!1124308)) b!6222097))

(declare-fun m!7049746 () Bool)

(assert (=> b!6222102 m!7049746))

(declare-fun m!7049748 () Bool)

(assert (=> b!6222097 m!7049748))

(declare-fun m!7049750 () Bool)

(assert (=> b!6222096 m!7049750))

(declare-fun m!7049752 () Bool)

(assert (=> b!6222094 m!7049752))

(declare-fun m!7049754 () Bool)

(assert (=> b!6222093 m!7049754))

(declare-fun m!7049756 () Bool)

(assert (=> b!6222099 m!7049756))

(assert (=> b!6222099 m!7049756))

(declare-fun m!7049758 () Bool)

(assert (=> b!6222099 m!7049758))

(assert (=> b!6222095 m!7049220))

(declare-fun m!7049760 () Bool)

(assert (=> d!1950428 m!7049760))

(declare-fun m!7049762 () Bool)

(assert (=> d!1950428 m!7049762))

(assert (=> b!6221454 d!1950428))

(declare-fun d!1950430 () Bool)

(assert (=> d!1950430 (= (isUnion!1006 lt!2345046) ((_ is Union!16157) lt!2345046))))

(assert (=> b!6221458 d!1950430))

(declare-fun d!1950432 () Bool)

(assert (=> d!1950432 (= (isEmpty!36655 (tail!11908 (exprs!6041 (h!71096 zl!343)))) ((_ is Nil!64646) (tail!11908 (exprs!6041 (h!71096 zl!343)))))))

(assert (=> b!6221324 d!1950432))

(declare-fun d!1950434 () Bool)

(assert (=> d!1950434 (= (tail!11908 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))

(assert (=> b!6221324 d!1950434))

(declare-fun d!1950436 () Bool)

(assert (=> d!1950436 (= (nullable!6150 (h!71094 (exprs!6041 lt!2344947))) (nullableFct!2106 (h!71094 (exprs!6041 lt!2344947))))))

(declare-fun bs!1542913 () Bool)

(assert (= bs!1542913 d!1950436))

(declare-fun m!7049764 () Bool)

(assert (=> bs!1542913 m!7049764))

(assert (=> b!6221250 d!1950436))

(declare-fun d!1950438 () Bool)

(assert (=> d!1950438 (= (head!12823 (unfocusZipperList!1578 zl!343)) (h!71094 (unfocusZipperList!1578 zl!343)))))

(assert (=> b!6221463 d!1950438))

(declare-fun d!1950440 () Bool)

(declare-fun res!2571618 () Bool)

(declare-fun e!3787488 () Bool)

(assert (=> d!1950440 (=> res!2571618 e!3787488)))

(assert (=> d!1950440 (= res!2571618 ((_ is Nil!64648) lt!2345006))))

(assert (=> d!1950440 (= (noDuplicate!1995 lt!2345006) e!3787488)))

(declare-fun b!6222111 () Bool)

(declare-fun e!3787489 () Bool)

(assert (=> b!6222111 (= e!3787488 e!3787489)))

(declare-fun res!2571619 () Bool)

(assert (=> b!6222111 (=> (not res!2571619) (not e!3787489))))

(declare-fun contains!20098 (List!64772 Context!11082) Bool)

(assert (=> b!6222111 (= res!2571619 (not (contains!20098 (t!378304 lt!2345006) (h!71096 lt!2345006))))))

(declare-fun b!6222112 () Bool)

(assert (=> b!6222112 (= e!3787489 (noDuplicate!1995 (t!378304 lt!2345006)))))

(assert (= (and d!1950440 (not res!2571618)) b!6222111))

(assert (= (and b!6222111 res!2571619) b!6222112))

(declare-fun m!7049766 () Bool)

(assert (=> b!6222111 m!7049766))

(declare-fun m!7049768 () Bool)

(assert (=> b!6222112 m!7049768))

(assert (=> d!1950120 d!1950440))

(declare-fun d!1950442 () Bool)

(declare-fun e!3787498 () Bool)

(assert (=> d!1950442 e!3787498))

(declare-fun res!2571624 () Bool)

(assert (=> d!1950442 (=> (not res!2571624) (not e!3787498))))

(declare-fun res!2571625 () List!64772)

(assert (=> d!1950442 (= res!2571624 (noDuplicate!1995 res!2571625))))

(declare-fun e!3787497 () Bool)

(assert (=> d!1950442 e!3787497))

(assert (=> d!1950442 (= (choose!46229 z!1189) res!2571625)))

(declare-fun b!6222120 () Bool)

(declare-fun e!3787496 () Bool)

(declare-fun tp!1735584 () Bool)

(assert (=> b!6222120 (= e!3787496 tp!1735584)))

(declare-fun b!6222119 () Bool)

(declare-fun tp!1735583 () Bool)

(assert (=> b!6222119 (= e!3787497 (and (inv!83639 (h!71096 res!2571625)) e!3787496 tp!1735583))))

(declare-fun b!6222121 () Bool)

(assert (=> b!6222121 (= e!3787498 (= (content!12108 res!2571625) z!1189))))

(assert (= b!6222119 b!6222120))

(assert (= (and d!1950442 ((_ is Cons!64648) res!2571625)) b!6222119))

(assert (= (and d!1950442 res!2571624) b!6222121))

(declare-fun m!7049774 () Bool)

(assert (=> d!1950442 m!7049774))

(declare-fun m!7049776 () Bool)

(assert (=> b!6222119 m!7049776))

(declare-fun m!7049778 () Bool)

(assert (=> b!6222121 m!7049778))

(assert (=> d!1950120 d!1950442))

(declare-fun bm!522335 () Bool)

(declare-fun call!522342 () Bool)

(declare-fun c!1124310 () Bool)

(assert (=> bm!522335 (= call!522342 (validRegex!7893 (ite c!1124310 (regTwo!32827 lt!2344998) (regTwo!32826 lt!2344998))))))

(declare-fun d!1950448 () Bool)

(declare-fun res!2571628 () Bool)

(declare-fun e!3787504 () Bool)

(assert (=> d!1950448 (=> res!2571628 e!3787504)))

(assert (=> d!1950448 (= res!2571628 ((_ is ElementMatch!16157) lt!2344998))))

(assert (=> d!1950448 (= (validRegex!7893 lt!2344998) e!3787504)))

(declare-fun b!6222122 () Bool)

(declare-fun e!3787503 () Bool)

(declare-fun e!3787500 () Bool)

(assert (=> b!6222122 (= e!3787503 e!3787500)))

(declare-fun res!2571629 () Bool)

(assert (=> b!6222122 (= res!2571629 (not (nullable!6150 (reg!16486 lt!2344998))))))

(assert (=> b!6222122 (=> (not res!2571629) (not e!3787500))))

(declare-fun b!6222123 () Bool)

(declare-fun e!3787502 () Bool)

(assert (=> b!6222123 (= e!3787503 e!3787502)))

(assert (=> b!6222123 (= c!1124310 ((_ is Union!16157) lt!2344998))))

(declare-fun b!6222124 () Bool)

(declare-fun res!2571630 () Bool)

(declare-fun e!3787501 () Bool)

(assert (=> b!6222124 (=> (not res!2571630) (not e!3787501))))

(declare-fun call!522340 () Bool)

(assert (=> b!6222124 (= res!2571630 call!522340)))

(assert (=> b!6222124 (= e!3787502 e!3787501)))

(declare-fun b!6222125 () Bool)

(declare-fun e!3787499 () Bool)

(declare-fun e!3787505 () Bool)

(assert (=> b!6222125 (= e!3787499 e!3787505)))

(declare-fun res!2571627 () Bool)

(assert (=> b!6222125 (=> (not res!2571627) (not e!3787505))))

(assert (=> b!6222125 (= res!2571627 call!522340)))

(declare-fun b!6222128 () Bool)

(assert (=> b!6222128 (= e!3787505 call!522342)))

(declare-fun b!6222129 () Bool)

(assert (=> b!6222129 (= e!3787501 call!522342)))

(declare-fun b!6222130 () Bool)

(declare-fun call!522341 () Bool)

(assert (=> b!6222130 (= e!3787500 call!522341)))

(declare-fun bm!522336 () Bool)

(assert (=> bm!522336 (= call!522340 call!522341)))

(declare-fun c!1124311 () Bool)

(declare-fun bm!522337 () Bool)

(assert (=> bm!522337 (= call!522341 (validRegex!7893 (ite c!1124311 (reg!16486 lt!2344998) (ite c!1124310 (regOne!32827 lt!2344998) (regOne!32826 lt!2344998)))))))

(declare-fun b!6222131 () Bool)

(declare-fun res!2571626 () Bool)

(assert (=> b!6222131 (=> res!2571626 e!3787499)))

(assert (=> b!6222131 (= res!2571626 (not ((_ is Concat!25002) lt!2344998)))))

(assert (=> b!6222131 (= e!3787502 e!3787499)))

(declare-fun b!6222132 () Bool)

(assert (=> b!6222132 (= e!3787504 e!3787503)))

(assert (=> b!6222132 (= c!1124311 ((_ is Star!16157) lt!2344998))))

(assert (= (and d!1950448 (not res!2571628)) b!6222132))

(assert (= (and b!6222132 c!1124311) b!6222122))

(assert (= (and b!6222132 (not c!1124311)) b!6222123))

(assert (= (and b!6222122 res!2571629) b!6222130))

(assert (= (and b!6222123 c!1124310) b!6222124))

(assert (= (and b!6222123 (not c!1124310)) b!6222131))

(assert (= (and b!6222124 res!2571630) b!6222129))

(assert (= (and b!6222131 (not res!2571626)) b!6222125))

(assert (= (and b!6222125 res!2571627) b!6222128))

(assert (= (or b!6222129 b!6222128) bm!522335))

(assert (= (or b!6222124 b!6222125) bm!522336))

(assert (= (or b!6222130 bm!522336) bm!522337))

(declare-fun m!7049788 () Bool)

(assert (=> bm!522335 m!7049788))

(declare-fun m!7049792 () Bool)

(assert (=> b!6222122 m!7049792))

(declare-fun m!7049798 () Bool)

(assert (=> bm!522337 m!7049798))

(assert (=> d!1950112 d!1950448))

(assert (=> d!1950112 d!1950174))

(assert (=> d!1950112 d!1950186))

(declare-fun d!1950452 () Bool)

(assert (=> d!1950452 (= (isDefined!12751 lt!2345021) (not (isEmpty!36658 lt!2345021)))))

(declare-fun bs!1542923 () Bool)

(assert (= bs!1542923 d!1950452))

(declare-fun m!7049800 () Bool)

(assert (=> bs!1542923 m!7049800))

(assert (=> b!6221379 d!1950452))

(declare-fun d!1950454 () Bool)

(declare-fun lambda!340116 () Int)

(declare-fun exists!2491 ((InoxSet Context!11082) Int) Bool)

(assert (=> d!1950454 (= (nullableZipper!1931 lt!2344949) (exists!2491 lt!2344949 lambda!340116))))

(declare-fun bs!1542928 () Bool)

(assert (= bs!1542928 d!1950454))

(declare-fun m!7049822 () Bool)

(assert (=> bs!1542928 m!7049822))

(assert (=> b!6221200 d!1950454))

(declare-fun d!1950464 () Bool)

(declare-fun res!2571655 () Bool)

(declare-fun e!3787533 () Bool)

(assert (=> d!1950464 (=> res!2571655 e!3787533)))

(assert (=> d!1950464 (= res!2571655 ((_ is Nil!64646) lt!2345049))))

(assert (=> d!1950464 (= (forall!15271 lt!2345049 lambda!340080) e!3787533)))

(declare-fun b!6222171 () Bool)

(declare-fun e!3787534 () Bool)

(assert (=> b!6222171 (= e!3787533 e!3787534)))

(declare-fun res!2571656 () Bool)

(assert (=> b!6222171 (=> (not res!2571656) (not e!3787534))))

(declare-fun dynLambda!25509 (Int Regex!16157) Bool)

(assert (=> b!6222171 (= res!2571656 (dynLambda!25509 lambda!340080 (h!71094 lt!2345049)))))

(declare-fun b!6222172 () Bool)

(assert (=> b!6222172 (= e!3787534 (forall!15271 (t!378302 lt!2345049) lambda!340080))))

(assert (= (and d!1950464 (not res!2571655)) b!6222171))

(assert (= (and b!6222171 res!2571656) b!6222172))

(declare-fun b_lambda!236545 () Bool)

(assert (=> (not b_lambda!236545) (not b!6222171)))

(declare-fun m!7049842 () Bool)

(assert (=> b!6222171 m!7049842))

(declare-fun m!7049844 () Bool)

(assert (=> b!6222172 m!7049844))

(assert (=> d!1950186 d!1950464))

(declare-fun d!1950478 () Bool)

(declare-fun c!1124322 () Bool)

(declare-fun e!3787536 () Bool)

(assert (=> d!1950478 (= c!1124322 e!3787536)))

(declare-fun res!2571658 () Bool)

(assert (=> d!1950478 (=> (not res!2571658) (not e!3787536))))

(assert (=> d!1950478 (= res!2571658 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344955))))))))

(declare-fun e!3787537 () (InoxSet Context!11082))

(assert (=> d!1950478 (= (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 lt!2344955))) (h!71095 s!2326)) e!3787537)))

(declare-fun b!6222174 () Bool)

(declare-fun e!3787538 () (InoxSet Context!11082))

(assert (=> b!6222174 (= e!3787537 e!3787538)))

(declare-fun c!1124323 () Bool)

(assert (=> b!6222174 (= c!1124323 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344955))))))))

(declare-fun b!6222175 () Bool)

(assert (=> b!6222175 (= e!3787536 (nullable!6150 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344955)))))))))

(declare-fun bm!522343 () Bool)

(declare-fun call!522348 () (InoxSet Context!11082))

(assert (=> bm!522343 (= call!522348 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344955))))) (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344955)))))) (h!71095 s!2326)))))

(declare-fun b!6222176 () Bool)

(assert (=> b!6222176 (= e!3787538 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6222177 () Bool)

(assert (=> b!6222177 (= e!3787537 ((_ map or) call!522348 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344955)))))) (h!71095 s!2326))))))

(declare-fun b!6222178 () Bool)

(assert (=> b!6222178 (= e!3787538 call!522348)))

(assert (= (and d!1950478 res!2571658) b!6222175))

(assert (= (and d!1950478 c!1124322) b!6222177))

(assert (= (and d!1950478 (not c!1124322)) b!6222174))

(assert (= (and b!6222174 c!1124323) b!6222178))

(assert (= (and b!6222174 (not c!1124323)) b!6222176))

(assert (= (or b!6222177 b!6222178) bm!522343))

(declare-fun m!7049848 () Bool)

(assert (=> b!6222175 m!7049848))

(declare-fun m!7049854 () Bool)

(assert (=> bm!522343 m!7049854))

(declare-fun m!7049856 () Bool)

(assert (=> b!6222177 m!7049856))

(assert (=> b!6221617 d!1950478))

(declare-fun bm!522344 () Bool)

(declare-fun call!522351 () Bool)

(declare-fun c!1124324 () Bool)

(assert (=> bm!522344 (= call!522351 (validRegex!7893 (ite c!1124324 (regTwo!32827 lt!2345003) (regTwo!32826 lt!2345003))))))

(declare-fun d!1950482 () Bool)

(declare-fun res!2571663 () Bool)

(declare-fun e!3787546 () Bool)

(assert (=> d!1950482 (=> res!2571663 e!3787546)))

(assert (=> d!1950482 (= res!2571663 ((_ is ElementMatch!16157) lt!2345003))))

(assert (=> d!1950482 (= (validRegex!7893 lt!2345003) e!3787546)))

(declare-fun b!6222181 () Bool)

(declare-fun e!3787545 () Bool)

(declare-fun e!3787542 () Bool)

(assert (=> b!6222181 (= e!3787545 e!3787542)))

(declare-fun res!2571664 () Bool)

(assert (=> b!6222181 (= res!2571664 (not (nullable!6150 (reg!16486 lt!2345003))))))

(assert (=> b!6222181 (=> (not res!2571664) (not e!3787542))))

(declare-fun b!6222182 () Bool)

(declare-fun e!3787544 () Bool)

(assert (=> b!6222182 (= e!3787545 e!3787544)))

(assert (=> b!6222182 (= c!1124324 ((_ is Union!16157) lt!2345003))))

(declare-fun b!6222183 () Bool)

(declare-fun res!2571665 () Bool)

(declare-fun e!3787543 () Bool)

(assert (=> b!6222183 (=> (not res!2571665) (not e!3787543))))

(declare-fun call!522349 () Bool)

(assert (=> b!6222183 (= res!2571665 call!522349)))

(assert (=> b!6222183 (= e!3787544 e!3787543)))

(declare-fun b!6222184 () Bool)

(declare-fun e!3787541 () Bool)

(declare-fun e!3787547 () Bool)

(assert (=> b!6222184 (= e!3787541 e!3787547)))

(declare-fun res!2571662 () Bool)

(assert (=> b!6222184 (=> (not res!2571662) (not e!3787547))))

(assert (=> b!6222184 (= res!2571662 call!522349)))

(declare-fun b!6222185 () Bool)

(assert (=> b!6222185 (= e!3787547 call!522351)))

(declare-fun b!6222186 () Bool)

(assert (=> b!6222186 (= e!3787543 call!522351)))

(declare-fun b!6222187 () Bool)

(declare-fun call!522350 () Bool)

(assert (=> b!6222187 (= e!3787542 call!522350)))

(declare-fun bm!522345 () Bool)

(assert (=> bm!522345 (= call!522349 call!522350)))

(declare-fun c!1124325 () Bool)

(declare-fun bm!522346 () Bool)

(assert (=> bm!522346 (= call!522350 (validRegex!7893 (ite c!1124325 (reg!16486 lt!2345003) (ite c!1124324 (regOne!32827 lt!2345003) (regOne!32826 lt!2345003)))))))

(declare-fun b!6222188 () Bool)

(declare-fun res!2571661 () Bool)

(assert (=> b!6222188 (=> res!2571661 e!3787541)))

(assert (=> b!6222188 (= res!2571661 (not ((_ is Concat!25002) lt!2345003)))))

(assert (=> b!6222188 (= e!3787544 e!3787541)))

(declare-fun b!6222189 () Bool)

(assert (=> b!6222189 (= e!3787546 e!3787545)))

(assert (=> b!6222189 (= c!1124325 ((_ is Star!16157) lt!2345003))))

(assert (= (and d!1950482 (not res!2571663)) b!6222189))

(assert (= (and b!6222189 c!1124325) b!6222181))

(assert (= (and b!6222189 (not c!1124325)) b!6222182))

(assert (= (and b!6222181 res!2571664) b!6222187))

(assert (= (and b!6222182 c!1124324) b!6222183))

(assert (= (and b!6222182 (not c!1124324)) b!6222188))

(assert (= (and b!6222183 res!2571665) b!6222186))

(assert (= (and b!6222188 (not res!2571661)) b!6222184))

(assert (= (and b!6222184 res!2571662) b!6222185))

(assert (= (or b!6222186 b!6222185) bm!522344))

(assert (= (or b!6222183 b!6222184) bm!522345))

(assert (= (or b!6222187 bm!522345) bm!522346))

(declare-fun m!7049858 () Bool)

(assert (=> bm!522344 m!7049858))

(declare-fun m!7049860 () Bool)

(assert (=> b!6222181 m!7049860))

(declare-fun m!7049862 () Bool)

(assert (=> bm!522346 m!7049862))

(assert (=> d!1950116 d!1950482))

(declare-fun d!1950488 () Bool)

(declare-fun res!2571666 () Bool)

(declare-fun e!3787548 () Bool)

(assert (=> d!1950488 (=> res!2571666 e!3787548)))

(assert (=> d!1950488 (= res!2571666 ((_ is Nil!64646) (exprs!6041 (h!71096 zl!343))))))

(assert (=> d!1950488 (= (forall!15271 (exprs!6041 (h!71096 zl!343)) lambda!340047) e!3787548)))

(declare-fun b!6222190 () Bool)

(declare-fun e!3787549 () Bool)

(assert (=> b!6222190 (= e!3787548 e!3787549)))

(declare-fun res!2571667 () Bool)

(assert (=> b!6222190 (=> (not res!2571667) (not e!3787549))))

(assert (=> b!6222190 (= res!2571667 (dynLambda!25509 lambda!340047 (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6222191 () Bool)

(assert (=> b!6222191 (= e!3787549 (forall!15271 (t!378302 (exprs!6041 (h!71096 zl!343))) lambda!340047))))

(assert (= (and d!1950488 (not res!2571666)) b!6222190))

(assert (= (and b!6222190 res!2571667) b!6222191))

(declare-fun b_lambda!236549 () Bool)

(assert (=> (not b_lambda!236549) (not b!6222190)))

(declare-fun m!7049866 () Bool)

(assert (=> b!6222190 m!7049866))

(declare-fun m!7049868 () Bool)

(assert (=> b!6222191 m!7049868))

(assert (=> d!1950116 d!1950488))

(assert (=> d!1950132 d!1950452))

(declare-fun b!6222203 () Bool)

(declare-fun e!3787560 () Bool)

(declare-fun e!3787557 () Bool)

(assert (=> b!6222203 (= e!3787560 e!3787557)))

(declare-fun res!2571675 () Bool)

(assert (=> b!6222203 (=> res!2571675 e!3787557)))

(declare-fun call!522354 () Bool)

(assert (=> b!6222203 (= res!2571675 call!522354)))

(declare-fun b!6222204 () Bool)

(declare-fun e!3787563 () Bool)

(declare-fun lt!2345083 () Bool)

(assert (=> b!6222204 (= e!3787563 (= lt!2345083 call!522354))))

(declare-fun bm!522349 () Bool)

(assert (=> bm!522349 (= call!522354 (isEmpty!36657 Nil!64647))))

(declare-fun b!6222205 () Bool)

(declare-fun res!2571678 () Bool)

(declare-fun e!3787561 () Bool)

(assert (=> b!6222205 (=> res!2571678 e!3787561)))

(declare-fun e!3787558 () Bool)

(assert (=> b!6222205 (= res!2571678 e!3787558)))

(declare-fun res!2571673 () Bool)

(assert (=> b!6222205 (=> (not res!2571673) (not e!3787558))))

(assert (=> b!6222205 (= res!2571673 lt!2345083)))

(declare-fun b!6222206 () Bool)

(declare-fun res!2571677 () Bool)

(assert (=> b!6222206 (=> (not res!2571677) (not e!3787558))))

(assert (=> b!6222206 (= res!2571677 (isEmpty!36657 (tail!11907 Nil!64647)))))

(declare-fun b!6222207 () Bool)

(declare-fun e!3787559 () Bool)

(assert (=> b!6222207 (= e!3787563 e!3787559)))

(declare-fun c!1124331 () Bool)

(assert (=> b!6222207 (= c!1124331 ((_ is EmptyLang!16157) (regOne!32826 r!7292)))))

(declare-fun b!6222208 () Bool)

(assert (=> b!6222208 (= e!3787559 (not lt!2345083))))

(declare-fun b!6222209 () Bool)

(assert (=> b!6222209 (= e!3787557 (not (= (head!12822 Nil!64647) (c!1123967 (regOne!32826 r!7292)))))))

(declare-fun b!6222210 () Bool)

(declare-fun e!3787562 () Bool)

(assert (=> b!6222210 (= e!3787562 (nullable!6150 (regOne!32826 r!7292)))))

(declare-fun b!6222211 () Bool)

(assert (=> b!6222211 (= e!3787562 (matchR!8340 (derivativeStep!4870 (regOne!32826 r!7292) (head!12822 Nil!64647)) (tail!11907 Nil!64647)))))

(declare-fun b!6222212 () Bool)

(declare-fun res!2571676 () Bool)

(assert (=> b!6222212 (=> (not res!2571676) (not e!3787558))))

(assert (=> b!6222212 (= res!2571676 (not call!522354))))

(declare-fun b!6222213 () Bool)

(assert (=> b!6222213 (= e!3787561 e!3787560)))

(declare-fun res!2571672 () Bool)

(assert (=> b!6222213 (=> (not res!2571672) (not e!3787560))))

(assert (=> b!6222213 (= res!2571672 (not lt!2345083))))

(declare-fun d!1950492 () Bool)

(assert (=> d!1950492 e!3787563))

(declare-fun c!1124332 () Bool)

(assert (=> d!1950492 (= c!1124332 ((_ is EmptyExpr!16157) (regOne!32826 r!7292)))))

(assert (=> d!1950492 (= lt!2345083 e!3787562)))

(declare-fun c!1124330 () Bool)

(assert (=> d!1950492 (= c!1124330 (isEmpty!36657 Nil!64647))))

(assert (=> d!1950492 (validRegex!7893 (regOne!32826 r!7292))))

(assert (=> d!1950492 (= (matchR!8340 (regOne!32826 r!7292) Nil!64647) lt!2345083)))

(declare-fun b!6222214 () Bool)

(declare-fun res!2571674 () Bool)

(assert (=> b!6222214 (=> res!2571674 e!3787561)))

(assert (=> b!6222214 (= res!2571674 (not ((_ is ElementMatch!16157) (regOne!32826 r!7292))))))

(assert (=> b!6222214 (= e!3787559 e!3787561)))

(declare-fun b!6222215 () Bool)

(declare-fun res!2571671 () Bool)

(assert (=> b!6222215 (=> res!2571671 e!3787557)))

(assert (=> b!6222215 (= res!2571671 (not (isEmpty!36657 (tail!11907 Nil!64647))))))

(declare-fun b!6222216 () Bool)

(assert (=> b!6222216 (= e!3787558 (= (head!12822 Nil!64647) (c!1123967 (regOne!32826 r!7292))))))

(assert (= (and d!1950492 c!1124330) b!6222210))

(assert (= (and d!1950492 (not c!1124330)) b!6222211))

(assert (= (and d!1950492 c!1124332) b!6222204))

(assert (= (and d!1950492 (not c!1124332)) b!6222207))

(assert (= (and b!6222207 c!1124331) b!6222208))

(assert (= (and b!6222207 (not c!1124331)) b!6222214))

(assert (= (and b!6222214 (not res!2571674)) b!6222205))

(assert (= (and b!6222205 res!2571673) b!6222212))

(assert (= (and b!6222212 res!2571676) b!6222206))

(assert (= (and b!6222206 res!2571677) b!6222216))

(assert (= (and b!6222205 (not res!2571678)) b!6222213))

(assert (= (and b!6222213 res!2571672) b!6222203))

(assert (= (and b!6222203 (not res!2571675)) b!6222215))

(assert (= (and b!6222215 (not res!2571671)) b!6222209))

(assert (= (or b!6222204 b!6222203 b!6222212) bm!522349))

(assert (=> b!6222210 m!7049664))

(declare-fun m!7049870 () Bool)

(assert (=> bm!522349 m!7049870))

(declare-fun m!7049872 () Bool)

(assert (=> b!6222209 m!7049872))

(assert (=> b!6222216 m!7049872))

(assert (=> d!1950492 m!7049870))

(assert (=> d!1950492 m!7049144))

(assert (=> b!6222211 m!7049872))

(assert (=> b!6222211 m!7049872))

(declare-fun m!7049874 () Bool)

(assert (=> b!6222211 m!7049874))

(declare-fun m!7049876 () Bool)

(assert (=> b!6222211 m!7049876))

(assert (=> b!6222211 m!7049874))

(assert (=> b!6222211 m!7049876))

(declare-fun m!7049878 () Bool)

(assert (=> b!6222211 m!7049878))

(assert (=> b!6222215 m!7049876))

(assert (=> b!6222215 m!7049876))

(declare-fun m!7049880 () Bool)

(assert (=> b!6222215 m!7049880))

(assert (=> b!6222206 m!7049876))

(assert (=> b!6222206 m!7049876))

(assert (=> b!6222206 m!7049880))

(assert (=> d!1950132 d!1950492))

(declare-fun bm!522350 () Bool)

(declare-fun call!522357 () Bool)

(declare-fun c!1124333 () Bool)

(assert (=> bm!522350 (= call!522357 (validRegex!7893 (ite c!1124333 (regTwo!32827 (regOne!32826 r!7292)) (regTwo!32826 (regOne!32826 r!7292)))))))

(declare-fun d!1950494 () Bool)

(declare-fun res!2571681 () Bool)

(declare-fun e!3787569 () Bool)

(assert (=> d!1950494 (=> res!2571681 e!3787569)))

(assert (=> d!1950494 (= res!2571681 ((_ is ElementMatch!16157) (regOne!32826 r!7292)))))

(assert (=> d!1950494 (= (validRegex!7893 (regOne!32826 r!7292)) e!3787569)))

(declare-fun b!6222217 () Bool)

(declare-fun e!3787568 () Bool)

(declare-fun e!3787565 () Bool)

(assert (=> b!6222217 (= e!3787568 e!3787565)))

(declare-fun res!2571682 () Bool)

(assert (=> b!6222217 (= res!2571682 (not (nullable!6150 (reg!16486 (regOne!32826 r!7292)))))))

(assert (=> b!6222217 (=> (not res!2571682) (not e!3787565))))

(declare-fun b!6222218 () Bool)

(declare-fun e!3787567 () Bool)

(assert (=> b!6222218 (= e!3787568 e!3787567)))

(assert (=> b!6222218 (= c!1124333 ((_ is Union!16157) (regOne!32826 r!7292)))))

(declare-fun b!6222219 () Bool)

(declare-fun res!2571683 () Bool)

(declare-fun e!3787566 () Bool)

(assert (=> b!6222219 (=> (not res!2571683) (not e!3787566))))

(declare-fun call!522355 () Bool)

(assert (=> b!6222219 (= res!2571683 call!522355)))

(assert (=> b!6222219 (= e!3787567 e!3787566)))

(declare-fun b!6222220 () Bool)

(declare-fun e!3787564 () Bool)

(declare-fun e!3787570 () Bool)

(assert (=> b!6222220 (= e!3787564 e!3787570)))

(declare-fun res!2571680 () Bool)

(assert (=> b!6222220 (=> (not res!2571680) (not e!3787570))))

(assert (=> b!6222220 (= res!2571680 call!522355)))

(declare-fun b!6222221 () Bool)

(assert (=> b!6222221 (= e!3787570 call!522357)))

(declare-fun b!6222222 () Bool)

(assert (=> b!6222222 (= e!3787566 call!522357)))

(declare-fun b!6222223 () Bool)

(declare-fun call!522356 () Bool)

(assert (=> b!6222223 (= e!3787565 call!522356)))

(declare-fun bm!522351 () Bool)

(assert (=> bm!522351 (= call!522355 call!522356)))

(declare-fun c!1124334 () Bool)

(declare-fun bm!522352 () Bool)

(assert (=> bm!522352 (= call!522356 (validRegex!7893 (ite c!1124334 (reg!16486 (regOne!32826 r!7292)) (ite c!1124333 (regOne!32827 (regOne!32826 r!7292)) (regOne!32826 (regOne!32826 r!7292))))))))

(declare-fun b!6222224 () Bool)

(declare-fun res!2571679 () Bool)

(assert (=> b!6222224 (=> res!2571679 e!3787564)))

(assert (=> b!6222224 (= res!2571679 (not ((_ is Concat!25002) (regOne!32826 r!7292))))))

(assert (=> b!6222224 (= e!3787567 e!3787564)))

(declare-fun b!6222225 () Bool)

(assert (=> b!6222225 (= e!3787569 e!3787568)))

(assert (=> b!6222225 (= c!1124334 ((_ is Star!16157) (regOne!32826 r!7292)))))

(assert (= (and d!1950494 (not res!2571681)) b!6222225))

(assert (= (and b!6222225 c!1124334) b!6222217))

(assert (= (and b!6222225 (not c!1124334)) b!6222218))

(assert (= (and b!6222217 res!2571682) b!6222223))

(assert (= (and b!6222218 c!1124333) b!6222219))

(assert (= (and b!6222218 (not c!1124333)) b!6222224))

(assert (= (and b!6222219 res!2571683) b!6222222))

(assert (= (and b!6222224 (not res!2571679)) b!6222220))

(assert (= (and b!6222220 res!2571680) b!6222221))

(assert (= (or b!6222222 b!6222221) bm!522350))

(assert (= (or b!6222219 b!6222220) bm!522351))

(assert (= (or b!6222223 bm!522351) bm!522352))

(declare-fun m!7049882 () Bool)

(assert (=> bm!522350 m!7049882))

(declare-fun m!7049884 () Bool)

(assert (=> b!6222217 m!7049884))

(declare-fun m!7049886 () Bool)

(assert (=> bm!522352 m!7049886))

(assert (=> d!1950132 d!1950494))

(assert (=> d!1950156 d!1950132))

(assert (=> d!1950156 d!1950494))

(assert (=> d!1950156 d!1950168))

(declare-fun d!1950496 () Bool)

(assert (=> d!1950496 (= (Exists!3227 lambda!340056) (choose!46231 lambda!340056))))

(declare-fun bs!1542947 () Bool)

(assert (= bs!1542947 d!1950496))

(declare-fun m!7049888 () Bool)

(assert (=> bs!1542947 m!7049888))

(assert (=> d!1950156 d!1950496))

(declare-fun bs!1542968 () Bool)

(declare-fun d!1950498 () Bool)

(assert (= bs!1542968 (and d!1950498 b!6220911)))

(declare-fun lambda!340124 () Int)

(assert (=> bs!1542968 (= lambda!340124 lambda!340021)))

(declare-fun bs!1542969 () Bool)

(assert (= bs!1542969 (and d!1950498 d!1950156)))

(assert (=> bs!1542969 (= lambda!340124 lambda!340056)))

(assert (=> bs!1542968 (not (= lambda!340124 lambda!340022))))

(declare-fun bs!1542970 () Bool)

(assert (= bs!1542970 (and d!1950498 b!6221560)))

(assert (=> bs!1542970 (not (= lambda!340124 lambda!340086))))

(declare-fun bs!1542971 () Bool)

(assert (= bs!1542971 (and d!1950498 d!1950164)))

(assert (=> bs!1542971 (not (= lambda!340124 lambda!340065))))

(assert (=> bs!1542971 (= lambda!340124 lambda!340064)))

(declare-fun bs!1542972 () Bool)

(assert (= bs!1542972 (and d!1950498 b!6221566)))

(assert (=> bs!1542972 (not (= lambda!340124 lambda!340085))))

(assert (=> d!1950498 true))

(assert (=> d!1950498 true))

(assert (=> d!1950498 true))

(assert (=> d!1950498 (= (isDefined!12751 (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) Nil!64647 s!2326 s!2326)) (Exists!3227 lambda!340124))))

(assert (=> d!1950498 true))

(declare-fun _$89!2395 () Unit!157959)

(assert (=> d!1950498 (= (choose!46232 (regOne!32826 r!7292) (regTwo!32826 r!7292) s!2326) _$89!2395)))

(declare-fun bs!1542973 () Bool)

(assert (= bs!1542973 d!1950498))

(assert (=> bs!1542973 m!7048766))

(assert (=> bs!1542973 m!7048766))

(assert (=> bs!1542973 m!7048768))

(declare-fun m!7049930 () Bool)

(assert (=> bs!1542973 m!7049930))

(assert (=> d!1950156 d!1950498))

(declare-fun d!1950516 () Bool)

(declare-fun c!1124345 () Bool)

(declare-fun e!3787586 () Bool)

(assert (=> d!1950516 (= c!1124345 e!3787586)))

(declare-fun res!2571691 () Bool)

(assert (=> d!1950516 (=> (not res!2571691) (not e!3787586))))

(assert (=> d!1950516 (= res!2571691 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344958))))))))

(declare-fun e!3787587 () (InoxSet Context!11082))

(assert (=> d!1950516 (= (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 lt!2344958))) (h!71095 s!2326)) e!3787587)))

(declare-fun b!6222253 () Bool)

(declare-fun e!3787588 () (InoxSet Context!11082))

(assert (=> b!6222253 (= e!3787587 e!3787588)))

(declare-fun c!1124346 () Bool)

(assert (=> b!6222253 (= c!1124346 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344958))))))))

(declare-fun b!6222254 () Bool)

(assert (=> b!6222254 (= e!3787586 (nullable!6150 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344958)))))))))

(declare-fun bm!522359 () Bool)

(declare-fun call!522364 () (InoxSet Context!11082))

(assert (=> bm!522359 (= call!522364 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344958))))) (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344958)))))) (h!71095 s!2326)))))

(declare-fun b!6222255 () Bool)

(assert (=> b!6222255 (= e!3787588 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6222256 () Bool)

(assert (=> b!6222256 (= e!3787587 ((_ map or) call!522364 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344958)))))) (h!71095 s!2326))))))

(declare-fun b!6222257 () Bool)

(assert (=> b!6222257 (= e!3787588 call!522364)))

(assert (= (and d!1950516 res!2571691) b!6222254))

(assert (= (and d!1950516 c!1124345) b!6222256))

(assert (= (and d!1950516 (not c!1124345)) b!6222253))

(assert (= (and b!6222253 c!1124346) b!6222257))

(assert (= (and b!6222253 (not c!1124346)) b!6222255))

(assert (= (or b!6222256 b!6222257) bm!522359))

(declare-fun m!7049934 () Bool)

(assert (=> b!6222254 m!7049934))

(declare-fun m!7049936 () Bool)

(assert (=> bm!522359 m!7049936))

(declare-fun m!7049938 () Bool)

(assert (=> b!6222256 m!7049938))

(assert (=> b!6221243 d!1950516))

(declare-fun d!1950520 () Bool)

(assert (=> d!1950520 (= (isEmpty!36657 s!2326) ((_ is Nil!64647) s!2326))))

(assert (=> d!1950196 d!1950520))

(assert (=> d!1950196 d!1950070))

(declare-fun bs!1542982 () Bool)

(declare-fun d!1950522 () Bool)

(assert (= bs!1542982 (and d!1950522 d!1950454)))

(declare-fun lambda!340126 () Int)

(assert (=> bs!1542982 (= lambda!340126 lambda!340116)))

(assert (=> d!1950522 (= (nullableZipper!1931 ((_ map or) lt!2344969 lt!2344967)) (exists!2491 ((_ map or) lt!2344969 lt!2344967) lambda!340126))))

(declare-fun bs!1542983 () Bool)

(assert (= bs!1542983 d!1950522))

(declare-fun m!7049942 () Bool)

(assert (=> bs!1542983 m!7049942))

(assert (=> b!6221645 d!1950522))

(declare-fun d!1950526 () Bool)

(declare-fun c!1124350 () Bool)

(assert (=> d!1950526 (= c!1124350 (isEmpty!36657 (tail!11907 (t!378303 s!2326))))))

(declare-fun e!3787596 () Bool)

(assert (=> d!1950526 (= (matchZipper!2169 (derivationStepZipper!2123 lt!2344960 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))) e!3787596)))

(declare-fun b!6222272 () Bool)

(assert (=> b!6222272 (= e!3787596 (nullableZipper!1931 (derivationStepZipper!2123 lt!2344960 (head!12822 (t!378303 s!2326)))))))

(declare-fun b!6222273 () Bool)

(assert (=> b!6222273 (= e!3787596 (matchZipper!2169 (derivationStepZipper!2123 (derivationStepZipper!2123 lt!2344960 (head!12822 (t!378303 s!2326))) (head!12822 (tail!11907 (t!378303 s!2326)))) (tail!11907 (tail!11907 (t!378303 s!2326)))))))

(assert (= (and d!1950526 c!1124350) b!6222272))

(assert (= (and d!1950526 (not c!1124350)) b!6222273))

(assert (=> d!1950526 m!7049012))

(declare-fun m!7049944 () Bool)

(assert (=> d!1950526 m!7049944))

(assert (=> b!6222272 m!7049314))

(declare-fun m!7049946 () Bool)

(assert (=> b!6222272 m!7049946))

(assert (=> b!6222273 m!7049012))

(declare-fun m!7049948 () Bool)

(assert (=> b!6222273 m!7049948))

(assert (=> b!6222273 m!7049314))

(assert (=> b!6222273 m!7049948))

(declare-fun m!7049950 () Bool)

(assert (=> b!6222273 m!7049950))

(assert (=> b!6222273 m!7049012))

(declare-fun m!7049952 () Bool)

(assert (=> b!6222273 m!7049952))

(assert (=> b!6222273 m!7049950))

(assert (=> b!6222273 m!7049952))

(declare-fun m!7049954 () Bool)

(assert (=> b!6222273 m!7049954))

(assert (=> b!6221640 d!1950526))

(declare-fun bs!1542984 () Bool)

(declare-fun d!1950528 () Bool)

(assert (= bs!1542984 (and d!1950528 b!6220909)))

(declare-fun lambda!340127 () Int)

(assert (=> bs!1542984 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340127 lambda!340023))))

(declare-fun bs!1542985 () Bool)

(assert (= bs!1542985 (and d!1950528 d!1950110)))

(assert (=> bs!1542985 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340127 lambda!340042))))

(assert (=> d!1950528 true))

(assert (=> d!1950528 (= (derivationStepZipper!2123 lt!2344960 (head!12822 (t!378303 s!2326))) (flatMap!1662 lt!2344960 lambda!340127))))

(declare-fun bs!1542986 () Bool)

(assert (= bs!1542986 d!1950528))

(declare-fun m!7049966 () Bool)

(assert (=> bs!1542986 m!7049966))

(assert (=> b!6221640 d!1950528))

(declare-fun d!1950530 () Bool)

(assert (=> d!1950530 (= (head!12822 (t!378303 s!2326)) (h!71095 (t!378303 s!2326)))))

(assert (=> b!6221640 d!1950530))

(declare-fun d!1950532 () Bool)

(assert (=> d!1950532 (= (tail!11907 (t!378303 s!2326)) (t!378303 (t!378303 s!2326)))))

(assert (=> b!6221640 d!1950532))

(declare-fun d!1950534 () Bool)

(assert (=> d!1950534 (= (nullable!6150 r!7292) (nullableFct!2106 r!7292))))

(declare-fun bs!1542987 () Bool)

(assert (= bs!1542987 d!1950534))

(declare-fun m!7049972 () Bool)

(assert (=> bs!1542987 m!7049972))

(assert (=> b!6221602 d!1950534))

(declare-fun b!6222275 () Bool)

(declare-fun e!3787597 () (InoxSet Context!11082))

(declare-fun e!3787600 () (InoxSet Context!11082))

(assert (=> b!6222275 (= e!3787597 e!3787600)))

(declare-fun c!1124353 () Bool)

(assert (=> b!6222275 (= c!1124353 ((_ is Union!16157) (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))))))

(declare-fun b!6222276 () Bool)

(declare-fun e!3787598 () (InoxSet Context!11082))

(declare-fun call!522367 () (InoxSet Context!11082))

(assert (=> b!6222276 (= e!3787598 call!522367)))

(declare-fun b!6222277 () Bool)

(declare-fun call!522368 () (InoxSet Context!11082))

(declare-fun call!522370 () (InoxSet Context!11082))

(assert (=> b!6222277 (= e!3787600 ((_ map or) call!522368 call!522370))))

(declare-fun call!522366 () List!64770)

(declare-fun bm!522361 () Bool)

(declare-fun c!1124352 () Bool)

(declare-fun c!1124351 () Bool)

(assert (=> bm!522361 (= call!522370 (derivationStepZipperDown!1405 (ite c!1124353 (regTwo!32827 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (ite c!1124352 (regTwo!32826 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (ite c!1124351 (regOne!32826 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (reg!16486 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))))) (ite (or c!1124353 c!1124352) (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (Context!11083 call!522366)) (h!71095 s!2326)))))

(declare-fun b!6222278 () Bool)

(declare-fun e!3787602 () (InoxSet Context!11082))

(declare-fun call!522371 () (InoxSet Context!11082))

(assert (=> b!6222278 (= e!3787602 ((_ map or) call!522368 call!522371))))

(declare-fun call!522369 () List!64770)

(declare-fun bm!522362 () Bool)

(assert (=> bm!522362 (= call!522368 (derivationStepZipperDown!1405 (ite c!1124353 (regOne!32827 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (regOne!32826 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))) (ite c!1124353 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (Context!11083 call!522369)) (h!71095 s!2326)))))

(declare-fun bm!522363 () Bool)

(assert (=> bm!522363 (= call!522371 call!522370)))

(declare-fun b!6222279 () Bool)

(declare-fun c!1124355 () Bool)

(assert (=> b!6222279 (= c!1124355 ((_ is Star!16157) (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))))))

(declare-fun e!3787599 () (InoxSet Context!11082))

(assert (=> b!6222279 (= e!3787598 e!3787599)))

(declare-fun b!6222280 () Bool)

(assert (=> b!6222280 (= e!3787597 (store ((as const (Array Context!11082 Bool)) false) (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) true))))

(declare-fun b!6222274 () Bool)

(declare-fun e!3787601 () Bool)

(assert (=> b!6222274 (= c!1124352 e!3787601)))

(declare-fun res!2571700 () Bool)

(assert (=> b!6222274 (=> (not res!2571700) (not e!3787601))))

(assert (=> b!6222274 (= res!2571700 ((_ is Concat!25002) (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))))))

(assert (=> b!6222274 (= e!3787600 e!3787602)))

(declare-fun d!1950538 () Bool)

(declare-fun c!1124354 () Bool)

(assert (=> d!1950538 (= c!1124354 (and ((_ is ElementMatch!16157) (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (= (c!1123967 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (h!71095 s!2326))))))

(assert (=> d!1950538 (= (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))) (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (h!71095 s!2326)) e!3787597)))

(declare-fun b!6222281 () Bool)

(assert (=> b!6222281 (= e!3787599 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522364 () Bool)

(assert (=> bm!522364 (= call!522366 call!522369)))

(declare-fun b!6222282 () Bool)

(assert (=> b!6222282 (= e!3787601 (nullable!6150 (regOne!32826 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))))))

(declare-fun b!6222283 () Bool)

(assert (=> b!6222283 (= e!3787599 call!522367)))

(declare-fun bm!522365 () Bool)

(assert (=> bm!522365 (= call!522367 call!522371)))

(declare-fun b!6222284 () Bool)

(assert (=> b!6222284 (= e!3787602 e!3787598)))

(assert (=> b!6222284 (= c!1124351 ((_ is Concat!25002) (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))))))

(declare-fun bm!522366 () Bool)

(assert (=> bm!522366 (= call!522369 ($colon$colon!2026 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))) (ite (or c!1124352 c!1124351) (regTwo!32826 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))))))

(assert (= (and d!1950538 c!1124354) b!6222280))

(assert (= (and d!1950538 (not c!1124354)) b!6222275))

(assert (= (and b!6222275 c!1124353) b!6222277))

(assert (= (and b!6222275 (not c!1124353)) b!6222274))

(assert (= (and b!6222274 res!2571700) b!6222282))

(assert (= (and b!6222274 c!1124352) b!6222278))

(assert (= (and b!6222274 (not c!1124352)) b!6222284))

(assert (= (and b!6222284 c!1124351) b!6222276))

(assert (= (and b!6222284 (not c!1124351)) b!6222279))

(assert (= (and b!6222279 c!1124355) b!6222283))

(assert (= (and b!6222279 (not c!1124355)) b!6222281))

(assert (= (or b!6222276 b!6222283) bm!522364))

(assert (= (or b!6222276 b!6222283) bm!522365))

(assert (= (or b!6222278 bm!522364) bm!522366))

(assert (= (or b!6222278 bm!522365) bm!522363))

(assert (= (or b!6222277 bm!522363) bm!522361))

(assert (= (or b!6222277 b!6222278) bm!522362))

(declare-fun m!7049974 () Bool)

(assert (=> bm!522366 m!7049974))

(declare-fun m!7049976 () Bool)

(assert (=> b!6222282 m!7049976))

(declare-fun m!7049978 () Bool)

(assert (=> bm!522361 m!7049978))

(declare-fun m!7049980 () Bool)

(assert (=> bm!522362 m!7049980))

(declare-fun m!7049982 () Bool)

(assert (=> b!6222280 m!7049982))

(assert (=> bm!522225 d!1950538))

(declare-fun bm!522367 () Bool)

(declare-fun call!522374 () Bool)

(declare-fun c!1124356 () Bool)

(assert (=> bm!522367 (= call!522374 (validRegex!7893 (ite c!1124356 (regTwo!32827 (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))) (regTwo!32826 (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))))))))

(declare-fun d!1950540 () Bool)

(declare-fun res!2571703 () Bool)

(declare-fun e!3787608 () Bool)

(assert (=> d!1950540 (=> res!2571703 e!3787608)))

(assert (=> d!1950540 (= res!2571703 ((_ is ElementMatch!16157) (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))))))

(assert (=> d!1950540 (= (validRegex!7893 (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))) e!3787608)))

(declare-fun b!6222285 () Bool)

(declare-fun e!3787607 () Bool)

(declare-fun e!3787604 () Bool)

(assert (=> b!6222285 (= e!3787607 e!3787604)))

(declare-fun res!2571704 () Bool)

(assert (=> b!6222285 (= res!2571704 (not (nullable!6150 (reg!16486 (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))))))))

(assert (=> b!6222285 (=> (not res!2571704) (not e!3787604))))

(declare-fun b!6222286 () Bool)

(declare-fun e!3787606 () Bool)

(assert (=> b!6222286 (= e!3787607 e!3787606)))

(assert (=> b!6222286 (= c!1124356 ((_ is Union!16157) (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))))))

(declare-fun b!6222287 () Bool)

(declare-fun res!2571705 () Bool)

(declare-fun e!3787605 () Bool)

(assert (=> b!6222287 (=> (not res!2571705) (not e!3787605))))

(declare-fun call!522372 () Bool)

(assert (=> b!6222287 (= res!2571705 call!522372)))

(assert (=> b!6222287 (= e!3787606 e!3787605)))

(declare-fun b!6222288 () Bool)

(declare-fun e!3787603 () Bool)

(declare-fun e!3787609 () Bool)

(assert (=> b!6222288 (= e!3787603 e!3787609)))

(declare-fun res!2571702 () Bool)

(assert (=> b!6222288 (=> (not res!2571702) (not e!3787609))))

(assert (=> b!6222288 (= res!2571702 call!522372)))

(declare-fun b!6222289 () Bool)

(assert (=> b!6222289 (= e!3787609 call!522374)))

(declare-fun b!6222290 () Bool)

(assert (=> b!6222290 (= e!3787605 call!522374)))

(declare-fun b!6222291 () Bool)

(declare-fun call!522373 () Bool)

(assert (=> b!6222291 (= e!3787604 call!522373)))

(declare-fun bm!522368 () Bool)

(assert (=> bm!522368 (= call!522372 call!522373)))

(declare-fun c!1124357 () Bool)

(declare-fun bm!522369 () Bool)

(assert (=> bm!522369 (= call!522373 (validRegex!7893 (ite c!1124357 (reg!16486 (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))) (ite c!1124356 (regOne!32827 (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))) (regOne!32826 (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292)))))))))

(declare-fun b!6222292 () Bool)

(declare-fun res!2571701 () Bool)

(assert (=> b!6222292 (=> res!2571701 e!3787603)))

(assert (=> b!6222292 (= res!2571701 (not ((_ is Concat!25002) (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292)))))))

(assert (=> b!6222292 (= e!3787606 e!3787603)))

(declare-fun b!6222293 () Bool)

(assert (=> b!6222293 (= e!3787608 e!3787607)))

(assert (=> b!6222293 (= c!1124357 ((_ is Star!16157) (ite c!1124019 (regTwo!32827 r!7292) (regTwo!32826 r!7292))))))

(assert (= (and d!1950540 (not res!2571703)) b!6222293))

(assert (= (and b!6222293 c!1124357) b!6222285))

(assert (= (and b!6222293 (not c!1124357)) b!6222286))

(assert (= (and b!6222285 res!2571704) b!6222291))

(assert (= (and b!6222286 c!1124356) b!6222287))

(assert (= (and b!6222286 (not c!1124356)) b!6222292))

(assert (= (and b!6222287 res!2571705) b!6222290))

(assert (= (and b!6222292 (not res!2571701)) b!6222288))

(assert (= (and b!6222288 res!2571702) b!6222289))

(assert (= (or b!6222290 b!6222289) bm!522367))

(assert (= (or b!6222287 b!6222288) bm!522368))

(assert (= (or b!6222291 bm!522368) bm!522369))

(declare-fun m!7049984 () Bool)

(assert (=> bm!522367 m!7049984))

(declare-fun m!7049986 () Bool)

(assert (=> b!6222285 m!7049986))

(declare-fun m!7049988 () Bool)

(assert (=> bm!522369 m!7049988))

(assert (=> bm!522163 d!1950540))

(assert (=> d!1950130 d!1950128))

(declare-fun d!1950542 () Bool)

(assert (=> d!1950542 (= (flatMap!1662 lt!2344961 lambda!340023) (dynLambda!25507 lambda!340023 lt!2344958))))

(assert (=> d!1950542 true))

(declare-fun _$13!3260 () Unit!157959)

(assert (=> d!1950542 (= (choose!46226 lt!2344961 lt!2344958 lambda!340023) _$13!3260)))

(declare-fun b_lambda!236551 () Bool)

(assert (=> (not b_lambda!236551) (not d!1950542)))

(declare-fun bs!1542988 () Bool)

(assert (= bs!1542988 d!1950542))

(assert (=> bs!1542988 m!7048788))

(assert (=> bs!1542988 m!7049088))

(assert (=> d!1950130 d!1950542))

(declare-fun d!1950544 () Bool)

(assert (=> d!1950544 (= (nullable!6150 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292)))) (nullableFct!2106 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292)))))))

(declare-fun bs!1542989 () Bool)

(assert (= bs!1542989 d!1950544))

(declare-fun m!7049990 () Bool)

(assert (=> bs!1542989 m!7049990))

(assert (=> b!6221167 d!1950544))

(declare-fun d!1950546 () Bool)

(assert (=> d!1950546 (= (head!12823 (exprs!6041 (h!71096 zl!343))) (h!71094 (exprs!6041 (h!71096 zl!343))))))

(assert (=> b!6221318 d!1950546))

(declare-fun d!1950548 () Bool)

(assert (=> d!1950548 (= (isEmpty!36657 (t!378303 s!2326)) ((_ is Nil!64647) (t!378303 s!2326)))))

(assert (=> d!1950216 d!1950548))

(declare-fun d!1950550 () Bool)

(assert (=> d!1950550 (= (isEmpty!36655 (exprs!6041 (h!71096 zl!343))) ((_ is Nil!64646) (exprs!6041 (h!71096 zl!343))))))

(assert (=> b!6221322 d!1950550))

(declare-fun d!1950552 () Bool)

(assert (=> d!1950552 (= (isEmpty!36655 (t!378302 (unfocusZipperList!1578 zl!343))) ((_ is Nil!64646) (t!378302 (unfocusZipperList!1578 zl!343))))))

(assert (=> b!6221457 d!1950552))

(declare-fun d!1950554 () Bool)

(declare-fun c!1124358 () Bool)

(assert (=> d!1950554 (= c!1124358 (isEmpty!36657 (tail!11907 (t!378303 s!2326))))))

(declare-fun e!3787610 () Bool)

(assert (=> d!1950554 (= (matchZipper!2169 (derivationStepZipper!2123 lt!2344951 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))) e!3787610)))

(declare-fun b!6222294 () Bool)

(assert (=> b!6222294 (= e!3787610 (nullableZipper!1931 (derivationStepZipper!2123 lt!2344951 (head!12822 (t!378303 s!2326)))))))

(declare-fun b!6222295 () Bool)

(assert (=> b!6222295 (= e!3787610 (matchZipper!2169 (derivationStepZipper!2123 (derivationStepZipper!2123 lt!2344951 (head!12822 (t!378303 s!2326))) (head!12822 (tail!11907 (t!378303 s!2326)))) (tail!11907 (tail!11907 (t!378303 s!2326)))))))

(assert (= (and d!1950554 c!1124358) b!6222294))

(assert (= (and d!1950554 (not c!1124358)) b!6222295))

(assert (=> d!1950554 m!7049012))

(assert (=> d!1950554 m!7049944))

(assert (=> b!6222294 m!7049308))

(declare-fun m!7049992 () Bool)

(assert (=> b!6222294 m!7049992))

(assert (=> b!6222295 m!7049012))

(assert (=> b!6222295 m!7049948))

(assert (=> b!6222295 m!7049308))

(assert (=> b!6222295 m!7049948))

(declare-fun m!7049994 () Bool)

(assert (=> b!6222295 m!7049994))

(assert (=> b!6222295 m!7049012))

(assert (=> b!6222295 m!7049952))

(assert (=> b!6222295 m!7049994))

(assert (=> b!6222295 m!7049952))

(declare-fun m!7049996 () Bool)

(assert (=> b!6222295 m!7049996))

(assert (=> b!6221638 d!1950554))

(declare-fun bs!1542990 () Bool)

(declare-fun d!1950556 () Bool)

(assert (= bs!1542990 (and d!1950556 b!6220909)))

(declare-fun lambda!340128 () Int)

(assert (=> bs!1542990 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340128 lambda!340023))))

(declare-fun bs!1542991 () Bool)

(assert (= bs!1542991 (and d!1950556 d!1950110)))

(assert (=> bs!1542991 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340128 lambda!340042))))

(declare-fun bs!1542992 () Bool)

(assert (= bs!1542992 (and d!1950556 d!1950528)))

(assert (=> bs!1542992 (= lambda!340128 lambda!340127)))

(assert (=> d!1950556 true))

(assert (=> d!1950556 (= (derivationStepZipper!2123 lt!2344951 (head!12822 (t!378303 s!2326))) (flatMap!1662 lt!2344951 lambda!340128))))

(declare-fun bs!1542993 () Bool)

(assert (= bs!1542993 d!1950556))

(declare-fun m!7049998 () Bool)

(assert (=> bs!1542993 m!7049998))

(assert (=> b!6221638 d!1950556))

(assert (=> b!6221638 d!1950530))

(assert (=> b!6221638 d!1950532))

(declare-fun d!1950558 () Bool)

(declare-fun c!1124371 () Bool)

(assert (=> d!1950558 (= c!1124371 ((_ is Nil!64648) lt!2345006))))

(declare-fun e!3787623 () (InoxSet Context!11082))

(assert (=> d!1950558 (= (content!12108 lt!2345006) e!3787623)))

(declare-fun b!6222320 () Bool)

(assert (=> b!6222320 (= e!3787623 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6222321 () Bool)

(assert (=> b!6222321 (= e!3787623 ((_ map or) (store ((as const (Array Context!11082 Bool)) false) (h!71096 lt!2345006) true) (content!12108 (t!378304 lt!2345006))))))

(assert (= (and d!1950558 c!1124371) b!6222320))

(assert (= (and d!1950558 (not c!1124371)) b!6222321))

(declare-fun m!7050000 () Bool)

(assert (=> b!6222321 m!7050000))

(declare-fun m!7050002 () Bool)

(assert (=> b!6222321 m!7050002))

(assert (=> b!6221327 d!1950558))

(declare-fun b!6222322 () Bool)

(declare-fun e!3787627 () Bool)

(declare-fun e!3787624 () Bool)

(assert (=> b!6222322 (= e!3787627 e!3787624)))

(declare-fun res!2571710 () Bool)

(assert (=> b!6222322 (=> res!2571710 e!3787624)))

(declare-fun call!522383 () Bool)

(assert (=> b!6222322 (= res!2571710 call!522383)))

(declare-fun b!6222323 () Bool)

(declare-fun e!3787630 () Bool)

(declare-fun lt!2345088 () Bool)

(assert (=> b!6222323 (= e!3787630 (= lt!2345088 call!522383))))

(declare-fun bm!522378 () Bool)

(assert (=> bm!522378 (= call!522383 (isEmpty!36657 (_2!36439 (get!22328 lt!2345021))))))

(declare-fun b!6222324 () Bool)

(declare-fun res!2571713 () Bool)

(declare-fun e!3787628 () Bool)

(assert (=> b!6222324 (=> res!2571713 e!3787628)))

(declare-fun e!3787625 () Bool)

(assert (=> b!6222324 (= res!2571713 e!3787625)))

(declare-fun res!2571708 () Bool)

(assert (=> b!6222324 (=> (not res!2571708) (not e!3787625))))

(assert (=> b!6222324 (= res!2571708 lt!2345088)))

(declare-fun b!6222325 () Bool)

(declare-fun res!2571712 () Bool)

(assert (=> b!6222325 (=> (not res!2571712) (not e!3787625))))

(assert (=> b!6222325 (= res!2571712 (isEmpty!36657 (tail!11907 (_2!36439 (get!22328 lt!2345021)))))))

(declare-fun b!6222326 () Bool)

(declare-fun e!3787626 () Bool)

(assert (=> b!6222326 (= e!3787630 e!3787626)))

(declare-fun c!1124373 () Bool)

(assert (=> b!6222326 (= c!1124373 ((_ is EmptyLang!16157) (regTwo!32826 r!7292)))))

(declare-fun b!6222327 () Bool)

(assert (=> b!6222327 (= e!3787626 (not lt!2345088))))

(declare-fun b!6222328 () Bool)

(assert (=> b!6222328 (= e!3787624 (not (= (head!12822 (_2!36439 (get!22328 lt!2345021))) (c!1123967 (regTwo!32826 r!7292)))))))

(declare-fun b!6222329 () Bool)

(declare-fun e!3787629 () Bool)

(assert (=> b!6222329 (= e!3787629 (nullable!6150 (regTwo!32826 r!7292)))))

(declare-fun b!6222330 () Bool)

(assert (=> b!6222330 (= e!3787629 (matchR!8340 (derivativeStep!4870 (regTwo!32826 r!7292) (head!12822 (_2!36439 (get!22328 lt!2345021)))) (tail!11907 (_2!36439 (get!22328 lt!2345021)))))))

(declare-fun b!6222331 () Bool)

(declare-fun res!2571711 () Bool)

(assert (=> b!6222331 (=> (not res!2571711) (not e!3787625))))

(assert (=> b!6222331 (= res!2571711 (not call!522383))))

(declare-fun b!6222332 () Bool)

(assert (=> b!6222332 (= e!3787628 e!3787627)))

(declare-fun res!2571707 () Bool)

(assert (=> b!6222332 (=> (not res!2571707) (not e!3787627))))

(assert (=> b!6222332 (= res!2571707 (not lt!2345088))))

(declare-fun d!1950560 () Bool)

(assert (=> d!1950560 e!3787630))

(declare-fun c!1124374 () Bool)

(assert (=> d!1950560 (= c!1124374 ((_ is EmptyExpr!16157) (regTwo!32826 r!7292)))))

(assert (=> d!1950560 (= lt!2345088 e!3787629)))

(declare-fun c!1124372 () Bool)

(assert (=> d!1950560 (= c!1124372 (isEmpty!36657 (_2!36439 (get!22328 lt!2345021))))))

(assert (=> d!1950560 (validRegex!7893 (regTwo!32826 r!7292))))

(assert (=> d!1950560 (= (matchR!8340 (regTwo!32826 r!7292) (_2!36439 (get!22328 lt!2345021))) lt!2345088)))

(declare-fun b!6222333 () Bool)

(declare-fun res!2571709 () Bool)

(assert (=> b!6222333 (=> res!2571709 e!3787628)))

(assert (=> b!6222333 (= res!2571709 (not ((_ is ElementMatch!16157) (regTwo!32826 r!7292))))))

(assert (=> b!6222333 (= e!3787626 e!3787628)))

(declare-fun b!6222334 () Bool)

(declare-fun res!2571706 () Bool)

(assert (=> b!6222334 (=> res!2571706 e!3787624)))

(assert (=> b!6222334 (= res!2571706 (not (isEmpty!36657 (tail!11907 (_2!36439 (get!22328 lt!2345021))))))))

(declare-fun b!6222335 () Bool)

(assert (=> b!6222335 (= e!3787625 (= (head!12822 (_2!36439 (get!22328 lt!2345021))) (c!1123967 (regTwo!32826 r!7292))))))

(assert (= (and d!1950560 c!1124372) b!6222329))

(assert (= (and d!1950560 (not c!1124372)) b!6222330))

(assert (= (and d!1950560 c!1124374) b!6222323))

(assert (= (and d!1950560 (not c!1124374)) b!6222326))

(assert (= (and b!6222326 c!1124373) b!6222327))

(assert (= (and b!6222326 (not c!1124373)) b!6222333))

(assert (= (and b!6222333 (not res!2571709)) b!6222324))

(assert (= (and b!6222324 res!2571708) b!6222331))

(assert (= (and b!6222331 res!2571711) b!6222325))

(assert (= (and b!6222325 res!2571712) b!6222335))

(assert (= (and b!6222324 (not res!2571713)) b!6222332))

(assert (= (and b!6222332 res!2571707) b!6222322))

(assert (= (and b!6222322 (not res!2571710)) b!6222334))

(assert (= (and b!6222334 (not res!2571706)) b!6222328))

(assert (= (or b!6222323 b!6222322 b!6222331) bm!522378))

(declare-fun m!7050004 () Bool)

(assert (=> b!6222329 m!7050004))

(declare-fun m!7050006 () Bool)

(assert (=> bm!522378 m!7050006))

(declare-fun m!7050008 () Bool)

(assert (=> b!6222328 m!7050008))

(assert (=> b!6222335 m!7050008))

(assert (=> d!1950560 m!7050006))

(declare-fun m!7050010 () Bool)

(assert (=> d!1950560 m!7050010))

(assert (=> b!6222330 m!7050008))

(assert (=> b!6222330 m!7050008))

(declare-fun m!7050012 () Bool)

(assert (=> b!6222330 m!7050012))

(declare-fun m!7050014 () Bool)

(assert (=> b!6222330 m!7050014))

(assert (=> b!6222330 m!7050012))

(assert (=> b!6222330 m!7050014))

(declare-fun m!7050016 () Bool)

(assert (=> b!6222330 m!7050016))

(assert (=> b!6222334 m!7050014))

(assert (=> b!6222334 m!7050014))

(declare-fun m!7050018 () Bool)

(assert (=> b!6222334 m!7050018))

(assert (=> b!6222325 m!7050014))

(assert (=> b!6222325 m!7050014))

(assert (=> b!6222325 m!7050018))

(assert (=> b!6221373 d!1950560))

(declare-fun d!1950562 () Bool)

(assert (=> d!1950562 (= (get!22328 lt!2345021) (v!52193 lt!2345021))))

(assert (=> b!6221373 d!1950562))

(assert (=> d!1950102 d!1950106))

(declare-fun d!1950564 () Bool)

(assert (=> d!1950564 (= (flatMap!1662 lt!2344946 lambda!340023) (dynLambda!25507 lambda!340023 lt!2344947))))

(assert (=> d!1950564 true))

(declare-fun _$13!3261 () Unit!157959)

(assert (=> d!1950564 (= (choose!46226 lt!2344946 lt!2344947 lambda!340023) _$13!3261)))

(declare-fun b_lambda!236553 () Bool)

(assert (=> (not b_lambda!236553) (not d!1950564)))

(declare-fun bs!1542994 () Bool)

(assert (= bs!1542994 d!1950564))

(assert (=> bs!1542994 m!7048760))

(assert (=> bs!1542994 m!7049016))

(assert (=> d!1950102 d!1950564))

(declare-fun d!1950566 () Bool)

(assert (=> d!1950566 (= (nullable!6150 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))) (nullableFct!2106 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))))))

(declare-fun bs!1542995 () Bool)

(assert (= bs!1542995 d!1950566))

(declare-fun m!7050020 () Bool)

(assert (=> bs!1542995 m!7050020))

(assert (=> b!6221632 d!1950566))

(declare-fun d!1950568 () Bool)

(assert (=> d!1950568 (= (Exists!3227 (ite c!1124158 lambda!340085 lambda!340086)) (choose!46231 (ite c!1124158 lambda!340085 lambda!340086)))))

(declare-fun bs!1542996 () Bool)

(assert (= bs!1542996 d!1950568))

(declare-fun m!7050022 () Bool)

(assert (=> bs!1542996 m!7050022))

(assert (=> bm!522221 d!1950568))

(declare-fun b!6222337 () Bool)

(declare-fun e!3787631 () (InoxSet Context!11082))

(declare-fun e!3787634 () (InoxSet Context!11082))

(assert (=> b!6222337 (= e!3787631 e!3787634)))

(declare-fun c!1124377 () Bool)

(assert (=> b!6222337 (= c!1124377 ((_ is Union!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6222338 () Bool)

(declare-fun e!3787632 () (InoxSet Context!11082))

(declare-fun call!522385 () (InoxSet Context!11082))

(assert (=> b!6222338 (= e!3787632 call!522385)))

(declare-fun b!6222339 () Bool)

(declare-fun call!522386 () (InoxSet Context!11082))

(declare-fun call!522388 () (InoxSet Context!11082))

(assert (=> b!6222339 (= e!3787634 ((_ map or) call!522386 call!522388))))

(declare-fun c!1124376 () Bool)

(declare-fun c!1124375 () Bool)

(declare-fun call!522384 () List!64770)

(declare-fun bm!522379 () Bool)

(assert (=> bm!522379 (= call!522388 (derivationStepZipperDown!1405 (ite c!1124377 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124376 (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (ite c!1124375 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (reg!16486 (h!71094 (exprs!6041 (h!71096 zl!343))))))) (ite (or c!1124377 c!1124376) (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))) (Context!11083 call!522384)) (h!71095 s!2326)))))

(declare-fun b!6222340 () Bool)

(declare-fun e!3787636 () (InoxSet Context!11082))

(declare-fun call!522389 () (InoxSet Context!11082))

(assert (=> b!6222340 (= e!3787636 ((_ map or) call!522386 call!522389))))

(declare-fun call!522387 () List!64770)

(declare-fun bm!522380 () Bool)

(assert (=> bm!522380 (= call!522386 (derivationStepZipperDown!1405 (ite c!1124377 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))) (ite c!1124377 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))) (Context!11083 call!522387)) (h!71095 s!2326)))))

(declare-fun bm!522381 () Bool)

(assert (=> bm!522381 (= call!522389 call!522388)))

(declare-fun b!6222341 () Bool)

(declare-fun c!1124379 () Bool)

(assert (=> b!6222341 (= c!1124379 ((_ is Star!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun e!3787633 () (InoxSet Context!11082))

(assert (=> b!6222341 (= e!3787632 e!3787633)))

(declare-fun b!6222342 () Bool)

(assert (=> b!6222342 (= e!3787631 (store ((as const (Array Context!11082 Bool)) false) (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))) true))))

(declare-fun b!6222336 () Bool)

(declare-fun e!3787635 () Bool)

(assert (=> b!6222336 (= c!1124376 e!3787635)))

(declare-fun res!2571714 () Bool)

(assert (=> b!6222336 (=> (not res!2571714) (not e!3787635))))

(assert (=> b!6222336 (= res!2571714 ((_ is Concat!25002) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(assert (=> b!6222336 (= e!3787634 e!3787636)))

(declare-fun d!1950570 () Bool)

(declare-fun c!1124378 () Bool)

(assert (=> d!1950570 (= c!1124378 (and ((_ is ElementMatch!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))) (= (c!1123967 (h!71094 (exprs!6041 (h!71096 zl!343)))) (h!71095 s!2326))))))

(assert (=> d!1950570 (= (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (h!71096 zl!343))) (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))) (h!71095 s!2326)) e!3787631)))

(declare-fun b!6222343 () Bool)

(assert (=> b!6222343 (= e!3787633 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522382 () Bool)

(assert (=> bm!522382 (= call!522384 call!522387)))

(declare-fun b!6222344 () Bool)

(assert (=> b!6222344 (= e!3787635 (nullable!6150 (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))))))

(declare-fun b!6222345 () Bool)

(assert (=> b!6222345 (= e!3787633 call!522385)))

(declare-fun bm!522383 () Bool)

(assert (=> bm!522383 (= call!522385 call!522389)))

(declare-fun b!6222346 () Bool)

(assert (=> b!6222346 (= e!3787636 e!3787632)))

(assert (=> b!6222346 (= c!1124375 ((_ is Concat!25002) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun bm!522384 () Bool)

(assert (=> bm!522384 (= call!522387 ($colon$colon!2026 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343))))) (ite (or c!1124376 c!1124375) (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (h!71094 (exprs!6041 (h!71096 zl!343))))))))

(assert (= (and d!1950570 c!1124378) b!6222342))

(assert (= (and d!1950570 (not c!1124378)) b!6222337))

(assert (= (and b!6222337 c!1124377) b!6222339))

(assert (= (and b!6222337 (not c!1124377)) b!6222336))

(assert (= (and b!6222336 res!2571714) b!6222344))

(assert (= (and b!6222336 c!1124376) b!6222340))

(assert (= (and b!6222336 (not c!1124376)) b!6222346))

(assert (= (and b!6222346 c!1124375) b!6222338))

(assert (= (and b!6222346 (not c!1124375)) b!6222341))

(assert (= (and b!6222341 c!1124379) b!6222345))

(assert (= (and b!6222341 (not c!1124379)) b!6222343))

(assert (= (or b!6222338 b!6222345) bm!522382))

(assert (= (or b!6222338 b!6222345) bm!522383))

(assert (= (or b!6222340 bm!522382) bm!522384))

(assert (= (or b!6222340 bm!522383) bm!522381))

(assert (= (or b!6222339 bm!522381) bm!522379))

(assert (= (or b!6222339 b!6222340) bm!522380))

(declare-fun m!7050024 () Bool)

(assert (=> bm!522384 m!7050024))

(assert (=> b!6222344 m!7049290))

(declare-fun m!7050026 () Bool)

(assert (=> bm!522379 m!7050026))

(declare-fun m!7050028 () Bool)

(assert (=> bm!522380 m!7050028))

(declare-fun m!7050030 () Bool)

(assert (=> b!6222342 m!7050030))

(assert (=> bm!522227 d!1950570))

(assert (=> bs!1542813 d!1950108))

(declare-fun d!1950572 () Bool)

(declare-fun c!1124385 () Bool)

(assert (=> d!1950572 (= c!1124385 (isEmpty!36657 (t!378303 s!2326)))))

(declare-fun e!3787642 () Bool)

(assert (=> d!1950572 (= (matchZipper!2169 ((_ map or) lt!2344960 lt!2344949) (t!378303 s!2326)) e!3787642)))

(declare-fun b!6222357 () Bool)

(assert (=> b!6222357 (= e!3787642 (nullableZipper!1931 ((_ map or) lt!2344960 lt!2344949)))))

(declare-fun b!6222358 () Bool)

(assert (=> b!6222358 (= e!3787642 (matchZipper!2169 (derivationStepZipper!2123 ((_ map or) lt!2344960 lt!2344949) (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))))))

(assert (= (and d!1950572 c!1124385) b!6222357))

(assert (= (and d!1950572 (not c!1124385)) b!6222358))

(assert (=> d!1950572 m!7049004))

(declare-fun m!7050032 () Bool)

(assert (=> b!6222357 m!7050032))

(assert (=> b!6222358 m!7049008))

(assert (=> b!6222358 m!7049008))

(declare-fun m!7050034 () Bool)

(assert (=> b!6222358 m!7050034))

(assert (=> b!6222358 m!7049012))

(assert (=> b!6222358 m!7050034))

(assert (=> b!6222358 m!7049012))

(declare-fun m!7050036 () Bool)

(assert (=> b!6222358 m!7050036))

(assert (=> d!1950220 d!1950572))

(assert (=> d!1950220 d!1950218))

(declare-fun d!1950574 () Bool)

(declare-fun e!3787654 () Bool)

(assert (=> d!1950574 (= (matchZipper!2169 ((_ map or) lt!2344960 lt!2344949) (t!378303 s!2326)) e!3787654)))

(declare-fun res!2571719 () Bool)

(assert (=> d!1950574 (=> res!2571719 e!3787654)))

(assert (=> d!1950574 (= res!2571719 (matchZipper!2169 lt!2344960 (t!378303 s!2326)))))

(assert (=> d!1950574 true))

(declare-fun _$48!1907 () Unit!157959)

(assert (=> d!1950574 (= (choose!46238 lt!2344960 lt!2344949 (t!378303 s!2326)) _$48!1907)))

(declare-fun b!6222377 () Bool)

(assert (=> b!6222377 (= e!3787654 (matchZipper!2169 lt!2344949 (t!378303 s!2326)))))

(assert (= (and d!1950574 (not res!2571719)) b!6222377))

(assert (=> d!1950574 m!7049318))

(assert (=> d!1950574 m!7048802))

(assert (=> b!6222377 m!7048738))

(assert (=> d!1950220 d!1950574))

(assert (=> b!6221323 d!1950222))

(assert (=> b!6221513 d!1950116))

(declare-fun bs!1543009 () Bool)

(declare-fun d!1950588 () Bool)

(assert (= bs!1543009 (and d!1950588 d!1950170)))

(declare-fun lambda!340130 () Int)

(assert (=> bs!1543009 (= lambda!340130 lambda!340066)))

(declare-fun bs!1543010 () Bool)

(assert (= bs!1543010 (and d!1950588 d!1950388)))

(assert (=> bs!1543010 (= lambda!340130 lambda!340104)))

(declare-fun bs!1543011 () Bool)

(assert (= bs!1543011 (and d!1950588 d!1950122)))

(assert (=> bs!1543011 (= lambda!340130 lambda!340050)))

(declare-fun bs!1543012 () Bool)

(assert (= bs!1543012 (and d!1950588 d!1950174)))

(assert (=> bs!1543012 (= lambda!340130 lambda!340077)))

(declare-fun bs!1543013 () Bool)

(assert (= bs!1543013 (and d!1950588 d!1950428)))

(assert (=> bs!1543013 (= lambda!340130 lambda!340108)))

(declare-fun bs!1543014 () Bool)

(assert (= bs!1543014 (and d!1950588 d!1950186)))

(assert (=> bs!1543014 (= lambda!340130 lambda!340080)))

(declare-fun bs!1543015 () Bool)

(assert (= bs!1543015 (and d!1950588 d!1950116)))

(assert (=> bs!1543015 (= lambda!340130 lambda!340047)))

(declare-fun bs!1543016 () Bool)

(assert (= bs!1543016 (and d!1950588 d!1950224)))

(assert (=> bs!1543016 (= lambda!340130 lambda!340087)))

(declare-fun lt!2345090 () List!64770)

(assert (=> d!1950588 (forall!15271 lt!2345090 lambda!340130)))

(declare-fun e!3787661 () List!64770)

(assert (=> d!1950588 (= lt!2345090 e!3787661)))

(declare-fun c!1124398 () Bool)

(assert (=> d!1950588 (= c!1124398 ((_ is Cons!64648) (t!378304 zl!343)))))

(assert (=> d!1950588 (= (unfocusZipperList!1578 (t!378304 zl!343)) lt!2345090)))

(declare-fun b!6222389 () Bool)

(assert (=> b!6222389 (= e!3787661 (Cons!64646 (generalisedConcat!1754 (exprs!6041 (h!71096 (t!378304 zl!343)))) (unfocusZipperList!1578 (t!378304 (t!378304 zl!343)))))))

(declare-fun b!6222390 () Bool)

(assert (=> b!6222390 (= e!3787661 Nil!64646)))

(assert (= (and d!1950588 c!1124398) b!6222389))

(assert (= (and d!1950588 (not c!1124398)) b!6222390))

(declare-fun m!7050074 () Bool)

(assert (=> d!1950588 m!7050074))

(declare-fun m!7050076 () Bool)

(assert (=> b!6222389 m!7050076))

(declare-fun m!7050078 () Bool)

(assert (=> b!6222389 m!7050078))

(assert (=> b!6221513 d!1950588))

(declare-fun d!1950592 () Bool)

(assert (=> d!1950592 (= (Exists!3227 lambda!340064) (choose!46231 lambda!340064))))

(declare-fun bs!1543017 () Bool)

(assert (= bs!1543017 d!1950592))

(declare-fun m!7050080 () Bool)

(assert (=> bs!1543017 m!7050080))

(assert (=> d!1950164 d!1950592))

(declare-fun d!1950594 () Bool)

(assert (=> d!1950594 (= (Exists!3227 lambda!340065) (choose!46231 lambda!340065))))

(declare-fun bs!1543018 () Bool)

(assert (= bs!1543018 d!1950594))

(declare-fun m!7050082 () Bool)

(assert (=> bs!1543018 m!7050082))

(assert (=> d!1950164 d!1950594))

(declare-fun bs!1543028 () Bool)

(declare-fun d!1950596 () Bool)

(assert (= bs!1543028 (and d!1950596 b!6220911)))

(declare-fun lambda!340136 () Int)

(assert (=> bs!1543028 (= lambda!340136 lambda!340021)))

(declare-fun bs!1543029 () Bool)

(assert (= bs!1543029 (and d!1950596 d!1950156)))

(assert (=> bs!1543029 (= lambda!340136 lambda!340056)))

(assert (=> bs!1543028 (not (= lambda!340136 lambda!340022))))

(declare-fun bs!1543030 () Bool)

(assert (= bs!1543030 (and d!1950596 b!6221560)))

(assert (=> bs!1543030 (not (= lambda!340136 lambda!340086))))

(declare-fun bs!1543031 () Bool)

(assert (= bs!1543031 (and d!1950596 d!1950164)))

(assert (=> bs!1543031 (= lambda!340136 lambda!340064)))

(declare-fun bs!1543032 () Bool)

(assert (= bs!1543032 (and d!1950596 b!6221566)))

(assert (=> bs!1543032 (not (= lambda!340136 lambda!340085))))

(assert (=> bs!1543031 (not (= lambda!340136 lambda!340065))))

(declare-fun bs!1543033 () Bool)

(assert (= bs!1543033 (and d!1950596 d!1950498)))

(assert (=> bs!1543033 (= lambda!340136 lambda!340124)))

(assert (=> d!1950596 true))

(assert (=> d!1950596 true))

(assert (=> d!1950596 true))

(declare-fun bs!1543034 () Bool)

(assert (= bs!1543034 d!1950596))

(declare-fun lambda!340137 () Int)

(assert (=> bs!1543034 (not (= lambda!340137 lambda!340136))))

(assert (=> bs!1543028 (not (= lambda!340137 lambda!340021))))

(assert (=> bs!1543029 (not (= lambda!340137 lambda!340056))))

(assert (=> bs!1543028 (= lambda!340137 lambda!340022)))

(assert (=> bs!1543030 (= lambda!340137 lambda!340086)))

(assert (=> bs!1543031 (not (= lambda!340137 lambda!340064))))

(assert (=> bs!1543032 (not (= lambda!340137 lambda!340085))))

(assert (=> bs!1543031 (= lambda!340137 lambda!340065)))

(assert (=> bs!1543033 (not (= lambda!340137 lambda!340124))))

(assert (=> d!1950596 true))

(assert (=> d!1950596 true))

(assert (=> d!1950596 true))

(assert (=> d!1950596 (= (Exists!3227 lambda!340136) (Exists!3227 lambda!340137))))

(assert (=> d!1950596 true))

(declare-fun _$90!2019 () Unit!157959)

(assert (=> d!1950596 (= (choose!46233 (regOne!32826 r!7292) (regTwo!32826 r!7292) s!2326) _$90!2019)))

(declare-fun m!7050108 () Bool)

(assert (=> bs!1543034 m!7050108))

(declare-fun m!7050110 () Bool)

(assert (=> bs!1543034 m!7050110))

(assert (=> d!1950164 d!1950596))

(assert (=> d!1950164 d!1950494))

(assert (=> d!1950214 d!1950548))

(assert (=> b!6221598 d!1950426))

(assert (=> b!6221598 d!1950386))

(declare-fun d!1950612 () Bool)

(assert (=> d!1950612 (= ($colon$colon!2026 (exprs!6041 lt!2344955) (ite (or c!1124178 c!1124177) (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (h!71094 (exprs!6041 (h!71096 zl!343))))) (Cons!64646 (ite (or c!1124178 c!1124177) (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))) (h!71094 (exprs!6041 (h!71096 zl!343)))) (exprs!6041 lt!2344955)))))

(assert (=> bm!522233 d!1950612))

(declare-fun bs!1543035 () Bool)

(declare-fun b!6222530 () Bool)

(assert (= bs!1543035 (and b!6222530 d!1950596)))

(declare-fun lambda!340138 () Int)

(assert (=> bs!1543035 (not (= lambda!340138 lambda!340136))))

(declare-fun bs!1543036 () Bool)

(assert (= bs!1543036 (and b!6222530 b!6220911)))

(assert (=> bs!1543036 (not (= lambda!340138 lambda!340021))))

(declare-fun bs!1543037 () Bool)

(assert (= bs!1543037 (and b!6222530 d!1950156)))

(assert (=> bs!1543037 (not (= lambda!340138 lambda!340056))))

(declare-fun bs!1543038 () Bool)

(assert (= bs!1543038 (and b!6222530 b!6221560)))

(assert (=> bs!1543038 (not (= lambda!340138 lambda!340086))))

(declare-fun bs!1543040 () Bool)

(assert (= bs!1543040 (and b!6222530 d!1950164)))

(assert (=> bs!1543040 (not (= lambda!340138 lambda!340064))))

(declare-fun bs!1543042 () Bool)

(assert (= bs!1543042 (and b!6222530 b!6221566)))

(assert (=> bs!1543042 (= (and (= (reg!16486 (regOne!32827 r!7292)) (reg!16486 r!7292)) (= (regOne!32827 r!7292) r!7292)) (= lambda!340138 lambda!340085))))

(assert (=> bs!1543035 (not (= lambda!340138 lambda!340137))))

(assert (=> bs!1543036 (not (= lambda!340138 lambda!340022))))

(assert (=> bs!1543040 (not (= lambda!340138 lambda!340065))))

(declare-fun bs!1543047 () Bool)

(assert (= bs!1543047 (and b!6222530 d!1950498)))

(assert (=> bs!1543047 (not (= lambda!340138 lambda!340124))))

(assert (=> b!6222530 true))

(assert (=> b!6222530 true))

(declare-fun bs!1543048 () Bool)

(declare-fun b!6222520 () Bool)

(assert (= bs!1543048 (and b!6222520 d!1950596)))

(declare-fun lambda!340139 () Int)

(assert (=> bs!1543048 (not (= lambda!340139 lambda!340136))))

(declare-fun bs!1543049 () Bool)

(assert (= bs!1543049 (and b!6222520 b!6220911)))

(assert (=> bs!1543049 (not (= lambda!340139 lambda!340021))))

(declare-fun bs!1543050 () Bool)

(assert (= bs!1543050 (and b!6222520 d!1950156)))

(assert (=> bs!1543050 (not (= lambda!340139 lambda!340056))))

(declare-fun bs!1543051 () Bool)

(assert (= bs!1543051 (and b!6222520 b!6222530)))

(assert (=> bs!1543051 (not (= lambda!340139 lambda!340138))))

(declare-fun bs!1543052 () Bool)

(assert (= bs!1543052 (and b!6222520 b!6221560)))

(assert (=> bs!1543052 (= (and (= (regOne!32826 (regOne!32827 r!7292)) (regOne!32826 r!7292)) (= (regTwo!32826 (regOne!32827 r!7292)) (regTwo!32826 r!7292))) (= lambda!340139 lambda!340086))))

(declare-fun bs!1543053 () Bool)

(assert (= bs!1543053 (and b!6222520 d!1950164)))

(assert (=> bs!1543053 (not (= lambda!340139 lambda!340064))))

(declare-fun bs!1543054 () Bool)

(assert (= bs!1543054 (and b!6222520 b!6221566)))

(assert (=> bs!1543054 (not (= lambda!340139 lambda!340085))))

(assert (=> bs!1543048 (= (and (= (regOne!32826 (regOne!32827 r!7292)) (regOne!32826 r!7292)) (= (regTwo!32826 (regOne!32827 r!7292)) (regTwo!32826 r!7292))) (= lambda!340139 lambda!340137))))

(assert (=> bs!1543049 (= (and (= (regOne!32826 (regOne!32827 r!7292)) (regOne!32826 r!7292)) (= (regTwo!32826 (regOne!32827 r!7292)) (regTwo!32826 r!7292))) (= lambda!340139 lambda!340022))))

(assert (=> bs!1543053 (= (and (= (regOne!32826 (regOne!32827 r!7292)) (regOne!32826 r!7292)) (= (regTwo!32826 (regOne!32827 r!7292)) (regTwo!32826 r!7292))) (= lambda!340139 lambda!340065))))

(declare-fun bs!1543055 () Bool)

(assert (= bs!1543055 (and b!6222520 d!1950498)))

(assert (=> bs!1543055 (not (= lambda!340139 lambda!340124))))

(assert (=> b!6222520 true))

(assert (=> b!6222520 true))

(declare-fun bm!522410 () Bool)

(declare-fun call!522416 () Bool)

(assert (=> bm!522410 (= call!522416 (isEmpty!36657 s!2326))))

(declare-fun bm!522411 () Bool)

(declare-fun c!1124405 () Bool)

(declare-fun call!522415 () Bool)

(assert (=> bm!522411 (= call!522415 (Exists!3227 (ite c!1124405 lambda!340138 lambda!340139)))))

(declare-fun b!6222516 () Bool)

(declare-fun e!3787710 () Bool)

(declare-fun e!3787712 () Bool)

(assert (=> b!6222516 (= e!3787710 e!3787712)))

(declare-fun res!2571740 () Bool)

(assert (=> b!6222516 (= res!2571740 (not ((_ is EmptyLang!16157) (regOne!32827 r!7292))))))

(assert (=> b!6222516 (=> (not res!2571740) (not e!3787712))))

(declare-fun b!6222517 () Bool)

(assert (=> b!6222517 (= e!3787710 call!522416)))

(declare-fun b!6222518 () Bool)

(declare-fun e!3787708 () Bool)

(assert (=> b!6222518 (= e!3787708 (matchRSpec!3258 (regTwo!32827 (regOne!32827 r!7292)) s!2326))))

(declare-fun b!6222519 () Bool)

(declare-fun e!3787713 () Bool)

(assert (=> b!6222519 (= e!3787713 e!3787708)))

(declare-fun res!2571739 () Bool)

(assert (=> b!6222519 (= res!2571739 (matchRSpec!3258 (regOne!32827 (regOne!32827 r!7292)) s!2326))))

(assert (=> b!6222519 (=> res!2571739 e!3787708)))

(declare-fun e!3787711 () Bool)

(assert (=> b!6222520 (= e!3787711 call!522415)))

(declare-fun b!6222521 () Bool)

(declare-fun res!2571741 () Bool)

(declare-fun e!3787714 () Bool)

(assert (=> b!6222521 (=> res!2571741 e!3787714)))

(assert (=> b!6222521 (= res!2571741 call!522416)))

(assert (=> b!6222521 (= e!3787711 e!3787714)))

(declare-fun b!6222524 () Bool)

(declare-fun c!1124408 () Bool)

(assert (=> b!6222524 (= c!1124408 ((_ is ElementMatch!16157) (regOne!32827 r!7292)))))

(declare-fun e!3787709 () Bool)

(assert (=> b!6222524 (= e!3787712 e!3787709)))

(declare-fun b!6222528 () Bool)

(assert (=> b!6222528 (= e!3787713 e!3787711)))

(assert (=> b!6222528 (= c!1124405 ((_ is Star!16157) (regOne!32827 r!7292)))))

(declare-fun b!6222529 () Bool)

(assert (=> b!6222529 (= e!3787709 (= s!2326 (Cons!64647 (c!1123967 (regOne!32827 r!7292)) Nil!64647)))))

(assert (=> b!6222530 (= e!3787714 call!522415)))

(declare-fun d!1950614 () Bool)

(declare-fun c!1124406 () Bool)

(assert (=> d!1950614 (= c!1124406 ((_ is EmptyExpr!16157) (regOne!32827 r!7292)))))

(assert (=> d!1950614 (= (matchRSpec!3258 (regOne!32827 r!7292) s!2326) e!3787710)))

(declare-fun b!6222527 () Bool)

(declare-fun c!1124407 () Bool)

(assert (=> b!6222527 (= c!1124407 ((_ is Union!16157) (regOne!32827 r!7292)))))

(assert (=> b!6222527 (= e!3787709 e!3787713)))

(assert (= (and d!1950614 c!1124406) b!6222517))

(assert (= (and d!1950614 (not c!1124406)) b!6222516))

(assert (= (and b!6222516 res!2571740) b!6222524))

(assert (= (and b!6222524 c!1124408) b!6222529))

(assert (= (and b!6222524 (not c!1124408)) b!6222527))

(assert (= (and b!6222527 c!1124407) b!6222519))

(assert (= (and b!6222527 (not c!1124407)) b!6222528))

(assert (= (and b!6222519 (not res!2571739)) b!6222518))

(assert (= (and b!6222528 c!1124405) b!6222521))

(assert (= (and b!6222528 (not c!1124405)) b!6222520))

(assert (= (and b!6222521 (not res!2571741)) b!6222530))

(assert (= (or b!6222530 b!6222520) bm!522411))

(assert (= (or b!6222517 b!6222521) bm!522410))

(assert (=> bm!522410 m!7049244))

(declare-fun m!7050122 () Bool)

(assert (=> bm!522411 m!7050122))

(declare-fun m!7050124 () Bool)

(assert (=> b!6222518 m!7050124))

(declare-fun m!7050126 () Bool)

(assert (=> b!6222519 m!7050126))

(assert (=> b!6221559 d!1950614))

(declare-fun b!6222545 () Bool)

(declare-fun e!3787720 () (InoxSet Context!11082))

(declare-fun e!3787723 () (InoxSet Context!11082))

(assert (=> b!6222545 (= e!3787720 e!3787723)))

(declare-fun c!1124411 () Bool)

(assert (=> b!6222545 (= c!1124411 ((_ is Union!16157) (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))))))

(declare-fun b!6222546 () Bool)

(declare-fun e!3787721 () (InoxSet Context!11082))

(declare-fun call!522418 () (InoxSet Context!11082))

(assert (=> b!6222546 (= e!3787721 call!522418)))

(declare-fun b!6222547 () Bool)

(declare-fun call!522419 () (InoxSet Context!11082))

(declare-fun call!522421 () (InoxSet Context!11082))

(assert (=> b!6222547 (= e!3787723 ((_ map or) call!522419 call!522421))))

(declare-fun bm!522412 () Bool)

(declare-fun c!1124410 () Bool)

(declare-fun c!1124409 () Bool)

(declare-fun call!522417 () List!64770)

(assert (=> bm!522412 (= call!522421 (derivationStepZipperDown!1405 (ite c!1124411 (regTwo!32827 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))) (ite c!1124410 (regTwo!32826 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))) (ite c!1124409 (regOne!32826 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))) (reg!16486 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292)))))))))) (ite (or c!1124411 c!1124410) (ite (or c!1124056 c!1124055) lt!2344955 (Context!11083 call!522192)) (Context!11083 call!522417)) (h!71095 s!2326)))))

(declare-fun b!6222548 () Bool)

(declare-fun e!3787725 () (InoxSet Context!11082))

(declare-fun call!522422 () (InoxSet Context!11082))

(assert (=> b!6222548 (= e!3787725 ((_ map or) call!522419 call!522422))))

(declare-fun bm!522413 () Bool)

(declare-fun call!522420 () List!64770)

(assert (=> bm!522413 (= call!522419 (derivationStepZipperDown!1405 (ite c!1124411 (regOne!32827 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))) (regOne!32826 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292)))))))) (ite c!1124411 (ite (or c!1124056 c!1124055) lt!2344955 (Context!11083 call!522192)) (Context!11083 call!522420)) (h!71095 s!2326)))))

(declare-fun bm!522414 () Bool)

(assert (=> bm!522414 (= call!522422 call!522421)))

(declare-fun c!1124413 () Bool)

(declare-fun b!6222549 () Bool)

(assert (=> b!6222549 (= c!1124413 ((_ is Star!16157) (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))))))

(declare-fun e!3787722 () (InoxSet Context!11082))

(assert (=> b!6222549 (= e!3787721 e!3787722)))

(declare-fun b!6222550 () Bool)

(assert (=> b!6222550 (= e!3787720 (store ((as const (Array Context!11082 Bool)) false) (ite (or c!1124056 c!1124055) lt!2344955 (Context!11083 call!522192)) true))))

(declare-fun b!6222544 () Bool)

(declare-fun e!3787724 () Bool)

(assert (=> b!6222544 (= c!1124410 e!3787724)))

(declare-fun res!2571742 () Bool)

(assert (=> b!6222544 (=> (not res!2571742) (not e!3787724))))

(assert (=> b!6222544 (= res!2571742 ((_ is Concat!25002) (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))))))

(assert (=> b!6222544 (= e!3787723 e!3787725)))

(declare-fun d!1950628 () Bool)

(declare-fun c!1124412 () Bool)

(assert (=> d!1950628 (= c!1124412 (and ((_ is ElementMatch!16157) (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))) (= (c!1123967 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))) (h!71095 s!2326))))))

(assert (=> d!1950628 (= (derivationStepZipperDown!1405 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292)))))) (ite (or c!1124056 c!1124055) lt!2344955 (Context!11083 call!522192)) (h!71095 s!2326)) e!3787720)))

(declare-fun b!6222551 () Bool)

(assert (=> b!6222551 (= e!3787722 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522415 () Bool)

(assert (=> bm!522415 (= call!522417 call!522420)))

(declare-fun b!6222552 () Bool)

(assert (=> b!6222552 (= e!3787724 (nullable!6150 (regOne!32826 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292)))))))))))

(declare-fun b!6222553 () Bool)

(assert (=> b!6222553 (= e!3787722 call!522418)))

(declare-fun bm!522416 () Bool)

(assert (=> bm!522416 (= call!522418 call!522422)))

(declare-fun b!6222554 () Bool)

(assert (=> b!6222554 (= e!3787725 e!3787721)))

(assert (=> b!6222554 (= c!1124409 ((_ is Concat!25002) (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))))))

(declare-fun bm!522417 () Bool)

(assert (=> bm!522417 (= call!522420 ($colon$colon!2026 (exprs!6041 (ite (or c!1124056 c!1124055) lt!2344955 (Context!11083 call!522192))) (ite (or c!1124410 c!1124409) (regTwo!32826 (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292))))))) (ite c!1124056 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124055 (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (ite c!1124054 (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))) (reg!16486 (regTwo!32826 (regOne!32826 r!7292)))))))))))

(assert (= (and d!1950628 c!1124412) b!6222550))

(assert (= (and d!1950628 (not c!1124412)) b!6222545))

(assert (= (and b!6222545 c!1124411) b!6222547))

(assert (= (and b!6222545 (not c!1124411)) b!6222544))

(assert (= (and b!6222544 res!2571742) b!6222552))

(assert (= (and b!6222544 c!1124410) b!6222548))

(assert (= (and b!6222544 (not c!1124410)) b!6222554))

(assert (= (and b!6222554 c!1124409) b!6222546))

(assert (= (and b!6222554 (not c!1124409)) b!6222549))

(assert (= (and b!6222549 c!1124413) b!6222553))

(assert (= (and b!6222549 (not c!1124413)) b!6222551))

(assert (= (or b!6222546 b!6222553) bm!522415))

(assert (= (or b!6222546 b!6222553) bm!522416))

(assert (= (or b!6222548 bm!522415) bm!522417))

(assert (= (or b!6222548 bm!522416) bm!522414))

(assert (= (or b!6222547 bm!522414) bm!522412))

(assert (= (or b!6222547 b!6222548) bm!522413))

(declare-fun m!7050128 () Bool)

(assert (=> bm!522417 m!7050128))

(declare-fun m!7050130 () Bool)

(assert (=> b!6222552 m!7050130))

(declare-fun m!7050132 () Bool)

(assert (=> bm!522412 m!7050132))

(declare-fun m!7050134 () Bool)

(assert (=> bm!522413 m!7050134))

(declare-fun m!7050136 () Bool)

(assert (=> b!6222550 m!7050136))

(assert (=> bm!522187 d!1950628))

(declare-fun d!1950630 () Bool)

(declare-fun res!2571743 () Bool)

(declare-fun e!3787726 () Bool)

(assert (=> d!1950630 (=> res!2571743 e!3787726)))

(assert (=> d!1950630 (= res!2571743 ((_ is Nil!64646) (exprs!6041 lt!2344955)))))

(assert (=> d!1950630 (= (forall!15271 (exprs!6041 lt!2344955) lambda!340087) e!3787726)))

(declare-fun b!6222555 () Bool)

(declare-fun e!3787727 () Bool)

(assert (=> b!6222555 (= e!3787726 e!3787727)))

(declare-fun res!2571744 () Bool)

(assert (=> b!6222555 (=> (not res!2571744) (not e!3787727))))

(assert (=> b!6222555 (= res!2571744 (dynLambda!25509 lambda!340087 (h!71094 (exprs!6041 lt!2344955))))))

(declare-fun b!6222556 () Bool)

(assert (=> b!6222556 (= e!3787727 (forall!15271 (t!378302 (exprs!6041 lt!2344955)) lambda!340087))))

(assert (= (and d!1950630 (not res!2571743)) b!6222555))

(assert (= (and b!6222555 res!2571744) b!6222556))

(declare-fun b_lambda!236573 () Bool)

(assert (=> (not b_lambda!236573) (not b!6222555)))

(declare-fun m!7050138 () Bool)

(assert (=> b!6222555 m!7050138))

(declare-fun m!7050140 () Bool)

(assert (=> b!6222556 m!7050140))

(assert (=> d!1950224 d!1950630))

(declare-fun d!1950632 () Bool)

(declare-fun c!1124414 () Bool)

(assert (=> d!1950632 (= c!1124414 (isEmpty!36657 (tail!11907 (t!378303 s!2326))))))

(declare-fun e!3787728 () Bool)

(assert (=> d!1950632 (= (matchZipper!2169 (derivationStepZipper!2123 lt!2344969 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))) e!3787728)))

(declare-fun b!6222557 () Bool)

(assert (=> b!6222557 (= e!3787728 (nullableZipper!1931 (derivationStepZipper!2123 lt!2344969 (head!12822 (t!378303 s!2326)))))))

(declare-fun b!6222558 () Bool)

(assert (=> b!6222558 (= e!3787728 (matchZipper!2169 (derivationStepZipper!2123 (derivationStepZipper!2123 lt!2344969 (head!12822 (t!378303 s!2326))) (head!12822 (tail!11907 (t!378303 s!2326)))) (tail!11907 (tail!11907 (t!378303 s!2326)))))))

(assert (= (and d!1950632 c!1124414) b!6222557))

(assert (= (and d!1950632 (not c!1124414)) b!6222558))

(assert (=> d!1950632 m!7049012))

(assert (=> d!1950632 m!7049944))

(assert (=> b!6222557 m!7049302))

(declare-fun m!7050142 () Bool)

(assert (=> b!6222557 m!7050142))

(assert (=> b!6222558 m!7049012))

(assert (=> b!6222558 m!7049948))

(assert (=> b!6222558 m!7049302))

(assert (=> b!6222558 m!7049948))

(declare-fun m!7050144 () Bool)

(assert (=> b!6222558 m!7050144))

(assert (=> b!6222558 m!7049012))

(assert (=> b!6222558 m!7049952))

(assert (=> b!6222558 m!7050144))

(assert (=> b!6222558 m!7049952))

(declare-fun m!7050146 () Bool)

(assert (=> b!6222558 m!7050146))

(assert (=> b!6221636 d!1950632))

(declare-fun bs!1543056 () Bool)

(declare-fun d!1950634 () Bool)

(assert (= bs!1543056 (and d!1950634 b!6220909)))

(declare-fun lambda!340140 () Int)

(assert (=> bs!1543056 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340140 lambda!340023))))

(declare-fun bs!1543057 () Bool)

(assert (= bs!1543057 (and d!1950634 d!1950110)))

(assert (=> bs!1543057 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340140 lambda!340042))))

(declare-fun bs!1543058 () Bool)

(assert (= bs!1543058 (and d!1950634 d!1950528)))

(assert (=> bs!1543058 (= lambda!340140 lambda!340127)))

(declare-fun bs!1543059 () Bool)

(assert (= bs!1543059 (and d!1950634 d!1950556)))

(assert (=> bs!1543059 (= lambda!340140 lambda!340128)))

(assert (=> d!1950634 true))

(assert (=> d!1950634 (= (derivationStepZipper!2123 lt!2344969 (head!12822 (t!378303 s!2326))) (flatMap!1662 lt!2344969 lambda!340140))))

(declare-fun bs!1543060 () Bool)

(assert (= bs!1543060 d!1950634))

(declare-fun m!7050148 () Bool)

(assert (=> bs!1543060 m!7050148))

(assert (=> b!6221636 d!1950634))

(assert (=> b!6221636 d!1950530))

(assert (=> b!6221636 d!1950532))

(declare-fun d!1950636 () Bool)

(declare-fun c!1124415 () Bool)

(declare-fun e!3787729 () Bool)

(assert (=> d!1950636 (= c!1124415 e!3787729)))

(declare-fun res!2571745 () Bool)

(assert (=> d!1950636 (=> (not res!2571745) (not e!3787729))))

(assert (=> d!1950636 (= res!2571745 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344947))))))))

(declare-fun e!3787730 () (InoxSet Context!11082))

(assert (=> d!1950636 (= (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 lt!2344947))) (h!71095 s!2326)) e!3787730)))

(declare-fun b!6222559 () Bool)

(declare-fun e!3787731 () (InoxSet Context!11082))

(assert (=> b!6222559 (= e!3787730 e!3787731)))

(declare-fun c!1124416 () Bool)

(assert (=> b!6222559 (= c!1124416 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344947))))))))

(declare-fun b!6222560 () Bool)

(assert (=> b!6222560 (= e!3787729 (nullable!6150 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344947)))))))))

(declare-fun bm!522418 () Bool)

(declare-fun call!522423 () (InoxSet Context!11082))

(assert (=> bm!522418 (= call!522423 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344947))))) (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344947)))))) (h!71095 s!2326)))))

(declare-fun b!6222561 () Bool)

(assert (=> b!6222561 (= e!3787731 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6222562 () Bool)

(assert (=> b!6222562 (= e!3787730 ((_ map or) call!522423 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344947)))))) (h!71095 s!2326))))))

(declare-fun b!6222563 () Bool)

(assert (=> b!6222563 (= e!3787731 call!522423)))

(assert (= (and d!1950636 res!2571745) b!6222560))

(assert (= (and d!1950636 c!1124415) b!6222562))

(assert (= (and d!1950636 (not c!1124415)) b!6222559))

(assert (= (and b!6222559 c!1124416) b!6222563))

(assert (= (and b!6222559 (not c!1124416)) b!6222561))

(assert (= (or b!6222562 b!6222563) bm!522418))

(declare-fun m!7050150 () Bool)

(assert (=> b!6222560 m!7050150))

(declare-fun m!7050152 () Bool)

(assert (=> bm!522418 m!7050152))

(declare-fun m!7050154 () Bool)

(assert (=> b!6222562 m!7050154))

(assert (=> b!6221252 d!1950636))

(assert (=> b!6221601 d!1950384))

(declare-fun bs!1543061 () Bool)

(declare-fun d!1950638 () Bool)

(assert (= bs!1543061 (and d!1950638 d!1950454)))

(declare-fun lambda!340141 () Int)

(assert (=> bs!1543061 (= lambda!340141 lambda!340116)))

(declare-fun bs!1543062 () Bool)

(assert (= bs!1543062 (and d!1950638 d!1950522)))

(assert (=> bs!1543062 (= lambda!340141 lambda!340126)))

(assert (=> d!1950638 (= (nullableZipper!1931 lt!2344960) (exists!2491 lt!2344960 lambda!340141))))

(declare-fun bs!1543063 () Bool)

(assert (= bs!1543063 d!1950638))

(declare-fun m!7050156 () Bool)

(assert (=> bs!1543063 m!7050156))

(assert (=> b!6221639 d!1950638))

(assert (=> bs!1542811 d!1950206))

(assert (=> d!1950172 d!1950548))

(declare-fun d!1950640 () Bool)

(assert (=> d!1950640 true))

(declare-fun setRes!42270 () Bool)

(assert (=> d!1950640 setRes!42270))

(declare-fun condSetEmpty!42270 () Bool)

(declare-fun res!2571746 () (InoxSet Context!11082))

(assert (=> d!1950640 (= condSetEmpty!42270 (= res!2571746 ((as const (Array Context!11082 Bool)) false)))))

(assert (=> d!1950640 (= (choose!46228 lt!2344961 lambda!340023) res!2571746)))

(declare-fun setIsEmpty!42270 () Bool)

(assert (=> setIsEmpty!42270 setRes!42270))

(declare-fun setElem!42270 () Context!11082)

(declare-fun setNonEmpty!42270 () Bool)

(declare-fun tp!1735736 () Bool)

(declare-fun e!3787732 () Bool)

(assert (=> setNonEmpty!42270 (= setRes!42270 (and tp!1735736 (inv!83639 setElem!42270) e!3787732))))

(declare-fun setRest!42270 () (InoxSet Context!11082))

(assert (=> setNonEmpty!42270 (= res!2571746 ((_ map or) (store ((as const (Array Context!11082 Bool)) false) setElem!42270 true) setRest!42270))))

(declare-fun b!6222564 () Bool)

(declare-fun tp!1735735 () Bool)

(assert (=> b!6222564 (= e!3787732 tp!1735735)))

(assert (= (and d!1950640 condSetEmpty!42270) setIsEmpty!42270))

(assert (= (and d!1950640 (not condSetEmpty!42270)) setNonEmpty!42270))

(assert (= setNonEmpty!42270 b!6222564))

(declare-fun m!7050158 () Bool)

(assert (=> setNonEmpty!42270 m!7050158))

(assert (=> d!1950128 d!1950640))

(declare-fun b!6222565 () Bool)

(declare-fun e!3787736 () Bool)

(declare-fun e!3787733 () Bool)

(assert (=> b!6222565 (= e!3787736 e!3787733)))

(declare-fun res!2571751 () Bool)

(assert (=> b!6222565 (=> res!2571751 e!3787733)))

(declare-fun call!522424 () Bool)

(assert (=> b!6222565 (= res!2571751 call!522424)))

(declare-fun b!6222566 () Bool)

(declare-fun e!3787739 () Bool)

(declare-fun lt!2345091 () Bool)

(assert (=> b!6222566 (= e!3787739 (= lt!2345091 call!522424))))

(declare-fun bm!522419 () Bool)

(assert (=> bm!522419 (= call!522424 (isEmpty!36657 s!2326))))

(declare-fun b!6222567 () Bool)

(declare-fun res!2571754 () Bool)

(declare-fun e!3787737 () Bool)

(assert (=> b!6222567 (=> res!2571754 e!3787737)))

(declare-fun e!3787734 () Bool)

(assert (=> b!6222567 (= res!2571754 e!3787734)))

(declare-fun res!2571749 () Bool)

(assert (=> b!6222567 (=> (not res!2571749) (not e!3787734))))

(assert (=> b!6222567 (= res!2571749 lt!2345091)))

(declare-fun b!6222568 () Bool)

(declare-fun res!2571753 () Bool)

(assert (=> b!6222568 (=> (not res!2571753) (not e!3787734))))

(assert (=> b!6222568 (= res!2571753 (isEmpty!36657 (tail!11907 s!2326)))))

(declare-fun b!6222569 () Bool)

(declare-fun e!3787735 () Bool)

(assert (=> b!6222569 (= e!3787739 e!3787735)))

(declare-fun c!1124418 () Bool)

(assert (=> b!6222569 (= c!1124418 ((_ is EmptyLang!16157) (regTwo!32826 r!7292)))))

(declare-fun b!6222570 () Bool)

(assert (=> b!6222570 (= e!3787735 (not lt!2345091))))

(declare-fun b!6222571 () Bool)

(assert (=> b!6222571 (= e!3787733 (not (= (head!12822 s!2326) (c!1123967 (regTwo!32826 r!7292)))))))

(declare-fun b!6222572 () Bool)

(declare-fun e!3787738 () Bool)

(assert (=> b!6222572 (= e!3787738 (nullable!6150 (regTwo!32826 r!7292)))))

(declare-fun b!6222573 () Bool)

(assert (=> b!6222573 (= e!3787738 (matchR!8340 (derivativeStep!4870 (regTwo!32826 r!7292) (head!12822 s!2326)) (tail!11907 s!2326)))))

(declare-fun b!6222574 () Bool)

(declare-fun res!2571752 () Bool)

(assert (=> b!6222574 (=> (not res!2571752) (not e!3787734))))

(assert (=> b!6222574 (= res!2571752 (not call!522424))))

(declare-fun b!6222575 () Bool)

(assert (=> b!6222575 (= e!3787737 e!3787736)))

(declare-fun res!2571748 () Bool)

(assert (=> b!6222575 (=> (not res!2571748) (not e!3787736))))

(assert (=> b!6222575 (= res!2571748 (not lt!2345091))))

(declare-fun d!1950642 () Bool)

(assert (=> d!1950642 e!3787739))

(declare-fun c!1124419 () Bool)

(assert (=> d!1950642 (= c!1124419 ((_ is EmptyExpr!16157) (regTwo!32826 r!7292)))))

(assert (=> d!1950642 (= lt!2345091 e!3787738)))

(declare-fun c!1124417 () Bool)

(assert (=> d!1950642 (= c!1124417 (isEmpty!36657 s!2326))))

(assert (=> d!1950642 (validRegex!7893 (regTwo!32826 r!7292))))

(assert (=> d!1950642 (= (matchR!8340 (regTwo!32826 r!7292) s!2326) lt!2345091)))

(declare-fun b!6222576 () Bool)

(declare-fun res!2571750 () Bool)

(assert (=> b!6222576 (=> res!2571750 e!3787737)))

(assert (=> b!6222576 (= res!2571750 (not ((_ is ElementMatch!16157) (regTwo!32826 r!7292))))))

(assert (=> b!6222576 (= e!3787735 e!3787737)))

(declare-fun b!6222577 () Bool)

(declare-fun res!2571747 () Bool)

(assert (=> b!6222577 (=> res!2571747 e!3787733)))

(assert (=> b!6222577 (= res!2571747 (not (isEmpty!36657 (tail!11907 s!2326))))))

(declare-fun b!6222578 () Bool)

(assert (=> b!6222578 (= e!3787734 (= (head!12822 s!2326) (c!1123967 (regTwo!32826 r!7292))))))

(assert (= (and d!1950642 c!1124417) b!6222572))

(assert (= (and d!1950642 (not c!1124417)) b!6222573))

(assert (= (and d!1950642 c!1124419) b!6222566))

(assert (= (and d!1950642 (not c!1124419)) b!6222569))

(assert (= (and b!6222569 c!1124418) b!6222570))

(assert (= (and b!6222569 (not c!1124418)) b!6222576))

(assert (= (and b!6222576 (not res!2571750)) b!6222567))

(assert (= (and b!6222567 res!2571749) b!6222574))

(assert (= (and b!6222574 res!2571752) b!6222568))

(assert (= (and b!6222568 res!2571753) b!6222578))

(assert (= (and b!6222567 (not res!2571754)) b!6222575))

(assert (= (and b!6222575 res!2571748) b!6222565))

(assert (= (and b!6222565 (not res!2571751)) b!6222577))

(assert (= (and b!6222577 (not res!2571747)) b!6222571))

(assert (= (or b!6222566 b!6222565 b!6222574) bm!522419))

(assert (=> b!6222572 m!7050004))

(assert (=> bm!522419 m!7049244))

(assert (=> b!6222571 m!7049254))

(assert (=> b!6222578 m!7049254))

(assert (=> d!1950642 m!7049244))

(assert (=> d!1950642 m!7050010))

(assert (=> b!6222573 m!7049254))

(assert (=> b!6222573 m!7049254))

(declare-fun m!7050160 () Bool)

(assert (=> b!6222573 m!7050160))

(assert (=> b!6222573 m!7049258))

(assert (=> b!6222573 m!7050160))

(assert (=> b!6222573 m!7049258))

(declare-fun m!7050162 () Bool)

(assert (=> b!6222573 m!7050162))

(assert (=> b!6222577 m!7049258))

(assert (=> b!6222577 m!7049258))

(assert (=> b!6222577 m!7049262))

(assert (=> b!6222568 m!7049258))

(assert (=> b!6222568 m!7049258))

(assert (=> b!6222568 m!7049262))

(assert (=> b!6221372 d!1950642))

(declare-fun d!1950644 () Bool)

(declare-fun c!1124420 () Bool)

(assert (=> d!1950644 (= c!1124420 (isEmpty!36657 (tail!11907 (t!378303 s!2326))))))

(declare-fun e!3787740 () Bool)

(assert (=> d!1950644 (= (matchZipper!2169 (derivationStepZipper!2123 lt!2344967 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))) e!3787740)))

(declare-fun b!6222579 () Bool)

(assert (=> b!6222579 (= e!3787740 (nullableZipper!1931 (derivationStepZipper!2123 lt!2344967 (head!12822 (t!378303 s!2326)))))))

(declare-fun b!6222580 () Bool)

(assert (=> b!6222580 (= e!3787740 (matchZipper!2169 (derivationStepZipper!2123 (derivationStepZipper!2123 lt!2344967 (head!12822 (t!378303 s!2326))) (head!12822 (tail!11907 (t!378303 s!2326)))) (tail!11907 (tail!11907 (t!378303 s!2326)))))))

(assert (= (and d!1950644 c!1124420) b!6222579))

(assert (= (and d!1950644 (not c!1124420)) b!6222580))

(assert (=> d!1950644 m!7049012))

(assert (=> d!1950644 m!7049944))

(assert (=> b!6222579 m!7049198))

(declare-fun m!7050164 () Bool)

(assert (=> b!6222579 m!7050164))

(assert (=> b!6222580 m!7049012))

(assert (=> b!6222580 m!7049948))

(assert (=> b!6222580 m!7049198))

(assert (=> b!6222580 m!7049948))

(declare-fun m!7050166 () Bool)

(assert (=> b!6222580 m!7050166))

(assert (=> b!6222580 m!7049012))

(assert (=> b!6222580 m!7049952))

(assert (=> b!6222580 m!7050166))

(assert (=> b!6222580 m!7049952))

(declare-fun m!7050168 () Bool)

(assert (=> b!6222580 m!7050168))

(assert (=> b!6221425 d!1950644))

(declare-fun bs!1543064 () Bool)

(declare-fun d!1950646 () Bool)

(assert (= bs!1543064 (and d!1950646 b!6220909)))

(declare-fun lambda!340142 () Int)

(assert (=> bs!1543064 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340142 lambda!340023))))

(declare-fun bs!1543065 () Bool)

(assert (= bs!1543065 (and d!1950646 d!1950528)))

(assert (=> bs!1543065 (= lambda!340142 lambda!340127)))

(declare-fun bs!1543066 () Bool)

(assert (= bs!1543066 (and d!1950646 d!1950634)))

(assert (=> bs!1543066 (= lambda!340142 lambda!340140)))

(declare-fun bs!1543067 () Bool)

(assert (= bs!1543067 (and d!1950646 d!1950110)))

(assert (=> bs!1543067 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340142 lambda!340042))))

(declare-fun bs!1543068 () Bool)

(assert (= bs!1543068 (and d!1950646 d!1950556)))

(assert (=> bs!1543068 (= lambda!340142 lambda!340128)))

(assert (=> d!1950646 true))

(assert (=> d!1950646 (= (derivationStepZipper!2123 lt!2344967 (head!12822 (t!378303 s!2326))) (flatMap!1662 lt!2344967 lambda!340142))))

(declare-fun bs!1543069 () Bool)

(assert (= bs!1543069 d!1950646))

(declare-fun m!7050170 () Bool)

(assert (=> bs!1543069 m!7050170))

(assert (=> b!6221425 d!1950646))

(assert (=> b!6221425 d!1950530))

(assert (=> b!6221425 d!1950532))

(declare-fun d!1950648 () Bool)

(assert (=> d!1950648 true))

(assert (=> d!1950648 true))

(declare-fun res!2571757 () Bool)

(assert (=> d!1950648 (= (choose!46231 lambda!340022) res!2571757)))

(assert (=> d!1950154 d!1950648))

(declare-fun b!6222595 () Bool)

(declare-fun e!3787755 () Bool)

(declare-fun call!522430 () Bool)

(assert (=> b!6222595 (= e!3787755 call!522430)))

(declare-fun d!1950650 () Bool)

(declare-fun res!2571768 () Bool)

(declare-fun e!3787758 () Bool)

(assert (=> d!1950650 (=> res!2571768 e!3787758)))

(assert (=> d!1950650 (= res!2571768 ((_ is EmptyExpr!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(assert (=> d!1950650 (= (nullableFct!2106 (h!71094 (exprs!6041 (h!71096 zl!343)))) e!3787758)))

(declare-fun b!6222596 () Bool)

(declare-fun e!3787754 () Bool)

(assert (=> b!6222596 (= e!3787754 e!3787755)))

(declare-fun res!2571771 () Bool)

(declare-fun call!522429 () Bool)

(assert (=> b!6222596 (= res!2571771 call!522429)))

(assert (=> b!6222596 (=> res!2571771 e!3787755)))

(declare-fun b!6222597 () Bool)

(declare-fun e!3787753 () Bool)

(declare-fun e!3787757 () Bool)

(assert (=> b!6222597 (= e!3787753 e!3787757)))

(declare-fun res!2571769 () Bool)

(assert (=> b!6222597 (=> res!2571769 e!3787757)))

(assert (=> b!6222597 (= res!2571769 ((_ is Star!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6222598 () Bool)

(declare-fun e!3787756 () Bool)

(assert (=> b!6222598 (= e!3787756 call!522430)))

(declare-fun bm!522424 () Bool)

(declare-fun c!1124423 () Bool)

(assert (=> bm!522424 (= call!522429 (nullable!6150 (ite c!1124423 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))

(declare-fun b!6222599 () Bool)

(assert (=> b!6222599 (= e!3787754 e!3787756)))

(declare-fun res!2571772 () Bool)

(assert (=> b!6222599 (= res!2571772 call!522429)))

(assert (=> b!6222599 (=> (not res!2571772) (not e!3787756))))

(declare-fun bm!522425 () Bool)

(assert (=> bm!522425 (= call!522430 (nullable!6150 (ite c!1124423 (regTwo!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regTwo!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))

(declare-fun b!6222600 () Bool)

(assert (=> b!6222600 (= e!3787757 e!3787754)))

(assert (=> b!6222600 (= c!1124423 ((_ is Union!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6222601 () Bool)

(assert (=> b!6222601 (= e!3787758 e!3787753)))

(declare-fun res!2571770 () Bool)

(assert (=> b!6222601 (=> (not res!2571770) (not e!3787753))))

(assert (=> b!6222601 (= res!2571770 (and (not ((_ is EmptyLang!16157) (h!71094 (exprs!6041 (h!71096 zl!343))))) (not ((_ is ElementMatch!16157) (h!71094 (exprs!6041 (h!71096 zl!343)))))))))

(assert (= (and d!1950650 (not res!2571768)) b!6222601))

(assert (= (and b!6222601 res!2571770) b!6222597))

(assert (= (and b!6222597 (not res!2571769)) b!6222600))

(assert (= (and b!6222600 c!1124423) b!6222596))

(assert (= (and b!6222600 (not c!1124423)) b!6222599))

(assert (= (and b!6222596 (not res!2571771)) b!6222595))

(assert (= (and b!6222599 res!2571772) b!6222598))

(assert (= (or b!6222595 b!6222598) bm!522425))

(assert (= (or b!6222596 b!6222599) bm!522424))

(declare-fun m!7050172 () Bool)

(assert (=> bm!522424 m!7050172))

(declare-fun m!7050174 () Bool)

(assert (=> bm!522425 m!7050174))

(assert (=> d!1950210 d!1950650))

(declare-fun bm!522426 () Bool)

(declare-fun call!522433 () Bool)

(declare-fun c!1124424 () Bool)

(assert (=> bm!522426 (= call!522433 (validRegex!7893 (ite c!1124424 (regTwo!32827 lt!2345046) (regTwo!32826 lt!2345046))))))

(declare-fun d!1950652 () Bool)

(declare-fun res!2571775 () Bool)

(declare-fun e!3787764 () Bool)

(assert (=> d!1950652 (=> res!2571775 e!3787764)))

(assert (=> d!1950652 (= res!2571775 ((_ is ElementMatch!16157) lt!2345046))))

(assert (=> d!1950652 (= (validRegex!7893 lt!2345046) e!3787764)))

(declare-fun b!6222602 () Bool)

(declare-fun e!3787763 () Bool)

(declare-fun e!3787760 () Bool)

(assert (=> b!6222602 (= e!3787763 e!3787760)))

(declare-fun res!2571776 () Bool)

(assert (=> b!6222602 (= res!2571776 (not (nullable!6150 (reg!16486 lt!2345046))))))

(assert (=> b!6222602 (=> (not res!2571776) (not e!3787760))))

(declare-fun b!6222603 () Bool)

(declare-fun e!3787762 () Bool)

(assert (=> b!6222603 (= e!3787763 e!3787762)))

(assert (=> b!6222603 (= c!1124424 ((_ is Union!16157) lt!2345046))))

(declare-fun b!6222604 () Bool)

(declare-fun res!2571777 () Bool)

(declare-fun e!3787761 () Bool)

(assert (=> b!6222604 (=> (not res!2571777) (not e!3787761))))

(declare-fun call!522431 () Bool)

(assert (=> b!6222604 (= res!2571777 call!522431)))

(assert (=> b!6222604 (= e!3787762 e!3787761)))

(declare-fun b!6222605 () Bool)

(declare-fun e!3787759 () Bool)

(declare-fun e!3787765 () Bool)

(assert (=> b!6222605 (= e!3787759 e!3787765)))

(declare-fun res!2571774 () Bool)

(assert (=> b!6222605 (=> (not res!2571774) (not e!3787765))))

(assert (=> b!6222605 (= res!2571774 call!522431)))

(declare-fun b!6222606 () Bool)

(assert (=> b!6222606 (= e!3787765 call!522433)))

(declare-fun b!6222607 () Bool)

(assert (=> b!6222607 (= e!3787761 call!522433)))

(declare-fun b!6222608 () Bool)

(declare-fun call!522432 () Bool)

(assert (=> b!6222608 (= e!3787760 call!522432)))

(declare-fun bm!522427 () Bool)

(assert (=> bm!522427 (= call!522431 call!522432)))

(declare-fun c!1124425 () Bool)

(declare-fun bm!522428 () Bool)

(assert (=> bm!522428 (= call!522432 (validRegex!7893 (ite c!1124425 (reg!16486 lt!2345046) (ite c!1124424 (regOne!32827 lt!2345046) (regOne!32826 lt!2345046)))))))

(declare-fun b!6222609 () Bool)

(declare-fun res!2571773 () Bool)

(assert (=> b!6222609 (=> res!2571773 e!3787759)))

(assert (=> b!6222609 (= res!2571773 (not ((_ is Concat!25002) lt!2345046)))))

(assert (=> b!6222609 (= e!3787762 e!3787759)))

(declare-fun b!6222610 () Bool)

(assert (=> b!6222610 (= e!3787764 e!3787763)))

(assert (=> b!6222610 (= c!1124425 ((_ is Star!16157) lt!2345046))))

(assert (= (and d!1950652 (not res!2571775)) b!6222610))

(assert (= (and b!6222610 c!1124425) b!6222602))

(assert (= (and b!6222610 (not c!1124425)) b!6222603))

(assert (= (and b!6222602 res!2571776) b!6222608))

(assert (= (and b!6222603 c!1124424) b!6222604))

(assert (= (and b!6222603 (not c!1124424)) b!6222609))

(assert (= (and b!6222604 res!2571777) b!6222607))

(assert (= (and b!6222609 (not res!2571773)) b!6222605))

(assert (= (and b!6222605 res!2571774) b!6222606))

(assert (= (or b!6222607 b!6222606) bm!522426))

(assert (= (or b!6222604 b!6222605) bm!522427))

(assert (= (or b!6222608 bm!522427) bm!522428))

(declare-fun m!7050176 () Bool)

(assert (=> bm!522426 m!7050176))

(declare-fun m!7050178 () Bool)

(assert (=> b!6222602 m!7050178))

(declare-fun m!7050180 () Bool)

(assert (=> bm!522428 m!7050180))

(assert (=> d!1950174 d!1950652))

(declare-fun d!1950654 () Bool)

(declare-fun res!2571778 () Bool)

(declare-fun e!3787766 () Bool)

(assert (=> d!1950654 (=> res!2571778 e!3787766)))

(assert (=> d!1950654 (= res!2571778 ((_ is Nil!64646) (unfocusZipperList!1578 zl!343)))))

(assert (=> d!1950654 (= (forall!15271 (unfocusZipperList!1578 zl!343) lambda!340077) e!3787766)))

(declare-fun b!6222611 () Bool)

(declare-fun e!3787767 () Bool)

(assert (=> b!6222611 (= e!3787766 e!3787767)))

(declare-fun res!2571779 () Bool)

(assert (=> b!6222611 (=> (not res!2571779) (not e!3787767))))

(assert (=> b!6222611 (= res!2571779 (dynLambda!25509 lambda!340077 (h!71094 (unfocusZipperList!1578 zl!343))))))

(declare-fun b!6222612 () Bool)

(assert (=> b!6222612 (= e!3787767 (forall!15271 (t!378302 (unfocusZipperList!1578 zl!343)) lambda!340077))))

(assert (= (and d!1950654 (not res!2571778)) b!6222611))

(assert (= (and b!6222611 res!2571779) b!6222612))

(declare-fun b_lambda!236575 () Bool)

(assert (=> (not b_lambda!236575) (not b!6222611)))

(declare-fun m!7050182 () Bool)

(assert (=> b!6222611 m!7050182))

(declare-fun m!7050184 () Bool)

(assert (=> b!6222612 m!7050184))

(assert (=> d!1950174 d!1950654))

(declare-fun b!6222614 () Bool)

(declare-fun e!3787768 () (InoxSet Context!11082))

(declare-fun e!3787771 () (InoxSet Context!11082))

(assert (=> b!6222614 (= e!3787768 e!3787771)))

(declare-fun c!1124428 () Bool)

(assert (=> b!6222614 (= c!1124428 ((_ is Union!16157) (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))))))

(declare-fun b!6222615 () Bool)

(declare-fun e!3787769 () (InoxSet Context!11082))

(declare-fun call!522435 () (InoxSet Context!11082))

(assert (=> b!6222615 (= e!3787769 call!522435)))

(declare-fun b!6222616 () Bool)

(declare-fun call!522436 () (InoxSet Context!11082))

(declare-fun call!522438 () (InoxSet Context!11082))

(assert (=> b!6222616 (= e!3787771 ((_ map or) call!522436 call!522438))))

(declare-fun c!1124426 () Bool)

(declare-fun c!1124427 () Bool)

(declare-fun bm!522429 () Bool)

(declare-fun call!522434 () List!64770)

(assert (=> bm!522429 (= call!522438 (derivationStepZipperDown!1405 (ite c!1124428 (regTwo!32827 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))) (ite c!1124427 (regTwo!32826 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))) (ite c!1124426 (regOne!32826 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))) (reg!16486 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292)))))))))) (ite (or c!1124428 c!1124427) (ite (or c!1124061 c!1124060) lt!2344958 (Context!11083 call!522198)) (Context!11083 call!522434)) (h!71095 s!2326)))))

(declare-fun b!6222617 () Bool)

(declare-fun e!3787773 () (InoxSet Context!11082))

(declare-fun call!522439 () (InoxSet Context!11082))

(assert (=> b!6222617 (= e!3787773 ((_ map or) call!522436 call!522439))))

(declare-fun call!522437 () List!64770)

(declare-fun bm!522430 () Bool)

(assert (=> bm!522430 (= call!522436 (derivationStepZipperDown!1405 (ite c!1124428 (regOne!32827 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))) (regOne!32826 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292)))))))) (ite c!1124428 (ite (or c!1124061 c!1124060) lt!2344958 (Context!11083 call!522198)) (Context!11083 call!522437)) (h!71095 s!2326)))))

(declare-fun bm!522431 () Bool)

(assert (=> bm!522431 (= call!522439 call!522438)))

(declare-fun c!1124430 () Bool)

(declare-fun b!6222618 () Bool)

(assert (=> b!6222618 (= c!1124430 ((_ is Star!16157) (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))))))

(declare-fun e!3787770 () (InoxSet Context!11082))

(assert (=> b!6222618 (= e!3787769 e!3787770)))

(declare-fun b!6222619 () Bool)

(assert (=> b!6222619 (= e!3787768 (store ((as const (Array Context!11082 Bool)) false) (ite (or c!1124061 c!1124060) lt!2344958 (Context!11083 call!522198)) true))))

(declare-fun b!6222613 () Bool)

(declare-fun e!3787772 () Bool)

(assert (=> b!6222613 (= c!1124427 e!3787772)))

(declare-fun res!2571780 () Bool)

(assert (=> b!6222613 (=> (not res!2571780) (not e!3787772))))

(assert (=> b!6222613 (= res!2571780 ((_ is Concat!25002) (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))))))

(assert (=> b!6222613 (= e!3787771 e!3787773)))

(declare-fun d!1950656 () Bool)

(declare-fun c!1124429 () Bool)

(assert (=> d!1950656 (= c!1124429 (and ((_ is ElementMatch!16157) (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))) (= (c!1123967 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))) (h!71095 s!2326))))))

(assert (=> d!1950656 (= (derivationStepZipperDown!1405 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292)))))) (ite (or c!1124061 c!1124060) lt!2344958 (Context!11083 call!522198)) (h!71095 s!2326)) e!3787768)))

(declare-fun b!6222620 () Bool)

(assert (=> b!6222620 (= e!3787770 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522432 () Bool)

(assert (=> bm!522432 (= call!522434 call!522437)))

(declare-fun b!6222621 () Bool)

(assert (=> b!6222621 (= e!3787772 (nullable!6150 (regOne!32826 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292)))))))))))

(declare-fun b!6222622 () Bool)

(assert (=> b!6222622 (= e!3787770 call!522435)))

(declare-fun bm!522433 () Bool)

(assert (=> bm!522433 (= call!522435 call!522439)))

(declare-fun b!6222623 () Bool)

(assert (=> b!6222623 (= e!3787773 e!3787769)))

(assert (=> b!6222623 (= c!1124426 ((_ is Concat!25002) (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))))))

(declare-fun bm!522434 () Bool)

(assert (=> bm!522434 (= call!522437 ($colon$colon!2026 (exprs!6041 (ite (or c!1124061 c!1124060) lt!2344958 (Context!11083 call!522198))) (ite (or c!1124427 c!1124426) (regTwo!32826 (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292))))))) (ite c!1124061 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124060 (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (ite c!1124059 (regOne!32826 (regOne!32826 (regOne!32826 r!7292))) (reg!16486 (regOne!32826 (regOne!32826 r!7292)))))))))))

(assert (= (and d!1950656 c!1124429) b!6222619))

(assert (= (and d!1950656 (not c!1124429)) b!6222614))

(assert (= (and b!6222614 c!1124428) b!6222616))

(assert (= (and b!6222614 (not c!1124428)) b!6222613))

(assert (= (and b!6222613 res!2571780) b!6222621))

(assert (= (and b!6222613 c!1124427) b!6222617))

(assert (= (and b!6222613 (not c!1124427)) b!6222623))

(assert (= (and b!6222623 c!1124426) b!6222615))

(assert (= (and b!6222623 (not c!1124426)) b!6222618))

(assert (= (and b!6222618 c!1124430) b!6222622))

(assert (= (and b!6222618 (not c!1124430)) b!6222620))

(assert (= (or b!6222615 b!6222622) bm!522432))

(assert (= (or b!6222615 b!6222622) bm!522433))

(assert (= (or b!6222617 bm!522432) bm!522434))

(assert (= (or b!6222617 bm!522433) bm!522431))

(assert (= (or b!6222616 bm!522431) bm!522429))

(assert (= (or b!6222616 b!6222617) bm!522430))

(declare-fun m!7050186 () Bool)

(assert (=> bm!522434 m!7050186))

(declare-fun m!7050188 () Bool)

(assert (=> b!6222621 m!7050188))

(declare-fun m!7050190 () Bool)

(assert (=> bm!522429 m!7050190))

(declare-fun m!7050192 () Bool)

(assert (=> bm!522430 m!7050192))

(declare-fun m!7050194 () Bool)

(assert (=> b!6222619 m!7050194))

(assert (=> bm!522193 d!1950656))

(declare-fun b!6222625 () Bool)

(declare-fun e!3787774 () (InoxSet Context!11082))

(declare-fun e!3787777 () (InoxSet Context!11082))

(assert (=> b!6222625 (= e!3787774 e!3787777)))

(declare-fun c!1124433 () Bool)

(assert (=> b!6222625 (= c!1124433 ((_ is Union!16157) (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))

(declare-fun b!6222626 () Bool)

(declare-fun e!3787775 () (InoxSet Context!11082))

(declare-fun call!522441 () (InoxSet Context!11082))

(assert (=> b!6222626 (= e!3787775 call!522441)))

(declare-fun b!6222627 () Bool)

(declare-fun call!522442 () (InoxSet Context!11082))

(declare-fun call!522444 () (InoxSet Context!11082))

(assert (=> b!6222627 (= e!3787777 ((_ map or) call!522442 call!522444))))

(declare-fun call!522440 () List!64770)

(declare-fun c!1124431 () Bool)

(declare-fun c!1124432 () Bool)

(declare-fun bm!522435 () Bool)

(assert (=> bm!522435 (= call!522444 (derivationStepZipperDown!1405 (ite c!1124433 (regTwo!32827 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))) (ite c!1124432 (regTwo!32826 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))) (ite c!1124431 (regOne!32826 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))) (reg!16486 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))))))) (ite (or c!1124433 c!1124432) (ite c!1124179 lt!2344955 (Context!11083 call!522236)) (Context!11083 call!522440)) (h!71095 s!2326)))))

(declare-fun b!6222628 () Bool)

(declare-fun e!3787779 () (InoxSet Context!11082))

(declare-fun call!522445 () (InoxSet Context!11082))

(assert (=> b!6222628 (= e!3787779 ((_ map or) call!522442 call!522445))))

(declare-fun call!522443 () List!64770)

(declare-fun bm!522436 () Bool)

(assert (=> bm!522436 (= call!522442 (derivationStepZipperDown!1405 (ite c!1124433 (regOne!32827 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))) (regOne!32826 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))))) (ite c!1124433 (ite c!1124179 lt!2344955 (Context!11083 call!522236)) (Context!11083 call!522443)) (h!71095 s!2326)))))

(declare-fun bm!522437 () Bool)

(assert (=> bm!522437 (= call!522445 call!522444)))

(declare-fun b!6222629 () Bool)

(declare-fun c!1124435 () Bool)

(assert (=> b!6222629 (= c!1124435 ((_ is Star!16157) (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))

(declare-fun e!3787776 () (InoxSet Context!11082))

(assert (=> b!6222629 (= e!3787775 e!3787776)))

(declare-fun b!6222630 () Bool)

(assert (=> b!6222630 (= e!3787774 (store ((as const (Array Context!11082 Bool)) false) (ite c!1124179 lt!2344955 (Context!11083 call!522236)) true))))

(declare-fun b!6222624 () Bool)

(declare-fun e!3787778 () Bool)

(assert (=> b!6222624 (= c!1124432 e!3787778)))

(declare-fun res!2571781 () Bool)

(assert (=> b!6222624 (=> (not res!2571781) (not e!3787778))))

(assert (=> b!6222624 (= res!2571781 ((_ is Concat!25002) (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))

(assert (=> b!6222624 (= e!3787777 e!3787779)))

(declare-fun c!1124434 () Bool)

(declare-fun d!1950658 () Bool)

(assert (=> d!1950658 (= c!1124434 (and ((_ is ElementMatch!16157) (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))) (= (c!1123967 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))) (h!71095 s!2326))))))

(assert (=> d!1950658 (= (derivationStepZipperDown!1405 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))) (ite c!1124179 lt!2344955 (Context!11083 call!522236)) (h!71095 s!2326)) e!3787774)))

(declare-fun b!6222631 () Bool)

(assert (=> b!6222631 (= e!3787776 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522438 () Bool)

(assert (=> bm!522438 (= call!522440 call!522443)))

(declare-fun b!6222632 () Bool)

(assert (=> b!6222632 (= e!3787778 (nullable!6150 (regOne!32826 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))))))))

(declare-fun b!6222633 () Bool)

(assert (=> b!6222633 (= e!3787776 call!522441)))

(declare-fun bm!522439 () Bool)

(assert (=> bm!522439 (= call!522441 call!522445)))

(declare-fun b!6222634 () Bool)

(assert (=> b!6222634 (= e!3787779 e!3787775)))

(assert (=> b!6222634 (= c!1124431 ((_ is Concat!25002) (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))))))

(declare-fun bm!522440 () Bool)

(assert (=> bm!522440 (= call!522443 ($colon$colon!2026 (exprs!6041 (ite c!1124179 lt!2344955 (Context!11083 call!522236))) (ite (or c!1124432 c!1124431) (regTwo!32826 (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343)))))) (ite c!1124179 (regOne!32827 (h!71094 (exprs!6041 (h!71096 zl!343)))) (regOne!32826 (h!71094 (exprs!6041 (h!71096 zl!343))))))))))

(assert (= (and d!1950658 c!1124434) b!6222630))

(assert (= (and d!1950658 (not c!1124434)) b!6222625))

(assert (= (and b!6222625 c!1124433) b!6222627))

(assert (= (and b!6222625 (not c!1124433)) b!6222624))

(assert (= (and b!6222624 res!2571781) b!6222632))

(assert (= (and b!6222624 c!1124432) b!6222628))

(assert (= (and b!6222624 (not c!1124432)) b!6222634))

(assert (= (and b!6222634 c!1124431) b!6222626))

(assert (= (and b!6222634 (not c!1124431)) b!6222629))

(assert (= (and b!6222629 c!1124435) b!6222633))

(assert (= (and b!6222629 (not c!1124435)) b!6222631))

(assert (= (or b!6222626 b!6222633) bm!522438))

(assert (= (or b!6222626 b!6222633) bm!522439))

(assert (= (or b!6222628 bm!522438) bm!522440))

(assert (= (or b!6222628 bm!522439) bm!522437))

(assert (= (or b!6222627 bm!522437) bm!522435))

(assert (= (or b!6222627 b!6222628) bm!522436))

(declare-fun m!7050196 () Bool)

(assert (=> bm!522440 m!7050196))

(declare-fun m!7050198 () Bool)

(assert (=> b!6222632 m!7050198))

(declare-fun m!7050200 () Bool)

(assert (=> bm!522435 m!7050200))

(declare-fun m!7050202 () Bool)

(assert (=> bm!522436 m!7050202))

(declare-fun m!7050204 () Bool)

(assert (=> b!6222630 m!7050204))

(assert (=> bm!522229 d!1950658))

(declare-fun bs!1543070 () Bool)

(declare-fun d!1950660 () Bool)

(assert (= bs!1543070 (and d!1950660 d!1950454)))

(declare-fun lambda!340143 () Int)

(assert (=> bs!1543070 (= lambda!340143 lambda!340116)))

(declare-fun bs!1543071 () Bool)

(assert (= bs!1543071 (and d!1950660 d!1950522)))

(assert (=> bs!1543071 (= lambda!340143 lambda!340126)))

(declare-fun bs!1543072 () Bool)

(assert (= bs!1543072 (and d!1950660 d!1950638)))

(assert (=> bs!1543072 (= lambda!340143 lambda!340141)))

(assert (=> d!1950660 (= (nullableZipper!1931 lt!2344951) (exists!2491 lt!2344951 lambda!340143))))

(declare-fun bs!1543073 () Bool)

(assert (= bs!1543073 d!1950660))

(declare-fun m!7050206 () Bool)

(assert (=> bs!1543073 m!7050206))

(assert (=> b!6221637 d!1950660))

(assert (=> d!1950226 d!1950228))

(assert (=> d!1950226 d!1950214))

(declare-fun d!1950662 () Bool)

(declare-fun e!3787780 () Bool)

(assert (=> d!1950662 (= (matchZipper!2169 ((_ map or) lt!2344969 lt!2344967) (t!378303 s!2326)) e!3787780)))

(declare-fun res!2571782 () Bool)

(assert (=> d!1950662 (=> res!2571782 e!3787780)))

(assert (=> d!1950662 (= res!2571782 (matchZipper!2169 lt!2344969 (t!378303 s!2326)))))

(assert (=> d!1950662 true))

(declare-fun _$48!1908 () Unit!157959)

(assert (=> d!1950662 (= (choose!46238 lt!2344969 lt!2344967 (t!378303 s!2326)) _$48!1908)))

(declare-fun b!6222635 () Bool)

(assert (=> b!6222635 (= e!3787780 (matchZipper!2169 lt!2344967 (t!378303 s!2326)))))

(assert (= (and d!1950662 (not res!2571782)) b!6222635))

(assert (=> d!1950662 m!7048782))

(assert (=> d!1950662 m!7048780))

(assert (=> b!6222635 m!7048730))

(assert (=> d!1950226 d!1950662))

(declare-fun d!1950664 () Bool)

(assert (=> d!1950664 (= (isEmptyExpr!1567 lt!2345003) ((_ is EmptyExpr!16157) lt!2345003))))

(assert (=> b!6221321 d!1950664))

(declare-fun d!1950666 () Bool)

(assert (=> d!1950666 (= (isEmpty!36655 (unfocusZipperList!1578 zl!343)) ((_ is Nil!64646) (unfocusZipperList!1578 zl!343)))))

(assert (=> b!6221456 d!1950666))

(declare-fun b!6222645 () Bool)

(declare-fun e!3787786 () List!64771)

(assert (=> b!6222645 (= e!3787786 (Cons!64647 (h!71095 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647))) (++!14234 (t!378303 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647))) (t!378303 s!2326))))))

(declare-fun d!1950668 () Bool)

(declare-fun e!3787785 () Bool)

(assert (=> d!1950668 e!3787785))

(declare-fun res!2571787 () Bool)

(assert (=> d!1950668 (=> (not res!2571787) (not e!3787785))))

(declare-fun lt!2345094 () List!64771)

(declare-fun content!12110 (List!64771) (InoxSet C!32584))

(assert (=> d!1950668 (= res!2571787 (= (content!12110 lt!2345094) ((_ map or) (content!12110 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647))) (content!12110 (t!378303 s!2326)))))))

(assert (=> d!1950668 (= lt!2345094 e!3787786)))

(declare-fun c!1124438 () Bool)

(assert (=> d!1950668 (= c!1124438 ((_ is Nil!64647) (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647))))))

(assert (=> d!1950668 (= (++!14234 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) (t!378303 s!2326)) lt!2345094)))

(declare-fun b!6222644 () Bool)

(assert (=> b!6222644 (= e!3787786 (t!378303 s!2326))))

(declare-fun b!6222647 () Bool)

(assert (=> b!6222647 (= e!3787785 (or (not (= (t!378303 s!2326) Nil!64647)) (= lt!2345094 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)))))))

(declare-fun b!6222646 () Bool)

(declare-fun res!2571788 () Bool)

(assert (=> b!6222646 (=> (not res!2571788) (not e!3787785))))

(declare-fun size!40284 (List!64771) Int)

(assert (=> b!6222646 (= res!2571788 (= (size!40284 lt!2345094) (+ (size!40284 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647))) (size!40284 (t!378303 s!2326)))))))

(assert (= (and d!1950668 c!1124438) b!6222644))

(assert (= (and d!1950668 (not c!1124438)) b!6222645))

(assert (= (and d!1950668 res!2571787) b!6222646))

(assert (= (and b!6222646 res!2571788) b!6222647))

(declare-fun m!7050208 () Bool)

(assert (=> b!6222645 m!7050208))

(declare-fun m!7050210 () Bool)

(assert (=> d!1950668 m!7050210))

(assert (=> d!1950668 m!7049132))

(declare-fun m!7050212 () Bool)

(assert (=> d!1950668 m!7050212))

(declare-fun m!7050214 () Bool)

(assert (=> d!1950668 m!7050214))

(declare-fun m!7050216 () Bool)

(assert (=> b!6222646 m!7050216))

(assert (=> b!6222646 m!7049132))

(declare-fun m!7050218 () Bool)

(assert (=> b!6222646 m!7050218))

(declare-fun m!7050220 () Bool)

(assert (=> b!6222646 m!7050220))

(assert (=> b!6221377 d!1950668))

(declare-fun b!6222649 () Bool)

(declare-fun e!3787788 () List!64771)

(assert (=> b!6222649 (= e!3787788 (Cons!64647 (h!71095 Nil!64647) (++!14234 (t!378303 Nil!64647) (Cons!64647 (h!71095 s!2326) Nil!64647))))))

(declare-fun d!1950670 () Bool)

(declare-fun e!3787787 () Bool)

(assert (=> d!1950670 e!3787787))

(declare-fun res!2571789 () Bool)

(assert (=> d!1950670 (=> (not res!2571789) (not e!3787787))))

(declare-fun lt!2345095 () List!64771)

(assert (=> d!1950670 (= res!2571789 (= (content!12110 lt!2345095) ((_ map or) (content!12110 Nil!64647) (content!12110 (Cons!64647 (h!71095 s!2326) Nil!64647)))))))

(assert (=> d!1950670 (= lt!2345095 e!3787788)))

(declare-fun c!1124439 () Bool)

(assert (=> d!1950670 (= c!1124439 ((_ is Nil!64647) Nil!64647))))

(assert (=> d!1950670 (= (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) lt!2345095)))

(declare-fun b!6222648 () Bool)

(assert (=> b!6222648 (= e!3787788 (Cons!64647 (h!71095 s!2326) Nil!64647))))

(declare-fun b!6222651 () Bool)

(assert (=> b!6222651 (= e!3787787 (or (not (= (Cons!64647 (h!71095 s!2326) Nil!64647) Nil!64647)) (= lt!2345095 Nil!64647)))))

(declare-fun b!6222650 () Bool)

(declare-fun res!2571790 () Bool)

(assert (=> b!6222650 (=> (not res!2571790) (not e!3787787))))

(assert (=> b!6222650 (= res!2571790 (= (size!40284 lt!2345095) (+ (size!40284 Nil!64647) (size!40284 (Cons!64647 (h!71095 s!2326) Nil!64647)))))))

(assert (= (and d!1950670 c!1124439) b!6222648))

(assert (= (and d!1950670 (not c!1124439)) b!6222649))

(assert (= (and d!1950670 res!2571789) b!6222650))

(assert (= (and b!6222650 res!2571790) b!6222651))

(declare-fun m!7050222 () Bool)

(assert (=> b!6222649 m!7050222))

(declare-fun m!7050224 () Bool)

(assert (=> d!1950670 m!7050224))

(declare-fun m!7050226 () Bool)

(assert (=> d!1950670 m!7050226))

(declare-fun m!7050228 () Bool)

(assert (=> d!1950670 m!7050228))

(declare-fun m!7050230 () Bool)

(assert (=> b!6222650 m!7050230))

(declare-fun m!7050232 () Bool)

(assert (=> b!6222650 m!7050232))

(declare-fun m!7050234 () Bool)

(assert (=> b!6222650 m!7050234))

(assert (=> b!6221377 d!1950670))

(declare-fun d!1950672 () Bool)

(assert (=> d!1950672 (= (++!14234 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) (t!378303 s!2326)) s!2326)))

(declare-fun lt!2345098 () Unit!157959)

(declare-fun choose!46240 (List!64771 C!32584 List!64771 List!64771) Unit!157959)

(assert (=> d!1950672 (= lt!2345098 (choose!46240 Nil!64647 (h!71095 s!2326) (t!378303 s!2326) s!2326))))

(assert (=> d!1950672 (= (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) (t!378303 s!2326))) s!2326)))

(assert (=> d!1950672 (= (lemmaMoveElementToOtherListKeepsConcatEq!2329 Nil!64647 (h!71095 s!2326) (t!378303 s!2326) s!2326) lt!2345098)))

(declare-fun bs!1543074 () Bool)

(assert (= bs!1543074 d!1950672))

(assert (=> bs!1543074 m!7049132))

(assert (=> bs!1543074 m!7049132))

(assert (=> bs!1543074 m!7049134))

(declare-fun m!7050236 () Bool)

(assert (=> bs!1543074 m!7050236))

(declare-fun m!7050238 () Bool)

(assert (=> bs!1543074 m!7050238))

(assert (=> b!6221377 d!1950672))

(declare-fun b!6222652 () Bool)

(declare-fun e!3787791 () Bool)

(assert (=> b!6222652 (= e!3787791 (matchR!8340 (regTwo!32826 r!7292) (t!378303 s!2326)))))

(declare-fun b!6222653 () Bool)

(declare-fun res!2571795 () Bool)

(declare-fun e!3787793 () Bool)

(assert (=> b!6222653 (=> (not res!2571795) (not e!3787793))))

(declare-fun lt!2345100 () Option!16048)

(assert (=> b!6222653 (= res!2571795 (matchR!8340 (regTwo!32826 r!7292) (_2!36439 (get!22328 lt!2345100))))))

(declare-fun b!6222654 () Bool)

(declare-fun e!3787789 () Option!16048)

(assert (=> b!6222654 (= e!3787789 None!16047)))

(declare-fun b!6222655 () Bool)

(declare-fun e!3787790 () Option!16048)

(assert (=> b!6222655 (= e!3787790 (Some!16047 (tuple2!66273 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) (t!378303 s!2326))))))

(declare-fun b!6222657 () Bool)

(declare-fun lt!2345101 () Unit!157959)

(declare-fun lt!2345099 () Unit!157959)

(assert (=> b!6222657 (= lt!2345101 lt!2345099)))

(assert (=> b!6222657 (= (++!14234 (++!14234 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) (Cons!64647 (h!71095 (t!378303 s!2326)) Nil!64647)) (t!378303 (t!378303 s!2326))) s!2326)))

(assert (=> b!6222657 (= lt!2345099 (lemmaMoveElementToOtherListKeepsConcatEq!2329 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) (h!71095 (t!378303 s!2326)) (t!378303 (t!378303 s!2326)) s!2326))))

(assert (=> b!6222657 (= e!3787789 (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) (++!14234 (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) (Cons!64647 (h!71095 (t!378303 s!2326)) Nil!64647)) (t!378303 (t!378303 s!2326)) s!2326))))

(declare-fun b!6222658 () Bool)

(assert (=> b!6222658 (= e!3787790 e!3787789)))

(declare-fun c!1124440 () Bool)

(assert (=> b!6222658 (= c!1124440 ((_ is Nil!64647) (t!378303 s!2326)))))

(declare-fun b!6222659 () Bool)

(declare-fun e!3787792 () Bool)

(assert (=> b!6222659 (= e!3787792 (not (isDefined!12751 lt!2345100)))))

(declare-fun b!6222660 () Bool)

(declare-fun res!2571791 () Bool)

(assert (=> b!6222660 (=> (not res!2571791) (not e!3787793))))

(assert (=> b!6222660 (= res!2571791 (matchR!8340 (regOne!32826 r!7292) (_1!36439 (get!22328 lt!2345100))))))

(declare-fun b!6222656 () Bool)

(assert (=> b!6222656 (= e!3787793 (= (++!14234 (_1!36439 (get!22328 lt!2345100)) (_2!36439 (get!22328 lt!2345100))) s!2326))))

(declare-fun d!1950674 () Bool)

(assert (=> d!1950674 e!3787792))

(declare-fun res!2571793 () Bool)

(assert (=> d!1950674 (=> res!2571793 e!3787792)))

(assert (=> d!1950674 (= res!2571793 e!3787793)))

(declare-fun res!2571794 () Bool)

(assert (=> d!1950674 (=> (not res!2571794) (not e!3787793))))

(assert (=> d!1950674 (= res!2571794 (isDefined!12751 lt!2345100))))

(assert (=> d!1950674 (= lt!2345100 e!3787790)))

(declare-fun c!1124441 () Bool)

(assert (=> d!1950674 (= c!1124441 e!3787791)))

(declare-fun res!2571792 () Bool)

(assert (=> d!1950674 (=> (not res!2571792) (not e!3787791))))

(assert (=> d!1950674 (= res!2571792 (matchR!8340 (regOne!32826 r!7292) (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647))))))

(assert (=> d!1950674 (validRegex!7893 (regOne!32826 r!7292))))

(assert (=> d!1950674 (= (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) (++!14234 Nil!64647 (Cons!64647 (h!71095 s!2326) Nil!64647)) (t!378303 s!2326) s!2326) lt!2345100)))

(assert (= (and d!1950674 res!2571792) b!6222652))

(assert (= (and d!1950674 c!1124441) b!6222655))

(assert (= (and d!1950674 (not c!1124441)) b!6222658))

(assert (= (and b!6222658 c!1124440) b!6222654))

(assert (= (and b!6222658 (not c!1124440)) b!6222657))

(assert (= (and d!1950674 res!2571794) b!6222660))

(assert (= (and b!6222660 res!2571791) b!6222653))

(assert (= (and b!6222653 res!2571795) b!6222656))

(assert (= (and d!1950674 (not res!2571793)) b!6222659))

(declare-fun m!7050240 () Bool)

(assert (=> b!6222656 m!7050240))

(declare-fun m!7050242 () Bool)

(assert (=> b!6222656 m!7050242))

(assert (=> b!6222653 m!7050240))

(declare-fun m!7050244 () Bool)

(assert (=> b!6222653 m!7050244))

(declare-fun m!7050246 () Bool)

(assert (=> b!6222659 m!7050246))

(declare-fun m!7050248 () Bool)

(assert (=> b!6222652 m!7050248))

(assert (=> b!6222657 m!7049132))

(declare-fun m!7050250 () Bool)

(assert (=> b!6222657 m!7050250))

(assert (=> b!6222657 m!7050250))

(declare-fun m!7050252 () Bool)

(assert (=> b!6222657 m!7050252))

(assert (=> b!6222657 m!7049132))

(declare-fun m!7050254 () Bool)

(assert (=> b!6222657 m!7050254))

(assert (=> b!6222657 m!7050250))

(declare-fun m!7050256 () Bool)

(assert (=> b!6222657 m!7050256))

(assert (=> b!6222660 m!7050240))

(declare-fun m!7050258 () Bool)

(assert (=> b!6222660 m!7050258))

(assert (=> d!1950674 m!7050246))

(assert (=> d!1950674 m!7049132))

(declare-fun m!7050260 () Bool)

(assert (=> d!1950674 m!7050260))

(assert (=> d!1950674 m!7049144))

(assert (=> b!6221377 d!1950674))

(declare-fun b!6222662 () Bool)

(declare-fun e!3787794 () (InoxSet Context!11082))

(declare-fun e!3787797 () (InoxSet Context!11082))

(assert (=> b!6222662 (= e!3787794 e!3787797)))

(declare-fun c!1124444 () Bool)

(assert (=> b!6222662 (= c!1124444 ((_ is Union!16157) (h!71094 (exprs!6041 lt!2344955))))))

(declare-fun b!6222663 () Bool)

(declare-fun e!3787795 () (InoxSet Context!11082))

(declare-fun call!522447 () (InoxSet Context!11082))

(assert (=> b!6222663 (= e!3787795 call!522447)))

(declare-fun b!6222664 () Bool)

(declare-fun call!522448 () (InoxSet Context!11082))

(declare-fun call!522450 () (InoxSet Context!11082))

(assert (=> b!6222664 (= e!3787797 ((_ map or) call!522448 call!522450))))

(declare-fun bm!522441 () Bool)

(declare-fun call!522446 () List!64770)

(declare-fun c!1124442 () Bool)

(declare-fun c!1124443 () Bool)

(assert (=> bm!522441 (= call!522450 (derivationStepZipperDown!1405 (ite c!1124444 (regTwo!32827 (h!71094 (exprs!6041 lt!2344955))) (ite c!1124443 (regTwo!32826 (h!71094 (exprs!6041 lt!2344955))) (ite c!1124442 (regOne!32826 (h!71094 (exprs!6041 lt!2344955))) (reg!16486 (h!71094 (exprs!6041 lt!2344955)))))) (ite (or c!1124444 c!1124443) (Context!11083 (t!378302 (exprs!6041 lt!2344955))) (Context!11083 call!522446)) (h!71095 s!2326)))))

(declare-fun b!6222665 () Bool)

(declare-fun e!3787799 () (InoxSet Context!11082))

(declare-fun call!522451 () (InoxSet Context!11082))

(assert (=> b!6222665 (= e!3787799 ((_ map or) call!522448 call!522451))))

(declare-fun call!522449 () List!64770)

(declare-fun bm!522442 () Bool)

(assert (=> bm!522442 (= call!522448 (derivationStepZipperDown!1405 (ite c!1124444 (regOne!32827 (h!71094 (exprs!6041 lt!2344955))) (regOne!32826 (h!71094 (exprs!6041 lt!2344955)))) (ite c!1124444 (Context!11083 (t!378302 (exprs!6041 lt!2344955))) (Context!11083 call!522449)) (h!71095 s!2326)))))

(declare-fun bm!522443 () Bool)

(assert (=> bm!522443 (= call!522451 call!522450)))

(declare-fun b!6222666 () Bool)

(declare-fun c!1124446 () Bool)

(assert (=> b!6222666 (= c!1124446 ((_ is Star!16157) (h!71094 (exprs!6041 lt!2344955))))))

(declare-fun e!3787796 () (InoxSet Context!11082))

(assert (=> b!6222666 (= e!3787795 e!3787796)))

(declare-fun b!6222667 () Bool)

(assert (=> b!6222667 (= e!3787794 (store ((as const (Array Context!11082 Bool)) false) (Context!11083 (t!378302 (exprs!6041 lt!2344955))) true))))

(declare-fun b!6222661 () Bool)

(declare-fun e!3787798 () Bool)

(assert (=> b!6222661 (= c!1124443 e!3787798)))

(declare-fun res!2571796 () Bool)

(assert (=> b!6222661 (=> (not res!2571796) (not e!3787798))))

(assert (=> b!6222661 (= res!2571796 ((_ is Concat!25002) (h!71094 (exprs!6041 lt!2344955))))))

(assert (=> b!6222661 (= e!3787797 e!3787799)))

(declare-fun d!1950676 () Bool)

(declare-fun c!1124445 () Bool)

(assert (=> d!1950676 (= c!1124445 (and ((_ is ElementMatch!16157) (h!71094 (exprs!6041 lt!2344955))) (= (c!1123967 (h!71094 (exprs!6041 lt!2344955))) (h!71095 s!2326))))))

(assert (=> d!1950676 (= (derivationStepZipperDown!1405 (h!71094 (exprs!6041 lt!2344955)) (Context!11083 (t!378302 (exprs!6041 lt!2344955))) (h!71095 s!2326)) e!3787794)))

(declare-fun b!6222668 () Bool)

(assert (=> b!6222668 (= e!3787796 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522444 () Bool)

(assert (=> bm!522444 (= call!522446 call!522449)))

(declare-fun b!6222669 () Bool)

(assert (=> b!6222669 (= e!3787798 (nullable!6150 (regOne!32826 (h!71094 (exprs!6041 lt!2344955)))))))

(declare-fun b!6222670 () Bool)

(assert (=> b!6222670 (= e!3787796 call!522447)))

(declare-fun bm!522445 () Bool)

(assert (=> bm!522445 (= call!522447 call!522451)))

(declare-fun b!6222671 () Bool)

(assert (=> b!6222671 (= e!3787799 e!3787795)))

(assert (=> b!6222671 (= c!1124442 ((_ is Concat!25002) (h!71094 (exprs!6041 lt!2344955))))))

(declare-fun bm!522446 () Bool)

(assert (=> bm!522446 (= call!522449 ($colon$colon!2026 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344955)))) (ite (or c!1124443 c!1124442) (regTwo!32826 (h!71094 (exprs!6041 lt!2344955))) (h!71094 (exprs!6041 lt!2344955)))))))

(assert (= (and d!1950676 c!1124445) b!6222667))

(assert (= (and d!1950676 (not c!1124445)) b!6222662))

(assert (= (and b!6222662 c!1124444) b!6222664))

(assert (= (and b!6222662 (not c!1124444)) b!6222661))

(assert (= (and b!6222661 res!2571796) b!6222669))

(assert (= (and b!6222661 c!1124443) b!6222665))

(assert (= (and b!6222661 (not c!1124443)) b!6222671))

(assert (= (and b!6222671 c!1124442) b!6222663))

(assert (= (and b!6222671 (not c!1124442)) b!6222666))

(assert (= (and b!6222666 c!1124446) b!6222670))

(assert (= (and b!6222666 (not c!1124446)) b!6222668))

(assert (= (or b!6222663 b!6222670) bm!522444))

(assert (= (or b!6222663 b!6222670) bm!522445))

(assert (= (or b!6222665 bm!522444) bm!522446))

(assert (= (or b!6222665 bm!522445) bm!522443))

(assert (= (or b!6222664 bm!522443) bm!522441))

(assert (= (or b!6222664 b!6222665) bm!522442))

(declare-fun m!7050262 () Bool)

(assert (=> bm!522446 m!7050262))

(declare-fun m!7050264 () Bool)

(assert (=> b!6222669 m!7050264))

(declare-fun m!7050266 () Bool)

(assert (=> bm!522441 m!7050266))

(declare-fun m!7050268 () Bool)

(assert (=> bm!522442 m!7050268))

(declare-fun m!7050270 () Bool)

(assert (=> b!6222667 m!7050270))

(assert (=> bm!522226 d!1950676))

(assert (=> bm!522220 d!1950520))

(declare-fun d!1950678 () Bool)

(assert (=> d!1950678 (= ($colon$colon!2026 (exprs!6041 lt!2344955) (ite (or c!1124055 c!1124054) (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (regTwo!32826 (regOne!32826 r!7292)))) (Cons!64646 (ite (or c!1124055 c!1124054) (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))) (regTwo!32826 (regOne!32826 r!7292))) (exprs!6041 lt!2344955)))))

(assert (=> bm!522192 d!1950678))

(declare-fun d!1950680 () Bool)

(assert (=> d!1950680 true))

(declare-fun setRes!42271 () Bool)

(assert (=> d!1950680 setRes!42271))

(declare-fun condSetEmpty!42271 () Bool)

(declare-fun res!2571797 () (InoxSet Context!11082))

(assert (=> d!1950680 (= condSetEmpty!42271 (= res!2571797 ((as const (Array Context!11082 Bool)) false)))))

(assert (=> d!1950680 (= (choose!46228 z!1189 lambda!340023) res!2571797)))

(declare-fun setIsEmpty!42271 () Bool)

(assert (=> setIsEmpty!42271 setRes!42271))

(declare-fun tp!1735738 () Bool)

(declare-fun e!3787800 () Bool)

(declare-fun setElem!42271 () Context!11082)

(declare-fun setNonEmpty!42271 () Bool)

(assert (=> setNonEmpty!42271 (= setRes!42271 (and tp!1735738 (inv!83639 setElem!42271) e!3787800))))

(declare-fun setRest!42271 () (InoxSet Context!11082))

(assert (=> setNonEmpty!42271 (= res!2571797 ((_ map or) (store ((as const (Array Context!11082 Bool)) false) setElem!42271 true) setRest!42271))))

(declare-fun b!6222672 () Bool)

(declare-fun tp!1735737 () Bool)

(assert (=> b!6222672 (= e!3787800 tp!1735737)))

(assert (= (and d!1950680 condSetEmpty!42271) setIsEmpty!42271))

(assert (= (and d!1950680 (not condSetEmpty!42271)) setNonEmpty!42271))

(assert (= setNonEmpty!42271 b!6222672))

(declare-fun m!7050272 () Bool)

(assert (=> setNonEmpty!42271 m!7050272))

(assert (=> d!1950212 d!1950680))

(assert (=> b!6221620 d!1950210))

(declare-fun bs!1543075 () Bool)

(declare-fun b!6222683 () Bool)

(assert (= bs!1543075 (and b!6222683 d!1950596)))

(declare-fun lambda!340144 () Int)

(assert (=> bs!1543075 (not (= lambda!340144 lambda!340136))))

(declare-fun bs!1543076 () Bool)

(assert (= bs!1543076 (and b!6222683 b!6220911)))

(assert (=> bs!1543076 (not (= lambda!340144 lambda!340021))))

(declare-fun bs!1543077 () Bool)

(assert (= bs!1543077 (and b!6222683 d!1950156)))

(assert (=> bs!1543077 (not (= lambda!340144 lambda!340056))))

(declare-fun bs!1543078 () Bool)

(assert (= bs!1543078 (and b!6222683 b!6222530)))

(assert (=> bs!1543078 (= (and (= (reg!16486 (regTwo!32827 r!7292)) (reg!16486 (regOne!32827 r!7292))) (= (regTwo!32827 r!7292) (regOne!32827 r!7292))) (= lambda!340144 lambda!340138))))

(declare-fun bs!1543079 () Bool)

(assert (= bs!1543079 (and b!6222683 d!1950164)))

(assert (=> bs!1543079 (not (= lambda!340144 lambda!340064))))

(declare-fun bs!1543080 () Bool)

(assert (= bs!1543080 (and b!6222683 b!6221566)))

(assert (=> bs!1543080 (= (and (= (reg!16486 (regTwo!32827 r!7292)) (reg!16486 r!7292)) (= (regTwo!32827 r!7292) r!7292)) (= lambda!340144 lambda!340085))))

(assert (=> bs!1543075 (not (= lambda!340144 lambda!340137))))

(assert (=> bs!1543076 (not (= lambda!340144 lambda!340022))))

(declare-fun bs!1543081 () Bool)

(assert (= bs!1543081 (and b!6222683 b!6221560)))

(assert (=> bs!1543081 (not (= lambda!340144 lambda!340086))))

(declare-fun bs!1543082 () Bool)

(assert (= bs!1543082 (and b!6222683 b!6222520)))

(assert (=> bs!1543082 (not (= lambda!340144 lambda!340139))))

(assert (=> bs!1543079 (not (= lambda!340144 lambda!340065))))

(declare-fun bs!1543083 () Bool)

(assert (= bs!1543083 (and b!6222683 d!1950498)))

(assert (=> bs!1543083 (not (= lambda!340144 lambda!340124))))

(assert (=> b!6222683 true))

(assert (=> b!6222683 true))

(declare-fun bs!1543084 () Bool)

(declare-fun b!6222677 () Bool)

(assert (= bs!1543084 (and b!6222677 d!1950596)))

(declare-fun lambda!340145 () Int)

(assert (=> bs!1543084 (not (= lambda!340145 lambda!340136))))

(declare-fun bs!1543085 () Bool)

(assert (= bs!1543085 (and b!6222677 b!6220911)))

(assert (=> bs!1543085 (not (= lambda!340145 lambda!340021))))

(declare-fun bs!1543086 () Bool)

(assert (= bs!1543086 (and b!6222677 d!1950156)))

(assert (=> bs!1543086 (not (= lambda!340145 lambda!340056))))

(declare-fun bs!1543087 () Bool)

(assert (= bs!1543087 (and b!6222677 b!6222530)))

(assert (=> bs!1543087 (not (= lambda!340145 lambda!340138))))

(declare-fun bs!1543088 () Bool)

(assert (= bs!1543088 (and b!6222677 b!6222683)))

(assert (=> bs!1543088 (not (= lambda!340145 lambda!340144))))

(declare-fun bs!1543089 () Bool)

(assert (= bs!1543089 (and b!6222677 d!1950164)))

(assert (=> bs!1543089 (not (= lambda!340145 lambda!340064))))

(declare-fun bs!1543090 () Bool)

(assert (= bs!1543090 (and b!6222677 b!6221566)))

(assert (=> bs!1543090 (not (= lambda!340145 lambda!340085))))

(assert (=> bs!1543084 (= (and (= (regOne!32826 (regTwo!32827 r!7292)) (regOne!32826 r!7292)) (= (regTwo!32826 (regTwo!32827 r!7292)) (regTwo!32826 r!7292))) (= lambda!340145 lambda!340137))))

(assert (=> bs!1543085 (= (and (= (regOne!32826 (regTwo!32827 r!7292)) (regOne!32826 r!7292)) (= (regTwo!32826 (regTwo!32827 r!7292)) (regTwo!32826 r!7292))) (= lambda!340145 lambda!340022))))

(declare-fun bs!1543091 () Bool)

(assert (= bs!1543091 (and b!6222677 b!6221560)))

(assert (=> bs!1543091 (= (and (= (regOne!32826 (regTwo!32827 r!7292)) (regOne!32826 r!7292)) (= (regTwo!32826 (regTwo!32827 r!7292)) (regTwo!32826 r!7292))) (= lambda!340145 lambda!340086))))

(declare-fun bs!1543092 () Bool)

(assert (= bs!1543092 (and b!6222677 b!6222520)))

(assert (=> bs!1543092 (= (and (= (regOne!32826 (regTwo!32827 r!7292)) (regOne!32826 (regOne!32827 r!7292))) (= (regTwo!32826 (regTwo!32827 r!7292)) (regTwo!32826 (regOne!32827 r!7292)))) (= lambda!340145 lambda!340139))))

(assert (=> bs!1543089 (= (and (= (regOne!32826 (regTwo!32827 r!7292)) (regOne!32826 r!7292)) (= (regTwo!32826 (regTwo!32827 r!7292)) (regTwo!32826 r!7292))) (= lambda!340145 lambda!340065))))

(declare-fun bs!1543093 () Bool)

(assert (= bs!1543093 (and b!6222677 d!1950498)))

(assert (=> bs!1543093 (not (= lambda!340145 lambda!340124))))

(assert (=> b!6222677 true))

(assert (=> b!6222677 true))

(declare-fun bm!522447 () Bool)

(declare-fun call!522453 () Bool)

(assert (=> bm!522447 (= call!522453 (isEmpty!36657 s!2326))))

(declare-fun call!522452 () Bool)

(declare-fun c!1124447 () Bool)

(declare-fun bm!522448 () Bool)

(assert (=> bm!522448 (= call!522452 (Exists!3227 (ite c!1124447 lambda!340144 lambda!340145)))))

(declare-fun b!6222673 () Bool)

(declare-fun e!3787803 () Bool)

(declare-fun e!3787805 () Bool)

(assert (=> b!6222673 (= e!3787803 e!3787805)))

(declare-fun res!2571799 () Bool)

(assert (=> b!6222673 (= res!2571799 (not ((_ is EmptyLang!16157) (regTwo!32827 r!7292))))))

(assert (=> b!6222673 (=> (not res!2571799) (not e!3787805))))

(declare-fun b!6222674 () Bool)

(assert (=> b!6222674 (= e!3787803 call!522453)))

(declare-fun b!6222675 () Bool)

(declare-fun e!3787801 () Bool)

(assert (=> b!6222675 (= e!3787801 (matchRSpec!3258 (regTwo!32827 (regTwo!32827 r!7292)) s!2326))))

(declare-fun b!6222676 () Bool)

(declare-fun e!3787806 () Bool)

(assert (=> b!6222676 (= e!3787806 e!3787801)))

(declare-fun res!2571798 () Bool)

(assert (=> b!6222676 (= res!2571798 (matchRSpec!3258 (regOne!32827 (regTwo!32827 r!7292)) s!2326))))

(assert (=> b!6222676 (=> res!2571798 e!3787801)))

(declare-fun e!3787804 () Bool)

(assert (=> b!6222677 (= e!3787804 call!522452)))

(declare-fun b!6222678 () Bool)

(declare-fun res!2571800 () Bool)

(declare-fun e!3787807 () Bool)

(assert (=> b!6222678 (=> res!2571800 e!3787807)))

(assert (=> b!6222678 (= res!2571800 call!522453)))

(assert (=> b!6222678 (= e!3787804 e!3787807)))

(declare-fun b!6222679 () Bool)

(declare-fun c!1124450 () Bool)

(assert (=> b!6222679 (= c!1124450 ((_ is ElementMatch!16157) (regTwo!32827 r!7292)))))

(declare-fun e!3787802 () Bool)

(assert (=> b!6222679 (= e!3787805 e!3787802)))

(declare-fun b!6222681 () Bool)

(assert (=> b!6222681 (= e!3787806 e!3787804)))

(assert (=> b!6222681 (= c!1124447 ((_ is Star!16157) (regTwo!32827 r!7292)))))

(declare-fun b!6222682 () Bool)

(assert (=> b!6222682 (= e!3787802 (= s!2326 (Cons!64647 (c!1123967 (regTwo!32827 r!7292)) Nil!64647)))))

(assert (=> b!6222683 (= e!3787807 call!522452)))

(declare-fun d!1950682 () Bool)

(declare-fun c!1124448 () Bool)

(assert (=> d!1950682 (= c!1124448 ((_ is EmptyExpr!16157) (regTwo!32827 r!7292)))))

(assert (=> d!1950682 (= (matchRSpec!3258 (regTwo!32827 r!7292) s!2326) e!3787803)))

(declare-fun b!6222680 () Bool)

(declare-fun c!1124449 () Bool)

(assert (=> b!6222680 (= c!1124449 ((_ is Union!16157) (regTwo!32827 r!7292)))))

(assert (=> b!6222680 (= e!3787802 e!3787806)))

(assert (= (and d!1950682 c!1124448) b!6222674))

(assert (= (and d!1950682 (not c!1124448)) b!6222673))

(assert (= (and b!6222673 res!2571799) b!6222679))

(assert (= (and b!6222679 c!1124450) b!6222682))

(assert (= (and b!6222679 (not c!1124450)) b!6222680))

(assert (= (and b!6222680 c!1124449) b!6222676))

(assert (= (and b!6222680 (not c!1124449)) b!6222681))

(assert (= (and b!6222676 (not res!2571798)) b!6222675))

(assert (= (and b!6222681 c!1124447) b!6222678))

(assert (= (and b!6222681 (not c!1124447)) b!6222677))

(assert (= (and b!6222678 (not res!2571800)) b!6222683))

(assert (= (or b!6222683 b!6222677) bm!522448))

(assert (= (or b!6222674 b!6222678) bm!522447))

(assert (=> bm!522447 m!7049244))

(declare-fun m!7050274 () Bool)

(assert (=> bm!522448 m!7050274))

(declare-fun m!7050276 () Bool)

(assert (=> b!6222675 m!7050276))

(declare-fun m!7050278 () Bool)

(assert (=> b!6222676 m!7050278))

(assert (=> b!6221558 d!1950682))

(declare-fun b!6222685 () Bool)

(declare-fun e!3787808 () (InoxSet Context!11082))

(declare-fun e!3787811 () (InoxSet Context!11082))

(assert (=> b!6222685 (= e!3787808 e!3787811)))

(declare-fun c!1124453 () Bool)

(assert (=> b!6222685 (= c!1124453 ((_ is Union!16157) (h!71094 (exprs!6041 lt!2344958))))))

(declare-fun b!6222686 () Bool)

(declare-fun e!3787809 () (InoxSet Context!11082))

(declare-fun call!522455 () (InoxSet Context!11082))

(assert (=> b!6222686 (= e!3787809 call!522455)))

(declare-fun b!6222687 () Bool)

(declare-fun call!522456 () (InoxSet Context!11082))

(declare-fun call!522458 () (InoxSet Context!11082))

(assert (=> b!6222687 (= e!3787811 ((_ map or) call!522456 call!522458))))

(declare-fun bm!522449 () Bool)

(declare-fun c!1124451 () Bool)

(declare-fun c!1124452 () Bool)

(declare-fun call!522454 () List!64770)

(assert (=> bm!522449 (= call!522458 (derivationStepZipperDown!1405 (ite c!1124453 (regTwo!32827 (h!71094 (exprs!6041 lt!2344958))) (ite c!1124452 (regTwo!32826 (h!71094 (exprs!6041 lt!2344958))) (ite c!1124451 (regOne!32826 (h!71094 (exprs!6041 lt!2344958))) (reg!16486 (h!71094 (exprs!6041 lt!2344958)))))) (ite (or c!1124453 c!1124452) (Context!11083 (t!378302 (exprs!6041 lt!2344958))) (Context!11083 call!522454)) (h!71095 s!2326)))))

(declare-fun b!6222688 () Bool)

(declare-fun e!3787813 () (InoxSet Context!11082))

(declare-fun call!522459 () (InoxSet Context!11082))

(assert (=> b!6222688 (= e!3787813 ((_ map or) call!522456 call!522459))))

(declare-fun bm!522450 () Bool)

(declare-fun call!522457 () List!64770)

(assert (=> bm!522450 (= call!522456 (derivationStepZipperDown!1405 (ite c!1124453 (regOne!32827 (h!71094 (exprs!6041 lt!2344958))) (regOne!32826 (h!71094 (exprs!6041 lt!2344958)))) (ite c!1124453 (Context!11083 (t!378302 (exprs!6041 lt!2344958))) (Context!11083 call!522457)) (h!71095 s!2326)))))

(declare-fun bm!522451 () Bool)

(assert (=> bm!522451 (= call!522459 call!522458)))

(declare-fun b!6222689 () Bool)

(declare-fun c!1124455 () Bool)

(assert (=> b!6222689 (= c!1124455 ((_ is Star!16157) (h!71094 (exprs!6041 lt!2344958))))))

(declare-fun e!3787810 () (InoxSet Context!11082))

(assert (=> b!6222689 (= e!3787809 e!3787810)))

(declare-fun b!6222690 () Bool)

(assert (=> b!6222690 (= e!3787808 (store ((as const (Array Context!11082 Bool)) false) (Context!11083 (t!378302 (exprs!6041 lt!2344958))) true))))

(declare-fun b!6222684 () Bool)

(declare-fun e!3787812 () Bool)

(assert (=> b!6222684 (= c!1124452 e!3787812)))

(declare-fun res!2571801 () Bool)

(assert (=> b!6222684 (=> (not res!2571801) (not e!3787812))))

(assert (=> b!6222684 (= res!2571801 ((_ is Concat!25002) (h!71094 (exprs!6041 lt!2344958))))))

(assert (=> b!6222684 (= e!3787811 e!3787813)))

(declare-fun d!1950684 () Bool)

(declare-fun c!1124454 () Bool)

(assert (=> d!1950684 (= c!1124454 (and ((_ is ElementMatch!16157) (h!71094 (exprs!6041 lt!2344958))) (= (c!1123967 (h!71094 (exprs!6041 lt!2344958))) (h!71095 s!2326))))))

(assert (=> d!1950684 (= (derivationStepZipperDown!1405 (h!71094 (exprs!6041 lt!2344958)) (Context!11083 (t!378302 (exprs!6041 lt!2344958))) (h!71095 s!2326)) e!3787808)))

(declare-fun b!6222691 () Bool)

(assert (=> b!6222691 (= e!3787810 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522452 () Bool)

(assert (=> bm!522452 (= call!522454 call!522457)))

(declare-fun b!6222692 () Bool)

(assert (=> b!6222692 (= e!3787812 (nullable!6150 (regOne!32826 (h!71094 (exprs!6041 lt!2344958)))))))

(declare-fun b!6222693 () Bool)

(assert (=> b!6222693 (= e!3787810 call!522455)))

(declare-fun bm!522453 () Bool)

(assert (=> bm!522453 (= call!522455 call!522459)))

(declare-fun b!6222694 () Bool)

(assert (=> b!6222694 (= e!3787813 e!3787809)))

(assert (=> b!6222694 (= c!1124451 ((_ is Concat!25002) (h!71094 (exprs!6041 lt!2344958))))))

(declare-fun bm!522454 () Bool)

(assert (=> bm!522454 (= call!522457 ($colon$colon!2026 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344958)))) (ite (or c!1124452 c!1124451) (regTwo!32826 (h!71094 (exprs!6041 lt!2344958))) (h!71094 (exprs!6041 lt!2344958)))))))

(assert (= (and d!1950684 c!1124454) b!6222690))

(assert (= (and d!1950684 (not c!1124454)) b!6222685))

(assert (= (and b!6222685 c!1124453) b!6222687))

(assert (= (and b!6222685 (not c!1124453)) b!6222684))

(assert (= (and b!6222684 res!2571801) b!6222692))

(assert (= (and b!6222684 c!1124452) b!6222688))

(assert (= (and b!6222684 (not c!1124452)) b!6222694))

(assert (= (and b!6222694 c!1124451) b!6222686))

(assert (= (and b!6222694 (not c!1124451)) b!6222689))

(assert (= (and b!6222689 c!1124455) b!6222693))

(assert (= (and b!6222689 (not c!1124455)) b!6222691))

(assert (= (or b!6222686 b!6222693) bm!522452))

(assert (= (or b!6222686 b!6222693) bm!522453))

(assert (= (or b!6222688 bm!522452) bm!522454))

(assert (= (or b!6222688 bm!522453) bm!522451))

(assert (= (or b!6222687 bm!522451) bm!522449))

(assert (= (or b!6222687 b!6222688) bm!522450))

(declare-fun m!7050280 () Bool)

(assert (=> bm!522454 m!7050280))

(declare-fun m!7050282 () Bool)

(assert (=> b!6222692 m!7050282))

(declare-fun m!7050284 () Bool)

(assert (=> bm!522449 m!7050284))

(declare-fun m!7050286 () Bool)

(assert (=> bm!522450 m!7050286))

(declare-fun m!7050288 () Bool)

(assert (=> b!6222690 m!7050288))

(assert (=> bm!522203 d!1950684))

(assert (=> d!1950086 d!1950548))

(assert (=> d!1950218 d!1950548))

(declare-fun d!1950686 () Bool)

(declare-fun res!2571802 () Bool)

(declare-fun e!3787814 () Bool)

(assert (=> d!1950686 (=> res!2571802 e!3787814)))

(assert (=> d!1950686 (= res!2571802 ((_ is Nil!64646) (exprs!6041 (h!71096 zl!343))))))

(assert (=> d!1950686 (= (forall!15271 (exprs!6041 (h!71096 zl!343)) lambda!340050) e!3787814)))

(declare-fun b!6222695 () Bool)

(declare-fun e!3787815 () Bool)

(assert (=> b!6222695 (= e!3787814 e!3787815)))

(declare-fun res!2571803 () Bool)

(assert (=> b!6222695 (=> (not res!2571803) (not e!3787815))))

(assert (=> b!6222695 (= res!2571803 (dynLambda!25509 lambda!340050 (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6222696 () Bool)

(assert (=> b!6222696 (= e!3787815 (forall!15271 (t!378302 (exprs!6041 (h!71096 zl!343))) lambda!340050))))

(assert (= (and d!1950686 (not res!2571802)) b!6222695))

(assert (= (and b!6222695 res!2571803) b!6222696))

(declare-fun b_lambda!236577 () Bool)

(assert (=> (not b_lambda!236577) (not b!6222695)))

(declare-fun m!7050290 () Bool)

(assert (=> b!6222695 m!7050290))

(declare-fun m!7050292 () Bool)

(assert (=> b!6222696 m!7050292))

(assert (=> d!1950122 d!1950686))

(declare-fun d!1950688 () Bool)

(declare-fun res!2571804 () Bool)

(declare-fun e!3787816 () Bool)

(assert (=> d!1950688 (=> res!2571804 e!3787816)))

(assert (=> d!1950688 (= res!2571804 ((_ is Nil!64646) (exprs!6041 setElem!42254)))))

(assert (=> d!1950688 (= (forall!15271 (exprs!6041 setElem!42254) lambda!340066) e!3787816)))

(declare-fun b!6222697 () Bool)

(declare-fun e!3787817 () Bool)

(assert (=> b!6222697 (= e!3787816 e!3787817)))

(declare-fun res!2571805 () Bool)

(assert (=> b!6222697 (=> (not res!2571805) (not e!3787817))))

(assert (=> b!6222697 (= res!2571805 (dynLambda!25509 lambda!340066 (h!71094 (exprs!6041 setElem!42254))))))

(declare-fun b!6222698 () Bool)

(assert (=> b!6222698 (= e!3787817 (forall!15271 (t!378302 (exprs!6041 setElem!42254)) lambda!340066))))

(assert (= (and d!1950688 (not res!2571804)) b!6222697))

(assert (= (and b!6222697 res!2571805) b!6222698))

(declare-fun b_lambda!236579 () Bool)

(assert (=> (not b_lambda!236579) (not b!6222697)))

(declare-fun m!7050294 () Bool)

(assert (=> b!6222697 m!7050294))

(declare-fun m!7050296 () Bool)

(assert (=> b!6222698 m!7050296))

(assert (=> d!1950170 d!1950688))

(declare-fun d!1950690 () Bool)

(assert (=> d!1950690 (= (nullable!6150 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (nullableFct!2106 (h!71094 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))))))

(declare-fun bs!1543094 () Bool)

(assert (= bs!1543094 d!1950690))

(declare-fun m!7050298 () Bool)

(assert (=> bs!1543094 m!7050298))

(assert (=> b!6221610 d!1950690))

(assert (=> d!1950198 d!1950196))

(assert (=> d!1950198 d!1950190))

(declare-fun d!1950692 () Bool)

(assert (=> d!1950692 (= (matchR!8340 r!7292 s!2326) (matchRSpec!3258 r!7292 s!2326))))

(assert (=> d!1950692 true))

(declare-fun _$88!4841 () Unit!157959)

(assert (=> d!1950692 (= (choose!46237 r!7292 s!2326) _$88!4841)))

(declare-fun bs!1543095 () Bool)

(assert (= bs!1543095 d!1950692))

(assert (=> bs!1543095 m!7048794))

(assert (=> bs!1543095 m!7048792))

(assert (=> d!1950198 d!1950692))

(assert (=> d!1950198 d!1950070))

(declare-fun d!1950694 () Bool)

(assert (=> d!1950694 (= (isEmpty!36658 (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) Nil!64647 s!2326 s!2326)) (not ((_ is Some!16047) (findConcatSeparation!2462 (regOne!32826 r!7292) (regTwo!32826 r!7292) Nil!64647 s!2326 s!2326))))))

(assert (=> d!1950168 d!1950694))

(declare-fun d!1950696 () Bool)

(assert (=> d!1950696 true))

(assert (=> d!1950696 true))

(declare-fun res!2571806 () Bool)

(assert (=> d!1950696 (= (choose!46231 lambda!340021) res!2571806)))

(assert (=> d!1950152 d!1950696))

(declare-fun bs!1543096 () Bool)

(declare-fun d!1950698 () Bool)

(assert (= bs!1543096 (and d!1950698 d!1950454)))

(declare-fun lambda!340146 () Int)

(assert (=> bs!1543096 (= lambda!340146 lambda!340116)))

(declare-fun bs!1543097 () Bool)

(assert (= bs!1543097 (and d!1950698 d!1950522)))

(assert (=> bs!1543097 (= lambda!340146 lambda!340126)))

(declare-fun bs!1543098 () Bool)

(assert (= bs!1543098 (and d!1950698 d!1950638)))

(assert (=> bs!1543098 (= lambda!340146 lambda!340141)))

(declare-fun bs!1543099 () Bool)

(assert (= bs!1543099 (and d!1950698 d!1950660)))

(assert (=> bs!1543099 (= lambda!340146 lambda!340143)))

(assert (=> d!1950698 (= (nullableZipper!1931 lt!2344969) (exists!2491 lt!2344969 lambda!340146))))

(declare-fun bs!1543100 () Bool)

(assert (= bs!1543100 d!1950698))

(declare-fun m!7050300 () Bool)

(assert (=> bs!1543100 m!7050300))

(assert (=> b!6221635 d!1950698))

(declare-fun b!6222699 () Bool)

(declare-fun e!3787820 () Bool)

(declare-fun call!522461 () Bool)

(assert (=> b!6222699 (= e!3787820 call!522461)))

(declare-fun d!1950700 () Bool)

(declare-fun res!2571807 () Bool)

(declare-fun e!3787823 () Bool)

(assert (=> d!1950700 (=> res!2571807 e!3787823)))

(assert (=> d!1950700 (= res!2571807 ((_ is EmptyExpr!16157) (regTwo!32826 (regOne!32826 r!7292))))))

(assert (=> d!1950700 (= (nullableFct!2106 (regTwo!32826 (regOne!32826 r!7292))) e!3787823)))

(declare-fun b!6222700 () Bool)

(declare-fun e!3787819 () Bool)

(assert (=> b!6222700 (= e!3787819 e!3787820)))

(declare-fun res!2571810 () Bool)

(declare-fun call!522460 () Bool)

(assert (=> b!6222700 (= res!2571810 call!522460)))

(assert (=> b!6222700 (=> res!2571810 e!3787820)))

(declare-fun b!6222701 () Bool)

(declare-fun e!3787818 () Bool)

(declare-fun e!3787822 () Bool)

(assert (=> b!6222701 (= e!3787818 e!3787822)))

(declare-fun res!2571808 () Bool)

(assert (=> b!6222701 (=> res!2571808 e!3787822)))

(assert (=> b!6222701 (= res!2571808 ((_ is Star!16157) (regTwo!32826 (regOne!32826 r!7292))))))

(declare-fun b!6222702 () Bool)

(declare-fun e!3787821 () Bool)

(assert (=> b!6222702 (= e!3787821 call!522461)))

(declare-fun bm!522455 () Bool)

(declare-fun c!1124456 () Bool)

(assert (=> bm!522455 (= call!522460 (nullable!6150 (ite c!1124456 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))))))

(declare-fun b!6222703 () Bool)

(assert (=> b!6222703 (= e!3787819 e!3787821)))

(declare-fun res!2571811 () Bool)

(assert (=> b!6222703 (= res!2571811 call!522460)))

(assert (=> b!6222703 (=> (not res!2571811) (not e!3787821))))

(declare-fun bm!522456 () Bool)

(assert (=> bm!522456 (= call!522461 (nullable!6150 (ite c!1124456 (regTwo!32827 (regTwo!32826 (regOne!32826 r!7292))) (regTwo!32826 (regTwo!32826 (regOne!32826 r!7292))))))))

(declare-fun b!6222704 () Bool)

(assert (=> b!6222704 (= e!3787822 e!3787819)))

(assert (=> b!6222704 (= c!1124456 ((_ is Union!16157) (regTwo!32826 (regOne!32826 r!7292))))))

(declare-fun b!6222705 () Bool)

(assert (=> b!6222705 (= e!3787823 e!3787818)))

(declare-fun res!2571809 () Bool)

(assert (=> b!6222705 (=> (not res!2571809) (not e!3787818))))

(assert (=> b!6222705 (= res!2571809 (and (not ((_ is EmptyLang!16157) (regTwo!32826 (regOne!32826 r!7292)))) (not ((_ is ElementMatch!16157) (regTwo!32826 (regOne!32826 r!7292))))))))

(assert (= (and d!1950700 (not res!2571807)) b!6222705))

(assert (= (and b!6222705 res!2571809) b!6222701))

(assert (= (and b!6222701 (not res!2571808)) b!6222704))

(assert (= (and b!6222704 c!1124456) b!6222700))

(assert (= (and b!6222704 (not c!1124456)) b!6222703))

(assert (= (and b!6222700 (not res!2571810)) b!6222699))

(assert (= (and b!6222703 res!2571811) b!6222702))

(assert (= (or b!6222699 b!6222702) bm!522456))

(assert (= (or b!6222700 b!6222703) bm!522455))

(declare-fun m!7050302 () Bool)

(assert (=> bm!522455 m!7050302))

(declare-fun m!7050304 () Bool)

(assert (=> bm!522456 m!7050304))

(assert (=> d!1950124 d!1950700))

(declare-fun d!1950702 () Bool)

(declare-fun c!1124457 () Bool)

(declare-fun e!3787824 () Bool)

(assert (=> d!1950702 (= c!1124457 e!3787824)))

(declare-fun res!2571812 () Bool)

(assert (=> d!1950702 (=> (not res!2571812) (not e!3787824))))

(assert (=> d!1950702 (= res!2571812 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))))))))

(declare-fun e!3787825 () (InoxSet Context!11082))

(assert (=> d!1950702 (= (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))) (h!71095 s!2326)) e!3787825)))

(declare-fun b!6222706 () Bool)

(declare-fun e!3787826 () (InoxSet Context!11082))

(assert (=> b!6222706 (= e!3787825 e!3787826)))

(declare-fun c!1124458 () Bool)

(assert (=> b!6222706 (= c!1124458 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))))))))

(declare-fun b!6222707 () Bool)

(assert (=> b!6222707 (= e!3787824 (nullable!6150 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))))))))

(declare-fun bm!522457 () Bool)

(declare-fun call!522462 () (InoxSet Context!11082))

(assert (=> bm!522457 (= call!522462 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343)))))))))) (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))))) (h!71095 s!2326)))))

(declare-fun b!6222708 () Bool)

(assert (=> b!6222708 (= e!3787826 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6222709 () Bool)

(assert (=> b!6222709 (= e!3787825 ((_ map or) call!522462 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (Cons!64646 (h!71094 (exprs!6041 (h!71096 zl!343))) (t!378302 (exprs!6041 (h!71096 zl!343))))))))))) (h!71095 s!2326))))))

(declare-fun b!6222710 () Bool)

(assert (=> b!6222710 (= e!3787826 call!522462)))

(assert (= (and d!1950702 res!2571812) b!6222707))

(assert (= (and d!1950702 c!1124457) b!6222709))

(assert (= (and d!1950702 (not c!1124457)) b!6222706))

(assert (= (and b!6222706 c!1124458) b!6222710))

(assert (= (and b!6222706 (not c!1124458)) b!6222708))

(assert (= (or b!6222709 b!6222710) bm!522457))

(declare-fun m!7050306 () Bool)

(assert (=> b!6222707 m!7050306))

(declare-fun m!7050308 () Bool)

(assert (=> bm!522457 m!7050308))

(declare-fun m!7050310 () Bool)

(assert (=> b!6222709 m!7050310))

(assert (=> b!6221612 d!1950702))

(declare-fun bs!1543101 () Bool)

(declare-fun d!1950704 () Bool)

(assert (= bs!1543101 (and d!1950704 d!1950170)))

(declare-fun lambda!340147 () Int)

(assert (=> bs!1543101 (= lambda!340147 lambda!340066)))

(declare-fun bs!1543102 () Bool)

(assert (= bs!1543102 (and d!1950704 d!1950388)))

(assert (=> bs!1543102 (= lambda!340147 lambda!340104)))

(declare-fun bs!1543103 () Bool)

(assert (= bs!1543103 (and d!1950704 d!1950122)))

(assert (=> bs!1543103 (= lambda!340147 lambda!340050)))

(declare-fun bs!1543104 () Bool)

(assert (= bs!1543104 (and d!1950704 d!1950588)))

(assert (=> bs!1543104 (= lambda!340147 lambda!340130)))

(declare-fun bs!1543105 () Bool)

(assert (= bs!1543105 (and d!1950704 d!1950174)))

(assert (=> bs!1543105 (= lambda!340147 lambda!340077)))

(declare-fun bs!1543106 () Bool)

(assert (= bs!1543106 (and d!1950704 d!1950428)))

(assert (=> bs!1543106 (= lambda!340147 lambda!340108)))

(declare-fun bs!1543107 () Bool)

(assert (= bs!1543107 (and d!1950704 d!1950186)))

(assert (=> bs!1543107 (= lambda!340147 lambda!340080)))

(declare-fun bs!1543108 () Bool)

(assert (= bs!1543108 (and d!1950704 d!1950116)))

(assert (=> bs!1543108 (= lambda!340147 lambda!340047)))

(declare-fun bs!1543109 () Bool)

(assert (= bs!1543109 (and d!1950704 d!1950224)))

(assert (=> bs!1543109 (= lambda!340147 lambda!340087)))

(assert (=> d!1950704 (= (inv!83639 setElem!42260) (forall!15271 (exprs!6041 setElem!42260) lambda!340147))))

(declare-fun bs!1543110 () Bool)

(assert (= bs!1543110 d!1950704))

(declare-fun m!7050312 () Bool)

(assert (=> bs!1543110 m!7050312))

(assert (=> setNonEmpty!42260 d!1950704))

(declare-fun b!6222712 () Bool)

(declare-fun e!3787827 () (InoxSet Context!11082))

(declare-fun e!3787830 () (InoxSet Context!11082))

(assert (=> b!6222712 (= e!3787827 e!3787830)))

(declare-fun c!1124461 () Bool)

(assert (=> b!6222712 (= c!1124461 ((_ is Union!16157) (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))))))

(declare-fun b!6222713 () Bool)

(declare-fun e!3787828 () (InoxSet Context!11082))

(declare-fun call!522464 () (InoxSet Context!11082))

(assert (=> b!6222713 (= e!3787828 call!522464)))

(declare-fun b!6222714 () Bool)

(declare-fun call!522465 () (InoxSet Context!11082))

(declare-fun call!522467 () (InoxSet Context!11082))

(assert (=> b!6222714 (= e!3787830 ((_ map or) call!522465 call!522467))))

(declare-fun c!1124460 () Bool)

(declare-fun bm!522458 () Bool)

(declare-fun c!1124459 () Bool)

(declare-fun call!522463 () List!64770)

(assert (=> bm!522458 (= call!522467 (derivationStepZipperDown!1405 (ite c!1124461 (regTwo!32827 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))) (ite c!1124460 (regTwo!32826 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))) (ite c!1124459 (regOne!32826 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))) (reg!16486 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292)))))))) (ite (or c!1124461 c!1124460) (ite c!1124056 lt!2344955 (Context!11083 call!522195)) (Context!11083 call!522463)) (h!71095 s!2326)))))

(declare-fun b!6222715 () Bool)

(declare-fun e!3787832 () (InoxSet Context!11082))

(declare-fun call!522468 () (InoxSet Context!11082))

(assert (=> b!6222715 (= e!3787832 ((_ map or) call!522465 call!522468))))

(declare-fun bm!522459 () Bool)

(declare-fun call!522466 () List!64770)

(assert (=> bm!522459 (= call!522465 (derivationStepZipperDown!1405 (ite c!1124461 (regOne!32827 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))) (regOne!32826 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292)))))) (ite c!1124461 (ite c!1124056 lt!2344955 (Context!11083 call!522195)) (Context!11083 call!522466)) (h!71095 s!2326)))))

(declare-fun bm!522460 () Bool)

(assert (=> bm!522460 (= call!522468 call!522467)))

(declare-fun b!6222716 () Bool)

(declare-fun c!1124463 () Bool)

(assert (=> b!6222716 (= c!1124463 ((_ is Star!16157) (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))))))

(declare-fun e!3787829 () (InoxSet Context!11082))

(assert (=> b!6222716 (= e!3787828 e!3787829)))

(declare-fun b!6222717 () Bool)

(assert (=> b!6222717 (= e!3787827 (store ((as const (Array Context!11082 Bool)) false) (ite c!1124056 lt!2344955 (Context!11083 call!522195)) true))))

(declare-fun b!6222711 () Bool)

(declare-fun e!3787831 () Bool)

(assert (=> b!6222711 (= c!1124460 e!3787831)))

(declare-fun res!2571813 () Bool)

(assert (=> b!6222711 (=> (not res!2571813) (not e!3787831))))

(assert (=> b!6222711 (= res!2571813 ((_ is Concat!25002) (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))))))

(assert (=> b!6222711 (= e!3787830 e!3787832)))

(declare-fun c!1124462 () Bool)

(declare-fun d!1950706 () Bool)

(assert (=> d!1950706 (= c!1124462 (and ((_ is ElementMatch!16157) (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))) (= (c!1123967 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))) (h!71095 s!2326))))))

(assert (=> d!1950706 (= (derivationStepZipperDown!1405 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292)))) (ite c!1124056 lt!2344955 (Context!11083 call!522195)) (h!71095 s!2326)) e!3787827)))

(declare-fun b!6222718 () Bool)

(assert (=> b!6222718 (= e!3787829 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522461 () Bool)

(assert (=> bm!522461 (= call!522463 call!522466)))

(declare-fun b!6222719 () Bool)

(assert (=> b!6222719 (= e!3787831 (nullable!6150 (regOne!32826 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292)))))))))

(declare-fun b!6222720 () Bool)

(assert (=> b!6222720 (= e!3787829 call!522464)))

(declare-fun bm!522462 () Bool)

(assert (=> bm!522462 (= call!522464 call!522468)))

(declare-fun b!6222721 () Bool)

(assert (=> b!6222721 (= e!3787832 e!3787828)))

(assert (=> b!6222721 (= c!1124459 ((_ is Concat!25002) (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))))))

(declare-fun bm!522463 () Bool)

(assert (=> bm!522463 (= call!522466 ($colon$colon!2026 (exprs!6041 (ite c!1124056 lt!2344955 (Context!11083 call!522195))) (ite (or c!1124460 c!1124459) (regTwo!32826 (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292))))) (ite c!1124056 (regOne!32827 (regTwo!32826 (regOne!32826 r!7292))) (regOne!32826 (regTwo!32826 (regOne!32826 r!7292)))))))))

(assert (= (and d!1950706 c!1124462) b!6222717))

(assert (= (and d!1950706 (not c!1124462)) b!6222712))

(assert (= (and b!6222712 c!1124461) b!6222714))

(assert (= (and b!6222712 (not c!1124461)) b!6222711))

(assert (= (and b!6222711 res!2571813) b!6222719))

(assert (= (and b!6222711 c!1124460) b!6222715))

(assert (= (and b!6222711 (not c!1124460)) b!6222721))

(assert (= (and b!6222721 c!1124459) b!6222713))

(assert (= (and b!6222721 (not c!1124459)) b!6222716))

(assert (= (and b!6222716 c!1124463) b!6222720))

(assert (= (and b!6222716 (not c!1124463)) b!6222718))

(assert (= (or b!6222713 b!6222720) bm!522461))

(assert (= (or b!6222713 b!6222720) bm!522462))

(assert (= (or b!6222715 bm!522461) bm!522463))

(assert (= (or b!6222715 bm!522462) bm!522460))

(assert (= (or b!6222714 bm!522460) bm!522458))

(assert (= (or b!6222714 b!6222715) bm!522459))

(declare-fun m!7050314 () Bool)

(assert (=> bm!522463 m!7050314))

(declare-fun m!7050316 () Bool)

(assert (=> b!6222719 m!7050316))

(declare-fun m!7050318 () Bool)

(assert (=> bm!522458 m!7050318))

(declare-fun m!7050320 () Bool)

(assert (=> bm!522459 m!7050320))

(declare-fun m!7050322 () Bool)

(assert (=> b!6222717 m!7050322))

(assert (=> bm!522188 d!1950706))

(declare-fun bs!1543111 () Bool)

(declare-fun d!1950708 () Bool)

(assert (= bs!1543111 (and d!1950708 d!1950170)))

(declare-fun lambda!340148 () Int)

(assert (=> bs!1543111 (= lambda!340148 lambda!340066)))

(declare-fun bs!1543112 () Bool)

(assert (= bs!1543112 (and d!1950708 d!1950388)))

(assert (=> bs!1543112 (= lambda!340148 lambda!340104)))

(declare-fun bs!1543113 () Bool)

(assert (= bs!1543113 (and d!1950708 d!1950588)))

(assert (=> bs!1543113 (= lambda!340148 lambda!340130)))

(declare-fun bs!1543114 () Bool)

(assert (= bs!1543114 (and d!1950708 d!1950174)))

(assert (=> bs!1543114 (= lambda!340148 lambda!340077)))

(declare-fun bs!1543115 () Bool)

(assert (= bs!1543115 (and d!1950708 d!1950428)))

(assert (=> bs!1543115 (= lambda!340148 lambda!340108)))

(declare-fun bs!1543116 () Bool)

(assert (= bs!1543116 (and d!1950708 d!1950186)))

(assert (=> bs!1543116 (= lambda!340148 lambda!340080)))

(declare-fun bs!1543117 () Bool)

(assert (= bs!1543117 (and d!1950708 d!1950122)))

(assert (=> bs!1543117 (= lambda!340148 lambda!340050)))

(declare-fun bs!1543118 () Bool)

(assert (= bs!1543118 (and d!1950708 d!1950704)))

(assert (=> bs!1543118 (= lambda!340148 lambda!340147)))

(declare-fun bs!1543119 () Bool)

(assert (= bs!1543119 (and d!1950708 d!1950116)))

(assert (=> bs!1543119 (= lambda!340148 lambda!340047)))

(declare-fun bs!1543120 () Bool)

(assert (= bs!1543120 (and d!1950708 d!1950224)))

(assert (=> bs!1543120 (= lambda!340148 lambda!340087)))

(declare-fun b!6222722 () Bool)

(declare-fun e!3787838 () Regex!16157)

(declare-fun e!3787836 () Regex!16157)

(assert (=> b!6222722 (= e!3787838 e!3787836)))

(declare-fun c!1124465 () Bool)

(assert (=> b!6222722 (= c!1124465 ((_ is Cons!64646) (t!378302 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6222723 () Bool)

(assert (=> b!6222723 (= e!3787836 (Concat!25002 (h!71094 (t!378302 (exprs!6041 (h!71096 zl!343)))) (generalisedConcat!1754 (t!378302 (t!378302 (exprs!6041 (h!71096 zl!343)))))))))

(declare-fun b!6222724 () Bool)

(assert (=> b!6222724 (= e!3787838 (h!71094 (t!378302 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6222725 () Bool)

(declare-fun e!3787834 () Bool)

(declare-fun lt!2345102 () Regex!16157)

(assert (=> b!6222725 (= e!3787834 (= lt!2345102 (head!12823 (t!378302 (exprs!6041 (h!71096 zl!343))))))))

(declare-fun b!6222726 () Bool)

(assert (=> b!6222726 (= e!3787834 (isConcat!1090 lt!2345102))))

(declare-fun b!6222727 () Bool)

(assert (=> b!6222727 (= e!3787836 EmptyExpr!16157)))

(declare-fun e!3787833 () Bool)

(assert (=> d!1950708 e!3787833))

(declare-fun res!2571814 () Bool)

(assert (=> d!1950708 (=> (not res!2571814) (not e!3787833))))

(assert (=> d!1950708 (= res!2571814 (validRegex!7893 lt!2345102))))

(assert (=> d!1950708 (= lt!2345102 e!3787838)))

(declare-fun c!1124467 () Bool)

(declare-fun e!3787835 () Bool)

(assert (=> d!1950708 (= c!1124467 e!3787835)))

(declare-fun res!2571815 () Bool)

(assert (=> d!1950708 (=> (not res!2571815) (not e!3787835))))

(assert (=> d!1950708 (= res!2571815 ((_ is Cons!64646) (t!378302 (exprs!6041 (h!71096 zl!343)))))))

(assert (=> d!1950708 (forall!15271 (t!378302 (exprs!6041 (h!71096 zl!343))) lambda!340148)))

(assert (=> d!1950708 (= (generalisedConcat!1754 (t!378302 (exprs!6041 (h!71096 zl!343)))) lt!2345102)))

(declare-fun b!6222728 () Bool)

(declare-fun e!3787837 () Bool)

(assert (=> b!6222728 (= e!3787837 (isEmptyExpr!1567 lt!2345102))))

(declare-fun b!6222729 () Bool)

(assert (=> b!6222729 (= e!3787833 e!3787837)))

(declare-fun c!1124466 () Bool)

(assert (=> b!6222729 (= c!1124466 (isEmpty!36655 (t!378302 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun b!6222730 () Bool)

(assert (=> b!6222730 (= e!3787835 (isEmpty!36655 (t!378302 (t!378302 (exprs!6041 (h!71096 zl!343))))))))

(declare-fun b!6222731 () Bool)

(assert (=> b!6222731 (= e!3787837 e!3787834)))

(declare-fun c!1124464 () Bool)

(assert (=> b!6222731 (= c!1124464 (isEmpty!36655 (tail!11908 (t!378302 (exprs!6041 (h!71096 zl!343))))))))

(assert (= (and d!1950708 res!2571815) b!6222730))

(assert (= (and d!1950708 c!1124467) b!6222724))

(assert (= (and d!1950708 (not c!1124467)) b!6222722))

(assert (= (and b!6222722 c!1124465) b!6222723))

(assert (= (and b!6222722 (not c!1124465)) b!6222727))

(assert (= (and d!1950708 res!2571814) b!6222729))

(assert (= (and b!6222729 c!1124466) b!6222728))

(assert (= (and b!6222729 (not c!1124466)) b!6222731))

(assert (= (and b!6222731 c!1124464) b!6222725))

(assert (= (and b!6222731 (not c!1124464)) b!6222726))

(declare-fun m!7050324 () Bool)

(assert (=> b!6222731 m!7050324))

(assert (=> b!6222731 m!7050324))

(declare-fun m!7050326 () Bool)

(assert (=> b!6222731 m!7050326))

(declare-fun m!7050328 () Bool)

(assert (=> b!6222725 m!7050328))

(declare-fun m!7050330 () Bool)

(assert (=> b!6222728 m!7050330))

(declare-fun m!7050332 () Bool)

(assert (=> d!1950708 m!7050332))

(declare-fun m!7050334 () Bool)

(assert (=> d!1950708 m!7050334))

(declare-fun m!7050336 () Bool)

(assert (=> b!6222723 m!7050336))

(declare-fun m!7050338 () Bool)

(assert (=> b!6222730 m!7050338))

(assert (=> b!6222729 m!7048742))

(declare-fun m!7050340 () Bool)

(assert (=> b!6222726 m!7050340))

(assert (=> b!6221316 d!1950708))

(declare-fun d!1950710 () Bool)

(assert (=> d!1950710 (= (isEmptyLang!1576 lt!2345046) ((_ is EmptyLang!16157) lt!2345046))))

(assert (=> b!6221455 d!1950710))

(declare-fun b!6222732 () Bool)

(declare-fun e!3787841 () Bool)

(declare-fun call!522470 () Bool)

(assert (=> b!6222732 (= e!3787841 call!522470)))

(declare-fun d!1950712 () Bool)

(declare-fun res!2571816 () Bool)

(declare-fun e!3787844 () Bool)

(assert (=> d!1950712 (=> res!2571816 e!3787844)))

(assert (=> d!1950712 (= res!2571816 ((_ is EmptyExpr!16157) (regOne!32826 (regOne!32826 r!7292))))))

(assert (=> d!1950712 (= (nullableFct!2106 (regOne!32826 (regOne!32826 r!7292))) e!3787844)))

(declare-fun b!6222733 () Bool)

(declare-fun e!3787840 () Bool)

(assert (=> b!6222733 (= e!3787840 e!3787841)))

(declare-fun res!2571819 () Bool)

(declare-fun call!522469 () Bool)

(assert (=> b!6222733 (= res!2571819 call!522469)))

(assert (=> b!6222733 (=> res!2571819 e!3787841)))

(declare-fun b!6222734 () Bool)

(declare-fun e!3787839 () Bool)

(declare-fun e!3787843 () Bool)

(assert (=> b!6222734 (= e!3787839 e!3787843)))

(declare-fun res!2571817 () Bool)

(assert (=> b!6222734 (=> res!2571817 e!3787843)))

(assert (=> b!6222734 (= res!2571817 ((_ is Star!16157) (regOne!32826 (regOne!32826 r!7292))))))

(declare-fun b!6222735 () Bool)

(declare-fun e!3787842 () Bool)

(assert (=> b!6222735 (= e!3787842 call!522470)))

(declare-fun bm!522464 () Bool)

(declare-fun c!1124468 () Bool)

(assert (=> bm!522464 (= call!522469 (nullable!6150 (ite c!1124468 (regOne!32827 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 (regOne!32826 r!7292))))))))

(declare-fun b!6222736 () Bool)

(assert (=> b!6222736 (= e!3787840 e!3787842)))

(declare-fun res!2571820 () Bool)

(assert (=> b!6222736 (= res!2571820 call!522469)))

(assert (=> b!6222736 (=> (not res!2571820) (not e!3787842))))

(declare-fun bm!522465 () Bool)

(assert (=> bm!522465 (= call!522470 (nullable!6150 (ite c!1124468 (regTwo!32827 (regOne!32826 (regOne!32826 r!7292))) (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))))))))

(declare-fun b!6222737 () Bool)

(assert (=> b!6222737 (= e!3787843 e!3787840)))

(assert (=> b!6222737 (= c!1124468 ((_ is Union!16157) (regOne!32826 (regOne!32826 r!7292))))))

(declare-fun b!6222738 () Bool)

(assert (=> b!6222738 (= e!3787844 e!3787839)))

(declare-fun res!2571818 () Bool)

(assert (=> b!6222738 (=> (not res!2571818) (not e!3787839))))

(assert (=> b!6222738 (= res!2571818 (and (not ((_ is EmptyLang!16157) (regOne!32826 (regOne!32826 r!7292)))) (not ((_ is ElementMatch!16157) (regOne!32826 (regOne!32826 r!7292))))))))

(assert (= (and d!1950712 (not res!2571816)) b!6222738))

(assert (= (and b!6222738 res!2571818) b!6222734))

(assert (= (and b!6222734 (not res!2571817)) b!6222737))

(assert (= (and b!6222737 c!1124468) b!6222733))

(assert (= (and b!6222737 (not c!1124468)) b!6222736))

(assert (= (and b!6222733 (not res!2571819)) b!6222732))

(assert (= (and b!6222736 res!2571820) b!6222735))

(assert (= (or b!6222732 b!6222735) bm!522465))

(assert (= (or b!6222733 b!6222736) bm!522464))

(declare-fun m!7050342 () Bool)

(assert (=> bm!522464 m!7050342))

(declare-fun m!7050344 () Bool)

(assert (=> bm!522465 m!7050344))

(assert (=> d!1950230 d!1950712))

(assert (=> b!6221643 d!1950086))

(assert (=> b!6221608 d!1950384))

(declare-fun bs!1543121 () Bool)

(declare-fun d!1950714 () Bool)

(assert (= bs!1543121 (and d!1950714 d!1950454)))

(declare-fun lambda!340149 () Int)

(assert (=> bs!1543121 (= lambda!340149 lambda!340116)))

(declare-fun bs!1543122 () Bool)

(assert (= bs!1543122 (and d!1950714 d!1950698)))

(assert (=> bs!1543122 (= lambda!340149 lambda!340146)))

(declare-fun bs!1543123 () Bool)

(assert (= bs!1543123 (and d!1950714 d!1950660)))

(assert (=> bs!1543123 (= lambda!340149 lambda!340143)))

(declare-fun bs!1543124 () Bool)

(assert (= bs!1543124 (and d!1950714 d!1950638)))

(assert (=> bs!1543124 (= lambda!340149 lambda!340141)))

(declare-fun bs!1543125 () Bool)

(assert (= bs!1543125 (and d!1950714 d!1950522)))

(assert (=> bs!1543125 (= lambda!340149 lambda!340126)))

(assert (=> d!1950714 (= (nullableZipper!1931 lt!2344967) (exists!2491 lt!2344967 lambda!340149))))

(declare-fun bs!1543126 () Bool)

(assert (= bs!1543126 d!1950714))

(declare-fun m!7050346 () Bool)

(assert (=> bs!1543126 m!7050346))

(assert (=> b!6221424 d!1950714))

(assert (=> bs!1542812 d!1950104))

(assert (=> b!6221644 d!1950172))

(declare-fun d!1950716 () Bool)

(assert (=> d!1950716 (= (isEmpty!36655 (tail!11908 (unfocusZipperList!1578 zl!343))) ((_ is Nil!64646) (tail!11908 (unfocusZipperList!1578 zl!343))))))

(assert (=> b!6221460 d!1950716))

(declare-fun d!1950718 () Bool)

(assert (=> d!1950718 (= (tail!11908 (unfocusZipperList!1578 zl!343)) (t!378302 (unfocusZipperList!1578 zl!343)))))

(assert (=> b!6221460 d!1950718))

(assert (=> d!1950202 d!1950212))

(declare-fun d!1950720 () Bool)

(assert (=> d!1950720 (= (flatMap!1662 z!1189 lambda!340023) (dynLambda!25507 lambda!340023 (h!71096 zl!343)))))

(assert (=> d!1950720 true))

(declare-fun _$13!3262 () Unit!157959)

(assert (=> d!1950720 (= (choose!46226 z!1189 (h!71096 zl!343) lambda!340023) _$13!3262)))

(declare-fun b_lambda!236581 () Bool)

(assert (=> (not b_lambda!236581) (not d!1950720)))

(declare-fun bs!1543127 () Bool)

(assert (= bs!1543127 d!1950720))

(assert (=> bs!1543127 m!7048814))

(assert (=> bs!1543127 m!7049272))

(assert (=> d!1950202 d!1950720))

(declare-fun d!1950722 () Bool)

(assert (=> d!1950722 (= (nullable!6150 (h!71094 (exprs!6041 lt!2344955))) (nullableFct!2106 (h!71094 (exprs!6041 lt!2344955))))))

(declare-fun bs!1543128 () Bool)

(assert (= bs!1543128 d!1950722))

(declare-fun m!7050348 () Bool)

(assert (=> bs!1543128 m!7050348))

(assert (=> b!6221615 d!1950722))

(declare-fun b!6222740 () Bool)

(declare-fun e!3787846 () List!64771)

(assert (=> b!6222740 (= e!3787846 (Cons!64647 (h!71095 (_1!36439 (get!22328 lt!2345021))) (++!14234 (t!378303 (_1!36439 (get!22328 lt!2345021))) (_2!36439 (get!22328 lt!2345021)))))))

(declare-fun d!1950724 () Bool)

(declare-fun e!3787845 () Bool)

(assert (=> d!1950724 e!3787845))

(declare-fun res!2571821 () Bool)

(assert (=> d!1950724 (=> (not res!2571821) (not e!3787845))))

(declare-fun lt!2345103 () List!64771)

(assert (=> d!1950724 (= res!2571821 (= (content!12110 lt!2345103) ((_ map or) (content!12110 (_1!36439 (get!22328 lt!2345021))) (content!12110 (_2!36439 (get!22328 lt!2345021))))))))

(assert (=> d!1950724 (= lt!2345103 e!3787846)))

(declare-fun c!1124469 () Bool)

(assert (=> d!1950724 (= c!1124469 ((_ is Nil!64647) (_1!36439 (get!22328 lt!2345021))))))

(assert (=> d!1950724 (= (++!14234 (_1!36439 (get!22328 lt!2345021)) (_2!36439 (get!22328 lt!2345021))) lt!2345103)))

(declare-fun b!6222739 () Bool)

(assert (=> b!6222739 (= e!3787846 (_2!36439 (get!22328 lt!2345021)))))

(declare-fun b!6222742 () Bool)

(assert (=> b!6222742 (= e!3787845 (or (not (= (_2!36439 (get!22328 lt!2345021)) Nil!64647)) (= lt!2345103 (_1!36439 (get!22328 lt!2345021)))))))

(declare-fun b!6222741 () Bool)

(declare-fun res!2571822 () Bool)

(assert (=> b!6222741 (=> (not res!2571822) (not e!3787845))))

(assert (=> b!6222741 (= res!2571822 (= (size!40284 lt!2345103) (+ (size!40284 (_1!36439 (get!22328 lt!2345021))) (size!40284 (_2!36439 (get!22328 lt!2345021))))))))

(assert (= (and d!1950724 c!1124469) b!6222739))

(assert (= (and d!1950724 (not c!1124469)) b!6222740))

(assert (= (and d!1950724 res!2571821) b!6222741))

(assert (= (and b!6222741 res!2571822) b!6222742))

(declare-fun m!7050350 () Bool)

(assert (=> b!6222740 m!7050350))

(declare-fun m!7050352 () Bool)

(assert (=> d!1950724 m!7050352))

(declare-fun m!7050354 () Bool)

(assert (=> d!1950724 m!7050354))

(declare-fun m!7050356 () Bool)

(assert (=> d!1950724 m!7050356))

(declare-fun m!7050358 () Bool)

(assert (=> b!6222741 m!7050358))

(declare-fun m!7050360 () Bool)

(assert (=> b!6222741 m!7050360))

(declare-fun m!7050362 () Bool)

(assert (=> b!6222741 m!7050362))

(assert (=> b!6221376 d!1950724))

(assert (=> b!6221376 d!1950562))

(declare-fun d!1950726 () Bool)

(declare-fun c!1124470 () Bool)

(assert (=> d!1950726 (= c!1124470 (isEmpty!36657 (tail!11907 (t!378303 s!2326))))))

(declare-fun e!3787847 () Bool)

(assert (=> d!1950726 (= (matchZipper!2169 (derivationStepZipper!2123 lt!2344949 (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))) e!3787847)))

(declare-fun b!6222743 () Bool)

(assert (=> b!6222743 (= e!3787847 (nullableZipper!1931 (derivationStepZipper!2123 lt!2344949 (head!12822 (t!378303 s!2326)))))))

(declare-fun b!6222744 () Bool)

(assert (=> b!6222744 (= e!3787847 (matchZipper!2169 (derivationStepZipper!2123 (derivationStepZipper!2123 lt!2344949 (head!12822 (t!378303 s!2326))) (head!12822 (tail!11907 (t!378303 s!2326)))) (tail!11907 (tail!11907 (t!378303 s!2326)))))))

(assert (= (and d!1950726 c!1124470) b!6222743))

(assert (= (and d!1950726 (not c!1124470)) b!6222744))

(assert (=> d!1950726 m!7049012))

(assert (=> d!1950726 m!7049944))

(assert (=> b!6222743 m!7049010))

(declare-fun m!7050364 () Bool)

(assert (=> b!6222743 m!7050364))

(assert (=> b!6222744 m!7049012))

(assert (=> b!6222744 m!7049948))

(assert (=> b!6222744 m!7049010))

(assert (=> b!6222744 m!7049948))

(declare-fun m!7050366 () Bool)

(assert (=> b!6222744 m!7050366))

(assert (=> b!6222744 m!7049012))

(assert (=> b!6222744 m!7049952))

(assert (=> b!6222744 m!7050366))

(assert (=> b!6222744 m!7049952))

(declare-fun m!7050368 () Bool)

(assert (=> b!6222744 m!7050368))

(assert (=> b!6221201 d!1950726))

(declare-fun bs!1543129 () Bool)

(declare-fun d!1950728 () Bool)

(assert (= bs!1543129 (and d!1950728 b!6220909)))

(declare-fun lambda!340150 () Int)

(assert (=> bs!1543129 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340150 lambda!340023))))

(declare-fun bs!1543130 () Bool)

(assert (= bs!1543130 (and d!1950728 d!1950528)))

(assert (=> bs!1543130 (= lambda!340150 lambda!340127)))

(declare-fun bs!1543131 () Bool)

(assert (= bs!1543131 (and d!1950728 d!1950634)))

(assert (=> bs!1543131 (= lambda!340150 lambda!340140)))

(declare-fun bs!1543132 () Bool)

(assert (= bs!1543132 (and d!1950728 d!1950646)))

(assert (=> bs!1543132 (= lambda!340150 lambda!340142)))

(declare-fun bs!1543133 () Bool)

(assert (= bs!1543133 (and d!1950728 d!1950110)))

(assert (=> bs!1543133 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340150 lambda!340042))))

(declare-fun bs!1543134 () Bool)

(assert (= bs!1543134 (and d!1950728 d!1950556)))

(assert (=> bs!1543134 (= lambda!340150 lambda!340128)))

(assert (=> d!1950728 true))

(assert (=> d!1950728 (= (derivationStepZipper!2123 lt!2344949 (head!12822 (t!378303 s!2326))) (flatMap!1662 lt!2344949 lambda!340150))))

(declare-fun bs!1543135 () Bool)

(assert (= bs!1543135 d!1950728))

(declare-fun m!7050370 () Bool)

(assert (=> bs!1543135 m!7050370))

(assert (=> b!6221201 d!1950728))

(assert (=> b!6221201 d!1950530))

(assert (=> b!6221201 d!1950532))

(declare-fun b!6222745 () Bool)

(declare-fun e!3787851 () Bool)

(declare-fun e!3787848 () Bool)

(assert (=> b!6222745 (= e!3787851 e!3787848)))

(declare-fun res!2571827 () Bool)

(assert (=> b!6222745 (=> res!2571827 e!3787848)))

(declare-fun call!522471 () Bool)

(assert (=> b!6222745 (= res!2571827 call!522471)))

(declare-fun b!6222746 () Bool)

(declare-fun e!3787854 () Bool)

(declare-fun lt!2345104 () Bool)

(assert (=> b!6222746 (= e!3787854 (= lt!2345104 call!522471))))

(declare-fun bm!522466 () Bool)

(assert (=> bm!522466 (= call!522471 (isEmpty!36657 (_1!36439 (get!22328 lt!2345021))))))

(declare-fun b!6222747 () Bool)

(declare-fun res!2571830 () Bool)

(declare-fun e!3787852 () Bool)

(assert (=> b!6222747 (=> res!2571830 e!3787852)))

(declare-fun e!3787849 () Bool)

(assert (=> b!6222747 (= res!2571830 e!3787849)))

(declare-fun res!2571825 () Bool)

(assert (=> b!6222747 (=> (not res!2571825) (not e!3787849))))

(assert (=> b!6222747 (= res!2571825 lt!2345104)))

(declare-fun b!6222748 () Bool)

(declare-fun res!2571829 () Bool)

(assert (=> b!6222748 (=> (not res!2571829) (not e!3787849))))

(assert (=> b!6222748 (= res!2571829 (isEmpty!36657 (tail!11907 (_1!36439 (get!22328 lt!2345021)))))))

(declare-fun b!6222749 () Bool)

(declare-fun e!3787850 () Bool)

(assert (=> b!6222749 (= e!3787854 e!3787850)))

(declare-fun c!1124472 () Bool)

(assert (=> b!6222749 (= c!1124472 ((_ is EmptyLang!16157) (regOne!32826 r!7292)))))

(declare-fun b!6222750 () Bool)

(assert (=> b!6222750 (= e!3787850 (not lt!2345104))))

(declare-fun b!6222751 () Bool)

(assert (=> b!6222751 (= e!3787848 (not (= (head!12822 (_1!36439 (get!22328 lt!2345021))) (c!1123967 (regOne!32826 r!7292)))))))

(declare-fun b!6222752 () Bool)

(declare-fun e!3787853 () Bool)

(assert (=> b!6222752 (= e!3787853 (nullable!6150 (regOne!32826 r!7292)))))

(declare-fun b!6222753 () Bool)

(assert (=> b!6222753 (= e!3787853 (matchR!8340 (derivativeStep!4870 (regOne!32826 r!7292) (head!12822 (_1!36439 (get!22328 lt!2345021)))) (tail!11907 (_1!36439 (get!22328 lt!2345021)))))))

(declare-fun b!6222754 () Bool)

(declare-fun res!2571828 () Bool)

(assert (=> b!6222754 (=> (not res!2571828) (not e!3787849))))

(assert (=> b!6222754 (= res!2571828 (not call!522471))))

(declare-fun b!6222755 () Bool)

(assert (=> b!6222755 (= e!3787852 e!3787851)))

(declare-fun res!2571824 () Bool)

(assert (=> b!6222755 (=> (not res!2571824) (not e!3787851))))

(assert (=> b!6222755 (= res!2571824 (not lt!2345104))))

(declare-fun d!1950730 () Bool)

(assert (=> d!1950730 e!3787854))

(declare-fun c!1124473 () Bool)

(assert (=> d!1950730 (= c!1124473 ((_ is EmptyExpr!16157) (regOne!32826 r!7292)))))

(assert (=> d!1950730 (= lt!2345104 e!3787853)))

(declare-fun c!1124471 () Bool)

(assert (=> d!1950730 (= c!1124471 (isEmpty!36657 (_1!36439 (get!22328 lt!2345021))))))

(assert (=> d!1950730 (validRegex!7893 (regOne!32826 r!7292))))

(assert (=> d!1950730 (= (matchR!8340 (regOne!32826 r!7292) (_1!36439 (get!22328 lt!2345021))) lt!2345104)))

(declare-fun b!6222756 () Bool)

(declare-fun res!2571826 () Bool)

(assert (=> b!6222756 (=> res!2571826 e!3787852)))

(assert (=> b!6222756 (= res!2571826 (not ((_ is ElementMatch!16157) (regOne!32826 r!7292))))))

(assert (=> b!6222756 (= e!3787850 e!3787852)))

(declare-fun b!6222757 () Bool)

(declare-fun res!2571823 () Bool)

(assert (=> b!6222757 (=> res!2571823 e!3787848)))

(assert (=> b!6222757 (= res!2571823 (not (isEmpty!36657 (tail!11907 (_1!36439 (get!22328 lt!2345021))))))))

(declare-fun b!6222758 () Bool)

(assert (=> b!6222758 (= e!3787849 (= (head!12822 (_1!36439 (get!22328 lt!2345021))) (c!1123967 (regOne!32826 r!7292))))))

(assert (= (and d!1950730 c!1124471) b!6222752))

(assert (= (and d!1950730 (not c!1124471)) b!6222753))

(assert (= (and d!1950730 c!1124473) b!6222746))

(assert (= (and d!1950730 (not c!1124473)) b!6222749))

(assert (= (and b!6222749 c!1124472) b!6222750))

(assert (= (and b!6222749 (not c!1124472)) b!6222756))

(assert (= (and b!6222756 (not res!2571826)) b!6222747))

(assert (= (and b!6222747 res!2571825) b!6222754))

(assert (= (and b!6222754 res!2571828) b!6222748))

(assert (= (and b!6222748 res!2571829) b!6222758))

(assert (= (and b!6222747 (not res!2571830)) b!6222755))

(assert (= (and b!6222755 res!2571824) b!6222745))

(assert (= (and b!6222745 (not res!2571827)) b!6222757))

(assert (= (and b!6222757 (not res!2571823)) b!6222751))

(assert (= (or b!6222746 b!6222745 b!6222754) bm!522466))

(assert (=> b!6222752 m!7049664))

(declare-fun m!7050372 () Bool)

(assert (=> bm!522466 m!7050372))

(declare-fun m!7050374 () Bool)

(assert (=> b!6222751 m!7050374))

(assert (=> b!6222758 m!7050374))

(assert (=> d!1950730 m!7050372))

(assert (=> d!1950730 m!7049144))

(assert (=> b!6222753 m!7050374))

(assert (=> b!6222753 m!7050374))

(declare-fun m!7050376 () Bool)

(assert (=> b!6222753 m!7050376))

(declare-fun m!7050378 () Bool)

(assert (=> b!6222753 m!7050378))

(assert (=> b!6222753 m!7050376))

(assert (=> b!6222753 m!7050378))

(declare-fun m!7050380 () Bool)

(assert (=> b!6222753 m!7050380))

(assert (=> b!6222757 m!7050378))

(assert (=> b!6222757 m!7050378))

(declare-fun m!7050382 () Bool)

(assert (=> b!6222757 m!7050382))

(assert (=> b!6222748 m!7050378))

(assert (=> b!6222748 m!7050378))

(assert (=> b!6222748 m!7050382))

(assert (=> b!6221380 d!1950730))

(assert (=> b!6221380 d!1950562))

(declare-fun d!1950732 () Bool)

(declare-fun c!1124474 () Bool)

(declare-fun e!3787855 () Bool)

(assert (=> d!1950732 (= c!1124474 e!3787855)))

(declare-fun res!2571831 () Bool)

(assert (=> d!1950732 (=> (not res!2571831) (not e!3787855))))

(assert (=> d!1950732 (= res!2571831 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))))))))

(declare-fun e!3787856 () (InoxSet Context!11082))

(assert (=> d!1950732 (= (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))) (h!71095 s!2326)) e!3787856)))

(declare-fun b!6222759 () Bool)

(declare-fun e!3787857 () (InoxSet Context!11082))

(assert (=> b!6222759 (= e!3787856 e!3787857)))

(declare-fun c!1124475 () Bool)

(assert (=> b!6222759 (= c!1124475 ((_ is Cons!64646) (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))))))))

(declare-fun b!6222760 () Bool)

(assert (=> b!6222760 (= e!3787855 (nullable!6150 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343))))))))))

(declare-fun bm!522467 () Bool)

(declare-fun call!522472 () (InoxSet Context!11082))

(assert (=> bm!522467 (= call!522472 (derivationStepZipperDown!1405 (h!71094 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343)))))) (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343))))))) (h!71095 s!2326)))))

(declare-fun b!6222761 () Bool)

(assert (=> b!6222761 (= e!3787857 ((as const (Array Context!11082 Bool)) false))))

(declare-fun b!6222762 () Bool)

(assert (=> b!6222762 (= e!3787856 ((_ map or) call!522472 (derivationStepZipperUp!1331 (Context!11083 (t!378302 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 (h!71096 zl!343))))))) (h!71095 s!2326))))))

(declare-fun b!6222763 () Bool)

(assert (=> b!6222763 (= e!3787857 call!522472)))

(assert (= (and d!1950732 res!2571831) b!6222760))

(assert (= (and d!1950732 c!1124474) b!6222762))

(assert (= (and d!1950732 (not c!1124474)) b!6222759))

(assert (= (and b!6222759 c!1124475) b!6222763))

(assert (= (and b!6222759 (not c!1124475)) b!6222761))

(assert (= (or b!6222762 b!6222763) bm!522467))

(declare-fun m!7050384 () Bool)

(assert (=> b!6222760 m!7050384))

(declare-fun m!7050386 () Bool)

(assert (=> bm!522467 m!7050386))

(declare-fun m!7050388 () Bool)

(assert (=> b!6222762 m!7050388))

(assert (=> b!6221622 d!1950732))

(declare-fun d!1950734 () Bool)

(assert (=> d!1950734 (= (nullable!6150 (regOne!32826 (regOne!32826 (regOne!32826 r!7292)))) (nullableFct!2106 (regOne!32826 (regOne!32826 (regOne!32826 r!7292)))))))

(declare-fun bs!1543136 () Bool)

(assert (= bs!1543136 d!1950734))

(declare-fun m!7050390 () Bool)

(assert (=> bs!1543136 m!7050390))

(assert (=> b!6221178 d!1950734))

(declare-fun d!1950736 () Bool)

(assert (=> d!1950736 (= (nullable!6150 (h!71094 (exprs!6041 lt!2344958))) (nullableFct!2106 (h!71094 (exprs!6041 lt!2344958))))))

(declare-fun bs!1543137 () Bool)

(assert (= bs!1543137 d!1950736))

(declare-fun m!7050392 () Bool)

(assert (=> bs!1543137 m!7050392))

(assert (=> b!6221241 d!1950736))

(declare-fun d!1950738 () Bool)

(assert (=> d!1950738 (= ($colon$colon!2026 (exprs!6041 lt!2344958) (ite (or c!1124060 c!1124059) (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 r!7292)))) (Cons!64646 (ite (or c!1124060 c!1124059) (regTwo!32826 (regOne!32826 (regOne!32826 r!7292))) (regOne!32826 (regOne!32826 r!7292))) (exprs!6041 lt!2344958)))))

(assert (=> bm!522198 d!1950738))

(assert (=> d!1950228 d!1950548))

(declare-fun b!6222765 () Bool)

(declare-fun e!3787858 () (InoxSet Context!11082))

(declare-fun e!3787861 () (InoxSet Context!11082))

(assert (=> b!6222765 (= e!3787858 e!3787861)))

(declare-fun c!1124478 () Bool)

(assert (=> b!6222765 (= c!1124478 ((_ is Union!16157) (h!71094 (exprs!6041 lt!2344947))))))

(declare-fun b!6222766 () Bool)

(declare-fun e!3787859 () (InoxSet Context!11082))

(declare-fun call!522474 () (InoxSet Context!11082))

(assert (=> b!6222766 (= e!3787859 call!522474)))

(declare-fun b!6222767 () Bool)

(declare-fun call!522475 () (InoxSet Context!11082))

(declare-fun call!522477 () (InoxSet Context!11082))

(assert (=> b!6222767 (= e!3787861 ((_ map or) call!522475 call!522477))))

(declare-fun c!1124477 () Bool)

(declare-fun c!1124476 () Bool)

(declare-fun bm!522468 () Bool)

(declare-fun call!522473 () List!64770)

(assert (=> bm!522468 (= call!522477 (derivationStepZipperDown!1405 (ite c!1124478 (regTwo!32827 (h!71094 (exprs!6041 lt!2344947))) (ite c!1124477 (regTwo!32826 (h!71094 (exprs!6041 lt!2344947))) (ite c!1124476 (regOne!32826 (h!71094 (exprs!6041 lt!2344947))) (reg!16486 (h!71094 (exprs!6041 lt!2344947)))))) (ite (or c!1124478 c!1124477) (Context!11083 (t!378302 (exprs!6041 lt!2344947))) (Context!11083 call!522473)) (h!71095 s!2326)))))

(declare-fun b!6222768 () Bool)

(declare-fun e!3787863 () (InoxSet Context!11082))

(declare-fun call!522478 () (InoxSet Context!11082))

(assert (=> b!6222768 (= e!3787863 ((_ map or) call!522475 call!522478))))

(declare-fun bm!522469 () Bool)

(declare-fun call!522476 () List!64770)

(assert (=> bm!522469 (= call!522475 (derivationStepZipperDown!1405 (ite c!1124478 (regOne!32827 (h!71094 (exprs!6041 lt!2344947))) (regOne!32826 (h!71094 (exprs!6041 lt!2344947)))) (ite c!1124478 (Context!11083 (t!378302 (exprs!6041 lt!2344947))) (Context!11083 call!522476)) (h!71095 s!2326)))))

(declare-fun bm!522470 () Bool)

(assert (=> bm!522470 (= call!522478 call!522477)))

(declare-fun b!6222769 () Bool)

(declare-fun c!1124480 () Bool)

(assert (=> b!6222769 (= c!1124480 ((_ is Star!16157) (h!71094 (exprs!6041 lt!2344947))))))

(declare-fun e!3787860 () (InoxSet Context!11082))

(assert (=> b!6222769 (= e!3787859 e!3787860)))

(declare-fun b!6222770 () Bool)

(assert (=> b!6222770 (= e!3787858 (store ((as const (Array Context!11082 Bool)) false) (Context!11083 (t!378302 (exprs!6041 lt!2344947))) true))))

(declare-fun b!6222764 () Bool)

(declare-fun e!3787862 () Bool)

(assert (=> b!6222764 (= c!1124477 e!3787862)))

(declare-fun res!2571832 () Bool)

(assert (=> b!6222764 (=> (not res!2571832) (not e!3787862))))

(assert (=> b!6222764 (= res!2571832 ((_ is Concat!25002) (h!71094 (exprs!6041 lt!2344947))))))

(assert (=> b!6222764 (= e!3787861 e!3787863)))

(declare-fun d!1950740 () Bool)

(declare-fun c!1124479 () Bool)

(assert (=> d!1950740 (= c!1124479 (and ((_ is ElementMatch!16157) (h!71094 (exprs!6041 lt!2344947))) (= (c!1123967 (h!71094 (exprs!6041 lt!2344947))) (h!71095 s!2326))))))

(assert (=> d!1950740 (= (derivationStepZipperDown!1405 (h!71094 (exprs!6041 lt!2344947)) (Context!11083 (t!378302 (exprs!6041 lt!2344947))) (h!71095 s!2326)) e!3787858)))

(declare-fun b!6222771 () Bool)

(assert (=> b!6222771 (= e!3787860 ((as const (Array Context!11082 Bool)) false))))

(declare-fun bm!522471 () Bool)

(assert (=> bm!522471 (= call!522473 call!522476)))

(declare-fun b!6222772 () Bool)

(assert (=> b!6222772 (= e!3787862 (nullable!6150 (regOne!32826 (h!71094 (exprs!6041 lt!2344947)))))))

(declare-fun b!6222773 () Bool)

(assert (=> b!6222773 (= e!3787860 call!522474)))

(declare-fun bm!522472 () Bool)

(assert (=> bm!522472 (= call!522474 call!522478)))

(declare-fun b!6222774 () Bool)

(assert (=> b!6222774 (= e!3787863 e!3787859)))

(assert (=> b!6222774 (= c!1124476 ((_ is Concat!25002) (h!71094 (exprs!6041 lt!2344947))))))

(declare-fun bm!522473 () Bool)

(assert (=> bm!522473 (= call!522476 ($colon$colon!2026 (exprs!6041 (Context!11083 (t!378302 (exprs!6041 lt!2344947)))) (ite (or c!1124477 c!1124476) (regTwo!32826 (h!71094 (exprs!6041 lt!2344947))) (h!71094 (exprs!6041 lt!2344947)))))))

(assert (= (and d!1950740 c!1124479) b!6222770))

(assert (= (and d!1950740 (not c!1124479)) b!6222765))

(assert (= (and b!6222765 c!1124478) b!6222767))

(assert (= (and b!6222765 (not c!1124478)) b!6222764))

(assert (= (and b!6222764 res!2571832) b!6222772))

(assert (= (and b!6222764 c!1124477) b!6222768))

(assert (= (and b!6222764 (not c!1124477)) b!6222774))

(assert (= (and b!6222774 c!1124476) b!6222766))

(assert (= (and b!6222774 (not c!1124476)) b!6222769))

(assert (= (and b!6222769 c!1124480) b!6222773))

(assert (= (and b!6222769 (not c!1124480)) b!6222771))

(assert (= (or b!6222766 b!6222773) bm!522471))

(assert (= (or b!6222766 b!6222773) bm!522472))

(assert (= (or b!6222768 bm!522471) bm!522473))

(assert (= (or b!6222768 bm!522472) bm!522470))

(assert (= (or b!6222767 bm!522470) bm!522468))

(assert (= (or b!6222767 b!6222768) bm!522469))

(declare-fun m!7050394 () Bool)

(assert (=> bm!522473 m!7050394))

(declare-fun m!7050396 () Bool)

(assert (=> b!6222772 m!7050396))

(declare-fun m!7050398 () Bool)

(assert (=> bm!522468 m!7050398))

(declare-fun m!7050400 () Bool)

(assert (=> bm!522469 m!7050400))

(declare-fun m!7050402 () Bool)

(assert (=> b!6222770 m!7050402))

(assert (=> bm!522204 d!1950740))

(assert (=> bm!522224 d!1950520))

(declare-fun d!1950742 () Bool)

(declare-fun c!1124481 () Bool)

(assert (=> d!1950742 (= c!1124481 (isEmpty!36657 (tail!11907 (t!378303 s!2326))))))

(declare-fun e!3787864 () Bool)

(assert (=> d!1950742 (= (matchZipper!2169 (derivationStepZipper!2123 ((_ map or) lt!2344969 lt!2344967) (head!12822 (t!378303 s!2326))) (tail!11907 (t!378303 s!2326))) e!3787864)))

(declare-fun b!6222775 () Bool)

(assert (=> b!6222775 (= e!3787864 (nullableZipper!1931 (derivationStepZipper!2123 ((_ map or) lt!2344969 lt!2344967) (head!12822 (t!378303 s!2326)))))))

(declare-fun b!6222776 () Bool)

(assert (=> b!6222776 (= e!3787864 (matchZipper!2169 (derivationStepZipper!2123 (derivationStepZipper!2123 ((_ map or) lt!2344969 lt!2344967) (head!12822 (t!378303 s!2326))) (head!12822 (tail!11907 (t!378303 s!2326)))) (tail!11907 (tail!11907 (t!378303 s!2326)))))))

(assert (= (and d!1950742 c!1124481) b!6222775))

(assert (= (and d!1950742 (not c!1124481)) b!6222776))

(assert (=> d!1950742 m!7049012))

(assert (=> d!1950742 m!7049944))

(assert (=> b!6222775 m!7049328))

(declare-fun m!7050404 () Bool)

(assert (=> b!6222775 m!7050404))

(assert (=> b!6222776 m!7049012))

(assert (=> b!6222776 m!7049948))

(assert (=> b!6222776 m!7049328))

(assert (=> b!6222776 m!7049948))

(declare-fun m!7050406 () Bool)

(assert (=> b!6222776 m!7050406))

(assert (=> b!6222776 m!7049012))

(assert (=> b!6222776 m!7049952))

(assert (=> b!6222776 m!7050406))

(assert (=> b!6222776 m!7049952))

(declare-fun m!7050408 () Bool)

(assert (=> b!6222776 m!7050408))

(assert (=> b!6221646 d!1950742))

(declare-fun bs!1543138 () Bool)

(declare-fun d!1950744 () Bool)

(assert (= bs!1543138 (and d!1950744 b!6220909)))

(declare-fun lambda!340151 () Int)

(assert (=> bs!1543138 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340151 lambda!340023))))

(declare-fun bs!1543139 () Bool)

(assert (= bs!1543139 (and d!1950744 d!1950528)))

(assert (=> bs!1543139 (= lambda!340151 lambda!340127)))

(declare-fun bs!1543140 () Bool)

(assert (= bs!1543140 (and d!1950744 d!1950634)))

(assert (=> bs!1543140 (= lambda!340151 lambda!340140)))

(declare-fun bs!1543141 () Bool)

(assert (= bs!1543141 (and d!1950744 d!1950646)))

(assert (=> bs!1543141 (= lambda!340151 lambda!340142)))

(declare-fun bs!1543142 () Bool)

(assert (= bs!1543142 (and d!1950744 d!1950110)))

(assert (=> bs!1543142 (= (= (head!12822 (t!378303 s!2326)) (h!71095 s!2326)) (= lambda!340151 lambda!340042))))

(declare-fun bs!1543143 () Bool)

(assert (= bs!1543143 (and d!1950744 d!1950728)))

(assert (=> bs!1543143 (= lambda!340151 lambda!340150)))

(declare-fun bs!1543144 () Bool)

(assert (= bs!1543144 (and d!1950744 d!1950556)))

(assert (=> bs!1543144 (= lambda!340151 lambda!340128)))

(assert (=> d!1950744 true))

(assert (=> d!1950744 (= (derivationStepZipper!2123 ((_ map or) lt!2344969 lt!2344967) (head!12822 (t!378303 s!2326))) (flatMap!1662 ((_ map or) lt!2344969 lt!2344967) lambda!340151))))

(declare-fun bs!1543145 () Bool)

(assert (= bs!1543145 d!1950744))

(declare-fun m!7050410 () Bool)

(assert (=> bs!1543145 m!7050410))

(assert (=> b!6221646 d!1950744))

(assert (=> b!6221646 d!1950530))

(assert (=> b!6221646 d!1950532))

(declare-fun condSetEmpty!42272 () Bool)

(assert (=> setNonEmpty!42260 (= condSetEmpty!42272 (= setRest!42260 ((as const (Array Context!11082 Bool)) false)))))

(declare-fun setRes!42272 () Bool)

(assert (=> setNonEmpty!42260 (= tp!1735506 setRes!42272)))

(declare-fun setIsEmpty!42272 () Bool)

(assert (=> setIsEmpty!42272 setRes!42272))

(declare-fun tp!1735740 () Bool)

(declare-fun e!3787865 () Bool)

(declare-fun setNonEmpty!42272 () Bool)

(declare-fun setElem!42272 () Context!11082)

(assert (=> setNonEmpty!42272 (= setRes!42272 (and tp!1735740 (inv!83639 setElem!42272) e!3787865))))

(declare-fun setRest!42272 () (InoxSet Context!11082))

(assert (=> setNonEmpty!42272 (= setRest!42260 ((_ map or) (store ((as const (Array Context!11082 Bool)) false) setElem!42272 true) setRest!42272))))

(declare-fun b!6222777 () Bool)

(declare-fun tp!1735739 () Bool)

(assert (=> b!6222777 (= e!3787865 tp!1735739)))

(assert (= (and setNonEmpty!42260 condSetEmpty!42272) setIsEmpty!42272))

(assert (= (and setNonEmpty!42260 (not condSetEmpty!42272)) setNonEmpty!42272))

(assert (= setNonEmpty!42272 b!6222777))

(declare-fun m!7050412 () Bool)

(assert (=> setNonEmpty!42272 m!7050412))

(declare-fun b!6222779 () Bool)

(declare-fun e!3787867 () Bool)

(declare-fun tp!1735741 () Bool)

(assert (=> b!6222779 (= e!3787867 tp!1735741)))

(declare-fun e!3787866 () Bool)

(declare-fun tp!1735742 () Bool)

(declare-fun b!6222778 () Bool)

(assert (=> b!6222778 (= e!3787866 (and (inv!83639 (h!71096 (t!378304 (t!378304 zl!343)))) e!3787867 tp!1735742))))

(assert (=> b!6221680 (= tp!1735537 e!3787866)))

(assert (= b!6222778 b!6222779))

(assert (= (and b!6221680 ((_ is Cons!64648) (t!378304 (t!378304 zl!343)))) b!6222778))

(declare-fun m!7050414 () Bool)

(assert (=> b!6222778 m!7050414))

(declare-fun b!6222780 () Bool)

(declare-fun e!3787868 () Bool)

(declare-fun tp!1735743 () Bool)

(declare-fun tp!1735744 () Bool)

(assert (=> b!6222780 (= e!3787868 (and tp!1735743 tp!1735744))))

(assert (=> b!6221681 (= tp!1735536 e!3787868)))

(assert (= (and b!6221681 ((_ is Cons!64646) (exprs!6041 (h!71096 (t!378304 zl!343))))) b!6222780))

(declare-fun b!6222781 () Bool)

(declare-fun e!3787869 () Bool)

(declare-fun tp!1735745 () Bool)

(declare-fun tp!1735746 () Bool)

(assert (=> b!6222781 (= e!3787869 (and tp!1735745 tp!1735746))))

(assert (=> b!6221651 (= tp!1735505 e!3787869)))

(assert (= (and b!6221651 ((_ is Cons!64646) (exprs!6041 setElem!42260))) b!6222781))

(declare-fun b!6222785 () Bool)

(declare-fun e!3787870 () Bool)

(declare-fun tp!1735748 () Bool)

(declare-fun tp!1735747 () Bool)

(assert (=> b!6222785 (= e!3787870 (and tp!1735748 tp!1735747))))

(declare-fun b!6222784 () Bool)

(declare-fun tp!1735750 () Bool)

(assert (=> b!6222784 (= e!3787870 tp!1735750)))

(declare-fun b!6222782 () Bool)

(assert (=> b!6222782 (= e!3787870 tp_is_empty!41567)))

(assert (=> b!6221667 (= tp!1735524 e!3787870)))

(declare-fun b!6222783 () Bool)

(declare-fun tp!1735749 () Bool)

(declare-fun tp!1735751 () Bool)

(assert (=> b!6222783 (= e!3787870 (and tp!1735749 tp!1735751))))

(assert (= (and b!6221667 ((_ is ElementMatch!16157) (regOne!32826 (regTwo!32827 r!7292)))) b!6222782))

(assert (= (and b!6221667 ((_ is Concat!25002) (regOne!32826 (regTwo!32827 r!7292)))) b!6222783))

(assert (= (and b!6221667 ((_ is Star!16157) (regOne!32826 (regTwo!32827 r!7292)))) b!6222784))

(assert (= (and b!6221667 ((_ is Union!16157) (regOne!32826 (regTwo!32827 r!7292)))) b!6222785))

(declare-fun b!6222789 () Bool)

(declare-fun e!3787871 () Bool)

(declare-fun tp!1735753 () Bool)

(declare-fun tp!1735752 () Bool)

(assert (=> b!6222789 (= e!3787871 (and tp!1735753 tp!1735752))))

(declare-fun b!6222788 () Bool)

(declare-fun tp!1735755 () Bool)

(assert (=> b!6222788 (= e!3787871 tp!1735755)))

(declare-fun b!6222786 () Bool)

(assert (=> b!6222786 (= e!3787871 tp_is_empty!41567)))

(assert (=> b!6221667 (= tp!1735526 e!3787871)))

(declare-fun b!6222787 () Bool)

(declare-fun tp!1735754 () Bool)

(declare-fun tp!1735756 () Bool)

(assert (=> b!6222787 (= e!3787871 (and tp!1735754 tp!1735756))))

(assert (= (and b!6221667 ((_ is ElementMatch!16157) (regTwo!32826 (regTwo!32827 r!7292)))) b!6222786))

(assert (= (and b!6221667 ((_ is Concat!25002) (regTwo!32826 (regTwo!32827 r!7292)))) b!6222787))

(assert (= (and b!6221667 ((_ is Star!16157) (regTwo!32826 (regTwo!32827 r!7292)))) b!6222788))

(assert (= (and b!6221667 ((_ is Union!16157) (regTwo!32826 (regTwo!32827 r!7292)))) b!6222789))

(declare-fun b!6222793 () Bool)

(declare-fun e!3787872 () Bool)

(declare-fun tp!1735758 () Bool)

(declare-fun tp!1735757 () Bool)

(assert (=> b!6222793 (= e!3787872 (and tp!1735758 tp!1735757))))

(declare-fun b!6222792 () Bool)

(declare-fun tp!1735760 () Bool)

(assert (=> b!6222792 (= e!3787872 tp!1735760)))

(declare-fun b!6222790 () Bool)

(assert (=> b!6222790 (= e!3787872 tp_is_empty!41567)))

(assert (=> b!6221668 (= tp!1735525 e!3787872)))

(declare-fun b!6222791 () Bool)

(declare-fun tp!1735759 () Bool)

(declare-fun tp!1735761 () Bool)

(assert (=> b!6222791 (= e!3787872 (and tp!1735759 tp!1735761))))

(assert (= (and b!6221668 ((_ is ElementMatch!16157) (reg!16486 (regTwo!32827 r!7292)))) b!6222790))

(assert (= (and b!6221668 ((_ is Concat!25002) (reg!16486 (regTwo!32827 r!7292)))) b!6222791))

(assert (= (and b!6221668 ((_ is Star!16157) (reg!16486 (regTwo!32827 r!7292)))) b!6222792))

(assert (= (and b!6221668 ((_ is Union!16157) (reg!16486 (regTwo!32827 r!7292)))) b!6222793))

(declare-fun b!6222797 () Bool)

(declare-fun e!3787873 () Bool)

(declare-fun tp!1735763 () Bool)

(declare-fun tp!1735762 () Bool)

(assert (=> b!6222797 (= e!3787873 (and tp!1735763 tp!1735762))))

(declare-fun b!6222796 () Bool)

(declare-fun tp!1735765 () Bool)

(assert (=> b!6222796 (= e!3787873 tp!1735765)))

(declare-fun b!6222794 () Bool)

(assert (=> b!6222794 (= e!3787873 tp_is_empty!41567)))

(assert (=> b!6221696 (= tp!1735550 e!3787873)))

(declare-fun b!6222795 () Bool)

(declare-fun tp!1735764 () Bool)

(declare-fun tp!1735766 () Bool)

(assert (=> b!6222795 (= e!3787873 (and tp!1735764 tp!1735766))))

(assert (= (and b!6221696 ((_ is ElementMatch!16157) (regOne!32827 (regOne!32826 r!7292)))) b!6222794))

(assert (= (and b!6221696 ((_ is Concat!25002) (regOne!32827 (regOne!32826 r!7292)))) b!6222795))

(assert (= (and b!6221696 ((_ is Star!16157) (regOne!32827 (regOne!32826 r!7292)))) b!6222796))

(assert (= (and b!6221696 ((_ is Union!16157) (regOne!32827 (regOne!32826 r!7292)))) b!6222797))

(declare-fun b!6222801 () Bool)

(declare-fun e!3787874 () Bool)

(declare-fun tp!1735768 () Bool)

(declare-fun tp!1735767 () Bool)

(assert (=> b!6222801 (= e!3787874 (and tp!1735768 tp!1735767))))

(declare-fun b!6222800 () Bool)

(declare-fun tp!1735770 () Bool)

(assert (=> b!6222800 (= e!3787874 tp!1735770)))

(declare-fun b!6222798 () Bool)

(assert (=> b!6222798 (= e!3787874 tp_is_empty!41567)))

(assert (=> b!6221696 (= tp!1735549 e!3787874)))

(declare-fun b!6222799 () Bool)

(declare-fun tp!1735769 () Bool)

(declare-fun tp!1735771 () Bool)

(assert (=> b!6222799 (= e!3787874 (and tp!1735769 tp!1735771))))

(assert (= (and b!6221696 ((_ is ElementMatch!16157) (regTwo!32827 (regOne!32826 r!7292)))) b!6222798))

(assert (= (and b!6221696 ((_ is Concat!25002) (regTwo!32827 (regOne!32826 r!7292)))) b!6222799))

(assert (= (and b!6221696 ((_ is Star!16157) (regTwo!32827 (regOne!32826 r!7292)))) b!6222800))

(assert (= (and b!6221696 ((_ is Union!16157) (regTwo!32827 (regOne!32826 r!7292)))) b!6222801))

(declare-fun b!6222805 () Bool)

(declare-fun e!3787875 () Bool)

(declare-fun tp!1735773 () Bool)

(declare-fun tp!1735772 () Bool)

(assert (=> b!6222805 (= e!3787875 (and tp!1735773 tp!1735772))))

(declare-fun b!6222804 () Bool)

(declare-fun tp!1735775 () Bool)

(assert (=> b!6222804 (= e!3787875 tp!1735775)))

(declare-fun b!6222802 () Bool)

(assert (=> b!6222802 (= e!3787875 tp_is_empty!41567)))

(assert (=> b!6221694 (= tp!1735551 e!3787875)))

(declare-fun b!6222803 () Bool)

(declare-fun tp!1735774 () Bool)

(declare-fun tp!1735776 () Bool)

(assert (=> b!6222803 (= e!3787875 (and tp!1735774 tp!1735776))))

(assert (= (and b!6221694 ((_ is ElementMatch!16157) (regOne!32826 (regOne!32826 r!7292)))) b!6222802))

(assert (= (and b!6221694 ((_ is Concat!25002) (regOne!32826 (regOne!32826 r!7292)))) b!6222803))

(assert (= (and b!6221694 ((_ is Star!16157) (regOne!32826 (regOne!32826 r!7292)))) b!6222804))

(assert (= (and b!6221694 ((_ is Union!16157) (regOne!32826 (regOne!32826 r!7292)))) b!6222805))

(declare-fun b!6222809 () Bool)

(declare-fun e!3787876 () Bool)

(declare-fun tp!1735778 () Bool)

(declare-fun tp!1735777 () Bool)

(assert (=> b!6222809 (= e!3787876 (and tp!1735778 tp!1735777))))

(declare-fun b!6222808 () Bool)

(declare-fun tp!1735780 () Bool)

(assert (=> b!6222808 (= e!3787876 tp!1735780)))

(declare-fun b!6222806 () Bool)

(assert (=> b!6222806 (= e!3787876 tp_is_empty!41567)))

(assert (=> b!6221694 (= tp!1735553 e!3787876)))

(declare-fun b!6222807 () Bool)

(declare-fun tp!1735779 () Bool)

(declare-fun tp!1735781 () Bool)

(assert (=> b!6222807 (= e!3787876 (and tp!1735779 tp!1735781))))

(assert (= (and b!6221694 ((_ is ElementMatch!16157) (regTwo!32826 (regOne!32826 r!7292)))) b!6222806))

(assert (= (and b!6221694 ((_ is Concat!25002) (regTwo!32826 (regOne!32826 r!7292)))) b!6222807))

(assert (= (and b!6221694 ((_ is Star!16157) (regTwo!32826 (regOne!32826 r!7292)))) b!6222808))

(assert (= (and b!6221694 ((_ is Union!16157) (regTwo!32826 (regOne!32826 r!7292)))) b!6222809))

(declare-fun b!6222813 () Bool)

(declare-fun e!3787877 () Bool)

(declare-fun tp!1735783 () Bool)

(declare-fun tp!1735782 () Bool)

(assert (=> b!6222813 (= e!3787877 (and tp!1735783 tp!1735782))))

(declare-fun b!6222812 () Bool)

(declare-fun tp!1735785 () Bool)

(assert (=> b!6222812 (= e!3787877 tp!1735785)))

(declare-fun b!6222810 () Bool)

(assert (=> b!6222810 (= e!3787877 tp_is_empty!41567)))

(assert (=> b!6221695 (= tp!1735552 e!3787877)))

(declare-fun b!6222811 () Bool)

(declare-fun tp!1735784 () Bool)

(declare-fun tp!1735786 () Bool)

(assert (=> b!6222811 (= e!3787877 (and tp!1735784 tp!1735786))))

(assert (= (and b!6221695 ((_ is ElementMatch!16157) (reg!16486 (regOne!32826 r!7292)))) b!6222810))

(assert (= (and b!6221695 ((_ is Concat!25002) (reg!16486 (regOne!32826 r!7292)))) b!6222811))

(assert (= (and b!6221695 ((_ is Star!16157) (reg!16486 (regOne!32826 r!7292)))) b!6222812))

(assert (= (and b!6221695 ((_ is Union!16157) (reg!16486 (regOne!32826 r!7292)))) b!6222813))

(declare-fun b!6222817 () Bool)

(declare-fun e!3787878 () Bool)

(declare-fun tp!1735788 () Bool)

(declare-fun tp!1735787 () Bool)

(assert (=> b!6222817 (= e!3787878 (and tp!1735788 tp!1735787))))

(declare-fun b!6222816 () Bool)

(declare-fun tp!1735790 () Bool)

(assert (=> b!6222816 (= e!3787878 tp!1735790)))

(declare-fun b!6222814 () Bool)

(assert (=> b!6222814 (= e!3787878 tp_is_empty!41567)))

(assert (=> b!6221669 (= tp!1735523 e!3787878)))

(declare-fun b!6222815 () Bool)

(declare-fun tp!1735789 () Bool)

(declare-fun tp!1735791 () Bool)

(assert (=> b!6222815 (= e!3787878 (and tp!1735789 tp!1735791))))

(assert (= (and b!6221669 ((_ is ElementMatch!16157) (regOne!32827 (regTwo!32827 r!7292)))) b!6222814))

(assert (= (and b!6221669 ((_ is Concat!25002) (regOne!32827 (regTwo!32827 r!7292)))) b!6222815))

(assert (= (and b!6221669 ((_ is Star!16157) (regOne!32827 (regTwo!32827 r!7292)))) b!6222816))

(assert (= (and b!6221669 ((_ is Union!16157) (regOne!32827 (regTwo!32827 r!7292)))) b!6222817))

(declare-fun b!6222821 () Bool)

(declare-fun e!3787879 () Bool)

(declare-fun tp!1735793 () Bool)

(declare-fun tp!1735792 () Bool)

(assert (=> b!6222821 (= e!3787879 (and tp!1735793 tp!1735792))))

(declare-fun b!6222820 () Bool)

(declare-fun tp!1735795 () Bool)

(assert (=> b!6222820 (= e!3787879 tp!1735795)))

(declare-fun b!6222818 () Bool)

(assert (=> b!6222818 (= e!3787879 tp_is_empty!41567)))

(assert (=> b!6221669 (= tp!1735522 e!3787879)))

(declare-fun b!6222819 () Bool)

(declare-fun tp!1735794 () Bool)

(declare-fun tp!1735796 () Bool)

(assert (=> b!6222819 (= e!3787879 (and tp!1735794 tp!1735796))))

(assert (= (and b!6221669 ((_ is ElementMatch!16157) (regTwo!32827 (regTwo!32827 r!7292)))) b!6222818))

(assert (= (and b!6221669 ((_ is Concat!25002) (regTwo!32827 (regTwo!32827 r!7292)))) b!6222819))

(assert (= (and b!6221669 ((_ is Star!16157) (regTwo!32827 (regTwo!32827 r!7292)))) b!6222820))

(assert (= (and b!6221669 ((_ is Union!16157) (regTwo!32827 (regTwo!32827 r!7292)))) b!6222821))

(declare-fun b!6222822 () Bool)

(declare-fun e!3787880 () Bool)

(declare-fun tp!1735797 () Bool)

(assert (=> b!6222822 (= e!3787880 (and tp_is_empty!41567 tp!1735797))))

(assert (=> b!6221691 (= tp!1735546 e!3787880)))

(assert (= (and b!6221691 ((_ is Cons!64647) (t!378303 (t!378303 s!2326)))) b!6222822))

(declare-fun b!6222826 () Bool)

(declare-fun e!3787881 () Bool)

(declare-fun tp!1735799 () Bool)

(declare-fun tp!1735798 () Bool)

(assert (=> b!6222826 (= e!3787881 (and tp!1735799 tp!1735798))))

(declare-fun b!6222825 () Bool)

(declare-fun tp!1735801 () Bool)

(assert (=> b!6222825 (= e!3787881 tp!1735801)))

(declare-fun b!6222823 () Bool)

(assert (=> b!6222823 (= e!3787881 tp_is_empty!41567)))

(assert (=> b!6221698 (= tp!1735556 e!3787881)))

(declare-fun b!6222824 () Bool)

(declare-fun tp!1735800 () Bool)

(declare-fun tp!1735802 () Bool)

(assert (=> b!6222824 (= e!3787881 (and tp!1735800 tp!1735802))))

(assert (= (and b!6221698 ((_ is ElementMatch!16157) (regOne!32826 (regTwo!32826 r!7292)))) b!6222823))

(assert (= (and b!6221698 ((_ is Concat!25002) (regOne!32826 (regTwo!32826 r!7292)))) b!6222824))

(assert (= (and b!6221698 ((_ is Star!16157) (regOne!32826 (regTwo!32826 r!7292)))) b!6222825))

(assert (= (and b!6221698 ((_ is Union!16157) (regOne!32826 (regTwo!32826 r!7292)))) b!6222826))

(declare-fun b!6222830 () Bool)

(declare-fun e!3787882 () Bool)

(declare-fun tp!1735804 () Bool)

(declare-fun tp!1735803 () Bool)

(assert (=> b!6222830 (= e!3787882 (and tp!1735804 tp!1735803))))

(declare-fun b!6222829 () Bool)

(declare-fun tp!1735806 () Bool)

(assert (=> b!6222829 (= e!3787882 tp!1735806)))

(declare-fun b!6222827 () Bool)

(assert (=> b!6222827 (= e!3787882 tp_is_empty!41567)))

(assert (=> b!6221698 (= tp!1735558 e!3787882)))

(declare-fun b!6222828 () Bool)

(declare-fun tp!1735805 () Bool)

(declare-fun tp!1735807 () Bool)

(assert (=> b!6222828 (= e!3787882 (and tp!1735805 tp!1735807))))

(assert (= (and b!6221698 ((_ is ElementMatch!16157) (regTwo!32826 (regTwo!32826 r!7292)))) b!6222827))

(assert (= (and b!6221698 ((_ is Concat!25002) (regTwo!32826 (regTwo!32826 r!7292)))) b!6222828))

(assert (= (and b!6221698 ((_ is Star!16157) (regTwo!32826 (regTwo!32826 r!7292)))) b!6222829))

(assert (= (and b!6221698 ((_ is Union!16157) (regTwo!32826 (regTwo!32826 r!7292)))) b!6222830))

(declare-fun b!6222834 () Bool)

(declare-fun e!3787883 () Bool)

(declare-fun tp!1735809 () Bool)

(declare-fun tp!1735808 () Bool)

(assert (=> b!6222834 (= e!3787883 (and tp!1735809 tp!1735808))))

(declare-fun b!6222833 () Bool)

(declare-fun tp!1735811 () Bool)

(assert (=> b!6222833 (= e!3787883 tp!1735811)))

(declare-fun b!6222831 () Bool)

(assert (=> b!6222831 (= e!3787883 tp_is_empty!41567)))

(assert (=> b!6221672 (= tp!1735530 e!3787883)))

(declare-fun b!6222832 () Bool)

(declare-fun tp!1735810 () Bool)

(declare-fun tp!1735812 () Bool)

(assert (=> b!6222832 (= e!3787883 (and tp!1735810 tp!1735812))))

(assert (= (and b!6221672 ((_ is ElementMatch!16157) (reg!16486 (reg!16486 r!7292)))) b!6222831))

(assert (= (and b!6221672 ((_ is Concat!25002) (reg!16486 (reg!16486 r!7292)))) b!6222832))

(assert (= (and b!6221672 ((_ is Star!16157) (reg!16486 (reg!16486 r!7292)))) b!6222833))

(assert (= (and b!6221672 ((_ is Union!16157) (reg!16486 (reg!16486 r!7292)))) b!6222834))

(declare-fun b!6222838 () Bool)

(declare-fun e!3787884 () Bool)

(declare-fun tp!1735814 () Bool)

(declare-fun tp!1735813 () Bool)

(assert (=> b!6222838 (= e!3787884 (and tp!1735814 tp!1735813))))

(declare-fun b!6222837 () Bool)

(declare-fun tp!1735816 () Bool)

(assert (=> b!6222837 (= e!3787884 tp!1735816)))

(declare-fun b!6222835 () Bool)

(assert (=> b!6222835 (= e!3787884 tp_is_empty!41567)))

(assert (=> b!6221700 (= tp!1735555 e!3787884)))

(declare-fun b!6222836 () Bool)

(declare-fun tp!1735815 () Bool)

(declare-fun tp!1735817 () Bool)

(assert (=> b!6222836 (= e!3787884 (and tp!1735815 tp!1735817))))

(assert (= (and b!6221700 ((_ is ElementMatch!16157) (regOne!32827 (regTwo!32826 r!7292)))) b!6222835))

(assert (= (and b!6221700 ((_ is Concat!25002) (regOne!32827 (regTwo!32826 r!7292)))) b!6222836))

(assert (= (and b!6221700 ((_ is Star!16157) (regOne!32827 (regTwo!32826 r!7292)))) b!6222837))

(assert (= (and b!6221700 ((_ is Union!16157) (regOne!32827 (regTwo!32826 r!7292)))) b!6222838))

(declare-fun b!6222842 () Bool)

(declare-fun e!3787885 () Bool)

(declare-fun tp!1735819 () Bool)

(declare-fun tp!1735818 () Bool)

(assert (=> b!6222842 (= e!3787885 (and tp!1735819 tp!1735818))))

(declare-fun b!6222841 () Bool)

(declare-fun tp!1735821 () Bool)

(assert (=> b!6222841 (= e!3787885 tp!1735821)))

(declare-fun b!6222839 () Bool)

(assert (=> b!6222839 (= e!3787885 tp_is_empty!41567)))

(assert (=> b!6221700 (= tp!1735554 e!3787885)))

(declare-fun b!6222840 () Bool)

(declare-fun tp!1735820 () Bool)

(declare-fun tp!1735822 () Bool)

(assert (=> b!6222840 (= e!3787885 (and tp!1735820 tp!1735822))))

(assert (= (and b!6221700 ((_ is ElementMatch!16157) (regTwo!32827 (regTwo!32826 r!7292)))) b!6222839))

(assert (= (and b!6221700 ((_ is Concat!25002) (regTwo!32827 (regTwo!32826 r!7292)))) b!6222840))

(assert (= (and b!6221700 ((_ is Star!16157) (regTwo!32827 (regTwo!32826 r!7292)))) b!6222841))

(assert (= (and b!6221700 ((_ is Union!16157) (regTwo!32827 (regTwo!32826 r!7292)))) b!6222842))

(declare-fun b!6222846 () Bool)

(declare-fun e!3787886 () Bool)

(declare-fun tp!1735824 () Bool)

(declare-fun tp!1735823 () Bool)

(assert (=> b!6222846 (= e!3787886 (and tp!1735824 tp!1735823))))

(declare-fun b!6222845 () Bool)

(declare-fun tp!1735826 () Bool)

(assert (=> b!6222845 (= e!3787886 tp!1735826)))

(declare-fun b!6222843 () Bool)

(assert (=> b!6222843 (= e!3787886 tp_is_empty!41567)))

(assert (=> b!6221663 (= tp!1735519 e!3787886)))

(declare-fun b!6222844 () Bool)

(declare-fun tp!1735825 () Bool)

(declare-fun tp!1735827 () Bool)

(assert (=> b!6222844 (= e!3787886 (and tp!1735825 tp!1735827))))

(assert (= (and b!6221663 ((_ is ElementMatch!16157) (regOne!32826 (regOne!32827 r!7292)))) b!6222843))

(assert (= (and b!6221663 ((_ is Concat!25002) (regOne!32826 (regOne!32827 r!7292)))) b!6222844))

(assert (= (and b!6221663 ((_ is Star!16157) (regOne!32826 (regOne!32827 r!7292)))) b!6222845))

(assert (= (and b!6221663 ((_ is Union!16157) (regOne!32826 (regOne!32827 r!7292)))) b!6222846))

(declare-fun b!6222850 () Bool)

(declare-fun e!3787887 () Bool)

(declare-fun tp!1735829 () Bool)

(declare-fun tp!1735828 () Bool)

(assert (=> b!6222850 (= e!3787887 (and tp!1735829 tp!1735828))))

(declare-fun b!6222849 () Bool)

(declare-fun tp!1735831 () Bool)

(assert (=> b!6222849 (= e!3787887 tp!1735831)))

(declare-fun b!6222847 () Bool)

(assert (=> b!6222847 (= e!3787887 tp_is_empty!41567)))

(assert (=> b!6221663 (= tp!1735521 e!3787887)))

(declare-fun b!6222848 () Bool)

(declare-fun tp!1735830 () Bool)

(declare-fun tp!1735832 () Bool)

(assert (=> b!6222848 (= e!3787887 (and tp!1735830 tp!1735832))))

(assert (= (and b!6221663 ((_ is ElementMatch!16157) (regTwo!32826 (regOne!32827 r!7292)))) b!6222847))

(assert (= (and b!6221663 ((_ is Concat!25002) (regTwo!32826 (regOne!32827 r!7292)))) b!6222848))

(assert (= (and b!6221663 ((_ is Star!16157) (regTwo!32826 (regOne!32827 r!7292)))) b!6222849))

(assert (= (and b!6221663 ((_ is Union!16157) (regTwo!32826 (regOne!32827 r!7292)))) b!6222850))

(declare-fun b!6222854 () Bool)

(declare-fun e!3787888 () Bool)

(declare-fun tp!1735834 () Bool)

(declare-fun tp!1735833 () Bool)

(assert (=> b!6222854 (= e!3787888 (and tp!1735834 tp!1735833))))

(declare-fun b!6222853 () Bool)

(declare-fun tp!1735836 () Bool)

(assert (=> b!6222853 (= e!3787888 tp!1735836)))

(declare-fun b!6222851 () Bool)

(assert (=> b!6222851 (= e!3787888 tp_is_empty!41567)))

(assert (=> b!6221699 (= tp!1735557 e!3787888)))

(declare-fun b!6222852 () Bool)

(declare-fun tp!1735835 () Bool)

(declare-fun tp!1735837 () Bool)

(assert (=> b!6222852 (= e!3787888 (and tp!1735835 tp!1735837))))

(assert (= (and b!6221699 ((_ is ElementMatch!16157) (reg!16486 (regTwo!32826 r!7292)))) b!6222851))

(assert (= (and b!6221699 ((_ is Concat!25002) (reg!16486 (regTwo!32826 r!7292)))) b!6222852))

(assert (= (and b!6221699 ((_ is Star!16157) (reg!16486 (regTwo!32826 r!7292)))) b!6222853))

(assert (= (and b!6221699 ((_ is Union!16157) (reg!16486 (regTwo!32826 r!7292)))) b!6222854))

(declare-fun b!6222858 () Bool)

(declare-fun e!3787889 () Bool)

(declare-fun tp!1735839 () Bool)

(declare-fun tp!1735838 () Bool)

(assert (=> b!6222858 (= e!3787889 (and tp!1735839 tp!1735838))))

(declare-fun b!6222857 () Bool)

(declare-fun tp!1735841 () Bool)

(assert (=> b!6222857 (= e!3787889 tp!1735841)))

(declare-fun b!6222855 () Bool)

(assert (=> b!6222855 (= e!3787889 tp_is_empty!41567)))

(assert (=> b!6221671 (= tp!1735529 e!3787889)))

(declare-fun b!6222856 () Bool)

(declare-fun tp!1735840 () Bool)

(declare-fun tp!1735842 () Bool)

(assert (=> b!6222856 (= e!3787889 (and tp!1735840 tp!1735842))))

(assert (= (and b!6221671 ((_ is ElementMatch!16157) (regOne!32826 (reg!16486 r!7292)))) b!6222855))

(assert (= (and b!6221671 ((_ is Concat!25002) (regOne!32826 (reg!16486 r!7292)))) b!6222856))

(assert (= (and b!6221671 ((_ is Star!16157) (regOne!32826 (reg!16486 r!7292)))) b!6222857))

(assert (= (and b!6221671 ((_ is Union!16157) (regOne!32826 (reg!16486 r!7292)))) b!6222858))

(declare-fun b!6222862 () Bool)

(declare-fun e!3787890 () Bool)

(declare-fun tp!1735844 () Bool)

(declare-fun tp!1735843 () Bool)

(assert (=> b!6222862 (= e!3787890 (and tp!1735844 tp!1735843))))

(declare-fun b!6222861 () Bool)

(declare-fun tp!1735846 () Bool)

(assert (=> b!6222861 (= e!3787890 tp!1735846)))

(declare-fun b!6222859 () Bool)

(assert (=> b!6222859 (= e!3787890 tp_is_empty!41567)))

(assert (=> b!6221671 (= tp!1735531 e!3787890)))

(declare-fun b!6222860 () Bool)

(declare-fun tp!1735845 () Bool)

(declare-fun tp!1735847 () Bool)

(assert (=> b!6222860 (= e!3787890 (and tp!1735845 tp!1735847))))

(assert (= (and b!6221671 ((_ is ElementMatch!16157) (regTwo!32826 (reg!16486 r!7292)))) b!6222859))

(assert (= (and b!6221671 ((_ is Concat!25002) (regTwo!32826 (reg!16486 r!7292)))) b!6222860))

(assert (= (and b!6221671 ((_ is Star!16157) (regTwo!32826 (reg!16486 r!7292)))) b!6222861))

(assert (= (and b!6221671 ((_ is Union!16157) (regTwo!32826 (reg!16486 r!7292)))) b!6222862))

(declare-fun b!6222866 () Bool)

(declare-fun e!3787891 () Bool)

(declare-fun tp!1735849 () Bool)

(declare-fun tp!1735848 () Bool)

(assert (=> b!6222866 (= e!3787891 (and tp!1735849 tp!1735848))))

(declare-fun b!6222865 () Bool)

(declare-fun tp!1735851 () Bool)

(assert (=> b!6222865 (= e!3787891 tp!1735851)))

(declare-fun b!6222863 () Bool)

(assert (=> b!6222863 (= e!3787891 tp_is_empty!41567)))

(assert (=> b!6221665 (= tp!1735518 e!3787891)))

(declare-fun b!6222864 () Bool)

(declare-fun tp!1735850 () Bool)

(declare-fun tp!1735852 () Bool)

(assert (=> b!6222864 (= e!3787891 (and tp!1735850 tp!1735852))))

(assert (= (and b!6221665 ((_ is ElementMatch!16157) (regOne!32827 (regOne!32827 r!7292)))) b!6222863))

(assert (= (and b!6221665 ((_ is Concat!25002) (regOne!32827 (regOne!32827 r!7292)))) b!6222864))

(assert (= (and b!6221665 ((_ is Star!16157) (regOne!32827 (regOne!32827 r!7292)))) b!6222865))

(assert (= (and b!6221665 ((_ is Union!16157) (regOne!32827 (regOne!32827 r!7292)))) b!6222866))

(declare-fun b!6222870 () Bool)

(declare-fun e!3787892 () Bool)

(declare-fun tp!1735854 () Bool)

(declare-fun tp!1735853 () Bool)

(assert (=> b!6222870 (= e!3787892 (and tp!1735854 tp!1735853))))

(declare-fun b!6222869 () Bool)

(declare-fun tp!1735856 () Bool)

(assert (=> b!6222869 (= e!3787892 tp!1735856)))

(declare-fun b!6222867 () Bool)

(assert (=> b!6222867 (= e!3787892 tp_is_empty!41567)))

(assert (=> b!6221665 (= tp!1735517 e!3787892)))

(declare-fun b!6222868 () Bool)

(declare-fun tp!1735855 () Bool)

(declare-fun tp!1735857 () Bool)

(assert (=> b!6222868 (= e!3787892 (and tp!1735855 tp!1735857))))

(assert (= (and b!6221665 ((_ is ElementMatch!16157) (regTwo!32827 (regOne!32827 r!7292)))) b!6222867))

(assert (= (and b!6221665 ((_ is Concat!25002) (regTwo!32827 (regOne!32827 r!7292)))) b!6222868))

(assert (= (and b!6221665 ((_ is Star!16157) (regTwo!32827 (regOne!32827 r!7292)))) b!6222869))

(assert (= (and b!6221665 ((_ is Union!16157) (regTwo!32827 (regOne!32827 r!7292)))) b!6222870))

(declare-fun b!6222874 () Bool)

(declare-fun e!3787893 () Bool)

(declare-fun tp!1735859 () Bool)

(declare-fun tp!1735858 () Bool)

(assert (=> b!6222874 (= e!3787893 (and tp!1735859 tp!1735858))))

(declare-fun b!6222873 () Bool)

(declare-fun tp!1735861 () Bool)

(assert (=> b!6222873 (= e!3787893 tp!1735861)))

(declare-fun b!6222871 () Bool)

(assert (=> b!6222871 (= e!3787893 tp_is_empty!41567)))

(assert (=> b!6221686 (= tp!1735542 e!3787893)))

(declare-fun b!6222872 () Bool)

(declare-fun tp!1735860 () Bool)

(declare-fun tp!1735862 () Bool)

(assert (=> b!6222872 (= e!3787893 (and tp!1735860 tp!1735862))))

(assert (= (and b!6221686 ((_ is ElementMatch!16157) (h!71094 (exprs!6041 (h!71096 zl!343))))) b!6222871))

(assert (= (and b!6221686 ((_ is Concat!25002) (h!71094 (exprs!6041 (h!71096 zl!343))))) b!6222872))

(assert (= (and b!6221686 ((_ is Star!16157) (h!71094 (exprs!6041 (h!71096 zl!343))))) b!6222873))

(assert (= (and b!6221686 ((_ is Union!16157) (h!71094 (exprs!6041 (h!71096 zl!343))))) b!6222874))

(declare-fun b!6222875 () Bool)

(declare-fun e!3787894 () Bool)

(declare-fun tp!1735863 () Bool)

(declare-fun tp!1735864 () Bool)

(assert (=> b!6222875 (= e!3787894 (and tp!1735863 tp!1735864))))

(assert (=> b!6221686 (= tp!1735543 e!3787894)))

(assert (= (and b!6221686 ((_ is Cons!64646) (t!378302 (exprs!6041 (h!71096 zl!343))))) b!6222875))

(declare-fun b!6222879 () Bool)

(declare-fun e!3787895 () Bool)

(declare-fun tp!1735866 () Bool)

(declare-fun tp!1735865 () Bool)

(assert (=> b!6222879 (= e!3787895 (and tp!1735866 tp!1735865))))

(declare-fun b!6222878 () Bool)

(declare-fun tp!1735868 () Bool)

(assert (=> b!6222878 (= e!3787895 tp!1735868)))

(declare-fun b!6222876 () Bool)

(assert (=> b!6222876 (= e!3787895 tp_is_empty!41567)))

(assert (=> b!6221664 (= tp!1735520 e!3787895)))

(declare-fun b!6222877 () Bool)

(declare-fun tp!1735867 () Bool)

(declare-fun tp!1735869 () Bool)

(assert (=> b!6222877 (= e!3787895 (and tp!1735867 tp!1735869))))

(assert (= (and b!6221664 ((_ is ElementMatch!16157) (reg!16486 (regOne!32827 r!7292)))) b!6222876))

(assert (= (and b!6221664 ((_ is Concat!25002) (reg!16486 (regOne!32827 r!7292)))) b!6222877))

(assert (= (and b!6221664 ((_ is Star!16157) (reg!16486 (regOne!32827 r!7292)))) b!6222878))

(assert (= (and b!6221664 ((_ is Union!16157) (reg!16486 (regOne!32827 r!7292)))) b!6222879))

(declare-fun b!6222883 () Bool)

(declare-fun e!3787896 () Bool)

(declare-fun tp!1735871 () Bool)

(declare-fun tp!1735870 () Bool)

(assert (=> b!6222883 (= e!3787896 (and tp!1735871 tp!1735870))))

(declare-fun b!6222882 () Bool)

(declare-fun tp!1735873 () Bool)

(assert (=> b!6222882 (= e!3787896 tp!1735873)))

(declare-fun b!6222880 () Bool)

(assert (=> b!6222880 (= e!3787896 tp_is_empty!41567)))

(assert (=> b!6221692 (= tp!1735547 e!3787896)))

(declare-fun b!6222881 () Bool)

(declare-fun tp!1735872 () Bool)

(declare-fun tp!1735874 () Bool)

(assert (=> b!6222881 (= e!3787896 (and tp!1735872 tp!1735874))))

(assert (= (and b!6221692 ((_ is ElementMatch!16157) (h!71094 (exprs!6041 setElem!42254)))) b!6222880))

(assert (= (and b!6221692 ((_ is Concat!25002) (h!71094 (exprs!6041 setElem!42254)))) b!6222881))

(assert (= (and b!6221692 ((_ is Star!16157) (h!71094 (exprs!6041 setElem!42254)))) b!6222882))

(assert (= (and b!6221692 ((_ is Union!16157) (h!71094 (exprs!6041 setElem!42254)))) b!6222883))

(declare-fun b!6222884 () Bool)

(declare-fun e!3787897 () Bool)

(declare-fun tp!1735875 () Bool)

(declare-fun tp!1735876 () Bool)

(assert (=> b!6222884 (= e!3787897 (and tp!1735875 tp!1735876))))

(assert (=> b!6221692 (= tp!1735548 e!3787897)))

(assert (= (and b!6221692 ((_ is Cons!64646) (t!378302 (exprs!6041 setElem!42254)))) b!6222884))

(declare-fun b!6222888 () Bool)

(declare-fun e!3787898 () Bool)

(declare-fun tp!1735878 () Bool)

(declare-fun tp!1735877 () Bool)

(assert (=> b!6222888 (= e!3787898 (and tp!1735878 tp!1735877))))

(declare-fun b!6222887 () Bool)

(declare-fun tp!1735880 () Bool)

(assert (=> b!6222887 (= e!3787898 tp!1735880)))

(declare-fun b!6222885 () Bool)

(assert (=> b!6222885 (= e!3787898 tp_is_empty!41567)))

(assert (=> b!6221673 (= tp!1735528 e!3787898)))

(declare-fun b!6222886 () Bool)

(declare-fun tp!1735879 () Bool)

(declare-fun tp!1735881 () Bool)

(assert (=> b!6222886 (= e!3787898 (and tp!1735879 tp!1735881))))

(assert (= (and b!6221673 ((_ is ElementMatch!16157) (regOne!32827 (reg!16486 r!7292)))) b!6222885))

(assert (= (and b!6221673 ((_ is Concat!25002) (regOne!32827 (reg!16486 r!7292)))) b!6222886))

(assert (= (and b!6221673 ((_ is Star!16157) (regOne!32827 (reg!16486 r!7292)))) b!6222887))

(assert (= (and b!6221673 ((_ is Union!16157) (regOne!32827 (reg!16486 r!7292)))) b!6222888))

(declare-fun b!6222892 () Bool)

(declare-fun e!3787899 () Bool)

(declare-fun tp!1735883 () Bool)

(declare-fun tp!1735882 () Bool)

(assert (=> b!6222892 (= e!3787899 (and tp!1735883 tp!1735882))))

(declare-fun b!6222891 () Bool)

(declare-fun tp!1735885 () Bool)

(assert (=> b!6222891 (= e!3787899 tp!1735885)))

(declare-fun b!6222889 () Bool)

(assert (=> b!6222889 (= e!3787899 tp_is_empty!41567)))

(assert (=> b!6221673 (= tp!1735527 e!3787899)))

(declare-fun b!6222890 () Bool)

(declare-fun tp!1735884 () Bool)

(declare-fun tp!1735886 () Bool)

(assert (=> b!6222890 (= e!3787899 (and tp!1735884 tp!1735886))))

(assert (= (and b!6221673 ((_ is ElementMatch!16157) (regTwo!32827 (reg!16486 r!7292)))) b!6222889))

(assert (= (and b!6221673 ((_ is Concat!25002) (regTwo!32827 (reg!16486 r!7292)))) b!6222890))

(assert (= (and b!6221673 ((_ is Star!16157) (regTwo!32827 (reg!16486 r!7292)))) b!6222891))

(assert (= (and b!6221673 ((_ is Union!16157) (regTwo!32827 (reg!16486 r!7292)))) b!6222892))

(declare-fun b_lambda!236583 () Bool)

(assert (= b_lambda!236577 (or d!1950122 b_lambda!236583)))

(declare-fun bs!1543146 () Bool)

(declare-fun d!1950746 () Bool)

(assert (= bs!1543146 (and d!1950746 d!1950122)))

(assert (=> bs!1543146 (= (dynLambda!25509 lambda!340050 (h!71094 (exprs!6041 (h!71096 zl!343)))) (validRegex!7893 (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(declare-fun m!7050416 () Bool)

(assert (=> bs!1543146 m!7050416))

(assert (=> b!6222695 d!1950746))

(declare-fun b_lambda!236585 () Bool)

(assert (= b_lambda!236545 (or d!1950186 b_lambda!236585)))

(declare-fun bs!1543147 () Bool)

(declare-fun d!1950748 () Bool)

(assert (= bs!1543147 (and d!1950748 d!1950186)))

(assert (=> bs!1543147 (= (dynLambda!25509 lambda!340080 (h!71094 lt!2345049)) (validRegex!7893 (h!71094 lt!2345049)))))

(declare-fun m!7050418 () Bool)

(assert (=> bs!1543147 m!7050418))

(assert (=> b!6222171 d!1950748))

(declare-fun b_lambda!236587 () Bool)

(assert (= b_lambda!236549 (or d!1950116 b_lambda!236587)))

(declare-fun bs!1543148 () Bool)

(declare-fun d!1950750 () Bool)

(assert (= bs!1543148 (and d!1950750 d!1950116)))

(assert (=> bs!1543148 (= (dynLambda!25509 lambda!340047 (h!71094 (exprs!6041 (h!71096 zl!343)))) (validRegex!7893 (h!71094 (exprs!6041 (h!71096 zl!343)))))))

(assert (=> bs!1543148 m!7050416))

(assert (=> b!6222190 d!1950750))

(declare-fun b_lambda!236589 () Bool)

(assert (= b_lambda!236573 (or d!1950224 b_lambda!236589)))

(declare-fun bs!1543149 () Bool)

(declare-fun d!1950752 () Bool)

(assert (= bs!1543149 (and d!1950752 d!1950224)))

(assert (=> bs!1543149 (= (dynLambda!25509 lambda!340087 (h!71094 (exprs!6041 lt!2344955))) (validRegex!7893 (h!71094 (exprs!6041 lt!2344955))))))

(declare-fun m!7050420 () Bool)

(assert (=> bs!1543149 m!7050420))

(assert (=> b!6222555 d!1950752))

(declare-fun b_lambda!236591 () Bool)

(assert (= b_lambda!236551 (or b!6220909 b_lambda!236591)))

(assert (=> d!1950542 d!1950234))

(declare-fun b_lambda!236593 () Bool)

(assert (= b_lambda!236579 (or d!1950170 b_lambda!236593)))

(declare-fun bs!1543150 () Bool)

(declare-fun d!1950754 () Bool)

(assert (= bs!1543150 (and d!1950754 d!1950170)))

(assert (=> bs!1543150 (= (dynLambda!25509 lambda!340066 (h!71094 (exprs!6041 setElem!42254))) (validRegex!7893 (h!71094 (exprs!6041 setElem!42254))))))

(declare-fun m!7050422 () Bool)

(assert (=> bs!1543150 m!7050422))

(assert (=> b!6222697 d!1950754))

(declare-fun b_lambda!236595 () Bool)

(assert (= b_lambda!236581 (or b!6220909 b_lambda!236595)))

(assert (=> d!1950720 d!1950232))

(declare-fun b_lambda!236597 () Bool)

(assert (= b_lambda!236575 (or d!1950174 b_lambda!236597)))

(declare-fun bs!1543151 () Bool)

(declare-fun d!1950756 () Bool)

(assert (= bs!1543151 (and d!1950756 d!1950174)))

(assert (=> bs!1543151 (= (dynLambda!25509 lambda!340077 (h!71094 (unfocusZipperList!1578 zl!343))) (validRegex!7893 (h!71094 (unfocusZipperList!1578 zl!343))))))

(declare-fun m!7050424 () Bool)

(assert (=> bs!1543151 m!7050424))

(assert (=> b!6222611 d!1950756))

(declare-fun b_lambda!236599 () Bool)

(assert (= b_lambda!236553 (or b!6220909 b_lambda!236599)))

(assert (=> d!1950564 d!1950236))

(check-sat (not b!6222834) (not b!6222573) (not b!6222868) (not b!6222886) (not bm!522435) (not d!1950522) (not b!6222017) (not b!6222729) (not b!6222825) (not b!6222845) (not b!6222772) tp_is_empty!41567 (not b_lambda!236593) (not b!6222874) (not b!6222122) (not b!6222841) (not b!6222650) (not b_lambda!236595) (not b!6222875) (not bs!1543151) (not d!1950498) (not bm!522424) (not b!6222102) (not bm!522449) (not b_lambda!236583) (not b!6222215) (not b!6222552) (not d!1950594) (not d!1950646) (not d!1950734) (not d!1950534) (not b!6222568) (not b!6222728) (not b!6222840) (not b!6222881) (not b!6222560) (not bm!522418) (not bm!522448) (not b!6222799) (not b!6222884) (not d!1950526) (not b!6222692) (not d!1950672) (not b!6222833) (not b!6222330) (not bm!522322) (not setNonEmpty!42270) (not b!6222726) (not bm!522293) (not b!6222175) (not b!6222519) (not b!6222757) (not d!1950744) (not b!6222111) (not d!1950372) (not bm!522442) (not b!6222558) (not b!6222707) (not bs!1543146) (not d!1950708) (not d!1950574) (not d!1950588) (not b_lambda!236585) (not d!1950362) (not d!1950674) (not b!6222254) (not b_lambda!236523) (not b!6222572) (not bm!522384) (not b!6222731) (not b!6222753) (not bm!522344) (not b!6222580) (not b!6222850) (not d!1950736) (not d!1950596) (not b!6222120) (not b!6221946) (not b!6222887) (not b!6222870) (not bs!1543149) (not b!6222879) (not b!6222797) (not b!6222325) (not b!6222632) (not d!1950568) (not d!1950722) (not b!6222698) (not d!1950742) (not b!6221949) (not bm!522454) (not b!6222815) (not bm!522318) (not bm!522410) (not b_lambda!236597) (not bm!522369) (not b!6222869) (not bm!522465) (not b!6221955) (not bs!1543150) (not bm!522380) (not b!6222836) (not b!6222675) (not bm!522367) (not b!6222653) (not b!6222803) (not b_lambda!236591) (not b!6222748) (not b!6222181) (not b!6222848) (not b!6222796) (not b!6222858) (not b!6222849) (not d!1950544) (not b!6222817) (not bm!522455) (not d!1950690) (not b!6222696) (not bm!522436) (not b!6222050) (not bm!522457) (not b!6222888) (not d!1950660) (not b!6222079) (not d!1950726) (not b!6222783) (not d!1950442) (not d!1950556) (not b_lambda!236599) (not b!6222856) (not bm!522464) (not b!6222099) (not bm!522362) (not d!1950720) (not b!6222216) (not d!1950492) (not b!6222657) (not b!6221950) (not b!6222826) (not b!6222789) (not b!6222719) (not b!6222256) (not b!6222096) (not bm!522441) (not d!1950428) (not d!1950542) (not b!6222837) (not b!6222791) (not b!6222781) (not b!6222669) (not b!6222805) (not bm!522317) (not b!6222571) (not b!6222776) (not b!6222579) (not b!6222760) (not bm!522467) (not b_lambda!236525) (not b!6222878) (not b!6222578) (not b!6222890) (not b!6222211) (not b!6222577) (not bm!522331) (not b!6222112) (not b!6222121) (not b!6222723) (not bm!522366) (not b!6222830) (not bm!522332) (not bm!522411) (not b!6222177) (not b!6222807) (not bm!522450) (not d!1950564) (not d!1950496) (not b_lambda!236587) (not d!1950644) (not bm!522361) (not bm!522473) (not b!6222676) (not b!6222119) (not b!6222294) (not b!6222793) (not b!6222659) (not d!1950592) (not b!6222846) (not b!6222877) (not b!6222865) (not d!1950724) (not b!6221956) (not b!6222652) (not b!6222210) (not b!6222800) (not b!6222094) (not b!6222857) (not bm!522308) (not b!6222095) (not b!6222842) (not setNonEmpty!42271) (not bm!522327) (not d!1950424) (not b!6222813) (not d!1950704) (not b!6222777) (not bm!522429) (not b!6222743) (not b!6222828) (not b!6222809) (not b!6222758) (not b!6222819) (not b!6222811) (not b!6222780) (not bm!522440) (not bm!522352) (not b!6222752) (not b!6222730) (not b!6222660) (not b!6222792) (not b_lambda!236527) (not bs!1543147) (not bm!522346) (not b!6222328) (not b!6222788) (not b!6222822) (not b!6222649) (not b!6222741) (not b!6222862) (not bm!522359) (not d!1950388) (not d!1950566) (not bm!522335) (not d!1950668) (not b!6222866) (not b!6222282) (not b!6222812) (not b!6222740) (not bm!522463) (not b!6222820) (not bm!522419) (not d!1950528) (not bm!522378) (not b!6222602) (not b!6222779) (not b!6222838) (not b!6222775) (not b!6222852) (not bm!522413) (not d!1950452) (not b!6222564) (not bm!522334) (not b!6222635) (not b!6222882) (not b!6222751) (not b!6222854) (not b!6222172) (not b!6222557) (not b!6222562) (not bm!522343) (not b!6222334) (not b!6222808) (not bm!522412) (not b!6222784) (not d!1950698) (not b!6222844) (not b!6222744) (not bm!522447) (not d!1950454) (not b!6222273) (not b!6222892) (not b!6222872) (not b!6222778) (not b!6222072) (not b!6222645) (not bm!522426) (not d!1950642) (not bm!522326) (not bm!522428) (not bm!522350) (not b!6222864) (not b!6222377) (not b!6222672) (not b!6222709) (not b!6222873) (not bm!522456) (not b!6222621) (not bm!522337) (not b!6222093) (not b!6222821) (not bm!522466) (not b!6222097) (not d!1950662) (not b!6222329) (not bm!522309) (not b!6222518) (not b!6222209) (not b!6222357) (not setNonEmpty!42272) (not b!6222891) (not bm!522434) (not d!1950560) (not b!6222860) (not d!1950714) (not b!6222861) (not d!1950572) (not b!6222853) (not bm!522446) (not b!6222725) (not b!6222816) (not bm!522425) (not b!6222335) (not b!6222804) (not b!6222646) (not b!6222656) (not b!6222295) (not b!6222832) (not d!1950670) (not d!1950634) (not b!6222829) (not b!6222785) (not b!6222795) (not bm!522458) (not b!6222080) (not b!6222824) (not b!6222191) (not b!6222801) (not b!6222358) (not bm!522468) (not b_lambda!236589) (not b!6222344) (not b!6222272) (not b!6221951) (not setNonEmpty!42267) (not b!6222612) (not bm!522349) (not d!1950632) (not b!6222883) (not b!6222556) (not b!6222389) (not d!1950638) (not b!6222217) (not d!1950730) (not bm!522379) (not b!6222285) (not bs!1543148) (not d!1950404) (not d!1950728) (not b!6222206) (not bm!522417) (not bm!522469) (not b!6222762) (not d!1950692) (not b!6222787) (not d!1950554) (not bm!522430) (not b!6222321) (not d!1950436) (not bm!522459))
(check-sat)
