; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92882 () Bool)

(assert start!92882)

(declare-fun res!483697 () Bool)

(declare-fun e!688210 () Bool)

(assert (=> start!92882 (=> (not res!483697) (not e!688210))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!6628 0))(
  ( (C!6629 (val!3562 Int)) )
))
(declare-datatypes ((Regex!3029 0))(
  ( (ElementMatch!3029 (c!184215 C!6628)) (Concat!4862 (regOne!6570 Regex!3029) (regTwo!6570 Regex!3029)) (EmptyExpr!3029) (Star!3029 (reg!3358 Regex!3029)) (EmptyLang!3029) (Union!3029 (regOne!6571 Regex!3029) (regTwo!6571 Regex!3029)) )
))
(declare-datatypes ((List!10390 0))(
  ( (Nil!10374) (Cons!10374 (h!15775 Regex!3029) (t!101436 List!10390)) )
))
(declare-datatypes ((Context!1018 0))(
  ( (Context!1019 (exprs!1009 List!10390)) )
))
(declare-fun z!1122 () (InoxSet Context!1018))

(declare-datatypes ((List!10391 0))(
  ( (Nil!10375) (Cons!10375 (h!15776 Context!1018) (t!101437 List!10391)) )
))
(declare-fun zl!316 () List!10391)

(declare-fun toList!647 ((InoxSet Context!1018)) List!10391)

(assert (=> start!92882 (= res!483697 (= (toList!647 z!1122) zl!316))))

(assert (=> start!92882 e!688210))

(declare-fun condSetEmpty!7684 () Bool)

(assert (=> start!92882 (= condSetEmpty!7684 (= z!1122 ((as const (Array Context!1018 Bool)) false)))))

(declare-fun setRes!7684 () Bool)

(assert (=> start!92882 setRes!7684))

(declare-fun e!688208 () Bool)

(assert (=> start!92882 e!688208))

(declare-fun e!688207 () Bool)

(assert (=> start!92882 e!688207))

(declare-fun b!1087929 () Bool)

(declare-fun tp_is_empty!5689 () Bool)

(declare-fun tp!326079 () Bool)

(assert (=> b!1087929 (= e!688207 (and tp_is_empty!5689 tp!326079))))

(declare-fun b!1087930 () Bool)

(declare-fun res!483696 () Bool)

(assert (=> b!1087930 (=> (not res!483696) (not e!688210))))

(declare-datatypes ((List!10392 0))(
  ( (Nil!10376) (Cons!10376 (h!15777 C!6628) (t!101438 List!10392)) )
))
(declare-fun s!2287 () List!10392)

(declare-fun matchZipper!77 ((InoxSet Context!1018) List!10392) Bool)

(assert (=> b!1087930 (= res!483696 (not (matchZipper!77 z!1122 s!2287)))))

(declare-fun b!1087931 () Bool)

(declare-fun e!688209 () Bool)

(declare-fun tp!326082 () Bool)

(assert (=> b!1087931 (= e!688209 tp!326082)))

(declare-fun setIsEmpty!7684 () Bool)

(assert (=> setIsEmpty!7684 setRes!7684))

(declare-fun b!1087932 () Bool)

(declare-fun e!688206 () Bool)

(declare-fun tp!326078 () Bool)

(assert (=> b!1087932 (= e!688206 tp!326078)))

(declare-fun lambda!40666 () Int)

(declare-fun b!1087933 () Bool)

(declare-fun content!1494 (List!10391) (InoxSet Context!1018))

(declare-fun filter!185 ((InoxSet Context!1018) Int) (InoxSet Context!1018))

(assert (=> b!1087933 (= e!688210 (not (matchZipper!77 (content!1494 (toList!647 (filter!185 z!1122 lambda!40666))) s!2287)))))

(declare-fun b!1087934 () Bool)

(declare-fun res!483695 () Bool)

(assert (=> b!1087934 (=> (not res!483695) (not e!688210))))

(assert (=> b!1087934 (= res!483695 (matchZipper!77 (filter!185 z!1122 lambda!40666) s!2287))))

(declare-fun tp!326080 () Bool)

(declare-fun setNonEmpty!7684 () Bool)

(declare-fun setElem!7684 () Context!1018)

(declare-fun inv!13285 (Context!1018) Bool)

(assert (=> setNonEmpty!7684 (= setRes!7684 (and tp!326080 (inv!13285 setElem!7684) e!688209))))

(declare-fun setRest!7684 () (InoxSet Context!1018))

(assert (=> setNonEmpty!7684 (= z!1122 ((_ map or) (store ((as const (Array Context!1018 Bool)) false) setElem!7684 true) setRest!7684))))

(declare-fun tp!326081 () Bool)

(declare-fun b!1087935 () Bool)

(assert (=> b!1087935 (= e!688208 (and (inv!13285 (h!15776 zl!316)) e!688206 tp!326081))))

(assert (= (and start!92882 res!483697) b!1087930))

(assert (= (and b!1087930 res!483696) b!1087934))

(assert (= (and b!1087934 res!483695) b!1087933))

(assert (= (and start!92882 condSetEmpty!7684) setIsEmpty!7684))

(assert (= (and start!92882 (not condSetEmpty!7684)) setNonEmpty!7684))

(assert (= setNonEmpty!7684 b!1087931))

(assert (= b!1087935 b!1087932))

(get-info :version)

(assert (= (and start!92882 ((_ is Cons!10375) zl!316)) b!1087935))

(assert (= (and start!92882 ((_ is Cons!10376) s!2287)) b!1087929))

(declare-fun m!1238269 () Bool)

(assert (=> start!92882 m!1238269))

(declare-fun m!1238271 () Bool)

(assert (=> b!1087933 m!1238271))

(assert (=> b!1087933 m!1238271))

(declare-fun m!1238273 () Bool)

(assert (=> b!1087933 m!1238273))

(assert (=> b!1087933 m!1238273))

(declare-fun m!1238275 () Bool)

(assert (=> b!1087933 m!1238275))

(assert (=> b!1087933 m!1238275))

(declare-fun m!1238277 () Bool)

(assert (=> b!1087933 m!1238277))

(assert (=> b!1087934 m!1238271))

(assert (=> b!1087934 m!1238271))

(declare-fun m!1238279 () Bool)

(assert (=> b!1087934 m!1238279))

(declare-fun m!1238281 () Bool)

(assert (=> setNonEmpty!7684 m!1238281))

(declare-fun m!1238283 () Bool)

(assert (=> b!1087930 m!1238283))

(declare-fun m!1238285 () Bool)

(assert (=> b!1087935 m!1238285))

(check-sat (not b!1087935) (not b!1087930) (not b!1087931) (not setNonEmpty!7684) (not b!1087934) (not start!92882) (not b!1087933) (not b!1087929) tp_is_empty!5689 (not b!1087932))
(check-sat)
(get-model)

(declare-fun d!305932 () Bool)

(declare-fun c!184218 () Bool)

(declare-fun isEmpty!6638 (List!10392) Bool)

(assert (=> d!305932 (= c!184218 (isEmpty!6638 s!2287))))

(declare-fun e!688213 () Bool)

(assert (=> d!305932 (= (matchZipper!77 z!1122 s!2287) e!688213)))

(declare-fun b!1087940 () Bool)

(declare-fun nullableZipper!35 ((InoxSet Context!1018)) Bool)

(assert (=> b!1087940 (= e!688213 (nullableZipper!35 z!1122))))

(declare-fun b!1087941 () Bool)

(declare-fun derivationStepZipper!33 ((InoxSet Context!1018) C!6628) (InoxSet Context!1018))

(declare-fun head!2023 (List!10392) C!6628)

(declare-fun tail!1583 (List!10392) List!10392)

(assert (=> b!1087941 (= e!688213 (matchZipper!77 (derivationStepZipper!33 z!1122 (head!2023 s!2287)) (tail!1583 s!2287)))))

(assert (= (and d!305932 c!184218) b!1087940))

(assert (= (and d!305932 (not c!184218)) b!1087941))

(declare-fun m!1238287 () Bool)

(assert (=> d!305932 m!1238287))

(declare-fun m!1238289 () Bool)

(assert (=> b!1087940 m!1238289))

(declare-fun m!1238291 () Bool)

(assert (=> b!1087941 m!1238291))

(assert (=> b!1087941 m!1238291))

(declare-fun m!1238293 () Bool)

(assert (=> b!1087941 m!1238293))

(declare-fun m!1238295 () Bool)

(assert (=> b!1087941 m!1238295))

(assert (=> b!1087941 m!1238293))

(assert (=> b!1087941 m!1238295))

(declare-fun m!1238297 () Bool)

(assert (=> b!1087941 m!1238297))

(assert (=> b!1087930 d!305932))

(declare-fun d!305936 () Bool)

(declare-fun c!184219 () Bool)

(assert (=> d!305936 (= c!184219 (isEmpty!6638 s!2287))))

(declare-fun e!688214 () Bool)

(assert (=> d!305936 (= (matchZipper!77 (filter!185 z!1122 lambda!40666) s!2287) e!688214)))

(declare-fun b!1087942 () Bool)

(assert (=> b!1087942 (= e!688214 (nullableZipper!35 (filter!185 z!1122 lambda!40666)))))

(declare-fun b!1087943 () Bool)

(assert (=> b!1087943 (= e!688214 (matchZipper!77 (derivationStepZipper!33 (filter!185 z!1122 lambda!40666) (head!2023 s!2287)) (tail!1583 s!2287)))))

(assert (= (and d!305936 c!184219) b!1087942))

(assert (= (and d!305936 (not c!184219)) b!1087943))

(assert (=> d!305936 m!1238287))

(assert (=> b!1087942 m!1238271))

(declare-fun m!1238299 () Bool)

(assert (=> b!1087942 m!1238299))

(assert (=> b!1087943 m!1238291))

(assert (=> b!1087943 m!1238271))

(assert (=> b!1087943 m!1238291))

(declare-fun m!1238301 () Bool)

(assert (=> b!1087943 m!1238301))

(assert (=> b!1087943 m!1238295))

(assert (=> b!1087943 m!1238301))

(assert (=> b!1087943 m!1238295))

(declare-fun m!1238303 () Bool)

(assert (=> b!1087943 m!1238303))

(assert (=> b!1087934 d!305936))

(declare-fun d!305938 () Bool)

(declare-fun choose!6977 ((InoxSet Context!1018) Int) (InoxSet Context!1018))

(assert (=> d!305938 (= (filter!185 z!1122 lambda!40666) (choose!6977 z!1122 lambda!40666))))

(declare-fun bs!257681 () Bool)

(assert (= bs!257681 d!305938))

(declare-fun m!1238305 () Bool)

(assert (=> bs!257681 m!1238305))

(assert (=> b!1087934 d!305938))

(declare-fun d!305940 () Bool)

(declare-fun lambda!40669 () Int)

(declare-fun forall!2284 (List!10390 Int) Bool)

(assert (=> d!305940 (= (inv!13285 setElem!7684) (forall!2284 (exprs!1009 setElem!7684) lambda!40669))))

(declare-fun bs!257682 () Bool)

(assert (= bs!257682 d!305940))

(declare-fun m!1238319 () Bool)

(assert (=> bs!257682 m!1238319))

(assert (=> setNonEmpty!7684 d!305940))

(declare-fun d!305944 () Bool)

(declare-fun e!688223 () Bool)

(assert (=> d!305944 e!688223))

(declare-fun res!483700 () Bool)

(assert (=> d!305944 (=> (not res!483700) (not e!688223))))

(declare-fun lt!363990 () List!10391)

(declare-fun noDuplicate!195 (List!10391) Bool)

(assert (=> d!305944 (= res!483700 (noDuplicate!195 lt!363990))))

(declare-fun choose!6978 ((InoxSet Context!1018)) List!10391)

(assert (=> d!305944 (= lt!363990 (choose!6978 z!1122))))

(assert (=> d!305944 (= (toList!647 z!1122) lt!363990)))

(declare-fun b!1087958 () Bool)

(assert (=> b!1087958 (= e!688223 (= (content!1494 lt!363990) z!1122))))

(assert (= (and d!305944 res!483700) b!1087958))

(declare-fun m!1238325 () Bool)

(assert (=> d!305944 m!1238325))

(declare-fun m!1238327 () Bool)

(assert (=> d!305944 m!1238327))

(declare-fun m!1238329 () Bool)

(assert (=> b!1087958 m!1238329))

(assert (=> start!92882 d!305944))

(declare-fun bs!257683 () Bool)

(declare-fun d!305948 () Bool)

(assert (= bs!257683 (and d!305948 d!305940)))

(declare-fun lambda!40670 () Int)

(assert (=> bs!257683 (= lambda!40670 lambda!40669)))

(assert (=> d!305948 (= (inv!13285 (h!15776 zl!316)) (forall!2284 (exprs!1009 (h!15776 zl!316)) lambda!40670))))

(declare-fun bs!257684 () Bool)

(assert (= bs!257684 d!305948))

(declare-fun m!1238331 () Bool)

(assert (=> bs!257684 m!1238331))

(assert (=> b!1087935 d!305948))

(declare-fun d!305950 () Bool)

(declare-fun c!184226 () Bool)

(assert (=> d!305950 (= c!184226 (isEmpty!6638 s!2287))))

(declare-fun e!688226 () Bool)

(assert (=> d!305950 (= (matchZipper!77 (content!1494 (toList!647 (filter!185 z!1122 lambda!40666))) s!2287) e!688226)))

(declare-fun b!1087961 () Bool)

(assert (=> b!1087961 (= e!688226 (nullableZipper!35 (content!1494 (toList!647 (filter!185 z!1122 lambda!40666)))))))

(declare-fun b!1087962 () Bool)

(assert (=> b!1087962 (= e!688226 (matchZipper!77 (derivationStepZipper!33 (content!1494 (toList!647 (filter!185 z!1122 lambda!40666))) (head!2023 s!2287)) (tail!1583 s!2287)))))

(assert (= (and d!305950 c!184226) b!1087961))

(assert (= (and d!305950 (not c!184226)) b!1087962))

(assert (=> d!305950 m!1238287))

(assert (=> b!1087961 m!1238275))

(declare-fun m!1238333 () Bool)

(assert (=> b!1087961 m!1238333))

(assert (=> b!1087962 m!1238291))

(assert (=> b!1087962 m!1238275))

(assert (=> b!1087962 m!1238291))

(declare-fun m!1238339 () Bool)

(assert (=> b!1087962 m!1238339))

(assert (=> b!1087962 m!1238295))

(assert (=> b!1087962 m!1238339))

(assert (=> b!1087962 m!1238295))

(declare-fun m!1238343 () Bool)

(assert (=> b!1087962 m!1238343))

(assert (=> b!1087933 d!305950))

(declare-fun d!305954 () Bool)

(declare-fun c!184231 () Bool)

(assert (=> d!305954 (= c!184231 ((_ is Nil!10375) (toList!647 (filter!185 z!1122 lambda!40666))))))

(declare-fun e!688232 () (InoxSet Context!1018))

(assert (=> d!305954 (= (content!1494 (toList!647 (filter!185 z!1122 lambda!40666))) e!688232)))

(declare-fun b!1087972 () Bool)

(assert (=> b!1087972 (= e!688232 ((as const (Array Context!1018 Bool)) false))))

(declare-fun b!1087973 () Bool)

(assert (=> b!1087973 (= e!688232 ((_ map or) (store ((as const (Array Context!1018 Bool)) false) (h!15776 (toList!647 (filter!185 z!1122 lambda!40666))) true) (content!1494 (t!101437 (toList!647 (filter!185 z!1122 lambda!40666))))))))

(assert (= (and d!305954 c!184231) b!1087972))

(assert (= (and d!305954 (not c!184231)) b!1087973))

(declare-fun m!1238359 () Bool)

(assert (=> b!1087973 m!1238359))

(declare-fun m!1238361 () Bool)

(assert (=> b!1087973 m!1238361))

(assert (=> b!1087933 d!305954))

(declare-fun d!305962 () Bool)

(declare-fun e!688233 () Bool)

(assert (=> d!305962 e!688233))

(declare-fun res!483704 () Bool)

(assert (=> d!305962 (=> (not res!483704) (not e!688233))))

(declare-fun lt!363994 () List!10391)

(assert (=> d!305962 (= res!483704 (noDuplicate!195 lt!363994))))

(assert (=> d!305962 (= lt!363994 (choose!6978 (filter!185 z!1122 lambda!40666)))))

(assert (=> d!305962 (= (toList!647 (filter!185 z!1122 lambda!40666)) lt!363994)))

(declare-fun b!1087974 () Bool)

(assert (=> b!1087974 (= e!688233 (= (content!1494 lt!363994) (filter!185 z!1122 lambda!40666)))))

(assert (= (and d!305962 res!483704) b!1087974))

(declare-fun m!1238363 () Bool)

(assert (=> d!305962 m!1238363))

(assert (=> d!305962 m!1238271))

(declare-fun m!1238365 () Bool)

(assert (=> d!305962 m!1238365))

(declare-fun m!1238367 () Bool)

(assert (=> b!1087974 m!1238367))

(assert (=> b!1087933 d!305962))

(assert (=> b!1087933 d!305938))

(declare-fun b!1087979 () Bool)

(declare-fun e!688236 () Bool)

(declare-fun tp!326085 () Bool)

(assert (=> b!1087979 (= e!688236 (and tp_is_empty!5689 tp!326085))))

(assert (=> b!1087929 (= tp!326079 e!688236)))

(assert (= (and b!1087929 ((_ is Cons!10376) (t!101438 s!2287))) b!1087979))

(declare-fun condSetEmpty!7687 () Bool)

(assert (=> setNonEmpty!7684 (= condSetEmpty!7687 (= setRest!7684 ((as const (Array Context!1018 Bool)) false)))))

(declare-fun setRes!7687 () Bool)

(assert (=> setNonEmpty!7684 (= tp!326080 setRes!7687)))

(declare-fun setIsEmpty!7687 () Bool)

(assert (=> setIsEmpty!7687 setRes!7687))

(declare-fun e!688239 () Bool)

(declare-fun tp!326090 () Bool)

(declare-fun setNonEmpty!7687 () Bool)

(declare-fun setElem!7687 () Context!1018)

(assert (=> setNonEmpty!7687 (= setRes!7687 (and tp!326090 (inv!13285 setElem!7687) e!688239))))

(declare-fun setRest!7687 () (InoxSet Context!1018))

(assert (=> setNonEmpty!7687 (= setRest!7684 ((_ map or) (store ((as const (Array Context!1018 Bool)) false) setElem!7687 true) setRest!7687))))

(declare-fun b!1087984 () Bool)

(declare-fun tp!326091 () Bool)

(assert (=> b!1087984 (= e!688239 tp!326091)))

(assert (= (and setNonEmpty!7684 condSetEmpty!7687) setIsEmpty!7687))

(assert (= (and setNonEmpty!7684 (not condSetEmpty!7687)) setNonEmpty!7687))

(assert (= setNonEmpty!7687 b!1087984))

(declare-fun m!1238369 () Bool)

(assert (=> setNonEmpty!7687 m!1238369))

(declare-fun b!1087989 () Bool)

(declare-fun e!688242 () Bool)

(declare-fun tp!326096 () Bool)

(declare-fun tp!326097 () Bool)

(assert (=> b!1087989 (= e!688242 (and tp!326096 tp!326097))))

(assert (=> b!1087931 (= tp!326082 e!688242)))

(assert (= (and b!1087931 ((_ is Cons!10374) (exprs!1009 setElem!7684))) b!1087989))

(declare-fun b!1087997 () Bool)

(declare-fun e!688248 () Bool)

(declare-fun tp!326102 () Bool)

(assert (=> b!1087997 (= e!688248 tp!326102)))

(declare-fun e!688247 () Bool)

(declare-fun b!1087996 () Bool)

(declare-fun tp!326103 () Bool)

(assert (=> b!1087996 (= e!688247 (and (inv!13285 (h!15776 (t!101437 zl!316))) e!688248 tp!326103))))

(assert (=> b!1087935 (= tp!326081 e!688247)))

(assert (= b!1087996 b!1087997))

(assert (= (and b!1087935 ((_ is Cons!10375) (t!101437 zl!316))) b!1087996))

(declare-fun m!1238375 () Bool)

(assert (=> b!1087996 m!1238375))

(declare-fun b!1087999 () Bool)

(declare-fun e!688250 () Bool)

(declare-fun tp!326104 () Bool)

(declare-fun tp!326105 () Bool)

(assert (=> b!1087999 (= e!688250 (and tp!326104 tp!326105))))

(assert (=> b!1087932 (= tp!326078 e!688250)))

(assert (= (and b!1087932 ((_ is Cons!10374) (exprs!1009 (h!15776 zl!316)))) b!1087999))

(check-sat (not d!305948) (not setNonEmpty!7687) (not b!1087940) (not b!1087958) (not d!305944) (not d!305962) tp_is_empty!5689 (not b!1087989) (not d!305936) (not b!1087996) (not b!1087984) (not b!1087999) (not d!305940) (not b!1087974) (not b!1087979) (not b!1087942) (not b!1087941) (not d!305938) (not d!305950) (not d!305932) (not b!1087962) (not b!1087973) (not b!1087997) (not b!1087943) (not b!1087961))
(check-sat)
