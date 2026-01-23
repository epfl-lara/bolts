; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731772 () Bool)

(assert start!731772)

(declare-fun b!7578526 () Bool)

(declare-fun e!4510969 () Bool)

(declare-fun tp_is_empty!50501 () Bool)

(assert (=> b!7578526 (= e!4510969 tp_is_empty!50501)))

(declare-fun res!3036203 () Bool)

(declare-fun e!4510970 () Bool)

(assert (=> start!731772 (=> (not res!3036203) (not e!4510970))))

(declare-datatypes ((C!40472 0))(
  ( (C!40473 (val!30676 Int)) )
))
(declare-datatypes ((Regex!20073 0))(
  ( (ElementMatch!20073 (c!1397906 C!40472)) (Concat!28918 (regOne!40658 Regex!20073) (regTwo!40658 Regex!20073)) (EmptyExpr!20073) (Star!20073 (reg!20402 Regex!20073)) (EmptyLang!20073) (Union!20073 (regOne!40659 Regex!20073) (regTwo!40659 Regex!20073)) )
))
(declare-fun r!22341 () Regex!20073)

(declare-fun validRegex!10501 (Regex!20073) Bool)

(assert (=> start!731772 (= res!3036203 (validRegex!10501 r!22341))))

(assert (=> start!731772 e!4510970))

(assert (=> start!731772 e!4510969))

(declare-fun e!4510971 () Bool)

(assert (=> start!731772 e!4510971))

(declare-fun b!7578527 () Bool)

(declare-fun tp!2208339 () Bool)

(assert (=> b!7578527 (= e!4510971 (and tp_is_empty!50501 tp!2208339))))

(declare-fun b!7578528 () Bool)

(declare-fun lt!2652470 () Bool)

(get-info :version)

(assert (=> b!7578528 (= e!4510970 (not (or ((_ is EmptyLang!20073) r!22341) (not ((_ is EmptyExpr!20073) r!22341)) (not lt!2652470))))))

(declare-datatypes ((List!72956 0))(
  ( (Nil!72832) (Cons!72832 (h!79280 C!40472) (t!387691 List!72956)) )
))
(declare-fun s!13436 () List!72956)

(declare-fun matchRSpec!4386 (Regex!20073 List!72956) Bool)

(assert (=> b!7578528 (= lt!2652470 (matchRSpec!4386 r!22341 s!13436))))

(declare-fun matchR!9665 (Regex!20073 List!72956) Bool)

(assert (=> b!7578528 (= lt!2652470 (matchR!9665 r!22341 s!13436))))

(declare-datatypes ((Unit!167102 0))(
  ( (Unit!167103) )
))
(declare-fun lt!2652469 () Unit!167102)

(declare-fun mainMatchTheorem!4380 (Regex!20073 List!72956) Unit!167102)

(assert (=> b!7578528 (= lt!2652469 (mainMatchTheorem!4380 r!22341 s!13436))))

(declare-fun b!7578529 () Bool)

(declare-fun tp!2208341 () Bool)

(declare-fun tp!2208340 () Bool)

(assert (=> b!7578529 (= e!4510969 (and tp!2208341 tp!2208340))))

(declare-fun b!7578530 () Bool)

(declare-fun tp!2208337 () Bool)

(declare-fun tp!2208336 () Bool)

(assert (=> b!7578530 (= e!4510969 (and tp!2208337 tp!2208336))))

(declare-fun b!7578531 () Bool)

(declare-fun res!3036204 () Bool)

(assert (=> b!7578531 (=> (not res!3036204) (not e!4510970))))

(declare-fun isEmpty!41501 (List!72956) Bool)

(assert (=> b!7578531 (= res!3036204 (not (isEmpty!41501 s!13436)))))

(declare-fun b!7578532 () Bool)

(declare-fun res!3036202 () Bool)

(assert (=> b!7578532 (=> (not res!3036202) (not e!4510970))))

(declare-fun lostCause!1849 (Regex!20073) Bool)

(assert (=> b!7578532 (= res!3036202 (lostCause!1849 r!22341))))

(declare-fun b!7578533 () Bool)

(declare-fun tp!2208338 () Bool)

(assert (=> b!7578533 (= e!4510969 tp!2208338)))

(assert (= (and start!731772 res!3036203) b!7578532))

(assert (= (and b!7578532 res!3036202) b!7578531))

(assert (= (and b!7578531 res!3036204) b!7578528))

(assert (= (and start!731772 ((_ is ElementMatch!20073) r!22341)) b!7578526))

(assert (= (and start!731772 ((_ is Concat!28918) r!22341)) b!7578529))

(assert (= (and start!731772 ((_ is Star!20073) r!22341)) b!7578533))

(assert (= (and start!731772 ((_ is Union!20073) r!22341)) b!7578530))

(assert (= (and start!731772 ((_ is Cons!72832) s!13436)) b!7578527))

(declare-fun m!8135126 () Bool)

(assert (=> start!731772 m!8135126))

(declare-fun m!8135128 () Bool)

(assert (=> b!7578528 m!8135128))

(declare-fun m!8135130 () Bool)

(assert (=> b!7578528 m!8135130))

(declare-fun m!8135132 () Bool)

(assert (=> b!7578528 m!8135132))

(declare-fun m!8135134 () Bool)

(assert (=> b!7578531 m!8135134))

(declare-fun m!8135136 () Bool)

(assert (=> b!7578532 m!8135136))

(check-sat (not b!7578531) (not b!7578532) (not b!7578530) (not b!7578529) (not start!731772) (not b!7578533) (not b!7578528) (not b!7578527) tp_is_empty!50501)
(check-sat)
(get-model)

(declare-fun d!2318182 () Bool)

(declare-fun lostCauseFct!501 (Regex!20073) Bool)

(assert (=> d!2318182 (= (lostCause!1849 r!22341) (lostCauseFct!501 r!22341))))

(declare-fun bs!1940937 () Bool)

(assert (= bs!1940937 d!2318182))

(declare-fun m!8135138 () Bool)

(assert (=> bs!1940937 m!8135138))

(assert (=> b!7578532 d!2318182))

(declare-fun d!2318186 () Bool)

(assert (=> d!2318186 (= (isEmpty!41501 s!13436) ((_ is Nil!72832) s!13436))))

(assert (=> b!7578531 d!2318186))

(declare-fun b!7578618 () Bool)

(assert (=> b!7578618 true))

(assert (=> b!7578618 true))

(declare-fun bs!1940939 () Bool)

(declare-fun b!7578623 () Bool)

(assert (= bs!1940939 (and b!7578623 b!7578618)))

(declare-fun lambda!466889 () Int)

(declare-fun lambda!466888 () Int)

(assert (=> bs!1940939 (not (= lambda!466889 lambda!466888))))

(assert (=> b!7578623 true))

(assert (=> b!7578623 true))

(declare-fun bm!694716 () Bool)

(declare-fun call!694722 () Bool)

(assert (=> bm!694716 (= call!694722 (isEmpty!41501 s!13436))))

(declare-fun b!7578613 () Bool)

(declare-fun e!4511017 () Bool)

(declare-fun e!4511016 () Bool)

(assert (=> b!7578613 (= e!4511017 e!4511016)))

(declare-fun res!3036242 () Bool)

(assert (=> b!7578613 (= res!3036242 (not ((_ is EmptyLang!20073) r!22341)))))

(assert (=> b!7578613 (=> (not res!3036242) (not e!4511016))))

(declare-fun b!7578614 () Bool)

(declare-fun c!1397929 () Bool)

(assert (=> b!7578614 (= c!1397929 ((_ is ElementMatch!20073) r!22341))))

(declare-fun e!4511018 () Bool)

(assert (=> b!7578614 (= e!4511016 e!4511018)))

(declare-fun d!2318188 () Bool)

(declare-fun c!1397927 () Bool)

(assert (=> d!2318188 (= c!1397927 ((_ is EmptyExpr!20073) r!22341))))

(assert (=> d!2318188 (= (matchRSpec!4386 r!22341 s!13436) e!4511017)))

(declare-fun b!7578615 () Bool)

(assert (=> b!7578615 (= e!4511018 (= s!13436 (Cons!72832 (c!1397906 r!22341) Nil!72832)))))

(declare-fun b!7578616 () Bool)

(declare-fun c!1397928 () Bool)

(assert (=> b!7578616 (= c!1397928 ((_ is Union!20073) r!22341))))

(declare-fun e!4511019 () Bool)

(assert (=> b!7578616 (= e!4511018 e!4511019)))

(declare-fun c!1397930 () Bool)

(declare-fun bm!694717 () Bool)

(declare-fun call!694721 () Bool)

(declare-fun Exists!4308 (Int) Bool)

(assert (=> bm!694717 (= call!694721 (Exists!4308 (ite c!1397930 lambda!466888 lambda!466889)))))

(declare-fun b!7578617 () Bool)

(declare-fun e!4511021 () Bool)

(assert (=> b!7578617 (= e!4511019 e!4511021)))

(assert (=> b!7578617 (= c!1397930 ((_ is Star!20073) r!22341))))

(declare-fun e!4511015 () Bool)

(assert (=> b!7578618 (= e!4511015 call!694721)))

(declare-fun b!7578619 () Bool)

(declare-fun e!4511020 () Bool)

(assert (=> b!7578619 (= e!4511020 (matchRSpec!4386 (regTwo!40659 r!22341) s!13436))))

(declare-fun b!7578620 () Bool)

(declare-fun res!3036240 () Bool)

(assert (=> b!7578620 (=> res!3036240 e!4511015)))

(assert (=> b!7578620 (= res!3036240 call!694722)))

(assert (=> b!7578620 (= e!4511021 e!4511015)))

(declare-fun b!7578621 () Bool)

(assert (=> b!7578621 (= e!4511017 call!694722)))

(declare-fun b!7578622 () Bool)

(assert (=> b!7578622 (= e!4511019 e!4511020)))

(declare-fun res!3036241 () Bool)

(assert (=> b!7578622 (= res!3036241 (matchRSpec!4386 (regOne!40659 r!22341) s!13436))))

(assert (=> b!7578622 (=> res!3036241 e!4511020)))

(assert (=> b!7578623 (= e!4511021 call!694721)))

(assert (= (and d!2318188 c!1397927) b!7578621))

(assert (= (and d!2318188 (not c!1397927)) b!7578613))

(assert (= (and b!7578613 res!3036242) b!7578614))

(assert (= (and b!7578614 c!1397929) b!7578615))

(assert (= (and b!7578614 (not c!1397929)) b!7578616))

(assert (= (and b!7578616 c!1397928) b!7578622))

(assert (= (and b!7578616 (not c!1397928)) b!7578617))

(assert (= (and b!7578622 (not res!3036241)) b!7578619))

(assert (= (and b!7578617 c!1397930) b!7578620))

(assert (= (and b!7578617 (not c!1397930)) b!7578623))

(assert (= (and b!7578620 (not res!3036240)) b!7578618))

(assert (= (or b!7578618 b!7578623) bm!694717))

(assert (= (or b!7578621 b!7578620) bm!694716))

(assert (=> bm!694716 m!8135134))

(declare-fun m!8135146 () Bool)

(assert (=> bm!694717 m!8135146))

(declare-fun m!8135148 () Bool)

(assert (=> b!7578619 m!8135148))

(declare-fun m!8135150 () Bool)

(assert (=> b!7578622 m!8135150))

(assert (=> b!7578528 d!2318188))

(declare-fun b!7578716 () Bool)

(declare-fun e!4511076 () Bool)

(declare-fun e!4511072 () Bool)

(assert (=> b!7578716 (= e!4511076 e!4511072)))

(declare-fun res!3036293 () Bool)

(assert (=> b!7578716 (=> res!3036293 e!4511072)))

(declare-fun call!694734 () Bool)

(assert (=> b!7578716 (= res!3036293 call!694734)))

(declare-fun b!7578717 () Bool)

(declare-fun e!4511073 () Bool)

(declare-fun e!4511077 () Bool)

(assert (=> b!7578717 (= e!4511073 e!4511077)))

(declare-fun c!1397952 () Bool)

(assert (=> b!7578717 (= c!1397952 ((_ is EmptyLang!20073) r!22341))))

(declare-fun b!7578718 () Bool)

(declare-fun e!4511071 () Bool)

(declare-fun nullable!8766 (Regex!20073) Bool)

(assert (=> b!7578718 (= e!4511071 (nullable!8766 r!22341))))

(declare-fun b!7578719 () Bool)

(declare-fun e!4511074 () Bool)

(declare-fun head!15593 (List!72956) C!40472)

(assert (=> b!7578719 (= e!4511074 (= (head!15593 s!13436) (c!1397906 r!22341)))))

(declare-fun d!2318192 () Bool)

(assert (=> d!2318192 e!4511073))

(declare-fun c!1397951 () Bool)

(assert (=> d!2318192 (= c!1397951 ((_ is EmptyExpr!20073) r!22341))))

(declare-fun lt!2652479 () Bool)

(assert (=> d!2318192 (= lt!2652479 e!4511071)))

(declare-fun c!1397950 () Bool)

(assert (=> d!2318192 (= c!1397950 (isEmpty!41501 s!13436))))

(assert (=> d!2318192 (validRegex!10501 r!22341)))

(assert (=> d!2318192 (= (matchR!9665 r!22341 s!13436) lt!2652479)))

(declare-fun b!7578720 () Bool)

(declare-fun res!3036296 () Bool)

(declare-fun e!4511075 () Bool)

(assert (=> b!7578720 (=> res!3036296 e!4511075)))

(assert (=> b!7578720 (= res!3036296 (not ((_ is ElementMatch!20073) r!22341)))))

(assert (=> b!7578720 (= e!4511077 e!4511075)))

(declare-fun bm!694729 () Bool)

(assert (=> bm!694729 (= call!694734 (isEmpty!41501 s!13436))))

(declare-fun b!7578721 () Bool)

(assert (=> b!7578721 (= e!4511072 (not (= (head!15593 s!13436) (c!1397906 r!22341))))))

(declare-fun b!7578722 () Bool)

(assert (=> b!7578722 (= e!4511073 (= lt!2652479 call!694734))))

(declare-fun b!7578723 () Bool)

(assert (=> b!7578723 (= e!4511077 (not lt!2652479))))

(declare-fun b!7578724 () Bool)

(declare-fun res!3036299 () Bool)

(assert (=> b!7578724 (=> (not res!3036299) (not e!4511074))))

(assert (=> b!7578724 (= res!3036299 (not call!694734))))

(declare-fun b!7578725 () Bool)

(assert (=> b!7578725 (= e!4511075 e!4511076)))

(declare-fun res!3036298 () Bool)

(assert (=> b!7578725 (=> (not res!3036298) (not e!4511076))))

(assert (=> b!7578725 (= res!3036298 (not lt!2652479))))

(declare-fun b!7578726 () Bool)

(declare-fun res!3036294 () Bool)

(assert (=> b!7578726 (=> res!3036294 e!4511075)))

(assert (=> b!7578726 (= res!3036294 e!4511074)))

(declare-fun res!3036297 () Bool)

(assert (=> b!7578726 (=> (not res!3036297) (not e!4511074))))

(assert (=> b!7578726 (= res!3036297 lt!2652479)))

(declare-fun b!7578727 () Bool)

(declare-fun res!3036300 () Bool)

(assert (=> b!7578727 (=> (not res!3036300) (not e!4511074))))

(declare-fun tail!15133 (List!72956) List!72956)

(assert (=> b!7578727 (= res!3036300 (isEmpty!41501 (tail!15133 s!13436)))))

(declare-fun b!7578728 () Bool)

(declare-fun derivativeStep!5793 (Regex!20073 C!40472) Regex!20073)

(assert (=> b!7578728 (= e!4511071 (matchR!9665 (derivativeStep!5793 r!22341 (head!15593 s!13436)) (tail!15133 s!13436)))))

(declare-fun b!7578729 () Bool)

(declare-fun res!3036295 () Bool)

(assert (=> b!7578729 (=> res!3036295 e!4511072)))

(assert (=> b!7578729 (= res!3036295 (not (isEmpty!41501 (tail!15133 s!13436))))))

(assert (= (and d!2318192 c!1397950) b!7578718))

(assert (= (and d!2318192 (not c!1397950)) b!7578728))

(assert (= (and d!2318192 c!1397951) b!7578722))

(assert (= (and d!2318192 (not c!1397951)) b!7578717))

(assert (= (and b!7578717 c!1397952) b!7578723))

(assert (= (and b!7578717 (not c!1397952)) b!7578720))

(assert (= (and b!7578720 (not res!3036296)) b!7578726))

(assert (= (and b!7578726 res!3036297) b!7578724))

(assert (= (and b!7578724 res!3036299) b!7578727))

(assert (= (and b!7578727 res!3036300) b!7578719))

(assert (= (and b!7578726 (not res!3036294)) b!7578725))

(assert (= (and b!7578725 res!3036298) b!7578716))

(assert (= (and b!7578716 (not res!3036293)) b!7578729))

(assert (= (and b!7578729 (not res!3036295)) b!7578721))

(assert (= (or b!7578722 b!7578716 b!7578724) bm!694729))

(declare-fun m!8135166 () Bool)

(assert (=> b!7578729 m!8135166))

(assert (=> b!7578729 m!8135166))

(declare-fun m!8135168 () Bool)

(assert (=> b!7578729 m!8135168))

(declare-fun m!8135170 () Bool)

(assert (=> b!7578728 m!8135170))

(assert (=> b!7578728 m!8135170))

(declare-fun m!8135172 () Bool)

(assert (=> b!7578728 m!8135172))

(assert (=> b!7578728 m!8135166))

(assert (=> b!7578728 m!8135172))

(assert (=> b!7578728 m!8135166))

(declare-fun m!8135174 () Bool)

(assert (=> b!7578728 m!8135174))

(assert (=> b!7578719 m!8135170))

(assert (=> b!7578721 m!8135170))

(assert (=> bm!694729 m!8135134))

(assert (=> d!2318192 m!8135134))

(assert (=> d!2318192 m!8135126))

(assert (=> b!7578727 m!8135166))

(assert (=> b!7578727 m!8135166))

(assert (=> b!7578727 m!8135168))

(declare-fun m!8135176 () Bool)

(assert (=> b!7578718 m!8135176))

(assert (=> b!7578528 d!2318192))

(declare-fun d!2318198 () Bool)

(assert (=> d!2318198 (= (matchR!9665 r!22341 s!13436) (matchRSpec!4386 r!22341 s!13436))))

(declare-fun lt!2652482 () Unit!167102)

(declare-fun choose!58600 (Regex!20073 List!72956) Unit!167102)

(assert (=> d!2318198 (= lt!2652482 (choose!58600 r!22341 s!13436))))

(assert (=> d!2318198 (validRegex!10501 r!22341)))

(assert (=> d!2318198 (= (mainMatchTheorem!4380 r!22341 s!13436) lt!2652482)))

(declare-fun bs!1940942 () Bool)

(assert (= bs!1940942 d!2318198))

(assert (=> bs!1940942 m!8135130))

(assert (=> bs!1940942 m!8135128))

(declare-fun m!8135186 () Bool)

(assert (=> bs!1940942 m!8135186))

(assert (=> bs!1940942 m!8135126))

(assert (=> b!7578528 d!2318198))

(declare-fun d!2318202 () Bool)

(declare-fun res!3036319 () Bool)

(declare-fun e!4511110 () Bool)

(assert (=> d!2318202 (=> res!3036319 e!4511110)))

(assert (=> d!2318202 (= res!3036319 ((_ is ElementMatch!20073) r!22341))))

(assert (=> d!2318202 (= (validRegex!10501 r!22341) e!4511110)))

(declare-fun b!7578792 () Bool)

(declare-fun res!3036318 () Bool)

(declare-fun e!4511114 () Bool)

(assert (=> b!7578792 (=> res!3036318 e!4511114)))

(assert (=> b!7578792 (= res!3036318 (not ((_ is Concat!28918) r!22341)))))

(declare-fun e!4511112 () Bool)

(assert (=> b!7578792 (= e!4511112 e!4511114)))

(declare-fun bm!694739 () Bool)

(declare-fun call!694744 () Bool)

(declare-fun call!694745 () Bool)

(assert (=> bm!694739 (= call!694744 call!694745)))

(declare-fun bm!694740 () Bool)

(declare-fun c!1397960 () Bool)

(declare-fun c!1397959 () Bool)

(assert (=> bm!694740 (= call!694745 (validRegex!10501 (ite c!1397960 (reg!20402 r!22341) (ite c!1397959 (regOne!40659 r!22341) (regTwo!40658 r!22341)))))))

(declare-fun b!7578793 () Bool)

(declare-fun e!4511113 () Bool)

(assert (=> b!7578793 (= e!4511110 e!4511113)))

(assert (=> b!7578793 (= c!1397960 ((_ is Star!20073) r!22341))))

(declare-fun b!7578794 () Bool)

(declare-fun e!4511115 () Bool)

(assert (=> b!7578794 (= e!4511115 call!694744)))

(declare-fun bm!694741 () Bool)

(declare-fun call!694746 () Bool)

(assert (=> bm!694741 (= call!694746 (validRegex!10501 (ite c!1397959 (regTwo!40659 r!22341) (regOne!40658 r!22341))))))

(declare-fun b!7578795 () Bool)

(assert (=> b!7578795 (= e!4511113 e!4511112)))

(assert (=> b!7578795 (= c!1397959 ((_ is Union!20073) r!22341))))

(declare-fun b!7578796 () Bool)

(assert (=> b!7578796 (= e!4511114 e!4511115)))

(declare-fun res!3036316 () Bool)

(assert (=> b!7578796 (=> (not res!3036316) (not e!4511115))))

(assert (=> b!7578796 (= res!3036316 call!694746)))

(declare-fun b!7578797 () Bool)

(declare-fun res!3036317 () Bool)

(declare-fun e!4511111 () Bool)

(assert (=> b!7578797 (=> (not res!3036317) (not e!4511111))))

(assert (=> b!7578797 (= res!3036317 call!694744)))

(assert (=> b!7578797 (= e!4511112 e!4511111)))

(declare-fun b!7578798 () Bool)

(declare-fun e!4511109 () Bool)

(assert (=> b!7578798 (= e!4511109 call!694745)))

(declare-fun b!7578799 () Bool)

(assert (=> b!7578799 (= e!4511113 e!4511109)))

(declare-fun res!3036320 () Bool)

(assert (=> b!7578799 (= res!3036320 (not (nullable!8766 (reg!20402 r!22341))))))

(assert (=> b!7578799 (=> (not res!3036320) (not e!4511109))))

(declare-fun b!7578800 () Bool)

(assert (=> b!7578800 (= e!4511111 call!694746)))

(assert (= (and d!2318202 (not res!3036319)) b!7578793))

(assert (= (and b!7578793 c!1397960) b!7578799))

(assert (= (and b!7578793 (not c!1397960)) b!7578795))

(assert (= (and b!7578799 res!3036320) b!7578798))

(assert (= (and b!7578795 c!1397959) b!7578797))

(assert (= (and b!7578795 (not c!1397959)) b!7578792))

(assert (= (and b!7578797 res!3036317) b!7578800))

(assert (= (and b!7578792 (not res!3036318)) b!7578796))

(assert (= (and b!7578796 res!3036316) b!7578794))

(assert (= (or b!7578800 b!7578796) bm!694741))

(assert (= (or b!7578797 b!7578794) bm!694739))

(assert (= (or b!7578798 bm!694739) bm!694740))

(declare-fun m!8135188 () Bool)

(assert (=> bm!694740 m!8135188))

(declare-fun m!8135190 () Bool)

(assert (=> bm!694741 m!8135190))

(declare-fun m!8135192 () Bool)

(assert (=> b!7578799 m!8135192))

(assert (=> start!731772 d!2318202))

(declare-fun b!7578805 () Bool)

(declare-fun e!4511118 () Bool)

(declare-fun tp!2208382 () Bool)

(assert (=> b!7578805 (= e!4511118 (and tp_is_empty!50501 tp!2208382))))

(assert (=> b!7578527 (= tp!2208339 e!4511118)))

(assert (= (and b!7578527 ((_ is Cons!72832) (t!387691 s!13436))) b!7578805))

(declare-fun b!7578817 () Bool)

(declare-fun e!4511121 () Bool)

(declare-fun tp!2208395 () Bool)

(declare-fun tp!2208397 () Bool)

(assert (=> b!7578817 (= e!4511121 (and tp!2208395 tp!2208397))))

(declare-fun b!7578819 () Bool)

(declare-fun tp!2208393 () Bool)

(declare-fun tp!2208396 () Bool)

(assert (=> b!7578819 (= e!4511121 (and tp!2208393 tp!2208396))))

(declare-fun b!7578818 () Bool)

(declare-fun tp!2208394 () Bool)

(assert (=> b!7578818 (= e!4511121 tp!2208394)))

(assert (=> b!7578533 (= tp!2208338 e!4511121)))

(declare-fun b!7578816 () Bool)

(assert (=> b!7578816 (= e!4511121 tp_is_empty!50501)))

(assert (= (and b!7578533 ((_ is ElementMatch!20073) (reg!20402 r!22341))) b!7578816))

(assert (= (and b!7578533 ((_ is Concat!28918) (reg!20402 r!22341))) b!7578817))

(assert (= (and b!7578533 ((_ is Star!20073) (reg!20402 r!22341))) b!7578818))

(assert (= (and b!7578533 ((_ is Union!20073) (reg!20402 r!22341))) b!7578819))

(declare-fun b!7578821 () Bool)

(declare-fun e!4511122 () Bool)

(declare-fun tp!2208400 () Bool)

(declare-fun tp!2208402 () Bool)

(assert (=> b!7578821 (= e!4511122 (and tp!2208400 tp!2208402))))

(declare-fun b!7578823 () Bool)

(declare-fun tp!2208398 () Bool)

(declare-fun tp!2208401 () Bool)

(assert (=> b!7578823 (= e!4511122 (and tp!2208398 tp!2208401))))

(declare-fun b!7578822 () Bool)

(declare-fun tp!2208399 () Bool)

(assert (=> b!7578822 (= e!4511122 tp!2208399)))

(assert (=> b!7578530 (= tp!2208337 e!4511122)))

(declare-fun b!7578820 () Bool)

(assert (=> b!7578820 (= e!4511122 tp_is_empty!50501)))

(assert (= (and b!7578530 ((_ is ElementMatch!20073) (regOne!40659 r!22341))) b!7578820))

(assert (= (and b!7578530 ((_ is Concat!28918) (regOne!40659 r!22341))) b!7578821))

(assert (= (and b!7578530 ((_ is Star!20073) (regOne!40659 r!22341))) b!7578822))

(assert (= (and b!7578530 ((_ is Union!20073) (regOne!40659 r!22341))) b!7578823))

(declare-fun b!7578825 () Bool)

(declare-fun e!4511123 () Bool)

(declare-fun tp!2208405 () Bool)

(declare-fun tp!2208407 () Bool)

(assert (=> b!7578825 (= e!4511123 (and tp!2208405 tp!2208407))))

(declare-fun b!7578827 () Bool)

(declare-fun tp!2208403 () Bool)

(declare-fun tp!2208406 () Bool)

(assert (=> b!7578827 (= e!4511123 (and tp!2208403 tp!2208406))))

(declare-fun b!7578826 () Bool)

(declare-fun tp!2208404 () Bool)

(assert (=> b!7578826 (= e!4511123 tp!2208404)))

(assert (=> b!7578530 (= tp!2208336 e!4511123)))

(declare-fun b!7578824 () Bool)

(assert (=> b!7578824 (= e!4511123 tp_is_empty!50501)))

(assert (= (and b!7578530 ((_ is ElementMatch!20073) (regTwo!40659 r!22341))) b!7578824))

(assert (= (and b!7578530 ((_ is Concat!28918) (regTwo!40659 r!22341))) b!7578825))

(assert (= (and b!7578530 ((_ is Star!20073) (regTwo!40659 r!22341))) b!7578826))

(assert (= (and b!7578530 ((_ is Union!20073) (regTwo!40659 r!22341))) b!7578827))

(declare-fun b!7578829 () Bool)

(declare-fun e!4511124 () Bool)

(declare-fun tp!2208410 () Bool)

(declare-fun tp!2208412 () Bool)

(assert (=> b!7578829 (= e!4511124 (and tp!2208410 tp!2208412))))

(declare-fun b!7578831 () Bool)

(declare-fun tp!2208408 () Bool)

(declare-fun tp!2208411 () Bool)

(assert (=> b!7578831 (= e!4511124 (and tp!2208408 tp!2208411))))

(declare-fun b!7578830 () Bool)

(declare-fun tp!2208409 () Bool)

(assert (=> b!7578830 (= e!4511124 tp!2208409)))

(assert (=> b!7578529 (= tp!2208341 e!4511124)))

(declare-fun b!7578828 () Bool)

(assert (=> b!7578828 (= e!4511124 tp_is_empty!50501)))

(assert (= (and b!7578529 ((_ is ElementMatch!20073) (regOne!40658 r!22341))) b!7578828))

(assert (= (and b!7578529 ((_ is Concat!28918) (regOne!40658 r!22341))) b!7578829))

(assert (= (and b!7578529 ((_ is Star!20073) (regOne!40658 r!22341))) b!7578830))

(assert (= (and b!7578529 ((_ is Union!20073) (regOne!40658 r!22341))) b!7578831))

(declare-fun b!7578833 () Bool)

(declare-fun e!4511125 () Bool)

(declare-fun tp!2208415 () Bool)

(declare-fun tp!2208417 () Bool)

(assert (=> b!7578833 (= e!4511125 (and tp!2208415 tp!2208417))))

(declare-fun b!7578835 () Bool)

(declare-fun tp!2208413 () Bool)

(declare-fun tp!2208416 () Bool)

(assert (=> b!7578835 (= e!4511125 (and tp!2208413 tp!2208416))))

(declare-fun b!7578834 () Bool)

(declare-fun tp!2208414 () Bool)

(assert (=> b!7578834 (= e!4511125 tp!2208414)))

(assert (=> b!7578529 (= tp!2208340 e!4511125)))

(declare-fun b!7578832 () Bool)

(assert (=> b!7578832 (= e!4511125 tp_is_empty!50501)))

(assert (= (and b!7578529 ((_ is ElementMatch!20073) (regTwo!40658 r!22341))) b!7578832))

(assert (= (and b!7578529 ((_ is Concat!28918) (regTwo!40658 r!22341))) b!7578833))

(assert (= (and b!7578529 ((_ is Star!20073) (regTwo!40658 r!22341))) b!7578834))

(assert (= (and b!7578529 ((_ is Union!20073) (regTwo!40658 r!22341))) b!7578835))

(check-sat (not bm!694729) (not b!7578729) (not bm!694717) (not b!7578822) (not b!7578831) tp_is_empty!50501 (not d!2318198) (not b!7578826) (not b!7578827) (not b!7578727) (not b!7578821) (not b!7578805) (not bm!694741) (not b!7578830) (not b!7578718) (not b!7578817) (not bm!694716) (not b!7578619) (not b!7578721) (not b!7578835) (not b!7578829) (not b!7578622) (not b!7578825) (not b!7578834) (not b!7578833) (not d!2318192) (not b!7578728) (not b!7578823) (not b!7578819) (not b!7578818) (not b!7578719) (not d!2318182) (not b!7578799) (not bm!694740))
(check-sat)
