; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!231916 () Bool)

(assert start!231916)

(declare-fun b!2362824 () Bool)

(assert (=> b!2362824 true))

(assert (=> b!2362824 true))

(declare-fun lambda!86978 () Int)

(declare-fun lambda!86977 () Int)

(assert (=> b!2362824 (not (= lambda!86978 lambda!86977))))

(assert (=> b!2362824 true))

(assert (=> b!2362824 true))

(declare-fun b!2362818 () Bool)

(declare-fun res!1002784 () Bool)

(declare-fun e!1509011 () Bool)

(assert (=> b!2362818 (=> (not res!1002784) (not e!1509011))))

(declare-datatypes ((C!13994 0))(
  ( (C!13995 (val!8239 Int)) )
))
(declare-datatypes ((Regex!6918 0))(
  ( (ElementMatch!6918 (c!375530 C!13994)) (Concat!11554 (regOne!14348 Regex!6918) (regTwo!14348 Regex!6918)) (EmptyExpr!6918) (Star!6918 (reg!7247 Regex!6918)) (EmptyLang!6918) (Union!6918 (regOne!14349 Regex!6918) (regTwo!14349 Regex!6918)) )
))
(declare-fun r!13927 () Regex!6918)

(declare-datatypes ((List!28074 0))(
  ( (Nil!27976) (Cons!27976 (h!33377 Regex!6918) (t!208051 List!28074)) )
))
(declare-fun l!9164 () List!28074)

(declare-fun generalisedConcat!19 (List!28074) Regex!6918)

(assert (=> b!2362818 (= res!1002784 (= r!13927 (generalisedConcat!19 l!9164)))))

(declare-fun b!2362819 () Bool)

(declare-fun e!1509014 () Bool)

(declare-fun tp!755671 () Bool)

(declare-fun tp!755674 () Bool)

(assert (=> b!2362819 (= e!1509014 (and tp!755671 tp!755674))))

(declare-fun b!2362820 () Bool)

(declare-fun e!1509012 () Bool)

(assert (=> b!2362820 (= e!1509011 (not e!1509012))))

(declare-fun res!1002783 () Bool)

(assert (=> b!2362820 (=> res!1002783 e!1509012)))

(assert (=> b!2362820 (= res!1002783 (not (is-Concat!11554 r!13927)))))

(declare-datatypes ((List!28075 0))(
  ( (Nil!27977) (Cons!27977 (h!33378 C!13994) (t!208052 List!28075)) )
))
(declare-fun s!9460 () List!28075)

(declare-fun matchR!3035 (Regex!6918 List!28075) Bool)

(declare-fun matchRSpec!767 (Regex!6918 List!28075) Bool)

(assert (=> b!2362820 (= (matchR!3035 r!13927 s!9460) (matchRSpec!767 r!13927 s!9460))))

(declare-datatypes ((Unit!40871 0))(
  ( (Unit!40872) )
))
(declare-fun lt!864759 () Unit!40871)

(declare-fun mainMatchTheorem!767 (Regex!6918 List!28075) Unit!40871)

(assert (=> b!2362820 (= lt!864759 (mainMatchTheorem!767 r!13927 s!9460))))

(declare-fun b!2362821 () Bool)

(declare-fun tp!755669 () Bool)

(assert (=> b!2362821 (= e!1509014 tp!755669)))

(declare-fun b!2362822 () Bool)

(declare-fun tp_is_empty!11249 () Bool)

(assert (=> b!2362822 (= e!1509014 tp_is_empty!11249)))

(declare-fun b!2362823 () Bool)

(declare-fun tp!755673 () Bool)

(declare-fun tp!755670 () Bool)

(assert (=> b!2362823 (= e!1509014 (and tp!755673 tp!755670))))

(declare-fun validRegex!2648 (Regex!6918) Bool)

(assert (=> b!2362824 (= e!1509012 (validRegex!2648 (regOne!14348 r!13927)))))

(declare-fun Exists!980 (Int) Bool)

(assert (=> b!2362824 (= (Exists!980 lambda!86977) (Exists!980 lambda!86978))))

(declare-fun lt!864761 () Unit!40871)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!319 (Regex!6918 Regex!6918 List!28075) Unit!40871)

(assert (=> b!2362824 (= lt!864761 (lemmaExistCutMatchRandMatchRSpecEquivalent!319 (regOne!14348 r!13927) (regTwo!14348 r!13927) s!9460))))

(declare-datatypes ((tuple2!27700 0))(
  ( (tuple2!27701 (_1!16391 List!28075) (_2!16391 List!28075)) )
))
(declare-datatypes ((Option!5461 0))(
  ( (None!5460) (Some!5460 (v!30868 tuple2!27700)) )
))
(declare-fun isDefined!4289 (Option!5461) Bool)

(declare-fun findConcatSeparation!569 (Regex!6918 Regex!6918 List!28075 List!28075 List!28075) Option!5461)

(assert (=> b!2362824 (= (isDefined!4289 (findConcatSeparation!569 (regOne!14348 r!13927) (regTwo!14348 r!13927) Nil!27977 s!9460 s!9460)) (Exists!980 lambda!86977))))

(declare-fun lt!864760 () Unit!40871)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!569 (Regex!6918 Regex!6918 List!28075) Unit!40871)

(assert (=> b!2362824 (= lt!864760 (lemmaFindConcatSeparationEquivalentToExists!569 (regOne!14348 r!13927) (regTwo!14348 r!13927) s!9460))))

(declare-fun b!2362825 () Bool)

(declare-fun e!1509013 () Bool)

(declare-fun tp!755675 () Bool)

(assert (=> b!2362825 (= e!1509013 (and tp_is_empty!11249 tp!755675))))

(declare-fun b!2362817 () Bool)

(declare-fun e!1509015 () Bool)

(declare-fun tp!755672 () Bool)

(declare-fun tp!755668 () Bool)

(assert (=> b!2362817 (= e!1509015 (and tp!755672 tp!755668))))

(declare-fun res!1002785 () Bool)

(assert (=> start!231916 (=> (not res!1002785) (not e!1509011))))

(declare-fun lambda!86976 () Int)

(declare-fun forall!5552 (List!28074 Int) Bool)

(assert (=> start!231916 (= res!1002785 (forall!5552 l!9164 lambda!86976))))

(assert (=> start!231916 e!1509011))

(assert (=> start!231916 e!1509015))

(assert (=> start!231916 e!1509014))

(assert (=> start!231916 e!1509013))

(assert (= (and start!231916 res!1002785) b!2362818))

(assert (= (and b!2362818 res!1002784) b!2362820))

(assert (= (and b!2362820 (not res!1002783)) b!2362824))

(assert (= (and start!231916 (is-Cons!27976 l!9164)) b!2362817))

(assert (= (and start!231916 (is-ElementMatch!6918 r!13927)) b!2362822))

(assert (= (and start!231916 (is-Concat!11554 r!13927)) b!2362823))

(assert (= (and start!231916 (is-Star!6918 r!13927)) b!2362821))

(assert (= (and start!231916 (is-Union!6918 r!13927)) b!2362819))

(assert (= (and start!231916 (is-Cons!27977 s!9460)) b!2362825))

(declare-fun m!2774547 () Bool)

(assert (=> b!2362818 m!2774547))

(declare-fun m!2774549 () Bool)

(assert (=> b!2362820 m!2774549))

(declare-fun m!2774551 () Bool)

(assert (=> b!2362820 m!2774551))

(declare-fun m!2774553 () Bool)

(assert (=> b!2362820 m!2774553))

(declare-fun m!2774555 () Bool)

(assert (=> b!2362824 m!2774555))

(declare-fun m!2774557 () Bool)

(assert (=> b!2362824 m!2774557))

(declare-fun m!2774559 () Bool)

(assert (=> b!2362824 m!2774559))

(assert (=> b!2362824 m!2774555))

(declare-fun m!2774561 () Bool)

(assert (=> b!2362824 m!2774561))

(declare-fun m!2774563 () Bool)

(assert (=> b!2362824 m!2774563))

(declare-fun m!2774565 () Bool)

(assert (=> b!2362824 m!2774565))

(declare-fun m!2774567 () Bool)

(assert (=> b!2362824 m!2774567))

(assert (=> b!2362824 m!2774563))

(declare-fun m!2774569 () Bool)

(assert (=> start!231916 m!2774569))

(push 1)

(assert (not b!2362820))

(assert (not b!2362821))

(assert (not b!2362824))

(assert (not b!2362817))

(assert (not b!2362823))

(assert (not start!231916))

(assert (not b!2362818))

(assert (not b!2362819))

(assert (not b!2362825))

(assert tp_is_empty!11249)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!694274 () Bool)

(declare-fun res!1002811 () Bool)

(declare-fun e!1509041 () Bool)

(assert (=> d!694274 (=> res!1002811 e!1509041)))

(assert (=> d!694274 (= res!1002811 (is-Nil!27976 l!9164))))

(assert (=> d!694274 (= (forall!5552 l!9164 lambda!86976) e!1509041)))

(declare-fun b!2362877 () Bool)

(declare-fun e!1509042 () Bool)

(assert (=> b!2362877 (= e!1509041 e!1509042)))

(declare-fun res!1002812 () Bool)

(assert (=> b!2362877 (=> (not res!1002812) (not e!1509042))))

(declare-fun dynLambda!12054 (Int Regex!6918) Bool)

(assert (=> b!2362877 (= res!1002812 (dynLambda!12054 lambda!86976 (h!33377 l!9164)))))

(declare-fun b!2362878 () Bool)

(assert (=> b!2362878 (= e!1509042 (forall!5552 (t!208051 l!9164) lambda!86976))))

(assert (= (and d!694274 (not res!1002811)) b!2362877))

(assert (= (and b!2362877 res!1002812) b!2362878))

(declare-fun b_lambda!73811 () Bool)

(assert (=> (not b_lambda!73811) (not b!2362877)))

(declare-fun m!2774595 () Bool)

(assert (=> b!2362877 m!2774595))

(declare-fun m!2774597 () Bool)

(assert (=> b!2362878 m!2774597))

(assert (=> start!231916 d!694274))

(declare-fun bm!143716 () Bool)

(declare-fun call!143721 () Bool)

(declare-fun isEmpty!15892 (List!28075) Bool)

(assert (=> bm!143716 (= call!143721 (isEmpty!15892 s!9460))))

(declare-fun d!694276 () Bool)

(declare-fun e!1509058 () Bool)

(assert (=> d!694276 e!1509058))

(declare-fun c!375539 () Bool)

(assert (=> d!694276 (= c!375539 (is-EmptyExpr!6918 r!13927))))

(declare-fun lt!864773 () Bool)

(declare-fun e!1509057 () Bool)

(assert (=> d!694276 (= lt!864773 e!1509057)))

(declare-fun c!375538 () Bool)

(assert (=> d!694276 (= c!375538 (isEmpty!15892 s!9460))))

(assert (=> d!694276 (validRegex!2648 r!13927)))

(assert (=> d!694276 (= (matchR!3035 r!13927 s!9460) lt!864773)))

(declare-fun b!2362907 () Bool)

(declare-fun res!1002831 () Bool)

(declare-fun e!1509062 () Bool)

(assert (=> b!2362907 (=> (not res!1002831) (not e!1509062))))

(declare-fun tail!3354 (List!28075) List!28075)

(assert (=> b!2362907 (= res!1002831 (isEmpty!15892 (tail!3354 s!9460)))))

(declare-fun b!2362908 () Bool)

(declare-fun e!1509060 () Bool)

(assert (=> b!2362908 (= e!1509058 e!1509060)))

(declare-fun c!375540 () Bool)

(assert (=> b!2362908 (= c!375540 (is-EmptyLang!6918 r!13927))))

(declare-fun b!2362909 () Bool)

(declare-fun res!1002836 () Bool)

(declare-fun e!1509063 () Bool)

(assert (=> b!2362909 (=> res!1002836 e!1509063)))

(assert (=> b!2362909 (= res!1002836 (not (is-ElementMatch!6918 r!13927)))))

(assert (=> b!2362909 (= e!1509060 e!1509063)))

(declare-fun b!2362910 () Bool)

(assert (=> b!2362910 (= e!1509060 (not lt!864773))))

(declare-fun b!2362911 () Bool)

(assert (=> b!2362911 (= e!1509058 (= lt!864773 call!143721))))

(declare-fun b!2362912 () Bool)

(declare-fun derivativeStep!1641 (Regex!6918 C!13994) Regex!6918)

(declare-fun head!5085 (List!28075) C!13994)

(assert (=> b!2362912 (= e!1509057 (matchR!3035 (derivativeStep!1641 r!13927 (head!5085 s!9460)) (tail!3354 s!9460)))))

(declare-fun b!2362913 () Bool)

(declare-fun e!1509059 () Bool)

(assert (=> b!2362913 (= e!1509063 e!1509059)))

(declare-fun res!1002830 () Bool)

(assert (=> b!2362913 (=> (not res!1002830) (not e!1509059))))

(assert (=> b!2362913 (= res!1002830 (not lt!864773))))

(declare-fun b!2362914 () Bool)

(declare-fun res!1002833 () Bool)

(declare-fun e!1509061 () Bool)

(assert (=> b!2362914 (=> res!1002833 e!1509061)))

(assert (=> b!2362914 (= res!1002833 (not (isEmpty!15892 (tail!3354 s!9460))))))

(declare-fun b!2362915 () Bool)

(declare-fun res!1002835 () Bool)

(assert (=> b!2362915 (=> res!1002835 e!1509063)))

(assert (=> b!2362915 (= res!1002835 e!1509062)))

(declare-fun res!1002829 () Bool)

(assert (=> b!2362915 (=> (not res!1002829) (not e!1509062))))

(assert (=> b!2362915 (= res!1002829 lt!864773)))

(declare-fun b!2362916 () Bool)

(assert (=> b!2362916 (= e!1509062 (= (head!5085 s!9460) (c!375530 r!13927)))))

(declare-fun b!2362917 () Bool)

(declare-fun nullable!1982 (Regex!6918) Bool)

(assert (=> b!2362917 (= e!1509057 (nullable!1982 r!13927))))

(declare-fun b!2362918 () Bool)

(declare-fun res!1002832 () Bool)

(assert (=> b!2362918 (=> (not res!1002832) (not e!1509062))))

(assert (=> b!2362918 (= res!1002832 (not call!143721))))

(declare-fun b!2362919 () Bool)

(assert (=> b!2362919 (= e!1509059 e!1509061)))

(declare-fun res!1002834 () Bool)

(assert (=> b!2362919 (=> res!1002834 e!1509061)))

(assert (=> b!2362919 (= res!1002834 call!143721)))

(declare-fun b!2362920 () Bool)

(assert (=> b!2362920 (= e!1509061 (not (= (head!5085 s!9460) (c!375530 r!13927))))))

(assert (= (and d!694276 c!375538) b!2362917))

(assert (= (and d!694276 (not c!375538)) b!2362912))

(assert (= (and d!694276 c!375539) b!2362911))

(assert (= (and d!694276 (not c!375539)) b!2362908))

(assert (= (and b!2362908 c!375540) b!2362910))

(assert (= (and b!2362908 (not c!375540)) b!2362909))

(assert (= (and b!2362909 (not res!1002836)) b!2362915))

(assert (= (and b!2362915 res!1002829) b!2362918))

(assert (= (and b!2362918 res!1002832) b!2362907))

(assert (= (and b!2362907 res!1002831) b!2362916))

(assert (= (and b!2362915 (not res!1002835)) b!2362913))

(assert (= (and b!2362913 res!1002830) b!2362919))

(assert (= (and b!2362919 (not res!1002834)) b!2362914))

(assert (= (and b!2362914 (not res!1002833)) b!2362920))

(assert (= (or b!2362911 b!2362918 b!2362919) bm!143716))

(declare-fun m!2774599 () Bool)

(assert (=> d!694276 m!2774599))

(declare-fun m!2774601 () Bool)

(assert (=> d!694276 m!2774601))

(declare-fun m!2774603 () Bool)

(assert (=> b!2362907 m!2774603))

(assert (=> b!2362907 m!2774603))

(declare-fun m!2774605 () Bool)

(assert (=> b!2362907 m!2774605))

(declare-fun m!2774607 () Bool)

(assert (=> b!2362916 m!2774607))

(assert (=> b!2362914 m!2774603))

(assert (=> b!2362914 m!2774603))

(assert (=> b!2362914 m!2774605))

(assert (=> bm!143716 m!2774599))

(assert (=> b!2362920 m!2774607))

(declare-fun m!2774609 () Bool)

(assert (=> b!2362917 m!2774609))

(assert (=> b!2362912 m!2774607))

(assert (=> b!2362912 m!2774607))

(declare-fun m!2774611 () Bool)

(assert (=> b!2362912 m!2774611))

(assert (=> b!2362912 m!2774603))

(assert (=> b!2362912 m!2774611))

(assert (=> b!2362912 m!2774603))

(declare-fun m!2774613 () Bool)

(assert (=> b!2362912 m!2774613))

(assert (=> b!2362820 d!694276))

(declare-fun bs!460616 () Bool)

(declare-fun b!2362987 () Bool)

(assert (= bs!460616 (and b!2362987 b!2362824)))

(declare-fun lambda!86994 () Int)

(assert (=> bs!460616 (not (= lambda!86994 lambda!86977))))

(assert (=> bs!460616 (not (= lambda!86994 lambda!86978))))

(assert (=> b!2362987 true))

(assert (=> b!2362987 true))

(declare-fun bs!460617 () Bool)

(declare-fun b!2362989 () Bool)

(assert (= bs!460617 (and b!2362989 b!2362824)))

(declare-fun lambda!86995 () Int)

(assert (=> bs!460617 (not (= lambda!86995 lambda!86977))))

(assert (=> bs!460617 (= lambda!86995 lambda!86978)))

(declare-fun bs!460618 () Bool)

(assert (= bs!460618 (and b!2362989 b!2362987)))

(assert (=> bs!460618 (not (= lambda!86995 lambda!86994))))

(assert (=> b!2362989 true))

(assert (=> b!2362989 true))

(declare-fun bm!143723 () Bool)

(declare-fun call!143729 () Bool)

(declare-fun c!375558 () Bool)

(assert (=> bm!143723 (= call!143729 (Exists!980 (ite c!375558 lambda!86994 lambda!86995)))))

(declare-fun b!2362981 () Bool)

(declare-fun res!1002871 () Bool)

(declare-fun e!1509102 () Bool)

(assert (=> b!2362981 (=> res!1002871 e!1509102)))

(declare-fun call!143728 () Bool)

(assert (=> b!2362981 (= res!1002871 call!143728)))

(declare-fun e!1509100 () Bool)

(assert (=> b!2362981 (= e!1509100 e!1509102)))

(declare-fun b!2362982 () Bool)

(declare-fun c!375556 () Bool)

(assert (=> b!2362982 (= c!375556 (is-ElementMatch!6918 r!13927))))

(declare-fun e!1509101 () Bool)

(declare-fun e!1509097 () Bool)

(assert (=> b!2362982 (= e!1509101 e!1509097)))

(declare-fun b!2362983 () Bool)

(declare-fun e!1509096 () Bool)

(assert (=> b!2362983 (= e!1509096 call!143728)))

(declare-fun b!2362984 () Bool)

(assert (=> b!2362984 (= e!1509096 e!1509101)))

(declare-fun res!1002870 () Bool)

(assert (=> b!2362984 (= res!1002870 (not (is-EmptyLang!6918 r!13927)))))

(assert (=> b!2362984 (=> (not res!1002870) (not e!1509101))))

(declare-fun b!2362985 () Bool)

(declare-fun c!375557 () Bool)

(assert (=> b!2362985 (= c!375557 (is-Union!6918 r!13927))))

(declare-fun e!1509099 () Bool)

(assert (=> b!2362985 (= e!1509097 e!1509099)))

(declare-fun d!694280 () Bool)

(declare-fun c!375555 () Bool)

(assert (=> d!694280 (= c!375555 (is-EmptyExpr!6918 r!13927))))

(assert (=> d!694280 (= (matchRSpec!767 r!13927 s!9460) e!1509096)))

(declare-fun b!2362986 () Bool)

(declare-fun e!1509098 () Bool)

(assert (=> b!2362986 (= e!1509099 e!1509098)))

(declare-fun res!1002869 () Bool)

(assert (=> b!2362986 (= res!1002869 (matchRSpec!767 (regOne!14349 r!13927) s!9460))))

(assert (=> b!2362986 (=> res!1002869 e!1509098)))

(assert (=> b!2362987 (= e!1509102 call!143729)))

(declare-fun b!2362988 () Bool)

(assert (=> b!2362988 (= e!1509098 (matchRSpec!767 (regTwo!14349 r!13927) s!9460))))

(assert (=> b!2362989 (= e!1509100 call!143729)))

(declare-fun b!2362990 () Bool)

(assert (=> b!2362990 (= e!1509097 (= s!9460 (Cons!27977 (c!375530 r!13927) Nil!27977)))))

(declare-fun b!2362991 () Bool)

(assert (=> b!2362991 (= e!1509099 e!1509100)))

(assert (=> b!2362991 (= c!375558 (is-Star!6918 r!13927))))

(declare-fun bm!143724 () Bool)

(assert (=> bm!143724 (= call!143728 (isEmpty!15892 s!9460))))

(assert (= (and d!694280 c!375555) b!2362983))

(assert (= (and d!694280 (not c!375555)) b!2362984))

(assert (= (and b!2362984 res!1002870) b!2362982))

(assert (= (and b!2362982 c!375556) b!2362990))

(assert (= (and b!2362982 (not c!375556)) b!2362985))

(assert (= (and b!2362985 c!375557) b!2362986))

(assert (= (and b!2362985 (not c!375557)) b!2362991))

(assert (= (and b!2362986 (not res!1002869)) b!2362988))

(assert (= (and b!2362991 c!375558) b!2362981))

(assert (= (and b!2362991 (not c!375558)) b!2362989))

(assert (= (and b!2362981 (not res!1002871)) b!2362987))

(assert (= (or b!2362987 b!2362989) bm!143723))

(assert (= (or b!2362983 b!2362981) bm!143724))

(declare-fun m!2774615 () Bool)

(assert (=> bm!143723 m!2774615))

(declare-fun m!2774617 () Bool)

(assert (=> b!2362986 m!2774617))

(declare-fun m!2774619 () Bool)

(assert (=> b!2362988 m!2774619))

(assert (=> bm!143724 m!2774599))

(assert (=> b!2362820 d!694280))

(declare-fun d!694282 () Bool)

(assert (=> d!694282 (= (matchR!3035 r!13927 s!9460) (matchRSpec!767 r!13927 s!9460))))

(declare-fun lt!864779 () Unit!40871)

(declare-fun choose!13703 (Regex!6918 List!28075) Unit!40871)

(assert (=> d!694282 (= lt!864779 (choose!13703 r!13927 s!9460))))

(assert (=> d!694282 (validRegex!2648 r!13927)))

(assert (=> d!694282 (= (mainMatchTheorem!767 r!13927 s!9460) lt!864779)))

(declare-fun bs!460619 () Bool)

(assert (= bs!460619 d!694282))

(assert (=> bs!460619 m!2774549))

(assert (=> bs!460619 m!2774551))

(declare-fun m!2774621 () Bool)

(assert (=> bs!460619 m!2774621))

(assert (=> bs!460619 m!2774601))

(assert (=> b!2362820 d!694282))

(declare-fun d!694284 () Bool)

(declare-fun isEmpty!15893 (Option!5461) Bool)

(assert (=> d!694284 (= (isDefined!4289 (findConcatSeparation!569 (regOne!14348 r!13927) (regTwo!14348 r!13927) Nil!27977 s!9460 s!9460)) (not (isEmpty!15893 (findConcatSeparation!569 (regOne!14348 r!13927) (regTwo!14348 r!13927) Nil!27977 s!9460 s!9460))))))

(declare-fun bs!460620 () Bool)

(assert (= bs!460620 d!694284))

(assert (=> bs!460620 m!2774555))

(declare-fun m!2774625 () Bool)

(assert (=> bs!460620 m!2774625))

(assert (=> b!2362824 d!694284))

(declare-fun d!694286 () Bool)

(declare-fun choose!13704 (Int) Bool)

(assert (=> d!694286 (= (Exists!980 lambda!86978) (choose!13704 lambda!86978))))

(declare-fun bs!460621 () Bool)

(assert (= bs!460621 d!694286))

(declare-fun m!2774639 () Bool)

(assert (=> bs!460621 m!2774639))

(assert (=> b!2362824 d!694286))

(declare-fun bs!460622 () Bool)

(declare-fun d!694288 () Bool)

(assert (= bs!460622 (and d!694288 b!2362824)))

(declare-fun lambda!86998 () Int)

(assert (=> bs!460622 (= lambda!86998 lambda!86977)))

(assert (=> bs!460622 (not (= lambda!86998 lambda!86978))))

(declare-fun bs!460623 () Bool)

(assert (= bs!460623 (and d!694288 b!2362987)))

(assert (=> bs!460623 (not (= lambda!86998 lambda!86994))))

(declare-fun bs!460624 () Bool)

(assert (= bs!460624 (and d!694288 b!2362989)))

(assert (=> bs!460624 (not (= lambda!86998 lambda!86995))))

(assert (=> d!694288 true))

(assert (=> d!694288 true))

(assert (=> d!694288 true))

(assert (=> d!694288 (= (isDefined!4289 (findConcatSeparation!569 (regOne!14348 r!13927) (regTwo!14348 r!13927) Nil!27977 s!9460 s!9460)) (Exists!980 lambda!86998))))

(declare-fun lt!864782 () Unit!40871)

(declare-fun choose!13705 (Regex!6918 Regex!6918 List!28075) Unit!40871)

(assert (=> d!694288 (= lt!864782 (choose!13705 (regOne!14348 r!13927) (regTwo!14348 r!13927) s!9460))))

(assert (=> d!694288 (validRegex!2648 (regOne!14348 r!13927))))

(assert (=> d!694288 (= (lemmaFindConcatSeparationEquivalentToExists!569 (regOne!14348 r!13927) (regTwo!14348 r!13927) s!9460) lt!864782)))

(declare-fun bs!460625 () Bool)

(assert (= bs!460625 d!694288))

(assert (=> bs!460625 m!2774555))

(assert (=> bs!460625 m!2774557))

(declare-fun m!2774643 () Bool)

(assert (=> bs!460625 m!2774643))

(declare-fun m!2774645 () Bool)

(assert (=> bs!460625 m!2774645))

(assert (=> bs!460625 m!2774555))

(assert (=> bs!460625 m!2774561))

(assert (=> b!2362824 d!694288))

(declare-fun bs!460626 () Bool)

(declare-fun d!694292 () Bool)

(assert (= bs!460626 (and d!694292 b!2362824)))

(declare-fun lambda!87005 () Int)

(assert (=> bs!460626 (not (= lambda!87005 lambda!86978))))

(declare-fun bs!460627 () Bool)

(assert (= bs!460627 (and d!694292 b!2362987)))

(assert (=> bs!460627 (not (= lambda!87005 lambda!86994))))

(assert (=> bs!460626 (= lambda!87005 lambda!86977)))

(declare-fun bs!460628 () Bool)

(assert (= bs!460628 (and d!694292 d!694288)))

(assert (=> bs!460628 (= lambda!87005 lambda!86998)))

(declare-fun bs!460629 () Bool)

(assert (= bs!460629 (and d!694292 b!2362989)))

(assert (=> bs!460629 (not (= lambda!87005 lambda!86995))))

(assert (=> d!694292 true))

(assert (=> d!694292 true))

(assert (=> d!694292 true))

(declare-fun lambda!87006 () Int)

(assert (=> bs!460626 (= lambda!87006 lambda!86978)))

(assert (=> bs!460627 (not (= lambda!87006 lambda!86994))))

(declare-fun bs!460630 () Bool)

(assert (= bs!460630 d!694292))

(assert (=> bs!460630 (not (= lambda!87006 lambda!87005))))

(assert (=> bs!460626 (not (= lambda!87006 lambda!86977))))

(assert (=> bs!460628 (not (= lambda!87006 lambda!86998))))

(assert (=> bs!460629 (= lambda!87006 lambda!86995)))

(assert (=> d!694292 true))

(assert (=> d!694292 true))

(assert (=> d!694292 true))

(assert (=> d!694292 (= (Exists!980 lambda!87005) (Exists!980 lambda!87006))))

(declare-fun lt!864785 () Unit!40871)

(declare-fun choose!13706 (Regex!6918 Regex!6918 List!28075) Unit!40871)

(assert (=> d!694292 (= lt!864785 (choose!13706 (regOne!14348 r!13927) (regTwo!14348 r!13927) s!9460))))

(assert (=> d!694292 (validRegex!2648 (regOne!14348 r!13927))))

(assert (=> d!694292 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!319 (regOne!14348 r!13927) (regTwo!14348 r!13927) s!9460) lt!864785)))

(declare-fun m!2774647 () Bool)

(assert (=> bs!460630 m!2774647))

(declare-fun m!2774649 () Bool)

(assert (=> bs!460630 m!2774649))

(declare-fun m!2774651 () Bool)

(assert (=> bs!460630 m!2774651))

(assert (=> bs!460630 m!2774561))

(assert (=> b!2362824 d!694292))

(declare-fun b!2363068 () Bool)

(declare-fun e!1509152 () Bool)

(declare-fun call!143741 () Bool)

(assert (=> b!2363068 (= e!1509152 call!143741)))

(declare-fun call!143742 () Bool)

(declare-fun c!375574 () Bool)

(declare-fun c!375575 () Bool)

(declare-fun bm!143736 () Bool)

(assert (=> bm!143736 (= call!143742 (validRegex!2648 (ite c!375575 (reg!7247 (regOne!14348 r!13927)) (ite c!375574 (regOne!14349 (regOne!14348 r!13927)) (regTwo!14348 (regOne!14348 r!13927))))))))

(declare-fun b!2363069 () Bool)

(declare-fun e!1509153 () Bool)

(declare-fun e!1509149 () Bool)

(assert (=> b!2363069 (= e!1509153 e!1509149)))

(declare-fun res!1002918 () Bool)

(assert (=> b!2363069 (= res!1002918 (not (nullable!1982 (reg!7247 (regOne!14348 r!13927)))))))

(assert (=> b!2363069 (=> (not res!1002918) (not e!1509149))))

(declare-fun b!2363070 () Bool)

(declare-fun e!1509150 () Bool)

(declare-fun e!1509148 () Bool)

(assert (=> b!2363070 (= e!1509150 e!1509148)))

(declare-fun res!1002921 () Bool)

(assert (=> b!2363070 (=> (not res!1002921) (not e!1509148))))

(assert (=> b!2363070 (= res!1002921 call!143741)))

(declare-fun b!2363071 () Bool)

(declare-fun call!143743 () Bool)

(assert (=> b!2363071 (= e!1509148 call!143743)))

(declare-fun bm!143737 () Bool)

(assert (=> bm!143737 (= call!143741 (validRegex!2648 (ite c!375574 (regTwo!14349 (regOne!14348 r!13927)) (regOne!14348 (regOne!14348 r!13927)))))))

(declare-fun b!2363073 () Bool)

(declare-fun e!1509154 () Bool)

(assert (=> b!2363073 (= e!1509154 e!1509153)))

(assert (=> b!2363073 (= c!375575 (is-Star!6918 (regOne!14348 r!13927)))))

(declare-fun b!2363074 () Bool)

(declare-fun res!1002919 () Bool)

(assert (=> b!2363074 (=> res!1002919 e!1509150)))

(assert (=> b!2363074 (= res!1002919 (not (is-Concat!11554 (regOne!14348 r!13927))))))

(declare-fun e!1509151 () Bool)

(assert (=> b!2363074 (= e!1509151 e!1509150)))

(declare-fun b!2363075 () Bool)

(declare-fun res!1002920 () Bool)

(assert (=> b!2363075 (=> (not res!1002920) (not e!1509152))))

(assert (=> b!2363075 (= res!1002920 call!143743)))

(assert (=> b!2363075 (= e!1509151 e!1509152)))

(declare-fun b!2363076 () Bool)

(assert (=> b!2363076 (= e!1509153 e!1509151)))

(assert (=> b!2363076 (= c!375574 (is-Union!6918 (regOne!14348 r!13927)))))

(declare-fun bm!143738 () Bool)

(assert (=> bm!143738 (= call!143743 call!143742)))

(declare-fun b!2363072 () Bool)

(assert (=> b!2363072 (= e!1509149 call!143742)))

(declare-fun d!694294 () Bool)

(declare-fun res!1002922 () Bool)

(assert (=> d!694294 (=> res!1002922 e!1509154)))

(assert (=> d!694294 (= res!1002922 (is-ElementMatch!6918 (regOne!14348 r!13927)))))

(assert (=> d!694294 (= (validRegex!2648 (regOne!14348 r!13927)) e!1509154)))

(assert (= (and d!694294 (not res!1002922)) b!2363073))

(assert (= (and b!2363073 c!375575) b!2363069))

(assert (= (and b!2363073 (not c!375575)) b!2363076))

(assert (= (and b!2363069 res!1002918) b!2363072))

(assert (= (and b!2363076 c!375574) b!2363075))

(assert (= (and b!2363076 (not c!375574)) b!2363074))

(assert (= (and b!2363075 res!1002920) b!2363068))

(assert (= (and b!2363074 (not res!1002919)) b!2363070))

(assert (= (and b!2363070 res!1002921) b!2363071))

(assert (= (or b!2363075 b!2363071) bm!143738))

(assert (= (or b!2363068 b!2363070) bm!143737))

(assert (= (or b!2363072 bm!143738) bm!143736))

(declare-fun m!2774653 () Bool)

(assert (=> bm!143736 m!2774653))

(declare-fun m!2774655 () Bool)

(assert (=> b!2363069 m!2774655))

(declare-fun m!2774657 () Bool)

(assert (=> bm!143737 m!2774657))

(assert (=> b!2362824 d!694294))

(declare-fun d!694296 () Bool)

(assert (=> d!694296 (= (Exists!980 lambda!86977) (choose!13704 lambda!86977))))

(declare-fun bs!460631 () Bool)

(assert (= bs!460631 d!694296))

(declare-fun m!2774659 () Bool)

(assert (=> bs!460631 m!2774659))

(assert (=> b!2362824 d!694296))

(declare-fun b!2363106 () Bool)

(declare-fun e!1509172 () Option!5461)

(assert (=> b!2363106 (= e!1509172 (Some!5460 (tuple2!27701 Nil!27977 s!9460)))))

(declare-fun b!2363107 () Bool)

(declare-fun lt!864794 () Unit!40871)

(declare-fun lt!864793 () Unit!40871)

(assert (=> b!2363107 (= lt!864794 lt!864793)))

(declare-fun ++!6885 (List!28075 List!28075) List!28075)

(assert (=> b!2363107 (= (++!6885 (++!6885 Nil!27977 (Cons!27977 (h!33378 s!9460) Nil!27977)) (t!208052 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!532 (List!28075 C!13994 List!28075 List!28075) Unit!40871)

(assert (=> b!2363107 (= lt!864793 (lemmaMoveElementToOtherListKeepsConcatEq!532 Nil!27977 (h!33378 s!9460) (t!208052 s!9460) s!9460))))

(declare-fun e!1509176 () Option!5461)

(assert (=> b!2363107 (= e!1509176 (findConcatSeparation!569 (regOne!14348 r!13927) (regTwo!14348 r!13927) (++!6885 Nil!27977 (Cons!27977 (h!33378 s!9460) Nil!27977)) (t!208052 s!9460) s!9460))))

(declare-fun d!694298 () Bool)

(declare-fun e!1509175 () Bool)

(assert (=> d!694298 e!1509175))

(declare-fun res!1002937 () Bool)

(assert (=> d!694298 (=> res!1002937 e!1509175)))

(declare-fun e!1509173 () Bool)

(assert (=> d!694298 (= res!1002937 e!1509173)))

(declare-fun res!1002936 () Bool)

(assert (=> d!694298 (=> (not res!1002936) (not e!1509173))))

(declare-fun lt!864792 () Option!5461)

(assert (=> d!694298 (= res!1002936 (isDefined!4289 lt!864792))))

(assert (=> d!694298 (= lt!864792 e!1509172)))

(declare-fun c!375585 () Bool)

(declare-fun e!1509174 () Bool)

(assert (=> d!694298 (= c!375585 e!1509174)))

(declare-fun res!1002939 () Bool)

(assert (=> d!694298 (=> (not res!1002939) (not e!1509174))))

(assert (=> d!694298 (= res!1002939 (matchR!3035 (regOne!14348 r!13927) Nil!27977))))

(assert (=> d!694298 (validRegex!2648 (regOne!14348 r!13927))))

(assert (=> d!694298 (= (findConcatSeparation!569 (regOne!14348 r!13927) (regTwo!14348 r!13927) Nil!27977 s!9460 s!9460) lt!864792)))

(declare-fun b!2363108 () Bool)

(declare-fun res!1002938 () Bool)

(assert (=> b!2363108 (=> (not res!1002938) (not e!1509173))))

(declare-fun get!8490 (Option!5461) tuple2!27700)

(assert (=> b!2363108 (= res!1002938 (matchR!3035 (regTwo!14348 r!13927) (_2!16391 (get!8490 lt!864792))))))

(declare-fun b!2363109 () Bool)

(assert (=> b!2363109 (= e!1509175 (not (isDefined!4289 lt!864792)))))

(declare-fun b!2363110 () Bool)

(assert (=> b!2363110 (= e!1509172 e!1509176)))

(declare-fun c!375584 () Bool)

(assert (=> b!2363110 (= c!375584 (is-Nil!27977 s!9460))))

(declare-fun b!2363111 () Bool)

(declare-fun res!1002940 () Bool)

(assert (=> b!2363111 (=> (not res!1002940) (not e!1509173))))

(assert (=> b!2363111 (= res!1002940 (matchR!3035 (regOne!14348 r!13927) (_1!16391 (get!8490 lt!864792))))))

(declare-fun b!2363112 () Bool)

(assert (=> b!2363112 (= e!1509174 (matchR!3035 (regTwo!14348 r!13927) s!9460))))

(declare-fun b!2363113 () Bool)

(assert (=> b!2363113 (= e!1509173 (= (++!6885 (_1!16391 (get!8490 lt!864792)) (_2!16391 (get!8490 lt!864792))) s!9460))))

(declare-fun b!2363114 () Bool)

(assert (=> b!2363114 (= e!1509176 None!5460)))

(assert (= (and d!694298 res!1002939) b!2363112))

(assert (= (and d!694298 c!375585) b!2363106))

(assert (= (and d!694298 (not c!375585)) b!2363110))

(assert (= (and b!2363110 c!375584) b!2363114))

(assert (= (and b!2363110 (not c!375584)) b!2363107))

(assert (= (and d!694298 res!1002936) b!2363111))

(assert (= (and b!2363111 res!1002940) b!2363108))

(assert (= (and b!2363108 res!1002938) b!2363113))

(assert (= (and d!694298 (not res!1002937)) b!2363109))

(declare-fun m!2774667 () Bool)

(assert (=> b!2363112 m!2774667))

(declare-fun m!2774669 () Bool)

(assert (=> b!2363111 m!2774669))

(declare-fun m!2774671 () Bool)

(assert (=> b!2363111 m!2774671))

(declare-fun m!2774673 () Bool)

(assert (=> d!694298 m!2774673))

(declare-fun m!2774675 () Bool)

(assert (=> d!694298 m!2774675))

(assert (=> d!694298 m!2774561))

(declare-fun m!2774677 () Bool)

(assert (=> b!2363107 m!2774677))

(assert (=> b!2363107 m!2774677))

(declare-fun m!2774679 () Bool)

(assert (=> b!2363107 m!2774679))

(declare-fun m!2774681 () Bool)

(assert (=> b!2363107 m!2774681))

(assert (=> b!2363107 m!2774677))

(declare-fun m!2774683 () Bool)

(assert (=> b!2363107 m!2774683))

(assert (=> b!2363109 m!2774673))

(assert (=> b!2363108 m!2774669))

(declare-fun m!2774685 () Bool)

(assert (=> b!2363108 m!2774685))

(assert (=> b!2363113 m!2774669))

(declare-fun m!2774687 () Bool)

(assert (=> b!2363113 m!2774687))

(assert (=> b!2362824 d!694298))

(declare-fun bs!460638 () Bool)

(declare-fun d!694302 () Bool)

(assert (= bs!460638 (and d!694302 start!231916)))

(declare-fun lambda!87013 () Int)

(assert (=> bs!460638 (= lambda!87013 lambda!86976)))

(declare-fun b!2363135 () Bool)

(declare-fun e!1509189 () Bool)

(declare-fun isEmpty!15894 (List!28074) Bool)

(assert (=> b!2363135 (= e!1509189 (isEmpty!15894 (t!208051 l!9164)))))

(declare-fun b!2363136 () Bool)

(declare-fun e!1509192 () Regex!6918)

(declare-fun e!1509193 () Regex!6918)

(assert (=> b!2363136 (= e!1509192 e!1509193)))

(declare-fun c!375594 () Bool)

(assert (=> b!2363136 (= c!375594 (is-Cons!27976 l!9164))))

(declare-fun b!2363137 () Bool)

(assert (=> b!2363137 (= e!1509192 (h!33377 l!9164))))

(declare-fun b!2363138 () Bool)

(declare-fun e!1509194 () Bool)

(declare-fun lt!864800 () Regex!6918)

(declare-fun isEmptyExpr!6 (Regex!6918) Bool)

(assert (=> b!2363138 (= e!1509194 (isEmptyExpr!6 lt!864800))))

(declare-fun b!2363139 () Bool)

(declare-fun e!1509191 () Bool)

(declare-fun head!5086 (List!28074) Regex!6918)

(assert (=> b!2363139 (= e!1509191 (= lt!864800 (head!5086 l!9164)))))

(declare-fun b!2363140 () Bool)

(assert (=> b!2363140 (= e!1509193 (Concat!11554 (h!33377 l!9164) (generalisedConcat!19 (t!208051 l!9164))))))

(declare-fun b!2363141 () Bool)

(declare-fun isConcat!6 (Regex!6918) Bool)

(assert (=> b!2363141 (= e!1509191 (isConcat!6 lt!864800))))

(declare-fun b!2363142 () Bool)

(assert (=> b!2363142 (= e!1509194 e!1509191)))

(declare-fun c!375596 () Bool)

(declare-fun tail!3355 (List!28074) List!28074)

(assert (=> b!2363142 (= c!375596 (isEmpty!15894 (tail!3355 l!9164)))))

(declare-fun b!2363143 () Bool)

(declare-fun e!1509190 () Bool)

(assert (=> b!2363143 (= e!1509190 e!1509194)))

(declare-fun c!375595 () Bool)

(assert (=> b!2363143 (= c!375595 (isEmpty!15894 l!9164))))

(declare-fun b!2363144 () Bool)

(assert (=> b!2363144 (= e!1509193 EmptyExpr!6918)))

(assert (=> d!694302 e!1509190))

(declare-fun res!1002945 () Bool)

(assert (=> d!694302 (=> (not res!1002945) (not e!1509190))))

(assert (=> d!694302 (= res!1002945 (validRegex!2648 lt!864800))))

(assert (=> d!694302 (= lt!864800 e!1509192)))

(declare-fun c!375597 () Bool)

(assert (=> d!694302 (= c!375597 e!1509189)))

(declare-fun res!1002946 () Bool)

(assert (=> d!694302 (=> (not res!1002946) (not e!1509189))))

(assert (=> d!694302 (= res!1002946 (is-Cons!27976 l!9164))))

(assert (=> d!694302 (forall!5552 l!9164 lambda!87013)))

(assert (=> d!694302 (= (generalisedConcat!19 l!9164) lt!864800)))

(assert (= (and d!694302 res!1002946) b!2363135))

(assert (= (and d!694302 c!375597) b!2363137))

(assert (= (and d!694302 (not c!375597)) b!2363136))

(assert (= (and b!2363136 c!375594) b!2363140))

(assert (= (and b!2363136 (not c!375594)) b!2363144))

(assert (= (and d!694302 res!1002945) b!2363143))

(assert (= (and b!2363143 c!375595) b!2363138))

(assert (= (and b!2363143 (not c!375595)) b!2363142))

(assert (= (and b!2363142 c!375596) b!2363139))

(assert (= (and b!2363142 (not c!375596)) b!2363141))

(declare-fun m!2774695 () Bool)

(assert (=> b!2363135 m!2774695))

(declare-fun m!2774697 () Bool)

(assert (=> b!2363143 m!2774697))

(declare-fun m!2774699 () Bool)

(assert (=> b!2363138 m!2774699))

(declare-fun m!2774701 () Bool)

(assert (=> b!2363142 m!2774701))

(assert (=> b!2363142 m!2774701))

(declare-fun m!2774703 () Bool)

(assert (=> b!2363142 m!2774703))

(declare-fun m!2774705 () Bool)

(assert (=> d!694302 m!2774705))

(declare-fun m!2774707 () Bool)

(assert (=> d!694302 m!2774707))

(declare-fun m!2774709 () Bool)

(assert (=> b!2363139 m!2774709))

(declare-fun m!2774711 () Bool)

(assert (=> b!2363141 m!2774711))

(declare-fun m!2774713 () Bool)

(assert (=> b!2363140 m!2774713))

(assert (=> b!2362818 d!694302))

(declare-fun b!2363149 () Bool)

(declare-fun e!1509197 () Bool)

(declare-fun tp!755702 () Bool)

(assert (=> b!2363149 (= e!1509197 (and tp_is_empty!11249 tp!755702))))

(assert (=> b!2362825 (= tp!755675 e!1509197)))

(assert (= (and b!2362825 (is-Cons!27977 (t!208052 s!9460))) b!2363149))

(declare-fun e!1509200 () Bool)

(assert (=> b!2362819 (= tp!755671 e!1509200)))

(declare-fun b!2363163 () Bool)

(declare-fun tp!755715 () Bool)

(declare-fun tp!755714 () Bool)

(assert (=> b!2363163 (= e!1509200 (and tp!755715 tp!755714))))

(declare-fun b!2363160 () Bool)

(assert (=> b!2363160 (= e!1509200 tp_is_empty!11249)))

(declare-fun b!2363161 () Bool)

(declare-fun tp!755716 () Bool)

(declare-fun tp!755717 () Bool)

(assert (=> b!2363161 (= e!1509200 (and tp!755716 tp!755717))))

(declare-fun b!2363162 () Bool)

(declare-fun tp!755713 () Bool)

(assert (=> b!2363162 (= e!1509200 tp!755713)))

(assert (= (and b!2362819 (is-ElementMatch!6918 (regOne!14349 r!13927))) b!2363160))

(assert (= (and b!2362819 (is-Concat!11554 (regOne!14349 r!13927))) b!2363161))

(assert (= (and b!2362819 (is-Star!6918 (regOne!14349 r!13927))) b!2363162))

(assert (= (and b!2362819 (is-Union!6918 (regOne!14349 r!13927))) b!2363163))

(declare-fun e!1509201 () Bool)

(assert (=> b!2362819 (= tp!755674 e!1509201)))

(declare-fun b!2363167 () Bool)

(declare-fun tp!755720 () Bool)

(declare-fun tp!755719 () Bool)

(assert (=> b!2363167 (= e!1509201 (and tp!755720 tp!755719))))

(declare-fun b!2363164 () Bool)

(assert (=> b!2363164 (= e!1509201 tp_is_empty!11249)))

(declare-fun b!2363165 () Bool)

(declare-fun tp!755721 () Bool)

(declare-fun tp!755722 () Bool)

(assert (=> b!2363165 (= e!1509201 (and tp!755721 tp!755722))))

(declare-fun b!2363166 () Bool)

(declare-fun tp!755718 () Bool)

(assert (=> b!2363166 (= e!1509201 tp!755718)))

(assert (= (and b!2362819 (is-ElementMatch!6918 (regTwo!14349 r!13927))) b!2363164))

(assert (= (and b!2362819 (is-Concat!11554 (regTwo!14349 r!13927))) b!2363165))

(assert (= (and b!2362819 (is-Star!6918 (regTwo!14349 r!13927))) b!2363166))

(assert (= (and b!2362819 (is-Union!6918 (regTwo!14349 r!13927))) b!2363167))

(declare-fun e!1509202 () Bool)

(assert (=> b!2362823 (= tp!755673 e!1509202)))

(declare-fun b!2363171 () Bool)

(declare-fun tp!755725 () Bool)

(declare-fun tp!755724 () Bool)

(assert (=> b!2363171 (= e!1509202 (and tp!755725 tp!755724))))

(declare-fun b!2363168 () Bool)

(assert (=> b!2363168 (= e!1509202 tp_is_empty!11249)))

(declare-fun b!2363169 () Bool)

(declare-fun tp!755726 () Bool)

(declare-fun tp!755727 () Bool)

(assert (=> b!2363169 (= e!1509202 (and tp!755726 tp!755727))))

(declare-fun b!2363170 () Bool)

(declare-fun tp!755723 () Bool)

(assert (=> b!2363170 (= e!1509202 tp!755723)))

(assert (= (and b!2362823 (is-ElementMatch!6918 (regOne!14348 r!13927))) b!2363168))

(assert (= (and b!2362823 (is-Concat!11554 (regOne!14348 r!13927))) b!2363169))

(assert (= (and b!2362823 (is-Star!6918 (regOne!14348 r!13927))) b!2363170))

(assert (= (and b!2362823 (is-Union!6918 (regOne!14348 r!13927))) b!2363171))

(declare-fun e!1509203 () Bool)

(assert (=> b!2362823 (= tp!755670 e!1509203)))

(declare-fun b!2363175 () Bool)

(declare-fun tp!755730 () Bool)

(declare-fun tp!755729 () Bool)

(assert (=> b!2363175 (= e!1509203 (and tp!755730 tp!755729))))

(declare-fun b!2363172 () Bool)

(assert (=> b!2363172 (= e!1509203 tp_is_empty!11249)))

(declare-fun b!2363173 () Bool)

(declare-fun tp!755731 () Bool)

(declare-fun tp!755732 () Bool)

(assert (=> b!2363173 (= e!1509203 (and tp!755731 tp!755732))))

(declare-fun b!2363174 () Bool)

(declare-fun tp!755728 () Bool)

(assert (=> b!2363174 (= e!1509203 tp!755728)))

(assert (= (and b!2362823 (is-ElementMatch!6918 (regTwo!14348 r!13927))) b!2363172))

(assert (= (and b!2362823 (is-Concat!11554 (regTwo!14348 r!13927))) b!2363173))

(assert (= (and b!2362823 (is-Star!6918 (regTwo!14348 r!13927))) b!2363174))

(assert (= (and b!2362823 (is-Union!6918 (regTwo!14348 r!13927))) b!2363175))

(declare-fun e!1509204 () Bool)

(assert (=> b!2362817 (= tp!755672 e!1509204)))

(declare-fun b!2363179 () Bool)

(declare-fun tp!755735 () Bool)

(declare-fun tp!755734 () Bool)

(assert (=> b!2363179 (= e!1509204 (and tp!755735 tp!755734))))

(declare-fun b!2363176 () Bool)

(assert (=> b!2363176 (= e!1509204 tp_is_empty!11249)))

(declare-fun b!2363177 () Bool)

(declare-fun tp!755736 () Bool)

(declare-fun tp!755737 () Bool)

(assert (=> b!2363177 (= e!1509204 (and tp!755736 tp!755737))))

(declare-fun b!2363178 () Bool)

(declare-fun tp!755733 () Bool)

(assert (=> b!2363178 (= e!1509204 tp!755733)))

(assert (= (and b!2362817 (is-ElementMatch!6918 (h!33377 l!9164))) b!2363176))

(assert (= (and b!2362817 (is-Concat!11554 (h!33377 l!9164))) b!2363177))

(assert (= (and b!2362817 (is-Star!6918 (h!33377 l!9164))) b!2363178))

(assert (= (and b!2362817 (is-Union!6918 (h!33377 l!9164))) b!2363179))

(declare-fun b!2363184 () Bool)

(declare-fun e!1509207 () Bool)

(declare-fun tp!755742 () Bool)

(declare-fun tp!755743 () Bool)

(assert (=> b!2363184 (= e!1509207 (and tp!755742 tp!755743))))

(assert (=> b!2362817 (= tp!755668 e!1509207)))

(assert (= (and b!2362817 (is-Cons!27976 (t!208051 l!9164))) b!2363184))

(declare-fun e!1509208 () Bool)

(assert (=> b!2362821 (= tp!755669 e!1509208)))

(declare-fun b!2363188 () Bool)

(declare-fun tp!755746 () Bool)

(declare-fun tp!755745 () Bool)

(assert (=> b!2363188 (= e!1509208 (and tp!755746 tp!755745))))

(declare-fun b!2363185 () Bool)

(assert (=> b!2363185 (= e!1509208 tp_is_empty!11249)))

(declare-fun b!2363186 () Bool)

(declare-fun tp!755747 () Bool)

(declare-fun tp!755748 () Bool)

(assert (=> b!2363186 (= e!1509208 (and tp!755747 tp!755748))))

(declare-fun b!2363187 () Bool)

(declare-fun tp!755744 () Bool)

(assert (=> b!2363187 (= e!1509208 tp!755744)))

(assert (= (and b!2362821 (is-ElementMatch!6918 (reg!7247 r!13927))) b!2363185))

(assert (= (and b!2362821 (is-Concat!11554 (reg!7247 r!13927))) b!2363186))

(assert (= (and b!2362821 (is-Star!6918 (reg!7247 r!13927))) b!2363187))

(assert (= (and b!2362821 (is-Union!6918 (reg!7247 r!13927))) b!2363188))

(declare-fun b_lambda!73813 () Bool)

(assert (= b_lambda!73811 (or start!231916 b_lambda!73813)))

(declare-fun bs!460639 () Bool)

(declare-fun d!694310 () Bool)

(assert (= bs!460639 (and d!694310 start!231916)))

(assert (=> bs!460639 (= (dynLambda!12054 lambda!86976 (h!33377 l!9164)) (validRegex!2648 (h!33377 l!9164)))))

(declare-fun m!2774715 () Bool)

(assert (=> bs!460639 m!2774715))

(assert (=> b!2362877 d!694310))

(push 1)

(assert (not d!694288))

(assert (not bm!143724))

(assert (not b!2363135))

(assert (not d!694298))

(assert (not b!2362907))

(assert (not d!694302))

(assert (not b_lambda!73813))

(assert (not b!2363107))

(assert (not b!2362912))

(assert (not bm!143737))

(assert (not bm!143716))

(assert (not b!2363111))

(assert (not b!2363141))

(assert (not b!2363179))

(assert (not b!2362988))

(assert (not b!2363186))

(assert (not b!2363178))

(assert (not d!694286))

(assert (not b!2363171))

(assert (not b!2363169))

(assert (not b!2363184))

(assert (not b!2363161))

(assert (not b!2363112))

(assert (not b!2362878))

(assert (not b!2363174))

(assert (not b!2363177))

(assert (not b!2363143))

(assert (not b!2363149))

(assert (not b!2363069))

(assert (not b!2363165))

(assert (not b!2363142))

(assert (not b!2363139))

(assert (not b!2363175))

(assert (not b!2363187))

(assert (not bm!143736))

(assert (not bm!143723))

(assert (not b!2363162))

(assert (not b!2363170))

(assert (not b!2363188))

(assert (not bs!460639))

(assert (not b!2363167))

(assert (not b!2363163))

(assert (not b!2362986))

(assert (not d!694276))

(assert (not d!694292))

(assert (not b!2362914))

(assert (not b!2362917))

(assert (not b!2363109))

(assert (not b!2363108))

(assert (not b!2362916))

(assert (not d!694282))

(assert (not b!2363173))

(assert (not d!694296))

(assert (not b!2363138))

(assert (not d!694284))

(assert (not b!2362920))

(assert (not b!2363113))

(assert (not b!2363140))

(assert (not b!2363166))

(assert tp_is_empty!11249)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

