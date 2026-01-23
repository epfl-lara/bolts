; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84812 () Bool)

(assert start!84812)

(declare-fun b!951949 () Bool)

(assert (=> b!951949 true))

(assert (=> b!951949 true))

(declare-fun lambda!32730 () Int)

(declare-fun lambda!32729 () Int)

(assert (=> b!951949 (not (= lambda!32730 lambda!32729))))

(assert (=> b!951949 true))

(assert (=> b!951949 true))

(declare-fun b!951948 () Bool)

(declare-fun e!616074 () Bool)

(declare-fun tp_is_empty!4887 () Bool)

(declare-fun tp!293433 () Bool)

(assert (=> b!951948 (= e!616074 (and tp_is_empty!4887 tp!293433))))

(declare-fun e!616070 () Bool)

(declare-fun e!616073 () Bool)

(assert (=> b!951949 (= e!616070 e!616073)))

(declare-fun res!432544 () Bool)

(assert (=> b!951949 (=> res!432544 e!616073)))

(declare-datatypes ((C!5814 0))(
  ( (C!5815 (val!3155 Int)) )
))
(declare-datatypes ((List!9852 0))(
  ( (Nil!9836) (Cons!9836 (h!15237 C!5814) (t!100898 List!9852)) )
))
(declare-datatypes ((tuple2!11138 0))(
  ( (tuple2!11139 (_1!6395 List!9852) (_2!6395 List!9852)) )
))
(declare-fun lt!344698 () tuple2!11138)

(declare-fun isEmpty!6107 (List!9852) Bool)

(assert (=> b!951949 (= res!432544 (not (isEmpty!6107 (_2!6395 lt!344698))))))

(declare-datatypes ((Option!2211 0))(
  ( (None!2210) (Some!2210 (v!19627 tuple2!11138)) )
))
(declare-fun lt!344699 () Option!2211)

(declare-fun get!3311 (Option!2211) tuple2!11138)

(assert (=> b!951949 (= lt!344698 (get!3311 lt!344699))))

(declare-fun Exists!373 (Int) Bool)

(assert (=> b!951949 (= (Exists!373 lambda!32729) (Exists!373 lambda!32730))))

(declare-datatypes ((Unit!14887 0))(
  ( (Unit!14888) )
))
(declare-fun lt!344695 () Unit!14887)

(declare-datatypes ((Regex!2622 0))(
  ( (ElementMatch!2622 (c!155017 C!5814)) (Concat!4455 (regOne!5756 Regex!2622) (regTwo!5756 Regex!2622)) (EmptyExpr!2622) (Star!2622 (reg!2951 Regex!2622)) (EmptyLang!2622) (Union!2622 (regOne!5757 Regex!2622) (regTwo!5757 Regex!2622)) )
))
(declare-fun r!15766 () Regex!2622)

(declare-fun s!10566 () List!9852)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!193 (Regex!2622 Regex!2622 List!9852) Unit!14887)

(assert (=> b!951949 (= lt!344695 (lemmaExistCutMatchRandMatchRSpecEquivalent!193 (regOne!5756 r!15766) EmptyExpr!2622 s!10566))))

(declare-fun isDefined!1853 (Option!2211) Bool)

(assert (=> b!951949 (= (isDefined!1853 lt!344699) (Exists!373 lambda!32729))))

(declare-fun findConcatSeparation!317 (Regex!2622 Regex!2622 List!9852 List!9852 List!9852) Option!2211)

(assert (=> b!951949 (= lt!344699 (findConcatSeparation!317 (regOne!5756 r!15766) EmptyExpr!2622 Nil!9836 s!10566 s!10566))))

(declare-fun lt!344697 () Unit!14887)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!317 (Regex!2622 Regex!2622 List!9852) Unit!14887)

(assert (=> b!951949 (= lt!344697 (lemmaFindConcatSeparationEquivalentToExists!317 (regOne!5756 r!15766) EmptyExpr!2622 s!10566))))

(declare-fun b!951950 () Bool)

(declare-fun e!616071 () Bool)

(declare-fun tp!293434 () Bool)

(declare-fun tp!293430 () Bool)

(assert (=> b!951950 (= e!616071 (and tp!293434 tp!293430))))

(declare-fun b!951951 () Bool)

(declare-fun tp!293432 () Bool)

(declare-fun tp!293429 () Bool)

(assert (=> b!951951 (= e!616071 (and tp!293432 tp!293429))))

(declare-fun b!951952 () Bool)

(declare-fun matchR!1160 (Regex!2622 List!9852) Bool)

(assert (=> b!951952 (= e!616073 (matchR!1160 (regOne!5756 r!15766) (_1!6395 lt!344698)))))

(declare-fun res!432541 () Bool)

(declare-fun e!616072 () Bool)

(assert (=> start!84812 (=> (not res!432541) (not e!616072))))

(declare-fun validRegex!1091 (Regex!2622) Bool)

(assert (=> start!84812 (= res!432541 (validRegex!1091 r!15766))))

(assert (=> start!84812 e!616072))

(assert (=> start!84812 e!616071))

(assert (=> start!84812 e!616074))

(declare-fun b!951953 () Bool)

(declare-fun res!432542 () Bool)

(assert (=> b!951953 (=> res!432542 e!616070)))

(assert (=> b!951953 (= res!432542 (isEmpty!6107 s!10566))))

(declare-fun b!951954 () Bool)

(declare-fun tp!293431 () Bool)

(assert (=> b!951954 (= e!616071 tp!293431)))

(declare-fun b!951955 () Bool)

(assert (=> b!951955 (= e!616071 tp_is_empty!4887)))

(declare-fun b!951956 () Bool)

(assert (=> b!951956 (= e!616072 (not e!616070))))

(declare-fun res!432543 () Bool)

(assert (=> b!951956 (=> res!432543 e!616070)))

(declare-fun lt!344694 () Bool)

(assert (=> b!951956 (= res!432543 (or (not lt!344694) (and (is-Concat!4455 r!15766) (is-EmptyExpr!2622 (regOne!5756 r!15766))) (not (is-Concat!4455 r!15766)) (not (is-EmptyExpr!2622 (regTwo!5756 r!15766)))))))

(declare-fun matchRSpec!423 (Regex!2622 List!9852) Bool)

(assert (=> b!951956 (= lt!344694 (matchRSpec!423 r!15766 s!10566))))

(assert (=> b!951956 (= lt!344694 (matchR!1160 r!15766 s!10566))))

(declare-fun lt!344696 () Unit!14887)

(declare-fun mainMatchTheorem!423 (Regex!2622 List!9852) Unit!14887)

(assert (=> b!951956 (= lt!344696 (mainMatchTheorem!423 r!15766 s!10566))))

(assert (= (and start!84812 res!432541) b!951956))

(assert (= (and b!951956 (not res!432543)) b!951953))

(assert (= (and b!951953 (not res!432542)) b!951949))

(assert (= (and b!951949 (not res!432544)) b!951952))

(assert (= (and start!84812 (is-ElementMatch!2622 r!15766)) b!951955))

(assert (= (and start!84812 (is-Concat!4455 r!15766)) b!951951))

(assert (= (and start!84812 (is-Star!2622 r!15766)) b!951954))

(assert (= (and start!84812 (is-Union!2622 r!15766)) b!951950))

(assert (= (and start!84812 (is-Cons!9836 s!10566)) b!951948))

(declare-fun m!1164369 () Bool)

(assert (=> b!951956 m!1164369))

(declare-fun m!1164371 () Bool)

(assert (=> b!951956 m!1164371))

(declare-fun m!1164373 () Bool)

(assert (=> b!951956 m!1164373))

(declare-fun m!1164375 () Bool)

(assert (=> b!951953 m!1164375))

(declare-fun m!1164377 () Bool)

(assert (=> start!84812 m!1164377))

(declare-fun m!1164379 () Bool)

(assert (=> b!951952 m!1164379))

(declare-fun m!1164381 () Bool)

(assert (=> b!951949 m!1164381))

(declare-fun m!1164383 () Bool)

(assert (=> b!951949 m!1164383))

(declare-fun m!1164385 () Bool)

(assert (=> b!951949 m!1164385))

(declare-fun m!1164387 () Bool)

(assert (=> b!951949 m!1164387))

(assert (=> b!951949 m!1164387))

(declare-fun m!1164389 () Bool)

(assert (=> b!951949 m!1164389))

(declare-fun m!1164391 () Bool)

(assert (=> b!951949 m!1164391))

(declare-fun m!1164393 () Bool)

(assert (=> b!951949 m!1164393))

(declare-fun m!1164395 () Bool)

(assert (=> b!951949 m!1164395))

(push 1)

(assert (not b!951956))

(assert (not b!951948))

(assert (not b!951953))

(assert (not b!951950))

(assert (not b!951951))

(assert (not b!951954))

(assert (not b!951952))

(assert (not start!84812))

(assert (not b!951949))

(assert tp_is_empty!4887)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!240178 () Bool)

(declare-fun b!952064 () Bool)

(assert (= bs!240178 (and b!952064 b!951949)))

(declare-fun lambda!32744 () Int)

(assert (=> bs!240178 (not (= lambda!32744 lambda!32729))))

(assert (=> bs!240178 (not (= lambda!32744 lambda!32730))))

(assert (=> b!952064 true))

(assert (=> b!952064 true))

(declare-fun bs!240179 () Bool)

(declare-fun b!952060 () Bool)

(assert (= bs!240179 (and b!952060 b!951949)))

(declare-fun lambda!32746 () Int)

(assert (=> bs!240179 (not (= lambda!32746 lambda!32729))))

(assert (=> bs!240179 (= (= (regTwo!5756 r!15766) EmptyExpr!2622) (= lambda!32746 lambda!32730))))

(declare-fun bs!240180 () Bool)

(assert (= bs!240180 (and b!952060 b!952064)))

(assert (=> bs!240180 (not (= lambda!32746 lambda!32744))))

(assert (=> b!952060 true))

(assert (=> b!952060 true))

(declare-fun b!952058 () Bool)

(declare-fun res!432591 () Bool)

(declare-fun e!616130 () Bool)

(assert (=> b!952058 (=> res!432591 e!616130)))

(declare-fun call!59749 () Bool)

(assert (=> b!952058 (= res!432591 call!59749)))

(declare-fun e!616131 () Bool)

(assert (=> b!952058 (= e!616131 e!616130)))

(declare-fun b!952059 () Bool)

(declare-fun e!616132 () Bool)

(declare-fun e!616129 () Bool)

(assert (=> b!952059 (= e!616132 e!616129)))

(declare-fun res!432592 () Bool)

(assert (=> b!952059 (= res!432592 (matchRSpec!423 (regOne!5757 r!15766) s!10566))))

(assert (=> b!952059 (=> res!432592 e!616129)))

(declare-fun bm!59743 () Bool)

(assert (=> bm!59743 (= call!59749 (isEmpty!6107 s!10566))))

(declare-fun call!59748 () Bool)

(assert (=> b!952060 (= e!616131 call!59748)))

(declare-fun b!952062 () Bool)

(assert (=> b!952062 (= e!616129 (matchRSpec!423 (regTwo!5757 r!15766) s!10566))))

(declare-fun b!952063 () Bool)

(declare-fun c!155037 () Bool)

(assert (=> b!952063 (= c!155037 (is-ElementMatch!2622 r!15766))))

(declare-fun e!616134 () Bool)

(declare-fun e!616128 () Bool)

(assert (=> b!952063 (= e!616134 e!616128)))

(declare-fun c!155038 () Bool)

(declare-fun bm!59744 () Bool)

(assert (=> bm!59744 (= call!59748 (Exists!373 (ite c!155038 lambda!32744 lambda!32746)))))

(assert (=> b!952064 (= e!616130 call!59748)))

(declare-fun b!952065 () Bool)

(declare-fun e!616133 () Bool)

(assert (=> b!952065 (= e!616133 call!59749)))

(declare-fun b!952066 () Bool)

(assert (=> b!952066 (= e!616133 e!616134)))

(declare-fun res!432593 () Bool)

(assert (=> b!952066 (= res!432593 (not (is-EmptyLang!2622 r!15766)))))

(assert (=> b!952066 (=> (not res!432593) (not e!616134))))

(declare-fun b!952067 () Bool)

(declare-fun c!155035 () Bool)

(assert (=> b!952067 (= c!155035 (is-Union!2622 r!15766))))

(assert (=> b!952067 (= e!616128 e!616132)))

(declare-fun b!952068 () Bool)

(assert (=> b!952068 (= e!616128 (= s!10566 (Cons!9836 (c!155017 r!15766) Nil!9836)))))

(declare-fun b!952061 () Bool)

(assert (=> b!952061 (= e!616132 e!616131)))

(assert (=> b!952061 (= c!155038 (is-Star!2622 r!15766))))

(declare-fun d!284005 () Bool)

(declare-fun c!155036 () Bool)

(assert (=> d!284005 (= c!155036 (is-EmptyExpr!2622 r!15766))))

(assert (=> d!284005 (= (matchRSpec!423 r!15766 s!10566) e!616133)))

(assert (= (and d!284005 c!155036) b!952065))

(assert (= (and d!284005 (not c!155036)) b!952066))

(assert (= (and b!952066 res!432593) b!952063))

(assert (= (and b!952063 c!155037) b!952068))

(assert (= (and b!952063 (not c!155037)) b!952067))

(assert (= (and b!952067 c!155035) b!952059))

(assert (= (and b!952067 (not c!155035)) b!952061))

(assert (= (and b!952059 (not res!432592)) b!952062))

(assert (= (and b!952061 c!155038) b!952058))

(assert (= (and b!952061 (not c!155038)) b!952060))

(assert (= (and b!952058 (not res!432591)) b!952064))

(assert (= (or b!952064 b!952060) bm!59744))

(assert (= (or b!952065 b!952058) bm!59743))

(declare-fun m!1164425 () Bool)

(assert (=> b!952059 m!1164425))

(assert (=> bm!59743 m!1164375))

(declare-fun m!1164427 () Bool)

(assert (=> b!952062 m!1164427))

(declare-fun m!1164429 () Bool)

(assert (=> bm!59744 m!1164429))

(assert (=> b!951956 d!284005))

(declare-fun b!952107 () Bool)

(declare-fun e!616158 () Bool)

(declare-fun head!1739 (List!9852) C!5814)

(assert (=> b!952107 (= e!616158 (= (head!1739 s!10566) (c!155017 r!15766)))))

(declare-fun b!952108 () Bool)

(declare-fun e!616153 () Bool)

(assert (=> b!952108 (= e!616153 (not (= (head!1739 s!10566) (c!155017 r!15766))))))

(declare-fun d!284007 () Bool)

(declare-fun e!616159 () Bool)

(assert (=> d!284007 e!616159))

(declare-fun c!155045 () Bool)

(assert (=> d!284007 (= c!155045 (is-EmptyExpr!2622 r!15766))))

(declare-fun lt!344720 () Bool)

(declare-fun e!616156 () Bool)

(assert (=> d!284007 (= lt!344720 e!616156)))

(declare-fun c!155046 () Bool)

(assert (=> d!284007 (= c!155046 (isEmpty!6107 s!10566))))

(assert (=> d!284007 (validRegex!1091 r!15766)))

(assert (=> d!284007 (= (matchR!1160 r!15766 s!10566) lt!344720)))

(declare-fun bm!59751 () Bool)

(declare-fun call!59756 () Bool)

(assert (=> bm!59751 (= call!59756 (isEmpty!6107 s!10566))))

(declare-fun b!952109 () Bool)

(declare-fun res!432623 () Bool)

(assert (=> b!952109 (=> res!432623 e!616153)))

(declare-fun tail!1301 (List!9852) List!9852)

(assert (=> b!952109 (= res!432623 (not (isEmpty!6107 (tail!1301 s!10566))))))

(declare-fun b!952110 () Bool)

(declare-fun nullable!777 (Regex!2622) Bool)

(assert (=> b!952110 (= e!616156 (nullable!777 r!15766))))

(declare-fun b!952111 () Bool)

(declare-fun derivativeStep!586 (Regex!2622 C!5814) Regex!2622)

(assert (=> b!952111 (= e!616156 (matchR!1160 (derivativeStep!586 r!15766 (head!1739 s!10566)) (tail!1301 s!10566)))))

(declare-fun b!952112 () Bool)

(declare-fun e!616154 () Bool)

(assert (=> b!952112 (= e!616154 (not lt!344720))))

(declare-fun b!952113 () Bool)

(declare-fun res!432625 () Bool)

(assert (=> b!952113 (=> (not res!432625) (not e!616158))))

(assert (=> b!952113 (= res!432625 (not call!59756))))

(declare-fun b!952114 () Bool)

(declare-fun res!432621 () Bool)

(declare-fun e!616157 () Bool)

(assert (=> b!952114 (=> res!432621 e!616157)))

(assert (=> b!952114 (= res!432621 (not (is-ElementMatch!2622 r!15766)))))

(assert (=> b!952114 (= e!616154 e!616157)))

(declare-fun b!952115 () Bool)

(declare-fun e!616155 () Bool)

(assert (=> b!952115 (= e!616157 e!616155)))

(declare-fun res!432627 () Bool)

(assert (=> b!952115 (=> (not res!432627) (not e!616155))))

(assert (=> b!952115 (= res!432627 (not lt!344720))))

(declare-fun b!952116 () Bool)

(declare-fun res!432622 () Bool)

(assert (=> b!952116 (=> (not res!432622) (not e!616158))))

(assert (=> b!952116 (= res!432622 (isEmpty!6107 (tail!1301 s!10566)))))

(declare-fun b!952117 () Bool)

(assert (=> b!952117 (= e!616159 e!616154)))

(declare-fun c!155047 () Bool)

(assert (=> b!952117 (= c!155047 (is-EmptyLang!2622 r!15766))))

(declare-fun b!952118 () Bool)

(assert (=> b!952118 (= e!616159 (= lt!344720 call!59756))))

(declare-fun b!952119 () Bool)

(assert (=> b!952119 (= e!616155 e!616153)))

(declare-fun res!432620 () Bool)

(assert (=> b!952119 (=> res!432620 e!616153)))

(assert (=> b!952119 (= res!432620 call!59756)))

(declare-fun b!952120 () Bool)

(declare-fun res!432624 () Bool)

(assert (=> b!952120 (=> res!432624 e!616157)))

(assert (=> b!952120 (= res!432624 e!616158)))

(declare-fun res!432626 () Bool)

(assert (=> b!952120 (=> (not res!432626) (not e!616158))))

(assert (=> b!952120 (= res!432626 lt!344720)))

(assert (= (and d!284007 c!155046) b!952110))

(assert (= (and d!284007 (not c!155046)) b!952111))

(assert (= (and d!284007 c!155045) b!952118))

(assert (= (and d!284007 (not c!155045)) b!952117))

(assert (= (and b!952117 c!155047) b!952112))

(assert (= (and b!952117 (not c!155047)) b!952114))

(assert (= (and b!952114 (not res!432621)) b!952120))

(assert (= (and b!952120 res!432626) b!952113))

(assert (= (and b!952113 res!432625) b!952116))

(assert (= (and b!952116 res!432622) b!952107))

(assert (= (and b!952120 (not res!432624)) b!952115))

(assert (= (and b!952115 res!432627) b!952119))

(assert (= (and b!952119 (not res!432620)) b!952109))

(assert (= (and b!952109 (not res!432623)) b!952108))

(assert (= (or b!952118 b!952113 b!952119) bm!59751))

(assert (=> d!284007 m!1164375))

(assert (=> d!284007 m!1164377))

(declare-fun m!1164431 () Bool)

(assert (=> b!952116 m!1164431))

(assert (=> b!952116 m!1164431))

(declare-fun m!1164433 () Bool)

(assert (=> b!952116 m!1164433))

(declare-fun m!1164435 () Bool)

(assert (=> b!952111 m!1164435))

(assert (=> b!952111 m!1164435))

(declare-fun m!1164437 () Bool)

(assert (=> b!952111 m!1164437))

(assert (=> b!952111 m!1164431))

(assert (=> b!952111 m!1164437))

(assert (=> b!952111 m!1164431))

(declare-fun m!1164439 () Bool)

(assert (=> b!952111 m!1164439))

(assert (=> bm!59751 m!1164375))

(declare-fun m!1164441 () Bool)

(assert (=> b!952110 m!1164441))

(assert (=> b!952107 m!1164435))

(assert (=> b!952109 m!1164431))

(assert (=> b!952109 m!1164431))

(assert (=> b!952109 m!1164433))

(assert (=> b!952108 m!1164435))

(assert (=> b!951956 d!284007))

(declare-fun d!284009 () Bool)

(assert (=> d!284009 (= (matchR!1160 r!15766 s!10566) (matchRSpec!423 r!15766 s!10566))))

(declare-fun lt!344723 () Unit!14887)

(declare-fun choose!5939 (Regex!2622 List!9852) Unit!14887)

(assert (=> d!284009 (= lt!344723 (choose!5939 r!15766 s!10566))))

(assert (=> d!284009 (validRegex!1091 r!15766)))

(assert (=> d!284009 (= (mainMatchTheorem!423 r!15766 s!10566) lt!344723)))

(declare-fun bs!240181 () Bool)

(assert (= bs!240181 d!284009))

(assert (=> bs!240181 m!1164371))

(assert (=> bs!240181 m!1164369))

(declare-fun m!1164443 () Bool)

(assert (=> bs!240181 m!1164443))

(assert (=> bs!240181 m!1164377))

(assert (=> b!951956 d!284009))

(declare-fun d!284011 () Bool)

(declare-fun choose!5940 (Int) Bool)

(assert (=> d!284011 (= (Exists!373 lambda!32730) (choose!5940 lambda!32730))))

(declare-fun bs!240182 () Bool)

(assert (= bs!240182 d!284011))

(declare-fun m!1164445 () Bool)

(assert (=> bs!240182 m!1164445))

(assert (=> b!951949 d!284011))

(declare-fun d!284013 () Bool)

(declare-fun isEmpty!6109 (Option!2211) Bool)

(assert (=> d!284013 (= (isDefined!1853 lt!344699) (not (isEmpty!6109 lt!344699)))))

(declare-fun bs!240183 () Bool)

(assert (= bs!240183 d!284013))

(declare-fun m!1164447 () Bool)

(assert (=> bs!240183 m!1164447))

(assert (=> b!951949 d!284013))

(declare-fun b!952150 () Bool)

(declare-fun lt!344731 () Unit!14887)

(declare-fun lt!344732 () Unit!14887)

(assert (=> b!952150 (= lt!344731 lt!344732)))

(declare-fun ++!2632 (List!9852 List!9852) List!9852)

(assert (=> b!952150 (= (++!2632 (++!2632 Nil!9836 (Cons!9836 (h!15237 s!10566) Nil!9836)) (t!100898 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!241 (List!9852 C!5814 List!9852 List!9852) Unit!14887)

(assert (=> b!952150 (= lt!344732 (lemmaMoveElementToOtherListKeepsConcatEq!241 Nil!9836 (h!15237 s!10566) (t!100898 s!10566) s!10566))))

(declare-fun e!616179 () Option!2211)

(assert (=> b!952150 (= e!616179 (findConcatSeparation!317 (regOne!5756 r!15766) EmptyExpr!2622 (++!2632 Nil!9836 (Cons!9836 (h!15237 s!10566) Nil!9836)) (t!100898 s!10566) s!10566))))

(declare-fun b!952151 () Bool)

(declare-fun res!432643 () Bool)

(declare-fun e!616180 () Bool)

(assert (=> b!952151 (=> (not res!432643) (not e!616180))))

(declare-fun lt!344730 () Option!2211)

(assert (=> b!952151 (= res!432643 (matchR!1160 EmptyExpr!2622 (_2!6395 (get!3311 lt!344730))))))

(declare-fun b!952152 () Bool)

(assert (=> b!952152 (= e!616179 None!2210)))

(declare-fun d!284015 () Bool)

(declare-fun e!616178 () Bool)

(assert (=> d!284015 e!616178))

(declare-fun res!432644 () Bool)

(assert (=> d!284015 (=> res!432644 e!616178)))

(assert (=> d!284015 (= res!432644 e!616180)))

(declare-fun res!432645 () Bool)

(assert (=> d!284015 (=> (not res!432645) (not e!616180))))

(assert (=> d!284015 (= res!432645 (isDefined!1853 lt!344730))))

(declare-fun e!616181 () Option!2211)

(assert (=> d!284015 (= lt!344730 e!616181)))

(declare-fun c!155057 () Bool)

(declare-fun e!616177 () Bool)

(assert (=> d!284015 (= c!155057 e!616177)))

(declare-fun res!432641 () Bool)

(assert (=> d!284015 (=> (not res!432641) (not e!616177))))

(assert (=> d!284015 (= res!432641 (matchR!1160 (regOne!5756 r!15766) Nil!9836))))

(assert (=> d!284015 (validRegex!1091 (regOne!5756 r!15766))))

(assert (=> d!284015 (= (findConcatSeparation!317 (regOne!5756 r!15766) EmptyExpr!2622 Nil!9836 s!10566 s!10566) lt!344730)))

(declare-fun b!952153 () Bool)

(assert (=> b!952153 (= e!616181 e!616179)))

(declare-fun c!155056 () Bool)

(assert (=> b!952153 (= c!155056 (is-Nil!9836 s!10566))))

(declare-fun b!952154 () Bool)

(assert (=> b!952154 (= e!616181 (Some!2210 (tuple2!11139 Nil!9836 s!10566)))))

(declare-fun b!952155 () Bool)

(assert (=> b!952155 (= e!616177 (matchR!1160 EmptyExpr!2622 s!10566))))

(declare-fun b!952156 () Bool)

(assert (=> b!952156 (= e!616178 (not (isDefined!1853 lt!344730)))))

(declare-fun b!952157 () Bool)

(assert (=> b!952157 (= e!616180 (= (++!2632 (_1!6395 (get!3311 lt!344730)) (_2!6395 (get!3311 lt!344730))) s!10566))))

(declare-fun b!952158 () Bool)

(declare-fun res!432642 () Bool)

(assert (=> b!952158 (=> (not res!432642) (not e!616180))))

(assert (=> b!952158 (= res!432642 (matchR!1160 (regOne!5756 r!15766) (_1!6395 (get!3311 lt!344730))))))

(assert (= (and d!284015 res!432641) b!952155))

(assert (= (and d!284015 c!155057) b!952154))

(assert (= (and d!284015 (not c!155057)) b!952153))

(assert (= (and b!952153 c!155056) b!952152))

(assert (= (and b!952153 (not c!155056)) b!952150))

(assert (= (and d!284015 res!432645) b!952158))

(assert (= (and b!952158 res!432642) b!952151))

(assert (= (and b!952151 res!432643) b!952157))

(assert (= (and d!284015 (not res!432644)) b!952156))

(declare-fun m!1164455 () Bool)

(assert (=> b!952156 m!1164455))

(declare-fun m!1164457 () Bool)

(assert (=> b!952157 m!1164457))

(declare-fun m!1164459 () Bool)

(assert (=> b!952157 m!1164459))

(declare-fun m!1164461 () Bool)

(assert (=> b!952155 m!1164461))

(assert (=> d!284015 m!1164455))

(declare-fun m!1164463 () Bool)

(assert (=> d!284015 m!1164463))

(declare-fun m!1164465 () Bool)

(assert (=> d!284015 m!1164465))

(assert (=> b!952151 m!1164457))

(declare-fun m!1164467 () Bool)

(assert (=> b!952151 m!1164467))

(assert (=> b!952158 m!1164457))

(declare-fun m!1164469 () Bool)

(assert (=> b!952158 m!1164469))

(declare-fun m!1164471 () Bool)

(assert (=> b!952150 m!1164471))

(assert (=> b!952150 m!1164471))

(declare-fun m!1164473 () Bool)

(assert (=> b!952150 m!1164473))

(declare-fun m!1164475 () Bool)

(assert (=> b!952150 m!1164475))

(assert (=> b!952150 m!1164471))

(declare-fun m!1164477 () Bool)

(assert (=> b!952150 m!1164477))

(assert (=> b!951949 d!284015))

(declare-fun d!284019 () Bool)

(assert (=> d!284019 (= (isEmpty!6107 (_2!6395 lt!344698)) (is-Nil!9836 (_2!6395 lt!344698)))))

(assert (=> b!951949 d!284019))

(declare-fun bs!240187 () Bool)

(declare-fun d!284021 () Bool)

(assert (= bs!240187 (and d!284021 b!951949)))

(declare-fun lambda!32753 () Int)

(assert (=> bs!240187 (= lambda!32753 lambda!32729)))

(assert (=> bs!240187 (not (= lambda!32753 lambda!32730))))

(declare-fun bs!240188 () Bool)

(assert (= bs!240188 (and d!284021 b!952064)))

(assert (=> bs!240188 (not (= lambda!32753 lambda!32744))))

(declare-fun bs!240189 () Bool)

(assert (= bs!240189 (and d!284021 b!952060)))

(assert (=> bs!240189 (not (= lambda!32753 lambda!32746))))

(assert (=> d!284021 true))

(assert (=> d!284021 true))

(assert (=> d!284021 true))

(assert (=> d!284021 (= (isDefined!1853 (findConcatSeparation!317 (regOne!5756 r!15766) EmptyExpr!2622 Nil!9836 s!10566 s!10566)) (Exists!373 lambda!32753))))

(declare-fun lt!344737 () Unit!14887)

(declare-fun choose!5941 (Regex!2622 Regex!2622 List!9852) Unit!14887)

(assert (=> d!284021 (= lt!344737 (choose!5941 (regOne!5756 r!15766) EmptyExpr!2622 s!10566))))

(assert (=> d!284021 (validRegex!1091 (regOne!5756 r!15766))))

(assert (=> d!284021 (= (lemmaFindConcatSeparationEquivalentToExists!317 (regOne!5756 r!15766) EmptyExpr!2622 s!10566) lt!344737)))

(declare-fun bs!240190 () Bool)

(assert (= bs!240190 d!284021))

(declare-fun m!1164479 () Bool)

(assert (=> bs!240190 m!1164479))

(assert (=> bs!240190 m!1164389))

(assert (=> bs!240190 m!1164465))

(declare-fun m!1164481 () Bool)

(assert (=> bs!240190 m!1164481))

(assert (=> bs!240190 m!1164389))

(declare-fun m!1164483 () Bool)

(assert (=> bs!240190 m!1164483))

(assert (=> b!951949 d!284021))

(declare-fun bs!240191 () Bool)

(declare-fun d!284023 () Bool)

(assert (= bs!240191 (and d!284023 b!952060)))

(declare-fun lambda!32758 () Int)

(assert (=> bs!240191 (not (= lambda!32758 lambda!32746))))

(declare-fun bs!240192 () Bool)

(assert (= bs!240192 (and d!284023 b!951949)))

(assert (=> bs!240192 (= lambda!32758 lambda!32729)))

(declare-fun bs!240193 () Bool)

(assert (= bs!240193 (and d!284023 d!284021)))

(assert (=> bs!240193 (= lambda!32758 lambda!32753)))

(assert (=> bs!240192 (not (= lambda!32758 lambda!32730))))

(declare-fun bs!240194 () Bool)

(assert (= bs!240194 (and d!284023 b!952064)))

(assert (=> bs!240194 (not (= lambda!32758 lambda!32744))))

(assert (=> d!284023 true))

(assert (=> d!284023 true))

(assert (=> d!284023 true))

(declare-fun lambda!32759 () Int)

(assert (=> bs!240191 (= (= EmptyExpr!2622 (regTwo!5756 r!15766)) (= lambda!32759 lambda!32746))))

(assert (=> bs!240192 (not (= lambda!32759 lambda!32729))))

(declare-fun bs!240195 () Bool)

(assert (= bs!240195 d!284023))

(assert (=> bs!240195 (not (= lambda!32759 lambda!32758))))

(assert (=> bs!240193 (not (= lambda!32759 lambda!32753))))

(assert (=> bs!240192 (= lambda!32759 lambda!32730)))

(assert (=> bs!240194 (not (= lambda!32759 lambda!32744))))

(assert (=> d!284023 true))

(assert (=> d!284023 true))

(assert (=> d!284023 true))

(assert (=> d!284023 (= (Exists!373 lambda!32758) (Exists!373 lambda!32759))))

(declare-fun lt!344741 () Unit!14887)

(declare-fun choose!5942 (Regex!2622 Regex!2622 List!9852) Unit!14887)

(assert (=> d!284023 (= lt!344741 (choose!5942 (regOne!5756 r!15766) EmptyExpr!2622 s!10566))))

(assert (=> d!284023 (validRegex!1091 (regOne!5756 r!15766))))

(assert (=> d!284023 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!193 (regOne!5756 r!15766) EmptyExpr!2622 s!10566) lt!344741)))

(declare-fun m!1164497 () Bool)

(assert (=> bs!240195 m!1164497))

(declare-fun m!1164499 () Bool)

(assert (=> bs!240195 m!1164499))

(declare-fun m!1164501 () Bool)

(assert (=> bs!240195 m!1164501))

(assert (=> bs!240195 m!1164465))

(assert (=> b!951949 d!284023))

(declare-fun d!284027 () Bool)

(assert (=> d!284027 (= (Exists!373 lambda!32729) (choose!5940 lambda!32729))))

(declare-fun bs!240196 () Bool)

(assert (= bs!240196 d!284027))

(declare-fun m!1164503 () Bool)

(assert (=> bs!240196 m!1164503))

(assert (=> b!951949 d!284027))

(declare-fun d!284029 () Bool)

(assert (=> d!284029 (= (get!3311 lt!344699) (v!19627 lt!344699))))

(assert (=> b!951949 d!284029))

(declare-fun b!952231 () Bool)

(declare-fun e!616229 () Bool)

(declare-fun e!616227 () Bool)

(assert (=> b!952231 (= e!616229 e!616227)))

(declare-fun res!432694 () Bool)

(assert (=> b!952231 (=> (not res!432694) (not e!616227))))

(declare-fun call!59770 () Bool)

(assert (=> b!952231 (= res!432694 call!59770)))

(declare-fun b!952232 () Bool)

(declare-fun e!616225 () Bool)

(declare-fun e!616226 () Bool)

(assert (=> b!952232 (= e!616225 e!616226)))

(declare-fun c!155072 () Bool)

(assert (=> b!952232 (= c!155072 (is-Star!2622 r!15766))))

(declare-fun d!284031 () Bool)

(declare-fun res!432692 () Bool)

(assert (=> d!284031 (=> res!432692 e!616225)))

(assert (=> d!284031 (= res!432692 (is-ElementMatch!2622 r!15766))))

(assert (=> d!284031 (= (validRegex!1091 r!15766) e!616225)))

(declare-fun b!952233 () Bool)

(declare-fun e!616223 () Bool)

(assert (=> b!952233 (= e!616226 e!616223)))

(declare-fun res!432695 () Bool)

(assert (=> b!952233 (= res!432695 (not (nullable!777 (reg!2951 r!15766))))))

(assert (=> b!952233 (=> (not res!432695) (not e!616223))))

(declare-fun b!952234 () Bool)

(declare-fun e!616228 () Bool)

(declare-fun call!59768 () Bool)

(assert (=> b!952234 (= e!616228 call!59768)))

(declare-fun bm!59763 () Bool)

(declare-fun c!155071 () Bool)

(assert (=> bm!59763 (= call!59770 (validRegex!1091 (ite c!155071 (regOne!5757 r!15766) (regOne!5756 r!15766))))))

(declare-fun b!952235 () Bool)

(declare-fun call!59769 () Bool)

(assert (=> b!952235 (= e!616223 call!59769)))

(declare-fun b!952236 () Bool)

(assert (=> b!952236 (= e!616227 call!59768)))

(declare-fun b!952237 () Bool)

(declare-fun res!432693 () Bool)

(assert (=> b!952237 (=> (not res!432693) (not e!616228))))

(assert (=> b!952237 (= res!432693 call!59770)))

(declare-fun e!616224 () Bool)

(assert (=> b!952237 (= e!616224 e!616228)))

(declare-fun b!952238 () Bool)

(assert (=> b!952238 (= e!616226 e!616224)))

(assert (=> b!952238 (= c!155071 (is-Union!2622 r!15766))))

(declare-fun bm!59764 () Bool)

(assert (=> bm!59764 (= call!59769 (validRegex!1091 (ite c!155072 (reg!2951 r!15766) (ite c!155071 (regTwo!5757 r!15766) (regTwo!5756 r!15766)))))))

(declare-fun b!952239 () Bool)

(declare-fun res!432696 () Bool)

(assert (=> b!952239 (=> res!432696 e!616229)))

(assert (=> b!952239 (= res!432696 (not (is-Concat!4455 r!15766)))))

(assert (=> b!952239 (= e!616224 e!616229)))

(declare-fun bm!59765 () Bool)

(assert (=> bm!59765 (= call!59768 call!59769)))

(assert (= (and d!284031 (not res!432692)) b!952232))

(assert (= (and b!952232 c!155072) b!952233))

(assert (= (and b!952232 (not c!155072)) b!952238))

(assert (= (and b!952233 res!432695) b!952235))

(assert (= (and b!952238 c!155071) b!952237))

(assert (= (and b!952238 (not c!155071)) b!952239))

(assert (= (and b!952237 res!432693) b!952234))

(assert (= (and b!952239 (not res!432696)) b!952231))

(assert (= (and b!952231 res!432694) b!952236))

(assert (= (or b!952234 b!952236) bm!59765))

(assert (= (or b!952237 b!952231) bm!59763))

(assert (= (or b!952235 bm!59765) bm!59764))

(declare-fun m!1164507 () Bool)

(assert (=> b!952233 m!1164507))

(declare-fun m!1164509 () Bool)

(assert (=> bm!59763 m!1164509))

(declare-fun m!1164511 () Bool)

(assert (=> bm!59764 m!1164511))

(assert (=> start!84812 d!284031))

(declare-fun d!284035 () Bool)

(assert (=> d!284035 (= (isEmpty!6107 s!10566) (is-Nil!9836 s!10566))))

(assert (=> b!951953 d!284035))

(declare-fun b!952256 () Bool)

(declare-fun e!616247 () Bool)

(assert (=> b!952256 (= e!616247 (= (head!1739 (_1!6395 lt!344698)) (c!155017 (regOne!5756 r!15766))))))

(declare-fun b!952257 () Bool)

(declare-fun e!616240 () Bool)

(assert (=> b!952257 (= e!616240 (not (= (head!1739 (_1!6395 lt!344698)) (c!155017 (regOne!5756 r!15766)))))))

(declare-fun d!284037 () Bool)

(declare-fun e!616248 () Bool)

(assert (=> d!284037 e!616248))

(declare-fun c!155077 () Bool)

(assert (=> d!284037 (= c!155077 (is-EmptyExpr!2622 (regOne!5756 r!15766)))))

(declare-fun lt!344745 () Bool)

(declare-fun e!616245 () Bool)

(assert (=> d!284037 (= lt!344745 e!616245)))

(declare-fun c!155078 () Bool)

(assert (=> d!284037 (= c!155078 (isEmpty!6107 (_1!6395 lt!344698)))))

(assert (=> d!284037 (validRegex!1091 (regOne!5756 r!15766))))

(assert (=> d!284037 (= (matchR!1160 (regOne!5756 r!15766) (_1!6395 lt!344698)) lt!344745)))

(declare-fun bm!59766 () Bool)

(declare-fun call!59771 () Bool)

(assert (=> bm!59766 (= call!59771 (isEmpty!6107 (_1!6395 lt!344698)))))

(declare-fun b!952258 () Bool)

(declare-fun res!432708 () Bool)

(assert (=> b!952258 (=> res!432708 e!616240)))

(assert (=> b!952258 (= res!432708 (not (isEmpty!6107 (tail!1301 (_1!6395 lt!344698)))))))

(declare-fun b!952259 () Bool)

(assert (=> b!952259 (= e!616245 (nullable!777 (regOne!5756 r!15766)))))

(declare-fun b!952260 () Bool)

(assert (=> b!952260 (= e!616245 (matchR!1160 (derivativeStep!586 (regOne!5756 r!15766) (head!1739 (_1!6395 lt!344698))) (tail!1301 (_1!6395 lt!344698))))))

(declare-fun b!952261 () Bool)

(declare-fun e!616243 () Bool)

(assert (=> b!952261 (= e!616243 (not lt!344745))))

(declare-fun b!952262 () Bool)

(declare-fun res!432710 () Bool)

(assert (=> b!952262 (=> (not res!432710) (not e!616247))))

(assert (=> b!952262 (= res!432710 (not call!59771))))

(declare-fun b!952263 () Bool)

(declare-fun res!432704 () Bool)

(declare-fun e!616246 () Bool)

(assert (=> b!952263 (=> res!432704 e!616246)))

(assert (=> b!952263 (= res!432704 (not (is-ElementMatch!2622 (regOne!5756 r!15766))))))

(assert (=> b!952263 (= e!616243 e!616246)))

(declare-fun b!952264 () Bool)

(declare-fun e!616244 () Bool)

(assert (=> b!952264 (= e!616246 e!616244)))

(declare-fun res!432712 () Bool)

(assert (=> b!952264 (=> (not res!432712) (not e!616244))))

(assert (=> b!952264 (= res!432712 (not lt!344745))))

(declare-fun b!952265 () Bool)

(declare-fun res!432705 () Bool)

(assert (=> b!952265 (=> (not res!432705) (not e!616247))))

(assert (=> b!952265 (= res!432705 (isEmpty!6107 (tail!1301 (_1!6395 lt!344698))))))

(declare-fun b!952266 () Bool)

(assert (=> b!952266 (= e!616248 e!616243)))

(declare-fun c!155079 () Bool)

(assert (=> b!952266 (= c!155079 (is-EmptyLang!2622 (regOne!5756 r!15766)))))

(declare-fun b!952267 () Bool)

(assert (=> b!952267 (= e!616248 (= lt!344745 call!59771))))

(declare-fun b!952268 () Bool)

(assert (=> b!952268 (= e!616244 e!616240)))

(declare-fun res!432703 () Bool)

(assert (=> b!952268 (=> res!432703 e!616240)))

(assert (=> b!952268 (= res!432703 call!59771)))

(declare-fun b!952269 () Bool)

(declare-fun res!432709 () Bool)

(assert (=> b!952269 (=> res!432709 e!616246)))

(assert (=> b!952269 (= res!432709 e!616247)))

(declare-fun res!432711 () Bool)

(assert (=> b!952269 (=> (not res!432711) (not e!616247))))

(assert (=> b!952269 (= res!432711 lt!344745)))

(assert (= (and d!284037 c!155078) b!952259))

(assert (= (and d!284037 (not c!155078)) b!952260))

(assert (= (and d!284037 c!155077) b!952267))

(assert (= (and d!284037 (not c!155077)) b!952266))

(assert (= (and b!952266 c!155079) b!952261))

(assert (= (and b!952266 (not c!155079)) b!952263))

(assert (= (and b!952263 (not res!432704)) b!952269))

(assert (= (and b!952269 res!432711) b!952262))

(assert (= (and b!952262 res!432710) b!952265))

(assert (= (and b!952265 res!432705) b!952256))

(assert (= (and b!952269 (not res!432709)) b!952264))

(assert (= (and b!952264 res!432712) b!952268))

(assert (= (and b!952268 (not res!432703)) b!952258))

(assert (= (and b!952258 (not res!432708)) b!952257))

(assert (= (or b!952267 b!952262 b!952268) bm!59766))

(declare-fun m!1164513 () Bool)

(assert (=> d!284037 m!1164513))

(assert (=> d!284037 m!1164465))

(declare-fun m!1164515 () Bool)

(assert (=> b!952265 m!1164515))

(assert (=> b!952265 m!1164515))

(declare-fun m!1164517 () Bool)

(assert (=> b!952265 m!1164517))

(declare-fun m!1164519 () Bool)

(assert (=> b!952260 m!1164519))

(assert (=> b!952260 m!1164519))

(declare-fun m!1164521 () Bool)

(assert (=> b!952260 m!1164521))

(assert (=> b!952260 m!1164515))

(assert (=> b!952260 m!1164521))

(assert (=> b!952260 m!1164515))

(declare-fun m!1164523 () Bool)

(assert (=> b!952260 m!1164523))

(assert (=> bm!59766 m!1164513))

(declare-fun m!1164525 () Bool)

(assert (=> b!952259 m!1164525))

(assert (=> b!952256 m!1164519))

(assert (=> b!952258 m!1164515))

(assert (=> b!952258 m!1164515))

(assert (=> b!952258 m!1164517))

(assert (=> b!952257 m!1164519))

(assert (=> b!951952 d!284037))

(declare-fun b!952283 () Bool)

(declare-fun e!616253 () Bool)

(declare-fun tp!293467 () Bool)

(declare-fun tp!293465 () Bool)

(assert (=> b!952283 (= e!616253 (and tp!293467 tp!293465))))

(declare-fun b!952282 () Bool)

(assert (=> b!952282 (= e!616253 tp_is_empty!4887)))

(declare-fun b!952285 () Bool)

(declare-fun tp!293464 () Bool)

(declare-fun tp!293463 () Bool)

(assert (=> b!952285 (= e!616253 (and tp!293464 tp!293463))))

(assert (=> b!951951 (= tp!293432 e!616253)))

(declare-fun b!952284 () Bool)

(declare-fun tp!293466 () Bool)

(assert (=> b!952284 (= e!616253 tp!293466)))

(assert (= (and b!951951 (is-ElementMatch!2622 (regOne!5756 r!15766))) b!952282))

(assert (= (and b!951951 (is-Concat!4455 (regOne!5756 r!15766))) b!952283))

(assert (= (and b!951951 (is-Star!2622 (regOne!5756 r!15766))) b!952284))

(assert (= (and b!951951 (is-Union!2622 (regOne!5756 r!15766))) b!952285))

(declare-fun b!952287 () Bool)

(declare-fun e!616254 () Bool)

(declare-fun tp!293472 () Bool)

(declare-fun tp!293470 () Bool)

(assert (=> b!952287 (= e!616254 (and tp!293472 tp!293470))))

(declare-fun b!952286 () Bool)

(assert (=> b!952286 (= e!616254 tp_is_empty!4887)))

(declare-fun b!952289 () Bool)

(declare-fun tp!293469 () Bool)

(declare-fun tp!293468 () Bool)

(assert (=> b!952289 (= e!616254 (and tp!293469 tp!293468))))

(assert (=> b!951951 (= tp!293429 e!616254)))

(declare-fun b!952288 () Bool)

(declare-fun tp!293471 () Bool)

(assert (=> b!952288 (= e!616254 tp!293471)))

(assert (= (and b!951951 (is-ElementMatch!2622 (regTwo!5756 r!15766))) b!952286))

(assert (= (and b!951951 (is-Concat!4455 (regTwo!5756 r!15766))) b!952287))

(assert (= (and b!951951 (is-Star!2622 (regTwo!5756 r!15766))) b!952288))

(assert (= (and b!951951 (is-Union!2622 (regTwo!5756 r!15766))) b!952289))

(declare-fun b!952291 () Bool)

(declare-fun e!616255 () Bool)

(declare-fun tp!293477 () Bool)

(declare-fun tp!293475 () Bool)

(assert (=> b!952291 (= e!616255 (and tp!293477 tp!293475))))

(declare-fun b!952290 () Bool)

(assert (=> b!952290 (= e!616255 tp_is_empty!4887)))

(declare-fun b!952293 () Bool)

(declare-fun tp!293474 () Bool)

(declare-fun tp!293473 () Bool)

(assert (=> b!952293 (= e!616255 (and tp!293474 tp!293473))))

(assert (=> b!951950 (= tp!293434 e!616255)))

(declare-fun b!952292 () Bool)

(declare-fun tp!293476 () Bool)

(assert (=> b!952292 (= e!616255 tp!293476)))

(assert (= (and b!951950 (is-ElementMatch!2622 (regOne!5757 r!15766))) b!952290))

(assert (= (and b!951950 (is-Concat!4455 (regOne!5757 r!15766))) b!952291))

(assert (= (and b!951950 (is-Star!2622 (regOne!5757 r!15766))) b!952292))

(assert (= (and b!951950 (is-Union!2622 (regOne!5757 r!15766))) b!952293))

(declare-fun b!952295 () Bool)

(declare-fun e!616256 () Bool)

(declare-fun tp!293482 () Bool)

(declare-fun tp!293480 () Bool)

(assert (=> b!952295 (= e!616256 (and tp!293482 tp!293480))))

(declare-fun b!952294 () Bool)

(assert (=> b!952294 (= e!616256 tp_is_empty!4887)))

(declare-fun b!952297 () Bool)

(declare-fun tp!293479 () Bool)

(declare-fun tp!293478 () Bool)

(assert (=> b!952297 (= e!616256 (and tp!293479 tp!293478))))

(assert (=> b!951950 (= tp!293430 e!616256)))

(declare-fun b!952296 () Bool)

(declare-fun tp!293481 () Bool)

(assert (=> b!952296 (= e!616256 tp!293481)))

(assert (= (and b!951950 (is-ElementMatch!2622 (regTwo!5757 r!15766))) b!952294))

(assert (= (and b!951950 (is-Concat!4455 (regTwo!5757 r!15766))) b!952295))

(assert (= (and b!951950 (is-Star!2622 (regTwo!5757 r!15766))) b!952296))

(assert (= (and b!951950 (is-Union!2622 (regTwo!5757 r!15766))) b!952297))

(declare-fun b!952299 () Bool)

(declare-fun e!616257 () Bool)

(declare-fun tp!293487 () Bool)

(declare-fun tp!293485 () Bool)

(assert (=> b!952299 (= e!616257 (and tp!293487 tp!293485))))

(declare-fun b!952298 () Bool)

(assert (=> b!952298 (= e!616257 tp_is_empty!4887)))

(declare-fun b!952301 () Bool)

(declare-fun tp!293484 () Bool)

(declare-fun tp!293483 () Bool)

(assert (=> b!952301 (= e!616257 (and tp!293484 tp!293483))))

(assert (=> b!951954 (= tp!293431 e!616257)))

(declare-fun b!952300 () Bool)

(declare-fun tp!293486 () Bool)

(assert (=> b!952300 (= e!616257 tp!293486)))

(assert (= (and b!951954 (is-ElementMatch!2622 (reg!2951 r!15766))) b!952298))

(assert (= (and b!951954 (is-Concat!4455 (reg!2951 r!15766))) b!952299))

(assert (= (and b!951954 (is-Star!2622 (reg!2951 r!15766))) b!952300))

(assert (= (and b!951954 (is-Union!2622 (reg!2951 r!15766))) b!952301))

(declare-fun b!952306 () Bool)

(declare-fun e!616260 () Bool)

(declare-fun tp!293490 () Bool)

(assert (=> b!952306 (= e!616260 (and tp_is_empty!4887 tp!293490))))

(assert (=> b!951948 (= tp!293433 e!616260)))

(assert (= (and b!951948 (is-Cons!9836 (t!100898 s!10566))) b!952306))

(push 1)

(assert (not bm!59763))

(assert (not d!284027))

(assert (not b!952150))

(assert (not d!284007))

(assert (not b!952285))

(assert (not b!952259))

(assert (not d!284013))

(assert (not d!284011))

(assert (not bm!59751))

(assert (not b!952158))

(assert (not b!952289))

(assert (not b!952155))

(assert (not b!952301))

(assert (not b!952297))

(assert (not b!952300))

(assert (not bm!59744))

(assert (not b!952288))

(assert (not b!952284))

(assert (not b!952156))

(assert (not d!284015))

(assert (not b!952296))

(assert (not d!284037))

(assert (not b!952257))

(assert (not b!952059))

(assert (not d!284009))

(assert (not b!952116))

(assert (not b!952287))

(assert (not b!952306))

(assert (not b!952062))

(assert (not b!952260))

(assert (not d!284021))

(assert (not b!952256))

(assert (not b!952151))

(assert (not b!952295))

(assert (not b!952265))

(assert (not b!952293))

(assert (not b!952291))

(assert (not bm!59766))

(assert (not b!952299))

(assert (not b!952157))

(assert (not b!952258))

(assert (not b!952108))

(assert (not d!284023))

(assert (not b!952110))

(assert (not b!952233))

(assert (not b!952111))

(assert (not b!952283))

(assert (not b!952107))

(assert (not bm!59743))

(assert (not bm!59764))

(assert tp_is_empty!4887)

(assert (not b!952292))

(assert (not b!952109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

