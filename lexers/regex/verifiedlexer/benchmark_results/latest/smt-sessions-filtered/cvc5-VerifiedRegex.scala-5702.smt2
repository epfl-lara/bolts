; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283742 () Bool)

(assert start!283742)

(declare-fun b!2911717 () Bool)

(assert (=> b!2911717 true))

(assert (=> b!2911717 true))

(declare-fun lambda!108090 () Int)

(declare-fun lambda!108089 () Int)

(assert (=> b!2911717 (not (= lambda!108090 lambda!108089))))

(assert (=> b!2911717 true))

(assert (=> b!2911717 true))

(declare-fun b!2911710 () Bool)

(declare-fun e!1837828 () Bool)

(declare-fun e!1837827 () Bool)

(assert (=> b!2911710 (= e!1837828 (not e!1837827))))

(declare-fun res!1201865 () Bool)

(assert (=> b!2911710 (=> res!1201865 e!1837827)))

(declare-fun lt!1023941 () Bool)

(declare-datatypes ((C!18094 0))(
  ( (C!18095 (val!11083 Int)) )
))
(declare-datatypes ((Regex!8954 0))(
  ( (ElementMatch!8954 (c!474822 C!18094)) (Concat!14275 (regOne!18420 Regex!8954) (regTwo!18420 Regex!8954)) (EmptyExpr!8954) (Star!8954 (reg!9283 Regex!8954)) (EmptyLang!8954) (Union!8954 (regOne!18421 Regex!8954) (regTwo!18421 Regex!8954)) )
))
(declare-fun r!17423 () Regex!8954)

(assert (=> b!2911710 (= res!1201865 (or (not lt!1023941) (not (is-Concat!14275 r!17423))))))

(declare-datatypes ((List!34819 0))(
  ( (Nil!34695) (Cons!34695 (h!40115 C!18094) (t!233884 List!34819)) )
))
(declare-fun s!11993 () List!34819)

(declare-fun matchRSpec!1091 (Regex!8954 List!34819) Bool)

(assert (=> b!2911710 (= lt!1023941 (matchRSpec!1091 r!17423 s!11993))))

(declare-fun matchR!3836 (Regex!8954 List!34819) Bool)

(assert (=> b!2911710 (= lt!1023941 (matchR!3836 r!17423 s!11993))))

(declare-datatypes ((Unit!48247 0))(
  ( (Unit!48248) )
))
(declare-fun lt!1023938 () Unit!48247)

(declare-fun mainMatchTheorem!1091 (Regex!8954 List!34819) Unit!48247)

(assert (=> b!2911710 (= lt!1023938 (mainMatchTheorem!1091 r!17423 s!11993))))

(declare-fun b!2911711 () Bool)

(declare-fun e!1837829 () Bool)

(declare-fun tp!935507 () Bool)

(declare-fun tp!935502 () Bool)

(assert (=> b!2911711 (= e!1837829 (and tp!935507 tp!935502))))

(declare-fun b!2911712 () Bool)

(declare-fun tp_is_empty!15471 () Bool)

(assert (=> b!2911712 (= e!1837829 tp_is_empty!15471)))

(declare-fun b!2911714 () Bool)

(declare-fun tp!935506 () Bool)

(assert (=> b!2911714 (= e!1837829 tp!935506)))

(declare-fun b!2911715 () Bool)

(declare-fun tp!935505 () Bool)

(declare-fun tp!935503 () Bool)

(assert (=> b!2911715 (= e!1837829 (and tp!935505 tp!935503))))

(declare-fun b!2911716 () Bool)

(declare-fun e!1837826 () Bool)

(declare-fun tp!935504 () Bool)

(assert (=> b!2911716 (= e!1837826 (and tp_is_empty!15471 tp!935504))))

(declare-fun validRegex!3687 (Regex!8954) Bool)

(assert (=> b!2911717 (= e!1837827 (validRegex!3687 (regOne!18420 r!17423)))))

(declare-fun Exists!1334 (Int) Bool)

(assert (=> b!2911717 (= (Exists!1334 lambda!108089) (Exists!1334 lambda!108090))))

(declare-fun lt!1023939 () Unit!48247)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!475 (Regex!8954 Regex!8954 List!34819) Unit!48247)

(assert (=> b!2911717 (= lt!1023939 (lemmaExistCutMatchRandMatchRSpecEquivalent!475 (regOne!18420 r!17423) (regTwo!18420 r!17423) s!11993))))

(declare-datatypes ((tuple2!33646 0))(
  ( (tuple2!33647 (_1!19955 List!34819) (_2!19955 List!34819)) )
))
(declare-datatypes ((Option!6555 0))(
  ( (None!6554) (Some!6554 (v!34688 tuple2!33646)) )
))
(declare-fun isDefined!5106 (Option!6555) Bool)

(declare-fun findConcatSeparation!949 (Regex!8954 Regex!8954 List!34819 List!34819 List!34819) Option!6555)

(assert (=> b!2911717 (= (isDefined!5106 (findConcatSeparation!949 (regOne!18420 r!17423) (regTwo!18420 r!17423) Nil!34695 s!11993 s!11993)) (Exists!1334 lambda!108089))))

(declare-fun lt!1023940 () Unit!48247)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!731 (Regex!8954 Regex!8954 List!34819) Unit!48247)

(assert (=> b!2911717 (= lt!1023940 (lemmaFindConcatSeparationEquivalentToExists!731 (regOne!18420 r!17423) (regTwo!18420 r!17423) s!11993))))

(declare-fun res!1201867 () Bool)

(assert (=> start!283742 (=> (not res!1201867) (not e!1837828))))

(assert (=> start!283742 (= res!1201867 (validRegex!3687 r!17423))))

(assert (=> start!283742 e!1837828))

(assert (=> start!283742 e!1837829))

(assert (=> start!283742 e!1837826))

(declare-fun b!2911713 () Bool)

(declare-fun res!1201866 () Bool)

(assert (=> b!2911713 (=> res!1201866 e!1837827)))

(declare-fun isEmpty!18935 (List!34819) Bool)

(assert (=> b!2911713 (= res!1201866 (isEmpty!18935 s!11993))))

(assert (= (and start!283742 res!1201867) b!2911710))

(assert (= (and b!2911710 (not res!1201865)) b!2911713))

(assert (= (and b!2911713 (not res!1201866)) b!2911717))

(assert (= (and start!283742 (is-ElementMatch!8954 r!17423)) b!2911712))

(assert (= (and start!283742 (is-Concat!14275 r!17423)) b!2911711))

(assert (= (and start!283742 (is-Star!8954 r!17423)) b!2911714))

(assert (= (and start!283742 (is-Union!8954 r!17423)) b!2911715))

(assert (= (and start!283742 (is-Cons!34695 s!11993)) b!2911716))

(declare-fun m!3312769 () Bool)

(assert (=> b!2911710 m!3312769))

(declare-fun m!3312771 () Bool)

(assert (=> b!2911710 m!3312771))

(declare-fun m!3312773 () Bool)

(assert (=> b!2911710 m!3312773))

(declare-fun m!3312775 () Bool)

(assert (=> b!2911717 m!3312775))

(declare-fun m!3312777 () Bool)

(assert (=> b!2911717 m!3312777))

(declare-fun m!3312779 () Bool)

(assert (=> b!2911717 m!3312779))

(declare-fun m!3312781 () Bool)

(assert (=> b!2911717 m!3312781))

(assert (=> b!2911717 m!3312777))

(declare-fun m!3312783 () Bool)

(assert (=> b!2911717 m!3312783))

(declare-fun m!3312785 () Bool)

(assert (=> b!2911717 m!3312785))

(assert (=> b!2911717 m!3312785))

(declare-fun m!3312787 () Bool)

(assert (=> b!2911717 m!3312787))

(declare-fun m!3312789 () Bool)

(assert (=> start!283742 m!3312789))

(declare-fun m!3312791 () Bool)

(assert (=> b!2911713 m!3312791))

(push 1)

(assert (not b!2911716))

(assert (not b!2911713))

(assert (not b!2911714))

(assert (not b!2911715))

(assert (not b!2911710))

(assert tp_is_empty!15471)

(assert (not b!2911717))

(assert (not b!2911711))

(assert (not start!283742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!837675 () Bool)

(declare-fun choose!17121 (Int) Bool)

(assert (=> d!837675 (= (Exists!1334 lambda!108089) (choose!17121 lambda!108089))))

(declare-fun bs!524555 () Bool)

(assert (= bs!524555 d!837675))

(declare-fun m!3312817 () Bool)

(assert (=> bs!524555 m!3312817))

(assert (=> b!2911717 d!837675))

(declare-fun d!837677 () Bool)

(assert (=> d!837677 (= (Exists!1334 lambda!108090) (choose!17121 lambda!108090))))

(declare-fun bs!524556 () Bool)

(assert (= bs!524556 d!837677))

(declare-fun m!3312819 () Bool)

(assert (=> bs!524556 m!3312819))

(assert (=> b!2911717 d!837677))

(declare-fun d!837679 () Bool)

(declare-fun isEmpty!18937 (Option!6555) Bool)

(assert (=> d!837679 (= (isDefined!5106 (findConcatSeparation!949 (regOne!18420 r!17423) (regTwo!18420 r!17423) Nil!34695 s!11993 s!11993)) (not (isEmpty!18937 (findConcatSeparation!949 (regOne!18420 r!17423) (regTwo!18420 r!17423) Nil!34695 s!11993 s!11993))))))

(declare-fun bs!524557 () Bool)

(assert (= bs!524557 d!837679))

(assert (=> bs!524557 m!3312777))

(declare-fun m!3312821 () Bool)

(assert (=> bs!524557 m!3312821))

(assert (=> b!2911717 d!837679))

(declare-fun bs!524558 () Bool)

(declare-fun d!837681 () Bool)

(assert (= bs!524558 (and d!837681 b!2911717)))

(declare-fun lambda!108103 () Int)

(assert (=> bs!524558 (= lambda!108103 lambda!108089)))

(assert (=> bs!524558 (not (= lambda!108103 lambda!108090))))

(assert (=> d!837681 true))

(assert (=> d!837681 true))

(assert (=> d!837681 true))

(declare-fun lambda!108104 () Int)

(assert (=> bs!524558 (not (= lambda!108104 lambda!108089))))

(assert (=> bs!524558 (= lambda!108104 lambda!108090)))

(declare-fun bs!524559 () Bool)

(assert (= bs!524559 d!837681))

(assert (=> bs!524559 (not (= lambda!108104 lambda!108103))))

(assert (=> d!837681 true))

(assert (=> d!837681 true))

(assert (=> d!837681 true))

(assert (=> d!837681 (= (Exists!1334 lambda!108103) (Exists!1334 lambda!108104))))

(declare-fun lt!1023956 () Unit!48247)

(declare-fun choose!17122 (Regex!8954 Regex!8954 List!34819) Unit!48247)

(assert (=> d!837681 (= lt!1023956 (choose!17122 (regOne!18420 r!17423) (regTwo!18420 r!17423) s!11993))))

(assert (=> d!837681 (validRegex!3687 (regOne!18420 r!17423))))

(assert (=> d!837681 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!475 (regOne!18420 r!17423) (regTwo!18420 r!17423) s!11993) lt!1023956)))

(declare-fun m!3312823 () Bool)

(assert (=> bs!524559 m!3312823))

(declare-fun m!3312825 () Bool)

(assert (=> bs!524559 m!3312825))

(declare-fun m!3312827 () Bool)

(assert (=> bs!524559 m!3312827))

(assert (=> bs!524559 m!3312787))

(assert (=> b!2911717 d!837681))

(declare-fun bm!190090 () Bool)

(declare-fun call!190095 () Bool)

(declare-fun c!474833 () Bool)

(assert (=> bm!190090 (= call!190095 (validRegex!3687 (ite c!474833 (regTwo!18421 (regOne!18420 r!17423)) (regOne!18420 (regOne!18420 r!17423)))))))

(declare-fun b!2911806 () Bool)

(declare-fun e!1837880 () Bool)

(declare-fun e!1837884 () Bool)

(assert (=> b!2911806 (= e!1837880 e!1837884)))

(declare-fun res!1201917 () Bool)

(declare-fun nullable!2792 (Regex!8954) Bool)

(assert (=> b!2911806 (= res!1201917 (not (nullable!2792 (reg!9283 (regOne!18420 r!17423)))))))

(assert (=> b!2911806 (=> (not res!1201917) (not e!1837884))))

(declare-fun b!2911807 () Bool)

(declare-fun e!1837881 () Bool)

(declare-fun e!1837885 () Bool)

(assert (=> b!2911807 (= e!1837881 e!1837885)))

(declare-fun res!1201921 () Bool)

(assert (=> b!2911807 (=> (not res!1201921) (not e!1837885))))

(assert (=> b!2911807 (= res!1201921 call!190095)))

(declare-fun b!2911808 () Bool)

(declare-fun res!1201920 () Bool)

(declare-fun e!1837886 () Bool)

(assert (=> b!2911808 (=> (not res!1201920) (not e!1837886))))

(declare-fun call!190096 () Bool)

(assert (=> b!2911808 (= res!1201920 call!190096)))

(declare-fun e!1837882 () Bool)

(assert (=> b!2911808 (= e!1837882 e!1837886)))

(declare-fun b!2911810 () Bool)

(assert (=> b!2911810 (= e!1837886 call!190095)))

(declare-fun bm!190091 () Bool)

(declare-fun call!190097 () Bool)

(assert (=> bm!190091 (= call!190096 call!190097)))

(declare-fun b!2911811 () Bool)

(assert (=> b!2911811 (= e!1837885 call!190096)))

(declare-fun c!474832 () Bool)

(declare-fun bm!190092 () Bool)

(assert (=> bm!190092 (= call!190097 (validRegex!3687 (ite c!474832 (reg!9283 (regOne!18420 r!17423)) (ite c!474833 (regOne!18421 (regOne!18420 r!17423)) (regTwo!18420 (regOne!18420 r!17423))))))))

(declare-fun b!2911812 () Bool)

(declare-fun e!1837883 () Bool)

(assert (=> b!2911812 (= e!1837883 e!1837880)))

(assert (=> b!2911812 (= c!474832 (is-Star!8954 (regOne!18420 r!17423)))))

(declare-fun b!2911809 () Bool)

(declare-fun res!1201919 () Bool)

(assert (=> b!2911809 (=> res!1201919 e!1837881)))

(assert (=> b!2911809 (= res!1201919 (not (is-Concat!14275 (regOne!18420 r!17423))))))

(assert (=> b!2911809 (= e!1837882 e!1837881)))

(declare-fun d!837685 () Bool)

(declare-fun res!1201918 () Bool)

(assert (=> d!837685 (=> res!1201918 e!1837883)))

(assert (=> d!837685 (= res!1201918 (is-ElementMatch!8954 (regOne!18420 r!17423)))))

(assert (=> d!837685 (= (validRegex!3687 (regOne!18420 r!17423)) e!1837883)))

(declare-fun b!2911813 () Bool)

(assert (=> b!2911813 (= e!1837884 call!190097)))

(declare-fun b!2911814 () Bool)

(assert (=> b!2911814 (= e!1837880 e!1837882)))

(assert (=> b!2911814 (= c!474833 (is-Union!8954 (regOne!18420 r!17423)))))

(assert (= (and d!837685 (not res!1201918)) b!2911812))

(assert (= (and b!2911812 c!474832) b!2911806))

(assert (= (and b!2911812 (not c!474832)) b!2911814))

(assert (= (and b!2911806 res!1201917) b!2911813))

(assert (= (and b!2911814 c!474833) b!2911808))

(assert (= (and b!2911814 (not c!474833)) b!2911809))

(assert (= (and b!2911808 res!1201920) b!2911810))

(assert (= (and b!2911809 (not res!1201919)) b!2911807))

(assert (= (and b!2911807 res!1201921) b!2911811))

(assert (= (or b!2911808 b!2911811) bm!190091))

(assert (= (or b!2911810 b!2911807) bm!190090))

(assert (= (or b!2911813 bm!190091) bm!190092))

(declare-fun m!3312829 () Bool)

(assert (=> bm!190090 m!3312829))

(declare-fun m!3312831 () Bool)

(assert (=> b!2911806 m!3312831))

(declare-fun m!3312833 () Bool)

(assert (=> bm!190092 m!3312833))

(assert (=> b!2911717 d!837685))

(declare-fun b!2911842 () Bool)

(declare-fun e!1837904 () Bool)

(declare-fun lt!1023964 () Option!6555)

(assert (=> b!2911842 (= e!1837904 (not (isDefined!5106 lt!1023964)))))

(declare-fun b!2911843 () Bool)

(declare-fun res!1201941 () Bool)

(declare-fun e!1837908 () Bool)

(assert (=> b!2911843 (=> (not res!1201941) (not e!1837908))))

(declare-fun get!10536 (Option!6555) tuple2!33646)

(assert (=> b!2911843 (= res!1201941 (matchR!3836 (regTwo!18420 r!17423) (_2!19955 (get!10536 lt!1023964))))))

(declare-fun b!2911844 () Bool)

(declare-fun e!1837907 () Option!6555)

(assert (=> b!2911844 (= e!1837907 None!6554)))

(declare-fun b!2911845 () Bool)

(declare-fun e!1837906 () Option!6555)

(assert (=> b!2911845 (= e!1837906 (Some!6554 (tuple2!33647 Nil!34695 s!11993)))))

(declare-fun d!837687 () Bool)

(assert (=> d!837687 e!1837904))

(declare-fun res!1201940 () Bool)

(assert (=> d!837687 (=> res!1201940 e!1837904)))

(assert (=> d!837687 (= res!1201940 e!1837908)))

(declare-fun res!1201938 () Bool)

(assert (=> d!837687 (=> (not res!1201938) (not e!1837908))))

(assert (=> d!837687 (= res!1201938 (isDefined!5106 lt!1023964))))

(assert (=> d!837687 (= lt!1023964 e!1837906)))

(declare-fun c!474841 () Bool)

(declare-fun e!1837905 () Bool)

(assert (=> d!837687 (= c!474841 e!1837905)))

(declare-fun res!1201937 () Bool)

(assert (=> d!837687 (=> (not res!1201937) (not e!1837905))))

(assert (=> d!837687 (= res!1201937 (matchR!3836 (regOne!18420 r!17423) Nil!34695))))

(assert (=> d!837687 (validRegex!3687 (regOne!18420 r!17423))))

(assert (=> d!837687 (= (findConcatSeparation!949 (regOne!18420 r!17423) (regTwo!18420 r!17423) Nil!34695 s!11993 s!11993) lt!1023964)))

(declare-fun b!2911846 () Bool)

(assert (=> b!2911846 (= e!1837905 (matchR!3836 (regTwo!18420 r!17423) s!11993))))

(declare-fun b!2911847 () Bool)

(assert (=> b!2911847 (= e!1837906 e!1837907)))

(declare-fun c!474840 () Bool)

(assert (=> b!2911847 (= c!474840 (is-Nil!34695 s!11993))))

(declare-fun b!2911848 () Bool)

(declare-fun ++!8268 (List!34819 List!34819) List!34819)

(assert (=> b!2911848 (= e!1837908 (= (++!8268 (_1!19955 (get!10536 lt!1023964)) (_2!19955 (get!10536 lt!1023964))) s!11993))))

(declare-fun b!2911849 () Bool)

(declare-fun res!1201939 () Bool)

(assert (=> b!2911849 (=> (not res!1201939) (not e!1837908))))

(assert (=> b!2911849 (= res!1201939 (matchR!3836 (regOne!18420 r!17423) (_1!19955 (get!10536 lt!1023964))))))

(declare-fun b!2911850 () Bool)

(declare-fun lt!1023965 () Unit!48247)

(declare-fun lt!1023963 () Unit!48247)

(assert (=> b!2911850 (= lt!1023965 lt!1023963)))

(assert (=> b!2911850 (= (++!8268 (++!8268 Nil!34695 (Cons!34695 (h!40115 s!11993) Nil!34695)) (t!233884 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!905 (List!34819 C!18094 List!34819 List!34819) Unit!48247)

(assert (=> b!2911850 (= lt!1023963 (lemmaMoveElementToOtherListKeepsConcatEq!905 Nil!34695 (h!40115 s!11993) (t!233884 s!11993) s!11993))))

(assert (=> b!2911850 (= e!1837907 (findConcatSeparation!949 (regOne!18420 r!17423) (regTwo!18420 r!17423) (++!8268 Nil!34695 (Cons!34695 (h!40115 s!11993) Nil!34695)) (t!233884 s!11993) s!11993))))

(assert (= (and d!837687 res!1201937) b!2911846))

(assert (= (and d!837687 c!474841) b!2911845))

(assert (= (and d!837687 (not c!474841)) b!2911847))

(assert (= (and b!2911847 c!474840) b!2911844))

(assert (= (and b!2911847 (not c!474840)) b!2911850))

(assert (= (and d!837687 res!1201938) b!2911849))

(assert (= (and b!2911849 res!1201939) b!2911843))

(assert (= (and b!2911843 res!1201941) b!2911848))

(assert (= (and d!837687 (not res!1201940)) b!2911842))

(declare-fun m!3312841 () Bool)

(assert (=> b!2911843 m!3312841))

(declare-fun m!3312843 () Bool)

(assert (=> b!2911843 m!3312843))

(assert (=> b!2911848 m!3312841))

(declare-fun m!3312845 () Bool)

(assert (=> b!2911848 m!3312845))

(declare-fun m!3312847 () Bool)

(assert (=> d!837687 m!3312847))

(declare-fun m!3312849 () Bool)

(assert (=> d!837687 m!3312849))

(assert (=> d!837687 m!3312787))

(assert (=> b!2911842 m!3312847))

(assert (=> b!2911849 m!3312841))

(declare-fun m!3312851 () Bool)

(assert (=> b!2911849 m!3312851))

(declare-fun m!3312853 () Bool)

(assert (=> b!2911850 m!3312853))

(assert (=> b!2911850 m!3312853))

(declare-fun m!3312855 () Bool)

(assert (=> b!2911850 m!3312855))

(declare-fun m!3312857 () Bool)

(assert (=> b!2911850 m!3312857))

(assert (=> b!2911850 m!3312853))

(declare-fun m!3312859 () Bool)

(assert (=> b!2911850 m!3312859))

(declare-fun m!3312861 () Bool)

(assert (=> b!2911846 m!3312861))

(assert (=> b!2911717 d!837687))

(declare-fun bs!524560 () Bool)

(declare-fun d!837691 () Bool)

(assert (= bs!524560 (and d!837691 b!2911717)))

(declare-fun lambda!108109 () Int)

(assert (=> bs!524560 (= lambda!108109 lambda!108089)))

(assert (=> bs!524560 (not (= lambda!108109 lambda!108090))))

(declare-fun bs!524561 () Bool)

(assert (= bs!524561 (and d!837691 d!837681)))

(assert (=> bs!524561 (= lambda!108109 lambda!108103)))

(assert (=> bs!524561 (not (= lambda!108109 lambda!108104))))

(assert (=> d!837691 true))

(assert (=> d!837691 true))

(assert (=> d!837691 true))

(assert (=> d!837691 (= (isDefined!5106 (findConcatSeparation!949 (regOne!18420 r!17423) (regTwo!18420 r!17423) Nil!34695 s!11993 s!11993)) (Exists!1334 lambda!108109))))

(declare-fun lt!1023968 () Unit!48247)

(declare-fun choose!17123 (Regex!8954 Regex!8954 List!34819) Unit!48247)

(assert (=> d!837691 (= lt!1023968 (choose!17123 (regOne!18420 r!17423) (regTwo!18420 r!17423) s!11993))))

(assert (=> d!837691 (validRegex!3687 (regOne!18420 r!17423))))

(assert (=> d!837691 (= (lemmaFindConcatSeparationEquivalentToExists!731 (regOne!18420 r!17423) (regTwo!18420 r!17423) s!11993) lt!1023968)))

(declare-fun bs!524562 () Bool)

(assert (= bs!524562 d!837691))

(declare-fun m!3312863 () Bool)

(assert (=> bs!524562 m!3312863))

(assert (=> bs!524562 m!3312777))

(assert (=> bs!524562 m!3312779))

(assert (=> bs!524562 m!3312787))

(declare-fun m!3312865 () Bool)

(assert (=> bs!524562 m!3312865))

(assert (=> bs!524562 m!3312777))

(assert (=> b!2911717 d!837691))

(declare-fun d!837693 () Bool)

(assert (=> d!837693 (= (isEmpty!18935 s!11993) (is-Nil!34695 s!11993))))

(assert (=> b!2911713 d!837693))

(declare-fun bm!190096 () Bool)

(declare-fun call!190101 () Bool)

(declare-fun c!474851 () Bool)

(assert (=> bm!190096 (= call!190101 (validRegex!3687 (ite c!474851 (regTwo!18421 r!17423) (regOne!18420 r!17423))))))

(declare-fun b!2911883 () Bool)

(declare-fun e!1837927 () Bool)

(declare-fun e!1837931 () Bool)

(assert (=> b!2911883 (= e!1837927 e!1837931)))

(declare-fun res!1201958 () Bool)

(assert (=> b!2911883 (= res!1201958 (not (nullable!2792 (reg!9283 r!17423))))))

(assert (=> b!2911883 (=> (not res!1201958) (not e!1837931))))

(declare-fun b!2911884 () Bool)

(declare-fun e!1837928 () Bool)

(declare-fun e!1837932 () Bool)

(assert (=> b!2911884 (= e!1837928 e!1837932)))

(declare-fun res!1201962 () Bool)

(assert (=> b!2911884 (=> (not res!1201962) (not e!1837932))))

(assert (=> b!2911884 (= res!1201962 call!190101)))

(declare-fun b!2911885 () Bool)

(declare-fun res!1201961 () Bool)

(declare-fun e!1837933 () Bool)

(assert (=> b!2911885 (=> (not res!1201961) (not e!1837933))))

(declare-fun call!190102 () Bool)

(assert (=> b!2911885 (= res!1201961 call!190102)))

(declare-fun e!1837929 () Bool)

(assert (=> b!2911885 (= e!1837929 e!1837933)))

(declare-fun b!2911887 () Bool)

(assert (=> b!2911887 (= e!1837933 call!190101)))

(declare-fun bm!190097 () Bool)

(declare-fun call!190103 () Bool)

(assert (=> bm!190097 (= call!190102 call!190103)))

(declare-fun b!2911888 () Bool)

(assert (=> b!2911888 (= e!1837932 call!190102)))

(declare-fun c!474850 () Bool)

(declare-fun bm!190098 () Bool)

(assert (=> bm!190098 (= call!190103 (validRegex!3687 (ite c!474850 (reg!9283 r!17423) (ite c!474851 (regOne!18421 r!17423) (regTwo!18420 r!17423)))))))

(declare-fun b!2911889 () Bool)

(declare-fun e!1837930 () Bool)

(assert (=> b!2911889 (= e!1837930 e!1837927)))

(assert (=> b!2911889 (= c!474850 (is-Star!8954 r!17423))))

(declare-fun b!2911886 () Bool)

(declare-fun res!1201960 () Bool)

(assert (=> b!2911886 (=> res!1201960 e!1837928)))

(assert (=> b!2911886 (= res!1201960 (not (is-Concat!14275 r!17423)))))

(assert (=> b!2911886 (= e!1837929 e!1837928)))

(declare-fun d!837695 () Bool)

(declare-fun res!1201959 () Bool)

(assert (=> d!837695 (=> res!1201959 e!1837930)))

(assert (=> d!837695 (= res!1201959 (is-ElementMatch!8954 r!17423))))

(assert (=> d!837695 (= (validRegex!3687 r!17423) e!1837930)))

(declare-fun b!2911890 () Bool)

(assert (=> b!2911890 (= e!1837931 call!190103)))

(declare-fun b!2911891 () Bool)

(assert (=> b!2911891 (= e!1837927 e!1837929)))

(assert (=> b!2911891 (= c!474851 (is-Union!8954 r!17423))))

(assert (= (and d!837695 (not res!1201959)) b!2911889))

(assert (= (and b!2911889 c!474850) b!2911883))

(assert (= (and b!2911889 (not c!474850)) b!2911891))

(assert (= (and b!2911883 res!1201958) b!2911890))

(assert (= (and b!2911891 c!474851) b!2911885))

(assert (= (and b!2911891 (not c!474851)) b!2911886))

(assert (= (and b!2911885 res!1201961) b!2911887))

(assert (= (and b!2911886 (not res!1201960)) b!2911884))

(assert (= (and b!2911884 res!1201962) b!2911888))

(assert (= (or b!2911885 b!2911888) bm!190097))

(assert (= (or b!2911887 b!2911884) bm!190096))

(assert (= (or b!2911890 bm!190097) bm!190098))

(declare-fun m!3312867 () Bool)

(assert (=> bm!190096 m!3312867))

(declare-fun m!3312869 () Bool)

(assert (=> b!2911883 m!3312869))

(declare-fun m!3312871 () Bool)

(assert (=> bm!190098 m!3312871))

(assert (=> start!283742 d!837695))

(declare-fun bs!524564 () Bool)

(declare-fun b!2911941 () Bool)

(assert (= bs!524564 (and b!2911941 b!2911717)))

(declare-fun lambda!108117 () Int)

(assert (=> bs!524564 (not (= lambda!108117 lambda!108089))))

(declare-fun bs!524565 () Bool)

(assert (= bs!524565 (and b!2911941 d!837681)))

(assert (=> bs!524565 (not (= lambda!108117 lambda!108103))))

(assert (=> bs!524564 (not (= lambda!108117 lambda!108090))))

(declare-fun bs!524566 () Bool)

(assert (= bs!524566 (and b!2911941 d!837691)))

(assert (=> bs!524566 (not (= lambda!108117 lambda!108109))))

(assert (=> bs!524565 (not (= lambda!108117 lambda!108104))))

(assert (=> b!2911941 true))

(assert (=> b!2911941 true))

(declare-fun bs!524567 () Bool)

(declare-fun b!2911942 () Bool)

(assert (= bs!524567 (and b!2911942 b!2911717)))

(declare-fun lambda!108118 () Int)

(assert (=> bs!524567 (not (= lambda!108118 lambda!108089))))

(declare-fun bs!524568 () Bool)

(assert (= bs!524568 (and b!2911942 b!2911941)))

(assert (=> bs!524568 (not (= lambda!108118 lambda!108117))))

(declare-fun bs!524569 () Bool)

(assert (= bs!524569 (and b!2911942 d!837681)))

(assert (=> bs!524569 (not (= lambda!108118 lambda!108103))))

(assert (=> bs!524567 (= lambda!108118 lambda!108090)))

(declare-fun bs!524570 () Bool)

(assert (= bs!524570 (and b!2911942 d!837691)))

(assert (=> bs!524570 (not (= lambda!108118 lambda!108109))))

(assert (=> bs!524569 (= lambda!108118 lambda!108104)))

(assert (=> b!2911942 true))

(assert (=> b!2911942 true))

(declare-fun b!2911939 () Bool)

(declare-fun e!1837966 () Bool)

(assert (=> b!2911939 (= e!1837966 (matchRSpec!1091 (regTwo!18421 r!17423) s!11993))))

(declare-fun b!2911940 () Bool)

(declare-fun res!1201988 () Bool)

(declare-fun e!1837962 () Bool)

(assert (=> b!2911940 (=> res!1201988 e!1837962)))

(declare-fun call!190115 () Bool)

(assert (=> b!2911940 (= res!1201988 call!190115)))

(declare-fun e!1837964 () Bool)

(assert (=> b!2911940 (= e!1837964 e!1837962)))

(declare-fun call!190114 () Bool)

(assert (=> b!2911941 (= e!1837962 call!190114)))

(assert (=> b!2911942 (= e!1837964 call!190114)))

(declare-fun b!2911943 () Bool)

(declare-fun c!474866 () Bool)

(assert (=> b!2911943 (= c!474866 (is-ElementMatch!8954 r!17423))))

(declare-fun e!1837965 () Bool)

(declare-fun e!1837963 () Bool)

(assert (=> b!2911943 (= e!1837965 e!1837963)))

(declare-fun b!2911944 () Bool)

(assert (=> b!2911944 (= e!1837963 (= s!11993 (Cons!34695 (c!474822 r!17423) Nil!34695)))))

(declare-fun b!2911945 () Bool)

(declare-fun e!1837961 () Bool)

(assert (=> b!2911945 (= e!1837961 e!1837965)))

(declare-fun res!1201987 () Bool)

(assert (=> b!2911945 (= res!1201987 (not (is-EmptyLang!8954 r!17423)))))

(assert (=> b!2911945 (=> (not res!1201987) (not e!1837965))))

(declare-fun b!2911947 () Bool)

(declare-fun c!474865 () Bool)

(assert (=> b!2911947 (= c!474865 (is-Union!8954 r!17423))))

(declare-fun e!1837967 () Bool)

(assert (=> b!2911947 (= e!1837963 e!1837967)))

(declare-fun bm!190109 () Bool)

(assert (=> bm!190109 (= call!190115 (isEmpty!18935 s!11993))))

(declare-fun b!2911948 () Bool)

(assert (=> b!2911948 (= e!1837967 e!1837966)))

(declare-fun res!1201986 () Bool)

(assert (=> b!2911948 (= res!1201986 (matchRSpec!1091 (regOne!18421 r!17423) s!11993))))

(assert (=> b!2911948 (=> res!1201986 e!1837966)))

(declare-fun bm!190110 () Bool)

(declare-fun c!474867 () Bool)

(assert (=> bm!190110 (= call!190114 (Exists!1334 (ite c!474867 lambda!108117 lambda!108118)))))

(declare-fun b!2911949 () Bool)

(assert (=> b!2911949 (= e!1837961 call!190115)))

(declare-fun d!837697 () Bool)

(declare-fun c!474864 () Bool)

(assert (=> d!837697 (= c!474864 (is-EmptyExpr!8954 r!17423))))

(assert (=> d!837697 (= (matchRSpec!1091 r!17423 s!11993) e!1837961)))

(declare-fun b!2911946 () Bool)

(assert (=> b!2911946 (= e!1837967 e!1837964)))

(assert (=> b!2911946 (= c!474867 (is-Star!8954 r!17423))))

(assert (= (and d!837697 c!474864) b!2911949))

(assert (= (and d!837697 (not c!474864)) b!2911945))

(assert (= (and b!2911945 res!1201987) b!2911943))

(assert (= (and b!2911943 c!474866) b!2911944))

(assert (= (and b!2911943 (not c!474866)) b!2911947))

(assert (= (and b!2911947 c!474865) b!2911948))

(assert (= (and b!2911947 (not c!474865)) b!2911946))

(assert (= (and b!2911948 (not res!1201986)) b!2911939))

(assert (= (and b!2911946 c!474867) b!2911940))

(assert (= (and b!2911946 (not c!474867)) b!2911942))

(assert (= (and b!2911940 (not res!1201988)) b!2911941))

(assert (= (or b!2911941 b!2911942) bm!190110))

(assert (= (or b!2911949 b!2911940) bm!190109))

(declare-fun m!3312873 () Bool)

(assert (=> b!2911939 m!3312873))

(assert (=> bm!190109 m!3312791))

(declare-fun m!3312875 () Bool)

(assert (=> b!2911948 m!3312875))

(declare-fun m!3312877 () Bool)

(assert (=> bm!190110 m!3312877))

(assert (=> b!2911710 d!837697))

(declare-fun b!2911978 () Bool)

(declare-fun e!1837987 () Bool)

(declare-fun e!1837984 () Bool)

(assert (=> b!2911978 (= e!1837987 e!1837984)))

(declare-fun res!1202009 () Bool)

(assert (=> b!2911978 (=> res!1202009 e!1837984)))

(declare-fun call!190118 () Bool)

(assert (=> b!2911978 (= res!1202009 call!190118)))

(declare-fun b!2911979 () Bool)

(declare-fun e!1837983 () Bool)

(declare-fun head!6465 (List!34819) C!18094)

(assert (=> b!2911979 (= e!1837983 (= (head!6465 s!11993) (c!474822 r!17423)))))

(declare-fun d!837699 () Bool)

(declare-fun e!1837985 () Bool)

(assert (=> d!837699 e!1837985))

(declare-fun c!474874 () Bool)

(assert (=> d!837699 (= c!474874 (is-EmptyExpr!8954 r!17423))))

(declare-fun lt!1023971 () Bool)

(declare-fun e!1837986 () Bool)

(assert (=> d!837699 (= lt!1023971 e!1837986)))

(declare-fun c!474875 () Bool)

(assert (=> d!837699 (= c!474875 (isEmpty!18935 s!11993))))

(assert (=> d!837699 (validRegex!3687 r!17423)))

(assert (=> d!837699 (= (matchR!3836 r!17423 s!11993) lt!1023971)))

(declare-fun b!2911980 () Bool)

(declare-fun e!1837982 () Bool)

(assert (=> b!2911980 (= e!1837985 e!1837982)))

(declare-fun c!474876 () Bool)

(assert (=> b!2911980 (= c!474876 (is-EmptyLang!8954 r!17423))))

(declare-fun b!2911981 () Bool)

(declare-fun res!1202012 () Bool)

(assert (=> b!2911981 (=> res!1202012 e!1837984)))

(declare-fun tail!4692 (List!34819) List!34819)

(assert (=> b!2911981 (= res!1202012 (not (isEmpty!18935 (tail!4692 s!11993))))))

(declare-fun b!2911982 () Bool)

(declare-fun derivativeStep!2407 (Regex!8954 C!18094) Regex!8954)

(assert (=> b!2911982 (= e!1837986 (matchR!3836 (derivativeStep!2407 r!17423 (head!6465 s!11993)) (tail!4692 s!11993)))))

(declare-fun b!2911983 () Bool)

(assert (=> b!2911983 (= e!1837982 (not lt!1023971))))

(declare-fun b!2911984 () Bool)

(assert (=> b!2911984 (= e!1837986 (nullable!2792 r!17423))))

(declare-fun b!2911985 () Bool)

(declare-fun res!1202005 () Bool)

(declare-fun e!1837988 () Bool)

(assert (=> b!2911985 (=> res!1202005 e!1837988)))

(assert (=> b!2911985 (= res!1202005 e!1837983)))

(declare-fun res!1202006 () Bool)

(assert (=> b!2911985 (=> (not res!1202006) (not e!1837983))))

(assert (=> b!2911985 (= res!1202006 lt!1023971)))

(declare-fun b!2911986 () Bool)

(declare-fun res!1202008 () Bool)

(assert (=> b!2911986 (=> res!1202008 e!1837988)))

(assert (=> b!2911986 (= res!1202008 (not (is-ElementMatch!8954 r!17423)))))

(assert (=> b!2911986 (= e!1837982 e!1837988)))

(declare-fun b!2911987 () Bool)

(declare-fun res!1202007 () Bool)

(assert (=> b!2911987 (=> (not res!1202007) (not e!1837983))))

(assert (=> b!2911987 (= res!1202007 (isEmpty!18935 (tail!4692 s!11993)))))

(declare-fun b!2911988 () Bool)

(assert (=> b!2911988 (= e!1837988 e!1837987)))

(declare-fun res!1202010 () Bool)

(assert (=> b!2911988 (=> (not res!1202010) (not e!1837987))))

(assert (=> b!2911988 (= res!1202010 (not lt!1023971))))

(declare-fun bm!190113 () Bool)

(assert (=> bm!190113 (= call!190118 (isEmpty!18935 s!11993))))

(declare-fun b!2911989 () Bool)

(declare-fun res!1202011 () Bool)

(assert (=> b!2911989 (=> (not res!1202011) (not e!1837983))))

(assert (=> b!2911989 (= res!1202011 (not call!190118))))

(declare-fun b!2911990 () Bool)

(assert (=> b!2911990 (= e!1837985 (= lt!1023971 call!190118))))

(declare-fun b!2911991 () Bool)

(assert (=> b!2911991 (= e!1837984 (not (= (head!6465 s!11993) (c!474822 r!17423))))))

(assert (= (and d!837699 c!474875) b!2911984))

(assert (= (and d!837699 (not c!474875)) b!2911982))

(assert (= (and d!837699 c!474874) b!2911990))

(assert (= (and d!837699 (not c!474874)) b!2911980))

(assert (= (and b!2911980 c!474876) b!2911983))

(assert (= (and b!2911980 (not c!474876)) b!2911986))

(assert (= (and b!2911986 (not res!1202008)) b!2911985))

(assert (= (and b!2911985 res!1202006) b!2911989))

(assert (= (and b!2911989 res!1202011) b!2911987))

(assert (= (and b!2911987 res!1202007) b!2911979))

(assert (= (and b!2911985 (not res!1202005)) b!2911988))

(assert (= (and b!2911988 res!1202010) b!2911978))

(assert (= (and b!2911978 (not res!1202009)) b!2911981))

(assert (= (and b!2911981 (not res!1202012)) b!2911991))

(assert (= (or b!2911990 b!2911978 b!2911989) bm!190113))

(declare-fun m!3312885 () Bool)

(assert (=> b!2911979 m!3312885))

(assert (=> b!2911991 m!3312885))

(declare-fun m!3312887 () Bool)

(assert (=> b!2911984 m!3312887))

(declare-fun m!3312889 () Bool)

(assert (=> b!2911981 m!3312889))

(assert (=> b!2911981 m!3312889))

(declare-fun m!3312891 () Bool)

(assert (=> b!2911981 m!3312891))

(assert (=> bm!190113 m!3312791))

(assert (=> b!2911982 m!3312885))

(assert (=> b!2911982 m!3312885))

(declare-fun m!3312893 () Bool)

(assert (=> b!2911982 m!3312893))

(assert (=> b!2911982 m!3312889))

(assert (=> b!2911982 m!3312893))

(assert (=> b!2911982 m!3312889))

(declare-fun m!3312895 () Bool)

(assert (=> b!2911982 m!3312895))

(assert (=> d!837699 m!3312791))

(assert (=> d!837699 m!3312789))

(assert (=> b!2911987 m!3312889))

(assert (=> b!2911987 m!3312889))

(assert (=> b!2911987 m!3312891))

(assert (=> b!2911710 d!837699))

(declare-fun d!837703 () Bool)

(assert (=> d!837703 (= (matchR!3836 r!17423 s!11993) (matchRSpec!1091 r!17423 s!11993))))

(declare-fun lt!1023976 () Unit!48247)

(declare-fun choose!17124 (Regex!8954 List!34819) Unit!48247)

(assert (=> d!837703 (= lt!1023976 (choose!17124 r!17423 s!11993))))

(assert (=> d!837703 (validRegex!3687 r!17423)))

(assert (=> d!837703 (= (mainMatchTheorem!1091 r!17423 s!11993) lt!1023976)))

(declare-fun bs!524573 () Bool)

(assert (= bs!524573 d!837703))

(assert (=> bs!524573 m!3312771))

(assert (=> bs!524573 m!3312769))

(declare-fun m!3312897 () Bool)

(assert (=> bs!524573 m!3312897))

(assert (=> bs!524573 m!3312789))

(assert (=> b!2911710 d!837703))

(declare-fun e!1838001 () Bool)

(assert (=> b!2911715 (= tp!935505 e!1838001)))

(declare-fun b!2912024 () Bool)

(declare-fun tp!935537 () Bool)

(assert (=> b!2912024 (= e!1838001 tp!935537)))

(declare-fun b!2912025 () Bool)

(declare-fun tp!935540 () Bool)

(declare-fun tp!935539 () Bool)

(assert (=> b!2912025 (= e!1838001 (and tp!935540 tp!935539))))

(declare-fun b!2912022 () Bool)

(assert (=> b!2912022 (= e!1838001 tp_is_empty!15471)))

(declare-fun b!2912023 () Bool)

(declare-fun tp!935536 () Bool)

(declare-fun tp!935538 () Bool)

(assert (=> b!2912023 (= e!1838001 (and tp!935536 tp!935538))))

(assert (= (and b!2911715 (is-ElementMatch!8954 (regOne!18421 r!17423))) b!2912022))

(assert (= (and b!2911715 (is-Concat!14275 (regOne!18421 r!17423))) b!2912023))

(assert (= (and b!2911715 (is-Star!8954 (regOne!18421 r!17423))) b!2912024))

(assert (= (and b!2911715 (is-Union!8954 (regOne!18421 r!17423))) b!2912025))

(declare-fun e!1838004 () Bool)

(assert (=> b!2911715 (= tp!935503 e!1838004)))

(declare-fun b!2912032 () Bool)

(declare-fun tp!935542 () Bool)

(assert (=> b!2912032 (= e!1838004 tp!935542)))

(declare-fun b!2912033 () Bool)

(declare-fun tp!935545 () Bool)

(declare-fun tp!935544 () Bool)

(assert (=> b!2912033 (= e!1838004 (and tp!935545 tp!935544))))

(declare-fun b!2912030 () Bool)

(assert (=> b!2912030 (= e!1838004 tp_is_empty!15471)))

(declare-fun b!2912031 () Bool)

(declare-fun tp!935541 () Bool)

(declare-fun tp!935543 () Bool)

(assert (=> b!2912031 (= e!1838004 (and tp!935541 tp!935543))))

(assert (= (and b!2911715 (is-ElementMatch!8954 (regTwo!18421 r!17423))) b!2912030))

(assert (= (and b!2911715 (is-Concat!14275 (regTwo!18421 r!17423))) b!2912031))

(assert (= (and b!2911715 (is-Star!8954 (regTwo!18421 r!17423))) b!2912032))

(assert (= (and b!2911715 (is-Union!8954 (regTwo!18421 r!17423))) b!2912033))

(declare-fun e!1838007 () Bool)

(assert (=> b!2911714 (= tp!935506 e!1838007)))

(declare-fun b!2912040 () Bool)

(declare-fun tp!935547 () Bool)

(assert (=> b!2912040 (= e!1838007 tp!935547)))

(declare-fun b!2912041 () Bool)

(declare-fun tp!935550 () Bool)

(declare-fun tp!935549 () Bool)

(assert (=> b!2912041 (= e!1838007 (and tp!935550 tp!935549))))

(declare-fun b!2912038 () Bool)

(assert (=> b!2912038 (= e!1838007 tp_is_empty!15471)))

(declare-fun b!2912039 () Bool)

(declare-fun tp!935546 () Bool)

(declare-fun tp!935548 () Bool)

(assert (=> b!2912039 (= e!1838007 (and tp!935546 tp!935548))))

(assert (= (and b!2911714 (is-ElementMatch!8954 (reg!9283 r!17423))) b!2912038))

(assert (= (and b!2911714 (is-Concat!14275 (reg!9283 r!17423))) b!2912039))

(assert (= (and b!2911714 (is-Star!8954 (reg!9283 r!17423))) b!2912040))

(assert (= (and b!2911714 (is-Union!8954 (reg!9283 r!17423))) b!2912041))

(declare-fun e!1838008 () Bool)

(assert (=> b!2911711 (= tp!935507 e!1838008)))

(declare-fun b!2912044 () Bool)

(declare-fun tp!935552 () Bool)

(assert (=> b!2912044 (= e!1838008 tp!935552)))

(declare-fun b!2912045 () Bool)

(declare-fun tp!935555 () Bool)

(declare-fun tp!935554 () Bool)

(assert (=> b!2912045 (= e!1838008 (and tp!935555 tp!935554))))

(declare-fun b!2912042 () Bool)

(assert (=> b!2912042 (= e!1838008 tp_is_empty!15471)))

(declare-fun b!2912043 () Bool)

(declare-fun tp!935551 () Bool)

(declare-fun tp!935553 () Bool)

(assert (=> b!2912043 (= e!1838008 (and tp!935551 tp!935553))))

(assert (= (and b!2911711 (is-ElementMatch!8954 (regOne!18420 r!17423))) b!2912042))

(assert (= (and b!2911711 (is-Concat!14275 (regOne!18420 r!17423))) b!2912043))

(assert (= (and b!2911711 (is-Star!8954 (regOne!18420 r!17423))) b!2912044))

(assert (= (and b!2911711 (is-Union!8954 (regOne!18420 r!17423))) b!2912045))

(declare-fun e!1838009 () Bool)

(assert (=> b!2911711 (= tp!935502 e!1838009)))

(declare-fun b!2912048 () Bool)

(declare-fun tp!935557 () Bool)

(assert (=> b!2912048 (= e!1838009 tp!935557)))

(declare-fun b!2912049 () Bool)

(declare-fun tp!935560 () Bool)

(declare-fun tp!935559 () Bool)

(assert (=> b!2912049 (= e!1838009 (and tp!935560 tp!935559))))

(declare-fun b!2912046 () Bool)

(assert (=> b!2912046 (= e!1838009 tp_is_empty!15471)))

(declare-fun b!2912047 () Bool)

(declare-fun tp!935556 () Bool)

(declare-fun tp!935558 () Bool)

(assert (=> b!2912047 (= e!1838009 (and tp!935556 tp!935558))))

(assert (= (and b!2911711 (is-ElementMatch!8954 (regTwo!18420 r!17423))) b!2912046))

(assert (= (and b!2911711 (is-Concat!14275 (regTwo!18420 r!17423))) b!2912047))

(assert (= (and b!2911711 (is-Star!8954 (regTwo!18420 r!17423))) b!2912048))

(assert (= (and b!2911711 (is-Union!8954 (regTwo!18420 r!17423))) b!2912049))

(declare-fun b!2912054 () Bool)

(declare-fun e!1838012 () Bool)

(declare-fun tp!935563 () Bool)

(assert (=> b!2912054 (= e!1838012 (and tp_is_empty!15471 tp!935563))))

(assert (=> b!2911716 (= tp!935504 e!1838012)))

(assert (= (and b!2911716 (is-Cons!34695 (t!233884 s!11993))) b!2912054))

(push 1)

(assert (not bm!190090))

(assert (not b!2912039))

(assert (not b!2911987))

(assert (not bm!190098))

(assert (not b!2911806))

(assert (not b!2911991))

(assert (not b!2911846))

(assert (not b!2912025))

(assert (not bm!190110))

(assert (not b!2912024))

(assert (not b!2911849))

(assert (not d!837699))

(assert (not bm!190096))

(assert (not b!2912047))

(assert (not d!837687))

(assert (not bm!190113))

(assert (not b!2911984))

(assert (not b!2911948))

(assert (not b!2912048))

(assert (not b!2912045))

(assert (not d!837691))

(assert (not d!837677))

(assert (not b!2912040))

(assert (not b!2912023))

(assert tp_is_empty!15471)

(assert (not d!837679))

(assert (not b!2912031))

(assert (not b!2912049))

(assert (not d!837675))

(assert (not b!2912033))

(assert (not b!2911842))

(assert (not b!2912041))

(assert (not b!2911979))

(assert (not b!2911883))

(assert (not bm!190109))

(assert (not b!2912054))

(assert (not d!837703))

(assert (not b!2911843))

(assert (not bm!190092))

(assert (not b!2911981))

(assert (not b!2911939))

(assert (not b!2911850))

(assert (not d!837681))

(assert (not b!2911982))

(assert (not b!2912043))

(assert (not b!2912044))

(assert (not b!2911848))

(assert (not b!2912032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

