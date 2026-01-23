; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251274 () Bool)

(assert start!251274)

(declare-fun b!2592582 () Bool)

(assert (=> b!2592582 true))

(declare-fun b!2592574 () Bool)

(declare-fun res!1090423 () Bool)

(declare-fun e!1635599 () Bool)

(assert (=> b!2592574 (=> res!1090423 e!1635599)))

(declare-datatypes ((B!2071 0))(
  ( (B!2072 (val!9503 Int)) )
))
(declare-fun lt!912245 () (Set B!2071))

(declare-datatypes ((List!29936 0))(
  ( (Nil!29836) (Cons!29836 (h!35256 B!2071) (t!212949 List!29936)) )
))
(declare-fun l!3230 () List!29936)

(declare-fun content!4171 (List!29936) (Set B!2071))

(assert (=> b!2592574 (= res!1090423 (not (= lt!912245 (content!4171 l!3230))))))

(declare-fun b!2592575 () Bool)

(declare-fun e!1635598 () Bool)

(declare-fun e!1635596 () Bool)

(assert (=> b!2592575 (= e!1635598 e!1635596)))

(declare-fun res!1090421 () Bool)

(assert (=> b!2592575 (=> res!1090421 e!1635596)))

(declare-fun lt!912238 () Int)

(declare-fun size!23143 (List!29936) Int)

(assert (=> b!2592575 (= res!1090421 (not (= (size!23143 l!3230) lt!912238)))))

(declare-fun lt!912240 () Int)

(assert (=> b!2592575 (= lt!912238 (+ 1 lt!912240))))

(declare-fun b!2592576 () Bool)

(declare-fun res!1090424 () Bool)

(declare-fun e!1635601 () Bool)

(assert (=> b!2592576 (=> res!1090424 e!1635601)))

(declare-fun lt!912237 () Int)

(declare-fun lt!912241 () Int)

(assert (=> b!2592576 (= res!1090424 (<= lt!912237 lt!912241))))

(declare-fun b!2592577 () Bool)

(declare-fun e!1635600 () Bool)

(assert (=> b!2592577 (= e!1635600 (not e!1635598))))

(declare-fun res!1090416 () Bool)

(assert (=> b!2592577 (=> res!1090416 e!1635598)))

(declare-fun lt!912243 () Int)

(declare-fun lt!912236 () (Set B!2071))

(assert (=> b!2592577 (= res!1090416 (or (>= lt!912243 lt!912237) (set.member (h!35256 l!3230) lt!912236)))))

(assert (=> b!2592577 (= lt!912237 (size!23143 l!3230))))

(assert (=> b!2592577 (= lt!912243 lt!912240)))

(assert (=> b!2592577 (= lt!912240 (size!23143 (t!212949 l!3230)))))

(declare-fun toList!1781 ((Set B!2071)) List!29936)

(assert (=> b!2592577 (= lt!912243 (size!23143 (toList!1781 lt!912236)))))

(assert (=> b!2592577 (= lt!912236 (content!4171 (t!212949 l!3230)))))

(declare-datatypes ((Unit!43801 0))(
  ( (Unit!43802) )
))
(declare-fun lt!912244 () Unit!43801)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!71 (List!29936) Unit!43801)

(assert (=> b!2592577 (= lt!912244 (lemmaNoDuplicateThenContentToListSameSize!71 (t!212949 l!3230)))))

(declare-fun b!2592578 () Bool)

(declare-fun e!1635602 () Bool)

(declare-fun tp_is_empty!13351 () Bool)

(declare-fun tp!822803 () Bool)

(assert (=> b!2592578 (= e!1635602 (and tp_is_empty!13351 tp!822803))))

(declare-fun b!2592579 () Bool)

(declare-fun e!1635597 () Bool)

(assert (=> b!2592579 (= e!1635597 e!1635599)))

(declare-fun res!1090417 () Bool)

(assert (=> b!2592579 (=> res!1090417 e!1635599)))

(assert (=> b!2592579 (= res!1090417 (>= lt!912241 lt!912238))))

(declare-fun lt!912242 () List!29936)

(assert (=> b!2592579 (= lt!912241 (size!23143 lt!912242))))

(assert (=> b!2592579 (= lt!912242 (toList!1781 lt!912245))))

(declare-fun b!2592580 () Bool)

(assert (=> b!2592580 (= e!1635596 e!1635597)))

(declare-fun res!1090422 () Bool)

(assert (=> b!2592580 (=> res!1090422 e!1635597)))

(assert (=> b!2592580 (= res!1090422 (not (= (content!4171 l!3230) lt!912245)))))

(assert (=> b!2592580 (= lt!912245 (set.union lt!912236 (set.insert (h!35256 l!3230) (as set.empty (Set B!2071)))))))

(declare-fun b!2592581 () Bool)

(declare-fun res!1090420 () Bool)

(assert (=> b!2592581 (=> (not res!1090420) (not e!1635600))))

(assert (=> b!2592581 (= res!1090420 (is-Cons!29836 l!3230))))

(declare-fun lambda!96203 () Int)

(declare-fun forall!6083 (List!29936 Int) Bool)

(assert (=> b!2592582 (= e!1635601 (forall!6083 lt!912242 lambda!96203))))

(declare-fun res!1090419 () Bool)

(assert (=> start!251274 (=> (not res!1090419) (not e!1635600))))

(declare-fun noDuplicate!384 (List!29936) Bool)

(assert (=> start!251274 (= res!1090419 (noDuplicate!384 l!3230))))

(assert (=> start!251274 e!1635600))

(assert (=> start!251274 e!1635602))

(declare-fun b!2592583 () Bool)

(assert (=> b!2592583 (= e!1635599 e!1635601)))

(declare-fun res!1090418 () Bool)

(assert (=> b!2592583 (=> res!1090418 e!1635601)))

(assert (=> b!2592583 (= res!1090418 (not (noDuplicate!384 lt!912242)))))

(declare-fun lt!912239 () Unit!43801)

(declare-fun subsetContains!59 (List!29936 List!29936) Unit!43801)

(assert (=> b!2592583 (= lt!912239 (subsetContains!59 lt!912242 l!3230))))

(declare-fun b!2592584 () Bool)

(declare-fun res!1090425 () Bool)

(assert (=> b!2592584 (=> res!1090425 e!1635598)))

(declare-fun contains!5386 (List!29936 B!2071) Bool)

(assert (=> b!2592584 (= res!1090425 (contains!5386 (t!212949 l!3230) (h!35256 l!3230)))))

(assert (= (and start!251274 res!1090419) b!2592581))

(assert (= (and b!2592581 res!1090420) b!2592577))

(assert (= (and b!2592577 (not res!1090416)) b!2592584))

(assert (= (and b!2592584 (not res!1090425)) b!2592575))

(assert (= (and b!2592575 (not res!1090421)) b!2592580))

(assert (= (and b!2592580 (not res!1090422)) b!2592579))

(assert (= (and b!2592579 (not res!1090417)) b!2592574))

(assert (= (and b!2592574 (not res!1090423)) b!2592583))

(assert (= (and b!2592583 (not res!1090418)) b!2592576))

(assert (= (and b!2592576 (not res!1090424)) b!2592582))

(assert (= (and start!251274 (is-Cons!29836 l!3230)) b!2592578))

(declare-fun m!2928621 () Bool)

(assert (=> b!2592579 m!2928621))

(declare-fun m!2928623 () Bool)

(assert (=> b!2592579 m!2928623))

(declare-fun m!2928625 () Bool)

(assert (=> start!251274 m!2928625))

(declare-fun m!2928627 () Bool)

(assert (=> b!2592583 m!2928627))

(declare-fun m!2928629 () Bool)

(assert (=> b!2592583 m!2928629))

(declare-fun m!2928631 () Bool)

(assert (=> b!2592580 m!2928631))

(declare-fun m!2928633 () Bool)

(assert (=> b!2592580 m!2928633))

(declare-fun m!2928635 () Bool)

(assert (=> b!2592577 m!2928635))

(declare-fun m!2928637 () Bool)

(assert (=> b!2592577 m!2928637))

(declare-fun m!2928639 () Bool)

(assert (=> b!2592577 m!2928639))

(declare-fun m!2928641 () Bool)

(assert (=> b!2592577 m!2928641))

(declare-fun m!2928643 () Bool)

(assert (=> b!2592577 m!2928643))

(declare-fun m!2928645 () Bool)

(assert (=> b!2592577 m!2928645))

(declare-fun m!2928647 () Bool)

(assert (=> b!2592577 m!2928647))

(assert (=> b!2592577 m!2928645))

(declare-fun m!2928649 () Bool)

(assert (=> b!2592584 m!2928649))

(declare-fun m!2928651 () Bool)

(assert (=> b!2592582 m!2928651))

(assert (=> b!2592574 m!2928631))

(assert (=> b!2592575 m!2928635))

(push 1)

(assert (not b!2592582))

(assert (not b!2592579))

(assert (not b!2592584))

(assert (not b!2592575))

(assert (not start!251274))

(assert (not b!2592574))

(assert (not b!2592577))

(assert (not b!2592580))

(assert tp_is_empty!13351)

(assert (not b!2592578))

(assert (not b!2592583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734434 () Bool)

(declare-fun res!1090460 () Bool)

(declare-fun e!1635630 () Bool)

(assert (=> d!734434 (=> res!1090460 e!1635630)))

(assert (=> d!734434 (= res!1090460 (is-Nil!29836 lt!912242))))

(assert (=> d!734434 (= (noDuplicate!384 lt!912242) e!1635630)))

(declare-fun b!2592626 () Bool)

(declare-fun e!1635631 () Bool)

(assert (=> b!2592626 (= e!1635630 e!1635631)))

(declare-fun res!1090461 () Bool)

(assert (=> b!2592626 (=> (not res!1090461) (not e!1635631))))

(assert (=> b!2592626 (= res!1090461 (not (contains!5386 (t!212949 lt!912242) (h!35256 lt!912242))))))

(declare-fun b!2592627 () Bool)

(assert (=> b!2592627 (= e!1635631 (noDuplicate!384 (t!212949 lt!912242)))))

(assert (= (and d!734434 (not res!1090460)) b!2592626))

(assert (= (and b!2592626 res!1090461) b!2592627))

(declare-fun m!2928685 () Bool)

(assert (=> b!2592626 m!2928685))

(declare-fun m!2928687 () Bool)

(assert (=> b!2592627 m!2928687))

(assert (=> b!2592583 d!734434))

(declare-fun bs!472381 () Bool)

(declare-fun d!734436 () Bool)

(assert (= bs!472381 (and d!734436 b!2592582)))

(declare-fun lambda!96209 () Int)

(assert (=> bs!472381 (= lambda!96209 lambda!96203)))

(assert (=> d!734436 true))

(assert (=> d!734436 (forall!6083 lt!912242 lambda!96209)))

(declare-fun lt!912278 () Unit!43801)

(declare-fun choose!15336 (List!29936 List!29936) Unit!43801)

(assert (=> d!734436 (= lt!912278 (choose!15336 lt!912242 l!3230))))

(assert (=> d!734436 (set.subset (content!4171 lt!912242) (content!4171 l!3230))))

(assert (=> d!734436 (= (subsetContains!59 lt!912242 l!3230) lt!912278)))

(declare-fun bs!472382 () Bool)

(assert (= bs!472382 d!734436))

(declare-fun m!2928689 () Bool)

(assert (=> bs!472382 m!2928689))

(declare-fun m!2928691 () Bool)

(assert (=> bs!472382 m!2928691))

(declare-fun m!2928693 () Bool)

(assert (=> bs!472382 m!2928693))

(assert (=> bs!472382 m!2928631))

(assert (=> b!2592583 d!734436))

(declare-fun d!734438 () Bool)

(declare-fun lt!912281 () Int)

(assert (=> d!734438 (>= lt!912281 0)))

(declare-fun e!1635634 () Int)

(assert (=> d!734438 (= lt!912281 e!1635634)))

(declare-fun c!417911 () Bool)

(assert (=> d!734438 (= c!417911 (is-Nil!29836 (toList!1781 lt!912236)))))

(assert (=> d!734438 (= (size!23143 (toList!1781 lt!912236)) lt!912281)))

(declare-fun b!2592632 () Bool)

(assert (=> b!2592632 (= e!1635634 0)))

(declare-fun b!2592633 () Bool)

(assert (=> b!2592633 (= e!1635634 (+ 1 (size!23143 (t!212949 (toList!1781 lt!912236)))))))

(assert (= (and d!734438 c!417911) b!2592632))

(assert (= (and d!734438 (not c!417911)) b!2592633))

(declare-fun m!2928695 () Bool)

(assert (=> b!2592633 m!2928695))

(assert (=> b!2592577 d!734438))

(declare-fun d!734440 () Bool)

(declare-fun lt!912282 () Int)

(assert (=> d!734440 (>= lt!912282 0)))

(declare-fun e!1635635 () Int)

(assert (=> d!734440 (= lt!912282 e!1635635)))

(declare-fun c!417912 () Bool)

(assert (=> d!734440 (= c!417912 (is-Nil!29836 l!3230))))

(assert (=> d!734440 (= (size!23143 l!3230) lt!912282)))

(declare-fun b!2592634 () Bool)

(assert (=> b!2592634 (= e!1635635 0)))

(declare-fun b!2592635 () Bool)

(assert (=> b!2592635 (= e!1635635 (+ 1 (size!23143 (t!212949 l!3230))))))

(assert (= (and d!734440 c!417912) b!2592634))

(assert (= (and d!734440 (not c!417912)) b!2592635))

(assert (=> b!2592635 m!2928637))

(assert (=> b!2592577 d!734440))

(declare-fun d!734442 () Bool)

(declare-fun lt!912283 () Int)

(assert (=> d!734442 (>= lt!912283 0)))

(declare-fun e!1635636 () Int)

(assert (=> d!734442 (= lt!912283 e!1635636)))

(declare-fun c!417913 () Bool)

(assert (=> d!734442 (= c!417913 (is-Nil!29836 (t!212949 l!3230)))))

(assert (=> d!734442 (= (size!23143 (t!212949 l!3230)) lt!912283)))

(declare-fun b!2592636 () Bool)

(assert (=> b!2592636 (= e!1635636 0)))

(declare-fun b!2592637 () Bool)

(assert (=> b!2592637 (= e!1635636 (+ 1 (size!23143 (t!212949 (t!212949 l!3230)))))))

(assert (= (and d!734442 c!417913) b!2592636))

(assert (= (and d!734442 (not c!417913)) b!2592637))

(declare-fun m!2928697 () Bool)

(assert (=> b!2592637 m!2928697))

(assert (=> b!2592577 d!734442))

(declare-fun d!734444 () Bool)

(declare-fun c!417916 () Bool)

(assert (=> d!734444 (= c!417916 (is-Nil!29836 (t!212949 l!3230)))))

(declare-fun e!1635639 () (Set B!2071))

(assert (=> d!734444 (= (content!4171 (t!212949 l!3230)) e!1635639)))

(declare-fun b!2592642 () Bool)

(assert (=> b!2592642 (= e!1635639 (as set.empty (Set B!2071)))))

(declare-fun b!2592643 () Bool)

(assert (=> b!2592643 (= e!1635639 (set.union (set.insert (h!35256 (t!212949 l!3230)) (as set.empty (Set B!2071))) (content!4171 (t!212949 (t!212949 l!3230)))))))

(assert (= (and d!734444 c!417916) b!2592642))

(assert (= (and d!734444 (not c!417916)) b!2592643))

(declare-fun m!2928699 () Bool)

(assert (=> b!2592643 m!2928699))

(declare-fun m!2928701 () Bool)

(assert (=> b!2592643 m!2928701))

(assert (=> b!2592577 d!734444))

(declare-fun d!734446 () Bool)

(assert (=> d!734446 (= (size!23143 (toList!1781 (content!4171 (t!212949 l!3230)))) (size!23143 (t!212949 l!3230)))))

(declare-fun lt!912286 () Unit!43801)

(declare-fun choose!15337 (List!29936) Unit!43801)

(assert (=> d!734446 (= lt!912286 (choose!15337 (t!212949 l!3230)))))

(assert (=> d!734446 (noDuplicate!384 (t!212949 l!3230))))

(assert (=> d!734446 (= (lemmaNoDuplicateThenContentToListSameSize!71 (t!212949 l!3230)) lt!912286)))

(declare-fun bs!472383 () Bool)

(assert (= bs!472383 d!734446))

(declare-fun m!2928703 () Bool)

(assert (=> bs!472383 m!2928703))

(declare-fun m!2928705 () Bool)

(assert (=> bs!472383 m!2928705))

(declare-fun m!2928707 () Bool)

(assert (=> bs!472383 m!2928707))

(declare-fun m!2928709 () Bool)

(assert (=> bs!472383 m!2928709))

(assert (=> bs!472383 m!2928639))

(assert (=> bs!472383 m!2928707))

(assert (=> bs!472383 m!2928639))

(assert (=> bs!472383 m!2928637))

(assert (=> b!2592577 d!734446))

(declare-fun d!734450 () Bool)

(declare-fun e!1635646 () Bool)

(assert (=> d!734450 e!1635646))

(declare-fun res!1090468 () Bool)

(assert (=> d!734450 (=> (not res!1090468) (not e!1635646))))

(declare-fun lt!912289 () List!29936)

(assert (=> d!734450 (= res!1090468 (noDuplicate!384 lt!912289))))

(declare-fun choose!15338 ((Set B!2071)) List!29936)

(assert (=> d!734450 (= lt!912289 (choose!15338 lt!912236))))

(assert (=> d!734450 (= (toList!1781 lt!912236) lt!912289)))

(declare-fun b!2592650 () Bool)

(assert (=> b!2592650 (= e!1635646 (= (content!4171 lt!912289) lt!912236))))

(assert (= (and d!734450 res!1090468) b!2592650))

(declare-fun m!2928711 () Bool)

(assert (=> d!734450 m!2928711))

(declare-fun m!2928713 () Bool)

(assert (=> d!734450 m!2928713))

(declare-fun m!2928715 () Bool)

(assert (=> b!2592650 m!2928715))

(assert (=> b!2592577 d!734450))

(declare-fun d!734452 () Bool)

(declare-fun res!1090475 () Bool)

(declare-fun e!1635653 () Bool)

(assert (=> d!734452 (=> res!1090475 e!1635653)))

(assert (=> d!734452 (= res!1090475 (is-Nil!29836 lt!912242))))

(assert (=> d!734452 (= (forall!6083 lt!912242 lambda!96203) e!1635653)))

(declare-fun b!2592657 () Bool)

(declare-fun e!1635654 () Bool)

(assert (=> b!2592657 (= e!1635653 e!1635654)))

(declare-fun res!1090476 () Bool)

(assert (=> b!2592657 (=> (not res!1090476) (not e!1635654))))

(declare-fun dynLambda!12618 (Int B!2071) Bool)

(assert (=> b!2592657 (= res!1090476 (dynLambda!12618 lambda!96203 (h!35256 lt!912242)))))

(declare-fun b!2592658 () Bool)

(assert (=> b!2592658 (= e!1635654 (forall!6083 (t!212949 lt!912242) lambda!96203))))

(assert (= (and d!734452 (not res!1090475)) b!2592657))

(assert (= (and b!2592657 res!1090476) b!2592658))

(declare-fun b_lambda!77195 () Bool)

(assert (=> (not b_lambda!77195) (not b!2592657)))

(declare-fun m!2928719 () Bool)

(assert (=> b!2592657 m!2928719))

(declare-fun m!2928721 () Bool)

(assert (=> b!2592658 m!2928721))

(assert (=> b!2592582 d!734452))

(declare-fun d!734456 () Bool)

(declare-fun lt!912290 () Int)

(assert (=> d!734456 (>= lt!912290 0)))

(declare-fun e!1635655 () Int)

(assert (=> d!734456 (= lt!912290 e!1635655)))

(declare-fun c!417917 () Bool)

(assert (=> d!734456 (= c!417917 (is-Nil!29836 lt!912242))))

(assert (=> d!734456 (= (size!23143 lt!912242) lt!912290)))

(declare-fun b!2592659 () Bool)

(assert (=> b!2592659 (= e!1635655 0)))

(declare-fun b!2592660 () Bool)

(assert (=> b!2592660 (= e!1635655 (+ 1 (size!23143 (t!212949 lt!912242))))))

(assert (= (and d!734456 c!417917) b!2592659))

(assert (= (and d!734456 (not c!417917)) b!2592660))

(declare-fun m!2928723 () Bool)

(assert (=> b!2592660 m!2928723))

(assert (=> b!2592579 d!734456))

(declare-fun d!734458 () Bool)

(declare-fun e!1635656 () Bool)

(assert (=> d!734458 e!1635656))

(declare-fun res!1090477 () Bool)

(assert (=> d!734458 (=> (not res!1090477) (not e!1635656))))

(declare-fun lt!912291 () List!29936)

(assert (=> d!734458 (= res!1090477 (noDuplicate!384 lt!912291))))

(assert (=> d!734458 (= lt!912291 (choose!15338 lt!912245))))

(assert (=> d!734458 (= (toList!1781 lt!912245) lt!912291)))

(declare-fun b!2592661 () Bool)

(assert (=> b!2592661 (= e!1635656 (= (content!4171 lt!912291) lt!912245))))

(assert (= (and d!734458 res!1090477) b!2592661))

(declare-fun m!2928725 () Bool)

(assert (=> d!734458 m!2928725))

(declare-fun m!2928727 () Bool)

(assert (=> d!734458 m!2928727))

(declare-fun m!2928729 () Bool)

(assert (=> b!2592661 m!2928729))

(assert (=> b!2592579 d!734458))

(declare-fun d!734460 () Bool)

(declare-fun lt!912296 () Bool)

(assert (=> d!734460 (= lt!912296 (set.member (h!35256 l!3230) (content!4171 (t!212949 l!3230))))))

(declare-fun e!1635661 () Bool)

(assert (=> d!734460 (= lt!912296 e!1635661)))

(declare-fun res!1090483 () Bool)

(assert (=> d!734460 (=> (not res!1090483) (not e!1635661))))

(assert (=> d!734460 (= res!1090483 (is-Cons!29836 (t!212949 l!3230)))))

(assert (=> d!734460 (= (contains!5386 (t!212949 l!3230) (h!35256 l!3230)) lt!912296)))

(declare-fun b!2592666 () Bool)

(declare-fun e!1635662 () Bool)

(assert (=> b!2592666 (= e!1635661 e!1635662)))

(declare-fun res!1090482 () Bool)

(assert (=> b!2592666 (=> res!1090482 e!1635662)))

(assert (=> b!2592666 (= res!1090482 (= (h!35256 (t!212949 l!3230)) (h!35256 l!3230)))))

(declare-fun b!2592667 () Bool)

(assert (=> b!2592667 (= e!1635662 (contains!5386 (t!212949 (t!212949 l!3230)) (h!35256 l!3230)))))

(assert (= (and d!734460 res!1090483) b!2592666))

(assert (= (and b!2592666 (not res!1090482)) b!2592667))

(assert (=> d!734460 m!2928639))

(declare-fun m!2928731 () Bool)

(assert (=> d!734460 m!2928731))

(declare-fun m!2928733 () Bool)

(assert (=> b!2592667 m!2928733))

(assert (=> b!2592584 d!734460))

(declare-fun d!734462 () Bool)

(declare-fun res!1090488 () Bool)

(declare-fun e!1635667 () Bool)

(assert (=> d!734462 (=> res!1090488 e!1635667)))

(assert (=> d!734462 (= res!1090488 (is-Nil!29836 l!3230))))

(assert (=> d!734462 (= (noDuplicate!384 l!3230) e!1635667)))

(declare-fun b!2592672 () Bool)

(declare-fun e!1635668 () Bool)

(assert (=> b!2592672 (= e!1635667 e!1635668)))

(declare-fun res!1090489 () Bool)

(assert (=> b!2592672 (=> (not res!1090489) (not e!1635668))))

(assert (=> b!2592672 (= res!1090489 (not (contains!5386 (t!212949 l!3230) (h!35256 l!3230))))))

(declare-fun b!2592673 () Bool)

(assert (=> b!2592673 (= e!1635668 (noDuplicate!384 (t!212949 l!3230)))))

(assert (= (and d!734462 (not res!1090488)) b!2592672))

(assert (= (and b!2592672 res!1090489) b!2592673))

(assert (=> b!2592672 m!2928649))

(assert (=> b!2592673 m!2928705))

(assert (=> start!251274 d!734462))

(assert (=> b!2592575 d!734440))

(declare-fun d!734464 () Bool)

(declare-fun c!417918 () Bool)

(assert (=> d!734464 (= c!417918 (is-Nil!29836 l!3230))))

(declare-fun e!1635669 () (Set B!2071))

(assert (=> d!734464 (= (content!4171 l!3230) e!1635669)))

(declare-fun b!2592674 () Bool)

(assert (=> b!2592674 (= e!1635669 (as set.empty (Set B!2071)))))

(declare-fun b!2592675 () Bool)

(assert (=> b!2592675 (= e!1635669 (set.union (set.insert (h!35256 l!3230) (as set.empty (Set B!2071))) (content!4171 (t!212949 l!3230))))))

(assert (= (and d!734464 c!417918) b!2592674))

(assert (= (and d!734464 (not c!417918)) b!2592675))

(assert (=> b!2592675 m!2928633))

(assert (=> b!2592675 m!2928639))

(assert (=> b!2592580 d!734464))

(assert (=> b!2592574 d!734464))

(declare-fun b!2592680 () Bool)

(declare-fun e!1635672 () Bool)

(declare-fun tp!822809 () Bool)

(assert (=> b!2592680 (= e!1635672 (and tp_is_empty!13351 tp!822809))))

(assert (=> b!2592578 (= tp!822803 e!1635672)))

(assert (= (and b!2592578 (is-Cons!29836 (t!212949 l!3230))) b!2592680))

(declare-fun b_lambda!77197 () Bool)

(assert (= b_lambda!77195 (or b!2592582 b_lambda!77197)))

(declare-fun bs!472384 () Bool)

(declare-fun d!734466 () Bool)

(assert (= bs!472384 (and d!734466 b!2592582)))

(assert (=> bs!472384 (= (dynLambda!12618 lambda!96203 (h!35256 lt!912242)) (contains!5386 l!3230 (h!35256 lt!912242)))))

(declare-fun m!2928735 () Bool)

(assert (=> bs!472384 m!2928735))

(assert (=> b!2592657 d!734466))

(push 1)

(assert (not d!734458))

(assert (not d!734450))

(assert (not b!2592660))

(assert (not b!2592680))

(assert (not d!734460))

(assert (not b!2592627))

(assert (not b!2592658))

(assert (not b!2592635))

(assert (not b!2592643))

(assert (not d!734436))

(assert (not b!2592626))

(assert (not b!2592667))

(assert (not b!2592661))

(assert (not b!2592673))

(assert (not b!2592675))

(assert (not b_lambda!77197))

(assert (not bs!472384))

(assert (not b!2592633))

(assert (not b!2592672))

(assert (not d!734446))

(assert (not b!2592637))

(assert tp_is_empty!13351)

(assert (not b!2592650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

