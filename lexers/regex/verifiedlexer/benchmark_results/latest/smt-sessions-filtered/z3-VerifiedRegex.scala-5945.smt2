; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291116 () Bool)

(assert start!291116)

(declare-fun b!3037662 () Bool)

(declare-fun e!1904622 () Bool)

(declare-fun tp!961892 () Bool)

(assert (=> b!3037662 (= e!1904622 tp!961892)))

(declare-fun b!3037663 () Bool)

(declare-fun tp!961893 () Bool)

(declare-fun tp!961895 () Bool)

(assert (=> b!3037663 (= e!1904622 (and tp!961893 tp!961895))))

(declare-fun b!3037664 () Bool)

(declare-fun e!1904620 () Bool)

(declare-datatypes ((C!19068 0))(
  ( (C!19069 (val!11570 Int)) )
))
(declare-datatypes ((Regex!9441 0))(
  ( (ElementMatch!9441 (c!502441 C!19068)) (Concat!14762 (regOne!19394 Regex!9441) (regTwo!19394 Regex!9441)) (EmptyExpr!9441) (Star!9441 (reg!9770 Regex!9441)) (EmptyLang!9441) (Union!9441 (regOne!19395 Regex!9441) (regTwo!19395 Regex!9441)) )
))
(declare-fun r!17423 () Regex!9441)

(declare-fun validRegex!4174 (Regex!9441) Bool)

(assert (=> b!3037664 (= e!1904620 (validRegex!4174 (reg!9770 r!17423)))))

(declare-fun b!3037665 () Bool)

(declare-fun res!1249370 () Bool)

(assert (=> b!3037665 (=> res!1249370 e!1904620)))

(declare-datatypes ((List!35306 0))(
  ( (Nil!35182) (Cons!35182 (h!40602 C!19068) (t!234371 List!35306)) )
))
(declare-fun s!11993 () List!35306)

(declare-fun isEmpty!19482 (List!35306) Bool)

(assert (=> b!3037665 (= res!1249370 (isEmpty!19482 s!11993))))

(declare-fun res!1249372 () Bool)

(declare-fun e!1904621 () Bool)

(assert (=> start!291116 (=> (not res!1249372) (not e!1904621))))

(assert (=> start!291116 (= res!1249372 (validRegex!4174 r!17423))))

(assert (=> start!291116 e!1904621))

(assert (=> start!291116 e!1904622))

(declare-fun e!1904623 () Bool)

(assert (=> start!291116 e!1904623))

(declare-fun b!3037666 () Bool)

(declare-fun tp!961896 () Bool)

(declare-fun tp!961897 () Bool)

(assert (=> b!3037666 (= e!1904622 (and tp!961896 tp!961897))))

(declare-fun b!3037667 () Bool)

(assert (=> b!3037667 (= e!1904621 (not e!1904620))))

(declare-fun res!1249371 () Bool)

(assert (=> b!3037667 (=> res!1249371 e!1904620)))

(declare-fun lt!1046909 () Bool)

(get-info :version)

(assert (=> b!3037667 (= res!1249371 (or (not lt!1046909) ((_ is Concat!14762) r!17423) ((_ is Union!9441) r!17423) (not ((_ is Star!9441) r!17423))))))

(declare-fun matchRSpec!1578 (Regex!9441 List!35306) Bool)

(assert (=> b!3037667 (= lt!1046909 (matchRSpec!1578 r!17423 s!11993))))

(declare-fun matchR!4323 (Regex!9441 List!35306) Bool)

(assert (=> b!3037667 (= lt!1046909 (matchR!4323 r!17423 s!11993))))

(declare-datatypes ((Unit!49305 0))(
  ( (Unit!49306) )
))
(declare-fun lt!1046910 () Unit!49305)

(declare-fun mainMatchTheorem!1578 (Regex!9441 List!35306) Unit!49305)

(assert (=> b!3037667 (= lt!1046910 (mainMatchTheorem!1578 r!17423 s!11993))))

(declare-fun b!3037668 () Bool)

(declare-fun tp_is_empty!16445 () Bool)

(assert (=> b!3037668 (= e!1904622 tp_is_empty!16445)))

(declare-fun b!3037669 () Bool)

(declare-fun tp!961894 () Bool)

(assert (=> b!3037669 (= e!1904623 (and tp_is_empty!16445 tp!961894))))

(assert (= (and start!291116 res!1249372) b!3037667))

(assert (= (and b!3037667 (not res!1249371)) b!3037665))

(assert (= (and b!3037665 (not res!1249370)) b!3037664))

(assert (= (and start!291116 ((_ is ElementMatch!9441) r!17423)) b!3037668))

(assert (= (and start!291116 ((_ is Concat!14762) r!17423)) b!3037663))

(assert (= (and start!291116 ((_ is Star!9441) r!17423)) b!3037662))

(assert (= (and start!291116 ((_ is Union!9441) r!17423)) b!3037666))

(assert (= (and start!291116 ((_ is Cons!35182) s!11993)) b!3037669))

(declare-fun m!3370753 () Bool)

(assert (=> b!3037664 m!3370753))

(declare-fun m!3370755 () Bool)

(assert (=> b!3037665 m!3370755))

(declare-fun m!3370757 () Bool)

(assert (=> start!291116 m!3370757))

(declare-fun m!3370759 () Bool)

(assert (=> b!3037667 m!3370759))

(declare-fun m!3370761 () Bool)

(assert (=> b!3037667 m!3370761))

(declare-fun m!3370763 () Bool)

(assert (=> b!3037667 m!3370763))

(check-sat (not b!3037667) (not start!291116) (not b!3037663) (not b!3037664) (not b!3037666) (not b!3037669) (not b!3037665) tp_is_empty!16445 (not b!3037662))
(check-sat)
(get-model)

(declare-fun bm!207598 () Bool)

(declare-fun call!207605 () Bool)

(declare-fun c!502450 () Bool)

(assert (=> bm!207598 (= call!207605 (validRegex!4174 (ite c!502450 (regTwo!19395 r!17423) (regOne!19394 r!17423))))))

(declare-fun b!3037706 () Bool)

(declare-fun e!1904657 () Bool)

(declare-fun call!207603 () Bool)

(assert (=> b!3037706 (= e!1904657 call!207603)))

(declare-fun d!851976 () Bool)

(declare-fun res!1249397 () Bool)

(declare-fun e!1904655 () Bool)

(assert (=> d!851976 (=> res!1249397 e!1904655)))

(assert (=> d!851976 (= res!1249397 ((_ is ElementMatch!9441) r!17423))))

(assert (=> d!851976 (= (validRegex!4174 r!17423) e!1904655)))

(declare-fun bm!207599 () Bool)

(declare-fun call!207604 () Bool)

(assert (=> bm!207599 (= call!207603 call!207604)))

(declare-fun bm!207600 () Bool)

(declare-fun c!502451 () Bool)

(assert (=> bm!207600 (= call!207604 (validRegex!4174 (ite c!502451 (reg!9770 r!17423) (ite c!502450 (regOne!19395 r!17423) (regTwo!19394 r!17423)))))))

(declare-fun b!3037707 () Bool)

(declare-fun e!1904653 () Bool)

(assert (=> b!3037707 (= e!1904653 call!207605)))

(declare-fun b!3037708 () Bool)

(declare-fun e!1904658 () Bool)

(declare-fun e!1904654 () Bool)

(assert (=> b!3037708 (= e!1904658 e!1904654)))

(assert (=> b!3037708 (= c!502450 ((_ is Union!9441) r!17423))))

(declare-fun b!3037709 () Bool)

(declare-fun res!1249396 () Bool)

(assert (=> b!3037709 (=> (not res!1249396) (not e!1904653))))

(assert (=> b!3037709 (= res!1249396 call!207603)))

(assert (=> b!3037709 (= e!1904654 e!1904653)))

(declare-fun b!3037710 () Bool)

(declare-fun e!1904652 () Bool)

(assert (=> b!3037710 (= e!1904652 call!207604)))

(declare-fun b!3037711 () Bool)

(assert (=> b!3037711 (= e!1904658 e!1904652)))

(declare-fun res!1249395 () Bool)

(declare-fun nullable!3091 (Regex!9441) Bool)

(assert (=> b!3037711 (= res!1249395 (not (nullable!3091 (reg!9770 r!17423))))))

(assert (=> b!3037711 (=> (not res!1249395) (not e!1904652))))

(declare-fun b!3037712 () Bool)

(declare-fun res!1249393 () Bool)

(declare-fun e!1904656 () Bool)

(assert (=> b!3037712 (=> res!1249393 e!1904656)))

(assert (=> b!3037712 (= res!1249393 (not ((_ is Concat!14762) r!17423)))))

(assert (=> b!3037712 (= e!1904654 e!1904656)))

(declare-fun b!3037713 () Bool)

(assert (=> b!3037713 (= e!1904655 e!1904658)))

(assert (=> b!3037713 (= c!502451 ((_ is Star!9441) r!17423))))

(declare-fun b!3037714 () Bool)

(assert (=> b!3037714 (= e!1904656 e!1904657)))

(declare-fun res!1249394 () Bool)

(assert (=> b!3037714 (=> (not res!1249394) (not e!1904657))))

(assert (=> b!3037714 (= res!1249394 call!207605)))

(assert (= (and d!851976 (not res!1249397)) b!3037713))

(assert (= (and b!3037713 c!502451) b!3037711))

(assert (= (and b!3037713 (not c!502451)) b!3037708))

(assert (= (and b!3037711 res!1249395) b!3037710))

(assert (= (and b!3037708 c!502450) b!3037709))

(assert (= (and b!3037708 (not c!502450)) b!3037712))

(assert (= (and b!3037709 res!1249396) b!3037707))

(assert (= (and b!3037712 (not res!1249393)) b!3037714))

(assert (= (and b!3037714 res!1249394) b!3037706))

(assert (= (or b!3037709 b!3037706) bm!207599))

(assert (= (or b!3037707 b!3037714) bm!207598))

(assert (= (or b!3037710 bm!207599) bm!207600))

(declare-fun m!3370765 () Bool)

(assert (=> bm!207598 m!3370765))

(declare-fun m!3370767 () Bool)

(assert (=> bm!207600 m!3370767))

(declare-fun m!3370769 () Bool)

(assert (=> b!3037711 m!3370769))

(assert (=> start!291116 d!851976))

(declare-fun b!3037895 () Bool)

(assert (=> b!3037895 true))

(assert (=> b!3037895 true))

(declare-fun bs!531006 () Bool)

(declare-fun b!3037898 () Bool)

(assert (= bs!531006 (and b!3037898 b!3037895)))

(declare-fun lambda!113290 () Int)

(declare-fun lambda!113289 () Int)

(assert (=> bs!531006 (not (= lambda!113290 lambda!113289))))

(assert (=> b!3037898 true))

(assert (=> b!3037898 true))

(declare-fun b!3037889 () Bool)

(declare-fun c!502487 () Bool)

(assert (=> b!3037889 (= c!502487 ((_ is ElementMatch!9441) r!17423))))

(declare-fun e!1904747 () Bool)

(declare-fun e!1904751 () Bool)

(assert (=> b!3037889 (= e!1904747 e!1904751)))

(declare-fun b!3037890 () Bool)

(declare-fun c!502488 () Bool)

(assert (=> b!3037890 (= c!502488 ((_ is Union!9441) r!17423))))

(declare-fun e!1904748 () Bool)

(assert (=> b!3037890 (= e!1904751 e!1904748)))

(declare-fun b!3037891 () Bool)

(declare-fun e!1904753 () Bool)

(declare-fun call!207625 () Bool)

(assert (=> b!3037891 (= e!1904753 call!207625)))

(declare-fun bm!207620 () Bool)

(declare-fun call!207626 () Bool)

(declare-fun c!502486 () Bool)

(declare-fun Exists!1707 (Int) Bool)

(assert (=> bm!207620 (= call!207626 (Exists!1707 (ite c!502486 lambda!113289 lambda!113290)))))

(declare-fun b!3037892 () Bool)

(assert (=> b!3037892 (= e!1904751 (= s!11993 (Cons!35182 (c!502441 r!17423) Nil!35182)))))

(declare-fun b!3037893 () Bool)

(declare-fun e!1904750 () Bool)

(assert (=> b!3037893 (= e!1904748 e!1904750)))

(declare-fun res!1249469 () Bool)

(assert (=> b!3037893 (= res!1249469 (matchRSpec!1578 (regOne!19395 r!17423) s!11993))))

(assert (=> b!3037893 (=> res!1249469 e!1904750)))

(declare-fun b!3037894 () Bool)

(declare-fun res!1249467 () Bool)

(declare-fun e!1904752 () Bool)

(assert (=> b!3037894 (=> res!1249467 e!1904752)))

(assert (=> b!3037894 (= res!1249467 call!207625)))

(declare-fun e!1904749 () Bool)

(assert (=> b!3037894 (= e!1904749 e!1904752)))

(assert (=> b!3037895 (= e!1904752 call!207626)))

(declare-fun b!3037896 () Bool)

(assert (=> b!3037896 (= e!1904753 e!1904747)))

(declare-fun res!1249468 () Bool)

(assert (=> b!3037896 (= res!1249468 (not ((_ is EmptyLang!9441) r!17423)))))

(assert (=> b!3037896 (=> (not res!1249468) (not e!1904747))))

(declare-fun bm!207621 () Bool)

(assert (=> bm!207621 (= call!207625 (isEmpty!19482 s!11993))))

(declare-fun d!851980 () Bool)

(declare-fun c!502485 () Bool)

(assert (=> d!851980 (= c!502485 ((_ is EmptyExpr!9441) r!17423))))

(assert (=> d!851980 (= (matchRSpec!1578 r!17423 s!11993) e!1904753)))

(declare-fun b!3037897 () Bool)

(assert (=> b!3037897 (= e!1904750 (matchRSpec!1578 (regTwo!19395 r!17423) s!11993))))

(assert (=> b!3037898 (= e!1904749 call!207626)))

(declare-fun b!3037899 () Bool)

(assert (=> b!3037899 (= e!1904748 e!1904749)))

(assert (=> b!3037899 (= c!502486 ((_ is Star!9441) r!17423))))

(assert (= (and d!851980 c!502485) b!3037891))

(assert (= (and d!851980 (not c!502485)) b!3037896))

(assert (= (and b!3037896 res!1249468) b!3037889))

(assert (= (and b!3037889 c!502487) b!3037892))

(assert (= (and b!3037889 (not c!502487)) b!3037890))

(assert (= (and b!3037890 c!502488) b!3037893))

(assert (= (and b!3037890 (not c!502488)) b!3037899))

(assert (= (and b!3037893 (not res!1249469)) b!3037897))

(assert (= (and b!3037899 c!502486) b!3037894))

(assert (= (and b!3037899 (not c!502486)) b!3037898))

(assert (= (and b!3037894 (not res!1249467)) b!3037895))

(assert (= (or b!3037895 b!3037898) bm!207620))

(assert (= (or b!3037891 b!3037894) bm!207621))

(declare-fun m!3370803 () Bool)

(assert (=> bm!207620 m!3370803))

(declare-fun m!3370805 () Bool)

(assert (=> b!3037893 m!3370805))

(assert (=> bm!207621 m!3370755))

(declare-fun m!3370807 () Bool)

(assert (=> b!3037897 m!3370807))

(assert (=> b!3037667 d!851980))

(declare-fun b!3037932 () Bool)

(declare-fun res!1249493 () Bool)

(declare-fun e!1904773 () Bool)

(assert (=> b!3037932 (=> (not res!1249493) (not e!1904773))))

(declare-fun tail!4973 (List!35306) List!35306)

(assert (=> b!3037932 (= res!1249493 (isEmpty!19482 (tail!4973 s!11993)))))

(declare-fun b!3037933 () Bool)

(declare-fun res!1249492 () Bool)

(declare-fun e!1904774 () Bool)

(assert (=> b!3037933 (=> res!1249492 e!1904774)))

(assert (=> b!3037933 (= res!1249492 (not ((_ is ElementMatch!9441) r!17423)))))

(declare-fun e!1904771 () Bool)

(assert (=> b!3037933 (= e!1904771 e!1904774)))

(declare-fun b!3037934 () Bool)

(declare-fun e!1904770 () Bool)

(declare-fun lt!1046919 () Bool)

(declare-fun call!207629 () Bool)

(assert (=> b!3037934 (= e!1904770 (= lt!1046919 call!207629))))

(declare-fun b!3037935 () Bool)

(declare-fun e!1904772 () Bool)

(declare-fun head!6747 (List!35306) C!19068)

(assert (=> b!3037935 (= e!1904772 (not (= (head!6747 s!11993) (c!502441 r!17423))))))

(declare-fun b!3037936 () Bool)

(declare-fun e!1904768 () Bool)

(assert (=> b!3037936 (= e!1904774 e!1904768)))

(declare-fun res!1249487 () Bool)

(assert (=> b!3037936 (=> (not res!1249487) (not e!1904768))))

(assert (=> b!3037936 (= res!1249487 (not lt!1046919))))

(declare-fun b!3037937 () Bool)

(assert (=> b!3037937 (= e!1904773 (= (head!6747 s!11993) (c!502441 r!17423)))))

(declare-fun b!3037938 () Bool)

(declare-fun e!1904769 () Bool)

(assert (=> b!3037938 (= e!1904769 (nullable!3091 r!17423))))

(declare-fun b!3037939 () Bool)

(declare-fun res!1249488 () Bool)

(assert (=> b!3037939 (=> (not res!1249488) (not e!1904773))))

(assert (=> b!3037939 (= res!1249488 (not call!207629))))

(declare-fun b!3037941 () Bool)

(assert (=> b!3037941 (= e!1904768 e!1904772)))

(declare-fun res!1249489 () Bool)

(assert (=> b!3037941 (=> res!1249489 e!1904772)))

(assert (=> b!3037941 (= res!1249489 call!207629)))

(declare-fun b!3037942 () Bool)

(declare-fun derivativeStep!2688 (Regex!9441 C!19068) Regex!9441)

(assert (=> b!3037942 (= e!1904769 (matchR!4323 (derivativeStep!2688 r!17423 (head!6747 s!11993)) (tail!4973 s!11993)))))

(declare-fun bm!207624 () Bool)

(assert (=> bm!207624 (= call!207629 (isEmpty!19482 s!11993))))

(declare-fun b!3037943 () Bool)

(assert (=> b!3037943 (= e!1904770 e!1904771)))

(declare-fun c!502497 () Bool)

(assert (=> b!3037943 (= c!502497 ((_ is EmptyLang!9441) r!17423))))

(declare-fun d!851992 () Bool)

(assert (=> d!851992 e!1904770))

(declare-fun c!502496 () Bool)

(assert (=> d!851992 (= c!502496 ((_ is EmptyExpr!9441) r!17423))))

(assert (=> d!851992 (= lt!1046919 e!1904769)))

(declare-fun c!502495 () Bool)

(assert (=> d!851992 (= c!502495 (isEmpty!19482 s!11993))))

(assert (=> d!851992 (validRegex!4174 r!17423)))

(assert (=> d!851992 (= (matchR!4323 r!17423 s!11993) lt!1046919)))

(declare-fun b!3037940 () Bool)

(declare-fun res!1249491 () Bool)

(assert (=> b!3037940 (=> res!1249491 e!1904774)))

(assert (=> b!3037940 (= res!1249491 e!1904773)))

(declare-fun res!1249486 () Bool)

(assert (=> b!3037940 (=> (not res!1249486) (not e!1904773))))

(assert (=> b!3037940 (= res!1249486 lt!1046919)))

(declare-fun b!3037944 () Bool)

(assert (=> b!3037944 (= e!1904771 (not lt!1046919))))

(declare-fun b!3037945 () Bool)

(declare-fun res!1249490 () Bool)

(assert (=> b!3037945 (=> res!1249490 e!1904772)))

(assert (=> b!3037945 (= res!1249490 (not (isEmpty!19482 (tail!4973 s!11993))))))

(assert (= (and d!851992 c!502495) b!3037938))

(assert (= (and d!851992 (not c!502495)) b!3037942))

(assert (= (and d!851992 c!502496) b!3037934))

(assert (= (and d!851992 (not c!502496)) b!3037943))

(assert (= (and b!3037943 c!502497) b!3037944))

(assert (= (and b!3037943 (not c!502497)) b!3037933))

(assert (= (and b!3037933 (not res!1249492)) b!3037940))

(assert (= (and b!3037940 res!1249486) b!3037939))

(assert (= (and b!3037939 res!1249488) b!3037932))

(assert (= (and b!3037932 res!1249493) b!3037937))

(assert (= (and b!3037940 (not res!1249491)) b!3037936))

(assert (= (and b!3037936 res!1249487) b!3037941))

(assert (= (and b!3037941 (not res!1249489)) b!3037945))

(assert (= (and b!3037945 (not res!1249490)) b!3037935))

(assert (= (or b!3037934 b!3037939 b!3037941) bm!207624))

(declare-fun m!3370809 () Bool)

(assert (=> b!3037937 m!3370809))

(declare-fun m!3370811 () Bool)

(assert (=> b!3037945 m!3370811))

(assert (=> b!3037945 m!3370811))

(declare-fun m!3370813 () Bool)

(assert (=> b!3037945 m!3370813))

(declare-fun m!3370815 () Bool)

(assert (=> b!3037938 m!3370815))

(assert (=> bm!207624 m!3370755))

(assert (=> b!3037942 m!3370809))

(assert (=> b!3037942 m!3370809))

(declare-fun m!3370817 () Bool)

(assert (=> b!3037942 m!3370817))

(assert (=> b!3037942 m!3370811))

(assert (=> b!3037942 m!3370817))

(assert (=> b!3037942 m!3370811))

(declare-fun m!3370819 () Bool)

(assert (=> b!3037942 m!3370819))

(assert (=> d!851992 m!3370755))

(assert (=> d!851992 m!3370757))

(assert (=> b!3037935 m!3370809))

(assert (=> b!3037932 m!3370811))

(assert (=> b!3037932 m!3370811))

(assert (=> b!3037932 m!3370813))

(assert (=> b!3037667 d!851992))

(declare-fun d!851994 () Bool)

(assert (=> d!851994 (= (matchR!4323 r!17423 s!11993) (matchRSpec!1578 r!17423 s!11993))))

(declare-fun lt!1046922 () Unit!49305)

(declare-fun choose!18019 (Regex!9441 List!35306) Unit!49305)

(assert (=> d!851994 (= lt!1046922 (choose!18019 r!17423 s!11993))))

(assert (=> d!851994 (validRegex!4174 r!17423)))

(assert (=> d!851994 (= (mainMatchTheorem!1578 r!17423 s!11993) lt!1046922)))

(declare-fun bs!531007 () Bool)

(assert (= bs!531007 d!851994))

(assert (=> bs!531007 m!3370761))

(assert (=> bs!531007 m!3370759))

(declare-fun m!3370821 () Bool)

(assert (=> bs!531007 m!3370821))

(assert (=> bs!531007 m!3370757))

(assert (=> b!3037667 d!851994))

(declare-fun bm!207625 () Bool)

(declare-fun call!207632 () Bool)

(declare-fun c!502498 () Bool)

(assert (=> bm!207625 (= call!207632 (validRegex!4174 (ite c!502498 (regTwo!19395 (reg!9770 r!17423)) (regOne!19394 (reg!9770 r!17423)))))))

(declare-fun b!3037946 () Bool)

(declare-fun e!1904780 () Bool)

(declare-fun call!207630 () Bool)

(assert (=> b!3037946 (= e!1904780 call!207630)))

(declare-fun d!851996 () Bool)

(declare-fun res!1249498 () Bool)

(declare-fun e!1904778 () Bool)

(assert (=> d!851996 (=> res!1249498 e!1904778)))

(assert (=> d!851996 (= res!1249498 ((_ is ElementMatch!9441) (reg!9770 r!17423)))))

(assert (=> d!851996 (= (validRegex!4174 (reg!9770 r!17423)) e!1904778)))

(declare-fun bm!207626 () Bool)

(declare-fun call!207631 () Bool)

(assert (=> bm!207626 (= call!207630 call!207631)))

(declare-fun c!502499 () Bool)

(declare-fun bm!207627 () Bool)

(assert (=> bm!207627 (= call!207631 (validRegex!4174 (ite c!502499 (reg!9770 (reg!9770 r!17423)) (ite c!502498 (regOne!19395 (reg!9770 r!17423)) (regTwo!19394 (reg!9770 r!17423))))))))

(declare-fun b!3037947 () Bool)

(declare-fun e!1904776 () Bool)

(assert (=> b!3037947 (= e!1904776 call!207632)))

(declare-fun b!3037948 () Bool)

(declare-fun e!1904781 () Bool)

(declare-fun e!1904777 () Bool)

(assert (=> b!3037948 (= e!1904781 e!1904777)))

(assert (=> b!3037948 (= c!502498 ((_ is Union!9441) (reg!9770 r!17423)))))

(declare-fun b!3037949 () Bool)

(declare-fun res!1249497 () Bool)

(assert (=> b!3037949 (=> (not res!1249497) (not e!1904776))))

(assert (=> b!3037949 (= res!1249497 call!207630)))

(assert (=> b!3037949 (= e!1904777 e!1904776)))

(declare-fun b!3037950 () Bool)

(declare-fun e!1904775 () Bool)

(assert (=> b!3037950 (= e!1904775 call!207631)))

(declare-fun b!3037951 () Bool)

(assert (=> b!3037951 (= e!1904781 e!1904775)))

(declare-fun res!1249496 () Bool)

(assert (=> b!3037951 (= res!1249496 (not (nullable!3091 (reg!9770 (reg!9770 r!17423)))))))

(assert (=> b!3037951 (=> (not res!1249496) (not e!1904775))))

(declare-fun b!3037952 () Bool)

(declare-fun res!1249494 () Bool)

(declare-fun e!1904779 () Bool)

(assert (=> b!3037952 (=> res!1249494 e!1904779)))

(assert (=> b!3037952 (= res!1249494 (not ((_ is Concat!14762) (reg!9770 r!17423))))))

(assert (=> b!3037952 (= e!1904777 e!1904779)))

(declare-fun b!3037953 () Bool)

(assert (=> b!3037953 (= e!1904778 e!1904781)))

(assert (=> b!3037953 (= c!502499 ((_ is Star!9441) (reg!9770 r!17423)))))

(declare-fun b!3037954 () Bool)

(assert (=> b!3037954 (= e!1904779 e!1904780)))

(declare-fun res!1249495 () Bool)

(assert (=> b!3037954 (=> (not res!1249495) (not e!1904780))))

(assert (=> b!3037954 (= res!1249495 call!207632)))

(assert (= (and d!851996 (not res!1249498)) b!3037953))

(assert (= (and b!3037953 c!502499) b!3037951))

(assert (= (and b!3037953 (not c!502499)) b!3037948))

(assert (= (and b!3037951 res!1249496) b!3037950))

(assert (= (and b!3037948 c!502498) b!3037949))

(assert (= (and b!3037948 (not c!502498)) b!3037952))

(assert (= (and b!3037949 res!1249497) b!3037947))

(assert (= (and b!3037952 (not res!1249494)) b!3037954))

(assert (= (and b!3037954 res!1249495) b!3037946))

(assert (= (or b!3037949 b!3037946) bm!207626))

(assert (= (or b!3037947 b!3037954) bm!207625))

(assert (= (or b!3037950 bm!207626) bm!207627))

(declare-fun m!3370823 () Bool)

(assert (=> bm!207625 m!3370823))

(declare-fun m!3370825 () Bool)

(assert (=> bm!207627 m!3370825))

(declare-fun m!3370827 () Bool)

(assert (=> b!3037951 m!3370827))

(assert (=> b!3037664 d!851996))

(declare-fun d!851998 () Bool)

(assert (=> d!851998 (= (isEmpty!19482 s!11993) ((_ is Nil!35182) s!11993))))

(assert (=> b!3037665 d!851998))

(declare-fun b!3037968 () Bool)

(declare-fun e!1904784 () Bool)

(declare-fun tp!961949 () Bool)

(declare-fun tp!961947 () Bool)

(assert (=> b!3037968 (= e!1904784 (and tp!961949 tp!961947))))

(assert (=> b!3037666 (= tp!961896 e!1904784)))

(declare-fun b!3037966 () Bool)

(declare-fun tp!961946 () Bool)

(declare-fun tp!961948 () Bool)

(assert (=> b!3037966 (= e!1904784 (and tp!961946 tp!961948))))

(declare-fun b!3037967 () Bool)

(declare-fun tp!961950 () Bool)

(assert (=> b!3037967 (= e!1904784 tp!961950)))

(declare-fun b!3037965 () Bool)

(assert (=> b!3037965 (= e!1904784 tp_is_empty!16445)))

(assert (= (and b!3037666 ((_ is ElementMatch!9441) (regOne!19395 r!17423))) b!3037965))

(assert (= (and b!3037666 ((_ is Concat!14762) (regOne!19395 r!17423))) b!3037966))

(assert (= (and b!3037666 ((_ is Star!9441) (regOne!19395 r!17423))) b!3037967))

(assert (= (and b!3037666 ((_ is Union!9441) (regOne!19395 r!17423))) b!3037968))

(declare-fun b!3037972 () Bool)

(declare-fun e!1904785 () Bool)

(declare-fun tp!961954 () Bool)

(declare-fun tp!961952 () Bool)

(assert (=> b!3037972 (= e!1904785 (and tp!961954 tp!961952))))

(assert (=> b!3037666 (= tp!961897 e!1904785)))

(declare-fun b!3037970 () Bool)

(declare-fun tp!961951 () Bool)

(declare-fun tp!961953 () Bool)

(assert (=> b!3037970 (= e!1904785 (and tp!961951 tp!961953))))

(declare-fun b!3037971 () Bool)

(declare-fun tp!961955 () Bool)

(assert (=> b!3037971 (= e!1904785 tp!961955)))

(declare-fun b!3037969 () Bool)

(assert (=> b!3037969 (= e!1904785 tp_is_empty!16445)))

(assert (= (and b!3037666 ((_ is ElementMatch!9441) (regTwo!19395 r!17423))) b!3037969))

(assert (= (and b!3037666 ((_ is Concat!14762) (regTwo!19395 r!17423))) b!3037970))

(assert (= (and b!3037666 ((_ is Star!9441) (regTwo!19395 r!17423))) b!3037971))

(assert (= (and b!3037666 ((_ is Union!9441) (regTwo!19395 r!17423))) b!3037972))

(declare-fun b!3037976 () Bool)

(declare-fun e!1904786 () Bool)

(declare-fun tp!961959 () Bool)

(declare-fun tp!961957 () Bool)

(assert (=> b!3037976 (= e!1904786 (and tp!961959 tp!961957))))

(assert (=> b!3037662 (= tp!961892 e!1904786)))

(declare-fun b!3037974 () Bool)

(declare-fun tp!961956 () Bool)

(declare-fun tp!961958 () Bool)

(assert (=> b!3037974 (= e!1904786 (and tp!961956 tp!961958))))

(declare-fun b!3037975 () Bool)

(declare-fun tp!961960 () Bool)

(assert (=> b!3037975 (= e!1904786 tp!961960)))

(declare-fun b!3037973 () Bool)

(assert (=> b!3037973 (= e!1904786 tp_is_empty!16445)))

(assert (= (and b!3037662 ((_ is ElementMatch!9441) (reg!9770 r!17423))) b!3037973))

(assert (= (and b!3037662 ((_ is Concat!14762) (reg!9770 r!17423))) b!3037974))

(assert (= (and b!3037662 ((_ is Star!9441) (reg!9770 r!17423))) b!3037975))

(assert (= (and b!3037662 ((_ is Union!9441) (reg!9770 r!17423))) b!3037976))

(declare-fun b!3037980 () Bool)

(declare-fun e!1904787 () Bool)

(declare-fun tp!961964 () Bool)

(declare-fun tp!961962 () Bool)

(assert (=> b!3037980 (= e!1904787 (and tp!961964 tp!961962))))

(assert (=> b!3037663 (= tp!961893 e!1904787)))

(declare-fun b!3037978 () Bool)

(declare-fun tp!961961 () Bool)

(declare-fun tp!961963 () Bool)

(assert (=> b!3037978 (= e!1904787 (and tp!961961 tp!961963))))

(declare-fun b!3037979 () Bool)

(declare-fun tp!961965 () Bool)

(assert (=> b!3037979 (= e!1904787 tp!961965)))

(declare-fun b!3037977 () Bool)

(assert (=> b!3037977 (= e!1904787 tp_is_empty!16445)))

(assert (= (and b!3037663 ((_ is ElementMatch!9441) (regOne!19394 r!17423))) b!3037977))

(assert (= (and b!3037663 ((_ is Concat!14762) (regOne!19394 r!17423))) b!3037978))

(assert (= (and b!3037663 ((_ is Star!9441) (regOne!19394 r!17423))) b!3037979))

(assert (= (and b!3037663 ((_ is Union!9441) (regOne!19394 r!17423))) b!3037980))

(declare-fun b!3037984 () Bool)

(declare-fun e!1904788 () Bool)

(declare-fun tp!961969 () Bool)

(declare-fun tp!961967 () Bool)

(assert (=> b!3037984 (= e!1904788 (and tp!961969 tp!961967))))

(assert (=> b!3037663 (= tp!961895 e!1904788)))

(declare-fun b!3037982 () Bool)

(declare-fun tp!961966 () Bool)

(declare-fun tp!961968 () Bool)

(assert (=> b!3037982 (= e!1904788 (and tp!961966 tp!961968))))

(declare-fun b!3037983 () Bool)

(declare-fun tp!961970 () Bool)

(assert (=> b!3037983 (= e!1904788 tp!961970)))

(declare-fun b!3037981 () Bool)

(assert (=> b!3037981 (= e!1904788 tp_is_empty!16445)))

(assert (= (and b!3037663 ((_ is ElementMatch!9441) (regTwo!19394 r!17423))) b!3037981))

(assert (= (and b!3037663 ((_ is Concat!14762) (regTwo!19394 r!17423))) b!3037982))

(assert (= (and b!3037663 ((_ is Star!9441) (regTwo!19394 r!17423))) b!3037983))

(assert (= (and b!3037663 ((_ is Union!9441) (regTwo!19394 r!17423))) b!3037984))

(declare-fun b!3037989 () Bool)

(declare-fun e!1904791 () Bool)

(declare-fun tp!961973 () Bool)

(assert (=> b!3037989 (= e!1904791 (and tp_is_empty!16445 tp!961973))))

(assert (=> b!3037669 (= tp!961894 e!1904791)))

(assert (= (and b!3037669 ((_ is Cons!35182) (t!234371 s!11993))) b!3037989))

(check-sat (not bm!207624) (not b!3037951) (not b!3037970) (not b!3037932) (not b!3037982) (not b!3037983) (not b!3037976) (not b!3037966) (not bm!207627) (not bm!207625) (not b!3037968) (not b!3037984) (not d!851994) (not b!3037711) (not b!3037980) (not b!3037937) (not d!851992) (not b!3037945) (not b!3037978) (not bm!207620) (not bm!207598) (not b!3037972) (not b!3037975) (not b!3037942) (not b!3037935) (not b!3037893) (not b!3037974) (not b!3037971) (not b!3037989) (not b!3037938) (not b!3037967) (not bm!207621) tp_is_empty!16445 (not bm!207600) (not b!3037979) (not b!3037897))
(check-sat)
