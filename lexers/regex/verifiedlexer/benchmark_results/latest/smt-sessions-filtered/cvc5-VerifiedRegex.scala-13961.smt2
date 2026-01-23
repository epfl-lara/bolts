; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739674 () Bool)

(assert start!739674)

(declare-fun b!7764818 () Bool)

(assert (=> b!7764818 true))

(assert (=> b!7764818 true))

(assert (=> b!7764818 true))

(declare-fun b!7764814 () Bool)

(declare-fun e!4601344 () Bool)

(declare-fun tp_is_empty!51787 () Bool)

(declare-fun tp!2280837 () Bool)

(assert (=> b!7764814 (= e!4601344 (and tp_is_empty!51787 tp!2280837))))

(declare-fun b!7764815 () Bool)

(declare-fun e!4601346 () Bool)

(declare-fun e!4601347 () Bool)

(assert (=> b!7764815 (= e!4601346 e!4601347)))

(declare-fun res!3095534 () Bool)

(assert (=> b!7764815 (=> (not res!3095534) (not e!4601347))))

(declare-datatypes ((C!41758 0))(
  ( (C!41759 (val!31319 Int)) )
))
(declare-datatypes ((List!73559 0))(
  ( (Nil!73435) (Cons!73435 (h!79883 C!41758) (t!388294 List!73559)) )
))
(declare-datatypes ((tuple2!69818 0))(
  ( (tuple2!69819 (_1!38212 List!73559) (_2!38212 List!73559)) )
))
(declare-fun lt!2670743 () tuple2!69818)

(declare-fun s!10216 () List!73559)

(declare-fun ++!17891 (List!73559 List!73559) List!73559)

(assert (=> b!7764815 (= res!3095534 (= (++!17891 (_1!38212 lt!2670743) (_2!38212 lt!2670743)) s!10216))))

(declare-fun lambda!472102 () Int)

(declare-fun pickWitness!573 (Int) tuple2!69818)

(assert (=> b!7764815 (= lt!2670743 (pickWitness!573 lambda!472102))))

(declare-fun b!7764816 () Bool)

(declare-fun e!4601342 () Bool)

(assert (=> b!7764816 (= e!4601342 tp_is_empty!51787)))

(declare-fun res!3095536 () Bool)

(assert (=> b!7764818 (=> (not res!3095536) (not e!4601346))))

(declare-fun Exists!4754 (Int) Bool)

(assert (=> b!7764818 (= res!3095536 (Exists!4754 lambda!472102))))

(declare-fun b!7764819 () Bool)

(assert (=> b!7764819 (= e!4601347 (not (= (++!17891 Nil!73435 s!10216) s!10216)))))

(declare-fun b!7764820 () Bool)

(declare-fun tp!2280836 () Bool)

(declare-fun tp!2280842 () Bool)

(assert (=> b!7764820 (= e!4601342 (and tp!2280836 tp!2280842))))

(declare-fun b!7764821 () Bool)

(declare-fun res!3095537 () Bool)

(assert (=> b!7764821 (=> (not res!3095537) (not e!4601347))))

(declare-fun isPrefix!6244 (List!73559 List!73559) Bool)

(assert (=> b!7764821 (= res!3095537 (isPrefix!6244 Nil!73435 (_1!38212 lt!2670743)))))

(declare-fun b!7764822 () Bool)

(declare-fun res!3095539 () Bool)

(assert (=> b!7764822 (=> (not res!3095539) (not e!4601347))))

(declare-datatypes ((Regex!20716 0))(
  ( (ElementMatch!20716 (c!1431171 C!41758)) (Concat!29561 (regOne!41944 Regex!20716) (regTwo!41944 Regex!20716)) (EmptyExpr!20716) (Star!20716 (reg!21045 Regex!20716)) (EmptyLang!20716) (Union!20716 (regOne!41945 Regex!20716) (regTwo!41945 Regex!20716)) )
))
(declare-fun r1!3330 () Regex!20716)

(declare-fun matchR!10182 (Regex!20716 List!73559) Bool)

(assert (=> b!7764822 (= res!3095539 (matchR!10182 r1!3330 (_1!38212 lt!2670743)))))

(declare-fun b!7764823 () Bool)

(declare-fun e!4601345 () Bool)

(declare-fun tp!2280843 () Bool)

(declare-fun tp!2280839 () Bool)

(assert (=> b!7764823 (= e!4601345 (and tp!2280843 tp!2280839))))

(declare-fun b!7764824 () Bool)

(declare-fun e!4601343 () Bool)

(assert (=> b!7764824 (= e!4601343 e!4601346)))

(declare-fun res!3095538 () Bool)

(assert (=> b!7764824 (=> (not res!3095538) (not e!4601346))))

(declare-datatypes ((Option!17703 0))(
  ( (None!17702) (Some!17702 (v!54837 tuple2!69818)) )
))
(declare-fun lt!2670744 () Option!17703)

(declare-fun isDefined!14315 (Option!17703) Bool)

(assert (=> b!7764824 (= res!3095538 (not (isDefined!14315 lt!2670744)))))

(declare-fun r2!3230 () Regex!20716)

(declare-fun findConcatSeparation!3733 (Regex!20716 Regex!20716 List!73559 List!73559 List!73559) Option!17703)

(assert (=> b!7764824 (= lt!2670744 (findConcatSeparation!3733 r1!3330 r2!3230 Nil!73435 s!10216 s!10216))))

(declare-fun b!7764825 () Bool)

(declare-fun tp!2280840 () Bool)

(declare-fun tp!2280845 () Bool)

(assert (=> b!7764825 (= e!4601342 (and tp!2280840 tp!2280845))))

(declare-fun b!7764826 () Bool)

(assert (=> b!7764826 (= e!4601345 tp_is_empty!51787)))

(declare-fun b!7764827 () Bool)

(declare-fun res!3095535 () Bool)

(assert (=> b!7764827 (=> (not res!3095535) (not e!4601343))))

(declare-fun validRegex!11132 (Regex!20716) Bool)

(assert (=> b!7764827 (= res!3095535 (validRegex!11132 r2!3230))))

(declare-fun b!7764828 () Bool)

(declare-fun tp!2280838 () Bool)

(assert (=> b!7764828 (= e!4601342 tp!2280838)))

(declare-fun b!7764817 () Bool)

(declare-fun tp!2280841 () Bool)

(assert (=> b!7764817 (= e!4601345 tp!2280841)))

(declare-fun res!3095533 () Bool)

(assert (=> start!739674 (=> (not res!3095533) (not e!4601343))))

(assert (=> start!739674 (= res!3095533 (validRegex!11132 r1!3330))))

(assert (=> start!739674 e!4601343))

(assert (=> start!739674 e!4601342))

(assert (=> start!739674 e!4601345))

(assert (=> start!739674 e!4601344))

(declare-fun b!7764829 () Bool)

(declare-fun tp!2280844 () Bool)

(declare-fun tp!2280846 () Bool)

(assert (=> b!7764829 (= e!4601345 (and tp!2280844 tp!2280846))))

(declare-fun b!7764830 () Bool)

(declare-fun res!3095541 () Bool)

(assert (=> b!7764830 (=> (not res!3095541) (not e!4601346))))

(declare-fun isEmpty!42111 (Option!17703) Bool)

(assert (=> b!7764830 (= res!3095541 (isEmpty!42111 lt!2670744))))

(declare-fun b!7764831 () Bool)

(declare-fun res!3095540 () Bool)

(assert (=> b!7764831 (=> (not res!3095540) (not e!4601347))))

(assert (=> b!7764831 (= res!3095540 (matchR!10182 r2!3230 (_2!38212 lt!2670743)))))

(assert (= (and start!739674 res!3095533) b!7764827))

(assert (= (and b!7764827 res!3095535) b!7764824))

(assert (= (and b!7764824 res!3095538) b!7764830))

(assert (= (and b!7764830 res!3095541) b!7764818))

(assert (= (and b!7764818 res!3095536) b!7764815))

(assert (= (and b!7764815 res!3095534) b!7764822))

(assert (= (and b!7764822 res!3095539) b!7764831))

(assert (= (and b!7764831 res!3095540) b!7764821))

(assert (= (and b!7764821 res!3095537) b!7764819))

(assert (= (and start!739674 (is-ElementMatch!20716 r1!3330)) b!7764816))

(assert (= (and start!739674 (is-Concat!29561 r1!3330)) b!7764820))

(assert (= (and start!739674 (is-Star!20716 r1!3330)) b!7764828))

(assert (= (and start!739674 (is-Union!20716 r1!3330)) b!7764825))

(assert (= (and start!739674 (is-ElementMatch!20716 r2!3230)) b!7764826))

(assert (= (and start!739674 (is-Concat!29561 r2!3230)) b!7764823))

(assert (= (and start!739674 (is-Star!20716 r2!3230)) b!7764817))

(assert (= (and start!739674 (is-Union!20716 r2!3230)) b!7764829))

(assert (= (and start!739674 (is-Cons!73435 s!10216)) b!7764814))

(declare-fun m!8222226 () Bool)

(assert (=> b!7764831 m!8222226))

(declare-fun m!8222228 () Bool)

(assert (=> b!7764815 m!8222228))

(declare-fun m!8222230 () Bool)

(assert (=> b!7764815 m!8222230))

(declare-fun m!8222232 () Bool)

(assert (=> b!7764830 m!8222232))

(declare-fun m!8222234 () Bool)

(assert (=> b!7764827 m!8222234))

(declare-fun m!8222236 () Bool)

(assert (=> b!7764818 m!8222236))

(declare-fun m!8222238 () Bool)

(assert (=> b!7764821 m!8222238))

(declare-fun m!8222240 () Bool)

(assert (=> b!7764822 m!8222240))

(declare-fun m!8222242 () Bool)

(assert (=> start!739674 m!8222242))

(declare-fun m!8222244 () Bool)

(assert (=> b!7764824 m!8222244))

(declare-fun m!8222246 () Bool)

(assert (=> b!7764824 m!8222246))

(declare-fun m!8222248 () Bool)

(assert (=> b!7764819 m!8222248))

(push 1)

(assert (not b!7764827))

(assert (not b!7764828))

(assert (not b!7764819))

(assert (not b!7764824))

(assert (not b!7764823))

(assert tp_is_empty!51787)

(assert (not b!7764815))

(assert (not b!7764831))

(assert (not b!7764818))

(assert (not start!739674))

(assert (not b!7764829))

(assert (not b!7764821))

(assert (not b!7764820))

(assert (not b!7764822))

(assert (not b!7764817))

(assert (not b!7764814))

(assert (not b!7764830))

(assert (not b!7764825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7764912 () Bool)

(declare-fun res!3095581 () Bool)

(declare-fun e!4601375 () Bool)

(assert (=> b!7764912 (=> (not res!3095581) (not e!4601375))))

(declare-fun lt!2670753 () List!73559)

(declare-fun size!42693 (List!73559) Int)

(assert (=> b!7764912 (= res!3095581 (= (size!42693 lt!2670753) (+ (size!42693 Nil!73435) (size!42693 s!10216))))))

(declare-fun d!2343862 () Bool)

(assert (=> d!2343862 e!4601375))

(declare-fun res!3095582 () Bool)

(assert (=> d!2343862 (=> (not res!3095582) (not e!4601375))))

(declare-fun content!15590 (List!73559) (Set C!41758))

(assert (=> d!2343862 (= res!3095582 (= (content!15590 lt!2670753) (set.union (content!15590 Nil!73435) (content!15590 s!10216))))))

(declare-fun e!4601374 () List!73559)

(assert (=> d!2343862 (= lt!2670753 e!4601374)))

(declare-fun c!1431175 () Bool)

(assert (=> d!2343862 (= c!1431175 (is-Nil!73435 Nil!73435))))

(assert (=> d!2343862 (= (++!17891 Nil!73435 s!10216) lt!2670753)))

(declare-fun b!7764910 () Bool)

(assert (=> b!7764910 (= e!4601374 s!10216)))

(declare-fun b!7764913 () Bool)

(assert (=> b!7764913 (= e!4601375 (or (not (= s!10216 Nil!73435)) (= lt!2670753 Nil!73435)))))

(declare-fun b!7764911 () Bool)

(assert (=> b!7764911 (= e!4601374 (Cons!73435 (h!79883 Nil!73435) (++!17891 (t!388294 Nil!73435) s!10216)))))

(assert (= (and d!2343862 c!1431175) b!7764910))

(assert (= (and d!2343862 (not c!1431175)) b!7764911))

(assert (= (and d!2343862 res!3095582) b!7764912))

(assert (= (and b!7764912 res!3095581) b!7764913))

(declare-fun m!8222274 () Bool)

(assert (=> b!7764912 m!8222274))

(declare-fun m!8222276 () Bool)

(assert (=> b!7764912 m!8222276))

(declare-fun m!8222278 () Bool)

(assert (=> b!7764912 m!8222278))

(declare-fun m!8222280 () Bool)

(assert (=> d!2343862 m!8222280))

(declare-fun m!8222282 () Bool)

(assert (=> d!2343862 m!8222282))

(declare-fun m!8222284 () Bool)

(assert (=> d!2343862 m!8222284))

(declare-fun m!8222286 () Bool)

(assert (=> b!7764911 m!8222286))

(assert (=> b!7764819 d!2343862))

(declare-fun d!2343864 () Bool)

(assert (=> d!2343864 (= (isEmpty!42111 lt!2670744) (not (is-Some!17702 lt!2670744)))))

(assert (=> b!7764830 d!2343864))

(declare-fun d!2343866 () Bool)

(declare-fun choose!59459 (Int) Bool)

(assert (=> d!2343866 (= (Exists!4754 lambda!472102) (choose!59459 lambda!472102))))

(declare-fun bs!1966019 () Bool)

(assert (= bs!1966019 d!2343866))

(declare-fun m!8222288 () Bool)

(assert (=> bs!1966019 m!8222288))

(assert (=> b!7764818 d!2343866))

(declare-fun b!7764933 () Bool)

(declare-fun res!3095593 () Bool)

(declare-fun e!4601395 () Bool)

(assert (=> b!7764933 (=> res!3095593 e!4601395)))

(assert (=> b!7764933 (= res!3095593 (not (is-Concat!29561 r1!3330)))))

(declare-fun e!4601396 () Bool)

(assert (=> b!7764933 (= e!4601396 e!4601395)))

(declare-fun b!7764934 () Bool)

(declare-fun res!3095597 () Bool)

(declare-fun e!4601393 () Bool)

(assert (=> b!7764934 (=> (not res!3095597) (not e!4601393))))

(declare-fun call!719396 () Bool)

(assert (=> b!7764934 (= res!3095597 call!719396)))

(assert (=> b!7764934 (= e!4601396 e!4601393)))

(declare-fun b!7764935 () Bool)

(declare-fun call!719395 () Bool)

(assert (=> b!7764935 (= e!4601393 call!719395)))

(declare-fun b!7764936 () Bool)

(declare-fun e!4601391 () Bool)

(assert (=> b!7764936 (= e!4601395 e!4601391)))

(declare-fun res!3095596 () Bool)

(assert (=> b!7764936 (=> (not res!3095596) (not e!4601391))))

(assert (=> b!7764936 (= res!3095596 call!719396)))

(declare-fun b!7764937 () Bool)

(declare-fun e!4601394 () Bool)

(assert (=> b!7764937 (= e!4601394 e!4601396)))

(declare-fun c!1431180 () Bool)

(assert (=> b!7764937 (= c!1431180 (is-Union!20716 r1!3330))))

(declare-fun d!2343868 () Bool)

(declare-fun res!3095594 () Bool)

(declare-fun e!4601392 () Bool)

(assert (=> d!2343868 (=> res!3095594 e!4601392)))

(assert (=> d!2343868 (= res!3095594 (is-ElementMatch!20716 r1!3330))))

(assert (=> d!2343868 (= (validRegex!11132 r1!3330) e!4601392)))

(declare-fun b!7764932 () Bool)

(assert (=> b!7764932 (= e!4601392 e!4601394)))

(declare-fun c!1431181 () Bool)

(assert (=> b!7764932 (= c!1431181 (is-Star!20716 r1!3330))))

(declare-fun bm!719390 () Bool)

(assert (=> bm!719390 (= call!719395 (validRegex!11132 (ite c!1431180 (regTwo!41945 r1!3330) (regTwo!41944 r1!3330))))))

(declare-fun b!7764938 () Bool)

(assert (=> b!7764938 (= e!4601391 call!719395)))

(declare-fun bm!719391 () Bool)

(declare-fun call!719397 () Bool)

(assert (=> bm!719391 (= call!719397 (validRegex!11132 (ite c!1431181 (reg!21045 r1!3330) (ite c!1431180 (regOne!41945 r1!3330) (regOne!41944 r1!3330)))))))

(declare-fun bm!719392 () Bool)

(assert (=> bm!719392 (= call!719396 call!719397)))

(declare-fun b!7764939 () Bool)

(declare-fun e!4601390 () Bool)

(assert (=> b!7764939 (= e!4601390 call!719397)))

(declare-fun b!7764940 () Bool)

(assert (=> b!7764940 (= e!4601394 e!4601390)))

(declare-fun res!3095595 () Bool)

(declare-fun nullable!9124 (Regex!20716) Bool)

(assert (=> b!7764940 (= res!3095595 (not (nullable!9124 (reg!21045 r1!3330))))))

(assert (=> b!7764940 (=> (not res!3095595) (not e!4601390))))

(assert (= (and d!2343868 (not res!3095594)) b!7764932))

(assert (= (and b!7764932 c!1431181) b!7764940))

(assert (= (and b!7764932 (not c!1431181)) b!7764937))

(assert (= (and b!7764940 res!3095595) b!7764939))

(assert (= (and b!7764937 c!1431180) b!7764934))

(assert (= (and b!7764937 (not c!1431180)) b!7764933))

(assert (= (and b!7764934 res!3095597) b!7764935))

(assert (= (and b!7764933 (not res!3095593)) b!7764936))

(assert (= (and b!7764936 res!3095596) b!7764938))

(assert (= (or b!7764934 b!7764936) bm!719392))

(assert (= (or b!7764935 b!7764938) bm!719390))

(assert (= (or b!7764939 bm!719392) bm!719391))

(declare-fun m!8222290 () Bool)

(assert (=> bm!719390 m!8222290))

(declare-fun m!8222292 () Bool)

(assert (=> bm!719391 m!8222292))

(declare-fun m!8222294 () Bool)

(assert (=> b!7764940 m!8222294))

(assert (=> start!739674 d!2343868))

(declare-fun d!2343872 () Bool)

(assert (=> d!2343872 (= (isDefined!14315 lt!2670744) (not (isEmpty!42111 lt!2670744)))))

(declare-fun bs!1966020 () Bool)

(assert (= bs!1966020 d!2343872))

(assert (=> bs!1966020 m!8222232))

(assert (=> b!7764824 d!2343872))

(declare-fun b!7764980 () Bool)

(declare-fun e!4601424 () Option!17703)

(assert (=> b!7764980 (= e!4601424 (Some!17702 (tuple2!69819 Nil!73435 s!10216)))))

(declare-fun b!7764981 () Bool)

(declare-fun e!4601421 () Bool)

(assert (=> b!7764981 (= e!4601421 (matchR!10182 r2!3230 s!10216))))

(declare-fun b!7764982 () Bool)

(declare-fun e!4601420 () Bool)

(declare-fun lt!2670767 () Option!17703)

(declare-fun get!26203 (Option!17703) tuple2!69818)

(assert (=> b!7764982 (= e!4601420 (= (++!17891 (_1!38212 (get!26203 lt!2670767)) (_2!38212 (get!26203 lt!2670767))) s!10216))))

(declare-fun b!7764983 () Bool)

(declare-datatypes ((Unit!168418 0))(
  ( (Unit!168419) )
))
(declare-fun lt!2670765 () Unit!168418)

(declare-fun lt!2670766 () Unit!168418)

(assert (=> b!7764983 (= lt!2670765 lt!2670766)))

(assert (=> b!7764983 (= (++!17891 (++!17891 Nil!73435 (Cons!73435 (h!79883 s!10216) Nil!73435)) (t!388294 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3375 (List!73559 C!41758 List!73559 List!73559) Unit!168418)

(assert (=> b!7764983 (= lt!2670766 (lemmaMoveElementToOtherListKeepsConcatEq!3375 Nil!73435 (h!79883 s!10216) (t!388294 s!10216) s!10216))))

(declare-fun e!4601423 () Option!17703)

(assert (=> b!7764983 (= e!4601423 (findConcatSeparation!3733 r1!3330 r2!3230 (++!17891 Nil!73435 (Cons!73435 (h!79883 s!10216) Nil!73435)) (t!388294 s!10216) s!10216))))

(declare-fun b!7764984 () Bool)

(declare-fun res!3095626 () Bool)

(assert (=> b!7764984 (=> (not res!3095626) (not e!4601420))))

(assert (=> b!7764984 (= res!3095626 (matchR!10182 r2!3230 (_2!38212 (get!26203 lt!2670767))))))

(declare-fun b!7764985 () Bool)

(assert (=> b!7764985 (= e!4601423 None!17702)))

(declare-fun b!7764986 () Bool)

(assert (=> b!7764986 (= e!4601424 e!4601423)))

(declare-fun c!1431189 () Bool)

(assert (=> b!7764986 (= c!1431189 (is-Nil!73435 s!10216))))

(declare-fun b!7764987 () Bool)

(declare-fun e!4601422 () Bool)

(assert (=> b!7764987 (= e!4601422 (not (isDefined!14315 lt!2670767)))))

(declare-fun b!7764979 () Bool)

(declare-fun res!3095624 () Bool)

(assert (=> b!7764979 (=> (not res!3095624) (not e!4601420))))

(assert (=> b!7764979 (= res!3095624 (matchR!10182 r1!3330 (_1!38212 (get!26203 lt!2670767))))))

(declare-fun d!2343874 () Bool)

(assert (=> d!2343874 e!4601422))

(declare-fun res!3095628 () Bool)

(assert (=> d!2343874 (=> res!3095628 e!4601422)))

(assert (=> d!2343874 (= res!3095628 e!4601420)))

(declare-fun res!3095625 () Bool)

(assert (=> d!2343874 (=> (not res!3095625) (not e!4601420))))

(assert (=> d!2343874 (= res!3095625 (isDefined!14315 lt!2670767))))

(assert (=> d!2343874 (= lt!2670767 e!4601424)))

(declare-fun c!1431188 () Bool)

(assert (=> d!2343874 (= c!1431188 e!4601421)))

(declare-fun res!3095627 () Bool)

(assert (=> d!2343874 (=> (not res!3095627) (not e!4601421))))

(assert (=> d!2343874 (= res!3095627 (matchR!10182 r1!3330 Nil!73435))))

(assert (=> d!2343874 (validRegex!11132 r1!3330)))

(assert (=> d!2343874 (= (findConcatSeparation!3733 r1!3330 r2!3230 Nil!73435 s!10216 s!10216) lt!2670767)))

(assert (= (and d!2343874 res!3095627) b!7764981))

(assert (= (and d!2343874 c!1431188) b!7764980))

(assert (= (and d!2343874 (not c!1431188)) b!7764986))

(assert (= (and b!7764986 c!1431189) b!7764985))

(assert (= (and b!7764986 (not c!1431189)) b!7764983))

(assert (= (and d!2343874 res!3095625) b!7764979))

(assert (= (and b!7764979 res!3095624) b!7764984))

(assert (= (and b!7764984 res!3095626) b!7764982))

(assert (= (and d!2343874 (not res!3095628)) b!7764987))

(declare-fun m!8222310 () Bool)

(assert (=> b!7764987 m!8222310))

(declare-fun m!8222314 () Bool)

(assert (=> b!7764979 m!8222314))

(declare-fun m!8222318 () Bool)

(assert (=> b!7764979 m!8222318))

(declare-fun m!8222322 () Bool)

(assert (=> b!7764983 m!8222322))

(assert (=> b!7764983 m!8222322))

(declare-fun m!8222326 () Bool)

(assert (=> b!7764983 m!8222326))

(declare-fun m!8222330 () Bool)

(assert (=> b!7764983 m!8222330))

(assert (=> b!7764983 m!8222322))

(declare-fun m!8222334 () Bool)

(assert (=> b!7764983 m!8222334))

(assert (=> d!2343874 m!8222310))

(declare-fun m!8222336 () Bool)

(assert (=> d!2343874 m!8222336))

(assert (=> d!2343874 m!8222242))

(assert (=> b!7764982 m!8222314))

(declare-fun m!8222338 () Bool)

(assert (=> b!7764982 m!8222338))

(declare-fun m!8222340 () Bool)

(assert (=> b!7764981 m!8222340))

(assert (=> b!7764984 m!8222314))

(declare-fun m!8222342 () Bool)

(assert (=> b!7764984 m!8222342))

(assert (=> b!7764824 d!2343874))

(declare-fun b!7764993 () Bool)

(declare-fun res!3095631 () Bool)

(declare-fun e!4601432 () Bool)

(assert (=> b!7764993 (=> res!3095631 e!4601432)))

(assert (=> b!7764993 (= res!3095631 (not (is-Concat!29561 r2!3230)))))

(declare-fun e!4601433 () Bool)

(assert (=> b!7764993 (= e!4601433 e!4601432)))

(declare-fun b!7764994 () Bool)

(declare-fun res!3095635 () Bool)

(declare-fun e!4601430 () Bool)

(assert (=> b!7764994 (=> (not res!3095635) (not e!4601430))))

(declare-fun call!719399 () Bool)

(assert (=> b!7764994 (= res!3095635 call!719399)))

(assert (=> b!7764994 (= e!4601433 e!4601430)))

(declare-fun b!7764995 () Bool)

(declare-fun call!719398 () Bool)

(assert (=> b!7764995 (= e!4601430 call!719398)))

(declare-fun b!7764996 () Bool)

(declare-fun e!4601428 () Bool)

(assert (=> b!7764996 (= e!4601432 e!4601428)))

(declare-fun res!3095634 () Bool)

(assert (=> b!7764996 (=> (not res!3095634) (not e!4601428))))

(assert (=> b!7764996 (= res!3095634 call!719399)))

(declare-fun b!7764997 () Bool)

(declare-fun e!4601431 () Bool)

(assert (=> b!7764997 (= e!4601431 e!4601433)))

(declare-fun c!1431191 () Bool)

(assert (=> b!7764997 (= c!1431191 (is-Union!20716 r2!3230))))

(declare-fun d!2343880 () Bool)

(declare-fun res!3095632 () Bool)

(declare-fun e!4601429 () Bool)

(assert (=> d!2343880 (=> res!3095632 e!4601429)))

(assert (=> d!2343880 (= res!3095632 (is-ElementMatch!20716 r2!3230))))

(assert (=> d!2343880 (= (validRegex!11132 r2!3230) e!4601429)))

(declare-fun b!7764992 () Bool)

(assert (=> b!7764992 (= e!4601429 e!4601431)))

(declare-fun c!1431192 () Bool)

(assert (=> b!7764992 (= c!1431192 (is-Star!20716 r2!3230))))

(declare-fun bm!719393 () Bool)

(assert (=> bm!719393 (= call!719398 (validRegex!11132 (ite c!1431191 (regTwo!41945 r2!3230) (regTwo!41944 r2!3230))))))

(declare-fun b!7764998 () Bool)

(assert (=> b!7764998 (= e!4601428 call!719398)))

(declare-fun bm!719394 () Bool)

(declare-fun call!719400 () Bool)

(assert (=> bm!719394 (= call!719400 (validRegex!11132 (ite c!1431192 (reg!21045 r2!3230) (ite c!1431191 (regOne!41945 r2!3230) (regOne!41944 r2!3230)))))))

(declare-fun bm!719395 () Bool)

(assert (=> bm!719395 (= call!719399 call!719400)))

(declare-fun b!7764999 () Bool)

(declare-fun e!4601427 () Bool)

(assert (=> b!7764999 (= e!4601427 call!719400)))

(declare-fun b!7765000 () Bool)

(assert (=> b!7765000 (= e!4601431 e!4601427)))

(declare-fun res!3095633 () Bool)

(assert (=> b!7765000 (= res!3095633 (not (nullable!9124 (reg!21045 r2!3230))))))

(assert (=> b!7765000 (=> (not res!3095633) (not e!4601427))))

(assert (= (and d!2343880 (not res!3095632)) b!7764992))

(assert (= (and b!7764992 c!1431192) b!7765000))

(assert (= (and b!7764992 (not c!1431192)) b!7764997))

(assert (= (and b!7765000 res!3095633) b!7764999))

(assert (= (and b!7764997 c!1431191) b!7764994))

(assert (= (and b!7764997 (not c!1431191)) b!7764993))

(assert (= (and b!7764994 res!3095635) b!7764995))

(assert (= (and b!7764993 (not res!3095631)) b!7764996))

(assert (= (and b!7764996 res!3095634) b!7764998))

(assert (= (or b!7764994 b!7764996) bm!719395))

(assert (= (or b!7764995 b!7764998) bm!719393))

(assert (= (or b!7764999 bm!719395) bm!719394))

(declare-fun m!8222344 () Bool)

(assert (=> bm!719393 m!8222344))

(declare-fun m!8222346 () Bool)

(assert (=> bm!719394 m!8222346))

(declare-fun m!8222348 () Bool)

(assert (=> b!7765000 m!8222348))

(assert (=> b!7764827 d!2343880))

(declare-fun b!7765029 () Bool)

(declare-fun e!4601451 () Bool)

(declare-fun derivativeStep!6067 (Regex!20716 C!41758) Regex!20716)

(declare-fun head!15863 (List!73559) C!41758)

(declare-fun tail!15403 (List!73559) List!73559)

(assert (=> b!7765029 (= e!4601451 (matchR!10182 (derivativeStep!6067 r1!3330 (head!15863 (_1!38212 lt!2670743))) (tail!15403 (_1!38212 lt!2670743))))))

(declare-fun b!7765030 () Bool)

(declare-fun e!4601454 () Bool)

(assert (=> b!7765030 (= e!4601454 (= (head!15863 (_1!38212 lt!2670743)) (c!1431171 r1!3330)))))

(declare-fun b!7765031 () Bool)

(declare-fun e!4601449 () Bool)

(assert (=> b!7765031 (= e!4601449 (not (= (head!15863 (_1!38212 lt!2670743)) (c!1431171 r1!3330))))))

(declare-fun b!7765032 () Bool)

(declare-fun e!4601450 () Bool)

(declare-fun lt!2670774 () Bool)

(declare-fun call!719403 () Bool)

(assert (=> b!7765032 (= e!4601450 (= lt!2670774 call!719403))))

(declare-fun bm!719398 () Bool)

(declare-fun isEmpty!42113 (List!73559) Bool)

(assert (=> bm!719398 (= call!719403 (isEmpty!42113 (_1!38212 lt!2670743)))))

(declare-fun b!7765033 () Bool)

(declare-fun e!4601448 () Bool)

(assert (=> b!7765033 (= e!4601448 (not lt!2670774))))

(declare-fun b!7765034 () Bool)

(declare-fun res!3095652 () Bool)

(assert (=> b!7765034 (=> res!3095652 e!4601449)))

(assert (=> b!7765034 (= res!3095652 (not (isEmpty!42113 (tail!15403 (_1!38212 lt!2670743)))))))

(declare-fun b!7765035 () Bool)

(assert (=> b!7765035 (= e!4601450 e!4601448)))

(declare-fun c!1431199 () Bool)

(assert (=> b!7765035 (= c!1431199 (is-EmptyLang!20716 r1!3330))))

(declare-fun b!7765036 () Bool)

(declare-fun res!3095657 () Bool)

(declare-fun e!4601453 () Bool)

(assert (=> b!7765036 (=> res!3095657 e!4601453)))

(assert (=> b!7765036 (= res!3095657 e!4601454)))

(declare-fun res!3095655 () Bool)

(assert (=> b!7765036 (=> (not res!3095655) (not e!4601454))))

(assert (=> b!7765036 (= res!3095655 lt!2670774)))

(declare-fun d!2343882 () Bool)

(assert (=> d!2343882 e!4601450))

(declare-fun c!1431201 () Bool)

(assert (=> d!2343882 (= c!1431201 (is-EmptyExpr!20716 r1!3330))))

(assert (=> d!2343882 (= lt!2670774 e!4601451)))

(declare-fun c!1431200 () Bool)

(assert (=> d!2343882 (= c!1431200 (isEmpty!42113 (_1!38212 lt!2670743)))))

(assert (=> d!2343882 (validRegex!11132 r1!3330)))

(assert (=> d!2343882 (= (matchR!10182 r1!3330 (_1!38212 lt!2670743)) lt!2670774)))

(declare-fun b!7765037 () Bool)

(declare-fun e!4601452 () Bool)

(assert (=> b!7765037 (= e!4601452 e!4601449)))

(declare-fun res!3095659 () Bool)

(assert (=> b!7765037 (=> res!3095659 e!4601449)))

(assert (=> b!7765037 (= res!3095659 call!719403)))

(declare-fun b!7765038 () Bool)

(declare-fun res!3095654 () Bool)

(assert (=> b!7765038 (=> (not res!3095654) (not e!4601454))))

(assert (=> b!7765038 (= res!3095654 (isEmpty!42113 (tail!15403 (_1!38212 lt!2670743))))))

(declare-fun b!7765039 () Bool)

(declare-fun res!3095658 () Bool)

(assert (=> b!7765039 (=> res!3095658 e!4601453)))

(assert (=> b!7765039 (= res!3095658 (not (is-ElementMatch!20716 r1!3330)))))

(assert (=> b!7765039 (= e!4601448 e!4601453)))

(declare-fun b!7765040 () Bool)

(declare-fun res!3095653 () Bool)

(assert (=> b!7765040 (=> (not res!3095653) (not e!4601454))))

(assert (=> b!7765040 (= res!3095653 (not call!719403))))

(declare-fun b!7765041 () Bool)

(assert (=> b!7765041 (= e!4601453 e!4601452)))

(declare-fun res!3095656 () Bool)

(assert (=> b!7765041 (=> (not res!3095656) (not e!4601452))))

(assert (=> b!7765041 (= res!3095656 (not lt!2670774))))

(declare-fun b!7765042 () Bool)

(assert (=> b!7765042 (= e!4601451 (nullable!9124 r1!3330))))

(assert (= (and d!2343882 c!1431200) b!7765042))

(assert (= (and d!2343882 (not c!1431200)) b!7765029))

(assert (= (and d!2343882 c!1431201) b!7765032))

(assert (= (and d!2343882 (not c!1431201)) b!7765035))

(assert (= (and b!7765035 c!1431199) b!7765033))

(assert (= (and b!7765035 (not c!1431199)) b!7765039))

(assert (= (and b!7765039 (not res!3095658)) b!7765036))

(assert (= (and b!7765036 res!3095655) b!7765040))

(assert (= (and b!7765040 res!3095653) b!7765038))

(assert (= (and b!7765038 res!3095654) b!7765030))

(assert (= (and b!7765036 (not res!3095657)) b!7765041))

(assert (= (and b!7765041 res!3095656) b!7765037))

(assert (= (and b!7765037 (not res!3095659)) b!7765034))

(assert (= (and b!7765034 (not res!3095652)) b!7765031))

(assert (= (or b!7765032 b!7765037 b!7765040) bm!719398))

(declare-fun m!8222356 () Bool)

(assert (=> bm!719398 m!8222356))

(declare-fun m!8222358 () Bool)

(assert (=> b!7765031 m!8222358))

(assert (=> b!7765029 m!8222358))

(assert (=> b!7765029 m!8222358))

(declare-fun m!8222360 () Bool)

(assert (=> b!7765029 m!8222360))

(declare-fun m!8222362 () Bool)

(assert (=> b!7765029 m!8222362))

(assert (=> b!7765029 m!8222360))

(assert (=> b!7765029 m!8222362))

(declare-fun m!8222364 () Bool)

(assert (=> b!7765029 m!8222364))

(assert (=> b!7765038 m!8222362))

(assert (=> b!7765038 m!8222362))

(declare-fun m!8222366 () Bool)

(assert (=> b!7765038 m!8222366))

(assert (=> b!7765034 m!8222362))

(assert (=> b!7765034 m!8222362))

(assert (=> b!7765034 m!8222366))

(assert (=> b!7765030 m!8222358))

(assert (=> d!2343882 m!8222356))

(assert (=> d!2343882 m!8222242))

(declare-fun m!8222368 () Bool)

(assert (=> b!7765042 m!8222368))

(assert (=> b!7764822 d!2343882))

(declare-fun b!7765043 () Bool)

(declare-fun e!4601458 () Bool)

(assert (=> b!7765043 (= e!4601458 (matchR!10182 (derivativeStep!6067 r2!3230 (head!15863 (_2!38212 lt!2670743))) (tail!15403 (_2!38212 lt!2670743))))))

(declare-fun b!7765044 () Bool)

(declare-fun e!4601461 () Bool)

(assert (=> b!7765044 (= e!4601461 (= (head!15863 (_2!38212 lt!2670743)) (c!1431171 r2!3230)))))

(declare-fun b!7765045 () Bool)

(declare-fun e!4601456 () Bool)

(assert (=> b!7765045 (= e!4601456 (not (= (head!15863 (_2!38212 lt!2670743)) (c!1431171 r2!3230))))))

(declare-fun b!7765046 () Bool)

(declare-fun e!4601457 () Bool)

(declare-fun lt!2670775 () Bool)

(declare-fun call!719404 () Bool)

(assert (=> b!7765046 (= e!4601457 (= lt!2670775 call!719404))))

(declare-fun bm!719399 () Bool)

(assert (=> bm!719399 (= call!719404 (isEmpty!42113 (_2!38212 lt!2670743)))))

(declare-fun b!7765047 () Bool)

(declare-fun e!4601455 () Bool)

(assert (=> b!7765047 (= e!4601455 (not lt!2670775))))

(declare-fun b!7765048 () Bool)

(declare-fun res!3095660 () Bool)

(assert (=> b!7765048 (=> res!3095660 e!4601456)))

(assert (=> b!7765048 (= res!3095660 (not (isEmpty!42113 (tail!15403 (_2!38212 lt!2670743)))))))

(declare-fun b!7765049 () Bool)

(assert (=> b!7765049 (= e!4601457 e!4601455)))

(declare-fun c!1431202 () Bool)

(assert (=> b!7765049 (= c!1431202 (is-EmptyLang!20716 r2!3230))))

(declare-fun b!7765050 () Bool)

(declare-fun res!3095665 () Bool)

(declare-fun e!4601460 () Bool)

(assert (=> b!7765050 (=> res!3095665 e!4601460)))

(assert (=> b!7765050 (= res!3095665 e!4601461)))

(declare-fun res!3095663 () Bool)

(assert (=> b!7765050 (=> (not res!3095663) (not e!4601461))))

(assert (=> b!7765050 (= res!3095663 lt!2670775)))

(declare-fun d!2343890 () Bool)

(assert (=> d!2343890 e!4601457))

(declare-fun c!1431204 () Bool)

(assert (=> d!2343890 (= c!1431204 (is-EmptyExpr!20716 r2!3230))))

(assert (=> d!2343890 (= lt!2670775 e!4601458)))

(declare-fun c!1431203 () Bool)

(assert (=> d!2343890 (= c!1431203 (isEmpty!42113 (_2!38212 lt!2670743)))))

(assert (=> d!2343890 (validRegex!11132 r2!3230)))

(assert (=> d!2343890 (= (matchR!10182 r2!3230 (_2!38212 lt!2670743)) lt!2670775)))

(declare-fun b!7765051 () Bool)

(declare-fun e!4601459 () Bool)

(assert (=> b!7765051 (= e!4601459 e!4601456)))

(declare-fun res!3095667 () Bool)

(assert (=> b!7765051 (=> res!3095667 e!4601456)))

(assert (=> b!7765051 (= res!3095667 call!719404)))

(declare-fun b!7765052 () Bool)

(declare-fun res!3095662 () Bool)

(assert (=> b!7765052 (=> (not res!3095662) (not e!4601461))))

(assert (=> b!7765052 (= res!3095662 (isEmpty!42113 (tail!15403 (_2!38212 lt!2670743))))))

(declare-fun b!7765053 () Bool)

(declare-fun res!3095666 () Bool)

(assert (=> b!7765053 (=> res!3095666 e!4601460)))

(assert (=> b!7765053 (= res!3095666 (not (is-ElementMatch!20716 r2!3230)))))

(assert (=> b!7765053 (= e!4601455 e!4601460)))

(declare-fun b!7765054 () Bool)

(declare-fun res!3095661 () Bool)

(assert (=> b!7765054 (=> (not res!3095661) (not e!4601461))))

(assert (=> b!7765054 (= res!3095661 (not call!719404))))

(declare-fun b!7765055 () Bool)

(assert (=> b!7765055 (= e!4601460 e!4601459)))

(declare-fun res!3095664 () Bool)

(assert (=> b!7765055 (=> (not res!3095664) (not e!4601459))))

(assert (=> b!7765055 (= res!3095664 (not lt!2670775))))

(declare-fun b!7765056 () Bool)

(assert (=> b!7765056 (= e!4601458 (nullable!9124 r2!3230))))

(assert (= (and d!2343890 c!1431203) b!7765056))

(assert (= (and d!2343890 (not c!1431203)) b!7765043))

(assert (= (and d!2343890 c!1431204) b!7765046))

(assert (= (and d!2343890 (not c!1431204)) b!7765049))

(assert (= (and b!7765049 c!1431202) b!7765047))

(assert (= (and b!7765049 (not c!1431202)) b!7765053))

(assert (= (and b!7765053 (not res!3095666)) b!7765050))

(assert (= (and b!7765050 res!3095663) b!7765054))

(assert (= (and b!7765054 res!3095661) b!7765052))

(assert (= (and b!7765052 res!3095662) b!7765044))

(assert (= (and b!7765050 (not res!3095665)) b!7765055))

(assert (= (and b!7765055 res!3095664) b!7765051))

(assert (= (and b!7765051 (not res!3095667)) b!7765048))

(assert (= (and b!7765048 (not res!3095660)) b!7765045))

(assert (= (or b!7765046 b!7765051 b!7765054) bm!719399))

(declare-fun m!8222370 () Bool)

(assert (=> bm!719399 m!8222370))

(declare-fun m!8222372 () Bool)

(assert (=> b!7765045 m!8222372))

(assert (=> b!7765043 m!8222372))

(assert (=> b!7765043 m!8222372))

(declare-fun m!8222374 () Bool)

(assert (=> b!7765043 m!8222374))

(declare-fun m!8222376 () Bool)

(assert (=> b!7765043 m!8222376))

(assert (=> b!7765043 m!8222374))

(assert (=> b!7765043 m!8222376))

(declare-fun m!8222378 () Bool)

(assert (=> b!7765043 m!8222378))

(assert (=> b!7765052 m!8222376))

(assert (=> b!7765052 m!8222376))

(declare-fun m!8222380 () Bool)

(assert (=> b!7765052 m!8222380))

(assert (=> b!7765048 m!8222376))

(assert (=> b!7765048 m!8222376))

(assert (=> b!7765048 m!8222380))

(assert (=> b!7765044 m!8222372))

(assert (=> d!2343890 m!8222370))

(assert (=> d!2343890 m!8222234))

(declare-fun m!8222382 () Bool)

(assert (=> b!7765056 m!8222382))

(assert (=> b!7764831 d!2343890))

(declare-fun b!7765059 () Bool)

(declare-fun res!3095668 () Bool)

(declare-fun e!4601463 () Bool)

(assert (=> b!7765059 (=> (not res!3095668) (not e!4601463))))

(declare-fun lt!2670776 () List!73559)

(assert (=> b!7765059 (= res!3095668 (= (size!42693 lt!2670776) (+ (size!42693 (_1!38212 lt!2670743)) (size!42693 (_2!38212 lt!2670743)))))))

(declare-fun d!2343892 () Bool)

(assert (=> d!2343892 e!4601463))

(declare-fun res!3095669 () Bool)

(assert (=> d!2343892 (=> (not res!3095669) (not e!4601463))))

(assert (=> d!2343892 (= res!3095669 (= (content!15590 lt!2670776) (set.union (content!15590 (_1!38212 lt!2670743)) (content!15590 (_2!38212 lt!2670743)))))))

(declare-fun e!4601462 () List!73559)

(assert (=> d!2343892 (= lt!2670776 e!4601462)))

(declare-fun c!1431205 () Bool)

(assert (=> d!2343892 (= c!1431205 (is-Nil!73435 (_1!38212 lt!2670743)))))

(assert (=> d!2343892 (= (++!17891 (_1!38212 lt!2670743) (_2!38212 lt!2670743)) lt!2670776)))

(declare-fun b!7765057 () Bool)

(assert (=> b!7765057 (= e!4601462 (_2!38212 lt!2670743))))

(declare-fun b!7765060 () Bool)

(assert (=> b!7765060 (= e!4601463 (or (not (= (_2!38212 lt!2670743) Nil!73435)) (= lt!2670776 (_1!38212 lt!2670743))))))

(declare-fun b!7765058 () Bool)

(assert (=> b!7765058 (= e!4601462 (Cons!73435 (h!79883 (_1!38212 lt!2670743)) (++!17891 (t!388294 (_1!38212 lt!2670743)) (_2!38212 lt!2670743))))))

(assert (= (and d!2343892 c!1431205) b!7765057))

(assert (= (and d!2343892 (not c!1431205)) b!7765058))

(assert (= (and d!2343892 res!3095669) b!7765059))

(assert (= (and b!7765059 res!3095668) b!7765060))

(declare-fun m!8222384 () Bool)

(assert (=> b!7765059 m!8222384))

(declare-fun m!8222386 () Bool)

(assert (=> b!7765059 m!8222386))

(declare-fun m!8222388 () Bool)

(assert (=> b!7765059 m!8222388))

(declare-fun m!8222390 () Bool)

(assert (=> d!2343892 m!8222390))

(declare-fun m!8222392 () Bool)

(assert (=> d!2343892 m!8222392))

(declare-fun m!8222394 () Bool)

(assert (=> d!2343892 m!8222394))

(declare-fun m!8222396 () Bool)

(assert (=> b!7765058 m!8222396))

(assert (=> b!7764815 d!2343892))

(declare-fun d!2343894 () Bool)

(declare-fun lt!2670779 () tuple2!69818)

(declare-fun dynLambda!29999 (Int tuple2!69818) Bool)

(assert (=> d!2343894 (dynLambda!29999 lambda!472102 lt!2670779)))

(declare-fun choose!59460 (Int) tuple2!69818)

(assert (=> d!2343894 (= lt!2670779 (choose!59460 lambda!472102))))

(assert (=> d!2343894 (Exists!4754 lambda!472102)))

(assert (=> d!2343894 (= (pickWitness!573 lambda!472102) lt!2670779)))

(declare-fun b_lambda!289485 () Bool)

(assert (=> (not b_lambda!289485) (not d!2343894)))

(declare-fun bs!1966024 () Bool)

(assert (= bs!1966024 d!2343894))

(declare-fun m!8222398 () Bool)

(assert (=> bs!1966024 m!8222398))

(declare-fun m!8222400 () Bool)

(assert (=> bs!1966024 m!8222400))

(assert (=> bs!1966024 m!8222236))

(assert (=> b!7764815 d!2343894))

(declare-fun b!7765072 () Bool)

(declare-fun e!4601472 () Bool)

(assert (=> b!7765072 (= e!4601472 (>= (size!42693 (_1!38212 lt!2670743)) (size!42693 Nil!73435)))))

(declare-fun b!7765070 () Bool)

(declare-fun res!3095681 () Bool)

(declare-fun e!4601470 () Bool)

(assert (=> b!7765070 (=> (not res!3095681) (not e!4601470))))

(assert (=> b!7765070 (= res!3095681 (= (head!15863 Nil!73435) (head!15863 (_1!38212 lt!2670743))))))

(declare-fun d!2343896 () Bool)

(assert (=> d!2343896 e!4601472))

(declare-fun res!3095679 () Bool)

(assert (=> d!2343896 (=> res!3095679 e!4601472)))

(declare-fun lt!2670782 () Bool)

(assert (=> d!2343896 (= res!3095679 (not lt!2670782))))

(declare-fun e!4601471 () Bool)

(assert (=> d!2343896 (= lt!2670782 e!4601471)))

(declare-fun res!3095678 () Bool)

(assert (=> d!2343896 (=> res!3095678 e!4601471)))

(assert (=> d!2343896 (= res!3095678 (is-Nil!73435 Nil!73435))))

(assert (=> d!2343896 (= (isPrefix!6244 Nil!73435 (_1!38212 lt!2670743)) lt!2670782)))

(declare-fun b!7765069 () Bool)

(assert (=> b!7765069 (= e!4601471 e!4601470)))

(declare-fun res!3095680 () Bool)

(assert (=> b!7765069 (=> (not res!3095680) (not e!4601470))))

(assert (=> b!7765069 (= res!3095680 (not (is-Nil!73435 (_1!38212 lt!2670743))))))

(declare-fun b!7765071 () Bool)

(assert (=> b!7765071 (= e!4601470 (isPrefix!6244 (tail!15403 Nil!73435) (tail!15403 (_1!38212 lt!2670743))))))

(assert (= (and d!2343896 (not res!3095678)) b!7765069))

(assert (= (and b!7765069 res!3095680) b!7765070))

(assert (= (and b!7765070 res!3095681) b!7765071))

(assert (= (and d!2343896 (not res!3095679)) b!7765072))

(assert (=> b!7765072 m!8222386))

(assert (=> b!7765072 m!8222276))

(declare-fun m!8222402 () Bool)

(assert (=> b!7765070 m!8222402))

(assert (=> b!7765070 m!8222358))

(declare-fun m!8222404 () Bool)

(assert (=> b!7765071 m!8222404))

(assert (=> b!7765071 m!8222362))

(assert (=> b!7765071 m!8222404))

(assert (=> b!7765071 m!8222362))

(declare-fun m!8222406 () Bool)

(assert (=> b!7765071 m!8222406))

(assert (=> b!7764821 d!2343896))

(declare-fun b!7765077 () Bool)

(declare-fun e!4601475 () Bool)

(declare-fun tp!2280882 () Bool)

(assert (=> b!7765077 (= e!4601475 (and tp_is_empty!51787 tp!2280882))))

(assert (=> b!7764814 (= tp!2280837 e!4601475)))

(assert (= (and b!7764814 (is-Cons!73435 (t!388294 s!10216))) b!7765077))

(declare-fun b!7765091 () Bool)

(declare-fun e!4601478 () Bool)

(declare-fun tp!2280897 () Bool)

(declare-fun tp!2280896 () Bool)

(assert (=> b!7765091 (= e!4601478 (and tp!2280897 tp!2280896))))

(declare-fun b!7765088 () Bool)

(assert (=> b!7765088 (= e!4601478 tp_is_empty!51787)))

(assert (=> b!7764825 (= tp!2280840 e!4601478)))

(declare-fun b!7765090 () Bool)

(declare-fun tp!2280893 () Bool)

(assert (=> b!7765090 (= e!4601478 tp!2280893)))

(declare-fun b!7765089 () Bool)

(declare-fun tp!2280895 () Bool)

(declare-fun tp!2280894 () Bool)

(assert (=> b!7765089 (= e!4601478 (and tp!2280895 tp!2280894))))

(assert (= (and b!7764825 (is-ElementMatch!20716 (regOne!41945 r1!3330))) b!7765088))

(assert (= (and b!7764825 (is-Concat!29561 (regOne!41945 r1!3330))) b!7765089))

(assert (= (and b!7764825 (is-Star!20716 (regOne!41945 r1!3330))) b!7765090))

(assert (= (and b!7764825 (is-Union!20716 (regOne!41945 r1!3330))) b!7765091))

(declare-fun b!7765095 () Bool)

(declare-fun e!4601479 () Bool)

(declare-fun tp!2280902 () Bool)

(declare-fun tp!2280901 () Bool)

(assert (=> b!7765095 (= e!4601479 (and tp!2280902 tp!2280901))))

(declare-fun b!7765092 () Bool)

(assert (=> b!7765092 (= e!4601479 tp_is_empty!51787)))

(assert (=> b!7764825 (= tp!2280845 e!4601479)))

(declare-fun b!7765094 () Bool)

(declare-fun tp!2280898 () Bool)

(assert (=> b!7765094 (= e!4601479 tp!2280898)))

(declare-fun b!7765093 () Bool)

(declare-fun tp!2280900 () Bool)

(declare-fun tp!2280899 () Bool)

(assert (=> b!7765093 (= e!4601479 (and tp!2280900 tp!2280899))))

(assert (= (and b!7764825 (is-ElementMatch!20716 (regTwo!41945 r1!3330))) b!7765092))

(assert (= (and b!7764825 (is-Concat!29561 (regTwo!41945 r1!3330))) b!7765093))

(assert (= (and b!7764825 (is-Star!20716 (regTwo!41945 r1!3330))) b!7765094))

(assert (= (and b!7764825 (is-Union!20716 (regTwo!41945 r1!3330))) b!7765095))

(declare-fun b!7765099 () Bool)

(declare-fun e!4601480 () Bool)

(declare-fun tp!2280907 () Bool)

(declare-fun tp!2280906 () Bool)

(assert (=> b!7765099 (= e!4601480 (and tp!2280907 tp!2280906))))

(declare-fun b!7765096 () Bool)

(assert (=> b!7765096 (= e!4601480 tp_is_empty!51787)))

(assert (=> b!7764820 (= tp!2280836 e!4601480)))

(declare-fun b!7765098 () Bool)

(declare-fun tp!2280903 () Bool)

(assert (=> b!7765098 (= e!4601480 tp!2280903)))

(declare-fun b!7765097 () Bool)

(declare-fun tp!2280905 () Bool)

(declare-fun tp!2280904 () Bool)

(assert (=> b!7765097 (= e!4601480 (and tp!2280905 tp!2280904))))

(assert (= (and b!7764820 (is-ElementMatch!20716 (regOne!41944 r1!3330))) b!7765096))

(assert (= (and b!7764820 (is-Concat!29561 (regOne!41944 r1!3330))) b!7765097))

(assert (= (and b!7764820 (is-Star!20716 (regOne!41944 r1!3330))) b!7765098))

(assert (= (and b!7764820 (is-Union!20716 (regOne!41944 r1!3330))) b!7765099))

(declare-fun b!7765103 () Bool)

(declare-fun e!4601481 () Bool)

(declare-fun tp!2280912 () Bool)

(declare-fun tp!2280911 () Bool)

(assert (=> b!7765103 (= e!4601481 (and tp!2280912 tp!2280911))))

(declare-fun b!7765100 () Bool)

(assert (=> b!7765100 (= e!4601481 tp_is_empty!51787)))

(assert (=> b!7764820 (= tp!2280842 e!4601481)))

(declare-fun b!7765102 () Bool)

(declare-fun tp!2280908 () Bool)

(assert (=> b!7765102 (= e!4601481 tp!2280908)))

(declare-fun b!7765101 () Bool)

(declare-fun tp!2280910 () Bool)

(declare-fun tp!2280909 () Bool)

(assert (=> b!7765101 (= e!4601481 (and tp!2280910 tp!2280909))))

(assert (= (and b!7764820 (is-ElementMatch!20716 (regTwo!41944 r1!3330))) b!7765100))

(assert (= (and b!7764820 (is-Concat!29561 (regTwo!41944 r1!3330))) b!7765101))

(assert (= (and b!7764820 (is-Star!20716 (regTwo!41944 r1!3330))) b!7765102))

(assert (= (and b!7764820 (is-Union!20716 (regTwo!41944 r1!3330))) b!7765103))

(declare-fun b!7765107 () Bool)

(declare-fun e!4601482 () Bool)

(declare-fun tp!2280917 () Bool)

(declare-fun tp!2280916 () Bool)

(assert (=> b!7765107 (= e!4601482 (and tp!2280917 tp!2280916))))

(declare-fun b!7765104 () Bool)

(assert (=> b!7765104 (= e!4601482 tp_is_empty!51787)))

(assert (=> b!7764823 (= tp!2280843 e!4601482)))

(declare-fun b!7765106 () Bool)

(declare-fun tp!2280913 () Bool)

(assert (=> b!7765106 (= e!4601482 tp!2280913)))

(declare-fun b!7765105 () Bool)

(declare-fun tp!2280915 () Bool)

(declare-fun tp!2280914 () Bool)

(assert (=> b!7765105 (= e!4601482 (and tp!2280915 tp!2280914))))

(assert (= (and b!7764823 (is-ElementMatch!20716 (regOne!41944 r2!3230))) b!7765104))

(assert (= (and b!7764823 (is-Concat!29561 (regOne!41944 r2!3230))) b!7765105))

(assert (= (and b!7764823 (is-Star!20716 (regOne!41944 r2!3230))) b!7765106))

(assert (= (and b!7764823 (is-Union!20716 (regOne!41944 r2!3230))) b!7765107))

(declare-fun b!7765111 () Bool)

(declare-fun e!4601483 () Bool)

(declare-fun tp!2280922 () Bool)

(declare-fun tp!2280921 () Bool)

(assert (=> b!7765111 (= e!4601483 (and tp!2280922 tp!2280921))))

(declare-fun b!7765108 () Bool)

(assert (=> b!7765108 (= e!4601483 tp_is_empty!51787)))

(assert (=> b!7764823 (= tp!2280839 e!4601483)))

(declare-fun b!7765110 () Bool)

(declare-fun tp!2280918 () Bool)

(assert (=> b!7765110 (= e!4601483 tp!2280918)))

(declare-fun b!7765109 () Bool)

(declare-fun tp!2280920 () Bool)

(declare-fun tp!2280919 () Bool)

(assert (=> b!7765109 (= e!4601483 (and tp!2280920 tp!2280919))))

(assert (= (and b!7764823 (is-ElementMatch!20716 (regTwo!41944 r2!3230))) b!7765108))

(assert (= (and b!7764823 (is-Concat!29561 (regTwo!41944 r2!3230))) b!7765109))

(assert (= (and b!7764823 (is-Star!20716 (regTwo!41944 r2!3230))) b!7765110))

(assert (= (and b!7764823 (is-Union!20716 (regTwo!41944 r2!3230))) b!7765111))

(declare-fun b!7765115 () Bool)

(declare-fun e!4601484 () Bool)

(declare-fun tp!2280927 () Bool)

(declare-fun tp!2280926 () Bool)

(assert (=> b!7765115 (= e!4601484 (and tp!2280927 tp!2280926))))

(declare-fun b!7765112 () Bool)

(assert (=> b!7765112 (= e!4601484 tp_is_empty!51787)))

(assert (=> b!7764829 (= tp!2280844 e!4601484)))

(declare-fun b!7765114 () Bool)

(declare-fun tp!2280923 () Bool)

(assert (=> b!7765114 (= e!4601484 tp!2280923)))

(declare-fun b!7765113 () Bool)

(declare-fun tp!2280925 () Bool)

(declare-fun tp!2280924 () Bool)

(assert (=> b!7765113 (= e!4601484 (and tp!2280925 tp!2280924))))

(assert (= (and b!7764829 (is-ElementMatch!20716 (regOne!41945 r2!3230))) b!7765112))

(assert (= (and b!7764829 (is-Concat!29561 (regOne!41945 r2!3230))) b!7765113))

(assert (= (and b!7764829 (is-Star!20716 (regOne!41945 r2!3230))) b!7765114))

(assert (= (and b!7764829 (is-Union!20716 (regOne!41945 r2!3230))) b!7765115))

(declare-fun b!7765119 () Bool)

(declare-fun e!4601485 () Bool)

(declare-fun tp!2280932 () Bool)

(declare-fun tp!2280931 () Bool)

(assert (=> b!7765119 (= e!4601485 (and tp!2280932 tp!2280931))))

(declare-fun b!7765116 () Bool)

(assert (=> b!7765116 (= e!4601485 tp_is_empty!51787)))

(assert (=> b!7764829 (= tp!2280846 e!4601485)))

(declare-fun b!7765118 () Bool)

(declare-fun tp!2280928 () Bool)

(assert (=> b!7765118 (= e!4601485 tp!2280928)))

(declare-fun b!7765117 () Bool)

(declare-fun tp!2280930 () Bool)

(declare-fun tp!2280929 () Bool)

(assert (=> b!7765117 (= e!4601485 (and tp!2280930 tp!2280929))))

(assert (= (and b!7764829 (is-ElementMatch!20716 (regTwo!41945 r2!3230))) b!7765116))

(assert (= (and b!7764829 (is-Concat!29561 (regTwo!41945 r2!3230))) b!7765117))

(assert (= (and b!7764829 (is-Star!20716 (regTwo!41945 r2!3230))) b!7765118))

(assert (= (and b!7764829 (is-Union!20716 (regTwo!41945 r2!3230))) b!7765119))

(declare-fun b!7765123 () Bool)

(declare-fun e!4601486 () Bool)

(declare-fun tp!2280937 () Bool)

(declare-fun tp!2280936 () Bool)

(assert (=> b!7765123 (= e!4601486 (and tp!2280937 tp!2280936))))

(declare-fun b!7765120 () Bool)

(assert (=> b!7765120 (= e!4601486 tp_is_empty!51787)))

(assert (=> b!7764817 (= tp!2280841 e!4601486)))

(declare-fun b!7765122 () Bool)

(declare-fun tp!2280933 () Bool)

(assert (=> b!7765122 (= e!4601486 tp!2280933)))

(declare-fun b!7765121 () Bool)

(declare-fun tp!2280935 () Bool)

(declare-fun tp!2280934 () Bool)

(assert (=> b!7765121 (= e!4601486 (and tp!2280935 tp!2280934))))

(assert (= (and b!7764817 (is-ElementMatch!20716 (reg!21045 r2!3230))) b!7765120))

(assert (= (and b!7764817 (is-Concat!29561 (reg!21045 r2!3230))) b!7765121))

(assert (= (and b!7764817 (is-Star!20716 (reg!21045 r2!3230))) b!7765122))

(assert (= (and b!7764817 (is-Union!20716 (reg!21045 r2!3230))) b!7765123))

(declare-fun b!7765127 () Bool)

(declare-fun e!4601487 () Bool)

(declare-fun tp!2280942 () Bool)

(declare-fun tp!2280941 () Bool)

(assert (=> b!7765127 (= e!4601487 (and tp!2280942 tp!2280941))))

(declare-fun b!7765124 () Bool)

(assert (=> b!7765124 (= e!4601487 tp_is_empty!51787)))

(assert (=> b!7764828 (= tp!2280838 e!4601487)))

(declare-fun b!7765126 () Bool)

(declare-fun tp!2280938 () Bool)

(assert (=> b!7765126 (= e!4601487 tp!2280938)))

(declare-fun b!7765125 () Bool)

(declare-fun tp!2280940 () Bool)

(declare-fun tp!2280939 () Bool)

(assert (=> b!7765125 (= e!4601487 (and tp!2280940 tp!2280939))))

(assert (= (and b!7764828 (is-ElementMatch!20716 (reg!21045 r1!3330))) b!7765124))

(assert (= (and b!7764828 (is-Concat!29561 (reg!21045 r1!3330))) b!7765125))

(assert (= (and b!7764828 (is-Star!20716 (reg!21045 r1!3330))) b!7765126))

(assert (= (and b!7764828 (is-Union!20716 (reg!21045 r1!3330))) b!7765127))

(declare-fun b_lambda!289487 () Bool)

(assert (= b_lambda!289485 (or b!7764818 b_lambda!289487)))

(declare-fun bs!1966025 () Bool)

(declare-fun d!2343898 () Bool)

(assert (= bs!1966025 (and d!2343898 b!7764818)))

(declare-fun res!3095682 () Bool)

(declare-fun e!4601488 () Bool)

(assert (=> bs!1966025 (=> (not res!3095682) (not e!4601488))))

(assert (=> bs!1966025 (= res!3095682 (= (++!17891 (_1!38212 lt!2670779) (_2!38212 lt!2670779)) s!10216))))

(assert (=> bs!1966025 (= (dynLambda!29999 lambda!472102 lt!2670779) e!4601488)))

(declare-fun b!7765128 () Bool)

(declare-fun res!3095683 () Bool)

(assert (=> b!7765128 (=> (not res!3095683) (not e!4601488))))

(assert (=> b!7765128 (= res!3095683 (matchR!10182 r1!3330 (_1!38212 lt!2670779)))))

(declare-fun b!7765129 () Bool)

(assert (=> b!7765129 (= e!4601488 (matchR!10182 r2!3230 (_2!38212 lt!2670779)))))

(assert (= (and bs!1966025 res!3095682) b!7765128))

(assert (= (and b!7765128 res!3095683) b!7765129))

(declare-fun m!8222408 () Bool)

(assert (=> bs!1966025 m!8222408))

(declare-fun m!8222410 () Bool)

(assert (=> b!7765128 m!8222410))

(declare-fun m!8222412 () Bool)

(assert (=> b!7765129 m!8222412))

(assert (=> d!2343894 d!2343898))

(push 1)

(assert (not b!7764982))

(assert (not b!7765107))

(assert (not b!7765127))

(assert (not b!7765077))

(assert (not bm!719391))

(assert (not d!2343894))

(assert (not b!7765095))

(assert (not b!7765052))

(assert (not b!7765097))

(assert (not b!7764912))

(assert (not b!7764911))

(assert (not b!7765123))

(assert (not d!2343882))

(assert (not b!7765030))

(assert (not b!7765105))

(assert (not b!7765110))

(assert (not b!7765109))

(assert (not b!7765042))

(assert (not bm!719394))

(assert (not b_lambda!289487))

(assert (not d!2343874))

(assert (not b!7765115))

(assert (not b!7764940))

(assert (not b!7765089))

(assert (not b!7765000))

(assert (not b!7765122))

(assert (not b!7765038))

(assert (not b!7765113))

(assert (not b!7765119))

(assert (not b!7765058))

(assert (not b!7765103))

(assert (not b!7765034))

(assert (not b!7765056))

(assert (not b!7765031))

(assert (not b!7764984))

(assert (not b!7765111))

(assert (not d!2343892))

(assert (not b!7765101))

(assert tp_is_empty!51787)

(assert (not b!7765090))

(assert (not b!7765114))

(assert (not b!7764983))

(assert (not b!7765102))

(assert (not b!7765106))

(assert (not b!7765118))

(assert (not b!7765098))

(assert (not bm!719390))

(assert (not b!7765043))

(assert (not b!7764981))

(assert (not b!7765129))

(assert (not d!2343866))

(assert (not b!7765044))

(assert (not bs!1966025))

(assert (not b!7765048))

(assert (not b!7765094))

(assert (not b!7765117))

(assert (not bm!719399))

(assert (not b!7765099))

(assert (not b!7765121))

(assert (not b!7765093))

(assert (not b!7764979))

(assert (not d!2343862))

(assert (not b!7765029))

(assert (not b!7765070))

(assert (not b!7765059))

(assert (not d!2343872))

(assert (not b!7765045))

(assert (not d!2343890))

(assert (not bm!719393))

(assert (not b!7764987))

(assert (not b!7765072))

(assert (not b!7765125))

(assert (not b!7765128))

(assert (not bm!719398))

(assert (not b!7765071))

(assert (not b!7765091))

(assert (not b!7765126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

