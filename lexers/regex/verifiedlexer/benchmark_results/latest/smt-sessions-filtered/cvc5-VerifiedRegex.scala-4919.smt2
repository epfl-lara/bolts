; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251454 () Bool)

(assert start!251454)

(declare-fun b!2593536 () Bool)

(assert (=> b!2593536 true))

(declare-fun bs!472505 () Bool)

(declare-fun b!2593539 () Bool)

(assert (= bs!472505 (and b!2593539 b!2593536)))

(declare-datatypes ((B!2095 0))(
  ( (B!2096 (val!9515 Int)) )
))
(declare-datatypes ((List!29948 0))(
  ( (Nil!29848) (Cons!29848 (h!35268 B!2095) (t!212961 List!29948)) )
))
(declare-fun l!3230 () List!29948)

(declare-fun lambda!96341 () Int)

(declare-fun lambda!96342 () Int)

(declare-fun lt!912913 () List!29948)

(assert (=> bs!472505 (= (= l!3230 lt!912913) (= lambda!96342 lambda!96341))))

(assert (=> b!2593539 true))

(declare-fun b!2593528 () Bool)

(declare-fun e!1636297 () Bool)

(declare-fun e!1636294 () Bool)

(assert (=> b!2593528 (= e!1636297 (not e!1636294))))

(declare-fun res!1090984 () Bool)

(assert (=> b!2593528 (=> res!1090984 e!1636294)))

(declare-fun lt!912912 () Int)

(declare-fun size!23155 (List!29948) Int)

(assert (=> b!2593528 (= res!1090984 (>= lt!912912 (size!23155 l!3230)))))

(declare-fun lt!912911 () Int)

(assert (=> b!2593528 (= lt!912912 lt!912911)))

(assert (=> b!2593528 (= lt!912911 (size!23155 (t!212961 l!3230)))))

(declare-fun lt!912917 () (Set B!2095))

(declare-fun toList!1793 ((Set B!2095)) List!29948)

(assert (=> b!2593528 (= lt!912912 (size!23155 (toList!1793 lt!912917)))))

(declare-fun content!4183 (List!29948) (Set B!2095))

(assert (=> b!2593528 (= lt!912917 (content!4183 (t!212961 l!3230)))))

(declare-datatypes ((Unit!43846 0))(
  ( (Unit!43847) )
))
(declare-fun lt!912915 () Unit!43846)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!83 (List!29948) Unit!43846)

(assert (=> b!2593528 (= lt!912915 (lemmaNoDuplicateThenContentToListSameSize!83 (t!212961 l!3230)))))

(declare-fun b!2593529 () Bool)

(declare-fun e!1636292 () Bool)

(declare-fun lt!912921 () B!2095)

(declare-fun contains!5398 (List!29948 B!2095) Bool)

(assert (=> b!2593529 (= e!1636292 (not (contains!5398 lt!912913 lt!912921)))))

(declare-fun b!2593530 () Bool)

(declare-fun e!1636295 () Bool)

(declare-fun e!1636298 () Bool)

(assert (=> b!2593530 (= e!1636295 e!1636298)))

(declare-fun res!1090979 () Bool)

(assert (=> b!2593530 (=> res!1090979 e!1636298)))

(declare-fun lt!912922 () (Set B!2095))

(assert (=> b!2593530 (= res!1090979 (not (= (content!4183 l!3230) lt!912922)))))

(assert (=> b!2593530 (= lt!912922 (set.union lt!912917 (set.insert (h!35268 l!3230) (as set.empty (Set B!2095)))))))

(declare-fun b!2593531 () Bool)

(declare-fun res!1090976 () Bool)

(assert (=> b!2593531 (=> res!1090976 e!1636294)))

(assert (=> b!2593531 (= res!1090976 (contains!5398 (t!212961 l!3230) (h!35268 l!3230)))))

(declare-fun b!2593532 () Bool)

(declare-fun e!1636293 () Bool)

(assert (=> b!2593532 (= e!1636293 e!1636292)))

(declare-fun res!1090983 () Bool)

(assert (=> b!2593532 (=> res!1090983 e!1636292)))

(assert (=> b!2593532 (= res!1090983 (contains!5398 l!3230 lt!912921))))

(declare-fun getWitness!547 (List!29948 Int) B!2095)

(assert (=> b!2593532 (= lt!912921 (getWitness!547 lt!912913 lambda!96342))))

(declare-fun b!2593534 () Bool)

(declare-fun e!1636290 () Unit!43846)

(declare-fun Unit!43848 () Unit!43846)

(assert (=> b!2593534 (= e!1636290 Unit!43848)))

(declare-fun b!2593535 () Bool)

(assert (=> b!2593535 (= e!1636294 e!1636295)))

(declare-fun res!1090975 () Bool)

(assert (=> b!2593535 (=> res!1090975 e!1636295)))

(declare-fun lt!912919 () Int)

(assert (=> b!2593535 (= res!1090975 (not (= (size!23155 l!3230) lt!912919)))))

(assert (=> b!2593535 (= lt!912919 (+ 1 lt!912911))))

(declare-fun Unit!43849 () Unit!43846)

(assert (=> b!2593536 (= e!1636290 Unit!43849)))

(declare-fun lt!912918 () Unit!43846)

(declare-fun subsetContains!71 (List!29948 List!29948) Unit!43846)

(assert (=> b!2593536 (= lt!912918 (subsetContains!71 lt!912913 l!3230))))

(declare-fun lt!912914 () Unit!43846)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!37 (List!29948 List!29948) Unit!43846)

(assert (=> b!2593536 (= lt!912914 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!37 l!3230 lt!912913))))

(declare-fun exists!921 (List!29948 Int) Bool)

(assert (=> b!2593536 (exists!921 l!3230 lambda!96341)))

(declare-fun lt!912920 () B!2095)

(assert (=> b!2593536 (= lt!912920 (getWitness!547 l!3230 lambda!96341))))

(assert (=> b!2593536 false))

(declare-fun b!2593537 () Bool)

(declare-fun e!1636291 () Bool)

(assert (=> b!2593537 (= e!1636298 e!1636291)))

(declare-fun res!1090977 () Bool)

(assert (=> b!2593537 (=> res!1090977 e!1636291)))

(declare-fun lt!912910 () Int)

(assert (=> b!2593537 (= res!1090977 (<= lt!912910 lt!912919))))

(declare-fun lt!912923 () Unit!43846)

(assert (=> b!2593537 (= lt!912923 e!1636290)))

(declare-fun c!418051 () Bool)

(assert (=> b!2593537 (= c!418051 (< lt!912910 lt!912919))))

(assert (=> b!2593537 (= lt!912910 (size!23155 lt!912913))))

(assert (=> b!2593537 (= lt!912913 (toList!1793 lt!912922))))

(declare-fun b!2593538 () Bool)

(declare-fun res!1090974 () Bool)

(assert (=> b!2593538 (=> (not res!1090974) (not e!1636297))))

(assert (=> b!2593538 (= res!1090974 (is-Cons!29848 l!3230))))

(assert (=> b!2593539 (= e!1636291 e!1636293)))

(declare-fun res!1090981 () Bool)

(assert (=> b!2593539 (=> res!1090981 e!1636293)))

(assert (=> b!2593539 (= res!1090981 (not (exists!921 lt!912913 lambda!96342)))))

(assert (=> b!2593539 (exists!921 lt!912913 lambda!96342)))

(declare-fun lt!912924 () Unit!43846)

(assert (=> b!2593539 (= lt!912924 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!37 lt!912913 l!3230))))

(declare-fun lt!912916 () Unit!43846)

(assert (=> b!2593539 (= lt!912916 (subsetContains!71 l!3230 lt!912913))))

(declare-fun b!2593533 () Bool)

(declare-fun res!1090982 () Bool)

(assert (=> b!2593533 (=> res!1090982 e!1636291)))

(assert (=> b!2593533 (= res!1090982 (not (= lt!912922 (content!4183 l!3230))))))

(declare-fun res!1090980 () Bool)

(assert (=> start!251454 (=> (not res!1090980) (not e!1636297))))

(declare-fun noDuplicate!396 (List!29948) Bool)

(assert (=> start!251454 (= res!1090980 (noDuplicate!396 l!3230))))

(assert (=> start!251454 e!1636297))

(declare-fun e!1636296 () Bool)

(assert (=> start!251454 e!1636296))

(declare-fun b!2593540 () Bool)

(declare-fun tp_is_empty!13375 () Bool)

(declare-fun tp!822863 () Bool)

(assert (=> b!2593540 (= e!1636296 (and tp_is_empty!13375 tp!822863))))

(declare-fun b!2593541 () Bool)

(declare-fun res!1090978 () Bool)

(assert (=> b!2593541 (=> res!1090978 e!1636294)))

(assert (=> b!2593541 (= res!1090978 (set.member (h!35268 l!3230) lt!912917))))

(assert (= (and start!251454 res!1090980) b!2593538))

(assert (= (and b!2593538 res!1090974) b!2593528))

(assert (= (and b!2593528 (not res!1090984)) b!2593541))

(assert (= (and b!2593541 (not res!1090978)) b!2593531))

(assert (= (and b!2593531 (not res!1090976)) b!2593535))

(assert (= (and b!2593535 (not res!1090975)) b!2593530))

(assert (= (and b!2593530 (not res!1090979)) b!2593537))

(assert (= (and b!2593537 c!418051) b!2593536))

(assert (= (and b!2593537 (not c!418051)) b!2593534))

(assert (= (and b!2593537 (not res!1090977)) b!2593533))

(assert (= (and b!2593533 (not res!1090982)) b!2593539))

(assert (= (and b!2593539 (not res!1090981)) b!2593532))

(assert (= (and b!2593532 (not res!1090983)) b!2593529))

(assert (= (and start!251454 (is-Cons!29848 l!3230)) b!2593540))

(declare-fun m!2929585 () Bool)

(assert (=> b!2593528 m!2929585))

(declare-fun m!2929587 () Bool)

(assert (=> b!2593528 m!2929587))

(assert (=> b!2593528 m!2929585))

(declare-fun m!2929589 () Bool)

(assert (=> b!2593528 m!2929589))

(declare-fun m!2929591 () Bool)

(assert (=> b!2593528 m!2929591))

(declare-fun m!2929593 () Bool)

(assert (=> b!2593528 m!2929593))

(declare-fun m!2929595 () Bool)

(assert (=> b!2593528 m!2929595))

(declare-fun m!2929597 () Bool)

(assert (=> b!2593531 m!2929597))

(declare-fun m!2929599 () Bool)

(assert (=> b!2593537 m!2929599))

(declare-fun m!2929601 () Bool)

(assert (=> b!2593537 m!2929601))

(declare-fun m!2929603 () Bool)

(assert (=> b!2593533 m!2929603))

(declare-fun m!2929605 () Bool)

(assert (=> b!2593532 m!2929605))

(declare-fun m!2929607 () Bool)

(assert (=> b!2593532 m!2929607))

(declare-fun m!2929609 () Bool)

(assert (=> b!2593539 m!2929609))

(assert (=> b!2593539 m!2929609))

(declare-fun m!2929611 () Bool)

(assert (=> b!2593539 m!2929611))

(declare-fun m!2929613 () Bool)

(assert (=> b!2593539 m!2929613))

(assert (=> b!2593530 m!2929603))

(declare-fun m!2929615 () Bool)

(assert (=> b!2593530 m!2929615))

(declare-fun m!2929617 () Bool)

(assert (=> b!2593529 m!2929617))

(assert (=> b!2593535 m!2929587))

(declare-fun m!2929619 () Bool)

(assert (=> b!2593536 m!2929619))

(declare-fun m!2929621 () Bool)

(assert (=> b!2593536 m!2929621))

(declare-fun m!2929623 () Bool)

(assert (=> b!2593536 m!2929623))

(declare-fun m!2929625 () Bool)

(assert (=> b!2593536 m!2929625))

(declare-fun m!2929627 () Bool)

(assert (=> b!2593541 m!2929627))

(declare-fun m!2929629 () Bool)

(assert (=> start!251454 m!2929629))

(push 1)

(assert (not b!2593529))

(assert (not b!2593536))

(assert (not start!251454))

(assert (not b!2593531))

(assert (not b!2593533))

(assert (not b!2593532))

(assert tp_is_empty!13375)

(assert (not b!2593528))

(assert (not b!2593537))

(assert (not b!2593530))

(assert (not b!2593540))

(assert (not b!2593539))

(assert (not b!2593535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734740 () Bool)

(declare-fun lt!912975 () Bool)

(assert (=> d!734740 (= lt!912975 (set.member lt!912921 (content!4183 lt!912913)))))

(declare-fun e!1636347 () Bool)

(assert (=> d!734740 (= lt!912975 e!1636347)))

(declare-fun res!1091028 () Bool)

(assert (=> d!734740 (=> (not res!1091028) (not e!1636347))))

(assert (=> d!734740 (= res!1091028 (is-Cons!29848 lt!912913))))

(assert (=> d!734740 (= (contains!5398 lt!912913 lt!912921) lt!912975)))

(declare-fun b!2593598 () Bool)

(declare-fun e!1636346 () Bool)

(assert (=> b!2593598 (= e!1636347 e!1636346)))

(declare-fun res!1091029 () Bool)

(assert (=> b!2593598 (=> res!1091029 e!1636346)))

(assert (=> b!2593598 (= res!1091029 (= (h!35268 lt!912913) lt!912921))))

(declare-fun b!2593599 () Bool)

(assert (=> b!2593599 (= e!1636346 (contains!5398 (t!212961 lt!912913) lt!912921))))

(assert (= (and d!734740 res!1091028) b!2593598))

(assert (= (and b!2593598 (not res!1091029)) b!2593599))

(declare-fun m!2929681 () Bool)

(assert (=> d!734740 m!2929681))

(declare-fun m!2929683 () Bool)

(assert (=> d!734740 m!2929683))

(declare-fun m!2929685 () Bool)

(assert (=> b!2593599 m!2929685))

(assert (=> b!2593529 d!734740))

(declare-fun d!734742 () Bool)

(declare-fun lt!912978 () Int)

(assert (=> d!734742 (>= lt!912978 0)))

(declare-fun e!1636350 () Int)

(assert (=> d!734742 (= lt!912978 e!1636350)))

(declare-fun c!418057 () Bool)

(assert (=> d!734742 (= c!418057 (is-Nil!29848 l!3230))))

(assert (=> d!734742 (= (size!23155 l!3230) lt!912978)))

(declare-fun b!2593604 () Bool)

(assert (=> b!2593604 (= e!1636350 0)))

(declare-fun b!2593605 () Bool)

(assert (=> b!2593605 (= e!1636350 (+ 1 (size!23155 (t!212961 l!3230))))))

(assert (= (and d!734742 c!418057) b!2593604))

(assert (= (and d!734742 (not c!418057)) b!2593605))

(assert (=> b!2593605 m!2929591))

(assert (=> b!2593535 d!734742))

(declare-fun d!734744 () Bool)

(declare-fun c!418064 () Bool)

(assert (=> d!734744 (= c!418064 (is-Nil!29848 l!3230))))

(declare-fun e!1636359 () (Set B!2095))

(assert (=> d!734744 (= (content!4183 l!3230) e!1636359)))

(declare-fun b!2593620 () Bool)

(assert (=> b!2593620 (= e!1636359 (as set.empty (Set B!2095)))))

(declare-fun b!2593621 () Bool)

(assert (=> b!2593621 (= e!1636359 (set.union (set.insert (h!35268 l!3230) (as set.empty (Set B!2095))) (content!4183 (t!212961 l!3230))))))

(assert (= (and d!734744 c!418064) b!2593620))

(assert (= (and d!734744 (not c!418064)) b!2593621))

(assert (=> b!2593621 m!2929615))

(assert (=> b!2593621 m!2929593))

(assert (=> b!2593533 d!734744))

(declare-fun bs!472507 () Bool)

(declare-fun d!734746 () Bool)

(assert (= bs!472507 (and d!734746 b!2593536)))

(declare-fun lambda!96357 () Int)

(assert (=> bs!472507 (not (= lambda!96357 lambda!96341))))

(declare-fun bs!472508 () Bool)

(assert (= bs!472508 (and d!734746 b!2593539)))

(assert (=> bs!472508 (not (= lambda!96357 lambda!96342))))

(assert (=> d!734746 true))

(declare-fun order!15889 () Int)

(declare-fun dynLambda!12629 (Int Int) Int)

(assert (=> d!734746 (< (dynLambda!12629 order!15889 lambda!96342) (dynLambda!12629 order!15889 lambda!96357))))

(declare-fun forall!6091 (List!29948 Int) Bool)

(assert (=> d!734746 (= (exists!921 lt!912913 lambda!96342) (not (forall!6091 lt!912913 lambda!96357)))))

(declare-fun bs!472509 () Bool)

(assert (= bs!472509 d!734746))

(declare-fun m!2929687 () Bool)

(assert (=> bs!472509 m!2929687))

(assert (=> b!2593539 d!734746))

(declare-fun bs!472510 () Bool)

(declare-fun d!734748 () Bool)

(assert (= bs!472510 (and d!734748 b!2593536)))

(declare-fun lambda!96360 () Int)

(assert (=> bs!472510 (= (= l!3230 lt!912913) (= lambda!96360 lambda!96341))))

(declare-fun bs!472511 () Bool)

(assert (= bs!472511 (and d!734748 b!2593539)))

(assert (=> bs!472511 (= lambda!96360 lambda!96342)))

(declare-fun bs!472512 () Bool)

(assert (= bs!472512 (and d!734748 d!734746)))

(assert (=> bs!472512 (not (= lambda!96360 lambda!96357))))

(assert (=> d!734748 true))

(assert (=> d!734748 (exists!921 lt!912913 lambda!96360)))

(declare-fun lt!912985 () Unit!43846)

(declare-fun choose!15362 (List!29948 List!29948) Unit!43846)

(assert (=> d!734748 (= lt!912985 (choose!15362 lt!912913 l!3230))))

(assert (=> d!734748 (noDuplicate!396 lt!912913)))

(assert (=> d!734748 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!37 lt!912913 l!3230) lt!912985)))

(declare-fun bs!472513 () Bool)

(assert (= bs!472513 d!734748))

(declare-fun m!2929689 () Bool)

(assert (=> bs!472513 m!2929689))

(declare-fun m!2929691 () Bool)

(assert (=> bs!472513 m!2929691))

(declare-fun m!2929693 () Bool)

(assert (=> bs!472513 m!2929693))

(assert (=> b!2593539 d!734748))

(declare-fun bs!472514 () Bool)

(declare-fun d!734750 () Bool)

(assert (= bs!472514 (and d!734750 b!2593536)))

(declare-fun lambda!96363 () Int)

(assert (=> bs!472514 (not (= lambda!96363 lambda!96341))))

(declare-fun bs!472515 () Bool)

(assert (= bs!472515 (and d!734750 b!2593539)))

(assert (=> bs!472515 (not (= lambda!96363 lambda!96342))))

(declare-fun bs!472516 () Bool)

(assert (= bs!472516 (and d!734750 d!734746)))

(assert (=> bs!472516 (not (= lambda!96363 lambda!96357))))

(declare-fun bs!472517 () Bool)

(assert (= bs!472517 (and d!734750 d!734748)))

(assert (=> bs!472517 (not (= lambda!96363 lambda!96360))))

(assert (=> d!734750 true))

(assert (=> d!734750 (forall!6091 l!3230 lambda!96363)))

(declare-fun lt!912990 () Unit!43846)

(declare-fun choose!15363 (List!29948 List!29948) Unit!43846)

(assert (=> d!734750 (= lt!912990 (choose!15363 l!3230 lt!912913))))

(assert (=> d!734750 (set.subset (content!4183 l!3230) (content!4183 lt!912913))))

(assert (=> d!734750 (= (subsetContains!71 l!3230 lt!912913) lt!912990)))

(declare-fun bs!472518 () Bool)

(assert (= bs!472518 d!734750))

(declare-fun m!2929705 () Bool)

(assert (=> bs!472518 m!2929705))

(declare-fun m!2929707 () Bool)

(assert (=> bs!472518 m!2929707))

(assert (=> bs!472518 m!2929603))

(assert (=> bs!472518 m!2929681))

(assert (=> b!2593539 d!734750))

(declare-fun d!734754 () Bool)

(declare-fun res!1091040 () Bool)

(declare-fun e!1636375 () Bool)

(assert (=> d!734754 (=> res!1091040 e!1636375)))

(assert (=> d!734754 (= res!1091040 (is-Nil!29848 l!3230))))

(assert (=> d!734754 (= (noDuplicate!396 l!3230) e!1636375)))

(declare-fun b!2593642 () Bool)

(declare-fun e!1636376 () Bool)

(assert (=> b!2593642 (= e!1636375 e!1636376)))

(declare-fun res!1091041 () Bool)

(assert (=> b!2593642 (=> (not res!1091041) (not e!1636376))))

(assert (=> b!2593642 (= res!1091041 (not (contains!5398 (t!212961 l!3230) (h!35268 l!3230))))))

(declare-fun b!2593643 () Bool)

(assert (=> b!2593643 (= e!1636376 (noDuplicate!396 (t!212961 l!3230)))))

(assert (= (and d!734754 (not res!1091040)) b!2593642))

(assert (= (and b!2593642 res!1091041) b!2593643))

(assert (=> b!2593642 m!2929597))

(declare-fun m!2929709 () Bool)

(assert (=> b!2593643 m!2929709))

(assert (=> start!251454 d!734754))

(declare-fun d!734756 () Bool)

(declare-fun e!1636379 () Bool)

(assert (=> d!734756 e!1636379))

(declare-fun res!1091044 () Bool)

(assert (=> d!734756 (=> (not res!1091044) (not e!1636379))))

(declare-fun lt!912993 () List!29948)

(assert (=> d!734756 (= res!1091044 (noDuplicate!396 lt!912993))))

(declare-fun choose!15364 ((Set B!2095)) List!29948)

(assert (=> d!734756 (= lt!912993 (choose!15364 lt!912917))))

(assert (=> d!734756 (= (toList!1793 lt!912917) lt!912993)))

(declare-fun b!2593646 () Bool)

(assert (=> b!2593646 (= e!1636379 (= (content!4183 lt!912993) lt!912917))))

(assert (= (and d!734756 res!1091044) b!2593646))

(declare-fun m!2929711 () Bool)

(assert (=> d!734756 m!2929711))

(declare-fun m!2929713 () Bool)

(assert (=> d!734756 m!2929713))

(declare-fun m!2929715 () Bool)

(assert (=> b!2593646 m!2929715))

(assert (=> b!2593528 d!734756))

(declare-fun d!734760 () Bool)

(declare-fun lt!912994 () Int)

(assert (=> d!734760 (>= lt!912994 0)))

(declare-fun e!1636380 () Int)

(assert (=> d!734760 (= lt!912994 e!1636380)))

(declare-fun c!418070 () Bool)

(assert (=> d!734760 (= c!418070 (is-Nil!29848 (toList!1793 lt!912917)))))

(assert (=> d!734760 (= (size!23155 (toList!1793 lt!912917)) lt!912994)))

(declare-fun b!2593647 () Bool)

(assert (=> b!2593647 (= e!1636380 0)))

(declare-fun b!2593648 () Bool)

(assert (=> b!2593648 (= e!1636380 (+ 1 (size!23155 (t!212961 (toList!1793 lt!912917)))))))

(assert (= (and d!734760 c!418070) b!2593647))

(assert (= (and d!734760 (not c!418070)) b!2593648))

(declare-fun m!2929717 () Bool)

(assert (=> b!2593648 m!2929717))

(assert (=> b!2593528 d!734760))

(assert (=> b!2593528 d!734742))

(declare-fun d!734762 () Bool)

(declare-fun lt!912995 () Int)

(assert (=> d!734762 (>= lt!912995 0)))

(declare-fun e!1636381 () Int)

(assert (=> d!734762 (= lt!912995 e!1636381)))

(declare-fun c!418071 () Bool)

(assert (=> d!734762 (= c!418071 (is-Nil!29848 (t!212961 l!3230)))))

(assert (=> d!734762 (= (size!23155 (t!212961 l!3230)) lt!912995)))

(declare-fun b!2593649 () Bool)

(assert (=> b!2593649 (= e!1636381 0)))

(declare-fun b!2593650 () Bool)

(assert (=> b!2593650 (= e!1636381 (+ 1 (size!23155 (t!212961 (t!212961 l!3230)))))))

(assert (= (and d!734762 c!418071) b!2593649))

(assert (= (and d!734762 (not c!418071)) b!2593650))

(declare-fun m!2929719 () Bool)

(assert (=> b!2593650 m!2929719))

(assert (=> b!2593528 d!734762))

(declare-fun d!734764 () Bool)

(declare-fun c!418072 () Bool)

(assert (=> d!734764 (= c!418072 (is-Nil!29848 (t!212961 l!3230)))))

(declare-fun e!1636386 () (Set B!2095))

(assert (=> d!734764 (= (content!4183 (t!212961 l!3230)) e!1636386)))

(declare-fun b!2593655 () Bool)

(assert (=> b!2593655 (= e!1636386 (as set.empty (Set B!2095)))))

(declare-fun b!2593656 () Bool)

(assert (=> b!2593656 (= e!1636386 (set.union (set.insert (h!35268 (t!212961 l!3230)) (as set.empty (Set B!2095))) (content!4183 (t!212961 (t!212961 l!3230)))))))

(assert (= (and d!734764 c!418072) b!2593655))

(assert (= (and d!734764 (not c!418072)) b!2593656))

(declare-fun m!2929721 () Bool)

(assert (=> b!2593656 m!2929721))

(declare-fun m!2929723 () Bool)

(assert (=> b!2593656 m!2929723))

(assert (=> b!2593528 d!734764))

(declare-fun d!734766 () Bool)

(assert (=> d!734766 (= (size!23155 (toList!1793 (content!4183 (t!212961 l!3230)))) (size!23155 (t!212961 l!3230)))))

(declare-fun lt!912998 () Unit!43846)

(declare-fun choose!15365 (List!29948) Unit!43846)

(assert (=> d!734766 (= lt!912998 (choose!15365 (t!212961 l!3230)))))

(assert (=> d!734766 (noDuplicate!396 (t!212961 l!3230))))

(assert (=> d!734766 (= (lemmaNoDuplicateThenContentToListSameSize!83 (t!212961 l!3230)) lt!912998)))

(declare-fun bs!472519 () Bool)

(assert (= bs!472519 d!734766))

(declare-fun m!2929725 () Bool)

(assert (=> bs!472519 m!2929725))

(declare-fun m!2929727 () Bool)

(assert (=> bs!472519 m!2929727))

(assert (=> bs!472519 m!2929709))

(assert (=> bs!472519 m!2929591))

(declare-fun m!2929731 () Bool)

(assert (=> bs!472519 m!2929731))

(assert (=> bs!472519 m!2929593))

(assert (=> bs!472519 m!2929725))

(assert (=> bs!472519 m!2929593))

(assert (=> b!2593528 d!734766))

(declare-fun d!734770 () Bool)

(declare-fun lt!912999 () Int)

(assert (=> d!734770 (>= lt!912999 0)))

(declare-fun e!1636389 () Int)

(assert (=> d!734770 (= lt!912999 e!1636389)))

(declare-fun c!418073 () Bool)

(assert (=> d!734770 (= c!418073 (is-Nil!29848 lt!912913))))

(assert (=> d!734770 (= (size!23155 lt!912913) lt!912999)))

(declare-fun b!2593659 () Bool)

(assert (=> b!2593659 (= e!1636389 0)))

(declare-fun b!2593660 () Bool)

(assert (=> b!2593660 (= e!1636389 (+ 1 (size!23155 (t!212961 lt!912913))))))

(assert (= (and d!734770 c!418073) b!2593659))

(assert (= (and d!734770 (not c!418073)) b!2593660))

(declare-fun m!2929733 () Bool)

(assert (=> b!2593660 m!2929733))

(assert (=> b!2593537 d!734770))

(declare-fun d!734772 () Bool)

(declare-fun e!1636390 () Bool)

(assert (=> d!734772 e!1636390))

(declare-fun res!1091051 () Bool)

(assert (=> d!734772 (=> (not res!1091051) (not e!1636390))))

(declare-fun lt!913000 () List!29948)

(assert (=> d!734772 (= res!1091051 (noDuplicate!396 lt!913000))))

(assert (=> d!734772 (= lt!913000 (choose!15364 lt!912922))))

(assert (=> d!734772 (= (toList!1793 lt!912922) lt!913000)))

(declare-fun b!2593661 () Bool)

(assert (=> b!2593661 (= e!1636390 (= (content!4183 lt!913000) lt!912922))))

(assert (= (and d!734772 res!1091051) b!2593661))

(declare-fun m!2929735 () Bool)

(assert (=> d!734772 m!2929735))

(declare-fun m!2929737 () Bool)

(assert (=> d!734772 m!2929737))

(declare-fun m!2929739 () Bool)

(assert (=> b!2593661 m!2929739))

(assert (=> b!2593537 d!734772))

(declare-fun d!734774 () Bool)

(declare-fun lt!913001 () Bool)

(assert (=> d!734774 (= lt!913001 (set.member lt!912921 (content!4183 l!3230)))))

(declare-fun e!1636392 () Bool)

(assert (=> d!734774 (= lt!913001 e!1636392)))

(declare-fun res!1091052 () Bool)

(assert (=> d!734774 (=> (not res!1091052) (not e!1636392))))

(assert (=> d!734774 (= res!1091052 (is-Cons!29848 l!3230))))

(assert (=> d!734774 (= (contains!5398 l!3230 lt!912921) lt!913001)))

(declare-fun b!2593662 () Bool)

(declare-fun e!1636391 () Bool)

(assert (=> b!2593662 (= e!1636392 e!1636391)))

(declare-fun res!1091053 () Bool)

(assert (=> b!2593662 (=> res!1091053 e!1636391)))

(assert (=> b!2593662 (= res!1091053 (= (h!35268 l!3230) lt!912921))))

(declare-fun b!2593663 () Bool)

(assert (=> b!2593663 (= e!1636391 (contains!5398 (t!212961 l!3230) lt!912921))))

(assert (= (and d!734774 res!1091052) b!2593662))

(assert (= (and b!2593662 (not res!1091053)) b!2593663))

(assert (=> d!734774 m!2929603))

(declare-fun m!2929741 () Bool)

(assert (=> d!734774 m!2929741))

(declare-fun m!2929743 () Bool)

(assert (=> b!2593663 m!2929743))

(assert (=> b!2593532 d!734774))

(declare-fun b!2593678 () Bool)

(declare-fun e!1636403 () B!2095)

(assert (=> b!2593678 (= e!1636403 (getWitness!547 (t!212961 lt!912913) lambda!96342))))

(declare-fun d!734776 () Bool)

(declare-fun e!1636402 () Bool)

(assert (=> d!734776 e!1636402))

(declare-fun res!1091059 () Bool)

(assert (=> d!734776 (=> (not res!1091059) (not e!1636402))))

(declare-fun lt!913006 () B!2095)

(declare-fun dynLambda!12630 (Int B!2095) Bool)

(assert (=> d!734776 (= res!1091059 (dynLambda!12630 lambda!96342 lt!913006))))

(declare-fun e!1636404 () B!2095)

(assert (=> d!734776 (= lt!913006 e!1636404)))

(declare-fun c!418079 () Bool)

(declare-fun e!1636401 () Bool)

(assert (=> d!734776 (= c!418079 e!1636401)))

(declare-fun res!1091058 () Bool)

(assert (=> d!734776 (=> (not res!1091058) (not e!1636401))))

(assert (=> d!734776 (= res!1091058 (is-Cons!29848 lt!912913))))

(assert (=> d!734776 (exists!921 lt!912913 lambda!96342)))

(assert (=> d!734776 (= (getWitness!547 lt!912913 lambda!96342) lt!913006)))

(declare-fun b!2593679 () Bool)

(assert (=> b!2593679 (= e!1636402 (contains!5398 lt!912913 lt!913006))))

(declare-fun b!2593680 () Bool)

(declare-fun lt!913007 () Unit!43846)

(declare-fun Unit!43855 () Unit!43846)

(assert (=> b!2593680 (= lt!913007 Unit!43855)))

(assert (=> b!2593680 false))

(declare-fun head!5878 (List!29948) B!2095)

(assert (=> b!2593680 (= e!1636403 (head!5878 lt!912913))))

(declare-fun b!2593681 () Bool)

(assert (=> b!2593681 (= e!1636404 e!1636403)))

(declare-fun c!418078 () Bool)

(assert (=> b!2593681 (= c!418078 (is-Cons!29848 lt!912913))))

(declare-fun b!2593682 () Bool)

(assert (=> b!2593682 (= e!1636404 (h!35268 lt!912913))))

(declare-fun b!2593683 () Bool)

(assert (=> b!2593683 (= e!1636401 (dynLambda!12630 lambda!96342 (h!35268 lt!912913)))))

(assert (= (and d!734776 res!1091058) b!2593683))

(assert (= (and d!734776 c!418079) b!2593682))

(assert (= (and d!734776 (not c!418079)) b!2593681))

(assert (= (and b!2593681 c!418078) b!2593678))

(assert (= (and b!2593681 (not c!418078)) b!2593680))

(assert (= (and d!734776 res!1091059) b!2593679))

(declare-fun b_lambda!77263 () Bool)

(assert (=> (not b_lambda!77263) (not d!734776)))

(declare-fun b_lambda!77265 () Bool)

(assert (=> (not b_lambda!77265) (not b!2593683)))

(declare-fun m!2929747 () Bool)

(assert (=> d!734776 m!2929747))

(assert (=> d!734776 m!2929609))

(declare-fun m!2929749 () Bool)

(assert (=> b!2593680 m!2929749))

(declare-fun m!2929751 () Bool)

(assert (=> b!2593678 m!2929751))

(declare-fun m!2929753 () Bool)

(assert (=> b!2593679 m!2929753))

(declare-fun m!2929755 () Bool)

(assert (=> b!2593683 m!2929755))

(assert (=> b!2593532 d!734776))

(assert (=> b!2593530 d!734744))

(declare-fun d!734780 () Bool)

(declare-fun lt!913008 () Bool)

(assert (=> d!734780 (= lt!913008 (set.member (h!35268 l!3230) (content!4183 (t!212961 l!3230))))))

(declare-fun e!1636406 () Bool)

(assert (=> d!734780 (= lt!913008 e!1636406)))

(declare-fun res!1091060 () Bool)

(assert (=> d!734780 (=> (not res!1091060) (not e!1636406))))

(assert (=> d!734780 (= res!1091060 (is-Cons!29848 (t!212961 l!3230)))))

(assert (=> d!734780 (= (contains!5398 (t!212961 l!3230) (h!35268 l!3230)) lt!913008)))

(declare-fun b!2593684 () Bool)

(declare-fun e!1636405 () Bool)

(assert (=> b!2593684 (= e!1636406 e!1636405)))

(declare-fun res!1091061 () Bool)

(assert (=> b!2593684 (=> res!1091061 e!1636405)))

(assert (=> b!2593684 (= res!1091061 (= (h!35268 (t!212961 l!3230)) (h!35268 l!3230)))))

(declare-fun b!2593685 () Bool)

(assert (=> b!2593685 (= e!1636405 (contains!5398 (t!212961 (t!212961 l!3230)) (h!35268 l!3230)))))

(assert (= (and d!734780 res!1091060) b!2593684))

(assert (= (and b!2593684 (not res!1091061)) b!2593685))

(assert (=> d!734780 m!2929593))

(declare-fun m!2929757 () Bool)

(assert (=> d!734780 m!2929757))

(declare-fun m!2929759 () Bool)

(assert (=> b!2593685 m!2929759))

(assert (=> b!2593531 d!734780))

(declare-fun bs!472523 () Bool)

(declare-fun d!734782 () Bool)

(assert (= bs!472523 (and d!734782 d!734750)))

(declare-fun lambda!96367 () Int)

(assert (=> bs!472523 (= (= l!3230 lt!912913) (= lambda!96367 lambda!96363))))

(declare-fun bs!472524 () Bool)

(assert (= bs!472524 (and d!734782 b!2593539)))

(assert (=> bs!472524 (not (= lambda!96367 lambda!96342))))

(declare-fun bs!472525 () Bool)

(assert (= bs!472525 (and d!734782 b!2593536)))

(assert (=> bs!472525 (not (= lambda!96367 lambda!96341))))

(declare-fun bs!472526 () Bool)

(assert (= bs!472526 (and d!734782 d!734748)))

(assert (=> bs!472526 (not (= lambda!96367 lambda!96360))))

(declare-fun bs!472527 () Bool)

(assert (= bs!472527 (and d!734782 d!734746)))

(assert (=> bs!472527 (not (= lambda!96367 lambda!96357))))

(assert (=> d!734782 true))

(assert (=> d!734782 (forall!6091 lt!912913 lambda!96367)))

(declare-fun lt!913009 () Unit!43846)

(assert (=> d!734782 (= lt!913009 (choose!15363 lt!912913 l!3230))))

(assert (=> d!734782 (set.subset (content!4183 lt!912913) (content!4183 l!3230))))

(assert (=> d!734782 (= (subsetContains!71 lt!912913 l!3230) lt!913009)))

(declare-fun bs!472528 () Bool)

(assert (= bs!472528 d!734782))

(declare-fun m!2929761 () Bool)

(assert (=> bs!472528 m!2929761))

(declare-fun m!2929763 () Bool)

(assert (=> bs!472528 m!2929763))

(assert (=> bs!472528 m!2929681))

(assert (=> bs!472528 m!2929603))

(assert (=> b!2593536 d!734782))

(declare-fun bs!472529 () Bool)

(declare-fun d!734784 () Bool)

(assert (= bs!472529 (and d!734784 d!734750)))

(declare-fun lambda!96368 () Int)

(assert (=> bs!472529 (not (= lambda!96368 lambda!96363))))

(declare-fun bs!472530 () Bool)

(assert (= bs!472530 (and d!734784 b!2593539)))

(assert (=> bs!472530 (= (= lt!912913 l!3230) (= lambda!96368 lambda!96342))))

(declare-fun bs!472531 () Bool)

(assert (= bs!472531 (and d!734784 d!734782)))

(assert (=> bs!472531 (not (= lambda!96368 lambda!96367))))

(declare-fun bs!472532 () Bool)

(assert (= bs!472532 (and d!734784 b!2593536)))

(assert (=> bs!472532 (= lambda!96368 lambda!96341)))

(declare-fun bs!472533 () Bool)

(assert (= bs!472533 (and d!734784 d!734748)))

(assert (=> bs!472533 (= (= lt!912913 l!3230) (= lambda!96368 lambda!96360))))

(declare-fun bs!472534 () Bool)

(assert (= bs!472534 (and d!734784 d!734746)))

(assert (=> bs!472534 (not (= lambda!96368 lambda!96357))))

(assert (=> d!734784 true))

(assert (=> d!734784 (exists!921 l!3230 lambda!96368)))

(declare-fun lt!913012 () Unit!43846)

(assert (=> d!734784 (= lt!913012 (choose!15362 l!3230 lt!912913))))

(assert (=> d!734784 (noDuplicate!396 l!3230)))

(assert (=> d!734784 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!37 l!3230 lt!912913) lt!913012)))

(declare-fun bs!472535 () Bool)

(assert (= bs!472535 d!734784))

(declare-fun m!2929765 () Bool)

(assert (=> bs!472535 m!2929765))

(declare-fun m!2929767 () Bool)

(assert (=> bs!472535 m!2929767))

(assert (=> bs!472535 m!2929629))

(assert (=> b!2593536 d!734784))

(declare-fun bs!472536 () Bool)

(declare-fun d!734786 () Bool)

(assert (= bs!472536 (and d!734786 b!2593539)))

(declare-fun lambda!96371 () Int)

(assert (=> bs!472536 (not (= lambda!96371 lambda!96342))))

(declare-fun bs!472537 () Bool)

(assert (= bs!472537 (and d!734786 d!734782)))

(assert (=> bs!472537 (not (= lambda!96371 lambda!96367))))

(declare-fun bs!472538 () Bool)

(assert (= bs!472538 (and d!734786 b!2593536)))

(assert (=> bs!472538 (not (= lambda!96371 lambda!96341))))

(declare-fun bs!472539 () Bool)

(assert (= bs!472539 (and d!734786 d!734784)))

(assert (=> bs!472539 (not (= lambda!96371 lambda!96368))))

(declare-fun bs!472540 () Bool)

(assert (= bs!472540 (and d!734786 d!734750)))

(assert (=> bs!472540 (not (= lambda!96371 lambda!96363))))

(declare-fun bs!472541 () Bool)

(assert (= bs!472541 (and d!734786 d!734748)))

(assert (=> bs!472541 (not (= lambda!96371 lambda!96360))))

(declare-fun bs!472542 () Bool)

(assert (= bs!472542 (and d!734786 d!734746)))

(assert (=> bs!472542 (= (= lambda!96341 lambda!96342) (= lambda!96371 lambda!96357))))

(assert (=> d!734786 true))

(assert (=> d!734786 (< (dynLambda!12629 order!15889 lambda!96341) (dynLambda!12629 order!15889 lambda!96371))))

(assert (=> d!734786 (= (exists!921 l!3230 lambda!96341) (not (forall!6091 l!3230 lambda!96371)))))

(declare-fun bs!472543 () Bool)

(assert (= bs!472543 d!734786))

(declare-fun m!2929769 () Bool)

(assert (=> bs!472543 m!2929769))

(assert (=> b!2593536 d!734786))

(declare-fun b!2593686 () Bool)

(declare-fun e!1636411 () B!2095)

(assert (=> b!2593686 (= e!1636411 (getWitness!547 (t!212961 l!3230) lambda!96341))))

(declare-fun d!734788 () Bool)

(declare-fun e!1636410 () Bool)

(assert (=> d!734788 e!1636410))

(declare-fun res!1091063 () Bool)

(assert (=> d!734788 (=> (not res!1091063) (not e!1636410))))

(declare-fun lt!913013 () B!2095)

(assert (=> d!734788 (= res!1091063 (dynLambda!12630 lambda!96341 lt!913013))))

(declare-fun e!1636412 () B!2095)

(assert (=> d!734788 (= lt!913013 e!1636412)))

(declare-fun c!418081 () Bool)

(declare-fun e!1636409 () Bool)

(assert (=> d!734788 (= c!418081 e!1636409)))

(declare-fun res!1091062 () Bool)

(assert (=> d!734788 (=> (not res!1091062) (not e!1636409))))

(assert (=> d!734788 (= res!1091062 (is-Cons!29848 l!3230))))

(assert (=> d!734788 (exists!921 l!3230 lambda!96341)))

(assert (=> d!734788 (= (getWitness!547 l!3230 lambda!96341) lt!913013)))

(declare-fun b!2593687 () Bool)

(assert (=> b!2593687 (= e!1636410 (contains!5398 l!3230 lt!913013))))

(declare-fun b!2593688 () Bool)

(declare-fun lt!913014 () Unit!43846)

(declare-fun Unit!43856 () Unit!43846)

(assert (=> b!2593688 (= lt!913014 Unit!43856)))

(assert (=> b!2593688 false))

(assert (=> b!2593688 (= e!1636411 (head!5878 l!3230))))

(declare-fun b!2593689 () Bool)

(assert (=> b!2593689 (= e!1636412 e!1636411)))

(declare-fun c!418080 () Bool)

(assert (=> b!2593689 (= c!418080 (is-Cons!29848 l!3230))))

(declare-fun b!2593690 () Bool)

(assert (=> b!2593690 (= e!1636412 (h!35268 l!3230))))

(declare-fun b!2593691 () Bool)

(assert (=> b!2593691 (= e!1636409 (dynLambda!12630 lambda!96341 (h!35268 l!3230)))))

(assert (= (and d!734788 res!1091062) b!2593691))

(assert (= (and d!734788 c!418081) b!2593690))

(assert (= (and d!734788 (not c!418081)) b!2593689))

(assert (= (and b!2593689 c!418080) b!2593686))

(assert (= (and b!2593689 (not c!418080)) b!2593688))

(assert (= (and d!734788 res!1091063) b!2593687))

(declare-fun b_lambda!77267 () Bool)

(assert (=> (not b_lambda!77267) (not d!734788)))

(declare-fun b_lambda!77269 () Bool)

(assert (=> (not b_lambda!77269) (not b!2593691)))

(declare-fun m!2929771 () Bool)

(assert (=> d!734788 m!2929771))

(assert (=> d!734788 m!2929623))

(declare-fun m!2929773 () Bool)

(assert (=> b!2593688 m!2929773))

(declare-fun m!2929775 () Bool)

(assert (=> b!2593686 m!2929775))

(declare-fun m!2929777 () Bool)

(assert (=> b!2593687 m!2929777))

(declare-fun m!2929779 () Bool)

(assert (=> b!2593691 m!2929779))

(assert (=> b!2593536 d!734788))

(declare-fun b!2593696 () Bool)

(declare-fun e!1636415 () Bool)

(declare-fun tp!822869 () Bool)

(assert (=> b!2593696 (= e!1636415 (and tp_is_empty!13375 tp!822869))))

(assert (=> b!2593540 (= tp!822863 e!1636415)))

(assert (= (and b!2593540 (is-Cons!29848 (t!212961 l!3230))) b!2593696))

(declare-fun b_lambda!77271 () Bool)

(assert (= b_lambda!77267 (or b!2593536 b_lambda!77271)))

(declare-fun bs!472547 () Bool)

(declare-fun d!734790 () Bool)

(assert (= bs!472547 (and d!734790 b!2593536)))

(assert (=> bs!472547 (= (dynLambda!12630 lambda!96341 lt!913013) (not (contains!5398 lt!912913 lt!913013)))))

(declare-fun m!2929781 () Bool)

(assert (=> bs!472547 m!2929781))

(assert (=> d!734788 d!734790))

(declare-fun b_lambda!77273 () Bool)

(assert (= b_lambda!77263 (or b!2593539 b_lambda!77273)))

(declare-fun bs!472548 () Bool)

(declare-fun d!734792 () Bool)

(assert (= bs!472548 (and d!734792 b!2593539)))

(assert (=> bs!472548 (= (dynLambda!12630 lambda!96342 lt!913006) (not (contains!5398 l!3230 lt!913006)))))

(declare-fun m!2929783 () Bool)

(assert (=> bs!472548 m!2929783))

(assert (=> d!734776 d!734792))

(declare-fun b_lambda!77275 () Bool)

(assert (= b_lambda!77265 (or b!2593539 b_lambda!77275)))

(declare-fun bs!472549 () Bool)

(declare-fun d!734794 () Bool)

(assert (= bs!472549 (and d!734794 b!2593539)))

(assert (=> bs!472549 (= (dynLambda!12630 lambda!96342 (h!35268 lt!912913)) (not (contains!5398 l!3230 (h!35268 lt!912913))))))

(declare-fun m!2929785 () Bool)

(assert (=> bs!472549 m!2929785))

(assert (=> b!2593683 d!734794))

(declare-fun b_lambda!77277 () Bool)

(assert (= b_lambda!77269 (or b!2593536 b_lambda!77277)))

(declare-fun bs!472550 () Bool)

(declare-fun d!734796 () Bool)

(assert (= bs!472550 (and d!734796 b!2593536)))

(assert (=> bs!472550 (= (dynLambda!12630 lambda!96341 (h!35268 l!3230)) (not (contains!5398 lt!912913 (h!35268 l!3230))))))

(declare-fun m!2929787 () Bool)

(assert (=> bs!472550 m!2929787))

(assert (=> b!2593691 d!734796))

(push 1)

(assert (not b!2593680))

(assert (not b!2593621))

(assert (not b_lambda!77271))

(assert (not d!734784))

(assert (not b!2593696))

(assert (not b!2593656))

(assert tp_is_empty!13375)

(assert (not b!2593678))

(assert (not b!2593605))

(assert (not b!2593685))

(assert (not b!2593642))

(assert (not b!2593648))

(assert (not b!2593688))

(assert (not b!2593663))

(assert (not d!734786))

(assert (not b!2593646))

(assert (not d!734750))

(assert (not d!734782))

(assert (not b!2593660))

(assert (not bs!472548))

(assert (not b!2593599))

(assert (not d!734748))

(assert (not bs!472550))

(assert (not d!734740))

(assert (not d!734788))

(assert (not b!2593686))

(assert (not b_lambda!77273))

(assert (not d!734774))

(assert (not bs!472547))

(assert (not d!734746))

(assert (not d!734756))

(assert (not bs!472549))

(assert (not b_lambda!77275))

(assert (not b!2593643))

(assert (not b!2593679))

(assert (not d!734766))

(assert (not d!734780))

(assert (not d!734776))

(assert (not b_lambda!77277))

(assert (not b!2593661))

(assert (not b!2593650))

(assert (not b!2593687))

(assert (not d!734772))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

