; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73906 () Bool)

(assert start!73906)

(declare-fun b!828012 () Bool)

(declare-fun e!545987 () Bool)

(declare-fun tp_is_empty!3861 () Bool)

(assert (=> b!828012 (= e!545987 tp_is_empty!3861)))

(declare-fun b!828013 () Bool)

(declare-fun res!380818 () Bool)

(declare-fun e!545986 () Bool)

(assert (=> b!828013 (=> (not res!380818) (not e!545986))))

(declare-datatypes ((C!4708 0))(
  ( (C!4709 (val!2602 Int)) )
))
(declare-datatypes ((Regex!2069 0))(
  ( (ElementMatch!2069 (c!134590 C!4708)) (Concat!3800 (regOne!4650 Regex!2069) (regTwo!4650 Regex!2069)) (EmptyExpr!2069) (Star!2069 (reg!2398 Regex!2069)) (EmptyLang!2069) (Union!2069 (regOne!4651 Regex!2069) (regTwo!4651 Regex!2069)) )
))
(declare-fun r!27177 () Regex!2069)

(declare-fun validRegex!622 (Regex!2069) Bool)

(assert (=> b!828013 (= res!380818 (validRegex!622 (regTwo!4651 r!27177)))))

(declare-fun res!380821 () Bool)

(assert (=> start!73906 (=> (not res!380821) (not e!545986))))

(assert (=> start!73906 (= res!380821 (validRegex!622 r!27177))))

(assert (=> start!73906 e!545986))

(assert (=> start!73906 e!545987))

(assert (=> start!73906 tp_is_empty!3861))

(declare-fun b!828014 () Bool)

(declare-fun res!380817 () Bool)

(assert (=> b!828014 (=> (not res!380817) (not e!545986))))

(declare-fun c!13916 () C!4708)

(declare-datatypes ((List!8895 0))(
  ( (Nil!8879) (Cons!8879 (h!14280 C!4708) (t!93187 List!8895)) )
))
(declare-fun contains!1660 (List!8895 C!4708) Bool)

(declare-fun firstChars!40 (Regex!2069) List!8895)

(assert (=> b!828014 (= res!380817 (contains!1660 (firstChars!40 r!27177) c!13916))))

(declare-fun b!828015 () Bool)

(declare-fun tp!259114 () Bool)

(assert (=> b!828015 (= e!545987 tp!259114)))

(declare-fun b!828016 () Bool)

(declare-fun res!380819 () Bool)

(assert (=> b!828016 (=> (not res!380819) (not e!545986))))

(get-info :version)

(assert (=> b!828016 (= res!380819 (and (not ((_ is EmptyExpr!2069) r!27177)) (not ((_ is EmptyLang!2069) r!27177)) (not ((_ is ElementMatch!2069) r!27177)) (not ((_ is Star!2069) r!27177)) ((_ is Union!2069) r!27177)))))

(declare-fun b!828017 () Bool)

(declare-fun tp!259110 () Bool)

(declare-fun tp!259112 () Bool)

(assert (=> b!828017 (= e!545987 (and tp!259110 tp!259112))))

(declare-fun b!828018 () Bool)

(declare-fun tp!259111 () Bool)

(declare-fun tp!259113 () Bool)

(assert (=> b!828018 (= e!545987 (and tp!259111 tp!259113))))

(declare-fun b!828019 () Bool)

(declare-fun res!380820 () Bool)

(assert (=> b!828019 (=> (not res!380820) (not e!545986))))

(assert (=> b!828019 (= res!380820 (contains!1660 (firstChars!40 (regTwo!4651 r!27177)) c!13916))))

(declare-fun b!828020 () Bool)

(declare-fun RegexPrimitiveSize!92 (Regex!2069) Int)

(assert (=> b!828020 (= e!545986 (>= (RegexPrimitiveSize!92 (regTwo!4651 r!27177)) (RegexPrimitiveSize!92 r!27177)))))

(declare-fun b!828021 () Bool)

(declare-fun res!380816 () Bool)

(assert (=> b!828021 (=> (not res!380816) (not e!545986))))

(assert (=> b!828021 (= res!380816 (not (contains!1660 (firstChars!40 (regOne!4651 r!27177)) c!13916)))))

(assert (= (and start!73906 res!380821) b!828014))

(assert (= (and b!828014 res!380817) b!828016))

(assert (= (and b!828016 res!380819) b!828021))

(assert (= (and b!828021 res!380816) b!828013))

(assert (= (and b!828013 res!380818) b!828019))

(assert (= (and b!828019 res!380820) b!828020))

(assert (= (and start!73906 ((_ is ElementMatch!2069) r!27177)) b!828012))

(assert (= (and start!73906 ((_ is Concat!3800) r!27177)) b!828017))

(assert (= (and start!73906 ((_ is Star!2069) r!27177)) b!828015))

(assert (= (and start!73906 ((_ is Union!2069) r!27177)) b!828018))

(declare-fun m!1066053 () Bool)

(assert (=> start!73906 m!1066053))

(declare-fun m!1066055 () Bool)

(assert (=> b!828020 m!1066055))

(declare-fun m!1066057 () Bool)

(assert (=> b!828020 m!1066057))

(declare-fun m!1066059 () Bool)

(assert (=> b!828021 m!1066059))

(assert (=> b!828021 m!1066059))

(declare-fun m!1066061 () Bool)

(assert (=> b!828021 m!1066061))

(declare-fun m!1066063 () Bool)

(assert (=> b!828013 m!1066063))

(declare-fun m!1066065 () Bool)

(assert (=> b!828019 m!1066065))

(assert (=> b!828019 m!1066065))

(declare-fun m!1066067 () Bool)

(assert (=> b!828019 m!1066067))

(declare-fun m!1066069 () Bool)

(assert (=> b!828014 m!1066069))

(assert (=> b!828014 m!1066069))

(declare-fun m!1066071 () Bool)

(assert (=> b!828014 m!1066071))

(check-sat tp_is_empty!3861 (not b!828021) (not b!828019) (not b!828014) (not b!828013) (not b!828018) (not b!828020) (not b!828015) (not b!828017) (not start!73906))
(check-sat)
(get-model)

(declare-fun d!259670 () Bool)

(declare-fun lt!317590 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1307 (List!8895) (InoxSet C!4708))

(assert (=> d!259670 (= lt!317590 (select (content!1307 (firstChars!40 (regOne!4651 r!27177))) c!13916))))

(declare-fun e!545993 () Bool)

(assert (=> d!259670 (= lt!317590 e!545993)))

(declare-fun res!380826 () Bool)

(assert (=> d!259670 (=> (not res!380826) (not e!545993))))

(assert (=> d!259670 (= res!380826 ((_ is Cons!8879) (firstChars!40 (regOne!4651 r!27177))))))

(assert (=> d!259670 (= (contains!1660 (firstChars!40 (regOne!4651 r!27177)) c!13916) lt!317590)))

(declare-fun b!828026 () Bool)

(declare-fun e!545992 () Bool)

(assert (=> b!828026 (= e!545993 e!545992)))

(declare-fun res!380827 () Bool)

(assert (=> b!828026 (=> res!380827 e!545992)))

(assert (=> b!828026 (= res!380827 (= (h!14280 (firstChars!40 (regOne!4651 r!27177))) c!13916))))

(declare-fun b!828027 () Bool)

(assert (=> b!828027 (= e!545992 (contains!1660 (t!93187 (firstChars!40 (regOne!4651 r!27177))) c!13916))))

(assert (= (and d!259670 res!380826) b!828026))

(assert (= (and b!828026 (not res!380827)) b!828027))

(assert (=> d!259670 m!1066059))

(declare-fun m!1066073 () Bool)

(assert (=> d!259670 m!1066073))

(declare-fun m!1066075 () Bool)

(assert (=> d!259670 m!1066075))

(declare-fun m!1066077 () Bool)

(assert (=> b!828027 m!1066077))

(assert (=> b!828021 d!259670))

(declare-fun b!828054 () Bool)

(declare-fun e!546010 () List!8895)

(assert (=> b!828054 (= e!546010 Nil!8879)))

(declare-fun b!828055 () Bool)

(declare-fun c!134604 () Bool)

(declare-fun nullable!519 (Regex!2069) Bool)

(assert (=> b!828055 (= c!134604 (nullable!519 (regOne!4650 (regOne!4651 r!27177))))))

(declare-fun e!546014 () List!8895)

(declare-fun e!546011 () List!8895)

(assert (=> b!828055 (= e!546014 e!546011)))

(declare-fun b!828056 () Bool)

(declare-fun c!134601 () Bool)

(assert (=> b!828056 (= c!134601 ((_ is Star!2069) (regOne!4651 r!27177)))))

(declare-fun e!546013 () List!8895)

(declare-fun e!546012 () List!8895)

(assert (=> b!828056 (= e!546013 e!546012)))

(declare-fun bm!48335 () Bool)

(declare-fun call!48341 () List!8895)

(declare-fun call!48344 () List!8895)

(assert (=> bm!48335 (= call!48341 call!48344)))

(declare-fun call!48343 () List!8895)

(declare-fun c!134602 () Bool)

(declare-fun bm!48336 () Bool)

(declare-fun call!48342 () List!8895)

(declare-fun ++!2295 (List!8895 List!8895) List!8895)

(assert (=> bm!48336 (= call!48342 (++!2295 (ite c!134602 call!48343 call!48341) (ite c!134602 call!48344 call!48343)))))

(declare-fun b!828057 () Bool)

(assert (=> b!828057 (= e!546011 call!48342)))

(declare-fun bm!48337 () Bool)

(assert (=> bm!48337 (= call!48343 (firstChars!40 (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))))))

(declare-fun b!828058 () Bool)

(assert (=> b!828058 (= e!546014 call!48342)))

(declare-fun bm!48338 () Bool)

(declare-fun call!48340 () List!8895)

(assert (=> bm!48338 (= call!48344 call!48340)))

(declare-fun b!828059 () Bool)

(assert (=> b!828059 (= e!546012 call!48340)))

(declare-fun b!828060 () Bool)

(assert (=> b!828060 (= e!546012 e!546014)))

(assert (=> b!828060 (= c!134602 ((_ is Union!2069) (regOne!4651 r!27177)))))

(declare-fun d!259674 () Bool)

(declare-fun c!134605 () Bool)

(assert (=> d!259674 (= c!134605 (or ((_ is EmptyExpr!2069) (regOne!4651 r!27177)) ((_ is EmptyLang!2069) (regOne!4651 r!27177))))))

(assert (=> d!259674 (= (firstChars!40 (regOne!4651 r!27177)) e!546010)))

(declare-fun bm!48339 () Bool)

(assert (=> bm!48339 (= call!48340 (firstChars!40 (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))))))

(declare-fun b!828061 () Bool)

(assert (=> b!828061 (= e!546010 e!546013)))

(declare-fun c!134603 () Bool)

(assert (=> b!828061 (= c!134603 ((_ is ElementMatch!2069) (regOne!4651 r!27177)))))

(declare-fun b!828062 () Bool)

(assert (=> b!828062 (= e!546013 (Cons!8879 (c!134590 (regOne!4651 r!27177)) Nil!8879))))

(declare-fun b!828063 () Bool)

(assert (=> b!828063 (= e!546011 call!48341)))

(assert (= (and d!259674 c!134605) b!828054))

(assert (= (and d!259674 (not c!134605)) b!828061))

(assert (= (and b!828061 c!134603) b!828062))

(assert (= (and b!828061 (not c!134603)) b!828056))

(assert (= (and b!828056 c!134601) b!828059))

(assert (= (and b!828056 (not c!134601)) b!828060))

(assert (= (and b!828060 c!134602) b!828058))

(assert (= (and b!828060 (not c!134602)) b!828055))

(assert (= (and b!828055 c!134604) b!828057))

(assert (= (and b!828055 (not c!134604)) b!828063))

(assert (= (or b!828057 b!828063) bm!48335))

(assert (= (or b!828058 bm!48335) bm!48338))

(assert (= (or b!828058 b!828057) bm!48337))

(assert (= (or b!828058 b!828057) bm!48336))

(assert (= (or b!828059 bm!48338) bm!48339))

(declare-fun m!1066085 () Bool)

(assert (=> b!828055 m!1066085))

(declare-fun m!1066087 () Bool)

(assert (=> bm!48336 m!1066087))

(declare-fun m!1066089 () Bool)

(assert (=> bm!48337 m!1066089))

(declare-fun m!1066091 () Bool)

(assert (=> bm!48339 m!1066091))

(assert (=> b!828021 d!259674))

(declare-fun bm!48354 () Bool)

(declare-fun c!134620 () Bool)

(declare-fun call!48361 () Bool)

(declare-fun c!134621 () Bool)

(assert (=> bm!48354 (= call!48361 (validRegex!622 (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))))))

(declare-fun b!828102 () Bool)

(declare-fun res!380844 () Bool)

(declare-fun e!546040 () Bool)

(assert (=> b!828102 (=> res!380844 e!546040)))

(assert (=> b!828102 (= res!380844 (not ((_ is Concat!3800) r!27177)))))

(declare-fun e!546043 () Bool)

(assert (=> b!828102 (= e!546043 e!546040)))

(declare-fun b!828103 () Bool)

(declare-fun e!546042 () Bool)

(declare-fun e!546044 () Bool)

(assert (=> b!828103 (= e!546042 e!546044)))

(assert (=> b!828103 (= c!134620 ((_ is Star!2069) r!27177))))

(declare-fun b!828104 () Bool)

(declare-fun e!546041 () Bool)

(assert (=> b!828104 (= e!546040 e!546041)))

(declare-fun res!380845 () Bool)

(assert (=> b!828104 (=> (not res!380845) (not e!546041))))

(declare-fun call!48359 () Bool)

(assert (=> b!828104 (= res!380845 call!48359)))

(declare-fun bm!48355 () Bool)

(assert (=> bm!48355 (= call!48359 (validRegex!622 (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))))))

(declare-fun b!828105 () Bool)

(declare-fun e!546045 () Bool)

(assert (=> b!828105 (= e!546045 call!48359)))

(declare-fun d!259678 () Bool)

(declare-fun res!380846 () Bool)

(assert (=> d!259678 (=> res!380846 e!546042)))

(assert (=> d!259678 (= res!380846 ((_ is ElementMatch!2069) r!27177))))

(assert (=> d!259678 (= (validRegex!622 r!27177) e!546042)))

(declare-fun b!828106 () Bool)

(declare-fun e!546039 () Bool)

(assert (=> b!828106 (= e!546044 e!546039)))

(declare-fun res!380848 () Bool)

(assert (=> b!828106 (= res!380848 (not (nullable!519 (reg!2398 r!27177))))))

(assert (=> b!828106 (=> (not res!380848) (not e!546039))))

(declare-fun b!828107 () Bool)

(assert (=> b!828107 (= e!546039 call!48361)))

(declare-fun b!828108 () Bool)

(declare-fun res!380847 () Bool)

(assert (=> b!828108 (=> (not res!380847) (not e!546045))))

(declare-fun call!48360 () Bool)

(assert (=> b!828108 (= res!380847 call!48360)))

(assert (=> b!828108 (= e!546043 e!546045)))

(declare-fun b!828109 () Bool)

(assert (=> b!828109 (= e!546041 call!48360)))

(declare-fun b!828110 () Bool)

(assert (=> b!828110 (= e!546044 e!546043)))

(assert (=> b!828110 (= c!134621 ((_ is Union!2069) r!27177))))

(declare-fun bm!48356 () Bool)

(assert (=> bm!48356 (= call!48360 call!48361)))

(assert (= (and d!259678 (not res!380846)) b!828103))

(assert (= (and b!828103 c!134620) b!828106))

(assert (= (and b!828103 (not c!134620)) b!828110))

(assert (= (and b!828106 res!380848) b!828107))

(assert (= (and b!828110 c!134621) b!828108))

(assert (= (and b!828110 (not c!134621)) b!828102))

(assert (= (and b!828108 res!380847) b!828105))

(assert (= (and b!828102 (not res!380844)) b!828104))

(assert (= (and b!828104 res!380845) b!828109))

(assert (= (or b!828108 b!828109) bm!48356))

(assert (= (or b!828105 b!828104) bm!48355))

(assert (= (or b!828107 bm!48356) bm!48354))

(declare-fun m!1066093 () Bool)

(assert (=> bm!48354 m!1066093))

(declare-fun m!1066095 () Bool)

(assert (=> bm!48355 m!1066095))

(declare-fun m!1066097 () Bool)

(assert (=> b!828106 m!1066097))

(assert (=> start!73906 d!259678))

(declare-fun d!259680 () Bool)

(declare-fun lt!317594 () Bool)

(assert (=> d!259680 (= lt!317594 (select (content!1307 (firstChars!40 (regTwo!4651 r!27177))) c!13916))))

(declare-fun e!546047 () Bool)

(assert (=> d!259680 (= lt!317594 e!546047)))

(declare-fun res!380849 () Bool)

(assert (=> d!259680 (=> (not res!380849) (not e!546047))))

(assert (=> d!259680 (= res!380849 ((_ is Cons!8879) (firstChars!40 (regTwo!4651 r!27177))))))

(assert (=> d!259680 (= (contains!1660 (firstChars!40 (regTwo!4651 r!27177)) c!13916) lt!317594)))

(declare-fun b!828111 () Bool)

(declare-fun e!546046 () Bool)

(assert (=> b!828111 (= e!546047 e!546046)))

(declare-fun res!380850 () Bool)

(assert (=> b!828111 (=> res!380850 e!546046)))

(assert (=> b!828111 (= res!380850 (= (h!14280 (firstChars!40 (regTwo!4651 r!27177))) c!13916))))

(declare-fun b!828112 () Bool)

(assert (=> b!828112 (= e!546046 (contains!1660 (t!93187 (firstChars!40 (regTwo!4651 r!27177))) c!13916))))

(assert (= (and d!259680 res!380849) b!828111))

(assert (= (and b!828111 (not res!380850)) b!828112))

(assert (=> d!259680 m!1066065))

(declare-fun m!1066099 () Bool)

(assert (=> d!259680 m!1066099))

(declare-fun m!1066101 () Bool)

(assert (=> d!259680 m!1066101))

(declare-fun m!1066103 () Bool)

(assert (=> b!828112 m!1066103))

(assert (=> b!828019 d!259680))

(declare-fun b!828113 () Bool)

(declare-fun e!546048 () List!8895)

(assert (=> b!828113 (= e!546048 Nil!8879)))

(declare-fun b!828114 () Bool)

(declare-fun c!134625 () Bool)

(assert (=> b!828114 (= c!134625 (nullable!519 (regOne!4650 (regTwo!4651 r!27177))))))

(declare-fun e!546052 () List!8895)

(declare-fun e!546049 () List!8895)

(assert (=> b!828114 (= e!546052 e!546049)))

(declare-fun b!828115 () Bool)

(declare-fun c!134622 () Bool)

(assert (=> b!828115 (= c!134622 ((_ is Star!2069) (regTwo!4651 r!27177)))))

(declare-fun e!546051 () List!8895)

(declare-fun e!546050 () List!8895)

(assert (=> b!828115 (= e!546051 e!546050)))

(declare-fun bm!48359 () Bool)

(declare-fun call!48365 () List!8895)

(declare-fun call!48368 () List!8895)

(assert (=> bm!48359 (= call!48365 call!48368)))

(declare-fun bm!48360 () Bool)

(declare-fun call!48366 () List!8895)

(declare-fun c!134623 () Bool)

(declare-fun call!48367 () List!8895)

(assert (=> bm!48360 (= call!48366 (++!2295 (ite c!134623 call!48367 call!48365) (ite c!134623 call!48368 call!48367)))))

(declare-fun b!828116 () Bool)

(assert (=> b!828116 (= e!546049 call!48366)))

(declare-fun bm!48361 () Bool)

(assert (=> bm!48361 (= call!48367 (firstChars!40 (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))))))

(declare-fun b!828117 () Bool)

(assert (=> b!828117 (= e!546052 call!48366)))

(declare-fun bm!48362 () Bool)

(declare-fun call!48364 () List!8895)

(assert (=> bm!48362 (= call!48368 call!48364)))

(declare-fun b!828118 () Bool)

(assert (=> b!828118 (= e!546050 call!48364)))

(declare-fun b!828119 () Bool)

(assert (=> b!828119 (= e!546050 e!546052)))

(assert (=> b!828119 (= c!134623 ((_ is Union!2069) (regTwo!4651 r!27177)))))

(declare-fun d!259682 () Bool)

(declare-fun c!134626 () Bool)

(assert (=> d!259682 (= c!134626 (or ((_ is EmptyExpr!2069) (regTwo!4651 r!27177)) ((_ is EmptyLang!2069) (regTwo!4651 r!27177))))))

(assert (=> d!259682 (= (firstChars!40 (regTwo!4651 r!27177)) e!546048)))

(declare-fun bm!48363 () Bool)

(assert (=> bm!48363 (= call!48364 (firstChars!40 (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))))))

(declare-fun b!828120 () Bool)

(assert (=> b!828120 (= e!546048 e!546051)))

(declare-fun c!134624 () Bool)

(assert (=> b!828120 (= c!134624 ((_ is ElementMatch!2069) (regTwo!4651 r!27177)))))

(declare-fun b!828121 () Bool)

(assert (=> b!828121 (= e!546051 (Cons!8879 (c!134590 (regTwo!4651 r!27177)) Nil!8879))))

(declare-fun b!828122 () Bool)

(assert (=> b!828122 (= e!546049 call!48365)))

(assert (= (and d!259682 c!134626) b!828113))

(assert (= (and d!259682 (not c!134626)) b!828120))

(assert (= (and b!828120 c!134624) b!828121))

(assert (= (and b!828120 (not c!134624)) b!828115))

(assert (= (and b!828115 c!134622) b!828118))

(assert (= (and b!828115 (not c!134622)) b!828119))

(assert (= (and b!828119 c!134623) b!828117))

(assert (= (and b!828119 (not c!134623)) b!828114))

(assert (= (and b!828114 c!134625) b!828116))

(assert (= (and b!828114 (not c!134625)) b!828122))

(assert (= (or b!828116 b!828122) bm!48359))

(assert (= (or b!828117 bm!48359) bm!48362))

(assert (= (or b!828117 b!828116) bm!48361))

(assert (= (or b!828117 b!828116) bm!48360))

(assert (= (or b!828118 bm!48362) bm!48363))

(declare-fun m!1066105 () Bool)

(assert (=> b!828114 m!1066105))

(declare-fun m!1066107 () Bool)

(assert (=> bm!48360 m!1066107))

(declare-fun m!1066109 () Bool)

(assert (=> bm!48361 m!1066109))

(declare-fun m!1066111 () Bool)

(assert (=> bm!48363 m!1066111))

(assert (=> b!828019 d!259682))

(declare-fun call!48371 () Bool)

(declare-fun c!134628 () Bool)

(declare-fun bm!48364 () Bool)

(declare-fun c!134627 () Bool)

(assert (=> bm!48364 (= call!48371 (validRegex!622 (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))))))

(declare-fun b!828123 () Bool)

(declare-fun res!380851 () Bool)

(declare-fun e!546054 () Bool)

(assert (=> b!828123 (=> res!380851 e!546054)))

(assert (=> b!828123 (= res!380851 (not ((_ is Concat!3800) (regTwo!4651 r!27177))))))

(declare-fun e!546057 () Bool)

(assert (=> b!828123 (= e!546057 e!546054)))

(declare-fun b!828124 () Bool)

(declare-fun e!546056 () Bool)

(declare-fun e!546058 () Bool)

(assert (=> b!828124 (= e!546056 e!546058)))

(assert (=> b!828124 (= c!134627 ((_ is Star!2069) (regTwo!4651 r!27177)))))

(declare-fun b!828125 () Bool)

(declare-fun e!546055 () Bool)

(assert (=> b!828125 (= e!546054 e!546055)))

(declare-fun res!380852 () Bool)

(assert (=> b!828125 (=> (not res!380852) (not e!546055))))

(declare-fun call!48369 () Bool)

(assert (=> b!828125 (= res!380852 call!48369)))

(declare-fun bm!48365 () Bool)

(assert (=> bm!48365 (= call!48369 (validRegex!622 (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))))))

(declare-fun b!828126 () Bool)

(declare-fun e!546059 () Bool)

(assert (=> b!828126 (= e!546059 call!48369)))

(declare-fun d!259684 () Bool)

(declare-fun res!380853 () Bool)

(assert (=> d!259684 (=> res!380853 e!546056)))

(assert (=> d!259684 (= res!380853 ((_ is ElementMatch!2069) (regTwo!4651 r!27177)))))

(assert (=> d!259684 (= (validRegex!622 (regTwo!4651 r!27177)) e!546056)))

(declare-fun b!828127 () Bool)

(declare-fun e!546053 () Bool)

(assert (=> b!828127 (= e!546058 e!546053)))

(declare-fun res!380855 () Bool)

(assert (=> b!828127 (= res!380855 (not (nullable!519 (reg!2398 (regTwo!4651 r!27177)))))))

(assert (=> b!828127 (=> (not res!380855) (not e!546053))))

(declare-fun b!828128 () Bool)

(assert (=> b!828128 (= e!546053 call!48371)))

(declare-fun b!828129 () Bool)

(declare-fun res!380854 () Bool)

(assert (=> b!828129 (=> (not res!380854) (not e!546059))))

(declare-fun call!48370 () Bool)

(assert (=> b!828129 (= res!380854 call!48370)))

(assert (=> b!828129 (= e!546057 e!546059)))

(declare-fun b!828130 () Bool)

(assert (=> b!828130 (= e!546055 call!48370)))

(declare-fun b!828131 () Bool)

(assert (=> b!828131 (= e!546058 e!546057)))

(assert (=> b!828131 (= c!134628 ((_ is Union!2069) (regTwo!4651 r!27177)))))

(declare-fun bm!48366 () Bool)

(assert (=> bm!48366 (= call!48370 call!48371)))

(assert (= (and d!259684 (not res!380853)) b!828124))

(assert (= (and b!828124 c!134627) b!828127))

(assert (= (and b!828124 (not c!134627)) b!828131))

(assert (= (and b!828127 res!380855) b!828128))

(assert (= (and b!828131 c!134628) b!828129))

(assert (= (and b!828131 (not c!134628)) b!828123))

(assert (= (and b!828129 res!380854) b!828126))

(assert (= (and b!828123 (not res!380851)) b!828125))

(assert (= (and b!828125 res!380852) b!828130))

(assert (= (or b!828129 b!828130) bm!48366))

(assert (= (or b!828126 b!828125) bm!48365))

(assert (= (or b!828128 bm!48366) bm!48364))

(declare-fun m!1066113 () Bool)

(assert (=> bm!48364 m!1066113))

(declare-fun m!1066115 () Bool)

(assert (=> bm!48365 m!1066115))

(declare-fun m!1066117 () Bool)

(assert (=> b!828127 m!1066117))

(assert (=> b!828013 d!259684))

(declare-fun b!828152 () Bool)

(declare-fun e!546074 () Int)

(declare-fun call!48380 () Int)

(assert (=> b!828152 (= e!546074 (+ 1 call!48380))))

(declare-fun b!828153 () Bool)

(declare-fun e!546070 () Int)

(assert (=> b!828153 (= e!546070 1)))

(declare-fun b!828155 () Bool)

(declare-fun c!134642 () Bool)

(assert (=> b!828155 (= c!134642 ((_ is EmptyLang!2069) (regTwo!4651 r!27177)))))

(declare-fun e!546073 () Int)

(assert (=> b!828155 (= e!546074 e!546073)))

(declare-fun b!828156 () Bool)

(declare-fun c!134643 () Bool)

(assert (=> b!828156 (= c!134643 ((_ is EmptyExpr!2069) (regTwo!4651 r!27177)))))

(declare-fun e!546071 () Int)

(declare-fun e!546072 () Int)

(assert (=> b!828156 (= e!546071 e!546072)))

(declare-fun b!828157 () Bool)

(assert (=> b!828157 (= e!546072 0)))

(declare-fun b!828158 () Bool)

(assert (=> b!828158 (= e!546073 0)))

(declare-fun bm!48373 () Bool)

(declare-fun call!48378 () Int)

(assert (=> bm!48373 (= call!48380 call!48378)))

(declare-fun bm!48374 () Bool)

(declare-fun call!48379 () Int)

(declare-fun c!134641 () Bool)

(assert (=> bm!48374 (= call!48379 (RegexPrimitiveSize!92 (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))))))

(declare-fun bm!48375 () Bool)

(declare-fun c!134640 () Bool)

(assert (=> bm!48375 (= call!48378 (RegexPrimitiveSize!92 (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))))))

(declare-fun b!828159 () Bool)

(assert (=> b!828159 (= e!546072 e!546074)))

(assert (=> b!828159 (= c!134640 ((_ is Star!2069) (regTwo!4651 r!27177)))))

(declare-fun b!828160 () Bool)

(assert (=> b!828160 (= e!546071 (+ 1 call!48378 call!48379))))

(declare-fun b!828161 () Bool)

(assert (=> b!828161 (= e!546073 (+ 1 call!48380 call!48379))))

(declare-fun b!828154 () Bool)

(assert (=> b!828154 (= e!546070 e!546071)))

(assert (=> b!828154 (= c!134641 ((_ is Concat!3800) (regTwo!4651 r!27177)))))

(declare-fun d!259686 () Bool)

(declare-fun lt!317597 () Int)

(assert (=> d!259686 (>= lt!317597 0)))

(assert (=> d!259686 (= lt!317597 e!546070)))

(declare-fun c!134639 () Bool)

(assert (=> d!259686 (= c!134639 ((_ is ElementMatch!2069) (regTwo!4651 r!27177)))))

(assert (=> d!259686 (= (RegexPrimitiveSize!92 (regTwo!4651 r!27177)) lt!317597)))

(assert (= (and d!259686 c!134639) b!828153))

(assert (= (and d!259686 (not c!134639)) b!828154))

(assert (= (and b!828154 c!134641) b!828160))

(assert (= (and b!828154 (not c!134641)) b!828156))

(assert (= (and b!828156 c!134643) b!828157))

(assert (= (and b!828156 (not c!134643)) b!828159))

(assert (= (and b!828159 c!134640) b!828152))

(assert (= (and b!828159 (not c!134640)) b!828155))

(assert (= (and b!828155 c!134642) b!828158))

(assert (= (and b!828155 (not c!134642)) b!828161))

(assert (= (or b!828152 b!828161) bm!48373))

(assert (= (or b!828160 bm!48373) bm!48375))

(assert (= (or b!828160 b!828161) bm!48374))

(declare-fun m!1066119 () Bool)

(assert (=> bm!48374 m!1066119))

(declare-fun m!1066121 () Bool)

(assert (=> bm!48375 m!1066121))

(assert (=> b!828020 d!259686))

(declare-fun b!828172 () Bool)

(declare-fun e!546084 () Int)

(declare-fun call!48388 () Int)

(assert (=> b!828172 (= e!546084 (+ 1 call!48388))))

(declare-fun b!828173 () Bool)

(declare-fun e!546080 () Int)

(assert (=> b!828173 (= e!546080 1)))

(declare-fun b!828175 () Bool)

(declare-fun c!134652 () Bool)

(assert (=> b!828175 (= c!134652 ((_ is EmptyLang!2069) r!27177))))

(declare-fun e!546083 () Int)

(assert (=> b!828175 (= e!546084 e!546083)))

(declare-fun b!828176 () Bool)

(declare-fun c!134653 () Bool)

(assert (=> b!828176 (= c!134653 ((_ is EmptyExpr!2069) r!27177))))

(declare-fun e!546081 () Int)

(declare-fun e!546082 () Int)

(assert (=> b!828176 (= e!546081 e!546082)))

(declare-fun b!828177 () Bool)

(assert (=> b!828177 (= e!546082 0)))

(declare-fun b!828178 () Bool)

(assert (=> b!828178 (= e!546083 0)))

(declare-fun bm!48381 () Bool)

(declare-fun call!48386 () Int)

(assert (=> bm!48381 (= call!48388 call!48386)))

(declare-fun bm!48382 () Bool)

(declare-fun call!48387 () Int)

(declare-fun c!134651 () Bool)

(assert (=> bm!48382 (= call!48387 (RegexPrimitiveSize!92 (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))))))

(declare-fun bm!48383 () Bool)

(declare-fun c!134650 () Bool)

(assert (=> bm!48383 (= call!48386 (RegexPrimitiveSize!92 (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))))))

(declare-fun b!828179 () Bool)

(assert (=> b!828179 (= e!546082 e!546084)))

(assert (=> b!828179 (= c!134650 ((_ is Star!2069) r!27177))))

(declare-fun b!828180 () Bool)

(assert (=> b!828180 (= e!546081 (+ 1 call!48386 call!48387))))

(declare-fun b!828181 () Bool)

(assert (=> b!828181 (= e!546083 (+ 1 call!48388 call!48387))))

(declare-fun b!828174 () Bool)

(assert (=> b!828174 (= e!546080 e!546081)))

(assert (=> b!828174 (= c!134651 ((_ is Concat!3800) r!27177))))

(declare-fun d!259688 () Bool)

(declare-fun lt!317598 () Int)

(assert (=> d!259688 (>= lt!317598 0)))

(assert (=> d!259688 (= lt!317598 e!546080)))

(declare-fun c!134649 () Bool)

(assert (=> d!259688 (= c!134649 ((_ is ElementMatch!2069) r!27177))))

(assert (=> d!259688 (= (RegexPrimitiveSize!92 r!27177) lt!317598)))

(assert (= (and d!259688 c!134649) b!828173))

(assert (= (and d!259688 (not c!134649)) b!828174))

(assert (= (and b!828174 c!134651) b!828180))

(assert (= (and b!828174 (not c!134651)) b!828176))

(assert (= (and b!828176 c!134653) b!828177))

(assert (= (and b!828176 (not c!134653)) b!828179))

(assert (= (and b!828179 c!134650) b!828172))

(assert (= (and b!828179 (not c!134650)) b!828175))

(assert (= (and b!828175 c!134652) b!828178))

(assert (= (and b!828175 (not c!134652)) b!828181))

(assert (= (or b!828172 b!828181) bm!48381))

(assert (= (or b!828180 bm!48381) bm!48383))

(assert (= (or b!828180 b!828181) bm!48382))

(declare-fun m!1066123 () Bool)

(assert (=> bm!48382 m!1066123))

(declare-fun m!1066125 () Bool)

(assert (=> bm!48383 m!1066125))

(assert (=> b!828020 d!259688))

(declare-fun d!259690 () Bool)

(declare-fun lt!317599 () Bool)

(assert (=> d!259690 (= lt!317599 (select (content!1307 (firstChars!40 r!27177)) c!13916))))

(declare-fun e!546086 () Bool)

(assert (=> d!259690 (= lt!317599 e!546086)))

(declare-fun res!380856 () Bool)

(assert (=> d!259690 (=> (not res!380856) (not e!546086))))

(assert (=> d!259690 (= res!380856 ((_ is Cons!8879) (firstChars!40 r!27177)))))

(assert (=> d!259690 (= (contains!1660 (firstChars!40 r!27177) c!13916) lt!317599)))

(declare-fun b!828182 () Bool)

(declare-fun e!546085 () Bool)

(assert (=> b!828182 (= e!546086 e!546085)))

(declare-fun res!380857 () Bool)

(assert (=> b!828182 (=> res!380857 e!546085)))

(assert (=> b!828182 (= res!380857 (= (h!14280 (firstChars!40 r!27177)) c!13916))))

(declare-fun b!828183 () Bool)

(assert (=> b!828183 (= e!546085 (contains!1660 (t!93187 (firstChars!40 r!27177)) c!13916))))

(assert (= (and d!259690 res!380856) b!828182))

(assert (= (and b!828182 (not res!380857)) b!828183))

(assert (=> d!259690 m!1066069))

(declare-fun m!1066129 () Bool)

(assert (=> d!259690 m!1066129))

(declare-fun m!1066131 () Bool)

(assert (=> d!259690 m!1066131))

(declare-fun m!1066135 () Bool)

(assert (=> b!828183 m!1066135))

(assert (=> b!828014 d!259690))

(declare-fun b!828184 () Bool)

(declare-fun e!546087 () List!8895)

(assert (=> b!828184 (= e!546087 Nil!8879)))

(declare-fun b!828185 () Bool)

(declare-fun c!134657 () Bool)

(assert (=> b!828185 (= c!134657 (nullable!519 (regOne!4650 r!27177)))))

(declare-fun e!546091 () List!8895)

(declare-fun e!546088 () List!8895)

(assert (=> b!828185 (= e!546091 e!546088)))

(declare-fun b!828186 () Bool)

(declare-fun c!134654 () Bool)

(assert (=> b!828186 (= c!134654 ((_ is Star!2069) r!27177))))

(declare-fun e!546090 () List!8895)

(declare-fun e!546089 () List!8895)

(assert (=> b!828186 (= e!546090 e!546089)))

(declare-fun bm!48384 () Bool)

(declare-fun call!48390 () List!8895)

(declare-fun call!48393 () List!8895)

(assert (=> bm!48384 (= call!48390 call!48393)))

(declare-fun bm!48385 () Bool)

(declare-fun call!48391 () List!8895)

(declare-fun c!134655 () Bool)

(declare-fun call!48392 () List!8895)

(assert (=> bm!48385 (= call!48391 (++!2295 (ite c!134655 call!48392 call!48390) (ite c!134655 call!48393 call!48392)))))

(declare-fun b!828187 () Bool)

(assert (=> b!828187 (= e!546088 call!48391)))

(declare-fun bm!48386 () Bool)

(assert (=> bm!48386 (= call!48392 (firstChars!40 (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))))))

(declare-fun b!828188 () Bool)

(assert (=> b!828188 (= e!546091 call!48391)))

(declare-fun bm!48387 () Bool)

(declare-fun call!48389 () List!8895)

(assert (=> bm!48387 (= call!48393 call!48389)))

(declare-fun b!828189 () Bool)

(assert (=> b!828189 (= e!546089 call!48389)))

(declare-fun b!828190 () Bool)

(assert (=> b!828190 (= e!546089 e!546091)))

(assert (=> b!828190 (= c!134655 ((_ is Union!2069) r!27177))))

(declare-fun d!259692 () Bool)

(declare-fun c!134658 () Bool)

(assert (=> d!259692 (= c!134658 (or ((_ is EmptyExpr!2069) r!27177) ((_ is EmptyLang!2069) r!27177)))))

(assert (=> d!259692 (= (firstChars!40 r!27177) e!546087)))

(declare-fun bm!48388 () Bool)

(assert (=> bm!48388 (= call!48389 (firstChars!40 (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))))))

(declare-fun b!828191 () Bool)

(assert (=> b!828191 (= e!546087 e!546090)))

(declare-fun c!134656 () Bool)

(assert (=> b!828191 (= c!134656 ((_ is ElementMatch!2069) r!27177))))

(declare-fun b!828192 () Bool)

(assert (=> b!828192 (= e!546090 (Cons!8879 (c!134590 r!27177) Nil!8879))))

(declare-fun b!828193 () Bool)

(assert (=> b!828193 (= e!546088 call!48390)))

(assert (= (and d!259692 c!134658) b!828184))

(assert (= (and d!259692 (not c!134658)) b!828191))

(assert (= (and b!828191 c!134656) b!828192))

(assert (= (and b!828191 (not c!134656)) b!828186))

(assert (= (and b!828186 c!134654) b!828189))

(assert (= (and b!828186 (not c!134654)) b!828190))

(assert (= (and b!828190 c!134655) b!828188))

(assert (= (and b!828190 (not c!134655)) b!828185))

(assert (= (and b!828185 c!134657) b!828187))

(assert (= (and b!828185 (not c!134657)) b!828193))

(assert (= (or b!828187 b!828193) bm!48384))

(assert (= (or b!828188 bm!48384) bm!48387))

(assert (= (or b!828188 b!828187) bm!48386))

(assert (= (or b!828188 b!828187) bm!48385))

(assert (= (or b!828189 bm!48387) bm!48388))

(declare-fun m!1066141 () Bool)

(assert (=> b!828185 m!1066141))

(declare-fun m!1066143 () Bool)

(assert (=> bm!48385 m!1066143))

(declare-fun m!1066145 () Bool)

(assert (=> bm!48386 m!1066145))

(declare-fun m!1066147 () Bool)

(assert (=> bm!48388 m!1066147))

(assert (=> b!828014 d!259692))

(declare-fun b!828206 () Bool)

(declare-fun e!546094 () Bool)

(declare-fun tp!259126 () Bool)

(assert (=> b!828206 (= e!546094 tp!259126)))

(declare-fun b!828205 () Bool)

(declare-fun tp!259129 () Bool)

(declare-fun tp!259125 () Bool)

(assert (=> b!828205 (= e!546094 (and tp!259129 tp!259125))))

(assert (=> b!828017 (= tp!259110 e!546094)))

(declare-fun b!828204 () Bool)

(assert (=> b!828204 (= e!546094 tp_is_empty!3861)))

(declare-fun b!828207 () Bool)

(declare-fun tp!259128 () Bool)

(declare-fun tp!259127 () Bool)

(assert (=> b!828207 (= e!546094 (and tp!259128 tp!259127))))

(assert (= (and b!828017 ((_ is ElementMatch!2069) (regOne!4650 r!27177))) b!828204))

(assert (= (and b!828017 ((_ is Concat!3800) (regOne!4650 r!27177))) b!828205))

(assert (= (and b!828017 ((_ is Star!2069) (regOne!4650 r!27177))) b!828206))

(assert (= (and b!828017 ((_ is Union!2069) (regOne!4650 r!27177))) b!828207))

(declare-fun b!828210 () Bool)

(declare-fun e!546095 () Bool)

(declare-fun tp!259131 () Bool)

(assert (=> b!828210 (= e!546095 tp!259131)))

(declare-fun b!828209 () Bool)

(declare-fun tp!259134 () Bool)

(declare-fun tp!259130 () Bool)

(assert (=> b!828209 (= e!546095 (and tp!259134 tp!259130))))

(assert (=> b!828017 (= tp!259112 e!546095)))

(declare-fun b!828208 () Bool)

(assert (=> b!828208 (= e!546095 tp_is_empty!3861)))

(declare-fun b!828211 () Bool)

(declare-fun tp!259133 () Bool)

(declare-fun tp!259132 () Bool)

(assert (=> b!828211 (= e!546095 (and tp!259133 tp!259132))))

(assert (= (and b!828017 ((_ is ElementMatch!2069) (regTwo!4650 r!27177))) b!828208))

(assert (= (and b!828017 ((_ is Concat!3800) (regTwo!4650 r!27177))) b!828209))

(assert (= (and b!828017 ((_ is Star!2069) (regTwo!4650 r!27177))) b!828210))

(assert (= (and b!828017 ((_ is Union!2069) (regTwo!4650 r!27177))) b!828211))

(declare-fun b!828214 () Bool)

(declare-fun e!546096 () Bool)

(declare-fun tp!259136 () Bool)

(assert (=> b!828214 (= e!546096 tp!259136)))

(declare-fun b!828213 () Bool)

(declare-fun tp!259139 () Bool)

(declare-fun tp!259135 () Bool)

(assert (=> b!828213 (= e!546096 (and tp!259139 tp!259135))))

(assert (=> b!828018 (= tp!259111 e!546096)))

(declare-fun b!828212 () Bool)

(assert (=> b!828212 (= e!546096 tp_is_empty!3861)))

(declare-fun b!828215 () Bool)

(declare-fun tp!259138 () Bool)

(declare-fun tp!259137 () Bool)

(assert (=> b!828215 (= e!546096 (and tp!259138 tp!259137))))

(assert (= (and b!828018 ((_ is ElementMatch!2069) (regOne!4651 r!27177))) b!828212))

(assert (= (and b!828018 ((_ is Concat!3800) (regOne!4651 r!27177))) b!828213))

(assert (= (and b!828018 ((_ is Star!2069) (regOne!4651 r!27177))) b!828214))

(assert (= (and b!828018 ((_ is Union!2069) (regOne!4651 r!27177))) b!828215))

(declare-fun b!828218 () Bool)

(declare-fun e!546097 () Bool)

(declare-fun tp!259141 () Bool)

(assert (=> b!828218 (= e!546097 tp!259141)))

(declare-fun b!828217 () Bool)

(declare-fun tp!259144 () Bool)

(declare-fun tp!259140 () Bool)

(assert (=> b!828217 (= e!546097 (and tp!259144 tp!259140))))

(assert (=> b!828018 (= tp!259113 e!546097)))

(declare-fun b!828216 () Bool)

(assert (=> b!828216 (= e!546097 tp_is_empty!3861)))

(declare-fun b!828219 () Bool)

(declare-fun tp!259143 () Bool)

(declare-fun tp!259142 () Bool)

(assert (=> b!828219 (= e!546097 (and tp!259143 tp!259142))))

(assert (= (and b!828018 ((_ is ElementMatch!2069) (regTwo!4651 r!27177))) b!828216))

(assert (= (and b!828018 ((_ is Concat!3800) (regTwo!4651 r!27177))) b!828217))

(assert (= (and b!828018 ((_ is Star!2069) (regTwo!4651 r!27177))) b!828218))

(assert (= (and b!828018 ((_ is Union!2069) (regTwo!4651 r!27177))) b!828219))

(declare-fun b!828222 () Bool)

(declare-fun e!546098 () Bool)

(declare-fun tp!259146 () Bool)

(assert (=> b!828222 (= e!546098 tp!259146)))

(declare-fun b!828221 () Bool)

(declare-fun tp!259149 () Bool)

(declare-fun tp!259145 () Bool)

(assert (=> b!828221 (= e!546098 (and tp!259149 tp!259145))))

(assert (=> b!828015 (= tp!259114 e!546098)))

(declare-fun b!828220 () Bool)

(assert (=> b!828220 (= e!546098 tp_is_empty!3861)))

(declare-fun b!828223 () Bool)

(declare-fun tp!259148 () Bool)

(declare-fun tp!259147 () Bool)

(assert (=> b!828223 (= e!546098 (and tp!259148 tp!259147))))

(assert (= (and b!828015 ((_ is ElementMatch!2069) (reg!2398 r!27177))) b!828220))

(assert (= (and b!828015 ((_ is Concat!3800) (reg!2398 r!27177))) b!828221))

(assert (= (and b!828015 ((_ is Star!2069) (reg!2398 r!27177))) b!828222))

(assert (= (and b!828015 ((_ is Union!2069) (reg!2398 r!27177))) b!828223))

(check-sat (not bm!48354) (not b!828106) (not b!828183) (not b!828213) (not bm!48336) (not b!828055) (not b!828222) (not b!828207) (not b!828206) (not b!828127) tp_is_empty!3861 (not b!828205) (not bm!48382) (not bm!48361) (not b!828219) (not bm!48383) (not d!259690) (not bm!48386) (not b!828215) (not bm!48355) (not bm!48388) (not d!259680) (not bm!48360) (not b!828211) (not b!828218) (not b!828210) (not d!259670) (not b!828221) (not b!828209) (not bm!48375) (not b!828214) (not b!828185) (not b!828217) (not bm!48339) (not bm!48363) (not bm!48365) (not bm!48337) (not b!828027) (not b!828223) (not b!828112) (not bm!48364) (not b!828114) (not bm!48374) (not bm!48385))
(check-sat)
(get-model)

(declare-fun b!828354 () Bool)

(declare-fun e!546168 () List!8895)

(assert (=> b!828354 (= e!546168 Nil!8879)))

(declare-fun c!134700 () Bool)

(declare-fun b!828355 () Bool)

(assert (=> b!828355 (= c!134700 (nullable!519 (regOne!4650 (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177))))))))

(declare-fun e!546172 () List!8895)

(declare-fun e!546169 () List!8895)

(assert (=> b!828355 (= e!546172 e!546169)))

(declare-fun c!134697 () Bool)

(declare-fun b!828356 () Bool)

(assert (=> b!828356 (= c!134697 ((_ is Star!2069) (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))))))

(declare-fun e!546171 () List!8895)

(declare-fun e!546170 () List!8895)

(assert (=> b!828356 (= e!546171 e!546170)))

(declare-fun bm!48423 () Bool)

(declare-fun call!48429 () List!8895)

(declare-fun call!48432 () List!8895)

(assert (=> bm!48423 (= call!48429 call!48432)))

(declare-fun c!134698 () Bool)

(declare-fun call!48430 () List!8895)

(declare-fun bm!48424 () Bool)

(declare-fun call!48431 () List!8895)

(assert (=> bm!48424 (= call!48430 (++!2295 (ite c!134698 call!48431 call!48429) (ite c!134698 call!48432 call!48431)))))

(declare-fun b!828357 () Bool)

(assert (=> b!828357 (= e!546169 call!48430)))

(declare-fun bm!48425 () Bool)

(assert (=> bm!48425 (= call!48431 (firstChars!40 (ite c!134698 (regOne!4651 (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))) (regTwo!4650 (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))))))))

(declare-fun b!828358 () Bool)

(assert (=> b!828358 (= e!546172 call!48430)))

(declare-fun bm!48426 () Bool)

(declare-fun call!48428 () List!8895)

(assert (=> bm!48426 (= call!48432 call!48428)))

(declare-fun b!828359 () Bool)

(assert (=> b!828359 (= e!546170 call!48428)))

(declare-fun b!828360 () Bool)

(assert (=> b!828360 (= e!546170 e!546172)))

(assert (=> b!828360 (= c!134698 ((_ is Union!2069) (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))))))

(declare-fun d!259710 () Bool)

(declare-fun c!134701 () Bool)

(assert (=> d!259710 (= c!134701 (or ((_ is EmptyExpr!2069) (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))) ((_ is EmptyLang!2069) (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177))))))))

(assert (=> d!259710 (= (firstChars!40 (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))) e!546168)))

(declare-fun bm!48427 () Bool)

(assert (=> bm!48427 (= call!48428 (firstChars!40 (ite c!134697 (reg!2398 (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))) (ite c!134698 (regTwo!4651 (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))) (regOne!4650 (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177))))))))))

(declare-fun b!828361 () Bool)

(assert (=> b!828361 (= e!546168 e!546171)))

(declare-fun c!134699 () Bool)

(assert (=> b!828361 (= c!134699 ((_ is ElementMatch!2069) (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))))))

(declare-fun b!828362 () Bool)

(assert (=> b!828362 (= e!546171 (Cons!8879 (c!134590 (ite c!134654 (reg!2398 r!27177) (ite c!134655 (regTwo!4651 r!27177) (regOne!4650 r!27177)))) Nil!8879))))

(declare-fun b!828363 () Bool)

(assert (=> b!828363 (= e!546169 call!48429)))

(assert (= (and d!259710 c!134701) b!828354))

(assert (= (and d!259710 (not c!134701)) b!828361))

(assert (= (and b!828361 c!134699) b!828362))

(assert (= (and b!828361 (not c!134699)) b!828356))

(assert (= (and b!828356 c!134697) b!828359))

(assert (= (and b!828356 (not c!134697)) b!828360))

(assert (= (and b!828360 c!134698) b!828358))

(assert (= (and b!828360 (not c!134698)) b!828355))

(assert (= (and b!828355 c!134700) b!828357))

(assert (= (and b!828355 (not c!134700)) b!828363))

(assert (= (or b!828357 b!828363) bm!48423))

(assert (= (or b!828358 bm!48423) bm!48426))

(assert (= (or b!828358 b!828357) bm!48425))

(assert (= (or b!828358 b!828357) bm!48424))

(assert (= (or b!828359 bm!48426) bm!48427))

(declare-fun m!1066197 () Bool)

(assert (=> b!828355 m!1066197))

(declare-fun m!1066199 () Bool)

(assert (=> bm!48424 m!1066199))

(declare-fun m!1066201 () Bool)

(assert (=> bm!48425 m!1066201))

(declare-fun m!1066203 () Bool)

(assert (=> bm!48427 m!1066203))

(assert (=> bm!48388 d!259710))

(declare-fun b!828364 () Bool)

(declare-fun e!546173 () List!8895)

(assert (=> b!828364 (= e!546173 Nil!8879)))

(declare-fun b!828365 () Bool)

(declare-fun c!134705 () Bool)

(assert (=> b!828365 (= c!134705 (nullable!519 (regOne!4650 (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))))))

(declare-fun e!546177 () List!8895)

(declare-fun e!546174 () List!8895)

(assert (=> b!828365 (= e!546177 e!546174)))

(declare-fun b!828366 () Bool)

(declare-fun c!134702 () Bool)

(assert (=> b!828366 (= c!134702 ((_ is Star!2069) (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))))))

(declare-fun e!546176 () List!8895)

(declare-fun e!546175 () List!8895)

(assert (=> b!828366 (= e!546176 e!546175)))

(declare-fun bm!48428 () Bool)

(declare-fun call!48434 () List!8895)

(declare-fun call!48437 () List!8895)

(assert (=> bm!48428 (= call!48434 call!48437)))

(declare-fun call!48436 () List!8895)

(declare-fun call!48435 () List!8895)

(declare-fun bm!48429 () Bool)

(declare-fun c!134703 () Bool)

(assert (=> bm!48429 (= call!48435 (++!2295 (ite c!134703 call!48436 call!48434) (ite c!134703 call!48437 call!48436)))))

(declare-fun b!828367 () Bool)

(assert (=> b!828367 (= e!546174 call!48435)))

(declare-fun bm!48430 () Bool)

(assert (=> bm!48430 (= call!48436 (firstChars!40 (ite c!134703 (regOne!4651 (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))) (regTwo!4650 (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))))))))

(declare-fun b!828368 () Bool)

(assert (=> b!828368 (= e!546177 call!48435)))

(declare-fun bm!48431 () Bool)

(declare-fun call!48433 () List!8895)

(assert (=> bm!48431 (= call!48437 call!48433)))

(declare-fun b!828369 () Bool)

(assert (=> b!828369 (= e!546175 call!48433)))

(declare-fun b!828370 () Bool)

(assert (=> b!828370 (= e!546175 e!546177)))

(assert (=> b!828370 (= c!134703 ((_ is Union!2069) (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))))))

(declare-fun d!259712 () Bool)

(declare-fun c!134706 () Bool)

(assert (=> d!259712 (= c!134706 (or ((_ is EmptyExpr!2069) (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))) ((_ is EmptyLang!2069) (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))))))

(assert (=> d!259712 (= (firstChars!40 (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))) e!546173)))

(declare-fun bm!48432 () Bool)

(assert (=> bm!48432 (= call!48433 (firstChars!40 (ite c!134702 (reg!2398 (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))) (ite c!134703 (regTwo!4651 (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))) (regOne!4650 (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))))))))

(declare-fun b!828371 () Bool)

(assert (=> b!828371 (= e!546173 e!546176)))

(declare-fun c!134704 () Bool)

(assert (=> b!828371 (= c!134704 ((_ is ElementMatch!2069) (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))))))

(declare-fun b!828372 () Bool)

(assert (=> b!828372 (= e!546176 (Cons!8879 (c!134590 (ite c!134623 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))) Nil!8879))))

(declare-fun b!828373 () Bool)

(assert (=> b!828373 (= e!546174 call!48434)))

(assert (= (and d!259712 c!134706) b!828364))

(assert (= (and d!259712 (not c!134706)) b!828371))

(assert (= (and b!828371 c!134704) b!828372))

(assert (= (and b!828371 (not c!134704)) b!828366))

(assert (= (and b!828366 c!134702) b!828369))

(assert (= (and b!828366 (not c!134702)) b!828370))

(assert (= (and b!828370 c!134703) b!828368))

(assert (= (and b!828370 (not c!134703)) b!828365))

(assert (= (and b!828365 c!134705) b!828367))

(assert (= (and b!828365 (not c!134705)) b!828373))

(assert (= (or b!828367 b!828373) bm!48428))

(assert (= (or b!828368 bm!48428) bm!48431))

(assert (= (or b!828368 b!828367) bm!48430))

(assert (= (or b!828368 b!828367) bm!48429))

(assert (= (or b!828369 bm!48431) bm!48432))

(declare-fun m!1066205 () Bool)

(assert (=> b!828365 m!1066205))

(declare-fun m!1066207 () Bool)

(assert (=> bm!48429 m!1066207))

(declare-fun m!1066209 () Bool)

(assert (=> bm!48430 m!1066209))

(declare-fun m!1066211 () Bool)

(assert (=> bm!48432 m!1066211))

(assert (=> bm!48361 d!259712))

(declare-fun d!259714 () Bool)

(declare-fun lt!317606 () Bool)

(assert (=> d!259714 (= lt!317606 (select (content!1307 (t!93187 (firstChars!40 r!27177))) c!13916))))

(declare-fun e!546179 () Bool)

(assert (=> d!259714 (= lt!317606 e!546179)))

(declare-fun res!380882 () Bool)

(assert (=> d!259714 (=> (not res!380882) (not e!546179))))

(assert (=> d!259714 (= res!380882 ((_ is Cons!8879) (t!93187 (firstChars!40 r!27177))))))

(assert (=> d!259714 (= (contains!1660 (t!93187 (firstChars!40 r!27177)) c!13916) lt!317606)))

(declare-fun b!828374 () Bool)

(declare-fun e!546178 () Bool)

(assert (=> b!828374 (= e!546179 e!546178)))

(declare-fun res!380883 () Bool)

(assert (=> b!828374 (=> res!380883 e!546178)))

(assert (=> b!828374 (= res!380883 (= (h!14280 (t!93187 (firstChars!40 r!27177))) c!13916))))

(declare-fun b!828375 () Bool)

(assert (=> b!828375 (= e!546178 (contains!1660 (t!93187 (t!93187 (firstChars!40 r!27177))) c!13916))))

(assert (= (and d!259714 res!380882) b!828374))

(assert (= (and b!828374 (not res!380883)) b!828375))

(declare-fun m!1066213 () Bool)

(assert (=> d!259714 m!1066213))

(declare-fun m!1066215 () Bool)

(assert (=> d!259714 m!1066215))

(declare-fun m!1066217 () Bool)

(assert (=> b!828375 m!1066217))

(assert (=> b!828183 d!259714))

(declare-fun b!828376 () Bool)

(declare-fun e!546180 () List!8895)

(assert (=> b!828376 (= e!546180 Nil!8879)))

(declare-fun c!134710 () Bool)

(declare-fun b!828377 () Bool)

(assert (=> b!828377 (= c!134710 (nullable!519 (regOne!4650 (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177)))))))))

(declare-fun e!546184 () List!8895)

(declare-fun e!546181 () List!8895)

(assert (=> b!828377 (= e!546184 e!546181)))

(declare-fun b!828378 () Bool)

(declare-fun c!134707 () Bool)

(assert (=> b!828378 (= c!134707 ((_ is Star!2069) (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))))))

(declare-fun e!546183 () List!8895)

(declare-fun e!546182 () List!8895)

(assert (=> b!828378 (= e!546183 e!546182)))

(declare-fun bm!48433 () Bool)

(declare-fun call!48439 () List!8895)

(declare-fun call!48442 () List!8895)

(assert (=> bm!48433 (= call!48439 call!48442)))

(declare-fun call!48440 () List!8895)

(declare-fun c!134708 () Bool)

(declare-fun call!48441 () List!8895)

(declare-fun bm!48434 () Bool)

(assert (=> bm!48434 (= call!48440 (++!2295 (ite c!134708 call!48441 call!48439) (ite c!134708 call!48442 call!48441)))))

(declare-fun b!828379 () Bool)

(assert (=> b!828379 (= e!546181 call!48440)))

(declare-fun bm!48435 () Bool)

(assert (=> bm!48435 (= call!48441 (firstChars!40 (ite c!134708 (regOne!4651 (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))) (regTwo!4650 (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))))))))

(declare-fun b!828380 () Bool)

(assert (=> b!828380 (= e!546184 call!48440)))

(declare-fun bm!48436 () Bool)

(declare-fun call!48438 () List!8895)

(assert (=> bm!48436 (= call!48442 call!48438)))

(declare-fun b!828381 () Bool)

(assert (=> b!828381 (= e!546182 call!48438)))

(declare-fun b!828382 () Bool)

(assert (=> b!828382 (= e!546182 e!546184)))

(assert (=> b!828382 (= c!134708 ((_ is Union!2069) (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))))))

(declare-fun d!259716 () Bool)

(declare-fun c!134711 () Bool)

(assert (=> d!259716 (= c!134711 (or ((_ is EmptyExpr!2069) (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))) ((_ is EmptyLang!2069) (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177)))))))))

(assert (=> d!259716 (= (firstChars!40 (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))) e!546180)))

(declare-fun bm!48437 () Bool)

(assert (=> bm!48437 (= call!48438 (firstChars!40 (ite c!134707 (reg!2398 (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))) (ite c!134708 (regTwo!4651 (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))) (regOne!4650 (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177)))))))))))

(declare-fun b!828383 () Bool)

(assert (=> b!828383 (= e!546180 e!546183)))

(declare-fun c!134709 () Bool)

(assert (=> b!828383 (= c!134709 ((_ is ElementMatch!2069) (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))))))

(declare-fun b!828384 () Bool)

(assert (=> b!828384 (= e!546183 (Cons!8879 (c!134590 (ite c!134601 (reg!2398 (regOne!4651 r!27177)) (ite c!134602 (regTwo!4651 (regOne!4651 r!27177)) (regOne!4650 (regOne!4651 r!27177))))) Nil!8879))))

(declare-fun b!828385 () Bool)

(assert (=> b!828385 (= e!546181 call!48439)))

(assert (= (and d!259716 c!134711) b!828376))

(assert (= (and d!259716 (not c!134711)) b!828383))

(assert (= (and b!828383 c!134709) b!828384))

(assert (= (and b!828383 (not c!134709)) b!828378))

(assert (= (and b!828378 c!134707) b!828381))

(assert (= (and b!828378 (not c!134707)) b!828382))

(assert (= (and b!828382 c!134708) b!828380))

(assert (= (and b!828382 (not c!134708)) b!828377))

(assert (= (and b!828377 c!134710) b!828379))

(assert (= (and b!828377 (not c!134710)) b!828385))

(assert (= (or b!828379 b!828385) bm!48433))

(assert (= (or b!828380 bm!48433) bm!48436))

(assert (= (or b!828380 b!828379) bm!48435))

(assert (= (or b!828380 b!828379) bm!48434))

(assert (= (or b!828381 bm!48436) bm!48437))

(declare-fun m!1066219 () Bool)

(assert (=> b!828377 m!1066219))

(declare-fun m!1066221 () Bool)

(assert (=> bm!48434 m!1066221))

(declare-fun m!1066223 () Bool)

(assert (=> bm!48435 m!1066223))

(declare-fun m!1066225 () Bool)

(assert (=> bm!48437 m!1066225))

(assert (=> bm!48339 d!259716))

(declare-fun bm!48438 () Bool)

(declare-fun c!134713 () Bool)

(declare-fun c!134712 () Bool)

(declare-fun call!48445 () Bool)

(assert (=> bm!48438 (= call!48445 (validRegex!622 (ite c!134712 (reg!2398 (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))) (ite c!134713 (regOne!4651 (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))) (regTwo!4650 (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177))))))))))

(declare-fun b!828386 () Bool)

(declare-fun res!380884 () Bool)

(declare-fun e!546186 () Bool)

(assert (=> b!828386 (=> res!380884 e!546186)))

(assert (=> b!828386 (= res!380884 (not ((_ is Concat!3800) (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177))))))))

(declare-fun e!546189 () Bool)

(assert (=> b!828386 (= e!546189 e!546186)))

(declare-fun b!828387 () Bool)

(declare-fun e!546188 () Bool)

(declare-fun e!546190 () Bool)

(assert (=> b!828387 (= e!546188 e!546190)))

(assert (=> b!828387 (= c!134712 ((_ is Star!2069) (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))))))

(declare-fun b!828388 () Bool)

(declare-fun e!546187 () Bool)

(assert (=> b!828388 (= e!546186 e!546187)))

(declare-fun res!380885 () Bool)

(assert (=> b!828388 (=> (not res!380885) (not e!546187))))

(declare-fun call!48443 () Bool)

(assert (=> b!828388 (= res!380885 call!48443)))

(declare-fun bm!48439 () Bool)

(assert (=> bm!48439 (= call!48443 (validRegex!622 (ite c!134713 (regTwo!4651 (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))) (regOne!4650 (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))))))))

(declare-fun b!828389 () Bool)

(declare-fun e!546191 () Bool)

(assert (=> b!828389 (= e!546191 call!48443)))

(declare-fun d!259718 () Bool)

(declare-fun res!380886 () Bool)

(assert (=> d!259718 (=> res!380886 e!546188)))

(assert (=> d!259718 (= res!380886 ((_ is ElementMatch!2069) (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))))))

(assert (=> d!259718 (= (validRegex!622 (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))) e!546188)))

(declare-fun b!828390 () Bool)

(declare-fun e!546185 () Bool)

(assert (=> b!828390 (= e!546190 e!546185)))

(declare-fun res!380888 () Bool)

(assert (=> b!828390 (= res!380888 (not (nullable!519 (reg!2398 (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))))))))

(assert (=> b!828390 (=> (not res!380888) (not e!546185))))

(declare-fun b!828391 () Bool)

(assert (=> b!828391 (= e!546185 call!48445)))

(declare-fun b!828392 () Bool)

(declare-fun res!380887 () Bool)

(assert (=> b!828392 (=> (not res!380887) (not e!546191))))

(declare-fun call!48444 () Bool)

(assert (=> b!828392 (= res!380887 call!48444)))

(assert (=> b!828392 (= e!546189 e!546191)))

(declare-fun b!828393 () Bool)

(assert (=> b!828393 (= e!546187 call!48444)))

(declare-fun b!828394 () Bool)

(assert (=> b!828394 (= e!546190 e!546189)))

(assert (=> b!828394 (= c!134713 ((_ is Union!2069) (ite c!134620 (reg!2398 r!27177) (ite c!134621 (regOne!4651 r!27177) (regTwo!4650 r!27177)))))))

(declare-fun bm!48440 () Bool)

(assert (=> bm!48440 (= call!48444 call!48445)))

(assert (= (and d!259718 (not res!380886)) b!828387))

(assert (= (and b!828387 c!134712) b!828390))

(assert (= (and b!828387 (not c!134712)) b!828394))

(assert (= (and b!828390 res!380888) b!828391))

(assert (= (and b!828394 c!134713) b!828392))

(assert (= (and b!828394 (not c!134713)) b!828386))

(assert (= (and b!828392 res!380887) b!828389))

(assert (= (and b!828386 (not res!380884)) b!828388))

(assert (= (and b!828388 res!380885) b!828393))

(assert (= (or b!828392 b!828393) bm!48440))

(assert (= (or b!828389 b!828388) bm!48439))

(assert (= (or b!828391 bm!48440) bm!48438))

(declare-fun m!1066227 () Bool)

(assert (=> bm!48438 m!1066227))

(declare-fun m!1066229 () Bool)

(assert (=> bm!48439 m!1066229))

(declare-fun m!1066231 () Bool)

(assert (=> b!828390 m!1066231))

(assert (=> bm!48354 d!259718))

(declare-fun d!259720 () Bool)

(declare-fun e!546197 () Bool)

(assert (=> d!259720 e!546197))

(declare-fun res!380893 () Bool)

(assert (=> d!259720 (=> (not res!380893) (not e!546197))))

(declare-fun lt!317609 () List!8895)

(assert (=> d!259720 (= res!380893 (= (content!1307 lt!317609) ((_ map or) (content!1307 (ite c!134602 call!48343 call!48341)) (content!1307 (ite c!134602 call!48344 call!48343)))))))

(declare-fun e!546196 () List!8895)

(assert (=> d!259720 (= lt!317609 e!546196)))

(declare-fun c!134716 () Bool)

(assert (=> d!259720 (= c!134716 ((_ is Nil!8879) (ite c!134602 call!48343 call!48341)))))

(assert (=> d!259720 (= (++!2295 (ite c!134602 call!48343 call!48341) (ite c!134602 call!48344 call!48343)) lt!317609)))

(declare-fun b!828404 () Bool)

(assert (=> b!828404 (= e!546196 (Cons!8879 (h!14280 (ite c!134602 call!48343 call!48341)) (++!2295 (t!93187 (ite c!134602 call!48343 call!48341)) (ite c!134602 call!48344 call!48343))))))

(declare-fun b!828405 () Bool)

(declare-fun res!380894 () Bool)

(assert (=> b!828405 (=> (not res!380894) (not e!546197))))

(declare-fun size!7476 (List!8895) Int)

(assert (=> b!828405 (= res!380894 (= (size!7476 lt!317609) (+ (size!7476 (ite c!134602 call!48343 call!48341)) (size!7476 (ite c!134602 call!48344 call!48343)))))))

(declare-fun b!828403 () Bool)

(assert (=> b!828403 (= e!546196 (ite c!134602 call!48344 call!48343))))

(declare-fun b!828406 () Bool)

(assert (=> b!828406 (= e!546197 (or (not (= (ite c!134602 call!48344 call!48343) Nil!8879)) (= lt!317609 (ite c!134602 call!48343 call!48341))))))

(assert (= (and d!259720 c!134716) b!828403))

(assert (= (and d!259720 (not c!134716)) b!828404))

(assert (= (and d!259720 res!380893) b!828405))

(assert (= (and b!828405 res!380894) b!828406))

(declare-fun m!1066233 () Bool)

(assert (=> d!259720 m!1066233))

(declare-fun m!1066235 () Bool)

(assert (=> d!259720 m!1066235))

(declare-fun m!1066237 () Bool)

(assert (=> d!259720 m!1066237))

(declare-fun m!1066239 () Bool)

(assert (=> b!828404 m!1066239))

(declare-fun m!1066241 () Bool)

(assert (=> b!828405 m!1066241))

(declare-fun m!1066243 () Bool)

(assert (=> b!828405 m!1066243))

(declare-fun m!1066245 () Bool)

(assert (=> b!828405 m!1066245))

(assert (=> bm!48336 d!259720))

(declare-fun b!828407 () Bool)

(declare-fun e!546198 () List!8895)

(assert (=> b!828407 (= e!546198 Nil!8879)))

(declare-fun b!828408 () Bool)

(declare-fun c!134720 () Bool)

(assert (=> b!828408 (= c!134720 (nullable!519 (regOne!4650 (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177)))))))

(declare-fun e!546202 () List!8895)

(declare-fun e!546199 () List!8895)

(assert (=> b!828408 (= e!546202 e!546199)))

(declare-fun b!828409 () Bool)

(declare-fun c!134717 () Bool)

(assert (=> b!828409 (= c!134717 ((_ is Star!2069) (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))))))

(declare-fun e!546201 () List!8895)

(declare-fun e!546200 () List!8895)

(assert (=> b!828409 (= e!546201 e!546200)))

(declare-fun bm!48441 () Bool)

(declare-fun call!48447 () List!8895)

(declare-fun call!48450 () List!8895)

(assert (=> bm!48441 (= call!48447 call!48450)))

(declare-fun call!48448 () List!8895)

(declare-fun bm!48442 () Bool)

(declare-fun call!48449 () List!8895)

(declare-fun c!134718 () Bool)

(assert (=> bm!48442 (= call!48448 (++!2295 (ite c!134718 call!48449 call!48447) (ite c!134718 call!48450 call!48449)))))

(declare-fun b!828410 () Bool)

(assert (=> b!828410 (= e!546199 call!48448)))

(declare-fun bm!48443 () Bool)

(assert (=> bm!48443 (= call!48449 (firstChars!40 (ite c!134718 (regOne!4651 (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))) (regTwo!4650 (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))))))))

(declare-fun b!828411 () Bool)

(assert (=> b!828411 (= e!546202 call!48448)))

(declare-fun bm!48444 () Bool)

(declare-fun call!48446 () List!8895)

(assert (=> bm!48444 (= call!48450 call!48446)))

(declare-fun b!828412 () Bool)

(assert (=> b!828412 (= e!546200 call!48446)))

(declare-fun b!828413 () Bool)

(assert (=> b!828413 (= e!546200 e!546202)))

(assert (=> b!828413 (= c!134718 ((_ is Union!2069) (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))))))

(declare-fun d!259722 () Bool)

(declare-fun c!134721 () Bool)

(assert (=> d!259722 (= c!134721 (or ((_ is EmptyExpr!2069) (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))) ((_ is EmptyLang!2069) (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177)))))))

(assert (=> d!259722 (= (firstChars!40 (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))) e!546198)))

(declare-fun bm!48445 () Bool)

(assert (=> bm!48445 (= call!48446 (firstChars!40 (ite c!134717 (reg!2398 (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))) (ite c!134718 (regTwo!4651 (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))) (regOne!4650 (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177)))))))))

(declare-fun b!828414 () Bool)

(assert (=> b!828414 (= e!546198 e!546201)))

(declare-fun c!134719 () Bool)

(assert (=> b!828414 (= c!134719 ((_ is ElementMatch!2069) (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))))))

(declare-fun b!828415 () Bool)

(assert (=> b!828415 (= e!546201 (Cons!8879 (c!134590 (ite c!134655 (regOne!4651 r!27177) (regTwo!4650 r!27177))) Nil!8879))))

(declare-fun b!828416 () Bool)

(assert (=> b!828416 (= e!546199 call!48447)))

(assert (= (and d!259722 c!134721) b!828407))

(assert (= (and d!259722 (not c!134721)) b!828414))

(assert (= (and b!828414 c!134719) b!828415))

(assert (= (and b!828414 (not c!134719)) b!828409))

(assert (= (and b!828409 c!134717) b!828412))

(assert (= (and b!828409 (not c!134717)) b!828413))

(assert (= (and b!828413 c!134718) b!828411))

(assert (= (and b!828413 (not c!134718)) b!828408))

(assert (= (and b!828408 c!134720) b!828410))

(assert (= (and b!828408 (not c!134720)) b!828416))

(assert (= (or b!828410 b!828416) bm!48441))

(assert (= (or b!828411 bm!48441) bm!48444))

(assert (= (or b!828411 b!828410) bm!48443))

(assert (= (or b!828411 b!828410) bm!48442))

(assert (= (or b!828412 bm!48444) bm!48445))

(declare-fun m!1066247 () Bool)

(assert (=> b!828408 m!1066247))

(declare-fun m!1066249 () Bool)

(assert (=> bm!48442 m!1066249))

(declare-fun m!1066251 () Bool)

(assert (=> bm!48443 m!1066251))

(declare-fun m!1066253 () Bool)

(assert (=> bm!48445 m!1066253))

(assert (=> bm!48386 d!259722))

(declare-fun d!259724 () Bool)

(declare-fun nullableFct!158 (Regex!2069) Bool)

(assert (=> d!259724 (= (nullable!519 (regOne!4650 (regTwo!4651 r!27177))) (nullableFct!158 (regOne!4650 (regTwo!4651 r!27177))))))

(declare-fun bs!229612 () Bool)

(assert (= bs!229612 d!259724))

(declare-fun m!1066255 () Bool)

(assert (=> bs!229612 m!1066255))

(assert (=> b!828114 d!259724))

(declare-fun d!259726 () Bool)

(declare-fun c!134724 () Bool)

(assert (=> d!259726 (= c!134724 ((_ is Nil!8879) (firstChars!40 r!27177)))))

(declare-fun e!546205 () (InoxSet C!4708))

(assert (=> d!259726 (= (content!1307 (firstChars!40 r!27177)) e!546205)))

(declare-fun b!828421 () Bool)

(assert (=> b!828421 (= e!546205 ((as const (Array C!4708 Bool)) false))))

(declare-fun b!828422 () Bool)

(assert (=> b!828422 (= e!546205 ((_ map or) (store ((as const (Array C!4708 Bool)) false) (h!14280 (firstChars!40 r!27177)) true) (content!1307 (t!93187 (firstChars!40 r!27177)))))))

(assert (= (and d!259726 c!134724) b!828421))

(assert (= (and d!259726 (not c!134724)) b!828422))

(declare-fun m!1066257 () Bool)

(assert (=> b!828422 m!1066257))

(assert (=> b!828422 m!1066213))

(assert (=> d!259690 d!259726))

(declare-fun d!259728 () Bool)

(declare-fun e!546207 () Bool)

(assert (=> d!259728 e!546207))

(declare-fun res!380895 () Bool)

(assert (=> d!259728 (=> (not res!380895) (not e!546207))))

(declare-fun lt!317610 () List!8895)

(assert (=> d!259728 (= res!380895 (= (content!1307 lt!317610) ((_ map or) (content!1307 (ite c!134623 call!48367 call!48365)) (content!1307 (ite c!134623 call!48368 call!48367)))))))

(declare-fun e!546206 () List!8895)

(assert (=> d!259728 (= lt!317610 e!546206)))

(declare-fun c!134725 () Bool)

(assert (=> d!259728 (= c!134725 ((_ is Nil!8879) (ite c!134623 call!48367 call!48365)))))

(assert (=> d!259728 (= (++!2295 (ite c!134623 call!48367 call!48365) (ite c!134623 call!48368 call!48367)) lt!317610)))

(declare-fun b!828424 () Bool)

(assert (=> b!828424 (= e!546206 (Cons!8879 (h!14280 (ite c!134623 call!48367 call!48365)) (++!2295 (t!93187 (ite c!134623 call!48367 call!48365)) (ite c!134623 call!48368 call!48367))))))

(declare-fun b!828425 () Bool)

(declare-fun res!380896 () Bool)

(assert (=> b!828425 (=> (not res!380896) (not e!546207))))

(assert (=> b!828425 (= res!380896 (= (size!7476 lt!317610) (+ (size!7476 (ite c!134623 call!48367 call!48365)) (size!7476 (ite c!134623 call!48368 call!48367)))))))

(declare-fun b!828423 () Bool)

(assert (=> b!828423 (= e!546206 (ite c!134623 call!48368 call!48367))))

(declare-fun b!828426 () Bool)

(assert (=> b!828426 (= e!546207 (or (not (= (ite c!134623 call!48368 call!48367) Nil!8879)) (= lt!317610 (ite c!134623 call!48367 call!48365))))))

(assert (= (and d!259728 c!134725) b!828423))

(assert (= (and d!259728 (not c!134725)) b!828424))

(assert (= (and d!259728 res!380895) b!828425))

(assert (= (and b!828425 res!380896) b!828426))

(declare-fun m!1066259 () Bool)

(assert (=> d!259728 m!1066259))

(declare-fun m!1066261 () Bool)

(assert (=> d!259728 m!1066261))

(declare-fun m!1066263 () Bool)

(assert (=> d!259728 m!1066263))

(declare-fun m!1066265 () Bool)

(assert (=> b!828424 m!1066265))

(declare-fun m!1066267 () Bool)

(assert (=> b!828425 m!1066267))

(declare-fun m!1066269 () Bool)

(assert (=> b!828425 m!1066269))

(declare-fun m!1066271 () Bool)

(assert (=> b!828425 m!1066271))

(assert (=> bm!48360 d!259728))

(declare-fun c!134726 () Bool)

(declare-fun c!134727 () Bool)

(declare-fun call!48453 () Bool)

(declare-fun bm!48446 () Bool)

(assert (=> bm!48446 (= call!48453 (validRegex!622 (ite c!134726 (reg!2398 (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))) (ite c!134727 (regOne!4651 (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))) (regTwo!4650 (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))))))))

(declare-fun b!828427 () Bool)

(declare-fun res!380897 () Bool)

(declare-fun e!546209 () Bool)

(assert (=> b!828427 (=> res!380897 e!546209)))

(assert (=> b!828427 (= res!380897 (not ((_ is Concat!3800) (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))))))

(declare-fun e!546212 () Bool)

(assert (=> b!828427 (= e!546212 e!546209)))

(declare-fun b!828428 () Bool)

(declare-fun e!546211 () Bool)

(declare-fun e!546213 () Bool)

(assert (=> b!828428 (= e!546211 e!546213)))

(assert (=> b!828428 (= c!134726 ((_ is Star!2069) (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))))))

(declare-fun b!828429 () Bool)

(declare-fun e!546210 () Bool)

(assert (=> b!828429 (= e!546209 e!546210)))

(declare-fun res!380898 () Bool)

(assert (=> b!828429 (=> (not res!380898) (not e!546210))))

(declare-fun call!48451 () Bool)

(assert (=> b!828429 (= res!380898 call!48451)))

(declare-fun bm!48447 () Bool)

(assert (=> bm!48447 (= call!48451 (validRegex!622 (ite c!134727 (regTwo!4651 (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))) (regOne!4650 (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))))))))

(declare-fun b!828430 () Bool)

(declare-fun e!546214 () Bool)

(assert (=> b!828430 (= e!546214 call!48451)))

(declare-fun d!259730 () Bool)

(declare-fun res!380899 () Bool)

(assert (=> d!259730 (=> res!380899 e!546211)))

(assert (=> d!259730 (= res!380899 ((_ is ElementMatch!2069) (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))))))

(assert (=> d!259730 (= (validRegex!622 (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))) e!546211)))

(declare-fun b!828431 () Bool)

(declare-fun e!546208 () Bool)

(assert (=> b!828431 (= e!546213 e!546208)))

(declare-fun res!380901 () Bool)

(assert (=> b!828431 (= res!380901 (not (nullable!519 (reg!2398 (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))))))))

(assert (=> b!828431 (=> (not res!380901) (not e!546208))))

(declare-fun b!828432 () Bool)

(assert (=> b!828432 (= e!546208 call!48453)))

(declare-fun b!828433 () Bool)

(declare-fun res!380900 () Bool)

(assert (=> b!828433 (=> (not res!380900) (not e!546214))))

(declare-fun call!48452 () Bool)

(assert (=> b!828433 (= res!380900 call!48452)))

(assert (=> b!828433 (= e!546212 e!546214)))

(declare-fun b!828434 () Bool)

(assert (=> b!828434 (= e!546210 call!48452)))

(declare-fun b!828435 () Bool)

(assert (=> b!828435 (= e!546213 e!546212)))

(assert (=> b!828435 (= c!134727 ((_ is Union!2069) (ite c!134628 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))))))

(declare-fun bm!48448 () Bool)

(assert (=> bm!48448 (= call!48452 call!48453)))

(assert (= (and d!259730 (not res!380899)) b!828428))

(assert (= (and b!828428 c!134726) b!828431))

(assert (= (and b!828428 (not c!134726)) b!828435))

(assert (= (and b!828431 res!380901) b!828432))

(assert (= (and b!828435 c!134727) b!828433))

(assert (= (and b!828435 (not c!134727)) b!828427))

(assert (= (and b!828433 res!380900) b!828430))

(assert (= (and b!828427 (not res!380897)) b!828429))

(assert (= (and b!828429 res!380898) b!828434))

(assert (= (or b!828433 b!828434) bm!48448))

(assert (= (or b!828430 b!828429) bm!48447))

(assert (= (or b!828432 bm!48448) bm!48446))

(declare-fun m!1066273 () Bool)

(assert (=> bm!48446 m!1066273))

(declare-fun m!1066275 () Bool)

(assert (=> bm!48447 m!1066275))

(declare-fun m!1066277 () Bool)

(assert (=> b!828431 m!1066277))

(assert (=> bm!48365 d!259730))

(declare-fun b!828436 () Bool)

(declare-fun e!546215 () List!8895)

(assert (=> b!828436 (= e!546215 Nil!8879)))

(declare-fun b!828437 () Bool)

(declare-fun c!134731 () Bool)

(assert (=> b!828437 (= c!134731 (nullable!519 (regOne!4650 (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177))))))))

(declare-fun e!546219 () List!8895)

(declare-fun e!546216 () List!8895)

(assert (=> b!828437 (= e!546219 e!546216)))

(declare-fun b!828438 () Bool)

(declare-fun c!134728 () Bool)

(assert (=> b!828438 (= c!134728 ((_ is Star!2069) (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))))))

(declare-fun e!546218 () List!8895)

(declare-fun e!546217 () List!8895)

(assert (=> b!828438 (= e!546218 e!546217)))

(declare-fun bm!48449 () Bool)

(declare-fun call!48455 () List!8895)

(declare-fun call!48458 () List!8895)

(assert (=> bm!48449 (= call!48455 call!48458)))

(declare-fun c!134729 () Bool)

(declare-fun call!48456 () List!8895)

(declare-fun bm!48450 () Bool)

(declare-fun call!48457 () List!8895)

(assert (=> bm!48450 (= call!48456 (++!2295 (ite c!134729 call!48457 call!48455) (ite c!134729 call!48458 call!48457)))))

(declare-fun b!828439 () Bool)

(assert (=> b!828439 (= e!546216 call!48456)))

(declare-fun bm!48451 () Bool)

(assert (=> bm!48451 (= call!48457 (firstChars!40 (ite c!134729 (regOne!4651 (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))) (regTwo!4650 (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))))))))

(declare-fun b!828440 () Bool)

(assert (=> b!828440 (= e!546219 call!48456)))

(declare-fun bm!48452 () Bool)

(declare-fun call!48454 () List!8895)

(assert (=> bm!48452 (= call!48458 call!48454)))

(declare-fun b!828441 () Bool)

(assert (=> b!828441 (= e!546217 call!48454)))

(declare-fun b!828442 () Bool)

(assert (=> b!828442 (= e!546217 e!546219)))

(assert (=> b!828442 (= c!134729 ((_ is Union!2069) (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))))))

(declare-fun d!259732 () Bool)

(declare-fun c!134732 () Bool)

(assert (=> d!259732 (= c!134732 (or ((_ is EmptyExpr!2069) (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))) ((_ is EmptyLang!2069) (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177))))))))

(assert (=> d!259732 (= (firstChars!40 (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))) e!546215)))

(declare-fun bm!48453 () Bool)

(assert (=> bm!48453 (= call!48454 (firstChars!40 (ite c!134728 (reg!2398 (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))) (ite c!134729 (regTwo!4651 (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))) (regOne!4650 (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177))))))))))

(declare-fun b!828443 () Bool)

(assert (=> b!828443 (= e!546215 e!546218)))

(declare-fun c!134730 () Bool)

(assert (=> b!828443 (= c!134730 ((_ is ElementMatch!2069) (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))))))

(declare-fun b!828444 () Bool)

(assert (=> b!828444 (= e!546218 (Cons!8879 (c!134590 (ite c!134602 (regOne!4651 (regOne!4651 r!27177)) (regTwo!4650 (regOne!4651 r!27177)))) Nil!8879))))

(declare-fun b!828445 () Bool)

(assert (=> b!828445 (= e!546216 call!48455)))

(assert (= (and d!259732 c!134732) b!828436))

(assert (= (and d!259732 (not c!134732)) b!828443))

(assert (= (and b!828443 c!134730) b!828444))

(assert (= (and b!828443 (not c!134730)) b!828438))

(assert (= (and b!828438 c!134728) b!828441))

(assert (= (and b!828438 (not c!134728)) b!828442))

(assert (= (and b!828442 c!134729) b!828440))

(assert (= (and b!828442 (not c!134729)) b!828437))

(assert (= (and b!828437 c!134731) b!828439))

(assert (= (and b!828437 (not c!134731)) b!828445))

(assert (= (or b!828439 b!828445) bm!48449))

(assert (= (or b!828440 bm!48449) bm!48452))

(assert (= (or b!828440 b!828439) bm!48451))

(assert (= (or b!828440 b!828439) bm!48450))

(assert (= (or b!828441 bm!48452) bm!48453))

(declare-fun m!1066279 () Bool)

(assert (=> b!828437 m!1066279))

(declare-fun m!1066281 () Bool)

(assert (=> bm!48450 m!1066281))

(declare-fun m!1066283 () Bool)

(assert (=> bm!48451 m!1066283))

(declare-fun m!1066285 () Bool)

(assert (=> bm!48453 m!1066285))

(assert (=> bm!48337 d!259732))

(declare-fun d!259734 () Bool)

(assert (=> d!259734 (= (nullable!519 (reg!2398 (regTwo!4651 r!27177))) (nullableFct!158 (reg!2398 (regTwo!4651 r!27177))))))

(declare-fun bs!229613 () Bool)

(assert (= bs!229613 d!259734))

(declare-fun m!1066287 () Bool)

(assert (=> bs!229613 m!1066287))

(assert (=> b!828127 d!259734))

(declare-fun d!259736 () Bool)

(declare-fun lt!317611 () Bool)

(assert (=> d!259736 (= lt!317611 (select (content!1307 (t!93187 (firstChars!40 (regOne!4651 r!27177)))) c!13916))))

(declare-fun e!546221 () Bool)

(assert (=> d!259736 (= lt!317611 e!546221)))

(declare-fun res!380902 () Bool)

(assert (=> d!259736 (=> (not res!380902) (not e!546221))))

(assert (=> d!259736 (= res!380902 ((_ is Cons!8879) (t!93187 (firstChars!40 (regOne!4651 r!27177)))))))

(assert (=> d!259736 (= (contains!1660 (t!93187 (firstChars!40 (regOne!4651 r!27177))) c!13916) lt!317611)))

(declare-fun b!828446 () Bool)

(declare-fun e!546220 () Bool)

(assert (=> b!828446 (= e!546221 e!546220)))

(declare-fun res!380903 () Bool)

(assert (=> b!828446 (=> res!380903 e!546220)))

(assert (=> b!828446 (= res!380903 (= (h!14280 (t!93187 (firstChars!40 (regOne!4651 r!27177)))) c!13916))))

(declare-fun b!828447 () Bool)

(assert (=> b!828447 (= e!546220 (contains!1660 (t!93187 (t!93187 (firstChars!40 (regOne!4651 r!27177)))) c!13916))))

(assert (= (and d!259736 res!380902) b!828446))

(assert (= (and b!828446 (not res!380903)) b!828447))

(declare-fun m!1066289 () Bool)

(assert (=> d!259736 m!1066289))

(declare-fun m!1066291 () Bool)

(assert (=> d!259736 m!1066291))

(declare-fun m!1066293 () Bool)

(assert (=> b!828447 m!1066293))

(assert (=> b!828027 d!259736))

(declare-fun d!259738 () Bool)

(assert (=> d!259738 (= (nullable!519 (regOne!4650 r!27177)) (nullableFct!158 (regOne!4650 r!27177)))))

(declare-fun bs!229614 () Bool)

(assert (= bs!229614 d!259738))

(declare-fun m!1066295 () Bool)

(assert (=> bs!229614 m!1066295))

(assert (=> b!828185 d!259738))

(declare-fun d!259740 () Bool)

(declare-fun lt!317612 () Bool)

(assert (=> d!259740 (= lt!317612 (select (content!1307 (t!93187 (firstChars!40 (regTwo!4651 r!27177)))) c!13916))))

(declare-fun e!546223 () Bool)

(assert (=> d!259740 (= lt!317612 e!546223)))

(declare-fun res!380904 () Bool)

(assert (=> d!259740 (=> (not res!380904) (not e!546223))))

(assert (=> d!259740 (= res!380904 ((_ is Cons!8879) (t!93187 (firstChars!40 (regTwo!4651 r!27177)))))))

(assert (=> d!259740 (= (contains!1660 (t!93187 (firstChars!40 (regTwo!4651 r!27177))) c!13916) lt!317612)))

(declare-fun b!828448 () Bool)

(declare-fun e!546222 () Bool)

(assert (=> b!828448 (= e!546223 e!546222)))

(declare-fun res!380905 () Bool)

(assert (=> b!828448 (=> res!380905 e!546222)))

(assert (=> b!828448 (= res!380905 (= (h!14280 (t!93187 (firstChars!40 (regTwo!4651 r!27177)))) c!13916))))

(declare-fun b!828449 () Bool)

(assert (=> b!828449 (= e!546222 (contains!1660 (t!93187 (t!93187 (firstChars!40 (regTwo!4651 r!27177)))) c!13916))))

(assert (= (and d!259740 res!380904) b!828448))

(assert (= (and b!828448 (not res!380905)) b!828449))

(declare-fun m!1066297 () Bool)

(assert (=> d!259740 m!1066297))

(declare-fun m!1066299 () Bool)

(assert (=> d!259740 m!1066299))

(declare-fun m!1066301 () Bool)

(assert (=> b!828449 m!1066301))

(assert (=> b!828112 d!259740))

(declare-fun d!259742 () Bool)

(assert (=> d!259742 (= (nullable!519 (regOne!4650 (regOne!4651 r!27177))) (nullableFct!158 (regOne!4650 (regOne!4651 r!27177))))))

(declare-fun bs!229615 () Bool)

(assert (= bs!229615 d!259742))

(declare-fun m!1066303 () Bool)

(assert (=> bs!229615 m!1066303))

(assert (=> b!828055 d!259742))

(declare-fun d!259744 () Bool)

(declare-fun c!134733 () Bool)

(assert (=> d!259744 (= c!134733 ((_ is Nil!8879) (firstChars!40 (regOne!4651 r!27177))))))

(declare-fun e!546224 () (InoxSet C!4708))

(assert (=> d!259744 (= (content!1307 (firstChars!40 (regOne!4651 r!27177))) e!546224)))

(declare-fun b!828450 () Bool)

(assert (=> b!828450 (= e!546224 ((as const (Array C!4708 Bool)) false))))

(declare-fun b!828451 () Bool)

(assert (=> b!828451 (= e!546224 ((_ map or) (store ((as const (Array C!4708 Bool)) false) (h!14280 (firstChars!40 (regOne!4651 r!27177))) true) (content!1307 (t!93187 (firstChars!40 (regOne!4651 r!27177))))))))

(assert (= (and d!259744 c!134733) b!828450))

(assert (= (and d!259744 (not c!134733)) b!828451))

(declare-fun m!1066305 () Bool)

(assert (=> b!828451 m!1066305))

(assert (=> b!828451 m!1066289))

(assert (=> d!259670 d!259744))

(declare-fun bm!48454 () Bool)

(declare-fun call!48461 () Bool)

(declare-fun c!134735 () Bool)

(declare-fun c!134734 () Bool)

(assert (=> bm!48454 (= call!48461 (validRegex!622 (ite c!134734 (reg!2398 (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))) (ite c!134735 (regOne!4651 (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))) (regTwo!4650 (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))))))))))

(declare-fun b!828452 () Bool)

(declare-fun res!380906 () Bool)

(declare-fun e!546226 () Bool)

(assert (=> b!828452 (=> res!380906 e!546226)))

(assert (=> b!828452 (= res!380906 (not ((_ is Concat!3800) (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177)))))))))

(declare-fun e!546229 () Bool)

(assert (=> b!828452 (= e!546229 e!546226)))

(declare-fun b!828453 () Bool)

(declare-fun e!546228 () Bool)

(declare-fun e!546230 () Bool)

(assert (=> b!828453 (= e!546228 e!546230)))

(assert (=> b!828453 (= c!134734 ((_ is Star!2069) (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))))))

(declare-fun b!828454 () Bool)

(declare-fun e!546227 () Bool)

(assert (=> b!828454 (= e!546226 e!546227)))

(declare-fun res!380907 () Bool)

(assert (=> b!828454 (=> (not res!380907) (not e!546227))))

(declare-fun call!48459 () Bool)

(assert (=> b!828454 (= res!380907 call!48459)))

(declare-fun bm!48455 () Bool)

(assert (=> bm!48455 (= call!48459 (validRegex!622 (ite c!134735 (regTwo!4651 (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))) (regOne!4650 (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))))))))

(declare-fun b!828455 () Bool)

(declare-fun e!546231 () Bool)

(assert (=> b!828455 (= e!546231 call!48459)))

(declare-fun d!259746 () Bool)

(declare-fun res!380908 () Bool)

(assert (=> d!259746 (=> res!380908 e!546228)))

(assert (=> d!259746 (= res!380908 ((_ is ElementMatch!2069) (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))))))

(assert (=> d!259746 (= (validRegex!622 (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))) e!546228)))

(declare-fun b!828456 () Bool)

(declare-fun e!546225 () Bool)

(assert (=> b!828456 (= e!546230 e!546225)))

(declare-fun res!380910 () Bool)

(assert (=> b!828456 (= res!380910 (not (nullable!519 (reg!2398 (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))))))))

(assert (=> b!828456 (=> (not res!380910) (not e!546225))))

(declare-fun b!828457 () Bool)

(assert (=> b!828457 (= e!546225 call!48461)))

(declare-fun b!828458 () Bool)

(declare-fun res!380909 () Bool)

(assert (=> b!828458 (=> (not res!380909) (not e!546231))))

(declare-fun call!48460 () Bool)

(assert (=> b!828458 (= res!380909 call!48460)))

(assert (=> b!828458 (= e!546229 e!546231)))

(declare-fun b!828459 () Bool)

(assert (=> b!828459 (= e!546227 call!48460)))

(declare-fun b!828460 () Bool)

(assert (=> b!828460 (= e!546230 e!546229)))

(assert (=> b!828460 (= c!134735 ((_ is Union!2069) (ite c!134627 (reg!2398 (regTwo!4651 r!27177)) (ite c!134628 (regOne!4651 (regTwo!4651 r!27177)) (regTwo!4650 (regTwo!4651 r!27177))))))))

(declare-fun bm!48456 () Bool)

(assert (=> bm!48456 (= call!48460 call!48461)))

(assert (= (and d!259746 (not res!380908)) b!828453))

(assert (= (and b!828453 c!134734) b!828456))

(assert (= (and b!828453 (not c!134734)) b!828460))

(assert (= (and b!828456 res!380910) b!828457))

(assert (= (and b!828460 c!134735) b!828458))

(assert (= (and b!828460 (not c!134735)) b!828452))

(assert (= (and b!828458 res!380909) b!828455))

(assert (= (and b!828452 (not res!380906)) b!828454))

(assert (= (and b!828454 res!380907) b!828459))

(assert (= (or b!828458 b!828459) bm!48456))

(assert (= (or b!828455 b!828454) bm!48455))

(assert (= (or b!828457 bm!48456) bm!48454))

(declare-fun m!1066307 () Bool)

(assert (=> bm!48454 m!1066307))

(declare-fun m!1066309 () Bool)

(assert (=> bm!48455 m!1066309))

(declare-fun m!1066311 () Bool)

(assert (=> b!828456 m!1066311))

(assert (=> bm!48364 d!259746))

(declare-fun d!259748 () Bool)

(declare-fun e!546233 () Bool)

(assert (=> d!259748 e!546233))

(declare-fun res!380911 () Bool)

(assert (=> d!259748 (=> (not res!380911) (not e!546233))))

(declare-fun lt!317613 () List!8895)

(assert (=> d!259748 (= res!380911 (= (content!1307 lt!317613) ((_ map or) (content!1307 (ite c!134655 call!48392 call!48390)) (content!1307 (ite c!134655 call!48393 call!48392)))))))

(declare-fun e!546232 () List!8895)

(assert (=> d!259748 (= lt!317613 e!546232)))

(declare-fun c!134736 () Bool)

(assert (=> d!259748 (= c!134736 ((_ is Nil!8879) (ite c!134655 call!48392 call!48390)))))

(assert (=> d!259748 (= (++!2295 (ite c!134655 call!48392 call!48390) (ite c!134655 call!48393 call!48392)) lt!317613)))

(declare-fun b!828462 () Bool)

(assert (=> b!828462 (= e!546232 (Cons!8879 (h!14280 (ite c!134655 call!48392 call!48390)) (++!2295 (t!93187 (ite c!134655 call!48392 call!48390)) (ite c!134655 call!48393 call!48392))))))

(declare-fun b!828463 () Bool)

(declare-fun res!380912 () Bool)

(assert (=> b!828463 (=> (not res!380912) (not e!546233))))

(assert (=> b!828463 (= res!380912 (= (size!7476 lt!317613) (+ (size!7476 (ite c!134655 call!48392 call!48390)) (size!7476 (ite c!134655 call!48393 call!48392)))))))

(declare-fun b!828461 () Bool)

(assert (=> b!828461 (= e!546232 (ite c!134655 call!48393 call!48392))))

(declare-fun b!828464 () Bool)

(assert (=> b!828464 (= e!546233 (or (not (= (ite c!134655 call!48393 call!48392) Nil!8879)) (= lt!317613 (ite c!134655 call!48392 call!48390))))))

(assert (= (and d!259748 c!134736) b!828461))

(assert (= (and d!259748 (not c!134736)) b!828462))

(assert (= (and d!259748 res!380911) b!828463))

(assert (= (and b!828463 res!380912) b!828464))

(declare-fun m!1066313 () Bool)

(assert (=> d!259748 m!1066313))

(declare-fun m!1066315 () Bool)

(assert (=> d!259748 m!1066315))

(declare-fun m!1066317 () Bool)

(assert (=> d!259748 m!1066317))

(declare-fun m!1066319 () Bool)

(assert (=> b!828462 m!1066319))

(declare-fun m!1066321 () Bool)

(assert (=> b!828463 m!1066321))

(declare-fun m!1066323 () Bool)

(assert (=> b!828463 m!1066323))

(declare-fun m!1066325 () Bool)

(assert (=> b!828463 m!1066325))

(assert (=> bm!48385 d!259748))

(declare-fun b!828465 () Bool)

(declare-fun e!546238 () Int)

(declare-fun call!48464 () Int)

(assert (=> b!828465 (= e!546238 (+ 1 call!48464))))

(declare-fun b!828466 () Bool)

(declare-fun e!546234 () Int)

(assert (=> b!828466 (= e!546234 1)))

(declare-fun b!828468 () Bool)

(declare-fun c!134740 () Bool)

(assert (=> b!828468 (= c!134740 ((_ is EmptyLang!2069) (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))))))

(declare-fun e!546237 () Int)

(assert (=> b!828468 (= e!546238 e!546237)))

(declare-fun b!828469 () Bool)

(declare-fun c!134741 () Bool)

(assert (=> b!828469 (= c!134741 ((_ is EmptyExpr!2069) (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))))))

(declare-fun e!546235 () Int)

(declare-fun e!546236 () Int)

(assert (=> b!828469 (= e!546235 e!546236)))

(declare-fun b!828470 () Bool)

(assert (=> b!828470 (= e!546236 0)))

(declare-fun b!828471 () Bool)

(assert (=> b!828471 (= e!546237 0)))

(declare-fun bm!48457 () Bool)

(declare-fun call!48462 () Int)

(assert (=> bm!48457 (= call!48464 call!48462)))

(declare-fun call!48463 () Int)

(declare-fun c!134739 () Bool)

(declare-fun bm!48458 () Bool)

(assert (=> bm!48458 (= call!48463 (RegexPrimitiveSize!92 (ite c!134739 (regTwo!4650 (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))) (regTwo!4651 (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))))))))

(declare-fun c!134738 () Bool)

(declare-fun bm!48459 () Bool)

(assert (=> bm!48459 (= call!48462 (RegexPrimitiveSize!92 (ite c!134739 (regOne!4650 (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))) (ite c!134738 (reg!2398 (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))) (regOne!4651 (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177)))))))))

(declare-fun b!828472 () Bool)

(assert (=> b!828472 (= e!546236 e!546238)))

(assert (=> b!828472 (= c!134738 ((_ is Star!2069) (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))))))

(declare-fun b!828473 () Bool)

(assert (=> b!828473 (= e!546235 (+ 1 call!48462 call!48463))))

(declare-fun b!828474 () Bool)

(assert (=> b!828474 (= e!546237 (+ 1 call!48464 call!48463))))

(declare-fun b!828467 () Bool)

(assert (=> b!828467 (= e!546234 e!546235)))

(assert (=> b!828467 (= c!134739 ((_ is Concat!3800) (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))))))

(declare-fun d!259750 () Bool)

(declare-fun lt!317614 () Int)

(assert (=> d!259750 (>= lt!317614 0)))

(assert (=> d!259750 (= lt!317614 e!546234)))

(declare-fun c!134737 () Bool)

(assert (=> d!259750 (= c!134737 ((_ is ElementMatch!2069) (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))))))

(assert (=> d!259750 (= (RegexPrimitiveSize!92 (ite c!134651 (regTwo!4650 r!27177) (regTwo!4651 r!27177))) lt!317614)))

(assert (= (and d!259750 c!134737) b!828466))

(assert (= (and d!259750 (not c!134737)) b!828467))

(assert (= (and b!828467 c!134739) b!828473))

(assert (= (and b!828467 (not c!134739)) b!828469))

(assert (= (and b!828469 c!134741) b!828470))

(assert (= (and b!828469 (not c!134741)) b!828472))

(assert (= (and b!828472 c!134738) b!828465))

(assert (= (and b!828472 (not c!134738)) b!828468))

(assert (= (and b!828468 c!134740) b!828471))

(assert (= (and b!828468 (not c!134740)) b!828474))

(assert (= (or b!828465 b!828474) bm!48457))

(assert (= (or b!828473 bm!48457) bm!48459))

(assert (= (or b!828473 b!828474) bm!48458))

(declare-fun m!1066327 () Bool)

(assert (=> bm!48458 m!1066327))

(declare-fun m!1066329 () Bool)

(assert (=> bm!48459 m!1066329))

(assert (=> bm!48382 d!259750))

(declare-fun d!259752 () Bool)

(declare-fun c!134742 () Bool)

(assert (=> d!259752 (= c!134742 ((_ is Nil!8879) (firstChars!40 (regTwo!4651 r!27177))))))

(declare-fun e!546239 () (InoxSet C!4708))

(assert (=> d!259752 (= (content!1307 (firstChars!40 (regTwo!4651 r!27177))) e!546239)))

(declare-fun b!828475 () Bool)

(assert (=> b!828475 (= e!546239 ((as const (Array C!4708 Bool)) false))))

(declare-fun b!828476 () Bool)

(assert (=> b!828476 (= e!546239 ((_ map or) (store ((as const (Array C!4708 Bool)) false) (h!14280 (firstChars!40 (regTwo!4651 r!27177))) true) (content!1307 (t!93187 (firstChars!40 (regTwo!4651 r!27177))))))))

(assert (= (and d!259752 c!134742) b!828475))

(assert (= (and d!259752 (not c!134742)) b!828476))

(declare-fun m!1066331 () Bool)

(assert (=> b!828476 m!1066331))

(assert (=> b!828476 m!1066297))

(assert (=> d!259680 d!259752))

(declare-fun b!828477 () Bool)

(declare-fun e!546240 () List!8895)

(assert (=> b!828477 (= e!546240 Nil!8879)))

(declare-fun b!828478 () Bool)

(declare-fun c!134746 () Bool)

(assert (=> b!828478 (= c!134746 (nullable!519 (regOne!4650 (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))))))))

(declare-fun e!546244 () List!8895)

(declare-fun e!546241 () List!8895)

(assert (=> b!828478 (= e!546244 e!546241)))

(declare-fun c!134743 () Bool)

(declare-fun b!828479 () Bool)

(assert (=> b!828479 (= c!134743 ((_ is Star!2069) (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))))))

(declare-fun e!546243 () List!8895)

(declare-fun e!546242 () List!8895)

(assert (=> b!828479 (= e!546243 e!546242)))

(declare-fun bm!48460 () Bool)

(declare-fun call!48466 () List!8895)

(declare-fun call!48469 () List!8895)

(assert (=> bm!48460 (= call!48466 call!48469)))

(declare-fun bm!48461 () Bool)

(declare-fun call!48468 () List!8895)

(declare-fun c!134744 () Bool)

(declare-fun call!48467 () List!8895)

(assert (=> bm!48461 (= call!48467 (++!2295 (ite c!134744 call!48468 call!48466) (ite c!134744 call!48469 call!48468)))))

(declare-fun b!828480 () Bool)

(assert (=> b!828480 (= e!546241 call!48467)))

(declare-fun bm!48462 () Bool)

(assert (=> bm!48462 (= call!48468 (firstChars!40 (ite c!134744 (regOne!4651 (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))) (regTwo!4650 (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))))))))

(declare-fun b!828481 () Bool)

(assert (=> b!828481 (= e!546244 call!48467)))

(declare-fun bm!48463 () Bool)

(declare-fun call!48465 () List!8895)

(assert (=> bm!48463 (= call!48469 call!48465)))

(declare-fun b!828482 () Bool)

(assert (=> b!828482 (= e!546242 call!48465)))

(declare-fun b!828483 () Bool)

(assert (=> b!828483 (= e!546242 e!546244)))

(assert (=> b!828483 (= c!134744 ((_ is Union!2069) (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))))))

(declare-fun d!259754 () Bool)

(declare-fun c!134747 () Bool)

(assert (=> d!259754 (= c!134747 (or ((_ is EmptyExpr!2069) (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))) ((_ is EmptyLang!2069) (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))))))))

(assert (=> d!259754 (= (firstChars!40 (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))) e!546240)))

(declare-fun bm!48464 () Bool)

(assert (=> bm!48464 (= call!48465 (firstChars!40 (ite c!134743 (reg!2398 (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))) (ite c!134744 (regTwo!4651 (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))) (regOne!4650 (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177)))))))))))

(declare-fun b!828484 () Bool)

(assert (=> b!828484 (= e!546240 e!546243)))

(declare-fun c!134745 () Bool)

(assert (=> b!828484 (= c!134745 ((_ is ElementMatch!2069) (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))))))

(declare-fun b!828485 () Bool)

(assert (=> b!828485 (= e!546243 (Cons!8879 (c!134590 (ite c!134622 (reg!2398 (regTwo!4651 r!27177)) (ite c!134623 (regTwo!4651 (regTwo!4651 r!27177)) (regOne!4650 (regTwo!4651 r!27177))))) Nil!8879))))

(declare-fun b!828486 () Bool)

(assert (=> b!828486 (= e!546241 call!48466)))

(assert (= (and d!259754 c!134747) b!828477))

(assert (= (and d!259754 (not c!134747)) b!828484))

(assert (= (and b!828484 c!134745) b!828485))

(assert (= (and b!828484 (not c!134745)) b!828479))

(assert (= (and b!828479 c!134743) b!828482))

(assert (= (and b!828479 (not c!134743)) b!828483))

(assert (= (and b!828483 c!134744) b!828481))

(assert (= (and b!828483 (not c!134744)) b!828478))

(assert (= (and b!828478 c!134746) b!828480))

(assert (= (and b!828478 (not c!134746)) b!828486))

(assert (= (or b!828480 b!828486) bm!48460))

(assert (= (or b!828481 bm!48460) bm!48463))

(assert (= (or b!828481 b!828480) bm!48462))

(assert (= (or b!828481 b!828480) bm!48461))

(assert (= (or b!828482 bm!48463) bm!48464))

(declare-fun m!1066333 () Bool)

(assert (=> b!828478 m!1066333))

(declare-fun m!1066335 () Bool)

(assert (=> bm!48461 m!1066335))

(declare-fun m!1066337 () Bool)

(assert (=> bm!48462 m!1066337))

(declare-fun m!1066339 () Bool)

(assert (=> bm!48464 m!1066339))

(assert (=> bm!48363 d!259754))

(declare-fun b!828487 () Bool)

(declare-fun e!546249 () Int)

(declare-fun call!48472 () Int)

(assert (=> b!828487 (= e!546249 (+ 1 call!48472))))

(declare-fun b!828488 () Bool)

(declare-fun e!546245 () Int)

(assert (=> b!828488 (= e!546245 1)))

(declare-fun c!134751 () Bool)

(declare-fun b!828490 () Bool)

(assert (=> b!828490 (= c!134751 ((_ is EmptyLang!2069) (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))))))

(declare-fun e!546248 () Int)

(assert (=> b!828490 (= e!546249 e!546248)))

(declare-fun c!134752 () Bool)

(declare-fun b!828491 () Bool)

(assert (=> b!828491 (= c!134752 ((_ is EmptyExpr!2069) (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))))))

(declare-fun e!546246 () Int)

(declare-fun e!546247 () Int)

(assert (=> b!828491 (= e!546246 e!546247)))

(declare-fun b!828492 () Bool)

(assert (=> b!828492 (= e!546247 0)))

(declare-fun b!828493 () Bool)

(assert (=> b!828493 (= e!546248 0)))

(declare-fun bm!48465 () Bool)

(declare-fun call!48470 () Int)

(assert (=> bm!48465 (= call!48472 call!48470)))

(declare-fun c!134750 () Bool)

(declare-fun call!48471 () Int)

(declare-fun bm!48466 () Bool)

(assert (=> bm!48466 (= call!48471 (RegexPrimitiveSize!92 (ite c!134750 (regTwo!4650 (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))) (regTwo!4651 (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))))))))

(declare-fun bm!48467 () Bool)

(declare-fun c!134749 () Bool)

(assert (=> bm!48467 (= call!48470 (RegexPrimitiveSize!92 (ite c!134750 (regOne!4650 (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))) (ite c!134749 (reg!2398 (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))) (regOne!4651 (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177))))))))))

(declare-fun b!828494 () Bool)

(assert (=> b!828494 (= e!546247 e!546249)))

(assert (=> b!828494 (= c!134749 ((_ is Star!2069) (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))))))

(declare-fun b!828495 () Bool)

(assert (=> b!828495 (= e!546246 (+ 1 call!48470 call!48471))))

(declare-fun b!828496 () Bool)

(assert (=> b!828496 (= e!546248 (+ 1 call!48472 call!48471))))

(declare-fun b!828489 () Bool)

(assert (=> b!828489 (= e!546245 e!546246)))

(assert (=> b!828489 (= c!134750 ((_ is Concat!3800) (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))))))

(declare-fun d!259756 () Bool)

(declare-fun lt!317615 () Int)

(assert (=> d!259756 (>= lt!317615 0)))

(assert (=> d!259756 (= lt!317615 e!546245)))

(declare-fun c!134748 () Bool)

(assert (=> d!259756 (= c!134748 ((_ is ElementMatch!2069) (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))))))

(assert (=> d!259756 (= (RegexPrimitiveSize!92 (ite c!134651 (regOne!4650 r!27177) (ite c!134650 (reg!2398 r!27177) (regOne!4651 r!27177)))) lt!317615)))

(assert (= (and d!259756 c!134748) b!828488))

(assert (= (and d!259756 (not c!134748)) b!828489))

(assert (= (and b!828489 c!134750) b!828495))

(assert (= (and b!828489 (not c!134750)) b!828491))

(assert (= (and b!828491 c!134752) b!828492))

(assert (= (and b!828491 (not c!134752)) b!828494))

(assert (= (and b!828494 c!134749) b!828487))

(assert (= (and b!828494 (not c!134749)) b!828490))

(assert (= (and b!828490 c!134751) b!828493))

(assert (= (and b!828490 (not c!134751)) b!828496))

(assert (= (or b!828487 b!828496) bm!48465))

(assert (= (or b!828495 bm!48465) bm!48467))

(assert (= (or b!828495 b!828496) bm!48466))

(declare-fun m!1066341 () Bool)

(assert (=> bm!48466 m!1066341))

(declare-fun m!1066343 () Bool)

(assert (=> bm!48467 m!1066343))

(assert (=> bm!48383 d!259756))

(declare-fun b!828497 () Bool)

(declare-fun e!546254 () Int)

(declare-fun call!48475 () Int)

(assert (=> b!828497 (= e!546254 (+ 1 call!48475))))

(declare-fun b!828498 () Bool)

(declare-fun e!546250 () Int)

(assert (=> b!828498 (= e!546250 1)))

(declare-fun b!828500 () Bool)

(declare-fun c!134756 () Bool)

(assert (=> b!828500 (= c!134756 ((_ is EmptyLang!2069) (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))))))

(declare-fun e!546253 () Int)

(assert (=> b!828500 (= e!546254 e!546253)))

(declare-fun b!828501 () Bool)

(declare-fun c!134757 () Bool)

(assert (=> b!828501 (= c!134757 ((_ is EmptyExpr!2069) (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))))))

(declare-fun e!546251 () Int)

(declare-fun e!546252 () Int)

(assert (=> b!828501 (= e!546251 e!546252)))

(declare-fun b!828502 () Bool)

(assert (=> b!828502 (= e!546252 0)))

(declare-fun b!828503 () Bool)

(assert (=> b!828503 (= e!546253 0)))

(declare-fun bm!48468 () Bool)

(declare-fun call!48473 () Int)

(assert (=> bm!48468 (= call!48475 call!48473)))

(declare-fun call!48474 () Int)

(declare-fun bm!48469 () Bool)

(declare-fun c!134755 () Bool)

(assert (=> bm!48469 (= call!48474 (RegexPrimitiveSize!92 (ite c!134755 (regTwo!4650 (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))) (regTwo!4651 (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))))))))

(declare-fun c!134754 () Bool)

(declare-fun bm!48470 () Bool)

(assert (=> bm!48470 (= call!48473 (RegexPrimitiveSize!92 (ite c!134755 (regOne!4650 (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))) (ite c!134754 (reg!2398 (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))) (regOne!4651 (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177))))))))))

(declare-fun b!828504 () Bool)

(assert (=> b!828504 (= e!546252 e!546254)))

(assert (=> b!828504 (= c!134754 ((_ is Star!2069) (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))))))

(declare-fun b!828505 () Bool)

(assert (=> b!828505 (= e!546251 (+ 1 call!48473 call!48474))))

(declare-fun b!828506 () Bool)

(assert (=> b!828506 (= e!546253 (+ 1 call!48475 call!48474))))

(declare-fun b!828499 () Bool)

(assert (=> b!828499 (= e!546250 e!546251)))

(assert (=> b!828499 (= c!134755 ((_ is Concat!3800) (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))))))

(declare-fun d!259758 () Bool)

(declare-fun lt!317616 () Int)

(assert (=> d!259758 (>= lt!317616 0)))

(assert (=> d!259758 (= lt!317616 e!546250)))

(declare-fun c!134753 () Bool)

(assert (=> d!259758 (= c!134753 ((_ is ElementMatch!2069) (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))))))

(assert (=> d!259758 (= (RegexPrimitiveSize!92 (ite c!134641 (regTwo!4650 (regTwo!4651 r!27177)) (regTwo!4651 (regTwo!4651 r!27177)))) lt!317616)))

(assert (= (and d!259758 c!134753) b!828498))

(assert (= (and d!259758 (not c!134753)) b!828499))

(assert (= (and b!828499 c!134755) b!828505))

(assert (= (and b!828499 (not c!134755)) b!828501))

(assert (= (and b!828501 c!134757) b!828502))

(assert (= (and b!828501 (not c!134757)) b!828504))

(assert (= (and b!828504 c!134754) b!828497))

(assert (= (and b!828504 (not c!134754)) b!828500))

(assert (= (and b!828500 c!134756) b!828503))

(assert (= (and b!828500 (not c!134756)) b!828506))

(assert (= (or b!828497 b!828506) bm!48468))

(assert (= (or b!828505 bm!48468) bm!48470))

(assert (= (or b!828505 b!828506) bm!48469))

(declare-fun m!1066345 () Bool)

(assert (=> bm!48469 m!1066345))

(declare-fun m!1066347 () Bool)

(assert (=> bm!48470 m!1066347))

(assert (=> bm!48374 d!259758))

(declare-fun b!828507 () Bool)

(declare-fun e!546259 () Int)

(declare-fun call!48478 () Int)

(assert (=> b!828507 (= e!546259 (+ 1 call!48478))))

(declare-fun b!828508 () Bool)

(declare-fun e!546255 () Int)

(assert (=> b!828508 (= e!546255 1)))

(declare-fun c!134761 () Bool)

(declare-fun b!828510 () Bool)

(assert (=> b!828510 (= c!134761 ((_ is EmptyLang!2069) (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))))))

(declare-fun e!546258 () Int)

(assert (=> b!828510 (= e!546259 e!546258)))

(declare-fun c!134762 () Bool)

(declare-fun b!828511 () Bool)

(assert (=> b!828511 (= c!134762 ((_ is EmptyExpr!2069) (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))))))

(declare-fun e!546256 () Int)

(declare-fun e!546257 () Int)

(assert (=> b!828511 (= e!546256 e!546257)))

(declare-fun b!828512 () Bool)

(assert (=> b!828512 (= e!546257 0)))

(declare-fun b!828513 () Bool)

(assert (=> b!828513 (= e!546258 0)))

(declare-fun bm!48471 () Bool)

(declare-fun call!48476 () Int)

(assert (=> bm!48471 (= call!48478 call!48476)))

(declare-fun c!134760 () Bool)

(declare-fun bm!48472 () Bool)

(declare-fun call!48477 () Int)

(assert (=> bm!48472 (= call!48477 (RegexPrimitiveSize!92 (ite c!134760 (regTwo!4650 (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))) (regTwo!4651 (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))))))))

(declare-fun c!134759 () Bool)

(declare-fun bm!48473 () Bool)

(assert (=> bm!48473 (= call!48476 (RegexPrimitiveSize!92 (ite c!134760 (regOne!4650 (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))) (ite c!134759 (reg!2398 (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))) (regOne!4651 (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177)))))))))))

(declare-fun b!828514 () Bool)

(assert (=> b!828514 (= e!546257 e!546259)))

(assert (=> b!828514 (= c!134759 ((_ is Star!2069) (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))))))

(declare-fun b!828515 () Bool)

(assert (=> b!828515 (= e!546256 (+ 1 call!48476 call!48477))))

(declare-fun b!828516 () Bool)

(assert (=> b!828516 (= e!546258 (+ 1 call!48478 call!48477))))

(declare-fun b!828509 () Bool)

(assert (=> b!828509 (= e!546255 e!546256)))

(assert (=> b!828509 (= c!134760 ((_ is Concat!3800) (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))))))

(declare-fun d!259760 () Bool)

(declare-fun lt!317617 () Int)

(assert (=> d!259760 (>= lt!317617 0)))

(assert (=> d!259760 (= lt!317617 e!546255)))

(declare-fun c!134758 () Bool)

(assert (=> d!259760 (= c!134758 ((_ is ElementMatch!2069) (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))))))

(assert (=> d!259760 (= (RegexPrimitiveSize!92 (ite c!134641 (regOne!4650 (regTwo!4651 r!27177)) (ite c!134640 (reg!2398 (regTwo!4651 r!27177)) (regOne!4651 (regTwo!4651 r!27177))))) lt!317617)))

(assert (= (and d!259760 c!134758) b!828508))

(assert (= (and d!259760 (not c!134758)) b!828509))

(assert (= (and b!828509 c!134760) b!828515))

(assert (= (and b!828509 (not c!134760)) b!828511))

(assert (= (and b!828511 c!134762) b!828512))

(assert (= (and b!828511 (not c!134762)) b!828514))

(assert (= (and b!828514 c!134759) b!828507))

(assert (= (and b!828514 (not c!134759)) b!828510))

(assert (= (and b!828510 c!134761) b!828513))

(assert (= (and b!828510 (not c!134761)) b!828516))

(assert (= (or b!828507 b!828516) bm!48471))

(assert (= (or b!828515 bm!48471) bm!48473))

(assert (= (or b!828515 b!828516) bm!48472))

(declare-fun m!1066349 () Bool)

(assert (=> bm!48472 m!1066349))

(declare-fun m!1066351 () Bool)

(assert (=> bm!48473 m!1066351))

(assert (=> bm!48375 d!259760))

(declare-fun c!134763 () Bool)

(declare-fun c!134764 () Bool)

(declare-fun bm!48474 () Bool)

(declare-fun call!48481 () Bool)

(assert (=> bm!48474 (= call!48481 (validRegex!622 (ite c!134763 (reg!2398 (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))) (ite c!134764 (regOne!4651 (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))) (regTwo!4650 (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177)))))))))

(declare-fun b!828517 () Bool)

(declare-fun res!380913 () Bool)

(declare-fun e!546261 () Bool)

(assert (=> b!828517 (=> res!380913 e!546261)))

(assert (=> b!828517 (= res!380913 (not ((_ is Concat!3800) (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177)))))))

(declare-fun e!546264 () Bool)

(assert (=> b!828517 (= e!546264 e!546261)))

(declare-fun b!828518 () Bool)

(declare-fun e!546263 () Bool)

(declare-fun e!546265 () Bool)

(assert (=> b!828518 (= e!546263 e!546265)))

(assert (=> b!828518 (= c!134763 ((_ is Star!2069) (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))))))

(declare-fun b!828519 () Bool)

(declare-fun e!546262 () Bool)

(assert (=> b!828519 (= e!546261 e!546262)))

(declare-fun res!380914 () Bool)

(assert (=> b!828519 (=> (not res!380914) (not e!546262))))

(declare-fun call!48479 () Bool)

(assert (=> b!828519 (= res!380914 call!48479)))

(declare-fun bm!48475 () Bool)

(assert (=> bm!48475 (= call!48479 (validRegex!622 (ite c!134764 (regTwo!4651 (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))) (regOne!4650 (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))))))))

(declare-fun b!828520 () Bool)

(declare-fun e!546266 () Bool)

(assert (=> b!828520 (= e!546266 call!48479)))

(declare-fun d!259762 () Bool)

(declare-fun res!380915 () Bool)

(assert (=> d!259762 (=> res!380915 e!546263)))

(assert (=> d!259762 (= res!380915 ((_ is ElementMatch!2069) (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))))))

(assert (=> d!259762 (= (validRegex!622 (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))) e!546263)))

(declare-fun b!828521 () Bool)

(declare-fun e!546260 () Bool)

(assert (=> b!828521 (= e!546265 e!546260)))

(declare-fun res!380917 () Bool)

(assert (=> b!828521 (= res!380917 (not (nullable!519 (reg!2398 (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))))))))

(assert (=> b!828521 (=> (not res!380917) (not e!546260))))

(declare-fun b!828522 () Bool)

(assert (=> b!828522 (= e!546260 call!48481)))

(declare-fun b!828523 () Bool)

(declare-fun res!380916 () Bool)

(assert (=> b!828523 (=> (not res!380916) (not e!546266))))

(declare-fun call!48480 () Bool)

(assert (=> b!828523 (= res!380916 call!48480)))

(assert (=> b!828523 (= e!546264 e!546266)))

(declare-fun b!828524 () Bool)

(assert (=> b!828524 (= e!546262 call!48480)))

(declare-fun b!828525 () Bool)

(assert (=> b!828525 (= e!546265 e!546264)))

(assert (=> b!828525 (= c!134764 ((_ is Union!2069) (ite c!134621 (regTwo!4651 r!27177) (regOne!4650 r!27177))))))

(declare-fun bm!48476 () Bool)

(assert (=> bm!48476 (= call!48480 call!48481)))

(assert (= (and d!259762 (not res!380915)) b!828518))

(assert (= (and b!828518 c!134763) b!828521))

(assert (= (and b!828518 (not c!134763)) b!828525))

(assert (= (and b!828521 res!380917) b!828522))

(assert (= (and b!828525 c!134764) b!828523))

(assert (= (and b!828525 (not c!134764)) b!828517))

(assert (= (and b!828523 res!380916) b!828520))

(assert (= (and b!828517 (not res!380913)) b!828519))

(assert (= (and b!828519 res!380914) b!828524))

(assert (= (or b!828523 b!828524) bm!48476))

(assert (= (or b!828520 b!828519) bm!48475))

(assert (= (or b!828522 bm!48476) bm!48474))

(declare-fun m!1066353 () Bool)

(assert (=> bm!48474 m!1066353))

(declare-fun m!1066355 () Bool)

(assert (=> bm!48475 m!1066355))

(declare-fun m!1066357 () Bool)

(assert (=> b!828521 m!1066357))

(assert (=> bm!48355 d!259762))

(declare-fun d!259764 () Bool)

(assert (=> d!259764 (= (nullable!519 (reg!2398 r!27177)) (nullableFct!158 (reg!2398 r!27177)))))

(declare-fun bs!229616 () Bool)

(assert (= bs!229616 d!259764))

(declare-fun m!1066359 () Bool)

(assert (=> bs!229616 m!1066359))

(assert (=> b!828106 d!259764))

(declare-fun b!828528 () Bool)

(declare-fun e!546267 () Bool)

(declare-fun tp!259186 () Bool)

(assert (=> b!828528 (= e!546267 tp!259186)))

(declare-fun b!828527 () Bool)

(declare-fun tp!259189 () Bool)

(declare-fun tp!259185 () Bool)

(assert (=> b!828527 (= e!546267 (and tp!259189 tp!259185))))

(assert (=> b!828222 (= tp!259146 e!546267)))

(declare-fun b!828526 () Bool)

(assert (=> b!828526 (= e!546267 tp_is_empty!3861)))

(declare-fun b!828529 () Bool)

(declare-fun tp!259188 () Bool)

(declare-fun tp!259187 () Bool)

(assert (=> b!828529 (= e!546267 (and tp!259188 tp!259187))))

(assert (= (and b!828222 ((_ is ElementMatch!2069) (reg!2398 (reg!2398 r!27177)))) b!828526))

(assert (= (and b!828222 ((_ is Concat!3800) (reg!2398 (reg!2398 r!27177)))) b!828527))

(assert (= (and b!828222 ((_ is Star!2069) (reg!2398 (reg!2398 r!27177)))) b!828528))

(assert (= (and b!828222 ((_ is Union!2069) (reg!2398 (reg!2398 r!27177)))) b!828529))

(declare-fun b!828532 () Bool)

(declare-fun e!546268 () Bool)

(declare-fun tp!259191 () Bool)

(assert (=> b!828532 (= e!546268 tp!259191)))

(declare-fun b!828531 () Bool)

(declare-fun tp!259194 () Bool)

(declare-fun tp!259190 () Bool)

(assert (=> b!828531 (= e!546268 (and tp!259194 tp!259190))))

(assert (=> b!828217 (= tp!259144 e!546268)))

(declare-fun b!828530 () Bool)

(assert (=> b!828530 (= e!546268 tp_is_empty!3861)))

(declare-fun b!828533 () Bool)

(declare-fun tp!259193 () Bool)

(declare-fun tp!259192 () Bool)

(assert (=> b!828533 (= e!546268 (and tp!259193 tp!259192))))

(assert (= (and b!828217 ((_ is ElementMatch!2069) (regOne!4650 (regTwo!4651 r!27177)))) b!828530))

(assert (= (and b!828217 ((_ is Concat!3800) (regOne!4650 (regTwo!4651 r!27177)))) b!828531))

(assert (= (and b!828217 ((_ is Star!2069) (regOne!4650 (regTwo!4651 r!27177)))) b!828532))

(assert (= (and b!828217 ((_ is Union!2069) (regOne!4650 (regTwo!4651 r!27177)))) b!828533))

(declare-fun b!828536 () Bool)

(declare-fun e!546269 () Bool)

(declare-fun tp!259196 () Bool)

(assert (=> b!828536 (= e!546269 tp!259196)))

(declare-fun b!828535 () Bool)

(declare-fun tp!259199 () Bool)

(declare-fun tp!259195 () Bool)

(assert (=> b!828535 (= e!546269 (and tp!259199 tp!259195))))

(assert (=> b!828217 (= tp!259140 e!546269)))

(declare-fun b!828534 () Bool)

(assert (=> b!828534 (= e!546269 tp_is_empty!3861)))

(declare-fun b!828537 () Bool)

(declare-fun tp!259198 () Bool)

(declare-fun tp!259197 () Bool)

(assert (=> b!828537 (= e!546269 (and tp!259198 tp!259197))))

(assert (= (and b!828217 ((_ is ElementMatch!2069) (regTwo!4650 (regTwo!4651 r!27177)))) b!828534))

(assert (= (and b!828217 ((_ is Concat!3800) (regTwo!4650 (regTwo!4651 r!27177)))) b!828535))

(assert (= (and b!828217 ((_ is Star!2069) (regTwo!4650 (regTwo!4651 r!27177)))) b!828536))

(assert (= (and b!828217 ((_ is Union!2069) (regTwo!4650 (regTwo!4651 r!27177)))) b!828537))

(declare-fun b!828540 () Bool)

(declare-fun e!546270 () Bool)

(declare-fun tp!259201 () Bool)

(assert (=> b!828540 (= e!546270 tp!259201)))

(declare-fun b!828539 () Bool)

(declare-fun tp!259204 () Bool)

(declare-fun tp!259200 () Bool)

(assert (=> b!828539 (= e!546270 (and tp!259204 tp!259200))))

(assert (=> b!828221 (= tp!259149 e!546270)))

(declare-fun b!828538 () Bool)

(assert (=> b!828538 (= e!546270 tp_is_empty!3861)))

(declare-fun b!828541 () Bool)

(declare-fun tp!259203 () Bool)

(declare-fun tp!259202 () Bool)

(assert (=> b!828541 (= e!546270 (and tp!259203 tp!259202))))

(assert (= (and b!828221 ((_ is ElementMatch!2069) (regOne!4650 (reg!2398 r!27177)))) b!828538))

(assert (= (and b!828221 ((_ is Concat!3800) (regOne!4650 (reg!2398 r!27177)))) b!828539))

(assert (= (and b!828221 ((_ is Star!2069) (regOne!4650 (reg!2398 r!27177)))) b!828540))

(assert (= (and b!828221 ((_ is Union!2069) (regOne!4650 (reg!2398 r!27177)))) b!828541))

(declare-fun b!828544 () Bool)

(declare-fun e!546271 () Bool)

(declare-fun tp!259206 () Bool)

(assert (=> b!828544 (= e!546271 tp!259206)))

(declare-fun b!828543 () Bool)

(declare-fun tp!259209 () Bool)

(declare-fun tp!259205 () Bool)

(assert (=> b!828543 (= e!546271 (and tp!259209 tp!259205))))

(assert (=> b!828221 (= tp!259145 e!546271)))

(declare-fun b!828542 () Bool)

(assert (=> b!828542 (= e!546271 tp_is_empty!3861)))

(declare-fun b!828545 () Bool)

(declare-fun tp!259208 () Bool)

(declare-fun tp!259207 () Bool)

(assert (=> b!828545 (= e!546271 (and tp!259208 tp!259207))))

(assert (= (and b!828221 ((_ is ElementMatch!2069) (regTwo!4650 (reg!2398 r!27177)))) b!828542))

(assert (= (and b!828221 ((_ is Concat!3800) (regTwo!4650 (reg!2398 r!27177)))) b!828543))

(assert (= (and b!828221 ((_ is Star!2069) (regTwo!4650 (reg!2398 r!27177)))) b!828544))

(assert (= (and b!828221 ((_ is Union!2069) (regTwo!4650 (reg!2398 r!27177)))) b!828545))

(declare-fun b!828548 () Bool)

(declare-fun e!546272 () Bool)

(declare-fun tp!259211 () Bool)

(assert (=> b!828548 (= e!546272 tp!259211)))

(declare-fun b!828547 () Bool)

(declare-fun tp!259214 () Bool)

(declare-fun tp!259210 () Bool)

(assert (=> b!828547 (= e!546272 (and tp!259214 tp!259210))))

(assert (=> b!828214 (= tp!259136 e!546272)))

(declare-fun b!828546 () Bool)

(assert (=> b!828546 (= e!546272 tp_is_empty!3861)))

(declare-fun b!828549 () Bool)

(declare-fun tp!259213 () Bool)

(declare-fun tp!259212 () Bool)

(assert (=> b!828549 (= e!546272 (and tp!259213 tp!259212))))

(assert (= (and b!828214 ((_ is ElementMatch!2069) (reg!2398 (regOne!4651 r!27177)))) b!828546))

(assert (= (and b!828214 ((_ is Concat!3800) (reg!2398 (regOne!4651 r!27177)))) b!828547))

(assert (= (and b!828214 ((_ is Star!2069) (reg!2398 (regOne!4651 r!27177)))) b!828548))

(assert (= (and b!828214 ((_ is Union!2069) (reg!2398 (regOne!4651 r!27177)))) b!828549))

(declare-fun b!828552 () Bool)

(declare-fun e!546273 () Bool)

(declare-fun tp!259216 () Bool)

(assert (=> b!828552 (= e!546273 tp!259216)))

(declare-fun b!828551 () Bool)

(declare-fun tp!259219 () Bool)

(declare-fun tp!259215 () Bool)

(assert (=> b!828551 (= e!546273 (and tp!259219 tp!259215))))

(assert (=> b!828223 (= tp!259148 e!546273)))

(declare-fun b!828550 () Bool)

(assert (=> b!828550 (= e!546273 tp_is_empty!3861)))

(declare-fun b!828553 () Bool)

(declare-fun tp!259218 () Bool)

(declare-fun tp!259217 () Bool)

(assert (=> b!828553 (= e!546273 (and tp!259218 tp!259217))))

(assert (= (and b!828223 ((_ is ElementMatch!2069) (regOne!4651 (reg!2398 r!27177)))) b!828550))

(assert (= (and b!828223 ((_ is Concat!3800) (regOne!4651 (reg!2398 r!27177)))) b!828551))

(assert (= (and b!828223 ((_ is Star!2069) (regOne!4651 (reg!2398 r!27177)))) b!828552))

(assert (= (and b!828223 ((_ is Union!2069) (regOne!4651 (reg!2398 r!27177)))) b!828553))

(declare-fun b!828556 () Bool)

(declare-fun e!546274 () Bool)

(declare-fun tp!259221 () Bool)

(assert (=> b!828556 (= e!546274 tp!259221)))

(declare-fun b!828555 () Bool)

(declare-fun tp!259224 () Bool)

(declare-fun tp!259220 () Bool)

(assert (=> b!828555 (= e!546274 (and tp!259224 tp!259220))))

(assert (=> b!828223 (= tp!259147 e!546274)))

(declare-fun b!828554 () Bool)

(assert (=> b!828554 (= e!546274 tp_is_empty!3861)))

(declare-fun b!828557 () Bool)

(declare-fun tp!259223 () Bool)

(declare-fun tp!259222 () Bool)

(assert (=> b!828557 (= e!546274 (and tp!259223 tp!259222))))

(assert (= (and b!828223 ((_ is ElementMatch!2069) (regTwo!4651 (reg!2398 r!27177)))) b!828554))

(assert (= (and b!828223 ((_ is Concat!3800) (regTwo!4651 (reg!2398 r!27177)))) b!828555))

(assert (= (and b!828223 ((_ is Star!2069) (regTwo!4651 (reg!2398 r!27177)))) b!828556))

(assert (= (and b!828223 ((_ is Union!2069) (regTwo!4651 (reg!2398 r!27177)))) b!828557))

(declare-fun b!828560 () Bool)

(declare-fun e!546275 () Bool)

(declare-fun tp!259226 () Bool)

(assert (=> b!828560 (= e!546275 tp!259226)))

(declare-fun b!828559 () Bool)

(declare-fun tp!259229 () Bool)

(declare-fun tp!259225 () Bool)

(assert (=> b!828559 (= e!546275 (and tp!259229 tp!259225))))

(assert (=> b!828209 (= tp!259134 e!546275)))

(declare-fun b!828558 () Bool)

(assert (=> b!828558 (= e!546275 tp_is_empty!3861)))

(declare-fun b!828561 () Bool)

(declare-fun tp!259228 () Bool)

(declare-fun tp!259227 () Bool)

(assert (=> b!828561 (= e!546275 (and tp!259228 tp!259227))))

(assert (= (and b!828209 ((_ is ElementMatch!2069) (regOne!4650 (regTwo!4650 r!27177)))) b!828558))

(assert (= (and b!828209 ((_ is Concat!3800) (regOne!4650 (regTwo!4650 r!27177)))) b!828559))

(assert (= (and b!828209 ((_ is Star!2069) (regOne!4650 (regTwo!4650 r!27177)))) b!828560))

(assert (= (and b!828209 ((_ is Union!2069) (regOne!4650 (regTwo!4650 r!27177)))) b!828561))

(declare-fun b!828564 () Bool)

(declare-fun e!546276 () Bool)

(declare-fun tp!259231 () Bool)

(assert (=> b!828564 (= e!546276 tp!259231)))

(declare-fun b!828563 () Bool)

(declare-fun tp!259234 () Bool)

(declare-fun tp!259230 () Bool)

(assert (=> b!828563 (= e!546276 (and tp!259234 tp!259230))))

(assert (=> b!828209 (= tp!259130 e!546276)))

(declare-fun b!828562 () Bool)

(assert (=> b!828562 (= e!546276 tp_is_empty!3861)))

(declare-fun b!828565 () Bool)

(declare-fun tp!259233 () Bool)

(declare-fun tp!259232 () Bool)

(assert (=> b!828565 (= e!546276 (and tp!259233 tp!259232))))

(assert (= (and b!828209 ((_ is ElementMatch!2069) (regTwo!4650 (regTwo!4650 r!27177)))) b!828562))

(assert (= (and b!828209 ((_ is Concat!3800) (regTwo!4650 (regTwo!4650 r!27177)))) b!828563))

(assert (= (and b!828209 ((_ is Star!2069) (regTwo!4650 (regTwo!4650 r!27177)))) b!828564))

(assert (= (and b!828209 ((_ is Union!2069) (regTwo!4650 (regTwo!4650 r!27177)))) b!828565))

(declare-fun b!828568 () Bool)

(declare-fun e!546277 () Bool)

(declare-fun tp!259236 () Bool)

(assert (=> b!828568 (= e!546277 tp!259236)))

(declare-fun b!828567 () Bool)

(declare-fun tp!259239 () Bool)

(declare-fun tp!259235 () Bool)

(assert (=> b!828567 (= e!546277 (and tp!259239 tp!259235))))

(assert (=> b!828218 (= tp!259141 e!546277)))

(declare-fun b!828566 () Bool)

(assert (=> b!828566 (= e!546277 tp_is_empty!3861)))

(declare-fun b!828569 () Bool)

(declare-fun tp!259238 () Bool)

(declare-fun tp!259237 () Bool)

(assert (=> b!828569 (= e!546277 (and tp!259238 tp!259237))))

(assert (= (and b!828218 ((_ is ElementMatch!2069) (reg!2398 (regTwo!4651 r!27177)))) b!828566))

(assert (= (and b!828218 ((_ is Concat!3800) (reg!2398 (regTwo!4651 r!27177)))) b!828567))

(assert (= (and b!828218 ((_ is Star!2069) (reg!2398 (regTwo!4651 r!27177)))) b!828568))

(assert (= (and b!828218 ((_ is Union!2069) (reg!2398 (regTwo!4651 r!27177)))) b!828569))

(declare-fun b!828572 () Bool)

(declare-fun e!546278 () Bool)

(declare-fun tp!259241 () Bool)

(assert (=> b!828572 (= e!546278 tp!259241)))

(declare-fun b!828571 () Bool)

(declare-fun tp!259244 () Bool)

(declare-fun tp!259240 () Bool)

(assert (=> b!828571 (= e!546278 (and tp!259244 tp!259240))))

(assert (=> b!828213 (= tp!259139 e!546278)))

(declare-fun b!828570 () Bool)

(assert (=> b!828570 (= e!546278 tp_is_empty!3861)))

(declare-fun b!828573 () Bool)

(declare-fun tp!259243 () Bool)

(declare-fun tp!259242 () Bool)

(assert (=> b!828573 (= e!546278 (and tp!259243 tp!259242))))

(assert (= (and b!828213 ((_ is ElementMatch!2069) (regOne!4650 (regOne!4651 r!27177)))) b!828570))

(assert (= (and b!828213 ((_ is Concat!3800) (regOne!4650 (regOne!4651 r!27177)))) b!828571))

(assert (= (and b!828213 ((_ is Star!2069) (regOne!4650 (regOne!4651 r!27177)))) b!828572))

(assert (= (and b!828213 ((_ is Union!2069) (regOne!4650 (regOne!4651 r!27177)))) b!828573))

(declare-fun b!828576 () Bool)

(declare-fun e!546279 () Bool)

(declare-fun tp!259246 () Bool)

(assert (=> b!828576 (= e!546279 tp!259246)))

(declare-fun b!828575 () Bool)

(declare-fun tp!259249 () Bool)

(declare-fun tp!259245 () Bool)

(assert (=> b!828575 (= e!546279 (and tp!259249 tp!259245))))

(assert (=> b!828213 (= tp!259135 e!546279)))

(declare-fun b!828574 () Bool)

(assert (=> b!828574 (= e!546279 tp_is_empty!3861)))

(declare-fun b!828577 () Bool)

(declare-fun tp!259248 () Bool)

(declare-fun tp!259247 () Bool)

(assert (=> b!828577 (= e!546279 (and tp!259248 tp!259247))))

(assert (= (and b!828213 ((_ is ElementMatch!2069) (regTwo!4650 (regOne!4651 r!27177)))) b!828574))

(assert (= (and b!828213 ((_ is Concat!3800) (regTwo!4650 (regOne!4651 r!27177)))) b!828575))

(assert (= (and b!828213 ((_ is Star!2069) (regTwo!4650 (regOne!4651 r!27177)))) b!828576))

(assert (= (and b!828213 ((_ is Union!2069) (regTwo!4650 (regOne!4651 r!27177)))) b!828577))

(declare-fun b!828580 () Bool)

(declare-fun e!546280 () Bool)

(declare-fun tp!259251 () Bool)

(assert (=> b!828580 (= e!546280 tp!259251)))

(declare-fun b!828579 () Bool)

(declare-fun tp!259254 () Bool)

(declare-fun tp!259250 () Bool)

(assert (=> b!828579 (= e!546280 (and tp!259254 tp!259250))))

(assert (=> b!828206 (= tp!259126 e!546280)))

(declare-fun b!828578 () Bool)

(assert (=> b!828578 (= e!546280 tp_is_empty!3861)))

(declare-fun b!828581 () Bool)

(declare-fun tp!259253 () Bool)

(declare-fun tp!259252 () Bool)

(assert (=> b!828581 (= e!546280 (and tp!259253 tp!259252))))

(assert (= (and b!828206 ((_ is ElementMatch!2069) (reg!2398 (regOne!4650 r!27177)))) b!828578))

(assert (= (and b!828206 ((_ is Concat!3800) (reg!2398 (regOne!4650 r!27177)))) b!828579))

(assert (= (and b!828206 ((_ is Star!2069) (reg!2398 (regOne!4650 r!27177)))) b!828580))

(assert (= (and b!828206 ((_ is Union!2069) (reg!2398 (regOne!4650 r!27177)))) b!828581))

(declare-fun b!828584 () Bool)

(declare-fun e!546281 () Bool)

(declare-fun tp!259256 () Bool)

(assert (=> b!828584 (= e!546281 tp!259256)))

(declare-fun b!828583 () Bool)

(declare-fun tp!259259 () Bool)

(declare-fun tp!259255 () Bool)

(assert (=> b!828583 (= e!546281 (and tp!259259 tp!259255))))

(assert (=> b!828215 (= tp!259138 e!546281)))

(declare-fun b!828582 () Bool)

(assert (=> b!828582 (= e!546281 tp_is_empty!3861)))

(declare-fun b!828585 () Bool)

(declare-fun tp!259258 () Bool)

(declare-fun tp!259257 () Bool)

(assert (=> b!828585 (= e!546281 (and tp!259258 tp!259257))))

(assert (= (and b!828215 ((_ is ElementMatch!2069) (regOne!4651 (regOne!4651 r!27177)))) b!828582))

(assert (= (and b!828215 ((_ is Concat!3800) (regOne!4651 (regOne!4651 r!27177)))) b!828583))

(assert (= (and b!828215 ((_ is Star!2069) (regOne!4651 (regOne!4651 r!27177)))) b!828584))

(assert (= (and b!828215 ((_ is Union!2069) (regOne!4651 (regOne!4651 r!27177)))) b!828585))

(declare-fun b!828588 () Bool)

(declare-fun e!546282 () Bool)

(declare-fun tp!259261 () Bool)

(assert (=> b!828588 (= e!546282 tp!259261)))

(declare-fun b!828587 () Bool)

(declare-fun tp!259264 () Bool)

(declare-fun tp!259260 () Bool)

(assert (=> b!828587 (= e!546282 (and tp!259264 tp!259260))))

(assert (=> b!828215 (= tp!259137 e!546282)))

(declare-fun b!828586 () Bool)

(assert (=> b!828586 (= e!546282 tp_is_empty!3861)))

(declare-fun b!828589 () Bool)

(declare-fun tp!259263 () Bool)

(declare-fun tp!259262 () Bool)

(assert (=> b!828589 (= e!546282 (and tp!259263 tp!259262))))

(assert (= (and b!828215 ((_ is ElementMatch!2069) (regTwo!4651 (regOne!4651 r!27177)))) b!828586))

(assert (= (and b!828215 ((_ is Concat!3800) (regTwo!4651 (regOne!4651 r!27177)))) b!828587))

(assert (= (and b!828215 ((_ is Star!2069) (regTwo!4651 (regOne!4651 r!27177)))) b!828588))

(assert (= (and b!828215 ((_ is Union!2069) (regTwo!4651 (regOne!4651 r!27177)))) b!828589))

(declare-fun b!828592 () Bool)

(declare-fun e!546283 () Bool)

(declare-fun tp!259266 () Bool)

(assert (=> b!828592 (= e!546283 tp!259266)))

(declare-fun b!828591 () Bool)

(declare-fun tp!259269 () Bool)

(declare-fun tp!259265 () Bool)

(assert (=> b!828591 (= e!546283 (and tp!259269 tp!259265))))

(assert (=> b!828210 (= tp!259131 e!546283)))

(declare-fun b!828590 () Bool)

(assert (=> b!828590 (= e!546283 tp_is_empty!3861)))

(declare-fun b!828593 () Bool)

(declare-fun tp!259268 () Bool)

(declare-fun tp!259267 () Bool)

(assert (=> b!828593 (= e!546283 (and tp!259268 tp!259267))))

(assert (= (and b!828210 ((_ is ElementMatch!2069) (reg!2398 (regTwo!4650 r!27177)))) b!828590))

(assert (= (and b!828210 ((_ is Concat!3800) (reg!2398 (regTwo!4650 r!27177)))) b!828591))

(assert (= (and b!828210 ((_ is Star!2069) (reg!2398 (regTwo!4650 r!27177)))) b!828592))

(assert (= (and b!828210 ((_ is Union!2069) (reg!2398 (regTwo!4650 r!27177)))) b!828593))

(declare-fun b!828596 () Bool)

(declare-fun e!546284 () Bool)

(declare-fun tp!259271 () Bool)

(assert (=> b!828596 (= e!546284 tp!259271)))

(declare-fun b!828595 () Bool)

(declare-fun tp!259274 () Bool)

(declare-fun tp!259270 () Bool)

(assert (=> b!828595 (= e!546284 (and tp!259274 tp!259270))))

(assert (=> b!828219 (= tp!259143 e!546284)))

(declare-fun b!828594 () Bool)

(assert (=> b!828594 (= e!546284 tp_is_empty!3861)))

(declare-fun b!828597 () Bool)

(declare-fun tp!259273 () Bool)

(declare-fun tp!259272 () Bool)

(assert (=> b!828597 (= e!546284 (and tp!259273 tp!259272))))

(assert (= (and b!828219 ((_ is ElementMatch!2069) (regOne!4651 (regTwo!4651 r!27177)))) b!828594))

(assert (= (and b!828219 ((_ is Concat!3800) (regOne!4651 (regTwo!4651 r!27177)))) b!828595))

(assert (= (and b!828219 ((_ is Star!2069) (regOne!4651 (regTwo!4651 r!27177)))) b!828596))

(assert (= (and b!828219 ((_ is Union!2069) (regOne!4651 (regTwo!4651 r!27177)))) b!828597))

(declare-fun b!828600 () Bool)

(declare-fun e!546285 () Bool)

(declare-fun tp!259276 () Bool)

(assert (=> b!828600 (= e!546285 tp!259276)))

(declare-fun b!828599 () Bool)

(declare-fun tp!259279 () Bool)

(declare-fun tp!259275 () Bool)

(assert (=> b!828599 (= e!546285 (and tp!259279 tp!259275))))

(assert (=> b!828219 (= tp!259142 e!546285)))

(declare-fun b!828598 () Bool)

(assert (=> b!828598 (= e!546285 tp_is_empty!3861)))

(declare-fun b!828601 () Bool)

(declare-fun tp!259278 () Bool)

(declare-fun tp!259277 () Bool)

(assert (=> b!828601 (= e!546285 (and tp!259278 tp!259277))))

(assert (= (and b!828219 ((_ is ElementMatch!2069) (regTwo!4651 (regTwo!4651 r!27177)))) b!828598))

(assert (= (and b!828219 ((_ is Concat!3800) (regTwo!4651 (regTwo!4651 r!27177)))) b!828599))

(assert (= (and b!828219 ((_ is Star!2069) (regTwo!4651 (regTwo!4651 r!27177)))) b!828600))

(assert (= (and b!828219 ((_ is Union!2069) (regTwo!4651 (regTwo!4651 r!27177)))) b!828601))

(declare-fun b!828604 () Bool)

(declare-fun e!546286 () Bool)

(declare-fun tp!259281 () Bool)

(assert (=> b!828604 (= e!546286 tp!259281)))

(declare-fun b!828603 () Bool)

(declare-fun tp!259284 () Bool)

(declare-fun tp!259280 () Bool)

(assert (=> b!828603 (= e!546286 (and tp!259284 tp!259280))))

(assert (=> b!828205 (= tp!259129 e!546286)))

(declare-fun b!828602 () Bool)

(assert (=> b!828602 (= e!546286 tp_is_empty!3861)))

(declare-fun b!828605 () Bool)

(declare-fun tp!259283 () Bool)

(declare-fun tp!259282 () Bool)

(assert (=> b!828605 (= e!546286 (and tp!259283 tp!259282))))

(assert (= (and b!828205 ((_ is ElementMatch!2069) (regOne!4650 (regOne!4650 r!27177)))) b!828602))

(assert (= (and b!828205 ((_ is Concat!3800) (regOne!4650 (regOne!4650 r!27177)))) b!828603))

(assert (= (and b!828205 ((_ is Star!2069) (regOne!4650 (regOne!4650 r!27177)))) b!828604))

(assert (= (and b!828205 ((_ is Union!2069) (regOne!4650 (regOne!4650 r!27177)))) b!828605))

(declare-fun b!828608 () Bool)

(declare-fun e!546287 () Bool)

(declare-fun tp!259286 () Bool)

(assert (=> b!828608 (= e!546287 tp!259286)))

(declare-fun b!828607 () Bool)

(declare-fun tp!259289 () Bool)

(declare-fun tp!259285 () Bool)

(assert (=> b!828607 (= e!546287 (and tp!259289 tp!259285))))

(assert (=> b!828205 (= tp!259125 e!546287)))

(declare-fun b!828606 () Bool)

(assert (=> b!828606 (= e!546287 tp_is_empty!3861)))

(declare-fun b!828609 () Bool)

(declare-fun tp!259288 () Bool)

(declare-fun tp!259287 () Bool)

(assert (=> b!828609 (= e!546287 (and tp!259288 tp!259287))))

(assert (= (and b!828205 ((_ is ElementMatch!2069) (regTwo!4650 (regOne!4650 r!27177)))) b!828606))

(assert (= (and b!828205 ((_ is Concat!3800) (regTwo!4650 (regOne!4650 r!27177)))) b!828607))

(assert (= (and b!828205 ((_ is Star!2069) (regTwo!4650 (regOne!4650 r!27177)))) b!828608))

(assert (= (and b!828205 ((_ is Union!2069) (regTwo!4650 (regOne!4650 r!27177)))) b!828609))

(declare-fun b!828612 () Bool)

(declare-fun e!546288 () Bool)

(declare-fun tp!259291 () Bool)

(assert (=> b!828612 (= e!546288 tp!259291)))

(declare-fun b!828611 () Bool)

(declare-fun tp!259294 () Bool)

(declare-fun tp!259290 () Bool)

(assert (=> b!828611 (= e!546288 (and tp!259294 tp!259290))))

(assert (=> b!828207 (= tp!259128 e!546288)))

(declare-fun b!828610 () Bool)

(assert (=> b!828610 (= e!546288 tp_is_empty!3861)))

(declare-fun b!828613 () Bool)

(declare-fun tp!259293 () Bool)

(declare-fun tp!259292 () Bool)

(assert (=> b!828613 (= e!546288 (and tp!259293 tp!259292))))

(assert (= (and b!828207 ((_ is ElementMatch!2069) (regOne!4651 (regOne!4650 r!27177)))) b!828610))

(assert (= (and b!828207 ((_ is Concat!3800) (regOne!4651 (regOne!4650 r!27177)))) b!828611))

(assert (= (and b!828207 ((_ is Star!2069) (regOne!4651 (regOne!4650 r!27177)))) b!828612))

(assert (= (and b!828207 ((_ is Union!2069) (regOne!4651 (regOne!4650 r!27177)))) b!828613))

(declare-fun b!828616 () Bool)

(declare-fun e!546289 () Bool)

(declare-fun tp!259296 () Bool)

(assert (=> b!828616 (= e!546289 tp!259296)))

(declare-fun b!828615 () Bool)

(declare-fun tp!259299 () Bool)

(declare-fun tp!259295 () Bool)

(assert (=> b!828615 (= e!546289 (and tp!259299 tp!259295))))

(assert (=> b!828207 (= tp!259127 e!546289)))

(declare-fun b!828614 () Bool)

(assert (=> b!828614 (= e!546289 tp_is_empty!3861)))

(declare-fun b!828617 () Bool)

(declare-fun tp!259298 () Bool)

(declare-fun tp!259297 () Bool)

(assert (=> b!828617 (= e!546289 (and tp!259298 tp!259297))))

(assert (= (and b!828207 ((_ is ElementMatch!2069) (regTwo!4651 (regOne!4650 r!27177)))) b!828614))

(assert (= (and b!828207 ((_ is Concat!3800) (regTwo!4651 (regOne!4650 r!27177)))) b!828615))

(assert (= (and b!828207 ((_ is Star!2069) (regTwo!4651 (regOne!4650 r!27177)))) b!828616))

(assert (= (and b!828207 ((_ is Union!2069) (regTwo!4651 (regOne!4650 r!27177)))) b!828617))

(declare-fun b!828620 () Bool)

(declare-fun e!546290 () Bool)

(declare-fun tp!259301 () Bool)

(assert (=> b!828620 (= e!546290 tp!259301)))

(declare-fun b!828619 () Bool)

(declare-fun tp!259304 () Bool)

(declare-fun tp!259300 () Bool)

(assert (=> b!828619 (= e!546290 (and tp!259304 tp!259300))))

(assert (=> b!828211 (= tp!259133 e!546290)))

(declare-fun b!828618 () Bool)

(assert (=> b!828618 (= e!546290 tp_is_empty!3861)))

(declare-fun b!828621 () Bool)

(declare-fun tp!259303 () Bool)

(declare-fun tp!259302 () Bool)

(assert (=> b!828621 (= e!546290 (and tp!259303 tp!259302))))

(assert (= (and b!828211 ((_ is ElementMatch!2069) (regOne!4651 (regTwo!4650 r!27177)))) b!828618))

(assert (= (and b!828211 ((_ is Concat!3800) (regOne!4651 (regTwo!4650 r!27177)))) b!828619))

(assert (= (and b!828211 ((_ is Star!2069) (regOne!4651 (regTwo!4650 r!27177)))) b!828620))

(assert (= (and b!828211 ((_ is Union!2069) (regOne!4651 (regTwo!4650 r!27177)))) b!828621))

(declare-fun b!828624 () Bool)

(declare-fun e!546291 () Bool)

(declare-fun tp!259306 () Bool)

(assert (=> b!828624 (= e!546291 tp!259306)))

(declare-fun b!828623 () Bool)

(declare-fun tp!259309 () Bool)

(declare-fun tp!259305 () Bool)

(assert (=> b!828623 (= e!546291 (and tp!259309 tp!259305))))

(assert (=> b!828211 (= tp!259132 e!546291)))

(declare-fun b!828622 () Bool)

(assert (=> b!828622 (= e!546291 tp_is_empty!3861)))

(declare-fun b!828625 () Bool)

(declare-fun tp!259308 () Bool)

(declare-fun tp!259307 () Bool)

(assert (=> b!828625 (= e!546291 (and tp!259308 tp!259307))))

(assert (= (and b!828211 ((_ is ElementMatch!2069) (regTwo!4651 (regTwo!4650 r!27177)))) b!828622))

(assert (= (and b!828211 ((_ is Concat!3800) (regTwo!4651 (regTwo!4650 r!27177)))) b!828623))

(assert (= (and b!828211 ((_ is Star!2069) (regTwo!4651 (regTwo!4650 r!27177)))) b!828624))

(assert (= (and b!828211 ((_ is Union!2069) (regTwo!4651 (regTwo!4650 r!27177)))) b!828625))

(check-sat (not b!828557) tp_is_empty!3861 (not b!828597) (not bm!48424) (not b!828556) (not bm!48427) (not b!828449) (not b!828527) (not bm!48435) (not b!828599) (not b!828600) (not bm!48447) (not b!828595) (not b!828456) (not b!828377) (not b!828553) (not bm!48453) (not b!828561) (not b!828583) (not b!828568) (not b!828584) (not b!828543) (not bm!48467) (not b!828540) (not b!828425) (not b!828572) (not b!828571) (not b!828608) (not b!828539) (not b!828544) (not bm!48443) (not b!828588) (not b!828617) (not d!259720) (not b!828623) (not b!828581) (not b!828587) (not b!828611) (not bm!48434) (not b!828621) (not b!828528) (not d!259724) (not b!828612) (not bm!48445) (not b!828551) (not b!828575) (not b!828604) (not b!828541) (not b!828567) (not b!828576) (not b!828355) (not b!828601) (not b!828431) (not b!828547) (not bm!48432) (not b!828585) (not d!259714) (not b!828563) (not bm!48446) (not b!828624) (not b!828605) (not bm!48450) (not b!828555) (not b!828577) (not b!828616) (not b!828593) (not b!828447) (not bm!48442) (not b!828365) (not b!828615) (not bm!48475) (not b!828375) (not b!828535) (not b!828580) (not b!828545) (not bm!48469) (not b!828451) (not bm!48454) (not b!828591) (not b!828579) (not b!828569) (not bm!48473) (not b!828609) (not b!828405) (not b!828565) (not b!828607) (not b!828422) (not bm!48466) (not b!828564) (not bm!48458) (not b!828549) (not b!828536) (not b!828573) (not bm!48472) (not b!828625) (not b!828589) (not d!259748) (not bm!48461) (not bm!48439) (not bm!48459) (not bm!48425) (not bm!48455) (not b!828532) (not d!259734) (not b!828548) (not b!828437) (not bm!48430) (not b!828463) (not d!259736) (not b!828592) (not bm!48451) (not bm!48462) (not b!828552) (not b!828521) (not bm!48470) (not b!828404) (not b!828531) (not b!828533) (not b!828603) (not b!828613) (not b!828596) (not b!828390) (not bm!48438) (not b!828462) (not d!259738) (not b!828620) (not bm!48437) (not b!828476) (not b!828560) (not bm!48474) (not b!828559) (not bm!48464) (not b!828529) (not d!259728) (not d!259764) (not d!259742) (not bm!48429) (not b!828408) (not b!828537) (not b!828478) (not b!828619) (not b!828424) (not d!259740))
(check-sat)
