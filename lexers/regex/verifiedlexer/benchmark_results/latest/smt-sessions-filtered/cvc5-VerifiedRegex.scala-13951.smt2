; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739390 () Bool)

(assert start!739390)

(declare-fun b!7760810 () Bool)

(declare-fun e!4599471 () Bool)

(declare-fun tp!2279046 () Bool)

(declare-fun tp!2279042 () Bool)

(assert (=> b!7760810 (= e!4599471 (and tp!2279046 tp!2279042))))

(declare-fun b!7760811 () Bool)

(declare-fun e!4599473 () Bool)

(declare-fun tp!2279049 () Bool)

(declare-fun tp!2279044 () Bool)

(assert (=> b!7760811 (= e!4599473 (and tp!2279049 tp!2279044))))

(declare-fun res!3093972 () Bool)

(declare-fun e!4599474 () Bool)

(assert (=> start!739390 (=> (not res!3093972) (not e!4599474))))

(declare-datatypes ((C!41718 0))(
  ( (C!41719 (val!31299 Int)) )
))
(declare-datatypes ((Regex!20696 0))(
  ( (ElementMatch!20696 (c!1430719 C!41718)) (Concat!29541 (regOne!41904 Regex!20696) (regTwo!41904 Regex!20696)) (EmptyExpr!20696) (Star!20696 (reg!21025 Regex!20696)) (EmptyLang!20696) (Union!20696 (regOne!41905 Regex!20696) (regTwo!41905 Regex!20696)) )
))
(declare-fun r1!3330 () Regex!20696)

(declare-fun validRegex!11112 (Regex!20696) Bool)

(assert (=> start!739390 (= res!3093972 (validRegex!11112 r1!3330))))

(assert (=> start!739390 e!4599474))

(assert (=> start!739390 e!4599473))

(assert (=> start!739390 e!4599471))

(declare-fun e!4599470 () Bool)

(assert (=> start!739390 e!4599470))

(declare-fun b!7760812 () Bool)

(declare-fun res!3093973 () Bool)

(assert (=> b!7760812 (=> (not res!3093973) (not e!4599474))))

(declare-fun r2!3230 () Regex!20696)

(assert (=> b!7760812 (= res!3093973 (validRegex!11112 r2!3230))))

(declare-fun b!7760813 () Bool)

(declare-fun tp_is_empty!51747 () Bool)

(assert (=> b!7760813 (= e!4599471 tp_is_empty!51747)))

(declare-fun b!7760814 () Bool)

(declare-fun tp!2279048 () Bool)

(assert (=> b!7760814 (= e!4599471 tp!2279048)))

(declare-fun b!7760815 () Bool)

(declare-fun tp!2279045 () Bool)

(declare-fun tp!2279052 () Bool)

(assert (=> b!7760815 (= e!4599471 (and tp!2279045 tp!2279052))))

(declare-fun b!7760816 () Bool)

(declare-fun tp!2279051 () Bool)

(assert (=> b!7760816 (= e!4599470 (and tp_is_empty!51747 tp!2279051))))

(declare-fun b!7760817 () Bool)

(declare-fun e!4599472 () Bool)

(declare-datatypes ((List!73539 0))(
  ( (Nil!73415) (Cons!73415 (h!79863 C!41718) (t!388274 List!73539)) )
))
(declare-datatypes ((tuple2!69778 0))(
  ( (tuple2!69779 (_1!38192 List!73539) (_2!38192 List!73539)) )
))
(declare-fun lt!2670328 () tuple2!69778)

(declare-fun s!10216 () List!73539)

(declare-fun ++!17871 (List!73539 List!73539) List!73539)

(assert (=> b!7760817 (= e!4599472 (not (= (++!17871 (_1!38192 lt!2670328) (_2!38192 lt!2670328)) s!10216)))))

(declare-datatypes ((Option!17683 0))(
  ( (None!17682) (Some!17682 (v!54817 tuple2!69778)) )
))
(declare-fun lt!2670327 () Option!17683)

(declare-fun get!26175 (Option!17683) tuple2!69778)

(assert (=> b!7760817 (= lt!2670328 (get!26175 lt!2670327))))

(declare-fun b!7760818 () Bool)

(declare-fun tp!2279050 () Bool)

(declare-fun tp!2279043 () Bool)

(assert (=> b!7760818 (= e!4599473 (and tp!2279050 tp!2279043))))

(declare-fun b!7760819 () Bool)

(assert (=> b!7760819 (= e!4599473 tp_is_empty!51747)))

(declare-fun b!7760820 () Bool)

(assert (=> b!7760820 (= e!4599474 e!4599472)))

(declare-fun res!3093971 () Bool)

(assert (=> b!7760820 (=> (not res!3093971) (not e!4599472))))

(declare-fun isDefined!14295 (Option!17683) Bool)

(assert (=> b!7760820 (= res!3093971 (isDefined!14295 lt!2670327))))

(declare-fun findConcatSeparation!3713 (Regex!20696 Regex!20696 List!73539 List!73539 List!73539) Option!17683)

(assert (=> b!7760820 (= lt!2670327 (findConcatSeparation!3713 r1!3330 r2!3230 Nil!73415 s!10216 s!10216))))

(declare-fun b!7760821 () Bool)

(declare-fun tp!2279047 () Bool)

(assert (=> b!7760821 (= e!4599473 tp!2279047)))

(assert (= (and start!739390 res!3093972) b!7760812))

(assert (= (and b!7760812 res!3093973) b!7760820))

(assert (= (and b!7760820 res!3093971) b!7760817))

(assert (= (and start!739390 (is-ElementMatch!20696 r1!3330)) b!7760819))

(assert (= (and start!739390 (is-Concat!29541 r1!3330)) b!7760818))

(assert (= (and start!739390 (is-Star!20696 r1!3330)) b!7760821))

(assert (= (and start!739390 (is-Union!20696 r1!3330)) b!7760811))

(assert (= (and start!739390 (is-ElementMatch!20696 r2!3230)) b!7760813))

(assert (= (and start!739390 (is-Concat!29541 r2!3230)) b!7760815))

(assert (= (and start!739390 (is-Star!20696 r2!3230)) b!7760814))

(assert (= (and start!739390 (is-Union!20696 r2!3230)) b!7760810))

(assert (= (and start!739390 (is-Cons!73415 s!10216)) b!7760816))

(declare-fun m!8220622 () Bool)

(assert (=> start!739390 m!8220622))

(declare-fun m!8220624 () Bool)

(assert (=> b!7760812 m!8220624))

(declare-fun m!8220626 () Bool)

(assert (=> b!7760817 m!8220626))

(declare-fun m!8220628 () Bool)

(assert (=> b!7760817 m!8220628))

(declare-fun m!8220630 () Bool)

(assert (=> b!7760820 m!8220630))

(declare-fun m!8220632 () Bool)

(assert (=> b!7760820 m!8220632))

(push 1)

(assert tp_is_empty!51747)

(assert (not start!739390))

(assert (not b!7760811))

(assert (not b!7760818))

(assert (not b!7760814))

(assert (not b!7760810))

(assert (not b!7760820))

(assert (not b!7760815))

(assert (not b!7760812))

(assert (not b!7760817))

(assert (not b!7760821))

(assert (not b!7760816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2343536 () Bool)

(declare-fun isEmpty!42079 (Option!17683) Bool)

(assert (=> d!2343536 (= (isDefined!14295 lt!2670327) (not (isEmpty!42079 lt!2670327)))))

(declare-fun bs!1965951 () Bool)

(assert (= bs!1965951 d!2343536))

(declare-fun m!8220646 () Bool)

(assert (=> bs!1965951 m!8220646))

(assert (=> b!7760820 d!2343536))

(declare-fun b!7760878 () Bool)

(declare-fun res!3093997 () Bool)

(declare-fun e!4599504 () Bool)

(assert (=> b!7760878 (=> (not res!3093997) (not e!4599504))))

(declare-fun lt!2670344 () Option!17683)

(declare-fun matchR!10162 (Regex!20696 List!73539) Bool)

(assert (=> b!7760878 (= res!3093997 (matchR!10162 r2!3230 (_2!38192 (get!26175 lt!2670344))))))

(declare-fun b!7760879 () Bool)

(declare-fun e!4599501 () Bool)

(assert (=> b!7760879 (= e!4599501 (matchR!10162 r2!3230 s!10216))))

(declare-fun b!7760880 () Bool)

(declare-fun e!4599503 () Option!17683)

(assert (=> b!7760880 (= e!4599503 (Some!17682 (tuple2!69779 Nil!73415 s!10216)))))

(declare-fun d!2343540 () Bool)

(declare-fun e!4599500 () Bool)

(assert (=> d!2343540 e!4599500))

(declare-fun res!3093996 () Bool)

(assert (=> d!2343540 (=> res!3093996 e!4599500)))

(assert (=> d!2343540 (= res!3093996 e!4599504)))

(declare-fun res!3093995 () Bool)

(assert (=> d!2343540 (=> (not res!3093995) (not e!4599504))))

(assert (=> d!2343540 (= res!3093995 (isDefined!14295 lt!2670344))))

(assert (=> d!2343540 (= lt!2670344 e!4599503)))

(declare-fun c!1430726 () Bool)

(assert (=> d!2343540 (= c!1430726 e!4599501)))

(declare-fun res!3093994 () Bool)

(assert (=> d!2343540 (=> (not res!3093994) (not e!4599501))))

(assert (=> d!2343540 (= res!3093994 (matchR!10162 r1!3330 Nil!73415))))

(assert (=> d!2343540 (validRegex!11112 r1!3330)))

(assert (=> d!2343540 (= (findConcatSeparation!3713 r1!3330 r2!3230 Nil!73415 s!10216 s!10216) lt!2670344)))

(declare-fun b!7760881 () Bool)

(declare-datatypes ((Unit!168382 0))(
  ( (Unit!168383) )
))
(declare-fun lt!2670343 () Unit!168382)

(declare-fun lt!2670345 () Unit!168382)

(assert (=> b!7760881 (= lt!2670343 lt!2670345)))

(assert (=> b!7760881 (= (++!17871 (++!17871 Nil!73415 (Cons!73415 (h!79863 s!10216) Nil!73415)) (t!388274 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3357 (List!73539 C!41718 List!73539 List!73539) Unit!168382)

(assert (=> b!7760881 (= lt!2670345 (lemmaMoveElementToOtherListKeepsConcatEq!3357 Nil!73415 (h!79863 s!10216) (t!388274 s!10216) s!10216))))

(declare-fun e!4599502 () Option!17683)

(assert (=> b!7760881 (= e!4599502 (findConcatSeparation!3713 r1!3330 r2!3230 (++!17871 Nil!73415 (Cons!73415 (h!79863 s!10216) Nil!73415)) (t!388274 s!10216) s!10216))))

(declare-fun b!7760882 () Bool)

(assert (=> b!7760882 (= e!4599502 None!17682)))

(declare-fun b!7760883 () Bool)

(assert (=> b!7760883 (= e!4599500 (not (isDefined!14295 lt!2670344)))))

(declare-fun b!7760884 () Bool)

(assert (=> b!7760884 (= e!4599504 (= (++!17871 (_1!38192 (get!26175 lt!2670344)) (_2!38192 (get!26175 lt!2670344))) s!10216))))

(declare-fun b!7760885 () Bool)

(declare-fun res!3093993 () Bool)

(assert (=> b!7760885 (=> (not res!3093993) (not e!4599504))))

(assert (=> b!7760885 (= res!3093993 (matchR!10162 r1!3330 (_1!38192 (get!26175 lt!2670344))))))

(declare-fun b!7760886 () Bool)

(assert (=> b!7760886 (= e!4599503 e!4599502)))

(declare-fun c!1430725 () Bool)

(assert (=> b!7760886 (= c!1430725 (is-Nil!73415 s!10216))))

(assert (= (and d!2343540 res!3093994) b!7760879))

(assert (= (and d!2343540 c!1430726) b!7760880))

(assert (= (and d!2343540 (not c!1430726)) b!7760886))

(assert (= (and b!7760886 c!1430725) b!7760882))

(assert (= (and b!7760886 (not c!1430725)) b!7760881))

(assert (= (and d!2343540 res!3093995) b!7760885))

(assert (= (and b!7760885 res!3093993) b!7760878))

(assert (= (and b!7760878 res!3093997) b!7760884))

(assert (= (and d!2343540 (not res!3093996)) b!7760883))

(declare-fun m!8220650 () Bool)

(assert (=> b!7760881 m!8220650))

(assert (=> b!7760881 m!8220650))

(declare-fun m!8220652 () Bool)

(assert (=> b!7760881 m!8220652))

(declare-fun m!8220654 () Bool)

(assert (=> b!7760881 m!8220654))

(assert (=> b!7760881 m!8220650))

(declare-fun m!8220656 () Bool)

(assert (=> b!7760881 m!8220656))

(declare-fun m!8220658 () Bool)

(assert (=> b!7760884 m!8220658))

(declare-fun m!8220660 () Bool)

(assert (=> b!7760884 m!8220660))

(declare-fun m!8220662 () Bool)

(assert (=> b!7760879 m!8220662))

(declare-fun m!8220664 () Bool)

(assert (=> b!7760883 m!8220664))

(assert (=> b!7760885 m!8220658))

(declare-fun m!8220666 () Bool)

(assert (=> b!7760885 m!8220666))

(assert (=> d!2343540 m!8220664))

(declare-fun m!8220668 () Bool)

(assert (=> d!2343540 m!8220668))

(assert (=> d!2343540 m!8220622))

(assert (=> b!7760878 m!8220658))

(declare-fun m!8220670 () Bool)

(assert (=> b!7760878 m!8220670))

(assert (=> b!7760820 d!2343540))

(declare-fun b!7760921 () Bool)

(declare-fun e!4599535 () Bool)

(declare-fun call!719136 () Bool)

(assert (=> b!7760921 (= e!4599535 call!719136)))

(declare-fun b!7760922 () Bool)

(declare-fun e!4599533 () Bool)

(declare-fun e!4599529 () Bool)

(assert (=> b!7760922 (= e!4599533 e!4599529)))

(declare-fun c!1430736 () Bool)

(assert (=> b!7760922 (= c!1430736 (is-Union!20696 r1!3330))))

(declare-fun b!7760923 () Bool)

(declare-fun e!4599531 () Bool)

(assert (=> b!7760923 (= e!4599531 e!4599533)))

(declare-fun c!1430735 () Bool)

(assert (=> b!7760923 (= c!1430735 (is-Star!20696 r1!3330))))

(declare-fun bm!719130 () Bool)

(assert (=> bm!719130 (= call!719136 (validRegex!11112 (ite c!1430736 (regTwo!41905 r1!3330) (regTwo!41904 r1!3330))))))

(declare-fun b!7760924 () Bool)

(declare-fun e!4599534 () Bool)

(assert (=> b!7760924 (= e!4599533 e!4599534)))

(declare-fun res!3094020 () Bool)

(declare-fun nullable!9106 (Regex!20696) Bool)

(assert (=> b!7760924 (= res!3094020 (not (nullable!9106 (reg!21025 r1!3330))))))

(assert (=> b!7760924 (=> (not res!3094020) (not e!4599534))))

(declare-fun bm!719131 () Bool)

(declare-fun call!719135 () Bool)

(assert (=> bm!719131 (= call!719135 (validRegex!11112 (ite c!1430735 (reg!21025 r1!3330) (ite c!1430736 (regOne!41905 r1!3330) (regOne!41904 r1!3330)))))))

(declare-fun b!7760925 () Bool)

(declare-fun res!3094022 () Bool)

(declare-fun e!4599530 () Bool)

(assert (=> b!7760925 (=> (not res!3094022) (not e!4599530))))

(declare-fun call!719137 () Bool)

(assert (=> b!7760925 (= res!3094022 call!719137)))

(assert (=> b!7760925 (= e!4599529 e!4599530)))

(declare-fun b!7760926 () Bool)

(declare-fun e!4599532 () Bool)

(assert (=> b!7760926 (= e!4599532 e!4599535)))

(declare-fun res!3094019 () Bool)

(assert (=> b!7760926 (=> (not res!3094019) (not e!4599535))))

(assert (=> b!7760926 (= res!3094019 call!719137)))

(declare-fun b!7760927 () Bool)

(declare-fun res!3094021 () Bool)

(assert (=> b!7760927 (=> res!3094021 e!4599532)))

(assert (=> b!7760927 (= res!3094021 (not (is-Concat!29541 r1!3330)))))

(assert (=> b!7760927 (= e!4599529 e!4599532)))

(declare-fun d!2343544 () Bool)

(declare-fun res!3094018 () Bool)

(assert (=> d!2343544 (=> res!3094018 e!4599531)))

(assert (=> d!2343544 (= res!3094018 (is-ElementMatch!20696 r1!3330))))

(assert (=> d!2343544 (= (validRegex!11112 r1!3330) e!4599531)))

(declare-fun b!7760928 () Bool)

(assert (=> b!7760928 (= e!4599530 call!719136)))

(declare-fun bm!719132 () Bool)

(assert (=> bm!719132 (= call!719137 call!719135)))

(declare-fun b!7760929 () Bool)

(assert (=> b!7760929 (= e!4599534 call!719135)))

(assert (= (and d!2343544 (not res!3094018)) b!7760923))

(assert (= (and b!7760923 c!1430735) b!7760924))

(assert (= (and b!7760923 (not c!1430735)) b!7760922))

(assert (= (and b!7760924 res!3094020) b!7760929))

(assert (= (and b!7760922 c!1430736) b!7760925))

(assert (= (and b!7760922 (not c!1430736)) b!7760927))

(assert (= (and b!7760925 res!3094022) b!7760928))

(assert (= (and b!7760927 (not res!3094021)) b!7760926))

(assert (= (and b!7760926 res!3094019) b!7760921))

(assert (= (or b!7760925 b!7760926) bm!719132))

(assert (= (or b!7760928 b!7760921) bm!719130))

(assert (= (or b!7760929 bm!719132) bm!719131))

(declare-fun m!8220672 () Bool)

(assert (=> bm!719130 m!8220672))

(declare-fun m!8220674 () Bool)

(assert (=> b!7760924 m!8220674))

(declare-fun m!8220676 () Bool)

(assert (=> bm!719131 m!8220676))

(assert (=> start!739390 d!2343544))

(declare-fun b!7760930 () Bool)

(declare-fun e!4599542 () Bool)

(declare-fun call!719139 () Bool)

(assert (=> b!7760930 (= e!4599542 call!719139)))

(declare-fun b!7760931 () Bool)

(declare-fun e!4599540 () Bool)

(declare-fun e!4599536 () Bool)

(assert (=> b!7760931 (= e!4599540 e!4599536)))

(declare-fun c!1430738 () Bool)

(assert (=> b!7760931 (= c!1430738 (is-Union!20696 r2!3230))))

(declare-fun b!7760932 () Bool)

(declare-fun e!4599538 () Bool)

(assert (=> b!7760932 (= e!4599538 e!4599540)))

(declare-fun c!1430737 () Bool)

(assert (=> b!7760932 (= c!1430737 (is-Star!20696 r2!3230))))

(declare-fun bm!719133 () Bool)

(assert (=> bm!719133 (= call!719139 (validRegex!11112 (ite c!1430738 (regTwo!41905 r2!3230) (regTwo!41904 r2!3230))))))

(declare-fun b!7760933 () Bool)

(declare-fun e!4599541 () Bool)

(assert (=> b!7760933 (= e!4599540 e!4599541)))

(declare-fun res!3094025 () Bool)

(assert (=> b!7760933 (= res!3094025 (not (nullable!9106 (reg!21025 r2!3230))))))

(assert (=> b!7760933 (=> (not res!3094025) (not e!4599541))))

(declare-fun bm!719134 () Bool)

(declare-fun call!719138 () Bool)

(assert (=> bm!719134 (= call!719138 (validRegex!11112 (ite c!1430737 (reg!21025 r2!3230) (ite c!1430738 (regOne!41905 r2!3230) (regOne!41904 r2!3230)))))))

(declare-fun b!7760934 () Bool)

(declare-fun res!3094027 () Bool)

(declare-fun e!4599537 () Bool)

(assert (=> b!7760934 (=> (not res!3094027) (not e!4599537))))

(declare-fun call!719140 () Bool)

(assert (=> b!7760934 (= res!3094027 call!719140)))

(assert (=> b!7760934 (= e!4599536 e!4599537)))

(declare-fun b!7760935 () Bool)

(declare-fun e!4599539 () Bool)

(assert (=> b!7760935 (= e!4599539 e!4599542)))

(declare-fun res!3094024 () Bool)

(assert (=> b!7760935 (=> (not res!3094024) (not e!4599542))))

(assert (=> b!7760935 (= res!3094024 call!719140)))

(declare-fun b!7760936 () Bool)

(declare-fun res!3094026 () Bool)

(assert (=> b!7760936 (=> res!3094026 e!4599539)))

(assert (=> b!7760936 (= res!3094026 (not (is-Concat!29541 r2!3230)))))

(assert (=> b!7760936 (= e!4599536 e!4599539)))

(declare-fun d!2343546 () Bool)

(declare-fun res!3094023 () Bool)

(assert (=> d!2343546 (=> res!3094023 e!4599538)))

(assert (=> d!2343546 (= res!3094023 (is-ElementMatch!20696 r2!3230))))

(assert (=> d!2343546 (= (validRegex!11112 r2!3230) e!4599538)))

(declare-fun b!7760937 () Bool)

(assert (=> b!7760937 (= e!4599537 call!719139)))

(declare-fun bm!719135 () Bool)

(assert (=> bm!719135 (= call!719140 call!719138)))

(declare-fun b!7760938 () Bool)

(assert (=> b!7760938 (= e!4599541 call!719138)))

(assert (= (and d!2343546 (not res!3094023)) b!7760932))

(assert (= (and b!7760932 c!1430737) b!7760933))

(assert (= (and b!7760932 (not c!1430737)) b!7760931))

(assert (= (and b!7760933 res!3094025) b!7760938))

(assert (= (and b!7760931 c!1430738) b!7760934))

(assert (= (and b!7760931 (not c!1430738)) b!7760936))

(assert (= (and b!7760934 res!3094027) b!7760937))

(assert (= (and b!7760936 (not res!3094026)) b!7760935))

(assert (= (and b!7760935 res!3094024) b!7760930))

(assert (= (or b!7760934 b!7760935) bm!719135))

(assert (= (or b!7760937 b!7760930) bm!719133))

(assert (= (or b!7760938 bm!719135) bm!719134))

(declare-fun m!8220678 () Bool)

(assert (=> bm!719133 m!8220678))

(declare-fun m!8220680 () Bool)

(assert (=> b!7760933 m!8220680))

(declare-fun m!8220682 () Bool)

(assert (=> bm!719134 m!8220682))

(assert (=> b!7760812 d!2343546))

(declare-fun b!7760957 () Bool)

(declare-fun e!4599553 () List!73539)

(assert (=> b!7760957 (= e!4599553 (Cons!73415 (h!79863 (_1!38192 lt!2670328)) (++!17871 (t!388274 (_1!38192 lt!2670328)) (_2!38192 lt!2670328))))))

(declare-fun b!7760958 () Bool)

(declare-fun res!3094037 () Bool)

(declare-fun e!4599552 () Bool)

(assert (=> b!7760958 (=> (not res!3094037) (not e!4599552))))

(declare-fun lt!2670355 () List!73539)

(declare-fun size!42677 (List!73539) Int)

(assert (=> b!7760958 (= res!3094037 (= (size!42677 lt!2670355) (+ (size!42677 (_1!38192 lt!2670328)) (size!42677 (_2!38192 lt!2670328)))))))

(declare-fun b!7760959 () Bool)

(assert (=> b!7760959 (= e!4599552 (or (not (= (_2!38192 lt!2670328) Nil!73415)) (= lt!2670355 (_1!38192 lt!2670328))))))

(declare-fun d!2343548 () Bool)

(assert (=> d!2343548 e!4599552))

(declare-fun res!3094038 () Bool)

(assert (=> d!2343548 (=> (not res!3094038) (not e!4599552))))

(declare-fun content!15574 (List!73539) (Set C!41718))

(assert (=> d!2343548 (= res!3094038 (= (content!15574 lt!2670355) (set.union (content!15574 (_1!38192 lt!2670328)) (content!15574 (_2!38192 lt!2670328)))))))

(assert (=> d!2343548 (= lt!2670355 e!4599553)))

(declare-fun c!1430743 () Bool)

(assert (=> d!2343548 (= c!1430743 (is-Nil!73415 (_1!38192 lt!2670328)))))

(assert (=> d!2343548 (= (++!17871 (_1!38192 lt!2670328) (_2!38192 lt!2670328)) lt!2670355)))

(declare-fun b!7760956 () Bool)

(assert (=> b!7760956 (= e!4599553 (_2!38192 lt!2670328))))

(assert (= (and d!2343548 c!1430743) b!7760956))

(assert (= (and d!2343548 (not c!1430743)) b!7760957))

(assert (= (and d!2343548 res!3094038) b!7760958))

(assert (= (and b!7760958 res!3094037) b!7760959))

(declare-fun m!8220706 () Bool)

(assert (=> b!7760957 m!8220706))

(declare-fun m!8220708 () Bool)

(assert (=> b!7760958 m!8220708))

(declare-fun m!8220710 () Bool)

(assert (=> b!7760958 m!8220710))

(declare-fun m!8220712 () Bool)

(assert (=> b!7760958 m!8220712))

(declare-fun m!8220714 () Bool)

(assert (=> d!2343548 m!8220714))

(declare-fun m!8220716 () Bool)

(assert (=> d!2343548 m!8220716))

(declare-fun m!8220718 () Bool)

(assert (=> d!2343548 m!8220718))

(assert (=> b!7760817 d!2343548))

(declare-fun d!2343552 () Bool)

(assert (=> d!2343552 (= (get!26175 lt!2670327) (v!54817 lt!2670327))))

(assert (=> b!7760817 d!2343552))

(declare-fun e!4599556 () Bool)

(assert (=> b!7760814 (= tp!2279048 e!4599556)))

(declare-fun b!7760971 () Bool)

(declare-fun tp!2279100 () Bool)

(declare-fun tp!2279098 () Bool)

(assert (=> b!7760971 (= e!4599556 (and tp!2279100 tp!2279098))))

(declare-fun b!7760973 () Bool)

(declare-fun tp!2279099 () Bool)

(declare-fun tp!2279096 () Bool)

(assert (=> b!7760973 (= e!4599556 (and tp!2279099 tp!2279096))))

(declare-fun b!7760970 () Bool)

(assert (=> b!7760970 (= e!4599556 tp_is_empty!51747)))

(declare-fun b!7760972 () Bool)

(declare-fun tp!2279097 () Bool)

(assert (=> b!7760972 (= e!4599556 tp!2279097)))

(assert (= (and b!7760814 (is-ElementMatch!20696 (reg!21025 r2!3230))) b!7760970))

(assert (= (and b!7760814 (is-Concat!29541 (reg!21025 r2!3230))) b!7760971))

(assert (= (and b!7760814 (is-Star!20696 (reg!21025 r2!3230))) b!7760972))

(assert (= (and b!7760814 (is-Union!20696 (reg!21025 r2!3230))) b!7760973))

(declare-fun b!7760978 () Bool)

(declare-fun e!4599559 () Bool)

(declare-fun tp!2279103 () Bool)

(assert (=> b!7760978 (= e!4599559 (and tp_is_empty!51747 tp!2279103))))

(assert (=> b!7760816 (= tp!2279051 e!4599559)))

(assert (= (and b!7760816 (is-Cons!73415 (t!388274 s!10216))) b!7760978))

(declare-fun e!4599560 () Bool)

(assert (=> b!7760821 (= tp!2279047 e!4599560)))

(declare-fun b!7760980 () Bool)

(declare-fun tp!2279108 () Bool)

(declare-fun tp!2279106 () Bool)

(assert (=> b!7760980 (= e!4599560 (and tp!2279108 tp!2279106))))

(declare-fun b!7760982 () Bool)

(declare-fun tp!2279107 () Bool)

(declare-fun tp!2279104 () Bool)

(assert (=> b!7760982 (= e!4599560 (and tp!2279107 tp!2279104))))

(declare-fun b!7760979 () Bool)

(assert (=> b!7760979 (= e!4599560 tp_is_empty!51747)))

(declare-fun b!7760981 () Bool)

(declare-fun tp!2279105 () Bool)

(assert (=> b!7760981 (= e!4599560 tp!2279105)))

(assert (= (and b!7760821 (is-ElementMatch!20696 (reg!21025 r1!3330))) b!7760979))

(assert (= (and b!7760821 (is-Concat!29541 (reg!21025 r1!3330))) b!7760980))

(assert (= (and b!7760821 (is-Star!20696 (reg!21025 r1!3330))) b!7760981))

(assert (= (and b!7760821 (is-Union!20696 (reg!21025 r1!3330))) b!7760982))

(declare-fun e!4599561 () Bool)

(assert (=> b!7760810 (= tp!2279046 e!4599561)))

(declare-fun b!7760984 () Bool)

(declare-fun tp!2279113 () Bool)

(declare-fun tp!2279111 () Bool)

(assert (=> b!7760984 (= e!4599561 (and tp!2279113 tp!2279111))))

(declare-fun b!7760986 () Bool)

(declare-fun tp!2279112 () Bool)

(declare-fun tp!2279109 () Bool)

(assert (=> b!7760986 (= e!4599561 (and tp!2279112 tp!2279109))))

(declare-fun b!7760983 () Bool)

(assert (=> b!7760983 (= e!4599561 tp_is_empty!51747)))

(declare-fun b!7760985 () Bool)

(declare-fun tp!2279110 () Bool)

(assert (=> b!7760985 (= e!4599561 tp!2279110)))

(assert (= (and b!7760810 (is-ElementMatch!20696 (regOne!41905 r2!3230))) b!7760983))

(assert (= (and b!7760810 (is-Concat!29541 (regOne!41905 r2!3230))) b!7760984))

(assert (= (and b!7760810 (is-Star!20696 (regOne!41905 r2!3230))) b!7760985))

(assert (= (and b!7760810 (is-Union!20696 (regOne!41905 r2!3230))) b!7760986))

(declare-fun e!4599562 () Bool)

(assert (=> b!7760810 (= tp!2279042 e!4599562)))

(declare-fun b!7760988 () Bool)

(declare-fun tp!2279118 () Bool)

(declare-fun tp!2279116 () Bool)

(assert (=> b!7760988 (= e!4599562 (and tp!2279118 tp!2279116))))

(declare-fun b!7760990 () Bool)

(declare-fun tp!2279117 () Bool)

(declare-fun tp!2279114 () Bool)

(assert (=> b!7760990 (= e!4599562 (and tp!2279117 tp!2279114))))

(declare-fun b!7760987 () Bool)

(assert (=> b!7760987 (= e!4599562 tp_is_empty!51747)))

(declare-fun b!7760989 () Bool)

(declare-fun tp!2279115 () Bool)

(assert (=> b!7760989 (= e!4599562 tp!2279115)))

(assert (= (and b!7760810 (is-ElementMatch!20696 (regTwo!41905 r2!3230))) b!7760987))

(assert (= (and b!7760810 (is-Concat!29541 (regTwo!41905 r2!3230))) b!7760988))

(assert (= (and b!7760810 (is-Star!20696 (regTwo!41905 r2!3230))) b!7760989))

(assert (= (and b!7760810 (is-Union!20696 (regTwo!41905 r2!3230))) b!7760990))

(declare-fun e!4599563 () Bool)

(assert (=> b!7760815 (= tp!2279045 e!4599563)))

(declare-fun b!7760992 () Bool)

(declare-fun tp!2279123 () Bool)

(declare-fun tp!2279121 () Bool)

(assert (=> b!7760992 (= e!4599563 (and tp!2279123 tp!2279121))))

(declare-fun b!7760994 () Bool)

(declare-fun tp!2279122 () Bool)

(declare-fun tp!2279119 () Bool)

(assert (=> b!7760994 (= e!4599563 (and tp!2279122 tp!2279119))))

(declare-fun b!7760991 () Bool)

(assert (=> b!7760991 (= e!4599563 tp_is_empty!51747)))

(declare-fun b!7760993 () Bool)

(declare-fun tp!2279120 () Bool)

(assert (=> b!7760993 (= e!4599563 tp!2279120)))

(assert (= (and b!7760815 (is-ElementMatch!20696 (regOne!41904 r2!3230))) b!7760991))

(assert (= (and b!7760815 (is-Concat!29541 (regOne!41904 r2!3230))) b!7760992))

(assert (= (and b!7760815 (is-Star!20696 (regOne!41904 r2!3230))) b!7760993))

(assert (= (and b!7760815 (is-Union!20696 (regOne!41904 r2!3230))) b!7760994))

(declare-fun e!4599566 () Bool)

(assert (=> b!7760815 (= tp!2279052 e!4599566)))

(declare-fun b!7760998 () Bool)

(declare-fun tp!2279128 () Bool)

(declare-fun tp!2279126 () Bool)

(assert (=> b!7760998 (= e!4599566 (and tp!2279128 tp!2279126))))

(declare-fun b!7761000 () Bool)

(declare-fun tp!2279127 () Bool)

(declare-fun tp!2279124 () Bool)

(assert (=> b!7761000 (= e!4599566 (and tp!2279127 tp!2279124))))

(declare-fun b!7760997 () Bool)

(assert (=> b!7760997 (= e!4599566 tp_is_empty!51747)))

(declare-fun b!7760999 () Bool)

(declare-fun tp!2279125 () Bool)

(assert (=> b!7760999 (= e!4599566 tp!2279125)))

(assert (= (and b!7760815 (is-ElementMatch!20696 (regTwo!41904 r2!3230))) b!7760997))

(assert (= (and b!7760815 (is-Concat!29541 (regTwo!41904 r2!3230))) b!7760998))

(assert (= (and b!7760815 (is-Star!20696 (regTwo!41904 r2!3230))) b!7760999))

(assert (= (and b!7760815 (is-Union!20696 (regTwo!41904 r2!3230))) b!7761000))

(declare-fun e!4599569 () Bool)

(assert (=> b!7760811 (= tp!2279049 e!4599569)))

(declare-fun b!7761006 () Bool)

(declare-fun tp!2279133 () Bool)

(declare-fun tp!2279131 () Bool)

(assert (=> b!7761006 (= e!4599569 (and tp!2279133 tp!2279131))))

(declare-fun b!7761008 () Bool)

(declare-fun tp!2279132 () Bool)

(declare-fun tp!2279129 () Bool)

(assert (=> b!7761008 (= e!4599569 (and tp!2279132 tp!2279129))))

(declare-fun b!7761005 () Bool)

(assert (=> b!7761005 (= e!4599569 tp_is_empty!51747)))

(declare-fun b!7761007 () Bool)

(declare-fun tp!2279130 () Bool)

(assert (=> b!7761007 (= e!4599569 tp!2279130)))

(assert (= (and b!7760811 (is-ElementMatch!20696 (regOne!41905 r1!3330))) b!7761005))

(assert (= (and b!7760811 (is-Concat!29541 (regOne!41905 r1!3330))) b!7761006))

(assert (= (and b!7760811 (is-Star!20696 (regOne!41905 r1!3330))) b!7761007))

(assert (= (and b!7760811 (is-Union!20696 (regOne!41905 r1!3330))) b!7761008))

(declare-fun e!4599572 () Bool)

(assert (=> b!7760811 (= tp!2279044 e!4599572)))

(declare-fun b!7761012 () Bool)

(declare-fun tp!2279138 () Bool)

(declare-fun tp!2279136 () Bool)

(assert (=> b!7761012 (= e!4599572 (and tp!2279138 tp!2279136))))

(declare-fun b!7761014 () Bool)

(declare-fun tp!2279137 () Bool)

(declare-fun tp!2279134 () Bool)

(assert (=> b!7761014 (= e!4599572 (and tp!2279137 tp!2279134))))

(declare-fun b!7761011 () Bool)

(assert (=> b!7761011 (= e!4599572 tp_is_empty!51747)))

(declare-fun b!7761013 () Bool)

(declare-fun tp!2279135 () Bool)

(assert (=> b!7761013 (= e!4599572 tp!2279135)))

(assert (= (and b!7760811 (is-ElementMatch!20696 (regTwo!41905 r1!3330))) b!7761011))

(assert (= (and b!7760811 (is-Concat!29541 (regTwo!41905 r1!3330))) b!7761012))

(assert (= (and b!7760811 (is-Star!20696 (regTwo!41905 r1!3330))) b!7761013))

(assert (= (and b!7760811 (is-Union!20696 (regTwo!41905 r1!3330))) b!7761014))

(declare-fun e!4599577 () Bool)

(assert (=> b!7760818 (= tp!2279050 e!4599577)))

(declare-fun b!7761020 () Bool)

(declare-fun tp!2279143 () Bool)

(declare-fun tp!2279141 () Bool)

(assert (=> b!7761020 (= e!4599577 (and tp!2279143 tp!2279141))))

(declare-fun b!7761022 () Bool)

(declare-fun tp!2279142 () Bool)

(declare-fun tp!2279139 () Bool)

(assert (=> b!7761022 (= e!4599577 (and tp!2279142 tp!2279139))))

(declare-fun b!7761019 () Bool)

(assert (=> b!7761019 (= e!4599577 tp_is_empty!51747)))

(declare-fun b!7761021 () Bool)

(declare-fun tp!2279140 () Bool)

(assert (=> b!7761021 (= e!4599577 tp!2279140)))

(assert (= (and b!7760818 (is-ElementMatch!20696 (regOne!41904 r1!3330))) b!7761019))

(assert (= (and b!7760818 (is-Concat!29541 (regOne!41904 r1!3330))) b!7761020))

(assert (= (and b!7760818 (is-Star!20696 (regOne!41904 r1!3330))) b!7761021))

(assert (= (and b!7760818 (is-Union!20696 (regOne!41904 r1!3330))) b!7761022))

(declare-fun e!4599582 () Bool)

(assert (=> b!7760818 (= tp!2279043 e!4599582)))

(declare-fun b!7761028 () Bool)

(declare-fun tp!2279148 () Bool)

(declare-fun tp!2279146 () Bool)

(assert (=> b!7761028 (= e!4599582 (and tp!2279148 tp!2279146))))

(declare-fun b!7761030 () Bool)

(declare-fun tp!2279147 () Bool)

(declare-fun tp!2279144 () Bool)

(assert (=> b!7761030 (= e!4599582 (and tp!2279147 tp!2279144))))

(declare-fun b!7761027 () Bool)

(assert (=> b!7761027 (= e!4599582 tp_is_empty!51747)))

(declare-fun b!7761029 () Bool)

(declare-fun tp!2279145 () Bool)

(assert (=> b!7761029 (= e!4599582 tp!2279145)))

(assert (= (and b!7760818 (is-ElementMatch!20696 (regTwo!41904 r1!3330))) b!7761027))

(assert (= (and b!7760818 (is-Concat!29541 (regTwo!41904 r1!3330))) b!7761028))

(assert (= (and b!7760818 (is-Star!20696 (regTwo!41904 r1!3330))) b!7761029))

(assert (= (and b!7760818 (is-Union!20696 (regTwo!41904 r1!3330))) b!7761030))

(push 1)

(assert (not bm!719130))

(assert (not b!7761020))

(assert (not b!7760978))

(assert (not b!7760985))

(assert (not b!7760990))

(assert (not b!7760994))

(assert (not b!7760972))

(assert (not b!7761028))

(assert (not b!7761000))

(assert (not b!7761012))

(assert (not b!7760884))

(assert (not b!7760883))

(assert (not b!7760980))

(assert (not b!7760973))

(assert (not b!7761021))

(assert (not bm!719134))

(assert (not b!7760881))

(assert (not b!7761008))

(assert (not b!7760999))

(assert (not b!7761029))

(assert (not b!7760958))

(assert (not b!7761022))

(assert (not b!7760982))

(assert tp_is_empty!51747)

(assert (not bm!719131))

(assert (not b!7760933))

(assert (not b!7761013))

(assert (not b!7760986))

(assert (not d!2343548))

(assert (not b!7761030))

(assert (not b!7760998))

(assert (not b!7760989))

(assert (not b!7761014))

(assert (not bm!719133))

(assert (not b!7760878))

(assert (not b!7760885))

(assert (not b!7761007))

(assert (not b!7760971))

(assert (not b!7760984))

(assert (not b!7760992))

(assert (not d!2343540))

(assert (not b!7760957))

(assert (not b!7760993))

(assert (not b!7760981))

(assert (not b!7760924))

(assert (not b!7760988))

(assert (not b!7760879))

(assert (not d!2343536))

(assert (not b!7761006))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

