; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251406 () Bool)

(assert start!251406)

(declare-fun b!2593318 () Bool)

(assert (=> b!2593318 true))

(declare-fun bs!472457 () Bool)

(declare-fun b!2593309 () Bool)

(assert (= bs!472457 (and b!2593309 b!2593318)))

(declare-fun lambda!96302 () Int)

(declare-fun lambda!96301 () Int)

(assert (=> bs!472457 (not (= lambda!96302 lambda!96301))))

(assert (=> b!2593309 true))

(declare-fun b!2593306 () Bool)

(declare-fun e!1636127 () Bool)

(declare-fun e!1636126 () Bool)

(assert (=> b!2593306 (= e!1636127 e!1636126)))

(declare-fun res!1090852 () Bool)

(assert (=> b!2593306 (=> res!1090852 e!1636126)))

(declare-datatypes ((B!2091 0))(
  ( (B!2092 (val!9513 Int)) )
))
(declare-datatypes ((List!29946 0))(
  ( (Nil!29846) (Cons!29846 (h!35266 B!2091) (t!212959 List!29946)) )
))
(declare-fun l!3230 () List!29946)

(declare-fun lt!912766 () (Set B!2091))

(declare-fun content!4181 (List!29946) (Set B!2091))

(assert (=> b!2593306 (= res!1090852 (not (= (content!4181 l!3230) lt!912766)))))

(declare-fun lt!912771 () (Set B!2091))

(assert (=> b!2593306 (= lt!912766 (set.union lt!912771 (set.insert (h!35266 l!3230) (as set.empty (Set B!2091)))))))

(declare-fun b!2593307 () Bool)

(declare-fun res!1090856 () Bool)

(declare-fun e!1636128 () Bool)

(assert (=> b!2593307 (=> res!1090856 e!1636128)))

(declare-fun contains!5396 (List!29946 B!2091) Bool)

(assert (=> b!2593307 (= res!1090856 (contains!5396 (t!212959 l!3230) (h!35266 l!3230)))))

(declare-fun b!2593308 () Bool)

(declare-fun res!1090853 () Bool)

(declare-fun e!1636123 () Bool)

(assert (=> b!2593308 (=> res!1090853 e!1636123)))

(assert (=> b!2593308 (= res!1090853 (not (= lt!912766 (content!4181 l!3230))))))

(declare-fun e!1636124 () Bool)

(declare-fun forall!6089 (List!29946 Int) Bool)

(assert (=> b!2593309 (= e!1636124 (forall!6089 l!3230 lambda!96302))))

(declare-fun b!2593310 () Bool)

(assert (=> b!2593310 (= e!1636128 e!1636127)))

(declare-fun res!1090860 () Bool)

(assert (=> b!2593310 (=> res!1090860 e!1636127)))

(declare-fun lt!912775 () Int)

(declare-fun size!23153 (List!29946) Int)

(assert (=> b!2593310 (= res!1090860 (not (= (size!23153 l!3230) lt!912775)))))

(declare-fun lt!912779 () Int)

(assert (=> b!2593310 (= lt!912775 (+ 1 lt!912779))))

(declare-fun b!2593311 () Bool)

(declare-datatypes ((Unit!43836 0))(
  ( (Unit!43837) )
))
(declare-fun e!1636129 () Unit!43836)

(declare-fun Unit!43838 () Unit!43836)

(assert (=> b!2593311 (= e!1636129 Unit!43838)))

(declare-fun b!2593312 () Bool)

(declare-fun e!1636125 () Bool)

(declare-fun tp_is_empty!13371 () Bool)

(declare-fun tp!822851 () Bool)

(assert (=> b!2593312 (= e!1636125 (and tp_is_empty!13371 tp!822851))))

(declare-fun b!2593313 () Bool)

(assert (=> b!2593313 (= e!1636123 e!1636124)))

(declare-fun res!1090857 () Bool)

(assert (=> b!2593313 (=> res!1090857 e!1636124)))

(declare-fun lt!912767 () List!29946)

(declare-fun noDuplicate!394 (List!29946) Bool)

(assert (=> b!2593313 (= res!1090857 (not (noDuplicate!394 lt!912767)))))

(declare-fun lt!912778 () Unit!43836)

(declare-fun subsetContains!69 (List!29946 List!29946) Unit!43836)

(assert (=> b!2593313 (= lt!912778 (subsetContains!69 l!3230 lt!912767))))

(declare-fun b!2593314 () Bool)

(assert (=> b!2593314 (= e!1636126 e!1636123)))

(declare-fun res!1090859 () Bool)

(assert (=> b!2593314 (=> res!1090859 e!1636123)))

(declare-fun lt!912773 () Int)

(assert (=> b!2593314 (= res!1090859 (<= lt!912773 lt!912775))))

(declare-fun lt!912768 () Unit!43836)

(assert (=> b!2593314 (= lt!912768 e!1636129)))

(declare-fun c!418013 () Bool)

(assert (=> b!2593314 (= c!418013 (< lt!912773 lt!912775))))

(assert (=> b!2593314 (= lt!912773 (size!23153 lt!912767))))

(declare-fun toList!1791 ((Set B!2091)) List!29946)

(assert (=> b!2593314 (= lt!912767 (toList!1791 lt!912766))))

(declare-fun b!2593315 () Bool)

(declare-fun res!1090858 () Bool)

(declare-fun e!1636122 () Bool)

(assert (=> b!2593315 (=> (not res!1090858) (not e!1636122))))

(assert (=> b!2593315 (= res!1090858 (is-Cons!29846 l!3230))))

(declare-fun b!2593316 () Bool)

(declare-fun res!1090854 () Bool)

(assert (=> b!2593316 (=> res!1090854 e!1636124)))

(declare-fun lt!912772 () Int)

(assert (=> b!2593316 (= res!1090854 (<= lt!912773 lt!912772))))

(declare-fun res!1090861 () Bool)

(assert (=> start!251406 (=> (not res!1090861) (not e!1636122))))

(assert (=> start!251406 (= res!1090861 (noDuplicate!394 l!3230))))

(assert (=> start!251406 e!1636122))

(assert (=> start!251406 e!1636125))

(declare-fun b!2593317 () Bool)

(assert (=> b!2593317 (= e!1636122 (not e!1636128))))

(declare-fun res!1090855 () Bool)

(assert (=> b!2593317 (=> res!1090855 e!1636128)))

(declare-fun lt!912769 () Int)

(assert (=> b!2593317 (= res!1090855 (or (>= lt!912769 lt!912772) (set.member (h!35266 l!3230) lt!912771)))))

(assert (=> b!2593317 (= lt!912772 (size!23153 l!3230))))

(assert (=> b!2593317 (= lt!912769 lt!912779)))

(assert (=> b!2593317 (= lt!912779 (size!23153 (t!212959 l!3230)))))

(assert (=> b!2593317 (= lt!912769 (size!23153 (toList!1791 lt!912771)))))

(assert (=> b!2593317 (= lt!912771 (content!4181 (t!212959 l!3230)))))

(declare-fun lt!912777 () Unit!43836)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!81 (List!29946) Unit!43836)

(assert (=> b!2593317 (= lt!912777 (lemmaNoDuplicateThenContentToListSameSize!81 (t!212959 l!3230)))))

(declare-fun Unit!43839 () Unit!43836)

(assert (=> b!2593318 (= e!1636129 Unit!43839)))

(declare-fun lt!912776 () Unit!43836)

(assert (=> b!2593318 (= lt!912776 (subsetContains!69 lt!912767 l!3230))))

(declare-fun lt!912770 () Unit!43836)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!35 (List!29946 List!29946) Unit!43836)

(assert (=> b!2593318 (= lt!912770 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!35 l!3230 lt!912767))))

(declare-fun exists!919 (List!29946 Int) Bool)

(assert (=> b!2593318 (exists!919 l!3230 lambda!96301)))

(declare-fun lt!912774 () B!2091)

(declare-fun getWitness!545 (List!29946 Int) B!2091)

(assert (=> b!2593318 (= lt!912774 (getWitness!545 l!3230 lambda!96301))))

(assert (=> b!2593318 false))

(assert (= (and start!251406 res!1090861) b!2593315))

(assert (= (and b!2593315 res!1090858) b!2593317))

(assert (= (and b!2593317 (not res!1090855)) b!2593307))

(assert (= (and b!2593307 (not res!1090856)) b!2593310))

(assert (= (and b!2593310 (not res!1090860)) b!2593306))

(assert (= (and b!2593306 (not res!1090852)) b!2593314))

(assert (= (and b!2593314 c!418013) b!2593318))

(assert (= (and b!2593314 (not c!418013)) b!2593311))

(assert (= (and b!2593314 (not res!1090859)) b!2593308))

(assert (= (and b!2593308 (not res!1090853)) b!2593313))

(assert (= (and b!2593313 (not res!1090857)) b!2593316))

(assert (= (and b!2593316 (not res!1090854)) b!2593309))

(assert (= (and start!251406 (is-Cons!29846 l!3230)) b!2593312))

(declare-fun m!2929361 () Bool)

(assert (=> b!2593313 m!2929361))

(declare-fun m!2929363 () Bool)

(assert (=> b!2593313 m!2929363))

(declare-fun m!2929365 () Bool)

(assert (=> b!2593318 m!2929365))

(declare-fun m!2929367 () Bool)

(assert (=> b!2593318 m!2929367))

(declare-fun m!2929369 () Bool)

(assert (=> b!2593318 m!2929369))

(declare-fun m!2929371 () Bool)

(assert (=> b!2593318 m!2929371))

(declare-fun m!2929373 () Bool)

(assert (=> b!2593307 m!2929373))

(declare-fun m!2929375 () Bool)

(assert (=> b!2593309 m!2929375))

(declare-fun m!2929377 () Bool)

(assert (=> b!2593314 m!2929377))

(declare-fun m!2929379 () Bool)

(assert (=> b!2593314 m!2929379))

(declare-fun m!2929381 () Bool)

(assert (=> b!2593317 m!2929381))

(declare-fun m!2929383 () Bool)

(assert (=> b!2593317 m!2929383))

(assert (=> b!2593317 m!2929381))

(declare-fun m!2929385 () Bool)

(assert (=> b!2593317 m!2929385))

(declare-fun m!2929387 () Bool)

(assert (=> b!2593317 m!2929387))

(declare-fun m!2929389 () Bool)

(assert (=> b!2593317 m!2929389))

(declare-fun m!2929391 () Bool)

(assert (=> b!2593317 m!2929391))

(declare-fun m!2929393 () Bool)

(assert (=> b!2593317 m!2929393))

(declare-fun m!2929395 () Bool)

(assert (=> b!2593308 m!2929395))

(assert (=> b!2593306 m!2929395))

(declare-fun m!2929397 () Bool)

(assert (=> b!2593306 m!2929397))

(assert (=> b!2593310 m!2929383))

(declare-fun m!2929399 () Bool)

(assert (=> start!251406 m!2929399))

(push 1)

(assert (not b!2593310))

(assert (not b!2593306))

(assert (not b!2593318))

(assert (not b!2593309))

(assert (not b!2593317))

(assert (not b!2593314))

(assert (not start!251406))

(assert (not b!2593312))

(assert (not b!2593308))

(assert tp_is_empty!13371)

(assert (not b!2593307))

(assert (not b!2593313))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734653 () Bool)

(declare-fun lt!912827 () Int)

(assert (=> d!734653 (>= lt!912827 0)))

(declare-fun e!1636162 () Int)

(assert (=> d!734653 (= lt!912827 e!1636162)))

(declare-fun c!418019 () Bool)

(assert (=> d!734653 (= c!418019 (is-Nil!29846 l!3230))))

(assert (=> d!734653 (= (size!23153 l!3230) lt!912827)))

(declare-fun b!2593366 () Bool)

(assert (=> b!2593366 (= e!1636162 0)))

(declare-fun b!2593367 () Bool)

(assert (=> b!2593367 (= e!1636162 (+ 1 (size!23153 (t!212959 l!3230))))))

(assert (= (and d!734653 c!418019) b!2593366))

(assert (= (and d!734653 (not c!418019)) b!2593367))

(assert (=> b!2593367 m!2929387))

(assert (=> b!2593310 d!734653))

(declare-fun d!734655 () Bool)

(declare-fun res!1090896 () Bool)

(declare-fun e!1636167 () Bool)

(assert (=> d!734655 (=> res!1090896 e!1636167)))

(assert (=> d!734655 (= res!1090896 (is-Nil!29846 l!3230))))

(assert (=> d!734655 (= (forall!6089 l!3230 lambda!96302) e!1636167)))

(declare-fun b!2593372 () Bool)

(declare-fun e!1636168 () Bool)

(assert (=> b!2593372 (= e!1636167 e!1636168)))

(declare-fun res!1090897 () Bool)

(assert (=> b!2593372 (=> (not res!1090897) (not e!1636168))))

(declare-fun dynLambda!12625 (Int B!2091) Bool)

(assert (=> b!2593372 (= res!1090897 (dynLambda!12625 lambda!96302 (h!35266 l!3230)))))

(declare-fun b!2593373 () Bool)

(assert (=> b!2593373 (= e!1636168 (forall!6089 (t!212959 l!3230) lambda!96302))))

(assert (= (and d!734655 (not res!1090896)) b!2593372))

(assert (= (and b!2593372 res!1090897) b!2593373))

(declare-fun b_lambda!77235 () Bool)

(assert (=> (not b_lambda!77235) (not b!2593372)))

(declare-fun m!2929447 () Bool)

(assert (=> b!2593372 m!2929447))

(declare-fun m!2929449 () Bool)

(assert (=> b!2593373 m!2929449))

(assert (=> b!2593309 d!734655))

(declare-fun d!734659 () Bool)

(declare-fun lt!912828 () Int)

(assert (=> d!734659 (>= lt!912828 0)))

(declare-fun e!1636169 () Int)

(assert (=> d!734659 (= lt!912828 e!1636169)))

(declare-fun c!418020 () Bool)

(assert (=> d!734659 (= c!418020 (is-Nil!29846 lt!912767))))

(assert (=> d!734659 (= (size!23153 lt!912767) lt!912828)))

(declare-fun b!2593374 () Bool)

(assert (=> b!2593374 (= e!1636169 0)))

(declare-fun b!2593375 () Bool)

(assert (=> b!2593375 (= e!1636169 (+ 1 (size!23153 (t!212959 lt!912767))))))

(assert (= (and d!734659 c!418020) b!2593374))

(assert (= (and d!734659 (not c!418020)) b!2593375))

(declare-fun m!2929451 () Bool)

(assert (=> b!2593375 m!2929451))

(assert (=> b!2593314 d!734659))

(declare-fun d!734661 () Bool)

(declare-fun e!1636172 () Bool)

(assert (=> d!734661 e!1636172))

(declare-fun res!1090900 () Bool)

(assert (=> d!734661 (=> (not res!1090900) (not e!1636172))))

(declare-fun lt!912831 () List!29946)

(assert (=> d!734661 (= res!1090900 (noDuplicate!394 lt!912831))))

(declare-fun choose!15354 ((Set B!2091)) List!29946)

(assert (=> d!734661 (= lt!912831 (choose!15354 lt!912766))))

(assert (=> d!734661 (= (toList!1791 lt!912766) lt!912831)))

(declare-fun b!2593378 () Bool)

(assert (=> b!2593378 (= e!1636172 (= (content!4181 lt!912831) lt!912766))))

(assert (= (and d!734661 res!1090900) b!2593378))

(declare-fun m!2929453 () Bool)

(assert (=> d!734661 m!2929453))

(declare-fun m!2929455 () Bool)

(assert (=> d!734661 m!2929455))

(declare-fun m!2929457 () Bool)

(assert (=> b!2593378 m!2929457))

(assert (=> b!2593314 d!734661))

(declare-fun d!734663 () Bool)

(declare-fun c!418023 () Bool)

(assert (=> d!734663 (= c!418023 (is-Nil!29846 l!3230))))

(declare-fun e!1636177 () (Set B!2091))

(assert (=> d!734663 (= (content!4181 l!3230) e!1636177)))

(declare-fun b!2593383 () Bool)

(assert (=> b!2593383 (= e!1636177 (as set.empty (Set B!2091)))))

(declare-fun b!2593384 () Bool)

(assert (=> b!2593384 (= e!1636177 (set.union (set.insert (h!35266 l!3230) (as set.empty (Set B!2091))) (content!4181 (t!212959 l!3230))))))

(assert (= (and d!734663 c!418023) b!2593383))

(assert (= (and d!734663 (not c!418023)) b!2593384))

(assert (=> b!2593384 m!2929397))

(assert (=> b!2593384 m!2929389))

(assert (=> b!2593308 d!734663))

(declare-fun d!734665 () Bool)

(declare-fun res!1090905 () Bool)

(declare-fun e!1636182 () Bool)

(assert (=> d!734665 (=> res!1090905 e!1636182)))

(assert (=> d!734665 (= res!1090905 (is-Nil!29846 lt!912767))))

(assert (=> d!734665 (= (noDuplicate!394 lt!912767) e!1636182)))

(declare-fun b!2593389 () Bool)

(declare-fun e!1636183 () Bool)

(assert (=> b!2593389 (= e!1636182 e!1636183)))

(declare-fun res!1090906 () Bool)

(assert (=> b!2593389 (=> (not res!1090906) (not e!1636183))))

(assert (=> b!2593389 (= res!1090906 (not (contains!5396 (t!212959 lt!912767) (h!35266 lt!912767))))))

(declare-fun b!2593390 () Bool)

(assert (=> b!2593390 (= e!1636183 (noDuplicate!394 (t!212959 lt!912767)))))

(assert (= (and d!734665 (not res!1090905)) b!2593389))

(assert (= (and b!2593389 res!1090906) b!2593390))

(declare-fun m!2929461 () Bool)

(assert (=> b!2593389 m!2929461))

(declare-fun m!2929465 () Bool)

(assert (=> b!2593390 m!2929465))

(assert (=> b!2593313 d!734665))

(declare-fun bs!472466 () Bool)

(declare-fun d!734667 () Bool)

(assert (= bs!472466 (and d!734667 b!2593318)))

(declare-fun lambda!96321 () Int)

(assert (=> bs!472466 (not (= lambda!96321 lambda!96301))))

(declare-fun bs!472467 () Bool)

(assert (= bs!472467 (and d!734667 b!2593309)))

(assert (=> bs!472467 (= lambda!96321 lambda!96302)))

(assert (=> d!734667 true))

(assert (=> d!734667 (forall!6089 l!3230 lambda!96321)))

(declare-fun lt!912837 () Unit!43836)

(declare-fun choose!15355 (List!29946 List!29946) Unit!43836)

(assert (=> d!734667 (= lt!912837 (choose!15355 l!3230 lt!912767))))

(assert (=> d!734667 (set.subset (content!4181 l!3230) (content!4181 lt!912767))))

(assert (=> d!734667 (= (subsetContains!69 l!3230 lt!912767) lt!912837)))

(declare-fun bs!472468 () Bool)

(assert (= bs!472468 d!734667))

(declare-fun m!2929467 () Bool)

(assert (=> bs!472468 m!2929467))

(declare-fun m!2929469 () Bool)

(assert (=> bs!472468 m!2929469))

(assert (=> bs!472468 m!2929395))

(declare-fun m!2929471 () Bool)

(assert (=> bs!472468 m!2929471))

(assert (=> b!2593313 d!734667))

(declare-fun bs!472469 () Bool)

(declare-fun d!734671 () Bool)

(assert (= bs!472469 (and d!734671 b!2593318)))

(declare-fun lambda!96323 () Int)

(assert (=> bs!472469 (not (= lambda!96323 lambda!96301))))

(declare-fun bs!472470 () Bool)

(assert (= bs!472470 (and d!734671 b!2593309)))

(assert (=> bs!472470 (= (= l!3230 lt!912767) (= lambda!96323 lambda!96302))))

(declare-fun bs!472471 () Bool)

(assert (= bs!472471 (and d!734671 d!734667)))

(assert (=> bs!472471 (= (= l!3230 lt!912767) (= lambda!96323 lambda!96321))))

(assert (=> d!734671 true))

(assert (=> d!734671 (forall!6089 lt!912767 lambda!96323)))

(declare-fun lt!912838 () Unit!43836)

(assert (=> d!734671 (= lt!912838 (choose!15355 lt!912767 l!3230))))

(assert (=> d!734671 (set.subset (content!4181 lt!912767) (content!4181 l!3230))))

(assert (=> d!734671 (= (subsetContains!69 lt!912767 l!3230) lt!912838)))

(declare-fun bs!472472 () Bool)

(assert (= bs!472472 d!734671))

(declare-fun m!2929473 () Bool)

(assert (=> bs!472472 m!2929473))

(declare-fun m!2929475 () Bool)

(assert (=> bs!472472 m!2929475))

(assert (=> bs!472472 m!2929471))

(assert (=> bs!472472 m!2929395))

(assert (=> b!2593318 d!734671))

(declare-fun bs!472478 () Bool)

(declare-fun d!734673 () Bool)

(assert (= bs!472478 (and d!734673 b!2593318)))

(declare-fun lambda!96326 () Int)

(assert (=> bs!472478 (= lambda!96326 lambda!96301)))

(declare-fun bs!472479 () Bool)

(assert (= bs!472479 (and d!734673 b!2593309)))

(assert (=> bs!472479 (not (= lambda!96326 lambda!96302))))

(declare-fun bs!472480 () Bool)

(assert (= bs!472480 (and d!734673 d!734667)))

(assert (=> bs!472480 (not (= lambda!96326 lambda!96321))))

(declare-fun bs!472481 () Bool)

(assert (= bs!472481 (and d!734673 d!734671)))

(assert (=> bs!472481 (not (= lambda!96326 lambda!96323))))

(assert (=> d!734673 true))

(assert (=> d!734673 (exists!919 l!3230 lambda!96326)))

(declare-fun lt!912841 () Unit!43836)

(declare-fun choose!15356 (List!29946 List!29946) Unit!43836)

(assert (=> d!734673 (= lt!912841 (choose!15356 l!3230 lt!912767))))

(assert (=> d!734673 (noDuplicate!394 l!3230)))

(assert (=> d!734673 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!35 l!3230 lt!912767) lt!912841)))

(declare-fun bs!472482 () Bool)

(assert (= bs!472482 d!734673))

(declare-fun m!2929479 () Bool)

(assert (=> bs!472482 m!2929479))

(declare-fun m!2929481 () Bool)

(assert (=> bs!472482 m!2929481))

(assert (=> bs!472482 m!2929399))

(assert (=> b!2593318 d!734673))

(declare-fun bs!472483 () Bool)

(declare-fun d!734677 () Bool)

(assert (= bs!472483 (and d!734677 d!734667)))

(declare-fun lambda!96329 () Int)

(assert (=> bs!472483 (not (= lambda!96329 lambda!96321))))

(declare-fun bs!472484 () Bool)

(assert (= bs!472484 (and d!734677 d!734671)))

(assert (=> bs!472484 (not (= lambda!96329 lambda!96323))))

(declare-fun bs!472485 () Bool)

(assert (= bs!472485 (and d!734677 b!2593318)))

(assert (=> bs!472485 (not (= lambda!96329 lambda!96301))))

(declare-fun bs!472486 () Bool)

(assert (= bs!472486 (and d!734677 b!2593309)))

(assert (=> bs!472486 (not (= lambda!96329 lambda!96302))))

(declare-fun bs!472487 () Bool)

(assert (= bs!472487 (and d!734677 d!734673)))

(assert (=> bs!472487 (not (= lambda!96329 lambda!96326))))

(assert (=> d!734677 true))

(declare-fun order!15887 () Int)

(declare-fun dynLambda!12626 (Int Int) Int)

(assert (=> d!734677 (< (dynLambda!12626 order!15887 lambda!96301) (dynLambda!12626 order!15887 lambda!96329))))

(assert (=> d!734677 (= (exists!919 l!3230 lambda!96301) (not (forall!6089 l!3230 lambda!96329)))))

(declare-fun bs!472488 () Bool)

(assert (= bs!472488 d!734677))

(declare-fun m!2929483 () Bool)

(assert (=> bs!472488 m!2929483))

(assert (=> b!2593318 d!734677))

(declare-fun d!734679 () Bool)

(declare-fun e!1636204 () Bool)

(assert (=> d!734679 e!1636204))

(declare-fun res!1090916 () Bool)

(assert (=> d!734679 (=> (not res!1090916) (not e!1636204))))

(declare-fun lt!912851 () B!2091)

(assert (=> d!734679 (= res!1090916 (dynLambda!12625 lambda!96301 lt!912851))))

(declare-fun e!1636202 () B!2091)

(assert (=> d!734679 (= lt!912851 e!1636202)))

(declare-fun c!418032 () Bool)

(declare-fun e!1636203 () Bool)

(assert (=> d!734679 (= c!418032 e!1636203)))

(declare-fun res!1090915 () Bool)

(assert (=> d!734679 (=> (not res!1090915) (not e!1636203))))

(assert (=> d!734679 (= res!1090915 (is-Cons!29846 l!3230))))

(assert (=> d!734679 (exists!919 l!3230 lambda!96301)))

(assert (=> d!734679 (= (getWitness!545 l!3230 lambda!96301) lt!912851)))

(declare-fun b!2593419 () Bool)

(assert (=> b!2593419 (= e!1636203 (dynLambda!12625 lambda!96301 (h!35266 l!3230)))))

(declare-fun b!2593420 () Bool)

(assert (=> b!2593420 (= e!1636202 (h!35266 l!3230))))

(declare-fun b!2593421 () Bool)

(declare-fun lt!912850 () Unit!43836)

(declare-fun Unit!43844 () Unit!43836)

(assert (=> b!2593421 (= lt!912850 Unit!43844)))

(assert (=> b!2593421 false))

(declare-fun e!1636205 () B!2091)

(declare-fun head!5875 (List!29946) B!2091)

(assert (=> b!2593421 (= e!1636205 (head!5875 l!3230))))

(declare-fun b!2593422 () Bool)

(assert (=> b!2593422 (= e!1636205 (getWitness!545 (t!212959 l!3230) lambda!96301))))

(declare-fun b!2593423 () Bool)

(assert (=> b!2593423 (= e!1636202 e!1636205)))

(declare-fun c!418033 () Bool)

(assert (=> b!2593423 (= c!418033 (is-Cons!29846 l!3230))))

(declare-fun b!2593424 () Bool)

(assert (=> b!2593424 (= e!1636204 (contains!5396 l!3230 lt!912851))))

(assert (= (and d!734679 res!1090915) b!2593419))

(assert (= (and d!734679 c!418032) b!2593420))

(assert (= (and d!734679 (not c!418032)) b!2593423))

(assert (= (and b!2593423 c!418033) b!2593422))

(assert (= (and b!2593423 (not c!418033)) b!2593421))

(assert (= (and d!734679 res!1090916) b!2593424))

(declare-fun b_lambda!77237 () Bool)

(assert (=> (not b_lambda!77237) (not d!734679)))

(declare-fun b_lambda!77239 () Bool)

(assert (=> (not b_lambda!77239) (not b!2593419)))

(declare-fun m!2929485 () Bool)

(assert (=> b!2593419 m!2929485))

(declare-fun m!2929487 () Bool)

(assert (=> d!734679 m!2929487))

(assert (=> d!734679 m!2929369))

(declare-fun m!2929489 () Bool)

(assert (=> b!2593421 m!2929489))

(declare-fun m!2929491 () Bool)

(assert (=> b!2593424 m!2929491))

(declare-fun m!2929493 () Bool)

(assert (=> b!2593422 m!2929493))

(assert (=> b!2593318 d!734679))

(declare-fun d!734681 () Bool)

(declare-fun lt!912854 () Bool)

(assert (=> d!734681 (= lt!912854 (set.member (h!35266 l!3230) (content!4181 (t!212959 l!3230))))))

(declare-fun e!1636211 () Bool)

(assert (=> d!734681 (= lt!912854 e!1636211)))

(declare-fun res!1090921 () Bool)

(assert (=> d!734681 (=> (not res!1090921) (not e!1636211))))

(assert (=> d!734681 (= res!1090921 (is-Cons!29846 (t!212959 l!3230)))))

(assert (=> d!734681 (= (contains!5396 (t!212959 l!3230) (h!35266 l!3230)) lt!912854)))

(declare-fun b!2593429 () Bool)

(declare-fun e!1636210 () Bool)

(assert (=> b!2593429 (= e!1636211 e!1636210)))

(declare-fun res!1090922 () Bool)

(assert (=> b!2593429 (=> res!1090922 e!1636210)))

(assert (=> b!2593429 (= res!1090922 (= (h!35266 (t!212959 l!3230)) (h!35266 l!3230)))))

(declare-fun b!2593430 () Bool)

(assert (=> b!2593430 (= e!1636210 (contains!5396 (t!212959 (t!212959 l!3230)) (h!35266 l!3230)))))

(assert (= (and d!734681 res!1090921) b!2593429))

(assert (= (and b!2593429 (not res!1090922)) b!2593430))

(assert (=> d!734681 m!2929389))

(declare-fun m!2929495 () Bool)

(assert (=> d!734681 m!2929495))

(declare-fun m!2929497 () Bool)

(assert (=> b!2593430 m!2929497))

(assert (=> b!2593307 d!734681))

(declare-fun d!734683 () Bool)

(declare-fun lt!912855 () Int)

(assert (=> d!734683 (>= lt!912855 0)))

(declare-fun e!1636212 () Int)

(assert (=> d!734683 (= lt!912855 e!1636212)))

(declare-fun c!418034 () Bool)

(assert (=> d!734683 (= c!418034 (is-Nil!29846 (toList!1791 lt!912771)))))

(assert (=> d!734683 (= (size!23153 (toList!1791 lt!912771)) lt!912855)))

(declare-fun b!2593431 () Bool)

(assert (=> b!2593431 (= e!1636212 0)))

(declare-fun b!2593432 () Bool)

(assert (=> b!2593432 (= e!1636212 (+ 1 (size!23153 (t!212959 (toList!1791 lt!912771)))))))

(assert (= (and d!734683 c!418034) b!2593431))

(assert (= (and d!734683 (not c!418034)) b!2593432))

(declare-fun m!2929499 () Bool)

(assert (=> b!2593432 m!2929499))

(assert (=> b!2593317 d!734683))

(declare-fun d!734685 () Bool)

(declare-fun e!1636213 () Bool)

(assert (=> d!734685 e!1636213))

(declare-fun res!1090923 () Bool)

(assert (=> d!734685 (=> (not res!1090923) (not e!1636213))))

(declare-fun lt!912856 () List!29946)

(assert (=> d!734685 (= res!1090923 (noDuplicate!394 lt!912856))))

(assert (=> d!734685 (= lt!912856 (choose!15354 lt!912771))))

(assert (=> d!734685 (= (toList!1791 lt!912771) lt!912856)))

(declare-fun b!2593433 () Bool)

(assert (=> b!2593433 (= e!1636213 (= (content!4181 lt!912856) lt!912771))))

(assert (= (and d!734685 res!1090923) b!2593433))

(declare-fun m!2929501 () Bool)

(assert (=> d!734685 m!2929501))

(declare-fun m!2929503 () Bool)

(assert (=> d!734685 m!2929503))

(declare-fun m!2929505 () Bool)

(assert (=> b!2593433 m!2929505))

(assert (=> b!2593317 d!734685))

(assert (=> b!2593317 d!734653))

(declare-fun d!734687 () Bool)

(declare-fun lt!912859 () Int)

(assert (=> d!734687 (>= lt!912859 0)))

(declare-fun e!1636218 () Int)

(assert (=> d!734687 (= lt!912859 e!1636218)))

(declare-fun c!418037 () Bool)

(assert (=> d!734687 (= c!418037 (is-Nil!29846 (t!212959 l!3230)))))

(assert (=> d!734687 (= (size!23153 (t!212959 l!3230)) lt!912859)))

(declare-fun b!2593440 () Bool)

(assert (=> b!2593440 (= e!1636218 0)))

(declare-fun b!2593441 () Bool)

(assert (=> b!2593441 (= e!1636218 (+ 1 (size!23153 (t!212959 (t!212959 l!3230)))))))

(assert (= (and d!734687 c!418037) b!2593440))

(assert (= (and d!734687 (not c!418037)) b!2593441))

(declare-fun m!2929507 () Bool)

(assert (=> b!2593441 m!2929507))

(assert (=> b!2593317 d!734687))

(declare-fun d!734689 () Bool)

(declare-fun c!418038 () Bool)

(assert (=> d!734689 (= c!418038 (is-Nil!29846 (t!212959 l!3230)))))

(declare-fun e!1636219 () (Set B!2091))

(assert (=> d!734689 (= (content!4181 (t!212959 l!3230)) e!1636219)))

(declare-fun b!2593442 () Bool)

(assert (=> b!2593442 (= e!1636219 (as set.empty (Set B!2091)))))

(declare-fun b!2593443 () Bool)

(assert (=> b!2593443 (= e!1636219 (set.union (set.insert (h!35266 (t!212959 l!3230)) (as set.empty (Set B!2091))) (content!4181 (t!212959 (t!212959 l!3230)))))))

(assert (= (and d!734689 c!418038) b!2593442))

(assert (= (and d!734689 (not c!418038)) b!2593443))

(declare-fun m!2929509 () Bool)

(assert (=> b!2593443 m!2929509))

(declare-fun m!2929511 () Bool)

(assert (=> b!2593443 m!2929511))

(assert (=> b!2593317 d!734689))

(declare-fun d!734691 () Bool)

(assert (=> d!734691 (= (size!23153 (toList!1791 (content!4181 (t!212959 l!3230)))) (size!23153 (t!212959 l!3230)))))

(declare-fun lt!912862 () Unit!43836)

(declare-fun choose!15359 (List!29946) Unit!43836)

(assert (=> d!734691 (= lt!912862 (choose!15359 (t!212959 l!3230)))))

(assert (=> d!734691 (noDuplicate!394 (t!212959 l!3230))))

(assert (=> d!734691 (= (lemmaNoDuplicateThenContentToListSameSize!81 (t!212959 l!3230)) lt!912862)))

(declare-fun bs!472489 () Bool)

(assert (= bs!472489 d!734691))

(declare-fun m!2929523 () Bool)

(assert (=> bs!472489 m!2929523))

(declare-fun m!2929525 () Bool)

(assert (=> bs!472489 m!2929525))

(declare-fun m!2929527 () Bool)

(assert (=> bs!472489 m!2929527))

(assert (=> bs!472489 m!2929387))

(declare-fun m!2929529 () Bool)

(assert (=> bs!472489 m!2929529))

(assert (=> bs!472489 m!2929389))

(assert (=> bs!472489 m!2929525))

(assert (=> bs!472489 m!2929389))

(assert (=> b!2593317 d!734691))

(assert (=> b!2593306 d!734663))

(declare-fun d!734695 () Bool)

(declare-fun res!1090926 () Bool)

(declare-fun e!1636220 () Bool)

(assert (=> d!734695 (=> res!1090926 e!1636220)))

(assert (=> d!734695 (= res!1090926 (is-Nil!29846 l!3230))))

(assert (=> d!734695 (= (noDuplicate!394 l!3230) e!1636220)))

(declare-fun b!2593444 () Bool)

(declare-fun e!1636221 () Bool)

(assert (=> b!2593444 (= e!1636220 e!1636221)))

(declare-fun res!1090927 () Bool)

(assert (=> b!2593444 (=> (not res!1090927) (not e!1636221))))

(assert (=> b!2593444 (= res!1090927 (not (contains!5396 (t!212959 l!3230) (h!35266 l!3230))))))

(declare-fun b!2593445 () Bool)

(assert (=> b!2593445 (= e!1636221 (noDuplicate!394 (t!212959 l!3230)))))

(assert (= (and d!734695 (not res!1090926)) b!2593444))

(assert (= (and b!2593444 res!1090927) b!2593445))

(assert (=> b!2593444 m!2929373))

(assert (=> b!2593445 m!2929523))

(assert (=> start!251406 d!734695))

(declare-fun b!2593450 () Bool)

(declare-fun e!1636224 () Bool)

(declare-fun tp!822857 () Bool)

(assert (=> b!2593450 (= e!1636224 (and tp_is_empty!13371 tp!822857))))

(assert (=> b!2593312 (= tp!822851 e!1636224)))

(assert (= (and b!2593312 (is-Cons!29846 (t!212959 l!3230))) b!2593450))

(declare-fun b_lambda!77245 () Bool)

(assert (= b_lambda!77235 (or b!2593309 b_lambda!77245)))

(declare-fun bs!472490 () Bool)

(declare-fun d!734697 () Bool)

(assert (= bs!472490 (and d!734697 b!2593309)))

(assert (=> bs!472490 (= (dynLambda!12625 lambda!96302 (h!35266 l!3230)) (contains!5396 lt!912767 (h!35266 l!3230)))))

(declare-fun m!2929531 () Bool)

(assert (=> bs!472490 m!2929531))

(assert (=> b!2593372 d!734697))

(declare-fun b_lambda!77247 () Bool)

(assert (= b_lambda!77239 (or b!2593318 b_lambda!77247)))

(declare-fun bs!472491 () Bool)

(declare-fun d!734699 () Bool)

(assert (= bs!472491 (and d!734699 b!2593318)))

(assert (=> bs!472491 (= (dynLambda!12625 lambda!96301 (h!35266 l!3230)) (not (contains!5396 lt!912767 (h!35266 l!3230))))))

(assert (=> bs!472491 m!2929531))

(assert (=> b!2593419 d!734699))

(declare-fun b_lambda!77249 () Bool)

(assert (= b_lambda!77237 (or b!2593318 b_lambda!77249)))

(declare-fun bs!472492 () Bool)

(declare-fun d!734701 () Bool)

(assert (= bs!472492 (and d!734701 b!2593318)))

(assert (=> bs!472492 (= (dynLambda!12625 lambda!96301 lt!912851) (not (contains!5396 lt!912767 lt!912851)))))

(declare-fun m!2929533 () Bool)

(assert (=> bs!472492 m!2929533))

(assert (=> d!734679 d!734701))

(push 1)

(assert (not b!2593444))

(assert (not b!2593421))

(assert (not b_lambda!77245))

(assert (not b!2593432))

(assert (not b!2593389))

(assert (not b!2593422))

(assert (not d!734681))

(assert (not b!2593441))

(assert (not b!2593384))

(assert (not d!734667))

(assert (not b!2593430))

(assert tp_is_empty!13371)

(assert (not b!2593367))

(assert (not b!2593390))

(assert (not bs!472490))

(assert (not b!2593378))

(assert (not b!2593373))

(assert (not b!2593433))

(assert (not d!734673))

(assert (not d!734679))

(assert (not d!734671))

(assert (not d!734661))

(assert (not b!2593443))

(assert (not d!734685))

(assert (not b!2593424))

(assert (not d!734677))

(assert (not bs!472492))

(assert (not b!2593450))

(assert (not b_lambda!77247))

(assert (not b!2593445))

(assert (not bs!472491))

(assert (not b!2593375))

(assert (not d!734691))

(assert (not b_lambda!77249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

