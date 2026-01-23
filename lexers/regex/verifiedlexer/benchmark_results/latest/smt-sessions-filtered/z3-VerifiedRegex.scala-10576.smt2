; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544140 () Bool)

(assert start!544140)

(declare-fun b!5138987 () Bool)

(declare-fun e!3205313 () Bool)

(declare-fun e!3205315 () Bool)

(assert (=> b!5138987 (= e!3205313 (not e!3205315))))

(declare-fun res!2188720 () Bool)

(assert (=> b!5138987 (=> res!2188720 e!3205315)))

(declare-datatypes ((C!29152 0))(
  ( (C!29153 (val!24228 Int)) )
))
(declare-datatypes ((Regex!14443 0))(
  ( (ElementMatch!14443 (c!884881 C!29152)) (Concat!23288 (regOne!29398 Regex!14443) (regTwo!29398 Regex!14443)) (EmptyExpr!14443) (Star!14443 (reg!14772 Regex!14443)) (EmptyLang!14443) (Union!14443 (regOne!29399 Regex!14443) (regTwo!29399 Regex!14443)) )
))
(declare-fun expr!117 () Regex!14443)

(declare-fun validRegex!6298 (Regex!14443) Bool)

(assert (=> b!5138987 (= res!2188720 (not (validRegex!6298 (regTwo!29398 expr!117))))))

(declare-fun lostCause!1438 (Regex!14443) Bool)

(assert (=> b!5138987 (not (lostCause!1438 (regOne!29398 expr!117)))))

(declare-datatypes ((Unit!151069 0))(
  ( (Unit!151070) )
))
(declare-fun lt!2120134 () Unit!151069)

(declare-fun lemmaNullableThenNotLostCause!66 (Regex!14443) Unit!151069)

(assert (=> b!5138987 (= lt!2120134 (lemmaNullableThenNotLostCause!66 (regOne!29398 expr!117)))))

(declare-fun res!2188715 () Bool)

(assert (=> start!544140 (=> (not res!2188715) (not e!3205313))))

(assert (=> start!544140 (= res!2188715 (validRegex!6298 expr!117))))

(assert (=> start!544140 e!3205313))

(declare-fun e!3205316 () Bool)

(assert (=> start!544140 e!3205316))

(declare-datatypes ((List!59813 0))(
  ( (Nil!59689) (Cons!59689 (h!66137 Regex!14443) (t!372844 List!59813)) )
))
(declare-datatypes ((Context!7654 0))(
  ( (Context!7655 (exprs!4327 List!59813)) )
))
(declare-fun ctx!100 () Context!7654)

(declare-fun e!3205314 () Bool)

(declare-fun inv!79288 (Context!7654) Bool)

(assert (=> start!544140 (and (inv!79288 ctx!100) e!3205314)))

(declare-fun tp_is_empty!38035 () Bool)

(assert (=> start!544140 tp_is_empty!38035))

(declare-fun b!5138988 () Bool)

(declare-fun res!2188718 () Bool)

(assert (=> b!5138988 (=> (not res!2188718) (not e!3205313))))

(declare-fun nullable!4802 (Regex!14443) Bool)

(assert (=> b!5138988 (= res!2188718 (nullable!4802 (regOne!29398 expr!117)))))

(declare-fun b!5138989 () Bool)

(declare-fun e!3205317 () Bool)

(declare-fun lostCause!1439 (Context!7654) Bool)

(assert (=> b!5138989 (= e!3205317 (lostCause!1439 ctx!100))))

(declare-fun b!5138990 () Bool)

(assert (=> b!5138990 (= e!3205316 tp_is_empty!38035)))

(declare-fun b!5138991 () Bool)

(declare-fun res!2188717 () Bool)

(assert (=> b!5138991 (=> (not res!2188717) (not e!3205313))))

(assert (=> b!5138991 (= res!2188717 e!3205317)))

(declare-fun res!2188716 () Bool)

(assert (=> b!5138991 (=> res!2188716 e!3205317)))

(assert (=> b!5138991 (= res!2188716 (lostCause!1438 expr!117))))

(declare-fun b!5138992 () Bool)

(declare-fun res!2188719 () Bool)

(assert (=> b!5138992 (=> (not res!2188719) (not e!3205313))))

(declare-fun a!1296 () C!29152)

(get-info :version)

(assert (=> b!5138992 (= res!2188719 (and (or (not ((_ is ElementMatch!14443) expr!117)) (not (= (c!884881 expr!117) a!1296))) (not ((_ is Union!14443) expr!117)) ((_ is Concat!23288) expr!117)))))

(declare-fun b!5138993 () Bool)

(assert (=> b!5138993 (= e!3205315 (validRegex!6298 (regOne!29398 expr!117)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1255 ((InoxSet Context!7654)) Bool)

(declare-fun derivationStepZipperDown!136 (Regex!14443 Context!7654 C!29152) (InoxSet Context!7654))

(assert (=> b!5138993 (lostCauseZipper!1255 (derivationStepZipperDown!136 (regTwo!29398 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120132 () Unit!151069)

(declare-fun lemmaLostCauseFixPointDerivDown!28 (Regex!14443 Context!7654 C!29152) Unit!151069)

(assert (=> b!5138993 (= lt!2120132 (lemmaLostCauseFixPointDerivDown!28 (regTwo!29398 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120133 () Context!7654)

(assert (=> b!5138993 (lostCauseZipper!1255 (derivationStepZipperDown!136 (regOne!29398 expr!117) lt!2120133 a!1296))))

(declare-fun lt!2120131 () Unit!151069)

(assert (=> b!5138993 (= lt!2120131 (lemmaLostCauseFixPointDerivDown!28 (regOne!29398 expr!117) lt!2120133 a!1296))))

(declare-fun $colon$colon!1181 (List!59813 Regex!14443) List!59813)

(assert (=> b!5138993 (= lt!2120133 (Context!7655 ($colon$colon!1181 (exprs!4327 ctx!100) (regTwo!29398 expr!117))))))

(declare-fun b!5138994 () Bool)

(declare-fun tp!1433387 () Bool)

(declare-fun tp!1433386 () Bool)

(assert (=> b!5138994 (= e!3205316 (and tp!1433387 tp!1433386))))

(declare-fun b!5138995 () Bool)

(declare-fun tp!1433382 () Bool)

(assert (=> b!5138995 (= e!3205316 tp!1433382)))

(declare-fun b!5138996 () Bool)

(declare-fun tp!1433385 () Bool)

(declare-fun tp!1433384 () Bool)

(assert (=> b!5138996 (= e!3205316 (and tp!1433385 tp!1433384))))

(declare-fun b!5138997 () Bool)

(declare-fun tp!1433383 () Bool)

(assert (=> b!5138997 (= e!3205314 tp!1433383)))

(assert (= (and start!544140 res!2188715) b!5138991))

(assert (= (and b!5138991 (not res!2188716)) b!5138989))

(assert (= (and b!5138991 res!2188717) b!5138992))

(assert (= (and b!5138992 res!2188719) b!5138988))

(assert (= (and b!5138988 res!2188718) b!5138987))

(assert (= (and b!5138987 (not res!2188720)) b!5138993))

(assert (= (and start!544140 ((_ is ElementMatch!14443) expr!117)) b!5138990))

(assert (= (and start!544140 ((_ is Concat!23288) expr!117)) b!5138994))

(assert (= (and start!544140 ((_ is Star!14443) expr!117)) b!5138995))

(assert (= (and start!544140 ((_ is Union!14443) expr!117)) b!5138996))

(assert (= start!544140 b!5138997))

(declare-fun m!6203644 () Bool)

(assert (=> b!5138988 m!6203644))

(declare-fun m!6203646 () Bool)

(assert (=> start!544140 m!6203646))

(declare-fun m!6203648 () Bool)

(assert (=> start!544140 m!6203648))

(declare-fun m!6203650 () Bool)

(assert (=> b!5138991 m!6203650))

(declare-fun m!6203652 () Bool)

(assert (=> b!5138987 m!6203652))

(declare-fun m!6203654 () Bool)

(assert (=> b!5138987 m!6203654))

(declare-fun m!6203656 () Bool)

(assert (=> b!5138987 m!6203656))

(declare-fun m!6203658 () Bool)

(assert (=> b!5138993 m!6203658))

(declare-fun m!6203660 () Bool)

(assert (=> b!5138993 m!6203660))

(declare-fun m!6203662 () Bool)

(assert (=> b!5138993 m!6203662))

(declare-fun m!6203664 () Bool)

(assert (=> b!5138993 m!6203664))

(declare-fun m!6203666 () Bool)

(assert (=> b!5138993 m!6203666))

(declare-fun m!6203668 () Bool)

(assert (=> b!5138993 m!6203668))

(assert (=> b!5138993 m!6203664))

(declare-fun m!6203670 () Bool)

(assert (=> b!5138993 m!6203670))

(declare-fun m!6203672 () Bool)

(assert (=> b!5138993 m!6203672))

(assert (=> b!5138993 m!6203666))

(declare-fun m!6203674 () Bool)

(assert (=> b!5138989 m!6203674))

(check-sat (not b!5138996) (not start!544140) (not b!5138995) tp_is_empty!38035 (not b!5138997) (not b!5138991) (not b!5138994) (not b!5138989) (not b!5138987) (not b!5138988) (not b!5138993))
(check-sat)
(get-model)

(declare-fun d!1662549 () Bool)

(declare-fun lambda!256332 () Int)

(declare-fun exists!1772 (List!59813 Int) Bool)

(assert (=> d!1662549 (= (lostCause!1439 ctx!100) (exists!1772 (exprs!4327 ctx!100) lambda!256332))))

(declare-fun bs!1200607 () Bool)

(assert (= bs!1200607 d!1662549))

(declare-fun m!6203728 () Bool)

(assert (=> bs!1200607 m!6203728))

(assert (=> b!5138989 d!1662549))

(declare-fun d!1662567 () Bool)

(declare-fun nullableFct!1314 (Regex!14443) Bool)

(assert (=> d!1662567 (= (nullable!4802 (regOne!29398 expr!117)) (nullableFct!1314 (regOne!29398 expr!117)))))

(declare-fun bs!1200611 () Bool)

(assert (= bs!1200611 d!1662567))

(declare-fun m!6203730 () Bool)

(assert (=> bs!1200611 m!6203730))

(assert (=> b!5138988 d!1662567))

(declare-fun d!1662569 () Bool)

(declare-fun c!884934 () Bool)

(assert (=> d!1662569 (= c!884934 (and ((_ is ElementMatch!14443) (regTwo!29398 expr!117)) (= (c!884881 (regTwo!29398 expr!117)) a!1296)))))

(declare-fun e!3205408 () (InoxSet Context!7654))

(assert (=> d!1662569 (= (derivationStepZipperDown!136 (regTwo!29398 expr!117) ctx!100 a!1296) e!3205408)))

(declare-fun bm!358616 () Bool)

(declare-fun call!358621 () (InoxSet Context!7654))

(declare-fun call!358625 () (InoxSet Context!7654))

(assert (=> bm!358616 (= call!358621 call!358625)))

(declare-fun b!5139152 () Bool)

(declare-fun e!3205411 () (InoxSet Context!7654))

(assert (=> b!5139152 (= e!3205408 e!3205411)))

(declare-fun c!884936 () Bool)

(assert (=> b!5139152 (= c!884936 ((_ is Union!14443) (regTwo!29398 expr!117)))))

(declare-fun b!5139153 () Bool)

(declare-fun e!3205409 () (InoxSet Context!7654))

(assert (=> b!5139153 (= e!3205409 ((as const (Array Context!7654 Bool)) false))))

(declare-fun b!5139154 () Bool)

(declare-fun call!358624 () (InoxSet Context!7654))

(assert (=> b!5139154 (= e!3205411 ((_ map or) call!358624 call!358625))))

(declare-fun b!5139155 () Bool)

(declare-fun e!3205410 () Bool)

(assert (=> b!5139155 (= e!3205410 (nullable!4802 (regOne!29398 (regTwo!29398 expr!117))))))

(declare-fun c!884935 () Bool)

(declare-fun c!884938 () Bool)

(declare-fun bm!358617 () Bool)

(declare-fun call!358626 () List!59813)

(assert (=> bm!358617 (= call!358625 (derivationStepZipperDown!136 (ite c!884936 (regTwo!29399 (regTwo!29398 expr!117)) (ite c!884935 (regTwo!29398 (regTwo!29398 expr!117)) (ite c!884938 (regOne!29398 (regTwo!29398 expr!117)) (reg!14772 (regTwo!29398 expr!117))))) (ite (or c!884936 c!884935) ctx!100 (Context!7655 call!358626)) a!1296))))

(declare-fun bm!358618 () Bool)

(declare-fun call!358622 () List!59813)

(assert (=> bm!358618 (= call!358626 call!358622)))

(declare-fun bm!358619 () Bool)

(declare-fun call!358623 () (InoxSet Context!7654))

(assert (=> bm!358619 (= call!358623 call!358621)))

(declare-fun b!5139156 () Bool)

(assert (=> b!5139156 (= c!884935 e!3205410)))

(declare-fun res!2188752 () Bool)

(assert (=> b!5139156 (=> (not res!2188752) (not e!3205410))))

(assert (=> b!5139156 (= res!2188752 ((_ is Concat!23288) (regTwo!29398 expr!117)))))

(declare-fun e!3205412 () (InoxSet Context!7654))

(assert (=> b!5139156 (= e!3205411 e!3205412)))

(declare-fun bm!358620 () Bool)

(assert (=> bm!358620 (= call!358622 ($colon$colon!1181 (exprs!4327 ctx!100) (ite (or c!884935 c!884938) (regTwo!29398 (regTwo!29398 expr!117)) (regTwo!29398 expr!117))))))

(declare-fun b!5139157 () Bool)

(assert (=> b!5139157 (= e!3205408 (store ((as const (Array Context!7654 Bool)) false) ctx!100 true))))

(declare-fun b!5139158 () Bool)

(declare-fun e!3205407 () (InoxSet Context!7654))

(assert (=> b!5139158 (= e!3205407 call!358623)))

(declare-fun bm!358621 () Bool)

(assert (=> bm!358621 (= call!358624 (derivationStepZipperDown!136 (ite c!884936 (regOne!29399 (regTwo!29398 expr!117)) (regOne!29398 (regTwo!29398 expr!117))) (ite c!884936 ctx!100 (Context!7655 call!358622)) a!1296))))

(declare-fun b!5139159 () Bool)

(assert (=> b!5139159 (= e!3205412 e!3205407)))

(assert (=> b!5139159 (= c!884938 ((_ is Concat!23288) (regTwo!29398 expr!117)))))

(declare-fun b!5139160 () Bool)

(assert (=> b!5139160 (= e!3205409 call!358623)))

(declare-fun b!5139161 () Bool)

(declare-fun c!884937 () Bool)

(assert (=> b!5139161 (= c!884937 ((_ is Star!14443) (regTwo!29398 expr!117)))))

(assert (=> b!5139161 (= e!3205407 e!3205409)))

(declare-fun b!5139162 () Bool)

(assert (=> b!5139162 (= e!3205412 ((_ map or) call!358624 call!358621))))

(assert (= (and d!1662569 c!884934) b!5139157))

(assert (= (and d!1662569 (not c!884934)) b!5139152))

(assert (= (and b!5139152 c!884936) b!5139154))

(assert (= (and b!5139152 (not c!884936)) b!5139156))

(assert (= (and b!5139156 res!2188752) b!5139155))

(assert (= (and b!5139156 c!884935) b!5139162))

(assert (= (and b!5139156 (not c!884935)) b!5139159))

(assert (= (and b!5139159 c!884938) b!5139158))

(assert (= (and b!5139159 (not c!884938)) b!5139161))

(assert (= (and b!5139161 c!884937) b!5139160))

(assert (= (and b!5139161 (not c!884937)) b!5139153))

(assert (= (or b!5139158 b!5139160) bm!358618))

(assert (= (or b!5139158 b!5139160) bm!358619))

(assert (= (or b!5139162 bm!358618) bm!358620))

(assert (= (or b!5139162 bm!358619) bm!358616))

(assert (= (or b!5139154 bm!358616) bm!358617))

(assert (= (or b!5139154 b!5139162) bm!358621))

(declare-fun m!6203762 () Bool)

(assert (=> bm!358621 m!6203762))

(declare-fun m!6203764 () Bool)

(assert (=> b!5139155 m!6203764))

(declare-fun m!6203766 () Bool)

(assert (=> b!5139157 m!6203766))

(declare-fun m!6203768 () Bool)

(assert (=> bm!358620 m!6203768))

(declare-fun m!6203770 () Bool)

(assert (=> bm!358617 m!6203770))

(assert (=> b!5138993 d!1662569))

(declare-fun bs!1200618 () Bool)

(declare-fun b!5139167 () Bool)

(declare-fun d!1662585 () Bool)

(assert (= bs!1200618 (and b!5139167 d!1662585)))

(declare-fun lambda!256353 () Int)

(declare-fun lambda!256352 () Int)

(assert (=> bs!1200618 (not (= lambda!256353 lambda!256352))))

(declare-fun bs!1200619 () Bool)

(declare-fun b!5139168 () Bool)

(assert (= bs!1200619 (and b!5139168 d!1662585)))

(declare-fun lambda!256354 () Int)

(assert (=> bs!1200619 (not (= lambda!256354 lambda!256352))))

(declare-fun bs!1200620 () Bool)

(assert (= bs!1200620 (and b!5139168 b!5139167)))

(assert (=> bs!1200620 (= lambda!256354 lambda!256353)))

(declare-datatypes ((List!59816 0))(
  ( (Nil!59692) (Cons!59692 (h!66140 Context!7654) (t!372849 List!59816)) )
))
(declare-fun call!358631 () List!59816)

(declare-fun bm!358627 () Bool)

(declare-fun toList!8381 ((InoxSet Context!7654)) List!59816)

(assert (=> bm!358627 (= call!358631 (toList!8381 (derivationStepZipperDown!136 (regTwo!29398 expr!117) ctx!100 a!1296)))))

(declare-fun c!884949 () Bool)

(declare-fun lt!2120197 () List!59816)

(declare-fun lt!2120191 () List!59816)

(declare-fun call!358632 () Bool)

(declare-fun bm!358626 () Bool)

(declare-fun exists!1773 (List!59816 Int) Bool)

(assert (=> bm!358626 (= call!358632 (exists!1773 (ite c!884949 lt!2120197 lt!2120191) (ite c!884949 lambda!256353 lambda!256354)))))

(declare-fun lt!2120193 () Bool)

(declare-datatypes ((List!59817 0))(
  ( (Nil!59693) (Cons!59693 (h!66141 C!29152) (t!372850 List!59817)) )
))
(declare-datatypes ((Option!14779 0))(
  ( (None!14778) (Some!14778 (v!50807 List!59817)) )
))
(declare-fun isEmpty!32040 (Option!14779) Bool)

(declare-fun getLanguageWitness!928 ((InoxSet Context!7654)) Option!14779)

(assert (=> d!1662585 (= lt!2120193 (isEmpty!32040 (getLanguageWitness!928 (derivationStepZipperDown!136 (regTwo!29398 expr!117) ctx!100 a!1296))))))

(declare-fun forall!13907 ((InoxSet Context!7654) Int) Bool)

(assert (=> d!1662585 (= lt!2120193 (forall!13907 (derivationStepZipperDown!136 (regTwo!29398 expr!117) ctx!100 a!1296) lambda!256352))))

(declare-fun lt!2120192 () Unit!151069)

(declare-fun e!3205419 () Unit!151069)

(assert (=> d!1662585 (= lt!2120192 e!3205419)))

(assert (=> d!1662585 (= c!884949 (not (forall!13907 (derivationStepZipperDown!136 (regTwo!29398 expr!117) ctx!100 a!1296) lambda!256352)))))

(assert (=> d!1662585 (= (lostCauseZipper!1255 (derivationStepZipperDown!136 (regTwo!29398 expr!117) ctx!100 a!1296)) lt!2120193)))

(declare-fun Unit!151073 () Unit!151069)

(assert (=> b!5139168 (= e!3205419 Unit!151073)))

(assert (=> b!5139168 (= lt!2120191 call!358631)))

(declare-fun lt!2120190 () Unit!151069)

(declare-fun lemmaForallThenNotExists!395 (List!59816 Int) Unit!151069)

(assert (=> b!5139168 (= lt!2120190 (lemmaForallThenNotExists!395 lt!2120191 lambda!256352))))

(assert (=> b!5139168 (not call!358632)))

(declare-fun lt!2120195 () Unit!151069)

(assert (=> b!5139168 (= lt!2120195 lt!2120190)))

(declare-fun Unit!151074 () Unit!151069)

(assert (=> b!5139167 (= e!3205419 Unit!151074)))

(assert (=> b!5139167 (= lt!2120197 call!358631)))

(declare-fun lt!2120194 () Unit!151069)

(declare-fun lemmaNotForallThenExists!428 (List!59816 Int) Unit!151069)

(assert (=> b!5139167 (= lt!2120194 (lemmaNotForallThenExists!428 lt!2120197 lambda!256352))))

(assert (=> b!5139167 call!358632))

(declare-fun lt!2120196 () Unit!151069)

(assert (=> b!5139167 (= lt!2120196 lt!2120194)))

(assert (= (and d!1662585 c!884949) b!5139167))

(assert (= (and d!1662585 (not c!884949)) b!5139168))

(assert (= (or b!5139167 b!5139168) bm!358626))

(assert (= (or b!5139167 b!5139168) bm!358627))

(assert (=> d!1662585 m!6203664))

(declare-fun m!6203772 () Bool)

(assert (=> d!1662585 m!6203772))

(assert (=> d!1662585 m!6203772))

(declare-fun m!6203774 () Bool)

(assert (=> d!1662585 m!6203774))

(assert (=> d!1662585 m!6203664))

(declare-fun m!6203776 () Bool)

(assert (=> d!1662585 m!6203776))

(assert (=> d!1662585 m!6203664))

(assert (=> d!1662585 m!6203776))

(declare-fun m!6203778 () Bool)

(assert (=> b!5139168 m!6203778))

(assert (=> bm!358627 m!6203664))

(declare-fun m!6203780 () Bool)

(assert (=> bm!358627 m!6203780))

(declare-fun m!6203782 () Bool)

(assert (=> b!5139167 m!6203782))

(declare-fun m!6203784 () Bool)

(assert (=> bm!358626 m!6203784))

(assert (=> b!5138993 d!1662585))

(declare-fun b!5139187 () Bool)

(declare-fun e!3205440 () Bool)

(declare-fun call!358641 () Bool)

(assert (=> b!5139187 (= e!3205440 call!358641)))

(declare-fun b!5139188 () Bool)

(declare-fun e!3205438 () Bool)

(declare-fun e!3205435 () Bool)

(assert (=> b!5139188 (= e!3205438 e!3205435)))

(declare-fun res!2188764 () Bool)

(assert (=> b!5139188 (= res!2188764 (not (nullable!4802 (reg!14772 (regOne!29398 expr!117)))))))

(assert (=> b!5139188 (=> (not res!2188764) (not e!3205435))))

(declare-fun b!5139189 () Bool)

(declare-fun e!3205434 () Bool)

(assert (=> b!5139189 (= e!3205434 call!358641)))

(declare-fun b!5139190 () Bool)

(declare-fun e!3205436 () Bool)

(assert (=> b!5139190 (= e!3205436 e!3205434)))

(declare-fun res!2188766 () Bool)

(assert (=> b!5139190 (=> (not res!2188766) (not e!3205434))))

(declare-fun call!358640 () Bool)

(assert (=> b!5139190 (= res!2188766 call!358640)))

(declare-fun bm!358634 () Bool)

(declare-fun c!884955 () Bool)

(declare-fun call!358639 () Bool)

(declare-fun c!884954 () Bool)

(assert (=> bm!358634 (= call!358639 (validRegex!6298 (ite c!884954 (reg!14772 (regOne!29398 expr!117)) (ite c!884955 (regTwo!29399 (regOne!29398 expr!117)) (regTwo!29398 (regOne!29398 expr!117))))))))

(declare-fun d!1662587 () Bool)

(declare-fun res!2188763 () Bool)

(declare-fun e!3205437 () Bool)

(assert (=> d!1662587 (=> res!2188763 e!3205437)))

(assert (=> d!1662587 (= res!2188763 ((_ is ElementMatch!14443) (regOne!29398 expr!117)))))

(assert (=> d!1662587 (= (validRegex!6298 (regOne!29398 expr!117)) e!3205437)))

(declare-fun b!5139191 () Bool)

(assert (=> b!5139191 (= e!3205437 e!3205438)))

(assert (=> b!5139191 (= c!884954 ((_ is Star!14443) (regOne!29398 expr!117)))))

(declare-fun b!5139192 () Bool)

(assert (=> b!5139192 (= e!3205435 call!358639)))

(declare-fun b!5139193 () Bool)

(declare-fun res!2188765 () Bool)

(assert (=> b!5139193 (=> res!2188765 e!3205436)))

(assert (=> b!5139193 (= res!2188765 (not ((_ is Concat!23288) (regOne!29398 expr!117))))))

(declare-fun e!3205439 () Bool)

(assert (=> b!5139193 (= e!3205439 e!3205436)))

(declare-fun bm!358635 () Bool)

(assert (=> bm!358635 (= call!358641 call!358639)))

(declare-fun b!5139194 () Bool)

(assert (=> b!5139194 (= e!3205438 e!3205439)))

(assert (=> b!5139194 (= c!884955 ((_ is Union!14443) (regOne!29398 expr!117)))))

(declare-fun b!5139195 () Bool)

(declare-fun res!2188767 () Bool)

(assert (=> b!5139195 (=> (not res!2188767) (not e!3205440))))

(assert (=> b!5139195 (= res!2188767 call!358640)))

(assert (=> b!5139195 (= e!3205439 e!3205440)))

(declare-fun bm!358636 () Bool)

(assert (=> bm!358636 (= call!358640 (validRegex!6298 (ite c!884955 (regOne!29399 (regOne!29398 expr!117)) (regOne!29398 (regOne!29398 expr!117)))))))

(assert (= (and d!1662587 (not res!2188763)) b!5139191))

(assert (= (and b!5139191 c!884954) b!5139188))

(assert (= (and b!5139191 (not c!884954)) b!5139194))

(assert (= (and b!5139188 res!2188764) b!5139192))

(assert (= (and b!5139194 c!884955) b!5139195))

(assert (= (and b!5139194 (not c!884955)) b!5139193))

(assert (= (and b!5139195 res!2188767) b!5139187))

(assert (= (and b!5139193 (not res!2188765)) b!5139190))

(assert (= (and b!5139190 res!2188766) b!5139189))

(assert (= (or b!5139187 b!5139189) bm!358635))

(assert (= (or b!5139195 b!5139190) bm!358636))

(assert (= (or b!5139192 bm!358635) bm!358634))

(declare-fun m!6203786 () Bool)

(assert (=> b!5139188 m!6203786))

(declare-fun m!6203788 () Bool)

(assert (=> bm!358634 m!6203788))

(declare-fun m!6203790 () Bool)

(assert (=> bm!358636 m!6203790))

(assert (=> b!5138993 d!1662587))

(declare-fun d!1662589 () Bool)

(assert (=> d!1662589 (lostCauseZipper!1255 (derivationStepZipperDown!136 (regOne!29398 expr!117) lt!2120133 a!1296))))

(declare-fun lt!2120200 () Unit!151069)

(declare-fun choose!38037 (Regex!14443 Context!7654 C!29152) Unit!151069)

(assert (=> d!1662589 (= lt!2120200 (choose!38037 (regOne!29398 expr!117) lt!2120133 a!1296))))

(assert (=> d!1662589 (validRegex!6298 (regOne!29398 expr!117))))

(assert (=> d!1662589 (= (lemmaLostCauseFixPointDerivDown!28 (regOne!29398 expr!117) lt!2120133 a!1296) lt!2120200)))

(declare-fun bs!1200621 () Bool)

(assert (= bs!1200621 d!1662589))

(assert (=> bs!1200621 m!6203666))

(assert (=> bs!1200621 m!6203666))

(assert (=> bs!1200621 m!6203668))

(declare-fun m!6203792 () Bool)

(assert (=> bs!1200621 m!6203792))

(assert (=> bs!1200621 m!6203660))

(assert (=> b!5138993 d!1662589))

(declare-fun d!1662591 () Bool)

(declare-fun c!884956 () Bool)

(assert (=> d!1662591 (= c!884956 (and ((_ is ElementMatch!14443) (regOne!29398 expr!117)) (= (c!884881 (regOne!29398 expr!117)) a!1296)))))

(declare-fun e!3205442 () (InoxSet Context!7654))

(assert (=> d!1662591 (= (derivationStepZipperDown!136 (regOne!29398 expr!117) lt!2120133 a!1296) e!3205442)))

(declare-fun bm!358637 () Bool)

(declare-fun call!358642 () (InoxSet Context!7654))

(declare-fun call!358646 () (InoxSet Context!7654))

(assert (=> bm!358637 (= call!358642 call!358646)))

(declare-fun b!5139196 () Bool)

(declare-fun e!3205445 () (InoxSet Context!7654))

(assert (=> b!5139196 (= e!3205442 e!3205445)))

(declare-fun c!884958 () Bool)

(assert (=> b!5139196 (= c!884958 ((_ is Union!14443) (regOne!29398 expr!117)))))

(declare-fun b!5139197 () Bool)

(declare-fun e!3205443 () (InoxSet Context!7654))

(assert (=> b!5139197 (= e!3205443 ((as const (Array Context!7654 Bool)) false))))

(declare-fun b!5139198 () Bool)

(declare-fun call!358645 () (InoxSet Context!7654))

(assert (=> b!5139198 (= e!3205445 ((_ map or) call!358645 call!358646))))

(declare-fun b!5139199 () Bool)

(declare-fun e!3205444 () Bool)

(assert (=> b!5139199 (= e!3205444 (nullable!4802 (regOne!29398 (regOne!29398 expr!117))))))

(declare-fun c!884957 () Bool)

(declare-fun call!358647 () List!59813)

(declare-fun c!884960 () Bool)

(declare-fun bm!358638 () Bool)

(assert (=> bm!358638 (= call!358646 (derivationStepZipperDown!136 (ite c!884958 (regTwo!29399 (regOne!29398 expr!117)) (ite c!884957 (regTwo!29398 (regOne!29398 expr!117)) (ite c!884960 (regOne!29398 (regOne!29398 expr!117)) (reg!14772 (regOne!29398 expr!117))))) (ite (or c!884958 c!884957) lt!2120133 (Context!7655 call!358647)) a!1296))))

(declare-fun bm!358639 () Bool)

(declare-fun call!358643 () List!59813)

(assert (=> bm!358639 (= call!358647 call!358643)))

(declare-fun bm!358640 () Bool)

(declare-fun call!358644 () (InoxSet Context!7654))

(assert (=> bm!358640 (= call!358644 call!358642)))

(declare-fun b!5139200 () Bool)

(assert (=> b!5139200 (= c!884957 e!3205444)))

(declare-fun res!2188768 () Bool)

(assert (=> b!5139200 (=> (not res!2188768) (not e!3205444))))

(assert (=> b!5139200 (= res!2188768 ((_ is Concat!23288) (regOne!29398 expr!117)))))

(declare-fun e!3205446 () (InoxSet Context!7654))

(assert (=> b!5139200 (= e!3205445 e!3205446)))

(declare-fun bm!358641 () Bool)

(assert (=> bm!358641 (= call!358643 ($colon$colon!1181 (exprs!4327 lt!2120133) (ite (or c!884957 c!884960) (regTwo!29398 (regOne!29398 expr!117)) (regOne!29398 expr!117))))))

(declare-fun b!5139201 () Bool)

(assert (=> b!5139201 (= e!3205442 (store ((as const (Array Context!7654 Bool)) false) lt!2120133 true))))

(declare-fun b!5139202 () Bool)

(declare-fun e!3205441 () (InoxSet Context!7654))

(assert (=> b!5139202 (= e!3205441 call!358644)))

(declare-fun bm!358642 () Bool)

(assert (=> bm!358642 (= call!358645 (derivationStepZipperDown!136 (ite c!884958 (regOne!29399 (regOne!29398 expr!117)) (regOne!29398 (regOne!29398 expr!117))) (ite c!884958 lt!2120133 (Context!7655 call!358643)) a!1296))))

(declare-fun b!5139203 () Bool)

(assert (=> b!5139203 (= e!3205446 e!3205441)))

(assert (=> b!5139203 (= c!884960 ((_ is Concat!23288) (regOne!29398 expr!117)))))

(declare-fun b!5139204 () Bool)

(assert (=> b!5139204 (= e!3205443 call!358644)))

(declare-fun b!5139205 () Bool)

(declare-fun c!884959 () Bool)

(assert (=> b!5139205 (= c!884959 ((_ is Star!14443) (regOne!29398 expr!117)))))

(assert (=> b!5139205 (= e!3205441 e!3205443)))

(declare-fun b!5139206 () Bool)

(assert (=> b!5139206 (= e!3205446 ((_ map or) call!358645 call!358642))))

(assert (= (and d!1662591 c!884956) b!5139201))

(assert (= (and d!1662591 (not c!884956)) b!5139196))

(assert (= (and b!5139196 c!884958) b!5139198))

(assert (= (and b!5139196 (not c!884958)) b!5139200))

(assert (= (and b!5139200 res!2188768) b!5139199))

(assert (= (and b!5139200 c!884957) b!5139206))

(assert (= (and b!5139200 (not c!884957)) b!5139203))

(assert (= (and b!5139203 c!884960) b!5139202))

(assert (= (and b!5139203 (not c!884960)) b!5139205))

(assert (= (and b!5139205 c!884959) b!5139204))

(assert (= (and b!5139205 (not c!884959)) b!5139197))

(assert (= (or b!5139202 b!5139204) bm!358639))

(assert (= (or b!5139202 b!5139204) bm!358640))

(assert (= (or b!5139206 bm!358639) bm!358641))

(assert (= (or b!5139206 bm!358640) bm!358637))

(assert (= (or b!5139198 bm!358637) bm!358638))

(assert (= (or b!5139198 b!5139206) bm!358642))

(declare-fun m!6203794 () Bool)

(assert (=> bm!358642 m!6203794))

(declare-fun m!6203796 () Bool)

(assert (=> b!5139199 m!6203796))

(declare-fun m!6203798 () Bool)

(assert (=> b!5139201 m!6203798))

(declare-fun m!6203800 () Bool)

(assert (=> bm!358641 m!6203800))

(declare-fun m!6203802 () Bool)

(assert (=> bm!358638 m!6203802))

(assert (=> b!5138993 d!1662591))

(declare-fun bs!1200622 () Bool)

(declare-fun d!1662593 () Bool)

(assert (= bs!1200622 (and d!1662593 d!1662585)))

(declare-fun lambda!256355 () Int)

(assert (=> bs!1200622 (= lambda!256355 lambda!256352)))

(declare-fun bs!1200623 () Bool)

(assert (= bs!1200623 (and d!1662593 b!5139167)))

(assert (=> bs!1200623 (not (= lambda!256355 lambda!256353))))

(declare-fun bs!1200624 () Bool)

(assert (= bs!1200624 (and d!1662593 b!5139168)))

(assert (=> bs!1200624 (not (= lambda!256355 lambda!256354))))

(declare-fun bs!1200625 () Bool)

(declare-fun b!5139207 () Bool)

(assert (= bs!1200625 (and b!5139207 d!1662585)))

(declare-fun lambda!256356 () Int)

(assert (=> bs!1200625 (not (= lambda!256356 lambda!256352))))

(declare-fun bs!1200626 () Bool)

(assert (= bs!1200626 (and b!5139207 b!5139167)))

(assert (=> bs!1200626 (= lambda!256356 lambda!256353)))

(declare-fun bs!1200627 () Bool)

(assert (= bs!1200627 (and b!5139207 b!5139168)))

(assert (=> bs!1200627 (= lambda!256356 lambda!256354)))

(declare-fun bs!1200628 () Bool)

(assert (= bs!1200628 (and b!5139207 d!1662593)))

(assert (=> bs!1200628 (not (= lambda!256356 lambda!256355))))

(declare-fun bs!1200629 () Bool)

(declare-fun b!5139208 () Bool)

(assert (= bs!1200629 (and b!5139208 b!5139168)))

(declare-fun lambda!256357 () Int)

(assert (=> bs!1200629 (= lambda!256357 lambda!256354)))

(declare-fun bs!1200630 () Bool)

(assert (= bs!1200630 (and b!5139208 b!5139167)))

(assert (=> bs!1200630 (= lambda!256357 lambda!256353)))

(declare-fun bs!1200631 () Bool)

(assert (= bs!1200631 (and b!5139208 d!1662585)))

(assert (=> bs!1200631 (not (= lambda!256357 lambda!256352))))

(declare-fun bs!1200632 () Bool)

(assert (= bs!1200632 (and b!5139208 d!1662593)))

(assert (=> bs!1200632 (not (= lambda!256357 lambda!256355))))

(declare-fun bs!1200633 () Bool)

(assert (= bs!1200633 (and b!5139208 b!5139207)))

(assert (=> bs!1200633 (= lambda!256357 lambda!256356)))

(declare-fun bm!358644 () Bool)

(declare-fun call!358648 () List!59816)

(assert (=> bm!358644 (= call!358648 (toList!8381 (derivationStepZipperDown!136 (regOne!29398 expr!117) lt!2120133 a!1296)))))

(declare-fun lt!2120202 () List!59816)

(declare-fun call!358649 () Bool)

(declare-fun bm!358643 () Bool)

(declare-fun c!884961 () Bool)

(declare-fun lt!2120208 () List!59816)

(assert (=> bm!358643 (= call!358649 (exists!1773 (ite c!884961 lt!2120208 lt!2120202) (ite c!884961 lambda!256356 lambda!256357)))))

(declare-fun lt!2120204 () Bool)

(assert (=> d!1662593 (= lt!2120204 (isEmpty!32040 (getLanguageWitness!928 (derivationStepZipperDown!136 (regOne!29398 expr!117) lt!2120133 a!1296))))))

(assert (=> d!1662593 (= lt!2120204 (forall!13907 (derivationStepZipperDown!136 (regOne!29398 expr!117) lt!2120133 a!1296) lambda!256355))))

(declare-fun lt!2120203 () Unit!151069)

(declare-fun e!3205447 () Unit!151069)

(assert (=> d!1662593 (= lt!2120203 e!3205447)))

(assert (=> d!1662593 (= c!884961 (not (forall!13907 (derivationStepZipperDown!136 (regOne!29398 expr!117) lt!2120133 a!1296) lambda!256355)))))

(assert (=> d!1662593 (= (lostCauseZipper!1255 (derivationStepZipperDown!136 (regOne!29398 expr!117) lt!2120133 a!1296)) lt!2120204)))

(declare-fun Unit!151077 () Unit!151069)

(assert (=> b!5139208 (= e!3205447 Unit!151077)))

(assert (=> b!5139208 (= lt!2120202 call!358648)))

(declare-fun lt!2120201 () Unit!151069)

(assert (=> b!5139208 (= lt!2120201 (lemmaForallThenNotExists!395 lt!2120202 lambda!256355))))

(assert (=> b!5139208 (not call!358649)))

(declare-fun lt!2120206 () Unit!151069)

(assert (=> b!5139208 (= lt!2120206 lt!2120201)))

(declare-fun Unit!151078 () Unit!151069)

(assert (=> b!5139207 (= e!3205447 Unit!151078)))

(assert (=> b!5139207 (= lt!2120208 call!358648)))

(declare-fun lt!2120205 () Unit!151069)

(assert (=> b!5139207 (= lt!2120205 (lemmaNotForallThenExists!428 lt!2120208 lambda!256355))))

(assert (=> b!5139207 call!358649))

(declare-fun lt!2120207 () Unit!151069)

(assert (=> b!5139207 (= lt!2120207 lt!2120205)))

(assert (= (and d!1662593 c!884961) b!5139207))

(assert (= (and d!1662593 (not c!884961)) b!5139208))

(assert (= (or b!5139207 b!5139208) bm!358643))

(assert (= (or b!5139207 b!5139208) bm!358644))

(assert (=> d!1662593 m!6203666))

(declare-fun m!6203804 () Bool)

(assert (=> d!1662593 m!6203804))

(assert (=> d!1662593 m!6203804))

(declare-fun m!6203806 () Bool)

(assert (=> d!1662593 m!6203806))

(assert (=> d!1662593 m!6203666))

(declare-fun m!6203808 () Bool)

(assert (=> d!1662593 m!6203808))

(assert (=> d!1662593 m!6203666))

(assert (=> d!1662593 m!6203808))

(declare-fun m!6203810 () Bool)

(assert (=> b!5139208 m!6203810))

(assert (=> bm!358644 m!6203666))

(declare-fun m!6203812 () Bool)

(assert (=> bm!358644 m!6203812))

(declare-fun m!6203814 () Bool)

(assert (=> b!5139207 m!6203814))

(declare-fun m!6203816 () Bool)

(assert (=> bm!358643 m!6203816))

(assert (=> b!5138993 d!1662593))

(declare-fun d!1662595 () Bool)

(assert (=> d!1662595 (lostCauseZipper!1255 (derivationStepZipperDown!136 (regTwo!29398 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120209 () Unit!151069)

(assert (=> d!1662595 (= lt!2120209 (choose!38037 (regTwo!29398 expr!117) ctx!100 a!1296))))

(assert (=> d!1662595 (validRegex!6298 (regTwo!29398 expr!117))))

(assert (=> d!1662595 (= (lemmaLostCauseFixPointDerivDown!28 (regTwo!29398 expr!117) ctx!100 a!1296) lt!2120209)))

(declare-fun bs!1200634 () Bool)

(assert (= bs!1200634 d!1662595))

(assert (=> bs!1200634 m!6203664))

(assert (=> bs!1200634 m!6203664))

(assert (=> bs!1200634 m!6203670))

(declare-fun m!6203818 () Bool)

(assert (=> bs!1200634 m!6203818))

(assert (=> bs!1200634 m!6203652))

(assert (=> b!5138993 d!1662595))

(declare-fun d!1662597 () Bool)

(assert (=> d!1662597 (= ($colon$colon!1181 (exprs!4327 ctx!100) (regTwo!29398 expr!117)) (Cons!59689 (regTwo!29398 expr!117) (exprs!4327 ctx!100)))))

(assert (=> b!5138993 d!1662597))

(declare-fun b!5139209 () Bool)

(declare-fun e!3205454 () Bool)

(declare-fun call!358652 () Bool)

(assert (=> b!5139209 (= e!3205454 call!358652)))

(declare-fun b!5139210 () Bool)

(declare-fun e!3205452 () Bool)

(declare-fun e!3205449 () Bool)

(assert (=> b!5139210 (= e!3205452 e!3205449)))

(declare-fun res!2188770 () Bool)

(assert (=> b!5139210 (= res!2188770 (not (nullable!4802 (reg!14772 (regTwo!29398 expr!117)))))))

(assert (=> b!5139210 (=> (not res!2188770) (not e!3205449))))

(declare-fun b!5139211 () Bool)

(declare-fun e!3205448 () Bool)

(assert (=> b!5139211 (= e!3205448 call!358652)))

(declare-fun b!5139212 () Bool)

(declare-fun e!3205450 () Bool)

(assert (=> b!5139212 (= e!3205450 e!3205448)))

(declare-fun res!2188772 () Bool)

(assert (=> b!5139212 (=> (not res!2188772) (not e!3205448))))

(declare-fun call!358651 () Bool)

(assert (=> b!5139212 (= res!2188772 call!358651)))

(declare-fun c!884962 () Bool)

(declare-fun c!884963 () Bool)

(declare-fun call!358650 () Bool)

(declare-fun bm!358645 () Bool)

(assert (=> bm!358645 (= call!358650 (validRegex!6298 (ite c!884962 (reg!14772 (regTwo!29398 expr!117)) (ite c!884963 (regTwo!29399 (regTwo!29398 expr!117)) (regTwo!29398 (regTwo!29398 expr!117))))))))

(declare-fun d!1662599 () Bool)

(declare-fun res!2188769 () Bool)

(declare-fun e!3205451 () Bool)

(assert (=> d!1662599 (=> res!2188769 e!3205451)))

(assert (=> d!1662599 (= res!2188769 ((_ is ElementMatch!14443) (regTwo!29398 expr!117)))))

(assert (=> d!1662599 (= (validRegex!6298 (regTwo!29398 expr!117)) e!3205451)))

(declare-fun b!5139213 () Bool)

(assert (=> b!5139213 (= e!3205451 e!3205452)))

(assert (=> b!5139213 (= c!884962 ((_ is Star!14443) (regTwo!29398 expr!117)))))

(declare-fun b!5139214 () Bool)

(assert (=> b!5139214 (= e!3205449 call!358650)))

(declare-fun b!5139215 () Bool)

(declare-fun res!2188771 () Bool)

(assert (=> b!5139215 (=> res!2188771 e!3205450)))

(assert (=> b!5139215 (= res!2188771 (not ((_ is Concat!23288) (regTwo!29398 expr!117))))))

(declare-fun e!3205453 () Bool)

(assert (=> b!5139215 (= e!3205453 e!3205450)))

(declare-fun bm!358646 () Bool)

(assert (=> bm!358646 (= call!358652 call!358650)))

(declare-fun b!5139216 () Bool)

(assert (=> b!5139216 (= e!3205452 e!3205453)))

(assert (=> b!5139216 (= c!884963 ((_ is Union!14443) (regTwo!29398 expr!117)))))

(declare-fun b!5139217 () Bool)

(declare-fun res!2188773 () Bool)

(assert (=> b!5139217 (=> (not res!2188773) (not e!3205454))))

(assert (=> b!5139217 (= res!2188773 call!358651)))

(assert (=> b!5139217 (= e!3205453 e!3205454)))

(declare-fun bm!358647 () Bool)

(assert (=> bm!358647 (= call!358651 (validRegex!6298 (ite c!884963 (regOne!29399 (regTwo!29398 expr!117)) (regOne!29398 (regTwo!29398 expr!117)))))))

(assert (= (and d!1662599 (not res!2188769)) b!5139213))

(assert (= (and b!5139213 c!884962) b!5139210))

(assert (= (and b!5139213 (not c!884962)) b!5139216))

(assert (= (and b!5139210 res!2188770) b!5139214))

(assert (= (and b!5139216 c!884963) b!5139217))

(assert (= (and b!5139216 (not c!884963)) b!5139215))

(assert (= (and b!5139217 res!2188773) b!5139209))

(assert (= (and b!5139215 (not res!2188771)) b!5139212))

(assert (= (and b!5139212 res!2188772) b!5139211))

(assert (= (or b!5139209 b!5139211) bm!358646))

(assert (= (or b!5139217 b!5139212) bm!358647))

(assert (= (or b!5139214 bm!358646) bm!358645))

(declare-fun m!6203820 () Bool)

(assert (=> b!5139210 m!6203820))

(declare-fun m!6203822 () Bool)

(assert (=> bm!358645 m!6203822))

(declare-fun m!6203824 () Bool)

(assert (=> bm!358647 m!6203824))

(assert (=> b!5138987 d!1662599))

(declare-fun d!1662601 () Bool)

(declare-fun lostCauseFct!342 (Regex!14443) Bool)

(assert (=> d!1662601 (= (lostCause!1438 (regOne!29398 expr!117)) (lostCauseFct!342 (regOne!29398 expr!117)))))

(declare-fun bs!1200635 () Bool)

(assert (= bs!1200635 d!1662601))

(declare-fun m!6203826 () Bool)

(assert (=> bs!1200635 m!6203826))

(assert (=> b!5138987 d!1662601))

(declare-fun d!1662603 () Bool)

(assert (=> d!1662603 (not (lostCause!1438 (regOne!29398 expr!117)))))

(declare-fun lt!2120212 () Unit!151069)

(declare-fun choose!38038 (Regex!14443) Unit!151069)

(assert (=> d!1662603 (= lt!2120212 (choose!38038 (regOne!29398 expr!117)))))

(assert (=> d!1662603 (validRegex!6298 (regOne!29398 expr!117))))

(assert (=> d!1662603 (= (lemmaNullableThenNotLostCause!66 (regOne!29398 expr!117)) lt!2120212)))

(declare-fun bs!1200636 () Bool)

(assert (= bs!1200636 d!1662603))

(assert (=> bs!1200636 m!6203654))

(declare-fun m!6203828 () Bool)

(assert (=> bs!1200636 m!6203828))

(assert (=> bs!1200636 m!6203660))

(assert (=> b!5138987 d!1662603))

(declare-fun d!1662605 () Bool)

(assert (=> d!1662605 (= (lostCause!1438 expr!117) (lostCauseFct!342 expr!117))))

(declare-fun bs!1200637 () Bool)

(assert (= bs!1200637 d!1662605))

(declare-fun m!6203830 () Bool)

(assert (=> bs!1200637 m!6203830))

(assert (=> b!5138991 d!1662605))

(declare-fun b!5139218 () Bool)

(declare-fun e!3205461 () Bool)

(declare-fun call!358655 () Bool)

(assert (=> b!5139218 (= e!3205461 call!358655)))

(declare-fun b!5139219 () Bool)

(declare-fun e!3205459 () Bool)

(declare-fun e!3205456 () Bool)

(assert (=> b!5139219 (= e!3205459 e!3205456)))

(declare-fun res!2188775 () Bool)

(assert (=> b!5139219 (= res!2188775 (not (nullable!4802 (reg!14772 expr!117))))))

(assert (=> b!5139219 (=> (not res!2188775) (not e!3205456))))

(declare-fun b!5139220 () Bool)

(declare-fun e!3205455 () Bool)

(assert (=> b!5139220 (= e!3205455 call!358655)))

(declare-fun b!5139221 () Bool)

(declare-fun e!3205457 () Bool)

(assert (=> b!5139221 (= e!3205457 e!3205455)))

(declare-fun res!2188777 () Bool)

(assert (=> b!5139221 (=> (not res!2188777) (not e!3205455))))

(declare-fun call!358654 () Bool)

(assert (=> b!5139221 (= res!2188777 call!358654)))

(declare-fun call!358653 () Bool)

(declare-fun c!884964 () Bool)

(declare-fun c!884965 () Bool)

(declare-fun bm!358648 () Bool)

(assert (=> bm!358648 (= call!358653 (validRegex!6298 (ite c!884964 (reg!14772 expr!117) (ite c!884965 (regTwo!29399 expr!117) (regTwo!29398 expr!117)))))))

(declare-fun d!1662607 () Bool)

(declare-fun res!2188774 () Bool)

(declare-fun e!3205458 () Bool)

(assert (=> d!1662607 (=> res!2188774 e!3205458)))

(assert (=> d!1662607 (= res!2188774 ((_ is ElementMatch!14443) expr!117))))

(assert (=> d!1662607 (= (validRegex!6298 expr!117) e!3205458)))

(declare-fun b!5139222 () Bool)

(assert (=> b!5139222 (= e!3205458 e!3205459)))

(assert (=> b!5139222 (= c!884964 ((_ is Star!14443) expr!117))))

(declare-fun b!5139223 () Bool)

(assert (=> b!5139223 (= e!3205456 call!358653)))

(declare-fun b!5139224 () Bool)

(declare-fun res!2188776 () Bool)

(assert (=> b!5139224 (=> res!2188776 e!3205457)))

(assert (=> b!5139224 (= res!2188776 (not ((_ is Concat!23288) expr!117)))))

(declare-fun e!3205460 () Bool)

(assert (=> b!5139224 (= e!3205460 e!3205457)))

(declare-fun bm!358649 () Bool)

(assert (=> bm!358649 (= call!358655 call!358653)))

(declare-fun b!5139225 () Bool)

(assert (=> b!5139225 (= e!3205459 e!3205460)))

(assert (=> b!5139225 (= c!884965 ((_ is Union!14443) expr!117))))

(declare-fun b!5139226 () Bool)

(declare-fun res!2188778 () Bool)

(assert (=> b!5139226 (=> (not res!2188778) (not e!3205461))))

(assert (=> b!5139226 (= res!2188778 call!358654)))

(assert (=> b!5139226 (= e!3205460 e!3205461)))

(declare-fun bm!358650 () Bool)

(assert (=> bm!358650 (= call!358654 (validRegex!6298 (ite c!884965 (regOne!29399 expr!117) (regOne!29398 expr!117))))))

(assert (= (and d!1662607 (not res!2188774)) b!5139222))

(assert (= (and b!5139222 c!884964) b!5139219))

(assert (= (and b!5139222 (not c!884964)) b!5139225))

(assert (= (and b!5139219 res!2188775) b!5139223))

(assert (= (and b!5139225 c!884965) b!5139226))

(assert (= (and b!5139225 (not c!884965)) b!5139224))

(assert (= (and b!5139226 res!2188778) b!5139218))

(assert (= (and b!5139224 (not res!2188776)) b!5139221))

(assert (= (and b!5139221 res!2188777) b!5139220))

(assert (= (or b!5139218 b!5139220) bm!358649))

(assert (= (or b!5139226 b!5139221) bm!358650))

(assert (= (or b!5139223 bm!358649) bm!358648))

(declare-fun m!6203832 () Bool)

(assert (=> b!5139219 m!6203832))

(declare-fun m!6203834 () Bool)

(assert (=> bm!358648 m!6203834))

(declare-fun m!6203836 () Bool)

(assert (=> bm!358650 m!6203836))

(assert (=> start!544140 d!1662607))

(declare-fun bs!1200638 () Bool)

(declare-fun d!1662609 () Bool)

(assert (= bs!1200638 (and d!1662609 d!1662549)))

(declare-fun lambda!256360 () Int)

(assert (=> bs!1200638 (not (= lambda!256360 lambda!256332))))

(declare-fun forall!13909 (List!59813 Int) Bool)

(assert (=> d!1662609 (= (inv!79288 ctx!100) (forall!13909 (exprs!4327 ctx!100) lambda!256360))))

(declare-fun bs!1200639 () Bool)

(assert (= bs!1200639 d!1662609))

(declare-fun m!6203838 () Bool)

(assert (=> bs!1200639 m!6203838))

(assert (=> start!544140 d!1662609))

(declare-fun b!5139237 () Bool)

(declare-fun e!3205464 () Bool)

(assert (=> b!5139237 (= e!3205464 tp_is_empty!38035)))

(assert (=> b!5138994 (= tp!1433387 e!3205464)))

(declare-fun b!5139239 () Bool)

(declare-fun tp!1433440 () Bool)

(assert (=> b!5139239 (= e!3205464 tp!1433440)))

(declare-fun b!5139240 () Bool)

(declare-fun tp!1433439 () Bool)

(declare-fun tp!1433441 () Bool)

(assert (=> b!5139240 (= e!3205464 (and tp!1433439 tp!1433441))))

(declare-fun b!5139238 () Bool)

(declare-fun tp!1433443 () Bool)

(declare-fun tp!1433442 () Bool)

(assert (=> b!5139238 (= e!3205464 (and tp!1433443 tp!1433442))))

(assert (= (and b!5138994 ((_ is ElementMatch!14443) (regOne!29398 expr!117))) b!5139237))

(assert (= (and b!5138994 ((_ is Concat!23288) (regOne!29398 expr!117))) b!5139238))

(assert (= (and b!5138994 ((_ is Star!14443) (regOne!29398 expr!117))) b!5139239))

(assert (= (and b!5138994 ((_ is Union!14443) (regOne!29398 expr!117))) b!5139240))

(declare-fun b!5139241 () Bool)

(declare-fun e!3205465 () Bool)

(assert (=> b!5139241 (= e!3205465 tp_is_empty!38035)))

(assert (=> b!5138994 (= tp!1433386 e!3205465)))

(declare-fun b!5139243 () Bool)

(declare-fun tp!1433445 () Bool)

(assert (=> b!5139243 (= e!3205465 tp!1433445)))

(declare-fun b!5139244 () Bool)

(declare-fun tp!1433444 () Bool)

(declare-fun tp!1433446 () Bool)

(assert (=> b!5139244 (= e!3205465 (and tp!1433444 tp!1433446))))

(declare-fun b!5139242 () Bool)

(declare-fun tp!1433448 () Bool)

(declare-fun tp!1433447 () Bool)

(assert (=> b!5139242 (= e!3205465 (and tp!1433448 tp!1433447))))

(assert (= (and b!5138994 ((_ is ElementMatch!14443) (regTwo!29398 expr!117))) b!5139241))

(assert (= (and b!5138994 ((_ is Concat!23288) (regTwo!29398 expr!117))) b!5139242))

(assert (= (and b!5138994 ((_ is Star!14443) (regTwo!29398 expr!117))) b!5139243))

(assert (= (and b!5138994 ((_ is Union!14443) (regTwo!29398 expr!117))) b!5139244))

(declare-fun b!5139249 () Bool)

(declare-fun e!3205468 () Bool)

(declare-fun tp!1433453 () Bool)

(declare-fun tp!1433454 () Bool)

(assert (=> b!5139249 (= e!3205468 (and tp!1433453 tp!1433454))))

(assert (=> b!5138997 (= tp!1433383 e!3205468)))

(assert (= (and b!5138997 ((_ is Cons!59689) (exprs!4327 ctx!100))) b!5139249))

(declare-fun b!5139250 () Bool)

(declare-fun e!3205469 () Bool)

(assert (=> b!5139250 (= e!3205469 tp_is_empty!38035)))

(assert (=> b!5138996 (= tp!1433385 e!3205469)))

(declare-fun b!5139252 () Bool)

(declare-fun tp!1433456 () Bool)

(assert (=> b!5139252 (= e!3205469 tp!1433456)))

(declare-fun b!5139253 () Bool)

(declare-fun tp!1433455 () Bool)

(declare-fun tp!1433457 () Bool)

(assert (=> b!5139253 (= e!3205469 (and tp!1433455 tp!1433457))))

(declare-fun b!5139251 () Bool)

(declare-fun tp!1433459 () Bool)

(declare-fun tp!1433458 () Bool)

(assert (=> b!5139251 (= e!3205469 (and tp!1433459 tp!1433458))))

(assert (= (and b!5138996 ((_ is ElementMatch!14443) (regOne!29399 expr!117))) b!5139250))

(assert (= (and b!5138996 ((_ is Concat!23288) (regOne!29399 expr!117))) b!5139251))

(assert (= (and b!5138996 ((_ is Star!14443) (regOne!29399 expr!117))) b!5139252))

(assert (= (and b!5138996 ((_ is Union!14443) (regOne!29399 expr!117))) b!5139253))

(declare-fun b!5139254 () Bool)

(declare-fun e!3205470 () Bool)

(assert (=> b!5139254 (= e!3205470 tp_is_empty!38035)))

(assert (=> b!5138996 (= tp!1433384 e!3205470)))

(declare-fun b!5139256 () Bool)

(declare-fun tp!1433461 () Bool)

(assert (=> b!5139256 (= e!3205470 tp!1433461)))

(declare-fun b!5139257 () Bool)

(declare-fun tp!1433460 () Bool)

(declare-fun tp!1433462 () Bool)

(assert (=> b!5139257 (= e!3205470 (and tp!1433460 tp!1433462))))

(declare-fun b!5139255 () Bool)

(declare-fun tp!1433464 () Bool)

(declare-fun tp!1433463 () Bool)

(assert (=> b!5139255 (= e!3205470 (and tp!1433464 tp!1433463))))

(assert (= (and b!5138996 ((_ is ElementMatch!14443) (regTwo!29399 expr!117))) b!5139254))

(assert (= (and b!5138996 ((_ is Concat!23288) (regTwo!29399 expr!117))) b!5139255))

(assert (= (and b!5138996 ((_ is Star!14443) (regTwo!29399 expr!117))) b!5139256))

(assert (= (and b!5138996 ((_ is Union!14443) (regTwo!29399 expr!117))) b!5139257))

(declare-fun b!5139258 () Bool)

(declare-fun e!3205471 () Bool)

(assert (=> b!5139258 (= e!3205471 tp_is_empty!38035)))

(assert (=> b!5138995 (= tp!1433382 e!3205471)))

(declare-fun b!5139260 () Bool)

(declare-fun tp!1433466 () Bool)

(assert (=> b!5139260 (= e!3205471 tp!1433466)))

(declare-fun b!5139261 () Bool)

(declare-fun tp!1433465 () Bool)

(declare-fun tp!1433467 () Bool)

(assert (=> b!5139261 (= e!3205471 (and tp!1433465 tp!1433467))))

(declare-fun b!5139259 () Bool)

(declare-fun tp!1433469 () Bool)

(declare-fun tp!1433468 () Bool)

(assert (=> b!5139259 (= e!3205471 (and tp!1433469 tp!1433468))))

(assert (= (and b!5138995 ((_ is ElementMatch!14443) (reg!14772 expr!117))) b!5139258))

(assert (= (and b!5138995 ((_ is Concat!23288) (reg!14772 expr!117))) b!5139259))

(assert (= (and b!5138995 ((_ is Star!14443) (reg!14772 expr!117))) b!5139260))

(assert (= (and b!5138995 ((_ is Union!14443) (reg!14772 expr!117))) b!5139261))

(check-sat (not d!1662595) (not d!1662601) (not bm!358627) (not bm!358638) (not b!5139242) (not b!5139168) (not bm!358641) (not b!5139188) (not b!5139155) (not b!5139259) (not bm!358645) (not b!5139167) (not b!5139240) (not b!5139210) (not d!1662605) (not bm!358626) (not bm!358634) (not b!5139219) (not b!5139256) (not b!5139238) (not b!5139255) (not d!1662549) (not b!5139208) (not bm!358644) (not b!5139199) (not d!1662589) (not bm!358650) (not b!5139253) tp_is_empty!38035 (not b!5139249) (not bm!358617) (not b!5139239) (not b!5139252) (not b!5139207) (not bm!358643) (not bm!358620) (not b!5139244) (not b!5139251) (not bm!358642) (not d!1662609) (not d!1662585) (not b!5139257) (not d!1662603) (not bm!358636) (not b!5139243) (not bm!358647) (not d!1662567) (not d!1662593) (not bm!358621) (not b!5139261) (not b!5139260) (not bm!358648))
(check-sat)
