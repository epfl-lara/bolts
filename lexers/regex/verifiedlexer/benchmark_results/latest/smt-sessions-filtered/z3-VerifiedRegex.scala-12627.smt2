; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699708 () Bool)

(assert start!699708)

(declare-fun b!7191093 () Bool)

(assert (=> b!7191093 true))

(declare-fun b!7191090 () Bool)

(assert (=> b!7191090 true))

(assert (=> b!7191090 true))

(declare-fun b!7191089 () Bool)

(declare-fun res!2927854 () Bool)

(declare-fun e!4318294 () Bool)

(assert (=> b!7191089 (=> (not res!2927854) (not e!4318294))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37000 0))(
  ( (C!37001 (val!28448 Int)) )
))
(declare-datatypes ((Regex!18363 0))(
  ( (ElementMatch!18363 (c!1338487 C!37000)) (Concat!27208 (regOne!37238 Regex!18363) (regTwo!37238 Regex!18363)) (EmptyExpr!18363) (Star!18363 (reg!18692 Regex!18363)) (EmptyLang!18363) (Union!18363 (regOne!37239 Regex!18363) (regTwo!37239 Regex!18363)) )
))
(declare-datatypes ((List!69817 0))(
  ( (Nil!69693) (Cons!69693 (h!76141 Regex!18363) (t!383840 List!69817)) )
))
(declare-datatypes ((Context!14630 0))(
  ( (Context!14631 (exprs!7815 List!69817)) )
))
(declare-fun z!3530 () (InoxSet Context!14630))

(declare-fun focus!438 (Regex!18363) (InoxSet Context!14630))

(assert (=> b!7191089 (= res!2927854 (not (= z!3530 (focus!438 EmptyExpr!18363))))))

(declare-fun e!4318290 () Bool)

(declare-fun lambda!437845 () Int)

(declare-fun exists!4085 ((InoxSet Context!14630) Int) Bool)

(assert (=> b!7191090 (= e!4318290 (not (not (exists!4085 z!3530 lambda!437845))))))

(declare-fun lambda!437844 () Int)

(declare-fun lt!2571216 () Context!14630)

(declare-fun empty!2999 () Context!14630)

(declare-fun flatMapPost!70 ((InoxSet Context!14630) Int Context!14630) Context!14630)

(assert (=> b!7191090 (= (flatMapPost!70 z!3530 lambda!437844 lt!2571216) empty!2999)))

(assert (=> b!7191090 true))

(declare-fun e!4318293 () Bool)

(declare-fun inv!88929 (Context!14630) Bool)

(assert (=> b!7191090 (and (inv!88929 empty!2999) e!4318293)))

(declare-fun b!7191091 () Bool)

(declare-fun e!4318289 () Bool)

(declare-fun e!4318292 () Bool)

(assert (=> b!7191091 (= e!4318289 e!4318292)))

(declare-fun res!2927858 () Bool)

(assert (=> b!7191091 (=> (not res!2927858) (not e!4318292))))

(declare-fun lt!2571217 () Context!14630)

(declare-fun lt!2571215 () C!37000)

(declare-fun derivationStepZipperUp!2333 (Context!14630 C!37000) (InoxSet Context!14630))

(assert (=> b!7191091 (= res!2927858 (= (derivationStepZipperUp!2333 lt!2571217 lt!2571215) ((as const (Array Context!14630 Bool)) false)))))

(declare-fun lt!2571218 () (InoxSet Context!14630))

(declare-fun derivationStepZipper!3228 ((InoxSet Context!14630) C!37000) (InoxSet Context!14630))

(assert (=> b!7191091 (= lt!2571218 (derivationStepZipper!3228 z!3530 lt!2571215))))

(declare-datatypes ((List!69818 0))(
  ( (Nil!69694) (Cons!69694 (h!76142 C!37000) (t!383841 List!69818)) )
))
(declare-fun s!7967 () List!69818)

(declare-fun head!14686 (List!69818) C!37000)

(assert (=> b!7191091 (= lt!2571215 (head!14686 s!7967))))

(declare-fun res!2927853 () Bool)

(assert (=> start!699708 (=> (not res!2927853) (not e!4318294))))

(declare-datatypes ((List!69819 0))(
  ( (Nil!69695) (Cons!69695 (h!76143 Context!14630) (t!383842 List!69819)) )
))
(declare-fun unfocusZipper!2623 (List!69819) Regex!18363)

(declare-fun toList!11306 ((InoxSet Context!14630)) List!69819)

(assert (=> start!699708 (= res!2927853 (= (unfocusZipper!2623 (toList!11306 z!3530)) EmptyExpr!18363))))

(assert (=> start!699708 e!4318294))

(declare-fun condSetEmpty!53245 () Bool)

(assert (=> start!699708 (= condSetEmpty!53245 (= z!3530 ((as const (Array Context!14630 Bool)) false)))))

(declare-fun setRes!53245 () Bool)

(assert (=> start!699708 setRes!53245))

(declare-fun e!4318291 () Bool)

(assert (=> start!699708 e!4318291))

(declare-fun setIsEmpty!53245 () Bool)

(assert (=> setIsEmpty!53245 setRes!53245))

(declare-fun b!7191092 () Bool)

(declare-fun tp_is_empty!46287 () Bool)

(declare-fun tp!1998428 () Bool)

(assert (=> b!7191092 (= e!4318291 (and tp_is_empty!46287 tp!1998428))))

(assert (=> b!7191093 (= e!4318292 e!4318290)))

(declare-fun res!2927855 () Bool)

(assert (=> b!7191093 (=> (not res!2927855) (not e!4318290))))

(declare-fun flatMap!2675 ((InoxSet Context!14630) Int) (InoxSet Context!14630))

(assert (=> b!7191093 (= res!2927855 (select (flatMap!2675 z!3530 lambda!437844) lt!2571216))))

(declare-fun head!14687 (List!69819) Context!14630)

(assert (=> b!7191093 (= lt!2571216 (head!14687 (toList!11306 lt!2571218)))))

(declare-fun b!7191094 () Bool)

(declare-fun e!4318295 () Bool)

(declare-fun tp!1998430 () Bool)

(assert (=> b!7191094 (= e!4318295 tp!1998430)))

(declare-fun b!7191095 () Bool)

(assert (=> b!7191095 (= e!4318294 e!4318289)))

(declare-fun res!2927857 () Bool)

(assert (=> b!7191095 (=> (not res!2927857) (not e!4318289))))

(assert (=> b!7191095 (= res!2927857 (= z!3530 (store ((as const (Array Context!14630 Bool)) false) lt!2571217 true)))))

(assert (=> b!7191095 (= lt!2571217 (Context!14631 Nil!69693))))

(declare-fun b!7191096 () Bool)

(declare-fun res!2927856 () Bool)

(assert (=> b!7191096 (=> (not res!2927856) (not e!4318289))))

(declare-fun isEmpty!40228 (List!69818) Bool)

(assert (=> b!7191096 (= res!2927856 (not (isEmpty!40228 s!7967)))))

(declare-fun b!7191097 () Bool)

(declare-fun res!2927860 () Bool)

(assert (=> b!7191097 (=> (not res!2927860) (not e!4318290))))

(assert (=> b!7191097 (= res!2927860 (select lt!2571218 lt!2571216))))

(declare-fun setNonEmpty!53245 () Bool)

(declare-fun tp!1998431 () Bool)

(declare-fun setElem!53245 () Context!14630)

(assert (=> setNonEmpty!53245 (= setRes!53245 (and tp!1998431 (inv!88929 setElem!53245) e!4318295))))

(declare-fun setRest!53245 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53245 (= z!3530 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53245 true) setRest!53245))))

(declare-fun b!7191098 () Bool)

(declare-fun res!2927859 () Bool)

(assert (=> b!7191098 (=> (not res!2927859) (not e!4318292))))

(assert (=> b!7191098 (= res!2927859 (not (= lt!2571218 ((as const (Array Context!14630 Bool)) false))))))

(declare-fun b!7191099 () Bool)

(declare-fun tp!1998429 () Bool)

(assert (=> b!7191099 (= e!4318293 tp!1998429)))

(assert (= (and start!699708 res!2927853) b!7191089))

(assert (= (and b!7191089 res!2927854) b!7191095))

(assert (= (and b!7191095 res!2927857) b!7191096))

(assert (= (and b!7191096 res!2927856) b!7191091))

(assert (= (and b!7191091 res!2927858) b!7191098))

(assert (= (and b!7191098 res!2927859) b!7191093))

(assert (= (and b!7191093 res!2927855) b!7191097))

(assert (= (and b!7191097 res!2927860) b!7191090))

(assert (= b!7191090 b!7191099))

(assert (= (and start!699708 condSetEmpty!53245) setIsEmpty!53245))

(assert (= (and start!699708 (not condSetEmpty!53245)) setNonEmpty!53245))

(assert (= setNonEmpty!53245 b!7191094))

(get-info :version)

(assert (= (and start!699708 ((_ is Cons!69694) s!7967)) b!7191092))

(declare-fun m!7886202 () Bool)

(assert (=> setNonEmpty!53245 m!7886202))

(declare-fun m!7886204 () Bool)

(assert (=> b!7191097 m!7886204))

(declare-fun m!7886206 () Bool)

(assert (=> b!7191091 m!7886206))

(declare-fun m!7886208 () Bool)

(assert (=> b!7191091 m!7886208))

(declare-fun m!7886210 () Bool)

(assert (=> b!7191091 m!7886210))

(declare-fun m!7886212 () Bool)

(assert (=> b!7191089 m!7886212))

(declare-fun m!7886214 () Bool)

(assert (=> b!7191093 m!7886214))

(declare-fun m!7886216 () Bool)

(assert (=> b!7191093 m!7886216))

(declare-fun m!7886218 () Bool)

(assert (=> b!7191093 m!7886218))

(assert (=> b!7191093 m!7886218))

(declare-fun m!7886220 () Bool)

(assert (=> b!7191093 m!7886220))

(declare-fun m!7886222 () Bool)

(assert (=> b!7191096 m!7886222))

(declare-fun m!7886224 () Bool)

(assert (=> b!7191090 m!7886224))

(declare-fun m!7886226 () Bool)

(assert (=> b!7191090 m!7886226))

(declare-fun m!7886228 () Bool)

(assert (=> b!7191090 m!7886228))

(declare-fun m!7886230 () Bool)

(assert (=> start!699708 m!7886230))

(assert (=> start!699708 m!7886230))

(declare-fun m!7886232 () Bool)

(assert (=> start!699708 m!7886232))

(declare-fun m!7886234 () Bool)

(assert (=> b!7191095 m!7886234))

(check-sat (not b!7191090) (not b!7191094) (not b!7191099) (not b!7191093) (not setNonEmpty!53245) (not b!7191096) (not b!7191092) tp_is_empty!46287 (not b!7191089) (not start!699708) (not b!7191091))
(check-sat)
(get-model)

(declare-fun b!7191116 () Bool)

(declare-fun e!4318302 () Bool)

(declare-fun nullable!7785 (Regex!18363) Bool)

(assert (=> b!7191116 (= e!4318302 (nullable!7785 (h!76141 (exprs!7815 lt!2571217))))))

(declare-fun b!7191117 () Bool)

(declare-fun e!4318303 () (InoxSet Context!14630))

(declare-fun call!655613 () (InoxSet Context!14630))

(assert (=> b!7191117 (= e!4318303 call!655613)))

(declare-fun d!2240036 () Bool)

(declare-fun c!1338493 () Bool)

(assert (=> d!2240036 (= c!1338493 e!4318302)))

(declare-fun res!2927864 () Bool)

(assert (=> d!2240036 (=> (not res!2927864) (not e!4318302))))

(assert (=> d!2240036 (= res!2927864 ((_ is Cons!69693) (exprs!7815 lt!2571217)))))

(declare-fun e!4318304 () (InoxSet Context!14630))

(assert (=> d!2240036 (= (derivationStepZipperUp!2333 lt!2571217 lt!2571215) e!4318304)))

(declare-fun b!7191118 () Bool)

(assert (=> b!7191118 (= e!4318303 ((as const (Array Context!14630 Bool)) false))))

(declare-fun bm!655608 () Bool)

(declare-fun derivationStepZipperDown!2516 (Regex!18363 Context!14630 C!37000) (InoxSet Context!14630))

(assert (=> bm!655608 (= call!655613 (derivationStepZipperDown!2516 (h!76141 (exprs!7815 lt!2571217)) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) lt!2571215))))

(declare-fun b!7191119 () Bool)

(assert (=> b!7191119 (= e!4318304 e!4318303)))

(declare-fun c!1338492 () Bool)

(assert (=> b!7191119 (= c!1338492 ((_ is Cons!69693) (exprs!7815 lt!2571217)))))

(declare-fun b!7191120 () Bool)

(assert (=> b!7191120 (= e!4318304 ((_ map or) call!655613 (derivationStepZipperUp!2333 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) lt!2571215)))))

(assert (= (and d!2240036 res!2927864) b!7191116))

(assert (= (and d!2240036 c!1338493) b!7191120))

(assert (= (and d!2240036 (not c!1338493)) b!7191119))

(assert (= (and b!7191119 c!1338492) b!7191117))

(assert (= (and b!7191119 (not c!1338492)) b!7191118))

(assert (= (or b!7191120 b!7191117) bm!655608))

(declare-fun m!7886236 () Bool)

(assert (=> b!7191116 m!7886236))

(declare-fun m!7886238 () Bool)

(assert (=> bm!655608 m!7886238))

(declare-fun m!7886240 () Bool)

(assert (=> b!7191120 m!7886240))

(assert (=> b!7191091 d!2240036))

(declare-fun bs!1899443 () Bool)

(declare-fun d!2240040 () Bool)

(assert (= bs!1899443 (and d!2240040 b!7191093)))

(declare-fun lambda!437848 () Int)

(assert (=> bs!1899443 (= lambda!437848 lambda!437844)))

(assert (=> d!2240040 true))

(assert (=> d!2240040 (= (derivationStepZipper!3228 z!3530 lt!2571215) (flatMap!2675 z!3530 lambda!437848))))

(declare-fun bs!1899444 () Bool)

(assert (= bs!1899444 d!2240040))

(declare-fun m!7886256 () Bool)

(assert (=> bs!1899444 m!7886256))

(assert (=> b!7191091 d!2240040))

(declare-fun d!2240046 () Bool)

(assert (=> d!2240046 (= (head!14686 s!7967) (h!76142 s!7967))))

(assert (=> b!7191091 d!2240046))

(declare-fun d!2240048 () Bool)

(declare-fun lt!2571228 () Regex!18363)

(declare-fun validRegex!9478 (Regex!18363) Bool)

(assert (=> d!2240048 (validRegex!9478 lt!2571228)))

(declare-fun generalisedUnion!2780 (List!69817) Regex!18363)

(declare-fun unfocusZipperList!2336 (List!69819) List!69817)

(assert (=> d!2240048 (= lt!2571228 (generalisedUnion!2780 (unfocusZipperList!2336 (toList!11306 z!3530))))))

(assert (=> d!2240048 (= (unfocusZipper!2623 (toList!11306 z!3530)) lt!2571228)))

(declare-fun bs!1899446 () Bool)

(assert (= bs!1899446 d!2240048))

(declare-fun m!7886272 () Bool)

(assert (=> bs!1899446 m!7886272))

(assert (=> bs!1899446 m!7886230))

(declare-fun m!7886274 () Bool)

(assert (=> bs!1899446 m!7886274))

(assert (=> bs!1899446 m!7886274))

(declare-fun m!7886276 () Bool)

(assert (=> bs!1899446 m!7886276))

(assert (=> start!699708 d!2240048))

(declare-fun d!2240058 () Bool)

(declare-fun e!4318323 () Bool)

(assert (=> d!2240058 e!4318323))

(declare-fun res!2927877 () Bool)

(assert (=> d!2240058 (=> (not res!2927877) (not e!4318323))))

(declare-fun lt!2571231 () List!69819)

(declare-fun noDuplicate!2896 (List!69819) Bool)

(assert (=> d!2240058 (= res!2927877 (noDuplicate!2896 lt!2571231))))

(declare-fun choose!55411 ((InoxSet Context!14630)) List!69819)

(assert (=> d!2240058 (= lt!2571231 (choose!55411 z!3530))))

(assert (=> d!2240058 (= (toList!11306 z!3530) lt!2571231)))

(declare-fun b!7191145 () Bool)

(declare-fun content!14325 (List!69819) (InoxSet Context!14630))

(assert (=> b!7191145 (= e!4318323 (= (content!14325 lt!2571231) z!3530))))

(assert (= (and d!2240058 res!2927877) b!7191145))

(declare-fun m!7886286 () Bool)

(assert (=> d!2240058 m!7886286))

(declare-fun m!7886288 () Bool)

(assert (=> d!2240058 m!7886288))

(declare-fun m!7886290 () Bool)

(assert (=> b!7191145 m!7886290))

(assert (=> start!699708 d!2240058))

(declare-fun d!2240066 () Bool)

(declare-fun lt!2571237 () Bool)

(declare-fun exists!4087 (List!69819 Int) Bool)

(assert (=> d!2240066 (= lt!2571237 (exists!4087 (toList!11306 z!3530) lambda!437845))))

(declare-fun choose!55412 ((InoxSet Context!14630) Int) Bool)

(assert (=> d!2240066 (= lt!2571237 (choose!55412 z!3530 lambda!437845))))

(assert (=> d!2240066 (= (exists!4085 z!3530 lambda!437845) lt!2571237)))

(declare-fun bs!1899451 () Bool)

(assert (= bs!1899451 d!2240066))

(assert (=> bs!1899451 m!7886230))

(assert (=> bs!1899451 m!7886230))

(declare-fun m!7886298 () Bool)

(assert (=> bs!1899451 m!7886298))

(declare-fun m!7886300 () Bool)

(assert (=> bs!1899451 m!7886300))

(assert (=> b!7191090 d!2240066))

(declare-fun bs!1899456 () Bool)

(declare-fun d!2240074 () Bool)

(assert (= bs!1899456 (and d!2240074 b!7191090)))

(declare-fun lambda!437861 () Int)

(assert (=> bs!1899456 (not (= lambda!437861 lambda!437845))))

(assert (=> d!2240074 true))

(assert (=> d!2240074 true))

(declare-fun order!28709 () Int)

(declare-fun order!28707 () Int)

(declare-fun dynLambda!28385 (Int Int) Int)

(declare-fun dynLambda!28386 (Int Int) Int)

(assert (=> d!2240074 (< (dynLambda!28385 order!28707 lambda!437844) (dynLambda!28386 order!28709 lambda!437861))))

(assert (=> d!2240074 (= (select (flatMap!2675 z!3530 lambda!437844) lt!2571216) (exists!4085 z!3530 lambda!437861))))

(declare-fun lt!2571243 () Context!14630)

(declare-fun choose!55413 ((InoxSet Context!14630) Int Context!14630) Context!14630)

(assert (=> d!2240074 (= lt!2571243 (choose!55413 z!3530 lambda!437844 lt!2571216))))

(assert (=> d!2240074 (= (flatMapPost!70 z!3530 lambda!437844 lt!2571216) lt!2571243)))

(declare-fun bs!1899457 () Bool)

(assert (= bs!1899457 d!2240074))

(assert (=> bs!1899457 m!7886214))

(assert (=> bs!1899457 m!7886216))

(declare-fun m!7886310 () Bool)

(assert (=> bs!1899457 m!7886310))

(declare-fun m!7886312 () Bool)

(assert (=> bs!1899457 m!7886312))

(assert (=> b!7191090 d!2240074))

(declare-fun d!2240078 () Bool)

(declare-fun lambda!437864 () Int)

(declare-fun forall!17191 (List!69817 Int) Bool)

(assert (=> d!2240078 (= (inv!88929 empty!2999) (forall!17191 (exprs!7815 empty!2999) lambda!437864))))

(declare-fun bs!1899458 () Bool)

(assert (= bs!1899458 d!2240078))

(declare-fun m!7886314 () Bool)

(assert (=> bs!1899458 m!7886314))

(assert (=> b!7191090 d!2240078))

(declare-fun d!2240080 () Bool)

(declare-fun e!4318336 () Bool)

(assert (=> d!2240080 e!4318336))

(declare-fun res!2927881 () Bool)

(assert (=> d!2240080 (=> (not res!2927881) (not e!4318336))))

(assert (=> d!2240080 (= res!2927881 (validRegex!9478 EmptyExpr!18363))))

(assert (=> d!2240080 (= (focus!438 EmptyExpr!18363) (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))

(declare-fun b!7191170 () Bool)

(assert (=> b!7191170 (= e!4318336 (= (unfocusZipper!2623 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))) EmptyExpr!18363))))

(assert (= (and d!2240080 res!2927881) b!7191170))

(declare-fun m!7886316 () Bool)

(assert (=> d!2240080 m!7886316))

(declare-fun m!7886318 () Bool)

(assert (=> d!2240080 m!7886318))

(assert (=> b!7191170 m!7886318))

(assert (=> b!7191170 m!7886318))

(declare-fun m!7886320 () Bool)

(assert (=> b!7191170 m!7886320))

(assert (=> b!7191170 m!7886320))

(declare-fun m!7886322 () Bool)

(assert (=> b!7191170 m!7886322))

(assert (=> b!7191089 d!2240080))

(declare-fun d!2240082 () Bool)

(declare-fun choose!55414 ((InoxSet Context!14630) Int) (InoxSet Context!14630))

(assert (=> d!2240082 (= (flatMap!2675 z!3530 lambda!437844) (choose!55414 z!3530 lambda!437844))))

(declare-fun bs!1899459 () Bool)

(assert (= bs!1899459 d!2240082))

(declare-fun m!7886324 () Bool)

(assert (=> bs!1899459 m!7886324))

(assert (=> b!7191093 d!2240082))

(declare-fun d!2240084 () Bool)

(assert (=> d!2240084 (= (head!14687 (toList!11306 lt!2571218)) (h!76143 (toList!11306 lt!2571218)))))

(assert (=> b!7191093 d!2240084))

(declare-fun d!2240086 () Bool)

(declare-fun e!4318337 () Bool)

(assert (=> d!2240086 e!4318337))

(declare-fun res!2927882 () Bool)

(assert (=> d!2240086 (=> (not res!2927882) (not e!4318337))))

(declare-fun lt!2571244 () List!69819)

(assert (=> d!2240086 (= res!2927882 (noDuplicate!2896 lt!2571244))))

(assert (=> d!2240086 (= lt!2571244 (choose!55411 lt!2571218))))

(assert (=> d!2240086 (= (toList!11306 lt!2571218) lt!2571244)))

(declare-fun b!7191171 () Bool)

(assert (=> b!7191171 (= e!4318337 (= (content!14325 lt!2571244) lt!2571218))))

(assert (= (and d!2240086 res!2927882) b!7191171))

(declare-fun m!7886326 () Bool)

(assert (=> d!2240086 m!7886326))

(declare-fun m!7886328 () Bool)

(assert (=> d!2240086 m!7886328))

(declare-fun m!7886330 () Bool)

(assert (=> b!7191171 m!7886330))

(assert (=> b!7191093 d!2240086))

(declare-fun bs!1899460 () Bool)

(declare-fun d!2240088 () Bool)

(assert (= bs!1899460 (and d!2240088 d!2240078)))

(declare-fun lambda!437865 () Int)

(assert (=> bs!1899460 (= lambda!437865 lambda!437864)))

(assert (=> d!2240088 (= (inv!88929 setElem!53245) (forall!17191 (exprs!7815 setElem!53245) lambda!437865))))

(declare-fun bs!1899461 () Bool)

(assert (= bs!1899461 d!2240088))

(declare-fun m!7886332 () Bool)

(assert (=> bs!1899461 m!7886332))

(assert (=> setNonEmpty!53245 d!2240088))

(declare-fun d!2240090 () Bool)

(assert (=> d!2240090 (= (isEmpty!40228 s!7967) ((_ is Nil!69694) s!7967))))

(assert (=> b!7191096 d!2240090))

(declare-fun b!7191176 () Bool)

(declare-fun e!4318340 () Bool)

(declare-fun tp!1998453 () Bool)

(declare-fun tp!1998454 () Bool)

(assert (=> b!7191176 (= e!4318340 (and tp!1998453 tp!1998454))))

(assert (=> b!7191099 (= tp!1998429 e!4318340)))

(assert (= (and b!7191099 ((_ is Cons!69693) (exprs!7815 empty!2999))) b!7191176))

(declare-fun b!7191177 () Bool)

(declare-fun e!4318341 () Bool)

(declare-fun tp!1998455 () Bool)

(declare-fun tp!1998456 () Bool)

(assert (=> b!7191177 (= e!4318341 (and tp!1998455 tp!1998456))))

(assert (=> b!7191094 (= tp!1998430 e!4318341)))

(assert (= (and b!7191094 ((_ is Cons!69693) (exprs!7815 setElem!53245))) b!7191177))

(declare-fun condSetEmpty!53251 () Bool)

(assert (=> setNonEmpty!53245 (= condSetEmpty!53251 (= setRest!53245 ((as const (Array Context!14630 Bool)) false)))))

(declare-fun setRes!53251 () Bool)

(assert (=> setNonEmpty!53245 (= tp!1998431 setRes!53251)))

(declare-fun setIsEmpty!53251 () Bool)

(assert (=> setIsEmpty!53251 setRes!53251))

(declare-fun e!4318344 () Bool)

(declare-fun setNonEmpty!53251 () Bool)

(declare-fun tp!1998462 () Bool)

(declare-fun setElem!53251 () Context!14630)

(assert (=> setNonEmpty!53251 (= setRes!53251 (and tp!1998462 (inv!88929 setElem!53251) e!4318344))))

(declare-fun setRest!53251 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53251 (= setRest!53245 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53251 true) setRest!53251))))

(declare-fun b!7191182 () Bool)

(declare-fun tp!1998461 () Bool)

(assert (=> b!7191182 (= e!4318344 tp!1998461)))

(assert (= (and setNonEmpty!53245 condSetEmpty!53251) setIsEmpty!53251))

(assert (= (and setNonEmpty!53245 (not condSetEmpty!53251)) setNonEmpty!53251))

(assert (= setNonEmpty!53251 b!7191182))

(declare-fun m!7886334 () Bool)

(assert (=> setNonEmpty!53251 m!7886334))

(declare-fun b!7191187 () Bool)

(declare-fun e!4318347 () Bool)

(declare-fun tp!1998465 () Bool)

(assert (=> b!7191187 (= e!4318347 (and tp_is_empty!46287 tp!1998465))))

(assert (=> b!7191092 (= tp!1998428 e!4318347)))

(assert (= (and b!7191092 ((_ is Cons!69694) (t!383841 s!7967))) b!7191187))

(check-sat (not b!7191171) (not d!2240078) (not b!7191187) (not d!2240066) (not b!7191116) (not d!2240058) (not bm!655608) (not d!2240086) (not d!2240088) (not b!7191182) (not d!2240080) (not b!7191176) (not b!7191145) tp_is_empty!46287 (not d!2240048) (not setNonEmpty!53251) (not d!2240040) (not b!7191177) (not d!2240074) (not b!7191120) (not d!2240082) (not b!7191170))
(check-sat)
(get-model)

(declare-fun b!7191376 () Bool)

(declare-fun e!4318474 () Bool)

(declare-fun call!655652 () Bool)

(assert (=> b!7191376 (= e!4318474 call!655652)))

(declare-fun b!7191377 () Bool)

(declare-fun e!4318479 () Bool)

(declare-fun e!4318478 () Bool)

(assert (=> b!7191377 (= e!4318479 e!4318478)))

(declare-fun c!1338550 () Bool)

(assert (=> b!7191377 (= c!1338550 ((_ is Union!18363) lt!2571228))))

(declare-fun b!7191378 () Bool)

(declare-fun res!2927951 () Bool)

(declare-fun e!4318475 () Bool)

(assert (=> b!7191378 (=> res!2927951 e!4318475)))

(assert (=> b!7191378 (= res!2927951 (not ((_ is Concat!27208) lt!2571228)))))

(assert (=> b!7191378 (= e!4318478 e!4318475)))

(declare-fun b!7191379 () Bool)

(declare-fun res!2927950 () Bool)

(declare-fun e!4318473 () Bool)

(assert (=> b!7191379 (=> (not res!2927950) (not e!4318473))))

(declare-fun call!655651 () Bool)

(assert (=> b!7191379 (= res!2927950 call!655651)))

(assert (=> b!7191379 (= e!4318478 e!4318473)))

(declare-fun b!7191380 () Bool)

(assert (=> b!7191380 (= e!4318475 e!4318474)))

(declare-fun res!2927953 () Bool)

(assert (=> b!7191380 (=> (not res!2927953) (not e!4318474))))

(assert (=> b!7191380 (= res!2927953 call!655651)))

(declare-fun b!7191381 () Bool)

(declare-fun e!4318477 () Bool)

(assert (=> b!7191381 (= e!4318479 e!4318477)))

(declare-fun res!2927949 () Bool)

(assert (=> b!7191381 (= res!2927949 (not (nullable!7785 (reg!18692 lt!2571228))))))

(assert (=> b!7191381 (=> (not res!2927949) (not e!4318477))))

(declare-fun b!7191382 () Bool)

(assert (=> b!7191382 (= e!4318473 call!655652)))

(declare-fun d!2240134 () Bool)

(declare-fun res!2927952 () Bool)

(declare-fun e!4318476 () Bool)

(assert (=> d!2240134 (=> res!2927952 e!4318476)))

(assert (=> d!2240134 (= res!2927952 ((_ is ElementMatch!18363) lt!2571228))))

(assert (=> d!2240134 (= (validRegex!9478 lt!2571228) e!4318476)))

(declare-fun call!655653 () Bool)

(declare-fun bm!655646 () Bool)

(declare-fun c!1338551 () Bool)

(assert (=> bm!655646 (= call!655653 (validRegex!9478 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))

(declare-fun bm!655647 () Bool)

(assert (=> bm!655647 (= call!655651 (validRegex!9478 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))

(declare-fun bm!655648 () Bool)

(assert (=> bm!655648 (= call!655652 call!655653)))

(declare-fun b!7191383 () Bool)

(assert (=> b!7191383 (= e!4318476 e!4318479)))

(assert (=> b!7191383 (= c!1338551 ((_ is Star!18363) lt!2571228))))

(declare-fun b!7191384 () Bool)

(assert (=> b!7191384 (= e!4318477 call!655653)))

(assert (= (and d!2240134 (not res!2927952)) b!7191383))

(assert (= (and b!7191383 c!1338551) b!7191381))

(assert (= (and b!7191383 (not c!1338551)) b!7191377))

(assert (= (and b!7191381 res!2927949) b!7191384))

(assert (= (and b!7191377 c!1338550) b!7191379))

(assert (= (and b!7191377 (not c!1338550)) b!7191378))

(assert (= (and b!7191379 res!2927950) b!7191382))

(assert (= (and b!7191378 (not res!2927951)) b!7191380))

(assert (= (and b!7191380 res!2927953) b!7191376))

(assert (= (or b!7191379 b!7191380) bm!655647))

(assert (= (or b!7191382 b!7191376) bm!655648))

(assert (= (or b!7191384 bm!655648) bm!655646))

(declare-fun m!7886456 () Bool)

(assert (=> b!7191381 m!7886456))

(declare-fun m!7886458 () Bool)

(assert (=> bm!655646 m!7886458))

(declare-fun m!7886460 () Bool)

(assert (=> bm!655647 m!7886460))

(assert (=> d!2240048 d!2240134))

(declare-fun bs!1899485 () Bool)

(declare-fun d!2240146 () Bool)

(assert (= bs!1899485 (and d!2240146 d!2240078)))

(declare-fun lambda!437881 () Int)

(assert (=> bs!1899485 (= lambda!437881 lambda!437864)))

(declare-fun bs!1899486 () Bool)

(assert (= bs!1899486 (and d!2240146 d!2240088)))

(assert (=> bs!1899486 (= lambda!437881 lambda!437865)))

(declare-fun b!7191405 () Bool)

(declare-fun e!4318494 () Regex!18363)

(assert (=> b!7191405 (= e!4318494 EmptyLang!18363)))

(declare-fun b!7191406 () Bool)

(declare-fun e!4318495 () Bool)

(declare-fun lt!2571256 () Regex!18363)

(declare-fun isEmptyLang!2158 (Regex!18363) Bool)

(assert (=> b!7191406 (= e!4318495 (isEmptyLang!2158 lt!2571256))))

(declare-fun b!7191407 () Bool)

(declare-fun e!4318493 () Regex!18363)

(assert (=> b!7191407 (= e!4318493 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530))))))

(declare-fun b!7191408 () Bool)

(declare-fun e!4318492 () Bool)

(assert (=> b!7191408 (= e!4318492 e!4318495)))

(declare-fun c!1338561 () Bool)

(declare-fun isEmpty!40230 (List!69817) Bool)

(assert (=> b!7191408 (= c!1338561 (isEmpty!40230 (unfocusZipperList!2336 (toList!11306 z!3530))))))

(declare-fun b!7191409 () Bool)

(declare-fun e!4318497 () Bool)

(declare-fun isUnion!1586 (Regex!18363) Bool)

(assert (=> b!7191409 (= e!4318497 (isUnion!1586 lt!2571256))))

(declare-fun b!7191410 () Bool)

(declare-fun e!4318496 () Bool)

(assert (=> b!7191410 (= e!4318496 (isEmpty!40230 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(declare-fun b!7191411 () Bool)

(assert (=> b!7191411 (= e!4318494 (Union!18363 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530))) (generalisedUnion!2780 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(declare-fun b!7191412 () Bool)

(assert (=> b!7191412 (= e!4318495 e!4318497)))

(declare-fun c!1338563 () Bool)

(declare-fun tail!14082 (List!69817) List!69817)

(assert (=> b!7191412 (= c!1338563 (isEmpty!40230 (tail!14082 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(declare-fun b!7191413 () Bool)

(assert (=> b!7191413 (= e!4318493 e!4318494)))

(declare-fun c!1338562 () Bool)

(assert (=> b!7191413 (= c!1338562 ((_ is Cons!69693) (unfocusZipperList!2336 (toList!11306 z!3530))))))

(assert (=> d!2240146 e!4318492))

(declare-fun res!2927959 () Bool)

(assert (=> d!2240146 (=> (not res!2927959) (not e!4318492))))

(assert (=> d!2240146 (= res!2927959 (validRegex!9478 lt!2571256))))

(assert (=> d!2240146 (= lt!2571256 e!4318493)))

(declare-fun c!1338560 () Bool)

(assert (=> d!2240146 (= c!1338560 e!4318496)))

(declare-fun res!2927958 () Bool)

(assert (=> d!2240146 (=> (not res!2927958) (not e!4318496))))

(assert (=> d!2240146 (= res!2927958 ((_ is Cons!69693) (unfocusZipperList!2336 (toList!11306 z!3530))))))

(assert (=> d!2240146 (forall!17191 (unfocusZipperList!2336 (toList!11306 z!3530)) lambda!437881)))

(assert (=> d!2240146 (= (generalisedUnion!2780 (unfocusZipperList!2336 (toList!11306 z!3530))) lt!2571256)))

(declare-fun b!7191414 () Bool)

(declare-fun head!14689 (List!69817) Regex!18363)

(assert (=> b!7191414 (= e!4318497 (= lt!2571256 (head!14689 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (= (and d!2240146 res!2927958) b!7191410))

(assert (= (and d!2240146 c!1338560) b!7191407))

(assert (= (and d!2240146 (not c!1338560)) b!7191413))

(assert (= (and b!7191413 c!1338562) b!7191411))

(assert (= (and b!7191413 (not c!1338562)) b!7191405))

(assert (= (and d!2240146 res!2927959) b!7191408))

(assert (= (and b!7191408 c!1338561) b!7191406))

(assert (= (and b!7191408 (not c!1338561)) b!7191412))

(assert (= (and b!7191412 c!1338563) b!7191414))

(assert (= (and b!7191412 (not c!1338563)) b!7191409))

(declare-fun m!7886462 () Bool)

(assert (=> b!7191411 m!7886462))

(declare-fun m!7886464 () Bool)

(assert (=> b!7191410 m!7886464))

(declare-fun m!7886466 () Bool)

(assert (=> b!7191409 m!7886466))

(declare-fun m!7886468 () Bool)

(assert (=> b!7191406 m!7886468))

(assert (=> b!7191408 m!7886274))

(declare-fun m!7886470 () Bool)

(assert (=> b!7191408 m!7886470))

(assert (=> b!7191414 m!7886274))

(declare-fun m!7886472 () Bool)

(assert (=> b!7191414 m!7886472))

(declare-fun m!7886474 () Bool)

(assert (=> d!2240146 m!7886474))

(assert (=> d!2240146 m!7886274))

(declare-fun m!7886476 () Bool)

(assert (=> d!2240146 m!7886476))

(assert (=> b!7191412 m!7886274))

(declare-fun m!7886478 () Bool)

(assert (=> b!7191412 m!7886478))

(assert (=> b!7191412 m!7886478))

(declare-fun m!7886480 () Bool)

(assert (=> b!7191412 m!7886480))

(assert (=> d!2240048 d!2240146))

(declare-fun bs!1899487 () Bool)

(declare-fun d!2240148 () Bool)

(assert (= bs!1899487 (and d!2240148 d!2240078)))

(declare-fun lambda!437884 () Int)

(assert (=> bs!1899487 (= lambda!437884 lambda!437864)))

(declare-fun bs!1899488 () Bool)

(assert (= bs!1899488 (and d!2240148 d!2240088)))

(assert (=> bs!1899488 (= lambda!437884 lambda!437865)))

(declare-fun bs!1899489 () Bool)

(assert (= bs!1899489 (and d!2240148 d!2240146)))

(assert (=> bs!1899489 (= lambda!437884 lambda!437881)))

(declare-fun lt!2571259 () List!69817)

(assert (=> d!2240148 (forall!17191 lt!2571259 lambda!437884)))

(declare-fun e!4318500 () List!69817)

(assert (=> d!2240148 (= lt!2571259 e!4318500)))

(declare-fun c!1338566 () Bool)

(assert (=> d!2240148 (= c!1338566 ((_ is Cons!69695) (toList!11306 z!3530)))))

(assert (=> d!2240148 (= (unfocusZipperList!2336 (toList!11306 z!3530)) lt!2571259)))

(declare-fun b!7191419 () Bool)

(declare-fun generalisedConcat!2468 (List!69817) Regex!18363)

(assert (=> b!7191419 (= e!4318500 (Cons!69693 (generalisedConcat!2468 (exprs!7815 (h!76143 (toList!11306 z!3530)))) (unfocusZipperList!2336 (t!383842 (toList!11306 z!3530)))))))

(declare-fun b!7191420 () Bool)

(assert (=> b!7191420 (= e!4318500 Nil!69693)))

(assert (= (and d!2240148 c!1338566) b!7191419))

(assert (= (and d!2240148 (not c!1338566)) b!7191420))

(declare-fun m!7886482 () Bool)

(assert (=> d!2240148 m!7886482))

(declare-fun m!7886484 () Bool)

(assert (=> b!7191419 m!7886484))

(declare-fun m!7886486 () Bool)

(assert (=> b!7191419 m!7886486))

(assert (=> d!2240048 d!2240148))

(declare-fun d!2240150 () Bool)

(assert (=> d!2240150 (= (flatMap!2675 z!3530 lambda!437848) (choose!55414 z!3530 lambda!437848))))

(declare-fun bs!1899490 () Bool)

(assert (= bs!1899490 d!2240150))

(declare-fun m!7886488 () Bool)

(assert (=> bs!1899490 m!7886488))

(assert (=> d!2240040 d!2240150))

(declare-fun d!2240152 () Bool)

(declare-fun nullableFct!3046 (Regex!18363) Bool)

(assert (=> d!2240152 (= (nullable!7785 (h!76141 (exprs!7815 lt!2571217))) (nullableFct!3046 (h!76141 (exprs!7815 lt!2571217))))))

(declare-fun bs!1899491 () Bool)

(assert (= bs!1899491 d!2240152))

(declare-fun m!7886490 () Bool)

(assert (=> bs!1899491 m!7886490))

(assert (=> b!7191116 d!2240152))

(declare-fun d!2240154 () Bool)

(declare-fun c!1338569 () Bool)

(assert (=> d!2240154 (= c!1338569 ((_ is Nil!69695) lt!2571244))))

(declare-fun e!4318503 () (InoxSet Context!14630))

(assert (=> d!2240154 (= (content!14325 lt!2571244) e!4318503)))

(declare-fun b!7191425 () Bool)

(assert (=> b!7191425 (= e!4318503 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191426 () Bool)

(assert (=> b!7191426 (= e!4318503 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 lt!2571244) true) (content!14325 (t!383842 lt!2571244))))))

(assert (= (and d!2240154 c!1338569) b!7191425))

(assert (= (and d!2240154 (not c!1338569)) b!7191426))

(declare-fun m!7886492 () Bool)

(assert (=> b!7191426 m!7886492))

(declare-fun m!7886494 () Bool)

(assert (=> b!7191426 m!7886494))

(assert (=> b!7191171 d!2240154))

(declare-fun d!2240156 () Bool)

(assert (=> d!2240156 (= (validRegex!9478 EmptyExpr!18363) true)))

(assert (=> d!2240080 d!2240156))

(declare-fun d!2240158 () Bool)

(declare-fun res!2927964 () Bool)

(declare-fun e!4318508 () Bool)

(assert (=> d!2240158 (=> res!2927964 e!4318508)))

(assert (=> d!2240158 (= res!2927964 ((_ is Nil!69693) (exprs!7815 empty!2999)))))

(assert (=> d!2240158 (= (forall!17191 (exprs!7815 empty!2999) lambda!437864) e!4318508)))

(declare-fun b!7191431 () Bool)

(declare-fun e!4318509 () Bool)

(assert (=> b!7191431 (= e!4318508 e!4318509)))

(declare-fun res!2927965 () Bool)

(assert (=> b!7191431 (=> (not res!2927965) (not e!4318509))))

(declare-fun dynLambda!28388 (Int Regex!18363) Bool)

(assert (=> b!7191431 (= res!2927965 (dynLambda!28388 lambda!437864 (h!76141 (exprs!7815 empty!2999))))))

(declare-fun b!7191432 () Bool)

(assert (=> b!7191432 (= e!4318509 (forall!17191 (t!383840 (exprs!7815 empty!2999)) lambda!437864))))

(assert (= (and d!2240158 (not res!2927964)) b!7191431))

(assert (= (and b!7191431 res!2927965) b!7191432))

(declare-fun b_lambda!275579 () Bool)

(assert (=> (not b_lambda!275579) (not b!7191431)))

(declare-fun m!7886496 () Bool)

(assert (=> b!7191431 m!7886496))

(declare-fun m!7886498 () Bool)

(assert (=> b!7191432 m!7886498))

(assert (=> d!2240078 d!2240158))

(declare-fun d!2240160 () Bool)

(declare-fun res!2927966 () Bool)

(declare-fun e!4318510 () Bool)

(assert (=> d!2240160 (=> res!2927966 e!4318510)))

(assert (=> d!2240160 (= res!2927966 ((_ is Nil!69693) (exprs!7815 setElem!53245)))))

(assert (=> d!2240160 (= (forall!17191 (exprs!7815 setElem!53245) lambda!437865) e!4318510)))

(declare-fun b!7191433 () Bool)

(declare-fun e!4318511 () Bool)

(assert (=> b!7191433 (= e!4318510 e!4318511)))

(declare-fun res!2927967 () Bool)

(assert (=> b!7191433 (=> (not res!2927967) (not e!4318511))))

(assert (=> b!7191433 (= res!2927967 (dynLambda!28388 lambda!437865 (h!76141 (exprs!7815 setElem!53245))))))

(declare-fun b!7191434 () Bool)

(assert (=> b!7191434 (= e!4318511 (forall!17191 (t!383840 (exprs!7815 setElem!53245)) lambda!437865))))

(assert (= (and d!2240160 (not res!2927966)) b!7191433))

(assert (= (and b!7191433 res!2927967) b!7191434))

(declare-fun b_lambda!275581 () Bool)

(assert (=> (not b_lambda!275581) (not b!7191433)))

(declare-fun m!7886500 () Bool)

(assert (=> b!7191433 m!7886500))

(declare-fun m!7886502 () Bool)

(assert (=> b!7191434 m!7886502))

(assert (=> d!2240088 d!2240160))

(declare-fun bs!1899492 () Bool)

(declare-fun d!2240162 () Bool)

(assert (= bs!1899492 (and d!2240162 b!7191090)))

(declare-fun lambda!437887 () Int)

(assert (=> bs!1899492 (not (= lambda!437887 lambda!437845))))

(declare-fun bs!1899493 () Bool)

(assert (= bs!1899493 (and d!2240162 d!2240074)))

(assert (=> bs!1899493 (not (= lambda!437887 lambda!437861))))

(assert (=> d!2240162 true))

(assert (=> d!2240162 (< (dynLambda!28386 order!28709 lambda!437845) (dynLambda!28386 order!28709 lambda!437887))))

(declare-fun forall!17193 (List!69819 Int) Bool)

(assert (=> d!2240162 (= (exists!4087 (toList!11306 z!3530) lambda!437845) (not (forall!17193 (toList!11306 z!3530) lambda!437887)))))

(declare-fun bs!1899494 () Bool)

(assert (= bs!1899494 d!2240162))

(assert (=> bs!1899494 m!7886230))

(declare-fun m!7886504 () Bool)

(assert (=> bs!1899494 m!7886504))

(assert (=> d!2240066 d!2240162))

(assert (=> d!2240066 d!2240058))

(declare-fun d!2240164 () Bool)

(declare-fun res!2927970 () Bool)

(assert (=> d!2240164 (= res!2927970 (exists!4087 (toList!11306 z!3530) lambda!437845))))

(assert (=> d!2240164 true))

(assert (=> d!2240164 (= (choose!55412 z!3530 lambda!437845) res!2927970)))

(declare-fun bs!1899495 () Bool)

(assert (= bs!1899495 d!2240164))

(assert (=> bs!1899495 m!7886230))

(assert (=> bs!1899495 m!7886230))

(assert (=> bs!1899495 m!7886298))

(assert (=> d!2240066 d!2240164))

(declare-fun d!2240166 () Bool)

(declare-fun res!2927975 () Bool)

(declare-fun e!4318516 () Bool)

(assert (=> d!2240166 (=> res!2927975 e!4318516)))

(assert (=> d!2240166 (= res!2927975 ((_ is Nil!69695) lt!2571244))))

(assert (=> d!2240166 (= (noDuplicate!2896 lt!2571244) e!4318516)))

(declare-fun b!7191441 () Bool)

(declare-fun e!4318517 () Bool)

(assert (=> b!7191441 (= e!4318516 e!4318517)))

(declare-fun res!2927976 () Bool)

(assert (=> b!7191441 (=> (not res!2927976) (not e!4318517))))

(declare-fun contains!20725 (List!69819 Context!14630) Bool)

(assert (=> b!7191441 (= res!2927976 (not (contains!20725 (t!383842 lt!2571244) (h!76143 lt!2571244))))))

(declare-fun b!7191442 () Bool)

(assert (=> b!7191442 (= e!4318517 (noDuplicate!2896 (t!383842 lt!2571244)))))

(assert (= (and d!2240166 (not res!2927975)) b!7191441))

(assert (= (and b!7191441 res!2927976) b!7191442))

(declare-fun m!7886506 () Bool)

(assert (=> b!7191441 m!7886506))

(declare-fun m!7886508 () Bool)

(assert (=> b!7191442 m!7886508))

(assert (=> d!2240086 d!2240166))

(declare-fun d!2240168 () Bool)

(declare-fun e!4318526 () Bool)

(assert (=> d!2240168 e!4318526))

(declare-fun res!2927982 () Bool)

(assert (=> d!2240168 (=> (not res!2927982) (not e!4318526))))

(declare-fun res!2927981 () List!69819)

(assert (=> d!2240168 (= res!2927982 (noDuplicate!2896 res!2927981))))

(declare-fun e!4318524 () Bool)

(assert (=> d!2240168 e!4318524))

(assert (=> d!2240168 (= (choose!55411 lt!2571218) res!2927981)))

(declare-fun b!7191450 () Bool)

(declare-fun e!4318525 () Bool)

(declare-fun tp!1998517 () Bool)

(assert (=> b!7191450 (= e!4318525 tp!1998517)))

(declare-fun b!7191449 () Bool)

(declare-fun tp!1998516 () Bool)

(assert (=> b!7191449 (= e!4318524 (and (inv!88929 (h!76143 res!2927981)) e!4318525 tp!1998516))))

(declare-fun b!7191451 () Bool)

(assert (=> b!7191451 (= e!4318526 (= (content!14325 res!2927981) lt!2571218))))

(assert (= b!7191449 b!7191450))

(assert (= (and d!2240168 ((_ is Cons!69695) res!2927981)) b!7191449))

(assert (= (and d!2240168 res!2927982) b!7191451))

(declare-fun m!7886510 () Bool)

(assert (=> d!2240168 m!7886510))

(declare-fun m!7886512 () Bool)

(assert (=> b!7191449 m!7886512))

(declare-fun m!7886514 () Bool)

(assert (=> b!7191451 m!7886514))

(assert (=> d!2240086 d!2240168))

(declare-fun bs!1899496 () Bool)

(declare-fun d!2240170 () Bool)

(assert (= bs!1899496 (and d!2240170 d!2240078)))

(declare-fun lambda!437888 () Int)

(assert (=> bs!1899496 (= lambda!437888 lambda!437864)))

(declare-fun bs!1899497 () Bool)

(assert (= bs!1899497 (and d!2240170 d!2240088)))

(assert (=> bs!1899497 (= lambda!437888 lambda!437865)))

(declare-fun bs!1899498 () Bool)

(assert (= bs!1899498 (and d!2240170 d!2240146)))

(assert (=> bs!1899498 (= lambda!437888 lambda!437881)))

(declare-fun bs!1899499 () Bool)

(assert (= bs!1899499 (and d!2240170 d!2240148)))

(assert (=> bs!1899499 (= lambda!437888 lambda!437884)))

(assert (=> d!2240170 (= (inv!88929 setElem!53251) (forall!17191 (exprs!7815 setElem!53251) lambda!437888))))

(declare-fun bs!1899500 () Bool)

(assert (= bs!1899500 d!2240170))

(declare-fun m!7886516 () Bool)

(assert (=> bs!1899500 m!7886516))

(assert (=> setNonEmpty!53251 d!2240170))

(declare-fun d!2240172 () Bool)

(declare-fun res!2927983 () Bool)

(declare-fun e!4318527 () Bool)

(assert (=> d!2240172 (=> res!2927983 e!4318527)))

(assert (=> d!2240172 (= res!2927983 ((_ is Nil!69695) lt!2571231))))

(assert (=> d!2240172 (= (noDuplicate!2896 lt!2571231) e!4318527)))

(declare-fun b!7191452 () Bool)

(declare-fun e!4318528 () Bool)

(assert (=> b!7191452 (= e!4318527 e!4318528)))

(declare-fun res!2927984 () Bool)

(assert (=> b!7191452 (=> (not res!2927984) (not e!4318528))))

(assert (=> b!7191452 (= res!2927984 (not (contains!20725 (t!383842 lt!2571231) (h!76143 lt!2571231))))))

(declare-fun b!7191453 () Bool)

(assert (=> b!7191453 (= e!4318528 (noDuplicate!2896 (t!383842 lt!2571231)))))

(assert (= (and d!2240172 (not res!2927983)) b!7191452))

(assert (= (and b!7191452 res!2927984) b!7191453))

(declare-fun m!7886518 () Bool)

(assert (=> b!7191452 m!7886518))

(declare-fun m!7886520 () Bool)

(assert (=> b!7191453 m!7886520))

(assert (=> d!2240058 d!2240172))

(declare-fun d!2240174 () Bool)

(declare-fun e!4318531 () Bool)

(assert (=> d!2240174 e!4318531))

(declare-fun res!2927986 () Bool)

(assert (=> d!2240174 (=> (not res!2927986) (not e!4318531))))

(declare-fun res!2927985 () List!69819)

(assert (=> d!2240174 (= res!2927986 (noDuplicate!2896 res!2927985))))

(declare-fun e!4318529 () Bool)

(assert (=> d!2240174 e!4318529))

(assert (=> d!2240174 (= (choose!55411 z!3530) res!2927985)))

(declare-fun b!7191455 () Bool)

(declare-fun e!4318530 () Bool)

(declare-fun tp!1998519 () Bool)

(assert (=> b!7191455 (= e!4318530 tp!1998519)))

(declare-fun b!7191454 () Bool)

(declare-fun tp!1998518 () Bool)

(assert (=> b!7191454 (= e!4318529 (and (inv!88929 (h!76143 res!2927985)) e!4318530 tp!1998518))))

(declare-fun b!7191456 () Bool)

(assert (=> b!7191456 (= e!4318531 (= (content!14325 res!2927985) z!3530))))

(assert (= b!7191454 b!7191455))

(assert (= (and d!2240174 ((_ is Cons!69695) res!2927985)) b!7191454))

(assert (= (and d!2240174 res!2927986) b!7191456))

(declare-fun m!7886522 () Bool)

(assert (=> d!2240174 m!7886522))

(declare-fun m!7886524 () Bool)

(assert (=> b!7191454 m!7886524))

(declare-fun m!7886526 () Bool)

(assert (=> b!7191456 m!7886526))

(assert (=> d!2240058 d!2240174))

(declare-fun b!7191457 () Bool)

(declare-fun e!4318532 () Bool)

(assert (=> b!7191457 (= e!4318532 (nullable!7785 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))

(declare-fun b!7191458 () Bool)

(declare-fun e!4318533 () (InoxSet Context!14630))

(declare-fun call!655654 () (InoxSet Context!14630))

(assert (=> b!7191458 (= e!4318533 call!655654)))

(declare-fun d!2240176 () Bool)

(declare-fun c!1338571 () Bool)

(assert (=> d!2240176 (= c!1338571 e!4318532)))

(declare-fun res!2927987 () Bool)

(assert (=> d!2240176 (=> (not res!2927987) (not e!4318532))))

(assert (=> d!2240176 (= res!2927987 ((_ is Cons!69693) (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))

(declare-fun e!4318534 () (InoxSet Context!14630))

(assert (=> d!2240176 (= (derivationStepZipperUp!2333 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) lt!2571215) e!4318534)))

(declare-fun b!7191459 () Bool)

(assert (=> b!7191459 (= e!4318533 ((as const (Array Context!14630 Bool)) false))))

(declare-fun bm!655649 () Bool)

(assert (=> bm!655649 (= call!655654 (derivationStepZipperDown!2516 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) lt!2571215))))

(declare-fun b!7191460 () Bool)

(assert (=> b!7191460 (= e!4318534 e!4318533)))

(declare-fun c!1338570 () Bool)

(assert (=> b!7191460 (= c!1338570 ((_ is Cons!69693) (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))

(declare-fun b!7191461 () Bool)

(assert (=> b!7191461 (= e!4318534 ((_ map or) call!655654 (derivationStepZipperUp!2333 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) lt!2571215)))))

(assert (= (and d!2240176 res!2927987) b!7191457))

(assert (= (and d!2240176 c!1338571) b!7191461))

(assert (= (and d!2240176 (not c!1338571)) b!7191460))

(assert (= (and b!7191460 c!1338570) b!7191458))

(assert (= (and b!7191460 (not c!1338570)) b!7191459))

(assert (= (or b!7191461 b!7191458) bm!655649))

(declare-fun m!7886528 () Bool)

(assert (=> b!7191457 m!7886528))

(declare-fun m!7886530 () Bool)

(assert (=> bm!655649 m!7886530))

(declare-fun m!7886532 () Bool)

(assert (=> b!7191461 m!7886532))

(assert (=> b!7191120 d!2240176))

(declare-fun d!2240178 () Bool)

(declare-fun lt!2571260 () Regex!18363)

(assert (=> d!2240178 (validRegex!9478 lt!2571260)))

(assert (=> d!2240178 (= lt!2571260 (generalisedUnion!2780 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(assert (=> d!2240178 (= (unfocusZipper!2623 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))) lt!2571260)))

(declare-fun bs!1899501 () Bool)

(assert (= bs!1899501 d!2240178))

(declare-fun m!7886534 () Bool)

(assert (=> bs!1899501 m!7886534))

(assert (=> bs!1899501 m!7886320))

(declare-fun m!7886536 () Bool)

(assert (=> bs!1899501 m!7886536))

(assert (=> bs!1899501 m!7886536))

(declare-fun m!7886538 () Bool)

(assert (=> bs!1899501 m!7886538))

(assert (=> b!7191170 d!2240178))

(declare-fun d!2240180 () Bool)

(declare-fun e!4318535 () Bool)

(assert (=> d!2240180 e!4318535))

(declare-fun res!2927988 () Bool)

(assert (=> d!2240180 (=> (not res!2927988) (not e!4318535))))

(declare-fun lt!2571261 () List!69819)

(assert (=> d!2240180 (= res!2927988 (noDuplicate!2896 lt!2571261))))

(assert (=> d!2240180 (= lt!2571261 (choose!55411 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))

(assert (=> d!2240180 (= (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)) lt!2571261)))

(declare-fun b!7191462 () Bool)

(assert (=> b!7191462 (= e!4318535 (= (content!14325 lt!2571261) (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))

(assert (= (and d!2240180 res!2927988) b!7191462))

(declare-fun m!7886540 () Bool)

(assert (=> d!2240180 m!7886540))

(assert (=> d!2240180 m!7886318))

(declare-fun m!7886542 () Bool)

(assert (=> d!2240180 m!7886542))

(declare-fun m!7886544 () Bool)

(assert (=> b!7191462 m!7886544))

(assert (=> b!7191170 d!2240180))

(declare-fun d!2240182 () Bool)

(declare-fun c!1338572 () Bool)

(assert (=> d!2240182 (= c!1338572 ((_ is Nil!69695) lt!2571231))))

(declare-fun e!4318536 () (InoxSet Context!14630))

(assert (=> d!2240182 (= (content!14325 lt!2571231) e!4318536)))

(declare-fun b!7191463 () Bool)

(assert (=> b!7191463 (= e!4318536 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191464 () Bool)

(assert (=> b!7191464 (= e!4318536 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 lt!2571231) true) (content!14325 (t!383842 lt!2571231))))))

(assert (= (and d!2240182 c!1338572) b!7191463))

(assert (= (and d!2240182 (not c!1338572)) b!7191464))

(declare-fun m!7886546 () Bool)

(assert (=> b!7191464 m!7886546))

(declare-fun m!7886548 () Bool)

(assert (=> b!7191464 m!7886548))

(assert (=> b!7191145 d!2240182))

(declare-fun d!2240184 () Bool)

(assert (=> d!2240184 true))

(declare-fun setRes!53258 () Bool)

(assert (=> d!2240184 setRes!53258))

(declare-fun condSetEmpty!53258 () Bool)

(declare-fun res!2927991 () (InoxSet Context!14630))

(assert (=> d!2240184 (= condSetEmpty!53258 (= res!2927991 ((as const (Array Context!14630 Bool)) false)))))

(assert (=> d!2240184 (= (choose!55414 z!3530 lambda!437844) res!2927991)))

(declare-fun setIsEmpty!53258 () Bool)

(assert (=> setIsEmpty!53258 setRes!53258))

(declare-fun tp!1998524 () Bool)

(declare-fun e!4318539 () Bool)

(declare-fun setElem!53258 () Context!14630)

(declare-fun setNonEmpty!53258 () Bool)

(assert (=> setNonEmpty!53258 (= setRes!53258 (and tp!1998524 (inv!88929 setElem!53258) e!4318539))))

(declare-fun setRest!53258 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53258 (= res!2927991 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53258 true) setRest!53258))))

(declare-fun b!7191467 () Bool)

(declare-fun tp!1998525 () Bool)

(assert (=> b!7191467 (= e!4318539 tp!1998525)))

(assert (= (and d!2240184 condSetEmpty!53258) setIsEmpty!53258))

(assert (= (and d!2240184 (not condSetEmpty!53258)) setNonEmpty!53258))

(assert (= setNonEmpty!53258 b!7191467))

(declare-fun m!7886550 () Bool)

(assert (=> setNonEmpty!53258 m!7886550))

(assert (=> d!2240082 d!2240184))

(declare-fun bm!655662 () Bool)

(declare-fun call!655670 () (InoxSet Context!14630))

(declare-fun call!655669 () (InoxSet Context!14630))

(assert (=> bm!655662 (= call!655670 call!655669)))

(declare-fun d!2240186 () Bool)

(declare-fun c!1338586 () Bool)

(assert (=> d!2240186 (= c!1338586 (and ((_ is ElementMatch!18363) (h!76141 (exprs!7815 lt!2571217))) (= (c!1338487 (h!76141 (exprs!7815 lt!2571217))) lt!2571215)))))

(declare-fun e!4318553 () (InoxSet Context!14630))

(assert (=> d!2240186 (= (derivationStepZipperDown!2516 (h!76141 (exprs!7815 lt!2571217)) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) lt!2571215) e!4318553)))

(declare-fun b!7191490 () Bool)

(declare-fun e!4318555 () (InoxSet Context!14630))

(declare-fun call!655667 () (InoxSet Context!14630))

(assert (=> b!7191490 (= e!4318555 ((_ map or) call!655667 call!655670))))

(declare-fun b!7191491 () Bool)

(declare-fun e!4318557 () (InoxSet Context!14630))

(declare-fun call!655671 () (InoxSet Context!14630))

(assert (=> b!7191491 (= e!4318557 call!655671)))

(declare-fun bm!655663 () Bool)

(declare-fun call!655672 () List!69817)

(declare-fun call!655668 () List!69817)

(assert (=> bm!655663 (= call!655672 call!655668)))

(declare-fun b!7191492 () Bool)

(assert (=> b!7191492 (= e!4318553 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) true))))

(declare-fun b!7191493 () Bool)

(declare-fun c!1338585 () Bool)

(assert (=> b!7191493 (= c!1338585 ((_ is Star!18363) (h!76141 (exprs!7815 lt!2571217))))))

(declare-fun e!4318554 () (InoxSet Context!14630))

(assert (=> b!7191493 (= e!4318554 e!4318557)))

(declare-fun b!7191494 () Bool)

(declare-fun c!1338584 () Bool)

(declare-fun e!4318552 () Bool)

(assert (=> b!7191494 (= c!1338584 e!4318552)))

(declare-fun res!2927994 () Bool)

(assert (=> b!7191494 (=> (not res!2927994) (not e!4318552))))

(assert (=> b!7191494 (= res!2927994 ((_ is Concat!27208) (h!76141 (exprs!7815 lt!2571217))))))

(declare-fun e!4318556 () (InoxSet Context!14630))

(assert (=> b!7191494 (= e!4318556 e!4318555)))

(declare-fun b!7191495 () Bool)

(assert (=> b!7191495 (= e!4318553 e!4318556)))

(declare-fun c!1338587 () Bool)

(assert (=> b!7191495 (= c!1338587 ((_ is Union!18363) (h!76141 (exprs!7815 lt!2571217))))))

(declare-fun b!7191496 () Bool)

(assert (=> b!7191496 (= e!4318555 e!4318554)))

(declare-fun c!1338583 () Bool)

(assert (=> b!7191496 (= c!1338583 ((_ is Concat!27208) (h!76141 (exprs!7815 lt!2571217))))))

(declare-fun bm!655664 () Bool)

(assert (=> bm!655664 (= call!655667 (derivationStepZipperDown!2516 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))) (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) lt!2571215))))

(declare-fun bm!655665 () Bool)

(assert (=> bm!655665 (= call!655669 (derivationStepZipperDown!2516 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))) (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) lt!2571215))))

(declare-fun b!7191497 () Bool)

(assert (=> b!7191497 (= e!4318554 call!655671)))

(declare-fun bm!655666 () Bool)

(assert (=> bm!655666 (= call!655671 call!655670)))

(declare-fun b!7191498 () Bool)

(assert (=> b!7191498 (= e!4318557 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191499 () Bool)

(assert (=> b!7191499 (= e!4318556 ((_ map or) call!655667 call!655669))))

(declare-fun b!7191500 () Bool)

(assert (=> b!7191500 (= e!4318552 (nullable!7785 (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))

(declare-fun bm!655667 () Bool)

(declare-fun $colon$colon!2846 (List!69817 Regex!18363) List!69817)

(assert (=> bm!655667 (= call!655668 ($colon$colon!2846 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))) (ite (or c!1338584 c!1338583) (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (h!76141 (exprs!7815 lt!2571217)))))))

(assert (= (and d!2240186 c!1338586) b!7191492))

(assert (= (and d!2240186 (not c!1338586)) b!7191495))

(assert (= (and b!7191495 c!1338587) b!7191499))

(assert (= (and b!7191495 (not c!1338587)) b!7191494))

(assert (= (and b!7191494 res!2927994) b!7191500))

(assert (= (and b!7191494 c!1338584) b!7191490))

(assert (= (and b!7191494 (not c!1338584)) b!7191496))

(assert (= (and b!7191496 c!1338583) b!7191497))

(assert (= (and b!7191496 (not c!1338583)) b!7191493))

(assert (= (and b!7191493 c!1338585) b!7191491))

(assert (= (and b!7191493 (not c!1338585)) b!7191498))

(assert (= (or b!7191497 b!7191491) bm!655663))

(assert (= (or b!7191497 b!7191491) bm!655666))

(assert (= (or b!7191490 bm!655666) bm!655662))

(assert (= (or b!7191490 bm!655663) bm!655667))

(assert (= (or b!7191499 bm!655662) bm!655665))

(assert (= (or b!7191499 b!7191490) bm!655664))

(declare-fun m!7886552 () Bool)

(assert (=> bm!655667 m!7886552))

(declare-fun m!7886554 () Bool)

(assert (=> bm!655664 m!7886554))

(declare-fun m!7886556 () Bool)

(assert (=> b!7191492 m!7886556))

(declare-fun m!7886558 () Bool)

(assert (=> b!7191500 m!7886558))

(declare-fun m!7886560 () Bool)

(assert (=> bm!655665 m!7886560))

(assert (=> bm!655608 d!2240186))

(assert (=> d!2240074 d!2240082))

(declare-fun d!2240188 () Bool)

(declare-fun lt!2571262 () Bool)

(assert (=> d!2240188 (= lt!2571262 (exists!4087 (toList!11306 z!3530) lambda!437861))))

(assert (=> d!2240188 (= lt!2571262 (choose!55412 z!3530 lambda!437861))))

(assert (=> d!2240188 (= (exists!4085 z!3530 lambda!437861) lt!2571262)))

(declare-fun bs!1899502 () Bool)

(assert (= bs!1899502 d!2240188))

(assert (=> bs!1899502 m!7886230))

(assert (=> bs!1899502 m!7886230))

(declare-fun m!7886562 () Bool)

(assert (=> bs!1899502 m!7886562))

(declare-fun m!7886564 () Bool)

(assert (=> bs!1899502 m!7886564))

(assert (=> d!2240074 d!2240188))

(declare-fun bs!1899503 () Bool)

(declare-fun d!2240190 () Bool)

(assert (= bs!1899503 (and d!2240190 b!7191090)))

(declare-fun lambda!437891 () Int)

(assert (=> bs!1899503 (not (= lambda!437891 lambda!437845))))

(declare-fun bs!1899504 () Bool)

(assert (= bs!1899504 (and d!2240190 d!2240074)))

(assert (=> bs!1899504 (= lambda!437891 lambda!437861)))

(declare-fun bs!1899505 () Bool)

(assert (= bs!1899505 (and d!2240190 d!2240162)))

(assert (=> bs!1899505 (not (= lambda!437891 lambda!437887))))

(assert (=> d!2240190 true))

(assert (=> d!2240190 true))

(assert (=> d!2240190 (< (dynLambda!28385 order!28707 lambda!437844) (dynLambda!28386 order!28709 lambda!437891))))

(assert (=> d!2240190 (= (select (flatMap!2675 z!3530 lambda!437844) lt!2571216) (exists!4085 z!3530 lambda!437891))))

(declare-fun _$3!486 () Context!14630)

(declare-fun e!4318560 () Bool)

(assert (=> d!2240190 (and (inv!88929 _$3!486) e!4318560)))

(assert (=> d!2240190 (= (choose!55413 z!3530 lambda!437844 lt!2571216) _$3!486)))

(declare-fun b!7191504 () Bool)

(declare-fun tp!1998528 () Bool)

(assert (=> b!7191504 (= e!4318560 tp!1998528)))

(assert (= d!2240190 b!7191504))

(assert (=> d!2240190 m!7886214))

(assert (=> d!2240190 m!7886216))

(declare-fun m!7886566 () Bool)

(assert (=> d!2240190 m!7886566))

(declare-fun m!7886568 () Bool)

(assert (=> d!2240190 m!7886568))

(assert (=> d!2240074 d!2240190))

(declare-fun b!7191518 () Bool)

(declare-fun e!4318563 () Bool)

(declare-fun tp!1998542 () Bool)

(declare-fun tp!1998539 () Bool)

(assert (=> b!7191518 (= e!4318563 (and tp!1998542 tp!1998539))))

(declare-fun b!7191516 () Bool)

(declare-fun tp!1998541 () Bool)

(declare-fun tp!1998540 () Bool)

(assert (=> b!7191516 (= e!4318563 (and tp!1998541 tp!1998540))))

(assert (=> b!7191177 (= tp!1998455 e!4318563)))

(declare-fun b!7191515 () Bool)

(assert (=> b!7191515 (= e!4318563 tp_is_empty!46287)))

(declare-fun b!7191517 () Bool)

(declare-fun tp!1998543 () Bool)

(assert (=> b!7191517 (= e!4318563 tp!1998543)))

(assert (= (and b!7191177 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 setElem!53245)))) b!7191515))

(assert (= (and b!7191177 ((_ is Concat!27208) (h!76141 (exprs!7815 setElem!53245)))) b!7191516))

(assert (= (and b!7191177 ((_ is Star!18363) (h!76141 (exprs!7815 setElem!53245)))) b!7191517))

(assert (= (and b!7191177 ((_ is Union!18363) (h!76141 (exprs!7815 setElem!53245)))) b!7191518))

(declare-fun b!7191519 () Bool)

(declare-fun e!4318564 () Bool)

(declare-fun tp!1998544 () Bool)

(declare-fun tp!1998545 () Bool)

(assert (=> b!7191519 (= e!4318564 (and tp!1998544 tp!1998545))))

(assert (=> b!7191177 (= tp!1998456 e!4318564)))

(assert (= (and b!7191177 ((_ is Cons!69693) (t!383840 (exprs!7815 setElem!53245)))) b!7191519))

(declare-fun b!7191520 () Bool)

(declare-fun e!4318565 () Bool)

(declare-fun tp!1998546 () Bool)

(declare-fun tp!1998547 () Bool)

(assert (=> b!7191520 (= e!4318565 (and tp!1998546 tp!1998547))))

(assert (=> b!7191182 (= tp!1998461 e!4318565)))

(assert (= (and b!7191182 ((_ is Cons!69693) (exprs!7815 setElem!53251))) b!7191520))

(declare-fun b!7191524 () Bool)

(declare-fun e!4318566 () Bool)

(declare-fun tp!1998551 () Bool)

(declare-fun tp!1998548 () Bool)

(assert (=> b!7191524 (= e!4318566 (and tp!1998551 tp!1998548))))

(declare-fun b!7191522 () Bool)

(declare-fun tp!1998550 () Bool)

(declare-fun tp!1998549 () Bool)

(assert (=> b!7191522 (= e!4318566 (and tp!1998550 tp!1998549))))

(assert (=> b!7191176 (= tp!1998453 e!4318566)))

(declare-fun b!7191521 () Bool)

(assert (=> b!7191521 (= e!4318566 tp_is_empty!46287)))

(declare-fun b!7191523 () Bool)

(declare-fun tp!1998552 () Bool)

(assert (=> b!7191523 (= e!4318566 tp!1998552)))

(assert (= (and b!7191176 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 empty!2999)))) b!7191521))

(assert (= (and b!7191176 ((_ is Concat!27208) (h!76141 (exprs!7815 empty!2999)))) b!7191522))

(assert (= (and b!7191176 ((_ is Star!18363) (h!76141 (exprs!7815 empty!2999)))) b!7191523))

(assert (= (and b!7191176 ((_ is Union!18363) (h!76141 (exprs!7815 empty!2999)))) b!7191524))

(declare-fun b!7191525 () Bool)

(declare-fun e!4318567 () Bool)

(declare-fun tp!1998553 () Bool)

(declare-fun tp!1998554 () Bool)

(assert (=> b!7191525 (= e!4318567 (and tp!1998553 tp!1998554))))

(assert (=> b!7191176 (= tp!1998454 e!4318567)))

(assert (= (and b!7191176 ((_ is Cons!69693) (t!383840 (exprs!7815 empty!2999)))) b!7191525))

(declare-fun condSetEmpty!53259 () Bool)

(assert (=> setNonEmpty!53251 (= condSetEmpty!53259 (= setRest!53251 ((as const (Array Context!14630 Bool)) false)))))

(declare-fun setRes!53259 () Bool)

(assert (=> setNonEmpty!53251 (= tp!1998462 setRes!53259)))

(declare-fun setIsEmpty!53259 () Bool)

(assert (=> setIsEmpty!53259 setRes!53259))

(declare-fun setNonEmpty!53259 () Bool)

(declare-fun setElem!53259 () Context!14630)

(declare-fun tp!1998556 () Bool)

(declare-fun e!4318568 () Bool)

(assert (=> setNonEmpty!53259 (= setRes!53259 (and tp!1998556 (inv!88929 setElem!53259) e!4318568))))

(declare-fun setRest!53259 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53259 (= setRest!53251 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53259 true) setRest!53259))))

(declare-fun b!7191526 () Bool)

(declare-fun tp!1998555 () Bool)

(assert (=> b!7191526 (= e!4318568 tp!1998555)))

(assert (= (and setNonEmpty!53251 condSetEmpty!53259) setIsEmpty!53259))

(assert (= (and setNonEmpty!53251 (not condSetEmpty!53259)) setNonEmpty!53259))

(assert (= setNonEmpty!53259 b!7191526))

(declare-fun m!7886570 () Bool)

(assert (=> setNonEmpty!53259 m!7886570))

(declare-fun b!7191527 () Bool)

(declare-fun e!4318569 () Bool)

(declare-fun tp!1998557 () Bool)

(assert (=> b!7191527 (= e!4318569 (and tp_is_empty!46287 tp!1998557))))

(assert (=> b!7191187 (= tp!1998465 e!4318569)))

(assert (= (and b!7191187 ((_ is Cons!69694) (t!383841 (t!383841 s!7967)))) b!7191527))

(declare-fun b_lambda!275583 () Bool)

(assert (= b_lambda!275579 (or d!2240078 b_lambda!275583)))

(declare-fun bs!1899506 () Bool)

(declare-fun d!2240192 () Bool)

(assert (= bs!1899506 (and d!2240192 d!2240078)))

(assert (=> bs!1899506 (= (dynLambda!28388 lambda!437864 (h!76141 (exprs!7815 empty!2999))) (validRegex!9478 (h!76141 (exprs!7815 empty!2999))))))

(declare-fun m!7886572 () Bool)

(assert (=> bs!1899506 m!7886572))

(assert (=> b!7191431 d!2240192))

(declare-fun b_lambda!275585 () Bool)

(assert (= b_lambda!275581 (or d!2240088 b_lambda!275585)))

(declare-fun bs!1899507 () Bool)

(declare-fun d!2240194 () Bool)

(assert (= bs!1899507 (and d!2240194 d!2240088)))

(assert (=> bs!1899507 (= (dynLambda!28388 lambda!437865 (h!76141 (exprs!7815 setElem!53245))) (validRegex!9478 (h!76141 (exprs!7815 setElem!53245))))))

(declare-fun m!7886574 () Bool)

(assert (=> bs!1899507 m!7886574))

(assert (=> b!7191433 d!2240194))

(check-sat (not bm!655665) (not b!7191442) (not b!7191523) (not b!7191441) (not d!2240152) (not d!2240190) (not b!7191408) (not d!2240146) (not bm!655646) (not b!7191525) (not b!7191462) (not d!2240188) (not b!7191461) (not b!7191500) (not b!7191454) (not d!2240162) (not b!7191432) (not bm!655667) (not b_lambda!275585) (not b!7191516) tp_is_empty!46287 (not b_lambda!275583) (not b!7191381) (not b!7191426) (not bm!655664) (not b!7191455) (not d!2240178) (not b!7191467) (not b!7191457) (not b!7191524) (not setNonEmpty!53258) (not b!7191456) (not b!7191453) (not d!2240168) (not b!7191520) (not b!7191504) (not b!7191519) (not d!2240164) (not b!7191518) (not setNonEmpty!53259) (not b!7191450) (not b!7191410) (not b!7191527) (not d!2240150) (not bm!655647) (not bm!655649) (not b!7191406) (not b!7191419) (not d!2240170) (not b!7191526) (not d!2240180) (not d!2240148) (not bs!1899506) (not b!7191412) (not b!7191517) (not b!7191434) (not b!7191411) (not b!7191464) (not bs!1899507) (not b!7191449) (not b!7191522) (not b!7191414) (not b!7191451) (not b!7191452) (not b!7191409) (not d!2240174))
(check-sat)
(get-model)

(declare-fun d!2240196 () Bool)

(assert (=> d!2240196 (= (nullable!7785 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (nullableFct!3046 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))

(declare-fun bs!1899508 () Bool)

(assert (= bs!1899508 d!2240196))

(declare-fun m!7886576 () Bool)

(assert (=> bs!1899508 m!7886576))

(assert (=> b!7191457 d!2240196))

(declare-fun d!2240198 () Bool)

(assert (=> d!2240198 (= (isEmptyLang!2158 lt!2571256) ((_ is EmptyLang!18363) lt!2571256))))

(assert (=> b!7191406 d!2240198))

(declare-fun b!7191530 () Bool)

(declare-fun e!4318572 () Bool)

(declare-fun call!655674 () Bool)

(assert (=> b!7191530 (= e!4318572 call!655674)))

(declare-fun b!7191531 () Bool)

(declare-fun e!4318577 () Bool)

(declare-fun e!4318576 () Bool)

(assert (=> b!7191531 (= e!4318577 e!4318576)))

(declare-fun c!1338589 () Bool)

(assert (=> b!7191531 (= c!1338589 ((_ is Union!18363) (h!76141 (exprs!7815 empty!2999))))))

(declare-fun b!7191532 () Bool)

(declare-fun res!2927997 () Bool)

(declare-fun e!4318573 () Bool)

(assert (=> b!7191532 (=> res!2927997 e!4318573)))

(assert (=> b!7191532 (= res!2927997 (not ((_ is Concat!27208) (h!76141 (exprs!7815 empty!2999)))))))

(assert (=> b!7191532 (= e!4318576 e!4318573)))

(declare-fun b!7191533 () Bool)

(declare-fun res!2927996 () Bool)

(declare-fun e!4318571 () Bool)

(assert (=> b!7191533 (=> (not res!2927996) (not e!4318571))))

(declare-fun call!655673 () Bool)

(assert (=> b!7191533 (= res!2927996 call!655673)))

(assert (=> b!7191533 (= e!4318576 e!4318571)))

(declare-fun b!7191534 () Bool)

(assert (=> b!7191534 (= e!4318573 e!4318572)))

(declare-fun res!2927999 () Bool)

(assert (=> b!7191534 (=> (not res!2927999) (not e!4318572))))

(assert (=> b!7191534 (= res!2927999 call!655673)))

(declare-fun b!7191535 () Bool)

(declare-fun e!4318575 () Bool)

(assert (=> b!7191535 (= e!4318577 e!4318575)))

(declare-fun res!2927995 () Bool)

(assert (=> b!7191535 (= res!2927995 (not (nullable!7785 (reg!18692 (h!76141 (exprs!7815 empty!2999))))))))

(assert (=> b!7191535 (=> (not res!2927995) (not e!4318575))))

(declare-fun b!7191536 () Bool)

(assert (=> b!7191536 (= e!4318571 call!655674)))

(declare-fun d!2240202 () Bool)

(declare-fun res!2927998 () Bool)

(declare-fun e!4318574 () Bool)

(assert (=> d!2240202 (=> res!2927998 e!4318574)))

(assert (=> d!2240202 (= res!2927998 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 empty!2999))))))

(assert (=> d!2240202 (= (validRegex!9478 (h!76141 (exprs!7815 empty!2999))) e!4318574)))

(declare-fun c!1338590 () Bool)

(declare-fun bm!655668 () Bool)

(declare-fun call!655675 () Bool)

(assert (=> bm!655668 (= call!655675 (validRegex!9478 (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))))))

(declare-fun bm!655669 () Bool)

(assert (=> bm!655669 (= call!655673 (validRegex!9478 (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))))))

(declare-fun bm!655670 () Bool)

(assert (=> bm!655670 (= call!655674 call!655675)))

(declare-fun b!7191537 () Bool)

(assert (=> b!7191537 (= e!4318574 e!4318577)))

(assert (=> b!7191537 (= c!1338590 ((_ is Star!18363) (h!76141 (exprs!7815 empty!2999))))))

(declare-fun b!7191538 () Bool)

(assert (=> b!7191538 (= e!4318575 call!655675)))

(assert (= (and d!2240202 (not res!2927998)) b!7191537))

(assert (= (and b!7191537 c!1338590) b!7191535))

(assert (= (and b!7191537 (not c!1338590)) b!7191531))

(assert (= (and b!7191535 res!2927995) b!7191538))

(assert (= (and b!7191531 c!1338589) b!7191533))

(assert (= (and b!7191531 (not c!1338589)) b!7191532))

(assert (= (and b!7191533 res!2927996) b!7191536))

(assert (= (and b!7191532 (not res!2927997)) b!7191534))

(assert (= (and b!7191534 res!2927999) b!7191530))

(assert (= (or b!7191533 b!7191534) bm!655669))

(assert (= (or b!7191536 b!7191530) bm!655670))

(assert (= (or b!7191538 bm!655670) bm!655668))

(declare-fun m!7886584 () Bool)

(assert (=> b!7191535 m!7886584))

(declare-fun m!7886586 () Bool)

(assert (=> bm!655668 m!7886586))

(declare-fun m!7886588 () Bool)

(assert (=> bm!655669 m!7886588))

(assert (=> bs!1899506 d!2240202))

(declare-fun d!2240208 () Bool)

(assert (=> d!2240208 (= (isEmpty!40230 (tail!14082 (unfocusZipperList!2336 (toList!11306 z!3530)))) ((_ is Nil!69693) (tail!14082 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (=> b!7191412 d!2240208))

(declare-fun d!2240214 () Bool)

(assert (=> d!2240214 (= (tail!14082 (unfocusZipperList!2336 (toList!11306 z!3530))) (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))

(assert (=> b!7191412 d!2240214))

(declare-fun b!7191539 () Bool)

(declare-fun e!4318579 () Bool)

(declare-fun call!655677 () Bool)

(assert (=> b!7191539 (= e!4318579 call!655677)))

(declare-fun b!7191540 () Bool)

(declare-fun e!4318584 () Bool)

(declare-fun e!4318583 () Bool)

(assert (=> b!7191540 (= e!4318584 e!4318583)))

(declare-fun c!1338591 () Bool)

(assert (=> b!7191540 (= c!1338591 ((_ is Union!18363) (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))

(declare-fun b!7191541 () Bool)

(declare-fun res!2928002 () Bool)

(declare-fun e!4318580 () Bool)

(assert (=> b!7191541 (=> res!2928002 e!4318580)))

(assert (=> b!7191541 (= res!2928002 (not ((_ is Concat!27208) (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))

(assert (=> b!7191541 (= e!4318583 e!4318580)))

(declare-fun b!7191542 () Bool)

(declare-fun res!2928001 () Bool)

(declare-fun e!4318578 () Bool)

(assert (=> b!7191542 (=> (not res!2928001) (not e!4318578))))

(declare-fun call!655676 () Bool)

(assert (=> b!7191542 (= res!2928001 call!655676)))

(assert (=> b!7191542 (= e!4318583 e!4318578)))

(declare-fun b!7191543 () Bool)

(assert (=> b!7191543 (= e!4318580 e!4318579)))

(declare-fun res!2928004 () Bool)

(assert (=> b!7191543 (=> (not res!2928004) (not e!4318579))))

(assert (=> b!7191543 (= res!2928004 call!655676)))

(declare-fun b!7191544 () Bool)

(declare-fun e!4318582 () Bool)

(assert (=> b!7191544 (= e!4318584 e!4318582)))

(declare-fun res!2928000 () Bool)

(assert (=> b!7191544 (= res!2928000 (not (nullable!7785 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))))

(assert (=> b!7191544 (=> (not res!2928000) (not e!4318582))))

(declare-fun b!7191545 () Bool)

(assert (=> b!7191545 (= e!4318578 call!655677)))

(declare-fun d!2240216 () Bool)

(declare-fun res!2928003 () Bool)

(declare-fun e!4318581 () Bool)

(assert (=> d!2240216 (=> res!2928003 e!4318581)))

(assert (=> d!2240216 (= res!2928003 ((_ is ElementMatch!18363) (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))

(assert (=> d!2240216 (= (validRegex!9478 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) e!4318581)))

(declare-fun bm!655671 () Bool)

(declare-fun call!655678 () Bool)

(declare-fun c!1338592 () Bool)

(assert (=> bm!655671 (= call!655678 (validRegex!9478 (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))))

(declare-fun bm!655672 () Bool)

(assert (=> bm!655672 (= call!655676 (validRegex!9478 (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))))

(declare-fun bm!655673 () Bool)

(assert (=> bm!655673 (= call!655677 call!655678)))

(declare-fun b!7191546 () Bool)

(assert (=> b!7191546 (= e!4318581 e!4318584)))

(assert (=> b!7191546 (= c!1338592 ((_ is Star!18363) (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))

(declare-fun b!7191547 () Bool)

(assert (=> b!7191547 (= e!4318582 call!655678)))

(assert (= (and d!2240216 (not res!2928003)) b!7191546))

(assert (= (and b!7191546 c!1338592) b!7191544))

(assert (= (and b!7191546 (not c!1338592)) b!7191540))

(assert (= (and b!7191544 res!2928000) b!7191547))

(assert (= (and b!7191540 c!1338591) b!7191542))

(assert (= (and b!7191540 (not c!1338591)) b!7191541))

(assert (= (and b!7191542 res!2928001) b!7191545))

(assert (= (and b!7191541 (not res!2928002)) b!7191543))

(assert (= (and b!7191543 res!2928004) b!7191539))

(assert (= (or b!7191542 b!7191543) bm!655672))

(assert (= (or b!7191545 b!7191539) bm!655673))

(assert (= (or b!7191547 bm!655673) bm!655671))

(declare-fun m!7886592 () Bool)

(assert (=> b!7191544 m!7886592))

(declare-fun m!7886594 () Bool)

(assert (=> bm!655671 m!7886594))

(declare-fun m!7886596 () Bool)

(assert (=> bm!655672 m!7886596))

(assert (=> bm!655647 d!2240216))

(declare-fun d!2240224 () Bool)

(assert (=> d!2240224 true))

(declare-fun setRes!53260 () Bool)

(assert (=> d!2240224 setRes!53260))

(declare-fun condSetEmpty!53260 () Bool)

(declare-fun res!2928007 () (InoxSet Context!14630))

(assert (=> d!2240224 (= condSetEmpty!53260 (= res!2928007 ((as const (Array Context!14630 Bool)) false)))))

(assert (=> d!2240224 (= (choose!55414 z!3530 lambda!437848) res!2928007)))

(declare-fun setIsEmpty!53260 () Bool)

(assert (=> setIsEmpty!53260 setRes!53260))

(declare-fun setNonEmpty!53260 () Bool)

(declare-fun tp!1998558 () Bool)

(declare-fun e!4318587 () Bool)

(declare-fun setElem!53260 () Context!14630)

(assert (=> setNonEmpty!53260 (= setRes!53260 (and tp!1998558 (inv!88929 setElem!53260) e!4318587))))

(declare-fun setRest!53260 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53260 (= res!2928007 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53260 true) setRest!53260))))

(declare-fun b!7191550 () Bool)

(declare-fun tp!1998559 () Bool)

(assert (=> b!7191550 (= e!4318587 tp!1998559)))

(assert (= (and d!2240224 condSetEmpty!53260) setIsEmpty!53260))

(assert (= (and d!2240224 (not condSetEmpty!53260)) setNonEmpty!53260))

(assert (= setNonEmpty!53260 b!7191550))

(declare-fun m!7886602 () Bool)

(assert (=> setNonEmpty!53260 m!7886602))

(assert (=> d!2240150 d!2240224))

(assert (=> d!2240164 d!2240162))

(assert (=> d!2240164 d!2240058))

(declare-fun d!2240228 () Bool)

(assert (=> d!2240228 (= (isEmpty!40230 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))) ((_ is Nil!69693) (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (=> b!7191410 d!2240228))

(declare-fun d!2240230 () Bool)

(assert (=> d!2240230 (= (isEmpty!40230 (unfocusZipperList!2336 (toList!11306 z!3530))) ((_ is Nil!69693) (unfocusZipperList!2336 (toList!11306 z!3530))))))

(assert (=> b!7191408 d!2240230))

(declare-fun d!2240232 () Bool)

(declare-fun res!2928019 () Bool)

(declare-fun e!4318601 () Bool)

(assert (=> d!2240232 (=> res!2928019 e!4318601)))

(assert (=> d!2240232 (= res!2928019 ((_ is Nil!69695) (toList!11306 z!3530)))))

(assert (=> d!2240232 (= (forall!17193 (toList!11306 z!3530) lambda!437887) e!4318601)))

(declare-fun b!7191566 () Bool)

(declare-fun e!4318602 () Bool)

(assert (=> b!7191566 (= e!4318601 e!4318602)))

(declare-fun res!2928020 () Bool)

(assert (=> b!7191566 (=> (not res!2928020) (not e!4318602))))

(declare-fun dynLambda!28389 (Int Context!14630) Bool)

(assert (=> b!7191566 (= res!2928020 (dynLambda!28389 lambda!437887 (h!76143 (toList!11306 z!3530))))))

(declare-fun b!7191567 () Bool)

(assert (=> b!7191567 (= e!4318602 (forall!17193 (t!383842 (toList!11306 z!3530)) lambda!437887))))

(assert (= (and d!2240232 (not res!2928019)) b!7191566))

(assert (= (and b!7191566 res!2928020) b!7191567))

(declare-fun b_lambda!275591 () Bool)

(assert (=> (not b_lambda!275591) (not b!7191566)))

(declare-fun m!7886620 () Bool)

(assert (=> b!7191566 m!7886620))

(declare-fun m!7886622 () Bool)

(assert (=> b!7191567 m!7886622))

(assert (=> d!2240162 d!2240232))

(declare-fun d!2240242 () Bool)

(declare-fun res!2928025 () Bool)

(declare-fun e!4318607 () Bool)

(assert (=> d!2240242 (=> res!2928025 e!4318607)))

(assert (=> d!2240242 (= res!2928025 ((_ is Nil!69695) (t!383842 lt!2571231)))))

(assert (=> d!2240242 (= (noDuplicate!2896 (t!383842 lt!2571231)) e!4318607)))

(declare-fun b!7191572 () Bool)

(declare-fun e!4318608 () Bool)

(assert (=> b!7191572 (= e!4318607 e!4318608)))

(declare-fun res!2928026 () Bool)

(assert (=> b!7191572 (=> (not res!2928026) (not e!4318608))))

(assert (=> b!7191572 (= res!2928026 (not (contains!20725 (t!383842 (t!383842 lt!2571231)) (h!76143 (t!383842 lt!2571231)))))))

(declare-fun b!7191573 () Bool)

(assert (=> b!7191573 (= e!4318608 (noDuplicate!2896 (t!383842 (t!383842 lt!2571231))))))

(assert (= (and d!2240242 (not res!2928025)) b!7191572))

(assert (= (and b!7191572 res!2928026) b!7191573))

(declare-fun m!7886628 () Bool)

(assert (=> b!7191572 m!7886628))

(declare-fun m!7886630 () Bool)

(assert (=> b!7191573 m!7886630))

(assert (=> b!7191453 d!2240242))

(declare-fun d!2240246 () Bool)

(declare-fun res!2928029 () Bool)

(declare-fun e!4318611 () Bool)

(assert (=> d!2240246 (=> res!2928029 e!4318611)))

(assert (=> d!2240246 (= res!2928029 ((_ is Nil!69693) lt!2571259))))

(assert (=> d!2240246 (= (forall!17191 lt!2571259 lambda!437884) e!4318611)))

(declare-fun b!7191576 () Bool)

(declare-fun e!4318612 () Bool)

(assert (=> b!7191576 (= e!4318611 e!4318612)))

(declare-fun res!2928030 () Bool)

(assert (=> b!7191576 (=> (not res!2928030) (not e!4318612))))

(assert (=> b!7191576 (= res!2928030 (dynLambda!28388 lambda!437884 (h!76141 lt!2571259)))))

(declare-fun b!7191577 () Bool)

(assert (=> b!7191577 (= e!4318612 (forall!17191 (t!383840 lt!2571259) lambda!437884))))

(assert (= (and d!2240246 (not res!2928029)) b!7191576))

(assert (= (and b!7191576 res!2928030) b!7191577))

(declare-fun b_lambda!275593 () Bool)

(assert (=> (not b_lambda!275593) (not b!7191576)))

(declare-fun m!7886636 () Bool)

(assert (=> b!7191576 m!7886636))

(declare-fun m!7886638 () Bool)

(assert (=> b!7191577 m!7886638))

(assert (=> d!2240148 d!2240246))

(declare-fun bm!655677 () Bool)

(declare-fun call!655685 () (InoxSet Context!14630))

(declare-fun call!655684 () (InoxSet Context!14630))

(assert (=> bm!655677 (= call!655685 call!655684)))

(declare-fun c!1338598 () Bool)

(declare-fun d!2240250 () Bool)

(assert (=> d!2240250 (= c!1338598 (and ((_ is ElementMatch!18363) (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (= (c!1338487 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) lt!2571215)))))

(declare-fun e!4318614 () (InoxSet Context!14630))

(assert (=> d!2240250 (= (derivationStepZipperDown!2516 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))) (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) lt!2571215) e!4318614)))

(declare-fun b!7191578 () Bool)

(declare-fun e!4318616 () (InoxSet Context!14630))

(declare-fun call!655682 () (InoxSet Context!14630))

(assert (=> b!7191578 (= e!4318616 ((_ map or) call!655682 call!655685))))

(declare-fun b!7191579 () Bool)

(declare-fun e!4318618 () (InoxSet Context!14630))

(declare-fun call!655686 () (InoxSet Context!14630))

(assert (=> b!7191579 (= e!4318618 call!655686)))

(declare-fun bm!655678 () Bool)

(declare-fun call!655687 () List!69817)

(declare-fun call!655683 () List!69817)

(assert (=> bm!655678 (= call!655687 call!655683)))

(declare-fun b!7191580 () Bool)

(assert (=> b!7191580 (= e!4318614 (store ((as const (Array Context!14630 Bool)) false) (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) true))))

(declare-fun b!7191581 () Bool)

(declare-fun c!1338597 () Bool)

(assert (=> b!7191581 (= c!1338597 ((_ is Star!18363) (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))

(declare-fun e!4318615 () (InoxSet Context!14630))

(assert (=> b!7191581 (= e!4318615 e!4318618)))

(declare-fun b!7191582 () Bool)

(declare-fun c!1338596 () Bool)

(declare-fun e!4318613 () Bool)

(assert (=> b!7191582 (= c!1338596 e!4318613)))

(declare-fun res!2928031 () Bool)

(assert (=> b!7191582 (=> (not res!2928031) (not e!4318613))))

(assert (=> b!7191582 (= res!2928031 ((_ is Concat!27208) (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))

(declare-fun e!4318617 () (InoxSet Context!14630))

(assert (=> b!7191582 (= e!4318617 e!4318616)))

(declare-fun b!7191583 () Bool)

(assert (=> b!7191583 (= e!4318614 e!4318617)))

(declare-fun c!1338599 () Bool)

(assert (=> b!7191583 (= c!1338599 ((_ is Union!18363) (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))

(declare-fun b!7191584 () Bool)

(assert (=> b!7191584 (= e!4318616 e!4318615)))

(declare-fun c!1338595 () Bool)

(assert (=> b!7191584 (= c!1338595 ((_ is Concat!27208) (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))

(declare-fun bm!655679 () Bool)

(assert (=> bm!655679 (= call!655682 (derivationStepZipperDown!2516 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))) (ite c!1338599 (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655683)) lt!2571215))))

(declare-fun bm!655680 () Bool)

(assert (=> bm!655680 (= call!655684 (derivationStepZipperDown!2516 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))) (ite (or c!1338599 c!1338596) (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655687)) lt!2571215))))

(declare-fun b!7191585 () Bool)

(assert (=> b!7191585 (= e!4318615 call!655686)))

(declare-fun bm!655681 () Bool)

(assert (=> bm!655681 (= call!655686 call!655685)))

(declare-fun b!7191586 () Bool)

(assert (=> b!7191586 (= e!4318618 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191587 () Bool)

(assert (=> b!7191587 (= e!4318617 ((_ map or) call!655682 call!655684))))

(declare-fun b!7191588 () Bool)

(assert (=> b!7191588 (= e!4318613 (nullable!7785 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))

(declare-fun bm!655682 () Bool)

(assert (=> bm!655682 (= call!655683 ($colon$colon!2846 (exprs!7815 (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668))) (ite (or c!1338596 c!1338595) (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))

(assert (= (and d!2240250 c!1338598) b!7191580))

(assert (= (and d!2240250 (not c!1338598)) b!7191583))

(assert (= (and b!7191583 c!1338599) b!7191587))

(assert (= (and b!7191583 (not c!1338599)) b!7191582))

(assert (= (and b!7191582 res!2928031) b!7191588))

(assert (= (and b!7191582 c!1338596) b!7191578))

(assert (= (and b!7191582 (not c!1338596)) b!7191584))

(assert (= (and b!7191584 c!1338595) b!7191585))

(assert (= (and b!7191584 (not c!1338595)) b!7191581))

(assert (= (and b!7191581 c!1338597) b!7191579))

(assert (= (and b!7191581 (not c!1338597)) b!7191586))

(assert (= (or b!7191585 b!7191579) bm!655678))

(assert (= (or b!7191585 b!7191579) bm!655681))

(assert (= (or b!7191578 bm!655681) bm!655677))

(assert (= (or b!7191578 bm!655678) bm!655682))

(assert (= (or b!7191587 bm!655677) bm!655680))

(assert (= (or b!7191587 b!7191578) bm!655679))

(declare-fun m!7886642 () Bool)

(assert (=> bm!655682 m!7886642))

(declare-fun m!7886648 () Bool)

(assert (=> bm!655679 m!7886648))

(declare-fun m!7886650 () Bool)

(assert (=> b!7191580 m!7886650))

(declare-fun m!7886652 () Bool)

(assert (=> b!7191588 m!7886652))

(declare-fun m!7886654 () Bool)

(assert (=> bm!655680 m!7886654))

(assert (=> bm!655664 d!2240250))

(declare-fun bs!1899517 () Bool)

(declare-fun d!2240254 () Bool)

(assert (= bs!1899517 (and d!2240254 d!2240146)))

(declare-fun lambda!437893 () Int)

(assert (=> bs!1899517 (= lambda!437893 lambda!437881)))

(declare-fun bs!1899518 () Bool)

(assert (= bs!1899518 (and d!2240254 d!2240088)))

(assert (=> bs!1899518 (= lambda!437893 lambda!437865)))

(declare-fun bs!1899519 () Bool)

(assert (= bs!1899519 (and d!2240254 d!2240170)))

(assert (=> bs!1899519 (= lambda!437893 lambda!437888)))

(declare-fun bs!1899521 () Bool)

(assert (= bs!1899521 (and d!2240254 d!2240078)))

(assert (=> bs!1899521 (= lambda!437893 lambda!437864)))

(declare-fun bs!1899522 () Bool)

(assert (= bs!1899522 (and d!2240254 d!2240148)))

(assert (=> bs!1899522 (= lambda!437893 lambda!437884)))

(assert (=> d!2240254 (= (inv!88929 setElem!53259) (forall!17191 (exprs!7815 setElem!53259) lambda!437893))))

(declare-fun bs!1899525 () Bool)

(assert (= bs!1899525 d!2240254))

(declare-fun m!7886660 () Bool)

(assert (=> bs!1899525 m!7886660))

(assert (=> setNonEmpty!53259 d!2240254))

(declare-fun d!2240258 () Bool)

(assert (=> d!2240258 (= (head!14689 (unfocusZipperList!2336 (toList!11306 z!3530))) (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530))))))

(assert (=> b!7191414 d!2240258))

(declare-fun bs!1899529 () Bool)

(declare-fun d!2240262 () Bool)

(assert (= bs!1899529 (and d!2240262 d!2240146)))

(declare-fun lambda!437895 () Int)

(assert (=> bs!1899529 (= lambda!437895 lambda!437881)))

(declare-fun bs!1899530 () Bool)

(assert (= bs!1899530 (and d!2240262 d!2240088)))

(assert (=> bs!1899530 (= lambda!437895 lambda!437865)))

(declare-fun bs!1899531 () Bool)

(assert (= bs!1899531 (and d!2240262 d!2240078)))

(assert (=> bs!1899531 (= lambda!437895 lambda!437864)))

(declare-fun bs!1899532 () Bool)

(assert (= bs!1899532 (and d!2240262 d!2240148)))

(assert (=> bs!1899532 (= lambda!437895 lambda!437884)))

(declare-fun bs!1899533 () Bool)

(assert (= bs!1899533 (and d!2240262 d!2240254)))

(assert (=> bs!1899533 (= lambda!437895 lambda!437893)))

(declare-fun bs!1899534 () Bool)

(assert (= bs!1899534 (and d!2240262 d!2240170)))

(assert (=> bs!1899534 (= lambda!437895 lambda!437888)))

(assert (=> d!2240262 (= (inv!88929 setElem!53258) (forall!17191 (exprs!7815 setElem!53258) lambda!437895))))

(declare-fun bs!1899535 () Bool)

(assert (= bs!1899535 d!2240262))

(declare-fun m!7886664 () Bool)

(assert (=> bs!1899535 m!7886664))

(assert (=> setNonEmpty!53258 d!2240262))

(declare-fun bs!1899536 () Bool)

(declare-fun d!2240266 () Bool)

(assert (= bs!1899536 (and d!2240266 b!7191090)))

(declare-fun lambda!437896 () Int)

(assert (=> bs!1899536 (not (= lambda!437896 lambda!437845))))

(declare-fun bs!1899537 () Bool)

(assert (= bs!1899537 (and d!2240266 d!2240074)))

(assert (=> bs!1899537 (not (= lambda!437896 lambda!437861))))

(declare-fun bs!1899538 () Bool)

(assert (= bs!1899538 (and d!2240266 d!2240162)))

(assert (=> bs!1899538 (= (= lambda!437861 lambda!437845) (= lambda!437896 lambda!437887))))

(declare-fun bs!1899539 () Bool)

(assert (= bs!1899539 (and d!2240266 d!2240190)))

(assert (=> bs!1899539 (not (= lambda!437896 lambda!437891))))

(assert (=> d!2240266 true))

(assert (=> d!2240266 (< (dynLambda!28386 order!28709 lambda!437861) (dynLambda!28386 order!28709 lambda!437896))))

(assert (=> d!2240266 (= (exists!4087 (toList!11306 z!3530) lambda!437861) (not (forall!17193 (toList!11306 z!3530) lambda!437896)))))

(declare-fun bs!1899540 () Bool)

(assert (= bs!1899540 d!2240266))

(assert (=> bs!1899540 m!7886230))

(declare-fun m!7886670 () Bool)

(assert (=> bs!1899540 m!7886670))

(assert (=> d!2240188 d!2240266))

(assert (=> d!2240188 d!2240058))

(declare-fun d!2240268 () Bool)

(declare-fun res!2928036 () Bool)

(assert (=> d!2240268 (= res!2928036 (exists!4087 (toList!11306 z!3530) lambda!437861))))

(assert (=> d!2240268 true))

(assert (=> d!2240268 (= (choose!55412 z!3530 lambda!437861) res!2928036)))

(declare-fun bs!1899541 () Bool)

(assert (= bs!1899541 d!2240268))

(assert (=> bs!1899541 m!7886230))

(assert (=> bs!1899541 m!7886230))

(assert (=> bs!1899541 m!7886562))

(assert (=> d!2240188 d!2240268))

(declare-fun d!2240272 () Bool)

(assert (=> d!2240272 (= (nullable!7785 (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))) (nullableFct!3046 (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))

(declare-fun bs!1899542 () Bool)

(assert (= bs!1899542 d!2240272))

(declare-fun m!7886678 () Bool)

(assert (=> bs!1899542 m!7886678))

(assert (=> b!7191500 d!2240272))

(declare-fun d!2240274 () Bool)

(declare-fun c!1338608 () Bool)

(assert (=> d!2240274 (= c!1338608 ((_ is Nil!69695) lt!2571261))))

(declare-fun e!4318636 () (InoxSet Context!14630))

(assert (=> d!2240274 (= (content!14325 lt!2571261) e!4318636)))

(declare-fun b!7191614 () Bool)

(assert (=> b!7191614 (= e!4318636 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191615 () Bool)

(assert (=> b!7191615 (= e!4318636 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 lt!2571261) true) (content!14325 (t!383842 lt!2571261))))))

(assert (= (and d!2240274 c!1338608) b!7191614))

(assert (= (and d!2240274 (not c!1338608)) b!7191615))

(declare-fun m!7886680 () Bool)

(assert (=> b!7191615 m!7886680))

(declare-fun m!7886682 () Bool)

(assert (=> b!7191615 m!7886682))

(assert (=> b!7191462 d!2240274))

(assert (=> d!2240190 d!2240082))

(declare-fun d!2240276 () Bool)

(declare-fun lt!2571263 () Bool)

(assert (=> d!2240276 (= lt!2571263 (exists!4087 (toList!11306 z!3530) lambda!437891))))

(assert (=> d!2240276 (= lt!2571263 (choose!55412 z!3530 lambda!437891))))

(assert (=> d!2240276 (= (exists!4085 z!3530 lambda!437891) lt!2571263)))

(declare-fun bs!1899543 () Bool)

(assert (= bs!1899543 d!2240276))

(assert (=> bs!1899543 m!7886230))

(assert (=> bs!1899543 m!7886230))

(declare-fun m!7886686 () Bool)

(assert (=> bs!1899543 m!7886686))

(declare-fun m!7886688 () Bool)

(assert (=> bs!1899543 m!7886688))

(assert (=> d!2240190 d!2240276))

(declare-fun bs!1899544 () Bool)

(declare-fun d!2240278 () Bool)

(assert (= bs!1899544 (and d!2240278 d!2240146)))

(declare-fun lambda!437897 () Int)

(assert (=> bs!1899544 (= lambda!437897 lambda!437881)))

(declare-fun bs!1899545 () Bool)

(assert (= bs!1899545 (and d!2240278 d!2240088)))

(assert (=> bs!1899545 (= lambda!437897 lambda!437865)))

(declare-fun bs!1899546 () Bool)

(assert (= bs!1899546 (and d!2240278 d!2240078)))

(assert (=> bs!1899546 (= lambda!437897 lambda!437864)))

(declare-fun bs!1899547 () Bool)

(assert (= bs!1899547 (and d!2240278 d!2240148)))

(assert (=> bs!1899547 (= lambda!437897 lambda!437884)))

(declare-fun bs!1899548 () Bool)

(assert (= bs!1899548 (and d!2240278 d!2240262)))

(assert (=> bs!1899548 (= lambda!437897 lambda!437895)))

(declare-fun bs!1899549 () Bool)

(assert (= bs!1899549 (and d!2240278 d!2240254)))

(assert (=> bs!1899549 (= lambda!437897 lambda!437893)))

(declare-fun bs!1899550 () Bool)

(assert (= bs!1899550 (and d!2240278 d!2240170)))

(assert (=> bs!1899550 (= lambda!437897 lambda!437888)))

(assert (=> d!2240278 (= (inv!88929 _$3!486) (forall!17191 (exprs!7815 _$3!486) lambda!437897))))

(declare-fun bs!1899551 () Bool)

(assert (= bs!1899551 d!2240278))

(declare-fun m!7886694 () Bool)

(assert (=> bs!1899551 m!7886694))

(assert (=> d!2240190 d!2240278))

(declare-fun d!2240282 () Bool)

(declare-fun c!1338609 () Bool)

(assert (=> d!2240282 (= c!1338609 ((_ is Nil!69695) (t!383842 lt!2571244)))))

(declare-fun e!4318637 () (InoxSet Context!14630))

(assert (=> d!2240282 (= (content!14325 (t!383842 lt!2571244)) e!4318637)))

(declare-fun b!7191616 () Bool)

(assert (=> b!7191616 (= e!4318637 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191617 () Bool)

(assert (=> b!7191617 (= e!4318637 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 (t!383842 lt!2571244)) true) (content!14325 (t!383842 (t!383842 lt!2571244)))))))

(assert (= (and d!2240282 c!1338609) b!7191616))

(assert (= (and d!2240282 (not c!1338609)) b!7191617))

(declare-fun m!7886696 () Bool)

(assert (=> b!7191617 m!7886696))

(declare-fun m!7886698 () Bool)

(assert (=> b!7191617 m!7886698))

(assert (=> b!7191426 d!2240282))

(declare-fun bs!1899565 () Bool)

(declare-fun d!2240284 () Bool)

(assert (= bs!1899565 (and d!2240284 d!2240146)))

(declare-fun lambda!437902 () Int)

(assert (=> bs!1899565 (= lambda!437902 lambda!437881)))

(declare-fun bs!1899566 () Bool)

(assert (= bs!1899566 (and d!2240284 d!2240088)))

(assert (=> bs!1899566 (= lambda!437902 lambda!437865)))

(declare-fun bs!1899567 () Bool)

(assert (= bs!1899567 (and d!2240284 d!2240078)))

(assert (=> bs!1899567 (= lambda!437902 lambda!437864)))

(declare-fun bs!1899568 () Bool)

(assert (= bs!1899568 (and d!2240284 d!2240148)))

(assert (=> bs!1899568 (= lambda!437902 lambda!437884)))

(declare-fun bs!1899569 () Bool)

(assert (= bs!1899569 (and d!2240284 d!2240254)))

(assert (=> bs!1899569 (= lambda!437902 lambda!437893)))

(declare-fun bs!1899570 () Bool)

(assert (= bs!1899570 (and d!2240284 d!2240170)))

(assert (=> bs!1899570 (= lambda!437902 lambda!437888)))

(declare-fun bs!1899571 () Bool)

(assert (= bs!1899571 (and d!2240284 d!2240278)))

(assert (=> bs!1899571 (= lambda!437902 lambda!437897)))

(declare-fun bs!1899572 () Bool)

(assert (= bs!1899572 (and d!2240284 d!2240262)))

(assert (=> bs!1899572 (= lambda!437902 lambda!437895)))

(declare-fun e!4318674 () Bool)

(assert (=> d!2240284 e!4318674))

(declare-fun res!2928056 () Bool)

(assert (=> d!2240284 (=> (not res!2928056) (not e!4318674))))

(declare-fun lt!2571268 () Regex!18363)

(assert (=> d!2240284 (= res!2928056 (validRegex!9478 lt!2571268))))

(declare-fun e!4318675 () Regex!18363)

(assert (=> d!2240284 (= lt!2571268 e!4318675)))

(declare-fun c!1338632 () Bool)

(declare-fun e!4318676 () Bool)

(assert (=> d!2240284 (= c!1338632 e!4318676)))

(declare-fun res!2928057 () Bool)

(assert (=> d!2240284 (=> (not res!2928057) (not e!4318676))))

(assert (=> d!2240284 (= res!2928057 ((_ is Cons!69693) (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(assert (=> d!2240284 (forall!17191 (exprs!7815 (h!76143 (toList!11306 z!3530))) lambda!437902)))

(assert (=> d!2240284 (= (generalisedConcat!2468 (exprs!7815 (h!76143 (toList!11306 z!3530)))) lt!2571268)))

(declare-fun b!7191672 () Bool)

(declare-fun e!4318672 () Regex!18363)

(assert (=> b!7191672 (= e!4318672 EmptyExpr!18363)))

(declare-fun b!7191673 () Bool)

(assert (=> b!7191673 (= e!4318675 e!4318672)))

(declare-fun c!1338631 () Bool)

(assert (=> b!7191673 (= c!1338631 ((_ is Cons!69693) (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(declare-fun b!7191674 () Bool)

(declare-fun e!4318677 () Bool)

(declare-fun e!4318673 () Bool)

(assert (=> b!7191674 (= e!4318677 e!4318673)))

(declare-fun c!1338630 () Bool)

(assert (=> b!7191674 (= c!1338630 (isEmpty!40230 (tail!14082 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(declare-fun b!7191675 () Bool)

(assert (=> b!7191675 (= e!4318676 (isEmpty!40230 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(declare-fun b!7191676 () Bool)

(declare-fun isEmptyExpr!2097 (Regex!18363) Bool)

(assert (=> b!7191676 (= e!4318677 (isEmptyExpr!2097 lt!2571268))))

(declare-fun b!7191677 () Bool)

(assert (=> b!7191677 (= e!4318673 (= lt!2571268 (head!14689 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(declare-fun b!7191678 () Bool)

(assert (=> b!7191678 (= e!4318675 (h!76141 (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(declare-fun b!7191679 () Bool)

(declare-fun isConcat!1619 (Regex!18363) Bool)

(assert (=> b!7191679 (= e!4318673 (isConcat!1619 lt!2571268))))

(declare-fun b!7191680 () Bool)

(assert (=> b!7191680 (= e!4318674 e!4318677)))

(declare-fun c!1338633 () Bool)

(assert (=> b!7191680 (= c!1338633 (isEmpty!40230 (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(declare-fun b!7191681 () Bool)

(assert (=> b!7191681 (= e!4318672 (Concat!27208 (h!76141 (exprs!7815 (h!76143 (toList!11306 z!3530)))) (generalisedConcat!2468 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530)))))))))

(assert (= (and d!2240284 res!2928057) b!7191675))

(assert (= (and d!2240284 c!1338632) b!7191678))

(assert (= (and d!2240284 (not c!1338632)) b!7191673))

(assert (= (and b!7191673 c!1338631) b!7191681))

(assert (= (and b!7191673 (not c!1338631)) b!7191672))

(assert (= (and d!2240284 res!2928056) b!7191680))

(assert (= (and b!7191680 c!1338633) b!7191676))

(assert (= (and b!7191680 (not c!1338633)) b!7191674))

(assert (= (and b!7191674 c!1338630) b!7191677))

(assert (= (and b!7191674 (not c!1338630)) b!7191679))

(declare-fun m!7886746 () Bool)

(assert (=> b!7191675 m!7886746))

(declare-fun m!7886748 () Bool)

(assert (=> b!7191674 m!7886748))

(assert (=> b!7191674 m!7886748))

(declare-fun m!7886750 () Bool)

(assert (=> b!7191674 m!7886750))

(declare-fun m!7886752 () Bool)

(assert (=> b!7191679 m!7886752))

(declare-fun m!7886754 () Bool)

(assert (=> d!2240284 m!7886754))

(declare-fun m!7886756 () Bool)

(assert (=> d!2240284 m!7886756))

(declare-fun m!7886758 () Bool)

(assert (=> b!7191681 m!7886758))

(declare-fun m!7886760 () Bool)

(assert (=> b!7191680 m!7886760))

(declare-fun m!7886762 () Bool)

(assert (=> b!7191677 m!7886762))

(declare-fun m!7886764 () Bool)

(assert (=> b!7191676 m!7886764))

(assert (=> b!7191419 d!2240284))

(declare-fun bs!1899573 () Bool)

(declare-fun d!2240296 () Bool)

(assert (= bs!1899573 (and d!2240296 d!2240146)))

(declare-fun lambda!437903 () Int)

(assert (=> bs!1899573 (= lambda!437903 lambda!437881)))

(declare-fun bs!1899574 () Bool)

(assert (= bs!1899574 (and d!2240296 d!2240284)))

(assert (=> bs!1899574 (= lambda!437903 lambda!437902)))

(declare-fun bs!1899575 () Bool)

(assert (= bs!1899575 (and d!2240296 d!2240088)))

(assert (=> bs!1899575 (= lambda!437903 lambda!437865)))

(declare-fun bs!1899576 () Bool)

(assert (= bs!1899576 (and d!2240296 d!2240078)))

(assert (=> bs!1899576 (= lambda!437903 lambda!437864)))

(declare-fun bs!1899577 () Bool)

(assert (= bs!1899577 (and d!2240296 d!2240148)))

(assert (=> bs!1899577 (= lambda!437903 lambda!437884)))

(declare-fun bs!1899578 () Bool)

(assert (= bs!1899578 (and d!2240296 d!2240254)))

(assert (=> bs!1899578 (= lambda!437903 lambda!437893)))

(declare-fun bs!1899579 () Bool)

(assert (= bs!1899579 (and d!2240296 d!2240170)))

(assert (=> bs!1899579 (= lambda!437903 lambda!437888)))

(declare-fun bs!1899580 () Bool)

(assert (= bs!1899580 (and d!2240296 d!2240278)))

(assert (=> bs!1899580 (= lambda!437903 lambda!437897)))

(declare-fun bs!1899581 () Bool)

(assert (= bs!1899581 (and d!2240296 d!2240262)))

(assert (=> bs!1899581 (= lambda!437903 lambda!437895)))

(declare-fun lt!2571269 () List!69817)

(assert (=> d!2240296 (forall!17191 lt!2571269 lambda!437903)))

(declare-fun e!4318688 () List!69817)

(assert (=> d!2240296 (= lt!2571269 e!4318688)))

(declare-fun c!1338636 () Bool)

(assert (=> d!2240296 (= c!1338636 ((_ is Cons!69695) (t!383842 (toList!11306 z!3530))))))

(assert (=> d!2240296 (= (unfocusZipperList!2336 (t!383842 (toList!11306 z!3530))) lt!2571269)))

(declare-fun b!7191694 () Bool)

(assert (=> b!7191694 (= e!4318688 (Cons!69693 (generalisedConcat!2468 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530))))) (unfocusZipperList!2336 (t!383842 (t!383842 (toList!11306 z!3530))))))))

(declare-fun b!7191695 () Bool)

(assert (=> b!7191695 (= e!4318688 Nil!69693)))

(assert (= (and d!2240296 c!1338636) b!7191694))

(assert (= (and d!2240296 (not c!1338636)) b!7191695))

(declare-fun m!7886766 () Bool)

(assert (=> d!2240296 m!7886766))

(declare-fun m!7886768 () Bool)

(assert (=> b!7191694 m!7886768))

(declare-fun m!7886770 () Bool)

(assert (=> b!7191694 m!7886770))

(assert (=> b!7191419 d!2240296))

(declare-fun d!2240298 () Bool)

(declare-fun res!2928068 () Bool)

(declare-fun e!4318691 () Bool)

(assert (=> d!2240298 (=> res!2928068 e!4318691)))

(assert (=> d!2240298 (= res!2928068 ((_ is Nil!69695) (t!383842 lt!2571244)))))

(assert (=> d!2240298 (= (noDuplicate!2896 (t!383842 lt!2571244)) e!4318691)))

(declare-fun b!7191698 () Bool)

(declare-fun e!4318692 () Bool)

(assert (=> b!7191698 (= e!4318691 e!4318692)))

(declare-fun res!2928069 () Bool)

(assert (=> b!7191698 (=> (not res!2928069) (not e!4318692))))

(assert (=> b!7191698 (= res!2928069 (not (contains!20725 (t!383842 (t!383842 lt!2571244)) (h!76143 (t!383842 lt!2571244)))))))

(declare-fun b!7191699 () Bool)

(assert (=> b!7191699 (= e!4318692 (noDuplicate!2896 (t!383842 (t!383842 lt!2571244))))))

(assert (= (and d!2240298 (not res!2928068)) b!7191698))

(assert (= (and b!7191698 res!2928069) b!7191699))

(declare-fun m!7886772 () Bool)

(assert (=> b!7191698 m!7886772))

(declare-fun m!7886774 () Bool)

(assert (=> b!7191699 m!7886774))

(assert (=> b!7191442 d!2240298))

(declare-fun d!2240300 () Bool)

(declare-fun res!2928070 () Bool)

(declare-fun e!4318693 () Bool)

(assert (=> d!2240300 (=> res!2928070 e!4318693)))

(assert (=> d!2240300 (= res!2928070 ((_ is Nil!69693) (t!383840 (exprs!7815 empty!2999))))))

(assert (=> d!2240300 (= (forall!17191 (t!383840 (exprs!7815 empty!2999)) lambda!437864) e!4318693)))

(declare-fun b!7191700 () Bool)

(declare-fun e!4318694 () Bool)

(assert (=> b!7191700 (= e!4318693 e!4318694)))

(declare-fun res!2928071 () Bool)

(assert (=> b!7191700 (=> (not res!2928071) (not e!4318694))))

(assert (=> b!7191700 (= res!2928071 (dynLambda!28388 lambda!437864 (h!76141 (t!383840 (exprs!7815 empty!2999)))))))

(declare-fun b!7191701 () Bool)

(assert (=> b!7191701 (= e!4318694 (forall!17191 (t!383840 (t!383840 (exprs!7815 empty!2999))) lambda!437864))))

(assert (= (and d!2240300 (not res!2928070)) b!7191700))

(assert (= (and b!7191700 res!2928071) b!7191701))

(declare-fun b_lambda!275595 () Bool)

(assert (=> (not b_lambda!275595) (not b!7191700)))

(declare-fun m!7886776 () Bool)

(assert (=> b!7191700 m!7886776))

(declare-fun m!7886778 () Bool)

(assert (=> b!7191701 m!7886778))

(assert (=> b!7191432 d!2240300))

(declare-fun d!2240302 () Bool)

(declare-fun res!2928072 () Bool)

(declare-fun e!4318695 () Bool)

(assert (=> d!2240302 (=> res!2928072 e!4318695)))

(assert (=> d!2240302 (= res!2928072 ((_ is Nil!69695) res!2927981))))

(assert (=> d!2240302 (= (noDuplicate!2896 res!2927981) e!4318695)))

(declare-fun b!7191702 () Bool)

(declare-fun e!4318696 () Bool)

(assert (=> b!7191702 (= e!4318695 e!4318696)))

(declare-fun res!2928073 () Bool)

(assert (=> b!7191702 (=> (not res!2928073) (not e!4318696))))

(assert (=> b!7191702 (= res!2928073 (not (contains!20725 (t!383842 res!2927981) (h!76143 res!2927981))))))

(declare-fun b!7191703 () Bool)

(assert (=> b!7191703 (= e!4318696 (noDuplicate!2896 (t!383842 res!2927981)))))

(assert (= (and d!2240302 (not res!2928072)) b!7191702))

(assert (= (and b!7191702 res!2928073) b!7191703))

(declare-fun m!7886780 () Bool)

(assert (=> b!7191702 m!7886780))

(declare-fun m!7886782 () Bool)

(assert (=> b!7191703 m!7886782))

(assert (=> d!2240168 d!2240302))

(declare-fun d!2240304 () Bool)

(declare-fun res!2928074 () Bool)

(declare-fun e!4318697 () Bool)

(assert (=> d!2240304 (=> res!2928074 e!4318697)))

(assert (=> d!2240304 (= res!2928074 ((_ is Nil!69695) res!2927985))))

(assert (=> d!2240304 (= (noDuplicate!2896 res!2927985) e!4318697)))

(declare-fun b!7191704 () Bool)

(declare-fun e!4318698 () Bool)

(assert (=> b!7191704 (= e!4318697 e!4318698)))

(declare-fun res!2928075 () Bool)

(assert (=> b!7191704 (=> (not res!2928075) (not e!4318698))))

(assert (=> b!7191704 (= res!2928075 (not (contains!20725 (t!383842 res!2927985) (h!76143 res!2927985))))))

(declare-fun b!7191705 () Bool)

(assert (=> b!7191705 (= e!4318698 (noDuplicate!2896 (t!383842 res!2927985)))))

(assert (= (and d!2240304 (not res!2928074)) b!7191704))

(assert (= (and b!7191704 res!2928075) b!7191705))

(declare-fun m!7886784 () Bool)

(assert (=> b!7191704 m!7886784))

(declare-fun m!7886786 () Bool)

(assert (=> b!7191705 m!7886786))

(assert (=> d!2240174 d!2240304))

(declare-fun d!2240306 () Bool)

(declare-fun c!1338637 () Bool)

(assert (=> d!2240306 (= c!1338637 ((_ is Nil!69695) res!2927985))))

(declare-fun e!4318699 () (InoxSet Context!14630))

(assert (=> d!2240306 (= (content!14325 res!2927985) e!4318699)))

(declare-fun b!7191706 () Bool)

(assert (=> b!7191706 (= e!4318699 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191707 () Bool)

(assert (=> b!7191707 (= e!4318699 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 res!2927985) true) (content!14325 (t!383842 res!2927985))))))

(assert (= (and d!2240306 c!1338637) b!7191706))

(assert (= (and d!2240306 (not c!1338637)) b!7191707))

(declare-fun m!7886788 () Bool)

(assert (=> b!7191707 m!7886788))

(declare-fun m!7886790 () Bool)

(assert (=> b!7191707 m!7886790))

(assert (=> b!7191456 d!2240306))

(declare-fun b!7191708 () Bool)

(declare-fun e!4318700 () Bool)

(assert (=> b!7191708 (= e!4318700 (nullable!7785 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))

(declare-fun b!7191709 () Bool)

(declare-fun e!4318701 () (InoxSet Context!14630))

(declare-fun call!655710 () (InoxSet Context!14630))

(assert (=> b!7191709 (= e!4318701 call!655710)))

(declare-fun d!2240308 () Bool)

(declare-fun c!1338639 () Bool)

(assert (=> d!2240308 (= c!1338639 e!4318700)))

(declare-fun res!2928076 () Bool)

(assert (=> d!2240308 (=> (not res!2928076) (not e!4318700))))

(assert (=> d!2240308 (= res!2928076 ((_ is Cons!69693) (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(declare-fun e!4318702 () (InoxSet Context!14630))

(assert (=> d!2240308 (= (derivationStepZipperUp!2333 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) lt!2571215) e!4318702)))

(declare-fun b!7191710 () Bool)

(assert (=> b!7191710 (= e!4318701 ((as const (Array Context!14630 Bool)) false))))

(declare-fun bm!655705 () Bool)

(assert (=> bm!655705 (= call!655710 (derivationStepZipperDown!2516 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) lt!2571215))))

(declare-fun b!7191711 () Bool)

(assert (=> b!7191711 (= e!4318702 e!4318701)))

(declare-fun c!1338638 () Bool)

(assert (=> b!7191711 (= c!1338638 ((_ is Cons!69693) (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(declare-fun b!7191712 () Bool)

(assert (=> b!7191712 (= e!4318702 ((_ map or) call!655710 (derivationStepZipperUp!2333 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) lt!2571215)))))

(assert (= (and d!2240308 res!2928076) b!7191708))

(assert (= (and d!2240308 c!1338639) b!7191712))

(assert (= (and d!2240308 (not c!1338639)) b!7191711))

(assert (= (and b!7191711 c!1338638) b!7191709))

(assert (= (and b!7191711 (not c!1338638)) b!7191710))

(assert (= (or b!7191712 b!7191709) bm!655705))

(declare-fun m!7886792 () Bool)

(assert (=> b!7191708 m!7886792))

(declare-fun m!7886794 () Bool)

(assert (=> bm!655705 m!7886794))

(declare-fun m!7886796 () Bool)

(assert (=> b!7191712 m!7886796))

(assert (=> b!7191461 d!2240308))

(declare-fun bs!1899582 () Bool)

(declare-fun d!2240310 () Bool)

(assert (= bs!1899582 (and d!2240310 d!2240146)))

(declare-fun lambda!437904 () Int)

(assert (=> bs!1899582 (= lambda!437904 lambda!437881)))

(declare-fun bs!1899583 () Bool)

(assert (= bs!1899583 (and d!2240310 d!2240296)))

(assert (=> bs!1899583 (= lambda!437904 lambda!437903)))

(declare-fun bs!1899584 () Bool)

(assert (= bs!1899584 (and d!2240310 d!2240284)))

(assert (=> bs!1899584 (= lambda!437904 lambda!437902)))

(declare-fun bs!1899585 () Bool)

(assert (= bs!1899585 (and d!2240310 d!2240088)))

(assert (=> bs!1899585 (= lambda!437904 lambda!437865)))

(declare-fun bs!1899586 () Bool)

(assert (= bs!1899586 (and d!2240310 d!2240078)))

(assert (=> bs!1899586 (= lambda!437904 lambda!437864)))

(declare-fun bs!1899587 () Bool)

(assert (= bs!1899587 (and d!2240310 d!2240148)))

(assert (=> bs!1899587 (= lambda!437904 lambda!437884)))

(declare-fun bs!1899588 () Bool)

(assert (= bs!1899588 (and d!2240310 d!2240254)))

(assert (=> bs!1899588 (= lambda!437904 lambda!437893)))

(declare-fun bs!1899589 () Bool)

(assert (= bs!1899589 (and d!2240310 d!2240170)))

(assert (=> bs!1899589 (= lambda!437904 lambda!437888)))

(declare-fun bs!1899590 () Bool)

(assert (= bs!1899590 (and d!2240310 d!2240278)))

(assert (=> bs!1899590 (= lambda!437904 lambda!437897)))

(declare-fun bs!1899591 () Bool)

(assert (= bs!1899591 (and d!2240310 d!2240262)))

(assert (=> bs!1899591 (= lambda!437904 lambda!437895)))

(assert (=> d!2240310 (= (inv!88929 (h!76143 res!2927985)) (forall!17191 (exprs!7815 (h!76143 res!2927985)) lambda!437904))))

(declare-fun bs!1899592 () Bool)

(assert (= bs!1899592 d!2240310))

(declare-fun m!7886802 () Bool)

(assert (=> bs!1899592 m!7886802))

(assert (=> b!7191454 d!2240310))

(declare-fun bm!655709 () Bool)

(declare-fun call!655717 () (InoxSet Context!14630))

(declare-fun call!655716 () (InoxSet Context!14630))

(assert (=> bm!655709 (= call!655717 call!655716)))

(declare-fun d!2240316 () Bool)

(declare-fun c!1338646 () Bool)

(assert (=> d!2240316 (= c!1338646 (and ((_ is ElementMatch!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (= (c!1338487 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) lt!2571215)))))

(declare-fun e!4318713 () (InoxSet Context!14630))

(assert (=> d!2240316 (= (derivationStepZipperDown!2516 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) lt!2571215) e!4318713)))

(declare-fun b!7191725 () Bool)

(declare-fun e!4318715 () (InoxSet Context!14630))

(declare-fun call!655714 () (InoxSet Context!14630))

(assert (=> b!7191725 (= e!4318715 ((_ map or) call!655714 call!655717))))

(declare-fun b!7191726 () Bool)

(declare-fun e!4318717 () (InoxSet Context!14630))

(declare-fun call!655718 () (InoxSet Context!14630))

(assert (=> b!7191726 (= e!4318717 call!655718)))

(declare-fun bm!655710 () Bool)

(declare-fun call!655719 () List!69817)

(declare-fun call!655715 () List!69817)

(assert (=> bm!655710 (= call!655719 call!655715)))

(declare-fun b!7191727 () Bool)

(assert (=> b!7191727 (= e!4318713 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) true))))

(declare-fun b!7191728 () Bool)

(declare-fun c!1338645 () Bool)

(assert (=> b!7191728 (= c!1338645 ((_ is Star!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))

(declare-fun e!4318714 () (InoxSet Context!14630))

(assert (=> b!7191728 (= e!4318714 e!4318717)))

(declare-fun b!7191729 () Bool)

(declare-fun c!1338644 () Bool)

(declare-fun e!4318712 () Bool)

(assert (=> b!7191729 (= c!1338644 e!4318712)))

(declare-fun res!2928083 () Bool)

(assert (=> b!7191729 (=> (not res!2928083) (not e!4318712))))

(assert (=> b!7191729 (= res!2928083 ((_ is Concat!27208) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))

(declare-fun e!4318716 () (InoxSet Context!14630))

(assert (=> b!7191729 (= e!4318716 e!4318715)))

(declare-fun b!7191730 () Bool)

(assert (=> b!7191730 (= e!4318713 e!4318716)))

(declare-fun c!1338647 () Bool)

(assert (=> b!7191730 (= c!1338647 ((_ is Union!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))

(declare-fun b!7191731 () Bool)

(assert (=> b!7191731 (= e!4318715 e!4318714)))

(declare-fun c!1338643 () Bool)

(assert (=> b!7191731 (= c!1338643 ((_ is Concat!27208) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))

(declare-fun bm!655711 () Bool)

(assert (=> bm!655711 (= call!655714 (derivationStepZipperDown!2516 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))) (ite c!1338647 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655715)) lt!2571215))))

(declare-fun bm!655712 () Bool)

(assert (=> bm!655712 (= call!655716 (derivationStepZipperDown!2516 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (ite (or c!1338647 c!1338644) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655719)) lt!2571215))))

(declare-fun b!7191732 () Bool)

(assert (=> b!7191732 (= e!4318714 call!655718)))

(declare-fun bm!655713 () Bool)

(assert (=> bm!655713 (= call!655718 call!655717)))

(declare-fun b!7191733 () Bool)

(assert (=> b!7191733 (= e!4318717 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191734 () Bool)

(assert (=> b!7191734 (= e!4318716 ((_ map or) call!655714 call!655716))))

(declare-fun b!7191735 () Bool)

(assert (=> b!7191735 (= e!4318712 (nullable!7785 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))

(declare-fun bm!655714 () Bool)

(assert (=> bm!655714 (= call!655715 ($colon$colon!2846 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))) (ite (or c!1338644 c!1338643) (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))

(assert (= (and d!2240316 c!1338646) b!7191727))

(assert (= (and d!2240316 (not c!1338646)) b!7191730))

(assert (= (and b!7191730 c!1338647) b!7191734))

(assert (= (and b!7191730 (not c!1338647)) b!7191729))

(assert (= (and b!7191729 res!2928083) b!7191735))

(assert (= (and b!7191729 c!1338644) b!7191725))

(assert (= (and b!7191729 (not c!1338644)) b!7191731))

(assert (= (and b!7191731 c!1338643) b!7191732))

(assert (= (and b!7191731 (not c!1338643)) b!7191728))

(assert (= (and b!7191728 c!1338645) b!7191726))

(assert (= (and b!7191728 (not c!1338645)) b!7191733))

(assert (= (or b!7191732 b!7191726) bm!655710))

(assert (= (or b!7191732 b!7191726) bm!655713))

(assert (= (or b!7191725 bm!655713) bm!655709))

(assert (= (or b!7191725 bm!655710) bm!655714))

(assert (= (or b!7191734 bm!655709) bm!655712))

(assert (= (or b!7191734 b!7191725) bm!655711))

(declare-fun m!7886810 () Bool)

(assert (=> bm!655714 m!7886810))

(declare-fun m!7886812 () Bool)

(assert (=> bm!655711 m!7886812))

(declare-fun m!7886814 () Bool)

(assert (=> b!7191727 m!7886814))

(declare-fun m!7886816 () Bool)

(assert (=> b!7191735 m!7886816))

(declare-fun m!7886818 () Bool)

(assert (=> bm!655712 m!7886818))

(assert (=> bm!655649 d!2240316))

(declare-fun b!7191738 () Bool)

(declare-fun e!4318721 () Bool)

(declare-fun call!655721 () Bool)

(assert (=> b!7191738 (= e!4318721 call!655721)))

(declare-fun b!7191739 () Bool)

(declare-fun e!4318726 () Bool)

(declare-fun e!4318725 () Bool)

(assert (=> b!7191739 (= e!4318726 e!4318725)))

(declare-fun c!1338648 () Bool)

(assert (=> b!7191739 (= c!1338648 ((_ is Union!18363) (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))

(declare-fun b!7191740 () Bool)

(declare-fun res!2928088 () Bool)

(declare-fun e!4318722 () Bool)

(assert (=> b!7191740 (=> res!2928088 e!4318722)))

(assert (=> b!7191740 (= res!2928088 (not ((_ is Concat!27208) (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))

(assert (=> b!7191740 (= e!4318725 e!4318722)))

(declare-fun b!7191741 () Bool)

(declare-fun res!2928087 () Bool)

(declare-fun e!4318720 () Bool)

(assert (=> b!7191741 (=> (not res!2928087) (not e!4318720))))

(declare-fun call!655720 () Bool)

(assert (=> b!7191741 (= res!2928087 call!655720)))

(assert (=> b!7191741 (= e!4318725 e!4318720)))

(declare-fun b!7191742 () Bool)

(assert (=> b!7191742 (= e!4318722 e!4318721)))

(declare-fun res!2928090 () Bool)

(assert (=> b!7191742 (=> (not res!2928090) (not e!4318721))))

(assert (=> b!7191742 (= res!2928090 call!655720)))

(declare-fun b!7191743 () Bool)

(declare-fun e!4318724 () Bool)

(assert (=> b!7191743 (= e!4318726 e!4318724)))

(declare-fun res!2928086 () Bool)

(assert (=> b!7191743 (= res!2928086 (not (nullable!7785 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))))

(assert (=> b!7191743 (=> (not res!2928086) (not e!4318724))))

(declare-fun b!7191744 () Bool)

(assert (=> b!7191744 (= e!4318720 call!655721)))

(declare-fun d!2240322 () Bool)

(declare-fun res!2928089 () Bool)

(declare-fun e!4318723 () Bool)

(assert (=> d!2240322 (=> res!2928089 e!4318723)))

(assert (=> d!2240322 (= res!2928089 ((_ is ElementMatch!18363) (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))

(assert (=> d!2240322 (= (validRegex!9478 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) e!4318723)))

(declare-fun c!1338649 () Bool)

(declare-fun bm!655715 () Bool)

(declare-fun call!655722 () Bool)

(assert (=> bm!655715 (= call!655722 (validRegex!9478 (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))))

(declare-fun bm!655716 () Bool)

(assert (=> bm!655716 (= call!655720 (validRegex!9478 (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))))

(declare-fun bm!655717 () Bool)

(assert (=> bm!655717 (= call!655721 call!655722)))

(declare-fun b!7191745 () Bool)

(assert (=> b!7191745 (= e!4318723 e!4318726)))

(assert (=> b!7191745 (= c!1338649 ((_ is Star!18363) (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))

(declare-fun b!7191746 () Bool)

(assert (=> b!7191746 (= e!4318724 call!655722)))

(assert (= (and d!2240322 (not res!2928089)) b!7191745))

(assert (= (and b!7191745 c!1338649) b!7191743))

(assert (= (and b!7191745 (not c!1338649)) b!7191739))

(assert (= (and b!7191743 res!2928086) b!7191746))

(assert (= (and b!7191739 c!1338648) b!7191741))

(assert (= (and b!7191739 (not c!1338648)) b!7191740))

(assert (= (and b!7191741 res!2928087) b!7191744))

(assert (= (and b!7191740 (not res!2928088)) b!7191742))

(assert (= (and b!7191742 res!2928090) b!7191738))

(assert (= (or b!7191741 b!7191742) bm!655716))

(assert (= (or b!7191744 b!7191738) bm!655717))

(assert (= (or b!7191746 bm!655717) bm!655715))

(declare-fun m!7886824 () Bool)

(assert (=> b!7191743 m!7886824))

(declare-fun m!7886826 () Bool)

(assert (=> bm!655715 m!7886826))

(declare-fun m!7886828 () Bool)

(assert (=> bm!655716 m!7886828))

(assert (=> bm!655646 d!2240322))

(declare-fun b!7191749 () Bool)

(declare-fun e!4318730 () Bool)

(declare-fun call!655724 () Bool)

(assert (=> b!7191749 (= e!4318730 call!655724)))

(declare-fun b!7191750 () Bool)

(declare-fun e!4318735 () Bool)

(declare-fun e!4318734 () Bool)

(assert (=> b!7191750 (= e!4318735 e!4318734)))

(declare-fun c!1338650 () Bool)

(assert (=> b!7191750 (= c!1338650 ((_ is Union!18363) (h!76141 (exprs!7815 setElem!53245))))))

(declare-fun b!7191751 () Bool)

(declare-fun res!2928095 () Bool)

(declare-fun e!4318731 () Bool)

(assert (=> b!7191751 (=> res!2928095 e!4318731)))

(assert (=> b!7191751 (= res!2928095 (not ((_ is Concat!27208) (h!76141 (exprs!7815 setElem!53245)))))))

(assert (=> b!7191751 (= e!4318734 e!4318731)))

(declare-fun b!7191752 () Bool)

(declare-fun res!2928094 () Bool)

(declare-fun e!4318729 () Bool)

(assert (=> b!7191752 (=> (not res!2928094) (not e!4318729))))

(declare-fun call!655723 () Bool)

(assert (=> b!7191752 (= res!2928094 call!655723)))

(assert (=> b!7191752 (= e!4318734 e!4318729)))

(declare-fun b!7191753 () Bool)

(assert (=> b!7191753 (= e!4318731 e!4318730)))

(declare-fun res!2928097 () Bool)

(assert (=> b!7191753 (=> (not res!2928097) (not e!4318730))))

(assert (=> b!7191753 (= res!2928097 call!655723)))

(declare-fun b!7191754 () Bool)

(declare-fun e!4318733 () Bool)

(assert (=> b!7191754 (= e!4318735 e!4318733)))

(declare-fun res!2928093 () Bool)

(assert (=> b!7191754 (= res!2928093 (not (nullable!7785 (reg!18692 (h!76141 (exprs!7815 setElem!53245))))))))

(assert (=> b!7191754 (=> (not res!2928093) (not e!4318733))))

(declare-fun b!7191755 () Bool)

(assert (=> b!7191755 (= e!4318729 call!655724)))

(declare-fun d!2240330 () Bool)

(declare-fun res!2928096 () Bool)

(declare-fun e!4318732 () Bool)

(assert (=> d!2240330 (=> res!2928096 e!4318732)))

(assert (=> d!2240330 (= res!2928096 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 setElem!53245))))))

(assert (=> d!2240330 (= (validRegex!9478 (h!76141 (exprs!7815 setElem!53245))) e!4318732)))

(declare-fun c!1338651 () Bool)

(declare-fun bm!655718 () Bool)

(declare-fun call!655725 () Bool)

(assert (=> bm!655718 (= call!655725 (validRegex!9478 (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))))))

(declare-fun bm!655719 () Bool)

(assert (=> bm!655719 (= call!655723 (validRegex!9478 (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))))))

(declare-fun bm!655720 () Bool)

(assert (=> bm!655720 (= call!655724 call!655725)))

(declare-fun b!7191756 () Bool)

(assert (=> b!7191756 (= e!4318732 e!4318735)))

(assert (=> b!7191756 (= c!1338651 ((_ is Star!18363) (h!76141 (exprs!7815 setElem!53245))))))

(declare-fun b!7191757 () Bool)

(assert (=> b!7191757 (= e!4318733 call!655725)))

(assert (= (and d!2240330 (not res!2928096)) b!7191756))

(assert (= (and b!7191756 c!1338651) b!7191754))

(assert (= (and b!7191756 (not c!1338651)) b!7191750))

(assert (= (and b!7191754 res!2928093) b!7191757))

(assert (= (and b!7191750 c!1338650) b!7191752))

(assert (= (and b!7191750 (not c!1338650)) b!7191751))

(assert (= (and b!7191752 res!2928094) b!7191755))

(assert (= (and b!7191751 (not res!2928095)) b!7191753))

(assert (= (and b!7191753 res!2928097) b!7191749))

(assert (= (or b!7191752 b!7191753) bm!655719))

(assert (= (or b!7191755 b!7191749) bm!655720))

(assert (= (or b!7191757 bm!655720) bm!655718))

(declare-fun m!7886834 () Bool)

(assert (=> b!7191754 m!7886834))

(declare-fun m!7886836 () Bool)

(assert (=> bm!655718 m!7886836))

(declare-fun m!7886838 () Bool)

(assert (=> bm!655719 m!7886838))

(assert (=> bs!1899507 d!2240330))

(declare-fun bs!1899593 () Bool)

(declare-fun d!2240334 () Bool)

(assert (= bs!1899593 (and d!2240334 d!2240146)))

(declare-fun lambda!437905 () Int)

(assert (=> bs!1899593 (= lambda!437905 lambda!437881)))

(declare-fun bs!1899594 () Bool)

(assert (= bs!1899594 (and d!2240334 d!2240296)))

(assert (=> bs!1899594 (= lambda!437905 lambda!437903)))

(declare-fun bs!1899595 () Bool)

(assert (= bs!1899595 (and d!2240334 d!2240284)))

(assert (=> bs!1899595 (= lambda!437905 lambda!437902)))

(declare-fun bs!1899596 () Bool)

(assert (= bs!1899596 (and d!2240334 d!2240088)))

(assert (=> bs!1899596 (= lambda!437905 lambda!437865)))

(declare-fun bs!1899597 () Bool)

(assert (= bs!1899597 (and d!2240334 d!2240310)))

(assert (=> bs!1899597 (= lambda!437905 lambda!437904)))

(declare-fun bs!1899598 () Bool)

(assert (= bs!1899598 (and d!2240334 d!2240078)))

(assert (=> bs!1899598 (= lambda!437905 lambda!437864)))

(declare-fun bs!1899599 () Bool)

(assert (= bs!1899599 (and d!2240334 d!2240148)))

(assert (=> bs!1899599 (= lambda!437905 lambda!437884)))

(declare-fun bs!1899600 () Bool)

(assert (= bs!1899600 (and d!2240334 d!2240254)))

(assert (=> bs!1899600 (= lambda!437905 lambda!437893)))

(declare-fun bs!1899601 () Bool)

(assert (= bs!1899601 (and d!2240334 d!2240170)))

(assert (=> bs!1899601 (= lambda!437905 lambda!437888)))

(declare-fun bs!1899602 () Bool)

(assert (= bs!1899602 (and d!2240334 d!2240278)))

(assert (=> bs!1899602 (= lambda!437905 lambda!437897)))

(declare-fun bs!1899603 () Bool)

(assert (= bs!1899603 (and d!2240334 d!2240262)))

(assert (=> bs!1899603 (= lambda!437905 lambda!437895)))

(declare-fun b!7191758 () Bool)

(declare-fun e!4318738 () Regex!18363)

(assert (=> b!7191758 (= e!4318738 EmptyLang!18363)))

(declare-fun b!7191759 () Bool)

(declare-fun e!4318739 () Bool)

(declare-fun lt!2571270 () Regex!18363)

(assert (=> b!7191759 (= e!4318739 (isEmptyLang!2158 lt!2571270))))

(declare-fun b!7191760 () Bool)

(declare-fun e!4318737 () Regex!18363)

(assert (=> b!7191760 (= e!4318737 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(declare-fun b!7191761 () Bool)

(declare-fun e!4318736 () Bool)

(assert (=> b!7191761 (= e!4318736 e!4318739)))

(declare-fun c!1338653 () Bool)

(assert (=> b!7191761 (= c!1338653 (isEmpty!40230 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(declare-fun b!7191762 () Bool)

(declare-fun e!4318741 () Bool)

(assert (=> b!7191762 (= e!4318741 (isUnion!1586 lt!2571270))))

(declare-fun b!7191763 () Bool)

(declare-fun e!4318740 () Bool)

(assert (=> b!7191763 (= e!4318740 (isEmpty!40230 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(declare-fun b!7191764 () Bool)

(assert (=> b!7191764 (= e!4318738 (Union!18363 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))) (generalisedUnion!2780 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))))

(declare-fun b!7191765 () Bool)

(assert (=> b!7191765 (= e!4318739 e!4318741)))

(declare-fun c!1338655 () Bool)

(assert (=> b!7191765 (= c!1338655 (isEmpty!40230 (tail!14082 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(declare-fun b!7191766 () Bool)

(assert (=> b!7191766 (= e!4318737 e!4318738)))

(declare-fun c!1338654 () Bool)

(assert (=> b!7191766 (= c!1338654 ((_ is Cons!69693) (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (=> d!2240334 e!4318736))

(declare-fun res!2928099 () Bool)

(assert (=> d!2240334 (=> (not res!2928099) (not e!4318736))))

(assert (=> d!2240334 (= res!2928099 (validRegex!9478 lt!2571270))))

(assert (=> d!2240334 (= lt!2571270 e!4318737)))

(declare-fun c!1338652 () Bool)

(assert (=> d!2240334 (= c!1338652 e!4318740)))

(declare-fun res!2928098 () Bool)

(assert (=> d!2240334 (=> (not res!2928098) (not e!4318740))))

(assert (=> d!2240334 (= res!2928098 ((_ is Cons!69693) (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (=> d!2240334 (forall!17191 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))) lambda!437905)))

(assert (=> d!2240334 (= (generalisedUnion!2780 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))) lt!2571270)))

(declare-fun b!7191767 () Bool)

(assert (=> b!7191767 (= e!4318741 (= lt!2571270 (head!14689 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(assert (= (and d!2240334 res!2928098) b!7191763))

(assert (= (and d!2240334 c!1338652) b!7191760))

(assert (= (and d!2240334 (not c!1338652)) b!7191766))

(assert (= (and b!7191766 c!1338654) b!7191764))

(assert (= (and b!7191766 (not c!1338654)) b!7191758))

(assert (= (and d!2240334 res!2928099) b!7191761))

(assert (= (and b!7191761 c!1338653) b!7191759))

(assert (= (and b!7191761 (not c!1338653)) b!7191765))

(assert (= (and b!7191765 c!1338655) b!7191767))

(assert (= (and b!7191765 (not c!1338655)) b!7191762))

(declare-fun m!7886848 () Bool)

(assert (=> b!7191764 m!7886848))

(declare-fun m!7886850 () Bool)

(assert (=> b!7191763 m!7886850))

(declare-fun m!7886854 () Bool)

(assert (=> b!7191762 m!7886854))

(declare-fun m!7886856 () Bool)

(assert (=> b!7191759 m!7886856))

(assert (=> b!7191761 m!7886464))

(declare-fun m!7886858 () Bool)

(assert (=> b!7191767 m!7886858))

(declare-fun m!7886860 () Bool)

(assert (=> d!2240334 m!7886860))

(declare-fun m!7886862 () Bool)

(assert (=> d!2240334 m!7886862))

(declare-fun m!7886864 () Bool)

(assert (=> b!7191765 m!7886864))

(assert (=> b!7191765 m!7886864))

(declare-fun m!7886866 () Bool)

(assert (=> b!7191765 m!7886866))

(assert (=> b!7191411 d!2240334))

(declare-fun d!2240342 () Bool)

(assert (=> d!2240342 (= (isUnion!1586 lt!2571256) ((_ is Union!18363) lt!2571256))))

(assert (=> b!7191409 d!2240342))

(declare-fun d!2240344 () Bool)

(assert (=> d!2240344 (= (nullable!7785 (reg!18692 lt!2571228)) (nullableFct!3046 (reg!18692 lt!2571228)))))

(declare-fun bs!1899605 () Bool)

(assert (= bs!1899605 d!2240344))

(declare-fun m!7886868 () Bool)

(assert (=> bs!1899605 m!7886868))

(assert (=> b!7191381 d!2240344))

(declare-fun d!2240346 () Bool)

(declare-fun lt!2571273 () Bool)

(assert (=> d!2240346 (= lt!2571273 (select (content!14325 (t!383842 lt!2571231)) (h!76143 lt!2571231)))))

(declare-fun e!4318759 () Bool)

(assert (=> d!2240346 (= lt!2571273 e!4318759)))

(declare-fun res!2928112 () Bool)

(assert (=> d!2240346 (=> (not res!2928112) (not e!4318759))))

(assert (=> d!2240346 (= res!2928112 ((_ is Cons!69695) (t!383842 lt!2571231)))))

(assert (=> d!2240346 (= (contains!20725 (t!383842 lt!2571231) (h!76143 lt!2571231)) lt!2571273)))

(declare-fun b!7191791 () Bool)

(declare-fun e!4318760 () Bool)

(assert (=> b!7191791 (= e!4318759 e!4318760)))

(declare-fun res!2928111 () Bool)

(assert (=> b!7191791 (=> res!2928111 e!4318760)))

(assert (=> b!7191791 (= res!2928111 (= (h!76143 (t!383842 lt!2571231)) (h!76143 lt!2571231)))))

(declare-fun b!7191792 () Bool)

(assert (=> b!7191792 (= e!4318760 (contains!20725 (t!383842 (t!383842 lt!2571231)) (h!76143 lt!2571231)))))

(assert (= (and d!2240346 res!2928112) b!7191791))

(assert (= (and b!7191791 (not res!2928111)) b!7191792))

(assert (=> d!2240346 m!7886548))

(declare-fun m!7886882 () Bool)

(assert (=> d!2240346 m!7886882))

(declare-fun m!7886884 () Bool)

(assert (=> b!7191792 m!7886884))

(assert (=> b!7191452 d!2240346))

(declare-fun bm!655727 () Bool)

(declare-fun call!655735 () (InoxSet Context!14630))

(declare-fun call!655734 () (InoxSet Context!14630))

(assert (=> bm!655727 (= call!655735 call!655734)))

(declare-fun c!1338665 () Bool)

(declare-fun d!2240352 () Bool)

(assert (=> d!2240352 (= c!1338665 (and ((_ is ElementMatch!18363) (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (= (c!1338487 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) lt!2571215)))))

(declare-fun e!4318762 () (InoxSet Context!14630))

(assert (=> d!2240352 (= (derivationStepZipperDown!2516 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))) (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) lt!2571215) e!4318762)))

(declare-fun b!7191793 () Bool)

(declare-fun e!4318764 () (InoxSet Context!14630))

(declare-fun call!655732 () (InoxSet Context!14630))

(assert (=> b!7191793 (= e!4318764 ((_ map or) call!655732 call!655735))))

(declare-fun b!7191794 () Bool)

(declare-fun e!4318766 () (InoxSet Context!14630))

(declare-fun call!655736 () (InoxSet Context!14630))

(assert (=> b!7191794 (= e!4318766 call!655736)))

(declare-fun bm!655728 () Bool)

(declare-fun call!655737 () List!69817)

(declare-fun call!655733 () List!69817)

(assert (=> bm!655728 (= call!655737 call!655733)))

(declare-fun b!7191795 () Bool)

(assert (=> b!7191795 (= e!4318762 (store ((as const (Array Context!14630 Bool)) false) (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) true))))

(declare-fun c!1338664 () Bool)

(declare-fun b!7191796 () Bool)

(assert (=> b!7191796 (= c!1338664 ((_ is Star!18363) (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))

(declare-fun e!4318763 () (InoxSet Context!14630))

(assert (=> b!7191796 (= e!4318763 e!4318766)))

(declare-fun b!7191797 () Bool)

(declare-fun c!1338663 () Bool)

(declare-fun e!4318761 () Bool)

(assert (=> b!7191797 (= c!1338663 e!4318761)))

(declare-fun res!2928113 () Bool)

(assert (=> b!7191797 (=> (not res!2928113) (not e!4318761))))

(assert (=> b!7191797 (= res!2928113 ((_ is Concat!27208) (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))

(declare-fun e!4318765 () (InoxSet Context!14630))

(assert (=> b!7191797 (= e!4318765 e!4318764)))

(declare-fun b!7191798 () Bool)

(assert (=> b!7191798 (= e!4318762 e!4318765)))

(declare-fun c!1338666 () Bool)

(assert (=> b!7191798 (= c!1338666 ((_ is Union!18363) (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))

(declare-fun b!7191799 () Bool)

(assert (=> b!7191799 (= e!4318764 e!4318763)))

(declare-fun c!1338662 () Bool)

(assert (=> b!7191799 (= c!1338662 ((_ is Concat!27208) (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))

(declare-fun bm!655729 () Bool)

(assert (=> bm!655729 (= call!655732 (derivationStepZipperDown!2516 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))) (ite c!1338666 (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655733)) lt!2571215))))

(declare-fun bm!655730 () Bool)

(assert (=> bm!655730 (= call!655734 (derivationStepZipperDown!2516 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))) (ite (or c!1338666 c!1338663) (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655737)) lt!2571215))))

(declare-fun b!7191800 () Bool)

(assert (=> b!7191800 (= e!4318763 call!655736)))

(declare-fun bm!655731 () Bool)

(assert (=> bm!655731 (= call!655736 call!655735)))

(declare-fun b!7191801 () Bool)

(assert (=> b!7191801 (= e!4318766 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191802 () Bool)

(assert (=> b!7191802 (= e!4318765 ((_ map or) call!655732 call!655734))))

(declare-fun b!7191803 () Bool)

(assert (=> b!7191803 (= e!4318761 (nullable!7785 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))

(declare-fun bm!655732 () Bool)

(assert (=> bm!655732 (= call!655733 ($colon$colon!2846 (exprs!7815 (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672))) (ite (or c!1338663 c!1338662) (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))

(assert (= (and d!2240352 c!1338665) b!7191795))

(assert (= (and d!2240352 (not c!1338665)) b!7191798))

(assert (= (and b!7191798 c!1338666) b!7191802))

(assert (= (and b!7191798 (not c!1338666)) b!7191797))

(assert (= (and b!7191797 res!2928113) b!7191803))

(assert (= (and b!7191797 c!1338663) b!7191793))

(assert (= (and b!7191797 (not c!1338663)) b!7191799))

(assert (= (and b!7191799 c!1338662) b!7191800))

(assert (= (and b!7191799 (not c!1338662)) b!7191796))

(assert (= (and b!7191796 c!1338664) b!7191794))

(assert (= (and b!7191796 (not c!1338664)) b!7191801))

(assert (= (or b!7191800 b!7191794) bm!655728))

(assert (= (or b!7191800 b!7191794) bm!655731))

(assert (= (or b!7191793 bm!655731) bm!655727))

(assert (= (or b!7191793 bm!655728) bm!655732))

(assert (= (or b!7191802 bm!655727) bm!655730))

(assert (= (or b!7191802 b!7191793) bm!655729))

(declare-fun m!7886886 () Bool)

(assert (=> bm!655732 m!7886886))

(declare-fun m!7886888 () Bool)

(assert (=> bm!655729 m!7886888))

(declare-fun m!7886890 () Bool)

(assert (=> b!7191795 m!7886890))

(declare-fun m!7886892 () Bool)

(assert (=> b!7191803 m!7886892))

(declare-fun m!7886894 () Bool)

(assert (=> bm!655730 m!7886894))

(assert (=> bm!655665 d!2240352))

(declare-fun d!2240354 () Bool)

(declare-fun lt!2571274 () Bool)

(assert (=> d!2240354 (= lt!2571274 (select (content!14325 (t!383842 lt!2571244)) (h!76143 lt!2571244)))))

(declare-fun e!4318767 () Bool)

(assert (=> d!2240354 (= lt!2571274 e!4318767)))

(declare-fun res!2928115 () Bool)

(assert (=> d!2240354 (=> (not res!2928115) (not e!4318767))))

(assert (=> d!2240354 (= res!2928115 ((_ is Cons!69695) (t!383842 lt!2571244)))))

(assert (=> d!2240354 (= (contains!20725 (t!383842 lt!2571244) (h!76143 lt!2571244)) lt!2571274)))

(declare-fun b!7191804 () Bool)

(declare-fun e!4318768 () Bool)

(assert (=> b!7191804 (= e!4318767 e!4318768)))

(declare-fun res!2928114 () Bool)

(assert (=> b!7191804 (=> res!2928114 e!4318768)))

(assert (=> b!7191804 (= res!2928114 (= (h!76143 (t!383842 lt!2571244)) (h!76143 lt!2571244)))))

(declare-fun b!7191805 () Bool)

(assert (=> b!7191805 (= e!4318768 (contains!20725 (t!383842 (t!383842 lt!2571244)) (h!76143 lt!2571244)))))

(assert (= (and d!2240354 res!2928115) b!7191804))

(assert (= (and b!7191804 (not res!2928114)) b!7191805))

(assert (=> d!2240354 m!7886494))

(declare-fun m!7886896 () Bool)

(assert (=> d!2240354 m!7886896))

(declare-fun m!7886898 () Bool)

(assert (=> b!7191805 m!7886898))

(assert (=> b!7191441 d!2240354))

(declare-fun b!7191840 () Bool)

(declare-fun e!4318795 () Bool)

(declare-fun e!4318796 () Bool)

(assert (=> b!7191840 (= e!4318795 e!4318796)))

(declare-fun res!2928133 () Bool)

(assert (=> b!7191840 (=> res!2928133 e!4318796)))

(assert (=> b!7191840 (= res!2928133 ((_ is Star!18363) (h!76141 (exprs!7815 lt!2571217))))))

(declare-fun b!7191841 () Bool)

(declare-fun e!4318794 () Bool)

(declare-fun call!655742 () Bool)

(assert (=> b!7191841 (= e!4318794 call!655742)))

(declare-fun d!2240356 () Bool)

(declare-fun res!2928132 () Bool)

(declare-fun e!4318798 () Bool)

(assert (=> d!2240356 (=> res!2928132 e!4318798)))

(assert (=> d!2240356 (= res!2928132 ((_ is EmptyExpr!18363) (h!76141 (exprs!7815 lt!2571217))))))

(assert (=> d!2240356 (= (nullableFct!3046 (h!76141 (exprs!7815 lt!2571217))) e!4318798)))

(declare-fun bm!655737 () Bool)

(declare-fun c!1338677 () Bool)

(assert (=> bm!655737 (= call!655742 (nullable!7785 (ite c!1338677 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))))))))

(declare-fun b!7191842 () Bool)

(assert (=> b!7191842 (= e!4318798 e!4318795)))

(declare-fun res!2928130 () Bool)

(assert (=> b!7191842 (=> (not res!2928130) (not e!4318795))))

(assert (=> b!7191842 (= res!2928130 (and (not ((_ is EmptyLang!18363) (h!76141 (exprs!7815 lt!2571217)))) (not ((_ is ElementMatch!18363) (h!76141 (exprs!7815 lt!2571217))))))))

(declare-fun b!7191843 () Bool)

(declare-fun e!4318793 () Bool)

(assert (=> b!7191843 (= e!4318796 e!4318793)))

(assert (=> b!7191843 (= c!1338677 ((_ is Union!18363) (h!76141 (exprs!7815 lt!2571217))))))

(declare-fun b!7191844 () Bool)

(assert (=> b!7191844 (= e!4318793 e!4318794)))

(declare-fun res!2928131 () Bool)

(declare-fun call!655743 () Bool)

(assert (=> b!7191844 (= res!2928131 call!655743)))

(assert (=> b!7191844 (=> res!2928131 e!4318794)))

(declare-fun b!7191845 () Bool)

(declare-fun e!4318797 () Bool)

(assert (=> b!7191845 (= e!4318797 call!655742)))

(declare-fun b!7191846 () Bool)

(assert (=> b!7191846 (= e!4318793 e!4318797)))

(declare-fun res!2928134 () Bool)

(assert (=> b!7191846 (= res!2928134 call!655743)))

(assert (=> b!7191846 (=> (not res!2928134) (not e!4318797))))

(declare-fun bm!655738 () Bool)

(assert (=> bm!655738 (= call!655743 (nullable!7785 (ite c!1338677 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))

(assert (= (and d!2240356 (not res!2928132)) b!7191842))

(assert (= (and b!7191842 res!2928130) b!7191840))

(assert (= (and b!7191840 (not res!2928133)) b!7191843))

(assert (= (and b!7191843 c!1338677) b!7191844))

(assert (= (and b!7191843 (not c!1338677)) b!7191846))

(assert (= (and b!7191844 (not res!2928131)) b!7191841))

(assert (= (and b!7191846 res!2928134) b!7191845))

(assert (= (or b!7191844 b!7191846) bm!655738))

(assert (= (or b!7191841 b!7191845) bm!655737))

(declare-fun m!7886900 () Bool)

(assert (=> bm!655737 m!7886900))

(declare-fun m!7886902 () Bool)

(assert (=> bm!655738 m!7886902))

(assert (=> d!2240152 d!2240356))

(declare-fun d!2240358 () Bool)

(declare-fun c!1338682 () Bool)

(assert (=> d!2240358 (= c!1338682 ((_ is Nil!69695) res!2927981))))

(declare-fun e!4318805 () (InoxSet Context!14630))

(assert (=> d!2240358 (= (content!14325 res!2927981) e!4318805)))

(declare-fun b!7191857 () Bool)

(assert (=> b!7191857 (= e!4318805 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191858 () Bool)

(assert (=> b!7191858 (= e!4318805 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 res!2927981) true) (content!14325 (t!383842 res!2927981))))))

(assert (= (and d!2240358 c!1338682) b!7191857))

(assert (= (and d!2240358 (not c!1338682)) b!7191858))

(declare-fun m!7886904 () Bool)

(assert (=> b!7191858 m!7886904))

(declare-fun m!7886906 () Bool)

(assert (=> b!7191858 m!7886906))

(assert (=> b!7191451 d!2240358))

(declare-fun bs!1899624 () Bool)

(declare-fun d!2240360 () Bool)

(assert (= bs!1899624 (and d!2240360 d!2240146)))

(declare-fun lambda!437910 () Int)

(assert (=> bs!1899624 (= lambda!437910 lambda!437881)))

(declare-fun bs!1899625 () Bool)

(assert (= bs!1899625 (and d!2240360 d!2240296)))

(assert (=> bs!1899625 (= lambda!437910 lambda!437903)))

(declare-fun bs!1899626 () Bool)

(assert (= bs!1899626 (and d!2240360 d!2240284)))

(assert (=> bs!1899626 (= lambda!437910 lambda!437902)))

(declare-fun bs!1899627 () Bool)

(assert (= bs!1899627 (and d!2240360 d!2240088)))

(assert (=> bs!1899627 (= lambda!437910 lambda!437865)))

(declare-fun bs!1899628 () Bool)

(assert (= bs!1899628 (and d!2240360 d!2240310)))

(assert (=> bs!1899628 (= lambda!437910 lambda!437904)))

(declare-fun bs!1899629 () Bool)

(assert (= bs!1899629 (and d!2240360 d!2240078)))

(assert (=> bs!1899629 (= lambda!437910 lambda!437864)))

(declare-fun bs!1899630 () Bool)

(assert (= bs!1899630 (and d!2240360 d!2240148)))

(assert (=> bs!1899630 (= lambda!437910 lambda!437884)))

(declare-fun bs!1899631 () Bool)

(assert (= bs!1899631 (and d!2240360 d!2240334)))

(assert (=> bs!1899631 (= lambda!437910 lambda!437905)))

(declare-fun bs!1899632 () Bool)

(assert (= bs!1899632 (and d!2240360 d!2240254)))

(assert (=> bs!1899632 (= lambda!437910 lambda!437893)))

(declare-fun bs!1899633 () Bool)

(assert (= bs!1899633 (and d!2240360 d!2240170)))

(assert (=> bs!1899633 (= lambda!437910 lambda!437888)))

(declare-fun bs!1899634 () Bool)

(assert (= bs!1899634 (and d!2240360 d!2240278)))

(assert (=> bs!1899634 (= lambda!437910 lambda!437897)))

(declare-fun bs!1899635 () Bool)

(assert (= bs!1899635 (and d!2240360 d!2240262)))

(assert (=> bs!1899635 (= lambda!437910 lambda!437895)))

(assert (=> d!2240360 (= (inv!88929 (h!76143 res!2927981)) (forall!17191 (exprs!7815 (h!76143 res!2927981)) lambda!437910))))

(declare-fun bs!1899636 () Bool)

(assert (= bs!1899636 d!2240360))

(declare-fun m!7886920 () Bool)

(assert (=> bs!1899636 m!7886920))

(assert (=> b!7191449 d!2240360))

(declare-fun d!2240362 () Bool)

(declare-fun res!2928137 () Bool)

(declare-fun e!4318806 () Bool)

(assert (=> d!2240362 (=> res!2928137 e!4318806)))

(assert (=> d!2240362 (= res!2928137 ((_ is Nil!69695) lt!2571261))))

(assert (=> d!2240362 (= (noDuplicate!2896 lt!2571261) e!4318806)))

(declare-fun b!7191859 () Bool)

(declare-fun e!4318807 () Bool)

(assert (=> b!7191859 (= e!4318806 e!4318807)))

(declare-fun res!2928138 () Bool)

(assert (=> b!7191859 (=> (not res!2928138) (not e!4318807))))

(assert (=> b!7191859 (= res!2928138 (not (contains!20725 (t!383842 lt!2571261) (h!76143 lt!2571261))))))

(declare-fun b!7191860 () Bool)

(assert (=> b!7191860 (= e!4318807 (noDuplicate!2896 (t!383842 lt!2571261)))))

(assert (= (and d!2240362 (not res!2928137)) b!7191859))

(assert (= (and b!7191859 res!2928138) b!7191860))

(declare-fun m!7886930 () Bool)

(assert (=> b!7191859 m!7886930))

(declare-fun m!7886932 () Bool)

(assert (=> b!7191860 m!7886932))

(assert (=> d!2240180 d!2240362))

(declare-fun d!2240366 () Bool)

(declare-fun e!4318818 () Bool)

(assert (=> d!2240366 e!4318818))

(declare-fun res!2928145 () Bool)

(assert (=> d!2240366 (=> (not res!2928145) (not e!4318818))))

(declare-fun res!2928144 () List!69819)

(assert (=> d!2240366 (= res!2928145 (noDuplicate!2896 res!2928144))))

(declare-fun e!4318816 () Bool)

(assert (=> d!2240366 e!4318816))

(assert (=> d!2240366 (= (choose!55411 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)) res!2928144)))

(declare-fun b!7191873 () Bool)

(declare-fun e!4318817 () Bool)

(declare-fun tp!1998563 () Bool)

(assert (=> b!7191873 (= e!4318817 tp!1998563)))

(declare-fun tp!1998562 () Bool)

(declare-fun b!7191872 () Bool)

(assert (=> b!7191872 (= e!4318816 (and (inv!88929 (h!76143 res!2928144)) e!4318817 tp!1998562))))

(declare-fun b!7191874 () Bool)

(assert (=> b!7191874 (= e!4318818 (= (content!14325 res!2928144) (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))

(assert (= b!7191872 b!7191873))

(assert (= (and d!2240366 ((_ is Cons!69695) res!2928144)) b!7191872))

(assert (= (and d!2240366 res!2928145) b!7191874))

(declare-fun m!7886940 () Bool)

(assert (=> d!2240366 m!7886940))

(declare-fun m!7886942 () Bool)

(assert (=> b!7191872 m!7886942))

(declare-fun m!7886944 () Bool)

(assert (=> b!7191874 m!7886944))

(assert (=> d!2240180 d!2240366))

(declare-fun d!2240370 () Bool)

(declare-fun c!1338686 () Bool)

(assert (=> d!2240370 (= c!1338686 ((_ is Nil!69695) (t!383842 lt!2571231)))))

(declare-fun e!4318819 () (InoxSet Context!14630))

(assert (=> d!2240370 (= (content!14325 (t!383842 lt!2571231)) e!4318819)))

(declare-fun b!7191875 () Bool)

(assert (=> b!7191875 (= e!4318819 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7191876 () Bool)

(assert (=> b!7191876 (= e!4318819 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 (t!383842 lt!2571231)) true) (content!14325 (t!383842 (t!383842 lt!2571231)))))))

(assert (= (and d!2240370 c!1338686) b!7191875))

(assert (= (and d!2240370 (not c!1338686)) b!7191876))

(declare-fun m!7886950 () Bool)

(assert (=> b!7191876 m!7886950))

(declare-fun m!7886954 () Bool)

(assert (=> b!7191876 m!7886954))

(assert (=> b!7191464 d!2240370))

(declare-fun b!7191877 () Bool)

(declare-fun e!4318821 () Bool)

(declare-fun call!655748 () Bool)

(assert (=> b!7191877 (= e!4318821 call!655748)))

(declare-fun b!7191878 () Bool)

(declare-fun e!4318826 () Bool)

(declare-fun e!4318825 () Bool)

(assert (=> b!7191878 (= e!4318826 e!4318825)))

(declare-fun c!1338687 () Bool)

(assert (=> b!7191878 (= c!1338687 ((_ is Union!18363) lt!2571256))))

(declare-fun b!7191879 () Bool)

(declare-fun res!2928148 () Bool)

(declare-fun e!4318822 () Bool)

(assert (=> b!7191879 (=> res!2928148 e!4318822)))

(assert (=> b!7191879 (= res!2928148 (not ((_ is Concat!27208) lt!2571256)))))

(assert (=> b!7191879 (= e!4318825 e!4318822)))

(declare-fun b!7191880 () Bool)

(declare-fun res!2928147 () Bool)

(declare-fun e!4318820 () Bool)

(assert (=> b!7191880 (=> (not res!2928147) (not e!4318820))))

(declare-fun call!655747 () Bool)

(assert (=> b!7191880 (= res!2928147 call!655747)))

(assert (=> b!7191880 (= e!4318825 e!4318820)))

(declare-fun b!7191881 () Bool)

(assert (=> b!7191881 (= e!4318822 e!4318821)))

(declare-fun res!2928150 () Bool)

(assert (=> b!7191881 (=> (not res!2928150) (not e!4318821))))

(assert (=> b!7191881 (= res!2928150 call!655747)))

(declare-fun b!7191882 () Bool)

(declare-fun e!4318824 () Bool)

(assert (=> b!7191882 (= e!4318826 e!4318824)))

(declare-fun res!2928146 () Bool)

(assert (=> b!7191882 (= res!2928146 (not (nullable!7785 (reg!18692 lt!2571256))))))

(assert (=> b!7191882 (=> (not res!2928146) (not e!4318824))))

(declare-fun b!7191883 () Bool)

(assert (=> b!7191883 (= e!4318820 call!655748)))

(declare-fun d!2240372 () Bool)

(declare-fun res!2928149 () Bool)

(declare-fun e!4318823 () Bool)

(assert (=> d!2240372 (=> res!2928149 e!4318823)))

(assert (=> d!2240372 (= res!2928149 ((_ is ElementMatch!18363) lt!2571256))))

(assert (=> d!2240372 (= (validRegex!9478 lt!2571256) e!4318823)))

(declare-fun call!655749 () Bool)

(declare-fun c!1338688 () Bool)

(declare-fun bm!655742 () Bool)

(assert (=> bm!655742 (= call!655749 (validRegex!9478 (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))))))

(declare-fun bm!655743 () Bool)

(assert (=> bm!655743 (= call!655747 (validRegex!9478 (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))))))

(declare-fun bm!655744 () Bool)

(assert (=> bm!655744 (= call!655748 call!655749)))

(declare-fun b!7191884 () Bool)

(assert (=> b!7191884 (= e!4318823 e!4318826)))

(assert (=> b!7191884 (= c!1338688 ((_ is Star!18363) lt!2571256))))

(declare-fun b!7191885 () Bool)

(assert (=> b!7191885 (= e!4318824 call!655749)))

(assert (= (and d!2240372 (not res!2928149)) b!7191884))

(assert (= (and b!7191884 c!1338688) b!7191882))

(assert (= (and b!7191884 (not c!1338688)) b!7191878))

(assert (= (and b!7191882 res!2928146) b!7191885))

(assert (= (and b!7191878 c!1338687) b!7191880))

(assert (= (and b!7191878 (not c!1338687)) b!7191879))

(assert (= (and b!7191880 res!2928147) b!7191883))

(assert (= (and b!7191879 (not res!2928148)) b!7191881))

(assert (= (and b!7191881 res!2928150) b!7191877))

(assert (= (or b!7191880 b!7191881) bm!655743))

(assert (= (or b!7191883 b!7191877) bm!655744))

(assert (= (or b!7191885 bm!655744) bm!655742))

(declare-fun m!7886960 () Bool)

(assert (=> b!7191882 m!7886960))

(declare-fun m!7886962 () Bool)

(assert (=> bm!655742 m!7886962))

(declare-fun m!7886964 () Bool)

(assert (=> bm!655743 m!7886964))

(assert (=> d!2240146 d!2240372))

(declare-fun d!2240378 () Bool)

(declare-fun res!2928153 () Bool)

(declare-fun e!4318829 () Bool)

(assert (=> d!2240378 (=> res!2928153 e!4318829)))

(assert (=> d!2240378 (= res!2928153 ((_ is Nil!69693) (unfocusZipperList!2336 (toList!11306 z!3530))))))

(assert (=> d!2240378 (= (forall!17191 (unfocusZipperList!2336 (toList!11306 z!3530)) lambda!437881) e!4318829)))

(declare-fun b!7191888 () Bool)

(declare-fun e!4318830 () Bool)

(assert (=> b!7191888 (= e!4318829 e!4318830)))

(declare-fun res!2928154 () Bool)

(assert (=> b!7191888 (=> (not res!2928154) (not e!4318830))))

(assert (=> b!7191888 (= res!2928154 (dynLambda!28388 lambda!437881 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(declare-fun b!7191889 () Bool)

(assert (=> b!7191889 (= e!4318830 (forall!17191 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))) lambda!437881))))

(assert (= (and d!2240378 (not res!2928153)) b!7191888))

(assert (= (and b!7191888 res!2928154) b!7191889))

(declare-fun b_lambda!275603 () Bool)

(assert (=> (not b_lambda!275603) (not b!7191888)))

(declare-fun m!7886970 () Bool)

(assert (=> b!7191888 m!7886970))

(declare-fun m!7886972 () Bool)

(assert (=> b!7191889 m!7886972))

(assert (=> d!2240146 d!2240378))

(declare-fun d!2240382 () Bool)

(declare-fun res!2928155 () Bool)

(declare-fun e!4318831 () Bool)

(assert (=> d!2240382 (=> res!2928155 e!4318831)))

(assert (=> d!2240382 (= res!2928155 ((_ is Nil!69693) (exprs!7815 setElem!53251)))))

(assert (=> d!2240382 (= (forall!17191 (exprs!7815 setElem!53251) lambda!437888) e!4318831)))

(declare-fun b!7191890 () Bool)

(declare-fun e!4318832 () Bool)

(assert (=> b!7191890 (= e!4318831 e!4318832)))

(declare-fun res!2928156 () Bool)

(assert (=> b!7191890 (=> (not res!2928156) (not e!4318832))))

(assert (=> b!7191890 (= res!2928156 (dynLambda!28388 lambda!437888 (h!76141 (exprs!7815 setElem!53251))))))

(declare-fun b!7191891 () Bool)

(assert (=> b!7191891 (= e!4318832 (forall!17191 (t!383840 (exprs!7815 setElem!53251)) lambda!437888))))

(assert (= (and d!2240382 (not res!2928155)) b!7191890))

(assert (= (and b!7191890 res!2928156) b!7191891))

(declare-fun b_lambda!275605 () Bool)

(assert (=> (not b_lambda!275605) (not b!7191890)))

(declare-fun m!7886974 () Bool)

(assert (=> b!7191890 m!7886974))

(declare-fun m!7886976 () Bool)

(assert (=> b!7191891 m!7886976))

(assert (=> d!2240170 d!2240382))

(declare-fun d!2240384 () Bool)

(assert (=> d!2240384 (= ($colon$colon!2846 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))) (ite (or c!1338584 c!1338583) (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (h!76141 (exprs!7815 lt!2571217)))) (Cons!69693 (ite (or c!1338584 c!1338583) (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (h!76141 (exprs!7815 lt!2571217))) (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))

(assert (=> bm!655667 d!2240384))

(declare-fun d!2240388 () Bool)

(declare-fun res!2928159 () Bool)

(declare-fun e!4318839 () Bool)

(assert (=> d!2240388 (=> res!2928159 e!4318839)))

(assert (=> d!2240388 (= res!2928159 ((_ is Nil!69693) (t!383840 (exprs!7815 setElem!53245))))))

(assert (=> d!2240388 (= (forall!17191 (t!383840 (exprs!7815 setElem!53245)) lambda!437865) e!4318839)))

(declare-fun b!7191902 () Bool)

(declare-fun e!4318840 () Bool)

(assert (=> b!7191902 (= e!4318839 e!4318840)))

(declare-fun res!2928160 () Bool)

(assert (=> b!7191902 (=> (not res!2928160) (not e!4318840))))

(assert (=> b!7191902 (= res!2928160 (dynLambda!28388 lambda!437865 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))))

(declare-fun b!7191903 () Bool)

(assert (=> b!7191903 (= e!4318840 (forall!17191 (t!383840 (t!383840 (exprs!7815 setElem!53245))) lambda!437865))))

(assert (= (and d!2240388 (not res!2928159)) b!7191902))

(assert (= (and b!7191902 res!2928160) b!7191903))

(declare-fun b_lambda!275607 () Bool)

(assert (=> (not b_lambda!275607) (not b!7191902)))

(declare-fun m!7886980 () Bool)

(assert (=> b!7191902 m!7886980))

(declare-fun m!7886982 () Bool)

(assert (=> b!7191903 m!7886982))

(assert (=> b!7191434 d!2240388))

(declare-fun b!7191904 () Bool)

(declare-fun e!4318842 () Bool)

(declare-fun call!655751 () Bool)

(assert (=> b!7191904 (= e!4318842 call!655751)))

(declare-fun b!7191905 () Bool)

(declare-fun e!4318847 () Bool)

(declare-fun e!4318846 () Bool)

(assert (=> b!7191905 (= e!4318847 e!4318846)))

(declare-fun c!1338693 () Bool)

(assert (=> b!7191905 (= c!1338693 ((_ is Union!18363) lt!2571260))))

(declare-fun b!7191906 () Bool)

(declare-fun res!2928163 () Bool)

(declare-fun e!4318843 () Bool)

(assert (=> b!7191906 (=> res!2928163 e!4318843)))

(assert (=> b!7191906 (= res!2928163 (not ((_ is Concat!27208) lt!2571260)))))

(assert (=> b!7191906 (= e!4318846 e!4318843)))

(declare-fun b!7191907 () Bool)

(declare-fun res!2928162 () Bool)

(declare-fun e!4318841 () Bool)

(assert (=> b!7191907 (=> (not res!2928162) (not e!4318841))))

(declare-fun call!655750 () Bool)

(assert (=> b!7191907 (= res!2928162 call!655750)))

(assert (=> b!7191907 (= e!4318846 e!4318841)))

(declare-fun b!7191908 () Bool)

(assert (=> b!7191908 (= e!4318843 e!4318842)))

(declare-fun res!2928165 () Bool)

(assert (=> b!7191908 (=> (not res!2928165) (not e!4318842))))

(assert (=> b!7191908 (= res!2928165 call!655750)))

(declare-fun b!7191909 () Bool)

(declare-fun e!4318845 () Bool)

(assert (=> b!7191909 (= e!4318847 e!4318845)))

(declare-fun res!2928161 () Bool)

(assert (=> b!7191909 (= res!2928161 (not (nullable!7785 (reg!18692 lt!2571260))))))

(assert (=> b!7191909 (=> (not res!2928161) (not e!4318845))))

(declare-fun b!7191910 () Bool)

(assert (=> b!7191910 (= e!4318841 call!655751)))

(declare-fun d!2240390 () Bool)

(declare-fun res!2928164 () Bool)

(declare-fun e!4318844 () Bool)

(assert (=> d!2240390 (=> res!2928164 e!4318844)))

(assert (=> d!2240390 (= res!2928164 ((_ is ElementMatch!18363) lt!2571260))))

(assert (=> d!2240390 (= (validRegex!9478 lt!2571260) e!4318844)))

(declare-fun call!655752 () Bool)

(declare-fun bm!655745 () Bool)

(declare-fun c!1338694 () Bool)

(assert (=> bm!655745 (= call!655752 (validRegex!9478 (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))))))

(declare-fun bm!655746 () Bool)

(assert (=> bm!655746 (= call!655750 (validRegex!9478 (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))))))

(declare-fun bm!655747 () Bool)

(assert (=> bm!655747 (= call!655751 call!655752)))

(declare-fun b!7191911 () Bool)

(assert (=> b!7191911 (= e!4318844 e!4318847)))

(assert (=> b!7191911 (= c!1338694 ((_ is Star!18363) lt!2571260))))

(declare-fun b!7191912 () Bool)

(assert (=> b!7191912 (= e!4318845 call!655752)))

(assert (= (and d!2240390 (not res!2928164)) b!7191911))

(assert (= (and b!7191911 c!1338694) b!7191909))

(assert (= (and b!7191911 (not c!1338694)) b!7191905))

(assert (= (and b!7191909 res!2928161) b!7191912))

(assert (= (and b!7191905 c!1338693) b!7191907))

(assert (= (and b!7191905 (not c!1338693)) b!7191906))

(assert (= (and b!7191907 res!2928162) b!7191910))

(assert (= (and b!7191906 (not res!2928163)) b!7191908))

(assert (= (and b!7191908 res!2928165) b!7191904))

(assert (= (or b!7191907 b!7191908) bm!655746))

(assert (= (or b!7191910 b!7191904) bm!655747))

(assert (= (or b!7191912 bm!655747) bm!655745))

(declare-fun m!7886984 () Bool)

(assert (=> b!7191909 m!7886984))

(declare-fun m!7886986 () Bool)

(assert (=> bm!655745 m!7886986))

(declare-fun m!7886988 () Bool)

(assert (=> bm!655746 m!7886988))

(assert (=> d!2240178 d!2240390))

(declare-fun bs!1899685 () Bool)

(declare-fun d!2240392 () Bool)

(assert (= bs!1899685 (and d!2240392 d!2240146)))

(declare-fun lambda!437915 () Int)

(assert (=> bs!1899685 (= lambda!437915 lambda!437881)))

(declare-fun bs!1899687 () Bool)

(assert (= bs!1899687 (and d!2240392 d!2240296)))

(assert (=> bs!1899687 (= lambda!437915 lambda!437903)))

(declare-fun bs!1899688 () Bool)

(assert (= bs!1899688 (and d!2240392 d!2240360)))

(assert (=> bs!1899688 (= lambda!437915 lambda!437910)))

(declare-fun bs!1899689 () Bool)

(assert (= bs!1899689 (and d!2240392 d!2240284)))

(assert (=> bs!1899689 (= lambda!437915 lambda!437902)))

(declare-fun bs!1899690 () Bool)

(assert (= bs!1899690 (and d!2240392 d!2240088)))

(assert (=> bs!1899690 (= lambda!437915 lambda!437865)))

(declare-fun bs!1899691 () Bool)

(assert (= bs!1899691 (and d!2240392 d!2240310)))

(assert (=> bs!1899691 (= lambda!437915 lambda!437904)))

(declare-fun bs!1899692 () Bool)

(assert (= bs!1899692 (and d!2240392 d!2240078)))

(assert (=> bs!1899692 (= lambda!437915 lambda!437864)))

(declare-fun bs!1899693 () Bool)

(assert (= bs!1899693 (and d!2240392 d!2240148)))

(assert (=> bs!1899693 (= lambda!437915 lambda!437884)))

(declare-fun bs!1899694 () Bool)

(assert (= bs!1899694 (and d!2240392 d!2240334)))

(assert (=> bs!1899694 (= lambda!437915 lambda!437905)))

(declare-fun bs!1899695 () Bool)

(assert (= bs!1899695 (and d!2240392 d!2240254)))

(assert (=> bs!1899695 (= lambda!437915 lambda!437893)))

(declare-fun bs!1899696 () Bool)

(assert (= bs!1899696 (and d!2240392 d!2240170)))

(assert (=> bs!1899696 (= lambda!437915 lambda!437888)))

(declare-fun bs!1899697 () Bool)

(assert (= bs!1899697 (and d!2240392 d!2240278)))

(assert (=> bs!1899697 (= lambda!437915 lambda!437897)))

(declare-fun bs!1899698 () Bool)

(assert (= bs!1899698 (and d!2240392 d!2240262)))

(assert (=> bs!1899698 (= lambda!437915 lambda!437895)))

(declare-fun b!7191915 () Bool)

(declare-fun e!4318852 () Regex!18363)

(assert (=> b!7191915 (= e!4318852 EmptyLang!18363)))

(declare-fun b!7191916 () Bool)

(declare-fun e!4318853 () Bool)

(declare-fun lt!2571281 () Regex!18363)

(assert (=> b!7191916 (= e!4318853 (isEmptyLang!2158 lt!2571281))))

(declare-fun b!7191917 () Bool)

(declare-fun e!4318851 () Regex!18363)

(assert (=> b!7191917 (= e!4318851 (h!76141 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(declare-fun b!7191918 () Bool)

(declare-fun e!4318850 () Bool)

(assert (=> b!7191918 (= e!4318850 e!4318853)))

(declare-fun c!1338696 () Bool)

(assert (=> b!7191918 (= c!1338696 (isEmpty!40230 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(declare-fun b!7191919 () Bool)

(declare-fun e!4318855 () Bool)

(assert (=> b!7191919 (= e!4318855 (isUnion!1586 lt!2571281))))

(declare-fun b!7191920 () Bool)

(declare-fun e!4318854 () Bool)

(assert (=> b!7191920 (= e!4318854 (isEmpty!40230 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun b!7191921 () Bool)

(assert (=> b!7191921 (= e!4318852 (Union!18363 (h!76141 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))) (generalisedUnion!2780 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))))

(declare-fun b!7191922 () Bool)

(assert (=> b!7191922 (= e!4318853 e!4318855)))

(declare-fun c!1338698 () Bool)

(assert (=> b!7191922 (= c!1338698 (isEmpty!40230 (tail!14082 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun b!7191923 () Bool)

(assert (=> b!7191923 (= e!4318851 e!4318852)))

(declare-fun c!1338697 () Bool)

(assert (=> b!7191923 (= c!1338697 ((_ is Cons!69693) (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(assert (=> d!2240392 e!4318850))

(declare-fun res!2928169 () Bool)

(assert (=> d!2240392 (=> (not res!2928169) (not e!4318850))))

(assert (=> d!2240392 (= res!2928169 (validRegex!9478 lt!2571281))))

(assert (=> d!2240392 (= lt!2571281 e!4318851)))

(declare-fun c!1338695 () Bool)

(assert (=> d!2240392 (= c!1338695 e!4318854)))

(declare-fun res!2928168 () Bool)

(assert (=> d!2240392 (=> (not res!2928168) (not e!4318854))))

(assert (=> d!2240392 (= res!2928168 ((_ is Cons!69693) (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(assert (=> d!2240392 (forall!17191 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))) lambda!437915)))

(assert (=> d!2240392 (= (generalisedUnion!2780 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))) lt!2571281)))

(declare-fun b!7191924 () Bool)

(assert (=> b!7191924 (= e!4318855 (= lt!2571281 (head!14689 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(assert (= (and d!2240392 res!2928168) b!7191920))

(assert (= (and d!2240392 c!1338695) b!7191917))

(assert (= (and d!2240392 (not c!1338695)) b!7191923))

(assert (= (and b!7191923 c!1338697) b!7191921))

(assert (= (and b!7191923 (not c!1338697)) b!7191915))

(assert (= (and d!2240392 res!2928169) b!7191918))

(assert (= (and b!7191918 c!1338696) b!7191916))

(assert (= (and b!7191918 (not c!1338696)) b!7191922))

(assert (= (and b!7191922 c!1338698) b!7191924))

(assert (= (and b!7191922 (not c!1338698)) b!7191919))

(declare-fun m!7887014 () Bool)

(assert (=> b!7191921 m!7887014))

(declare-fun m!7887016 () Bool)

(assert (=> b!7191920 m!7887016))

(declare-fun m!7887018 () Bool)

(assert (=> b!7191919 m!7887018))

(declare-fun m!7887020 () Bool)

(assert (=> b!7191916 m!7887020))

(assert (=> b!7191918 m!7886536))

(declare-fun m!7887022 () Bool)

(assert (=> b!7191918 m!7887022))

(assert (=> b!7191924 m!7886536))

(declare-fun m!7887024 () Bool)

(assert (=> b!7191924 m!7887024))

(declare-fun m!7887026 () Bool)

(assert (=> d!2240392 m!7887026))

(assert (=> d!2240392 m!7886536))

(declare-fun m!7887028 () Bool)

(assert (=> d!2240392 m!7887028))

(assert (=> b!7191922 m!7886536))

(declare-fun m!7887030 () Bool)

(assert (=> b!7191922 m!7887030))

(assert (=> b!7191922 m!7887030))

(declare-fun m!7887032 () Bool)

(assert (=> b!7191922 m!7887032))

(assert (=> d!2240178 d!2240392))

(declare-fun bs!1899699 () Bool)

(declare-fun d!2240400 () Bool)

(assert (= bs!1899699 (and d!2240400 d!2240146)))

(declare-fun lambda!437916 () Int)

(assert (=> bs!1899699 (= lambda!437916 lambda!437881)))

(declare-fun bs!1899700 () Bool)

(assert (= bs!1899700 (and d!2240400 d!2240296)))

(assert (=> bs!1899700 (= lambda!437916 lambda!437903)))

(declare-fun bs!1899701 () Bool)

(assert (= bs!1899701 (and d!2240400 d!2240360)))

(assert (=> bs!1899701 (= lambda!437916 lambda!437910)))

(declare-fun bs!1899702 () Bool)

(assert (= bs!1899702 (and d!2240400 d!2240284)))

(assert (=> bs!1899702 (= lambda!437916 lambda!437902)))

(declare-fun bs!1899703 () Bool)

(assert (= bs!1899703 (and d!2240400 d!2240088)))

(assert (=> bs!1899703 (= lambda!437916 lambda!437865)))

(declare-fun bs!1899704 () Bool)

(assert (= bs!1899704 (and d!2240400 d!2240310)))

(assert (=> bs!1899704 (= lambda!437916 lambda!437904)))

(declare-fun bs!1899705 () Bool)

(assert (= bs!1899705 (and d!2240400 d!2240078)))

(assert (=> bs!1899705 (= lambda!437916 lambda!437864)))

(declare-fun bs!1899706 () Bool)

(assert (= bs!1899706 (and d!2240400 d!2240148)))

(assert (=> bs!1899706 (= lambda!437916 lambda!437884)))

(declare-fun bs!1899707 () Bool)

(assert (= bs!1899707 (and d!2240400 d!2240392)))

(assert (=> bs!1899707 (= lambda!437916 lambda!437915)))

(declare-fun bs!1899708 () Bool)

(assert (= bs!1899708 (and d!2240400 d!2240334)))

(assert (=> bs!1899708 (= lambda!437916 lambda!437905)))

(declare-fun bs!1899709 () Bool)

(assert (= bs!1899709 (and d!2240400 d!2240254)))

(assert (=> bs!1899709 (= lambda!437916 lambda!437893)))

(declare-fun bs!1899710 () Bool)

(assert (= bs!1899710 (and d!2240400 d!2240170)))

(assert (=> bs!1899710 (= lambda!437916 lambda!437888)))

(declare-fun bs!1899711 () Bool)

(assert (= bs!1899711 (and d!2240400 d!2240278)))

(assert (=> bs!1899711 (= lambda!437916 lambda!437897)))

(declare-fun bs!1899712 () Bool)

(assert (= bs!1899712 (and d!2240400 d!2240262)))

(assert (=> bs!1899712 (= lambda!437916 lambda!437895)))

(declare-fun lt!2571286 () List!69817)

(assert (=> d!2240400 (forall!17191 lt!2571286 lambda!437916)))

(declare-fun e!4318864 () List!69817)

(assert (=> d!2240400 (= lt!2571286 e!4318864)))

(declare-fun c!1338699 () Bool)

(assert (=> d!2240400 (= c!1338699 ((_ is Cons!69695) (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))

(assert (=> d!2240400 (= (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))) lt!2571286)))

(declare-fun b!7191933 () Bool)

(assert (=> b!7191933 (= e!4318864 (Cons!69693 (generalisedConcat!2468 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))) (unfocusZipperList!2336 (t!383842 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun b!7191934 () Bool)

(assert (=> b!7191934 (= e!4318864 Nil!69693)))

(assert (= (and d!2240400 c!1338699) b!7191933))

(assert (= (and d!2240400 (not c!1338699)) b!7191934))

(declare-fun m!7887054 () Bool)

(assert (=> d!2240400 m!7887054))

(declare-fun m!7887056 () Bool)

(assert (=> b!7191933 m!7887056))

(declare-fun m!7887058 () Bool)

(assert (=> b!7191933 m!7887058))

(assert (=> d!2240178 d!2240400))

(declare-fun b!7191952 () Bool)

(declare-fun e!4318875 () Bool)

(declare-fun tp!1998569 () Bool)

(declare-fun tp!1998566 () Bool)

(assert (=> b!7191952 (= e!4318875 (and tp!1998569 tp!1998566))))

(declare-fun b!7191950 () Bool)

(declare-fun tp!1998568 () Bool)

(declare-fun tp!1998567 () Bool)

(assert (=> b!7191950 (= e!4318875 (and tp!1998568 tp!1998567))))

(assert (=> b!7191525 (= tp!1998553 e!4318875)))

(declare-fun b!7191949 () Bool)

(assert (=> b!7191949 (= e!4318875 tp_is_empty!46287)))

(declare-fun b!7191951 () Bool)

(declare-fun tp!1998570 () Bool)

(assert (=> b!7191951 (= e!4318875 tp!1998570)))

(assert (= (and b!7191525 ((_ is ElementMatch!18363) (h!76141 (t!383840 (exprs!7815 empty!2999))))) b!7191949))

(assert (= (and b!7191525 ((_ is Concat!27208) (h!76141 (t!383840 (exprs!7815 empty!2999))))) b!7191950))

(assert (= (and b!7191525 ((_ is Star!18363) (h!76141 (t!383840 (exprs!7815 empty!2999))))) b!7191951))

(assert (= (and b!7191525 ((_ is Union!18363) (h!76141 (t!383840 (exprs!7815 empty!2999))))) b!7191952))

(declare-fun b!7191953 () Bool)

(declare-fun e!4318876 () Bool)

(declare-fun tp!1998571 () Bool)

(declare-fun tp!1998572 () Bool)

(assert (=> b!7191953 (= e!4318876 (and tp!1998571 tp!1998572))))

(assert (=> b!7191525 (= tp!1998554 e!4318876)))

(assert (= (and b!7191525 ((_ is Cons!69693) (t!383840 (t!383840 (exprs!7815 empty!2999))))) b!7191953))

(declare-fun condSetEmpty!53262 () Bool)

(assert (=> setNonEmpty!53259 (= condSetEmpty!53262 (= setRest!53259 ((as const (Array Context!14630 Bool)) false)))))

(declare-fun setRes!53262 () Bool)

(assert (=> setNonEmpty!53259 (= tp!1998556 setRes!53262)))

(declare-fun setIsEmpty!53262 () Bool)

(assert (=> setIsEmpty!53262 setRes!53262))

(declare-fun e!4318877 () Bool)

(declare-fun setElem!53262 () Context!14630)

(declare-fun setNonEmpty!53262 () Bool)

(declare-fun tp!1998574 () Bool)

(assert (=> setNonEmpty!53262 (= setRes!53262 (and tp!1998574 (inv!88929 setElem!53262) e!4318877))))

(declare-fun setRest!53262 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53262 (= setRest!53259 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53262 true) setRest!53262))))

(declare-fun b!7191954 () Bool)

(declare-fun tp!1998573 () Bool)

(assert (=> b!7191954 (= e!4318877 tp!1998573)))

(assert (= (and setNonEmpty!53259 condSetEmpty!53262) setIsEmpty!53262))

(assert (= (and setNonEmpty!53259 (not condSetEmpty!53262)) setNonEmpty!53262))

(assert (= setNonEmpty!53262 b!7191954))

(declare-fun m!7887064 () Bool)

(assert (=> setNonEmpty!53262 m!7887064))

(declare-fun b!7191958 () Bool)

(declare-fun e!4318878 () Bool)

(declare-fun tp!1998578 () Bool)

(declare-fun tp!1998575 () Bool)

(assert (=> b!7191958 (= e!4318878 (and tp!1998578 tp!1998575))))

(declare-fun b!7191956 () Bool)

(declare-fun tp!1998577 () Bool)

(declare-fun tp!1998576 () Bool)

(assert (=> b!7191956 (= e!4318878 (and tp!1998577 tp!1998576))))

(assert (=> b!7191517 (= tp!1998543 e!4318878)))

(declare-fun b!7191955 () Bool)

(assert (=> b!7191955 (= e!4318878 tp_is_empty!46287)))

(declare-fun b!7191957 () Bool)

(declare-fun tp!1998579 () Bool)

(assert (=> b!7191957 (= e!4318878 tp!1998579)))

(assert (= (and b!7191517 ((_ is ElementMatch!18363) (reg!18692 (h!76141 (exprs!7815 setElem!53245))))) b!7191955))

(assert (= (and b!7191517 ((_ is Concat!27208) (reg!18692 (h!76141 (exprs!7815 setElem!53245))))) b!7191956))

(assert (= (and b!7191517 ((_ is Star!18363) (reg!18692 (h!76141 (exprs!7815 setElem!53245))))) b!7191957))

(assert (= (and b!7191517 ((_ is Union!18363) (reg!18692 (h!76141 (exprs!7815 setElem!53245))))) b!7191958))

(declare-fun b!7191959 () Bool)

(declare-fun e!4318879 () Bool)

(declare-fun tp!1998580 () Bool)

(declare-fun tp!1998581 () Bool)

(assert (=> b!7191959 (= e!4318879 (and tp!1998580 tp!1998581))))

(assert (=> b!7191450 (= tp!1998517 e!4318879)))

(assert (= (and b!7191450 ((_ is Cons!69693) (exprs!7815 (h!76143 res!2927981)))) b!7191959))

(declare-fun b!7191960 () Bool)

(declare-fun e!4318880 () Bool)

(declare-fun tp!1998582 () Bool)

(declare-fun tp!1998583 () Bool)

(assert (=> b!7191960 (= e!4318880 (and tp!1998582 tp!1998583))))

(assert (=> b!7191467 (= tp!1998525 e!4318880)))

(assert (= (and b!7191467 ((_ is Cons!69693) (exprs!7815 setElem!53258))) b!7191960))

(declare-fun b!7191961 () Bool)

(declare-fun e!4318881 () Bool)

(declare-fun tp!1998584 () Bool)

(declare-fun tp!1998585 () Bool)

(assert (=> b!7191961 (= e!4318881 (and tp!1998584 tp!1998585))))

(assert (=> b!7191526 (= tp!1998555 e!4318881)))

(assert (= (and b!7191526 ((_ is Cons!69693) (exprs!7815 setElem!53259))) b!7191961))

(declare-fun b!7191974 () Bool)

(declare-fun e!4318889 () Bool)

(declare-fun tp!1998589 () Bool)

(declare-fun tp!1998586 () Bool)

(assert (=> b!7191974 (= e!4318889 (and tp!1998589 tp!1998586))))

(declare-fun b!7191972 () Bool)

(declare-fun tp!1998588 () Bool)

(declare-fun tp!1998587 () Bool)

(assert (=> b!7191972 (= e!4318889 (and tp!1998588 tp!1998587))))

(assert (=> b!7191518 (= tp!1998542 e!4318889)))

(declare-fun b!7191971 () Bool)

(assert (=> b!7191971 (= e!4318889 tp_is_empty!46287)))

(declare-fun b!7191973 () Bool)

(declare-fun tp!1998590 () Bool)

(assert (=> b!7191973 (= e!4318889 tp!1998590)))

(assert (= (and b!7191518 ((_ is ElementMatch!18363) (regOne!37239 (h!76141 (exprs!7815 setElem!53245))))) b!7191971))

(assert (= (and b!7191518 ((_ is Concat!27208) (regOne!37239 (h!76141 (exprs!7815 setElem!53245))))) b!7191972))

(assert (= (and b!7191518 ((_ is Star!18363) (regOne!37239 (h!76141 (exprs!7815 setElem!53245))))) b!7191973))

(assert (= (and b!7191518 ((_ is Union!18363) (regOne!37239 (h!76141 (exprs!7815 setElem!53245))))) b!7191974))

(declare-fun b!7191978 () Bool)

(declare-fun e!4318890 () Bool)

(declare-fun tp!1998594 () Bool)

(declare-fun tp!1998591 () Bool)

(assert (=> b!7191978 (= e!4318890 (and tp!1998594 tp!1998591))))

(declare-fun b!7191976 () Bool)

(declare-fun tp!1998593 () Bool)

(declare-fun tp!1998592 () Bool)

(assert (=> b!7191976 (= e!4318890 (and tp!1998593 tp!1998592))))

(assert (=> b!7191518 (= tp!1998539 e!4318890)))

(declare-fun b!7191975 () Bool)

(assert (=> b!7191975 (= e!4318890 tp_is_empty!46287)))

(declare-fun b!7191977 () Bool)

(declare-fun tp!1998595 () Bool)

(assert (=> b!7191977 (= e!4318890 tp!1998595)))

(assert (= (and b!7191518 ((_ is ElementMatch!18363) (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))))) b!7191975))

(assert (= (and b!7191518 ((_ is Concat!27208) (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))))) b!7191976))

(assert (= (and b!7191518 ((_ is Star!18363) (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))))) b!7191977))

(assert (= (and b!7191518 ((_ is Union!18363) (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))))) b!7191978))

(declare-fun b!7191988 () Bool)

(declare-fun e!4318898 () Bool)

(declare-fun tp!1998605 () Bool)

(assert (=> b!7191988 (= e!4318898 tp!1998605)))

(declare-fun e!4318897 () Bool)

(declare-fun tp!1998607 () Bool)

(declare-fun b!7191987 () Bool)

(assert (=> b!7191987 (= e!4318897 (and (inv!88929 (h!76143 (t!383842 res!2927981))) e!4318898 tp!1998607))))

(assert (=> b!7191449 (= tp!1998516 e!4318897)))

(assert (= b!7191987 b!7191988))

(assert (= (and b!7191449 ((_ is Cons!69695) (t!383842 res!2927981))) b!7191987))

(declare-fun m!7887074 () Bool)

(assert (=> b!7191987 m!7887074))

(declare-fun b!7191996 () Bool)

(declare-fun e!4318900 () Bool)

(declare-fun tp!1998613 () Bool)

(declare-fun tp!1998610 () Bool)

(assert (=> b!7191996 (= e!4318900 (and tp!1998613 tp!1998610))))

(declare-fun b!7191994 () Bool)

(declare-fun tp!1998612 () Bool)

(declare-fun tp!1998611 () Bool)

(assert (=> b!7191994 (= e!4318900 (and tp!1998612 tp!1998611))))

(assert (=> b!7191516 (= tp!1998541 e!4318900)))

(declare-fun b!7191993 () Bool)

(assert (=> b!7191993 (= e!4318900 tp_is_empty!46287)))

(declare-fun b!7191995 () Bool)

(declare-fun tp!1998614 () Bool)

(assert (=> b!7191995 (= e!4318900 tp!1998614)))

(assert (= (and b!7191516 ((_ is ElementMatch!18363) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))) b!7191993))

(assert (= (and b!7191516 ((_ is Concat!27208) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))) b!7191994))

(assert (= (and b!7191516 ((_ is Star!18363) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))) b!7191995))

(assert (= (and b!7191516 ((_ is Union!18363) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))) b!7191996))

(declare-fun b!7192004 () Bool)

(declare-fun e!4318902 () Bool)

(declare-fun tp!1998623 () Bool)

(declare-fun tp!1998620 () Bool)

(assert (=> b!7192004 (= e!4318902 (and tp!1998623 tp!1998620))))

(declare-fun b!7192002 () Bool)

(declare-fun tp!1998622 () Bool)

(declare-fun tp!1998621 () Bool)

(assert (=> b!7192002 (= e!4318902 (and tp!1998622 tp!1998621))))

(assert (=> b!7191516 (= tp!1998540 e!4318902)))

(declare-fun b!7192001 () Bool)

(assert (=> b!7192001 (= e!4318902 tp_is_empty!46287)))

(declare-fun b!7192003 () Bool)

(declare-fun tp!1998624 () Bool)

(assert (=> b!7192003 (= e!4318902 tp!1998624)))

(assert (= (and b!7191516 ((_ is ElementMatch!18363) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245))))) b!7192001))

(assert (= (and b!7191516 ((_ is Concat!27208) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245))))) b!7192002))

(assert (= (and b!7191516 ((_ is Star!18363) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245))))) b!7192003))

(assert (= (and b!7191516 ((_ is Union!18363) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245))))) b!7192004))

(declare-fun condSetEmpty!53263 () Bool)

(assert (=> setNonEmpty!53258 (= condSetEmpty!53263 (= setRest!53258 ((as const (Array Context!14630 Bool)) false)))))

(declare-fun setRes!53263 () Bool)

(assert (=> setNonEmpty!53258 (= tp!1998524 setRes!53263)))

(declare-fun setIsEmpty!53263 () Bool)

(assert (=> setIsEmpty!53263 setRes!53263))

(declare-fun setElem!53263 () Context!14630)

(declare-fun e!4318904 () Bool)

(declare-fun setNonEmpty!53263 () Bool)

(declare-fun tp!1998631 () Bool)

(assert (=> setNonEmpty!53263 (= setRes!53263 (and tp!1998631 (inv!88929 setElem!53263) e!4318904))))

(declare-fun setRest!53263 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53263 (= setRest!53258 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53263 true) setRest!53263))))

(declare-fun b!7192009 () Bool)

(declare-fun tp!1998630 () Bool)

(assert (=> b!7192009 (= e!4318904 tp!1998630)))

(assert (= (and setNonEmpty!53258 condSetEmpty!53263) setIsEmpty!53263))

(assert (= (and setNonEmpty!53258 (not condSetEmpty!53263)) setNonEmpty!53263))

(assert (= setNonEmpty!53263 b!7192009))

(declare-fun m!7887076 () Bool)

(assert (=> setNonEmpty!53263 m!7887076))

(declare-fun b!7192014 () Bool)

(declare-fun e!4318906 () Bool)

(declare-fun tp!1998638 () Bool)

(declare-fun tp!1998640 () Bool)

(assert (=> b!7192014 (= e!4318906 (and tp!1998638 tp!1998640))))

(assert (=> b!7191504 (= tp!1998528 e!4318906)))

(assert (= (and b!7191504 ((_ is Cons!69693) (exprs!7815 _$3!486))) b!7192014))

(declare-fun b!7192019 () Bool)

(declare-fun e!4318908 () Bool)

(declare-fun tp!1998644 () Bool)

(declare-fun tp!1998645 () Bool)

(assert (=> b!7192019 (= e!4318908 (and tp!1998644 tp!1998645))))

(assert (=> b!7191455 (= tp!1998519 e!4318908)))

(assert (= (and b!7191455 ((_ is Cons!69693) (exprs!7815 (h!76143 res!2927985)))) b!7192019))

(declare-fun b!7192027 () Bool)

(declare-fun e!4318910 () Bool)

(declare-fun tp!1998654 () Bool)

(declare-fun tp!1998648 () Bool)

(assert (=> b!7192027 (= e!4318910 (and tp!1998654 tp!1998648))))

(declare-fun b!7192024 () Bool)

(declare-fun tp!1998652 () Bool)

(declare-fun tp!1998650 () Bool)

(assert (=> b!7192024 (= e!4318910 (and tp!1998652 tp!1998650))))

(assert (=> b!7191524 (= tp!1998551 e!4318910)))

(declare-fun b!7192022 () Bool)

(assert (=> b!7192022 (= e!4318910 tp_is_empty!46287)))

(declare-fun b!7192026 () Bool)

(declare-fun tp!1998655 () Bool)

(assert (=> b!7192026 (= e!4318910 tp!1998655)))

(assert (= (and b!7191524 ((_ is ElementMatch!18363) (regOne!37239 (h!76141 (exprs!7815 empty!2999))))) b!7192022))

(assert (= (and b!7191524 ((_ is Concat!27208) (regOne!37239 (h!76141 (exprs!7815 empty!2999))))) b!7192024))

(assert (= (and b!7191524 ((_ is Star!18363) (regOne!37239 (h!76141 (exprs!7815 empty!2999))))) b!7192026))

(assert (= (and b!7191524 ((_ is Union!18363) (regOne!37239 (h!76141 (exprs!7815 empty!2999))))) b!7192027))

(declare-fun b!7192032 () Bool)

(declare-fun e!4318912 () Bool)

(declare-fun tp!1998661 () Bool)

(declare-fun tp!1998657 () Bool)

(assert (=> b!7192032 (= e!4318912 (and tp!1998661 tp!1998657))))

(declare-fun b!7192030 () Bool)

(declare-fun tp!1998660 () Bool)

(declare-fun tp!1998659 () Bool)

(assert (=> b!7192030 (= e!4318912 (and tp!1998660 tp!1998659))))

(assert (=> b!7191524 (= tp!1998548 e!4318912)))

(declare-fun b!7192029 () Bool)

(assert (=> b!7192029 (= e!4318912 tp_is_empty!46287)))

(declare-fun b!7192031 () Bool)

(declare-fun tp!1998662 () Bool)

(assert (=> b!7192031 (= e!4318912 tp!1998662)))

(assert (= (and b!7191524 ((_ is ElementMatch!18363) (regTwo!37239 (h!76141 (exprs!7815 empty!2999))))) b!7192029))

(assert (= (and b!7191524 ((_ is Concat!27208) (regTwo!37239 (h!76141 (exprs!7815 empty!2999))))) b!7192030))

(assert (= (and b!7191524 ((_ is Star!18363) (regTwo!37239 (h!76141 (exprs!7815 empty!2999))))) b!7192031))

(assert (= (and b!7191524 ((_ is Union!18363) (regTwo!37239 (h!76141 (exprs!7815 empty!2999))))) b!7192032))

(declare-fun b!7192038 () Bool)

(declare-fun e!4318915 () Bool)

(declare-fun tp!1998670 () Bool)

(declare-fun tp!1998667 () Bool)

(assert (=> b!7192038 (= e!4318915 (and tp!1998670 tp!1998667))))

(declare-fun b!7192036 () Bool)

(declare-fun tp!1998669 () Bool)

(declare-fun tp!1998668 () Bool)

(assert (=> b!7192036 (= e!4318915 (and tp!1998669 tp!1998668))))

(assert (=> b!7191520 (= tp!1998546 e!4318915)))

(declare-fun b!7192035 () Bool)

(assert (=> b!7192035 (= e!4318915 tp_is_empty!46287)))

(declare-fun b!7192037 () Bool)

(declare-fun tp!1998671 () Bool)

(assert (=> b!7192037 (= e!4318915 tp!1998671)))

(assert (= (and b!7191520 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 setElem!53251)))) b!7192035))

(assert (= (and b!7191520 ((_ is Concat!27208) (h!76141 (exprs!7815 setElem!53251)))) b!7192036))

(assert (= (and b!7191520 ((_ is Star!18363) (h!76141 (exprs!7815 setElem!53251)))) b!7192037))

(assert (= (and b!7191520 ((_ is Union!18363) (h!76141 (exprs!7815 setElem!53251)))) b!7192038))

(declare-fun b!7192040 () Bool)

(declare-fun e!4318917 () Bool)

(declare-fun tp!1998674 () Bool)

(declare-fun tp!1998675 () Bool)

(assert (=> b!7192040 (= e!4318917 (and tp!1998674 tp!1998675))))

(assert (=> b!7191520 (= tp!1998547 e!4318917)))

(assert (= (and b!7191520 ((_ is Cons!69693) (t!383840 (exprs!7815 setElem!53251)))) b!7192040))

(declare-fun b!7192042 () Bool)

(declare-fun e!4318919 () Bool)

(declare-fun tp!1998676 () Bool)

(assert (=> b!7192042 (= e!4318919 tp!1998676)))

(declare-fun e!4318918 () Bool)

(declare-fun b!7192041 () Bool)

(declare-fun tp!1998677 () Bool)

(assert (=> b!7192041 (= e!4318918 (and (inv!88929 (h!76143 (t!383842 res!2927985))) e!4318919 tp!1998677))))

(assert (=> b!7191454 (= tp!1998518 e!4318918)))

(assert (= b!7192041 b!7192042))

(assert (= (and b!7191454 ((_ is Cons!69695) (t!383842 res!2927985))) b!7192041))

(declare-fun m!7887080 () Bool)

(assert (=> b!7192041 m!7887080))

(declare-fun b!7192050 () Bool)

(declare-fun e!4318921 () Bool)

(declare-fun tp!1998686 () Bool)

(declare-fun tp!1998683 () Bool)

(assert (=> b!7192050 (= e!4318921 (and tp!1998686 tp!1998683))))

(declare-fun b!7192048 () Bool)

(declare-fun tp!1998685 () Bool)

(declare-fun tp!1998684 () Bool)

(assert (=> b!7192048 (= e!4318921 (and tp!1998685 tp!1998684))))

(assert (=> b!7191523 (= tp!1998552 e!4318921)))

(declare-fun b!7192047 () Bool)

(assert (=> b!7192047 (= e!4318921 tp_is_empty!46287)))

(declare-fun b!7192049 () Bool)

(declare-fun tp!1998687 () Bool)

(assert (=> b!7192049 (= e!4318921 tp!1998687)))

(assert (= (and b!7191523 ((_ is ElementMatch!18363) (reg!18692 (h!76141 (exprs!7815 empty!2999))))) b!7192047))

(assert (= (and b!7191523 ((_ is Concat!27208) (reg!18692 (h!76141 (exprs!7815 empty!2999))))) b!7192048))

(assert (= (and b!7191523 ((_ is Star!18363) (reg!18692 (h!76141 (exprs!7815 empty!2999))))) b!7192049))

(assert (= (and b!7191523 ((_ is Union!18363) (reg!18692 (h!76141 (exprs!7815 empty!2999))))) b!7192050))

(declare-fun b!7192053 () Bool)

(declare-fun e!4318924 () Bool)

(declare-fun tp!1998692 () Bool)

(assert (=> b!7192053 (= e!4318924 (and tp_is_empty!46287 tp!1998692))))

(assert (=> b!7191527 (= tp!1998557 e!4318924)))

(assert (= (and b!7191527 ((_ is Cons!69694) (t!383841 (t!383841 (t!383841 s!7967))))) b!7192053))

(declare-fun b!7192061 () Bool)

(declare-fun e!4318926 () Bool)

(declare-fun tp!1998701 () Bool)

(declare-fun tp!1998698 () Bool)

(assert (=> b!7192061 (= e!4318926 (and tp!1998701 tp!1998698))))

(declare-fun b!7192059 () Bool)

(declare-fun tp!1998700 () Bool)

(declare-fun tp!1998699 () Bool)

(assert (=> b!7192059 (= e!4318926 (and tp!1998700 tp!1998699))))

(assert (=> b!7191522 (= tp!1998550 e!4318926)))

(declare-fun b!7192058 () Bool)

(assert (=> b!7192058 (= e!4318926 tp_is_empty!46287)))

(declare-fun b!7192060 () Bool)

(declare-fun tp!1998702 () Bool)

(assert (=> b!7192060 (= e!4318926 tp!1998702)))

(assert (= (and b!7191522 ((_ is ElementMatch!18363) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))) b!7192058))

(assert (= (and b!7191522 ((_ is Concat!27208) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))) b!7192059))

(assert (= (and b!7191522 ((_ is Star!18363) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))) b!7192060))

(assert (= (and b!7191522 ((_ is Union!18363) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))) b!7192061))

(declare-fun b!7192069 () Bool)

(declare-fun e!4318928 () Bool)

(declare-fun tp!1998711 () Bool)

(declare-fun tp!1998708 () Bool)

(assert (=> b!7192069 (= e!4318928 (and tp!1998711 tp!1998708))))

(declare-fun b!7192067 () Bool)

(declare-fun tp!1998710 () Bool)

(declare-fun tp!1998709 () Bool)

(assert (=> b!7192067 (= e!4318928 (and tp!1998710 tp!1998709))))

(assert (=> b!7191522 (= tp!1998549 e!4318928)))

(declare-fun b!7192066 () Bool)

(assert (=> b!7192066 (= e!4318928 tp_is_empty!46287)))

(declare-fun b!7192068 () Bool)

(declare-fun tp!1998712 () Bool)

(assert (=> b!7192068 (= e!4318928 tp!1998712)))

(assert (= (and b!7191522 ((_ is ElementMatch!18363) (regTwo!37238 (h!76141 (exprs!7815 empty!2999))))) b!7192066))

(assert (= (and b!7191522 ((_ is Concat!27208) (regTwo!37238 (h!76141 (exprs!7815 empty!2999))))) b!7192067))

(assert (= (and b!7191522 ((_ is Star!18363) (regTwo!37238 (h!76141 (exprs!7815 empty!2999))))) b!7192068))

(assert (= (and b!7191522 ((_ is Union!18363) (regTwo!37238 (h!76141 (exprs!7815 empty!2999))))) b!7192069))

(declare-fun b!7192074 () Bool)

(declare-fun e!4318930 () Bool)

(declare-fun tp!1998718 () Bool)

(declare-fun tp!1998715 () Bool)

(assert (=> b!7192074 (= e!4318930 (and tp!1998718 tp!1998715))))

(declare-fun b!7192072 () Bool)

(declare-fun tp!1998717 () Bool)

(declare-fun tp!1998716 () Bool)

(assert (=> b!7192072 (= e!4318930 (and tp!1998717 tp!1998716))))

(assert (=> b!7191519 (= tp!1998544 e!4318930)))

(declare-fun b!7192071 () Bool)

(assert (=> b!7192071 (= e!4318930 tp_is_empty!46287)))

(declare-fun b!7192073 () Bool)

(declare-fun tp!1998719 () Bool)

(assert (=> b!7192073 (= e!4318930 tp!1998719)))

(assert (= (and b!7191519 ((_ is ElementMatch!18363) (h!76141 (t!383840 (exprs!7815 setElem!53245))))) b!7192071))

(assert (= (and b!7191519 ((_ is Concat!27208) (h!76141 (t!383840 (exprs!7815 setElem!53245))))) b!7192072))

(assert (= (and b!7191519 ((_ is Star!18363) (h!76141 (t!383840 (exprs!7815 setElem!53245))))) b!7192073))

(assert (= (and b!7191519 ((_ is Union!18363) (h!76141 (t!383840 (exprs!7815 setElem!53245))))) b!7192074))

(declare-fun b!7192079 () Bool)

(declare-fun e!4318932 () Bool)

(declare-fun tp!1998725 () Bool)

(declare-fun tp!1998726 () Bool)

(assert (=> b!7192079 (= e!4318932 (and tp!1998725 tp!1998726))))

(assert (=> b!7191519 (= tp!1998545 e!4318932)))

(assert (= (and b!7191519 ((_ is Cons!69693) (t!383840 (t!383840 (exprs!7815 setElem!53245))))) b!7192079))

(declare-fun b_lambda!275611 () Bool)

(assert (= b_lambda!275595 (or d!2240078 b_lambda!275611)))

(declare-fun bs!1899728 () Bool)

(declare-fun d!2240416 () Bool)

(assert (= bs!1899728 (and d!2240416 d!2240078)))

(assert (=> bs!1899728 (= (dynLambda!28388 lambda!437864 (h!76141 (t!383840 (exprs!7815 empty!2999)))) (validRegex!9478 (h!76141 (t!383840 (exprs!7815 empty!2999)))))))

(declare-fun m!7887084 () Bool)

(assert (=> bs!1899728 m!7887084))

(assert (=> b!7191700 d!2240416))

(declare-fun b_lambda!275613 () Bool)

(assert (= b_lambda!275591 (or d!2240162 b_lambda!275613)))

(declare-fun bs!1899729 () Bool)

(declare-fun d!2240418 () Bool)

(assert (= bs!1899729 (and d!2240418 d!2240162)))

(assert (=> bs!1899729 (= (dynLambda!28389 lambda!437887 (h!76143 (toList!11306 z!3530))) (not (dynLambda!28389 lambda!437845 (h!76143 (toList!11306 z!3530)))))))

(declare-fun b_lambda!275623 () Bool)

(assert (=> (not b_lambda!275623) (not bs!1899729)))

(declare-fun m!7887086 () Bool)

(assert (=> bs!1899729 m!7887086))

(assert (=> b!7191566 d!2240418))

(declare-fun b_lambda!275615 () Bool)

(assert (= b_lambda!275605 (or d!2240170 b_lambda!275615)))

(declare-fun bs!1899730 () Bool)

(declare-fun d!2240420 () Bool)

(assert (= bs!1899730 (and d!2240420 d!2240170)))

(assert (=> bs!1899730 (= (dynLambda!28388 lambda!437888 (h!76141 (exprs!7815 setElem!53251))) (validRegex!9478 (h!76141 (exprs!7815 setElem!53251))))))

(declare-fun m!7887088 () Bool)

(assert (=> bs!1899730 m!7887088))

(assert (=> b!7191890 d!2240420))

(declare-fun b_lambda!275617 () Bool)

(assert (= b_lambda!275603 (or d!2240146 b_lambda!275617)))

(declare-fun bs!1899731 () Bool)

(declare-fun d!2240422 () Bool)

(assert (= bs!1899731 (and d!2240422 d!2240146)))

(assert (=> bs!1899731 (= (dynLambda!28388 lambda!437881 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))) (validRegex!9478 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(declare-fun m!7887090 () Bool)

(assert (=> bs!1899731 m!7887090))

(assert (=> b!7191888 d!2240422))

(declare-fun b_lambda!275619 () Bool)

(assert (= b_lambda!275607 (or d!2240088 b_lambda!275619)))

(declare-fun bs!1899732 () Bool)

(declare-fun d!2240424 () Bool)

(assert (= bs!1899732 (and d!2240424 d!2240088)))

(assert (=> bs!1899732 (= (dynLambda!28388 lambda!437865 (h!76141 (t!383840 (exprs!7815 setElem!53245)))) (validRegex!9478 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))))

(declare-fun m!7887092 () Bool)

(assert (=> bs!1899732 m!7887092))

(assert (=> b!7191902 d!2240424))

(declare-fun b_lambda!275621 () Bool)

(assert (= b_lambda!275593 (or d!2240148 b_lambda!275621)))

(declare-fun bs!1899733 () Bool)

(declare-fun d!2240426 () Bool)

(assert (= bs!1899733 (and d!2240426 d!2240148)))

(assert (=> bs!1899733 (= (dynLambda!28388 lambda!437884 (h!76141 lt!2571259)) (validRegex!9478 (h!76141 lt!2571259)))))

(declare-fun m!7887094 () Bool)

(assert (=> bs!1899733 m!7887094))

(assert (=> b!7191576 d!2240426))

(check-sat (not d!2240310) (not d!2240278) (not d!2240366) (not b!7192048) (not b!7192003) (not bm!655668) (not b!7191994) (not bs!1899730) (not b!7191705) (not b!7191759) (not b!7192036) (not b!7191876) (not b!7191918) (not b!7191764) (not d!2240392) (not b!7192060) (not b!7191916) (not b!7192027) (not b!7192026) (not bm!655729) (not d!2240268) (not b!7191743) (not d!2240296) (not d!2240272) (not b!7191995) (not d!2240276) (not b!7191803) (not bm!655705) (not d!2240400) (not bm!655737) (not b_lambda!275585) (not b!7192030) (not b!7191858) (not b!7191978) (not b!7192074) tp_is_empty!46287 (not b_lambda!275583) (not b!7191924) (not bm!655745) (not b!7191535) (not b!7191707) (not b!7191588) (not bm!655712) (not b!7192059) (not bm!655671) (not b!7191567) (not b!7191699) (not setNonEmpty!53262) (not bm!655742) (not d!2240262) (not b!7191950) (not bs!1899732) (not b!7191735) (not b!7192042) (not bm!655711) (not d!2240346) (not b_lambda!275615) (not bs!1899733) (not b!7191988) (not b!7191952) (not b!7191712) (not bm!655746) (not bm!655743) (not setNonEmpty!53263) (not b!7191762) (not bm!655719) (not b!7192014) (not b!7191679) (not bs!1899728) (not b!7192069) (not bm!655679) (not b!7191959) (not b!7192067) (not b!7191680) (not b!7192050) (not b!7192040) (not b!7191909) (not b!7191874) (not b!7191882) (not bs!1899731) (not b!7191767) (not bm!655682) (not b!7192053) (not b!7191996) (not b!7191675) (not b!7191987) (not b!7191754) (not b!7191704) (not b!7191956) (not d!2240344) (not b_lambda!275619) (not bm!655669) (not b!7191615) (not b!7191903) (not b_lambda!275617) (not d!2240266) (not b!7192032) (not d!2240354) (not b!7191805) (not b!7191703) (not b_lambda!275613) (not d!2240284) (not b!7191976) (not b!7191677) (not setNonEmpty!53260) (not b!7191921) (not b!7191698) (not b!7191617) (not d!2240254) (not b!7191765) (not b!7192068) (not b!7192019) (not bm!655714) (not b!7191708) (not bm!655715) (not b!7191953) (not b!7192079) (not b!7191974) (not b!7191919) (not b!7191951) (not b!7192037) (not b!7191933) (not b!7191702) (not b!7191922) (not b!7192004) (not bm!655738) (not bm!655730) (not b!7192031) (not b!7191961) (not d!2240334) (not b_lambda!275611) (not b!7192041) (not b!7191957) (not b!7191577) (not b!7191701) (not b!7191550) (not b!7191761) (not b!7191972) (not b!7191954) (not b_lambda!275623) (not b!7191872) (not b!7192002) (not bm!655732) (not b!7191544) (not b!7192073) (not b!7191973) (not b!7192049) (not b!7191977) (not b!7191958) (not b!7191676) (not b!7191681) (not bm!655716) (not b!7191572) (not b!7191920) (not b!7191873) (not b!7192072) (not bm!655718) (not b!7192038) (not b!7192024) (not b!7191860) (not b!7191674) (not b!7192061) (not b!7192009) (not b!7191889) (not b!7191859) (not b!7191694) (not b!7191960) (not bm!655680) (not d!2240196) (not b!7191763) (not b!7191891) (not b_lambda!275621) (not b!7191573) (not d!2240360) (not bm!655672) (not b!7191792))
(check-sat)
(get-model)

(declare-fun b_lambda!275639 () Bool)

(assert (= b_lambda!275623 (or b!7191090 b_lambda!275639)))

(declare-fun bs!1899740 () Bool)

(declare-fun d!2240440 () Bool)

(assert (= bs!1899740 (and d!2240440 b!7191090)))

(assert (=> bs!1899740 (= (dynLambda!28389 lambda!437845 (h!76143 (toList!11306 z!3530))) (select (derivationStepZipperUp!2333 (h!76143 (toList!11306 z!3530)) lt!2571215) lt!2571216))))

(declare-fun m!7887112 () Bool)

(assert (=> bs!1899740 m!7887112))

(declare-fun m!7887114 () Bool)

(assert (=> bs!1899740 m!7887114))

(assert (=> bs!1899729 d!2240440))

(check-sat (not d!2240310) (not d!2240278) (not d!2240366) (not b!7192048) (not b!7192003) (not bm!655668) (not b!7191994) (not bs!1899730) (not b!7191705) (not b!7191759) (not b!7192036) (not b!7191876) (not b!7191918) (not b!7191764) (not d!2240392) (not b!7192060) (not b!7191916) (not b!7192027) (not b!7192026) (not bm!655729) (not d!2240268) (not b!7191743) (not d!2240296) (not d!2240272) (not b!7191995) (not d!2240276) (not bs!1899740) (not b!7191803) (not bm!655705) (not d!2240400) (not bm!655737) (not b_lambda!275585) (not b!7192030) (not b!7191858) (not b!7191978) (not b!7192074) tp_is_empty!46287 (not b_lambda!275583) (not b!7191924) (not bm!655745) (not b!7191535) (not b!7191707) (not b!7191588) (not bm!655712) (not b!7192059) (not bm!655671) (not b!7191567) (not b!7191699) (not setNonEmpty!53262) (not bm!655742) (not d!2240262) (not b!7191950) (not bs!1899732) (not b!7191735) (not b!7192042) (not bm!655711) (not d!2240346) (not b_lambda!275615) (not bs!1899733) (not b!7191988) (not b!7191952) (not b!7191712) (not bm!655746) (not bm!655743) (not setNonEmpty!53263) (not b!7191762) (not bm!655719) (not b!7192014) (not b!7191679) (not bs!1899728) (not b!7192069) (not bm!655679) (not b!7191959) (not b!7192067) (not b!7191680) (not b!7192050) (not b!7192040) (not b!7191909) (not b!7191874) (not b_lambda!275639) (not b!7191882) (not bs!1899731) (not b!7191767) (not bm!655682) (not b!7192053) (not b!7191996) (not b!7191675) (not b!7191987) (not b!7191754) (not b!7191704) (not b!7191956) (not d!2240344) (not b_lambda!275619) (not bm!655669) (not b!7191615) (not b!7191903) (not b_lambda!275617) (not d!2240266) (not b!7192032) (not d!2240354) (not b!7191805) (not b!7191703) (not b_lambda!275613) (not d!2240284) (not b!7191976) (not b!7191677) (not setNonEmpty!53260) (not b!7191921) (not b!7191698) (not b!7191617) (not d!2240254) (not b!7191765) (not b!7192068) (not b!7192019) (not bm!655714) (not b!7191708) (not bm!655715) (not b!7191953) (not b!7192079) (not b!7191974) (not b!7191919) (not b!7191951) (not b!7192037) (not b!7191933) (not b!7191702) (not b!7191922) (not b!7192004) (not bm!655738) (not bm!655730) (not b!7192031) (not b!7191961) (not d!2240334) (not b_lambda!275611) (not b!7192041) (not b!7191957) (not b!7191577) (not b!7191701) (not b!7191550) (not b!7191761) (not b!7191972) (not b!7191954) (not b!7191872) (not b!7192002) (not bm!655732) (not b!7191544) (not b!7192073) (not b!7191973) (not b!7192049) (not b!7191977) (not b!7191958) (not b!7191676) (not b!7191681) (not bm!655716) (not b!7191572) (not b!7191920) (not b!7191873) (not b!7192072) (not bm!655718) (not b!7192038) (not b!7192024) (not b!7191860) (not b!7191674) (not b!7192061) (not b!7192009) (not b!7191889) (not b!7191859) (not b!7191694) (not b!7191960) (not bm!655680) (not d!2240196) (not b!7191763) (not b!7191891) (not b_lambda!275621) (not b!7191573) (not d!2240360) (not bm!655672) (not b!7191792))
(check-sat)
(get-model)

(declare-fun d!2240444 () Bool)

(assert (=> d!2240444 (= (nullable!7785 (ite c!1338677 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (nullableFct!3046 (ite c!1338677 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))

(declare-fun bs!1899742 () Bool)

(assert (= bs!1899742 d!2240444))

(declare-fun m!7887120 () Bool)

(assert (=> bs!1899742 m!7887120))

(assert (=> bm!655738 d!2240444))

(declare-fun d!2240446 () Bool)

(assert (=> d!2240446 (= ($colon$colon!2846 (exprs!7815 (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668))) (ite (or c!1338596 c!1338595) (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))) (Cons!69693 (ite (or c!1338596 c!1338595) (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (exprs!7815 (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)))))))

(assert (=> bm!655682 d!2240446))

(declare-fun d!2240448 () Bool)

(assert (=> d!2240448 (= (nullable!7785 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))) (nullableFct!3046 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))

(declare-fun bs!1899743 () Bool)

(assert (= bs!1899743 d!2240448))

(declare-fun m!7887122 () Bool)

(assert (=> bs!1899743 m!7887122))

(assert (=> b!7191803 d!2240448))

(declare-fun b!7192104 () Bool)

(declare-fun e!4318948 () Bool)

(declare-fun e!4318949 () Bool)

(assert (=> b!7192104 (= e!4318948 e!4318949)))

(declare-fun res!2928192 () Bool)

(assert (=> b!7192104 (=> res!2928192 e!4318949)))

(assert (=> b!7192104 (= res!2928192 ((_ is Star!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))

(declare-fun b!7192105 () Bool)

(declare-fun e!4318947 () Bool)

(declare-fun call!655759 () Bool)

(assert (=> b!7192105 (= e!4318947 call!655759)))

(declare-fun d!2240450 () Bool)

(declare-fun res!2928191 () Bool)

(declare-fun e!4318951 () Bool)

(assert (=> d!2240450 (=> res!2928191 e!4318951)))

(assert (=> d!2240450 (= res!2928191 ((_ is EmptyExpr!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))

(assert (=> d!2240450 (= (nullableFct!3046 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) e!4318951)))

(declare-fun bm!655754 () Bool)

(declare-fun c!1338706 () Bool)

(assert (=> bm!655754 (= call!655759 (nullable!7785 (ite c!1338706 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(declare-fun b!7192106 () Bool)

(assert (=> b!7192106 (= e!4318951 e!4318948)))

(declare-fun res!2928189 () Bool)

(assert (=> b!7192106 (=> (not res!2928189) (not e!4318948))))

(assert (=> b!7192106 (= res!2928189 (and (not ((_ is EmptyLang!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))) (not ((_ is ElementMatch!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(declare-fun b!7192107 () Bool)

(declare-fun e!4318946 () Bool)

(assert (=> b!7192107 (= e!4318949 e!4318946)))

(assert (=> b!7192107 (= c!1338706 ((_ is Union!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))

(declare-fun b!7192108 () Bool)

(assert (=> b!7192108 (= e!4318946 e!4318947)))

(declare-fun res!2928190 () Bool)

(declare-fun call!655760 () Bool)

(assert (=> b!7192108 (= res!2928190 call!655760)))

(assert (=> b!7192108 (=> res!2928190 e!4318947)))

(declare-fun b!7192109 () Bool)

(declare-fun e!4318950 () Bool)

(assert (=> b!7192109 (= e!4318950 call!655759)))

(declare-fun b!7192110 () Bool)

(assert (=> b!7192110 (= e!4318946 e!4318950)))

(declare-fun res!2928193 () Bool)

(assert (=> b!7192110 (= res!2928193 call!655760)))

(assert (=> b!7192110 (=> (not res!2928193) (not e!4318950))))

(declare-fun bm!655755 () Bool)

(assert (=> bm!655755 (= call!655760 (nullable!7785 (ite c!1338706 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(assert (= (and d!2240450 (not res!2928191)) b!7192106))

(assert (= (and b!7192106 res!2928189) b!7192104))

(assert (= (and b!7192104 (not res!2928192)) b!7192107))

(assert (= (and b!7192107 c!1338706) b!7192108))

(assert (= (and b!7192107 (not c!1338706)) b!7192110))

(assert (= (and b!7192108 (not res!2928190)) b!7192105))

(assert (= (and b!7192110 res!2928193) b!7192109))

(assert (= (or b!7192108 b!7192110) bm!655755))

(assert (= (or b!7192105 b!7192109) bm!655754))

(declare-fun m!7887124 () Bool)

(assert (=> bm!655754 m!7887124))

(declare-fun m!7887126 () Bool)

(assert (=> bm!655755 m!7887126))

(assert (=> d!2240196 d!2240450))

(declare-fun d!2240452 () Bool)

(assert (=> d!2240452 (= (isEmptyLang!2158 lt!2571281) ((_ is EmptyLang!18363) lt!2571281))))

(assert (=> b!7191916 d!2240452))

(declare-fun d!2240454 () Bool)

(assert (=> d!2240454 (= (head!14689 (exprs!7815 (h!76143 (toList!11306 z!3530)))) (h!76141 (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(assert (=> b!7191677 d!2240454))

(declare-fun b!7192111 () Bool)

(declare-fun e!4318953 () Bool)

(declare-fun call!655762 () Bool)

(assert (=> b!7192111 (= e!4318953 call!655762)))

(declare-fun b!7192112 () Bool)

(declare-fun e!4318958 () Bool)

(declare-fun e!4318957 () Bool)

(assert (=> b!7192112 (= e!4318958 e!4318957)))

(declare-fun c!1338707 () Bool)

(assert (=> b!7192112 (= c!1338707 ((_ is Union!18363) (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))))))

(declare-fun b!7192113 () Bool)

(declare-fun res!2928196 () Bool)

(declare-fun e!4318954 () Bool)

(assert (=> b!7192113 (=> res!2928196 e!4318954)))

(assert (=> b!7192113 (= res!2928196 (not ((_ is Concat!27208) (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256))))))))

(assert (=> b!7192113 (= e!4318957 e!4318954)))

(declare-fun b!7192114 () Bool)

(declare-fun res!2928195 () Bool)

(declare-fun e!4318952 () Bool)

(assert (=> b!7192114 (=> (not res!2928195) (not e!4318952))))

(declare-fun call!655761 () Bool)

(assert (=> b!7192114 (= res!2928195 call!655761)))

(assert (=> b!7192114 (= e!4318957 e!4318952)))

(declare-fun b!7192115 () Bool)

(assert (=> b!7192115 (= e!4318954 e!4318953)))

(declare-fun res!2928198 () Bool)

(assert (=> b!7192115 (=> (not res!2928198) (not e!4318953))))

(assert (=> b!7192115 (= res!2928198 call!655761)))

(declare-fun b!7192116 () Bool)

(declare-fun e!4318956 () Bool)

(assert (=> b!7192116 (= e!4318958 e!4318956)))

(declare-fun res!2928194 () Bool)

(assert (=> b!7192116 (= res!2928194 (not (nullable!7785 (reg!18692 (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))))))))

(assert (=> b!7192116 (=> (not res!2928194) (not e!4318956))))

(declare-fun b!7192117 () Bool)

(assert (=> b!7192117 (= e!4318952 call!655762)))

(declare-fun d!2240456 () Bool)

(declare-fun res!2928197 () Bool)

(declare-fun e!4318955 () Bool)

(assert (=> d!2240456 (=> res!2928197 e!4318955)))

(assert (=> d!2240456 (= res!2928197 ((_ is ElementMatch!18363) (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))))))

(assert (=> d!2240456 (= (validRegex!9478 (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))) e!4318955)))

(declare-fun bm!655756 () Bool)

(declare-fun c!1338708 () Bool)

(declare-fun call!655763 () Bool)

(assert (=> bm!655756 (= call!655763 (validRegex!9478 (ite c!1338708 (reg!18692 (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))) (ite c!1338707 (regTwo!37239 (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))) (regTwo!37238 (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256))))))))))

(declare-fun bm!655757 () Bool)

(assert (=> bm!655757 (= call!655761 (validRegex!9478 (ite c!1338707 (regOne!37239 (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))) (regOne!37238 (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))))))))

(declare-fun bm!655758 () Bool)

(assert (=> bm!655758 (= call!655762 call!655763)))

(declare-fun b!7192118 () Bool)

(assert (=> b!7192118 (= e!4318955 e!4318958)))

(assert (=> b!7192118 (= c!1338708 ((_ is Star!18363) (ite c!1338688 (reg!18692 lt!2571256) (ite c!1338687 (regTwo!37239 lt!2571256) (regTwo!37238 lt!2571256)))))))

(declare-fun b!7192119 () Bool)

(assert (=> b!7192119 (= e!4318956 call!655763)))

(assert (= (and d!2240456 (not res!2928197)) b!7192118))

(assert (= (and b!7192118 c!1338708) b!7192116))

(assert (= (and b!7192118 (not c!1338708)) b!7192112))

(assert (= (and b!7192116 res!2928194) b!7192119))

(assert (= (and b!7192112 c!1338707) b!7192114))

(assert (= (and b!7192112 (not c!1338707)) b!7192113))

(assert (= (and b!7192114 res!2928195) b!7192117))

(assert (= (and b!7192113 (not res!2928196)) b!7192115))

(assert (= (and b!7192115 res!2928198) b!7192111))

(assert (= (or b!7192114 b!7192115) bm!655757))

(assert (= (or b!7192117 b!7192111) bm!655758))

(assert (= (or b!7192119 bm!655758) bm!655756))

(declare-fun m!7887128 () Bool)

(assert (=> b!7192116 m!7887128))

(declare-fun m!7887130 () Bool)

(assert (=> bm!655756 m!7887130))

(declare-fun m!7887132 () Bool)

(assert (=> bm!655757 m!7887132))

(assert (=> bm!655742 d!2240456))

(declare-fun d!2240458 () Bool)

(declare-fun lt!2571287 () Bool)

(assert (=> d!2240458 (= lt!2571287 (select (content!14325 (t!383842 lt!2571261)) (h!76143 lt!2571261)))))

(declare-fun e!4318959 () Bool)

(assert (=> d!2240458 (= lt!2571287 e!4318959)))

(declare-fun res!2928200 () Bool)

(assert (=> d!2240458 (=> (not res!2928200) (not e!4318959))))

(assert (=> d!2240458 (= res!2928200 ((_ is Cons!69695) (t!383842 lt!2571261)))))

(assert (=> d!2240458 (= (contains!20725 (t!383842 lt!2571261) (h!76143 lt!2571261)) lt!2571287)))

(declare-fun b!7192120 () Bool)

(declare-fun e!4318960 () Bool)

(assert (=> b!7192120 (= e!4318959 e!4318960)))

(declare-fun res!2928199 () Bool)

(assert (=> b!7192120 (=> res!2928199 e!4318960)))

(assert (=> b!7192120 (= res!2928199 (= (h!76143 (t!383842 lt!2571261)) (h!76143 lt!2571261)))))

(declare-fun b!7192121 () Bool)

(assert (=> b!7192121 (= e!4318960 (contains!20725 (t!383842 (t!383842 lt!2571261)) (h!76143 lt!2571261)))))

(assert (= (and d!2240458 res!2928200) b!7192120))

(assert (= (and b!7192120 (not res!2928199)) b!7192121))

(assert (=> d!2240458 m!7886682))

(declare-fun m!7887134 () Bool)

(assert (=> d!2240458 m!7887134))

(declare-fun m!7887136 () Bool)

(assert (=> b!7192121 m!7887136))

(assert (=> b!7191859 d!2240458))

(declare-fun d!2240460 () Bool)

(assert (=> d!2240460 (= (nullable!7785 (reg!18692 lt!2571260)) (nullableFct!3046 (reg!18692 lt!2571260)))))

(declare-fun bs!1899744 () Bool)

(assert (= bs!1899744 d!2240460))

(declare-fun m!7887138 () Bool)

(assert (=> bs!1899744 m!7887138))

(assert (=> b!7191909 d!2240460))

(declare-fun d!2240462 () Bool)

(declare-fun res!2928201 () Bool)

(declare-fun e!4318961 () Bool)

(assert (=> d!2240462 (=> res!2928201 e!4318961)))

(assert (=> d!2240462 (= res!2928201 ((_ is Nil!69695) (t!383842 res!2927985)))))

(assert (=> d!2240462 (= (noDuplicate!2896 (t!383842 res!2927985)) e!4318961)))

(declare-fun b!7192122 () Bool)

(declare-fun e!4318962 () Bool)

(assert (=> b!7192122 (= e!4318961 e!4318962)))

(declare-fun res!2928202 () Bool)

(assert (=> b!7192122 (=> (not res!2928202) (not e!4318962))))

(assert (=> b!7192122 (= res!2928202 (not (contains!20725 (t!383842 (t!383842 res!2927985)) (h!76143 (t!383842 res!2927985)))))))

(declare-fun b!7192123 () Bool)

(assert (=> b!7192123 (= e!4318962 (noDuplicate!2896 (t!383842 (t!383842 res!2927985))))))

(assert (= (and d!2240462 (not res!2928201)) b!7192122))

(assert (= (and b!7192122 res!2928202) b!7192123))

(declare-fun m!7887140 () Bool)

(assert (=> b!7192122 m!7887140))

(declare-fun m!7887142 () Bool)

(assert (=> b!7192123 m!7887142))

(assert (=> b!7191705 d!2240462))

(declare-fun b!7192124 () Bool)

(declare-fun e!4318964 () Bool)

(declare-fun call!655765 () Bool)

(assert (=> b!7192124 (= e!4318964 call!655765)))

(declare-fun b!7192125 () Bool)

(declare-fun e!4318969 () Bool)

(declare-fun e!4318968 () Bool)

(assert (=> b!7192125 (= e!4318969 e!4318968)))

(declare-fun c!1338709 () Bool)

(assert (=> b!7192125 (= c!1338709 ((_ is Union!18363) (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))))))

(declare-fun b!7192126 () Bool)

(declare-fun res!2928205 () Bool)

(declare-fun e!4318965 () Bool)

(assert (=> b!7192126 (=> res!2928205 e!4318965)))

(assert (=> b!7192126 (= res!2928205 (not ((_ is Concat!27208) (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))))))

(assert (=> b!7192126 (= e!4318968 e!4318965)))

(declare-fun b!7192127 () Bool)

(declare-fun res!2928204 () Bool)

(declare-fun e!4318963 () Bool)

(assert (=> b!7192127 (=> (not res!2928204) (not e!4318963))))

(declare-fun call!655764 () Bool)

(assert (=> b!7192127 (= res!2928204 call!655764)))

(assert (=> b!7192127 (= e!4318968 e!4318963)))

(declare-fun b!7192128 () Bool)

(assert (=> b!7192128 (= e!4318965 e!4318964)))

(declare-fun res!2928207 () Bool)

(assert (=> b!7192128 (=> (not res!2928207) (not e!4318964))))

(assert (=> b!7192128 (= res!2928207 call!655764)))

(declare-fun b!7192129 () Bool)

(declare-fun e!4318967 () Bool)

(assert (=> b!7192129 (= e!4318969 e!4318967)))

(declare-fun res!2928203 () Bool)

(assert (=> b!7192129 (= res!2928203 (not (nullable!7785 (reg!18692 (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))))))))

(assert (=> b!7192129 (=> (not res!2928203) (not e!4318967))))

(declare-fun b!7192130 () Bool)

(assert (=> b!7192130 (= e!4318963 call!655765)))

(declare-fun d!2240464 () Bool)

(declare-fun res!2928206 () Bool)

(declare-fun e!4318966 () Bool)

(assert (=> d!2240464 (=> res!2928206 e!4318966)))

(assert (=> d!2240464 (= res!2928206 ((_ is ElementMatch!18363) (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))))))

(assert (=> d!2240464 (= (validRegex!9478 (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))) e!4318966)))

(declare-fun bm!655759 () Bool)

(declare-fun c!1338710 () Bool)

(declare-fun call!655766 () Bool)

(assert (=> bm!655759 (= call!655766 (validRegex!9478 (ite c!1338710 (reg!18692 (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))) (ite c!1338709 (regTwo!37239 (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))) (regTwo!37238 (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))))))))

(declare-fun bm!655760 () Bool)

(assert (=> bm!655760 (= call!655764 (validRegex!9478 (ite c!1338709 (regOne!37239 (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))) (regOne!37238 (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))))))))

(declare-fun bm!655761 () Bool)

(assert (=> bm!655761 (= call!655765 call!655766)))

(declare-fun b!7192131 () Bool)

(assert (=> b!7192131 (= e!4318966 e!4318969)))

(assert (=> b!7192131 (= c!1338710 ((_ is Star!18363) (ite c!1338589 (regOne!37239 (h!76141 (exprs!7815 empty!2999))) (regOne!37238 (h!76141 (exprs!7815 empty!2999))))))))

(declare-fun b!7192132 () Bool)

(assert (=> b!7192132 (= e!4318967 call!655766)))

(assert (= (and d!2240464 (not res!2928206)) b!7192131))

(assert (= (and b!7192131 c!1338710) b!7192129))

(assert (= (and b!7192131 (not c!1338710)) b!7192125))

(assert (= (and b!7192129 res!2928203) b!7192132))

(assert (= (and b!7192125 c!1338709) b!7192127))

(assert (= (and b!7192125 (not c!1338709)) b!7192126))

(assert (= (and b!7192127 res!2928204) b!7192130))

(assert (= (and b!7192126 (not res!2928205)) b!7192128))

(assert (= (and b!7192128 res!2928207) b!7192124))

(assert (= (or b!7192127 b!7192128) bm!655760))

(assert (= (or b!7192130 b!7192124) bm!655761))

(assert (= (or b!7192132 bm!655761) bm!655759))

(declare-fun m!7887144 () Bool)

(assert (=> b!7192129 m!7887144))

(declare-fun m!7887146 () Bool)

(assert (=> bm!655759 m!7887146))

(declare-fun m!7887148 () Bool)

(assert (=> bm!655760 m!7887148))

(assert (=> bm!655669 d!2240464))

(declare-fun b!7192133 () Bool)

(declare-fun e!4318971 () Bool)

(declare-fun call!655768 () Bool)

(assert (=> b!7192133 (= e!4318971 call!655768)))

(declare-fun b!7192134 () Bool)

(declare-fun e!4318976 () Bool)

(declare-fun e!4318975 () Bool)

(assert (=> b!7192134 (= e!4318976 e!4318975)))

(declare-fun c!1338711 () Bool)

(assert (=> b!7192134 (= c!1338711 ((_ is Union!18363) lt!2571281))))

(declare-fun b!7192135 () Bool)

(declare-fun res!2928210 () Bool)

(declare-fun e!4318972 () Bool)

(assert (=> b!7192135 (=> res!2928210 e!4318972)))

(assert (=> b!7192135 (= res!2928210 (not ((_ is Concat!27208) lt!2571281)))))

(assert (=> b!7192135 (= e!4318975 e!4318972)))

(declare-fun b!7192136 () Bool)

(declare-fun res!2928209 () Bool)

(declare-fun e!4318970 () Bool)

(assert (=> b!7192136 (=> (not res!2928209) (not e!4318970))))

(declare-fun call!655767 () Bool)

(assert (=> b!7192136 (= res!2928209 call!655767)))

(assert (=> b!7192136 (= e!4318975 e!4318970)))

(declare-fun b!7192137 () Bool)

(assert (=> b!7192137 (= e!4318972 e!4318971)))

(declare-fun res!2928212 () Bool)

(assert (=> b!7192137 (=> (not res!2928212) (not e!4318971))))

(assert (=> b!7192137 (= res!2928212 call!655767)))

(declare-fun b!7192138 () Bool)

(declare-fun e!4318974 () Bool)

(assert (=> b!7192138 (= e!4318976 e!4318974)))

(declare-fun res!2928208 () Bool)

(assert (=> b!7192138 (= res!2928208 (not (nullable!7785 (reg!18692 lt!2571281))))))

(assert (=> b!7192138 (=> (not res!2928208) (not e!4318974))))

(declare-fun b!7192139 () Bool)

(assert (=> b!7192139 (= e!4318970 call!655768)))

(declare-fun d!2240466 () Bool)

(declare-fun res!2928211 () Bool)

(declare-fun e!4318973 () Bool)

(assert (=> d!2240466 (=> res!2928211 e!4318973)))

(assert (=> d!2240466 (= res!2928211 ((_ is ElementMatch!18363) lt!2571281))))

(assert (=> d!2240466 (= (validRegex!9478 lt!2571281) e!4318973)))

(declare-fun c!1338712 () Bool)

(declare-fun call!655769 () Bool)

(declare-fun bm!655762 () Bool)

(assert (=> bm!655762 (= call!655769 (validRegex!9478 (ite c!1338712 (reg!18692 lt!2571281) (ite c!1338711 (regTwo!37239 lt!2571281) (regTwo!37238 lt!2571281)))))))

(declare-fun bm!655763 () Bool)

(assert (=> bm!655763 (= call!655767 (validRegex!9478 (ite c!1338711 (regOne!37239 lt!2571281) (regOne!37238 lt!2571281))))))

(declare-fun bm!655764 () Bool)

(assert (=> bm!655764 (= call!655768 call!655769)))

(declare-fun b!7192140 () Bool)

(assert (=> b!7192140 (= e!4318973 e!4318976)))

(assert (=> b!7192140 (= c!1338712 ((_ is Star!18363) lt!2571281))))

(declare-fun b!7192141 () Bool)

(assert (=> b!7192141 (= e!4318974 call!655769)))

(assert (= (and d!2240466 (not res!2928211)) b!7192140))

(assert (= (and b!7192140 c!1338712) b!7192138))

(assert (= (and b!7192140 (not c!1338712)) b!7192134))

(assert (= (and b!7192138 res!2928208) b!7192141))

(assert (= (and b!7192134 c!1338711) b!7192136))

(assert (= (and b!7192134 (not c!1338711)) b!7192135))

(assert (= (and b!7192136 res!2928209) b!7192139))

(assert (= (and b!7192135 (not res!2928210)) b!7192137))

(assert (= (and b!7192137 res!2928212) b!7192133))

(assert (= (or b!7192136 b!7192137) bm!655763))

(assert (= (or b!7192139 b!7192133) bm!655764))

(assert (= (or b!7192141 bm!655764) bm!655762))

(declare-fun m!7887150 () Bool)

(assert (=> b!7192138 m!7887150))

(declare-fun m!7887152 () Bool)

(assert (=> bm!655762 m!7887152))

(declare-fun m!7887154 () Bool)

(assert (=> bm!655763 m!7887154))

(assert (=> d!2240392 d!2240466))

(declare-fun d!2240468 () Bool)

(declare-fun res!2928213 () Bool)

(declare-fun e!4318977 () Bool)

(assert (=> d!2240468 (=> res!2928213 e!4318977)))

(assert (=> d!2240468 (= res!2928213 ((_ is Nil!69693) (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(assert (=> d!2240468 (= (forall!17191 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))) lambda!437915) e!4318977)))

(declare-fun b!7192142 () Bool)

(declare-fun e!4318978 () Bool)

(assert (=> b!7192142 (= e!4318977 e!4318978)))

(declare-fun res!2928214 () Bool)

(assert (=> b!7192142 (=> (not res!2928214) (not e!4318978))))

(assert (=> b!7192142 (= res!2928214 (dynLambda!28388 lambda!437915 (h!76141 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun b!7192143 () Bool)

(assert (=> b!7192143 (= e!4318978 (forall!17191 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))) lambda!437915))))

(assert (= (and d!2240468 (not res!2928213)) b!7192142))

(assert (= (and b!7192142 res!2928214) b!7192143))

(declare-fun b_lambda!275643 () Bool)

(assert (=> (not b_lambda!275643) (not b!7192142)))

(declare-fun m!7887156 () Bool)

(assert (=> b!7192142 m!7887156))

(declare-fun m!7887158 () Bool)

(assert (=> b!7192143 m!7887158))

(assert (=> d!2240392 d!2240468))

(declare-fun d!2240470 () Bool)

(assert (=> d!2240470 (= (nullable!7785 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))) (nullableFct!3046 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))))

(declare-fun bs!1899745 () Bool)

(assert (= bs!1899745 d!2240470))

(declare-fun m!7887160 () Bool)

(assert (=> bs!1899745 m!7887160))

(assert (=> b!7191754 d!2240470))

(declare-fun d!2240472 () Bool)

(declare-fun res!2928215 () Bool)

(declare-fun e!4318979 () Bool)

(assert (=> d!2240472 (=> res!2928215 e!4318979)))

(assert (=> d!2240472 (= res!2928215 ((_ is Nil!69693) (exprs!7815 (h!76143 res!2927981))))))

(assert (=> d!2240472 (= (forall!17191 (exprs!7815 (h!76143 res!2927981)) lambda!437910) e!4318979)))

(declare-fun b!7192144 () Bool)

(declare-fun e!4318980 () Bool)

(assert (=> b!7192144 (= e!4318979 e!4318980)))

(declare-fun res!2928216 () Bool)

(assert (=> b!7192144 (=> (not res!2928216) (not e!4318980))))

(assert (=> b!7192144 (= res!2928216 (dynLambda!28388 lambda!437910 (h!76141 (exprs!7815 (h!76143 res!2927981)))))))

(declare-fun b!7192145 () Bool)

(assert (=> b!7192145 (= e!4318980 (forall!17191 (t!383840 (exprs!7815 (h!76143 res!2927981))) lambda!437910))))

(assert (= (and d!2240472 (not res!2928215)) b!7192144))

(assert (= (and b!7192144 res!2928216) b!7192145))

(declare-fun b_lambda!275645 () Bool)

(assert (=> (not b_lambda!275645) (not b!7192144)))

(declare-fun m!7887162 () Bool)

(assert (=> b!7192144 m!7887162))

(declare-fun m!7887164 () Bool)

(assert (=> b!7192145 m!7887164))

(assert (=> d!2240360 d!2240472))

(declare-fun d!2240474 () Bool)

(declare-fun res!2928217 () Bool)

(declare-fun e!4318981 () Bool)

(assert (=> d!2240474 (=> res!2928217 e!4318981)))

(assert (=> d!2240474 (= res!2928217 ((_ is Nil!69695) (t!383842 (t!383842 lt!2571244))))))

(assert (=> d!2240474 (= (noDuplicate!2896 (t!383842 (t!383842 lt!2571244))) e!4318981)))

(declare-fun b!7192146 () Bool)

(declare-fun e!4318982 () Bool)

(assert (=> b!7192146 (= e!4318981 e!4318982)))

(declare-fun res!2928218 () Bool)

(assert (=> b!7192146 (=> (not res!2928218) (not e!4318982))))

(assert (=> b!7192146 (= res!2928218 (not (contains!20725 (t!383842 (t!383842 (t!383842 lt!2571244))) (h!76143 (t!383842 (t!383842 lt!2571244))))))))

(declare-fun b!7192147 () Bool)

(assert (=> b!7192147 (= e!4318982 (noDuplicate!2896 (t!383842 (t!383842 (t!383842 lt!2571244)))))))

(assert (= (and d!2240474 (not res!2928217)) b!7192146))

(assert (= (and b!7192146 res!2928218) b!7192147))

(declare-fun m!7887166 () Bool)

(assert (=> b!7192146 m!7887166))

(declare-fun m!7887168 () Bool)

(assert (=> b!7192147 m!7887168))

(assert (=> b!7191699 d!2240474))

(declare-fun d!2240476 () Bool)

(declare-fun lt!2571288 () Bool)

(assert (=> d!2240476 (= lt!2571288 (select (content!14325 (t!383842 (t!383842 lt!2571231))) (h!76143 (t!383842 lt!2571231))))))

(declare-fun e!4318983 () Bool)

(assert (=> d!2240476 (= lt!2571288 e!4318983)))

(declare-fun res!2928220 () Bool)

(assert (=> d!2240476 (=> (not res!2928220) (not e!4318983))))

(assert (=> d!2240476 (= res!2928220 ((_ is Cons!69695) (t!383842 (t!383842 lt!2571231))))))

(assert (=> d!2240476 (= (contains!20725 (t!383842 (t!383842 lt!2571231)) (h!76143 (t!383842 lt!2571231))) lt!2571288)))

(declare-fun b!7192148 () Bool)

(declare-fun e!4318984 () Bool)

(assert (=> b!7192148 (= e!4318983 e!4318984)))

(declare-fun res!2928219 () Bool)

(assert (=> b!7192148 (=> res!2928219 e!4318984)))

(assert (=> b!7192148 (= res!2928219 (= (h!76143 (t!383842 (t!383842 lt!2571231))) (h!76143 (t!383842 lt!2571231))))))

(declare-fun b!7192149 () Bool)

(assert (=> b!7192149 (= e!4318984 (contains!20725 (t!383842 (t!383842 (t!383842 lt!2571231))) (h!76143 (t!383842 lt!2571231))))))

(assert (= (and d!2240476 res!2928220) b!7192148))

(assert (= (and b!7192148 (not res!2928219)) b!7192149))

(assert (=> d!2240476 m!7886954))

(declare-fun m!7887170 () Bool)

(assert (=> d!2240476 m!7887170))

(declare-fun m!7887172 () Bool)

(assert (=> b!7192149 m!7887172))

(assert (=> b!7191572 d!2240476))

(declare-fun d!2240478 () Bool)

(assert (=> d!2240478 (= (isEmpty!40230 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))) ((_ is Nil!69693) (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(assert (=> b!7191920 d!2240478))

(declare-fun bs!1899746 () Bool)

(declare-fun d!2240480 () Bool)

(assert (= bs!1899746 (and d!2240480 d!2240146)))

(declare-fun lambda!437918 () Int)

(assert (=> bs!1899746 (= lambda!437918 lambda!437881)))

(declare-fun bs!1899747 () Bool)

(assert (= bs!1899747 (and d!2240480 d!2240296)))

(assert (=> bs!1899747 (= lambda!437918 lambda!437903)))

(declare-fun bs!1899748 () Bool)

(assert (= bs!1899748 (and d!2240480 d!2240360)))

(assert (=> bs!1899748 (= lambda!437918 lambda!437910)))

(declare-fun bs!1899749 () Bool)

(assert (= bs!1899749 (and d!2240480 d!2240284)))

(assert (=> bs!1899749 (= lambda!437918 lambda!437902)))

(declare-fun bs!1899750 () Bool)

(assert (= bs!1899750 (and d!2240480 d!2240088)))

(assert (=> bs!1899750 (= lambda!437918 lambda!437865)))

(declare-fun bs!1899751 () Bool)

(assert (= bs!1899751 (and d!2240480 d!2240310)))

(assert (=> bs!1899751 (= lambda!437918 lambda!437904)))

(declare-fun bs!1899752 () Bool)

(assert (= bs!1899752 (and d!2240480 d!2240078)))

(assert (=> bs!1899752 (= lambda!437918 lambda!437864)))

(declare-fun bs!1899753 () Bool)

(assert (= bs!1899753 (and d!2240480 d!2240148)))

(assert (=> bs!1899753 (= lambda!437918 lambda!437884)))

(declare-fun bs!1899754 () Bool)

(assert (= bs!1899754 (and d!2240480 d!2240392)))

(assert (=> bs!1899754 (= lambda!437918 lambda!437915)))

(declare-fun bs!1899755 () Bool)

(assert (= bs!1899755 (and d!2240480 d!2240334)))

(assert (=> bs!1899755 (= lambda!437918 lambda!437905)))

(declare-fun bs!1899756 () Bool)

(assert (= bs!1899756 (and d!2240480 d!2240254)))

(assert (=> bs!1899756 (= lambda!437918 lambda!437893)))

(declare-fun bs!1899757 () Bool)

(assert (= bs!1899757 (and d!2240480 d!2240170)))

(assert (=> bs!1899757 (= lambda!437918 lambda!437888)))

(declare-fun bs!1899758 () Bool)

(assert (= bs!1899758 (and d!2240480 d!2240278)))

(assert (=> bs!1899758 (= lambda!437918 lambda!437897)))

(declare-fun bs!1899759 () Bool)

(assert (= bs!1899759 (and d!2240480 d!2240262)))

(assert (=> bs!1899759 (= lambda!437918 lambda!437895)))

(declare-fun bs!1899760 () Bool)

(assert (= bs!1899760 (and d!2240480 d!2240400)))

(assert (=> bs!1899760 (= lambda!437918 lambda!437916)))

(declare-fun e!4318987 () Bool)

(assert (=> d!2240480 e!4318987))

(declare-fun res!2928221 () Bool)

(assert (=> d!2240480 (=> (not res!2928221) (not e!4318987))))

(declare-fun lt!2571289 () Regex!18363)

(assert (=> d!2240480 (= res!2928221 (validRegex!9478 lt!2571289))))

(declare-fun e!4318988 () Regex!18363)

(assert (=> d!2240480 (= lt!2571289 e!4318988)))

(declare-fun c!1338715 () Bool)

(declare-fun e!4318989 () Bool)

(assert (=> d!2240480 (= c!1338715 e!4318989)))

(declare-fun res!2928222 () Bool)

(assert (=> d!2240480 (=> (not res!2928222) (not e!4318989))))

(assert (=> d!2240480 (= res!2928222 ((_ is Cons!69693) (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(assert (=> d!2240480 (forall!17191 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530)))) lambda!437918)))

(assert (=> d!2240480 (= (generalisedConcat!2468 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))) lt!2571289)))

(declare-fun b!7192150 () Bool)

(declare-fun e!4318985 () Regex!18363)

(assert (=> b!7192150 (= e!4318985 EmptyExpr!18363)))

(declare-fun b!7192151 () Bool)

(assert (=> b!7192151 (= e!4318988 e!4318985)))

(declare-fun c!1338714 () Bool)

(assert (=> b!7192151 (= c!1338714 ((_ is Cons!69693) (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(declare-fun b!7192152 () Bool)

(declare-fun e!4318990 () Bool)

(declare-fun e!4318986 () Bool)

(assert (=> b!7192152 (= e!4318990 e!4318986)))

(declare-fun c!1338713 () Bool)

(assert (=> b!7192152 (= c!1338713 (isEmpty!40230 (tail!14082 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530)))))))))

(declare-fun b!7192153 () Bool)

(assert (=> b!7192153 (= e!4318989 (isEmpty!40230 (t!383840 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530)))))))))

(declare-fun b!7192154 () Bool)

(assert (=> b!7192154 (= e!4318990 (isEmptyExpr!2097 lt!2571289))))

(declare-fun b!7192155 () Bool)

(assert (=> b!7192155 (= e!4318986 (= lt!2571289 (head!14689 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530)))))))))

(declare-fun b!7192156 () Bool)

(assert (=> b!7192156 (= e!4318988 (h!76141 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(declare-fun b!7192157 () Bool)

(assert (=> b!7192157 (= e!4318986 (isConcat!1619 lt!2571289))))

(declare-fun b!7192158 () Bool)

(assert (=> b!7192158 (= e!4318987 e!4318990)))

(declare-fun c!1338716 () Bool)

(assert (=> b!7192158 (= c!1338716 (isEmpty!40230 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(declare-fun b!7192159 () Bool)

(assert (=> b!7192159 (= e!4318985 (Concat!27208 (h!76141 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))) (generalisedConcat!2468 (t!383840 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))))

(assert (= (and d!2240480 res!2928222) b!7192153))

(assert (= (and d!2240480 c!1338715) b!7192156))

(assert (= (and d!2240480 (not c!1338715)) b!7192151))

(assert (= (and b!7192151 c!1338714) b!7192159))

(assert (= (and b!7192151 (not c!1338714)) b!7192150))

(assert (= (and d!2240480 res!2928221) b!7192158))

(assert (= (and b!7192158 c!1338716) b!7192154))

(assert (= (and b!7192158 (not c!1338716)) b!7192152))

(assert (= (and b!7192152 c!1338713) b!7192155))

(assert (= (and b!7192152 (not c!1338713)) b!7192157))

(declare-fun m!7887174 () Bool)

(assert (=> b!7192153 m!7887174))

(declare-fun m!7887176 () Bool)

(assert (=> b!7192152 m!7887176))

(assert (=> b!7192152 m!7887176))

(declare-fun m!7887178 () Bool)

(assert (=> b!7192152 m!7887178))

(declare-fun m!7887180 () Bool)

(assert (=> b!7192157 m!7887180))

(declare-fun m!7887182 () Bool)

(assert (=> d!2240480 m!7887182))

(declare-fun m!7887184 () Bool)

(assert (=> d!2240480 m!7887184))

(declare-fun m!7887186 () Bool)

(assert (=> b!7192159 m!7887186))

(assert (=> b!7192158 m!7886746))

(declare-fun m!7887188 () Bool)

(assert (=> b!7192155 m!7887188))

(declare-fun m!7887190 () Bool)

(assert (=> b!7192154 m!7887190))

(assert (=> b!7191681 d!2240480))

(declare-fun bm!655765 () Bool)

(declare-fun call!655773 () (InoxSet Context!14630))

(declare-fun call!655772 () (InoxSet Context!14630))

(assert (=> bm!655765 (= call!655773 call!655772)))

(declare-fun c!1338720 () Bool)

(declare-fun d!2240482 () Bool)

(assert (=> d!2240482 (= c!1338720 (and ((_ is ElementMatch!18363) (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))) (= (c!1338487 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))) lt!2571215)))))

(declare-fun e!4318992 () (InoxSet Context!14630))

(assert (=> d!2240482 (= (derivationStepZipperDown!2516 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (ite (or c!1338647 c!1338644) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655719)) lt!2571215) e!4318992)))

(declare-fun b!7192160 () Bool)

(declare-fun e!4318994 () (InoxSet Context!14630))

(declare-fun call!655770 () (InoxSet Context!14630))

(assert (=> b!7192160 (= e!4318994 ((_ map or) call!655770 call!655773))))

(declare-fun b!7192161 () Bool)

(declare-fun e!4318996 () (InoxSet Context!14630))

(declare-fun call!655774 () (InoxSet Context!14630))

(assert (=> b!7192161 (= e!4318996 call!655774)))

(declare-fun bm!655766 () Bool)

(declare-fun call!655775 () List!69817)

(declare-fun call!655771 () List!69817)

(assert (=> bm!655766 (= call!655775 call!655771)))

(declare-fun b!7192162 () Bool)

(assert (=> b!7192162 (= e!4318992 (store ((as const (Array Context!14630 Bool)) false) (ite (or c!1338647 c!1338644) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655719)) true))))

(declare-fun b!7192163 () Bool)

(declare-fun c!1338719 () Bool)

(assert (=> b!7192163 (= c!1338719 ((_ is Star!18363) (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))))

(declare-fun e!4318993 () (InoxSet Context!14630))

(assert (=> b!7192163 (= e!4318993 e!4318996)))

(declare-fun b!7192164 () Bool)

(declare-fun c!1338718 () Bool)

(declare-fun e!4318991 () Bool)

(assert (=> b!7192164 (= c!1338718 e!4318991)))

(declare-fun res!2928223 () Bool)

(assert (=> b!7192164 (=> (not res!2928223) (not e!4318991))))

(assert (=> b!7192164 (= res!2928223 ((_ is Concat!27208) (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))))

(declare-fun e!4318995 () (InoxSet Context!14630))

(assert (=> b!7192164 (= e!4318995 e!4318994)))

(declare-fun b!7192165 () Bool)

(assert (=> b!7192165 (= e!4318992 e!4318995)))

(declare-fun c!1338721 () Bool)

(assert (=> b!7192165 (= c!1338721 ((_ is Union!18363) (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))))

(declare-fun b!7192166 () Bool)

(assert (=> b!7192166 (= e!4318994 e!4318993)))

(declare-fun c!1338717 () Bool)

(assert (=> b!7192166 (= c!1338717 ((_ is Concat!27208) (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))))

(declare-fun bm!655767 () Bool)

(assert (=> bm!655767 (= call!655770 (derivationStepZipperDown!2516 (ite c!1338721 (regOne!37239 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))) (regOne!37238 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))) (ite c!1338721 (ite (or c!1338647 c!1338644) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655719)) (Context!14631 call!655771)) lt!2571215))))

(declare-fun bm!655768 () Bool)

(assert (=> bm!655768 (= call!655772 (derivationStepZipperDown!2516 (ite c!1338721 (regTwo!37239 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))) (ite c!1338718 (regTwo!37238 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))) (ite c!1338717 (regOne!37238 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))) (reg!18692 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))) (ite (or c!1338721 c!1338718) (ite (or c!1338647 c!1338644) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655719)) (Context!14631 call!655775)) lt!2571215))))

(declare-fun b!7192167 () Bool)

(assert (=> b!7192167 (= e!4318993 call!655774)))

(declare-fun bm!655769 () Bool)

(assert (=> bm!655769 (= call!655774 call!655773)))

(declare-fun b!7192168 () Bool)

(assert (=> b!7192168 (= e!4318996 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192169 () Bool)

(assert (=> b!7192169 (= e!4318995 ((_ map or) call!655770 call!655772))))

(declare-fun b!7192170 () Bool)

(assert (=> b!7192170 (= e!4318991 (nullable!7785 (regOne!37238 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))))

(declare-fun bm!655770 () Bool)

(assert (=> bm!655770 (= call!655771 ($colon$colon!2846 (exprs!7815 (ite (or c!1338647 c!1338644) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655719))) (ite (or c!1338718 c!1338717) (regTwo!37238 (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))) (ite c!1338647 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338644 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (ite c!1338643 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))))

(assert (= (and d!2240482 c!1338720) b!7192162))

(assert (= (and d!2240482 (not c!1338720)) b!7192165))

(assert (= (and b!7192165 c!1338721) b!7192169))

(assert (= (and b!7192165 (not c!1338721)) b!7192164))

(assert (= (and b!7192164 res!2928223) b!7192170))

(assert (= (and b!7192164 c!1338718) b!7192160))

(assert (= (and b!7192164 (not c!1338718)) b!7192166))

(assert (= (and b!7192166 c!1338717) b!7192167))

(assert (= (and b!7192166 (not c!1338717)) b!7192163))

(assert (= (and b!7192163 c!1338719) b!7192161))

(assert (= (and b!7192163 (not c!1338719)) b!7192168))

(assert (= (or b!7192167 b!7192161) bm!655766))

(assert (= (or b!7192167 b!7192161) bm!655769))

(assert (= (or b!7192160 bm!655769) bm!655765))

(assert (= (or b!7192160 bm!655766) bm!655770))

(assert (= (or b!7192169 bm!655765) bm!655768))

(assert (= (or b!7192169 b!7192160) bm!655767))

(declare-fun m!7887192 () Bool)

(assert (=> bm!655770 m!7887192))

(declare-fun m!7887194 () Bool)

(assert (=> bm!655767 m!7887194))

(declare-fun m!7887196 () Bool)

(assert (=> b!7192162 m!7887196))

(declare-fun m!7887198 () Bool)

(assert (=> b!7192170 m!7887198))

(declare-fun m!7887200 () Bool)

(assert (=> bm!655768 m!7887200))

(assert (=> bm!655712 d!2240482))

(declare-fun b!7192171 () Bool)

(declare-fun e!4318998 () Bool)

(declare-fun call!655777 () Bool)

(assert (=> b!7192171 (= e!4318998 call!655777)))

(declare-fun b!7192172 () Bool)

(declare-fun e!4319003 () Bool)

(declare-fun e!4319002 () Bool)

(assert (=> b!7192172 (= e!4319003 e!4319002)))

(declare-fun c!1338722 () Bool)

(assert (=> b!7192172 (= c!1338722 ((_ is Union!18363) lt!2571268))))

(declare-fun b!7192173 () Bool)

(declare-fun res!2928226 () Bool)

(declare-fun e!4318999 () Bool)

(assert (=> b!7192173 (=> res!2928226 e!4318999)))

(assert (=> b!7192173 (= res!2928226 (not ((_ is Concat!27208) lt!2571268)))))

(assert (=> b!7192173 (= e!4319002 e!4318999)))

(declare-fun b!7192174 () Bool)

(declare-fun res!2928225 () Bool)

(declare-fun e!4318997 () Bool)

(assert (=> b!7192174 (=> (not res!2928225) (not e!4318997))))

(declare-fun call!655776 () Bool)

(assert (=> b!7192174 (= res!2928225 call!655776)))

(assert (=> b!7192174 (= e!4319002 e!4318997)))

(declare-fun b!7192175 () Bool)

(assert (=> b!7192175 (= e!4318999 e!4318998)))

(declare-fun res!2928228 () Bool)

(assert (=> b!7192175 (=> (not res!2928228) (not e!4318998))))

(assert (=> b!7192175 (= res!2928228 call!655776)))

(declare-fun b!7192176 () Bool)

(declare-fun e!4319001 () Bool)

(assert (=> b!7192176 (= e!4319003 e!4319001)))

(declare-fun res!2928224 () Bool)

(assert (=> b!7192176 (= res!2928224 (not (nullable!7785 (reg!18692 lt!2571268))))))

(assert (=> b!7192176 (=> (not res!2928224) (not e!4319001))))

(declare-fun b!7192177 () Bool)

(assert (=> b!7192177 (= e!4318997 call!655777)))

(declare-fun d!2240484 () Bool)

(declare-fun res!2928227 () Bool)

(declare-fun e!4319000 () Bool)

(assert (=> d!2240484 (=> res!2928227 e!4319000)))

(assert (=> d!2240484 (= res!2928227 ((_ is ElementMatch!18363) lt!2571268))))

(assert (=> d!2240484 (= (validRegex!9478 lt!2571268) e!4319000)))

(declare-fun bm!655771 () Bool)

(declare-fun call!655778 () Bool)

(declare-fun c!1338723 () Bool)

(assert (=> bm!655771 (= call!655778 (validRegex!9478 (ite c!1338723 (reg!18692 lt!2571268) (ite c!1338722 (regTwo!37239 lt!2571268) (regTwo!37238 lt!2571268)))))))

(declare-fun bm!655772 () Bool)

(assert (=> bm!655772 (= call!655776 (validRegex!9478 (ite c!1338722 (regOne!37239 lt!2571268) (regOne!37238 lt!2571268))))))

(declare-fun bm!655773 () Bool)

(assert (=> bm!655773 (= call!655777 call!655778)))

(declare-fun b!7192178 () Bool)

(assert (=> b!7192178 (= e!4319000 e!4319003)))

(assert (=> b!7192178 (= c!1338723 ((_ is Star!18363) lt!2571268))))

(declare-fun b!7192179 () Bool)

(assert (=> b!7192179 (= e!4319001 call!655778)))

(assert (= (and d!2240484 (not res!2928227)) b!7192178))

(assert (= (and b!7192178 c!1338723) b!7192176))

(assert (= (and b!7192178 (not c!1338723)) b!7192172))

(assert (= (and b!7192176 res!2928224) b!7192179))

(assert (= (and b!7192172 c!1338722) b!7192174))

(assert (= (and b!7192172 (not c!1338722)) b!7192173))

(assert (= (and b!7192174 res!2928225) b!7192177))

(assert (= (and b!7192173 (not res!2928226)) b!7192175))

(assert (= (and b!7192175 res!2928228) b!7192171))

(assert (= (or b!7192174 b!7192175) bm!655772))

(assert (= (or b!7192177 b!7192171) bm!655773))

(assert (= (or b!7192179 bm!655773) bm!655771))

(declare-fun m!7887202 () Bool)

(assert (=> b!7192176 m!7887202))

(declare-fun m!7887204 () Bool)

(assert (=> bm!655771 m!7887204))

(declare-fun m!7887206 () Bool)

(assert (=> bm!655772 m!7887206))

(assert (=> d!2240284 d!2240484))

(declare-fun d!2240486 () Bool)

(declare-fun res!2928229 () Bool)

(declare-fun e!4319004 () Bool)

(assert (=> d!2240486 (=> res!2928229 e!4319004)))

(assert (=> d!2240486 (= res!2928229 ((_ is Nil!69693) (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(assert (=> d!2240486 (= (forall!17191 (exprs!7815 (h!76143 (toList!11306 z!3530))) lambda!437902) e!4319004)))

(declare-fun b!7192180 () Bool)

(declare-fun e!4319005 () Bool)

(assert (=> b!7192180 (= e!4319004 e!4319005)))

(declare-fun res!2928230 () Bool)

(assert (=> b!7192180 (=> (not res!2928230) (not e!4319005))))

(assert (=> b!7192180 (= res!2928230 (dynLambda!28388 lambda!437902 (h!76141 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(declare-fun b!7192181 () Bool)

(assert (=> b!7192181 (= e!4319005 (forall!17191 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530)))) lambda!437902))))

(assert (= (and d!2240486 (not res!2928229)) b!7192180))

(assert (= (and b!7192180 res!2928230) b!7192181))

(declare-fun b_lambda!275647 () Bool)

(assert (=> (not b_lambda!275647) (not b!7192180)))

(declare-fun m!7887208 () Bool)

(assert (=> b!7192180 m!7887208))

(declare-fun m!7887210 () Bool)

(assert (=> b!7192181 m!7887210))

(assert (=> d!2240284 d!2240486))

(declare-fun d!2240488 () Bool)

(declare-fun res!2928231 () Bool)

(declare-fun e!4319006 () Bool)

(assert (=> d!2240488 (=> res!2928231 e!4319006)))

(assert (=> d!2240488 (= res!2928231 ((_ is Nil!69693) (t!383840 lt!2571259)))))

(assert (=> d!2240488 (= (forall!17191 (t!383840 lt!2571259) lambda!437884) e!4319006)))

(declare-fun b!7192182 () Bool)

(declare-fun e!4319007 () Bool)

(assert (=> b!7192182 (= e!4319006 e!4319007)))

(declare-fun res!2928232 () Bool)

(assert (=> b!7192182 (=> (not res!2928232) (not e!4319007))))

(assert (=> b!7192182 (= res!2928232 (dynLambda!28388 lambda!437884 (h!76141 (t!383840 lt!2571259))))))

(declare-fun b!7192183 () Bool)

(assert (=> b!7192183 (= e!4319007 (forall!17191 (t!383840 (t!383840 lt!2571259)) lambda!437884))))

(assert (= (and d!2240488 (not res!2928231)) b!7192182))

(assert (= (and b!7192182 res!2928232) b!7192183))

(declare-fun b_lambda!275649 () Bool)

(assert (=> (not b_lambda!275649) (not b!7192182)))

(declare-fun m!7887212 () Bool)

(assert (=> b!7192182 m!7887212))

(declare-fun m!7887214 () Bool)

(assert (=> b!7192183 m!7887214))

(assert (=> b!7191577 d!2240488))

(declare-fun b!7192184 () Bool)

(declare-fun e!4319009 () Bool)

(declare-fun call!655780 () Bool)

(assert (=> b!7192184 (= e!4319009 call!655780)))

(declare-fun b!7192185 () Bool)

(declare-fun e!4319014 () Bool)

(declare-fun e!4319013 () Bool)

(assert (=> b!7192185 (= e!4319014 e!4319013)))

(declare-fun c!1338724 () Bool)

(assert (=> b!7192185 (= c!1338724 ((_ is Union!18363) (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))))

(declare-fun b!7192186 () Bool)

(declare-fun res!2928235 () Bool)

(declare-fun e!4319010 () Bool)

(assert (=> b!7192186 (=> res!2928235 e!4319010)))

(assert (=> b!7192186 (= res!2928235 (not ((_ is Concat!27208) (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))))

(assert (=> b!7192186 (= e!4319013 e!4319010)))

(declare-fun b!7192187 () Bool)

(declare-fun res!2928234 () Bool)

(declare-fun e!4319008 () Bool)

(assert (=> b!7192187 (=> (not res!2928234) (not e!4319008))))

(declare-fun call!655779 () Bool)

(assert (=> b!7192187 (= res!2928234 call!655779)))

(assert (=> b!7192187 (= e!4319013 e!4319008)))

(declare-fun b!7192188 () Bool)

(assert (=> b!7192188 (= e!4319010 e!4319009)))

(declare-fun res!2928237 () Bool)

(assert (=> b!7192188 (=> (not res!2928237) (not e!4319009))))

(assert (=> b!7192188 (= res!2928237 call!655779)))

(declare-fun b!7192189 () Bool)

(declare-fun e!4319012 () Bool)

(assert (=> b!7192189 (= e!4319014 e!4319012)))

(declare-fun res!2928233 () Bool)

(assert (=> b!7192189 (= res!2928233 (not (nullable!7785 (reg!18692 (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))))))

(assert (=> b!7192189 (=> (not res!2928233) (not e!4319012))))

(declare-fun b!7192190 () Bool)

(assert (=> b!7192190 (= e!4319008 call!655780)))

(declare-fun d!2240490 () Bool)

(declare-fun res!2928236 () Bool)

(declare-fun e!4319011 () Bool)

(assert (=> d!2240490 (=> res!2928236 e!4319011)))

(assert (=> d!2240490 (= res!2928236 ((_ is ElementMatch!18363) (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))))

(assert (=> d!2240490 (= (validRegex!9478 (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))) e!4319011)))

(declare-fun c!1338725 () Bool)

(declare-fun call!655781 () Bool)

(declare-fun bm!655774 () Bool)

(assert (=> bm!655774 (= call!655781 (validRegex!9478 (ite c!1338725 (reg!18692 (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))) (ite c!1338724 (regTwo!37239 (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))) (regTwo!37238 (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))))))

(declare-fun bm!655775 () Bool)

(assert (=> bm!655775 (= call!655779 (validRegex!9478 (ite c!1338724 (regOne!37239 (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))) (regOne!37238 (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))))))

(declare-fun bm!655776 () Bool)

(assert (=> bm!655776 (= call!655780 call!655781)))

(declare-fun b!7192191 () Bool)

(assert (=> b!7192191 (= e!4319011 e!4319014)))

(assert (=> b!7192191 (= c!1338725 ((_ is Star!18363) (ite c!1338648 (regOne!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regOne!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))))

(declare-fun b!7192192 () Bool)

(assert (=> b!7192192 (= e!4319012 call!655781)))

(assert (= (and d!2240490 (not res!2928236)) b!7192191))

(assert (= (and b!7192191 c!1338725) b!7192189))

(assert (= (and b!7192191 (not c!1338725)) b!7192185))

(assert (= (and b!7192189 res!2928233) b!7192192))

(assert (= (and b!7192185 c!1338724) b!7192187))

(assert (= (and b!7192185 (not c!1338724)) b!7192186))

(assert (= (and b!7192187 res!2928234) b!7192190))

(assert (= (and b!7192186 (not res!2928235)) b!7192188))

(assert (= (and b!7192188 res!2928237) b!7192184))

(assert (= (or b!7192187 b!7192188) bm!655775))

(assert (= (or b!7192190 b!7192184) bm!655776))

(assert (= (or b!7192192 bm!655776) bm!655774))

(declare-fun m!7887216 () Bool)

(assert (=> b!7192189 m!7887216))

(declare-fun m!7887218 () Bool)

(assert (=> bm!655774 m!7887218))

(declare-fun m!7887220 () Bool)

(assert (=> bm!655775 m!7887220))

(assert (=> bm!655716 d!2240490))

(declare-fun bs!1899761 () Bool)

(declare-fun d!2240492 () Bool)

(assert (= bs!1899761 (and d!2240492 d!2240266)))

(declare-fun lambda!437919 () Int)

(assert (=> bs!1899761 (= (= lambda!437891 lambda!437861) (= lambda!437919 lambda!437896))))

(declare-fun bs!1899762 () Bool)

(assert (= bs!1899762 (and d!2240492 b!7191090)))

(assert (=> bs!1899762 (not (= lambda!437919 lambda!437845))))

(declare-fun bs!1899763 () Bool)

(assert (= bs!1899763 (and d!2240492 d!2240074)))

(assert (=> bs!1899763 (not (= lambda!437919 lambda!437861))))

(declare-fun bs!1899764 () Bool)

(assert (= bs!1899764 (and d!2240492 d!2240162)))

(assert (=> bs!1899764 (= (= lambda!437891 lambda!437845) (= lambda!437919 lambda!437887))))

(declare-fun bs!1899765 () Bool)

(assert (= bs!1899765 (and d!2240492 d!2240190)))

(assert (=> bs!1899765 (not (= lambda!437919 lambda!437891))))

(assert (=> d!2240492 true))

(assert (=> d!2240492 (< (dynLambda!28386 order!28709 lambda!437891) (dynLambda!28386 order!28709 lambda!437919))))

(assert (=> d!2240492 (= (exists!4087 (toList!11306 z!3530) lambda!437891) (not (forall!17193 (toList!11306 z!3530) lambda!437919)))))

(declare-fun bs!1899766 () Bool)

(assert (= bs!1899766 d!2240492))

(assert (=> bs!1899766 m!7886230))

(declare-fun m!7887222 () Bool)

(assert (=> bs!1899766 m!7887222))

(assert (=> d!2240276 d!2240492))

(assert (=> d!2240276 d!2240058))

(declare-fun d!2240494 () Bool)

(declare-fun res!2928238 () Bool)

(assert (=> d!2240494 (= res!2928238 (exists!4087 (toList!11306 z!3530) lambda!437891))))

(assert (=> d!2240494 true))

(assert (=> d!2240494 (= (choose!55412 z!3530 lambda!437891) res!2928238)))

(declare-fun bs!1899767 () Bool)

(assert (= bs!1899767 d!2240494))

(assert (=> bs!1899767 m!7886230))

(assert (=> bs!1899767 m!7886230))

(assert (=> bs!1899767 m!7886686))

(assert (=> d!2240276 d!2240494))

(declare-fun d!2240496 () Bool)

(assert (=> d!2240496 (= (head!14689 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))) (h!76141 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(assert (=> b!7191924 d!2240496))

(declare-fun bm!655777 () Bool)

(declare-fun call!655785 () (InoxSet Context!14630))

(declare-fun call!655784 () (InoxSet Context!14630))

(assert (=> bm!655777 (= call!655785 call!655784)))

(declare-fun d!2240498 () Bool)

(declare-fun c!1338729 () Bool)

(assert (=> d!2240498 (= c!1338729 (and ((_ is ElementMatch!18363) (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))) (= (c!1338487 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))) lt!2571215)))))

(declare-fun e!4319016 () (InoxSet Context!14630))

(assert (=> d!2240498 (= (derivationStepZipperDown!2516 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))) (ite (or c!1338666 c!1338663) (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655737)) lt!2571215) e!4319016)))

(declare-fun b!7192193 () Bool)

(declare-fun e!4319018 () (InoxSet Context!14630))

(declare-fun call!655782 () (InoxSet Context!14630))

(assert (=> b!7192193 (= e!4319018 ((_ map or) call!655782 call!655785))))

(declare-fun b!7192194 () Bool)

(declare-fun e!4319020 () (InoxSet Context!14630))

(declare-fun call!655786 () (InoxSet Context!14630))

(assert (=> b!7192194 (= e!4319020 call!655786)))

(declare-fun bm!655778 () Bool)

(declare-fun call!655787 () List!69817)

(declare-fun call!655783 () List!69817)

(assert (=> bm!655778 (= call!655787 call!655783)))

(declare-fun b!7192195 () Bool)

(assert (=> b!7192195 (= e!4319016 (store ((as const (Array Context!14630 Bool)) false) (ite (or c!1338666 c!1338663) (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655737)) true))))

(declare-fun b!7192196 () Bool)

(declare-fun c!1338728 () Bool)

(assert (=> b!7192196 (= c!1338728 ((_ is Star!18363) (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))))))

(declare-fun e!4319017 () (InoxSet Context!14630))

(assert (=> b!7192196 (= e!4319017 e!4319020)))

(declare-fun b!7192197 () Bool)

(declare-fun c!1338727 () Bool)

(declare-fun e!4319015 () Bool)

(assert (=> b!7192197 (= c!1338727 e!4319015)))

(declare-fun res!2928239 () Bool)

(assert (=> b!7192197 (=> (not res!2928239) (not e!4319015))))

(assert (=> b!7192197 (= res!2928239 ((_ is Concat!27208) (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))))))

(declare-fun e!4319019 () (InoxSet Context!14630))

(assert (=> b!7192197 (= e!4319019 e!4319018)))

(declare-fun b!7192198 () Bool)

(assert (=> b!7192198 (= e!4319016 e!4319019)))

(declare-fun c!1338730 () Bool)

(assert (=> b!7192198 (= c!1338730 ((_ is Union!18363) (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))))))

(declare-fun b!7192199 () Bool)

(assert (=> b!7192199 (= e!4319018 e!4319017)))

(declare-fun c!1338726 () Bool)

(assert (=> b!7192199 (= c!1338726 ((_ is Concat!27208) (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))))))

(declare-fun bm!655779 () Bool)

(assert (=> bm!655779 (= call!655782 (derivationStepZipperDown!2516 (ite c!1338730 (regOne!37239 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))) (regOne!37238 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))) (ite c!1338730 (ite (or c!1338666 c!1338663) (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655737)) (Context!14631 call!655783)) lt!2571215))))

(declare-fun bm!655780 () Bool)

(assert (=> bm!655780 (= call!655784 (derivationStepZipperDown!2516 (ite c!1338730 (regTwo!37239 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))) (ite c!1338727 (regTwo!37238 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))) (ite c!1338726 (regOne!37238 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))) (reg!18692 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))))) (ite (or c!1338730 c!1338727) (ite (or c!1338666 c!1338663) (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655737)) (Context!14631 call!655787)) lt!2571215))))

(declare-fun b!7192200 () Bool)

(assert (=> b!7192200 (= e!4319017 call!655786)))

(declare-fun bm!655781 () Bool)

(assert (=> bm!655781 (= call!655786 call!655785)))

(declare-fun b!7192201 () Bool)

(assert (=> b!7192201 (= e!4319020 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192202 () Bool)

(assert (=> b!7192202 (= e!4319019 ((_ map or) call!655782 call!655784))))

(declare-fun b!7192203 () Bool)

(assert (=> b!7192203 (= e!4319015 (nullable!7785 (regOne!37238 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))))))

(declare-fun bm!655782 () Bool)

(assert (=> bm!655782 (= call!655783 ($colon$colon!2846 (exprs!7815 (ite (or c!1338666 c!1338663) (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655737))) (ite (or c!1338727 c!1338726) (regTwo!37238 (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))) (ite c!1338666 (regTwo!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338663 (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338662 (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))))))

(assert (= (and d!2240498 c!1338729) b!7192195))

(assert (= (and d!2240498 (not c!1338729)) b!7192198))

(assert (= (and b!7192198 c!1338730) b!7192202))

(assert (= (and b!7192198 (not c!1338730)) b!7192197))

(assert (= (and b!7192197 res!2928239) b!7192203))

(assert (= (and b!7192197 c!1338727) b!7192193))

(assert (= (and b!7192197 (not c!1338727)) b!7192199))

(assert (= (and b!7192199 c!1338726) b!7192200))

(assert (= (and b!7192199 (not c!1338726)) b!7192196))

(assert (= (and b!7192196 c!1338728) b!7192194))

(assert (= (and b!7192196 (not c!1338728)) b!7192201))

(assert (= (or b!7192200 b!7192194) bm!655778))

(assert (= (or b!7192200 b!7192194) bm!655781))

(assert (= (or b!7192193 bm!655781) bm!655777))

(assert (= (or b!7192193 bm!655778) bm!655782))

(assert (= (or b!7192202 bm!655777) bm!655780))

(assert (= (or b!7192202 b!7192193) bm!655779))

(declare-fun m!7887224 () Bool)

(assert (=> bm!655782 m!7887224))

(declare-fun m!7887226 () Bool)

(assert (=> bm!655779 m!7887226))

(declare-fun m!7887228 () Bool)

(assert (=> b!7192195 m!7887228))

(declare-fun m!7887230 () Bool)

(assert (=> b!7192203 m!7887230))

(declare-fun m!7887232 () Bool)

(assert (=> bm!655780 m!7887232))

(assert (=> bm!655730 d!2240498))

(declare-fun d!2240500 () Bool)

(declare-fun lt!2571290 () Bool)

(assert (=> d!2240500 (= lt!2571290 (select (content!14325 (t!383842 res!2927981)) (h!76143 res!2927981)))))

(declare-fun e!4319021 () Bool)

(assert (=> d!2240500 (= lt!2571290 e!4319021)))

(declare-fun res!2928241 () Bool)

(assert (=> d!2240500 (=> (not res!2928241) (not e!4319021))))

(assert (=> d!2240500 (= res!2928241 ((_ is Cons!69695) (t!383842 res!2927981)))))

(assert (=> d!2240500 (= (contains!20725 (t!383842 res!2927981) (h!76143 res!2927981)) lt!2571290)))

(declare-fun b!7192204 () Bool)

(declare-fun e!4319022 () Bool)

(assert (=> b!7192204 (= e!4319021 e!4319022)))

(declare-fun res!2928240 () Bool)

(assert (=> b!7192204 (=> res!2928240 e!4319022)))

(assert (=> b!7192204 (= res!2928240 (= (h!76143 (t!383842 res!2927981)) (h!76143 res!2927981)))))

(declare-fun b!7192205 () Bool)

(assert (=> b!7192205 (= e!4319022 (contains!20725 (t!383842 (t!383842 res!2927981)) (h!76143 res!2927981)))))

(assert (= (and d!2240500 res!2928241) b!7192204))

(assert (= (and b!7192204 (not res!2928240)) b!7192205))

(assert (=> d!2240500 m!7886906))

(declare-fun m!7887234 () Bool)

(assert (=> d!2240500 m!7887234))

(declare-fun m!7887236 () Bool)

(assert (=> b!7192205 m!7887236))

(assert (=> b!7191702 d!2240500))

(declare-fun b!7192206 () Bool)

(declare-fun e!4319023 () Bool)

(assert (=> b!7192206 (= e!4319023 (nullable!7785 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))))))

(declare-fun b!7192207 () Bool)

(declare-fun e!4319024 () (InoxSet Context!14630))

(declare-fun call!655788 () (InoxSet Context!14630))

(assert (=> b!7192207 (= e!4319024 call!655788)))

(declare-fun d!2240502 () Bool)

(declare-fun c!1338732 () Bool)

(assert (=> d!2240502 (= c!1338732 e!4319023)))

(declare-fun res!2928242 () Bool)

(assert (=> d!2240502 (=> (not res!2928242) (not e!4319023))))

(assert (=> d!2240502 (= res!2928242 ((_ is Cons!69693) (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))))

(declare-fun e!4319025 () (InoxSet Context!14630))

(assert (=> d!2240502 (= (derivationStepZipperUp!2333 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) lt!2571215) e!4319025)))

(declare-fun b!7192208 () Bool)

(assert (=> b!7192208 (= e!4319024 ((as const (Array Context!14630 Bool)) false))))

(declare-fun bm!655783 () Bool)

(assert (=> bm!655783 (= call!655788 (derivationStepZipperDown!2516 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))) lt!2571215))))

(declare-fun b!7192209 () Bool)

(assert (=> b!7192209 (= e!4319025 e!4319024)))

(declare-fun c!1338731 () Bool)

(assert (=> b!7192209 (= c!1338731 ((_ is Cons!69693) (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))))

(declare-fun b!7192210 () Bool)

(assert (=> b!7192210 (= e!4319025 ((_ map or) call!655788 (derivationStepZipperUp!2333 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))) lt!2571215)))))

(assert (= (and d!2240502 res!2928242) b!7192206))

(assert (= (and d!2240502 c!1338732) b!7192210))

(assert (= (and d!2240502 (not c!1338732)) b!7192209))

(assert (= (and b!7192209 c!1338731) b!7192207))

(assert (= (and b!7192209 (not c!1338731)) b!7192208))

(assert (= (or b!7192210 b!7192207) bm!655783))

(declare-fun m!7887238 () Bool)

(assert (=> b!7192206 m!7887238))

(declare-fun m!7887240 () Bool)

(assert (=> bm!655783 m!7887240))

(declare-fun m!7887242 () Bool)

(assert (=> b!7192210 m!7887242))

(assert (=> b!7191712 d!2240502))

(assert (=> b!7191761 d!2240228))

(declare-fun d!2240504 () Bool)

(assert (=> d!2240504 (= ($colon$colon!2846 (exprs!7815 (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672))) (ite (or c!1338663 c!1338662) (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))) (Cons!69693 (ite (or c!1338663 c!1338662) (regTwo!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (exprs!7815 (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)))))))

(assert (=> bm!655732 d!2240504))

(declare-fun d!2240506 () Bool)

(declare-fun res!2928243 () Bool)

(declare-fun e!4319026 () Bool)

(assert (=> d!2240506 (=> res!2928243 e!4319026)))

(assert (=> d!2240506 (= res!2928243 ((_ is Nil!69693) lt!2571269))))

(assert (=> d!2240506 (= (forall!17191 lt!2571269 lambda!437903) e!4319026)))

(declare-fun b!7192211 () Bool)

(declare-fun e!4319027 () Bool)

(assert (=> b!7192211 (= e!4319026 e!4319027)))

(declare-fun res!2928244 () Bool)

(assert (=> b!7192211 (=> (not res!2928244) (not e!4319027))))

(assert (=> b!7192211 (= res!2928244 (dynLambda!28388 lambda!437903 (h!76141 lt!2571269)))))

(declare-fun b!7192212 () Bool)

(assert (=> b!7192212 (= e!4319027 (forall!17191 (t!383840 lt!2571269) lambda!437903))))

(assert (= (and d!2240506 (not res!2928243)) b!7192211))

(assert (= (and b!7192211 res!2928244) b!7192212))

(declare-fun b_lambda!275651 () Bool)

(assert (=> (not b_lambda!275651) (not b!7192211)))

(declare-fun m!7887244 () Bool)

(assert (=> b!7192211 m!7887244))

(declare-fun m!7887246 () Bool)

(assert (=> b!7192212 m!7887246))

(assert (=> d!2240296 d!2240506))

(declare-fun d!2240508 () Bool)

(declare-fun res!2928245 () Bool)

(declare-fun e!4319028 () Bool)

(assert (=> d!2240508 (=> res!2928245 e!4319028)))

(assert (=> d!2240508 (= res!2928245 ((_ is Nil!69693) (t!383840 (exprs!7815 setElem!53251))))))

(assert (=> d!2240508 (= (forall!17191 (t!383840 (exprs!7815 setElem!53251)) lambda!437888) e!4319028)))

(declare-fun b!7192213 () Bool)

(declare-fun e!4319029 () Bool)

(assert (=> b!7192213 (= e!4319028 e!4319029)))

(declare-fun res!2928246 () Bool)

(assert (=> b!7192213 (=> (not res!2928246) (not e!4319029))))

(assert (=> b!7192213 (= res!2928246 (dynLambda!28388 lambda!437888 (h!76141 (t!383840 (exprs!7815 setElem!53251)))))))

(declare-fun b!7192214 () Bool)

(assert (=> b!7192214 (= e!4319029 (forall!17191 (t!383840 (t!383840 (exprs!7815 setElem!53251))) lambda!437888))))

(assert (= (and d!2240508 (not res!2928245)) b!7192213))

(assert (= (and b!7192213 res!2928246) b!7192214))

(declare-fun b_lambda!275653 () Bool)

(assert (=> (not b_lambda!275653) (not b!7192213)))

(declare-fun m!7887248 () Bool)

(assert (=> b!7192213 m!7887248))

(declare-fun m!7887250 () Bool)

(assert (=> b!7192214 m!7887250))

(assert (=> b!7191891 d!2240508))

(declare-fun bs!1899768 () Bool)

(declare-fun d!2240510 () Bool)

(assert (= bs!1899768 (and d!2240510 d!2240146)))

(declare-fun lambda!437920 () Int)

(assert (=> bs!1899768 (= lambda!437920 lambda!437881)))

(declare-fun bs!1899769 () Bool)

(assert (= bs!1899769 (and d!2240510 d!2240296)))

(assert (=> bs!1899769 (= lambda!437920 lambda!437903)))

(declare-fun bs!1899770 () Bool)

(assert (= bs!1899770 (and d!2240510 d!2240360)))

(assert (=> bs!1899770 (= lambda!437920 lambda!437910)))

(declare-fun bs!1899771 () Bool)

(assert (= bs!1899771 (and d!2240510 d!2240284)))

(assert (=> bs!1899771 (= lambda!437920 lambda!437902)))

(declare-fun bs!1899772 () Bool)

(assert (= bs!1899772 (and d!2240510 d!2240088)))

(assert (=> bs!1899772 (= lambda!437920 lambda!437865)))

(declare-fun bs!1899773 () Bool)

(assert (= bs!1899773 (and d!2240510 d!2240310)))

(assert (=> bs!1899773 (= lambda!437920 lambda!437904)))

(declare-fun bs!1899774 () Bool)

(assert (= bs!1899774 (and d!2240510 d!2240078)))

(assert (=> bs!1899774 (= lambda!437920 lambda!437864)))

(declare-fun bs!1899775 () Bool)

(assert (= bs!1899775 (and d!2240510 d!2240148)))

(assert (=> bs!1899775 (= lambda!437920 lambda!437884)))

(declare-fun bs!1899776 () Bool)

(assert (= bs!1899776 (and d!2240510 d!2240392)))

(assert (=> bs!1899776 (= lambda!437920 lambda!437915)))

(declare-fun bs!1899777 () Bool)

(assert (= bs!1899777 (and d!2240510 d!2240254)))

(assert (=> bs!1899777 (= lambda!437920 lambda!437893)))

(declare-fun bs!1899778 () Bool)

(assert (= bs!1899778 (and d!2240510 d!2240170)))

(assert (=> bs!1899778 (= lambda!437920 lambda!437888)))

(declare-fun bs!1899779 () Bool)

(assert (= bs!1899779 (and d!2240510 d!2240334)))

(assert (=> bs!1899779 (= lambda!437920 lambda!437905)))

(declare-fun bs!1899780 () Bool)

(assert (= bs!1899780 (and d!2240510 d!2240480)))

(assert (=> bs!1899780 (= lambda!437920 lambda!437918)))

(declare-fun bs!1899781 () Bool)

(assert (= bs!1899781 (and d!2240510 d!2240278)))

(assert (=> bs!1899781 (= lambda!437920 lambda!437897)))

(declare-fun bs!1899782 () Bool)

(assert (= bs!1899782 (and d!2240510 d!2240262)))

(assert (=> bs!1899782 (= lambda!437920 lambda!437895)))

(declare-fun bs!1899783 () Bool)

(assert (= bs!1899783 (and d!2240510 d!2240400)))

(assert (=> bs!1899783 (= lambda!437920 lambda!437916)))

(assert (=> d!2240510 (= (inv!88929 (h!76143 (t!383842 res!2927981))) (forall!17191 (exprs!7815 (h!76143 (t!383842 res!2927981))) lambda!437920))))

(declare-fun bs!1899784 () Bool)

(assert (= bs!1899784 d!2240510))

(declare-fun m!7887252 () Bool)

(assert (=> bs!1899784 m!7887252))

(assert (=> b!7191987 d!2240510))

(declare-fun d!2240512 () Bool)

(assert (=> d!2240512 (= (head!14689 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))) (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (=> b!7191767 d!2240512))

(declare-fun d!2240514 () Bool)

(declare-fun res!2928247 () Bool)

(declare-fun e!4319030 () Bool)

(assert (=> d!2240514 (=> res!2928247 e!4319030)))

(assert (=> d!2240514 (= res!2928247 ((_ is Nil!69693) (exprs!7815 (h!76143 res!2927985))))))

(assert (=> d!2240514 (= (forall!17191 (exprs!7815 (h!76143 res!2927985)) lambda!437904) e!4319030)))

(declare-fun b!7192215 () Bool)

(declare-fun e!4319031 () Bool)

(assert (=> b!7192215 (= e!4319030 e!4319031)))

(declare-fun res!2928248 () Bool)

(assert (=> b!7192215 (=> (not res!2928248) (not e!4319031))))

(assert (=> b!7192215 (= res!2928248 (dynLambda!28388 lambda!437904 (h!76141 (exprs!7815 (h!76143 res!2927985)))))))

(declare-fun b!7192216 () Bool)

(assert (=> b!7192216 (= e!4319031 (forall!17191 (t!383840 (exprs!7815 (h!76143 res!2927985))) lambda!437904))))

(assert (= (and d!2240514 (not res!2928247)) b!7192215))

(assert (= (and b!7192215 res!2928248) b!7192216))

(declare-fun b_lambda!275655 () Bool)

(assert (=> (not b_lambda!275655) (not b!7192215)))

(declare-fun m!7887254 () Bool)

(assert (=> b!7192215 m!7887254))

(declare-fun m!7887256 () Bool)

(assert (=> b!7192216 m!7887256))

(assert (=> d!2240310 d!2240514))

(declare-fun d!2240516 () Bool)

(assert (=> d!2240516 (= (isEmpty!40230 (tail!14082 (exprs!7815 (h!76143 (toList!11306 z!3530))))) ((_ is Nil!69693) (tail!14082 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(assert (=> b!7191674 d!2240516))

(declare-fun d!2240518 () Bool)

(assert (=> d!2240518 (= (tail!14082 (exprs!7815 (h!76143 (toList!11306 z!3530)))) (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(assert (=> b!7191674 d!2240518))

(declare-fun d!2240520 () Bool)

(assert (=> d!2240520 (= (nullable!7785 (reg!18692 (h!76141 (exprs!7815 empty!2999)))) (nullableFct!3046 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))))

(declare-fun bs!1899785 () Bool)

(assert (= bs!1899785 d!2240520))

(declare-fun m!7887258 () Bool)

(assert (=> bs!1899785 m!7887258))

(assert (=> b!7191535 d!2240520))

(declare-fun d!2240522 () Bool)

(declare-fun res!2928249 () Bool)

(declare-fun e!4319032 () Bool)

(assert (=> d!2240522 (=> res!2928249 e!4319032)))

(assert (=> d!2240522 (= res!2928249 ((_ is Nil!69695) (toList!11306 z!3530)))))

(assert (=> d!2240522 (= (forall!17193 (toList!11306 z!3530) lambda!437896) e!4319032)))

(declare-fun b!7192217 () Bool)

(declare-fun e!4319033 () Bool)

(assert (=> b!7192217 (= e!4319032 e!4319033)))

(declare-fun res!2928250 () Bool)

(assert (=> b!7192217 (=> (not res!2928250) (not e!4319033))))

(assert (=> b!7192217 (= res!2928250 (dynLambda!28389 lambda!437896 (h!76143 (toList!11306 z!3530))))))

(declare-fun b!7192218 () Bool)

(assert (=> b!7192218 (= e!4319033 (forall!17193 (t!383842 (toList!11306 z!3530)) lambda!437896))))

(assert (= (and d!2240522 (not res!2928249)) b!7192217))

(assert (= (and b!7192217 res!2928250) b!7192218))

(declare-fun b_lambda!275657 () Bool)

(assert (=> (not b_lambda!275657) (not b!7192217)))

(declare-fun m!7887260 () Bool)

(assert (=> b!7192217 m!7887260))

(declare-fun m!7887262 () Bool)

(assert (=> b!7192218 m!7887262))

(assert (=> d!2240266 d!2240522))

(declare-fun bs!1899786 () Bool)

(declare-fun d!2240524 () Bool)

(assert (= bs!1899786 (and d!2240524 d!2240146)))

(declare-fun lambda!437921 () Int)

(assert (=> bs!1899786 (= lambda!437921 lambda!437881)))

(declare-fun bs!1899787 () Bool)

(assert (= bs!1899787 (and d!2240524 d!2240296)))

(assert (=> bs!1899787 (= lambda!437921 lambda!437903)))

(declare-fun bs!1899788 () Bool)

(assert (= bs!1899788 (and d!2240524 d!2240360)))

(assert (=> bs!1899788 (= lambda!437921 lambda!437910)))

(declare-fun bs!1899789 () Bool)

(assert (= bs!1899789 (and d!2240524 d!2240284)))

(assert (=> bs!1899789 (= lambda!437921 lambda!437902)))

(declare-fun bs!1899790 () Bool)

(assert (= bs!1899790 (and d!2240524 d!2240088)))

(assert (=> bs!1899790 (= lambda!437921 lambda!437865)))

(declare-fun bs!1899791 () Bool)

(assert (= bs!1899791 (and d!2240524 d!2240510)))

(assert (=> bs!1899791 (= lambda!437921 lambda!437920)))

(declare-fun bs!1899792 () Bool)

(assert (= bs!1899792 (and d!2240524 d!2240310)))

(assert (=> bs!1899792 (= lambda!437921 lambda!437904)))

(declare-fun bs!1899793 () Bool)

(assert (= bs!1899793 (and d!2240524 d!2240078)))

(assert (=> bs!1899793 (= lambda!437921 lambda!437864)))

(declare-fun bs!1899794 () Bool)

(assert (= bs!1899794 (and d!2240524 d!2240148)))

(assert (=> bs!1899794 (= lambda!437921 lambda!437884)))

(declare-fun bs!1899795 () Bool)

(assert (= bs!1899795 (and d!2240524 d!2240392)))

(assert (=> bs!1899795 (= lambda!437921 lambda!437915)))

(declare-fun bs!1899796 () Bool)

(assert (= bs!1899796 (and d!2240524 d!2240254)))

(assert (=> bs!1899796 (= lambda!437921 lambda!437893)))

(declare-fun bs!1899797 () Bool)

(assert (= bs!1899797 (and d!2240524 d!2240170)))

(assert (=> bs!1899797 (= lambda!437921 lambda!437888)))

(declare-fun bs!1899798 () Bool)

(assert (= bs!1899798 (and d!2240524 d!2240334)))

(assert (=> bs!1899798 (= lambda!437921 lambda!437905)))

(declare-fun bs!1899799 () Bool)

(assert (= bs!1899799 (and d!2240524 d!2240480)))

(assert (=> bs!1899799 (= lambda!437921 lambda!437918)))

(declare-fun bs!1899800 () Bool)

(assert (= bs!1899800 (and d!2240524 d!2240278)))

(assert (=> bs!1899800 (= lambda!437921 lambda!437897)))

(declare-fun bs!1899801 () Bool)

(assert (= bs!1899801 (and d!2240524 d!2240262)))

(assert (=> bs!1899801 (= lambda!437921 lambda!437895)))

(declare-fun bs!1899802 () Bool)

(assert (= bs!1899802 (and d!2240524 d!2240400)))

(assert (=> bs!1899802 (= lambda!437921 lambda!437916)))

(declare-fun b!7192219 () Bool)

(declare-fun e!4319036 () Regex!18363)

(assert (=> b!7192219 (= e!4319036 EmptyLang!18363)))

(declare-fun b!7192220 () Bool)

(declare-fun e!4319037 () Bool)

(declare-fun lt!2571291 () Regex!18363)

(assert (=> b!7192220 (= e!4319037 (isEmptyLang!2158 lt!2571291))))

(declare-fun b!7192221 () Bool)

(declare-fun e!4319035 () Regex!18363)

(assert (=> b!7192221 (= e!4319035 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun b!7192222 () Bool)

(declare-fun e!4319034 () Bool)

(assert (=> b!7192222 (= e!4319034 e!4319037)))

(declare-fun c!1338734 () Bool)

(assert (=> b!7192222 (= c!1338734 (isEmpty!40230 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun b!7192223 () Bool)

(declare-fun e!4319039 () Bool)

(assert (=> b!7192223 (= e!4319039 (isUnion!1586 lt!2571291))))

(declare-fun b!7192224 () Bool)

(declare-fun e!4319038 () Bool)

(assert (=> b!7192224 (= e!4319038 (isEmpty!40230 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))))

(declare-fun b!7192225 () Bool)

(assert (=> b!7192225 (= e!4319036 (Union!18363 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))) (generalisedUnion!2780 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))))

(declare-fun b!7192226 () Bool)

(assert (=> b!7192226 (= e!4319037 e!4319039)))

(declare-fun c!1338736 () Bool)

(assert (=> b!7192226 (= c!1338736 (isEmpty!40230 (tail!14082 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))))

(declare-fun b!7192227 () Bool)

(assert (=> b!7192227 (= e!4319035 e!4319036)))

(declare-fun c!1338735 () Bool)

(assert (=> b!7192227 (= c!1338735 ((_ is Cons!69693) (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(assert (=> d!2240524 e!4319034))

(declare-fun res!2928252 () Bool)

(assert (=> d!2240524 (=> (not res!2928252) (not e!4319034))))

(assert (=> d!2240524 (= res!2928252 (validRegex!9478 lt!2571291))))

(assert (=> d!2240524 (= lt!2571291 e!4319035)))

(declare-fun c!1338733 () Bool)

(assert (=> d!2240524 (= c!1338733 e!4319038)))

(declare-fun res!2928251 () Bool)

(assert (=> d!2240524 (=> (not res!2928251) (not e!4319038))))

(assert (=> d!2240524 (= res!2928251 ((_ is Cons!69693) (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(assert (=> d!2240524 (forall!17191 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))) lambda!437921)))

(assert (=> d!2240524 (= (generalisedUnion!2780 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))) lt!2571291)))

(declare-fun b!7192228 () Bool)

(assert (=> b!7192228 (= e!4319039 (= lt!2571291 (head!14689 (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))))

(assert (= (and d!2240524 res!2928251) b!7192224))

(assert (= (and d!2240524 c!1338733) b!7192221))

(assert (= (and d!2240524 (not c!1338733)) b!7192227))

(assert (= (and b!7192227 c!1338735) b!7192225))

(assert (= (and b!7192227 (not c!1338735)) b!7192219))

(assert (= (and d!2240524 res!2928252) b!7192222))

(assert (= (and b!7192222 c!1338734) b!7192220))

(assert (= (and b!7192222 (not c!1338734)) b!7192226))

(assert (= (and b!7192226 c!1338736) b!7192228))

(assert (= (and b!7192226 (not c!1338736)) b!7192223))

(declare-fun m!7887264 () Bool)

(assert (=> b!7192225 m!7887264))

(declare-fun m!7887266 () Bool)

(assert (=> b!7192224 m!7887266))

(declare-fun m!7887268 () Bool)

(assert (=> b!7192223 m!7887268))

(declare-fun m!7887270 () Bool)

(assert (=> b!7192220 m!7887270))

(assert (=> b!7192222 m!7887016))

(declare-fun m!7887272 () Bool)

(assert (=> b!7192228 m!7887272))

(declare-fun m!7887274 () Bool)

(assert (=> d!2240524 m!7887274))

(declare-fun m!7887276 () Bool)

(assert (=> d!2240524 m!7887276))

(declare-fun m!7887278 () Bool)

(assert (=> b!7192226 m!7887278))

(assert (=> b!7192226 m!7887278))

(declare-fun m!7887280 () Bool)

(assert (=> b!7192226 m!7887280))

(assert (=> b!7191921 d!2240524))

(declare-fun bs!1899803 () Bool)

(declare-fun d!2240526 () Bool)

(assert (= bs!1899803 (and d!2240526 d!2240146)))

(declare-fun lambda!437922 () Int)

(assert (=> bs!1899803 (= lambda!437922 lambda!437881)))

(declare-fun bs!1899804 () Bool)

(assert (= bs!1899804 (and d!2240526 d!2240296)))

(assert (=> bs!1899804 (= lambda!437922 lambda!437903)))

(declare-fun bs!1899805 () Bool)

(assert (= bs!1899805 (and d!2240526 d!2240360)))

(assert (=> bs!1899805 (= lambda!437922 lambda!437910)))

(declare-fun bs!1899806 () Bool)

(assert (= bs!1899806 (and d!2240526 d!2240284)))

(assert (=> bs!1899806 (= lambda!437922 lambda!437902)))

(declare-fun bs!1899807 () Bool)

(assert (= bs!1899807 (and d!2240526 d!2240088)))

(assert (=> bs!1899807 (= lambda!437922 lambda!437865)))

(declare-fun bs!1899808 () Bool)

(assert (= bs!1899808 (and d!2240526 d!2240524)))

(assert (=> bs!1899808 (= lambda!437922 lambda!437921)))

(declare-fun bs!1899809 () Bool)

(assert (= bs!1899809 (and d!2240526 d!2240510)))

(assert (=> bs!1899809 (= lambda!437922 lambda!437920)))

(declare-fun bs!1899810 () Bool)

(assert (= bs!1899810 (and d!2240526 d!2240310)))

(assert (=> bs!1899810 (= lambda!437922 lambda!437904)))

(declare-fun bs!1899811 () Bool)

(assert (= bs!1899811 (and d!2240526 d!2240078)))

(assert (=> bs!1899811 (= lambda!437922 lambda!437864)))

(declare-fun bs!1899812 () Bool)

(assert (= bs!1899812 (and d!2240526 d!2240148)))

(assert (=> bs!1899812 (= lambda!437922 lambda!437884)))

(declare-fun bs!1899813 () Bool)

(assert (= bs!1899813 (and d!2240526 d!2240392)))

(assert (=> bs!1899813 (= lambda!437922 lambda!437915)))

(declare-fun bs!1899814 () Bool)

(assert (= bs!1899814 (and d!2240526 d!2240254)))

(assert (=> bs!1899814 (= lambda!437922 lambda!437893)))

(declare-fun bs!1899815 () Bool)

(assert (= bs!1899815 (and d!2240526 d!2240170)))

(assert (=> bs!1899815 (= lambda!437922 lambda!437888)))

(declare-fun bs!1899816 () Bool)

(assert (= bs!1899816 (and d!2240526 d!2240334)))

(assert (=> bs!1899816 (= lambda!437922 lambda!437905)))

(declare-fun bs!1899817 () Bool)

(assert (= bs!1899817 (and d!2240526 d!2240480)))

(assert (=> bs!1899817 (= lambda!437922 lambda!437918)))

(declare-fun bs!1899818 () Bool)

(assert (= bs!1899818 (and d!2240526 d!2240278)))

(assert (=> bs!1899818 (= lambda!437922 lambda!437897)))

(declare-fun bs!1899819 () Bool)

(assert (= bs!1899819 (and d!2240526 d!2240262)))

(assert (=> bs!1899819 (= lambda!437922 lambda!437895)))

(declare-fun bs!1899820 () Bool)

(assert (= bs!1899820 (and d!2240526 d!2240400)))

(assert (=> bs!1899820 (= lambda!437922 lambda!437916)))

(assert (=> d!2240526 (= (inv!88929 setElem!53263) (forall!17191 (exprs!7815 setElem!53263) lambda!437922))))

(declare-fun bs!1899821 () Bool)

(assert (= bs!1899821 d!2240526))

(declare-fun m!7887282 () Bool)

(assert (=> bs!1899821 m!7887282))

(assert (=> setNonEmpty!53263 d!2240526))

(declare-fun d!2240528 () Bool)

(declare-fun res!2928253 () Bool)

(declare-fun e!4319040 () Bool)

(assert (=> d!2240528 (=> res!2928253 e!4319040)))

(assert (=> d!2240528 (= res!2928253 ((_ is Nil!69693) (t!383840 (t!383840 (exprs!7815 setElem!53245)))))))

(assert (=> d!2240528 (= (forall!17191 (t!383840 (t!383840 (exprs!7815 setElem!53245))) lambda!437865) e!4319040)))

(declare-fun b!7192229 () Bool)

(declare-fun e!4319041 () Bool)

(assert (=> b!7192229 (= e!4319040 e!4319041)))

(declare-fun res!2928254 () Bool)

(assert (=> b!7192229 (=> (not res!2928254) (not e!4319041))))

(assert (=> b!7192229 (= res!2928254 (dynLambda!28388 lambda!437865 (h!76141 (t!383840 (t!383840 (exprs!7815 setElem!53245))))))))

(declare-fun b!7192230 () Bool)

(assert (=> b!7192230 (= e!4319041 (forall!17191 (t!383840 (t!383840 (t!383840 (exprs!7815 setElem!53245)))) lambda!437865))))

(assert (= (and d!2240528 (not res!2928253)) b!7192229))

(assert (= (and b!7192229 res!2928254) b!7192230))

(declare-fun b_lambda!275659 () Bool)

(assert (=> (not b_lambda!275659) (not b!7192229)))

(declare-fun m!7887284 () Bool)

(assert (=> b!7192229 m!7887284))

(declare-fun m!7887286 () Bool)

(assert (=> b!7192230 m!7887286))

(assert (=> b!7191903 d!2240528))

(declare-fun d!2240530 () Bool)

(declare-fun res!2928255 () Bool)

(declare-fun e!4319042 () Bool)

(assert (=> d!2240530 (=> res!2928255 e!4319042)))

(assert (=> d!2240530 (= res!2928255 ((_ is Nil!69695) (t!383842 (t!383842 lt!2571231))))))

(assert (=> d!2240530 (= (noDuplicate!2896 (t!383842 (t!383842 lt!2571231))) e!4319042)))

(declare-fun b!7192231 () Bool)

(declare-fun e!4319043 () Bool)

(assert (=> b!7192231 (= e!4319042 e!4319043)))

(declare-fun res!2928256 () Bool)

(assert (=> b!7192231 (=> (not res!2928256) (not e!4319043))))

(assert (=> b!7192231 (= res!2928256 (not (contains!20725 (t!383842 (t!383842 (t!383842 lt!2571231))) (h!76143 (t!383842 (t!383842 lt!2571231))))))))

(declare-fun b!7192232 () Bool)

(assert (=> b!7192232 (= e!4319043 (noDuplicate!2896 (t!383842 (t!383842 (t!383842 lt!2571231)))))))

(assert (= (and d!2240530 (not res!2928255)) b!7192231))

(assert (= (and b!7192231 res!2928256) b!7192232))

(declare-fun m!7887288 () Bool)

(assert (=> b!7192231 m!7887288))

(declare-fun m!7887290 () Bool)

(assert (=> b!7192232 m!7887290))

(assert (=> b!7191573 d!2240530))

(assert (=> d!2240354 d!2240282))

(declare-fun b!7192233 () Bool)

(declare-fun e!4319045 () Bool)

(declare-fun call!655790 () Bool)

(assert (=> b!7192233 (= e!4319045 call!655790)))

(declare-fun b!7192234 () Bool)

(declare-fun e!4319050 () Bool)

(declare-fun e!4319049 () Bool)

(assert (=> b!7192234 (= e!4319050 e!4319049)))

(declare-fun c!1338737 () Bool)

(assert (=> b!7192234 (= c!1338737 ((_ is Union!18363) (h!76141 (exprs!7815 setElem!53251))))))

(declare-fun b!7192235 () Bool)

(declare-fun res!2928259 () Bool)

(declare-fun e!4319046 () Bool)

(assert (=> b!7192235 (=> res!2928259 e!4319046)))

(assert (=> b!7192235 (= res!2928259 (not ((_ is Concat!27208) (h!76141 (exprs!7815 setElem!53251)))))))

(assert (=> b!7192235 (= e!4319049 e!4319046)))

(declare-fun b!7192236 () Bool)

(declare-fun res!2928258 () Bool)

(declare-fun e!4319044 () Bool)

(assert (=> b!7192236 (=> (not res!2928258) (not e!4319044))))

(declare-fun call!655789 () Bool)

(assert (=> b!7192236 (= res!2928258 call!655789)))

(assert (=> b!7192236 (= e!4319049 e!4319044)))

(declare-fun b!7192237 () Bool)

(assert (=> b!7192237 (= e!4319046 e!4319045)))

(declare-fun res!2928261 () Bool)

(assert (=> b!7192237 (=> (not res!2928261) (not e!4319045))))

(assert (=> b!7192237 (= res!2928261 call!655789)))

(declare-fun b!7192238 () Bool)

(declare-fun e!4319048 () Bool)

(assert (=> b!7192238 (= e!4319050 e!4319048)))

(declare-fun res!2928257 () Bool)

(assert (=> b!7192238 (= res!2928257 (not (nullable!7785 (reg!18692 (h!76141 (exprs!7815 setElem!53251))))))))

(assert (=> b!7192238 (=> (not res!2928257) (not e!4319048))))

(declare-fun b!7192239 () Bool)

(assert (=> b!7192239 (= e!4319044 call!655790)))

(declare-fun d!2240532 () Bool)

(declare-fun res!2928260 () Bool)

(declare-fun e!4319047 () Bool)

(assert (=> d!2240532 (=> res!2928260 e!4319047)))

(assert (=> d!2240532 (= res!2928260 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 setElem!53251))))))

(assert (=> d!2240532 (= (validRegex!9478 (h!76141 (exprs!7815 setElem!53251))) e!4319047)))

(declare-fun c!1338738 () Bool)

(declare-fun bm!655784 () Bool)

(declare-fun call!655791 () Bool)

(assert (=> bm!655784 (= call!655791 (validRegex!9478 (ite c!1338738 (reg!18692 (h!76141 (exprs!7815 setElem!53251))) (ite c!1338737 (regTwo!37239 (h!76141 (exprs!7815 setElem!53251))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53251)))))))))

(declare-fun bm!655785 () Bool)

(assert (=> bm!655785 (= call!655789 (validRegex!9478 (ite c!1338737 (regOne!37239 (h!76141 (exprs!7815 setElem!53251))) (regOne!37238 (h!76141 (exprs!7815 setElem!53251))))))))

(declare-fun bm!655786 () Bool)

(assert (=> bm!655786 (= call!655790 call!655791)))

(declare-fun b!7192240 () Bool)

(assert (=> b!7192240 (= e!4319047 e!4319050)))

(assert (=> b!7192240 (= c!1338738 ((_ is Star!18363) (h!76141 (exprs!7815 setElem!53251))))))

(declare-fun b!7192241 () Bool)

(assert (=> b!7192241 (= e!4319048 call!655791)))

(assert (= (and d!2240532 (not res!2928260)) b!7192240))

(assert (= (and b!7192240 c!1338738) b!7192238))

(assert (= (and b!7192240 (not c!1338738)) b!7192234))

(assert (= (and b!7192238 res!2928257) b!7192241))

(assert (= (and b!7192234 c!1338737) b!7192236))

(assert (= (and b!7192234 (not c!1338737)) b!7192235))

(assert (= (and b!7192236 res!2928258) b!7192239))

(assert (= (and b!7192235 (not res!2928259)) b!7192237))

(assert (= (and b!7192237 res!2928261) b!7192233))

(assert (= (or b!7192236 b!7192237) bm!655785))

(assert (= (or b!7192239 b!7192233) bm!655786))

(assert (= (or b!7192241 bm!655786) bm!655784))

(declare-fun m!7887292 () Bool)

(assert (=> b!7192238 m!7887292))

(declare-fun m!7887294 () Bool)

(assert (=> bm!655784 m!7887294))

(declare-fun m!7887296 () Bool)

(assert (=> bm!655785 m!7887296))

(assert (=> bs!1899730 d!2240532))

(declare-fun b!7192242 () Bool)

(declare-fun e!4319053 () Bool)

(declare-fun e!4319054 () Bool)

(assert (=> b!7192242 (= e!4319053 e!4319054)))

(declare-fun res!2928265 () Bool)

(assert (=> b!7192242 (=> res!2928265 e!4319054)))

(assert (=> b!7192242 (= res!2928265 ((_ is Star!18363) (reg!18692 lt!2571228)))))

(declare-fun b!7192243 () Bool)

(declare-fun e!4319052 () Bool)

(declare-fun call!655792 () Bool)

(assert (=> b!7192243 (= e!4319052 call!655792)))

(declare-fun d!2240534 () Bool)

(declare-fun res!2928264 () Bool)

(declare-fun e!4319056 () Bool)

(assert (=> d!2240534 (=> res!2928264 e!4319056)))

(assert (=> d!2240534 (= res!2928264 ((_ is EmptyExpr!18363) (reg!18692 lt!2571228)))))

(assert (=> d!2240534 (= (nullableFct!3046 (reg!18692 lt!2571228)) e!4319056)))

(declare-fun bm!655787 () Bool)

(declare-fun c!1338739 () Bool)

(assert (=> bm!655787 (= call!655792 (nullable!7785 (ite c!1338739 (regTwo!37239 (reg!18692 lt!2571228)) (regTwo!37238 (reg!18692 lt!2571228)))))))

(declare-fun b!7192244 () Bool)

(assert (=> b!7192244 (= e!4319056 e!4319053)))

(declare-fun res!2928262 () Bool)

(assert (=> b!7192244 (=> (not res!2928262) (not e!4319053))))

(assert (=> b!7192244 (= res!2928262 (and (not ((_ is EmptyLang!18363) (reg!18692 lt!2571228))) (not ((_ is ElementMatch!18363) (reg!18692 lt!2571228)))))))

(declare-fun b!7192245 () Bool)

(declare-fun e!4319051 () Bool)

(assert (=> b!7192245 (= e!4319054 e!4319051)))

(assert (=> b!7192245 (= c!1338739 ((_ is Union!18363) (reg!18692 lt!2571228)))))

(declare-fun b!7192246 () Bool)

(assert (=> b!7192246 (= e!4319051 e!4319052)))

(declare-fun res!2928263 () Bool)

(declare-fun call!655793 () Bool)

(assert (=> b!7192246 (= res!2928263 call!655793)))

(assert (=> b!7192246 (=> res!2928263 e!4319052)))

(declare-fun b!7192247 () Bool)

(declare-fun e!4319055 () Bool)

(assert (=> b!7192247 (= e!4319055 call!655792)))

(declare-fun b!7192248 () Bool)

(assert (=> b!7192248 (= e!4319051 e!4319055)))

(declare-fun res!2928266 () Bool)

(assert (=> b!7192248 (= res!2928266 call!655793)))

(assert (=> b!7192248 (=> (not res!2928266) (not e!4319055))))

(declare-fun bm!655788 () Bool)

(assert (=> bm!655788 (= call!655793 (nullable!7785 (ite c!1338739 (regOne!37239 (reg!18692 lt!2571228)) (regOne!37238 (reg!18692 lt!2571228)))))))

(assert (= (and d!2240534 (not res!2928264)) b!7192244))

(assert (= (and b!7192244 res!2928262) b!7192242))

(assert (= (and b!7192242 (not res!2928265)) b!7192245))

(assert (= (and b!7192245 c!1338739) b!7192246))

(assert (= (and b!7192245 (not c!1338739)) b!7192248))

(assert (= (and b!7192246 (not res!2928263)) b!7192243))

(assert (= (and b!7192248 res!2928266) b!7192247))

(assert (= (or b!7192246 b!7192248) bm!655788))

(assert (= (or b!7192243 b!7192247) bm!655787))

(declare-fun m!7887298 () Bool)

(assert (=> bm!655787 m!7887298))

(declare-fun m!7887300 () Bool)

(assert (=> bm!655788 m!7887300))

(assert (=> d!2240344 d!2240534))

(declare-fun d!2240536 () Bool)

(declare-fun res!2928267 () Bool)

(declare-fun e!4319057 () Bool)

(assert (=> d!2240536 (=> res!2928267 e!4319057)))

(assert (=> d!2240536 (= res!2928267 ((_ is Nil!69695) (t!383842 res!2927981)))))

(assert (=> d!2240536 (= (noDuplicate!2896 (t!383842 res!2927981)) e!4319057)))

(declare-fun b!7192249 () Bool)

(declare-fun e!4319058 () Bool)

(assert (=> b!7192249 (= e!4319057 e!4319058)))

(declare-fun res!2928268 () Bool)

(assert (=> b!7192249 (=> (not res!2928268) (not e!4319058))))

(assert (=> b!7192249 (= res!2928268 (not (contains!20725 (t!383842 (t!383842 res!2927981)) (h!76143 (t!383842 res!2927981)))))))

(declare-fun b!7192250 () Bool)

(assert (=> b!7192250 (= e!4319058 (noDuplicate!2896 (t!383842 (t!383842 res!2927981))))))

(assert (= (and d!2240536 (not res!2928267)) b!7192249))

(assert (= (and b!7192249 res!2928268) b!7192250))

(declare-fun m!7887302 () Bool)

(assert (=> b!7192249 m!7887302))

(declare-fun m!7887304 () Bool)

(assert (=> b!7192250 m!7887304))

(assert (=> b!7191703 d!2240536))

(declare-fun d!2240538 () Bool)

(assert (=> d!2240538 (= (isUnion!1586 lt!2571270) ((_ is Union!18363) lt!2571270))))

(assert (=> b!7191762 d!2240538))

(declare-fun d!2240540 () Bool)

(assert (=> d!2240540 (= (nullable!7785 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))) (nullableFct!3046 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))

(declare-fun bs!1899822 () Bool)

(assert (= bs!1899822 d!2240540))

(declare-fun m!7887306 () Bool)

(assert (=> bs!1899822 m!7887306))

(assert (=> b!7191735 d!2240540))

(declare-fun b!7192251 () Bool)

(declare-fun e!4319060 () Bool)

(declare-fun call!655795 () Bool)

(assert (=> b!7192251 (= e!4319060 call!655795)))

(declare-fun b!7192252 () Bool)

(declare-fun e!4319065 () Bool)

(declare-fun e!4319064 () Bool)

(assert (=> b!7192252 (= e!4319065 e!4319064)))

(declare-fun c!1338740 () Bool)

(assert (=> b!7192252 (= c!1338740 ((_ is Union!18363) (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))))

(declare-fun b!7192253 () Bool)

(declare-fun res!2928271 () Bool)

(declare-fun e!4319061 () Bool)

(assert (=> b!7192253 (=> res!2928271 e!4319061)))

(assert (=> b!7192253 (= res!2928271 (not ((_ is Concat!27208) (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))))))

(assert (=> b!7192253 (= e!4319064 e!4319061)))

(declare-fun b!7192254 () Bool)

(declare-fun res!2928270 () Bool)

(declare-fun e!4319059 () Bool)

(assert (=> b!7192254 (=> (not res!2928270) (not e!4319059))))

(declare-fun call!655794 () Bool)

(assert (=> b!7192254 (= res!2928270 call!655794)))

(assert (=> b!7192254 (= e!4319064 e!4319059)))

(declare-fun b!7192255 () Bool)

(assert (=> b!7192255 (= e!4319061 e!4319060)))

(declare-fun res!2928273 () Bool)

(assert (=> b!7192255 (=> (not res!2928273) (not e!4319060))))

(assert (=> b!7192255 (= res!2928273 call!655794)))

(declare-fun b!7192256 () Bool)

(declare-fun e!4319063 () Bool)

(assert (=> b!7192256 (= e!4319065 e!4319063)))

(declare-fun res!2928269 () Bool)

(assert (=> b!7192256 (= res!2928269 (not (nullable!7785 (reg!18692 (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))))))

(assert (=> b!7192256 (=> (not res!2928269) (not e!4319063))))

(declare-fun b!7192257 () Bool)

(assert (=> b!7192257 (= e!4319059 call!655795)))

(declare-fun d!2240542 () Bool)

(declare-fun res!2928272 () Bool)

(declare-fun e!4319062 () Bool)

(assert (=> d!2240542 (=> res!2928272 e!4319062)))

(assert (=> d!2240542 (= res!2928272 ((_ is ElementMatch!18363) (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))))

(assert (=> d!2240542 (= (validRegex!9478 (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))) e!4319062)))

(declare-fun c!1338741 () Bool)

(declare-fun bm!655789 () Bool)

(declare-fun call!655796 () Bool)

(assert (=> bm!655789 (= call!655796 (validRegex!9478 (ite c!1338741 (reg!18692 (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))) (ite c!1338740 (regTwo!37239 (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))) (regTwo!37238 (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))))))))

(declare-fun bm!655790 () Bool)

(assert (=> bm!655790 (= call!655794 (validRegex!9478 (ite c!1338740 (regOne!37239 (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))) (regOne!37238 (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))))))

(declare-fun bm!655791 () Bool)

(assert (=> bm!655791 (= call!655795 call!655796)))

(declare-fun b!7192258 () Bool)

(assert (=> b!7192258 (= e!4319062 e!4319065)))

(assert (=> b!7192258 (= c!1338741 ((_ is Star!18363) (ite c!1338592 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (ite c!1338591 (regTwo!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regTwo!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))))

(declare-fun b!7192259 () Bool)

(assert (=> b!7192259 (= e!4319063 call!655796)))

(assert (= (and d!2240542 (not res!2928272)) b!7192258))

(assert (= (and b!7192258 c!1338741) b!7192256))

(assert (= (and b!7192258 (not c!1338741)) b!7192252))

(assert (= (and b!7192256 res!2928269) b!7192259))

(assert (= (and b!7192252 c!1338740) b!7192254))

(assert (= (and b!7192252 (not c!1338740)) b!7192253))

(assert (= (and b!7192254 res!2928270) b!7192257))

(assert (= (and b!7192253 (not res!2928271)) b!7192255))

(assert (= (and b!7192255 res!2928273) b!7192251))

(assert (= (or b!7192254 b!7192255) bm!655790))

(assert (= (or b!7192257 b!7192251) bm!655791))

(assert (= (or b!7192259 bm!655791) bm!655789))

(declare-fun m!7887308 () Bool)

(assert (=> b!7192256 m!7887308))

(declare-fun m!7887310 () Bool)

(assert (=> bm!655789 m!7887310))

(declare-fun m!7887312 () Bool)

(assert (=> bm!655790 m!7887312))

(assert (=> bm!655671 d!2240542))

(declare-fun bs!1899823 () Bool)

(declare-fun d!2240544 () Bool)

(assert (= bs!1899823 (and d!2240544 d!2240146)))

(declare-fun lambda!437923 () Int)

(assert (=> bs!1899823 (= lambda!437923 lambda!437881)))

(declare-fun bs!1899824 () Bool)

(assert (= bs!1899824 (and d!2240544 d!2240296)))

(assert (=> bs!1899824 (= lambda!437923 lambda!437903)))

(declare-fun bs!1899825 () Bool)

(assert (= bs!1899825 (and d!2240544 d!2240360)))

(assert (=> bs!1899825 (= lambda!437923 lambda!437910)))

(declare-fun bs!1899826 () Bool)

(assert (= bs!1899826 (and d!2240544 d!2240284)))

(assert (=> bs!1899826 (= lambda!437923 lambda!437902)))

(declare-fun bs!1899827 () Bool)

(assert (= bs!1899827 (and d!2240544 d!2240088)))

(assert (=> bs!1899827 (= lambda!437923 lambda!437865)))

(declare-fun bs!1899828 () Bool)

(assert (= bs!1899828 (and d!2240544 d!2240524)))

(assert (=> bs!1899828 (= lambda!437923 lambda!437921)))

(declare-fun bs!1899829 () Bool)

(assert (= bs!1899829 (and d!2240544 d!2240510)))

(assert (=> bs!1899829 (= lambda!437923 lambda!437920)))

(declare-fun bs!1899830 () Bool)

(assert (= bs!1899830 (and d!2240544 d!2240310)))

(assert (=> bs!1899830 (= lambda!437923 lambda!437904)))

(declare-fun bs!1899831 () Bool)

(assert (= bs!1899831 (and d!2240544 d!2240078)))

(assert (=> bs!1899831 (= lambda!437923 lambda!437864)))

(declare-fun bs!1899832 () Bool)

(assert (= bs!1899832 (and d!2240544 d!2240148)))

(assert (=> bs!1899832 (= lambda!437923 lambda!437884)))

(declare-fun bs!1899833 () Bool)

(assert (= bs!1899833 (and d!2240544 d!2240392)))

(assert (=> bs!1899833 (= lambda!437923 lambda!437915)))

(declare-fun bs!1899834 () Bool)

(assert (= bs!1899834 (and d!2240544 d!2240526)))

(assert (=> bs!1899834 (= lambda!437923 lambda!437922)))

(declare-fun bs!1899835 () Bool)

(assert (= bs!1899835 (and d!2240544 d!2240254)))

(assert (=> bs!1899835 (= lambda!437923 lambda!437893)))

(declare-fun bs!1899836 () Bool)

(assert (= bs!1899836 (and d!2240544 d!2240170)))

(assert (=> bs!1899836 (= lambda!437923 lambda!437888)))

(declare-fun bs!1899837 () Bool)

(assert (= bs!1899837 (and d!2240544 d!2240334)))

(assert (=> bs!1899837 (= lambda!437923 lambda!437905)))

(declare-fun bs!1899838 () Bool)

(assert (= bs!1899838 (and d!2240544 d!2240480)))

(assert (=> bs!1899838 (= lambda!437923 lambda!437918)))

(declare-fun bs!1899839 () Bool)

(assert (= bs!1899839 (and d!2240544 d!2240278)))

(assert (=> bs!1899839 (= lambda!437923 lambda!437897)))

(declare-fun bs!1899840 () Bool)

(assert (= bs!1899840 (and d!2240544 d!2240262)))

(assert (=> bs!1899840 (= lambda!437923 lambda!437895)))

(declare-fun bs!1899841 () Bool)

(assert (= bs!1899841 (and d!2240544 d!2240400)))

(assert (=> bs!1899841 (= lambda!437923 lambda!437916)))

(assert (=> d!2240544 (= (inv!88929 setElem!53262) (forall!17191 (exprs!7815 setElem!53262) lambda!437923))))

(declare-fun bs!1899842 () Bool)

(assert (= bs!1899842 d!2240544))

(declare-fun m!7887314 () Bool)

(assert (=> bs!1899842 m!7887314))

(assert (=> setNonEmpty!53262 d!2240544))

(declare-fun d!2240546 () Bool)

(declare-fun lt!2571292 () Bool)

(assert (=> d!2240546 (= lt!2571292 (select (content!14325 (t!383842 (t!383842 lt!2571231))) (h!76143 lt!2571231)))))

(declare-fun e!4319066 () Bool)

(assert (=> d!2240546 (= lt!2571292 e!4319066)))

(declare-fun res!2928275 () Bool)

(assert (=> d!2240546 (=> (not res!2928275) (not e!4319066))))

(assert (=> d!2240546 (= res!2928275 ((_ is Cons!69695) (t!383842 (t!383842 lt!2571231))))))

(assert (=> d!2240546 (= (contains!20725 (t!383842 (t!383842 lt!2571231)) (h!76143 lt!2571231)) lt!2571292)))

(declare-fun b!7192260 () Bool)

(declare-fun e!4319067 () Bool)

(assert (=> b!7192260 (= e!4319066 e!4319067)))

(declare-fun res!2928274 () Bool)

(assert (=> b!7192260 (=> res!2928274 e!4319067)))

(assert (=> b!7192260 (= res!2928274 (= (h!76143 (t!383842 (t!383842 lt!2571231))) (h!76143 lt!2571231)))))

(declare-fun b!7192261 () Bool)

(assert (=> b!7192261 (= e!4319067 (contains!20725 (t!383842 (t!383842 (t!383842 lt!2571231))) (h!76143 lt!2571231)))))

(assert (= (and d!2240546 res!2928275) b!7192260))

(assert (= (and b!7192260 (not res!2928274)) b!7192261))

(assert (=> d!2240546 m!7886954))

(declare-fun m!7887316 () Bool)

(assert (=> d!2240546 m!7887316))

(declare-fun m!7887318 () Bool)

(assert (=> b!7192261 m!7887318))

(assert (=> b!7191792 d!2240546))

(declare-fun bs!1899843 () Bool)

(declare-fun d!2240548 () Bool)

(assert (= bs!1899843 (and d!2240548 d!2240146)))

(declare-fun lambda!437924 () Int)

(assert (=> bs!1899843 (= lambda!437924 lambda!437881)))

(declare-fun bs!1899844 () Bool)

(assert (= bs!1899844 (and d!2240548 d!2240544)))

(assert (=> bs!1899844 (= lambda!437924 lambda!437923)))

(declare-fun bs!1899845 () Bool)

(assert (= bs!1899845 (and d!2240548 d!2240296)))

(assert (=> bs!1899845 (= lambda!437924 lambda!437903)))

(declare-fun bs!1899846 () Bool)

(assert (= bs!1899846 (and d!2240548 d!2240360)))

(assert (=> bs!1899846 (= lambda!437924 lambda!437910)))

(declare-fun bs!1899847 () Bool)

(assert (= bs!1899847 (and d!2240548 d!2240284)))

(assert (=> bs!1899847 (= lambda!437924 lambda!437902)))

(declare-fun bs!1899848 () Bool)

(assert (= bs!1899848 (and d!2240548 d!2240088)))

(assert (=> bs!1899848 (= lambda!437924 lambda!437865)))

(declare-fun bs!1899849 () Bool)

(assert (= bs!1899849 (and d!2240548 d!2240524)))

(assert (=> bs!1899849 (= lambda!437924 lambda!437921)))

(declare-fun bs!1899850 () Bool)

(assert (= bs!1899850 (and d!2240548 d!2240510)))

(assert (=> bs!1899850 (= lambda!437924 lambda!437920)))

(declare-fun bs!1899851 () Bool)

(assert (= bs!1899851 (and d!2240548 d!2240310)))

(assert (=> bs!1899851 (= lambda!437924 lambda!437904)))

(declare-fun bs!1899852 () Bool)

(assert (= bs!1899852 (and d!2240548 d!2240078)))

(assert (=> bs!1899852 (= lambda!437924 lambda!437864)))

(declare-fun bs!1899853 () Bool)

(assert (= bs!1899853 (and d!2240548 d!2240148)))

(assert (=> bs!1899853 (= lambda!437924 lambda!437884)))

(declare-fun bs!1899854 () Bool)

(assert (= bs!1899854 (and d!2240548 d!2240392)))

(assert (=> bs!1899854 (= lambda!437924 lambda!437915)))

(declare-fun bs!1899855 () Bool)

(assert (= bs!1899855 (and d!2240548 d!2240526)))

(assert (=> bs!1899855 (= lambda!437924 lambda!437922)))

(declare-fun bs!1899856 () Bool)

(assert (= bs!1899856 (and d!2240548 d!2240254)))

(assert (=> bs!1899856 (= lambda!437924 lambda!437893)))

(declare-fun bs!1899857 () Bool)

(assert (= bs!1899857 (and d!2240548 d!2240170)))

(assert (=> bs!1899857 (= lambda!437924 lambda!437888)))

(declare-fun bs!1899858 () Bool)

(assert (= bs!1899858 (and d!2240548 d!2240334)))

(assert (=> bs!1899858 (= lambda!437924 lambda!437905)))

(declare-fun bs!1899859 () Bool)

(assert (= bs!1899859 (and d!2240548 d!2240480)))

(assert (=> bs!1899859 (= lambda!437924 lambda!437918)))

(declare-fun bs!1899860 () Bool)

(assert (= bs!1899860 (and d!2240548 d!2240278)))

(assert (=> bs!1899860 (= lambda!437924 lambda!437897)))

(declare-fun bs!1899861 () Bool)

(assert (= bs!1899861 (and d!2240548 d!2240262)))

(assert (=> bs!1899861 (= lambda!437924 lambda!437895)))

(declare-fun bs!1899862 () Bool)

(assert (= bs!1899862 (and d!2240548 d!2240400)))

(assert (=> bs!1899862 (= lambda!437924 lambda!437916)))

(declare-fun e!4319070 () Bool)

(assert (=> d!2240548 e!4319070))

(declare-fun res!2928276 () Bool)

(assert (=> d!2240548 (=> (not res!2928276) (not e!4319070))))

(declare-fun lt!2571293 () Regex!18363)

(assert (=> d!2240548 (= res!2928276 (validRegex!9478 lt!2571293))))

(declare-fun e!4319071 () Regex!18363)

(assert (=> d!2240548 (= lt!2571293 e!4319071)))

(declare-fun c!1338744 () Bool)

(declare-fun e!4319072 () Bool)

(assert (=> d!2240548 (= c!1338744 e!4319072)))

(declare-fun res!2928277 () Bool)

(assert (=> d!2240548 (=> (not res!2928277) (not e!4319072))))

(assert (=> d!2240548 (= res!2928277 ((_ is Cons!69693) (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(assert (=> d!2240548 (forall!17191 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))) lambda!437924)))

(assert (=> d!2240548 (= (generalisedConcat!2468 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))) lt!2571293)))

(declare-fun b!7192262 () Bool)

(declare-fun e!4319068 () Regex!18363)

(assert (=> b!7192262 (= e!4319068 EmptyExpr!18363)))

(declare-fun b!7192263 () Bool)

(assert (=> b!7192263 (= e!4319071 e!4319068)))

(declare-fun c!1338743 () Bool)

(assert (=> b!7192263 (= c!1338743 ((_ is Cons!69693) (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun b!7192264 () Bool)

(declare-fun e!4319073 () Bool)

(declare-fun e!4319069 () Bool)

(assert (=> b!7192264 (= e!4319073 e!4319069)))

(declare-fun c!1338742 () Bool)

(assert (=> b!7192264 (= c!1338742 (isEmpty!40230 (tail!14082 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))))

(declare-fun b!7192265 () Bool)

(assert (=> b!7192265 (= e!4319072 (isEmpty!40230 (t!383840 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))))

(declare-fun b!7192266 () Bool)

(assert (=> b!7192266 (= e!4319073 (isEmptyExpr!2097 lt!2571293))))

(declare-fun b!7192267 () Bool)

(assert (=> b!7192267 (= e!4319069 (= lt!2571293 (head!14689 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))))

(declare-fun b!7192268 () Bool)

(assert (=> b!7192268 (= e!4319071 (h!76141 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun b!7192269 () Bool)

(assert (=> b!7192269 (= e!4319069 (isConcat!1619 lt!2571293))))

(declare-fun b!7192270 () Bool)

(assert (=> b!7192270 (= e!4319070 e!4319073)))

(declare-fun c!1338745 () Bool)

(assert (=> b!7192270 (= c!1338745 (isEmpty!40230 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun b!7192271 () Bool)

(assert (=> b!7192271 (= e!4319068 (Concat!27208 (h!76141 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))) (generalisedConcat!2468 (t!383840 (exprs!7815 (h!76143 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))))

(assert (= (and d!2240548 res!2928277) b!7192265))

(assert (= (and d!2240548 c!1338744) b!7192268))

(assert (= (and d!2240548 (not c!1338744)) b!7192263))

(assert (= (and b!7192263 c!1338743) b!7192271))

(assert (= (and b!7192263 (not c!1338743)) b!7192262))

(assert (= (and d!2240548 res!2928276) b!7192270))

(assert (= (and b!7192270 c!1338745) b!7192266))

(assert (= (and b!7192270 (not c!1338745)) b!7192264))

(assert (= (and b!7192264 c!1338742) b!7192267))

(assert (= (and b!7192264 (not c!1338742)) b!7192269))

(declare-fun m!7887320 () Bool)

(assert (=> b!7192265 m!7887320))

(declare-fun m!7887322 () Bool)

(assert (=> b!7192264 m!7887322))

(assert (=> b!7192264 m!7887322))

(declare-fun m!7887324 () Bool)

(assert (=> b!7192264 m!7887324))

(declare-fun m!7887326 () Bool)

(assert (=> b!7192269 m!7887326))

(declare-fun m!7887328 () Bool)

(assert (=> d!2240548 m!7887328))

(declare-fun m!7887330 () Bool)

(assert (=> d!2240548 m!7887330))

(declare-fun m!7887332 () Bool)

(assert (=> b!7192271 m!7887332))

(declare-fun m!7887334 () Bool)

(assert (=> b!7192270 m!7887334))

(declare-fun m!7887336 () Bool)

(assert (=> b!7192267 m!7887336))

(declare-fun m!7887338 () Bool)

(assert (=> b!7192266 m!7887338))

(assert (=> b!7191933 d!2240548))

(declare-fun bs!1899863 () Bool)

(declare-fun d!2240550 () Bool)

(assert (= bs!1899863 (and d!2240550 d!2240146)))

(declare-fun lambda!437925 () Int)

(assert (=> bs!1899863 (= lambda!437925 lambda!437881)))

(declare-fun bs!1899864 () Bool)

(assert (= bs!1899864 (and d!2240550 d!2240544)))

(assert (=> bs!1899864 (= lambda!437925 lambda!437923)))

(declare-fun bs!1899865 () Bool)

(assert (= bs!1899865 (and d!2240550 d!2240296)))

(assert (=> bs!1899865 (= lambda!437925 lambda!437903)))

(declare-fun bs!1899866 () Bool)

(assert (= bs!1899866 (and d!2240550 d!2240360)))

(assert (=> bs!1899866 (= lambda!437925 lambda!437910)))

(declare-fun bs!1899867 () Bool)

(assert (= bs!1899867 (and d!2240550 d!2240284)))

(assert (=> bs!1899867 (= lambda!437925 lambda!437902)))

(declare-fun bs!1899868 () Bool)

(assert (= bs!1899868 (and d!2240550 d!2240548)))

(assert (=> bs!1899868 (= lambda!437925 lambda!437924)))

(declare-fun bs!1899869 () Bool)

(assert (= bs!1899869 (and d!2240550 d!2240088)))

(assert (=> bs!1899869 (= lambda!437925 lambda!437865)))

(declare-fun bs!1899870 () Bool)

(assert (= bs!1899870 (and d!2240550 d!2240524)))

(assert (=> bs!1899870 (= lambda!437925 lambda!437921)))

(declare-fun bs!1899871 () Bool)

(assert (= bs!1899871 (and d!2240550 d!2240510)))

(assert (=> bs!1899871 (= lambda!437925 lambda!437920)))

(declare-fun bs!1899872 () Bool)

(assert (= bs!1899872 (and d!2240550 d!2240310)))

(assert (=> bs!1899872 (= lambda!437925 lambda!437904)))

(declare-fun bs!1899873 () Bool)

(assert (= bs!1899873 (and d!2240550 d!2240078)))

(assert (=> bs!1899873 (= lambda!437925 lambda!437864)))

(declare-fun bs!1899874 () Bool)

(assert (= bs!1899874 (and d!2240550 d!2240148)))

(assert (=> bs!1899874 (= lambda!437925 lambda!437884)))

(declare-fun bs!1899875 () Bool)

(assert (= bs!1899875 (and d!2240550 d!2240392)))

(assert (=> bs!1899875 (= lambda!437925 lambda!437915)))

(declare-fun bs!1899876 () Bool)

(assert (= bs!1899876 (and d!2240550 d!2240526)))

(assert (=> bs!1899876 (= lambda!437925 lambda!437922)))

(declare-fun bs!1899877 () Bool)

(assert (= bs!1899877 (and d!2240550 d!2240254)))

(assert (=> bs!1899877 (= lambda!437925 lambda!437893)))

(declare-fun bs!1899878 () Bool)

(assert (= bs!1899878 (and d!2240550 d!2240170)))

(assert (=> bs!1899878 (= lambda!437925 lambda!437888)))

(declare-fun bs!1899879 () Bool)

(assert (= bs!1899879 (and d!2240550 d!2240334)))

(assert (=> bs!1899879 (= lambda!437925 lambda!437905)))

(declare-fun bs!1899880 () Bool)

(assert (= bs!1899880 (and d!2240550 d!2240480)))

(assert (=> bs!1899880 (= lambda!437925 lambda!437918)))

(declare-fun bs!1899881 () Bool)

(assert (= bs!1899881 (and d!2240550 d!2240278)))

(assert (=> bs!1899881 (= lambda!437925 lambda!437897)))

(declare-fun bs!1899882 () Bool)

(assert (= bs!1899882 (and d!2240550 d!2240262)))

(assert (=> bs!1899882 (= lambda!437925 lambda!437895)))

(declare-fun bs!1899883 () Bool)

(assert (= bs!1899883 (and d!2240550 d!2240400)))

(assert (=> bs!1899883 (= lambda!437925 lambda!437916)))

(declare-fun lt!2571294 () List!69817)

(assert (=> d!2240550 (forall!17191 lt!2571294 lambda!437925)))

(declare-fun e!4319074 () List!69817)

(assert (=> d!2240550 (= lt!2571294 e!4319074)))

(declare-fun c!1338746 () Bool)

(assert (=> d!2240550 (= c!1338746 ((_ is Cons!69695) (t!383842 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(assert (=> d!2240550 (= (unfocusZipperList!2336 (t!383842 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))) lt!2571294)))

(declare-fun b!7192272 () Bool)

(assert (=> b!7192272 (= e!4319074 (Cons!69693 (generalisedConcat!2468 (exprs!7815 (h!76143 (t!383842 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))) (unfocusZipperList!2336 (t!383842 (t!383842 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))))

(declare-fun b!7192273 () Bool)

(assert (=> b!7192273 (= e!4319074 Nil!69693)))

(assert (= (and d!2240550 c!1338746) b!7192272))

(assert (= (and d!2240550 (not c!1338746)) b!7192273))

(declare-fun m!7887340 () Bool)

(assert (=> d!2240550 m!7887340))

(declare-fun m!7887342 () Bool)

(assert (=> b!7192272 m!7887342))

(declare-fun m!7887344 () Bool)

(assert (=> b!7192272 m!7887344))

(assert (=> b!7191933 d!2240550))

(declare-fun b!7192274 () Bool)

(declare-fun e!4319076 () Bool)

(declare-fun call!655798 () Bool)

(assert (=> b!7192274 (= e!4319076 call!655798)))

(declare-fun b!7192275 () Bool)

(declare-fun e!4319081 () Bool)

(declare-fun e!4319080 () Bool)

(assert (=> b!7192275 (= e!4319081 e!4319080)))

(declare-fun c!1338747 () Bool)

(assert (=> b!7192275 (= c!1338747 ((_ is Union!18363) (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))))))

(declare-fun b!7192276 () Bool)

(declare-fun res!2928280 () Bool)

(declare-fun e!4319077 () Bool)

(assert (=> b!7192276 (=> res!2928280 e!4319077)))

(assert (=> b!7192276 (= res!2928280 (not ((_ is Concat!27208) (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245))))))))))

(assert (=> b!7192276 (= e!4319080 e!4319077)))

(declare-fun b!7192277 () Bool)

(declare-fun res!2928279 () Bool)

(declare-fun e!4319075 () Bool)

(assert (=> b!7192277 (=> (not res!2928279) (not e!4319075))))

(declare-fun call!655797 () Bool)

(assert (=> b!7192277 (= res!2928279 call!655797)))

(assert (=> b!7192277 (= e!4319080 e!4319075)))

(declare-fun b!7192278 () Bool)

(assert (=> b!7192278 (= e!4319077 e!4319076)))

(declare-fun res!2928282 () Bool)

(assert (=> b!7192278 (=> (not res!2928282) (not e!4319076))))

(assert (=> b!7192278 (= res!2928282 call!655797)))

(declare-fun b!7192279 () Bool)

(declare-fun e!4319079 () Bool)

(assert (=> b!7192279 (= e!4319081 e!4319079)))

(declare-fun res!2928278 () Bool)

(assert (=> b!7192279 (= res!2928278 (not (nullable!7785 (reg!18692 (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))))))))

(assert (=> b!7192279 (=> (not res!2928278) (not e!4319079))))

(declare-fun b!7192280 () Bool)

(assert (=> b!7192280 (= e!4319075 call!655798)))

(declare-fun d!2240552 () Bool)

(declare-fun res!2928281 () Bool)

(declare-fun e!4319078 () Bool)

(assert (=> d!2240552 (=> res!2928281 e!4319078)))

(assert (=> d!2240552 (= res!2928281 ((_ is ElementMatch!18363) (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))))))

(assert (=> d!2240552 (= (validRegex!9478 (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) e!4319078)))

(declare-fun c!1338748 () Bool)

(declare-fun call!655799 () Bool)

(declare-fun bm!655792 () Bool)

(assert (=> bm!655792 (= call!655799 (validRegex!9478 (ite c!1338748 (reg!18692 (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) (ite c!1338747 (regTwo!37239 (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) (regTwo!37238 (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245))))))))))))

(declare-fun bm!655793 () Bool)

(assert (=> bm!655793 (= call!655797 (validRegex!9478 (ite c!1338747 (regOne!37239 (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) (regOne!37238 (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))))))))

(declare-fun bm!655794 () Bool)

(assert (=> bm!655794 (= call!655798 call!655799)))

(declare-fun b!7192281 () Bool)

(assert (=> b!7192281 (= e!4319078 e!4319081)))

(assert (=> b!7192281 (= c!1338748 ((_ is Star!18363) (ite c!1338651 (reg!18692 (h!76141 (exprs!7815 setElem!53245))) (ite c!1338650 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245))) (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))))))

(declare-fun b!7192282 () Bool)

(assert (=> b!7192282 (= e!4319079 call!655799)))

(assert (= (and d!2240552 (not res!2928281)) b!7192281))

(assert (= (and b!7192281 c!1338748) b!7192279))

(assert (= (and b!7192281 (not c!1338748)) b!7192275))

(assert (= (and b!7192279 res!2928278) b!7192282))

(assert (= (and b!7192275 c!1338747) b!7192277))

(assert (= (and b!7192275 (not c!1338747)) b!7192276))

(assert (= (and b!7192277 res!2928279) b!7192280))

(assert (= (and b!7192276 (not res!2928280)) b!7192278))

(assert (= (and b!7192278 res!2928282) b!7192274))

(assert (= (or b!7192277 b!7192278) bm!655793))

(assert (= (or b!7192280 b!7192274) bm!655794))

(assert (= (or b!7192282 bm!655794) bm!655792))

(declare-fun m!7887346 () Bool)

(assert (=> b!7192279 m!7887346))

(declare-fun m!7887348 () Bool)

(assert (=> bm!655792 m!7887348))

(declare-fun m!7887350 () Bool)

(assert (=> bm!655793 m!7887350))

(assert (=> bm!655718 d!2240552))

(declare-fun b!7192283 () Bool)

(declare-fun e!4319083 () Bool)

(declare-fun call!655801 () Bool)

(assert (=> b!7192283 (= e!4319083 call!655801)))

(declare-fun b!7192284 () Bool)

(declare-fun e!4319088 () Bool)

(declare-fun e!4319087 () Bool)

(assert (=> b!7192284 (= e!4319088 e!4319087)))

(declare-fun c!1338749 () Bool)

(assert (=> b!7192284 (= c!1338749 ((_ is Union!18363) (h!76141 (t!383840 (exprs!7815 empty!2999)))))))

(declare-fun b!7192285 () Bool)

(declare-fun res!2928285 () Bool)

(declare-fun e!4319084 () Bool)

(assert (=> b!7192285 (=> res!2928285 e!4319084)))

(assert (=> b!7192285 (= res!2928285 (not ((_ is Concat!27208) (h!76141 (t!383840 (exprs!7815 empty!2999))))))))

(assert (=> b!7192285 (= e!4319087 e!4319084)))

(declare-fun b!7192286 () Bool)

(declare-fun res!2928284 () Bool)

(declare-fun e!4319082 () Bool)

(assert (=> b!7192286 (=> (not res!2928284) (not e!4319082))))

(declare-fun call!655800 () Bool)

(assert (=> b!7192286 (= res!2928284 call!655800)))

(assert (=> b!7192286 (= e!4319087 e!4319082)))

(declare-fun b!7192287 () Bool)

(assert (=> b!7192287 (= e!4319084 e!4319083)))

(declare-fun res!2928287 () Bool)

(assert (=> b!7192287 (=> (not res!2928287) (not e!4319083))))

(assert (=> b!7192287 (= res!2928287 call!655800)))

(declare-fun b!7192288 () Bool)

(declare-fun e!4319086 () Bool)

(assert (=> b!7192288 (= e!4319088 e!4319086)))

(declare-fun res!2928283 () Bool)

(assert (=> b!7192288 (= res!2928283 (not (nullable!7785 (reg!18692 (h!76141 (t!383840 (exprs!7815 empty!2999)))))))))

(assert (=> b!7192288 (=> (not res!2928283) (not e!4319086))))

(declare-fun b!7192289 () Bool)

(assert (=> b!7192289 (= e!4319082 call!655801)))

(declare-fun d!2240554 () Bool)

(declare-fun res!2928286 () Bool)

(declare-fun e!4319085 () Bool)

(assert (=> d!2240554 (=> res!2928286 e!4319085)))

(assert (=> d!2240554 (= res!2928286 ((_ is ElementMatch!18363) (h!76141 (t!383840 (exprs!7815 empty!2999)))))))

(assert (=> d!2240554 (= (validRegex!9478 (h!76141 (t!383840 (exprs!7815 empty!2999)))) e!4319085)))

(declare-fun call!655802 () Bool)

(declare-fun bm!655795 () Bool)

(declare-fun c!1338750 () Bool)

(assert (=> bm!655795 (= call!655802 (validRegex!9478 (ite c!1338750 (reg!18692 (h!76141 (t!383840 (exprs!7815 empty!2999)))) (ite c!1338749 (regTwo!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 empty!2999))))))))))

(declare-fun bm!655796 () Bool)

(assert (=> bm!655796 (= call!655800 (validRegex!9478 (ite c!1338749 (regOne!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))) (regOne!37238 (h!76141 (t!383840 (exprs!7815 empty!2999)))))))))

(declare-fun bm!655797 () Bool)

(assert (=> bm!655797 (= call!655801 call!655802)))

(declare-fun b!7192290 () Bool)

(assert (=> b!7192290 (= e!4319085 e!4319088)))

(assert (=> b!7192290 (= c!1338750 ((_ is Star!18363) (h!76141 (t!383840 (exprs!7815 empty!2999)))))))

(declare-fun b!7192291 () Bool)

(assert (=> b!7192291 (= e!4319086 call!655802)))

(assert (= (and d!2240554 (not res!2928286)) b!7192290))

(assert (= (and b!7192290 c!1338750) b!7192288))

(assert (= (and b!7192290 (not c!1338750)) b!7192284))

(assert (= (and b!7192288 res!2928283) b!7192291))

(assert (= (and b!7192284 c!1338749) b!7192286))

(assert (= (and b!7192284 (not c!1338749)) b!7192285))

(assert (= (and b!7192286 res!2928284) b!7192289))

(assert (= (and b!7192285 (not res!2928285)) b!7192287))

(assert (= (and b!7192287 res!2928287) b!7192283))

(assert (= (or b!7192286 b!7192287) bm!655796))

(assert (= (or b!7192289 b!7192283) bm!655797))

(assert (= (or b!7192291 bm!655797) bm!655795))

(declare-fun m!7887352 () Bool)

(assert (=> b!7192288 m!7887352))

(declare-fun m!7887354 () Bool)

(assert (=> bm!655795 m!7887354))

(declare-fun m!7887356 () Bool)

(assert (=> bm!655796 m!7887356))

(assert (=> bs!1899728 d!2240554))

(declare-fun d!2240556 () Bool)

(assert (=> d!2240556 (= (isConcat!1619 lt!2571268) ((_ is Concat!27208) lt!2571268))))

(assert (=> b!7191679 d!2240556))

(declare-fun b!7192292 () Bool)

(declare-fun e!4319090 () Bool)

(declare-fun call!655804 () Bool)

(assert (=> b!7192292 (= e!4319090 call!655804)))

(declare-fun b!7192293 () Bool)

(declare-fun e!4319095 () Bool)

(declare-fun e!4319094 () Bool)

(assert (=> b!7192293 (= e!4319095 e!4319094)))

(declare-fun c!1338751 () Bool)

(assert (=> b!7192293 (= c!1338751 ((_ is Union!18363) (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))))))

(declare-fun b!7192294 () Bool)

(declare-fun res!2928290 () Bool)

(declare-fun e!4319091 () Bool)

(assert (=> b!7192294 (=> res!2928290 e!4319091)))

(assert (=> b!7192294 (= res!2928290 (not ((_ is Concat!27208) (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256)))))))

(assert (=> b!7192294 (= e!4319094 e!4319091)))

(declare-fun b!7192295 () Bool)

(declare-fun res!2928289 () Bool)

(declare-fun e!4319089 () Bool)

(assert (=> b!7192295 (=> (not res!2928289) (not e!4319089))))

(declare-fun call!655803 () Bool)

(assert (=> b!7192295 (= res!2928289 call!655803)))

(assert (=> b!7192295 (= e!4319094 e!4319089)))

(declare-fun b!7192296 () Bool)

(assert (=> b!7192296 (= e!4319091 e!4319090)))

(declare-fun res!2928292 () Bool)

(assert (=> b!7192296 (=> (not res!2928292) (not e!4319090))))

(assert (=> b!7192296 (= res!2928292 call!655803)))

(declare-fun b!7192297 () Bool)

(declare-fun e!4319093 () Bool)

(assert (=> b!7192297 (= e!4319095 e!4319093)))

(declare-fun res!2928288 () Bool)

(assert (=> b!7192297 (= res!2928288 (not (nullable!7785 (reg!18692 (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))))))))

(assert (=> b!7192297 (=> (not res!2928288) (not e!4319093))))

(declare-fun b!7192298 () Bool)

(assert (=> b!7192298 (= e!4319089 call!655804)))

(declare-fun d!2240558 () Bool)

(declare-fun res!2928291 () Bool)

(declare-fun e!4319092 () Bool)

(assert (=> d!2240558 (=> res!2928291 e!4319092)))

(assert (=> d!2240558 (= res!2928291 ((_ is ElementMatch!18363) (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))))))

(assert (=> d!2240558 (= (validRegex!9478 (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))) e!4319092)))

(declare-fun c!1338752 () Bool)

(declare-fun call!655805 () Bool)

(declare-fun bm!655798 () Bool)

(assert (=> bm!655798 (= call!655805 (validRegex!9478 (ite c!1338752 (reg!18692 (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))) (ite c!1338751 (regTwo!37239 (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))) (regTwo!37238 (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256)))))))))

(declare-fun bm!655799 () Bool)

(assert (=> bm!655799 (= call!655803 (validRegex!9478 (ite c!1338751 (regOne!37239 (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))) (regOne!37238 (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))))))))

(declare-fun bm!655800 () Bool)

(assert (=> bm!655800 (= call!655804 call!655805)))

(declare-fun b!7192299 () Bool)

(assert (=> b!7192299 (= e!4319092 e!4319095)))

(assert (=> b!7192299 (= c!1338752 ((_ is Star!18363) (ite c!1338687 (regOne!37239 lt!2571256) (regOne!37238 lt!2571256))))))

(declare-fun b!7192300 () Bool)

(assert (=> b!7192300 (= e!4319093 call!655805)))

(assert (= (and d!2240558 (not res!2928291)) b!7192299))

(assert (= (and b!7192299 c!1338752) b!7192297))

(assert (= (and b!7192299 (not c!1338752)) b!7192293))

(assert (= (and b!7192297 res!2928288) b!7192300))

(assert (= (and b!7192293 c!1338751) b!7192295))

(assert (= (and b!7192293 (not c!1338751)) b!7192294))

(assert (= (and b!7192295 res!2928289) b!7192298))

(assert (= (and b!7192294 (not res!2928290)) b!7192296))

(assert (= (and b!7192296 res!2928292) b!7192292))

(assert (= (or b!7192295 b!7192296) bm!655799))

(assert (= (or b!7192298 b!7192292) bm!655800))

(assert (= (or b!7192300 bm!655800) bm!655798))

(declare-fun m!7887358 () Bool)

(assert (=> b!7192297 m!7887358))

(declare-fun m!7887360 () Bool)

(assert (=> bm!655798 m!7887360))

(declare-fun m!7887362 () Bool)

(assert (=> bm!655799 m!7887362))

(assert (=> bm!655743 d!2240558))

(declare-fun d!2240560 () Bool)

(declare-fun res!2928293 () Bool)

(declare-fun e!4319096 () Bool)

(assert (=> d!2240560 (=> res!2928293 e!4319096)))

(assert (=> d!2240560 (= res!2928293 ((_ is Nil!69693) (exprs!7815 setElem!53258)))))

(assert (=> d!2240560 (= (forall!17191 (exprs!7815 setElem!53258) lambda!437895) e!4319096)))

(declare-fun b!7192301 () Bool)

(declare-fun e!4319097 () Bool)

(assert (=> b!7192301 (= e!4319096 e!4319097)))

(declare-fun res!2928294 () Bool)

(assert (=> b!7192301 (=> (not res!2928294) (not e!4319097))))

(assert (=> b!7192301 (= res!2928294 (dynLambda!28388 lambda!437895 (h!76141 (exprs!7815 setElem!53258))))))

(declare-fun b!7192302 () Bool)

(assert (=> b!7192302 (= e!4319097 (forall!17191 (t!383840 (exprs!7815 setElem!53258)) lambda!437895))))

(assert (= (and d!2240560 (not res!2928293)) b!7192301))

(assert (= (and b!7192301 res!2928294) b!7192302))

(declare-fun b_lambda!275661 () Bool)

(assert (=> (not b_lambda!275661) (not b!7192301)))

(declare-fun m!7887364 () Bool)

(assert (=> b!7192301 m!7887364))

(declare-fun m!7887366 () Bool)

(assert (=> b!7192302 m!7887366))

(assert (=> d!2240262 d!2240560))

(declare-fun bs!1899884 () Bool)

(declare-fun d!2240562 () Bool)

(assert (= bs!1899884 (and d!2240562 d!2240146)))

(declare-fun lambda!437926 () Int)

(assert (=> bs!1899884 (= lambda!437926 lambda!437881)))

(declare-fun bs!1899885 () Bool)

(assert (= bs!1899885 (and d!2240562 d!2240544)))

(assert (=> bs!1899885 (= lambda!437926 lambda!437923)))

(declare-fun bs!1899886 () Bool)

(assert (= bs!1899886 (and d!2240562 d!2240296)))

(assert (=> bs!1899886 (= lambda!437926 lambda!437903)))

(declare-fun bs!1899887 () Bool)

(assert (= bs!1899887 (and d!2240562 d!2240360)))

(assert (=> bs!1899887 (= lambda!437926 lambda!437910)))

(declare-fun bs!1899888 () Bool)

(assert (= bs!1899888 (and d!2240562 d!2240284)))

(assert (=> bs!1899888 (= lambda!437926 lambda!437902)))

(declare-fun bs!1899889 () Bool)

(assert (= bs!1899889 (and d!2240562 d!2240548)))

(assert (=> bs!1899889 (= lambda!437926 lambda!437924)))

(declare-fun bs!1899890 () Bool)

(assert (= bs!1899890 (and d!2240562 d!2240550)))

(assert (=> bs!1899890 (= lambda!437926 lambda!437925)))

(declare-fun bs!1899891 () Bool)

(assert (= bs!1899891 (and d!2240562 d!2240088)))

(assert (=> bs!1899891 (= lambda!437926 lambda!437865)))

(declare-fun bs!1899892 () Bool)

(assert (= bs!1899892 (and d!2240562 d!2240524)))

(assert (=> bs!1899892 (= lambda!437926 lambda!437921)))

(declare-fun bs!1899893 () Bool)

(assert (= bs!1899893 (and d!2240562 d!2240510)))

(assert (=> bs!1899893 (= lambda!437926 lambda!437920)))

(declare-fun bs!1899894 () Bool)

(assert (= bs!1899894 (and d!2240562 d!2240310)))

(assert (=> bs!1899894 (= lambda!437926 lambda!437904)))

(declare-fun bs!1899895 () Bool)

(assert (= bs!1899895 (and d!2240562 d!2240078)))

(assert (=> bs!1899895 (= lambda!437926 lambda!437864)))

(declare-fun bs!1899896 () Bool)

(assert (= bs!1899896 (and d!2240562 d!2240148)))

(assert (=> bs!1899896 (= lambda!437926 lambda!437884)))

(declare-fun bs!1899897 () Bool)

(assert (= bs!1899897 (and d!2240562 d!2240392)))

(assert (=> bs!1899897 (= lambda!437926 lambda!437915)))

(declare-fun bs!1899898 () Bool)

(assert (= bs!1899898 (and d!2240562 d!2240526)))

(assert (=> bs!1899898 (= lambda!437926 lambda!437922)))

(declare-fun bs!1899899 () Bool)

(assert (= bs!1899899 (and d!2240562 d!2240254)))

(assert (=> bs!1899899 (= lambda!437926 lambda!437893)))

(declare-fun bs!1899900 () Bool)

(assert (= bs!1899900 (and d!2240562 d!2240170)))

(assert (=> bs!1899900 (= lambda!437926 lambda!437888)))

(declare-fun bs!1899901 () Bool)

(assert (= bs!1899901 (and d!2240562 d!2240334)))

(assert (=> bs!1899901 (= lambda!437926 lambda!437905)))

(declare-fun bs!1899902 () Bool)

(assert (= bs!1899902 (and d!2240562 d!2240480)))

(assert (=> bs!1899902 (= lambda!437926 lambda!437918)))

(declare-fun bs!1899903 () Bool)

(assert (= bs!1899903 (and d!2240562 d!2240278)))

(assert (=> bs!1899903 (= lambda!437926 lambda!437897)))

(declare-fun bs!1899904 () Bool)

(assert (= bs!1899904 (and d!2240562 d!2240262)))

(assert (=> bs!1899904 (= lambda!437926 lambda!437895)))

(declare-fun bs!1899905 () Bool)

(assert (= bs!1899905 (and d!2240562 d!2240400)))

(assert (=> bs!1899905 (= lambda!437926 lambda!437916)))

(assert (=> d!2240562 (= (inv!88929 setElem!53260) (forall!17191 (exprs!7815 setElem!53260) lambda!437926))))

(declare-fun bs!1899906 () Bool)

(assert (= bs!1899906 d!2240562))

(declare-fun m!7887368 () Bool)

(assert (=> bs!1899906 m!7887368))

(assert (=> setNonEmpty!53260 d!2240562))

(declare-fun d!2240564 () Bool)

(assert (=> d!2240564 (= (isEmpty!40230 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))) ((_ is Nil!69693) (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(assert (=> b!7191675 d!2240564))

(declare-fun d!2240566 () Bool)

(assert (=> d!2240566 (= (nullable!7785 (reg!18692 lt!2571256)) (nullableFct!3046 (reg!18692 lt!2571256)))))

(declare-fun bs!1899907 () Bool)

(assert (= bs!1899907 d!2240566))

(declare-fun m!7887370 () Bool)

(assert (=> bs!1899907 m!7887370))

(assert (=> b!7191882 d!2240566))

(assert (=> d!2240268 d!2240266))

(assert (=> d!2240268 d!2240058))

(declare-fun d!2240568 () Bool)

(declare-fun res!2928295 () Bool)

(declare-fun e!4319098 () Bool)

(assert (=> d!2240568 (=> res!2928295 e!4319098)))

(assert (=> d!2240568 (= res!2928295 ((_ is Nil!69693) (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (=> d!2240568 (= (forall!17191 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))) lambda!437881) e!4319098)))

(declare-fun b!7192303 () Bool)

(declare-fun e!4319099 () Bool)

(assert (=> b!7192303 (= e!4319098 e!4319099)))

(declare-fun res!2928296 () Bool)

(assert (=> b!7192303 (=> (not res!2928296) (not e!4319099))))

(assert (=> b!7192303 (= res!2928296 (dynLambda!28388 lambda!437881 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(declare-fun b!7192304 () Bool)

(assert (=> b!7192304 (= e!4319099 (forall!17191 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))) lambda!437881))))

(assert (= (and d!2240568 (not res!2928295)) b!7192303))

(assert (= (and b!7192303 res!2928296) b!7192304))

(declare-fun b_lambda!275663 () Bool)

(assert (=> (not b_lambda!275663) (not b!7192303)))

(declare-fun m!7887372 () Bool)

(assert (=> b!7192303 m!7887372))

(declare-fun m!7887374 () Bool)

(assert (=> b!7192304 m!7887374))

(assert (=> b!7191889 d!2240568))

(declare-fun d!2240570 () Bool)

(declare-fun c!1338753 () Bool)

(assert (=> d!2240570 (= c!1338753 ((_ is Nil!69695) (t!383842 lt!2571261)))))

(declare-fun e!4319100 () (InoxSet Context!14630))

(assert (=> d!2240570 (= (content!14325 (t!383842 lt!2571261)) e!4319100)))

(declare-fun b!7192305 () Bool)

(assert (=> b!7192305 (= e!4319100 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192306 () Bool)

(assert (=> b!7192306 (= e!4319100 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 (t!383842 lt!2571261)) true) (content!14325 (t!383842 (t!383842 lt!2571261)))))))

(assert (= (and d!2240570 c!1338753) b!7192305))

(assert (= (and d!2240570 (not c!1338753)) b!7192306))

(declare-fun m!7887376 () Bool)

(assert (=> b!7192306 m!7887376))

(declare-fun m!7887378 () Bool)

(assert (=> b!7192306 m!7887378))

(assert (=> b!7191615 d!2240570))

(declare-fun bm!655801 () Bool)

(declare-fun call!655809 () (InoxSet Context!14630))

(declare-fun call!655808 () (InoxSet Context!14630))

(assert (=> bm!655801 (= call!655809 call!655808)))

(declare-fun d!2240572 () Bool)

(declare-fun c!1338757 () Bool)

(assert (=> d!2240572 (= c!1338757 (and ((_ is ElementMatch!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (= (c!1338487 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) lt!2571215)))))

(declare-fun e!4319102 () (InoxSet Context!14630))

(assert (=> d!2240572 (= (derivationStepZipperDown!2516 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) lt!2571215) e!4319102)))

(declare-fun b!7192307 () Bool)

(declare-fun e!4319104 () (InoxSet Context!14630))

(declare-fun call!655806 () (InoxSet Context!14630))

(assert (=> b!7192307 (= e!4319104 ((_ map or) call!655806 call!655809))))

(declare-fun b!7192308 () Bool)

(declare-fun e!4319106 () (InoxSet Context!14630))

(declare-fun call!655810 () (InoxSet Context!14630))

(assert (=> b!7192308 (= e!4319106 call!655810)))

(declare-fun bm!655802 () Bool)

(declare-fun call!655811 () List!69817)

(declare-fun call!655807 () List!69817)

(assert (=> bm!655802 (= call!655811 call!655807)))

(declare-fun b!7192309 () Bool)

(assert (=> b!7192309 (= e!4319102 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) true))))

(declare-fun b!7192310 () Bool)

(declare-fun c!1338756 () Bool)

(assert (=> b!7192310 (= c!1338756 ((_ is Star!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))

(declare-fun e!4319103 () (InoxSet Context!14630))

(assert (=> b!7192310 (= e!4319103 e!4319106)))

(declare-fun b!7192311 () Bool)

(declare-fun c!1338755 () Bool)

(declare-fun e!4319101 () Bool)

(assert (=> b!7192311 (= c!1338755 e!4319101)))

(declare-fun res!2928297 () Bool)

(assert (=> b!7192311 (=> (not res!2928297) (not e!4319101))))

(assert (=> b!7192311 (= res!2928297 ((_ is Concat!27208) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))

(declare-fun e!4319105 () (InoxSet Context!14630))

(assert (=> b!7192311 (= e!4319105 e!4319104)))

(declare-fun b!7192312 () Bool)

(assert (=> b!7192312 (= e!4319102 e!4319105)))

(declare-fun c!1338758 () Bool)

(assert (=> b!7192312 (= c!1338758 ((_ is Union!18363) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))

(declare-fun b!7192313 () Bool)

(assert (=> b!7192313 (= e!4319104 e!4319103)))

(declare-fun c!1338754 () Bool)

(assert (=> b!7192313 (= c!1338754 ((_ is Concat!27208) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))

(declare-fun bm!655803 () Bool)

(assert (=> bm!655803 (= call!655806 (derivationStepZipperDown!2516 (ite c!1338758 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))) (ite c!1338758 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (Context!14631 call!655807)) lt!2571215))))

(declare-fun bm!655804 () Bool)

(assert (=> bm!655804 (= call!655808 (derivationStepZipperDown!2516 (ite c!1338758 (regTwo!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (ite c!1338755 (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (ite c!1338754 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (reg!18692 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))) (ite (or c!1338758 c!1338755) (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (Context!14631 call!655811)) lt!2571215))))

(declare-fun b!7192314 () Bool)

(assert (=> b!7192314 (= e!4319103 call!655810)))

(declare-fun bm!655805 () Bool)

(assert (=> bm!655805 (= call!655810 call!655809)))

(declare-fun b!7192315 () Bool)

(assert (=> b!7192315 (= e!4319106 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192316 () Bool)

(assert (=> b!7192316 (= e!4319105 ((_ map or) call!655806 call!655808))))

(declare-fun b!7192317 () Bool)

(assert (=> b!7192317 (= e!4319101 (nullable!7785 (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))))

(declare-fun bm!655806 () Bool)

(assert (=> bm!655806 (= call!655807 ($colon$colon!2846 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))) (ite (or c!1338755 c!1338754) (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))))

(assert (= (and d!2240572 c!1338757) b!7192309))

(assert (= (and d!2240572 (not c!1338757)) b!7192312))

(assert (= (and b!7192312 c!1338758) b!7192316))

(assert (= (and b!7192312 (not c!1338758)) b!7192311))

(assert (= (and b!7192311 res!2928297) b!7192317))

(assert (= (and b!7192311 c!1338755) b!7192307))

(assert (= (and b!7192311 (not c!1338755)) b!7192313))

(assert (= (and b!7192313 c!1338754) b!7192314))

(assert (= (and b!7192313 (not c!1338754)) b!7192310))

(assert (= (and b!7192310 c!1338756) b!7192308))

(assert (= (and b!7192310 (not c!1338756)) b!7192315))

(assert (= (or b!7192314 b!7192308) bm!655802))

(assert (= (or b!7192314 b!7192308) bm!655805))

(assert (= (or b!7192307 bm!655805) bm!655801))

(assert (= (or b!7192307 bm!655802) bm!655806))

(assert (= (or b!7192316 bm!655801) bm!655804))

(assert (= (or b!7192316 b!7192307) bm!655803))

(declare-fun m!7887380 () Bool)

(assert (=> bm!655806 m!7887380))

(declare-fun m!7887382 () Bool)

(assert (=> bm!655803 m!7887382))

(declare-fun m!7887384 () Bool)

(assert (=> b!7192309 m!7887384))

(declare-fun m!7887386 () Bool)

(assert (=> b!7192317 m!7887386))

(declare-fun m!7887388 () Bool)

(assert (=> bm!655804 m!7887388))

(assert (=> bm!655705 d!2240572))

(declare-fun d!2240574 () Bool)

(assert (=> d!2240574 (= (isEmptyLang!2158 lt!2571270) ((_ is EmptyLang!18363) lt!2571270))))

(assert (=> b!7191759 d!2240574))

(declare-fun d!2240576 () Bool)

(assert (=> d!2240576 (= (isEmpty!40230 (tail!14082 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))) ((_ is Nil!69693) (tail!14082 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(assert (=> b!7191922 d!2240576))

(declare-fun d!2240578 () Bool)

(assert (=> d!2240578 (= (tail!14082 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))) (t!383840 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(assert (=> b!7191922 d!2240578))

(declare-fun d!2240580 () Bool)

(declare-fun c!1338759 () Bool)

(assert (=> d!2240580 (= c!1338759 ((_ is Nil!69695) (t!383842 (t!383842 lt!2571244))))))

(declare-fun e!4319107 () (InoxSet Context!14630))

(assert (=> d!2240580 (= (content!14325 (t!383842 (t!383842 lt!2571244))) e!4319107)))

(declare-fun b!7192318 () Bool)

(assert (=> b!7192318 (= e!4319107 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192319 () Bool)

(assert (=> b!7192319 (= e!4319107 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 (t!383842 (t!383842 lt!2571244))) true) (content!14325 (t!383842 (t!383842 (t!383842 lt!2571244))))))))

(assert (= (and d!2240580 c!1338759) b!7192318))

(assert (= (and d!2240580 (not c!1338759)) b!7192319))

(declare-fun m!7887390 () Bool)

(assert (=> b!7192319 m!7887390))

(declare-fun m!7887392 () Bool)

(assert (=> b!7192319 m!7887392))

(assert (=> b!7191617 d!2240580))

(declare-fun bs!1899908 () Bool)

(declare-fun d!2240582 () Bool)

(assert (= bs!1899908 (and d!2240582 d!2240146)))

(declare-fun lambda!437927 () Int)

(assert (=> bs!1899908 (= lambda!437927 lambda!437881)))

(declare-fun bs!1899909 () Bool)

(assert (= bs!1899909 (and d!2240582 d!2240544)))

(assert (=> bs!1899909 (= lambda!437927 lambda!437923)))

(declare-fun bs!1899910 () Bool)

(assert (= bs!1899910 (and d!2240582 d!2240296)))

(assert (=> bs!1899910 (= lambda!437927 lambda!437903)))

(declare-fun bs!1899911 () Bool)

(assert (= bs!1899911 (and d!2240582 d!2240360)))

(assert (=> bs!1899911 (= lambda!437927 lambda!437910)))

(declare-fun bs!1899912 () Bool)

(assert (= bs!1899912 (and d!2240582 d!2240284)))

(assert (=> bs!1899912 (= lambda!437927 lambda!437902)))

(declare-fun bs!1899913 () Bool)

(assert (= bs!1899913 (and d!2240582 d!2240548)))

(assert (=> bs!1899913 (= lambda!437927 lambda!437924)))

(declare-fun bs!1899914 () Bool)

(assert (= bs!1899914 (and d!2240582 d!2240550)))

(assert (=> bs!1899914 (= lambda!437927 lambda!437925)))

(declare-fun bs!1899915 () Bool)

(assert (= bs!1899915 (and d!2240582 d!2240088)))

(assert (=> bs!1899915 (= lambda!437927 lambda!437865)))

(declare-fun bs!1899916 () Bool)

(assert (= bs!1899916 (and d!2240582 d!2240524)))

(assert (=> bs!1899916 (= lambda!437927 lambda!437921)))

(declare-fun bs!1899917 () Bool)

(assert (= bs!1899917 (and d!2240582 d!2240510)))

(assert (=> bs!1899917 (= lambda!437927 lambda!437920)))

(declare-fun bs!1899918 () Bool)

(assert (= bs!1899918 (and d!2240582 d!2240310)))

(assert (=> bs!1899918 (= lambda!437927 lambda!437904)))

(declare-fun bs!1899919 () Bool)

(assert (= bs!1899919 (and d!2240582 d!2240078)))

(assert (=> bs!1899919 (= lambda!437927 lambda!437864)))

(declare-fun bs!1899920 () Bool)

(assert (= bs!1899920 (and d!2240582 d!2240392)))

(assert (=> bs!1899920 (= lambda!437927 lambda!437915)))

(declare-fun bs!1899921 () Bool)

(assert (= bs!1899921 (and d!2240582 d!2240526)))

(assert (=> bs!1899921 (= lambda!437927 lambda!437922)))

(declare-fun bs!1899922 () Bool)

(assert (= bs!1899922 (and d!2240582 d!2240254)))

(assert (=> bs!1899922 (= lambda!437927 lambda!437893)))

(declare-fun bs!1899923 () Bool)

(assert (= bs!1899923 (and d!2240582 d!2240170)))

(assert (=> bs!1899923 (= lambda!437927 lambda!437888)))

(declare-fun bs!1899924 () Bool)

(assert (= bs!1899924 (and d!2240582 d!2240148)))

(assert (=> bs!1899924 (= lambda!437927 lambda!437884)))

(declare-fun bs!1899925 () Bool)

(assert (= bs!1899925 (and d!2240582 d!2240562)))

(assert (=> bs!1899925 (= lambda!437927 lambda!437926)))

(declare-fun bs!1899926 () Bool)

(assert (= bs!1899926 (and d!2240582 d!2240334)))

(assert (=> bs!1899926 (= lambda!437927 lambda!437905)))

(declare-fun bs!1899927 () Bool)

(assert (= bs!1899927 (and d!2240582 d!2240480)))

(assert (=> bs!1899927 (= lambda!437927 lambda!437918)))

(declare-fun bs!1899928 () Bool)

(assert (= bs!1899928 (and d!2240582 d!2240278)))

(assert (=> bs!1899928 (= lambda!437927 lambda!437897)))

(declare-fun bs!1899929 () Bool)

(assert (= bs!1899929 (and d!2240582 d!2240262)))

(assert (=> bs!1899929 (= lambda!437927 lambda!437895)))

(declare-fun bs!1899930 () Bool)

(assert (= bs!1899930 (and d!2240582 d!2240400)))

(assert (=> bs!1899930 (= lambda!437927 lambda!437916)))

(assert (=> d!2240582 (= (inv!88929 (h!76143 (t!383842 res!2927985))) (forall!17191 (exprs!7815 (h!76143 (t!383842 res!2927985))) lambda!437927))))

(declare-fun bs!1899931 () Bool)

(assert (= bs!1899931 d!2240582))

(declare-fun m!7887394 () Bool)

(assert (=> bs!1899931 m!7887394))

(assert (=> b!7192041 d!2240582))

(declare-fun d!2240584 () Bool)

(assert (=> d!2240584 (= (isEmpty!40230 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))) ((_ is Nil!69693) (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true)))))))

(assert (=> b!7191918 d!2240584))

(declare-fun b!7192320 () Bool)

(declare-fun e!4319109 () Bool)

(declare-fun call!655813 () Bool)

(assert (=> b!7192320 (= e!4319109 call!655813)))

(declare-fun b!7192321 () Bool)

(declare-fun e!4319114 () Bool)

(declare-fun e!4319113 () Bool)

(assert (=> b!7192321 (= e!4319114 e!4319113)))

(declare-fun c!1338760 () Bool)

(assert (=> b!7192321 (= c!1338760 ((_ is Union!18363) (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))))))

(declare-fun b!7192322 () Bool)

(declare-fun res!2928300 () Bool)

(declare-fun e!4319110 () Bool)

(assert (=> b!7192322 (=> res!2928300 e!4319110)))

(assert (=> b!7192322 (= res!2928300 (not ((_ is Concat!27208) (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260))))))))

(assert (=> b!7192322 (= e!4319113 e!4319110)))

(declare-fun b!7192323 () Bool)

(declare-fun res!2928299 () Bool)

(declare-fun e!4319108 () Bool)

(assert (=> b!7192323 (=> (not res!2928299) (not e!4319108))))

(declare-fun call!655812 () Bool)

(assert (=> b!7192323 (= res!2928299 call!655812)))

(assert (=> b!7192323 (= e!4319113 e!4319108)))

(declare-fun b!7192324 () Bool)

(assert (=> b!7192324 (= e!4319110 e!4319109)))

(declare-fun res!2928302 () Bool)

(assert (=> b!7192324 (=> (not res!2928302) (not e!4319109))))

(assert (=> b!7192324 (= res!2928302 call!655812)))

(declare-fun b!7192325 () Bool)

(declare-fun e!4319112 () Bool)

(assert (=> b!7192325 (= e!4319114 e!4319112)))

(declare-fun res!2928298 () Bool)

(assert (=> b!7192325 (= res!2928298 (not (nullable!7785 (reg!18692 (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))))))))

(assert (=> b!7192325 (=> (not res!2928298) (not e!4319112))))

(declare-fun b!7192326 () Bool)

(assert (=> b!7192326 (= e!4319108 call!655813)))

(declare-fun d!2240586 () Bool)

(declare-fun res!2928301 () Bool)

(declare-fun e!4319111 () Bool)

(assert (=> d!2240586 (=> res!2928301 e!4319111)))

(assert (=> d!2240586 (= res!2928301 ((_ is ElementMatch!18363) (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))))))

(assert (=> d!2240586 (= (validRegex!9478 (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))) e!4319111)))

(declare-fun call!655814 () Bool)

(declare-fun c!1338761 () Bool)

(declare-fun bm!655807 () Bool)

(assert (=> bm!655807 (= call!655814 (validRegex!9478 (ite c!1338761 (reg!18692 (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))) (ite c!1338760 (regTwo!37239 (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))) (regTwo!37238 (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260))))))))))

(declare-fun bm!655808 () Bool)

(assert (=> bm!655808 (= call!655812 (validRegex!9478 (ite c!1338760 (regOne!37239 (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))) (regOne!37238 (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))))))))

(declare-fun bm!655809 () Bool)

(assert (=> bm!655809 (= call!655813 call!655814)))

(declare-fun b!7192327 () Bool)

(assert (=> b!7192327 (= e!4319111 e!4319114)))

(assert (=> b!7192327 (= c!1338761 ((_ is Star!18363) (ite c!1338694 (reg!18692 lt!2571260) (ite c!1338693 (regTwo!37239 lt!2571260) (regTwo!37238 lt!2571260)))))))

(declare-fun b!7192328 () Bool)

(assert (=> b!7192328 (= e!4319112 call!655814)))

(assert (= (and d!2240586 (not res!2928301)) b!7192327))

(assert (= (and b!7192327 c!1338761) b!7192325))

(assert (= (and b!7192327 (not c!1338761)) b!7192321))

(assert (= (and b!7192325 res!2928298) b!7192328))

(assert (= (and b!7192321 c!1338760) b!7192323))

(assert (= (and b!7192321 (not c!1338760)) b!7192322))

(assert (= (and b!7192323 res!2928299) b!7192326))

(assert (= (and b!7192322 (not res!2928300)) b!7192324))

(assert (= (and b!7192324 res!2928302) b!7192320))

(assert (= (or b!7192323 b!7192324) bm!655808))

(assert (= (or b!7192326 b!7192320) bm!655809))

(assert (= (or b!7192328 bm!655809) bm!655807))

(declare-fun m!7887396 () Bool)

(assert (=> b!7192325 m!7887396))

(declare-fun m!7887398 () Bool)

(assert (=> bm!655807 m!7887398))

(declare-fun m!7887400 () Bool)

(assert (=> bm!655808 m!7887400))

(assert (=> bm!655745 d!2240586))

(declare-fun d!2240588 () Bool)

(assert (=> d!2240588 (= (isEmpty!40230 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))) ((_ is Nil!69693) (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(assert (=> b!7191763 d!2240588))

(declare-fun bs!1899932 () Bool)

(declare-fun d!2240590 () Bool)

(assert (= bs!1899932 (and d!2240590 d!2240146)))

(declare-fun lambda!437928 () Int)

(assert (=> bs!1899932 (= lambda!437928 lambda!437881)))

(declare-fun bs!1899933 () Bool)

(assert (= bs!1899933 (and d!2240590 d!2240544)))

(assert (=> bs!1899933 (= lambda!437928 lambda!437923)))

(declare-fun bs!1899934 () Bool)

(assert (= bs!1899934 (and d!2240590 d!2240296)))

(assert (=> bs!1899934 (= lambda!437928 lambda!437903)))

(declare-fun bs!1899935 () Bool)

(assert (= bs!1899935 (and d!2240590 d!2240360)))

(assert (=> bs!1899935 (= lambda!437928 lambda!437910)))

(declare-fun bs!1899936 () Bool)

(assert (= bs!1899936 (and d!2240590 d!2240284)))

(assert (=> bs!1899936 (= lambda!437928 lambda!437902)))

(declare-fun bs!1899937 () Bool)

(assert (= bs!1899937 (and d!2240590 d!2240582)))

(assert (=> bs!1899937 (= lambda!437928 lambda!437927)))

(declare-fun bs!1899938 () Bool)

(assert (= bs!1899938 (and d!2240590 d!2240548)))

(assert (=> bs!1899938 (= lambda!437928 lambda!437924)))

(declare-fun bs!1899939 () Bool)

(assert (= bs!1899939 (and d!2240590 d!2240550)))

(assert (=> bs!1899939 (= lambda!437928 lambda!437925)))

(declare-fun bs!1899940 () Bool)

(assert (= bs!1899940 (and d!2240590 d!2240088)))

(assert (=> bs!1899940 (= lambda!437928 lambda!437865)))

(declare-fun bs!1899941 () Bool)

(assert (= bs!1899941 (and d!2240590 d!2240524)))

(assert (=> bs!1899941 (= lambda!437928 lambda!437921)))

(declare-fun bs!1899942 () Bool)

(assert (= bs!1899942 (and d!2240590 d!2240510)))

(assert (=> bs!1899942 (= lambda!437928 lambda!437920)))

(declare-fun bs!1899943 () Bool)

(assert (= bs!1899943 (and d!2240590 d!2240310)))

(assert (=> bs!1899943 (= lambda!437928 lambda!437904)))

(declare-fun bs!1899944 () Bool)

(assert (= bs!1899944 (and d!2240590 d!2240078)))

(assert (=> bs!1899944 (= lambda!437928 lambda!437864)))

(declare-fun bs!1899945 () Bool)

(assert (= bs!1899945 (and d!2240590 d!2240392)))

(assert (=> bs!1899945 (= lambda!437928 lambda!437915)))

(declare-fun bs!1899946 () Bool)

(assert (= bs!1899946 (and d!2240590 d!2240526)))

(assert (=> bs!1899946 (= lambda!437928 lambda!437922)))

(declare-fun bs!1899947 () Bool)

(assert (= bs!1899947 (and d!2240590 d!2240254)))

(assert (=> bs!1899947 (= lambda!437928 lambda!437893)))

(declare-fun bs!1899948 () Bool)

(assert (= bs!1899948 (and d!2240590 d!2240170)))

(assert (=> bs!1899948 (= lambda!437928 lambda!437888)))

(declare-fun bs!1899949 () Bool)

(assert (= bs!1899949 (and d!2240590 d!2240148)))

(assert (=> bs!1899949 (= lambda!437928 lambda!437884)))

(declare-fun bs!1899950 () Bool)

(assert (= bs!1899950 (and d!2240590 d!2240562)))

(assert (=> bs!1899950 (= lambda!437928 lambda!437926)))

(declare-fun bs!1899951 () Bool)

(assert (= bs!1899951 (and d!2240590 d!2240334)))

(assert (=> bs!1899951 (= lambda!437928 lambda!437905)))

(declare-fun bs!1899952 () Bool)

(assert (= bs!1899952 (and d!2240590 d!2240480)))

(assert (=> bs!1899952 (= lambda!437928 lambda!437918)))

(declare-fun bs!1899953 () Bool)

(assert (= bs!1899953 (and d!2240590 d!2240278)))

(assert (=> bs!1899953 (= lambda!437928 lambda!437897)))

(declare-fun bs!1899954 () Bool)

(assert (= bs!1899954 (and d!2240590 d!2240262)))

(assert (=> bs!1899954 (= lambda!437928 lambda!437895)))

(declare-fun bs!1899955 () Bool)

(assert (= bs!1899955 (and d!2240590 d!2240400)))

(assert (=> bs!1899955 (= lambda!437928 lambda!437916)))

(assert (=> d!2240590 (= (inv!88929 (h!76143 res!2928144)) (forall!17191 (exprs!7815 (h!76143 res!2928144)) lambda!437928))))

(declare-fun bs!1899956 () Bool)

(assert (= bs!1899956 d!2240590))

(declare-fun m!7887402 () Bool)

(assert (=> bs!1899956 m!7887402))

(assert (=> b!7191872 d!2240590))

(declare-fun b!7192329 () Bool)

(declare-fun e!4319117 () Bool)

(declare-fun e!4319118 () Bool)

(assert (=> b!7192329 (= e!4319117 e!4319118)))

(declare-fun res!2928306 () Bool)

(assert (=> b!7192329 (=> res!2928306 e!4319118)))

(assert (=> b!7192329 (= res!2928306 ((_ is Star!18363) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))

(declare-fun b!7192330 () Bool)

(declare-fun e!4319116 () Bool)

(declare-fun call!655815 () Bool)

(assert (=> b!7192330 (= e!4319116 call!655815)))

(declare-fun d!2240592 () Bool)

(declare-fun res!2928305 () Bool)

(declare-fun e!4319120 () Bool)

(assert (=> d!2240592 (=> res!2928305 e!4319120)))

(assert (=> d!2240592 (= res!2928305 ((_ is EmptyExpr!18363) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))

(assert (=> d!2240592 (= (nullableFct!3046 (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))) e!4319120)))

(declare-fun bm!655810 () Bool)

(declare-fun c!1338762 () Bool)

(assert (=> bm!655810 (= call!655815 (nullable!7785 (ite c!1338762 (regTwo!37239 (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))) (regTwo!37238 (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))

(declare-fun b!7192331 () Bool)

(assert (=> b!7192331 (= e!4319120 e!4319117)))

(declare-fun res!2928303 () Bool)

(assert (=> b!7192331 (=> (not res!2928303) (not e!4319117))))

(assert (=> b!7192331 (= res!2928303 (and (not ((_ is EmptyLang!18363) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (not ((_ is ElementMatch!18363) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))

(declare-fun b!7192332 () Bool)

(declare-fun e!4319115 () Bool)

(assert (=> b!7192332 (= e!4319118 e!4319115)))

(assert (=> b!7192332 (= c!1338762 ((_ is Union!18363) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))

(declare-fun b!7192333 () Bool)

(assert (=> b!7192333 (= e!4319115 e!4319116)))

(declare-fun res!2928304 () Bool)

(declare-fun call!655816 () Bool)

(assert (=> b!7192333 (= res!2928304 call!655816)))

(assert (=> b!7192333 (=> res!2928304 e!4319116)))

(declare-fun b!7192334 () Bool)

(declare-fun e!4319119 () Bool)

(assert (=> b!7192334 (= e!4319119 call!655815)))

(declare-fun b!7192335 () Bool)

(assert (=> b!7192335 (= e!4319115 e!4319119)))

(declare-fun res!2928307 () Bool)

(assert (=> b!7192335 (= res!2928307 call!655816)))

(assert (=> b!7192335 (=> (not res!2928307) (not e!4319119))))

(declare-fun bm!655811 () Bool)

(assert (=> bm!655811 (= call!655816 (nullable!7785 (ite c!1338762 (regOne!37239 (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))) (regOne!37238 (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))

(assert (= (and d!2240592 (not res!2928305)) b!7192331))

(assert (= (and b!7192331 res!2928303) b!7192329))

(assert (= (and b!7192329 (not res!2928306)) b!7192332))

(assert (= (and b!7192332 c!1338762) b!7192333))

(assert (= (and b!7192332 (not c!1338762)) b!7192335))

(assert (= (and b!7192333 (not res!2928304)) b!7192330))

(assert (= (and b!7192335 res!2928307) b!7192334))

(assert (= (or b!7192333 b!7192335) bm!655811))

(assert (= (or b!7192330 b!7192334) bm!655810))

(declare-fun m!7887404 () Bool)

(assert (=> bm!655810 m!7887404))

(declare-fun m!7887406 () Bool)

(assert (=> bm!655811 m!7887406))

(assert (=> d!2240272 d!2240592))

(declare-fun d!2240594 () Bool)

(declare-fun c!1338763 () Bool)

(assert (=> d!2240594 (= c!1338763 ((_ is Nil!69695) (t!383842 res!2927985)))))

(declare-fun e!4319121 () (InoxSet Context!14630))

(assert (=> d!2240594 (= (content!14325 (t!383842 res!2927985)) e!4319121)))

(declare-fun b!7192336 () Bool)

(assert (=> b!7192336 (= e!4319121 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192337 () Bool)

(assert (=> b!7192337 (= e!4319121 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 (t!383842 res!2927985)) true) (content!14325 (t!383842 (t!383842 res!2927985)))))))

(assert (= (and d!2240594 c!1338763) b!7192336))

(assert (= (and d!2240594 (not c!1338763)) b!7192337))

(declare-fun m!7887408 () Bool)

(assert (=> b!7192337 m!7887408))

(declare-fun m!7887410 () Bool)

(assert (=> b!7192337 m!7887410))

(assert (=> b!7191707 d!2240594))

(declare-fun d!2240596 () Bool)

(declare-fun res!2928308 () Bool)

(declare-fun e!4319122 () Bool)

(assert (=> d!2240596 (=> res!2928308 e!4319122)))

(assert (=> d!2240596 (= res!2928308 ((_ is Nil!69693) (exprs!7815 setElem!53259)))))

(assert (=> d!2240596 (= (forall!17191 (exprs!7815 setElem!53259) lambda!437893) e!4319122)))

(declare-fun b!7192338 () Bool)

(declare-fun e!4319123 () Bool)

(assert (=> b!7192338 (= e!4319122 e!4319123)))

(declare-fun res!2928309 () Bool)

(assert (=> b!7192338 (=> (not res!2928309) (not e!4319123))))

(assert (=> b!7192338 (= res!2928309 (dynLambda!28388 lambda!437893 (h!76141 (exprs!7815 setElem!53259))))))

(declare-fun b!7192339 () Bool)

(assert (=> b!7192339 (= e!4319123 (forall!17191 (t!383840 (exprs!7815 setElem!53259)) lambda!437893))))

(assert (= (and d!2240596 (not res!2928308)) b!7192338))

(assert (= (and b!7192338 res!2928309) b!7192339))

(declare-fun b_lambda!275665 () Bool)

(assert (=> (not b_lambda!275665) (not b!7192338)))

(declare-fun m!7887412 () Bool)

(assert (=> b!7192338 m!7887412))

(declare-fun m!7887414 () Bool)

(assert (=> b!7192339 m!7887414))

(assert (=> d!2240254 d!2240596))

(declare-fun b!7192340 () Bool)

(declare-fun e!4319125 () Bool)

(declare-fun call!655818 () Bool)

(assert (=> b!7192340 (= e!4319125 call!655818)))

(declare-fun b!7192341 () Bool)

(declare-fun e!4319130 () Bool)

(declare-fun e!4319129 () Bool)

(assert (=> b!7192341 (= e!4319130 e!4319129)))

(declare-fun c!1338764 () Bool)

(assert (=> b!7192341 (= c!1338764 ((_ is Union!18363) (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))))

(declare-fun b!7192342 () Bool)

(declare-fun res!2928312 () Bool)

(declare-fun e!4319126 () Bool)

(assert (=> b!7192342 (=> res!2928312 e!4319126)))

(assert (=> b!7192342 (= res!2928312 (not ((_ is Concat!27208) (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))))

(assert (=> b!7192342 (= e!4319129 e!4319126)))

(declare-fun b!7192343 () Bool)

(declare-fun res!2928311 () Bool)

(declare-fun e!4319124 () Bool)

(assert (=> b!7192343 (=> (not res!2928311) (not e!4319124))))

(declare-fun call!655817 () Bool)

(assert (=> b!7192343 (= res!2928311 call!655817)))

(assert (=> b!7192343 (= e!4319129 e!4319124)))

(declare-fun b!7192344 () Bool)

(assert (=> b!7192344 (= e!4319126 e!4319125)))

(declare-fun res!2928314 () Bool)

(assert (=> b!7192344 (=> (not res!2928314) (not e!4319125))))

(assert (=> b!7192344 (= res!2928314 call!655817)))

(declare-fun b!7192345 () Bool)

(declare-fun e!4319128 () Bool)

(assert (=> b!7192345 (= e!4319130 e!4319128)))

(declare-fun res!2928310 () Bool)

(assert (=> b!7192345 (= res!2928310 (not (nullable!7785 (reg!18692 (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))))))

(assert (=> b!7192345 (=> (not res!2928310) (not e!4319128))))

(declare-fun b!7192346 () Bool)

(assert (=> b!7192346 (= e!4319124 call!655818)))

(declare-fun d!2240598 () Bool)

(declare-fun res!2928313 () Bool)

(declare-fun e!4319127 () Bool)

(assert (=> d!2240598 (=> res!2928313 e!4319127)))

(assert (=> d!2240598 (= res!2928313 ((_ is ElementMatch!18363) (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))))

(assert (=> d!2240598 (= (validRegex!9478 (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))) e!4319127)))

(declare-fun bm!655812 () Bool)

(declare-fun call!655819 () Bool)

(declare-fun c!1338765 () Bool)

(assert (=> bm!655812 (= call!655819 (validRegex!9478 (ite c!1338765 (reg!18692 (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))) (ite c!1338764 (regTwo!37239 (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))) (regTwo!37238 (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))))))

(declare-fun bm!655813 () Bool)

(assert (=> bm!655813 (= call!655817 (validRegex!9478 (ite c!1338764 (regOne!37239 (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))) (regOne!37238 (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))))))

(declare-fun bm!655814 () Bool)

(assert (=> bm!655814 (= call!655818 call!655819)))

(declare-fun b!7192347 () Bool)

(assert (=> b!7192347 (= e!4319127 e!4319130)))

(assert (=> b!7192347 (= c!1338765 ((_ is Star!18363) (ite c!1338591 (regOne!37239 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))) (regOne!37238 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228))))))))

(declare-fun b!7192348 () Bool)

(assert (=> b!7192348 (= e!4319128 call!655819)))

(assert (= (and d!2240598 (not res!2928313)) b!7192347))

(assert (= (and b!7192347 c!1338765) b!7192345))

(assert (= (and b!7192347 (not c!1338765)) b!7192341))

(assert (= (and b!7192345 res!2928310) b!7192348))

(assert (= (and b!7192341 c!1338764) b!7192343))

(assert (= (and b!7192341 (not c!1338764)) b!7192342))

(assert (= (and b!7192343 res!2928311) b!7192346))

(assert (= (and b!7192342 (not res!2928312)) b!7192344))

(assert (= (and b!7192344 res!2928314) b!7192340))

(assert (= (or b!7192343 b!7192344) bm!655813))

(assert (= (or b!7192346 b!7192340) bm!655814))

(assert (= (or b!7192348 bm!655814) bm!655812))

(declare-fun m!7887416 () Bool)

(assert (=> b!7192345 m!7887416))

(declare-fun m!7887418 () Bool)

(assert (=> bm!655812 m!7887418))

(declare-fun m!7887420 () Bool)

(assert (=> bm!655813 m!7887420))

(assert (=> bm!655672 d!2240598))

(declare-fun bm!655815 () Bool)

(declare-fun call!655823 () (InoxSet Context!14630))

(declare-fun call!655822 () (InoxSet Context!14630))

(assert (=> bm!655815 (= call!655823 call!655822)))

(declare-fun c!1338769 () Bool)

(declare-fun d!2240600 () Bool)

(assert (=> d!2240600 (= c!1338769 (and ((_ is ElementMatch!18363) (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))) (= (c!1338487 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))) lt!2571215)))))

(declare-fun e!4319132 () (InoxSet Context!14630))

(assert (=> d!2240600 (= (derivationStepZipperDown!2516 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))) (ite c!1338599 (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655683)) lt!2571215) e!4319132)))

(declare-fun b!7192349 () Bool)

(declare-fun e!4319134 () (InoxSet Context!14630))

(declare-fun call!655820 () (InoxSet Context!14630))

(assert (=> b!7192349 (= e!4319134 ((_ map or) call!655820 call!655823))))

(declare-fun b!7192350 () Bool)

(declare-fun e!4319136 () (InoxSet Context!14630))

(declare-fun call!655824 () (InoxSet Context!14630))

(assert (=> b!7192350 (= e!4319136 call!655824)))

(declare-fun bm!655816 () Bool)

(declare-fun call!655825 () List!69817)

(declare-fun call!655821 () List!69817)

(assert (=> bm!655816 (= call!655825 call!655821)))

(declare-fun b!7192351 () Bool)

(assert (=> b!7192351 (= e!4319132 (store ((as const (Array Context!14630 Bool)) false) (ite c!1338599 (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655683)) true))))

(declare-fun c!1338768 () Bool)

(declare-fun b!7192352 () Bool)

(assert (=> b!7192352 (= c!1338768 ((_ is Star!18363) (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))))

(declare-fun e!4319133 () (InoxSet Context!14630))

(assert (=> b!7192352 (= e!4319133 e!4319136)))

(declare-fun b!7192353 () Bool)

(declare-fun c!1338767 () Bool)

(declare-fun e!4319131 () Bool)

(assert (=> b!7192353 (= c!1338767 e!4319131)))

(declare-fun res!2928315 () Bool)

(assert (=> b!7192353 (=> (not res!2928315) (not e!4319131))))

(assert (=> b!7192353 (= res!2928315 ((_ is Concat!27208) (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))))

(declare-fun e!4319135 () (InoxSet Context!14630))

(assert (=> b!7192353 (= e!4319135 e!4319134)))

(declare-fun b!7192354 () Bool)

(assert (=> b!7192354 (= e!4319132 e!4319135)))

(declare-fun c!1338770 () Bool)

(assert (=> b!7192354 (= c!1338770 ((_ is Union!18363) (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))))

(declare-fun b!7192355 () Bool)

(assert (=> b!7192355 (= e!4319134 e!4319133)))

(declare-fun c!1338766 () Bool)

(assert (=> b!7192355 (= c!1338766 ((_ is Concat!27208) (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))))

(declare-fun bm!655817 () Bool)

(assert (=> bm!655817 (= call!655820 (derivationStepZipperDown!2516 (ite c!1338770 (regOne!37239 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))) (ite c!1338770 (ite c!1338599 (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655683)) (Context!14631 call!655821)) lt!2571215))))

(declare-fun bm!655818 () Bool)

(assert (=> bm!655818 (= call!655822 (derivationStepZipperDown!2516 (ite c!1338770 (regTwo!37239 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338767 (regTwo!37238 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338766 (regOne!37238 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))) (reg!18692 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))) (ite (or c!1338770 c!1338767) (ite c!1338599 (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655683)) (Context!14631 call!655825)) lt!2571215))))

(declare-fun b!7192356 () Bool)

(assert (=> b!7192356 (= e!4319133 call!655824)))

(declare-fun bm!655819 () Bool)

(assert (=> bm!655819 (= call!655824 call!655823)))

(declare-fun b!7192357 () Bool)

(assert (=> b!7192357 (= e!4319136 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192358 () Bool)

(assert (=> b!7192358 (= e!4319135 ((_ map or) call!655820 call!655822))))

(declare-fun b!7192359 () Bool)

(assert (=> b!7192359 (= e!4319131 (nullable!7785 (regOne!37238 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))))

(declare-fun bm!655820 () Bool)

(assert (=> bm!655820 (= call!655821 ($colon$colon!2846 (exprs!7815 (ite c!1338599 (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655683))) (ite (or c!1338767 c!1338766) (regTwo!37238 (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))) (ite c!1338599 (regOne!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))))

(assert (= (and d!2240600 c!1338769) b!7192351))

(assert (= (and d!2240600 (not c!1338769)) b!7192354))

(assert (= (and b!7192354 c!1338770) b!7192358))

(assert (= (and b!7192354 (not c!1338770)) b!7192353))

(assert (= (and b!7192353 res!2928315) b!7192359))

(assert (= (and b!7192353 c!1338767) b!7192349))

(assert (= (and b!7192353 (not c!1338767)) b!7192355))

(assert (= (and b!7192355 c!1338766) b!7192356))

(assert (= (and b!7192355 (not c!1338766)) b!7192352))

(assert (= (and b!7192352 c!1338768) b!7192350))

(assert (= (and b!7192352 (not c!1338768)) b!7192357))

(assert (= (or b!7192356 b!7192350) bm!655816))

(assert (= (or b!7192356 b!7192350) bm!655819))

(assert (= (or b!7192349 bm!655819) bm!655815))

(assert (= (or b!7192349 bm!655816) bm!655820))

(assert (= (or b!7192358 bm!655815) bm!655818))

(assert (= (or b!7192358 b!7192349) bm!655817))

(declare-fun m!7887422 () Bool)

(assert (=> bm!655820 m!7887422))

(declare-fun m!7887424 () Bool)

(assert (=> bm!655817 m!7887424))

(declare-fun m!7887426 () Bool)

(assert (=> b!7192351 m!7887426))

(declare-fun m!7887428 () Bool)

(assert (=> b!7192359 m!7887428))

(declare-fun m!7887430 () Bool)

(assert (=> bm!655818 m!7887430))

(assert (=> bm!655679 d!2240600))

(declare-fun b!7192360 () Bool)

(declare-fun e!4319138 () Bool)

(declare-fun call!655827 () Bool)

(assert (=> b!7192360 (= e!4319138 call!655827)))

(declare-fun b!7192361 () Bool)

(declare-fun e!4319143 () Bool)

(declare-fun e!4319142 () Bool)

(assert (=> b!7192361 (= e!4319143 e!4319142)))

(declare-fun c!1338771 () Bool)

(assert (=> b!7192361 (= c!1338771 ((_ is Union!18363) (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(declare-fun b!7192362 () Bool)

(declare-fun res!2928318 () Bool)

(declare-fun e!4319139 () Bool)

(assert (=> b!7192362 (=> res!2928318 e!4319139)))

(assert (=> b!7192362 (= res!2928318 (not ((_ is Concat!27208) (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(assert (=> b!7192362 (= e!4319142 e!4319139)))

(declare-fun b!7192363 () Bool)

(declare-fun res!2928317 () Bool)

(declare-fun e!4319137 () Bool)

(assert (=> b!7192363 (=> (not res!2928317) (not e!4319137))))

(declare-fun call!655826 () Bool)

(assert (=> b!7192363 (= res!2928317 call!655826)))

(assert (=> b!7192363 (= e!4319142 e!4319137)))

(declare-fun b!7192364 () Bool)

(assert (=> b!7192364 (= e!4319139 e!4319138)))

(declare-fun res!2928320 () Bool)

(assert (=> b!7192364 (=> (not res!2928320) (not e!4319138))))

(assert (=> b!7192364 (= res!2928320 call!655826)))

(declare-fun b!7192365 () Bool)

(declare-fun e!4319141 () Bool)

(assert (=> b!7192365 (= e!4319143 e!4319141)))

(declare-fun res!2928316 () Bool)

(assert (=> b!7192365 (= res!2928316 (not (nullable!7785 (reg!18692 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))))))))

(assert (=> b!7192365 (=> (not res!2928316) (not e!4319141))))

(declare-fun b!7192366 () Bool)

(assert (=> b!7192366 (= e!4319137 call!655827)))

(declare-fun d!2240602 () Bool)

(declare-fun res!2928319 () Bool)

(declare-fun e!4319140 () Bool)

(assert (=> d!2240602 (=> res!2928319 e!4319140)))

(assert (=> d!2240602 (= res!2928319 ((_ is ElementMatch!18363) (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (=> d!2240602 (= (validRegex!9478 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))) e!4319140)))

(declare-fun call!655828 () Bool)

(declare-fun bm!655821 () Bool)

(declare-fun c!1338772 () Bool)

(assert (=> bm!655821 (= call!655828 (validRegex!9478 (ite c!1338772 (reg!18692 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))) (ite c!1338771 (regTwo!37239 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))) (regTwo!37238 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530))))))))))

(declare-fun bm!655822 () Bool)

(assert (=> bm!655822 (= call!655826 (validRegex!9478 (ite c!1338771 (regOne!37239 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))) (regOne!37238 (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))))))))

(declare-fun bm!655823 () Bool)

(assert (=> bm!655823 (= call!655827 call!655828)))

(declare-fun b!7192367 () Bool)

(assert (=> b!7192367 (= e!4319140 e!4319143)))

(assert (=> b!7192367 (= c!1338772 ((_ is Star!18363) (h!76141 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(declare-fun b!7192368 () Bool)

(assert (=> b!7192368 (= e!4319141 call!655828)))

(assert (= (and d!2240602 (not res!2928319)) b!7192367))

(assert (= (and b!7192367 c!1338772) b!7192365))

(assert (= (and b!7192367 (not c!1338772)) b!7192361))

(assert (= (and b!7192365 res!2928316) b!7192368))

(assert (= (and b!7192361 c!1338771) b!7192363))

(assert (= (and b!7192361 (not c!1338771)) b!7192362))

(assert (= (and b!7192363 res!2928317) b!7192366))

(assert (= (and b!7192362 (not res!2928318)) b!7192364))

(assert (= (and b!7192364 res!2928320) b!7192360))

(assert (= (or b!7192363 b!7192364) bm!655822))

(assert (= (or b!7192366 b!7192360) bm!655823))

(assert (= (or b!7192368 bm!655823) bm!655821))

(declare-fun m!7887432 () Bool)

(assert (=> b!7192365 m!7887432))

(declare-fun m!7887434 () Bool)

(assert (=> bm!655821 m!7887434))

(declare-fun m!7887436 () Bool)

(assert (=> bm!655822 m!7887436))

(assert (=> bs!1899731 d!2240602))

(declare-fun d!2240604 () Bool)

(assert (=> d!2240604 (= ($colon$colon!2846 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))) (ite (or c!1338644 c!1338643) (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))) (Cons!69693 (ite (or c!1338644 c!1338643) (regTwo!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(assert (=> bm!655714 d!2240604))

(assert (=> d!2240346 d!2240370))

(declare-fun d!2240606 () Bool)

(assert (=> d!2240606 (= (nullable!7785 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))) (nullableFct!3046 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))

(declare-fun bs!1899957 () Bool)

(assert (= bs!1899957 d!2240606))

(declare-fun m!7887438 () Bool)

(assert (=> bs!1899957 m!7887438))

(assert (=> b!7191588 d!2240606))

(declare-fun d!2240608 () Bool)

(declare-fun res!2928321 () Bool)

(declare-fun e!4319144 () Bool)

(assert (=> d!2240608 (=> res!2928321 e!4319144)))

(assert (=> d!2240608 (= res!2928321 ((_ is Nil!69695) res!2928144))))

(assert (=> d!2240608 (= (noDuplicate!2896 res!2928144) e!4319144)))

(declare-fun b!7192369 () Bool)

(declare-fun e!4319145 () Bool)

(assert (=> b!7192369 (= e!4319144 e!4319145)))

(declare-fun res!2928322 () Bool)

(assert (=> b!7192369 (=> (not res!2928322) (not e!4319145))))

(assert (=> b!7192369 (= res!2928322 (not (contains!20725 (t!383842 res!2928144) (h!76143 res!2928144))))))

(declare-fun b!7192370 () Bool)

(assert (=> b!7192370 (= e!4319145 (noDuplicate!2896 (t!383842 res!2928144)))))

(assert (= (and d!2240608 (not res!2928321)) b!7192369))

(assert (= (and b!7192369 res!2928322) b!7192370))

(declare-fun m!7887440 () Bool)

(assert (=> b!7192369 m!7887440))

(declare-fun m!7887442 () Bool)

(assert (=> b!7192370 m!7887442))

(assert (=> d!2240366 d!2240608))

(declare-fun b!7192371 () Bool)

(declare-fun e!4319147 () Bool)

(declare-fun call!655830 () Bool)

(assert (=> b!7192371 (= e!4319147 call!655830)))

(declare-fun b!7192372 () Bool)

(declare-fun e!4319152 () Bool)

(declare-fun e!4319151 () Bool)

(assert (=> b!7192372 (= e!4319152 e!4319151)))

(declare-fun c!1338773 () Bool)

(assert (=> b!7192372 (= c!1338773 ((_ is Union!18363) (h!76141 lt!2571259)))))

(declare-fun b!7192373 () Bool)

(declare-fun res!2928325 () Bool)

(declare-fun e!4319148 () Bool)

(assert (=> b!7192373 (=> res!2928325 e!4319148)))

(assert (=> b!7192373 (= res!2928325 (not ((_ is Concat!27208) (h!76141 lt!2571259))))))

(assert (=> b!7192373 (= e!4319151 e!4319148)))

(declare-fun b!7192374 () Bool)

(declare-fun res!2928324 () Bool)

(declare-fun e!4319146 () Bool)

(assert (=> b!7192374 (=> (not res!2928324) (not e!4319146))))

(declare-fun call!655829 () Bool)

(assert (=> b!7192374 (= res!2928324 call!655829)))

(assert (=> b!7192374 (= e!4319151 e!4319146)))

(declare-fun b!7192375 () Bool)

(assert (=> b!7192375 (= e!4319148 e!4319147)))

(declare-fun res!2928327 () Bool)

(assert (=> b!7192375 (=> (not res!2928327) (not e!4319147))))

(assert (=> b!7192375 (= res!2928327 call!655829)))

(declare-fun b!7192376 () Bool)

(declare-fun e!4319150 () Bool)

(assert (=> b!7192376 (= e!4319152 e!4319150)))

(declare-fun res!2928323 () Bool)

(assert (=> b!7192376 (= res!2928323 (not (nullable!7785 (reg!18692 (h!76141 lt!2571259)))))))

(assert (=> b!7192376 (=> (not res!2928323) (not e!4319150))))

(declare-fun b!7192377 () Bool)

(assert (=> b!7192377 (= e!4319146 call!655830)))

(declare-fun d!2240610 () Bool)

(declare-fun res!2928326 () Bool)

(declare-fun e!4319149 () Bool)

(assert (=> d!2240610 (=> res!2928326 e!4319149)))

(assert (=> d!2240610 (= res!2928326 ((_ is ElementMatch!18363) (h!76141 lt!2571259)))))

(assert (=> d!2240610 (= (validRegex!9478 (h!76141 lt!2571259)) e!4319149)))

(declare-fun call!655831 () Bool)

(declare-fun bm!655824 () Bool)

(declare-fun c!1338774 () Bool)

(assert (=> bm!655824 (= call!655831 (validRegex!9478 (ite c!1338774 (reg!18692 (h!76141 lt!2571259)) (ite c!1338773 (regTwo!37239 (h!76141 lt!2571259)) (regTwo!37238 (h!76141 lt!2571259))))))))

(declare-fun bm!655825 () Bool)

(assert (=> bm!655825 (= call!655829 (validRegex!9478 (ite c!1338773 (regOne!37239 (h!76141 lt!2571259)) (regOne!37238 (h!76141 lt!2571259)))))))

(declare-fun bm!655826 () Bool)

(assert (=> bm!655826 (= call!655830 call!655831)))

(declare-fun b!7192378 () Bool)

(assert (=> b!7192378 (= e!4319149 e!4319152)))

(assert (=> b!7192378 (= c!1338774 ((_ is Star!18363) (h!76141 lt!2571259)))))

(declare-fun b!7192379 () Bool)

(assert (=> b!7192379 (= e!4319150 call!655831)))

(assert (= (and d!2240610 (not res!2928326)) b!7192378))

(assert (= (and b!7192378 c!1338774) b!7192376))

(assert (= (and b!7192378 (not c!1338774)) b!7192372))

(assert (= (and b!7192376 res!2928323) b!7192379))

(assert (= (and b!7192372 c!1338773) b!7192374))

(assert (= (and b!7192372 (not c!1338773)) b!7192373))

(assert (= (and b!7192374 res!2928324) b!7192377))

(assert (= (and b!7192373 (not res!2928325)) b!7192375))

(assert (= (and b!7192375 res!2928327) b!7192371))

(assert (= (or b!7192374 b!7192375) bm!655825))

(assert (= (or b!7192377 b!7192371) bm!655826))

(assert (= (or b!7192379 bm!655826) bm!655824))

(declare-fun m!7887444 () Bool)

(assert (=> b!7192376 m!7887444))

(declare-fun m!7887446 () Bool)

(assert (=> bm!655824 m!7887446))

(declare-fun m!7887448 () Bool)

(assert (=> bm!655825 m!7887448))

(assert (=> bs!1899733 d!2240610))

(declare-fun d!2240612 () Bool)

(declare-fun lt!2571295 () Bool)

(assert (=> d!2240612 (= lt!2571295 (select (content!14325 (t!383842 (t!383842 lt!2571244))) (h!76143 lt!2571244)))))

(declare-fun e!4319153 () Bool)

(assert (=> d!2240612 (= lt!2571295 e!4319153)))

(declare-fun res!2928329 () Bool)

(assert (=> d!2240612 (=> (not res!2928329) (not e!4319153))))

(assert (=> d!2240612 (= res!2928329 ((_ is Cons!69695) (t!383842 (t!383842 lt!2571244))))))

(assert (=> d!2240612 (= (contains!20725 (t!383842 (t!383842 lt!2571244)) (h!76143 lt!2571244)) lt!2571295)))

(declare-fun b!7192380 () Bool)

(declare-fun e!4319154 () Bool)

(assert (=> b!7192380 (= e!4319153 e!4319154)))

(declare-fun res!2928328 () Bool)

(assert (=> b!7192380 (=> res!2928328 e!4319154)))

(assert (=> b!7192380 (= res!2928328 (= (h!76143 (t!383842 (t!383842 lt!2571244))) (h!76143 lt!2571244)))))

(declare-fun b!7192381 () Bool)

(assert (=> b!7192381 (= e!4319154 (contains!20725 (t!383842 (t!383842 (t!383842 lt!2571244))) (h!76143 lt!2571244)))))

(assert (= (and d!2240612 res!2928329) b!7192380))

(assert (= (and b!7192380 (not res!2928328)) b!7192381))

(assert (=> d!2240612 m!7886698))

(declare-fun m!7887450 () Bool)

(assert (=> d!2240612 m!7887450))

(declare-fun m!7887452 () Bool)

(assert (=> b!7192381 m!7887452))

(assert (=> b!7191805 d!2240612))

(declare-fun b!7192382 () Bool)

(declare-fun e!4319156 () Bool)

(declare-fun call!655833 () Bool)

(assert (=> b!7192382 (= e!4319156 call!655833)))

(declare-fun b!7192383 () Bool)

(declare-fun e!4319161 () Bool)

(declare-fun e!4319160 () Bool)

(assert (=> b!7192383 (= e!4319161 e!4319160)))

(declare-fun c!1338775 () Bool)

(assert (=> b!7192383 (= c!1338775 ((_ is Union!18363) lt!2571270))))

(declare-fun b!7192384 () Bool)

(declare-fun res!2928332 () Bool)

(declare-fun e!4319157 () Bool)

(assert (=> b!7192384 (=> res!2928332 e!4319157)))

(assert (=> b!7192384 (= res!2928332 (not ((_ is Concat!27208) lt!2571270)))))

(assert (=> b!7192384 (= e!4319160 e!4319157)))

(declare-fun b!7192385 () Bool)

(declare-fun res!2928331 () Bool)

(declare-fun e!4319155 () Bool)

(assert (=> b!7192385 (=> (not res!2928331) (not e!4319155))))

(declare-fun call!655832 () Bool)

(assert (=> b!7192385 (= res!2928331 call!655832)))

(assert (=> b!7192385 (= e!4319160 e!4319155)))

(declare-fun b!7192386 () Bool)

(assert (=> b!7192386 (= e!4319157 e!4319156)))

(declare-fun res!2928334 () Bool)

(assert (=> b!7192386 (=> (not res!2928334) (not e!4319156))))

(assert (=> b!7192386 (= res!2928334 call!655832)))

(declare-fun b!7192387 () Bool)

(declare-fun e!4319159 () Bool)

(assert (=> b!7192387 (= e!4319161 e!4319159)))

(declare-fun res!2928330 () Bool)

(assert (=> b!7192387 (= res!2928330 (not (nullable!7785 (reg!18692 lt!2571270))))))

(assert (=> b!7192387 (=> (not res!2928330) (not e!4319159))))

(declare-fun b!7192388 () Bool)

(assert (=> b!7192388 (= e!4319155 call!655833)))

(declare-fun d!2240614 () Bool)

(declare-fun res!2928333 () Bool)

(declare-fun e!4319158 () Bool)

(assert (=> d!2240614 (=> res!2928333 e!4319158)))

(assert (=> d!2240614 (= res!2928333 ((_ is ElementMatch!18363) lt!2571270))))

(assert (=> d!2240614 (= (validRegex!9478 lt!2571270) e!4319158)))

(declare-fun call!655834 () Bool)

(declare-fun c!1338776 () Bool)

(declare-fun bm!655827 () Bool)

(assert (=> bm!655827 (= call!655834 (validRegex!9478 (ite c!1338776 (reg!18692 lt!2571270) (ite c!1338775 (regTwo!37239 lt!2571270) (regTwo!37238 lt!2571270)))))))

(declare-fun bm!655828 () Bool)

(assert (=> bm!655828 (= call!655832 (validRegex!9478 (ite c!1338775 (regOne!37239 lt!2571270) (regOne!37238 lt!2571270))))))

(declare-fun bm!655829 () Bool)

(assert (=> bm!655829 (= call!655833 call!655834)))

(declare-fun b!7192389 () Bool)

(assert (=> b!7192389 (= e!4319158 e!4319161)))

(assert (=> b!7192389 (= c!1338776 ((_ is Star!18363) lt!2571270))))

(declare-fun b!7192390 () Bool)

(assert (=> b!7192390 (= e!4319159 call!655834)))

(assert (= (and d!2240614 (not res!2928333)) b!7192389))

(assert (= (and b!7192389 c!1338776) b!7192387))

(assert (= (and b!7192389 (not c!1338776)) b!7192383))

(assert (= (and b!7192387 res!2928330) b!7192390))

(assert (= (and b!7192383 c!1338775) b!7192385))

(assert (= (and b!7192383 (not c!1338775)) b!7192384))

(assert (= (and b!7192385 res!2928331) b!7192388))

(assert (= (and b!7192384 (not res!2928332)) b!7192386))

(assert (= (and b!7192386 res!2928334) b!7192382))

(assert (= (or b!7192385 b!7192386) bm!655828))

(assert (= (or b!7192388 b!7192382) bm!655829))

(assert (= (or b!7192390 bm!655829) bm!655827))

(declare-fun m!7887454 () Bool)

(assert (=> b!7192387 m!7887454))

(declare-fun m!7887456 () Bool)

(assert (=> bm!655827 m!7887456))

(declare-fun m!7887458 () Bool)

(assert (=> bm!655828 m!7887458))

(assert (=> d!2240334 d!2240614))

(declare-fun d!2240616 () Bool)

(declare-fun res!2928335 () Bool)

(declare-fun e!4319162 () Bool)

(assert (=> d!2240616 (=> res!2928335 e!4319162)))

(assert (=> d!2240616 (= res!2928335 ((_ is Nil!69693) (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (=> d!2240616 (= (forall!17191 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))) lambda!437905) e!4319162)))

(declare-fun b!7192391 () Bool)

(declare-fun e!4319163 () Bool)

(assert (=> b!7192391 (= e!4319162 e!4319163)))

(declare-fun res!2928336 () Bool)

(assert (=> b!7192391 (=> (not res!2928336) (not e!4319163))))

(assert (=> b!7192391 (= res!2928336 (dynLambda!28388 lambda!437905 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(declare-fun b!7192392 () Bool)

(assert (=> b!7192392 (= e!4319163 (forall!17191 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))) lambda!437905))))

(assert (= (and d!2240616 (not res!2928335)) b!7192391))

(assert (= (and b!7192391 res!2928336) b!7192392))

(declare-fun b_lambda!275667 () Bool)

(assert (=> (not b_lambda!275667) (not b!7192391)))

(declare-fun m!7887460 () Bool)

(assert (=> b!7192391 m!7887460))

(declare-fun m!7887462 () Bool)

(assert (=> b!7192392 m!7887462))

(assert (=> d!2240334 d!2240616))

(declare-fun d!2240618 () Bool)

(assert (=> d!2240618 (= (isEmpty!40230 (tail!14082 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))) ((_ is Nil!69693) (tail!14082 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(assert (=> b!7191765 d!2240618))

(declare-fun d!2240620 () Bool)

(assert (=> d!2240620 (= (tail!14082 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))) (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))

(assert (=> b!7191765 d!2240620))

(declare-fun d!2240622 () Bool)

(declare-fun c!1338777 () Bool)

(assert (=> d!2240622 (= c!1338777 ((_ is Nil!69695) res!2928144))))

(declare-fun e!4319164 () (InoxSet Context!14630))

(assert (=> d!2240622 (= (content!14325 res!2928144) e!4319164)))

(declare-fun b!7192393 () Bool)

(assert (=> b!7192393 (= e!4319164 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192394 () Bool)

(assert (=> b!7192394 (= e!4319164 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 res!2928144) true) (content!14325 (t!383842 res!2928144))))))

(assert (= (and d!2240622 c!1338777) b!7192393))

(assert (= (and d!2240622 (not c!1338777)) b!7192394))

(declare-fun m!7887464 () Bool)

(assert (=> b!7192394 m!7887464))

(declare-fun m!7887466 () Bool)

(assert (=> b!7192394 m!7887466))

(assert (=> b!7191874 d!2240622))

(declare-fun d!2240624 () Bool)

(declare-fun lt!2571296 () Bool)

(assert (=> d!2240624 (= lt!2571296 (select (content!14325 (t!383842 res!2927985)) (h!76143 res!2927985)))))

(declare-fun e!4319165 () Bool)

(assert (=> d!2240624 (= lt!2571296 e!4319165)))

(declare-fun res!2928338 () Bool)

(assert (=> d!2240624 (=> (not res!2928338) (not e!4319165))))

(assert (=> d!2240624 (= res!2928338 ((_ is Cons!69695) (t!383842 res!2927985)))))

(assert (=> d!2240624 (= (contains!20725 (t!383842 res!2927985) (h!76143 res!2927985)) lt!2571296)))

(declare-fun b!7192395 () Bool)

(declare-fun e!4319166 () Bool)

(assert (=> b!7192395 (= e!4319165 e!4319166)))

(declare-fun res!2928337 () Bool)

(assert (=> b!7192395 (=> res!2928337 e!4319166)))

(assert (=> b!7192395 (= res!2928337 (= (h!76143 (t!383842 res!2927985)) (h!76143 res!2927985)))))

(declare-fun b!7192396 () Bool)

(assert (=> b!7192396 (= e!4319166 (contains!20725 (t!383842 (t!383842 res!2927985)) (h!76143 res!2927985)))))

(assert (= (and d!2240624 res!2928338) b!7192395))

(assert (= (and b!7192395 (not res!2928337)) b!7192396))

(assert (=> d!2240624 m!7886790))

(declare-fun m!7887468 () Bool)

(assert (=> d!2240624 m!7887468))

(declare-fun m!7887470 () Bool)

(assert (=> b!7192396 m!7887470))

(assert (=> b!7191704 d!2240624))

(declare-fun b!7192397 () Bool)

(declare-fun e!4319168 () Bool)

(declare-fun call!655836 () Bool)

(assert (=> b!7192397 (= e!4319168 call!655836)))

(declare-fun b!7192398 () Bool)

(declare-fun e!4319173 () Bool)

(declare-fun e!4319172 () Bool)

(assert (=> b!7192398 (= e!4319173 e!4319172)))

(declare-fun c!1338778 () Bool)

(assert (=> b!7192398 (= c!1338778 ((_ is Union!18363) (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))))))

(declare-fun b!7192399 () Bool)

(declare-fun res!2928341 () Bool)

(declare-fun e!4319169 () Bool)

(assert (=> b!7192399 (=> res!2928341 e!4319169)))

(assert (=> b!7192399 (= res!2928341 (not ((_ is Concat!27208) (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))))))

(assert (=> b!7192399 (= e!4319172 e!4319169)))

(declare-fun b!7192400 () Bool)

(declare-fun res!2928340 () Bool)

(declare-fun e!4319167 () Bool)

(assert (=> b!7192400 (=> (not res!2928340) (not e!4319167))))

(declare-fun call!655835 () Bool)

(assert (=> b!7192400 (= res!2928340 call!655835)))

(assert (=> b!7192400 (= e!4319172 e!4319167)))

(declare-fun b!7192401 () Bool)

(assert (=> b!7192401 (= e!4319169 e!4319168)))

(declare-fun res!2928343 () Bool)

(assert (=> b!7192401 (=> (not res!2928343) (not e!4319168))))

(assert (=> b!7192401 (= res!2928343 call!655835)))

(declare-fun b!7192402 () Bool)

(declare-fun e!4319171 () Bool)

(assert (=> b!7192402 (= e!4319173 e!4319171)))

(declare-fun res!2928339 () Bool)

(assert (=> b!7192402 (= res!2928339 (not (nullable!7785 (reg!18692 (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))))))))

(assert (=> b!7192402 (=> (not res!2928339) (not e!4319171))))

(declare-fun b!7192403 () Bool)

(assert (=> b!7192403 (= e!4319167 call!655836)))

(declare-fun d!2240626 () Bool)

(declare-fun res!2928342 () Bool)

(declare-fun e!4319170 () Bool)

(assert (=> d!2240626 (=> res!2928342 e!4319170)))

(assert (=> d!2240626 (= res!2928342 ((_ is ElementMatch!18363) (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))))))

(assert (=> d!2240626 (= (validRegex!9478 (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))) e!4319170)))

(declare-fun bm!655830 () Bool)

(declare-fun call!655837 () Bool)

(declare-fun c!1338779 () Bool)

(assert (=> bm!655830 (= call!655837 (validRegex!9478 (ite c!1338779 (reg!18692 (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))) (ite c!1338778 (regTwo!37239 (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))) (regTwo!37238 (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))))))))

(declare-fun bm!655831 () Bool)

(assert (=> bm!655831 (= call!655835 (validRegex!9478 (ite c!1338778 (regOne!37239 (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))) (regOne!37238 (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))))))))

(declare-fun bm!655832 () Bool)

(assert (=> bm!655832 (= call!655836 call!655837)))

(declare-fun b!7192404 () Bool)

(assert (=> b!7192404 (= e!4319170 e!4319173)))

(assert (=> b!7192404 (= c!1338779 ((_ is Star!18363) (ite c!1338650 (regOne!37239 (h!76141 (exprs!7815 setElem!53245))) (regOne!37238 (h!76141 (exprs!7815 setElem!53245))))))))

(declare-fun b!7192405 () Bool)

(assert (=> b!7192405 (= e!4319171 call!655837)))

(assert (= (and d!2240626 (not res!2928342)) b!7192404))

(assert (= (and b!7192404 c!1338779) b!7192402))

(assert (= (and b!7192404 (not c!1338779)) b!7192398))

(assert (= (and b!7192402 res!2928339) b!7192405))

(assert (= (and b!7192398 c!1338778) b!7192400))

(assert (= (and b!7192398 (not c!1338778)) b!7192399))

(assert (= (and b!7192400 res!2928340) b!7192403))

(assert (= (and b!7192399 (not res!2928341)) b!7192401))

(assert (= (and b!7192401 res!2928343) b!7192397))

(assert (= (or b!7192400 b!7192401) bm!655831))

(assert (= (or b!7192403 b!7192397) bm!655832))

(assert (= (or b!7192405 bm!655832) bm!655830))

(declare-fun m!7887472 () Bool)

(assert (=> b!7192402 m!7887472))

(declare-fun m!7887474 () Bool)

(assert (=> bm!655830 m!7887474))

(declare-fun m!7887476 () Bool)

(assert (=> bm!655831 m!7887476))

(assert (=> bm!655719 d!2240626))

(declare-fun b!7192406 () Bool)

(declare-fun e!4319175 () Bool)

(declare-fun call!655839 () Bool)

(assert (=> b!7192406 (= e!4319175 call!655839)))

(declare-fun b!7192407 () Bool)

(declare-fun e!4319180 () Bool)

(declare-fun e!4319179 () Bool)

(assert (=> b!7192407 (= e!4319180 e!4319179)))

(declare-fun c!1338780 () Bool)

(assert (=> b!7192407 (= c!1338780 ((_ is Union!18363) (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))))))

(declare-fun b!7192408 () Bool)

(declare-fun res!2928346 () Bool)

(declare-fun e!4319176 () Bool)

(assert (=> b!7192408 (=> res!2928346 e!4319176)))

(assert (=> b!7192408 (= res!2928346 (not ((_ is Concat!27208) (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999))))))))))

(assert (=> b!7192408 (= e!4319179 e!4319176)))

(declare-fun b!7192409 () Bool)

(declare-fun res!2928345 () Bool)

(declare-fun e!4319174 () Bool)

(assert (=> b!7192409 (=> (not res!2928345) (not e!4319174))))

(declare-fun call!655838 () Bool)

(assert (=> b!7192409 (= res!2928345 call!655838)))

(assert (=> b!7192409 (= e!4319179 e!4319174)))

(declare-fun b!7192410 () Bool)

(assert (=> b!7192410 (= e!4319176 e!4319175)))

(declare-fun res!2928348 () Bool)

(assert (=> b!7192410 (=> (not res!2928348) (not e!4319175))))

(assert (=> b!7192410 (= res!2928348 call!655838)))

(declare-fun b!7192411 () Bool)

(declare-fun e!4319178 () Bool)

(assert (=> b!7192411 (= e!4319180 e!4319178)))

(declare-fun res!2928344 () Bool)

(assert (=> b!7192411 (= res!2928344 (not (nullable!7785 (reg!18692 (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))))))))

(assert (=> b!7192411 (=> (not res!2928344) (not e!4319178))))

(declare-fun b!7192412 () Bool)

(assert (=> b!7192412 (= e!4319174 call!655839)))

(declare-fun d!2240628 () Bool)

(declare-fun res!2928347 () Bool)

(declare-fun e!4319177 () Bool)

(assert (=> d!2240628 (=> res!2928347 e!4319177)))

(assert (=> d!2240628 (= res!2928347 ((_ is ElementMatch!18363) (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))))))

(assert (=> d!2240628 (= (validRegex!9478 (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) e!4319177)))

(declare-fun call!655840 () Bool)

(declare-fun c!1338781 () Bool)

(declare-fun bm!655833 () Bool)

(assert (=> bm!655833 (= call!655840 (validRegex!9478 (ite c!1338781 (reg!18692 (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) (ite c!1338780 (regTwo!37239 (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) (regTwo!37238 (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999))))))))))))

(declare-fun bm!655834 () Bool)

(assert (=> bm!655834 (= call!655838 (validRegex!9478 (ite c!1338780 (regOne!37239 (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) (regOne!37238 (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))))))))

(declare-fun bm!655835 () Bool)

(assert (=> bm!655835 (= call!655839 call!655840)))

(declare-fun b!7192413 () Bool)

(assert (=> b!7192413 (= e!4319177 e!4319180)))

(assert (=> b!7192413 (= c!1338781 ((_ is Star!18363) (ite c!1338590 (reg!18692 (h!76141 (exprs!7815 empty!2999))) (ite c!1338589 (regTwo!37239 (h!76141 (exprs!7815 empty!2999))) (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))))))

(declare-fun b!7192414 () Bool)

(assert (=> b!7192414 (= e!4319178 call!655840)))

(assert (= (and d!2240628 (not res!2928347)) b!7192413))

(assert (= (and b!7192413 c!1338781) b!7192411))

(assert (= (and b!7192413 (not c!1338781)) b!7192407))

(assert (= (and b!7192411 res!2928344) b!7192414))

(assert (= (and b!7192407 c!1338780) b!7192409))

(assert (= (and b!7192407 (not c!1338780)) b!7192408))

(assert (= (and b!7192409 res!2928345) b!7192412))

(assert (= (and b!7192408 (not res!2928346)) b!7192410))

(assert (= (and b!7192410 res!2928348) b!7192406))

(assert (= (or b!7192409 b!7192410) bm!655834))

(assert (= (or b!7192412 b!7192406) bm!655835))

(assert (= (or b!7192414 bm!655835) bm!655833))

(declare-fun m!7887478 () Bool)

(assert (=> b!7192411 m!7887478))

(declare-fun m!7887480 () Bool)

(assert (=> bm!655833 m!7887480))

(declare-fun m!7887482 () Bool)

(assert (=> bm!655834 m!7887482))

(assert (=> bm!655668 d!2240628))

(declare-fun d!2240630 () Bool)

(declare-fun res!2928349 () Bool)

(declare-fun e!4319181 () Bool)

(assert (=> d!2240630 (=> res!2928349 e!4319181)))

(assert (=> d!2240630 (= res!2928349 ((_ is Nil!69693) (t!383840 (t!383840 (exprs!7815 empty!2999)))))))

(assert (=> d!2240630 (= (forall!17191 (t!383840 (t!383840 (exprs!7815 empty!2999))) lambda!437864) e!4319181)))

(declare-fun b!7192415 () Bool)

(declare-fun e!4319182 () Bool)

(assert (=> b!7192415 (= e!4319181 e!4319182)))

(declare-fun res!2928350 () Bool)

(assert (=> b!7192415 (=> (not res!2928350) (not e!4319182))))

(assert (=> b!7192415 (= res!2928350 (dynLambda!28388 lambda!437864 (h!76141 (t!383840 (t!383840 (exprs!7815 empty!2999))))))))

(declare-fun b!7192416 () Bool)

(assert (=> b!7192416 (= e!4319182 (forall!17191 (t!383840 (t!383840 (t!383840 (exprs!7815 empty!2999)))) lambda!437864))))

(assert (= (and d!2240630 (not res!2928349)) b!7192415))

(assert (= (and b!7192415 res!2928350) b!7192416))

(declare-fun b_lambda!275669 () Bool)

(assert (=> (not b_lambda!275669) (not b!7192415)))

(declare-fun m!7887484 () Bool)

(assert (=> b!7192415 m!7887484))

(declare-fun m!7887486 () Bool)

(assert (=> b!7192416 m!7887486))

(assert (=> b!7191701 d!2240630))

(declare-fun d!2240632 () Bool)

(assert (=> d!2240632 (= (isEmptyExpr!2097 lt!2571268) ((_ is EmptyExpr!18363) lt!2571268))))

(assert (=> b!7191676 d!2240632))

(declare-fun d!2240634 () Bool)

(assert (=> d!2240634 (= (nullable!7785 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))) (nullableFct!3046 (reg!18692 (ite c!1338550 (regOne!37239 lt!2571228) (regOne!37238 lt!2571228)))))))

(declare-fun bs!1899958 () Bool)

(assert (= bs!1899958 d!2240634))

(declare-fun m!7887488 () Bool)

(assert (=> bs!1899958 m!7887488))

(assert (=> b!7191544 d!2240634))

(declare-fun d!2240636 () Bool)

(assert (=> d!2240636 (= (nullable!7785 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))) (nullableFct!3046 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))

(declare-fun bs!1899959 () Bool)

(assert (= bs!1899959 d!2240636))

(declare-fun m!7887490 () Bool)

(assert (=> bs!1899959 m!7887490))

(assert (=> b!7191743 d!2240636))

(declare-fun d!2240638 () Bool)

(declare-fun lt!2571297 () Bool)

(assert (=> d!2240638 (= lt!2571297 (select (content!14325 (t!383842 (t!383842 lt!2571244))) (h!76143 (t!383842 lt!2571244))))))

(declare-fun e!4319183 () Bool)

(assert (=> d!2240638 (= lt!2571297 e!4319183)))

(declare-fun res!2928352 () Bool)

(assert (=> d!2240638 (=> (not res!2928352) (not e!4319183))))

(assert (=> d!2240638 (= res!2928352 ((_ is Cons!69695) (t!383842 (t!383842 lt!2571244))))))

(assert (=> d!2240638 (= (contains!20725 (t!383842 (t!383842 lt!2571244)) (h!76143 (t!383842 lt!2571244))) lt!2571297)))

(declare-fun b!7192417 () Bool)

(declare-fun e!4319184 () Bool)

(assert (=> b!7192417 (= e!4319183 e!4319184)))

(declare-fun res!2928351 () Bool)

(assert (=> b!7192417 (=> res!2928351 e!4319184)))

(assert (=> b!7192417 (= res!2928351 (= (h!76143 (t!383842 (t!383842 lt!2571244))) (h!76143 (t!383842 lt!2571244))))))

(declare-fun b!7192418 () Bool)

(assert (=> b!7192418 (= e!4319184 (contains!20725 (t!383842 (t!383842 (t!383842 lt!2571244))) (h!76143 (t!383842 lt!2571244))))))

(assert (= (and d!2240638 res!2928352) b!7192417))

(assert (= (and b!7192417 (not res!2928351)) b!7192418))

(assert (=> d!2240638 m!7886698))

(declare-fun m!7887492 () Bool)

(assert (=> d!2240638 m!7887492))

(declare-fun m!7887494 () Bool)

(assert (=> b!7192418 m!7887494))

(assert (=> b!7191698 d!2240638))

(declare-fun d!2240640 () Bool)

(declare-fun res!2928353 () Bool)

(declare-fun e!4319185 () Bool)

(assert (=> d!2240640 (=> res!2928353 e!4319185)))

(assert (=> d!2240640 (= res!2928353 ((_ is Nil!69695) (t!383842 lt!2571261)))))

(assert (=> d!2240640 (= (noDuplicate!2896 (t!383842 lt!2571261)) e!4319185)))

(declare-fun b!7192419 () Bool)

(declare-fun e!4319186 () Bool)

(assert (=> b!7192419 (= e!4319185 e!4319186)))

(declare-fun res!2928354 () Bool)

(assert (=> b!7192419 (=> (not res!2928354) (not e!4319186))))

(assert (=> b!7192419 (= res!2928354 (not (contains!20725 (t!383842 (t!383842 lt!2571261)) (h!76143 (t!383842 lt!2571261)))))))

(declare-fun b!7192420 () Bool)

(assert (=> b!7192420 (= e!4319186 (noDuplicate!2896 (t!383842 (t!383842 lt!2571261))))))

(assert (= (and d!2240640 (not res!2928353)) b!7192419))

(assert (= (and b!7192419 res!2928354) b!7192420))

(declare-fun m!7887496 () Bool)

(assert (=> b!7192419 m!7887496))

(declare-fun m!7887498 () Bool)

(assert (=> b!7192420 m!7887498))

(assert (=> b!7191860 d!2240640))

(declare-fun d!2240642 () Bool)

(declare-fun res!2928355 () Bool)

(declare-fun e!4319187 () Bool)

(assert (=> d!2240642 (=> res!2928355 e!4319187)))

(assert (=> d!2240642 (= res!2928355 ((_ is Nil!69693) lt!2571286))))

(assert (=> d!2240642 (= (forall!17191 lt!2571286 lambda!437916) e!4319187)))

(declare-fun b!7192421 () Bool)

(declare-fun e!4319188 () Bool)

(assert (=> b!7192421 (= e!4319187 e!4319188)))

(declare-fun res!2928356 () Bool)

(assert (=> b!7192421 (=> (not res!2928356) (not e!4319188))))

(assert (=> b!7192421 (= res!2928356 (dynLambda!28388 lambda!437916 (h!76141 lt!2571286)))))

(declare-fun b!7192422 () Bool)

(assert (=> b!7192422 (= e!4319188 (forall!17191 (t!383840 lt!2571286) lambda!437916))))

(assert (= (and d!2240642 (not res!2928355)) b!7192421))

(assert (= (and b!7192421 res!2928356) b!7192422))

(declare-fun b_lambda!275671 () Bool)

(assert (=> (not b_lambda!275671) (not b!7192421)))

(declare-fun m!7887500 () Bool)

(assert (=> b!7192421 m!7887500))

(declare-fun m!7887502 () Bool)

(assert (=> b!7192422 m!7887502))

(assert (=> d!2240400 d!2240642))

(declare-fun d!2240644 () Bool)

(assert (=> d!2240644 (= (isEmpty!40230 (exprs!7815 (h!76143 (toList!11306 z!3530)))) ((_ is Nil!69693) (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(assert (=> b!7191680 d!2240644))

(declare-fun d!2240646 () Bool)

(assert (=> d!2240646 (= (isUnion!1586 lt!2571281) ((_ is Union!18363) lt!2571281))))

(assert (=> b!7191919 d!2240646))

(declare-fun bm!655836 () Bool)

(declare-fun call!655844 () (InoxSet Context!14630))

(declare-fun call!655843 () (InoxSet Context!14630))

(assert (=> bm!655836 (= call!655844 call!655843)))

(declare-fun c!1338785 () Bool)

(declare-fun d!2240648 () Bool)

(assert (=> d!2240648 (= c!1338785 (and ((_ is ElementMatch!18363) (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))) (= (c!1338487 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))) lt!2571215)))))

(declare-fun e!4319190 () (InoxSet Context!14630))

(assert (=> d!2240648 (= (derivationStepZipperDown!2516 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))) (ite c!1338647 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655715)) lt!2571215) e!4319190)))

(declare-fun b!7192423 () Bool)

(declare-fun e!4319192 () (InoxSet Context!14630))

(declare-fun call!655841 () (InoxSet Context!14630))

(assert (=> b!7192423 (= e!4319192 ((_ map or) call!655841 call!655844))))

(declare-fun b!7192424 () Bool)

(declare-fun e!4319194 () (InoxSet Context!14630))

(declare-fun call!655845 () (InoxSet Context!14630))

(assert (=> b!7192424 (= e!4319194 call!655845)))

(declare-fun bm!655837 () Bool)

(declare-fun call!655846 () List!69817)

(declare-fun call!655842 () List!69817)

(assert (=> bm!655837 (= call!655846 call!655842)))

(declare-fun b!7192425 () Bool)

(assert (=> b!7192425 (= e!4319190 (store ((as const (Array Context!14630 Bool)) false) (ite c!1338647 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655715)) true))))

(declare-fun b!7192426 () Bool)

(declare-fun c!1338784 () Bool)

(assert (=> b!7192426 (= c!1338784 ((_ is Star!18363) (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(declare-fun e!4319191 () (InoxSet Context!14630))

(assert (=> b!7192426 (= e!4319191 e!4319194)))

(declare-fun b!7192427 () Bool)

(declare-fun c!1338783 () Bool)

(declare-fun e!4319189 () Bool)

(assert (=> b!7192427 (= c!1338783 e!4319189)))

(declare-fun res!2928357 () Bool)

(assert (=> b!7192427 (=> (not res!2928357) (not e!4319189))))

(assert (=> b!7192427 (= res!2928357 ((_ is Concat!27208) (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(declare-fun e!4319193 () (InoxSet Context!14630))

(assert (=> b!7192427 (= e!4319193 e!4319192)))

(declare-fun b!7192428 () Bool)

(assert (=> b!7192428 (= e!4319190 e!4319193)))

(declare-fun c!1338786 () Bool)

(assert (=> b!7192428 (= c!1338786 ((_ is Union!18363) (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(declare-fun b!7192429 () Bool)

(assert (=> b!7192429 (= e!4319192 e!4319191)))

(declare-fun c!1338782 () Bool)

(assert (=> b!7192429 (= c!1338782 ((_ is Concat!27208) (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))))))

(declare-fun bm!655838 () Bool)

(assert (=> bm!655838 (= call!655841 (derivationStepZipperDown!2516 (ite c!1338786 (regOne!37239 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))) (regOne!37238 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (ite c!1338786 (ite c!1338647 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655715)) (Context!14631 call!655842)) lt!2571215))))

(declare-fun bm!655839 () Bool)

(assert (=> bm!655839 (= call!655843 (derivationStepZipperDown!2516 (ite c!1338786 (regTwo!37239 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))) (ite c!1338783 (regTwo!37238 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))) (ite c!1338782 (regOne!37238 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))) (reg!18692 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))) (ite (or c!1338786 c!1338783) (ite c!1338647 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655715)) (Context!14631 call!655846)) lt!2571215))))

(declare-fun b!7192430 () Bool)

(assert (=> b!7192430 (= e!4319191 call!655845)))

(declare-fun bm!655840 () Bool)

(assert (=> bm!655840 (= call!655845 call!655844)))

(declare-fun b!7192431 () Bool)

(assert (=> b!7192431 (= e!4319194 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192432 () Bool)

(assert (=> b!7192432 (= e!4319193 ((_ map or) call!655841 call!655843))))

(declare-fun b!7192433 () Bool)

(assert (=> b!7192433 (= e!4319189 (nullable!7785 (regOne!37238 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))

(declare-fun bm!655841 () Bool)

(assert (=> bm!655841 (= call!655842 ($colon$colon!2846 (exprs!7815 (ite c!1338647 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (Context!14631 call!655715))) (ite (or c!1338783 c!1338782) (regTwo!37238 (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))))) (ite c!1338647 (regOne!37239 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217)))))) (regOne!37238 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))

(assert (= (and d!2240648 c!1338785) b!7192425))

(assert (= (and d!2240648 (not c!1338785)) b!7192428))

(assert (= (and b!7192428 c!1338786) b!7192432))

(assert (= (and b!7192428 (not c!1338786)) b!7192427))

(assert (= (and b!7192427 res!2928357) b!7192433))

(assert (= (and b!7192427 c!1338783) b!7192423))

(assert (= (and b!7192427 (not c!1338783)) b!7192429))

(assert (= (and b!7192429 c!1338782) b!7192430))

(assert (= (and b!7192429 (not c!1338782)) b!7192426))

(assert (= (and b!7192426 c!1338784) b!7192424))

(assert (= (and b!7192426 (not c!1338784)) b!7192431))

(assert (= (or b!7192430 b!7192424) bm!655837))

(assert (= (or b!7192430 b!7192424) bm!655840))

(assert (= (or b!7192423 bm!655840) bm!655836))

(assert (= (or b!7192423 bm!655837) bm!655841))

(assert (= (or b!7192432 bm!655836) bm!655839))

(assert (= (or b!7192432 b!7192423) bm!655838))

(declare-fun m!7887504 () Bool)

(assert (=> bm!655841 m!7887504))

(declare-fun m!7887506 () Bool)

(assert (=> bm!655838 m!7887506))

(declare-fun m!7887508 () Bool)

(assert (=> b!7192425 m!7887508))

(declare-fun m!7887510 () Bool)

(assert (=> b!7192433 m!7887510))

(declare-fun m!7887512 () Bool)

(assert (=> bm!655839 m!7887512))

(assert (=> bm!655711 d!2240648))

(declare-fun d!2240650 () Bool)

(assert (=> d!2240650 (= (nullable!7785 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))) (nullableFct!3046 (h!76141 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 (Context!14631 (t!383840 (exprs!7815 lt!2571217))))))))))))

(declare-fun bs!1899960 () Bool)

(assert (= bs!1899960 d!2240650))

(declare-fun m!7887514 () Bool)

(assert (=> bs!1899960 m!7887514))

(assert (=> b!7191708 d!2240650))

(declare-fun b!7192434 () Bool)

(declare-fun e!4319196 () Bool)

(declare-fun call!655848 () Bool)

(assert (=> b!7192434 (= e!4319196 call!655848)))

(declare-fun b!7192435 () Bool)

(declare-fun e!4319201 () Bool)

(declare-fun e!4319200 () Bool)

(assert (=> b!7192435 (= e!4319201 e!4319200)))

(declare-fun c!1338787 () Bool)

(assert (=> b!7192435 (= c!1338787 ((_ is Union!18363) (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))))))

(declare-fun b!7192436 () Bool)

(declare-fun res!2928360 () Bool)

(declare-fun e!4319197 () Bool)

(assert (=> b!7192436 (=> res!2928360 e!4319197)))

(assert (=> b!7192436 (= res!2928360 (not ((_ is Concat!27208) (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260)))))))

(assert (=> b!7192436 (= e!4319200 e!4319197)))

(declare-fun b!7192437 () Bool)

(declare-fun res!2928359 () Bool)

(declare-fun e!4319195 () Bool)

(assert (=> b!7192437 (=> (not res!2928359) (not e!4319195))))

(declare-fun call!655847 () Bool)

(assert (=> b!7192437 (= res!2928359 call!655847)))

(assert (=> b!7192437 (= e!4319200 e!4319195)))

(declare-fun b!7192438 () Bool)

(assert (=> b!7192438 (= e!4319197 e!4319196)))

(declare-fun res!2928362 () Bool)

(assert (=> b!7192438 (=> (not res!2928362) (not e!4319196))))

(assert (=> b!7192438 (= res!2928362 call!655847)))

(declare-fun b!7192439 () Bool)

(declare-fun e!4319199 () Bool)

(assert (=> b!7192439 (= e!4319201 e!4319199)))

(declare-fun res!2928358 () Bool)

(assert (=> b!7192439 (= res!2928358 (not (nullable!7785 (reg!18692 (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))))))))

(assert (=> b!7192439 (=> (not res!2928358) (not e!4319199))))

(declare-fun b!7192440 () Bool)

(assert (=> b!7192440 (= e!4319195 call!655848)))

(declare-fun d!2240652 () Bool)

(declare-fun res!2928361 () Bool)

(declare-fun e!4319198 () Bool)

(assert (=> d!2240652 (=> res!2928361 e!4319198)))

(assert (=> d!2240652 (= res!2928361 ((_ is ElementMatch!18363) (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))))))

(assert (=> d!2240652 (= (validRegex!9478 (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))) e!4319198)))

(declare-fun call!655849 () Bool)

(declare-fun bm!655842 () Bool)

(declare-fun c!1338788 () Bool)

(assert (=> bm!655842 (= call!655849 (validRegex!9478 (ite c!1338788 (reg!18692 (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))) (ite c!1338787 (regTwo!37239 (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))) (regTwo!37238 (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260)))))))))

(declare-fun bm!655843 () Bool)

(assert (=> bm!655843 (= call!655847 (validRegex!9478 (ite c!1338787 (regOne!37239 (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))) (regOne!37238 (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))))))))

(declare-fun bm!655844 () Bool)

(assert (=> bm!655844 (= call!655848 call!655849)))

(declare-fun b!7192441 () Bool)

(assert (=> b!7192441 (= e!4319198 e!4319201)))

(assert (=> b!7192441 (= c!1338788 ((_ is Star!18363) (ite c!1338693 (regOne!37239 lt!2571260) (regOne!37238 lt!2571260))))))

(declare-fun b!7192442 () Bool)

(assert (=> b!7192442 (= e!4319199 call!655849)))

(assert (= (and d!2240652 (not res!2928361)) b!7192441))

(assert (= (and b!7192441 c!1338788) b!7192439))

(assert (= (and b!7192441 (not c!1338788)) b!7192435))

(assert (= (and b!7192439 res!2928358) b!7192442))

(assert (= (and b!7192435 c!1338787) b!7192437))

(assert (= (and b!7192435 (not c!1338787)) b!7192436))

(assert (= (and b!7192437 res!2928359) b!7192440))

(assert (= (and b!7192436 (not res!2928360)) b!7192438))

(assert (= (and b!7192438 res!2928362) b!7192434))

(assert (= (or b!7192437 b!7192438) bm!655843))

(assert (= (or b!7192440 b!7192434) bm!655844))

(assert (= (or b!7192442 bm!655844) bm!655842))

(declare-fun m!7887516 () Bool)

(assert (=> b!7192439 m!7887516))

(declare-fun m!7887518 () Bool)

(assert (=> bm!655842 m!7887518))

(declare-fun m!7887520 () Bool)

(assert (=> bm!655843 m!7887520))

(assert (=> bm!655746 d!2240652))

(declare-fun d!2240654 () Bool)

(declare-fun res!2928363 () Bool)

(declare-fun e!4319202 () Bool)

(assert (=> d!2240654 (=> res!2928363 e!4319202)))

(assert (=> d!2240654 (= res!2928363 ((_ is Nil!69693) (exprs!7815 _$3!486)))))

(assert (=> d!2240654 (= (forall!17191 (exprs!7815 _$3!486) lambda!437897) e!4319202)))

(declare-fun b!7192443 () Bool)

(declare-fun e!4319203 () Bool)

(assert (=> b!7192443 (= e!4319202 e!4319203)))

(declare-fun res!2928364 () Bool)

(assert (=> b!7192443 (=> (not res!2928364) (not e!4319203))))

(assert (=> b!7192443 (= res!2928364 (dynLambda!28388 lambda!437897 (h!76141 (exprs!7815 _$3!486))))))

(declare-fun b!7192444 () Bool)

(assert (=> b!7192444 (= e!4319203 (forall!17191 (t!383840 (exprs!7815 _$3!486)) lambda!437897))))

(assert (= (and d!2240654 (not res!2928363)) b!7192443))

(assert (= (and b!7192443 res!2928364) b!7192444))

(declare-fun b_lambda!275673 () Bool)

(assert (=> (not b_lambda!275673) (not b!7192443)))

(declare-fun m!7887522 () Bool)

(assert (=> b!7192443 m!7887522))

(declare-fun m!7887524 () Bool)

(assert (=> b!7192444 m!7887524))

(assert (=> d!2240278 d!2240654))

(declare-fun d!2240656 () Bool)

(declare-fun c!1338789 () Bool)

(assert (=> d!2240656 (= c!1338789 ((_ is Nil!69695) (t!383842 (t!383842 lt!2571231))))))

(declare-fun e!4319204 () (InoxSet Context!14630))

(assert (=> d!2240656 (= (content!14325 (t!383842 (t!383842 lt!2571231))) e!4319204)))

(declare-fun b!7192445 () Bool)

(assert (=> b!7192445 (= e!4319204 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192446 () Bool)

(assert (=> b!7192446 (= e!4319204 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 (t!383842 (t!383842 lt!2571231))) true) (content!14325 (t!383842 (t!383842 (t!383842 lt!2571231))))))))

(assert (= (and d!2240656 c!1338789) b!7192445))

(assert (= (and d!2240656 (not c!1338789)) b!7192446))

(declare-fun m!7887526 () Bool)

(assert (=> b!7192446 m!7887526))

(declare-fun m!7887528 () Bool)

(assert (=> b!7192446 m!7887528))

(assert (=> b!7191876 d!2240656))

(declare-fun d!2240658 () Bool)

(declare-fun res!2928365 () Bool)

(declare-fun e!4319205 () Bool)

(assert (=> d!2240658 (=> res!2928365 e!4319205)))

(assert (=> d!2240658 (= res!2928365 ((_ is Nil!69695) (t!383842 (toList!11306 z!3530))))))

(assert (=> d!2240658 (= (forall!17193 (t!383842 (toList!11306 z!3530)) lambda!437887) e!4319205)))

(declare-fun b!7192447 () Bool)

(declare-fun e!4319206 () Bool)

(assert (=> b!7192447 (= e!4319205 e!4319206)))

(declare-fun res!2928366 () Bool)

(assert (=> b!7192447 (=> (not res!2928366) (not e!4319206))))

(assert (=> b!7192447 (= res!2928366 (dynLambda!28389 lambda!437887 (h!76143 (t!383842 (toList!11306 z!3530)))))))

(declare-fun b!7192448 () Bool)

(assert (=> b!7192448 (= e!4319206 (forall!17193 (t!383842 (t!383842 (toList!11306 z!3530))) lambda!437887))))

(assert (= (and d!2240658 (not res!2928365)) b!7192447))

(assert (= (and b!7192447 res!2928366) b!7192448))

(declare-fun b_lambda!275675 () Bool)

(assert (=> (not b_lambda!275675) (not b!7192447)))

(declare-fun m!7887530 () Bool)

(assert (=> b!7192447 m!7887530))

(declare-fun m!7887532 () Bool)

(assert (=> b!7192448 m!7887532))

(assert (=> b!7191567 d!2240658))

(declare-fun d!2240660 () Bool)

(assert (=> d!2240660 (= (nullable!7785 (ite c!1338677 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))))) (nullableFct!3046 (ite c!1338677 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))))))))

(declare-fun bs!1899961 () Bool)

(assert (= bs!1899961 d!2240660))

(declare-fun m!7887534 () Bool)

(assert (=> bs!1899961 m!7887534))

(assert (=> bm!655737 d!2240660))

(declare-fun bm!655845 () Bool)

(declare-fun call!655853 () (InoxSet Context!14630))

(declare-fun call!655852 () (InoxSet Context!14630))

(assert (=> bm!655845 (= call!655853 call!655852)))

(declare-fun c!1338793 () Bool)

(declare-fun d!2240662 () Bool)

(assert (=> d!2240662 (= c!1338793 (and ((_ is ElementMatch!18363) (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))) (= (c!1338487 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))) lt!2571215)))))

(declare-fun e!4319208 () (InoxSet Context!14630))

(assert (=> d!2240662 (= (derivationStepZipperDown!2516 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))) (ite (or c!1338599 c!1338596) (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655687)) lt!2571215) e!4319208)))

(declare-fun b!7192449 () Bool)

(declare-fun e!4319210 () (InoxSet Context!14630))

(declare-fun call!655850 () (InoxSet Context!14630))

(assert (=> b!7192449 (= e!4319210 ((_ map or) call!655850 call!655853))))

(declare-fun b!7192450 () Bool)

(declare-fun e!4319212 () (InoxSet Context!14630))

(declare-fun call!655854 () (InoxSet Context!14630))

(assert (=> b!7192450 (= e!4319212 call!655854)))

(declare-fun bm!655846 () Bool)

(declare-fun call!655855 () List!69817)

(declare-fun call!655851 () List!69817)

(assert (=> bm!655846 (= call!655855 call!655851)))

(declare-fun b!7192451 () Bool)

(assert (=> b!7192451 (= e!4319208 (store ((as const (Array Context!14630 Bool)) false) (ite (or c!1338599 c!1338596) (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655687)) true))))

(declare-fun b!7192452 () Bool)

(declare-fun c!1338792 () Bool)

(assert (=> b!7192452 (= c!1338792 ((_ is Star!18363) (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))))))

(declare-fun e!4319209 () (InoxSet Context!14630))

(assert (=> b!7192452 (= e!4319209 e!4319212)))

(declare-fun b!7192453 () Bool)

(declare-fun c!1338791 () Bool)

(declare-fun e!4319207 () Bool)

(assert (=> b!7192453 (= c!1338791 e!4319207)))

(declare-fun res!2928367 () Bool)

(assert (=> b!7192453 (=> (not res!2928367) (not e!4319207))))

(assert (=> b!7192453 (= res!2928367 ((_ is Concat!27208) (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))))))

(declare-fun e!4319211 () (InoxSet Context!14630))

(assert (=> b!7192453 (= e!4319211 e!4319210)))

(declare-fun b!7192454 () Bool)

(assert (=> b!7192454 (= e!4319208 e!4319211)))

(declare-fun c!1338794 () Bool)

(assert (=> b!7192454 (= c!1338794 ((_ is Union!18363) (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))))))

(declare-fun b!7192455 () Bool)

(assert (=> b!7192455 (= e!4319210 e!4319209)))

(declare-fun c!1338790 () Bool)

(assert (=> b!7192455 (= c!1338790 ((_ is Concat!27208) (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))))))

(declare-fun bm!655847 () Bool)

(assert (=> bm!655847 (= call!655850 (derivationStepZipperDown!2516 (ite c!1338794 (regOne!37239 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))) (regOne!37238 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))) (ite c!1338794 (ite (or c!1338599 c!1338596) (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655687)) (Context!14631 call!655851)) lt!2571215))))

(declare-fun bm!655848 () Bool)

(assert (=> bm!655848 (= call!655852 (derivationStepZipperDown!2516 (ite c!1338794 (regTwo!37239 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))) (ite c!1338791 (regTwo!37238 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))) (ite c!1338790 (regOne!37238 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))) (reg!18692 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))))) (ite (or c!1338794 c!1338791) (ite (or c!1338599 c!1338596) (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655687)) (Context!14631 call!655855)) lt!2571215))))

(declare-fun b!7192456 () Bool)

(assert (=> b!7192456 (= e!4319209 call!655854)))

(declare-fun bm!655849 () Bool)

(assert (=> bm!655849 (= call!655854 call!655853)))

(declare-fun b!7192457 () Bool)

(assert (=> b!7192457 (= e!4319212 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192458 () Bool)

(assert (=> b!7192458 (= e!4319211 ((_ map or) call!655850 call!655852))))

(declare-fun b!7192459 () Bool)

(assert (=> b!7192459 (= e!4319207 (nullable!7785 (regOne!37238 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))))))

(declare-fun bm!655850 () Bool)

(assert (=> bm!655850 (= call!655851 ($colon$colon!2846 (exprs!7815 (ite (or c!1338599 c!1338596) (ite c!1338587 (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655668)) (Context!14631 call!655687))) (ite (or c!1338791 c!1338790) (regTwo!37238 (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))))))) (ite c!1338599 (regTwo!37239 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338596 (regTwo!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (ite c!1338595 (regOne!37238 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217))))) (reg!18692 (ite c!1338587 (regOne!37239 (h!76141 (exprs!7815 lt!2571217))) (regOne!37238 (h!76141 (exprs!7815 lt!2571217)))))))))))))

(assert (= (and d!2240662 c!1338793) b!7192451))

(assert (= (and d!2240662 (not c!1338793)) b!7192454))

(assert (= (and b!7192454 c!1338794) b!7192458))

(assert (= (and b!7192454 (not c!1338794)) b!7192453))

(assert (= (and b!7192453 res!2928367) b!7192459))

(assert (= (and b!7192453 c!1338791) b!7192449))

(assert (= (and b!7192453 (not c!1338791)) b!7192455))

(assert (= (and b!7192455 c!1338790) b!7192456))

(assert (= (and b!7192455 (not c!1338790)) b!7192452))

(assert (= (and b!7192452 c!1338792) b!7192450))

(assert (= (and b!7192452 (not c!1338792)) b!7192457))

(assert (= (or b!7192456 b!7192450) bm!655846))

(assert (= (or b!7192456 b!7192450) bm!655849))

(assert (= (or b!7192449 bm!655849) bm!655845))

(assert (= (or b!7192449 bm!655846) bm!655850))

(assert (= (or b!7192458 bm!655845) bm!655848))

(assert (= (or b!7192458 b!7192449) bm!655847))

(declare-fun m!7887536 () Bool)

(assert (=> bm!655850 m!7887536))

(declare-fun m!7887538 () Bool)

(assert (=> bm!655847 m!7887538))

(declare-fun m!7887540 () Bool)

(assert (=> b!7192451 m!7887540))

(declare-fun m!7887542 () Bool)

(assert (=> b!7192459 m!7887542))

(declare-fun m!7887544 () Bool)

(assert (=> bm!655848 m!7887544))

(assert (=> bm!655680 d!2240662))

(declare-fun bs!1899962 () Bool)

(declare-fun d!2240664 () Bool)

(assert (= bs!1899962 (and d!2240664 d!2240146)))

(declare-fun lambda!437929 () Int)

(assert (=> bs!1899962 (= lambda!437929 lambda!437881)))

(declare-fun bs!1899963 () Bool)

(assert (= bs!1899963 (and d!2240664 d!2240544)))

(assert (=> bs!1899963 (= lambda!437929 lambda!437923)))

(declare-fun bs!1899964 () Bool)

(assert (= bs!1899964 (and d!2240664 d!2240296)))

(assert (=> bs!1899964 (= lambda!437929 lambda!437903)))

(declare-fun bs!1899965 () Bool)

(assert (= bs!1899965 (and d!2240664 d!2240360)))

(assert (=> bs!1899965 (= lambda!437929 lambda!437910)))

(declare-fun bs!1899966 () Bool)

(assert (= bs!1899966 (and d!2240664 d!2240284)))

(assert (=> bs!1899966 (= lambda!437929 lambda!437902)))

(declare-fun bs!1899967 () Bool)

(assert (= bs!1899967 (and d!2240664 d!2240582)))

(assert (=> bs!1899967 (= lambda!437929 lambda!437927)))

(declare-fun bs!1899968 () Bool)

(assert (= bs!1899968 (and d!2240664 d!2240548)))

(assert (=> bs!1899968 (= lambda!437929 lambda!437924)))

(declare-fun bs!1899969 () Bool)

(assert (= bs!1899969 (and d!2240664 d!2240550)))

(assert (=> bs!1899969 (= lambda!437929 lambda!437925)))

(declare-fun bs!1899970 () Bool)

(assert (= bs!1899970 (and d!2240664 d!2240088)))

(assert (=> bs!1899970 (= lambda!437929 lambda!437865)))

(declare-fun bs!1899971 () Bool)

(assert (= bs!1899971 (and d!2240664 d!2240524)))

(assert (=> bs!1899971 (= lambda!437929 lambda!437921)))

(declare-fun bs!1899972 () Bool)

(assert (= bs!1899972 (and d!2240664 d!2240510)))

(assert (=> bs!1899972 (= lambda!437929 lambda!437920)))

(declare-fun bs!1899973 () Bool)

(assert (= bs!1899973 (and d!2240664 d!2240310)))

(assert (=> bs!1899973 (= lambda!437929 lambda!437904)))

(declare-fun bs!1899974 () Bool)

(assert (= bs!1899974 (and d!2240664 d!2240078)))

(assert (=> bs!1899974 (= lambda!437929 lambda!437864)))

(declare-fun bs!1899975 () Bool)

(assert (= bs!1899975 (and d!2240664 d!2240590)))

(assert (=> bs!1899975 (= lambda!437929 lambda!437928)))

(declare-fun bs!1899976 () Bool)

(assert (= bs!1899976 (and d!2240664 d!2240392)))

(assert (=> bs!1899976 (= lambda!437929 lambda!437915)))

(declare-fun bs!1899977 () Bool)

(assert (= bs!1899977 (and d!2240664 d!2240526)))

(assert (=> bs!1899977 (= lambda!437929 lambda!437922)))

(declare-fun bs!1899978 () Bool)

(assert (= bs!1899978 (and d!2240664 d!2240254)))

(assert (=> bs!1899978 (= lambda!437929 lambda!437893)))

(declare-fun bs!1899979 () Bool)

(assert (= bs!1899979 (and d!2240664 d!2240170)))

(assert (=> bs!1899979 (= lambda!437929 lambda!437888)))

(declare-fun bs!1899980 () Bool)

(assert (= bs!1899980 (and d!2240664 d!2240148)))

(assert (=> bs!1899980 (= lambda!437929 lambda!437884)))

(declare-fun bs!1899981 () Bool)

(assert (= bs!1899981 (and d!2240664 d!2240562)))

(assert (=> bs!1899981 (= lambda!437929 lambda!437926)))

(declare-fun bs!1899982 () Bool)

(assert (= bs!1899982 (and d!2240664 d!2240334)))

(assert (=> bs!1899982 (= lambda!437929 lambda!437905)))

(declare-fun bs!1899983 () Bool)

(assert (= bs!1899983 (and d!2240664 d!2240480)))

(assert (=> bs!1899983 (= lambda!437929 lambda!437918)))

(declare-fun bs!1899984 () Bool)

(assert (= bs!1899984 (and d!2240664 d!2240278)))

(assert (=> bs!1899984 (= lambda!437929 lambda!437897)))

(declare-fun bs!1899985 () Bool)

(assert (= bs!1899985 (and d!2240664 d!2240262)))

(assert (=> bs!1899985 (= lambda!437929 lambda!437895)))

(declare-fun bs!1899986 () Bool)

(assert (= bs!1899986 (and d!2240664 d!2240400)))

(assert (=> bs!1899986 (= lambda!437929 lambda!437916)))

(declare-fun b!7192460 () Bool)

(declare-fun e!4319215 () Regex!18363)

(assert (=> b!7192460 (= e!4319215 EmptyLang!18363)))

(declare-fun b!7192461 () Bool)

(declare-fun e!4319216 () Bool)

(declare-fun lt!2571298 () Regex!18363)

(assert (=> b!7192461 (= e!4319216 (isEmptyLang!2158 lt!2571298))))

(declare-fun b!7192462 () Bool)

(declare-fun e!4319214 () Regex!18363)

(assert (=> b!7192462 (= e!4319214 (h!76141 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(declare-fun b!7192463 () Bool)

(declare-fun e!4319213 () Bool)

(assert (=> b!7192463 (= e!4319213 e!4319216)))

(declare-fun c!1338796 () Bool)

(assert (=> b!7192463 (= c!1338796 (isEmpty!40230 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(declare-fun b!7192464 () Bool)

(declare-fun e!4319218 () Bool)

(assert (=> b!7192464 (= e!4319218 (isUnion!1586 lt!2571298))))

(declare-fun b!7192465 () Bool)

(declare-fun e!4319217 () Bool)

(assert (=> b!7192465 (= e!4319217 (isEmpty!40230 (t!383840 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))))

(declare-fun b!7192466 () Bool)

(assert (=> b!7192466 (= e!4319215 (Union!18363 (h!76141 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))) (generalisedUnion!2780 (t!383840 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))))

(declare-fun b!7192467 () Bool)

(assert (=> b!7192467 (= e!4319216 e!4319218)))

(declare-fun c!1338798 () Bool)

(assert (=> b!7192467 (= c!1338798 (isEmpty!40230 (tail!14082 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))))

(declare-fun b!7192468 () Bool)

(assert (=> b!7192468 (= e!4319214 e!4319215)))

(declare-fun c!1338797 () Bool)

(assert (=> b!7192468 (= c!1338797 ((_ is Cons!69693) (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(assert (=> d!2240664 e!4319213))

(declare-fun res!2928369 () Bool)

(assert (=> d!2240664 (=> (not res!2928369) (not e!4319213))))

(assert (=> d!2240664 (= res!2928369 (validRegex!9478 lt!2571298))))

(assert (=> d!2240664 (= lt!2571298 e!4319214)))

(declare-fun c!1338795 () Bool)

(assert (=> d!2240664 (= c!1338795 e!4319217)))

(declare-fun res!2928368 () Bool)

(assert (=> d!2240664 (=> (not res!2928368) (not e!4319217))))

(assert (=> d!2240664 (= res!2928368 ((_ is Cons!69693) (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(assert (=> d!2240664 (forall!17191 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))) lambda!437929)))

(assert (=> d!2240664 (= (generalisedUnion!2780 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))) lt!2571298)))

(declare-fun b!7192469 () Bool)

(assert (=> b!7192469 (= e!4319218 (= lt!2571298 (head!14689 (t!383840 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530)))))))))

(assert (= (and d!2240664 res!2928368) b!7192465))

(assert (= (and d!2240664 c!1338795) b!7192462))

(assert (= (and d!2240664 (not c!1338795)) b!7192468))

(assert (= (and b!7192468 c!1338797) b!7192466))

(assert (= (and b!7192468 (not c!1338797)) b!7192460))

(assert (= (and d!2240664 res!2928369) b!7192463))

(assert (= (and b!7192463 c!1338796) b!7192461))

(assert (= (and b!7192463 (not c!1338796)) b!7192467))

(assert (= (and b!7192467 c!1338798) b!7192469))

(assert (= (and b!7192467 (not c!1338798)) b!7192464))

(declare-fun m!7887546 () Bool)

(assert (=> b!7192466 m!7887546))

(declare-fun m!7887548 () Bool)

(assert (=> b!7192465 m!7887548))

(declare-fun m!7887550 () Bool)

(assert (=> b!7192464 m!7887550))

(declare-fun m!7887552 () Bool)

(assert (=> b!7192461 m!7887552))

(assert (=> b!7192463 m!7886850))

(declare-fun m!7887554 () Bool)

(assert (=> b!7192469 m!7887554))

(declare-fun m!7887556 () Bool)

(assert (=> d!2240664 m!7887556))

(declare-fun m!7887558 () Bool)

(assert (=> d!2240664 m!7887558))

(declare-fun m!7887560 () Bool)

(assert (=> b!7192467 m!7887560))

(assert (=> b!7192467 m!7887560))

(declare-fun m!7887562 () Bool)

(assert (=> b!7192467 m!7887562))

(assert (=> b!7191764 d!2240664))

(declare-fun b!7192470 () Bool)

(declare-fun e!4319220 () Bool)

(declare-fun call!655857 () Bool)

(assert (=> b!7192470 (= e!4319220 call!655857)))

(declare-fun b!7192471 () Bool)

(declare-fun e!4319225 () Bool)

(declare-fun e!4319224 () Bool)

(assert (=> b!7192471 (= e!4319225 e!4319224)))

(declare-fun c!1338799 () Bool)

(assert (=> b!7192471 (= c!1338799 ((_ is Union!18363) (h!76141 (t!383840 (exprs!7815 setElem!53245)))))))

(declare-fun b!7192472 () Bool)

(declare-fun res!2928372 () Bool)

(declare-fun e!4319221 () Bool)

(assert (=> b!7192472 (=> res!2928372 e!4319221)))

(assert (=> b!7192472 (= res!2928372 (not ((_ is Concat!27208) (h!76141 (t!383840 (exprs!7815 setElem!53245))))))))

(assert (=> b!7192472 (= e!4319224 e!4319221)))

(declare-fun b!7192473 () Bool)

(declare-fun res!2928371 () Bool)

(declare-fun e!4319219 () Bool)

(assert (=> b!7192473 (=> (not res!2928371) (not e!4319219))))

(declare-fun call!655856 () Bool)

(assert (=> b!7192473 (= res!2928371 call!655856)))

(assert (=> b!7192473 (= e!4319224 e!4319219)))

(declare-fun b!7192474 () Bool)

(assert (=> b!7192474 (= e!4319221 e!4319220)))

(declare-fun res!2928374 () Bool)

(assert (=> b!7192474 (=> (not res!2928374) (not e!4319220))))

(assert (=> b!7192474 (= res!2928374 call!655856)))

(declare-fun b!7192475 () Bool)

(declare-fun e!4319223 () Bool)

(assert (=> b!7192475 (= e!4319225 e!4319223)))

(declare-fun res!2928370 () Bool)

(assert (=> b!7192475 (= res!2928370 (not (nullable!7785 (reg!18692 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))))))

(assert (=> b!7192475 (=> (not res!2928370) (not e!4319223))))

(declare-fun b!7192476 () Bool)

(assert (=> b!7192476 (= e!4319219 call!655857)))

(declare-fun d!2240666 () Bool)

(declare-fun res!2928373 () Bool)

(declare-fun e!4319222 () Bool)

(assert (=> d!2240666 (=> res!2928373 e!4319222)))

(assert (=> d!2240666 (= res!2928373 ((_ is ElementMatch!18363) (h!76141 (t!383840 (exprs!7815 setElem!53245)))))))

(assert (=> d!2240666 (= (validRegex!9478 (h!76141 (t!383840 (exprs!7815 setElem!53245)))) e!4319222)))

(declare-fun c!1338800 () Bool)

(declare-fun bm!655851 () Bool)

(declare-fun call!655858 () Bool)

(assert (=> bm!655851 (= call!655858 (validRegex!9478 (ite c!1338800 (reg!18692 (h!76141 (t!383840 (exprs!7815 setElem!53245)))) (ite c!1338799 (regTwo!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245))))))))))

(declare-fun bm!655852 () Bool)

(assert (=> bm!655852 (= call!655856 (validRegex!9478 (ite c!1338799 (regOne!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))) (regOne!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))))))

(declare-fun bm!655853 () Bool)

(assert (=> bm!655853 (= call!655857 call!655858)))

(declare-fun b!7192477 () Bool)

(assert (=> b!7192477 (= e!4319222 e!4319225)))

(assert (=> b!7192477 (= c!1338800 ((_ is Star!18363) (h!76141 (t!383840 (exprs!7815 setElem!53245)))))))

(declare-fun b!7192478 () Bool)

(assert (=> b!7192478 (= e!4319223 call!655858)))

(assert (= (and d!2240666 (not res!2928373)) b!7192477))

(assert (= (and b!7192477 c!1338800) b!7192475))

(assert (= (and b!7192477 (not c!1338800)) b!7192471))

(assert (= (and b!7192475 res!2928370) b!7192478))

(assert (= (and b!7192471 c!1338799) b!7192473))

(assert (= (and b!7192471 (not c!1338799)) b!7192472))

(assert (= (and b!7192473 res!2928371) b!7192476))

(assert (= (and b!7192472 (not res!2928372)) b!7192474))

(assert (= (and b!7192474 res!2928374) b!7192470))

(assert (= (or b!7192473 b!7192474) bm!655852))

(assert (= (or b!7192476 b!7192470) bm!655853))

(assert (= (or b!7192478 bm!655853) bm!655851))

(declare-fun m!7887564 () Bool)

(assert (=> b!7192475 m!7887564))

(declare-fun m!7887566 () Bool)

(assert (=> bm!655851 m!7887566))

(declare-fun m!7887568 () Bool)

(assert (=> bm!655852 m!7887568))

(assert (=> bs!1899732 d!2240666))

(declare-fun b!7192479 () Bool)

(declare-fun e!4319226 () Bool)

(assert (=> b!7192479 (= e!4319226 (nullable!7785 (h!76141 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(declare-fun b!7192480 () Bool)

(declare-fun e!4319227 () (InoxSet Context!14630))

(declare-fun call!655859 () (InoxSet Context!14630))

(assert (=> b!7192480 (= e!4319227 call!655859)))

(declare-fun d!2240668 () Bool)

(declare-fun c!1338802 () Bool)

(assert (=> d!2240668 (= c!1338802 e!4319226)))

(declare-fun res!2928375 () Bool)

(assert (=> d!2240668 (=> (not res!2928375) (not e!4319226))))

(assert (=> d!2240668 (= res!2928375 ((_ is Cons!69693) (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(declare-fun e!4319228 () (InoxSet Context!14630))

(assert (=> d!2240668 (= (derivationStepZipperUp!2333 (h!76143 (toList!11306 z!3530)) lt!2571215) e!4319228)))

(declare-fun b!7192481 () Bool)

(assert (=> b!7192481 (= e!4319227 ((as const (Array Context!14630 Bool)) false))))

(declare-fun bm!655854 () Bool)

(assert (=> bm!655854 (= call!655859 (derivationStepZipperDown!2516 (h!76141 (exprs!7815 (h!76143 (toList!11306 z!3530)))) (Context!14631 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))) lt!2571215))))

(declare-fun b!7192482 () Bool)

(assert (=> b!7192482 (= e!4319228 e!4319227)))

(declare-fun c!1338801 () Bool)

(assert (=> b!7192482 (= c!1338801 ((_ is Cons!69693) (exprs!7815 (h!76143 (toList!11306 z!3530)))))))

(declare-fun b!7192483 () Bool)

(assert (=> b!7192483 (= e!4319228 ((_ map or) call!655859 (derivationStepZipperUp!2333 (Context!14631 (t!383840 (exprs!7815 (h!76143 (toList!11306 z!3530))))) lt!2571215)))))

(assert (= (and d!2240668 res!2928375) b!7192479))

(assert (= (and d!2240668 c!1338802) b!7192483))

(assert (= (and d!2240668 (not c!1338802)) b!7192482))

(assert (= (and b!7192482 c!1338801) b!7192480))

(assert (= (and b!7192482 (not c!1338801)) b!7192481))

(assert (= (or b!7192483 b!7192480) bm!655854))

(declare-fun m!7887570 () Bool)

(assert (=> b!7192479 m!7887570))

(declare-fun m!7887572 () Bool)

(assert (=> bm!655854 m!7887572))

(declare-fun m!7887574 () Bool)

(assert (=> b!7192483 m!7887574))

(assert (=> bs!1899740 d!2240668))

(declare-fun d!2240670 () Bool)

(declare-fun c!1338803 () Bool)

(assert (=> d!2240670 (= c!1338803 ((_ is Nil!69695) (t!383842 res!2927981)))))

(declare-fun e!4319229 () (InoxSet Context!14630))

(assert (=> d!2240670 (= (content!14325 (t!383842 res!2927981)) e!4319229)))

(declare-fun b!7192484 () Bool)

(assert (=> b!7192484 (= e!4319229 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192485 () Bool)

(assert (=> b!7192485 (= e!4319229 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) (h!76143 (t!383842 res!2927981)) true) (content!14325 (t!383842 (t!383842 res!2927981)))))))

(assert (= (and d!2240670 c!1338803) b!7192484))

(assert (= (and d!2240670 (not c!1338803)) b!7192485))

(declare-fun m!7887576 () Bool)

(assert (=> b!7192485 m!7887576))

(declare-fun m!7887578 () Bool)

(assert (=> b!7192485 m!7887578))

(assert (=> b!7191858 d!2240670))

(declare-fun bs!1899987 () Bool)

(declare-fun d!2240672 () Bool)

(assert (= bs!1899987 (and d!2240672 d!2240146)))

(declare-fun lambda!437930 () Int)

(assert (=> bs!1899987 (= lambda!437930 lambda!437881)))

(declare-fun bs!1899988 () Bool)

(assert (= bs!1899988 (and d!2240672 d!2240544)))

(assert (=> bs!1899988 (= lambda!437930 lambda!437923)))

(declare-fun bs!1899989 () Bool)

(assert (= bs!1899989 (and d!2240672 d!2240296)))

(assert (=> bs!1899989 (= lambda!437930 lambda!437903)))

(declare-fun bs!1899990 () Bool)

(assert (= bs!1899990 (and d!2240672 d!2240360)))

(assert (=> bs!1899990 (= lambda!437930 lambda!437910)))

(declare-fun bs!1899991 () Bool)

(assert (= bs!1899991 (and d!2240672 d!2240284)))

(assert (=> bs!1899991 (= lambda!437930 lambda!437902)))

(declare-fun bs!1899992 () Bool)

(assert (= bs!1899992 (and d!2240672 d!2240582)))

(assert (=> bs!1899992 (= lambda!437930 lambda!437927)))

(declare-fun bs!1899993 () Bool)

(assert (= bs!1899993 (and d!2240672 d!2240548)))

(assert (=> bs!1899993 (= lambda!437930 lambda!437924)))

(declare-fun bs!1899994 () Bool)

(assert (= bs!1899994 (and d!2240672 d!2240550)))

(assert (=> bs!1899994 (= lambda!437930 lambda!437925)))

(declare-fun bs!1899995 () Bool)

(assert (= bs!1899995 (and d!2240672 d!2240088)))

(assert (=> bs!1899995 (= lambda!437930 lambda!437865)))

(declare-fun bs!1899996 () Bool)

(assert (= bs!1899996 (and d!2240672 d!2240524)))

(assert (=> bs!1899996 (= lambda!437930 lambda!437921)))

(declare-fun bs!1899997 () Bool)

(assert (= bs!1899997 (and d!2240672 d!2240510)))

(assert (=> bs!1899997 (= lambda!437930 lambda!437920)))

(declare-fun bs!1899998 () Bool)

(assert (= bs!1899998 (and d!2240672 d!2240310)))

(assert (=> bs!1899998 (= lambda!437930 lambda!437904)))

(declare-fun bs!1899999 () Bool)

(assert (= bs!1899999 (and d!2240672 d!2240078)))

(assert (=> bs!1899999 (= lambda!437930 lambda!437864)))

(declare-fun bs!1900000 () Bool)

(assert (= bs!1900000 (and d!2240672 d!2240590)))

(assert (=> bs!1900000 (= lambda!437930 lambda!437928)))

(declare-fun bs!1900001 () Bool)

(assert (= bs!1900001 (and d!2240672 d!2240392)))

(assert (=> bs!1900001 (= lambda!437930 lambda!437915)))

(declare-fun bs!1900002 () Bool)

(assert (= bs!1900002 (and d!2240672 d!2240526)))

(assert (=> bs!1900002 (= lambda!437930 lambda!437922)))

(declare-fun bs!1900003 () Bool)

(assert (= bs!1900003 (and d!2240672 d!2240254)))

(assert (=> bs!1900003 (= lambda!437930 lambda!437893)))

(declare-fun bs!1900004 () Bool)

(assert (= bs!1900004 (and d!2240672 d!2240170)))

(assert (=> bs!1900004 (= lambda!437930 lambda!437888)))

(declare-fun bs!1900005 () Bool)

(assert (= bs!1900005 (and d!2240672 d!2240148)))

(assert (=> bs!1900005 (= lambda!437930 lambda!437884)))

(declare-fun bs!1900006 () Bool)

(assert (= bs!1900006 (and d!2240672 d!2240562)))

(assert (=> bs!1900006 (= lambda!437930 lambda!437926)))

(declare-fun bs!1900007 () Bool)

(assert (= bs!1900007 (and d!2240672 d!2240664)))

(assert (=> bs!1900007 (= lambda!437930 lambda!437929)))

(declare-fun bs!1900008 () Bool)

(assert (= bs!1900008 (and d!2240672 d!2240334)))

(assert (=> bs!1900008 (= lambda!437930 lambda!437905)))

(declare-fun bs!1900009 () Bool)

(assert (= bs!1900009 (and d!2240672 d!2240480)))

(assert (=> bs!1900009 (= lambda!437930 lambda!437918)))

(declare-fun bs!1900010 () Bool)

(assert (= bs!1900010 (and d!2240672 d!2240278)))

(assert (=> bs!1900010 (= lambda!437930 lambda!437897)))

(declare-fun bs!1900011 () Bool)

(assert (= bs!1900011 (and d!2240672 d!2240262)))

(assert (=> bs!1900011 (= lambda!437930 lambda!437895)))

(declare-fun bs!1900012 () Bool)

(assert (= bs!1900012 (and d!2240672 d!2240400)))

(assert (=> bs!1900012 (= lambda!437930 lambda!437916)))

(declare-fun e!4319232 () Bool)

(assert (=> d!2240672 e!4319232))

(declare-fun res!2928376 () Bool)

(assert (=> d!2240672 (=> (not res!2928376) (not e!4319232))))

(declare-fun lt!2571299 () Regex!18363)

(assert (=> d!2240672 (= res!2928376 (validRegex!9478 lt!2571299))))

(declare-fun e!4319233 () Regex!18363)

(assert (=> d!2240672 (= lt!2571299 e!4319233)))

(declare-fun c!1338806 () Bool)

(declare-fun e!4319234 () Bool)

(assert (=> d!2240672 (= c!1338806 e!4319234)))

(declare-fun res!2928377 () Bool)

(assert (=> d!2240672 (=> (not res!2928377) (not e!4319234))))

(assert (=> d!2240672 (= res!2928377 ((_ is Cons!69693) (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530))))))))

(assert (=> d!2240672 (forall!17191 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530)))) lambda!437930)))

(assert (=> d!2240672 (= (generalisedConcat!2468 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530))))) lt!2571299)))

(declare-fun b!7192486 () Bool)

(declare-fun e!4319230 () Regex!18363)

(assert (=> b!7192486 (= e!4319230 EmptyExpr!18363)))

(declare-fun b!7192487 () Bool)

(assert (=> b!7192487 (= e!4319233 e!4319230)))

(declare-fun c!1338805 () Bool)

(assert (=> b!7192487 (= c!1338805 ((_ is Cons!69693) (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530))))))))

(declare-fun b!7192488 () Bool)

(declare-fun e!4319235 () Bool)

(declare-fun e!4319231 () Bool)

(assert (=> b!7192488 (= e!4319235 e!4319231)))

(declare-fun c!1338804 () Bool)

(assert (=> b!7192488 (= c!1338804 (isEmpty!40230 (tail!14082 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530)))))))))

(declare-fun b!7192489 () Bool)

(assert (=> b!7192489 (= e!4319234 (isEmpty!40230 (t!383840 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530)))))))))

(declare-fun b!7192490 () Bool)

(assert (=> b!7192490 (= e!4319235 (isEmptyExpr!2097 lt!2571299))))

(declare-fun b!7192491 () Bool)

(assert (=> b!7192491 (= e!4319231 (= lt!2571299 (head!14689 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530)))))))))

(declare-fun b!7192492 () Bool)

(assert (=> b!7192492 (= e!4319233 (h!76141 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530))))))))

(declare-fun b!7192493 () Bool)

(assert (=> b!7192493 (= e!4319231 (isConcat!1619 lt!2571299))))

(declare-fun b!7192494 () Bool)

(assert (=> b!7192494 (= e!4319232 e!4319235)))

(declare-fun c!1338807 () Bool)

(assert (=> b!7192494 (= c!1338807 (isEmpty!40230 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530))))))))

(declare-fun b!7192495 () Bool)

(assert (=> b!7192495 (= e!4319230 (Concat!27208 (h!76141 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530))))) (generalisedConcat!2468 (t!383840 (exprs!7815 (h!76143 (t!383842 (toList!11306 z!3530))))))))))

(assert (= (and d!2240672 res!2928377) b!7192489))

(assert (= (and d!2240672 c!1338806) b!7192492))

(assert (= (and d!2240672 (not c!1338806)) b!7192487))

(assert (= (and b!7192487 c!1338805) b!7192495))

(assert (= (and b!7192487 (not c!1338805)) b!7192486))

(assert (= (and d!2240672 res!2928376) b!7192494))

(assert (= (and b!7192494 c!1338807) b!7192490))

(assert (= (and b!7192494 (not c!1338807)) b!7192488))

(assert (= (and b!7192488 c!1338804) b!7192491))

(assert (= (and b!7192488 (not c!1338804)) b!7192493))

(declare-fun m!7887580 () Bool)

(assert (=> b!7192489 m!7887580))

(declare-fun m!7887582 () Bool)

(assert (=> b!7192488 m!7887582))

(assert (=> b!7192488 m!7887582))

(declare-fun m!7887584 () Bool)

(assert (=> b!7192488 m!7887584))

(declare-fun m!7887586 () Bool)

(assert (=> b!7192493 m!7887586))

(declare-fun m!7887588 () Bool)

(assert (=> d!2240672 m!7887588))

(declare-fun m!7887590 () Bool)

(assert (=> d!2240672 m!7887590))

(declare-fun m!7887592 () Bool)

(assert (=> b!7192495 m!7887592))

(declare-fun m!7887594 () Bool)

(assert (=> b!7192494 m!7887594))

(declare-fun m!7887596 () Bool)

(assert (=> b!7192491 m!7887596))

(declare-fun m!7887598 () Bool)

(assert (=> b!7192490 m!7887598))

(assert (=> b!7191694 d!2240672))

(declare-fun bs!1900013 () Bool)

(declare-fun d!2240674 () Bool)

(assert (= bs!1900013 (and d!2240674 d!2240146)))

(declare-fun lambda!437931 () Int)

(assert (=> bs!1900013 (= lambda!437931 lambda!437881)))

(declare-fun bs!1900014 () Bool)

(assert (= bs!1900014 (and d!2240674 d!2240544)))

(assert (=> bs!1900014 (= lambda!437931 lambda!437923)))

(declare-fun bs!1900015 () Bool)

(assert (= bs!1900015 (and d!2240674 d!2240296)))

(assert (=> bs!1900015 (= lambda!437931 lambda!437903)))

(declare-fun bs!1900016 () Bool)

(assert (= bs!1900016 (and d!2240674 d!2240360)))

(assert (=> bs!1900016 (= lambda!437931 lambda!437910)))

(declare-fun bs!1900017 () Bool)

(assert (= bs!1900017 (and d!2240674 d!2240284)))

(assert (=> bs!1900017 (= lambda!437931 lambda!437902)))

(declare-fun bs!1900018 () Bool)

(assert (= bs!1900018 (and d!2240674 d!2240582)))

(assert (=> bs!1900018 (= lambda!437931 lambda!437927)))

(declare-fun bs!1900019 () Bool)

(assert (= bs!1900019 (and d!2240674 d!2240548)))

(assert (=> bs!1900019 (= lambda!437931 lambda!437924)))

(declare-fun bs!1900020 () Bool)

(assert (= bs!1900020 (and d!2240674 d!2240550)))

(assert (=> bs!1900020 (= lambda!437931 lambda!437925)))

(declare-fun bs!1900021 () Bool)

(assert (= bs!1900021 (and d!2240674 d!2240088)))

(assert (=> bs!1900021 (= lambda!437931 lambda!437865)))

(declare-fun bs!1900022 () Bool)

(assert (= bs!1900022 (and d!2240674 d!2240524)))

(assert (=> bs!1900022 (= lambda!437931 lambda!437921)))

(declare-fun bs!1900023 () Bool)

(assert (= bs!1900023 (and d!2240674 d!2240510)))

(assert (=> bs!1900023 (= lambda!437931 lambda!437920)))

(declare-fun bs!1900024 () Bool)

(assert (= bs!1900024 (and d!2240674 d!2240310)))

(assert (=> bs!1900024 (= lambda!437931 lambda!437904)))

(declare-fun bs!1900025 () Bool)

(assert (= bs!1900025 (and d!2240674 d!2240078)))

(assert (=> bs!1900025 (= lambda!437931 lambda!437864)))

(declare-fun bs!1900026 () Bool)

(assert (= bs!1900026 (and d!2240674 d!2240590)))

(assert (=> bs!1900026 (= lambda!437931 lambda!437928)))

(declare-fun bs!1900027 () Bool)

(assert (= bs!1900027 (and d!2240674 d!2240392)))

(assert (=> bs!1900027 (= lambda!437931 lambda!437915)))

(declare-fun bs!1900028 () Bool)

(assert (= bs!1900028 (and d!2240674 d!2240672)))

(assert (=> bs!1900028 (= lambda!437931 lambda!437930)))

(declare-fun bs!1900029 () Bool)

(assert (= bs!1900029 (and d!2240674 d!2240526)))

(assert (=> bs!1900029 (= lambda!437931 lambda!437922)))

(declare-fun bs!1900030 () Bool)

(assert (= bs!1900030 (and d!2240674 d!2240254)))

(assert (=> bs!1900030 (= lambda!437931 lambda!437893)))

(declare-fun bs!1900031 () Bool)

(assert (= bs!1900031 (and d!2240674 d!2240170)))

(assert (=> bs!1900031 (= lambda!437931 lambda!437888)))

(declare-fun bs!1900032 () Bool)

(assert (= bs!1900032 (and d!2240674 d!2240148)))

(assert (=> bs!1900032 (= lambda!437931 lambda!437884)))

(declare-fun bs!1900033 () Bool)

(assert (= bs!1900033 (and d!2240674 d!2240562)))

(assert (=> bs!1900033 (= lambda!437931 lambda!437926)))

(declare-fun bs!1900034 () Bool)

(assert (= bs!1900034 (and d!2240674 d!2240664)))

(assert (=> bs!1900034 (= lambda!437931 lambda!437929)))

(declare-fun bs!1900035 () Bool)

(assert (= bs!1900035 (and d!2240674 d!2240334)))

(assert (=> bs!1900035 (= lambda!437931 lambda!437905)))

(declare-fun bs!1900036 () Bool)

(assert (= bs!1900036 (and d!2240674 d!2240480)))

(assert (=> bs!1900036 (= lambda!437931 lambda!437918)))

(declare-fun bs!1900037 () Bool)

(assert (= bs!1900037 (and d!2240674 d!2240278)))

(assert (=> bs!1900037 (= lambda!437931 lambda!437897)))

(declare-fun bs!1900038 () Bool)

(assert (= bs!1900038 (and d!2240674 d!2240262)))

(assert (=> bs!1900038 (= lambda!437931 lambda!437895)))

(declare-fun bs!1900039 () Bool)

(assert (= bs!1900039 (and d!2240674 d!2240400)))

(assert (=> bs!1900039 (= lambda!437931 lambda!437916)))

(declare-fun lt!2571300 () List!69817)

(assert (=> d!2240674 (forall!17191 lt!2571300 lambda!437931)))

(declare-fun e!4319236 () List!69817)

(assert (=> d!2240674 (= lt!2571300 e!4319236)))

(declare-fun c!1338808 () Bool)

(assert (=> d!2240674 (= c!1338808 ((_ is Cons!69695) (t!383842 (t!383842 (toList!11306 z!3530)))))))

(assert (=> d!2240674 (= (unfocusZipperList!2336 (t!383842 (t!383842 (toList!11306 z!3530)))) lt!2571300)))

(declare-fun b!7192496 () Bool)

(assert (=> b!7192496 (= e!4319236 (Cons!69693 (generalisedConcat!2468 (exprs!7815 (h!76143 (t!383842 (t!383842 (toList!11306 z!3530)))))) (unfocusZipperList!2336 (t!383842 (t!383842 (t!383842 (toList!11306 z!3530)))))))))

(declare-fun b!7192497 () Bool)

(assert (=> b!7192497 (= e!4319236 Nil!69693)))

(assert (= (and d!2240674 c!1338808) b!7192496))

(assert (= (and d!2240674 (not c!1338808)) b!7192497))

(declare-fun m!7887600 () Bool)

(assert (=> d!2240674 m!7887600))

(declare-fun m!7887602 () Bool)

(assert (=> b!7192496 m!7887602))

(declare-fun m!7887604 () Bool)

(assert (=> b!7192496 m!7887604))

(assert (=> b!7191694 d!2240674))

(declare-fun b!7192498 () Bool)

(declare-fun e!4319238 () Bool)

(declare-fun call!655861 () Bool)

(assert (=> b!7192498 (= e!4319238 call!655861)))

(declare-fun b!7192499 () Bool)

(declare-fun e!4319243 () Bool)

(declare-fun e!4319242 () Bool)

(assert (=> b!7192499 (= e!4319243 e!4319242)))

(declare-fun c!1338809 () Bool)

(assert (=> b!7192499 (= c!1338809 ((_ is Union!18363) (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))))

(declare-fun b!7192500 () Bool)

(declare-fun res!2928380 () Bool)

(declare-fun e!4319239 () Bool)

(assert (=> b!7192500 (=> res!2928380 e!4319239)))

(assert (=> b!7192500 (= res!2928380 (not ((_ is Concat!27208) (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))))))

(assert (=> b!7192500 (= e!4319242 e!4319239)))

(declare-fun b!7192501 () Bool)

(declare-fun res!2928379 () Bool)

(declare-fun e!4319237 () Bool)

(assert (=> b!7192501 (=> (not res!2928379) (not e!4319237))))

(declare-fun call!655860 () Bool)

(assert (=> b!7192501 (= res!2928379 call!655860)))

(assert (=> b!7192501 (= e!4319242 e!4319237)))

(declare-fun b!7192502 () Bool)

(assert (=> b!7192502 (= e!4319239 e!4319238)))

(declare-fun res!2928382 () Bool)

(assert (=> b!7192502 (=> (not res!2928382) (not e!4319238))))

(assert (=> b!7192502 (= res!2928382 call!655860)))

(declare-fun b!7192503 () Bool)

(declare-fun e!4319241 () Bool)

(assert (=> b!7192503 (= e!4319243 e!4319241)))

(declare-fun res!2928378 () Bool)

(assert (=> b!7192503 (= res!2928378 (not (nullable!7785 (reg!18692 (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))))))

(assert (=> b!7192503 (=> (not res!2928378) (not e!4319241))))

(declare-fun b!7192504 () Bool)

(assert (=> b!7192504 (= e!4319237 call!655861)))

(declare-fun d!2240676 () Bool)

(declare-fun res!2928381 () Bool)

(declare-fun e!4319240 () Bool)

(assert (=> d!2240676 (=> res!2928381 e!4319240)))

(assert (=> d!2240676 (= res!2928381 ((_ is ElementMatch!18363) (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))))

(assert (=> d!2240676 (= (validRegex!9478 (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))) e!4319240)))

(declare-fun call!655862 () Bool)

(declare-fun c!1338810 () Bool)

(declare-fun bm!655855 () Bool)

(assert (=> bm!655855 (= call!655862 (validRegex!9478 (ite c!1338810 (reg!18692 (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))) (ite c!1338809 (regTwo!37239 (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))) (regTwo!37238 (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))))))))))))

(declare-fun bm!655856 () Bool)

(assert (=> bm!655856 (= call!655860 (validRegex!9478 (ite c!1338809 (regOne!37239 (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))) (regOne!37238 (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))))))

(declare-fun bm!655857 () Bool)

(assert (=> bm!655857 (= call!655861 call!655862)))

(declare-fun b!7192505 () Bool)

(assert (=> b!7192505 (= e!4319240 e!4319243)))

(assert (=> b!7192505 (= c!1338810 ((_ is Star!18363) (ite c!1338649 (reg!18692 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (ite c!1338648 (regTwo!37239 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228)))) (regTwo!37238 (ite c!1338551 (reg!18692 lt!2571228) (ite c!1338550 (regTwo!37239 lt!2571228) (regTwo!37238 lt!2571228))))))))))

(declare-fun b!7192506 () Bool)

(assert (=> b!7192506 (= e!4319241 call!655862)))

(assert (= (and d!2240676 (not res!2928381)) b!7192505))

(assert (= (and b!7192505 c!1338810) b!7192503))

(assert (= (and b!7192505 (not c!1338810)) b!7192499))

(assert (= (and b!7192503 res!2928378) b!7192506))

(assert (= (and b!7192499 c!1338809) b!7192501))

(assert (= (and b!7192499 (not c!1338809)) b!7192500))

(assert (= (and b!7192501 res!2928379) b!7192504))

(assert (= (and b!7192500 (not res!2928380)) b!7192502))

(assert (= (and b!7192502 res!2928382) b!7192498))

(assert (= (or b!7192501 b!7192502) bm!655856))

(assert (= (or b!7192504 b!7192498) bm!655857))

(assert (= (or b!7192506 bm!655857) bm!655855))

(declare-fun m!7887606 () Bool)

(assert (=> b!7192503 m!7887606))

(declare-fun m!7887608 () Bool)

(assert (=> bm!655855 m!7887608))

(declare-fun m!7887610 () Bool)

(assert (=> bm!655856 m!7887610))

(assert (=> bm!655715 d!2240676))

(declare-fun bm!655858 () Bool)

(declare-fun call!655866 () (InoxSet Context!14630))

(declare-fun call!655865 () (InoxSet Context!14630))

(assert (=> bm!655858 (= call!655866 call!655865)))

(declare-fun d!2240678 () Bool)

(declare-fun c!1338814 () Bool)

(assert (=> d!2240678 (= c!1338814 (and ((_ is ElementMatch!18363) (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))) (= (c!1338487 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))) lt!2571215)))))

(declare-fun e!4319245 () (InoxSet Context!14630))

(assert (=> d!2240678 (= (derivationStepZipperDown!2516 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))) (ite c!1338666 (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655733)) lt!2571215) e!4319245)))

(declare-fun b!7192507 () Bool)

(declare-fun e!4319247 () (InoxSet Context!14630))

(declare-fun call!655863 () (InoxSet Context!14630))

(assert (=> b!7192507 (= e!4319247 ((_ map or) call!655863 call!655866))))

(declare-fun b!7192508 () Bool)

(declare-fun e!4319249 () (InoxSet Context!14630))

(declare-fun call!655867 () (InoxSet Context!14630))

(assert (=> b!7192508 (= e!4319249 call!655867)))

(declare-fun bm!655859 () Bool)

(declare-fun call!655868 () List!69817)

(declare-fun call!655864 () List!69817)

(assert (=> bm!655859 (= call!655868 call!655864)))

(declare-fun b!7192509 () Bool)

(assert (=> b!7192509 (= e!4319245 (store ((as const (Array Context!14630 Bool)) false) (ite c!1338666 (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655733)) true))))

(declare-fun b!7192510 () Bool)

(declare-fun c!1338813 () Bool)

(assert (=> b!7192510 (= c!1338813 ((_ is Star!18363) (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))))

(declare-fun e!4319246 () (InoxSet Context!14630))

(assert (=> b!7192510 (= e!4319246 e!4319249)))

(declare-fun b!7192511 () Bool)

(declare-fun c!1338812 () Bool)

(declare-fun e!4319244 () Bool)

(assert (=> b!7192511 (= c!1338812 e!4319244)))

(declare-fun res!2928383 () Bool)

(assert (=> b!7192511 (=> (not res!2928383) (not e!4319244))))

(assert (=> b!7192511 (= res!2928383 ((_ is Concat!27208) (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))))

(declare-fun e!4319248 () (InoxSet Context!14630))

(assert (=> b!7192511 (= e!4319248 e!4319247)))

(declare-fun b!7192512 () Bool)

(assert (=> b!7192512 (= e!4319245 e!4319248)))

(declare-fun c!1338815 () Bool)

(assert (=> b!7192512 (= c!1338815 ((_ is Union!18363) (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))))

(declare-fun b!7192513 () Bool)

(assert (=> b!7192513 (= e!4319247 e!4319246)))

(declare-fun c!1338811 () Bool)

(assert (=> b!7192513 (= c!1338811 ((_ is Concat!27208) (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))))))

(declare-fun bm!655860 () Bool)

(assert (=> bm!655860 (= call!655863 (derivationStepZipperDown!2516 (ite c!1338815 (regOne!37239 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))) (regOne!37238 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))) (ite c!1338815 (ite c!1338666 (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655733)) (Context!14631 call!655864)) lt!2571215))))

(declare-fun bm!655861 () Bool)

(assert (=> bm!655861 (= call!655865 (derivationStepZipperDown!2516 (ite c!1338815 (regTwo!37239 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))) (ite c!1338812 (regTwo!37238 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))) (ite c!1338811 (regOne!37238 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))) (reg!18692 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))) (ite (or c!1338815 c!1338812) (ite c!1338666 (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655733)) (Context!14631 call!655868)) lt!2571215))))

(declare-fun b!7192514 () Bool)

(assert (=> b!7192514 (= e!4319246 call!655867)))

(declare-fun bm!655862 () Bool)

(assert (=> bm!655862 (= call!655867 call!655866)))

(declare-fun b!7192515 () Bool)

(assert (=> b!7192515 (= e!4319249 ((as const (Array Context!14630 Bool)) false))))

(declare-fun b!7192516 () Bool)

(assert (=> b!7192516 (= e!4319248 ((_ map or) call!655863 call!655865))))

(declare-fun b!7192517 () Bool)

(assert (=> b!7192517 (= e!4319244 (nullable!7785 (regOne!37238 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))))

(declare-fun bm!655863 () Bool)

(assert (=> bm!655863 (= call!655864 ($colon$colon!2846 (exprs!7815 (ite c!1338666 (ite (or c!1338587 c!1338584) (Context!14631 (t!383840 (exprs!7815 lt!2571217))) (Context!14631 call!655672)) (Context!14631 call!655733))) (ite (or c!1338812 c!1338811) (regTwo!37238 (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))))) (ite c!1338666 (regOne!37239 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217))))))) (regOne!37238 (ite c!1338587 (regTwo!37239 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338584 (regTwo!37238 (h!76141 (exprs!7815 lt!2571217))) (ite c!1338583 (regOne!37238 (h!76141 (exprs!7815 lt!2571217))) (reg!18692 (h!76141 (exprs!7815 lt!2571217)))))))))))))

(assert (= (and d!2240678 c!1338814) b!7192509))

(assert (= (and d!2240678 (not c!1338814)) b!7192512))

(assert (= (and b!7192512 c!1338815) b!7192516))

(assert (= (and b!7192512 (not c!1338815)) b!7192511))

(assert (= (and b!7192511 res!2928383) b!7192517))

(assert (= (and b!7192511 c!1338812) b!7192507))

(assert (= (and b!7192511 (not c!1338812)) b!7192513))

(assert (= (and b!7192513 c!1338811) b!7192514))

(assert (= (and b!7192513 (not c!1338811)) b!7192510))

(assert (= (and b!7192510 c!1338813) b!7192508))

(assert (= (and b!7192510 (not c!1338813)) b!7192515))

(assert (= (or b!7192514 b!7192508) bm!655859))

(assert (= (or b!7192514 b!7192508) bm!655862))

(assert (= (or b!7192507 bm!655862) bm!655858))

(assert (= (or b!7192507 bm!655859) bm!655863))

(assert (= (or b!7192516 bm!655858) bm!655861))

(assert (= (or b!7192516 b!7192507) bm!655860))

(declare-fun m!7887612 () Bool)

(assert (=> bm!655863 m!7887612))

(declare-fun m!7887614 () Bool)

(assert (=> bm!655860 m!7887614))

(declare-fun m!7887616 () Bool)

(assert (=> b!7192509 m!7887616))

(declare-fun m!7887618 () Bool)

(assert (=> b!7192517 m!7887618))

(declare-fun m!7887620 () Bool)

(assert (=> bm!655861 m!7887620))

(assert (=> bm!655729 d!2240678))

(declare-fun b!7192521 () Bool)

(declare-fun e!4319250 () Bool)

(declare-fun tp!1998757 () Bool)

(declare-fun tp!1998754 () Bool)

(assert (=> b!7192521 (= e!4319250 (and tp!1998757 tp!1998754))))

(declare-fun b!7192519 () Bool)

(declare-fun tp!1998756 () Bool)

(declare-fun tp!1998755 () Bool)

(assert (=> b!7192519 (= e!4319250 (and tp!1998756 tp!1998755))))

(assert (=> b!7191951 (= tp!1998570 e!4319250)))

(declare-fun b!7192518 () Bool)

(assert (=> b!7192518 (= e!4319250 tp_is_empty!46287)))

(declare-fun b!7192520 () Bool)

(declare-fun tp!1998758 () Bool)

(assert (=> b!7192520 (= e!4319250 tp!1998758)))

(assert (= (and b!7191951 ((_ is ElementMatch!18363) (reg!18692 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192518))

(assert (= (and b!7191951 ((_ is Concat!27208) (reg!18692 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192519))

(assert (= (and b!7191951 ((_ is Star!18363) (reg!18692 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192520))

(assert (= (and b!7191951 ((_ is Union!18363) (reg!18692 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192521))

(declare-fun b!7192525 () Bool)

(declare-fun e!4319251 () Bool)

(declare-fun tp!1998762 () Bool)

(declare-fun tp!1998759 () Bool)

(assert (=> b!7192525 (= e!4319251 (and tp!1998762 tp!1998759))))

(declare-fun b!7192523 () Bool)

(declare-fun tp!1998761 () Bool)

(declare-fun tp!1998760 () Bool)

(assert (=> b!7192523 (= e!4319251 (and tp!1998761 tp!1998760))))

(assert (=> b!7192019 (= tp!1998644 e!4319251)))

(declare-fun b!7192522 () Bool)

(assert (=> b!7192522 (= e!4319251 tp_is_empty!46287)))

(declare-fun b!7192524 () Bool)

(declare-fun tp!1998763 () Bool)

(assert (=> b!7192524 (= e!4319251 tp!1998763)))

(assert (= (and b!7192019 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 (h!76143 res!2927985))))) b!7192522))

(assert (= (and b!7192019 ((_ is Concat!27208) (h!76141 (exprs!7815 (h!76143 res!2927985))))) b!7192523))

(assert (= (and b!7192019 ((_ is Star!18363) (h!76141 (exprs!7815 (h!76143 res!2927985))))) b!7192524))

(assert (= (and b!7192019 ((_ is Union!18363) (h!76141 (exprs!7815 (h!76143 res!2927985))))) b!7192525))

(declare-fun b!7192526 () Bool)

(declare-fun e!4319252 () Bool)

(declare-fun tp!1998764 () Bool)

(declare-fun tp!1998765 () Bool)

(assert (=> b!7192526 (= e!4319252 (and tp!1998764 tp!1998765))))

(assert (=> b!7192019 (= tp!1998645 e!4319252)))

(assert (= (and b!7192019 ((_ is Cons!69693) (t!383840 (exprs!7815 (h!76143 res!2927985))))) b!7192526))

(declare-fun condSetEmpty!53266 () Bool)

(assert (=> setNonEmpty!53262 (= condSetEmpty!53266 (= setRest!53262 ((as const (Array Context!14630 Bool)) false)))))

(declare-fun setRes!53266 () Bool)

(assert (=> setNonEmpty!53262 (= tp!1998574 setRes!53266)))

(declare-fun setIsEmpty!53266 () Bool)

(assert (=> setIsEmpty!53266 setRes!53266))

(declare-fun e!4319253 () Bool)

(declare-fun setNonEmpty!53266 () Bool)

(declare-fun setElem!53266 () Context!14630)

(declare-fun tp!1998767 () Bool)

(assert (=> setNonEmpty!53266 (= setRes!53266 (and tp!1998767 (inv!88929 setElem!53266) e!4319253))))

(declare-fun setRest!53266 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53266 (= setRest!53262 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53266 true) setRest!53266))))

(declare-fun b!7192527 () Bool)

(declare-fun tp!1998766 () Bool)

(assert (=> b!7192527 (= e!4319253 tp!1998766)))

(assert (= (and setNonEmpty!53262 condSetEmpty!53266) setIsEmpty!53266))

(assert (= (and setNonEmpty!53262 (not condSetEmpty!53266)) setNonEmpty!53266))

(assert (= setNonEmpty!53266 b!7192527))

(declare-fun m!7887622 () Bool)

(assert (=> setNonEmpty!53266 m!7887622))

(declare-fun b!7192531 () Bool)

(declare-fun e!4319254 () Bool)

(declare-fun tp!1998771 () Bool)

(declare-fun tp!1998768 () Bool)

(assert (=> b!7192531 (= e!4319254 (and tp!1998771 tp!1998768))))

(declare-fun b!7192529 () Bool)

(declare-fun tp!1998770 () Bool)

(declare-fun tp!1998769 () Bool)

(assert (=> b!7192529 (= e!4319254 (and tp!1998770 tp!1998769))))

(assert (=> b!7191959 (= tp!1998580 e!4319254)))

(declare-fun b!7192528 () Bool)

(assert (=> b!7192528 (= e!4319254 tp_is_empty!46287)))

(declare-fun b!7192530 () Bool)

(declare-fun tp!1998772 () Bool)

(assert (=> b!7192530 (= e!4319254 tp!1998772)))

(assert (= (and b!7191959 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 (h!76143 res!2927981))))) b!7192528))

(assert (= (and b!7191959 ((_ is Concat!27208) (h!76141 (exprs!7815 (h!76143 res!2927981))))) b!7192529))

(assert (= (and b!7191959 ((_ is Star!18363) (h!76141 (exprs!7815 (h!76143 res!2927981))))) b!7192530))

(assert (= (and b!7191959 ((_ is Union!18363) (h!76141 (exprs!7815 (h!76143 res!2927981))))) b!7192531))

(declare-fun b!7192532 () Bool)

(declare-fun e!4319255 () Bool)

(declare-fun tp!1998773 () Bool)

(declare-fun tp!1998774 () Bool)

(assert (=> b!7192532 (= e!4319255 (and tp!1998773 tp!1998774))))

(assert (=> b!7191959 (= tp!1998581 e!4319255)))

(assert (= (and b!7191959 ((_ is Cons!69693) (t!383840 (exprs!7815 (h!76143 res!2927981))))) b!7192532))

(declare-fun b!7192536 () Bool)

(declare-fun e!4319256 () Bool)

(declare-fun tp!1998778 () Bool)

(declare-fun tp!1998775 () Bool)

(assert (=> b!7192536 (= e!4319256 (and tp!1998778 tp!1998775))))

(declare-fun b!7192534 () Bool)

(declare-fun tp!1998777 () Bool)

(declare-fun tp!1998776 () Bool)

(assert (=> b!7192534 (= e!4319256 (and tp!1998777 tp!1998776))))

(assert (=> b!7192026 (= tp!1998655 e!4319256)))

(declare-fun b!7192533 () Bool)

(assert (=> b!7192533 (= e!4319256 tp_is_empty!46287)))

(declare-fun b!7192535 () Bool)

(declare-fun tp!1998779 () Bool)

(assert (=> b!7192535 (= e!4319256 tp!1998779)))

(assert (= (and b!7192026 ((_ is ElementMatch!18363) (reg!18692 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192533))

(assert (= (and b!7192026 ((_ is Concat!27208) (reg!18692 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192534))

(assert (= (and b!7192026 ((_ is Star!18363) (reg!18692 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192535))

(assert (= (and b!7192026 ((_ is Union!18363) (reg!18692 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192536))

(declare-fun b!7192540 () Bool)

(declare-fun e!4319257 () Bool)

(declare-fun tp!1998783 () Bool)

(declare-fun tp!1998780 () Bool)

(assert (=> b!7192540 (= e!4319257 (and tp!1998783 tp!1998780))))

(declare-fun b!7192538 () Bool)

(declare-fun tp!1998782 () Bool)

(declare-fun tp!1998781 () Bool)

(assert (=> b!7192538 (= e!4319257 (and tp!1998782 tp!1998781))))

(assert (=> b!7191977 (= tp!1998595 e!4319257)))

(declare-fun b!7192537 () Bool)

(assert (=> b!7192537 (= e!4319257 tp_is_empty!46287)))

(declare-fun b!7192539 () Bool)

(declare-fun tp!1998784 () Bool)

(assert (=> b!7192539 (= e!4319257 tp!1998784)))

(assert (= (and b!7191977 ((_ is ElementMatch!18363) (reg!18692 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192537))

(assert (= (and b!7191977 ((_ is Concat!27208) (reg!18692 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192538))

(assert (= (and b!7191977 ((_ is Star!18363) (reg!18692 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192539))

(assert (= (and b!7191977 ((_ is Union!18363) (reg!18692 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192540))

(declare-fun b!7192544 () Bool)

(declare-fun e!4319258 () Bool)

(declare-fun tp!1998788 () Bool)

(declare-fun tp!1998785 () Bool)

(assert (=> b!7192544 (= e!4319258 (and tp!1998788 tp!1998785))))

(declare-fun b!7192542 () Bool)

(declare-fun tp!1998787 () Bool)

(declare-fun tp!1998786 () Bool)

(assert (=> b!7192542 (= e!4319258 (and tp!1998787 tp!1998786))))

(assert (=> b!7192069 (= tp!1998711 e!4319258)))

(declare-fun b!7192541 () Bool)

(assert (=> b!7192541 (= e!4319258 tp_is_empty!46287)))

(declare-fun b!7192543 () Bool)

(declare-fun tp!1998789 () Bool)

(assert (=> b!7192543 (= e!4319258 tp!1998789)))

(assert (= (and b!7192069 ((_ is ElementMatch!18363) (regOne!37239 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192541))

(assert (= (and b!7192069 ((_ is Concat!27208) (regOne!37239 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192542))

(assert (= (and b!7192069 ((_ is Star!18363) (regOne!37239 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192543))

(assert (= (and b!7192069 ((_ is Union!18363) (regOne!37239 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192544))

(declare-fun b!7192548 () Bool)

(declare-fun e!4319259 () Bool)

(declare-fun tp!1998793 () Bool)

(declare-fun tp!1998790 () Bool)

(assert (=> b!7192548 (= e!4319259 (and tp!1998793 tp!1998790))))

(declare-fun b!7192546 () Bool)

(declare-fun tp!1998792 () Bool)

(declare-fun tp!1998791 () Bool)

(assert (=> b!7192546 (= e!4319259 (and tp!1998792 tp!1998791))))

(assert (=> b!7192069 (= tp!1998708 e!4319259)))

(declare-fun b!7192545 () Bool)

(assert (=> b!7192545 (= e!4319259 tp_is_empty!46287)))

(declare-fun b!7192547 () Bool)

(declare-fun tp!1998794 () Bool)

(assert (=> b!7192547 (= e!4319259 tp!1998794)))

(assert (= (and b!7192069 ((_ is ElementMatch!18363) (regTwo!37239 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192545))

(assert (= (and b!7192069 ((_ is Concat!27208) (regTwo!37239 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192546))

(assert (= (and b!7192069 ((_ is Star!18363) (regTwo!37239 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192547))

(assert (= (and b!7192069 ((_ is Union!18363) (regTwo!37239 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192548))

(declare-fun condSetEmpty!53267 () Bool)

(assert (=> setNonEmpty!53260 (= condSetEmpty!53267 (= setRest!53260 ((as const (Array Context!14630 Bool)) false)))))

(declare-fun setRes!53267 () Bool)

(assert (=> setNonEmpty!53260 (= tp!1998558 setRes!53267)))

(declare-fun setIsEmpty!53267 () Bool)

(assert (=> setIsEmpty!53267 setRes!53267))

(declare-fun tp!1998796 () Bool)

(declare-fun e!4319260 () Bool)

(declare-fun setNonEmpty!53267 () Bool)

(declare-fun setElem!53267 () Context!14630)

(assert (=> setNonEmpty!53267 (= setRes!53267 (and tp!1998796 (inv!88929 setElem!53267) e!4319260))))

(declare-fun setRest!53267 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53267 (= setRest!53260 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53267 true) setRest!53267))))

(declare-fun b!7192549 () Bool)

(declare-fun tp!1998795 () Bool)

(assert (=> b!7192549 (= e!4319260 tp!1998795)))

(assert (= (and setNonEmpty!53260 condSetEmpty!53267) setIsEmpty!53267))

(assert (= (and setNonEmpty!53260 (not condSetEmpty!53267)) setNonEmpty!53267))

(assert (= setNonEmpty!53267 b!7192549))

(declare-fun m!7887624 () Bool)

(assert (=> setNonEmpty!53267 m!7887624))

(declare-fun b!7192553 () Bool)

(declare-fun e!4319261 () Bool)

(declare-fun tp!1998800 () Bool)

(declare-fun tp!1998797 () Bool)

(assert (=> b!7192553 (= e!4319261 (and tp!1998800 tp!1998797))))

(declare-fun b!7192551 () Bool)

(declare-fun tp!1998799 () Bool)

(declare-fun tp!1998798 () Bool)

(assert (=> b!7192551 (= e!4319261 (and tp!1998799 tp!1998798))))

(assert (=> b!7192060 (= tp!1998702 e!4319261)))

(declare-fun b!7192550 () Bool)

(assert (=> b!7192550 (= e!4319261 tp_is_empty!46287)))

(declare-fun b!7192552 () Bool)

(declare-fun tp!1998801 () Bool)

(assert (=> b!7192552 (= e!4319261 tp!1998801)))

(assert (= (and b!7192060 ((_ is ElementMatch!18363) (reg!18692 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192550))

(assert (= (and b!7192060 ((_ is Concat!27208) (reg!18692 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192551))

(assert (= (and b!7192060 ((_ is Star!18363) (reg!18692 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192552))

(assert (= (and b!7192060 ((_ is Union!18363) (reg!18692 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192553))

(declare-fun b!7192557 () Bool)

(declare-fun e!4319262 () Bool)

(declare-fun tp!1998805 () Bool)

(declare-fun tp!1998802 () Bool)

(assert (=> b!7192557 (= e!4319262 (and tp!1998805 tp!1998802))))

(declare-fun b!7192555 () Bool)

(declare-fun tp!1998804 () Bool)

(declare-fun tp!1998803 () Bool)

(assert (=> b!7192555 (= e!4319262 (and tp!1998804 tp!1998803))))

(assert (=> b!7192067 (= tp!1998710 e!4319262)))

(declare-fun b!7192554 () Bool)

(assert (=> b!7192554 (= e!4319262 tp_is_empty!46287)))

(declare-fun b!7192556 () Bool)

(declare-fun tp!1998806 () Bool)

(assert (=> b!7192556 (= e!4319262 tp!1998806)))

(assert (= (and b!7192067 ((_ is ElementMatch!18363) (regOne!37238 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192554))

(assert (= (and b!7192067 ((_ is Concat!27208) (regOne!37238 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192555))

(assert (= (and b!7192067 ((_ is Star!18363) (regOne!37238 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192556))

(assert (= (and b!7192067 ((_ is Union!18363) (regOne!37238 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192557))

(declare-fun b!7192561 () Bool)

(declare-fun e!4319263 () Bool)

(declare-fun tp!1998810 () Bool)

(declare-fun tp!1998807 () Bool)

(assert (=> b!7192561 (= e!4319263 (and tp!1998810 tp!1998807))))

(declare-fun b!7192559 () Bool)

(declare-fun tp!1998809 () Bool)

(declare-fun tp!1998808 () Bool)

(assert (=> b!7192559 (= e!4319263 (and tp!1998809 tp!1998808))))

(assert (=> b!7192067 (= tp!1998709 e!4319263)))

(declare-fun b!7192558 () Bool)

(assert (=> b!7192558 (= e!4319263 tp_is_empty!46287)))

(declare-fun b!7192560 () Bool)

(declare-fun tp!1998811 () Bool)

(assert (=> b!7192560 (= e!4319263 tp!1998811)))

(assert (= (and b!7192067 ((_ is ElementMatch!18363) (regTwo!37238 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192558))

(assert (= (and b!7192067 ((_ is Concat!27208) (regTwo!37238 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192559))

(assert (= (and b!7192067 ((_ is Star!18363) (regTwo!37238 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192560))

(assert (= (and b!7192067 ((_ is Union!18363) (regTwo!37238 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192561))

(declare-fun b!7192565 () Bool)

(declare-fun e!4319264 () Bool)

(declare-fun tp!1998815 () Bool)

(declare-fun tp!1998812 () Bool)

(assert (=> b!7192565 (= e!4319264 (and tp!1998815 tp!1998812))))

(declare-fun b!7192563 () Bool)

(declare-fun tp!1998814 () Bool)

(declare-fun tp!1998813 () Bool)

(assert (=> b!7192563 (= e!4319264 (and tp!1998814 tp!1998813))))

(assert (=> b!7191974 (= tp!1998589 e!4319264)))

(declare-fun b!7192562 () Bool)

(assert (=> b!7192562 (= e!4319264 tp_is_empty!46287)))

(declare-fun b!7192564 () Bool)

(declare-fun tp!1998816 () Bool)

(assert (=> b!7192564 (= e!4319264 tp!1998816)))

(assert (= (and b!7191974 ((_ is ElementMatch!18363) (regOne!37239 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192562))

(assert (= (and b!7191974 ((_ is Concat!27208) (regOne!37239 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192563))

(assert (= (and b!7191974 ((_ is Star!18363) (regOne!37239 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192564))

(assert (= (and b!7191974 ((_ is Union!18363) (regOne!37239 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192565))

(declare-fun b!7192569 () Bool)

(declare-fun e!4319265 () Bool)

(declare-fun tp!1998820 () Bool)

(declare-fun tp!1998817 () Bool)

(assert (=> b!7192569 (= e!4319265 (and tp!1998820 tp!1998817))))

(declare-fun b!7192567 () Bool)

(declare-fun tp!1998819 () Bool)

(declare-fun tp!1998818 () Bool)

(assert (=> b!7192567 (= e!4319265 (and tp!1998819 tp!1998818))))

(assert (=> b!7191974 (= tp!1998586 e!4319265)))

(declare-fun b!7192566 () Bool)

(assert (=> b!7192566 (= e!4319265 tp_is_empty!46287)))

(declare-fun b!7192568 () Bool)

(declare-fun tp!1998821 () Bool)

(assert (=> b!7192568 (= e!4319265 tp!1998821)))

(assert (= (and b!7191974 ((_ is ElementMatch!18363) (regTwo!37239 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192566))

(assert (= (and b!7191974 ((_ is Concat!27208) (regTwo!37239 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192567))

(assert (= (and b!7191974 ((_ is Star!18363) (regTwo!37239 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192568))

(assert (= (and b!7191974 ((_ is Union!18363) (regTwo!37239 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192569))

(declare-fun b!7192573 () Bool)

(declare-fun e!4319266 () Bool)

(declare-fun tp!1998825 () Bool)

(declare-fun tp!1998822 () Bool)

(assert (=> b!7192573 (= e!4319266 (and tp!1998825 tp!1998822))))

(declare-fun b!7192571 () Bool)

(declare-fun tp!1998824 () Bool)

(declare-fun tp!1998823 () Bool)

(assert (=> b!7192571 (= e!4319266 (and tp!1998824 tp!1998823))))

(assert (=> b!7192014 (= tp!1998638 e!4319266)))

(declare-fun b!7192570 () Bool)

(assert (=> b!7192570 (= e!4319266 tp_is_empty!46287)))

(declare-fun b!7192572 () Bool)

(declare-fun tp!1998826 () Bool)

(assert (=> b!7192572 (= e!4319266 tp!1998826)))

(assert (= (and b!7192014 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 _$3!486)))) b!7192570))

(assert (= (and b!7192014 ((_ is Concat!27208) (h!76141 (exprs!7815 _$3!486)))) b!7192571))

(assert (= (and b!7192014 ((_ is Star!18363) (h!76141 (exprs!7815 _$3!486)))) b!7192572))

(assert (= (and b!7192014 ((_ is Union!18363) (h!76141 (exprs!7815 _$3!486)))) b!7192573))

(declare-fun b!7192574 () Bool)

(declare-fun e!4319267 () Bool)

(declare-fun tp!1998827 () Bool)

(declare-fun tp!1998828 () Bool)

(assert (=> b!7192574 (= e!4319267 (and tp!1998827 tp!1998828))))

(assert (=> b!7192014 (= tp!1998640 e!4319267)))

(assert (= (and b!7192014 ((_ is Cons!69693) (t!383840 (exprs!7815 _$3!486)))) b!7192574))

(declare-fun b!7192578 () Bool)

(declare-fun e!4319268 () Bool)

(declare-fun tp!1998832 () Bool)

(declare-fun tp!1998829 () Bool)

(assert (=> b!7192578 (= e!4319268 (and tp!1998832 tp!1998829))))

(declare-fun b!7192576 () Bool)

(declare-fun tp!1998831 () Bool)

(declare-fun tp!1998830 () Bool)

(assert (=> b!7192576 (= e!4319268 (and tp!1998831 tp!1998830))))

(assert (=> b!7192050 (= tp!1998686 e!4319268)))

(declare-fun b!7192575 () Bool)

(assert (=> b!7192575 (= e!4319268 tp_is_empty!46287)))

(declare-fun b!7192577 () Bool)

(declare-fun tp!1998833 () Bool)

(assert (=> b!7192577 (= e!4319268 tp!1998833)))

(assert (= (and b!7192050 ((_ is ElementMatch!18363) (regOne!37239 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192575))

(assert (= (and b!7192050 ((_ is Concat!27208) (regOne!37239 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192576))

(assert (= (and b!7192050 ((_ is Star!18363) (regOne!37239 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192577))

(assert (= (and b!7192050 ((_ is Union!18363) (regOne!37239 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192578))

(declare-fun b!7192582 () Bool)

(declare-fun e!4319269 () Bool)

(declare-fun tp!1998837 () Bool)

(declare-fun tp!1998834 () Bool)

(assert (=> b!7192582 (= e!4319269 (and tp!1998837 tp!1998834))))

(declare-fun b!7192580 () Bool)

(declare-fun tp!1998836 () Bool)

(declare-fun tp!1998835 () Bool)

(assert (=> b!7192580 (= e!4319269 (and tp!1998836 tp!1998835))))

(assert (=> b!7192050 (= tp!1998683 e!4319269)))

(declare-fun b!7192579 () Bool)

(assert (=> b!7192579 (= e!4319269 tp_is_empty!46287)))

(declare-fun b!7192581 () Bool)

(declare-fun tp!1998838 () Bool)

(assert (=> b!7192581 (= e!4319269 tp!1998838)))

(assert (= (and b!7192050 ((_ is ElementMatch!18363) (regTwo!37239 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192579))

(assert (= (and b!7192050 ((_ is Concat!27208) (regTwo!37239 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192580))

(assert (= (and b!7192050 ((_ is Star!18363) (regTwo!37239 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192581))

(assert (= (and b!7192050 ((_ is Union!18363) (regTwo!37239 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192582))

(declare-fun b!7192586 () Bool)

(declare-fun e!4319270 () Bool)

(declare-fun tp!1998842 () Bool)

(declare-fun tp!1998839 () Bool)

(assert (=> b!7192586 (= e!4319270 (and tp!1998842 tp!1998839))))

(declare-fun b!7192584 () Bool)

(declare-fun tp!1998841 () Bool)

(declare-fun tp!1998840 () Bool)

(assert (=> b!7192584 (= e!4319270 (and tp!1998841 tp!1998840))))

(assert (=> b!7191953 (= tp!1998571 e!4319270)))

(declare-fun b!7192583 () Bool)

(assert (=> b!7192583 (= e!4319270 tp_is_empty!46287)))

(declare-fun b!7192585 () Bool)

(declare-fun tp!1998843 () Bool)

(assert (=> b!7192585 (= e!4319270 tp!1998843)))

(assert (= (and b!7191953 ((_ is ElementMatch!18363) (h!76141 (t!383840 (t!383840 (exprs!7815 empty!2999)))))) b!7192583))

(assert (= (and b!7191953 ((_ is Concat!27208) (h!76141 (t!383840 (t!383840 (exprs!7815 empty!2999)))))) b!7192584))

(assert (= (and b!7191953 ((_ is Star!18363) (h!76141 (t!383840 (t!383840 (exprs!7815 empty!2999)))))) b!7192585))

(assert (= (and b!7191953 ((_ is Union!18363) (h!76141 (t!383840 (t!383840 (exprs!7815 empty!2999)))))) b!7192586))

(declare-fun b!7192587 () Bool)

(declare-fun e!4319271 () Bool)

(declare-fun tp!1998844 () Bool)

(declare-fun tp!1998845 () Bool)

(assert (=> b!7192587 (= e!4319271 (and tp!1998844 tp!1998845))))

(assert (=> b!7191953 (= tp!1998572 e!4319271)))

(assert (= (and b!7191953 ((_ is Cons!69693) (t!383840 (t!383840 (t!383840 (exprs!7815 empty!2999)))))) b!7192587))

(declare-fun b!7192591 () Bool)

(declare-fun e!4319272 () Bool)

(declare-fun tp!1998849 () Bool)

(declare-fun tp!1998846 () Bool)

(assert (=> b!7192591 (= e!4319272 (and tp!1998849 tp!1998846))))

(declare-fun b!7192589 () Bool)

(declare-fun tp!1998848 () Bool)

(declare-fun tp!1998847 () Bool)

(assert (=> b!7192589 (= e!4319272 (and tp!1998848 tp!1998847))))

(assert (=> b!7192031 (= tp!1998662 e!4319272)))

(declare-fun b!7192588 () Bool)

(assert (=> b!7192588 (= e!4319272 tp_is_empty!46287)))

(declare-fun b!7192590 () Bool)

(declare-fun tp!1998850 () Bool)

(assert (=> b!7192590 (= e!4319272 tp!1998850)))

(assert (= (and b!7192031 ((_ is ElementMatch!18363) (reg!18692 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192588))

(assert (= (and b!7192031 ((_ is Concat!27208) (reg!18692 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192589))

(assert (= (and b!7192031 ((_ is Star!18363) (reg!18692 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192590))

(assert (= (and b!7192031 ((_ is Union!18363) (reg!18692 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192591))

(declare-fun b!7192593 () Bool)

(declare-fun e!4319274 () Bool)

(declare-fun tp!1998851 () Bool)

(assert (=> b!7192593 (= e!4319274 tp!1998851)))

(declare-fun e!4319273 () Bool)

(declare-fun tp!1998852 () Bool)

(declare-fun b!7192592 () Bool)

(assert (=> b!7192592 (= e!4319273 (and (inv!88929 (h!76143 (t!383842 (t!383842 res!2927985)))) e!4319274 tp!1998852))))

(assert (=> b!7192041 (= tp!1998677 e!4319273)))

(assert (= b!7192592 b!7192593))

(assert (= (and b!7192041 ((_ is Cons!69695) (t!383842 (t!383842 res!2927985)))) b!7192592))

(declare-fun m!7887626 () Bool)

(assert (=> b!7192592 m!7887626))

(declare-fun b!7192597 () Bool)

(declare-fun e!4319275 () Bool)

(declare-fun tp!1998856 () Bool)

(declare-fun tp!1998853 () Bool)

(assert (=> b!7192597 (= e!4319275 (and tp!1998856 tp!1998853))))

(declare-fun b!7192595 () Bool)

(declare-fun tp!1998855 () Bool)

(declare-fun tp!1998854 () Bool)

(assert (=> b!7192595 (= e!4319275 (and tp!1998855 tp!1998854))))

(assert (=> b!7192036 (= tp!1998669 e!4319275)))

(declare-fun b!7192594 () Bool)

(assert (=> b!7192594 (= e!4319275 tp_is_empty!46287)))

(declare-fun b!7192596 () Bool)

(declare-fun tp!1998857 () Bool)

(assert (=> b!7192596 (= e!4319275 tp!1998857)))

(assert (= (and b!7192036 ((_ is ElementMatch!18363) (regOne!37238 (h!76141 (exprs!7815 setElem!53251))))) b!7192594))

(assert (= (and b!7192036 ((_ is Concat!27208) (regOne!37238 (h!76141 (exprs!7815 setElem!53251))))) b!7192595))

(assert (= (and b!7192036 ((_ is Star!18363) (regOne!37238 (h!76141 (exprs!7815 setElem!53251))))) b!7192596))

(assert (= (and b!7192036 ((_ is Union!18363) (regOne!37238 (h!76141 (exprs!7815 setElem!53251))))) b!7192597))

(declare-fun b!7192601 () Bool)

(declare-fun e!4319276 () Bool)

(declare-fun tp!1998861 () Bool)

(declare-fun tp!1998858 () Bool)

(assert (=> b!7192601 (= e!4319276 (and tp!1998861 tp!1998858))))

(declare-fun b!7192599 () Bool)

(declare-fun tp!1998860 () Bool)

(declare-fun tp!1998859 () Bool)

(assert (=> b!7192599 (= e!4319276 (and tp!1998860 tp!1998859))))

(assert (=> b!7192036 (= tp!1998668 e!4319276)))

(declare-fun b!7192598 () Bool)

(assert (=> b!7192598 (= e!4319276 tp_is_empty!46287)))

(declare-fun b!7192600 () Bool)

(declare-fun tp!1998862 () Bool)

(assert (=> b!7192600 (= e!4319276 tp!1998862)))

(assert (= (and b!7192036 ((_ is ElementMatch!18363) (regTwo!37238 (h!76141 (exprs!7815 setElem!53251))))) b!7192598))

(assert (= (and b!7192036 ((_ is Concat!27208) (regTwo!37238 (h!76141 (exprs!7815 setElem!53251))))) b!7192599))

(assert (= (and b!7192036 ((_ is Star!18363) (regTwo!37238 (h!76141 (exprs!7815 setElem!53251))))) b!7192600))

(assert (= (and b!7192036 ((_ is Union!18363) (regTwo!37238 (h!76141 (exprs!7815 setElem!53251))))) b!7192601))

(declare-fun b!7192605 () Bool)

(declare-fun e!4319277 () Bool)

(declare-fun tp!1998866 () Bool)

(declare-fun tp!1998863 () Bool)

(assert (=> b!7192605 (= e!4319277 (and tp!1998866 tp!1998863))))

(declare-fun b!7192603 () Bool)

(declare-fun tp!1998865 () Bool)

(declare-fun tp!1998864 () Bool)

(assert (=> b!7192603 (= e!4319277 (and tp!1998865 tp!1998864))))

(assert (=> b!7192038 (= tp!1998670 e!4319277)))

(declare-fun b!7192602 () Bool)

(assert (=> b!7192602 (= e!4319277 tp_is_empty!46287)))

(declare-fun b!7192604 () Bool)

(declare-fun tp!1998867 () Bool)

(assert (=> b!7192604 (= e!4319277 tp!1998867)))

(assert (= (and b!7192038 ((_ is ElementMatch!18363) (regOne!37239 (h!76141 (exprs!7815 setElem!53251))))) b!7192602))

(assert (= (and b!7192038 ((_ is Concat!27208) (regOne!37239 (h!76141 (exprs!7815 setElem!53251))))) b!7192603))

(assert (= (and b!7192038 ((_ is Star!18363) (regOne!37239 (h!76141 (exprs!7815 setElem!53251))))) b!7192604))

(assert (= (and b!7192038 ((_ is Union!18363) (regOne!37239 (h!76141 (exprs!7815 setElem!53251))))) b!7192605))

(declare-fun b!7192609 () Bool)

(declare-fun e!4319278 () Bool)

(declare-fun tp!1998871 () Bool)

(declare-fun tp!1998868 () Bool)

(assert (=> b!7192609 (= e!4319278 (and tp!1998871 tp!1998868))))

(declare-fun b!7192607 () Bool)

(declare-fun tp!1998870 () Bool)

(declare-fun tp!1998869 () Bool)

(assert (=> b!7192607 (= e!4319278 (and tp!1998870 tp!1998869))))

(assert (=> b!7192038 (= tp!1998667 e!4319278)))

(declare-fun b!7192606 () Bool)

(assert (=> b!7192606 (= e!4319278 tp_is_empty!46287)))

(declare-fun b!7192608 () Bool)

(declare-fun tp!1998872 () Bool)

(assert (=> b!7192608 (= e!4319278 tp!1998872)))

(assert (= (and b!7192038 ((_ is ElementMatch!18363) (regTwo!37239 (h!76141 (exprs!7815 setElem!53251))))) b!7192606))

(assert (= (and b!7192038 ((_ is Concat!27208) (regTwo!37239 (h!76141 (exprs!7815 setElem!53251))))) b!7192607))

(assert (= (and b!7192038 ((_ is Star!18363) (regTwo!37239 (h!76141 (exprs!7815 setElem!53251))))) b!7192608))

(assert (= (and b!7192038 ((_ is Union!18363) (regTwo!37239 (h!76141 (exprs!7815 setElem!53251))))) b!7192609))

(declare-fun b!7192613 () Bool)

(declare-fun e!4319279 () Bool)

(declare-fun tp!1998876 () Bool)

(declare-fun tp!1998873 () Bool)

(assert (=> b!7192613 (= e!4319279 (and tp!1998876 tp!1998873))))

(declare-fun b!7192611 () Bool)

(declare-fun tp!1998875 () Bool)

(declare-fun tp!1998874 () Bool)

(assert (=> b!7192611 (= e!4319279 (and tp!1998875 tp!1998874))))

(assert (=> b!7191972 (= tp!1998588 e!4319279)))

(declare-fun b!7192610 () Bool)

(assert (=> b!7192610 (= e!4319279 tp_is_empty!46287)))

(declare-fun b!7192612 () Bool)

(declare-fun tp!1998877 () Bool)

(assert (=> b!7192612 (= e!4319279 tp!1998877)))

(assert (= (and b!7191972 ((_ is ElementMatch!18363) (regOne!37238 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192610))

(assert (= (and b!7191972 ((_ is Concat!27208) (regOne!37238 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192611))

(assert (= (and b!7191972 ((_ is Star!18363) (regOne!37238 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192612))

(assert (= (and b!7191972 ((_ is Union!18363) (regOne!37238 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192613))

(declare-fun b!7192617 () Bool)

(declare-fun e!4319280 () Bool)

(declare-fun tp!1998881 () Bool)

(declare-fun tp!1998878 () Bool)

(assert (=> b!7192617 (= e!4319280 (and tp!1998881 tp!1998878))))

(declare-fun b!7192615 () Bool)

(declare-fun tp!1998880 () Bool)

(declare-fun tp!1998879 () Bool)

(assert (=> b!7192615 (= e!4319280 (and tp!1998880 tp!1998879))))

(assert (=> b!7191972 (= tp!1998587 e!4319280)))

(declare-fun b!7192614 () Bool)

(assert (=> b!7192614 (= e!4319280 tp_is_empty!46287)))

(declare-fun b!7192616 () Bool)

(declare-fun tp!1998882 () Bool)

(assert (=> b!7192616 (= e!4319280 tp!1998882)))

(assert (= (and b!7191972 ((_ is ElementMatch!18363) (regTwo!37238 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192614))

(assert (= (and b!7191972 ((_ is Concat!27208) (regTwo!37238 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192615))

(assert (= (and b!7191972 ((_ is Star!18363) (regTwo!37238 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192616))

(assert (= (and b!7191972 ((_ is Union!18363) (regTwo!37238 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192617))

(declare-fun b!7192618 () Bool)

(declare-fun e!4319281 () Bool)

(declare-fun tp!1998883 () Bool)

(assert (=> b!7192618 (= e!4319281 (and tp_is_empty!46287 tp!1998883))))

(assert (=> b!7192053 (= tp!1998692 e!4319281)))

(assert (= (and b!7192053 ((_ is Cons!69694) (t!383841 (t!383841 (t!383841 (t!383841 s!7967)))))) b!7192618))

(declare-fun b!7192622 () Bool)

(declare-fun e!4319282 () Bool)

(declare-fun tp!1998887 () Bool)

(declare-fun tp!1998884 () Bool)

(assert (=> b!7192622 (= e!4319282 (and tp!1998887 tp!1998884))))

(declare-fun b!7192620 () Bool)

(declare-fun tp!1998886 () Bool)

(declare-fun tp!1998885 () Bool)

(assert (=> b!7192620 (= e!4319282 (and tp!1998886 tp!1998885))))

(assert (=> b!7192048 (= tp!1998685 e!4319282)))

(declare-fun b!7192619 () Bool)

(assert (=> b!7192619 (= e!4319282 tp_is_empty!46287)))

(declare-fun b!7192621 () Bool)

(declare-fun tp!1998888 () Bool)

(assert (=> b!7192621 (= e!4319282 tp!1998888)))

(assert (= (and b!7192048 ((_ is ElementMatch!18363) (regOne!37238 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192619))

(assert (= (and b!7192048 ((_ is Concat!27208) (regOne!37238 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192620))

(assert (= (and b!7192048 ((_ is Star!18363) (regOne!37238 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192621))

(assert (= (and b!7192048 ((_ is Union!18363) (regOne!37238 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192622))

(declare-fun b!7192626 () Bool)

(declare-fun e!4319283 () Bool)

(declare-fun tp!1998892 () Bool)

(declare-fun tp!1998889 () Bool)

(assert (=> b!7192626 (= e!4319283 (and tp!1998892 tp!1998889))))

(declare-fun b!7192624 () Bool)

(declare-fun tp!1998891 () Bool)

(declare-fun tp!1998890 () Bool)

(assert (=> b!7192624 (= e!4319283 (and tp!1998891 tp!1998890))))

(assert (=> b!7192048 (= tp!1998684 e!4319283)))

(declare-fun b!7192623 () Bool)

(assert (=> b!7192623 (= e!4319283 tp_is_empty!46287)))

(declare-fun b!7192625 () Bool)

(declare-fun tp!1998893 () Bool)

(assert (=> b!7192625 (= e!4319283 tp!1998893)))

(assert (= (and b!7192048 ((_ is ElementMatch!18363) (regTwo!37238 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192623))

(assert (= (and b!7192048 ((_ is Concat!27208) (regTwo!37238 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192624))

(assert (= (and b!7192048 ((_ is Star!18363) (regTwo!37238 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192625))

(assert (= (and b!7192048 ((_ is Union!18363) (regTwo!37238 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192626))

(declare-fun b!7192628 () Bool)

(declare-fun e!4319285 () Bool)

(declare-fun tp!1998894 () Bool)

(assert (=> b!7192628 (= e!4319285 tp!1998894)))

(declare-fun b!7192627 () Bool)

(declare-fun e!4319284 () Bool)

(declare-fun tp!1998895 () Bool)

(assert (=> b!7192627 (= e!4319284 (and (inv!88929 (h!76143 (t!383842 res!2928144))) e!4319285 tp!1998895))))

(assert (=> b!7191872 (= tp!1998562 e!4319284)))

(assert (= b!7192627 b!7192628))

(assert (= (and b!7191872 ((_ is Cons!69695) (t!383842 res!2928144))) b!7192627))

(declare-fun m!7887628 () Bool)

(assert (=> b!7192627 m!7887628))

(declare-fun b!7192632 () Bool)

(declare-fun e!4319286 () Bool)

(declare-fun tp!1998899 () Bool)

(declare-fun tp!1998896 () Bool)

(assert (=> b!7192632 (= e!4319286 (and tp!1998899 tp!1998896))))

(declare-fun b!7192630 () Bool)

(declare-fun tp!1998898 () Bool)

(declare-fun tp!1998897 () Bool)

(assert (=> b!7192630 (= e!4319286 (and tp!1998898 tp!1998897))))

(assert (=> b!7191996 (= tp!1998613 e!4319286)))

(declare-fun b!7192629 () Bool)

(assert (=> b!7192629 (= e!4319286 tp_is_empty!46287)))

(declare-fun b!7192631 () Bool)

(declare-fun tp!1998900 () Bool)

(assert (=> b!7192631 (= e!4319286 tp!1998900)))

(assert (= (and b!7191996 ((_ is ElementMatch!18363) (regOne!37239 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192629))

(assert (= (and b!7191996 ((_ is Concat!27208) (regOne!37239 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192630))

(assert (= (and b!7191996 ((_ is Star!18363) (regOne!37239 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192631))

(assert (= (and b!7191996 ((_ is Union!18363) (regOne!37239 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192632))

(declare-fun b!7192636 () Bool)

(declare-fun e!4319287 () Bool)

(declare-fun tp!1998904 () Bool)

(declare-fun tp!1998901 () Bool)

(assert (=> b!7192636 (= e!4319287 (and tp!1998904 tp!1998901))))

(declare-fun b!7192634 () Bool)

(declare-fun tp!1998903 () Bool)

(declare-fun tp!1998902 () Bool)

(assert (=> b!7192634 (= e!4319287 (and tp!1998903 tp!1998902))))

(assert (=> b!7191996 (= tp!1998610 e!4319287)))

(declare-fun b!7192633 () Bool)

(assert (=> b!7192633 (= e!4319287 tp_is_empty!46287)))

(declare-fun b!7192635 () Bool)

(declare-fun tp!1998905 () Bool)

(assert (=> b!7192635 (= e!4319287 tp!1998905)))

(assert (= (and b!7191996 ((_ is ElementMatch!18363) (regTwo!37239 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192633))

(assert (= (and b!7191996 ((_ is Concat!27208) (regTwo!37239 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192634))

(assert (= (and b!7191996 ((_ is Star!18363) (regTwo!37239 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192635))

(assert (= (and b!7191996 ((_ is Union!18363) (regTwo!37239 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192636))

(declare-fun b!7192640 () Bool)

(declare-fun e!4319288 () Bool)

(declare-fun tp!1998909 () Bool)

(declare-fun tp!1998906 () Bool)

(assert (=> b!7192640 (= e!4319288 (and tp!1998909 tp!1998906))))

(declare-fun b!7192638 () Bool)

(declare-fun tp!1998908 () Bool)

(declare-fun tp!1998907 () Bool)

(assert (=> b!7192638 (= e!4319288 (and tp!1998908 tp!1998907))))

(assert (=> b!7191957 (= tp!1998579 e!4319288)))

(declare-fun b!7192637 () Bool)

(assert (=> b!7192637 (= e!4319288 tp_is_empty!46287)))

(declare-fun b!7192639 () Bool)

(declare-fun tp!1998910 () Bool)

(assert (=> b!7192639 (= e!4319288 tp!1998910)))

(assert (= (and b!7191957 ((_ is ElementMatch!18363) (reg!18692 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192637))

(assert (= (and b!7191957 ((_ is Concat!27208) (reg!18692 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192638))

(assert (= (and b!7191957 ((_ is Star!18363) (reg!18692 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192639))

(assert (= (and b!7191957 ((_ is Union!18363) (reg!18692 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192640))

(declare-fun b!7192644 () Bool)

(declare-fun e!4319289 () Bool)

(declare-fun tp!1998914 () Bool)

(declare-fun tp!1998911 () Bool)

(assert (=> b!7192644 (= e!4319289 (and tp!1998914 tp!1998911))))

(declare-fun b!7192642 () Bool)

(declare-fun tp!1998913 () Bool)

(declare-fun tp!1998912 () Bool)

(assert (=> b!7192642 (= e!4319289 (and tp!1998913 tp!1998912))))

(assert (=> b!7192003 (= tp!1998624 e!4319289)))

(declare-fun b!7192641 () Bool)

(assert (=> b!7192641 (= e!4319289 tp_is_empty!46287)))

(declare-fun b!7192643 () Bool)

(declare-fun tp!1998915 () Bool)

(assert (=> b!7192643 (= e!4319289 tp!1998915)))

(assert (= (and b!7192003 ((_ is ElementMatch!18363) (reg!18692 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192641))

(assert (= (and b!7192003 ((_ is Concat!27208) (reg!18692 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192642))

(assert (= (and b!7192003 ((_ is Star!18363) (reg!18692 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192643))

(assert (= (and b!7192003 ((_ is Union!18363) (reg!18692 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192644))

(declare-fun b!7192648 () Bool)

(declare-fun e!4319290 () Bool)

(declare-fun tp!1998919 () Bool)

(declare-fun tp!1998916 () Bool)

(assert (=> b!7192648 (= e!4319290 (and tp!1998919 tp!1998916))))

(declare-fun b!7192646 () Bool)

(declare-fun tp!1998918 () Bool)

(declare-fun tp!1998917 () Bool)

(assert (=> b!7192646 (= e!4319290 (and tp!1998918 tp!1998917))))

(assert (=> b!7191994 (= tp!1998612 e!4319290)))

(declare-fun b!7192645 () Bool)

(assert (=> b!7192645 (= e!4319290 tp_is_empty!46287)))

(declare-fun b!7192647 () Bool)

(declare-fun tp!1998920 () Bool)

(assert (=> b!7192647 (= e!4319290 tp!1998920)))

(assert (= (and b!7191994 ((_ is ElementMatch!18363) (regOne!37238 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192645))

(assert (= (and b!7191994 ((_ is Concat!27208) (regOne!37238 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192646))

(assert (= (and b!7191994 ((_ is Star!18363) (regOne!37238 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192647))

(assert (= (and b!7191994 ((_ is Union!18363) (regOne!37238 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192648))

(declare-fun b!7192652 () Bool)

(declare-fun e!4319291 () Bool)

(declare-fun tp!1998924 () Bool)

(declare-fun tp!1998921 () Bool)

(assert (=> b!7192652 (= e!4319291 (and tp!1998924 tp!1998921))))

(declare-fun b!7192650 () Bool)

(declare-fun tp!1998923 () Bool)

(declare-fun tp!1998922 () Bool)

(assert (=> b!7192650 (= e!4319291 (and tp!1998923 tp!1998922))))

(assert (=> b!7191994 (= tp!1998611 e!4319291)))

(declare-fun b!7192649 () Bool)

(assert (=> b!7192649 (= e!4319291 tp_is_empty!46287)))

(declare-fun b!7192651 () Bool)

(declare-fun tp!1998925 () Bool)

(assert (=> b!7192651 (= e!4319291 tp!1998925)))

(assert (= (and b!7191994 ((_ is ElementMatch!18363) (regTwo!37238 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192649))

(assert (= (and b!7191994 ((_ is Concat!27208) (regTwo!37238 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192650))

(assert (= (and b!7191994 ((_ is Star!18363) (regTwo!37238 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192651))

(assert (= (and b!7191994 ((_ is Union!18363) (regTwo!37238 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192652))

(declare-fun b!7192656 () Bool)

(declare-fun e!4319292 () Bool)

(declare-fun tp!1998929 () Bool)

(declare-fun tp!1998926 () Bool)

(assert (=> b!7192656 (= e!4319292 (and tp!1998929 tp!1998926))))

(declare-fun b!7192654 () Bool)

(declare-fun tp!1998928 () Bool)

(declare-fun tp!1998927 () Bool)

(assert (=> b!7192654 (= e!4319292 (and tp!1998928 tp!1998927))))

(assert (=> b!7192079 (= tp!1998725 e!4319292)))

(declare-fun b!7192653 () Bool)

(assert (=> b!7192653 (= e!4319292 tp_is_empty!46287)))

(declare-fun b!7192655 () Bool)

(declare-fun tp!1998930 () Bool)

(assert (=> b!7192655 (= e!4319292 tp!1998930)))

(assert (= (and b!7192079 ((_ is ElementMatch!18363) (h!76141 (t!383840 (t!383840 (exprs!7815 setElem!53245)))))) b!7192653))

(assert (= (and b!7192079 ((_ is Concat!27208) (h!76141 (t!383840 (t!383840 (exprs!7815 setElem!53245)))))) b!7192654))

(assert (= (and b!7192079 ((_ is Star!18363) (h!76141 (t!383840 (t!383840 (exprs!7815 setElem!53245)))))) b!7192655))

(assert (= (and b!7192079 ((_ is Union!18363) (h!76141 (t!383840 (t!383840 (exprs!7815 setElem!53245)))))) b!7192656))

(declare-fun b!7192657 () Bool)

(declare-fun e!4319293 () Bool)

(declare-fun tp!1998931 () Bool)

(declare-fun tp!1998932 () Bool)

(assert (=> b!7192657 (= e!4319293 (and tp!1998931 tp!1998932))))

(assert (=> b!7192079 (= tp!1998726 e!4319293)))

(assert (= (and b!7192079 ((_ is Cons!69693) (t!383840 (t!383840 (t!383840 (exprs!7815 setElem!53245)))))) b!7192657))

(declare-fun b!7192661 () Bool)

(declare-fun e!4319294 () Bool)

(declare-fun tp!1998936 () Bool)

(declare-fun tp!1998933 () Bool)

(assert (=> b!7192661 (= e!4319294 (and tp!1998936 tp!1998933))))

(declare-fun b!7192659 () Bool)

(declare-fun tp!1998935 () Bool)

(declare-fun tp!1998934 () Bool)

(assert (=> b!7192659 (= e!4319294 (and tp!1998935 tp!1998934))))

(assert (=> b!7191978 (= tp!1998594 e!4319294)))

(declare-fun b!7192658 () Bool)

(assert (=> b!7192658 (= e!4319294 tp_is_empty!46287)))

(declare-fun b!7192660 () Bool)

(declare-fun tp!1998937 () Bool)

(assert (=> b!7192660 (= e!4319294 tp!1998937)))

(assert (= (and b!7191978 ((_ is ElementMatch!18363) (regOne!37239 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192658))

(assert (= (and b!7191978 ((_ is Concat!27208) (regOne!37239 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192659))

(assert (= (and b!7191978 ((_ is Star!18363) (regOne!37239 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192660))

(assert (= (and b!7191978 ((_ is Union!18363) (regOne!37239 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192661))

(declare-fun b!7192665 () Bool)

(declare-fun e!4319295 () Bool)

(declare-fun tp!1998941 () Bool)

(declare-fun tp!1998938 () Bool)

(assert (=> b!7192665 (= e!4319295 (and tp!1998941 tp!1998938))))

(declare-fun b!7192663 () Bool)

(declare-fun tp!1998940 () Bool)

(declare-fun tp!1998939 () Bool)

(assert (=> b!7192663 (= e!4319295 (and tp!1998940 tp!1998939))))

(assert (=> b!7191978 (= tp!1998591 e!4319295)))

(declare-fun b!7192662 () Bool)

(assert (=> b!7192662 (= e!4319295 tp_is_empty!46287)))

(declare-fun b!7192664 () Bool)

(declare-fun tp!1998942 () Bool)

(assert (=> b!7192664 (= e!4319295 tp!1998942)))

(assert (= (and b!7191978 ((_ is ElementMatch!18363) (regTwo!37239 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192662))

(assert (= (and b!7191978 ((_ is Concat!27208) (regTwo!37239 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192663))

(assert (= (and b!7191978 ((_ is Star!18363) (regTwo!37239 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192664))

(assert (= (and b!7191978 ((_ is Union!18363) (regTwo!37239 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192665))

(declare-fun b!7192669 () Bool)

(declare-fun e!4319296 () Bool)

(declare-fun tp!1998946 () Bool)

(declare-fun tp!1998943 () Bool)

(assert (=> b!7192669 (= e!4319296 (and tp!1998946 tp!1998943))))

(declare-fun b!7192667 () Bool)

(declare-fun tp!1998945 () Bool)

(declare-fun tp!1998944 () Bool)

(assert (=> b!7192667 (= e!4319296 (and tp!1998945 tp!1998944))))

(assert (=> b!7192074 (= tp!1998718 e!4319296)))

(declare-fun b!7192666 () Bool)

(assert (=> b!7192666 (= e!4319296 tp_is_empty!46287)))

(declare-fun b!7192668 () Bool)

(declare-fun tp!1998947 () Bool)

(assert (=> b!7192668 (= e!4319296 tp!1998947)))

(assert (= (and b!7192074 ((_ is ElementMatch!18363) (regOne!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192666))

(assert (= (and b!7192074 ((_ is Concat!27208) (regOne!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192667))

(assert (= (and b!7192074 ((_ is Star!18363) (regOne!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192668))

(assert (= (and b!7192074 ((_ is Union!18363) (regOne!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192669))

(declare-fun b!7192673 () Bool)

(declare-fun e!4319297 () Bool)

(declare-fun tp!1998951 () Bool)

(declare-fun tp!1998948 () Bool)

(assert (=> b!7192673 (= e!4319297 (and tp!1998951 tp!1998948))))

(declare-fun b!7192671 () Bool)

(declare-fun tp!1998950 () Bool)

(declare-fun tp!1998949 () Bool)

(assert (=> b!7192671 (= e!4319297 (and tp!1998950 tp!1998949))))

(assert (=> b!7192074 (= tp!1998715 e!4319297)))

(declare-fun b!7192670 () Bool)

(assert (=> b!7192670 (= e!4319297 tp_is_empty!46287)))

(declare-fun b!7192672 () Bool)

(declare-fun tp!1998952 () Bool)

(assert (=> b!7192672 (= e!4319297 tp!1998952)))

(assert (= (and b!7192074 ((_ is ElementMatch!18363) (regTwo!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192670))

(assert (= (and b!7192074 ((_ is Concat!27208) (regTwo!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192671))

(assert (= (and b!7192074 ((_ is Star!18363) (regTwo!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192672))

(assert (= (and b!7192074 ((_ is Union!18363) (regTwo!37239 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192673))

(declare-fun b!7192674 () Bool)

(declare-fun e!4319298 () Bool)

(declare-fun tp!1998953 () Bool)

(declare-fun tp!1998954 () Bool)

(assert (=> b!7192674 (= e!4319298 (and tp!1998953 tp!1998954))))

(assert (=> b!7191954 (= tp!1998573 e!4319298)))

(assert (= (and b!7191954 ((_ is Cons!69693) (exprs!7815 setElem!53262))) b!7192674))

(declare-fun b!7192678 () Bool)

(declare-fun e!4319299 () Bool)

(declare-fun tp!1998958 () Bool)

(declare-fun tp!1998955 () Bool)

(assert (=> b!7192678 (= e!4319299 (and tp!1998958 tp!1998955))))

(declare-fun b!7192676 () Bool)

(declare-fun tp!1998957 () Bool)

(declare-fun tp!1998956 () Bool)

(assert (=> b!7192676 (= e!4319299 (and tp!1998957 tp!1998956))))

(assert (=> b!7191952 (= tp!1998569 e!4319299)))

(declare-fun b!7192675 () Bool)

(assert (=> b!7192675 (= e!4319299 tp_is_empty!46287)))

(declare-fun b!7192677 () Bool)

(declare-fun tp!1998959 () Bool)

(assert (=> b!7192677 (= e!4319299 tp!1998959)))

(assert (= (and b!7191952 ((_ is ElementMatch!18363) (regOne!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192675))

(assert (= (and b!7191952 ((_ is Concat!27208) (regOne!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192676))

(assert (= (and b!7191952 ((_ is Star!18363) (regOne!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192677))

(assert (= (and b!7191952 ((_ is Union!18363) (regOne!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192678))

(declare-fun b!7192682 () Bool)

(declare-fun e!4319300 () Bool)

(declare-fun tp!1998963 () Bool)

(declare-fun tp!1998960 () Bool)

(assert (=> b!7192682 (= e!4319300 (and tp!1998963 tp!1998960))))

(declare-fun b!7192680 () Bool)

(declare-fun tp!1998962 () Bool)

(declare-fun tp!1998961 () Bool)

(assert (=> b!7192680 (= e!4319300 (and tp!1998962 tp!1998961))))

(assert (=> b!7191952 (= tp!1998566 e!4319300)))

(declare-fun b!7192679 () Bool)

(assert (=> b!7192679 (= e!4319300 tp_is_empty!46287)))

(declare-fun b!7192681 () Bool)

(declare-fun tp!1998964 () Bool)

(assert (=> b!7192681 (= e!4319300 tp!1998964)))

(assert (= (and b!7191952 ((_ is ElementMatch!18363) (regTwo!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192679))

(assert (= (and b!7191952 ((_ is Concat!27208) (regTwo!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192680))

(assert (= (and b!7191952 ((_ is Star!18363) (regTwo!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192681))

(assert (= (and b!7191952 ((_ is Union!18363) (regTwo!37239 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192682))

(declare-fun b!7192686 () Bool)

(declare-fun e!4319301 () Bool)

(declare-fun tp!1998968 () Bool)

(declare-fun tp!1998965 () Bool)

(assert (=> b!7192686 (= e!4319301 (and tp!1998968 tp!1998965))))

(declare-fun b!7192684 () Bool)

(declare-fun tp!1998967 () Bool)

(declare-fun tp!1998966 () Bool)

(assert (=> b!7192684 (= e!4319301 (and tp!1998967 tp!1998966))))

(assert (=> b!7191976 (= tp!1998593 e!4319301)))

(declare-fun b!7192683 () Bool)

(assert (=> b!7192683 (= e!4319301 tp_is_empty!46287)))

(declare-fun b!7192685 () Bool)

(declare-fun tp!1998969 () Bool)

(assert (=> b!7192685 (= e!4319301 tp!1998969)))

(assert (= (and b!7191976 ((_ is ElementMatch!18363) (regOne!37238 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192683))

(assert (= (and b!7191976 ((_ is Concat!27208) (regOne!37238 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192684))

(assert (= (and b!7191976 ((_ is Star!18363) (regOne!37238 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192685))

(assert (= (and b!7191976 ((_ is Union!18363) (regOne!37238 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192686))

(declare-fun b!7192690 () Bool)

(declare-fun e!4319302 () Bool)

(declare-fun tp!1998973 () Bool)

(declare-fun tp!1998970 () Bool)

(assert (=> b!7192690 (= e!4319302 (and tp!1998973 tp!1998970))))

(declare-fun b!7192688 () Bool)

(declare-fun tp!1998972 () Bool)

(declare-fun tp!1998971 () Bool)

(assert (=> b!7192688 (= e!4319302 (and tp!1998972 tp!1998971))))

(assert (=> b!7191976 (= tp!1998592 e!4319302)))

(declare-fun b!7192687 () Bool)

(assert (=> b!7192687 (= e!4319302 tp_is_empty!46287)))

(declare-fun b!7192689 () Bool)

(declare-fun tp!1998974 () Bool)

(assert (=> b!7192689 (= e!4319302 tp!1998974)))

(assert (= (and b!7191976 ((_ is ElementMatch!18363) (regTwo!37238 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192687))

(assert (= (and b!7191976 ((_ is Concat!27208) (regTwo!37238 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192688))

(assert (= (and b!7191976 ((_ is Star!18363) (regTwo!37238 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192689))

(assert (= (and b!7191976 ((_ is Union!18363) (regTwo!37238 (regTwo!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192690))

(declare-fun b!7192692 () Bool)

(declare-fun e!4319304 () Bool)

(declare-fun tp!1998975 () Bool)

(assert (=> b!7192692 (= e!4319304 tp!1998975)))

(declare-fun e!4319303 () Bool)

(declare-fun b!7192691 () Bool)

(declare-fun tp!1998976 () Bool)

(assert (=> b!7192691 (= e!4319303 (and (inv!88929 (h!76143 (t!383842 (t!383842 res!2927981)))) e!4319304 tp!1998976))))

(assert (=> b!7191987 (= tp!1998607 e!4319303)))

(assert (= b!7192691 b!7192692))

(assert (= (and b!7191987 ((_ is Cons!69695) (t!383842 (t!383842 res!2927981)))) b!7192691))

(declare-fun m!7887630 () Bool)

(assert (=> b!7192691 m!7887630))

(declare-fun b!7192696 () Bool)

(declare-fun e!4319305 () Bool)

(declare-fun tp!1998980 () Bool)

(declare-fun tp!1998977 () Bool)

(assert (=> b!7192696 (= e!4319305 (and tp!1998980 tp!1998977))))

(declare-fun b!7192694 () Bool)

(declare-fun tp!1998979 () Bool)

(declare-fun tp!1998978 () Bool)

(assert (=> b!7192694 (= e!4319305 (and tp!1998979 tp!1998978))))

(assert (=> b!7192072 (= tp!1998717 e!4319305)))

(declare-fun b!7192693 () Bool)

(assert (=> b!7192693 (= e!4319305 tp_is_empty!46287)))

(declare-fun b!7192695 () Bool)

(declare-fun tp!1998981 () Bool)

(assert (=> b!7192695 (= e!4319305 tp!1998981)))

(assert (= (and b!7192072 ((_ is ElementMatch!18363) (regOne!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192693))

(assert (= (and b!7192072 ((_ is Concat!27208) (regOne!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192694))

(assert (= (and b!7192072 ((_ is Star!18363) (regOne!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192695))

(assert (= (and b!7192072 ((_ is Union!18363) (regOne!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192696))

(declare-fun b!7192700 () Bool)

(declare-fun e!4319306 () Bool)

(declare-fun tp!1998985 () Bool)

(declare-fun tp!1998982 () Bool)

(assert (=> b!7192700 (= e!4319306 (and tp!1998985 tp!1998982))))

(declare-fun b!7192698 () Bool)

(declare-fun tp!1998984 () Bool)

(declare-fun tp!1998983 () Bool)

(assert (=> b!7192698 (= e!4319306 (and tp!1998984 tp!1998983))))

(assert (=> b!7192072 (= tp!1998716 e!4319306)))

(declare-fun b!7192697 () Bool)

(assert (=> b!7192697 (= e!4319306 tp_is_empty!46287)))

(declare-fun b!7192699 () Bool)

(declare-fun tp!1998986 () Bool)

(assert (=> b!7192699 (= e!4319306 tp!1998986)))

(assert (= (and b!7192072 ((_ is ElementMatch!18363) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192697))

(assert (= (and b!7192072 ((_ is Concat!27208) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192698))

(assert (= (and b!7192072 ((_ is Star!18363) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192699))

(assert (= (and b!7192072 ((_ is Union!18363) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192700))

(declare-fun b!7192701 () Bool)

(declare-fun e!4319307 () Bool)

(declare-fun tp!1998987 () Bool)

(declare-fun tp!1998988 () Bool)

(assert (=> b!7192701 (= e!4319307 (and tp!1998987 tp!1998988))))

(assert (=> b!7191988 (= tp!1998605 e!4319307)))

(assert (= (and b!7191988 ((_ is Cons!69693) (exprs!7815 (h!76143 (t!383842 res!2927981))))) b!7192701))

(declare-fun b!7192705 () Bool)

(declare-fun e!4319308 () Bool)

(declare-fun tp!1998992 () Bool)

(declare-fun tp!1998989 () Bool)

(assert (=> b!7192705 (= e!4319308 (and tp!1998992 tp!1998989))))

(declare-fun b!7192703 () Bool)

(declare-fun tp!1998991 () Bool)

(declare-fun tp!1998990 () Bool)

(assert (=> b!7192703 (= e!4319308 (and tp!1998991 tp!1998990))))

(assert (=> b!7192073 (= tp!1998719 e!4319308)))

(declare-fun b!7192702 () Bool)

(assert (=> b!7192702 (= e!4319308 tp_is_empty!46287)))

(declare-fun b!7192704 () Bool)

(declare-fun tp!1998993 () Bool)

(assert (=> b!7192704 (= e!4319308 tp!1998993)))

(assert (= (and b!7192073 ((_ is ElementMatch!18363) (reg!18692 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192702))

(assert (= (and b!7192073 ((_ is Concat!27208) (reg!18692 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192703))

(assert (= (and b!7192073 ((_ is Star!18363) (reg!18692 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192704))

(assert (= (and b!7192073 ((_ is Union!18363) (reg!18692 (h!76141 (t!383840 (exprs!7815 setElem!53245)))))) b!7192705))

(declare-fun b!7192709 () Bool)

(declare-fun e!4319309 () Bool)

(declare-fun tp!1998997 () Bool)

(declare-fun tp!1998994 () Bool)

(assert (=> b!7192709 (= e!4319309 (and tp!1998997 tp!1998994))))

(declare-fun b!7192707 () Bool)

(declare-fun tp!1998996 () Bool)

(declare-fun tp!1998995 () Bool)

(assert (=> b!7192707 (= e!4319309 (and tp!1998996 tp!1998995))))

(assert (=> b!7192027 (= tp!1998654 e!4319309)))

(declare-fun b!7192706 () Bool)

(assert (=> b!7192706 (= e!4319309 tp_is_empty!46287)))

(declare-fun b!7192708 () Bool)

(declare-fun tp!1998998 () Bool)

(assert (=> b!7192708 (= e!4319309 tp!1998998)))

(assert (= (and b!7192027 ((_ is ElementMatch!18363) (regOne!37239 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192706))

(assert (= (and b!7192027 ((_ is Concat!27208) (regOne!37239 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192707))

(assert (= (and b!7192027 ((_ is Star!18363) (regOne!37239 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192708))

(assert (= (and b!7192027 ((_ is Union!18363) (regOne!37239 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192709))

(declare-fun b!7192713 () Bool)

(declare-fun e!4319310 () Bool)

(declare-fun tp!1999002 () Bool)

(declare-fun tp!1998999 () Bool)

(assert (=> b!7192713 (= e!4319310 (and tp!1999002 tp!1998999))))

(declare-fun b!7192711 () Bool)

(declare-fun tp!1999001 () Bool)

(declare-fun tp!1999000 () Bool)

(assert (=> b!7192711 (= e!4319310 (and tp!1999001 tp!1999000))))

(assert (=> b!7192027 (= tp!1998648 e!4319310)))

(declare-fun b!7192710 () Bool)

(assert (=> b!7192710 (= e!4319310 tp_is_empty!46287)))

(declare-fun b!7192712 () Bool)

(declare-fun tp!1999003 () Bool)

(assert (=> b!7192712 (= e!4319310 tp!1999003)))

(assert (= (and b!7192027 ((_ is ElementMatch!18363) (regTwo!37239 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192710))

(assert (= (and b!7192027 ((_ is Concat!27208) (regTwo!37239 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192711))

(assert (= (and b!7192027 ((_ is Star!18363) (regTwo!37239 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192712))

(assert (= (and b!7192027 ((_ is Union!18363) (regTwo!37239 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192713))

(declare-fun b!7192717 () Bool)

(declare-fun e!4319311 () Bool)

(declare-fun tp!1999007 () Bool)

(declare-fun tp!1999004 () Bool)

(assert (=> b!7192717 (= e!4319311 (and tp!1999007 tp!1999004))))

(declare-fun b!7192715 () Bool)

(declare-fun tp!1999006 () Bool)

(declare-fun tp!1999005 () Bool)

(assert (=> b!7192715 (= e!4319311 (and tp!1999006 tp!1999005))))

(assert (=> b!7191950 (= tp!1998568 e!4319311)))

(declare-fun b!7192714 () Bool)

(assert (=> b!7192714 (= e!4319311 tp_is_empty!46287)))

(declare-fun b!7192716 () Bool)

(declare-fun tp!1999008 () Bool)

(assert (=> b!7192716 (= e!4319311 tp!1999008)))

(assert (= (and b!7191950 ((_ is ElementMatch!18363) (regOne!37238 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192714))

(assert (= (and b!7191950 ((_ is Concat!27208) (regOne!37238 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192715))

(assert (= (and b!7191950 ((_ is Star!18363) (regOne!37238 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192716))

(assert (= (and b!7191950 ((_ is Union!18363) (regOne!37238 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192717))

(declare-fun b!7192721 () Bool)

(declare-fun e!4319312 () Bool)

(declare-fun tp!1999012 () Bool)

(declare-fun tp!1999009 () Bool)

(assert (=> b!7192721 (= e!4319312 (and tp!1999012 tp!1999009))))

(declare-fun b!7192719 () Bool)

(declare-fun tp!1999011 () Bool)

(declare-fun tp!1999010 () Bool)

(assert (=> b!7192719 (= e!4319312 (and tp!1999011 tp!1999010))))

(assert (=> b!7191950 (= tp!1998567 e!4319312)))

(declare-fun b!7192718 () Bool)

(assert (=> b!7192718 (= e!4319312 tp_is_empty!46287)))

(declare-fun b!7192720 () Bool)

(declare-fun tp!1999013 () Bool)

(assert (=> b!7192720 (= e!4319312 tp!1999013)))

(assert (= (and b!7191950 ((_ is ElementMatch!18363) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192718))

(assert (= (and b!7191950 ((_ is Concat!27208) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192719))

(assert (= (and b!7191950 ((_ is Star!18363) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192720))

(assert (= (and b!7191950 ((_ is Union!18363) (regTwo!37238 (h!76141 (t!383840 (exprs!7815 empty!2999)))))) b!7192721))

(declare-fun b!7192725 () Bool)

(declare-fun e!4319313 () Bool)

(declare-fun tp!1999017 () Bool)

(declare-fun tp!1999014 () Bool)

(assert (=> b!7192725 (= e!4319313 (and tp!1999017 tp!1999014))))

(declare-fun b!7192723 () Bool)

(declare-fun tp!1999016 () Bool)

(declare-fun tp!1999015 () Bool)

(assert (=> b!7192723 (= e!4319313 (and tp!1999016 tp!1999015))))

(assert (=> b!7192059 (= tp!1998700 e!4319313)))

(declare-fun b!7192722 () Bool)

(assert (=> b!7192722 (= e!4319313 tp_is_empty!46287)))

(declare-fun b!7192724 () Bool)

(declare-fun tp!1999018 () Bool)

(assert (=> b!7192724 (= e!4319313 tp!1999018)))

(assert (= (and b!7192059 ((_ is ElementMatch!18363) (regOne!37238 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192722))

(assert (= (and b!7192059 ((_ is Concat!27208) (regOne!37238 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192723))

(assert (= (and b!7192059 ((_ is Star!18363) (regOne!37238 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192724))

(assert (= (and b!7192059 ((_ is Union!18363) (regOne!37238 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192725))

(declare-fun b!7192729 () Bool)

(declare-fun e!4319314 () Bool)

(declare-fun tp!1999022 () Bool)

(declare-fun tp!1999019 () Bool)

(assert (=> b!7192729 (= e!4319314 (and tp!1999022 tp!1999019))))

(declare-fun b!7192727 () Bool)

(declare-fun tp!1999021 () Bool)

(declare-fun tp!1999020 () Bool)

(assert (=> b!7192727 (= e!4319314 (and tp!1999021 tp!1999020))))

(assert (=> b!7192059 (= tp!1998699 e!4319314)))

(declare-fun b!7192726 () Bool)

(assert (=> b!7192726 (= e!4319314 tp_is_empty!46287)))

(declare-fun b!7192728 () Bool)

(declare-fun tp!1999023 () Bool)

(assert (=> b!7192728 (= e!4319314 tp!1999023)))

(assert (= (and b!7192059 ((_ is ElementMatch!18363) (regTwo!37238 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192726))

(assert (= (and b!7192059 ((_ is Concat!27208) (regTwo!37238 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192727))

(assert (= (and b!7192059 ((_ is Star!18363) (regTwo!37238 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192728))

(assert (= (and b!7192059 ((_ is Union!18363) (regTwo!37238 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192729))

(declare-fun b!7192730 () Bool)

(declare-fun e!4319315 () Bool)

(declare-fun tp!1999024 () Bool)

(declare-fun tp!1999025 () Bool)

(assert (=> b!7192730 (= e!4319315 (and tp!1999024 tp!1999025))))

(assert (=> b!7191550 (= tp!1998559 e!4319315)))

(assert (= (and b!7191550 ((_ is Cons!69693) (exprs!7815 setElem!53260))) b!7192730))

(declare-fun b!7192734 () Bool)

(declare-fun e!4319316 () Bool)

(declare-fun tp!1999029 () Bool)

(declare-fun tp!1999026 () Bool)

(assert (=> b!7192734 (= e!4319316 (and tp!1999029 tp!1999026))))

(declare-fun b!7192732 () Bool)

(declare-fun tp!1999028 () Bool)

(declare-fun tp!1999027 () Bool)

(assert (=> b!7192732 (= e!4319316 (and tp!1999028 tp!1999027))))

(assert (=> b!7192068 (= tp!1998712 e!4319316)))

(declare-fun b!7192731 () Bool)

(assert (=> b!7192731 (= e!4319316 tp_is_empty!46287)))

(declare-fun b!7192733 () Bool)

(declare-fun tp!1999030 () Bool)

(assert (=> b!7192733 (= e!4319316 tp!1999030)))

(assert (= (and b!7192068 ((_ is ElementMatch!18363) (reg!18692 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192731))

(assert (= (and b!7192068 ((_ is Concat!27208) (reg!18692 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192732))

(assert (= (and b!7192068 ((_ is Star!18363) (reg!18692 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192733))

(assert (= (and b!7192068 ((_ is Union!18363) (reg!18692 (regTwo!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192734))

(declare-fun b!7192738 () Bool)

(declare-fun e!4319317 () Bool)

(declare-fun tp!1999034 () Bool)

(declare-fun tp!1999031 () Bool)

(assert (=> b!7192738 (= e!4319317 (and tp!1999034 tp!1999031))))

(declare-fun b!7192736 () Bool)

(declare-fun tp!1999033 () Bool)

(declare-fun tp!1999032 () Bool)

(assert (=> b!7192736 (= e!4319317 (and tp!1999033 tp!1999032))))

(assert (=> b!7192040 (= tp!1998674 e!4319317)))

(declare-fun b!7192735 () Bool)

(assert (=> b!7192735 (= e!4319317 tp_is_empty!46287)))

(declare-fun b!7192737 () Bool)

(declare-fun tp!1999035 () Bool)

(assert (=> b!7192737 (= e!4319317 tp!1999035)))

(assert (= (and b!7192040 ((_ is ElementMatch!18363) (h!76141 (t!383840 (exprs!7815 setElem!53251))))) b!7192735))

(assert (= (and b!7192040 ((_ is Concat!27208) (h!76141 (t!383840 (exprs!7815 setElem!53251))))) b!7192736))

(assert (= (and b!7192040 ((_ is Star!18363) (h!76141 (t!383840 (exprs!7815 setElem!53251))))) b!7192737))

(assert (= (and b!7192040 ((_ is Union!18363) (h!76141 (t!383840 (exprs!7815 setElem!53251))))) b!7192738))

(declare-fun b!7192739 () Bool)

(declare-fun e!4319318 () Bool)

(declare-fun tp!1999036 () Bool)

(declare-fun tp!1999037 () Bool)

(assert (=> b!7192739 (= e!4319318 (and tp!1999036 tp!1999037))))

(assert (=> b!7192040 (= tp!1998675 e!4319318)))

(assert (= (and b!7192040 ((_ is Cons!69693) (t!383840 (t!383840 (exprs!7815 setElem!53251))))) b!7192739))

(declare-fun b!7192743 () Bool)

(declare-fun e!4319319 () Bool)

(declare-fun tp!1999041 () Bool)

(declare-fun tp!1999038 () Bool)

(assert (=> b!7192743 (= e!4319319 (and tp!1999041 tp!1999038))))

(declare-fun b!7192741 () Bool)

(declare-fun tp!1999040 () Bool)

(declare-fun tp!1999039 () Bool)

(assert (=> b!7192741 (= e!4319319 (and tp!1999040 tp!1999039))))

(assert (=> b!7192030 (= tp!1998660 e!4319319)))

(declare-fun b!7192740 () Bool)

(assert (=> b!7192740 (= e!4319319 tp_is_empty!46287)))

(declare-fun b!7192742 () Bool)

(declare-fun tp!1999042 () Bool)

(assert (=> b!7192742 (= e!4319319 tp!1999042)))

(assert (= (and b!7192030 ((_ is ElementMatch!18363) (regOne!37238 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192740))

(assert (= (and b!7192030 ((_ is Concat!27208) (regOne!37238 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192741))

(assert (= (and b!7192030 ((_ is Star!18363) (regOne!37238 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192742))

(assert (= (and b!7192030 ((_ is Union!18363) (regOne!37238 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192743))

(declare-fun b!7192747 () Bool)

(declare-fun e!4319320 () Bool)

(declare-fun tp!1999046 () Bool)

(declare-fun tp!1999043 () Bool)

(assert (=> b!7192747 (= e!4319320 (and tp!1999046 tp!1999043))))

(declare-fun b!7192745 () Bool)

(declare-fun tp!1999045 () Bool)

(declare-fun tp!1999044 () Bool)

(assert (=> b!7192745 (= e!4319320 (and tp!1999045 tp!1999044))))

(assert (=> b!7192030 (= tp!1998659 e!4319320)))

(declare-fun b!7192744 () Bool)

(assert (=> b!7192744 (= e!4319320 tp_is_empty!46287)))

(declare-fun b!7192746 () Bool)

(declare-fun tp!1999047 () Bool)

(assert (=> b!7192746 (= e!4319320 tp!1999047)))

(assert (= (and b!7192030 ((_ is ElementMatch!18363) (regTwo!37238 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192744))

(assert (= (and b!7192030 ((_ is Concat!27208) (regTwo!37238 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192745))

(assert (= (and b!7192030 ((_ is Star!18363) (regTwo!37238 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192746))

(assert (= (and b!7192030 ((_ is Union!18363) (regTwo!37238 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192747))

(declare-fun b!7192751 () Bool)

(declare-fun e!4319321 () Bool)

(declare-fun tp!1999051 () Bool)

(declare-fun tp!1999048 () Bool)

(assert (=> b!7192751 (= e!4319321 (and tp!1999051 tp!1999048))))

(declare-fun b!7192749 () Bool)

(declare-fun tp!1999050 () Bool)

(declare-fun tp!1999049 () Bool)

(assert (=> b!7192749 (= e!4319321 (and tp!1999050 tp!1999049))))

(assert (=> b!7192049 (= tp!1998687 e!4319321)))

(declare-fun b!7192748 () Bool)

(assert (=> b!7192748 (= e!4319321 tp_is_empty!46287)))

(declare-fun b!7192750 () Bool)

(declare-fun tp!1999052 () Bool)

(assert (=> b!7192750 (= e!4319321 tp!1999052)))

(assert (= (and b!7192049 ((_ is ElementMatch!18363) (reg!18692 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192748))

(assert (= (and b!7192049 ((_ is Concat!27208) (reg!18692 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192749))

(assert (= (and b!7192049 ((_ is Star!18363) (reg!18692 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192750))

(assert (= (and b!7192049 ((_ is Union!18363) (reg!18692 (reg!18692 (h!76141 (exprs!7815 empty!2999)))))) b!7192751))

(declare-fun condSetEmpty!53268 () Bool)

(assert (=> setNonEmpty!53263 (= condSetEmpty!53268 (= setRest!53263 ((as const (Array Context!14630 Bool)) false)))))

(declare-fun setRes!53268 () Bool)

(assert (=> setNonEmpty!53263 (= tp!1998631 setRes!53268)))

(declare-fun setIsEmpty!53268 () Bool)

(assert (=> setIsEmpty!53268 setRes!53268))

(declare-fun tp!1999054 () Bool)

(declare-fun e!4319322 () Bool)

(declare-fun setElem!53268 () Context!14630)

(declare-fun setNonEmpty!53268 () Bool)

(assert (=> setNonEmpty!53268 (= setRes!53268 (and tp!1999054 (inv!88929 setElem!53268) e!4319322))))

(declare-fun setRest!53268 () (InoxSet Context!14630))

(assert (=> setNonEmpty!53268 (= setRest!53263 ((_ map or) (store ((as const (Array Context!14630 Bool)) false) setElem!53268 true) setRest!53268))))

(declare-fun b!7192752 () Bool)

(declare-fun tp!1999053 () Bool)

(assert (=> b!7192752 (= e!4319322 tp!1999053)))

(assert (= (and setNonEmpty!53263 condSetEmpty!53268) setIsEmpty!53268))

(assert (= (and setNonEmpty!53263 (not condSetEmpty!53268)) setNonEmpty!53268))

(assert (= setNonEmpty!53268 b!7192752))

(declare-fun m!7887632 () Bool)

(assert (=> setNonEmpty!53268 m!7887632))

(declare-fun b!7192756 () Bool)

(declare-fun e!4319323 () Bool)

(declare-fun tp!1999058 () Bool)

(declare-fun tp!1999055 () Bool)

(assert (=> b!7192756 (= e!4319323 (and tp!1999058 tp!1999055))))

(declare-fun b!7192754 () Bool)

(declare-fun tp!1999057 () Bool)

(declare-fun tp!1999056 () Bool)

(assert (=> b!7192754 (= e!4319323 (and tp!1999057 tp!1999056))))

(assert (=> b!7192002 (= tp!1998622 e!4319323)))

(declare-fun b!7192753 () Bool)

(assert (=> b!7192753 (= e!4319323 tp_is_empty!46287)))

(declare-fun b!7192755 () Bool)

(declare-fun tp!1999059 () Bool)

(assert (=> b!7192755 (= e!4319323 tp!1999059)))

(assert (= (and b!7192002 ((_ is ElementMatch!18363) (regOne!37238 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192753))

(assert (= (and b!7192002 ((_ is Concat!27208) (regOne!37238 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192754))

(assert (= (and b!7192002 ((_ is Star!18363) (regOne!37238 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192755))

(assert (= (and b!7192002 ((_ is Union!18363) (regOne!37238 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192756))

(declare-fun b!7192760 () Bool)

(declare-fun e!4319324 () Bool)

(declare-fun tp!1999063 () Bool)

(declare-fun tp!1999060 () Bool)

(assert (=> b!7192760 (= e!4319324 (and tp!1999063 tp!1999060))))

(declare-fun b!7192758 () Bool)

(declare-fun tp!1999062 () Bool)

(declare-fun tp!1999061 () Bool)

(assert (=> b!7192758 (= e!4319324 (and tp!1999062 tp!1999061))))

(assert (=> b!7192002 (= tp!1998621 e!4319324)))

(declare-fun b!7192757 () Bool)

(assert (=> b!7192757 (= e!4319324 tp_is_empty!46287)))

(declare-fun b!7192759 () Bool)

(declare-fun tp!1999064 () Bool)

(assert (=> b!7192759 (= e!4319324 tp!1999064)))

(assert (= (and b!7192002 ((_ is ElementMatch!18363) (regTwo!37238 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192757))

(assert (= (and b!7192002 ((_ is Concat!27208) (regTwo!37238 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192758))

(assert (= (and b!7192002 ((_ is Star!18363) (regTwo!37238 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192759))

(assert (= (and b!7192002 ((_ is Union!18363) (regTwo!37238 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192760))

(declare-fun b!7192761 () Bool)

(declare-fun e!4319325 () Bool)

(declare-fun tp!1999065 () Bool)

(declare-fun tp!1999066 () Bool)

(assert (=> b!7192761 (= e!4319325 (and tp!1999065 tp!1999066))))

(assert (=> b!7192042 (= tp!1998676 e!4319325)))

(assert (= (and b!7192042 ((_ is Cons!69693) (exprs!7815 (h!76143 (t!383842 res!2927985))))) b!7192761))

(declare-fun b!7192765 () Bool)

(declare-fun e!4319326 () Bool)

(declare-fun tp!1999070 () Bool)

(declare-fun tp!1999067 () Bool)

(assert (=> b!7192765 (= e!4319326 (and tp!1999070 tp!1999067))))

(declare-fun b!7192763 () Bool)

(declare-fun tp!1999069 () Bool)

(declare-fun tp!1999068 () Bool)

(assert (=> b!7192763 (= e!4319326 (and tp!1999069 tp!1999068))))

(assert (=> b!7191960 (= tp!1998582 e!4319326)))

(declare-fun b!7192762 () Bool)

(assert (=> b!7192762 (= e!4319326 tp_is_empty!46287)))

(declare-fun b!7192764 () Bool)

(declare-fun tp!1999071 () Bool)

(assert (=> b!7192764 (= e!4319326 tp!1999071)))

(assert (= (and b!7191960 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 setElem!53258)))) b!7192762))

(assert (= (and b!7191960 ((_ is Concat!27208) (h!76141 (exprs!7815 setElem!53258)))) b!7192763))

(assert (= (and b!7191960 ((_ is Star!18363) (h!76141 (exprs!7815 setElem!53258)))) b!7192764))

(assert (= (and b!7191960 ((_ is Union!18363) (h!76141 (exprs!7815 setElem!53258)))) b!7192765))

(declare-fun b!7192766 () Bool)

(declare-fun e!4319327 () Bool)

(declare-fun tp!1999072 () Bool)

(declare-fun tp!1999073 () Bool)

(assert (=> b!7192766 (= e!4319327 (and tp!1999072 tp!1999073))))

(assert (=> b!7191960 (= tp!1998583 e!4319327)))

(assert (= (and b!7191960 ((_ is Cons!69693) (t!383840 (exprs!7815 setElem!53258)))) b!7192766))

(declare-fun b!7192770 () Bool)

(declare-fun e!4319328 () Bool)

(declare-fun tp!1999077 () Bool)

(declare-fun tp!1999074 () Bool)

(assert (=> b!7192770 (= e!4319328 (and tp!1999077 tp!1999074))))

(declare-fun b!7192768 () Bool)

(declare-fun tp!1999076 () Bool)

(declare-fun tp!1999075 () Bool)

(assert (=> b!7192768 (= e!4319328 (and tp!1999076 tp!1999075))))

(assert (=> b!7192061 (= tp!1998701 e!4319328)))

(declare-fun b!7192767 () Bool)

(assert (=> b!7192767 (= e!4319328 tp_is_empty!46287)))

(declare-fun b!7192769 () Bool)

(declare-fun tp!1999078 () Bool)

(assert (=> b!7192769 (= e!4319328 tp!1999078)))

(assert (= (and b!7192061 ((_ is ElementMatch!18363) (regOne!37239 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192767))

(assert (= (and b!7192061 ((_ is Concat!27208) (regOne!37239 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192768))

(assert (= (and b!7192061 ((_ is Star!18363) (regOne!37239 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192769))

(assert (= (and b!7192061 ((_ is Union!18363) (regOne!37239 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192770))

(declare-fun b!7192774 () Bool)

(declare-fun e!4319329 () Bool)

(declare-fun tp!1999082 () Bool)

(declare-fun tp!1999079 () Bool)

(assert (=> b!7192774 (= e!4319329 (and tp!1999082 tp!1999079))))

(declare-fun b!7192772 () Bool)

(declare-fun tp!1999081 () Bool)

(declare-fun tp!1999080 () Bool)

(assert (=> b!7192772 (= e!4319329 (and tp!1999081 tp!1999080))))

(assert (=> b!7192061 (= tp!1998698 e!4319329)))

(declare-fun b!7192771 () Bool)

(assert (=> b!7192771 (= e!4319329 tp_is_empty!46287)))

(declare-fun b!7192773 () Bool)

(declare-fun tp!1999083 () Bool)

(assert (=> b!7192773 (= e!4319329 tp!1999083)))

(assert (= (and b!7192061 ((_ is ElementMatch!18363) (regTwo!37239 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192771))

(assert (= (and b!7192061 ((_ is Concat!27208) (regTwo!37239 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192772))

(assert (= (and b!7192061 ((_ is Star!18363) (regTwo!37239 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192773))

(assert (= (and b!7192061 ((_ is Union!18363) (regTwo!37239 (regOne!37238 (h!76141 (exprs!7815 empty!2999)))))) b!7192774))

(declare-fun b!7192778 () Bool)

(declare-fun e!4319330 () Bool)

(declare-fun tp!1999087 () Bool)

(declare-fun tp!1999084 () Bool)

(assert (=> b!7192778 (= e!4319330 (and tp!1999087 tp!1999084))))

(declare-fun b!7192776 () Bool)

(declare-fun tp!1999086 () Bool)

(declare-fun tp!1999085 () Bool)

(assert (=> b!7192776 (= e!4319330 (and tp!1999086 tp!1999085))))

(assert (=> b!7191973 (= tp!1998590 e!4319330)))

(declare-fun b!7192775 () Bool)

(assert (=> b!7192775 (= e!4319330 tp_is_empty!46287)))

(declare-fun b!7192777 () Bool)

(declare-fun tp!1999088 () Bool)

(assert (=> b!7192777 (= e!4319330 tp!1999088)))

(assert (= (and b!7191973 ((_ is ElementMatch!18363) (reg!18692 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192775))

(assert (= (and b!7191973 ((_ is Concat!27208) (reg!18692 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192776))

(assert (= (and b!7191973 ((_ is Star!18363) (reg!18692 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192777))

(assert (= (and b!7191973 ((_ is Union!18363) (reg!18692 (regOne!37239 (h!76141 (exprs!7815 setElem!53245)))))) b!7192778))

(declare-fun b!7192782 () Bool)

(declare-fun e!4319331 () Bool)

(declare-fun tp!1999092 () Bool)

(declare-fun tp!1999089 () Bool)

(assert (=> b!7192782 (= e!4319331 (and tp!1999092 tp!1999089))))

(declare-fun b!7192780 () Bool)

(declare-fun tp!1999091 () Bool)

(declare-fun tp!1999090 () Bool)

(assert (=> b!7192780 (= e!4319331 (and tp!1999091 tp!1999090))))

(assert (=> b!7192037 (= tp!1998671 e!4319331)))

(declare-fun b!7192779 () Bool)

(assert (=> b!7192779 (= e!4319331 tp_is_empty!46287)))

(declare-fun b!7192781 () Bool)

(declare-fun tp!1999093 () Bool)

(assert (=> b!7192781 (= e!4319331 tp!1999093)))

(assert (= (and b!7192037 ((_ is ElementMatch!18363) (reg!18692 (h!76141 (exprs!7815 setElem!53251))))) b!7192779))

(assert (= (and b!7192037 ((_ is Concat!27208) (reg!18692 (h!76141 (exprs!7815 setElem!53251))))) b!7192780))

(assert (= (and b!7192037 ((_ is Star!18363) (reg!18692 (h!76141 (exprs!7815 setElem!53251))))) b!7192781))

(assert (= (and b!7192037 ((_ is Union!18363) (reg!18692 (h!76141 (exprs!7815 setElem!53251))))) b!7192782))

(declare-fun b!7192786 () Bool)

(declare-fun e!4319332 () Bool)

(declare-fun tp!1999097 () Bool)

(declare-fun tp!1999094 () Bool)

(assert (=> b!7192786 (= e!4319332 (and tp!1999097 tp!1999094))))

(declare-fun b!7192784 () Bool)

(declare-fun tp!1999096 () Bool)

(declare-fun tp!1999095 () Bool)

(assert (=> b!7192784 (= e!4319332 (and tp!1999096 tp!1999095))))

(assert (=> b!7192024 (= tp!1998652 e!4319332)))

(declare-fun b!7192783 () Bool)

(assert (=> b!7192783 (= e!4319332 tp_is_empty!46287)))

(declare-fun b!7192785 () Bool)

(declare-fun tp!1999098 () Bool)

(assert (=> b!7192785 (= e!4319332 tp!1999098)))

(assert (= (and b!7192024 ((_ is ElementMatch!18363) (regOne!37238 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192783))

(assert (= (and b!7192024 ((_ is Concat!27208) (regOne!37238 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192784))

(assert (= (and b!7192024 ((_ is Star!18363) (regOne!37238 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192785))

(assert (= (and b!7192024 ((_ is Union!18363) (regOne!37238 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192786))

(declare-fun b!7192790 () Bool)

(declare-fun e!4319333 () Bool)

(declare-fun tp!1999102 () Bool)

(declare-fun tp!1999099 () Bool)

(assert (=> b!7192790 (= e!4319333 (and tp!1999102 tp!1999099))))

(declare-fun b!7192788 () Bool)

(declare-fun tp!1999101 () Bool)

(declare-fun tp!1999100 () Bool)

(assert (=> b!7192788 (= e!4319333 (and tp!1999101 tp!1999100))))

(assert (=> b!7192024 (= tp!1998650 e!4319333)))

(declare-fun b!7192787 () Bool)

(assert (=> b!7192787 (= e!4319333 tp_is_empty!46287)))

(declare-fun b!7192789 () Bool)

(declare-fun tp!1999103 () Bool)

(assert (=> b!7192789 (= e!4319333 tp!1999103)))

(assert (= (and b!7192024 ((_ is ElementMatch!18363) (regTwo!37238 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192787))

(assert (= (and b!7192024 ((_ is Concat!27208) (regTwo!37238 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192788))

(assert (= (and b!7192024 ((_ is Star!18363) (regTwo!37238 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192789))

(assert (= (and b!7192024 ((_ is Union!18363) (regTwo!37238 (regOne!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192790))

(declare-fun b!7192791 () Bool)

(declare-fun e!4319334 () Bool)

(declare-fun tp!1999104 () Bool)

(declare-fun tp!1999105 () Bool)

(assert (=> b!7192791 (= e!4319334 (and tp!1999104 tp!1999105))))

(assert (=> b!7191873 (= tp!1998563 e!4319334)))

(assert (= (and b!7191873 ((_ is Cons!69693) (exprs!7815 (h!76143 res!2928144)))) b!7192791))

(declare-fun b!7192795 () Bool)

(declare-fun e!4319335 () Bool)

(declare-fun tp!1999109 () Bool)

(declare-fun tp!1999106 () Bool)

(assert (=> b!7192795 (= e!4319335 (and tp!1999109 tp!1999106))))

(declare-fun b!7192793 () Bool)

(declare-fun tp!1999108 () Bool)

(declare-fun tp!1999107 () Bool)

(assert (=> b!7192793 (= e!4319335 (and tp!1999108 tp!1999107))))

(assert (=> b!7191958 (= tp!1998578 e!4319335)))

(declare-fun b!7192792 () Bool)

(assert (=> b!7192792 (= e!4319335 tp_is_empty!46287)))

(declare-fun b!7192794 () Bool)

(declare-fun tp!1999110 () Bool)

(assert (=> b!7192794 (= e!4319335 tp!1999110)))

(assert (= (and b!7191958 ((_ is ElementMatch!18363) (regOne!37239 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192792))

(assert (= (and b!7191958 ((_ is Concat!27208) (regOne!37239 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192793))

(assert (= (and b!7191958 ((_ is Star!18363) (regOne!37239 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192794))

(assert (= (and b!7191958 ((_ is Union!18363) (regOne!37239 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192795))

(declare-fun b!7192799 () Bool)

(declare-fun e!4319336 () Bool)

(declare-fun tp!1999114 () Bool)

(declare-fun tp!1999111 () Bool)

(assert (=> b!7192799 (= e!4319336 (and tp!1999114 tp!1999111))))

(declare-fun b!7192797 () Bool)

(declare-fun tp!1999113 () Bool)

(declare-fun tp!1999112 () Bool)

(assert (=> b!7192797 (= e!4319336 (and tp!1999113 tp!1999112))))

(assert (=> b!7191958 (= tp!1998575 e!4319336)))

(declare-fun b!7192796 () Bool)

(assert (=> b!7192796 (= e!4319336 tp_is_empty!46287)))

(declare-fun b!7192798 () Bool)

(declare-fun tp!1999115 () Bool)

(assert (=> b!7192798 (= e!4319336 tp!1999115)))

(assert (= (and b!7191958 ((_ is ElementMatch!18363) (regTwo!37239 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192796))

(assert (= (and b!7191958 ((_ is Concat!27208) (regTwo!37239 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192797))

(assert (= (and b!7191958 ((_ is Star!18363) (regTwo!37239 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192798))

(assert (= (and b!7191958 ((_ is Union!18363) (regTwo!37239 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192799))

(declare-fun b!7192803 () Bool)

(declare-fun e!4319337 () Bool)

(declare-fun tp!1999119 () Bool)

(declare-fun tp!1999116 () Bool)

(assert (=> b!7192803 (= e!4319337 (and tp!1999119 tp!1999116))))

(declare-fun b!7192801 () Bool)

(declare-fun tp!1999118 () Bool)

(declare-fun tp!1999117 () Bool)

(assert (=> b!7192801 (= e!4319337 (and tp!1999118 tp!1999117))))

(assert (=> b!7192032 (= tp!1998661 e!4319337)))

(declare-fun b!7192800 () Bool)

(assert (=> b!7192800 (= e!4319337 tp_is_empty!46287)))

(declare-fun b!7192802 () Bool)

(declare-fun tp!1999120 () Bool)

(assert (=> b!7192802 (= e!4319337 tp!1999120)))

(assert (= (and b!7192032 ((_ is ElementMatch!18363) (regOne!37239 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192800))

(assert (= (and b!7192032 ((_ is Concat!27208) (regOne!37239 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192801))

(assert (= (and b!7192032 ((_ is Star!18363) (regOne!37239 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192802))

(assert (= (and b!7192032 ((_ is Union!18363) (regOne!37239 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192803))

(declare-fun b!7192807 () Bool)

(declare-fun e!4319338 () Bool)

(declare-fun tp!1999124 () Bool)

(declare-fun tp!1999121 () Bool)

(assert (=> b!7192807 (= e!4319338 (and tp!1999124 tp!1999121))))

(declare-fun b!7192805 () Bool)

(declare-fun tp!1999123 () Bool)

(declare-fun tp!1999122 () Bool)

(assert (=> b!7192805 (= e!4319338 (and tp!1999123 tp!1999122))))

(assert (=> b!7192032 (= tp!1998657 e!4319338)))

(declare-fun b!7192804 () Bool)

(assert (=> b!7192804 (= e!4319338 tp_is_empty!46287)))

(declare-fun b!7192806 () Bool)

(declare-fun tp!1999125 () Bool)

(assert (=> b!7192806 (= e!4319338 tp!1999125)))

(assert (= (and b!7192032 ((_ is ElementMatch!18363) (regTwo!37239 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192804))

(assert (= (and b!7192032 ((_ is Concat!27208) (regTwo!37239 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192805))

(assert (= (and b!7192032 ((_ is Star!18363) (regTwo!37239 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192806))

(assert (= (and b!7192032 ((_ is Union!18363) (regTwo!37239 (regTwo!37239 (h!76141 (exprs!7815 empty!2999)))))) b!7192807))

(declare-fun b!7192811 () Bool)

(declare-fun e!4319339 () Bool)

(declare-fun tp!1999129 () Bool)

(declare-fun tp!1999126 () Bool)

(assert (=> b!7192811 (= e!4319339 (and tp!1999129 tp!1999126))))

(declare-fun b!7192809 () Bool)

(declare-fun tp!1999128 () Bool)

(declare-fun tp!1999127 () Bool)

(assert (=> b!7192809 (= e!4319339 (and tp!1999128 tp!1999127))))

(assert (=> b!7191995 (= tp!1998614 e!4319339)))

(declare-fun b!7192808 () Bool)

(assert (=> b!7192808 (= e!4319339 tp_is_empty!46287)))

(declare-fun b!7192810 () Bool)

(declare-fun tp!1999130 () Bool)

(assert (=> b!7192810 (= e!4319339 tp!1999130)))

(assert (= (and b!7191995 ((_ is ElementMatch!18363) (reg!18692 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192808))

(assert (= (and b!7191995 ((_ is Concat!27208) (reg!18692 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192809))

(assert (= (and b!7191995 ((_ is Star!18363) (reg!18692 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192810))

(assert (= (and b!7191995 ((_ is Union!18363) (reg!18692 (regOne!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192811))

(declare-fun b!7192815 () Bool)

(declare-fun e!4319340 () Bool)

(declare-fun tp!1999134 () Bool)

(declare-fun tp!1999131 () Bool)

(assert (=> b!7192815 (= e!4319340 (and tp!1999134 tp!1999131))))

(declare-fun b!7192813 () Bool)

(declare-fun tp!1999133 () Bool)

(declare-fun tp!1999132 () Bool)

(assert (=> b!7192813 (= e!4319340 (and tp!1999133 tp!1999132))))

(assert (=> b!7191956 (= tp!1998577 e!4319340)))

(declare-fun b!7192812 () Bool)

(assert (=> b!7192812 (= e!4319340 tp_is_empty!46287)))

(declare-fun b!7192814 () Bool)

(declare-fun tp!1999135 () Bool)

(assert (=> b!7192814 (= e!4319340 tp!1999135)))

(assert (= (and b!7191956 ((_ is ElementMatch!18363) (regOne!37238 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192812))

(assert (= (and b!7191956 ((_ is Concat!27208) (regOne!37238 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192813))

(assert (= (and b!7191956 ((_ is Star!18363) (regOne!37238 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192814))

(assert (= (and b!7191956 ((_ is Union!18363) (regOne!37238 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192815))

(declare-fun b!7192819 () Bool)

(declare-fun e!4319341 () Bool)

(declare-fun tp!1999139 () Bool)

(declare-fun tp!1999136 () Bool)

(assert (=> b!7192819 (= e!4319341 (and tp!1999139 tp!1999136))))

(declare-fun b!7192817 () Bool)

(declare-fun tp!1999138 () Bool)

(declare-fun tp!1999137 () Bool)

(assert (=> b!7192817 (= e!4319341 (and tp!1999138 tp!1999137))))

(assert (=> b!7191956 (= tp!1998576 e!4319341)))

(declare-fun b!7192816 () Bool)

(assert (=> b!7192816 (= e!4319341 tp_is_empty!46287)))

(declare-fun b!7192818 () Bool)

(declare-fun tp!1999140 () Bool)

(assert (=> b!7192818 (= e!4319341 tp!1999140)))

(assert (= (and b!7191956 ((_ is ElementMatch!18363) (regTwo!37238 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192816))

(assert (= (and b!7191956 ((_ is Concat!27208) (regTwo!37238 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192817))

(assert (= (and b!7191956 ((_ is Star!18363) (regTwo!37238 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192818))

(assert (= (and b!7191956 ((_ is Union!18363) (regTwo!37238 (reg!18692 (h!76141 (exprs!7815 setElem!53245)))))) b!7192819))

(declare-fun b!7192820 () Bool)

(declare-fun e!4319342 () Bool)

(declare-fun tp!1999141 () Bool)

(declare-fun tp!1999142 () Bool)

(assert (=> b!7192820 (= e!4319342 (and tp!1999141 tp!1999142))))

(assert (=> b!7192009 (= tp!1998630 e!4319342)))

(assert (= (and b!7192009 ((_ is Cons!69693) (exprs!7815 setElem!53263))) b!7192820))

(declare-fun b!7192824 () Bool)

(declare-fun e!4319343 () Bool)

(declare-fun tp!1999146 () Bool)

(declare-fun tp!1999143 () Bool)

(assert (=> b!7192824 (= e!4319343 (and tp!1999146 tp!1999143))))

(declare-fun b!7192822 () Bool)

(declare-fun tp!1999145 () Bool)

(declare-fun tp!1999144 () Bool)

(assert (=> b!7192822 (= e!4319343 (and tp!1999145 tp!1999144))))

(assert (=> b!7192004 (= tp!1998623 e!4319343)))

(declare-fun b!7192821 () Bool)

(assert (=> b!7192821 (= e!4319343 tp_is_empty!46287)))

(declare-fun b!7192823 () Bool)

(declare-fun tp!1999147 () Bool)

(assert (=> b!7192823 (= e!4319343 tp!1999147)))

(assert (= (and b!7192004 ((_ is ElementMatch!18363) (regOne!37239 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192821))

(assert (= (and b!7192004 ((_ is Concat!27208) (regOne!37239 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192822))

(assert (= (and b!7192004 ((_ is Star!18363) (regOne!37239 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192823))

(assert (= (and b!7192004 ((_ is Union!18363) (regOne!37239 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192824))

(declare-fun b!7192828 () Bool)

(declare-fun e!4319344 () Bool)

(declare-fun tp!1999151 () Bool)

(declare-fun tp!1999148 () Bool)

(assert (=> b!7192828 (= e!4319344 (and tp!1999151 tp!1999148))))

(declare-fun b!7192826 () Bool)

(declare-fun tp!1999150 () Bool)

(declare-fun tp!1999149 () Bool)

(assert (=> b!7192826 (= e!4319344 (and tp!1999150 tp!1999149))))

(assert (=> b!7192004 (= tp!1998620 e!4319344)))

(declare-fun b!7192825 () Bool)

(assert (=> b!7192825 (= e!4319344 tp_is_empty!46287)))

(declare-fun b!7192827 () Bool)

(declare-fun tp!1999152 () Bool)

(assert (=> b!7192827 (= e!4319344 tp!1999152)))

(assert (= (and b!7192004 ((_ is ElementMatch!18363) (regTwo!37239 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192825))

(assert (= (and b!7192004 ((_ is Concat!27208) (regTwo!37239 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192826))

(assert (= (and b!7192004 ((_ is Star!18363) (regTwo!37239 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192827))

(assert (= (and b!7192004 ((_ is Union!18363) (regTwo!37239 (regTwo!37238 (h!76141 (exprs!7815 setElem!53245)))))) b!7192828))

(declare-fun b!7192832 () Bool)

(declare-fun e!4319345 () Bool)

(declare-fun tp!1999156 () Bool)

(declare-fun tp!1999153 () Bool)

(assert (=> b!7192832 (= e!4319345 (and tp!1999156 tp!1999153))))

(declare-fun b!7192830 () Bool)

(declare-fun tp!1999155 () Bool)

(declare-fun tp!1999154 () Bool)

(assert (=> b!7192830 (= e!4319345 (and tp!1999155 tp!1999154))))

(assert (=> b!7191961 (= tp!1998584 e!4319345)))

(declare-fun b!7192829 () Bool)

(assert (=> b!7192829 (= e!4319345 tp_is_empty!46287)))

(declare-fun b!7192831 () Bool)

(declare-fun tp!1999157 () Bool)

(assert (=> b!7192831 (= e!4319345 tp!1999157)))

(assert (= (and b!7191961 ((_ is ElementMatch!18363) (h!76141 (exprs!7815 setElem!53259)))) b!7192829))

(assert (= (and b!7191961 ((_ is Concat!27208) (h!76141 (exprs!7815 setElem!53259)))) b!7192830))

(assert (= (and b!7191961 ((_ is Star!18363) (h!76141 (exprs!7815 setElem!53259)))) b!7192831))

(assert (= (and b!7191961 ((_ is Union!18363) (h!76141 (exprs!7815 setElem!53259)))) b!7192832))

(declare-fun b!7192833 () Bool)

(declare-fun e!4319346 () Bool)

(declare-fun tp!1999158 () Bool)

(declare-fun tp!1999159 () Bool)

(assert (=> b!7192833 (= e!4319346 (and tp!1999158 tp!1999159))))

(assert (=> b!7191961 (= tp!1998585 e!4319346)))

(assert (= (and b!7191961 ((_ is Cons!69693) (t!383840 (exprs!7815 setElem!53259)))) b!7192833))

(declare-fun b_lambda!275677 () Bool)

(assert (= b_lambda!275651 (or d!2240296 b_lambda!275677)))

(declare-fun bs!1900040 () Bool)

(declare-fun d!2240680 () Bool)

(assert (= bs!1900040 (and d!2240680 d!2240296)))

(assert (=> bs!1900040 (= (dynLambda!28388 lambda!437903 (h!76141 lt!2571269)) (validRegex!9478 (h!76141 lt!2571269)))))

(declare-fun m!7887634 () Bool)

(assert (=> bs!1900040 m!7887634))

(assert (=> b!7192211 d!2240680))

(declare-fun b_lambda!275679 () Bool)

(assert (= b_lambda!275665 (or d!2240254 b_lambda!275679)))

(declare-fun bs!1900041 () Bool)

(declare-fun d!2240682 () Bool)

(assert (= bs!1900041 (and d!2240682 d!2240254)))

(assert (=> bs!1900041 (= (dynLambda!28388 lambda!437893 (h!76141 (exprs!7815 setElem!53259))) (validRegex!9478 (h!76141 (exprs!7815 setElem!53259))))))

(declare-fun m!7887636 () Bool)

(assert (=> bs!1900041 m!7887636))

(assert (=> b!7192338 d!2240682))

(declare-fun b_lambda!275681 () Bool)

(assert (= b_lambda!275673 (or d!2240278 b_lambda!275681)))

(declare-fun bs!1900042 () Bool)

(declare-fun d!2240684 () Bool)

(assert (= bs!1900042 (and d!2240684 d!2240278)))

(assert (=> bs!1900042 (= (dynLambda!28388 lambda!437897 (h!76141 (exprs!7815 _$3!486))) (validRegex!9478 (h!76141 (exprs!7815 _$3!486))))))

(declare-fun m!7887638 () Bool)

(assert (=> bs!1900042 m!7887638))

(assert (=> b!7192443 d!2240684))

(declare-fun b_lambda!275683 () Bool)

(assert (= b_lambda!275667 (or d!2240334 b_lambda!275683)))

(declare-fun bs!1900043 () Bool)

(declare-fun d!2240686 () Bool)

(assert (= bs!1900043 (and d!2240686 d!2240334)))

(assert (=> bs!1900043 (= (dynLambda!28388 lambda!437905 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))) (validRegex!9478 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(declare-fun m!7887640 () Bool)

(assert (=> bs!1900043 m!7887640))

(assert (=> b!7192391 d!2240686))

(declare-fun b_lambda!275685 () Bool)

(assert (= b_lambda!275669 (or d!2240078 b_lambda!275685)))

(declare-fun bs!1900044 () Bool)

(declare-fun d!2240688 () Bool)

(assert (= bs!1900044 (and d!2240688 d!2240078)))

(assert (=> bs!1900044 (= (dynLambda!28388 lambda!437864 (h!76141 (t!383840 (t!383840 (exprs!7815 empty!2999))))) (validRegex!9478 (h!76141 (t!383840 (t!383840 (exprs!7815 empty!2999))))))))

(declare-fun m!7887642 () Bool)

(assert (=> bs!1900044 m!7887642))

(assert (=> b!7192415 d!2240688))

(declare-fun b_lambda!275687 () Bool)

(assert (= b_lambda!275645 (or d!2240360 b_lambda!275687)))

(declare-fun bs!1900045 () Bool)

(declare-fun d!2240690 () Bool)

(assert (= bs!1900045 (and d!2240690 d!2240360)))

(assert (=> bs!1900045 (= (dynLambda!28388 lambda!437910 (h!76141 (exprs!7815 (h!76143 res!2927981)))) (validRegex!9478 (h!76141 (exprs!7815 (h!76143 res!2927981)))))))

(declare-fun m!7887644 () Bool)

(assert (=> bs!1900045 m!7887644))

(assert (=> b!7192144 d!2240690))

(declare-fun b_lambda!275689 () Bool)

(assert (= b_lambda!275649 (or d!2240148 b_lambda!275689)))

(declare-fun bs!1900046 () Bool)

(declare-fun d!2240692 () Bool)

(assert (= bs!1900046 (and d!2240692 d!2240148)))

(assert (=> bs!1900046 (= (dynLambda!28388 lambda!437884 (h!76141 (t!383840 lt!2571259))) (validRegex!9478 (h!76141 (t!383840 lt!2571259))))))

(declare-fun m!7887646 () Bool)

(assert (=> bs!1900046 m!7887646))

(assert (=> b!7192182 d!2240692))

(declare-fun b_lambda!275691 () Bool)

(assert (= b_lambda!275655 (or d!2240310 b_lambda!275691)))

(declare-fun bs!1900047 () Bool)

(declare-fun d!2240694 () Bool)

(assert (= bs!1900047 (and d!2240694 d!2240310)))

(assert (=> bs!1900047 (= (dynLambda!28388 lambda!437904 (h!76141 (exprs!7815 (h!76143 res!2927985)))) (validRegex!9478 (h!76141 (exprs!7815 (h!76143 res!2927985)))))))

(declare-fun m!7887648 () Bool)

(assert (=> bs!1900047 m!7887648))

(assert (=> b!7192215 d!2240694))

(declare-fun b_lambda!275693 () Bool)

(assert (= b_lambda!275659 (or d!2240088 b_lambda!275693)))

(declare-fun bs!1900048 () Bool)

(declare-fun d!2240696 () Bool)

(assert (= bs!1900048 (and d!2240696 d!2240088)))

(assert (=> bs!1900048 (= (dynLambda!28388 lambda!437865 (h!76141 (t!383840 (t!383840 (exprs!7815 setElem!53245))))) (validRegex!9478 (h!76141 (t!383840 (t!383840 (exprs!7815 setElem!53245))))))))

(declare-fun m!7887650 () Bool)

(assert (=> bs!1900048 m!7887650))

(assert (=> b!7192229 d!2240696))

(declare-fun b_lambda!275695 () Bool)

(assert (= b_lambda!275675 (or d!2240162 b_lambda!275695)))

(declare-fun bs!1900049 () Bool)

(declare-fun d!2240698 () Bool)

(assert (= bs!1900049 (and d!2240698 d!2240162)))

(assert (=> bs!1900049 (= (dynLambda!28389 lambda!437887 (h!76143 (t!383842 (toList!11306 z!3530)))) (not (dynLambda!28389 lambda!437845 (h!76143 (t!383842 (toList!11306 z!3530))))))))

(declare-fun b_lambda!275711 () Bool)

(assert (=> (not b_lambda!275711) (not bs!1900049)))

(declare-fun m!7887652 () Bool)

(assert (=> bs!1900049 m!7887652))

(assert (=> b!7192447 d!2240698))

(declare-fun b_lambda!275697 () Bool)

(assert (= b_lambda!275661 (or d!2240262 b_lambda!275697)))

(declare-fun bs!1900050 () Bool)

(declare-fun d!2240700 () Bool)

(assert (= bs!1900050 (and d!2240700 d!2240262)))

(assert (=> bs!1900050 (= (dynLambda!28388 lambda!437895 (h!76141 (exprs!7815 setElem!53258))) (validRegex!9478 (h!76141 (exprs!7815 setElem!53258))))))

(declare-fun m!7887654 () Bool)

(assert (=> bs!1900050 m!7887654))

(assert (=> b!7192301 d!2240700))

(declare-fun b_lambda!275699 () Bool)

(assert (= b_lambda!275643 (or d!2240392 b_lambda!275699)))

(declare-fun bs!1900051 () Bool)

(declare-fun d!2240702 () Bool)

(assert (= bs!1900051 (and d!2240702 d!2240392)))

(assert (=> bs!1900051 (= (dynLambda!28388 lambda!437915 (h!76141 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))) (validRegex!9478 (h!76141 (unfocusZipperList!2336 (toList!11306 (store ((as const (Array Context!14630 Bool)) false) (Context!14631 (Cons!69693 EmptyExpr!18363 Nil!69693)) true))))))))

(declare-fun m!7887656 () Bool)

(assert (=> bs!1900051 m!7887656))

(assert (=> b!7192142 d!2240702))

(declare-fun b_lambda!275701 () Bool)

(assert (= b_lambda!275647 (or d!2240284 b_lambda!275701)))

(declare-fun bs!1900052 () Bool)

(declare-fun d!2240704 () Bool)

(assert (= bs!1900052 (and d!2240704 d!2240284)))

(assert (=> bs!1900052 (= (dynLambda!28388 lambda!437902 (h!76141 (exprs!7815 (h!76143 (toList!11306 z!3530))))) (validRegex!9478 (h!76141 (exprs!7815 (h!76143 (toList!11306 z!3530))))))))

(declare-fun m!7887658 () Bool)

(assert (=> bs!1900052 m!7887658))

(assert (=> b!7192180 d!2240704))

(declare-fun b_lambda!275703 () Bool)

(assert (= b_lambda!275663 (or d!2240146 b_lambda!275703)))

(declare-fun bs!1900053 () Bool)

(declare-fun d!2240706 () Bool)

(assert (= bs!1900053 (and d!2240706 d!2240146)))

(assert (=> bs!1900053 (= (dynLambda!28388 lambda!437881 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))) (validRegex!9478 (h!76141 (t!383840 (unfocusZipperList!2336 (toList!11306 z!3530))))))))

(assert (=> bs!1900053 m!7887640))

(assert (=> b!7192303 d!2240706))

(declare-fun b_lambda!275705 () Bool)

(assert (= b_lambda!275657 (or d!2240266 b_lambda!275705)))

(declare-fun bs!1900054 () Bool)

(declare-fun d!2240708 () Bool)

(assert (= bs!1900054 (and d!2240708 d!2240266)))

(assert (=> bs!1900054 (= (dynLambda!28389 lambda!437896 (h!76143 (toList!11306 z!3530))) (not (dynLambda!28389 lambda!437861 (h!76143 (toList!11306 z!3530)))))))

(declare-fun b_lambda!275713 () Bool)

(assert (=> (not b_lambda!275713) (not bs!1900054)))

(declare-fun m!7887660 () Bool)

(assert (=> bs!1900054 m!7887660))

(assert (=> b!7192217 d!2240708))

(declare-fun b_lambda!275707 () Bool)

(assert (= b_lambda!275671 (or d!2240400 b_lambda!275707)))

(declare-fun bs!1900055 () Bool)

(declare-fun d!2240710 () Bool)

(assert (= bs!1900055 (and d!2240710 d!2240400)))

(assert (=> bs!1900055 (= (dynLambda!28388 lambda!437916 (h!76141 lt!2571286)) (validRegex!9478 (h!76141 lt!2571286)))))

(declare-fun m!7887662 () Bool)

(assert (=> bs!1900055 m!7887662))

(assert (=> b!7192421 d!2240710))

(declare-fun b_lambda!275709 () Bool)

(assert (= b_lambda!275653 (or d!2240170 b_lambda!275709)))

(declare-fun bs!1900056 () Bool)

(declare-fun d!2240712 () Bool)

(assert (= bs!1900056 (and d!2240712 d!2240170)))

(assert (=> bs!1900056 (= (dynLambda!28388 lambda!437888 (h!76141 (t!383840 (exprs!7815 setElem!53251)))) (validRegex!9478 (h!76141 (t!383840 (exprs!7815 setElem!53251)))))))

(declare-fun m!7887664 () Bool)

(assert (=> bs!1900056 m!7887664))

(assert (=> b!7192213 d!2240712))

(check-sat (not b!7192153) (not b!7192605) (not b!7192618) (not b!7192674) (not b!7192680) (not b!7192154) (not d!2240480) (not bm!655851) (not b!7192584) (not b!7192689) (not b!7192608) (not bm!655804) (not b!7192464) (not b!7192745) (not b!7192695) (not bm!655770) (not bm!655843) (not b!7192170) (not b!7192665) (not b_lambda!275695) (not b!7192754) (not bm!655763) (not b!7192721) (not b!7192495) (not bm!655762) (not b!7192636) (not b_lambda!275713) (not b!7192654) (not b!7192819) (not b!7192769) (not b!7192475) (not d!2240520) (not b!7192699) (not b!7192567) (not b!7192650) (not bm!655790) (not b!7192616) (not b!7192826) (not bm!655774) (not b!7192143) (not bs!1900043) (not b!7192734) (not bm!655789) (not b!7192622) (not b!7192738) (not b!7192791) (not b_lambda!275687) (not b!7192536) (not b!7192750) (not bm!655810) (not b!7192279) (not b!7192271) (not b!7192547) (not b!7192627) (not b!7192817) (not b!7192176) (not b!7192644) (not bm!655848) (not b!7192631) (not b!7192646) (not b!7192823) (not b!7192359) (not b!7192574) (not b!7192577) (not b_lambda!275585) (not b!7192439) (not b!7192265) (not b!7192781) (not d!2240548) (not b!7192369) (not b!7192660) (not setNonEmpty!53268) (not b!7192589) (not bm!655767) (not b!7192742) (not b!7192682) (not b!7192766) tp_is_empty!46287 (not b_lambda!275583) (not b!7192770) (not b!7192780) (not b!7192489) (not b!7192736) (not b!7192778) (not b_lambda!275677) (not bm!655775) (not b!7192325) (not b!7192752) (not b!7192155) (not d!2240634) (not b!7192159) (not d!2240540) (not b!7192833) (not b!7192339) (not b!7192448) (not b!7192596) (not bm!655838) (not b!7192524) (not b!7192123) (not b!7192635) (not setNonEmpty!53267) (not b!7192556) (not b_lambda!275703) (not b!7192214) (not b!7192685) (not b!7192288) (not b!7192420) (not b!7192157) (not b!7192711) (not b!7192418) (not b!7192696) (not bm!655833) (not b!7192581) (not b!7192681) (not b!7192121) (not bs!1900050) (not bm!655756) (not bm!655861) (not bm!655830) (not b!7192737) (not b!7192803) (not b!7192651) (not b!7192720) (not b!7192648) (not b!7192267) (not b_lambda!275711) (not b!7192634) (not b!7192146) (not bs!1900052) (not bm!655795) (not b!7192659) (not b!7192223) (not bm!655780) (not b!7192790) (not b!7192789) (not b_lambda!275705) (not bm!655824) (not b!7192534) (not b!7192818) (not b!7192228) (not b!7192433) (not b!7192773) (not b!7192138) (not b!7192676) (not b!7192250) (not b!7192747) (not b!7192521) (not b!7192628) (not b!7192652) (not b!7192732) (not b_lambda!275691) (not b!7192669) (not b!7192519) (not d!2240590) (not b!7192694) (not b!7192269) (not bm!655834) (not b!7192746) (not b!7192713) (not bm!655854) (not b!7192230) (not d!2240550) (not b!7192715) (not b_lambda!275701) (not b_lambda!275615) (not bm!655798) (not b!7192189) (not b!7192716) (not b!7192535) (not b!7192302) (not b!7192704) (not b!7192129) (not b!7192795) (not bm!655754) (not b!7192799) (not b!7192396) (not b!7192782) (not b!7192411) (not b!7192794) (not b!7192638) (not b!7192549) (not b!7192768) (not b!7192751) (not b!7192553) (not b!7192264) (not b!7192709) (not b!7192688) (not b!7192657) (not b!7192813) (not d!2240448) (not b!7192461) (not b!7192802) (not b!7192560) (not b!7192828) (not b!7192784) (not b!7192231) (not b!7192672) (not b!7192615) (not b_lambda!275681) (not d!2240636) (not bm!655820) (not bm!655755) (not b!7192728) (not b!7192225) (not b!7192725) (not d!2240606) (not b!7192181) (not b!7192701) (not b!7192703) (not b!7192297) (not d!2240526) (not b!7192569) (not b!7192621) (not bm!655863) (not b!7192786) (not bm!655799) (not b!7192642) (not bm!655828) (not b_lambda!275639) (not b!7192218) (not b!7192578) (not b!7192459) (not b!7192539) (not d!2240458) (not b!7192465) (not b!7192712) (not b!7192147) (not d!2240494) (not b!7192797) (not bs!1900041) (not b!7192266) (not b!7192612) (not b!7192592) (not b!7192749) (not bs!1900040) (not bm!655850) (not bs!1900055) (not b!7192763) (not b!7192503) (not bs!1900056) (not bm!655768) (not bm!655757) (not b!7192727) (not b!7192469) (not b_lambda!275619) (not b!7192580) (not d!2240460) (not bm!655788) (not b!7192827) (not b!7192158) (not bm!655803) (not b!7192759) (not b!7192376) (not b!7192564) (not d!2240470) (not b!7192526) (not b!7192483) (not bm!655822) (not b!7192684) (not b!7192690) (not b!7192604) (not b_lambda!275617) (not b!7192764) (not bm!655779) (not b!7192392) (not d!2240660) (not bm!655759) (not bm!655813) (not b!7192317) (not b!7192444) (not b_lambda!275613) (not b!7192270) (not b!7192822) (not bm!655807) (not b!7192520) (not b!7192739) (not b!7192607) (not d!2240500) (not b!7192205) (not b!7192387) (not bm!655787) (not b!7192586) (not b!7192446) (not b!7192222) (not b!7192630) (not d!2240612) (not b!7192686) (not bm!655842) (not b!7192573) (not b!7192206) (not b!7192402) (not b!7192708) (not b!7192611) (not b!7192561) (not b!7192559) (not b!7192601) (not b!7192597) (not b!7192576) (not b!7192546) (not b!7192490) (not bm!655855) (not b!7192493) (not d!2240524) (not d!2240664) (not d!2240492) (not d!2240544) (not b!7192116) (not bs!1900048) (not bm!655793) (not b_lambda!275707) (not b!7192668) (not b!7192673) (not b!7192647) (not b!7192698) (not b!7192571) (not b!7192678) (not b!7192494) (not b!7192540) (not b!7192661) (not b!7192756) (not b!7192692) (not b!7192538) (not bm!655760) (not b!7192149) (not b!7192467) (not bs!1900046) (not b!7192639) (not b!7192463) (not b!7192212) (not d!2240582) (not b_lambda!275693) (not b!7192249) (not b!7192801) (not b!7192729) (not b!7192643) (not d!2240566) (not b!7192656) (not b!7192479) (not b!7192238) (not b!7192572) (not d!2240624) (not bm!655812) (not b!7192609) (not b!7192600) (not b!7192691) (not b!7192419) (not b!7192416) (not bm!655827) (not b!7192793) (not b!7192523) (not bs!1900045) (not b!7192723) (not b!7192485) (not b_lambda!275709) (not bm!655806) (not b!7192664) (not b!7192807) (not b!7192717) (not b!7192319) (not bs!1900051) (not b!7192183) (not d!2240672) (not d!2240510) (not b!7192724) (not b!7192466) (not bm!655821) (not b!7192705) (not b_lambda!275689) (not b!7192544) (not b!7192548) (not b!7192776) (not bs!1900047) (not b_lambda!275683) (not bm!655841) (not b_lambda!275697) (not b_lambda!275611) (not b!7192145) (not b!7192394) (not b!7192216) (not b!7192755) (not b!7192220) (not bm!655792) (not b!7192777) (not b!7192632) (not b!7192306) (not d!2240674) (not b!7192810) (not b!7192496) (not bm!655839) (not bm!655818) (not b!7192620) (not b!7192761) (not b!7192785) (not b!7192122) (not bm!655808) (not b!7192832) (not bm!655860) (not b!7192820) (not b!7192590) (not b!7192613) (not b!7192152) (not b!7192593) (not b!7192788) (not b!7192552) (not b!7192774) (not b!7192772) (not b!7192806) (not b!7192625) (not b!7192345) (not b!7192585) (not b!7192798) (not b_lambda!275679) (not b!7192256) (not b!7192719) (not bs!1900044) (not b!7192626) (not b!7192587) (not b!7192624) (not setNonEmpty!53266) (not b!7192304) (not b!7192551) (not b!7192525) (not b!7192811) (not b!7192529) (not bm!655784) (not b!7192599) (not d!2240444) (not bm!655796) (not d!2240638) (not b!7192563) (not bm!655847) (not bm!655785) (not b!7192765) (not bm!655852) (not b!7192595) (not bm!655772) (not b!7192543) (not b!7192830) (not b!7192530) (not b!7192557) (not b!7192381) (not bm!655782) (not bm!655771) (not b!7192824) (not b!7192671) (not b!7192568) (not b!7192700) (not d!2240546) (not bm!655783) (not b!7192591) (not b!7192555) (not b!7192758) (not b!7192261) (not b!7192707) (not b!7192365) (not b!7192809) (not b!7192667) (not b!7192831) (not b!7192226) (not bm!655856) (not b!7192655) (not b!7192232) (not b!7192224) (not b!7192741) (not b!7192814) (not bm!655831) (not b!7192370) (not b!7192491) (not b!7192640) (not b!7192527) (not b!7192531) (not b!7192760) (not b!7192337) (not b!7192815) (not b!7192542) (not d!2240476) (not b!7192663) (not bs!1900053) (not b_lambda!275621) (not bm!655817) (not b!7192603) (not b_lambda!275699) (not b!7192733) (not b!7192805) (not b!7192743) (not bm!655825) (not b_lambda!275685) (not b!7192677) (not bs!1900042) (not b!7192272) (not d!2240650) (not b!7192532) (not b!7192210) (not b!7192517) (not d!2240562) (not bm!655811) (not b!7192582) (not b!7192730) (not b!7192488) (not b!7192422) (not b!7192617) (not b!7192565) (not b!7192203))
(check-sat)
