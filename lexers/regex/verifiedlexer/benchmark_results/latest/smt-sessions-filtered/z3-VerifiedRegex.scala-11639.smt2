; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!650872 () Bool)

(assert start!650872)

(declare-fun b!6710875 () Bool)

(declare-fun e!4055823 () Bool)

(declare-fun tp_is_empty!42303 () Bool)

(declare-fun tp!1839151 () Bool)

(assert (=> b!6710875 (= e!4055823 (and tp_is_empty!42303 tp!1839151))))

(declare-fun b!6710876 () Bool)

(declare-fun res!2746242 () Bool)

(declare-fun e!4055824 () Bool)

(assert (=> b!6710876 (=> res!2746242 e!4055824)))

(declare-datatypes ((C!33320 0))(
  ( (C!33321 (val!26362 Int)) )
))
(declare-datatypes ((Regex!16525 0))(
  ( (ElementMatch!16525 (c!1244347 C!33320)) (Concat!25370 (regOne!33562 Regex!16525) (regTwo!33562 Regex!16525)) (EmptyExpr!16525) (Star!16525 (reg!16854 Regex!16525)) (EmptyLang!16525) (Union!16525 (regOne!33563 Regex!16525) (regTwo!33563 Regex!16525)) )
))
(declare-fun r!7292 () Regex!16525)

(declare-datatypes ((List!65874 0))(
  ( (Nil!65750) (Cons!65750 (h!72198 Regex!16525) (t!379551 List!65874)) )
))
(declare-datatypes ((Context!11818 0))(
  ( (Context!11819 (exprs!6409 List!65874)) )
))
(declare-datatypes ((List!65875 0))(
  ( (Nil!65751) (Cons!65751 (h!72199 Context!11818) (t!379552 List!65875)) )
))
(declare-fun zl!343 () List!65875)

(declare-fun generalisedConcat!2122 (List!65874) Regex!16525)

(assert (=> b!6710876 (= res!2746242 (not (= r!7292 (generalisedConcat!2122 (exprs!6409 (h!72199 zl!343))))))))

(declare-fun tp!1839152 () Bool)

(declare-fun e!4055820 () Bool)

(declare-fun setRes!45687 () Bool)

(declare-fun setNonEmpty!45687 () Bool)

(declare-fun setElem!45687 () Context!11818)

(declare-fun inv!84559 (Context!11818) Bool)

(assert (=> setNonEmpty!45687 (= setRes!45687 (and tp!1839152 (inv!84559 setElem!45687) e!4055820))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11818))

(declare-fun setRest!45687 () (InoxSet Context!11818))

(assert (=> setNonEmpty!45687 (= z!1189 ((_ map or) (store ((as const (Array Context!11818 Bool)) false) setElem!45687 true) setRest!45687))))

(declare-fun setIsEmpty!45687 () Bool)

(assert (=> setIsEmpty!45687 setRes!45687))

(declare-fun b!6710877 () Bool)

(declare-fun res!2746243 () Bool)

(declare-fun e!4055826 () Bool)

(assert (=> b!6710877 (=> (not res!2746243) (not e!4055826))))

(declare-fun toList!10309 ((InoxSet Context!11818)) List!65875)

(assert (=> b!6710877 (= res!2746243 (= (toList!10309 z!1189) zl!343))))

(declare-fun b!6710878 () Bool)

(declare-fun res!2746237 () Bool)

(assert (=> b!6710878 (=> res!2746237 e!4055824)))

(get-info :version)

(assert (=> b!6710878 (= res!2746237 (not ((_ is Cons!65750) (exprs!6409 (h!72199 zl!343)))))))

(declare-fun b!6710879 () Bool)

(declare-fun e!4055822 () Bool)

(declare-fun tp!1839156 () Bool)

(assert (=> b!6710879 (= e!4055822 tp!1839156)))

(declare-fun b!6710880 () Bool)

(declare-fun e!4055821 () Bool)

(declare-fun tp!1839150 () Bool)

(declare-fun tp!1839149 () Bool)

(assert (=> b!6710880 (= e!4055821 (and tp!1839150 tp!1839149))))

(declare-fun b!6710881 () Bool)

(declare-fun res!2746236 () Bool)

(assert (=> b!6710881 (=> res!2746236 e!4055824)))

(declare-fun isEmpty!38070 (List!65875) Bool)

(assert (=> b!6710881 (= res!2746236 (not (isEmpty!38070 (t!379552 zl!343))))))

(declare-fun b!6710882 () Bool)

(declare-fun e!4055825 () Bool)

(declare-fun tp!1839155 () Bool)

(assert (=> b!6710882 (= e!4055825 (and (inv!84559 (h!72199 zl!343)) e!4055822 tp!1839155))))

(declare-fun b!6710883 () Bool)

(declare-fun validRegex!8261 (Regex!16525) Bool)

(assert (=> b!6710883 (= e!4055824 (validRegex!8261 (reg!16854 r!7292)))))

(declare-fun b!6710884 () Bool)

(declare-fun res!2746244 () Bool)

(assert (=> b!6710884 (=> res!2746244 e!4055824)))

(declare-fun generalisedUnion!2369 (List!65874) Regex!16525)

(declare-fun unfocusZipperList!1946 (List!65875) List!65874)

(assert (=> b!6710884 (= res!2746244 (not (= r!7292 (generalisedUnion!2369 (unfocusZipperList!1946 zl!343)))))))

(declare-fun b!6710886 () Bool)

(declare-fun tp!1839148 () Bool)

(assert (=> b!6710886 (= e!4055821 tp!1839148)))

(declare-fun b!6710887 () Bool)

(declare-fun res!2746240 () Bool)

(assert (=> b!6710887 (=> (not res!2746240) (not e!4055826))))

(declare-fun unfocusZipper!2267 (List!65875) Regex!16525)

(assert (=> b!6710887 (= res!2746240 (= r!7292 (unfocusZipper!2267 zl!343)))))

(declare-fun b!6710888 () Bool)

(declare-fun tp!1839153 () Bool)

(assert (=> b!6710888 (= e!4055820 tp!1839153)))

(declare-fun b!6710889 () Bool)

(assert (=> b!6710889 (= e!4055826 (not e!4055824))))

(declare-fun res!2746238 () Bool)

(assert (=> b!6710889 (=> res!2746238 e!4055824)))

(assert (=> b!6710889 (= res!2746238 (not ((_ is Cons!65751) zl!343)))))

(declare-datatypes ((List!65876 0))(
  ( (Nil!65752) (Cons!65752 (h!72200 C!33320) (t!379553 List!65876)) )
))
(declare-fun s!2326 () List!65876)

(declare-fun matchR!8708 (Regex!16525 List!65876) Bool)

(declare-fun matchRSpec!3626 (Regex!16525 List!65876) Bool)

(assert (=> b!6710889 (= (matchR!8708 r!7292 s!2326) (matchRSpec!3626 r!7292 s!2326))))

(declare-datatypes ((Unit!159741 0))(
  ( (Unit!159742) )
))
(declare-fun lt!2435636 () Unit!159741)

(declare-fun mainMatchTheorem!3626 (Regex!16525 List!65876) Unit!159741)

(assert (=> b!6710889 (= lt!2435636 (mainMatchTheorem!3626 r!7292 s!2326))))

(declare-fun b!6710890 () Bool)

(declare-fun tp!1839154 () Bool)

(declare-fun tp!1839157 () Bool)

(assert (=> b!6710890 (= e!4055821 (and tp!1839154 tp!1839157))))

(declare-fun b!6710891 () Bool)

(declare-fun res!2746241 () Bool)

(assert (=> b!6710891 (=> res!2746241 e!4055824)))

(assert (=> b!6710891 (= res!2746241 (or ((_ is EmptyExpr!16525) r!7292) ((_ is EmptyLang!16525) r!7292) ((_ is ElementMatch!16525) r!7292) ((_ is Union!16525) r!7292) ((_ is Concat!25370) r!7292)))))

(declare-fun b!6710885 () Bool)

(assert (=> b!6710885 (= e!4055821 tp_is_empty!42303)))

(declare-fun res!2746239 () Bool)

(assert (=> start!650872 (=> (not res!2746239) (not e!4055826))))

(assert (=> start!650872 (= res!2746239 (validRegex!8261 r!7292))))

(assert (=> start!650872 e!4055826))

(assert (=> start!650872 e!4055821))

(declare-fun condSetEmpty!45687 () Bool)

(assert (=> start!650872 (= condSetEmpty!45687 (= z!1189 ((as const (Array Context!11818 Bool)) false)))))

(assert (=> start!650872 setRes!45687))

(assert (=> start!650872 e!4055825))

(assert (=> start!650872 e!4055823))

(assert (= (and start!650872 res!2746239) b!6710877))

(assert (= (and b!6710877 res!2746243) b!6710887))

(assert (= (and b!6710887 res!2746240) b!6710889))

(assert (= (and b!6710889 (not res!2746238)) b!6710881))

(assert (= (and b!6710881 (not res!2746236)) b!6710876))

(assert (= (and b!6710876 (not res!2746242)) b!6710878))

(assert (= (and b!6710878 (not res!2746237)) b!6710884))

(assert (= (and b!6710884 (not res!2746244)) b!6710891))

(assert (= (and b!6710891 (not res!2746241)) b!6710883))

(assert (= (and start!650872 ((_ is ElementMatch!16525) r!7292)) b!6710885))

(assert (= (and start!650872 ((_ is Concat!25370) r!7292)) b!6710890))

(assert (= (and start!650872 ((_ is Star!16525) r!7292)) b!6710886))

(assert (= (and start!650872 ((_ is Union!16525) r!7292)) b!6710880))

(assert (= (and start!650872 condSetEmpty!45687) setIsEmpty!45687))

(assert (= (and start!650872 (not condSetEmpty!45687)) setNonEmpty!45687))

(assert (= setNonEmpty!45687 b!6710888))

(assert (= b!6710882 b!6710879))

(assert (= (and start!650872 ((_ is Cons!65751) zl!343)) b!6710882))

(assert (= (and start!650872 ((_ is Cons!65752) s!2326)) b!6710875))

(declare-fun m!7477062 () Bool)

(assert (=> start!650872 m!7477062))

(declare-fun m!7477064 () Bool)

(assert (=> b!6710884 m!7477064))

(assert (=> b!6710884 m!7477064))

(declare-fun m!7477066 () Bool)

(assert (=> b!6710884 m!7477066))

(declare-fun m!7477068 () Bool)

(assert (=> setNonEmpty!45687 m!7477068))

(declare-fun m!7477070 () Bool)

(assert (=> b!6710883 m!7477070))

(declare-fun m!7477072 () Bool)

(assert (=> b!6710889 m!7477072))

(declare-fun m!7477074 () Bool)

(assert (=> b!6710889 m!7477074))

(declare-fun m!7477076 () Bool)

(assert (=> b!6710889 m!7477076))

(declare-fun m!7477078 () Bool)

(assert (=> b!6710876 m!7477078))

(declare-fun m!7477080 () Bool)

(assert (=> b!6710882 m!7477080))

(declare-fun m!7477082 () Bool)

(assert (=> b!6710881 m!7477082))

(declare-fun m!7477084 () Bool)

(assert (=> b!6710887 m!7477084))

(declare-fun m!7477086 () Bool)

(assert (=> b!6710877 m!7477086))

(check-sat (not b!6710877) (not b!6710879) (not b!6710886) (not b!6710881) (not b!6710880) (not setNonEmpty!45687) tp_is_empty!42303 (not b!6710876) (not b!6710890) (not b!6710883) (not b!6710887) (not start!650872) (not b!6710888) (not b!6710882) (not b!6710884) (not b!6710875) (not b!6710889))
(check-sat)
(get-model)

(declare-fun b!6711017 () Bool)

(declare-fun e!4055912 () Regex!16525)

(assert (=> b!6711017 (= e!4055912 EmptyExpr!16525)))

(declare-fun b!6711018 () Bool)

(declare-fun e!4055910 () Bool)

(declare-fun e!4055911 () Bool)

(assert (=> b!6711018 (= e!4055910 e!4055911)))

(declare-fun c!1244394 () Bool)

(declare-fun isEmpty!38072 (List!65874) Bool)

(declare-fun tail!12577 (List!65874) List!65874)

(assert (=> b!6711018 (= c!1244394 (isEmpty!38072 (tail!12577 (exprs!6409 (h!72199 zl!343)))))))

(declare-fun b!6711019 () Bool)

(assert (=> b!6711019 (= e!4055912 (Concat!25370 (h!72198 (exprs!6409 (h!72199 zl!343))) (generalisedConcat!2122 (t!379551 (exprs!6409 (h!72199 zl!343))))))))

(declare-fun b!6711020 () Bool)

(declare-fun e!4055909 () Regex!16525)

(assert (=> b!6711020 (= e!4055909 e!4055912)))

(declare-fun c!1244393 () Bool)

(assert (=> b!6711020 (= c!1244393 ((_ is Cons!65750) (exprs!6409 (h!72199 zl!343))))))

(declare-fun b!6711021 () Bool)

(declare-fun lt!2435651 () Regex!16525)

(declare-fun isConcat!1422 (Regex!16525) Bool)

(assert (=> b!6711021 (= e!4055911 (isConcat!1422 lt!2435651))))

(declare-fun b!6711022 () Bool)

(declare-fun e!4055913 () Bool)

(assert (=> b!6711022 (= e!4055913 (isEmpty!38072 (t!379551 (exprs!6409 (h!72199 zl!343)))))))

(declare-fun d!2110240 () Bool)

(declare-fun e!4055914 () Bool)

(assert (=> d!2110240 e!4055914))

(declare-fun res!2746284 () Bool)

(assert (=> d!2110240 (=> (not res!2746284) (not e!4055914))))

(assert (=> d!2110240 (= res!2746284 (validRegex!8261 lt!2435651))))

(assert (=> d!2110240 (= lt!2435651 e!4055909)))

(declare-fun c!1244392 () Bool)

(assert (=> d!2110240 (= c!1244392 e!4055913)))

(declare-fun res!2746285 () Bool)

(assert (=> d!2110240 (=> (not res!2746285) (not e!4055913))))

(assert (=> d!2110240 (= res!2746285 ((_ is Cons!65750) (exprs!6409 (h!72199 zl!343))))))

(declare-fun lambda!376151 () Int)

(declare-fun forall!15733 (List!65874 Int) Bool)

(assert (=> d!2110240 (forall!15733 (exprs!6409 (h!72199 zl!343)) lambda!376151)))

(assert (=> d!2110240 (= (generalisedConcat!2122 (exprs!6409 (h!72199 zl!343))) lt!2435651)))

(declare-fun b!6711023 () Bool)

(assert (=> b!6711023 (= e!4055909 (h!72198 (exprs!6409 (h!72199 zl!343))))))

(declare-fun b!6711024 () Bool)

(declare-fun isEmptyExpr!1899 (Regex!16525) Bool)

(assert (=> b!6711024 (= e!4055910 (isEmptyExpr!1899 lt!2435651))))

(declare-fun b!6711025 () Bool)

(assert (=> b!6711025 (= e!4055914 e!4055910)))

(declare-fun c!1244391 () Bool)

(assert (=> b!6711025 (= c!1244391 (isEmpty!38072 (exprs!6409 (h!72199 zl!343))))))

(declare-fun b!6711026 () Bool)

(declare-fun head!13492 (List!65874) Regex!16525)

(assert (=> b!6711026 (= e!4055911 (= lt!2435651 (head!13492 (exprs!6409 (h!72199 zl!343)))))))

(assert (= (and d!2110240 res!2746285) b!6711022))

(assert (= (and d!2110240 c!1244392) b!6711023))

(assert (= (and d!2110240 (not c!1244392)) b!6711020))

(assert (= (and b!6711020 c!1244393) b!6711019))

(assert (= (and b!6711020 (not c!1244393)) b!6711017))

(assert (= (and d!2110240 res!2746284) b!6711025))

(assert (= (and b!6711025 c!1244391) b!6711024))

(assert (= (and b!6711025 (not c!1244391)) b!6711018))

(assert (= (and b!6711018 c!1244394) b!6711026))

(assert (= (and b!6711018 (not c!1244394)) b!6711021))

(declare-fun m!7477154 () Bool)

(assert (=> b!6711025 m!7477154))

(declare-fun m!7477156 () Bool)

(assert (=> d!2110240 m!7477156))

(declare-fun m!7477158 () Bool)

(assert (=> d!2110240 m!7477158))

(declare-fun m!7477160 () Bool)

(assert (=> b!6711019 m!7477160))

(declare-fun m!7477162 () Bool)

(assert (=> b!6711022 m!7477162))

(declare-fun m!7477164 () Bool)

(assert (=> b!6711018 m!7477164))

(assert (=> b!6711018 m!7477164))

(declare-fun m!7477166 () Bool)

(assert (=> b!6711018 m!7477166))

(declare-fun m!7477168 () Bool)

(assert (=> b!6711024 m!7477168))

(declare-fun m!7477170 () Bool)

(assert (=> b!6711026 m!7477170))

(declare-fun m!7477172 () Bool)

(assert (=> b!6711021 m!7477172))

(assert (=> b!6710876 d!2110240))

(declare-fun d!2110260 () Bool)

(assert (=> d!2110260 (= (isEmpty!38070 (t!379552 zl!343)) ((_ is Nil!65751) (t!379552 zl!343)))))

(assert (=> b!6710881 d!2110260))

(declare-fun bs!1786526 () Bool)

(declare-fun d!2110262 () Bool)

(assert (= bs!1786526 (and d!2110262 d!2110240)))

(declare-fun lambda!376154 () Int)

(assert (=> bs!1786526 (= lambda!376154 lambda!376151)))

(assert (=> d!2110262 (= (inv!84559 setElem!45687) (forall!15733 (exprs!6409 setElem!45687) lambda!376154))))

(declare-fun bs!1786527 () Bool)

(assert (= bs!1786527 d!2110262))

(declare-fun m!7477174 () Bool)

(assert (=> bs!1786527 m!7477174))

(assert (=> setNonEmpty!45687 d!2110262))

(declare-fun d!2110264 () Bool)

(declare-fun e!4055931 () Bool)

(assert (=> d!2110264 e!4055931))

(declare-fun res!2746304 () Bool)

(assert (=> d!2110264 (=> (not res!2746304) (not e!4055931))))

(declare-fun lt!2435656 () List!65875)

(declare-fun noDuplicate!2325 (List!65875) Bool)

(assert (=> d!2110264 (= res!2746304 (noDuplicate!2325 lt!2435656))))

(declare-fun choose!49988 ((InoxSet Context!11818)) List!65875)

(assert (=> d!2110264 (= lt!2435656 (choose!49988 z!1189))))

(assert (=> d!2110264 (= (toList!10309 z!1189) lt!2435656)))

(declare-fun b!6711057 () Bool)

(declare-fun content!12744 (List!65875) (InoxSet Context!11818))

(assert (=> b!6711057 (= e!4055931 (= (content!12744 lt!2435656) z!1189))))

(assert (= (and d!2110264 res!2746304) b!6711057))

(declare-fun m!7477176 () Bool)

(assert (=> d!2110264 m!7477176))

(declare-fun m!7477178 () Bool)

(assert (=> d!2110264 m!7477178))

(declare-fun m!7477180 () Bool)

(assert (=> b!6711057 m!7477180))

(assert (=> b!6710877 d!2110264))

(declare-fun bs!1786528 () Bool)

(declare-fun d!2110266 () Bool)

(assert (= bs!1786528 (and d!2110266 d!2110240)))

(declare-fun lambda!376155 () Int)

(assert (=> bs!1786528 (= lambda!376155 lambda!376151)))

(declare-fun bs!1786529 () Bool)

(assert (= bs!1786529 (and d!2110266 d!2110262)))

(assert (=> bs!1786529 (= lambda!376155 lambda!376154)))

(assert (=> d!2110266 (= (inv!84559 (h!72199 zl!343)) (forall!15733 (exprs!6409 (h!72199 zl!343)) lambda!376155))))

(declare-fun bs!1786530 () Bool)

(assert (= bs!1786530 d!2110266))

(declare-fun m!7477182 () Bool)

(assert (=> bs!1786530 m!7477182))

(assert (=> b!6710882 d!2110266))

(declare-fun d!2110268 () Bool)

(declare-fun lt!2435660 () Regex!16525)

(assert (=> d!2110268 (validRegex!8261 lt!2435660)))

(assert (=> d!2110268 (= lt!2435660 (generalisedUnion!2369 (unfocusZipperList!1946 zl!343)))))

(assert (=> d!2110268 (= (unfocusZipper!2267 zl!343) lt!2435660)))

(declare-fun bs!1786531 () Bool)

(assert (= bs!1786531 d!2110268))

(declare-fun m!7477198 () Bool)

(assert (=> bs!1786531 m!7477198))

(assert (=> bs!1786531 m!7477064))

(assert (=> bs!1786531 m!7477064))

(assert (=> bs!1786531 m!7477066))

(assert (=> b!6710887 d!2110268))

(declare-fun bs!1786532 () Bool)

(declare-fun d!2110272 () Bool)

(assert (= bs!1786532 (and d!2110272 d!2110240)))

(declare-fun lambda!376160 () Int)

(assert (=> bs!1786532 (= lambda!376160 lambda!376151)))

(declare-fun bs!1786533 () Bool)

(assert (= bs!1786533 (and d!2110272 d!2110262)))

(assert (=> bs!1786533 (= lambda!376160 lambda!376154)))

(declare-fun bs!1786534 () Bool)

(assert (= bs!1786534 (and d!2110272 d!2110266)))

(assert (=> bs!1786534 (= lambda!376160 lambda!376155)))

(declare-fun b!6711120 () Bool)

(declare-fun e!4055972 () Bool)

(declare-fun e!4055969 () Bool)

(assert (=> b!6711120 (= e!4055972 e!4055969)))

(declare-fun c!1244422 () Bool)

(assert (=> b!6711120 (= c!1244422 (isEmpty!38072 (unfocusZipperList!1946 zl!343)))))

(declare-fun b!6711121 () Bool)

(declare-fun e!4055968 () Regex!16525)

(declare-fun e!4055970 () Regex!16525)

(assert (=> b!6711121 (= e!4055968 e!4055970)))

(declare-fun c!1244423 () Bool)

(assert (=> b!6711121 (= c!1244423 ((_ is Cons!65750) (unfocusZipperList!1946 zl!343)))))

(declare-fun b!6711122 () Bool)

(assert (=> b!6711122 (= e!4055968 (h!72198 (unfocusZipperList!1946 zl!343)))))

(declare-fun b!6711123 () Bool)

(declare-fun e!4055971 () Bool)

(assert (=> b!6711123 (= e!4055969 e!4055971)))

(declare-fun c!1244420 () Bool)

(assert (=> b!6711123 (= c!1244420 (isEmpty!38072 (tail!12577 (unfocusZipperList!1946 zl!343))))))

(declare-fun b!6711124 () Bool)

(declare-fun e!4055967 () Bool)

(assert (=> b!6711124 (= e!4055967 (isEmpty!38072 (t!379551 (unfocusZipperList!1946 zl!343))))))

(assert (=> d!2110272 e!4055972))

(declare-fun res!2746330 () Bool)

(assert (=> d!2110272 (=> (not res!2746330) (not e!4055972))))

(declare-fun lt!2435663 () Regex!16525)

(assert (=> d!2110272 (= res!2746330 (validRegex!8261 lt!2435663))))

(assert (=> d!2110272 (= lt!2435663 e!4055968)))

(declare-fun c!1244421 () Bool)

(assert (=> d!2110272 (= c!1244421 e!4055967)))

(declare-fun res!2746329 () Bool)

(assert (=> d!2110272 (=> (not res!2746329) (not e!4055967))))

(assert (=> d!2110272 (= res!2746329 ((_ is Cons!65750) (unfocusZipperList!1946 zl!343)))))

(assert (=> d!2110272 (forall!15733 (unfocusZipperList!1946 zl!343) lambda!376160)))

(assert (=> d!2110272 (= (generalisedUnion!2369 (unfocusZipperList!1946 zl!343)) lt!2435663)))

(declare-fun b!6711125 () Bool)

(assert (=> b!6711125 (= e!4055970 (Union!16525 (h!72198 (unfocusZipperList!1946 zl!343)) (generalisedUnion!2369 (t!379551 (unfocusZipperList!1946 zl!343)))))))

(declare-fun b!6711126 () Bool)

(assert (=> b!6711126 (= e!4055971 (= lt!2435663 (head!13492 (unfocusZipperList!1946 zl!343))))))

(declare-fun b!6711127 () Bool)

(declare-fun isUnion!1337 (Regex!16525) Bool)

(assert (=> b!6711127 (= e!4055971 (isUnion!1337 lt!2435663))))

(declare-fun b!6711128 () Bool)

(declare-fun isEmptyLang!1907 (Regex!16525) Bool)

(assert (=> b!6711128 (= e!4055969 (isEmptyLang!1907 lt!2435663))))

(declare-fun b!6711129 () Bool)

(assert (=> b!6711129 (= e!4055970 EmptyLang!16525)))

(assert (= (and d!2110272 res!2746329) b!6711124))

(assert (= (and d!2110272 c!1244421) b!6711122))

(assert (= (and d!2110272 (not c!1244421)) b!6711121))

(assert (= (and b!6711121 c!1244423) b!6711125))

(assert (= (and b!6711121 (not c!1244423)) b!6711129))

(assert (= (and d!2110272 res!2746330) b!6711120))

(assert (= (and b!6711120 c!1244422) b!6711128))

(assert (= (and b!6711120 (not c!1244422)) b!6711123))

(assert (= (and b!6711123 c!1244420) b!6711126))

(assert (= (and b!6711123 (not c!1244420)) b!6711127))

(assert (=> b!6711123 m!7477064))

(declare-fun m!7477200 () Bool)

(assert (=> b!6711123 m!7477200))

(assert (=> b!6711123 m!7477200))

(declare-fun m!7477202 () Bool)

(assert (=> b!6711123 m!7477202))

(declare-fun m!7477204 () Bool)

(assert (=> b!6711125 m!7477204))

(declare-fun m!7477206 () Bool)

(assert (=> d!2110272 m!7477206))

(assert (=> d!2110272 m!7477064))

(declare-fun m!7477208 () Bool)

(assert (=> d!2110272 m!7477208))

(declare-fun m!7477210 () Bool)

(assert (=> b!6711128 m!7477210))

(assert (=> b!6711120 m!7477064))

(declare-fun m!7477212 () Bool)

(assert (=> b!6711120 m!7477212))

(assert (=> b!6711126 m!7477064))

(declare-fun m!7477214 () Bool)

(assert (=> b!6711126 m!7477214))

(declare-fun m!7477216 () Bool)

(assert (=> b!6711127 m!7477216))

(declare-fun m!7477218 () Bool)

(assert (=> b!6711124 m!7477218))

(assert (=> b!6710884 d!2110272))

(declare-fun bs!1786535 () Bool)

(declare-fun d!2110274 () Bool)

(assert (= bs!1786535 (and d!2110274 d!2110240)))

(declare-fun lambda!376165 () Int)

(assert (=> bs!1786535 (= lambda!376165 lambda!376151)))

(declare-fun bs!1786536 () Bool)

(assert (= bs!1786536 (and d!2110274 d!2110262)))

(assert (=> bs!1786536 (= lambda!376165 lambda!376154)))

(declare-fun bs!1786537 () Bool)

(assert (= bs!1786537 (and d!2110274 d!2110266)))

(assert (=> bs!1786537 (= lambda!376165 lambda!376155)))

(declare-fun bs!1786538 () Bool)

(assert (= bs!1786538 (and d!2110274 d!2110272)))

(assert (=> bs!1786538 (= lambda!376165 lambda!376160)))

(declare-fun lt!2435666 () List!65874)

(assert (=> d!2110274 (forall!15733 lt!2435666 lambda!376165)))

(declare-fun e!4055977 () List!65874)

(assert (=> d!2110274 (= lt!2435666 e!4055977)))

(declare-fun c!1244426 () Bool)

(assert (=> d!2110274 (= c!1244426 ((_ is Cons!65751) zl!343))))

(assert (=> d!2110274 (= (unfocusZipperList!1946 zl!343) lt!2435666)))

(declare-fun b!6711138 () Bool)

(assert (=> b!6711138 (= e!4055977 (Cons!65750 (generalisedConcat!2122 (exprs!6409 (h!72199 zl!343))) (unfocusZipperList!1946 (t!379552 zl!343))))))

(declare-fun b!6711139 () Bool)

(assert (=> b!6711139 (= e!4055977 Nil!65750)))

(assert (= (and d!2110274 c!1244426) b!6711138))

(assert (= (and d!2110274 (not c!1244426)) b!6711139))

(declare-fun m!7477220 () Bool)

(assert (=> d!2110274 m!7477220))

(assert (=> b!6711138 m!7477078))

(declare-fun m!7477222 () Bool)

(assert (=> b!6711138 m!7477222))

(assert (=> b!6710884 d!2110274))

(declare-fun b!6711213 () Bool)

(declare-fun res!2746360 () Bool)

(declare-fun e!4056016 () Bool)

(assert (=> b!6711213 (=> res!2746360 e!4056016)))

(declare-fun e!4056017 () Bool)

(assert (=> b!6711213 (= res!2746360 e!4056017)))

(declare-fun res!2746358 () Bool)

(assert (=> b!6711213 (=> (not res!2746358) (not e!4056017))))

(declare-fun lt!2435675 () Bool)

(assert (=> b!6711213 (= res!2746358 lt!2435675)))

(declare-fun b!6711214 () Bool)

(declare-fun e!4056012 () Bool)

(declare-fun derivativeStep!5205 (Regex!16525 C!33320) Regex!16525)

(declare-fun head!13494 (List!65876) C!33320)

(declare-fun tail!12579 (List!65876) List!65876)

(assert (=> b!6711214 (= e!4056012 (matchR!8708 (derivativeStep!5205 r!7292 (head!13494 s!2326)) (tail!12579 s!2326)))))

(declare-fun b!6711215 () Bool)

(declare-fun e!4056013 () Bool)

(declare-fun e!4056011 () Bool)

(assert (=> b!6711215 (= e!4056013 e!4056011)))

(declare-fun res!2746356 () Bool)

(assert (=> b!6711215 (=> res!2746356 e!4056011)))

(declare-fun call!605873 () Bool)

(assert (=> b!6711215 (= res!2746356 call!605873)))

(declare-fun b!6711216 () Bool)

(declare-fun res!2746357 () Bool)

(assert (=> b!6711216 (=> res!2746357 e!4056011)))

(declare-fun isEmpty!38074 (List!65876) Bool)

(assert (=> b!6711216 (= res!2746357 (not (isEmpty!38074 (tail!12579 s!2326))))))

(declare-fun bm!605868 () Bool)

(assert (=> bm!605868 (= call!605873 (isEmpty!38074 s!2326))))

(declare-fun b!6711217 () Bool)

(assert (=> b!6711217 (= e!4056016 e!4056013)))

(declare-fun res!2746359 () Bool)

(assert (=> b!6711217 (=> (not res!2746359) (not e!4056013))))

(assert (=> b!6711217 (= res!2746359 (not lt!2435675))))

(declare-fun b!6711218 () Bool)

(declare-fun res!2746355 () Bool)

(assert (=> b!6711218 (=> res!2746355 e!4056016)))

(assert (=> b!6711218 (= res!2746355 (not ((_ is ElementMatch!16525) r!7292)))))

(declare-fun e!4056015 () Bool)

(assert (=> b!6711218 (= e!4056015 e!4056016)))

(declare-fun b!6711219 () Bool)

(assert (=> b!6711219 (= e!4056017 (= (head!13494 s!2326) (c!1244347 r!7292)))))

(declare-fun b!6711220 () Bool)

(declare-fun res!2746361 () Bool)

(assert (=> b!6711220 (=> (not res!2746361) (not e!4056017))))

(assert (=> b!6711220 (= res!2746361 (not call!605873))))

(declare-fun d!2110276 () Bool)

(declare-fun e!4056014 () Bool)

(assert (=> d!2110276 e!4056014))

(declare-fun c!1244438 () Bool)

(assert (=> d!2110276 (= c!1244438 ((_ is EmptyExpr!16525) r!7292))))

(assert (=> d!2110276 (= lt!2435675 e!4056012)))

(declare-fun c!1244439 () Bool)

(assert (=> d!2110276 (= c!1244439 (isEmpty!38074 s!2326))))

(assert (=> d!2110276 (validRegex!8261 r!7292)))

(assert (=> d!2110276 (= (matchR!8708 r!7292 s!2326) lt!2435675)))

(declare-fun b!6711221 () Bool)

(assert (=> b!6711221 (= e!4056015 (not lt!2435675))))

(declare-fun b!6711222 () Bool)

(declare-fun res!2746354 () Bool)

(assert (=> b!6711222 (=> (not res!2746354) (not e!4056017))))

(assert (=> b!6711222 (= res!2746354 (isEmpty!38074 (tail!12579 s!2326)))))

(declare-fun b!6711223 () Bool)

(declare-fun nullable!6518 (Regex!16525) Bool)

(assert (=> b!6711223 (= e!4056012 (nullable!6518 r!7292))))

(declare-fun b!6711224 () Bool)

(assert (=> b!6711224 (= e!4056014 e!4056015)))

(declare-fun c!1244437 () Bool)

(assert (=> b!6711224 (= c!1244437 ((_ is EmptyLang!16525) r!7292))))

(declare-fun b!6711225 () Bool)

(assert (=> b!6711225 (= e!4056014 (= lt!2435675 call!605873))))

(declare-fun b!6711226 () Bool)

(assert (=> b!6711226 (= e!4056011 (not (= (head!13494 s!2326) (c!1244347 r!7292))))))

(assert (= (and d!2110276 c!1244439) b!6711223))

(assert (= (and d!2110276 (not c!1244439)) b!6711214))

(assert (= (and d!2110276 c!1244438) b!6711225))

(assert (= (and d!2110276 (not c!1244438)) b!6711224))

(assert (= (and b!6711224 c!1244437) b!6711221))

(assert (= (and b!6711224 (not c!1244437)) b!6711218))

(assert (= (and b!6711218 (not res!2746355)) b!6711213))

(assert (= (and b!6711213 res!2746358) b!6711220))

(assert (= (and b!6711220 res!2746361) b!6711222))

(assert (= (and b!6711222 res!2746354) b!6711219))

(assert (= (and b!6711213 (not res!2746360)) b!6711217))

(assert (= (and b!6711217 res!2746359) b!6711215))

(assert (= (and b!6711215 (not res!2746356)) b!6711216))

(assert (= (and b!6711216 (not res!2746357)) b!6711226))

(assert (= (or b!6711225 b!6711215 b!6711220) bm!605868))

(declare-fun m!7477236 () Bool)

(assert (=> b!6711226 m!7477236))

(declare-fun m!7477238 () Bool)

(assert (=> b!6711222 m!7477238))

(assert (=> b!6711222 m!7477238))

(declare-fun m!7477240 () Bool)

(assert (=> b!6711222 m!7477240))

(assert (=> b!6711214 m!7477236))

(assert (=> b!6711214 m!7477236))

(declare-fun m!7477242 () Bool)

(assert (=> b!6711214 m!7477242))

(assert (=> b!6711214 m!7477238))

(assert (=> b!6711214 m!7477242))

(assert (=> b!6711214 m!7477238))

(declare-fun m!7477244 () Bool)

(assert (=> b!6711214 m!7477244))

(declare-fun m!7477246 () Bool)

(assert (=> bm!605868 m!7477246))

(assert (=> b!6711219 m!7477236))

(assert (=> b!6711216 m!7477238))

(assert (=> b!6711216 m!7477238))

(assert (=> b!6711216 m!7477240))

(assert (=> d!2110276 m!7477246))

(assert (=> d!2110276 m!7477062))

(declare-fun m!7477248 () Bool)

(assert (=> b!6711223 m!7477248))

(assert (=> b!6710889 d!2110276))

(declare-fun b!6711285 () Bool)

(assert (=> b!6711285 true))

(assert (=> b!6711285 true))

(declare-fun bs!1786542 () Bool)

(declare-fun b!6711283 () Bool)

(assert (= bs!1786542 (and b!6711283 b!6711285)))

(declare-fun lambda!376173 () Int)

(declare-fun lambda!376172 () Int)

(assert (=> bs!1786542 (not (= lambda!376173 lambda!376172))))

(assert (=> b!6711283 true))

(assert (=> b!6711283 true))

(declare-fun e!4056050 () Bool)

(declare-fun call!605878 () Bool)

(assert (=> b!6711283 (= e!4056050 call!605878)))

(declare-fun b!6711284 () Bool)

(declare-fun e!4056048 () Bool)

(declare-fun e!4056047 () Bool)

(assert (=> b!6711284 (= e!4056048 e!4056047)))

(declare-fun res!2746378 () Bool)

(assert (=> b!6711284 (= res!2746378 (matchRSpec!3626 (regOne!33563 r!7292) s!2326))))

(assert (=> b!6711284 (=> res!2746378 e!4056047)))

(declare-fun bm!605873 () Bool)

(declare-fun call!605879 () Bool)

(assert (=> bm!605873 (= call!605879 (isEmpty!38074 s!2326))))

(declare-fun e!4056053 () Bool)

(assert (=> b!6711285 (= e!4056053 call!605878)))

(declare-fun b!6711286 () Bool)

(assert (=> b!6711286 (= e!4056047 (matchRSpec!3626 (regTwo!33563 r!7292) s!2326))))

(declare-fun b!6711287 () Bool)

(declare-fun e!4056052 () Bool)

(declare-fun e!4056051 () Bool)

(assert (=> b!6711287 (= e!4056052 e!4056051)))

(declare-fun res!2746379 () Bool)

(assert (=> b!6711287 (= res!2746379 (not ((_ is EmptyLang!16525) r!7292)))))

(assert (=> b!6711287 (=> (not res!2746379) (not e!4056051))))

(declare-fun d!2110284 () Bool)

(declare-fun c!1244448 () Bool)

(assert (=> d!2110284 (= c!1244448 ((_ is EmptyExpr!16525) r!7292))))

(assert (=> d!2110284 (= (matchRSpec!3626 r!7292 s!2326) e!4056052)))

(declare-fun b!6711288 () Bool)

(declare-fun res!2746380 () Bool)

(assert (=> b!6711288 (=> res!2746380 e!4056053)))

(assert (=> b!6711288 (= res!2746380 call!605879)))

(assert (=> b!6711288 (= e!4056050 e!4056053)))

(declare-fun b!6711289 () Bool)

(assert (=> b!6711289 (= e!4056052 call!605879)))

(declare-fun b!6711290 () Bool)

(assert (=> b!6711290 (= e!4056048 e!4056050)))

(declare-fun c!1244450 () Bool)

(assert (=> b!6711290 (= c!1244450 ((_ is Star!16525) r!7292))))

(declare-fun bm!605874 () Bool)

(declare-fun Exists!3595 (Int) Bool)

(assert (=> bm!605874 (= call!605878 (Exists!3595 (ite c!1244450 lambda!376172 lambda!376173)))))

(declare-fun b!6711291 () Bool)

(declare-fun c!1244449 () Bool)

(assert (=> b!6711291 (= c!1244449 ((_ is Union!16525) r!7292))))

(declare-fun e!4056049 () Bool)

(assert (=> b!6711291 (= e!4056049 e!4056048)))

(declare-fun b!6711292 () Bool)

(declare-fun c!1244451 () Bool)

(assert (=> b!6711292 (= c!1244451 ((_ is ElementMatch!16525) r!7292))))

(assert (=> b!6711292 (= e!4056051 e!4056049)))

(declare-fun b!6711293 () Bool)

(assert (=> b!6711293 (= e!4056049 (= s!2326 (Cons!65752 (c!1244347 r!7292) Nil!65752)))))

(assert (= (and d!2110284 c!1244448) b!6711289))

(assert (= (and d!2110284 (not c!1244448)) b!6711287))

(assert (= (and b!6711287 res!2746379) b!6711292))

(assert (= (and b!6711292 c!1244451) b!6711293))

(assert (= (and b!6711292 (not c!1244451)) b!6711291))

(assert (= (and b!6711291 c!1244449) b!6711284))

(assert (= (and b!6711291 (not c!1244449)) b!6711290))

(assert (= (and b!6711284 (not res!2746378)) b!6711286))

(assert (= (and b!6711290 c!1244450) b!6711288))

(assert (= (and b!6711290 (not c!1244450)) b!6711283))

(assert (= (and b!6711288 (not res!2746380)) b!6711285))

(assert (= (or b!6711285 b!6711283) bm!605874))

(assert (= (or b!6711289 b!6711288) bm!605873))

(declare-fun m!7477252 () Bool)

(assert (=> b!6711284 m!7477252))

(assert (=> bm!605873 m!7477246))

(declare-fun m!7477254 () Bool)

(assert (=> b!6711286 m!7477254))

(declare-fun m!7477256 () Bool)

(assert (=> bm!605874 m!7477256))

(assert (=> b!6710889 d!2110284))

(declare-fun d!2110286 () Bool)

(assert (=> d!2110286 (= (matchR!8708 r!7292 s!2326) (matchRSpec!3626 r!7292 s!2326))))

(declare-fun lt!2435678 () Unit!159741)

(declare-fun choose!49991 (Regex!16525 List!65876) Unit!159741)

(assert (=> d!2110286 (= lt!2435678 (choose!49991 r!7292 s!2326))))

(assert (=> d!2110286 (validRegex!8261 r!7292)))

(assert (=> d!2110286 (= (mainMatchTheorem!3626 r!7292 s!2326) lt!2435678)))

(declare-fun bs!1786543 () Bool)

(assert (= bs!1786543 d!2110286))

(assert (=> bs!1786543 m!7477072))

(assert (=> bs!1786543 m!7477074))

(declare-fun m!7477258 () Bool)

(assert (=> bs!1786543 m!7477258))

(assert (=> bs!1786543 m!7477062))

(assert (=> b!6710889 d!2110286))

(declare-fun b!6711316 () Bool)

(declare-fun e!4056073 () Bool)

(declare-fun call!605887 () Bool)

(assert (=> b!6711316 (= e!4056073 call!605887)))

(declare-fun call!605888 () Bool)

(declare-fun c!1244456 () Bool)

(declare-fun bm!605881 () Bool)

(declare-fun c!1244457 () Bool)

(assert (=> bm!605881 (= call!605888 (validRegex!8261 (ite c!1244457 (reg!16854 r!7292) (ite c!1244456 (regOne!33563 r!7292) (regOne!33562 r!7292)))))))

(declare-fun b!6711317 () Bool)

(declare-fun e!4056068 () Bool)

(declare-fun e!4056072 () Bool)

(assert (=> b!6711317 (= e!4056068 e!4056072)))

(declare-fun res!2746395 () Bool)

(assert (=> b!6711317 (= res!2746395 (not (nullable!6518 (reg!16854 r!7292))))))

(assert (=> b!6711317 (=> (not res!2746395) (not e!4056072))))

(declare-fun b!6711319 () Bool)

(declare-fun res!2746391 () Bool)

(declare-fun e!4056070 () Bool)

(assert (=> b!6711319 (=> (not res!2746391) (not e!4056070))))

(declare-fun call!605886 () Bool)

(assert (=> b!6711319 (= res!2746391 call!605886)))

(declare-fun e!4056071 () Bool)

(assert (=> b!6711319 (= e!4056071 e!4056070)))

(declare-fun b!6711320 () Bool)

(assert (=> b!6711320 (= e!4056070 call!605887)))

(declare-fun b!6711321 () Bool)

(declare-fun e!4056069 () Bool)

(assert (=> b!6711321 (= e!4056069 e!4056073)))

(declare-fun res!2746392 () Bool)

(assert (=> b!6711321 (=> (not res!2746392) (not e!4056073))))

(assert (=> b!6711321 (= res!2746392 call!605886)))

(declare-fun b!6711322 () Bool)

(declare-fun e!4056074 () Bool)

(assert (=> b!6711322 (= e!4056074 e!4056068)))

(assert (=> b!6711322 (= c!1244457 ((_ is Star!16525) r!7292))))

(declare-fun b!6711323 () Bool)

(declare-fun res!2746393 () Bool)

(assert (=> b!6711323 (=> res!2746393 e!4056069)))

(assert (=> b!6711323 (= res!2746393 (not ((_ is Concat!25370) r!7292)))))

(assert (=> b!6711323 (= e!4056071 e!4056069)))

(declare-fun bm!605882 () Bool)

(assert (=> bm!605882 (= call!605886 call!605888)))

(declare-fun bm!605883 () Bool)

(assert (=> bm!605883 (= call!605887 (validRegex!8261 (ite c!1244456 (regTwo!33563 r!7292) (regTwo!33562 r!7292))))))

(declare-fun b!6711324 () Bool)

(assert (=> b!6711324 (= e!4056072 call!605888)))

(declare-fun b!6711318 () Bool)

(assert (=> b!6711318 (= e!4056068 e!4056071)))

(assert (=> b!6711318 (= c!1244456 ((_ is Union!16525) r!7292))))

(declare-fun d!2110288 () Bool)

(declare-fun res!2746394 () Bool)

(assert (=> d!2110288 (=> res!2746394 e!4056074)))

(assert (=> d!2110288 (= res!2746394 ((_ is ElementMatch!16525) r!7292))))

(assert (=> d!2110288 (= (validRegex!8261 r!7292) e!4056074)))

(assert (= (and d!2110288 (not res!2746394)) b!6711322))

(assert (= (and b!6711322 c!1244457) b!6711317))

(assert (= (and b!6711322 (not c!1244457)) b!6711318))

(assert (= (and b!6711317 res!2746395) b!6711324))

(assert (= (and b!6711318 c!1244456) b!6711319))

(assert (= (and b!6711318 (not c!1244456)) b!6711323))

(assert (= (and b!6711319 res!2746391) b!6711320))

(assert (= (and b!6711323 (not res!2746393)) b!6711321))

(assert (= (and b!6711321 res!2746392) b!6711316))

(assert (= (or b!6711320 b!6711316) bm!605883))

(assert (= (or b!6711319 b!6711321) bm!605882))

(assert (= (or b!6711324 bm!605882) bm!605881))

(declare-fun m!7477260 () Bool)

(assert (=> bm!605881 m!7477260))

(declare-fun m!7477262 () Bool)

(assert (=> b!6711317 m!7477262))

(declare-fun m!7477264 () Bool)

(assert (=> bm!605883 m!7477264))

(assert (=> start!650872 d!2110288))

(declare-fun b!6711325 () Bool)

(declare-fun e!4056080 () Bool)

(declare-fun call!605890 () Bool)

(assert (=> b!6711325 (= e!4056080 call!605890)))

(declare-fun c!1244459 () Bool)

(declare-fun bm!605884 () Bool)

(declare-fun call!605891 () Bool)

(declare-fun c!1244458 () Bool)

(assert (=> bm!605884 (= call!605891 (validRegex!8261 (ite c!1244459 (reg!16854 (reg!16854 r!7292)) (ite c!1244458 (regOne!33563 (reg!16854 r!7292)) (regOne!33562 (reg!16854 r!7292))))))))

(declare-fun b!6711326 () Bool)

(declare-fun e!4056075 () Bool)

(declare-fun e!4056079 () Bool)

(assert (=> b!6711326 (= e!4056075 e!4056079)))

(declare-fun res!2746400 () Bool)

(assert (=> b!6711326 (= res!2746400 (not (nullable!6518 (reg!16854 (reg!16854 r!7292)))))))

(assert (=> b!6711326 (=> (not res!2746400) (not e!4056079))))

(declare-fun b!6711328 () Bool)

(declare-fun res!2746396 () Bool)

(declare-fun e!4056077 () Bool)

(assert (=> b!6711328 (=> (not res!2746396) (not e!4056077))))

(declare-fun call!605889 () Bool)

(assert (=> b!6711328 (= res!2746396 call!605889)))

(declare-fun e!4056078 () Bool)

(assert (=> b!6711328 (= e!4056078 e!4056077)))

(declare-fun b!6711329 () Bool)

(assert (=> b!6711329 (= e!4056077 call!605890)))

(declare-fun b!6711330 () Bool)

(declare-fun e!4056076 () Bool)

(assert (=> b!6711330 (= e!4056076 e!4056080)))

(declare-fun res!2746397 () Bool)

(assert (=> b!6711330 (=> (not res!2746397) (not e!4056080))))

(assert (=> b!6711330 (= res!2746397 call!605889)))

(declare-fun b!6711331 () Bool)

(declare-fun e!4056081 () Bool)

(assert (=> b!6711331 (= e!4056081 e!4056075)))

(assert (=> b!6711331 (= c!1244459 ((_ is Star!16525) (reg!16854 r!7292)))))

(declare-fun b!6711332 () Bool)

(declare-fun res!2746398 () Bool)

(assert (=> b!6711332 (=> res!2746398 e!4056076)))

(assert (=> b!6711332 (= res!2746398 (not ((_ is Concat!25370) (reg!16854 r!7292))))))

(assert (=> b!6711332 (= e!4056078 e!4056076)))

(declare-fun bm!605885 () Bool)

(assert (=> bm!605885 (= call!605889 call!605891)))

(declare-fun bm!605886 () Bool)

(assert (=> bm!605886 (= call!605890 (validRegex!8261 (ite c!1244458 (regTwo!33563 (reg!16854 r!7292)) (regTwo!33562 (reg!16854 r!7292)))))))

(declare-fun b!6711333 () Bool)

(assert (=> b!6711333 (= e!4056079 call!605891)))

(declare-fun b!6711327 () Bool)

(assert (=> b!6711327 (= e!4056075 e!4056078)))

(assert (=> b!6711327 (= c!1244458 ((_ is Union!16525) (reg!16854 r!7292)))))

(declare-fun d!2110290 () Bool)

(declare-fun res!2746399 () Bool)

(assert (=> d!2110290 (=> res!2746399 e!4056081)))

(assert (=> d!2110290 (= res!2746399 ((_ is ElementMatch!16525) (reg!16854 r!7292)))))

(assert (=> d!2110290 (= (validRegex!8261 (reg!16854 r!7292)) e!4056081)))

(assert (= (and d!2110290 (not res!2746399)) b!6711331))

(assert (= (and b!6711331 c!1244459) b!6711326))

(assert (= (and b!6711331 (not c!1244459)) b!6711327))

(assert (= (and b!6711326 res!2746400) b!6711333))

(assert (= (and b!6711327 c!1244458) b!6711328))

(assert (= (and b!6711327 (not c!1244458)) b!6711332))

(assert (= (and b!6711328 res!2746396) b!6711329))

(assert (= (and b!6711332 (not res!2746398)) b!6711330))

(assert (= (and b!6711330 res!2746397) b!6711325))

(assert (= (or b!6711329 b!6711325) bm!605886))

(assert (= (or b!6711328 b!6711330) bm!605885))

(assert (= (or b!6711333 bm!605885) bm!605884))

(declare-fun m!7477266 () Bool)

(assert (=> bm!605884 m!7477266))

(declare-fun m!7477268 () Bool)

(assert (=> b!6711326 m!7477268))

(declare-fun m!7477270 () Bool)

(assert (=> bm!605886 m!7477270))

(assert (=> b!6710883 d!2110290))

(declare-fun b!6711347 () Bool)

(declare-fun e!4056084 () Bool)

(declare-fun tp!1839228 () Bool)

(declare-fun tp!1839227 () Bool)

(assert (=> b!6711347 (= e!4056084 (and tp!1839228 tp!1839227))))

(declare-fun b!6711346 () Bool)

(declare-fun tp!1839230 () Bool)

(assert (=> b!6711346 (= e!4056084 tp!1839230)))

(declare-fun b!6711345 () Bool)

(declare-fun tp!1839226 () Bool)

(declare-fun tp!1839229 () Bool)

(assert (=> b!6711345 (= e!4056084 (and tp!1839226 tp!1839229))))

(assert (=> b!6710880 (= tp!1839150 e!4056084)))

(declare-fun b!6711344 () Bool)

(assert (=> b!6711344 (= e!4056084 tp_is_empty!42303)))

(assert (= (and b!6710880 ((_ is ElementMatch!16525) (regOne!33563 r!7292))) b!6711344))

(assert (= (and b!6710880 ((_ is Concat!25370) (regOne!33563 r!7292))) b!6711345))

(assert (= (and b!6710880 ((_ is Star!16525) (regOne!33563 r!7292))) b!6711346))

(assert (= (and b!6710880 ((_ is Union!16525) (regOne!33563 r!7292))) b!6711347))

(declare-fun b!6711351 () Bool)

(declare-fun e!4056085 () Bool)

(declare-fun tp!1839233 () Bool)

(declare-fun tp!1839232 () Bool)

(assert (=> b!6711351 (= e!4056085 (and tp!1839233 tp!1839232))))

(declare-fun b!6711350 () Bool)

(declare-fun tp!1839235 () Bool)

(assert (=> b!6711350 (= e!4056085 tp!1839235)))

(declare-fun b!6711349 () Bool)

(declare-fun tp!1839231 () Bool)

(declare-fun tp!1839234 () Bool)

(assert (=> b!6711349 (= e!4056085 (and tp!1839231 tp!1839234))))

(assert (=> b!6710880 (= tp!1839149 e!4056085)))

(declare-fun b!6711348 () Bool)

(assert (=> b!6711348 (= e!4056085 tp_is_empty!42303)))

(assert (= (and b!6710880 ((_ is ElementMatch!16525) (regTwo!33563 r!7292))) b!6711348))

(assert (= (and b!6710880 ((_ is Concat!25370) (regTwo!33563 r!7292))) b!6711349))

(assert (= (and b!6710880 ((_ is Star!16525) (regTwo!33563 r!7292))) b!6711350))

(assert (= (and b!6710880 ((_ is Union!16525) (regTwo!33563 r!7292))) b!6711351))

(declare-fun b!6711355 () Bool)

(declare-fun e!4056086 () Bool)

(declare-fun tp!1839238 () Bool)

(declare-fun tp!1839237 () Bool)

(assert (=> b!6711355 (= e!4056086 (and tp!1839238 tp!1839237))))

(declare-fun b!6711354 () Bool)

(declare-fun tp!1839240 () Bool)

(assert (=> b!6711354 (= e!4056086 tp!1839240)))

(declare-fun b!6711353 () Bool)

(declare-fun tp!1839236 () Bool)

(declare-fun tp!1839239 () Bool)

(assert (=> b!6711353 (= e!4056086 (and tp!1839236 tp!1839239))))

(assert (=> b!6710890 (= tp!1839154 e!4056086)))

(declare-fun b!6711352 () Bool)

(assert (=> b!6711352 (= e!4056086 tp_is_empty!42303)))

(assert (= (and b!6710890 ((_ is ElementMatch!16525) (regOne!33562 r!7292))) b!6711352))

(assert (= (and b!6710890 ((_ is Concat!25370) (regOne!33562 r!7292))) b!6711353))

(assert (= (and b!6710890 ((_ is Star!16525) (regOne!33562 r!7292))) b!6711354))

(assert (= (and b!6710890 ((_ is Union!16525) (regOne!33562 r!7292))) b!6711355))

(declare-fun b!6711359 () Bool)

(declare-fun e!4056087 () Bool)

(declare-fun tp!1839243 () Bool)

(declare-fun tp!1839242 () Bool)

(assert (=> b!6711359 (= e!4056087 (and tp!1839243 tp!1839242))))

(declare-fun b!6711358 () Bool)

(declare-fun tp!1839245 () Bool)

(assert (=> b!6711358 (= e!4056087 tp!1839245)))

(declare-fun b!6711357 () Bool)

(declare-fun tp!1839241 () Bool)

(declare-fun tp!1839244 () Bool)

(assert (=> b!6711357 (= e!4056087 (and tp!1839241 tp!1839244))))

(assert (=> b!6710890 (= tp!1839157 e!4056087)))

(declare-fun b!6711356 () Bool)

(assert (=> b!6711356 (= e!4056087 tp_is_empty!42303)))

(assert (= (and b!6710890 ((_ is ElementMatch!16525) (regTwo!33562 r!7292))) b!6711356))

(assert (= (and b!6710890 ((_ is Concat!25370) (regTwo!33562 r!7292))) b!6711357))

(assert (= (and b!6710890 ((_ is Star!16525) (regTwo!33562 r!7292))) b!6711358))

(assert (= (and b!6710890 ((_ is Union!16525) (regTwo!33562 r!7292))) b!6711359))

(declare-fun b!6711364 () Bool)

(declare-fun e!4056090 () Bool)

(declare-fun tp!1839250 () Bool)

(declare-fun tp!1839251 () Bool)

(assert (=> b!6711364 (= e!4056090 (and tp!1839250 tp!1839251))))

(assert (=> b!6710879 (= tp!1839156 e!4056090)))

(assert (= (and b!6710879 ((_ is Cons!65750) (exprs!6409 (h!72199 zl!343)))) b!6711364))

(declare-fun b!6711368 () Bool)

(declare-fun e!4056091 () Bool)

(declare-fun tp!1839254 () Bool)

(declare-fun tp!1839253 () Bool)

(assert (=> b!6711368 (= e!4056091 (and tp!1839254 tp!1839253))))

(declare-fun b!6711367 () Bool)

(declare-fun tp!1839256 () Bool)

(assert (=> b!6711367 (= e!4056091 tp!1839256)))

(declare-fun b!6711366 () Bool)

(declare-fun tp!1839252 () Bool)

(declare-fun tp!1839255 () Bool)

(assert (=> b!6711366 (= e!4056091 (and tp!1839252 tp!1839255))))

(assert (=> b!6710886 (= tp!1839148 e!4056091)))

(declare-fun b!6711365 () Bool)

(assert (=> b!6711365 (= e!4056091 tp_is_empty!42303)))

(assert (= (and b!6710886 ((_ is ElementMatch!16525) (reg!16854 r!7292))) b!6711365))

(assert (= (and b!6710886 ((_ is Concat!25370) (reg!16854 r!7292))) b!6711366))

(assert (= (and b!6710886 ((_ is Star!16525) (reg!16854 r!7292))) b!6711367))

(assert (= (and b!6710886 ((_ is Union!16525) (reg!16854 r!7292))) b!6711368))

(declare-fun condSetEmpty!45693 () Bool)

(assert (=> setNonEmpty!45687 (= condSetEmpty!45693 (= setRest!45687 ((as const (Array Context!11818 Bool)) false)))))

(declare-fun setRes!45693 () Bool)

(assert (=> setNonEmpty!45687 (= tp!1839152 setRes!45693)))

(declare-fun setIsEmpty!45693 () Bool)

(assert (=> setIsEmpty!45693 setRes!45693))

(declare-fun setElem!45693 () Context!11818)

(declare-fun setNonEmpty!45693 () Bool)

(declare-fun tp!1839262 () Bool)

(declare-fun e!4056094 () Bool)

(assert (=> setNonEmpty!45693 (= setRes!45693 (and tp!1839262 (inv!84559 setElem!45693) e!4056094))))

(declare-fun setRest!45693 () (InoxSet Context!11818))

(assert (=> setNonEmpty!45693 (= setRest!45687 ((_ map or) (store ((as const (Array Context!11818 Bool)) false) setElem!45693 true) setRest!45693))))

(declare-fun b!6711373 () Bool)

(declare-fun tp!1839261 () Bool)

(assert (=> b!6711373 (= e!4056094 tp!1839261)))

(assert (= (and setNonEmpty!45687 condSetEmpty!45693) setIsEmpty!45693))

(assert (= (and setNonEmpty!45687 (not condSetEmpty!45693)) setNonEmpty!45693))

(assert (= setNonEmpty!45693 b!6711373))

(declare-fun m!7477272 () Bool)

(assert (=> setNonEmpty!45693 m!7477272))

(declare-fun b!6711374 () Bool)

(declare-fun e!4056095 () Bool)

(declare-fun tp!1839263 () Bool)

(declare-fun tp!1839264 () Bool)

(assert (=> b!6711374 (= e!4056095 (and tp!1839263 tp!1839264))))

(assert (=> b!6710888 (= tp!1839153 e!4056095)))

(assert (= (and b!6710888 ((_ is Cons!65750) (exprs!6409 setElem!45687))) b!6711374))

(declare-fun b!6711382 () Bool)

(declare-fun e!4056101 () Bool)

(declare-fun tp!1839269 () Bool)

(assert (=> b!6711382 (= e!4056101 tp!1839269)))

(declare-fun tp!1839270 () Bool)

(declare-fun e!4056100 () Bool)

(declare-fun b!6711381 () Bool)

(assert (=> b!6711381 (= e!4056100 (and (inv!84559 (h!72199 (t!379552 zl!343))) e!4056101 tp!1839270))))

(assert (=> b!6710882 (= tp!1839155 e!4056100)))

(assert (= b!6711381 b!6711382))

(assert (= (and b!6710882 ((_ is Cons!65751) (t!379552 zl!343))) b!6711381))

(declare-fun m!7477274 () Bool)

(assert (=> b!6711381 m!7477274))

(declare-fun b!6711387 () Bool)

(declare-fun e!4056104 () Bool)

(declare-fun tp!1839273 () Bool)

(assert (=> b!6711387 (= e!4056104 (and tp_is_empty!42303 tp!1839273))))

(assert (=> b!6710875 (= tp!1839151 e!4056104)))

(assert (= (and b!6710875 ((_ is Cons!65752) (t!379553 s!2326))) b!6711387))

(check-sat (not b!6711284) (not b!6711367) (not b!6711373) (not bm!605873) (not b!6711124) (not d!2110264) (not b!6711018) (not b!6711057) (not b!6711374) (not b!6711127) (not bm!605886) (not d!2110274) (not bm!605883) (not b!6711226) (not d!2110240) (not d!2110262) (not b!6711026) (not b!6711326) (not b!6711025) tp_is_empty!42303 (not d!2110272) (not b!6711349) (not bm!605874) (not b!6711317) (not b!6711123) (not b!6711359) (not d!2110266) (not b!6711358) (not b!6711387) (not b!6711120) (not bm!605884) (not b!6711368) (not b!6711354) (not b!6711223) (not b!6711381) (not b!6711222) (not b!6711138) (not b!6711286) (not b!6711357) (not bm!605881) (not b!6711351) (not setNonEmpty!45693) (not d!2110276) (not b!6711364) (not b!6711347) (not b!6711355) (not b!6711216) (not b!6711353) (not b!6711214) (not b!6711126) (not b!6711345) (not b!6711019) (not b!6711024) (not d!2110286) (not bm!605868) (not d!2110268) (not b!6711021) (not b!6711350) (not b!6711128) (not b!6711382) (not b!6711125) (not b!6711219) (not b!6711346) (not b!6711366) (not b!6711022))
(check-sat)
