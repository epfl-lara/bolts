; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81992 () Bool)

(assert start!81992)

(declare-fun b!911929 () Bool)

(assert (=> b!911929 true))

(assert (=> b!911929 true))

(declare-fun lambda!29132 () Int)

(declare-fun lambda!29131 () Int)

(assert (=> b!911929 (not (= lambda!29132 lambda!29131))))

(assert (=> b!911929 true))

(assert (=> b!911929 true))

(declare-fun b!911928 () Bool)

(declare-fun res!414731 () Bool)

(declare-fun e!594774 () Bool)

(assert (=> b!911928 (=> res!414731 e!594774)))

(declare-datatypes ((C!5442 0))(
  ( (C!5443 (val!2969 Int)) )
))
(declare-datatypes ((List!9666 0))(
  ( (Nil!9650) (Cons!9650 (h!15051 C!5442) (t!100712 List!9666)) )
))
(declare-datatypes ((tuple2!10862 0))(
  ( (tuple2!10863 (_1!6257 List!9666) (_2!6257 List!9666)) )
))
(declare-datatypes ((Option!2073 0))(
  ( (None!2072) (Some!2072 (v!19489 tuple2!10862)) )
))
(declare-fun lt!336892 () Option!2073)

(declare-fun isEmpty!5875 (Option!2073) Bool)

(assert (=> b!911928 (= res!414731 (not (isEmpty!5875 lt!336892)))))

(declare-fun e!594771 () Bool)

(assert (=> b!911929 (= e!594771 e!594774)))

(declare-fun res!414729 () Bool)

(assert (=> b!911929 (=> res!414729 e!594774)))

(declare-fun s!10566 () List!9666)

(declare-fun isEmpty!5876 (List!9666) Bool)

(assert (=> b!911929 (= res!414729 (isEmpty!5876 s!10566))))

(declare-fun Exists!209 (Int) Bool)

(assert (=> b!911929 (= (Exists!209 lambda!29131) (Exists!209 lambda!29132))))

(declare-datatypes ((Unit!14491 0))(
  ( (Unit!14492) )
))
(declare-fun lt!336888 () Unit!14491)

(declare-datatypes ((Regex!2436 0))(
  ( (ElementMatch!2436 (c!147709 C!5442)) (Concat!4269 (regOne!5384 Regex!2436) (regTwo!5384 Regex!2436)) (EmptyExpr!2436) (Star!2436 (reg!2765 Regex!2436)) (EmptyLang!2436) (Union!2436 (regOne!5385 Regex!2436) (regTwo!5385 Regex!2436)) )
))
(declare-fun r!15766 () Regex!2436)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!123 (Regex!2436 Regex!2436 List!9666) Unit!14491)

(assert (=> b!911929 (= lt!336888 (lemmaExistCutMatchRandMatchRSpecEquivalent!123 (regOne!5384 r!15766) EmptyExpr!2436 s!10566))))

(declare-fun isDefined!1715 (Option!2073) Bool)

(assert (=> b!911929 (= (isDefined!1715 lt!336892) (Exists!209 lambda!29131))))

(declare-fun findConcatSeparation!179 (Regex!2436 Regex!2436 List!9666 List!9666 List!9666) Option!2073)

(assert (=> b!911929 (= lt!336892 (findConcatSeparation!179 (regOne!5384 r!15766) EmptyExpr!2436 Nil!9650 s!10566 s!10566))))

(declare-fun lt!336893 () Unit!14491)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!179 (Regex!2436 Regex!2436 List!9666) Unit!14491)

(assert (=> b!911929 (= lt!336893 (lemmaFindConcatSeparationEquivalentToExists!179 (regOne!5384 r!15766) EmptyExpr!2436 s!10566))))

(declare-fun b!911930 () Bool)

(declare-fun e!594775 () Bool)

(declare-fun tp!285097 () Bool)

(declare-fun tp!285096 () Bool)

(assert (=> b!911930 (= e!594775 (and tp!285097 tp!285096))))

(declare-fun res!414730 () Bool)

(declare-fun e!594773 () Bool)

(assert (=> start!81992 (=> (not res!414730) (not e!594773))))

(declare-fun validRegex!905 (Regex!2436) Bool)

(assert (=> start!81992 (= res!414730 (validRegex!905 r!15766))))

(assert (=> start!81992 e!594773))

(assert (=> start!81992 e!594775))

(declare-fun e!594770 () Bool)

(assert (=> start!81992 e!594770))

(declare-fun b!911931 () Bool)

(declare-fun tp_is_empty!4515 () Bool)

(assert (=> b!911931 (= e!594775 tp_is_empty!4515)))

(declare-fun b!911932 () Bool)

(declare-fun tp!285098 () Bool)

(assert (=> b!911932 (= e!594770 (and tp_is_empty!4515 tp!285098))))

(declare-fun b!911933 () Bool)

(declare-fun e!594772 () Bool)

(declare-fun removeUselessConcat!121 (Regex!2436) Regex!2436)

(assert (=> b!911933 (= e!594772 (validRegex!905 (removeUselessConcat!121 r!15766)))))

(declare-fun b!911934 () Bool)

(declare-fun tp!285095 () Bool)

(declare-fun tp!285093 () Bool)

(assert (=> b!911934 (= e!594775 (and tp!285095 tp!285093))))

(declare-fun b!911935 () Bool)

(assert (=> b!911935 (= e!594773 (not e!594771))))

(declare-fun res!414732 () Bool)

(assert (=> b!911935 (=> res!414732 e!594771)))

(declare-fun lt!336891 () Bool)

(assert (=> b!911935 (= res!414732 (or lt!336891 (and (is-Concat!4269 r!15766) (is-EmptyExpr!2436 (regOne!5384 r!15766))) (not (is-Concat!4269 r!15766)) (not (is-EmptyExpr!2436 (regTwo!5384 r!15766)))))))

(declare-fun matchRSpec!237 (Regex!2436 List!9666) Bool)

(assert (=> b!911935 (= lt!336891 (matchRSpec!237 r!15766 s!10566))))

(declare-fun matchR!974 (Regex!2436 List!9666) Bool)

(assert (=> b!911935 (= lt!336891 (matchR!974 r!15766 s!10566))))

(declare-fun lt!336889 () Unit!14491)

(declare-fun mainMatchTheorem!237 (Regex!2436 List!9666) Unit!14491)

(assert (=> b!911935 (= lt!336889 (mainMatchTheorem!237 r!15766 s!10566))))

(declare-fun b!911936 () Bool)

(declare-fun tp!285094 () Bool)

(assert (=> b!911936 (= e!594775 tp!285094)))

(declare-fun b!911937 () Bool)

(assert (=> b!911937 (= e!594774 e!594772)))

(declare-fun res!414733 () Bool)

(assert (=> b!911937 (=> res!414733 e!594772)))

(declare-fun lt!336896 () Bool)

(assert (=> b!911937 (= res!414733 lt!336896)))

(declare-fun lt!336894 () Bool)

(assert (=> b!911937 (= lt!336894 lt!336896)))

(declare-fun lt!336895 () Regex!2436)

(assert (=> b!911937 (= lt!336896 (matchR!974 lt!336895 s!10566))))

(assert (=> b!911937 (= lt!336894 (matchR!974 (regOne!5384 r!15766) s!10566))))

(assert (=> b!911937 (= lt!336895 (removeUselessConcat!121 (regOne!5384 r!15766)))))

(declare-fun lt!336890 () Unit!14491)

(declare-fun lemmaRemoveUselessConcatSound!107 (Regex!2436 List!9666) Unit!14491)

(assert (=> b!911937 (= lt!336890 (lemmaRemoveUselessConcatSound!107 (regOne!5384 r!15766) s!10566))))

(assert (= (and start!81992 res!414730) b!911935))

(assert (= (and b!911935 (not res!414732)) b!911929))

(assert (= (and b!911929 (not res!414729)) b!911928))

(assert (= (and b!911928 (not res!414731)) b!911937))

(assert (= (and b!911937 (not res!414733)) b!911933))

(assert (= (and start!81992 (is-ElementMatch!2436 r!15766)) b!911931))

(assert (= (and start!81992 (is-Concat!4269 r!15766)) b!911934))

(assert (= (and start!81992 (is-Star!2436 r!15766)) b!911936))

(assert (= (and start!81992 (is-Union!2436 r!15766)) b!911930))

(assert (= (and start!81992 (is-Cons!9650 s!10566)) b!911932))

(declare-fun m!1143729 () Bool)

(assert (=> b!911929 m!1143729))

(declare-fun m!1143731 () Bool)

(assert (=> b!911929 m!1143731))

(declare-fun m!1143733 () Bool)

(assert (=> b!911929 m!1143733))

(declare-fun m!1143735 () Bool)

(assert (=> b!911929 m!1143735))

(assert (=> b!911929 m!1143731))

(declare-fun m!1143737 () Bool)

(assert (=> b!911929 m!1143737))

(declare-fun m!1143739 () Bool)

(assert (=> b!911929 m!1143739))

(declare-fun m!1143741 () Bool)

(assert (=> b!911929 m!1143741))

(declare-fun m!1143743 () Bool)

(assert (=> b!911937 m!1143743))

(declare-fun m!1143745 () Bool)

(assert (=> b!911937 m!1143745))

(declare-fun m!1143747 () Bool)

(assert (=> b!911937 m!1143747))

(declare-fun m!1143749 () Bool)

(assert (=> b!911937 m!1143749))

(declare-fun m!1143751 () Bool)

(assert (=> b!911933 m!1143751))

(assert (=> b!911933 m!1143751))

(declare-fun m!1143753 () Bool)

(assert (=> b!911933 m!1143753))

(declare-fun m!1143755 () Bool)

(assert (=> start!81992 m!1143755))

(declare-fun m!1143757 () Bool)

(assert (=> b!911928 m!1143757))

(declare-fun m!1143759 () Bool)

(assert (=> b!911935 m!1143759))

(declare-fun m!1143761 () Bool)

(assert (=> b!911935 m!1143761))

(declare-fun m!1143763 () Bool)

(assert (=> b!911935 m!1143763))

(push 1)

(assert (not b!911933))

(assert (not b!911936))

(assert (not b!911934))

(assert (not start!81992))

(assert (not b!911929))

(assert (not b!911932))

(assert (not b!911928))

(assert tp_is_empty!4515)

(assert (not b!911937))

(assert (not b!911935))

(assert (not b!911930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!279390 () Bool)

(assert (=> d!279390 (= (isEmpty!5875 lt!336892) (not (is-Some!2072 lt!336892)))))

(assert (=> b!911928 d!279390))

(declare-fun b!912006 () Bool)

(declare-fun res!414775 () Bool)

(declare-fun e!594811 () Bool)

(assert (=> b!912006 (=> (not res!414775) (not e!594811))))

(declare-fun lt!336931 () Option!2073)

(declare-fun get!3114 (Option!2073) tuple2!10862)

(assert (=> b!912006 (= res!414775 (matchR!974 (regOne!5384 r!15766) (_1!6257 (get!3114 lt!336931))))))

(declare-fun b!912007 () Bool)

(declare-fun e!594813 () Option!2073)

(assert (=> b!912007 (= e!594813 (Some!2072 (tuple2!10863 Nil!9650 s!10566)))))

(declare-fun b!912008 () Bool)

(declare-fun e!594814 () Option!2073)

(assert (=> b!912008 (= e!594814 None!2072)))

(declare-fun b!912009 () Bool)

(declare-fun lt!336930 () Unit!14491)

(declare-fun lt!336932 () Unit!14491)

(assert (=> b!912009 (= lt!336930 lt!336932)))

(declare-fun ++!2540 (List!9666 List!9666) List!9666)

(assert (=> b!912009 (= (++!2540 (++!2540 Nil!9650 (Cons!9650 (h!15051 s!10566) Nil!9650)) (t!100712 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!155 (List!9666 C!5442 List!9666 List!9666) Unit!14491)

(assert (=> b!912009 (= lt!336932 (lemmaMoveElementToOtherListKeepsConcatEq!155 Nil!9650 (h!15051 s!10566) (t!100712 s!10566) s!10566))))

(assert (=> b!912009 (= e!594814 (findConcatSeparation!179 (regOne!5384 r!15766) EmptyExpr!2436 (++!2540 Nil!9650 (Cons!9650 (h!15051 s!10566) Nil!9650)) (t!100712 s!10566) s!10566))))

(declare-fun d!279392 () Bool)

(declare-fun e!594812 () Bool)

(assert (=> d!279392 e!594812))

(declare-fun res!414772 () Bool)

(assert (=> d!279392 (=> res!414772 e!594812)))

(assert (=> d!279392 (= res!414772 e!594811)))

(declare-fun res!414774 () Bool)

(assert (=> d!279392 (=> (not res!414774) (not e!594811))))

(assert (=> d!279392 (= res!414774 (isDefined!1715 lt!336931))))

(assert (=> d!279392 (= lt!336931 e!594813)))

(declare-fun c!147715 () Bool)

(declare-fun e!594810 () Bool)

(assert (=> d!279392 (= c!147715 e!594810)))

(declare-fun res!414773 () Bool)

(assert (=> d!279392 (=> (not res!414773) (not e!594810))))

(assert (=> d!279392 (= res!414773 (matchR!974 (regOne!5384 r!15766) Nil!9650))))

(assert (=> d!279392 (validRegex!905 (regOne!5384 r!15766))))

(assert (=> d!279392 (= (findConcatSeparation!179 (regOne!5384 r!15766) EmptyExpr!2436 Nil!9650 s!10566 s!10566) lt!336931)))

(declare-fun b!912010 () Bool)

(assert (=> b!912010 (= e!594810 (matchR!974 EmptyExpr!2436 s!10566))))

(declare-fun b!912011 () Bool)

(assert (=> b!912011 (= e!594812 (not (isDefined!1715 lt!336931)))))

(declare-fun b!912012 () Bool)

(assert (=> b!912012 (= e!594811 (= (++!2540 (_1!6257 (get!3114 lt!336931)) (_2!6257 (get!3114 lt!336931))) s!10566))))

(declare-fun b!912013 () Bool)

(assert (=> b!912013 (= e!594813 e!594814)))

(declare-fun c!147716 () Bool)

(assert (=> b!912013 (= c!147716 (is-Nil!9650 s!10566))))

(declare-fun b!912014 () Bool)

(declare-fun res!414771 () Bool)

(assert (=> b!912014 (=> (not res!414771) (not e!594811))))

(assert (=> b!912014 (= res!414771 (matchR!974 EmptyExpr!2436 (_2!6257 (get!3114 lt!336931))))))

(assert (= (and d!279392 res!414773) b!912010))

(assert (= (and d!279392 c!147715) b!912007))

(assert (= (and d!279392 (not c!147715)) b!912013))

(assert (= (and b!912013 c!147716) b!912008))

(assert (= (and b!912013 (not c!147716)) b!912009))

(assert (= (and d!279392 res!414774) b!912006))

(assert (= (and b!912006 res!414775) b!912014))

(assert (= (and b!912014 res!414771) b!912012))

(assert (= (and d!279392 (not res!414772)) b!912011))

(declare-fun m!1143801 () Bool)

(assert (=> b!912014 m!1143801))

(declare-fun m!1143803 () Bool)

(assert (=> b!912014 m!1143803))

(declare-fun m!1143805 () Bool)

(assert (=> d!279392 m!1143805))

(declare-fun m!1143807 () Bool)

(assert (=> d!279392 m!1143807))

(declare-fun m!1143809 () Bool)

(assert (=> d!279392 m!1143809))

(assert (=> b!912011 m!1143805))

(declare-fun m!1143811 () Bool)

(assert (=> b!912010 m!1143811))

(assert (=> b!912006 m!1143801))

(declare-fun m!1143813 () Bool)

(assert (=> b!912006 m!1143813))

(declare-fun m!1143815 () Bool)

(assert (=> b!912009 m!1143815))

(assert (=> b!912009 m!1143815))

(declare-fun m!1143817 () Bool)

(assert (=> b!912009 m!1143817))

(declare-fun m!1143819 () Bool)

(assert (=> b!912009 m!1143819))

(assert (=> b!912009 m!1143815))

(declare-fun m!1143821 () Bool)

(assert (=> b!912009 m!1143821))

(assert (=> b!912012 m!1143801))

(declare-fun m!1143823 () Bool)

(assert (=> b!912012 m!1143823))

(assert (=> b!911929 d!279392))

(declare-fun d!279398 () Bool)

(assert (=> d!279398 (= (isEmpty!5876 s!10566) (is-Nil!9650 s!10566))))

(assert (=> b!911929 d!279398))

(declare-fun d!279400 () Bool)

(declare-fun choose!5544 (Int) Bool)

(assert (=> d!279400 (= (Exists!209 lambda!29131) (choose!5544 lambda!29131))))

(declare-fun bs!235814 () Bool)

(assert (= bs!235814 d!279400))

(declare-fun m!1143825 () Bool)

(assert (=> bs!235814 m!1143825))

(assert (=> b!911929 d!279400))

(declare-fun bs!235815 () Bool)

(declare-fun d!279402 () Bool)

(assert (= bs!235815 (and d!279402 b!911929)))

(declare-fun lambda!29143 () Int)

(assert (=> bs!235815 (= lambda!29143 lambda!29131)))

(assert (=> bs!235815 (not (= lambda!29143 lambda!29132))))

(assert (=> d!279402 true))

(assert (=> d!279402 true))

(assert (=> d!279402 true))

(assert (=> d!279402 (= (isDefined!1715 (findConcatSeparation!179 (regOne!5384 r!15766) EmptyExpr!2436 Nil!9650 s!10566 s!10566)) (Exists!209 lambda!29143))))

(declare-fun lt!336935 () Unit!14491)

(declare-fun choose!5545 (Regex!2436 Regex!2436 List!9666) Unit!14491)

(assert (=> d!279402 (= lt!336935 (choose!5545 (regOne!5384 r!15766) EmptyExpr!2436 s!10566))))

(assert (=> d!279402 (validRegex!905 (regOne!5384 r!15766))))

(assert (=> d!279402 (= (lemmaFindConcatSeparationEquivalentToExists!179 (regOne!5384 r!15766) EmptyExpr!2436 s!10566) lt!336935)))

(declare-fun bs!235816 () Bool)

(assert (= bs!235816 d!279402))

(declare-fun m!1143827 () Bool)

(assert (=> bs!235816 m!1143827))

(assert (=> bs!235816 m!1143809))

(assert (=> bs!235816 m!1143737))

(declare-fun m!1143829 () Bool)

(assert (=> bs!235816 m!1143829))

(declare-fun m!1143831 () Bool)

(assert (=> bs!235816 m!1143831))

(assert (=> bs!235816 m!1143737))

(assert (=> b!911929 d!279402))

(declare-fun d!279404 () Bool)

(assert (=> d!279404 (= (isDefined!1715 lt!336892) (not (isEmpty!5875 lt!336892)))))

(declare-fun bs!235817 () Bool)

(assert (= bs!235817 d!279404))

(assert (=> bs!235817 m!1143757))

(assert (=> b!911929 d!279404))

(declare-fun bs!235818 () Bool)

(declare-fun d!279406 () Bool)

(assert (= bs!235818 (and d!279406 b!911929)))

(declare-fun lambda!29150 () Int)

(assert (=> bs!235818 (= lambda!29150 lambda!29131)))

(assert (=> bs!235818 (not (= lambda!29150 lambda!29132))))

(declare-fun bs!235819 () Bool)

(assert (= bs!235819 (and d!279406 d!279402)))

(assert (=> bs!235819 (= lambda!29150 lambda!29143)))

(assert (=> d!279406 true))

(assert (=> d!279406 true))

(assert (=> d!279406 true))

(declare-fun lambda!29152 () Int)

(assert (=> bs!235818 (not (= lambda!29152 lambda!29131))))

(assert (=> bs!235818 (= lambda!29152 lambda!29132)))

(assert (=> bs!235819 (not (= lambda!29152 lambda!29143))))

(declare-fun bs!235820 () Bool)

(assert (= bs!235820 d!279406))

(assert (=> bs!235820 (not (= lambda!29152 lambda!29150))))

(assert (=> d!279406 true))

(assert (=> d!279406 true))

(assert (=> d!279406 true))

(assert (=> d!279406 (= (Exists!209 lambda!29150) (Exists!209 lambda!29152))))

(declare-fun lt!336938 () Unit!14491)

(declare-fun choose!5546 (Regex!2436 Regex!2436 List!9666) Unit!14491)

(assert (=> d!279406 (= lt!336938 (choose!5546 (regOne!5384 r!15766) EmptyExpr!2436 s!10566))))

(assert (=> d!279406 (validRegex!905 (regOne!5384 r!15766))))

(assert (=> d!279406 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!123 (regOne!5384 r!15766) EmptyExpr!2436 s!10566) lt!336938)))

(declare-fun m!1143833 () Bool)

(assert (=> bs!235820 m!1143833))

(declare-fun m!1143835 () Bool)

(assert (=> bs!235820 m!1143835))

(declare-fun m!1143837 () Bool)

(assert (=> bs!235820 m!1143837))

(assert (=> bs!235820 m!1143809))

(assert (=> b!911929 d!279406))

(declare-fun d!279408 () Bool)

(assert (=> d!279408 (= (Exists!209 lambda!29132) (choose!5544 lambda!29132))))

(declare-fun bs!235821 () Bool)

(assert (= bs!235821 d!279408))

(declare-fun m!1143839 () Bool)

(assert (=> bs!235821 m!1143839))

(assert (=> b!911929 d!279408))

(declare-fun b!912077 () Bool)

(declare-fun e!594857 () Bool)

(declare-fun call!54850 () Bool)

(assert (=> b!912077 (= e!594857 call!54850)))

(declare-fun d!279410 () Bool)

(declare-fun res!414814 () Bool)

(declare-fun e!594858 () Bool)

(assert (=> d!279410 (=> res!414814 e!594858)))

(assert (=> d!279410 (= res!414814 (is-ElementMatch!2436 r!15766))))

(assert (=> d!279410 (= (validRegex!905 r!15766) e!594858)))

(declare-fun b!912078 () Bool)

(declare-fun e!594856 () Bool)

(assert (=> b!912078 (= e!594858 e!594856)))

(declare-fun c!147729 () Bool)

(assert (=> b!912078 (= c!147729 (is-Star!2436 r!15766))))

(declare-fun b!912079 () Bool)

(declare-fun e!594854 () Bool)

(assert (=> b!912079 (= e!594854 call!54850)))

(declare-fun b!912080 () Bool)

(declare-fun e!594855 () Bool)

(assert (=> b!912080 (= e!594856 e!594855)))

(declare-fun res!414816 () Bool)

(declare-fun nullable!660 (Regex!2436) Bool)

(assert (=> b!912080 (= res!414816 (not (nullable!660 (reg!2765 r!15766))))))

(assert (=> b!912080 (=> (not res!414816) (not e!594855))))

(declare-fun b!912081 () Bool)

(declare-fun call!54851 () Bool)

(assert (=> b!912081 (= e!594855 call!54851)))

(declare-fun b!912082 () Bool)

(declare-fun res!414817 () Bool)

(declare-fun e!594853 () Bool)

(assert (=> b!912082 (=> res!414817 e!594853)))

(assert (=> b!912082 (= res!414817 (not (is-Concat!4269 r!15766)))))

(declare-fun e!594859 () Bool)

(assert (=> b!912082 (= e!594859 e!594853)))

(declare-fun b!912083 () Bool)

(declare-fun res!414818 () Bool)

(assert (=> b!912083 (=> (not res!414818) (not e!594857))))

(declare-fun call!54852 () Bool)

(assert (=> b!912083 (= res!414818 call!54852)))

(assert (=> b!912083 (= e!594859 e!594857)))

(declare-fun bm!54845 () Bool)

(assert (=> bm!54845 (= call!54850 call!54851)))

(declare-fun b!912084 () Bool)

(assert (=> b!912084 (= e!594856 e!594859)))

(declare-fun c!147730 () Bool)

(assert (=> b!912084 (= c!147730 (is-Union!2436 r!15766))))

(declare-fun bm!54846 () Bool)

(assert (=> bm!54846 (= call!54852 (validRegex!905 (ite c!147730 (regOne!5385 r!15766) (regOne!5384 r!15766))))))

(declare-fun b!912085 () Bool)

(assert (=> b!912085 (= e!594853 e!594854)))

(declare-fun res!414815 () Bool)

(assert (=> b!912085 (=> (not res!414815) (not e!594854))))

(assert (=> b!912085 (= res!414815 call!54852)))

(declare-fun bm!54847 () Bool)

(assert (=> bm!54847 (= call!54851 (validRegex!905 (ite c!147729 (reg!2765 r!15766) (ite c!147730 (regTwo!5385 r!15766) (regTwo!5384 r!15766)))))))

(assert (= (and d!279410 (not res!414814)) b!912078))

(assert (= (and b!912078 c!147729) b!912080))

(assert (= (and b!912078 (not c!147729)) b!912084))

(assert (= (and b!912080 res!414816) b!912081))

(assert (= (and b!912084 c!147730) b!912083))

(assert (= (and b!912084 (not c!147730)) b!912082))

(assert (= (and b!912083 res!414818) b!912077))

(assert (= (and b!912082 (not res!414817)) b!912085))

(assert (= (and b!912085 res!414815) b!912079))

(assert (= (or b!912077 b!912079) bm!54845))

(assert (= (or b!912083 b!912085) bm!54846))

(assert (= (or b!912081 bm!54845) bm!54847))

(declare-fun m!1143841 () Bool)

(assert (=> b!912080 m!1143841))

(declare-fun m!1143843 () Bool)

(assert (=> bm!54846 m!1143843))

(declare-fun m!1143845 () Bool)

(assert (=> bm!54847 m!1143845))

(assert (=> start!81992 d!279410))

(declare-fun b!912086 () Bool)

(declare-fun e!594864 () Bool)

(declare-fun call!54853 () Bool)

(assert (=> b!912086 (= e!594864 call!54853)))

(declare-fun d!279412 () Bool)

(declare-fun res!414819 () Bool)

(declare-fun e!594865 () Bool)

(assert (=> d!279412 (=> res!414819 e!594865)))

(assert (=> d!279412 (= res!414819 (is-ElementMatch!2436 (removeUselessConcat!121 r!15766)))))

(assert (=> d!279412 (= (validRegex!905 (removeUselessConcat!121 r!15766)) e!594865)))

(declare-fun b!912087 () Bool)

(declare-fun e!594863 () Bool)

(assert (=> b!912087 (= e!594865 e!594863)))

(declare-fun c!147731 () Bool)

(assert (=> b!912087 (= c!147731 (is-Star!2436 (removeUselessConcat!121 r!15766)))))

(declare-fun b!912088 () Bool)

(declare-fun e!594861 () Bool)

(assert (=> b!912088 (= e!594861 call!54853)))

(declare-fun b!912089 () Bool)

(declare-fun e!594862 () Bool)

(assert (=> b!912089 (= e!594863 e!594862)))

(declare-fun res!414821 () Bool)

(assert (=> b!912089 (= res!414821 (not (nullable!660 (reg!2765 (removeUselessConcat!121 r!15766)))))))

(assert (=> b!912089 (=> (not res!414821) (not e!594862))))

(declare-fun b!912090 () Bool)

(declare-fun call!54854 () Bool)

(assert (=> b!912090 (= e!594862 call!54854)))

(declare-fun b!912091 () Bool)

(declare-fun res!414822 () Bool)

(declare-fun e!594860 () Bool)

(assert (=> b!912091 (=> res!414822 e!594860)))

(assert (=> b!912091 (= res!414822 (not (is-Concat!4269 (removeUselessConcat!121 r!15766))))))

(declare-fun e!594866 () Bool)

(assert (=> b!912091 (= e!594866 e!594860)))

(declare-fun b!912092 () Bool)

(declare-fun res!414823 () Bool)

(assert (=> b!912092 (=> (not res!414823) (not e!594864))))

(declare-fun call!54855 () Bool)

(assert (=> b!912092 (= res!414823 call!54855)))

(assert (=> b!912092 (= e!594866 e!594864)))

(declare-fun bm!54848 () Bool)

(assert (=> bm!54848 (= call!54853 call!54854)))

(declare-fun b!912093 () Bool)

(assert (=> b!912093 (= e!594863 e!594866)))

(declare-fun c!147732 () Bool)

(assert (=> b!912093 (= c!147732 (is-Union!2436 (removeUselessConcat!121 r!15766)))))

(declare-fun bm!54849 () Bool)

(assert (=> bm!54849 (= call!54855 (validRegex!905 (ite c!147732 (regOne!5385 (removeUselessConcat!121 r!15766)) (regOne!5384 (removeUselessConcat!121 r!15766)))))))

(declare-fun b!912094 () Bool)

(assert (=> b!912094 (= e!594860 e!594861)))

(declare-fun res!414820 () Bool)

(assert (=> b!912094 (=> (not res!414820) (not e!594861))))

(assert (=> b!912094 (= res!414820 call!54855)))

(declare-fun bm!54850 () Bool)

(assert (=> bm!54850 (= call!54854 (validRegex!905 (ite c!147731 (reg!2765 (removeUselessConcat!121 r!15766)) (ite c!147732 (regTwo!5385 (removeUselessConcat!121 r!15766)) (regTwo!5384 (removeUselessConcat!121 r!15766))))))))

(assert (= (and d!279412 (not res!414819)) b!912087))

(assert (= (and b!912087 c!147731) b!912089))

(assert (= (and b!912087 (not c!147731)) b!912093))

(assert (= (and b!912089 res!414821) b!912090))

(assert (= (and b!912093 c!147732) b!912092))

(assert (= (and b!912093 (not c!147732)) b!912091))

(assert (= (and b!912092 res!414823) b!912086))

(assert (= (and b!912091 (not res!414822)) b!912094))

(assert (= (and b!912094 res!414820) b!912088))

(assert (= (or b!912086 b!912088) bm!54848))

(assert (= (or b!912092 b!912094) bm!54849))

(assert (= (or b!912090 bm!54848) bm!54850))

(declare-fun m!1143847 () Bool)

(assert (=> b!912089 m!1143847))

(declare-fun m!1143849 () Bool)

(assert (=> bm!54849 m!1143849))

(declare-fun m!1143851 () Bool)

(assert (=> bm!54850 m!1143851))

(assert (=> b!911933 d!279412))

(declare-fun d!279414 () Bool)

(declare-fun e!594887 () Bool)

(assert (=> d!279414 e!594887))

(declare-fun res!414829 () Bool)

(assert (=> d!279414 (=> (not res!414829) (not e!594887))))

(declare-fun lt!336941 () Regex!2436)

(assert (=> d!279414 (= res!414829 (validRegex!905 lt!336941))))

(declare-fun e!594890 () Regex!2436)

(assert (=> d!279414 (= lt!336941 e!594890)))

(declare-fun c!147751 () Bool)

(assert (=> d!279414 (= c!147751 (and (is-Concat!4269 r!15766) (is-EmptyExpr!2436 (regOne!5384 r!15766))))))

(assert (=> d!279414 (validRegex!905 r!15766)))

(assert (=> d!279414 (= (removeUselessConcat!121 r!15766) lt!336941)))

(declare-fun bm!54863 () Bool)

(declare-fun call!54872 () Regex!2436)

(declare-fun call!54869 () Regex!2436)

(assert (=> bm!54863 (= call!54872 call!54869)))

(declare-fun b!912128 () Bool)

(declare-fun e!594889 () Regex!2436)

(assert (=> b!912128 (= e!594889 r!15766)))

(declare-fun b!912129 () Bool)

(assert (=> b!912129 (= e!594887 (= (nullable!660 lt!336941) (nullable!660 r!15766)))))

(declare-fun b!912130 () Bool)

(declare-fun e!594891 () Regex!2436)

(declare-fun call!54868 () Regex!2436)

(assert (=> b!912130 (= e!594891 call!54868)))

(declare-fun b!912131 () Bool)

(declare-fun c!147750 () Bool)

(assert (=> b!912131 (= c!147750 (is-Concat!4269 r!15766))))

(declare-fun e!594886 () Regex!2436)

(assert (=> b!912131 (= e!594891 e!594886)))

(declare-fun b!912132 () Bool)

(declare-fun c!147749 () Bool)

(assert (=> b!912132 (= c!147749 (is-Star!2436 r!15766))))

(declare-fun e!594888 () Regex!2436)

(assert (=> b!912132 (= e!594888 e!594889)))

(declare-fun bm!54864 () Bool)

(assert (=> bm!54864 (= call!54869 call!54868)))

(declare-fun b!912133 () Bool)

(assert (=> b!912133 (= e!594890 e!594891)))

(declare-fun c!147747 () Bool)

(assert (=> b!912133 (= c!147747 (and (is-Concat!4269 r!15766) (is-EmptyExpr!2436 (regTwo!5384 r!15766))))))

(declare-fun b!912134 () Bool)

(declare-fun call!54870 () Regex!2436)

(assert (=> b!912134 (= e!594890 call!54870)))

(declare-fun bm!54865 () Bool)

(assert (=> bm!54865 (= call!54868 call!54870)))

(declare-fun b!912135 () Bool)

(assert (=> b!912135 (= e!594886 e!594888)))

(declare-fun c!147748 () Bool)

(assert (=> b!912135 (= c!147748 (is-Union!2436 r!15766))))

(declare-fun bm!54866 () Bool)

(assert (=> bm!54866 (= call!54870 (removeUselessConcat!121 (ite c!147751 (regTwo!5384 r!15766) (ite c!147747 (regOne!5384 r!15766) (ite c!147750 (regTwo!5384 r!15766) (ite c!147748 (regTwo!5385 r!15766) (reg!2765 r!15766)))))))))

(declare-fun bm!54867 () Bool)

(declare-fun call!54871 () Regex!2436)

(assert (=> bm!54867 (= call!54871 (removeUselessConcat!121 (ite c!147750 (regOne!5384 r!15766) (regOne!5385 r!15766))))))

(declare-fun b!912136 () Bool)

(assert (=> b!912136 (= e!594889 (Star!2436 call!54872))))

(declare-fun b!912137 () Bool)

(assert (=> b!912137 (= e!594886 (Concat!4269 call!54871 call!54869))))

(declare-fun b!912138 () Bool)

(assert (=> b!912138 (= e!594888 (Union!2436 call!54871 call!54872))))

(assert (= (and d!279414 c!147751) b!912134))

(assert (= (and d!279414 (not c!147751)) b!912133))

(assert (= (and b!912133 c!147747) b!912130))

(assert (= (and b!912133 (not c!147747)) b!912131))

(assert (= (and b!912131 c!147750) b!912137))

(assert (= (and b!912131 (not c!147750)) b!912135))

(assert (= (and b!912135 c!147748) b!912138))

(assert (= (and b!912135 (not c!147748)) b!912132))

(assert (= (and b!912132 c!147749) b!912136))

(assert (= (and b!912132 (not c!147749)) b!912128))

(assert (= (or b!912138 b!912136) bm!54863))

(assert (= (or b!912137 bm!54863) bm!54864))

(assert (= (or b!912137 b!912138) bm!54867))

(assert (= (or b!912130 bm!54864) bm!54865))

(assert (= (or b!912134 bm!54865) bm!54866))

(assert (= (and d!279414 res!414829) b!912129))

(declare-fun m!1143853 () Bool)

(assert (=> d!279414 m!1143853))

(assert (=> d!279414 m!1143755))

(declare-fun m!1143855 () Bool)

(assert (=> b!912129 m!1143855))

(declare-fun m!1143857 () Bool)

(assert (=> b!912129 m!1143857))

(declare-fun m!1143859 () Bool)

(assert (=> bm!54866 m!1143859))

(declare-fun m!1143861 () Bool)

(assert (=> bm!54867 m!1143861))

(assert (=> b!911933 d!279414))

(declare-fun b!912167 () Bool)

(declare-fun e!594908 () Bool)

(declare-fun lt!336944 () Bool)

(assert (=> b!912167 (= e!594908 (not lt!336944))))

(declare-fun b!912168 () Bool)

(declare-fun res!414849 () Bool)

(declare-fun e!594911 () Bool)

(assert (=> b!912168 (=> (not res!414849) (not e!594911))))

(declare-fun call!54875 () Bool)

(assert (=> b!912168 (= res!414849 (not call!54875))))

(declare-fun b!912169 () Bool)

(declare-fun head!1623 (List!9666) C!5442)

(assert (=> b!912169 (= e!594911 (= (head!1623 s!10566) (c!147709 lt!336895)))))

(declare-fun d!279416 () Bool)

(declare-fun e!594912 () Bool)

(assert (=> d!279416 e!594912))

(declare-fun c!147760 () Bool)

(assert (=> d!279416 (= c!147760 (is-EmptyExpr!2436 lt!336895))))

(declare-fun e!594909 () Bool)

(assert (=> d!279416 (= lt!336944 e!594909)))

(declare-fun c!147759 () Bool)

(assert (=> d!279416 (= c!147759 (isEmpty!5876 s!10566))))

(assert (=> d!279416 (validRegex!905 lt!336895)))

(assert (=> d!279416 (= (matchR!974 lt!336895 s!10566) lt!336944)))

(declare-fun b!912170 () Bool)

(declare-fun e!594907 () Bool)

(declare-fun e!594910 () Bool)

(assert (=> b!912170 (= e!594907 e!594910)))

(declare-fun res!414851 () Bool)

(assert (=> b!912170 (=> (not res!414851) (not e!594910))))

(assert (=> b!912170 (= res!414851 (not lt!336944))))

(declare-fun b!912171 () Bool)

(declare-fun e!594906 () Bool)

(assert (=> b!912171 (= e!594910 e!594906)))

(declare-fun res!414846 () Bool)

(assert (=> b!912171 (=> res!414846 e!594906)))

(assert (=> b!912171 (= res!414846 call!54875)))

(declare-fun b!912172 () Bool)

(declare-fun res!414850 () Bool)

(assert (=> b!912172 (=> res!414850 e!594907)))

(assert (=> b!912172 (= res!414850 e!594911)))

(declare-fun res!414847 () Bool)

(assert (=> b!912172 (=> (not res!414847) (not e!594911))))

(assert (=> b!912172 (= res!414847 lt!336944)))

(declare-fun b!912173 () Bool)

(assert (=> b!912173 (= e!594906 (not (= (head!1623 s!10566) (c!147709 lt!336895))))))

(declare-fun b!912174 () Bool)

(declare-fun res!414848 () Bool)

(assert (=> b!912174 (=> res!414848 e!594906)))

(declare-fun tail!1185 (List!9666) List!9666)

(assert (=> b!912174 (= res!414848 (not (isEmpty!5876 (tail!1185 s!10566))))))

(declare-fun b!912175 () Bool)

(assert (=> b!912175 (= e!594909 (nullable!660 lt!336895))))

(declare-fun b!912176 () Bool)

(assert (=> b!912176 (= e!594912 (= lt!336944 call!54875))))

(declare-fun bm!54870 () Bool)

(assert (=> bm!54870 (= call!54875 (isEmpty!5876 s!10566))))

(declare-fun b!912177 () Bool)

(declare-fun res!414853 () Bool)

(assert (=> b!912177 (=> res!414853 e!594907)))

(assert (=> b!912177 (= res!414853 (not (is-ElementMatch!2436 lt!336895)))))

(assert (=> b!912177 (= e!594908 e!594907)))

(declare-fun b!912178 () Bool)

(declare-fun res!414852 () Bool)

(assert (=> b!912178 (=> (not res!414852) (not e!594911))))

(assert (=> b!912178 (= res!414852 (isEmpty!5876 (tail!1185 s!10566)))))

(declare-fun b!912179 () Bool)

(declare-fun derivativeStep!470 (Regex!2436 C!5442) Regex!2436)

(assert (=> b!912179 (= e!594909 (matchR!974 (derivativeStep!470 lt!336895 (head!1623 s!10566)) (tail!1185 s!10566)))))

(declare-fun b!912180 () Bool)

(assert (=> b!912180 (= e!594912 e!594908)))

(declare-fun c!147758 () Bool)

(assert (=> b!912180 (= c!147758 (is-EmptyLang!2436 lt!336895))))

(assert (= (and d!279416 c!147759) b!912175))

(assert (= (and d!279416 (not c!147759)) b!912179))

(assert (= (and d!279416 c!147760) b!912176))

(assert (= (and d!279416 (not c!147760)) b!912180))

(assert (= (and b!912180 c!147758) b!912167))

(assert (= (and b!912180 (not c!147758)) b!912177))

(assert (= (and b!912177 (not res!414853)) b!912172))

(assert (= (and b!912172 res!414847) b!912168))

(assert (= (and b!912168 res!414849) b!912178))

(assert (= (and b!912178 res!414852) b!912169))

(assert (= (and b!912172 (not res!414850)) b!912170))

(assert (= (and b!912170 res!414851) b!912171))

(assert (= (and b!912171 (not res!414846)) b!912174))

(assert (= (and b!912174 (not res!414848)) b!912173))

(assert (= (or b!912176 b!912168 b!912171) bm!54870))

(declare-fun m!1143869 () Bool)

(assert (=> b!912175 m!1143869))

(declare-fun m!1143871 () Bool)

(assert (=> b!912178 m!1143871))

(assert (=> b!912178 m!1143871))

(declare-fun m!1143873 () Bool)

(assert (=> b!912178 m!1143873))

(assert (=> d!279416 m!1143739))

(declare-fun m!1143875 () Bool)

(assert (=> d!279416 m!1143875))

(assert (=> bm!54870 m!1143739))

(assert (=> b!912174 m!1143871))

(assert (=> b!912174 m!1143871))

(assert (=> b!912174 m!1143873))

(declare-fun m!1143877 () Bool)

(assert (=> b!912173 m!1143877))

(assert (=> b!912169 m!1143877))

(assert (=> b!912179 m!1143877))

(assert (=> b!912179 m!1143877))

(declare-fun m!1143879 () Bool)

(assert (=> b!912179 m!1143879))

(assert (=> b!912179 m!1143871))

(assert (=> b!912179 m!1143879))

(assert (=> b!912179 m!1143871))

(declare-fun m!1143881 () Bool)

(assert (=> b!912179 m!1143881))

(assert (=> b!911937 d!279416))

(declare-fun b!912181 () Bool)

(declare-fun e!594915 () Bool)

(declare-fun lt!336945 () Bool)

(assert (=> b!912181 (= e!594915 (not lt!336945))))

(declare-fun b!912182 () Bool)

(declare-fun res!414857 () Bool)

(declare-fun e!594918 () Bool)

(assert (=> b!912182 (=> (not res!414857) (not e!594918))))

(declare-fun call!54876 () Bool)

(assert (=> b!912182 (= res!414857 (not call!54876))))

(declare-fun b!912183 () Bool)

(assert (=> b!912183 (= e!594918 (= (head!1623 s!10566) (c!147709 (regOne!5384 r!15766))))))

(declare-fun d!279420 () Bool)

(declare-fun e!594919 () Bool)

(assert (=> d!279420 e!594919))

(declare-fun c!147763 () Bool)

(assert (=> d!279420 (= c!147763 (is-EmptyExpr!2436 (regOne!5384 r!15766)))))

(declare-fun e!594916 () Bool)

(assert (=> d!279420 (= lt!336945 e!594916)))

(declare-fun c!147762 () Bool)

(assert (=> d!279420 (= c!147762 (isEmpty!5876 s!10566))))

(assert (=> d!279420 (validRegex!905 (regOne!5384 r!15766))))

(assert (=> d!279420 (= (matchR!974 (regOne!5384 r!15766) s!10566) lt!336945)))

(declare-fun b!912184 () Bool)

(declare-fun e!594914 () Bool)

(declare-fun e!594917 () Bool)

(assert (=> b!912184 (= e!594914 e!594917)))

(declare-fun res!414859 () Bool)

(assert (=> b!912184 (=> (not res!414859) (not e!594917))))

(assert (=> b!912184 (= res!414859 (not lt!336945))))

(declare-fun b!912185 () Bool)

(declare-fun e!594913 () Bool)

(assert (=> b!912185 (= e!594917 e!594913)))

(declare-fun res!414854 () Bool)

(assert (=> b!912185 (=> res!414854 e!594913)))

(assert (=> b!912185 (= res!414854 call!54876)))

(declare-fun b!912186 () Bool)

(declare-fun res!414858 () Bool)

(assert (=> b!912186 (=> res!414858 e!594914)))

(assert (=> b!912186 (= res!414858 e!594918)))

(declare-fun res!414855 () Bool)

(assert (=> b!912186 (=> (not res!414855) (not e!594918))))

(assert (=> b!912186 (= res!414855 lt!336945)))

(declare-fun b!912187 () Bool)

(assert (=> b!912187 (= e!594913 (not (= (head!1623 s!10566) (c!147709 (regOne!5384 r!15766)))))))

(declare-fun b!912188 () Bool)

(declare-fun res!414856 () Bool)

(assert (=> b!912188 (=> res!414856 e!594913)))

(assert (=> b!912188 (= res!414856 (not (isEmpty!5876 (tail!1185 s!10566))))))

(declare-fun b!912189 () Bool)

(assert (=> b!912189 (= e!594916 (nullable!660 (regOne!5384 r!15766)))))

(declare-fun b!912190 () Bool)

(assert (=> b!912190 (= e!594919 (= lt!336945 call!54876))))

(declare-fun bm!54871 () Bool)

(assert (=> bm!54871 (= call!54876 (isEmpty!5876 s!10566))))

(declare-fun b!912191 () Bool)

(declare-fun res!414861 () Bool)

(assert (=> b!912191 (=> res!414861 e!594914)))

(assert (=> b!912191 (= res!414861 (not (is-ElementMatch!2436 (regOne!5384 r!15766))))))

(assert (=> b!912191 (= e!594915 e!594914)))

(declare-fun b!912192 () Bool)

(declare-fun res!414860 () Bool)

(assert (=> b!912192 (=> (not res!414860) (not e!594918))))

(assert (=> b!912192 (= res!414860 (isEmpty!5876 (tail!1185 s!10566)))))

(declare-fun b!912193 () Bool)

(assert (=> b!912193 (= e!594916 (matchR!974 (derivativeStep!470 (regOne!5384 r!15766) (head!1623 s!10566)) (tail!1185 s!10566)))))

(declare-fun b!912194 () Bool)

(assert (=> b!912194 (= e!594919 e!594915)))

(declare-fun c!147761 () Bool)

(assert (=> b!912194 (= c!147761 (is-EmptyLang!2436 (regOne!5384 r!15766)))))

(assert (= (and d!279420 c!147762) b!912189))

(assert (= (and d!279420 (not c!147762)) b!912193))

(assert (= (and d!279420 c!147763) b!912190))

(assert (= (and d!279420 (not c!147763)) b!912194))

(assert (= (and b!912194 c!147761) b!912181))

(assert (= (and b!912194 (not c!147761)) b!912191))

(assert (= (and b!912191 (not res!414861)) b!912186))

(assert (= (and b!912186 res!414855) b!912182))

(assert (= (and b!912182 res!414857) b!912192))

(assert (= (and b!912192 res!414860) b!912183))

(assert (= (and b!912186 (not res!414858)) b!912184))

(assert (= (and b!912184 res!414859) b!912185))

(assert (= (and b!912185 (not res!414854)) b!912188))

(assert (= (and b!912188 (not res!414856)) b!912187))

(assert (= (or b!912190 b!912182 b!912185) bm!54871))

(declare-fun m!1143883 () Bool)

(assert (=> b!912189 m!1143883))

(assert (=> b!912192 m!1143871))

(assert (=> b!912192 m!1143871))

(assert (=> b!912192 m!1143873))

(assert (=> d!279420 m!1143739))

(assert (=> d!279420 m!1143809))

(assert (=> bm!54871 m!1143739))

(assert (=> b!912188 m!1143871))

(assert (=> b!912188 m!1143871))

(assert (=> b!912188 m!1143873))

(assert (=> b!912187 m!1143877))

(assert (=> b!912183 m!1143877))

(assert (=> b!912193 m!1143877))

(assert (=> b!912193 m!1143877))

(declare-fun m!1143885 () Bool)

(assert (=> b!912193 m!1143885))

(assert (=> b!912193 m!1143871))

(assert (=> b!912193 m!1143885))

(assert (=> b!912193 m!1143871))

(declare-fun m!1143887 () Bool)

(assert (=> b!912193 m!1143887))

(assert (=> b!911937 d!279420))

(declare-fun d!279422 () Bool)

(declare-fun e!594921 () Bool)

(assert (=> d!279422 e!594921))

(declare-fun res!414862 () Bool)

(assert (=> d!279422 (=> (not res!414862) (not e!594921))))

(declare-fun lt!336946 () Regex!2436)

(assert (=> d!279422 (= res!414862 (validRegex!905 lt!336946))))

(declare-fun e!594924 () Regex!2436)

(assert (=> d!279422 (= lt!336946 e!594924)))

(declare-fun c!147768 () Bool)

(assert (=> d!279422 (= c!147768 (and (is-Concat!4269 (regOne!5384 r!15766)) (is-EmptyExpr!2436 (regOne!5384 (regOne!5384 r!15766)))))))

(assert (=> d!279422 (validRegex!905 (regOne!5384 r!15766))))

(assert (=> d!279422 (= (removeUselessConcat!121 (regOne!5384 r!15766)) lt!336946)))

(declare-fun bm!54872 () Bool)

(declare-fun call!54881 () Regex!2436)

(declare-fun call!54878 () Regex!2436)

(assert (=> bm!54872 (= call!54881 call!54878)))

(declare-fun b!912195 () Bool)

(declare-fun e!594923 () Regex!2436)

(assert (=> b!912195 (= e!594923 (regOne!5384 r!15766))))

(declare-fun b!912196 () Bool)

(assert (=> b!912196 (= e!594921 (= (nullable!660 lt!336946) (nullable!660 (regOne!5384 r!15766))))))

(declare-fun b!912197 () Bool)

(declare-fun e!594925 () Regex!2436)

(declare-fun call!54877 () Regex!2436)

(assert (=> b!912197 (= e!594925 call!54877)))

(declare-fun b!912198 () Bool)

(declare-fun c!147767 () Bool)

(assert (=> b!912198 (= c!147767 (is-Concat!4269 (regOne!5384 r!15766)))))

(declare-fun e!594920 () Regex!2436)

(assert (=> b!912198 (= e!594925 e!594920)))

(declare-fun b!912199 () Bool)

(declare-fun c!147766 () Bool)

(assert (=> b!912199 (= c!147766 (is-Star!2436 (regOne!5384 r!15766)))))

(declare-fun e!594922 () Regex!2436)

(assert (=> b!912199 (= e!594922 e!594923)))

(declare-fun bm!54873 () Bool)

(assert (=> bm!54873 (= call!54878 call!54877)))

(declare-fun b!912200 () Bool)

(assert (=> b!912200 (= e!594924 e!594925)))

(declare-fun c!147764 () Bool)

(assert (=> b!912200 (= c!147764 (and (is-Concat!4269 (regOne!5384 r!15766)) (is-EmptyExpr!2436 (regTwo!5384 (regOne!5384 r!15766)))))))

(declare-fun b!912201 () Bool)

(declare-fun call!54879 () Regex!2436)

(assert (=> b!912201 (= e!594924 call!54879)))

(declare-fun bm!54874 () Bool)

(assert (=> bm!54874 (= call!54877 call!54879)))

(declare-fun b!912202 () Bool)

(assert (=> b!912202 (= e!594920 e!594922)))

(declare-fun c!147765 () Bool)

(assert (=> b!912202 (= c!147765 (is-Union!2436 (regOne!5384 r!15766)))))

(declare-fun bm!54875 () Bool)

(assert (=> bm!54875 (= call!54879 (removeUselessConcat!121 (ite c!147768 (regTwo!5384 (regOne!5384 r!15766)) (ite c!147764 (regOne!5384 (regOne!5384 r!15766)) (ite c!147767 (regTwo!5384 (regOne!5384 r!15766)) (ite c!147765 (regTwo!5385 (regOne!5384 r!15766)) (reg!2765 (regOne!5384 r!15766))))))))))

(declare-fun bm!54876 () Bool)

(declare-fun call!54880 () Regex!2436)

(assert (=> bm!54876 (= call!54880 (removeUselessConcat!121 (ite c!147767 (regOne!5384 (regOne!5384 r!15766)) (regOne!5385 (regOne!5384 r!15766)))))))

(declare-fun b!912203 () Bool)

(assert (=> b!912203 (= e!594923 (Star!2436 call!54881))))

(declare-fun b!912204 () Bool)

(assert (=> b!912204 (= e!594920 (Concat!4269 call!54880 call!54878))))

(declare-fun b!912205 () Bool)

(assert (=> b!912205 (= e!594922 (Union!2436 call!54880 call!54881))))

(assert (= (and d!279422 c!147768) b!912201))

(assert (= (and d!279422 (not c!147768)) b!912200))

(assert (= (and b!912200 c!147764) b!912197))

(assert (= (and b!912200 (not c!147764)) b!912198))

(assert (= (and b!912198 c!147767) b!912204))

(assert (= (and b!912198 (not c!147767)) b!912202))

(assert (= (and b!912202 c!147765) b!912205))

(assert (= (and b!912202 (not c!147765)) b!912199))

(assert (= (and b!912199 c!147766) b!912203))

(assert (= (and b!912199 (not c!147766)) b!912195))

(assert (= (or b!912205 b!912203) bm!54872))

(assert (= (or b!912204 bm!54872) bm!54873))

(assert (= (or b!912204 b!912205) bm!54876))

(assert (= (or b!912197 bm!54873) bm!54874))

(assert (= (or b!912201 bm!54874) bm!54875))

(assert (= (and d!279422 res!414862) b!912196))

(declare-fun m!1143889 () Bool)

(assert (=> d!279422 m!1143889))

(assert (=> d!279422 m!1143809))

(declare-fun m!1143891 () Bool)

(assert (=> b!912196 m!1143891))

(assert (=> b!912196 m!1143883))

(declare-fun m!1143893 () Bool)

(assert (=> bm!54875 m!1143893))

(declare-fun m!1143895 () Bool)

(assert (=> bm!54876 m!1143895))

(assert (=> b!911937 d!279422))

(declare-fun d!279424 () Bool)

(assert (=> d!279424 (= (matchR!974 (regOne!5384 r!15766) s!10566) (matchR!974 (removeUselessConcat!121 (regOne!5384 r!15766)) s!10566))))

(declare-fun lt!336951 () Unit!14491)

(declare-fun choose!5547 (Regex!2436 List!9666) Unit!14491)

(assert (=> d!279424 (= lt!336951 (choose!5547 (regOne!5384 r!15766) s!10566))))

(assert (=> d!279424 (validRegex!905 (regOne!5384 r!15766))))

(assert (=> d!279424 (= (lemmaRemoveUselessConcatSound!107 (regOne!5384 r!15766) s!10566) lt!336951)))

(declare-fun bs!235825 () Bool)

(assert (= bs!235825 d!279424))

(declare-fun m!1143897 () Bool)

(assert (=> bs!235825 m!1143897))

(assert (=> bs!235825 m!1143747))

(assert (=> bs!235825 m!1143809))

(assert (=> bs!235825 m!1143747))

(declare-fun m!1143899 () Bool)

(assert (=> bs!235825 m!1143899))

(assert (=> bs!235825 m!1143745))

(assert (=> b!911937 d!279424))

(declare-fun bs!235826 () Bool)

(declare-fun b!912283 () Bool)

(assert (= bs!235826 (and b!912283 b!911929)))

(declare-fun lambda!29160 () Int)

(assert (=> bs!235826 (not (= lambda!29160 lambda!29131))))

(declare-fun bs!235827 () Bool)

(assert (= bs!235827 (and b!912283 d!279406)))

(assert (=> bs!235827 (not (= lambda!29160 lambda!29152))))

(assert (=> bs!235826 (not (= lambda!29160 lambda!29132))))

(declare-fun bs!235828 () Bool)

(assert (= bs!235828 (and b!912283 d!279402)))

(assert (=> bs!235828 (not (= lambda!29160 lambda!29143))))

(assert (=> bs!235827 (not (= lambda!29160 lambda!29150))))

(assert (=> b!912283 true))

(assert (=> b!912283 true))

(declare-fun bs!235829 () Bool)

(declare-fun b!912280 () Bool)

(assert (= bs!235829 (and b!912280 b!911929)))

(declare-fun lambda!29161 () Int)

(assert (=> bs!235829 (not (= lambda!29161 lambda!29131))))

(declare-fun bs!235830 () Bool)

(assert (= bs!235830 (and b!912280 d!279406)))

(assert (=> bs!235830 (= (= (regTwo!5384 r!15766) EmptyExpr!2436) (= lambda!29161 lambda!29152))))

(assert (=> bs!235829 (= (= (regTwo!5384 r!15766) EmptyExpr!2436) (= lambda!29161 lambda!29132))))

(declare-fun bs!235831 () Bool)

(assert (= bs!235831 (and b!912280 d!279402)))

(assert (=> bs!235831 (not (= lambda!29161 lambda!29143))))

(assert (=> bs!235830 (not (= lambda!29161 lambda!29150))))

(declare-fun bs!235832 () Bool)

(assert (= bs!235832 (and b!912280 b!912283)))

(assert (=> bs!235832 (not (= lambda!29161 lambda!29160))))

(assert (=> b!912280 true))

(assert (=> b!912280 true))

(declare-fun e!594967 () Bool)

(declare-fun call!54889 () Bool)

(assert (=> b!912280 (= e!594967 call!54889)))

(declare-fun b!912281 () Bool)

(declare-fun e!594966 () Bool)

(declare-fun e!594968 () Bool)

(assert (=> b!912281 (= e!594966 e!594968)))

(declare-fun res!414905 () Bool)

(assert (=> b!912281 (= res!414905 (not (is-EmptyLang!2436 r!15766)))))

(assert (=> b!912281 (=> (not res!414905) (not e!594968))))

(declare-fun b!912282 () Bool)

(declare-fun e!594971 () Bool)

(assert (=> b!912282 (= e!594971 (matchRSpec!237 (regTwo!5385 r!15766) s!10566))))

(declare-fun bm!54884 () Bool)

(declare-fun call!54890 () Bool)

(assert (=> bm!54884 (= call!54890 (isEmpty!5876 s!10566))))

(declare-fun e!594970 () Bool)

(assert (=> b!912283 (= e!594970 call!54889)))

(declare-fun b!912284 () Bool)

(declare-fun e!594965 () Bool)

(assert (=> b!912284 (= e!594965 (= s!10566 (Cons!9650 (c!147709 r!15766) Nil!9650)))))

(declare-fun b!912285 () Bool)

(declare-fun c!147788 () Bool)

(assert (=> b!912285 (= c!147788 (is-Union!2436 r!15766))))

(declare-fun e!594969 () Bool)

(assert (=> b!912285 (= e!594965 e!594969)))

(declare-fun d!279426 () Bool)

(declare-fun c!147787 () Bool)

(assert (=> d!279426 (= c!147787 (is-EmptyExpr!2436 r!15766))))

(assert (=> d!279426 (= (matchRSpec!237 r!15766 s!10566) e!594966)))

(declare-fun b!912286 () Bool)

(assert (=> b!912286 (= e!594969 e!594967)))

(declare-fun c!147786 () Bool)

(assert (=> b!912286 (= c!147786 (is-Star!2436 r!15766))))

(declare-fun b!912287 () Bool)

(declare-fun res!414903 () Bool)

(assert (=> b!912287 (=> res!414903 e!594970)))

(assert (=> b!912287 (= res!414903 call!54890)))

(assert (=> b!912287 (= e!594967 e!594970)))

(declare-fun b!912288 () Bool)

(declare-fun c!147789 () Bool)

(assert (=> b!912288 (= c!147789 (is-ElementMatch!2436 r!15766))))

(assert (=> b!912288 (= e!594968 e!594965)))

(declare-fun b!912289 () Bool)

(assert (=> b!912289 (= e!594966 call!54890)))

(declare-fun bm!54885 () Bool)

(assert (=> bm!54885 (= call!54889 (Exists!209 (ite c!147786 lambda!29160 lambda!29161)))))

(declare-fun b!912290 () Bool)

(assert (=> b!912290 (= e!594969 e!594971)))

(declare-fun res!414904 () Bool)

(assert (=> b!912290 (= res!414904 (matchRSpec!237 (regOne!5385 r!15766) s!10566))))

(assert (=> b!912290 (=> res!414904 e!594971)))

(assert (= (and d!279426 c!147787) b!912289))

(assert (= (and d!279426 (not c!147787)) b!912281))

(assert (= (and b!912281 res!414905) b!912288))

(assert (= (and b!912288 c!147789) b!912284))

(assert (= (and b!912288 (not c!147789)) b!912285))

(assert (= (and b!912285 c!147788) b!912290))

(assert (= (and b!912285 (not c!147788)) b!912286))

(assert (= (and b!912290 (not res!414904)) b!912282))

(assert (= (and b!912286 c!147786) b!912287))

(assert (= (and b!912286 (not c!147786)) b!912280))

(assert (= (and b!912287 (not res!414903)) b!912283))

(assert (= (or b!912283 b!912280) bm!54885))

(assert (= (or b!912289 b!912287) bm!54884))

(declare-fun m!1143913 () Bool)

(assert (=> b!912282 m!1143913))

(assert (=> bm!54884 m!1143739))

(declare-fun m!1143915 () Bool)

(assert (=> bm!54885 m!1143915))

(declare-fun m!1143917 () Bool)

(assert (=> b!912290 m!1143917))

(assert (=> b!911935 d!279426))

(declare-fun b!912291 () Bool)

(declare-fun e!594974 () Bool)

(declare-fun lt!336953 () Bool)

(assert (=> b!912291 (= e!594974 (not lt!336953))))

(declare-fun b!912292 () Bool)

(declare-fun res!414909 () Bool)

(declare-fun e!594977 () Bool)

(assert (=> b!912292 (=> (not res!414909) (not e!594977))))

(declare-fun call!54891 () Bool)

(assert (=> b!912292 (= res!414909 (not call!54891))))

(declare-fun b!912293 () Bool)

(assert (=> b!912293 (= e!594977 (= (head!1623 s!10566) (c!147709 r!15766)))))

(declare-fun d!279430 () Bool)

(declare-fun e!594978 () Bool)

(assert (=> d!279430 e!594978))

(declare-fun c!147792 () Bool)

(assert (=> d!279430 (= c!147792 (is-EmptyExpr!2436 r!15766))))

(declare-fun e!594975 () Bool)

(assert (=> d!279430 (= lt!336953 e!594975)))

(declare-fun c!147791 () Bool)

(assert (=> d!279430 (= c!147791 (isEmpty!5876 s!10566))))

(assert (=> d!279430 (validRegex!905 r!15766)))

(assert (=> d!279430 (= (matchR!974 r!15766 s!10566) lt!336953)))

(declare-fun b!912294 () Bool)

(declare-fun e!594973 () Bool)

(declare-fun e!594976 () Bool)

(assert (=> b!912294 (= e!594973 e!594976)))

(declare-fun res!414911 () Bool)

(assert (=> b!912294 (=> (not res!414911) (not e!594976))))

(assert (=> b!912294 (= res!414911 (not lt!336953))))

(declare-fun b!912295 () Bool)

(declare-fun e!594972 () Bool)

(assert (=> b!912295 (= e!594976 e!594972)))

(declare-fun res!414906 () Bool)

(assert (=> b!912295 (=> res!414906 e!594972)))

(assert (=> b!912295 (= res!414906 call!54891)))

(declare-fun b!912296 () Bool)

(declare-fun res!414910 () Bool)

(assert (=> b!912296 (=> res!414910 e!594973)))

(assert (=> b!912296 (= res!414910 e!594977)))

(declare-fun res!414907 () Bool)

(assert (=> b!912296 (=> (not res!414907) (not e!594977))))

(assert (=> b!912296 (= res!414907 lt!336953)))

(declare-fun b!912297 () Bool)

(assert (=> b!912297 (= e!594972 (not (= (head!1623 s!10566) (c!147709 r!15766))))))

(declare-fun b!912298 () Bool)

(declare-fun res!414908 () Bool)

(assert (=> b!912298 (=> res!414908 e!594972)))

(assert (=> b!912298 (= res!414908 (not (isEmpty!5876 (tail!1185 s!10566))))))

(declare-fun b!912299 () Bool)

(assert (=> b!912299 (= e!594975 (nullable!660 r!15766))))

(declare-fun b!912300 () Bool)

(assert (=> b!912300 (= e!594978 (= lt!336953 call!54891))))

(declare-fun bm!54886 () Bool)

(assert (=> bm!54886 (= call!54891 (isEmpty!5876 s!10566))))

(declare-fun b!912301 () Bool)

(declare-fun res!414913 () Bool)

(assert (=> b!912301 (=> res!414913 e!594973)))

(assert (=> b!912301 (= res!414913 (not (is-ElementMatch!2436 r!15766)))))

(assert (=> b!912301 (= e!594974 e!594973)))

(declare-fun b!912302 () Bool)

(declare-fun res!414912 () Bool)

(assert (=> b!912302 (=> (not res!414912) (not e!594977))))

(assert (=> b!912302 (= res!414912 (isEmpty!5876 (tail!1185 s!10566)))))

(declare-fun b!912303 () Bool)

(assert (=> b!912303 (= e!594975 (matchR!974 (derivativeStep!470 r!15766 (head!1623 s!10566)) (tail!1185 s!10566)))))

(declare-fun b!912304 () Bool)

(assert (=> b!912304 (= e!594978 e!594974)))

(declare-fun c!147790 () Bool)

(assert (=> b!912304 (= c!147790 (is-EmptyLang!2436 r!15766))))

(assert (= (and d!279430 c!147791) b!912299))

(assert (= (and d!279430 (not c!147791)) b!912303))

(assert (= (and d!279430 c!147792) b!912300))

(assert (= (and d!279430 (not c!147792)) b!912304))

(assert (= (and b!912304 c!147790) b!912291))

(assert (= (and b!912304 (not c!147790)) b!912301))

(assert (= (and b!912301 (not res!414913)) b!912296))

(assert (= (and b!912296 res!414907) b!912292))

(assert (= (and b!912292 res!414909) b!912302))

(assert (= (and b!912302 res!414912) b!912293))

(assert (= (and b!912296 (not res!414910)) b!912294))

(assert (= (and b!912294 res!414911) b!912295))

(assert (= (and b!912295 (not res!414906)) b!912298))

(assert (= (and b!912298 (not res!414908)) b!912297))

(assert (= (or b!912300 b!912292 b!912295) bm!54886))

(assert (=> b!912299 m!1143857))

(assert (=> b!912302 m!1143871))

(assert (=> b!912302 m!1143871))

(assert (=> b!912302 m!1143873))

(assert (=> d!279430 m!1143739))

(assert (=> d!279430 m!1143755))

(assert (=> bm!54886 m!1143739))

(assert (=> b!912298 m!1143871))

(assert (=> b!912298 m!1143871))

(assert (=> b!912298 m!1143873))

(assert (=> b!912297 m!1143877))

(assert (=> b!912293 m!1143877))

(assert (=> b!912303 m!1143877))

(assert (=> b!912303 m!1143877))

(declare-fun m!1143919 () Bool)

(assert (=> b!912303 m!1143919))

(assert (=> b!912303 m!1143871))

(assert (=> b!912303 m!1143919))

(assert (=> b!912303 m!1143871))

(declare-fun m!1143921 () Bool)

(assert (=> b!912303 m!1143921))

(assert (=> b!911935 d!279430))

(declare-fun d!279432 () Bool)

(assert (=> d!279432 (= (matchR!974 r!15766 s!10566) (matchRSpec!237 r!15766 s!10566))))

(declare-fun lt!336959 () Unit!14491)

(declare-fun choose!5548 (Regex!2436 List!9666) Unit!14491)

(assert (=> d!279432 (= lt!336959 (choose!5548 r!15766 s!10566))))

(assert (=> d!279432 (validRegex!905 r!15766)))

(assert (=> d!279432 (= (mainMatchTheorem!237 r!15766 s!10566) lt!336959)))

(declare-fun bs!235834 () Bool)

(assert (= bs!235834 d!279432))

(assert (=> bs!235834 m!1143761))

(assert (=> bs!235834 m!1143759))

(declare-fun m!1143925 () Bool)

(assert (=> bs!235834 m!1143925))

(assert (=> bs!235834 m!1143755))

(assert (=> b!911935 d!279432))

(declare-fun b!912317 () Bool)

(declare-fun e!594981 () Bool)

(declare-fun tp!285128 () Bool)

(assert (=> b!912317 (= e!594981 tp!285128)))

(assert (=> b!911934 (= tp!285095 e!594981)))

(declare-fun b!912315 () Bool)

(assert (=> b!912315 (= e!594981 tp_is_empty!4515)))

(declare-fun b!912316 () Bool)

(declare-fun tp!285130 () Bool)

(declare-fun tp!285129 () Bool)

(assert (=> b!912316 (= e!594981 (and tp!285130 tp!285129))))

(declare-fun b!912318 () Bool)

(declare-fun tp!285131 () Bool)

(declare-fun tp!285127 () Bool)

(assert (=> b!912318 (= e!594981 (and tp!285131 tp!285127))))

(assert (= (and b!911934 (is-ElementMatch!2436 (regOne!5384 r!15766))) b!912315))

(assert (= (and b!911934 (is-Concat!4269 (regOne!5384 r!15766))) b!912316))

(assert (= (and b!911934 (is-Star!2436 (regOne!5384 r!15766))) b!912317))

(assert (= (and b!911934 (is-Union!2436 (regOne!5384 r!15766))) b!912318))

(declare-fun b!912321 () Bool)

(declare-fun e!594982 () Bool)

(declare-fun tp!285133 () Bool)

(assert (=> b!912321 (= e!594982 tp!285133)))

(assert (=> b!911934 (= tp!285093 e!594982)))

(declare-fun b!912319 () Bool)

(assert (=> b!912319 (= e!594982 tp_is_empty!4515)))

(declare-fun b!912320 () Bool)

(declare-fun tp!285135 () Bool)

(declare-fun tp!285134 () Bool)

(assert (=> b!912320 (= e!594982 (and tp!285135 tp!285134))))

(declare-fun b!912322 () Bool)

(declare-fun tp!285136 () Bool)

(declare-fun tp!285132 () Bool)

(assert (=> b!912322 (= e!594982 (and tp!285136 tp!285132))))

(assert (= (and b!911934 (is-ElementMatch!2436 (regTwo!5384 r!15766))) b!912319))

(assert (= (and b!911934 (is-Concat!4269 (regTwo!5384 r!15766))) b!912320))

(assert (= (and b!911934 (is-Star!2436 (regTwo!5384 r!15766))) b!912321))

(assert (= (and b!911934 (is-Union!2436 (regTwo!5384 r!15766))) b!912322))

(declare-fun b!912329 () Bool)

(declare-fun e!594987 () Bool)

(declare-fun tp!285139 () Bool)

(assert (=> b!912329 (= e!594987 (and tp_is_empty!4515 tp!285139))))

(assert (=> b!911932 (= tp!285098 e!594987)))

(assert (= (and b!911932 (is-Cons!9650 (t!100712 s!10566))) b!912329))

(declare-fun b!912334 () Bool)

(declare-fun e!594988 () Bool)

(declare-fun tp!285141 () Bool)

(assert (=> b!912334 (= e!594988 tp!285141)))

(assert (=> b!911936 (= tp!285094 e!594988)))

(declare-fun b!912332 () Bool)

(assert (=> b!912332 (= e!594988 tp_is_empty!4515)))

(declare-fun b!912333 () Bool)

(declare-fun tp!285143 () Bool)

(declare-fun tp!285142 () Bool)

(assert (=> b!912333 (= e!594988 (and tp!285143 tp!285142))))

(declare-fun b!912335 () Bool)

(declare-fun tp!285144 () Bool)

(declare-fun tp!285140 () Bool)

(assert (=> b!912335 (= e!594988 (and tp!285144 tp!285140))))

(assert (= (and b!911936 (is-ElementMatch!2436 (reg!2765 r!15766))) b!912332))

(assert (= (and b!911936 (is-Concat!4269 (reg!2765 r!15766))) b!912333))

(assert (= (and b!911936 (is-Star!2436 (reg!2765 r!15766))) b!912334))

(assert (= (and b!911936 (is-Union!2436 (reg!2765 r!15766))) b!912335))

(declare-fun b!912340 () Bool)

(declare-fun e!594991 () Bool)

(declare-fun tp!285146 () Bool)

(assert (=> b!912340 (= e!594991 tp!285146)))

(assert (=> b!911930 (= tp!285097 e!594991)))

(declare-fun b!912338 () Bool)

(assert (=> b!912338 (= e!594991 tp_is_empty!4515)))

(declare-fun b!912339 () Bool)

(declare-fun tp!285148 () Bool)

(declare-fun tp!285147 () Bool)

(assert (=> b!912339 (= e!594991 (and tp!285148 tp!285147))))

(declare-fun b!912341 () Bool)

(declare-fun tp!285149 () Bool)

(declare-fun tp!285145 () Bool)

(assert (=> b!912341 (= e!594991 (and tp!285149 tp!285145))))

(assert (= (and b!911930 (is-ElementMatch!2436 (regOne!5385 r!15766))) b!912338))

(assert (= (and b!911930 (is-Concat!4269 (regOne!5385 r!15766))) b!912339))

(assert (= (and b!911930 (is-Star!2436 (regOne!5385 r!15766))) b!912340))

(assert (= (and b!911930 (is-Union!2436 (regOne!5385 r!15766))) b!912341))

(declare-fun b!912346 () Bool)

(declare-fun e!594994 () Bool)

(declare-fun tp!285151 () Bool)

(assert (=> b!912346 (= e!594994 tp!285151)))

(assert (=> b!911930 (= tp!285096 e!594994)))

(declare-fun b!912344 () Bool)

(assert (=> b!912344 (= e!594994 tp_is_empty!4515)))

(declare-fun b!912345 () Bool)

(declare-fun tp!285153 () Bool)

(declare-fun tp!285152 () Bool)

(assert (=> b!912345 (= e!594994 (and tp!285153 tp!285152))))

(declare-fun b!912347 () Bool)

(declare-fun tp!285154 () Bool)

(declare-fun tp!285150 () Bool)

(assert (=> b!912347 (= e!594994 (and tp!285154 tp!285150))))

(assert (= (and b!911930 (is-ElementMatch!2436 (regTwo!5385 r!15766))) b!912344))

(assert (= (and b!911930 (is-Concat!4269 (regTwo!5385 r!15766))) b!912345))

(assert (= (and b!911930 (is-Star!2436 (regTwo!5385 r!15766))) b!912346))

(assert (= (and b!911930 (is-Union!2436 (regTwo!5385 r!15766))) b!912347))

(push 1)

(assert (not b!912335))

(assert (not b!912014))

(assert (not d!279430))

(assert (not d!279432))

(assert (not b!912316))

(assert (not b!912334))

(assert (not b!912320))

(assert (not b!912196))

(assert (not bm!54867))

(assert (not b!912192))

(assert (not b!912193))

(assert (not bm!54876))

(assert (not b!912321))

(assert (not d!279408))

(assert (not b!912282))

(assert (not b!912175))

(assert (not b!912303))

(assert (not d!279406))

(assert tp_is_empty!4515)

(assert (not bm!54875))

(assert (not bm!54849))

(assert (not b!912345))

(assert (not b!912178))

(assert (not b!912290))

(assert (not b!912318))

(assert (not b!912317))

(assert (not b!912089))

(assert (not bm!54884))

(assert (not b!912010))

(assert (not bm!54850))

(assert (not b!912329))

(assert (not b!912347))

(assert (not b!912006))

(assert (not d!279424))

(assert (not b!912333))

(assert (not bm!54866))

(assert (not b!912339))

(assert (not b!912341))

(assert (not d!279420))

(assert (not bm!54885))

(assert (not d!279392))

(assert (not b!912299))

(assert (not d!279414))

(assert (not b!912346))

(assert (not bm!54870))

(assert (not b!912011))

(assert (not d!279416))

(assert (not b!912009))

(assert (not b!912174))

(assert (not b!912340))

(assert (not b!912293))

(assert (not d!279404))

(assert (not b!912129))

(assert (not b!912169))

(assert (not b!912322))

(assert (not d!279422))

(assert (not b!912187))

(assert (not bm!54886))

(assert (not d!279402))

(assert (not b!912080))

(assert (not b!912189))

(assert (not b!912302))

(assert (not b!912183))

(assert (not b!912297))

(assert (not bm!54871))

(assert (not b!912179))

(assert (not bm!54846))

(assert (not b!912173))

(assert (not bm!54847))

(assert (not d!279400))

(assert (not b!912298))

(assert (not b!912012))

(assert (not b!912188))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

