; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!285558 () Bool)

(assert start!285558)

(declare-fun b!2939927 () Bool)

(declare-fun e!1852894 () Bool)

(declare-fun e!1852899 () Bool)

(assert (=> b!2939927 (= e!1852894 (not e!1852899))))

(declare-fun res!1213437 () Bool)

(assert (=> b!2939927 (=> res!1213437 e!1852899)))

(declare-fun lt!1029879 () Bool)

(declare-datatypes ((C!18370 0))(
  ( (C!18371 (val!11221 Int)) )
))
(declare-datatypes ((Regex!9092 0))(
  ( (ElementMatch!9092 (c!480624 C!18370)) (Concat!14413 (regOne!18696 Regex!9092) (regTwo!18696 Regex!9092)) (EmptyExpr!9092) (Star!9092 (reg!9421 Regex!9092)) (EmptyLang!9092) (Union!9092 (regOne!18697 Regex!9092) (regTwo!18697 Regex!9092)) )
))
(declare-fun r!17423 () Regex!9092)

(assert (=> b!2939927 (= res!1213437 (or lt!1029879 (not (is-Concat!14413 r!17423))))))

(declare-datatypes ((List!34957 0))(
  ( (Nil!34833) (Cons!34833 (h!40253 C!18370) (t!234022 List!34957)) )
))
(declare-fun s!11993 () List!34957)

(declare-fun matchRSpec!1229 (Regex!9092 List!34957) Bool)

(assert (=> b!2939927 (= lt!1029879 (matchRSpec!1229 r!17423 s!11993))))

(declare-fun matchR!3974 (Regex!9092 List!34957) Bool)

(assert (=> b!2939927 (= lt!1029879 (matchR!3974 r!17423 s!11993))))

(declare-datatypes ((Unit!48563 0))(
  ( (Unit!48564) )
))
(declare-fun lt!1029876 () Unit!48563)

(declare-fun mainMatchTheorem!1229 (Regex!9092 List!34957) Unit!48563)

(assert (=> b!2939927 (= lt!1029876 (mainMatchTheorem!1229 r!17423 s!11993))))

(declare-fun b!2939928 () Bool)

(declare-fun e!1852898 () Bool)

(declare-fun tp_is_empty!15747 () Bool)

(declare-fun tp!941029 () Bool)

(assert (=> b!2939928 (= e!1852898 (and tp_is_empty!15747 tp!941029))))

(declare-fun b!2939929 () Bool)

(declare-fun res!1213435 () Bool)

(declare-fun e!1852896 () Bool)

(assert (=> b!2939929 (=> res!1213435 e!1852896)))

(declare-fun lt!1029877 () Regex!9092)

(declare-fun isEmptyLang!218 (Regex!9092) Bool)

(assert (=> b!2939929 (= res!1213435 (not (isEmptyLang!218 lt!1029877)))))

(declare-fun b!2939930 () Bool)

(declare-fun e!1852897 () Bool)

(declare-fun tp!941027 () Bool)

(assert (=> b!2939930 (= e!1852897 tp!941027)))

(declare-fun b!2939931 () Bool)

(declare-fun tp!941030 () Bool)

(declare-fun tp!941028 () Bool)

(assert (=> b!2939931 (= e!1852897 (and tp!941030 tp!941028))))

(declare-fun b!2939932 () Bool)

(declare-fun tp!941026 () Bool)

(declare-fun tp!941031 () Bool)

(assert (=> b!2939932 (= e!1852897 (and tp!941026 tp!941031))))

(declare-fun b!2939933 () Bool)

(assert (=> b!2939933 (= e!1852899 e!1852896)))

(declare-fun res!1213438 () Bool)

(assert (=> b!2939933 (=> res!1213438 e!1852896)))

(declare-fun lt!1029880 () Regex!9092)

(assert (=> b!2939933 (= res!1213438 (isEmptyLang!218 lt!1029880))))

(declare-fun simplify!97 (Regex!9092) Regex!9092)

(assert (=> b!2939933 (= lt!1029877 (simplify!97 (regTwo!18696 r!17423)))))

(assert (=> b!2939933 (= lt!1029880 (simplify!97 (regOne!18696 r!17423)))))

(declare-fun b!2939934 () Bool)

(declare-fun res!1213440 () Bool)

(assert (=> b!2939934 (=> res!1213440 e!1852899)))

(declare-fun isEmpty!19094 (List!34957) Bool)

(assert (=> b!2939934 (= res!1213440 (isEmpty!19094 s!11993))))

(declare-fun res!1213436 () Bool)

(assert (=> start!285558 (=> (not res!1213436) (not e!1852894))))

(declare-fun validRegex!3825 (Regex!9092) Bool)

(assert (=> start!285558 (= res!1213436 (validRegex!3825 r!17423))))

(assert (=> start!285558 e!1852894))

(assert (=> start!285558 e!1852897))

(assert (=> start!285558 e!1852898))

(declare-fun b!2939926 () Bool)

(assert (=> b!2939926 (= e!1852897 tp_is_empty!15747)))

(declare-fun b!2939935 () Bool)

(declare-fun e!1852895 () Bool)

(assert (=> b!2939935 (= e!1852896 e!1852895)))

(declare-fun res!1213439 () Bool)

(assert (=> b!2939935 (=> res!1213439 e!1852895)))

(declare-fun lt!1029878 () Bool)

(assert (=> b!2939935 (= res!1213439 lt!1029878)))

(assert (=> b!2939935 (= lt!1029878 (matchR!3974 lt!1029877 s!11993))))

(assert (=> b!2939935 (= lt!1029878 (matchR!3974 (regTwo!18696 r!17423) s!11993))))

(declare-fun lt!1029881 () Unit!48563)

(declare-fun lemmaSimplifySound!83 (Regex!9092 List!34957) Unit!48563)

(assert (=> b!2939935 (= lt!1029881 (lemmaSimplifySound!83 (regTwo!18696 r!17423) s!11993))))

(declare-fun b!2939936 () Bool)

(assert (=> b!2939936 (= e!1852895 (validRegex!3825 (simplify!97 r!17423)))))

(assert (= (and start!285558 res!1213436) b!2939927))

(assert (= (and b!2939927 (not res!1213437)) b!2939934))

(assert (= (and b!2939934 (not res!1213440)) b!2939933))

(assert (= (and b!2939933 (not res!1213438)) b!2939929))

(assert (= (and b!2939929 (not res!1213435)) b!2939935))

(assert (= (and b!2939935 (not res!1213439)) b!2939936))

(assert (= (and start!285558 (is-ElementMatch!9092 r!17423)) b!2939926))

(assert (= (and start!285558 (is-Concat!14413 r!17423)) b!2939932))

(assert (= (and start!285558 (is-Star!9092 r!17423)) b!2939930))

(assert (= (and start!285558 (is-Union!9092 r!17423)) b!2939931))

(assert (= (and start!285558 (is-Cons!34833 s!11993)) b!2939928))

(declare-fun m!3325021 () Bool)

(assert (=> b!2939927 m!3325021))

(declare-fun m!3325023 () Bool)

(assert (=> b!2939927 m!3325023))

(declare-fun m!3325025 () Bool)

(assert (=> b!2939927 m!3325025))

(declare-fun m!3325027 () Bool)

(assert (=> b!2939933 m!3325027))

(declare-fun m!3325029 () Bool)

(assert (=> b!2939933 m!3325029))

(declare-fun m!3325031 () Bool)

(assert (=> b!2939933 m!3325031))

(declare-fun m!3325033 () Bool)

(assert (=> b!2939934 m!3325033))

(declare-fun m!3325035 () Bool)

(assert (=> b!2939935 m!3325035))

(declare-fun m!3325037 () Bool)

(assert (=> b!2939935 m!3325037))

(declare-fun m!3325039 () Bool)

(assert (=> b!2939935 m!3325039))

(declare-fun m!3325041 () Bool)

(assert (=> b!2939929 m!3325041))

(declare-fun m!3325043 () Bool)

(assert (=> start!285558 m!3325043))

(declare-fun m!3325045 () Bool)

(assert (=> b!2939936 m!3325045))

(assert (=> b!2939936 m!3325045))

(declare-fun m!3325047 () Bool)

(assert (=> b!2939936 m!3325047))

(push 1)

(assert (not b!2939936))

(assert (not b!2939929))

(assert (not b!2939930))

(assert (not b!2939932))

(assert (not b!2939933))

(assert (not b!2939934))

(assert (not b!2939927))

(assert (not b!2939928))

(assert (not start!285558))

(assert (not b!2939935))

(assert tp_is_empty!15747)

(assert (not b!2939931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2939998 () Bool)

(declare-fun e!1852937 () Bool)

(declare-fun lt!1029902 () Bool)

(declare-fun call!193515 () Bool)

(assert (=> b!2939998 (= e!1852937 (= lt!1029902 call!193515))))

(declare-fun b!2939999 () Bool)

(declare-fun res!1213482 () Bool)

(declare-fun e!1852933 () Bool)

(assert (=> b!2939999 (=> (not res!1213482) (not e!1852933))))

(assert (=> b!2939999 (= res!1213482 (not call!193515))))

(declare-fun b!2940000 () Bool)

(declare-fun res!1213477 () Bool)

(declare-fun e!1852935 () Bool)

(assert (=> b!2940000 (=> res!1213477 e!1852935)))

(assert (=> b!2940000 (= res!1213477 e!1852933)))

(declare-fun res!1213478 () Bool)

(assert (=> b!2940000 (=> (not res!1213478) (not e!1852933))))

(assert (=> b!2940000 (= res!1213478 lt!1029902)))

(declare-fun b!2940001 () Bool)

(declare-fun res!1213481 () Bool)

(assert (=> b!2940001 (=> (not res!1213481) (not e!1852933))))

(declare-fun tail!4768 (List!34957) List!34957)

(assert (=> b!2940001 (= res!1213481 (isEmpty!19094 (tail!4768 s!11993)))))

(declare-fun b!2940002 () Bool)

(declare-fun e!1852932 () Bool)

(declare-fun e!1852934 () Bool)

(assert (=> b!2940002 (= e!1852932 e!1852934)))

(declare-fun res!1213475 () Bool)

(assert (=> b!2940002 (=> res!1213475 e!1852934)))

(assert (=> b!2940002 (= res!1213475 call!193515)))

(declare-fun b!2940003 () Bool)

(declare-fun e!1852938 () Bool)

(assert (=> b!2940003 (= e!1852937 e!1852938)))

(declare-fun c!480634 () Bool)

(assert (=> b!2940003 (= c!480634 (is-EmptyLang!9092 lt!1029877))))

(declare-fun bm!193510 () Bool)

(assert (=> bm!193510 (= call!193515 (isEmpty!19094 s!11993))))

(declare-fun b!2940004 () Bool)

(declare-fun res!1213480 () Bool)

(assert (=> b!2940004 (=> res!1213480 e!1852934)))

(assert (=> b!2940004 (= res!1213480 (not (isEmpty!19094 (tail!4768 s!11993))))))

(declare-fun b!2940005 () Bool)

(declare-fun head!6542 (List!34957) C!18370)

(assert (=> b!2940005 (= e!1852933 (= (head!6542 s!11993) (c!480624 lt!1029877)))))

(declare-fun b!2940006 () Bool)

(declare-fun e!1852936 () Bool)

(declare-fun nullable!2872 (Regex!9092) Bool)

(assert (=> b!2940006 (= e!1852936 (nullable!2872 lt!1029877))))

(declare-fun b!2940007 () Bool)

(declare-fun derivativeStep!2483 (Regex!9092 C!18370) Regex!9092)

(assert (=> b!2940007 (= e!1852936 (matchR!3974 (derivativeStep!2483 lt!1029877 (head!6542 s!11993)) (tail!4768 s!11993)))))

(declare-fun b!2940008 () Bool)

(assert (=> b!2940008 (= e!1852934 (not (= (head!6542 s!11993) (c!480624 lt!1029877))))))

(declare-fun b!2940009 () Bool)

(assert (=> b!2940009 (= e!1852938 (not lt!1029902))))

(declare-fun d!840108 () Bool)

(assert (=> d!840108 e!1852937))

(declare-fun c!480633 () Bool)

(assert (=> d!840108 (= c!480633 (is-EmptyExpr!9092 lt!1029877))))

(assert (=> d!840108 (= lt!1029902 e!1852936)))

(declare-fun c!480632 () Bool)

(assert (=> d!840108 (= c!480632 (isEmpty!19094 s!11993))))

(assert (=> d!840108 (validRegex!3825 lt!1029877)))

(assert (=> d!840108 (= (matchR!3974 lt!1029877 s!11993) lt!1029902)))

(declare-fun b!2940010 () Bool)

(assert (=> b!2940010 (= e!1852935 e!1852932)))

(declare-fun res!1213479 () Bool)

(assert (=> b!2940010 (=> (not res!1213479) (not e!1852932))))

(assert (=> b!2940010 (= res!1213479 (not lt!1029902))))

(declare-fun b!2940011 () Bool)

(declare-fun res!1213476 () Bool)

(assert (=> b!2940011 (=> res!1213476 e!1852935)))

(assert (=> b!2940011 (= res!1213476 (not (is-ElementMatch!9092 lt!1029877)))))

(assert (=> b!2940011 (= e!1852938 e!1852935)))

(assert (= (and d!840108 c!480632) b!2940006))

(assert (= (and d!840108 (not c!480632)) b!2940007))

(assert (= (and d!840108 c!480633) b!2939998))

(assert (= (and d!840108 (not c!480633)) b!2940003))

(assert (= (and b!2940003 c!480634) b!2940009))

(assert (= (and b!2940003 (not c!480634)) b!2940011))

(assert (= (and b!2940011 (not res!1213476)) b!2940000))

(assert (= (and b!2940000 res!1213478) b!2939999))

(assert (= (and b!2939999 res!1213482) b!2940001))

(assert (= (and b!2940001 res!1213481) b!2940005))

(assert (= (and b!2940000 (not res!1213477)) b!2940010))

(assert (= (and b!2940010 res!1213479) b!2940002))

(assert (= (and b!2940002 (not res!1213475)) b!2940004))

(assert (= (and b!2940004 (not res!1213480)) b!2940008))

(assert (= (or b!2939998 b!2939999 b!2940002) bm!193510))

(declare-fun m!3325077 () Bool)

(assert (=> b!2940001 m!3325077))

(assert (=> b!2940001 m!3325077))

(declare-fun m!3325079 () Bool)

(assert (=> b!2940001 m!3325079))

(declare-fun m!3325081 () Bool)

(assert (=> b!2940007 m!3325081))

(assert (=> b!2940007 m!3325081))

(declare-fun m!3325083 () Bool)

(assert (=> b!2940007 m!3325083))

(assert (=> b!2940007 m!3325077))

(assert (=> b!2940007 m!3325083))

(assert (=> b!2940007 m!3325077))

(declare-fun m!3325085 () Bool)

(assert (=> b!2940007 m!3325085))

(assert (=> d!840108 m!3325033))

(declare-fun m!3325087 () Bool)

(assert (=> d!840108 m!3325087))

(assert (=> b!2940008 m!3325081))

(assert (=> b!2940004 m!3325077))

(assert (=> b!2940004 m!3325077))

(assert (=> b!2940004 m!3325079))

(assert (=> b!2940005 m!3325081))

(declare-fun m!3325089 () Bool)

(assert (=> b!2940006 m!3325089))

(assert (=> bm!193510 m!3325033))

(assert (=> b!2939935 d!840108))

(declare-fun b!2940012 () Bool)

(declare-fun e!1852944 () Bool)

(declare-fun lt!1029903 () Bool)

(declare-fun call!193516 () Bool)

(assert (=> b!2940012 (= e!1852944 (= lt!1029903 call!193516))))

(declare-fun b!2940013 () Bool)

(declare-fun res!1213490 () Bool)

(declare-fun e!1852940 () Bool)

(assert (=> b!2940013 (=> (not res!1213490) (not e!1852940))))

(assert (=> b!2940013 (= res!1213490 (not call!193516))))

(declare-fun b!2940014 () Bool)

(declare-fun res!1213485 () Bool)

(declare-fun e!1852942 () Bool)

(assert (=> b!2940014 (=> res!1213485 e!1852942)))

(assert (=> b!2940014 (= res!1213485 e!1852940)))

(declare-fun res!1213486 () Bool)

(assert (=> b!2940014 (=> (not res!1213486) (not e!1852940))))

(assert (=> b!2940014 (= res!1213486 lt!1029903)))

(declare-fun b!2940015 () Bool)

(declare-fun res!1213489 () Bool)

(assert (=> b!2940015 (=> (not res!1213489) (not e!1852940))))

(assert (=> b!2940015 (= res!1213489 (isEmpty!19094 (tail!4768 s!11993)))))

(declare-fun b!2940016 () Bool)

(declare-fun e!1852939 () Bool)

(declare-fun e!1852941 () Bool)

(assert (=> b!2940016 (= e!1852939 e!1852941)))

(declare-fun res!1213483 () Bool)

(assert (=> b!2940016 (=> res!1213483 e!1852941)))

(assert (=> b!2940016 (= res!1213483 call!193516)))

(declare-fun b!2940017 () Bool)

(declare-fun e!1852945 () Bool)

(assert (=> b!2940017 (= e!1852944 e!1852945)))

(declare-fun c!480637 () Bool)

(assert (=> b!2940017 (= c!480637 (is-EmptyLang!9092 (regTwo!18696 r!17423)))))

(declare-fun bm!193511 () Bool)

(assert (=> bm!193511 (= call!193516 (isEmpty!19094 s!11993))))

(declare-fun b!2940018 () Bool)

(declare-fun res!1213488 () Bool)

(assert (=> b!2940018 (=> res!1213488 e!1852941)))

(assert (=> b!2940018 (= res!1213488 (not (isEmpty!19094 (tail!4768 s!11993))))))

(declare-fun b!2940019 () Bool)

(assert (=> b!2940019 (= e!1852940 (= (head!6542 s!11993) (c!480624 (regTwo!18696 r!17423))))))

(declare-fun b!2940020 () Bool)

(declare-fun e!1852943 () Bool)

(assert (=> b!2940020 (= e!1852943 (nullable!2872 (regTwo!18696 r!17423)))))

(declare-fun b!2940021 () Bool)

(assert (=> b!2940021 (= e!1852943 (matchR!3974 (derivativeStep!2483 (regTwo!18696 r!17423) (head!6542 s!11993)) (tail!4768 s!11993)))))

(declare-fun b!2940022 () Bool)

(assert (=> b!2940022 (= e!1852941 (not (= (head!6542 s!11993) (c!480624 (regTwo!18696 r!17423)))))))

(declare-fun b!2940023 () Bool)

(assert (=> b!2940023 (= e!1852945 (not lt!1029903))))

(declare-fun d!840112 () Bool)

(assert (=> d!840112 e!1852944))

(declare-fun c!480636 () Bool)

(assert (=> d!840112 (= c!480636 (is-EmptyExpr!9092 (regTwo!18696 r!17423)))))

(assert (=> d!840112 (= lt!1029903 e!1852943)))

(declare-fun c!480635 () Bool)

(assert (=> d!840112 (= c!480635 (isEmpty!19094 s!11993))))

(assert (=> d!840112 (validRegex!3825 (regTwo!18696 r!17423))))

(assert (=> d!840112 (= (matchR!3974 (regTwo!18696 r!17423) s!11993) lt!1029903)))

(declare-fun b!2940024 () Bool)

(assert (=> b!2940024 (= e!1852942 e!1852939)))

(declare-fun res!1213487 () Bool)

(assert (=> b!2940024 (=> (not res!1213487) (not e!1852939))))

(assert (=> b!2940024 (= res!1213487 (not lt!1029903))))

(declare-fun b!2940025 () Bool)

(declare-fun res!1213484 () Bool)

(assert (=> b!2940025 (=> res!1213484 e!1852942)))

(assert (=> b!2940025 (= res!1213484 (not (is-ElementMatch!9092 (regTwo!18696 r!17423))))))

(assert (=> b!2940025 (= e!1852945 e!1852942)))

(assert (= (and d!840112 c!480635) b!2940020))

(assert (= (and d!840112 (not c!480635)) b!2940021))

(assert (= (and d!840112 c!480636) b!2940012))

(assert (= (and d!840112 (not c!480636)) b!2940017))

(assert (= (and b!2940017 c!480637) b!2940023))

(assert (= (and b!2940017 (not c!480637)) b!2940025))

(assert (= (and b!2940025 (not res!1213484)) b!2940014))

(assert (= (and b!2940014 res!1213486) b!2940013))

(assert (= (and b!2940013 res!1213490) b!2940015))

(assert (= (and b!2940015 res!1213489) b!2940019))

(assert (= (and b!2940014 (not res!1213485)) b!2940024))

(assert (= (and b!2940024 res!1213487) b!2940016))

(assert (= (and b!2940016 (not res!1213483)) b!2940018))

(assert (= (and b!2940018 (not res!1213488)) b!2940022))

(assert (= (or b!2940012 b!2940013 b!2940016) bm!193511))

(assert (=> b!2940015 m!3325077))

(assert (=> b!2940015 m!3325077))

(assert (=> b!2940015 m!3325079))

(assert (=> b!2940021 m!3325081))

(assert (=> b!2940021 m!3325081))

(declare-fun m!3325091 () Bool)

(assert (=> b!2940021 m!3325091))

(assert (=> b!2940021 m!3325077))

(assert (=> b!2940021 m!3325091))

(assert (=> b!2940021 m!3325077))

(declare-fun m!3325093 () Bool)

(assert (=> b!2940021 m!3325093))

(assert (=> d!840112 m!3325033))

(declare-fun m!3325095 () Bool)

(assert (=> d!840112 m!3325095))

(assert (=> b!2940022 m!3325081))

(assert (=> b!2940018 m!3325077))

(assert (=> b!2940018 m!3325077))

(assert (=> b!2940018 m!3325079))

(assert (=> b!2940019 m!3325081))

(declare-fun m!3325097 () Bool)

(assert (=> b!2940020 m!3325097))

(assert (=> bm!193511 m!3325033))

(assert (=> b!2939935 d!840112))

(declare-fun d!840114 () Bool)

(assert (=> d!840114 (= (matchR!3974 (regTwo!18696 r!17423) s!11993) (matchR!3974 (simplify!97 (regTwo!18696 r!17423)) s!11993))))

(declare-fun lt!1029908 () Unit!48563)

(declare-fun choose!17387 (Regex!9092 List!34957) Unit!48563)

(assert (=> d!840114 (= lt!1029908 (choose!17387 (regTwo!18696 r!17423) s!11993))))

(assert (=> d!840114 (validRegex!3825 (regTwo!18696 r!17423))))

(assert (=> d!840114 (= (lemmaSimplifySound!83 (regTwo!18696 r!17423) s!11993) lt!1029908)))

(declare-fun bs!525493 () Bool)

(assert (= bs!525493 d!840114))

(assert (=> bs!525493 m!3325095))

(declare-fun m!3325099 () Bool)

(assert (=> bs!525493 m!3325099))

(assert (=> bs!525493 m!3325029))

(declare-fun m!3325101 () Bool)

(assert (=> bs!525493 m!3325101))

(assert (=> bs!525493 m!3325029))

(assert (=> bs!525493 m!3325037))

(assert (=> b!2939935 d!840114))

(declare-fun d!840116 () Bool)

(assert (=> d!840116 (= (isEmptyLang!218 lt!1029877) (is-EmptyLang!9092 lt!1029877))))

(assert (=> b!2939929 d!840116))

(declare-fun d!840118 () Bool)

(assert (=> d!840118 (= (isEmpty!19094 s!11993) (is-Nil!34833 s!11993))))

(assert (=> b!2939934 d!840118))

(declare-fun d!840120 () Bool)

(assert (=> d!840120 (= (isEmptyLang!218 lt!1029880) (is-EmptyLang!9092 lt!1029880))))

(assert (=> b!2939933 d!840120))

(declare-fun lt!1029927 () Regex!9092)

(declare-fun c!480675 () Bool)

(declare-fun lt!1029928 () Regex!9092)

(declare-fun c!480674 () Bool)

(declare-fun lt!1029923 () Regex!9092)

(declare-fun call!193536 () Bool)

(declare-fun bm!193530 () Bool)

(assert (=> bm!193530 (= call!193536 (isEmptyLang!218 (ite c!480674 lt!1029923 (ite c!480675 lt!1029927 lt!1029928))))))

(declare-fun b!2940132 () Bool)

(declare-fun e!1853003 () Regex!9092)

(assert (=> b!2940132 (= e!1853003 (regTwo!18696 r!17423))))

(declare-fun b!2940133 () Bool)

(declare-fun e!1853006 () Regex!9092)

(assert (=> b!2940133 (= e!1853006 EmptyLang!9092)))

(declare-fun b!2940134 () Bool)

(declare-fun e!1853013 () Bool)

(declare-fun call!193537 () Bool)

(assert (=> b!2940134 (= e!1853013 call!193537)))

(declare-fun b!2940135 () Bool)

(declare-fun e!1853011 () Regex!9092)

(assert (=> b!2940135 (= e!1853011 lt!1029927)))

(declare-fun b!2940136 () Bool)

(declare-fun e!1853007 () Regex!9092)

(assert (=> b!2940136 (= e!1853007 EmptyExpr!9092)))

(declare-fun b!2940137 () Bool)

(declare-fun e!1853004 () Regex!9092)

(assert (=> b!2940137 (= e!1853004 EmptyLang!9092)))

(declare-fun d!840122 () Bool)

(declare-fun e!1853015 () Bool)

(assert (=> d!840122 e!1853015))

(declare-fun res!1213531 () Bool)

(assert (=> d!840122 (=> (not res!1213531) (not e!1853015))))

(declare-fun lt!1029924 () Regex!9092)

(assert (=> d!840122 (= res!1213531 (validRegex!3825 lt!1029924))))

(assert (=> d!840122 (= lt!1029924 e!1853006)))

(declare-fun c!480676 () Bool)

(assert (=> d!840122 (= c!480676 (is-EmptyLang!9092 (regTwo!18696 r!17423)))))

(assert (=> d!840122 (validRegex!3825 (regTwo!18696 r!17423))))

(assert (=> d!840122 (= (simplify!97 (regTwo!18696 r!17423)) lt!1029924)))

(declare-fun b!2940138 () Bool)

(declare-fun e!1853009 () Regex!9092)

(assert (=> b!2940138 (= e!1853009 (Star!9092 lt!1029923))))

(declare-fun b!2940139 () Bool)

(declare-fun e!1853008 () Regex!9092)

(declare-fun lt!1029925 () Regex!9092)

(assert (=> b!2940139 (= e!1853008 lt!1029925)))

(declare-fun b!2940140 () Bool)

(declare-fun c!480678 () Bool)

(declare-fun call!193539 () Bool)

(assert (=> b!2940140 (= c!480678 call!193539)))

(declare-fun e!1853012 () Regex!9092)

(assert (=> b!2940140 (= e!1853004 e!1853012)))

(declare-fun b!2940141 () Bool)

(declare-fun c!480673 () Bool)

(declare-fun e!1853005 () Bool)

(assert (=> b!2940141 (= c!480673 e!1853005)))

(declare-fun res!1213529 () Bool)

(assert (=> b!2940141 (=> res!1213529 e!1853005)))

(assert (=> b!2940141 (= res!1213529 call!193536)))

(declare-fun call!193535 () Regex!9092)

(assert (=> b!2940141 (= lt!1029923 call!193535)))

(declare-fun e!1853014 () Regex!9092)

(assert (=> b!2940141 (= e!1853014 e!1853009)))

(declare-fun b!2940142 () Bool)

(declare-fun lt!1029926 () Regex!9092)

(assert (=> b!2940142 (= e!1853011 (Union!9092 lt!1029927 lt!1029926))))

(declare-fun b!2940143 () Bool)

(assert (=> b!2940143 (= e!1853007 e!1853014)))

(assert (=> b!2940143 (= c!480674 (is-Star!9092 (regTwo!18696 r!17423)))))

(declare-fun b!2940144 () Bool)

(assert (=> b!2940144 (= e!1853012 lt!1029928)))

(declare-fun bm!193531 () Bool)

(declare-fun call!193540 () Regex!9092)

(assert (=> bm!193531 (= call!193540 (simplify!97 (ite c!480675 (regOne!18697 (regTwo!18696 r!17423)) (regTwo!18696 (regTwo!18696 r!17423)))))))

(declare-fun bm!193532 () Bool)

(assert (=> bm!193532 (= call!193535 (simplify!97 (ite c!480674 (reg!9421 (regTwo!18696 r!17423)) (ite c!480675 (regTwo!18697 (regTwo!18696 r!17423)) (regOne!18696 (regTwo!18696 r!17423))))))))

(declare-fun call!193538 () Bool)

(declare-fun bm!193533 () Bool)

(assert (=> bm!193533 (= call!193538 (isEmptyLang!218 (ite c!480675 lt!1029926 lt!1029925)))))

(declare-fun b!2940145 () Bool)

(declare-fun c!480680 () Bool)

(assert (=> b!2940145 (= c!480680 (is-EmptyExpr!9092 (regTwo!18696 r!17423)))))

(assert (=> b!2940145 (= e!1853003 e!1853007)))

(declare-fun bm!193534 () Bool)

(declare-fun isEmptyExpr!299 (Regex!9092) Bool)

(assert (=> bm!193534 (= call!193539 (isEmptyExpr!299 (ite c!480674 lt!1029923 lt!1029925)))))

(declare-fun b!2940146 () Bool)

(assert (=> b!2940146 (= e!1853008 (Concat!14413 lt!1029925 lt!1029928))))

(declare-fun b!2940147 () Bool)

(assert (=> b!2940147 (= e!1853005 call!193539)))

(declare-fun b!2940148 () Bool)

(assert (=> b!2940148 (= e!1853006 e!1853003)))

(declare-fun c!480672 () Bool)

(assert (=> b!2940148 (= c!480672 (is-ElementMatch!9092 (regTwo!18696 r!17423)))))

(declare-fun bm!193535 () Bool)

(assert (=> bm!193535 (= call!193537 call!193536)))

(declare-fun b!2940149 () Bool)

(assert (=> b!2940149 (= e!1853015 (= (nullable!2872 lt!1029924) (nullable!2872 (regTwo!18696 r!17423))))))

(declare-fun b!2940150 () Bool)

(assert (=> b!2940150 (= e!1853012 e!1853008)))

(declare-fun c!480682 () Bool)

(assert (=> b!2940150 (= c!480682 (isEmptyExpr!299 lt!1029928))))

(declare-fun b!2940151 () Bool)

(declare-fun e!1853002 () Regex!9092)

(assert (=> b!2940151 (= e!1853002 e!1853004)))

(declare-fun call!193541 () Regex!9092)

(assert (=> b!2940151 (= lt!1029925 call!193541)))

(assert (=> b!2940151 (= lt!1029928 call!193540)))

(declare-fun res!1213530 () Bool)

(assert (=> b!2940151 (= res!1213530 call!193538)))

(assert (=> b!2940151 (=> res!1213530 e!1853013)))

(declare-fun c!480681 () Bool)

(assert (=> b!2940151 (= c!480681 e!1853013)))

(declare-fun b!2940152 () Bool)

(assert (=> b!2940152 (= e!1853009 EmptyExpr!9092)))

(declare-fun b!2940153 () Bool)

(declare-fun e!1853010 () Regex!9092)

(assert (=> b!2940153 (= e!1853010 lt!1029926)))

(declare-fun b!2940154 () Bool)

(declare-fun c!480677 () Bool)

(assert (=> b!2940154 (= c!480677 call!193538)))

(assert (=> b!2940154 (= e!1853010 e!1853011)))

(declare-fun b!2940155 () Bool)

(assert (=> b!2940155 (= c!480675 (is-Union!9092 (regTwo!18696 r!17423)))))

(assert (=> b!2940155 (= e!1853014 e!1853002)))

(declare-fun b!2940156 () Bool)

(assert (=> b!2940156 (= e!1853002 e!1853010)))

(assert (=> b!2940156 (= lt!1029927 call!193540)))

(assert (=> b!2940156 (= lt!1029926 call!193541)))

(declare-fun c!480679 () Bool)

(assert (=> b!2940156 (= c!480679 call!193537)))

(declare-fun bm!193536 () Bool)

(assert (=> bm!193536 (= call!193541 call!193535)))

(assert (= (and d!840122 c!480676) b!2940133))

(assert (= (and d!840122 (not c!480676)) b!2940148))

(assert (= (and b!2940148 c!480672) b!2940132))

(assert (= (and b!2940148 (not c!480672)) b!2940145))

(assert (= (and b!2940145 c!480680) b!2940136))

(assert (= (and b!2940145 (not c!480680)) b!2940143))

(assert (= (and b!2940143 c!480674) b!2940141))

(assert (= (and b!2940143 (not c!480674)) b!2940155))

(assert (= (and b!2940141 (not res!1213529)) b!2940147))

(assert (= (and b!2940141 c!480673) b!2940152))

(assert (= (and b!2940141 (not c!480673)) b!2940138))

(assert (= (and b!2940155 c!480675) b!2940156))

(assert (= (and b!2940155 (not c!480675)) b!2940151))

(assert (= (and b!2940156 c!480679) b!2940153))

(assert (= (and b!2940156 (not c!480679)) b!2940154))

(assert (= (and b!2940154 c!480677) b!2940135))

(assert (= (and b!2940154 (not c!480677)) b!2940142))

(assert (= (and b!2940151 (not res!1213530)) b!2940134))

(assert (= (and b!2940151 c!480681) b!2940137))

(assert (= (and b!2940151 (not c!480681)) b!2940140))

(assert (= (and b!2940140 c!480678) b!2940144))

(assert (= (and b!2940140 (not c!480678)) b!2940150))

(assert (= (and b!2940150 c!480682) b!2940139))

(assert (= (and b!2940150 (not c!480682)) b!2940146))

(assert (= (or b!2940156 b!2940151) bm!193531))

(assert (= (or b!2940156 b!2940151) bm!193536))

(assert (= (or b!2940156 b!2940134) bm!193535))

(assert (= (or b!2940154 b!2940151) bm!193533))

(assert (= (or b!2940147 b!2940140) bm!193534))

(assert (= (or b!2940141 bm!193536) bm!193532))

(assert (= (or b!2940141 bm!193535) bm!193530))

(assert (= (and d!840122 res!1213531) b!2940149))

(declare-fun m!3325125 () Bool)

(assert (=> bm!193534 m!3325125))

(declare-fun m!3325127 () Bool)

(assert (=> bm!193531 m!3325127))

(declare-fun m!3325129 () Bool)

(assert (=> bm!193530 m!3325129))

(declare-fun m!3325131 () Bool)

(assert (=> d!840122 m!3325131))

(assert (=> d!840122 m!3325095))

(declare-fun m!3325133 () Bool)

(assert (=> bm!193533 m!3325133))

(declare-fun m!3325135 () Bool)

(assert (=> b!2940149 m!3325135))

(assert (=> b!2940149 m!3325097))

(declare-fun m!3325137 () Bool)

(assert (=> b!2940150 m!3325137))

(declare-fun m!3325139 () Bool)

(assert (=> bm!193532 m!3325139))

(assert (=> b!2939933 d!840122))

(declare-fun call!193543 () Bool)

(declare-fun c!480686 () Bool)

(declare-fun lt!1029929 () Regex!9092)

(declare-fun lt!1029934 () Regex!9092)

(declare-fun bm!193537 () Bool)

(declare-fun lt!1029933 () Regex!9092)

(declare-fun c!480685 () Bool)

(assert (=> bm!193537 (= call!193543 (isEmptyLang!218 (ite c!480685 lt!1029929 (ite c!480686 lt!1029933 lt!1029934))))))

(declare-fun b!2940157 () Bool)

(declare-fun e!1853017 () Regex!9092)

(assert (=> b!2940157 (= e!1853017 (regOne!18696 r!17423))))

(declare-fun b!2940158 () Bool)

(declare-fun e!1853020 () Regex!9092)

(assert (=> b!2940158 (= e!1853020 EmptyLang!9092)))

(declare-fun b!2940159 () Bool)

(declare-fun e!1853027 () Bool)

(declare-fun call!193544 () Bool)

(assert (=> b!2940159 (= e!1853027 call!193544)))

(declare-fun b!2940160 () Bool)

(declare-fun e!1853025 () Regex!9092)

(assert (=> b!2940160 (= e!1853025 lt!1029933)))

(declare-fun b!2940161 () Bool)

(declare-fun e!1853021 () Regex!9092)

(assert (=> b!2940161 (= e!1853021 EmptyExpr!9092)))

(declare-fun b!2940162 () Bool)

(declare-fun e!1853018 () Regex!9092)

(assert (=> b!2940162 (= e!1853018 EmptyLang!9092)))

(declare-fun d!840128 () Bool)

(declare-fun e!1853029 () Bool)

(assert (=> d!840128 e!1853029))

(declare-fun res!1213534 () Bool)

(assert (=> d!840128 (=> (not res!1213534) (not e!1853029))))

(declare-fun lt!1029930 () Regex!9092)

(assert (=> d!840128 (= res!1213534 (validRegex!3825 lt!1029930))))

(assert (=> d!840128 (= lt!1029930 e!1853020)))

(declare-fun c!480687 () Bool)

(assert (=> d!840128 (= c!480687 (is-EmptyLang!9092 (regOne!18696 r!17423)))))

(assert (=> d!840128 (validRegex!3825 (regOne!18696 r!17423))))

(assert (=> d!840128 (= (simplify!97 (regOne!18696 r!17423)) lt!1029930)))

(declare-fun b!2940163 () Bool)

(declare-fun e!1853023 () Regex!9092)

(assert (=> b!2940163 (= e!1853023 (Star!9092 lt!1029929))))

(declare-fun b!2940164 () Bool)

(declare-fun e!1853022 () Regex!9092)

(declare-fun lt!1029931 () Regex!9092)

(assert (=> b!2940164 (= e!1853022 lt!1029931)))

(declare-fun b!2940165 () Bool)

(declare-fun c!480689 () Bool)

(declare-fun call!193546 () Bool)

(assert (=> b!2940165 (= c!480689 call!193546)))

(declare-fun e!1853026 () Regex!9092)

(assert (=> b!2940165 (= e!1853018 e!1853026)))

(declare-fun b!2940166 () Bool)

(declare-fun c!480684 () Bool)

(declare-fun e!1853019 () Bool)

(assert (=> b!2940166 (= c!480684 e!1853019)))

(declare-fun res!1213532 () Bool)

(assert (=> b!2940166 (=> res!1213532 e!1853019)))

(assert (=> b!2940166 (= res!1213532 call!193543)))

(declare-fun call!193542 () Regex!9092)

(assert (=> b!2940166 (= lt!1029929 call!193542)))

(declare-fun e!1853028 () Regex!9092)

(assert (=> b!2940166 (= e!1853028 e!1853023)))

(declare-fun b!2940167 () Bool)

(declare-fun lt!1029932 () Regex!9092)

(assert (=> b!2940167 (= e!1853025 (Union!9092 lt!1029933 lt!1029932))))

(declare-fun b!2940168 () Bool)

(assert (=> b!2940168 (= e!1853021 e!1853028)))

(assert (=> b!2940168 (= c!480685 (is-Star!9092 (regOne!18696 r!17423)))))

(declare-fun b!2940169 () Bool)

(assert (=> b!2940169 (= e!1853026 lt!1029934)))

(declare-fun bm!193538 () Bool)

(declare-fun call!193547 () Regex!9092)

(assert (=> bm!193538 (= call!193547 (simplify!97 (ite c!480686 (regOne!18697 (regOne!18696 r!17423)) (regTwo!18696 (regOne!18696 r!17423)))))))

(declare-fun bm!193539 () Bool)

(assert (=> bm!193539 (= call!193542 (simplify!97 (ite c!480685 (reg!9421 (regOne!18696 r!17423)) (ite c!480686 (regTwo!18697 (regOne!18696 r!17423)) (regOne!18696 (regOne!18696 r!17423))))))))

(declare-fun bm!193540 () Bool)

(declare-fun call!193545 () Bool)

(assert (=> bm!193540 (= call!193545 (isEmptyLang!218 (ite c!480686 lt!1029932 lt!1029931)))))

(declare-fun b!2940170 () Bool)

(declare-fun c!480691 () Bool)

(assert (=> b!2940170 (= c!480691 (is-EmptyExpr!9092 (regOne!18696 r!17423)))))

(assert (=> b!2940170 (= e!1853017 e!1853021)))

(declare-fun bm!193541 () Bool)

(assert (=> bm!193541 (= call!193546 (isEmptyExpr!299 (ite c!480685 lt!1029929 lt!1029931)))))

(declare-fun b!2940171 () Bool)

(assert (=> b!2940171 (= e!1853022 (Concat!14413 lt!1029931 lt!1029934))))

(declare-fun b!2940172 () Bool)

(assert (=> b!2940172 (= e!1853019 call!193546)))

(declare-fun b!2940173 () Bool)

(assert (=> b!2940173 (= e!1853020 e!1853017)))

(declare-fun c!480683 () Bool)

(assert (=> b!2940173 (= c!480683 (is-ElementMatch!9092 (regOne!18696 r!17423)))))

(declare-fun bm!193542 () Bool)

(assert (=> bm!193542 (= call!193544 call!193543)))

(declare-fun b!2940174 () Bool)

(assert (=> b!2940174 (= e!1853029 (= (nullable!2872 lt!1029930) (nullable!2872 (regOne!18696 r!17423))))))

(declare-fun b!2940175 () Bool)

(assert (=> b!2940175 (= e!1853026 e!1853022)))

(declare-fun c!480693 () Bool)

(assert (=> b!2940175 (= c!480693 (isEmptyExpr!299 lt!1029934))))

(declare-fun b!2940176 () Bool)

(declare-fun e!1853016 () Regex!9092)

(assert (=> b!2940176 (= e!1853016 e!1853018)))

(declare-fun call!193548 () Regex!9092)

(assert (=> b!2940176 (= lt!1029931 call!193548)))

(assert (=> b!2940176 (= lt!1029934 call!193547)))

(declare-fun res!1213533 () Bool)

(assert (=> b!2940176 (= res!1213533 call!193545)))

(assert (=> b!2940176 (=> res!1213533 e!1853027)))

(declare-fun c!480692 () Bool)

(assert (=> b!2940176 (= c!480692 e!1853027)))

(declare-fun b!2940177 () Bool)

(assert (=> b!2940177 (= e!1853023 EmptyExpr!9092)))

(declare-fun b!2940178 () Bool)

(declare-fun e!1853024 () Regex!9092)

(assert (=> b!2940178 (= e!1853024 lt!1029932)))

(declare-fun b!2940179 () Bool)

(declare-fun c!480688 () Bool)

(assert (=> b!2940179 (= c!480688 call!193545)))

(assert (=> b!2940179 (= e!1853024 e!1853025)))

(declare-fun b!2940180 () Bool)

(assert (=> b!2940180 (= c!480686 (is-Union!9092 (regOne!18696 r!17423)))))

(assert (=> b!2940180 (= e!1853028 e!1853016)))

(declare-fun b!2940181 () Bool)

(assert (=> b!2940181 (= e!1853016 e!1853024)))

(assert (=> b!2940181 (= lt!1029933 call!193547)))

(assert (=> b!2940181 (= lt!1029932 call!193548)))

(declare-fun c!480690 () Bool)

(assert (=> b!2940181 (= c!480690 call!193544)))

(declare-fun bm!193543 () Bool)

(assert (=> bm!193543 (= call!193548 call!193542)))

(assert (= (and d!840128 c!480687) b!2940158))

(assert (= (and d!840128 (not c!480687)) b!2940173))

(assert (= (and b!2940173 c!480683) b!2940157))

(assert (= (and b!2940173 (not c!480683)) b!2940170))

(assert (= (and b!2940170 c!480691) b!2940161))

(assert (= (and b!2940170 (not c!480691)) b!2940168))

(assert (= (and b!2940168 c!480685) b!2940166))

(assert (= (and b!2940168 (not c!480685)) b!2940180))

(assert (= (and b!2940166 (not res!1213532)) b!2940172))

(assert (= (and b!2940166 c!480684) b!2940177))

(assert (= (and b!2940166 (not c!480684)) b!2940163))

(assert (= (and b!2940180 c!480686) b!2940181))

(assert (= (and b!2940180 (not c!480686)) b!2940176))

(assert (= (and b!2940181 c!480690) b!2940178))

(assert (= (and b!2940181 (not c!480690)) b!2940179))

(assert (= (and b!2940179 c!480688) b!2940160))

(assert (= (and b!2940179 (not c!480688)) b!2940167))

(assert (= (and b!2940176 (not res!1213533)) b!2940159))

(assert (= (and b!2940176 c!480692) b!2940162))

(assert (= (and b!2940176 (not c!480692)) b!2940165))

(assert (= (and b!2940165 c!480689) b!2940169))

(assert (= (and b!2940165 (not c!480689)) b!2940175))

(assert (= (and b!2940175 c!480693) b!2940164))

(assert (= (and b!2940175 (not c!480693)) b!2940171))

(assert (= (or b!2940181 b!2940176) bm!193538))

(assert (= (or b!2940181 b!2940176) bm!193543))

(assert (= (or b!2940181 b!2940159) bm!193542))

(assert (= (or b!2940179 b!2940176) bm!193540))

(assert (= (or b!2940172 b!2940165) bm!193541))

(assert (= (or b!2940166 bm!193543) bm!193539))

(assert (= (or b!2940166 bm!193542) bm!193537))

(assert (= (and d!840128 res!1213534) b!2940174))

(declare-fun m!3325141 () Bool)

(assert (=> bm!193541 m!3325141))

(declare-fun m!3325143 () Bool)

(assert (=> bm!193538 m!3325143))

(declare-fun m!3325145 () Bool)

(assert (=> bm!193537 m!3325145))

(declare-fun m!3325147 () Bool)

(assert (=> d!840128 m!3325147))

(declare-fun m!3325149 () Bool)

(assert (=> d!840128 m!3325149))

(declare-fun m!3325151 () Bool)

(assert (=> bm!193540 m!3325151))

(declare-fun m!3325153 () Bool)

(assert (=> b!2940174 m!3325153))

(declare-fun m!3325155 () Bool)

(assert (=> b!2940174 m!3325155))

(declare-fun m!3325157 () Bool)

(assert (=> b!2940175 m!3325157))

(declare-fun m!3325159 () Bool)

(assert (=> bm!193539 m!3325159))

(assert (=> b!2939933 d!840128))

(declare-fun b!2940244 () Bool)

(assert (=> b!2940244 true))

(assert (=> b!2940244 true))

(declare-fun bs!525495 () Bool)

(declare-fun b!2940241 () Bool)

(assert (= bs!525495 (and b!2940241 b!2940244)))

(declare-fun lambda!109494 () Int)

(declare-fun lambda!109493 () Int)

(assert (=> bs!525495 (not (= lambda!109494 lambda!109493))))

(assert (=> b!2940241 true))

(assert (=> b!2940241 true))

(declare-fun b!2940236 () Bool)

(declare-fun e!1853067 () Bool)

(declare-fun e!1853062 () Bool)

(assert (=> b!2940236 (= e!1853067 e!1853062)))

(declare-fun res!1213559 () Bool)

(assert (=> b!2940236 (= res!1213559 (matchRSpec!1229 (regOne!18697 r!17423) s!11993))))

(assert (=> b!2940236 (=> res!1213559 e!1853062)))

(declare-fun b!2940237 () Bool)

(declare-fun c!480712 () Bool)

(assert (=> b!2940237 (= c!480712 (is-Union!9092 r!17423))))

(declare-fun e!1853064 () Bool)

(assert (=> b!2940237 (= e!1853064 e!1853067)))

(declare-fun bm!193548 () Bool)

(declare-fun call!193553 () Bool)

(assert (=> bm!193548 (= call!193553 (isEmpty!19094 s!11993))))

(declare-fun b!2940238 () Bool)

(declare-fun c!480711 () Bool)

(assert (=> b!2940238 (= c!480711 (is-ElementMatch!9092 r!17423))))

(declare-fun e!1853066 () Bool)

(assert (=> b!2940238 (= e!1853066 e!1853064)))

(declare-fun b!2940239 () Bool)

(declare-fun e!1853063 () Bool)

(assert (=> b!2940239 (= e!1853067 e!1853063)))

(declare-fun c!480713 () Bool)

(assert (=> b!2940239 (= c!480713 (is-Star!9092 r!17423))))

(declare-fun d!840130 () Bool)

(declare-fun c!480710 () Bool)

(assert (=> d!840130 (= c!480710 (is-EmptyExpr!9092 r!17423))))

(declare-fun e!1853068 () Bool)

(assert (=> d!840130 (= (matchRSpec!1229 r!17423 s!11993) e!1853068)))

(declare-fun bm!193549 () Bool)

(declare-fun call!193554 () Bool)

(declare-fun Exists!1446 (Int) Bool)

(assert (=> bm!193549 (= call!193554 (Exists!1446 (ite c!480713 lambda!109493 lambda!109494)))))

(declare-fun b!2940240 () Bool)

(assert (=> b!2940240 (= e!1853068 call!193553)))

(assert (=> b!2940241 (= e!1853063 call!193554)))

(declare-fun b!2940242 () Bool)

(assert (=> b!2940242 (= e!1853064 (= s!11993 (Cons!34833 (c!480624 r!17423) Nil!34833)))))

(declare-fun b!2940243 () Bool)

(assert (=> b!2940243 (= e!1853068 e!1853066)))

(declare-fun res!1213557 () Bool)

(assert (=> b!2940243 (= res!1213557 (not (is-EmptyLang!9092 r!17423)))))

(assert (=> b!2940243 (=> (not res!1213557) (not e!1853066))))

(declare-fun e!1853065 () Bool)

(assert (=> b!2940244 (= e!1853065 call!193554)))

(declare-fun b!2940245 () Bool)

(assert (=> b!2940245 (= e!1853062 (matchRSpec!1229 (regTwo!18697 r!17423) s!11993))))

(declare-fun b!2940246 () Bool)

(declare-fun res!1213558 () Bool)

(assert (=> b!2940246 (=> res!1213558 e!1853065)))

(assert (=> b!2940246 (= res!1213558 call!193553)))

(assert (=> b!2940246 (= e!1853063 e!1853065)))

(assert (= (and d!840130 c!480710) b!2940240))

(assert (= (and d!840130 (not c!480710)) b!2940243))

(assert (= (and b!2940243 res!1213557) b!2940238))

(assert (= (and b!2940238 c!480711) b!2940242))

(assert (= (and b!2940238 (not c!480711)) b!2940237))

(assert (= (and b!2940237 c!480712) b!2940236))

(assert (= (and b!2940237 (not c!480712)) b!2940239))

(assert (= (and b!2940236 (not res!1213559)) b!2940245))

(assert (= (and b!2940239 c!480713) b!2940246))

(assert (= (and b!2940239 (not c!480713)) b!2940241))

(assert (= (and b!2940246 (not res!1213558)) b!2940244))

(assert (= (or b!2940244 b!2940241) bm!193549))

(assert (= (or b!2940240 b!2940246) bm!193548))

(declare-fun m!3325165 () Bool)

(assert (=> b!2940236 m!3325165))

(assert (=> bm!193548 m!3325033))

(declare-fun m!3325167 () Bool)

(assert (=> bm!193549 m!3325167))

(declare-fun m!3325169 () Bool)

(assert (=> b!2940245 m!3325169))

(assert (=> b!2939927 d!840130))

(declare-fun b!2940251 () Bool)

(declare-fun e!1853074 () Bool)

(declare-fun lt!1029938 () Bool)

(declare-fun call!193555 () Bool)

(assert (=> b!2940251 (= e!1853074 (= lt!1029938 call!193555))))

(declare-fun b!2940252 () Bool)

(declare-fun res!1213567 () Bool)

(declare-fun e!1853070 () Bool)

(assert (=> b!2940252 (=> (not res!1213567) (not e!1853070))))

(assert (=> b!2940252 (= res!1213567 (not call!193555))))

(declare-fun b!2940253 () Bool)

(declare-fun res!1213562 () Bool)

(declare-fun e!1853072 () Bool)

(assert (=> b!2940253 (=> res!1213562 e!1853072)))

(assert (=> b!2940253 (= res!1213562 e!1853070)))

(declare-fun res!1213563 () Bool)

(assert (=> b!2940253 (=> (not res!1213563) (not e!1853070))))

(assert (=> b!2940253 (= res!1213563 lt!1029938)))

(declare-fun b!2940254 () Bool)

(declare-fun res!1213566 () Bool)

(assert (=> b!2940254 (=> (not res!1213566) (not e!1853070))))

(assert (=> b!2940254 (= res!1213566 (isEmpty!19094 (tail!4768 s!11993)))))

(declare-fun b!2940255 () Bool)

(declare-fun e!1853069 () Bool)

(declare-fun e!1853071 () Bool)

(assert (=> b!2940255 (= e!1853069 e!1853071)))

(declare-fun res!1213560 () Bool)

(assert (=> b!2940255 (=> res!1213560 e!1853071)))

(assert (=> b!2940255 (= res!1213560 call!193555)))

(declare-fun b!2940256 () Bool)

(declare-fun e!1853075 () Bool)

(assert (=> b!2940256 (= e!1853074 e!1853075)))

(declare-fun c!480716 () Bool)

(assert (=> b!2940256 (= c!480716 (is-EmptyLang!9092 r!17423))))

(declare-fun bm!193550 () Bool)

(assert (=> bm!193550 (= call!193555 (isEmpty!19094 s!11993))))

(declare-fun b!2940257 () Bool)

(declare-fun res!1213565 () Bool)

(assert (=> b!2940257 (=> res!1213565 e!1853071)))

(assert (=> b!2940257 (= res!1213565 (not (isEmpty!19094 (tail!4768 s!11993))))))

(declare-fun b!2940258 () Bool)

(assert (=> b!2940258 (= e!1853070 (= (head!6542 s!11993) (c!480624 r!17423)))))

(declare-fun b!2940259 () Bool)

(declare-fun e!1853073 () Bool)

(assert (=> b!2940259 (= e!1853073 (nullable!2872 r!17423))))

(declare-fun b!2940260 () Bool)

(assert (=> b!2940260 (= e!1853073 (matchR!3974 (derivativeStep!2483 r!17423 (head!6542 s!11993)) (tail!4768 s!11993)))))

(declare-fun b!2940261 () Bool)

(assert (=> b!2940261 (= e!1853071 (not (= (head!6542 s!11993) (c!480624 r!17423))))))

(declare-fun b!2940262 () Bool)

(assert (=> b!2940262 (= e!1853075 (not lt!1029938))))

(declare-fun d!840134 () Bool)

(assert (=> d!840134 e!1853074))

(declare-fun c!480715 () Bool)

(assert (=> d!840134 (= c!480715 (is-EmptyExpr!9092 r!17423))))

(assert (=> d!840134 (= lt!1029938 e!1853073)))

(declare-fun c!480714 () Bool)

(assert (=> d!840134 (= c!480714 (isEmpty!19094 s!11993))))

(assert (=> d!840134 (validRegex!3825 r!17423)))

(assert (=> d!840134 (= (matchR!3974 r!17423 s!11993) lt!1029938)))

(declare-fun b!2940263 () Bool)

(assert (=> b!2940263 (= e!1853072 e!1853069)))

(declare-fun res!1213564 () Bool)

(assert (=> b!2940263 (=> (not res!1213564) (not e!1853069))))

(assert (=> b!2940263 (= res!1213564 (not lt!1029938))))

(declare-fun b!2940264 () Bool)

(declare-fun res!1213561 () Bool)

(assert (=> b!2940264 (=> res!1213561 e!1853072)))

(assert (=> b!2940264 (= res!1213561 (not (is-ElementMatch!9092 r!17423)))))

(assert (=> b!2940264 (= e!1853075 e!1853072)))

(assert (= (and d!840134 c!480714) b!2940259))

(assert (= (and d!840134 (not c!480714)) b!2940260))

(assert (= (and d!840134 c!480715) b!2940251))

(assert (= (and d!840134 (not c!480715)) b!2940256))

(assert (= (and b!2940256 c!480716) b!2940262))

(assert (= (and b!2940256 (not c!480716)) b!2940264))

(assert (= (and b!2940264 (not res!1213561)) b!2940253))

(assert (= (and b!2940253 res!1213563) b!2940252))

(assert (= (and b!2940252 res!1213567) b!2940254))

(assert (= (and b!2940254 res!1213566) b!2940258))

(assert (= (and b!2940253 (not res!1213562)) b!2940263))

(assert (= (and b!2940263 res!1213564) b!2940255))

(assert (= (and b!2940255 (not res!1213560)) b!2940257))

(assert (= (and b!2940257 (not res!1213565)) b!2940261))

(assert (= (or b!2940251 b!2940252 b!2940255) bm!193550))

(assert (=> b!2940254 m!3325077))

(assert (=> b!2940254 m!3325077))

(assert (=> b!2940254 m!3325079))

(assert (=> b!2940260 m!3325081))

(assert (=> b!2940260 m!3325081))

(declare-fun m!3325171 () Bool)

(assert (=> b!2940260 m!3325171))

(assert (=> b!2940260 m!3325077))

(assert (=> b!2940260 m!3325171))

(assert (=> b!2940260 m!3325077))

(declare-fun m!3325173 () Bool)

(assert (=> b!2940260 m!3325173))

(assert (=> d!840134 m!3325033))

(assert (=> d!840134 m!3325043))

(assert (=> b!2940261 m!3325081))

(assert (=> b!2940257 m!3325077))

(assert (=> b!2940257 m!3325077))

(assert (=> b!2940257 m!3325079))

(assert (=> b!2940258 m!3325081))

(declare-fun m!3325175 () Bool)

(assert (=> b!2940259 m!3325175))

(assert (=> bm!193550 m!3325033))

(assert (=> b!2939927 d!840134))

(declare-fun d!840136 () Bool)

(assert (=> d!840136 (= (matchR!3974 r!17423 s!11993) (matchRSpec!1229 r!17423 s!11993))))

(declare-fun lt!1029941 () Unit!48563)

(declare-fun choose!17388 (Regex!9092 List!34957) Unit!48563)

(assert (=> d!840136 (= lt!1029941 (choose!17388 r!17423 s!11993))))

(assert (=> d!840136 (validRegex!3825 r!17423)))

(assert (=> d!840136 (= (mainMatchTheorem!1229 r!17423 s!11993) lt!1029941)))

(declare-fun bs!525496 () Bool)

(assert (= bs!525496 d!840136))

(assert (=> bs!525496 m!3325023))

(assert (=> bs!525496 m!3325021))

(declare-fun m!3325177 () Bool)

(assert (=> bs!525496 m!3325177))

(assert (=> bs!525496 m!3325043))

(assert (=> b!2939927 d!840136))

(declare-fun b!2940283 () Bool)

(declare-fun e!1853093 () Bool)

(declare-fun call!193564 () Bool)

(assert (=> b!2940283 (= e!1853093 call!193564)))

(declare-fun b!2940284 () Bool)

(declare-fun res!1213578 () Bool)

(declare-fun e!1853092 () Bool)

(assert (=> b!2940284 (=> res!1213578 e!1853092)))

(assert (=> b!2940284 (= res!1213578 (not (is-Concat!14413 (simplify!97 r!17423))))))

(declare-fun e!1853095 () Bool)

(assert (=> b!2940284 (= e!1853095 e!1853092)))

(declare-fun b!2940285 () Bool)

(declare-fun e!1853094 () Bool)

(assert (=> b!2940285 (= e!1853094 e!1853095)))

(declare-fun c!480722 () Bool)

(assert (=> b!2940285 (= c!480722 (is-Union!9092 (simplify!97 r!17423)))))

(declare-fun d!840138 () Bool)

(declare-fun res!1213581 () Bool)

(declare-fun e!1853091 () Bool)

(assert (=> d!840138 (=> res!1213581 e!1853091)))

(assert (=> d!840138 (= res!1213581 (is-ElementMatch!9092 (simplify!97 r!17423)))))

(assert (=> d!840138 (= (validRegex!3825 (simplify!97 r!17423)) e!1853091)))

(declare-fun b!2940286 () Bool)

(declare-fun res!1213580 () Bool)

(declare-fun e!1853096 () Bool)

(assert (=> b!2940286 (=> (not res!1213580) (not e!1853096))))

(assert (=> b!2940286 (= res!1213580 call!193564)))

(assert (=> b!2940286 (= e!1853095 e!1853096)))

(declare-fun bm!193557 () Bool)

(declare-fun call!193563 () Bool)

(declare-fun call!193562 () Bool)

(assert (=> bm!193557 (= call!193563 call!193562)))

(declare-fun b!2940287 () Bool)

(assert (=> b!2940287 (= e!1853096 call!193563)))

(declare-fun b!2940288 () Bool)

(declare-fun e!1853090 () Bool)

(assert (=> b!2940288 (= e!1853094 e!1853090)))

(declare-fun res!1213579 () Bool)

(assert (=> b!2940288 (= res!1213579 (not (nullable!2872 (reg!9421 (simplify!97 r!17423)))))))

(assert (=> b!2940288 (=> (not res!1213579) (not e!1853090))))

(declare-fun b!2940289 () Bool)

(assert (=> b!2940289 (= e!1853090 call!193562)))

(declare-fun b!2940290 () Bool)

(assert (=> b!2940290 (= e!1853091 e!1853094)))

(declare-fun c!480721 () Bool)

(assert (=> b!2940290 (= c!480721 (is-Star!9092 (simplify!97 r!17423)))))

(declare-fun bm!193558 () Bool)

(assert (=> bm!193558 (= call!193564 (validRegex!3825 (ite c!480722 (regOne!18697 (simplify!97 r!17423)) (regTwo!18696 (simplify!97 r!17423)))))))

(declare-fun b!2940291 () Bool)

(assert (=> b!2940291 (= e!1853092 e!1853093)))

(declare-fun res!1213582 () Bool)

(assert (=> b!2940291 (=> (not res!1213582) (not e!1853093))))

(assert (=> b!2940291 (= res!1213582 call!193563)))

(declare-fun bm!193559 () Bool)

(assert (=> bm!193559 (= call!193562 (validRegex!3825 (ite c!480721 (reg!9421 (simplify!97 r!17423)) (ite c!480722 (regTwo!18697 (simplify!97 r!17423)) (regOne!18696 (simplify!97 r!17423))))))))

(assert (= (and d!840138 (not res!1213581)) b!2940290))

(assert (= (and b!2940290 c!480721) b!2940288))

(assert (= (and b!2940290 (not c!480721)) b!2940285))

(assert (= (and b!2940288 res!1213579) b!2940289))

(assert (= (and b!2940285 c!480722) b!2940286))

(assert (= (and b!2940285 (not c!480722)) b!2940284))

(assert (= (and b!2940286 res!1213580) b!2940287))

(assert (= (and b!2940284 (not res!1213578)) b!2940291))

(assert (= (and b!2940291 res!1213582) b!2940283))

(assert (= (or b!2940286 b!2940283) bm!193558))

(assert (= (or b!2940287 b!2940291) bm!193557))

(assert (= (or b!2940289 bm!193557) bm!193559))

(declare-fun m!3325179 () Bool)

(assert (=> b!2940288 m!3325179))

(declare-fun m!3325181 () Bool)

(assert (=> bm!193558 m!3325181))

(declare-fun m!3325183 () Bool)

(assert (=> bm!193559 m!3325183))

(assert (=> b!2939936 d!840138))

(declare-fun c!480726 () Bool)

(declare-fun bm!193560 () Bool)

(declare-fun lt!1029947 () Regex!9092)

(declare-fun c!480725 () Bool)

(declare-fun call!193566 () Bool)

(declare-fun lt!1029946 () Regex!9092)

(declare-fun lt!1029942 () Regex!9092)

(assert (=> bm!193560 (= call!193566 (isEmptyLang!218 (ite c!480725 lt!1029942 (ite c!480726 lt!1029946 lt!1029947))))))

(declare-fun b!2940292 () Bool)

(declare-fun e!1853098 () Regex!9092)

(assert (=> b!2940292 (= e!1853098 r!17423)))

(declare-fun b!2940293 () Bool)

(declare-fun e!1853101 () Regex!9092)

(assert (=> b!2940293 (= e!1853101 EmptyLang!9092)))

(declare-fun b!2940294 () Bool)

(declare-fun e!1853108 () Bool)

(declare-fun call!193567 () Bool)

(assert (=> b!2940294 (= e!1853108 call!193567)))

(declare-fun b!2940295 () Bool)

(declare-fun e!1853106 () Regex!9092)

(assert (=> b!2940295 (= e!1853106 lt!1029946)))

(declare-fun b!2940296 () Bool)

(declare-fun e!1853102 () Regex!9092)

(assert (=> b!2940296 (= e!1853102 EmptyExpr!9092)))

(declare-fun b!2940297 () Bool)

(declare-fun e!1853099 () Regex!9092)

(assert (=> b!2940297 (= e!1853099 EmptyLang!9092)))

(declare-fun d!840140 () Bool)

(declare-fun e!1853110 () Bool)

(assert (=> d!840140 e!1853110))

(declare-fun res!1213585 () Bool)

(assert (=> d!840140 (=> (not res!1213585) (not e!1853110))))

(declare-fun lt!1029943 () Regex!9092)

(assert (=> d!840140 (= res!1213585 (validRegex!3825 lt!1029943))))

(assert (=> d!840140 (= lt!1029943 e!1853101)))

(declare-fun c!480727 () Bool)

(assert (=> d!840140 (= c!480727 (is-EmptyLang!9092 r!17423))))

(assert (=> d!840140 (validRegex!3825 r!17423)))

(assert (=> d!840140 (= (simplify!97 r!17423) lt!1029943)))

(declare-fun b!2940298 () Bool)

(declare-fun e!1853104 () Regex!9092)

(assert (=> b!2940298 (= e!1853104 (Star!9092 lt!1029942))))

(declare-fun b!2940299 () Bool)

(declare-fun e!1853103 () Regex!9092)

(declare-fun lt!1029944 () Regex!9092)

(assert (=> b!2940299 (= e!1853103 lt!1029944)))

(declare-fun b!2940300 () Bool)

(declare-fun c!480729 () Bool)

(declare-fun call!193569 () Bool)

(assert (=> b!2940300 (= c!480729 call!193569)))

(declare-fun e!1853107 () Regex!9092)

(assert (=> b!2940300 (= e!1853099 e!1853107)))

(declare-fun b!2940301 () Bool)

(declare-fun c!480724 () Bool)

(declare-fun e!1853100 () Bool)

(assert (=> b!2940301 (= c!480724 e!1853100)))

(declare-fun res!1213583 () Bool)

(assert (=> b!2940301 (=> res!1213583 e!1853100)))

(assert (=> b!2940301 (= res!1213583 call!193566)))

(declare-fun call!193565 () Regex!9092)

(assert (=> b!2940301 (= lt!1029942 call!193565)))

(declare-fun e!1853109 () Regex!9092)

(assert (=> b!2940301 (= e!1853109 e!1853104)))

(declare-fun b!2940302 () Bool)

(declare-fun lt!1029945 () Regex!9092)

(assert (=> b!2940302 (= e!1853106 (Union!9092 lt!1029946 lt!1029945))))

(declare-fun b!2940303 () Bool)

(assert (=> b!2940303 (= e!1853102 e!1853109)))

(assert (=> b!2940303 (= c!480725 (is-Star!9092 r!17423))))

(declare-fun b!2940304 () Bool)

(assert (=> b!2940304 (= e!1853107 lt!1029947)))

(declare-fun bm!193561 () Bool)

(declare-fun call!193570 () Regex!9092)

(assert (=> bm!193561 (= call!193570 (simplify!97 (ite c!480726 (regOne!18697 r!17423) (regTwo!18696 r!17423))))))

(declare-fun bm!193562 () Bool)

(assert (=> bm!193562 (= call!193565 (simplify!97 (ite c!480725 (reg!9421 r!17423) (ite c!480726 (regTwo!18697 r!17423) (regOne!18696 r!17423)))))))

(declare-fun call!193568 () Bool)

(declare-fun bm!193563 () Bool)

(assert (=> bm!193563 (= call!193568 (isEmptyLang!218 (ite c!480726 lt!1029945 lt!1029944)))))

(declare-fun b!2940305 () Bool)

(declare-fun c!480731 () Bool)

(assert (=> b!2940305 (= c!480731 (is-EmptyExpr!9092 r!17423))))

(assert (=> b!2940305 (= e!1853098 e!1853102)))

(declare-fun bm!193564 () Bool)

(assert (=> bm!193564 (= call!193569 (isEmptyExpr!299 (ite c!480725 lt!1029942 lt!1029944)))))

(declare-fun b!2940306 () Bool)

(assert (=> b!2940306 (= e!1853103 (Concat!14413 lt!1029944 lt!1029947))))

(declare-fun b!2940307 () Bool)

(assert (=> b!2940307 (= e!1853100 call!193569)))

(declare-fun b!2940308 () Bool)

(assert (=> b!2940308 (= e!1853101 e!1853098)))

(declare-fun c!480723 () Bool)

(assert (=> b!2940308 (= c!480723 (is-ElementMatch!9092 r!17423))))

(declare-fun bm!193565 () Bool)

(assert (=> bm!193565 (= call!193567 call!193566)))

(declare-fun b!2940309 () Bool)

(assert (=> b!2940309 (= e!1853110 (= (nullable!2872 lt!1029943) (nullable!2872 r!17423)))))

(declare-fun b!2940310 () Bool)

(assert (=> b!2940310 (= e!1853107 e!1853103)))

(declare-fun c!480733 () Bool)

(assert (=> b!2940310 (= c!480733 (isEmptyExpr!299 lt!1029947))))

(declare-fun b!2940311 () Bool)

(declare-fun e!1853097 () Regex!9092)

(assert (=> b!2940311 (= e!1853097 e!1853099)))

(declare-fun call!193571 () Regex!9092)

(assert (=> b!2940311 (= lt!1029944 call!193571)))

(assert (=> b!2940311 (= lt!1029947 call!193570)))

(declare-fun res!1213584 () Bool)

(assert (=> b!2940311 (= res!1213584 call!193568)))

(assert (=> b!2940311 (=> res!1213584 e!1853108)))

(declare-fun c!480732 () Bool)

(assert (=> b!2940311 (= c!480732 e!1853108)))

(declare-fun b!2940312 () Bool)

(assert (=> b!2940312 (= e!1853104 EmptyExpr!9092)))

(declare-fun b!2940313 () Bool)

(declare-fun e!1853105 () Regex!9092)

(assert (=> b!2940313 (= e!1853105 lt!1029945)))

(declare-fun b!2940314 () Bool)

(declare-fun c!480728 () Bool)

(assert (=> b!2940314 (= c!480728 call!193568)))

(assert (=> b!2940314 (= e!1853105 e!1853106)))

(declare-fun b!2940315 () Bool)

(assert (=> b!2940315 (= c!480726 (is-Union!9092 r!17423))))

(assert (=> b!2940315 (= e!1853109 e!1853097)))

(declare-fun b!2940316 () Bool)

(assert (=> b!2940316 (= e!1853097 e!1853105)))

(assert (=> b!2940316 (= lt!1029946 call!193570)))

(assert (=> b!2940316 (= lt!1029945 call!193571)))

(declare-fun c!480730 () Bool)

(assert (=> b!2940316 (= c!480730 call!193567)))

(declare-fun bm!193566 () Bool)

(assert (=> bm!193566 (= call!193571 call!193565)))

(assert (= (and d!840140 c!480727) b!2940293))

(assert (= (and d!840140 (not c!480727)) b!2940308))

(assert (= (and b!2940308 c!480723) b!2940292))

(assert (= (and b!2940308 (not c!480723)) b!2940305))

(assert (= (and b!2940305 c!480731) b!2940296))

(assert (= (and b!2940305 (not c!480731)) b!2940303))

(assert (= (and b!2940303 c!480725) b!2940301))

(assert (= (and b!2940303 (not c!480725)) b!2940315))

(assert (= (and b!2940301 (not res!1213583)) b!2940307))

(assert (= (and b!2940301 c!480724) b!2940312))

(assert (= (and b!2940301 (not c!480724)) b!2940298))

(assert (= (and b!2940315 c!480726) b!2940316))

(assert (= (and b!2940315 (not c!480726)) b!2940311))

(assert (= (and b!2940316 c!480730) b!2940313))

(assert (= (and b!2940316 (not c!480730)) b!2940314))

(assert (= (and b!2940314 c!480728) b!2940295))

(assert (= (and b!2940314 (not c!480728)) b!2940302))

(assert (= (and b!2940311 (not res!1213584)) b!2940294))

(assert (= (and b!2940311 c!480732) b!2940297))

(assert (= (and b!2940311 (not c!480732)) b!2940300))

(assert (= (and b!2940300 c!480729) b!2940304))

(assert (= (and b!2940300 (not c!480729)) b!2940310))

(assert (= (and b!2940310 c!480733) b!2940299))

(assert (= (and b!2940310 (not c!480733)) b!2940306))

(assert (= (or b!2940316 b!2940311) bm!193561))

(assert (= (or b!2940316 b!2940311) bm!193566))

(assert (= (or b!2940316 b!2940294) bm!193565))

(assert (= (or b!2940314 b!2940311) bm!193563))

(assert (= (or b!2940307 b!2940300) bm!193564))

(assert (= (or b!2940301 bm!193566) bm!193562))

(assert (= (or b!2940301 bm!193565) bm!193560))

(assert (= (and d!840140 res!1213585) b!2940309))

(declare-fun m!3325185 () Bool)

(assert (=> bm!193564 m!3325185))

(declare-fun m!3325187 () Bool)

(assert (=> bm!193561 m!3325187))

(declare-fun m!3325189 () Bool)

(assert (=> bm!193560 m!3325189))

(declare-fun m!3325191 () Bool)

(assert (=> d!840140 m!3325191))

(assert (=> d!840140 m!3325043))

(declare-fun m!3325193 () Bool)

(assert (=> bm!193563 m!3325193))

(declare-fun m!3325195 () Bool)

(assert (=> b!2940309 m!3325195))

(assert (=> b!2940309 m!3325175))

(declare-fun m!3325197 () Bool)

(assert (=> b!2940310 m!3325197))

(declare-fun m!3325199 () Bool)

(assert (=> bm!193562 m!3325199))

(assert (=> b!2939936 d!840140))

(declare-fun b!2940317 () Bool)

(declare-fun e!1853114 () Bool)

(declare-fun call!193574 () Bool)

(assert (=> b!2940317 (= e!1853114 call!193574)))

(declare-fun b!2940318 () Bool)

(declare-fun res!1213586 () Bool)

(declare-fun e!1853113 () Bool)

(assert (=> b!2940318 (=> res!1213586 e!1853113)))

(assert (=> b!2940318 (= res!1213586 (not (is-Concat!14413 r!17423)))))

(declare-fun e!1853116 () Bool)

(assert (=> b!2940318 (= e!1853116 e!1853113)))

(declare-fun b!2940319 () Bool)

(declare-fun e!1853115 () Bool)

(assert (=> b!2940319 (= e!1853115 e!1853116)))

(declare-fun c!480735 () Bool)

(assert (=> b!2940319 (= c!480735 (is-Union!9092 r!17423))))

(declare-fun d!840142 () Bool)

(declare-fun res!1213589 () Bool)

(declare-fun e!1853112 () Bool)

(assert (=> d!840142 (=> res!1213589 e!1853112)))

(assert (=> d!840142 (= res!1213589 (is-ElementMatch!9092 r!17423))))

(assert (=> d!840142 (= (validRegex!3825 r!17423) e!1853112)))

(declare-fun b!2940320 () Bool)

(declare-fun res!1213588 () Bool)

(declare-fun e!1853117 () Bool)

(assert (=> b!2940320 (=> (not res!1213588) (not e!1853117))))

(assert (=> b!2940320 (= res!1213588 call!193574)))

(assert (=> b!2940320 (= e!1853116 e!1853117)))

(declare-fun bm!193567 () Bool)

(declare-fun call!193573 () Bool)

(declare-fun call!193572 () Bool)

(assert (=> bm!193567 (= call!193573 call!193572)))

(declare-fun b!2940321 () Bool)

(assert (=> b!2940321 (= e!1853117 call!193573)))

(declare-fun b!2940322 () Bool)

(declare-fun e!1853111 () Bool)

(assert (=> b!2940322 (= e!1853115 e!1853111)))

(declare-fun res!1213587 () Bool)

(assert (=> b!2940322 (= res!1213587 (not (nullable!2872 (reg!9421 r!17423))))))

(assert (=> b!2940322 (=> (not res!1213587) (not e!1853111))))

(declare-fun b!2940323 () Bool)

(assert (=> b!2940323 (= e!1853111 call!193572)))

(declare-fun b!2940324 () Bool)

(assert (=> b!2940324 (= e!1853112 e!1853115)))

(declare-fun c!480734 () Bool)

(assert (=> b!2940324 (= c!480734 (is-Star!9092 r!17423))))

(declare-fun bm!193568 () Bool)

(assert (=> bm!193568 (= call!193574 (validRegex!3825 (ite c!480735 (regOne!18697 r!17423) (regTwo!18696 r!17423))))))

(declare-fun b!2940325 () Bool)

(assert (=> b!2940325 (= e!1853113 e!1853114)))

(declare-fun res!1213590 () Bool)

(assert (=> b!2940325 (=> (not res!1213590) (not e!1853114))))

(assert (=> b!2940325 (= res!1213590 call!193573)))

(declare-fun bm!193569 () Bool)

(assert (=> bm!193569 (= call!193572 (validRegex!3825 (ite c!480734 (reg!9421 r!17423) (ite c!480735 (regTwo!18697 r!17423) (regOne!18696 r!17423)))))))

(assert (= (and d!840142 (not res!1213589)) b!2940324))

(assert (= (and b!2940324 c!480734) b!2940322))

(assert (= (and b!2940324 (not c!480734)) b!2940319))

(assert (= (and b!2940322 res!1213587) b!2940323))

(assert (= (and b!2940319 c!480735) b!2940320))

(assert (= (and b!2940319 (not c!480735)) b!2940318))

(assert (= (and b!2940320 res!1213588) b!2940321))

(assert (= (and b!2940318 (not res!1213586)) b!2940325))

(assert (= (and b!2940325 res!1213590) b!2940317))

(assert (= (or b!2940320 b!2940317) bm!193568))

(assert (= (or b!2940321 b!2940325) bm!193567))

(assert (= (or b!2940323 bm!193567) bm!193569))

(declare-fun m!3325201 () Bool)

(assert (=> b!2940322 m!3325201))

(declare-fun m!3325203 () Bool)

(assert (=> bm!193568 m!3325203))

(declare-fun m!3325205 () Bool)

(assert (=> bm!193569 m!3325205))

(assert (=> start!285558 d!840142))

(declare-fun b!2940330 () Bool)

(declare-fun e!1853120 () Bool)

(declare-fun tp!941052 () Bool)

(assert (=> b!2940330 (= e!1853120 (and tp_is_empty!15747 tp!941052))))

(assert (=> b!2939928 (= tp!941029 e!1853120)))

(assert (= (and b!2939928 (is-Cons!34833 (t!234022 s!11993))) b!2940330))

(declare-fun b!2940344 () Bool)

(declare-fun e!1853123 () Bool)

(declare-fun tp!941067 () Bool)

(declare-fun tp!941064 () Bool)

(assert (=> b!2940344 (= e!1853123 (and tp!941067 tp!941064))))

(assert (=> b!2939932 (= tp!941026 e!1853123)))

(declare-fun b!2940343 () Bool)

(declare-fun tp!941063 () Bool)

(assert (=> b!2940343 (= e!1853123 tp!941063)))

(declare-fun b!2940341 () Bool)

(assert (=> b!2940341 (= e!1853123 tp_is_empty!15747)))

(declare-fun b!2940342 () Bool)

(declare-fun tp!941065 () Bool)

(declare-fun tp!941066 () Bool)

(assert (=> b!2940342 (= e!1853123 (and tp!941065 tp!941066))))

(assert (= (and b!2939932 (is-ElementMatch!9092 (regOne!18696 r!17423))) b!2940341))

(assert (= (and b!2939932 (is-Concat!14413 (regOne!18696 r!17423))) b!2940342))

(assert (= (and b!2939932 (is-Star!9092 (regOne!18696 r!17423))) b!2940343))

(assert (= (and b!2939932 (is-Union!9092 (regOne!18696 r!17423))) b!2940344))

(declare-fun b!2940348 () Bool)

(declare-fun e!1853124 () Bool)

(declare-fun tp!941072 () Bool)

(declare-fun tp!941069 () Bool)

(assert (=> b!2940348 (= e!1853124 (and tp!941072 tp!941069))))

(assert (=> b!2939932 (= tp!941031 e!1853124)))

(declare-fun b!2940347 () Bool)

(declare-fun tp!941068 () Bool)

(assert (=> b!2940347 (= e!1853124 tp!941068)))

(declare-fun b!2940345 () Bool)

(assert (=> b!2940345 (= e!1853124 tp_is_empty!15747)))

(declare-fun b!2940346 () Bool)

(declare-fun tp!941070 () Bool)

(declare-fun tp!941071 () Bool)

(assert (=> b!2940346 (= e!1853124 (and tp!941070 tp!941071))))

(assert (= (and b!2939932 (is-ElementMatch!9092 (regTwo!18696 r!17423))) b!2940345))

(assert (= (and b!2939932 (is-Concat!14413 (regTwo!18696 r!17423))) b!2940346))

(assert (= (and b!2939932 (is-Star!9092 (regTwo!18696 r!17423))) b!2940347))

(assert (= (and b!2939932 (is-Union!9092 (regTwo!18696 r!17423))) b!2940348))

(declare-fun b!2940352 () Bool)

(declare-fun e!1853125 () Bool)

(declare-fun tp!941077 () Bool)

(declare-fun tp!941074 () Bool)

(assert (=> b!2940352 (= e!1853125 (and tp!941077 tp!941074))))

(assert (=> b!2939931 (= tp!941030 e!1853125)))

(declare-fun b!2940351 () Bool)

(declare-fun tp!941073 () Bool)

(assert (=> b!2940351 (= e!1853125 tp!941073)))

(declare-fun b!2940349 () Bool)

(assert (=> b!2940349 (= e!1853125 tp_is_empty!15747)))

(declare-fun b!2940350 () Bool)

(declare-fun tp!941075 () Bool)

(declare-fun tp!941076 () Bool)

(assert (=> b!2940350 (= e!1853125 (and tp!941075 tp!941076))))

(assert (= (and b!2939931 (is-ElementMatch!9092 (regOne!18697 r!17423))) b!2940349))

(assert (= (and b!2939931 (is-Concat!14413 (regOne!18697 r!17423))) b!2940350))

(assert (= (and b!2939931 (is-Star!9092 (regOne!18697 r!17423))) b!2940351))

(assert (= (and b!2939931 (is-Union!9092 (regOne!18697 r!17423))) b!2940352))

(declare-fun b!2940356 () Bool)

(declare-fun e!1853126 () Bool)

(declare-fun tp!941082 () Bool)

(declare-fun tp!941079 () Bool)

(assert (=> b!2940356 (= e!1853126 (and tp!941082 tp!941079))))

(assert (=> b!2939931 (= tp!941028 e!1853126)))

(declare-fun b!2940355 () Bool)

(declare-fun tp!941078 () Bool)

(assert (=> b!2940355 (= e!1853126 tp!941078)))

(declare-fun b!2940353 () Bool)

(assert (=> b!2940353 (= e!1853126 tp_is_empty!15747)))

(declare-fun b!2940354 () Bool)

(declare-fun tp!941080 () Bool)

(declare-fun tp!941081 () Bool)

(assert (=> b!2940354 (= e!1853126 (and tp!941080 tp!941081))))

(assert (= (and b!2939931 (is-ElementMatch!9092 (regTwo!18697 r!17423))) b!2940353))

(assert (= (and b!2939931 (is-Concat!14413 (regTwo!18697 r!17423))) b!2940354))

(assert (= (and b!2939931 (is-Star!9092 (regTwo!18697 r!17423))) b!2940355))

(assert (= (and b!2939931 (is-Union!9092 (regTwo!18697 r!17423))) b!2940356))

(declare-fun b!2940360 () Bool)

(declare-fun e!1853127 () Bool)

(declare-fun tp!941087 () Bool)

(declare-fun tp!941084 () Bool)

(assert (=> b!2940360 (= e!1853127 (and tp!941087 tp!941084))))

(assert (=> b!2939930 (= tp!941027 e!1853127)))

(declare-fun b!2940359 () Bool)

(declare-fun tp!941083 () Bool)

(assert (=> b!2940359 (= e!1853127 tp!941083)))

(declare-fun b!2940357 () Bool)

(assert (=> b!2940357 (= e!1853127 tp_is_empty!15747)))

(declare-fun b!2940358 () Bool)

(declare-fun tp!941085 () Bool)

(declare-fun tp!941086 () Bool)

(assert (=> b!2940358 (= e!1853127 (and tp!941085 tp!941086))))

(assert (= (and b!2939930 (is-ElementMatch!9092 (reg!9421 r!17423))) b!2940357))

(assert (= (and b!2939930 (is-Concat!14413 (reg!9421 r!17423))) b!2940358))

(assert (= (and b!2939930 (is-Star!9092 (reg!9421 r!17423))) b!2940359))

(assert (= (and b!2939930 (is-Union!9092 (reg!9421 r!17423))) b!2940360))

(push 1)

(assert (not b!2940347))

(assert (not b!2940310))

(assert (not b!2940260))

(assert (not b!2940344))

(assert (not b!2940322))

(assert (not bm!193561))

(assert (not bm!193532))

(assert (not b!2940008))

(assert (not b!2940358))

(assert (not b!2940254))

(assert (not bm!193530))

(assert (not bm!193537))

(assert (not bm!193549))

(assert (not d!840114))

(assert (not b!2940350))

(assert (not b!2940330))

(assert (not b!2940348))

(assert (not b!2940355))

(assert (not b!2940288))

(assert (not b!2940004))

(assert (not b!2940006))

(assert (not b!2940351))

(assert (not bm!193568))

(assert (not b!2940022))

(assert (not bm!193533))

(assert (not d!840108))

(assert (not b!2940149))

(assert (not b!2940356))

(assert (not b!2940354))

(assert (not b!2940174))

(assert (not bm!193511))

(assert (not bm!193541))

(assert (not b!2940360))

(assert (not b!2940021))

(assert (not d!840128))

(assert (not bm!193564))

(assert (not b!2940001))

(assert tp_is_empty!15747)

(assert (not d!840140))

(assert (not d!840136))

(assert (not bm!193562))

(assert (not bm!193531))

(assert (not b!2940352))

(assert (not b!2940245))

(assert (not b!2940150))

(assert (not bm!193550))

(assert (not b!2940346))

(assert (not b!2940258))

(assert (not b!2940236))

(assert (not b!2940342))

(assert (not d!840112))

(assert (not bm!193559))

(assert (not b!2940175))

(assert (not bm!193569))

(assert (not d!840122))

(assert (not bm!193558))

(assert (not b!2940007))

(assert (not bm!193540))

(assert (not b!2940359))

(assert (not b!2940257))

(assert (not b!2940018))

(assert (not bm!193534))

(assert (not bm!193563))

(assert (not bm!193548))

(assert (not b!2940343))

(assert (not bm!193538))

(assert (not b!2940005))

(assert (not b!2940261))

(assert (not b!2940015))

(assert (not bm!193510))

(assert (not bm!193560))

(assert (not b!2940019))

(assert (not b!2940020))

(assert (not b!2940309))

(assert (not bm!193539))

(assert (not d!840134))

(assert (not b!2940259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

