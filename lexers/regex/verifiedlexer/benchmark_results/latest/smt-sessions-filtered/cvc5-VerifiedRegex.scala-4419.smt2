; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235430 () Bool)

(assert start!235430)

(declare-fun b!2399551 () Bool)

(declare-fun res!1019566 () Bool)

(declare-fun e!1528858 () Bool)

(assert (=> b!2399551 (=> (not res!1019566) (not e!1528858))))

(declare-datatypes ((C!14218 0))(
  ( (C!14219 (val!8351 Int)) )
))
(declare-datatypes ((Regex!7030 0))(
  ( (ElementMatch!7030 (c!382020 C!14218)) (Concat!11666 (regOne!14572 Regex!7030) (regTwo!14572 Regex!7030)) (EmptyExpr!7030) (Star!7030 (reg!7359 Regex!7030)) (EmptyLang!7030) (Union!7030 (regOne!14573 Regex!7030) (regTwo!14573 Regex!7030)) )
))
(declare-fun r!13927 () Regex!7030)

(declare-datatypes ((List!28298 0))(
  ( (Nil!28200) (Cons!28200 (h!33601 Regex!7030) (t!208275 List!28298)) )
))
(declare-fun l!9164 () List!28298)

(declare-fun generalisedConcat!131 (List!28298) Regex!7030)

(assert (=> b!2399551 (= res!1019566 (= r!13927 (generalisedConcat!131 l!9164)))))

(declare-fun b!2399552 () Bool)

(declare-fun e!1528855 () Bool)

(declare-fun lambda!90162 () Int)

(declare-fun forall!5664 (List!28298 Int) Bool)

(assert (=> b!2399552 (= e!1528855 (forall!5664 (t!208275 l!9164) lambda!90162))))

(declare-fun b!2399553 () Bool)

(declare-fun e!1528856 () Bool)

(declare-fun tp!763673 () Bool)

(declare-fun tp!763670 () Bool)

(assert (=> b!2399553 (= e!1528856 (and tp!763673 tp!763670))))

(declare-fun res!1019567 () Bool)

(assert (=> start!235430 (=> (not res!1019567) (not e!1528858))))

(assert (=> start!235430 (= res!1019567 (forall!5664 l!9164 lambda!90162))))

(assert (=> start!235430 e!1528858))

(declare-fun e!1528857 () Bool)

(assert (=> start!235430 e!1528857))

(assert (=> start!235430 e!1528856))

(declare-fun e!1528859 () Bool)

(assert (=> start!235430 e!1528859))

(declare-fun b!2399554 () Bool)

(assert (=> b!2399554 (= e!1528858 (not e!1528855))))

(declare-fun res!1019565 () Bool)

(assert (=> b!2399554 (=> res!1019565 e!1528855)))

(assert (=> b!2399554 (= res!1019565 (or (is-Concat!11666 r!13927) (not (is-EmptyExpr!7030 r!13927)) (not (is-Cons!28200 l!9164))))))

(declare-datatypes ((List!28299 0))(
  ( (Nil!28201) (Cons!28201 (h!33602 C!14218) (t!208276 List!28299)) )
))
(declare-fun s!9460 () List!28299)

(declare-fun matchR!3147 (Regex!7030 List!28299) Bool)

(declare-fun matchRSpec!879 (Regex!7030 List!28299) Bool)

(assert (=> b!2399554 (= (matchR!3147 r!13927 s!9460) (matchRSpec!879 r!13927 s!9460))))

(declare-datatypes ((Unit!41331 0))(
  ( (Unit!41332) )
))
(declare-fun lt!872455 () Unit!41331)

(declare-fun mainMatchTheorem!879 (Regex!7030 List!28299) Unit!41331)

(assert (=> b!2399554 (= lt!872455 (mainMatchTheorem!879 r!13927 s!9460))))

(declare-fun b!2399555 () Bool)

(declare-fun tp!763674 () Bool)

(assert (=> b!2399555 (= e!1528856 tp!763674)))

(declare-fun b!2399556 () Bool)

(declare-fun tp!763672 () Bool)

(declare-fun tp!763675 () Bool)

(assert (=> b!2399556 (= e!1528856 (and tp!763672 tp!763675))))

(declare-fun b!2399557 () Bool)

(declare-fun tp_is_empty!11473 () Bool)

(assert (=> b!2399557 (= e!1528856 tp_is_empty!11473)))

(declare-fun b!2399558 () Bool)

(declare-fun tp!763677 () Bool)

(assert (=> b!2399558 (= e!1528859 (and tp_is_empty!11473 tp!763677))))

(declare-fun b!2399559 () Bool)

(declare-fun tp!763671 () Bool)

(declare-fun tp!763676 () Bool)

(assert (=> b!2399559 (= e!1528857 (and tp!763671 tp!763676))))

(assert (= (and start!235430 res!1019567) b!2399551))

(assert (= (and b!2399551 res!1019566) b!2399554))

(assert (= (and b!2399554 (not res!1019565)) b!2399552))

(assert (= (and start!235430 (is-Cons!28200 l!9164)) b!2399559))

(assert (= (and start!235430 (is-ElementMatch!7030 r!13927)) b!2399557))

(assert (= (and start!235430 (is-Concat!11666 r!13927)) b!2399553))

(assert (= (and start!235430 (is-Star!7030 r!13927)) b!2399555))

(assert (= (and start!235430 (is-Union!7030 r!13927)) b!2399556))

(assert (= (and start!235430 (is-Cons!28201 s!9460)) b!2399558))

(declare-fun m!2797407 () Bool)

(assert (=> b!2399551 m!2797407))

(declare-fun m!2797409 () Bool)

(assert (=> b!2399552 m!2797409))

(declare-fun m!2797411 () Bool)

(assert (=> start!235430 m!2797411))

(declare-fun m!2797413 () Bool)

(assert (=> b!2399554 m!2797413))

(declare-fun m!2797415 () Bool)

(assert (=> b!2399554 m!2797415))

(declare-fun m!2797417 () Bool)

(assert (=> b!2399554 m!2797417))

(push 1)

(assert (not b!2399556))

(assert (not b!2399558))

(assert tp_is_empty!11473)

(assert (not b!2399553))

(assert (not b!2399551))

(assert (not b!2399552))

(assert (not b!2399559))

(assert (not b!2399555))

(assert (not b!2399554))

(assert (not start!235430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2399615 () Bool)

(declare-fun e!1528894 () Bool)

(declare-fun lt!872461 () Bool)

(declare-fun call!146573 () Bool)

(assert (=> b!2399615 (= e!1528894 (= lt!872461 call!146573))))

(declare-fun b!2399616 () Bool)

(declare-fun res!1019598 () Bool)

(declare-fun e!1528891 () Bool)

(assert (=> b!2399616 (=> (not res!1019598) (not e!1528891))))

(declare-fun isEmpty!16196 (List!28299) Bool)

(declare-fun tail!3561 (List!28299) List!28299)

(assert (=> b!2399616 (= res!1019598 (isEmpty!16196 (tail!3561 s!9460)))))

(declare-fun b!2399617 () Bool)

(declare-fun head!5291 (List!28299) C!14218)

(assert (=> b!2399617 (= e!1528891 (= (head!5291 s!9460) (c!382020 r!13927)))))

(declare-fun b!2399618 () Bool)

(declare-fun e!1528893 () Bool)

(declare-fun e!1528889 () Bool)

(assert (=> b!2399618 (= e!1528893 e!1528889)))

(declare-fun res!1019594 () Bool)

(assert (=> b!2399618 (=> res!1019594 e!1528889)))

(assert (=> b!2399618 (= res!1019594 call!146573)))

(declare-fun b!2399619 () Bool)

(declare-fun res!1019596 () Bool)

(assert (=> b!2399619 (=> (not res!1019596) (not e!1528891))))

(assert (=> b!2399619 (= res!1019596 (not call!146573))))

(declare-fun b!2399620 () Bool)

(declare-fun e!1528890 () Bool)

(assert (=> b!2399620 (= e!1528890 (not lt!872461))))

(declare-fun d!699552 () Bool)

(assert (=> d!699552 e!1528894))

(declare-fun c!382030 () Bool)

(assert (=> d!699552 (= c!382030 (is-EmptyExpr!7030 r!13927))))

(declare-fun e!1528895 () Bool)

(assert (=> d!699552 (= lt!872461 e!1528895)))

(declare-fun c!382028 () Bool)

(assert (=> d!699552 (= c!382028 (isEmpty!16196 s!9460))))

(declare-fun validRegex!2755 (Regex!7030) Bool)

(assert (=> d!699552 (validRegex!2755 r!13927)))

(assert (=> d!699552 (= (matchR!3147 r!13927 s!9460) lt!872461)))

(declare-fun b!2399621 () Bool)

(assert (=> b!2399621 (= e!1528889 (not (= (head!5291 s!9460) (c!382020 r!13927))))))

(declare-fun b!2399622 () Bool)

(declare-fun nullable!2079 (Regex!7030) Bool)

(assert (=> b!2399622 (= e!1528895 (nullable!2079 r!13927))))

(declare-fun b!2399623 () Bool)

(declare-fun res!1019600 () Bool)

(declare-fun e!1528892 () Bool)

(assert (=> b!2399623 (=> res!1019600 e!1528892)))

(assert (=> b!2399623 (= res!1019600 e!1528891)))

(declare-fun res!1019593 () Bool)

(assert (=> b!2399623 (=> (not res!1019593) (not e!1528891))))

(assert (=> b!2399623 (= res!1019593 lt!872461)))

(declare-fun b!2399624 () Bool)

(assert (=> b!2399624 (= e!1528892 e!1528893)))

(declare-fun res!1019599 () Bool)

(assert (=> b!2399624 (=> (not res!1019599) (not e!1528893))))

(assert (=> b!2399624 (= res!1019599 (not lt!872461))))

(declare-fun b!2399625 () Bool)

(declare-fun res!1019597 () Bool)

(assert (=> b!2399625 (=> res!1019597 e!1528889)))

(assert (=> b!2399625 (= res!1019597 (not (isEmpty!16196 (tail!3561 s!9460))))))

(declare-fun b!2399626 () Bool)

(declare-fun derivativeStep!1737 (Regex!7030 C!14218) Regex!7030)

(assert (=> b!2399626 (= e!1528895 (matchR!3147 (derivativeStep!1737 r!13927 (head!5291 s!9460)) (tail!3561 s!9460)))))

(declare-fun b!2399627 () Bool)

(declare-fun res!1019595 () Bool)

(assert (=> b!2399627 (=> res!1019595 e!1528892)))

(assert (=> b!2399627 (= res!1019595 (not (is-ElementMatch!7030 r!13927)))))

(assert (=> b!2399627 (= e!1528890 e!1528892)))

(declare-fun bm!146568 () Bool)

(assert (=> bm!146568 (= call!146573 (isEmpty!16196 s!9460))))

(declare-fun b!2399628 () Bool)

(assert (=> b!2399628 (= e!1528894 e!1528890)))

(declare-fun c!382029 () Bool)

(assert (=> b!2399628 (= c!382029 (is-EmptyLang!7030 r!13927))))

(assert (= (and d!699552 c!382028) b!2399622))

(assert (= (and d!699552 (not c!382028)) b!2399626))

(assert (= (and d!699552 c!382030) b!2399615))

(assert (= (and d!699552 (not c!382030)) b!2399628))

(assert (= (and b!2399628 c!382029) b!2399620))

(assert (= (and b!2399628 (not c!382029)) b!2399627))

(assert (= (and b!2399627 (not res!1019595)) b!2399623))

(assert (= (and b!2399623 res!1019593) b!2399619))

(assert (= (and b!2399619 res!1019596) b!2399616))

(assert (= (and b!2399616 res!1019598) b!2399617))

(assert (= (and b!2399623 (not res!1019600)) b!2399624))

(assert (= (and b!2399624 res!1019599) b!2399618))

(assert (= (and b!2399618 (not res!1019594)) b!2399625))

(assert (= (and b!2399625 (not res!1019597)) b!2399621))

(assert (= (or b!2399615 b!2399618 b!2399619) bm!146568))

(declare-fun m!2797431 () Bool)

(assert (=> d!699552 m!2797431))

(declare-fun m!2797433 () Bool)

(assert (=> d!699552 m!2797433))

(declare-fun m!2797435 () Bool)

(assert (=> b!2399616 m!2797435))

(assert (=> b!2399616 m!2797435))

(declare-fun m!2797437 () Bool)

(assert (=> b!2399616 m!2797437))

(assert (=> b!2399625 m!2797435))

(assert (=> b!2399625 m!2797435))

(assert (=> b!2399625 m!2797437))

(declare-fun m!2797439 () Bool)

(assert (=> b!2399621 m!2797439))

(assert (=> bm!146568 m!2797431))

(assert (=> b!2399617 m!2797439))

(declare-fun m!2797441 () Bool)

(assert (=> b!2399622 m!2797441))

(assert (=> b!2399626 m!2797439))

(assert (=> b!2399626 m!2797439))

(declare-fun m!2797443 () Bool)

(assert (=> b!2399626 m!2797443))

(assert (=> b!2399626 m!2797435))

(assert (=> b!2399626 m!2797443))

(assert (=> b!2399626 m!2797435))

(declare-fun m!2797445 () Bool)

(assert (=> b!2399626 m!2797445))

(assert (=> b!2399554 d!699552))

(declare-fun b!2399668 () Bool)

(assert (=> b!2399668 true))

(assert (=> b!2399668 true))

(declare-fun bs!463111 () Bool)

(declare-fun b!2399677 () Bool)

(assert (= bs!463111 (and b!2399677 b!2399668)))

(declare-fun lambda!90175 () Int)

(declare-fun lambda!90172 () Int)

(assert (=> bs!463111 (not (= lambda!90175 lambda!90172))))

(assert (=> b!2399677 true))

(assert (=> b!2399677 true))

(declare-fun b!2399667 () Bool)

(declare-fun e!1528921 () Bool)

(declare-fun e!1528924 () Bool)

(assert (=> b!2399667 (= e!1528921 e!1528924)))

(declare-fun res!1019625 () Bool)

(assert (=> b!2399667 (= res!1019625 (matchRSpec!879 (regOne!14573 r!13927) s!9460))))

(assert (=> b!2399667 (=> res!1019625 e!1528924)))

(declare-fun e!1528925 () Bool)

(declare-fun call!146578 () Bool)

(assert (=> b!2399668 (= e!1528925 call!146578)))

(declare-fun b!2399669 () Bool)

(declare-fun e!1528926 () Bool)

(declare-fun call!146579 () Bool)

(assert (=> b!2399669 (= e!1528926 call!146579)))

(declare-fun b!2399670 () Bool)

(declare-fun e!1528920 () Bool)

(assert (=> b!2399670 (= e!1528926 e!1528920)))

(declare-fun res!1019624 () Bool)

(assert (=> b!2399670 (= res!1019624 (not (is-EmptyLang!7030 r!13927)))))

(assert (=> b!2399670 (=> (not res!1019624) (not e!1528920))))

(declare-fun bm!146573 () Bool)

(assert (=> bm!146573 (= call!146579 (isEmpty!16196 s!9460))))

(declare-fun b!2399671 () Bool)

(declare-fun e!1528923 () Bool)

(assert (=> b!2399671 (= e!1528921 e!1528923)))

(declare-fun c!382041 () Bool)

(assert (=> b!2399671 (= c!382041 (is-Star!7030 r!13927))))

(declare-fun b!2399672 () Bool)

(assert (=> b!2399672 (= e!1528924 (matchRSpec!879 (regTwo!14573 r!13927) s!9460))))

(declare-fun b!2399673 () Bool)

(declare-fun res!1019623 () Bool)

(assert (=> b!2399673 (=> res!1019623 e!1528925)))

(assert (=> b!2399673 (= res!1019623 call!146579)))

(assert (=> b!2399673 (= e!1528923 e!1528925)))

(declare-fun b!2399675 () Bool)

(declare-fun e!1528922 () Bool)

(assert (=> b!2399675 (= e!1528922 (= s!9460 (Cons!28201 (c!382020 r!13927) Nil!28201)))))

(declare-fun bm!146574 () Bool)

(declare-fun Exists!1092 (Int) Bool)

(assert (=> bm!146574 (= call!146578 (Exists!1092 (ite c!382041 lambda!90172 lambda!90175)))))

(declare-fun b!2399676 () Bool)

(declare-fun c!382040 () Bool)

(assert (=> b!2399676 (= c!382040 (is-ElementMatch!7030 r!13927))))

(assert (=> b!2399676 (= e!1528920 e!1528922)))

(assert (=> b!2399677 (= e!1528923 call!146578)))

(declare-fun b!2399674 () Bool)

(declare-fun c!382039 () Bool)

(assert (=> b!2399674 (= c!382039 (is-Union!7030 r!13927))))

(assert (=> b!2399674 (= e!1528922 e!1528921)))

(declare-fun d!699556 () Bool)

(declare-fun c!382042 () Bool)

(assert (=> d!699556 (= c!382042 (is-EmptyExpr!7030 r!13927))))

(assert (=> d!699556 (= (matchRSpec!879 r!13927 s!9460) e!1528926)))

(assert (= (and d!699556 c!382042) b!2399669))

(assert (= (and d!699556 (not c!382042)) b!2399670))

(assert (= (and b!2399670 res!1019624) b!2399676))

(assert (= (and b!2399676 c!382040) b!2399675))

(assert (= (and b!2399676 (not c!382040)) b!2399674))

(assert (= (and b!2399674 c!382039) b!2399667))

(assert (= (and b!2399674 (not c!382039)) b!2399671))

(assert (= (and b!2399667 (not res!1019625)) b!2399672))

(assert (= (and b!2399671 c!382041) b!2399673))

(assert (= (and b!2399671 (not c!382041)) b!2399677))

(assert (= (and b!2399673 (not res!1019623)) b!2399668))

(assert (= (or b!2399668 b!2399677) bm!146574))

(assert (= (or b!2399669 b!2399673) bm!146573))

(declare-fun m!2797451 () Bool)

(assert (=> b!2399667 m!2797451))

(assert (=> bm!146573 m!2797431))

(declare-fun m!2797453 () Bool)

(assert (=> b!2399672 m!2797453))

(declare-fun m!2797455 () Bool)

(assert (=> bm!146574 m!2797455))

(assert (=> b!2399554 d!699556))

(declare-fun d!699560 () Bool)

(assert (=> d!699560 (= (matchR!3147 r!13927 s!9460) (matchRSpec!879 r!13927 s!9460))))

(declare-fun lt!872466 () Unit!41331)

(declare-fun choose!14210 (Regex!7030 List!28299) Unit!41331)

(assert (=> d!699560 (= lt!872466 (choose!14210 r!13927 s!9460))))

(assert (=> d!699560 (validRegex!2755 r!13927)))

(assert (=> d!699560 (= (mainMatchTheorem!879 r!13927 s!9460) lt!872466)))

(declare-fun bs!463112 () Bool)

(assert (= bs!463112 d!699560))

(assert (=> bs!463112 m!2797413))

(assert (=> bs!463112 m!2797415))

(declare-fun m!2797457 () Bool)

(assert (=> bs!463112 m!2797457))

(assert (=> bs!463112 m!2797433))

(assert (=> b!2399554 d!699560))

(declare-fun d!699562 () Bool)

(declare-fun res!1019634 () Bool)

(declare-fun e!1528943 () Bool)

(assert (=> d!699562 (=> res!1019634 e!1528943)))

(assert (=> d!699562 (= res!1019634 (is-Nil!28200 (t!208275 l!9164)))))

(assert (=> d!699562 (= (forall!5664 (t!208275 l!9164) lambda!90162) e!1528943)))

(declare-fun b!2399706 () Bool)

(declare-fun e!1528944 () Bool)

(assert (=> b!2399706 (= e!1528943 e!1528944)))

(declare-fun res!1019635 () Bool)

(assert (=> b!2399706 (=> (not res!1019635) (not e!1528944))))

(declare-fun dynLambda!12144 (Int Regex!7030) Bool)

(assert (=> b!2399706 (= res!1019635 (dynLambda!12144 lambda!90162 (h!33601 (t!208275 l!9164))))))

(declare-fun b!2399707 () Bool)

(assert (=> b!2399707 (= e!1528944 (forall!5664 (t!208275 (t!208275 l!9164)) lambda!90162))))

(assert (= (and d!699562 (not res!1019634)) b!2399706))

(assert (= (and b!2399706 res!1019635) b!2399707))

(declare-fun b_lambda!74293 () Bool)

(assert (=> (not b_lambda!74293) (not b!2399706)))

(declare-fun m!2797459 () Bool)

(assert (=> b!2399706 m!2797459))

(declare-fun m!2797461 () Bool)

(assert (=> b!2399707 m!2797461))

(assert (=> b!2399552 d!699562))

(declare-fun d!699564 () Bool)

(declare-fun res!1019636 () Bool)

(declare-fun e!1528945 () Bool)

(assert (=> d!699564 (=> res!1019636 e!1528945)))

(assert (=> d!699564 (= res!1019636 (is-Nil!28200 l!9164))))

(assert (=> d!699564 (= (forall!5664 l!9164 lambda!90162) e!1528945)))

(declare-fun b!2399708 () Bool)

(declare-fun e!1528946 () Bool)

(assert (=> b!2399708 (= e!1528945 e!1528946)))

(declare-fun res!1019637 () Bool)

(assert (=> b!2399708 (=> (not res!1019637) (not e!1528946))))

(assert (=> b!2399708 (= res!1019637 (dynLambda!12144 lambda!90162 (h!33601 l!9164)))))

(declare-fun b!2399709 () Bool)

(assert (=> b!2399709 (= e!1528946 (forall!5664 (t!208275 l!9164) lambda!90162))))

(assert (= (and d!699564 (not res!1019636)) b!2399708))

(assert (= (and b!2399708 res!1019637) b!2399709))

(declare-fun b_lambda!74295 () Bool)

(assert (=> (not b_lambda!74295) (not b!2399708)))

(declare-fun m!2797463 () Bool)

(assert (=> b!2399708 m!2797463))

(assert (=> b!2399709 m!2797409))

(assert (=> start!235430 d!699564))

(declare-fun bs!463114 () Bool)

(declare-fun d!699566 () Bool)

(assert (= bs!463114 (and d!699566 start!235430)))

(declare-fun lambda!90179 () Int)

(assert (=> bs!463114 (= lambda!90179 lambda!90162)))

(declare-fun b!2399740 () Bool)

(declare-fun e!1528965 () Bool)

(declare-fun e!1528970 () Bool)

(assert (=> b!2399740 (= e!1528965 e!1528970)))

(declare-fun c!382065 () Bool)

(declare-fun isEmpty!16197 (List!28298) Bool)

(declare-fun tail!3562 (List!28298) List!28298)

(assert (=> b!2399740 (= c!382065 (isEmpty!16197 (tail!3562 l!9164)))))

(declare-fun b!2399741 () Bool)

(declare-fun lt!872470 () Regex!7030)

(declare-fun isEmptyExpr!99 (Regex!7030) Bool)

(assert (=> b!2399741 (= e!1528965 (isEmptyExpr!99 lt!872470))))

(declare-fun b!2399742 () Bool)

(declare-fun e!1528966 () Bool)

(assert (=> b!2399742 (= e!1528966 e!1528965)))

(declare-fun c!382066 () Bool)

(assert (=> b!2399742 (= c!382066 (isEmpty!16197 l!9164))))

(declare-fun b!2399743 () Bool)

(declare-fun e!1528968 () Bool)

(assert (=> b!2399743 (= e!1528968 (isEmpty!16197 (t!208275 l!9164)))))

(declare-fun b!2399744 () Bool)

(declare-fun e!1528967 () Regex!7030)

(assert (=> b!2399744 (= e!1528967 (Concat!11666 (h!33601 l!9164) (generalisedConcat!131 (t!208275 l!9164))))))

(declare-fun b!2399745 () Bool)

(declare-fun e!1528969 () Regex!7030)

(assert (=> b!2399745 (= e!1528969 e!1528967)))

(declare-fun c!382063 () Bool)

(assert (=> b!2399745 (= c!382063 (is-Cons!28200 l!9164))))

(assert (=> d!699566 e!1528966))

(declare-fun res!1019644 () Bool)

(assert (=> d!699566 (=> (not res!1019644) (not e!1528966))))

(assert (=> d!699566 (= res!1019644 (validRegex!2755 lt!872470))))

(assert (=> d!699566 (= lt!872470 e!1528969)))

(declare-fun c!382064 () Bool)

(assert (=> d!699566 (= c!382064 e!1528968)))

(declare-fun res!1019645 () Bool)

(assert (=> d!699566 (=> (not res!1019645) (not e!1528968))))

(assert (=> d!699566 (= res!1019645 (is-Cons!28200 l!9164))))

(assert (=> d!699566 (forall!5664 l!9164 lambda!90179)))

(assert (=> d!699566 (= (generalisedConcat!131 l!9164) lt!872470)))

(declare-fun b!2399746 () Bool)

(assert (=> b!2399746 (= e!1528969 (h!33601 l!9164))))

(declare-fun b!2399747 () Bool)

(assert (=> b!2399747 (= e!1528967 EmptyExpr!7030)))

(declare-fun b!2399748 () Bool)

(declare-fun isConcat!99 (Regex!7030) Bool)

(assert (=> b!2399748 (= e!1528970 (isConcat!99 lt!872470))))

(declare-fun b!2399749 () Bool)

(declare-fun head!5292 (List!28298) Regex!7030)

(assert (=> b!2399749 (= e!1528970 (= lt!872470 (head!5292 l!9164)))))

(assert (= (and d!699566 res!1019645) b!2399743))

(assert (= (and d!699566 c!382064) b!2399746))

(assert (= (and d!699566 (not c!382064)) b!2399745))

(assert (= (and b!2399745 c!382063) b!2399744))

(assert (= (and b!2399745 (not c!382063)) b!2399747))

(assert (= (and d!699566 res!1019644) b!2399742))

(assert (= (and b!2399742 c!382066) b!2399741))

(assert (= (and b!2399742 (not c!382066)) b!2399740))

(assert (= (and b!2399740 c!382065) b!2399749))

(assert (= (and b!2399740 (not c!382065)) b!2399748))

(declare-fun m!2797485 () Bool)

(assert (=> b!2399742 m!2797485))

(declare-fun m!2797487 () Bool)

(assert (=> b!2399741 m!2797487))

(declare-fun m!2797489 () Bool)

(assert (=> b!2399740 m!2797489))

(assert (=> b!2399740 m!2797489))

(declare-fun m!2797491 () Bool)

(assert (=> b!2399740 m!2797491))

(declare-fun m!2797493 () Bool)

(assert (=> b!2399744 m!2797493))

(declare-fun m!2797495 () Bool)

(assert (=> d!699566 m!2797495))

(declare-fun m!2797497 () Bool)

(assert (=> d!699566 m!2797497))

(declare-fun m!2797499 () Bool)

(assert (=> b!2399743 m!2797499))

(declare-fun m!2797501 () Bool)

(assert (=> b!2399748 m!2797501))

(declare-fun m!2797503 () Bool)

(assert (=> b!2399749 m!2797503))

(assert (=> b!2399551 d!699566))

(declare-fun e!1528973 () Bool)

(assert (=> b!2399555 (= tp!763674 e!1528973)))

(declare-fun b!2399760 () Bool)

(assert (=> b!2399760 (= e!1528973 tp_is_empty!11473)))

(declare-fun b!2399761 () Bool)

(declare-fun tp!763713 () Bool)

(declare-fun tp!763715 () Bool)

(assert (=> b!2399761 (= e!1528973 (and tp!763713 tp!763715))))

(declare-fun b!2399762 () Bool)

(declare-fun tp!763712 () Bool)

(assert (=> b!2399762 (= e!1528973 tp!763712)))

(declare-fun b!2399763 () Bool)

(declare-fun tp!763714 () Bool)

(declare-fun tp!763716 () Bool)

(assert (=> b!2399763 (= e!1528973 (and tp!763714 tp!763716))))

(assert (= (and b!2399555 (is-ElementMatch!7030 (reg!7359 r!13927))) b!2399760))

(assert (= (and b!2399555 (is-Concat!11666 (reg!7359 r!13927))) b!2399761))

(assert (= (and b!2399555 (is-Star!7030 (reg!7359 r!13927))) b!2399762))

(assert (= (and b!2399555 (is-Union!7030 (reg!7359 r!13927))) b!2399763))

(declare-fun e!1528974 () Bool)

(assert (=> b!2399553 (= tp!763673 e!1528974)))

(declare-fun b!2399764 () Bool)

(assert (=> b!2399764 (= e!1528974 tp_is_empty!11473)))

(declare-fun b!2399765 () Bool)

(declare-fun tp!763718 () Bool)

(declare-fun tp!763720 () Bool)

(assert (=> b!2399765 (= e!1528974 (and tp!763718 tp!763720))))

(declare-fun b!2399766 () Bool)

(declare-fun tp!763717 () Bool)

(assert (=> b!2399766 (= e!1528974 tp!763717)))

(declare-fun b!2399767 () Bool)

(declare-fun tp!763719 () Bool)

(declare-fun tp!763721 () Bool)

(assert (=> b!2399767 (= e!1528974 (and tp!763719 tp!763721))))

(assert (= (and b!2399553 (is-ElementMatch!7030 (regOne!14572 r!13927))) b!2399764))

(assert (= (and b!2399553 (is-Concat!11666 (regOne!14572 r!13927))) b!2399765))

(assert (= (and b!2399553 (is-Star!7030 (regOne!14572 r!13927))) b!2399766))

(assert (= (and b!2399553 (is-Union!7030 (regOne!14572 r!13927))) b!2399767))

(declare-fun e!1528975 () Bool)

(assert (=> b!2399553 (= tp!763670 e!1528975)))

(declare-fun b!2399768 () Bool)

(assert (=> b!2399768 (= e!1528975 tp_is_empty!11473)))

(declare-fun b!2399769 () Bool)

(declare-fun tp!763723 () Bool)

(declare-fun tp!763725 () Bool)

(assert (=> b!2399769 (= e!1528975 (and tp!763723 tp!763725))))

(declare-fun b!2399770 () Bool)

(declare-fun tp!763722 () Bool)

(assert (=> b!2399770 (= e!1528975 tp!763722)))

(declare-fun b!2399771 () Bool)

(declare-fun tp!763724 () Bool)

(declare-fun tp!763726 () Bool)

(assert (=> b!2399771 (= e!1528975 (and tp!763724 tp!763726))))

(assert (= (and b!2399553 (is-ElementMatch!7030 (regTwo!14572 r!13927))) b!2399768))

(assert (= (and b!2399553 (is-Concat!11666 (regTwo!14572 r!13927))) b!2399769))

(assert (= (and b!2399553 (is-Star!7030 (regTwo!14572 r!13927))) b!2399770))

(assert (= (and b!2399553 (is-Union!7030 (regTwo!14572 r!13927))) b!2399771))

(declare-fun e!1528976 () Bool)

(assert (=> b!2399559 (= tp!763671 e!1528976)))

(declare-fun b!2399772 () Bool)

(assert (=> b!2399772 (= e!1528976 tp_is_empty!11473)))

(declare-fun b!2399773 () Bool)

(declare-fun tp!763728 () Bool)

(declare-fun tp!763730 () Bool)

(assert (=> b!2399773 (= e!1528976 (and tp!763728 tp!763730))))

(declare-fun b!2399774 () Bool)

(declare-fun tp!763727 () Bool)

(assert (=> b!2399774 (= e!1528976 tp!763727)))

(declare-fun b!2399775 () Bool)

(declare-fun tp!763729 () Bool)

(declare-fun tp!763731 () Bool)

(assert (=> b!2399775 (= e!1528976 (and tp!763729 tp!763731))))

(assert (= (and b!2399559 (is-ElementMatch!7030 (h!33601 l!9164))) b!2399772))

(assert (= (and b!2399559 (is-Concat!11666 (h!33601 l!9164))) b!2399773))

(assert (= (and b!2399559 (is-Star!7030 (h!33601 l!9164))) b!2399774))

(assert (= (and b!2399559 (is-Union!7030 (h!33601 l!9164))) b!2399775))

(declare-fun b!2399780 () Bool)

(declare-fun e!1528979 () Bool)

(declare-fun tp!763736 () Bool)

(declare-fun tp!763737 () Bool)

(assert (=> b!2399780 (= e!1528979 (and tp!763736 tp!763737))))

(assert (=> b!2399559 (= tp!763676 e!1528979)))

(assert (= (and b!2399559 (is-Cons!28200 (t!208275 l!9164))) b!2399780))

(declare-fun b!2399785 () Bool)

(declare-fun e!1528982 () Bool)

(declare-fun tp!763740 () Bool)

(assert (=> b!2399785 (= e!1528982 (and tp_is_empty!11473 tp!763740))))

(assert (=> b!2399558 (= tp!763677 e!1528982)))

(assert (= (and b!2399558 (is-Cons!28201 (t!208276 s!9460))) b!2399785))

(declare-fun e!1528983 () Bool)

(assert (=> b!2399556 (= tp!763672 e!1528983)))

(declare-fun b!2399786 () Bool)

(assert (=> b!2399786 (= e!1528983 tp_is_empty!11473)))

(declare-fun b!2399787 () Bool)

(declare-fun tp!763742 () Bool)

(declare-fun tp!763744 () Bool)

(assert (=> b!2399787 (= e!1528983 (and tp!763742 tp!763744))))

(declare-fun b!2399788 () Bool)

(declare-fun tp!763741 () Bool)

(assert (=> b!2399788 (= e!1528983 tp!763741)))

(declare-fun b!2399789 () Bool)

(declare-fun tp!763743 () Bool)

(declare-fun tp!763745 () Bool)

(assert (=> b!2399789 (= e!1528983 (and tp!763743 tp!763745))))

(assert (= (and b!2399556 (is-ElementMatch!7030 (regOne!14573 r!13927))) b!2399786))

(assert (= (and b!2399556 (is-Concat!11666 (regOne!14573 r!13927))) b!2399787))

(assert (= (and b!2399556 (is-Star!7030 (regOne!14573 r!13927))) b!2399788))

(assert (= (and b!2399556 (is-Union!7030 (regOne!14573 r!13927))) b!2399789))

(declare-fun e!1528984 () Bool)

(assert (=> b!2399556 (= tp!763675 e!1528984)))

(declare-fun b!2399790 () Bool)

(assert (=> b!2399790 (= e!1528984 tp_is_empty!11473)))

(declare-fun b!2399791 () Bool)

(declare-fun tp!763747 () Bool)

(declare-fun tp!763749 () Bool)

(assert (=> b!2399791 (= e!1528984 (and tp!763747 tp!763749))))

(declare-fun b!2399792 () Bool)

(declare-fun tp!763746 () Bool)

(assert (=> b!2399792 (= e!1528984 tp!763746)))

(declare-fun b!2399793 () Bool)

(declare-fun tp!763748 () Bool)

(declare-fun tp!763750 () Bool)

(assert (=> b!2399793 (= e!1528984 (and tp!763748 tp!763750))))

(assert (= (and b!2399556 (is-ElementMatch!7030 (regTwo!14573 r!13927))) b!2399790))

(assert (= (and b!2399556 (is-Concat!11666 (regTwo!14573 r!13927))) b!2399791))

(assert (= (and b!2399556 (is-Star!7030 (regTwo!14573 r!13927))) b!2399792))

(assert (= (and b!2399556 (is-Union!7030 (regTwo!14573 r!13927))) b!2399793))

(declare-fun b_lambda!74297 () Bool)

(assert (= b_lambda!74295 (or start!235430 b_lambda!74297)))

(declare-fun bs!463115 () Bool)

(declare-fun d!699570 () Bool)

(assert (= bs!463115 (and d!699570 start!235430)))

(assert (=> bs!463115 (= (dynLambda!12144 lambda!90162 (h!33601 l!9164)) (validRegex!2755 (h!33601 l!9164)))))

(declare-fun m!2797505 () Bool)

(assert (=> bs!463115 m!2797505))

(assert (=> b!2399708 d!699570))

(declare-fun b_lambda!74299 () Bool)

(assert (= b_lambda!74293 (or start!235430 b_lambda!74299)))

(declare-fun bs!463116 () Bool)

(declare-fun d!699572 () Bool)

(assert (= bs!463116 (and d!699572 start!235430)))

(assert (=> bs!463116 (= (dynLambda!12144 lambda!90162 (h!33601 (t!208275 l!9164))) (validRegex!2755 (h!33601 (t!208275 l!9164))))))

(declare-fun m!2797507 () Bool)

(assert (=> bs!463116 m!2797507))

(assert (=> b!2399706 d!699572))

(push 1)

(assert (not b!2399770))

(assert (not b!2399774))

(assert (not d!699552))

(assert (not b!2399769))

(assert (not b!2399771))

(assert (not b!2399742))

(assert (not d!699560))

(assert (not b!2399621))

(assert (not b!2399785))

(assert (not b!2399787))

(assert (not b!2399775))

(assert (not b_lambda!74297))

(assert (not bm!146568))

(assert (not b_lambda!74299))

(assert (not b!2399789))

(assert (not b!2399617))

(assert (not b!2399709))

(assert (not b!2399616))

(assert (not b!2399744))

(assert (not bs!463115))

(assert (not b!2399792))

(assert (not b!2399748))

(assert (not b!2399767))

(assert (not b!2399791))

(assert (not d!699566))

(assert (not b!2399773))

(assert tp_is_empty!11473)

(assert (not b!2399766))

(assert (not b!2399667))

(assert (not b!2399626))

(assert (not b!2399749))

(assert (not b!2399672))

(assert (not b!2399765))

(assert (not b!2399763))

(assert (not b!2399788))

(assert (not bm!146573))

(assert (not b!2399793))

(assert (not bs!463116))

(assert (not b!2399622))

(assert (not bm!146574))

(assert (not b!2399740))

(assert (not b!2399707))

(assert (not b!2399762))

(assert (not b!2399761))

(assert (not b!2399743))

(assert (not b!2399741))

(assert (not b!2399780))

(assert (not b!2399625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

