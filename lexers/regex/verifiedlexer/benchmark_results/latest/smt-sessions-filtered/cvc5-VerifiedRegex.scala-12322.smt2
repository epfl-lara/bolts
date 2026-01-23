; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691354 () Bool)

(assert start!691354)

(declare-fun b!7101975 () Bool)

(declare-datatypes ((C!36042 0))(
  ( (C!36043 (val!27727 Int)) )
))
(declare-datatypes ((Regex!17886 0))(
  ( (ElementMatch!17886 (c!1325165 C!36042)) (Concat!26731 (regOne!36284 Regex!17886) (regTwo!36284 Regex!17886)) (EmptyExpr!17886) (Star!17886 (reg!18215 Regex!17886)) (EmptyLang!17886) (Union!17886 (regOne!36285 Regex!17886) (regTwo!36285 Regex!17886)) )
))
(declare-datatypes ((List!68847 0))(
  ( (Nil!68723) (Cons!68723 (h!75171 Regex!17886) (t!382662 List!68847)) )
))
(declare-fun lt!2558242 () List!68847)

(declare-fun a!1901 () C!36042)

(declare-fun e!4268686 () Bool)

(declare-fun r!11554 () Regex!17886)

(declare-datatypes ((Context!13760 0))(
  ( (Context!13761 (exprs!7380 List!68847)) )
))
(declare-fun derivationStepZipperDown!2415 (Regex!17886 Context!13760 C!36042) (Set Context!13760))

(declare-fun $colon$colon!2757 (List!68847 Regex!17886) List!68847)

(assert (=> b!7101975 (= e!4268686 (not (= (derivationStepZipperDown!2415 r!11554 (Context!13761 lt!2558242) a!1901) (derivationStepZipperDown!2415 (reg!18215 r!11554) (Context!13761 ($colon$colon!2757 lt!2558242 r!11554)) a!1901))))))

(declare-fun b!7101977 () Bool)

(declare-fun e!4268681 () Bool)

(assert (=> b!7101977 (= e!4268681 e!4268686)))

(declare-fun res!2899694 () Bool)

(assert (=> b!7101977 (=> (not res!2899694) (not e!4268686))))

(declare-fun validRegex!9159 (Regex!17886) Bool)

(assert (=> b!7101977 (= res!2899694 (validRegex!9159 r!11554))))

(declare-fun c!9994 () Context!13760)

(declare-fun auxCtx!45 () Context!13760)

(declare-fun ++!16038 (List!68847 List!68847) List!68847)

(assert (=> b!7101977 (= lt!2558242 (++!16038 (exprs!7380 c!9994) (exprs!7380 auxCtx!45)))))

(declare-datatypes ((Unit!162443 0))(
  ( (Unit!162444) )
))
(declare-fun lt!2558241 () Unit!162443)

(declare-fun lambda!431108 () Int)

(declare-fun lemmaConcatPreservesForall!1171 (List!68847 List!68847 Int) Unit!162443)

(assert (=> b!7101977 (= lt!2558241 (lemmaConcatPreservesForall!1171 (exprs!7380 c!9994) (exprs!7380 auxCtx!45) lambda!431108))))

(declare-fun lt!2558243 () Unit!162443)

(assert (=> b!7101977 (= lt!2558243 (lemmaConcatPreservesForall!1171 (exprs!7380 c!9994) (exprs!7380 auxCtx!45) lambda!431108))))

(declare-fun b!7101978 () Bool)

(declare-fun e!4268685 () Bool)

(declare-fun tp!1952549 () Bool)

(assert (=> b!7101978 (= e!4268685 tp!1952549)))

(declare-fun b!7101979 () Bool)

(declare-fun res!2899691 () Bool)

(assert (=> b!7101979 (=> (not res!2899691) (not e!4268681))))

(assert (=> b!7101979 (= res!2899691 (and (or (not (is-ElementMatch!17886 r!11554)) (not (= (c!1325165 r!11554) a!1901))) (not (is-Union!17886 r!11554))))))

(declare-fun b!7101980 () Bool)

(declare-fun e!4268684 () Bool)

(declare-fun tp!1952545 () Bool)

(declare-fun tp!1952547 () Bool)

(assert (=> b!7101980 (= e!4268684 (and tp!1952545 tp!1952547))))

(declare-fun b!7101981 () Bool)

(declare-fun tp!1952548 () Bool)

(declare-fun tp!1952551 () Bool)

(assert (=> b!7101981 (= e!4268684 (and tp!1952548 tp!1952551))))

(declare-fun b!7101982 () Bool)

(declare-fun tp_is_empty!45005 () Bool)

(assert (=> b!7101982 (= e!4268684 tp_is_empty!45005)))

(declare-fun res!2899689 () Bool)

(assert (=> start!691354 (=> (not res!2899689) (not e!4268681))))

(assert (=> start!691354 (= res!2899689 (validRegex!9159 r!11554))))

(assert (=> start!691354 e!4268681))

(assert (=> start!691354 e!4268684))

(assert (=> start!691354 tp_is_empty!45005))

(declare-fun inv!87579 (Context!13760) Bool)

(assert (=> start!691354 (and (inv!87579 c!9994) e!4268685)))

(declare-fun e!4268683 () Bool)

(assert (=> start!691354 (and (inv!87579 auxCtx!45) e!4268683)))

(declare-fun b!7101976 () Bool)

(declare-fun tp!1952550 () Bool)

(assert (=> b!7101976 (= e!4268684 tp!1952550)))

(declare-fun b!7101983 () Bool)

(declare-fun res!2899693 () Bool)

(assert (=> b!7101983 (=> (not res!2899693) (not e!4268681))))

(assert (=> b!7101983 (= res!2899693 (and (not (is-Concat!26731 r!11554)) (is-Star!17886 r!11554)))))

(declare-fun b!7101984 () Bool)

(declare-fun res!2899692 () Bool)

(assert (=> b!7101984 (=> (not res!2899692) (not e!4268681))))

(declare-fun e!4268682 () Bool)

(assert (=> b!7101984 (= res!2899692 e!4268682)))

(declare-fun res!2899690 () Bool)

(assert (=> b!7101984 (=> res!2899690 e!4268682)))

(assert (=> b!7101984 (= res!2899690 (not (is-Concat!26731 r!11554)))))

(declare-fun b!7101985 () Bool)

(declare-fun nullable!7524 (Regex!17886) Bool)

(assert (=> b!7101985 (= e!4268682 (not (nullable!7524 (regOne!36284 r!11554))))))

(declare-fun b!7101986 () Bool)

(declare-fun tp!1952546 () Bool)

(assert (=> b!7101986 (= e!4268683 tp!1952546)))

(assert (= (and start!691354 res!2899689) b!7101979))

(assert (= (and b!7101979 res!2899691) b!7101984))

(assert (= (and b!7101984 (not res!2899690)) b!7101985))

(assert (= (and b!7101984 res!2899692) b!7101983))

(assert (= (and b!7101983 res!2899693) b!7101977))

(assert (= (and b!7101977 res!2899694) b!7101975))

(assert (= (and start!691354 (is-ElementMatch!17886 r!11554)) b!7101982))

(assert (= (and start!691354 (is-Concat!26731 r!11554)) b!7101981))

(assert (= (and start!691354 (is-Star!17886 r!11554)) b!7101976))

(assert (= (and start!691354 (is-Union!17886 r!11554)) b!7101980))

(assert (= start!691354 b!7101978))

(assert (= start!691354 b!7101986))

(declare-fun m!7826896 () Bool)

(assert (=> b!7101975 m!7826896))

(declare-fun m!7826898 () Bool)

(assert (=> b!7101975 m!7826898))

(declare-fun m!7826900 () Bool)

(assert (=> b!7101975 m!7826900))

(declare-fun m!7826902 () Bool)

(assert (=> b!7101977 m!7826902))

(declare-fun m!7826904 () Bool)

(assert (=> b!7101977 m!7826904))

(declare-fun m!7826906 () Bool)

(assert (=> b!7101977 m!7826906))

(assert (=> b!7101977 m!7826906))

(assert (=> start!691354 m!7826902))

(declare-fun m!7826908 () Bool)

(assert (=> start!691354 m!7826908))

(declare-fun m!7826910 () Bool)

(assert (=> start!691354 m!7826910))

(declare-fun m!7826912 () Bool)

(assert (=> b!7101985 m!7826912))

(push 1)

(assert (not b!7101980))

(assert (not start!691354))

(assert (not b!7101976))

(assert (not b!7101985))

(assert (not b!7101978))

(assert (not b!7101977))

(assert (not b!7101981))

(assert tp_is_empty!45005)

(assert (not b!7101986))

(assert (not b!7101975))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7102072 () Bool)

(declare-fun e!4268743 () (Set Context!13760))

(declare-fun call!646809 () (Set Context!13760))

(assert (=> b!7102072 (= e!4268743 call!646809)))

(declare-fun b!7102073 () Bool)

(declare-fun e!4268742 () (Set Context!13760))

(declare-fun e!4268741 () (Set Context!13760))

(assert (=> b!7102073 (= e!4268742 e!4268741)))

(declare-fun c!1325183 () Bool)

(assert (=> b!7102073 (= c!1325183 (is-Union!17886 r!11554))))

(declare-fun b!7102074 () Bool)

(assert (=> b!7102074 (= e!4268743 (as set.empty (Set Context!13760)))))

(declare-fun bm!646804 () Bool)

(declare-fun call!646812 () (Set Context!13760))

(assert (=> bm!646804 (= call!646809 call!646812)))

(declare-fun b!7102075 () Bool)

(declare-fun e!4268738 () (Set Context!13760))

(declare-fun call!646810 () (Set Context!13760))

(assert (=> b!7102075 (= e!4268738 (set.union call!646810 call!646812))))

(declare-fun bm!646805 () Bool)

(declare-fun call!646811 () List!68847)

(declare-fun call!646814 () List!68847)

(assert (=> bm!646805 (= call!646811 call!646814)))

(declare-fun b!7102076 () Bool)

(declare-fun e!4268739 () (Set Context!13760))

(assert (=> b!7102076 (= e!4268739 call!646809)))

(declare-fun b!7102077 () Bool)

(declare-fun c!1325184 () Bool)

(assert (=> b!7102077 (= c!1325184 (is-Star!17886 r!11554))))

(assert (=> b!7102077 (= e!4268739 e!4268743)))

(declare-fun b!7102078 () Bool)

(assert (=> b!7102078 (= e!4268738 e!4268739)))

(declare-fun c!1325185 () Bool)

(assert (=> b!7102078 (= c!1325185 (is-Concat!26731 r!11554))))

(declare-fun b!7102079 () Bool)

(declare-fun e!4268740 () Bool)

(assert (=> b!7102079 (= e!4268740 (nullable!7524 (regOne!36284 r!11554)))))

(declare-fun c!1325186 () Bool)

(declare-fun bm!646806 () Bool)

(declare-fun call!646813 () (Set Context!13760))

(assert (=> bm!646806 (= call!646813 (derivationStepZipperDown!2415 (ite c!1325183 (regOne!36285 r!11554) (ite c!1325186 (regTwo!36284 r!11554) (ite c!1325185 (regOne!36284 r!11554) (reg!18215 r!11554)))) (ite (or c!1325183 c!1325186) (Context!13761 lt!2558242) (Context!13761 call!646811)) a!1901))))

(declare-fun bm!646807 () Bool)

(assert (=> bm!646807 (= call!646812 call!646813)))

(declare-fun bm!646808 () Bool)

(assert (=> bm!646808 (= call!646810 (derivationStepZipperDown!2415 (ite c!1325183 (regTwo!36285 r!11554) (regOne!36284 r!11554)) (ite c!1325183 (Context!13761 lt!2558242) (Context!13761 call!646814)) a!1901))))

(declare-fun b!7102080 () Bool)

(assert (=> b!7102080 (= e!4268742 (set.insert (Context!13761 lt!2558242) (as set.empty (Set Context!13760))))))

(declare-fun b!7102081 () Bool)

(assert (=> b!7102081 (= e!4268741 (set.union call!646813 call!646810))))

(declare-fun b!7102082 () Bool)

(assert (=> b!7102082 (= c!1325186 e!4268740)))

(declare-fun res!2899730 () Bool)

(assert (=> b!7102082 (=> (not res!2899730) (not e!4268740))))

(assert (=> b!7102082 (= res!2899730 (is-Concat!26731 r!11554))))

(assert (=> b!7102082 (= e!4268741 e!4268738)))

(declare-fun bm!646809 () Bool)

(assert (=> bm!646809 (= call!646814 ($colon$colon!2757 (exprs!7380 (Context!13761 lt!2558242)) (ite (or c!1325186 c!1325185) (regTwo!36284 r!11554) r!11554)))))

(declare-fun d!2218723 () Bool)

(declare-fun c!1325187 () Bool)

(assert (=> d!2218723 (= c!1325187 (and (is-ElementMatch!17886 r!11554) (= (c!1325165 r!11554) a!1901)))))

(assert (=> d!2218723 (= (derivationStepZipperDown!2415 r!11554 (Context!13761 lt!2558242) a!1901) e!4268742)))

(assert (= (and d!2218723 c!1325187) b!7102080))

(assert (= (and d!2218723 (not c!1325187)) b!7102073))

(assert (= (and b!7102073 c!1325183) b!7102081))

(assert (= (and b!7102073 (not c!1325183)) b!7102082))

(assert (= (and b!7102082 res!2899730) b!7102079))

(assert (= (and b!7102082 c!1325186) b!7102075))

(assert (= (and b!7102082 (not c!1325186)) b!7102078))

(assert (= (and b!7102078 c!1325185) b!7102076))

(assert (= (and b!7102078 (not c!1325185)) b!7102077))

(assert (= (and b!7102077 c!1325184) b!7102072))

(assert (= (and b!7102077 (not c!1325184)) b!7102074))

(assert (= (or b!7102076 b!7102072) bm!646805))

(assert (= (or b!7102076 b!7102072) bm!646804))

(assert (= (or b!7102075 bm!646804) bm!646807))

(assert (= (or b!7102075 bm!646805) bm!646809))

(assert (= (or b!7102081 b!7102075) bm!646808))

(assert (= (or b!7102081 bm!646807) bm!646806))

(declare-fun m!7826938 () Bool)

(assert (=> bm!646806 m!7826938))

(declare-fun m!7826940 () Bool)

(assert (=> bm!646808 m!7826940))

(declare-fun m!7826942 () Bool)

(assert (=> bm!646809 m!7826942))

(declare-fun m!7826944 () Bool)

(assert (=> b!7102080 m!7826944))

(assert (=> b!7102079 m!7826912))

(assert (=> b!7101975 d!2218723))

(declare-fun b!7102083 () Bool)

(declare-fun e!4268749 () (Set Context!13760))

(declare-fun call!646815 () (Set Context!13760))

(assert (=> b!7102083 (= e!4268749 call!646815)))

(declare-fun b!7102084 () Bool)

(declare-fun e!4268748 () (Set Context!13760))

(declare-fun e!4268747 () (Set Context!13760))

(assert (=> b!7102084 (= e!4268748 e!4268747)))

(declare-fun c!1325188 () Bool)

(assert (=> b!7102084 (= c!1325188 (is-Union!17886 (reg!18215 r!11554)))))

(declare-fun b!7102085 () Bool)

(assert (=> b!7102085 (= e!4268749 (as set.empty (Set Context!13760)))))

(declare-fun bm!646810 () Bool)

(declare-fun call!646818 () (Set Context!13760))

(assert (=> bm!646810 (= call!646815 call!646818)))

(declare-fun b!7102086 () Bool)

(declare-fun e!4268744 () (Set Context!13760))

(declare-fun call!646816 () (Set Context!13760))

(assert (=> b!7102086 (= e!4268744 (set.union call!646816 call!646818))))

(declare-fun bm!646811 () Bool)

(declare-fun call!646817 () List!68847)

(declare-fun call!646820 () List!68847)

(assert (=> bm!646811 (= call!646817 call!646820)))

(declare-fun b!7102087 () Bool)

(declare-fun e!4268745 () (Set Context!13760))

(assert (=> b!7102087 (= e!4268745 call!646815)))

(declare-fun b!7102088 () Bool)

(declare-fun c!1325189 () Bool)

(assert (=> b!7102088 (= c!1325189 (is-Star!17886 (reg!18215 r!11554)))))

(assert (=> b!7102088 (= e!4268745 e!4268749)))

(declare-fun b!7102089 () Bool)

(assert (=> b!7102089 (= e!4268744 e!4268745)))

(declare-fun c!1325190 () Bool)

(assert (=> b!7102089 (= c!1325190 (is-Concat!26731 (reg!18215 r!11554)))))

(declare-fun b!7102090 () Bool)

(declare-fun e!4268746 () Bool)

(assert (=> b!7102090 (= e!4268746 (nullable!7524 (regOne!36284 (reg!18215 r!11554))))))

(declare-fun c!1325191 () Bool)

(declare-fun call!646819 () (Set Context!13760))

(declare-fun bm!646812 () Bool)

(assert (=> bm!646812 (= call!646819 (derivationStepZipperDown!2415 (ite c!1325188 (regOne!36285 (reg!18215 r!11554)) (ite c!1325191 (regTwo!36284 (reg!18215 r!11554)) (ite c!1325190 (regOne!36284 (reg!18215 r!11554)) (reg!18215 (reg!18215 r!11554))))) (ite (or c!1325188 c!1325191) (Context!13761 ($colon$colon!2757 lt!2558242 r!11554)) (Context!13761 call!646817)) a!1901))))

(declare-fun bm!646813 () Bool)

(assert (=> bm!646813 (= call!646818 call!646819)))

(declare-fun bm!646814 () Bool)

(assert (=> bm!646814 (= call!646816 (derivationStepZipperDown!2415 (ite c!1325188 (regTwo!36285 (reg!18215 r!11554)) (regOne!36284 (reg!18215 r!11554))) (ite c!1325188 (Context!13761 ($colon$colon!2757 lt!2558242 r!11554)) (Context!13761 call!646820)) a!1901))))

(declare-fun b!7102091 () Bool)

(assert (=> b!7102091 (= e!4268748 (set.insert (Context!13761 ($colon$colon!2757 lt!2558242 r!11554)) (as set.empty (Set Context!13760))))))

(declare-fun b!7102092 () Bool)

(assert (=> b!7102092 (= e!4268747 (set.union call!646819 call!646816))))

(declare-fun b!7102093 () Bool)

(assert (=> b!7102093 (= c!1325191 e!4268746)))

(declare-fun res!2899731 () Bool)

(assert (=> b!7102093 (=> (not res!2899731) (not e!4268746))))

(assert (=> b!7102093 (= res!2899731 (is-Concat!26731 (reg!18215 r!11554)))))

(assert (=> b!7102093 (= e!4268747 e!4268744)))

(declare-fun bm!646815 () Bool)

(assert (=> bm!646815 (= call!646820 ($colon$colon!2757 (exprs!7380 (Context!13761 ($colon$colon!2757 lt!2558242 r!11554))) (ite (or c!1325191 c!1325190) (regTwo!36284 (reg!18215 r!11554)) (reg!18215 r!11554))))))

(declare-fun d!2218727 () Bool)

(declare-fun c!1325192 () Bool)

(assert (=> d!2218727 (= c!1325192 (and (is-ElementMatch!17886 (reg!18215 r!11554)) (= (c!1325165 (reg!18215 r!11554)) a!1901)))))

(assert (=> d!2218727 (= (derivationStepZipperDown!2415 (reg!18215 r!11554) (Context!13761 ($colon$colon!2757 lt!2558242 r!11554)) a!1901) e!4268748)))

(assert (= (and d!2218727 c!1325192) b!7102091))

(assert (= (and d!2218727 (not c!1325192)) b!7102084))

(assert (= (and b!7102084 c!1325188) b!7102092))

(assert (= (and b!7102084 (not c!1325188)) b!7102093))

(assert (= (and b!7102093 res!2899731) b!7102090))

(assert (= (and b!7102093 c!1325191) b!7102086))

(assert (= (and b!7102093 (not c!1325191)) b!7102089))

(assert (= (and b!7102089 c!1325190) b!7102087))

(assert (= (and b!7102089 (not c!1325190)) b!7102088))

(assert (= (and b!7102088 c!1325189) b!7102083))

(assert (= (and b!7102088 (not c!1325189)) b!7102085))

(assert (= (or b!7102087 b!7102083) bm!646811))

(assert (= (or b!7102087 b!7102083) bm!646810))

(assert (= (or b!7102086 bm!646810) bm!646813))

(assert (= (or b!7102086 bm!646811) bm!646815))

(assert (= (or b!7102092 b!7102086) bm!646814))

(assert (= (or b!7102092 bm!646813) bm!646812))

(declare-fun m!7826946 () Bool)

(assert (=> bm!646812 m!7826946))

(declare-fun m!7826948 () Bool)

(assert (=> bm!646814 m!7826948))

(declare-fun m!7826950 () Bool)

(assert (=> bm!646815 m!7826950))

(declare-fun m!7826952 () Bool)

(assert (=> b!7102091 m!7826952))

(declare-fun m!7826954 () Bool)

(assert (=> b!7102090 m!7826954))

(assert (=> b!7101975 d!2218727))

(declare-fun d!2218729 () Bool)

(assert (=> d!2218729 (= ($colon$colon!2757 lt!2558242 r!11554) (Cons!68723 r!11554 lt!2558242))))

(assert (=> b!7101975 d!2218729))

(declare-fun bm!646822 () Bool)

(declare-fun call!646828 () Bool)

(declare-fun call!646829 () Bool)

(assert (=> bm!646822 (= call!646828 call!646829)))

(declare-fun d!2218733 () Bool)

(declare-fun res!2899745 () Bool)

(declare-fun e!4268767 () Bool)

(assert (=> d!2218733 (=> res!2899745 e!4268767)))

(assert (=> d!2218733 (= res!2899745 (is-ElementMatch!17886 r!11554))))

(assert (=> d!2218733 (= (validRegex!9159 r!11554) e!4268767)))

(declare-fun b!7102112 () Bool)

(declare-fun e!4268766 () Bool)

(declare-fun e!4268769 () Bool)

(assert (=> b!7102112 (= e!4268766 e!4268769)))

(declare-fun res!2899743 () Bool)

(assert (=> b!7102112 (=> (not res!2899743) (not e!4268769))))

(assert (=> b!7102112 (= res!2899743 call!646828)))

(declare-fun b!7102113 () Bool)

(declare-fun e!4268768 () Bool)

(declare-fun e!4268764 () Bool)

(assert (=> b!7102113 (= e!4268768 e!4268764)))

(declare-fun c!1325197 () Bool)

(assert (=> b!7102113 (= c!1325197 (is-Union!17886 r!11554))))

(declare-fun b!7102114 () Bool)

(declare-fun call!646827 () Bool)

(assert (=> b!7102114 (= e!4268769 call!646827)))

(declare-fun bm!646823 () Bool)

(declare-fun c!1325198 () Bool)

(assert (=> bm!646823 (= call!646829 (validRegex!9159 (ite c!1325198 (reg!18215 r!11554) (ite c!1325197 (regTwo!36285 r!11554) (regOne!36284 r!11554)))))))

(declare-fun b!7102115 () Bool)

(declare-fun e!4268770 () Bool)

(assert (=> b!7102115 (= e!4268770 call!646828)))

(declare-fun b!7102116 () Bool)

(declare-fun res!2899744 () Bool)

(assert (=> b!7102116 (=> (not res!2899744) (not e!4268770))))

(assert (=> b!7102116 (= res!2899744 call!646827)))

(assert (=> b!7102116 (= e!4268764 e!4268770)))

(declare-fun bm!646824 () Bool)

(assert (=> bm!646824 (= call!646827 (validRegex!9159 (ite c!1325197 (regOne!36285 r!11554) (regTwo!36284 r!11554))))))

(declare-fun b!7102117 () Bool)

(declare-fun res!2899746 () Bool)

(assert (=> b!7102117 (=> res!2899746 e!4268766)))

(assert (=> b!7102117 (= res!2899746 (not (is-Concat!26731 r!11554)))))

(assert (=> b!7102117 (= e!4268764 e!4268766)))

(declare-fun b!7102118 () Bool)

(declare-fun e!4268765 () Bool)

(assert (=> b!7102118 (= e!4268768 e!4268765)))

(declare-fun res!2899742 () Bool)

(assert (=> b!7102118 (= res!2899742 (not (nullable!7524 (reg!18215 r!11554))))))

(assert (=> b!7102118 (=> (not res!2899742) (not e!4268765))))

(declare-fun b!7102119 () Bool)

(assert (=> b!7102119 (= e!4268765 call!646829)))

(declare-fun b!7102120 () Bool)

(assert (=> b!7102120 (= e!4268767 e!4268768)))

(assert (=> b!7102120 (= c!1325198 (is-Star!17886 r!11554))))

(assert (= (and d!2218733 (not res!2899745)) b!7102120))

(assert (= (and b!7102120 c!1325198) b!7102118))

(assert (= (and b!7102120 (not c!1325198)) b!7102113))

(assert (= (and b!7102118 res!2899742) b!7102119))

(assert (= (and b!7102113 c!1325197) b!7102116))

(assert (= (and b!7102113 (not c!1325197)) b!7102117))

(assert (= (and b!7102116 res!2899744) b!7102115))

(assert (= (and b!7102117 (not res!2899746)) b!7102112))

(assert (= (and b!7102112 res!2899743) b!7102114))

(assert (= (or b!7102116 b!7102114) bm!646824))

(assert (= (or b!7102115 b!7102112) bm!646822))

(assert (= (or b!7102119 bm!646822) bm!646823))

(declare-fun m!7826960 () Bool)

(assert (=> bm!646823 m!7826960))

(declare-fun m!7826962 () Bool)

(assert (=> bm!646824 m!7826962))

(declare-fun m!7826964 () Bool)

(assert (=> b!7102118 m!7826964))

(assert (=> start!691354 d!2218733))

(declare-fun bs!1884350 () Bool)

(declare-fun d!2218737 () Bool)

(assert (= bs!1884350 (and d!2218737 b!7101977)))

(declare-fun lambda!431120 () Int)

(assert (=> bs!1884350 (= lambda!431120 lambda!431108)))

(declare-fun forall!16790 (List!68847 Int) Bool)

(assert (=> d!2218737 (= (inv!87579 c!9994) (forall!16790 (exprs!7380 c!9994) lambda!431120))))

(declare-fun bs!1884351 () Bool)

(assert (= bs!1884351 d!2218737))

(declare-fun m!7826966 () Bool)

(assert (=> bs!1884351 m!7826966))

(assert (=> start!691354 d!2218737))

(declare-fun bs!1884352 () Bool)

(declare-fun d!2218739 () Bool)

(assert (= bs!1884352 (and d!2218739 b!7101977)))

(declare-fun lambda!431121 () Int)

(assert (=> bs!1884352 (= lambda!431121 lambda!431108)))

(declare-fun bs!1884353 () Bool)

(assert (= bs!1884353 (and d!2218739 d!2218737)))

(assert (=> bs!1884353 (= lambda!431121 lambda!431120)))

(assert (=> d!2218739 (= (inv!87579 auxCtx!45) (forall!16790 (exprs!7380 auxCtx!45) lambda!431121))))

(declare-fun bs!1884354 () Bool)

(assert (= bs!1884354 d!2218739))

(declare-fun m!7826968 () Bool)

(assert (=> bs!1884354 m!7826968))

(assert (=> start!691354 d!2218739))

(assert (=> b!7101977 d!2218733))

(declare-fun b!7102141 () Bool)

(declare-fun e!4268782 () List!68847)

(assert (=> b!7102141 (= e!4268782 (exprs!7380 auxCtx!45))))

(declare-fun b!7102142 () Bool)

(assert (=> b!7102142 (= e!4268782 (Cons!68723 (h!75171 (exprs!7380 c!9994)) (++!16038 (t!382662 (exprs!7380 c!9994)) (exprs!7380 auxCtx!45))))))

(declare-fun lt!2558258 () List!68847)

(declare-fun b!7102144 () Bool)

(declare-fun e!4268781 () Bool)

(assert (=> b!7102144 (= e!4268781 (or (not (= (exprs!7380 auxCtx!45) Nil!68723)) (= lt!2558258 (exprs!7380 c!9994))))))

(declare-fun b!7102143 () Bool)

(declare-fun res!2899758 () Bool)

(assert (=> b!7102143 (=> (not res!2899758) (not e!4268781))))

(declare-fun size!41352 (List!68847) Int)

(assert (=> b!7102143 (= res!2899758 (= (size!41352 lt!2558258) (+ (size!41352 (exprs!7380 c!9994)) (size!41352 (exprs!7380 auxCtx!45)))))))

(declare-fun d!2218741 () Bool)

(assert (=> d!2218741 e!4268781))

(declare-fun res!2899757 () Bool)

(assert (=> d!2218741 (=> (not res!2899757) (not e!4268781))))

(declare-fun content!13977 (List!68847) (Set Regex!17886))

(assert (=> d!2218741 (= res!2899757 (= (content!13977 lt!2558258) (set.union (content!13977 (exprs!7380 c!9994)) (content!13977 (exprs!7380 auxCtx!45)))))))

(assert (=> d!2218741 (= lt!2558258 e!4268782)))

(declare-fun c!1325204 () Bool)

(assert (=> d!2218741 (= c!1325204 (is-Nil!68723 (exprs!7380 c!9994)))))

(assert (=> d!2218741 (= (++!16038 (exprs!7380 c!9994) (exprs!7380 auxCtx!45)) lt!2558258)))

(assert (= (and d!2218741 c!1325204) b!7102141))

(assert (= (and d!2218741 (not c!1325204)) b!7102142))

(assert (= (and d!2218741 res!2899757) b!7102143))

(assert (= (and b!7102143 res!2899758) b!7102144))

(declare-fun m!7826984 () Bool)

(assert (=> b!7102142 m!7826984))

(declare-fun m!7826986 () Bool)

(assert (=> b!7102143 m!7826986))

(declare-fun m!7826988 () Bool)

(assert (=> b!7102143 m!7826988))

(declare-fun m!7826990 () Bool)

(assert (=> b!7102143 m!7826990))

(declare-fun m!7826992 () Bool)

(assert (=> d!2218741 m!7826992))

(declare-fun m!7826994 () Bool)

(assert (=> d!2218741 m!7826994))

(declare-fun m!7826996 () Bool)

(assert (=> d!2218741 m!7826996))

(assert (=> b!7101977 d!2218741))

(declare-fun d!2218745 () Bool)

(assert (=> d!2218745 (forall!16790 (++!16038 (exprs!7380 c!9994) (exprs!7380 auxCtx!45)) lambda!431108)))

(declare-fun lt!2558264 () Unit!162443)

(declare-fun choose!54767 (List!68847 List!68847 Int) Unit!162443)

(assert (=> d!2218745 (= lt!2558264 (choose!54767 (exprs!7380 c!9994) (exprs!7380 auxCtx!45) lambda!431108))))

(assert (=> d!2218745 (forall!16790 (exprs!7380 c!9994) lambda!431108)))

(assert (=> d!2218745 (= (lemmaConcatPreservesForall!1171 (exprs!7380 c!9994) (exprs!7380 auxCtx!45) lambda!431108) lt!2558264)))

(declare-fun bs!1884356 () Bool)

(assert (= bs!1884356 d!2218745))

(assert (=> bs!1884356 m!7826904))

(assert (=> bs!1884356 m!7826904))

(declare-fun m!7827002 () Bool)

(assert (=> bs!1884356 m!7827002))

(declare-fun m!7827006 () Bool)

(assert (=> bs!1884356 m!7827006))

(declare-fun m!7827008 () Bool)

(assert (=> bs!1884356 m!7827008))

(assert (=> b!7101977 d!2218745))

(declare-fun d!2218749 () Bool)

(declare-fun nullableFct!2904 (Regex!17886) Bool)

(assert (=> d!2218749 (= (nullable!7524 (regOne!36284 r!11554)) (nullableFct!2904 (regOne!36284 r!11554)))))

(declare-fun bs!1884357 () Bool)

(assert (= bs!1884357 d!2218749))

(declare-fun m!7827010 () Bool)

(assert (=> bs!1884357 m!7827010))

(assert (=> b!7101985 d!2218749))

(declare-fun b!7102149 () Bool)

(declare-fun e!4268785 () Bool)

(declare-fun tp!1952577 () Bool)

(declare-fun tp!1952578 () Bool)

(assert (=> b!7102149 (= e!4268785 (and tp!1952577 tp!1952578))))

(assert (=> b!7101986 (= tp!1952546 e!4268785)))

(assert (= (and b!7101986 (is-Cons!68723 (exprs!7380 auxCtx!45))) b!7102149))

(declare-fun e!4268788 () Bool)

(assert (=> b!7101981 (= tp!1952548 e!4268788)))

(declare-fun b!7102161 () Bool)

(declare-fun tp!1952592 () Bool)

(declare-fun tp!1952593 () Bool)

(assert (=> b!7102161 (= e!4268788 (and tp!1952592 tp!1952593))))

(declare-fun b!7102162 () Bool)

(declare-fun tp!1952589 () Bool)

(assert (=> b!7102162 (= e!4268788 tp!1952589)))

(declare-fun b!7102160 () Bool)

(assert (=> b!7102160 (= e!4268788 tp_is_empty!45005)))

(declare-fun b!7102163 () Bool)

(declare-fun tp!1952590 () Bool)

(declare-fun tp!1952591 () Bool)

(assert (=> b!7102163 (= e!4268788 (and tp!1952590 tp!1952591))))

(assert (= (and b!7101981 (is-ElementMatch!17886 (regOne!36284 r!11554))) b!7102160))

(assert (= (and b!7101981 (is-Concat!26731 (regOne!36284 r!11554))) b!7102161))

(assert (= (and b!7101981 (is-Star!17886 (regOne!36284 r!11554))) b!7102162))

(assert (= (and b!7101981 (is-Union!17886 (regOne!36284 r!11554))) b!7102163))

(declare-fun e!4268789 () Bool)

(assert (=> b!7101981 (= tp!1952551 e!4268789)))

(declare-fun b!7102165 () Bool)

(declare-fun tp!1952597 () Bool)

(declare-fun tp!1952598 () Bool)

(assert (=> b!7102165 (= e!4268789 (and tp!1952597 tp!1952598))))

(declare-fun b!7102166 () Bool)

(declare-fun tp!1952594 () Bool)

(assert (=> b!7102166 (= e!4268789 tp!1952594)))

(declare-fun b!7102164 () Bool)

(assert (=> b!7102164 (= e!4268789 tp_is_empty!45005)))

(declare-fun b!7102167 () Bool)

(declare-fun tp!1952595 () Bool)

(declare-fun tp!1952596 () Bool)

(assert (=> b!7102167 (= e!4268789 (and tp!1952595 tp!1952596))))

(assert (= (and b!7101981 (is-ElementMatch!17886 (regTwo!36284 r!11554))) b!7102164))

(assert (= (and b!7101981 (is-Concat!26731 (regTwo!36284 r!11554))) b!7102165))

(assert (= (and b!7101981 (is-Star!17886 (regTwo!36284 r!11554))) b!7102166))

(assert (= (and b!7101981 (is-Union!17886 (regTwo!36284 r!11554))) b!7102167))

(declare-fun e!4268790 () Bool)

(assert (=> b!7101976 (= tp!1952550 e!4268790)))

(declare-fun b!7102169 () Bool)

(declare-fun tp!1952602 () Bool)

(declare-fun tp!1952603 () Bool)

(assert (=> b!7102169 (= e!4268790 (and tp!1952602 tp!1952603))))

(declare-fun b!7102170 () Bool)

(declare-fun tp!1952599 () Bool)

(assert (=> b!7102170 (= e!4268790 tp!1952599)))

(declare-fun b!7102168 () Bool)

(assert (=> b!7102168 (= e!4268790 tp_is_empty!45005)))

(declare-fun b!7102171 () Bool)

(declare-fun tp!1952600 () Bool)

(declare-fun tp!1952601 () Bool)

(assert (=> b!7102171 (= e!4268790 (and tp!1952600 tp!1952601))))

(assert (= (and b!7101976 (is-ElementMatch!17886 (reg!18215 r!11554))) b!7102168))

(assert (= (and b!7101976 (is-Concat!26731 (reg!18215 r!11554))) b!7102169))

(assert (= (and b!7101976 (is-Star!17886 (reg!18215 r!11554))) b!7102170))

(assert (= (and b!7101976 (is-Union!17886 (reg!18215 r!11554))) b!7102171))

(declare-fun b!7102172 () Bool)

(declare-fun e!4268791 () Bool)

(declare-fun tp!1952604 () Bool)

(declare-fun tp!1952605 () Bool)

(assert (=> b!7102172 (= e!4268791 (and tp!1952604 tp!1952605))))

(assert (=> b!7101978 (= tp!1952549 e!4268791)))

(assert (= (and b!7101978 (is-Cons!68723 (exprs!7380 c!9994))) b!7102172))

(declare-fun e!4268792 () Bool)

(assert (=> b!7101980 (= tp!1952545 e!4268792)))

(declare-fun b!7102174 () Bool)

(declare-fun tp!1952609 () Bool)

(declare-fun tp!1952610 () Bool)

(assert (=> b!7102174 (= e!4268792 (and tp!1952609 tp!1952610))))

(declare-fun b!7102175 () Bool)

(declare-fun tp!1952606 () Bool)

(assert (=> b!7102175 (= e!4268792 tp!1952606)))

(declare-fun b!7102173 () Bool)

(assert (=> b!7102173 (= e!4268792 tp_is_empty!45005)))

(declare-fun b!7102176 () Bool)

(declare-fun tp!1952607 () Bool)

(declare-fun tp!1952608 () Bool)

(assert (=> b!7102176 (= e!4268792 (and tp!1952607 tp!1952608))))

(assert (= (and b!7101980 (is-ElementMatch!17886 (regOne!36285 r!11554))) b!7102173))

(assert (= (and b!7101980 (is-Concat!26731 (regOne!36285 r!11554))) b!7102174))

(assert (= (and b!7101980 (is-Star!17886 (regOne!36285 r!11554))) b!7102175))

(assert (= (and b!7101980 (is-Union!17886 (regOne!36285 r!11554))) b!7102176))

(declare-fun e!4268793 () Bool)

(assert (=> b!7101980 (= tp!1952547 e!4268793)))

(declare-fun b!7102178 () Bool)

(declare-fun tp!1952614 () Bool)

(declare-fun tp!1952615 () Bool)

(assert (=> b!7102178 (= e!4268793 (and tp!1952614 tp!1952615))))

(declare-fun b!7102179 () Bool)

(declare-fun tp!1952611 () Bool)

(assert (=> b!7102179 (= e!4268793 tp!1952611)))

(declare-fun b!7102177 () Bool)

(assert (=> b!7102177 (= e!4268793 tp_is_empty!45005)))

(declare-fun b!7102180 () Bool)

(declare-fun tp!1952612 () Bool)

(declare-fun tp!1952613 () Bool)

(assert (=> b!7102180 (= e!4268793 (and tp!1952612 tp!1952613))))

(assert (= (and b!7101980 (is-ElementMatch!17886 (regTwo!36285 r!11554))) b!7102177))

(assert (= (and b!7101980 (is-Concat!26731 (regTwo!36285 r!11554))) b!7102178))

(assert (= (and b!7101980 (is-Star!17886 (regTwo!36285 r!11554))) b!7102179))

(assert (= (and b!7101980 (is-Union!17886 (regTwo!36285 r!11554))) b!7102180))

(push 1)

(assert (not bm!646812))

(assert (not b!7102175))

(assert (not b!7102170))

(assert (not bm!646823))

(assert (not b!7102172))

(assert (not b!7102176))

(assert (not b!7102162))

(assert (not b!7102167))

(assert (not b!7102163))

(assert (not b!7102143))

(assert (not b!7102090))

(assert (not b!7102174))

(assert (not d!2218737))

(assert (not bm!646814))

(assert (not b!7102161))

(assert (not b!7102149))

(assert (not bm!646806))

(assert (not d!2218739))

(assert (not bm!646824))

(assert (not d!2218741))

(assert (not b!7102142))

(assert (not d!2218745))

(assert (not b!7102165))

(assert (not bm!646809))

(assert (not b!7102079))

(assert tp_is_empty!45005)

(assert (not b!7102179))

(assert (not b!7102166))

(assert (not b!7102169))

(assert (not b!7102178))

(assert (not bm!646808))

(assert (not b!7102118))

(assert (not b!7102171))

(assert (not bm!646815))

(assert (not b!7102180))

(assert (not d!2218749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

