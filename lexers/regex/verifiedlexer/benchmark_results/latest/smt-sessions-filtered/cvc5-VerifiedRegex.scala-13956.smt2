; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739522 () Bool)

(assert start!739522)

(declare-fun b!7762717 () Bool)

(assert (=> b!7762717 true))

(assert (=> b!7762717 true))

(assert (=> b!7762717 true))

(declare-fun b!7762714 () Bool)

(declare-fun res!3094639 () Bool)

(declare-fun e!4600378 () Bool)

(assert (=> b!7762714 (=> (not res!3094639) (not e!4600378))))

(declare-datatypes ((C!41738 0))(
  ( (C!41739 (val!31309 Int)) )
))
(declare-datatypes ((Regex!20706 0))(
  ( (ElementMatch!20706 (c!1430935 C!41738)) (Concat!29551 (regOne!41924 Regex!20706) (regTwo!41924 Regex!20706)) (EmptyExpr!20706) (Star!20706 (reg!21035 Regex!20706)) (EmptyLang!20706) (Union!20706 (regOne!41925 Regex!20706) (regTwo!41925 Regex!20706)) )
))
(declare-fun r2!3230 () Regex!20706)

(declare-fun validRegex!11122 (Regex!20706) Bool)

(assert (=> b!7762714 (= res!3094639 (validRegex!11122 r2!3230))))

(declare-fun b!7762715 () Bool)

(declare-fun e!4600379 () Bool)

(declare-fun tp_is_empty!51767 () Bool)

(assert (=> b!7762715 (= e!4600379 tp_is_empty!51767)))

(declare-fun b!7762716 () Bool)

(declare-fun res!3094640 () Bool)

(declare-fun e!4600375 () Bool)

(assert (=> b!7762716 (=> (not res!3094640) (not e!4600375))))

(declare-datatypes ((List!73549 0))(
  ( (Nil!73425) (Cons!73425 (h!79873 C!41738) (t!388284 List!73549)) )
))
(declare-datatypes ((tuple2!69798 0))(
  ( (tuple2!69799 (_1!38202 List!73549) (_2!38202 List!73549)) )
))
(declare-datatypes ((Option!17693 0))(
  ( (None!17692) (Some!17692 (v!54827 tuple2!69798)) )
))
(declare-fun lt!2670516 () Option!17693)

(declare-fun isEmpty!42093 (Option!17693) Bool)

(assert (=> b!7762716 (= res!3094640 (isEmpty!42093 lt!2670516))))

(declare-fun res!3094636 () Bool)

(assert (=> b!7762717 (=> (not res!3094636) (not e!4600375))))

(declare-fun lambda!472052 () Int)

(declare-fun Exists!4744 (Int) Bool)

(assert (=> b!7762717 (= res!3094636 (Exists!4744 lambda!472052))))

(declare-fun b!7762718 () Bool)

(declare-fun e!4600376 () Bool)

(assert (=> b!7762718 (= e!4600376 tp_is_empty!51767)))

(declare-fun b!7762719 () Bool)

(declare-fun e!4600374 () Bool)

(assert (=> b!7762719 (= e!4600375 e!4600374)))

(declare-fun res!3094637 () Bool)

(assert (=> b!7762719 (=> (not res!3094637) (not e!4600374))))

(declare-fun lt!2670515 () tuple2!69798)

(declare-fun s!10216 () List!73549)

(declare-fun ++!17881 (List!73549 List!73549) List!73549)

(assert (=> b!7762719 (= res!3094637 (= (++!17881 (_1!38202 lt!2670515) (_2!38202 lt!2670515)) s!10216))))

(declare-fun pickWitness!565 (Int) tuple2!69798)

(assert (=> b!7762719 (= lt!2670515 (pickWitness!565 lambda!472052))))

(declare-fun b!7762720 () Bool)

(declare-fun e!4600377 () Bool)

(declare-fun tp!2280007 () Bool)

(assert (=> b!7762720 (= e!4600377 (and tp_is_empty!51767 tp!2280007))))

(declare-fun b!7762721 () Bool)

(declare-fun tp!2280010 () Bool)

(assert (=> b!7762721 (= e!4600376 tp!2280010)))

(declare-fun b!7762722 () Bool)

(declare-fun tp!2280011 () Bool)

(declare-fun tp!2280012 () Bool)

(assert (=> b!7762722 (= e!4600376 (and tp!2280011 tp!2280012))))

(declare-fun b!7762723 () Bool)

(declare-fun tp!2280005 () Bool)

(assert (=> b!7762723 (= e!4600379 tp!2280005)))

(declare-fun res!3094635 () Bool)

(assert (=> start!739522 (=> (not res!3094635) (not e!4600378))))

(declare-fun r1!3330 () Regex!20706)

(assert (=> start!739522 (= res!3094635 (validRegex!11122 r1!3330))))

(assert (=> start!739522 e!4600378))

(assert (=> start!739522 e!4600379))

(assert (=> start!739522 e!4600376))

(assert (=> start!739522 e!4600377))

(declare-fun b!7762724 () Bool)

(declare-fun tp!2280009 () Bool)

(declare-fun tp!2280008 () Bool)

(assert (=> b!7762724 (= e!4600376 (and tp!2280009 tp!2280008))))

(declare-fun b!7762725 () Bool)

(declare-fun tp!2280003 () Bool)

(declare-fun tp!2280004 () Bool)

(assert (=> b!7762725 (= e!4600379 (and tp!2280003 tp!2280004))))

(declare-fun b!7762726 () Bool)

(assert (=> b!7762726 (= e!4600378 e!4600375)))

(declare-fun res!3094638 () Bool)

(assert (=> b!7762726 (=> (not res!3094638) (not e!4600375))))

(declare-fun isDefined!14305 (Option!17693) Bool)

(assert (=> b!7762726 (= res!3094638 (not (isDefined!14305 lt!2670516)))))

(declare-fun findConcatSeparation!3723 (Regex!20706 Regex!20706 List!73549 List!73549 List!73549) Option!17693)

(assert (=> b!7762726 (= lt!2670516 (findConcatSeparation!3723 r1!3330 r2!3230 Nil!73425 s!10216 s!10216))))

(declare-fun b!7762727 () Bool)

(declare-fun matchR!10172 (Regex!20706 List!73549) Bool)

(assert (=> b!7762727 (= e!4600374 (not (matchR!10172 r1!3330 (_1!38202 lt!2670515))))))

(declare-fun b!7762728 () Bool)

(declare-fun tp!2280002 () Bool)

(declare-fun tp!2280006 () Bool)

(assert (=> b!7762728 (= e!4600379 (and tp!2280002 tp!2280006))))

(assert (= (and start!739522 res!3094635) b!7762714))

(assert (= (and b!7762714 res!3094639) b!7762726))

(assert (= (and b!7762726 res!3094638) b!7762716))

(assert (= (and b!7762716 res!3094640) b!7762717))

(assert (= (and b!7762717 res!3094636) b!7762719))

(assert (= (and b!7762719 res!3094637) b!7762727))

(assert (= (and start!739522 (is-ElementMatch!20706 r1!3330)) b!7762715))

(assert (= (and start!739522 (is-Concat!29551 r1!3330)) b!7762725))

(assert (= (and start!739522 (is-Star!20706 r1!3330)) b!7762723))

(assert (= (and start!739522 (is-Union!20706 r1!3330)) b!7762728))

(assert (= (and start!739522 (is-ElementMatch!20706 r2!3230)) b!7762718))

(assert (= (and start!739522 (is-Concat!29551 r2!3230)) b!7762722))

(assert (= (and start!739522 (is-Star!20706 r2!3230)) b!7762721))

(assert (= (and start!739522 (is-Union!20706 r2!3230)) b!7762724))

(assert (= (and start!739522 (is-Cons!73425 s!10216)) b!7762720))

(declare-fun m!8221330 () Bool)

(assert (=> b!7762727 m!8221330))

(declare-fun m!8221332 () Bool)

(assert (=> start!739522 m!8221332))

(declare-fun m!8221334 () Bool)

(assert (=> b!7762717 m!8221334))

(declare-fun m!8221336 () Bool)

(assert (=> b!7762726 m!8221336))

(declare-fun m!8221338 () Bool)

(assert (=> b!7762726 m!8221338))

(declare-fun m!8221340 () Bool)

(assert (=> b!7762716 m!8221340))

(declare-fun m!8221342 () Bool)

(assert (=> b!7762714 m!8221342))

(declare-fun m!8221344 () Bool)

(assert (=> b!7762719 m!8221344))

(declare-fun m!8221346 () Bool)

(assert (=> b!7762719 m!8221346))

(push 1)

(assert (not b!7762722))

(assert (not b!7762721))

(assert (not b!7762726))

(assert (not b!7762720))

(assert (not b!7762719))

(assert (not b!7762717))

(assert (not b!7762725))

(assert (not b!7762728))

(assert (not b!7762723))

(assert (not start!739522))

(assert (not b!7762724))

(assert (not b!7762716))

(assert (not b!7762714))

(assert tp_is_empty!51767)

(assert (not b!7762727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7762798 () Bool)

(declare-fun e!4600406 () List!73549)

(assert (=> b!7762798 (= e!4600406 (_2!38202 lt!2670515))))

(declare-fun b!7762800 () Bool)

(declare-fun res!3094672 () Bool)

(declare-fun e!4600407 () Bool)

(assert (=> b!7762800 (=> (not res!3094672) (not e!4600407))))

(declare-fun lt!2670525 () List!73549)

(declare-fun size!42685 (List!73549) Int)

(assert (=> b!7762800 (= res!3094672 (= (size!42685 lt!2670525) (+ (size!42685 (_1!38202 lt!2670515)) (size!42685 (_2!38202 lt!2670515)))))))

(declare-fun d!2343681 () Bool)

(assert (=> d!2343681 e!4600407))

(declare-fun res!3094671 () Bool)

(assert (=> d!2343681 (=> (not res!3094671) (not e!4600407))))

(declare-fun content!15582 (List!73549) (Set C!41738))

(assert (=> d!2343681 (= res!3094671 (= (content!15582 lt!2670525) (set.union (content!15582 (_1!38202 lt!2670515)) (content!15582 (_2!38202 lt!2670515)))))))

(assert (=> d!2343681 (= lt!2670525 e!4600406)))

(declare-fun c!1430939 () Bool)

(assert (=> d!2343681 (= c!1430939 (is-Nil!73425 (_1!38202 lt!2670515)))))

(assert (=> d!2343681 (= (++!17881 (_1!38202 lt!2670515) (_2!38202 lt!2670515)) lt!2670525)))

(declare-fun b!7762799 () Bool)

(assert (=> b!7762799 (= e!4600406 (Cons!73425 (h!79873 (_1!38202 lt!2670515)) (++!17881 (t!388284 (_1!38202 lt!2670515)) (_2!38202 lt!2670515))))))

(declare-fun b!7762801 () Bool)

(assert (=> b!7762801 (= e!4600407 (or (not (= (_2!38202 lt!2670515) Nil!73425)) (= lt!2670525 (_1!38202 lt!2670515))))))

(assert (= (and d!2343681 c!1430939) b!7762798))

(assert (= (and d!2343681 (not c!1430939)) b!7762799))

(assert (= (and d!2343681 res!3094671) b!7762800))

(assert (= (and b!7762800 res!3094672) b!7762801))

(declare-fun m!8221366 () Bool)

(assert (=> b!7762800 m!8221366))

(declare-fun m!8221368 () Bool)

(assert (=> b!7762800 m!8221368))

(declare-fun m!8221370 () Bool)

(assert (=> b!7762800 m!8221370))

(declare-fun m!8221372 () Bool)

(assert (=> d!2343681 m!8221372))

(declare-fun m!8221374 () Bool)

(assert (=> d!2343681 m!8221374))

(declare-fun m!8221376 () Bool)

(assert (=> d!2343681 m!8221376))

(declare-fun m!8221378 () Bool)

(assert (=> b!7762799 m!8221378))

(assert (=> b!7762719 d!2343681))

(declare-fun d!2343687 () Bool)

(declare-fun lt!2670528 () tuple2!69798)

(declare-fun dynLambda!29991 (Int tuple2!69798) Bool)

(assert (=> d!2343687 (dynLambda!29991 lambda!472052 lt!2670528)))

(declare-fun choose!59443 (Int) tuple2!69798)

(assert (=> d!2343687 (= lt!2670528 (choose!59443 lambda!472052))))

(assert (=> d!2343687 (Exists!4744 lambda!472052)))

(assert (=> d!2343687 (= (pickWitness!565 lambda!472052) lt!2670528)))

(declare-fun b_lambda!289451 () Bool)

(assert (=> (not b_lambda!289451) (not d!2343687)))

(declare-fun bs!1965978 () Bool)

(assert (= bs!1965978 d!2343687))

(declare-fun m!8221380 () Bool)

(assert (=> bs!1965978 m!8221380))

(declare-fun m!8221382 () Bool)

(assert (=> bs!1965978 m!8221382))

(assert (=> bs!1965978 m!8221334))

(assert (=> b!7762719 d!2343687))

(declare-fun b!7762820 () Bool)

(declare-fun e!4600425 () Bool)

(declare-fun call!719271 () Bool)

(assert (=> b!7762820 (= e!4600425 call!719271)))

(declare-fun b!7762821 () Bool)

(declare-fun e!4600422 () Bool)

(declare-fun e!4600423 () Bool)

(assert (=> b!7762821 (= e!4600422 e!4600423)))

(declare-fun res!3094684 () Bool)

(assert (=> b!7762821 (=> (not res!3094684) (not e!4600423))))

(declare-fun call!719270 () Bool)

(assert (=> b!7762821 (= res!3094684 call!719270)))

(declare-fun b!7762822 () Bool)

(declare-fun res!3094683 () Bool)

(assert (=> b!7762822 (=> res!3094683 e!4600422)))

(assert (=> b!7762822 (= res!3094683 (not (is-Concat!29551 r2!3230)))))

(declare-fun e!4600426 () Bool)

(assert (=> b!7762822 (= e!4600426 e!4600422)))

(declare-fun b!7762823 () Bool)

(declare-fun e!4600424 () Bool)

(declare-fun e!4600428 () Bool)

(assert (=> b!7762823 (= e!4600424 e!4600428)))

(declare-fun c!1430945 () Bool)

(assert (=> b!7762823 (= c!1430945 (is-Star!20706 r2!3230))))

(declare-fun bm!719264 () Bool)

(declare-fun call!719269 () Bool)

(assert (=> bm!719264 (= call!719269 call!719271)))

(declare-fun b!7762824 () Bool)

(declare-fun e!4600427 () Bool)

(assert (=> b!7762824 (= e!4600427 call!719269)))

(declare-fun b!7762825 () Bool)

(assert (=> b!7762825 (= e!4600428 e!4600426)))

(declare-fun c!1430944 () Bool)

(assert (=> b!7762825 (= c!1430944 (is-Union!20706 r2!3230))))

(declare-fun bm!719265 () Bool)

(assert (=> bm!719265 (= call!719270 (validRegex!11122 (ite c!1430944 (regOne!41925 r2!3230) (regOne!41924 r2!3230))))))

(declare-fun d!2343689 () Bool)

(declare-fun res!3094686 () Bool)

(assert (=> d!2343689 (=> res!3094686 e!4600424)))

(assert (=> d!2343689 (= res!3094686 (is-ElementMatch!20706 r2!3230))))

(assert (=> d!2343689 (= (validRegex!11122 r2!3230) e!4600424)))

(declare-fun bm!719266 () Bool)

(assert (=> bm!719266 (= call!719271 (validRegex!11122 (ite c!1430945 (reg!21035 r2!3230) (ite c!1430944 (regTwo!41925 r2!3230) (regTwo!41924 r2!3230)))))))

(declare-fun b!7762826 () Bool)

(assert (=> b!7762826 (= e!4600428 e!4600425)))

(declare-fun res!3094687 () Bool)

(declare-fun nullable!9116 (Regex!20706) Bool)

(assert (=> b!7762826 (= res!3094687 (not (nullable!9116 (reg!21035 r2!3230))))))

(assert (=> b!7762826 (=> (not res!3094687) (not e!4600425))))

(declare-fun b!7762827 () Bool)

(declare-fun res!3094685 () Bool)

(assert (=> b!7762827 (=> (not res!3094685) (not e!4600427))))

(assert (=> b!7762827 (= res!3094685 call!719270)))

(assert (=> b!7762827 (= e!4600426 e!4600427)))

(declare-fun b!7762828 () Bool)

(assert (=> b!7762828 (= e!4600423 call!719269)))

(assert (= (and d!2343689 (not res!3094686)) b!7762823))

(assert (= (and b!7762823 c!1430945) b!7762826))

(assert (= (and b!7762823 (not c!1430945)) b!7762825))

(assert (= (and b!7762826 res!3094687) b!7762820))

(assert (= (and b!7762825 c!1430944) b!7762827))

(assert (= (and b!7762825 (not c!1430944)) b!7762822))

(assert (= (and b!7762827 res!3094685) b!7762824))

(assert (= (and b!7762822 (not res!3094683)) b!7762821))

(assert (= (and b!7762821 res!3094684) b!7762828))

(assert (= (or b!7762827 b!7762821) bm!719265))

(assert (= (or b!7762824 b!7762828) bm!719264))

(assert (= (or b!7762820 bm!719264) bm!719266))

(declare-fun m!8221384 () Bool)

(assert (=> bm!719265 m!8221384))

(declare-fun m!8221386 () Bool)

(assert (=> bm!719266 m!8221386))

(declare-fun m!8221388 () Bool)

(assert (=> b!7762826 m!8221388))

(assert (=> b!7762714 d!2343689))

(declare-fun d!2343691 () Bool)

(declare-fun choose!59444 (Int) Bool)

(assert (=> d!2343691 (= (Exists!4744 lambda!472052) (choose!59444 lambda!472052))))

(declare-fun bs!1965979 () Bool)

(assert (= bs!1965979 d!2343691))

(declare-fun m!8221390 () Bool)

(assert (=> bs!1965979 m!8221390))

(assert (=> b!7762717 d!2343691))

(declare-fun b!7762829 () Bool)

(declare-fun e!4600432 () Bool)

(declare-fun call!719274 () Bool)

(assert (=> b!7762829 (= e!4600432 call!719274)))

(declare-fun b!7762830 () Bool)

(declare-fun e!4600429 () Bool)

(declare-fun e!4600430 () Bool)

(assert (=> b!7762830 (= e!4600429 e!4600430)))

(declare-fun res!3094689 () Bool)

(assert (=> b!7762830 (=> (not res!3094689) (not e!4600430))))

(declare-fun call!719273 () Bool)

(assert (=> b!7762830 (= res!3094689 call!719273)))

(declare-fun b!7762831 () Bool)

(declare-fun res!3094688 () Bool)

(assert (=> b!7762831 (=> res!3094688 e!4600429)))

(assert (=> b!7762831 (= res!3094688 (not (is-Concat!29551 r1!3330)))))

(declare-fun e!4600433 () Bool)

(assert (=> b!7762831 (= e!4600433 e!4600429)))

(declare-fun b!7762832 () Bool)

(declare-fun e!4600431 () Bool)

(declare-fun e!4600435 () Bool)

(assert (=> b!7762832 (= e!4600431 e!4600435)))

(declare-fun c!1430947 () Bool)

(assert (=> b!7762832 (= c!1430947 (is-Star!20706 r1!3330))))

(declare-fun bm!719267 () Bool)

(declare-fun call!719272 () Bool)

(assert (=> bm!719267 (= call!719272 call!719274)))

(declare-fun b!7762833 () Bool)

(declare-fun e!4600434 () Bool)

(assert (=> b!7762833 (= e!4600434 call!719272)))

(declare-fun b!7762834 () Bool)

(assert (=> b!7762834 (= e!4600435 e!4600433)))

(declare-fun c!1430946 () Bool)

(assert (=> b!7762834 (= c!1430946 (is-Union!20706 r1!3330))))

(declare-fun bm!719268 () Bool)

(assert (=> bm!719268 (= call!719273 (validRegex!11122 (ite c!1430946 (regOne!41925 r1!3330) (regOne!41924 r1!3330))))))

(declare-fun d!2343693 () Bool)

(declare-fun res!3094691 () Bool)

(assert (=> d!2343693 (=> res!3094691 e!4600431)))

(assert (=> d!2343693 (= res!3094691 (is-ElementMatch!20706 r1!3330))))

(assert (=> d!2343693 (= (validRegex!11122 r1!3330) e!4600431)))

(declare-fun bm!719269 () Bool)

(assert (=> bm!719269 (= call!719274 (validRegex!11122 (ite c!1430947 (reg!21035 r1!3330) (ite c!1430946 (regTwo!41925 r1!3330) (regTwo!41924 r1!3330)))))))

(declare-fun b!7762835 () Bool)

(assert (=> b!7762835 (= e!4600435 e!4600432)))

(declare-fun res!3094692 () Bool)

(assert (=> b!7762835 (= res!3094692 (not (nullable!9116 (reg!21035 r1!3330))))))

(assert (=> b!7762835 (=> (not res!3094692) (not e!4600432))))

(declare-fun b!7762836 () Bool)

(declare-fun res!3094690 () Bool)

(assert (=> b!7762836 (=> (not res!3094690) (not e!4600434))))

(assert (=> b!7762836 (= res!3094690 call!719273)))

(assert (=> b!7762836 (= e!4600433 e!4600434)))

(declare-fun b!7762837 () Bool)

(assert (=> b!7762837 (= e!4600430 call!719272)))

(assert (= (and d!2343693 (not res!3094691)) b!7762832))

(assert (= (and b!7762832 c!1430947) b!7762835))

(assert (= (and b!7762832 (not c!1430947)) b!7762834))

(assert (= (and b!7762835 res!3094692) b!7762829))

(assert (= (and b!7762834 c!1430946) b!7762836))

(assert (= (and b!7762834 (not c!1430946)) b!7762831))

(assert (= (and b!7762836 res!3094690) b!7762833))

(assert (= (and b!7762831 (not res!3094688)) b!7762830))

(assert (= (and b!7762830 res!3094689) b!7762837))

(assert (= (or b!7762836 b!7762830) bm!719268))

(assert (= (or b!7762833 b!7762837) bm!719267))

(assert (= (or b!7762829 bm!719267) bm!719269))

(declare-fun m!8221392 () Bool)

(assert (=> bm!719268 m!8221392))

(declare-fun m!8221394 () Bool)

(assert (=> bm!719269 m!8221394))

(declare-fun m!8221396 () Bool)

(assert (=> b!7762835 m!8221396))

(assert (=> start!739522 d!2343693))

(declare-fun d!2343695 () Bool)

(assert (=> d!2343695 (= (isEmpty!42093 lt!2670516) (not (is-Some!17692 lt!2670516)))))

(assert (=> b!7762716 d!2343695))

(declare-fun b!7762877 () Bool)

(declare-fun res!3094719 () Bool)

(declare-fun e!4600466 () Bool)

(assert (=> b!7762877 (=> (not res!3094719) (not e!4600466))))

(declare-fun isEmpty!42095 (List!73549) Bool)

(declare-fun tail!15395 (List!73549) List!73549)

(assert (=> b!7762877 (= res!3094719 (isEmpty!42095 (tail!15395 (_1!38202 lt!2670515))))))

(declare-fun b!7762879 () Bool)

(declare-fun e!4600463 () Bool)

(assert (=> b!7762879 (= e!4600463 (nullable!9116 r1!3330))))

(declare-fun b!7762880 () Bool)

(declare-fun e!4600462 () Bool)

(declare-fun e!4600464 () Bool)

(assert (=> b!7762880 (= e!4600462 e!4600464)))

(declare-fun res!3094713 () Bool)

(assert (=> b!7762880 (=> (not res!3094713) (not e!4600464))))

(declare-fun lt!2670537 () Bool)

(assert (=> b!7762880 (= res!3094713 (not lt!2670537))))

(declare-fun b!7762881 () Bool)

(declare-fun e!4600460 () Bool)

(declare-fun call!719277 () Bool)

(assert (=> b!7762881 (= e!4600460 (= lt!2670537 call!719277))))

(declare-fun b!7762882 () Bool)

(declare-fun res!3094721 () Bool)

(assert (=> b!7762882 (=> (not res!3094721) (not e!4600466))))

(assert (=> b!7762882 (= res!3094721 (not call!719277))))

(declare-fun b!7762883 () Bool)

(declare-fun e!4600465 () Bool)

(assert (=> b!7762883 (= e!4600465 (not lt!2670537))))

(declare-fun b!7762884 () Bool)

(declare-fun head!15855 (List!73549) C!41738)

(assert (=> b!7762884 (= e!4600466 (= (head!15855 (_1!38202 lt!2670515)) (c!1430935 r1!3330)))))

(declare-fun b!7762885 () Bool)

(declare-fun res!3094714 () Bool)

(declare-fun e!4600461 () Bool)

(assert (=> b!7762885 (=> res!3094714 e!4600461)))

(assert (=> b!7762885 (= res!3094714 (not (isEmpty!42095 (tail!15395 (_1!38202 lt!2670515)))))))

(declare-fun b!7762886 () Bool)

(assert (=> b!7762886 (= e!4600460 e!4600465)))

(declare-fun c!1430958 () Bool)

(assert (=> b!7762886 (= c!1430958 (is-EmptyLang!20706 r1!3330))))

(declare-fun bm!719272 () Bool)

(assert (=> bm!719272 (= call!719277 (isEmpty!42095 (_1!38202 lt!2670515)))))

(declare-fun d!2343697 () Bool)

(assert (=> d!2343697 e!4600460))

(declare-fun c!1430959 () Bool)

(assert (=> d!2343697 (= c!1430959 (is-EmptyExpr!20706 r1!3330))))

(assert (=> d!2343697 (= lt!2670537 e!4600463)))

(declare-fun c!1430960 () Bool)

(assert (=> d!2343697 (= c!1430960 (isEmpty!42095 (_1!38202 lt!2670515)))))

(assert (=> d!2343697 (validRegex!11122 r1!3330)))

(assert (=> d!2343697 (= (matchR!10172 r1!3330 (_1!38202 lt!2670515)) lt!2670537)))

(declare-fun b!7762887 () Bool)

(declare-fun res!3094722 () Bool)

(assert (=> b!7762887 (=> res!3094722 e!4600462)))

(assert (=> b!7762887 (= res!3094722 (not (is-ElementMatch!20706 r1!3330)))))

(assert (=> b!7762887 (= e!4600465 e!4600462)))

(declare-fun b!7762888 () Bool)

(declare-fun res!3094717 () Bool)

(assert (=> b!7762888 (=> res!3094717 e!4600462)))

(assert (=> b!7762888 (= res!3094717 e!4600466)))

(declare-fun res!3094720 () Bool)

(assert (=> b!7762888 (=> (not res!3094720) (not e!4600466))))

(assert (=> b!7762888 (= res!3094720 lt!2670537)))

(declare-fun b!7762889 () Bool)

(assert (=> b!7762889 (= e!4600464 e!4600461)))

(declare-fun res!3094718 () Bool)

(assert (=> b!7762889 (=> res!3094718 e!4600461)))

(assert (=> b!7762889 (= res!3094718 call!719277)))

(declare-fun b!7762890 () Bool)

(assert (=> b!7762890 (= e!4600461 (not (= (head!15855 (_1!38202 lt!2670515)) (c!1430935 r1!3330))))))

(declare-fun b!7762891 () Bool)

(declare-fun derivativeStep!6059 (Regex!20706 C!41738) Regex!20706)

(assert (=> b!7762891 (= e!4600463 (matchR!10172 (derivativeStep!6059 r1!3330 (head!15855 (_1!38202 lt!2670515))) (tail!15395 (_1!38202 lt!2670515))))))

(assert (= (and d!2343697 c!1430960) b!7762879))

(assert (= (and d!2343697 (not c!1430960)) b!7762891))

(assert (= (and d!2343697 c!1430959) b!7762881))

(assert (= (and d!2343697 (not c!1430959)) b!7762886))

(assert (= (and b!7762886 c!1430958) b!7762883))

(assert (= (and b!7762886 (not c!1430958)) b!7762887))

(assert (= (and b!7762887 (not res!3094722)) b!7762888))

(assert (= (and b!7762888 res!3094720) b!7762882))

(assert (= (and b!7762882 res!3094721) b!7762877))

(assert (= (and b!7762877 res!3094719) b!7762884))

(assert (= (and b!7762888 (not res!3094717)) b!7762880))

(assert (= (and b!7762880 res!3094713) b!7762889))

(assert (= (and b!7762889 (not res!3094718)) b!7762885))

(assert (= (and b!7762885 (not res!3094714)) b!7762890))

(assert (= (or b!7762881 b!7762882 b!7762889) bm!719272))

(declare-fun m!8221398 () Bool)

(assert (=> b!7762877 m!8221398))

(assert (=> b!7762877 m!8221398))

(declare-fun m!8221400 () Bool)

(assert (=> b!7762877 m!8221400))

(declare-fun m!8221402 () Bool)

(assert (=> b!7762890 m!8221402))

(assert (=> b!7762884 m!8221402))

(declare-fun m!8221404 () Bool)

(assert (=> bm!719272 m!8221404))

(assert (=> b!7762885 m!8221398))

(assert (=> b!7762885 m!8221398))

(assert (=> b!7762885 m!8221400))

(assert (=> d!2343697 m!8221404))

(assert (=> d!2343697 m!8221332))

(assert (=> b!7762891 m!8221402))

(assert (=> b!7762891 m!8221402))

(declare-fun m!8221406 () Bool)

(assert (=> b!7762891 m!8221406))

(assert (=> b!7762891 m!8221398))

(assert (=> b!7762891 m!8221406))

(assert (=> b!7762891 m!8221398))

(declare-fun m!8221408 () Bool)

(assert (=> b!7762891 m!8221408))

(declare-fun m!8221410 () Bool)

(assert (=> b!7762879 m!8221410))

(assert (=> b!7762727 d!2343697))

(declare-fun d!2343699 () Bool)

(assert (=> d!2343699 (= (isDefined!14305 lt!2670516) (not (isEmpty!42093 lt!2670516)))))

(declare-fun bs!1965980 () Bool)

(assert (= bs!1965980 d!2343699))

(assert (=> bs!1965980 m!8221340))

(assert (=> b!7762726 d!2343699))

(declare-fun b!7762927 () Bool)

(declare-fun e!4600486 () Bool)

(assert (=> b!7762927 (= e!4600486 (matchR!10172 r2!3230 s!10216))))

(declare-fun b!7762928 () Bool)

(declare-fun e!4600488 () Bool)

(declare-fun lt!2670548 () Option!17693)

(declare-fun get!26190 (Option!17693) tuple2!69798)

(assert (=> b!7762928 (= e!4600488 (= (++!17881 (_1!38202 (get!26190 lt!2670548)) (_2!38202 (get!26190 lt!2670548))) s!10216))))

(declare-fun b!7762929 () Bool)

(declare-fun e!4600484 () Option!17693)

(declare-fun e!4600485 () Option!17693)

(assert (=> b!7762929 (= e!4600484 e!4600485)))

(declare-fun c!1430968 () Bool)

(assert (=> b!7762929 (= c!1430968 (is-Nil!73425 s!10216))))

(declare-fun b!7762930 () Bool)

(declare-datatypes ((Unit!168402 0))(
  ( (Unit!168403) )
))
(declare-fun lt!2670547 () Unit!168402)

(declare-fun lt!2670549 () Unit!168402)

(assert (=> b!7762930 (= lt!2670547 lt!2670549)))

(assert (=> b!7762930 (= (++!17881 (++!17881 Nil!73425 (Cons!73425 (h!79873 s!10216) Nil!73425)) (t!388284 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3367 (List!73549 C!41738 List!73549 List!73549) Unit!168402)

(assert (=> b!7762930 (= lt!2670549 (lemmaMoveElementToOtherListKeepsConcatEq!3367 Nil!73425 (h!79873 s!10216) (t!388284 s!10216) s!10216))))

(assert (=> b!7762930 (= e!4600485 (findConcatSeparation!3723 r1!3330 r2!3230 (++!17881 Nil!73425 (Cons!73425 (h!79873 s!10216) Nil!73425)) (t!388284 s!10216) s!10216))))

(declare-fun d!2343701 () Bool)

(declare-fun e!4600487 () Bool)

(assert (=> d!2343701 e!4600487))

(declare-fun res!3094744 () Bool)

(assert (=> d!2343701 (=> res!3094744 e!4600487)))

(assert (=> d!2343701 (= res!3094744 e!4600488)))

(declare-fun res!3094746 () Bool)

(assert (=> d!2343701 (=> (not res!3094746) (not e!4600488))))

(assert (=> d!2343701 (= res!3094746 (isDefined!14305 lt!2670548))))

(assert (=> d!2343701 (= lt!2670548 e!4600484)))

(declare-fun c!1430967 () Bool)

(assert (=> d!2343701 (= c!1430967 e!4600486)))

(declare-fun res!3094747 () Bool)

(assert (=> d!2343701 (=> (not res!3094747) (not e!4600486))))

(assert (=> d!2343701 (= res!3094747 (matchR!10172 r1!3330 Nil!73425))))

(assert (=> d!2343701 (validRegex!11122 r1!3330)))

(assert (=> d!2343701 (= (findConcatSeparation!3723 r1!3330 r2!3230 Nil!73425 s!10216 s!10216) lt!2670548)))

(declare-fun b!7762931 () Bool)

(assert (=> b!7762931 (= e!4600487 (not (isDefined!14305 lt!2670548)))))

(declare-fun b!7762932 () Bool)

(declare-fun res!3094745 () Bool)

(assert (=> b!7762932 (=> (not res!3094745) (not e!4600488))))

(assert (=> b!7762932 (= res!3094745 (matchR!10172 r2!3230 (_2!38202 (get!26190 lt!2670548))))))

(declare-fun b!7762933 () Bool)

(declare-fun res!3094748 () Bool)

(assert (=> b!7762933 (=> (not res!3094748) (not e!4600488))))

(assert (=> b!7762933 (= res!3094748 (matchR!10172 r1!3330 (_1!38202 (get!26190 lt!2670548))))))

(declare-fun b!7762934 () Bool)

(assert (=> b!7762934 (= e!4600485 None!17692)))

(declare-fun b!7762935 () Bool)

(assert (=> b!7762935 (= e!4600484 (Some!17692 (tuple2!69799 Nil!73425 s!10216)))))

(assert (= (and d!2343701 res!3094747) b!7762927))

(assert (= (and d!2343701 c!1430967) b!7762935))

(assert (= (and d!2343701 (not c!1430967)) b!7762929))

(assert (= (and b!7762929 c!1430968) b!7762934))

(assert (= (and b!7762929 (not c!1430968)) b!7762930))

(assert (= (and d!2343701 res!3094746) b!7762933))

(assert (= (and b!7762933 res!3094748) b!7762932))

(assert (= (and b!7762932 res!3094745) b!7762928))

(assert (= (and d!2343701 (not res!3094744)) b!7762931))

(declare-fun m!8221434 () Bool)

(assert (=> b!7762931 m!8221434))

(declare-fun m!8221436 () Bool)

(assert (=> b!7762930 m!8221436))

(assert (=> b!7762930 m!8221436))

(declare-fun m!8221438 () Bool)

(assert (=> b!7762930 m!8221438))

(declare-fun m!8221440 () Bool)

(assert (=> b!7762930 m!8221440))

(assert (=> b!7762930 m!8221436))

(declare-fun m!8221442 () Bool)

(assert (=> b!7762930 m!8221442))

(declare-fun m!8221444 () Bool)

(assert (=> b!7762928 m!8221444))

(declare-fun m!8221446 () Bool)

(assert (=> b!7762928 m!8221446))

(declare-fun m!8221448 () Bool)

(assert (=> b!7762927 m!8221448))

(assert (=> b!7762932 m!8221444))

(declare-fun m!8221450 () Bool)

(assert (=> b!7762932 m!8221450))

(assert (=> b!7762933 m!8221444))

(declare-fun m!8221452 () Bool)

(assert (=> b!7762933 m!8221452))

(assert (=> d!2343701 m!8221434))

(declare-fun m!8221454 () Bool)

(assert (=> d!2343701 m!8221454))

(assert (=> d!2343701 m!8221332))

(assert (=> b!7762726 d!2343701))

(declare-fun b!7762964 () Bool)

(declare-fun e!4600503 () Bool)

(declare-fun tp!2280057 () Bool)

(assert (=> b!7762964 (= e!4600503 tp!2280057)))

(declare-fun b!7762965 () Bool)

(declare-fun tp!2280056 () Bool)

(declare-fun tp!2280060 () Bool)

(assert (=> b!7762965 (= e!4600503 (and tp!2280056 tp!2280060))))

(declare-fun b!7762962 () Bool)

(assert (=> b!7762962 (= e!4600503 tp_is_empty!51767)))

(assert (=> b!7762724 (= tp!2280009 e!4600503)))

(declare-fun b!7762963 () Bool)

(declare-fun tp!2280058 () Bool)

(declare-fun tp!2280059 () Bool)

(assert (=> b!7762963 (= e!4600503 (and tp!2280058 tp!2280059))))

(assert (= (and b!7762724 (is-ElementMatch!20706 (regOne!41925 r2!3230))) b!7762962))

(assert (= (and b!7762724 (is-Concat!29551 (regOne!41925 r2!3230))) b!7762963))

(assert (= (and b!7762724 (is-Star!20706 (regOne!41925 r2!3230))) b!7762964))

(assert (= (and b!7762724 (is-Union!20706 (regOne!41925 r2!3230))) b!7762965))

(declare-fun b!7762968 () Bool)

(declare-fun e!4600504 () Bool)

(declare-fun tp!2280062 () Bool)

(assert (=> b!7762968 (= e!4600504 tp!2280062)))

(declare-fun b!7762969 () Bool)

(declare-fun tp!2280061 () Bool)

(declare-fun tp!2280065 () Bool)

(assert (=> b!7762969 (= e!4600504 (and tp!2280061 tp!2280065))))

(declare-fun b!7762966 () Bool)

(assert (=> b!7762966 (= e!4600504 tp_is_empty!51767)))

(assert (=> b!7762724 (= tp!2280008 e!4600504)))

(declare-fun b!7762967 () Bool)

(declare-fun tp!2280063 () Bool)

(declare-fun tp!2280064 () Bool)

(assert (=> b!7762967 (= e!4600504 (and tp!2280063 tp!2280064))))

(assert (= (and b!7762724 (is-ElementMatch!20706 (regTwo!41925 r2!3230))) b!7762966))

(assert (= (and b!7762724 (is-Concat!29551 (regTwo!41925 r2!3230))) b!7762967))

(assert (= (and b!7762724 (is-Star!20706 (regTwo!41925 r2!3230))) b!7762968))

(assert (= (and b!7762724 (is-Union!20706 (regTwo!41925 r2!3230))) b!7762969))

(declare-fun b!7762972 () Bool)

(declare-fun e!4600505 () Bool)

(declare-fun tp!2280067 () Bool)

(assert (=> b!7762972 (= e!4600505 tp!2280067)))

(declare-fun b!7762973 () Bool)

(declare-fun tp!2280066 () Bool)

(declare-fun tp!2280070 () Bool)

(assert (=> b!7762973 (= e!4600505 (and tp!2280066 tp!2280070))))

(declare-fun b!7762970 () Bool)

(assert (=> b!7762970 (= e!4600505 tp_is_empty!51767)))

(assert (=> b!7762728 (= tp!2280002 e!4600505)))

(declare-fun b!7762971 () Bool)

(declare-fun tp!2280068 () Bool)

(declare-fun tp!2280069 () Bool)

(assert (=> b!7762971 (= e!4600505 (and tp!2280068 tp!2280069))))

(assert (= (and b!7762728 (is-ElementMatch!20706 (regOne!41925 r1!3330))) b!7762970))

(assert (= (and b!7762728 (is-Concat!29551 (regOne!41925 r1!3330))) b!7762971))

(assert (= (and b!7762728 (is-Star!20706 (regOne!41925 r1!3330))) b!7762972))

(assert (= (and b!7762728 (is-Union!20706 (regOne!41925 r1!3330))) b!7762973))

(declare-fun b!7762976 () Bool)

(declare-fun e!4600506 () Bool)

(declare-fun tp!2280072 () Bool)

(assert (=> b!7762976 (= e!4600506 tp!2280072)))

(declare-fun b!7762977 () Bool)

(declare-fun tp!2280071 () Bool)

(declare-fun tp!2280075 () Bool)

(assert (=> b!7762977 (= e!4600506 (and tp!2280071 tp!2280075))))

(declare-fun b!7762974 () Bool)

(assert (=> b!7762974 (= e!4600506 tp_is_empty!51767)))

(assert (=> b!7762728 (= tp!2280006 e!4600506)))

(declare-fun b!7762975 () Bool)

(declare-fun tp!2280073 () Bool)

(declare-fun tp!2280074 () Bool)

(assert (=> b!7762975 (= e!4600506 (and tp!2280073 tp!2280074))))

(assert (= (and b!7762728 (is-ElementMatch!20706 (regTwo!41925 r1!3330))) b!7762974))

(assert (= (and b!7762728 (is-Concat!29551 (regTwo!41925 r1!3330))) b!7762975))

(assert (= (and b!7762728 (is-Star!20706 (regTwo!41925 r1!3330))) b!7762976))

(assert (= (and b!7762728 (is-Union!20706 (regTwo!41925 r1!3330))) b!7762977))

(declare-fun b!7762980 () Bool)

(declare-fun e!4600507 () Bool)

(declare-fun tp!2280077 () Bool)

(assert (=> b!7762980 (= e!4600507 tp!2280077)))

(declare-fun b!7762981 () Bool)

(declare-fun tp!2280076 () Bool)

(declare-fun tp!2280080 () Bool)

(assert (=> b!7762981 (= e!4600507 (and tp!2280076 tp!2280080))))

(declare-fun b!7762978 () Bool)

(assert (=> b!7762978 (= e!4600507 tp_is_empty!51767)))

(assert (=> b!7762723 (= tp!2280005 e!4600507)))

(declare-fun b!7762979 () Bool)

(declare-fun tp!2280078 () Bool)

(declare-fun tp!2280079 () Bool)

(assert (=> b!7762979 (= e!4600507 (and tp!2280078 tp!2280079))))

(assert (= (and b!7762723 (is-ElementMatch!20706 (reg!21035 r1!3330))) b!7762978))

(assert (= (and b!7762723 (is-Concat!29551 (reg!21035 r1!3330))) b!7762979))

(assert (= (and b!7762723 (is-Star!20706 (reg!21035 r1!3330))) b!7762980))

(assert (= (and b!7762723 (is-Union!20706 (reg!21035 r1!3330))) b!7762981))

(declare-fun b!7762984 () Bool)

(declare-fun e!4600508 () Bool)

(declare-fun tp!2280082 () Bool)

(assert (=> b!7762984 (= e!4600508 tp!2280082)))

(declare-fun b!7762985 () Bool)

(declare-fun tp!2280081 () Bool)

(declare-fun tp!2280085 () Bool)

(assert (=> b!7762985 (= e!4600508 (and tp!2280081 tp!2280085))))

(declare-fun b!7762982 () Bool)

(assert (=> b!7762982 (= e!4600508 tp_is_empty!51767)))

(assert (=> b!7762721 (= tp!2280010 e!4600508)))

(declare-fun b!7762983 () Bool)

(declare-fun tp!2280083 () Bool)

(declare-fun tp!2280084 () Bool)

(assert (=> b!7762983 (= e!4600508 (and tp!2280083 tp!2280084))))

(assert (= (and b!7762721 (is-ElementMatch!20706 (reg!21035 r2!3230))) b!7762982))

(assert (= (and b!7762721 (is-Concat!29551 (reg!21035 r2!3230))) b!7762983))

(assert (= (and b!7762721 (is-Star!20706 (reg!21035 r2!3230))) b!7762984))

(assert (= (and b!7762721 (is-Union!20706 (reg!21035 r2!3230))) b!7762985))

(declare-fun b!7762988 () Bool)

(declare-fun e!4600509 () Bool)

(declare-fun tp!2280087 () Bool)

(assert (=> b!7762988 (= e!4600509 tp!2280087)))

(declare-fun b!7762989 () Bool)

(declare-fun tp!2280086 () Bool)

(declare-fun tp!2280090 () Bool)

(assert (=> b!7762989 (= e!4600509 (and tp!2280086 tp!2280090))))

(declare-fun b!7762986 () Bool)

(assert (=> b!7762986 (= e!4600509 tp_is_empty!51767)))

(assert (=> b!7762722 (= tp!2280011 e!4600509)))

(declare-fun b!7762987 () Bool)

(declare-fun tp!2280088 () Bool)

(declare-fun tp!2280089 () Bool)

(assert (=> b!7762987 (= e!4600509 (and tp!2280088 tp!2280089))))

(assert (= (and b!7762722 (is-ElementMatch!20706 (regOne!41924 r2!3230))) b!7762986))

(assert (= (and b!7762722 (is-Concat!29551 (regOne!41924 r2!3230))) b!7762987))

(assert (= (and b!7762722 (is-Star!20706 (regOne!41924 r2!3230))) b!7762988))

(assert (= (and b!7762722 (is-Union!20706 (regOne!41924 r2!3230))) b!7762989))

(declare-fun b!7762992 () Bool)

(declare-fun e!4600510 () Bool)

(declare-fun tp!2280092 () Bool)

(assert (=> b!7762992 (= e!4600510 tp!2280092)))

(declare-fun b!7762993 () Bool)

(declare-fun tp!2280091 () Bool)

(declare-fun tp!2280095 () Bool)

(assert (=> b!7762993 (= e!4600510 (and tp!2280091 tp!2280095))))

(declare-fun b!7762990 () Bool)

(assert (=> b!7762990 (= e!4600510 tp_is_empty!51767)))

(assert (=> b!7762722 (= tp!2280012 e!4600510)))

(declare-fun b!7762991 () Bool)

(declare-fun tp!2280093 () Bool)

(declare-fun tp!2280094 () Bool)

(assert (=> b!7762991 (= e!4600510 (and tp!2280093 tp!2280094))))

(assert (= (and b!7762722 (is-ElementMatch!20706 (regTwo!41924 r2!3230))) b!7762990))

(assert (= (and b!7762722 (is-Concat!29551 (regTwo!41924 r2!3230))) b!7762991))

(assert (= (and b!7762722 (is-Star!20706 (regTwo!41924 r2!3230))) b!7762992))

(assert (= (and b!7762722 (is-Union!20706 (regTwo!41924 r2!3230))) b!7762993))

(declare-fun b!7762996 () Bool)

(declare-fun e!4600511 () Bool)

(declare-fun tp!2280097 () Bool)

(assert (=> b!7762996 (= e!4600511 tp!2280097)))

(declare-fun b!7762997 () Bool)

(declare-fun tp!2280096 () Bool)

(declare-fun tp!2280100 () Bool)

(assert (=> b!7762997 (= e!4600511 (and tp!2280096 tp!2280100))))

(declare-fun b!7762994 () Bool)

(assert (=> b!7762994 (= e!4600511 tp_is_empty!51767)))

(assert (=> b!7762725 (= tp!2280003 e!4600511)))

(declare-fun b!7762995 () Bool)

(declare-fun tp!2280098 () Bool)

(declare-fun tp!2280099 () Bool)

(assert (=> b!7762995 (= e!4600511 (and tp!2280098 tp!2280099))))

(assert (= (and b!7762725 (is-ElementMatch!20706 (regOne!41924 r1!3330))) b!7762994))

(assert (= (and b!7762725 (is-Concat!29551 (regOne!41924 r1!3330))) b!7762995))

(assert (= (and b!7762725 (is-Star!20706 (regOne!41924 r1!3330))) b!7762996))

(assert (= (and b!7762725 (is-Union!20706 (regOne!41924 r1!3330))) b!7762997))

(declare-fun b!7763000 () Bool)

(declare-fun e!4600512 () Bool)

(declare-fun tp!2280102 () Bool)

(assert (=> b!7763000 (= e!4600512 tp!2280102)))

(declare-fun b!7763001 () Bool)

(declare-fun tp!2280101 () Bool)

(declare-fun tp!2280105 () Bool)

(assert (=> b!7763001 (= e!4600512 (and tp!2280101 tp!2280105))))

(declare-fun b!7762998 () Bool)

(assert (=> b!7762998 (= e!4600512 tp_is_empty!51767)))

(assert (=> b!7762725 (= tp!2280004 e!4600512)))

(declare-fun b!7762999 () Bool)

(declare-fun tp!2280103 () Bool)

(declare-fun tp!2280104 () Bool)

(assert (=> b!7762999 (= e!4600512 (and tp!2280103 tp!2280104))))

(assert (= (and b!7762725 (is-ElementMatch!20706 (regTwo!41924 r1!3330))) b!7762998))

(assert (= (and b!7762725 (is-Concat!29551 (regTwo!41924 r1!3330))) b!7762999))

(assert (= (and b!7762725 (is-Star!20706 (regTwo!41924 r1!3330))) b!7763000))

(assert (= (and b!7762725 (is-Union!20706 (regTwo!41924 r1!3330))) b!7763001))

(declare-fun b!7763006 () Bool)

(declare-fun e!4600515 () Bool)

(declare-fun tp!2280108 () Bool)

(assert (=> b!7763006 (= e!4600515 (and tp_is_empty!51767 tp!2280108))))

(assert (=> b!7762720 (= tp!2280007 e!4600515)))

(assert (= (and b!7762720 (is-Cons!73425 (t!388284 s!10216))) b!7763006))

(declare-fun b_lambda!289453 () Bool)

(assert (= b_lambda!289451 (or b!7762717 b_lambda!289453)))

(declare-fun bs!1965981 () Bool)

(declare-fun d!2343707 () Bool)

(assert (= bs!1965981 (and d!2343707 b!7762717)))

(declare-fun res!3094757 () Bool)

(declare-fun e!4600516 () Bool)

(assert (=> bs!1965981 (=> (not res!3094757) (not e!4600516))))

(assert (=> bs!1965981 (= res!3094757 (= (++!17881 (_1!38202 lt!2670528) (_2!38202 lt!2670528)) s!10216))))

(assert (=> bs!1965981 (= (dynLambda!29991 lambda!472052 lt!2670528) e!4600516)))

(declare-fun b!7763007 () Bool)

(declare-fun res!3094758 () Bool)

(assert (=> b!7763007 (=> (not res!3094758) (not e!4600516))))

(assert (=> b!7763007 (= res!3094758 (matchR!10172 r1!3330 (_1!38202 lt!2670528)))))

(declare-fun b!7763008 () Bool)

(assert (=> b!7763008 (= e!4600516 (matchR!10172 r2!3230 (_2!38202 lt!2670528)))))

(assert (= (and bs!1965981 res!3094757) b!7763007))

(assert (= (and b!7763007 res!3094758) b!7763008))

(declare-fun m!8221456 () Bool)

(assert (=> bs!1965981 m!8221456))

(declare-fun m!8221458 () Bool)

(assert (=> b!7763007 m!8221458))

(declare-fun m!8221460 () Bool)

(assert (=> b!7763008 m!8221460))

(assert (=> d!2343687 d!2343707))

(push 1)

(assert (not b!7762983))

(assert (not bm!719268))

(assert (not b!7762799))

(assert (not b!7762981))

(assert (not b!7762977))

(assert (not b!7762987))

(assert (not bm!719265))

(assert (not b!7762995))

(assert (not b!7762976))

(assert (not b!7762890))

(assert (not b!7762877))

(assert (not b!7762964))

(assert (not b!7762884))

(assert (not b!7762985))

(assert (not b!7762933))

(assert (not b!7762988))

(assert (not b!7762826))

(assert (not b!7762999))

(assert (not b!7762989))

(assert (not b!7762991))

(assert (not b!7762992))

(assert (not bs!1965981))

(assert (not b!7763001))

(assert (not b!7762835))

(assert (not b!7762891))

(assert (not b!7762971))

(assert (not b_lambda!289453))

(assert (not d!2343697))

(assert (not d!2343681))

(assert (not b!7762930))

(assert (not b!7762984))

(assert (not b!7762996))

(assert (not b!7762965))

(assert (not b!7762979))

(assert (not b!7762932))

(assert (not b!7763000))

(assert (not b!7762993))

(assert (not b!7763006))

(assert (not b!7762967))

(assert (not bm!719272))

(assert (not b!7762885))

(assert (not d!2343699))

(assert (not b!7762997))

(assert (not bm!719266))

(assert (not b!7762969))

(assert (not b!7763008))

(assert (not b!7763007))

(assert (not b!7762963))

(assert (not d!2343691))

(assert (not b!7762972))

(assert (not b!7762927))

(assert (not d!2343687))

(assert (not b!7762800))

(assert tp_is_empty!51767)

(assert (not b!7762879))

(assert (not d!2343701))

(assert (not b!7762928))

(assert (not b!7762931))

(assert (not bm!719269))

(assert (not b!7762973))

(assert (not b!7762980))

(assert (not b!7762975))

(assert (not b!7762968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

