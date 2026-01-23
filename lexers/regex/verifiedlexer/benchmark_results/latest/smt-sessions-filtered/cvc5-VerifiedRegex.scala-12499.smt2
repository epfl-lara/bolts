; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695130 () Bool)

(assert start!695130)

(declare-fun b!7134214 () Bool)

(declare-fun e!4287660 () Bool)

(declare-fun tp!1966603 () Bool)

(assert (=> b!7134214 (= e!4287660 tp!1966603)))

(declare-fun b!7134215 () Bool)

(declare-fun tp!1966604 () Bool)

(declare-fun tp!1966602 () Bool)

(assert (=> b!7134215 (= e!4287660 (and tp!1966604 tp!1966602))))

(declare-fun setIsEmpty!52286 () Bool)

(declare-fun setRes!52286 () Bool)

(assert (=> setIsEmpty!52286 setRes!52286))

(declare-fun b!7134216 () Bool)

(declare-fun tp!1966601 () Bool)

(declare-fun tp!1966598 () Bool)

(assert (=> b!7134216 (= e!4287660 (and tp!1966601 tp!1966598))))

(declare-fun b!7134217 () Bool)

(declare-fun e!4287662 () Bool)

(declare-fun tp!1966600 () Bool)

(assert (=> b!7134217 (= e!4287662 tp!1966600)))

(declare-fun tp!1966599 () Bool)

(declare-fun setNonEmpty!52286 () Bool)

(declare-datatypes ((C!36486 0))(
  ( (C!36487 (val!28191 Int)) )
))
(declare-datatypes ((Regex!18106 0))(
  ( (ElementMatch!18106 (c!1330511 C!36486)) (Concat!26951 (regOne!36724 Regex!18106) (regTwo!36724 Regex!18106)) (EmptyExpr!18106) (Star!18106 (reg!18435 Regex!18106)) (EmptyLang!18106) (Union!18106 (regOne!36725 Regex!18106) (regTwo!36725 Regex!18106)) )
))
(declare-datatypes ((List!69290 0))(
  ( (Nil!69166) (Cons!69166 (h!75614 Regex!18106) (t!383307 List!69290)) )
))
(declare-datatypes ((Context!14200 0))(
  ( (Context!14201 (exprs!7600 List!69290)) )
))
(declare-fun setElem!52286 () Context!14200)

(declare-fun inv!88330 (Context!14200) Bool)

(assert (=> setNonEmpty!52286 (= setRes!52286 (and tp!1966599 (inv!88330 setElem!52286) e!4287662))))

(declare-fun z!3189 () (Set Context!14200))

(declare-fun setRest!52286 () (Set Context!14200))

(assert (=> setNonEmpty!52286 (= z!3189 (set.union (set.insert setElem!52286 (as set.empty (Set Context!14200))) setRest!52286))))

(declare-fun b!7134218 () Bool)

(declare-fun e!4287659 () Bool)

(declare-fun e!4287661 () Bool)

(assert (=> b!7134218 (= e!4287659 e!4287661)))

(declare-fun res!2910968 () Bool)

(assert (=> b!7134218 (=> (not res!2910968) (not e!4287661))))

(declare-fun r!11483 () Regex!18106)

(declare-datatypes ((List!69291 0))(
  ( (Nil!69167) (Cons!69167 (h!75615 Context!14200) (t!383308 List!69291)) )
))
(declare-fun lt!2565347 () List!69291)

(declare-fun unfocusZipper!2454 (List!69291) Regex!18106)

(assert (=> b!7134218 (= res!2910968 (= r!11483 (unfocusZipper!2454 lt!2565347)))))

(declare-fun toList!11137 ((Set Context!14200)) List!69291)

(assert (=> b!7134218 (= lt!2565347 (toList!11137 z!3189))))

(declare-fun res!2910969 () Bool)

(assert (=> start!695130 (=> (not res!2910969) (not e!4287659))))

(declare-fun validRegex!9273 (Regex!18106) Bool)

(assert (=> start!695130 (= res!2910969 (validRegex!9273 r!11483))))

(assert (=> start!695130 e!4287659))

(assert (=> start!695130 e!4287660))

(declare-fun condSetEmpty!52286 () Bool)

(assert (=> start!695130 (= condSetEmpty!52286 (= z!3189 (as set.empty (Set Context!14200))))))

(assert (=> start!695130 setRes!52286))

(declare-fun b!7134219 () Bool)

(declare-fun lambda!433275 () Int)

(declare-fun forall!16954 (List!69290 Int) Bool)

(declare-fun unfocusZipperList!2147 (List!69291) List!69290)

(assert (=> b!7134219 (= e!4287661 (not (forall!16954 (unfocusZipperList!2147 lt!2565347) lambda!433275)))))

(declare-fun b!7134220 () Bool)

(declare-fun tp_is_empty!45849 () Bool)

(assert (=> b!7134220 (= e!4287660 tp_is_empty!45849)))

(assert (= (and start!695130 res!2910969) b!7134218))

(assert (= (and b!7134218 res!2910968) b!7134219))

(assert (= (and start!695130 (is-ElementMatch!18106 r!11483)) b!7134220))

(assert (= (and start!695130 (is-Concat!26951 r!11483)) b!7134216))

(assert (= (and start!695130 (is-Star!18106 r!11483)) b!7134214))

(assert (= (and start!695130 (is-Union!18106 r!11483)) b!7134215))

(assert (= (and start!695130 condSetEmpty!52286) setIsEmpty!52286))

(assert (= (and start!695130 (not condSetEmpty!52286)) setNonEmpty!52286))

(assert (= setNonEmpty!52286 b!7134217))

(declare-fun m!7851018 () Bool)

(assert (=> setNonEmpty!52286 m!7851018))

(declare-fun m!7851020 () Bool)

(assert (=> b!7134218 m!7851020))

(declare-fun m!7851022 () Bool)

(assert (=> b!7134218 m!7851022))

(declare-fun m!7851024 () Bool)

(assert (=> start!695130 m!7851024))

(declare-fun m!7851026 () Bool)

(assert (=> b!7134219 m!7851026))

(assert (=> b!7134219 m!7851026))

(declare-fun m!7851028 () Bool)

(assert (=> b!7134219 m!7851028))

(push 1)

(assert (not b!7134214))

(assert (not setNonEmpty!52286))

(assert (not b!7134215))

(assert tp_is_empty!45849)

(assert (not b!7134217))

(assert (not b!7134219))

(assert (not start!695130))

(assert (not b!7134218))

(assert (not b!7134216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2226128 () Bool)

(declare-fun lt!2565353 () Regex!18106)

(assert (=> d!2226128 (validRegex!9273 lt!2565353)))

(declare-fun generalisedUnion!2611 (List!69290) Regex!18106)

(assert (=> d!2226128 (= lt!2565353 (generalisedUnion!2611 (unfocusZipperList!2147 lt!2565347)))))

(assert (=> d!2226128 (= (unfocusZipper!2454 lt!2565347) lt!2565353)))

(declare-fun bs!1887083 () Bool)

(assert (= bs!1887083 d!2226128))

(declare-fun m!7851042 () Bool)

(assert (=> bs!1887083 m!7851042))

(assert (=> bs!1887083 m!7851026))

(assert (=> bs!1887083 m!7851026))

(declare-fun m!7851044 () Bool)

(assert (=> bs!1887083 m!7851044))

(assert (=> b!7134218 d!2226128))

(declare-fun d!2226130 () Bool)

(declare-fun e!4287677 () Bool)

(assert (=> d!2226130 e!4287677))

(declare-fun res!2910978 () Bool)

(assert (=> d!2226130 (=> (not res!2910978) (not e!4287677))))

(declare-fun lt!2565356 () List!69291)

(declare-fun noDuplicate!2803 (List!69291) Bool)

(assert (=> d!2226130 (= res!2910978 (noDuplicate!2803 lt!2565356))))

(declare-fun choose!55142 ((Set Context!14200)) List!69291)

(assert (=> d!2226130 (= lt!2565356 (choose!55142 z!3189))))

(assert (=> d!2226130 (= (toList!11137 z!3189) lt!2565356)))

(declare-fun b!7134244 () Bool)

(declare-fun content!14154 (List!69291) (Set Context!14200))

(assert (=> b!7134244 (= e!4287677 (= (content!14154 lt!2565356) z!3189))))

(assert (= (and d!2226130 res!2910978) b!7134244))

(declare-fun m!7851046 () Bool)

(assert (=> d!2226130 m!7851046))

(declare-fun m!7851048 () Bool)

(assert (=> d!2226130 m!7851048))

(declare-fun m!7851050 () Bool)

(assert (=> b!7134244 m!7851050))

(assert (=> b!7134218 d!2226130))

(declare-fun bs!1887084 () Bool)

(declare-fun d!2226132 () Bool)

(assert (= bs!1887084 (and d!2226132 b!7134219)))

(declare-fun lambda!433281 () Int)

(assert (=> bs!1887084 (= lambda!433281 lambda!433275)))

(assert (=> d!2226132 (= (inv!88330 setElem!52286) (forall!16954 (exprs!7600 setElem!52286) lambda!433281))))

(declare-fun bs!1887085 () Bool)

(assert (= bs!1887085 d!2226132))

(declare-fun m!7851052 () Bool)

(assert (=> bs!1887085 m!7851052))

(assert (=> setNonEmpty!52286 d!2226132))

(declare-fun d!2226134 () Bool)

(declare-fun res!2910983 () Bool)

(declare-fun e!4287682 () Bool)

(assert (=> d!2226134 (=> res!2910983 e!4287682)))

(assert (=> d!2226134 (= res!2910983 (is-Nil!69166 (unfocusZipperList!2147 lt!2565347)))))

(assert (=> d!2226134 (= (forall!16954 (unfocusZipperList!2147 lt!2565347) lambda!433275) e!4287682)))

(declare-fun b!7134249 () Bool)

(declare-fun e!4287683 () Bool)

(assert (=> b!7134249 (= e!4287682 e!4287683)))

(declare-fun res!2910984 () Bool)

(assert (=> b!7134249 (=> (not res!2910984) (not e!4287683))))

(declare-fun dynLambda!28131 (Int Regex!18106) Bool)

(assert (=> b!7134249 (= res!2910984 (dynLambda!28131 lambda!433275 (h!75614 (unfocusZipperList!2147 lt!2565347))))))

(declare-fun b!7134250 () Bool)

(assert (=> b!7134250 (= e!4287683 (forall!16954 (t!383307 (unfocusZipperList!2147 lt!2565347)) lambda!433275))))

(assert (= (and d!2226134 (not res!2910983)) b!7134249))

(assert (= (and b!7134249 res!2910984) b!7134250))

(declare-fun b_lambda!272197 () Bool)

(assert (=> (not b_lambda!272197) (not b!7134249)))

(declare-fun m!7851054 () Bool)

(assert (=> b!7134249 m!7851054))

(declare-fun m!7851056 () Bool)

(assert (=> b!7134250 m!7851056))

(assert (=> b!7134219 d!2226134))

(declare-fun bs!1887086 () Bool)

(declare-fun d!2226136 () Bool)

(assert (= bs!1887086 (and d!2226136 b!7134219)))

(declare-fun lambda!433284 () Int)

(assert (=> bs!1887086 (= lambda!433284 lambda!433275)))

(declare-fun bs!1887087 () Bool)

(assert (= bs!1887087 (and d!2226136 d!2226132)))

(assert (=> bs!1887087 (= lambda!433284 lambda!433281)))

(declare-fun lt!2565359 () List!69290)

(assert (=> d!2226136 (forall!16954 lt!2565359 lambda!433284)))

(declare-fun e!4287686 () List!69290)

(assert (=> d!2226136 (= lt!2565359 e!4287686)))

(declare-fun c!1330515 () Bool)

(assert (=> d!2226136 (= c!1330515 (is-Cons!69167 lt!2565347))))

(assert (=> d!2226136 (= (unfocusZipperList!2147 lt!2565347) lt!2565359)))

(declare-fun b!7134255 () Bool)

(declare-fun generalisedConcat!2312 (List!69290) Regex!18106)

(assert (=> b!7134255 (= e!4287686 (Cons!69166 (generalisedConcat!2312 (exprs!7600 (h!75615 lt!2565347))) (unfocusZipperList!2147 (t!383308 lt!2565347))))))

(declare-fun b!7134256 () Bool)

(assert (=> b!7134256 (= e!4287686 Nil!69166)))

(assert (= (and d!2226136 c!1330515) b!7134255))

(assert (= (and d!2226136 (not c!1330515)) b!7134256))

(declare-fun m!7851058 () Bool)

(assert (=> d!2226136 m!7851058))

(declare-fun m!7851060 () Bool)

(assert (=> b!7134255 m!7851060))

(declare-fun m!7851062 () Bool)

(assert (=> b!7134255 m!7851062))

(assert (=> b!7134219 d!2226136))

(declare-fun b!7134275 () Bool)

(declare-fun e!4287703 () Bool)

(declare-fun call!650900 () Bool)

(assert (=> b!7134275 (= e!4287703 call!650900)))

(declare-fun b!7134276 () Bool)

(declare-fun e!4287701 () Bool)

(assert (=> b!7134276 (= e!4287701 e!4287703)))

(declare-fun res!2910998 () Bool)

(assert (=> b!7134276 (=> (not res!2910998) (not e!4287703))))

(declare-fun call!650899 () Bool)

(assert (=> b!7134276 (= res!2910998 call!650899)))

(declare-fun b!7134277 () Bool)

(declare-fun res!2910996 () Bool)

(declare-fun e!4287707 () Bool)

(assert (=> b!7134277 (=> (not res!2910996) (not e!4287707))))

(assert (=> b!7134277 (= res!2910996 call!650899)))

(declare-fun e!4287702 () Bool)

(assert (=> b!7134277 (= e!4287702 e!4287707)))

(declare-fun b!7134278 () Bool)

(declare-fun e!4287704 () Bool)

(assert (=> b!7134278 (= e!4287704 e!4287702)))

(declare-fun c!1330521 () Bool)

(assert (=> b!7134278 (= c!1330521 (is-Union!18106 r!11483))))

(declare-fun b!7134279 () Bool)

(declare-fun res!2910995 () Bool)

(assert (=> b!7134279 (=> res!2910995 e!4287701)))

(assert (=> b!7134279 (= res!2910995 (not (is-Concat!26951 r!11483)))))

(assert (=> b!7134279 (= e!4287702 e!4287701)))

(declare-fun b!7134281 () Bool)

(declare-fun e!4287705 () Bool)

(assert (=> b!7134281 (= e!4287705 e!4287704)))

(declare-fun c!1330520 () Bool)

(assert (=> b!7134281 (= c!1330520 (is-Star!18106 r!11483))))

(declare-fun b!7134282 () Bool)

(declare-fun e!4287706 () Bool)

(declare-fun call!650901 () Bool)

(assert (=> b!7134282 (= e!4287706 call!650901)))

(declare-fun bm!650894 () Bool)

(assert (=> bm!650894 (= call!650901 (validRegex!9273 (ite c!1330520 (reg!18435 r!11483) (ite c!1330521 (regOne!36725 r!11483) (regOne!36724 r!11483)))))))

(declare-fun bm!650895 () Bool)

(assert (=> bm!650895 (= call!650899 call!650901)))

(declare-fun bm!650896 () Bool)

(assert (=> bm!650896 (= call!650900 (validRegex!9273 (ite c!1330521 (regTwo!36725 r!11483) (regTwo!36724 r!11483))))))

(declare-fun b!7134283 () Bool)

(assert (=> b!7134283 (= e!4287707 call!650900)))

(declare-fun b!7134280 () Bool)

(assert (=> b!7134280 (= e!4287704 e!4287706)))

(declare-fun res!2910999 () Bool)

(declare-fun nullable!7630 (Regex!18106) Bool)

(assert (=> b!7134280 (= res!2910999 (not (nullable!7630 (reg!18435 r!11483))))))

(assert (=> b!7134280 (=> (not res!2910999) (not e!4287706))))

(declare-fun d!2226140 () Bool)

(declare-fun res!2910997 () Bool)

(assert (=> d!2226140 (=> res!2910997 e!4287705)))

(assert (=> d!2226140 (= res!2910997 (is-ElementMatch!18106 r!11483))))

(assert (=> d!2226140 (= (validRegex!9273 r!11483) e!4287705)))

(assert (= (and d!2226140 (not res!2910997)) b!7134281))

(assert (= (and b!7134281 c!1330520) b!7134280))

(assert (= (and b!7134281 (not c!1330520)) b!7134278))

(assert (= (and b!7134280 res!2910999) b!7134282))

(assert (= (and b!7134278 c!1330521) b!7134277))

(assert (= (and b!7134278 (not c!1330521)) b!7134279))

(assert (= (and b!7134277 res!2910996) b!7134283))

(assert (= (and b!7134279 (not res!2910995)) b!7134276))

(assert (= (and b!7134276 res!2910998) b!7134275))

(assert (= (or b!7134283 b!7134275) bm!650896))

(assert (= (or b!7134277 b!7134276) bm!650895))

(assert (= (or b!7134282 bm!650895) bm!650894))

(declare-fun m!7851068 () Bool)

(assert (=> bm!650894 m!7851068))

(declare-fun m!7851070 () Bool)

(assert (=> bm!650896 m!7851070))

(declare-fun m!7851072 () Bool)

(assert (=> b!7134280 m!7851072))

(assert (=> start!695130 d!2226140))

(declare-fun e!4287712 () Bool)

(assert (=> b!7134214 (= tp!1966603 e!4287712)))

(declare-fun b!7134299 () Bool)

(declare-fun tp!1966637 () Bool)

(declare-fun tp!1966636 () Bool)

(assert (=> b!7134299 (= e!4287712 (and tp!1966637 tp!1966636))))

(declare-fun b!7134297 () Bool)

(declare-fun tp!1966639 () Bool)

(declare-fun tp!1966638 () Bool)

(assert (=> b!7134297 (= e!4287712 (and tp!1966639 tp!1966638))))

(declare-fun b!7134298 () Bool)

(declare-fun tp!1966640 () Bool)

(assert (=> b!7134298 (= e!4287712 tp!1966640)))

(declare-fun b!7134296 () Bool)

(assert (=> b!7134296 (= e!4287712 tp_is_empty!45849)))

(assert (= (and b!7134214 (is-ElementMatch!18106 (reg!18435 r!11483))) b!7134296))

(assert (= (and b!7134214 (is-Concat!26951 (reg!18435 r!11483))) b!7134297))

(assert (= (and b!7134214 (is-Star!18106 (reg!18435 r!11483))) b!7134298))

(assert (= (and b!7134214 (is-Union!18106 (reg!18435 r!11483))) b!7134299))

(declare-fun e!4287713 () Bool)

(assert (=> b!7134215 (= tp!1966604 e!4287713)))

(declare-fun b!7134303 () Bool)

(declare-fun tp!1966642 () Bool)

(declare-fun tp!1966641 () Bool)

(assert (=> b!7134303 (= e!4287713 (and tp!1966642 tp!1966641))))

(declare-fun b!7134301 () Bool)

(declare-fun tp!1966644 () Bool)

(declare-fun tp!1966643 () Bool)

(assert (=> b!7134301 (= e!4287713 (and tp!1966644 tp!1966643))))

(declare-fun b!7134302 () Bool)

(declare-fun tp!1966645 () Bool)

(assert (=> b!7134302 (= e!4287713 tp!1966645)))

(declare-fun b!7134300 () Bool)

(assert (=> b!7134300 (= e!4287713 tp_is_empty!45849)))

(assert (= (and b!7134215 (is-ElementMatch!18106 (regOne!36725 r!11483))) b!7134300))

(assert (= (and b!7134215 (is-Concat!26951 (regOne!36725 r!11483))) b!7134301))

(assert (= (and b!7134215 (is-Star!18106 (regOne!36725 r!11483))) b!7134302))

(assert (= (and b!7134215 (is-Union!18106 (regOne!36725 r!11483))) b!7134303))

(declare-fun e!4287715 () Bool)

(assert (=> b!7134215 (= tp!1966602 e!4287715)))

(declare-fun b!7134308 () Bool)

(declare-fun tp!1966647 () Bool)

(declare-fun tp!1966646 () Bool)

(assert (=> b!7134308 (= e!4287715 (and tp!1966647 tp!1966646))))

(declare-fun b!7134306 () Bool)

(declare-fun tp!1966649 () Bool)

(declare-fun tp!1966648 () Bool)

(assert (=> b!7134306 (= e!4287715 (and tp!1966649 tp!1966648))))

(declare-fun b!7134307 () Bool)

(declare-fun tp!1966650 () Bool)

(assert (=> b!7134307 (= e!4287715 tp!1966650)))

(declare-fun b!7134305 () Bool)

(assert (=> b!7134305 (= e!4287715 tp_is_empty!45849)))

(assert (= (and b!7134215 (is-ElementMatch!18106 (regTwo!36725 r!11483))) b!7134305))

(assert (= (and b!7134215 (is-Concat!26951 (regTwo!36725 r!11483))) b!7134306))

(assert (= (and b!7134215 (is-Star!18106 (regTwo!36725 r!11483))) b!7134307))

(assert (= (and b!7134215 (is-Union!18106 (regTwo!36725 r!11483))) b!7134308))

(declare-fun b!7134313 () Bool)

(declare-fun e!4287718 () Bool)

(declare-fun tp!1966655 () Bool)

(declare-fun tp!1966656 () Bool)

(assert (=> b!7134313 (= e!4287718 (and tp!1966655 tp!1966656))))

(assert (=> b!7134217 (= tp!1966600 e!4287718)))

(assert (= (and b!7134217 (is-Cons!69166 (exprs!7600 setElem!52286))) b!7134313))

(declare-fun condSetEmpty!52292 () Bool)

(assert (=> setNonEmpty!52286 (= condSetEmpty!52292 (= setRest!52286 (as set.empty (Set Context!14200))))))

(declare-fun setRes!52292 () Bool)

(assert (=> setNonEmpty!52286 (= tp!1966599 setRes!52292)))

(declare-fun setIsEmpty!52292 () Bool)

(assert (=> setIsEmpty!52292 setRes!52292))

(declare-fun setElem!52292 () Context!14200)

(declare-fun tp!1966662 () Bool)

(declare-fun e!4287721 () Bool)

(declare-fun setNonEmpty!52292 () Bool)

(assert (=> setNonEmpty!52292 (= setRes!52292 (and tp!1966662 (inv!88330 setElem!52292) e!4287721))))

(declare-fun setRest!52292 () (Set Context!14200))

(assert (=> setNonEmpty!52292 (= setRest!52286 (set.union (set.insert setElem!52292 (as set.empty (Set Context!14200))) setRest!52292))))

(declare-fun b!7134318 () Bool)

(declare-fun tp!1966661 () Bool)

(assert (=> b!7134318 (= e!4287721 tp!1966661)))

(assert (= (and setNonEmpty!52286 condSetEmpty!52292) setIsEmpty!52292))

(assert (= (and setNonEmpty!52286 (not condSetEmpty!52292)) setNonEmpty!52292))

(assert (= setNonEmpty!52292 b!7134318))

(declare-fun m!7851080 () Bool)

(assert (=> setNonEmpty!52292 m!7851080))

(declare-fun e!4287722 () Bool)

(assert (=> b!7134216 (= tp!1966601 e!4287722)))

(declare-fun b!7134322 () Bool)

(declare-fun tp!1966664 () Bool)

(declare-fun tp!1966663 () Bool)

(assert (=> b!7134322 (= e!4287722 (and tp!1966664 tp!1966663))))

(declare-fun b!7134320 () Bool)

(declare-fun tp!1966666 () Bool)

(declare-fun tp!1966665 () Bool)

(assert (=> b!7134320 (= e!4287722 (and tp!1966666 tp!1966665))))

(declare-fun b!7134321 () Bool)

(declare-fun tp!1966667 () Bool)

(assert (=> b!7134321 (= e!4287722 tp!1966667)))

(declare-fun b!7134319 () Bool)

(assert (=> b!7134319 (= e!4287722 tp_is_empty!45849)))

(assert (= (and b!7134216 (is-ElementMatch!18106 (regOne!36724 r!11483))) b!7134319))

(assert (= (and b!7134216 (is-Concat!26951 (regOne!36724 r!11483))) b!7134320))

(assert (= (and b!7134216 (is-Star!18106 (regOne!36724 r!11483))) b!7134321))

(assert (= (and b!7134216 (is-Union!18106 (regOne!36724 r!11483))) b!7134322))

(declare-fun e!4287723 () Bool)

(assert (=> b!7134216 (= tp!1966598 e!4287723)))

(declare-fun b!7134326 () Bool)

(declare-fun tp!1966669 () Bool)

(declare-fun tp!1966668 () Bool)

(assert (=> b!7134326 (= e!4287723 (and tp!1966669 tp!1966668))))

(declare-fun b!7134324 () Bool)

(declare-fun tp!1966671 () Bool)

(declare-fun tp!1966670 () Bool)

(assert (=> b!7134324 (= e!4287723 (and tp!1966671 tp!1966670))))

(declare-fun b!7134325 () Bool)

(declare-fun tp!1966672 () Bool)

(assert (=> b!7134325 (= e!4287723 tp!1966672)))

(declare-fun b!7134323 () Bool)

(assert (=> b!7134323 (= e!4287723 tp_is_empty!45849)))

(assert (= (and b!7134216 (is-ElementMatch!18106 (regTwo!36724 r!11483))) b!7134323))

(assert (= (and b!7134216 (is-Concat!26951 (regTwo!36724 r!11483))) b!7134324))

(assert (= (and b!7134216 (is-Star!18106 (regTwo!36724 r!11483))) b!7134325))

(assert (= (and b!7134216 (is-Union!18106 (regTwo!36724 r!11483))) b!7134326))

(declare-fun b_lambda!272199 () Bool)

(assert (= b_lambda!272197 (or b!7134219 b_lambda!272199)))

(declare-fun bs!1887089 () Bool)

(declare-fun d!2226146 () Bool)

(assert (= bs!1887089 (and d!2226146 b!7134219)))

(assert (=> bs!1887089 (= (dynLambda!28131 lambda!433275 (h!75614 (unfocusZipperList!2147 lt!2565347))) (validRegex!9273 (h!75614 (unfocusZipperList!2147 lt!2565347))))))

(declare-fun m!7851082 () Bool)

(assert (=> bs!1887089 m!7851082))

(assert (=> b!7134249 d!2226146))

(push 1)

(assert (not b!7134255))

(assert (not b!7134326))

(assert (not b!7134313))

(assert (not bm!650894))

(assert (not b!7134318))

(assert (not b!7134324))

(assert (not b!7134298))

(assert (not b!7134306))

(assert (not b!7134302))

(assert (not b!7134303))

(assert (not d!2226136))

(assert (not d!2226128))

(assert (not b!7134321))

(assert (not b!7134322))

(assert (not d!2226132))

(assert (not b_lambda!272199))

(assert (not b!7134299))

(assert (not b!7134307))

(assert (not b!7134320))

(assert (not b!7134308))

(assert tp_is_empty!45849)

(assert (not d!2226130))

(assert (not b!7134301))

(assert (not setNonEmpty!52292))

(assert (not b!7134297))

(assert (not b!7134244))

(assert (not b!7134250))

(assert (not bs!1887089))

(assert (not b!7134325))

(assert (not b!7134280))

(assert (not bm!650896))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

