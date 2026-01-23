; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89664 () Bool)

(assert start!89664)

(declare-fun b!1029921 () Bool)

(assert (=> b!1029921 true))

(assert (=> b!1029921 true))

(declare-fun lambda!36916 () Int)

(declare-fun lambda!36915 () Int)

(assert (=> b!1029921 (not (= lambda!36916 lambda!36915))))

(assert (=> b!1029921 true))

(assert (=> b!1029921 true))

(declare-fun b!1029910 () Bool)

(declare-fun res!462727 () Bool)

(declare-fun e!656681 () Bool)

(assert (=> b!1029910 (=> res!462727 e!656681)))

(assert (=> b!1029910 (= res!462727 false)))

(declare-fun b!1029911 () Bool)

(declare-fun e!656678 () Bool)

(declare-fun e!656682 () Bool)

(assert (=> b!1029911 (= e!656678 (not e!656682))))

(declare-fun res!462720 () Bool)

(assert (=> b!1029911 (=> res!462720 e!656682)))

(declare-fun lt!355869 () Bool)

(declare-datatypes ((C!6282 0))(
  ( (C!6283 (val!3389 Int)) )
))
(declare-datatypes ((Regex!2856 0))(
  ( (ElementMatch!2856 (c!170825 C!6282)) (Concat!4689 (regOne!6224 Regex!2856) (regTwo!6224 Regex!2856)) (EmptyExpr!2856) (Star!2856 (reg!3185 Regex!2856)) (EmptyLang!2856) (Union!2856 (regOne!6225 Regex!2856) (regTwo!6225 Regex!2856)) )
))
(declare-fun r!15766 () Regex!2856)

(assert (=> b!1029911 (= res!462720 (or lt!355869 (and (is-Concat!4689 r!15766) (is-EmptyExpr!2856 (regOne!6224 r!15766))) (not (is-Concat!4689 r!15766)) (not (is-EmptyExpr!2856 (regTwo!6224 r!15766)))))))

(declare-datatypes ((List!10086 0))(
  ( (Nil!10070) (Cons!10070 (h!15471 C!6282) (t!101132 List!10086)) )
))
(declare-fun s!10566 () List!10086)

(declare-fun matchRSpec!655 (Regex!2856 List!10086) Bool)

(assert (=> b!1029911 (= lt!355869 (matchRSpec!655 r!15766 s!10566))))

(declare-fun matchR!1392 (Regex!2856 List!10086) Bool)

(assert (=> b!1029911 (= lt!355869 (matchR!1392 r!15766 s!10566))))

(declare-datatypes ((Unit!15387 0))(
  ( (Unit!15388) )
))
(declare-fun lt!355872 () Unit!15387)

(declare-fun mainMatchTheorem!655 (Regex!2856 List!10086) Unit!15387)

(assert (=> b!1029911 (= lt!355872 (mainMatchTheorem!655 r!15766 s!10566))))

(declare-fun b!1029912 () Bool)

(declare-fun ++!2764 (List!10086 List!10086) List!10086)

(assert (=> b!1029912 (= e!656681 (= (++!2764 Nil!10070 s!10566) s!10566))))

(declare-fun b!1029913 () Bool)

(declare-fun e!656680 () Bool)

(assert (=> b!1029913 (= e!656680 e!656681)))

(declare-fun res!462726 () Bool)

(assert (=> b!1029913 (=> res!462726 e!656681)))

(declare-fun lt!355873 () Bool)

(declare-fun lt!355870 () Bool)

(assert (=> b!1029913 (= res!462726 (or (not lt!355873) (not lt!355870)))))

(assert (=> b!1029913 (= lt!355870 lt!355873)))

(declare-fun lt!355867 () Regex!2856)

(assert (=> b!1029913 (= lt!355873 (matchR!1392 lt!355867 s!10566))))

(assert (=> b!1029913 (= lt!355870 (matchR!1392 (regOne!6224 r!15766) s!10566))))

(declare-fun removeUselessConcat!413 (Regex!2856) Regex!2856)

(assert (=> b!1029913 (= lt!355867 (removeUselessConcat!413 (regOne!6224 r!15766)))))

(declare-fun lt!355874 () Unit!15387)

(declare-fun lemmaRemoveUselessConcatSound!251 (Regex!2856 List!10086) Unit!15387)

(assert (=> b!1029913 (= lt!355874 (lemmaRemoveUselessConcatSound!251 (regOne!6224 r!15766) s!10566))))

(declare-fun b!1029914 () Bool)

(declare-fun e!656679 () Bool)

(declare-fun tp!312111 () Bool)

(assert (=> b!1029914 (= e!656679 tp!312111)))

(declare-fun b!1029915 () Bool)

(declare-fun tp!312112 () Bool)

(declare-fun tp!312109 () Bool)

(assert (=> b!1029915 (= e!656679 (and tp!312112 tp!312109))))

(declare-fun b!1029916 () Bool)

(declare-fun tp!312110 () Bool)

(declare-fun tp!312114 () Bool)

(assert (=> b!1029916 (= e!656679 (and tp!312110 tp!312114))))

(declare-fun b!1029917 () Bool)

(declare-fun res!462721 () Bool)

(assert (=> b!1029917 (=> res!462721 e!656681)))

(declare-fun isPrefix!1014 (List!10086 List!10086) Bool)

(assert (=> b!1029917 (= res!462721 (not (isPrefix!1014 Nil!10070 s!10566)))))

(declare-fun res!462723 () Bool)

(assert (=> start!89664 (=> (not res!462723) (not e!656678))))

(declare-fun validRegex!1325 (Regex!2856) Bool)

(assert (=> start!89664 (= res!462723 (validRegex!1325 r!15766))))

(assert (=> start!89664 e!656678))

(assert (=> start!89664 e!656679))

(declare-fun e!656683 () Bool)

(assert (=> start!89664 e!656683))

(declare-fun b!1029918 () Bool)

(declare-fun res!462722 () Bool)

(assert (=> b!1029918 (=> res!462722 e!656681)))

(assert (=> b!1029918 (= res!462722 (not (= (++!2764 s!10566 Nil!10070) s!10566)))))

(declare-fun b!1029919 () Bool)

(declare-fun res!462719 () Bool)

(assert (=> b!1029919 (=> res!462719 e!656680)))

(declare-datatypes ((tuple2!11486 0))(
  ( (tuple2!11487 (_1!6569 List!10086) (_2!6569 List!10086)) )
))
(declare-datatypes ((Option!2385 0))(
  ( (None!2384) (Some!2384 (v!19801 tuple2!11486)) )
))
(declare-fun lt!355866 () Option!2385)

(declare-fun isEmpty!6449 (Option!2385) Bool)

(assert (=> b!1029919 (= res!462719 (not (isEmpty!6449 lt!355866)))))

(declare-fun b!1029920 () Bool)

(declare-fun res!462725 () Bool)

(assert (=> b!1029920 (=> res!462725 e!656681)))

(assert (=> b!1029920 (= res!462725 (not (validRegex!1325 (regOne!6224 r!15766))))))

(assert (=> b!1029921 (= e!656682 e!656680)))

(declare-fun res!462724 () Bool)

(assert (=> b!1029921 (=> res!462724 e!656680)))

(declare-fun isEmpty!6450 (List!10086) Bool)

(assert (=> b!1029921 (= res!462724 (isEmpty!6450 s!10566))))

(declare-fun Exists!583 (Int) Bool)

(assert (=> b!1029921 (= (Exists!583 lambda!36915) (Exists!583 lambda!36916))))

(declare-fun lt!355871 () Unit!15387)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!279 (Regex!2856 Regex!2856 List!10086) Unit!15387)

(assert (=> b!1029921 (= lt!355871 (lemmaExistCutMatchRandMatchRSpecEquivalent!279 (regOne!6224 r!15766) EmptyExpr!2856 s!10566))))

(declare-fun isDefined!2027 (Option!2385) Bool)

(assert (=> b!1029921 (= (isDefined!2027 lt!355866) (Exists!583 lambda!36915))))

(declare-fun findConcatSeparation!491 (Regex!2856 Regex!2856 List!10086 List!10086 List!10086) Option!2385)

(assert (=> b!1029921 (= lt!355866 (findConcatSeparation!491 (regOne!6224 r!15766) EmptyExpr!2856 Nil!10070 s!10566 s!10566))))

(declare-fun lt!355868 () Unit!15387)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!491 (Regex!2856 Regex!2856 List!10086) Unit!15387)

(assert (=> b!1029921 (= lt!355868 (lemmaFindConcatSeparationEquivalentToExists!491 (regOne!6224 r!15766) EmptyExpr!2856 s!10566))))

(declare-fun b!1029922 () Bool)

(declare-fun tp_is_empty!5355 () Bool)

(assert (=> b!1029922 (= e!656679 tp_is_empty!5355)))

(declare-fun b!1029923 () Bool)

(declare-fun tp!312113 () Bool)

(assert (=> b!1029923 (= e!656683 (and tp_is_empty!5355 tp!312113))))

(assert (= (and start!89664 res!462723) b!1029911))

(assert (= (and b!1029911 (not res!462720)) b!1029921))

(assert (= (and b!1029921 (not res!462724)) b!1029919))

(assert (= (and b!1029919 (not res!462719)) b!1029913))

(assert (= (and b!1029913 (not res!462726)) b!1029920))

(assert (= (and b!1029920 (not res!462725)) b!1029910))

(assert (= (and b!1029910 (not res!462727)) b!1029918))

(assert (= (and b!1029918 (not res!462722)) b!1029917))

(assert (= (and b!1029917 (not res!462721)) b!1029912))

(assert (= (and start!89664 (is-ElementMatch!2856 r!15766)) b!1029922))

(assert (= (and start!89664 (is-Concat!4689 r!15766)) b!1029915))

(assert (= (and start!89664 (is-Star!2856 r!15766)) b!1029914))

(assert (= (and start!89664 (is-Union!2856 r!15766)) b!1029916))

(assert (= (and start!89664 (is-Cons!10070 s!10566)) b!1029923))

(declare-fun m!1204061 () Bool)

(assert (=> b!1029917 m!1204061))

(declare-fun m!1204063 () Bool)

(assert (=> b!1029920 m!1204063))

(declare-fun m!1204065 () Bool)

(assert (=> b!1029913 m!1204065))

(declare-fun m!1204067 () Bool)

(assert (=> b!1029913 m!1204067))

(declare-fun m!1204069 () Bool)

(assert (=> b!1029913 m!1204069))

(declare-fun m!1204071 () Bool)

(assert (=> b!1029913 m!1204071))

(declare-fun m!1204073 () Bool)

(assert (=> b!1029921 m!1204073))

(declare-fun m!1204075 () Bool)

(assert (=> b!1029921 m!1204075))

(declare-fun m!1204077 () Bool)

(assert (=> b!1029921 m!1204077))

(declare-fun m!1204079 () Bool)

(assert (=> b!1029921 m!1204079))

(declare-fun m!1204081 () Bool)

(assert (=> b!1029921 m!1204081))

(declare-fun m!1204083 () Bool)

(assert (=> b!1029921 m!1204083))

(assert (=> b!1029921 m!1204081))

(declare-fun m!1204085 () Bool)

(assert (=> b!1029921 m!1204085))

(declare-fun m!1204087 () Bool)

(assert (=> b!1029918 m!1204087))

(declare-fun m!1204089 () Bool)

(assert (=> b!1029919 m!1204089))

(declare-fun m!1204091 () Bool)

(assert (=> b!1029911 m!1204091))

(declare-fun m!1204093 () Bool)

(assert (=> b!1029911 m!1204093))

(declare-fun m!1204095 () Bool)

(assert (=> b!1029911 m!1204095))

(declare-fun m!1204097 () Bool)

(assert (=> start!89664 m!1204097))

(declare-fun m!1204099 () Bool)

(assert (=> b!1029912 m!1204099))

(push 1)

(assert (not b!1029911))

(assert (not b!1029916))

(assert (not b!1029912))

(assert tp_is_empty!5355)

(assert (not b!1029919))

(assert (not b!1029918))

(assert (not b!1029913))

(assert (not b!1029915))

(assert (not b!1029917))

(assert (not b!1029923))

(assert (not b!1029920))

(assert (not start!89664))

(assert (not b!1029914))

(assert (not b!1029921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1029995 () Bool)

(declare-fun res!462776 () Bool)

(declare-fun e!656716 () Bool)

(assert (=> b!1029995 (=> (not res!462776) (not e!656716))))

(declare-fun head!1906 (List!10086) C!6282)

(assert (=> b!1029995 (= res!462776 (= (head!1906 Nil!10070) (head!1906 s!10566)))))

(declare-fun d!295492 () Bool)

(declare-fun e!656714 () Bool)

(assert (=> d!295492 e!656714))

(declare-fun res!462777 () Bool)

(assert (=> d!295492 (=> res!462777 e!656714)))

(declare-fun lt!355904 () Bool)

(assert (=> d!295492 (= res!462777 (not lt!355904))))

(declare-fun e!656715 () Bool)

(assert (=> d!295492 (= lt!355904 e!656715)))

(declare-fun res!462778 () Bool)

(assert (=> d!295492 (=> res!462778 e!656715)))

(assert (=> d!295492 (= res!462778 (is-Nil!10070 Nil!10070))))

(assert (=> d!295492 (= (isPrefix!1014 Nil!10070 s!10566) lt!355904)))

(declare-fun b!1029994 () Bool)

(assert (=> b!1029994 (= e!656715 e!656716)))

(declare-fun res!462775 () Bool)

(assert (=> b!1029994 (=> (not res!462775) (not e!656716))))

(assert (=> b!1029994 (= res!462775 (not (is-Nil!10070 s!10566)))))

(declare-fun b!1029997 () Bool)

(declare-fun size!7991 (List!10086) Int)

(assert (=> b!1029997 (= e!656714 (>= (size!7991 s!10566) (size!7991 Nil!10070)))))

(declare-fun b!1029996 () Bool)

(declare-fun tail!1468 (List!10086) List!10086)

(assert (=> b!1029996 (= e!656716 (isPrefix!1014 (tail!1468 Nil!10070) (tail!1468 s!10566)))))

(assert (= (and d!295492 (not res!462778)) b!1029994))

(assert (= (and b!1029994 res!462775) b!1029995))

(assert (= (and b!1029995 res!462776) b!1029996))

(assert (= (and d!295492 (not res!462777)) b!1029997))

(declare-fun m!1204141 () Bool)

(assert (=> b!1029995 m!1204141))

(declare-fun m!1204143 () Bool)

(assert (=> b!1029995 m!1204143))

(declare-fun m!1204145 () Bool)

(assert (=> b!1029997 m!1204145))

(declare-fun m!1204147 () Bool)

(assert (=> b!1029997 m!1204147))

(declare-fun m!1204149 () Bool)

(assert (=> b!1029996 m!1204149))

(declare-fun m!1204151 () Bool)

(assert (=> b!1029996 m!1204151))

(assert (=> b!1029996 m!1204149))

(assert (=> b!1029996 m!1204151))

(declare-fun m!1204153 () Bool)

(assert (=> b!1029996 m!1204153))

(assert (=> b!1029917 d!295492))

(declare-fun bs!247244 () Bool)

(declare-fun b!1030047 () Bool)

(assert (= bs!247244 (and b!1030047 b!1029921)))

(declare-fun lambda!36929 () Int)

(assert (=> bs!247244 (not (= lambda!36929 lambda!36915))))

(assert (=> bs!247244 (not (= lambda!36929 lambda!36916))))

(assert (=> b!1030047 true))

(assert (=> b!1030047 true))

(declare-fun bs!247245 () Bool)

(declare-fun b!1030049 () Bool)

(assert (= bs!247245 (and b!1030049 b!1029921)))

(declare-fun lambda!36930 () Int)

(assert (=> bs!247245 (not (= lambda!36930 lambda!36915))))

(assert (=> bs!247245 (= (= (regTwo!6224 r!15766) EmptyExpr!2856) (= lambda!36930 lambda!36916))))

(declare-fun bs!247246 () Bool)

(assert (= bs!247246 (and b!1030049 b!1030047)))

(assert (=> bs!247246 (not (= lambda!36930 lambda!36929))))

(assert (=> b!1030049 true))

(assert (=> b!1030049 true))

(declare-fun b!1030042 () Bool)

(declare-fun e!656745 () Bool)

(declare-fun e!656746 () Bool)

(assert (=> b!1030042 (= e!656745 e!656746)))

(declare-fun res!462800 () Bool)

(assert (=> b!1030042 (= res!462800 (not (is-EmptyLang!2856 r!15766)))))

(assert (=> b!1030042 (=> (not res!462800) (not e!656746))))

(declare-fun d!295494 () Bool)

(declare-fun c!170840 () Bool)

(assert (=> d!295494 (= c!170840 (is-EmptyExpr!2856 r!15766))))

(assert (=> d!295494 (= (matchRSpec!655 r!15766 s!10566) e!656745)))

(declare-fun b!1030043 () Bool)

(declare-fun e!656749 () Bool)

(assert (=> b!1030043 (= e!656749 (= s!10566 (Cons!10070 (c!170825 r!15766) Nil!10070)))))

(declare-fun b!1030044 () Bool)

(declare-fun e!656743 () Bool)

(assert (=> b!1030044 (= e!656743 (matchRSpec!655 (regTwo!6225 r!15766) s!10566))))

(declare-fun b!1030045 () Bool)

(declare-fun c!170841 () Bool)

(assert (=> b!1030045 (= c!170841 (is-Union!2856 r!15766))))

(declare-fun e!656747 () Bool)

(assert (=> b!1030045 (= e!656749 e!656747)))

(declare-fun b!1030046 () Bool)

(declare-fun c!170839 () Bool)

(assert (=> b!1030046 (= c!170839 (is-ElementMatch!2856 r!15766))))

(assert (=> b!1030046 (= e!656746 e!656749)))

(declare-fun e!656748 () Bool)

(declare-fun call!70940 () Bool)

(assert (=> b!1030047 (= e!656748 call!70940)))

(declare-fun b!1030048 () Bool)

(declare-fun call!70941 () Bool)

(assert (=> b!1030048 (= e!656745 call!70941)))

(declare-fun bm!70935 () Bool)

(assert (=> bm!70935 (= call!70941 (isEmpty!6450 s!10566))))

(declare-fun e!656744 () Bool)

(assert (=> b!1030049 (= e!656744 call!70940)))

(declare-fun b!1030050 () Bool)

(assert (=> b!1030050 (= e!656747 e!656744)))

(declare-fun c!170842 () Bool)

(assert (=> b!1030050 (= c!170842 (is-Star!2856 r!15766))))

(declare-fun b!1030051 () Bool)

(declare-fun res!462801 () Bool)

(assert (=> b!1030051 (=> res!462801 e!656748)))

(assert (=> b!1030051 (= res!462801 call!70941)))

(assert (=> b!1030051 (= e!656744 e!656748)))

(declare-fun bm!70936 () Bool)

(assert (=> bm!70936 (= call!70940 (Exists!583 (ite c!170842 lambda!36929 lambda!36930)))))

(declare-fun b!1030052 () Bool)

(assert (=> b!1030052 (= e!656747 e!656743)))

(declare-fun res!462799 () Bool)

(assert (=> b!1030052 (= res!462799 (matchRSpec!655 (regOne!6225 r!15766) s!10566))))

(assert (=> b!1030052 (=> res!462799 e!656743)))

(assert (= (and d!295494 c!170840) b!1030048))

(assert (= (and d!295494 (not c!170840)) b!1030042))

(assert (= (and b!1030042 res!462800) b!1030046))

(assert (= (and b!1030046 c!170839) b!1030043))

(assert (= (and b!1030046 (not c!170839)) b!1030045))

(assert (= (and b!1030045 c!170841) b!1030052))

(assert (= (and b!1030045 (not c!170841)) b!1030050))

(assert (= (and b!1030052 (not res!462799)) b!1030044))

(assert (= (and b!1030050 c!170842) b!1030051))

(assert (= (and b!1030050 (not c!170842)) b!1030049))

(assert (= (and b!1030051 (not res!462801)) b!1030047))

(assert (= (or b!1030047 b!1030049) bm!70936))

(assert (= (or b!1030048 b!1030051) bm!70935))

(declare-fun m!1204155 () Bool)

(assert (=> b!1030044 m!1204155))

(assert (=> bm!70935 m!1204083))

(declare-fun m!1204157 () Bool)

(assert (=> bm!70936 m!1204157))

(declare-fun m!1204159 () Bool)

(assert (=> b!1030052 m!1204159))

(assert (=> b!1029911 d!295494))

(declare-fun b!1030096 () Bool)

(declare-fun res!462833 () Bool)

(declare-fun e!656780 () Bool)

(assert (=> b!1030096 (=> (not res!462833) (not e!656780))))

(assert (=> b!1030096 (= res!462833 (isEmpty!6450 (tail!1468 s!10566)))))

(declare-fun b!1030097 () Bool)

(declare-fun res!462835 () Bool)

(assert (=> b!1030097 (=> (not res!462835) (not e!656780))))

(declare-fun call!70953 () Bool)

(assert (=> b!1030097 (= res!462835 (not call!70953))))

(declare-fun b!1030098 () Bool)

(declare-fun res!462829 () Bool)

(declare-fun e!656779 () Bool)

(assert (=> b!1030098 (=> res!462829 e!656779)))

(assert (=> b!1030098 (= res!462829 e!656780)))

(declare-fun res!462834 () Bool)

(assert (=> b!1030098 (=> (not res!462834) (not e!656780))))

(declare-fun lt!355907 () Bool)

(assert (=> b!1030098 (= res!462834 lt!355907)))

(declare-fun d!295500 () Bool)

(declare-fun e!656777 () Bool)

(assert (=> d!295500 e!656777))

(declare-fun c!170853 () Bool)

(assert (=> d!295500 (= c!170853 (is-EmptyExpr!2856 r!15766))))

(declare-fun e!656778 () Bool)

(assert (=> d!295500 (= lt!355907 e!656778)))

(declare-fun c!170851 () Bool)

(assert (=> d!295500 (= c!170851 (isEmpty!6450 s!10566))))

(assert (=> d!295500 (validRegex!1325 r!15766)))

(assert (=> d!295500 (= (matchR!1392 r!15766 s!10566) lt!355907)))

(declare-fun b!1030099 () Bool)

(declare-fun nullable!951 (Regex!2856) Bool)

(assert (=> b!1030099 (= e!656778 (nullable!951 r!15766))))

(declare-fun b!1030100 () Bool)

(declare-fun derivativeStep!751 (Regex!2856 C!6282) Regex!2856)

(assert (=> b!1030100 (= e!656778 (matchR!1392 (derivativeStep!751 r!15766 (head!1906 s!10566)) (tail!1468 s!10566)))))

(declare-fun b!1030101 () Bool)

(declare-fun e!656781 () Bool)

(assert (=> b!1030101 (= e!656779 e!656781)))

(declare-fun res!462836 () Bool)

(assert (=> b!1030101 (=> (not res!462836) (not e!656781))))

(assert (=> b!1030101 (= res!462836 (not lt!355907))))

(declare-fun b!1030102 () Bool)

(declare-fun res!462831 () Bool)

(declare-fun e!656783 () Bool)

(assert (=> b!1030102 (=> res!462831 e!656783)))

(assert (=> b!1030102 (= res!462831 (not (isEmpty!6450 (tail!1468 s!10566))))))

(declare-fun b!1030103 () Bool)

(declare-fun e!656782 () Bool)

(assert (=> b!1030103 (= e!656777 e!656782)))

(declare-fun c!170852 () Bool)

(assert (=> b!1030103 (= c!170852 (is-EmptyLang!2856 r!15766))))

(declare-fun b!1030104 () Bool)

(assert (=> b!1030104 (= e!656777 (= lt!355907 call!70953))))

(declare-fun b!1030105 () Bool)

(declare-fun res!462832 () Bool)

(assert (=> b!1030105 (=> res!462832 e!656779)))

(assert (=> b!1030105 (= res!462832 (not (is-ElementMatch!2856 r!15766)))))

(assert (=> b!1030105 (= e!656782 e!656779)))

(declare-fun b!1030106 () Bool)

(assert (=> b!1030106 (= e!656783 (not (= (head!1906 s!10566) (c!170825 r!15766))))))

(declare-fun b!1030107 () Bool)

(assert (=> b!1030107 (= e!656780 (= (head!1906 s!10566) (c!170825 r!15766)))))

(declare-fun bm!70948 () Bool)

(assert (=> bm!70948 (= call!70953 (isEmpty!6450 s!10566))))

(declare-fun b!1030108 () Bool)

(assert (=> b!1030108 (= e!656781 e!656783)))

(declare-fun res!462830 () Bool)

(assert (=> b!1030108 (=> res!462830 e!656783)))

(assert (=> b!1030108 (= res!462830 call!70953)))

(declare-fun b!1030109 () Bool)

(assert (=> b!1030109 (= e!656782 (not lt!355907))))

(assert (= (and d!295500 c!170851) b!1030099))

(assert (= (and d!295500 (not c!170851)) b!1030100))

(assert (= (and d!295500 c!170853) b!1030104))

(assert (= (and d!295500 (not c!170853)) b!1030103))

(assert (= (and b!1030103 c!170852) b!1030109))

(assert (= (and b!1030103 (not c!170852)) b!1030105))

(assert (= (and b!1030105 (not res!462832)) b!1030098))

(assert (= (and b!1030098 res!462834) b!1030097))

(assert (= (and b!1030097 res!462835) b!1030096))

(assert (= (and b!1030096 res!462833) b!1030107))

(assert (= (and b!1030098 (not res!462829)) b!1030101))

(assert (= (and b!1030101 res!462836) b!1030108))

(assert (= (and b!1030108 (not res!462830)) b!1030102))

(assert (= (and b!1030102 (not res!462831)) b!1030106))

(assert (= (or b!1030104 b!1030097 b!1030108) bm!70948))

(assert (=> b!1030107 m!1204143))

(assert (=> b!1030106 m!1204143))

(assert (=> b!1030096 m!1204151))

(assert (=> b!1030096 m!1204151))

(declare-fun m!1204167 () Bool)

(assert (=> b!1030096 m!1204167))

(assert (=> d!295500 m!1204083))

(assert (=> d!295500 m!1204097))

(declare-fun m!1204169 () Bool)

(assert (=> b!1030099 m!1204169))

(assert (=> bm!70948 m!1204083))

(assert (=> b!1030100 m!1204143))

(assert (=> b!1030100 m!1204143))

(declare-fun m!1204171 () Bool)

(assert (=> b!1030100 m!1204171))

(assert (=> b!1030100 m!1204151))

(assert (=> b!1030100 m!1204171))

(assert (=> b!1030100 m!1204151))

(declare-fun m!1204173 () Bool)

(assert (=> b!1030100 m!1204173))

(assert (=> b!1030102 m!1204151))

(assert (=> b!1030102 m!1204151))

(assert (=> b!1030102 m!1204167))

(assert (=> b!1029911 d!295500))

(declare-fun d!295504 () Bool)

(assert (=> d!295504 (= (matchR!1392 r!15766 s!10566) (matchRSpec!655 r!15766 s!10566))))

(declare-fun lt!355910 () Unit!15387)

(declare-fun choose!6555 (Regex!2856 List!10086) Unit!15387)

(assert (=> d!295504 (= lt!355910 (choose!6555 r!15766 s!10566))))

(assert (=> d!295504 (validRegex!1325 r!15766)))

(assert (=> d!295504 (= (mainMatchTheorem!655 r!15766 s!10566) lt!355910)))

(declare-fun bs!247247 () Bool)

(assert (= bs!247247 d!295504))

(assert (=> bs!247247 m!1204093))

(assert (=> bs!247247 m!1204091))

(declare-fun m!1204175 () Bool)

(assert (=> bs!247247 m!1204175))

(assert (=> bs!247247 m!1204097))

(assert (=> b!1029911 d!295504))

(declare-fun b!1030120 () Bool)

(declare-fun res!462841 () Bool)

(declare-fun e!656788 () Bool)

(assert (=> b!1030120 (=> (not res!462841) (not e!656788))))

(declare-fun lt!355913 () List!10086)

(assert (=> b!1030120 (= res!462841 (= (size!7991 lt!355913) (+ (size!7991 s!10566) (size!7991 Nil!10070))))))

(declare-fun b!1030118 () Bool)

(declare-fun e!656789 () List!10086)

(assert (=> b!1030118 (= e!656789 Nil!10070)))

(declare-fun d!295506 () Bool)

(assert (=> d!295506 e!656788))

(declare-fun res!462842 () Bool)

(assert (=> d!295506 (=> (not res!462842) (not e!656788))))

(declare-fun content!1445 (List!10086) (Set C!6282))

(assert (=> d!295506 (= res!462842 (= (content!1445 lt!355913) (set.union (content!1445 s!10566) (content!1445 Nil!10070))))))

(assert (=> d!295506 (= lt!355913 e!656789)))

(declare-fun c!170856 () Bool)

(assert (=> d!295506 (= c!170856 (is-Nil!10070 s!10566))))

(assert (=> d!295506 (= (++!2764 s!10566 Nil!10070) lt!355913)))

(declare-fun b!1030121 () Bool)

(assert (=> b!1030121 (= e!656788 (or (not (= Nil!10070 Nil!10070)) (= lt!355913 s!10566)))))

(declare-fun b!1030119 () Bool)

(assert (=> b!1030119 (= e!656789 (Cons!10070 (h!15471 s!10566) (++!2764 (t!101132 s!10566) Nil!10070)))))

(assert (= (and d!295506 c!170856) b!1030118))

(assert (= (and d!295506 (not c!170856)) b!1030119))

(assert (= (and d!295506 res!462842) b!1030120))

(assert (= (and b!1030120 res!462841) b!1030121))

(declare-fun m!1204177 () Bool)

(assert (=> b!1030120 m!1204177))

(assert (=> b!1030120 m!1204145))

(assert (=> b!1030120 m!1204147))

(declare-fun m!1204179 () Bool)

(assert (=> d!295506 m!1204179))

(declare-fun m!1204181 () Bool)

(assert (=> d!295506 m!1204181))

(declare-fun m!1204183 () Bool)

(assert (=> d!295506 m!1204183))

(declare-fun m!1204185 () Bool)

(assert (=> b!1030119 m!1204185))

(assert (=> b!1029918 d!295506))

(declare-fun b!1030122 () Bool)

(declare-fun res!462847 () Bool)

(declare-fun e!656793 () Bool)

(assert (=> b!1030122 (=> (not res!462847) (not e!656793))))

(assert (=> b!1030122 (= res!462847 (isEmpty!6450 (tail!1468 s!10566)))))

(declare-fun b!1030123 () Bool)

(declare-fun res!462849 () Bool)

(assert (=> b!1030123 (=> (not res!462849) (not e!656793))))

(declare-fun call!70954 () Bool)

(assert (=> b!1030123 (= res!462849 (not call!70954))))

(declare-fun b!1030124 () Bool)

(declare-fun res!462843 () Bool)

(declare-fun e!656792 () Bool)

(assert (=> b!1030124 (=> res!462843 e!656792)))

(assert (=> b!1030124 (= res!462843 e!656793)))

(declare-fun res!462848 () Bool)

(assert (=> b!1030124 (=> (not res!462848) (not e!656793))))

(declare-fun lt!355914 () Bool)

(assert (=> b!1030124 (= res!462848 lt!355914)))

(declare-fun d!295508 () Bool)

(declare-fun e!656790 () Bool)

(assert (=> d!295508 e!656790))

(declare-fun c!170859 () Bool)

(assert (=> d!295508 (= c!170859 (is-EmptyExpr!2856 lt!355867))))

(declare-fun e!656791 () Bool)

(assert (=> d!295508 (= lt!355914 e!656791)))

(declare-fun c!170857 () Bool)

(assert (=> d!295508 (= c!170857 (isEmpty!6450 s!10566))))

(assert (=> d!295508 (validRegex!1325 lt!355867)))

(assert (=> d!295508 (= (matchR!1392 lt!355867 s!10566) lt!355914)))

(declare-fun b!1030125 () Bool)

(assert (=> b!1030125 (= e!656791 (nullable!951 lt!355867))))

(declare-fun b!1030126 () Bool)

(assert (=> b!1030126 (= e!656791 (matchR!1392 (derivativeStep!751 lt!355867 (head!1906 s!10566)) (tail!1468 s!10566)))))

(declare-fun b!1030127 () Bool)

(declare-fun e!656794 () Bool)

(assert (=> b!1030127 (= e!656792 e!656794)))

(declare-fun res!462850 () Bool)

(assert (=> b!1030127 (=> (not res!462850) (not e!656794))))

(assert (=> b!1030127 (= res!462850 (not lt!355914))))

(declare-fun b!1030128 () Bool)

(declare-fun res!462845 () Bool)

(declare-fun e!656796 () Bool)

(assert (=> b!1030128 (=> res!462845 e!656796)))

(assert (=> b!1030128 (= res!462845 (not (isEmpty!6450 (tail!1468 s!10566))))))

(declare-fun b!1030129 () Bool)

(declare-fun e!656795 () Bool)

(assert (=> b!1030129 (= e!656790 e!656795)))

(declare-fun c!170858 () Bool)

(assert (=> b!1030129 (= c!170858 (is-EmptyLang!2856 lt!355867))))

(declare-fun b!1030130 () Bool)

(assert (=> b!1030130 (= e!656790 (= lt!355914 call!70954))))

(declare-fun b!1030131 () Bool)

(declare-fun res!462846 () Bool)

(assert (=> b!1030131 (=> res!462846 e!656792)))

(assert (=> b!1030131 (= res!462846 (not (is-ElementMatch!2856 lt!355867)))))

(assert (=> b!1030131 (= e!656795 e!656792)))

(declare-fun b!1030132 () Bool)

(assert (=> b!1030132 (= e!656796 (not (= (head!1906 s!10566) (c!170825 lt!355867))))))

(declare-fun b!1030133 () Bool)

(assert (=> b!1030133 (= e!656793 (= (head!1906 s!10566) (c!170825 lt!355867)))))

(declare-fun bm!70949 () Bool)

(assert (=> bm!70949 (= call!70954 (isEmpty!6450 s!10566))))

(declare-fun b!1030134 () Bool)

(assert (=> b!1030134 (= e!656794 e!656796)))

(declare-fun res!462844 () Bool)

(assert (=> b!1030134 (=> res!462844 e!656796)))

(assert (=> b!1030134 (= res!462844 call!70954)))

(declare-fun b!1030135 () Bool)

(assert (=> b!1030135 (= e!656795 (not lt!355914))))

(assert (= (and d!295508 c!170857) b!1030125))

(assert (= (and d!295508 (not c!170857)) b!1030126))

(assert (= (and d!295508 c!170859) b!1030130))

(assert (= (and d!295508 (not c!170859)) b!1030129))

(assert (= (and b!1030129 c!170858) b!1030135))

(assert (= (and b!1030129 (not c!170858)) b!1030131))

(assert (= (and b!1030131 (not res!462846)) b!1030124))

(assert (= (and b!1030124 res!462848) b!1030123))

(assert (= (and b!1030123 res!462849) b!1030122))

(assert (= (and b!1030122 res!462847) b!1030133))

(assert (= (and b!1030124 (not res!462843)) b!1030127))

(assert (= (and b!1030127 res!462850) b!1030134))

(assert (= (and b!1030134 (not res!462844)) b!1030128))

(assert (= (and b!1030128 (not res!462845)) b!1030132))

(assert (= (or b!1030130 b!1030123 b!1030134) bm!70949))

(assert (=> b!1030133 m!1204143))

(assert (=> b!1030132 m!1204143))

(assert (=> b!1030122 m!1204151))

(assert (=> b!1030122 m!1204151))

(assert (=> b!1030122 m!1204167))

(assert (=> d!295508 m!1204083))

(declare-fun m!1204187 () Bool)

(assert (=> d!295508 m!1204187))

(declare-fun m!1204189 () Bool)

(assert (=> b!1030125 m!1204189))

(assert (=> bm!70949 m!1204083))

(assert (=> b!1030126 m!1204143))

(assert (=> b!1030126 m!1204143))

(declare-fun m!1204191 () Bool)

(assert (=> b!1030126 m!1204191))

(assert (=> b!1030126 m!1204151))

(assert (=> b!1030126 m!1204191))

(assert (=> b!1030126 m!1204151))

(declare-fun m!1204193 () Bool)

(assert (=> b!1030126 m!1204193))

(assert (=> b!1030128 m!1204151))

(assert (=> b!1030128 m!1204151))

(assert (=> b!1030128 m!1204167))

(assert (=> b!1029913 d!295508))

(declare-fun b!1030140 () Bool)

(declare-fun res!462855 () Bool)

(declare-fun e!656802 () Bool)

(assert (=> b!1030140 (=> (not res!462855) (not e!656802))))

(assert (=> b!1030140 (= res!462855 (isEmpty!6450 (tail!1468 s!10566)))))

(declare-fun b!1030141 () Bool)

(declare-fun res!462857 () Bool)

(assert (=> b!1030141 (=> (not res!462857) (not e!656802))))

(declare-fun call!70955 () Bool)

(assert (=> b!1030141 (= res!462857 (not call!70955))))

(declare-fun b!1030142 () Bool)

(declare-fun res!462851 () Bool)

(declare-fun e!656801 () Bool)

(assert (=> b!1030142 (=> res!462851 e!656801)))

(assert (=> b!1030142 (= res!462851 e!656802)))

(declare-fun res!462856 () Bool)

(assert (=> b!1030142 (=> (not res!462856) (not e!656802))))

(declare-fun lt!355917 () Bool)

(assert (=> b!1030142 (= res!462856 lt!355917)))

(declare-fun d!295510 () Bool)

(declare-fun e!656799 () Bool)

(assert (=> d!295510 e!656799))

(declare-fun c!170864 () Bool)

(assert (=> d!295510 (= c!170864 (is-EmptyExpr!2856 (regOne!6224 r!15766)))))

(declare-fun e!656800 () Bool)

(assert (=> d!295510 (= lt!355917 e!656800)))

(declare-fun c!170862 () Bool)

(assert (=> d!295510 (= c!170862 (isEmpty!6450 s!10566))))

(assert (=> d!295510 (validRegex!1325 (regOne!6224 r!15766))))

(assert (=> d!295510 (= (matchR!1392 (regOne!6224 r!15766) s!10566) lt!355917)))

(declare-fun b!1030143 () Bool)

(assert (=> b!1030143 (= e!656800 (nullable!951 (regOne!6224 r!15766)))))

(declare-fun b!1030144 () Bool)

(assert (=> b!1030144 (= e!656800 (matchR!1392 (derivativeStep!751 (regOne!6224 r!15766) (head!1906 s!10566)) (tail!1468 s!10566)))))

(declare-fun b!1030145 () Bool)

(declare-fun e!656803 () Bool)

(assert (=> b!1030145 (= e!656801 e!656803)))

(declare-fun res!462858 () Bool)

(assert (=> b!1030145 (=> (not res!462858) (not e!656803))))

(assert (=> b!1030145 (= res!462858 (not lt!355917))))

(declare-fun b!1030146 () Bool)

(declare-fun res!462853 () Bool)

(declare-fun e!656805 () Bool)

(assert (=> b!1030146 (=> res!462853 e!656805)))

(assert (=> b!1030146 (= res!462853 (not (isEmpty!6450 (tail!1468 s!10566))))))

(declare-fun b!1030147 () Bool)

(declare-fun e!656804 () Bool)

(assert (=> b!1030147 (= e!656799 e!656804)))

(declare-fun c!170863 () Bool)

(assert (=> b!1030147 (= c!170863 (is-EmptyLang!2856 (regOne!6224 r!15766)))))

(declare-fun b!1030148 () Bool)

(assert (=> b!1030148 (= e!656799 (= lt!355917 call!70955))))

(declare-fun b!1030149 () Bool)

(declare-fun res!462854 () Bool)

(assert (=> b!1030149 (=> res!462854 e!656801)))

(assert (=> b!1030149 (= res!462854 (not (is-ElementMatch!2856 (regOne!6224 r!15766))))))

(assert (=> b!1030149 (= e!656804 e!656801)))

(declare-fun b!1030150 () Bool)

(assert (=> b!1030150 (= e!656805 (not (= (head!1906 s!10566) (c!170825 (regOne!6224 r!15766)))))))

(declare-fun b!1030151 () Bool)

(assert (=> b!1030151 (= e!656802 (= (head!1906 s!10566) (c!170825 (regOne!6224 r!15766))))))

(declare-fun bm!70950 () Bool)

(assert (=> bm!70950 (= call!70955 (isEmpty!6450 s!10566))))

(declare-fun b!1030152 () Bool)

(assert (=> b!1030152 (= e!656803 e!656805)))

(declare-fun res!462852 () Bool)

(assert (=> b!1030152 (=> res!462852 e!656805)))

(assert (=> b!1030152 (= res!462852 call!70955)))

(declare-fun b!1030153 () Bool)

(assert (=> b!1030153 (= e!656804 (not lt!355917))))

(assert (= (and d!295510 c!170862) b!1030143))

(assert (= (and d!295510 (not c!170862)) b!1030144))

(assert (= (and d!295510 c!170864) b!1030148))

(assert (= (and d!295510 (not c!170864)) b!1030147))

(assert (= (and b!1030147 c!170863) b!1030153))

(assert (= (and b!1030147 (not c!170863)) b!1030149))

(assert (= (and b!1030149 (not res!462854)) b!1030142))

(assert (= (and b!1030142 res!462856) b!1030141))

(assert (= (and b!1030141 res!462857) b!1030140))

(assert (= (and b!1030140 res!462855) b!1030151))

(assert (= (and b!1030142 (not res!462851)) b!1030145))

(assert (= (and b!1030145 res!462858) b!1030152))

(assert (= (and b!1030152 (not res!462852)) b!1030146))

(assert (= (and b!1030146 (not res!462853)) b!1030150))

(assert (= (or b!1030148 b!1030141 b!1030152) bm!70950))

(assert (=> b!1030151 m!1204143))

(assert (=> b!1030150 m!1204143))

(assert (=> b!1030140 m!1204151))

(assert (=> b!1030140 m!1204151))

(assert (=> b!1030140 m!1204167))

(assert (=> d!295510 m!1204083))

(assert (=> d!295510 m!1204063))

(declare-fun m!1204195 () Bool)

(assert (=> b!1030143 m!1204195))

(assert (=> bm!70950 m!1204083))

(assert (=> b!1030144 m!1204143))

(assert (=> b!1030144 m!1204143))

(declare-fun m!1204197 () Bool)

(assert (=> b!1030144 m!1204197))

(assert (=> b!1030144 m!1204151))

(assert (=> b!1030144 m!1204197))

(assert (=> b!1030144 m!1204151))

(declare-fun m!1204199 () Bool)

(assert (=> b!1030144 m!1204199))

(assert (=> b!1030146 m!1204151))

(assert (=> b!1030146 m!1204151))

(assert (=> b!1030146 m!1204167))

(assert (=> b!1029913 d!295510))

(declare-fun b!1030200 () Bool)

(declare-fun e!656833 () Regex!2856)

(declare-fun call!70968 () Regex!2856)

(assert (=> b!1030200 (= e!656833 call!70968)))

(declare-fun b!1030201 () Bool)

(declare-fun c!170882 () Bool)

(assert (=> b!1030201 (= c!170882 (is-Concat!4689 (regOne!6224 r!15766)))))

(declare-fun e!656830 () Regex!2856)

(assert (=> b!1030201 (= e!656833 e!656830)))

(declare-fun b!1030202 () Bool)

(declare-fun e!656835 () Regex!2856)

(declare-fun call!70972 () Regex!2856)

(assert (=> b!1030202 (= e!656835 (Star!2856 call!70972))))

(declare-fun bm!70963 () Bool)

(declare-fun c!170883 () Bool)

(declare-fun c!170881 () Bool)

(declare-fun c!170879 () Bool)

(declare-fun call!70970 () Regex!2856)

(assert (=> bm!70963 (= call!70970 (removeUselessConcat!413 (ite c!170879 (regTwo!6224 (regOne!6224 r!15766)) (ite c!170883 (regOne!6224 (regOne!6224 r!15766)) (ite c!170882 (regTwo!6224 (regOne!6224 r!15766)) (ite c!170881 (regTwo!6225 (regOne!6224 r!15766)) (reg!3185 (regOne!6224 r!15766))))))))))

(declare-fun bm!70964 () Bool)

(declare-fun call!70971 () Regex!2856)

(assert (=> bm!70964 (= call!70972 call!70971)))

(declare-fun bm!70965 () Bool)

(assert (=> bm!70965 (= call!70968 call!70970)))

(declare-fun b!1030203 () Bool)

(declare-fun call!70969 () Regex!2856)

(assert (=> b!1030203 (= e!656830 (Concat!4689 call!70969 call!70971))))

(declare-fun b!1030204 () Bool)

(declare-fun e!656834 () Regex!2856)

(assert (=> b!1030204 (= e!656830 e!656834)))

(assert (=> b!1030204 (= c!170881 (is-Union!2856 (regOne!6224 r!15766)))))

(declare-fun b!1030205 () Bool)

(declare-fun e!656832 () Regex!2856)

(assert (=> b!1030205 (= e!656832 e!656833)))

(assert (=> b!1030205 (= c!170883 (and (is-Concat!4689 (regOne!6224 r!15766)) (is-EmptyExpr!2856 (regTwo!6224 (regOne!6224 r!15766)))))))

(declare-fun bm!70966 () Bool)

(assert (=> bm!70966 (= call!70971 call!70968)))

(declare-fun d!295512 () Bool)

(declare-fun e!656831 () Bool)

(assert (=> d!295512 e!656831))

(declare-fun res!462877 () Bool)

(assert (=> d!295512 (=> (not res!462877) (not e!656831))))

(declare-fun lt!355920 () Regex!2856)

(assert (=> d!295512 (= res!462877 (validRegex!1325 lt!355920))))

(assert (=> d!295512 (= lt!355920 e!656832)))

(assert (=> d!295512 (= c!170879 (and (is-Concat!4689 (regOne!6224 r!15766)) (is-EmptyExpr!2856 (regOne!6224 (regOne!6224 r!15766)))))))

(assert (=> d!295512 (validRegex!1325 (regOne!6224 r!15766))))

(assert (=> d!295512 (= (removeUselessConcat!413 (regOne!6224 r!15766)) lt!355920)))

(declare-fun b!1030206 () Bool)

(assert (=> b!1030206 (= e!656834 (Union!2856 call!70969 call!70972))))

(declare-fun b!1030207 () Bool)

(assert (=> b!1030207 (= e!656831 (= (nullable!951 lt!355920) (nullable!951 (regOne!6224 r!15766))))))

(declare-fun bm!70967 () Bool)

(assert (=> bm!70967 (= call!70969 (removeUselessConcat!413 (ite c!170882 (regOne!6224 (regOne!6224 r!15766)) (regOne!6225 (regOne!6224 r!15766)))))))

(declare-fun b!1030208 () Bool)

(declare-fun c!170880 () Bool)

(assert (=> b!1030208 (= c!170880 (is-Star!2856 (regOne!6224 r!15766)))))

(assert (=> b!1030208 (= e!656834 e!656835)))

(declare-fun b!1030209 () Bool)

(assert (=> b!1030209 (= e!656832 call!70970)))

(declare-fun b!1030210 () Bool)

(assert (=> b!1030210 (= e!656835 (regOne!6224 r!15766))))

(assert (= (and d!295512 c!170879) b!1030209))

(assert (= (and d!295512 (not c!170879)) b!1030205))

(assert (= (and b!1030205 c!170883) b!1030200))

(assert (= (and b!1030205 (not c!170883)) b!1030201))

(assert (= (and b!1030201 c!170882) b!1030203))

(assert (= (and b!1030201 (not c!170882)) b!1030204))

(assert (= (and b!1030204 c!170881) b!1030206))

(assert (= (and b!1030204 (not c!170881)) b!1030208))

(assert (= (and b!1030208 c!170880) b!1030202))

(assert (= (and b!1030208 (not c!170880)) b!1030210))

(assert (= (or b!1030206 b!1030202) bm!70964))

(assert (= (or b!1030203 bm!70964) bm!70966))

(assert (= (or b!1030203 b!1030206) bm!70967))

(assert (= (or b!1030200 bm!70966) bm!70965))

(assert (= (or b!1030209 bm!70965) bm!70963))

(assert (= (and d!295512 res!462877) b!1030207))

(declare-fun m!1204201 () Bool)

(assert (=> bm!70963 m!1204201))

(declare-fun m!1204203 () Bool)

(assert (=> d!295512 m!1204203))

(assert (=> d!295512 m!1204063))

(declare-fun m!1204205 () Bool)

(assert (=> b!1030207 m!1204205))

(assert (=> b!1030207 m!1204195))

(declare-fun m!1204207 () Bool)

(assert (=> bm!70967 m!1204207))

(assert (=> b!1029913 d!295512))

(declare-fun d!295514 () Bool)

(assert (=> d!295514 (= (matchR!1392 (regOne!6224 r!15766) s!10566) (matchR!1392 (removeUselessConcat!413 (regOne!6224 r!15766)) s!10566))))

(declare-fun lt!355924 () Unit!15387)

(declare-fun choose!6556 (Regex!2856 List!10086) Unit!15387)

(assert (=> d!295514 (= lt!355924 (choose!6556 (regOne!6224 r!15766) s!10566))))

(assert (=> d!295514 (validRegex!1325 (regOne!6224 r!15766))))

(assert (=> d!295514 (= (lemmaRemoveUselessConcatSound!251 (regOne!6224 r!15766) s!10566) lt!355924)))

(declare-fun bs!247248 () Bool)

(assert (= bs!247248 d!295514))

(assert (=> bs!247248 m!1204067))

(assert (=> bs!247248 m!1204069))

(declare-fun m!1204209 () Bool)

(assert (=> bs!247248 m!1204209))

(assert (=> bs!247248 m!1204069))

(declare-fun m!1204211 () Bool)

(assert (=> bs!247248 m!1204211))

(assert (=> bs!247248 m!1204063))

(assert (=> b!1029913 d!295514))

(declare-fun b!1030227 () Bool)

(declare-fun res!462886 () Bool)

(declare-fun e!656843 () Bool)

(assert (=> b!1030227 (=> (not res!462886) (not e!656843))))

(declare-fun lt!355925 () List!10086)

(assert (=> b!1030227 (= res!462886 (= (size!7991 lt!355925) (+ (size!7991 Nil!10070) (size!7991 s!10566))))))

(declare-fun b!1030225 () Bool)

(declare-fun e!656844 () List!10086)

(assert (=> b!1030225 (= e!656844 s!10566)))

(declare-fun d!295516 () Bool)

(assert (=> d!295516 e!656843))

(declare-fun res!462887 () Bool)

(assert (=> d!295516 (=> (not res!462887) (not e!656843))))

(assert (=> d!295516 (= res!462887 (= (content!1445 lt!355925) (set.union (content!1445 Nil!10070) (content!1445 s!10566))))))

(assert (=> d!295516 (= lt!355925 e!656844)))

(declare-fun c!170887 () Bool)

(assert (=> d!295516 (= c!170887 (is-Nil!10070 Nil!10070))))

(assert (=> d!295516 (= (++!2764 Nil!10070 s!10566) lt!355925)))

(declare-fun b!1030228 () Bool)

(assert (=> b!1030228 (= e!656843 (or (not (= s!10566 Nil!10070)) (= lt!355925 Nil!10070)))))

(declare-fun b!1030226 () Bool)

(assert (=> b!1030226 (= e!656844 (Cons!10070 (h!15471 Nil!10070) (++!2764 (t!101132 Nil!10070) s!10566)))))

(assert (= (and d!295516 c!170887) b!1030225))

(assert (= (and d!295516 (not c!170887)) b!1030226))

(assert (= (and d!295516 res!462887) b!1030227))

(assert (= (and b!1030227 res!462886) b!1030228))

(declare-fun m!1204213 () Bool)

(assert (=> b!1030227 m!1204213))

(assert (=> b!1030227 m!1204147))

(assert (=> b!1030227 m!1204145))

(declare-fun m!1204215 () Bool)

(assert (=> d!295516 m!1204215))

(assert (=> d!295516 m!1204183))

(assert (=> d!295516 m!1204181))

(declare-fun m!1204219 () Bool)

(assert (=> b!1030226 m!1204219))

(assert (=> b!1029912 d!295516))

(declare-fun d!295518 () Bool)

(assert (=> d!295518 (= (isEmpty!6449 lt!355866) (not (is-Some!2384 lt!355866)))))

(assert (=> b!1029919 d!295518))

(declare-fun bm!70976 () Bool)

(declare-fun call!70981 () Bool)

(declare-fun call!70982 () Bool)

(assert (=> bm!70976 (= call!70981 call!70982)))

(declare-fun bm!70977 () Bool)

(declare-fun c!170895 () Bool)

(declare-fun c!170896 () Bool)

(assert (=> bm!70977 (= call!70982 (validRegex!1325 (ite c!170896 (reg!3185 r!15766) (ite c!170895 (regTwo!6225 r!15766) (regTwo!6224 r!15766)))))))

(declare-fun b!1030261 () Bool)

(declare-fun e!656872 () Bool)

(assert (=> b!1030261 (= e!656872 call!70981)))

(declare-fun b!1030262 () Bool)

(declare-fun e!656866 () Bool)

(declare-fun e!656868 () Bool)

(assert (=> b!1030262 (= e!656866 e!656868)))

(assert (=> b!1030262 (= c!170895 (is-Union!2856 r!15766))))

(declare-fun b!1030263 () Bool)

(declare-fun e!656870 () Bool)

(declare-fun e!656867 () Bool)

(assert (=> b!1030263 (= e!656870 e!656867)))

(declare-fun res!462907 () Bool)

(assert (=> b!1030263 (=> (not res!462907) (not e!656867))))

(declare-fun call!70983 () Bool)

(assert (=> b!1030263 (= res!462907 call!70983)))

(declare-fun b!1030264 () Bool)

(declare-fun e!656869 () Bool)

(assert (=> b!1030264 (= e!656869 call!70982)))

(declare-fun b!1030265 () Bool)

(assert (=> b!1030265 (= e!656866 e!656869)))

(declare-fun res!462906 () Bool)

(assert (=> b!1030265 (= res!462906 (not (nullable!951 (reg!3185 r!15766))))))

(assert (=> b!1030265 (=> (not res!462906) (not e!656869))))

(declare-fun b!1030266 () Bool)

(declare-fun res!462908 () Bool)

(assert (=> b!1030266 (=> res!462908 e!656870)))

(assert (=> b!1030266 (= res!462908 (not (is-Concat!4689 r!15766)))))

(assert (=> b!1030266 (= e!656868 e!656870)))

(declare-fun b!1030267 () Bool)

(assert (=> b!1030267 (= e!656867 call!70981)))

(declare-fun d!295520 () Bool)

(declare-fun res!462910 () Bool)

(declare-fun e!656871 () Bool)

(assert (=> d!295520 (=> res!462910 e!656871)))

(assert (=> d!295520 (= res!462910 (is-ElementMatch!2856 r!15766))))

(assert (=> d!295520 (= (validRegex!1325 r!15766) e!656871)))

(declare-fun b!1030268 () Bool)

(declare-fun res!462909 () Bool)

(assert (=> b!1030268 (=> (not res!462909) (not e!656872))))

(assert (=> b!1030268 (= res!462909 call!70983)))

(assert (=> b!1030268 (= e!656868 e!656872)))

(declare-fun b!1030269 () Bool)

(assert (=> b!1030269 (= e!656871 e!656866)))

(assert (=> b!1030269 (= c!170896 (is-Star!2856 r!15766))))

(declare-fun bm!70978 () Bool)

(assert (=> bm!70978 (= call!70983 (validRegex!1325 (ite c!170895 (regOne!6225 r!15766) (regOne!6224 r!15766))))))

(assert (= (and d!295520 (not res!462910)) b!1030269))

(assert (= (and b!1030269 c!170896) b!1030265))

(assert (= (and b!1030269 (not c!170896)) b!1030262))

(assert (= (and b!1030265 res!462906) b!1030264))

(assert (= (and b!1030262 c!170895) b!1030268))

(assert (= (and b!1030262 (not c!170895)) b!1030266))

(assert (= (and b!1030268 res!462909) b!1030261))

(assert (= (and b!1030266 (not res!462908)) b!1030263))

(assert (= (and b!1030263 res!462907) b!1030267))

(assert (= (or b!1030261 b!1030267) bm!70976))

(assert (= (or b!1030268 b!1030263) bm!70978))

(assert (= (or b!1030264 bm!70976) bm!70977))

(declare-fun m!1204239 () Bool)

(assert (=> bm!70977 m!1204239))

(declare-fun m!1204241 () Bool)

(assert (=> b!1030265 m!1204241))

(declare-fun m!1204243 () Bool)

(assert (=> bm!70978 m!1204243))

(assert (=> start!89664 d!295520))

(declare-fun d!295526 () Bool)

(assert (=> d!295526 (= (isDefined!2027 lt!355866) (not (isEmpty!6449 lt!355866)))))

(declare-fun bs!247249 () Bool)

(assert (= bs!247249 d!295526))

(assert (=> bs!247249 m!1204089))

(assert (=> b!1029921 d!295526))

(declare-fun b!1030310 () Bool)

(declare-fun e!656899 () Option!2385)

(declare-fun e!656895 () Option!2385)

(assert (=> b!1030310 (= e!656899 e!656895)))

(declare-fun c!170912 () Bool)

(assert (=> b!1030310 (= c!170912 (is-Nil!10070 s!10566))))

(declare-fun d!295528 () Bool)

(declare-fun e!656898 () Bool)

(assert (=> d!295528 e!656898))

(declare-fun res!462926 () Bool)

(assert (=> d!295528 (=> res!462926 e!656898)))

(declare-fun e!656896 () Bool)

(assert (=> d!295528 (= res!462926 e!656896)))

(declare-fun res!462923 () Bool)

(assert (=> d!295528 (=> (not res!462923) (not e!656896))))

(declare-fun lt!355935 () Option!2385)

(assert (=> d!295528 (= res!462923 (isDefined!2027 lt!355935))))

(assert (=> d!295528 (= lt!355935 e!656899)))

(declare-fun c!170911 () Bool)

(declare-fun e!656897 () Bool)

(assert (=> d!295528 (= c!170911 e!656897)))

(declare-fun res!462927 () Bool)

(assert (=> d!295528 (=> (not res!462927) (not e!656897))))

(assert (=> d!295528 (= res!462927 (matchR!1392 (regOne!6224 r!15766) Nil!10070))))

(assert (=> d!295528 (validRegex!1325 (regOne!6224 r!15766))))

(assert (=> d!295528 (= (findConcatSeparation!491 (regOne!6224 r!15766) EmptyExpr!2856 Nil!10070 s!10566 s!10566) lt!355935)))

(declare-fun b!1030311 () Bool)

(assert (=> b!1030311 (= e!656899 (Some!2384 (tuple2!11487 Nil!10070 s!10566)))))

(declare-fun b!1030312 () Bool)

(assert (=> b!1030312 (= e!656897 (matchR!1392 EmptyExpr!2856 s!10566))))

(declare-fun b!1030313 () Bool)

(declare-fun res!462924 () Bool)

(assert (=> b!1030313 (=> (not res!462924) (not e!656896))))

(declare-fun get!3573 (Option!2385) tuple2!11486)

(assert (=> b!1030313 (= res!462924 (matchR!1392 (regOne!6224 r!15766) (_1!6569 (get!3573 lt!355935))))))

(declare-fun b!1030314 () Bool)

(assert (=> b!1030314 (= e!656896 (= (++!2764 (_1!6569 (get!3573 lt!355935)) (_2!6569 (get!3573 lt!355935))) s!10566))))

(declare-fun b!1030315 () Bool)

(declare-fun lt!355937 () Unit!15387)

(declare-fun lt!355936 () Unit!15387)

(assert (=> b!1030315 (= lt!355937 lt!355936)))

(assert (=> b!1030315 (= (++!2764 (++!2764 Nil!10070 (Cons!10070 (h!15471 s!10566) Nil!10070)) (t!101132 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!360 (List!10086 C!6282 List!10086 List!10086) Unit!15387)

(assert (=> b!1030315 (= lt!355936 (lemmaMoveElementToOtherListKeepsConcatEq!360 Nil!10070 (h!15471 s!10566) (t!101132 s!10566) s!10566))))

(assert (=> b!1030315 (= e!656895 (findConcatSeparation!491 (regOne!6224 r!15766) EmptyExpr!2856 (++!2764 Nil!10070 (Cons!10070 (h!15471 s!10566) Nil!10070)) (t!101132 s!10566) s!10566))))

(declare-fun b!1030316 () Bool)

(declare-fun res!462925 () Bool)

(assert (=> b!1030316 (=> (not res!462925) (not e!656896))))

(assert (=> b!1030316 (= res!462925 (matchR!1392 EmptyExpr!2856 (_2!6569 (get!3573 lt!355935))))))

(declare-fun b!1030317 () Bool)

(assert (=> b!1030317 (= e!656895 None!2384)))

(declare-fun b!1030318 () Bool)

(assert (=> b!1030318 (= e!656898 (not (isDefined!2027 lt!355935)))))

(assert (= (and d!295528 res!462927) b!1030312))

(assert (= (and d!295528 c!170911) b!1030311))

(assert (= (and d!295528 (not c!170911)) b!1030310))

(assert (= (and b!1030310 c!170912) b!1030317))

(assert (= (and b!1030310 (not c!170912)) b!1030315))

(assert (= (and d!295528 res!462923) b!1030313))

(assert (= (and b!1030313 res!462924) b!1030316))

(assert (= (and b!1030316 res!462925) b!1030314))

(assert (= (and d!295528 (not res!462926)) b!1030318))

(declare-fun m!1204245 () Bool)

(assert (=> b!1030316 m!1204245))

(declare-fun m!1204247 () Bool)

(assert (=> b!1030316 m!1204247))

(assert (=> b!1030313 m!1204245))

(declare-fun m!1204249 () Bool)

(assert (=> b!1030313 m!1204249))

(declare-fun m!1204251 () Bool)

(assert (=> b!1030318 m!1204251))

(assert (=> d!295528 m!1204251))

(declare-fun m!1204253 () Bool)

(assert (=> d!295528 m!1204253))

(assert (=> d!295528 m!1204063))

(assert (=> b!1030314 m!1204245))

(declare-fun m!1204255 () Bool)

(assert (=> b!1030314 m!1204255))

(declare-fun m!1204257 () Bool)

(assert (=> b!1030312 m!1204257))

(declare-fun m!1204259 () Bool)

(assert (=> b!1030315 m!1204259))

(assert (=> b!1030315 m!1204259))

(declare-fun m!1204261 () Bool)

(assert (=> b!1030315 m!1204261))

(declare-fun m!1204263 () Bool)

(assert (=> b!1030315 m!1204263))

(assert (=> b!1030315 m!1204259))

(declare-fun m!1204265 () Bool)

(assert (=> b!1030315 m!1204265))

(assert (=> b!1029921 d!295528))

(declare-fun d!295530 () Bool)

(assert (=> d!295530 (= (isEmpty!6450 s!10566) (is-Nil!10070 s!10566))))

(assert (=> b!1029921 d!295530))

(declare-fun bs!247250 () Bool)

(declare-fun d!295532 () Bool)

(assert (= bs!247250 (and d!295532 b!1029921)))

(declare-fun lambda!36933 () Int)

(assert (=> bs!247250 (= lambda!36933 lambda!36915)))

(assert (=> bs!247250 (not (= lambda!36933 lambda!36916))))

(declare-fun bs!247251 () Bool)

(assert (= bs!247251 (and d!295532 b!1030047)))

(assert (=> bs!247251 (not (= lambda!36933 lambda!36929))))

(declare-fun bs!247252 () Bool)

(assert (= bs!247252 (and d!295532 b!1030049)))

(assert (=> bs!247252 (not (= lambda!36933 lambda!36930))))

(assert (=> d!295532 true))

(assert (=> d!295532 true))

(assert (=> d!295532 true))

(assert (=> d!295532 (= (isDefined!2027 (findConcatSeparation!491 (regOne!6224 r!15766) EmptyExpr!2856 Nil!10070 s!10566 s!10566)) (Exists!583 lambda!36933))))

(declare-fun lt!355941 () Unit!15387)

(declare-fun choose!6557 (Regex!2856 Regex!2856 List!10086) Unit!15387)

(assert (=> d!295532 (= lt!355941 (choose!6557 (regOne!6224 r!15766) EmptyExpr!2856 s!10566))))

(assert (=> d!295532 (validRegex!1325 (regOne!6224 r!15766))))

(assert (=> d!295532 (= (lemmaFindConcatSeparationEquivalentToExists!491 (regOne!6224 r!15766) EmptyExpr!2856 s!10566) lt!355941)))

(declare-fun bs!247253 () Bool)

(assert (= bs!247253 d!295532))

(assert (=> bs!247253 m!1204075))

(assert (=> bs!247253 m!1204075))

(declare-fun m!1204275 () Bool)

(assert (=> bs!247253 m!1204275))

(declare-fun m!1204277 () Bool)

(assert (=> bs!247253 m!1204277))

(declare-fun m!1204279 () Bool)

(assert (=> bs!247253 m!1204279))

(assert (=> bs!247253 m!1204063))

(assert (=> b!1029921 d!295532))

(declare-fun d!295536 () Bool)

(declare-fun choose!6558 (Int) Bool)

(assert (=> d!295536 (= (Exists!583 lambda!36915) (choose!6558 lambda!36915))))

(declare-fun bs!247254 () Bool)

(assert (= bs!247254 d!295536))

(declare-fun m!1204281 () Bool)

(assert (=> bs!247254 m!1204281))

(assert (=> b!1029921 d!295536))

(declare-fun bs!247256 () Bool)

(declare-fun d!295538 () Bool)

(assert (= bs!247256 (and d!295538 d!295532)))

(declare-fun lambda!36938 () Int)

(assert (=> bs!247256 (= lambda!36938 lambda!36933)))

(declare-fun bs!247257 () Bool)

(assert (= bs!247257 (and d!295538 b!1029921)))

(assert (=> bs!247257 (not (= lambda!36938 lambda!36916))))

(declare-fun bs!247258 () Bool)

(assert (= bs!247258 (and d!295538 b!1030049)))

(assert (=> bs!247258 (not (= lambda!36938 lambda!36930))))

(declare-fun bs!247259 () Bool)

(assert (= bs!247259 (and d!295538 b!1030047)))

(assert (=> bs!247259 (not (= lambda!36938 lambda!36929))))

(assert (=> bs!247257 (= lambda!36938 lambda!36915)))

(assert (=> d!295538 true))

(assert (=> d!295538 true))

(assert (=> d!295538 true))

(declare-fun bs!247260 () Bool)

(assert (= bs!247260 d!295538))

(declare-fun lambda!36939 () Int)

(assert (=> bs!247260 (not (= lambda!36939 lambda!36938))))

(assert (=> bs!247256 (not (= lambda!36939 lambda!36933))))

(assert (=> bs!247257 (= lambda!36939 lambda!36916)))

(assert (=> bs!247258 (= (= EmptyExpr!2856 (regTwo!6224 r!15766)) (= lambda!36939 lambda!36930))))

(assert (=> bs!247259 (not (= lambda!36939 lambda!36929))))

(assert (=> bs!247257 (not (= lambda!36939 lambda!36915))))

(assert (=> d!295538 true))

(assert (=> d!295538 true))

(assert (=> d!295538 true))

(assert (=> d!295538 (= (Exists!583 lambda!36938) (Exists!583 lambda!36939))))

(declare-fun lt!355949 () Unit!15387)

(declare-fun choose!6559 (Regex!2856 Regex!2856 List!10086) Unit!15387)

(assert (=> d!295538 (= lt!355949 (choose!6559 (regOne!6224 r!15766) EmptyExpr!2856 s!10566))))

(assert (=> d!295538 (validRegex!1325 (regOne!6224 r!15766))))

(assert (=> d!295538 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!279 (regOne!6224 r!15766) EmptyExpr!2856 s!10566) lt!355949)))

(declare-fun m!1204287 () Bool)

(assert (=> bs!247260 m!1204287))

(declare-fun m!1204289 () Bool)

(assert (=> bs!247260 m!1204289))

(declare-fun m!1204291 () Bool)

(assert (=> bs!247260 m!1204291))

(assert (=> bs!247260 m!1204063))

(assert (=> b!1029921 d!295538))

(declare-fun d!295542 () Bool)

(assert (=> d!295542 (= (Exists!583 lambda!36916) (choose!6558 lambda!36916))))

(declare-fun bs!247261 () Bool)

(assert (= bs!247261 d!295542))

(declare-fun m!1204293 () Bool)

(assert (=> bs!247261 m!1204293))

(assert (=> b!1029921 d!295542))

(declare-fun bm!70994 () Bool)

(declare-fun call!70999 () Bool)

(declare-fun call!71000 () Bool)

(assert (=> bm!70994 (= call!70999 call!71000)))

(declare-fun c!170920 () Bool)

(declare-fun c!170921 () Bool)

(declare-fun bm!70995 () Bool)

(assert (=> bm!70995 (= call!71000 (validRegex!1325 (ite c!170921 (reg!3185 (regOne!6224 r!15766)) (ite c!170920 (regTwo!6225 (regOne!6224 r!15766)) (regTwo!6224 (regOne!6224 r!15766))))))))

(declare-fun b!1030350 () Bool)

(declare-fun e!656922 () Bool)

(assert (=> b!1030350 (= e!656922 call!70999)))

(declare-fun b!1030351 () Bool)

(declare-fun e!656916 () Bool)

(declare-fun e!656918 () Bool)

(assert (=> b!1030351 (= e!656916 e!656918)))

(assert (=> b!1030351 (= c!170920 (is-Union!2856 (regOne!6224 r!15766)))))

(declare-fun b!1030352 () Bool)

(declare-fun e!656920 () Bool)

(declare-fun e!656917 () Bool)

(assert (=> b!1030352 (= e!656920 e!656917)))

(declare-fun res!462946 () Bool)

(assert (=> b!1030352 (=> (not res!462946) (not e!656917))))

(declare-fun call!71001 () Bool)

(assert (=> b!1030352 (= res!462946 call!71001)))

(declare-fun b!1030353 () Bool)

(declare-fun e!656919 () Bool)

(assert (=> b!1030353 (= e!656919 call!71000)))

(declare-fun b!1030354 () Bool)

(assert (=> b!1030354 (= e!656916 e!656919)))

(declare-fun res!462945 () Bool)

(assert (=> b!1030354 (= res!462945 (not (nullable!951 (reg!3185 (regOne!6224 r!15766)))))))

(assert (=> b!1030354 (=> (not res!462945) (not e!656919))))

(declare-fun b!1030355 () Bool)

(declare-fun res!462947 () Bool)

(assert (=> b!1030355 (=> res!462947 e!656920)))

(assert (=> b!1030355 (= res!462947 (not (is-Concat!4689 (regOne!6224 r!15766))))))

(assert (=> b!1030355 (= e!656918 e!656920)))

(declare-fun b!1030356 () Bool)

(assert (=> b!1030356 (= e!656917 call!70999)))

(declare-fun d!295544 () Bool)

(declare-fun res!462949 () Bool)

(declare-fun e!656921 () Bool)

(assert (=> d!295544 (=> res!462949 e!656921)))

(assert (=> d!295544 (= res!462949 (is-ElementMatch!2856 (regOne!6224 r!15766)))))

(assert (=> d!295544 (= (validRegex!1325 (regOne!6224 r!15766)) e!656921)))

(declare-fun b!1030357 () Bool)

(declare-fun res!462948 () Bool)

(assert (=> b!1030357 (=> (not res!462948) (not e!656922))))

(assert (=> b!1030357 (= res!462948 call!71001)))

(assert (=> b!1030357 (= e!656918 e!656922)))

(declare-fun b!1030358 () Bool)

(assert (=> b!1030358 (= e!656921 e!656916)))

(assert (=> b!1030358 (= c!170921 (is-Star!2856 (regOne!6224 r!15766)))))

(declare-fun bm!70996 () Bool)

(assert (=> bm!70996 (= call!71001 (validRegex!1325 (ite c!170920 (regOne!6225 (regOne!6224 r!15766)) (regOne!6224 (regOne!6224 r!15766)))))))

(assert (= (and d!295544 (not res!462949)) b!1030358))

(assert (= (and b!1030358 c!170921) b!1030354))

(assert (= (and b!1030358 (not c!170921)) b!1030351))

(assert (= (and b!1030354 res!462945) b!1030353))

(assert (= (and b!1030351 c!170920) b!1030357))

(assert (= (and b!1030351 (not c!170920)) b!1030355))

(assert (= (and b!1030357 res!462948) b!1030350))

(assert (= (and b!1030355 (not res!462947)) b!1030352))

(assert (= (and b!1030352 res!462946) b!1030356))

(assert (= (or b!1030350 b!1030356) bm!70994))

(assert (= (or b!1030357 b!1030352) bm!70996))

(assert (= (or b!1030353 bm!70994) bm!70995))

(declare-fun m!1204295 () Bool)

(assert (=> bm!70995 m!1204295))

(declare-fun m!1204297 () Bool)

(assert (=> b!1030354 m!1204297))

(declare-fun m!1204299 () Bool)

(assert (=> bm!70996 m!1204299))

(assert (=> b!1029920 d!295544))

(declare-fun b!1030382 () Bool)

(declare-fun e!656934 () Bool)

(assert (=> b!1030382 (= e!656934 tp_is_empty!5355)))

(declare-fun b!1030384 () Bool)

(declare-fun tp!312143 () Bool)

(assert (=> b!1030384 (= e!656934 tp!312143)))

(declare-fun b!1030383 () Bool)

(declare-fun tp!312147 () Bool)

(declare-fun tp!312144 () Bool)

(assert (=> b!1030383 (= e!656934 (and tp!312147 tp!312144))))

(assert (=> b!1029916 (= tp!312110 e!656934)))

(declare-fun b!1030385 () Bool)

(declare-fun tp!312146 () Bool)

(declare-fun tp!312145 () Bool)

(assert (=> b!1030385 (= e!656934 (and tp!312146 tp!312145))))

(assert (= (and b!1029916 (is-ElementMatch!2856 (regOne!6225 r!15766))) b!1030382))

(assert (= (and b!1029916 (is-Concat!4689 (regOne!6225 r!15766))) b!1030383))

(assert (= (and b!1029916 (is-Star!2856 (regOne!6225 r!15766))) b!1030384))

(assert (= (and b!1029916 (is-Union!2856 (regOne!6225 r!15766))) b!1030385))

(declare-fun b!1030386 () Bool)

(declare-fun e!656935 () Bool)

(assert (=> b!1030386 (= e!656935 tp_is_empty!5355)))

(declare-fun b!1030388 () Bool)

(declare-fun tp!312148 () Bool)

(assert (=> b!1030388 (= e!656935 tp!312148)))

(declare-fun b!1030387 () Bool)

(declare-fun tp!312152 () Bool)

(declare-fun tp!312149 () Bool)

(assert (=> b!1030387 (= e!656935 (and tp!312152 tp!312149))))

(assert (=> b!1029916 (= tp!312114 e!656935)))

(declare-fun b!1030389 () Bool)

(declare-fun tp!312151 () Bool)

(declare-fun tp!312150 () Bool)

(assert (=> b!1030389 (= e!656935 (and tp!312151 tp!312150))))

(assert (= (and b!1029916 (is-ElementMatch!2856 (regTwo!6225 r!15766))) b!1030386))

(assert (= (and b!1029916 (is-Concat!4689 (regTwo!6225 r!15766))) b!1030387))

(assert (= (and b!1029916 (is-Star!2856 (regTwo!6225 r!15766))) b!1030388))

(assert (= (and b!1029916 (is-Union!2856 (regTwo!6225 r!15766))) b!1030389))

(declare-fun b!1030394 () Bool)

(declare-fun e!656938 () Bool)

(declare-fun tp!312155 () Bool)

(assert (=> b!1030394 (= e!656938 (and tp_is_empty!5355 tp!312155))))

(assert (=> b!1029923 (= tp!312113 e!656938)))

(assert (= (and b!1029923 (is-Cons!10070 (t!101132 s!10566))) b!1030394))

(declare-fun b!1030395 () Bool)

(declare-fun e!656939 () Bool)

(assert (=> b!1030395 (= e!656939 tp_is_empty!5355)))

(declare-fun b!1030397 () Bool)

(declare-fun tp!312156 () Bool)

(assert (=> b!1030397 (= e!656939 tp!312156)))

(declare-fun b!1030396 () Bool)

(declare-fun tp!312160 () Bool)

(declare-fun tp!312157 () Bool)

(assert (=> b!1030396 (= e!656939 (and tp!312160 tp!312157))))

(assert (=> b!1029914 (= tp!312111 e!656939)))

(declare-fun b!1030398 () Bool)

(declare-fun tp!312159 () Bool)

(declare-fun tp!312158 () Bool)

(assert (=> b!1030398 (= e!656939 (and tp!312159 tp!312158))))

(assert (= (and b!1029914 (is-ElementMatch!2856 (reg!3185 r!15766))) b!1030395))

(assert (= (and b!1029914 (is-Concat!4689 (reg!3185 r!15766))) b!1030396))

(assert (= (and b!1029914 (is-Star!2856 (reg!3185 r!15766))) b!1030397))

(assert (= (and b!1029914 (is-Union!2856 (reg!3185 r!15766))) b!1030398))

(declare-fun b!1030399 () Bool)

(declare-fun e!656940 () Bool)

(assert (=> b!1030399 (= e!656940 tp_is_empty!5355)))

(declare-fun b!1030401 () Bool)

(declare-fun tp!312161 () Bool)

(assert (=> b!1030401 (= e!656940 tp!312161)))

(declare-fun b!1030400 () Bool)

(declare-fun tp!312165 () Bool)

(declare-fun tp!312162 () Bool)

(assert (=> b!1030400 (= e!656940 (and tp!312165 tp!312162))))

(assert (=> b!1029915 (= tp!312112 e!656940)))

(declare-fun b!1030402 () Bool)

(declare-fun tp!312164 () Bool)

(declare-fun tp!312163 () Bool)

(assert (=> b!1030402 (= e!656940 (and tp!312164 tp!312163))))

(assert (= (and b!1029915 (is-ElementMatch!2856 (regOne!6224 r!15766))) b!1030399))

(assert (= (and b!1029915 (is-Concat!4689 (regOne!6224 r!15766))) b!1030400))

(assert (= (and b!1029915 (is-Star!2856 (regOne!6224 r!15766))) b!1030401))

(assert (= (and b!1029915 (is-Union!2856 (regOne!6224 r!15766))) b!1030402))

(declare-fun b!1030403 () Bool)

(declare-fun e!656941 () Bool)

(assert (=> b!1030403 (= e!656941 tp_is_empty!5355)))

(declare-fun b!1030405 () Bool)

(declare-fun tp!312166 () Bool)

(assert (=> b!1030405 (= e!656941 tp!312166)))

(declare-fun b!1030404 () Bool)

(declare-fun tp!312170 () Bool)

(declare-fun tp!312167 () Bool)

(assert (=> b!1030404 (= e!656941 (and tp!312170 tp!312167))))

(assert (=> b!1029915 (= tp!312109 e!656941)))

(declare-fun b!1030406 () Bool)

(declare-fun tp!312169 () Bool)

(declare-fun tp!312168 () Bool)

(assert (=> b!1030406 (= e!656941 (and tp!312169 tp!312168))))

(assert (= (and b!1029915 (is-ElementMatch!2856 (regTwo!6224 r!15766))) b!1030403))

(assert (= (and b!1029915 (is-Concat!4689 (regTwo!6224 r!15766))) b!1030404))

(assert (= (and b!1029915 (is-Star!2856 (regTwo!6224 r!15766))) b!1030405))

(assert (= (and b!1029915 (is-Union!2856 (regTwo!6224 r!15766))) b!1030406))

(push 1)

(assert (not b!1030385))

(assert (not b!1030096))

(assert (not b!1030099))

(assert (not d!295510))

(assert (not b!1030207))

(assert (not bm!70936))

(assert (not d!295532))

(assert (not bm!70977))

(assert (not bm!70996))

(assert (not b!1030313))

(assert (not d!295508))

(assert (not b!1030400))

(assert (not b!1030396))

(assert (not b!1030389))

(assert (not bm!70950))

(assert (not b!1030100))

(assert (not d!295542))

(assert (not d!295500))

(assert (not b!1030314))

(assert (not b!1030052))

(assert (not b!1030265))

(assert (not b!1030144))

(assert (not b!1030119))

(assert (not bm!70967))

(assert (not b!1030397))

(assert (not d!295526))

(assert (not b!1030106))

(assert (not b!1030126))

(assert (not b!1030226))

(assert (not d!295512))

(assert (not b!1030388))

(assert (not b!1030383))

(assert (not b!1030140))

(assert (not b!1030387))

(assert (not b!1030315))

(assert (not b!1030401))

(assert (not d!295514))

(assert (not d!295528))

(assert (not b!1030406))

(assert (not b!1030107))

(assert tp_is_empty!5355)

(assert (not b!1030316))

(assert (not b!1030384))

(assert (not b!1029995))

(assert (not d!295536))

(assert (not b!1030151))

(assert (not b!1030394))

(assert (not d!295538))

(assert (not b!1030398))

(assert (not b!1030312))

(assert (not d!295516))

(assert (not b!1029996))

(assert (not b!1030150))

(assert (not b!1030227))

(assert (not b!1030102))

(assert (not d!295504))

(assert (not b!1029997))

(assert (not b!1030044))

(assert (not b!1030405))

(assert (not bm!70995))

(assert (not b!1030128))

(assert (not d!295506))

(assert (not b!1030143))

(assert (not b!1030402))

(assert (not b!1030125))

(assert (not bm!70963))

(assert (not b!1030133))

(assert (not b!1030120))

(assert (not b!1030318))

(assert (not b!1030122))

(assert (not bm!70948))

(assert (not b!1030132))

(assert (not bm!70935))

(assert (not b!1030146))

(assert (not b!1030404))

(assert (not bm!70949))

(assert (not b!1030354))

(assert (not bm!70978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

