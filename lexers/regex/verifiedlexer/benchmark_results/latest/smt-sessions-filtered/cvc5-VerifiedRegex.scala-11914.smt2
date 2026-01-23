; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667760 () Bool)

(assert start!667760)

(declare-fun b!6959190 () Bool)

(declare-fun e!4184382 () Bool)

(declare-fun tp!1918553 () Bool)

(declare-fun tp!1918552 () Bool)

(assert (=> b!6959190 (= e!4184382 (and tp!1918553 tp!1918552))))

(declare-fun b!6959191 () Bool)

(declare-fun e!4184381 () Bool)

(declare-fun e!4184386 () Bool)

(assert (=> b!6959191 (= e!4184381 e!4184386)))

(declare-fun res!2839658 () Bool)

(assert (=> b!6959191 (=> res!2839658 e!4184386)))

(declare-datatypes ((C!34418 0))(
  ( (C!34419 (val!26911 Int)) )
))
(declare-datatypes ((Regex!17074 0))(
  ( (ElementMatch!17074 (c!1290438 C!34418)) (Concat!25919 (regOne!34660 Regex!17074) (regTwo!34660 Regex!17074)) (EmptyExpr!17074) (Star!17074 (reg!17403 Regex!17074)) (EmptyLang!17074) (Union!17074 (regOne!34661 Regex!17074) (regTwo!34661 Regex!17074)) )
))
(declare-datatypes ((List!66833 0))(
  ( (Nil!66709) (Cons!66709 (h!73157 Regex!17074) (t!380576 List!66833)) )
))
(declare-fun lt!2478782 () List!66833)

(declare-fun isEmpty!38936 (List!66833) Bool)

(assert (=> b!6959191 (= res!2839658 (not (isEmpty!38936 lt!2478782)))))

(declare-fun l!9142 () List!66833)

(declare-fun tail!13017 (List!66833) List!66833)

(assert (=> b!6959191 (= lt!2478782 (tail!13017 l!9142))))

(declare-fun b!6959192 () Bool)

(declare-fun e!4184384 () Bool)

(declare-fun tp_is_empty!43373 () Bool)

(declare-fun tp!1918555 () Bool)

(assert (=> b!6959192 (= e!4184384 (and tp_is_empty!43373 tp!1918555))))

(declare-fun b!6959193 () Bool)

(declare-fun e!4184383 () Bool)

(assert (=> b!6959193 (= e!4184383 (not e!4184381))))

(declare-fun res!2839659 () Bool)

(assert (=> b!6959193 (=> res!2839659 e!4184381)))

(declare-fun r!13765 () Regex!17074)

(assert (=> b!6959193 (= res!2839659 (not (is-Union!17074 r!13765)))))

(declare-datatypes ((List!66834 0))(
  ( (Nil!66710) (Cons!66710 (h!73158 C!34418) (t!380577 List!66834)) )
))
(declare-fun s!9351 () List!66834)

(declare-fun matchR!9180 (Regex!17074 List!66834) Bool)

(declare-fun matchRSpec!4095 (Regex!17074 List!66834) Bool)

(assert (=> b!6959193 (= (matchR!9180 r!13765 s!9351) (matchRSpec!4095 r!13765 s!9351))))

(declare-datatypes ((Unit!160808 0))(
  ( (Unit!160809) )
))
(declare-fun lt!2478783 () Unit!160808)

(declare-fun mainMatchTheorem!4089 (Regex!17074 List!66834) Unit!160808)

(assert (=> b!6959193 (= lt!2478783 (mainMatchTheorem!4089 r!13765 s!9351))))

(declare-fun res!2839656 () Bool)

(assert (=> start!667760 (=> (not res!2839656) (not e!4184383))))

(declare-fun lambda!397047 () Int)

(declare-fun forall!15945 (List!66833 Int) Bool)

(assert (=> start!667760 (= res!2839656 (forall!15945 l!9142 lambda!397047))))

(assert (=> start!667760 e!4184383))

(assert (=> start!667760 e!4184382))

(declare-fun e!4184385 () Bool)

(assert (=> start!667760 e!4184385))

(assert (=> start!667760 e!4184384))

(declare-fun b!6959194 () Bool)

(assert (=> b!6959194 (= e!4184385 tp_is_empty!43373)))

(declare-fun b!6959195 () Bool)

(declare-fun res!2839657 () Bool)

(assert (=> b!6959195 (=> (not res!2839657) (not e!4184383))))

(declare-fun generalisedUnion!2549 (List!66833) Regex!17074)

(assert (=> b!6959195 (= res!2839657 (= r!13765 (generalisedUnion!2549 l!9142)))))

(declare-fun b!6959196 () Bool)

(declare-fun tp!1918557 () Bool)

(declare-fun tp!1918556 () Bool)

(assert (=> b!6959196 (= e!4184385 (and tp!1918557 tp!1918556))))

(declare-fun b!6959197 () Bool)

(declare-fun res!2839655 () Bool)

(assert (=> b!6959197 (=> res!2839655 e!4184381)))

(assert (=> b!6959197 (= res!2839655 (isEmpty!38936 l!9142))))

(declare-fun b!6959198 () Bool)

(declare-fun tp!1918554 () Bool)

(assert (=> b!6959198 (= e!4184385 tp!1918554)))

(declare-fun b!6959199 () Bool)

(assert (=> b!6959199 (= e!4184386 (forall!15945 lt!2478782 lambda!397047))))

(declare-fun b!6959200 () Bool)

(declare-fun tp!1918558 () Bool)

(declare-fun tp!1918559 () Bool)

(assert (=> b!6959200 (= e!4184385 (and tp!1918558 tp!1918559))))

(assert (= (and start!667760 res!2839656) b!6959195))

(assert (= (and b!6959195 res!2839657) b!6959193))

(assert (= (and b!6959193 (not res!2839659)) b!6959197))

(assert (= (and b!6959197 (not res!2839655)) b!6959191))

(assert (= (and b!6959191 (not res!2839658)) b!6959199))

(assert (= (and start!667760 (is-Cons!66709 l!9142)) b!6959190))

(assert (= (and start!667760 (is-ElementMatch!17074 r!13765)) b!6959194))

(assert (= (and start!667760 (is-Concat!25919 r!13765)) b!6959200))

(assert (= (and start!667760 (is-Star!17074 r!13765)) b!6959198))

(assert (= (and start!667760 (is-Union!17074 r!13765)) b!6959196))

(assert (= (and start!667760 (is-Cons!66710 s!9351)) b!6959192))

(declare-fun m!7655494 () Bool)

(assert (=> b!6959193 m!7655494))

(declare-fun m!7655496 () Bool)

(assert (=> b!6959193 m!7655496))

(declare-fun m!7655498 () Bool)

(assert (=> b!6959193 m!7655498))

(declare-fun m!7655500 () Bool)

(assert (=> b!6959191 m!7655500))

(declare-fun m!7655502 () Bool)

(assert (=> b!6959191 m!7655502))

(declare-fun m!7655504 () Bool)

(assert (=> b!6959199 m!7655504))

(declare-fun m!7655506 () Bool)

(assert (=> b!6959197 m!7655506))

(declare-fun m!7655508 () Bool)

(assert (=> start!667760 m!7655508))

(declare-fun m!7655510 () Bool)

(assert (=> b!6959195 m!7655510))

(push 1)

(assert (not b!6959195))

(assert (not b!6959200))

(assert (not start!667760))

(assert (not b!6959196))

(assert (not b!6959190))

(assert (not b!6959197))

(assert tp_is_empty!43373)

(assert (not b!6959192))

(assert (not b!6959199))

(assert (not b!6959198))

(assert (not b!6959193))

(assert (not b!6959191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169871 () Bool)

(declare-fun res!2839679 () Bool)

(declare-fun e!4184409 () Bool)

(assert (=> d!2169871 (=> res!2839679 e!4184409)))

(assert (=> d!2169871 (= res!2839679 (is-Nil!66709 lt!2478782))))

(assert (=> d!2169871 (= (forall!15945 lt!2478782 lambda!397047) e!4184409)))

(declare-fun b!6959238 () Bool)

(declare-fun e!4184410 () Bool)

(assert (=> b!6959238 (= e!4184409 e!4184410)))

(declare-fun res!2839680 () Bool)

(assert (=> b!6959238 (=> (not res!2839680) (not e!4184410))))

(declare-fun dynLambda!26606 (Int Regex!17074) Bool)

(assert (=> b!6959238 (= res!2839680 (dynLambda!26606 lambda!397047 (h!73157 lt!2478782)))))

(declare-fun b!6959239 () Bool)

(assert (=> b!6959239 (= e!4184410 (forall!15945 (t!380576 lt!2478782) lambda!397047))))

(assert (= (and d!2169871 (not res!2839679)) b!6959238))

(assert (= (and b!6959238 res!2839680) b!6959239))

(declare-fun b_lambda!260529 () Bool)

(assert (=> (not b_lambda!260529) (not b!6959238)))

(declare-fun m!7655530 () Bool)

(assert (=> b!6959238 m!7655530))

(declare-fun m!7655532 () Bool)

(assert (=> b!6959239 m!7655532))

(assert (=> b!6959199 d!2169871))

(declare-fun b!6959268 () Bool)

(declare-fun res!2839699 () Bool)

(declare-fun e!4184426 () Bool)

(assert (=> b!6959268 (=> res!2839699 e!4184426)))

(declare-fun isEmpty!38938 (List!66834) Bool)

(declare-fun tail!13019 (List!66834) List!66834)

(assert (=> b!6959268 (= res!2839699 (not (isEmpty!38938 (tail!13019 s!9351))))))

(declare-fun b!6959269 () Bool)

(declare-fun res!2839703 () Bool)

(declare-fun e!4184428 () Bool)

(assert (=> b!6959269 (=> (not res!2839703) (not e!4184428))))

(declare-fun call!631930 () Bool)

(assert (=> b!6959269 (= res!2839703 (not call!631930))))

(declare-fun b!6959270 () Bool)

(declare-fun res!2839701 () Bool)

(declare-fun e!4184430 () Bool)

(assert (=> b!6959270 (=> res!2839701 e!4184430)))

(assert (=> b!6959270 (= res!2839701 (not (is-ElementMatch!17074 r!13765)))))

(declare-fun e!4184425 () Bool)

(assert (=> b!6959270 (= e!4184425 e!4184430)))

(declare-fun b!6959271 () Bool)

(declare-fun e!4184431 () Bool)

(assert (=> b!6959271 (= e!4184431 e!4184426)))

(declare-fun res!2839697 () Bool)

(assert (=> b!6959271 (=> res!2839697 e!4184426)))

(assert (=> b!6959271 (= res!2839697 call!631930)))

(declare-fun b!6959272 () Bool)

(declare-fun e!4184429 () Bool)

(declare-fun derivativeStep!5508 (Regex!17074 C!34418) Regex!17074)

(declare-fun head!13964 (List!66834) C!34418)

(assert (=> b!6959272 (= e!4184429 (matchR!9180 (derivativeStep!5508 r!13765 (head!13964 s!9351)) (tail!13019 s!9351)))))

(declare-fun b!6959273 () Bool)

(assert (=> b!6959273 (= e!4184430 e!4184431)))

(declare-fun res!2839704 () Bool)

(assert (=> b!6959273 (=> (not res!2839704) (not e!4184431))))

(declare-fun lt!2478792 () Bool)

(assert (=> b!6959273 (= res!2839704 (not lt!2478792))))

(declare-fun b!6959274 () Bool)

(assert (=> b!6959274 (= e!4184426 (not (= (head!13964 s!9351) (c!1290438 r!13765))))))

(declare-fun b!6959276 () Bool)

(declare-fun res!2839700 () Bool)

(assert (=> b!6959276 (=> (not res!2839700) (not e!4184428))))

(assert (=> b!6959276 (= res!2839700 (isEmpty!38938 (tail!13019 s!9351)))))

(declare-fun b!6959277 () Bool)

(declare-fun e!4184427 () Bool)

(assert (=> b!6959277 (= e!4184427 e!4184425)))

(declare-fun c!1290448 () Bool)

(assert (=> b!6959277 (= c!1290448 (is-EmptyLang!17074 r!13765))))

(declare-fun b!6959278 () Bool)

(assert (=> b!6959278 (= e!4184427 (= lt!2478792 call!631930))))

(declare-fun b!6959279 () Bool)

(assert (=> b!6959279 (= e!4184428 (= (head!13964 s!9351) (c!1290438 r!13765)))))

(declare-fun b!6959280 () Bool)

(assert (=> b!6959280 (= e!4184425 (not lt!2478792))))

(declare-fun b!6959281 () Bool)

(declare-fun nullable!6882 (Regex!17074) Bool)

(assert (=> b!6959281 (= e!4184429 (nullable!6882 r!13765))))

(declare-fun bm!631925 () Bool)

(assert (=> bm!631925 (= call!631930 (isEmpty!38938 s!9351))))

(declare-fun d!2169873 () Bool)

(assert (=> d!2169873 e!4184427))

(declare-fun c!1290446 () Bool)

(assert (=> d!2169873 (= c!1290446 (is-EmptyExpr!17074 r!13765))))

(assert (=> d!2169873 (= lt!2478792 e!4184429)))

(declare-fun c!1290447 () Bool)

(assert (=> d!2169873 (= c!1290447 (isEmpty!38938 s!9351))))

(declare-fun validRegex!8775 (Regex!17074) Bool)

(assert (=> d!2169873 (validRegex!8775 r!13765)))

(assert (=> d!2169873 (= (matchR!9180 r!13765 s!9351) lt!2478792)))

(declare-fun b!6959275 () Bool)

(declare-fun res!2839698 () Bool)

(assert (=> b!6959275 (=> res!2839698 e!4184430)))

(assert (=> b!6959275 (= res!2839698 e!4184428)))

(declare-fun res!2839702 () Bool)

(assert (=> b!6959275 (=> (not res!2839702) (not e!4184428))))

(assert (=> b!6959275 (= res!2839702 lt!2478792)))

(assert (= (and d!2169873 c!1290447) b!6959281))

(assert (= (and d!2169873 (not c!1290447)) b!6959272))

(assert (= (and d!2169873 c!1290446) b!6959278))

(assert (= (and d!2169873 (not c!1290446)) b!6959277))

(assert (= (and b!6959277 c!1290448) b!6959280))

(assert (= (and b!6959277 (not c!1290448)) b!6959270))

(assert (= (and b!6959270 (not res!2839701)) b!6959275))

(assert (= (and b!6959275 res!2839702) b!6959269))

(assert (= (and b!6959269 res!2839703) b!6959276))

(assert (= (and b!6959276 res!2839700) b!6959279))

(assert (= (and b!6959275 (not res!2839698)) b!6959273))

(assert (= (and b!6959273 res!2839704) b!6959271))

(assert (= (and b!6959271 (not res!2839697)) b!6959268))

(assert (= (and b!6959268 (not res!2839699)) b!6959274))

(assert (= (or b!6959278 b!6959269 b!6959271) bm!631925))

(declare-fun m!7655534 () Bool)

(assert (=> b!6959272 m!7655534))

(assert (=> b!6959272 m!7655534))

(declare-fun m!7655536 () Bool)

(assert (=> b!6959272 m!7655536))

(declare-fun m!7655538 () Bool)

(assert (=> b!6959272 m!7655538))

(assert (=> b!6959272 m!7655536))

(assert (=> b!6959272 m!7655538))

(declare-fun m!7655540 () Bool)

(assert (=> b!6959272 m!7655540))

(assert (=> b!6959279 m!7655534))

(declare-fun m!7655542 () Bool)

(assert (=> d!2169873 m!7655542))

(declare-fun m!7655544 () Bool)

(assert (=> d!2169873 m!7655544))

(assert (=> b!6959268 m!7655538))

(assert (=> b!6959268 m!7655538))

(declare-fun m!7655546 () Bool)

(assert (=> b!6959268 m!7655546))

(assert (=> bm!631925 m!7655542))

(assert (=> b!6959274 m!7655534))

(declare-fun m!7655548 () Bool)

(assert (=> b!6959281 m!7655548))

(assert (=> b!6959276 m!7655538))

(assert (=> b!6959276 m!7655538))

(assert (=> b!6959276 m!7655546))

(assert (=> b!6959193 d!2169873))

(declare-fun b!6959324 () Bool)

(assert (=> b!6959324 true))

(assert (=> b!6959324 true))

(declare-fun bs!1858263 () Bool)

(declare-fun b!6959319 () Bool)

(assert (= bs!1858263 (and b!6959319 b!6959324)))

(declare-fun lambda!397060 () Int)

(declare-fun lambda!397059 () Int)

(assert (=> bs!1858263 (not (= lambda!397060 lambda!397059))))

(assert (=> b!6959319 true))

(assert (=> b!6959319 true))

(declare-fun b!6959318 () Bool)

(declare-fun e!4184458 () Bool)

(assert (=> b!6959318 (= e!4184458 (matchRSpec!4095 (regTwo!34661 r!13765) s!9351))))

(declare-fun bm!631930 () Bool)

(declare-fun call!631935 () Bool)

(declare-fun c!1290461 () Bool)

(declare-fun Exists!4064 (Int) Bool)

(assert (=> bm!631930 (= call!631935 (Exists!4064 (ite c!1290461 lambda!397059 lambda!397060)))))

(declare-fun d!2169877 () Bool)

(declare-fun c!1290459 () Bool)

(assert (=> d!2169877 (= c!1290459 (is-EmptyExpr!17074 r!13765))))

(declare-fun e!4184460 () Bool)

(assert (=> d!2169877 (= (matchRSpec!4095 r!13765 s!9351) e!4184460)))

(declare-fun e!4184459 () Bool)

(assert (=> b!6959319 (= e!4184459 call!631935)))

(declare-fun b!6959320 () Bool)

(declare-fun c!1290462 () Bool)

(assert (=> b!6959320 (= c!1290462 (is-Union!17074 r!13765))))

(declare-fun e!4184452 () Bool)

(declare-fun e!4184456 () Bool)

(assert (=> b!6959320 (= e!4184452 e!4184456)))

(declare-fun b!6959323 () Bool)

(declare-fun c!1290460 () Bool)

(assert (=> b!6959323 (= c!1290460 (is-ElementMatch!17074 r!13765))))

(declare-fun e!4184457 () Bool)

(assert (=> b!6959323 (= e!4184457 e!4184452)))

(declare-fun e!4184455 () Bool)

(assert (=> b!6959324 (= e!4184455 call!631935)))

(declare-fun b!6959325 () Bool)

(assert (=> b!6959325 (= e!4184460 e!4184457)))

(declare-fun res!2839725 () Bool)

(assert (=> b!6959325 (= res!2839725 (not (is-EmptyLang!17074 r!13765)))))

(assert (=> b!6959325 (=> (not res!2839725) (not e!4184457))))

(declare-fun b!6959326 () Bool)

(assert (=> b!6959326 (= e!4184452 (= s!9351 (Cons!66710 (c!1290438 r!13765) Nil!66710)))))

(declare-fun b!6959327 () Bool)

(assert (=> b!6959327 (= e!4184456 e!4184459)))

(assert (=> b!6959327 (= c!1290461 (is-Star!17074 r!13765))))

(declare-fun b!6959328 () Bool)

(assert (=> b!6959328 (= e!4184456 e!4184458)))

(declare-fun res!2839724 () Bool)

(assert (=> b!6959328 (= res!2839724 (matchRSpec!4095 (regOne!34661 r!13765) s!9351))))

(assert (=> b!6959328 (=> res!2839724 e!4184458)))

(declare-fun b!6959329 () Bool)

(declare-fun call!631936 () Bool)

(assert (=> b!6959329 (= e!4184460 call!631936)))

(declare-fun b!6959330 () Bool)

(declare-fun res!2839723 () Bool)

(assert (=> b!6959330 (=> res!2839723 e!4184455)))

(assert (=> b!6959330 (= res!2839723 call!631936)))

(assert (=> b!6959330 (= e!4184459 e!4184455)))

(declare-fun bm!631931 () Bool)

(assert (=> bm!631931 (= call!631936 (isEmpty!38938 s!9351))))

(assert (= (and d!2169877 c!1290459) b!6959329))

(assert (= (and d!2169877 (not c!1290459)) b!6959325))

(assert (= (and b!6959325 res!2839725) b!6959323))

(assert (= (and b!6959323 c!1290460) b!6959326))

(assert (= (and b!6959323 (not c!1290460)) b!6959320))

(assert (= (and b!6959320 c!1290462) b!6959328))

(assert (= (and b!6959320 (not c!1290462)) b!6959327))

(assert (= (and b!6959328 (not res!2839724)) b!6959318))

(assert (= (and b!6959327 c!1290461) b!6959330))

(assert (= (and b!6959327 (not c!1290461)) b!6959319))

(assert (= (and b!6959330 (not res!2839723)) b!6959324))

(assert (= (or b!6959324 b!6959319) bm!631930))

(assert (= (or b!6959329 b!6959330) bm!631931))

(declare-fun m!7655550 () Bool)

(assert (=> b!6959318 m!7655550))

(declare-fun m!7655552 () Bool)

(assert (=> bm!631930 m!7655552))

(declare-fun m!7655554 () Bool)

(assert (=> b!6959328 m!7655554))

(assert (=> bm!631931 m!7655542))

(assert (=> b!6959193 d!2169877))

(declare-fun d!2169881 () Bool)

(assert (=> d!2169881 (= (matchR!9180 r!13765 s!9351) (matchRSpec!4095 r!13765 s!9351))))

(declare-fun lt!2478797 () Unit!160808)

(declare-fun choose!51875 (Regex!17074 List!66834) Unit!160808)

(assert (=> d!2169881 (= lt!2478797 (choose!51875 r!13765 s!9351))))

(assert (=> d!2169881 (validRegex!8775 r!13765)))

(assert (=> d!2169881 (= (mainMatchTheorem!4089 r!13765 s!9351) lt!2478797)))

(declare-fun bs!1858264 () Bool)

(assert (= bs!1858264 d!2169881))

(assert (=> bs!1858264 m!7655494))

(assert (=> bs!1858264 m!7655496))

(declare-fun m!7655556 () Bool)

(assert (=> bs!1858264 m!7655556))

(assert (=> bs!1858264 m!7655544))

(assert (=> b!6959193 d!2169881))

(declare-fun d!2169883 () Bool)

(assert (=> d!2169883 (= (isEmpty!38936 l!9142) (is-Nil!66709 l!9142))))

(assert (=> b!6959197 d!2169883))

(declare-fun d!2169885 () Bool)

(declare-fun res!2839728 () Bool)

(declare-fun e!4184469 () Bool)

(assert (=> d!2169885 (=> res!2839728 e!4184469)))

(assert (=> d!2169885 (= res!2839728 (is-Nil!66709 l!9142))))

(assert (=> d!2169885 (= (forall!15945 l!9142 lambda!397047) e!4184469)))

(declare-fun b!6959349 () Bool)

(declare-fun e!4184470 () Bool)

(assert (=> b!6959349 (= e!4184469 e!4184470)))

(declare-fun res!2839729 () Bool)

(assert (=> b!6959349 (=> (not res!2839729) (not e!4184470))))

(assert (=> b!6959349 (= res!2839729 (dynLambda!26606 lambda!397047 (h!73157 l!9142)))))

(declare-fun b!6959350 () Bool)

(assert (=> b!6959350 (= e!4184470 (forall!15945 (t!380576 l!9142) lambda!397047))))

(assert (= (and d!2169885 (not res!2839728)) b!6959349))

(assert (= (and b!6959349 res!2839729) b!6959350))

(declare-fun b_lambda!260531 () Bool)

(assert (=> (not b_lambda!260531) (not b!6959349)))

(declare-fun m!7655558 () Bool)

(assert (=> b!6959349 m!7655558))

(declare-fun m!7655560 () Bool)

(assert (=> b!6959350 m!7655560))

(assert (=> start!667760 d!2169885))

(declare-fun d!2169887 () Bool)

(assert (=> d!2169887 (= (isEmpty!38936 lt!2478782) (is-Nil!66709 lt!2478782))))

(assert (=> b!6959191 d!2169887))

(declare-fun d!2169889 () Bool)

(assert (=> d!2169889 (= (tail!13017 l!9142) (t!380576 l!9142))))

(assert (=> b!6959191 d!2169889))

(declare-fun bs!1858266 () Bool)

(declare-fun d!2169891 () Bool)

(assert (= bs!1858266 (and d!2169891 start!667760)))

(declare-fun lambda!397064 () Int)

(assert (=> bs!1858266 (= lambda!397064 lambda!397047)))

(declare-fun b!6959381 () Bool)

(declare-fun e!4184490 () Bool)

(declare-fun lt!2478801 () Regex!17074)

(declare-fun head!13965 (List!66833) Regex!17074)

(assert (=> b!6959381 (= e!4184490 (= lt!2478801 (head!13965 l!9142)))))

(declare-fun b!6959382 () Bool)

(declare-fun isUnion!1463 (Regex!17074) Bool)

(assert (=> b!6959382 (= e!4184490 (isUnion!1463 lt!2478801))))

(declare-fun b!6959383 () Bool)

(declare-fun e!4184493 () Bool)

(assert (=> b!6959383 (= e!4184493 (isEmpty!38936 (t!380576 l!9142)))))

(declare-fun b!6959384 () Bool)

(declare-fun e!4184492 () Regex!17074)

(assert (=> b!6959384 (= e!4184492 (h!73157 l!9142))))

(declare-fun b!6959385 () Bool)

(declare-fun e!4184494 () Regex!17074)

(assert (=> b!6959385 (= e!4184494 EmptyLang!17074)))

(declare-fun b!6959386 () Bool)

(declare-fun e!4184491 () Bool)

(assert (=> b!6959386 (= e!4184491 e!4184490)))

(declare-fun c!1290483 () Bool)

(assert (=> b!6959386 (= c!1290483 (isEmpty!38936 (tail!13017 l!9142)))))

(declare-fun e!4184489 () Bool)

(assert (=> d!2169891 e!4184489))

(declare-fun res!2839736 () Bool)

(assert (=> d!2169891 (=> (not res!2839736) (not e!4184489))))

(assert (=> d!2169891 (= res!2839736 (validRegex!8775 lt!2478801))))

(assert (=> d!2169891 (= lt!2478801 e!4184492)))

(declare-fun c!1290484 () Bool)

(assert (=> d!2169891 (= c!1290484 e!4184493)))

(declare-fun res!2839737 () Bool)

(assert (=> d!2169891 (=> (not res!2839737) (not e!4184493))))

(assert (=> d!2169891 (= res!2839737 (is-Cons!66709 l!9142))))

(assert (=> d!2169891 (forall!15945 l!9142 lambda!397064)))

(assert (=> d!2169891 (= (generalisedUnion!2549 l!9142) lt!2478801)))

(declare-fun b!6959387 () Bool)

(assert (=> b!6959387 (= e!4184492 e!4184494)))

(declare-fun c!1290482 () Bool)

(assert (=> b!6959387 (= c!1290482 (is-Cons!66709 l!9142))))

(declare-fun b!6959388 () Bool)

(assert (=> b!6959388 (= e!4184494 (Union!17074 (h!73157 l!9142) (generalisedUnion!2549 (t!380576 l!9142))))))

(declare-fun b!6959389 () Bool)

(declare-fun isEmptyLang!2035 (Regex!17074) Bool)

(assert (=> b!6959389 (= e!4184491 (isEmptyLang!2035 lt!2478801))))

(declare-fun b!6959390 () Bool)

(assert (=> b!6959390 (= e!4184489 e!4184491)))

(declare-fun c!1290481 () Bool)

(assert (=> b!6959390 (= c!1290481 (isEmpty!38936 l!9142))))

(assert (= (and d!2169891 res!2839737) b!6959383))

(assert (= (and d!2169891 c!1290484) b!6959384))

(assert (= (and d!2169891 (not c!1290484)) b!6959387))

(assert (= (and b!6959387 c!1290482) b!6959388))

(assert (= (and b!6959387 (not c!1290482)) b!6959385))

(assert (= (and d!2169891 res!2839736) b!6959390))

(assert (= (and b!6959390 c!1290481) b!6959389))

(assert (= (and b!6959390 (not c!1290481)) b!6959386))

(assert (= (and b!6959386 c!1290483) b!6959381))

(assert (= (and b!6959386 (not c!1290483)) b!6959382))

(assert (=> b!6959390 m!7655506))

(declare-fun m!7655578 () Bool)

(assert (=> b!6959388 m!7655578))

(assert (=> b!6959386 m!7655502))

(assert (=> b!6959386 m!7655502))

(declare-fun m!7655580 () Bool)

(assert (=> b!6959386 m!7655580))

(declare-fun m!7655582 () Bool)

(assert (=> b!6959389 m!7655582))

(declare-fun m!7655584 () Bool)

(assert (=> b!6959381 m!7655584))

(declare-fun m!7655586 () Bool)

(assert (=> b!6959382 m!7655586))

(declare-fun m!7655588 () Bool)

(assert (=> d!2169891 m!7655588))

(declare-fun m!7655590 () Bool)

(assert (=> d!2169891 m!7655590))

(declare-fun m!7655592 () Bool)

(assert (=> b!6959383 m!7655592))

(assert (=> b!6959195 d!2169891))

(declare-fun e!4184497 () Bool)

(assert (=> b!6959198 (= tp!1918554 e!4184497)))

(declare-fun b!6959403 () Bool)

(declare-fun tp!1918595 () Bool)

(assert (=> b!6959403 (= e!4184497 tp!1918595)))

(declare-fun b!6959401 () Bool)

(assert (=> b!6959401 (= e!4184497 tp_is_empty!43373)))

(declare-fun b!6959404 () Bool)

(declare-fun tp!1918597 () Bool)

(declare-fun tp!1918596 () Bool)

(assert (=> b!6959404 (= e!4184497 (and tp!1918597 tp!1918596))))

(declare-fun b!6959402 () Bool)

(declare-fun tp!1918594 () Bool)

(declare-fun tp!1918598 () Bool)

(assert (=> b!6959402 (= e!4184497 (and tp!1918594 tp!1918598))))

(assert (= (and b!6959198 (is-ElementMatch!17074 (reg!17403 r!13765))) b!6959401))

(assert (= (and b!6959198 (is-Concat!25919 (reg!17403 r!13765))) b!6959402))

(assert (= (and b!6959198 (is-Star!17074 (reg!17403 r!13765))) b!6959403))

(assert (= (and b!6959198 (is-Union!17074 (reg!17403 r!13765))) b!6959404))

(declare-fun b!6959409 () Bool)

(declare-fun e!4184500 () Bool)

(declare-fun tp!1918601 () Bool)

(assert (=> b!6959409 (= e!4184500 (and tp_is_empty!43373 tp!1918601))))

(assert (=> b!6959192 (= tp!1918555 e!4184500)))

(assert (= (and b!6959192 (is-Cons!66710 (t!380577 s!9351))) b!6959409))

(declare-fun e!4184501 () Bool)

(assert (=> b!6959196 (= tp!1918557 e!4184501)))

(declare-fun b!6959412 () Bool)

(declare-fun tp!1918603 () Bool)

(assert (=> b!6959412 (= e!4184501 tp!1918603)))

(declare-fun b!6959410 () Bool)

(assert (=> b!6959410 (= e!4184501 tp_is_empty!43373)))

(declare-fun b!6959413 () Bool)

(declare-fun tp!1918605 () Bool)

(declare-fun tp!1918604 () Bool)

(assert (=> b!6959413 (= e!4184501 (and tp!1918605 tp!1918604))))

(declare-fun b!6959411 () Bool)

(declare-fun tp!1918602 () Bool)

(declare-fun tp!1918606 () Bool)

(assert (=> b!6959411 (= e!4184501 (and tp!1918602 tp!1918606))))

(assert (= (and b!6959196 (is-ElementMatch!17074 (regOne!34661 r!13765))) b!6959410))

(assert (= (and b!6959196 (is-Concat!25919 (regOne!34661 r!13765))) b!6959411))

(assert (= (and b!6959196 (is-Star!17074 (regOne!34661 r!13765))) b!6959412))

(assert (= (and b!6959196 (is-Union!17074 (regOne!34661 r!13765))) b!6959413))

(declare-fun e!4184502 () Bool)

(assert (=> b!6959196 (= tp!1918556 e!4184502)))

(declare-fun b!6959416 () Bool)

(declare-fun tp!1918608 () Bool)

(assert (=> b!6959416 (= e!4184502 tp!1918608)))

(declare-fun b!6959414 () Bool)

(assert (=> b!6959414 (= e!4184502 tp_is_empty!43373)))

(declare-fun b!6959417 () Bool)

(declare-fun tp!1918610 () Bool)

(declare-fun tp!1918609 () Bool)

(assert (=> b!6959417 (= e!4184502 (and tp!1918610 tp!1918609))))

(declare-fun b!6959415 () Bool)

(declare-fun tp!1918607 () Bool)

(declare-fun tp!1918611 () Bool)

(assert (=> b!6959415 (= e!4184502 (and tp!1918607 tp!1918611))))

(assert (= (and b!6959196 (is-ElementMatch!17074 (regTwo!34661 r!13765))) b!6959414))

(assert (= (and b!6959196 (is-Concat!25919 (regTwo!34661 r!13765))) b!6959415))

(assert (= (and b!6959196 (is-Star!17074 (regTwo!34661 r!13765))) b!6959416))

(assert (= (and b!6959196 (is-Union!17074 (regTwo!34661 r!13765))) b!6959417))

(declare-fun e!4184503 () Bool)

(assert (=> b!6959190 (= tp!1918553 e!4184503)))

(declare-fun b!6959420 () Bool)

(declare-fun tp!1918613 () Bool)

(assert (=> b!6959420 (= e!4184503 tp!1918613)))

(declare-fun b!6959418 () Bool)

(assert (=> b!6959418 (= e!4184503 tp_is_empty!43373)))

(declare-fun b!6959421 () Bool)

(declare-fun tp!1918615 () Bool)

(declare-fun tp!1918614 () Bool)

(assert (=> b!6959421 (= e!4184503 (and tp!1918615 tp!1918614))))

(declare-fun b!6959419 () Bool)

(declare-fun tp!1918612 () Bool)

(declare-fun tp!1918616 () Bool)

(assert (=> b!6959419 (= e!4184503 (and tp!1918612 tp!1918616))))

(assert (= (and b!6959190 (is-ElementMatch!17074 (h!73157 l!9142))) b!6959418))

(assert (= (and b!6959190 (is-Concat!25919 (h!73157 l!9142))) b!6959419))

(assert (= (and b!6959190 (is-Star!17074 (h!73157 l!9142))) b!6959420))

(assert (= (and b!6959190 (is-Union!17074 (h!73157 l!9142))) b!6959421))

(declare-fun b!6959426 () Bool)

(declare-fun e!4184506 () Bool)

(declare-fun tp!1918621 () Bool)

(declare-fun tp!1918622 () Bool)

(assert (=> b!6959426 (= e!4184506 (and tp!1918621 tp!1918622))))

(assert (=> b!6959190 (= tp!1918552 e!4184506)))

(assert (= (and b!6959190 (is-Cons!66709 (t!380576 l!9142))) b!6959426))

(declare-fun e!4184507 () Bool)

(assert (=> b!6959200 (= tp!1918558 e!4184507)))

(declare-fun b!6959429 () Bool)

(declare-fun tp!1918624 () Bool)

(assert (=> b!6959429 (= e!4184507 tp!1918624)))

(declare-fun b!6959427 () Bool)

(assert (=> b!6959427 (= e!4184507 tp_is_empty!43373)))

(declare-fun b!6959430 () Bool)

(declare-fun tp!1918626 () Bool)

(declare-fun tp!1918625 () Bool)

(assert (=> b!6959430 (= e!4184507 (and tp!1918626 tp!1918625))))

(declare-fun b!6959428 () Bool)

(declare-fun tp!1918623 () Bool)

(declare-fun tp!1918627 () Bool)

(assert (=> b!6959428 (= e!4184507 (and tp!1918623 tp!1918627))))

(assert (= (and b!6959200 (is-ElementMatch!17074 (regOne!34660 r!13765))) b!6959427))

(assert (= (and b!6959200 (is-Concat!25919 (regOne!34660 r!13765))) b!6959428))

(assert (= (and b!6959200 (is-Star!17074 (regOne!34660 r!13765))) b!6959429))

(assert (= (and b!6959200 (is-Union!17074 (regOne!34660 r!13765))) b!6959430))

(declare-fun e!4184508 () Bool)

(assert (=> b!6959200 (= tp!1918559 e!4184508)))

(declare-fun b!6959433 () Bool)

(declare-fun tp!1918629 () Bool)

(assert (=> b!6959433 (= e!4184508 tp!1918629)))

(declare-fun b!6959431 () Bool)

(assert (=> b!6959431 (= e!4184508 tp_is_empty!43373)))

(declare-fun b!6959434 () Bool)

(declare-fun tp!1918631 () Bool)

(declare-fun tp!1918630 () Bool)

(assert (=> b!6959434 (= e!4184508 (and tp!1918631 tp!1918630))))

(declare-fun b!6959432 () Bool)

(declare-fun tp!1918628 () Bool)

(declare-fun tp!1918632 () Bool)

(assert (=> b!6959432 (= e!4184508 (and tp!1918628 tp!1918632))))

(assert (= (and b!6959200 (is-ElementMatch!17074 (regTwo!34660 r!13765))) b!6959431))

(assert (= (and b!6959200 (is-Concat!25919 (regTwo!34660 r!13765))) b!6959432))

(assert (= (and b!6959200 (is-Star!17074 (regTwo!34660 r!13765))) b!6959433))

(assert (= (and b!6959200 (is-Union!17074 (regTwo!34660 r!13765))) b!6959434))

(declare-fun b_lambda!260533 () Bool)

(assert (= b_lambda!260531 (or start!667760 b_lambda!260533)))

(declare-fun bs!1858267 () Bool)

(declare-fun d!2169895 () Bool)

(assert (= bs!1858267 (and d!2169895 start!667760)))

(assert (=> bs!1858267 (= (dynLambda!26606 lambda!397047 (h!73157 l!9142)) (validRegex!8775 (h!73157 l!9142)))))

(declare-fun m!7655594 () Bool)

(assert (=> bs!1858267 m!7655594))

(assert (=> b!6959349 d!2169895))

(declare-fun b_lambda!260535 () Bool)

(assert (= b_lambda!260529 (or start!667760 b_lambda!260535)))

(declare-fun bs!1858268 () Bool)

(declare-fun d!2169897 () Bool)

(assert (= bs!1858268 (and d!2169897 start!667760)))

(assert (=> bs!1858268 (= (dynLambda!26606 lambda!397047 (h!73157 lt!2478782)) (validRegex!8775 (h!73157 lt!2478782)))))

(declare-fun m!7655596 () Bool)

(assert (=> bs!1858268 m!7655596))

(assert (=> b!6959238 d!2169897))

(push 1)

(assert (not b!6959281))

(assert (not bs!1858268))

(assert (not b!6959419))

(assert (not b!6959434))

(assert (not b!6959382))

(assert (not b!6959350))

(assert (not b!6959272))

(assert (not d!2169873))

(assert (not bm!631925))

(assert (not b!6959318))

(assert (not b!6959390))

(assert (not b!6959430))

(assert (not b!6959404))

(assert (not b!6959383))

(assert (not b!6959276))

(assert (not b_lambda!260533))

(assert (not b!6959239))

(assert (not b!6959412))

(assert (not b!6959413))

(assert (not b!6959433))

(assert (not b!6959415))

(assert (not d!2169881))

(assert (not d!2169891))

(assert (not b!6959421))

(assert (not b!6959381))

(assert (not b!6959428))

(assert (not b!6959389))

(assert (not b!6959388))

(assert (not b!6959417))

(assert (not b!6959416))

(assert (not b!6959409))

(assert (not b!6959268))

(assert tp_is_empty!43373)

(assert (not bs!1858267))

(assert (not b!6959426))

(assert (not b!6959386))

(assert (not b_lambda!260535))

(assert (not b!6959429))

(assert (not bm!631931))

(assert (not bm!631930))

(assert (not b!6959411))

(assert (not b!6959432))

(assert (not b!6959403))

(assert (not b!6959328))

(assert (not b!6959420))

(assert (not b!6959274))

(assert (not b!6959279))

(assert (not b!6959402))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

