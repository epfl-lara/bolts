; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79112 () Bool)

(assert start!79112)

(declare-fun b!875110 () Bool)

(assert (=> b!875110 true))

(assert (=> b!875110 true))

(declare-fun lambda!26388 () Int)

(declare-fun lambda!26387 () Int)

(assert (=> b!875110 (not (= lambda!26388 lambda!26387))))

(assert (=> b!875110 true))

(assert (=> b!875110 true))

(declare-fun b!875104 () Bool)

(declare-fun e!575266 () Bool)

(declare-fun tp!276803 () Bool)

(assert (=> b!875104 (= e!575266 tp!276803)))

(declare-fun b!875105 () Bool)

(declare-fun tp!276806 () Bool)

(declare-fun tp!276801 () Bool)

(assert (=> b!875105 (= e!575266 (and tp!276806 tp!276801))))

(declare-fun b!875106 () Bool)

(declare-fun e!575265 () Bool)

(declare-fun lt!329607 () Bool)

(assert (=> b!875106 (= e!575265 lt!329607)))

(declare-fun b!875107 () Bool)

(declare-fun tp_is_empty!4075 () Bool)

(assert (=> b!875107 (= e!575266 tp_is_empty!4075)))

(declare-fun b!875108 () Bool)

(declare-fun e!575264 () Bool)

(declare-fun tp!276805 () Bool)

(assert (=> b!875108 (= e!575264 (and tp_is_empty!4075 tp!276805))))

(declare-fun b!875109 () Bool)

(declare-fun tp!276804 () Bool)

(declare-fun tp!276802 () Bool)

(assert (=> b!875109 (= e!575266 (and tp!276804 tp!276802))))

(declare-fun res!397903 () Bool)

(declare-fun e!575263 () Bool)

(assert (=> start!79112 (=> (not res!397903) (not e!575263))))

(declare-datatypes ((C!5002 0))(
  ( (C!5003 (val!2749 Int)) )
))
(declare-datatypes ((Regex!2216 0))(
  ( (ElementMatch!2216 (c!141523 C!5002)) (Concat!4049 (regOne!4944 Regex!2216) (regTwo!4944 Regex!2216)) (EmptyExpr!2216) (Star!2216 (reg!2545 Regex!2216)) (EmptyLang!2216) (Union!2216 (regOne!4945 Regex!2216) (regTwo!4945 Regex!2216)) )
))
(declare-fun r!15766 () Regex!2216)

(declare-fun validRegex!685 (Regex!2216) Bool)

(assert (=> start!79112 (= res!397903 (validRegex!685 r!15766))))

(assert (=> start!79112 e!575263))

(assert (=> start!79112 e!575266))

(assert (=> start!79112 e!575264))

(declare-fun e!575262 () Bool)

(assert (=> b!875110 (= e!575262 e!575265)))

(declare-fun res!397905 () Bool)

(assert (=> b!875110 (=> res!397905 e!575265)))

(declare-datatypes ((List!9446 0))(
  ( (Nil!9430) (Cons!9430 (h!14831 C!5002) (t!100492 List!9446)) )
))
(declare-fun s!10566 () List!9446)

(declare-fun isEmpty!5616 (List!9446) Bool)

(assert (=> b!875110 (= res!397905 (isEmpty!5616 s!10566))))

(declare-fun Exists!15 (Int) Bool)

(assert (=> b!875110 (= (Exists!15 lambda!26387) (Exists!15 lambda!26388))))

(declare-datatypes ((Unit!14011 0))(
  ( (Unit!14012) )
))
(declare-fun lt!329609 () Unit!14011)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!11 (Regex!2216 Regex!2216 List!9446) Unit!14011)

(assert (=> b!875110 (= lt!329609 (lemmaExistCutMatchRandMatchRSpecEquivalent!11 EmptyExpr!2216 (regTwo!4944 r!15766) s!10566))))

(assert (=> b!875110 (= lt!329607 (Exists!15 lambda!26387))))

(declare-datatypes ((tuple2!10530 0))(
  ( (tuple2!10531 (_1!6091 List!9446) (_2!6091 List!9446)) )
))
(declare-datatypes ((Option!1907 0))(
  ( (None!1906) (Some!1906 (v!19323 tuple2!10530)) )
))
(declare-fun isDefined!1549 (Option!1907) Bool)

(declare-fun findConcatSeparation!13 (Regex!2216 Regex!2216 List!9446 List!9446 List!9446) Option!1907)

(assert (=> b!875110 (= lt!329607 (isDefined!1549 (findConcatSeparation!13 EmptyExpr!2216 (regTwo!4944 r!15766) Nil!9430 s!10566 s!10566)))))

(declare-fun lt!329608 () Unit!14011)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!13 (Regex!2216 Regex!2216 List!9446) Unit!14011)

(assert (=> b!875110 (= lt!329608 (lemmaFindConcatSeparationEquivalentToExists!13 EmptyExpr!2216 (regTwo!4944 r!15766) s!10566))))

(declare-fun b!875111 () Bool)

(assert (=> b!875111 (= e!575263 (not e!575262))))

(declare-fun res!397904 () Bool)

(assert (=> b!875111 (=> res!397904 e!575262)))

(declare-fun lt!329606 () Bool)

(assert (=> b!875111 (= res!397904 (or (not lt!329606) (not (is-Concat!4049 r!15766)) (not (is-EmptyExpr!2216 (regOne!4944 r!15766)))))))

(declare-fun matchRSpec!17 (Regex!2216 List!9446) Bool)

(assert (=> b!875111 (= lt!329606 (matchRSpec!17 r!15766 s!10566))))

(declare-fun matchR!754 (Regex!2216 List!9446) Bool)

(assert (=> b!875111 (= lt!329606 (matchR!754 r!15766 s!10566))))

(declare-fun lt!329610 () Unit!14011)

(declare-fun mainMatchTheorem!17 (Regex!2216 List!9446) Unit!14011)

(assert (=> b!875111 (= lt!329610 (mainMatchTheorem!17 r!15766 s!10566))))

(assert (= (and start!79112 res!397903) b!875111))

(assert (= (and b!875111 (not res!397904)) b!875110))

(assert (= (and b!875110 (not res!397905)) b!875106))

(assert (= (and start!79112 (is-ElementMatch!2216 r!15766)) b!875107))

(assert (= (and start!79112 (is-Concat!4049 r!15766)) b!875109))

(assert (= (and start!79112 (is-Star!2216 r!15766)) b!875104))

(assert (= (and start!79112 (is-Union!2216 r!15766)) b!875105))

(assert (= (and start!79112 (is-Cons!9430 s!10566)) b!875108))

(declare-fun m!1126637 () Bool)

(assert (=> start!79112 m!1126637))

(declare-fun m!1126639 () Bool)

(assert (=> b!875110 m!1126639))

(declare-fun m!1126641 () Bool)

(assert (=> b!875110 m!1126641))

(declare-fun m!1126643 () Bool)

(assert (=> b!875110 m!1126643))

(declare-fun m!1126645 () Bool)

(assert (=> b!875110 m!1126645))

(declare-fun m!1126647 () Bool)

(assert (=> b!875110 m!1126647))

(declare-fun m!1126649 () Bool)

(assert (=> b!875110 m!1126649))

(assert (=> b!875110 m!1126643))

(assert (=> b!875110 m!1126639))

(declare-fun m!1126651 () Bool)

(assert (=> b!875110 m!1126651))

(declare-fun m!1126653 () Bool)

(assert (=> b!875111 m!1126653))

(declare-fun m!1126655 () Bool)

(assert (=> b!875111 m!1126655))

(declare-fun m!1126657 () Bool)

(assert (=> b!875111 m!1126657))

(push 1)

(assert (not b!875110))

(assert (not b!875111))

(assert tp_is_empty!4075)

(assert (not b!875104))

(assert (not b!875109))

(assert (not b!875108))

(assert (not b!875105))

(assert (not start!79112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!275784 () Bool)

(declare-fun choose!5152 (Int) Bool)

(assert (=> d!275784 (= (Exists!15 lambda!26388) (choose!5152 lambda!26388))))

(declare-fun bs!234024 () Bool)

(assert (= bs!234024 d!275784))

(declare-fun m!1126681 () Bool)

(assert (=> bs!234024 m!1126681))

(assert (=> b!875110 d!275784))

(declare-fun d!275786 () Bool)

(assert (=> d!275786 (= (isEmpty!5616 s!10566) (is-Nil!9430 s!10566))))

(assert (=> b!875110 d!275786))

(declare-fun d!275788 () Bool)

(assert (=> d!275788 (= (Exists!15 lambda!26387) (choose!5152 lambda!26387))))

(declare-fun bs!234025 () Bool)

(assert (= bs!234025 d!275788))

(declare-fun m!1126683 () Bool)

(assert (=> bs!234025 m!1126683))

(assert (=> b!875110 d!275788))

(declare-fun b!875174 () Bool)

(declare-fun lt!329632 () Unit!14011)

(declare-fun lt!329634 () Unit!14011)

(assert (=> b!875174 (= lt!329632 lt!329634)))

(declare-fun ++!2450 (List!9446 List!9446) List!9446)

(assert (=> b!875174 (= (++!2450 (++!2450 Nil!9430 (Cons!9430 (h!14831 s!10566) Nil!9430)) (t!100492 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!81 (List!9446 C!5002 List!9446 List!9446) Unit!14011)

(assert (=> b!875174 (= lt!329634 (lemmaMoveElementToOtherListKeepsConcatEq!81 Nil!9430 (h!14831 s!10566) (t!100492 s!10566) s!10566))))

(declare-fun e!575301 () Option!1907)

(assert (=> b!875174 (= e!575301 (findConcatSeparation!13 EmptyExpr!2216 (regTwo!4944 r!15766) (++!2450 Nil!9430 (Cons!9430 (h!14831 s!10566) Nil!9430)) (t!100492 s!10566) s!10566))))

(declare-fun b!875175 () Bool)

(declare-fun e!575299 () Option!1907)

(assert (=> b!875175 (= e!575299 e!575301)))

(declare-fun c!141529 () Bool)

(assert (=> b!875175 (= c!141529 (is-Nil!9430 s!10566))))

(declare-fun b!875176 () Bool)

(declare-fun e!575300 () Bool)

(declare-fun lt!329633 () Option!1907)

(assert (=> b!875176 (= e!575300 (not (isDefined!1549 lt!329633)))))

(declare-fun b!875177 () Bool)

(assert (=> b!875177 (= e!575301 None!1906)))

(declare-fun b!875178 () Bool)

(assert (=> b!875178 (= e!575299 (Some!1906 (tuple2!10531 Nil!9430 s!10566)))))

(declare-fun b!875180 () Bool)

(declare-fun e!575302 () Bool)

(declare-fun get!2891 (Option!1907) tuple2!10530)

(assert (=> b!875180 (= e!575302 (= (++!2450 (_1!6091 (get!2891 lt!329633)) (_2!6091 (get!2891 lt!329633))) s!10566))))

(declare-fun b!875181 () Bool)

(declare-fun e!575298 () Bool)

(assert (=> b!875181 (= e!575298 (matchR!754 (regTwo!4944 r!15766) s!10566))))

(declare-fun b!875182 () Bool)

(declare-fun res!397939 () Bool)

(assert (=> b!875182 (=> (not res!397939) (not e!575302))))

(assert (=> b!875182 (= res!397939 (matchR!754 (regTwo!4944 r!15766) (_2!6091 (get!2891 lt!329633))))))

(declare-fun b!875179 () Bool)

(declare-fun res!397938 () Bool)

(assert (=> b!875179 (=> (not res!397938) (not e!575302))))

(assert (=> b!875179 (= res!397938 (matchR!754 EmptyExpr!2216 (_1!6091 (get!2891 lt!329633))))))

(declare-fun d!275790 () Bool)

(assert (=> d!275790 e!575300))

(declare-fun res!397941 () Bool)

(assert (=> d!275790 (=> res!397941 e!575300)))

(assert (=> d!275790 (= res!397941 e!575302)))

(declare-fun res!397937 () Bool)

(assert (=> d!275790 (=> (not res!397937) (not e!575302))))

(assert (=> d!275790 (= res!397937 (isDefined!1549 lt!329633))))

(assert (=> d!275790 (= lt!329633 e!575299)))

(declare-fun c!141530 () Bool)

(assert (=> d!275790 (= c!141530 e!575298)))

(declare-fun res!397940 () Bool)

(assert (=> d!275790 (=> (not res!397940) (not e!575298))))

(assert (=> d!275790 (= res!397940 (matchR!754 EmptyExpr!2216 Nil!9430))))

(assert (=> d!275790 (validRegex!685 EmptyExpr!2216)))

(assert (=> d!275790 (= (findConcatSeparation!13 EmptyExpr!2216 (regTwo!4944 r!15766) Nil!9430 s!10566 s!10566) lt!329633)))

(assert (= (and d!275790 res!397940) b!875181))

(assert (= (and d!275790 c!141530) b!875178))

(assert (= (and d!275790 (not c!141530)) b!875175))

(assert (= (and b!875175 c!141529) b!875177))

(assert (= (and b!875175 (not c!141529)) b!875174))

(assert (= (and d!275790 res!397937) b!875179))

(assert (= (and b!875179 res!397938) b!875182))

(assert (= (and b!875182 res!397939) b!875180))

(assert (= (and d!275790 (not res!397941)) b!875176))

(declare-fun m!1126687 () Bool)

(assert (=> b!875174 m!1126687))

(assert (=> b!875174 m!1126687))

(declare-fun m!1126689 () Bool)

(assert (=> b!875174 m!1126689))

(declare-fun m!1126691 () Bool)

(assert (=> b!875174 m!1126691))

(assert (=> b!875174 m!1126687))

(declare-fun m!1126693 () Bool)

(assert (=> b!875174 m!1126693))

(declare-fun m!1126695 () Bool)

(assert (=> b!875179 m!1126695))

(declare-fun m!1126697 () Bool)

(assert (=> b!875179 m!1126697))

(assert (=> b!875182 m!1126695))

(declare-fun m!1126699 () Bool)

(assert (=> b!875182 m!1126699))

(declare-fun m!1126701 () Bool)

(assert (=> b!875181 m!1126701))

(declare-fun m!1126703 () Bool)

(assert (=> d!275790 m!1126703))

(declare-fun m!1126705 () Bool)

(assert (=> d!275790 m!1126705))

(declare-fun m!1126707 () Bool)

(assert (=> d!275790 m!1126707))

(assert (=> b!875176 m!1126703))

(assert (=> b!875180 m!1126695))

(declare-fun m!1126709 () Bool)

(assert (=> b!875180 m!1126709))

(assert (=> b!875110 d!275790))

(declare-fun bs!234027 () Bool)

(declare-fun d!275798 () Bool)

(assert (= bs!234027 (and d!275798 b!875110)))

(declare-fun lambda!26399 () Int)

(assert (=> bs!234027 (= lambda!26399 lambda!26387)))

(assert (=> bs!234027 (not (= lambda!26399 lambda!26388))))

(assert (=> d!275798 true))

(assert (=> d!275798 true))

(assert (=> d!275798 true))

(assert (=> d!275798 (= (isDefined!1549 (findConcatSeparation!13 EmptyExpr!2216 (regTwo!4944 r!15766) Nil!9430 s!10566 s!10566)) (Exists!15 lambda!26399))))

(declare-fun lt!329637 () Unit!14011)

(declare-fun choose!5153 (Regex!2216 Regex!2216 List!9446) Unit!14011)

(assert (=> d!275798 (= lt!329637 (choose!5153 EmptyExpr!2216 (regTwo!4944 r!15766) s!10566))))

(assert (=> d!275798 (validRegex!685 EmptyExpr!2216)))

(assert (=> d!275798 (= (lemmaFindConcatSeparationEquivalentToExists!13 EmptyExpr!2216 (regTwo!4944 r!15766) s!10566) lt!329637)))

(declare-fun bs!234028 () Bool)

(assert (= bs!234028 d!275798))

(declare-fun m!1126711 () Bool)

(assert (=> bs!234028 m!1126711))

(declare-fun m!1126713 () Bool)

(assert (=> bs!234028 m!1126713))

(assert (=> bs!234028 m!1126707))

(assert (=> bs!234028 m!1126643))

(assert (=> bs!234028 m!1126645))

(assert (=> bs!234028 m!1126643))

(assert (=> b!875110 d!275798))

(declare-fun bs!234029 () Bool)

(declare-fun d!275800 () Bool)

(assert (= bs!234029 (and d!275800 b!875110)))

(declare-fun lambda!26404 () Int)

(assert (=> bs!234029 (= lambda!26404 lambda!26387)))

(assert (=> bs!234029 (not (= lambda!26404 lambda!26388))))

(declare-fun bs!234030 () Bool)

(assert (= bs!234030 (and d!275800 d!275798)))

(assert (=> bs!234030 (= lambda!26404 lambda!26399)))

(assert (=> d!275800 true))

(assert (=> d!275800 true))

(assert (=> d!275800 true))

(declare-fun lambda!26405 () Int)

(assert (=> bs!234029 (not (= lambda!26405 lambda!26387))))

(assert (=> bs!234029 (= lambda!26405 lambda!26388)))

(assert (=> bs!234030 (not (= lambda!26405 lambda!26399))))

(declare-fun bs!234031 () Bool)

(assert (= bs!234031 d!275800))

(assert (=> bs!234031 (not (= lambda!26405 lambda!26404))))

(assert (=> d!275800 true))

(assert (=> d!275800 true))

(assert (=> d!275800 true))

(assert (=> d!275800 (= (Exists!15 lambda!26404) (Exists!15 lambda!26405))))

(declare-fun lt!329640 () Unit!14011)

(declare-fun choose!5154 (Regex!2216 Regex!2216 List!9446) Unit!14011)

(assert (=> d!275800 (= lt!329640 (choose!5154 EmptyExpr!2216 (regTwo!4944 r!15766) s!10566))))

(assert (=> d!275800 (validRegex!685 EmptyExpr!2216)))

(assert (=> d!275800 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!11 EmptyExpr!2216 (regTwo!4944 r!15766) s!10566) lt!329640)))

(declare-fun m!1126715 () Bool)

(assert (=> bs!234031 m!1126715))

(declare-fun m!1126717 () Bool)

(assert (=> bs!234031 m!1126717))

(declare-fun m!1126719 () Bool)

(assert (=> bs!234031 m!1126719))

(assert (=> bs!234031 m!1126707))

(assert (=> b!875110 d!275800))

(declare-fun d!275802 () Bool)

(declare-fun isEmpty!5618 (Option!1907) Bool)

(assert (=> d!275802 (= (isDefined!1549 (findConcatSeparation!13 EmptyExpr!2216 (regTwo!4944 r!15766) Nil!9430 s!10566 s!10566)) (not (isEmpty!5618 (findConcatSeparation!13 EmptyExpr!2216 (regTwo!4944 r!15766) Nil!9430 s!10566 s!10566))))))

(declare-fun bs!234032 () Bool)

(assert (= bs!234032 d!275802))

(assert (=> bs!234032 m!1126643))

(declare-fun m!1126721 () Bool)

(assert (=> bs!234032 m!1126721))

(assert (=> b!875110 d!275802))

(declare-fun bm!50867 () Bool)

(declare-fun call!50874 () Bool)

(declare-fun call!50873 () Bool)

(assert (=> bm!50867 (= call!50874 call!50873)))

(declare-fun d!275804 () Bool)

(declare-fun res!397977 () Bool)

(declare-fun e!575339 () Bool)

(assert (=> d!275804 (=> res!397977 e!575339)))

(assert (=> d!275804 (= res!397977 (is-ElementMatch!2216 r!15766))))

(assert (=> d!275804 (= (validRegex!685 r!15766) e!575339)))

(declare-fun b!875231 () Bool)

(declare-fun e!575338 () Bool)

(declare-fun call!50872 () Bool)

(assert (=> b!875231 (= e!575338 call!50872)))

(declare-fun b!875232 () Bool)

(declare-fun res!397975 () Bool)

(assert (=> b!875232 (=> (not res!397975) (not e!575338))))

(assert (=> b!875232 (= res!397975 call!50874)))

(declare-fun e!575333 () Bool)

(assert (=> b!875232 (= e!575333 e!575338)))

(declare-fun b!875233 () Bool)

(declare-fun e!575335 () Bool)

(assert (=> b!875233 (= e!575339 e!575335)))

(declare-fun c!141539 () Bool)

(assert (=> b!875233 (= c!141539 (is-Star!2216 r!15766))))

(declare-fun b!875234 () Bool)

(declare-fun e!575334 () Bool)

(assert (=> b!875234 (= e!575334 call!50873)))

(declare-fun b!875235 () Bool)

(declare-fun res!397976 () Bool)

(declare-fun e!575337 () Bool)

(assert (=> b!875235 (=> res!397976 e!575337)))

(assert (=> b!875235 (= res!397976 (not (is-Concat!4049 r!15766)))))

(assert (=> b!875235 (= e!575333 e!575337)))

(declare-fun b!875236 () Bool)

(declare-fun e!575336 () Bool)

(assert (=> b!875236 (= e!575336 call!50872)))

(declare-fun b!875237 () Bool)

(assert (=> b!875237 (= e!575335 e!575334)))

(declare-fun res!397978 () Bool)

(declare-fun nullable!554 (Regex!2216) Bool)

(assert (=> b!875237 (= res!397978 (not (nullable!554 (reg!2545 r!15766))))))

(assert (=> b!875237 (=> (not res!397978) (not e!575334))))

(declare-fun bm!50868 () Bool)

(declare-fun c!141540 () Bool)

(assert (=> bm!50868 (= call!50872 (validRegex!685 (ite c!141540 (regTwo!4945 r!15766) (regTwo!4944 r!15766))))))

(declare-fun bm!50869 () Bool)

(assert (=> bm!50869 (= call!50873 (validRegex!685 (ite c!141539 (reg!2545 r!15766) (ite c!141540 (regOne!4945 r!15766) (regOne!4944 r!15766)))))))

(declare-fun b!875238 () Bool)

(assert (=> b!875238 (= e!575335 e!575333)))

(assert (=> b!875238 (= c!141540 (is-Union!2216 r!15766))))

(declare-fun b!875239 () Bool)

(assert (=> b!875239 (= e!575337 e!575336)))

(declare-fun res!397974 () Bool)

(assert (=> b!875239 (=> (not res!397974) (not e!575336))))

(assert (=> b!875239 (= res!397974 call!50874)))

(assert (= (and d!275804 (not res!397977)) b!875233))

(assert (= (and b!875233 c!141539) b!875237))

(assert (= (and b!875233 (not c!141539)) b!875238))

(assert (= (and b!875237 res!397978) b!875234))

(assert (= (and b!875238 c!141540) b!875232))

(assert (= (and b!875238 (not c!141540)) b!875235))

(assert (= (and b!875232 res!397975) b!875231))

(assert (= (and b!875235 (not res!397976)) b!875239))

(assert (= (and b!875239 res!397974) b!875236))

(assert (= (or b!875231 b!875236) bm!50868))

(assert (= (or b!875232 b!875239) bm!50867))

(assert (= (or b!875234 bm!50867) bm!50869))

(declare-fun m!1126723 () Bool)

(assert (=> b!875237 m!1126723))

(declare-fun m!1126725 () Bool)

(assert (=> bm!50868 m!1126725))

(declare-fun m!1126727 () Bool)

(assert (=> bm!50869 m!1126727))

(assert (=> start!79112 d!275804))

(declare-fun bs!234033 () Bool)

(declare-fun b!875289 () Bool)

(assert (= bs!234033 (and b!875289 b!875110)))

(declare-fun lambda!26410 () Int)

(assert (=> bs!234033 (not (= lambda!26410 lambda!26388))))

(declare-fun bs!234034 () Bool)

(assert (= bs!234034 (and b!875289 d!275798)))

(assert (=> bs!234034 (not (= lambda!26410 lambda!26399))))

(declare-fun bs!234035 () Bool)

(assert (= bs!234035 (and b!875289 d!275800)))

(assert (=> bs!234035 (not (= lambda!26410 lambda!26405))))

(assert (=> bs!234035 (not (= lambda!26410 lambda!26404))))

(assert (=> bs!234033 (not (= lambda!26410 lambda!26387))))

(assert (=> b!875289 true))

(assert (=> b!875289 true))

(declare-fun bs!234036 () Bool)

(declare-fun b!875281 () Bool)

(assert (= bs!234036 (and b!875281 b!875110)))

(declare-fun lambda!26411 () Int)

(assert (=> bs!234036 (= (= (regOne!4944 r!15766) EmptyExpr!2216) (= lambda!26411 lambda!26388))))

(declare-fun bs!234037 () Bool)

(assert (= bs!234037 (and b!875281 b!875289)))

(assert (=> bs!234037 (not (= lambda!26411 lambda!26410))))

(declare-fun bs!234038 () Bool)

(assert (= bs!234038 (and b!875281 d!275798)))

(assert (=> bs!234038 (not (= lambda!26411 lambda!26399))))

(declare-fun bs!234039 () Bool)

(assert (= bs!234039 (and b!875281 d!275800)))

(assert (=> bs!234039 (= (= (regOne!4944 r!15766) EmptyExpr!2216) (= lambda!26411 lambda!26405))))

(assert (=> bs!234039 (not (= lambda!26411 lambda!26404))))

(assert (=> bs!234036 (not (= lambda!26411 lambda!26387))))

(assert (=> b!875281 true))

(assert (=> b!875281 true))

(declare-fun e!575369 () Bool)

(declare-fun call!50879 () Bool)

(assert (=> b!875281 (= e!575369 call!50879)))

(declare-fun c!141551 () Bool)

(declare-fun bm!50874 () Bool)

(assert (=> bm!50874 (= call!50879 (Exists!15 (ite c!141551 lambda!26410 lambda!26411)))))

(declare-fun b!875282 () Bool)

(declare-fun c!141553 () Bool)

(assert (=> b!875282 (= c!141553 (is-ElementMatch!2216 r!15766))))

(declare-fun e!575363 () Bool)

(declare-fun e!575365 () Bool)

(assert (=> b!875282 (= e!575363 e!575365)))

(declare-fun b!875283 () Bool)

(declare-fun c!141552 () Bool)

(assert (=> b!875283 (= c!141552 (is-Union!2216 r!15766))))

(declare-fun e!575367 () Bool)

(assert (=> b!875283 (= e!575365 e!575367)))

(declare-fun d!275806 () Bool)

(declare-fun c!141554 () Bool)

(assert (=> d!275806 (= c!141554 (is-EmptyExpr!2216 r!15766))))

(declare-fun e!575366 () Bool)

(assert (=> d!275806 (= (matchRSpec!17 r!15766 s!10566) e!575366)))

(declare-fun b!875284 () Bool)

(declare-fun e!575368 () Bool)

(assert (=> b!875284 (= e!575368 (matchRSpec!17 (regTwo!4945 r!15766) s!10566))))

(declare-fun b!875285 () Bool)

(assert (=> b!875285 (= e!575367 e!575368)))

(declare-fun res!398002 () Bool)

(assert (=> b!875285 (= res!398002 (matchRSpec!17 (regOne!4945 r!15766) s!10566))))

(assert (=> b!875285 (=> res!398002 e!575368)))

(declare-fun b!875286 () Bool)

(assert (=> b!875286 (= e!575365 (= s!10566 (Cons!9430 (c!141523 r!15766) Nil!9430)))))

(declare-fun b!875287 () Bool)

(assert (=> b!875287 (= e!575367 e!575369)))

(assert (=> b!875287 (= c!141551 (is-Star!2216 r!15766))))

(declare-fun b!875288 () Bool)

(declare-fun res!398000 () Bool)

(declare-fun e!575364 () Bool)

(assert (=> b!875288 (=> res!398000 e!575364)))

(declare-fun call!50880 () Bool)

(assert (=> b!875288 (= res!398000 call!50880)))

(assert (=> b!875288 (= e!575369 e!575364)))

(assert (=> b!875289 (= e!575364 call!50879)))

(declare-fun b!875290 () Bool)

(assert (=> b!875290 (= e!575366 call!50880)))

(declare-fun b!875291 () Bool)

(assert (=> b!875291 (= e!575366 e!575363)))

(declare-fun res!398001 () Bool)

(assert (=> b!875291 (= res!398001 (not (is-EmptyLang!2216 r!15766)))))

(assert (=> b!875291 (=> (not res!398001) (not e!575363))))

(declare-fun bm!50875 () Bool)

(assert (=> bm!50875 (= call!50880 (isEmpty!5616 s!10566))))

(assert (= (and d!275806 c!141554) b!875290))

(assert (= (and d!275806 (not c!141554)) b!875291))

(assert (= (and b!875291 res!398001) b!875282))

(assert (= (and b!875282 c!141553) b!875286))

(assert (= (and b!875282 (not c!141553)) b!875283))

(assert (= (and b!875283 c!141552) b!875285))

(assert (= (and b!875283 (not c!141552)) b!875287))

(assert (= (and b!875285 (not res!398002)) b!875284))

(assert (= (and b!875287 c!141551) b!875288))

(assert (= (and b!875287 (not c!141551)) b!875281))

(assert (= (and b!875288 (not res!398000)) b!875289))

(assert (= (or b!875289 b!875281) bm!50874))

(assert (= (or b!875290 b!875288) bm!50875))

(declare-fun m!1126753 () Bool)

(assert (=> bm!50874 m!1126753))

(declare-fun m!1126755 () Bool)

(assert (=> b!875284 m!1126755))

(declare-fun m!1126757 () Bool)

(assert (=> b!875285 m!1126757))

(assert (=> bm!50875 m!1126649))

(assert (=> b!875111 d!275806))

(declare-fun b!875324 () Bool)

(declare-fun res!398023 () Bool)

(declare-fun e!575388 () Bool)

(assert (=> b!875324 (=> (not res!398023) (not e!575388))))

(declare-fun call!50883 () Bool)

(assert (=> b!875324 (= res!398023 (not call!50883))))

(declare-fun b!875326 () Bool)

(declare-fun e!575386 () Bool)

(declare-fun head!1522 (List!9446) C!5002)

(assert (=> b!875326 (= e!575386 (not (= (head!1522 s!10566) (c!141523 r!15766))))))

(declare-fun b!875327 () Bool)

(declare-fun e!575392 () Bool)

(declare-fun e!575387 () Bool)

(assert (=> b!875327 (= e!575392 e!575387)))

(declare-fun res!398028 () Bool)

(assert (=> b!875327 (=> (not res!398028) (not e!575387))))

(declare-fun lt!329655 () Bool)

(assert (=> b!875327 (= res!398028 (not lt!329655))))

(declare-fun bm!50878 () Bool)

(assert (=> bm!50878 (= call!50883 (isEmpty!5616 s!10566))))

(declare-fun b!875328 () Bool)

(declare-fun e!575390 () Bool)

(assert (=> b!875328 (= e!575390 (nullable!554 r!15766))))

(declare-fun b!875325 () Bool)

(declare-fun res!398024 () Bool)

(assert (=> b!875325 (=> res!398024 e!575392)))

(assert (=> b!875325 (= res!398024 e!575388)))

(declare-fun res!398029 () Bool)

(assert (=> b!875325 (=> (not res!398029) (not e!575388))))

(assert (=> b!875325 (= res!398029 lt!329655)))

(declare-fun d!275810 () Bool)

(declare-fun e!575389 () Bool)

(assert (=> d!275810 e!575389))

(declare-fun c!141561 () Bool)

(assert (=> d!275810 (= c!141561 (is-EmptyExpr!2216 r!15766))))

(assert (=> d!275810 (= lt!329655 e!575390)))

(declare-fun c!141563 () Bool)

(assert (=> d!275810 (= c!141563 (isEmpty!5616 s!10566))))

(assert (=> d!275810 (validRegex!685 r!15766)))

(assert (=> d!275810 (= (matchR!754 r!15766 s!10566) lt!329655)))

(declare-fun b!875329 () Bool)

(assert (=> b!875329 (= e!575387 e!575386)))

(declare-fun res!398027 () Bool)

(assert (=> b!875329 (=> res!398027 e!575386)))

(assert (=> b!875329 (= res!398027 call!50883)))

(declare-fun b!875330 () Bool)

(declare-fun res!398030 () Bool)

(assert (=> b!875330 (=> (not res!398030) (not e!575388))))

(declare-fun tail!1084 (List!9446) List!9446)

(assert (=> b!875330 (= res!398030 (isEmpty!5616 (tail!1084 s!10566)))))

(declare-fun b!875331 () Bool)

(assert (=> b!875331 (= e!575389 (= lt!329655 call!50883))))

(declare-fun b!875332 () Bool)

(declare-fun res!398026 () Bool)

(assert (=> b!875332 (=> res!398026 e!575392)))

(assert (=> b!875332 (= res!398026 (not (is-ElementMatch!2216 r!15766)))))

(declare-fun e!575391 () Bool)

(assert (=> b!875332 (= e!575391 e!575392)))

(declare-fun b!875333 () Bool)

(assert (=> b!875333 (= e!575389 e!575391)))

(declare-fun c!141562 () Bool)

(assert (=> b!875333 (= c!141562 (is-EmptyLang!2216 r!15766))))

(declare-fun b!875334 () Bool)

(assert (=> b!875334 (= e!575391 (not lt!329655))))

(declare-fun b!875335 () Bool)

(assert (=> b!875335 (= e!575388 (= (head!1522 s!10566) (c!141523 r!15766)))))

(declare-fun b!875336 () Bool)

(declare-fun res!398025 () Bool)

(assert (=> b!875336 (=> res!398025 e!575386)))

(assert (=> b!875336 (= res!398025 (not (isEmpty!5616 (tail!1084 s!10566))))))

(declare-fun b!875337 () Bool)

(declare-fun derivativeStep!369 (Regex!2216 C!5002) Regex!2216)

(assert (=> b!875337 (= e!575390 (matchR!754 (derivativeStep!369 r!15766 (head!1522 s!10566)) (tail!1084 s!10566)))))

(assert (= (and d!275810 c!141563) b!875328))

(assert (= (and d!275810 (not c!141563)) b!875337))

(assert (= (and d!275810 c!141561) b!875331))

(assert (= (and d!275810 (not c!141561)) b!875333))

(assert (= (and b!875333 c!141562) b!875334))

(assert (= (and b!875333 (not c!141562)) b!875332))

(assert (= (and b!875332 (not res!398026)) b!875325))

(assert (= (and b!875325 res!398029) b!875324))

(assert (= (and b!875324 res!398023) b!875330))

(assert (= (and b!875330 res!398030) b!875335))

(assert (= (and b!875325 (not res!398024)) b!875327))

(assert (= (and b!875327 res!398028) b!875329))

(assert (= (and b!875329 (not res!398027)) b!875336))

(assert (= (and b!875336 (not res!398025)) b!875326))

(assert (= (or b!875331 b!875324 b!875329) bm!50878))

(declare-fun m!1126759 () Bool)

(assert (=> b!875328 m!1126759))

(assert (=> d!275810 m!1126649))

(assert (=> d!275810 m!1126637))

(declare-fun m!1126761 () Bool)

(assert (=> b!875336 m!1126761))

(assert (=> b!875336 m!1126761))

(declare-fun m!1126763 () Bool)

(assert (=> b!875336 m!1126763))

(assert (=> b!875330 m!1126761))

(assert (=> b!875330 m!1126761))

(assert (=> b!875330 m!1126763))

(assert (=> bm!50878 m!1126649))

(declare-fun m!1126767 () Bool)

(assert (=> b!875335 m!1126767))

(assert (=> b!875326 m!1126767))

(assert (=> b!875337 m!1126767))

(assert (=> b!875337 m!1126767))

(declare-fun m!1126771 () Bool)

(assert (=> b!875337 m!1126771))

(assert (=> b!875337 m!1126761))

(assert (=> b!875337 m!1126771))

(assert (=> b!875337 m!1126761))

(declare-fun m!1126773 () Bool)

(assert (=> b!875337 m!1126773))

(assert (=> b!875111 d!275810))

(declare-fun d!275814 () Bool)

(assert (=> d!275814 (= (matchR!754 r!15766 s!10566) (matchRSpec!17 r!15766 s!10566))))

(declare-fun lt!329658 () Unit!14011)

(declare-fun choose!5155 (Regex!2216 List!9446) Unit!14011)

(assert (=> d!275814 (= lt!329658 (choose!5155 r!15766 s!10566))))

(assert (=> d!275814 (validRegex!685 r!15766)))

(assert (=> d!275814 (= (mainMatchTheorem!17 r!15766 s!10566) lt!329658)))

(declare-fun bs!234042 () Bool)

(assert (= bs!234042 d!275814))

(assert (=> bs!234042 m!1126655))

(assert (=> bs!234042 m!1126653))

(declare-fun m!1126775 () Bool)

(assert (=> bs!234042 m!1126775))

(assert (=> bs!234042 m!1126637))

(assert (=> b!875111 d!275814))

(declare-fun b!875342 () Bool)

(declare-fun e!575395 () Bool)

(declare-fun tp!276827 () Bool)

(assert (=> b!875342 (= e!575395 (and tp_is_empty!4075 tp!276827))))

(assert (=> b!875108 (= tp!276805 e!575395)))

(assert (= (and b!875108 (is-Cons!9430 (t!100492 s!10566))) b!875342))

(declare-fun b!875354 () Bool)

(declare-fun e!575398 () Bool)

(declare-fun tp!276840 () Bool)

(declare-fun tp!276841 () Bool)

(assert (=> b!875354 (= e!575398 (and tp!276840 tp!276841))))

(declare-fun b!875356 () Bool)

(declare-fun tp!276838 () Bool)

(declare-fun tp!276842 () Bool)

(assert (=> b!875356 (= e!575398 (and tp!276838 tp!276842))))

(assert (=> b!875104 (= tp!276803 e!575398)))

(declare-fun b!875355 () Bool)

(declare-fun tp!276839 () Bool)

(assert (=> b!875355 (= e!575398 tp!276839)))

(declare-fun b!875353 () Bool)

(assert (=> b!875353 (= e!575398 tp_is_empty!4075)))

(assert (= (and b!875104 (is-ElementMatch!2216 (reg!2545 r!15766))) b!875353))

(assert (= (and b!875104 (is-Concat!4049 (reg!2545 r!15766))) b!875354))

(assert (= (and b!875104 (is-Star!2216 (reg!2545 r!15766))) b!875355))

(assert (= (and b!875104 (is-Union!2216 (reg!2545 r!15766))) b!875356))

(declare-fun b!875358 () Bool)

(declare-fun e!575399 () Bool)

(declare-fun tp!276845 () Bool)

(declare-fun tp!276846 () Bool)

(assert (=> b!875358 (= e!575399 (and tp!276845 tp!276846))))

(declare-fun b!875360 () Bool)

(declare-fun tp!276843 () Bool)

(declare-fun tp!276847 () Bool)

(assert (=> b!875360 (= e!575399 (and tp!276843 tp!276847))))

(assert (=> b!875109 (= tp!276804 e!575399)))

(declare-fun b!875359 () Bool)

(declare-fun tp!276844 () Bool)

(assert (=> b!875359 (= e!575399 tp!276844)))

(declare-fun b!875357 () Bool)

(assert (=> b!875357 (= e!575399 tp_is_empty!4075)))

(assert (= (and b!875109 (is-ElementMatch!2216 (regOne!4944 r!15766))) b!875357))

(assert (= (and b!875109 (is-Concat!4049 (regOne!4944 r!15766))) b!875358))

(assert (= (and b!875109 (is-Star!2216 (regOne!4944 r!15766))) b!875359))

(assert (= (and b!875109 (is-Union!2216 (regOne!4944 r!15766))) b!875360))

(declare-fun b!875362 () Bool)

(declare-fun e!575400 () Bool)

(declare-fun tp!276850 () Bool)

(declare-fun tp!276851 () Bool)

(assert (=> b!875362 (= e!575400 (and tp!276850 tp!276851))))

(declare-fun b!875364 () Bool)

(declare-fun tp!276848 () Bool)

(declare-fun tp!276852 () Bool)

(assert (=> b!875364 (= e!575400 (and tp!276848 tp!276852))))

(assert (=> b!875109 (= tp!276802 e!575400)))

(declare-fun b!875363 () Bool)

(declare-fun tp!276849 () Bool)

(assert (=> b!875363 (= e!575400 tp!276849)))

(declare-fun b!875361 () Bool)

(assert (=> b!875361 (= e!575400 tp_is_empty!4075)))

(assert (= (and b!875109 (is-ElementMatch!2216 (regTwo!4944 r!15766))) b!875361))

(assert (= (and b!875109 (is-Concat!4049 (regTwo!4944 r!15766))) b!875362))

(assert (= (and b!875109 (is-Star!2216 (regTwo!4944 r!15766))) b!875363))

(assert (= (and b!875109 (is-Union!2216 (regTwo!4944 r!15766))) b!875364))

(declare-fun b!875366 () Bool)

(declare-fun e!575401 () Bool)

(declare-fun tp!276855 () Bool)

(declare-fun tp!276856 () Bool)

(assert (=> b!875366 (= e!575401 (and tp!276855 tp!276856))))

(declare-fun b!875368 () Bool)

(declare-fun tp!276853 () Bool)

(declare-fun tp!276857 () Bool)

(assert (=> b!875368 (= e!575401 (and tp!276853 tp!276857))))

(assert (=> b!875105 (= tp!276806 e!575401)))

(declare-fun b!875367 () Bool)

(declare-fun tp!276854 () Bool)

(assert (=> b!875367 (= e!575401 tp!276854)))

(declare-fun b!875365 () Bool)

(assert (=> b!875365 (= e!575401 tp_is_empty!4075)))

(assert (= (and b!875105 (is-ElementMatch!2216 (regOne!4945 r!15766))) b!875365))

(assert (= (and b!875105 (is-Concat!4049 (regOne!4945 r!15766))) b!875366))

(assert (= (and b!875105 (is-Star!2216 (regOne!4945 r!15766))) b!875367))

(assert (= (and b!875105 (is-Union!2216 (regOne!4945 r!15766))) b!875368))

(declare-fun b!875370 () Bool)

(declare-fun e!575402 () Bool)

(declare-fun tp!276860 () Bool)

(declare-fun tp!276861 () Bool)

(assert (=> b!875370 (= e!575402 (and tp!276860 tp!276861))))

(declare-fun b!875372 () Bool)

(declare-fun tp!276858 () Bool)

(declare-fun tp!276862 () Bool)

(assert (=> b!875372 (= e!575402 (and tp!276858 tp!276862))))

(assert (=> b!875105 (= tp!276801 e!575402)))

(declare-fun b!875371 () Bool)

(declare-fun tp!276859 () Bool)

(assert (=> b!875371 (= e!575402 tp!276859)))

(declare-fun b!875369 () Bool)

(assert (=> b!875369 (= e!575402 tp_is_empty!4075)))

(assert (= (and b!875105 (is-ElementMatch!2216 (regTwo!4945 r!15766))) b!875369))

(assert (= (and b!875105 (is-Concat!4049 (regTwo!4945 r!15766))) b!875370))

(assert (= (and b!875105 (is-Star!2216 (regTwo!4945 r!15766))) b!875371))

(assert (= (and b!875105 (is-Union!2216 (regTwo!4945 r!15766))) b!875372))

(push 1)

(assert (not b!875328))

(assert (not b!875180))

(assert (not d!275800))

(assert (not b!875174))

(assert (not b!875337))

(assert (not b!875336))

(assert (not b!875367))

(assert (not d!275788))

(assert tp_is_empty!4075)

(assert (not b!875356))

(assert (not b!875182))

(assert (not b!875354))

(assert (not bm!50869))

(assert (not b!875284))

(assert (not d!275790))

(assert (not b!875285))

(assert (not d!275814))

(assert (not b!875359))

(assert (not b!875335))

(assert (not b!875181))

(assert (not d!275802))

(assert (not b!875360))

(assert (not b!875368))

(assert (not b!875372))

(assert (not d!275810))

(assert (not b!875371))

(assert (not bm!50868))

(assert (not b!875330))

(assert (not d!275798))

(assert (not b!875326))

(assert (not b!875364))

(assert (not b!875358))

(assert (not d!275784))

(assert (not bm!50874))

(assert (not b!875237))

(assert (not bm!50878))

(assert (not b!875366))

(assert (not bm!50875))

(assert (not b!875176))

(assert (not b!875370))

(assert (not b!875342))

(assert (not b!875355))

(assert (not b!875179))

(assert (not b!875362))

(assert (not b!875363))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

