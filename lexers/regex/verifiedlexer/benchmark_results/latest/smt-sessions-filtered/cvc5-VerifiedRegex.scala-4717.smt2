; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!244122 () Bool)

(assert start!244122)

(declare-fun b!2500811 () Bool)

(declare-fun e!1586183 () Bool)

(declare-datatypes ((C!14974 0))(
  ( (C!14975 (val!9139 Int)) )
))
(declare-datatypes ((Regex!7408 0))(
  ( (ElementMatch!7408 (c!397898 C!14974)) (Concat!12104 (regOne!15328 Regex!7408) (regTwo!15328 Regex!7408)) (EmptyExpr!7408) (Star!7408 (reg!7737 Regex!7408)) (EmptyLang!7408) (Union!7408 (regOne!15329 Regex!7408) (regTwo!15329 Regex!7408)) )
))
(declare-fun lt!895607 () Regex!7408)

(declare-fun validRegex!3034 (Regex!7408) Bool)

(assert (=> b!2500811 (= e!1586183 (not (validRegex!3034 lt!895607)))))

(declare-fun e!1586186 () Bool)

(assert (=> b!2500811 e!1586186))

(declare-fun res!1057466 () Bool)

(assert (=> b!2500811 (=> res!1057466 e!1586186)))

(declare-datatypes ((List!29473 0))(
  ( (Nil!29373) (Cons!29373 (h!34793 C!14974) (t!211172 List!29473)) )
))
(declare-fun tl!4068 () List!29473)

(declare-fun matchR!3411 (Regex!7408 List!29473) Bool)

(assert (=> b!2500811 (= res!1057466 (matchR!3411 lt!895607 tl!4068))))

(declare-datatypes ((Unit!43073 0))(
  ( (Unit!43074) )
))
(declare-fun lt!895609 () Unit!43073)

(declare-fun lt!895608 () Regex!7408)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!103 (Regex!7408 Regex!7408 List!29473) Unit!43073)

(assert (=> b!2500811 (= lt!895609 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!103 lt!895607 lt!895608 tl!4068))))

(declare-fun lt!895605 () Regex!7408)

(declare-fun derivative!103 (Regex!7408 List!29473) Regex!7408)

(assert (=> b!2500811 (= (matchR!3411 lt!895605 tl!4068) (matchR!3411 (derivative!103 lt!895605 tl!4068) Nil!29373))))

(declare-fun lt!895606 () Unit!43073)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!57 (Regex!7408 List!29473) Unit!43073)

(assert (=> b!2500811 (= lt!895606 (lemmaMatchRIsSameAsWholeDerivativeAndNil!57 lt!895605 tl!4068))))

(assert (=> b!2500811 (= lt!895605 (Union!7408 lt!895607 lt!895608))))

(declare-fun r!27340 () Regex!7408)

(declare-fun c!14016 () C!14974)

(declare-fun derivativeStep!1977 (Regex!7408 C!14974) Regex!7408)

(assert (=> b!2500811 (= lt!895608 (derivativeStep!1977 (regTwo!15328 r!27340) c!14016))))

(assert (=> b!2500811 (= lt!895607 (Concat!12104 (derivativeStep!1977 (regOne!15328 r!27340) c!14016) (regTwo!15328 r!27340)))))

(declare-fun res!1057467 () Bool)

(assert (=> start!244122 (=> (not res!1057467) (not e!1586183))))

(assert (=> start!244122 (= res!1057467 (validRegex!3034 r!27340))))

(assert (=> start!244122 e!1586183))

(declare-fun e!1586184 () Bool)

(assert (=> start!244122 e!1586184))

(declare-fun tp_is_empty!12671 () Bool)

(assert (=> start!244122 tp_is_empty!12671))

(declare-fun e!1586185 () Bool)

(assert (=> start!244122 e!1586185))

(declare-fun b!2500812 () Bool)

(declare-fun tp!800703 () Bool)

(declare-fun tp!800704 () Bool)

(assert (=> b!2500812 (= e!1586184 (and tp!800703 tp!800704))))

(declare-fun b!2500813 () Bool)

(assert (=> b!2500813 (= e!1586186 (matchR!3411 lt!895608 tl!4068))))

(declare-fun b!2500814 () Bool)

(declare-fun tp!800707 () Bool)

(assert (=> b!2500814 (= e!1586185 (and tp_is_empty!12671 tp!800707))))

(declare-fun b!2500815 () Bool)

(declare-fun res!1057463 () Bool)

(assert (=> b!2500815 (=> (not res!1057463) (not e!1586183))))

(assert (=> b!2500815 (= res!1057463 (and (not (is-EmptyExpr!7408 r!27340)) (not (is-EmptyLang!7408 r!27340)) (not (is-ElementMatch!7408 r!27340)) (not (is-Union!7408 r!27340)) (not (is-Star!7408 r!27340))))))

(declare-fun b!2500816 () Bool)

(declare-fun tp!800706 () Bool)

(assert (=> b!2500816 (= e!1586184 tp!800706)))

(declare-fun b!2500817 () Bool)

(declare-fun res!1057464 () Bool)

(assert (=> b!2500817 (=> (not res!1057464) (not e!1586183))))

(declare-fun nullable!2325 (Regex!7408) Bool)

(assert (=> b!2500817 (= res!1057464 (nullable!2325 (regOne!15328 r!27340)))))

(declare-fun b!2500818 () Bool)

(assert (=> b!2500818 (= e!1586184 tp_is_empty!12671)))

(declare-fun b!2500819 () Bool)

(declare-fun res!1057465 () Bool)

(assert (=> b!2500819 (=> (not res!1057465) (not e!1586183))))

(assert (=> b!2500819 (= res!1057465 (nullable!2325 (derivative!103 (derivativeStep!1977 r!27340 c!14016) tl!4068)))))

(declare-fun b!2500820 () Bool)

(declare-fun tp!800705 () Bool)

(declare-fun tp!800708 () Bool)

(assert (=> b!2500820 (= e!1586184 (and tp!800705 tp!800708))))

(assert (= (and start!244122 res!1057467) b!2500819))

(assert (= (and b!2500819 res!1057465) b!2500815))

(assert (= (and b!2500815 res!1057463) b!2500817))

(assert (= (and b!2500817 res!1057464) b!2500811))

(assert (= (and b!2500811 (not res!1057466)) b!2500813))

(assert (= (and start!244122 (is-ElementMatch!7408 r!27340)) b!2500818))

(assert (= (and start!244122 (is-Concat!12104 r!27340)) b!2500820))

(assert (= (and start!244122 (is-Star!7408 r!27340)) b!2500816))

(assert (= (and start!244122 (is-Union!7408 r!27340)) b!2500812))

(assert (= (and start!244122 (is-Cons!29373 tl!4068)) b!2500814))

(declare-fun m!2863373 () Bool)

(assert (=> b!2500819 m!2863373))

(assert (=> b!2500819 m!2863373))

(declare-fun m!2863375 () Bool)

(assert (=> b!2500819 m!2863375))

(assert (=> b!2500819 m!2863375))

(declare-fun m!2863377 () Bool)

(assert (=> b!2500819 m!2863377))

(declare-fun m!2863379 () Bool)

(assert (=> b!2500813 m!2863379))

(declare-fun m!2863381 () Bool)

(assert (=> b!2500811 m!2863381))

(declare-fun m!2863383 () Bool)

(assert (=> b!2500811 m!2863383))

(declare-fun m!2863385 () Bool)

(assert (=> b!2500811 m!2863385))

(assert (=> b!2500811 m!2863383))

(declare-fun m!2863387 () Bool)

(assert (=> b!2500811 m!2863387))

(declare-fun m!2863389 () Bool)

(assert (=> b!2500811 m!2863389))

(declare-fun m!2863391 () Bool)

(assert (=> b!2500811 m!2863391))

(declare-fun m!2863393 () Bool)

(assert (=> b!2500811 m!2863393))

(declare-fun m!2863395 () Bool)

(assert (=> b!2500811 m!2863395))

(declare-fun m!2863397 () Bool)

(assert (=> b!2500811 m!2863397))

(declare-fun m!2863399 () Bool)

(assert (=> start!244122 m!2863399))

(declare-fun m!2863401 () Bool)

(assert (=> b!2500817 m!2863401))

(push 1)

(assert (not b!2500812))

(assert (not b!2500811))

(assert tp_is_empty!12671)

(assert (not b!2500817))

(assert (not b!2500813))

(assert (not b!2500819))

(assert (not b!2500814))

(assert (not b!2500820))

(assert (not start!244122))

(assert (not b!2500816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2500897 () Bool)

(declare-fun e!1586233 () Bool)

(declare-fun e!1586230 () Bool)

(assert (=> b!2500897 (= e!1586233 e!1586230)))

(declare-fun res!1057509 () Bool)

(assert (=> b!2500897 (=> res!1057509 e!1586230)))

(declare-fun call!154460 () Bool)

(assert (=> b!2500897 (= res!1057509 call!154460)))

(declare-fun b!2500898 () Bool)

(declare-fun e!1586229 () Bool)

(declare-fun head!5697 (List!29473) C!14974)

(assert (=> b!2500898 (= e!1586229 (= (head!5697 tl!4068) (c!397898 lt!895608)))))

(declare-fun b!2500899 () Bool)

(assert (=> b!2500899 (= e!1586230 (not (= (head!5697 tl!4068) (c!397898 lt!895608))))))

(declare-fun b!2500900 () Bool)

(declare-fun e!1586232 () Bool)

(declare-fun e!1586227 () Bool)

(assert (=> b!2500900 (= e!1586232 e!1586227)))

(declare-fun c!397912 () Bool)

(assert (=> b!2500900 (= c!397912 (is-EmptyLang!7408 lt!895608))))

(declare-fun b!2500901 () Bool)

(declare-fun res!1057511 () Bool)

(assert (=> b!2500901 (=> (not res!1057511) (not e!1586229))))

(declare-fun isEmpty!16833 (List!29473) Bool)

(declare-fun tail!3974 (List!29473) List!29473)

(assert (=> b!2500901 (= res!1057511 (isEmpty!16833 (tail!3974 tl!4068)))))

(declare-fun b!2500902 () Bool)

(declare-fun res!1057516 () Bool)

(declare-fun e!1586231 () Bool)

(assert (=> b!2500902 (=> res!1057516 e!1586231)))

(assert (=> b!2500902 (= res!1057516 (not (is-ElementMatch!7408 lt!895608)))))

(assert (=> b!2500902 (= e!1586227 e!1586231)))

(declare-fun d!715410 () Bool)

(assert (=> d!715410 e!1586232))

(declare-fun c!397911 () Bool)

(assert (=> d!715410 (= c!397911 (is-EmptyExpr!7408 lt!895608))))

(declare-fun lt!895627 () Bool)

(declare-fun e!1586228 () Bool)

(assert (=> d!715410 (= lt!895627 e!1586228)))

(declare-fun c!397910 () Bool)

(assert (=> d!715410 (= c!397910 (isEmpty!16833 tl!4068))))

(assert (=> d!715410 (validRegex!3034 lt!895608)))

(assert (=> d!715410 (= (matchR!3411 lt!895608 tl!4068) lt!895627)))

(declare-fun b!2500903 () Bool)

(assert (=> b!2500903 (= e!1586227 (not lt!895627))))

(declare-fun b!2500904 () Bool)

(declare-fun res!1057514 () Bool)

(assert (=> b!2500904 (=> (not res!1057514) (not e!1586229))))

(assert (=> b!2500904 (= res!1057514 (not call!154460))))

(declare-fun b!2500905 () Bool)

(assert (=> b!2500905 (= e!1586231 e!1586233)))

(declare-fun res!1057510 () Bool)

(assert (=> b!2500905 (=> (not res!1057510) (not e!1586233))))

(assert (=> b!2500905 (= res!1057510 (not lt!895627))))

(declare-fun b!2500906 () Bool)

(assert (=> b!2500906 (= e!1586228 (matchR!3411 (derivativeStep!1977 lt!895608 (head!5697 tl!4068)) (tail!3974 tl!4068)))))

(declare-fun b!2500907 () Bool)

(declare-fun res!1057515 () Bool)

(assert (=> b!2500907 (=> res!1057515 e!1586231)))

(assert (=> b!2500907 (= res!1057515 e!1586229)))

(declare-fun res!1057513 () Bool)

(assert (=> b!2500907 (=> (not res!1057513) (not e!1586229))))

(assert (=> b!2500907 (= res!1057513 lt!895627)))

(declare-fun b!2500908 () Bool)

(assert (=> b!2500908 (= e!1586232 (= lt!895627 call!154460))))

(declare-fun bm!154455 () Bool)

(assert (=> bm!154455 (= call!154460 (isEmpty!16833 tl!4068))))

(declare-fun b!2500909 () Bool)

(assert (=> b!2500909 (= e!1586228 (nullable!2325 lt!895608))))

(declare-fun b!2500910 () Bool)

(declare-fun res!1057512 () Bool)

(assert (=> b!2500910 (=> res!1057512 e!1586230)))

(assert (=> b!2500910 (= res!1057512 (not (isEmpty!16833 (tail!3974 tl!4068))))))

(assert (= (and d!715410 c!397910) b!2500909))

(assert (= (and d!715410 (not c!397910)) b!2500906))

(assert (= (and d!715410 c!397911) b!2500908))

(assert (= (and d!715410 (not c!397911)) b!2500900))

(assert (= (and b!2500900 c!397912) b!2500903))

(assert (= (and b!2500900 (not c!397912)) b!2500902))

(assert (= (and b!2500902 (not res!1057516)) b!2500907))

(assert (= (and b!2500907 res!1057513) b!2500904))

(assert (= (and b!2500904 res!1057514) b!2500901))

(assert (= (and b!2500901 res!1057511) b!2500898))

(assert (= (and b!2500907 (not res!1057515)) b!2500905))

(assert (= (and b!2500905 res!1057510) b!2500897))

(assert (= (and b!2500897 (not res!1057509)) b!2500910))

(assert (= (and b!2500910 (not res!1057512)) b!2500899))

(assert (= (or b!2500908 b!2500897 b!2500904) bm!154455))

(declare-fun m!2863433 () Bool)

(assert (=> b!2500910 m!2863433))

(assert (=> b!2500910 m!2863433))

(declare-fun m!2863435 () Bool)

(assert (=> b!2500910 m!2863435))

(declare-fun m!2863437 () Bool)

(assert (=> b!2500898 m!2863437))

(assert (=> b!2500901 m!2863433))

(assert (=> b!2500901 m!2863433))

(assert (=> b!2500901 m!2863435))

(declare-fun m!2863439 () Bool)

(assert (=> b!2500909 m!2863439))

(assert (=> b!2500899 m!2863437))

(declare-fun m!2863441 () Bool)

(assert (=> d!715410 m!2863441))

(declare-fun m!2863443 () Bool)

(assert (=> d!715410 m!2863443))

(assert (=> b!2500906 m!2863437))

(assert (=> b!2500906 m!2863437))

(declare-fun m!2863445 () Bool)

(assert (=> b!2500906 m!2863445))

(assert (=> b!2500906 m!2863433))

(assert (=> b!2500906 m!2863445))

(assert (=> b!2500906 m!2863433))

(declare-fun m!2863447 () Bool)

(assert (=> b!2500906 m!2863447))

(assert (=> bm!154455 m!2863441))

(assert (=> b!2500813 d!715410))

(declare-fun d!715414 () Bool)

(declare-fun nullableFct!593 (Regex!7408) Bool)

(assert (=> d!715414 (= (nullable!2325 (derivative!103 (derivativeStep!1977 r!27340 c!14016) tl!4068)) (nullableFct!593 (derivative!103 (derivativeStep!1977 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468568 () Bool)

(assert (= bs!468568 d!715414))

(assert (=> bs!468568 m!2863375))

(declare-fun m!2863449 () Bool)

(assert (=> bs!468568 m!2863449))

(assert (=> b!2500819 d!715414))

(declare-fun d!715416 () Bool)

(declare-fun lt!895630 () Regex!7408)

(assert (=> d!715416 (validRegex!3034 lt!895630)))

(declare-fun e!1586236 () Regex!7408)

(assert (=> d!715416 (= lt!895630 e!1586236)))

(declare-fun c!397915 () Bool)

(assert (=> d!715416 (= c!397915 (is-Cons!29373 tl!4068))))

(assert (=> d!715416 (validRegex!3034 (derivativeStep!1977 r!27340 c!14016))))

(assert (=> d!715416 (= (derivative!103 (derivativeStep!1977 r!27340 c!14016) tl!4068) lt!895630)))

(declare-fun b!2500915 () Bool)

(assert (=> b!2500915 (= e!1586236 (derivative!103 (derivativeStep!1977 (derivativeStep!1977 r!27340 c!14016) (h!34793 tl!4068)) (t!211172 tl!4068)))))

(declare-fun b!2500916 () Bool)

(assert (=> b!2500916 (= e!1586236 (derivativeStep!1977 r!27340 c!14016))))

(assert (= (and d!715416 c!397915) b!2500915))

(assert (= (and d!715416 (not c!397915)) b!2500916))

(declare-fun m!2863451 () Bool)

(assert (=> d!715416 m!2863451))

(assert (=> d!715416 m!2863373))

(declare-fun m!2863453 () Bool)

(assert (=> d!715416 m!2863453))

(assert (=> b!2500915 m!2863373))

(declare-fun m!2863455 () Bool)

(assert (=> b!2500915 m!2863455))

(assert (=> b!2500915 m!2863455))

(declare-fun m!2863457 () Bool)

(assert (=> b!2500915 m!2863457))

(assert (=> b!2500819 d!715416))

(declare-fun d!715418 () Bool)

(declare-fun lt!895633 () Regex!7408)

(assert (=> d!715418 (validRegex!3034 lt!895633)))

(declare-fun e!1586255 () Regex!7408)

(assert (=> d!715418 (= lt!895633 e!1586255)))

(declare-fun c!397931 () Bool)

(assert (=> d!715418 (= c!397931 (or (is-EmptyExpr!7408 r!27340) (is-EmptyLang!7408 r!27340)))))

(assert (=> d!715418 (validRegex!3034 r!27340)))

(assert (=> d!715418 (= (derivativeStep!1977 r!27340 c!14016) lt!895633)))

(declare-fun b!2500946 () Bool)

(declare-fun e!1586254 () Regex!7408)

(declare-fun e!1586256 () Regex!7408)

(assert (=> b!2500946 (= e!1586254 e!1586256)))

(declare-fun c!397930 () Bool)

(assert (=> b!2500946 (= c!397930 (is-Star!7408 r!27340))))

(declare-fun b!2500947 () Bool)

(declare-fun c!397932 () Bool)

(assert (=> b!2500947 (= c!397932 (nullable!2325 (regOne!15328 r!27340)))))

(declare-fun e!1586258 () Regex!7408)

(assert (=> b!2500947 (= e!1586256 e!1586258)))

(declare-fun b!2500948 () Bool)

(assert (=> b!2500948 (= e!1586255 EmptyLang!7408)))

(declare-fun b!2500949 () Bool)

(declare-fun c!397929 () Bool)

(assert (=> b!2500949 (= c!397929 (is-Union!7408 r!27340))))

(declare-fun e!1586257 () Regex!7408)

(assert (=> b!2500949 (= e!1586257 e!1586254)))

(declare-fun call!154472 () Regex!7408)

(declare-fun call!154475 () Regex!7408)

(declare-fun b!2500950 () Bool)

(assert (=> b!2500950 (= e!1586258 (Union!7408 (Concat!12104 call!154475 (regTwo!15328 r!27340)) call!154472))))

(declare-fun call!154473 () Regex!7408)

(declare-fun bm!154467 () Bool)

(assert (=> bm!154467 (= call!154473 (derivativeStep!1977 (ite c!397929 (regTwo!15329 r!27340) (ite c!397930 (reg!7737 r!27340) (regOne!15328 r!27340))) c!14016))))

(declare-fun b!2500951 () Bool)

(declare-fun call!154474 () Regex!7408)

(assert (=> b!2500951 (= e!1586256 (Concat!12104 call!154474 r!27340))))

(declare-fun bm!154468 () Bool)

(assert (=> bm!154468 (= call!154474 call!154473)))

(declare-fun bm!154469 () Bool)

(assert (=> bm!154469 (= call!154475 call!154474)))

(declare-fun b!2500952 () Bool)

(assert (=> b!2500952 (= e!1586257 (ite (= c!14016 (c!397898 r!27340)) EmptyExpr!7408 EmptyLang!7408))))

(declare-fun bm!154470 () Bool)

(assert (=> bm!154470 (= call!154472 (derivativeStep!1977 (ite c!397929 (regOne!15329 r!27340) (regTwo!15328 r!27340)) c!14016))))

(declare-fun b!2500953 () Bool)

(assert (=> b!2500953 (= e!1586255 e!1586257)))

(declare-fun c!397928 () Bool)

(assert (=> b!2500953 (= c!397928 (is-ElementMatch!7408 r!27340))))

(declare-fun b!2500954 () Bool)

(assert (=> b!2500954 (= e!1586258 (Union!7408 (Concat!12104 call!154475 (regTwo!15328 r!27340)) EmptyLang!7408))))

(declare-fun b!2500955 () Bool)

(assert (=> b!2500955 (= e!1586254 (Union!7408 call!154472 call!154473))))

(assert (= (and d!715418 c!397931) b!2500948))

(assert (= (and d!715418 (not c!397931)) b!2500953))

(assert (= (and b!2500953 c!397928) b!2500952))

(assert (= (and b!2500953 (not c!397928)) b!2500949))

(assert (= (and b!2500949 c!397929) b!2500955))

(assert (= (and b!2500949 (not c!397929)) b!2500946))

(assert (= (and b!2500946 c!397930) b!2500951))

(assert (= (and b!2500946 (not c!397930)) b!2500947))

(assert (= (and b!2500947 c!397932) b!2500950))

(assert (= (and b!2500947 (not c!397932)) b!2500954))

(assert (= (or b!2500950 b!2500954) bm!154469))

(assert (= (or b!2500951 bm!154469) bm!154468))

(assert (= (or b!2500955 bm!154468) bm!154467))

(assert (= (or b!2500955 b!2500950) bm!154470))

(declare-fun m!2863465 () Bool)

(assert (=> d!715418 m!2863465))

(assert (=> d!715418 m!2863399))

(assert (=> b!2500947 m!2863401))

(declare-fun m!2863467 () Bool)

(assert (=> bm!154467 m!2863467))

(declare-fun m!2863469 () Bool)

(assert (=> bm!154470 m!2863469))

(assert (=> b!2500819 d!715418))

(declare-fun d!715422 () Bool)

(declare-fun res!1057552 () Bool)

(declare-fun e!1586289 () Bool)

(assert (=> d!715422 (=> res!1057552 e!1586289)))

(assert (=> d!715422 (= res!1057552 (is-ElementMatch!7408 r!27340))))

(assert (=> d!715422 (= (validRegex!3034 r!27340) e!1586289)))

(declare-fun bm!154477 () Bool)

(declare-fun call!154482 () Bool)

(declare-fun call!154484 () Bool)

(assert (=> bm!154477 (= call!154482 call!154484)))

(declare-fun b!2501002 () Bool)

(declare-fun e!1586288 () Bool)

(declare-fun e!1586290 () Bool)

(assert (=> b!2501002 (= e!1586288 e!1586290)))

(declare-fun res!1057549 () Bool)

(assert (=> b!2501002 (=> (not res!1057549) (not e!1586290))))

(declare-fun call!154483 () Bool)

(assert (=> b!2501002 (= res!1057549 call!154483)))

(declare-fun b!2501003 () Bool)

(declare-fun e!1586287 () Bool)

(declare-fun e!1586291 () Bool)

(assert (=> b!2501003 (= e!1586287 e!1586291)))

(declare-fun res!1057551 () Bool)

(assert (=> b!2501003 (= res!1057551 (not (nullable!2325 (reg!7737 r!27340))))))

(assert (=> b!2501003 (=> (not res!1057551) (not e!1586291))))

(declare-fun b!2501004 () Bool)

(assert (=> b!2501004 (= e!1586289 e!1586287)))

(declare-fun c!397944 () Bool)

(assert (=> b!2501004 (= c!397944 (is-Star!7408 r!27340))))

(declare-fun bm!154478 () Bool)

(declare-fun c!397943 () Bool)

(assert (=> bm!154478 (= call!154483 (validRegex!3034 (ite c!397943 (regTwo!15329 r!27340) (regOne!15328 r!27340))))))

(declare-fun b!2501005 () Bool)

(assert (=> b!2501005 (= e!1586290 call!154482)))

(declare-fun b!2501006 () Bool)

(declare-fun e!1586292 () Bool)

(assert (=> b!2501006 (= e!1586287 e!1586292)))

(assert (=> b!2501006 (= c!397943 (is-Union!7408 r!27340))))

(declare-fun b!2501007 () Bool)

(declare-fun e!1586293 () Bool)

(assert (=> b!2501007 (= e!1586293 call!154483)))

(declare-fun b!2501008 () Bool)

(assert (=> b!2501008 (= e!1586291 call!154484)))

(declare-fun bm!154479 () Bool)

(assert (=> bm!154479 (= call!154484 (validRegex!3034 (ite c!397944 (reg!7737 r!27340) (ite c!397943 (regOne!15329 r!27340) (regTwo!15328 r!27340)))))))

(declare-fun b!2501009 () Bool)

(declare-fun res!1057550 () Bool)

(assert (=> b!2501009 (=> res!1057550 e!1586288)))

(assert (=> b!2501009 (= res!1057550 (not (is-Concat!12104 r!27340)))))

(assert (=> b!2501009 (= e!1586292 e!1586288)))

(declare-fun b!2501010 () Bool)

(declare-fun res!1057548 () Bool)

(assert (=> b!2501010 (=> (not res!1057548) (not e!1586293))))

(assert (=> b!2501010 (= res!1057548 call!154482)))

(assert (=> b!2501010 (= e!1586292 e!1586293)))

(assert (= (and d!715422 (not res!1057552)) b!2501004))

(assert (= (and b!2501004 c!397944) b!2501003))

(assert (= (and b!2501004 (not c!397944)) b!2501006))

(assert (= (and b!2501003 res!1057551) b!2501008))

(assert (= (and b!2501006 c!397943) b!2501010))

(assert (= (and b!2501006 (not c!397943)) b!2501009))

(assert (= (and b!2501010 res!1057548) b!2501007))

(assert (= (and b!2501009 (not res!1057550)) b!2501002))

(assert (= (and b!2501002 res!1057549) b!2501005))

(assert (= (or b!2501010 b!2501005) bm!154477))

(assert (= (or b!2501007 b!2501002) bm!154478))

(assert (= (or b!2501008 bm!154477) bm!154479))

(declare-fun m!2863471 () Bool)

(assert (=> b!2501003 m!2863471))

(declare-fun m!2863473 () Bool)

(assert (=> bm!154478 m!2863473))

(declare-fun m!2863475 () Bool)

(assert (=> bm!154479 m!2863475))

(assert (=> start!244122 d!715422))

(declare-fun d!715424 () Bool)

(assert (=> d!715424 (= (nullable!2325 (regOne!15328 r!27340)) (nullableFct!593 (regOne!15328 r!27340)))))

(declare-fun bs!468569 () Bool)

(assert (= bs!468569 d!715424))

(declare-fun m!2863477 () Bool)

(assert (=> bs!468569 m!2863477))

(assert (=> b!2500817 d!715424))

(declare-fun d!715426 () Bool)

(declare-fun e!1586299 () Bool)

(assert (=> d!715426 e!1586299))

(declare-fun res!1057558 () Bool)

(assert (=> d!715426 (=> res!1057558 e!1586299)))

(assert (=> d!715426 (= res!1057558 (matchR!3411 lt!895607 tl!4068))))

(declare-fun lt!895638 () Unit!43073)

(declare-fun choose!14767 (Regex!7408 Regex!7408 List!29473) Unit!43073)

(assert (=> d!715426 (= lt!895638 (choose!14767 lt!895607 lt!895608 tl!4068))))

(declare-fun e!1586298 () Bool)

(assert (=> d!715426 e!1586298))

(declare-fun res!1057557 () Bool)

(assert (=> d!715426 (=> (not res!1057557) (not e!1586298))))

(assert (=> d!715426 (= res!1057557 (validRegex!3034 lt!895607))))

(assert (=> d!715426 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!103 lt!895607 lt!895608 tl!4068) lt!895638)))

(declare-fun b!2501015 () Bool)

(assert (=> b!2501015 (= e!1586298 (validRegex!3034 lt!895608))))

(declare-fun b!2501016 () Bool)

(assert (=> b!2501016 (= e!1586299 (matchR!3411 lt!895608 tl!4068))))

(assert (= (and d!715426 res!1057557) b!2501015))

(assert (= (and d!715426 (not res!1057558)) b!2501016))

(assert (=> d!715426 m!2863391))

(declare-fun m!2863479 () Bool)

(assert (=> d!715426 m!2863479))

(assert (=> d!715426 m!2863397))

(assert (=> b!2501015 m!2863443))

(assert (=> b!2501016 m!2863379))

(assert (=> b!2500811 d!715426))

(declare-fun d!715428 () Bool)

(declare-fun lt!895639 () Regex!7408)

(assert (=> d!715428 (validRegex!3034 lt!895639)))

(declare-fun e!1586300 () Regex!7408)

(assert (=> d!715428 (= lt!895639 e!1586300)))

(declare-fun c!397945 () Bool)

(assert (=> d!715428 (= c!397945 (is-Cons!29373 tl!4068))))

(assert (=> d!715428 (validRegex!3034 lt!895605)))

(assert (=> d!715428 (= (derivative!103 lt!895605 tl!4068) lt!895639)))

(declare-fun b!2501017 () Bool)

(assert (=> b!2501017 (= e!1586300 (derivative!103 (derivativeStep!1977 lt!895605 (h!34793 tl!4068)) (t!211172 tl!4068)))))

(declare-fun b!2501018 () Bool)

(assert (=> b!2501018 (= e!1586300 lt!895605)))

(assert (= (and d!715428 c!397945) b!2501017))

(assert (= (and d!715428 (not c!397945)) b!2501018))

(declare-fun m!2863481 () Bool)

(assert (=> d!715428 m!2863481))

(declare-fun m!2863483 () Bool)

(assert (=> d!715428 m!2863483))

(declare-fun m!2863485 () Bool)

(assert (=> b!2501017 m!2863485))

(assert (=> b!2501017 m!2863485))

(declare-fun m!2863487 () Bool)

(assert (=> b!2501017 m!2863487))

(assert (=> b!2500811 d!715428))

(declare-fun b!2501019 () Bool)

(declare-fun e!1586307 () Bool)

(declare-fun e!1586304 () Bool)

(assert (=> b!2501019 (= e!1586307 e!1586304)))

(declare-fun res!1057559 () Bool)

(assert (=> b!2501019 (=> res!1057559 e!1586304)))

(declare-fun call!154487 () Bool)

(assert (=> b!2501019 (= res!1057559 call!154487)))

(declare-fun b!2501020 () Bool)

(declare-fun e!1586303 () Bool)

(assert (=> b!2501020 (= e!1586303 (= (head!5697 Nil!29373) (c!397898 (derivative!103 lt!895605 tl!4068))))))

(declare-fun b!2501021 () Bool)

(assert (=> b!2501021 (= e!1586304 (not (= (head!5697 Nil!29373) (c!397898 (derivative!103 lt!895605 tl!4068)))))))

(declare-fun b!2501022 () Bool)

(declare-fun e!1586306 () Bool)

(declare-fun e!1586301 () Bool)

(assert (=> b!2501022 (= e!1586306 e!1586301)))

(declare-fun c!397948 () Bool)

(assert (=> b!2501022 (= c!397948 (is-EmptyLang!7408 (derivative!103 lt!895605 tl!4068)))))

(declare-fun b!2501023 () Bool)

(declare-fun res!1057561 () Bool)

(assert (=> b!2501023 (=> (not res!1057561) (not e!1586303))))

(assert (=> b!2501023 (= res!1057561 (isEmpty!16833 (tail!3974 Nil!29373)))))

(declare-fun b!2501024 () Bool)

(declare-fun res!1057566 () Bool)

(declare-fun e!1586305 () Bool)

(assert (=> b!2501024 (=> res!1057566 e!1586305)))

(assert (=> b!2501024 (= res!1057566 (not (is-ElementMatch!7408 (derivative!103 lt!895605 tl!4068))))))

(assert (=> b!2501024 (= e!1586301 e!1586305)))

(declare-fun d!715430 () Bool)

(assert (=> d!715430 e!1586306))

(declare-fun c!397947 () Bool)

(assert (=> d!715430 (= c!397947 (is-EmptyExpr!7408 (derivative!103 lt!895605 tl!4068)))))

(declare-fun lt!895640 () Bool)

(declare-fun e!1586302 () Bool)

(assert (=> d!715430 (= lt!895640 e!1586302)))

(declare-fun c!397946 () Bool)

(assert (=> d!715430 (= c!397946 (isEmpty!16833 Nil!29373))))

(assert (=> d!715430 (validRegex!3034 (derivative!103 lt!895605 tl!4068))))

(assert (=> d!715430 (= (matchR!3411 (derivative!103 lt!895605 tl!4068) Nil!29373) lt!895640)))

(declare-fun b!2501025 () Bool)

(assert (=> b!2501025 (= e!1586301 (not lt!895640))))

(declare-fun b!2501026 () Bool)

(declare-fun res!1057564 () Bool)

(assert (=> b!2501026 (=> (not res!1057564) (not e!1586303))))

(assert (=> b!2501026 (= res!1057564 (not call!154487))))

(declare-fun b!2501027 () Bool)

(assert (=> b!2501027 (= e!1586305 e!1586307)))

(declare-fun res!1057560 () Bool)

(assert (=> b!2501027 (=> (not res!1057560) (not e!1586307))))

(assert (=> b!2501027 (= res!1057560 (not lt!895640))))

(declare-fun b!2501028 () Bool)

(assert (=> b!2501028 (= e!1586302 (matchR!3411 (derivativeStep!1977 (derivative!103 lt!895605 tl!4068) (head!5697 Nil!29373)) (tail!3974 Nil!29373)))))

(declare-fun b!2501029 () Bool)

(declare-fun res!1057565 () Bool)

(assert (=> b!2501029 (=> res!1057565 e!1586305)))

(assert (=> b!2501029 (= res!1057565 e!1586303)))

(declare-fun res!1057563 () Bool)

(assert (=> b!2501029 (=> (not res!1057563) (not e!1586303))))

(assert (=> b!2501029 (= res!1057563 lt!895640)))

(declare-fun b!2501030 () Bool)

(assert (=> b!2501030 (= e!1586306 (= lt!895640 call!154487))))

(declare-fun bm!154482 () Bool)

(assert (=> bm!154482 (= call!154487 (isEmpty!16833 Nil!29373))))

(declare-fun b!2501031 () Bool)

(assert (=> b!2501031 (= e!1586302 (nullable!2325 (derivative!103 lt!895605 tl!4068)))))

(declare-fun b!2501032 () Bool)

(declare-fun res!1057562 () Bool)

(assert (=> b!2501032 (=> res!1057562 e!1586304)))

(assert (=> b!2501032 (= res!1057562 (not (isEmpty!16833 (tail!3974 Nil!29373))))))

(assert (= (and d!715430 c!397946) b!2501031))

(assert (= (and d!715430 (not c!397946)) b!2501028))

(assert (= (and d!715430 c!397947) b!2501030))

(assert (= (and d!715430 (not c!397947)) b!2501022))

(assert (= (and b!2501022 c!397948) b!2501025))

(assert (= (and b!2501022 (not c!397948)) b!2501024))

(assert (= (and b!2501024 (not res!1057566)) b!2501029))

(assert (= (and b!2501029 res!1057563) b!2501026))

(assert (= (and b!2501026 res!1057564) b!2501023))

(assert (= (and b!2501023 res!1057561) b!2501020))

(assert (= (and b!2501029 (not res!1057565)) b!2501027))

(assert (= (and b!2501027 res!1057560) b!2501019))

(assert (= (and b!2501019 (not res!1057559)) b!2501032))

(assert (= (and b!2501032 (not res!1057562)) b!2501021))

(assert (= (or b!2501030 b!2501019 b!2501026) bm!154482))

(declare-fun m!2863489 () Bool)

(assert (=> b!2501032 m!2863489))

(assert (=> b!2501032 m!2863489))

(declare-fun m!2863491 () Bool)

(assert (=> b!2501032 m!2863491))

(declare-fun m!2863493 () Bool)

(assert (=> b!2501020 m!2863493))

(assert (=> b!2501023 m!2863489))

(assert (=> b!2501023 m!2863489))

(assert (=> b!2501023 m!2863491))

(assert (=> b!2501031 m!2863383))

(declare-fun m!2863495 () Bool)

(assert (=> b!2501031 m!2863495))

(assert (=> b!2501021 m!2863493))

(declare-fun m!2863497 () Bool)

(assert (=> d!715430 m!2863497))

(assert (=> d!715430 m!2863383))

(declare-fun m!2863499 () Bool)

(assert (=> d!715430 m!2863499))

(assert (=> b!2501028 m!2863493))

(assert (=> b!2501028 m!2863383))

(assert (=> b!2501028 m!2863493))

(declare-fun m!2863501 () Bool)

(assert (=> b!2501028 m!2863501))

(assert (=> b!2501028 m!2863489))

(assert (=> b!2501028 m!2863501))

(assert (=> b!2501028 m!2863489))

(declare-fun m!2863503 () Bool)

(assert (=> b!2501028 m!2863503))

(assert (=> bm!154482 m!2863497))

(assert (=> b!2500811 d!715430))

(declare-fun d!715432 () Bool)

(declare-fun res!1057571 () Bool)

(declare-fun e!1586310 () Bool)

(assert (=> d!715432 (=> res!1057571 e!1586310)))

(assert (=> d!715432 (= res!1057571 (is-ElementMatch!7408 lt!895607))))

(assert (=> d!715432 (= (validRegex!3034 lt!895607) e!1586310)))

(declare-fun bm!154483 () Bool)

(declare-fun call!154488 () Bool)

(declare-fun call!154490 () Bool)

(assert (=> bm!154483 (= call!154488 call!154490)))

(declare-fun b!2501033 () Bool)

(declare-fun e!1586309 () Bool)

(declare-fun e!1586311 () Bool)

(assert (=> b!2501033 (= e!1586309 e!1586311)))

(declare-fun res!1057568 () Bool)

(assert (=> b!2501033 (=> (not res!1057568) (not e!1586311))))

(declare-fun call!154489 () Bool)

(assert (=> b!2501033 (= res!1057568 call!154489)))

(declare-fun b!2501034 () Bool)

(declare-fun e!1586308 () Bool)

(declare-fun e!1586312 () Bool)

(assert (=> b!2501034 (= e!1586308 e!1586312)))

(declare-fun res!1057570 () Bool)

(assert (=> b!2501034 (= res!1057570 (not (nullable!2325 (reg!7737 lt!895607))))))

(assert (=> b!2501034 (=> (not res!1057570) (not e!1586312))))

(declare-fun b!2501035 () Bool)

(assert (=> b!2501035 (= e!1586310 e!1586308)))

(declare-fun c!397950 () Bool)

(assert (=> b!2501035 (= c!397950 (is-Star!7408 lt!895607))))

(declare-fun bm!154484 () Bool)

(declare-fun c!397949 () Bool)

(assert (=> bm!154484 (= call!154489 (validRegex!3034 (ite c!397949 (regTwo!15329 lt!895607) (regOne!15328 lt!895607))))))

(declare-fun b!2501036 () Bool)

(assert (=> b!2501036 (= e!1586311 call!154488)))

(declare-fun b!2501037 () Bool)

(declare-fun e!1586313 () Bool)

(assert (=> b!2501037 (= e!1586308 e!1586313)))

(assert (=> b!2501037 (= c!397949 (is-Union!7408 lt!895607))))

(declare-fun b!2501038 () Bool)

(declare-fun e!1586314 () Bool)

(assert (=> b!2501038 (= e!1586314 call!154489)))

(declare-fun b!2501039 () Bool)

(assert (=> b!2501039 (= e!1586312 call!154490)))

(declare-fun bm!154485 () Bool)

(assert (=> bm!154485 (= call!154490 (validRegex!3034 (ite c!397950 (reg!7737 lt!895607) (ite c!397949 (regOne!15329 lt!895607) (regTwo!15328 lt!895607)))))))

(declare-fun b!2501040 () Bool)

(declare-fun res!1057569 () Bool)

(assert (=> b!2501040 (=> res!1057569 e!1586309)))

(assert (=> b!2501040 (= res!1057569 (not (is-Concat!12104 lt!895607)))))

(assert (=> b!2501040 (= e!1586313 e!1586309)))

(declare-fun b!2501041 () Bool)

(declare-fun res!1057567 () Bool)

(assert (=> b!2501041 (=> (not res!1057567) (not e!1586314))))

(assert (=> b!2501041 (= res!1057567 call!154488)))

(assert (=> b!2501041 (= e!1586313 e!1586314)))

(assert (= (and d!715432 (not res!1057571)) b!2501035))

(assert (= (and b!2501035 c!397950) b!2501034))

(assert (= (and b!2501035 (not c!397950)) b!2501037))

(assert (= (and b!2501034 res!1057570) b!2501039))

(assert (= (and b!2501037 c!397949) b!2501041))

(assert (= (and b!2501037 (not c!397949)) b!2501040))

(assert (= (and b!2501041 res!1057567) b!2501038))

(assert (= (and b!2501040 (not res!1057569)) b!2501033))

(assert (= (and b!2501033 res!1057568) b!2501036))

(assert (= (or b!2501041 b!2501036) bm!154483))

(assert (= (or b!2501038 b!2501033) bm!154484))

(assert (= (or b!2501039 bm!154483) bm!154485))

(declare-fun m!2863505 () Bool)

(assert (=> b!2501034 m!2863505))

(declare-fun m!2863507 () Bool)

(assert (=> bm!154484 m!2863507))

(declare-fun m!2863509 () Bool)

(assert (=> bm!154485 m!2863509))

(assert (=> b!2500811 d!715432))

(declare-fun d!715434 () Bool)

(assert (=> d!715434 (= (matchR!3411 lt!895605 tl!4068) (matchR!3411 (derivative!103 lt!895605 tl!4068) Nil!29373))))

(declare-fun lt!895643 () Unit!43073)

(declare-fun choose!14768 (Regex!7408 List!29473) Unit!43073)

(assert (=> d!715434 (= lt!895643 (choose!14768 lt!895605 tl!4068))))

(assert (=> d!715434 (validRegex!3034 lt!895605)))

(assert (=> d!715434 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!57 lt!895605 tl!4068) lt!895643)))

(declare-fun bs!468570 () Bool)

(assert (= bs!468570 d!715434))

(assert (=> bs!468570 m!2863383))

(assert (=> bs!468570 m!2863387))

(declare-fun m!2863511 () Bool)

(assert (=> bs!468570 m!2863511))

(assert (=> bs!468570 m!2863381))

(assert (=> bs!468570 m!2863483))

(assert (=> bs!468570 m!2863383))

(assert (=> b!2500811 d!715434))

(declare-fun d!715436 () Bool)

(declare-fun lt!895644 () Regex!7408)

(assert (=> d!715436 (validRegex!3034 lt!895644)))

(declare-fun e!1586316 () Regex!7408)

(assert (=> d!715436 (= lt!895644 e!1586316)))

(declare-fun c!397954 () Bool)

(assert (=> d!715436 (= c!397954 (or (is-EmptyExpr!7408 (regTwo!15328 r!27340)) (is-EmptyLang!7408 (regTwo!15328 r!27340))))))

(assert (=> d!715436 (validRegex!3034 (regTwo!15328 r!27340))))

(assert (=> d!715436 (= (derivativeStep!1977 (regTwo!15328 r!27340) c!14016) lt!895644)))

(declare-fun b!2501042 () Bool)

(declare-fun e!1586315 () Regex!7408)

(declare-fun e!1586317 () Regex!7408)

(assert (=> b!2501042 (= e!1586315 e!1586317)))

(declare-fun c!397953 () Bool)

(assert (=> b!2501042 (= c!397953 (is-Star!7408 (regTwo!15328 r!27340)))))

(declare-fun b!2501043 () Bool)

(declare-fun c!397955 () Bool)

(assert (=> b!2501043 (= c!397955 (nullable!2325 (regOne!15328 (regTwo!15328 r!27340))))))

(declare-fun e!1586319 () Regex!7408)

(assert (=> b!2501043 (= e!1586317 e!1586319)))

(declare-fun b!2501044 () Bool)

(assert (=> b!2501044 (= e!1586316 EmptyLang!7408)))

(declare-fun b!2501045 () Bool)

(declare-fun c!397952 () Bool)

(assert (=> b!2501045 (= c!397952 (is-Union!7408 (regTwo!15328 r!27340)))))

(declare-fun e!1586318 () Regex!7408)

(assert (=> b!2501045 (= e!1586318 e!1586315)))

(declare-fun b!2501046 () Bool)

(declare-fun call!154494 () Regex!7408)

(declare-fun call!154491 () Regex!7408)

(assert (=> b!2501046 (= e!1586319 (Union!7408 (Concat!12104 call!154494 (regTwo!15328 (regTwo!15328 r!27340))) call!154491))))

(declare-fun call!154492 () Regex!7408)

(declare-fun bm!154486 () Bool)

(assert (=> bm!154486 (= call!154492 (derivativeStep!1977 (ite c!397952 (regTwo!15329 (regTwo!15328 r!27340)) (ite c!397953 (reg!7737 (regTwo!15328 r!27340)) (regOne!15328 (regTwo!15328 r!27340)))) c!14016))))

(declare-fun b!2501047 () Bool)

(declare-fun call!154493 () Regex!7408)

(assert (=> b!2501047 (= e!1586317 (Concat!12104 call!154493 (regTwo!15328 r!27340)))))

(declare-fun bm!154487 () Bool)

(assert (=> bm!154487 (= call!154493 call!154492)))

(declare-fun bm!154488 () Bool)

(assert (=> bm!154488 (= call!154494 call!154493)))

(declare-fun b!2501048 () Bool)

(assert (=> b!2501048 (= e!1586318 (ite (= c!14016 (c!397898 (regTwo!15328 r!27340))) EmptyExpr!7408 EmptyLang!7408))))

(declare-fun bm!154489 () Bool)

(assert (=> bm!154489 (= call!154491 (derivativeStep!1977 (ite c!397952 (regOne!15329 (regTwo!15328 r!27340)) (regTwo!15328 (regTwo!15328 r!27340))) c!14016))))

(declare-fun b!2501049 () Bool)

(assert (=> b!2501049 (= e!1586316 e!1586318)))

(declare-fun c!397951 () Bool)

(assert (=> b!2501049 (= c!397951 (is-ElementMatch!7408 (regTwo!15328 r!27340)))))

(declare-fun b!2501050 () Bool)

(assert (=> b!2501050 (= e!1586319 (Union!7408 (Concat!12104 call!154494 (regTwo!15328 (regTwo!15328 r!27340))) EmptyLang!7408))))

(declare-fun b!2501051 () Bool)

(assert (=> b!2501051 (= e!1586315 (Union!7408 call!154491 call!154492))))

(assert (= (and d!715436 c!397954) b!2501044))

(assert (= (and d!715436 (not c!397954)) b!2501049))

(assert (= (and b!2501049 c!397951) b!2501048))

(assert (= (and b!2501049 (not c!397951)) b!2501045))

(assert (= (and b!2501045 c!397952) b!2501051))

(assert (= (and b!2501045 (not c!397952)) b!2501042))

(assert (= (and b!2501042 c!397953) b!2501047))

(assert (= (and b!2501042 (not c!397953)) b!2501043))

(assert (= (and b!2501043 c!397955) b!2501046))

(assert (= (and b!2501043 (not c!397955)) b!2501050))

(assert (= (or b!2501046 b!2501050) bm!154488))

(assert (= (or b!2501047 bm!154488) bm!154487))

(assert (= (or b!2501051 bm!154487) bm!154486))

(assert (= (or b!2501051 b!2501046) bm!154489))

(declare-fun m!2863513 () Bool)

(assert (=> d!715436 m!2863513))

(declare-fun m!2863515 () Bool)

(assert (=> d!715436 m!2863515))

(declare-fun m!2863517 () Bool)

(assert (=> b!2501043 m!2863517))

(declare-fun m!2863519 () Bool)

(assert (=> bm!154486 m!2863519))

(declare-fun m!2863521 () Bool)

(assert (=> bm!154489 m!2863521))

(assert (=> b!2500811 d!715436))

(declare-fun d!715438 () Bool)

(declare-fun lt!895646 () Regex!7408)

(assert (=> d!715438 (validRegex!3034 lt!895646)))

(declare-fun e!1586328 () Regex!7408)

(assert (=> d!715438 (= lt!895646 e!1586328)))

(declare-fun c!397962 () Bool)

(assert (=> d!715438 (= c!397962 (or (is-EmptyExpr!7408 (regOne!15328 r!27340)) (is-EmptyLang!7408 (regOne!15328 r!27340))))))

(assert (=> d!715438 (validRegex!3034 (regOne!15328 r!27340))))

(assert (=> d!715438 (= (derivativeStep!1977 (regOne!15328 r!27340) c!14016) lt!895646)))

(declare-fun b!2501066 () Bool)

(declare-fun e!1586327 () Regex!7408)

(declare-fun e!1586329 () Regex!7408)

(assert (=> b!2501066 (= e!1586327 e!1586329)))

(declare-fun c!397961 () Bool)

(assert (=> b!2501066 (= c!397961 (is-Star!7408 (regOne!15328 r!27340)))))

(declare-fun b!2501067 () Bool)

(declare-fun c!397963 () Bool)

(assert (=> b!2501067 (= c!397963 (nullable!2325 (regOne!15328 (regOne!15328 r!27340))))))

(declare-fun e!1586331 () Regex!7408)

(assert (=> b!2501067 (= e!1586329 e!1586331)))

(declare-fun b!2501068 () Bool)

(assert (=> b!2501068 (= e!1586328 EmptyLang!7408)))

(declare-fun b!2501069 () Bool)

(declare-fun c!397960 () Bool)

(assert (=> b!2501069 (= c!397960 (is-Union!7408 (regOne!15328 r!27340)))))

(declare-fun e!1586330 () Regex!7408)

(assert (=> b!2501069 (= e!1586330 e!1586327)))

(declare-fun b!2501070 () Bool)

(declare-fun call!154499 () Regex!7408)

(declare-fun call!154496 () Regex!7408)

(assert (=> b!2501070 (= e!1586331 (Union!7408 (Concat!12104 call!154499 (regTwo!15328 (regOne!15328 r!27340))) call!154496))))

(declare-fun call!154497 () Regex!7408)

(declare-fun bm!154491 () Bool)

(assert (=> bm!154491 (= call!154497 (derivativeStep!1977 (ite c!397960 (regTwo!15329 (regOne!15328 r!27340)) (ite c!397961 (reg!7737 (regOne!15328 r!27340)) (regOne!15328 (regOne!15328 r!27340)))) c!14016))))

(declare-fun b!2501071 () Bool)

(declare-fun call!154498 () Regex!7408)

(assert (=> b!2501071 (= e!1586329 (Concat!12104 call!154498 (regOne!15328 r!27340)))))

(declare-fun bm!154492 () Bool)

(assert (=> bm!154492 (= call!154498 call!154497)))

(declare-fun bm!154493 () Bool)

(assert (=> bm!154493 (= call!154499 call!154498)))

(declare-fun b!2501072 () Bool)

(assert (=> b!2501072 (= e!1586330 (ite (= c!14016 (c!397898 (regOne!15328 r!27340))) EmptyExpr!7408 EmptyLang!7408))))

(declare-fun bm!154494 () Bool)

(assert (=> bm!154494 (= call!154496 (derivativeStep!1977 (ite c!397960 (regOne!15329 (regOne!15328 r!27340)) (regTwo!15328 (regOne!15328 r!27340))) c!14016))))

(declare-fun b!2501073 () Bool)

(assert (=> b!2501073 (= e!1586328 e!1586330)))

(declare-fun c!397959 () Bool)

(assert (=> b!2501073 (= c!397959 (is-ElementMatch!7408 (regOne!15328 r!27340)))))

(declare-fun b!2501074 () Bool)

(assert (=> b!2501074 (= e!1586331 (Union!7408 (Concat!12104 call!154499 (regTwo!15328 (regOne!15328 r!27340))) EmptyLang!7408))))

(declare-fun b!2501075 () Bool)

(assert (=> b!2501075 (= e!1586327 (Union!7408 call!154496 call!154497))))

(assert (= (and d!715438 c!397962) b!2501068))

(assert (= (and d!715438 (not c!397962)) b!2501073))

(assert (= (and b!2501073 c!397959) b!2501072))

(assert (= (and b!2501073 (not c!397959)) b!2501069))

(assert (= (and b!2501069 c!397960) b!2501075))

(assert (= (and b!2501069 (not c!397960)) b!2501066))

(assert (= (and b!2501066 c!397961) b!2501071))

(assert (= (and b!2501066 (not c!397961)) b!2501067))

(assert (= (and b!2501067 c!397963) b!2501070))

(assert (= (and b!2501067 (not c!397963)) b!2501074))

(assert (= (or b!2501070 b!2501074) bm!154493))

(assert (= (or b!2501071 bm!154493) bm!154492))

(assert (= (or b!2501075 bm!154492) bm!154491))

(assert (= (or b!2501075 b!2501070) bm!154494))

(declare-fun m!2863523 () Bool)

(assert (=> d!715438 m!2863523))

(declare-fun m!2863525 () Bool)

(assert (=> d!715438 m!2863525))

(declare-fun m!2863527 () Bool)

(assert (=> b!2501067 m!2863527))

(declare-fun m!2863529 () Bool)

(assert (=> bm!154491 m!2863529))

(declare-fun m!2863531 () Bool)

(assert (=> bm!154494 m!2863531))

(assert (=> b!2500811 d!715438))

(declare-fun b!2501076 () Bool)

(declare-fun e!1586338 () Bool)

(declare-fun e!1586335 () Bool)

(assert (=> b!2501076 (= e!1586338 e!1586335)))

(declare-fun res!1057580 () Bool)

(assert (=> b!2501076 (=> res!1057580 e!1586335)))

(declare-fun call!154500 () Bool)

(assert (=> b!2501076 (= res!1057580 call!154500)))

(declare-fun b!2501077 () Bool)

(declare-fun e!1586334 () Bool)

(assert (=> b!2501077 (= e!1586334 (= (head!5697 tl!4068) (c!397898 lt!895607)))))

(declare-fun b!2501078 () Bool)

(assert (=> b!2501078 (= e!1586335 (not (= (head!5697 tl!4068) (c!397898 lt!895607))))))

(declare-fun b!2501079 () Bool)

(declare-fun e!1586337 () Bool)

(declare-fun e!1586332 () Bool)

(assert (=> b!2501079 (= e!1586337 e!1586332)))

(declare-fun c!397966 () Bool)

(assert (=> b!2501079 (= c!397966 (is-EmptyLang!7408 lt!895607))))

(declare-fun b!2501080 () Bool)

(declare-fun res!1057582 () Bool)

(assert (=> b!2501080 (=> (not res!1057582) (not e!1586334))))

(assert (=> b!2501080 (= res!1057582 (isEmpty!16833 (tail!3974 tl!4068)))))

(declare-fun b!2501081 () Bool)

(declare-fun res!1057587 () Bool)

(declare-fun e!1586336 () Bool)

(assert (=> b!2501081 (=> res!1057587 e!1586336)))

(assert (=> b!2501081 (= res!1057587 (not (is-ElementMatch!7408 lt!895607)))))

(assert (=> b!2501081 (= e!1586332 e!1586336)))

(declare-fun d!715440 () Bool)

(assert (=> d!715440 e!1586337))

(declare-fun c!397965 () Bool)

(assert (=> d!715440 (= c!397965 (is-EmptyExpr!7408 lt!895607))))

(declare-fun lt!895647 () Bool)

(declare-fun e!1586333 () Bool)

(assert (=> d!715440 (= lt!895647 e!1586333)))

(declare-fun c!397964 () Bool)

(assert (=> d!715440 (= c!397964 (isEmpty!16833 tl!4068))))

(assert (=> d!715440 (validRegex!3034 lt!895607)))

(assert (=> d!715440 (= (matchR!3411 lt!895607 tl!4068) lt!895647)))

(declare-fun b!2501082 () Bool)

(assert (=> b!2501082 (= e!1586332 (not lt!895647))))

(declare-fun b!2501083 () Bool)

(declare-fun res!1057585 () Bool)

(assert (=> b!2501083 (=> (not res!1057585) (not e!1586334))))

(assert (=> b!2501083 (= res!1057585 (not call!154500))))

(declare-fun b!2501084 () Bool)

(assert (=> b!2501084 (= e!1586336 e!1586338)))

(declare-fun res!1057581 () Bool)

(assert (=> b!2501084 (=> (not res!1057581) (not e!1586338))))

(assert (=> b!2501084 (= res!1057581 (not lt!895647))))

(declare-fun b!2501085 () Bool)

(assert (=> b!2501085 (= e!1586333 (matchR!3411 (derivativeStep!1977 lt!895607 (head!5697 tl!4068)) (tail!3974 tl!4068)))))

(declare-fun b!2501086 () Bool)

(declare-fun res!1057586 () Bool)

(assert (=> b!2501086 (=> res!1057586 e!1586336)))

(assert (=> b!2501086 (= res!1057586 e!1586334)))

(declare-fun res!1057584 () Bool)

(assert (=> b!2501086 (=> (not res!1057584) (not e!1586334))))

(assert (=> b!2501086 (= res!1057584 lt!895647)))

(declare-fun b!2501087 () Bool)

(assert (=> b!2501087 (= e!1586337 (= lt!895647 call!154500))))

(declare-fun bm!154495 () Bool)

(assert (=> bm!154495 (= call!154500 (isEmpty!16833 tl!4068))))

(declare-fun b!2501088 () Bool)

(assert (=> b!2501088 (= e!1586333 (nullable!2325 lt!895607))))

(declare-fun b!2501089 () Bool)

(declare-fun res!1057583 () Bool)

(assert (=> b!2501089 (=> res!1057583 e!1586335)))

(assert (=> b!2501089 (= res!1057583 (not (isEmpty!16833 (tail!3974 tl!4068))))))

(assert (= (and d!715440 c!397964) b!2501088))

(assert (= (and d!715440 (not c!397964)) b!2501085))

(assert (= (and d!715440 c!397965) b!2501087))

(assert (= (and d!715440 (not c!397965)) b!2501079))

(assert (= (and b!2501079 c!397966) b!2501082))

(assert (= (and b!2501079 (not c!397966)) b!2501081))

(assert (= (and b!2501081 (not res!1057587)) b!2501086))

(assert (= (and b!2501086 res!1057584) b!2501083))

(assert (= (and b!2501083 res!1057585) b!2501080))

(assert (= (and b!2501080 res!1057582) b!2501077))

(assert (= (and b!2501086 (not res!1057586)) b!2501084))

(assert (= (and b!2501084 res!1057581) b!2501076))

(assert (= (and b!2501076 (not res!1057580)) b!2501089))

(assert (= (and b!2501089 (not res!1057583)) b!2501078))

(assert (= (or b!2501087 b!2501076 b!2501083) bm!154495))

(assert (=> b!2501089 m!2863433))

(assert (=> b!2501089 m!2863433))

(assert (=> b!2501089 m!2863435))

(assert (=> b!2501077 m!2863437))

(assert (=> b!2501080 m!2863433))

(assert (=> b!2501080 m!2863433))

(assert (=> b!2501080 m!2863435))

(declare-fun m!2863543 () Bool)

(assert (=> b!2501088 m!2863543))

(assert (=> b!2501078 m!2863437))

(assert (=> d!715440 m!2863441))

(assert (=> d!715440 m!2863397))

(assert (=> b!2501085 m!2863437))

(assert (=> b!2501085 m!2863437))

(declare-fun m!2863547 () Bool)

(assert (=> b!2501085 m!2863547))

(assert (=> b!2501085 m!2863433))

(assert (=> b!2501085 m!2863547))

(assert (=> b!2501085 m!2863433))

(declare-fun m!2863549 () Bool)

(assert (=> b!2501085 m!2863549))

(assert (=> bm!154495 m!2863441))

(assert (=> b!2500811 d!715440))

(declare-fun b!2501090 () Bool)

(declare-fun e!1586345 () Bool)

(declare-fun e!1586342 () Bool)

(assert (=> b!2501090 (= e!1586345 e!1586342)))

(declare-fun res!1057588 () Bool)

(assert (=> b!2501090 (=> res!1057588 e!1586342)))

(declare-fun call!154501 () Bool)

(assert (=> b!2501090 (= res!1057588 call!154501)))

(declare-fun b!2501091 () Bool)

(declare-fun e!1586341 () Bool)

(assert (=> b!2501091 (= e!1586341 (= (head!5697 tl!4068) (c!397898 lt!895605)))))

(declare-fun b!2501092 () Bool)

(assert (=> b!2501092 (= e!1586342 (not (= (head!5697 tl!4068) (c!397898 lt!895605))))))

(declare-fun b!2501093 () Bool)

(declare-fun e!1586344 () Bool)

(declare-fun e!1586339 () Bool)

(assert (=> b!2501093 (= e!1586344 e!1586339)))

(declare-fun c!397969 () Bool)

(assert (=> b!2501093 (= c!397969 (is-EmptyLang!7408 lt!895605))))

(declare-fun b!2501094 () Bool)

(declare-fun res!1057590 () Bool)

(assert (=> b!2501094 (=> (not res!1057590) (not e!1586341))))

(assert (=> b!2501094 (= res!1057590 (isEmpty!16833 (tail!3974 tl!4068)))))

(declare-fun b!2501095 () Bool)

(declare-fun res!1057595 () Bool)

(declare-fun e!1586343 () Bool)

(assert (=> b!2501095 (=> res!1057595 e!1586343)))

(assert (=> b!2501095 (= res!1057595 (not (is-ElementMatch!7408 lt!895605)))))

(assert (=> b!2501095 (= e!1586339 e!1586343)))

(declare-fun d!715442 () Bool)

(assert (=> d!715442 e!1586344))

(declare-fun c!397968 () Bool)

(assert (=> d!715442 (= c!397968 (is-EmptyExpr!7408 lt!895605))))

(declare-fun lt!895648 () Bool)

(declare-fun e!1586340 () Bool)

(assert (=> d!715442 (= lt!895648 e!1586340)))

(declare-fun c!397967 () Bool)

(assert (=> d!715442 (= c!397967 (isEmpty!16833 tl!4068))))

(assert (=> d!715442 (validRegex!3034 lt!895605)))

(assert (=> d!715442 (= (matchR!3411 lt!895605 tl!4068) lt!895648)))

(declare-fun b!2501096 () Bool)

(assert (=> b!2501096 (= e!1586339 (not lt!895648))))

(declare-fun b!2501097 () Bool)

(declare-fun res!1057593 () Bool)

(assert (=> b!2501097 (=> (not res!1057593) (not e!1586341))))

(assert (=> b!2501097 (= res!1057593 (not call!154501))))

(declare-fun b!2501098 () Bool)

(assert (=> b!2501098 (= e!1586343 e!1586345)))

(declare-fun res!1057589 () Bool)

(assert (=> b!2501098 (=> (not res!1057589) (not e!1586345))))

(assert (=> b!2501098 (= res!1057589 (not lt!895648))))

(declare-fun b!2501099 () Bool)

(assert (=> b!2501099 (= e!1586340 (matchR!3411 (derivativeStep!1977 lt!895605 (head!5697 tl!4068)) (tail!3974 tl!4068)))))

(declare-fun b!2501100 () Bool)

(declare-fun res!1057594 () Bool)

(assert (=> b!2501100 (=> res!1057594 e!1586343)))

(assert (=> b!2501100 (= res!1057594 e!1586341)))

(declare-fun res!1057592 () Bool)

(assert (=> b!2501100 (=> (not res!1057592) (not e!1586341))))

(assert (=> b!2501100 (= res!1057592 lt!895648)))

(declare-fun b!2501101 () Bool)

(assert (=> b!2501101 (= e!1586344 (= lt!895648 call!154501))))

(declare-fun bm!154496 () Bool)

(assert (=> bm!154496 (= call!154501 (isEmpty!16833 tl!4068))))

(declare-fun b!2501102 () Bool)

(assert (=> b!2501102 (= e!1586340 (nullable!2325 lt!895605))))

(declare-fun b!2501103 () Bool)

(declare-fun res!1057591 () Bool)

(assert (=> b!2501103 (=> res!1057591 e!1586342)))

(assert (=> b!2501103 (= res!1057591 (not (isEmpty!16833 (tail!3974 tl!4068))))))

(assert (= (and d!715442 c!397967) b!2501102))

(assert (= (and d!715442 (not c!397967)) b!2501099))

(assert (= (and d!715442 c!397968) b!2501101))

(assert (= (and d!715442 (not c!397968)) b!2501093))

(assert (= (and b!2501093 c!397969) b!2501096))

(assert (= (and b!2501093 (not c!397969)) b!2501095))

(assert (= (and b!2501095 (not res!1057595)) b!2501100))

(assert (= (and b!2501100 res!1057592) b!2501097))

(assert (= (and b!2501097 res!1057593) b!2501094))

(assert (= (and b!2501094 res!1057590) b!2501091))

(assert (= (and b!2501100 (not res!1057594)) b!2501098))

(assert (= (and b!2501098 res!1057589) b!2501090))

(assert (= (and b!2501090 (not res!1057588)) b!2501103))

(assert (= (and b!2501103 (not res!1057591)) b!2501092))

(assert (= (or b!2501101 b!2501090 b!2501097) bm!154496))

(assert (=> b!2501103 m!2863433))

(assert (=> b!2501103 m!2863433))

(assert (=> b!2501103 m!2863435))

(assert (=> b!2501091 m!2863437))

(assert (=> b!2501094 m!2863433))

(assert (=> b!2501094 m!2863433))

(assert (=> b!2501094 m!2863435))

(declare-fun m!2863555 () Bool)

(assert (=> b!2501102 m!2863555))

(assert (=> b!2501092 m!2863437))

(assert (=> d!715442 m!2863441))

(assert (=> d!715442 m!2863483))

(assert (=> b!2501099 m!2863437))

(assert (=> b!2501099 m!2863437))

(declare-fun m!2863557 () Bool)

(assert (=> b!2501099 m!2863557))

(assert (=> b!2501099 m!2863433))

(assert (=> b!2501099 m!2863557))

(assert (=> b!2501099 m!2863433))

(declare-fun m!2863559 () Bool)

(assert (=> b!2501099 m!2863559))

(assert (=> bm!154496 m!2863441))

(assert (=> b!2500811 d!715442))

(declare-fun b!2501108 () Bool)

(declare-fun e!1586348 () Bool)

(declare-fun tp!800729 () Bool)

(assert (=> b!2501108 (= e!1586348 (and tp_is_empty!12671 tp!800729))))

(assert (=> b!2500814 (= tp!800707 e!1586348)))

(assert (= (and b!2500814 (is-Cons!29373 (t!211172 tl!4068))) b!2501108))

(declare-fun b!2501120 () Bool)

(declare-fun e!1586351 () Bool)

(declare-fun tp!800743 () Bool)

(declare-fun tp!800742 () Bool)

(assert (=> b!2501120 (= e!1586351 (and tp!800743 tp!800742))))

(assert (=> b!2500820 (= tp!800705 e!1586351)))

(declare-fun b!2501121 () Bool)

(declare-fun tp!800741 () Bool)

(assert (=> b!2501121 (= e!1586351 tp!800741)))

(declare-fun b!2501122 () Bool)

(declare-fun tp!800740 () Bool)

(declare-fun tp!800744 () Bool)

(assert (=> b!2501122 (= e!1586351 (and tp!800740 tp!800744))))

(declare-fun b!2501119 () Bool)

(assert (=> b!2501119 (= e!1586351 tp_is_empty!12671)))

(assert (= (and b!2500820 (is-ElementMatch!7408 (regOne!15328 r!27340))) b!2501119))

(assert (= (and b!2500820 (is-Concat!12104 (regOne!15328 r!27340))) b!2501120))

(assert (= (and b!2500820 (is-Star!7408 (regOne!15328 r!27340))) b!2501121))

(assert (= (and b!2500820 (is-Union!7408 (regOne!15328 r!27340))) b!2501122))

(declare-fun b!2501124 () Bool)

(declare-fun e!1586352 () Bool)

(declare-fun tp!800748 () Bool)

(declare-fun tp!800747 () Bool)

(assert (=> b!2501124 (= e!1586352 (and tp!800748 tp!800747))))

(assert (=> b!2500820 (= tp!800708 e!1586352)))

(declare-fun b!2501125 () Bool)

(declare-fun tp!800746 () Bool)

(assert (=> b!2501125 (= e!1586352 tp!800746)))

(declare-fun b!2501126 () Bool)

(declare-fun tp!800745 () Bool)

(declare-fun tp!800749 () Bool)

(assert (=> b!2501126 (= e!1586352 (and tp!800745 tp!800749))))

(declare-fun b!2501123 () Bool)

(assert (=> b!2501123 (= e!1586352 tp_is_empty!12671)))

(assert (= (and b!2500820 (is-ElementMatch!7408 (regTwo!15328 r!27340))) b!2501123))

(assert (= (and b!2500820 (is-Concat!12104 (regTwo!15328 r!27340))) b!2501124))

(assert (= (and b!2500820 (is-Star!7408 (regTwo!15328 r!27340))) b!2501125))

(assert (= (and b!2500820 (is-Union!7408 (regTwo!15328 r!27340))) b!2501126))

(declare-fun b!2501128 () Bool)

(declare-fun e!1586353 () Bool)

(declare-fun tp!800753 () Bool)

(declare-fun tp!800752 () Bool)

(assert (=> b!2501128 (= e!1586353 (and tp!800753 tp!800752))))

(assert (=> b!2500812 (= tp!800703 e!1586353)))

(declare-fun b!2501129 () Bool)

(declare-fun tp!800751 () Bool)

(assert (=> b!2501129 (= e!1586353 tp!800751)))

(declare-fun b!2501130 () Bool)

(declare-fun tp!800750 () Bool)

(declare-fun tp!800754 () Bool)

(assert (=> b!2501130 (= e!1586353 (and tp!800750 tp!800754))))

(declare-fun b!2501127 () Bool)

(assert (=> b!2501127 (= e!1586353 tp_is_empty!12671)))

(assert (= (and b!2500812 (is-ElementMatch!7408 (regOne!15329 r!27340))) b!2501127))

(assert (= (and b!2500812 (is-Concat!12104 (regOne!15329 r!27340))) b!2501128))

(assert (= (and b!2500812 (is-Star!7408 (regOne!15329 r!27340))) b!2501129))

(assert (= (and b!2500812 (is-Union!7408 (regOne!15329 r!27340))) b!2501130))

(declare-fun b!2501132 () Bool)

(declare-fun e!1586354 () Bool)

(declare-fun tp!800758 () Bool)

(declare-fun tp!800757 () Bool)

(assert (=> b!2501132 (= e!1586354 (and tp!800758 tp!800757))))

(assert (=> b!2500812 (= tp!800704 e!1586354)))

(declare-fun b!2501133 () Bool)

(declare-fun tp!800756 () Bool)

(assert (=> b!2501133 (= e!1586354 tp!800756)))

(declare-fun b!2501134 () Bool)

(declare-fun tp!800755 () Bool)

(declare-fun tp!800759 () Bool)

(assert (=> b!2501134 (= e!1586354 (and tp!800755 tp!800759))))

(declare-fun b!2501131 () Bool)

(assert (=> b!2501131 (= e!1586354 tp_is_empty!12671)))

(assert (= (and b!2500812 (is-ElementMatch!7408 (regTwo!15329 r!27340))) b!2501131))

(assert (= (and b!2500812 (is-Concat!12104 (regTwo!15329 r!27340))) b!2501132))

(assert (= (and b!2500812 (is-Star!7408 (regTwo!15329 r!27340))) b!2501133))

(assert (= (and b!2500812 (is-Union!7408 (regTwo!15329 r!27340))) b!2501134))

(declare-fun b!2501136 () Bool)

(declare-fun e!1586355 () Bool)

(declare-fun tp!800763 () Bool)

(declare-fun tp!800762 () Bool)

(assert (=> b!2501136 (= e!1586355 (and tp!800763 tp!800762))))

(assert (=> b!2500816 (= tp!800706 e!1586355)))

(declare-fun b!2501137 () Bool)

(declare-fun tp!800761 () Bool)

(assert (=> b!2501137 (= e!1586355 tp!800761)))

(declare-fun b!2501138 () Bool)

(declare-fun tp!800760 () Bool)

(declare-fun tp!800764 () Bool)

(assert (=> b!2501138 (= e!1586355 (and tp!800760 tp!800764))))

(declare-fun b!2501135 () Bool)

(assert (=> b!2501135 (= e!1586355 tp_is_empty!12671)))

(assert (= (and b!2500816 (is-ElementMatch!7408 (reg!7737 r!27340))) b!2501135))

(assert (= (and b!2500816 (is-Concat!12104 (reg!7737 r!27340))) b!2501136))

(assert (= (and b!2500816 (is-Star!7408 (reg!7737 r!27340))) b!2501137))

(assert (= (and b!2500816 (is-Union!7408 (reg!7737 r!27340))) b!2501138))

(push 1)

(assert (not b!2501130))

(assert (not bm!154455))

(assert (not d!715418))

(assert (not b!2501136))

(assert (not b!2501122))

(assert (not b!2501126))

(assert (not bm!154491))

(assert (not bm!154496))

(assert (not b!2501077))

(assert (not bm!154494))

(assert (not d!715428))

(assert (not b!2501028))

(assert (not b!2501088))

(assert (not b!2501085))

(assert (not b!2501128))

(assert (not b!2501137))

(assert (not b!2501034))

(assert (not d!715416))

(assert (not d!715438))

(assert (not d!715414))

(assert (not b!2501102))

(assert (not b!2501021))

(assert (not b!2501094))

(assert (not b!2501092))

(assert (not bm!154479))

(assert (not b!2501032))

(assert (not b!2501003))

(assert tp_is_empty!12671)

(assert (not bm!154486))

(assert (not b!2501015))

(assert (not d!715440))

(assert (not b!2500909))

(assert (not b!2501031))

(assert (not b!2501017))

(assert (not bm!154495))

(assert (not b!2501129))

(assert (not b!2501078))

(assert (not d!715436))

(assert (not b!2501125))

(assert (not d!715430))

(assert (not bm!154482))

(assert (not b!2501099))

(assert (not b!2501138))

(assert (not b!2501124))

(assert (not b!2501067))

(assert (not b!2500906))

(assert (not d!715426))

(assert (not b!2501133))

(assert (not b!2500899))

(assert (not b!2501120))

(assert (not b!2501043))

(assert (not b!2501016))

(assert (not bm!154489))

(assert (not bm!154478))

(assert (not b!2500910))

(assert (not bm!154470))

(assert (not d!715442))

(assert (not bm!154484))

(assert (not bm!154485))

(assert (not b!2501023))

(assert (not d!715410))

(assert (not b!2501089))

(assert (not b!2501091))

(assert (not b!2501080))

(assert (not b!2501108))

(assert (not b!2501103))

(assert (not b!2500898))

(assert (not b!2500901))

(assert (not d!715434))

(assert (not b!2501020))

(assert (not b!2500947))

(assert (not bm!154467))

(assert (not d!715424))

(assert (not b!2501134))

(assert (not b!2500915))

(assert (not b!2501132))

(assert (not b!2501121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

