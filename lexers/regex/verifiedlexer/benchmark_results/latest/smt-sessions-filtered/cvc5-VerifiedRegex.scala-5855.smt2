; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287370 () Bool)

(assert start!287370)

(declare-fun res!1224949 () Bool)

(declare-fun e!1868928 () Bool)

(assert (=> start!287370 (=> (not res!1224949) (not e!1868928))))

(declare-datatypes ((C!18706 0))(
  ( (C!18707 (val!11389 Int)) )
))
(declare-datatypes ((Regex!9260 0))(
  ( (ElementMatch!9260 (c!487314 C!18706)) (Concat!14581 (regOne!19032 Regex!9260) (regTwo!19032 Regex!9260)) (EmptyExpr!9260) (Star!9260 (reg!9589 Regex!9260)) (EmptyLang!9260) (Union!9260 (regOne!19033 Regex!9260) (regTwo!19033 Regex!9260)) )
))
(declare-fun r!17423 () Regex!9260)

(declare-fun validRegex!3993 (Regex!9260) Bool)

(assert (=> start!287370 (= res!1224949 (validRegex!3993 r!17423))))

(assert (=> start!287370 e!1868928))

(declare-fun e!1868931 () Bool)

(assert (=> start!287370 e!1868931))

(declare-fun e!1868932 () Bool)

(assert (=> start!287370 e!1868932))

(declare-fun b!2970280 () Bool)

(declare-fun e!1868930 () Bool)

(assert (=> b!2970280 (= e!1868928 (not e!1868930))))

(declare-fun res!1224947 () Bool)

(assert (=> b!2970280 (=> res!1224947 e!1868930)))

(declare-fun lt!1036056 () Bool)

(assert (=> b!2970280 (= res!1224947 (or lt!1036056 (is-Concat!14581 r!17423) (is-Union!9260 r!17423) (not (is-Star!9260 r!17423))))))

(declare-datatypes ((List!35125 0))(
  ( (Nil!35001) (Cons!35001 (h!40421 C!18706) (t!234190 List!35125)) )
))
(declare-fun s!11993 () List!35125)

(declare-fun matchRSpec!1397 (Regex!9260 List!35125) Bool)

(assert (=> b!2970280 (= lt!1036056 (matchRSpec!1397 r!17423 s!11993))))

(declare-fun matchR!4142 (Regex!9260 List!35125) Bool)

(assert (=> b!2970280 (= lt!1036056 (matchR!4142 r!17423 s!11993))))

(declare-datatypes ((Unit!48899 0))(
  ( (Unit!48900) )
))
(declare-fun lt!1036057 () Unit!48899)

(declare-fun mainMatchTheorem!1397 (Regex!9260 List!35125) Unit!48899)

(assert (=> b!2970280 (= lt!1036057 (mainMatchTheorem!1397 r!17423 s!11993))))

(declare-fun b!2970281 () Bool)

(declare-fun e!1868929 () Bool)

(declare-fun lt!1036055 () Regex!9260)

(assert (=> b!2970281 (= e!1868929 (validRegex!3993 (Star!9260 lt!1036055)))))

(declare-fun b!2970282 () Bool)

(declare-fun tp_is_empty!16083 () Bool)

(declare-fun tp!947170 () Bool)

(assert (=> b!2970282 (= e!1868932 (and tp_is_empty!16083 tp!947170))))

(declare-fun b!2970283 () Bool)

(declare-fun tp!947171 () Bool)

(declare-fun tp!947166 () Bool)

(assert (=> b!2970283 (= e!1868931 (and tp!947171 tp!947166))))

(declare-fun b!2970284 () Bool)

(assert (=> b!2970284 (= e!1868931 tp_is_empty!16083)))

(declare-fun b!2970285 () Bool)

(assert (=> b!2970285 (= e!1868930 e!1868929)))

(declare-fun res!1224948 () Bool)

(assert (=> b!2970285 (=> res!1224948 e!1868929)))

(declare-fun isEmptyLang!374 (Regex!9260) Bool)

(assert (=> b!2970285 (= res!1224948 (isEmptyLang!374 lt!1036055))))

(declare-fun simplify!261 (Regex!9260) Regex!9260)

(assert (=> b!2970285 (= lt!1036055 (simplify!261 (reg!9589 r!17423)))))

(declare-fun b!2970286 () Bool)

(declare-fun tp!947168 () Bool)

(declare-fun tp!947167 () Bool)

(assert (=> b!2970286 (= e!1868931 (and tp!947168 tp!947167))))

(declare-fun b!2970287 () Bool)

(declare-fun tp!947169 () Bool)

(assert (=> b!2970287 (= e!1868931 tp!947169)))

(assert (= (and start!287370 res!1224949) b!2970280))

(assert (= (and b!2970280 (not res!1224947)) b!2970285))

(assert (= (and b!2970285 (not res!1224948)) b!2970281))

(assert (= (and start!287370 (is-ElementMatch!9260 r!17423)) b!2970284))

(assert (= (and start!287370 (is-Concat!14581 r!17423)) b!2970286))

(assert (= (and start!287370 (is-Star!9260 r!17423)) b!2970287))

(assert (= (and start!287370 (is-Union!9260 r!17423)) b!2970283))

(assert (= (and start!287370 (is-Cons!35001 s!11993)) b!2970282))

(declare-fun m!3337989 () Bool)

(assert (=> start!287370 m!3337989))

(declare-fun m!3337991 () Bool)

(assert (=> b!2970280 m!3337991))

(declare-fun m!3337993 () Bool)

(assert (=> b!2970280 m!3337993))

(declare-fun m!3337995 () Bool)

(assert (=> b!2970280 m!3337995))

(declare-fun m!3337997 () Bool)

(assert (=> b!2970281 m!3337997))

(declare-fun m!3337999 () Bool)

(assert (=> b!2970285 m!3337999))

(declare-fun m!3338001 () Bool)

(assert (=> b!2970285 m!3338001))

(push 1)

(assert (not start!287370))

(assert (not b!2970287))

(assert (not b!2970280))

(assert (not b!2970281))

(assert (not b!2970286))

(assert (not b!2970283))

(assert (not b!2970282))

(assert tp_is_empty!16083)

(assert (not b!2970285))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2970375 () Bool)

(assert (=> b!2970375 true))

(assert (=> b!2970375 true))

(declare-fun bs!526474 () Bool)

(declare-fun b!2970366 () Bool)

(assert (= bs!526474 (and b!2970366 b!2970375)))

(declare-fun lambda!110536 () Int)

(declare-fun lambda!110535 () Int)

(assert (=> bs!526474 (not (= lambda!110536 lambda!110535))))

(assert (=> b!2970366 true))

(assert (=> b!2970366 true))

(declare-fun c!487335 () Bool)

(declare-fun call!197686 () Bool)

(declare-fun bm!197680 () Bool)

(declare-fun Exists!1546 (Int) Bool)

(assert (=> bm!197680 (= call!197686 (Exists!1546 (ite c!487335 lambda!110535 lambda!110536)))))

(declare-fun e!1868984 () Bool)

(assert (=> b!2970366 (= e!1868984 call!197686)))

(declare-fun bm!197681 () Bool)

(declare-fun call!197685 () Bool)

(declare-fun isEmpty!19242 (List!35125) Bool)

(assert (=> bm!197681 (= call!197685 (isEmpty!19242 s!11993))))

(declare-fun b!2970367 () Bool)

(declare-fun res!1224983 () Bool)

(declare-fun e!1868982 () Bool)

(assert (=> b!2970367 (=> res!1224983 e!1868982)))

(assert (=> b!2970367 (= res!1224983 call!197685)))

(assert (=> b!2970367 (= e!1868984 e!1868982)))

(declare-fun b!2970368 () Bool)

(declare-fun e!1868983 () Bool)

(assert (=> b!2970368 (= e!1868983 call!197685)))

(declare-fun b!2970369 () Bool)

(declare-fun e!1868986 () Bool)

(assert (=> b!2970369 (= e!1868986 (= s!11993 (Cons!35001 (c!487314 r!17423) Nil!35001)))))

(declare-fun d!842626 () Bool)

(declare-fun c!487332 () Bool)

(assert (=> d!842626 (= c!487332 (is-EmptyExpr!9260 r!17423))))

(assert (=> d!842626 (= (matchRSpec!1397 r!17423 s!11993) e!1868983)))

(declare-fun b!2970370 () Bool)

(declare-fun e!1868985 () Bool)

(assert (=> b!2970370 (= e!1868985 (matchRSpec!1397 (regTwo!19033 r!17423) s!11993))))

(declare-fun b!2970371 () Bool)

(declare-fun e!1868981 () Bool)

(assert (=> b!2970371 (= e!1868981 e!1868984)))

(assert (=> b!2970371 (= c!487335 (is-Star!9260 r!17423))))

(declare-fun b!2970372 () Bool)

(declare-fun c!487333 () Bool)

(assert (=> b!2970372 (= c!487333 (is-ElementMatch!9260 r!17423))))

(declare-fun e!1868980 () Bool)

(assert (=> b!2970372 (= e!1868980 e!1868986)))

(declare-fun b!2970373 () Bool)

(assert (=> b!2970373 (= e!1868983 e!1868980)))

(declare-fun res!1224981 () Bool)

(assert (=> b!2970373 (= res!1224981 (not (is-EmptyLang!9260 r!17423)))))

(assert (=> b!2970373 (=> (not res!1224981) (not e!1868980))))

(declare-fun b!2970374 () Bool)

(declare-fun c!487334 () Bool)

(assert (=> b!2970374 (= c!487334 (is-Union!9260 r!17423))))

(assert (=> b!2970374 (= e!1868986 e!1868981)))

(assert (=> b!2970375 (= e!1868982 call!197686)))

(declare-fun b!2970376 () Bool)

(assert (=> b!2970376 (= e!1868981 e!1868985)))

(declare-fun res!1224982 () Bool)

(assert (=> b!2970376 (= res!1224982 (matchRSpec!1397 (regOne!19033 r!17423) s!11993))))

(assert (=> b!2970376 (=> res!1224982 e!1868985)))

(assert (= (and d!842626 c!487332) b!2970368))

(assert (= (and d!842626 (not c!487332)) b!2970373))

(assert (= (and b!2970373 res!1224981) b!2970372))

(assert (= (and b!2970372 c!487333) b!2970369))

(assert (= (and b!2970372 (not c!487333)) b!2970374))

(assert (= (and b!2970374 c!487334) b!2970376))

(assert (= (and b!2970374 (not c!487334)) b!2970371))

(assert (= (and b!2970376 (not res!1224982)) b!2970370))

(assert (= (and b!2970371 c!487335) b!2970367))

(assert (= (and b!2970371 (not c!487335)) b!2970366))

(assert (= (and b!2970367 (not res!1224983)) b!2970375))

(assert (= (or b!2970375 b!2970366) bm!197680))

(assert (= (or b!2970368 b!2970367) bm!197681))

(declare-fun m!3338017 () Bool)

(assert (=> bm!197680 m!3338017))

(declare-fun m!3338019 () Bool)

(assert (=> bm!197681 m!3338019))

(declare-fun m!3338021 () Bool)

(assert (=> b!2970370 m!3338021))

(declare-fun m!3338023 () Bool)

(assert (=> b!2970376 m!3338023))

(assert (=> b!2970280 d!842626))

(declare-fun b!2970409 () Bool)

(declare-fun e!1869002 () Bool)

(declare-fun head!6621 (List!35125) C!18706)

(assert (=> b!2970409 (= e!1869002 (= (head!6621 s!11993) (c!487314 r!17423)))))

(declare-fun d!842630 () Bool)

(declare-fun e!1869001 () Bool)

(assert (=> d!842630 e!1869001))

(declare-fun c!487342 () Bool)

(assert (=> d!842630 (= c!487342 (is-EmptyExpr!9260 r!17423))))

(declare-fun lt!1036069 () Bool)

(declare-fun e!1869004 () Bool)

(assert (=> d!842630 (= lt!1036069 e!1869004)))

(declare-fun c!487343 () Bool)

(assert (=> d!842630 (= c!487343 (isEmpty!19242 s!11993))))

(assert (=> d!842630 (validRegex!3993 r!17423)))

(assert (=> d!842630 (= (matchR!4142 r!17423 s!11993) lt!1036069)))

(declare-fun b!2970410 () Bool)

(declare-fun e!1869006 () Bool)

(assert (=> b!2970410 (= e!1869001 e!1869006)))

(declare-fun c!487344 () Bool)

(assert (=> b!2970410 (= c!487344 (is-EmptyLang!9260 r!17423))))

(declare-fun b!2970411 () Bool)

(declare-fun res!1225003 () Bool)

(declare-fun e!1869005 () Bool)

(assert (=> b!2970411 (=> res!1225003 e!1869005)))

(assert (=> b!2970411 (= res!1225003 e!1869002)))

(declare-fun res!1225006 () Bool)

(assert (=> b!2970411 (=> (not res!1225006) (not e!1869002))))

(assert (=> b!2970411 (= res!1225006 lt!1036069)))

(declare-fun b!2970412 () Bool)

(assert (=> b!2970412 (= e!1869006 (not lt!1036069))))

(declare-fun b!2970413 () Bool)

(declare-fun e!1869003 () Bool)

(assert (=> b!2970413 (= e!1869003 (not (= (head!6621 s!11993) (c!487314 r!17423))))))

(declare-fun b!2970414 () Bool)

(declare-fun res!1225000 () Bool)

(assert (=> b!2970414 (=> (not res!1225000) (not e!1869002))))

(declare-fun call!197689 () Bool)

(assert (=> b!2970414 (= res!1225000 (not call!197689))))

(declare-fun b!2970415 () Bool)

(assert (=> b!2970415 (= e!1869001 (= lt!1036069 call!197689))))

(declare-fun b!2970416 () Bool)

(declare-fun derivativeStep!2562 (Regex!9260 C!18706) Regex!9260)

(declare-fun tail!4847 (List!35125) List!35125)

(assert (=> b!2970416 (= e!1869004 (matchR!4142 (derivativeStep!2562 r!17423 (head!6621 s!11993)) (tail!4847 s!11993)))))

(declare-fun b!2970417 () Bool)

(declare-fun e!1869007 () Bool)

(assert (=> b!2970417 (= e!1869007 e!1869003)))

(declare-fun res!1225007 () Bool)

(assert (=> b!2970417 (=> res!1225007 e!1869003)))

(assert (=> b!2970417 (= res!1225007 call!197689)))

(declare-fun bm!197684 () Bool)

(assert (=> bm!197684 (= call!197689 (isEmpty!19242 s!11993))))

(declare-fun b!2970418 () Bool)

(declare-fun nullable!2961 (Regex!9260) Bool)

(assert (=> b!2970418 (= e!1869004 (nullable!2961 r!17423))))

(declare-fun b!2970419 () Bool)

(declare-fun res!1225004 () Bool)

(assert (=> b!2970419 (=> res!1225004 e!1869003)))

(assert (=> b!2970419 (= res!1225004 (not (isEmpty!19242 (tail!4847 s!11993))))))

(declare-fun b!2970420 () Bool)

(declare-fun res!1225002 () Bool)

(assert (=> b!2970420 (=> (not res!1225002) (not e!1869002))))

(assert (=> b!2970420 (= res!1225002 (isEmpty!19242 (tail!4847 s!11993)))))

(declare-fun b!2970421 () Bool)

(assert (=> b!2970421 (= e!1869005 e!1869007)))

(declare-fun res!1225001 () Bool)

(assert (=> b!2970421 (=> (not res!1225001) (not e!1869007))))

(assert (=> b!2970421 (= res!1225001 (not lt!1036069))))

(declare-fun b!2970422 () Bool)

(declare-fun res!1225005 () Bool)

(assert (=> b!2970422 (=> res!1225005 e!1869005)))

(assert (=> b!2970422 (= res!1225005 (not (is-ElementMatch!9260 r!17423)))))

(assert (=> b!2970422 (= e!1869006 e!1869005)))

(assert (= (and d!842630 c!487343) b!2970418))

(assert (= (and d!842630 (not c!487343)) b!2970416))

(assert (= (and d!842630 c!487342) b!2970415))

(assert (= (and d!842630 (not c!487342)) b!2970410))

(assert (= (and b!2970410 c!487344) b!2970412))

(assert (= (and b!2970410 (not c!487344)) b!2970422))

(assert (= (and b!2970422 (not res!1225005)) b!2970411))

(assert (= (and b!2970411 res!1225006) b!2970414))

(assert (= (and b!2970414 res!1225000) b!2970420))

(assert (= (and b!2970420 res!1225002) b!2970409))

(assert (= (and b!2970411 (not res!1225003)) b!2970421))

(assert (= (and b!2970421 res!1225001) b!2970417))

(assert (= (and b!2970417 (not res!1225007)) b!2970419))

(assert (= (and b!2970419 (not res!1225004)) b!2970413))

(assert (= (or b!2970415 b!2970414 b!2970417) bm!197684))

(declare-fun m!3338025 () Bool)

(assert (=> b!2970416 m!3338025))

(assert (=> b!2970416 m!3338025))

(declare-fun m!3338027 () Bool)

(assert (=> b!2970416 m!3338027))

(declare-fun m!3338029 () Bool)

(assert (=> b!2970416 m!3338029))

(assert (=> b!2970416 m!3338027))

(assert (=> b!2970416 m!3338029))

(declare-fun m!3338031 () Bool)

(assert (=> b!2970416 m!3338031))

(declare-fun m!3338033 () Bool)

(assert (=> b!2970418 m!3338033))

(assert (=> b!2970409 m!3338025))

(assert (=> b!2970419 m!3338029))

(assert (=> b!2970419 m!3338029))

(declare-fun m!3338035 () Bool)

(assert (=> b!2970419 m!3338035))

(assert (=> d!842630 m!3338019))

(assert (=> d!842630 m!3337989))

(assert (=> b!2970413 m!3338025))

(assert (=> b!2970420 m!3338029))

(assert (=> b!2970420 m!3338029))

(assert (=> b!2970420 m!3338035))

(assert (=> bm!197684 m!3338019))

(assert (=> b!2970280 d!842630))

(declare-fun d!842632 () Bool)

(assert (=> d!842632 (= (matchR!4142 r!17423 s!11993) (matchRSpec!1397 r!17423 s!11993))))

(declare-fun lt!1036072 () Unit!48899)

(declare-fun choose!17564 (Regex!9260 List!35125) Unit!48899)

(assert (=> d!842632 (= lt!1036072 (choose!17564 r!17423 s!11993))))

(assert (=> d!842632 (validRegex!3993 r!17423)))

(assert (=> d!842632 (= (mainMatchTheorem!1397 r!17423 s!11993) lt!1036072)))

(declare-fun bs!526475 () Bool)

(assert (= bs!526475 d!842632))

(assert (=> bs!526475 m!3337993))

(assert (=> bs!526475 m!3337991))

(declare-fun m!3338037 () Bool)

(assert (=> bs!526475 m!3338037))

(assert (=> bs!526475 m!3337989))

(assert (=> b!2970280 d!842632))

(declare-fun bm!197691 () Bool)

(declare-fun call!197697 () Bool)

(declare-fun c!487350 () Bool)

(assert (=> bm!197691 (= call!197697 (validRegex!3993 (ite c!487350 (regTwo!19033 (Star!9260 lt!1036055)) (regOne!19032 (Star!9260 lt!1036055)))))))

(declare-fun b!2970441 () Bool)

(declare-fun e!1869024 () Bool)

(declare-fun call!197698 () Bool)

(assert (=> b!2970441 (= e!1869024 call!197698)))

(declare-fun b!2970442 () Bool)

(declare-fun e!1869023 () Bool)

(declare-fun e!1869022 () Bool)

(assert (=> b!2970442 (= e!1869023 e!1869022)))

(declare-fun c!487349 () Bool)

(assert (=> b!2970442 (= c!487349 (is-Star!9260 (Star!9260 lt!1036055)))))

(declare-fun d!842634 () Bool)

(declare-fun res!1225020 () Bool)

(assert (=> d!842634 (=> res!1225020 e!1869023)))

(assert (=> d!842634 (= res!1225020 (is-ElementMatch!9260 (Star!9260 lt!1036055)))))

(assert (=> d!842634 (= (validRegex!3993 (Star!9260 lt!1036055)) e!1869023)))

(declare-fun b!2970443 () Bool)

(declare-fun res!1225018 () Bool)

(declare-fun e!1869027 () Bool)

(assert (=> b!2970443 (=> res!1225018 e!1869027)))

(assert (=> b!2970443 (= res!1225018 (not (is-Concat!14581 (Star!9260 lt!1036055))))))

(declare-fun e!1869028 () Bool)

(assert (=> b!2970443 (= e!1869028 e!1869027)))

(declare-fun b!2970444 () Bool)

(assert (=> b!2970444 (= e!1869022 e!1869024)))

(declare-fun res!1225022 () Bool)

(assert (=> b!2970444 (= res!1225022 (not (nullable!2961 (reg!9589 (Star!9260 lt!1036055)))))))

(assert (=> b!2970444 (=> (not res!1225022) (not e!1869024))))

(declare-fun b!2970445 () Bool)

(declare-fun e!1869025 () Bool)

(assert (=> b!2970445 (= e!1869025 call!197697)))

(declare-fun b!2970446 () Bool)

(declare-fun e!1869026 () Bool)

(assert (=> b!2970446 (= e!1869027 e!1869026)))

(declare-fun res!1225021 () Bool)

(assert (=> b!2970446 (=> (not res!1225021) (not e!1869026))))

(assert (=> b!2970446 (= res!1225021 call!197697)))

(declare-fun b!2970447 () Bool)

(declare-fun call!197696 () Bool)

(assert (=> b!2970447 (= e!1869026 call!197696)))

(declare-fun b!2970448 () Bool)

(assert (=> b!2970448 (= e!1869022 e!1869028)))

(assert (=> b!2970448 (= c!487350 (is-Union!9260 (Star!9260 lt!1036055)))))

(declare-fun bm!197692 () Bool)

(assert (=> bm!197692 (= call!197698 (validRegex!3993 (ite c!487349 (reg!9589 (Star!9260 lt!1036055)) (ite c!487350 (regOne!19033 (Star!9260 lt!1036055)) (regTwo!19032 (Star!9260 lt!1036055))))))))

(declare-fun bm!197693 () Bool)

(assert (=> bm!197693 (= call!197696 call!197698)))

(declare-fun b!2970449 () Bool)

(declare-fun res!1225019 () Bool)

(assert (=> b!2970449 (=> (not res!1225019) (not e!1869025))))

(assert (=> b!2970449 (= res!1225019 call!197696)))

(assert (=> b!2970449 (= e!1869028 e!1869025)))

(assert (= (and d!842634 (not res!1225020)) b!2970442))

(assert (= (and b!2970442 c!487349) b!2970444))

(assert (= (and b!2970442 (not c!487349)) b!2970448))

(assert (= (and b!2970444 res!1225022) b!2970441))

(assert (= (and b!2970448 c!487350) b!2970449))

(assert (= (and b!2970448 (not c!487350)) b!2970443))

(assert (= (and b!2970449 res!1225019) b!2970445))

(assert (= (and b!2970443 (not res!1225018)) b!2970446))

(assert (= (and b!2970446 res!1225021) b!2970447))

(assert (= (or b!2970449 b!2970447) bm!197693))

(assert (= (or b!2970445 b!2970446) bm!197691))

(assert (= (or b!2970441 bm!197693) bm!197692))

(declare-fun m!3338039 () Bool)

(assert (=> bm!197691 m!3338039))

(declare-fun m!3338041 () Bool)

(assert (=> b!2970444 m!3338041))

(declare-fun m!3338043 () Bool)

(assert (=> bm!197692 m!3338043))

(assert (=> b!2970281 d!842634))

(declare-fun bm!197694 () Bool)

(declare-fun call!197700 () Bool)

(declare-fun c!487352 () Bool)

(assert (=> bm!197694 (= call!197700 (validRegex!3993 (ite c!487352 (regTwo!19033 r!17423) (regOne!19032 r!17423))))))

(declare-fun b!2970450 () Bool)

(declare-fun e!1869031 () Bool)

(declare-fun call!197701 () Bool)

(assert (=> b!2970450 (= e!1869031 call!197701)))

(declare-fun b!2970451 () Bool)

(declare-fun e!1869030 () Bool)

(declare-fun e!1869029 () Bool)

(assert (=> b!2970451 (= e!1869030 e!1869029)))

(declare-fun c!487351 () Bool)

(assert (=> b!2970451 (= c!487351 (is-Star!9260 r!17423))))

(declare-fun d!842636 () Bool)

(declare-fun res!1225025 () Bool)

(assert (=> d!842636 (=> res!1225025 e!1869030)))

(assert (=> d!842636 (= res!1225025 (is-ElementMatch!9260 r!17423))))

(assert (=> d!842636 (= (validRegex!3993 r!17423) e!1869030)))

(declare-fun b!2970452 () Bool)

(declare-fun res!1225023 () Bool)

(declare-fun e!1869034 () Bool)

(assert (=> b!2970452 (=> res!1225023 e!1869034)))

(assert (=> b!2970452 (= res!1225023 (not (is-Concat!14581 r!17423)))))

(declare-fun e!1869035 () Bool)

(assert (=> b!2970452 (= e!1869035 e!1869034)))

(declare-fun b!2970453 () Bool)

(assert (=> b!2970453 (= e!1869029 e!1869031)))

(declare-fun res!1225027 () Bool)

(assert (=> b!2970453 (= res!1225027 (not (nullable!2961 (reg!9589 r!17423))))))

(assert (=> b!2970453 (=> (not res!1225027) (not e!1869031))))

(declare-fun b!2970454 () Bool)

(declare-fun e!1869032 () Bool)

(assert (=> b!2970454 (= e!1869032 call!197700)))

(declare-fun b!2970455 () Bool)

(declare-fun e!1869033 () Bool)

(assert (=> b!2970455 (= e!1869034 e!1869033)))

(declare-fun res!1225026 () Bool)

(assert (=> b!2970455 (=> (not res!1225026) (not e!1869033))))

(assert (=> b!2970455 (= res!1225026 call!197700)))

(declare-fun b!2970456 () Bool)

(declare-fun call!197699 () Bool)

(assert (=> b!2970456 (= e!1869033 call!197699)))

(declare-fun b!2970457 () Bool)

(assert (=> b!2970457 (= e!1869029 e!1869035)))

(assert (=> b!2970457 (= c!487352 (is-Union!9260 r!17423))))

(declare-fun bm!197695 () Bool)

(assert (=> bm!197695 (= call!197701 (validRegex!3993 (ite c!487351 (reg!9589 r!17423) (ite c!487352 (regOne!19033 r!17423) (regTwo!19032 r!17423)))))))

(declare-fun bm!197696 () Bool)

(assert (=> bm!197696 (= call!197699 call!197701)))

(declare-fun b!2970458 () Bool)

(declare-fun res!1225024 () Bool)

(assert (=> b!2970458 (=> (not res!1225024) (not e!1869032))))

(assert (=> b!2970458 (= res!1225024 call!197699)))

(assert (=> b!2970458 (= e!1869035 e!1869032)))

(assert (= (and d!842636 (not res!1225025)) b!2970451))

(assert (= (and b!2970451 c!487351) b!2970453))

(assert (= (and b!2970451 (not c!487351)) b!2970457))

(assert (= (and b!2970453 res!1225027) b!2970450))

(assert (= (and b!2970457 c!487352) b!2970458))

(assert (= (and b!2970457 (not c!487352)) b!2970452))

(assert (= (and b!2970458 res!1225024) b!2970454))

(assert (= (and b!2970452 (not res!1225023)) b!2970455))

(assert (= (and b!2970455 res!1225026) b!2970456))

(assert (= (or b!2970458 b!2970456) bm!197696))

(assert (= (or b!2970454 b!2970455) bm!197694))

(assert (= (or b!2970450 bm!197696) bm!197695))

(declare-fun m!3338045 () Bool)

(assert (=> bm!197694 m!3338045))

(declare-fun m!3338047 () Bool)

(assert (=> b!2970453 m!3338047))

(declare-fun m!3338049 () Bool)

(assert (=> bm!197695 m!3338049))

(assert (=> start!287370 d!842636))

(declare-fun d!842638 () Bool)

(assert (=> d!842638 (= (isEmptyLang!374 lt!1036055) (is-EmptyLang!9260 lt!1036055))))

(assert (=> b!2970285 d!842638))

(declare-fun b!2970509 () Bool)

(declare-fun c!487383 () Bool)

(assert (=> b!2970509 (= c!487383 (is-EmptyExpr!9260 (reg!9589 r!17423)))))

(declare-fun e!1869064 () Regex!9260)

(declare-fun e!1869077 () Regex!9260)

(assert (=> b!2970509 (= e!1869064 e!1869077)))

(declare-fun b!2970510 () Bool)

(declare-fun e!1869071 () Bool)

(declare-fun call!197721 () Bool)

(assert (=> b!2970510 (= e!1869071 call!197721)))

(declare-fun b!2970511 () Bool)

(declare-fun e!1869075 () Regex!9260)

(declare-fun lt!1036088 () Regex!9260)

(declare-fun lt!1036086 () Regex!9260)

(assert (=> b!2970511 (= e!1869075 (Union!9260 lt!1036088 lt!1036086))))

(declare-fun b!2970512 () Bool)

(declare-fun c!487385 () Bool)

(declare-fun call!197719 () Bool)

(assert (=> b!2970512 (= c!487385 call!197719)))

(declare-fun e!1869069 () Regex!9260)

(assert (=> b!2970512 (= e!1869069 e!1869075)))

(declare-fun b!2970513 () Bool)

(declare-fun e!1869072 () Regex!9260)

(declare-fun lt!1036085 () Regex!9260)

(assert (=> b!2970513 (= e!1869072 lt!1036085)))

(declare-fun b!2970514 () Bool)

(declare-fun e!1869067 () Regex!9260)

(assert (=> b!2970514 (= e!1869072 e!1869067)))

(declare-fun c!487377 () Bool)

(declare-fun isEmptyExpr!417 (Regex!9260) Bool)

(assert (=> b!2970514 (= c!487377 (isEmptyExpr!417 lt!1036085))))

(declare-fun b!2970515 () Bool)

(declare-fun lt!1036087 () Regex!9260)

(assert (=> b!2970515 (= e!1869067 lt!1036087)))

(declare-fun b!2970516 () Bool)

(declare-fun e!1869070 () Regex!9260)

(assert (=> b!2970516 (= e!1869070 e!1869069)))

(declare-fun call!197718 () Regex!9260)

(assert (=> b!2970516 (= lt!1036088 call!197718)))

(declare-fun call!197720 () Regex!9260)

(assert (=> b!2970516 (= lt!1036086 call!197720)))

(declare-fun c!487375 () Bool)

(declare-fun call!197716 () Bool)

(assert (=> b!2970516 (= c!487375 call!197716)))

(declare-fun b!2970517 () Bool)

(declare-fun e!1869066 () Regex!9260)

(assert (=> b!2970517 (= e!1869066 EmptyExpr!9260)))

(declare-fun c!487376 () Bool)

(declare-fun bm!197711 () Bool)

(assert (=> bm!197711 (= call!197716 (isEmptyLang!374 (ite c!487376 lt!1036088 lt!1036087)))))

(declare-fun bm!197712 () Bool)

(declare-fun call!197722 () Regex!9260)

(assert (=> bm!197712 (= call!197718 call!197722)))

(declare-fun b!2970518 () Bool)

(assert (=> b!2970518 (= e!1869067 (Concat!14581 lt!1036087 lt!1036085))))

(declare-fun b!2970519 () Bool)

(declare-fun lt!1036089 () Regex!9260)

(assert (=> b!2970519 (= e!1869066 (Star!9260 lt!1036089))))

(declare-fun bm!197713 () Bool)

(declare-fun c!487379 () Bool)

(declare-fun call!197717 () Bool)

(assert (=> bm!197713 (= call!197717 (isEmptyLang!374 (ite c!487379 lt!1036089 (ite c!487376 lt!1036086 lt!1036085))))))

(declare-fun bm!197714 () Bool)

(assert (=> bm!197714 (= call!197719 call!197717)))

(declare-fun d!842640 () Bool)

(declare-fun e!1869076 () Bool)

(assert (=> d!842640 e!1869076))

(declare-fun res!1225035 () Bool)

(assert (=> d!842640 (=> (not res!1225035) (not e!1869076))))

(declare-fun lt!1036090 () Regex!9260)

(assert (=> d!842640 (= res!1225035 (validRegex!3993 lt!1036090))))

(declare-fun e!1869073 () Regex!9260)

(assert (=> d!842640 (= lt!1036090 e!1869073)))

(declare-fun c!487382 () Bool)

(assert (=> d!842640 (= c!487382 (is-EmptyLang!9260 (reg!9589 r!17423)))))

(assert (=> d!842640 (validRegex!3993 (reg!9589 r!17423))))

(assert (=> d!842640 (= (simplify!261 (reg!9589 r!17423)) lt!1036090)))

(declare-fun bm!197715 () Bool)

(assert (=> bm!197715 (= call!197721 (isEmptyExpr!417 (ite c!487379 lt!1036089 lt!1036087)))))

(declare-fun b!2970520 () Bool)

(assert (=> b!2970520 (= e!1869077 EmptyExpr!9260)))

(declare-fun bm!197716 () Bool)

(assert (=> bm!197716 (= call!197722 (simplify!261 (ite c!487379 (reg!9589 (reg!9589 r!17423)) (ite c!487376 (regOne!19033 (reg!9589 r!17423)) (regTwo!19032 (reg!9589 r!17423))))))))

(declare-fun b!2970521 () Bool)

(assert (=> b!2970521 (= e!1869073 EmptyLang!9260)))

(declare-fun bm!197717 () Bool)

(assert (=> bm!197717 (= call!197720 (simplify!261 (ite c!487376 (regTwo!19033 (reg!9589 r!17423)) (regOne!19032 (reg!9589 r!17423)))))))

(declare-fun b!2970522 () Bool)

(assert (=> b!2970522 (= e!1869076 (= (nullable!2961 lt!1036090) (nullable!2961 (reg!9589 r!17423))))))

(declare-fun b!2970523 () Bool)

(assert (=> b!2970523 (= e!1869069 lt!1036086)))

(declare-fun b!2970524 () Bool)

(declare-fun c!487384 () Bool)

(assert (=> b!2970524 (= c!487384 call!197721)))

(declare-fun e!1869065 () Regex!9260)

(assert (=> b!2970524 (= e!1869065 e!1869072)))

(declare-fun b!2970525 () Bool)

(assert (=> b!2970525 (= c!487376 (is-Union!9260 (reg!9589 r!17423)))))

(declare-fun e!1869068 () Regex!9260)

(assert (=> b!2970525 (= e!1869068 e!1869070)))

(declare-fun b!2970526 () Bool)

(declare-fun e!1869074 () Bool)

(assert (=> b!2970526 (= e!1869074 call!197719)))

(declare-fun b!2970527 () Bool)

(declare-fun c!487380 () Bool)

(assert (=> b!2970527 (= c!487380 e!1869071)))

(declare-fun res!1225034 () Bool)

(assert (=> b!2970527 (=> res!1225034 e!1869071)))

(assert (=> b!2970527 (= res!1225034 call!197717)))

(assert (=> b!2970527 (= lt!1036089 call!197722)))

(assert (=> b!2970527 (= e!1869068 e!1869066)))

(declare-fun b!2970528 () Bool)

(assert (=> b!2970528 (= e!1869075 lt!1036088)))

(declare-fun b!2970529 () Bool)

(assert (=> b!2970529 (= e!1869070 e!1869065)))

(assert (=> b!2970529 (= lt!1036087 call!197720)))

(assert (=> b!2970529 (= lt!1036085 call!197718)))

(declare-fun res!1225036 () Bool)

(assert (=> b!2970529 (= res!1225036 call!197716)))

(assert (=> b!2970529 (=> res!1225036 e!1869074)))

(declare-fun c!487378 () Bool)

(assert (=> b!2970529 (= c!487378 e!1869074)))

(declare-fun b!2970530 () Bool)

(assert (=> b!2970530 (= e!1869065 EmptyLang!9260)))

(declare-fun b!2970531 () Bool)

(assert (=> b!2970531 (= e!1869073 e!1869064)))

(declare-fun c!487381 () Bool)

(assert (=> b!2970531 (= c!487381 (is-ElementMatch!9260 (reg!9589 r!17423)))))

(declare-fun b!2970532 () Bool)

(assert (=> b!2970532 (= e!1869077 e!1869068)))

(assert (=> b!2970532 (= c!487379 (is-Star!9260 (reg!9589 r!17423)))))

(declare-fun b!2970533 () Bool)

(assert (=> b!2970533 (= e!1869064 (reg!9589 r!17423))))

(assert (= (and d!842640 c!487382) b!2970521))

(assert (= (and d!842640 (not c!487382)) b!2970531))

(assert (= (and b!2970531 c!487381) b!2970533))

(assert (= (and b!2970531 (not c!487381)) b!2970509))

(assert (= (and b!2970509 c!487383) b!2970520))

(assert (= (and b!2970509 (not c!487383)) b!2970532))

(assert (= (and b!2970532 c!487379) b!2970527))

(assert (= (and b!2970532 (not c!487379)) b!2970525))

(assert (= (and b!2970527 (not res!1225034)) b!2970510))

(assert (= (and b!2970527 c!487380) b!2970517))

(assert (= (and b!2970527 (not c!487380)) b!2970519))

(assert (= (and b!2970525 c!487376) b!2970516))

(assert (= (and b!2970525 (not c!487376)) b!2970529))

(assert (= (and b!2970516 c!487375) b!2970523))

(assert (= (and b!2970516 (not c!487375)) b!2970512))

(assert (= (and b!2970512 c!487385) b!2970528))

(assert (= (and b!2970512 (not c!487385)) b!2970511))

(assert (= (and b!2970529 (not res!1225036)) b!2970526))

(assert (= (and b!2970529 c!487378) b!2970530))

(assert (= (and b!2970529 (not c!487378)) b!2970524))

(assert (= (and b!2970524 c!487384) b!2970513))

(assert (= (and b!2970524 (not c!487384)) b!2970514))

(assert (= (and b!2970514 c!487377) b!2970515))

(assert (= (and b!2970514 (not c!487377)) b!2970518))

(assert (= (or b!2970516 b!2970529) bm!197712))

(assert (= (or b!2970516 b!2970529) bm!197717))

(assert (= (or b!2970512 b!2970526) bm!197714))

(assert (= (or b!2970516 b!2970529) bm!197711))

(assert (= (or b!2970510 b!2970524) bm!197715))

(assert (= (or b!2970527 bm!197712) bm!197716))

(assert (= (or b!2970527 bm!197714) bm!197713))

(assert (= (and d!842640 res!1225035) b!2970522))

(declare-fun m!3338051 () Bool)

(assert (=> b!2970514 m!3338051))

(declare-fun m!3338053 () Bool)

(assert (=> bm!197717 m!3338053))

(declare-fun m!3338055 () Bool)

(assert (=> bm!197713 m!3338055))

(declare-fun m!3338057 () Bool)

(assert (=> b!2970522 m!3338057))

(assert (=> b!2970522 m!3338047))

(declare-fun m!3338059 () Bool)

(assert (=> bm!197716 m!3338059))

(declare-fun m!3338061 () Bool)

(assert (=> bm!197711 m!3338061))

(declare-fun m!3338063 () Bool)

(assert (=> d!842640 m!3338063))

(declare-fun m!3338065 () Bool)

(assert (=> d!842640 m!3338065))

(declare-fun m!3338067 () Bool)

(assert (=> bm!197715 m!3338067))

(assert (=> b!2970285 d!842640))

(declare-fun b!2970547 () Bool)

(declare-fun e!1869080 () Bool)

(declare-fun tp!947203 () Bool)

(declare-fun tp!947204 () Bool)

(assert (=> b!2970547 (= e!1869080 (and tp!947203 tp!947204))))

(declare-fun b!2970544 () Bool)

(assert (=> b!2970544 (= e!1869080 tp_is_empty!16083)))

(declare-fun b!2970545 () Bool)

(declare-fun tp!947201 () Bool)

(declare-fun tp!947200 () Bool)

(assert (=> b!2970545 (= e!1869080 (and tp!947201 tp!947200))))

(assert (=> b!2970286 (= tp!947168 e!1869080)))

(declare-fun b!2970546 () Bool)

(declare-fun tp!947202 () Bool)

(assert (=> b!2970546 (= e!1869080 tp!947202)))

(assert (= (and b!2970286 (is-ElementMatch!9260 (regOne!19032 r!17423))) b!2970544))

(assert (= (and b!2970286 (is-Concat!14581 (regOne!19032 r!17423))) b!2970545))

(assert (= (and b!2970286 (is-Star!9260 (regOne!19032 r!17423))) b!2970546))

(assert (= (and b!2970286 (is-Union!9260 (regOne!19032 r!17423))) b!2970547))

(declare-fun b!2970551 () Bool)

(declare-fun e!1869081 () Bool)

(declare-fun tp!947208 () Bool)

(declare-fun tp!947209 () Bool)

(assert (=> b!2970551 (= e!1869081 (and tp!947208 tp!947209))))

(declare-fun b!2970548 () Bool)

(assert (=> b!2970548 (= e!1869081 tp_is_empty!16083)))

(declare-fun b!2970549 () Bool)

(declare-fun tp!947206 () Bool)

(declare-fun tp!947205 () Bool)

(assert (=> b!2970549 (= e!1869081 (and tp!947206 tp!947205))))

(assert (=> b!2970286 (= tp!947167 e!1869081)))

(declare-fun b!2970550 () Bool)

(declare-fun tp!947207 () Bool)

(assert (=> b!2970550 (= e!1869081 tp!947207)))

(assert (= (and b!2970286 (is-ElementMatch!9260 (regTwo!19032 r!17423))) b!2970548))

(assert (= (and b!2970286 (is-Concat!14581 (regTwo!19032 r!17423))) b!2970549))

(assert (= (and b!2970286 (is-Star!9260 (regTwo!19032 r!17423))) b!2970550))

(assert (= (and b!2970286 (is-Union!9260 (regTwo!19032 r!17423))) b!2970551))

(declare-fun b!2970555 () Bool)

(declare-fun e!1869082 () Bool)

(declare-fun tp!947213 () Bool)

(declare-fun tp!947214 () Bool)

(assert (=> b!2970555 (= e!1869082 (and tp!947213 tp!947214))))

(declare-fun b!2970552 () Bool)

(assert (=> b!2970552 (= e!1869082 tp_is_empty!16083)))

(declare-fun b!2970553 () Bool)

(declare-fun tp!947211 () Bool)

(declare-fun tp!947210 () Bool)

(assert (=> b!2970553 (= e!1869082 (and tp!947211 tp!947210))))

(assert (=> b!2970283 (= tp!947171 e!1869082)))

(declare-fun b!2970554 () Bool)

(declare-fun tp!947212 () Bool)

(assert (=> b!2970554 (= e!1869082 tp!947212)))

(assert (= (and b!2970283 (is-ElementMatch!9260 (regOne!19033 r!17423))) b!2970552))

(assert (= (and b!2970283 (is-Concat!14581 (regOne!19033 r!17423))) b!2970553))

(assert (= (and b!2970283 (is-Star!9260 (regOne!19033 r!17423))) b!2970554))

(assert (= (and b!2970283 (is-Union!9260 (regOne!19033 r!17423))) b!2970555))

(declare-fun b!2970559 () Bool)

(declare-fun e!1869083 () Bool)

(declare-fun tp!947218 () Bool)

(declare-fun tp!947219 () Bool)

(assert (=> b!2970559 (= e!1869083 (and tp!947218 tp!947219))))

(declare-fun b!2970556 () Bool)

(assert (=> b!2970556 (= e!1869083 tp_is_empty!16083)))

(declare-fun b!2970557 () Bool)

(declare-fun tp!947216 () Bool)

(declare-fun tp!947215 () Bool)

(assert (=> b!2970557 (= e!1869083 (and tp!947216 tp!947215))))

(assert (=> b!2970283 (= tp!947166 e!1869083)))

(declare-fun b!2970558 () Bool)

(declare-fun tp!947217 () Bool)

(assert (=> b!2970558 (= e!1869083 tp!947217)))

(assert (= (and b!2970283 (is-ElementMatch!9260 (regTwo!19033 r!17423))) b!2970556))

(assert (= (and b!2970283 (is-Concat!14581 (regTwo!19033 r!17423))) b!2970557))

(assert (= (and b!2970283 (is-Star!9260 (regTwo!19033 r!17423))) b!2970558))

(assert (= (and b!2970283 (is-Union!9260 (regTwo!19033 r!17423))) b!2970559))

(declare-fun b!2970563 () Bool)

(declare-fun e!1869084 () Bool)

(declare-fun tp!947223 () Bool)

(declare-fun tp!947224 () Bool)

(assert (=> b!2970563 (= e!1869084 (and tp!947223 tp!947224))))

(declare-fun b!2970560 () Bool)

(assert (=> b!2970560 (= e!1869084 tp_is_empty!16083)))

(declare-fun b!2970561 () Bool)

(declare-fun tp!947221 () Bool)

(declare-fun tp!947220 () Bool)

(assert (=> b!2970561 (= e!1869084 (and tp!947221 tp!947220))))

(assert (=> b!2970287 (= tp!947169 e!1869084)))

(declare-fun b!2970562 () Bool)

(declare-fun tp!947222 () Bool)

(assert (=> b!2970562 (= e!1869084 tp!947222)))

(assert (= (and b!2970287 (is-ElementMatch!9260 (reg!9589 r!17423))) b!2970560))

(assert (= (and b!2970287 (is-Concat!14581 (reg!9589 r!17423))) b!2970561))

(assert (= (and b!2970287 (is-Star!9260 (reg!9589 r!17423))) b!2970562))

(assert (= (and b!2970287 (is-Union!9260 (reg!9589 r!17423))) b!2970563))

(declare-fun b!2970568 () Bool)

(declare-fun e!1869087 () Bool)

(declare-fun tp!947227 () Bool)

(assert (=> b!2970568 (= e!1869087 (and tp_is_empty!16083 tp!947227))))

(assert (=> b!2970282 (= tp!947170 e!1869087)))

(assert (= (and b!2970282 (is-Cons!35001 (t!234190 s!11993))) b!2970568))

(push 1)

(assert (not b!2970563))

(assert (not b!2970376))

(assert (not bm!197711))

(assert (not b!2970555))

(assert (not b!2970562))

(assert (not b!2970514))

(assert (not b!2970561))

(assert (not bm!197692))

(assert (not b!2970550))

(assert (not bm!197680))

(assert (not b!2970444))

(assert (not bm!197684))

(assert (not b!2970558))

(assert tp_is_empty!16083)

(assert (not d!842632))

(assert (not b!2970409))

(assert (not b!2970413))

(assert (not b!2970549))

(assert (not bm!197694))

(assert (not b!2970551))

(assert (not b!2970554))

(assert (not bm!197717))

(assert (not b!2970547))

(assert (not b!2970545))

(assert (not b!2970416))

(assert (not b!2970418))

(assert (not bm!197695))

(assert (not b!2970370))

(assert (not bm!197691))

(assert (not bm!197716))

(assert (not b!2970420))

(assert (not d!842630))

(assert (not b!2970557))

(assert (not b!2970553))

(assert (not bm!197715))

(assert (not b!2970522))

(assert (not d!842640))

(assert (not b!2970559))

(assert (not bm!197681))

(assert (not bm!197713))

(assert (not b!2970453))

(assert (not b!2970419))

(assert (not b!2970568))

(assert (not b!2970546))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

