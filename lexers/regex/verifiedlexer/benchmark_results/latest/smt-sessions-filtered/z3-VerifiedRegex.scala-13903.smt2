; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!738872 () Bool)

(assert start!738872)

(declare-fun b!7749807 () Bool)

(declare-fun e!4594362 () Bool)

(declare-fun tp!2273587 () Bool)

(declare-fun tp!2273591 () Bool)

(assert (=> b!7749807 (= e!4594362 (and tp!2273587 tp!2273591))))

(declare-fun b!7749808 () Bool)

(declare-fun e!4594363 () Bool)

(declare-datatypes ((C!41528 0))(
  ( (C!41529 (val!31204 Int)) )
))
(declare-datatypes ((Regex!20601 0))(
  ( (ElementMatch!20601 (c!1429366 C!41528)) (Concat!29446 (regOne!41714 Regex!20601) (regTwo!41714 Regex!20601)) (EmptyExpr!20601) (Star!20601 (reg!20930 Regex!20601)) (EmptyLang!20601) (Union!20601 (regOne!41715 Regex!20601) (regTwo!41715 Regex!20601)) )
))
(declare-fun r!25892 () Regex!20601)

(declare-fun validRegex!11019 (Regex!20601) Bool)

(assert (=> b!7749808 (= e!4594363 (not (validRegex!11019 r!25892)))))

(declare-fun res!3090242 () Bool)

(assert (=> start!738872 (=> (not res!3090242) (not e!4594363))))

(assert (=> start!738872 (= res!3090242 (validRegex!11019 (Star!20601 r!25892)))))

(assert (=> start!738872 e!4594363))

(assert (=> start!738872 e!4594362))

(declare-fun b!7749809 () Bool)

(declare-fun tp!2273590 () Bool)

(declare-fun tp!2273588 () Bool)

(assert (=> b!7749809 (= e!4594362 (and tp!2273590 tp!2273588))))

(declare-fun b!7749810 () Bool)

(declare-fun tp!2273589 () Bool)

(assert (=> b!7749810 (= e!4594362 tp!2273589)))

(declare-fun b!7749811 () Bool)

(declare-fun tp_is_empty!51557 () Bool)

(assert (=> b!7749811 (= e!4594362 tp_is_empty!51557)))

(assert (= (and start!738872 res!3090242) b!7749808))

(get-info :version)

(assert (= (and start!738872 ((_ is ElementMatch!20601) r!25892)) b!7749811))

(assert (= (and start!738872 ((_ is Concat!29446) r!25892)) b!7749807))

(assert (= (and start!738872 ((_ is Star!20601) r!25892)) b!7749810))

(assert (= (and start!738872 ((_ is Union!20601) r!25892)) b!7749809))

(declare-fun m!8216294 () Bool)

(assert (=> b!7749808 m!8216294))

(declare-fun m!8216296 () Bool)

(assert (=> start!738872 m!8216296))

(check-sat (not b!7749807) (not b!7749810) (not b!7749809) (not start!738872) (not b!7749808) tp_is_empty!51557)
(check-sat)
(get-model)

(declare-fun b!7749866 () Bool)

(declare-fun e!4594412 () Bool)

(declare-fun call!718229 () Bool)

(assert (=> b!7749866 (= e!4594412 call!718229)))

(declare-fun d!2342638 () Bool)

(declare-fun res!3090277 () Bool)

(declare-fun e!4594406 () Bool)

(assert (=> d!2342638 (=> res!3090277 e!4594406)))

(assert (=> d!2342638 (= res!3090277 ((_ is ElementMatch!20601) r!25892))))

(assert (=> d!2342638 (= (validRegex!11019 r!25892) e!4594406)))

(declare-fun bm!718222 () Bool)

(declare-fun call!718227 () Bool)

(assert (=> bm!718222 (= call!718227 call!718229)))

(declare-fun bm!718223 () Bool)

(declare-fun call!718228 () Bool)

(declare-fun c!1429379 () Bool)

(assert (=> bm!718223 (= call!718228 (validRegex!11019 (ite c!1429379 (regOne!41715 r!25892) (regOne!41714 r!25892))))))

(declare-fun b!7749867 () Bool)

(declare-fun e!4594411 () Bool)

(assert (=> b!7749867 (= e!4594411 call!718227)))

(declare-fun b!7749868 () Bool)

(declare-fun res!3090276 () Bool)

(declare-fun e!4594407 () Bool)

(assert (=> b!7749868 (=> (not res!3090276) (not e!4594407))))

(assert (=> b!7749868 (= res!3090276 call!718228)))

(declare-fun e!4594408 () Bool)

(assert (=> b!7749868 (= e!4594408 e!4594407)))

(declare-fun b!7749869 () Bool)

(declare-fun e!4594409 () Bool)

(assert (=> b!7749869 (= e!4594409 e!4594408)))

(assert (=> b!7749869 (= c!1429379 ((_ is Union!20601) r!25892))))

(declare-fun bm!718224 () Bool)

(declare-fun c!1429380 () Bool)

(assert (=> bm!718224 (= call!718229 (validRegex!11019 (ite c!1429380 (reg!20930 r!25892) (ite c!1429379 (regTwo!41715 r!25892) (regTwo!41714 r!25892)))))))

(declare-fun b!7749870 () Bool)

(assert (=> b!7749870 (= e!4594407 call!718227)))

(declare-fun b!7749871 () Bool)

(assert (=> b!7749871 (= e!4594406 e!4594409)))

(assert (=> b!7749871 (= c!1429380 ((_ is Star!20601) r!25892))))

(declare-fun b!7749872 () Bool)

(assert (=> b!7749872 (= e!4594409 e!4594412)))

(declare-fun res!3090274 () Bool)

(declare-fun nullable!9072 (Regex!20601) Bool)

(assert (=> b!7749872 (= res!3090274 (not (nullable!9072 (reg!20930 r!25892))))))

(assert (=> b!7749872 (=> (not res!3090274) (not e!4594412))))

(declare-fun b!7749873 () Bool)

(declare-fun e!4594410 () Bool)

(assert (=> b!7749873 (= e!4594410 e!4594411)))

(declare-fun res!3090275 () Bool)

(assert (=> b!7749873 (=> (not res!3090275) (not e!4594411))))

(assert (=> b!7749873 (= res!3090275 call!718228)))

(declare-fun b!7749874 () Bool)

(declare-fun res!3090273 () Bool)

(assert (=> b!7749874 (=> res!3090273 e!4594410)))

(assert (=> b!7749874 (= res!3090273 (not ((_ is Concat!29446) r!25892)))))

(assert (=> b!7749874 (= e!4594408 e!4594410)))

(assert (= (and d!2342638 (not res!3090277)) b!7749871))

(assert (= (and b!7749871 c!1429380) b!7749872))

(assert (= (and b!7749871 (not c!1429380)) b!7749869))

(assert (= (and b!7749872 res!3090274) b!7749866))

(assert (= (and b!7749869 c!1429379) b!7749868))

(assert (= (and b!7749869 (not c!1429379)) b!7749874))

(assert (= (and b!7749868 res!3090276) b!7749870))

(assert (= (and b!7749874 (not res!3090273)) b!7749873))

(assert (= (and b!7749873 res!3090275) b!7749867))

(assert (= (or b!7749868 b!7749873) bm!718223))

(assert (= (or b!7749870 b!7749867) bm!718222))

(assert (= (or b!7749866 bm!718222) bm!718224))

(declare-fun m!8216310 () Bool)

(assert (=> bm!718223 m!8216310))

(declare-fun m!8216312 () Bool)

(assert (=> bm!718224 m!8216312))

(declare-fun m!8216314 () Bool)

(assert (=> b!7749872 m!8216314))

(assert (=> b!7749808 d!2342638))

(declare-fun b!7749885 () Bool)

(declare-fun e!4594421 () Bool)

(declare-fun call!718232 () Bool)

(assert (=> b!7749885 (= e!4594421 call!718232)))

(declare-fun d!2342642 () Bool)

(declare-fun res!3090282 () Bool)

(declare-fun e!4594415 () Bool)

(assert (=> d!2342642 (=> res!3090282 e!4594415)))

(assert (=> d!2342642 (= res!3090282 ((_ is ElementMatch!20601) (Star!20601 r!25892)))))

(assert (=> d!2342642 (= (validRegex!11019 (Star!20601 r!25892)) e!4594415)))

(declare-fun bm!718225 () Bool)

(declare-fun call!718230 () Bool)

(assert (=> bm!718225 (= call!718230 call!718232)))

(declare-fun bm!718226 () Bool)

(declare-fun call!718231 () Bool)

(declare-fun c!1429381 () Bool)

(assert (=> bm!718226 (= call!718231 (validRegex!11019 (ite c!1429381 (regOne!41715 (Star!20601 r!25892)) (regOne!41714 (Star!20601 r!25892)))))))

(declare-fun b!7749886 () Bool)

(declare-fun e!4594420 () Bool)

(assert (=> b!7749886 (= e!4594420 call!718230)))

(declare-fun b!7749887 () Bool)

(declare-fun res!3090281 () Bool)

(declare-fun e!4594416 () Bool)

(assert (=> b!7749887 (=> (not res!3090281) (not e!4594416))))

(assert (=> b!7749887 (= res!3090281 call!718231)))

(declare-fun e!4594417 () Bool)

(assert (=> b!7749887 (= e!4594417 e!4594416)))

(declare-fun b!7749888 () Bool)

(declare-fun e!4594418 () Bool)

(assert (=> b!7749888 (= e!4594418 e!4594417)))

(assert (=> b!7749888 (= c!1429381 ((_ is Union!20601) (Star!20601 r!25892)))))

(declare-fun c!1429382 () Bool)

(declare-fun bm!718227 () Bool)

(assert (=> bm!718227 (= call!718232 (validRegex!11019 (ite c!1429382 (reg!20930 (Star!20601 r!25892)) (ite c!1429381 (regTwo!41715 (Star!20601 r!25892)) (regTwo!41714 (Star!20601 r!25892))))))))

(declare-fun b!7749889 () Bool)

(assert (=> b!7749889 (= e!4594416 call!718230)))

(declare-fun b!7749890 () Bool)

(assert (=> b!7749890 (= e!4594415 e!4594418)))

(assert (=> b!7749890 (= c!1429382 ((_ is Star!20601) (Star!20601 r!25892)))))

(declare-fun b!7749891 () Bool)

(assert (=> b!7749891 (= e!4594418 e!4594421)))

(declare-fun res!3090279 () Bool)

(assert (=> b!7749891 (= res!3090279 (not (nullable!9072 (reg!20930 (Star!20601 r!25892)))))))

(assert (=> b!7749891 (=> (not res!3090279) (not e!4594421))))

(declare-fun b!7749892 () Bool)

(declare-fun e!4594419 () Bool)

(assert (=> b!7749892 (= e!4594419 e!4594420)))

(declare-fun res!3090280 () Bool)

(assert (=> b!7749892 (=> (not res!3090280) (not e!4594420))))

(assert (=> b!7749892 (= res!3090280 call!718231)))

(declare-fun b!7749893 () Bool)

(declare-fun res!3090278 () Bool)

(assert (=> b!7749893 (=> res!3090278 e!4594419)))

(assert (=> b!7749893 (= res!3090278 (not ((_ is Concat!29446) (Star!20601 r!25892))))))

(assert (=> b!7749893 (= e!4594417 e!4594419)))

(assert (= (and d!2342642 (not res!3090282)) b!7749890))

(assert (= (and b!7749890 c!1429382) b!7749891))

(assert (= (and b!7749890 (not c!1429382)) b!7749888))

(assert (= (and b!7749891 res!3090279) b!7749885))

(assert (= (and b!7749888 c!1429381) b!7749887))

(assert (= (and b!7749888 (not c!1429381)) b!7749893))

(assert (= (and b!7749887 res!3090281) b!7749889))

(assert (= (and b!7749893 (not res!3090278)) b!7749892))

(assert (= (and b!7749892 res!3090280) b!7749886))

(assert (= (or b!7749887 b!7749892) bm!718226))

(assert (= (or b!7749889 b!7749886) bm!718225))

(assert (= (or b!7749885 bm!718225) bm!718227))

(declare-fun m!8216316 () Bool)

(assert (=> bm!718226 m!8216316))

(declare-fun m!8216318 () Bool)

(assert (=> bm!718227 m!8216318))

(declare-fun m!8216320 () Bool)

(assert (=> b!7749891 m!8216320))

(assert (=> start!738872 d!2342642))

(declare-fun b!7749927 () Bool)

(declare-fun e!4594429 () Bool)

(declare-fun tp!2273640 () Bool)

(declare-fun tp!2273639 () Bool)

(assert (=> b!7749927 (= e!4594429 (and tp!2273640 tp!2273639))))

(declare-fun b!7749925 () Bool)

(declare-fun tp!2273637 () Bool)

(declare-fun tp!2273641 () Bool)

(assert (=> b!7749925 (= e!4594429 (and tp!2273637 tp!2273641))))

(declare-fun b!7749924 () Bool)

(assert (=> b!7749924 (= e!4594429 tp_is_empty!51557)))

(assert (=> b!7749807 (= tp!2273587 e!4594429)))

(declare-fun b!7749926 () Bool)

(declare-fun tp!2273638 () Bool)

(assert (=> b!7749926 (= e!4594429 tp!2273638)))

(assert (= (and b!7749807 ((_ is ElementMatch!20601) (regOne!41714 r!25892))) b!7749924))

(assert (= (and b!7749807 ((_ is Concat!29446) (regOne!41714 r!25892))) b!7749925))

(assert (= (and b!7749807 ((_ is Star!20601) (regOne!41714 r!25892))) b!7749926))

(assert (= (and b!7749807 ((_ is Union!20601) (regOne!41714 r!25892))) b!7749927))

(declare-fun b!7749931 () Bool)

(declare-fun e!4594430 () Bool)

(declare-fun tp!2273645 () Bool)

(declare-fun tp!2273644 () Bool)

(assert (=> b!7749931 (= e!4594430 (and tp!2273645 tp!2273644))))

(declare-fun b!7749929 () Bool)

(declare-fun tp!2273642 () Bool)

(declare-fun tp!2273646 () Bool)

(assert (=> b!7749929 (= e!4594430 (and tp!2273642 tp!2273646))))

(declare-fun b!7749928 () Bool)

(assert (=> b!7749928 (= e!4594430 tp_is_empty!51557)))

(assert (=> b!7749807 (= tp!2273591 e!4594430)))

(declare-fun b!7749930 () Bool)

(declare-fun tp!2273643 () Bool)

(assert (=> b!7749930 (= e!4594430 tp!2273643)))

(assert (= (and b!7749807 ((_ is ElementMatch!20601) (regTwo!41714 r!25892))) b!7749928))

(assert (= (and b!7749807 ((_ is Concat!29446) (regTwo!41714 r!25892))) b!7749929))

(assert (= (and b!7749807 ((_ is Star!20601) (regTwo!41714 r!25892))) b!7749930))

(assert (= (and b!7749807 ((_ is Union!20601) (regTwo!41714 r!25892))) b!7749931))

(declare-fun b!7749935 () Bool)

(declare-fun e!4594431 () Bool)

(declare-fun tp!2273650 () Bool)

(declare-fun tp!2273649 () Bool)

(assert (=> b!7749935 (= e!4594431 (and tp!2273650 tp!2273649))))

(declare-fun b!7749933 () Bool)

(declare-fun tp!2273647 () Bool)

(declare-fun tp!2273651 () Bool)

(assert (=> b!7749933 (= e!4594431 (and tp!2273647 tp!2273651))))

(declare-fun b!7749932 () Bool)

(assert (=> b!7749932 (= e!4594431 tp_is_empty!51557)))

(assert (=> b!7749809 (= tp!2273590 e!4594431)))

(declare-fun b!7749934 () Bool)

(declare-fun tp!2273648 () Bool)

(assert (=> b!7749934 (= e!4594431 tp!2273648)))

(assert (= (and b!7749809 ((_ is ElementMatch!20601) (regOne!41715 r!25892))) b!7749932))

(assert (= (and b!7749809 ((_ is Concat!29446) (regOne!41715 r!25892))) b!7749933))

(assert (= (and b!7749809 ((_ is Star!20601) (regOne!41715 r!25892))) b!7749934))

(assert (= (and b!7749809 ((_ is Union!20601) (regOne!41715 r!25892))) b!7749935))

(declare-fun b!7749939 () Bool)

(declare-fun e!4594432 () Bool)

(declare-fun tp!2273655 () Bool)

(declare-fun tp!2273654 () Bool)

(assert (=> b!7749939 (= e!4594432 (and tp!2273655 tp!2273654))))

(declare-fun b!7749937 () Bool)

(declare-fun tp!2273652 () Bool)

(declare-fun tp!2273656 () Bool)

(assert (=> b!7749937 (= e!4594432 (and tp!2273652 tp!2273656))))

(declare-fun b!7749936 () Bool)

(assert (=> b!7749936 (= e!4594432 tp_is_empty!51557)))

(assert (=> b!7749809 (= tp!2273588 e!4594432)))

(declare-fun b!7749938 () Bool)

(declare-fun tp!2273653 () Bool)

(assert (=> b!7749938 (= e!4594432 tp!2273653)))

(assert (= (and b!7749809 ((_ is ElementMatch!20601) (regTwo!41715 r!25892))) b!7749936))

(assert (= (and b!7749809 ((_ is Concat!29446) (regTwo!41715 r!25892))) b!7749937))

(assert (= (and b!7749809 ((_ is Star!20601) (regTwo!41715 r!25892))) b!7749938))

(assert (= (and b!7749809 ((_ is Union!20601) (regTwo!41715 r!25892))) b!7749939))

(declare-fun b!7749943 () Bool)

(declare-fun e!4594433 () Bool)

(declare-fun tp!2273660 () Bool)

(declare-fun tp!2273659 () Bool)

(assert (=> b!7749943 (= e!4594433 (and tp!2273660 tp!2273659))))

(declare-fun b!7749941 () Bool)

(declare-fun tp!2273657 () Bool)

(declare-fun tp!2273661 () Bool)

(assert (=> b!7749941 (= e!4594433 (and tp!2273657 tp!2273661))))

(declare-fun b!7749940 () Bool)

(assert (=> b!7749940 (= e!4594433 tp_is_empty!51557)))

(assert (=> b!7749810 (= tp!2273589 e!4594433)))

(declare-fun b!7749942 () Bool)

(declare-fun tp!2273658 () Bool)

(assert (=> b!7749942 (= e!4594433 tp!2273658)))

(assert (= (and b!7749810 ((_ is ElementMatch!20601) (reg!20930 r!25892))) b!7749940))

(assert (= (and b!7749810 ((_ is Concat!29446) (reg!20930 r!25892))) b!7749941))

(assert (= (and b!7749810 ((_ is Star!20601) (reg!20930 r!25892))) b!7749942))

(assert (= (and b!7749810 ((_ is Union!20601) (reg!20930 r!25892))) b!7749943))

(check-sat (not b!7749938) (not b!7749942) (not b!7749933) (not b!7749926) (not b!7749935) (not b!7749891) (not b!7749929) (not b!7749925) (not b!7749931) (not bm!718223) (not b!7749927) (not b!7749934) (not b!7749939) (not b!7749943) (not bm!718226) (not bm!718224) tp_is_empty!51557 (not b!7749872) (not bm!718227) (not b!7749937) (not b!7749930) (not b!7749941))
(check-sat)
