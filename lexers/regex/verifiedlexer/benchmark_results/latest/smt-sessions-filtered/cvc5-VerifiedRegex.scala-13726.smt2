; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733626 () Bool)

(assert start!733626)

(declare-fun b!7614810 () Bool)

(declare-fun e!4528518 () Bool)

(declare-fun tp!2223299 () Bool)

(declare-fun tp!2223301 () Bool)

(assert (=> b!7614810 (= e!4528518 (and tp!2223299 tp!2223301))))

(declare-fun b!7614811 () Bool)

(declare-fun e!4528516 () Bool)

(declare-datatypes ((C!40818 0))(
  ( (C!40819 (val!30849 Int)) )
))
(declare-datatypes ((Regex!20246 0))(
  ( (ElementMatch!20246 (c!1403721 C!40818)) (Concat!29091 (regOne!41004 Regex!20246) (regTwo!41004 Regex!20246)) (EmptyExpr!20246) (Star!20246 (reg!20575 Regex!20246)) (EmptyLang!20246) (Union!20246 (regOne!41005 Regex!20246) (regTwo!41005 Regex!20246)) )
))
(declare-fun r!14126 () Regex!20246)

(declare-fun validRegex!10668 (Regex!20246) Bool)

(assert (=> b!7614811 (= e!4528516 (not (validRegex!10668 (regOne!41005 r!14126))))))

(declare-fun b!7614812 () Bool)

(declare-fun tp!2223298 () Bool)

(declare-fun tp!2223300 () Bool)

(assert (=> b!7614812 (= e!4528518 (and tp!2223298 tp!2223300))))

(declare-fun b!7614813 () Bool)

(declare-fun res!3048363 () Bool)

(assert (=> b!7614813 (=> (not res!3048363) (not e!4528516))))

(declare-datatypes ((List!73099 0))(
  ( (Nil!72975) (Cons!72975 (h!79423 C!40818) (t!387834 List!73099)) )
))
(declare-fun s!9605 () List!73099)

(declare-fun matchR!9761 (Regex!20246 List!73099) Bool)

(assert (=> b!7614813 (= res!3048363 (not (matchR!9761 r!14126 s!9605)))))

(declare-fun b!7614814 () Bool)

(declare-fun tp!2223297 () Bool)

(assert (=> b!7614814 (= e!4528518 tp!2223297)))

(declare-fun res!3048365 () Bool)

(assert (=> start!733626 (=> (not res!3048365) (not e!4528516))))

(assert (=> start!733626 (= res!3048365 (validRegex!10668 r!14126))))

(assert (=> start!733626 e!4528516))

(assert (=> start!733626 e!4528518))

(declare-fun e!4528517 () Bool)

(assert (=> start!733626 e!4528517))

(declare-fun b!7614815 () Bool)

(declare-fun res!3048364 () Bool)

(assert (=> b!7614815 (=> (not res!3048364) (not e!4528516))))

(assert (=> b!7614815 (= res!3048364 (and (not (is-EmptyExpr!20246 r!14126)) (not (is-EmptyLang!20246 r!14126)) (not (is-ElementMatch!20246 r!14126)) (is-Union!20246 r!14126)))))

(declare-fun b!7614816 () Bool)

(declare-fun tp_is_empty!50847 () Bool)

(assert (=> b!7614816 (= e!4528518 tp_is_empty!50847)))

(declare-fun b!7614817 () Bool)

(declare-fun tp!2223296 () Bool)

(assert (=> b!7614817 (= e!4528517 (and tp_is_empty!50847 tp!2223296))))

(assert (= (and start!733626 res!3048365) b!7614815))

(assert (= (and b!7614815 res!3048364) b!7614813))

(assert (= (and b!7614813 res!3048363) b!7614811))

(assert (= (and start!733626 (is-ElementMatch!20246 r!14126)) b!7614816))

(assert (= (and start!733626 (is-Concat!29091 r!14126)) b!7614810))

(assert (= (and start!733626 (is-Star!20246 r!14126)) b!7614814))

(assert (= (and start!733626 (is-Union!20246 r!14126)) b!7614812))

(assert (= (and start!733626 (is-Cons!72975 s!9605)) b!7614817))

(declare-fun m!8149238 () Bool)

(assert (=> b!7614811 m!8149238))

(declare-fun m!8149240 () Bool)

(assert (=> b!7614813 m!8149240))

(declare-fun m!8149242 () Bool)

(assert (=> start!733626 m!8149242))

(push 1)

(assert tp_is_empty!50847)

(assert (not start!733626))

(assert (not b!7614813))

(assert (not b!7614812))

(assert (not b!7614810))

(assert (not b!7614811))

(assert (not b!7614817))

(assert (not b!7614814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7614860 () Bool)

(declare-fun e!4528546 () Bool)

(declare-fun e!4528543 () Bool)

(assert (=> b!7614860 (= e!4528546 e!4528543)))

(declare-fun res!3048386 () Bool)

(declare-fun nullable!8859 (Regex!20246) Bool)

(assert (=> b!7614860 (= res!3048386 (not (nullable!8859 (reg!20575 r!14126))))))

(assert (=> b!7614860 (=> (not res!3048386) (not e!4528543))))

(declare-fun d!2322671 () Bool)

(declare-fun res!3048389 () Bool)

(declare-fun e!4528544 () Bool)

(assert (=> d!2322671 (=> res!3048389 e!4528544)))

(assert (=> d!2322671 (= res!3048389 (is-ElementMatch!20246 r!14126))))

(assert (=> d!2322671 (= (validRegex!10668 r!14126) e!4528544)))

(declare-fun b!7614861 () Bool)

(declare-fun e!4528548 () Bool)

(declare-fun call!699571 () Bool)

(assert (=> b!7614861 (= e!4528548 call!699571)))

(declare-fun b!7614862 () Bool)

(declare-fun res!3048388 () Bool)

(assert (=> b!7614862 (=> (not res!3048388) (not e!4528548))))

(declare-fun call!699572 () Bool)

(assert (=> b!7614862 (= res!3048388 call!699572)))

(declare-fun e!4528545 () Bool)

(assert (=> b!7614862 (= e!4528545 e!4528548)))

(declare-fun b!7614863 () Bool)

(assert (=> b!7614863 (= e!4528544 e!4528546)))

(declare-fun c!1403728 () Bool)

(assert (=> b!7614863 (= c!1403728 (is-Star!20246 r!14126))))

(declare-fun b!7614864 () Bool)

(declare-fun e!4528542 () Bool)

(declare-fun e!4528547 () Bool)

(assert (=> b!7614864 (= e!4528542 e!4528547)))

(declare-fun res!3048385 () Bool)

(assert (=> b!7614864 (=> (not res!3048385) (not e!4528547))))

(assert (=> b!7614864 (= res!3048385 call!699572)))

(declare-fun call!699573 () Bool)

(declare-fun bm!699566 () Bool)

(declare-fun c!1403727 () Bool)

(assert (=> bm!699566 (= call!699573 (validRegex!10668 (ite c!1403728 (reg!20575 r!14126) (ite c!1403727 (regOne!41005 r!14126) (regOne!41004 r!14126)))))))

(declare-fun b!7614865 () Bool)

(assert (=> b!7614865 (= e!4528543 call!699573)))

(declare-fun b!7614866 () Bool)

(assert (=> b!7614866 (= e!4528547 call!699571)))

(declare-fun b!7614867 () Bool)

(declare-fun res!3048387 () Bool)

(assert (=> b!7614867 (=> res!3048387 e!4528542)))

(assert (=> b!7614867 (= res!3048387 (not (is-Concat!29091 r!14126)))))

(assert (=> b!7614867 (= e!4528545 e!4528542)))

(declare-fun bm!699567 () Bool)

(assert (=> bm!699567 (= call!699572 call!699573)))

(declare-fun bm!699568 () Bool)

(assert (=> bm!699568 (= call!699571 (validRegex!10668 (ite c!1403727 (regTwo!41005 r!14126) (regTwo!41004 r!14126))))))

(declare-fun b!7614868 () Bool)

(assert (=> b!7614868 (= e!4528546 e!4528545)))

(assert (=> b!7614868 (= c!1403727 (is-Union!20246 r!14126))))

(assert (= (and d!2322671 (not res!3048389)) b!7614863))

(assert (= (and b!7614863 c!1403728) b!7614860))

(assert (= (and b!7614863 (not c!1403728)) b!7614868))

(assert (= (and b!7614860 res!3048386) b!7614865))

(assert (= (and b!7614868 c!1403727) b!7614862))

(assert (= (and b!7614868 (not c!1403727)) b!7614867))

(assert (= (and b!7614862 res!3048388) b!7614861))

(assert (= (and b!7614867 (not res!3048387)) b!7614864))

(assert (= (and b!7614864 res!3048385) b!7614866))

(assert (= (or b!7614862 b!7614864) bm!699567))

(assert (= (or b!7614861 b!7614866) bm!699568))

(assert (= (or b!7614865 bm!699567) bm!699566))

(declare-fun m!8149250 () Bool)

(assert (=> b!7614860 m!8149250))

(declare-fun m!8149252 () Bool)

(assert (=> bm!699566 m!8149252))

(declare-fun m!8149254 () Bool)

(assert (=> bm!699568 m!8149254))

(assert (=> start!733626 d!2322671))

(declare-fun b!7614869 () Bool)

(declare-fun e!4528553 () Bool)

(declare-fun e!4528550 () Bool)

(assert (=> b!7614869 (= e!4528553 e!4528550)))

(declare-fun res!3048391 () Bool)

(assert (=> b!7614869 (= res!3048391 (not (nullable!8859 (reg!20575 (regOne!41005 r!14126)))))))

(assert (=> b!7614869 (=> (not res!3048391) (not e!4528550))))

(declare-fun d!2322675 () Bool)

(declare-fun res!3048394 () Bool)

(declare-fun e!4528551 () Bool)

(assert (=> d!2322675 (=> res!3048394 e!4528551)))

(assert (=> d!2322675 (= res!3048394 (is-ElementMatch!20246 (regOne!41005 r!14126)))))

(assert (=> d!2322675 (= (validRegex!10668 (regOne!41005 r!14126)) e!4528551)))

(declare-fun b!7614870 () Bool)

(declare-fun e!4528555 () Bool)

(declare-fun call!699574 () Bool)

(assert (=> b!7614870 (= e!4528555 call!699574)))

(declare-fun b!7614871 () Bool)

(declare-fun res!3048393 () Bool)

(assert (=> b!7614871 (=> (not res!3048393) (not e!4528555))))

(declare-fun call!699575 () Bool)

(assert (=> b!7614871 (= res!3048393 call!699575)))

(declare-fun e!4528552 () Bool)

(assert (=> b!7614871 (= e!4528552 e!4528555)))

(declare-fun b!7614872 () Bool)

(assert (=> b!7614872 (= e!4528551 e!4528553)))

(declare-fun c!1403730 () Bool)

(assert (=> b!7614872 (= c!1403730 (is-Star!20246 (regOne!41005 r!14126)))))

(declare-fun b!7614873 () Bool)

(declare-fun e!4528549 () Bool)

(declare-fun e!4528554 () Bool)

(assert (=> b!7614873 (= e!4528549 e!4528554)))

(declare-fun res!3048390 () Bool)

(assert (=> b!7614873 (=> (not res!3048390) (not e!4528554))))

(assert (=> b!7614873 (= res!3048390 call!699575)))

(declare-fun bm!699569 () Bool)

(declare-fun call!699576 () Bool)

(declare-fun c!1403729 () Bool)

(assert (=> bm!699569 (= call!699576 (validRegex!10668 (ite c!1403730 (reg!20575 (regOne!41005 r!14126)) (ite c!1403729 (regOne!41005 (regOne!41005 r!14126)) (regOne!41004 (regOne!41005 r!14126))))))))

(declare-fun b!7614874 () Bool)

(assert (=> b!7614874 (= e!4528550 call!699576)))

(declare-fun b!7614875 () Bool)

(assert (=> b!7614875 (= e!4528554 call!699574)))

(declare-fun b!7614876 () Bool)

(declare-fun res!3048392 () Bool)

(assert (=> b!7614876 (=> res!3048392 e!4528549)))

(assert (=> b!7614876 (= res!3048392 (not (is-Concat!29091 (regOne!41005 r!14126))))))

(assert (=> b!7614876 (= e!4528552 e!4528549)))

(declare-fun bm!699570 () Bool)

(assert (=> bm!699570 (= call!699575 call!699576)))

(declare-fun bm!699571 () Bool)

(assert (=> bm!699571 (= call!699574 (validRegex!10668 (ite c!1403729 (regTwo!41005 (regOne!41005 r!14126)) (regTwo!41004 (regOne!41005 r!14126)))))))

(declare-fun b!7614877 () Bool)

(assert (=> b!7614877 (= e!4528553 e!4528552)))

(assert (=> b!7614877 (= c!1403729 (is-Union!20246 (regOne!41005 r!14126)))))

(assert (= (and d!2322675 (not res!3048394)) b!7614872))

(assert (= (and b!7614872 c!1403730) b!7614869))

(assert (= (and b!7614872 (not c!1403730)) b!7614877))

(assert (= (and b!7614869 res!3048391) b!7614874))

(assert (= (and b!7614877 c!1403729) b!7614871))

(assert (= (and b!7614877 (not c!1403729)) b!7614876))

(assert (= (and b!7614871 res!3048393) b!7614870))

(assert (= (and b!7614876 (not res!3048392)) b!7614873))

(assert (= (and b!7614873 res!3048390) b!7614875))

(assert (= (or b!7614871 b!7614873) bm!699570))

(assert (= (or b!7614870 b!7614875) bm!699571))

(assert (= (or b!7614874 bm!699570) bm!699569))

(declare-fun m!8149256 () Bool)

(assert (=> b!7614869 m!8149256))

(declare-fun m!8149258 () Bool)

(assert (=> bm!699569 m!8149258))

(declare-fun m!8149260 () Bool)

(assert (=> bm!699571 m!8149260))

(assert (=> b!7614811 d!2322675))

(declare-fun bm!699586 () Bool)

(declare-fun call!699591 () Bool)

(declare-fun isEmpty!41596 (List!73099) Bool)

(assert (=> bm!699586 (= call!699591 (isEmpty!41596 s!9605))))

(declare-fun b!7614942 () Bool)

(declare-fun res!3048433 () Bool)

(declare-fun e!4528599 () Bool)

(assert (=> b!7614942 (=> res!3048433 e!4528599)))

(declare-fun tail!15183 (List!73099) List!73099)

(assert (=> b!7614942 (= res!3048433 (not (isEmpty!41596 (tail!15183 s!9605))))))

(declare-fun b!7614943 () Bool)

(declare-fun e!4528603 () Bool)

(declare-fun lt!2655159 () Bool)

(assert (=> b!7614943 (= e!4528603 (not lt!2655159))))

(declare-fun b!7614944 () Bool)

(declare-fun res!3048436 () Bool)

(declare-fun e!4528602 () Bool)

(assert (=> b!7614944 (=> res!3048436 e!4528602)))

(declare-fun e!4528600 () Bool)

(assert (=> b!7614944 (= res!3048436 e!4528600)))

(declare-fun res!3048435 () Bool)

(assert (=> b!7614944 (=> (not res!3048435) (not e!4528600))))

(assert (=> b!7614944 (= res!3048435 lt!2655159)))

(declare-fun b!7614945 () Bool)

(declare-fun res!3048431 () Bool)

(assert (=> b!7614945 (=> (not res!3048431) (not e!4528600))))

(assert (=> b!7614945 (= res!3048431 (not call!699591))))

(declare-fun b!7614946 () Bool)

(declare-fun res!3048432 () Bool)

(assert (=> b!7614946 (=> (not res!3048432) (not e!4528600))))

(assert (=> b!7614946 (= res!3048432 (isEmpty!41596 (tail!15183 s!9605)))))

(declare-fun b!7614947 () Bool)

(declare-fun e!4528601 () Bool)

(assert (=> b!7614947 (= e!4528601 (nullable!8859 r!14126))))

(declare-fun b!7614948 () Bool)

(declare-fun e!4528604 () Bool)

(assert (=> b!7614948 (= e!4528604 e!4528603)))

(declare-fun c!1403746 () Bool)

(assert (=> b!7614948 (= c!1403746 (is-EmptyLang!20246 r!14126))))

(declare-fun b!7614950 () Bool)

(declare-fun derivativeStep!5843 (Regex!20246 C!40818) Regex!20246)

(declare-fun head!15643 (List!73099) C!40818)

(assert (=> b!7614950 (= e!4528601 (matchR!9761 (derivativeStep!5843 r!14126 (head!15643 s!9605)) (tail!15183 s!9605)))))

(declare-fun b!7614951 () Bool)

(assert (=> b!7614951 (= e!4528599 (not (= (head!15643 s!9605) (c!1403721 r!14126))))))

(declare-fun b!7614952 () Bool)

(assert (=> b!7614952 (= e!4528604 (= lt!2655159 call!699591))))

(declare-fun b!7614953 () Bool)

(declare-fun e!4528598 () Bool)

(assert (=> b!7614953 (= e!4528598 e!4528599)))

(declare-fun res!3048434 () Bool)

(assert (=> b!7614953 (=> res!3048434 e!4528599)))

(assert (=> b!7614953 (= res!3048434 call!699591)))

(declare-fun b!7614954 () Bool)

(assert (=> b!7614954 (= e!4528600 (= (head!15643 s!9605) (c!1403721 r!14126)))))

(declare-fun b!7614955 () Bool)

(assert (=> b!7614955 (= e!4528602 e!4528598)))

(declare-fun res!3048438 () Bool)

(assert (=> b!7614955 (=> (not res!3048438) (not e!4528598))))

(assert (=> b!7614955 (= res!3048438 (not lt!2655159))))

(declare-fun b!7614949 () Bool)

(declare-fun res!3048437 () Bool)

(assert (=> b!7614949 (=> res!3048437 e!4528602)))

(assert (=> b!7614949 (= res!3048437 (not (is-ElementMatch!20246 r!14126)))))

(assert (=> b!7614949 (= e!4528603 e!4528602)))

(declare-fun d!2322677 () Bool)

(assert (=> d!2322677 e!4528604))

(declare-fun c!1403747 () Bool)

(assert (=> d!2322677 (= c!1403747 (is-EmptyExpr!20246 r!14126))))

(assert (=> d!2322677 (= lt!2655159 e!4528601)))

(declare-fun c!1403745 () Bool)

(assert (=> d!2322677 (= c!1403745 (isEmpty!41596 s!9605))))

(assert (=> d!2322677 (validRegex!10668 r!14126)))

(assert (=> d!2322677 (= (matchR!9761 r!14126 s!9605) lt!2655159)))

(assert (= (and d!2322677 c!1403745) b!7614947))

(assert (= (and d!2322677 (not c!1403745)) b!7614950))

(assert (= (and d!2322677 c!1403747) b!7614952))

(assert (= (and d!2322677 (not c!1403747)) b!7614948))

(assert (= (and b!7614948 c!1403746) b!7614943))

(assert (= (and b!7614948 (not c!1403746)) b!7614949))

(assert (= (and b!7614949 (not res!3048437)) b!7614944))

(assert (= (and b!7614944 res!3048435) b!7614945))

(assert (= (and b!7614945 res!3048431) b!7614946))

(assert (= (and b!7614946 res!3048432) b!7614954))

(assert (= (and b!7614944 (not res!3048436)) b!7614955))

(assert (= (and b!7614955 res!3048438) b!7614953))

(assert (= (and b!7614953 (not res!3048434)) b!7614942))

(assert (= (and b!7614942 (not res!3048433)) b!7614951))

(assert (= (or b!7614952 b!7614953 b!7614945) bm!699586))

(declare-fun m!8149274 () Bool)

(assert (=> b!7614942 m!8149274))

(assert (=> b!7614942 m!8149274))

(declare-fun m!8149276 () Bool)

(assert (=> b!7614942 m!8149276))

(declare-fun m!8149278 () Bool)

(assert (=> b!7614950 m!8149278))

(assert (=> b!7614950 m!8149278))

(declare-fun m!8149280 () Bool)

(assert (=> b!7614950 m!8149280))

(assert (=> b!7614950 m!8149274))

(assert (=> b!7614950 m!8149280))

(assert (=> b!7614950 m!8149274))

(declare-fun m!8149282 () Bool)

(assert (=> b!7614950 m!8149282))

(assert (=> b!7614946 m!8149274))

(assert (=> b!7614946 m!8149274))

(assert (=> b!7614946 m!8149276))

(declare-fun m!8149284 () Bool)

(assert (=> b!7614947 m!8149284))

(assert (=> b!7614951 m!8149278))

(declare-fun m!8149286 () Bool)

(assert (=> d!2322677 m!8149286))

(assert (=> d!2322677 m!8149242))

(assert (=> b!7614954 m!8149278))

(assert (=> bm!699586 m!8149286))

(assert (=> b!7614813 d!2322677))

(declare-fun b!7614968 () Bool)

(declare-fun e!4528607 () Bool)

(declare-fun tp!2223330 () Bool)

(assert (=> b!7614968 (= e!4528607 tp!2223330)))

(declare-fun b!7614969 () Bool)

(declare-fun tp!2223334 () Bool)

(declare-fun tp!2223333 () Bool)

(assert (=> b!7614969 (= e!4528607 (and tp!2223334 tp!2223333))))

(declare-fun b!7614966 () Bool)

(assert (=> b!7614966 (= e!4528607 tp_is_empty!50847)))

(declare-fun b!7614967 () Bool)

(declare-fun tp!2223332 () Bool)

(declare-fun tp!2223331 () Bool)

(assert (=> b!7614967 (= e!4528607 (and tp!2223332 tp!2223331))))

(assert (=> b!7614814 (= tp!2223297 e!4528607)))

(assert (= (and b!7614814 (is-ElementMatch!20246 (reg!20575 r!14126))) b!7614966))

(assert (= (and b!7614814 (is-Concat!29091 (reg!20575 r!14126))) b!7614967))

(assert (= (and b!7614814 (is-Star!20246 (reg!20575 r!14126))) b!7614968))

(assert (= (and b!7614814 (is-Union!20246 (reg!20575 r!14126))) b!7614969))

(declare-fun b!7614972 () Bool)

(declare-fun e!4528608 () Bool)

(declare-fun tp!2223335 () Bool)

(assert (=> b!7614972 (= e!4528608 tp!2223335)))

(declare-fun b!7614973 () Bool)

(declare-fun tp!2223339 () Bool)

(declare-fun tp!2223338 () Bool)

(assert (=> b!7614973 (= e!4528608 (and tp!2223339 tp!2223338))))

(declare-fun b!7614970 () Bool)

(assert (=> b!7614970 (= e!4528608 tp_is_empty!50847)))

(declare-fun b!7614971 () Bool)

(declare-fun tp!2223337 () Bool)

(declare-fun tp!2223336 () Bool)

(assert (=> b!7614971 (= e!4528608 (and tp!2223337 tp!2223336))))

(assert (=> b!7614810 (= tp!2223299 e!4528608)))

(assert (= (and b!7614810 (is-ElementMatch!20246 (regOne!41004 r!14126))) b!7614970))

(assert (= (and b!7614810 (is-Concat!29091 (regOne!41004 r!14126))) b!7614971))

(assert (= (and b!7614810 (is-Star!20246 (regOne!41004 r!14126))) b!7614972))

(assert (= (and b!7614810 (is-Union!20246 (regOne!41004 r!14126))) b!7614973))

(declare-fun b!7614976 () Bool)

(declare-fun e!4528609 () Bool)

(declare-fun tp!2223340 () Bool)

(assert (=> b!7614976 (= e!4528609 tp!2223340)))

(declare-fun b!7614977 () Bool)

(declare-fun tp!2223344 () Bool)

(declare-fun tp!2223343 () Bool)

(assert (=> b!7614977 (= e!4528609 (and tp!2223344 tp!2223343))))

(declare-fun b!7614974 () Bool)

(assert (=> b!7614974 (= e!4528609 tp_is_empty!50847)))

(declare-fun b!7614975 () Bool)

(declare-fun tp!2223342 () Bool)

(declare-fun tp!2223341 () Bool)

(assert (=> b!7614975 (= e!4528609 (and tp!2223342 tp!2223341))))

(assert (=> b!7614810 (= tp!2223301 e!4528609)))

(assert (= (and b!7614810 (is-ElementMatch!20246 (regTwo!41004 r!14126))) b!7614974))

(assert (= (and b!7614810 (is-Concat!29091 (regTwo!41004 r!14126))) b!7614975))

(assert (= (and b!7614810 (is-Star!20246 (regTwo!41004 r!14126))) b!7614976))

(assert (= (and b!7614810 (is-Union!20246 (regTwo!41004 r!14126))) b!7614977))

(declare-fun b!7614980 () Bool)

(declare-fun e!4528610 () Bool)

(declare-fun tp!2223345 () Bool)

(assert (=> b!7614980 (= e!4528610 tp!2223345)))

(declare-fun b!7614981 () Bool)

(declare-fun tp!2223349 () Bool)

(declare-fun tp!2223348 () Bool)

(assert (=> b!7614981 (= e!4528610 (and tp!2223349 tp!2223348))))

(declare-fun b!7614978 () Bool)

(assert (=> b!7614978 (= e!4528610 tp_is_empty!50847)))

(declare-fun b!7614979 () Bool)

(declare-fun tp!2223347 () Bool)

(declare-fun tp!2223346 () Bool)

(assert (=> b!7614979 (= e!4528610 (and tp!2223347 tp!2223346))))

(assert (=> b!7614812 (= tp!2223298 e!4528610)))

(assert (= (and b!7614812 (is-ElementMatch!20246 (regOne!41005 r!14126))) b!7614978))

(assert (= (and b!7614812 (is-Concat!29091 (regOne!41005 r!14126))) b!7614979))

(assert (= (and b!7614812 (is-Star!20246 (regOne!41005 r!14126))) b!7614980))

(assert (= (and b!7614812 (is-Union!20246 (regOne!41005 r!14126))) b!7614981))

(declare-fun b!7614984 () Bool)

(declare-fun e!4528611 () Bool)

(declare-fun tp!2223350 () Bool)

(assert (=> b!7614984 (= e!4528611 tp!2223350)))

(declare-fun b!7614985 () Bool)

(declare-fun tp!2223354 () Bool)

(declare-fun tp!2223353 () Bool)

(assert (=> b!7614985 (= e!4528611 (and tp!2223354 tp!2223353))))

(declare-fun b!7614982 () Bool)

(assert (=> b!7614982 (= e!4528611 tp_is_empty!50847)))

(declare-fun b!7614983 () Bool)

(declare-fun tp!2223352 () Bool)

(declare-fun tp!2223351 () Bool)

(assert (=> b!7614983 (= e!4528611 (and tp!2223352 tp!2223351))))

(assert (=> b!7614812 (= tp!2223300 e!4528611)))

(assert (= (and b!7614812 (is-ElementMatch!20246 (regTwo!41005 r!14126))) b!7614982))

(assert (= (and b!7614812 (is-Concat!29091 (regTwo!41005 r!14126))) b!7614983))

(assert (= (and b!7614812 (is-Star!20246 (regTwo!41005 r!14126))) b!7614984))

(assert (= (and b!7614812 (is-Union!20246 (regTwo!41005 r!14126))) b!7614985))

(declare-fun b!7614990 () Bool)

(declare-fun e!4528614 () Bool)

(declare-fun tp!2223357 () Bool)

(assert (=> b!7614990 (= e!4528614 (and tp_is_empty!50847 tp!2223357))))

(assert (=> b!7614817 (= tp!2223296 e!4528614)))

(assert (= (and b!7614817 (is-Cons!72975 (t!387834 s!9605))) b!7614990))

(push 1)

(assert (not b!7614968))

(assert (not b!7614979))

(assert (not b!7614969))

(assert (not b!7614971))

(assert (not b!7614983))

(assert (not b!7614980))

(assert (not bm!699568))

(assert (not b!7614942))

(assert (not b!7614951))

(assert (not b!7614954))

(assert (not bm!699566))

(assert (not d!2322677))

(assert (not b!7614860))

(assert (not bm!699586))

(assert (not b!7614869))

(assert (not b!7614973))

(assert tp_is_empty!50847)

(assert (not b!7614977))

(assert (not bm!699571))

(assert (not b!7614990))

(assert (not b!7614972))

(assert (not b!7614950))

(assert (not b!7614984))

(assert (not b!7614985))

(assert (not b!7614976))

(assert (not b!7614981))

(assert (not b!7614975))

(assert (not b!7614947))

(assert (not b!7614946))

(assert (not bm!699569))

(assert (not b!7614967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

