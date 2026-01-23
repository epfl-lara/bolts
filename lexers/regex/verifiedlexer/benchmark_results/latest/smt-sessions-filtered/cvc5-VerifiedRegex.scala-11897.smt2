; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667304 () Bool)

(assert start!667304)

(declare-fun b!6953328 () Bool)

(assert (=> b!6953328 true))

(assert (=> b!6953328 true))

(declare-fun bs!1857840 () Bool)

(declare-fun b!6953334 () Bool)

(assert (= bs!1857840 (and b!6953334 b!6953328)))

(declare-fun lambda!396620 () Int)

(declare-fun lambda!396619 () Int)

(assert (=> bs!1857840 (not (= lambda!396620 lambda!396619))))

(assert (=> b!6953334 true))

(assert (=> b!6953334 true))

(declare-fun b!6953324 () Bool)

(declare-fun e!4181534 () Bool)

(declare-fun tp_is_empty!43305 () Bool)

(assert (=> b!6953324 (= e!4181534 tp_is_empty!43305)))

(declare-fun b!6953325 () Bool)

(declare-fun e!4181532 () Bool)

(declare-datatypes ((C!34350 0))(
  ( (C!34351 (val!26877 Int)) )
))
(declare-datatypes ((Regex!17040 0))(
  ( (ElementMatch!17040 (c!1289568 C!34350)) (Concat!25885 (regOne!34592 Regex!17040) (regTwo!34592 Regex!17040)) (EmptyExpr!17040) (Star!17040 (reg!17369 Regex!17040)) (EmptyLang!17040) (Union!17040 (regOne!34593 Regex!17040) (regTwo!34593 Regex!17040)) )
))
(declare-fun rInner!765 () Regex!17040)

(declare-fun validRegex!8746 (Regex!17040) Bool)

(assert (=> b!6953325 (= e!4181532 (not (validRegex!8746 (Star!17040 rInner!765))))))

(declare-fun res!2837075 () Bool)

(assert (=> start!667304 (=> (not res!2837075) (not e!4181532))))

(assert (=> start!667304 (= res!2837075 (validRegex!8746 rInner!765))))

(assert (=> start!667304 e!4181532))

(assert (=> start!667304 e!4181534))

(declare-fun e!4181533 () Bool)

(assert (=> start!667304 e!4181533))

(declare-fun e!4181531 () Bool)

(declare-fun e!4181535 () Bool)

(assert (=> start!667304 (and e!4181531 e!4181535)))

(declare-fun b!6953326 () Bool)

(declare-fun tp!1916857 () Bool)

(assert (=> b!6953326 (= e!4181535 (and tp_is_empty!43305 tp!1916857))))

(declare-fun b!6953327 () Bool)

(declare-fun res!2837070 () Bool)

(assert (=> b!6953327 (=> (not res!2837070) (not e!4181532))))

(declare-fun nullable!6853 (Regex!17040) Bool)

(assert (=> b!6953327 (= res!2837070 (not (nullable!6853 rInner!765)))))

(declare-fun res!2837071 () Bool)

(assert (=> b!6953328 (=> (not res!2837071) (not e!4181532))))

(declare-fun Exists!4036 (Int) Bool)

(assert (=> b!6953328 (= res!2837071 (not (Exists!4036 lambda!396619)))))

(declare-fun b!6953329 () Bool)

(declare-fun res!2837074 () Bool)

(assert (=> b!6953329 (=> (not res!2837074) (not e!4181532))))

(declare-datatypes ((List!66793 0))(
  ( (Nil!66669) (Cons!66669 (h!73117 C!34350) (t!380536 List!66793)) )
))
(declare-datatypes ((tuple2!67786 0))(
  ( (tuple2!67787 (_1!37196 List!66793) (_2!37196 List!66793)) )
))
(declare-fun cut!42 () tuple2!67786)

(declare-fun matchRSpec!4069 (Regex!17040 List!66793) Bool)

(assert (=> b!6953329 (= res!2837074 (matchRSpec!4069 rInner!765 (_1!37196 cut!42)))))

(declare-fun b!6953330 () Bool)

(declare-fun tp!1916856 () Bool)

(assert (=> b!6953330 (= e!4181531 (and tp_is_empty!43305 tp!1916856))))

(declare-fun b!6953331 () Bool)

(declare-fun tp!1916854 () Bool)

(assert (=> b!6953331 (= e!4181534 tp!1916854)))

(declare-fun b!6953332 () Bool)

(declare-fun tp!1916852 () Bool)

(declare-fun tp!1916853 () Bool)

(assert (=> b!6953332 (= e!4181534 (and tp!1916852 tp!1916853))))

(declare-fun b!6953333 () Bool)

(declare-fun tp!1916855 () Bool)

(declare-fun tp!1916851 () Bool)

(assert (=> b!6953333 (= e!4181534 (and tp!1916855 tp!1916851))))

(declare-fun res!2837069 () Bool)

(assert (=> b!6953334 (=> (not res!2837069) (not e!4181532))))

(assert (=> b!6953334 (= res!2837069 (not (Exists!4036 lambda!396620)))))

(declare-fun b!6953335 () Bool)

(declare-fun res!2837073 () Bool)

(assert (=> b!6953335 (=> (not res!2837073) (not e!4181532))))

(declare-fun s!10388 () List!66793)

(declare-fun ++!15071 (List!66793 List!66793) List!66793)

(assert (=> b!6953335 (= res!2837073 (= (++!15071 (_1!37196 cut!42) (_2!37196 cut!42)) s!10388))))

(declare-fun b!6953336 () Bool)

(declare-fun tp!1916850 () Bool)

(assert (=> b!6953336 (= e!4181533 (and tp_is_empty!43305 tp!1916850))))

(declare-fun b!6953337 () Bool)

(declare-fun res!2837076 () Bool)

(assert (=> b!6953337 (=> (not res!2837076) (not e!4181532))))

(declare-fun isEmpty!38909 (List!66793) Bool)

(assert (=> b!6953337 (= res!2837076 (not (isEmpty!38909 (_1!37196 cut!42))))))

(declare-fun b!6953338 () Bool)

(declare-fun res!2837072 () Bool)

(assert (=> b!6953338 (=> (not res!2837072) (not e!4181532))))

(assert (=> b!6953338 (= res!2837072 (not (Exists!4036 lambda!396619)))))

(assert (= (and start!667304 res!2837075) b!6953327))

(assert (= (and b!6953327 res!2837070) b!6953328))

(assert (= (and b!6953328 res!2837071) b!6953338))

(assert (= (and b!6953338 res!2837072) b!6953334))

(assert (= (and b!6953334 res!2837069) b!6953335))

(assert (= (and b!6953335 res!2837073) b!6953337))

(assert (= (and b!6953337 res!2837076) b!6953329))

(assert (= (and b!6953329 res!2837074) b!6953325))

(assert (= (and start!667304 (is-ElementMatch!17040 rInner!765)) b!6953324))

(assert (= (and start!667304 (is-Concat!25885 rInner!765)) b!6953332))

(assert (= (and start!667304 (is-Star!17040 rInner!765)) b!6953331))

(assert (= (and start!667304 (is-Union!17040 rInner!765)) b!6953333))

(assert (= (and start!667304 (is-Cons!66669 s!10388)) b!6953336))

(assert (= (and start!667304 (is-Cons!66669 (_1!37196 cut!42))) b!6953330))

(assert (= (and start!667304 (is-Cons!66669 (_2!37196 cut!42))) b!6953326))

(declare-fun m!7653208 () Bool)

(assert (=> b!6953334 m!7653208))

(declare-fun m!7653210 () Bool)

(assert (=> b!6953335 m!7653210))

(declare-fun m!7653212 () Bool)

(assert (=> b!6953328 m!7653212))

(declare-fun m!7653214 () Bool)

(assert (=> b!6953325 m!7653214))

(declare-fun m!7653216 () Bool)

(assert (=> b!6953329 m!7653216))

(declare-fun m!7653218 () Bool)

(assert (=> b!6953327 m!7653218))

(assert (=> b!6953338 m!7653212))

(declare-fun m!7653220 () Bool)

(assert (=> b!6953337 m!7653220))

(declare-fun m!7653222 () Bool)

(assert (=> start!667304 m!7653222))

(push 1)

(assert (not b!6953337))

(assert tp_is_empty!43305)

(assert (not b!6953333))

(assert (not b!6953334))

(assert (not b!6953331))

(assert (not b!6953336))

(assert (not b!6953335))

(assert (not b!6953338))

(assert (not b!6953326))

(assert (not b!6953329))

(assert (not start!667304))

(assert (not b!6953327))

(assert (not b!6953332))

(assert (not b!6953325))

(assert (not b!6953330))

(assert (not b!6953328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6953425 () Bool)

(declare-fun e!4181566 () Bool)

(declare-fun lt!2478190 () List!66793)

(assert (=> b!6953425 (= e!4181566 (or (not (= (_2!37196 cut!42) Nil!66669)) (= lt!2478190 (_1!37196 cut!42))))))

(declare-fun b!6953423 () Bool)

(declare-fun e!4181565 () List!66793)

(assert (=> b!6953423 (= e!4181565 (Cons!66669 (h!73117 (_1!37196 cut!42)) (++!15071 (t!380536 (_1!37196 cut!42)) (_2!37196 cut!42))))))

(declare-fun b!6953422 () Bool)

(assert (=> b!6953422 (= e!4181565 (_2!37196 cut!42))))

(declare-fun b!6953424 () Bool)

(declare-fun res!2837124 () Bool)

(assert (=> b!6953424 (=> (not res!2837124) (not e!4181566))))

(declare-fun size!40834 (List!66793) Int)

(assert (=> b!6953424 (= res!2837124 (= (size!40834 lt!2478190) (+ (size!40834 (_1!37196 cut!42)) (size!40834 (_2!37196 cut!42)))))))

(declare-fun d!2169288 () Bool)

(assert (=> d!2169288 e!4181566))

(declare-fun res!2837123 () Bool)

(assert (=> d!2169288 (=> (not res!2837123) (not e!4181566))))

(declare-fun content!13137 (List!66793) (Set C!34350))

(assert (=> d!2169288 (= res!2837123 (= (content!13137 lt!2478190) (set.union (content!13137 (_1!37196 cut!42)) (content!13137 (_2!37196 cut!42)))))))

(assert (=> d!2169288 (= lt!2478190 e!4181565)))

(declare-fun c!1289574 () Bool)

(assert (=> d!2169288 (= c!1289574 (is-Nil!66669 (_1!37196 cut!42)))))

(assert (=> d!2169288 (= (++!15071 (_1!37196 cut!42) (_2!37196 cut!42)) lt!2478190)))

(assert (= (and d!2169288 c!1289574) b!6953422))

(assert (= (and d!2169288 (not c!1289574)) b!6953423))

(assert (= (and d!2169288 res!2837123) b!6953424))

(assert (= (and b!6953424 res!2837124) b!6953425))

(declare-fun m!7653244 () Bool)

(assert (=> b!6953423 m!7653244))

(declare-fun m!7653246 () Bool)

(assert (=> b!6953424 m!7653246))

(declare-fun m!7653248 () Bool)

(assert (=> b!6953424 m!7653248))

(declare-fun m!7653250 () Bool)

(assert (=> b!6953424 m!7653250))

(declare-fun m!7653252 () Bool)

(assert (=> d!2169288 m!7653252))

(declare-fun m!7653254 () Bool)

(assert (=> d!2169288 m!7653254))

(declare-fun m!7653256 () Bool)

(assert (=> d!2169288 m!7653256))

(assert (=> b!6953335 d!2169288))

(declare-fun d!2169290 () Bool)

(declare-fun choose!51812 (Int) Bool)

(assert (=> d!2169290 (= (Exists!4036 lambda!396620) (choose!51812 lambda!396620))))

(declare-fun bs!1857844 () Bool)

(assert (= bs!1857844 d!2169290))

(declare-fun m!7653258 () Bool)

(assert (=> bs!1857844 m!7653258))

(assert (=> b!6953334 d!2169290))

(declare-fun b!6953448 () Bool)

(declare-fun e!4181584 () Bool)

(declare-fun e!4181585 () Bool)

(assert (=> b!6953448 (= e!4181584 e!4181585)))

(declare-fun res!2837141 () Bool)

(assert (=> b!6953448 (=> (not res!2837141) (not e!4181585))))

(declare-fun call!631468 () Bool)

(assert (=> b!6953448 (= res!2837141 call!631468)))

(declare-fun b!6953449 () Bool)

(declare-fun e!4181589 () Bool)

(declare-fun call!631467 () Bool)

(assert (=> b!6953449 (= e!4181589 call!631467)))

(declare-fun bm!631461 () Bool)

(declare-fun c!1289581 () Bool)

(declare-fun c!1289580 () Bool)

(assert (=> bm!631461 (= call!631467 (validRegex!8746 (ite c!1289581 (reg!17369 rInner!765) (ite c!1289580 (regTwo!34593 rInner!765) (regOne!34592 rInner!765)))))))

(declare-fun bm!631462 () Bool)

(assert (=> bm!631462 (= call!631468 call!631467)))

(declare-fun b!6953450 () Bool)

(declare-fun call!631466 () Bool)

(assert (=> b!6953450 (= e!4181585 call!631466)))

(declare-fun b!6953451 () Bool)

(declare-fun e!4181586 () Bool)

(declare-fun e!4181587 () Bool)

(assert (=> b!6953451 (= e!4181586 e!4181587)))

(assert (=> b!6953451 (= c!1289580 (is-Union!17040 rInner!765))))

(declare-fun b!6953452 () Bool)

(declare-fun e!4181583 () Bool)

(assert (=> b!6953452 (= e!4181583 e!4181586)))

(assert (=> b!6953452 (= c!1289581 (is-Star!17040 rInner!765))))

(declare-fun b!6953453 () Bool)

(declare-fun e!4181588 () Bool)

(assert (=> b!6953453 (= e!4181588 call!631468)))

(declare-fun bm!631463 () Bool)

(assert (=> bm!631463 (= call!631466 (validRegex!8746 (ite c!1289580 (regOne!34593 rInner!765) (regTwo!34592 rInner!765))))))

(declare-fun d!2169292 () Bool)

(declare-fun res!2837140 () Bool)

(assert (=> d!2169292 (=> res!2837140 e!4181583)))

(assert (=> d!2169292 (= res!2837140 (is-ElementMatch!17040 rInner!765))))

(assert (=> d!2169292 (= (validRegex!8746 rInner!765) e!4181583)))

(declare-fun b!6953454 () Bool)

(declare-fun res!2837138 () Bool)

(assert (=> b!6953454 (=> (not res!2837138) (not e!4181588))))

(assert (=> b!6953454 (= res!2837138 call!631466)))

(assert (=> b!6953454 (= e!4181587 e!4181588)))

(declare-fun b!6953455 () Bool)

(declare-fun res!2837139 () Bool)

(assert (=> b!6953455 (=> res!2837139 e!4181584)))

(assert (=> b!6953455 (= res!2837139 (not (is-Concat!25885 rInner!765)))))

(assert (=> b!6953455 (= e!4181587 e!4181584)))

(declare-fun b!6953456 () Bool)

(assert (=> b!6953456 (= e!4181586 e!4181589)))

(declare-fun res!2837137 () Bool)

(assert (=> b!6953456 (= res!2837137 (not (nullable!6853 (reg!17369 rInner!765))))))

(assert (=> b!6953456 (=> (not res!2837137) (not e!4181589))))

(assert (= (and d!2169292 (not res!2837140)) b!6953452))

(assert (= (and b!6953452 c!1289581) b!6953456))

(assert (= (and b!6953452 (not c!1289581)) b!6953451))

(assert (= (and b!6953456 res!2837137) b!6953449))

(assert (= (and b!6953451 c!1289580) b!6953454))

(assert (= (and b!6953451 (not c!1289580)) b!6953455))

(assert (= (and b!6953454 res!2837138) b!6953453))

(assert (= (and b!6953455 (not res!2837139)) b!6953448))

(assert (= (and b!6953448 res!2837141) b!6953450))

(assert (= (or b!6953454 b!6953450) bm!631463))

(assert (= (or b!6953453 b!6953448) bm!631462))

(assert (= (or b!6953449 bm!631462) bm!631461))

(declare-fun m!7653276 () Bool)

(assert (=> bm!631461 m!7653276))

(declare-fun m!7653278 () Bool)

(assert (=> bm!631463 m!7653278))

(declare-fun m!7653280 () Bool)

(assert (=> b!6953456 m!7653280))

(assert (=> start!667304 d!2169292))

(declare-fun bs!1857846 () Bool)

(declare-fun b!6953524 () Bool)

(assert (= bs!1857846 (and b!6953524 b!6953328)))

(declare-fun lambda!396633 () Int)

(assert (=> bs!1857846 (not (= lambda!396633 lambda!396619))))

(declare-fun bs!1857847 () Bool)

(assert (= bs!1857847 (and b!6953524 b!6953334)))

(assert (=> bs!1857847 (= (and (= (_1!37196 cut!42) s!10388) (= (reg!17369 rInner!765) rInner!765) (= rInner!765 (Star!17040 rInner!765))) (= lambda!396633 lambda!396620))))

(assert (=> b!6953524 true))

(assert (=> b!6953524 true))

(declare-fun bs!1857848 () Bool)

(declare-fun b!6953518 () Bool)

(assert (= bs!1857848 (and b!6953518 b!6953328)))

(declare-fun lambda!396634 () Int)

(assert (=> bs!1857848 (not (= lambda!396634 lambda!396619))))

(declare-fun bs!1857849 () Bool)

(assert (= bs!1857849 (and b!6953518 b!6953334)))

(assert (=> bs!1857849 (not (= lambda!396634 lambda!396620))))

(declare-fun bs!1857850 () Bool)

(assert (= bs!1857850 (and b!6953518 b!6953524)))

(assert (=> bs!1857850 (not (= lambda!396634 lambda!396633))))

(assert (=> b!6953518 true))

(assert (=> b!6953518 true))

(declare-fun b!6953516 () Bool)

(declare-fun e!4181635 () Bool)

(assert (=> b!6953516 (= e!4181635 (matchRSpec!4069 (regTwo!34593 rInner!765) (_1!37196 cut!42)))))

(declare-fun b!6953517 () Bool)

(declare-fun e!4181633 () Bool)

(declare-fun call!631483 () Bool)

(assert (=> b!6953517 (= e!4181633 call!631483)))

(declare-fun call!631482 () Bool)

(declare-fun bm!631477 () Bool)

(declare-fun c!1289596 () Bool)

(assert (=> bm!631477 (= call!631482 (Exists!4036 (ite c!1289596 lambda!396633 lambda!396634)))))

(declare-fun e!4181634 () Bool)

(assert (=> b!6953518 (= e!4181634 call!631482)))

(declare-fun b!6953519 () Bool)

(declare-fun c!1289598 () Bool)

(assert (=> b!6953519 (= c!1289598 (is-ElementMatch!17040 rInner!765))))

(declare-fun e!4181632 () Bool)

(declare-fun e!4181630 () Bool)

(assert (=> b!6953519 (= e!4181632 e!4181630)))

(declare-fun b!6953520 () Bool)

(assert (=> b!6953520 (= e!4181630 (= (_1!37196 cut!42) (Cons!66669 (c!1289568 rInner!765) Nil!66669)))))

(declare-fun b!6953521 () Bool)

(assert (=> b!6953521 (= e!4181633 e!4181632)))

(declare-fun res!2837173 () Bool)

(assert (=> b!6953521 (= res!2837173 (not (is-EmptyLang!17040 rInner!765)))))

(assert (=> b!6953521 (=> (not res!2837173) (not e!4181632))))

(declare-fun b!6953522 () Bool)

(declare-fun e!4181629 () Bool)

(assert (=> b!6953522 (= e!4181629 e!4181634)))

(assert (=> b!6953522 (= c!1289596 (is-Star!17040 rInner!765))))

(declare-fun d!2169298 () Bool)

(declare-fun c!1289597 () Bool)

(assert (=> d!2169298 (= c!1289597 (is-EmptyExpr!17040 rInner!765))))

(assert (=> d!2169298 (= (matchRSpec!4069 rInner!765 (_1!37196 cut!42)) e!4181633)))

(declare-fun b!6953523 () Bool)

(declare-fun c!1289599 () Bool)

(assert (=> b!6953523 (= c!1289599 (is-Union!17040 rInner!765))))

(assert (=> b!6953523 (= e!4181630 e!4181629)))

(declare-fun e!4181631 () Bool)

(assert (=> b!6953524 (= e!4181631 call!631482)))

(declare-fun bm!631478 () Bool)

(assert (=> bm!631478 (= call!631483 (isEmpty!38909 (_1!37196 cut!42)))))

(declare-fun b!6953525 () Bool)

(assert (=> b!6953525 (= e!4181629 e!4181635)))

(declare-fun res!2837174 () Bool)

(assert (=> b!6953525 (= res!2837174 (matchRSpec!4069 (regOne!34593 rInner!765) (_1!37196 cut!42)))))

(assert (=> b!6953525 (=> res!2837174 e!4181635)))

(declare-fun b!6953526 () Bool)

(declare-fun res!2837175 () Bool)

(assert (=> b!6953526 (=> res!2837175 e!4181631)))

(assert (=> b!6953526 (= res!2837175 call!631483)))

(assert (=> b!6953526 (= e!4181634 e!4181631)))

(assert (= (and d!2169298 c!1289597) b!6953517))

(assert (= (and d!2169298 (not c!1289597)) b!6953521))

(assert (= (and b!6953521 res!2837173) b!6953519))

(assert (= (and b!6953519 c!1289598) b!6953520))

(assert (= (and b!6953519 (not c!1289598)) b!6953523))

(assert (= (and b!6953523 c!1289599) b!6953525))

(assert (= (and b!6953523 (not c!1289599)) b!6953522))

(assert (= (and b!6953525 (not res!2837174)) b!6953516))

(assert (= (and b!6953522 c!1289596) b!6953526))

(assert (= (and b!6953522 (not c!1289596)) b!6953518))

(assert (= (and b!6953526 (not res!2837175)) b!6953524))

(assert (= (or b!6953524 b!6953518) bm!631477))

(assert (= (or b!6953517 b!6953526) bm!631478))

(declare-fun m!7653288 () Bool)

(assert (=> b!6953516 m!7653288))

(declare-fun m!7653290 () Bool)

(assert (=> bm!631477 m!7653290))

(assert (=> bm!631478 m!7653220))

(declare-fun m!7653292 () Bool)

(assert (=> b!6953525 m!7653292))

(assert (=> b!6953329 d!2169298))

(declare-fun d!2169302 () Bool)

(assert (=> d!2169302 (= (Exists!4036 lambda!396619) (choose!51812 lambda!396619))))

(declare-fun bs!1857851 () Bool)

(assert (= bs!1857851 d!2169302))

(declare-fun m!7653294 () Bool)

(assert (=> bs!1857851 m!7653294))

(assert (=> b!6953328 d!2169302))

(assert (=> b!6953338 d!2169302))

(declare-fun d!2169304 () Bool)

(declare-fun nullableFct!2565 (Regex!17040) Bool)

(assert (=> d!2169304 (= (nullable!6853 rInner!765) (nullableFct!2565 rInner!765))))

(declare-fun bs!1857852 () Bool)

(assert (= bs!1857852 d!2169304))

(declare-fun m!7653296 () Bool)

(assert (=> bs!1857852 m!7653296))

(assert (=> b!6953327 d!2169304))

(declare-fun d!2169306 () Bool)

(assert (=> d!2169306 (= (isEmpty!38909 (_1!37196 cut!42)) (is-Nil!66669 (_1!37196 cut!42)))))

(assert (=> b!6953337 d!2169306))

(declare-fun b!6953527 () Bool)

(declare-fun e!4181637 () Bool)

(declare-fun e!4181638 () Bool)

(assert (=> b!6953527 (= e!4181637 e!4181638)))

(declare-fun res!2837180 () Bool)

(assert (=> b!6953527 (=> (not res!2837180) (not e!4181638))))

(declare-fun call!631486 () Bool)

(assert (=> b!6953527 (= res!2837180 call!631486)))

(declare-fun b!6953528 () Bool)

(declare-fun e!4181642 () Bool)

(declare-fun call!631485 () Bool)

(assert (=> b!6953528 (= e!4181642 call!631485)))

(declare-fun c!1289600 () Bool)

(declare-fun c!1289601 () Bool)

(declare-fun bm!631479 () Bool)

(assert (=> bm!631479 (= call!631485 (validRegex!8746 (ite c!1289601 (reg!17369 (Star!17040 rInner!765)) (ite c!1289600 (regTwo!34593 (Star!17040 rInner!765)) (regOne!34592 (Star!17040 rInner!765))))))))

(declare-fun bm!631480 () Bool)

(assert (=> bm!631480 (= call!631486 call!631485)))

(declare-fun b!6953529 () Bool)

(declare-fun call!631484 () Bool)

(assert (=> b!6953529 (= e!4181638 call!631484)))

(declare-fun b!6953530 () Bool)

(declare-fun e!4181639 () Bool)

(declare-fun e!4181640 () Bool)

(assert (=> b!6953530 (= e!4181639 e!4181640)))

(assert (=> b!6953530 (= c!1289600 (is-Union!17040 (Star!17040 rInner!765)))))

(declare-fun b!6953531 () Bool)

(declare-fun e!4181636 () Bool)

(assert (=> b!6953531 (= e!4181636 e!4181639)))

(assert (=> b!6953531 (= c!1289601 (is-Star!17040 (Star!17040 rInner!765)))))

(declare-fun b!6953532 () Bool)

(declare-fun e!4181641 () Bool)

(assert (=> b!6953532 (= e!4181641 call!631486)))

(declare-fun bm!631481 () Bool)

(assert (=> bm!631481 (= call!631484 (validRegex!8746 (ite c!1289600 (regOne!34593 (Star!17040 rInner!765)) (regTwo!34592 (Star!17040 rInner!765)))))))

(declare-fun d!2169308 () Bool)

(declare-fun res!2837179 () Bool)

(assert (=> d!2169308 (=> res!2837179 e!4181636)))

(assert (=> d!2169308 (= res!2837179 (is-ElementMatch!17040 (Star!17040 rInner!765)))))

(assert (=> d!2169308 (= (validRegex!8746 (Star!17040 rInner!765)) e!4181636)))

(declare-fun b!6953533 () Bool)

(declare-fun res!2837177 () Bool)

(assert (=> b!6953533 (=> (not res!2837177) (not e!4181641))))

(assert (=> b!6953533 (= res!2837177 call!631484)))

(assert (=> b!6953533 (= e!4181640 e!4181641)))

(declare-fun b!6953534 () Bool)

(declare-fun res!2837178 () Bool)

(assert (=> b!6953534 (=> res!2837178 e!4181637)))

(assert (=> b!6953534 (= res!2837178 (not (is-Concat!25885 (Star!17040 rInner!765))))))

(assert (=> b!6953534 (= e!4181640 e!4181637)))

(declare-fun b!6953535 () Bool)

(assert (=> b!6953535 (= e!4181639 e!4181642)))

(declare-fun res!2837176 () Bool)

(assert (=> b!6953535 (= res!2837176 (not (nullable!6853 (reg!17369 (Star!17040 rInner!765)))))))

(assert (=> b!6953535 (=> (not res!2837176) (not e!4181642))))

(assert (= (and d!2169308 (not res!2837179)) b!6953531))

(assert (= (and b!6953531 c!1289601) b!6953535))

(assert (= (and b!6953531 (not c!1289601)) b!6953530))

(assert (= (and b!6953535 res!2837176) b!6953528))

(assert (= (and b!6953530 c!1289600) b!6953533))

(assert (= (and b!6953530 (not c!1289600)) b!6953534))

(assert (= (and b!6953533 res!2837177) b!6953532))

(assert (= (and b!6953534 (not res!2837178)) b!6953527))

(assert (= (and b!6953527 res!2837180) b!6953529))

(assert (= (or b!6953533 b!6953529) bm!631481))

(assert (= (or b!6953532 b!6953527) bm!631480))

(assert (= (or b!6953528 bm!631480) bm!631479))

(declare-fun m!7653298 () Bool)

(assert (=> bm!631479 m!7653298))

(declare-fun m!7653300 () Bool)

(assert (=> bm!631481 m!7653300))

(declare-fun m!7653302 () Bool)

(assert (=> b!6953535 m!7653302))

(assert (=> b!6953325 d!2169308))

(declare-fun b!6953546 () Bool)

(declare-fun e!4181645 () Bool)

(assert (=> b!6953546 (= e!4181645 tp_is_empty!43305)))

(declare-fun b!6953549 () Bool)

(declare-fun tp!1916894 () Bool)

(declare-fun tp!1916895 () Bool)

(assert (=> b!6953549 (= e!4181645 (and tp!1916894 tp!1916895))))

(declare-fun b!6953548 () Bool)

(declare-fun tp!1916892 () Bool)

(assert (=> b!6953548 (= e!4181645 tp!1916892)))

(declare-fun b!6953547 () Bool)

(declare-fun tp!1916896 () Bool)

(declare-fun tp!1916893 () Bool)

(assert (=> b!6953547 (= e!4181645 (and tp!1916896 tp!1916893))))

(assert (=> b!6953333 (= tp!1916855 e!4181645)))

(assert (= (and b!6953333 (is-ElementMatch!17040 (regOne!34593 rInner!765))) b!6953546))

(assert (= (and b!6953333 (is-Concat!25885 (regOne!34593 rInner!765))) b!6953547))

(assert (= (and b!6953333 (is-Star!17040 (regOne!34593 rInner!765))) b!6953548))

(assert (= (and b!6953333 (is-Union!17040 (regOne!34593 rInner!765))) b!6953549))

(declare-fun b!6953550 () Bool)

(declare-fun e!4181646 () Bool)

(assert (=> b!6953550 (= e!4181646 tp_is_empty!43305)))

(declare-fun b!6953553 () Bool)

(declare-fun tp!1916899 () Bool)

(declare-fun tp!1916900 () Bool)

(assert (=> b!6953553 (= e!4181646 (and tp!1916899 tp!1916900))))

(declare-fun b!6953552 () Bool)

(declare-fun tp!1916897 () Bool)

(assert (=> b!6953552 (= e!4181646 tp!1916897)))

(declare-fun b!6953551 () Bool)

(declare-fun tp!1916901 () Bool)

(declare-fun tp!1916898 () Bool)

(assert (=> b!6953551 (= e!4181646 (and tp!1916901 tp!1916898))))

(assert (=> b!6953333 (= tp!1916851 e!4181646)))

(assert (= (and b!6953333 (is-ElementMatch!17040 (regTwo!34593 rInner!765))) b!6953550))

(assert (= (and b!6953333 (is-Concat!25885 (regTwo!34593 rInner!765))) b!6953551))

(assert (= (and b!6953333 (is-Star!17040 (regTwo!34593 rInner!765))) b!6953552))

(assert (= (and b!6953333 (is-Union!17040 (regTwo!34593 rInner!765))) b!6953553))

(declare-fun b!6953554 () Bool)

(declare-fun e!4181647 () Bool)

(assert (=> b!6953554 (= e!4181647 tp_is_empty!43305)))

(declare-fun b!6953557 () Bool)

(declare-fun tp!1916904 () Bool)

(declare-fun tp!1916905 () Bool)

(assert (=> b!6953557 (= e!4181647 (and tp!1916904 tp!1916905))))

(declare-fun b!6953556 () Bool)

(declare-fun tp!1916902 () Bool)

(assert (=> b!6953556 (= e!4181647 tp!1916902)))

(declare-fun b!6953555 () Bool)

(declare-fun tp!1916906 () Bool)

(declare-fun tp!1916903 () Bool)

(assert (=> b!6953555 (= e!4181647 (and tp!1916906 tp!1916903))))

(assert (=> b!6953332 (= tp!1916852 e!4181647)))

(assert (= (and b!6953332 (is-ElementMatch!17040 (regOne!34592 rInner!765))) b!6953554))

(assert (= (and b!6953332 (is-Concat!25885 (regOne!34592 rInner!765))) b!6953555))

(assert (= (and b!6953332 (is-Star!17040 (regOne!34592 rInner!765))) b!6953556))

(assert (= (and b!6953332 (is-Union!17040 (regOne!34592 rInner!765))) b!6953557))

(declare-fun b!6953558 () Bool)

(declare-fun e!4181648 () Bool)

(assert (=> b!6953558 (= e!4181648 tp_is_empty!43305)))

(declare-fun b!6953561 () Bool)

(declare-fun tp!1916909 () Bool)

(declare-fun tp!1916910 () Bool)

(assert (=> b!6953561 (= e!4181648 (and tp!1916909 tp!1916910))))

(declare-fun b!6953560 () Bool)

(declare-fun tp!1916907 () Bool)

(assert (=> b!6953560 (= e!4181648 tp!1916907)))

(declare-fun b!6953559 () Bool)

(declare-fun tp!1916911 () Bool)

(declare-fun tp!1916908 () Bool)

(assert (=> b!6953559 (= e!4181648 (and tp!1916911 tp!1916908))))

(assert (=> b!6953332 (= tp!1916853 e!4181648)))

(assert (= (and b!6953332 (is-ElementMatch!17040 (regTwo!34592 rInner!765))) b!6953558))

(assert (= (and b!6953332 (is-Concat!25885 (regTwo!34592 rInner!765))) b!6953559))

(assert (= (and b!6953332 (is-Star!17040 (regTwo!34592 rInner!765))) b!6953560))

(assert (= (and b!6953332 (is-Union!17040 (regTwo!34592 rInner!765))) b!6953561))

(declare-fun b!6953566 () Bool)

(declare-fun e!4181651 () Bool)

(declare-fun tp!1916914 () Bool)

(assert (=> b!6953566 (= e!4181651 (and tp_is_empty!43305 tp!1916914))))

(assert (=> b!6953326 (= tp!1916857 e!4181651)))

(assert (= (and b!6953326 (is-Cons!66669 (t!380536 (_2!37196 cut!42)))) b!6953566))

(declare-fun b!6953567 () Bool)

(declare-fun e!4181652 () Bool)

(declare-fun tp!1916915 () Bool)

(assert (=> b!6953567 (= e!4181652 (and tp_is_empty!43305 tp!1916915))))

(assert (=> b!6953336 (= tp!1916850 e!4181652)))

(assert (= (and b!6953336 (is-Cons!66669 (t!380536 s!10388))) b!6953567))

(declare-fun b!6953568 () Bool)

(declare-fun e!4181653 () Bool)

(assert (=> b!6953568 (= e!4181653 tp_is_empty!43305)))

(declare-fun b!6953571 () Bool)

(declare-fun tp!1916918 () Bool)

(declare-fun tp!1916919 () Bool)

(assert (=> b!6953571 (= e!4181653 (and tp!1916918 tp!1916919))))

(declare-fun b!6953570 () Bool)

(declare-fun tp!1916916 () Bool)

(assert (=> b!6953570 (= e!4181653 tp!1916916)))

(declare-fun b!6953569 () Bool)

(declare-fun tp!1916920 () Bool)

(declare-fun tp!1916917 () Bool)

(assert (=> b!6953569 (= e!4181653 (and tp!1916920 tp!1916917))))

(assert (=> b!6953331 (= tp!1916854 e!4181653)))

(assert (= (and b!6953331 (is-ElementMatch!17040 (reg!17369 rInner!765))) b!6953568))

(assert (= (and b!6953331 (is-Concat!25885 (reg!17369 rInner!765))) b!6953569))

(assert (= (and b!6953331 (is-Star!17040 (reg!17369 rInner!765))) b!6953570))

(assert (= (and b!6953331 (is-Union!17040 (reg!17369 rInner!765))) b!6953571))

(declare-fun b!6953572 () Bool)

(declare-fun e!4181654 () Bool)

(declare-fun tp!1916921 () Bool)

(assert (=> b!6953572 (= e!4181654 (and tp_is_empty!43305 tp!1916921))))

(assert (=> b!6953330 (= tp!1916856 e!4181654)))

(assert (= (and b!6953330 (is-Cons!66669 (t!380536 (_1!37196 cut!42)))) b!6953572))

(push 1)

(assert (not b!6953551))

(assert tp_is_empty!43305)

(assert (not b!6953423))

(assert (not b!6953456))

(assert (not d!2169302))

(assert (not bm!631477))

(assert (not b!6953569))

(assert (not b!6953525))

(assert (not b!6953566))

(assert (not b!6953535))

(assert (not b!6953547))

(assert (not d!2169304))

(assert (not bm!631481))

(assert (not b!6953555))

(assert (not b!6953516))

(assert (not bm!631479))

(assert (not b!6953559))

(assert (not b!6953553))

(assert (not b!6953557))

(assert (not b!6953561))

(assert (not b!6953552))

(assert (not b!6953549))

(assert (not d!2169290))

(assert (not bm!631463))

(assert (not b!6953424))

(assert (not b!6953548))

(assert (not bm!631478))

(assert (not b!6953572))

(assert (not b!6953556))

(assert (not b!6953570))

(assert (not bm!631461))

(assert (not b!6953567))

(assert (not b!6953560))

(assert (not b!6953571))

(assert (not d!2169288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

