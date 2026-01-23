; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236570 () Bool)

(assert start!236570)

(declare-fun b!2414485 () Bool)

(declare-fun res!1025422 () Bool)

(declare-fun e!1536737 () Bool)

(assert (=> b!2414485 (=> (not res!1025422) (not e!1536737))))

(declare-datatypes ((C!14342 0))(
  ( (C!14343 (val!8413 Int)) )
))
(declare-datatypes ((Regex!7092 0))(
  ( (ElementMatch!7092 (c!384722 C!14342)) (Concat!11728 (regOne!14696 Regex!7092) (regTwo!14696 Regex!7092)) (EmptyExpr!7092) (Star!7092 (reg!7421 Regex!7092)) (EmptyLang!7092) (Union!7092 (regOne!14697 Regex!7092) (regTwo!14697 Regex!7092)) )
))
(declare-fun r!13927 () Regex!7092)

(declare-datatypes ((List!28422 0))(
  ( (Nil!28324) (Cons!28324 (h!33725 Regex!7092) (t!208399 List!28422)) )
))
(declare-fun l!9164 () List!28422)

(declare-fun generalisedConcat!193 (List!28422) Regex!7092)

(assert (=> b!2414485 (= res!1025422 (= r!13927 (generalisedConcat!193 l!9164)))))

(declare-fun b!2414486 () Bool)

(declare-fun res!1025417 () Bool)

(declare-fun e!1536736 () Bool)

(assert (=> b!2414486 (=> res!1025417 e!1536736)))

(declare-fun lt!873999 () List!28422)

(assert (=> b!2414486 (= res!1025417 (not (= (generalisedConcat!193 lt!873999) EmptyExpr!7092)))))

(declare-fun b!2414487 () Bool)

(declare-fun e!1536734 () Bool)

(assert (=> b!2414487 (= e!1536734 e!1536736)))

(declare-fun res!1025415 () Bool)

(assert (=> b!2414487 (=> res!1025415 e!1536736)))

(declare-fun isEmpty!16331 (List!28422) Bool)

(assert (=> b!2414487 (= res!1025415 (not (isEmpty!16331 lt!873999)))))

(declare-fun tail!3672 (List!28422) List!28422)

(assert (=> b!2414487 (= lt!873999 (tail!3672 l!9164))))

(declare-fun b!2414488 () Bool)

(declare-fun e!1536732 () Bool)

(declare-fun tp!767908 () Bool)

(declare-fun tp!767905 () Bool)

(assert (=> b!2414488 (= e!1536732 (and tp!767908 tp!767905))))

(declare-fun b!2414490 () Bool)

(assert (=> b!2414490 (= e!1536737 (not e!1536734))))

(declare-fun res!1025416 () Bool)

(assert (=> b!2414490 (=> res!1025416 e!1536734)))

(assert (=> b!2414490 (= res!1025416 (or (is-Concat!11728 r!13927) (is-EmptyExpr!7092 r!13927)))))

(declare-datatypes ((List!28423 0))(
  ( (Nil!28325) (Cons!28325 (h!33726 C!14342) (t!208400 List!28423)) )
))
(declare-fun s!9460 () List!28423)

(declare-fun matchR!3209 (Regex!7092 List!28423) Bool)

(declare-fun matchRSpec!941 (Regex!7092 List!28423) Bool)

(assert (=> b!2414490 (= (matchR!3209 r!13927 s!9460) (matchRSpec!941 r!13927 s!9460))))

(declare-datatypes ((Unit!41455 0))(
  ( (Unit!41456) )
))
(declare-fun lt!874001 () Unit!41455)

(declare-fun mainMatchTheorem!941 (Regex!7092 List!28423) Unit!41455)

(assert (=> b!2414490 (= lt!874001 (mainMatchTheorem!941 r!13927 s!9460))))

(declare-fun b!2414491 () Bool)

(declare-fun e!1536733 () Bool)

(declare-fun tp_is_empty!11597 () Bool)

(declare-fun tp!767906 () Bool)

(assert (=> b!2414491 (= e!1536733 (and tp_is_empty!11597 tp!767906))))

(declare-fun b!2414492 () Bool)

(declare-fun e!1536731 () Bool)

(assert (=> b!2414492 (= e!1536731 (not (= l!9164 Nil!28324)))))

(declare-fun b!2414493 () Bool)

(declare-fun e!1536735 () Bool)

(declare-fun tp!767903 () Bool)

(declare-fun tp!767902 () Bool)

(assert (=> b!2414493 (= e!1536735 (and tp!767903 tp!767902))))

(declare-fun b!2414494 () Bool)

(assert (=> b!2414494 (= e!1536735 tp_is_empty!11597)))

(declare-fun b!2414495 () Bool)

(declare-fun res!1025420 () Bool)

(assert (=> b!2414495 (=> res!1025420 e!1536734)))

(assert (=> b!2414495 (= res!1025420 (isEmpty!16331 l!9164))))

(declare-fun b!2414496 () Bool)

(declare-fun tp!767907 () Bool)

(declare-fun tp!767904 () Bool)

(assert (=> b!2414496 (= e!1536735 (and tp!767907 tp!767904))))

(declare-fun b!2414489 () Bool)

(declare-fun res!1025419 () Bool)

(assert (=> b!2414489 (=> res!1025419 e!1536731)))

(declare-fun lt!874000 () Regex!7092)

(declare-datatypes ((tuple2!27964 0))(
  ( (tuple2!27965 (_1!16523 List!28423) (_2!16523 List!28423)) )
))
(declare-datatypes ((Option!5593 0))(
  ( (None!5592) (Some!5592 (v!31000 tuple2!27964)) )
))
(declare-fun isDefined!4421 (Option!5593) Bool)

(declare-fun findConcatSeparation!701 (Regex!7092 Regex!7092 List!28423 List!28423 List!28423) Option!5593)

(assert (=> b!2414489 (= res!1025419 (not (isDefined!4421 (findConcatSeparation!701 lt!874000 EmptyExpr!7092 Nil!28325 s!9460 s!9460))))))

(declare-fun res!1025421 () Bool)

(assert (=> start!236570 (=> (not res!1025421) (not e!1536737))))

(declare-fun lambda!90912 () Int)

(declare-fun forall!5726 (List!28422 Int) Bool)

(assert (=> start!236570 (= res!1025421 (forall!5726 l!9164 lambda!90912))))

(assert (=> start!236570 e!1536737))

(assert (=> start!236570 e!1536732))

(assert (=> start!236570 e!1536735))

(assert (=> start!236570 e!1536733))

(declare-fun b!2414497 () Bool)

(assert (=> b!2414497 (= e!1536736 e!1536731)))

(declare-fun res!1025418 () Bool)

(assert (=> b!2414497 (=> res!1025418 e!1536731)))

(assert (=> b!2414497 (= res!1025418 (matchR!3209 lt!874000 s!9460))))

(declare-fun head!5400 (List!28422) Regex!7092)

(assert (=> b!2414497 (= lt!874000 (head!5400 l!9164))))

(declare-fun b!2414498 () Bool)

(declare-fun tp!767909 () Bool)

(assert (=> b!2414498 (= e!1536735 tp!767909)))

(assert (= (and start!236570 res!1025421) b!2414485))

(assert (= (and b!2414485 res!1025422) b!2414490))

(assert (= (and b!2414490 (not res!1025416)) b!2414495))

(assert (= (and b!2414495 (not res!1025420)) b!2414487))

(assert (= (and b!2414487 (not res!1025415)) b!2414486))

(assert (= (and b!2414486 (not res!1025417)) b!2414497))

(assert (= (and b!2414497 (not res!1025418)) b!2414489))

(assert (= (and b!2414489 (not res!1025419)) b!2414492))

(assert (= (and start!236570 (is-Cons!28324 l!9164)) b!2414488))

(assert (= (and start!236570 (is-ElementMatch!7092 r!13927)) b!2414494))

(assert (= (and start!236570 (is-Concat!11728 r!13927)) b!2414496))

(assert (= (and start!236570 (is-Star!7092 r!13927)) b!2414498))

(assert (= (and start!236570 (is-Union!7092 r!13927)) b!2414493))

(assert (= (and start!236570 (is-Cons!28325 s!9460)) b!2414491))

(declare-fun m!2803963 () Bool)

(assert (=> b!2414497 m!2803963))

(declare-fun m!2803965 () Bool)

(assert (=> b!2414497 m!2803965))

(declare-fun m!2803967 () Bool)

(assert (=> b!2414485 m!2803967))

(declare-fun m!2803969 () Bool)

(assert (=> b!2414487 m!2803969))

(declare-fun m!2803971 () Bool)

(assert (=> b!2414487 m!2803971))

(declare-fun m!2803973 () Bool)

(assert (=> b!2414486 m!2803973))

(declare-fun m!2803975 () Bool)

(assert (=> start!236570 m!2803975))

(declare-fun m!2803977 () Bool)

(assert (=> b!2414490 m!2803977))

(declare-fun m!2803979 () Bool)

(assert (=> b!2414490 m!2803979))

(declare-fun m!2803981 () Bool)

(assert (=> b!2414490 m!2803981))

(declare-fun m!2803983 () Bool)

(assert (=> b!2414489 m!2803983))

(assert (=> b!2414489 m!2803983))

(declare-fun m!2803985 () Bool)

(assert (=> b!2414489 m!2803985))

(declare-fun m!2803987 () Bool)

(assert (=> b!2414495 m!2803987))

(push 1)

(assert (not b!2414495))

(assert (not b!2414489))

(assert (not b!2414486))

(assert (not b!2414485))

(assert (not b!2414490))

(assert (not b!2414498))

(assert tp_is_empty!11597)

(assert (not b!2414488))

(assert (not b!2414493))

(assert (not b!2414497))

(assert (not b!2414491))

(assert (not start!236570))

(assert (not b!2414496))

(assert (not b!2414487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2414589 () Bool)

(declare-fun e!1536786 () Bool)

(declare-fun head!5402 (List!28423) C!14342)

(assert (=> b!2414589 (= e!1536786 (= (head!5402 s!9460) (c!384722 lt!874000)))))

(declare-fun b!2414590 () Bool)

(declare-fun e!1536787 () Bool)

(declare-fun lt!874015 () Bool)

(declare-fun call!147453 () Bool)

(assert (=> b!2414590 (= e!1536787 (= lt!874015 call!147453))))

(declare-fun b!2414591 () Bool)

(declare-fun e!1536788 () Bool)

(declare-fun nullable!2131 (Regex!7092) Bool)

(assert (=> b!2414591 (= e!1536788 (nullable!2131 lt!874000))))

(declare-fun bm!147448 () Bool)

(declare-fun isEmpty!16333 (List!28423) Bool)

(assert (=> bm!147448 (= call!147453 (isEmpty!16333 s!9460))))

(declare-fun b!2414592 () Bool)

(declare-fun derivativeStep!1788 (Regex!7092 C!14342) Regex!7092)

(declare-fun tail!3674 (List!28423) List!28423)

(assert (=> b!2414592 (= e!1536788 (matchR!3209 (derivativeStep!1788 lt!874000 (head!5402 s!9460)) (tail!3674 s!9460)))))

(declare-fun b!2414593 () Bool)

(declare-fun e!1536789 () Bool)

(assert (=> b!2414593 (= e!1536787 e!1536789)))

(declare-fun c!384739 () Bool)

(assert (=> b!2414593 (= c!384739 (is-EmptyLang!7092 lt!874000))))

(declare-fun b!2414595 () Bool)

(declare-fun e!1536790 () Bool)

(declare-fun e!1536785 () Bool)

(assert (=> b!2414595 (= e!1536790 e!1536785)))

(declare-fun res!1025470 () Bool)

(assert (=> b!2414595 (=> res!1025470 e!1536785)))

(assert (=> b!2414595 (= res!1025470 call!147453)))

(declare-fun b!2414596 () Bool)

(assert (=> b!2414596 (= e!1536789 (not lt!874015))))

(declare-fun b!2414597 () Bool)

(declare-fun res!1025472 () Bool)

(assert (=> b!2414597 (=> (not res!1025472) (not e!1536786))))

(assert (=> b!2414597 (= res!1025472 (isEmpty!16333 (tail!3674 s!9460)))))

(declare-fun b!2414598 () Bool)

(declare-fun res!1025468 () Bool)

(declare-fun e!1536791 () Bool)

(assert (=> b!2414598 (=> res!1025468 e!1536791)))

(assert (=> b!2414598 (= res!1025468 e!1536786)))

(declare-fun res!1025473 () Bool)

(assert (=> b!2414598 (=> (not res!1025473) (not e!1536786))))

(assert (=> b!2414598 (= res!1025473 lt!874015)))

(declare-fun b!2414599 () Bool)

(declare-fun res!1025474 () Bool)

(assert (=> b!2414599 (=> res!1025474 e!1536785)))

(assert (=> b!2414599 (= res!1025474 (not (isEmpty!16333 (tail!3674 s!9460))))))

(declare-fun b!2414600 () Bool)

(declare-fun res!1025469 () Bool)

(assert (=> b!2414600 (=> (not res!1025469) (not e!1536786))))

(assert (=> b!2414600 (= res!1025469 (not call!147453))))

(declare-fun d!701029 () Bool)

(assert (=> d!701029 e!1536787))

(declare-fun c!384740 () Bool)

(assert (=> d!701029 (= c!384740 (is-EmptyExpr!7092 lt!874000))))

(assert (=> d!701029 (= lt!874015 e!1536788)))

(declare-fun c!384738 () Bool)

(assert (=> d!701029 (= c!384738 (isEmpty!16333 s!9460))))

(declare-fun validRegex!2814 (Regex!7092) Bool)

(assert (=> d!701029 (validRegex!2814 lt!874000)))

(assert (=> d!701029 (= (matchR!3209 lt!874000 s!9460) lt!874015)))

(declare-fun b!2414594 () Bool)

(assert (=> b!2414594 (= e!1536785 (not (= (head!5402 s!9460) (c!384722 lt!874000))))))

(declare-fun b!2414601 () Bool)

(assert (=> b!2414601 (= e!1536791 e!1536790)))

(declare-fun res!1025467 () Bool)

(assert (=> b!2414601 (=> (not res!1025467) (not e!1536790))))

(assert (=> b!2414601 (= res!1025467 (not lt!874015))))

(declare-fun b!2414602 () Bool)

(declare-fun res!1025471 () Bool)

(assert (=> b!2414602 (=> res!1025471 e!1536791)))

(assert (=> b!2414602 (= res!1025471 (not (is-ElementMatch!7092 lt!874000)))))

(assert (=> b!2414602 (= e!1536789 e!1536791)))

(assert (= (and d!701029 c!384738) b!2414591))

(assert (= (and d!701029 (not c!384738)) b!2414592))

(assert (= (and d!701029 c!384740) b!2414590))

(assert (= (and d!701029 (not c!384740)) b!2414593))

(assert (= (and b!2414593 c!384739) b!2414596))

(assert (= (and b!2414593 (not c!384739)) b!2414602))

(assert (= (and b!2414602 (not res!1025471)) b!2414598))

(assert (= (and b!2414598 res!1025473) b!2414600))

(assert (= (and b!2414600 res!1025469) b!2414597))

(assert (= (and b!2414597 res!1025472) b!2414589))

(assert (= (and b!2414598 (not res!1025468)) b!2414601))

(assert (= (and b!2414601 res!1025467) b!2414595))

(assert (= (and b!2414595 (not res!1025470)) b!2414599))

(assert (= (and b!2414599 (not res!1025474)) b!2414594))

(assert (= (or b!2414590 b!2414595 b!2414600) bm!147448))

(declare-fun m!2804015 () Bool)

(assert (=> b!2414594 m!2804015))

(declare-fun m!2804017 () Bool)

(assert (=> bm!147448 m!2804017))

(declare-fun m!2804019 () Bool)

(assert (=> b!2414597 m!2804019))

(assert (=> b!2414597 m!2804019))

(declare-fun m!2804021 () Bool)

(assert (=> b!2414597 m!2804021))

(declare-fun m!2804023 () Bool)

(assert (=> b!2414591 m!2804023))

(assert (=> d!701029 m!2804017))

(declare-fun m!2804025 () Bool)

(assert (=> d!701029 m!2804025))

(assert (=> b!2414599 m!2804019))

(assert (=> b!2414599 m!2804019))

(assert (=> b!2414599 m!2804021))

(assert (=> b!2414592 m!2804015))

(assert (=> b!2414592 m!2804015))

(declare-fun m!2804027 () Bool)

(assert (=> b!2414592 m!2804027))

(assert (=> b!2414592 m!2804019))

(assert (=> b!2414592 m!2804027))

(assert (=> b!2414592 m!2804019))

(declare-fun m!2804029 () Bool)

(assert (=> b!2414592 m!2804029))

(assert (=> b!2414589 m!2804015))

(assert (=> b!2414497 d!701029))

(declare-fun d!701031 () Bool)

(assert (=> d!701031 (= (head!5400 l!9164) (h!33725 l!9164))))

(assert (=> b!2414497 d!701031))

(declare-fun bs!463528 () Bool)

(declare-fun d!701033 () Bool)

(assert (= bs!463528 (and d!701033 start!236570)))

(declare-fun lambda!90921 () Int)

(assert (=> bs!463528 (= lambda!90921 lambda!90912)))

(declare-fun b!2414633 () Bool)

(declare-fun e!1536813 () Bool)

(assert (=> b!2414633 (= e!1536813 (isEmpty!16331 (t!208399 lt!873999)))))

(declare-fun b!2414634 () Bool)

(declare-fun e!1536812 () Regex!7092)

(assert (=> b!2414634 (= e!1536812 (h!33725 lt!873999))))

(declare-fun b!2414635 () Bool)

(declare-fun e!1536815 () Regex!7092)

(assert (=> b!2414635 (= e!1536815 EmptyExpr!7092)))

(declare-fun b!2414637 () Bool)

(assert (=> b!2414637 (= e!1536812 e!1536815)))

(declare-fun c!384753 () Bool)

(assert (=> b!2414637 (= c!384753 (is-Cons!28324 lt!873999))))

(declare-fun b!2414638 () Bool)

(declare-fun e!1536811 () Bool)

(declare-fun e!1536814 () Bool)

(assert (=> b!2414638 (= e!1536811 e!1536814)))

(declare-fun c!384754 () Bool)

(assert (=> b!2414638 (= c!384754 (isEmpty!16331 lt!873999))))

(declare-fun b!2414639 () Bool)

(declare-fun e!1536810 () Bool)

(declare-fun lt!874019 () Regex!7092)

(assert (=> b!2414639 (= e!1536810 (= lt!874019 (head!5400 lt!873999)))))

(declare-fun b!2414640 () Bool)

(declare-fun isEmptyExpr!151 (Regex!7092) Bool)

(assert (=> b!2414640 (= e!1536814 (isEmptyExpr!151 lt!874019))))

(declare-fun b!2414641 () Bool)

(assert (=> b!2414641 (= e!1536814 e!1536810)))

(declare-fun c!384756 () Bool)

(assert (=> b!2414641 (= c!384756 (isEmpty!16331 (tail!3672 lt!873999)))))

(declare-fun b!2414642 () Bool)

(assert (=> b!2414642 (= e!1536815 (Concat!11728 (h!33725 lt!873999) (generalisedConcat!193 (t!208399 lt!873999))))))

(assert (=> d!701033 e!1536811))

(declare-fun res!1025481 () Bool)

(assert (=> d!701033 (=> (not res!1025481) (not e!1536811))))

(assert (=> d!701033 (= res!1025481 (validRegex!2814 lt!874019))))

(assert (=> d!701033 (= lt!874019 e!1536812)))

(declare-fun c!384755 () Bool)

(assert (=> d!701033 (= c!384755 e!1536813)))

(declare-fun res!1025482 () Bool)

(assert (=> d!701033 (=> (not res!1025482) (not e!1536813))))

(assert (=> d!701033 (= res!1025482 (is-Cons!28324 lt!873999))))

(assert (=> d!701033 (forall!5726 lt!873999 lambda!90921)))

(assert (=> d!701033 (= (generalisedConcat!193 lt!873999) lt!874019)))

(declare-fun b!2414636 () Bool)

(declare-fun isConcat!151 (Regex!7092) Bool)

(assert (=> b!2414636 (= e!1536810 (isConcat!151 lt!874019))))

(assert (= (and d!701033 res!1025482) b!2414633))

(assert (= (and d!701033 c!384755) b!2414634))

(assert (= (and d!701033 (not c!384755)) b!2414637))

(assert (= (and b!2414637 c!384753) b!2414642))

(assert (= (and b!2414637 (not c!384753)) b!2414635))

(assert (= (and d!701033 res!1025481) b!2414638))

(assert (= (and b!2414638 c!384754) b!2414640))

(assert (= (and b!2414638 (not c!384754)) b!2414641))

(assert (= (and b!2414641 c!384756) b!2414639))

(assert (= (and b!2414641 (not c!384756)) b!2414636))

(declare-fun m!2804045 () Bool)

(assert (=> b!2414636 m!2804045))

(assert (=> b!2414638 m!2803969))

(declare-fun m!2804047 () Bool)

(assert (=> b!2414641 m!2804047))

(assert (=> b!2414641 m!2804047))

(declare-fun m!2804049 () Bool)

(assert (=> b!2414641 m!2804049))

(declare-fun m!2804051 () Bool)

(assert (=> b!2414639 m!2804051))

(declare-fun m!2804053 () Bool)

(assert (=> b!2414640 m!2804053))

(declare-fun m!2804055 () Bool)

(assert (=> b!2414642 m!2804055))

(declare-fun m!2804057 () Bool)

(assert (=> d!701033 m!2804057))

(declare-fun m!2804059 () Bool)

(assert (=> d!701033 m!2804059))

(declare-fun m!2804061 () Bool)

(assert (=> b!2414633 m!2804061))

(assert (=> b!2414486 d!701033))

(declare-fun bs!463529 () Bool)

(declare-fun d!701039 () Bool)

(assert (= bs!463529 (and d!701039 start!236570)))

(declare-fun lambda!90922 () Int)

(assert (=> bs!463529 (= lambda!90922 lambda!90912)))

(declare-fun bs!463530 () Bool)

(assert (= bs!463530 (and d!701039 d!701033)))

(assert (=> bs!463530 (= lambda!90922 lambda!90921)))

(declare-fun b!2414643 () Bool)

(declare-fun e!1536819 () Bool)

(assert (=> b!2414643 (= e!1536819 (isEmpty!16331 (t!208399 l!9164)))))

(declare-fun b!2414644 () Bool)

(declare-fun e!1536818 () Regex!7092)

(assert (=> b!2414644 (= e!1536818 (h!33725 l!9164))))

(declare-fun b!2414645 () Bool)

(declare-fun e!1536821 () Regex!7092)

(assert (=> b!2414645 (= e!1536821 EmptyExpr!7092)))

(declare-fun b!2414647 () Bool)

(assert (=> b!2414647 (= e!1536818 e!1536821)))

(declare-fun c!384757 () Bool)

(assert (=> b!2414647 (= c!384757 (is-Cons!28324 l!9164))))

(declare-fun b!2414648 () Bool)

(declare-fun e!1536817 () Bool)

(declare-fun e!1536820 () Bool)

(assert (=> b!2414648 (= e!1536817 e!1536820)))

(declare-fun c!384758 () Bool)

(assert (=> b!2414648 (= c!384758 (isEmpty!16331 l!9164))))

(declare-fun b!2414649 () Bool)

(declare-fun e!1536816 () Bool)

(declare-fun lt!874020 () Regex!7092)

(assert (=> b!2414649 (= e!1536816 (= lt!874020 (head!5400 l!9164)))))

(declare-fun b!2414650 () Bool)

(assert (=> b!2414650 (= e!1536820 (isEmptyExpr!151 lt!874020))))

(declare-fun b!2414651 () Bool)

(assert (=> b!2414651 (= e!1536820 e!1536816)))

(declare-fun c!384760 () Bool)

(assert (=> b!2414651 (= c!384760 (isEmpty!16331 (tail!3672 l!9164)))))

(declare-fun b!2414652 () Bool)

(assert (=> b!2414652 (= e!1536821 (Concat!11728 (h!33725 l!9164) (generalisedConcat!193 (t!208399 l!9164))))))

(assert (=> d!701039 e!1536817))

(declare-fun res!1025483 () Bool)

(assert (=> d!701039 (=> (not res!1025483) (not e!1536817))))

(assert (=> d!701039 (= res!1025483 (validRegex!2814 lt!874020))))

(assert (=> d!701039 (= lt!874020 e!1536818)))

(declare-fun c!384759 () Bool)

(assert (=> d!701039 (= c!384759 e!1536819)))

(declare-fun res!1025484 () Bool)

(assert (=> d!701039 (=> (not res!1025484) (not e!1536819))))

(assert (=> d!701039 (= res!1025484 (is-Cons!28324 l!9164))))

(assert (=> d!701039 (forall!5726 l!9164 lambda!90922)))

(assert (=> d!701039 (= (generalisedConcat!193 l!9164) lt!874020)))

(declare-fun b!2414646 () Bool)

(assert (=> b!2414646 (= e!1536816 (isConcat!151 lt!874020))))

(assert (= (and d!701039 res!1025484) b!2414643))

(assert (= (and d!701039 c!384759) b!2414644))

(assert (= (and d!701039 (not c!384759)) b!2414647))

(assert (= (and b!2414647 c!384757) b!2414652))

(assert (= (and b!2414647 (not c!384757)) b!2414645))

(assert (= (and d!701039 res!1025483) b!2414648))

(assert (= (and b!2414648 c!384758) b!2414650))

(assert (= (and b!2414648 (not c!384758)) b!2414651))

(assert (= (and b!2414651 c!384760) b!2414649))

(assert (= (and b!2414651 (not c!384760)) b!2414646))

(declare-fun m!2804063 () Bool)

(assert (=> b!2414646 m!2804063))

(assert (=> b!2414648 m!2803987))

(assert (=> b!2414651 m!2803971))

(assert (=> b!2414651 m!2803971))

(declare-fun m!2804065 () Bool)

(assert (=> b!2414651 m!2804065))

(assert (=> b!2414649 m!2803965))

(declare-fun m!2804067 () Bool)

(assert (=> b!2414650 m!2804067))

(declare-fun m!2804069 () Bool)

(assert (=> b!2414652 m!2804069))

(declare-fun m!2804071 () Bool)

(assert (=> d!701039 m!2804071))

(declare-fun m!2804073 () Bool)

(assert (=> d!701039 m!2804073))

(declare-fun m!2804075 () Bool)

(assert (=> b!2414643 m!2804075))

(assert (=> b!2414485 d!701039))

(declare-fun d!701041 () Bool)

(declare-fun res!1025489 () Bool)

(declare-fun e!1536826 () Bool)

(assert (=> d!701041 (=> res!1025489 e!1536826)))

(assert (=> d!701041 (= res!1025489 (is-Nil!28324 l!9164))))

(assert (=> d!701041 (= (forall!5726 l!9164 lambda!90912) e!1536826)))

(declare-fun b!2414657 () Bool)

(declare-fun e!1536827 () Bool)

(assert (=> b!2414657 (= e!1536826 e!1536827)))

(declare-fun res!1025490 () Bool)

(assert (=> b!2414657 (=> (not res!1025490) (not e!1536827))))

(declare-fun dynLambda!12194 (Int Regex!7092) Bool)

(assert (=> b!2414657 (= res!1025490 (dynLambda!12194 lambda!90912 (h!33725 l!9164)))))

(declare-fun b!2414658 () Bool)

(assert (=> b!2414658 (= e!1536827 (forall!5726 (t!208399 l!9164) lambda!90912))))

(assert (= (and d!701041 (not res!1025489)) b!2414657))

(assert (= (and b!2414657 res!1025490) b!2414658))

(declare-fun b_lambda!74547 () Bool)

(assert (=> (not b_lambda!74547) (not b!2414657)))

(declare-fun m!2804077 () Bool)

(assert (=> b!2414657 m!2804077))

(declare-fun m!2804079 () Bool)

(assert (=> b!2414658 m!2804079))

(assert (=> start!236570 d!701041))

(declare-fun d!701043 () Bool)

(assert (=> d!701043 (= (isEmpty!16331 l!9164) (is-Nil!28324 l!9164))))

(assert (=> b!2414495 d!701043))

(declare-fun b!2414659 () Bool)

(declare-fun e!1536829 () Bool)

(assert (=> b!2414659 (= e!1536829 (= (head!5402 s!9460) (c!384722 r!13927)))))

(declare-fun b!2414660 () Bool)

(declare-fun e!1536830 () Bool)

(declare-fun lt!874021 () Bool)

(declare-fun call!147454 () Bool)

(assert (=> b!2414660 (= e!1536830 (= lt!874021 call!147454))))

(declare-fun b!2414661 () Bool)

(declare-fun e!1536831 () Bool)

(assert (=> b!2414661 (= e!1536831 (nullable!2131 r!13927))))

(declare-fun bm!147449 () Bool)

(assert (=> bm!147449 (= call!147454 (isEmpty!16333 s!9460))))

(declare-fun b!2414662 () Bool)

(assert (=> b!2414662 (= e!1536831 (matchR!3209 (derivativeStep!1788 r!13927 (head!5402 s!9460)) (tail!3674 s!9460)))))

(declare-fun b!2414663 () Bool)

(declare-fun e!1536832 () Bool)

(assert (=> b!2414663 (= e!1536830 e!1536832)))

(declare-fun c!384762 () Bool)

(assert (=> b!2414663 (= c!384762 (is-EmptyLang!7092 r!13927))))

(declare-fun b!2414665 () Bool)

(declare-fun e!1536833 () Bool)

(declare-fun e!1536828 () Bool)

(assert (=> b!2414665 (= e!1536833 e!1536828)))

(declare-fun res!1025494 () Bool)

(assert (=> b!2414665 (=> res!1025494 e!1536828)))

(assert (=> b!2414665 (= res!1025494 call!147454)))

(declare-fun b!2414666 () Bool)

(assert (=> b!2414666 (= e!1536832 (not lt!874021))))

(declare-fun b!2414667 () Bool)

(declare-fun res!1025496 () Bool)

(assert (=> b!2414667 (=> (not res!1025496) (not e!1536829))))

(assert (=> b!2414667 (= res!1025496 (isEmpty!16333 (tail!3674 s!9460)))))

(declare-fun b!2414668 () Bool)

(declare-fun res!1025492 () Bool)

(declare-fun e!1536834 () Bool)

(assert (=> b!2414668 (=> res!1025492 e!1536834)))

(assert (=> b!2414668 (= res!1025492 e!1536829)))

(declare-fun res!1025497 () Bool)

(assert (=> b!2414668 (=> (not res!1025497) (not e!1536829))))

(assert (=> b!2414668 (= res!1025497 lt!874021)))

(declare-fun b!2414669 () Bool)

(declare-fun res!1025498 () Bool)

(assert (=> b!2414669 (=> res!1025498 e!1536828)))

(assert (=> b!2414669 (= res!1025498 (not (isEmpty!16333 (tail!3674 s!9460))))))

(declare-fun b!2414670 () Bool)

(declare-fun res!1025493 () Bool)

(assert (=> b!2414670 (=> (not res!1025493) (not e!1536829))))

(assert (=> b!2414670 (= res!1025493 (not call!147454))))

(declare-fun d!701045 () Bool)

(assert (=> d!701045 e!1536830))

(declare-fun c!384763 () Bool)

(assert (=> d!701045 (= c!384763 (is-EmptyExpr!7092 r!13927))))

(assert (=> d!701045 (= lt!874021 e!1536831)))

(declare-fun c!384761 () Bool)

(assert (=> d!701045 (= c!384761 (isEmpty!16333 s!9460))))

(assert (=> d!701045 (validRegex!2814 r!13927)))

(assert (=> d!701045 (= (matchR!3209 r!13927 s!9460) lt!874021)))

(declare-fun b!2414664 () Bool)

(assert (=> b!2414664 (= e!1536828 (not (= (head!5402 s!9460) (c!384722 r!13927))))))

(declare-fun b!2414671 () Bool)

(assert (=> b!2414671 (= e!1536834 e!1536833)))

(declare-fun res!1025491 () Bool)

(assert (=> b!2414671 (=> (not res!1025491) (not e!1536833))))

(assert (=> b!2414671 (= res!1025491 (not lt!874021))))

(declare-fun b!2414672 () Bool)

(declare-fun res!1025495 () Bool)

(assert (=> b!2414672 (=> res!1025495 e!1536834)))

(assert (=> b!2414672 (= res!1025495 (not (is-ElementMatch!7092 r!13927)))))

(assert (=> b!2414672 (= e!1536832 e!1536834)))

(assert (= (and d!701045 c!384761) b!2414661))

(assert (= (and d!701045 (not c!384761)) b!2414662))

(assert (= (and d!701045 c!384763) b!2414660))

(assert (= (and d!701045 (not c!384763)) b!2414663))

(assert (= (and b!2414663 c!384762) b!2414666))

(assert (= (and b!2414663 (not c!384762)) b!2414672))

(assert (= (and b!2414672 (not res!1025495)) b!2414668))

(assert (= (and b!2414668 res!1025497) b!2414670))

(assert (= (and b!2414670 res!1025493) b!2414667))

(assert (= (and b!2414667 res!1025496) b!2414659))

(assert (= (and b!2414668 (not res!1025492)) b!2414671))

(assert (= (and b!2414671 res!1025491) b!2414665))

(assert (= (and b!2414665 (not res!1025494)) b!2414669))

(assert (= (and b!2414669 (not res!1025498)) b!2414664))

(assert (= (or b!2414660 b!2414665 b!2414670) bm!147449))

(assert (=> b!2414664 m!2804015))

(assert (=> bm!147449 m!2804017))

(assert (=> b!2414667 m!2804019))

(assert (=> b!2414667 m!2804019))

(assert (=> b!2414667 m!2804021))

(declare-fun m!2804081 () Bool)

(assert (=> b!2414661 m!2804081))

(assert (=> d!701045 m!2804017))

(declare-fun m!2804083 () Bool)

(assert (=> d!701045 m!2804083))

(assert (=> b!2414669 m!2804019))

(assert (=> b!2414669 m!2804019))

(assert (=> b!2414669 m!2804021))

(assert (=> b!2414662 m!2804015))

(assert (=> b!2414662 m!2804015))

(declare-fun m!2804085 () Bool)

(assert (=> b!2414662 m!2804085))

(assert (=> b!2414662 m!2804019))

(assert (=> b!2414662 m!2804085))

(assert (=> b!2414662 m!2804019))

(declare-fun m!2804087 () Bool)

(assert (=> b!2414662 m!2804087))

(assert (=> b!2414659 m!2804015))

(assert (=> b!2414490 d!701045))

(declare-fun b!2414737 () Bool)

(assert (=> b!2414737 true))

(assert (=> b!2414737 true))

(declare-fun bs!463531 () Bool)

(declare-fun b!2414733 () Bool)

(assert (= bs!463531 (and b!2414733 b!2414737)))

(declare-fun lambda!90928 () Int)

(declare-fun lambda!90927 () Int)

(assert (=> bs!463531 (not (= lambda!90928 lambda!90927))))

(assert (=> b!2414733 true))

(assert (=> b!2414733 true))

(declare-fun e!1536872 () Bool)

(declare-fun call!147461 () Bool)

(assert (=> b!2414733 (= e!1536872 call!147461)))

(declare-fun b!2414734 () Bool)

(declare-fun e!1536873 () Bool)

(assert (=> b!2414734 (= e!1536873 (matchRSpec!941 (regTwo!14697 r!13927) s!9460))))

(declare-fun b!2414735 () Bool)

(declare-fun e!1536870 () Bool)

(assert (=> b!2414735 (= e!1536870 e!1536873)))

(declare-fun res!1025533 () Bool)

(assert (=> b!2414735 (= res!1025533 (matchRSpec!941 (regOne!14697 r!13927) s!9460))))

(assert (=> b!2414735 (=> res!1025533 e!1536873)))

(declare-fun b!2414736 () Bool)

(declare-fun c!384780 () Bool)

(assert (=> b!2414736 (= c!384780 (is-Union!7092 r!13927))))

(declare-fun e!1536871 () Bool)

(assert (=> b!2414736 (= e!1536871 e!1536870)))

(declare-fun e!1536868 () Bool)

(assert (=> b!2414737 (= e!1536868 call!147461)))

(declare-fun b!2414738 () Bool)

(assert (=> b!2414738 (= e!1536871 (= s!9460 (Cons!28325 (c!384722 r!13927) Nil!28325)))))

(declare-fun b!2414739 () Bool)

(declare-fun e!1536867 () Bool)

(declare-fun e!1536869 () Bool)

(assert (=> b!2414739 (= e!1536867 e!1536869)))

(declare-fun res!1025532 () Bool)

(assert (=> b!2414739 (= res!1025532 (not (is-EmptyLang!7092 r!13927)))))

(assert (=> b!2414739 (=> (not res!1025532) (not e!1536869))))

(declare-fun b!2414740 () Bool)

(declare-fun res!1025531 () Bool)

(assert (=> b!2414740 (=> res!1025531 e!1536868)))

(declare-fun call!147462 () Bool)

(assert (=> b!2414740 (= res!1025531 call!147462)))

(assert (=> b!2414740 (= e!1536872 e!1536868)))

(declare-fun c!384778 () Bool)

(declare-fun bm!147456 () Bool)

(declare-fun Exists!1138 (Int) Bool)

(assert (=> bm!147456 (= call!147461 (Exists!1138 (ite c!384778 lambda!90927 lambda!90928)))))

(declare-fun d!701047 () Bool)

(declare-fun c!384779 () Bool)

(assert (=> d!701047 (= c!384779 (is-EmptyExpr!7092 r!13927))))

(assert (=> d!701047 (= (matchRSpec!941 r!13927 s!9460) e!1536867)))

(declare-fun bm!147457 () Bool)

(assert (=> bm!147457 (= call!147462 (isEmpty!16333 s!9460))))

(declare-fun b!2414741 () Bool)

(declare-fun c!384781 () Bool)

(assert (=> b!2414741 (= c!384781 (is-ElementMatch!7092 r!13927))))

(assert (=> b!2414741 (= e!1536869 e!1536871)))

(declare-fun b!2414742 () Bool)

(assert (=> b!2414742 (= e!1536870 e!1536872)))

(assert (=> b!2414742 (= c!384778 (is-Star!7092 r!13927))))

(declare-fun b!2414743 () Bool)

(assert (=> b!2414743 (= e!1536867 call!147462)))

(assert (= (and d!701047 c!384779) b!2414743))

(assert (= (and d!701047 (not c!384779)) b!2414739))

(assert (= (and b!2414739 res!1025532) b!2414741))

(assert (= (and b!2414741 c!384781) b!2414738))

(assert (= (and b!2414741 (not c!384781)) b!2414736))

(assert (= (and b!2414736 c!384780) b!2414735))

(assert (= (and b!2414736 (not c!384780)) b!2414742))

(assert (= (and b!2414735 (not res!1025533)) b!2414734))

(assert (= (and b!2414742 c!384778) b!2414740))

(assert (= (and b!2414742 (not c!384778)) b!2414733))

(assert (= (and b!2414740 (not res!1025531)) b!2414737))

(assert (= (or b!2414737 b!2414733) bm!147456))

(assert (= (or b!2414743 b!2414740) bm!147457))

(declare-fun m!2804089 () Bool)

(assert (=> b!2414734 m!2804089))

(declare-fun m!2804091 () Bool)

(assert (=> b!2414735 m!2804091))

(declare-fun m!2804093 () Bool)

(assert (=> bm!147456 m!2804093))

(assert (=> bm!147457 m!2804017))

(assert (=> b!2414490 d!701047))

(declare-fun d!701049 () Bool)

(assert (=> d!701049 (= (matchR!3209 r!13927 s!9460) (matchRSpec!941 r!13927 s!9460))))

(declare-fun lt!874027 () Unit!41455)

(declare-fun choose!14279 (Regex!7092 List!28423) Unit!41455)

(assert (=> d!701049 (= lt!874027 (choose!14279 r!13927 s!9460))))

(assert (=> d!701049 (validRegex!2814 r!13927)))

(assert (=> d!701049 (= (mainMatchTheorem!941 r!13927 s!9460) lt!874027)))

(declare-fun bs!463532 () Bool)

(assert (= bs!463532 d!701049))

(assert (=> bs!463532 m!2803977))

(assert (=> bs!463532 m!2803979))

(declare-fun m!2804111 () Bool)

(assert (=> bs!463532 m!2804111))

(assert (=> bs!463532 m!2804083))

(assert (=> b!2414490 d!701049))

(declare-fun d!701055 () Bool)

(declare-fun isEmpty!16334 (Option!5593) Bool)

(assert (=> d!701055 (= (isDefined!4421 (findConcatSeparation!701 lt!874000 EmptyExpr!7092 Nil!28325 s!9460 s!9460)) (not (isEmpty!16334 (findConcatSeparation!701 lt!874000 EmptyExpr!7092 Nil!28325 s!9460 s!9460))))))

(declare-fun bs!463533 () Bool)

(assert (= bs!463533 d!701055))

(assert (=> bs!463533 m!2803983))

(declare-fun m!2804113 () Bool)

(assert (=> bs!463533 m!2804113))

(assert (=> b!2414489 d!701055))

(declare-fun b!2414808 () Bool)

(declare-fun e!1536909 () Bool)

(declare-fun lt!874035 () Option!5593)

(declare-fun ++!7015 (List!28423 List!28423) List!28423)

(declare-fun get!8693 (Option!5593) tuple2!27964)

(assert (=> b!2414808 (= e!1536909 (= (++!7015 (_1!16523 (get!8693 lt!874035)) (_2!16523 (get!8693 lt!874035))) s!9460))))

(declare-fun b!2414809 () Bool)

(declare-fun lt!874037 () Unit!41455)

(declare-fun lt!874036 () Unit!41455)

(assert (=> b!2414809 (= lt!874037 lt!874036)))

(assert (=> b!2414809 (= (++!7015 (++!7015 Nil!28325 (Cons!28325 (h!33726 s!9460) Nil!28325)) (t!208400 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!645 (List!28423 C!14342 List!28423 List!28423) Unit!41455)

(assert (=> b!2414809 (= lt!874036 (lemmaMoveElementToOtherListKeepsConcatEq!645 Nil!28325 (h!33726 s!9460) (t!208400 s!9460) s!9460))))

(declare-fun e!1536911 () Option!5593)

(assert (=> b!2414809 (= e!1536911 (findConcatSeparation!701 lt!874000 EmptyExpr!7092 (++!7015 Nil!28325 (Cons!28325 (h!33726 s!9460) Nil!28325)) (t!208400 s!9460) s!9460))))

(declare-fun b!2414810 () Bool)

(declare-fun e!1536912 () Bool)

(assert (=> b!2414810 (= e!1536912 (matchR!3209 EmptyExpr!7092 s!9460))))

(declare-fun b!2414811 () Bool)

(assert (=> b!2414811 (= e!1536911 None!5592)))

(declare-fun b!2414812 () Bool)

(declare-fun e!1536910 () Bool)

(assert (=> b!2414812 (= e!1536910 (not (isDefined!4421 lt!874035)))))

(declare-fun b!2414815 () Bool)

(declare-fun res!1025565 () Bool)

(assert (=> b!2414815 (=> (not res!1025565) (not e!1536909))))

(assert (=> b!2414815 (= res!1025565 (matchR!3209 lt!874000 (_1!16523 (get!8693 lt!874035))))))

(declare-fun d!701057 () Bool)

(assert (=> d!701057 e!1536910))

(declare-fun res!1025562 () Bool)

(assert (=> d!701057 (=> res!1025562 e!1536910)))

(assert (=> d!701057 (= res!1025562 e!1536909)))

(declare-fun res!1025566 () Bool)

(assert (=> d!701057 (=> (not res!1025566) (not e!1536909))))

(assert (=> d!701057 (= res!1025566 (isDefined!4421 lt!874035))))

(declare-fun e!1536906 () Option!5593)

(assert (=> d!701057 (= lt!874035 e!1536906)))

(declare-fun c!384799 () Bool)

(assert (=> d!701057 (= c!384799 e!1536912)))

(declare-fun res!1025568 () Bool)

(assert (=> d!701057 (=> (not res!1025568) (not e!1536912))))

(assert (=> d!701057 (= res!1025568 (matchR!3209 lt!874000 Nil!28325))))

(assert (=> d!701057 (validRegex!2814 lt!874000)))

(assert (=> d!701057 (= (findConcatSeparation!701 lt!874000 EmptyExpr!7092 Nil!28325 s!9460 s!9460) lt!874035)))

(declare-fun b!2414816 () Bool)

(assert (=> b!2414816 (= e!1536906 e!1536911)))

(declare-fun c!384798 () Bool)

(assert (=> b!2414816 (= c!384798 (is-Nil!28325 s!9460))))

(declare-fun b!2414817 () Bool)

(assert (=> b!2414817 (= e!1536906 (Some!5592 (tuple2!27965 Nil!28325 s!9460)))))

(declare-fun b!2414818 () Bool)

(declare-fun res!1025567 () Bool)

(assert (=> b!2414818 (=> (not res!1025567) (not e!1536909))))

(assert (=> b!2414818 (= res!1025567 (matchR!3209 EmptyExpr!7092 (_2!16523 (get!8693 lt!874035))))))

(assert (= (and d!701057 res!1025568) b!2414810))

(assert (= (and d!701057 c!384799) b!2414817))

(assert (= (and d!701057 (not c!384799)) b!2414816))

(assert (= (and b!2414816 c!384798) b!2414811))

(assert (= (and b!2414816 (not c!384798)) b!2414809))

(assert (= (and d!701057 res!1025566) b!2414815))

(assert (= (and b!2414815 res!1025565) b!2414818))

(assert (= (and b!2414818 res!1025567) b!2414808))

(assert (= (and d!701057 (not res!1025562)) b!2414812))

(declare-fun m!2804123 () Bool)

(assert (=> b!2414809 m!2804123))

(assert (=> b!2414809 m!2804123))

(declare-fun m!2804125 () Bool)

(assert (=> b!2414809 m!2804125))

(declare-fun m!2804127 () Bool)

(assert (=> b!2414809 m!2804127))

(assert (=> b!2414809 m!2804123))

(declare-fun m!2804129 () Bool)

(assert (=> b!2414809 m!2804129))

(declare-fun m!2804131 () Bool)

(assert (=> d!701057 m!2804131))

(declare-fun m!2804133 () Bool)

(assert (=> d!701057 m!2804133))

(assert (=> d!701057 m!2804025))

(declare-fun m!2804135 () Bool)

(assert (=> b!2414818 m!2804135))

(declare-fun m!2804137 () Bool)

(assert (=> b!2414818 m!2804137))

(assert (=> b!2414812 m!2804131))

(assert (=> b!2414815 m!2804135))

(declare-fun m!2804139 () Bool)

(assert (=> b!2414815 m!2804139))

(declare-fun m!2804141 () Bool)

(assert (=> b!2414810 m!2804141))

(assert (=> b!2414808 m!2804135))

(declare-fun m!2804143 () Bool)

(assert (=> b!2414808 m!2804143))

(assert (=> b!2414489 d!701057))

(declare-fun d!701061 () Bool)

(assert (=> d!701061 (= (isEmpty!16331 lt!873999) (is-Nil!28324 lt!873999))))

(assert (=> b!2414487 d!701061))

(declare-fun d!701063 () Bool)

(assert (=> d!701063 (= (tail!3672 l!9164) (t!208399 l!9164))))

(assert (=> b!2414487 d!701063))

(declare-fun b!2414829 () Bool)

(declare-fun e!1536919 () Bool)

(declare-fun tp!767936 () Bool)

(assert (=> b!2414829 (= e!1536919 (and tp_is_empty!11597 tp!767936))))

(assert (=> b!2414491 (= tp!767906 e!1536919)))

(assert (= (and b!2414491 (is-Cons!28325 (t!208400 s!9460))) b!2414829))

(declare-fun b!2414849 () Bool)

(declare-fun e!1536924 () Bool)

(declare-fun tp!767949 () Bool)

(declare-fun tp!767951 () Bool)

(assert (=> b!2414849 (= e!1536924 (and tp!767949 tp!767951))))

(declare-fun b!2414847 () Bool)

(declare-fun tp!767948 () Bool)

(declare-fun tp!767947 () Bool)

(assert (=> b!2414847 (= e!1536924 (and tp!767948 tp!767947))))

(declare-fun b!2414848 () Bool)

(declare-fun tp!767950 () Bool)

(assert (=> b!2414848 (= e!1536924 tp!767950)))

(assert (=> b!2414496 (= tp!767907 e!1536924)))

(declare-fun b!2414846 () Bool)

(assert (=> b!2414846 (= e!1536924 tp_is_empty!11597)))

(assert (= (and b!2414496 (is-ElementMatch!7092 (regOne!14696 r!13927))) b!2414846))

(assert (= (and b!2414496 (is-Concat!11728 (regOne!14696 r!13927))) b!2414847))

(assert (= (and b!2414496 (is-Star!7092 (regOne!14696 r!13927))) b!2414848))

(assert (= (and b!2414496 (is-Union!7092 (regOne!14696 r!13927))) b!2414849))

(declare-fun b!2414853 () Bool)

(declare-fun e!1536925 () Bool)

(declare-fun tp!767954 () Bool)

(declare-fun tp!767956 () Bool)

(assert (=> b!2414853 (= e!1536925 (and tp!767954 tp!767956))))

(declare-fun b!2414851 () Bool)

(declare-fun tp!767953 () Bool)

(declare-fun tp!767952 () Bool)

(assert (=> b!2414851 (= e!1536925 (and tp!767953 tp!767952))))

(declare-fun b!2414852 () Bool)

(declare-fun tp!767955 () Bool)

(assert (=> b!2414852 (= e!1536925 tp!767955)))

(assert (=> b!2414496 (= tp!767904 e!1536925)))

(declare-fun b!2414850 () Bool)

(assert (=> b!2414850 (= e!1536925 tp_is_empty!11597)))

(assert (= (and b!2414496 (is-ElementMatch!7092 (regTwo!14696 r!13927))) b!2414850))

(assert (= (and b!2414496 (is-Concat!11728 (regTwo!14696 r!13927))) b!2414851))

(assert (= (and b!2414496 (is-Star!7092 (regTwo!14696 r!13927))) b!2414852))

(assert (= (and b!2414496 (is-Union!7092 (regTwo!14696 r!13927))) b!2414853))

(declare-fun b!2414857 () Bool)

(declare-fun e!1536926 () Bool)

(declare-fun tp!767959 () Bool)

(declare-fun tp!767961 () Bool)

(assert (=> b!2414857 (= e!1536926 (and tp!767959 tp!767961))))

(declare-fun b!2414855 () Bool)

(declare-fun tp!767958 () Bool)

(declare-fun tp!767957 () Bool)

(assert (=> b!2414855 (= e!1536926 (and tp!767958 tp!767957))))

(declare-fun b!2414856 () Bool)

(declare-fun tp!767960 () Bool)

(assert (=> b!2414856 (= e!1536926 tp!767960)))

(assert (=> b!2414493 (= tp!767903 e!1536926)))

(declare-fun b!2414854 () Bool)

(assert (=> b!2414854 (= e!1536926 tp_is_empty!11597)))

(assert (= (and b!2414493 (is-ElementMatch!7092 (regOne!14697 r!13927))) b!2414854))

(assert (= (and b!2414493 (is-Concat!11728 (regOne!14697 r!13927))) b!2414855))

(assert (= (and b!2414493 (is-Star!7092 (regOne!14697 r!13927))) b!2414856))

(assert (= (and b!2414493 (is-Union!7092 (regOne!14697 r!13927))) b!2414857))

(declare-fun b!2414861 () Bool)

(declare-fun e!1536927 () Bool)

(declare-fun tp!767964 () Bool)

(declare-fun tp!767966 () Bool)

(assert (=> b!2414861 (= e!1536927 (and tp!767964 tp!767966))))

(declare-fun b!2414859 () Bool)

(declare-fun tp!767963 () Bool)

(declare-fun tp!767962 () Bool)

(assert (=> b!2414859 (= e!1536927 (and tp!767963 tp!767962))))

(declare-fun b!2414860 () Bool)

(declare-fun tp!767965 () Bool)

(assert (=> b!2414860 (= e!1536927 tp!767965)))

(assert (=> b!2414493 (= tp!767902 e!1536927)))

(declare-fun b!2414858 () Bool)

(assert (=> b!2414858 (= e!1536927 tp_is_empty!11597)))

(assert (= (and b!2414493 (is-ElementMatch!7092 (regTwo!14697 r!13927))) b!2414858))

(assert (= (and b!2414493 (is-Concat!11728 (regTwo!14697 r!13927))) b!2414859))

(assert (= (and b!2414493 (is-Star!7092 (regTwo!14697 r!13927))) b!2414860))

(assert (= (and b!2414493 (is-Union!7092 (regTwo!14697 r!13927))) b!2414861))

(declare-fun b!2414865 () Bool)

(declare-fun e!1536928 () Bool)

(declare-fun tp!767969 () Bool)

(declare-fun tp!767971 () Bool)

(assert (=> b!2414865 (= e!1536928 (and tp!767969 tp!767971))))

(declare-fun b!2414863 () Bool)

(declare-fun tp!767968 () Bool)

(declare-fun tp!767967 () Bool)

(assert (=> b!2414863 (= e!1536928 (and tp!767968 tp!767967))))

(declare-fun b!2414864 () Bool)

(declare-fun tp!767970 () Bool)

(assert (=> b!2414864 (= e!1536928 tp!767970)))

(assert (=> b!2414488 (= tp!767908 e!1536928)))

(declare-fun b!2414862 () Bool)

(assert (=> b!2414862 (= e!1536928 tp_is_empty!11597)))

(assert (= (and b!2414488 (is-ElementMatch!7092 (h!33725 l!9164))) b!2414862))

(assert (= (and b!2414488 (is-Concat!11728 (h!33725 l!9164))) b!2414863))

(assert (= (and b!2414488 (is-Star!7092 (h!33725 l!9164))) b!2414864))

(assert (= (and b!2414488 (is-Union!7092 (h!33725 l!9164))) b!2414865))

(declare-fun b!2414870 () Bool)

(declare-fun e!1536931 () Bool)

(declare-fun tp!767976 () Bool)

(declare-fun tp!767977 () Bool)

(assert (=> b!2414870 (= e!1536931 (and tp!767976 tp!767977))))

(assert (=> b!2414488 (= tp!767905 e!1536931)))

(assert (= (and b!2414488 (is-Cons!28324 (t!208399 l!9164))) b!2414870))

(declare-fun b!2414874 () Bool)

(declare-fun e!1536932 () Bool)

(declare-fun tp!767980 () Bool)

(declare-fun tp!767982 () Bool)

(assert (=> b!2414874 (= e!1536932 (and tp!767980 tp!767982))))

(declare-fun b!2414872 () Bool)

(declare-fun tp!767979 () Bool)

(declare-fun tp!767978 () Bool)

(assert (=> b!2414872 (= e!1536932 (and tp!767979 tp!767978))))

(declare-fun b!2414873 () Bool)

(declare-fun tp!767981 () Bool)

(assert (=> b!2414873 (= e!1536932 tp!767981)))

(assert (=> b!2414498 (= tp!767909 e!1536932)))

(declare-fun b!2414871 () Bool)

(assert (=> b!2414871 (= e!1536932 tp_is_empty!11597)))

(assert (= (and b!2414498 (is-ElementMatch!7092 (reg!7421 r!13927))) b!2414871))

(assert (= (and b!2414498 (is-Concat!11728 (reg!7421 r!13927))) b!2414872))

(assert (= (and b!2414498 (is-Star!7092 (reg!7421 r!13927))) b!2414873))

(assert (= (and b!2414498 (is-Union!7092 (reg!7421 r!13927))) b!2414874))

(declare-fun b_lambda!74549 () Bool)

(assert (= b_lambda!74547 (or start!236570 b_lambda!74549)))

(declare-fun bs!463534 () Bool)

(declare-fun d!701065 () Bool)

(assert (= bs!463534 (and d!701065 start!236570)))

(assert (=> bs!463534 (= (dynLambda!12194 lambda!90912 (h!33725 l!9164)) (validRegex!2814 (h!33725 l!9164)))))

(declare-fun m!2804145 () Bool)

(assert (=> bs!463534 m!2804145))

(assert (=> b!2414657 d!701065))

(push 1)

(assert (not b!2414815))

(assert (not b!2414860))

(assert (not d!701055))

(assert (not d!701057))

(assert (not b!2414633))

(assert (not b!2414667))

(assert (not b!2414872))

(assert (not d!701049))

(assert (not b!2414852))

(assert (not bs!463534))

(assert (not b!2414649))

(assert (not b!2414638))

(assert (not b!2414642))

(assert (not b!2414735))

(assert (not b!2414855))

(assert (not b!2414818))

(assert (not b!2414851))

(assert (not b!2414636))

(assert (not b!2414863))

(assert (not d!701029))

(assert (not bm!147448))

(assert (not b!2414873))

(assert (not b!2414659))

(assert (not b!2414591))

(assert (not b!2414651))

(assert (not b!2414848))

(assert (not b!2414599))

(assert (not bm!147456))

(assert (not b!2414639))

(assert (not b!2414856))

(assert (not b!2414847))

(assert (not b!2414592))

(assert (not b!2414661))

(assert tp_is_empty!11597)

(assert (not b!2414641))

(assert (not b!2414734))

(assert (not b_lambda!74549))

(assert (not b!2414594))

(assert (not b!2414829))

(assert (not b!2414646))

(assert (not b!2414874))

(assert (not b!2414589))

(assert (not b!2414857))

(assert (not b!2414648))

(assert (not bm!147457))

(assert (not b!2414810))

(assert (not b!2414865))

(assert (not b!2414652))

(assert (not b!2414643))

(assert (not b!2414597))

(assert (not b!2414658))

(assert (not b!2414662))

(assert (not b!2414849))

(assert (not b!2414669))

(assert (not b!2414861))

(assert (not b!2414853))

(assert (not b!2414808))

(assert (not b!2414870))

(assert (not d!701045))

(assert (not b!2414812))

(assert (not b!2414864))

(assert (not bm!147449))

(assert (not b!2414809))

(assert (not b!2414664))

(assert (not b!2414859))

(assert (not b!2414650))

(assert (not d!701033))

(assert (not b!2414640))

(assert (not d!701039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

