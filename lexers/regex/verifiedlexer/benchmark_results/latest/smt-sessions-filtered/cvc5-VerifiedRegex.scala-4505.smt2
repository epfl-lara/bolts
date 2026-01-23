; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239272 () Bool)

(assert start!239272)

(declare-fun b!2450663 () Bool)

(declare-fun e!1555517 () Bool)

(declare-fun e!1555513 () Bool)

(assert (=> b!2450663 (= e!1555517 e!1555513)))

(declare-fun res!1039300 () Bool)

(assert (=> b!2450663 (=> res!1039300 e!1555513)))

(declare-datatypes ((C!14562 0))(
  ( (C!14563 (val!8523 Int)) )
))
(declare-datatypes ((Regex!7202 0))(
  ( (ElementMatch!7202 (c!391054 C!14562)) (Concat!11838 (regOne!14916 Regex!7202) (regTwo!14916 Regex!7202)) (EmptyExpr!7202) (Star!7202 (reg!7531 Regex!7202)) (EmptyLang!7202) (Union!7202 (regOne!14917 Regex!7202) (regTwo!14917 Regex!7202)) )
))
(declare-fun lt!879719 () Regex!7202)

(declare-datatypes ((List!28640 0))(
  ( (Nil!28542) (Cons!28542 (h!33943 C!14562) (t!208617 List!28640)) )
))
(declare-fun s!9460 () List!28640)

(declare-fun matchR!3317 (Regex!7202 List!28640) Bool)

(assert (=> b!2450663 (= res!1039300 (not (matchR!3317 lt!879719 s!9460)))))

(declare-datatypes ((List!28641 0))(
  ( (Nil!28543) (Cons!28543 (h!33944 Regex!7202) (t!208618 List!28641)) )
))
(declare-fun l!9164 () List!28641)

(declare-fun head!5571 (List!28641) Regex!7202)

(assert (=> b!2450663 (= lt!879719 (head!5571 l!9164))))

(declare-fun b!2450664 () Bool)

(declare-fun res!1039296 () Bool)

(assert (=> b!2450664 (=> res!1039296 e!1555517)))

(declare-fun lt!879721 () List!28641)

(declare-fun generalisedConcat!303 (List!28641) Regex!7202)

(assert (=> b!2450664 (= res!1039296 (not (= (generalisedConcat!303 lt!879721) EmptyExpr!7202)))))

(declare-fun b!2450665 () Bool)

(declare-fun e!1555520 () Bool)

(declare-fun tp!779480 () Bool)

(assert (=> b!2450665 (= e!1555520 tp!779480)))

(declare-fun b!2450666 () Bool)

(declare-fun e!1555519 () Bool)

(assert (=> b!2450666 (= e!1555519 e!1555517)))

(declare-fun res!1039297 () Bool)

(assert (=> b!2450666 (=> res!1039297 e!1555517)))

(declare-fun isEmpty!16578 (List!28641) Bool)

(assert (=> b!2450666 (= res!1039297 (not (isEmpty!16578 lt!879721)))))

(declare-fun tail!3844 (List!28641) List!28641)

(assert (=> b!2450666 (= lt!879721 (tail!3844 l!9164))))

(declare-fun b!2450667 () Bool)

(declare-fun tp!779478 () Bool)

(declare-fun tp!779483 () Bool)

(assert (=> b!2450667 (= e!1555520 (and tp!779478 tp!779483))))

(declare-fun b!2450668 () Bool)

(declare-fun e!1555515 () Bool)

(assert (=> b!2450668 (= e!1555515 (not e!1555519))))

(declare-fun res!1039295 () Bool)

(assert (=> b!2450668 (=> res!1039295 e!1555519)))

(declare-fun r!13927 () Regex!7202)

(assert (=> b!2450668 (= res!1039295 (or (is-Concat!11838 r!13927) (is-EmptyExpr!7202 r!13927)))))

(declare-fun matchRSpec!1049 (Regex!7202 List!28640) Bool)

(assert (=> b!2450668 (= (matchR!3317 r!13927 s!9460) (matchRSpec!1049 r!13927 s!9460))))

(declare-datatypes ((Unit!41859 0))(
  ( (Unit!41860) )
))
(declare-fun lt!879720 () Unit!41859)

(declare-fun mainMatchTheorem!1049 (Regex!7202 List!28640) Unit!41859)

(assert (=> b!2450668 (= lt!879720 (mainMatchTheorem!1049 r!13927 s!9460))))

(declare-fun b!2450669 () Bool)

(declare-fun tp_is_empty!11817 () Bool)

(assert (=> b!2450669 (= e!1555520 tp_is_empty!11817)))

(declare-fun b!2450670 () Bool)

(declare-fun e!1555514 () Bool)

(declare-fun tp!779481 () Bool)

(declare-fun tp!779482 () Bool)

(assert (=> b!2450670 (= e!1555514 (and tp!779481 tp!779482))))

(declare-fun b!2450671 () Bool)

(declare-fun res!1039298 () Bool)

(assert (=> b!2450671 (=> (not res!1039298) (not e!1555515))))

(assert (=> b!2450671 (= res!1039298 (= r!13927 (generalisedConcat!303 l!9164)))))

(declare-fun res!1039293 () Bool)

(assert (=> start!239272 (=> (not res!1039293) (not e!1555515))))

(declare-fun lambda!92814 () Int)

(declare-fun forall!5836 (List!28641 Int) Bool)

(assert (=> start!239272 (= res!1039293 (forall!5836 l!9164 lambda!92814))))

(assert (=> start!239272 e!1555515))

(assert (=> start!239272 e!1555514))

(assert (=> start!239272 e!1555520))

(declare-fun e!1555518 () Bool)

(assert (=> start!239272 e!1555518))

(declare-fun b!2450672 () Bool)

(declare-fun res!1039299 () Bool)

(assert (=> b!2450672 (=> res!1039299 e!1555519)))

(assert (=> b!2450672 (= res!1039299 (isEmpty!16578 l!9164))))

(declare-fun b!2450673 () Bool)

(declare-fun e!1555516 () Bool)

(assert (=> b!2450673 (= e!1555513 e!1555516)))

(declare-fun res!1039294 () Bool)

(assert (=> b!2450673 (=> (not res!1039294) (not e!1555516))))

(declare-fun validRegex!2898 (Regex!7202) Bool)

(assert (=> b!2450673 (= res!1039294 (validRegex!2898 lt!879719))))

(declare-fun b!2450674 () Bool)

(declare-fun tp!779479 () Bool)

(declare-fun tp!779485 () Bool)

(assert (=> b!2450674 (= e!1555520 (and tp!779479 tp!779485))))

(declare-fun b!2450675 () Bool)

(assert (=> b!2450675 (= e!1555516 true)))

(declare-fun b!2450676 () Bool)

(declare-fun tp!779484 () Bool)

(assert (=> b!2450676 (= e!1555518 (and tp_is_empty!11817 tp!779484))))

(assert (= (and start!239272 res!1039293) b!2450671))

(assert (= (and b!2450671 res!1039298) b!2450668))

(assert (= (and b!2450668 (not res!1039295)) b!2450672))

(assert (= (and b!2450672 (not res!1039299)) b!2450666))

(assert (= (and b!2450666 (not res!1039297)) b!2450664))

(assert (= (and b!2450664 (not res!1039296)) b!2450663))

(assert (= (and b!2450663 (not res!1039300)) b!2450673))

(assert (= (and b!2450673 res!1039294) b!2450675))

(assert (= (and start!239272 (is-Cons!28543 l!9164)) b!2450670))

(assert (= (and start!239272 (is-ElementMatch!7202 r!13927)) b!2450669))

(assert (= (and start!239272 (is-Concat!11838 r!13927)) b!2450667))

(assert (= (and start!239272 (is-Star!7202 r!13927)) b!2450665))

(assert (= (and start!239272 (is-Union!7202 r!13927)) b!2450674))

(assert (= (and start!239272 (is-Cons!28542 s!9460)) b!2450676))

(declare-fun m!2824553 () Bool)

(assert (=> b!2450663 m!2824553))

(declare-fun m!2824555 () Bool)

(assert (=> b!2450663 m!2824555))

(declare-fun m!2824557 () Bool)

(assert (=> b!2450673 m!2824557))

(declare-fun m!2824559 () Bool)

(assert (=> b!2450668 m!2824559))

(declare-fun m!2824561 () Bool)

(assert (=> b!2450668 m!2824561))

(declare-fun m!2824563 () Bool)

(assert (=> b!2450668 m!2824563))

(declare-fun m!2824565 () Bool)

(assert (=> start!239272 m!2824565))

(declare-fun m!2824567 () Bool)

(assert (=> b!2450666 m!2824567))

(declare-fun m!2824569 () Bool)

(assert (=> b!2450666 m!2824569))

(declare-fun m!2824571 () Bool)

(assert (=> b!2450672 m!2824571))

(declare-fun m!2824573 () Bool)

(assert (=> b!2450664 m!2824573))

(declare-fun m!2824575 () Bool)

(assert (=> b!2450671 m!2824575))

(push 1)

(assert (not b!2450665))

(assert tp_is_empty!11817)

(assert (not b!2450668))

(assert (not b!2450674))

(assert (not start!239272))

(assert (not b!2450676))

(assert (not b!2450663))

(assert (not b!2450667))

(assert (not b!2450666))

(assert (not b!2450673))

(assert (not b!2450672))

(assert (not b!2450664))

(assert (not b!2450671))

(assert (not b!2450670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!465701 () Bool)

(declare-fun d!706650 () Bool)

(assert (= bs!465701 (and d!706650 start!239272)))

(declare-fun lambda!92820 () Int)

(assert (=> bs!465701 (= lambda!92820 lambda!92814)))

(declare-fun b!2450739 () Bool)

(declare-fun e!1555561 () Bool)

(declare-fun lt!879733 () Regex!7202)

(assert (=> b!2450739 (= e!1555561 (= lt!879733 (head!5571 l!9164)))))

(declare-fun b!2450740 () Bool)

(declare-fun e!1555559 () Bool)

(assert (=> b!2450740 (= e!1555559 (isEmpty!16578 (t!208618 l!9164)))))

(declare-fun e!1555562 () Bool)

(assert (=> d!706650 e!1555562))

(declare-fun res!1039329 () Bool)

(assert (=> d!706650 (=> (not res!1039329) (not e!1555562))))

(assert (=> d!706650 (= res!1039329 (validRegex!2898 lt!879733))))

(declare-fun e!1555560 () Regex!7202)

(assert (=> d!706650 (= lt!879733 e!1555560)))

(declare-fun c!391065 () Bool)

(assert (=> d!706650 (= c!391065 e!1555559)))

(declare-fun res!1039330 () Bool)

(assert (=> d!706650 (=> (not res!1039330) (not e!1555559))))

(assert (=> d!706650 (= res!1039330 (is-Cons!28543 l!9164))))

(assert (=> d!706650 (forall!5836 l!9164 lambda!92820)))

(assert (=> d!706650 (= (generalisedConcat!303 l!9164) lt!879733)))

(declare-fun b!2450741 () Bool)

(declare-fun e!1555558 () Bool)

(assert (=> b!2450741 (= e!1555558 e!1555561)))

(declare-fun c!391066 () Bool)

(assert (=> b!2450741 (= c!391066 (isEmpty!16578 (tail!3844 l!9164)))))

(declare-fun b!2450742 () Bool)

(declare-fun e!1555557 () Regex!7202)

(assert (=> b!2450742 (= e!1555560 e!1555557)))

(declare-fun c!391067 () Bool)

(assert (=> b!2450742 (= c!391067 (is-Cons!28543 l!9164))))

(declare-fun b!2450743 () Bool)

(assert (=> b!2450743 (= e!1555560 (h!33944 l!9164))))

(declare-fun b!2450744 () Bool)

(assert (=> b!2450744 (= e!1555557 (Concat!11838 (h!33944 l!9164) (generalisedConcat!303 (t!208618 l!9164))))))

(declare-fun b!2450745 () Bool)

(declare-fun isEmptyExpr!225 (Regex!7202) Bool)

(assert (=> b!2450745 (= e!1555558 (isEmptyExpr!225 lt!879733))))

(declare-fun b!2450746 () Bool)

(assert (=> b!2450746 (= e!1555557 EmptyExpr!7202)))

(declare-fun b!2450747 () Bool)

(declare-fun isConcat!225 (Regex!7202) Bool)

(assert (=> b!2450747 (= e!1555561 (isConcat!225 lt!879733))))

(declare-fun b!2450748 () Bool)

(assert (=> b!2450748 (= e!1555562 e!1555558)))

(declare-fun c!391064 () Bool)

(assert (=> b!2450748 (= c!391064 (isEmpty!16578 l!9164))))

(assert (= (and d!706650 res!1039330) b!2450740))

(assert (= (and d!706650 c!391065) b!2450743))

(assert (= (and d!706650 (not c!391065)) b!2450742))

(assert (= (and b!2450742 c!391067) b!2450744))

(assert (= (and b!2450742 (not c!391067)) b!2450746))

(assert (= (and d!706650 res!1039329) b!2450748))

(assert (= (and b!2450748 c!391064) b!2450745))

(assert (= (and b!2450748 (not c!391064)) b!2450741))

(assert (= (and b!2450741 c!391066) b!2450739))

(assert (= (and b!2450741 (not c!391066)) b!2450747))

(declare-fun m!2824601 () Bool)

(assert (=> b!2450747 m!2824601))

(declare-fun m!2824603 () Bool)

(assert (=> d!706650 m!2824603))

(declare-fun m!2824605 () Bool)

(assert (=> d!706650 m!2824605))

(declare-fun m!2824607 () Bool)

(assert (=> b!2450744 m!2824607))

(assert (=> b!2450739 m!2824555))

(assert (=> b!2450741 m!2824569))

(assert (=> b!2450741 m!2824569))

(declare-fun m!2824609 () Bool)

(assert (=> b!2450741 m!2824609))

(assert (=> b!2450748 m!2824571))

(declare-fun m!2824611 () Bool)

(assert (=> b!2450745 m!2824611))

(declare-fun m!2824613 () Bool)

(assert (=> b!2450740 m!2824613))

(assert (=> b!2450671 d!706650))

(declare-fun d!706652 () Bool)

(declare-fun res!1039335 () Bool)

(declare-fun e!1555567 () Bool)

(assert (=> d!706652 (=> res!1039335 e!1555567)))

(assert (=> d!706652 (= res!1039335 (is-Nil!28543 l!9164))))

(assert (=> d!706652 (= (forall!5836 l!9164 lambda!92814) e!1555567)))

(declare-fun b!2450753 () Bool)

(declare-fun e!1555568 () Bool)

(assert (=> b!2450753 (= e!1555567 e!1555568)))

(declare-fun res!1039336 () Bool)

(assert (=> b!2450753 (=> (not res!1039336) (not e!1555568))))

(declare-fun dynLambda!12264 (Int Regex!7202) Bool)

(assert (=> b!2450753 (= res!1039336 (dynLambda!12264 lambda!92814 (h!33944 l!9164)))))

(declare-fun b!2450754 () Bool)

(assert (=> b!2450754 (= e!1555568 (forall!5836 (t!208618 l!9164) lambda!92814))))

(assert (= (and d!706652 (not res!1039335)) b!2450753))

(assert (= (and b!2450753 res!1039336) b!2450754))

(declare-fun b_lambda!75079 () Bool)

(assert (=> (not b_lambda!75079) (not b!2450753)))

(declare-fun m!2824615 () Bool)

(assert (=> b!2450753 m!2824615))

(declare-fun m!2824617 () Bool)

(assert (=> b!2450754 m!2824617))

(assert (=> start!239272 d!706652))

(declare-fun d!706654 () Bool)

(assert (=> d!706654 (= (isEmpty!16578 lt!879721) (is-Nil!28543 lt!879721))))

(assert (=> b!2450666 d!706654))

(declare-fun d!706656 () Bool)

(assert (=> d!706656 (= (tail!3844 l!9164) (t!208618 l!9164))))

(assert (=> b!2450666 d!706656))

(declare-fun d!706660 () Bool)

(assert (=> d!706660 (= (isEmpty!16578 l!9164) (is-Nil!28543 l!9164))))

(assert (=> b!2450672 d!706660))

(declare-fun b!2450777 () Bool)

(declare-fun e!1555593 () Bool)

(declare-fun e!1555591 () Bool)

(assert (=> b!2450777 (= e!1555593 e!1555591)))

(declare-fun res!1039351 () Bool)

(assert (=> b!2450777 (=> (not res!1039351) (not e!1555591))))

(declare-fun call!150515 () Bool)

(assert (=> b!2450777 (= res!1039351 call!150515)))

(declare-fun bm!150510 () Bool)

(declare-fun call!150516 () Bool)

(declare-fun c!391073 () Bool)

(declare-fun c!391072 () Bool)

(assert (=> bm!150510 (= call!150516 (validRegex!2898 (ite c!391072 (reg!7531 lt!879719) (ite c!391073 (regTwo!14917 lt!879719) (regOne!14916 lt!879719)))))))

(declare-fun bm!150511 () Bool)

(assert (=> bm!150511 (= call!150515 call!150516)))

(declare-fun b!2450778 () Bool)

(declare-fun res!1039353 () Bool)

(assert (=> b!2450778 (=> res!1039353 e!1555593)))

(assert (=> b!2450778 (= res!1039353 (not (is-Concat!11838 lt!879719)))))

(declare-fun e!1555592 () Bool)

(assert (=> b!2450778 (= e!1555592 e!1555593)))

(declare-fun b!2450779 () Bool)

(declare-fun call!150517 () Bool)

(assert (=> b!2450779 (= e!1555591 call!150517)))

(declare-fun b!2450780 () Bool)

(declare-fun e!1555590 () Bool)

(declare-fun e!1555587 () Bool)

(assert (=> b!2450780 (= e!1555590 e!1555587)))

(declare-fun res!1039354 () Bool)

(declare-fun nullable!2206 (Regex!7202) Bool)

(assert (=> b!2450780 (= res!1039354 (not (nullable!2206 (reg!7531 lt!879719))))))

(assert (=> b!2450780 (=> (not res!1039354) (not e!1555587))))

(declare-fun bm!150512 () Bool)

(assert (=> bm!150512 (= call!150517 (validRegex!2898 (ite c!391073 (regOne!14917 lt!879719) (regTwo!14916 lt!879719))))))

(declare-fun b!2450781 () Bool)

(assert (=> b!2450781 (= e!1555590 e!1555592)))

(assert (=> b!2450781 (= c!391073 (is-Union!7202 lt!879719))))

(declare-fun d!706662 () Bool)

(declare-fun res!1039355 () Bool)

(declare-fun e!1555588 () Bool)

(assert (=> d!706662 (=> res!1039355 e!1555588)))

(assert (=> d!706662 (= res!1039355 (is-ElementMatch!7202 lt!879719))))

(assert (=> d!706662 (= (validRegex!2898 lt!879719) e!1555588)))

(declare-fun b!2450782 () Bool)

(assert (=> b!2450782 (= e!1555588 e!1555590)))

(assert (=> b!2450782 (= c!391072 (is-Star!7202 lt!879719))))

(declare-fun b!2450783 () Bool)

(declare-fun res!1039352 () Bool)

(declare-fun e!1555589 () Bool)

(assert (=> b!2450783 (=> (not res!1039352) (not e!1555589))))

(assert (=> b!2450783 (= res!1039352 call!150517)))

(assert (=> b!2450783 (= e!1555592 e!1555589)))

(declare-fun b!2450784 () Bool)

(assert (=> b!2450784 (= e!1555589 call!150515)))

(declare-fun b!2450785 () Bool)

(assert (=> b!2450785 (= e!1555587 call!150516)))

(assert (= (and d!706662 (not res!1039355)) b!2450782))

(assert (= (and b!2450782 c!391072) b!2450780))

(assert (= (and b!2450782 (not c!391072)) b!2450781))

(assert (= (and b!2450780 res!1039354) b!2450785))

(assert (= (and b!2450781 c!391073) b!2450783))

(assert (= (and b!2450781 (not c!391073)) b!2450778))

(assert (= (and b!2450783 res!1039352) b!2450784))

(assert (= (and b!2450778 (not res!1039353)) b!2450777))

(assert (= (and b!2450777 res!1039351) b!2450779))

(assert (= (or b!2450783 b!2450779) bm!150512))

(assert (= (or b!2450784 b!2450777) bm!150511))

(assert (= (or b!2450785 bm!150511) bm!150510))

(declare-fun m!2824619 () Bool)

(assert (=> bm!150510 m!2824619))

(declare-fun m!2824621 () Bool)

(assert (=> b!2450780 m!2824621))

(declare-fun m!2824623 () Bool)

(assert (=> bm!150512 m!2824623))

(assert (=> b!2450673 d!706662))

(declare-fun b!2450816 () Bool)

(declare-fun e!1555613 () Bool)

(declare-fun e!1555610 () Bool)

(assert (=> b!2450816 (= e!1555613 e!1555610)))

(declare-fun c!391082 () Bool)

(assert (=> b!2450816 (= c!391082 (is-EmptyLang!7202 r!13927))))

(declare-fun d!706668 () Bool)

(assert (=> d!706668 e!1555613))

(declare-fun c!391081 () Bool)

(assert (=> d!706668 (= c!391081 (is-EmptyExpr!7202 r!13927))))

(declare-fun lt!879736 () Bool)

(declare-fun e!1555615 () Bool)

(assert (=> d!706668 (= lt!879736 e!1555615)))

(declare-fun c!391080 () Bool)

(declare-fun isEmpty!16580 (List!28640) Bool)

(assert (=> d!706668 (= c!391080 (isEmpty!16580 s!9460))))

(assert (=> d!706668 (validRegex!2898 r!13927)))

(assert (=> d!706668 (= (matchR!3317 r!13927 s!9460) lt!879736)))

(declare-fun b!2450817 () Bool)

(declare-fun res!1039374 () Bool)

(declare-fun e!1555616 () Bool)

(assert (=> b!2450817 (=> res!1039374 e!1555616)))

(assert (=> b!2450817 (= res!1039374 (not (is-ElementMatch!7202 r!13927)))))

(assert (=> b!2450817 (= e!1555610 e!1555616)))

(declare-fun b!2450818 () Bool)

(declare-fun e!1555614 () Bool)

(declare-fun head!5573 (List!28640) C!14562)

(assert (=> b!2450818 (= e!1555614 (not (= (head!5573 s!9460) (c!391054 r!13927))))))

(declare-fun b!2450819 () Bool)

(declare-fun res!1039378 () Bool)

(declare-fun e!1555611 () Bool)

(assert (=> b!2450819 (=> (not res!1039378) (not e!1555611))))

(declare-fun call!150520 () Bool)

(assert (=> b!2450819 (= res!1039378 (not call!150520))))

(declare-fun b!2450820 () Bool)

(assert (=> b!2450820 (= e!1555613 (= lt!879736 call!150520))))

(declare-fun bm!150515 () Bool)

(assert (=> bm!150515 (= call!150520 (isEmpty!16580 s!9460))))

(declare-fun b!2450821 () Bool)

(assert (=> b!2450821 (= e!1555611 (= (head!5573 s!9460) (c!391054 r!13927)))))

(declare-fun b!2450822 () Bool)

(declare-fun res!1039381 () Bool)

(assert (=> b!2450822 (=> res!1039381 e!1555616)))

(assert (=> b!2450822 (= res!1039381 e!1555611)))

(declare-fun res!1039376 () Bool)

(assert (=> b!2450822 (=> (not res!1039376) (not e!1555611))))

(assert (=> b!2450822 (= res!1039376 lt!879736)))

(declare-fun b!2450823 () Bool)

(declare-fun derivativeStep!1860 (Regex!7202 C!14562) Regex!7202)

(declare-fun tail!3846 (List!28640) List!28640)

(assert (=> b!2450823 (= e!1555615 (matchR!3317 (derivativeStep!1860 r!13927 (head!5573 s!9460)) (tail!3846 s!9460)))))

(declare-fun b!2450824 () Bool)

(declare-fun e!1555612 () Bool)

(assert (=> b!2450824 (= e!1555616 e!1555612)))

(declare-fun res!1039375 () Bool)

(assert (=> b!2450824 (=> (not res!1039375) (not e!1555612))))

(assert (=> b!2450824 (= res!1039375 (not lt!879736))))

(declare-fun b!2450825 () Bool)

(assert (=> b!2450825 (= e!1555610 (not lt!879736))))

(declare-fun b!2450826 () Bool)

(declare-fun res!1039380 () Bool)

(assert (=> b!2450826 (=> res!1039380 e!1555614)))

(assert (=> b!2450826 (= res!1039380 (not (isEmpty!16580 (tail!3846 s!9460))))))

(declare-fun b!2450827 () Bool)

(assert (=> b!2450827 (= e!1555612 e!1555614)))

(declare-fun res!1039377 () Bool)

(assert (=> b!2450827 (=> res!1039377 e!1555614)))

(assert (=> b!2450827 (= res!1039377 call!150520)))

(declare-fun b!2450828 () Bool)

(assert (=> b!2450828 (= e!1555615 (nullable!2206 r!13927))))

(declare-fun b!2450829 () Bool)

(declare-fun res!1039379 () Bool)

(assert (=> b!2450829 (=> (not res!1039379) (not e!1555611))))

(assert (=> b!2450829 (= res!1039379 (isEmpty!16580 (tail!3846 s!9460)))))

(assert (= (and d!706668 c!391080) b!2450828))

(assert (= (and d!706668 (not c!391080)) b!2450823))

(assert (= (and d!706668 c!391081) b!2450820))

(assert (= (and d!706668 (not c!391081)) b!2450816))

(assert (= (and b!2450816 c!391082) b!2450825))

(assert (= (and b!2450816 (not c!391082)) b!2450817))

(assert (= (and b!2450817 (not res!1039374)) b!2450822))

(assert (= (and b!2450822 res!1039376) b!2450819))

(assert (= (and b!2450819 res!1039378) b!2450829))

(assert (= (and b!2450829 res!1039379) b!2450821))

(assert (= (and b!2450822 (not res!1039381)) b!2450824))

(assert (= (and b!2450824 res!1039375) b!2450827))

(assert (= (and b!2450827 (not res!1039377)) b!2450826))

(assert (= (and b!2450826 (not res!1039380)) b!2450818))

(assert (= (or b!2450820 b!2450819 b!2450827) bm!150515))

(declare-fun m!2824629 () Bool)

(assert (=> bm!150515 m!2824629))

(assert (=> d!706668 m!2824629))

(declare-fun m!2824631 () Bool)

(assert (=> d!706668 m!2824631))

(declare-fun m!2824633 () Bool)

(assert (=> b!2450823 m!2824633))

(assert (=> b!2450823 m!2824633))

(declare-fun m!2824635 () Bool)

(assert (=> b!2450823 m!2824635))

(declare-fun m!2824637 () Bool)

(assert (=> b!2450823 m!2824637))

(assert (=> b!2450823 m!2824635))

(assert (=> b!2450823 m!2824637))

(declare-fun m!2824639 () Bool)

(assert (=> b!2450823 m!2824639))

(assert (=> b!2450826 m!2824637))

(assert (=> b!2450826 m!2824637))

(declare-fun m!2824641 () Bool)

(assert (=> b!2450826 m!2824641))

(declare-fun m!2824643 () Bool)

(assert (=> b!2450828 m!2824643))

(assert (=> b!2450821 m!2824633))

(assert (=> b!2450818 m!2824633))

(assert (=> b!2450829 m!2824637))

(assert (=> b!2450829 m!2824637))

(assert (=> b!2450829 m!2824641))

(assert (=> b!2450668 d!706668))

(declare-fun b!2450898 () Bool)

(assert (=> b!2450898 true))

(assert (=> b!2450898 true))

(declare-fun bs!465702 () Bool)

(declare-fun b!2450899 () Bool)

(assert (= bs!465702 (and b!2450899 b!2450898)))

(declare-fun lambda!92826 () Int)

(declare-fun lambda!92825 () Int)

(assert (=> bs!465702 (not (= lambda!92826 lambda!92825))))

(assert (=> b!2450899 true))

(assert (=> b!2450899 true))

(declare-fun d!706672 () Bool)

(declare-fun c!391099 () Bool)

(assert (=> d!706672 (= c!391099 (is-EmptyExpr!7202 r!13927))))

(declare-fun e!1555652 () Bool)

(assert (=> d!706672 (= (matchRSpec!1049 r!13927 s!9460) e!1555652)))

(declare-fun b!2450890 () Bool)

(declare-fun e!1555654 () Bool)

(assert (=> b!2450890 (= e!1555652 e!1555654)))

(declare-fun res!1039414 () Bool)

(assert (=> b!2450890 (= res!1039414 (not (is-EmptyLang!7202 r!13927)))))

(assert (=> b!2450890 (=> (not res!1039414) (not e!1555654))))

(declare-fun b!2450891 () Bool)

(declare-fun c!391100 () Bool)

(assert (=> b!2450891 (= c!391100 (is-Union!7202 r!13927))))

(declare-fun e!1555650 () Bool)

(declare-fun e!1555651 () Bool)

(assert (=> b!2450891 (= e!1555650 e!1555651)))

(declare-fun bm!150522 () Bool)

(declare-fun call!150528 () Bool)

(assert (=> bm!150522 (= call!150528 (isEmpty!16580 s!9460))))

(declare-fun b!2450892 () Bool)

(assert (=> b!2450892 (= e!1555650 (= s!9460 (Cons!28542 (c!391054 r!13927) Nil!28542)))))

(declare-fun b!2450893 () Bool)

(declare-fun e!1555655 () Bool)

(assert (=> b!2450893 (= e!1555655 (matchRSpec!1049 (regTwo!14917 r!13927) s!9460))))

(declare-fun b!2450894 () Bool)

(assert (=> b!2450894 (= e!1555652 call!150528)))

(declare-fun b!2450895 () Bool)

(declare-fun res!1039416 () Bool)

(declare-fun e!1555649 () Bool)

(assert (=> b!2450895 (=> res!1039416 e!1555649)))

(assert (=> b!2450895 (= res!1039416 call!150528)))

(declare-fun e!1555653 () Bool)

(assert (=> b!2450895 (= e!1555653 e!1555649)))

(declare-fun b!2450896 () Bool)

(declare-fun c!391098 () Bool)

(assert (=> b!2450896 (= c!391098 (is-ElementMatch!7202 r!13927))))

(assert (=> b!2450896 (= e!1555654 e!1555650)))

(declare-fun b!2450897 () Bool)

(assert (=> b!2450897 (= e!1555651 e!1555653)))

(declare-fun c!391097 () Bool)

(assert (=> b!2450897 (= c!391097 (is-Star!7202 r!13927))))

(declare-fun call!150527 () Bool)

(assert (=> b!2450898 (= e!1555649 call!150527)))

(declare-fun bm!150523 () Bool)

(declare-fun Exists!1232 (Int) Bool)

(assert (=> bm!150523 (= call!150527 (Exists!1232 (ite c!391097 lambda!92825 lambda!92826)))))

(assert (=> b!2450899 (= e!1555653 call!150527)))

(declare-fun b!2450900 () Bool)

(assert (=> b!2450900 (= e!1555651 e!1555655)))

(declare-fun res!1039415 () Bool)

(assert (=> b!2450900 (= res!1039415 (matchRSpec!1049 (regOne!14917 r!13927) s!9460))))

(assert (=> b!2450900 (=> res!1039415 e!1555655)))

(assert (= (and d!706672 c!391099) b!2450894))

(assert (= (and d!706672 (not c!391099)) b!2450890))

(assert (= (and b!2450890 res!1039414) b!2450896))

(assert (= (and b!2450896 c!391098) b!2450892))

(assert (= (and b!2450896 (not c!391098)) b!2450891))

(assert (= (and b!2450891 c!391100) b!2450900))

(assert (= (and b!2450891 (not c!391100)) b!2450897))

(assert (= (and b!2450900 (not res!1039415)) b!2450893))

(assert (= (and b!2450897 c!391097) b!2450895))

(assert (= (and b!2450897 (not c!391097)) b!2450899))

(assert (= (and b!2450895 (not res!1039416)) b!2450898))

(assert (= (or b!2450898 b!2450899) bm!150523))

(assert (= (or b!2450894 b!2450895) bm!150522))

(assert (=> bm!150522 m!2824629))

(declare-fun m!2824645 () Bool)

(assert (=> b!2450893 m!2824645))

(declare-fun m!2824647 () Bool)

(assert (=> bm!150523 m!2824647))

(declare-fun m!2824649 () Bool)

(assert (=> b!2450900 m!2824649))

(assert (=> b!2450668 d!706672))

(declare-fun d!706674 () Bool)

(assert (=> d!706674 (= (matchR!3317 r!13927 s!9460) (matchRSpec!1049 r!13927 s!9460))))

(declare-fun lt!879742 () Unit!41859)

(declare-fun choose!14526 (Regex!7202 List!28640) Unit!41859)

(assert (=> d!706674 (= lt!879742 (choose!14526 r!13927 s!9460))))

(assert (=> d!706674 (validRegex!2898 r!13927)))

(assert (=> d!706674 (= (mainMatchTheorem!1049 r!13927 s!9460) lt!879742)))

(declare-fun bs!465703 () Bool)

(assert (= bs!465703 d!706674))

(assert (=> bs!465703 m!2824559))

(assert (=> bs!465703 m!2824561))

(declare-fun m!2824651 () Bool)

(assert (=> bs!465703 m!2824651))

(assert (=> bs!465703 m!2824631))

(assert (=> b!2450668 d!706674))

(declare-fun b!2450919 () Bool)

(declare-fun e!1555666 () Bool)

(declare-fun e!1555663 () Bool)

(assert (=> b!2450919 (= e!1555666 e!1555663)))

(declare-fun c!391106 () Bool)

(assert (=> b!2450919 (= c!391106 (is-EmptyLang!7202 lt!879719))))

(declare-fun d!706676 () Bool)

(assert (=> d!706676 e!1555666))

(declare-fun c!391105 () Bool)

(assert (=> d!706676 (= c!391105 (is-EmptyExpr!7202 lt!879719))))

(declare-fun lt!879743 () Bool)

(declare-fun e!1555668 () Bool)

(assert (=> d!706676 (= lt!879743 e!1555668)))

(declare-fun c!391104 () Bool)

(assert (=> d!706676 (= c!391104 (isEmpty!16580 s!9460))))

(assert (=> d!706676 (validRegex!2898 lt!879719)))

(assert (=> d!706676 (= (matchR!3317 lt!879719 s!9460) lt!879743)))

(declare-fun b!2450920 () Bool)

(declare-fun res!1039425 () Bool)

(declare-fun e!1555669 () Bool)

(assert (=> b!2450920 (=> res!1039425 e!1555669)))

(assert (=> b!2450920 (= res!1039425 (not (is-ElementMatch!7202 lt!879719)))))

(assert (=> b!2450920 (= e!1555663 e!1555669)))

(declare-fun b!2450921 () Bool)

(declare-fun e!1555667 () Bool)

(assert (=> b!2450921 (= e!1555667 (not (= (head!5573 s!9460) (c!391054 lt!879719))))))

(declare-fun b!2450922 () Bool)

(declare-fun res!1039429 () Bool)

(declare-fun e!1555664 () Bool)

(assert (=> b!2450922 (=> (not res!1039429) (not e!1555664))))

(declare-fun call!150530 () Bool)

(assert (=> b!2450922 (= res!1039429 (not call!150530))))

(declare-fun b!2450923 () Bool)

(assert (=> b!2450923 (= e!1555666 (= lt!879743 call!150530))))

(declare-fun bm!150525 () Bool)

(assert (=> bm!150525 (= call!150530 (isEmpty!16580 s!9460))))

(declare-fun b!2450924 () Bool)

(assert (=> b!2450924 (= e!1555664 (= (head!5573 s!9460) (c!391054 lt!879719)))))

(declare-fun b!2450925 () Bool)

(declare-fun res!1039432 () Bool)

(assert (=> b!2450925 (=> res!1039432 e!1555669)))

(assert (=> b!2450925 (= res!1039432 e!1555664)))

(declare-fun res!1039427 () Bool)

(assert (=> b!2450925 (=> (not res!1039427) (not e!1555664))))

(assert (=> b!2450925 (= res!1039427 lt!879743)))

(declare-fun b!2450926 () Bool)

(assert (=> b!2450926 (= e!1555668 (matchR!3317 (derivativeStep!1860 lt!879719 (head!5573 s!9460)) (tail!3846 s!9460)))))

(declare-fun b!2450927 () Bool)

(declare-fun e!1555665 () Bool)

(assert (=> b!2450927 (= e!1555669 e!1555665)))

(declare-fun res!1039426 () Bool)

(assert (=> b!2450927 (=> (not res!1039426) (not e!1555665))))

(assert (=> b!2450927 (= res!1039426 (not lt!879743))))

(declare-fun b!2450928 () Bool)

(assert (=> b!2450928 (= e!1555663 (not lt!879743))))

(declare-fun b!2450929 () Bool)

(declare-fun res!1039431 () Bool)

(assert (=> b!2450929 (=> res!1039431 e!1555667)))

(assert (=> b!2450929 (= res!1039431 (not (isEmpty!16580 (tail!3846 s!9460))))))

(declare-fun b!2450930 () Bool)

(assert (=> b!2450930 (= e!1555665 e!1555667)))

(declare-fun res!1039428 () Bool)

(assert (=> b!2450930 (=> res!1039428 e!1555667)))

(assert (=> b!2450930 (= res!1039428 call!150530)))

(declare-fun b!2450931 () Bool)

(assert (=> b!2450931 (= e!1555668 (nullable!2206 lt!879719))))

(declare-fun b!2450932 () Bool)

(declare-fun res!1039430 () Bool)

(assert (=> b!2450932 (=> (not res!1039430) (not e!1555664))))

(assert (=> b!2450932 (= res!1039430 (isEmpty!16580 (tail!3846 s!9460)))))

(assert (= (and d!706676 c!391104) b!2450931))

(assert (= (and d!706676 (not c!391104)) b!2450926))

(assert (= (and d!706676 c!391105) b!2450923))

(assert (= (and d!706676 (not c!391105)) b!2450919))

(assert (= (and b!2450919 c!391106) b!2450928))

(assert (= (and b!2450919 (not c!391106)) b!2450920))

(assert (= (and b!2450920 (not res!1039425)) b!2450925))

(assert (= (and b!2450925 res!1039427) b!2450922))

(assert (= (and b!2450922 res!1039429) b!2450932))

(assert (= (and b!2450932 res!1039430) b!2450924))

(assert (= (and b!2450925 (not res!1039432)) b!2450927))

(assert (= (and b!2450927 res!1039426) b!2450930))

(assert (= (and b!2450930 (not res!1039428)) b!2450929))

(assert (= (and b!2450929 (not res!1039431)) b!2450921))

(assert (= (or b!2450923 b!2450922 b!2450930) bm!150525))

(assert (=> bm!150525 m!2824629))

(assert (=> d!706676 m!2824629))

(assert (=> d!706676 m!2824557))

(assert (=> b!2450926 m!2824633))

(assert (=> b!2450926 m!2824633))

(declare-fun m!2824653 () Bool)

(assert (=> b!2450926 m!2824653))

(assert (=> b!2450926 m!2824637))

(assert (=> b!2450926 m!2824653))

(assert (=> b!2450926 m!2824637))

(declare-fun m!2824655 () Bool)

(assert (=> b!2450926 m!2824655))

(assert (=> b!2450929 m!2824637))

(assert (=> b!2450929 m!2824637))

(assert (=> b!2450929 m!2824641))

(declare-fun m!2824659 () Bool)

(assert (=> b!2450931 m!2824659))

(assert (=> b!2450924 m!2824633))

(assert (=> b!2450921 m!2824633))

(assert (=> b!2450932 m!2824637))

(assert (=> b!2450932 m!2824637))

(assert (=> b!2450932 m!2824641))

(assert (=> b!2450663 d!706676))

(declare-fun d!706678 () Bool)

(assert (=> d!706678 (= (head!5571 l!9164) (h!33944 l!9164))))

(assert (=> b!2450663 d!706678))

(declare-fun bs!465704 () Bool)

(declare-fun d!706680 () Bool)

(assert (= bs!465704 (and d!706680 start!239272)))

(declare-fun lambda!92827 () Int)

(assert (=> bs!465704 (= lambda!92827 lambda!92814)))

(declare-fun bs!465705 () Bool)

(assert (= bs!465705 (and d!706680 d!706650)))

(assert (=> bs!465705 (= lambda!92827 lambda!92820)))

(declare-fun b!2450933 () Bool)

(declare-fun e!1555674 () Bool)

(declare-fun lt!879744 () Regex!7202)

(assert (=> b!2450933 (= e!1555674 (= lt!879744 (head!5571 lt!879721)))))

(declare-fun b!2450934 () Bool)

(declare-fun e!1555672 () Bool)

(assert (=> b!2450934 (= e!1555672 (isEmpty!16578 (t!208618 lt!879721)))))

(declare-fun e!1555675 () Bool)

(assert (=> d!706680 e!1555675))

(declare-fun res!1039433 () Bool)

(assert (=> d!706680 (=> (not res!1039433) (not e!1555675))))

(assert (=> d!706680 (= res!1039433 (validRegex!2898 lt!879744))))

(declare-fun e!1555673 () Regex!7202)

(assert (=> d!706680 (= lt!879744 e!1555673)))

(declare-fun c!391108 () Bool)

(assert (=> d!706680 (= c!391108 e!1555672)))

(declare-fun res!1039434 () Bool)

(assert (=> d!706680 (=> (not res!1039434) (not e!1555672))))

(assert (=> d!706680 (= res!1039434 (is-Cons!28543 lt!879721))))

(assert (=> d!706680 (forall!5836 lt!879721 lambda!92827)))

(assert (=> d!706680 (= (generalisedConcat!303 lt!879721) lt!879744)))

(declare-fun b!2450935 () Bool)

(declare-fun e!1555671 () Bool)

(assert (=> b!2450935 (= e!1555671 e!1555674)))

(declare-fun c!391109 () Bool)

(assert (=> b!2450935 (= c!391109 (isEmpty!16578 (tail!3844 lt!879721)))))

(declare-fun b!2450936 () Bool)

(declare-fun e!1555670 () Regex!7202)

(assert (=> b!2450936 (= e!1555673 e!1555670)))

(declare-fun c!391110 () Bool)

(assert (=> b!2450936 (= c!391110 (is-Cons!28543 lt!879721))))

(declare-fun b!2450937 () Bool)

(assert (=> b!2450937 (= e!1555673 (h!33944 lt!879721))))

(declare-fun b!2450938 () Bool)

(assert (=> b!2450938 (= e!1555670 (Concat!11838 (h!33944 lt!879721) (generalisedConcat!303 (t!208618 lt!879721))))))

(declare-fun b!2450939 () Bool)

(assert (=> b!2450939 (= e!1555671 (isEmptyExpr!225 lt!879744))))

(declare-fun b!2450940 () Bool)

(assert (=> b!2450940 (= e!1555670 EmptyExpr!7202)))

(declare-fun b!2450941 () Bool)

(assert (=> b!2450941 (= e!1555674 (isConcat!225 lt!879744))))

(declare-fun b!2450942 () Bool)

(assert (=> b!2450942 (= e!1555675 e!1555671)))

(declare-fun c!391107 () Bool)

(assert (=> b!2450942 (= c!391107 (isEmpty!16578 lt!879721))))

(assert (= (and d!706680 res!1039434) b!2450934))

(assert (= (and d!706680 c!391108) b!2450937))

(assert (= (and d!706680 (not c!391108)) b!2450936))

(assert (= (and b!2450936 c!391110) b!2450938))

(assert (= (and b!2450936 (not c!391110)) b!2450940))

(assert (= (and d!706680 res!1039433) b!2450942))

(assert (= (and b!2450942 c!391107) b!2450939))

(assert (= (and b!2450942 (not c!391107)) b!2450935))

(assert (= (and b!2450935 c!391109) b!2450933))

(assert (= (and b!2450935 (not c!391109)) b!2450941))

(declare-fun m!2824673 () Bool)

(assert (=> b!2450941 m!2824673))

(declare-fun m!2824675 () Bool)

(assert (=> d!706680 m!2824675))

(declare-fun m!2824677 () Bool)

(assert (=> d!706680 m!2824677))

(declare-fun m!2824679 () Bool)

(assert (=> b!2450938 m!2824679))

(declare-fun m!2824681 () Bool)

(assert (=> b!2450933 m!2824681))

(declare-fun m!2824683 () Bool)

(assert (=> b!2450935 m!2824683))

(assert (=> b!2450935 m!2824683))

(declare-fun m!2824685 () Bool)

(assert (=> b!2450935 m!2824685))

(assert (=> b!2450942 m!2824567))

(declare-fun m!2824687 () Bool)

(assert (=> b!2450939 m!2824687))

(declare-fun m!2824689 () Bool)

(assert (=> b!2450934 m!2824689))

(assert (=> b!2450664 d!706680))

(declare-fun b!2450947 () Bool)

(declare-fun e!1555679 () Bool)

(declare-fun tp!779512 () Bool)

(assert (=> b!2450947 (= e!1555679 (and tp_is_empty!11817 tp!779512))))

(assert (=> b!2450676 (= tp!779484 e!1555679)))

(assert (= (and b!2450676 (is-Cons!28542 (t!208617 s!9460))) b!2450947))

(declare-fun b!2450972 () Bool)

(declare-fun e!1555688 () Bool)

(assert (=> b!2450972 (= e!1555688 tp_is_empty!11817)))

(declare-fun b!2450973 () Bool)

(declare-fun tp!779523 () Bool)

(declare-fun tp!779525 () Bool)

(assert (=> b!2450973 (= e!1555688 (and tp!779523 tp!779525))))

(assert (=> b!2450667 (= tp!779478 e!1555688)))

(declare-fun b!2450975 () Bool)

(declare-fun tp!779524 () Bool)

(declare-fun tp!779526 () Bool)

(assert (=> b!2450975 (= e!1555688 (and tp!779524 tp!779526))))

(declare-fun b!2450974 () Bool)

(declare-fun tp!779527 () Bool)

(assert (=> b!2450974 (= e!1555688 tp!779527)))

(assert (= (and b!2450667 (is-ElementMatch!7202 (regOne!14916 r!13927))) b!2450972))

(assert (= (and b!2450667 (is-Concat!11838 (regOne!14916 r!13927))) b!2450973))

(assert (= (and b!2450667 (is-Star!7202 (regOne!14916 r!13927))) b!2450974))

(assert (= (and b!2450667 (is-Union!7202 (regOne!14916 r!13927))) b!2450975))

(declare-fun b!2450976 () Bool)

(declare-fun e!1555689 () Bool)

(assert (=> b!2450976 (= e!1555689 tp_is_empty!11817)))

(declare-fun b!2450977 () Bool)

(declare-fun tp!779528 () Bool)

(declare-fun tp!779530 () Bool)

(assert (=> b!2450977 (= e!1555689 (and tp!779528 tp!779530))))

(assert (=> b!2450667 (= tp!779483 e!1555689)))

(declare-fun b!2450979 () Bool)

(declare-fun tp!779529 () Bool)

(declare-fun tp!779531 () Bool)

(assert (=> b!2450979 (= e!1555689 (and tp!779529 tp!779531))))

(declare-fun b!2450978 () Bool)

(declare-fun tp!779532 () Bool)

(assert (=> b!2450978 (= e!1555689 tp!779532)))

(assert (= (and b!2450667 (is-ElementMatch!7202 (regTwo!14916 r!13927))) b!2450976))

(assert (= (and b!2450667 (is-Concat!11838 (regTwo!14916 r!13927))) b!2450977))

(assert (= (and b!2450667 (is-Star!7202 (regTwo!14916 r!13927))) b!2450978))

(assert (= (and b!2450667 (is-Union!7202 (regTwo!14916 r!13927))) b!2450979))

(declare-fun b!2450980 () Bool)

(declare-fun e!1555690 () Bool)

(assert (=> b!2450980 (= e!1555690 tp_is_empty!11817)))

(declare-fun b!2450981 () Bool)

(declare-fun tp!779533 () Bool)

(declare-fun tp!779535 () Bool)

(assert (=> b!2450981 (= e!1555690 (and tp!779533 tp!779535))))

(assert (=> b!2450674 (= tp!779479 e!1555690)))

(declare-fun b!2450983 () Bool)

(declare-fun tp!779534 () Bool)

(declare-fun tp!779536 () Bool)

(assert (=> b!2450983 (= e!1555690 (and tp!779534 tp!779536))))

(declare-fun b!2450982 () Bool)

(declare-fun tp!779537 () Bool)

(assert (=> b!2450982 (= e!1555690 tp!779537)))

(assert (= (and b!2450674 (is-ElementMatch!7202 (regOne!14917 r!13927))) b!2450980))

(assert (= (and b!2450674 (is-Concat!11838 (regOne!14917 r!13927))) b!2450981))

(assert (= (and b!2450674 (is-Star!7202 (regOne!14917 r!13927))) b!2450982))

(assert (= (and b!2450674 (is-Union!7202 (regOne!14917 r!13927))) b!2450983))

(declare-fun b!2450984 () Bool)

(declare-fun e!1555691 () Bool)

(assert (=> b!2450984 (= e!1555691 tp_is_empty!11817)))

(declare-fun b!2450985 () Bool)

(declare-fun tp!779538 () Bool)

(declare-fun tp!779540 () Bool)

(assert (=> b!2450985 (= e!1555691 (and tp!779538 tp!779540))))

(assert (=> b!2450674 (= tp!779485 e!1555691)))

(declare-fun b!2450987 () Bool)

(declare-fun tp!779539 () Bool)

(declare-fun tp!779541 () Bool)

(assert (=> b!2450987 (= e!1555691 (and tp!779539 tp!779541))))

(declare-fun b!2450986 () Bool)

(declare-fun tp!779542 () Bool)

(assert (=> b!2450986 (= e!1555691 tp!779542)))

(assert (= (and b!2450674 (is-ElementMatch!7202 (regTwo!14917 r!13927))) b!2450984))

(assert (= (and b!2450674 (is-Concat!11838 (regTwo!14917 r!13927))) b!2450985))

(assert (= (and b!2450674 (is-Star!7202 (regTwo!14917 r!13927))) b!2450986))

(assert (= (and b!2450674 (is-Union!7202 (regTwo!14917 r!13927))) b!2450987))

(declare-fun b!2450988 () Bool)

(declare-fun e!1555692 () Bool)

(assert (=> b!2450988 (= e!1555692 tp_is_empty!11817)))

(declare-fun b!2450989 () Bool)

(declare-fun tp!779543 () Bool)

(declare-fun tp!779545 () Bool)

(assert (=> b!2450989 (= e!1555692 (and tp!779543 tp!779545))))

(assert (=> b!2450670 (= tp!779481 e!1555692)))

(declare-fun b!2450991 () Bool)

(declare-fun tp!779544 () Bool)

(declare-fun tp!779546 () Bool)

(assert (=> b!2450991 (= e!1555692 (and tp!779544 tp!779546))))

(declare-fun b!2450990 () Bool)

(declare-fun tp!779547 () Bool)

(assert (=> b!2450990 (= e!1555692 tp!779547)))

(assert (= (and b!2450670 (is-ElementMatch!7202 (h!33944 l!9164))) b!2450988))

(assert (= (and b!2450670 (is-Concat!11838 (h!33944 l!9164))) b!2450989))

(assert (= (and b!2450670 (is-Star!7202 (h!33944 l!9164))) b!2450990))

(assert (= (and b!2450670 (is-Union!7202 (h!33944 l!9164))) b!2450991))

(declare-fun b!2450996 () Bool)

(declare-fun e!1555695 () Bool)

(declare-fun tp!779552 () Bool)

(declare-fun tp!779553 () Bool)

(assert (=> b!2450996 (= e!1555695 (and tp!779552 tp!779553))))

(assert (=> b!2450670 (= tp!779482 e!1555695)))

(assert (= (and b!2450670 (is-Cons!28543 (t!208618 l!9164))) b!2450996))

(declare-fun b!2450997 () Bool)

(declare-fun e!1555696 () Bool)

(assert (=> b!2450997 (= e!1555696 tp_is_empty!11817)))

(declare-fun b!2450998 () Bool)

(declare-fun tp!779554 () Bool)

(declare-fun tp!779556 () Bool)

(assert (=> b!2450998 (= e!1555696 (and tp!779554 tp!779556))))

(assert (=> b!2450665 (= tp!779480 e!1555696)))

(declare-fun b!2451000 () Bool)

(declare-fun tp!779555 () Bool)

(declare-fun tp!779557 () Bool)

(assert (=> b!2451000 (= e!1555696 (and tp!779555 tp!779557))))

(declare-fun b!2450999 () Bool)

(declare-fun tp!779558 () Bool)

(assert (=> b!2450999 (= e!1555696 tp!779558)))

(assert (= (and b!2450665 (is-ElementMatch!7202 (reg!7531 r!13927))) b!2450997))

(assert (= (and b!2450665 (is-Concat!11838 (reg!7531 r!13927))) b!2450998))

(assert (= (and b!2450665 (is-Star!7202 (reg!7531 r!13927))) b!2450999))

(assert (= (and b!2450665 (is-Union!7202 (reg!7531 r!13927))) b!2451000))

(declare-fun b_lambda!75083 () Bool)

(assert (= b_lambda!75079 (or start!239272 b_lambda!75083)))

(declare-fun bs!465706 () Bool)

(declare-fun d!706686 () Bool)

(assert (= bs!465706 (and d!706686 start!239272)))

(assert (=> bs!465706 (= (dynLambda!12264 lambda!92814 (h!33944 l!9164)) (validRegex!2898 (h!33944 l!9164)))))

(declare-fun m!2824699 () Bool)

(assert (=> bs!465706 m!2824699))

(assert (=> b!2450753 d!706686))

(push 1)

(assert (not b!2450989))

(assert (not b!2450987))

(assert (not b!2450990))

(assert (not b!2450829))

(assert (not b!2450991))

(assert (not b!2450975))

(assert (not b!2450983))

(assert (not b!2450741))

(assert (not bm!150523))

(assert (not b!2450933))

(assert (not b!2450744))

(assert (not b!2450754))

(assert (not bs!465706))

(assert (not b!2450973))

(assert (not b!2450934))

(assert (not b!2450929))

(assert (not b_lambda!75083))

(assert (not b!2450748))

(assert (not b!2450981))

(assert tp_is_empty!11817)

(assert (not b!2450931))

(assert (not b!2450941))

(assert (not b!2450921))

(assert (not b!2450938))

(assert (not b!2450996))

(assert (not b!2450826))

(assert (not b!2450977))

(assert (not bm!150512))

(assert (not b!2450985))

(assert (not b!2450926))

(assert (not d!706676))

(assert (not b!2450979))

(assert (not b!2450739))

(assert (not b!2450998))

(assert (not b!2450999))

(assert (not b!2450947))

(assert (not b!2450982))

(assert (not d!706674))

(assert (not b!2450978))

(assert (not bm!150510))

(assert (not b!2451000))

(assert (not b!2450740))

(assert (not b!2450747))

(assert (not b!2450924))

(assert (not b!2450818))

(assert (not b!2450893))

(assert (not b!2450823))

(assert (not d!706650))

(assert (not b!2450986))

(assert (not b!2450745))

(assert (not b!2450821))

(assert (not b!2450942))

(assert (not b!2450828))

(assert (not b!2450780))

(assert (not bm!150522))

(assert (not b!2450900))

(assert (not b!2450974))

(assert (not d!706680))

(assert (not b!2450939))

(assert (not b!2450935))

(assert (not bm!150515))

(assert (not b!2450932))

(assert (not d!706668))

(assert (not bm!150525))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

