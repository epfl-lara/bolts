; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692658 () Bool)

(assert start!692658)

(declare-fun b!7116521 () Bool)

(declare-fun res!2903574 () Bool)

(declare-fun e!4276362 () Bool)

(assert (=> b!7116521 (=> (not res!2903574) (not e!4276362))))

(declare-datatypes ((C!36206 0))(
  ( (C!36207 (val!27809 Int)) )
))
(declare-datatypes ((Regex!17968 0))(
  ( (ElementMatch!17968 (c!1328103 C!36206)) (Concat!26813 (regOne!36448 Regex!17968) (regTwo!36448 Regex!17968)) (EmptyExpr!17968) (Star!17968 (reg!18297 Regex!17968)) (EmptyLang!17968) (Union!17968 (regOne!36449 Regex!17968) (regTwo!36449 Regex!17968)) )
))
(declare-fun r!11554 () Regex!17968)

(declare-fun a!1901 () C!36206)

(assert (=> b!7116521 (= res!2903574 (and (or (not (is-ElementMatch!17968 r!11554)) (not (= (c!1328103 r!11554) a!1901))) (not (is-Union!17968 r!11554))))))

(declare-fun b!7116522 () Bool)

(declare-fun e!4276363 () Bool)

(declare-fun nullable!7605 (Regex!17968) Bool)

(assert (=> b!7116522 (= e!4276363 (not (nullable!7605 (regOne!36448 r!11554))))))

(declare-fun b!7116523 () Bool)

(declare-fun e!4276361 () Bool)

(declare-fun tp!1958566 () Bool)

(assert (=> b!7116523 (= e!4276361 tp!1958566)))

(declare-fun b!7116524 () Bool)

(declare-fun e!4276360 () Bool)

(declare-fun tp_is_empty!45169 () Bool)

(assert (=> b!7116524 (= e!4276360 tp_is_empty!45169)))

(declare-fun b!7116525 () Bool)

(declare-fun tp!1958565 () Bool)

(declare-fun tp!1958562 () Bool)

(assert (=> b!7116525 (= e!4276360 (and tp!1958565 tp!1958562))))

(declare-fun b!7116526 () Bool)

(declare-fun tp!1958564 () Bool)

(declare-fun tp!1958561 () Bool)

(assert (=> b!7116526 (= e!4276360 (and tp!1958564 tp!1958561))))

(declare-fun b!7116527 () Bool)

(declare-fun e!4276364 () Bool)

(assert (=> b!7116527 (= e!4276362 e!4276364)))

(declare-fun res!2903573 () Bool)

(assert (=> b!7116527 (=> (not res!2903573) (not e!4276364))))

(declare-fun validRegex!9241 (Regex!17968) Bool)

(assert (=> b!7116527 (= res!2903573 (validRegex!9241 r!11554))))

(declare-datatypes ((List!68929 0))(
  ( (Nil!68805) (Cons!68805 (h!75253 Regex!17968) (t!382778 List!68929)) )
))
(declare-fun lt!2560760 () List!68929)

(declare-datatypes ((Context!13924 0))(
  ( (Context!13925 (exprs!7462 List!68929)) )
))
(declare-fun c!9994 () Context!13924)

(declare-fun auxCtx!45 () Context!13924)

(declare-fun ++!16120 (List!68929 List!68929) List!68929)

(assert (=> b!7116527 (= lt!2560760 (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45)))))

(declare-datatypes ((Unit!162607 0))(
  ( (Unit!162608) )
))
(declare-fun lt!2560759 () Unit!162607)

(declare-fun lambda!432428 () Int)

(declare-fun lemmaConcatPreservesForall!1253 (List!68929 List!68929 Int) Unit!162607)

(assert (=> b!7116527 (= lt!2560759 (lemmaConcatPreservesForall!1253 (exprs!7462 c!9994) (exprs!7462 auxCtx!45) lambda!432428))))

(declare-fun lt!2560761 () Unit!162607)

(assert (=> b!7116527 (= lt!2560761 (lemmaConcatPreservesForall!1253 (exprs!7462 c!9994) (exprs!7462 auxCtx!45) lambda!432428))))

(declare-fun b!7116528 () Bool)

(declare-fun e!4276359 () Bool)

(declare-fun tp!1958563 () Bool)

(assert (=> b!7116528 (= e!4276359 tp!1958563)))

(declare-fun res!2903570 () Bool)

(assert (=> start!692658 (=> (not res!2903570) (not e!4276362))))

(assert (=> start!692658 (= res!2903570 (validRegex!9241 r!11554))))

(assert (=> start!692658 e!4276362))

(assert (=> start!692658 e!4276360))

(assert (=> start!692658 tp_is_empty!45169))

(declare-fun inv!87784 (Context!13924) Bool)

(assert (=> start!692658 (and (inv!87784 c!9994) e!4276361)))

(assert (=> start!692658 (and (inv!87784 auxCtx!45) e!4276359)))

(declare-fun b!7116529 () Bool)

(declare-fun res!2903571 () Bool)

(assert (=> b!7116529 (=> (not res!2903571) (not e!4276362))))

(assert (=> b!7116529 (= res!2903571 (and (not (is-Concat!26813 r!11554)) (is-Star!17968 r!11554)))))

(declare-fun b!7116530 () Bool)

(declare-fun res!2903569 () Bool)

(assert (=> b!7116530 (=> (not res!2903569) (not e!4276362))))

(assert (=> b!7116530 (= res!2903569 e!4276363)))

(declare-fun res!2903572 () Bool)

(assert (=> b!7116530 (=> res!2903572 e!4276363)))

(assert (=> b!7116530 (= res!2903572 (not (is-Concat!26813 r!11554)))))

(declare-fun b!7116531 () Bool)

(declare-fun $colon$colon!2812 (List!68929 Regex!17968) List!68929)

(assert (=> b!7116531 (= e!4276364 (not (inv!87784 (Context!13925 ($colon$colon!2812 lt!2560760 r!11554)))))))

(declare-fun b!7116532 () Bool)

(declare-fun tp!1958567 () Bool)

(assert (=> b!7116532 (= e!4276360 tp!1958567)))

(assert (= (and start!692658 res!2903570) b!7116521))

(assert (= (and b!7116521 res!2903574) b!7116530))

(assert (= (and b!7116530 (not res!2903572)) b!7116522))

(assert (= (and b!7116530 res!2903569) b!7116529))

(assert (= (and b!7116529 res!2903571) b!7116527))

(assert (= (and b!7116527 res!2903573) b!7116531))

(assert (= (and start!692658 (is-ElementMatch!17968 r!11554)) b!7116524))

(assert (= (and start!692658 (is-Concat!26813 r!11554)) b!7116526))

(assert (= (and start!692658 (is-Star!17968 r!11554)) b!7116532))

(assert (= (and start!692658 (is-Union!17968 r!11554)) b!7116525))

(assert (= start!692658 b!7116523))

(assert (= start!692658 b!7116528))

(declare-fun m!7835340 () Bool)

(assert (=> b!7116522 m!7835340))

(declare-fun m!7835342 () Bool)

(assert (=> b!7116527 m!7835342))

(declare-fun m!7835344 () Bool)

(assert (=> b!7116527 m!7835344))

(declare-fun m!7835346 () Bool)

(assert (=> b!7116527 m!7835346))

(assert (=> b!7116527 m!7835346))

(assert (=> start!692658 m!7835342))

(declare-fun m!7835348 () Bool)

(assert (=> start!692658 m!7835348))

(declare-fun m!7835350 () Bool)

(assert (=> start!692658 m!7835350))

(declare-fun m!7835352 () Bool)

(assert (=> b!7116531 m!7835352))

(declare-fun m!7835354 () Bool)

(assert (=> b!7116531 m!7835354))

(push 1)

(assert (not b!7116527))

(assert (not b!7116522))

(assert (not b!7116528))

(assert (not b!7116523))

(assert (not b!7116525))

(assert (not b!7116526))

(assert (not b!7116531))

(assert tp_is_empty!45169)

(assert (not b!7116532))

(assert (not start!692658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!649907 () Bool)

(declare-fun call!649914 () Bool)

(declare-fun call!649912 () Bool)

(assert (=> bm!649907 (= call!649914 call!649912)))

(declare-fun b!7116587 () Bool)

(declare-fun res!2903607 () Bool)

(declare-fun e!4276401 () Bool)

(assert (=> b!7116587 (=> (not res!2903607) (not e!4276401))))

(assert (=> b!7116587 (= res!2903607 call!649914)))

(declare-fun e!4276400 () Bool)

(assert (=> b!7116587 (= e!4276400 e!4276401)))

(declare-fun bm!649908 () Bool)

(declare-fun c!1328110 () Bool)

(declare-fun c!1328109 () Bool)

(assert (=> bm!649908 (= call!649912 (validRegex!9241 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))))))

(declare-fun b!7116588 () Bool)

(declare-fun e!4276397 () Bool)

(assert (=> b!7116588 (= e!4276397 e!4276400)))

(assert (=> b!7116588 (= c!1328110 (is-Union!17968 r!11554))))

(declare-fun b!7116589 () Bool)

(declare-fun e!4276402 () Bool)

(assert (=> b!7116589 (= e!4276397 e!4276402)))

(declare-fun res!2903606 () Bool)

(assert (=> b!7116589 (= res!2903606 (not (nullable!7605 (reg!18297 r!11554))))))

(assert (=> b!7116589 (=> (not res!2903606) (not e!4276402))))

(declare-fun b!7116590 () Bool)

(assert (=> b!7116590 (= e!4276402 call!649912)))

(declare-fun bm!649909 () Bool)

(declare-fun call!649913 () Bool)

(assert (=> bm!649909 (= call!649913 (validRegex!9241 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))))))

(declare-fun b!7116592 () Bool)

(declare-fun e!4276399 () Bool)

(assert (=> b!7116592 (= e!4276399 call!649914)))

(declare-fun b!7116593 () Bool)

(declare-fun res!2903604 () Bool)

(declare-fun e!4276403 () Bool)

(assert (=> b!7116593 (=> res!2903604 e!4276403)))

(assert (=> b!7116593 (= res!2903604 (not (is-Concat!26813 r!11554)))))

(assert (=> b!7116593 (= e!4276400 e!4276403)))

(declare-fun d!2221194 () Bool)

(declare-fun res!2903605 () Bool)

(declare-fun e!4276398 () Bool)

(assert (=> d!2221194 (=> res!2903605 e!4276398)))

(assert (=> d!2221194 (= res!2903605 (is-ElementMatch!17968 r!11554))))

(assert (=> d!2221194 (= (validRegex!9241 r!11554) e!4276398)))

(declare-fun b!7116591 () Bool)

(assert (=> b!7116591 (= e!4276401 call!649913)))

(declare-fun b!7116594 () Bool)

(assert (=> b!7116594 (= e!4276403 e!4276399)))

(declare-fun res!2903603 () Bool)

(assert (=> b!7116594 (=> (not res!2903603) (not e!4276399))))

(assert (=> b!7116594 (= res!2903603 call!649913)))

(declare-fun b!7116595 () Bool)

(assert (=> b!7116595 (= e!4276398 e!4276397)))

(assert (=> b!7116595 (= c!1328109 (is-Star!17968 r!11554))))

(assert (= (and d!2221194 (not res!2903605)) b!7116595))

(assert (= (and b!7116595 c!1328109) b!7116589))

(assert (= (and b!7116595 (not c!1328109)) b!7116588))

(assert (= (and b!7116589 res!2903606) b!7116590))

(assert (= (and b!7116588 c!1328110) b!7116587))

(assert (= (and b!7116588 (not c!1328110)) b!7116593))

(assert (= (and b!7116587 res!2903607) b!7116591))

(assert (= (and b!7116593 (not res!2903604)) b!7116594))

(assert (= (and b!7116594 res!2903603) b!7116592))

(assert (= (or b!7116587 b!7116592) bm!649907))

(assert (= (or b!7116591 b!7116594) bm!649909))

(assert (= (or b!7116590 bm!649907) bm!649908))

(declare-fun m!7835372 () Bool)

(assert (=> bm!649908 m!7835372))

(declare-fun m!7835374 () Bool)

(assert (=> b!7116589 m!7835374))

(declare-fun m!7835376 () Bool)

(assert (=> bm!649909 m!7835376))

(assert (=> start!692658 d!2221194))

(declare-fun bs!1885589 () Bool)

(declare-fun d!2221198 () Bool)

(assert (= bs!1885589 (and d!2221198 b!7116527)))

(declare-fun lambda!432439 () Int)

(assert (=> bs!1885589 (= lambda!432439 lambda!432428)))

(declare-fun forall!16858 (List!68929 Int) Bool)

(assert (=> d!2221198 (= (inv!87784 c!9994) (forall!16858 (exprs!7462 c!9994) lambda!432439))))

(declare-fun bs!1885590 () Bool)

(assert (= bs!1885590 d!2221198))

(declare-fun m!7835380 () Bool)

(assert (=> bs!1885590 m!7835380))

(assert (=> start!692658 d!2221198))

(declare-fun bs!1885591 () Bool)

(declare-fun d!2221202 () Bool)

(assert (= bs!1885591 (and d!2221202 b!7116527)))

(declare-fun lambda!432440 () Int)

(assert (=> bs!1885591 (= lambda!432440 lambda!432428)))

(declare-fun bs!1885592 () Bool)

(assert (= bs!1885592 (and d!2221202 d!2221198)))

(assert (=> bs!1885592 (= lambda!432440 lambda!432439)))

(assert (=> d!2221202 (= (inv!87784 auxCtx!45) (forall!16858 (exprs!7462 auxCtx!45) lambda!432440))))

(declare-fun bs!1885593 () Bool)

(assert (= bs!1885593 d!2221202))

(declare-fun m!7835382 () Bool)

(assert (=> bs!1885593 m!7835382))

(assert (=> start!692658 d!2221202))

(declare-fun d!2221206 () Bool)

(declare-fun nullableFct!2949 (Regex!17968) Bool)

(assert (=> d!2221206 (= (nullable!7605 (regOne!36448 r!11554)) (nullableFct!2949 (regOne!36448 r!11554)))))

(declare-fun bs!1885594 () Bool)

(assert (= bs!1885594 d!2221206))

(declare-fun m!7835384 () Bool)

(assert (=> bs!1885594 m!7835384))

(assert (=> b!7116522 d!2221206))

(assert (=> b!7116527 d!2221194))

(declare-fun b!7116620 () Bool)

(declare-fun e!4276423 () List!68929)

(assert (=> b!7116620 (= e!4276423 (exprs!7462 auxCtx!45))))

(declare-fun b!7116621 () Bool)

(assert (=> b!7116621 (= e!4276423 (Cons!68805 (h!75253 (exprs!7462 c!9994)) (++!16120 (t!382778 (exprs!7462 c!9994)) (exprs!7462 auxCtx!45))))))

(declare-fun b!7116622 () Bool)

(declare-fun res!2903623 () Bool)

(declare-fun e!4276422 () Bool)

(assert (=> b!7116622 (=> (not res!2903623) (not e!4276422))))

(declare-fun lt!2560773 () List!68929)

(declare-fun size!41418 (List!68929) Int)

(assert (=> b!7116622 (= res!2903623 (= (size!41418 lt!2560773) (+ (size!41418 (exprs!7462 c!9994)) (size!41418 (exprs!7462 auxCtx!45)))))))

(declare-fun b!7116623 () Bool)

(assert (=> b!7116623 (= e!4276422 (or (not (= (exprs!7462 auxCtx!45) Nil!68805)) (= lt!2560773 (exprs!7462 c!9994))))))

(declare-fun d!2221208 () Bool)

(assert (=> d!2221208 e!4276422))

(declare-fun res!2903620 () Bool)

(assert (=> d!2221208 (=> (not res!2903620) (not e!4276422))))

(declare-fun content!14043 (List!68929) (Set Regex!17968))

(assert (=> d!2221208 (= res!2903620 (= (content!14043 lt!2560773) (set.union (content!14043 (exprs!7462 c!9994)) (content!14043 (exprs!7462 auxCtx!45)))))))

(assert (=> d!2221208 (= lt!2560773 e!4276423)))

(declare-fun c!1328117 () Bool)

(assert (=> d!2221208 (= c!1328117 (is-Nil!68805 (exprs!7462 c!9994)))))

(assert (=> d!2221208 (= (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45)) lt!2560773)))

(assert (= (and d!2221208 c!1328117) b!7116620))

(assert (= (and d!2221208 (not c!1328117)) b!7116621))

(assert (= (and d!2221208 res!2903620) b!7116622))

(assert (= (and b!7116622 res!2903623) b!7116623))

(declare-fun m!7835386 () Bool)

(assert (=> b!7116621 m!7835386))

(declare-fun m!7835388 () Bool)

(assert (=> b!7116622 m!7835388))

(declare-fun m!7835390 () Bool)

(assert (=> b!7116622 m!7835390))

(declare-fun m!7835392 () Bool)

(assert (=> b!7116622 m!7835392))

(declare-fun m!7835394 () Bool)

(assert (=> d!2221208 m!7835394))

(declare-fun m!7835396 () Bool)

(assert (=> d!2221208 m!7835396))

(declare-fun m!7835398 () Bool)

(assert (=> d!2221208 m!7835398))

(assert (=> b!7116527 d!2221208))

(declare-fun d!2221210 () Bool)

(assert (=> d!2221210 (forall!16858 (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45)) lambda!432428)))

(declare-fun lt!2560776 () Unit!162607)

(declare-fun choose!54893 (List!68929 List!68929 Int) Unit!162607)

(assert (=> d!2221210 (= lt!2560776 (choose!54893 (exprs!7462 c!9994) (exprs!7462 auxCtx!45) lambda!432428))))

(assert (=> d!2221210 (forall!16858 (exprs!7462 c!9994) lambda!432428)))

(assert (=> d!2221210 (= (lemmaConcatPreservesForall!1253 (exprs!7462 c!9994) (exprs!7462 auxCtx!45) lambda!432428) lt!2560776)))

(declare-fun bs!1885595 () Bool)

(assert (= bs!1885595 d!2221210))

(assert (=> bs!1885595 m!7835344))

(assert (=> bs!1885595 m!7835344))

(declare-fun m!7835400 () Bool)

(assert (=> bs!1885595 m!7835400))

(declare-fun m!7835402 () Bool)

(assert (=> bs!1885595 m!7835402))

(declare-fun m!7835404 () Bool)

(assert (=> bs!1885595 m!7835404))

(assert (=> b!7116527 d!2221210))

(declare-fun bs!1885596 () Bool)

(declare-fun d!2221212 () Bool)

(assert (= bs!1885596 (and d!2221212 b!7116527)))

(declare-fun lambda!432441 () Int)

(assert (=> bs!1885596 (= lambda!432441 lambda!432428)))

(declare-fun bs!1885597 () Bool)

(assert (= bs!1885597 (and d!2221212 d!2221198)))

(assert (=> bs!1885597 (= lambda!432441 lambda!432439)))

(declare-fun bs!1885598 () Bool)

(assert (= bs!1885598 (and d!2221212 d!2221202)))

(assert (=> bs!1885598 (= lambda!432441 lambda!432440)))

(assert (=> d!2221212 (= (inv!87784 (Context!13925 ($colon$colon!2812 lt!2560760 r!11554))) (forall!16858 (exprs!7462 (Context!13925 ($colon$colon!2812 lt!2560760 r!11554))) lambda!432441))))

(declare-fun bs!1885599 () Bool)

(assert (= bs!1885599 d!2221212))

(declare-fun m!7835406 () Bool)

(assert (=> bs!1885599 m!7835406))

(assert (=> b!7116531 d!2221212))

(declare-fun d!2221214 () Bool)

(assert (=> d!2221214 (= ($colon$colon!2812 lt!2560760 r!11554) (Cons!68805 r!11554 lt!2560760))))

(assert (=> b!7116531 d!2221214))

(declare-fun b!7116630 () Bool)

(declare-fun e!4276426 () Bool)

(declare-fun tp!1958593 () Bool)

(declare-fun tp!1958594 () Bool)

(assert (=> b!7116630 (= e!4276426 (and tp!1958593 tp!1958594))))

(assert (=> b!7116523 (= tp!1958566 e!4276426)))

(assert (= (and b!7116523 (is-Cons!68805 (exprs!7462 c!9994))) b!7116630))

(declare-fun b!7116631 () Bool)

(declare-fun e!4276427 () Bool)

(declare-fun tp!1958595 () Bool)

(declare-fun tp!1958596 () Bool)

(assert (=> b!7116631 (= e!4276427 (and tp!1958595 tp!1958596))))

(assert (=> b!7116528 (= tp!1958563 e!4276427)))

(assert (= (and b!7116528 (is-Cons!68805 (exprs!7462 auxCtx!45))) b!7116631))

(declare-fun b!7116644 () Bool)

(declare-fun e!4276430 () Bool)

(declare-fun tp!1958610 () Bool)

(assert (=> b!7116644 (= e!4276430 tp!1958610)))

(declare-fun b!7116645 () Bool)

(declare-fun tp!1958607 () Bool)

(declare-fun tp!1958611 () Bool)

(assert (=> b!7116645 (= e!4276430 (and tp!1958607 tp!1958611))))

(assert (=> b!7116532 (= tp!1958567 e!4276430)))

(declare-fun b!7116643 () Bool)

(declare-fun tp!1958608 () Bool)

(declare-fun tp!1958609 () Bool)

(assert (=> b!7116643 (= e!4276430 (and tp!1958608 tp!1958609))))

(declare-fun b!7116642 () Bool)

(assert (=> b!7116642 (= e!4276430 tp_is_empty!45169)))

(assert (= (and b!7116532 (is-ElementMatch!17968 (reg!18297 r!11554))) b!7116642))

(assert (= (and b!7116532 (is-Concat!26813 (reg!18297 r!11554))) b!7116643))

(assert (= (and b!7116532 (is-Star!17968 (reg!18297 r!11554))) b!7116644))

(assert (= (and b!7116532 (is-Union!17968 (reg!18297 r!11554))) b!7116645))

(declare-fun b!7116648 () Bool)

(declare-fun e!4276431 () Bool)

(declare-fun tp!1958615 () Bool)

(assert (=> b!7116648 (= e!4276431 tp!1958615)))

(declare-fun b!7116649 () Bool)

(declare-fun tp!1958612 () Bool)

(declare-fun tp!1958616 () Bool)

(assert (=> b!7116649 (= e!4276431 (and tp!1958612 tp!1958616))))

(assert (=> b!7116526 (= tp!1958564 e!4276431)))

(declare-fun b!7116647 () Bool)

(declare-fun tp!1958613 () Bool)

(declare-fun tp!1958614 () Bool)

(assert (=> b!7116647 (= e!4276431 (and tp!1958613 tp!1958614))))

(declare-fun b!7116646 () Bool)

(assert (=> b!7116646 (= e!4276431 tp_is_empty!45169)))

(assert (= (and b!7116526 (is-ElementMatch!17968 (regOne!36448 r!11554))) b!7116646))

(assert (= (and b!7116526 (is-Concat!26813 (regOne!36448 r!11554))) b!7116647))

(assert (= (and b!7116526 (is-Star!17968 (regOne!36448 r!11554))) b!7116648))

(assert (= (and b!7116526 (is-Union!17968 (regOne!36448 r!11554))) b!7116649))

(declare-fun b!7116652 () Bool)

(declare-fun e!4276432 () Bool)

(declare-fun tp!1958620 () Bool)

(assert (=> b!7116652 (= e!4276432 tp!1958620)))

(declare-fun b!7116653 () Bool)

(declare-fun tp!1958617 () Bool)

(declare-fun tp!1958621 () Bool)

(assert (=> b!7116653 (= e!4276432 (and tp!1958617 tp!1958621))))

(assert (=> b!7116526 (= tp!1958561 e!4276432)))

(declare-fun b!7116651 () Bool)

(declare-fun tp!1958618 () Bool)

(declare-fun tp!1958619 () Bool)

(assert (=> b!7116651 (= e!4276432 (and tp!1958618 tp!1958619))))

(declare-fun b!7116650 () Bool)

(assert (=> b!7116650 (= e!4276432 tp_is_empty!45169)))

(assert (= (and b!7116526 (is-ElementMatch!17968 (regTwo!36448 r!11554))) b!7116650))

(assert (= (and b!7116526 (is-Concat!26813 (regTwo!36448 r!11554))) b!7116651))

(assert (= (and b!7116526 (is-Star!17968 (regTwo!36448 r!11554))) b!7116652))

(assert (= (and b!7116526 (is-Union!17968 (regTwo!36448 r!11554))) b!7116653))

(declare-fun b!7116656 () Bool)

(declare-fun e!4276433 () Bool)

(declare-fun tp!1958625 () Bool)

(assert (=> b!7116656 (= e!4276433 tp!1958625)))

(declare-fun b!7116657 () Bool)

(declare-fun tp!1958622 () Bool)

(declare-fun tp!1958626 () Bool)

(assert (=> b!7116657 (= e!4276433 (and tp!1958622 tp!1958626))))

(assert (=> b!7116525 (= tp!1958565 e!4276433)))

(declare-fun b!7116655 () Bool)

(declare-fun tp!1958623 () Bool)

(declare-fun tp!1958624 () Bool)

(assert (=> b!7116655 (= e!4276433 (and tp!1958623 tp!1958624))))

(declare-fun b!7116654 () Bool)

(assert (=> b!7116654 (= e!4276433 tp_is_empty!45169)))

(assert (= (and b!7116525 (is-ElementMatch!17968 (regOne!36449 r!11554))) b!7116654))

(assert (= (and b!7116525 (is-Concat!26813 (regOne!36449 r!11554))) b!7116655))

(assert (= (and b!7116525 (is-Star!17968 (regOne!36449 r!11554))) b!7116656))

(assert (= (and b!7116525 (is-Union!17968 (regOne!36449 r!11554))) b!7116657))

(declare-fun b!7116660 () Bool)

(declare-fun e!4276434 () Bool)

(declare-fun tp!1958630 () Bool)

(assert (=> b!7116660 (= e!4276434 tp!1958630)))

(declare-fun b!7116661 () Bool)

(declare-fun tp!1958627 () Bool)

(declare-fun tp!1958631 () Bool)

(assert (=> b!7116661 (= e!4276434 (and tp!1958627 tp!1958631))))

(assert (=> b!7116525 (= tp!1958562 e!4276434)))

(declare-fun b!7116659 () Bool)

(declare-fun tp!1958628 () Bool)

(declare-fun tp!1958629 () Bool)

(assert (=> b!7116659 (= e!4276434 (and tp!1958628 tp!1958629))))

(declare-fun b!7116658 () Bool)

(assert (=> b!7116658 (= e!4276434 tp_is_empty!45169)))

(assert (= (and b!7116525 (is-ElementMatch!17968 (regTwo!36449 r!11554))) b!7116658))

(assert (= (and b!7116525 (is-Concat!26813 (regTwo!36449 r!11554))) b!7116659))

(assert (= (and b!7116525 (is-Star!17968 (regTwo!36449 r!11554))) b!7116660))

(assert (= (and b!7116525 (is-Union!17968 (regTwo!36449 r!11554))) b!7116661))

(push 1)

(assert (not b!7116649))

(assert (not b!7116648))

(assert (not d!2221208))

(assert (not b!7116657))

(assert (not b!7116644))

(assert (not d!2221202))

(assert (not d!2221206))

(assert (not b!7116622))

(assert (not b!7116655))

(assert (not b!7116647))

(assert (not bm!649909))

(assert (not b!7116621))

(assert (not bm!649908))

(assert (not b!7116643))

(assert (not b!7116645))

(assert (not b!7116651))

(assert (not b!7116631))

(assert (not b!7116652))

(assert (not b!7116653))

(assert (not b!7116660))

(assert (not b!7116656))

(assert (not d!2221210))

(assert (not b!7116659))

(assert (not d!2221198))

(assert (not b!7116661))

(assert tp_is_empty!45169)

(assert (not b!7116630))

(assert (not b!7116589))

(assert (not d!2221212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2221226 () Bool)

(assert (=> d!2221226 (= (nullable!7605 (reg!18297 r!11554)) (nullableFct!2949 (reg!18297 r!11554)))))

(declare-fun bs!1885609 () Bool)

(assert (= bs!1885609 d!2221226))

(declare-fun m!7835440 () Bool)

(assert (=> bs!1885609 m!7835440))

(assert (=> b!7116589 d!2221226))

(declare-fun d!2221228 () Bool)

(declare-fun c!1328125 () Bool)

(assert (=> d!2221228 (= c!1328125 (is-Nil!68805 lt!2560773))))

(declare-fun e!4276461 () (Set Regex!17968))

(assert (=> d!2221228 (= (content!14043 lt!2560773) e!4276461)))

(declare-fun b!7116723 () Bool)

(assert (=> b!7116723 (= e!4276461 (as set.empty (Set Regex!17968)))))

(declare-fun b!7116724 () Bool)

(assert (=> b!7116724 (= e!4276461 (set.union (set.insert (h!75253 lt!2560773) (as set.empty (Set Regex!17968))) (content!14043 (t!382778 lt!2560773))))))

(assert (= (and d!2221228 c!1328125) b!7116723))

(assert (= (and d!2221228 (not c!1328125)) b!7116724))

(declare-fun m!7835442 () Bool)

(assert (=> b!7116724 m!7835442))

(declare-fun m!7835444 () Bool)

(assert (=> b!7116724 m!7835444))

(assert (=> d!2221208 d!2221228))

(declare-fun d!2221230 () Bool)

(declare-fun c!1328126 () Bool)

(assert (=> d!2221230 (= c!1328126 (is-Nil!68805 (exprs!7462 c!9994)))))

(declare-fun e!4276462 () (Set Regex!17968))

(assert (=> d!2221230 (= (content!14043 (exprs!7462 c!9994)) e!4276462)))

(declare-fun b!7116725 () Bool)

(assert (=> b!7116725 (= e!4276462 (as set.empty (Set Regex!17968)))))

(declare-fun b!7116726 () Bool)

(assert (=> b!7116726 (= e!4276462 (set.union (set.insert (h!75253 (exprs!7462 c!9994)) (as set.empty (Set Regex!17968))) (content!14043 (t!382778 (exprs!7462 c!9994)))))))

(assert (= (and d!2221230 c!1328126) b!7116725))

(assert (= (and d!2221230 (not c!1328126)) b!7116726))

(declare-fun m!7835446 () Bool)

(assert (=> b!7116726 m!7835446))

(declare-fun m!7835448 () Bool)

(assert (=> b!7116726 m!7835448))

(assert (=> d!2221208 d!2221230))

(declare-fun d!2221232 () Bool)

(declare-fun c!1328127 () Bool)

(assert (=> d!2221232 (= c!1328127 (is-Nil!68805 (exprs!7462 auxCtx!45)))))

(declare-fun e!4276463 () (Set Regex!17968))

(assert (=> d!2221232 (= (content!14043 (exprs!7462 auxCtx!45)) e!4276463)))

(declare-fun b!7116727 () Bool)

(assert (=> b!7116727 (= e!4276463 (as set.empty (Set Regex!17968)))))

(declare-fun b!7116728 () Bool)

(assert (=> b!7116728 (= e!4276463 (set.union (set.insert (h!75253 (exprs!7462 auxCtx!45)) (as set.empty (Set Regex!17968))) (content!14043 (t!382778 (exprs!7462 auxCtx!45)))))))

(assert (= (and d!2221232 c!1328127) b!7116727))

(assert (= (and d!2221232 (not c!1328127)) b!7116728))

(declare-fun m!7835450 () Bool)

(assert (=> b!7116728 m!7835450))

(declare-fun m!7835452 () Bool)

(assert (=> b!7116728 m!7835452))

(assert (=> d!2221208 d!2221232))

(declare-fun d!2221234 () Bool)

(declare-fun lt!2560785 () Int)

(assert (=> d!2221234 (>= lt!2560785 0)))

(declare-fun e!4276466 () Int)

(assert (=> d!2221234 (= lt!2560785 e!4276466)))

(declare-fun c!1328130 () Bool)

(assert (=> d!2221234 (= c!1328130 (is-Nil!68805 lt!2560773))))

(assert (=> d!2221234 (= (size!41418 lt!2560773) lt!2560785)))

(declare-fun b!7116733 () Bool)

(assert (=> b!7116733 (= e!4276466 0)))

(declare-fun b!7116734 () Bool)

(assert (=> b!7116734 (= e!4276466 (+ 1 (size!41418 (t!382778 lt!2560773))))))

(assert (= (and d!2221234 c!1328130) b!7116733))

(assert (= (and d!2221234 (not c!1328130)) b!7116734))

(declare-fun m!7835454 () Bool)

(assert (=> b!7116734 m!7835454))

(assert (=> b!7116622 d!2221234))

(declare-fun d!2221236 () Bool)

(declare-fun lt!2560786 () Int)

(assert (=> d!2221236 (>= lt!2560786 0)))

(declare-fun e!4276467 () Int)

(assert (=> d!2221236 (= lt!2560786 e!4276467)))

(declare-fun c!1328131 () Bool)

(assert (=> d!2221236 (= c!1328131 (is-Nil!68805 (exprs!7462 c!9994)))))

(assert (=> d!2221236 (= (size!41418 (exprs!7462 c!9994)) lt!2560786)))

(declare-fun b!7116735 () Bool)

(assert (=> b!7116735 (= e!4276467 0)))

(declare-fun b!7116736 () Bool)

(assert (=> b!7116736 (= e!4276467 (+ 1 (size!41418 (t!382778 (exprs!7462 c!9994)))))))

(assert (= (and d!2221236 c!1328131) b!7116735))

(assert (= (and d!2221236 (not c!1328131)) b!7116736))

(declare-fun m!7835456 () Bool)

(assert (=> b!7116736 m!7835456))

(assert (=> b!7116622 d!2221236))

(declare-fun d!2221238 () Bool)

(declare-fun lt!2560787 () Int)

(assert (=> d!2221238 (>= lt!2560787 0)))

(declare-fun e!4276468 () Int)

(assert (=> d!2221238 (= lt!2560787 e!4276468)))

(declare-fun c!1328132 () Bool)

(assert (=> d!2221238 (= c!1328132 (is-Nil!68805 (exprs!7462 auxCtx!45)))))

(assert (=> d!2221238 (= (size!41418 (exprs!7462 auxCtx!45)) lt!2560787)))

(declare-fun b!7116737 () Bool)

(assert (=> b!7116737 (= e!4276468 0)))

(declare-fun b!7116738 () Bool)

(assert (=> b!7116738 (= e!4276468 (+ 1 (size!41418 (t!382778 (exprs!7462 auxCtx!45)))))))

(assert (= (and d!2221238 c!1328132) b!7116737))

(assert (= (and d!2221238 (not c!1328132)) b!7116738))

(declare-fun m!7835458 () Bool)

(assert (=> b!7116738 m!7835458))

(assert (=> b!7116622 d!2221238))

(declare-fun d!2221240 () Bool)

(declare-fun res!2903639 () Bool)

(declare-fun e!4276473 () Bool)

(assert (=> d!2221240 (=> res!2903639 e!4276473)))

(assert (=> d!2221240 (= res!2903639 (is-Nil!68805 (exprs!7462 (Context!13925 ($colon$colon!2812 lt!2560760 r!11554)))))))

(assert (=> d!2221240 (= (forall!16858 (exprs!7462 (Context!13925 ($colon$colon!2812 lt!2560760 r!11554))) lambda!432441) e!4276473)))

(declare-fun b!7116743 () Bool)

(declare-fun e!4276474 () Bool)

(assert (=> b!7116743 (= e!4276473 e!4276474)))

(declare-fun res!2903640 () Bool)

(assert (=> b!7116743 (=> (not res!2903640) (not e!4276474))))

(declare-fun dynLambda!28060 (Int Regex!17968) Bool)

(assert (=> b!7116743 (= res!2903640 (dynLambda!28060 lambda!432441 (h!75253 (exprs!7462 (Context!13925 ($colon$colon!2812 lt!2560760 r!11554))))))))

(declare-fun b!7116744 () Bool)

(assert (=> b!7116744 (= e!4276474 (forall!16858 (t!382778 (exprs!7462 (Context!13925 ($colon$colon!2812 lt!2560760 r!11554)))) lambda!432441))))

(assert (= (and d!2221240 (not res!2903639)) b!7116743))

(assert (= (and b!7116743 res!2903640) b!7116744))

(declare-fun b_lambda!271497 () Bool)

(assert (=> (not b_lambda!271497) (not b!7116743)))

(declare-fun m!7835460 () Bool)

(assert (=> b!7116743 m!7835460))

(declare-fun m!7835462 () Bool)

(assert (=> b!7116744 m!7835462))

(assert (=> d!2221212 d!2221240))

(declare-fun d!2221242 () Bool)

(declare-fun res!2903641 () Bool)

(declare-fun e!4276475 () Bool)

(assert (=> d!2221242 (=> res!2903641 e!4276475)))

(assert (=> d!2221242 (= res!2903641 (is-Nil!68805 (exprs!7462 c!9994)))))

(assert (=> d!2221242 (= (forall!16858 (exprs!7462 c!9994) lambda!432439) e!4276475)))

(declare-fun b!7116745 () Bool)

(declare-fun e!4276476 () Bool)

(assert (=> b!7116745 (= e!4276475 e!4276476)))

(declare-fun res!2903642 () Bool)

(assert (=> b!7116745 (=> (not res!2903642) (not e!4276476))))

(assert (=> b!7116745 (= res!2903642 (dynLambda!28060 lambda!432439 (h!75253 (exprs!7462 c!9994))))))

(declare-fun b!7116746 () Bool)

(assert (=> b!7116746 (= e!4276476 (forall!16858 (t!382778 (exprs!7462 c!9994)) lambda!432439))))

(assert (= (and d!2221242 (not res!2903641)) b!7116745))

(assert (= (and b!7116745 res!2903642) b!7116746))

(declare-fun b_lambda!271499 () Bool)

(assert (=> (not b_lambda!271499) (not b!7116745)))

(declare-fun m!7835464 () Bool)

(assert (=> b!7116745 m!7835464))

(declare-fun m!7835466 () Bool)

(assert (=> b!7116746 m!7835466))

(assert (=> d!2221198 d!2221242))

(declare-fun b!7116747 () Bool)

(declare-fun e!4276478 () List!68929)

(assert (=> b!7116747 (= e!4276478 (exprs!7462 auxCtx!45))))

(declare-fun b!7116748 () Bool)

(assert (=> b!7116748 (= e!4276478 (Cons!68805 (h!75253 (t!382778 (exprs!7462 c!9994))) (++!16120 (t!382778 (t!382778 (exprs!7462 c!9994))) (exprs!7462 auxCtx!45))))))

(declare-fun b!7116749 () Bool)

(declare-fun res!2903644 () Bool)

(declare-fun e!4276477 () Bool)

(assert (=> b!7116749 (=> (not res!2903644) (not e!4276477))))

(declare-fun lt!2560788 () List!68929)

(assert (=> b!7116749 (= res!2903644 (= (size!41418 lt!2560788) (+ (size!41418 (t!382778 (exprs!7462 c!9994))) (size!41418 (exprs!7462 auxCtx!45)))))))

(declare-fun b!7116750 () Bool)

(assert (=> b!7116750 (= e!4276477 (or (not (= (exprs!7462 auxCtx!45) Nil!68805)) (= lt!2560788 (t!382778 (exprs!7462 c!9994)))))))

(declare-fun d!2221244 () Bool)

(assert (=> d!2221244 e!4276477))

(declare-fun res!2903643 () Bool)

(assert (=> d!2221244 (=> (not res!2903643) (not e!4276477))))

(assert (=> d!2221244 (= res!2903643 (= (content!14043 lt!2560788) (set.union (content!14043 (t!382778 (exprs!7462 c!9994))) (content!14043 (exprs!7462 auxCtx!45)))))))

(assert (=> d!2221244 (= lt!2560788 e!4276478)))

(declare-fun c!1328133 () Bool)

(assert (=> d!2221244 (= c!1328133 (is-Nil!68805 (t!382778 (exprs!7462 c!9994))))))

(assert (=> d!2221244 (= (++!16120 (t!382778 (exprs!7462 c!9994)) (exprs!7462 auxCtx!45)) lt!2560788)))

(assert (= (and d!2221244 c!1328133) b!7116747))

(assert (= (and d!2221244 (not c!1328133)) b!7116748))

(assert (= (and d!2221244 res!2903643) b!7116749))

(assert (= (and b!7116749 res!2903644) b!7116750))

(declare-fun m!7835468 () Bool)

(assert (=> b!7116748 m!7835468))

(declare-fun m!7835470 () Bool)

(assert (=> b!7116749 m!7835470))

(assert (=> b!7116749 m!7835456))

(assert (=> b!7116749 m!7835392))

(declare-fun m!7835472 () Bool)

(assert (=> d!2221244 m!7835472))

(assert (=> d!2221244 m!7835448))

(assert (=> d!2221244 m!7835398))

(assert (=> b!7116621 d!2221244))

(declare-fun bm!649919 () Bool)

(declare-fun call!649926 () Bool)

(declare-fun call!649924 () Bool)

(assert (=> bm!649919 (= call!649926 call!649924)))

(declare-fun b!7116751 () Bool)

(declare-fun res!2903649 () Bool)

(declare-fun e!4276483 () Bool)

(assert (=> b!7116751 (=> (not res!2903649) (not e!4276483))))

(assert (=> b!7116751 (= res!2903649 call!649926)))

(declare-fun e!4276482 () Bool)

(assert (=> b!7116751 (= e!4276482 e!4276483)))

(declare-fun bm!649920 () Bool)

(declare-fun c!1328135 () Bool)

(declare-fun c!1328134 () Bool)

(assert (=> bm!649920 (= call!649924 (validRegex!9241 (ite c!1328134 (reg!18297 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))) (ite c!1328135 (regOne!36449 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))) (regTwo!36448 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554))))))))))

(declare-fun b!7116752 () Bool)

(declare-fun e!4276479 () Bool)

(assert (=> b!7116752 (= e!4276479 e!4276482)))

(assert (=> b!7116752 (= c!1328135 (is-Union!17968 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))))))

(declare-fun b!7116753 () Bool)

(declare-fun e!4276484 () Bool)

(assert (=> b!7116753 (= e!4276479 e!4276484)))

(declare-fun res!2903648 () Bool)

(assert (=> b!7116753 (= res!2903648 (not (nullable!7605 (reg!18297 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))))))))

(assert (=> b!7116753 (=> (not res!2903648) (not e!4276484))))

(declare-fun b!7116754 () Bool)

(assert (=> b!7116754 (= e!4276484 call!649924)))

(declare-fun call!649925 () Bool)

(declare-fun bm!649921 () Bool)

(assert (=> bm!649921 (= call!649925 (validRegex!9241 (ite c!1328135 (regTwo!36449 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))) (regOne!36448 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))))))))

(declare-fun b!7116756 () Bool)

(declare-fun e!4276481 () Bool)

(assert (=> b!7116756 (= e!4276481 call!649926)))

(declare-fun b!7116757 () Bool)

(declare-fun res!2903646 () Bool)

(declare-fun e!4276485 () Bool)

(assert (=> b!7116757 (=> res!2903646 e!4276485)))

(assert (=> b!7116757 (= res!2903646 (not (is-Concat!26813 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554))))))))

(assert (=> b!7116757 (= e!4276482 e!4276485)))

(declare-fun d!2221246 () Bool)

(declare-fun res!2903647 () Bool)

(declare-fun e!4276480 () Bool)

(assert (=> d!2221246 (=> res!2903647 e!4276480)))

(assert (=> d!2221246 (= res!2903647 (is-ElementMatch!17968 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))))))

(assert (=> d!2221246 (= (validRegex!9241 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))) e!4276480)))

(declare-fun b!7116755 () Bool)

(assert (=> b!7116755 (= e!4276483 call!649925)))

(declare-fun b!7116758 () Bool)

(assert (=> b!7116758 (= e!4276485 e!4276481)))

(declare-fun res!2903645 () Bool)

(assert (=> b!7116758 (=> (not res!2903645) (not e!4276481))))

(assert (=> b!7116758 (= res!2903645 call!649925)))

(declare-fun b!7116759 () Bool)

(assert (=> b!7116759 (= e!4276480 e!4276479)))

(assert (=> b!7116759 (= c!1328134 (is-Star!17968 (ite c!1328109 (reg!18297 r!11554) (ite c!1328110 (regOne!36449 r!11554) (regTwo!36448 r!11554)))))))

(assert (= (and d!2221246 (not res!2903647)) b!7116759))

(assert (= (and b!7116759 c!1328134) b!7116753))

(assert (= (and b!7116759 (not c!1328134)) b!7116752))

(assert (= (and b!7116753 res!2903648) b!7116754))

(assert (= (and b!7116752 c!1328135) b!7116751))

(assert (= (and b!7116752 (not c!1328135)) b!7116757))

(assert (= (and b!7116751 res!2903649) b!7116755))

(assert (= (and b!7116757 (not res!2903646)) b!7116758))

(assert (= (and b!7116758 res!2903645) b!7116756))

(assert (= (or b!7116751 b!7116756) bm!649919))

(assert (= (or b!7116755 b!7116758) bm!649921))

(assert (= (or b!7116754 bm!649919) bm!649920))

(declare-fun m!7835474 () Bool)

(assert (=> bm!649920 m!7835474))

(declare-fun m!7835476 () Bool)

(assert (=> b!7116753 m!7835476))

(declare-fun m!7835478 () Bool)

(assert (=> bm!649921 m!7835478))

(assert (=> bm!649908 d!2221246))

(declare-fun d!2221248 () Bool)

(declare-fun res!2903650 () Bool)

(declare-fun e!4276486 () Bool)

(assert (=> d!2221248 (=> res!2903650 e!4276486)))

(assert (=> d!2221248 (= res!2903650 (is-Nil!68805 (exprs!7462 auxCtx!45)))))

(assert (=> d!2221248 (= (forall!16858 (exprs!7462 auxCtx!45) lambda!432440) e!4276486)))

(declare-fun b!7116760 () Bool)

(declare-fun e!4276487 () Bool)

(assert (=> b!7116760 (= e!4276486 e!4276487)))

(declare-fun res!2903651 () Bool)

(assert (=> b!7116760 (=> (not res!2903651) (not e!4276487))))

(assert (=> b!7116760 (= res!2903651 (dynLambda!28060 lambda!432440 (h!75253 (exprs!7462 auxCtx!45))))))

(declare-fun b!7116761 () Bool)

(assert (=> b!7116761 (= e!4276487 (forall!16858 (t!382778 (exprs!7462 auxCtx!45)) lambda!432440))))

(assert (= (and d!2221248 (not res!2903650)) b!7116760))

(assert (= (and b!7116760 res!2903651) b!7116761))

(declare-fun b_lambda!271501 () Bool)

(assert (=> (not b_lambda!271501) (not b!7116760)))

(declare-fun m!7835480 () Bool)

(assert (=> b!7116760 m!7835480))

(declare-fun m!7835482 () Bool)

(assert (=> b!7116761 m!7835482))

(assert (=> d!2221202 d!2221248))

(declare-fun d!2221250 () Bool)

(declare-fun res!2903652 () Bool)

(declare-fun e!4276488 () Bool)

(assert (=> d!2221250 (=> res!2903652 e!4276488)))

(assert (=> d!2221250 (= res!2903652 (is-Nil!68805 (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45))))))

(assert (=> d!2221250 (= (forall!16858 (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45)) lambda!432428) e!4276488)))

(declare-fun b!7116762 () Bool)

(declare-fun e!4276489 () Bool)

(assert (=> b!7116762 (= e!4276488 e!4276489)))

(declare-fun res!2903653 () Bool)

(assert (=> b!7116762 (=> (not res!2903653) (not e!4276489))))

(assert (=> b!7116762 (= res!2903653 (dynLambda!28060 lambda!432428 (h!75253 (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45)))))))

(declare-fun b!7116763 () Bool)

(assert (=> b!7116763 (= e!4276489 (forall!16858 (t!382778 (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45))) lambda!432428))))

(assert (= (and d!2221250 (not res!2903652)) b!7116762))

(assert (= (and b!7116762 res!2903653) b!7116763))

(declare-fun b_lambda!271503 () Bool)

(assert (=> (not b_lambda!271503) (not b!7116762)))

(declare-fun m!7835484 () Bool)

(assert (=> b!7116762 m!7835484))

(declare-fun m!7835486 () Bool)

(assert (=> b!7116763 m!7835486))

(assert (=> d!2221210 d!2221250))

(assert (=> d!2221210 d!2221208))

(declare-fun d!2221252 () Bool)

(assert (=> d!2221252 (forall!16858 (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45)) lambda!432428)))

(assert (=> d!2221252 true))

(declare-fun _$78!707 () Unit!162607)

(assert (=> d!2221252 (= (choose!54893 (exprs!7462 c!9994) (exprs!7462 auxCtx!45) lambda!432428) _$78!707)))

(declare-fun bs!1885610 () Bool)

(assert (= bs!1885610 d!2221252))

(assert (=> bs!1885610 m!7835344))

(assert (=> bs!1885610 m!7835344))

(assert (=> bs!1885610 m!7835400))

(assert (=> d!2221210 d!2221252))

(declare-fun d!2221254 () Bool)

(declare-fun res!2903654 () Bool)

(declare-fun e!4276490 () Bool)

(assert (=> d!2221254 (=> res!2903654 e!4276490)))

(assert (=> d!2221254 (= res!2903654 (is-Nil!68805 (exprs!7462 c!9994)))))

(assert (=> d!2221254 (= (forall!16858 (exprs!7462 c!9994) lambda!432428) e!4276490)))

(declare-fun b!7116764 () Bool)

(declare-fun e!4276491 () Bool)

(assert (=> b!7116764 (= e!4276490 e!4276491)))

(declare-fun res!2903655 () Bool)

(assert (=> b!7116764 (=> (not res!2903655) (not e!4276491))))

(assert (=> b!7116764 (= res!2903655 (dynLambda!28060 lambda!432428 (h!75253 (exprs!7462 c!9994))))))

(declare-fun b!7116765 () Bool)

(assert (=> b!7116765 (= e!4276491 (forall!16858 (t!382778 (exprs!7462 c!9994)) lambda!432428))))

(assert (= (and d!2221254 (not res!2903654)) b!7116764))

(assert (= (and b!7116764 res!2903655) b!7116765))

(declare-fun b_lambda!271505 () Bool)

(assert (=> (not b_lambda!271505) (not b!7116764)))

(declare-fun m!7835488 () Bool)

(assert (=> b!7116764 m!7835488))

(declare-fun m!7835490 () Bool)

(assert (=> b!7116765 m!7835490))

(assert (=> d!2221210 d!2221254))

(declare-fun bm!649922 () Bool)

(declare-fun call!649929 () Bool)

(declare-fun call!649927 () Bool)

(assert (=> bm!649922 (= call!649929 call!649927)))

(declare-fun b!7116766 () Bool)

(declare-fun res!2903660 () Bool)

(declare-fun e!4276496 () Bool)

(assert (=> b!7116766 (=> (not res!2903660) (not e!4276496))))

(assert (=> b!7116766 (= res!2903660 call!649929)))

(declare-fun e!4276495 () Bool)

(assert (=> b!7116766 (= e!4276495 e!4276496)))

(declare-fun bm!649923 () Bool)

(declare-fun c!1328136 () Bool)

(declare-fun c!1328137 () Bool)

(assert (=> bm!649923 (= call!649927 (validRegex!9241 (ite c!1328136 (reg!18297 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))) (ite c!1328137 (regOne!36449 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))) (regTwo!36448 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554)))))))))

(declare-fun b!7116767 () Bool)

(declare-fun e!4276492 () Bool)

(assert (=> b!7116767 (= e!4276492 e!4276495)))

(assert (=> b!7116767 (= c!1328137 (is-Union!17968 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))))))

(declare-fun b!7116768 () Bool)

(declare-fun e!4276497 () Bool)

(assert (=> b!7116768 (= e!4276492 e!4276497)))

(declare-fun res!2903659 () Bool)

(assert (=> b!7116768 (= res!2903659 (not (nullable!7605 (reg!18297 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))))))))

(assert (=> b!7116768 (=> (not res!2903659) (not e!4276497))))

(declare-fun b!7116769 () Bool)

(assert (=> b!7116769 (= e!4276497 call!649927)))

(declare-fun call!649928 () Bool)

(declare-fun bm!649924 () Bool)

(assert (=> bm!649924 (= call!649928 (validRegex!9241 (ite c!1328137 (regTwo!36449 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))) (regOne!36448 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))))))))

(declare-fun b!7116771 () Bool)

(declare-fun e!4276494 () Bool)

(assert (=> b!7116771 (= e!4276494 call!649929)))

(declare-fun b!7116772 () Bool)

(declare-fun res!2903657 () Bool)

(declare-fun e!4276498 () Bool)

(assert (=> b!7116772 (=> res!2903657 e!4276498)))

(assert (=> b!7116772 (= res!2903657 (not (is-Concat!26813 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554)))))))

(assert (=> b!7116772 (= e!4276495 e!4276498)))

(declare-fun d!2221256 () Bool)

(declare-fun res!2903658 () Bool)

(declare-fun e!4276493 () Bool)

(assert (=> d!2221256 (=> res!2903658 e!4276493)))

(assert (=> d!2221256 (= res!2903658 (is-ElementMatch!17968 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))))))

(assert (=> d!2221256 (= (validRegex!9241 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))) e!4276493)))

(declare-fun b!7116770 () Bool)

(assert (=> b!7116770 (= e!4276496 call!649928)))

(declare-fun b!7116773 () Bool)

(assert (=> b!7116773 (= e!4276498 e!4276494)))

(declare-fun res!2903656 () Bool)

(assert (=> b!7116773 (=> (not res!2903656) (not e!4276494))))

(assert (=> b!7116773 (= res!2903656 call!649928)))

(declare-fun b!7116774 () Bool)

(assert (=> b!7116774 (= e!4276493 e!4276492)))

(assert (=> b!7116774 (= c!1328136 (is-Star!17968 (ite c!1328110 (regTwo!36449 r!11554) (regOne!36448 r!11554))))))

(assert (= (and d!2221256 (not res!2903658)) b!7116774))

(assert (= (and b!7116774 c!1328136) b!7116768))

(assert (= (and b!7116774 (not c!1328136)) b!7116767))

(assert (= (and b!7116768 res!2903659) b!7116769))

(assert (= (and b!7116767 c!1328137) b!7116766))

(assert (= (and b!7116767 (not c!1328137)) b!7116772))

(assert (= (and b!7116766 res!2903660) b!7116770))

(assert (= (and b!7116772 (not res!2903657)) b!7116773))

(assert (= (and b!7116773 res!2903656) b!7116771))

(assert (= (or b!7116766 b!7116771) bm!649922))

(assert (= (or b!7116770 b!7116773) bm!649924))

(assert (= (or b!7116769 bm!649922) bm!649923))

(declare-fun m!7835492 () Bool)

(assert (=> bm!649923 m!7835492))

(declare-fun m!7835494 () Bool)

(assert (=> b!7116768 m!7835494))

(declare-fun m!7835496 () Bool)

(assert (=> bm!649924 m!7835496))

(assert (=> bm!649909 d!2221256))

(declare-fun bm!649929 () Bool)

(declare-fun call!649934 () Bool)

(declare-fun c!1328140 () Bool)

(assert (=> bm!649929 (= call!649934 (nullable!7605 (ite c!1328140 (regTwo!36449 (regOne!36448 r!11554)) (regOne!36448 (regOne!36448 r!11554)))))))

(declare-fun b!7116789 () Bool)

(declare-fun e!4276512 () Bool)

(declare-fun call!649935 () Bool)

(assert (=> b!7116789 (= e!4276512 call!649935)))

(declare-fun b!7116790 () Bool)

(declare-fun e!4276514 () Bool)

(assert (=> b!7116790 (= e!4276514 call!649934)))

(declare-fun d!2221258 () Bool)

(declare-fun res!2903673 () Bool)

(declare-fun e!4276515 () Bool)

(assert (=> d!2221258 (=> res!2903673 e!4276515)))

(assert (=> d!2221258 (= res!2903673 (is-EmptyExpr!17968 (regOne!36448 r!11554)))))

(assert (=> d!2221258 (= (nullableFct!2949 (regOne!36448 r!11554)) e!4276515)))

(declare-fun bm!649930 () Bool)

(assert (=> bm!649930 (= call!649935 (nullable!7605 (ite c!1328140 (regOne!36449 (regOne!36448 r!11554)) (regTwo!36448 (regOne!36448 r!11554)))))))

(declare-fun b!7116791 () Bool)

(declare-fun e!4276513 () Bool)

(declare-fun e!4276516 () Bool)

(assert (=> b!7116791 (= e!4276513 e!4276516)))

(assert (=> b!7116791 (= c!1328140 (is-Union!17968 (regOne!36448 r!11554)))))

(declare-fun b!7116792 () Bool)

(declare-fun e!4276511 () Bool)

(assert (=> b!7116792 (= e!4276511 e!4276513)))

(declare-fun res!2903671 () Bool)

(assert (=> b!7116792 (=> res!2903671 e!4276513)))

(assert (=> b!7116792 (= res!2903671 (is-Star!17968 (regOne!36448 r!11554)))))

(declare-fun b!7116793 () Bool)

(assert (=> b!7116793 (= e!4276515 e!4276511)))

(declare-fun res!2903675 () Bool)

(assert (=> b!7116793 (=> (not res!2903675) (not e!4276511))))

(assert (=> b!7116793 (= res!2903675 (and (not (is-EmptyLang!17968 (regOne!36448 r!11554))) (not (is-ElementMatch!17968 (regOne!36448 r!11554)))))))

(declare-fun b!7116794 () Bool)

(assert (=> b!7116794 (= e!4276516 e!4276512)))

(declare-fun res!2903674 () Bool)

(assert (=> b!7116794 (= res!2903674 call!649934)))

(assert (=> b!7116794 (=> (not res!2903674) (not e!4276512))))

(declare-fun b!7116795 () Bool)

(assert (=> b!7116795 (= e!4276516 e!4276514)))

(declare-fun res!2903672 () Bool)

(assert (=> b!7116795 (= res!2903672 call!649935)))

(assert (=> b!7116795 (=> res!2903672 e!4276514)))

(assert (= (and d!2221258 (not res!2903673)) b!7116793))

(assert (= (and b!7116793 res!2903675) b!7116792))

(assert (= (and b!7116792 (not res!2903671)) b!7116791))

(assert (= (and b!7116791 c!1328140) b!7116795))

(assert (= (and b!7116791 (not c!1328140)) b!7116794))

(assert (= (and b!7116795 (not res!2903672)) b!7116790))

(assert (= (and b!7116794 res!2903674) b!7116789))

(assert (= (or b!7116795 b!7116789) bm!649930))

(assert (= (or b!7116790 b!7116794) bm!649929))

(declare-fun m!7835498 () Bool)

(assert (=> bm!649929 m!7835498))

(declare-fun m!7835500 () Bool)

(assert (=> bm!649930 m!7835500))

(assert (=> d!2221206 d!2221258))

(declare-fun b!7116798 () Bool)

(declare-fun e!4276517 () Bool)

(declare-fun tp!1958678 () Bool)

(assert (=> b!7116798 (= e!4276517 tp!1958678)))

(declare-fun b!7116799 () Bool)

(declare-fun tp!1958675 () Bool)

(declare-fun tp!1958679 () Bool)

(assert (=> b!7116799 (= e!4276517 (and tp!1958675 tp!1958679))))

(assert (=> b!7116630 (= tp!1958593 e!4276517)))

(declare-fun b!7116797 () Bool)

(declare-fun tp!1958676 () Bool)

(declare-fun tp!1958677 () Bool)

(assert (=> b!7116797 (= e!4276517 (and tp!1958676 tp!1958677))))

(declare-fun b!7116796 () Bool)

(assert (=> b!7116796 (= e!4276517 tp_is_empty!45169)))

(assert (= (and b!7116630 (is-ElementMatch!17968 (h!75253 (exprs!7462 c!9994)))) b!7116796))

(assert (= (and b!7116630 (is-Concat!26813 (h!75253 (exprs!7462 c!9994)))) b!7116797))

(assert (= (and b!7116630 (is-Star!17968 (h!75253 (exprs!7462 c!9994)))) b!7116798))

(assert (= (and b!7116630 (is-Union!17968 (h!75253 (exprs!7462 c!9994)))) b!7116799))

(declare-fun b!7116800 () Bool)

(declare-fun e!4276518 () Bool)

(declare-fun tp!1958680 () Bool)

(declare-fun tp!1958681 () Bool)

(assert (=> b!7116800 (= e!4276518 (and tp!1958680 tp!1958681))))

(assert (=> b!7116630 (= tp!1958594 e!4276518)))

(assert (= (and b!7116630 (is-Cons!68805 (t!382778 (exprs!7462 c!9994)))) b!7116800))

(declare-fun b!7116803 () Bool)

(declare-fun e!4276519 () Bool)

(declare-fun tp!1958685 () Bool)

(assert (=> b!7116803 (= e!4276519 tp!1958685)))

(declare-fun b!7116804 () Bool)

(declare-fun tp!1958682 () Bool)

(declare-fun tp!1958686 () Bool)

(assert (=> b!7116804 (= e!4276519 (and tp!1958682 tp!1958686))))

(assert (=> b!7116645 (= tp!1958607 e!4276519)))

(declare-fun b!7116802 () Bool)

(declare-fun tp!1958683 () Bool)

(declare-fun tp!1958684 () Bool)

(assert (=> b!7116802 (= e!4276519 (and tp!1958683 tp!1958684))))

(declare-fun b!7116801 () Bool)

(assert (=> b!7116801 (= e!4276519 tp_is_empty!45169)))

(assert (= (and b!7116645 (is-ElementMatch!17968 (regOne!36449 (reg!18297 r!11554)))) b!7116801))

(assert (= (and b!7116645 (is-Concat!26813 (regOne!36449 (reg!18297 r!11554)))) b!7116802))

(assert (= (and b!7116645 (is-Star!17968 (regOne!36449 (reg!18297 r!11554)))) b!7116803))

(assert (= (and b!7116645 (is-Union!17968 (regOne!36449 (reg!18297 r!11554)))) b!7116804))

(declare-fun b!7116807 () Bool)

(declare-fun e!4276520 () Bool)

(declare-fun tp!1958690 () Bool)

(assert (=> b!7116807 (= e!4276520 tp!1958690)))

(declare-fun b!7116808 () Bool)

(declare-fun tp!1958687 () Bool)

(declare-fun tp!1958691 () Bool)

(assert (=> b!7116808 (= e!4276520 (and tp!1958687 tp!1958691))))

(assert (=> b!7116645 (= tp!1958611 e!4276520)))

(declare-fun b!7116806 () Bool)

(declare-fun tp!1958688 () Bool)

(declare-fun tp!1958689 () Bool)

(assert (=> b!7116806 (= e!4276520 (and tp!1958688 tp!1958689))))

(declare-fun b!7116805 () Bool)

(assert (=> b!7116805 (= e!4276520 tp_is_empty!45169)))

(assert (= (and b!7116645 (is-ElementMatch!17968 (regTwo!36449 (reg!18297 r!11554)))) b!7116805))

(assert (= (and b!7116645 (is-Concat!26813 (regTwo!36449 (reg!18297 r!11554)))) b!7116806))

(assert (= (and b!7116645 (is-Star!17968 (regTwo!36449 (reg!18297 r!11554)))) b!7116807))

(assert (= (and b!7116645 (is-Union!17968 (regTwo!36449 (reg!18297 r!11554)))) b!7116808))

(declare-fun b!7116811 () Bool)

(declare-fun e!4276521 () Bool)

(declare-fun tp!1958695 () Bool)

(assert (=> b!7116811 (= e!4276521 tp!1958695)))

(declare-fun b!7116812 () Bool)

(declare-fun tp!1958692 () Bool)

(declare-fun tp!1958696 () Bool)

(assert (=> b!7116812 (= e!4276521 (and tp!1958692 tp!1958696))))

(assert (=> b!7116649 (= tp!1958612 e!4276521)))

(declare-fun b!7116810 () Bool)

(declare-fun tp!1958693 () Bool)

(declare-fun tp!1958694 () Bool)

(assert (=> b!7116810 (= e!4276521 (and tp!1958693 tp!1958694))))

(declare-fun b!7116809 () Bool)

(assert (=> b!7116809 (= e!4276521 tp_is_empty!45169)))

(assert (= (and b!7116649 (is-ElementMatch!17968 (regOne!36449 (regOne!36448 r!11554)))) b!7116809))

(assert (= (and b!7116649 (is-Concat!26813 (regOne!36449 (regOne!36448 r!11554)))) b!7116810))

(assert (= (and b!7116649 (is-Star!17968 (regOne!36449 (regOne!36448 r!11554)))) b!7116811))

(assert (= (and b!7116649 (is-Union!17968 (regOne!36449 (regOne!36448 r!11554)))) b!7116812))

(declare-fun b!7116815 () Bool)

(declare-fun e!4276522 () Bool)

(declare-fun tp!1958700 () Bool)

(assert (=> b!7116815 (= e!4276522 tp!1958700)))

(declare-fun b!7116816 () Bool)

(declare-fun tp!1958697 () Bool)

(declare-fun tp!1958701 () Bool)

(assert (=> b!7116816 (= e!4276522 (and tp!1958697 tp!1958701))))

(assert (=> b!7116649 (= tp!1958616 e!4276522)))

(declare-fun b!7116814 () Bool)

(declare-fun tp!1958698 () Bool)

(declare-fun tp!1958699 () Bool)

(assert (=> b!7116814 (= e!4276522 (and tp!1958698 tp!1958699))))

(declare-fun b!7116813 () Bool)

(assert (=> b!7116813 (= e!4276522 tp_is_empty!45169)))

(assert (= (and b!7116649 (is-ElementMatch!17968 (regTwo!36449 (regOne!36448 r!11554)))) b!7116813))

(assert (= (and b!7116649 (is-Concat!26813 (regTwo!36449 (regOne!36448 r!11554)))) b!7116814))

(assert (= (and b!7116649 (is-Star!17968 (regTwo!36449 (regOne!36448 r!11554)))) b!7116815))

(assert (= (and b!7116649 (is-Union!17968 (regTwo!36449 (regOne!36448 r!11554)))) b!7116816))

(declare-fun b!7116819 () Bool)

(declare-fun e!4276523 () Bool)

(declare-fun tp!1958705 () Bool)

(assert (=> b!7116819 (= e!4276523 tp!1958705)))

(declare-fun b!7116820 () Bool)

(declare-fun tp!1958702 () Bool)

(declare-fun tp!1958706 () Bool)

(assert (=> b!7116820 (= e!4276523 (and tp!1958702 tp!1958706))))

(assert (=> b!7116644 (= tp!1958610 e!4276523)))

(declare-fun b!7116818 () Bool)

(declare-fun tp!1958703 () Bool)

(declare-fun tp!1958704 () Bool)

(assert (=> b!7116818 (= e!4276523 (and tp!1958703 tp!1958704))))

(declare-fun b!7116817 () Bool)

(assert (=> b!7116817 (= e!4276523 tp_is_empty!45169)))

(assert (= (and b!7116644 (is-ElementMatch!17968 (reg!18297 (reg!18297 r!11554)))) b!7116817))

(assert (= (and b!7116644 (is-Concat!26813 (reg!18297 (reg!18297 r!11554)))) b!7116818))

(assert (= (and b!7116644 (is-Star!17968 (reg!18297 (reg!18297 r!11554)))) b!7116819))

(assert (= (and b!7116644 (is-Union!17968 (reg!18297 (reg!18297 r!11554)))) b!7116820))

(declare-fun b!7116823 () Bool)

(declare-fun e!4276524 () Bool)

(declare-fun tp!1958710 () Bool)

(assert (=> b!7116823 (= e!4276524 tp!1958710)))

(declare-fun b!7116824 () Bool)

(declare-fun tp!1958707 () Bool)

(declare-fun tp!1958711 () Bool)

(assert (=> b!7116824 (= e!4276524 (and tp!1958707 tp!1958711))))

(assert (=> b!7116653 (= tp!1958617 e!4276524)))

(declare-fun b!7116822 () Bool)

(declare-fun tp!1958708 () Bool)

(declare-fun tp!1958709 () Bool)

(assert (=> b!7116822 (= e!4276524 (and tp!1958708 tp!1958709))))

(declare-fun b!7116821 () Bool)

(assert (=> b!7116821 (= e!4276524 tp_is_empty!45169)))

(assert (= (and b!7116653 (is-ElementMatch!17968 (regOne!36449 (regTwo!36448 r!11554)))) b!7116821))

(assert (= (and b!7116653 (is-Concat!26813 (regOne!36449 (regTwo!36448 r!11554)))) b!7116822))

(assert (= (and b!7116653 (is-Star!17968 (regOne!36449 (regTwo!36448 r!11554)))) b!7116823))

(assert (= (and b!7116653 (is-Union!17968 (regOne!36449 (regTwo!36448 r!11554)))) b!7116824))

(declare-fun b!7116827 () Bool)

(declare-fun e!4276525 () Bool)

(declare-fun tp!1958715 () Bool)

(assert (=> b!7116827 (= e!4276525 tp!1958715)))

(declare-fun b!7116828 () Bool)

(declare-fun tp!1958712 () Bool)

(declare-fun tp!1958716 () Bool)

(assert (=> b!7116828 (= e!4276525 (and tp!1958712 tp!1958716))))

(assert (=> b!7116653 (= tp!1958621 e!4276525)))

(declare-fun b!7116826 () Bool)

(declare-fun tp!1958713 () Bool)

(declare-fun tp!1958714 () Bool)

(assert (=> b!7116826 (= e!4276525 (and tp!1958713 tp!1958714))))

(declare-fun b!7116825 () Bool)

(assert (=> b!7116825 (= e!4276525 tp_is_empty!45169)))

(assert (= (and b!7116653 (is-ElementMatch!17968 (regTwo!36449 (regTwo!36448 r!11554)))) b!7116825))

(assert (= (and b!7116653 (is-Concat!26813 (regTwo!36449 (regTwo!36448 r!11554)))) b!7116826))

(assert (= (and b!7116653 (is-Star!17968 (regTwo!36449 (regTwo!36448 r!11554)))) b!7116827))

(assert (= (and b!7116653 (is-Union!17968 (regTwo!36449 (regTwo!36448 r!11554)))) b!7116828))

(declare-fun b!7116831 () Bool)

(declare-fun e!4276526 () Bool)

(declare-fun tp!1958720 () Bool)

(assert (=> b!7116831 (= e!4276526 tp!1958720)))

(declare-fun b!7116832 () Bool)

(declare-fun tp!1958717 () Bool)

(declare-fun tp!1958721 () Bool)

(assert (=> b!7116832 (= e!4276526 (and tp!1958717 tp!1958721))))

(assert (=> b!7116648 (= tp!1958615 e!4276526)))

(declare-fun b!7116830 () Bool)

(declare-fun tp!1958718 () Bool)

(declare-fun tp!1958719 () Bool)

(assert (=> b!7116830 (= e!4276526 (and tp!1958718 tp!1958719))))

(declare-fun b!7116829 () Bool)

(assert (=> b!7116829 (= e!4276526 tp_is_empty!45169)))

(assert (= (and b!7116648 (is-ElementMatch!17968 (reg!18297 (regOne!36448 r!11554)))) b!7116829))

(assert (= (and b!7116648 (is-Concat!26813 (reg!18297 (regOne!36448 r!11554)))) b!7116830))

(assert (= (and b!7116648 (is-Star!17968 (reg!18297 (regOne!36448 r!11554)))) b!7116831))

(assert (= (and b!7116648 (is-Union!17968 (reg!18297 (regOne!36448 r!11554)))) b!7116832))

(declare-fun b!7116835 () Bool)

(declare-fun e!4276527 () Bool)

(declare-fun tp!1958725 () Bool)

(assert (=> b!7116835 (= e!4276527 tp!1958725)))

(declare-fun b!7116836 () Bool)

(declare-fun tp!1958722 () Bool)

(declare-fun tp!1958726 () Bool)

(assert (=> b!7116836 (= e!4276527 (and tp!1958722 tp!1958726))))

(assert (=> b!7116657 (= tp!1958622 e!4276527)))

(declare-fun b!7116834 () Bool)

(declare-fun tp!1958723 () Bool)

(declare-fun tp!1958724 () Bool)

(assert (=> b!7116834 (= e!4276527 (and tp!1958723 tp!1958724))))

(declare-fun b!7116833 () Bool)

(assert (=> b!7116833 (= e!4276527 tp_is_empty!45169)))

(assert (= (and b!7116657 (is-ElementMatch!17968 (regOne!36449 (regOne!36449 r!11554)))) b!7116833))

(assert (= (and b!7116657 (is-Concat!26813 (regOne!36449 (regOne!36449 r!11554)))) b!7116834))

(assert (= (and b!7116657 (is-Star!17968 (regOne!36449 (regOne!36449 r!11554)))) b!7116835))

(assert (= (and b!7116657 (is-Union!17968 (regOne!36449 (regOne!36449 r!11554)))) b!7116836))

(declare-fun b!7116839 () Bool)

(declare-fun e!4276528 () Bool)

(declare-fun tp!1958730 () Bool)

(assert (=> b!7116839 (= e!4276528 tp!1958730)))

(declare-fun b!7116840 () Bool)

(declare-fun tp!1958727 () Bool)

(declare-fun tp!1958731 () Bool)

(assert (=> b!7116840 (= e!4276528 (and tp!1958727 tp!1958731))))

(assert (=> b!7116657 (= tp!1958626 e!4276528)))

(declare-fun b!7116838 () Bool)

(declare-fun tp!1958728 () Bool)

(declare-fun tp!1958729 () Bool)

(assert (=> b!7116838 (= e!4276528 (and tp!1958728 tp!1958729))))

(declare-fun b!7116837 () Bool)

(assert (=> b!7116837 (= e!4276528 tp_is_empty!45169)))

(assert (= (and b!7116657 (is-ElementMatch!17968 (regTwo!36449 (regOne!36449 r!11554)))) b!7116837))

(assert (= (and b!7116657 (is-Concat!26813 (regTwo!36449 (regOne!36449 r!11554)))) b!7116838))

(assert (= (and b!7116657 (is-Star!17968 (regTwo!36449 (regOne!36449 r!11554)))) b!7116839))

(assert (= (and b!7116657 (is-Union!17968 (regTwo!36449 (regOne!36449 r!11554)))) b!7116840))

(declare-fun b!7116843 () Bool)

(declare-fun e!4276529 () Bool)

(declare-fun tp!1958735 () Bool)

(assert (=> b!7116843 (= e!4276529 tp!1958735)))

(declare-fun b!7116844 () Bool)

(declare-fun tp!1958732 () Bool)

(declare-fun tp!1958736 () Bool)

(assert (=> b!7116844 (= e!4276529 (and tp!1958732 tp!1958736))))

(assert (=> b!7116643 (= tp!1958608 e!4276529)))

(declare-fun b!7116842 () Bool)

(declare-fun tp!1958733 () Bool)

(declare-fun tp!1958734 () Bool)

(assert (=> b!7116842 (= e!4276529 (and tp!1958733 tp!1958734))))

(declare-fun b!7116841 () Bool)

(assert (=> b!7116841 (= e!4276529 tp_is_empty!45169)))

(assert (= (and b!7116643 (is-ElementMatch!17968 (regOne!36448 (reg!18297 r!11554)))) b!7116841))

(assert (= (and b!7116643 (is-Concat!26813 (regOne!36448 (reg!18297 r!11554)))) b!7116842))

(assert (= (and b!7116643 (is-Star!17968 (regOne!36448 (reg!18297 r!11554)))) b!7116843))

(assert (= (and b!7116643 (is-Union!17968 (regOne!36448 (reg!18297 r!11554)))) b!7116844))

(declare-fun b!7116847 () Bool)

(declare-fun e!4276530 () Bool)

(declare-fun tp!1958740 () Bool)

(assert (=> b!7116847 (= e!4276530 tp!1958740)))

(declare-fun b!7116848 () Bool)

(declare-fun tp!1958737 () Bool)

(declare-fun tp!1958741 () Bool)

(assert (=> b!7116848 (= e!4276530 (and tp!1958737 tp!1958741))))

(assert (=> b!7116643 (= tp!1958609 e!4276530)))

(declare-fun b!7116846 () Bool)

(declare-fun tp!1958738 () Bool)

(declare-fun tp!1958739 () Bool)

(assert (=> b!7116846 (= e!4276530 (and tp!1958738 tp!1958739))))

(declare-fun b!7116845 () Bool)

(assert (=> b!7116845 (= e!4276530 tp_is_empty!45169)))

(assert (= (and b!7116643 (is-ElementMatch!17968 (regTwo!36448 (reg!18297 r!11554)))) b!7116845))

(assert (= (and b!7116643 (is-Concat!26813 (regTwo!36448 (reg!18297 r!11554)))) b!7116846))

(assert (= (and b!7116643 (is-Star!17968 (regTwo!36448 (reg!18297 r!11554)))) b!7116847))

(assert (= (and b!7116643 (is-Union!17968 (regTwo!36448 (reg!18297 r!11554)))) b!7116848))

(declare-fun b!7116851 () Bool)

(declare-fun e!4276531 () Bool)

(declare-fun tp!1958745 () Bool)

(assert (=> b!7116851 (= e!4276531 tp!1958745)))

(declare-fun b!7116852 () Bool)

(declare-fun tp!1958742 () Bool)

(declare-fun tp!1958746 () Bool)

(assert (=> b!7116852 (= e!4276531 (and tp!1958742 tp!1958746))))

(assert (=> b!7116652 (= tp!1958620 e!4276531)))

(declare-fun b!7116850 () Bool)

(declare-fun tp!1958743 () Bool)

(declare-fun tp!1958744 () Bool)

(assert (=> b!7116850 (= e!4276531 (and tp!1958743 tp!1958744))))

(declare-fun b!7116849 () Bool)

(assert (=> b!7116849 (= e!4276531 tp_is_empty!45169)))

(assert (= (and b!7116652 (is-ElementMatch!17968 (reg!18297 (regTwo!36448 r!11554)))) b!7116849))

(assert (= (and b!7116652 (is-Concat!26813 (reg!18297 (regTwo!36448 r!11554)))) b!7116850))

(assert (= (and b!7116652 (is-Star!17968 (reg!18297 (regTwo!36448 r!11554)))) b!7116851))

(assert (= (and b!7116652 (is-Union!17968 (reg!18297 (regTwo!36448 r!11554)))) b!7116852))

(declare-fun b!7116855 () Bool)

(declare-fun e!4276532 () Bool)

(declare-fun tp!1958750 () Bool)

(assert (=> b!7116855 (= e!4276532 tp!1958750)))

(declare-fun b!7116856 () Bool)

(declare-fun tp!1958747 () Bool)

(declare-fun tp!1958751 () Bool)

(assert (=> b!7116856 (= e!4276532 (and tp!1958747 tp!1958751))))

(assert (=> b!7116661 (= tp!1958627 e!4276532)))

(declare-fun b!7116854 () Bool)

(declare-fun tp!1958748 () Bool)

(declare-fun tp!1958749 () Bool)

(assert (=> b!7116854 (= e!4276532 (and tp!1958748 tp!1958749))))

(declare-fun b!7116853 () Bool)

(assert (=> b!7116853 (= e!4276532 tp_is_empty!45169)))

(assert (= (and b!7116661 (is-ElementMatch!17968 (regOne!36449 (regTwo!36449 r!11554)))) b!7116853))

(assert (= (and b!7116661 (is-Concat!26813 (regOne!36449 (regTwo!36449 r!11554)))) b!7116854))

(assert (= (and b!7116661 (is-Star!17968 (regOne!36449 (regTwo!36449 r!11554)))) b!7116855))

(assert (= (and b!7116661 (is-Union!17968 (regOne!36449 (regTwo!36449 r!11554)))) b!7116856))

(declare-fun b!7116859 () Bool)

(declare-fun e!4276533 () Bool)

(declare-fun tp!1958755 () Bool)

(assert (=> b!7116859 (= e!4276533 tp!1958755)))

(declare-fun b!7116860 () Bool)

(declare-fun tp!1958752 () Bool)

(declare-fun tp!1958756 () Bool)

(assert (=> b!7116860 (= e!4276533 (and tp!1958752 tp!1958756))))

(assert (=> b!7116661 (= tp!1958631 e!4276533)))

(declare-fun b!7116858 () Bool)

(declare-fun tp!1958753 () Bool)

(declare-fun tp!1958754 () Bool)

(assert (=> b!7116858 (= e!4276533 (and tp!1958753 tp!1958754))))

(declare-fun b!7116857 () Bool)

(assert (=> b!7116857 (= e!4276533 tp_is_empty!45169)))

(assert (= (and b!7116661 (is-ElementMatch!17968 (regTwo!36449 (regTwo!36449 r!11554)))) b!7116857))

(assert (= (and b!7116661 (is-Concat!26813 (regTwo!36449 (regTwo!36449 r!11554)))) b!7116858))

(assert (= (and b!7116661 (is-Star!17968 (regTwo!36449 (regTwo!36449 r!11554)))) b!7116859))

(assert (= (and b!7116661 (is-Union!17968 (regTwo!36449 (regTwo!36449 r!11554)))) b!7116860))

(declare-fun b!7116863 () Bool)

(declare-fun e!4276534 () Bool)

(declare-fun tp!1958760 () Bool)

(assert (=> b!7116863 (= e!4276534 tp!1958760)))

(declare-fun b!7116864 () Bool)

(declare-fun tp!1958757 () Bool)

(declare-fun tp!1958761 () Bool)

(assert (=> b!7116864 (= e!4276534 (and tp!1958757 tp!1958761))))

(assert (=> b!7116647 (= tp!1958613 e!4276534)))

(declare-fun b!7116862 () Bool)

(declare-fun tp!1958758 () Bool)

(declare-fun tp!1958759 () Bool)

(assert (=> b!7116862 (= e!4276534 (and tp!1958758 tp!1958759))))

(declare-fun b!7116861 () Bool)

(assert (=> b!7116861 (= e!4276534 tp_is_empty!45169)))

(assert (= (and b!7116647 (is-ElementMatch!17968 (regOne!36448 (regOne!36448 r!11554)))) b!7116861))

(assert (= (and b!7116647 (is-Concat!26813 (regOne!36448 (regOne!36448 r!11554)))) b!7116862))

(assert (= (and b!7116647 (is-Star!17968 (regOne!36448 (regOne!36448 r!11554)))) b!7116863))

(assert (= (and b!7116647 (is-Union!17968 (regOne!36448 (regOne!36448 r!11554)))) b!7116864))

(declare-fun b!7116867 () Bool)

(declare-fun e!4276535 () Bool)

(declare-fun tp!1958765 () Bool)

(assert (=> b!7116867 (= e!4276535 tp!1958765)))

(declare-fun b!7116868 () Bool)

(declare-fun tp!1958762 () Bool)

(declare-fun tp!1958766 () Bool)

(assert (=> b!7116868 (= e!4276535 (and tp!1958762 tp!1958766))))

(assert (=> b!7116647 (= tp!1958614 e!4276535)))

(declare-fun b!7116866 () Bool)

(declare-fun tp!1958763 () Bool)

(declare-fun tp!1958764 () Bool)

(assert (=> b!7116866 (= e!4276535 (and tp!1958763 tp!1958764))))

(declare-fun b!7116865 () Bool)

(assert (=> b!7116865 (= e!4276535 tp_is_empty!45169)))

(assert (= (and b!7116647 (is-ElementMatch!17968 (regTwo!36448 (regOne!36448 r!11554)))) b!7116865))

(assert (= (and b!7116647 (is-Concat!26813 (regTwo!36448 (regOne!36448 r!11554)))) b!7116866))

(assert (= (and b!7116647 (is-Star!17968 (regTwo!36448 (regOne!36448 r!11554)))) b!7116867))

(assert (= (and b!7116647 (is-Union!17968 (regTwo!36448 (regOne!36448 r!11554)))) b!7116868))

(declare-fun b!7116871 () Bool)

(declare-fun e!4276536 () Bool)

(declare-fun tp!1958770 () Bool)

(assert (=> b!7116871 (= e!4276536 tp!1958770)))

(declare-fun b!7116872 () Bool)

(declare-fun tp!1958767 () Bool)

(declare-fun tp!1958771 () Bool)

(assert (=> b!7116872 (= e!4276536 (and tp!1958767 tp!1958771))))

(assert (=> b!7116656 (= tp!1958625 e!4276536)))

(declare-fun b!7116870 () Bool)

(declare-fun tp!1958768 () Bool)

(declare-fun tp!1958769 () Bool)

(assert (=> b!7116870 (= e!4276536 (and tp!1958768 tp!1958769))))

(declare-fun b!7116869 () Bool)

(assert (=> b!7116869 (= e!4276536 tp_is_empty!45169)))

(assert (= (and b!7116656 (is-ElementMatch!17968 (reg!18297 (regOne!36449 r!11554)))) b!7116869))

(assert (= (and b!7116656 (is-Concat!26813 (reg!18297 (regOne!36449 r!11554)))) b!7116870))

(assert (= (and b!7116656 (is-Star!17968 (reg!18297 (regOne!36449 r!11554)))) b!7116871))

(assert (= (and b!7116656 (is-Union!17968 (reg!18297 (regOne!36449 r!11554)))) b!7116872))

(declare-fun b!7116875 () Bool)

(declare-fun e!4276537 () Bool)

(declare-fun tp!1958775 () Bool)

(assert (=> b!7116875 (= e!4276537 tp!1958775)))

(declare-fun b!7116876 () Bool)

(declare-fun tp!1958772 () Bool)

(declare-fun tp!1958776 () Bool)

(assert (=> b!7116876 (= e!4276537 (and tp!1958772 tp!1958776))))

(assert (=> b!7116651 (= tp!1958618 e!4276537)))

(declare-fun b!7116874 () Bool)

(declare-fun tp!1958773 () Bool)

(declare-fun tp!1958774 () Bool)

(assert (=> b!7116874 (= e!4276537 (and tp!1958773 tp!1958774))))

(declare-fun b!7116873 () Bool)

(assert (=> b!7116873 (= e!4276537 tp_is_empty!45169)))

(assert (= (and b!7116651 (is-ElementMatch!17968 (regOne!36448 (regTwo!36448 r!11554)))) b!7116873))

(assert (= (and b!7116651 (is-Concat!26813 (regOne!36448 (regTwo!36448 r!11554)))) b!7116874))

(assert (= (and b!7116651 (is-Star!17968 (regOne!36448 (regTwo!36448 r!11554)))) b!7116875))

(assert (= (and b!7116651 (is-Union!17968 (regOne!36448 (regTwo!36448 r!11554)))) b!7116876))

(declare-fun b!7116879 () Bool)

(declare-fun e!4276538 () Bool)

(declare-fun tp!1958780 () Bool)

(assert (=> b!7116879 (= e!4276538 tp!1958780)))

(declare-fun b!7116880 () Bool)

(declare-fun tp!1958777 () Bool)

(declare-fun tp!1958781 () Bool)

(assert (=> b!7116880 (= e!4276538 (and tp!1958777 tp!1958781))))

(assert (=> b!7116651 (= tp!1958619 e!4276538)))

(declare-fun b!7116878 () Bool)

(declare-fun tp!1958778 () Bool)

(declare-fun tp!1958779 () Bool)

(assert (=> b!7116878 (= e!4276538 (and tp!1958778 tp!1958779))))

(declare-fun b!7116877 () Bool)

(assert (=> b!7116877 (= e!4276538 tp_is_empty!45169)))

(assert (= (and b!7116651 (is-ElementMatch!17968 (regTwo!36448 (regTwo!36448 r!11554)))) b!7116877))

(assert (= (and b!7116651 (is-Concat!26813 (regTwo!36448 (regTwo!36448 r!11554)))) b!7116878))

(assert (= (and b!7116651 (is-Star!17968 (regTwo!36448 (regTwo!36448 r!11554)))) b!7116879))

(assert (= (and b!7116651 (is-Union!17968 (regTwo!36448 (regTwo!36448 r!11554)))) b!7116880))

(declare-fun b!7116883 () Bool)

(declare-fun e!4276539 () Bool)

(declare-fun tp!1958785 () Bool)

(assert (=> b!7116883 (= e!4276539 tp!1958785)))

(declare-fun b!7116884 () Bool)

(declare-fun tp!1958782 () Bool)

(declare-fun tp!1958786 () Bool)

(assert (=> b!7116884 (= e!4276539 (and tp!1958782 tp!1958786))))

(assert (=> b!7116660 (= tp!1958630 e!4276539)))

(declare-fun b!7116882 () Bool)

(declare-fun tp!1958783 () Bool)

(declare-fun tp!1958784 () Bool)

(assert (=> b!7116882 (= e!4276539 (and tp!1958783 tp!1958784))))

(declare-fun b!7116881 () Bool)

(assert (=> b!7116881 (= e!4276539 tp_is_empty!45169)))

(assert (= (and b!7116660 (is-ElementMatch!17968 (reg!18297 (regTwo!36449 r!11554)))) b!7116881))

(assert (= (and b!7116660 (is-Concat!26813 (reg!18297 (regTwo!36449 r!11554)))) b!7116882))

(assert (= (and b!7116660 (is-Star!17968 (reg!18297 (regTwo!36449 r!11554)))) b!7116883))

(assert (= (and b!7116660 (is-Union!17968 (reg!18297 (regTwo!36449 r!11554)))) b!7116884))

(declare-fun b!7116887 () Bool)

(declare-fun e!4276540 () Bool)

(declare-fun tp!1958790 () Bool)

(assert (=> b!7116887 (= e!4276540 tp!1958790)))

(declare-fun b!7116888 () Bool)

(declare-fun tp!1958787 () Bool)

(declare-fun tp!1958791 () Bool)

(assert (=> b!7116888 (= e!4276540 (and tp!1958787 tp!1958791))))

(assert (=> b!7116631 (= tp!1958595 e!4276540)))

(declare-fun b!7116886 () Bool)

(declare-fun tp!1958788 () Bool)

(declare-fun tp!1958789 () Bool)

(assert (=> b!7116886 (= e!4276540 (and tp!1958788 tp!1958789))))

(declare-fun b!7116885 () Bool)

(assert (=> b!7116885 (= e!4276540 tp_is_empty!45169)))

(assert (= (and b!7116631 (is-ElementMatch!17968 (h!75253 (exprs!7462 auxCtx!45)))) b!7116885))

(assert (= (and b!7116631 (is-Concat!26813 (h!75253 (exprs!7462 auxCtx!45)))) b!7116886))

(assert (= (and b!7116631 (is-Star!17968 (h!75253 (exprs!7462 auxCtx!45)))) b!7116887))

(assert (= (and b!7116631 (is-Union!17968 (h!75253 (exprs!7462 auxCtx!45)))) b!7116888))

(declare-fun b!7116889 () Bool)

(declare-fun e!4276541 () Bool)

(declare-fun tp!1958792 () Bool)

(declare-fun tp!1958793 () Bool)

(assert (=> b!7116889 (= e!4276541 (and tp!1958792 tp!1958793))))

(assert (=> b!7116631 (= tp!1958596 e!4276541)))

(assert (= (and b!7116631 (is-Cons!68805 (t!382778 (exprs!7462 auxCtx!45)))) b!7116889))

(declare-fun b!7116892 () Bool)

(declare-fun e!4276542 () Bool)

(declare-fun tp!1958797 () Bool)

(assert (=> b!7116892 (= e!4276542 tp!1958797)))

(declare-fun b!7116893 () Bool)

(declare-fun tp!1958794 () Bool)

(declare-fun tp!1958798 () Bool)

(assert (=> b!7116893 (= e!4276542 (and tp!1958794 tp!1958798))))

(assert (=> b!7116655 (= tp!1958623 e!4276542)))

(declare-fun b!7116891 () Bool)

(declare-fun tp!1958795 () Bool)

(declare-fun tp!1958796 () Bool)

(assert (=> b!7116891 (= e!4276542 (and tp!1958795 tp!1958796))))

(declare-fun b!7116890 () Bool)

(assert (=> b!7116890 (= e!4276542 tp_is_empty!45169)))

(assert (= (and b!7116655 (is-ElementMatch!17968 (regOne!36448 (regOne!36449 r!11554)))) b!7116890))

(assert (= (and b!7116655 (is-Concat!26813 (regOne!36448 (regOne!36449 r!11554)))) b!7116891))

(assert (= (and b!7116655 (is-Star!17968 (regOne!36448 (regOne!36449 r!11554)))) b!7116892))

(assert (= (and b!7116655 (is-Union!17968 (regOne!36448 (regOne!36449 r!11554)))) b!7116893))

(declare-fun b!7116896 () Bool)

(declare-fun e!4276543 () Bool)

(declare-fun tp!1958802 () Bool)

(assert (=> b!7116896 (= e!4276543 tp!1958802)))

(declare-fun b!7116897 () Bool)

(declare-fun tp!1958799 () Bool)

(declare-fun tp!1958803 () Bool)

(assert (=> b!7116897 (= e!4276543 (and tp!1958799 tp!1958803))))

(assert (=> b!7116655 (= tp!1958624 e!4276543)))

(declare-fun b!7116895 () Bool)

(declare-fun tp!1958800 () Bool)

(declare-fun tp!1958801 () Bool)

(assert (=> b!7116895 (= e!4276543 (and tp!1958800 tp!1958801))))

(declare-fun b!7116894 () Bool)

(assert (=> b!7116894 (= e!4276543 tp_is_empty!45169)))

(assert (= (and b!7116655 (is-ElementMatch!17968 (regTwo!36448 (regOne!36449 r!11554)))) b!7116894))

(assert (= (and b!7116655 (is-Concat!26813 (regTwo!36448 (regOne!36449 r!11554)))) b!7116895))

(assert (= (and b!7116655 (is-Star!17968 (regTwo!36448 (regOne!36449 r!11554)))) b!7116896))

(assert (= (and b!7116655 (is-Union!17968 (regTwo!36448 (regOne!36449 r!11554)))) b!7116897))

(declare-fun b!7116900 () Bool)

(declare-fun e!4276544 () Bool)

(declare-fun tp!1958807 () Bool)

(assert (=> b!7116900 (= e!4276544 tp!1958807)))

(declare-fun b!7116901 () Bool)

(declare-fun tp!1958804 () Bool)

(declare-fun tp!1958808 () Bool)

(assert (=> b!7116901 (= e!4276544 (and tp!1958804 tp!1958808))))

(assert (=> b!7116659 (= tp!1958628 e!4276544)))

(declare-fun b!7116899 () Bool)

(declare-fun tp!1958805 () Bool)

(declare-fun tp!1958806 () Bool)

(assert (=> b!7116899 (= e!4276544 (and tp!1958805 tp!1958806))))

(declare-fun b!7116898 () Bool)

(assert (=> b!7116898 (= e!4276544 tp_is_empty!45169)))

(assert (= (and b!7116659 (is-ElementMatch!17968 (regOne!36448 (regTwo!36449 r!11554)))) b!7116898))

(assert (= (and b!7116659 (is-Concat!26813 (regOne!36448 (regTwo!36449 r!11554)))) b!7116899))

(assert (= (and b!7116659 (is-Star!17968 (regOne!36448 (regTwo!36449 r!11554)))) b!7116900))

(assert (= (and b!7116659 (is-Union!17968 (regOne!36448 (regTwo!36449 r!11554)))) b!7116901))

(declare-fun b!7116904 () Bool)

(declare-fun e!4276545 () Bool)

(declare-fun tp!1958812 () Bool)

(assert (=> b!7116904 (= e!4276545 tp!1958812)))

(declare-fun b!7116905 () Bool)

(declare-fun tp!1958809 () Bool)

(declare-fun tp!1958813 () Bool)

(assert (=> b!7116905 (= e!4276545 (and tp!1958809 tp!1958813))))

(assert (=> b!7116659 (= tp!1958629 e!4276545)))

(declare-fun b!7116903 () Bool)

(declare-fun tp!1958810 () Bool)

(declare-fun tp!1958811 () Bool)

(assert (=> b!7116903 (= e!4276545 (and tp!1958810 tp!1958811))))

(declare-fun b!7116902 () Bool)

(assert (=> b!7116902 (= e!4276545 tp_is_empty!45169)))

(assert (= (and b!7116659 (is-ElementMatch!17968 (regTwo!36448 (regTwo!36449 r!11554)))) b!7116902))

(assert (= (and b!7116659 (is-Concat!26813 (regTwo!36448 (regTwo!36449 r!11554)))) b!7116903))

(assert (= (and b!7116659 (is-Star!17968 (regTwo!36448 (regTwo!36449 r!11554)))) b!7116904))

(assert (= (and b!7116659 (is-Union!17968 (regTwo!36448 (regTwo!36449 r!11554)))) b!7116905))

(declare-fun b_lambda!271507 () Bool)

(assert (= b_lambda!271505 (or b!7116527 b_lambda!271507)))

(declare-fun bs!1885611 () Bool)

(declare-fun d!2221260 () Bool)

(assert (= bs!1885611 (and d!2221260 b!7116527)))

(assert (=> bs!1885611 (= (dynLambda!28060 lambda!432428 (h!75253 (exprs!7462 c!9994))) (validRegex!9241 (h!75253 (exprs!7462 c!9994))))))

(declare-fun m!7835502 () Bool)

(assert (=> bs!1885611 m!7835502))

(assert (=> b!7116764 d!2221260))

(declare-fun b_lambda!271509 () Bool)

(assert (= b_lambda!271499 (or d!2221198 b_lambda!271509)))

(declare-fun bs!1885612 () Bool)

(declare-fun d!2221262 () Bool)

(assert (= bs!1885612 (and d!2221262 d!2221198)))

(assert (=> bs!1885612 (= (dynLambda!28060 lambda!432439 (h!75253 (exprs!7462 c!9994))) (validRegex!9241 (h!75253 (exprs!7462 c!9994))))))

(assert (=> bs!1885612 m!7835502))

(assert (=> b!7116745 d!2221262))

(declare-fun b_lambda!271511 () Bool)

(assert (= b_lambda!271497 (or d!2221212 b_lambda!271511)))

(declare-fun bs!1885613 () Bool)

(declare-fun d!2221264 () Bool)

(assert (= bs!1885613 (and d!2221264 d!2221212)))

(assert (=> bs!1885613 (= (dynLambda!28060 lambda!432441 (h!75253 (exprs!7462 (Context!13925 ($colon$colon!2812 lt!2560760 r!11554))))) (validRegex!9241 (h!75253 (exprs!7462 (Context!13925 ($colon$colon!2812 lt!2560760 r!11554))))))))

(declare-fun m!7835504 () Bool)

(assert (=> bs!1885613 m!7835504))

(assert (=> b!7116743 d!2221264))

(declare-fun b_lambda!271513 () Bool)

(assert (= b_lambda!271503 (or b!7116527 b_lambda!271513)))

(declare-fun bs!1885614 () Bool)

(declare-fun d!2221266 () Bool)

(assert (= bs!1885614 (and d!2221266 b!7116527)))

(assert (=> bs!1885614 (= (dynLambda!28060 lambda!432428 (h!75253 (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45)))) (validRegex!9241 (h!75253 (++!16120 (exprs!7462 c!9994) (exprs!7462 auxCtx!45)))))))

(declare-fun m!7835506 () Bool)

(assert (=> bs!1885614 m!7835506))

(assert (=> b!7116762 d!2221266))

(declare-fun b_lambda!271515 () Bool)

(assert (= b_lambda!271501 (or d!2221202 b_lambda!271515)))

(declare-fun bs!1885615 () Bool)

(declare-fun d!2221268 () Bool)

(assert (= bs!1885615 (and d!2221268 d!2221202)))

(assert (=> bs!1885615 (= (dynLambda!28060 lambda!432440 (h!75253 (exprs!7462 auxCtx!45))) (validRegex!9241 (h!75253 (exprs!7462 auxCtx!45))))))

(declare-fun m!7835508 () Bool)

(assert (=> bs!1885615 m!7835508))

(assert (=> b!7116760 d!2221268))

(push 1)

(assert (not b!7116893))

(assert (not b!7116746))

(assert (not b!7116886))

(assert (not b!7116838))

(assert (not b!7116876))

(assert (not b!7116823))

(assert (not b!7116828))

(assert (not b!7116798))

(assert (not b!7116855))

(assert (not b!7116824))

(assert (not bm!649930))

(assert (not b!7116830))

(assert (not b!7116763))

(assert (not b!7116803))

(assert (not b!7116768))

(assert (not d!2221244))

(assert (not bs!1885614))

(assert (not b!7116867))

(assert (not b!7116834))

(assert (not b!7116847))

(assert (not b!7116859))

(assert (not b!7116836))

(assert (not b!7116726))

(assert (not b!7116897))

(assert (not b!7116868))

(assert (not d!2221226))

(assert (not b!7116870))

(assert (not b!7116878))

(assert (not b!7116802))

(assert (not bm!649920))

(assert (not b!7116879))

(assert (not b!7116882))

(assert (not b!7116797))

(assert (not b!7116854))

(assert (not b!7116808))

(assert (not b!7116799))

(assert (not d!2221252))

(assert (not b!7116826))

(assert (not b!7116872))

(assert (not b!7116738))

(assert (not b!7116748))

(assert (not b!7116863))

(assert (not b!7116844))

(assert (not b!7116827))

(assert (not b!7116832))

(assert (not b!7116862))

(assert (not b!7116811))

(assert (not b!7116891))

(assert (not b!7116904))

(assert (not b!7116887))

(assert (not b!7116815))

(assert (not b!7116848))

(assert (not b!7116883))

(assert (not b!7116892))

(assert (not b!7116903))

(assert (not b!7116846))

(assert (not b!7116839))

(assert (not b!7116734))

(assert (not b_lambda!271511))

(assert (not bs!1885613))

(assert (not b!7116806))

(assert (not b!7116816))

(assert (not b!7116889))

(assert (not b!7116812))

(assert (not b!7116804))

(assert (not b!7116753))

(assert (not b!7116866))

(assert (not b!7116765))

(assert (not b!7116761))

(assert (not b!7116874))

(assert (not b!7116864))

(assert (not bm!649929))

(assert (not b!7116724))

(assert (not b!7116901))

(assert (not b!7116875))

(assert (not bs!1885615))

(assert (not b!7116884))

(assert (not b!7116852))

(assert (not b!7116819))

(assert (not bs!1885611))

(assert (not bm!649924))

(assert (not b_lambda!271507))

(assert (not b!7116888))

(assert (not b!7116807))

(assert (not b!7116850))

(assert (not b_lambda!271513))

(assert (not b!7116905))

(assert (not b!7116744))

(assert (not b_lambda!271515))

(assert (not b!7116814))

(assert (not b!7116818))

(assert (not b!7116842))

(assert tp_is_empty!45169)

(assert (not b!7116851))

(assert (not b!7116896))

(assert (not b!7116820))

(assert (not b!7116880))

(assert (not b!7116871))

(assert (not bm!649923))

(assert (not b!7116822))

(assert (not b!7116749))

(assert (not b!7116736))

(assert (not b!7116900))

(assert (not b!7116843))

(assert (not b!7116835))

(assert (not b!7116899))

(assert (not b!7116800))

(assert (not b!7116840))

(assert (not b_lambda!271509))

(assert (not b!7116858))

(assert (not b!7116728))

(assert (not b!7116831))

(assert (not bs!1885612))

(assert (not bm!649921))

(assert (not b!7116895))

(assert (not b!7116856))

(assert (not b!7116810))

(assert (not b!7116860))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

