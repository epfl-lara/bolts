; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82448 () Bool)

(assert start!82448)

(declare-fun b!917410 () Bool)

(assert (=> b!917410 true))

(assert (=> b!917410 true))

(declare-fun lambda!29610 () Int)

(declare-fun lambda!29609 () Int)

(assert (=> b!917410 (not (= lambda!29610 lambda!29609))))

(assert (=> b!917410 true))

(assert (=> b!917410 true))

(declare-fun bs!236180 () Bool)

(declare-fun b!917412 () Bool)

(assert (= bs!236180 (and b!917412 b!917410)))

(declare-datatypes ((C!5498 0))(
  ( (C!5499 (val!2997 Int)) )
))
(declare-datatypes ((Regex!2464 0))(
  ( (ElementMatch!2464 (c!148719 C!5498)) (Concat!4297 (regOne!5440 Regex!2464) (regTwo!5440 Regex!2464)) (EmptyExpr!2464) (Star!2464 (reg!2793 Regex!2464)) (EmptyLang!2464) (Union!2464 (regOne!5441 Regex!2464) (regTwo!5441 Regex!2464)) )
))
(declare-fun lt!337737 () Regex!2464)

(declare-fun r!15766 () Regex!2464)

(declare-fun lt!337735 () Regex!2464)

(declare-fun lambda!29611 () Int)

(assert (=> bs!236180 (= (and (= lt!337737 (regOne!5440 r!15766)) (= lt!337735 (regTwo!5440 r!15766))) (= lambda!29611 lambda!29609))))

(assert (=> bs!236180 (not (= lambda!29611 lambda!29610))))

(assert (=> b!917412 true))

(assert (=> b!917412 true))

(assert (=> b!917412 true))

(declare-fun res!417091 () Bool)

(declare-fun e!597706 () Bool)

(assert (=> start!82448 (=> (not res!417091) (not e!597706))))

(declare-fun validRegex!933 (Regex!2464) Bool)

(assert (=> start!82448 (= res!417091 (validRegex!933 r!15766))))

(assert (=> start!82448 e!597706))

(declare-fun e!597702 () Bool)

(assert (=> start!82448 e!597702))

(declare-fun e!597705 () Bool)

(assert (=> start!82448 e!597705))

(declare-fun b!917408 () Bool)

(declare-fun e!597707 () Bool)

(assert (=> b!917408 (= e!597706 (not e!597707))))

(declare-fun res!417094 () Bool)

(assert (=> b!917408 (=> res!417094 e!597707)))

(declare-fun lt!337732 () Bool)

(assert (=> b!917408 (= res!417094 (or lt!337732 (and (is-Concat!4297 r!15766) (is-EmptyExpr!2464 (regOne!5440 r!15766))) (and (is-Concat!4297 r!15766) (is-EmptyExpr!2464 (regTwo!5440 r!15766))) (not (is-Concat!4297 r!15766))))))

(declare-datatypes ((List!9694 0))(
  ( (Nil!9678) (Cons!9678 (h!15079 C!5498) (t!100740 List!9694)) )
))
(declare-fun s!10566 () List!9694)

(declare-fun matchRSpec!265 (Regex!2464 List!9694) Bool)

(assert (=> b!917408 (= lt!337732 (matchRSpec!265 r!15766 s!10566))))

(declare-fun matchR!1002 (Regex!2464 List!9694) Bool)

(assert (=> b!917408 (= lt!337732 (matchR!1002 r!15766 s!10566))))

(declare-datatypes ((Unit!14547 0))(
  ( (Unit!14548) )
))
(declare-fun lt!337738 () Unit!14547)

(declare-fun mainMatchTheorem!265 (Regex!2464 List!9694) Unit!14547)

(assert (=> b!917408 (= lt!337738 (mainMatchTheorem!265 r!15766 s!10566))))

(declare-fun b!917409 () Bool)

(declare-fun tp!286282 () Bool)

(declare-fun tp!286286 () Bool)

(assert (=> b!917409 (= e!597702 (and tp!286282 tp!286286))))

(declare-fun e!597704 () Bool)

(assert (=> b!917410 (= e!597707 e!597704)))

(declare-fun res!417093 () Bool)

(assert (=> b!917410 (=> res!417093 e!597704)))

(declare-fun isEmpty!5911 (List!9694) Bool)

(assert (=> b!917410 (= res!417093 (isEmpty!5911 s!10566))))

(declare-fun Exists!235 (Int) Bool)

(assert (=> b!917410 (= (Exists!235 lambda!29609) (Exists!235 lambda!29610))))

(declare-fun lt!337739 () Unit!14547)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!147 (Regex!2464 Regex!2464 List!9694) Unit!14547)

(assert (=> b!917410 (= lt!337739 (lemmaExistCutMatchRandMatchRSpecEquivalent!147 (regOne!5440 r!15766) (regTwo!5440 r!15766) s!10566))))

(declare-datatypes ((tuple2!10914 0))(
  ( (tuple2!10915 (_1!6283 List!9694) (_2!6283 List!9694)) )
))
(declare-datatypes ((Option!2099 0))(
  ( (None!2098) (Some!2098 (v!19515 tuple2!10914)) )
))
(declare-fun isDefined!1741 (Option!2099) Bool)

(declare-fun findConcatSeparation!205 (Regex!2464 Regex!2464 List!9694 List!9694 List!9694) Option!2099)

(assert (=> b!917410 (= (isDefined!1741 (findConcatSeparation!205 (regOne!5440 r!15766) (regTwo!5440 r!15766) Nil!9678 s!10566 s!10566)) (Exists!235 lambda!29609))))

(declare-fun lt!337736 () Unit!14547)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!205 (Regex!2464 Regex!2464 List!9694) Unit!14547)

(assert (=> b!917410 (= lt!337736 (lemmaFindConcatSeparationEquivalentToExists!205 (regOne!5440 r!15766) (regTwo!5440 r!15766) s!10566))))

(declare-fun b!917411 () Bool)

(declare-fun tp_is_empty!4571 () Bool)

(declare-fun tp!286283 () Bool)

(assert (=> b!917411 (= e!597705 (and tp_is_empty!4571 tp!286283))))

(declare-fun e!597703 () Bool)

(assert (=> b!917412 (= e!597703 (validRegex!933 (regOne!5440 r!15766)))))

(assert (=> b!917412 (= (isDefined!1741 (findConcatSeparation!205 lt!337737 lt!337735 Nil!9678 s!10566 s!10566)) (Exists!235 lambda!29611))))

(declare-fun lt!337740 () Unit!14547)

(assert (=> b!917412 (= lt!337740 (lemmaFindConcatSeparationEquivalentToExists!205 lt!337737 lt!337735 s!10566))))

(declare-fun lt!337734 () Regex!2464)

(assert (=> b!917412 (matchRSpec!265 lt!337734 s!10566)))

(declare-fun lt!337733 () Unit!14547)

(assert (=> b!917412 (= lt!337733 (mainMatchTheorem!265 lt!337734 s!10566))))

(declare-fun b!917413 () Bool)

(declare-fun tp!286281 () Bool)

(declare-fun tp!286285 () Bool)

(assert (=> b!917413 (= e!597702 (and tp!286281 tp!286285))))

(declare-fun b!917414 () Bool)

(declare-fun tp!286284 () Bool)

(assert (=> b!917414 (= e!597702 tp!286284)))

(declare-fun b!917415 () Bool)

(assert (=> b!917415 (= e!597704 e!597703)))

(declare-fun res!417092 () Bool)

(assert (=> b!917415 (=> res!417092 e!597703)))

(assert (=> b!917415 (= res!417092 (not (matchR!1002 lt!337734 s!10566)))))

(assert (=> b!917415 (= lt!337734 (Concat!4297 lt!337737 lt!337735))))

(declare-fun removeUselessConcat!141 (Regex!2464) Regex!2464)

(assert (=> b!917415 (= lt!337735 (removeUselessConcat!141 (regTwo!5440 r!15766)))))

(assert (=> b!917415 (= lt!337737 (removeUselessConcat!141 (regOne!5440 r!15766)))))

(declare-fun b!917416 () Bool)

(assert (=> b!917416 (= e!597702 tp_is_empty!4571)))

(assert (= (and start!82448 res!417091) b!917408))

(assert (= (and b!917408 (not res!417094)) b!917410))

(assert (= (and b!917410 (not res!417093)) b!917415))

(assert (= (and b!917415 (not res!417092)) b!917412))

(assert (= (and start!82448 (is-ElementMatch!2464 r!15766)) b!917416))

(assert (= (and start!82448 (is-Concat!4297 r!15766)) b!917413))

(assert (= (and start!82448 (is-Star!2464 r!15766)) b!917414))

(assert (= (and start!82448 (is-Union!2464 r!15766)) b!917409))

(assert (= (and start!82448 (is-Cons!9678 s!10566)) b!917411))

(declare-fun m!1146169 () Bool)

(assert (=> b!917408 m!1146169))

(declare-fun m!1146171 () Bool)

(assert (=> b!917408 m!1146171))

(declare-fun m!1146173 () Bool)

(assert (=> b!917408 m!1146173))

(declare-fun m!1146175 () Bool)

(assert (=> b!917410 m!1146175))

(declare-fun m!1146177 () Bool)

(assert (=> b!917410 m!1146177))

(declare-fun m!1146179 () Bool)

(assert (=> b!917410 m!1146179))

(declare-fun m!1146181 () Bool)

(assert (=> b!917410 m!1146181))

(declare-fun m!1146183 () Bool)

(assert (=> b!917410 m!1146183))

(declare-fun m!1146185 () Bool)

(assert (=> b!917410 m!1146185))

(assert (=> b!917410 m!1146179))

(declare-fun m!1146187 () Bool)

(assert (=> b!917410 m!1146187))

(assert (=> b!917410 m!1146175))

(declare-fun m!1146189 () Bool)

(assert (=> b!917412 m!1146189))

(declare-fun m!1146191 () Bool)

(assert (=> b!917412 m!1146191))

(declare-fun m!1146193 () Bool)

(assert (=> b!917412 m!1146193))

(declare-fun m!1146195 () Bool)

(assert (=> b!917412 m!1146195))

(declare-fun m!1146197 () Bool)

(assert (=> b!917412 m!1146197))

(assert (=> b!917412 m!1146195))

(declare-fun m!1146199 () Bool)

(assert (=> b!917412 m!1146199))

(declare-fun m!1146201 () Bool)

(assert (=> b!917412 m!1146201))

(declare-fun m!1146203 () Bool)

(assert (=> b!917415 m!1146203))

(declare-fun m!1146205 () Bool)

(assert (=> b!917415 m!1146205))

(declare-fun m!1146207 () Bool)

(assert (=> b!917415 m!1146207))

(declare-fun m!1146209 () Bool)

(assert (=> start!82448 m!1146209))

(push 1)

(assert (not b!917409))

(assert (not b!917414))

(assert (not b!917413))

(assert tp_is_empty!4571)

(assert (not b!917410))

(assert (not b!917408))

(assert (not start!82448))

(assert (not b!917412))

(assert (not b!917411))

(assert (not b!917415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!917486 () Bool)

(declare-fun res!417137 () Bool)

(declare-fun e!597754 () Bool)

(assert (=> b!917486 (=> (not res!417137) (not e!597754))))

(declare-fun call!55545 () Bool)

(assert (=> b!917486 (= res!417137 call!55545)))

(declare-fun e!597749 () Bool)

(assert (=> b!917486 (= e!597749 e!597754)))

(declare-fun b!917487 () Bool)

(declare-fun e!597750 () Bool)

(declare-fun call!55546 () Bool)

(assert (=> b!917487 (= e!597750 call!55546)))

(declare-fun b!917488 () Bool)

(declare-fun e!597748 () Bool)

(declare-fun e!597752 () Bool)

(assert (=> b!917488 (= e!597748 e!597752)))

(declare-fun res!417135 () Bool)

(declare-fun nullable!678 (Regex!2464) Bool)

(assert (=> b!917488 (= res!417135 (not (nullable!678 (reg!2793 (regOne!5440 r!15766)))))))

(assert (=> b!917488 (=> (not res!417135) (not e!597752))))

(declare-fun b!917489 () Bool)

(assert (=> b!917489 (= e!597754 call!55546)))

(declare-fun b!917490 () Bool)

(declare-fun e!597753 () Bool)

(assert (=> b!917490 (= e!597753 e!597750)))

(declare-fun res!417136 () Bool)

(assert (=> b!917490 (=> (not res!417136) (not e!597750))))

(assert (=> b!917490 (= res!417136 call!55545)))

(declare-fun b!917491 () Bool)

(assert (=> b!917491 (= e!597748 e!597749)))

(declare-fun c!148726 () Bool)

(assert (=> b!917491 (= c!148726 (is-Union!2464 (regOne!5440 r!15766)))))

(declare-fun bm!55539 () Bool)

(assert (=> bm!55539 (= call!55546 (validRegex!933 (ite c!148726 (regTwo!5441 (regOne!5440 r!15766)) (regTwo!5440 (regOne!5440 r!15766)))))))

(declare-fun bm!55540 () Bool)

(declare-fun call!55544 () Bool)

(assert (=> bm!55540 (= call!55545 call!55544)))

(declare-fun c!148725 () Bool)

(declare-fun bm!55541 () Bool)

(assert (=> bm!55541 (= call!55544 (validRegex!933 (ite c!148725 (reg!2793 (regOne!5440 r!15766)) (ite c!148726 (regOne!5441 (regOne!5440 r!15766)) (regOne!5440 (regOne!5440 r!15766))))))))

(declare-fun b!917493 () Bool)

(declare-fun e!597751 () Bool)

(assert (=> b!917493 (= e!597751 e!597748)))

(assert (=> b!917493 (= c!148725 (is-Star!2464 (regOne!5440 r!15766)))))

(declare-fun b!917494 () Bool)

(assert (=> b!917494 (= e!597752 call!55544)))

(declare-fun d!279940 () Bool)

(declare-fun res!417133 () Bool)

(assert (=> d!279940 (=> res!417133 e!597751)))

(assert (=> d!279940 (= res!417133 (is-ElementMatch!2464 (regOne!5440 r!15766)))))

(assert (=> d!279940 (= (validRegex!933 (regOne!5440 r!15766)) e!597751)))

(declare-fun b!917492 () Bool)

(declare-fun res!417134 () Bool)

(assert (=> b!917492 (=> res!417134 e!597753)))

(assert (=> b!917492 (= res!417134 (not (is-Concat!4297 (regOne!5440 r!15766))))))

(assert (=> b!917492 (= e!597749 e!597753)))

(assert (= (and d!279940 (not res!417133)) b!917493))

(assert (= (and b!917493 c!148725) b!917488))

(assert (= (and b!917493 (not c!148725)) b!917491))

(assert (= (and b!917488 res!417135) b!917494))

(assert (= (and b!917491 c!148726) b!917486))

(assert (= (and b!917491 (not c!148726)) b!917492))

(assert (= (and b!917486 res!417137) b!917489))

(assert (= (and b!917492 (not res!417134)) b!917490))

(assert (= (and b!917490 res!417136) b!917487))

(assert (= (or b!917489 b!917487) bm!55539))

(assert (= (or b!917486 b!917490) bm!55540))

(assert (= (or b!917494 bm!55540) bm!55541))

(declare-fun m!1146253 () Bool)

(assert (=> b!917488 m!1146253))

(declare-fun m!1146255 () Bool)

(assert (=> bm!55539 m!1146255))

(declare-fun m!1146257 () Bool)

(assert (=> bm!55541 m!1146257))

(assert (=> b!917412 d!279940))

(declare-fun bs!236182 () Bool)

(declare-fun d!279942 () Bool)

(assert (= bs!236182 (and d!279942 b!917410)))

(declare-fun lambda!29625 () Int)

(assert (=> bs!236182 (= (and (= lt!337737 (regOne!5440 r!15766)) (= lt!337735 (regTwo!5440 r!15766))) (= lambda!29625 lambda!29609))))

(assert (=> bs!236182 (not (= lambda!29625 lambda!29610))))

(declare-fun bs!236183 () Bool)

(assert (= bs!236183 (and d!279942 b!917412)))

(assert (=> bs!236183 (= lambda!29625 lambda!29611)))

(assert (=> d!279942 true))

(assert (=> d!279942 true))

(assert (=> d!279942 true))

(assert (=> d!279942 (= (isDefined!1741 (findConcatSeparation!205 lt!337737 lt!337735 Nil!9678 s!10566 s!10566)) (Exists!235 lambda!29625))))

(declare-fun lt!337770 () Unit!14547)

(declare-fun choose!5601 (Regex!2464 Regex!2464 List!9694) Unit!14547)

(assert (=> d!279942 (= lt!337770 (choose!5601 lt!337737 lt!337735 s!10566))))

(assert (=> d!279942 (validRegex!933 lt!337737)))

(assert (=> d!279942 (= (lemmaFindConcatSeparationEquivalentToExists!205 lt!337737 lt!337735 s!10566) lt!337770)))

(declare-fun bs!236184 () Bool)

(assert (= bs!236184 d!279942))

(declare-fun m!1146259 () Bool)

(assert (=> bs!236184 m!1146259))

(declare-fun m!1146261 () Bool)

(assert (=> bs!236184 m!1146261))

(assert (=> bs!236184 m!1146195))

(assert (=> bs!236184 m!1146197))

(declare-fun m!1146263 () Bool)

(assert (=> bs!236184 m!1146263))

(assert (=> bs!236184 m!1146195))

(assert (=> b!917412 d!279942))

(declare-fun d!279944 () Bool)

(assert (=> d!279944 (= (matchR!1002 lt!337734 s!10566) (matchRSpec!265 lt!337734 s!10566))))

(declare-fun lt!337773 () Unit!14547)

(declare-fun choose!5602 (Regex!2464 List!9694) Unit!14547)

(assert (=> d!279944 (= lt!337773 (choose!5602 lt!337734 s!10566))))

(assert (=> d!279944 (validRegex!933 lt!337734)))

(assert (=> d!279944 (= (mainMatchTheorem!265 lt!337734 s!10566) lt!337773)))

(declare-fun bs!236185 () Bool)

(assert (= bs!236185 d!279944))

(assert (=> bs!236185 m!1146203))

(assert (=> bs!236185 m!1146189))

(declare-fun m!1146265 () Bool)

(assert (=> bs!236185 m!1146265))

(declare-fun m!1146267 () Bool)

(assert (=> bs!236185 m!1146267))

(assert (=> b!917412 d!279944))

(declare-fun bs!236186 () Bool)

(declare-fun b!917540 () Bool)

(assert (= bs!236186 (and b!917540 b!917410)))

(declare-fun lambda!29630 () Int)

(assert (=> bs!236186 (not (= lambda!29630 lambda!29609))))

(assert (=> bs!236186 (not (= lambda!29630 lambda!29610))))

(declare-fun bs!236187 () Bool)

(assert (= bs!236187 (and b!917540 b!917412)))

(assert (=> bs!236187 (not (= lambda!29630 lambda!29611))))

(declare-fun bs!236188 () Bool)

(assert (= bs!236188 (and b!917540 d!279942)))

(assert (=> bs!236188 (not (= lambda!29630 lambda!29625))))

(assert (=> b!917540 true))

(assert (=> b!917540 true))

(declare-fun bs!236189 () Bool)

(declare-fun b!917539 () Bool)

(assert (= bs!236189 (and b!917539 b!917540)))

(declare-fun lambda!29631 () Int)

(assert (=> bs!236189 (not (= lambda!29631 lambda!29630))))

(declare-fun bs!236190 () Bool)

(assert (= bs!236190 (and b!917539 b!917412)))

(assert (=> bs!236190 (not (= lambda!29631 lambda!29611))))

(declare-fun bs!236191 () Bool)

(assert (= bs!236191 (and b!917539 b!917410)))

(assert (=> bs!236191 (not (= lambda!29631 lambda!29609))))

(assert (=> bs!236191 (= (and (= (regOne!5440 lt!337734) (regOne!5440 r!15766)) (= (regTwo!5440 lt!337734) (regTwo!5440 r!15766))) (= lambda!29631 lambda!29610))))

(declare-fun bs!236192 () Bool)

(assert (= bs!236192 (and b!917539 d!279942)))

(assert (=> bs!236192 (not (= lambda!29631 lambda!29625))))

(assert (=> b!917539 true))

(assert (=> b!917539 true))

(declare-fun b!917531 () Bool)

(declare-fun e!597778 () Bool)

(assert (=> b!917531 (= e!597778 (= s!10566 (Cons!9678 (c!148719 lt!337734) Nil!9678)))))

(declare-fun b!917532 () Bool)

(declare-fun c!148735 () Bool)

(assert (=> b!917532 (= c!148735 (is-ElementMatch!2464 lt!337734))))

(declare-fun e!597777 () Bool)

(assert (=> b!917532 (= e!597777 e!597778)))

(declare-fun bm!55546 () Bool)

(declare-fun call!55552 () Bool)

(assert (=> bm!55546 (= call!55552 (isEmpty!5911 s!10566))))

(declare-fun b!917533 () Bool)

(declare-fun e!597775 () Bool)

(assert (=> b!917533 (= e!597775 e!597777)))

(declare-fun res!417160 () Bool)

(assert (=> b!917533 (= res!417160 (not (is-EmptyLang!2464 lt!337734)))))

(assert (=> b!917533 (=> (not res!417160) (not e!597777))))

(declare-fun c!148738 () Bool)

(declare-fun bm!55547 () Bool)

(declare-fun call!55551 () Bool)

(assert (=> bm!55547 (= call!55551 (Exists!235 (ite c!148738 lambda!29630 lambda!29631)))))

(declare-fun b!917534 () Bool)

(declare-fun e!597779 () Bool)

(declare-fun e!597776 () Bool)

(assert (=> b!917534 (= e!597779 e!597776)))

(declare-fun res!417158 () Bool)

(assert (=> b!917534 (= res!417158 (matchRSpec!265 (regOne!5441 lt!337734) s!10566))))

(assert (=> b!917534 (=> res!417158 e!597776)))

(declare-fun d!279946 () Bool)

(declare-fun c!148736 () Bool)

(assert (=> d!279946 (= c!148736 (is-EmptyExpr!2464 lt!337734))))

(assert (=> d!279946 (= (matchRSpec!265 lt!337734 s!10566) e!597775)))

(declare-fun b!917535 () Bool)

(assert (=> b!917535 (= e!597776 (matchRSpec!265 (regTwo!5441 lt!337734) s!10566))))

(declare-fun b!917536 () Bool)

(assert (=> b!917536 (= e!597775 call!55552)))

(declare-fun b!917537 () Bool)

(declare-fun e!597781 () Bool)

(assert (=> b!917537 (= e!597779 e!597781)))

(assert (=> b!917537 (= c!148738 (is-Star!2464 lt!337734))))

(declare-fun b!917538 () Bool)

(declare-fun res!417159 () Bool)

(declare-fun e!597780 () Bool)

(assert (=> b!917538 (=> res!417159 e!597780)))

(assert (=> b!917538 (= res!417159 call!55552)))

(assert (=> b!917538 (= e!597781 e!597780)))

(assert (=> b!917539 (= e!597781 call!55551)))

(assert (=> b!917540 (= e!597780 call!55551)))

(declare-fun b!917541 () Bool)

(declare-fun c!148737 () Bool)

(assert (=> b!917541 (= c!148737 (is-Union!2464 lt!337734))))

(assert (=> b!917541 (= e!597778 e!597779)))

(assert (= (and d!279946 c!148736) b!917536))

(assert (= (and d!279946 (not c!148736)) b!917533))

(assert (= (and b!917533 res!417160) b!917532))

(assert (= (and b!917532 c!148735) b!917531))

(assert (= (and b!917532 (not c!148735)) b!917541))

(assert (= (and b!917541 c!148737) b!917534))

(assert (= (and b!917541 (not c!148737)) b!917537))

(assert (= (and b!917534 (not res!417158)) b!917535))

(assert (= (and b!917537 c!148738) b!917538))

(assert (= (and b!917537 (not c!148738)) b!917539))

(assert (= (and b!917538 (not res!417159)) b!917540))

(assert (= (or b!917540 b!917539) bm!55547))

(assert (= (or b!917536 b!917538) bm!55546))

(assert (=> bm!55546 m!1146183))

(declare-fun m!1146269 () Bool)

(assert (=> bm!55547 m!1146269))

(declare-fun m!1146271 () Bool)

(assert (=> b!917534 m!1146271))

(declare-fun m!1146273 () Bool)

(assert (=> b!917535 m!1146273))

(assert (=> b!917412 d!279946))

(declare-fun d!279950 () Bool)

(declare-fun choose!5603 (Int) Bool)

(assert (=> d!279950 (= (Exists!235 lambda!29611) (choose!5603 lambda!29611))))

(declare-fun bs!236193 () Bool)

(assert (= bs!236193 d!279950))

(declare-fun m!1146275 () Bool)

(assert (=> bs!236193 m!1146275))

(assert (=> b!917412 d!279950))

(declare-fun b!917588 () Bool)

(declare-fun e!597807 () Bool)

(declare-fun lt!337782 () Option!2099)

(declare-fun ++!2554 (List!9694 List!9694) List!9694)

(declare-fun get!3142 (Option!2099) tuple2!10914)

(assert (=> b!917588 (= e!597807 (= (++!2554 (_1!6283 (get!3142 lt!337782)) (_2!6283 (get!3142 lt!337782))) s!10566))))

(declare-fun b!917589 () Bool)

(declare-fun e!597810 () Option!2099)

(assert (=> b!917589 (= e!597810 None!2098)))

(declare-fun d!279952 () Bool)

(declare-fun e!597808 () Bool)

(assert (=> d!279952 e!597808))

(declare-fun res!417189 () Bool)

(assert (=> d!279952 (=> res!417189 e!597808)))

(assert (=> d!279952 (= res!417189 e!597807)))

(declare-fun res!417187 () Bool)

(assert (=> d!279952 (=> (not res!417187) (not e!597807))))

(assert (=> d!279952 (= res!417187 (isDefined!1741 lt!337782))))

(declare-fun e!597806 () Option!2099)

(assert (=> d!279952 (= lt!337782 e!597806)))

(declare-fun c!148750 () Bool)

(declare-fun e!597809 () Bool)

(assert (=> d!279952 (= c!148750 e!597809)))

(declare-fun res!417190 () Bool)

(assert (=> d!279952 (=> (not res!417190) (not e!597809))))

(assert (=> d!279952 (= res!417190 (matchR!1002 lt!337737 Nil!9678))))

(assert (=> d!279952 (validRegex!933 lt!337737)))

(assert (=> d!279952 (= (findConcatSeparation!205 lt!337737 lt!337735 Nil!9678 s!10566 s!10566) lt!337782)))

(declare-fun b!917590 () Bool)

(assert (=> b!917590 (= e!597806 (Some!2098 (tuple2!10915 Nil!9678 s!10566)))))

(declare-fun b!917591 () Bool)

(declare-fun lt!337784 () Unit!14547)

(declare-fun lt!337783 () Unit!14547)

(assert (=> b!917591 (= lt!337784 lt!337783)))

(assert (=> b!917591 (= (++!2554 (++!2554 Nil!9678 (Cons!9678 (h!15079 s!10566) Nil!9678)) (t!100740 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!169 (List!9694 C!5498 List!9694 List!9694) Unit!14547)

(assert (=> b!917591 (= lt!337783 (lemmaMoveElementToOtherListKeepsConcatEq!169 Nil!9678 (h!15079 s!10566) (t!100740 s!10566) s!10566))))

(assert (=> b!917591 (= e!597810 (findConcatSeparation!205 lt!337737 lt!337735 (++!2554 Nil!9678 (Cons!9678 (h!15079 s!10566) Nil!9678)) (t!100740 s!10566) s!10566))))

(declare-fun b!917592 () Bool)

(declare-fun res!417188 () Bool)

(assert (=> b!917592 (=> (not res!417188) (not e!597807))))

(assert (=> b!917592 (= res!417188 (matchR!1002 lt!337737 (_1!6283 (get!3142 lt!337782))))))

(declare-fun b!917593 () Bool)

(declare-fun res!417191 () Bool)

(assert (=> b!917593 (=> (not res!417191) (not e!597807))))

(assert (=> b!917593 (= res!417191 (matchR!1002 lt!337735 (_2!6283 (get!3142 lt!337782))))))

(declare-fun b!917594 () Bool)

(assert (=> b!917594 (= e!597809 (matchR!1002 lt!337735 s!10566))))

(declare-fun b!917595 () Bool)

(assert (=> b!917595 (= e!597806 e!597810)))

(declare-fun c!148749 () Bool)

(assert (=> b!917595 (= c!148749 (is-Nil!9678 s!10566))))

(declare-fun b!917596 () Bool)

(assert (=> b!917596 (= e!597808 (not (isDefined!1741 lt!337782)))))

(assert (= (and d!279952 res!417190) b!917594))

(assert (= (and d!279952 c!148750) b!917590))

(assert (= (and d!279952 (not c!148750)) b!917595))

(assert (= (and b!917595 c!148749) b!917589))

(assert (= (and b!917595 (not c!148749)) b!917591))

(assert (= (and d!279952 res!417187) b!917592))

(assert (= (and b!917592 res!417188) b!917593))

(assert (= (and b!917593 res!417191) b!917588))

(assert (= (and d!279952 (not res!417189)) b!917596))

(declare-fun m!1146277 () Bool)

(assert (=> d!279952 m!1146277))

(declare-fun m!1146279 () Bool)

(assert (=> d!279952 m!1146279))

(assert (=> d!279952 m!1146261))

(assert (=> b!917596 m!1146277))

(declare-fun m!1146281 () Bool)

(assert (=> b!917588 m!1146281))

(declare-fun m!1146283 () Bool)

(assert (=> b!917588 m!1146283))

(declare-fun m!1146285 () Bool)

(assert (=> b!917594 m!1146285))

(assert (=> b!917593 m!1146281))

(declare-fun m!1146287 () Bool)

(assert (=> b!917593 m!1146287))

(declare-fun m!1146289 () Bool)

(assert (=> b!917591 m!1146289))

(assert (=> b!917591 m!1146289))

(declare-fun m!1146291 () Bool)

(assert (=> b!917591 m!1146291))

(declare-fun m!1146293 () Bool)

(assert (=> b!917591 m!1146293))

(assert (=> b!917591 m!1146289))

(declare-fun m!1146295 () Bool)

(assert (=> b!917591 m!1146295))

(assert (=> b!917592 m!1146281))

(declare-fun m!1146297 () Bool)

(assert (=> b!917592 m!1146297))

(assert (=> b!917412 d!279952))

(declare-fun d!279954 () Bool)

(declare-fun isEmpty!5913 (Option!2099) Bool)

(assert (=> d!279954 (= (isDefined!1741 (findConcatSeparation!205 lt!337737 lt!337735 Nil!9678 s!10566 s!10566)) (not (isEmpty!5913 (findConcatSeparation!205 lt!337737 lt!337735 Nil!9678 s!10566 s!10566))))))

(declare-fun bs!236194 () Bool)

(assert (= bs!236194 d!279954))

(assert (=> bs!236194 m!1146195))

(declare-fun m!1146299 () Bool)

(assert (=> bs!236194 m!1146299))

(assert (=> b!917412 d!279954))

(declare-fun b!917597 () Bool)

(declare-fun res!417196 () Bool)

(declare-fun e!597817 () Bool)

(assert (=> b!917597 (=> (not res!417196) (not e!597817))))

(declare-fun call!55556 () Bool)

(assert (=> b!917597 (= res!417196 call!55556)))

(declare-fun e!597812 () Bool)

(assert (=> b!917597 (= e!597812 e!597817)))

(declare-fun b!917598 () Bool)

(declare-fun e!597813 () Bool)

(declare-fun call!55557 () Bool)

(assert (=> b!917598 (= e!597813 call!55557)))

(declare-fun b!917599 () Bool)

(declare-fun e!597811 () Bool)

(declare-fun e!597815 () Bool)

(assert (=> b!917599 (= e!597811 e!597815)))

(declare-fun res!417194 () Bool)

(assert (=> b!917599 (= res!417194 (not (nullable!678 (reg!2793 r!15766))))))

(assert (=> b!917599 (=> (not res!417194) (not e!597815))))

(declare-fun b!917600 () Bool)

(assert (=> b!917600 (= e!597817 call!55557)))

(declare-fun b!917601 () Bool)

(declare-fun e!597816 () Bool)

(assert (=> b!917601 (= e!597816 e!597813)))

(declare-fun res!417195 () Bool)

(assert (=> b!917601 (=> (not res!417195) (not e!597813))))

(assert (=> b!917601 (= res!417195 call!55556)))

(declare-fun b!917602 () Bool)

(assert (=> b!917602 (= e!597811 e!597812)))

(declare-fun c!148752 () Bool)

(assert (=> b!917602 (= c!148752 (is-Union!2464 r!15766))))

(declare-fun bm!55550 () Bool)

(assert (=> bm!55550 (= call!55557 (validRegex!933 (ite c!148752 (regTwo!5441 r!15766) (regTwo!5440 r!15766))))))

(declare-fun bm!55551 () Bool)

(declare-fun call!55555 () Bool)

(assert (=> bm!55551 (= call!55556 call!55555)))

(declare-fun c!148751 () Bool)

(declare-fun bm!55552 () Bool)

(assert (=> bm!55552 (= call!55555 (validRegex!933 (ite c!148751 (reg!2793 r!15766) (ite c!148752 (regOne!5441 r!15766) (regOne!5440 r!15766)))))))

(declare-fun b!917604 () Bool)

(declare-fun e!597814 () Bool)

(assert (=> b!917604 (= e!597814 e!597811)))

(assert (=> b!917604 (= c!148751 (is-Star!2464 r!15766))))

(declare-fun b!917605 () Bool)

(assert (=> b!917605 (= e!597815 call!55555)))

(declare-fun d!279956 () Bool)

(declare-fun res!417192 () Bool)

(assert (=> d!279956 (=> res!417192 e!597814)))

(assert (=> d!279956 (= res!417192 (is-ElementMatch!2464 r!15766))))

(assert (=> d!279956 (= (validRegex!933 r!15766) e!597814)))

(declare-fun b!917603 () Bool)

(declare-fun res!417193 () Bool)

(assert (=> b!917603 (=> res!417193 e!597816)))

(assert (=> b!917603 (= res!417193 (not (is-Concat!4297 r!15766)))))

(assert (=> b!917603 (= e!597812 e!597816)))

(assert (= (and d!279956 (not res!417192)) b!917604))

(assert (= (and b!917604 c!148751) b!917599))

(assert (= (and b!917604 (not c!148751)) b!917602))

(assert (= (and b!917599 res!417194) b!917605))

(assert (= (and b!917602 c!148752) b!917597))

(assert (= (and b!917602 (not c!148752)) b!917603))

(assert (= (and b!917597 res!417196) b!917600))

(assert (= (and b!917603 (not res!417193)) b!917601))

(assert (= (and b!917601 res!417195) b!917598))

(assert (= (or b!917600 b!917598) bm!55550))

(assert (= (or b!917597 b!917601) bm!55551))

(assert (= (or b!917605 bm!55551) bm!55552))

(declare-fun m!1146301 () Bool)

(assert (=> b!917599 m!1146301))

(declare-fun m!1146303 () Bool)

(assert (=> bm!55550 m!1146303))

(declare-fun m!1146305 () Bool)

(assert (=> bm!55552 m!1146305))

(assert (=> start!82448 d!279956))

(declare-fun b!917648 () Bool)

(declare-fun e!597839 () Bool)

(declare-fun lt!337788 () Bool)

(declare-fun call!55561 () Bool)

(assert (=> b!917648 (= e!597839 (= lt!337788 call!55561))))

(declare-fun b!917649 () Bool)

(declare-fun res!417223 () Bool)

(declare-fun e!597841 () Bool)

(assert (=> b!917649 (=> res!417223 e!597841)))

(declare-fun tail!1203 (List!9694) List!9694)

(assert (=> b!917649 (= res!417223 (not (isEmpty!5911 (tail!1203 s!10566))))))

(declare-fun b!917650 () Bool)

(declare-fun e!597843 () Bool)

(assert (=> b!917650 (= e!597843 e!597841)))

(declare-fun res!417226 () Bool)

(assert (=> b!917650 (=> res!417226 e!597841)))

(assert (=> b!917650 (= res!417226 call!55561)))

(declare-fun b!917651 () Bool)

(declare-fun res!417222 () Bool)

(declare-fun e!597844 () Bool)

(assert (=> b!917651 (=> (not res!417222) (not e!597844))))

(assert (=> b!917651 (= res!417222 (not call!55561))))

(declare-fun b!917652 () Bool)

(declare-fun e!597840 () Bool)

(assert (=> b!917652 (= e!597839 e!597840)))

(declare-fun c!148763 () Bool)

(assert (=> b!917652 (= c!148763 (is-EmptyLang!2464 lt!337734))))

(declare-fun b!917653 () Bool)

(declare-fun res!417224 () Bool)

(assert (=> b!917653 (=> (not res!417224) (not e!597844))))

(assert (=> b!917653 (= res!417224 (isEmpty!5911 (tail!1203 s!10566)))))

(declare-fun d!279958 () Bool)

(assert (=> d!279958 e!597839))

(declare-fun c!148762 () Bool)

(assert (=> d!279958 (= c!148762 (is-EmptyExpr!2464 lt!337734))))

(declare-fun e!597842 () Bool)

(assert (=> d!279958 (= lt!337788 e!597842)))

(declare-fun c!148764 () Bool)

(assert (=> d!279958 (= c!148764 (isEmpty!5911 s!10566))))

(assert (=> d!279958 (validRegex!933 lt!337734)))

(assert (=> d!279958 (= (matchR!1002 lt!337734 s!10566) lt!337788)))

(declare-fun b!917654 () Bool)

(assert (=> b!917654 (= e!597840 (not lt!337788))))

(declare-fun b!917655 () Bool)

(declare-fun res!417225 () Bool)

(declare-fun e!597845 () Bool)

(assert (=> b!917655 (=> res!417225 e!597845)))

(assert (=> b!917655 (= res!417225 (not (is-ElementMatch!2464 lt!337734)))))

(assert (=> b!917655 (= e!597840 e!597845)))

(declare-fun b!917656 () Bool)

(declare-fun derivativeStep!488 (Regex!2464 C!5498) Regex!2464)

(declare-fun head!1641 (List!9694) C!5498)

(assert (=> b!917656 (= e!597842 (matchR!1002 (derivativeStep!488 lt!337734 (head!1641 s!10566)) (tail!1203 s!10566)))))

(declare-fun bm!55556 () Bool)

(assert (=> bm!55556 (= call!55561 (isEmpty!5911 s!10566))))

(declare-fun b!917657 () Bool)

(assert (=> b!917657 (= e!597845 e!597843)))

(declare-fun res!417227 () Bool)

(assert (=> b!917657 (=> (not res!417227) (not e!597843))))

(assert (=> b!917657 (= res!417227 (not lt!337788))))

(declare-fun b!917658 () Bool)

(assert (=> b!917658 (= e!597841 (not (= (head!1641 s!10566) (c!148719 lt!337734))))))

(declare-fun b!917659 () Bool)

(assert (=> b!917659 (= e!597844 (= (head!1641 s!10566) (c!148719 lt!337734)))))

(declare-fun b!917660 () Bool)

(assert (=> b!917660 (= e!597842 (nullable!678 lt!337734))))

(declare-fun b!917661 () Bool)

(declare-fun res!417228 () Bool)

(assert (=> b!917661 (=> res!417228 e!597845)))

(assert (=> b!917661 (= res!417228 e!597844)))

(declare-fun res!417221 () Bool)

(assert (=> b!917661 (=> (not res!417221) (not e!597844))))

(assert (=> b!917661 (= res!417221 lt!337788)))

(assert (= (and d!279958 c!148764) b!917660))

(assert (= (and d!279958 (not c!148764)) b!917656))

(assert (= (and d!279958 c!148762) b!917648))

(assert (= (and d!279958 (not c!148762)) b!917652))

(assert (= (and b!917652 c!148763) b!917654))

(assert (= (and b!917652 (not c!148763)) b!917655))

(assert (= (and b!917655 (not res!417225)) b!917661))

(assert (= (and b!917661 res!417221) b!917651))

(assert (= (and b!917651 res!417222) b!917653))

(assert (= (and b!917653 res!417224) b!917659))

(assert (= (and b!917661 (not res!417228)) b!917657))

(assert (= (and b!917657 res!417227) b!917650))

(assert (= (and b!917650 (not res!417226)) b!917649))

(assert (= (and b!917649 (not res!417223)) b!917658))

(assert (= (or b!917648 b!917650 b!917651) bm!55556))

(declare-fun m!1146321 () Bool)

(assert (=> b!917653 m!1146321))

(assert (=> b!917653 m!1146321))

(declare-fun m!1146323 () Bool)

(assert (=> b!917653 m!1146323))

(declare-fun m!1146325 () Bool)

(assert (=> b!917660 m!1146325))

(assert (=> b!917649 m!1146321))

(assert (=> b!917649 m!1146321))

(assert (=> b!917649 m!1146323))

(declare-fun m!1146327 () Bool)

(assert (=> b!917656 m!1146327))

(assert (=> b!917656 m!1146327))

(declare-fun m!1146329 () Bool)

(assert (=> b!917656 m!1146329))

(assert (=> b!917656 m!1146321))

(assert (=> b!917656 m!1146329))

(assert (=> b!917656 m!1146321))

(declare-fun m!1146331 () Bool)

(assert (=> b!917656 m!1146331))

(assert (=> b!917658 m!1146327))

(assert (=> b!917659 m!1146327))

(assert (=> d!279958 m!1146183))

(assert (=> d!279958 m!1146267))

(assert (=> bm!55556 m!1146183))

(assert (=> b!917415 d!279958))

(declare-fun call!55586 () Regex!2464)

(declare-fun c!148787 () Bool)

(declare-fun c!148788 () Bool)

(declare-fun bm!55577 () Bool)

(declare-fun c!148785 () Bool)

(assert (=> bm!55577 (= call!55586 (removeUselessConcat!141 (ite (or c!148787 c!148788) (regTwo!5440 (regTwo!5440 r!15766)) (ite c!148785 (regTwo!5441 (regTwo!5440 r!15766)) (reg!2793 (regTwo!5440 r!15766))))))))

(declare-fun b!917706 () Bool)

(assert (=> b!917706 (= c!148788 (is-Concat!4297 (regTwo!5440 r!15766)))))

(declare-fun e!597875 () Regex!2464)

(declare-fun e!597874 () Regex!2464)

(assert (=> b!917706 (= e!597875 e!597874)))

(declare-fun b!917707 () Bool)

(declare-fun call!55584 () Regex!2464)

(declare-fun call!55585 () Regex!2464)

(assert (=> b!917707 (= e!597874 (Concat!4297 call!55584 call!55585))))

(declare-fun bm!55578 () Bool)

(assert (=> bm!55578 (= call!55585 call!55586)))

(declare-fun bm!55579 () Bool)

(declare-fun call!55582 () Regex!2464)

(assert (=> bm!55579 (= call!55582 call!55585)))

(declare-fun b!917708 () Bool)

(declare-fun e!597873 () Regex!2464)

(assert (=> b!917708 (= e!597873 call!55586)))

(declare-fun b!917709 () Bool)

(declare-fun e!597871 () Regex!2464)

(assert (=> b!917709 (= e!597871 (Union!2464 call!55584 call!55582))))

(declare-fun bm!55580 () Bool)

(declare-fun call!55583 () Regex!2464)

(declare-fun c!148789 () Bool)

(assert (=> bm!55580 (= call!55583 (removeUselessConcat!141 (ite (or c!148789 c!148788) (regOne!5440 (regTwo!5440 r!15766)) (regOne!5441 (regTwo!5440 r!15766)))))))

(declare-fun d!279962 () Bool)

(declare-fun e!597870 () Bool)

(assert (=> d!279962 e!597870))

(declare-fun res!417233 () Bool)

(assert (=> d!279962 (=> (not res!417233) (not e!597870))))

(declare-fun lt!337793 () Regex!2464)

(assert (=> d!279962 (= res!417233 (validRegex!933 lt!337793))))

(assert (=> d!279962 (= lt!337793 e!597873)))

(assert (=> d!279962 (= c!148787 (and (is-Concat!4297 (regTwo!5440 r!15766)) (is-EmptyExpr!2464 (regOne!5440 (regTwo!5440 r!15766)))))))

(assert (=> d!279962 (validRegex!933 (regTwo!5440 r!15766))))

(assert (=> d!279962 (= (removeUselessConcat!141 (regTwo!5440 r!15766)) lt!337793)))

(declare-fun b!917710 () Bool)

(declare-fun e!597872 () Regex!2464)

(assert (=> b!917710 (= e!597872 (Star!2464 call!55582))))

(declare-fun b!917711 () Bool)

(assert (=> b!917711 (= e!597870 (= (nullable!678 lt!337793) (nullable!678 (regTwo!5440 r!15766))))))

(declare-fun b!917712 () Bool)

(assert (=> b!917712 (= e!597872 (regTwo!5440 r!15766))))

(declare-fun bm!55581 () Bool)

(assert (=> bm!55581 (= call!55584 call!55583)))

(declare-fun b!917713 () Bool)

(assert (=> b!917713 (= e!597873 e!597875)))

(assert (=> b!917713 (= c!148789 (and (is-Concat!4297 (regTwo!5440 r!15766)) (is-EmptyExpr!2464 (regTwo!5440 (regTwo!5440 r!15766)))))))

(declare-fun b!917714 () Bool)

(declare-fun c!148786 () Bool)

(assert (=> b!917714 (= c!148786 (is-Star!2464 (regTwo!5440 r!15766)))))

(assert (=> b!917714 (= e!597871 e!597872)))

(declare-fun b!917715 () Bool)

(assert (=> b!917715 (= e!597875 call!55583)))

(declare-fun b!917716 () Bool)

(assert (=> b!917716 (= e!597874 e!597871)))

(assert (=> b!917716 (= c!148785 (is-Union!2464 (regTwo!5440 r!15766)))))

(assert (= (and d!279962 c!148787) b!917708))

(assert (= (and d!279962 (not c!148787)) b!917713))

(assert (= (and b!917713 c!148789) b!917715))

(assert (= (and b!917713 (not c!148789)) b!917706))

(assert (= (and b!917706 c!148788) b!917707))

(assert (= (and b!917706 (not c!148788)) b!917716))

(assert (= (and b!917716 c!148785) b!917709))

(assert (= (and b!917716 (not c!148785)) b!917714))

(assert (= (and b!917714 c!148786) b!917710))

(assert (= (and b!917714 (not c!148786)) b!917712))

(assert (= (or b!917709 b!917710) bm!55579))

(assert (= (or b!917707 bm!55579) bm!55578))

(assert (= (or b!917707 b!917709) bm!55581))

(assert (= (or b!917715 bm!55581) bm!55580))

(assert (= (or b!917708 bm!55578) bm!55577))

(assert (= (and d!279962 res!417233) b!917711))

(declare-fun m!1146333 () Bool)

(assert (=> bm!55577 m!1146333))

(declare-fun m!1146335 () Bool)

(assert (=> bm!55580 m!1146335))

(declare-fun m!1146337 () Bool)

(assert (=> d!279962 m!1146337))

(declare-fun m!1146339 () Bool)

(assert (=> d!279962 m!1146339))

(declare-fun m!1146341 () Bool)

(assert (=> b!917711 m!1146341))

(declare-fun m!1146343 () Bool)

(assert (=> b!917711 m!1146343))

(assert (=> b!917415 d!279962))

(declare-fun call!55591 () Regex!2464)

(declare-fun c!148792 () Bool)

(declare-fun c!148790 () Bool)

(declare-fun c!148793 () Bool)

(declare-fun bm!55582 () Bool)

(assert (=> bm!55582 (= call!55591 (removeUselessConcat!141 (ite (or c!148792 c!148793) (regTwo!5440 (regOne!5440 r!15766)) (ite c!148790 (regTwo!5441 (regOne!5440 r!15766)) (reg!2793 (regOne!5440 r!15766))))))))

(declare-fun b!917717 () Bool)

(assert (=> b!917717 (= c!148793 (is-Concat!4297 (regOne!5440 r!15766)))))

(declare-fun e!597881 () Regex!2464)

(declare-fun e!597880 () Regex!2464)

(assert (=> b!917717 (= e!597881 e!597880)))

(declare-fun b!917718 () Bool)

(declare-fun call!55589 () Regex!2464)

(declare-fun call!55590 () Regex!2464)

(assert (=> b!917718 (= e!597880 (Concat!4297 call!55589 call!55590))))

(declare-fun bm!55583 () Bool)

(assert (=> bm!55583 (= call!55590 call!55591)))

(declare-fun bm!55584 () Bool)

(declare-fun call!55587 () Regex!2464)

(assert (=> bm!55584 (= call!55587 call!55590)))

(declare-fun b!917719 () Bool)

(declare-fun e!597879 () Regex!2464)

(assert (=> b!917719 (= e!597879 call!55591)))

(declare-fun b!917720 () Bool)

(declare-fun e!597877 () Regex!2464)

(assert (=> b!917720 (= e!597877 (Union!2464 call!55589 call!55587))))

(declare-fun call!55588 () Regex!2464)

(declare-fun c!148794 () Bool)

(declare-fun bm!55585 () Bool)

(assert (=> bm!55585 (= call!55588 (removeUselessConcat!141 (ite (or c!148794 c!148793) (regOne!5440 (regOne!5440 r!15766)) (regOne!5441 (regOne!5440 r!15766)))))))

(declare-fun d!279964 () Bool)

(declare-fun e!597876 () Bool)

(assert (=> d!279964 e!597876))

(declare-fun res!417234 () Bool)

(assert (=> d!279964 (=> (not res!417234) (not e!597876))))

(declare-fun lt!337794 () Regex!2464)

(assert (=> d!279964 (= res!417234 (validRegex!933 lt!337794))))

(assert (=> d!279964 (= lt!337794 e!597879)))

(assert (=> d!279964 (= c!148792 (and (is-Concat!4297 (regOne!5440 r!15766)) (is-EmptyExpr!2464 (regOne!5440 (regOne!5440 r!15766)))))))

(assert (=> d!279964 (validRegex!933 (regOne!5440 r!15766))))

(assert (=> d!279964 (= (removeUselessConcat!141 (regOne!5440 r!15766)) lt!337794)))

(declare-fun b!917721 () Bool)

(declare-fun e!597878 () Regex!2464)

(assert (=> b!917721 (= e!597878 (Star!2464 call!55587))))

(declare-fun b!917722 () Bool)

(assert (=> b!917722 (= e!597876 (= (nullable!678 lt!337794) (nullable!678 (regOne!5440 r!15766))))))

(declare-fun b!917723 () Bool)

(assert (=> b!917723 (= e!597878 (regOne!5440 r!15766))))

(declare-fun bm!55586 () Bool)

(assert (=> bm!55586 (= call!55589 call!55588)))

(declare-fun b!917724 () Bool)

(assert (=> b!917724 (= e!597879 e!597881)))

(assert (=> b!917724 (= c!148794 (and (is-Concat!4297 (regOne!5440 r!15766)) (is-EmptyExpr!2464 (regTwo!5440 (regOne!5440 r!15766)))))))

(declare-fun b!917725 () Bool)

(declare-fun c!148791 () Bool)

(assert (=> b!917725 (= c!148791 (is-Star!2464 (regOne!5440 r!15766)))))

(assert (=> b!917725 (= e!597877 e!597878)))

(declare-fun b!917726 () Bool)

(assert (=> b!917726 (= e!597881 call!55588)))

(declare-fun b!917727 () Bool)

(assert (=> b!917727 (= e!597880 e!597877)))

(assert (=> b!917727 (= c!148790 (is-Union!2464 (regOne!5440 r!15766)))))

(assert (= (and d!279964 c!148792) b!917719))

(assert (= (and d!279964 (not c!148792)) b!917724))

(assert (= (and b!917724 c!148794) b!917726))

(assert (= (and b!917724 (not c!148794)) b!917717))

(assert (= (and b!917717 c!148793) b!917718))

(assert (= (and b!917717 (not c!148793)) b!917727))

(assert (= (and b!917727 c!148790) b!917720))

(assert (= (and b!917727 (not c!148790)) b!917725))

(assert (= (and b!917725 c!148791) b!917721))

(assert (= (and b!917725 (not c!148791)) b!917723))

(assert (= (or b!917720 b!917721) bm!55584))

(assert (= (or b!917718 bm!55584) bm!55583))

(assert (= (or b!917718 b!917720) bm!55586))

(assert (= (or b!917726 bm!55586) bm!55585))

(assert (= (or b!917719 bm!55583) bm!55582))

(assert (= (and d!279964 res!417234) b!917722))

(declare-fun m!1146345 () Bool)

(assert (=> bm!55582 m!1146345))

(declare-fun m!1146347 () Bool)

(assert (=> bm!55585 m!1146347))

(declare-fun m!1146349 () Bool)

(assert (=> d!279964 m!1146349))

(assert (=> d!279964 m!1146193))

(declare-fun m!1146351 () Bool)

(assert (=> b!917722 m!1146351))

(declare-fun m!1146353 () Bool)

(assert (=> b!917722 m!1146353))

(assert (=> b!917415 d!279964))

(declare-fun d!279966 () Bool)

(assert (=> d!279966 (= (isEmpty!5911 s!10566) (is-Nil!9678 s!10566))))

(assert (=> b!917410 d!279966))

(declare-fun d!279968 () Bool)

(assert (=> d!279968 (= (Exists!235 lambda!29610) (choose!5603 lambda!29610))))

(declare-fun bs!236195 () Bool)

(assert (= bs!236195 d!279968))

(declare-fun m!1146355 () Bool)

(assert (=> bs!236195 m!1146355))

(assert (=> b!917410 d!279968))

(declare-fun d!279970 () Bool)

(assert (=> d!279970 (= (isDefined!1741 (findConcatSeparation!205 (regOne!5440 r!15766) (regTwo!5440 r!15766) Nil!9678 s!10566 s!10566)) (not (isEmpty!5913 (findConcatSeparation!205 (regOne!5440 r!15766) (regTwo!5440 r!15766) Nil!9678 s!10566 s!10566))))))

(declare-fun bs!236196 () Bool)

(assert (= bs!236196 d!279970))

(assert (=> bs!236196 m!1146175))

(declare-fun m!1146357 () Bool)

(assert (=> bs!236196 m!1146357))

(assert (=> b!917410 d!279970))

(declare-fun d!279972 () Bool)

(assert (=> d!279972 (= (Exists!235 lambda!29609) (choose!5603 lambda!29609))))

(declare-fun bs!236197 () Bool)

(assert (= bs!236197 d!279972))

(declare-fun m!1146359 () Bool)

(assert (=> bs!236197 m!1146359))

(assert (=> b!917410 d!279972))

(declare-fun bs!236198 () Bool)

(declare-fun d!279974 () Bool)

(assert (= bs!236198 (and d!279974 b!917540)))

(declare-fun lambda!29632 () Int)

(assert (=> bs!236198 (not (= lambda!29632 lambda!29630))))

(declare-fun bs!236199 () Bool)

(assert (= bs!236199 (and d!279974 b!917412)))

(assert (=> bs!236199 (= (and (= (regOne!5440 r!15766) lt!337737) (= (regTwo!5440 r!15766) lt!337735)) (= lambda!29632 lambda!29611))))

(declare-fun bs!236200 () Bool)

(assert (= bs!236200 (and d!279974 b!917410)))

(assert (=> bs!236200 (= lambda!29632 lambda!29609)))

(assert (=> bs!236200 (not (= lambda!29632 lambda!29610))))

(declare-fun bs!236201 () Bool)

(assert (= bs!236201 (and d!279974 b!917539)))

(assert (=> bs!236201 (not (= lambda!29632 lambda!29631))))

(declare-fun bs!236202 () Bool)

(assert (= bs!236202 (and d!279974 d!279942)))

(assert (=> bs!236202 (= (and (= (regOne!5440 r!15766) lt!337737) (= (regTwo!5440 r!15766) lt!337735)) (= lambda!29632 lambda!29625))))

(assert (=> d!279974 true))

(assert (=> d!279974 true))

(assert (=> d!279974 true))

(assert (=> d!279974 (= (isDefined!1741 (findConcatSeparation!205 (regOne!5440 r!15766) (regTwo!5440 r!15766) Nil!9678 s!10566 s!10566)) (Exists!235 lambda!29632))))

(declare-fun lt!337795 () Unit!14547)

(assert (=> d!279974 (= lt!337795 (choose!5601 (regOne!5440 r!15766) (regTwo!5440 r!15766) s!10566))))

(assert (=> d!279974 (validRegex!933 (regOne!5440 r!15766))))

(assert (=> d!279974 (= (lemmaFindConcatSeparationEquivalentToExists!205 (regOne!5440 r!15766) (regTwo!5440 r!15766) s!10566) lt!337795)))

(declare-fun bs!236203 () Bool)

(assert (= bs!236203 d!279974))

(declare-fun m!1146361 () Bool)

(assert (=> bs!236203 m!1146361))

(assert (=> bs!236203 m!1146193))

(assert (=> bs!236203 m!1146175))

(assert (=> bs!236203 m!1146177))

(declare-fun m!1146363 () Bool)

(assert (=> bs!236203 m!1146363))

(assert (=> bs!236203 m!1146175))

(assert (=> b!917410 d!279974))

(declare-fun b!917728 () Bool)

(declare-fun e!597883 () Bool)

(declare-fun lt!337796 () Option!2099)

(assert (=> b!917728 (= e!597883 (= (++!2554 (_1!6283 (get!3142 lt!337796)) (_2!6283 (get!3142 lt!337796))) s!10566))))

(declare-fun b!917729 () Bool)

(declare-fun e!597886 () Option!2099)

(assert (=> b!917729 (= e!597886 None!2098)))

(declare-fun d!279976 () Bool)

(declare-fun e!597884 () Bool)

(assert (=> d!279976 e!597884))

(declare-fun res!417237 () Bool)

(assert (=> d!279976 (=> res!417237 e!597884)))

(assert (=> d!279976 (= res!417237 e!597883)))

(declare-fun res!417235 () Bool)

(assert (=> d!279976 (=> (not res!417235) (not e!597883))))

(assert (=> d!279976 (= res!417235 (isDefined!1741 lt!337796))))

(declare-fun e!597882 () Option!2099)

(assert (=> d!279976 (= lt!337796 e!597882)))

(declare-fun c!148796 () Bool)

(declare-fun e!597885 () Bool)

(assert (=> d!279976 (= c!148796 e!597885)))

(declare-fun res!417238 () Bool)

(assert (=> d!279976 (=> (not res!417238) (not e!597885))))

(assert (=> d!279976 (= res!417238 (matchR!1002 (regOne!5440 r!15766) Nil!9678))))

(assert (=> d!279976 (validRegex!933 (regOne!5440 r!15766))))

(assert (=> d!279976 (= (findConcatSeparation!205 (regOne!5440 r!15766) (regTwo!5440 r!15766) Nil!9678 s!10566 s!10566) lt!337796)))

(declare-fun b!917730 () Bool)

(assert (=> b!917730 (= e!597882 (Some!2098 (tuple2!10915 Nil!9678 s!10566)))))

(declare-fun b!917731 () Bool)

(declare-fun lt!337798 () Unit!14547)

(declare-fun lt!337797 () Unit!14547)

(assert (=> b!917731 (= lt!337798 lt!337797)))

(assert (=> b!917731 (= (++!2554 (++!2554 Nil!9678 (Cons!9678 (h!15079 s!10566) Nil!9678)) (t!100740 s!10566)) s!10566)))

(assert (=> b!917731 (= lt!337797 (lemmaMoveElementToOtherListKeepsConcatEq!169 Nil!9678 (h!15079 s!10566) (t!100740 s!10566) s!10566))))

(assert (=> b!917731 (= e!597886 (findConcatSeparation!205 (regOne!5440 r!15766) (regTwo!5440 r!15766) (++!2554 Nil!9678 (Cons!9678 (h!15079 s!10566) Nil!9678)) (t!100740 s!10566) s!10566))))

(declare-fun b!917732 () Bool)

(declare-fun res!417236 () Bool)

(assert (=> b!917732 (=> (not res!417236) (not e!597883))))

(assert (=> b!917732 (= res!417236 (matchR!1002 (regOne!5440 r!15766) (_1!6283 (get!3142 lt!337796))))))

(declare-fun b!917733 () Bool)

(declare-fun res!417239 () Bool)

(assert (=> b!917733 (=> (not res!417239) (not e!597883))))

(assert (=> b!917733 (= res!417239 (matchR!1002 (regTwo!5440 r!15766) (_2!6283 (get!3142 lt!337796))))))

(declare-fun b!917734 () Bool)

(assert (=> b!917734 (= e!597885 (matchR!1002 (regTwo!5440 r!15766) s!10566))))

(declare-fun b!917735 () Bool)

(assert (=> b!917735 (= e!597882 e!597886)))

(declare-fun c!148795 () Bool)

(assert (=> b!917735 (= c!148795 (is-Nil!9678 s!10566))))

(declare-fun b!917736 () Bool)

(assert (=> b!917736 (= e!597884 (not (isDefined!1741 lt!337796)))))

(assert (= (and d!279976 res!417238) b!917734))

(assert (= (and d!279976 c!148796) b!917730))

(assert (= (and d!279976 (not c!148796)) b!917735))

(assert (= (and b!917735 c!148795) b!917729))

(assert (= (and b!917735 (not c!148795)) b!917731))

(assert (= (and d!279976 res!417235) b!917732))

(assert (= (and b!917732 res!417236) b!917733))

(assert (= (and b!917733 res!417239) b!917728))

(assert (= (and d!279976 (not res!417237)) b!917736))

(declare-fun m!1146365 () Bool)

(assert (=> d!279976 m!1146365))

(declare-fun m!1146367 () Bool)

(assert (=> d!279976 m!1146367))

(assert (=> d!279976 m!1146193))

(assert (=> b!917736 m!1146365))

(declare-fun m!1146369 () Bool)

(assert (=> b!917728 m!1146369))

(declare-fun m!1146371 () Bool)

(assert (=> b!917728 m!1146371))

(declare-fun m!1146373 () Bool)

(assert (=> b!917734 m!1146373))

(assert (=> b!917733 m!1146369))

(declare-fun m!1146375 () Bool)

(assert (=> b!917733 m!1146375))

(assert (=> b!917731 m!1146289))

(assert (=> b!917731 m!1146289))

(assert (=> b!917731 m!1146291))

(assert (=> b!917731 m!1146293))

(assert (=> b!917731 m!1146289))

(declare-fun m!1146377 () Bool)

(assert (=> b!917731 m!1146377))

(assert (=> b!917732 m!1146369))

(declare-fun m!1146379 () Bool)

(assert (=> b!917732 m!1146379))

(assert (=> b!917410 d!279976))

(declare-fun bs!236204 () Bool)

(declare-fun d!279978 () Bool)

(assert (= bs!236204 (and d!279978 b!917540)))

(declare-fun lambda!29637 () Int)

(assert (=> bs!236204 (not (= lambda!29637 lambda!29630))))

(declare-fun bs!236205 () Bool)

(assert (= bs!236205 (and d!279978 d!279974)))

(assert (=> bs!236205 (= lambda!29637 lambda!29632)))

(declare-fun bs!236206 () Bool)

(assert (= bs!236206 (and d!279978 b!917412)))

(assert (=> bs!236206 (= (and (= (regOne!5440 r!15766) lt!337737) (= (regTwo!5440 r!15766) lt!337735)) (= lambda!29637 lambda!29611))))

(declare-fun bs!236207 () Bool)

(assert (= bs!236207 (and d!279978 b!917410)))

(assert (=> bs!236207 (= lambda!29637 lambda!29609)))

(assert (=> bs!236207 (not (= lambda!29637 lambda!29610))))

(declare-fun bs!236208 () Bool)

(assert (= bs!236208 (and d!279978 b!917539)))

(assert (=> bs!236208 (not (= lambda!29637 lambda!29631))))

(declare-fun bs!236209 () Bool)

(assert (= bs!236209 (and d!279978 d!279942)))

(assert (=> bs!236209 (= (and (= (regOne!5440 r!15766) lt!337737) (= (regTwo!5440 r!15766) lt!337735)) (= lambda!29637 lambda!29625))))

(assert (=> d!279978 true))

(assert (=> d!279978 true))

(assert (=> d!279978 true))

(declare-fun lambda!29638 () Int)

(assert (=> bs!236204 (not (= lambda!29638 lambda!29630))))

(assert (=> bs!236205 (not (= lambda!29638 lambda!29632))))

(assert (=> bs!236206 (not (= lambda!29638 lambda!29611))))

(assert (=> bs!236207 (not (= lambda!29638 lambda!29609))))

(assert (=> bs!236207 (= lambda!29638 lambda!29610)))

(assert (=> bs!236208 (= (and (= (regOne!5440 r!15766) (regOne!5440 lt!337734)) (= (regTwo!5440 r!15766) (regTwo!5440 lt!337734))) (= lambda!29638 lambda!29631))))

(declare-fun bs!236210 () Bool)

(assert (= bs!236210 d!279978))

(assert (=> bs!236210 (not (= lambda!29638 lambda!29637))))

(assert (=> bs!236209 (not (= lambda!29638 lambda!29625))))

(assert (=> d!279978 true))

(assert (=> d!279978 true))

(assert (=> d!279978 true))

(assert (=> d!279978 (= (Exists!235 lambda!29637) (Exists!235 lambda!29638))))

(declare-fun lt!337803 () Unit!14547)

(declare-fun choose!5604 (Regex!2464 Regex!2464 List!9694) Unit!14547)

(assert (=> d!279978 (= lt!337803 (choose!5604 (regOne!5440 r!15766) (regTwo!5440 r!15766) s!10566))))

(assert (=> d!279978 (validRegex!933 (regOne!5440 r!15766))))

(assert (=> d!279978 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!147 (regOne!5440 r!15766) (regTwo!5440 r!15766) s!10566) lt!337803)))

(declare-fun m!1146403 () Bool)

(assert (=> bs!236210 m!1146403))

(declare-fun m!1146405 () Bool)

(assert (=> bs!236210 m!1146405))

(declare-fun m!1146407 () Bool)

(assert (=> bs!236210 m!1146407))

(assert (=> bs!236210 m!1146193))

(assert (=> b!917410 d!279978))

(declare-fun bs!236211 () Bool)

(declare-fun b!917794 () Bool)

(assert (= bs!236211 (and b!917794 b!917540)))

(declare-fun lambda!29639 () Int)

(assert (=> bs!236211 (= (and (= (reg!2793 r!15766) (reg!2793 lt!337734)) (= r!15766 lt!337734)) (= lambda!29639 lambda!29630))))

(declare-fun bs!236212 () Bool)

(assert (= bs!236212 (and b!917794 b!917412)))

(assert (=> bs!236212 (not (= lambda!29639 lambda!29611))))

(declare-fun bs!236213 () Bool)

(assert (= bs!236213 (and b!917794 b!917410)))

(assert (=> bs!236213 (not (= lambda!29639 lambda!29609))))

(assert (=> bs!236213 (not (= lambda!29639 lambda!29610))))

(declare-fun bs!236214 () Bool)

(assert (= bs!236214 (and b!917794 b!917539)))

(assert (=> bs!236214 (not (= lambda!29639 lambda!29631))))

(declare-fun bs!236215 () Bool)

(assert (= bs!236215 (and b!917794 d!279978)))

(assert (=> bs!236215 (not (= lambda!29639 lambda!29637))))

(declare-fun bs!236216 () Bool)

(assert (= bs!236216 (and b!917794 d!279942)))

(assert (=> bs!236216 (not (= lambda!29639 lambda!29625))))

(assert (=> bs!236215 (not (= lambda!29639 lambda!29638))))

(declare-fun bs!236217 () Bool)

(assert (= bs!236217 (and b!917794 d!279974)))

(assert (=> bs!236217 (not (= lambda!29639 lambda!29632))))

(assert (=> b!917794 true))

(assert (=> b!917794 true))

(declare-fun bs!236218 () Bool)

(declare-fun b!917793 () Bool)

(assert (= bs!236218 (and b!917793 b!917540)))

(declare-fun lambda!29640 () Int)

(assert (=> bs!236218 (not (= lambda!29640 lambda!29630))))

(declare-fun bs!236219 () Bool)

(assert (= bs!236219 (and b!917793 b!917794)))

(assert (=> bs!236219 (not (= lambda!29640 lambda!29639))))

(declare-fun bs!236220 () Bool)

(assert (= bs!236220 (and b!917793 b!917412)))

(assert (=> bs!236220 (not (= lambda!29640 lambda!29611))))

(declare-fun bs!236221 () Bool)

(assert (= bs!236221 (and b!917793 b!917410)))

(assert (=> bs!236221 (not (= lambda!29640 lambda!29609))))

(assert (=> bs!236221 (= lambda!29640 lambda!29610)))

(declare-fun bs!236222 () Bool)

(assert (= bs!236222 (and b!917793 b!917539)))

(assert (=> bs!236222 (= (and (= (regOne!5440 r!15766) (regOne!5440 lt!337734)) (= (regTwo!5440 r!15766) (regTwo!5440 lt!337734))) (= lambda!29640 lambda!29631))))

(declare-fun bs!236223 () Bool)

(assert (= bs!236223 (and b!917793 d!279978)))

(assert (=> bs!236223 (not (= lambda!29640 lambda!29637))))

(declare-fun bs!236224 () Bool)

(assert (= bs!236224 (and b!917793 d!279942)))

(assert (=> bs!236224 (not (= lambda!29640 lambda!29625))))

(assert (=> bs!236223 (= lambda!29640 lambda!29638)))

(declare-fun bs!236225 () Bool)

(assert (= bs!236225 (and b!917793 d!279974)))

(assert (=> bs!236225 (not (= lambda!29640 lambda!29632))))

(assert (=> b!917793 true))

(assert (=> b!917793 true))

(declare-fun b!917785 () Bool)

(declare-fun e!597920 () Bool)

(assert (=> b!917785 (= e!597920 (= s!10566 (Cons!9678 (c!148719 r!15766) Nil!9678)))))

(declare-fun b!917786 () Bool)

(declare-fun c!148811 () Bool)

(assert (=> b!917786 (= c!148811 (is-ElementMatch!2464 r!15766))))

(declare-fun e!597919 () Bool)

(assert (=> b!917786 (= e!597919 e!597920)))

(declare-fun bm!55601 () Bool)

(declare-fun call!55607 () Bool)

(assert (=> bm!55601 (= call!55607 (isEmpty!5911 s!10566))))

(declare-fun b!917787 () Bool)

(declare-fun e!597917 () Bool)

(assert (=> b!917787 (= e!597917 e!597919)))

(declare-fun res!417262 () Bool)

(assert (=> b!917787 (= res!417262 (not (is-EmptyLang!2464 r!15766)))))

(assert (=> b!917787 (=> (not res!417262) (not e!597919))))

(declare-fun bm!55602 () Bool)

(declare-fun call!55606 () Bool)

(declare-fun c!148814 () Bool)

(assert (=> bm!55602 (= call!55606 (Exists!235 (ite c!148814 lambda!29639 lambda!29640)))))

(declare-fun b!917788 () Bool)

(declare-fun e!597921 () Bool)

(declare-fun e!597918 () Bool)

(assert (=> b!917788 (= e!597921 e!597918)))

(declare-fun res!417260 () Bool)

(assert (=> b!917788 (= res!417260 (matchRSpec!265 (regOne!5441 r!15766) s!10566))))

(assert (=> b!917788 (=> res!417260 e!597918)))

(declare-fun d!279984 () Bool)

(declare-fun c!148812 () Bool)

(assert (=> d!279984 (= c!148812 (is-EmptyExpr!2464 r!15766))))

(assert (=> d!279984 (= (matchRSpec!265 r!15766 s!10566) e!597917)))

(declare-fun b!917789 () Bool)

(assert (=> b!917789 (= e!597918 (matchRSpec!265 (regTwo!5441 r!15766) s!10566))))

(declare-fun b!917790 () Bool)

(assert (=> b!917790 (= e!597917 call!55607)))

(declare-fun b!917791 () Bool)

(declare-fun e!597923 () Bool)

(assert (=> b!917791 (= e!597921 e!597923)))

(assert (=> b!917791 (= c!148814 (is-Star!2464 r!15766))))

(declare-fun b!917792 () Bool)

(declare-fun res!417261 () Bool)

(declare-fun e!597922 () Bool)

(assert (=> b!917792 (=> res!417261 e!597922)))

(assert (=> b!917792 (= res!417261 call!55607)))

(assert (=> b!917792 (= e!597923 e!597922)))

(assert (=> b!917793 (= e!597923 call!55606)))

(assert (=> b!917794 (= e!597922 call!55606)))

(declare-fun b!917795 () Bool)

(declare-fun c!148813 () Bool)

(assert (=> b!917795 (= c!148813 (is-Union!2464 r!15766))))

(assert (=> b!917795 (= e!597920 e!597921)))

(assert (= (and d!279984 c!148812) b!917790))

(assert (= (and d!279984 (not c!148812)) b!917787))

(assert (= (and b!917787 res!417262) b!917786))

(assert (= (and b!917786 c!148811) b!917785))

(assert (= (and b!917786 (not c!148811)) b!917795))

(assert (= (and b!917795 c!148813) b!917788))

(assert (= (and b!917795 (not c!148813)) b!917791))

(assert (= (and b!917788 (not res!417260)) b!917789))

(assert (= (and b!917791 c!148814) b!917792))

(assert (= (and b!917791 (not c!148814)) b!917793))

(assert (= (and b!917792 (not res!417261)) b!917794))

(assert (= (or b!917794 b!917793) bm!55602))

(assert (= (or b!917790 b!917792) bm!55601))

(assert (=> bm!55601 m!1146183))

(declare-fun m!1146409 () Bool)

(assert (=> bm!55602 m!1146409))

(declare-fun m!1146411 () Bool)

(assert (=> b!917788 m!1146411))

(declare-fun m!1146413 () Bool)

(assert (=> b!917789 m!1146413))

(assert (=> b!917408 d!279984))

(declare-fun b!917796 () Bool)

(declare-fun e!597924 () Bool)

(declare-fun lt!337804 () Bool)

(declare-fun call!55610 () Bool)

(assert (=> b!917796 (= e!597924 (= lt!337804 call!55610))))

(declare-fun b!917797 () Bool)

(declare-fun res!417265 () Bool)

(declare-fun e!597926 () Bool)

(assert (=> b!917797 (=> res!417265 e!597926)))

(assert (=> b!917797 (= res!417265 (not (isEmpty!5911 (tail!1203 s!10566))))))

(declare-fun b!917798 () Bool)

(declare-fun e!597928 () Bool)

(assert (=> b!917798 (= e!597928 e!597926)))

(declare-fun res!417268 () Bool)

(assert (=> b!917798 (=> res!417268 e!597926)))

(assert (=> b!917798 (= res!417268 call!55610)))

(declare-fun b!917799 () Bool)

(declare-fun res!417264 () Bool)

(declare-fun e!597929 () Bool)

(assert (=> b!917799 (=> (not res!417264) (not e!597929))))

(assert (=> b!917799 (= res!417264 (not call!55610))))

(declare-fun b!917800 () Bool)

(declare-fun e!597925 () Bool)

(assert (=> b!917800 (= e!597924 e!597925)))

(declare-fun c!148816 () Bool)

(assert (=> b!917800 (= c!148816 (is-EmptyLang!2464 r!15766))))

(declare-fun b!917801 () Bool)

(declare-fun res!417266 () Bool)

(assert (=> b!917801 (=> (not res!417266) (not e!597929))))

(assert (=> b!917801 (= res!417266 (isEmpty!5911 (tail!1203 s!10566)))))

(declare-fun d!279986 () Bool)

(assert (=> d!279986 e!597924))

(declare-fun c!148815 () Bool)

(assert (=> d!279986 (= c!148815 (is-EmptyExpr!2464 r!15766))))

(declare-fun e!597927 () Bool)

(assert (=> d!279986 (= lt!337804 e!597927)))

(declare-fun c!148817 () Bool)

(assert (=> d!279986 (= c!148817 (isEmpty!5911 s!10566))))

(assert (=> d!279986 (validRegex!933 r!15766)))

(assert (=> d!279986 (= (matchR!1002 r!15766 s!10566) lt!337804)))

(declare-fun b!917802 () Bool)

(assert (=> b!917802 (= e!597925 (not lt!337804))))

(declare-fun b!917803 () Bool)

(declare-fun res!417267 () Bool)

(declare-fun e!597930 () Bool)

(assert (=> b!917803 (=> res!417267 e!597930)))

(assert (=> b!917803 (= res!417267 (not (is-ElementMatch!2464 r!15766)))))

(assert (=> b!917803 (= e!597925 e!597930)))

(declare-fun b!917804 () Bool)

(assert (=> b!917804 (= e!597927 (matchR!1002 (derivativeStep!488 r!15766 (head!1641 s!10566)) (tail!1203 s!10566)))))

(declare-fun bm!55605 () Bool)

(assert (=> bm!55605 (= call!55610 (isEmpty!5911 s!10566))))

(declare-fun b!917805 () Bool)

(assert (=> b!917805 (= e!597930 e!597928)))

(declare-fun res!417269 () Bool)

(assert (=> b!917805 (=> (not res!417269) (not e!597928))))

(assert (=> b!917805 (= res!417269 (not lt!337804))))

(declare-fun b!917806 () Bool)

(assert (=> b!917806 (= e!597926 (not (= (head!1641 s!10566) (c!148719 r!15766))))))

(declare-fun b!917807 () Bool)

(assert (=> b!917807 (= e!597929 (= (head!1641 s!10566) (c!148719 r!15766)))))

(declare-fun b!917808 () Bool)

(assert (=> b!917808 (= e!597927 (nullable!678 r!15766))))

(declare-fun b!917809 () Bool)

(declare-fun res!417270 () Bool)

(assert (=> b!917809 (=> res!417270 e!597930)))

(assert (=> b!917809 (= res!417270 e!597929)))

(declare-fun res!417263 () Bool)

(assert (=> b!917809 (=> (not res!417263) (not e!597929))))

(assert (=> b!917809 (= res!417263 lt!337804)))

(assert (= (and d!279986 c!148817) b!917808))

(assert (= (and d!279986 (not c!148817)) b!917804))

(assert (= (and d!279986 c!148815) b!917796))

(assert (= (and d!279986 (not c!148815)) b!917800))

(assert (= (and b!917800 c!148816) b!917802))

(assert (= (and b!917800 (not c!148816)) b!917803))

(assert (= (and b!917803 (not res!417267)) b!917809))

(assert (= (and b!917809 res!417263) b!917799))

(assert (= (and b!917799 res!417264) b!917801))

(assert (= (and b!917801 res!417266) b!917807))

(assert (= (and b!917809 (not res!417270)) b!917805))

(assert (= (and b!917805 res!417269) b!917798))

(assert (= (and b!917798 (not res!417268)) b!917797))

(assert (= (and b!917797 (not res!417265)) b!917806))

(assert (= (or b!917796 b!917798 b!917799) bm!55605))

(assert (=> b!917801 m!1146321))

(assert (=> b!917801 m!1146321))

(assert (=> b!917801 m!1146323))

(declare-fun m!1146415 () Bool)

(assert (=> b!917808 m!1146415))

(assert (=> b!917797 m!1146321))

(assert (=> b!917797 m!1146321))

(assert (=> b!917797 m!1146323))

(assert (=> b!917804 m!1146327))

(assert (=> b!917804 m!1146327))

(declare-fun m!1146417 () Bool)

(assert (=> b!917804 m!1146417))

(assert (=> b!917804 m!1146321))

(assert (=> b!917804 m!1146417))

(assert (=> b!917804 m!1146321))

(declare-fun m!1146419 () Bool)

(assert (=> b!917804 m!1146419))

(assert (=> b!917806 m!1146327))

(assert (=> b!917807 m!1146327))

(assert (=> d!279986 m!1146183))

(assert (=> d!279986 m!1146209))

(assert (=> bm!55605 m!1146183))

(assert (=> b!917408 d!279986))

(declare-fun d!279988 () Bool)

(assert (=> d!279988 (= (matchR!1002 r!15766 s!10566) (matchRSpec!265 r!15766 s!10566))))

(declare-fun lt!337805 () Unit!14547)

(assert (=> d!279988 (= lt!337805 (choose!5602 r!15766 s!10566))))

(assert (=> d!279988 (validRegex!933 r!15766)))

(assert (=> d!279988 (= (mainMatchTheorem!265 r!15766 s!10566) lt!337805)))

(declare-fun bs!236226 () Bool)

(assert (= bs!236226 d!279988))

(assert (=> bs!236226 m!1146171))

(assert (=> bs!236226 m!1146169))

(declare-fun m!1146421 () Bool)

(assert (=> bs!236226 m!1146421))

(assert (=> bs!236226 m!1146209))

(assert (=> b!917408 d!279988))

(declare-fun b!917814 () Bool)

(declare-fun e!597933 () Bool)

(declare-fun tp!286307 () Bool)

(assert (=> b!917814 (= e!597933 (and tp_is_empty!4571 tp!286307))))

(assert (=> b!917411 (= tp!286283 e!597933)))

(assert (= (and b!917411 (is-Cons!9678 (t!100740 s!10566))) b!917814))

(declare-fun b!917834 () Bool)

(declare-fun e!597943 () Bool)

(assert (=> b!917834 (= e!597943 tp_is_empty!4571)))

(assert (=> b!917409 (= tp!286282 e!597943)))

(declare-fun b!917835 () Bool)

(declare-fun tp!286319 () Bool)

(declare-fun tp!286322 () Bool)

(assert (=> b!917835 (= e!597943 (and tp!286319 tp!286322))))

(declare-fun b!917837 () Bool)

(declare-fun tp!286318 () Bool)

(declare-fun tp!286320 () Bool)

(assert (=> b!917837 (= e!597943 (and tp!286318 tp!286320))))

(declare-fun b!917836 () Bool)

(declare-fun tp!286321 () Bool)

(assert (=> b!917836 (= e!597943 tp!286321)))

(assert (= (and b!917409 (is-ElementMatch!2464 (regOne!5441 r!15766))) b!917834))

(assert (= (and b!917409 (is-Concat!4297 (regOne!5441 r!15766))) b!917835))

(assert (= (and b!917409 (is-Star!2464 (regOne!5441 r!15766))) b!917836))

(assert (= (and b!917409 (is-Union!2464 (regOne!5441 r!15766))) b!917837))

(declare-fun b!917838 () Bool)

(declare-fun e!597944 () Bool)

(assert (=> b!917838 (= e!597944 tp_is_empty!4571)))

(assert (=> b!917409 (= tp!286286 e!597944)))

(declare-fun b!917839 () Bool)

(declare-fun tp!286324 () Bool)

(declare-fun tp!286327 () Bool)

(assert (=> b!917839 (= e!597944 (and tp!286324 tp!286327))))

(declare-fun b!917841 () Bool)

(declare-fun tp!286323 () Bool)

(declare-fun tp!286325 () Bool)

(assert (=> b!917841 (= e!597944 (and tp!286323 tp!286325))))

(declare-fun b!917840 () Bool)

(declare-fun tp!286326 () Bool)

(assert (=> b!917840 (= e!597944 tp!286326)))

(assert (= (and b!917409 (is-ElementMatch!2464 (regTwo!5441 r!15766))) b!917838))

(assert (= (and b!917409 (is-Concat!4297 (regTwo!5441 r!15766))) b!917839))

(assert (= (and b!917409 (is-Star!2464 (regTwo!5441 r!15766))) b!917840))

(assert (= (and b!917409 (is-Union!2464 (regTwo!5441 r!15766))) b!917841))

(declare-fun b!917842 () Bool)

(declare-fun e!597945 () Bool)

(assert (=> b!917842 (= e!597945 tp_is_empty!4571)))

(assert (=> b!917414 (= tp!286284 e!597945)))

(declare-fun b!917843 () Bool)

(declare-fun tp!286329 () Bool)

(declare-fun tp!286332 () Bool)

(assert (=> b!917843 (= e!597945 (and tp!286329 tp!286332))))

(declare-fun b!917845 () Bool)

(declare-fun tp!286328 () Bool)

(declare-fun tp!286330 () Bool)

(assert (=> b!917845 (= e!597945 (and tp!286328 tp!286330))))

(declare-fun b!917844 () Bool)

(declare-fun tp!286331 () Bool)

(assert (=> b!917844 (= e!597945 tp!286331)))

(assert (= (and b!917414 (is-ElementMatch!2464 (reg!2793 r!15766))) b!917842))

(assert (= (and b!917414 (is-Concat!4297 (reg!2793 r!15766))) b!917843))

(assert (= (and b!917414 (is-Star!2464 (reg!2793 r!15766))) b!917844))

(assert (= (and b!917414 (is-Union!2464 (reg!2793 r!15766))) b!917845))

(declare-fun b!917846 () Bool)

(declare-fun e!597946 () Bool)

(assert (=> b!917846 (= e!597946 tp_is_empty!4571)))

(assert (=> b!917413 (= tp!286281 e!597946)))

(declare-fun b!917847 () Bool)

(declare-fun tp!286334 () Bool)

(declare-fun tp!286337 () Bool)

(assert (=> b!917847 (= e!597946 (and tp!286334 tp!286337))))

(declare-fun b!917849 () Bool)

(declare-fun tp!286333 () Bool)

(declare-fun tp!286335 () Bool)

(assert (=> b!917849 (= e!597946 (and tp!286333 tp!286335))))

(declare-fun b!917848 () Bool)

(declare-fun tp!286336 () Bool)

(assert (=> b!917848 (= e!597946 tp!286336)))

(assert (= (and b!917413 (is-ElementMatch!2464 (regOne!5440 r!15766))) b!917846))

(assert (= (and b!917413 (is-Concat!4297 (regOne!5440 r!15766))) b!917847))

(assert (= (and b!917413 (is-Star!2464 (regOne!5440 r!15766))) b!917848))

(assert (= (and b!917413 (is-Union!2464 (regOne!5440 r!15766))) b!917849))

(declare-fun b!917850 () Bool)

(declare-fun e!597947 () Bool)

(assert (=> b!917850 (= e!597947 tp_is_empty!4571)))

(assert (=> b!917413 (= tp!286285 e!597947)))

(declare-fun b!917851 () Bool)

(declare-fun tp!286339 () Bool)

(declare-fun tp!286342 () Bool)

(assert (=> b!917851 (= e!597947 (and tp!286339 tp!286342))))

(declare-fun b!917853 () Bool)

(declare-fun tp!286338 () Bool)

(declare-fun tp!286340 () Bool)

(assert (=> b!917853 (= e!597947 (and tp!286338 tp!286340))))

(declare-fun b!917852 () Bool)

(declare-fun tp!286341 () Bool)

(assert (=> b!917852 (= e!597947 tp!286341)))

(assert (= (and b!917413 (is-ElementMatch!2464 (regTwo!5440 r!15766))) b!917850))

(assert (= (and b!917413 (is-Concat!4297 (regTwo!5440 r!15766))) b!917851))

(assert (= (and b!917413 (is-Star!2464 (regTwo!5440 r!15766))) b!917852))

(assert (= (and b!917413 (is-Union!2464 (regTwo!5440 r!15766))) b!917853))

(push 1)

(assert (not bm!55605))

(assert (not b!917806))

(assert (not b!917732))

(assert (not b!917797))

(assert (not b!917839))

(assert (not b!917596))

(assert (not b!917804))

(assert (not b!917588))

(assert (not bm!55539))

(assert (not bm!55582))

(assert (not bm!55556))

(assert (not d!279944))

(assert (not bm!55577))

(assert (not d!279988))

(assert (not b!917534))

(assert (not b!917840))

(assert (not b!917728))

(assert (not bm!55602))

(assert (not b!917841))

(assert (not d!279950))

(assert (not b!917599))

(assert (not d!279964))

(assert (not b!917659))

(assert (not b!917848))

(assert (not b!917594))

(assert (not b!917852))

(assert (not d!279978))

(assert (not d!279976))

(assert (not bm!55547))

(assert (not b!917808))

(assert (not b!917836))

(assert (not d!279954))

(assert (not b!917837))

(assert (not b!917591))

(assert (not b!917801))

(assert (not b!917851))

(assert (not d!279962))

(assert (not b!917849))

(assert (not d!279970))

(assert (not bm!55541))

(assert (not bm!55585))

(assert (not b!917656))

(assert (not b!917835))

(assert (not b!917658))

(assert (not b!917788))

(assert (not b!917734))

(assert (not bm!55546))

(assert (not b!917847))

(assert (not b!917649))

(assert (not b!917845))

(assert (not bm!55552))

(assert (not b!917807))

(assert (not bm!55550))

(assert (not b!917592))

(assert (not b!917660))

(assert (not bm!55580))

(assert (not b!917711))

(assert (not b!917731))

(assert (not b!917593))

(assert (not b!917844))

(assert (not b!917488))

(assert (not d!279968))

(assert (not b!917736))

(assert (not d!279952))

(assert (not b!917722))

(assert (not b!917733))

(assert tp_is_empty!4571)

(assert (not b!917843))

(assert (not d!279958))

(assert (not b!917535))

(assert (not bm!55601))

(assert (not d!279972))

(assert (not b!917653))

(assert (not d!279974))

(assert (not b!917853))

(assert (not d!279986))

(assert (not d!279942))

(assert (not b!917814))

(assert (not b!917789))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

