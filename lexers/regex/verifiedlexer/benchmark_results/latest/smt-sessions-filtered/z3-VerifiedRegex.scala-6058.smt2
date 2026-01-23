; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295944 () Bool)

(assert start!295944)

(declare-fun b!3140799 () Bool)

(declare-fun res!1282889 () Bool)

(declare-fun e!1959134 () Bool)

(assert (=> b!3140799 (=> (not res!1282889) (not e!1959134))))

(declare-datatypes ((C!19520 0))(
  ( (C!19521 (val!11796 Int)) )
))
(declare-datatypes ((Regex!9667 0))(
  ( (ElementMatch!9667 (c!527861 C!19520)) (Concat!14988 (regOne!19846 Regex!9667) (regTwo!19846 Regex!9667)) (EmptyExpr!9667) (Star!9667 (reg!9996 Regex!9667)) (EmptyLang!9667) (Union!9667 (regOne!19847 Regex!9667) (regTwo!19847 Regex!9667)) )
))
(declare-fun r!17345 () Regex!9667)

(get-info :version)

(assert (=> b!3140799 (= res!1282889 (and (not ((_ is EmptyLang!9667) r!17345)) (not ((_ is ElementMatch!9667) r!17345)) (not ((_ is EmptyExpr!9667) r!17345)) ((_ is Star!9667) r!17345)))))

(declare-fun b!3140800 () Bool)

(declare-fun e!1959132 () Bool)

(declare-fun tp_is_empty!16897 () Bool)

(assert (=> b!3140800 (= e!1959132 tp_is_empty!16897)))

(declare-fun b!3140801 () Bool)

(declare-fun tp!983775 () Bool)

(declare-fun tp!983773 () Bool)

(assert (=> b!3140801 (= e!1959132 (and tp!983775 tp!983773))))

(declare-fun b!3140802 () Bool)

(declare-fun res!1282886 () Bool)

(declare-fun e!1959133 () Bool)

(assert (=> b!3140802 (=> (not res!1282886) (not e!1959133))))

(declare-fun lt!1061174 () Regex!9667)

(declare-fun isEmptyExpr!698 (Regex!9667) Bool)

(assert (=> b!3140802 (= res!1282886 (not (isEmptyExpr!698 lt!1061174)))))

(declare-fun b!3140803 () Bool)

(declare-fun tp!983772 () Bool)

(assert (=> b!3140803 (= e!1959132 tp!983772)))

(declare-fun b!3140804 () Bool)

(declare-fun tp!983774 () Bool)

(declare-fun tp!983771 () Bool)

(assert (=> b!3140804 (= e!1959132 (and tp!983774 tp!983771))))

(declare-fun b!3140805 () Bool)

(assert (=> b!3140805 (= e!1959134 e!1959133)))

(declare-fun res!1282888 () Bool)

(assert (=> b!3140805 (=> (not res!1282888) (not e!1959133))))

(declare-fun isEmptyLang!704 (Regex!9667) Bool)

(assert (=> b!3140805 (= res!1282888 (not (isEmptyLang!704 lt!1061174)))))

(declare-fun simplify!608 (Regex!9667) Regex!9667)

(assert (=> b!3140805 (= lt!1061174 (simplify!608 (reg!9996 r!17345)))))

(declare-fun b!3140806 () Bool)

(declare-fun e!1959135 () Bool)

(assert (=> b!3140806 (= e!1959133 e!1959135)))

(declare-fun res!1282887 () Bool)

(assert (=> b!3140806 (=> res!1282887 e!1959135)))

(declare-fun lt!1061173 () Regex!9667)

(declare-fun validRegex!4400 (Regex!9667) Bool)

(assert (=> b!3140806 (= res!1282887 (not (validRegex!4400 lt!1061173)))))

(assert (=> b!3140806 (= lt!1061173 (Star!9667 lt!1061174))))

(declare-fun res!1282890 () Bool)

(assert (=> start!295944 (=> (not res!1282890) (not e!1959134))))

(assert (=> start!295944 (= res!1282890 (validRegex!4400 r!17345))))

(assert (=> start!295944 e!1959134))

(assert (=> start!295944 e!1959132))

(declare-fun b!3140807 () Bool)

(declare-fun nullable!3301 (Regex!9667) Bool)

(assert (=> b!3140807 (= e!1959135 (not (= (nullable!3301 lt!1061173) (nullable!3301 r!17345))))))

(assert (= (and start!295944 res!1282890) b!3140799))

(assert (= (and b!3140799 res!1282889) b!3140805))

(assert (= (and b!3140805 res!1282888) b!3140802))

(assert (= (and b!3140802 res!1282886) b!3140806))

(assert (= (and b!3140806 (not res!1282887)) b!3140807))

(assert (= (and start!295944 ((_ is ElementMatch!9667) r!17345)) b!3140800))

(assert (= (and start!295944 ((_ is Concat!14988) r!17345)) b!3140804))

(assert (= (and start!295944 ((_ is Star!9667) r!17345)) b!3140803))

(assert (= (and start!295944 ((_ is Union!9667) r!17345)) b!3140801))

(declare-fun m!3417899 () Bool)

(assert (=> start!295944 m!3417899))

(declare-fun m!3417901 () Bool)

(assert (=> b!3140806 m!3417901))

(declare-fun m!3417903 () Bool)

(assert (=> b!3140805 m!3417903))

(declare-fun m!3417905 () Bool)

(assert (=> b!3140805 m!3417905))

(declare-fun m!3417907 () Bool)

(assert (=> b!3140802 m!3417907))

(declare-fun m!3417909 () Bool)

(assert (=> b!3140807 m!3417909))

(declare-fun m!3417911 () Bool)

(assert (=> b!3140807 m!3417911))

(check-sat (not b!3140805) (not b!3140802) (not start!295944) (not b!3140807) (not b!3140804) tp_is_empty!16897 (not b!3140806) (not b!3140803) (not b!3140801))
(check-sat)
(get-model)

(declare-fun d!865699 () Bool)

(assert (=> d!865699 (= (isEmptyExpr!698 lt!1061174) ((_ is EmptyExpr!9667) lt!1061174))))

(assert (=> b!3140802 d!865699))

(declare-fun d!865701 () Bool)

(declare-fun nullableFct!926 (Regex!9667) Bool)

(assert (=> d!865701 (= (nullable!3301 lt!1061173) (nullableFct!926 lt!1061173))))

(declare-fun bs!539054 () Bool)

(assert (= bs!539054 d!865701))

(declare-fun m!3417913 () Bool)

(assert (=> bs!539054 m!3417913))

(assert (=> b!3140807 d!865701))

(declare-fun d!865703 () Bool)

(assert (=> d!865703 (= (nullable!3301 r!17345) (nullableFct!926 r!17345))))

(declare-fun bs!539055 () Bool)

(assert (= bs!539055 d!865703))

(declare-fun m!3417915 () Bool)

(assert (=> bs!539055 m!3417915))

(assert (=> b!3140807 d!865703))

(declare-fun b!3140862 () Bool)

(declare-fun e!1959183 () Bool)

(declare-fun call!225530 () Bool)

(assert (=> b!3140862 (= e!1959183 call!225530)))

(declare-fun b!3140863 () Bool)

(declare-fun e!1959181 () Bool)

(declare-fun call!225531 () Bool)

(assert (=> b!3140863 (= e!1959181 call!225531)))

(declare-fun b!3140864 () Bool)

(declare-fun e!1959184 () Bool)

(declare-fun e!1959180 () Bool)

(assert (=> b!3140864 (= e!1959184 e!1959180)))

(declare-fun res!1282921 () Bool)

(assert (=> b!3140864 (=> (not res!1282921) (not e!1959180))))

(assert (=> b!3140864 (= res!1282921 call!225531)))

(declare-fun d!865705 () Bool)

(declare-fun res!1282923 () Bool)

(declare-fun e!1959179 () Bool)

(assert (=> d!865705 (=> res!1282923 e!1959179)))

(assert (=> d!865705 (= res!1282923 ((_ is ElementMatch!9667) lt!1061173))))

(assert (=> d!865705 (= (validRegex!4400 lt!1061173) e!1959179)))

(declare-fun b!3140865 () Bool)

(declare-fun e!1959178 () Bool)

(assert (=> b!3140865 (= e!1959179 e!1959178)))

(declare-fun c!527875 () Bool)

(assert (=> b!3140865 (= c!527875 ((_ is Star!9667) lt!1061173))))

(declare-fun b!3140866 () Bool)

(declare-fun res!1282922 () Bool)

(assert (=> b!3140866 (=> res!1282922 e!1959184)))

(assert (=> b!3140866 (= res!1282922 (not ((_ is Concat!14988) lt!1061173)))))

(declare-fun e!1959182 () Bool)

(assert (=> b!3140866 (= e!1959182 e!1959184)))

(declare-fun bm!225524 () Bool)

(declare-fun call!225529 () Bool)

(declare-fun c!527874 () Bool)

(assert (=> bm!225524 (= call!225529 (validRegex!4400 (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))))))

(declare-fun b!3140867 () Bool)

(assert (=> b!3140867 (= e!1959178 e!1959182)))

(assert (=> b!3140867 (= c!527874 ((_ is Union!9667) lt!1061173))))

(declare-fun bm!225525 () Bool)

(assert (=> bm!225525 (= call!225531 call!225530)))

(declare-fun b!3140868 () Bool)

(declare-fun res!1282925 () Bool)

(assert (=> b!3140868 (=> (not res!1282925) (not e!1959181))))

(assert (=> b!3140868 (= res!1282925 call!225529)))

(assert (=> b!3140868 (= e!1959182 e!1959181)))

(declare-fun bm!225526 () Bool)

(assert (=> bm!225526 (= call!225530 (validRegex!4400 (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))))))

(declare-fun b!3140869 () Bool)

(assert (=> b!3140869 (= e!1959178 e!1959183)))

(declare-fun res!1282924 () Bool)

(assert (=> b!3140869 (= res!1282924 (not (nullable!3301 (reg!9996 lt!1061173))))))

(assert (=> b!3140869 (=> (not res!1282924) (not e!1959183))))

(declare-fun b!3140870 () Bool)

(assert (=> b!3140870 (= e!1959180 call!225529)))

(assert (= (and d!865705 (not res!1282923)) b!3140865))

(assert (= (and b!3140865 c!527875) b!3140869))

(assert (= (and b!3140865 (not c!527875)) b!3140867))

(assert (= (and b!3140869 res!1282924) b!3140862))

(assert (= (and b!3140867 c!527874) b!3140868))

(assert (= (and b!3140867 (not c!527874)) b!3140866))

(assert (= (and b!3140868 res!1282925) b!3140863))

(assert (= (and b!3140866 (not res!1282922)) b!3140864))

(assert (= (and b!3140864 res!1282921) b!3140870))

(assert (= (or b!3140863 b!3140864) bm!225525))

(assert (= (or b!3140868 b!3140870) bm!225524))

(assert (= (or b!3140862 bm!225525) bm!225526))

(declare-fun m!3417933 () Bool)

(assert (=> bm!225524 m!3417933))

(declare-fun m!3417935 () Bool)

(assert (=> bm!225526 m!3417935))

(declare-fun m!3417937 () Bool)

(assert (=> b!3140869 m!3417937))

(assert (=> b!3140806 d!865705))

(declare-fun d!865717 () Bool)

(assert (=> d!865717 (= (isEmptyLang!704 lt!1061174) ((_ is EmptyLang!9667) lt!1061174))))

(assert (=> b!3140805 d!865717))

(declare-fun b!3140996 () Bool)

(declare-fun e!1959264 () Regex!9667)

(declare-fun lt!1061206 () Regex!9667)

(assert (=> b!3140996 (= e!1959264 lt!1061206)))

(declare-fun b!3140997 () Bool)

(declare-fun e!1959266 () Regex!9667)

(declare-fun e!1959262 () Regex!9667)

(assert (=> b!3140997 (= e!1959266 e!1959262)))

(declare-fun lt!1061205 () Regex!9667)

(declare-fun call!225571 () Regex!9667)

(assert (=> b!3140997 (= lt!1061205 call!225571)))

(declare-fun lt!1061210 () Regex!9667)

(declare-fun call!225567 () Regex!9667)

(assert (=> b!3140997 (= lt!1061210 call!225567)))

(declare-fun c!527931 () Bool)

(declare-fun call!225570 () Bool)

(assert (=> b!3140997 (= c!527931 call!225570)))

(declare-fun b!3140998 () Bool)

(declare-fun c!527940 () Bool)

(declare-fun call!225568 () Bool)

(assert (=> b!3140998 (= c!527940 call!225568)))

(declare-fun e!1959267 () Regex!9667)

(assert (=> b!3140998 (= e!1959267 e!1959264)))

(declare-fun d!865721 () Bool)

(declare-fun e!1959255 () Bool)

(assert (=> d!865721 e!1959255))

(declare-fun res!1282943 () Bool)

(assert (=> d!865721 (=> (not res!1282943) (not e!1959255))))

(declare-fun lt!1061209 () Regex!9667)

(assert (=> d!865721 (= res!1282943 (validRegex!4400 lt!1061209))))

(declare-fun e!1959259 () Regex!9667)

(assert (=> d!865721 (= lt!1061209 e!1959259)))

(declare-fun c!527937 () Bool)

(assert (=> d!865721 (= c!527937 ((_ is EmptyLang!9667) (reg!9996 r!17345)))))

(assert (=> d!865721 (validRegex!4400 (reg!9996 r!17345))))

(assert (=> d!865721 (= (simplify!608 (reg!9996 r!17345)) lt!1061209)))

(declare-fun b!3140999 () Bool)

(assert (=> b!3140999 (= e!1959262 lt!1061210)))

(declare-fun b!3141000 () Bool)

(declare-fun e!1959261 () Regex!9667)

(declare-fun lt!1061207 () Regex!9667)

(assert (=> b!3141000 (= e!1959261 (Concat!14988 lt!1061207 lt!1061206))))

(declare-fun b!3141001 () Bool)

(declare-fun e!1959260 () Regex!9667)

(assert (=> b!3141001 (= e!1959260 lt!1061205)))

(declare-fun b!3141002 () Bool)

(assert (=> b!3141002 (= e!1959261 lt!1061207)))

(declare-fun b!3141003 () Bool)

(declare-fun e!1959265 () Regex!9667)

(declare-fun e!1959257 () Regex!9667)

(assert (=> b!3141003 (= e!1959265 e!1959257)))

(declare-fun c!527938 () Bool)

(assert (=> b!3141003 (= c!527938 ((_ is Star!9667) (reg!9996 r!17345)))))

(declare-fun b!3141004 () Bool)

(declare-fun e!1959258 () Regex!9667)

(assert (=> b!3141004 (= e!1959258 (reg!9996 r!17345))))

(declare-fun bm!225562 () Bool)

(declare-fun c!527933 () Bool)

(assert (=> bm!225562 (= call!225567 (simplify!608 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))))))

(declare-fun b!3141005 () Bool)

(assert (=> b!3141005 (= e!1959265 EmptyExpr!9667)))

(declare-fun bm!225563 () Bool)

(assert (=> bm!225563 (= call!225570 (isEmptyLang!704 (ite c!527933 lt!1061205 lt!1061206)))))

(declare-fun b!3141006 () Bool)

(declare-fun c!527941 () Bool)

(declare-fun e!1959268 () Bool)

(assert (=> b!3141006 (= c!527941 e!1959268)))

(declare-fun res!1282942 () Bool)

(assert (=> b!3141006 (=> res!1282942 e!1959268)))

(declare-fun call!225573 () Bool)

(assert (=> b!3141006 (= res!1282942 call!225573)))

(declare-fun lt!1061208 () Regex!9667)

(declare-fun call!225572 () Regex!9667)

(assert (=> b!3141006 (= lt!1061208 call!225572)))

(declare-fun e!1959256 () Regex!9667)

(assert (=> b!3141006 (= e!1959257 e!1959256)))

(declare-fun bm!225564 () Bool)

(assert (=> bm!225564 (= call!225568 (isEmptyExpr!698 (ite c!527938 lt!1061208 lt!1061207)))))

(declare-fun bm!225565 () Bool)

(declare-fun call!225569 () Bool)

(assert (=> bm!225565 (= call!225569 call!225573)))

(declare-fun b!3141007 () Bool)

(declare-fun c!527936 () Bool)

(assert (=> b!3141007 (= c!527936 call!225569)))

(assert (=> b!3141007 (= e!1959262 e!1959260)))

(declare-fun b!3141008 () Bool)

(assert (=> b!3141008 (= c!527933 ((_ is Union!9667) (reg!9996 r!17345)))))

(assert (=> b!3141008 (= e!1959257 e!1959266)))

(declare-fun bm!225566 () Bool)

(assert (=> bm!225566 (= call!225572 (simplify!608 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))))))

(declare-fun b!3141009 () Bool)

(assert (=> b!3141009 (= e!1959259 EmptyLang!9667)))

(declare-fun b!3141010 () Bool)

(assert (=> b!3141010 (= e!1959260 (Union!9667 lt!1061205 lt!1061210))))

(declare-fun b!3141011 () Bool)

(assert (=> b!3141011 (= e!1959264 e!1959261)))

(declare-fun c!527935 () Bool)

(assert (=> b!3141011 (= c!527935 (isEmptyExpr!698 lt!1061206))))

(declare-fun b!3141012 () Bool)

(assert (=> b!3141012 (= e!1959266 e!1959267)))

(assert (=> b!3141012 (= lt!1061207 call!225571)))

(assert (=> b!3141012 (= lt!1061206 call!225567)))

(declare-fun res!1282941 () Bool)

(assert (=> b!3141012 (= res!1282941 call!225569)))

(declare-fun e!1959263 () Bool)

(assert (=> b!3141012 (=> res!1282941 e!1959263)))

(declare-fun c!527934 () Bool)

(assert (=> b!3141012 (= c!527934 e!1959263)))

(declare-fun b!3141013 () Bool)

(assert (=> b!3141013 (= e!1959256 EmptyExpr!9667)))

(declare-fun b!3141014 () Bool)

(assert (=> b!3141014 (= e!1959255 (= (nullable!3301 lt!1061209) (nullable!3301 (reg!9996 r!17345))))))

(declare-fun b!3141015 () Bool)

(assert (=> b!3141015 (= e!1959256 (Star!9667 lt!1061208))))

(declare-fun b!3141016 () Bool)

(assert (=> b!3141016 (= e!1959267 EmptyLang!9667)))

(declare-fun b!3141017 () Bool)

(assert (=> b!3141017 (= e!1959263 call!225570)))

(declare-fun b!3141018 () Bool)

(assert (=> b!3141018 (= e!1959259 e!1959258)))

(declare-fun c!527939 () Bool)

(assert (=> b!3141018 (= c!527939 ((_ is ElementMatch!9667) (reg!9996 r!17345)))))

(declare-fun bm!225567 () Bool)

(assert (=> bm!225567 (= call!225571 call!225572)))

(declare-fun b!3141019 () Bool)

(declare-fun c!527932 () Bool)

(assert (=> b!3141019 (= c!527932 ((_ is EmptyExpr!9667) (reg!9996 r!17345)))))

(assert (=> b!3141019 (= e!1959258 e!1959265)))

(declare-fun b!3141020 () Bool)

(assert (=> b!3141020 (= e!1959268 call!225568)))

(declare-fun bm!225568 () Bool)

(assert (=> bm!225568 (= call!225573 (isEmptyLang!704 (ite c!527938 lt!1061208 (ite c!527933 lt!1061210 lt!1061207))))))

(assert (= (and d!865721 c!527937) b!3141009))

(assert (= (and d!865721 (not c!527937)) b!3141018))

(assert (= (and b!3141018 c!527939) b!3141004))

(assert (= (and b!3141018 (not c!527939)) b!3141019))

(assert (= (and b!3141019 c!527932) b!3141005))

(assert (= (and b!3141019 (not c!527932)) b!3141003))

(assert (= (and b!3141003 c!527938) b!3141006))

(assert (= (and b!3141003 (not c!527938)) b!3141008))

(assert (= (and b!3141006 (not res!1282942)) b!3141020))

(assert (= (and b!3141006 c!527941) b!3141013))

(assert (= (and b!3141006 (not c!527941)) b!3141015))

(assert (= (and b!3141008 c!527933) b!3140997))

(assert (= (and b!3141008 (not c!527933)) b!3141012))

(assert (= (and b!3140997 c!527931) b!3140999))

(assert (= (and b!3140997 (not c!527931)) b!3141007))

(assert (= (and b!3141007 c!527936) b!3141001))

(assert (= (and b!3141007 (not c!527936)) b!3141010))

(assert (= (and b!3141012 (not res!1282941)) b!3141017))

(assert (= (and b!3141012 c!527934) b!3141016))

(assert (= (and b!3141012 (not c!527934)) b!3140998))

(assert (= (and b!3140998 c!527940) b!3140996))

(assert (= (and b!3140998 (not c!527940)) b!3141011))

(assert (= (and b!3141011 c!527935) b!3141002))

(assert (= (and b!3141011 (not c!527935)) b!3141000))

(assert (= (or b!3141007 b!3141012) bm!225565))

(assert (= (or b!3140997 b!3141017) bm!225563))

(assert (= (or b!3140997 b!3141012) bm!225567))

(assert (= (or b!3140997 b!3141012) bm!225562))

(assert (= (or b!3141020 b!3140998) bm!225564))

(assert (= (or b!3141006 bm!225565) bm!225568))

(assert (= (or b!3141006 bm!225567) bm!225566))

(assert (= (and d!865721 res!1282943) b!3141014))

(declare-fun m!3417949 () Bool)

(assert (=> b!3141011 m!3417949))

(declare-fun m!3417953 () Bool)

(assert (=> d!865721 m!3417953))

(declare-fun m!3417955 () Bool)

(assert (=> d!865721 m!3417955))

(declare-fun m!3417957 () Bool)

(assert (=> b!3141014 m!3417957))

(declare-fun m!3417959 () Bool)

(assert (=> b!3141014 m!3417959))

(declare-fun m!3417963 () Bool)

(assert (=> bm!225564 m!3417963))

(declare-fun m!3417969 () Bool)

(assert (=> bm!225566 m!3417969))

(declare-fun m!3417971 () Bool)

(assert (=> bm!225563 m!3417971))

(declare-fun m!3417973 () Bool)

(assert (=> bm!225568 m!3417973))

(declare-fun m!3417975 () Bool)

(assert (=> bm!225562 m!3417975))

(assert (=> b!3140805 d!865721))

(declare-fun b!3141027 () Bool)

(declare-fun e!1959276 () Bool)

(declare-fun call!225575 () Bool)

(assert (=> b!3141027 (= e!1959276 call!225575)))

(declare-fun b!3141028 () Bool)

(declare-fun e!1959274 () Bool)

(declare-fun call!225576 () Bool)

(assert (=> b!3141028 (= e!1959274 call!225576)))

(declare-fun b!3141029 () Bool)

(declare-fun e!1959277 () Bool)

(declare-fun e!1959273 () Bool)

(assert (=> b!3141029 (= e!1959277 e!1959273)))

(declare-fun res!1282944 () Bool)

(assert (=> b!3141029 (=> (not res!1282944) (not e!1959273))))

(assert (=> b!3141029 (= res!1282944 call!225576)))

(declare-fun d!865723 () Bool)

(declare-fun res!1282946 () Bool)

(declare-fun e!1959272 () Bool)

(assert (=> d!865723 (=> res!1282946 e!1959272)))

(assert (=> d!865723 (= res!1282946 ((_ is ElementMatch!9667) r!17345))))

(assert (=> d!865723 (= (validRegex!4400 r!17345) e!1959272)))

(declare-fun b!3141030 () Bool)

(declare-fun e!1959271 () Bool)

(assert (=> b!3141030 (= e!1959272 e!1959271)))

(declare-fun c!527943 () Bool)

(assert (=> b!3141030 (= c!527943 ((_ is Star!9667) r!17345))))

(declare-fun b!3141031 () Bool)

(declare-fun res!1282945 () Bool)

(assert (=> b!3141031 (=> res!1282945 e!1959277)))

(assert (=> b!3141031 (= res!1282945 (not ((_ is Concat!14988) r!17345)))))

(declare-fun e!1959275 () Bool)

(assert (=> b!3141031 (= e!1959275 e!1959277)))

(declare-fun bm!225569 () Bool)

(declare-fun call!225574 () Bool)

(declare-fun c!527942 () Bool)

(assert (=> bm!225569 (= call!225574 (validRegex!4400 (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))))))

(declare-fun b!3141032 () Bool)

(assert (=> b!3141032 (= e!1959271 e!1959275)))

(assert (=> b!3141032 (= c!527942 ((_ is Union!9667) r!17345))))

(declare-fun bm!225570 () Bool)

(assert (=> bm!225570 (= call!225576 call!225575)))

(declare-fun b!3141033 () Bool)

(declare-fun res!1282948 () Bool)

(assert (=> b!3141033 (=> (not res!1282948) (not e!1959274))))

(assert (=> b!3141033 (= res!1282948 call!225574)))

(assert (=> b!3141033 (= e!1959275 e!1959274)))

(declare-fun bm!225571 () Bool)

(assert (=> bm!225571 (= call!225575 (validRegex!4400 (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))))))

(declare-fun b!3141034 () Bool)

(assert (=> b!3141034 (= e!1959271 e!1959276)))

(declare-fun res!1282947 () Bool)

(assert (=> b!3141034 (= res!1282947 (not (nullable!3301 (reg!9996 r!17345))))))

(assert (=> b!3141034 (=> (not res!1282947) (not e!1959276))))

(declare-fun b!3141035 () Bool)

(assert (=> b!3141035 (= e!1959273 call!225574)))

(assert (= (and d!865723 (not res!1282946)) b!3141030))

(assert (= (and b!3141030 c!527943) b!3141034))

(assert (= (and b!3141030 (not c!527943)) b!3141032))

(assert (= (and b!3141034 res!1282947) b!3141027))

(assert (= (and b!3141032 c!527942) b!3141033))

(assert (= (and b!3141032 (not c!527942)) b!3141031))

(assert (= (and b!3141033 res!1282948) b!3141028))

(assert (= (and b!3141031 (not res!1282945)) b!3141029))

(assert (= (and b!3141029 res!1282944) b!3141035))

(assert (= (or b!3141028 b!3141029) bm!225570))

(assert (= (or b!3141033 b!3141035) bm!225569))

(assert (= (or b!3141027 bm!225570) bm!225571))

(declare-fun m!3417977 () Bool)

(assert (=> bm!225569 m!3417977))

(declare-fun m!3417979 () Bool)

(assert (=> bm!225571 m!3417979))

(assert (=> b!3141034 m!3417959))

(assert (=> start!295944 d!865723))

(declare-fun b!3141067 () Bool)

(declare-fun e!1959284 () Bool)

(declare-fun tp!983820 () Bool)

(declare-fun tp!983816 () Bool)

(assert (=> b!3141067 (= e!1959284 (and tp!983820 tp!983816))))

(assert (=> b!3140803 (= tp!983772 e!1959284)))

(declare-fun b!3141066 () Bool)

(assert (=> b!3141066 (= e!1959284 tp_is_empty!16897)))

(declare-fun b!3141068 () Bool)

(declare-fun tp!983818 () Bool)

(assert (=> b!3141068 (= e!1959284 tp!983818)))

(declare-fun b!3141069 () Bool)

(declare-fun tp!983817 () Bool)

(declare-fun tp!983819 () Bool)

(assert (=> b!3141069 (= e!1959284 (and tp!983817 tp!983819))))

(assert (= (and b!3140803 ((_ is ElementMatch!9667) (reg!9996 r!17345))) b!3141066))

(assert (= (and b!3140803 ((_ is Concat!14988) (reg!9996 r!17345))) b!3141067))

(assert (= (and b!3140803 ((_ is Star!9667) (reg!9996 r!17345))) b!3141068))

(assert (= (and b!3140803 ((_ is Union!9667) (reg!9996 r!17345))) b!3141069))

(declare-fun b!3141075 () Bool)

(declare-fun e!1959286 () Bool)

(declare-fun tp!983830 () Bool)

(declare-fun tp!983826 () Bool)

(assert (=> b!3141075 (= e!1959286 (and tp!983830 tp!983826))))

(assert (=> b!3140801 (= tp!983775 e!1959286)))

(declare-fun b!3141074 () Bool)

(assert (=> b!3141074 (= e!1959286 tp_is_empty!16897)))

(declare-fun b!3141076 () Bool)

(declare-fun tp!983828 () Bool)

(assert (=> b!3141076 (= e!1959286 tp!983828)))

(declare-fun b!3141077 () Bool)

(declare-fun tp!983827 () Bool)

(declare-fun tp!983829 () Bool)

(assert (=> b!3141077 (= e!1959286 (and tp!983827 tp!983829))))

(assert (= (and b!3140801 ((_ is ElementMatch!9667) (regOne!19847 r!17345))) b!3141074))

(assert (= (and b!3140801 ((_ is Concat!14988) (regOne!19847 r!17345))) b!3141075))

(assert (= (and b!3140801 ((_ is Star!9667) (regOne!19847 r!17345))) b!3141076))

(assert (= (and b!3140801 ((_ is Union!9667) (regOne!19847 r!17345))) b!3141077))

(declare-fun b!3141079 () Bool)

(declare-fun e!1959287 () Bool)

(declare-fun tp!983835 () Bool)

(declare-fun tp!983831 () Bool)

(assert (=> b!3141079 (= e!1959287 (and tp!983835 tp!983831))))

(assert (=> b!3140801 (= tp!983773 e!1959287)))

(declare-fun b!3141078 () Bool)

(assert (=> b!3141078 (= e!1959287 tp_is_empty!16897)))

(declare-fun b!3141080 () Bool)

(declare-fun tp!983833 () Bool)

(assert (=> b!3141080 (= e!1959287 tp!983833)))

(declare-fun b!3141081 () Bool)

(declare-fun tp!983832 () Bool)

(declare-fun tp!983834 () Bool)

(assert (=> b!3141081 (= e!1959287 (and tp!983832 tp!983834))))

(assert (= (and b!3140801 ((_ is ElementMatch!9667) (regTwo!19847 r!17345))) b!3141078))

(assert (= (and b!3140801 ((_ is Concat!14988) (regTwo!19847 r!17345))) b!3141079))

(assert (= (and b!3140801 ((_ is Star!9667) (regTwo!19847 r!17345))) b!3141080))

(assert (= (and b!3140801 ((_ is Union!9667) (regTwo!19847 r!17345))) b!3141081))

(declare-fun b!3141083 () Bool)

(declare-fun e!1959288 () Bool)

(declare-fun tp!983840 () Bool)

(declare-fun tp!983836 () Bool)

(assert (=> b!3141083 (= e!1959288 (and tp!983840 tp!983836))))

(assert (=> b!3140804 (= tp!983774 e!1959288)))

(declare-fun b!3141082 () Bool)

(assert (=> b!3141082 (= e!1959288 tp_is_empty!16897)))

(declare-fun b!3141084 () Bool)

(declare-fun tp!983838 () Bool)

(assert (=> b!3141084 (= e!1959288 tp!983838)))

(declare-fun b!3141085 () Bool)

(declare-fun tp!983837 () Bool)

(declare-fun tp!983839 () Bool)

(assert (=> b!3141085 (= e!1959288 (and tp!983837 tp!983839))))

(assert (= (and b!3140804 ((_ is ElementMatch!9667) (regOne!19846 r!17345))) b!3141082))

(assert (= (and b!3140804 ((_ is Concat!14988) (regOne!19846 r!17345))) b!3141083))

(assert (= (and b!3140804 ((_ is Star!9667) (regOne!19846 r!17345))) b!3141084))

(assert (= (and b!3140804 ((_ is Union!9667) (regOne!19846 r!17345))) b!3141085))

(declare-fun b!3141087 () Bool)

(declare-fun e!1959289 () Bool)

(declare-fun tp!983845 () Bool)

(declare-fun tp!983841 () Bool)

(assert (=> b!3141087 (= e!1959289 (and tp!983845 tp!983841))))

(assert (=> b!3140804 (= tp!983771 e!1959289)))

(declare-fun b!3141086 () Bool)

(assert (=> b!3141086 (= e!1959289 tp_is_empty!16897)))

(declare-fun b!3141088 () Bool)

(declare-fun tp!983843 () Bool)

(assert (=> b!3141088 (= e!1959289 tp!983843)))

(declare-fun b!3141089 () Bool)

(declare-fun tp!983842 () Bool)

(declare-fun tp!983844 () Bool)

(assert (=> b!3141089 (= e!1959289 (and tp!983842 tp!983844))))

(assert (= (and b!3140804 ((_ is ElementMatch!9667) (regTwo!19846 r!17345))) b!3141086))

(assert (= (and b!3140804 ((_ is Concat!14988) (regTwo!19846 r!17345))) b!3141087))

(assert (= (and b!3140804 ((_ is Star!9667) (regTwo!19846 r!17345))) b!3141088))

(assert (= (and b!3140804 ((_ is Union!9667) (regTwo!19846 r!17345))) b!3141089))

(check-sat (not b!3141083) (not b!3141081) (not bm!225569) (not b!3141014) (not b!3141069) (not b!3141011) (not b!3141034) (not b!3141076) (not b!3141067) (not bm!225524) (not b!3141080) (not bm!225563) (not bm!225566) (not b!3141075) (not b!3141085) (not b!3141087) (not d!865721) (not b!3141077) (not bm!225568) (not b!3141068) (not bm!225562) tp_is_empty!16897 (not bm!225571) (not b!3141088) (not b!3140869) (not b!3141089) (not b!3141084) (not d!865703) (not bm!225564) (not d!865701) (not b!3141079) (not bm!225526))
(check-sat)
(get-model)

(declare-fun b!3141104 () Bool)

(declare-fun e!1959302 () Bool)

(declare-fun call!225582 () Bool)

(assert (=> b!3141104 (= e!1959302 call!225582)))

(declare-fun b!3141105 () Bool)

(declare-fun e!1959306 () Bool)

(declare-fun e!1959305 () Bool)

(assert (=> b!3141105 (= e!1959306 e!1959305)))

(declare-fun res!1282961 () Bool)

(assert (=> b!3141105 (= res!1282961 call!225582)))

(assert (=> b!3141105 (=> res!1282961 e!1959305)))

(declare-fun b!3141106 () Bool)

(declare-fun call!225581 () Bool)

(assert (=> b!3141106 (= e!1959305 call!225581)))

(declare-fun b!3141108 () Bool)

(declare-fun e!1959304 () Bool)

(assert (=> b!3141108 (= e!1959304 e!1959306)))

(declare-fun c!527946 () Bool)

(assert (=> b!3141108 (= c!527946 ((_ is Union!9667) lt!1061173))))

(declare-fun b!3141109 () Bool)

(declare-fun e!1959307 () Bool)

(declare-fun e!1959303 () Bool)

(assert (=> b!3141109 (= e!1959307 e!1959303)))

(declare-fun res!1282960 () Bool)

(assert (=> b!3141109 (=> (not res!1282960) (not e!1959303))))

(assert (=> b!3141109 (= res!1282960 (and (not ((_ is EmptyLang!9667) lt!1061173)) (not ((_ is ElementMatch!9667) lt!1061173))))))

(declare-fun bm!225576 () Bool)

(assert (=> bm!225576 (= call!225582 (nullable!3301 (ite c!527946 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))))))

(declare-fun d!865725 () Bool)

(declare-fun res!1282963 () Bool)

(assert (=> d!865725 (=> res!1282963 e!1959307)))

(assert (=> d!865725 (= res!1282963 ((_ is EmptyExpr!9667) lt!1061173))))

(assert (=> d!865725 (= (nullableFct!926 lt!1061173) e!1959307)))

(declare-fun b!3141107 () Bool)

(assert (=> b!3141107 (= e!1959306 e!1959302)))

(declare-fun res!1282962 () Bool)

(assert (=> b!3141107 (= res!1282962 call!225581)))

(assert (=> b!3141107 (=> (not res!1282962) (not e!1959302))))

(declare-fun b!3141110 () Bool)

(assert (=> b!3141110 (= e!1959303 e!1959304)))

(declare-fun res!1282959 () Bool)

(assert (=> b!3141110 (=> res!1282959 e!1959304)))

(assert (=> b!3141110 (= res!1282959 ((_ is Star!9667) lt!1061173))))

(declare-fun bm!225577 () Bool)

(assert (=> bm!225577 (= call!225581 (nullable!3301 (ite c!527946 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173))))))

(assert (= (and d!865725 (not res!1282963)) b!3141109))

(assert (= (and b!3141109 res!1282960) b!3141110))

(assert (= (and b!3141110 (not res!1282959)) b!3141108))

(assert (= (and b!3141108 c!527946) b!3141105))

(assert (= (and b!3141108 (not c!527946)) b!3141107))

(assert (= (and b!3141105 (not res!1282961)) b!3141106))

(assert (= (and b!3141107 res!1282962) b!3141104))

(assert (= (or b!3141105 b!3141104) bm!225576))

(assert (= (or b!3141106 b!3141107) bm!225577))

(declare-fun m!3417981 () Bool)

(assert (=> bm!225576 m!3417981))

(declare-fun m!3417983 () Bool)

(assert (=> bm!225577 m!3417983))

(assert (=> d!865701 d!865725))

(declare-fun d!865727 () Bool)

(assert (=> d!865727 (= (nullable!3301 (reg!9996 r!17345)) (nullableFct!926 (reg!9996 r!17345)))))

(declare-fun bs!539058 () Bool)

(assert (= bs!539058 d!865727))

(declare-fun m!3417985 () Bool)

(assert (=> bs!539058 m!3417985))

(assert (=> b!3141034 d!865727))

(declare-fun b!3141111 () Bool)

(declare-fun e!1959317 () Regex!9667)

(declare-fun lt!1061212 () Regex!9667)

(assert (=> b!3141111 (= e!1959317 lt!1061212)))

(declare-fun b!3141112 () Bool)

(declare-fun e!1959319 () Regex!9667)

(declare-fun e!1959315 () Regex!9667)

(assert (=> b!3141112 (= e!1959319 e!1959315)))

(declare-fun lt!1061211 () Regex!9667)

(declare-fun call!225587 () Regex!9667)

(assert (=> b!3141112 (= lt!1061211 call!225587)))

(declare-fun lt!1061216 () Regex!9667)

(declare-fun call!225583 () Regex!9667)

(assert (=> b!3141112 (= lt!1061216 call!225583)))

(declare-fun c!527947 () Bool)

(declare-fun call!225586 () Bool)

(assert (=> b!3141112 (= c!527947 call!225586)))

(declare-fun b!3141113 () Bool)

(declare-fun c!527956 () Bool)

(declare-fun call!225584 () Bool)

(assert (=> b!3141113 (= c!527956 call!225584)))

(declare-fun e!1959320 () Regex!9667)

(assert (=> b!3141113 (= e!1959320 e!1959317)))

(declare-fun d!865729 () Bool)

(declare-fun e!1959308 () Bool)

(assert (=> d!865729 e!1959308))

(declare-fun res!1282966 () Bool)

(assert (=> d!865729 (=> (not res!1282966) (not e!1959308))))

(declare-fun lt!1061215 () Regex!9667)

(assert (=> d!865729 (= res!1282966 (validRegex!4400 lt!1061215))))

(declare-fun e!1959312 () Regex!9667)

(assert (=> d!865729 (= lt!1061215 e!1959312)))

(declare-fun c!527953 () Bool)

(assert (=> d!865729 (= c!527953 ((_ is EmptyLang!9667) (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))))))

(assert (=> d!865729 (validRegex!4400 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345)))))))

(assert (=> d!865729 (= (simplify!608 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))) lt!1061215)))

(declare-fun b!3141114 () Bool)

(assert (=> b!3141114 (= e!1959315 lt!1061216)))

(declare-fun b!3141115 () Bool)

(declare-fun e!1959314 () Regex!9667)

(declare-fun lt!1061213 () Regex!9667)

(assert (=> b!3141115 (= e!1959314 (Concat!14988 lt!1061213 lt!1061212))))

(declare-fun b!3141116 () Bool)

(declare-fun e!1959313 () Regex!9667)

(assert (=> b!3141116 (= e!1959313 lt!1061211)))

(declare-fun b!3141117 () Bool)

(assert (=> b!3141117 (= e!1959314 lt!1061213)))

(declare-fun b!3141118 () Bool)

(declare-fun e!1959318 () Regex!9667)

(declare-fun e!1959310 () Regex!9667)

(assert (=> b!3141118 (= e!1959318 e!1959310)))

(declare-fun c!527954 () Bool)

(assert (=> b!3141118 (= c!527954 ((_ is Star!9667) (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))))))

(declare-fun b!3141119 () Bool)

(declare-fun e!1959311 () Regex!9667)

(assert (=> b!3141119 (= e!1959311 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345)))))))

(declare-fun bm!225578 () Bool)

(declare-fun c!527949 () Bool)

(assert (=> bm!225578 (= call!225583 (simplify!608 (ite c!527949 (regTwo!19847 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))) (regTwo!19846 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))))))))

(declare-fun b!3141120 () Bool)

(assert (=> b!3141120 (= e!1959318 EmptyExpr!9667)))

(declare-fun bm!225579 () Bool)

(assert (=> bm!225579 (= call!225586 (isEmptyLang!704 (ite c!527949 lt!1061211 lt!1061212)))))

(declare-fun b!3141121 () Bool)

(declare-fun c!527957 () Bool)

(declare-fun e!1959321 () Bool)

(assert (=> b!3141121 (= c!527957 e!1959321)))

(declare-fun res!1282965 () Bool)

(assert (=> b!3141121 (=> res!1282965 e!1959321)))

(declare-fun call!225589 () Bool)

(assert (=> b!3141121 (= res!1282965 call!225589)))

(declare-fun lt!1061214 () Regex!9667)

(declare-fun call!225588 () Regex!9667)

(assert (=> b!3141121 (= lt!1061214 call!225588)))

(declare-fun e!1959309 () Regex!9667)

(assert (=> b!3141121 (= e!1959310 e!1959309)))

(declare-fun bm!225580 () Bool)

(assert (=> bm!225580 (= call!225584 (isEmptyExpr!698 (ite c!527954 lt!1061214 lt!1061213)))))

(declare-fun bm!225581 () Bool)

(declare-fun call!225585 () Bool)

(assert (=> bm!225581 (= call!225585 call!225589)))

(declare-fun b!3141122 () Bool)

(declare-fun c!527952 () Bool)

(assert (=> b!3141122 (= c!527952 call!225585)))

(assert (=> b!3141122 (= e!1959315 e!1959313)))

(declare-fun b!3141123 () Bool)

(assert (=> b!3141123 (= c!527949 ((_ is Union!9667) (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))))))

(assert (=> b!3141123 (= e!1959310 e!1959319)))

(declare-fun bm!225582 () Bool)

(assert (=> bm!225582 (= call!225588 (simplify!608 (ite c!527954 (reg!9996 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))) (ite c!527949 (regOne!19847 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))) (regOne!19846 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345)))))))))))

(declare-fun b!3141124 () Bool)

(assert (=> b!3141124 (= e!1959312 EmptyLang!9667)))

(declare-fun b!3141125 () Bool)

(assert (=> b!3141125 (= e!1959313 (Union!9667 lt!1061211 lt!1061216))))

(declare-fun b!3141126 () Bool)

(assert (=> b!3141126 (= e!1959317 e!1959314)))

(declare-fun c!527951 () Bool)

(assert (=> b!3141126 (= c!527951 (isEmptyExpr!698 lt!1061212))))

(declare-fun b!3141127 () Bool)

(assert (=> b!3141127 (= e!1959319 e!1959320)))

(assert (=> b!3141127 (= lt!1061213 call!225587)))

(assert (=> b!3141127 (= lt!1061212 call!225583)))

(declare-fun res!1282964 () Bool)

(assert (=> b!3141127 (= res!1282964 call!225585)))

(declare-fun e!1959316 () Bool)

(assert (=> b!3141127 (=> res!1282964 e!1959316)))

(declare-fun c!527950 () Bool)

(assert (=> b!3141127 (= c!527950 e!1959316)))

(declare-fun b!3141128 () Bool)

(assert (=> b!3141128 (= e!1959309 EmptyExpr!9667)))

(declare-fun b!3141129 () Bool)

(assert (=> b!3141129 (= e!1959308 (= (nullable!3301 lt!1061215) (nullable!3301 (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345)))))))))

(declare-fun b!3141130 () Bool)

(assert (=> b!3141130 (= e!1959309 (Star!9667 lt!1061214))))

(declare-fun b!3141131 () Bool)

(assert (=> b!3141131 (= e!1959320 EmptyLang!9667)))

(declare-fun b!3141132 () Bool)

(assert (=> b!3141132 (= e!1959316 call!225586)))

(declare-fun b!3141133 () Bool)

(assert (=> b!3141133 (= e!1959312 e!1959311)))

(declare-fun c!527955 () Bool)

(assert (=> b!3141133 (= c!527955 ((_ is ElementMatch!9667) (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))))))

(declare-fun bm!225583 () Bool)

(assert (=> bm!225583 (= call!225587 call!225588)))

(declare-fun c!527948 () Bool)

(declare-fun b!3141134 () Bool)

(assert (=> b!3141134 (= c!527948 ((_ is EmptyExpr!9667) (ite c!527938 (reg!9996 (reg!9996 r!17345)) (ite c!527933 (regOne!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))))))

(assert (=> b!3141134 (= e!1959311 e!1959318)))

(declare-fun b!3141135 () Bool)

(assert (=> b!3141135 (= e!1959321 call!225584)))

(declare-fun bm!225584 () Bool)

(assert (=> bm!225584 (= call!225589 (isEmptyLang!704 (ite c!527954 lt!1061214 (ite c!527949 lt!1061216 lt!1061213))))))

(assert (= (and d!865729 c!527953) b!3141124))

(assert (= (and d!865729 (not c!527953)) b!3141133))

(assert (= (and b!3141133 c!527955) b!3141119))

(assert (= (and b!3141133 (not c!527955)) b!3141134))

(assert (= (and b!3141134 c!527948) b!3141120))

(assert (= (and b!3141134 (not c!527948)) b!3141118))

(assert (= (and b!3141118 c!527954) b!3141121))

(assert (= (and b!3141118 (not c!527954)) b!3141123))

(assert (= (and b!3141121 (not res!1282965)) b!3141135))

(assert (= (and b!3141121 c!527957) b!3141128))

(assert (= (and b!3141121 (not c!527957)) b!3141130))

(assert (= (and b!3141123 c!527949) b!3141112))

(assert (= (and b!3141123 (not c!527949)) b!3141127))

(assert (= (and b!3141112 c!527947) b!3141114))

(assert (= (and b!3141112 (not c!527947)) b!3141122))

(assert (= (and b!3141122 c!527952) b!3141116))

(assert (= (and b!3141122 (not c!527952)) b!3141125))

(assert (= (and b!3141127 (not res!1282964)) b!3141132))

(assert (= (and b!3141127 c!527950) b!3141131))

(assert (= (and b!3141127 (not c!527950)) b!3141113))

(assert (= (and b!3141113 c!527956) b!3141111))

(assert (= (and b!3141113 (not c!527956)) b!3141126))

(assert (= (and b!3141126 c!527951) b!3141117))

(assert (= (and b!3141126 (not c!527951)) b!3141115))

(assert (= (or b!3141122 b!3141127) bm!225581))

(assert (= (or b!3141112 b!3141132) bm!225579))

(assert (= (or b!3141112 b!3141127) bm!225583))

(assert (= (or b!3141112 b!3141127) bm!225578))

(assert (= (or b!3141135 b!3141113) bm!225580))

(assert (= (or b!3141121 bm!225581) bm!225584))

(assert (= (or b!3141121 bm!225583) bm!225582))

(assert (= (and d!865729 res!1282966) b!3141129))

(declare-fun m!3417987 () Bool)

(assert (=> b!3141126 m!3417987))

(declare-fun m!3417989 () Bool)

(assert (=> d!865729 m!3417989))

(declare-fun m!3417991 () Bool)

(assert (=> d!865729 m!3417991))

(declare-fun m!3417993 () Bool)

(assert (=> b!3141129 m!3417993))

(declare-fun m!3417995 () Bool)

(assert (=> b!3141129 m!3417995))

(declare-fun m!3417997 () Bool)

(assert (=> bm!225580 m!3417997))

(declare-fun m!3417999 () Bool)

(assert (=> bm!225582 m!3417999))

(declare-fun m!3418001 () Bool)

(assert (=> bm!225579 m!3418001))

(declare-fun m!3418003 () Bool)

(assert (=> bm!225584 m!3418003))

(declare-fun m!3418005 () Bool)

(assert (=> bm!225578 m!3418005))

(assert (=> bm!225566 d!865729))

(declare-fun b!3141136 () Bool)

(declare-fun e!1959327 () Bool)

(declare-fun call!225591 () Bool)

(assert (=> b!3141136 (= e!1959327 call!225591)))

(declare-fun b!3141137 () Bool)

(declare-fun e!1959325 () Bool)

(declare-fun call!225592 () Bool)

(assert (=> b!3141137 (= e!1959325 call!225592)))

(declare-fun b!3141138 () Bool)

(declare-fun e!1959328 () Bool)

(declare-fun e!1959324 () Bool)

(assert (=> b!3141138 (= e!1959328 e!1959324)))

(declare-fun res!1282967 () Bool)

(assert (=> b!3141138 (=> (not res!1282967) (not e!1959324))))

(assert (=> b!3141138 (= res!1282967 call!225592)))

(declare-fun d!865731 () Bool)

(declare-fun res!1282969 () Bool)

(declare-fun e!1959323 () Bool)

(assert (=> d!865731 (=> res!1282969 e!1959323)))

(assert (=> d!865731 (= res!1282969 ((_ is ElementMatch!9667) (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))))))

(assert (=> d!865731 (= (validRegex!4400 (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))) e!1959323)))

(declare-fun b!3141139 () Bool)

(declare-fun e!1959322 () Bool)

(assert (=> b!3141139 (= e!1959323 e!1959322)))

(declare-fun c!527959 () Bool)

(assert (=> b!3141139 (= c!527959 ((_ is Star!9667) (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))))))

(declare-fun b!3141140 () Bool)

(declare-fun res!1282968 () Bool)

(assert (=> b!3141140 (=> res!1282968 e!1959328)))

(assert (=> b!3141140 (= res!1282968 (not ((_ is Concat!14988) (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345))))))))

(declare-fun e!1959326 () Bool)

(assert (=> b!3141140 (= e!1959326 e!1959328)))

(declare-fun call!225590 () Bool)

(declare-fun c!527958 () Bool)

(declare-fun bm!225585 () Bool)

(assert (=> bm!225585 (= call!225590 (validRegex!4400 (ite c!527958 (regOne!19847 (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))) (regTwo!19846 (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))))))))

(declare-fun b!3141141 () Bool)

(assert (=> b!3141141 (= e!1959322 e!1959326)))

(assert (=> b!3141141 (= c!527958 ((_ is Union!9667) (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))))))

(declare-fun bm!225586 () Bool)

(assert (=> bm!225586 (= call!225592 call!225591)))

(declare-fun b!3141142 () Bool)

(declare-fun res!1282971 () Bool)

(assert (=> b!3141142 (=> (not res!1282971) (not e!1959325))))

(assert (=> b!3141142 (= res!1282971 call!225590)))

(assert (=> b!3141142 (= e!1959326 e!1959325)))

(declare-fun bm!225587 () Bool)

(assert (=> bm!225587 (= call!225591 (validRegex!4400 (ite c!527959 (reg!9996 (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))) (ite c!527958 (regTwo!19847 (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))) (regOne!19846 (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345))))))))))

(declare-fun b!3141143 () Bool)

(assert (=> b!3141143 (= e!1959322 e!1959327)))

(declare-fun res!1282970 () Bool)

(assert (=> b!3141143 (= res!1282970 (not (nullable!3301 (reg!9996 (ite c!527943 (reg!9996 r!17345) (ite c!527942 (regTwo!19847 r!17345) (regOne!19846 r!17345)))))))))

(assert (=> b!3141143 (=> (not res!1282970) (not e!1959327))))

(declare-fun b!3141144 () Bool)

(assert (=> b!3141144 (= e!1959324 call!225590)))

(assert (= (and d!865731 (not res!1282969)) b!3141139))

(assert (= (and b!3141139 c!527959) b!3141143))

(assert (= (and b!3141139 (not c!527959)) b!3141141))

(assert (= (and b!3141143 res!1282970) b!3141136))

(assert (= (and b!3141141 c!527958) b!3141142))

(assert (= (and b!3141141 (not c!527958)) b!3141140))

(assert (= (and b!3141142 res!1282971) b!3141137))

(assert (= (and b!3141140 (not res!1282968)) b!3141138))

(assert (= (and b!3141138 res!1282967) b!3141144))

(assert (= (or b!3141137 b!3141138) bm!225586))

(assert (= (or b!3141142 b!3141144) bm!225585))

(assert (= (or b!3141136 bm!225586) bm!225587))

(declare-fun m!3418007 () Bool)

(assert (=> bm!225585 m!3418007))

(declare-fun m!3418009 () Bool)

(assert (=> bm!225587 m!3418009))

(declare-fun m!3418011 () Bool)

(assert (=> b!3141143 m!3418011))

(assert (=> bm!225571 d!865731))

(declare-fun b!3141145 () Bool)

(declare-fun e!1959334 () Bool)

(declare-fun call!225594 () Bool)

(assert (=> b!3141145 (= e!1959334 call!225594)))

(declare-fun b!3141146 () Bool)

(declare-fun e!1959332 () Bool)

(declare-fun call!225595 () Bool)

(assert (=> b!3141146 (= e!1959332 call!225595)))

(declare-fun b!3141147 () Bool)

(declare-fun e!1959335 () Bool)

(declare-fun e!1959331 () Bool)

(assert (=> b!3141147 (= e!1959335 e!1959331)))

(declare-fun res!1282972 () Bool)

(assert (=> b!3141147 (=> (not res!1282972) (not e!1959331))))

(assert (=> b!3141147 (= res!1282972 call!225595)))

(declare-fun d!865733 () Bool)

(declare-fun res!1282974 () Bool)

(declare-fun e!1959330 () Bool)

(assert (=> d!865733 (=> res!1282974 e!1959330)))

(assert (=> d!865733 (= res!1282974 ((_ is ElementMatch!9667) lt!1061209))))

(assert (=> d!865733 (= (validRegex!4400 lt!1061209) e!1959330)))

(declare-fun b!3141148 () Bool)

(declare-fun e!1959329 () Bool)

(assert (=> b!3141148 (= e!1959330 e!1959329)))

(declare-fun c!527961 () Bool)

(assert (=> b!3141148 (= c!527961 ((_ is Star!9667) lt!1061209))))

(declare-fun b!3141149 () Bool)

(declare-fun res!1282973 () Bool)

(assert (=> b!3141149 (=> res!1282973 e!1959335)))

(assert (=> b!3141149 (= res!1282973 (not ((_ is Concat!14988) lt!1061209)))))

(declare-fun e!1959333 () Bool)

(assert (=> b!3141149 (= e!1959333 e!1959335)))

(declare-fun bm!225588 () Bool)

(declare-fun call!225593 () Bool)

(declare-fun c!527960 () Bool)

(assert (=> bm!225588 (= call!225593 (validRegex!4400 (ite c!527960 (regOne!19847 lt!1061209) (regTwo!19846 lt!1061209))))))

(declare-fun b!3141150 () Bool)

(assert (=> b!3141150 (= e!1959329 e!1959333)))

(assert (=> b!3141150 (= c!527960 ((_ is Union!9667) lt!1061209))))

(declare-fun bm!225589 () Bool)

(assert (=> bm!225589 (= call!225595 call!225594)))

(declare-fun b!3141151 () Bool)

(declare-fun res!1282976 () Bool)

(assert (=> b!3141151 (=> (not res!1282976) (not e!1959332))))

(assert (=> b!3141151 (= res!1282976 call!225593)))

(assert (=> b!3141151 (= e!1959333 e!1959332)))

(declare-fun bm!225590 () Bool)

(assert (=> bm!225590 (= call!225594 (validRegex!4400 (ite c!527961 (reg!9996 lt!1061209) (ite c!527960 (regTwo!19847 lt!1061209) (regOne!19846 lt!1061209)))))))

(declare-fun b!3141152 () Bool)

(assert (=> b!3141152 (= e!1959329 e!1959334)))

(declare-fun res!1282975 () Bool)

(assert (=> b!3141152 (= res!1282975 (not (nullable!3301 (reg!9996 lt!1061209))))))

(assert (=> b!3141152 (=> (not res!1282975) (not e!1959334))))

(declare-fun b!3141153 () Bool)

(assert (=> b!3141153 (= e!1959331 call!225593)))

(assert (= (and d!865733 (not res!1282974)) b!3141148))

(assert (= (and b!3141148 c!527961) b!3141152))

(assert (= (and b!3141148 (not c!527961)) b!3141150))

(assert (= (and b!3141152 res!1282975) b!3141145))

(assert (= (and b!3141150 c!527960) b!3141151))

(assert (= (and b!3141150 (not c!527960)) b!3141149))

(assert (= (and b!3141151 res!1282976) b!3141146))

(assert (= (and b!3141149 (not res!1282973)) b!3141147))

(assert (= (and b!3141147 res!1282972) b!3141153))

(assert (= (or b!3141146 b!3141147) bm!225589))

(assert (= (or b!3141151 b!3141153) bm!225588))

(assert (= (or b!3141145 bm!225589) bm!225590))

(declare-fun m!3418013 () Bool)

(assert (=> bm!225588 m!3418013))

(declare-fun m!3418015 () Bool)

(assert (=> bm!225590 m!3418015))

(declare-fun m!3418017 () Bool)

(assert (=> b!3141152 m!3418017))

(assert (=> d!865721 d!865733))

(declare-fun b!3141154 () Bool)

(declare-fun e!1959341 () Bool)

(declare-fun call!225597 () Bool)

(assert (=> b!3141154 (= e!1959341 call!225597)))

(declare-fun b!3141155 () Bool)

(declare-fun e!1959339 () Bool)

(declare-fun call!225598 () Bool)

(assert (=> b!3141155 (= e!1959339 call!225598)))

(declare-fun b!3141156 () Bool)

(declare-fun e!1959342 () Bool)

(declare-fun e!1959338 () Bool)

(assert (=> b!3141156 (= e!1959342 e!1959338)))

(declare-fun res!1282977 () Bool)

(assert (=> b!3141156 (=> (not res!1282977) (not e!1959338))))

(assert (=> b!3141156 (= res!1282977 call!225598)))

(declare-fun d!865735 () Bool)

(declare-fun res!1282979 () Bool)

(declare-fun e!1959337 () Bool)

(assert (=> d!865735 (=> res!1282979 e!1959337)))

(assert (=> d!865735 (= res!1282979 ((_ is ElementMatch!9667) (reg!9996 r!17345)))))

(assert (=> d!865735 (= (validRegex!4400 (reg!9996 r!17345)) e!1959337)))

(declare-fun b!3141157 () Bool)

(declare-fun e!1959336 () Bool)

(assert (=> b!3141157 (= e!1959337 e!1959336)))

(declare-fun c!527963 () Bool)

(assert (=> b!3141157 (= c!527963 ((_ is Star!9667) (reg!9996 r!17345)))))

(declare-fun b!3141158 () Bool)

(declare-fun res!1282978 () Bool)

(assert (=> b!3141158 (=> res!1282978 e!1959342)))

(assert (=> b!3141158 (= res!1282978 (not ((_ is Concat!14988) (reg!9996 r!17345))))))

(declare-fun e!1959340 () Bool)

(assert (=> b!3141158 (= e!1959340 e!1959342)))

(declare-fun bm!225591 () Bool)

(declare-fun call!225596 () Bool)

(declare-fun c!527962 () Bool)

(assert (=> bm!225591 (= call!225596 (validRegex!4400 (ite c!527962 (regOne!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))))))

(declare-fun b!3141159 () Bool)

(assert (=> b!3141159 (= e!1959336 e!1959340)))

(assert (=> b!3141159 (= c!527962 ((_ is Union!9667) (reg!9996 r!17345)))))

(declare-fun bm!225592 () Bool)

(assert (=> bm!225592 (= call!225598 call!225597)))

(declare-fun b!3141160 () Bool)

(declare-fun res!1282981 () Bool)

(assert (=> b!3141160 (=> (not res!1282981) (not e!1959339))))

(assert (=> b!3141160 (= res!1282981 call!225596)))

(assert (=> b!3141160 (= e!1959340 e!1959339)))

(declare-fun bm!225593 () Bool)

(assert (=> bm!225593 (= call!225597 (validRegex!4400 (ite c!527963 (reg!9996 (reg!9996 r!17345)) (ite c!527962 (regTwo!19847 (reg!9996 r!17345)) (regOne!19846 (reg!9996 r!17345))))))))

(declare-fun b!3141161 () Bool)

(assert (=> b!3141161 (= e!1959336 e!1959341)))

(declare-fun res!1282980 () Bool)

(assert (=> b!3141161 (= res!1282980 (not (nullable!3301 (reg!9996 (reg!9996 r!17345)))))))

(assert (=> b!3141161 (=> (not res!1282980) (not e!1959341))))

(declare-fun b!3141162 () Bool)

(assert (=> b!3141162 (= e!1959338 call!225596)))

(assert (= (and d!865735 (not res!1282979)) b!3141157))

(assert (= (and b!3141157 c!527963) b!3141161))

(assert (= (and b!3141157 (not c!527963)) b!3141159))

(assert (= (and b!3141161 res!1282980) b!3141154))

(assert (= (and b!3141159 c!527962) b!3141160))

(assert (= (and b!3141159 (not c!527962)) b!3141158))

(assert (= (and b!3141160 res!1282981) b!3141155))

(assert (= (and b!3141158 (not res!1282978)) b!3141156))

(assert (= (and b!3141156 res!1282977) b!3141162))

(assert (= (or b!3141155 b!3141156) bm!225592))

(assert (= (or b!3141160 b!3141162) bm!225591))

(assert (= (or b!3141154 bm!225592) bm!225593))

(declare-fun m!3418019 () Bool)

(assert (=> bm!225591 m!3418019))

(declare-fun m!3418021 () Bool)

(assert (=> bm!225593 m!3418021))

(declare-fun m!3418023 () Bool)

(assert (=> b!3141161 m!3418023))

(assert (=> d!865721 d!865735))

(declare-fun d!865737 () Bool)

(assert (=> d!865737 (= (nullable!3301 (reg!9996 lt!1061173)) (nullableFct!926 (reg!9996 lt!1061173)))))

(declare-fun bs!539059 () Bool)

(assert (= bs!539059 d!865737))

(declare-fun m!3418025 () Bool)

(assert (=> bs!539059 m!3418025))

(assert (=> b!3140869 d!865737))

(declare-fun b!3141163 () Bool)

(declare-fun e!1959348 () Bool)

(declare-fun call!225600 () Bool)

(assert (=> b!3141163 (= e!1959348 call!225600)))

(declare-fun b!3141164 () Bool)

(declare-fun e!1959346 () Bool)

(declare-fun call!225601 () Bool)

(assert (=> b!3141164 (= e!1959346 call!225601)))

(declare-fun b!3141165 () Bool)

(declare-fun e!1959349 () Bool)

(declare-fun e!1959345 () Bool)

(assert (=> b!3141165 (= e!1959349 e!1959345)))

(declare-fun res!1282982 () Bool)

(assert (=> b!3141165 (=> (not res!1282982) (not e!1959345))))

(assert (=> b!3141165 (= res!1282982 call!225601)))

(declare-fun d!865739 () Bool)

(declare-fun res!1282984 () Bool)

(declare-fun e!1959344 () Bool)

(assert (=> d!865739 (=> res!1282984 e!1959344)))

(assert (=> d!865739 (= res!1282984 ((_ is ElementMatch!9667) (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))))))

(assert (=> d!865739 (= (validRegex!4400 (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))) e!1959344)))

(declare-fun b!3141166 () Bool)

(declare-fun e!1959343 () Bool)

(assert (=> b!3141166 (= e!1959344 e!1959343)))

(declare-fun c!527965 () Bool)

(assert (=> b!3141166 (= c!527965 ((_ is Star!9667) (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))))))

(declare-fun b!3141167 () Bool)

(declare-fun res!1282983 () Bool)

(assert (=> b!3141167 (=> res!1282983 e!1959349)))

(assert (=> b!3141167 (= res!1282983 (not ((_ is Concat!14988) (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173))))))))

(declare-fun e!1959347 () Bool)

(assert (=> b!3141167 (= e!1959347 e!1959349)))

(declare-fun call!225599 () Bool)

(declare-fun c!527964 () Bool)

(declare-fun bm!225594 () Bool)

(assert (=> bm!225594 (= call!225599 (validRegex!4400 (ite c!527964 (regOne!19847 (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))) (regTwo!19846 (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))))))))

(declare-fun b!3141168 () Bool)

(assert (=> b!3141168 (= e!1959343 e!1959347)))

(assert (=> b!3141168 (= c!527964 ((_ is Union!9667) (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))))))

(declare-fun bm!225595 () Bool)

(assert (=> bm!225595 (= call!225601 call!225600)))

(declare-fun b!3141169 () Bool)

(declare-fun res!1282986 () Bool)

(assert (=> b!3141169 (=> (not res!1282986) (not e!1959346))))

(assert (=> b!3141169 (= res!1282986 call!225599)))

(assert (=> b!3141169 (= e!1959347 e!1959346)))

(declare-fun bm!225596 () Bool)

(assert (=> bm!225596 (= call!225600 (validRegex!4400 (ite c!527965 (reg!9996 (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))) (ite c!527964 (regTwo!19847 (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))) (regOne!19846 (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173))))))))))

(declare-fun b!3141170 () Bool)

(assert (=> b!3141170 (= e!1959343 e!1959348)))

(declare-fun res!1282985 () Bool)

(assert (=> b!3141170 (= res!1282985 (not (nullable!3301 (reg!9996 (ite c!527875 (reg!9996 lt!1061173) (ite c!527874 (regTwo!19847 lt!1061173) (regOne!19846 lt!1061173)))))))))

(assert (=> b!3141170 (=> (not res!1282985) (not e!1959348))))

(declare-fun b!3141171 () Bool)

(assert (=> b!3141171 (= e!1959345 call!225599)))

(assert (= (and d!865739 (not res!1282984)) b!3141166))

(assert (= (and b!3141166 c!527965) b!3141170))

(assert (= (and b!3141166 (not c!527965)) b!3141168))

(assert (= (and b!3141170 res!1282985) b!3141163))

(assert (= (and b!3141168 c!527964) b!3141169))

(assert (= (and b!3141168 (not c!527964)) b!3141167))

(assert (= (and b!3141169 res!1282986) b!3141164))

(assert (= (and b!3141167 (not res!1282983)) b!3141165))

(assert (= (and b!3141165 res!1282982) b!3141171))

(assert (= (or b!3141164 b!3141165) bm!225595))

(assert (= (or b!3141169 b!3141171) bm!225594))

(assert (= (or b!3141163 bm!225595) bm!225596))

(declare-fun m!3418027 () Bool)

(assert (=> bm!225594 m!3418027))

(declare-fun m!3418029 () Bool)

(assert (=> bm!225596 m!3418029))

(declare-fun m!3418031 () Bool)

(assert (=> b!3141170 m!3418031))

(assert (=> bm!225526 d!865739))

(declare-fun d!865741 () Bool)

(assert (=> d!865741 (= (isEmptyExpr!698 (ite c!527938 lt!1061208 lt!1061207)) ((_ is EmptyExpr!9667) (ite c!527938 lt!1061208 lt!1061207)))))

(assert (=> bm!225564 d!865741))

(declare-fun b!3141172 () Bool)

(declare-fun e!1959355 () Bool)

(declare-fun call!225603 () Bool)

(assert (=> b!3141172 (= e!1959355 call!225603)))

(declare-fun b!3141173 () Bool)

(declare-fun e!1959353 () Bool)

(declare-fun call!225604 () Bool)

(assert (=> b!3141173 (= e!1959353 call!225604)))

(declare-fun b!3141174 () Bool)

(declare-fun e!1959356 () Bool)

(declare-fun e!1959352 () Bool)

(assert (=> b!3141174 (= e!1959356 e!1959352)))

(declare-fun res!1282987 () Bool)

(assert (=> b!3141174 (=> (not res!1282987) (not e!1959352))))

(assert (=> b!3141174 (= res!1282987 call!225604)))

(declare-fun d!865743 () Bool)

(declare-fun res!1282989 () Bool)

(declare-fun e!1959351 () Bool)

(assert (=> d!865743 (=> res!1282989 e!1959351)))

(assert (=> d!865743 (= res!1282989 ((_ is ElementMatch!9667) (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))))))

(assert (=> d!865743 (= (validRegex!4400 (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))) e!1959351)))

(declare-fun b!3141175 () Bool)

(declare-fun e!1959350 () Bool)

(assert (=> b!3141175 (= e!1959351 e!1959350)))

(declare-fun c!527967 () Bool)

(assert (=> b!3141175 (= c!527967 ((_ is Star!9667) (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))))))

(declare-fun b!3141176 () Bool)

(declare-fun res!1282988 () Bool)

(assert (=> b!3141176 (=> res!1282988 e!1959356)))

(assert (=> b!3141176 (= res!1282988 (not ((_ is Concat!14988) (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345)))))))

(declare-fun e!1959354 () Bool)

(assert (=> b!3141176 (= e!1959354 e!1959356)))

(declare-fun c!527966 () Bool)

(declare-fun bm!225597 () Bool)

(declare-fun call!225602 () Bool)

(assert (=> bm!225597 (= call!225602 (validRegex!4400 (ite c!527966 (regOne!19847 (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))) (regTwo!19846 (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))))))))

(declare-fun b!3141177 () Bool)

(assert (=> b!3141177 (= e!1959350 e!1959354)))

(assert (=> b!3141177 (= c!527966 ((_ is Union!9667) (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))))))

(declare-fun bm!225598 () Bool)

(assert (=> bm!225598 (= call!225604 call!225603)))

(declare-fun b!3141178 () Bool)

(declare-fun res!1282991 () Bool)

(assert (=> b!3141178 (=> (not res!1282991) (not e!1959353))))

(assert (=> b!3141178 (= res!1282991 call!225602)))

(assert (=> b!3141178 (= e!1959354 e!1959353)))

(declare-fun bm!225599 () Bool)

(assert (=> bm!225599 (= call!225603 (validRegex!4400 (ite c!527967 (reg!9996 (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))) (ite c!527966 (regTwo!19847 (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))) (regOne!19846 (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345)))))))))

(declare-fun b!3141179 () Bool)

(assert (=> b!3141179 (= e!1959350 e!1959355)))

(declare-fun res!1282990 () Bool)

(assert (=> b!3141179 (= res!1282990 (not (nullable!3301 (reg!9996 (ite c!527942 (regOne!19847 r!17345) (regTwo!19846 r!17345))))))))

(assert (=> b!3141179 (=> (not res!1282990) (not e!1959355))))

(declare-fun b!3141180 () Bool)

(assert (=> b!3141180 (= e!1959352 call!225602)))

(assert (= (and d!865743 (not res!1282989)) b!3141175))

(assert (= (and b!3141175 c!527967) b!3141179))

(assert (= (and b!3141175 (not c!527967)) b!3141177))

(assert (= (and b!3141179 res!1282990) b!3141172))

(assert (= (and b!3141177 c!527966) b!3141178))

(assert (= (and b!3141177 (not c!527966)) b!3141176))

(assert (= (and b!3141178 res!1282991) b!3141173))

(assert (= (and b!3141176 (not res!1282988)) b!3141174))

(assert (= (and b!3141174 res!1282987) b!3141180))

(assert (= (or b!3141173 b!3141174) bm!225598))

(assert (= (or b!3141178 b!3141180) bm!225597))

(assert (= (or b!3141172 bm!225598) bm!225599))

(declare-fun m!3418033 () Bool)

(assert (=> bm!225597 m!3418033))

(declare-fun m!3418035 () Bool)

(assert (=> bm!225599 m!3418035))

(declare-fun m!3418037 () Bool)

(assert (=> b!3141179 m!3418037))

(assert (=> bm!225569 d!865743))

(declare-fun d!865745 () Bool)

(assert (=> d!865745 (= (nullable!3301 lt!1061209) (nullableFct!926 lt!1061209))))

(declare-fun bs!539060 () Bool)

(assert (= bs!539060 d!865745))

(declare-fun m!3418039 () Bool)

(assert (=> bs!539060 m!3418039))

(assert (=> b!3141014 d!865745))

(assert (=> b!3141014 d!865727))

(declare-fun d!865747 () Bool)

(assert (=> d!865747 (= (isEmptyLang!704 (ite c!527933 lt!1061205 lt!1061206)) ((_ is EmptyLang!9667) (ite c!527933 lt!1061205 lt!1061206)))))

(assert (=> bm!225563 d!865747))

(declare-fun b!3141181 () Bool)

(declare-fun e!1959357 () Bool)

(declare-fun call!225606 () Bool)

(assert (=> b!3141181 (= e!1959357 call!225606)))

(declare-fun b!3141182 () Bool)

(declare-fun e!1959361 () Bool)

(declare-fun e!1959360 () Bool)

(assert (=> b!3141182 (= e!1959361 e!1959360)))

(declare-fun res!1282994 () Bool)

(assert (=> b!3141182 (= res!1282994 call!225606)))

(assert (=> b!3141182 (=> res!1282994 e!1959360)))

(declare-fun b!3141183 () Bool)

(declare-fun call!225605 () Bool)

(assert (=> b!3141183 (= e!1959360 call!225605)))

(declare-fun b!3141185 () Bool)

(declare-fun e!1959359 () Bool)

(assert (=> b!3141185 (= e!1959359 e!1959361)))

(declare-fun c!527968 () Bool)

(assert (=> b!3141185 (= c!527968 ((_ is Union!9667) r!17345))))

(declare-fun b!3141186 () Bool)

(declare-fun e!1959362 () Bool)

(declare-fun e!1959358 () Bool)

(assert (=> b!3141186 (= e!1959362 e!1959358)))

(declare-fun res!1282993 () Bool)

(assert (=> b!3141186 (=> (not res!1282993) (not e!1959358))))

(assert (=> b!3141186 (= res!1282993 (and (not ((_ is EmptyLang!9667) r!17345)) (not ((_ is ElementMatch!9667) r!17345))))))

(declare-fun bm!225600 () Bool)

(assert (=> bm!225600 (= call!225606 (nullable!3301 (ite c!527968 (regOne!19847 r!17345) (regTwo!19846 r!17345))))))

(declare-fun d!865749 () Bool)

(declare-fun res!1282996 () Bool)

(assert (=> d!865749 (=> res!1282996 e!1959362)))

(assert (=> d!865749 (= res!1282996 ((_ is EmptyExpr!9667) r!17345))))

(assert (=> d!865749 (= (nullableFct!926 r!17345) e!1959362)))

(declare-fun b!3141184 () Bool)

(assert (=> b!3141184 (= e!1959361 e!1959357)))

(declare-fun res!1282995 () Bool)

(assert (=> b!3141184 (= res!1282995 call!225605)))

(assert (=> b!3141184 (=> (not res!1282995) (not e!1959357))))

(declare-fun b!3141187 () Bool)

(assert (=> b!3141187 (= e!1959358 e!1959359)))

(declare-fun res!1282992 () Bool)

(assert (=> b!3141187 (=> res!1282992 e!1959359)))

(assert (=> b!3141187 (= res!1282992 ((_ is Star!9667) r!17345))))

(declare-fun bm!225601 () Bool)

(assert (=> bm!225601 (= call!225605 (nullable!3301 (ite c!527968 (regTwo!19847 r!17345) (regOne!19846 r!17345))))))

(assert (= (and d!865749 (not res!1282996)) b!3141186))

(assert (= (and b!3141186 res!1282993) b!3141187))

(assert (= (and b!3141187 (not res!1282992)) b!3141185))

(assert (= (and b!3141185 c!527968) b!3141182))

(assert (= (and b!3141185 (not c!527968)) b!3141184))

(assert (= (and b!3141182 (not res!1282994)) b!3141183))

(assert (= (and b!3141184 res!1282995) b!3141181))

(assert (= (or b!3141182 b!3141181) bm!225600))

(assert (= (or b!3141183 b!3141184) bm!225601))

(declare-fun m!3418041 () Bool)

(assert (=> bm!225600 m!3418041))

(declare-fun m!3418043 () Bool)

(assert (=> bm!225601 m!3418043))

(assert (=> d!865703 d!865749))

(declare-fun d!865751 () Bool)

(assert (=> d!865751 (= (isEmptyExpr!698 lt!1061206) ((_ is EmptyExpr!9667) lt!1061206))))

(assert (=> b!3141011 d!865751))

(declare-fun d!865753 () Bool)

(assert (=> d!865753 (= (isEmptyLang!704 (ite c!527938 lt!1061208 (ite c!527933 lt!1061210 lt!1061207))) ((_ is EmptyLang!9667) (ite c!527938 lt!1061208 (ite c!527933 lt!1061210 lt!1061207))))))

(assert (=> bm!225568 d!865753))

(declare-fun b!3141188 () Bool)

(declare-fun e!1959368 () Bool)

(declare-fun call!225608 () Bool)

(assert (=> b!3141188 (= e!1959368 call!225608)))

(declare-fun b!3141189 () Bool)

(declare-fun e!1959366 () Bool)

(declare-fun call!225609 () Bool)

(assert (=> b!3141189 (= e!1959366 call!225609)))

(declare-fun b!3141190 () Bool)

(declare-fun e!1959369 () Bool)

(declare-fun e!1959365 () Bool)

(assert (=> b!3141190 (= e!1959369 e!1959365)))

(declare-fun res!1282997 () Bool)

(assert (=> b!3141190 (=> (not res!1282997) (not e!1959365))))

(assert (=> b!3141190 (= res!1282997 call!225609)))

(declare-fun d!865755 () Bool)

(declare-fun res!1282999 () Bool)

(declare-fun e!1959364 () Bool)

(assert (=> d!865755 (=> res!1282999 e!1959364)))

(assert (=> d!865755 (= res!1282999 ((_ is ElementMatch!9667) (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))))))

(assert (=> d!865755 (= (validRegex!4400 (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))) e!1959364)))

(declare-fun b!3141191 () Bool)

(declare-fun e!1959363 () Bool)

(assert (=> b!3141191 (= e!1959364 e!1959363)))

(declare-fun c!527970 () Bool)

(assert (=> b!3141191 (= c!527970 ((_ is Star!9667) (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))))))

(declare-fun b!3141192 () Bool)

(declare-fun res!1282998 () Bool)

(assert (=> b!3141192 (=> res!1282998 e!1959369)))

(assert (=> b!3141192 (= res!1282998 (not ((_ is Concat!14988) (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173)))))))

(declare-fun e!1959367 () Bool)

(assert (=> b!3141192 (= e!1959367 e!1959369)))

(declare-fun c!527969 () Bool)

(declare-fun call!225607 () Bool)

(declare-fun bm!225602 () Bool)

(assert (=> bm!225602 (= call!225607 (validRegex!4400 (ite c!527969 (regOne!19847 (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))) (regTwo!19846 (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))))))))

(declare-fun b!3141193 () Bool)

(assert (=> b!3141193 (= e!1959363 e!1959367)))

(assert (=> b!3141193 (= c!527969 ((_ is Union!9667) (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))))))

(declare-fun bm!225603 () Bool)

(assert (=> bm!225603 (= call!225609 call!225608)))

(declare-fun b!3141194 () Bool)

(declare-fun res!1283001 () Bool)

(assert (=> b!3141194 (=> (not res!1283001) (not e!1959366))))

(assert (=> b!3141194 (= res!1283001 call!225607)))

(assert (=> b!3141194 (= e!1959367 e!1959366)))

(declare-fun bm!225604 () Bool)

(assert (=> bm!225604 (= call!225608 (validRegex!4400 (ite c!527970 (reg!9996 (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))) (ite c!527969 (regTwo!19847 (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))) (regOne!19846 (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173)))))))))

(declare-fun b!3141195 () Bool)

(assert (=> b!3141195 (= e!1959363 e!1959368)))

(declare-fun res!1283000 () Bool)

(assert (=> b!3141195 (= res!1283000 (not (nullable!3301 (reg!9996 (ite c!527874 (regOne!19847 lt!1061173) (regTwo!19846 lt!1061173))))))))

(assert (=> b!3141195 (=> (not res!1283000) (not e!1959368))))

(declare-fun b!3141196 () Bool)

(assert (=> b!3141196 (= e!1959365 call!225607)))

(assert (= (and d!865755 (not res!1282999)) b!3141191))

(assert (= (and b!3141191 c!527970) b!3141195))

(assert (= (and b!3141191 (not c!527970)) b!3141193))

(assert (= (and b!3141195 res!1283000) b!3141188))

(assert (= (and b!3141193 c!527969) b!3141194))

(assert (= (and b!3141193 (not c!527969)) b!3141192))

(assert (= (and b!3141194 res!1283001) b!3141189))

(assert (= (and b!3141192 (not res!1282998)) b!3141190))

(assert (= (and b!3141190 res!1282997) b!3141196))

(assert (= (or b!3141189 b!3141190) bm!225603))

(assert (= (or b!3141194 b!3141196) bm!225602))

(assert (= (or b!3141188 bm!225603) bm!225604))

(declare-fun m!3418045 () Bool)

(assert (=> bm!225602 m!3418045))

(declare-fun m!3418047 () Bool)

(assert (=> bm!225604 m!3418047))

(declare-fun m!3418049 () Bool)

(assert (=> b!3141195 m!3418049))

(assert (=> bm!225524 d!865755))

(declare-fun b!3141197 () Bool)

(declare-fun e!1959379 () Regex!9667)

(declare-fun lt!1061218 () Regex!9667)

(assert (=> b!3141197 (= e!1959379 lt!1061218)))

(declare-fun b!3141198 () Bool)

(declare-fun e!1959381 () Regex!9667)

(declare-fun e!1959377 () Regex!9667)

(assert (=> b!3141198 (= e!1959381 e!1959377)))

(declare-fun lt!1061217 () Regex!9667)

(declare-fun call!225614 () Regex!9667)

(assert (=> b!3141198 (= lt!1061217 call!225614)))

(declare-fun lt!1061222 () Regex!9667)

(declare-fun call!225610 () Regex!9667)

(assert (=> b!3141198 (= lt!1061222 call!225610)))

(declare-fun c!527971 () Bool)

(declare-fun call!225613 () Bool)

(assert (=> b!3141198 (= c!527971 call!225613)))

(declare-fun b!3141199 () Bool)

(declare-fun c!527980 () Bool)

(declare-fun call!225611 () Bool)

(assert (=> b!3141199 (= c!527980 call!225611)))

(declare-fun e!1959382 () Regex!9667)

(assert (=> b!3141199 (= e!1959382 e!1959379)))

(declare-fun d!865757 () Bool)

(declare-fun e!1959370 () Bool)

(assert (=> d!865757 e!1959370))

(declare-fun res!1283004 () Bool)

(assert (=> d!865757 (=> (not res!1283004) (not e!1959370))))

(declare-fun lt!1061221 () Regex!9667)

(assert (=> d!865757 (= res!1283004 (validRegex!4400 lt!1061221))))

(declare-fun e!1959374 () Regex!9667)

(assert (=> d!865757 (= lt!1061221 e!1959374)))

(declare-fun c!527977 () Bool)

(assert (=> d!865757 (= c!527977 ((_ is EmptyLang!9667) (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))))))

(assert (=> d!865757 (validRegex!4400 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345))))))

(assert (=> d!865757 (= (simplify!608 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))) lt!1061221)))

(declare-fun b!3141200 () Bool)

(assert (=> b!3141200 (= e!1959377 lt!1061222)))

(declare-fun b!3141201 () Bool)

(declare-fun e!1959376 () Regex!9667)

(declare-fun lt!1061219 () Regex!9667)

(assert (=> b!3141201 (= e!1959376 (Concat!14988 lt!1061219 lt!1061218))))

(declare-fun b!3141202 () Bool)

(declare-fun e!1959375 () Regex!9667)

(assert (=> b!3141202 (= e!1959375 lt!1061217)))

(declare-fun b!3141203 () Bool)

(assert (=> b!3141203 (= e!1959376 lt!1061219)))

(declare-fun b!3141204 () Bool)

(declare-fun e!1959380 () Regex!9667)

(declare-fun e!1959372 () Regex!9667)

(assert (=> b!3141204 (= e!1959380 e!1959372)))

(declare-fun c!527978 () Bool)

(assert (=> b!3141204 (= c!527978 ((_ is Star!9667) (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))))))

(declare-fun b!3141205 () Bool)

(declare-fun e!1959373 () Regex!9667)

(assert (=> b!3141205 (= e!1959373 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345))))))

(declare-fun c!527973 () Bool)

(declare-fun bm!225605 () Bool)

(assert (=> bm!225605 (= call!225610 (simplify!608 (ite c!527973 (regTwo!19847 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))) (regTwo!19846 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))))))))

(declare-fun b!3141206 () Bool)

(assert (=> b!3141206 (= e!1959380 EmptyExpr!9667)))

(declare-fun bm!225606 () Bool)

(assert (=> bm!225606 (= call!225613 (isEmptyLang!704 (ite c!527973 lt!1061217 lt!1061218)))))

(declare-fun b!3141207 () Bool)

(declare-fun c!527981 () Bool)

(declare-fun e!1959383 () Bool)

(assert (=> b!3141207 (= c!527981 e!1959383)))

(declare-fun res!1283003 () Bool)

(assert (=> b!3141207 (=> res!1283003 e!1959383)))

(declare-fun call!225616 () Bool)

(assert (=> b!3141207 (= res!1283003 call!225616)))

(declare-fun lt!1061220 () Regex!9667)

(declare-fun call!225615 () Regex!9667)

(assert (=> b!3141207 (= lt!1061220 call!225615)))

(declare-fun e!1959371 () Regex!9667)

(assert (=> b!3141207 (= e!1959372 e!1959371)))

(declare-fun bm!225607 () Bool)

(assert (=> bm!225607 (= call!225611 (isEmptyExpr!698 (ite c!527978 lt!1061220 lt!1061219)))))

(declare-fun bm!225608 () Bool)

(declare-fun call!225612 () Bool)

(assert (=> bm!225608 (= call!225612 call!225616)))

(declare-fun b!3141208 () Bool)

(declare-fun c!527976 () Bool)

(assert (=> b!3141208 (= c!527976 call!225612)))

(assert (=> b!3141208 (= e!1959377 e!1959375)))

(declare-fun b!3141209 () Bool)

(assert (=> b!3141209 (= c!527973 ((_ is Union!9667) (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))))))

(assert (=> b!3141209 (= e!1959372 e!1959381)))

(declare-fun bm!225609 () Bool)

(assert (=> bm!225609 (= call!225615 (simplify!608 (ite c!527978 (reg!9996 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))) (ite c!527973 (regOne!19847 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))) (regOne!19846 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345))))))))))

(declare-fun b!3141210 () Bool)

(assert (=> b!3141210 (= e!1959374 EmptyLang!9667)))

(declare-fun b!3141211 () Bool)

(assert (=> b!3141211 (= e!1959375 (Union!9667 lt!1061217 lt!1061222))))

(declare-fun b!3141212 () Bool)

(assert (=> b!3141212 (= e!1959379 e!1959376)))

(declare-fun c!527975 () Bool)

(assert (=> b!3141212 (= c!527975 (isEmptyExpr!698 lt!1061218))))

(declare-fun b!3141213 () Bool)

(assert (=> b!3141213 (= e!1959381 e!1959382)))

(assert (=> b!3141213 (= lt!1061219 call!225614)))

(assert (=> b!3141213 (= lt!1061218 call!225610)))

(declare-fun res!1283002 () Bool)

(assert (=> b!3141213 (= res!1283002 call!225612)))

(declare-fun e!1959378 () Bool)

(assert (=> b!3141213 (=> res!1283002 e!1959378)))

(declare-fun c!527974 () Bool)

(assert (=> b!3141213 (= c!527974 e!1959378)))

(declare-fun b!3141214 () Bool)

(assert (=> b!3141214 (= e!1959371 EmptyExpr!9667)))

(declare-fun b!3141215 () Bool)

(assert (=> b!3141215 (= e!1959370 (= (nullable!3301 lt!1061221) (nullable!3301 (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345))))))))

(declare-fun b!3141216 () Bool)

(assert (=> b!3141216 (= e!1959371 (Star!9667 lt!1061220))))

(declare-fun b!3141217 () Bool)

(assert (=> b!3141217 (= e!1959382 EmptyLang!9667)))

(declare-fun b!3141218 () Bool)

(assert (=> b!3141218 (= e!1959378 call!225613)))

(declare-fun b!3141219 () Bool)

(assert (=> b!3141219 (= e!1959374 e!1959373)))

(declare-fun c!527979 () Bool)

(assert (=> b!3141219 (= c!527979 ((_ is ElementMatch!9667) (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))))))

(declare-fun bm!225610 () Bool)

(assert (=> bm!225610 (= call!225614 call!225615)))

(declare-fun b!3141220 () Bool)

(declare-fun c!527972 () Bool)

(assert (=> b!3141220 (= c!527972 ((_ is EmptyExpr!9667) (ite c!527933 (regTwo!19847 (reg!9996 r!17345)) (regTwo!19846 (reg!9996 r!17345)))))))

(assert (=> b!3141220 (= e!1959373 e!1959380)))

(declare-fun b!3141221 () Bool)

(assert (=> b!3141221 (= e!1959383 call!225611)))

(declare-fun bm!225611 () Bool)

(assert (=> bm!225611 (= call!225616 (isEmptyLang!704 (ite c!527978 lt!1061220 (ite c!527973 lt!1061222 lt!1061219))))))

(assert (= (and d!865757 c!527977) b!3141210))

(assert (= (and d!865757 (not c!527977)) b!3141219))

(assert (= (and b!3141219 c!527979) b!3141205))

(assert (= (and b!3141219 (not c!527979)) b!3141220))

(assert (= (and b!3141220 c!527972) b!3141206))

(assert (= (and b!3141220 (not c!527972)) b!3141204))

(assert (= (and b!3141204 c!527978) b!3141207))

(assert (= (and b!3141204 (not c!527978)) b!3141209))

(assert (= (and b!3141207 (not res!1283003)) b!3141221))

(assert (= (and b!3141207 c!527981) b!3141214))

(assert (= (and b!3141207 (not c!527981)) b!3141216))

(assert (= (and b!3141209 c!527973) b!3141198))

(assert (= (and b!3141209 (not c!527973)) b!3141213))

(assert (= (and b!3141198 c!527971) b!3141200))

(assert (= (and b!3141198 (not c!527971)) b!3141208))

(assert (= (and b!3141208 c!527976) b!3141202))

(assert (= (and b!3141208 (not c!527976)) b!3141211))

(assert (= (and b!3141213 (not res!1283002)) b!3141218))

(assert (= (and b!3141213 c!527974) b!3141217))

(assert (= (and b!3141213 (not c!527974)) b!3141199))

(assert (= (and b!3141199 c!527980) b!3141197))

(assert (= (and b!3141199 (not c!527980)) b!3141212))

(assert (= (and b!3141212 c!527975) b!3141203))

(assert (= (and b!3141212 (not c!527975)) b!3141201))

(assert (= (or b!3141208 b!3141213) bm!225608))

(assert (= (or b!3141198 b!3141218) bm!225606))

(assert (= (or b!3141198 b!3141213) bm!225610))

(assert (= (or b!3141198 b!3141213) bm!225605))

(assert (= (or b!3141221 b!3141199) bm!225607))

(assert (= (or b!3141207 bm!225608) bm!225611))

(assert (= (or b!3141207 bm!225610) bm!225609))

(assert (= (and d!865757 res!1283004) b!3141215))

(declare-fun m!3418051 () Bool)

(assert (=> b!3141212 m!3418051))

(declare-fun m!3418053 () Bool)

(assert (=> d!865757 m!3418053))

(declare-fun m!3418055 () Bool)

(assert (=> d!865757 m!3418055))

(declare-fun m!3418057 () Bool)

(assert (=> b!3141215 m!3418057))

(declare-fun m!3418059 () Bool)

(assert (=> b!3141215 m!3418059))

(declare-fun m!3418061 () Bool)

(assert (=> bm!225607 m!3418061))

(declare-fun m!3418063 () Bool)

(assert (=> bm!225609 m!3418063))

(declare-fun m!3418065 () Bool)

(assert (=> bm!225606 m!3418065))

(declare-fun m!3418067 () Bool)

(assert (=> bm!225611 m!3418067))

(declare-fun m!3418069 () Bool)

(assert (=> bm!225605 m!3418069))

(assert (=> bm!225562 d!865757))

(declare-fun b!3141223 () Bool)

(declare-fun e!1959384 () Bool)

(declare-fun tp!983850 () Bool)

(declare-fun tp!983846 () Bool)

(assert (=> b!3141223 (= e!1959384 (and tp!983850 tp!983846))))

(assert (=> b!3141069 (= tp!983817 e!1959384)))

(declare-fun b!3141222 () Bool)

(assert (=> b!3141222 (= e!1959384 tp_is_empty!16897)))

(declare-fun b!3141224 () Bool)

(declare-fun tp!983848 () Bool)

(assert (=> b!3141224 (= e!1959384 tp!983848)))

(declare-fun b!3141225 () Bool)

(declare-fun tp!983847 () Bool)

(declare-fun tp!983849 () Bool)

(assert (=> b!3141225 (= e!1959384 (and tp!983847 tp!983849))))

(assert (= (and b!3141069 ((_ is ElementMatch!9667) (regOne!19847 (reg!9996 r!17345)))) b!3141222))

(assert (= (and b!3141069 ((_ is Concat!14988) (regOne!19847 (reg!9996 r!17345)))) b!3141223))

(assert (= (and b!3141069 ((_ is Star!9667) (regOne!19847 (reg!9996 r!17345)))) b!3141224))

(assert (= (and b!3141069 ((_ is Union!9667) (regOne!19847 (reg!9996 r!17345)))) b!3141225))

(declare-fun b!3141227 () Bool)

(declare-fun e!1959385 () Bool)

(declare-fun tp!983855 () Bool)

(declare-fun tp!983851 () Bool)

(assert (=> b!3141227 (= e!1959385 (and tp!983855 tp!983851))))

(assert (=> b!3141069 (= tp!983819 e!1959385)))

(declare-fun b!3141226 () Bool)

(assert (=> b!3141226 (= e!1959385 tp_is_empty!16897)))

(declare-fun b!3141228 () Bool)

(declare-fun tp!983853 () Bool)

(assert (=> b!3141228 (= e!1959385 tp!983853)))

(declare-fun b!3141229 () Bool)

(declare-fun tp!983852 () Bool)

(declare-fun tp!983854 () Bool)

(assert (=> b!3141229 (= e!1959385 (and tp!983852 tp!983854))))

(assert (= (and b!3141069 ((_ is ElementMatch!9667) (regTwo!19847 (reg!9996 r!17345)))) b!3141226))

(assert (= (and b!3141069 ((_ is Concat!14988) (regTwo!19847 (reg!9996 r!17345)))) b!3141227))

(assert (= (and b!3141069 ((_ is Star!9667) (regTwo!19847 (reg!9996 r!17345)))) b!3141228))

(assert (= (and b!3141069 ((_ is Union!9667) (regTwo!19847 (reg!9996 r!17345)))) b!3141229))

(declare-fun b!3141231 () Bool)

(declare-fun e!1959386 () Bool)

(declare-fun tp!983860 () Bool)

(declare-fun tp!983856 () Bool)

(assert (=> b!3141231 (= e!1959386 (and tp!983860 tp!983856))))

(assert (=> b!3141077 (= tp!983827 e!1959386)))

(declare-fun b!3141230 () Bool)

(assert (=> b!3141230 (= e!1959386 tp_is_empty!16897)))

(declare-fun b!3141232 () Bool)

(declare-fun tp!983858 () Bool)

(assert (=> b!3141232 (= e!1959386 tp!983858)))

(declare-fun b!3141233 () Bool)

(declare-fun tp!983857 () Bool)

(declare-fun tp!983859 () Bool)

(assert (=> b!3141233 (= e!1959386 (and tp!983857 tp!983859))))

(assert (= (and b!3141077 ((_ is ElementMatch!9667) (regOne!19847 (regOne!19847 r!17345)))) b!3141230))

(assert (= (and b!3141077 ((_ is Concat!14988) (regOne!19847 (regOne!19847 r!17345)))) b!3141231))

(assert (= (and b!3141077 ((_ is Star!9667) (regOne!19847 (regOne!19847 r!17345)))) b!3141232))

(assert (= (and b!3141077 ((_ is Union!9667) (regOne!19847 (regOne!19847 r!17345)))) b!3141233))

(declare-fun b!3141235 () Bool)

(declare-fun e!1959387 () Bool)

(declare-fun tp!983865 () Bool)

(declare-fun tp!983861 () Bool)

(assert (=> b!3141235 (= e!1959387 (and tp!983865 tp!983861))))

(assert (=> b!3141077 (= tp!983829 e!1959387)))

(declare-fun b!3141234 () Bool)

(assert (=> b!3141234 (= e!1959387 tp_is_empty!16897)))

(declare-fun b!3141236 () Bool)

(declare-fun tp!983863 () Bool)

(assert (=> b!3141236 (= e!1959387 tp!983863)))

(declare-fun b!3141237 () Bool)

(declare-fun tp!983862 () Bool)

(declare-fun tp!983864 () Bool)

(assert (=> b!3141237 (= e!1959387 (and tp!983862 tp!983864))))

(assert (= (and b!3141077 ((_ is ElementMatch!9667) (regTwo!19847 (regOne!19847 r!17345)))) b!3141234))

(assert (= (and b!3141077 ((_ is Concat!14988) (regTwo!19847 (regOne!19847 r!17345)))) b!3141235))

(assert (= (and b!3141077 ((_ is Star!9667) (regTwo!19847 (regOne!19847 r!17345)))) b!3141236))

(assert (= (and b!3141077 ((_ is Union!9667) (regTwo!19847 (regOne!19847 r!17345)))) b!3141237))

(declare-fun b!3141239 () Bool)

(declare-fun e!1959388 () Bool)

(declare-fun tp!983870 () Bool)

(declare-fun tp!983866 () Bool)

(assert (=> b!3141239 (= e!1959388 (and tp!983870 tp!983866))))

(assert (=> b!3141068 (= tp!983818 e!1959388)))

(declare-fun b!3141238 () Bool)

(assert (=> b!3141238 (= e!1959388 tp_is_empty!16897)))

(declare-fun b!3141240 () Bool)

(declare-fun tp!983868 () Bool)

(assert (=> b!3141240 (= e!1959388 tp!983868)))

(declare-fun b!3141241 () Bool)

(declare-fun tp!983867 () Bool)

(declare-fun tp!983869 () Bool)

(assert (=> b!3141241 (= e!1959388 (and tp!983867 tp!983869))))

(assert (= (and b!3141068 ((_ is ElementMatch!9667) (reg!9996 (reg!9996 r!17345)))) b!3141238))

(assert (= (and b!3141068 ((_ is Concat!14988) (reg!9996 (reg!9996 r!17345)))) b!3141239))

(assert (= (and b!3141068 ((_ is Star!9667) (reg!9996 (reg!9996 r!17345)))) b!3141240))

(assert (= (and b!3141068 ((_ is Union!9667) (reg!9996 (reg!9996 r!17345)))) b!3141241))

(declare-fun b!3141243 () Bool)

(declare-fun e!1959389 () Bool)

(declare-fun tp!983875 () Bool)

(declare-fun tp!983871 () Bool)

(assert (=> b!3141243 (= e!1959389 (and tp!983875 tp!983871))))

(assert (=> b!3141067 (= tp!983820 e!1959389)))

(declare-fun b!3141242 () Bool)

(assert (=> b!3141242 (= e!1959389 tp_is_empty!16897)))

(declare-fun b!3141244 () Bool)

(declare-fun tp!983873 () Bool)

(assert (=> b!3141244 (= e!1959389 tp!983873)))

(declare-fun b!3141245 () Bool)

(declare-fun tp!983872 () Bool)

(declare-fun tp!983874 () Bool)

(assert (=> b!3141245 (= e!1959389 (and tp!983872 tp!983874))))

(assert (= (and b!3141067 ((_ is ElementMatch!9667) (regOne!19846 (reg!9996 r!17345)))) b!3141242))

(assert (= (and b!3141067 ((_ is Concat!14988) (regOne!19846 (reg!9996 r!17345)))) b!3141243))

(assert (= (and b!3141067 ((_ is Star!9667) (regOne!19846 (reg!9996 r!17345)))) b!3141244))

(assert (= (and b!3141067 ((_ is Union!9667) (regOne!19846 (reg!9996 r!17345)))) b!3141245))

(declare-fun b!3141247 () Bool)

(declare-fun e!1959390 () Bool)

(declare-fun tp!983880 () Bool)

(declare-fun tp!983876 () Bool)

(assert (=> b!3141247 (= e!1959390 (and tp!983880 tp!983876))))

(assert (=> b!3141067 (= tp!983816 e!1959390)))

(declare-fun b!3141246 () Bool)

(assert (=> b!3141246 (= e!1959390 tp_is_empty!16897)))

(declare-fun b!3141248 () Bool)

(declare-fun tp!983878 () Bool)

(assert (=> b!3141248 (= e!1959390 tp!983878)))

(declare-fun b!3141249 () Bool)

(declare-fun tp!983877 () Bool)

(declare-fun tp!983879 () Bool)

(assert (=> b!3141249 (= e!1959390 (and tp!983877 tp!983879))))

(assert (= (and b!3141067 ((_ is ElementMatch!9667) (regTwo!19846 (reg!9996 r!17345)))) b!3141246))

(assert (= (and b!3141067 ((_ is Concat!14988) (regTwo!19846 (reg!9996 r!17345)))) b!3141247))

(assert (= (and b!3141067 ((_ is Star!9667) (regTwo!19846 (reg!9996 r!17345)))) b!3141248))

(assert (= (and b!3141067 ((_ is Union!9667) (regTwo!19846 (reg!9996 r!17345)))) b!3141249))

(declare-fun b!3141251 () Bool)

(declare-fun e!1959391 () Bool)

(declare-fun tp!983885 () Bool)

(declare-fun tp!983881 () Bool)

(assert (=> b!3141251 (= e!1959391 (and tp!983885 tp!983881))))

(assert (=> b!3141081 (= tp!983832 e!1959391)))

(declare-fun b!3141250 () Bool)

(assert (=> b!3141250 (= e!1959391 tp_is_empty!16897)))

(declare-fun b!3141252 () Bool)

(declare-fun tp!983883 () Bool)

(assert (=> b!3141252 (= e!1959391 tp!983883)))

(declare-fun b!3141253 () Bool)

(declare-fun tp!983882 () Bool)

(declare-fun tp!983884 () Bool)

(assert (=> b!3141253 (= e!1959391 (and tp!983882 tp!983884))))

(assert (= (and b!3141081 ((_ is ElementMatch!9667) (regOne!19847 (regTwo!19847 r!17345)))) b!3141250))

(assert (= (and b!3141081 ((_ is Concat!14988) (regOne!19847 (regTwo!19847 r!17345)))) b!3141251))

(assert (= (and b!3141081 ((_ is Star!9667) (regOne!19847 (regTwo!19847 r!17345)))) b!3141252))

(assert (= (and b!3141081 ((_ is Union!9667) (regOne!19847 (regTwo!19847 r!17345)))) b!3141253))

(declare-fun b!3141255 () Bool)

(declare-fun e!1959392 () Bool)

(declare-fun tp!983890 () Bool)

(declare-fun tp!983886 () Bool)

(assert (=> b!3141255 (= e!1959392 (and tp!983890 tp!983886))))

(assert (=> b!3141081 (= tp!983834 e!1959392)))

(declare-fun b!3141254 () Bool)

(assert (=> b!3141254 (= e!1959392 tp_is_empty!16897)))

(declare-fun b!3141256 () Bool)

(declare-fun tp!983888 () Bool)

(assert (=> b!3141256 (= e!1959392 tp!983888)))

(declare-fun b!3141257 () Bool)

(declare-fun tp!983887 () Bool)

(declare-fun tp!983889 () Bool)

(assert (=> b!3141257 (= e!1959392 (and tp!983887 tp!983889))))

(assert (= (and b!3141081 ((_ is ElementMatch!9667) (regTwo!19847 (regTwo!19847 r!17345)))) b!3141254))

(assert (= (and b!3141081 ((_ is Concat!14988) (regTwo!19847 (regTwo!19847 r!17345)))) b!3141255))

(assert (= (and b!3141081 ((_ is Star!9667) (regTwo!19847 (regTwo!19847 r!17345)))) b!3141256))

(assert (= (and b!3141081 ((_ is Union!9667) (regTwo!19847 (regTwo!19847 r!17345)))) b!3141257))

(declare-fun b!3141259 () Bool)

(declare-fun e!1959393 () Bool)

(declare-fun tp!983895 () Bool)

(declare-fun tp!983891 () Bool)

(assert (=> b!3141259 (= e!1959393 (and tp!983895 tp!983891))))

(assert (=> b!3141085 (= tp!983837 e!1959393)))

(declare-fun b!3141258 () Bool)

(assert (=> b!3141258 (= e!1959393 tp_is_empty!16897)))

(declare-fun b!3141260 () Bool)

(declare-fun tp!983893 () Bool)

(assert (=> b!3141260 (= e!1959393 tp!983893)))

(declare-fun b!3141261 () Bool)

(declare-fun tp!983892 () Bool)

(declare-fun tp!983894 () Bool)

(assert (=> b!3141261 (= e!1959393 (and tp!983892 tp!983894))))

(assert (= (and b!3141085 ((_ is ElementMatch!9667) (regOne!19847 (regOne!19846 r!17345)))) b!3141258))

(assert (= (and b!3141085 ((_ is Concat!14988) (regOne!19847 (regOne!19846 r!17345)))) b!3141259))

(assert (= (and b!3141085 ((_ is Star!9667) (regOne!19847 (regOne!19846 r!17345)))) b!3141260))

(assert (= (and b!3141085 ((_ is Union!9667) (regOne!19847 (regOne!19846 r!17345)))) b!3141261))

(declare-fun b!3141263 () Bool)

(declare-fun e!1959394 () Bool)

(declare-fun tp!983900 () Bool)

(declare-fun tp!983896 () Bool)

(assert (=> b!3141263 (= e!1959394 (and tp!983900 tp!983896))))

(assert (=> b!3141085 (= tp!983839 e!1959394)))

(declare-fun b!3141262 () Bool)

(assert (=> b!3141262 (= e!1959394 tp_is_empty!16897)))

(declare-fun b!3141264 () Bool)

(declare-fun tp!983898 () Bool)

(assert (=> b!3141264 (= e!1959394 tp!983898)))

(declare-fun b!3141265 () Bool)

(declare-fun tp!983897 () Bool)

(declare-fun tp!983899 () Bool)

(assert (=> b!3141265 (= e!1959394 (and tp!983897 tp!983899))))

(assert (= (and b!3141085 ((_ is ElementMatch!9667) (regTwo!19847 (regOne!19846 r!17345)))) b!3141262))

(assert (= (and b!3141085 ((_ is Concat!14988) (regTwo!19847 (regOne!19846 r!17345)))) b!3141263))

(assert (= (and b!3141085 ((_ is Star!9667) (regTwo!19847 (regOne!19846 r!17345)))) b!3141264))

(assert (= (and b!3141085 ((_ is Union!9667) (regTwo!19847 (regOne!19846 r!17345)))) b!3141265))

(declare-fun b!3141267 () Bool)

(declare-fun e!1959395 () Bool)

(declare-fun tp!983905 () Bool)

(declare-fun tp!983901 () Bool)

(assert (=> b!3141267 (= e!1959395 (and tp!983905 tp!983901))))

(assert (=> b!3141076 (= tp!983828 e!1959395)))

(declare-fun b!3141266 () Bool)

(assert (=> b!3141266 (= e!1959395 tp_is_empty!16897)))

(declare-fun b!3141268 () Bool)

(declare-fun tp!983903 () Bool)

(assert (=> b!3141268 (= e!1959395 tp!983903)))

(declare-fun b!3141269 () Bool)

(declare-fun tp!983902 () Bool)

(declare-fun tp!983904 () Bool)

(assert (=> b!3141269 (= e!1959395 (and tp!983902 tp!983904))))

(assert (= (and b!3141076 ((_ is ElementMatch!9667) (reg!9996 (regOne!19847 r!17345)))) b!3141266))

(assert (= (and b!3141076 ((_ is Concat!14988) (reg!9996 (regOne!19847 r!17345)))) b!3141267))

(assert (= (and b!3141076 ((_ is Star!9667) (reg!9996 (regOne!19847 r!17345)))) b!3141268))

(assert (= (and b!3141076 ((_ is Union!9667) (reg!9996 (regOne!19847 r!17345)))) b!3141269))

(declare-fun b!3141271 () Bool)

(declare-fun e!1959396 () Bool)

(declare-fun tp!983910 () Bool)

(declare-fun tp!983906 () Bool)

(assert (=> b!3141271 (= e!1959396 (and tp!983910 tp!983906))))

(assert (=> b!3141075 (= tp!983830 e!1959396)))

(declare-fun b!3141270 () Bool)

(assert (=> b!3141270 (= e!1959396 tp_is_empty!16897)))

(declare-fun b!3141272 () Bool)

(declare-fun tp!983908 () Bool)

(assert (=> b!3141272 (= e!1959396 tp!983908)))

(declare-fun b!3141273 () Bool)

(declare-fun tp!983907 () Bool)

(declare-fun tp!983909 () Bool)

(assert (=> b!3141273 (= e!1959396 (and tp!983907 tp!983909))))

(assert (= (and b!3141075 ((_ is ElementMatch!9667) (regOne!19846 (regOne!19847 r!17345)))) b!3141270))

(assert (= (and b!3141075 ((_ is Concat!14988) (regOne!19846 (regOne!19847 r!17345)))) b!3141271))

(assert (= (and b!3141075 ((_ is Star!9667) (regOne!19846 (regOne!19847 r!17345)))) b!3141272))

(assert (= (and b!3141075 ((_ is Union!9667) (regOne!19846 (regOne!19847 r!17345)))) b!3141273))

(declare-fun b!3141275 () Bool)

(declare-fun e!1959397 () Bool)

(declare-fun tp!983915 () Bool)

(declare-fun tp!983911 () Bool)

(assert (=> b!3141275 (= e!1959397 (and tp!983915 tp!983911))))

(assert (=> b!3141075 (= tp!983826 e!1959397)))

(declare-fun b!3141274 () Bool)

(assert (=> b!3141274 (= e!1959397 tp_is_empty!16897)))

(declare-fun b!3141276 () Bool)

(declare-fun tp!983913 () Bool)

(assert (=> b!3141276 (= e!1959397 tp!983913)))

(declare-fun b!3141277 () Bool)

(declare-fun tp!983912 () Bool)

(declare-fun tp!983914 () Bool)

(assert (=> b!3141277 (= e!1959397 (and tp!983912 tp!983914))))

(assert (= (and b!3141075 ((_ is ElementMatch!9667) (regTwo!19846 (regOne!19847 r!17345)))) b!3141274))

(assert (= (and b!3141075 ((_ is Concat!14988) (regTwo!19846 (regOne!19847 r!17345)))) b!3141275))

(assert (= (and b!3141075 ((_ is Star!9667) (regTwo!19846 (regOne!19847 r!17345)))) b!3141276))

(assert (= (and b!3141075 ((_ is Union!9667) (regTwo!19846 (regOne!19847 r!17345)))) b!3141277))

(declare-fun b!3141279 () Bool)

(declare-fun e!1959398 () Bool)

(declare-fun tp!983920 () Bool)

(declare-fun tp!983916 () Bool)

(assert (=> b!3141279 (= e!1959398 (and tp!983920 tp!983916))))

(assert (=> b!3141089 (= tp!983842 e!1959398)))

(declare-fun b!3141278 () Bool)

(assert (=> b!3141278 (= e!1959398 tp_is_empty!16897)))

(declare-fun b!3141280 () Bool)

(declare-fun tp!983918 () Bool)

(assert (=> b!3141280 (= e!1959398 tp!983918)))

(declare-fun b!3141281 () Bool)

(declare-fun tp!983917 () Bool)

(declare-fun tp!983919 () Bool)

(assert (=> b!3141281 (= e!1959398 (and tp!983917 tp!983919))))

(assert (= (and b!3141089 ((_ is ElementMatch!9667) (regOne!19847 (regTwo!19846 r!17345)))) b!3141278))

(assert (= (and b!3141089 ((_ is Concat!14988) (regOne!19847 (regTwo!19846 r!17345)))) b!3141279))

(assert (= (and b!3141089 ((_ is Star!9667) (regOne!19847 (regTwo!19846 r!17345)))) b!3141280))

(assert (= (and b!3141089 ((_ is Union!9667) (regOne!19847 (regTwo!19846 r!17345)))) b!3141281))

(declare-fun b!3141283 () Bool)

(declare-fun e!1959399 () Bool)

(declare-fun tp!983925 () Bool)

(declare-fun tp!983921 () Bool)

(assert (=> b!3141283 (= e!1959399 (and tp!983925 tp!983921))))

(assert (=> b!3141089 (= tp!983844 e!1959399)))

(declare-fun b!3141282 () Bool)

(assert (=> b!3141282 (= e!1959399 tp_is_empty!16897)))

(declare-fun b!3141284 () Bool)

(declare-fun tp!983923 () Bool)

(assert (=> b!3141284 (= e!1959399 tp!983923)))

(declare-fun b!3141285 () Bool)

(declare-fun tp!983922 () Bool)

(declare-fun tp!983924 () Bool)

(assert (=> b!3141285 (= e!1959399 (and tp!983922 tp!983924))))

(assert (= (and b!3141089 ((_ is ElementMatch!9667) (regTwo!19847 (regTwo!19846 r!17345)))) b!3141282))

(assert (= (and b!3141089 ((_ is Concat!14988) (regTwo!19847 (regTwo!19846 r!17345)))) b!3141283))

(assert (= (and b!3141089 ((_ is Star!9667) (regTwo!19847 (regTwo!19846 r!17345)))) b!3141284))

(assert (= (and b!3141089 ((_ is Union!9667) (regTwo!19847 (regTwo!19846 r!17345)))) b!3141285))

(declare-fun b!3141287 () Bool)

(declare-fun e!1959400 () Bool)

(declare-fun tp!983930 () Bool)

(declare-fun tp!983926 () Bool)

(assert (=> b!3141287 (= e!1959400 (and tp!983930 tp!983926))))

(assert (=> b!3141080 (= tp!983833 e!1959400)))

(declare-fun b!3141286 () Bool)

(assert (=> b!3141286 (= e!1959400 tp_is_empty!16897)))

(declare-fun b!3141288 () Bool)

(declare-fun tp!983928 () Bool)

(assert (=> b!3141288 (= e!1959400 tp!983928)))

(declare-fun b!3141289 () Bool)

(declare-fun tp!983927 () Bool)

(declare-fun tp!983929 () Bool)

(assert (=> b!3141289 (= e!1959400 (and tp!983927 tp!983929))))

(assert (= (and b!3141080 ((_ is ElementMatch!9667) (reg!9996 (regTwo!19847 r!17345)))) b!3141286))

(assert (= (and b!3141080 ((_ is Concat!14988) (reg!9996 (regTwo!19847 r!17345)))) b!3141287))

(assert (= (and b!3141080 ((_ is Star!9667) (reg!9996 (regTwo!19847 r!17345)))) b!3141288))

(assert (= (and b!3141080 ((_ is Union!9667) (reg!9996 (regTwo!19847 r!17345)))) b!3141289))

(declare-fun b!3141291 () Bool)

(declare-fun e!1959401 () Bool)

(declare-fun tp!983935 () Bool)

(declare-fun tp!983931 () Bool)

(assert (=> b!3141291 (= e!1959401 (and tp!983935 tp!983931))))

(assert (=> b!3141079 (= tp!983835 e!1959401)))

(declare-fun b!3141290 () Bool)

(assert (=> b!3141290 (= e!1959401 tp_is_empty!16897)))

(declare-fun b!3141292 () Bool)

(declare-fun tp!983933 () Bool)

(assert (=> b!3141292 (= e!1959401 tp!983933)))

(declare-fun b!3141293 () Bool)

(declare-fun tp!983932 () Bool)

(declare-fun tp!983934 () Bool)

(assert (=> b!3141293 (= e!1959401 (and tp!983932 tp!983934))))

(assert (= (and b!3141079 ((_ is ElementMatch!9667) (regOne!19846 (regTwo!19847 r!17345)))) b!3141290))

(assert (= (and b!3141079 ((_ is Concat!14988) (regOne!19846 (regTwo!19847 r!17345)))) b!3141291))

(assert (= (and b!3141079 ((_ is Star!9667) (regOne!19846 (regTwo!19847 r!17345)))) b!3141292))

(assert (= (and b!3141079 ((_ is Union!9667) (regOne!19846 (regTwo!19847 r!17345)))) b!3141293))

(declare-fun b!3141295 () Bool)

(declare-fun e!1959402 () Bool)

(declare-fun tp!983940 () Bool)

(declare-fun tp!983936 () Bool)

(assert (=> b!3141295 (= e!1959402 (and tp!983940 tp!983936))))

(assert (=> b!3141079 (= tp!983831 e!1959402)))

(declare-fun b!3141294 () Bool)

(assert (=> b!3141294 (= e!1959402 tp_is_empty!16897)))

(declare-fun b!3141296 () Bool)

(declare-fun tp!983938 () Bool)

(assert (=> b!3141296 (= e!1959402 tp!983938)))

(declare-fun b!3141297 () Bool)

(declare-fun tp!983937 () Bool)

(declare-fun tp!983939 () Bool)

(assert (=> b!3141297 (= e!1959402 (and tp!983937 tp!983939))))

(assert (= (and b!3141079 ((_ is ElementMatch!9667) (regTwo!19846 (regTwo!19847 r!17345)))) b!3141294))

(assert (= (and b!3141079 ((_ is Concat!14988) (regTwo!19846 (regTwo!19847 r!17345)))) b!3141295))

(assert (= (and b!3141079 ((_ is Star!9667) (regTwo!19846 (regTwo!19847 r!17345)))) b!3141296))

(assert (= (and b!3141079 ((_ is Union!9667) (regTwo!19846 (regTwo!19847 r!17345)))) b!3141297))

(declare-fun b!3141299 () Bool)

(declare-fun e!1959403 () Bool)

(declare-fun tp!983945 () Bool)

(declare-fun tp!983941 () Bool)

(assert (=> b!3141299 (= e!1959403 (and tp!983945 tp!983941))))

(assert (=> b!3141084 (= tp!983838 e!1959403)))

(declare-fun b!3141298 () Bool)

(assert (=> b!3141298 (= e!1959403 tp_is_empty!16897)))

(declare-fun b!3141300 () Bool)

(declare-fun tp!983943 () Bool)

(assert (=> b!3141300 (= e!1959403 tp!983943)))

(declare-fun b!3141301 () Bool)

(declare-fun tp!983942 () Bool)

(declare-fun tp!983944 () Bool)

(assert (=> b!3141301 (= e!1959403 (and tp!983942 tp!983944))))

(assert (= (and b!3141084 ((_ is ElementMatch!9667) (reg!9996 (regOne!19846 r!17345)))) b!3141298))

(assert (= (and b!3141084 ((_ is Concat!14988) (reg!9996 (regOne!19846 r!17345)))) b!3141299))

(assert (= (and b!3141084 ((_ is Star!9667) (reg!9996 (regOne!19846 r!17345)))) b!3141300))

(assert (= (and b!3141084 ((_ is Union!9667) (reg!9996 (regOne!19846 r!17345)))) b!3141301))

(declare-fun b!3141303 () Bool)

(declare-fun e!1959404 () Bool)

(declare-fun tp!983950 () Bool)

(declare-fun tp!983946 () Bool)

(assert (=> b!3141303 (= e!1959404 (and tp!983950 tp!983946))))

(assert (=> b!3141083 (= tp!983840 e!1959404)))

(declare-fun b!3141302 () Bool)

(assert (=> b!3141302 (= e!1959404 tp_is_empty!16897)))

(declare-fun b!3141304 () Bool)

(declare-fun tp!983948 () Bool)

(assert (=> b!3141304 (= e!1959404 tp!983948)))

(declare-fun b!3141305 () Bool)

(declare-fun tp!983947 () Bool)

(declare-fun tp!983949 () Bool)

(assert (=> b!3141305 (= e!1959404 (and tp!983947 tp!983949))))

(assert (= (and b!3141083 ((_ is ElementMatch!9667) (regOne!19846 (regOne!19846 r!17345)))) b!3141302))

(assert (= (and b!3141083 ((_ is Concat!14988) (regOne!19846 (regOne!19846 r!17345)))) b!3141303))

(assert (= (and b!3141083 ((_ is Star!9667) (regOne!19846 (regOne!19846 r!17345)))) b!3141304))

(assert (= (and b!3141083 ((_ is Union!9667) (regOne!19846 (regOne!19846 r!17345)))) b!3141305))

(declare-fun b!3141307 () Bool)

(declare-fun e!1959405 () Bool)

(declare-fun tp!983955 () Bool)

(declare-fun tp!983951 () Bool)

(assert (=> b!3141307 (= e!1959405 (and tp!983955 tp!983951))))

(assert (=> b!3141083 (= tp!983836 e!1959405)))

(declare-fun b!3141306 () Bool)

(assert (=> b!3141306 (= e!1959405 tp_is_empty!16897)))

(declare-fun b!3141308 () Bool)

(declare-fun tp!983953 () Bool)

(assert (=> b!3141308 (= e!1959405 tp!983953)))

(declare-fun b!3141309 () Bool)

(declare-fun tp!983952 () Bool)

(declare-fun tp!983954 () Bool)

(assert (=> b!3141309 (= e!1959405 (and tp!983952 tp!983954))))

(assert (= (and b!3141083 ((_ is ElementMatch!9667) (regTwo!19846 (regOne!19846 r!17345)))) b!3141306))

(assert (= (and b!3141083 ((_ is Concat!14988) (regTwo!19846 (regOne!19846 r!17345)))) b!3141307))

(assert (= (and b!3141083 ((_ is Star!9667) (regTwo!19846 (regOne!19846 r!17345)))) b!3141308))

(assert (= (and b!3141083 ((_ is Union!9667) (regTwo!19846 (regOne!19846 r!17345)))) b!3141309))

(declare-fun b!3141311 () Bool)

(declare-fun e!1959406 () Bool)

(declare-fun tp!983960 () Bool)

(declare-fun tp!983956 () Bool)

(assert (=> b!3141311 (= e!1959406 (and tp!983960 tp!983956))))

(assert (=> b!3141088 (= tp!983843 e!1959406)))

(declare-fun b!3141310 () Bool)

(assert (=> b!3141310 (= e!1959406 tp_is_empty!16897)))

(declare-fun b!3141312 () Bool)

(declare-fun tp!983958 () Bool)

(assert (=> b!3141312 (= e!1959406 tp!983958)))

(declare-fun b!3141313 () Bool)

(declare-fun tp!983957 () Bool)

(declare-fun tp!983959 () Bool)

(assert (=> b!3141313 (= e!1959406 (and tp!983957 tp!983959))))

(assert (= (and b!3141088 ((_ is ElementMatch!9667) (reg!9996 (regTwo!19846 r!17345)))) b!3141310))

(assert (= (and b!3141088 ((_ is Concat!14988) (reg!9996 (regTwo!19846 r!17345)))) b!3141311))

(assert (= (and b!3141088 ((_ is Star!9667) (reg!9996 (regTwo!19846 r!17345)))) b!3141312))

(assert (= (and b!3141088 ((_ is Union!9667) (reg!9996 (regTwo!19846 r!17345)))) b!3141313))

(declare-fun b!3141315 () Bool)

(declare-fun e!1959407 () Bool)

(declare-fun tp!983965 () Bool)

(declare-fun tp!983961 () Bool)

(assert (=> b!3141315 (= e!1959407 (and tp!983965 tp!983961))))

(assert (=> b!3141087 (= tp!983845 e!1959407)))

(declare-fun b!3141314 () Bool)

(assert (=> b!3141314 (= e!1959407 tp_is_empty!16897)))

(declare-fun b!3141316 () Bool)

(declare-fun tp!983963 () Bool)

(assert (=> b!3141316 (= e!1959407 tp!983963)))

(declare-fun b!3141317 () Bool)

(declare-fun tp!983962 () Bool)

(declare-fun tp!983964 () Bool)

(assert (=> b!3141317 (= e!1959407 (and tp!983962 tp!983964))))

(assert (= (and b!3141087 ((_ is ElementMatch!9667) (regOne!19846 (regTwo!19846 r!17345)))) b!3141314))

(assert (= (and b!3141087 ((_ is Concat!14988) (regOne!19846 (regTwo!19846 r!17345)))) b!3141315))

(assert (= (and b!3141087 ((_ is Star!9667) (regOne!19846 (regTwo!19846 r!17345)))) b!3141316))

(assert (= (and b!3141087 ((_ is Union!9667) (regOne!19846 (regTwo!19846 r!17345)))) b!3141317))

(declare-fun b!3141319 () Bool)

(declare-fun e!1959408 () Bool)

(declare-fun tp!983970 () Bool)

(declare-fun tp!983966 () Bool)

(assert (=> b!3141319 (= e!1959408 (and tp!983970 tp!983966))))

(assert (=> b!3141087 (= tp!983841 e!1959408)))

(declare-fun b!3141318 () Bool)

(assert (=> b!3141318 (= e!1959408 tp_is_empty!16897)))

(declare-fun b!3141320 () Bool)

(declare-fun tp!983968 () Bool)

(assert (=> b!3141320 (= e!1959408 tp!983968)))

(declare-fun b!3141321 () Bool)

(declare-fun tp!983967 () Bool)

(declare-fun tp!983969 () Bool)

(assert (=> b!3141321 (= e!1959408 (and tp!983967 tp!983969))))

(assert (= (and b!3141087 ((_ is ElementMatch!9667) (regTwo!19846 (regTwo!19846 r!17345)))) b!3141318))

(assert (= (and b!3141087 ((_ is Concat!14988) (regTwo!19846 (regTwo!19846 r!17345)))) b!3141319))

(assert (= (and b!3141087 ((_ is Star!9667) (regTwo!19846 (regTwo!19846 r!17345)))) b!3141320))

(assert (= (and b!3141087 ((_ is Union!9667) (regTwo!19846 (regTwo!19846 r!17345)))) b!3141321))

(check-sat (not b!3141215) (not b!3141271) (not bm!225601) (not b!3141224) (not bm!225580) (not b!3141299) (not b!3141285) (not bm!225602) (not b!3141284) (not b!3141287) (not b!3141143) (not b!3141227) (not bm!225594) (not b!3141277) (not b!3141260) (not b!3141283) (not bm!225591) (not bm!225585) (not d!865745) (not d!865757) (not b!3141296) (not b!3141245) (not bm!225604) (not b!3141316) (not bm!225606) (not bm!225599) (not b!3141170) (not b!3141312) (not bm!225577) (not b!3141249) (not bm!225593) (not b!3141239) (not b!3141257) (not b!3141129) (not bm!225579) (not b!3141279) (not b!3141161) (not bm!225607) (not b!3141289) (not b!3141320) (not b!3141308) (not b!3141295) (not bm!225578) (not b!3141253) (not b!3141263) (not b!3141195) (not b!3141315) (not bm!225609) (not b!3141291) (not b!3141229) (not b!3141233) (not d!865727) (not bm!225600) (not b!3141319) (not b!3141297) (not b!3141252) (not b!3141309) (not d!865737) (not b!3141288) (not bm!225611) (not b!3141232) (not b!3141293) (not b!3141292) (not b!3141251) (not b!3141269) (not b!3141300) (not b!3141241) (not b!3141255) (not b!3141267) (not b!3141237) (not b!3141240) (not b!3141280) (not b!3141243) tp_is_empty!16897 (not b!3141179) (not bm!225576) (not b!3141321) (not b!3141275) (not b!3141311) (not bm!225588) (not b!3141225) (not b!3141126) (not b!3141281) (not b!3141223) (not b!3141231) (not b!3141307) (not bm!225582) (not b!3141264) (not b!3141244) (not b!3141317) (not b!3141272) (not b!3141301) (not b!3141236) (not d!865729) (not b!3141248) (not b!3141313) (not b!3141228) (not bm!225587) (not bm!225590) (not b!3141305) (not bm!225584) (not b!3141259) (not b!3141268) (not b!3141247) (not bm!225596) (not b!3141212) (not b!3141261) (not b!3141265) (not b!3141276) (not b!3141273) (not b!3141303) (not b!3141235) (not b!3141152) (not bm!225597) (not b!3141256) (not b!3141304) (not bm!225605))
(check-sat)
