; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666880 () Bool)

(assert start!666880)

(declare-fun b!6946903 () Bool)

(assert (=> b!6946903 true))

(assert (=> b!6946903 true))

(declare-fun b!6946894 () Bool)

(declare-fun e!4178437 () Bool)

(declare-fun tp_is_empty!43213 () Bool)

(assert (=> b!6946894 (= e!4178437 tp_is_empty!43213)))

(declare-fun res!2834000 () Bool)

(declare-fun e!4178439 () Bool)

(assert (=> start!666880 (=> (not res!2834000) (not e!4178439))))

(declare-datatypes ((C!34258 0))(
  ( (C!34259 (val!26831 Int)) )
))
(declare-datatypes ((Regex!16994 0))(
  ( (ElementMatch!16994 (c!1288772 C!34258)) (Concat!25839 (regOne!34500 Regex!16994) (regTwo!34500 Regex!16994)) (EmptyExpr!16994) (Star!16994 (reg!17323 Regex!16994)) (EmptyLang!16994) (Union!16994 (regOne!34501 Regex!16994) (regTwo!34501 Regex!16994)) )
))
(declare-fun rInner!765 () Regex!16994)

(declare-fun validRegex!8700 (Regex!16994) Bool)

(assert (=> start!666880 (= res!2834000 (validRegex!8700 rInner!765))))

(assert (=> start!666880 e!4178439))

(assert (=> start!666880 e!4178437))

(declare-fun e!4178441 () Bool)

(assert (=> start!666880 e!4178441))

(declare-fun b!6946895 () Bool)

(declare-fun tp!1914970 () Bool)

(assert (=> b!6946895 (= e!4178437 tp!1914970)))

(declare-fun b!6946896 () Bool)

(declare-fun e!4178438 () Bool)

(assert (=> b!6946896 (= e!4178439 e!4178438)))

(declare-fun res!2834002 () Bool)

(assert (=> b!6946896 (=> (not res!2834002) (not e!4178438))))

(declare-datatypes ((List!66747 0))(
  ( (Nil!66623) (Cons!66623 (h!73071 C!34258) (t!380490 List!66747)) )
))
(declare-datatypes ((tuple2!67698 0))(
  ( (tuple2!67699 (_1!37152 List!66747) (_2!37152 List!66747)) )
))
(declare-fun lt!2477432 () tuple2!67698)

(declare-fun s!10388 () List!66747)

(declare-fun ++!15031 (List!66747 List!66747) List!66747)

(assert (=> b!6946896 (= res!2834002 (= (++!15031 (_1!37152 lt!2477432) (_2!37152 lt!2477432)) s!10388))))

(declare-fun lambda!396123 () Int)

(declare-fun pickWitness!339 (Int) tuple2!67698)

(assert (=> b!6946896 (= lt!2477432 (pickWitness!339 lambda!396123))))

(declare-fun b!6946897 () Bool)

(declare-fun res!2834001 () Bool)

(assert (=> b!6946897 (=> (not res!2834001) (not e!4178439))))

(declare-fun nullable!6807 (Regex!16994) Bool)

(assert (=> b!6946897 (= res!2834001 (not (nullable!6807 rInner!765)))))

(declare-fun b!6946898 () Bool)

(declare-fun e!4178440 () Bool)

(declare-fun lt!2477430 () Regex!16994)

(assert (=> b!6946898 (= e!4178440 (validRegex!8700 lt!2477430))))

(declare-fun b!6946899 () Bool)

(declare-fun tp!1914971 () Bool)

(declare-fun tp!1914973 () Bool)

(assert (=> b!6946899 (= e!4178437 (and tp!1914971 tp!1914973))))

(declare-fun b!6946900 () Bool)

(declare-fun tp!1914975 () Bool)

(assert (=> b!6946900 (= e!4178441 (and tp_is_empty!43213 tp!1914975))))

(declare-fun b!6946901 () Bool)

(assert (=> b!6946901 (= e!4178438 (not e!4178440))))

(declare-fun res!2833999 () Bool)

(assert (=> b!6946901 (=> res!2833999 e!4178440)))

(declare-fun lt!2477434 () Bool)

(assert (=> b!6946901 (= res!2833999 (not lt!2477434))))

(declare-fun matchR!9125 (Regex!16994 List!66747) Bool)

(declare-fun matchRSpec!4039 (Regex!16994 List!66747) Bool)

(assert (=> b!6946901 (= (matchR!9125 lt!2477430 (_2!37152 lt!2477432)) (matchRSpec!4039 lt!2477430 (_2!37152 lt!2477432)))))

(declare-datatypes ((Unit!160708 0))(
  ( (Unit!160709) )
))
(declare-fun lt!2477433 () Unit!160708)

(declare-fun mainMatchTheorem!4039 (Regex!16994 List!66747) Unit!160708)

(assert (=> b!6946901 (= lt!2477433 (mainMatchTheorem!4039 lt!2477430 (_2!37152 lt!2477432)))))

(assert (=> b!6946901 (= lt!2477430 (Star!16994 rInner!765))))

(assert (=> b!6946901 (= lt!2477434 (matchRSpec!4039 rInner!765 (_1!37152 lt!2477432)))))

(assert (=> b!6946901 (= lt!2477434 (matchR!9125 rInner!765 (_1!37152 lt!2477432)))))

(declare-fun lt!2477431 () Unit!160708)

(assert (=> b!6946901 (= lt!2477431 (mainMatchTheorem!4039 rInner!765 (_1!37152 lt!2477432)))))

(declare-fun b!6946902 () Bool)

(declare-fun tp!1914972 () Bool)

(declare-fun tp!1914974 () Bool)

(assert (=> b!6946902 (= e!4178437 (and tp!1914972 tp!1914974))))

(declare-fun res!2834003 () Bool)

(assert (=> b!6946903 (=> (not res!2834003) (not e!4178439))))

(declare-fun Exists!3990 (Int) Bool)

(assert (=> b!6946903 (= res!2834003 (Exists!3990 lambda!396123))))

(assert (= (and start!666880 res!2834000) b!6946897))

(assert (= (and b!6946897 res!2834001) b!6946903))

(assert (= (and b!6946903 res!2834003) b!6946896))

(assert (= (and b!6946896 res!2834002) b!6946901))

(assert (= (and b!6946901 (not res!2833999)) b!6946898))

(assert (= (and start!666880 (is-ElementMatch!16994 rInner!765)) b!6946894))

(assert (= (and start!666880 (is-Concat!25839 rInner!765)) b!6946899))

(assert (= (and start!666880 (is-Star!16994 rInner!765)) b!6946895))

(assert (= (and start!666880 (is-Union!16994 rInner!765)) b!6946902))

(assert (= (and start!666880 (is-Cons!66623 s!10388)) b!6946900))

(declare-fun m!7650632 () Bool)

(assert (=> b!6946903 m!7650632))

(declare-fun m!7650634 () Bool)

(assert (=> b!6946901 m!7650634))

(declare-fun m!7650636 () Bool)

(assert (=> b!6946901 m!7650636))

(declare-fun m!7650638 () Bool)

(assert (=> b!6946901 m!7650638))

(declare-fun m!7650640 () Bool)

(assert (=> b!6946901 m!7650640))

(declare-fun m!7650642 () Bool)

(assert (=> b!6946901 m!7650642))

(declare-fun m!7650644 () Bool)

(assert (=> b!6946901 m!7650644))

(declare-fun m!7650646 () Bool)

(assert (=> b!6946896 m!7650646))

(declare-fun m!7650648 () Bool)

(assert (=> b!6946896 m!7650648))

(declare-fun m!7650650 () Bool)

(assert (=> b!6946897 m!7650650))

(declare-fun m!7650652 () Bool)

(assert (=> b!6946898 m!7650652))

(declare-fun m!7650654 () Bool)

(assert (=> start!666880 m!7650654))

(push 1)

(assert tp_is_empty!43213)

(assert (not b!6946901))

(assert (not b!6946897))

(assert (not b!6946896))

(assert (not b!6946903))

(assert (not start!666880))

(assert (not b!6946899))

(assert (not b!6946895))

(assert (not b!6946898))

(assert (not b!6946902))

(assert (not b!6946900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6946960 () Bool)

(declare-fun res!2834032 () Bool)

(declare-fun e!4178465 () Bool)

(assert (=> b!6946960 (=> (not res!2834032) (not e!4178465))))

(declare-fun lt!2477452 () List!66747)

(declare-fun size!40813 (List!66747) Int)

(assert (=> b!6946960 (= res!2834032 (= (size!40813 lt!2477452) (+ (size!40813 (_1!37152 lt!2477432)) (size!40813 (_2!37152 lt!2477432)))))))

(declare-fun d!2168717 () Bool)

(assert (=> d!2168717 e!4178465))

(declare-fun res!2834031 () Bool)

(assert (=> d!2168717 (=> (not res!2834031) (not e!4178465))))

(declare-fun content!13116 (List!66747) (Set C!34258))

(assert (=> d!2168717 (= res!2834031 (= (content!13116 lt!2477452) (set.union (content!13116 (_1!37152 lt!2477432)) (content!13116 (_2!37152 lt!2477432)))))))

(declare-fun e!4178466 () List!66747)

(assert (=> d!2168717 (= lt!2477452 e!4178466)))

(declare-fun c!1288776 () Bool)

(assert (=> d!2168717 (= c!1288776 (is-Nil!66623 (_1!37152 lt!2477432)))))

(assert (=> d!2168717 (= (++!15031 (_1!37152 lt!2477432) (_2!37152 lt!2477432)) lt!2477452)))

(declare-fun b!6946961 () Bool)

(assert (=> b!6946961 (= e!4178465 (or (not (= (_2!37152 lt!2477432) Nil!66623)) (= lt!2477452 (_1!37152 lt!2477432))))))

(declare-fun b!6946959 () Bool)

(assert (=> b!6946959 (= e!4178466 (Cons!66623 (h!73071 (_1!37152 lt!2477432)) (++!15031 (t!380490 (_1!37152 lt!2477432)) (_2!37152 lt!2477432))))))

(declare-fun b!6946958 () Bool)

(assert (=> b!6946958 (= e!4178466 (_2!37152 lt!2477432))))

(assert (= (and d!2168717 c!1288776) b!6946958))

(assert (= (and d!2168717 (not c!1288776)) b!6946959))

(assert (= (and d!2168717 res!2834031) b!6946960))

(assert (= (and b!6946960 res!2834032) b!6946961))

(declare-fun m!7650680 () Bool)

(assert (=> b!6946960 m!7650680))

(declare-fun m!7650682 () Bool)

(assert (=> b!6946960 m!7650682))

(declare-fun m!7650684 () Bool)

(assert (=> b!6946960 m!7650684))

(declare-fun m!7650686 () Bool)

(assert (=> d!2168717 m!7650686))

(declare-fun m!7650688 () Bool)

(assert (=> d!2168717 m!7650688))

(declare-fun m!7650690 () Bool)

(assert (=> d!2168717 m!7650690))

(declare-fun m!7650692 () Bool)

(assert (=> b!6946959 m!7650692))

(assert (=> b!6946896 d!2168717))

(declare-fun d!2168721 () Bool)

(declare-fun lt!2477455 () tuple2!67698)

(declare-fun dynLambda!26571 (Int tuple2!67698) Bool)

(assert (=> d!2168721 (dynLambda!26571 lambda!396123 lt!2477455)))

(declare-fun choose!51762 (Int) tuple2!67698)

(assert (=> d!2168721 (= lt!2477455 (choose!51762 lambda!396123))))

(assert (=> d!2168721 (Exists!3990 lambda!396123)))

(assert (=> d!2168721 (= (pickWitness!339 lambda!396123) lt!2477455)))

(declare-fun b_lambda!260345 () Bool)

(assert (=> (not b_lambda!260345) (not d!2168721)))

(declare-fun bs!1857408 () Bool)

(assert (= bs!1857408 d!2168721))

(declare-fun m!7650694 () Bool)

(assert (=> bs!1857408 m!7650694))

(declare-fun m!7650696 () Bool)

(assert (=> bs!1857408 m!7650696))

(assert (=> bs!1857408 m!7650632))

(assert (=> b!6946896 d!2168721))

(declare-fun bs!1857409 () Bool)

(declare-fun b!6947035 () Bool)

(assert (= bs!1857409 (and b!6947035 b!6946903)))

(declare-fun lambda!396133 () Int)

(assert (=> bs!1857409 (not (= lambda!396133 lambda!396123))))

(assert (=> b!6947035 true))

(assert (=> b!6947035 true))

(declare-fun bs!1857410 () Bool)

(declare-fun b!6947039 () Bool)

(assert (= bs!1857410 (and b!6947039 b!6946903)))

(declare-fun lambda!396134 () Int)

(assert (=> bs!1857410 (not (= lambda!396134 lambda!396123))))

(declare-fun bs!1857411 () Bool)

(assert (= bs!1857411 (and b!6947039 b!6947035)))

(assert (=> bs!1857411 (not (= lambda!396134 lambda!396133))))

(assert (=> b!6947039 true))

(assert (=> b!6947039 true))

(declare-fun bm!630996 () Bool)

(declare-fun call!631001 () Bool)

(declare-fun isEmpty!38887 (List!66747) Bool)

(assert (=> bm!630996 (= call!631001 (isEmpty!38887 (_2!37152 lt!2477432)))))

(declare-fun b!6947026 () Bool)

(declare-fun c!1288793 () Bool)

(assert (=> b!6947026 (= c!1288793 (is-Union!16994 lt!2477430))))

(declare-fun e!4178517 () Bool)

(declare-fun e!4178511 () Bool)

(assert (=> b!6947026 (= e!4178517 e!4178511)))

(declare-fun b!6947028 () Bool)

(declare-fun e!4178518 () Bool)

(assert (=> b!6947028 (= e!4178511 e!4178518)))

(declare-fun res!2834067 () Bool)

(assert (=> b!6947028 (= res!2834067 (matchRSpec!4039 (regOne!34501 lt!2477430) (_2!37152 lt!2477432)))))

(assert (=> b!6947028 (=> res!2834067 e!4178518)))

(declare-fun b!6947030 () Bool)

(declare-fun res!2834071 () Bool)

(declare-fun e!4178519 () Bool)

(assert (=> b!6947030 (=> res!2834071 e!4178519)))

(assert (=> b!6947030 (= res!2834071 call!631001)))

(declare-fun e!4178516 () Bool)

(assert (=> b!6947030 (= e!4178516 e!4178519)))

(declare-fun b!6947031 () Bool)

(assert (=> b!6947031 (= e!4178518 (matchRSpec!4039 (regTwo!34501 lt!2477430) (_2!37152 lt!2477432)))))

(declare-fun b!6947033 () Bool)

(assert (=> b!6947033 (= e!4178511 e!4178516)))

(declare-fun c!1288792 () Bool)

(assert (=> b!6947033 (= c!1288792 (is-Star!16994 lt!2477430))))

(declare-fun call!631003 () Bool)

(assert (=> b!6947035 (= e!4178519 call!631003)))

(declare-fun b!6947037 () Bool)

(declare-fun e!4178515 () Bool)

(declare-fun e!4178513 () Bool)

(assert (=> b!6947037 (= e!4178515 e!4178513)))

(declare-fun res!2834070 () Bool)

(assert (=> b!6947037 (= res!2834070 (not (is-EmptyLang!16994 lt!2477430)))))

(assert (=> b!6947037 (=> (not res!2834070) (not e!4178513))))

(declare-fun b!6947038 () Bool)

(assert (=> b!6947038 (= e!4178515 call!631001)))

(assert (=> b!6947039 (= e!4178516 call!631003)))

(declare-fun b!6947040 () Bool)

(declare-fun c!1288795 () Bool)

(assert (=> b!6947040 (= c!1288795 (is-ElementMatch!16994 lt!2477430))))

(assert (=> b!6947040 (= e!4178513 e!4178517)))

(declare-fun bm!630998 () Bool)

(assert (=> bm!630998 (= call!631003 (Exists!3990 (ite c!1288792 lambda!396133 lambda!396134)))))

(declare-fun b!6947036 () Bool)

(assert (=> b!6947036 (= e!4178517 (= (_2!37152 lt!2477432) (Cons!66623 (c!1288772 lt!2477430) Nil!66623)))))

(declare-fun d!2168723 () Bool)

(declare-fun c!1288796 () Bool)

(assert (=> d!2168723 (= c!1288796 (is-EmptyExpr!16994 lt!2477430))))

(assert (=> d!2168723 (= (matchRSpec!4039 lt!2477430 (_2!37152 lt!2477432)) e!4178515)))

(assert (= (and d!2168723 c!1288796) b!6947038))

(assert (= (and d!2168723 (not c!1288796)) b!6947037))

(assert (= (and b!6947037 res!2834070) b!6947040))

(assert (= (and b!6947040 c!1288795) b!6947036))

(assert (= (and b!6947040 (not c!1288795)) b!6947026))

(assert (= (and b!6947026 c!1288793) b!6947028))

(assert (= (and b!6947026 (not c!1288793)) b!6947033))

(assert (= (and b!6947028 (not res!2834067)) b!6947031))

(assert (= (and b!6947033 c!1288792) b!6947030))

(assert (= (and b!6947033 (not c!1288792)) b!6947039))

(assert (= (and b!6947030 (not res!2834071)) b!6947035))

(assert (= (or b!6947035 b!6947039) bm!630998))

(assert (= (or b!6947038 b!6947030) bm!630996))

(declare-fun m!7650710 () Bool)

(assert (=> bm!630996 m!7650710))

(declare-fun m!7650712 () Bool)

(assert (=> b!6947028 m!7650712))

(declare-fun m!7650714 () Bool)

(assert (=> b!6947031 m!7650714))

(declare-fun m!7650716 () Bool)

(assert (=> bm!630998 m!7650716))

(assert (=> b!6946901 d!2168723))

(declare-fun d!2168729 () Bool)

(assert (=> d!2168729 (= (matchR!9125 lt!2477430 (_2!37152 lt!2477432)) (matchRSpec!4039 lt!2477430 (_2!37152 lt!2477432)))))

(declare-fun lt!2477458 () Unit!160708)

(declare-fun choose!51763 (Regex!16994 List!66747) Unit!160708)

(assert (=> d!2168729 (= lt!2477458 (choose!51763 lt!2477430 (_2!37152 lt!2477432)))))

(assert (=> d!2168729 (validRegex!8700 lt!2477430)))

(assert (=> d!2168729 (= (mainMatchTheorem!4039 lt!2477430 (_2!37152 lt!2477432)) lt!2477458)))

(declare-fun bs!1857413 () Bool)

(assert (= bs!1857413 d!2168729))

(assert (=> bs!1857413 m!7650640))

(assert (=> bs!1857413 m!7650642))

(declare-fun m!7650720 () Bool)

(assert (=> bs!1857413 m!7650720))

(assert (=> bs!1857413 m!7650652))

(assert (=> b!6946901 d!2168729))

(declare-fun b!6947069 () Bool)

(declare-fun res!2834090 () Bool)

(declare-fun e!4178540 () Bool)

(assert (=> b!6947069 (=> (not res!2834090) (not e!4178540))))

(declare-fun tail!12974 (List!66747) List!66747)

(assert (=> b!6947069 (= res!2834090 (isEmpty!38887 (tail!12974 (_2!37152 lt!2477432))))))

(declare-fun b!6947070 () Bool)

(declare-fun res!2834093 () Bool)

(assert (=> b!6947070 (=> (not res!2834093) (not e!4178540))))

(declare-fun call!631006 () Bool)

(assert (=> b!6947070 (= res!2834093 (not call!631006))))

(declare-fun d!2168733 () Bool)

(declare-fun e!4178537 () Bool)

(assert (=> d!2168733 e!4178537))

(declare-fun c!1288804 () Bool)

(assert (=> d!2168733 (= c!1288804 (is-EmptyExpr!16994 lt!2477430))))

(declare-fun lt!2477464 () Bool)

(declare-fun e!4178534 () Bool)

(assert (=> d!2168733 (= lt!2477464 e!4178534)))

(declare-fun c!1288805 () Bool)

(assert (=> d!2168733 (= c!1288805 (isEmpty!38887 (_2!37152 lt!2477432)))))

(assert (=> d!2168733 (validRegex!8700 lt!2477430)))

(assert (=> d!2168733 (= (matchR!9125 lt!2477430 (_2!37152 lt!2477432)) lt!2477464)))

(declare-fun b!6947071 () Bool)

(declare-fun e!4178536 () Bool)

(assert (=> b!6947071 (= e!4178537 e!4178536)))

(declare-fun c!1288803 () Bool)

(assert (=> b!6947071 (= c!1288803 (is-EmptyLang!16994 lt!2477430))))

(declare-fun b!6947072 () Bool)

(declare-fun head!13922 (List!66747) C!34258)

(assert (=> b!6947072 (= e!4178540 (= (head!13922 (_2!37152 lt!2477432)) (c!1288772 lt!2477430)))))

(declare-fun bm!631001 () Bool)

(assert (=> bm!631001 (= call!631006 (isEmpty!38887 (_2!37152 lt!2477432)))))

(declare-fun b!6947073 () Bool)

(assert (=> b!6947073 (= e!4178536 (not lt!2477464))))

(declare-fun b!6947074 () Bool)

(declare-fun e!4178535 () Bool)

(declare-fun e!4178539 () Bool)

(assert (=> b!6947074 (= e!4178535 e!4178539)))

(declare-fun res!2834089 () Bool)

(assert (=> b!6947074 (=> res!2834089 e!4178539)))

(assert (=> b!6947074 (= res!2834089 call!631006)))

(declare-fun b!6947075 () Bool)

(declare-fun res!2834092 () Bool)

(declare-fun e!4178538 () Bool)

(assert (=> b!6947075 (=> res!2834092 e!4178538)))

(assert (=> b!6947075 (= res!2834092 (not (is-ElementMatch!16994 lt!2477430)))))

(assert (=> b!6947075 (= e!4178536 e!4178538)))

(declare-fun b!6947076 () Bool)

(assert (=> b!6947076 (= e!4178537 (= lt!2477464 call!631006))))

(declare-fun b!6947077 () Bool)

(assert (=> b!6947077 (= e!4178539 (not (= (head!13922 (_2!37152 lt!2477432)) (c!1288772 lt!2477430))))))

(declare-fun b!6947078 () Bool)

(declare-fun res!2834095 () Bool)

(assert (=> b!6947078 (=> res!2834095 e!4178538)))

(assert (=> b!6947078 (= res!2834095 e!4178540)))

(declare-fun res!2834094 () Bool)

(assert (=> b!6947078 (=> (not res!2834094) (not e!4178540))))

(assert (=> b!6947078 (= res!2834094 lt!2477464)))

(declare-fun b!6947079 () Bool)

(declare-fun derivativeStep!5469 (Regex!16994 C!34258) Regex!16994)

(assert (=> b!6947079 (= e!4178534 (matchR!9125 (derivativeStep!5469 lt!2477430 (head!13922 (_2!37152 lt!2477432))) (tail!12974 (_2!37152 lt!2477432))))))

(declare-fun b!6947080 () Bool)

(assert (=> b!6947080 (= e!4178534 (nullable!6807 lt!2477430))))

(declare-fun b!6947081 () Bool)

(assert (=> b!6947081 (= e!4178538 e!4178535)))

(declare-fun res!2834091 () Bool)

(assert (=> b!6947081 (=> (not res!2834091) (not e!4178535))))

(assert (=> b!6947081 (= res!2834091 (not lt!2477464))))

(declare-fun b!6947082 () Bool)

(declare-fun res!2834088 () Bool)

(assert (=> b!6947082 (=> res!2834088 e!4178539)))

(assert (=> b!6947082 (= res!2834088 (not (isEmpty!38887 (tail!12974 (_2!37152 lt!2477432)))))))

(assert (= (and d!2168733 c!1288805) b!6947080))

(assert (= (and d!2168733 (not c!1288805)) b!6947079))

(assert (= (and d!2168733 c!1288804) b!6947076))

(assert (= (and d!2168733 (not c!1288804)) b!6947071))

(assert (= (and b!6947071 c!1288803) b!6947073))

(assert (= (and b!6947071 (not c!1288803)) b!6947075))

(assert (= (and b!6947075 (not res!2834092)) b!6947078))

(assert (= (and b!6947078 res!2834094) b!6947070))

(assert (= (and b!6947070 res!2834093) b!6947069))

(assert (= (and b!6947069 res!2834090) b!6947072))

(assert (= (and b!6947078 (not res!2834095)) b!6947081))

(assert (= (and b!6947081 res!2834091) b!6947074))

(assert (= (and b!6947074 (not res!2834089)) b!6947082))

(assert (= (and b!6947082 (not res!2834088)) b!6947077))

(assert (= (or b!6947076 b!6947070 b!6947074) bm!631001))

(assert (=> bm!631001 m!7650710))

(declare-fun m!7650724 () Bool)

(assert (=> b!6947079 m!7650724))

(assert (=> b!6947079 m!7650724))

(declare-fun m!7650726 () Bool)

(assert (=> b!6947079 m!7650726))

(declare-fun m!7650728 () Bool)

(assert (=> b!6947079 m!7650728))

(assert (=> b!6947079 m!7650726))

(assert (=> b!6947079 m!7650728))

(declare-fun m!7650730 () Bool)

(assert (=> b!6947079 m!7650730))

(assert (=> b!6947069 m!7650728))

(assert (=> b!6947069 m!7650728))

(declare-fun m!7650732 () Bool)

(assert (=> b!6947069 m!7650732))

(assert (=> d!2168733 m!7650710))

(assert (=> d!2168733 m!7650652))

(assert (=> b!6947072 m!7650724))

(assert (=> b!6947082 m!7650728))

(assert (=> b!6947082 m!7650728))

(assert (=> b!6947082 m!7650732))

(declare-fun m!7650734 () Bool)

(assert (=> b!6947080 m!7650734))

(assert (=> b!6947077 m!7650724))

(assert (=> b!6946901 d!2168733))

(declare-fun b!6947083 () Bool)

(declare-fun res!2834098 () Bool)

(declare-fun e!4178547 () Bool)

(assert (=> b!6947083 (=> (not res!2834098) (not e!4178547))))

(assert (=> b!6947083 (= res!2834098 (isEmpty!38887 (tail!12974 (_1!37152 lt!2477432))))))

(declare-fun b!6947084 () Bool)

(declare-fun res!2834101 () Bool)

(assert (=> b!6947084 (=> (not res!2834101) (not e!4178547))))

(declare-fun call!631007 () Bool)

(assert (=> b!6947084 (= res!2834101 (not call!631007))))

(declare-fun d!2168737 () Bool)

(declare-fun e!4178544 () Bool)

(assert (=> d!2168737 e!4178544))

(declare-fun c!1288807 () Bool)

(assert (=> d!2168737 (= c!1288807 (is-EmptyExpr!16994 rInner!765))))

(declare-fun lt!2477465 () Bool)

(declare-fun e!4178541 () Bool)

(assert (=> d!2168737 (= lt!2477465 e!4178541)))

(declare-fun c!1288808 () Bool)

(assert (=> d!2168737 (= c!1288808 (isEmpty!38887 (_1!37152 lt!2477432)))))

(assert (=> d!2168737 (validRegex!8700 rInner!765)))

(assert (=> d!2168737 (= (matchR!9125 rInner!765 (_1!37152 lt!2477432)) lt!2477465)))

(declare-fun b!6947085 () Bool)

(declare-fun e!4178543 () Bool)

(assert (=> b!6947085 (= e!4178544 e!4178543)))

(declare-fun c!1288806 () Bool)

(assert (=> b!6947085 (= c!1288806 (is-EmptyLang!16994 rInner!765))))

(declare-fun b!6947086 () Bool)

(assert (=> b!6947086 (= e!4178547 (= (head!13922 (_1!37152 lt!2477432)) (c!1288772 rInner!765)))))

(declare-fun bm!631002 () Bool)

(assert (=> bm!631002 (= call!631007 (isEmpty!38887 (_1!37152 lt!2477432)))))

(declare-fun b!6947087 () Bool)

(assert (=> b!6947087 (= e!4178543 (not lt!2477465))))

(declare-fun b!6947088 () Bool)

(declare-fun e!4178542 () Bool)

(declare-fun e!4178546 () Bool)

(assert (=> b!6947088 (= e!4178542 e!4178546)))

(declare-fun res!2834097 () Bool)

(assert (=> b!6947088 (=> res!2834097 e!4178546)))

(assert (=> b!6947088 (= res!2834097 call!631007)))

(declare-fun b!6947089 () Bool)

(declare-fun res!2834100 () Bool)

(declare-fun e!4178545 () Bool)

(assert (=> b!6947089 (=> res!2834100 e!4178545)))

(assert (=> b!6947089 (= res!2834100 (not (is-ElementMatch!16994 rInner!765)))))

(assert (=> b!6947089 (= e!4178543 e!4178545)))

(declare-fun b!6947090 () Bool)

(assert (=> b!6947090 (= e!4178544 (= lt!2477465 call!631007))))

(declare-fun b!6947091 () Bool)

(assert (=> b!6947091 (= e!4178546 (not (= (head!13922 (_1!37152 lt!2477432)) (c!1288772 rInner!765))))))

(declare-fun b!6947092 () Bool)

(declare-fun res!2834103 () Bool)

(assert (=> b!6947092 (=> res!2834103 e!4178545)))

(assert (=> b!6947092 (= res!2834103 e!4178547)))

(declare-fun res!2834102 () Bool)

(assert (=> b!6947092 (=> (not res!2834102) (not e!4178547))))

(assert (=> b!6947092 (= res!2834102 lt!2477465)))

(declare-fun b!6947093 () Bool)

(assert (=> b!6947093 (= e!4178541 (matchR!9125 (derivativeStep!5469 rInner!765 (head!13922 (_1!37152 lt!2477432))) (tail!12974 (_1!37152 lt!2477432))))))

(declare-fun b!6947094 () Bool)

(assert (=> b!6947094 (= e!4178541 (nullable!6807 rInner!765))))

(declare-fun b!6947095 () Bool)

(assert (=> b!6947095 (= e!4178545 e!4178542)))

(declare-fun res!2834099 () Bool)

(assert (=> b!6947095 (=> (not res!2834099) (not e!4178542))))

(assert (=> b!6947095 (= res!2834099 (not lt!2477465))))

(declare-fun b!6947096 () Bool)

(declare-fun res!2834096 () Bool)

(assert (=> b!6947096 (=> res!2834096 e!4178546)))

(assert (=> b!6947096 (= res!2834096 (not (isEmpty!38887 (tail!12974 (_1!37152 lt!2477432)))))))

(assert (= (and d!2168737 c!1288808) b!6947094))

(assert (= (and d!2168737 (not c!1288808)) b!6947093))

(assert (= (and d!2168737 c!1288807) b!6947090))

(assert (= (and d!2168737 (not c!1288807)) b!6947085))

(assert (= (and b!6947085 c!1288806) b!6947087))

(assert (= (and b!6947085 (not c!1288806)) b!6947089))

(assert (= (and b!6947089 (not res!2834100)) b!6947092))

(assert (= (and b!6947092 res!2834102) b!6947084))

(assert (= (and b!6947084 res!2834101) b!6947083))

(assert (= (and b!6947083 res!2834098) b!6947086))

(assert (= (and b!6947092 (not res!2834103)) b!6947095))

(assert (= (and b!6947095 res!2834099) b!6947088))

(assert (= (and b!6947088 (not res!2834097)) b!6947096))

(assert (= (and b!6947096 (not res!2834096)) b!6947091))

(assert (= (or b!6947090 b!6947084 b!6947088) bm!631002))

(declare-fun m!7650736 () Bool)

(assert (=> bm!631002 m!7650736))

(declare-fun m!7650738 () Bool)

(assert (=> b!6947093 m!7650738))

(assert (=> b!6947093 m!7650738))

(declare-fun m!7650740 () Bool)

(assert (=> b!6947093 m!7650740))

(declare-fun m!7650742 () Bool)

(assert (=> b!6947093 m!7650742))

(assert (=> b!6947093 m!7650740))

(assert (=> b!6947093 m!7650742))

(declare-fun m!7650744 () Bool)

(assert (=> b!6947093 m!7650744))

(assert (=> b!6947083 m!7650742))

(assert (=> b!6947083 m!7650742))

(declare-fun m!7650746 () Bool)

(assert (=> b!6947083 m!7650746))

(assert (=> d!2168737 m!7650736))

(assert (=> d!2168737 m!7650654))

(assert (=> b!6947086 m!7650738))

(assert (=> b!6947096 m!7650742))

(assert (=> b!6947096 m!7650742))

(assert (=> b!6947096 m!7650746))

(assert (=> b!6947094 m!7650650))

(assert (=> b!6947091 m!7650738))

(assert (=> b!6946901 d!2168737))

(declare-fun bs!1857415 () Bool)

(declare-fun b!6947102 () Bool)

(assert (= bs!1857415 (and b!6947102 b!6946903)))

(declare-fun lambda!396135 () Int)

(assert (=> bs!1857415 (not (= lambda!396135 lambda!396123))))

(declare-fun bs!1857416 () Bool)

(assert (= bs!1857416 (and b!6947102 b!6947035)))

(assert (=> bs!1857416 (= (and (= (_1!37152 lt!2477432) (_2!37152 lt!2477432)) (= (reg!17323 rInner!765) (reg!17323 lt!2477430)) (= rInner!765 lt!2477430)) (= lambda!396135 lambda!396133))))

(declare-fun bs!1857417 () Bool)

(assert (= bs!1857417 (and b!6947102 b!6947039)))

(assert (=> bs!1857417 (not (= lambda!396135 lambda!396134))))

(assert (=> b!6947102 true))

(assert (=> b!6947102 true))

(declare-fun bs!1857418 () Bool)

(declare-fun b!6947106 () Bool)

(assert (= bs!1857418 (and b!6947106 b!6946903)))

(declare-fun lambda!396136 () Int)

(assert (=> bs!1857418 (not (= lambda!396136 lambda!396123))))

(declare-fun bs!1857419 () Bool)

(assert (= bs!1857419 (and b!6947106 b!6947035)))

(assert (=> bs!1857419 (not (= lambda!396136 lambda!396133))))

(declare-fun bs!1857420 () Bool)

(assert (= bs!1857420 (and b!6947106 b!6947039)))

(assert (=> bs!1857420 (= (and (= (_1!37152 lt!2477432) (_2!37152 lt!2477432)) (= (regOne!34500 rInner!765) (regOne!34500 lt!2477430)) (= (regTwo!34500 rInner!765) (regTwo!34500 lt!2477430))) (= lambda!396136 lambda!396134))))

(declare-fun bs!1857421 () Bool)

(assert (= bs!1857421 (and b!6947106 b!6947102)))

(assert (=> bs!1857421 (not (= lambda!396136 lambda!396135))))

(assert (=> b!6947106 true))

(assert (=> b!6947106 true))

(declare-fun bm!631003 () Bool)

(declare-fun call!631008 () Bool)

(assert (=> bm!631003 (= call!631008 (isEmpty!38887 (_1!37152 lt!2477432)))))

(declare-fun b!6947097 () Bool)

(declare-fun c!1288810 () Bool)

(assert (=> b!6947097 (= c!1288810 (is-Union!16994 rInner!765))))

(declare-fun e!4178552 () Bool)

(declare-fun e!4178548 () Bool)

(assert (=> b!6947097 (= e!4178552 e!4178548)))

(declare-fun b!6947098 () Bool)

(declare-fun e!4178553 () Bool)

(assert (=> b!6947098 (= e!4178548 e!4178553)))

(declare-fun res!2834104 () Bool)

(assert (=> b!6947098 (= res!2834104 (matchRSpec!4039 (regOne!34501 rInner!765) (_1!37152 lt!2477432)))))

(assert (=> b!6947098 (=> res!2834104 e!4178553)))

(declare-fun b!6947099 () Bool)

(declare-fun res!2834106 () Bool)

(declare-fun e!4178554 () Bool)

(assert (=> b!6947099 (=> res!2834106 e!4178554)))

(assert (=> b!6947099 (= res!2834106 call!631008)))

(declare-fun e!4178551 () Bool)

(assert (=> b!6947099 (= e!4178551 e!4178554)))

(declare-fun b!6947100 () Bool)

(assert (=> b!6947100 (= e!4178553 (matchRSpec!4039 (regTwo!34501 rInner!765) (_1!37152 lt!2477432)))))

(declare-fun b!6947101 () Bool)

(assert (=> b!6947101 (= e!4178548 e!4178551)))

(declare-fun c!1288809 () Bool)

(assert (=> b!6947101 (= c!1288809 (is-Star!16994 rInner!765))))

(declare-fun call!631009 () Bool)

(assert (=> b!6947102 (= e!4178554 call!631009)))

(declare-fun b!6947104 () Bool)

(declare-fun e!4178550 () Bool)

(declare-fun e!4178549 () Bool)

(assert (=> b!6947104 (= e!4178550 e!4178549)))

(declare-fun res!2834105 () Bool)

(assert (=> b!6947104 (= res!2834105 (not (is-EmptyLang!16994 rInner!765)))))

(assert (=> b!6947104 (=> (not res!2834105) (not e!4178549))))

(declare-fun b!6947105 () Bool)

(assert (=> b!6947105 (= e!4178550 call!631008)))

(assert (=> b!6947106 (= e!4178551 call!631009)))

(declare-fun b!6947107 () Bool)

(declare-fun c!1288811 () Bool)

(assert (=> b!6947107 (= c!1288811 (is-ElementMatch!16994 rInner!765))))

(assert (=> b!6947107 (= e!4178549 e!4178552)))

(declare-fun bm!631004 () Bool)

(assert (=> bm!631004 (= call!631009 (Exists!3990 (ite c!1288809 lambda!396135 lambda!396136)))))

(declare-fun b!6947103 () Bool)

(assert (=> b!6947103 (= e!4178552 (= (_1!37152 lt!2477432) (Cons!66623 (c!1288772 rInner!765) Nil!66623)))))

(declare-fun d!2168739 () Bool)

(declare-fun c!1288812 () Bool)

(assert (=> d!2168739 (= c!1288812 (is-EmptyExpr!16994 rInner!765))))

(assert (=> d!2168739 (= (matchRSpec!4039 rInner!765 (_1!37152 lt!2477432)) e!4178550)))

(assert (= (and d!2168739 c!1288812) b!6947105))

(assert (= (and d!2168739 (not c!1288812)) b!6947104))

(assert (= (and b!6947104 res!2834105) b!6947107))

(assert (= (and b!6947107 c!1288811) b!6947103))

(assert (= (and b!6947107 (not c!1288811)) b!6947097))

(assert (= (and b!6947097 c!1288810) b!6947098))

(assert (= (and b!6947097 (not c!1288810)) b!6947101))

(assert (= (and b!6947098 (not res!2834104)) b!6947100))

(assert (= (and b!6947101 c!1288809) b!6947099))

(assert (= (and b!6947101 (not c!1288809)) b!6947106))

(assert (= (and b!6947099 (not res!2834106)) b!6947102))

(assert (= (or b!6947102 b!6947106) bm!631004))

(assert (= (or b!6947105 b!6947099) bm!631003))

(assert (=> bm!631003 m!7650736))

(declare-fun m!7650748 () Bool)

(assert (=> b!6947098 m!7650748))

(declare-fun m!7650750 () Bool)

(assert (=> b!6947100 m!7650750))

(declare-fun m!7650752 () Bool)

(assert (=> bm!631004 m!7650752))

(assert (=> b!6946901 d!2168739))

(declare-fun d!2168741 () Bool)

(assert (=> d!2168741 (= (matchR!9125 rInner!765 (_1!37152 lt!2477432)) (matchRSpec!4039 rInner!765 (_1!37152 lt!2477432)))))

(declare-fun lt!2477466 () Unit!160708)

(assert (=> d!2168741 (= lt!2477466 (choose!51763 rInner!765 (_1!37152 lt!2477432)))))

(assert (=> d!2168741 (validRegex!8700 rInner!765)))

(assert (=> d!2168741 (= (mainMatchTheorem!4039 rInner!765 (_1!37152 lt!2477432)) lt!2477466)))

(declare-fun bs!1857422 () Bool)

(assert (= bs!1857422 d!2168741))

(assert (=> bs!1857422 m!7650634))

(assert (=> bs!1857422 m!7650636))

(declare-fun m!7650754 () Bool)

(assert (=> bs!1857422 m!7650754))

(assert (=> bs!1857422 m!7650654))

(assert (=> b!6946901 d!2168741))

(declare-fun b!6947154 () Bool)

(declare-fun res!2834136 () Bool)

(declare-fun e!4178586 () Bool)

(assert (=> b!6947154 (=> (not res!2834136) (not e!4178586))))

(declare-fun call!631019 () Bool)

(assert (=> b!6947154 (= res!2834136 call!631019)))

(declare-fun e!4178583 () Bool)

(assert (=> b!6947154 (= e!4178583 e!4178586)))

(declare-fun b!6947155 () Bool)

(declare-fun e!4178587 () Bool)

(assert (=> b!6947155 (= e!4178587 e!4178583)))

(declare-fun c!1288824 () Bool)

(assert (=> b!6947155 (= c!1288824 (is-Union!16994 lt!2477430))))

(declare-fun c!1288823 () Bool)

(declare-fun call!631020 () Bool)

(declare-fun bm!631013 () Bool)

(assert (=> bm!631013 (= call!631020 (validRegex!8700 (ite c!1288823 (reg!17323 lt!2477430) (ite c!1288824 (regTwo!34501 lt!2477430) (regOne!34500 lt!2477430)))))))

(declare-fun b!6947156 () Bool)

(declare-fun call!631018 () Bool)

(assert (=> b!6947156 (= e!4178586 call!631018)))

(declare-fun b!6947157 () Bool)

(declare-fun e!4178588 () Bool)

(assert (=> b!6947157 (= e!4178588 call!631019)))

(declare-fun b!6947158 () Bool)

(declare-fun e!4178589 () Bool)

(assert (=> b!6947158 (= e!4178587 e!4178589)))

(declare-fun res!2834137 () Bool)

(assert (=> b!6947158 (= res!2834137 (not (nullable!6807 (reg!17323 lt!2477430))))))

(assert (=> b!6947158 (=> (not res!2834137) (not e!4178589))))

(declare-fun bm!631014 () Bool)

(assert (=> bm!631014 (= call!631018 call!631020)))

(declare-fun b!6947160 () Bool)

(declare-fun res!2834134 () Bool)

(declare-fun e!4178585 () Bool)

(assert (=> b!6947160 (=> res!2834134 e!4178585)))

(assert (=> b!6947160 (= res!2834134 (not (is-Concat!25839 lt!2477430)))))

(assert (=> b!6947160 (= e!4178583 e!4178585)))

(declare-fun b!6947161 () Bool)

(assert (=> b!6947161 (= e!4178589 call!631020)))

(declare-fun bm!631015 () Bool)

(assert (=> bm!631015 (= call!631019 (validRegex!8700 (ite c!1288824 (regOne!34501 lt!2477430) (regTwo!34500 lt!2477430))))))

(declare-fun b!6947162 () Bool)

(declare-fun e!4178584 () Bool)

(assert (=> b!6947162 (= e!4178584 e!4178587)))

(assert (=> b!6947162 (= c!1288823 (is-Star!16994 lt!2477430))))

(declare-fun d!2168743 () Bool)

(declare-fun res!2834135 () Bool)

(assert (=> d!2168743 (=> res!2834135 e!4178584)))

(assert (=> d!2168743 (= res!2834135 (is-ElementMatch!16994 lt!2477430))))

(assert (=> d!2168743 (= (validRegex!8700 lt!2477430) e!4178584)))

(declare-fun b!6947159 () Bool)

(assert (=> b!6947159 (= e!4178585 e!4178588)))

(declare-fun res!2834133 () Bool)

(assert (=> b!6947159 (=> (not res!2834133) (not e!4178588))))

(assert (=> b!6947159 (= res!2834133 call!631018)))

(assert (= (and d!2168743 (not res!2834135)) b!6947162))

(assert (= (and b!6947162 c!1288823) b!6947158))

(assert (= (and b!6947162 (not c!1288823)) b!6947155))

(assert (= (and b!6947158 res!2834137) b!6947161))

(assert (= (and b!6947155 c!1288824) b!6947154))

(assert (= (and b!6947155 (not c!1288824)) b!6947160))

(assert (= (and b!6947154 res!2834136) b!6947156))

(assert (= (and b!6947160 (not res!2834134)) b!6947159))

(assert (= (and b!6947159 res!2834133) b!6947157))

(assert (= (or b!6947154 b!6947157) bm!631015))

(assert (= (or b!6947156 b!6947159) bm!631014))

(assert (= (or b!6947161 bm!631014) bm!631013))

(declare-fun m!7650756 () Bool)

(assert (=> bm!631013 m!7650756))

(declare-fun m!7650758 () Bool)

(assert (=> b!6947158 m!7650758))

(declare-fun m!7650760 () Bool)

(assert (=> bm!631015 m!7650760))

(assert (=> b!6946898 d!2168743))

(declare-fun b!6947163 () Bool)

(declare-fun res!2834141 () Bool)

(declare-fun e!4178593 () Bool)

(assert (=> b!6947163 (=> (not res!2834141) (not e!4178593))))

(declare-fun call!631022 () Bool)

(assert (=> b!6947163 (= res!2834141 call!631022)))

(declare-fun e!4178590 () Bool)

(assert (=> b!6947163 (= e!4178590 e!4178593)))

(declare-fun b!6947164 () Bool)

(declare-fun e!4178594 () Bool)

(assert (=> b!6947164 (= e!4178594 e!4178590)))

(declare-fun c!1288826 () Bool)

(assert (=> b!6947164 (= c!1288826 (is-Union!16994 rInner!765))))

(declare-fun call!631023 () Bool)

(declare-fun bm!631016 () Bool)

(declare-fun c!1288825 () Bool)

(assert (=> bm!631016 (= call!631023 (validRegex!8700 (ite c!1288825 (reg!17323 rInner!765) (ite c!1288826 (regTwo!34501 rInner!765) (regOne!34500 rInner!765)))))))

(declare-fun b!6947165 () Bool)

(declare-fun call!631021 () Bool)

(assert (=> b!6947165 (= e!4178593 call!631021)))

(declare-fun b!6947166 () Bool)

(declare-fun e!4178595 () Bool)

(assert (=> b!6947166 (= e!4178595 call!631022)))

(declare-fun b!6947167 () Bool)

(declare-fun e!4178596 () Bool)

(assert (=> b!6947167 (= e!4178594 e!4178596)))

(declare-fun res!2834142 () Bool)

(assert (=> b!6947167 (= res!2834142 (not (nullable!6807 (reg!17323 rInner!765))))))

(assert (=> b!6947167 (=> (not res!2834142) (not e!4178596))))

(declare-fun bm!631017 () Bool)

(assert (=> bm!631017 (= call!631021 call!631023)))

(declare-fun b!6947169 () Bool)

(declare-fun res!2834139 () Bool)

(declare-fun e!4178592 () Bool)

(assert (=> b!6947169 (=> res!2834139 e!4178592)))

(assert (=> b!6947169 (= res!2834139 (not (is-Concat!25839 rInner!765)))))

(assert (=> b!6947169 (= e!4178590 e!4178592)))

(declare-fun b!6947170 () Bool)

(assert (=> b!6947170 (= e!4178596 call!631023)))

(declare-fun bm!631018 () Bool)

(assert (=> bm!631018 (= call!631022 (validRegex!8700 (ite c!1288826 (regOne!34501 rInner!765) (regTwo!34500 rInner!765))))))

(declare-fun b!6947171 () Bool)

(declare-fun e!4178591 () Bool)

(assert (=> b!6947171 (= e!4178591 e!4178594)))

(assert (=> b!6947171 (= c!1288825 (is-Star!16994 rInner!765))))

(declare-fun d!2168745 () Bool)

(declare-fun res!2834140 () Bool)

(assert (=> d!2168745 (=> res!2834140 e!4178591)))

(assert (=> d!2168745 (= res!2834140 (is-ElementMatch!16994 rInner!765))))

(assert (=> d!2168745 (= (validRegex!8700 rInner!765) e!4178591)))

(declare-fun b!6947168 () Bool)

(assert (=> b!6947168 (= e!4178592 e!4178595)))

(declare-fun res!2834138 () Bool)

(assert (=> b!6947168 (=> (not res!2834138) (not e!4178595))))

(assert (=> b!6947168 (= res!2834138 call!631021)))

(assert (= (and d!2168745 (not res!2834140)) b!6947171))

(assert (= (and b!6947171 c!1288825) b!6947167))

(assert (= (and b!6947171 (not c!1288825)) b!6947164))

(assert (= (and b!6947167 res!2834142) b!6947170))

(assert (= (and b!6947164 c!1288826) b!6947163))

(assert (= (and b!6947164 (not c!1288826)) b!6947169))

(assert (= (and b!6947163 res!2834141) b!6947165))

(assert (= (and b!6947169 (not res!2834139)) b!6947168))

(assert (= (and b!6947168 res!2834138) b!6947166))

(assert (= (or b!6947163 b!6947166) bm!631018))

(assert (= (or b!6947165 b!6947168) bm!631017))

(assert (= (or b!6947170 bm!631017) bm!631016))

(declare-fun m!7650762 () Bool)

(assert (=> bm!631016 m!7650762))

(declare-fun m!7650764 () Bool)

(assert (=> b!6947167 m!7650764))

(declare-fun m!7650766 () Bool)

(assert (=> bm!631018 m!7650766))

(assert (=> start!666880 d!2168745))

(declare-fun d!2168747 () Bool)

(declare-fun choose!51764 (Int) Bool)

(assert (=> d!2168747 (= (Exists!3990 lambda!396123) (choose!51764 lambda!396123))))

(declare-fun bs!1857423 () Bool)

(assert (= bs!1857423 d!2168747))

(declare-fun m!7650768 () Bool)

(assert (=> bs!1857423 m!7650768))

(assert (=> b!6946903 d!2168747))

(declare-fun d!2168749 () Bool)

(declare-fun nullableFct!2544 (Regex!16994) Bool)

(assert (=> d!2168749 (= (nullable!6807 rInner!765) (nullableFct!2544 rInner!765))))

(declare-fun bs!1857424 () Bool)

(assert (= bs!1857424 d!2168749))

(declare-fun m!7650770 () Bool)

(assert (=> bs!1857424 m!7650770))

(assert (=> b!6946897 d!2168749))

(declare-fun e!4178599 () Bool)

(assert (=> b!6946902 (= tp!1914972 e!4178599)))

(declare-fun b!6947183 () Bool)

(declare-fun tp!1915006 () Bool)

(declare-fun tp!1915005 () Bool)

(assert (=> b!6947183 (= e!4178599 (and tp!1915006 tp!1915005))))

(declare-fun b!6947182 () Bool)

(assert (=> b!6947182 (= e!4178599 tp_is_empty!43213)))

(declare-fun b!6947185 () Bool)

(declare-fun tp!1915008 () Bool)

(declare-fun tp!1915004 () Bool)

(assert (=> b!6947185 (= e!4178599 (and tp!1915008 tp!1915004))))

(declare-fun b!6947184 () Bool)

(declare-fun tp!1915007 () Bool)

(assert (=> b!6947184 (= e!4178599 tp!1915007)))

(assert (= (and b!6946902 (is-ElementMatch!16994 (regOne!34501 rInner!765))) b!6947182))

(assert (= (and b!6946902 (is-Concat!25839 (regOne!34501 rInner!765))) b!6947183))

(assert (= (and b!6946902 (is-Star!16994 (regOne!34501 rInner!765))) b!6947184))

(assert (= (and b!6946902 (is-Union!16994 (regOne!34501 rInner!765))) b!6947185))

(declare-fun e!4178600 () Bool)

(assert (=> b!6946902 (= tp!1914974 e!4178600)))

(declare-fun b!6947187 () Bool)

(declare-fun tp!1915011 () Bool)

(declare-fun tp!1915010 () Bool)

(assert (=> b!6947187 (= e!4178600 (and tp!1915011 tp!1915010))))

(declare-fun b!6947186 () Bool)

(assert (=> b!6947186 (= e!4178600 tp_is_empty!43213)))

(declare-fun b!6947189 () Bool)

(declare-fun tp!1915013 () Bool)

(declare-fun tp!1915009 () Bool)

(assert (=> b!6947189 (= e!4178600 (and tp!1915013 tp!1915009))))

(declare-fun b!6947188 () Bool)

(declare-fun tp!1915012 () Bool)

(assert (=> b!6947188 (= e!4178600 tp!1915012)))

(assert (= (and b!6946902 (is-ElementMatch!16994 (regTwo!34501 rInner!765))) b!6947186))

(assert (= (and b!6946902 (is-Concat!25839 (regTwo!34501 rInner!765))) b!6947187))

(assert (= (and b!6946902 (is-Star!16994 (regTwo!34501 rInner!765))) b!6947188))

(assert (= (and b!6946902 (is-Union!16994 (regTwo!34501 rInner!765))) b!6947189))

(declare-fun e!4178601 () Bool)

(assert (=> b!6946895 (= tp!1914970 e!4178601)))

(declare-fun b!6947191 () Bool)

(declare-fun tp!1915016 () Bool)

(declare-fun tp!1915015 () Bool)

(assert (=> b!6947191 (= e!4178601 (and tp!1915016 tp!1915015))))

(declare-fun b!6947190 () Bool)

(assert (=> b!6947190 (= e!4178601 tp_is_empty!43213)))

(declare-fun b!6947193 () Bool)

(declare-fun tp!1915018 () Bool)

(declare-fun tp!1915014 () Bool)

(assert (=> b!6947193 (= e!4178601 (and tp!1915018 tp!1915014))))

(declare-fun b!6947192 () Bool)

(declare-fun tp!1915017 () Bool)

(assert (=> b!6947192 (= e!4178601 tp!1915017)))

(assert (= (and b!6946895 (is-ElementMatch!16994 (reg!17323 rInner!765))) b!6947190))

(assert (= (and b!6946895 (is-Concat!25839 (reg!17323 rInner!765))) b!6947191))

(assert (= (and b!6946895 (is-Star!16994 (reg!17323 rInner!765))) b!6947192))

(assert (= (and b!6946895 (is-Union!16994 (reg!17323 rInner!765))) b!6947193))

(declare-fun b!6947198 () Bool)

(declare-fun e!4178604 () Bool)

(declare-fun tp!1915021 () Bool)

(assert (=> b!6947198 (= e!4178604 (and tp_is_empty!43213 tp!1915021))))

(assert (=> b!6946900 (= tp!1914975 e!4178604)))

(assert (= (and b!6946900 (is-Cons!66623 (t!380490 s!10388))) b!6947198))

(declare-fun e!4178605 () Bool)

(assert (=> b!6946899 (= tp!1914971 e!4178605)))

(declare-fun b!6947200 () Bool)

(declare-fun tp!1915024 () Bool)

(declare-fun tp!1915023 () Bool)

(assert (=> b!6947200 (= e!4178605 (and tp!1915024 tp!1915023))))

(declare-fun b!6947199 () Bool)

(assert (=> b!6947199 (= e!4178605 tp_is_empty!43213)))

(declare-fun b!6947202 () Bool)

(declare-fun tp!1915026 () Bool)

(declare-fun tp!1915022 () Bool)

(assert (=> b!6947202 (= e!4178605 (and tp!1915026 tp!1915022))))

(declare-fun b!6947201 () Bool)

(declare-fun tp!1915025 () Bool)

(assert (=> b!6947201 (= e!4178605 tp!1915025)))

(assert (= (and b!6946899 (is-ElementMatch!16994 (regOne!34500 rInner!765))) b!6947199))

(assert (= (and b!6946899 (is-Concat!25839 (regOne!34500 rInner!765))) b!6947200))

(assert (= (and b!6946899 (is-Star!16994 (regOne!34500 rInner!765))) b!6947201))

(assert (= (and b!6946899 (is-Union!16994 (regOne!34500 rInner!765))) b!6947202))

(declare-fun e!4178606 () Bool)

(assert (=> b!6946899 (= tp!1914973 e!4178606)))

(declare-fun b!6947204 () Bool)

(declare-fun tp!1915029 () Bool)

(declare-fun tp!1915028 () Bool)

(assert (=> b!6947204 (= e!4178606 (and tp!1915029 tp!1915028))))

(declare-fun b!6947203 () Bool)

(assert (=> b!6947203 (= e!4178606 tp_is_empty!43213)))

(declare-fun b!6947206 () Bool)

(declare-fun tp!1915031 () Bool)

(declare-fun tp!1915027 () Bool)

(assert (=> b!6947206 (= e!4178606 (and tp!1915031 tp!1915027))))

(declare-fun b!6947205 () Bool)

(declare-fun tp!1915030 () Bool)

(assert (=> b!6947205 (= e!4178606 tp!1915030)))

(assert (= (and b!6946899 (is-ElementMatch!16994 (regTwo!34500 rInner!765))) b!6947203))

(assert (= (and b!6946899 (is-Concat!25839 (regTwo!34500 rInner!765))) b!6947204))

(assert (= (and b!6946899 (is-Star!16994 (regTwo!34500 rInner!765))) b!6947205))

(assert (= (and b!6946899 (is-Union!16994 (regTwo!34500 rInner!765))) b!6947206))

(declare-fun b_lambda!260347 () Bool)

(assert (= b_lambda!260345 (or b!6946903 b_lambda!260347)))

(declare-fun bs!1857425 () Bool)

(declare-fun d!2168751 () Bool)

(assert (= bs!1857425 (and d!2168751 b!6946903)))

(declare-fun res!2834143 () Bool)

(declare-fun e!4178607 () Bool)

(assert (=> bs!1857425 (=> (not res!2834143) (not e!4178607))))

(assert (=> bs!1857425 (= res!2834143 (= (++!15031 (_1!37152 lt!2477455) (_2!37152 lt!2477455)) s!10388))))

(assert (=> bs!1857425 (= (dynLambda!26571 lambda!396123 lt!2477455) e!4178607)))

(declare-fun b!6947207 () Bool)

(declare-fun res!2834144 () Bool)

(assert (=> b!6947207 (=> (not res!2834144) (not e!4178607))))

(assert (=> b!6947207 (= res!2834144 (matchR!9125 rInner!765 (_1!37152 lt!2477455)))))

(declare-fun b!6947208 () Bool)

(assert (=> b!6947208 (= e!4178607 (matchR!9125 (Star!16994 rInner!765) (_2!37152 lt!2477455)))))

(assert (= (and bs!1857425 res!2834143) b!6947207))

(assert (= (and b!6947207 res!2834144) b!6947208))

(declare-fun m!7650772 () Bool)

(assert (=> bs!1857425 m!7650772))

(declare-fun m!7650774 () Bool)

(assert (=> b!6947207 m!7650774))

(declare-fun m!7650776 () Bool)

(assert (=> b!6947208 m!7650776))

(assert (=> d!2168721 d!2168751))

(push 1)

(assert (not bm!631003))

(assert tp_is_empty!43213)

(assert (not b!6947100))

(assert (not b!6947187))

(assert (not d!2168747))

(assert (not bm!631001))

(assert (not bm!631016))

(assert (not b!6947069))

(assert (not b!6947207))

(assert (not b!6946960))

(assert (not b!6947079))

(assert (not b!6947205))

(assert (not d!2168733))

(assert (not bm!630996))

(assert (not bm!630998))

(assert (not b!6947191))

(assert (not b!6947206))

(assert (not b!6947204))

(assert (not b!6947098))

(assert (not b!6947028))

(assert (not b!6947083))

(assert (not b!6947094))

(assert (not bs!1857425))

(assert (not b!6947184))

(assert (not b!6947208))

(assert (not b!6947201))

(assert (not bm!631015))

(assert (not d!2168741))

(assert (not bm!631013))

(assert (not b!6947031))

(assert (not b!6947188))

(assert (not b!6947072))

(assert (not b!6947193))

(assert (not d!2168737))

(assert (not b!6946959))

(assert (not bm!631018))

(assert (not b!6947167))

(assert (not b!6947096))

(assert (not d!2168721))

(assert (not b!6947093))

(assert (not bm!631004))

(assert (not b!6947198))

(assert (not b!6947077))

(assert (not d!2168717))

(assert (not d!2168729))

(assert (not b!6947192))

(assert (not b!6947185))

(assert (not b!6947158))

(assert (not b!6947082))

(assert (not b!6947200))

(assert (not b!6947202))

(assert (not b!6947086))

(assert (not b!6947091))

(assert (not bm!631002))

(assert (not b!6947189))

(assert (not b!6947080))

(assert (not d!2168749))

(assert (not b_lambda!260347))

(assert (not b!6947183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

