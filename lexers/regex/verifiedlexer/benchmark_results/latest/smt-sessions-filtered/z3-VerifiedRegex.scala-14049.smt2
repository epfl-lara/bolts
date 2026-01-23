; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741686 () Bool)

(assert start!741686)

(declare-fun b!7808915 () Bool)

(declare-fun e!4622136 () Bool)

(declare-fun tp!2300630 () Bool)

(assert (=> b!7808915 (= e!4622136 tp!2300630)))

(declare-fun b!7808916 () Bool)

(declare-fun tp!2300628 () Bool)

(declare-fun tp!2300627 () Bool)

(assert (=> b!7808916 (= e!4622136 (and tp!2300628 tp!2300627))))

(declare-fun b!7808917 () Bool)

(declare-fun res!3109869 () Bool)

(declare-fun e!4622139 () Bool)

(assert (=> b!7808917 (=> (not res!3109869) (not e!4622139))))

(declare-datatypes ((C!42112 0))(
  ( (C!42113 (val!31496 Int)) )
))
(declare-datatypes ((Regex!20893 0))(
  ( (ElementMatch!20893 (c!1438008 C!42112)) (Concat!29738 (regOne!42298 Regex!20893) (regTwo!42298 Regex!20893)) (EmptyExpr!20893) (Star!20893 (reg!21222 Regex!20893)) (EmptyLang!20893) (Union!20893 (regOne!42299 Regex!20893) (regTwo!42299 Regex!20893)) )
))
(declare-fun r2!6217 () Regex!20893)

(declare-fun nullable!9277 (Regex!20893) Bool)

(assert (=> b!7808917 (= res!3109869 (nullable!9277 r2!6217))))

(declare-fun b!7808918 () Bool)

(declare-fun tp!2300623 () Bool)

(declare-fun tp!2300626 () Bool)

(assert (=> b!7808918 (= e!4622136 (and tp!2300623 tp!2300626))))

(declare-fun b!7808919 () Bool)

(declare-fun res!3109868 () Bool)

(assert (=> b!7808919 (=> (not res!3109868) (not e!4622139))))

(declare-datatypes ((List!73732 0))(
  ( (Nil!73608) (Cons!73608 (h!80056 C!42112) (t!388467 List!73732)) )
))
(declare-fun s!14292 () List!73732)

(get-info :version)

(assert (=> b!7808919 (= res!3109868 (not ((_ is Cons!73608) s!14292)))))

(declare-fun b!7808920 () Bool)

(declare-fun tp_is_empty!52141 () Bool)

(assert (=> b!7808920 (= e!4622136 tp_is_empty!52141)))

(declare-fun b!7808921 () Bool)

(declare-fun e!4622137 () Bool)

(assert (=> b!7808921 (= e!4622137 tp_is_empty!52141)))

(declare-fun b!7808922 () Bool)

(declare-fun r1!6279 () Regex!20893)

(declare-datatypes ((tuple2!69972 0))(
  ( (tuple2!69973 (_1!38289 List!73732) (_2!38289 List!73732)) )
))
(declare-datatypes ((Option!17780 0))(
  ( (None!17779) (Some!17779 (v!54914 tuple2!69972)) )
))
(declare-fun isDefined!14390 (Option!17780) Bool)

(declare-fun findConcatSeparation!3810 (Regex!20893 Regex!20893 List!73732 List!73732 List!73732) Option!17780)

(assert (=> b!7808922 (= e!4622139 (not (isDefined!14390 (findConcatSeparation!3810 r1!6279 r2!6217 Nil!73608 s!14292 s!14292))))))

(declare-fun b!7808923 () Bool)

(declare-fun res!3109871 () Bool)

(assert (=> b!7808923 (=> (not res!3109871) (not e!4622139))))

(declare-fun matchR!10353 (Regex!20893 List!73732) Bool)

(assert (=> b!7808923 (= res!3109871 (matchR!10353 (Concat!29738 r1!6279 r2!6217) s!14292))))

(declare-fun b!7808924 () Bool)

(declare-fun tp!2300624 () Bool)

(assert (=> b!7808924 (= e!4622137 tp!2300624)))

(declare-fun b!7808925 () Bool)

(declare-fun tp!2300632 () Bool)

(declare-fun tp!2300633 () Bool)

(assert (=> b!7808925 (= e!4622137 (and tp!2300632 tp!2300633))))

(declare-fun res!3109870 () Bool)

(assert (=> start!741686 (=> (not res!3109870) (not e!4622139))))

(declare-fun validRegex!11307 (Regex!20893) Bool)

(assert (=> start!741686 (= res!3109870 (validRegex!11307 r1!6279))))

(assert (=> start!741686 e!4622139))

(assert (=> start!741686 e!4622137))

(assert (=> start!741686 e!4622136))

(declare-fun e!4622138 () Bool)

(assert (=> start!741686 e!4622138))

(declare-fun b!7808914 () Bool)

(declare-fun res!3109873 () Bool)

(assert (=> b!7808914 (=> (not res!3109873) (not e!4622139))))

(assert (=> b!7808914 (= res!3109873 (validRegex!11307 r2!6217))))

(declare-fun b!7808926 () Bool)

(declare-fun tp!2300625 () Bool)

(assert (=> b!7808926 (= e!4622138 (and tp_is_empty!52141 tp!2300625))))

(declare-fun b!7808927 () Bool)

(declare-fun tp!2300629 () Bool)

(declare-fun tp!2300631 () Bool)

(assert (=> b!7808927 (= e!4622137 (and tp!2300629 tp!2300631))))

(declare-fun b!7808928 () Bool)

(declare-fun res!3109872 () Bool)

(assert (=> b!7808928 (=> (not res!3109872) (not e!4622139))))

(assert (=> b!7808928 (= res!3109872 (nullable!9277 r1!6279))))

(declare-fun b!7808929 () Bool)

(declare-fun res!3109874 () Bool)

(assert (=> b!7808929 (=> (not res!3109874) (not e!4622139))))

(assert (=> b!7808929 (= res!3109874 (= (findConcatSeparation!3810 r1!6279 r2!6217 Nil!73608 Nil!73608 Nil!73608) (Some!17779 (tuple2!69973 Nil!73608 Nil!73608))))))

(assert (= (and start!741686 res!3109870) b!7808914))

(assert (= (and b!7808914 res!3109873) b!7808923))

(assert (= (and b!7808923 res!3109871) b!7808919))

(assert (= (and b!7808919 res!3109868) b!7808928))

(assert (= (and b!7808928 res!3109872) b!7808917))

(assert (= (and b!7808917 res!3109869) b!7808929))

(assert (= (and b!7808929 res!3109874) b!7808922))

(assert (= (and start!741686 ((_ is ElementMatch!20893) r1!6279)) b!7808921))

(assert (= (and start!741686 ((_ is Concat!29738) r1!6279)) b!7808927))

(assert (= (and start!741686 ((_ is Star!20893) r1!6279)) b!7808924))

(assert (= (and start!741686 ((_ is Union!20893) r1!6279)) b!7808925))

(assert (= (and start!741686 ((_ is ElementMatch!20893) r2!6217)) b!7808920))

(assert (= (and start!741686 ((_ is Concat!29738) r2!6217)) b!7808918))

(assert (= (and start!741686 ((_ is Star!20893) r2!6217)) b!7808915))

(assert (= (and start!741686 ((_ is Union!20893) r2!6217)) b!7808916))

(assert (= (and start!741686 ((_ is Cons!73608) s!14292)) b!7808926))

(declare-fun m!8241114 () Bool)

(assert (=> b!7808928 m!8241114))

(declare-fun m!8241116 () Bool)

(assert (=> b!7808923 m!8241116))

(declare-fun m!8241118 () Bool)

(assert (=> b!7808929 m!8241118))

(declare-fun m!8241120 () Bool)

(assert (=> start!741686 m!8241120))

(declare-fun m!8241122 () Bool)

(assert (=> b!7808917 m!8241122))

(declare-fun m!8241124 () Bool)

(assert (=> b!7808922 m!8241124))

(assert (=> b!7808922 m!8241124))

(declare-fun m!8241126 () Bool)

(assert (=> b!7808922 m!8241126))

(declare-fun m!8241128 () Bool)

(assert (=> b!7808914 m!8241128))

(check-sat (not b!7808928) (not b!7808924) (not b!7808927) (not b!7808914) (not b!7808923) (not b!7808929) tp_is_empty!52141 (not b!7808925) (not b!7808922) (not start!741686) (not b!7808916) (not b!7808926) (not b!7808915) (not b!7808917) (not b!7808918))
(check-sat)
(get-model)

(declare-fun bm!724350 () Bool)

(declare-fun call!724357 () Bool)

(declare-fun c!1438013 () Bool)

(assert (=> bm!724350 (= call!724357 (validRegex!11307 (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))))))

(declare-fun b!7808948 () Bool)

(declare-fun e!4622157 () Bool)

(declare-fun call!724356 () Bool)

(assert (=> b!7808948 (= e!4622157 call!724356)))

(declare-fun b!7808949 () Bool)

(declare-fun res!3109886 () Bool)

(declare-fun e!4622158 () Bool)

(assert (=> b!7808949 (=> res!3109886 e!4622158)))

(assert (=> b!7808949 (= res!3109886 (not ((_ is Concat!29738) r1!6279)))))

(declare-fun e!4622155 () Bool)

(assert (=> b!7808949 (= e!4622155 e!4622158)))

(declare-fun bm!724351 () Bool)

(declare-fun call!724355 () Bool)

(assert (=> bm!724351 (= call!724355 call!724356)))

(declare-fun d!2348526 () Bool)

(declare-fun res!3109887 () Bool)

(declare-fun e!4622160 () Bool)

(assert (=> d!2348526 (=> res!3109887 e!4622160)))

(assert (=> d!2348526 (= res!3109887 ((_ is ElementMatch!20893) r1!6279))))

(assert (=> d!2348526 (= (validRegex!11307 r1!6279) e!4622160)))

(declare-fun b!7808950 () Bool)

(declare-fun e!4622154 () Bool)

(assert (=> b!7808950 (= e!4622160 e!4622154)))

(declare-fun c!1438014 () Bool)

(assert (=> b!7808950 (= c!1438014 ((_ is Star!20893) r1!6279))))

(declare-fun b!7808951 () Bool)

(assert (=> b!7808951 (= e!4622154 e!4622155)))

(assert (=> b!7808951 (= c!1438013 ((_ is Union!20893) r1!6279))))

(declare-fun b!7808952 () Bool)

(declare-fun e!4622159 () Bool)

(assert (=> b!7808952 (= e!4622158 e!4622159)))

(declare-fun res!3109889 () Bool)

(assert (=> b!7808952 (=> (not res!3109889) (not e!4622159))))

(assert (=> b!7808952 (= res!3109889 call!724355)))

(declare-fun b!7808953 () Bool)

(declare-fun e!4622156 () Bool)

(assert (=> b!7808953 (= e!4622156 call!724357)))

(declare-fun b!7808954 () Bool)

(assert (=> b!7808954 (= e!4622154 e!4622157)))

(declare-fun res!3109888 () Bool)

(assert (=> b!7808954 (= res!3109888 (not (nullable!9277 (reg!21222 r1!6279))))))

(assert (=> b!7808954 (=> (not res!3109888) (not e!4622157))))

(declare-fun b!7808955 () Bool)

(assert (=> b!7808955 (= e!4622159 call!724357)))

(declare-fun b!7808956 () Bool)

(declare-fun res!3109885 () Bool)

(assert (=> b!7808956 (=> (not res!3109885) (not e!4622156))))

(assert (=> b!7808956 (= res!3109885 call!724355)))

(assert (=> b!7808956 (= e!4622155 e!4622156)))

(declare-fun bm!724352 () Bool)

(assert (=> bm!724352 (= call!724356 (validRegex!11307 (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))))))

(assert (= (and d!2348526 (not res!3109887)) b!7808950))

(assert (= (and b!7808950 c!1438014) b!7808954))

(assert (= (and b!7808950 (not c!1438014)) b!7808951))

(assert (= (and b!7808954 res!3109888) b!7808948))

(assert (= (and b!7808951 c!1438013) b!7808956))

(assert (= (and b!7808951 (not c!1438013)) b!7808949))

(assert (= (and b!7808956 res!3109885) b!7808953))

(assert (= (and b!7808949 (not res!3109886)) b!7808952))

(assert (= (and b!7808952 res!3109889) b!7808955))

(assert (= (or b!7808956 b!7808952) bm!724351))

(assert (= (or b!7808953 b!7808955) bm!724350))

(assert (= (or b!7808948 bm!724351) bm!724352))

(declare-fun m!8241130 () Bool)

(assert (=> bm!724350 m!8241130))

(declare-fun m!8241132 () Bool)

(assert (=> b!7808954 m!8241132))

(declare-fun m!8241134 () Bool)

(assert (=> bm!724352 m!8241134))

(assert (=> start!741686 d!2348526))

(declare-fun b!7808993 () Bool)

(declare-fun res!3109912 () Bool)

(declare-fun e!4622186 () Bool)

(assert (=> b!7808993 (=> (not res!3109912) (not e!4622186))))

(declare-fun lt!2675702 () Option!17780)

(declare-fun get!26350 (Option!17780) tuple2!69972)

(assert (=> b!7808993 (= res!3109912 (matchR!10353 r2!6217 (_2!38289 (get!26350 lt!2675702))))))

(declare-fun b!7808994 () Bool)

(declare-fun ++!17952 (List!73732 List!73732) List!73732)

(assert (=> b!7808994 (= e!4622186 (= (++!17952 (_1!38289 (get!26350 lt!2675702)) (_2!38289 (get!26350 lt!2675702))) Nil!73608))))

(declare-fun d!2348528 () Bool)

(declare-fun e!4622188 () Bool)

(assert (=> d!2348528 e!4622188))

(declare-fun res!3109913 () Bool)

(assert (=> d!2348528 (=> res!3109913 e!4622188)))

(assert (=> d!2348528 (= res!3109913 e!4622186)))

(declare-fun res!3109911 () Bool)

(assert (=> d!2348528 (=> (not res!3109911) (not e!4622186))))

(assert (=> d!2348528 (= res!3109911 (isDefined!14390 lt!2675702))))

(declare-fun e!4622187 () Option!17780)

(assert (=> d!2348528 (= lt!2675702 e!4622187)))

(declare-fun c!1438023 () Bool)

(declare-fun e!4622185 () Bool)

(assert (=> d!2348528 (= c!1438023 e!4622185)))

(declare-fun res!3109910 () Bool)

(assert (=> d!2348528 (=> (not res!3109910) (not e!4622185))))

(assert (=> d!2348528 (= res!3109910 (matchR!10353 r1!6279 Nil!73608))))

(assert (=> d!2348528 (validRegex!11307 r1!6279)))

(assert (=> d!2348528 (= (findConcatSeparation!3810 r1!6279 r2!6217 Nil!73608 Nil!73608 Nil!73608) lt!2675702)))

(declare-fun b!7808995 () Bool)

(assert (=> b!7808995 (= e!4622188 (not (isDefined!14390 lt!2675702)))))

(declare-fun b!7808996 () Bool)

(declare-datatypes ((Unit!168622 0))(
  ( (Unit!168623) )
))
(declare-fun lt!2675701 () Unit!168622)

(declare-fun lt!2675703 () Unit!168622)

(assert (=> b!7808996 (= lt!2675701 lt!2675703)))

(assert (=> b!7808996 (= (++!17952 (++!17952 Nil!73608 (Cons!73608 (h!80056 Nil!73608) Nil!73608)) (t!388467 Nil!73608)) Nil!73608)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3423 (List!73732 C!42112 List!73732 List!73732) Unit!168622)

(assert (=> b!7808996 (= lt!2675703 (lemmaMoveElementToOtherListKeepsConcatEq!3423 Nil!73608 (h!80056 Nil!73608) (t!388467 Nil!73608) Nil!73608))))

(declare-fun e!4622189 () Option!17780)

(assert (=> b!7808996 (= e!4622189 (findConcatSeparation!3810 r1!6279 r2!6217 (++!17952 Nil!73608 (Cons!73608 (h!80056 Nil!73608) Nil!73608)) (t!388467 Nil!73608) Nil!73608))))

(declare-fun b!7808997 () Bool)

(declare-fun res!3109914 () Bool)

(assert (=> b!7808997 (=> (not res!3109914) (not e!4622186))))

(assert (=> b!7808997 (= res!3109914 (matchR!10353 r1!6279 (_1!38289 (get!26350 lt!2675702))))))

(declare-fun b!7808998 () Bool)

(assert (=> b!7808998 (= e!4622187 (Some!17779 (tuple2!69973 Nil!73608 Nil!73608)))))

(declare-fun b!7808999 () Bool)

(assert (=> b!7808999 (= e!4622189 None!17779)))

(declare-fun b!7809000 () Bool)

(assert (=> b!7809000 (= e!4622187 e!4622189)))

(declare-fun c!1438024 () Bool)

(assert (=> b!7809000 (= c!1438024 ((_ is Nil!73608) Nil!73608))))

(declare-fun b!7809001 () Bool)

(assert (=> b!7809001 (= e!4622185 (matchR!10353 r2!6217 Nil!73608))))

(assert (= (and d!2348528 res!3109910) b!7809001))

(assert (= (and d!2348528 c!1438023) b!7808998))

(assert (= (and d!2348528 (not c!1438023)) b!7809000))

(assert (= (and b!7809000 c!1438024) b!7808999))

(assert (= (and b!7809000 (not c!1438024)) b!7808996))

(assert (= (and d!2348528 res!3109911) b!7808997))

(assert (= (and b!7808997 res!3109914) b!7808993))

(assert (= (and b!7808993 res!3109912) b!7808994))

(assert (= (and d!2348528 (not res!3109913)) b!7808995))

(declare-fun m!8241136 () Bool)

(assert (=> b!7808994 m!8241136))

(declare-fun m!8241138 () Bool)

(assert (=> b!7808994 m!8241138))

(declare-fun m!8241140 () Bool)

(assert (=> b!7808996 m!8241140))

(assert (=> b!7808996 m!8241140))

(declare-fun m!8241142 () Bool)

(assert (=> b!7808996 m!8241142))

(declare-fun m!8241144 () Bool)

(assert (=> b!7808996 m!8241144))

(assert (=> b!7808996 m!8241140))

(declare-fun m!8241146 () Bool)

(assert (=> b!7808996 m!8241146))

(assert (=> b!7808993 m!8241136))

(declare-fun m!8241148 () Bool)

(assert (=> b!7808993 m!8241148))

(declare-fun m!8241150 () Bool)

(assert (=> b!7808995 m!8241150))

(declare-fun m!8241152 () Bool)

(assert (=> b!7809001 m!8241152))

(assert (=> b!7808997 m!8241136))

(declare-fun m!8241154 () Bool)

(assert (=> b!7808997 m!8241154))

(assert (=> d!2348528 m!8241150))

(declare-fun m!8241156 () Bool)

(assert (=> d!2348528 m!8241156))

(assert (=> d!2348528 m!8241120))

(assert (=> b!7808929 d!2348528))

(declare-fun bm!724359 () Bool)

(declare-fun call!724366 () Bool)

(declare-fun c!1438025 () Bool)

(assert (=> bm!724359 (= call!724366 (validRegex!11307 (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))))))

(declare-fun b!7809002 () Bool)

(declare-fun e!4622193 () Bool)

(declare-fun call!724365 () Bool)

(assert (=> b!7809002 (= e!4622193 call!724365)))

(declare-fun b!7809003 () Bool)

(declare-fun res!3109916 () Bool)

(declare-fun e!4622194 () Bool)

(assert (=> b!7809003 (=> res!3109916 e!4622194)))

(assert (=> b!7809003 (= res!3109916 (not ((_ is Concat!29738) r2!6217)))))

(declare-fun e!4622191 () Bool)

(assert (=> b!7809003 (= e!4622191 e!4622194)))

(declare-fun bm!724360 () Bool)

(declare-fun call!724364 () Bool)

(assert (=> bm!724360 (= call!724364 call!724365)))

(declare-fun d!2348532 () Bool)

(declare-fun res!3109917 () Bool)

(declare-fun e!4622196 () Bool)

(assert (=> d!2348532 (=> res!3109917 e!4622196)))

(assert (=> d!2348532 (= res!3109917 ((_ is ElementMatch!20893) r2!6217))))

(assert (=> d!2348532 (= (validRegex!11307 r2!6217) e!4622196)))

(declare-fun b!7809004 () Bool)

(declare-fun e!4622190 () Bool)

(assert (=> b!7809004 (= e!4622196 e!4622190)))

(declare-fun c!1438026 () Bool)

(assert (=> b!7809004 (= c!1438026 ((_ is Star!20893) r2!6217))))

(declare-fun b!7809005 () Bool)

(assert (=> b!7809005 (= e!4622190 e!4622191)))

(assert (=> b!7809005 (= c!1438025 ((_ is Union!20893) r2!6217))))

(declare-fun b!7809006 () Bool)

(declare-fun e!4622195 () Bool)

(assert (=> b!7809006 (= e!4622194 e!4622195)))

(declare-fun res!3109919 () Bool)

(assert (=> b!7809006 (=> (not res!3109919) (not e!4622195))))

(assert (=> b!7809006 (= res!3109919 call!724364)))

(declare-fun b!7809007 () Bool)

(declare-fun e!4622192 () Bool)

(assert (=> b!7809007 (= e!4622192 call!724366)))

(declare-fun b!7809008 () Bool)

(assert (=> b!7809008 (= e!4622190 e!4622193)))

(declare-fun res!3109918 () Bool)

(assert (=> b!7809008 (= res!3109918 (not (nullable!9277 (reg!21222 r2!6217))))))

(assert (=> b!7809008 (=> (not res!3109918) (not e!4622193))))

(declare-fun b!7809009 () Bool)

(assert (=> b!7809009 (= e!4622195 call!724366)))

(declare-fun b!7809010 () Bool)

(declare-fun res!3109915 () Bool)

(assert (=> b!7809010 (=> (not res!3109915) (not e!4622192))))

(assert (=> b!7809010 (= res!3109915 call!724364)))

(assert (=> b!7809010 (= e!4622191 e!4622192)))

(declare-fun bm!724361 () Bool)

(assert (=> bm!724361 (= call!724365 (validRegex!11307 (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))))))

(assert (= (and d!2348532 (not res!3109917)) b!7809004))

(assert (= (and b!7809004 c!1438026) b!7809008))

(assert (= (and b!7809004 (not c!1438026)) b!7809005))

(assert (= (and b!7809008 res!3109918) b!7809002))

(assert (= (and b!7809005 c!1438025) b!7809010))

(assert (= (and b!7809005 (not c!1438025)) b!7809003))

(assert (= (and b!7809010 res!3109915) b!7809007))

(assert (= (and b!7809003 (not res!3109916)) b!7809006))

(assert (= (and b!7809006 res!3109919) b!7809009))

(assert (= (or b!7809010 b!7809006) bm!724360))

(assert (= (or b!7809007 b!7809009) bm!724359))

(assert (= (or b!7809002 bm!724360) bm!724361))

(declare-fun m!8241158 () Bool)

(assert (=> bm!724359 m!8241158))

(declare-fun m!8241160 () Bool)

(assert (=> b!7809008 m!8241160))

(declare-fun m!8241162 () Bool)

(assert (=> bm!724361 m!8241162))

(assert (=> b!7808914 d!2348532))

(declare-fun d!2348534 () Bool)

(declare-fun nullableFct!3655 (Regex!20893) Bool)

(assert (=> d!2348534 (= (nullable!9277 r2!6217) (nullableFct!3655 r2!6217))))

(declare-fun bs!1966594 () Bool)

(assert (= bs!1966594 d!2348534))

(declare-fun m!8241164 () Bool)

(assert (=> bs!1966594 m!8241164))

(assert (=> b!7808917 d!2348534))

(declare-fun d!2348536 () Bool)

(assert (=> d!2348536 (= (nullable!9277 r1!6279) (nullableFct!3655 r1!6279))))

(declare-fun bs!1966595 () Bool)

(assert (= bs!1966595 d!2348536))

(declare-fun m!8241166 () Bool)

(assert (=> bs!1966595 m!8241166))

(assert (=> b!7808928 d!2348536))

(declare-fun b!7809048 () Bool)

(declare-fun res!3109944 () Bool)

(declare-fun e!4622221 () Bool)

(assert (=> b!7809048 (=> (not res!3109944) (not e!4622221))))

(declare-fun isEmpty!42264 (List!73732) Bool)

(declare-fun tail!15508 (List!73732) List!73732)

(assert (=> b!7809048 (= res!3109944 (isEmpty!42264 (tail!15508 s!14292)))))

(declare-fun e!4622223 () Bool)

(declare-fun b!7809049 () Bool)

(declare-fun head!15967 (List!73732) C!42112)

(assert (=> b!7809049 (= e!4622223 (not (= (head!15967 s!14292) (c!1438008 (Concat!29738 r1!6279 r2!6217)))))))

(declare-fun bm!724367 () Bool)

(declare-fun call!724372 () Bool)

(assert (=> bm!724367 (= call!724372 (isEmpty!42264 s!14292))))

(declare-fun b!7809050 () Bool)

(declare-fun res!3109941 () Bool)

(declare-fun e!4622219 () Bool)

(assert (=> b!7809050 (=> res!3109941 e!4622219)))

(assert (=> b!7809050 (= res!3109941 e!4622221)))

(declare-fun res!3109947 () Bool)

(assert (=> b!7809050 (=> (not res!3109947) (not e!4622221))))

(declare-fun lt!2675706 () Bool)

(assert (=> b!7809050 (= res!3109947 lt!2675706)))

(declare-fun b!7809051 () Bool)

(declare-fun e!4622220 () Bool)

(assert (=> b!7809051 (= e!4622219 e!4622220)))

(declare-fun res!3109948 () Bool)

(assert (=> b!7809051 (=> (not res!3109948) (not e!4622220))))

(assert (=> b!7809051 (= res!3109948 (not lt!2675706))))

(declare-fun b!7809052 () Bool)

(declare-fun res!3109943 () Bool)

(assert (=> b!7809052 (=> res!3109943 e!4622219)))

(assert (=> b!7809052 (= res!3109943 (not ((_ is ElementMatch!20893) (Concat!29738 r1!6279 r2!6217))))))

(declare-fun e!4622224 () Bool)

(assert (=> b!7809052 (= e!4622224 e!4622219)))

(declare-fun b!7809053 () Bool)

(assert (=> b!7809053 (= e!4622224 (not lt!2675706))))

(declare-fun b!7809054 () Bool)

(declare-fun res!3109945 () Bool)

(assert (=> b!7809054 (=> (not res!3109945) (not e!4622221))))

(assert (=> b!7809054 (= res!3109945 (not call!724372))))

(declare-fun b!7809055 () Bool)

(declare-fun e!4622222 () Bool)

(assert (=> b!7809055 (= e!4622222 (nullable!9277 (Concat!29738 r1!6279 r2!6217)))))

(declare-fun b!7809056 () Bool)

(assert (=> b!7809056 (= e!4622221 (= (head!15967 s!14292) (c!1438008 (Concat!29738 r1!6279 r2!6217))))))

(declare-fun b!7809057 () Bool)

(declare-fun e!4622218 () Bool)

(assert (=> b!7809057 (= e!4622218 (= lt!2675706 call!724372))))

(declare-fun b!7809058 () Bool)

(declare-fun derivativeStep!6229 (Regex!20893 C!42112) Regex!20893)

(assert (=> b!7809058 (= e!4622222 (matchR!10353 (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292)) (tail!15508 s!14292)))))

(declare-fun d!2348538 () Bool)

(assert (=> d!2348538 e!4622218))

(declare-fun c!1438035 () Bool)

(assert (=> d!2348538 (= c!1438035 ((_ is EmptyExpr!20893) (Concat!29738 r1!6279 r2!6217)))))

(assert (=> d!2348538 (= lt!2675706 e!4622222)))

(declare-fun c!1438037 () Bool)

(assert (=> d!2348538 (= c!1438037 (isEmpty!42264 s!14292))))

(assert (=> d!2348538 (validRegex!11307 (Concat!29738 r1!6279 r2!6217))))

(assert (=> d!2348538 (= (matchR!10353 (Concat!29738 r1!6279 r2!6217) s!14292) lt!2675706)))

(declare-fun b!7809059 () Bool)

(assert (=> b!7809059 (= e!4622220 e!4622223)))

(declare-fun res!3109942 () Bool)

(assert (=> b!7809059 (=> res!3109942 e!4622223)))

(assert (=> b!7809059 (= res!3109942 call!724372)))

(declare-fun b!7809060 () Bool)

(assert (=> b!7809060 (= e!4622218 e!4622224)))

(declare-fun c!1438036 () Bool)

(assert (=> b!7809060 (= c!1438036 ((_ is EmptyLang!20893) (Concat!29738 r1!6279 r2!6217)))))

(declare-fun b!7809061 () Bool)

(declare-fun res!3109946 () Bool)

(assert (=> b!7809061 (=> res!3109946 e!4622223)))

(assert (=> b!7809061 (= res!3109946 (not (isEmpty!42264 (tail!15508 s!14292))))))

(assert (= (and d!2348538 c!1438037) b!7809055))

(assert (= (and d!2348538 (not c!1438037)) b!7809058))

(assert (= (and d!2348538 c!1438035) b!7809057))

(assert (= (and d!2348538 (not c!1438035)) b!7809060))

(assert (= (and b!7809060 c!1438036) b!7809053))

(assert (= (and b!7809060 (not c!1438036)) b!7809052))

(assert (= (and b!7809052 (not res!3109943)) b!7809050))

(assert (= (and b!7809050 res!3109947) b!7809054))

(assert (= (and b!7809054 res!3109945) b!7809048))

(assert (= (and b!7809048 res!3109944) b!7809056))

(assert (= (and b!7809050 (not res!3109941)) b!7809051))

(assert (= (and b!7809051 res!3109948) b!7809059))

(assert (= (and b!7809059 (not res!3109942)) b!7809061))

(assert (= (and b!7809061 (not res!3109946)) b!7809049))

(assert (= (or b!7809057 b!7809054 b!7809059) bm!724367))

(declare-fun m!8241174 () Bool)

(assert (=> b!7809048 m!8241174))

(assert (=> b!7809048 m!8241174))

(declare-fun m!8241176 () Bool)

(assert (=> b!7809048 m!8241176))

(declare-fun m!8241178 () Bool)

(assert (=> b!7809049 m!8241178))

(assert (=> b!7809058 m!8241178))

(assert (=> b!7809058 m!8241178))

(declare-fun m!8241180 () Bool)

(assert (=> b!7809058 m!8241180))

(assert (=> b!7809058 m!8241174))

(assert (=> b!7809058 m!8241180))

(assert (=> b!7809058 m!8241174))

(declare-fun m!8241182 () Bool)

(assert (=> b!7809058 m!8241182))

(declare-fun m!8241184 () Bool)

(assert (=> bm!724367 m!8241184))

(declare-fun m!8241186 () Bool)

(assert (=> b!7809055 m!8241186))

(assert (=> b!7809056 m!8241178))

(assert (=> d!2348538 m!8241184))

(declare-fun m!8241188 () Bool)

(assert (=> d!2348538 m!8241188))

(assert (=> b!7809061 m!8241174))

(assert (=> b!7809061 m!8241174))

(assert (=> b!7809061 m!8241176))

(assert (=> b!7808923 d!2348538))

(declare-fun d!2348542 () Bool)

(declare-fun isEmpty!42265 (Option!17780) Bool)

(assert (=> d!2348542 (= (isDefined!14390 (findConcatSeparation!3810 r1!6279 r2!6217 Nil!73608 s!14292 s!14292)) (not (isEmpty!42265 (findConcatSeparation!3810 r1!6279 r2!6217 Nil!73608 s!14292 s!14292))))))

(declare-fun bs!1966596 () Bool)

(assert (= bs!1966596 d!2348542))

(assert (=> bs!1966596 m!8241124))

(declare-fun m!8241190 () Bool)

(assert (=> bs!1966596 m!8241190))

(assert (=> b!7808922 d!2348542))

(declare-fun b!7809062 () Bool)

(declare-fun res!3109951 () Bool)

(declare-fun e!4622226 () Bool)

(assert (=> b!7809062 (=> (not res!3109951) (not e!4622226))))

(declare-fun lt!2675708 () Option!17780)

(assert (=> b!7809062 (= res!3109951 (matchR!10353 r2!6217 (_2!38289 (get!26350 lt!2675708))))))

(declare-fun b!7809063 () Bool)

(assert (=> b!7809063 (= e!4622226 (= (++!17952 (_1!38289 (get!26350 lt!2675708)) (_2!38289 (get!26350 lt!2675708))) s!14292))))

(declare-fun d!2348544 () Bool)

(declare-fun e!4622228 () Bool)

(assert (=> d!2348544 e!4622228))

(declare-fun res!3109952 () Bool)

(assert (=> d!2348544 (=> res!3109952 e!4622228)))

(assert (=> d!2348544 (= res!3109952 e!4622226)))

(declare-fun res!3109950 () Bool)

(assert (=> d!2348544 (=> (not res!3109950) (not e!4622226))))

(assert (=> d!2348544 (= res!3109950 (isDefined!14390 lt!2675708))))

(declare-fun e!4622227 () Option!17780)

(assert (=> d!2348544 (= lt!2675708 e!4622227)))

(declare-fun c!1438038 () Bool)

(declare-fun e!4622225 () Bool)

(assert (=> d!2348544 (= c!1438038 e!4622225)))

(declare-fun res!3109949 () Bool)

(assert (=> d!2348544 (=> (not res!3109949) (not e!4622225))))

(assert (=> d!2348544 (= res!3109949 (matchR!10353 r1!6279 Nil!73608))))

(assert (=> d!2348544 (validRegex!11307 r1!6279)))

(assert (=> d!2348544 (= (findConcatSeparation!3810 r1!6279 r2!6217 Nil!73608 s!14292 s!14292) lt!2675708)))

(declare-fun b!7809064 () Bool)

(assert (=> b!7809064 (= e!4622228 (not (isDefined!14390 lt!2675708)))))

(declare-fun b!7809065 () Bool)

(declare-fun lt!2675707 () Unit!168622)

(declare-fun lt!2675709 () Unit!168622)

(assert (=> b!7809065 (= lt!2675707 lt!2675709)))

(assert (=> b!7809065 (= (++!17952 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) (t!388467 s!14292)) s!14292)))

(assert (=> b!7809065 (= lt!2675709 (lemmaMoveElementToOtherListKeepsConcatEq!3423 Nil!73608 (h!80056 s!14292) (t!388467 s!14292) s!14292))))

(declare-fun e!4622229 () Option!17780)

(assert (=> b!7809065 (= e!4622229 (findConcatSeparation!3810 r1!6279 r2!6217 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) (t!388467 s!14292) s!14292))))

(declare-fun b!7809066 () Bool)

(declare-fun res!3109953 () Bool)

(assert (=> b!7809066 (=> (not res!3109953) (not e!4622226))))

(assert (=> b!7809066 (= res!3109953 (matchR!10353 r1!6279 (_1!38289 (get!26350 lt!2675708))))))

(declare-fun b!7809067 () Bool)

(assert (=> b!7809067 (= e!4622227 (Some!17779 (tuple2!69973 Nil!73608 s!14292)))))

(declare-fun b!7809068 () Bool)

(assert (=> b!7809068 (= e!4622229 None!17779)))

(declare-fun b!7809069 () Bool)

(assert (=> b!7809069 (= e!4622227 e!4622229)))

(declare-fun c!1438039 () Bool)

(assert (=> b!7809069 (= c!1438039 ((_ is Nil!73608) s!14292))))

(declare-fun b!7809070 () Bool)

(assert (=> b!7809070 (= e!4622225 (matchR!10353 r2!6217 s!14292))))

(assert (= (and d!2348544 res!3109949) b!7809070))

(assert (= (and d!2348544 c!1438038) b!7809067))

(assert (= (and d!2348544 (not c!1438038)) b!7809069))

(assert (= (and b!7809069 c!1438039) b!7809068))

(assert (= (and b!7809069 (not c!1438039)) b!7809065))

(assert (= (and d!2348544 res!3109950) b!7809066))

(assert (= (and b!7809066 res!3109953) b!7809062))

(assert (= (and b!7809062 res!3109951) b!7809063))

(assert (= (and d!2348544 (not res!3109952)) b!7809064))

(declare-fun m!8241192 () Bool)

(assert (=> b!7809063 m!8241192))

(declare-fun m!8241194 () Bool)

(assert (=> b!7809063 m!8241194))

(declare-fun m!8241196 () Bool)

(assert (=> b!7809065 m!8241196))

(assert (=> b!7809065 m!8241196))

(declare-fun m!8241198 () Bool)

(assert (=> b!7809065 m!8241198))

(declare-fun m!8241200 () Bool)

(assert (=> b!7809065 m!8241200))

(assert (=> b!7809065 m!8241196))

(declare-fun m!8241202 () Bool)

(assert (=> b!7809065 m!8241202))

(assert (=> b!7809062 m!8241192))

(declare-fun m!8241204 () Bool)

(assert (=> b!7809062 m!8241204))

(declare-fun m!8241206 () Bool)

(assert (=> b!7809064 m!8241206))

(declare-fun m!8241208 () Bool)

(assert (=> b!7809070 m!8241208))

(assert (=> b!7809066 m!8241192))

(declare-fun m!8241210 () Bool)

(assert (=> b!7809066 m!8241210))

(assert (=> d!2348544 m!8241206))

(assert (=> d!2348544 m!8241156))

(assert (=> d!2348544 m!8241120))

(assert (=> b!7808922 d!2348544))

(declare-fun b!7809083 () Bool)

(declare-fun e!4622232 () Bool)

(declare-fun tp!2300646 () Bool)

(assert (=> b!7809083 (= e!4622232 tp!2300646)))

(declare-fun b!7809081 () Bool)

(assert (=> b!7809081 (= e!4622232 tp_is_empty!52141)))

(declare-fun b!7809082 () Bool)

(declare-fun tp!2300645 () Bool)

(declare-fun tp!2300648 () Bool)

(assert (=> b!7809082 (= e!4622232 (and tp!2300645 tp!2300648))))

(assert (=> b!7808925 (= tp!2300632 e!4622232)))

(declare-fun b!7809084 () Bool)

(declare-fun tp!2300647 () Bool)

(declare-fun tp!2300644 () Bool)

(assert (=> b!7809084 (= e!4622232 (and tp!2300647 tp!2300644))))

(assert (= (and b!7808925 ((_ is ElementMatch!20893) (regOne!42299 r1!6279))) b!7809081))

(assert (= (and b!7808925 ((_ is Concat!29738) (regOne!42299 r1!6279))) b!7809082))

(assert (= (and b!7808925 ((_ is Star!20893) (regOne!42299 r1!6279))) b!7809083))

(assert (= (and b!7808925 ((_ is Union!20893) (regOne!42299 r1!6279))) b!7809084))

(declare-fun b!7809087 () Bool)

(declare-fun e!4622233 () Bool)

(declare-fun tp!2300651 () Bool)

(assert (=> b!7809087 (= e!4622233 tp!2300651)))

(declare-fun b!7809085 () Bool)

(assert (=> b!7809085 (= e!4622233 tp_is_empty!52141)))

(declare-fun b!7809086 () Bool)

(declare-fun tp!2300650 () Bool)

(declare-fun tp!2300653 () Bool)

(assert (=> b!7809086 (= e!4622233 (and tp!2300650 tp!2300653))))

(assert (=> b!7808925 (= tp!2300633 e!4622233)))

(declare-fun b!7809088 () Bool)

(declare-fun tp!2300652 () Bool)

(declare-fun tp!2300649 () Bool)

(assert (=> b!7809088 (= e!4622233 (and tp!2300652 tp!2300649))))

(assert (= (and b!7808925 ((_ is ElementMatch!20893) (regTwo!42299 r1!6279))) b!7809085))

(assert (= (and b!7808925 ((_ is Concat!29738) (regTwo!42299 r1!6279))) b!7809086))

(assert (= (and b!7808925 ((_ is Star!20893) (regTwo!42299 r1!6279))) b!7809087))

(assert (= (and b!7808925 ((_ is Union!20893) (regTwo!42299 r1!6279))) b!7809088))

(declare-fun b!7809091 () Bool)

(declare-fun e!4622234 () Bool)

(declare-fun tp!2300656 () Bool)

(assert (=> b!7809091 (= e!4622234 tp!2300656)))

(declare-fun b!7809089 () Bool)

(assert (=> b!7809089 (= e!4622234 tp_is_empty!52141)))

(declare-fun b!7809090 () Bool)

(declare-fun tp!2300655 () Bool)

(declare-fun tp!2300658 () Bool)

(assert (=> b!7809090 (= e!4622234 (and tp!2300655 tp!2300658))))

(assert (=> b!7808915 (= tp!2300630 e!4622234)))

(declare-fun b!7809092 () Bool)

(declare-fun tp!2300657 () Bool)

(declare-fun tp!2300654 () Bool)

(assert (=> b!7809092 (= e!4622234 (and tp!2300657 tp!2300654))))

(assert (= (and b!7808915 ((_ is ElementMatch!20893) (reg!21222 r2!6217))) b!7809089))

(assert (= (and b!7808915 ((_ is Concat!29738) (reg!21222 r2!6217))) b!7809090))

(assert (= (and b!7808915 ((_ is Star!20893) (reg!21222 r2!6217))) b!7809091))

(assert (= (and b!7808915 ((_ is Union!20893) (reg!21222 r2!6217))) b!7809092))

(declare-fun b!7809097 () Bool)

(declare-fun e!4622237 () Bool)

(declare-fun tp!2300661 () Bool)

(assert (=> b!7809097 (= e!4622237 (and tp_is_empty!52141 tp!2300661))))

(assert (=> b!7808926 (= tp!2300625 e!4622237)))

(assert (= (and b!7808926 ((_ is Cons!73608) (t!388467 s!14292))) b!7809097))

(declare-fun b!7809100 () Bool)

(declare-fun e!4622238 () Bool)

(declare-fun tp!2300664 () Bool)

(assert (=> b!7809100 (= e!4622238 tp!2300664)))

(declare-fun b!7809098 () Bool)

(assert (=> b!7809098 (= e!4622238 tp_is_empty!52141)))

(declare-fun b!7809099 () Bool)

(declare-fun tp!2300663 () Bool)

(declare-fun tp!2300666 () Bool)

(assert (=> b!7809099 (= e!4622238 (and tp!2300663 tp!2300666))))

(assert (=> b!7808924 (= tp!2300624 e!4622238)))

(declare-fun b!7809101 () Bool)

(declare-fun tp!2300665 () Bool)

(declare-fun tp!2300662 () Bool)

(assert (=> b!7809101 (= e!4622238 (and tp!2300665 tp!2300662))))

(assert (= (and b!7808924 ((_ is ElementMatch!20893) (reg!21222 r1!6279))) b!7809098))

(assert (= (and b!7808924 ((_ is Concat!29738) (reg!21222 r1!6279))) b!7809099))

(assert (= (and b!7808924 ((_ is Star!20893) (reg!21222 r1!6279))) b!7809100))

(assert (= (and b!7808924 ((_ is Union!20893) (reg!21222 r1!6279))) b!7809101))

(declare-fun b!7809104 () Bool)

(declare-fun e!4622239 () Bool)

(declare-fun tp!2300669 () Bool)

(assert (=> b!7809104 (= e!4622239 tp!2300669)))

(declare-fun b!7809102 () Bool)

(assert (=> b!7809102 (= e!4622239 tp_is_empty!52141)))

(declare-fun b!7809103 () Bool)

(declare-fun tp!2300668 () Bool)

(declare-fun tp!2300671 () Bool)

(assert (=> b!7809103 (= e!4622239 (and tp!2300668 tp!2300671))))

(assert (=> b!7808918 (= tp!2300623 e!4622239)))

(declare-fun b!7809105 () Bool)

(declare-fun tp!2300670 () Bool)

(declare-fun tp!2300667 () Bool)

(assert (=> b!7809105 (= e!4622239 (and tp!2300670 tp!2300667))))

(assert (= (and b!7808918 ((_ is ElementMatch!20893) (regOne!42298 r2!6217))) b!7809102))

(assert (= (and b!7808918 ((_ is Concat!29738) (regOne!42298 r2!6217))) b!7809103))

(assert (= (and b!7808918 ((_ is Star!20893) (regOne!42298 r2!6217))) b!7809104))

(assert (= (and b!7808918 ((_ is Union!20893) (regOne!42298 r2!6217))) b!7809105))

(declare-fun b!7809108 () Bool)

(declare-fun e!4622240 () Bool)

(declare-fun tp!2300674 () Bool)

(assert (=> b!7809108 (= e!4622240 tp!2300674)))

(declare-fun b!7809106 () Bool)

(assert (=> b!7809106 (= e!4622240 tp_is_empty!52141)))

(declare-fun b!7809107 () Bool)

(declare-fun tp!2300673 () Bool)

(declare-fun tp!2300676 () Bool)

(assert (=> b!7809107 (= e!4622240 (and tp!2300673 tp!2300676))))

(assert (=> b!7808918 (= tp!2300626 e!4622240)))

(declare-fun b!7809109 () Bool)

(declare-fun tp!2300675 () Bool)

(declare-fun tp!2300672 () Bool)

(assert (=> b!7809109 (= e!4622240 (and tp!2300675 tp!2300672))))

(assert (= (and b!7808918 ((_ is ElementMatch!20893) (regTwo!42298 r2!6217))) b!7809106))

(assert (= (and b!7808918 ((_ is Concat!29738) (regTwo!42298 r2!6217))) b!7809107))

(assert (= (and b!7808918 ((_ is Star!20893) (regTwo!42298 r2!6217))) b!7809108))

(assert (= (and b!7808918 ((_ is Union!20893) (regTwo!42298 r2!6217))) b!7809109))

(declare-fun b!7809112 () Bool)

(declare-fun e!4622241 () Bool)

(declare-fun tp!2300679 () Bool)

(assert (=> b!7809112 (= e!4622241 tp!2300679)))

(declare-fun b!7809110 () Bool)

(assert (=> b!7809110 (= e!4622241 tp_is_empty!52141)))

(declare-fun b!7809111 () Bool)

(declare-fun tp!2300678 () Bool)

(declare-fun tp!2300681 () Bool)

(assert (=> b!7809111 (= e!4622241 (and tp!2300678 tp!2300681))))

(assert (=> b!7808916 (= tp!2300628 e!4622241)))

(declare-fun b!7809113 () Bool)

(declare-fun tp!2300680 () Bool)

(declare-fun tp!2300677 () Bool)

(assert (=> b!7809113 (= e!4622241 (and tp!2300680 tp!2300677))))

(assert (= (and b!7808916 ((_ is ElementMatch!20893) (regOne!42299 r2!6217))) b!7809110))

(assert (= (and b!7808916 ((_ is Concat!29738) (regOne!42299 r2!6217))) b!7809111))

(assert (= (and b!7808916 ((_ is Star!20893) (regOne!42299 r2!6217))) b!7809112))

(assert (= (and b!7808916 ((_ is Union!20893) (regOne!42299 r2!6217))) b!7809113))

(declare-fun b!7809116 () Bool)

(declare-fun e!4622242 () Bool)

(declare-fun tp!2300684 () Bool)

(assert (=> b!7809116 (= e!4622242 tp!2300684)))

(declare-fun b!7809114 () Bool)

(assert (=> b!7809114 (= e!4622242 tp_is_empty!52141)))

(declare-fun b!7809115 () Bool)

(declare-fun tp!2300683 () Bool)

(declare-fun tp!2300686 () Bool)

(assert (=> b!7809115 (= e!4622242 (and tp!2300683 tp!2300686))))

(assert (=> b!7808916 (= tp!2300627 e!4622242)))

(declare-fun b!7809117 () Bool)

(declare-fun tp!2300685 () Bool)

(declare-fun tp!2300682 () Bool)

(assert (=> b!7809117 (= e!4622242 (and tp!2300685 tp!2300682))))

(assert (= (and b!7808916 ((_ is ElementMatch!20893) (regTwo!42299 r2!6217))) b!7809114))

(assert (= (and b!7808916 ((_ is Concat!29738) (regTwo!42299 r2!6217))) b!7809115))

(assert (= (and b!7808916 ((_ is Star!20893) (regTwo!42299 r2!6217))) b!7809116))

(assert (= (and b!7808916 ((_ is Union!20893) (regTwo!42299 r2!6217))) b!7809117))

(declare-fun b!7809120 () Bool)

(declare-fun e!4622243 () Bool)

(declare-fun tp!2300689 () Bool)

(assert (=> b!7809120 (= e!4622243 tp!2300689)))

(declare-fun b!7809118 () Bool)

(assert (=> b!7809118 (= e!4622243 tp_is_empty!52141)))

(declare-fun b!7809119 () Bool)

(declare-fun tp!2300688 () Bool)

(declare-fun tp!2300691 () Bool)

(assert (=> b!7809119 (= e!4622243 (and tp!2300688 tp!2300691))))

(assert (=> b!7808927 (= tp!2300629 e!4622243)))

(declare-fun b!7809121 () Bool)

(declare-fun tp!2300690 () Bool)

(declare-fun tp!2300687 () Bool)

(assert (=> b!7809121 (= e!4622243 (and tp!2300690 tp!2300687))))

(assert (= (and b!7808927 ((_ is ElementMatch!20893) (regOne!42298 r1!6279))) b!7809118))

(assert (= (and b!7808927 ((_ is Concat!29738) (regOne!42298 r1!6279))) b!7809119))

(assert (= (and b!7808927 ((_ is Star!20893) (regOne!42298 r1!6279))) b!7809120))

(assert (= (and b!7808927 ((_ is Union!20893) (regOne!42298 r1!6279))) b!7809121))

(declare-fun b!7809124 () Bool)

(declare-fun e!4622244 () Bool)

(declare-fun tp!2300694 () Bool)

(assert (=> b!7809124 (= e!4622244 tp!2300694)))

(declare-fun b!7809122 () Bool)

(assert (=> b!7809122 (= e!4622244 tp_is_empty!52141)))

(declare-fun b!7809123 () Bool)

(declare-fun tp!2300693 () Bool)

(declare-fun tp!2300696 () Bool)

(assert (=> b!7809123 (= e!4622244 (and tp!2300693 tp!2300696))))

(assert (=> b!7808927 (= tp!2300631 e!4622244)))

(declare-fun b!7809125 () Bool)

(declare-fun tp!2300695 () Bool)

(declare-fun tp!2300692 () Bool)

(assert (=> b!7809125 (= e!4622244 (and tp!2300695 tp!2300692))))

(assert (= (and b!7808927 ((_ is ElementMatch!20893) (regTwo!42298 r1!6279))) b!7809122))

(assert (= (and b!7808927 ((_ is Concat!29738) (regTwo!42298 r1!6279))) b!7809123))

(assert (= (and b!7808927 ((_ is Star!20893) (regTwo!42298 r1!6279))) b!7809124))

(assert (= (and b!7808927 ((_ is Union!20893) (regTwo!42298 r1!6279))) b!7809125))

(check-sat (not b!7809115) (not d!2348542) (not b!7808997) (not bm!724367) (not b!7809049) (not b!7809065) (not d!2348534) (not bm!724352) (not b!7809121) (not d!2348528) (not bm!724361) (not b!7809116) (not b!7809084) (not b!7809087) (not b!7809109) (not b!7809125) (not b!7809062) (not b!7809104) (not b!7809066) (not b!7809086) (not b!7809008) (not b!7809101) (not b!7809123) (not b!7809090) (not b!7809064) (not bm!724350) (not b!7809120) (not b!7809058) (not b!7809107) (not b!7809111) tp_is_empty!52141 (not b!7809082) (not b!7809001) (not b!7809124) (not b!7809117) (not b!7809100) (not b!7809091) (not b!7809113) (not b!7808994) (not d!2348538) (not b!7809108) (not b!7809097) (not b!7809055) (not b!7809105) (not d!2348544) (not b!7809056) (not bm!724359) (not b!7809103) (not b!7808996) (not b!7808954) (not b!7809119) (not b!7808993) (not b!7809112) (not b!7809061) (not b!7809092) (not b!7809099) (not b!7809088) (not b!7809070) (not b!7809048) (not b!7809063) (not b!7808995) (not b!7809083) (not d!2348536))
(check-sat)
(get-model)

(declare-fun b!7809268 () Bool)

(declare-fun res!3110006 () Bool)

(declare-fun e!4622311 () Bool)

(assert (=> b!7809268 (=> (not res!3110006) (not e!4622311))))

(assert (=> b!7809268 (= res!3110006 (isEmpty!42264 (tail!15508 (_2!38289 (get!26350 lt!2675702)))))))

(declare-fun b!7809269 () Bool)

(declare-fun e!4622313 () Bool)

(assert (=> b!7809269 (= e!4622313 (not (= (head!15967 (_2!38289 (get!26350 lt!2675702))) (c!1438008 r2!6217))))))

(declare-fun bm!724374 () Bool)

(declare-fun call!724379 () Bool)

(assert (=> bm!724374 (= call!724379 (isEmpty!42264 (_2!38289 (get!26350 lt!2675702))))))

(declare-fun b!7809270 () Bool)

(declare-fun res!3110003 () Bool)

(declare-fun e!4622309 () Bool)

(assert (=> b!7809270 (=> res!3110003 e!4622309)))

(assert (=> b!7809270 (= res!3110003 e!4622311)))

(declare-fun res!3110009 () Bool)

(assert (=> b!7809270 (=> (not res!3110009) (not e!4622311))))

(declare-fun lt!2675725 () Bool)

(assert (=> b!7809270 (= res!3110009 lt!2675725)))

(declare-fun b!7809271 () Bool)

(declare-fun e!4622310 () Bool)

(assert (=> b!7809271 (= e!4622309 e!4622310)))

(declare-fun res!3110010 () Bool)

(assert (=> b!7809271 (=> (not res!3110010) (not e!4622310))))

(assert (=> b!7809271 (= res!3110010 (not lt!2675725))))

(declare-fun b!7809272 () Bool)

(declare-fun res!3110005 () Bool)

(assert (=> b!7809272 (=> res!3110005 e!4622309)))

(assert (=> b!7809272 (= res!3110005 (not ((_ is ElementMatch!20893) r2!6217)))))

(declare-fun e!4622314 () Bool)

(assert (=> b!7809272 (= e!4622314 e!4622309)))

(declare-fun b!7809273 () Bool)

(assert (=> b!7809273 (= e!4622314 (not lt!2675725))))

(declare-fun b!7809274 () Bool)

(declare-fun res!3110007 () Bool)

(assert (=> b!7809274 (=> (not res!3110007) (not e!4622311))))

(assert (=> b!7809274 (= res!3110007 (not call!724379))))

(declare-fun b!7809275 () Bool)

(declare-fun e!4622312 () Bool)

(assert (=> b!7809275 (= e!4622312 (nullable!9277 r2!6217))))

(declare-fun b!7809276 () Bool)

(assert (=> b!7809276 (= e!4622311 (= (head!15967 (_2!38289 (get!26350 lt!2675702))) (c!1438008 r2!6217)))))

(declare-fun b!7809277 () Bool)

(declare-fun e!4622308 () Bool)

(assert (=> b!7809277 (= e!4622308 (= lt!2675725 call!724379))))

(declare-fun b!7809278 () Bool)

(assert (=> b!7809278 (= e!4622312 (matchR!10353 (derivativeStep!6229 r2!6217 (head!15967 (_2!38289 (get!26350 lt!2675702)))) (tail!15508 (_2!38289 (get!26350 lt!2675702)))))))

(declare-fun d!2348558 () Bool)

(assert (=> d!2348558 e!4622308))

(declare-fun c!1438059 () Bool)

(assert (=> d!2348558 (= c!1438059 ((_ is EmptyExpr!20893) r2!6217))))

(assert (=> d!2348558 (= lt!2675725 e!4622312)))

(declare-fun c!1438061 () Bool)

(assert (=> d!2348558 (= c!1438061 (isEmpty!42264 (_2!38289 (get!26350 lt!2675702))))))

(assert (=> d!2348558 (validRegex!11307 r2!6217)))

(assert (=> d!2348558 (= (matchR!10353 r2!6217 (_2!38289 (get!26350 lt!2675702))) lt!2675725)))

(declare-fun b!7809279 () Bool)

(assert (=> b!7809279 (= e!4622310 e!4622313)))

(declare-fun res!3110004 () Bool)

(assert (=> b!7809279 (=> res!3110004 e!4622313)))

(assert (=> b!7809279 (= res!3110004 call!724379)))

(declare-fun b!7809280 () Bool)

(assert (=> b!7809280 (= e!4622308 e!4622314)))

(declare-fun c!1438060 () Bool)

(assert (=> b!7809280 (= c!1438060 ((_ is EmptyLang!20893) r2!6217))))

(declare-fun b!7809281 () Bool)

(declare-fun res!3110008 () Bool)

(assert (=> b!7809281 (=> res!3110008 e!4622313)))

(assert (=> b!7809281 (= res!3110008 (not (isEmpty!42264 (tail!15508 (_2!38289 (get!26350 lt!2675702))))))))

(assert (= (and d!2348558 c!1438061) b!7809275))

(assert (= (and d!2348558 (not c!1438061)) b!7809278))

(assert (= (and d!2348558 c!1438059) b!7809277))

(assert (= (and d!2348558 (not c!1438059)) b!7809280))

(assert (= (and b!7809280 c!1438060) b!7809273))

(assert (= (and b!7809280 (not c!1438060)) b!7809272))

(assert (= (and b!7809272 (not res!3110005)) b!7809270))

(assert (= (and b!7809270 res!3110009) b!7809274))

(assert (= (and b!7809274 res!3110007) b!7809268))

(assert (= (and b!7809268 res!3110006) b!7809276))

(assert (= (and b!7809270 (not res!3110003)) b!7809271))

(assert (= (and b!7809271 res!3110010) b!7809279))

(assert (= (and b!7809279 (not res!3110004)) b!7809281))

(assert (= (and b!7809281 (not res!3110008)) b!7809269))

(assert (= (or b!7809277 b!7809274 b!7809279) bm!724374))

(declare-fun m!8241282 () Bool)

(assert (=> b!7809268 m!8241282))

(assert (=> b!7809268 m!8241282))

(declare-fun m!8241284 () Bool)

(assert (=> b!7809268 m!8241284))

(declare-fun m!8241286 () Bool)

(assert (=> b!7809269 m!8241286))

(assert (=> b!7809278 m!8241286))

(assert (=> b!7809278 m!8241286))

(declare-fun m!8241288 () Bool)

(assert (=> b!7809278 m!8241288))

(assert (=> b!7809278 m!8241282))

(assert (=> b!7809278 m!8241288))

(assert (=> b!7809278 m!8241282))

(declare-fun m!8241290 () Bool)

(assert (=> b!7809278 m!8241290))

(declare-fun m!8241292 () Bool)

(assert (=> bm!724374 m!8241292))

(assert (=> b!7809275 m!8241122))

(assert (=> b!7809276 m!8241286))

(assert (=> d!2348558 m!8241292))

(assert (=> d!2348558 m!8241128))

(assert (=> b!7809281 m!8241282))

(assert (=> b!7809281 m!8241282))

(assert (=> b!7809281 m!8241284))

(assert (=> b!7808993 d!2348558))

(declare-fun d!2348560 () Bool)

(assert (=> d!2348560 (= (get!26350 lt!2675702) (v!54914 lt!2675702))))

(assert (=> b!7808993 d!2348560))

(declare-fun b!7809282 () Bool)

(declare-fun res!3110014 () Bool)

(declare-fun e!4622318 () Bool)

(assert (=> b!7809282 (=> (not res!3110014) (not e!4622318))))

(assert (=> b!7809282 (= res!3110014 (isEmpty!42264 (tail!15508 s!14292)))))

(declare-fun b!7809283 () Bool)

(declare-fun e!4622320 () Bool)

(assert (=> b!7809283 (= e!4622320 (not (= (head!15967 s!14292) (c!1438008 r2!6217))))))

(declare-fun bm!724375 () Bool)

(declare-fun call!724380 () Bool)

(assert (=> bm!724375 (= call!724380 (isEmpty!42264 s!14292))))

(declare-fun b!7809284 () Bool)

(declare-fun res!3110011 () Bool)

(declare-fun e!4622316 () Bool)

(assert (=> b!7809284 (=> res!3110011 e!4622316)))

(assert (=> b!7809284 (= res!3110011 e!4622318)))

(declare-fun res!3110017 () Bool)

(assert (=> b!7809284 (=> (not res!3110017) (not e!4622318))))

(declare-fun lt!2675726 () Bool)

(assert (=> b!7809284 (= res!3110017 lt!2675726)))

(declare-fun b!7809285 () Bool)

(declare-fun e!4622317 () Bool)

(assert (=> b!7809285 (= e!4622316 e!4622317)))

(declare-fun res!3110018 () Bool)

(assert (=> b!7809285 (=> (not res!3110018) (not e!4622317))))

(assert (=> b!7809285 (= res!3110018 (not lt!2675726))))

(declare-fun b!7809286 () Bool)

(declare-fun res!3110013 () Bool)

(assert (=> b!7809286 (=> res!3110013 e!4622316)))

(assert (=> b!7809286 (= res!3110013 (not ((_ is ElementMatch!20893) r2!6217)))))

(declare-fun e!4622321 () Bool)

(assert (=> b!7809286 (= e!4622321 e!4622316)))

(declare-fun b!7809287 () Bool)

(assert (=> b!7809287 (= e!4622321 (not lt!2675726))))

(declare-fun b!7809288 () Bool)

(declare-fun res!3110015 () Bool)

(assert (=> b!7809288 (=> (not res!3110015) (not e!4622318))))

(assert (=> b!7809288 (= res!3110015 (not call!724380))))

(declare-fun b!7809289 () Bool)

(declare-fun e!4622319 () Bool)

(assert (=> b!7809289 (= e!4622319 (nullable!9277 r2!6217))))

(declare-fun b!7809290 () Bool)

(assert (=> b!7809290 (= e!4622318 (= (head!15967 s!14292) (c!1438008 r2!6217)))))

(declare-fun b!7809291 () Bool)

(declare-fun e!4622315 () Bool)

(assert (=> b!7809291 (= e!4622315 (= lt!2675726 call!724380))))

(declare-fun b!7809292 () Bool)

(assert (=> b!7809292 (= e!4622319 (matchR!10353 (derivativeStep!6229 r2!6217 (head!15967 s!14292)) (tail!15508 s!14292)))))

(declare-fun d!2348562 () Bool)

(assert (=> d!2348562 e!4622315))

(declare-fun c!1438062 () Bool)

(assert (=> d!2348562 (= c!1438062 ((_ is EmptyExpr!20893) r2!6217))))

(assert (=> d!2348562 (= lt!2675726 e!4622319)))

(declare-fun c!1438064 () Bool)

(assert (=> d!2348562 (= c!1438064 (isEmpty!42264 s!14292))))

(assert (=> d!2348562 (validRegex!11307 r2!6217)))

(assert (=> d!2348562 (= (matchR!10353 r2!6217 s!14292) lt!2675726)))

(declare-fun b!7809293 () Bool)

(assert (=> b!7809293 (= e!4622317 e!4622320)))

(declare-fun res!3110012 () Bool)

(assert (=> b!7809293 (=> res!3110012 e!4622320)))

(assert (=> b!7809293 (= res!3110012 call!724380)))

(declare-fun b!7809294 () Bool)

(assert (=> b!7809294 (= e!4622315 e!4622321)))

(declare-fun c!1438063 () Bool)

(assert (=> b!7809294 (= c!1438063 ((_ is EmptyLang!20893) r2!6217))))

(declare-fun b!7809295 () Bool)

(declare-fun res!3110016 () Bool)

(assert (=> b!7809295 (=> res!3110016 e!4622320)))

(assert (=> b!7809295 (= res!3110016 (not (isEmpty!42264 (tail!15508 s!14292))))))

(assert (= (and d!2348562 c!1438064) b!7809289))

(assert (= (and d!2348562 (not c!1438064)) b!7809292))

(assert (= (and d!2348562 c!1438062) b!7809291))

(assert (= (and d!2348562 (not c!1438062)) b!7809294))

(assert (= (and b!7809294 c!1438063) b!7809287))

(assert (= (and b!7809294 (not c!1438063)) b!7809286))

(assert (= (and b!7809286 (not res!3110013)) b!7809284))

(assert (= (and b!7809284 res!3110017) b!7809288))

(assert (= (and b!7809288 res!3110015) b!7809282))

(assert (= (and b!7809282 res!3110014) b!7809290))

(assert (= (and b!7809284 (not res!3110011)) b!7809285))

(assert (= (and b!7809285 res!3110018) b!7809293))

(assert (= (and b!7809293 (not res!3110012)) b!7809295))

(assert (= (and b!7809295 (not res!3110016)) b!7809283))

(assert (= (or b!7809291 b!7809288 b!7809293) bm!724375))

(assert (=> b!7809282 m!8241174))

(assert (=> b!7809282 m!8241174))

(assert (=> b!7809282 m!8241176))

(assert (=> b!7809283 m!8241178))

(assert (=> b!7809292 m!8241178))

(assert (=> b!7809292 m!8241178))

(declare-fun m!8241294 () Bool)

(assert (=> b!7809292 m!8241294))

(assert (=> b!7809292 m!8241174))

(assert (=> b!7809292 m!8241294))

(assert (=> b!7809292 m!8241174))

(declare-fun m!8241296 () Bool)

(assert (=> b!7809292 m!8241296))

(assert (=> bm!724375 m!8241184))

(assert (=> b!7809289 m!8241122))

(assert (=> b!7809290 m!8241178))

(assert (=> d!2348562 m!8241184))

(assert (=> d!2348562 m!8241128))

(assert (=> b!7809295 m!8241174))

(assert (=> b!7809295 m!8241174))

(assert (=> b!7809295 m!8241176))

(assert (=> b!7809070 d!2348562))

(declare-fun d!2348564 () Bool)

(assert (=> d!2348564 (= (isEmpty!42264 (tail!15508 s!14292)) ((_ is Nil!73608) (tail!15508 s!14292)))))

(assert (=> b!7809048 d!2348564))

(declare-fun d!2348566 () Bool)

(assert (=> d!2348566 (= (tail!15508 s!14292) (t!388467 s!14292))))

(assert (=> b!7809048 d!2348566))

(declare-fun d!2348568 () Bool)

(declare-fun e!4622326 () Bool)

(assert (=> d!2348568 e!4622326))

(declare-fun res!3110023 () Bool)

(assert (=> d!2348568 (=> (not res!3110023) (not e!4622326))))

(declare-fun lt!2675729 () List!73732)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15631 (List!73732) (InoxSet C!42112))

(assert (=> d!2348568 (= res!3110023 (= (content!15631 lt!2675729) ((_ map or) (content!15631 (_1!38289 (get!26350 lt!2675702))) (content!15631 (_2!38289 (get!26350 lt!2675702))))))))

(declare-fun e!4622327 () List!73732)

(assert (=> d!2348568 (= lt!2675729 e!4622327)))

(declare-fun c!1438067 () Bool)

(assert (=> d!2348568 (= c!1438067 ((_ is Nil!73608) (_1!38289 (get!26350 lt!2675702))))))

(assert (=> d!2348568 (= (++!17952 (_1!38289 (get!26350 lt!2675702)) (_2!38289 (get!26350 lt!2675702))) lt!2675729)))

(declare-fun b!7809307 () Bool)

(assert (=> b!7809307 (= e!4622326 (or (not (= (_2!38289 (get!26350 lt!2675702)) Nil!73608)) (= lt!2675729 (_1!38289 (get!26350 lt!2675702)))))))

(declare-fun b!7809305 () Bool)

(assert (=> b!7809305 (= e!4622327 (Cons!73608 (h!80056 (_1!38289 (get!26350 lt!2675702))) (++!17952 (t!388467 (_1!38289 (get!26350 lt!2675702))) (_2!38289 (get!26350 lt!2675702)))))))

(declare-fun b!7809306 () Bool)

(declare-fun res!3110024 () Bool)

(assert (=> b!7809306 (=> (not res!3110024) (not e!4622326))))

(declare-fun size!42734 (List!73732) Int)

(assert (=> b!7809306 (= res!3110024 (= (size!42734 lt!2675729) (+ (size!42734 (_1!38289 (get!26350 lt!2675702))) (size!42734 (_2!38289 (get!26350 lt!2675702))))))))

(declare-fun b!7809304 () Bool)

(assert (=> b!7809304 (= e!4622327 (_2!38289 (get!26350 lt!2675702)))))

(assert (= (and d!2348568 c!1438067) b!7809304))

(assert (= (and d!2348568 (not c!1438067)) b!7809305))

(assert (= (and d!2348568 res!3110023) b!7809306))

(assert (= (and b!7809306 res!3110024) b!7809307))

(declare-fun m!8241298 () Bool)

(assert (=> d!2348568 m!8241298))

(declare-fun m!8241300 () Bool)

(assert (=> d!2348568 m!8241300))

(declare-fun m!8241302 () Bool)

(assert (=> d!2348568 m!8241302))

(declare-fun m!8241304 () Bool)

(assert (=> b!7809305 m!8241304))

(declare-fun m!8241306 () Bool)

(assert (=> b!7809306 m!8241306))

(declare-fun m!8241308 () Bool)

(assert (=> b!7809306 m!8241308))

(declare-fun m!8241310 () Bool)

(assert (=> b!7809306 m!8241310))

(assert (=> b!7808994 d!2348568))

(assert (=> b!7808994 d!2348560))

(declare-fun d!2348570 () Bool)

(assert (=> d!2348570 (= (isEmpty!42264 s!14292) ((_ is Nil!73608) s!14292))))

(assert (=> bm!724367 d!2348570))

(declare-fun d!2348572 () Bool)

(assert (not d!2348572))

(assert (=> b!7808996 d!2348572))

(declare-fun d!2348574 () Bool)

(assert (not d!2348574))

(assert (=> b!7808996 d!2348574))

(declare-fun d!2348576 () Bool)

(assert (not d!2348576))

(assert (=> b!7808996 d!2348576))

(declare-fun d!2348578 () Bool)

(assert (not d!2348578))

(assert (=> b!7808996 d!2348578))

(declare-fun d!2348580 () Bool)

(assert (=> d!2348580 (= (head!15967 s!14292) (h!80056 s!14292))))

(assert (=> b!7809049 d!2348580))

(declare-fun d!2348582 () Bool)

(assert (=> d!2348582 (= (isDefined!14390 lt!2675702) (not (isEmpty!42265 lt!2675702)))))

(declare-fun bs!1966600 () Bool)

(assert (= bs!1966600 d!2348582))

(declare-fun m!8241312 () Bool)

(assert (=> bs!1966600 m!8241312))

(assert (=> b!7808995 d!2348582))

(declare-fun d!2348584 () Bool)

(assert (=> d!2348584 (= (isDefined!14390 lt!2675708) (not (isEmpty!42265 lt!2675708)))))

(declare-fun bs!1966601 () Bool)

(assert (= bs!1966601 d!2348584))

(declare-fun m!8241314 () Bool)

(assert (=> bs!1966601 m!8241314))

(assert (=> b!7809064 d!2348584))

(declare-fun d!2348586 () Bool)

(declare-fun e!4622328 () Bool)

(assert (=> d!2348586 e!4622328))

(declare-fun res!3110025 () Bool)

(assert (=> d!2348586 (=> (not res!3110025) (not e!4622328))))

(declare-fun lt!2675730 () List!73732)

(assert (=> d!2348586 (= res!3110025 (= (content!15631 lt!2675730) ((_ map or) (content!15631 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608))) (content!15631 (t!388467 s!14292)))))))

(declare-fun e!4622329 () List!73732)

(assert (=> d!2348586 (= lt!2675730 e!4622329)))

(declare-fun c!1438068 () Bool)

(assert (=> d!2348586 (= c!1438068 ((_ is Nil!73608) (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608))))))

(assert (=> d!2348586 (= (++!17952 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) (t!388467 s!14292)) lt!2675730)))

(declare-fun b!7809311 () Bool)

(assert (=> b!7809311 (= e!4622328 (or (not (= (t!388467 s!14292) Nil!73608)) (= lt!2675730 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)))))))

(declare-fun b!7809309 () Bool)

(assert (=> b!7809309 (= e!4622329 (Cons!73608 (h!80056 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608))) (++!17952 (t!388467 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608))) (t!388467 s!14292))))))

(declare-fun b!7809310 () Bool)

(declare-fun res!3110026 () Bool)

(assert (=> b!7809310 (=> (not res!3110026) (not e!4622328))))

(assert (=> b!7809310 (= res!3110026 (= (size!42734 lt!2675730) (+ (size!42734 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608))) (size!42734 (t!388467 s!14292)))))))

(declare-fun b!7809308 () Bool)

(assert (=> b!7809308 (= e!4622329 (t!388467 s!14292))))

(assert (= (and d!2348586 c!1438068) b!7809308))

(assert (= (and d!2348586 (not c!1438068)) b!7809309))

(assert (= (and d!2348586 res!3110025) b!7809310))

(assert (= (and b!7809310 res!3110026) b!7809311))

(declare-fun m!8241316 () Bool)

(assert (=> d!2348586 m!8241316))

(assert (=> d!2348586 m!8241196))

(declare-fun m!8241318 () Bool)

(assert (=> d!2348586 m!8241318))

(declare-fun m!8241320 () Bool)

(assert (=> d!2348586 m!8241320))

(declare-fun m!8241322 () Bool)

(assert (=> b!7809309 m!8241322))

(declare-fun m!8241324 () Bool)

(assert (=> b!7809310 m!8241324))

(assert (=> b!7809310 m!8241196))

(declare-fun m!8241326 () Bool)

(assert (=> b!7809310 m!8241326))

(declare-fun m!8241328 () Bool)

(assert (=> b!7809310 m!8241328))

(assert (=> b!7809065 d!2348586))

(declare-fun d!2348588 () Bool)

(declare-fun e!4622330 () Bool)

(assert (=> d!2348588 e!4622330))

(declare-fun res!3110027 () Bool)

(assert (=> d!2348588 (=> (not res!3110027) (not e!4622330))))

(declare-fun lt!2675731 () List!73732)

(assert (=> d!2348588 (= res!3110027 (= (content!15631 lt!2675731) ((_ map or) (content!15631 Nil!73608) (content!15631 (Cons!73608 (h!80056 s!14292) Nil!73608)))))))

(declare-fun e!4622331 () List!73732)

(assert (=> d!2348588 (= lt!2675731 e!4622331)))

(declare-fun c!1438069 () Bool)

(assert (=> d!2348588 (= c!1438069 ((_ is Nil!73608) Nil!73608))))

(assert (=> d!2348588 (= (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) lt!2675731)))

(declare-fun b!7809315 () Bool)

(assert (=> b!7809315 (= e!4622330 (or (not (= (Cons!73608 (h!80056 s!14292) Nil!73608) Nil!73608)) (= lt!2675731 Nil!73608)))))

(declare-fun b!7809313 () Bool)

(assert (=> b!7809313 (= e!4622331 (Cons!73608 (h!80056 Nil!73608) (++!17952 (t!388467 Nil!73608) (Cons!73608 (h!80056 s!14292) Nil!73608))))))

(declare-fun b!7809314 () Bool)

(declare-fun res!3110028 () Bool)

(assert (=> b!7809314 (=> (not res!3110028) (not e!4622330))))

(assert (=> b!7809314 (= res!3110028 (= (size!42734 lt!2675731) (+ (size!42734 Nil!73608) (size!42734 (Cons!73608 (h!80056 s!14292) Nil!73608)))))))

(declare-fun b!7809312 () Bool)

(assert (=> b!7809312 (= e!4622331 (Cons!73608 (h!80056 s!14292) Nil!73608))))

(assert (= (and d!2348588 c!1438069) b!7809312))

(assert (= (and d!2348588 (not c!1438069)) b!7809313))

(assert (= (and d!2348588 res!3110027) b!7809314))

(assert (= (and b!7809314 res!3110028) b!7809315))

(declare-fun m!8241330 () Bool)

(assert (=> d!2348588 m!8241330))

(declare-fun m!8241332 () Bool)

(assert (=> d!2348588 m!8241332))

(declare-fun m!8241334 () Bool)

(assert (=> d!2348588 m!8241334))

(declare-fun m!8241336 () Bool)

(assert (=> b!7809313 m!8241336))

(declare-fun m!8241338 () Bool)

(assert (=> b!7809314 m!8241338))

(declare-fun m!8241340 () Bool)

(assert (=> b!7809314 m!8241340))

(declare-fun m!8241342 () Bool)

(assert (=> b!7809314 m!8241342))

(assert (=> b!7809065 d!2348588))

(declare-fun d!2348590 () Bool)

(assert (=> d!2348590 (= (++!17952 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) (t!388467 s!14292)) s!14292)))

(declare-fun lt!2675734 () Unit!168622)

(declare-fun choose!59582 (List!73732 C!42112 List!73732 List!73732) Unit!168622)

(assert (=> d!2348590 (= lt!2675734 (choose!59582 Nil!73608 (h!80056 s!14292) (t!388467 s!14292) s!14292))))

(assert (=> d!2348590 (= (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) (t!388467 s!14292))) s!14292)))

(assert (=> d!2348590 (= (lemmaMoveElementToOtherListKeepsConcatEq!3423 Nil!73608 (h!80056 s!14292) (t!388467 s!14292) s!14292) lt!2675734)))

(declare-fun bs!1966602 () Bool)

(assert (= bs!1966602 d!2348590))

(assert (=> bs!1966602 m!8241196))

(assert (=> bs!1966602 m!8241196))

(assert (=> bs!1966602 m!8241198))

(declare-fun m!8241344 () Bool)

(assert (=> bs!1966602 m!8241344))

(declare-fun m!8241346 () Bool)

(assert (=> bs!1966602 m!8241346))

(assert (=> b!7809065 d!2348590))

(declare-fun b!7809316 () Bool)

(declare-fun res!3110031 () Bool)

(declare-fun e!4622333 () Bool)

(assert (=> b!7809316 (=> (not res!3110031) (not e!4622333))))

(declare-fun lt!2675736 () Option!17780)

(assert (=> b!7809316 (= res!3110031 (matchR!10353 r2!6217 (_2!38289 (get!26350 lt!2675736))))))

(declare-fun b!7809317 () Bool)

(assert (=> b!7809317 (= e!4622333 (= (++!17952 (_1!38289 (get!26350 lt!2675736)) (_2!38289 (get!26350 lt!2675736))) s!14292))))

(declare-fun d!2348592 () Bool)

(declare-fun e!4622335 () Bool)

(assert (=> d!2348592 e!4622335))

(declare-fun res!3110032 () Bool)

(assert (=> d!2348592 (=> res!3110032 e!4622335)))

(assert (=> d!2348592 (= res!3110032 e!4622333)))

(declare-fun res!3110030 () Bool)

(assert (=> d!2348592 (=> (not res!3110030) (not e!4622333))))

(assert (=> d!2348592 (= res!3110030 (isDefined!14390 lt!2675736))))

(declare-fun e!4622334 () Option!17780)

(assert (=> d!2348592 (= lt!2675736 e!4622334)))

(declare-fun c!1438070 () Bool)

(declare-fun e!4622332 () Bool)

(assert (=> d!2348592 (= c!1438070 e!4622332)))

(declare-fun res!3110029 () Bool)

(assert (=> d!2348592 (=> (not res!3110029) (not e!4622332))))

(assert (=> d!2348592 (= res!3110029 (matchR!10353 r1!6279 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608))))))

(assert (=> d!2348592 (validRegex!11307 r1!6279)))

(assert (=> d!2348592 (= (findConcatSeparation!3810 r1!6279 r2!6217 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) (t!388467 s!14292) s!14292) lt!2675736)))

(declare-fun b!7809318 () Bool)

(assert (=> b!7809318 (= e!4622335 (not (isDefined!14390 lt!2675736)))))

(declare-fun b!7809319 () Bool)

(declare-fun lt!2675735 () Unit!168622)

(declare-fun lt!2675737 () Unit!168622)

(assert (=> b!7809319 (= lt!2675735 lt!2675737)))

(assert (=> b!7809319 (= (++!17952 (++!17952 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) (Cons!73608 (h!80056 (t!388467 s!14292)) Nil!73608)) (t!388467 (t!388467 s!14292))) s!14292)))

(assert (=> b!7809319 (= lt!2675737 (lemmaMoveElementToOtherListKeepsConcatEq!3423 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) (h!80056 (t!388467 s!14292)) (t!388467 (t!388467 s!14292)) s!14292))))

(declare-fun e!4622336 () Option!17780)

(assert (=> b!7809319 (= e!4622336 (findConcatSeparation!3810 r1!6279 r2!6217 (++!17952 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) (Cons!73608 (h!80056 (t!388467 s!14292)) Nil!73608)) (t!388467 (t!388467 s!14292)) s!14292))))

(declare-fun b!7809320 () Bool)

(declare-fun res!3110033 () Bool)

(assert (=> b!7809320 (=> (not res!3110033) (not e!4622333))))

(assert (=> b!7809320 (= res!3110033 (matchR!10353 r1!6279 (_1!38289 (get!26350 lt!2675736))))))

(declare-fun b!7809321 () Bool)

(assert (=> b!7809321 (= e!4622334 (Some!17779 (tuple2!69973 (++!17952 Nil!73608 (Cons!73608 (h!80056 s!14292) Nil!73608)) (t!388467 s!14292))))))

(declare-fun b!7809322 () Bool)

(assert (=> b!7809322 (= e!4622336 None!17779)))

(declare-fun b!7809323 () Bool)

(assert (=> b!7809323 (= e!4622334 e!4622336)))

(declare-fun c!1438071 () Bool)

(assert (=> b!7809323 (= c!1438071 ((_ is Nil!73608) (t!388467 s!14292)))))

(declare-fun b!7809324 () Bool)

(assert (=> b!7809324 (= e!4622332 (matchR!10353 r2!6217 (t!388467 s!14292)))))

(assert (= (and d!2348592 res!3110029) b!7809324))

(assert (= (and d!2348592 c!1438070) b!7809321))

(assert (= (and d!2348592 (not c!1438070)) b!7809323))

(assert (= (and b!7809323 c!1438071) b!7809322))

(assert (= (and b!7809323 (not c!1438071)) b!7809319))

(assert (= (and d!2348592 res!3110030) b!7809320))

(assert (= (and b!7809320 res!3110033) b!7809316))

(assert (= (and b!7809316 res!3110031) b!7809317))

(assert (= (and d!2348592 (not res!3110032)) b!7809318))

(declare-fun m!8241348 () Bool)

(assert (=> b!7809317 m!8241348))

(declare-fun m!8241350 () Bool)

(assert (=> b!7809317 m!8241350))

(assert (=> b!7809319 m!8241196))

(declare-fun m!8241352 () Bool)

(assert (=> b!7809319 m!8241352))

(assert (=> b!7809319 m!8241352))

(declare-fun m!8241354 () Bool)

(assert (=> b!7809319 m!8241354))

(assert (=> b!7809319 m!8241196))

(declare-fun m!8241356 () Bool)

(assert (=> b!7809319 m!8241356))

(assert (=> b!7809319 m!8241352))

(declare-fun m!8241358 () Bool)

(assert (=> b!7809319 m!8241358))

(assert (=> b!7809316 m!8241348))

(declare-fun m!8241360 () Bool)

(assert (=> b!7809316 m!8241360))

(declare-fun m!8241362 () Bool)

(assert (=> b!7809318 m!8241362))

(declare-fun m!8241364 () Bool)

(assert (=> b!7809324 m!8241364))

(assert (=> b!7809320 m!8241348))

(declare-fun m!8241366 () Bool)

(assert (=> b!7809320 m!8241366))

(assert (=> d!2348592 m!8241362))

(assert (=> d!2348592 m!8241196))

(declare-fun m!8241368 () Bool)

(assert (=> d!2348592 m!8241368))

(assert (=> d!2348592 m!8241120))

(assert (=> b!7809065 d!2348592))

(assert (=> b!7809061 d!2348564))

(assert (=> b!7809061 d!2348566))

(declare-fun d!2348594 () Bool)

(declare-fun e!4622337 () Bool)

(assert (=> d!2348594 e!4622337))

(declare-fun res!3110034 () Bool)

(assert (=> d!2348594 (=> (not res!3110034) (not e!4622337))))

(declare-fun lt!2675738 () List!73732)

(assert (=> d!2348594 (= res!3110034 (= (content!15631 lt!2675738) ((_ map or) (content!15631 (_1!38289 (get!26350 lt!2675708))) (content!15631 (_2!38289 (get!26350 lt!2675708))))))))

(declare-fun e!4622338 () List!73732)

(assert (=> d!2348594 (= lt!2675738 e!4622338)))

(declare-fun c!1438072 () Bool)

(assert (=> d!2348594 (= c!1438072 ((_ is Nil!73608) (_1!38289 (get!26350 lt!2675708))))))

(assert (=> d!2348594 (= (++!17952 (_1!38289 (get!26350 lt!2675708)) (_2!38289 (get!26350 lt!2675708))) lt!2675738)))

(declare-fun b!7809328 () Bool)

(assert (=> b!7809328 (= e!4622337 (or (not (= (_2!38289 (get!26350 lt!2675708)) Nil!73608)) (= lt!2675738 (_1!38289 (get!26350 lt!2675708)))))))

(declare-fun b!7809326 () Bool)

(assert (=> b!7809326 (= e!4622338 (Cons!73608 (h!80056 (_1!38289 (get!26350 lt!2675708))) (++!17952 (t!388467 (_1!38289 (get!26350 lt!2675708))) (_2!38289 (get!26350 lt!2675708)))))))

(declare-fun b!7809327 () Bool)

(declare-fun res!3110035 () Bool)

(assert (=> b!7809327 (=> (not res!3110035) (not e!4622337))))

(assert (=> b!7809327 (= res!3110035 (= (size!42734 lt!2675738) (+ (size!42734 (_1!38289 (get!26350 lt!2675708))) (size!42734 (_2!38289 (get!26350 lt!2675708))))))))

(declare-fun b!7809325 () Bool)

(assert (=> b!7809325 (= e!4622338 (_2!38289 (get!26350 lt!2675708)))))

(assert (= (and d!2348594 c!1438072) b!7809325))

(assert (= (and d!2348594 (not c!1438072)) b!7809326))

(assert (= (and d!2348594 res!3110034) b!7809327))

(assert (= (and b!7809327 res!3110035) b!7809328))

(declare-fun m!8241370 () Bool)

(assert (=> d!2348594 m!8241370))

(declare-fun m!8241372 () Bool)

(assert (=> d!2348594 m!8241372))

(declare-fun m!8241374 () Bool)

(assert (=> d!2348594 m!8241374))

(declare-fun m!8241376 () Bool)

(assert (=> b!7809326 m!8241376))

(declare-fun m!8241378 () Bool)

(assert (=> b!7809327 m!8241378))

(declare-fun m!8241380 () Bool)

(assert (=> b!7809327 m!8241380))

(declare-fun m!8241382 () Bool)

(assert (=> b!7809327 m!8241382))

(assert (=> b!7809063 d!2348594))

(declare-fun d!2348596 () Bool)

(assert (=> d!2348596 (= (get!26350 lt!2675708) (v!54914 lt!2675708))))

(assert (=> b!7809063 d!2348596))

(assert (=> d!2348528 d!2348582))

(declare-fun b!7809329 () Bool)

(declare-fun res!3110039 () Bool)

(declare-fun e!4622342 () Bool)

(assert (=> b!7809329 (=> (not res!3110039) (not e!4622342))))

(assert (=> b!7809329 (= res!3110039 (isEmpty!42264 (tail!15508 Nil!73608)))))

(declare-fun b!7809330 () Bool)

(declare-fun e!4622344 () Bool)

(assert (=> b!7809330 (= e!4622344 (not (= (head!15967 Nil!73608) (c!1438008 r1!6279))))))

(declare-fun bm!724376 () Bool)

(declare-fun call!724381 () Bool)

(assert (=> bm!724376 (= call!724381 (isEmpty!42264 Nil!73608))))

(declare-fun b!7809331 () Bool)

(declare-fun res!3110036 () Bool)

(declare-fun e!4622340 () Bool)

(assert (=> b!7809331 (=> res!3110036 e!4622340)))

(assert (=> b!7809331 (= res!3110036 e!4622342)))

(declare-fun res!3110042 () Bool)

(assert (=> b!7809331 (=> (not res!3110042) (not e!4622342))))

(declare-fun lt!2675739 () Bool)

(assert (=> b!7809331 (= res!3110042 lt!2675739)))

(declare-fun b!7809332 () Bool)

(declare-fun e!4622341 () Bool)

(assert (=> b!7809332 (= e!4622340 e!4622341)))

(declare-fun res!3110043 () Bool)

(assert (=> b!7809332 (=> (not res!3110043) (not e!4622341))))

(assert (=> b!7809332 (= res!3110043 (not lt!2675739))))

(declare-fun b!7809333 () Bool)

(declare-fun res!3110038 () Bool)

(assert (=> b!7809333 (=> res!3110038 e!4622340)))

(assert (=> b!7809333 (= res!3110038 (not ((_ is ElementMatch!20893) r1!6279)))))

(declare-fun e!4622345 () Bool)

(assert (=> b!7809333 (= e!4622345 e!4622340)))

(declare-fun b!7809334 () Bool)

(assert (=> b!7809334 (= e!4622345 (not lt!2675739))))

(declare-fun b!7809335 () Bool)

(declare-fun res!3110040 () Bool)

(assert (=> b!7809335 (=> (not res!3110040) (not e!4622342))))

(assert (=> b!7809335 (= res!3110040 (not call!724381))))

(declare-fun b!7809336 () Bool)

(declare-fun e!4622343 () Bool)

(assert (=> b!7809336 (= e!4622343 (nullable!9277 r1!6279))))

(declare-fun b!7809337 () Bool)

(assert (=> b!7809337 (= e!4622342 (= (head!15967 Nil!73608) (c!1438008 r1!6279)))))

(declare-fun b!7809338 () Bool)

(declare-fun e!4622339 () Bool)

(assert (=> b!7809338 (= e!4622339 (= lt!2675739 call!724381))))

(declare-fun b!7809339 () Bool)

(assert (=> b!7809339 (= e!4622343 (matchR!10353 (derivativeStep!6229 r1!6279 (head!15967 Nil!73608)) (tail!15508 Nil!73608)))))

(declare-fun d!2348598 () Bool)

(assert (=> d!2348598 e!4622339))

(declare-fun c!1438073 () Bool)

(assert (=> d!2348598 (= c!1438073 ((_ is EmptyExpr!20893) r1!6279))))

(assert (=> d!2348598 (= lt!2675739 e!4622343)))

(declare-fun c!1438075 () Bool)

(assert (=> d!2348598 (= c!1438075 (isEmpty!42264 Nil!73608))))

(assert (=> d!2348598 (validRegex!11307 r1!6279)))

(assert (=> d!2348598 (= (matchR!10353 r1!6279 Nil!73608) lt!2675739)))

(declare-fun b!7809340 () Bool)

(assert (=> b!7809340 (= e!4622341 e!4622344)))

(declare-fun res!3110037 () Bool)

(assert (=> b!7809340 (=> res!3110037 e!4622344)))

(assert (=> b!7809340 (= res!3110037 call!724381)))

(declare-fun b!7809341 () Bool)

(assert (=> b!7809341 (= e!4622339 e!4622345)))

(declare-fun c!1438074 () Bool)

(assert (=> b!7809341 (= c!1438074 ((_ is EmptyLang!20893) r1!6279))))

(declare-fun b!7809342 () Bool)

(declare-fun res!3110041 () Bool)

(assert (=> b!7809342 (=> res!3110041 e!4622344)))

(assert (=> b!7809342 (= res!3110041 (not (isEmpty!42264 (tail!15508 Nil!73608))))))

(assert (= (and d!2348598 c!1438075) b!7809336))

(assert (= (and d!2348598 (not c!1438075)) b!7809339))

(assert (= (and d!2348598 c!1438073) b!7809338))

(assert (= (and d!2348598 (not c!1438073)) b!7809341))

(assert (= (and b!7809341 c!1438074) b!7809334))

(assert (= (and b!7809341 (not c!1438074)) b!7809333))

(assert (= (and b!7809333 (not res!3110038)) b!7809331))

(assert (= (and b!7809331 res!3110042) b!7809335))

(assert (= (and b!7809335 res!3110040) b!7809329))

(assert (= (and b!7809329 res!3110039) b!7809337))

(assert (= (and b!7809331 (not res!3110036)) b!7809332))

(assert (= (and b!7809332 res!3110043) b!7809340))

(assert (= (and b!7809340 (not res!3110037)) b!7809342))

(assert (= (and b!7809342 (not res!3110041)) b!7809330))

(assert (= (or b!7809338 b!7809335 b!7809340) bm!724376))

(declare-fun m!8241384 () Bool)

(assert (=> b!7809329 m!8241384))

(assert (=> b!7809329 m!8241384))

(declare-fun m!8241386 () Bool)

(assert (=> b!7809329 m!8241386))

(declare-fun m!8241388 () Bool)

(assert (=> b!7809330 m!8241388))

(assert (=> b!7809339 m!8241388))

(assert (=> b!7809339 m!8241388))

(declare-fun m!8241390 () Bool)

(assert (=> b!7809339 m!8241390))

(assert (=> b!7809339 m!8241384))

(assert (=> b!7809339 m!8241390))

(assert (=> b!7809339 m!8241384))

(declare-fun m!8241392 () Bool)

(assert (=> b!7809339 m!8241392))

(declare-fun m!8241394 () Bool)

(assert (=> bm!724376 m!8241394))

(assert (=> b!7809336 m!8241114))

(assert (=> b!7809337 m!8241388))

(assert (=> d!2348598 m!8241394))

(assert (=> d!2348598 m!8241120))

(assert (=> b!7809342 m!8241384))

(assert (=> b!7809342 m!8241384))

(assert (=> b!7809342 m!8241386))

(assert (=> d!2348528 d!2348598))

(assert (=> d!2348528 d!2348526))

(declare-fun d!2348600 () Bool)

(assert (=> d!2348600 (= (nullable!9277 (reg!21222 r2!6217)) (nullableFct!3655 (reg!21222 r2!6217)))))

(declare-fun bs!1966603 () Bool)

(assert (= bs!1966603 d!2348600))

(declare-fun m!8241396 () Bool)

(assert (=> bs!1966603 m!8241396))

(assert (=> b!7809008 d!2348600))

(assert (=> d!2348544 d!2348584))

(assert (=> d!2348544 d!2348598))

(assert (=> d!2348544 d!2348526))

(declare-fun call!724384 () Bool)

(declare-fun c!1438076 () Bool)

(declare-fun bm!724377 () Bool)

(assert (=> bm!724377 (= call!724384 (validRegex!11307 (ite c!1438076 (regTwo!42299 (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))) (regTwo!42298 (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))))))))

(declare-fun b!7809343 () Bool)

(declare-fun e!4622349 () Bool)

(declare-fun call!724383 () Bool)

(assert (=> b!7809343 (= e!4622349 call!724383)))

(declare-fun b!7809344 () Bool)

(declare-fun res!3110045 () Bool)

(declare-fun e!4622350 () Bool)

(assert (=> b!7809344 (=> res!3110045 e!4622350)))

(assert (=> b!7809344 (= res!3110045 (not ((_ is Concat!29738) (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279)))))))

(declare-fun e!4622347 () Bool)

(assert (=> b!7809344 (= e!4622347 e!4622350)))

(declare-fun bm!724378 () Bool)

(declare-fun call!724382 () Bool)

(assert (=> bm!724378 (= call!724382 call!724383)))

(declare-fun d!2348602 () Bool)

(declare-fun res!3110046 () Bool)

(declare-fun e!4622352 () Bool)

(assert (=> d!2348602 (=> res!3110046 e!4622352)))

(assert (=> d!2348602 (= res!3110046 ((_ is ElementMatch!20893) (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))))))

(assert (=> d!2348602 (= (validRegex!11307 (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))) e!4622352)))

(declare-fun b!7809345 () Bool)

(declare-fun e!4622346 () Bool)

(assert (=> b!7809345 (= e!4622352 e!4622346)))

(declare-fun c!1438077 () Bool)

(assert (=> b!7809345 (= c!1438077 ((_ is Star!20893) (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))))))

(declare-fun b!7809346 () Bool)

(assert (=> b!7809346 (= e!4622346 e!4622347)))

(assert (=> b!7809346 (= c!1438076 ((_ is Union!20893) (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))))))

(declare-fun b!7809347 () Bool)

(declare-fun e!4622351 () Bool)

(assert (=> b!7809347 (= e!4622350 e!4622351)))

(declare-fun res!3110048 () Bool)

(assert (=> b!7809347 (=> (not res!3110048) (not e!4622351))))

(assert (=> b!7809347 (= res!3110048 call!724382)))

(declare-fun b!7809348 () Bool)

(declare-fun e!4622348 () Bool)

(assert (=> b!7809348 (= e!4622348 call!724384)))

(declare-fun b!7809349 () Bool)

(assert (=> b!7809349 (= e!4622346 e!4622349)))

(declare-fun res!3110047 () Bool)

(assert (=> b!7809349 (= res!3110047 (not (nullable!9277 (reg!21222 (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))))))))

(assert (=> b!7809349 (=> (not res!3110047) (not e!4622349))))

(declare-fun b!7809350 () Bool)

(assert (=> b!7809350 (= e!4622351 call!724384)))

(declare-fun b!7809351 () Bool)

(declare-fun res!3110044 () Bool)

(assert (=> b!7809351 (=> (not res!3110044) (not e!4622348))))

(assert (=> b!7809351 (= res!3110044 call!724382)))

(assert (=> b!7809351 (= e!4622347 e!4622348)))

(declare-fun bm!724379 () Bool)

(assert (=> bm!724379 (= call!724383 (validRegex!11307 (ite c!1438077 (reg!21222 (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))) (ite c!1438076 (regOne!42299 (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))) (regOne!42298 (ite c!1438013 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279)))))))))

(assert (= (and d!2348602 (not res!3110046)) b!7809345))

(assert (= (and b!7809345 c!1438077) b!7809349))

(assert (= (and b!7809345 (not c!1438077)) b!7809346))

(assert (= (and b!7809349 res!3110047) b!7809343))

(assert (= (and b!7809346 c!1438076) b!7809351))

(assert (= (and b!7809346 (not c!1438076)) b!7809344))

(assert (= (and b!7809351 res!3110044) b!7809348))

(assert (= (and b!7809344 (not res!3110045)) b!7809347))

(assert (= (and b!7809347 res!3110048) b!7809350))

(assert (= (or b!7809351 b!7809347) bm!724378))

(assert (= (or b!7809348 b!7809350) bm!724377))

(assert (= (or b!7809343 bm!724378) bm!724379))

(declare-fun m!8241398 () Bool)

(assert (=> bm!724377 m!8241398))

(declare-fun m!8241400 () Bool)

(assert (=> b!7809349 m!8241400))

(declare-fun m!8241402 () Bool)

(assert (=> bm!724379 m!8241402))

(assert (=> bm!724350 d!2348602))

(declare-fun b!7809352 () Bool)

(declare-fun res!3110052 () Bool)

(declare-fun e!4622356 () Bool)

(assert (=> b!7809352 (=> (not res!3110052) (not e!4622356))))

(assert (=> b!7809352 (= res!3110052 (isEmpty!42264 (tail!15508 (_1!38289 (get!26350 lt!2675708)))))))

(declare-fun b!7809353 () Bool)

(declare-fun e!4622358 () Bool)

(assert (=> b!7809353 (= e!4622358 (not (= (head!15967 (_1!38289 (get!26350 lt!2675708))) (c!1438008 r1!6279))))))

(declare-fun bm!724380 () Bool)

(declare-fun call!724385 () Bool)

(assert (=> bm!724380 (= call!724385 (isEmpty!42264 (_1!38289 (get!26350 lt!2675708))))))

(declare-fun b!7809354 () Bool)

(declare-fun res!3110049 () Bool)

(declare-fun e!4622354 () Bool)

(assert (=> b!7809354 (=> res!3110049 e!4622354)))

(assert (=> b!7809354 (= res!3110049 e!4622356)))

(declare-fun res!3110055 () Bool)

(assert (=> b!7809354 (=> (not res!3110055) (not e!4622356))))

(declare-fun lt!2675740 () Bool)

(assert (=> b!7809354 (= res!3110055 lt!2675740)))

(declare-fun b!7809355 () Bool)

(declare-fun e!4622355 () Bool)

(assert (=> b!7809355 (= e!4622354 e!4622355)))

(declare-fun res!3110056 () Bool)

(assert (=> b!7809355 (=> (not res!3110056) (not e!4622355))))

(assert (=> b!7809355 (= res!3110056 (not lt!2675740))))

(declare-fun b!7809356 () Bool)

(declare-fun res!3110051 () Bool)

(assert (=> b!7809356 (=> res!3110051 e!4622354)))

(assert (=> b!7809356 (= res!3110051 (not ((_ is ElementMatch!20893) r1!6279)))))

(declare-fun e!4622359 () Bool)

(assert (=> b!7809356 (= e!4622359 e!4622354)))

(declare-fun b!7809357 () Bool)

(assert (=> b!7809357 (= e!4622359 (not lt!2675740))))

(declare-fun b!7809358 () Bool)

(declare-fun res!3110053 () Bool)

(assert (=> b!7809358 (=> (not res!3110053) (not e!4622356))))

(assert (=> b!7809358 (= res!3110053 (not call!724385))))

(declare-fun b!7809359 () Bool)

(declare-fun e!4622357 () Bool)

(assert (=> b!7809359 (= e!4622357 (nullable!9277 r1!6279))))

(declare-fun b!7809360 () Bool)

(assert (=> b!7809360 (= e!4622356 (= (head!15967 (_1!38289 (get!26350 lt!2675708))) (c!1438008 r1!6279)))))

(declare-fun b!7809361 () Bool)

(declare-fun e!4622353 () Bool)

(assert (=> b!7809361 (= e!4622353 (= lt!2675740 call!724385))))

(declare-fun b!7809362 () Bool)

(assert (=> b!7809362 (= e!4622357 (matchR!10353 (derivativeStep!6229 r1!6279 (head!15967 (_1!38289 (get!26350 lt!2675708)))) (tail!15508 (_1!38289 (get!26350 lt!2675708)))))))

(declare-fun d!2348604 () Bool)

(assert (=> d!2348604 e!4622353))

(declare-fun c!1438078 () Bool)

(assert (=> d!2348604 (= c!1438078 ((_ is EmptyExpr!20893) r1!6279))))

(assert (=> d!2348604 (= lt!2675740 e!4622357)))

(declare-fun c!1438080 () Bool)

(assert (=> d!2348604 (= c!1438080 (isEmpty!42264 (_1!38289 (get!26350 lt!2675708))))))

(assert (=> d!2348604 (validRegex!11307 r1!6279)))

(assert (=> d!2348604 (= (matchR!10353 r1!6279 (_1!38289 (get!26350 lt!2675708))) lt!2675740)))

(declare-fun b!7809363 () Bool)

(assert (=> b!7809363 (= e!4622355 e!4622358)))

(declare-fun res!3110050 () Bool)

(assert (=> b!7809363 (=> res!3110050 e!4622358)))

(assert (=> b!7809363 (= res!3110050 call!724385)))

(declare-fun b!7809364 () Bool)

(assert (=> b!7809364 (= e!4622353 e!4622359)))

(declare-fun c!1438079 () Bool)

(assert (=> b!7809364 (= c!1438079 ((_ is EmptyLang!20893) r1!6279))))

(declare-fun b!7809365 () Bool)

(declare-fun res!3110054 () Bool)

(assert (=> b!7809365 (=> res!3110054 e!4622358)))

(assert (=> b!7809365 (= res!3110054 (not (isEmpty!42264 (tail!15508 (_1!38289 (get!26350 lt!2675708))))))))

(assert (= (and d!2348604 c!1438080) b!7809359))

(assert (= (and d!2348604 (not c!1438080)) b!7809362))

(assert (= (and d!2348604 c!1438078) b!7809361))

(assert (= (and d!2348604 (not c!1438078)) b!7809364))

(assert (= (and b!7809364 c!1438079) b!7809357))

(assert (= (and b!7809364 (not c!1438079)) b!7809356))

(assert (= (and b!7809356 (not res!3110051)) b!7809354))

(assert (= (and b!7809354 res!3110055) b!7809358))

(assert (= (and b!7809358 res!3110053) b!7809352))

(assert (= (and b!7809352 res!3110052) b!7809360))

(assert (= (and b!7809354 (not res!3110049)) b!7809355))

(assert (= (and b!7809355 res!3110056) b!7809363))

(assert (= (and b!7809363 (not res!3110050)) b!7809365))

(assert (= (and b!7809365 (not res!3110054)) b!7809353))

(assert (= (or b!7809361 b!7809358 b!7809363) bm!724380))

(declare-fun m!8241404 () Bool)

(assert (=> b!7809352 m!8241404))

(assert (=> b!7809352 m!8241404))

(declare-fun m!8241406 () Bool)

(assert (=> b!7809352 m!8241406))

(declare-fun m!8241408 () Bool)

(assert (=> b!7809353 m!8241408))

(assert (=> b!7809362 m!8241408))

(assert (=> b!7809362 m!8241408))

(declare-fun m!8241410 () Bool)

(assert (=> b!7809362 m!8241410))

(assert (=> b!7809362 m!8241404))

(assert (=> b!7809362 m!8241410))

(assert (=> b!7809362 m!8241404))

(declare-fun m!8241412 () Bool)

(assert (=> b!7809362 m!8241412))

(declare-fun m!8241414 () Bool)

(assert (=> bm!724380 m!8241414))

(assert (=> b!7809359 m!8241114))

(assert (=> b!7809360 m!8241408))

(assert (=> d!2348604 m!8241414))

(assert (=> d!2348604 m!8241120))

(assert (=> b!7809365 m!8241404))

(assert (=> b!7809365 m!8241404))

(assert (=> b!7809365 m!8241406))

(assert (=> b!7809066 d!2348604))

(assert (=> b!7809066 d!2348596))

(assert (=> d!2348538 d!2348570))

(declare-fun call!724388 () Bool)

(declare-fun c!1438081 () Bool)

(declare-fun bm!724381 () Bool)

(assert (=> bm!724381 (= call!724388 (validRegex!11307 (ite c!1438081 (regTwo!42299 (Concat!29738 r1!6279 r2!6217)) (regTwo!42298 (Concat!29738 r1!6279 r2!6217)))))))

(declare-fun b!7809366 () Bool)

(declare-fun e!4622363 () Bool)

(declare-fun call!724387 () Bool)

(assert (=> b!7809366 (= e!4622363 call!724387)))

(declare-fun b!7809367 () Bool)

(declare-fun res!3110058 () Bool)

(declare-fun e!4622364 () Bool)

(assert (=> b!7809367 (=> res!3110058 e!4622364)))

(assert (=> b!7809367 (= res!3110058 (not ((_ is Concat!29738) (Concat!29738 r1!6279 r2!6217))))))

(declare-fun e!4622361 () Bool)

(assert (=> b!7809367 (= e!4622361 e!4622364)))

(declare-fun bm!724382 () Bool)

(declare-fun call!724386 () Bool)

(assert (=> bm!724382 (= call!724386 call!724387)))

(declare-fun d!2348606 () Bool)

(declare-fun res!3110059 () Bool)

(declare-fun e!4622366 () Bool)

(assert (=> d!2348606 (=> res!3110059 e!4622366)))

(assert (=> d!2348606 (= res!3110059 ((_ is ElementMatch!20893) (Concat!29738 r1!6279 r2!6217)))))

(assert (=> d!2348606 (= (validRegex!11307 (Concat!29738 r1!6279 r2!6217)) e!4622366)))

(declare-fun b!7809368 () Bool)

(declare-fun e!4622360 () Bool)

(assert (=> b!7809368 (= e!4622366 e!4622360)))

(declare-fun c!1438082 () Bool)

(assert (=> b!7809368 (= c!1438082 ((_ is Star!20893) (Concat!29738 r1!6279 r2!6217)))))

(declare-fun b!7809369 () Bool)

(assert (=> b!7809369 (= e!4622360 e!4622361)))

(assert (=> b!7809369 (= c!1438081 ((_ is Union!20893) (Concat!29738 r1!6279 r2!6217)))))

(declare-fun b!7809370 () Bool)

(declare-fun e!4622365 () Bool)

(assert (=> b!7809370 (= e!4622364 e!4622365)))

(declare-fun res!3110061 () Bool)

(assert (=> b!7809370 (=> (not res!3110061) (not e!4622365))))

(assert (=> b!7809370 (= res!3110061 call!724386)))

(declare-fun b!7809371 () Bool)

(declare-fun e!4622362 () Bool)

(assert (=> b!7809371 (= e!4622362 call!724388)))

(declare-fun b!7809372 () Bool)

(assert (=> b!7809372 (= e!4622360 e!4622363)))

(declare-fun res!3110060 () Bool)

(assert (=> b!7809372 (= res!3110060 (not (nullable!9277 (reg!21222 (Concat!29738 r1!6279 r2!6217)))))))

(assert (=> b!7809372 (=> (not res!3110060) (not e!4622363))))

(declare-fun b!7809373 () Bool)

(assert (=> b!7809373 (= e!4622365 call!724388)))

(declare-fun b!7809374 () Bool)

(declare-fun res!3110057 () Bool)

(assert (=> b!7809374 (=> (not res!3110057) (not e!4622362))))

(assert (=> b!7809374 (= res!3110057 call!724386)))

(assert (=> b!7809374 (= e!4622361 e!4622362)))

(declare-fun bm!724383 () Bool)

(assert (=> bm!724383 (= call!724387 (validRegex!11307 (ite c!1438082 (reg!21222 (Concat!29738 r1!6279 r2!6217)) (ite c!1438081 (regOne!42299 (Concat!29738 r1!6279 r2!6217)) (regOne!42298 (Concat!29738 r1!6279 r2!6217))))))))

(assert (= (and d!2348606 (not res!3110059)) b!7809368))

(assert (= (and b!7809368 c!1438082) b!7809372))

(assert (= (and b!7809368 (not c!1438082)) b!7809369))

(assert (= (and b!7809372 res!3110060) b!7809366))

(assert (= (and b!7809369 c!1438081) b!7809374))

(assert (= (and b!7809369 (not c!1438081)) b!7809367))

(assert (= (and b!7809374 res!3110057) b!7809371))

(assert (= (and b!7809367 (not res!3110058)) b!7809370))

(assert (= (and b!7809370 res!3110061) b!7809373))

(assert (= (or b!7809374 b!7809370) bm!724382))

(assert (= (or b!7809371 b!7809373) bm!724381))

(assert (= (or b!7809366 bm!724382) bm!724383))

(declare-fun m!8241416 () Bool)

(assert (=> bm!724381 m!8241416))

(declare-fun m!8241418 () Bool)

(assert (=> b!7809372 m!8241418))

(declare-fun m!8241420 () Bool)

(assert (=> bm!724383 m!8241420))

(assert (=> d!2348538 d!2348606))

(declare-fun bm!724384 () Bool)

(declare-fun call!724391 () Bool)

(declare-fun c!1438083 () Bool)

(assert (=> bm!724384 (= call!724391 (validRegex!11307 (ite c!1438083 (regTwo!42299 (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))) (regTwo!42298 (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))))))))

(declare-fun b!7809375 () Bool)

(declare-fun e!4622370 () Bool)

(declare-fun call!724390 () Bool)

(assert (=> b!7809375 (= e!4622370 call!724390)))

(declare-fun b!7809376 () Bool)

(declare-fun res!3110063 () Bool)

(declare-fun e!4622371 () Bool)

(assert (=> b!7809376 (=> res!3110063 e!4622371)))

(assert (=> b!7809376 (= res!3110063 (not ((_ is Concat!29738) (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217))))))))

(declare-fun e!4622368 () Bool)

(assert (=> b!7809376 (= e!4622368 e!4622371)))

(declare-fun bm!724385 () Bool)

(declare-fun call!724389 () Bool)

(assert (=> bm!724385 (= call!724389 call!724390)))

(declare-fun d!2348608 () Bool)

(declare-fun res!3110064 () Bool)

(declare-fun e!4622373 () Bool)

(assert (=> d!2348608 (=> res!3110064 e!4622373)))

(assert (=> d!2348608 (= res!3110064 ((_ is ElementMatch!20893) (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))))))

(assert (=> d!2348608 (= (validRegex!11307 (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))) e!4622373)))

(declare-fun b!7809377 () Bool)

(declare-fun e!4622367 () Bool)

(assert (=> b!7809377 (= e!4622373 e!4622367)))

(declare-fun c!1438084 () Bool)

(assert (=> b!7809377 (= c!1438084 ((_ is Star!20893) (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))))))

(declare-fun b!7809378 () Bool)

(assert (=> b!7809378 (= e!4622367 e!4622368)))

(assert (=> b!7809378 (= c!1438083 ((_ is Union!20893) (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))))))

(declare-fun b!7809379 () Bool)

(declare-fun e!4622372 () Bool)

(assert (=> b!7809379 (= e!4622371 e!4622372)))

(declare-fun res!3110066 () Bool)

(assert (=> b!7809379 (=> (not res!3110066) (not e!4622372))))

(assert (=> b!7809379 (= res!3110066 call!724389)))

(declare-fun b!7809380 () Bool)

(declare-fun e!4622369 () Bool)

(assert (=> b!7809380 (= e!4622369 call!724391)))

(declare-fun b!7809381 () Bool)

(assert (=> b!7809381 (= e!4622367 e!4622370)))

(declare-fun res!3110065 () Bool)

(assert (=> b!7809381 (= res!3110065 (not (nullable!9277 (reg!21222 (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))))))))

(assert (=> b!7809381 (=> (not res!3110065) (not e!4622370))))

(declare-fun b!7809382 () Bool)

(assert (=> b!7809382 (= e!4622372 call!724391)))

(declare-fun b!7809383 () Bool)

(declare-fun res!3110062 () Bool)

(assert (=> b!7809383 (=> (not res!3110062) (not e!4622369))))

(assert (=> b!7809383 (= res!3110062 call!724389)))

(assert (=> b!7809383 (= e!4622368 e!4622369)))

(declare-fun bm!724386 () Bool)

(assert (=> bm!724386 (= call!724390 (validRegex!11307 (ite c!1438084 (reg!21222 (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))) (ite c!1438083 (regOne!42299 (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217)))) (regOne!42298 (ite c!1438026 (reg!21222 r2!6217) (ite c!1438025 (regOne!42299 r2!6217) (regOne!42298 r2!6217))))))))))

(assert (= (and d!2348608 (not res!3110064)) b!7809377))

(assert (= (and b!7809377 c!1438084) b!7809381))

(assert (= (and b!7809377 (not c!1438084)) b!7809378))

(assert (= (and b!7809381 res!3110065) b!7809375))

(assert (= (and b!7809378 c!1438083) b!7809383))

(assert (= (and b!7809378 (not c!1438083)) b!7809376))

(assert (= (and b!7809383 res!3110062) b!7809380))

(assert (= (and b!7809376 (not res!3110063)) b!7809379))

(assert (= (and b!7809379 res!3110066) b!7809382))

(assert (= (or b!7809383 b!7809379) bm!724385))

(assert (= (or b!7809380 b!7809382) bm!724384))

(assert (= (or b!7809375 bm!724385) bm!724386))

(declare-fun m!8241422 () Bool)

(assert (=> bm!724384 m!8241422))

(declare-fun m!8241424 () Bool)

(assert (=> b!7809381 m!8241424))

(declare-fun m!8241426 () Bool)

(assert (=> bm!724386 m!8241426))

(assert (=> bm!724361 d!2348608))

(declare-fun d!2348610 () Bool)

(assert (=> d!2348610 (= (isEmpty!42265 (findConcatSeparation!3810 r1!6279 r2!6217 Nil!73608 s!14292 s!14292)) (not ((_ is Some!17779) (findConcatSeparation!3810 r1!6279 r2!6217 Nil!73608 s!14292 s!14292))))))

(assert (=> d!2348542 d!2348610))

(declare-fun b!7809384 () Bool)

(declare-fun res!3110070 () Bool)

(declare-fun e!4622377 () Bool)

(assert (=> b!7809384 (=> (not res!3110070) (not e!4622377))))

(assert (=> b!7809384 (= res!3110070 (isEmpty!42264 (tail!15508 (tail!15508 s!14292))))))

(declare-fun b!7809385 () Bool)

(declare-fun e!4622379 () Bool)

(assert (=> b!7809385 (= e!4622379 (not (= (head!15967 (tail!15508 s!14292)) (c!1438008 (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292))))))))

(declare-fun bm!724387 () Bool)

(declare-fun call!724392 () Bool)

(assert (=> bm!724387 (= call!724392 (isEmpty!42264 (tail!15508 s!14292)))))

(declare-fun b!7809386 () Bool)

(declare-fun res!3110067 () Bool)

(declare-fun e!4622375 () Bool)

(assert (=> b!7809386 (=> res!3110067 e!4622375)))

(assert (=> b!7809386 (= res!3110067 e!4622377)))

(declare-fun res!3110073 () Bool)

(assert (=> b!7809386 (=> (not res!3110073) (not e!4622377))))

(declare-fun lt!2675741 () Bool)

(assert (=> b!7809386 (= res!3110073 lt!2675741)))

(declare-fun b!7809387 () Bool)

(declare-fun e!4622376 () Bool)

(assert (=> b!7809387 (= e!4622375 e!4622376)))

(declare-fun res!3110074 () Bool)

(assert (=> b!7809387 (=> (not res!3110074) (not e!4622376))))

(assert (=> b!7809387 (= res!3110074 (not lt!2675741))))

(declare-fun b!7809388 () Bool)

(declare-fun res!3110069 () Bool)

(assert (=> b!7809388 (=> res!3110069 e!4622375)))

(assert (=> b!7809388 (= res!3110069 (not ((_ is ElementMatch!20893) (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292)))))))

(declare-fun e!4622380 () Bool)

(assert (=> b!7809388 (= e!4622380 e!4622375)))

(declare-fun b!7809389 () Bool)

(assert (=> b!7809389 (= e!4622380 (not lt!2675741))))

(declare-fun b!7809390 () Bool)

(declare-fun res!3110071 () Bool)

(assert (=> b!7809390 (=> (not res!3110071) (not e!4622377))))

(assert (=> b!7809390 (= res!3110071 (not call!724392))))

(declare-fun b!7809391 () Bool)

(declare-fun e!4622378 () Bool)

(assert (=> b!7809391 (= e!4622378 (nullable!9277 (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292))))))

(declare-fun b!7809392 () Bool)

(assert (=> b!7809392 (= e!4622377 (= (head!15967 (tail!15508 s!14292)) (c!1438008 (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292)))))))

(declare-fun b!7809393 () Bool)

(declare-fun e!4622374 () Bool)

(assert (=> b!7809393 (= e!4622374 (= lt!2675741 call!724392))))

(declare-fun b!7809394 () Bool)

(assert (=> b!7809394 (= e!4622378 (matchR!10353 (derivativeStep!6229 (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292)) (head!15967 (tail!15508 s!14292))) (tail!15508 (tail!15508 s!14292))))))

(declare-fun d!2348612 () Bool)

(assert (=> d!2348612 e!4622374))

(declare-fun c!1438085 () Bool)

(assert (=> d!2348612 (= c!1438085 ((_ is EmptyExpr!20893) (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292))))))

(assert (=> d!2348612 (= lt!2675741 e!4622378)))

(declare-fun c!1438087 () Bool)

(assert (=> d!2348612 (= c!1438087 (isEmpty!42264 (tail!15508 s!14292)))))

(assert (=> d!2348612 (validRegex!11307 (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292)))))

(assert (=> d!2348612 (= (matchR!10353 (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292)) (tail!15508 s!14292)) lt!2675741)))

(declare-fun b!7809395 () Bool)

(assert (=> b!7809395 (= e!4622376 e!4622379)))

(declare-fun res!3110068 () Bool)

(assert (=> b!7809395 (=> res!3110068 e!4622379)))

(assert (=> b!7809395 (= res!3110068 call!724392)))

(declare-fun b!7809396 () Bool)

(assert (=> b!7809396 (= e!4622374 e!4622380)))

(declare-fun c!1438086 () Bool)

(assert (=> b!7809396 (= c!1438086 ((_ is EmptyLang!20893) (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292))))))

(declare-fun b!7809397 () Bool)

(declare-fun res!3110072 () Bool)

(assert (=> b!7809397 (=> res!3110072 e!4622379)))

(assert (=> b!7809397 (= res!3110072 (not (isEmpty!42264 (tail!15508 (tail!15508 s!14292)))))))

(assert (= (and d!2348612 c!1438087) b!7809391))

(assert (= (and d!2348612 (not c!1438087)) b!7809394))

(assert (= (and d!2348612 c!1438085) b!7809393))

(assert (= (and d!2348612 (not c!1438085)) b!7809396))

(assert (= (and b!7809396 c!1438086) b!7809389))

(assert (= (and b!7809396 (not c!1438086)) b!7809388))

(assert (= (and b!7809388 (not res!3110069)) b!7809386))

(assert (= (and b!7809386 res!3110073) b!7809390))

(assert (= (and b!7809390 res!3110071) b!7809384))

(assert (= (and b!7809384 res!3110070) b!7809392))

(assert (= (and b!7809386 (not res!3110067)) b!7809387))

(assert (= (and b!7809387 res!3110074) b!7809395))

(assert (= (and b!7809395 (not res!3110068)) b!7809397))

(assert (= (and b!7809397 (not res!3110072)) b!7809385))

(assert (= (or b!7809393 b!7809390 b!7809395) bm!724387))

(assert (=> b!7809384 m!8241174))

(declare-fun m!8241428 () Bool)

(assert (=> b!7809384 m!8241428))

(assert (=> b!7809384 m!8241428))

(declare-fun m!8241430 () Bool)

(assert (=> b!7809384 m!8241430))

(assert (=> b!7809385 m!8241174))

(declare-fun m!8241432 () Bool)

(assert (=> b!7809385 m!8241432))

(assert (=> b!7809394 m!8241174))

(assert (=> b!7809394 m!8241432))

(assert (=> b!7809394 m!8241180))

(assert (=> b!7809394 m!8241432))

(declare-fun m!8241434 () Bool)

(assert (=> b!7809394 m!8241434))

(assert (=> b!7809394 m!8241174))

(assert (=> b!7809394 m!8241428))

(assert (=> b!7809394 m!8241434))

(assert (=> b!7809394 m!8241428))

(declare-fun m!8241436 () Bool)

(assert (=> b!7809394 m!8241436))

(assert (=> bm!724387 m!8241174))

(assert (=> bm!724387 m!8241176))

(assert (=> b!7809391 m!8241180))

(declare-fun m!8241438 () Bool)

(assert (=> b!7809391 m!8241438))

(assert (=> b!7809392 m!8241174))

(assert (=> b!7809392 m!8241432))

(assert (=> d!2348612 m!8241174))

(assert (=> d!2348612 m!8241176))

(assert (=> d!2348612 m!8241180))

(declare-fun m!8241440 () Bool)

(assert (=> d!2348612 m!8241440))

(assert (=> b!7809397 m!8241174))

(assert (=> b!7809397 m!8241428))

(assert (=> b!7809397 m!8241428))

(assert (=> b!7809397 m!8241430))

(assert (=> b!7809058 d!2348612))

(declare-fun c!1438100 () Bool)

(declare-fun c!1438102 () Bool)

(declare-fun call!724402 () Regex!20893)

(declare-fun c!1438098 () Bool)

(declare-fun bm!724396 () Bool)

(assert (=> bm!724396 (= call!724402 (derivativeStep!6229 (ite c!1438098 (regTwo!42299 (Concat!29738 r1!6279 r2!6217)) (ite c!1438102 (reg!21222 (Concat!29738 r1!6279 r2!6217)) (ite c!1438100 (regTwo!42298 (Concat!29738 r1!6279 r2!6217)) (regOne!42298 (Concat!29738 r1!6279 r2!6217))))) (head!15967 s!14292)))))

(declare-fun bm!724397 () Bool)

(declare-fun call!724403 () Regex!20893)

(assert (=> bm!724397 (= call!724403 call!724402)))

(declare-fun d!2348614 () Bool)

(declare-fun lt!2675744 () Regex!20893)

(assert (=> d!2348614 (validRegex!11307 lt!2675744)))

(declare-fun e!4622395 () Regex!20893)

(assert (=> d!2348614 (= lt!2675744 e!4622395)))

(declare-fun c!1438101 () Bool)

(assert (=> d!2348614 (= c!1438101 (or ((_ is EmptyExpr!20893) (Concat!29738 r1!6279 r2!6217)) ((_ is EmptyLang!20893) (Concat!29738 r1!6279 r2!6217))))))

(assert (=> d!2348614 (validRegex!11307 (Concat!29738 r1!6279 r2!6217))))

(assert (=> d!2348614 (= (derivativeStep!6229 (Concat!29738 r1!6279 r2!6217) (head!15967 s!14292)) lt!2675744)))

(declare-fun bm!724398 () Bool)

(declare-fun call!724404 () Regex!20893)

(assert (=> bm!724398 (= call!724404 call!724403)))

(declare-fun e!4622392 () Regex!20893)

(declare-fun b!7809418 () Bool)

(assert (=> b!7809418 (= e!4622392 (Union!20893 (Concat!29738 call!724404 (regTwo!42298 (Concat!29738 r1!6279 r2!6217))) EmptyLang!20893))))

(declare-fun b!7809419 () Bool)

(declare-fun e!4622393 () Regex!20893)

(assert (=> b!7809419 (= e!4622393 (Concat!29738 call!724403 (Concat!29738 r1!6279 r2!6217)))))

(declare-fun b!7809420 () Bool)

(declare-fun e!4622391 () Regex!20893)

(assert (=> b!7809420 (= e!4622391 e!4622393)))

(assert (=> b!7809420 (= c!1438102 ((_ is Star!20893) (Concat!29738 r1!6279 r2!6217)))))

(declare-fun b!7809421 () Bool)

(assert (=> b!7809421 (= e!4622395 EmptyLang!20893)))

(declare-fun call!724401 () Regex!20893)

(declare-fun b!7809422 () Bool)

(assert (=> b!7809422 (= e!4622392 (Union!20893 (Concat!29738 call!724401 (regTwo!42298 (Concat!29738 r1!6279 r2!6217))) call!724404))))

(declare-fun b!7809423 () Bool)

(assert (=> b!7809423 (= e!4622391 (Union!20893 call!724401 call!724402))))

(declare-fun b!7809424 () Bool)

(assert (=> b!7809424 (= c!1438100 (nullable!9277 (regOne!42298 (Concat!29738 r1!6279 r2!6217))))))

(assert (=> b!7809424 (= e!4622393 e!4622392)))

(declare-fun bm!724399 () Bool)

(assert (=> bm!724399 (= call!724401 (derivativeStep!6229 (ite c!1438098 (regOne!42299 (Concat!29738 r1!6279 r2!6217)) (regOne!42298 (Concat!29738 r1!6279 r2!6217))) (head!15967 s!14292)))))

(declare-fun b!7809425 () Bool)

(declare-fun e!4622394 () Regex!20893)

(assert (=> b!7809425 (= e!4622395 e!4622394)))

(declare-fun c!1438099 () Bool)

(assert (=> b!7809425 (= c!1438099 ((_ is ElementMatch!20893) (Concat!29738 r1!6279 r2!6217)))))

(declare-fun b!7809426 () Bool)

(assert (=> b!7809426 (= c!1438098 ((_ is Union!20893) (Concat!29738 r1!6279 r2!6217)))))

(assert (=> b!7809426 (= e!4622394 e!4622391)))

(declare-fun b!7809427 () Bool)

(assert (=> b!7809427 (= e!4622394 (ite (= (head!15967 s!14292) (c!1438008 (Concat!29738 r1!6279 r2!6217))) EmptyExpr!20893 EmptyLang!20893))))

(assert (= (and d!2348614 c!1438101) b!7809421))

(assert (= (and d!2348614 (not c!1438101)) b!7809425))

(assert (= (and b!7809425 c!1438099) b!7809427))

(assert (= (and b!7809425 (not c!1438099)) b!7809426))

(assert (= (and b!7809426 c!1438098) b!7809423))

(assert (= (and b!7809426 (not c!1438098)) b!7809420))

(assert (= (and b!7809420 c!1438102) b!7809419))

(assert (= (and b!7809420 (not c!1438102)) b!7809424))

(assert (= (and b!7809424 c!1438100) b!7809422))

(assert (= (and b!7809424 (not c!1438100)) b!7809418))

(assert (= (or b!7809422 b!7809418) bm!724398))

(assert (= (or b!7809419 bm!724398) bm!724397))

(assert (= (or b!7809423 bm!724397) bm!724396))

(assert (= (or b!7809423 b!7809422) bm!724399))

(assert (=> bm!724396 m!8241178))

(declare-fun m!8241442 () Bool)

(assert (=> bm!724396 m!8241442))

(declare-fun m!8241444 () Bool)

(assert (=> d!2348614 m!8241444))

(assert (=> d!2348614 m!8241188))

(declare-fun m!8241446 () Bool)

(assert (=> b!7809424 m!8241446))

(assert (=> bm!724399 m!8241178))

(declare-fun m!8241448 () Bool)

(assert (=> bm!724399 m!8241448))

(assert (=> b!7809058 d!2348614))

(assert (=> b!7809058 d!2348580))

(assert (=> b!7809058 d!2348566))

(assert (=> b!7809056 d!2348580))

(declare-fun b!7809428 () Bool)

(declare-fun res!3110078 () Bool)

(declare-fun e!4622399 () Bool)

(assert (=> b!7809428 (=> (not res!3110078) (not e!4622399))))

(assert (=> b!7809428 (= res!3110078 (isEmpty!42264 (tail!15508 (_2!38289 (get!26350 lt!2675708)))))))

(declare-fun b!7809429 () Bool)

(declare-fun e!4622401 () Bool)

(assert (=> b!7809429 (= e!4622401 (not (= (head!15967 (_2!38289 (get!26350 lt!2675708))) (c!1438008 r2!6217))))))

(declare-fun bm!724400 () Bool)

(declare-fun call!724405 () Bool)

(assert (=> bm!724400 (= call!724405 (isEmpty!42264 (_2!38289 (get!26350 lt!2675708))))))

(declare-fun b!7809430 () Bool)

(declare-fun res!3110075 () Bool)

(declare-fun e!4622397 () Bool)

(assert (=> b!7809430 (=> res!3110075 e!4622397)))

(assert (=> b!7809430 (= res!3110075 e!4622399)))

(declare-fun res!3110081 () Bool)

(assert (=> b!7809430 (=> (not res!3110081) (not e!4622399))))

(declare-fun lt!2675745 () Bool)

(assert (=> b!7809430 (= res!3110081 lt!2675745)))

(declare-fun b!7809431 () Bool)

(declare-fun e!4622398 () Bool)

(assert (=> b!7809431 (= e!4622397 e!4622398)))

(declare-fun res!3110082 () Bool)

(assert (=> b!7809431 (=> (not res!3110082) (not e!4622398))))

(assert (=> b!7809431 (= res!3110082 (not lt!2675745))))

(declare-fun b!7809432 () Bool)

(declare-fun res!3110077 () Bool)

(assert (=> b!7809432 (=> res!3110077 e!4622397)))

(assert (=> b!7809432 (= res!3110077 (not ((_ is ElementMatch!20893) r2!6217)))))

(declare-fun e!4622402 () Bool)

(assert (=> b!7809432 (= e!4622402 e!4622397)))

(declare-fun b!7809433 () Bool)

(assert (=> b!7809433 (= e!4622402 (not lt!2675745))))

(declare-fun b!7809434 () Bool)

(declare-fun res!3110079 () Bool)

(assert (=> b!7809434 (=> (not res!3110079) (not e!4622399))))

(assert (=> b!7809434 (= res!3110079 (not call!724405))))

(declare-fun b!7809435 () Bool)

(declare-fun e!4622400 () Bool)

(assert (=> b!7809435 (= e!4622400 (nullable!9277 r2!6217))))

(declare-fun b!7809436 () Bool)

(assert (=> b!7809436 (= e!4622399 (= (head!15967 (_2!38289 (get!26350 lt!2675708))) (c!1438008 r2!6217)))))

(declare-fun b!7809437 () Bool)

(declare-fun e!4622396 () Bool)

(assert (=> b!7809437 (= e!4622396 (= lt!2675745 call!724405))))

(declare-fun b!7809438 () Bool)

(assert (=> b!7809438 (= e!4622400 (matchR!10353 (derivativeStep!6229 r2!6217 (head!15967 (_2!38289 (get!26350 lt!2675708)))) (tail!15508 (_2!38289 (get!26350 lt!2675708)))))))

(declare-fun d!2348616 () Bool)

(assert (=> d!2348616 e!4622396))

(declare-fun c!1438103 () Bool)

(assert (=> d!2348616 (= c!1438103 ((_ is EmptyExpr!20893) r2!6217))))

(assert (=> d!2348616 (= lt!2675745 e!4622400)))

(declare-fun c!1438105 () Bool)

(assert (=> d!2348616 (= c!1438105 (isEmpty!42264 (_2!38289 (get!26350 lt!2675708))))))

(assert (=> d!2348616 (validRegex!11307 r2!6217)))

(assert (=> d!2348616 (= (matchR!10353 r2!6217 (_2!38289 (get!26350 lt!2675708))) lt!2675745)))

(declare-fun b!7809439 () Bool)

(assert (=> b!7809439 (= e!4622398 e!4622401)))

(declare-fun res!3110076 () Bool)

(assert (=> b!7809439 (=> res!3110076 e!4622401)))

(assert (=> b!7809439 (= res!3110076 call!724405)))

(declare-fun b!7809440 () Bool)

(assert (=> b!7809440 (= e!4622396 e!4622402)))

(declare-fun c!1438104 () Bool)

(assert (=> b!7809440 (= c!1438104 ((_ is EmptyLang!20893) r2!6217))))

(declare-fun b!7809441 () Bool)

(declare-fun res!3110080 () Bool)

(assert (=> b!7809441 (=> res!3110080 e!4622401)))

(assert (=> b!7809441 (= res!3110080 (not (isEmpty!42264 (tail!15508 (_2!38289 (get!26350 lt!2675708))))))))

(assert (= (and d!2348616 c!1438105) b!7809435))

(assert (= (and d!2348616 (not c!1438105)) b!7809438))

(assert (= (and d!2348616 c!1438103) b!7809437))

(assert (= (and d!2348616 (not c!1438103)) b!7809440))

(assert (= (and b!7809440 c!1438104) b!7809433))

(assert (= (and b!7809440 (not c!1438104)) b!7809432))

(assert (= (and b!7809432 (not res!3110077)) b!7809430))

(assert (= (and b!7809430 res!3110081) b!7809434))

(assert (= (and b!7809434 res!3110079) b!7809428))

(assert (= (and b!7809428 res!3110078) b!7809436))

(assert (= (and b!7809430 (not res!3110075)) b!7809431))

(assert (= (and b!7809431 res!3110082) b!7809439))

(assert (= (and b!7809439 (not res!3110076)) b!7809441))

(assert (= (and b!7809441 (not res!3110080)) b!7809429))

(assert (= (or b!7809437 b!7809434 b!7809439) bm!724400))

(declare-fun m!8241450 () Bool)

(assert (=> b!7809428 m!8241450))

(assert (=> b!7809428 m!8241450))

(declare-fun m!8241452 () Bool)

(assert (=> b!7809428 m!8241452))

(declare-fun m!8241454 () Bool)

(assert (=> b!7809429 m!8241454))

(assert (=> b!7809438 m!8241454))

(assert (=> b!7809438 m!8241454))

(declare-fun m!8241456 () Bool)

(assert (=> b!7809438 m!8241456))

(assert (=> b!7809438 m!8241450))

(assert (=> b!7809438 m!8241456))

(assert (=> b!7809438 m!8241450))

(declare-fun m!8241458 () Bool)

(assert (=> b!7809438 m!8241458))

(declare-fun m!8241460 () Bool)

(assert (=> bm!724400 m!8241460))

(assert (=> b!7809435 m!8241122))

(assert (=> b!7809436 m!8241454))

(assert (=> d!2348616 m!8241460))

(assert (=> d!2348616 m!8241128))

(assert (=> b!7809441 m!8241450))

(assert (=> b!7809441 m!8241450))

(assert (=> b!7809441 m!8241452))

(assert (=> b!7809062 d!2348616))

(assert (=> b!7809062 d!2348596))

(declare-fun b!7809456 () Bool)

(declare-fun e!4622419 () Bool)

(declare-fun e!4622417 () Bool)

(assert (=> b!7809456 (= e!4622419 e!4622417)))

(declare-fun res!3110093 () Bool)

(declare-fun call!724410 () Bool)

(assert (=> b!7809456 (= res!3110093 call!724410)))

(assert (=> b!7809456 (=> (not res!3110093) (not e!4622417))))

(declare-fun bm!724405 () Bool)

(declare-fun c!1438108 () Bool)

(assert (=> bm!724405 (= call!724410 (nullable!9277 (ite c!1438108 (regOne!42299 r1!6279) (regOne!42298 r1!6279))))))

(declare-fun b!7809457 () Bool)

(declare-fun e!4622416 () Bool)

(assert (=> b!7809457 (= e!4622416 e!4622419)))

(assert (=> b!7809457 (= c!1438108 ((_ is Union!20893) r1!6279))))

(declare-fun b!7809459 () Bool)

(declare-fun e!4622415 () Bool)

(assert (=> b!7809459 (= e!4622419 e!4622415)))

(declare-fun res!3110094 () Bool)

(assert (=> b!7809459 (= res!3110094 call!724410)))

(assert (=> b!7809459 (=> res!3110094 e!4622415)))

(declare-fun bm!724406 () Bool)

(declare-fun call!724411 () Bool)

(assert (=> bm!724406 (= call!724411 (nullable!9277 (ite c!1438108 (regTwo!42299 r1!6279) (regTwo!42298 r1!6279))))))

(declare-fun b!7809460 () Bool)

(declare-fun e!4622420 () Bool)

(declare-fun e!4622418 () Bool)

(assert (=> b!7809460 (= e!4622420 e!4622418)))

(declare-fun res!3110096 () Bool)

(assert (=> b!7809460 (=> (not res!3110096) (not e!4622418))))

(assert (=> b!7809460 (= res!3110096 (and (not ((_ is EmptyLang!20893) r1!6279)) (not ((_ is ElementMatch!20893) r1!6279))))))

(declare-fun b!7809461 () Bool)

(assert (=> b!7809461 (= e!4622418 e!4622416)))

(declare-fun res!3110095 () Bool)

(assert (=> b!7809461 (=> res!3110095 e!4622416)))

(assert (=> b!7809461 (= res!3110095 ((_ is Star!20893) r1!6279))))

(declare-fun b!7809462 () Bool)

(assert (=> b!7809462 (= e!4622417 call!724411)))

(declare-fun d!2348618 () Bool)

(declare-fun res!3110097 () Bool)

(assert (=> d!2348618 (=> res!3110097 e!4622420)))

(assert (=> d!2348618 (= res!3110097 ((_ is EmptyExpr!20893) r1!6279))))

(assert (=> d!2348618 (= (nullableFct!3655 r1!6279) e!4622420)))

(declare-fun b!7809458 () Bool)

(assert (=> b!7809458 (= e!4622415 call!724411)))

(assert (= (and d!2348618 (not res!3110097)) b!7809460))

(assert (= (and b!7809460 res!3110096) b!7809461))

(assert (= (and b!7809461 (not res!3110095)) b!7809457))

(assert (= (and b!7809457 c!1438108) b!7809459))

(assert (= (and b!7809457 (not c!1438108)) b!7809456))

(assert (= (and b!7809459 (not res!3110094)) b!7809458))

(assert (= (and b!7809456 res!3110093) b!7809462))

(assert (= (or b!7809458 b!7809462) bm!724406))

(assert (= (or b!7809459 b!7809456) bm!724405))

(declare-fun m!8241462 () Bool)

(assert (=> bm!724405 m!8241462))

(declare-fun m!8241464 () Bool)

(assert (=> bm!724406 m!8241464))

(assert (=> d!2348536 d!2348618))

(declare-fun b!7809463 () Bool)

(declare-fun res!3110101 () Bool)

(declare-fun e!4622424 () Bool)

(assert (=> b!7809463 (=> (not res!3110101) (not e!4622424))))

(assert (=> b!7809463 (= res!3110101 (isEmpty!42264 (tail!15508 (_1!38289 (get!26350 lt!2675702)))))))

(declare-fun b!7809464 () Bool)

(declare-fun e!4622426 () Bool)

(assert (=> b!7809464 (= e!4622426 (not (= (head!15967 (_1!38289 (get!26350 lt!2675702))) (c!1438008 r1!6279))))))

(declare-fun bm!724407 () Bool)

(declare-fun call!724412 () Bool)

(assert (=> bm!724407 (= call!724412 (isEmpty!42264 (_1!38289 (get!26350 lt!2675702))))))

(declare-fun b!7809465 () Bool)

(declare-fun res!3110098 () Bool)

(declare-fun e!4622422 () Bool)

(assert (=> b!7809465 (=> res!3110098 e!4622422)))

(assert (=> b!7809465 (= res!3110098 e!4622424)))

(declare-fun res!3110104 () Bool)

(assert (=> b!7809465 (=> (not res!3110104) (not e!4622424))))

(declare-fun lt!2675746 () Bool)

(assert (=> b!7809465 (= res!3110104 lt!2675746)))

(declare-fun b!7809466 () Bool)

(declare-fun e!4622423 () Bool)

(assert (=> b!7809466 (= e!4622422 e!4622423)))

(declare-fun res!3110105 () Bool)

(assert (=> b!7809466 (=> (not res!3110105) (not e!4622423))))

(assert (=> b!7809466 (= res!3110105 (not lt!2675746))))

(declare-fun b!7809467 () Bool)

(declare-fun res!3110100 () Bool)

(assert (=> b!7809467 (=> res!3110100 e!4622422)))

(assert (=> b!7809467 (= res!3110100 (not ((_ is ElementMatch!20893) r1!6279)))))

(declare-fun e!4622427 () Bool)

(assert (=> b!7809467 (= e!4622427 e!4622422)))

(declare-fun b!7809468 () Bool)

(assert (=> b!7809468 (= e!4622427 (not lt!2675746))))

(declare-fun b!7809469 () Bool)

(declare-fun res!3110102 () Bool)

(assert (=> b!7809469 (=> (not res!3110102) (not e!4622424))))

(assert (=> b!7809469 (= res!3110102 (not call!724412))))

(declare-fun b!7809470 () Bool)

(declare-fun e!4622425 () Bool)

(assert (=> b!7809470 (= e!4622425 (nullable!9277 r1!6279))))

(declare-fun b!7809471 () Bool)

(assert (=> b!7809471 (= e!4622424 (= (head!15967 (_1!38289 (get!26350 lt!2675702))) (c!1438008 r1!6279)))))

(declare-fun b!7809472 () Bool)

(declare-fun e!4622421 () Bool)

(assert (=> b!7809472 (= e!4622421 (= lt!2675746 call!724412))))

(declare-fun b!7809473 () Bool)

(assert (=> b!7809473 (= e!4622425 (matchR!10353 (derivativeStep!6229 r1!6279 (head!15967 (_1!38289 (get!26350 lt!2675702)))) (tail!15508 (_1!38289 (get!26350 lt!2675702)))))))

(declare-fun d!2348620 () Bool)

(assert (=> d!2348620 e!4622421))

(declare-fun c!1438109 () Bool)

(assert (=> d!2348620 (= c!1438109 ((_ is EmptyExpr!20893) r1!6279))))

(assert (=> d!2348620 (= lt!2675746 e!4622425)))

(declare-fun c!1438111 () Bool)

(assert (=> d!2348620 (= c!1438111 (isEmpty!42264 (_1!38289 (get!26350 lt!2675702))))))

(assert (=> d!2348620 (validRegex!11307 r1!6279)))

(assert (=> d!2348620 (= (matchR!10353 r1!6279 (_1!38289 (get!26350 lt!2675702))) lt!2675746)))

(declare-fun b!7809474 () Bool)

(assert (=> b!7809474 (= e!4622423 e!4622426)))

(declare-fun res!3110099 () Bool)

(assert (=> b!7809474 (=> res!3110099 e!4622426)))

(assert (=> b!7809474 (= res!3110099 call!724412)))

(declare-fun b!7809475 () Bool)

(assert (=> b!7809475 (= e!4622421 e!4622427)))

(declare-fun c!1438110 () Bool)

(assert (=> b!7809475 (= c!1438110 ((_ is EmptyLang!20893) r1!6279))))

(declare-fun b!7809476 () Bool)

(declare-fun res!3110103 () Bool)

(assert (=> b!7809476 (=> res!3110103 e!4622426)))

(assert (=> b!7809476 (= res!3110103 (not (isEmpty!42264 (tail!15508 (_1!38289 (get!26350 lt!2675702))))))))

(assert (= (and d!2348620 c!1438111) b!7809470))

(assert (= (and d!2348620 (not c!1438111)) b!7809473))

(assert (= (and d!2348620 c!1438109) b!7809472))

(assert (= (and d!2348620 (not c!1438109)) b!7809475))

(assert (= (and b!7809475 c!1438110) b!7809468))

(assert (= (and b!7809475 (not c!1438110)) b!7809467))

(assert (= (and b!7809467 (not res!3110100)) b!7809465))

(assert (= (and b!7809465 res!3110104) b!7809469))

(assert (= (and b!7809469 res!3110102) b!7809463))

(assert (= (and b!7809463 res!3110101) b!7809471))

(assert (= (and b!7809465 (not res!3110098)) b!7809466))

(assert (= (and b!7809466 res!3110105) b!7809474))

(assert (= (and b!7809474 (not res!3110099)) b!7809476))

(assert (= (and b!7809476 (not res!3110103)) b!7809464))

(assert (= (or b!7809472 b!7809469 b!7809474) bm!724407))

(declare-fun m!8241466 () Bool)

(assert (=> b!7809463 m!8241466))

(assert (=> b!7809463 m!8241466))

(declare-fun m!8241468 () Bool)

(assert (=> b!7809463 m!8241468))

(declare-fun m!8241470 () Bool)

(assert (=> b!7809464 m!8241470))

(assert (=> b!7809473 m!8241470))

(assert (=> b!7809473 m!8241470))

(declare-fun m!8241472 () Bool)

(assert (=> b!7809473 m!8241472))

(assert (=> b!7809473 m!8241466))

(assert (=> b!7809473 m!8241472))

(assert (=> b!7809473 m!8241466))

(declare-fun m!8241474 () Bool)

(assert (=> b!7809473 m!8241474))

(declare-fun m!8241476 () Bool)

(assert (=> bm!724407 m!8241476))

(assert (=> b!7809470 m!8241114))

(assert (=> b!7809471 m!8241470))

(assert (=> d!2348620 m!8241476))

(assert (=> d!2348620 m!8241120))

(assert (=> b!7809476 m!8241466))

(assert (=> b!7809476 m!8241466))

(assert (=> b!7809476 m!8241468))

(assert (=> b!7808997 d!2348620))

(assert (=> b!7808997 d!2348560))

(declare-fun d!2348622 () Bool)

(assert (=> d!2348622 (= (nullable!9277 (reg!21222 r1!6279)) (nullableFct!3655 (reg!21222 r1!6279)))))

(declare-fun bs!1966604 () Bool)

(assert (= bs!1966604 d!2348622))

(declare-fun m!8241478 () Bool)

(assert (=> bs!1966604 m!8241478))

(assert (=> b!7808954 d!2348622))

(declare-fun b!7809477 () Bool)

(declare-fun e!4622432 () Bool)

(declare-fun e!4622430 () Bool)

(assert (=> b!7809477 (= e!4622432 e!4622430)))

(declare-fun res!3110106 () Bool)

(declare-fun call!724413 () Bool)

(assert (=> b!7809477 (= res!3110106 call!724413)))

(assert (=> b!7809477 (=> (not res!3110106) (not e!4622430))))

(declare-fun bm!724408 () Bool)

(declare-fun c!1438112 () Bool)

(assert (=> bm!724408 (= call!724413 (nullable!9277 (ite c!1438112 (regOne!42299 r2!6217) (regOne!42298 r2!6217))))))

(declare-fun b!7809478 () Bool)

(declare-fun e!4622429 () Bool)

(assert (=> b!7809478 (= e!4622429 e!4622432)))

(assert (=> b!7809478 (= c!1438112 ((_ is Union!20893) r2!6217))))

(declare-fun b!7809480 () Bool)

(declare-fun e!4622428 () Bool)

(assert (=> b!7809480 (= e!4622432 e!4622428)))

(declare-fun res!3110107 () Bool)

(assert (=> b!7809480 (= res!3110107 call!724413)))

(assert (=> b!7809480 (=> res!3110107 e!4622428)))

(declare-fun bm!724409 () Bool)

(declare-fun call!724414 () Bool)

(assert (=> bm!724409 (= call!724414 (nullable!9277 (ite c!1438112 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))))))

(declare-fun b!7809481 () Bool)

(declare-fun e!4622433 () Bool)

(declare-fun e!4622431 () Bool)

(assert (=> b!7809481 (= e!4622433 e!4622431)))

(declare-fun res!3110109 () Bool)

(assert (=> b!7809481 (=> (not res!3110109) (not e!4622431))))

(assert (=> b!7809481 (= res!3110109 (and (not ((_ is EmptyLang!20893) r2!6217)) (not ((_ is ElementMatch!20893) r2!6217))))))

(declare-fun b!7809482 () Bool)

(assert (=> b!7809482 (= e!4622431 e!4622429)))

(declare-fun res!3110108 () Bool)

(assert (=> b!7809482 (=> res!3110108 e!4622429)))

(assert (=> b!7809482 (= res!3110108 ((_ is Star!20893) r2!6217))))

(declare-fun b!7809483 () Bool)

(assert (=> b!7809483 (= e!4622430 call!724414)))

(declare-fun d!2348624 () Bool)

(declare-fun res!3110110 () Bool)

(assert (=> d!2348624 (=> res!3110110 e!4622433)))

(assert (=> d!2348624 (= res!3110110 ((_ is EmptyExpr!20893) r2!6217))))

(assert (=> d!2348624 (= (nullableFct!3655 r2!6217) e!4622433)))

(declare-fun b!7809479 () Bool)

(assert (=> b!7809479 (= e!4622428 call!724414)))

(assert (= (and d!2348624 (not res!3110110)) b!7809481))

(assert (= (and b!7809481 res!3110109) b!7809482))

(assert (= (and b!7809482 (not res!3110108)) b!7809478))

(assert (= (and b!7809478 c!1438112) b!7809480))

(assert (= (and b!7809478 (not c!1438112)) b!7809477))

(assert (= (and b!7809480 (not res!3110107)) b!7809479))

(assert (= (and b!7809477 res!3110106) b!7809483))

(assert (= (or b!7809479 b!7809483) bm!724409))

(assert (= (or b!7809480 b!7809477) bm!724408))

(declare-fun m!8241480 () Bool)

(assert (=> bm!724408 m!8241480))

(declare-fun m!8241482 () Bool)

(assert (=> bm!724409 m!8241482))

(assert (=> d!2348534 d!2348624))

(declare-fun b!7809484 () Bool)

(declare-fun res!3110114 () Bool)

(declare-fun e!4622437 () Bool)

(assert (=> b!7809484 (=> (not res!3110114) (not e!4622437))))

(assert (=> b!7809484 (= res!3110114 (isEmpty!42264 (tail!15508 Nil!73608)))))

(declare-fun b!7809485 () Bool)

(declare-fun e!4622439 () Bool)

(assert (=> b!7809485 (= e!4622439 (not (= (head!15967 Nil!73608) (c!1438008 r2!6217))))))

(declare-fun bm!724410 () Bool)

(declare-fun call!724415 () Bool)

(assert (=> bm!724410 (= call!724415 (isEmpty!42264 Nil!73608))))

(declare-fun b!7809486 () Bool)

(declare-fun res!3110111 () Bool)

(declare-fun e!4622435 () Bool)

(assert (=> b!7809486 (=> res!3110111 e!4622435)))

(assert (=> b!7809486 (= res!3110111 e!4622437)))

(declare-fun res!3110117 () Bool)

(assert (=> b!7809486 (=> (not res!3110117) (not e!4622437))))

(declare-fun lt!2675747 () Bool)

(assert (=> b!7809486 (= res!3110117 lt!2675747)))

(declare-fun b!7809487 () Bool)

(declare-fun e!4622436 () Bool)

(assert (=> b!7809487 (= e!4622435 e!4622436)))

(declare-fun res!3110118 () Bool)

(assert (=> b!7809487 (=> (not res!3110118) (not e!4622436))))

(assert (=> b!7809487 (= res!3110118 (not lt!2675747))))

(declare-fun b!7809488 () Bool)

(declare-fun res!3110113 () Bool)

(assert (=> b!7809488 (=> res!3110113 e!4622435)))

(assert (=> b!7809488 (= res!3110113 (not ((_ is ElementMatch!20893) r2!6217)))))

(declare-fun e!4622440 () Bool)

(assert (=> b!7809488 (= e!4622440 e!4622435)))

(declare-fun b!7809489 () Bool)

(assert (=> b!7809489 (= e!4622440 (not lt!2675747))))

(declare-fun b!7809490 () Bool)

(declare-fun res!3110115 () Bool)

(assert (=> b!7809490 (=> (not res!3110115) (not e!4622437))))

(assert (=> b!7809490 (= res!3110115 (not call!724415))))

(declare-fun b!7809491 () Bool)

(declare-fun e!4622438 () Bool)

(assert (=> b!7809491 (= e!4622438 (nullable!9277 r2!6217))))

(declare-fun b!7809492 () Bool)

(assert (=> b!7809492 (= e!4622437 (= (head!15967 Nil!73608) (c!1438008 r2!6217)))))

(declare-fun b!7809493 () Bool)

(declare-fun e!4622434 () Bool)

(assert (=> b!7809493 (= e!4622434 (= lt!2675747 call!724415))))

(declare-fun b!7809494 () Bool)

(assert (=> b!7809494 (= e!4622438 (matchR!10353 (derivativeStep!6229 r2!6217 (head!15967 Nil!73608)) (tail!15508 Nil!73608)))))

(declare-fun d!2348626 () Bool)

(assert (=> d!2348626 e!4622434))

(declare-fun c!1438113 () Bool)

(assert (=> d!2348626 (= c!1438113 ((_ is EmptyExpr!20893) r2!6217))))

(assert (=> d!2348626 (= lt!2675747 e!4622438)))

(declare-fun c!1438115 () Bool)

(assert (=> d!2348626 (= c!1438115 (isEmpty!42264 Nil!73608))))

(assert (=> d!2348626 (validRegex!11307 r2!6217)))

(assert (=> d!2348626 (= (matchR!10353 r2!6217 Nil!73608) lt!2675747)))

(declare-fun b!7809495 () Bool)

(assert (=> b!7809495 (= e!4622436 e!4622439)))

(declare-fun res!3110112 () Bool)

(assert (=> b!7809495 (=> res!3110112 e!4622439)))

(assert (=> b!7809495 (= res!3110112 call!724415)))

(declare-fun b!7809496 () Bool)

(assert (=> b!7809496 (= e!4622434 e!4622440)))

(declare-fun c!1438114 () Bool)

(assert (=> b!7809496 (= c!1438114 ((_ is EmptyLang!20893) r2!6217))))

(declare-fun b!7809497 () Bool)

(declare-fun res!3110116 () Bool)

(assert (=> b!7809497 (=> res!3110116 e!4622439)))

(assert (=> b!7809497 (= res!3110116 (not (isEmpty!42264 (tail!15508 Nil!73608))))))

(assert (= (and d!2348626 c!1438115) b!7809491))

(assert (= (and d!2348626 (not c!1438115)) b!7809494))

(assert (= (and d!2348626 c!1438113) b!7809493))

(assert (= (and d!2348626 (not c!1438113)) b!7809496))

(assert (= (and b!7809496 c!1438114) b!7809489))

(assert (= (and b!7809496 (not c!1438114)) b!7809488))

(assert (= (and b!7809488 (not res!3110113)) b!7809486))

(assert (= (and b!7809486 res!3110117) b!7809490))

(assert (= (and b!7809490 res!3110115) b!7809484))

(assert (= (and b!7809484 res!3110114) b!7809492))

(assert (= (and b!7809486 (not res!3110111)) b!7809487))

(assert (= (and b!7809487 res!3110118) b!7809495))

(assert (= (and b!7809495 (not res!3110112)) b!7809497))

(assert (= (and b!7809497 (not res!3110116)) b!7809485))

(assert (= (or b!7809493 b!7809490 b!7809495) bm!724410))

(assert (=> b!7809484 m!8241384))

(assert (=> b!7809484 m!8241384))

(assert (=> b!7809484 m!8241386))

(assert (=> b!7809485 m!8241388))

(assert (=> b!7809494 m!8241388))

(assert (=> b!7809494 m!8241388))

(declare-fun m!8241484 () Bool)

(assert (=> b!7809494 m!8241484))

(assert (=> b!7809494 m!8241384))

(assert (=> b!7809494 m!8241484))

(assert (=> b!7809494 m!8241384))

(declare-fun m!8241486 () Bool)

(assert (=> b!7809494 m!8241486))

(assert (=> bm!724410 m!8241394))

(assert (=> b!7809491 m!8241122))

(assert (=> b!7809492 m!8241388))

(assert (=> d!2348626 m!8241394))

(assert (=> d!2348626 m!8241128))

(assert (=> b!7809497 m!8241384))

(assert (=> b!7809497 m!8241384))

(assert (=> b!7809497 m!8241386))

(assert (=> b!7809001 d!2348626))

(declare-fun d!2348628 () Bool)

(assert (=> d!2348628 (= (nullable!9277 (Concat!29738 r1!6279 r2!6217)) (nullableFct!3655 (Concat!29738 r1!6279 r2!6217)))))

(declare-fun bs!1966605 () Bool)

(assert (= bs!1966605 d!2348628))

(declare-fun m!8241488 () Bool)

(assert (=> bs!1966605 m!8241488))

(assert (=> b!7809055 d!2348628))

(declare-fun c!1438116 () Bool)

(declare-fun bm!724411 () Bool)

(declare-fun call!724418 () Bool)

(assert (=> bm!724411 (= call!724418 (validRegex!11307 (ite c!1438116 (regTwo!42299 (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))) (regTwo!42298 (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))))))))

(declare-fun b!7809498 () Bool)

(declare-fun e!4622444 () Bool)

(declare-fun call!724417 () Bool)

(assert (=> b!7809498 (= e!4622444 call!724417)))

(declare-fun b!7809499 () Bool)

(declare-fun res!3110120 () Bool)

(declare-fun e!4622445 () Bool)

(assert (=> b!7809499 (=> res!3110120 e!4622445)))

(assert (=> b!7809499 (= res!3110120 (not ((_ is Concat!29738) (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279))))))))

(declare-fun e!4622442 () Bool)

(assert (=> b!7809499 (= e!4622442 e!4622445)))

(declare-fun bm!724412 () Bool)

(declare-fun call!724416 () Bool)

(assert (=> bm!724412 (= call!724416 call!724417)))

(declare-fun d!2348630 () Bool)

(declare-fun res!3110121 () Bool)

(declare-fun e!4622447 () Bool)

(assert (=> d!2348630 (=> res!3110121 e!4622447)))

(assert (=> d!2348630 (= res!3110121 ((_ is ElementMatch!20893) (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))))))

(assert (=> d!2348630 (= (validRegex!11307 (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))) e!4622447)))

(declare-fun b!7809500 () Bool)

(declare-fun e!4622441 () Bool)

(assert (=> b!7809500 (= e!4622447 e!4622441)))

(declare-fun c!1438117 () Bool)

(assert (=> b!7809500 (= c!1438117 ((_ is Star!20893) (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))))))

(declare-fun b!7809501 () Bool)

(assert (=> b!7809501 (= e!4622441 e!4622442)))

(assert (=> b!7809501 (= c!1438116 ((_ is Union!20893) (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))))))

(declare-fun b!7809502 () Bool)

(declare-fun e!4622446 () Bool)

(assert (=> b!7809502 (= e!4622445 e!4622446)))

(declare-fun res!3110123 () Bool)

(assert (=> b!7809502 (=> (not res!3110123) (not e!4622446))))

(assert (=> b!7809502 (= res!3110123 call!724416)))

(declare-fun b!7809503 () Bool)

(declare-fun e!4622443 () Bool)

(assert (=> b!7809503 (= e!4622443 call!724418)))

(declare-fun b!7809504 () Bool)

(assert (=> b!7809504 (= e!4622441 e!4622444)))

(declare-fun res!3110122 () Bool)

(assert (=> b!7809504 (= res!3110122 (not (nullable!9277 (reg!21222 (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))))))))

(assert (=> b!7809504 (=> (not res!3110122) (not e!4622444))))

(declare-fun b!7809505 () Bool)

(assert (=> b!7809505 (= e!4622446 call!724418)))

(declare-fun b!7809506 () Bool)

(declare-fun res!3110119 () Bool)

(assert (=> b!7809506 (=> (not res!3110119) (not e!4622443))))

(assert (=> b!7809506 (= res!3110119 call!724416)))

(assert (=> b!7809506 (= e!4622442 e!4622443)))

(declare-fun bm!724413 () Bool)

(assert (=> bm!724413 (= call!724417 (validRegex!11307 (ite c!1438117 (reg!21222 (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))) (ite c!1438116 (regOne!42299 (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279)))) (regOne!42298 (ite c!1438014 (reg!21222 r1!6279) (ite c!1438013 (regOne!42299 r1!6279) (regOne!42298 r1!6279))))))))))

(assert (= (and d!2348630 (not res!3110121)) b!7809500))

(assert (= (and b!7809500 c!1438117) b!7809504))

(assert (= (and b!7809500 (not c!1438117)) b!7809501))

(assert (= (and b!7809504 res!3110122) b!7809498))

(assert (= (and b!7809501 c!1438116) b!7809506))

(assert (= (and b!7809501 (not c!1438116)) b!7809499))

(assert (= (and b!7809506 res!3110119) b!7809503))

(assert (= (and b!7809499 (not res!3110120)) b!7809502))

(assert (= (and b!7809502 res!3110123) b!7809505))

(assert (= (or b!7809506 b!7809502) bm!724412))

(assert (= (or b!7809503 b!7809505) bm!724411))

(assert (= (or b!7809498 bm!724412) bm!724413))

(declare-fun m!8241490 () Bool)

(assert (=> bm!724411 m!8241490))

(declare-fun m!8241492 () Bool)

(assert (=> b!7809504 m!8241492))

(declare-fun m!8241494 () Bool)

(assert (=> bm!724413 m!8241494))

(assert (=> bm!724352 d!2348630))

(declare-fun c!1438118 () Bool)

(declare-fun call!724421 () Bool)

(declare-fun bm!724414 () Bool)

(assert (=> bm!724414 (= call!724421 (validRegex!11307 (ite c!1438118 (regTwo!42299 (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))) (regTwo!42298 (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))))))))

(declare-fun b!7809507 () Bool)

(declare-fun e!4622451 () Bool)

(declare-fun call!724420 () Bool)

(assert (=> b!7809507 (= e!4622451 call!724420)))

(declare-fun b!7809508 () Bool)

(declare-fun res!3110125 () Bool)

(declare-fun e!4622452 () Bool)

(assert (=> b!7809508 (=> res!3110125 e!4622452)))

(assert (=> b!7809508 (= res!3110125 (not ((_ is Concat!29738) (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217)))))))

(declare-fun e!4622449 () Bool)

(assert (=> b!7809508 (= e!4622449 e!4622452)))

(declare-fun bm!724415 () Bool)

(declare-fun call!724419 () Bool)

(assert (=> bm!724415 (= call!724419 call!724420)))

(declare-fun d!2348632 () Bool)

(declare-fun res!3110126 () Bool)

(declare-fun e!4622454 () Bool)

(assert (=> d!2348632 (=> res!3110126 e!4622454)))

(assert (=> d!2348632 (= res!3110126 ((_ is ElementMatch!20893) (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))))))

(assert (=> d!2348632 (= (validRegex!11307 (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))) e!4622454)))

(declare-fun b!7809509 () Bool)

(declare-fun e!4622448 () Bool)

(assert (=> b!7809509 (= e!4622454 e!4622448)))

(declare-fun c!1438119 () Bool)

(assert (=> b!7809509 (= c!1438119 ((_ is Star!20893) (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))))))

(declare-fun b!7809510 () Bool)

(assert (=> b!7809510 (= e!4622448 e!4622449)))

(assert (=> b!7809510 (= c!1438118 ((_ is Union!20893) (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))))))

(declare-fun b!7809511 () Bool)

(declare-fun e!4622453 () Bool)

(assert (=> b!7809511 (= e!4622452 e!4622453)))

(declare-fun res!3110128 () Bool)

(assert (=> b!7809511 (=> (not res!3110128) (not e!4622453))))

(assert (=> b!7809511 (= res!3110128 call!724419)))

(declare-fun b!7809512 () Bool)

(declare-fun e!4622450 () Bool)

(assert (=> b!7809512 (= e!4622450 call!724421)))

(declare-fun b!7809513 () Bool)

(assert (=> b!7809513 (= e!4622448 e!4622451)))

(declare-fun res!3110127 () Bool)

(assert (=> b!7809513 (= res!3110127 (not (nullable!9277 (reg!21222 (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))))))))

(assert (=> b!7809513 (=> (not res!3110127) (not e!4622451))))

(declare-fun b!7809514 () Bool)

(assert (=> b!7809514 (= e!4622453 call!724421)))

(declare-fun b!7809515 () Bool)

(declare-fun res!3110124 () Bool)

(assert (=> b!7809515 (=> (not res!3110124) (not e!4622450))))

(assert (=> b!7809515 (= res!3110124 call!724419)))

(assert (=> b!7809515 (= e!4622449 e!4622450)))

(declare-fun bm!724416 () Bool)

(assert (=> bm!724416 (= call!724420 (validRegex!11307 (ite c!1438119 (reg!21222 (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))) (ite c!1438118 (regOne!42299 (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217))) (regOne!42298 (ite c!1438025 (regTwo!42299 r2!6217) (regTwo!42298 r2!6217)))))))))

(assert (= (and d!2348632 (not res!3110126)) b!7809509))

(assert (= (and b!7809509 c!1438119) b!7809513))

(assert (= (and b!7809509 (not c!1438119)) b!7809510))

(assert (= (and b!7809513 res!3110127) b!7809507))

(assert (= (and b!7809510 c!1438118) b!7809515))

(assert (= (and b!7809510 (not c!1438118)) b!7809508))

(assert (= (and b!7809515 res!3110124) b!7809512))

(assert (= (and b!7809508 (not res!3110125)) b!7809511))

(assert (= (and b!7809511 res!3110128) b!7809514))

(assert (= (or b!7809515 b!7809511) bm!724415))

(assert (= (or b!7809512 b!7809514) bm!724414))

(assert (= (or b!7809507 bm!724415) bm!724416))

(declare-fun m!8241496 () Bool)

(assert (=> bm!724414 m!8241496))

(declare-fun m!8241498 () Bool)

(assert (=> b!7809513 m!8241498))

(declare-fun m!8241500 () Bool)

(assert (=> bm!724416 m!8241500))

(assert (=> bm!724359 d!2348632))

(declare-fun b!7809518 () Bool)

(declare-fun e!4622455 () Bool)

(declare-fun tp!2300762 () Bool)

(assert (=> b!7809518 (= e!4622455 tp!2300762)))

(declare-fun b!7809516 () Bool)

(assert (=> b!7809516 (= e!4622455 tp_is_empty!52141)))

(declare-fun b!7809517 () Bool)

(declare-fun tp!2300761 () Bool)

(declare-fun tp!2300764 () Bool)

(assert (=> b!7809517 (= e!4622455 (and tp!2300761 tp!2300764))))

(assert (=> b!7809119 (= tp!2300688 e!4622455)))

(declare-fun b!7809519 () Bool)

(declare-fun tp!2300763 () Bool)

(declare-fun tp!2300760 () Bool)

(assert (=> b!7809519 (= e!4622455 (and tp!2300763 tp!2300760))))

(assert (= (and b!7809119 ((_ is ElementMatch!20893) (regOne!42298 (regOne!42298 r1!6279)))) b!7809516))

(assert (= (and b!7809119 ((_ is Concat!29738) (regOne!42298 (regOne!42298 r1!6279)))) b!7809517))

(assert (= (and b!7809119 ((_ is Star!20893) (regOne!42298 (regOne!42298 r1!6279)))) b!7809518))

(assert (= (and b!7809119 ((_ is Union!20893) (regOne!42298 (regOne!42298 r1!6279)))) b!7809519))

(declare-fun b!7809522 () Bool)

(declare-fun e!4622456 () Bool)

(declare-fun tp!2300767 () Bool)

(assert (=> b!7809522 (= e!4622456 tp!2300767)))

(declare-fun b!7809520 () Bool)

(assert (=> b!7809520 (= e!4622456 tp_is_empty!52141)))

(declare-fun b!7809521 () Bool)

(declare-fun tp!2300766 () Bool)

(declare-fun tp!2300769 () Bool)

(assert (=> b!7809521 (= e!4622456 (and tp!2300766 tp!2300769))))

(assert (=> b!7809119 (= tp!2300691 e!4622456)))

(declare-fun b!7809523 () Bool)

(declare-fun tp!2300768 () Bool)

(declare-fun tp!2300765 () Bool)

(assert (=> b!7809523 (= e!4622456 (and tp!2300768 tp!2300765))))

(assert (= (and b!7809119 ((_ is ElementMatch!20893) (regTwo!42298 (regOne!42298 r1!6279)))) b!7809520))

(assert (= (and b!7809119 ((_ is Concat!29738) (regTwo!42298 (regOne!42298 r1!6279)))) b!7809521))

(assert (= (and b!7809119 ((_ is Star!20893) (regTwo!42298 (regOne!42298 r1!6279)))) b!7809522))

(assert (= (and b!7809119 ((_ is Union!20893) (regTwo!42298 (regOne!42298 r1!6279)))) b!7809523))

(declare-fun b!7809526 () Bool)

(declare-fun e!4622457 () Bool)

(declare-fun tp!2300772 () Bool)

(assert (=> b!7809526 (= e!4622457 tp!2300772)))

(declare-fun b!7809524 () Bool)

(assert (=> b!7809524 (= e!4622457 tp_is_empty!52141)))

(declare-fun b!7809525 () Bool)

(declare-fun tp!2300771 () Bool)

(declare-fun tp!2300774 () Bool)

(assert (=> b!7809525 (= e!4622457 (and tp!2300771 tp!2300774))))

(assert (=> b!7809086 (= tp!2300650 e!4622457)))

(declare-fun b!7809527 () Bool)

(declare-fun tp!2300773 () Bool)

(declare-fun tp!2300770 () Bool)

(assert (=> b!7809527 (= e!4622457 (and tp!2300773 tp!2300770))))

(assert (= (and b!7809086 ((_ is ElementMatch!20893) (regOne!42298 (regTwo!42299 r1!6279)))) b!7809524))

(assert (= (and b!7809086 ((_ is Concat!29738) (regOne!42298 (regTwo!42299 r1!6279)))) b!7809525))

(assert (= (and b!7809086 ((_ is Star!20893) (regOne!42298 (regTwo!42299 r1!6279)))) b!7809526))

(assert (= (and b!7809086 ((_ is Union!20893) (regOne!42298 (regTwo!42299 r1!6279)))) b!7809527))

(declare-fun b!7809530 () Bool)

(declare-fun e!4622458 () Bool)

(declare-fun tp!2300777 () Bool)

(assert (=> b!7809530 (= e!4622458 tp!2300777)))

(declare-fun b!7809528 () Bool)

(assert (=> b!7809528 (= e!4622458 tp_is_empty!52141)))

(declare-fun b!7809529 () Bool)

(declare-fun tp!2300776 () Bool)

(declare-fun tp!2300779 () Bool)

(assert (=> b!7809529 (= e!4622458 (and tp!2300776 tp!2300779))))

(assert (=> b!7809086 (= tp!2300653 e!4622458)))

(declare-fun b!7809531 () Bool)

(declare-fun tp!2300778 () Bool)

(declare-fun tp!2300775 () Bool)

(assert (=> b!7809531 (= e!4622458 (and tp!2300778 tp!2300775))))

(assert (= (and b!7809086 ((_ is ElementMatch!20893) (regTwo!42298 (regTwo!42299 r1!6279)))) b!7809528))

(assert (= (and b!7809086 ((_ is Concat!29738) (regTwo!42298 (regTwo!42299 r1!6279)))) b!7809529))

(assert (= (and b!7809086 ((_ is Star!20893) (regTwo!42298 (regTwo!42299 r1!6279)))) b!7809530))

(assert (= (and b!7809086 ((_ is Union!20893) (regTwo!42298 (regTwo!42299 r1!6279)))) b!7809531))

(declare-fun b!7809534 () Bool)

(declare-fun e!4622459 () Bool)

(declare-fun tp!2300782 () Bool)

(assert (=> b!7809534 (= e!4622459 tp!2300782)))

(declare-fun b!7809532 () Bool)

(assert (=> b!7809532 (= e!4622459 tp_is_empty!52141)))

(declare-fun b!7809533 () Bool)

(declare-fun tp!2300781 () Bool)

(declare-fun tp!2300784 () Bool)

(assert (=> b!7809533 (= e!4622459 (and tp!2300781 tp!2300784))))

(assert (=> b!7809112 (= tp!2300679 e!4622459)))

(declare-fun b!7809535 () Bool)

(declare-fun tp!2300783 () Bool)

(declare-fun tp!2300780 () Bool)

(assert (=> b!7809535 (= e!4622459 (and tp!2300783 tp!2300780))))

(assert (= (and b!7809112 ((_ is ElementMatch!20893) (reg!21222 (regOne!42299 r2!6217)))) b!7809532))

(assert (= (and b!7809112 ((_ is Concat!29738) (reg!21222 (regOne!42299 r2!6217)))) b!7809533))

(assert (= (and b!7809112 ((_ is Star!20893) (reg!21222 (regOne!42299 r2!6217)))) b!7809534))

(assert (= (and b!7809112 ((_ is Union!20893) (reg!21222 (regOne!42299 r2!6217)))) b!7809535))

(declare-fun b!7809538 () Bool)

(declare-fun e!4622460 () Bool)

(declare-fun tp!2300787 () Bool)

(assert (=> b!7809538 (= e!4622460 tp!2300787)))

(declare-fun b!7809536 () Bool)

(assert (=> b!7809536 (= e!4622460 tp_is_empty!52141)))

(declare-fun b!7809537 () Bool)

(declare-fun tp!2300786 () Bool)

(declare-fun tp!2300789 () Bool)

(assert (=> b!7809537 (= e!4622460 (and tp!2300786 tp!2300789))))

(assert (=> b!7809088 (= tp!2300652 e!4622460)))

(declare-fun b!7809539 () Bool)

(declare-fun tp!2300788 () Bool)

(declare-fun tp!2300785 () Bool)

(assert (=> b!7809539 (= e!4622460 (and tp!2300788 tp!2300785))))

(assert (= (and b!7809088 ((_ is ElementMatch!20893) (regOne!42299 (regTwo!42299 r1!6279)))) b!7809536))

(assert (= (and b!7809088 ((_ is Concat!29738) (regOne!42299 (regTwo!42299 r1!6279)))) b!7809537))

(assert (= (and b!7809088 ((_ is Star!20893) (regOne!42299 (regTwo!42299 r1!6279)))) b!7809538))

(assert (= (and b!7809088 ((_ is Union!20893) (regOne!42299 (regTwo!42299 r1!6279)))) b!7809539))

(declare-fun b!7809542 () Bool)

(declare-fun e!4622461 () Bool)

(declare-fun tp!2300792 () Bool)

(assert (=> b!7809542 (= e!4622461 tp!2300792)))

(declare-fun b!7809540 () Bool)

(assert (=> b!7809540 (= e!4622461 tp_is_empty!52141)))

(declare-fun b!7809541 () Bool)

(declare-fun tp!2300791 () Bool)

(declare-fun tp!2300794 () Bool)

(assert (=> b!7809541 (= e!4622461 (and tp!2300791 tp!2300794))))

(assert (=> b!7809088 (= tp!2300649 e!4622461)))

(declare-fun b!7809543 () Bool)

(declare-fun tp!2300793 () Bool)

(declare-fun tp!2300790 () Bool)

(assert (=> b!7809543 (= e!4622461 (and tp!2300793 tp!2300790))))

(assert (= (and b!7809088 ((_ is ElementMatch!20893) (regTwo!42299 (regTwo!42299 r1!6279)))) b!7809540))

(assert (= (and b!7809088 ((_ is Concat!29738) (regTwo!42299 (regTwo!42299 r1!6279)))) b!7809541))

(assert (= (and b!7809088 ((_ is Star!20893) (regTwo!42299 (regTwo!42299 r1!6279)))) b!7809542))

(assert (= (and b!7809088 ((_ is Union!20893) (regTwo!42299 (regTwo!42299 r1!6279)))) b!7809543))

(declare-fun b!7809546 () Bool)

(declare-fun e!4622462 () Bool)

(declare-fun tp!2300797 () Bool)

(assert (=> b!7809546 (= e!4622462 tp!2300797)))

(declare-fun b!7809544 () Bool)

(assert (=> b!7809544 (= e!4622462 tp_is_empty!52141)))

(declare-fun b!7809545 () Bool)

(declare-fun tp!2300796 () Bool)

(declare-fun tp!2300799 () Bool)

(assert (=> b!7809545 (= e!4622462 (and tp!2300796 tp!2300799))))

(assert (=> b!7809103 (= tp!2300668 e!4622462)))

(declare-fun b!7809547 () Bool)

(declare-fun tp!2300798 () Bool)

(declare-fun tp!2300795 () Bool)

(assert (=> b!7809547 (= e!4622462 (and tp!2300798 tp!2300795))))

(assert (= (and b!7809103 ((_ is ElementMatch!20893) (regOne!42298 (regOne!42298 r2!6217)))) b!7809544))

(assert (= (and b!7809103 ((_ is Concat!29738) (regOne!42298 (regOne!42298 r2!6217)))) b!7809545))

(assert (= (and b!7809103 ((_ is Star!20893) (regOne!42298 (regOne!42298 r2!6217)))) b!7809546))

(assert (= (and b!7809103 ((_ is Union!20893) (regOne!42298 (regOne!42298 r2!6217)))) b!7809547))

(declare-fun b!7809550 () Bool)

(declare-fun e!4622463 () Bool)

(declare-fun tp!2300802 () Bool)

(assert (=> b!7809550 (= e!4622463 tp!2300802)))

(declare-fun b!7809548 () Bool)

(assert (=> b!7809548 (= e!4622463 tp_is_empty!52141)))

(declare-fun b!7809549 () Bool)

(declare-fun tp!2300801 () Bool)

(declare-fun tp!2300804 () Bool)

(assert (=> b!7809549 (= e!4622463 (and tp!2300801 tp!2300804))))

(assert (=> b!7809103 (= tp!2300671 e!4622463)))

(declare-fun b!7809551 () Bool)

(declare-fun tp!2300803 () Bool)

(declare-fun tp!2300800 () Bool)

(assert (=> b!7809551 (= e!4622463 (and tp!2300803 tp!2300800))))

(assert (= (and b!7809103 ((_ is ElementMatch!20893) (regTwo!42298 (regOne!42298 r2!6217)))) b!7809548))

(assert (= (and b!7809103 ((_ is Concat!29738) (regTwo!42298 (regOne!42298 r2!6217)))) b!7809549))

(assert (= (and b!7809103 ((_ is Star!20893) (regTwo!42298 (regOne!42298 r2!6217)))) b!7809550))

(assert (= (and b!7809103 ((_ is Union!20893) (regTwo!42298 (regOne!42298 r2!6217)))) b!7809551))

(declare-fun b!7809554 () Bool)

(declare-fun e!4622464 () Bool)

(declare-fun tp!2300807 () Bool)

(assert (=> b!7809554 (= e!4622464 tp!2300807)))

(declare-fun b!7809552 () Bool)

(assert (=> b!7809552 (= e!4622464 tp_is_empty!52141)))

(declare-fun b!7809553 () Bool)

(declare-fun tp!2300806 () Bool)

(declare-fun tp!2300809 () Bool)

(assert (=> b!7809553 (= e!4622464 (and tp!2300806 tp!2300809))))

(assert (=> b!7809113 (= tp!2300680 e!4622464)))

(declare-fun b!7809555 () Bool)

(declare-fun tp!2300808 () Bool)

(declare-fun tp!2300805 () Bool)

(assert (=> b!7809555 (= e!4622464 (and tp!2300808 tp!2300805))))

(assert (= (and b!7809113 ((_ is ElementMatch!20893) (regOne!42299 (regOne!42299 r2!6217)))) b!7809552))

(assert (= (and b!7809113 ((_ is Concat!29738) (regOne!42299 (regOne!42299 r2!6217)))) b!7809553))

(assert (= (and b!7809113 ((_ is Star!20893) (regOne!42299 (regOne!42299 r2!6217)))) b!7809554))

(assert (= (and b!7809113 ((_ is Union!20893) (regOne!42299 (regOne!42299 r2!6217)))) b!7809555))

(declare-fun b!7809558 () Bool)

(declare-fun e!4622465 () Bool)

(declare-fun tp!2300812 () Bool)

(assert (=> b!7809558 (= e!4622465 tp!2300812)))

(declare-fun b!7809556 () Bool)

(assert (=> b!7809556 (= e!4622465 tp_is_empty!52141)))

(declare-fun b!7809557 () Bool)

(declare-fun tp!2300811 () Bool)

(declare-fun tp!2300814 () Bool)

(assert (=> b!7809557 (= e!4622465 (and tp!2300811 tp!2300814))))

(assert (=> b!7809113 (= tp!2300677 e!4622465)))

(declare-fun b!7809559 () Bool)

(declare-fun tp!2300813 () Bool)

(declare-fun tp!2300810 () Bool)

(assert (=> b!7809559 (= e!4622465 (and tp!2300813 tp!2300810))))

(assert (= (and b!7809113 ((_ is ElementMatch!20893) (regTwo!42299 (regOne!42299 r2!6217)))) b!7809556))

(assert (= (and b!7809113 ((_ is Concat!29738) (regTwo!42299 (regOne!42299 r2!6217)))) b!7809557))

(assert (= (and b!7809113 ((_ is Star!20893) (regTwo!42299 (regOne!42299 r2!6217)))) b!7809558))

(assert (= (and b!7809113 ((_ is Union!20893) (regTwo!42299 (regOne!42299 r2!6217)))) b!7809559))

(declare-fun b!7809562 () Bool)

(declare-fun e!4622466 () Bool)

(declare-fun tp!2300817 () Bool)

(assert (=> b!7809562 (= e!4622466 tp!2300817)))

(declare-fun b!7809560 () Bool)

(assert (=> b!7809560 (= e!4622466 tp_is_empty!52141)))

(declare-fun b!7809561 () Bool)

(declare-fun tp!2300816 () Bool)

(declare-fun tp!2300819 () Bool)

(assert (=> b!7809561 (= e!4622466 (and tp!2300816 tp!2300819))))

(assert (=> b!7809120 (= tp!2300689 e!4622466)))

(declare-fun b!7809563 () Bool)

(declare-fun tp!2300818 () Bool)

(declare-fun tp!2300815 () Bool)

(assert (=> b!7809563 (= e!4622466 (and tp!2300818 tp!2300815))))

(assert (= (and b!7809120 ((_ is ElementMatch!20893) (reg!21222 (regOne!42298 r1!6279)))) b!7809560))

(assert (= (and b!7809120 ((_ is Concat!29738) (reg!21222 (regOne!42298 r1!6279)))) b!7809561))

(assert (= (and b!7809120 ((_ is Star!20893) (reg!21222 (regOne!42298 r1!6279)))) b!7809562))

(assert (= (and b!7809120 ((_ is Union!20893) (reg!21222 (regOne!42298 r1!6279)))) b!7809563))

(declare-fun b!7809566 () Bool)

(declare-fun e!4622467 () Bool)

(declare-fun tp!2300822 () Bool)

(assert (=> b!7809566 (= e!4622467 tp!2300822)))

(declare-fun b!7809564 () Bool)

(assert (=> b!7809564 (= e!4622467 tp_is_empty!52141)))

(declare-fun b!7809565 () Bool)

(declare-fun tp!2300821 () Bool)

(declare-fun tp!2300824 () Bool)

(assert (=> b!7809565 (= e!4622467 (and tp!2300821 tp!2300824))))

(assert (=> b!7809111 (= tp!2300678 e!4622467)))

(declare-fun b!7809567 () Bool)

(declare-fun tp!2300823 () Bool)

(declare-fun tp!2300820 () Bool)

(assert (=> b!7809567 (= e!4622467 (and tp!2300823 tp!2300820))))

(assert (= (and b!7809111 ((_ is ElementMatch!20893) (regOne!42298 (regOne!42299 r2!6217)))) b!7809564))

(assert (= (and b!7809111 ((_ is Concat!29738) (regOne!42298 (regOne!42299 r2!6217)))) b!7809565))

(assert (= (and b!7809111 ((_ is Star!20893) (regOne!42298 (regOne!42299 r2!6217)))) b!7809566))

(assert (= (and b!7809111 ((_ is Union!20893) (regOne!42298 (regOne!42299 r2!6217)))) b!7809567))

(declare-fun b!7809570 () Bool)

(declare-fun e!4622468 () Bool)

(declare-fun tp!2300827 () Bool)

(assert (=> b!7809570 (= e!4622468 tp!2300827)))

(declare-fun b!7809568 () Bool)

(assert (=> b!7809568 (= e!4622468 tp_is_empty!52141)))

(declare-fun b!7809569 () Bool)

(declare-fun tp!2300826 () Bool)

(declare-fun tp!2300829 () Bool)

(assert (=> b!7809569 (= e!4622468 (and tp!2300826 tp!2300829))))

(assert (=> b!7809111 (= tp!2300681 e!4622468)))

(declare-fun b!7809571 () Bool)

(declare-fun tp!2300828 () Bool)

(declare-fun tp!2300825 () Bool)

(assert (=> b!7809571 (= e!4622468 (and tp!2300828 tp!2300825))))

(assert (= (and b!7809111 ((_ is ElementMatch!20893) (regTwo!42298 (regOne!42299 r2!6217)))) b!7809568))

(assert (= (and b!7809111 ((_ is Concat!29738) (regTwo!42298 (regOne!42299 r2!6217)))) b!7809569))

(assert (= (and b!7809111 ((_ is Star!20893) (regTwo!42298 (regOne!42299 r2!6217)))) b!7809570))

(assert (= (and b!7809111 ((_ is Union!20893) (regTwo!42298 (regOne!42299 r2!6217)))) b!7809571))

(declare-fun b!7809574 () Bool)

(declare-fun e!4622469 () Bool)

(declare-fun tp!2300832 () Bool)

(assert (=> b!7809574 (= e!4622469 tp!2300832)))

(declare-fun b!7809572 () Bool)

(assert (=> b!7809572 (= e!4622469 tp_is_empty!52141)))

(declare-fun b!7809573 () Bool)

(declare-fun tp!2300831 () Bool)

(declare-fun tp!2300834 () Bool)

(assert (=> b!7809573 (= e!4622469 (and tp!2300831 tp!2300834))))

(assert (=> b!7809087 (= tp!2300651 e!4622469)))

(declare-fun b!7809575 () Bool)

(declare-fun tp!2300833 () Bool)

(declare-fun tp!2300830 () Bool)

(assert (=> b!7809575 (= e!4622469 (and tp!2300833 tp!2300830))))

(assert (= (and b!7809087 ((_ is ElementMatch!20893) (reg!21222 (regTwo!42299 r1!6279)))) b!7809572))

(assert (= (and b!7809087 ((_ is Concat!29738) (reg!21222 (regTwo!42299 r1!6279)))) b!7809573))

(assert (= (and b!7809087 ((_ is Star!20893) (reg!21222 (regTwo!42299 r1!6279)))) b!7809574))

(assert (= (and b!7809087 ((_ is Union!20893) (reg!21222 (regTwo!42299 r1!6279)))) b!7809575))

(declare-fun b!7809578 () Bool)

(declare-fun e!4622470 () Bool)

(declare-fun tp!2300837 () Bool)

(assert (=> b!7809578 (= e!4622470 tp!2300837)))

(declare-fun b!7809576 () Bool)

(assert (=> b!7809576 (= e!4622470 tp_is_empty!52141)))

(declare-fun b!7809577 () Bool)

(declare-fun tp!2300836 () Bool)

(declare-fun tp!2300839 () Bool)

(assert (=> b!7809577 (= e!4622470 (and tp!2300836 tp!2300839))))

(assert (=> b!7809121 (= tp!2300690 e!4622470)))

(declare-fun b!7809579 () Bool)

(declare-fun tp!2300838 () Bool)

(declare-fun tp!2300835 () Bool)

(assert (=> b!7809579 (= e!4622470 (and tp!2300838 tp!2300835))))

(assert (= (and b!7809121 ((_ is ElementMatch!20893) (regOne!42299 (regOne!42298 r1!6279)))) b!7809576))

(assert (= (and b!7809121 ((_ is Concat!29738) (regOne!42299 (regOne!42298 r1!6279)))) b!7809577))

(assert (= (and b!7809121 ((_ is Star!20893) (regOne!42299 (regOne!42298 r1!6279)))) b!7809578))

(assert (= (and b!7809121 ((_ is Union!20893) (regOne!42299 (regOne!42298 r1!6279)))) b!7809579))

(declare-fun b!7809582 () Bool)

(declare-fun e!4622471 () Bool)

(declare-fun tp!2300842 () Bool)

(assert (=> b!7809582 (= e!4622471 tp!2300842)))

(declare-fun b!7809580 () Bool)

(assert (=> b!7809580 (= e!4622471 tp_is_empty!52141)))

(declare-fun b!7809581 () Bool)

(declare-fun tp!2300841 () Bool)

(declare-fun tp!2300844 () Bool)

(assert (=> b!7809581 (= e!4622471 (and tp!2300841 tp!2300844))))

(assert (=> b!7809121 (= tp!2300687 e!4622471)))

(declare-fun b!7809583 () Bool)

(declare-fun tp!2300843 () Bool)

(declare-fun tp!2300840 () Bool)

(assert (=> b!7809583 (= e!4622471 (and tp!2300843 tp!2300840))))

(assert (= (and b!7809121 ((_ is ElementMatch!20893) (regTwo!42299 (regOne!42298 r1!6279)))) b!7809580))

(assert (= (and b!7809121 ((_ is Concat!29738) (regTwo!42299 (regOne!42298 r1!6279)))) b!7809581))

(assert (= (and b!7809121 ((_ is Star!20893) (regTwo!42299 (regOne!42298 r1!6279)))) b!7809582))

(assert (= (and b!7809121 ((_ is Union!20893) (regTwo!42299 (regOne!42298 r1!6279)))) b!7809583))

(declare-fun b!7809586 () Bool)

(declare-fun e!4622472 () Bool)

(declare-fun tp!2300847 () Bool)

(assert (=> b!7809586 (= e!4622472 tp!2300847)))

(declare-fun b!7809584 () Bool)

(assert (=> b!7809584 (= e!4622472 tp_is_empty!52141)))

(declare-fun b!7809585 () Bool)

(declare-fun tp!2300846 () Bool)

(declare-fun tp!2300849 () Bool)

(assert (=> b!7809585 (= e!4622472 (and tp!2300846 tp!2300849))))

(assert (=> b!7809101 (= tp!2300665 e!4622472)))

(declare-fun b!7809587 () Bool)

(declare-fun tp!2300848 () Bool)

(declare-fun tp!2300845 () Bool)

(assert (=> b!7809587 (= e!4622472 (and tp!2300848 tp!2300845))))

(assert (= (and b!7809101 ((_ is ElementMatch!20893) (regOne!42299 (reg!21222 r1!6279)))) b!7809584))

(assert (= (and b!7809101 ((_ is Concat!29738) (regOne!42299 (reg!21222 r1!6279)))) b!7809585))

(assert (= (and b!7809101 ((_ is Star!20893) (regOne!42299 (reg!21222 r1!6279)))) b!7809586))

(assert (= (and b!7809101 ((_ is Union!20893) (regOne!42299 (reg!21222 r1!6279)))) b!7809587))

(declare-fun b!7809590 () Bool)

(declare-fun e!4622473 () Bool)

(declare-fun tp!2300852 () Bool)

(assert (=> b!7809590 (= e!4622473 tp!2300852)))

(declare-fun b!7809588 () Bool)

(assert (=> b!7809588 (= e!4622473 tp_is_empty!52141)))

(declare-fun b!7809589 () Bool)

(declare-fun tp!2300851 () Bool)

(declare-fun tp!2300854 () Bool)

(assert (=> b!7809589 (= e!4622473 (and tp!2300851 tp!2300854))))

(assert (=> b!7809101 (= tp!2300662 e!4622473)))

(declare-fun b!7809591 () Bool)

(declare-fun tp!2300853 () Bool)

(declare-fun tp!2300850 () Bool)

(assert (=> b!7809591 (= e!4622473 (and tp!2300853 tp!2300850))))

(assert (= (and b!7809101 ((_ is ElementMatch!20893) (regTwo!42299 (reg!21222 r1!6279)))) b!7809588))

(assert (= (and b!7809101 ((_ is Concat!29738) (regTwo!42299 (reg!21222 r1!6279)))) b!7809589))

(assert (= (and b!7809101 ((_ is Star!20893) (regTwo!42299 (reg!21222 r1!6279)))) b!7809590))

(assert (= (and b!7809101 ((_ is Union!20893) (regTwo!42299 (reg!21222 r1!6279)))) b!7809591))

(declare-fun b!7809594 () Bool)

(declare-fun e!4622474 () Bool)

(declare-fun tp!2300857 () Bool)

(assert (=> b!7809594 (= e!4622474 tp!2300857)))

(declare-fun b!7809592 () Bool)

(assert (=> b!7809592 (= e!4622474 tp_is_empty!52141)))

(declare-fun b!7809593 () Bool)

(declare-fun tp!2300856 () Bool)

(declare-fun tp!2300859 () Bool)

(assert (=> b!7809593 (= e!4622474 (and tp!2300856 tp!2300859))))

(assert (=> b!7809109 (= tp!2300675 e!4622474)))

(declare-fun b!7809595 () Bool)

(declare-fun tp!2300858 () Bool)

(declare-fun tp!2300855 () Bool)

(assert (=> b!7809595 (= e!4622474 (and tp!2300858 tp!2300855))))

(assert (= (and b!7809109 ((_ is ElementMatch!20893) (regOne!42299 (regTwo!42298 r2!6217)))) b!7809592))

(assert (= (and b!7809109 ((_ is Concat!29738) (regOne!42299 (regTwo!42298 r2!6217)))) b!7809593))

(assert (= (and b!7809109 ((_ is Star!20893) (regOne!42299 (regTwo!42298 r2!6217)))) b!7809594))

(assert (= (and b!7809109 ((_ is Union!20893) (regOne!42299 (regTwo!42298 r2!6217)))) b!7809595))

(declare-fun b!7809598 () Bool)

(declare-fun e!4622475 () Bool)

(declare-fun tp!2300862 () Bool)

(assert (=> b!7809598 (= e!4622475 tp!2300862)))

(declare-fun b!7809596 () Bool)

(assert (=> b!7809596 (= e!4622475 tp_is_empty!52141)))

(declare-fun b!7809597 () Bool)

(declare-fun tp!2300861 () Bool)

(declare-fun tp!2300864 () Bool)

(assert (=> b!7809597 (= e!4622475 (and tp!2300861 tp!2300864))))

(assert (=> b!7809109 (= tp!2300672 e!4622475)))

(declare-fun b!7809599 () Bool)

(declare-fun tp!2300863 () Bool)

(declare-fun tp!2300860 () Bool)

(assert (=> b!7809599 (= e!4622475 (and tp!2300863 tp!2300860))))

(assert (= (and b!7809109 ((_ is ElementMatch!20893) (regTwo!42299 (regTwo!42298 r2!6217)))) b!7809596))

(assert (= (and b!7809109 ((_ is Concat!29738) (regTwo!42299 (regTwo!42298 r2!6217)))) b!7809597))

(assert (= (and b!7809109 ((_ is Star!20893) (regTwo!42299 (regTwo!42298 r2!6217)))) b!7809598))

(assert (= (and b!7809109 ((_ is Union!20893) (regTwo!42299 (regTwo!42298 r2!6217)))) b!7809599))

(declare-fun b!7809602 () Bool)

(declare-fun e!4622476 () Bool)

(declare-fun tp!2300867 () Bool)

(assert (=> b!7809602 (= e!4622476 tp!2300867)))

(declare-fun b!7809600 () Bool)

(assert (=> b!7809600 (= e!4622476 tp_is_empty!52141)))

(declare-fun b!7809601 () Bool)

(declare-fun tp!2300866 () Bool)

(declare-fun tp!2300869 () Bool)

(assert (=> b!7809601 (= e!4622476 (and tp!2300866 tp!2300869))))

(assert (=> b!7809100 (= tp!2300664 e!4622476)))

(declare-fun b!7809603 () Bool)

(declare-fun tp!2300868 () Bool)

(declare-fun tp!2300865 () Bool)

(assert (=> b!7809603 (= e!4622476 (and tp!2300868 tp!2300865))))

(assert (= (and b!7809100 ((_ is ElementMatch!20893) (reg!21222 (reg!21222 r1!6279)))) b!7809600))

(assert (= (and b!7809100 ((_ is Concat!29738) (reg!21222 (reg!21222 r1!6279)))) b!7809601))

(assert (= (and b!7809100 ((_ is Star!20893) (reg!21222 (reg!21222 r1!6279)))) b!7809602))

(assert (= (and b!7809100 ((_ is Union!20893) (reg!21222 (reg!21222 r1!6279)))) b!7809603))

(declare-fun b!7809606 () Bool)

(declare-fun e!4622477 () Bool)

(declare-fun tp!2300872 () Bool)

(assert (=> b!7809606 (= e!4622477 tp!2300872)))

(declare-fun b!7809604 () Bool)

(assert (=> b!7809604 (= e!4622477 tp_is_empty!52141)))

(declare-fun b!7809605 () Bool)

(declare-fun tp!2300871 () Bool)

(declare-fun tp!2300874 () Bool)

(assert (=> b!7809605 (= e!4622477 (and tp!2300871 tp!2300874))))

(assert (=> b!7809090 (= tp!2300655 e!4622477)))

(declare-fun b!7809607 () Bool)

(declare-fun tp!2300873 () Bool)

(declare-fun tp!2300870 () Bool)

(assert (=> b!7809607 (= e!4622477 (and tp!2300873 tp!2300870))))

(assert (= (and b!7809090 ((_ is ElementMatch!20893) (regOne!42298 (reg!21222 r2!6217)))) b!7809604))

(assert (= (and b!7809090 ((_ is Concat!29738) (regOne!42298 (reg!21222 r2!6217)))) b!7809605))

(assert (= (and b!7809090 ((_ is Star!20893) (regOne!42298 (reg!21222 r2!6217)))) b!7809606))

(assert (= (and b!7809090 ((_ is Union!20893) (regOne!42298 (reg!21222 r2!6217)))) b!7809607))

(declare-fun b!7809610 () Bool)

(declare-fun e!4622478 () Bool)

(declare-fun tp!2300877 () Bool)

(assert (=> b!7809610 (= e!4622478 tp!2300877)))

(declare-fun b!7809608 () Bool)

(assert (=> b!7809608 (= e!4622478 tp_is_empty!52141)))

(declare-fun b!7809609 () Bool)

(declare-fun tp!2300876 () Bool)

(declare-fun tp!2300879 () Bool)

(assert (=> b!7809609 (= e!4622478 (and tp!2300876 tp!2300879))))

(assert (=> b!7809090 (= tp!2300658 e!4622478)))

(declare-fun b!7809611 () Bool)

(declare-fun tp!2300878 () Bool)

(declare-fun tp!2300875 () Bool)

(assert (=> b!7809611 (= e!4622478 (and tp!2300878 tp!2300875))))

(assert (= (and b!7809090 ((_ is ElementMatch!20893) (regTwo!42298 (reg!21222 r2!6217)))) b!7809608))

(assert (= (and b!7809090 ((_ is Concat!29738) (regTwo!42298 (reg!21222 r2!6217)))) b!7809609))

(assert (= (and b!7809090 ((_ is Star!20893) (regTwo!42298 (reg!21222 r2!6217)))) b!7809610))

(assert (= (and b!7809090 ((_ is Union!20893) (regTwo!42298 (reg!21222 r2!6217)))) b!7809611))

(declare-fun b!7809614 () Bool)

(declare-fun e!4622479 () Bool)

(declare-fun tp!2300882 () Bool)

(assert (=> b!7809614 (= e!4622479 tp!2300882)))

(declare-fun b!7809612 () Bool)

(assert (=> b!7809612 (= e!4622479 tp_is_empty!52141)))

(declare-fun b!7809613 () Bool)

(declare-fun tp!2300881 () Bool)

(declare-fun tp!2300884 () Bool)

(assert (=> b!7809613 (= e!4622479 (and tp!2300881 tp!2300884))))

(assert (=> b!7809124 (= tp!2300694 e!4622479)))

(declare-fun b!7809615 () Bool)

(declare-fun tp!2300883 () Bool)

(declare-fun tp!2300880 () Bool)

(assert (=> b!7809615 (= e!4622479 (and tp!2300883 tp!2300880))))

(assert (= (and b!7809124 ((_ is ElementMatch!20893) (reg!21222 (regTwo!42298 r1!6279)))) b!7809612))

(assert (= (and b!7809124 ((_ is Concat!29738) (reg!21222 (regTwo!42298 r1!6279)))) b!7809613))

(assert (= (and b!7809124 ((_ is Star!20893) (reg!21222 (regTwo!42298 r1!6279)))) b!7809614))

(assert (= (and b!7809124 ((_ is Union!20893) (reg!21222 (regTwo!42298 r1!6279)))) b!7809615))

(declare-fun b!7809618 () Bool)

(declare-fun e!4622480 () Bool)

(declare-fun tp!2300887 () Bool)

(assert (=> b!7809618 (= e!4622480 tp!2300887)))

(declare-fun b!7809616 () Bool)

(assert (=> b!7809616 (= e!4622480 tp_is_empty!52141)))

(declare-fun b!7809617 () Bool)

(declare-fun tp!2300886 () Bool)

(declare-fun tp!2300889 () Bool)

(assert (=> b!7809617 (= e!4622480 (and tp!2300886 tp!2300889))))

(assert (=> b!7809115 (= tp!2300683 e!4622480)))

(declare-fun b!7809619 () Bool)

(declare-fun tp!2300888 () Bool)

(declare-fun tp!2300885 () Bool)

(assert (=> b!7809619 (= e!4622480 (and tp!2300888 tp!2300885))))

(assert (= (and b!7809115 ((_ is ElementMatch!20893) (regOne!42298 (regTwo!42299 r2!6217)))) b!7809616))

(assert (= (and b!7809115 ((_ is Concat!29738) (regOne!42298 (regTwo!42299 r2!6217)))) b!7809617))

(assert (= (and b!7809115 ((_ is Star!20893) (regOne!42298 (regTwo!42299 r2!6217)))) b!7809618))

(assert (= (and b!7809115 ((_ is Union!20893) (regOne!42298 (regTwo!42299 r2!6217)))) b!7809619))

(declare-fun b!7809622 () Bool)

(declare-fun e!4622481 () Bool)

(declare-fun tp!2300892 () Bool)

(assert (=> b!7809622 (= e!4622481 tp!2300892)))

(declare-fun b!7809620 () Bool)

(assert (=> b!7809620 (= e!4622481 tp_is_empty!52141)))

(declare-fun b!7809621 () Bool)

(declare-fun tp!2300891 () Bool)

(declare-fun tp!2300894 () Bool)

(assert (=> b!7809621 (= e!4622481 (and tp!2300891 tp!2300894))))

(assert (=> b!7809115 (= tp!2300686 e!4622481)))

(declare-fun b!7809623 () Bool)

(declare-fun tp!2300893 () Bool)

(declare-fun tp!2300890 () Bool)

(assert (=> b!7809623 (= e!4622481 (and tp!2300893 tp!2300890))))

(assert (= (and b!7809115 ((_ is ElementMatch!20893) (regTwo!42298 (regTwo!42299 r2!6217)))) b!7809620))

(assert (= (and b!7809115 ((_ is Concat!29738) (regTwo!42298 (regTwo!42299 r2!6217)))) b!7809621))

(assert (= (and b!7809115 ((_ is Star!20893) (regTwo!42298 (regTwo!42299 r2!6217)))) b!7809622))

(assert (= (and b!7809115 ((_ is Union!20893) (regTwo!42298 (regTwo!42299 r2!6217)))) b!7809623))

(declare-fun b!7809626 () Bool)

(declare-fun e!4622482 () Bool)

(declare-fun tp!2300897 () Bool)

(assert (=> b!7809626 (= e!4622482 tp!2300897)))

(declare-fun b!7809624 () Bool)

(assert (=> b!7809624 (= e!4622482 tp_is_empty!52141)))

(declare-fun b!7809625 () Bool)

(declare-fun tp!2300896 () Bool)

(declare-fun tp!2300899 () Bool)

(assert (=> b!7809625 (= e!4622482 (and tp!2300896 tp!2300899))))

(assert (=> b!7809091 (= tp!2300656 e!4622482)))

(declare-fun b!7809627 () Bool)

(declare-fun tp!2300898 () Bool)

(declare-fun tp!2300895 () Bool)

(assert (=> b!7809627 (= e!4622482 (and tp!2300898 tp!2300895))))

(assert (= (and b!7809091 ((_ is ElementMatch!20893) (reg!21222 (reg!21222 r2!6217)))) b!7809624))

(assert (= (and b!7809091 ((_ is Concat!29738) (reg!21222 (reg!21222 r2!6217)))) b!7809625))

(assert (= (and b!7809091 ((_ is Star!20893) (reg!21222 (reg!21222 r2!6217)))) b!7809626))

(assert (= (and b!7809091 ((_ is Union!20893) (reg!21222 (reg!21222 r2!6217)))) b!7809627))

(declare-fun b!7809630 () Bool)

(declare-fun e!4622483 () Bool)

(declare-fun tp!2300902 () Bool)

(assert (=> b!7809630 (= e!4622483 tp!2300902)))

(declare-fun b!7809628 () Bool)

(assert (=> b!7809628 (= e!4622483 tp_is_empty!52141)))

(declare-fun b!7809629 () Bool)

(declare-fun tp!2300901 () Bool)

(declare-fun tp!2300904 () Bool)

(assert (=> b!7809629 (= e!4622483 (and tp!2300901 tp!2300904))))

(assert (=> b!7809123 (= tp!2300693 e!4622483)))

(declare-fun b!7809631 () Bool)

(declare-fun tp!2300903 () Bool)

(declare-fun tp!2300900 () Bool)

(assert (=> b!7809631 (= e!4622483 (and tp!2300903 tp!2300900))))

(assert (= (and b!7809123 ((_ is ElementMatch!20893) (regOne!42298 (regTwo!42298 r1!6279)))) b!7809628))

(assert (= (and b!7809123 ((_ is Concat!29738) (regOne!42298 (regTwo!42298 r1!6279)))) b!7809629))

(assert (= (and b!7809123 ((_ is Star!20893) (regOne!42298 (regTwo!42298 r1!6279)))) b!7809630))

(assert (= (and b!7809123 ((_ is Union!20893) (regOne!42298 (regTwo!42298 r1!6279)))) b!7809631))

(declare-fun b!7809634 () Bool)

(declare-fun e!4622484 () Bool)

(declare-fun tp!2300907 () Bool)

(assert (=> b!7809634 (= e!4622484 tp!2300907)))

(declare-fun b!7809632 () Bool)

(assert (=> b!7809632 (= e!4622484 tp_is_empty!52141)))

(declare-fun b!7809633 () Bool)

(declare-fun tp!2300906 () Bool)

(declare-fun tp!2300909 () Bool)

(assert (=> b!7809633 (= e!4622484 (and tp!2300906 tp!2300909))))

(assert (=> b!7809123 (= tp!2300696 e!4622484)))

(declare-fun b!7809635 () Bool)

(declare-fun tp!2300908 () Bool)

(declare-fun tp!2300905 () Bool)

(assert (=> b!7809635 (= e!4622484 (and tp!2300908 tp!2300905))))

(assert (= (and b!7809123 ((_ is ElementMatch!20893) (regTwo!42298 (regTwo!42298 r1!6279)))) b!7809632))

(assert (= (and b!7809123 ((_ is Concat!29738) (regTwo!42298 (regTwo!42298 r1!6279)))) b!7809633))

(assert (= (and b!7809123 ((_ is Star!20893) (regTwo!42298 (regTwo!42298 r1!6279)))) b!7809634))

(assert (= (and b!7809123 ((_ is Union!20893) (regTwo!42298 (regTwo!42298 r1!6279)))) b!7809635))

(declare-fun b!7809638 () Bool)

(declare-fun e!4622485 () Bool)

(declare-fun tp!2300912 () Bool)

(assert (=> b!7809638 (= e!4622485 tp!2300912)))

(declare-fun b!7809636 () Bool)

(assert (=> b!7809636 (= e!4622485 tp_is_empty!52141)))

(declare-fun b!7809637 () Bool)

(declare-fun tp!2300911 () Bool)

(declare-fun tp!2300914 () Bool)

(assert (=> b!7809637 (= e!4622485 (and tp!2300911 tp!2300914))))

(assert (=> b!7809117 (= tp!2300685 e!4622485)))

(declare-fun b!7809639 () Bool)

(declare-fun tp!2300913 () Bool)

(declare-fun tp!2300910 () Bool)

(assert (=> b!7809639 (= e!4622485 (and tp!2300913 tp!2300910))))

(assert (= (and b!7809117 ((_ is ElementMatch!20893) (regOne!42299 (regTwo!42299 r2!6217)))) b!7809636))

(assert (= (and b!7809117 ((_ is Concat!29738) (regOne!42299 (regTwo!42299 r2!6217)))) b!7809637))

(assert (= (and b!7809117 ((_ is Star!20893) (regOne!42299 (regTwo!42299 r2!6217)))) b!7809638))

(assert (= (and b!7809117 ((_ is Union!20893) (regOne!42299 (regTwo!42299 r2!6217)))) b!7809639))

(declare-fun b!7809642 () Bool)

(declare-fun e!4622486 () Bool)

(declare-fun tp!2300917 () Bool)

(assert (=> b!7809642 (= e!4622486 tp!2300917)))

(declare-fun b!7809640 () Bool)

(assert (=> b!7809640 (= e!4622486 tp_is_empty!52141)))

(declare-fun b!7809641 () Bool)

(declare-fun tp!2300916 () Bool)

(declare-fun tp!2300919 () Bool)

(assert (=> b!7809641 (= e!4622486 (and tp!2300916 tp!2300919))))

(assert (=> b!7809117 (= tp!2300682 e!4622486)))

(declare-fun b!7809643 () Bool)

(declare-fun tp!2300918 () Bool)

(declare-fun tp!2300915 () Bool)

(assert (=> b!7809643 (= e!4622486 (and tp!2300918 tp!2300915))))

(assert (= (and b!7809117 ((_ is ElementMatch!20893) (regTwo!42299 (regTwo!42299 r2!6217)))) b!7809640))

(assert (= (and b!7809117 ((_ is Concat!29738) (regTwo!42299 (regTwo!42299 r2!6217)))) b!7809641))

(assert (= (and b!7809117 ((_ is Star!20893) (regTwo!42299 (regTwo!42299 r2!6217)))) b!7809642))

(assert (= (and b!7809117 ((_ is Union!20893) (regTwo!42299 (regTwo!42299 r2!6217)))) b!7809643))

(declare-fun b!7809646 () Bool)

(declare-fun e!4622487 () Bool)

(declare-fun tp!2300922 () Bool)

(assert (=> b!7809646 (= e!4622487 tp!2300922)))

(declare-fun b!7809644 () Bool)

(assert (=> b!7809644 (= e!4622487 tp_is_empty!52141)))

(declare-fun b!7809645 () Bool)

(declare-fun tp!2300921 () Bool)

(declare-fun tp!2300924 () Bool)

(assert (=> b!7809645 (= e!4622487 (and tp!2300921 tp!2300924))))

(assert (=> b!7809108 (= tp!2300674 e!4622487)))

(declare-fun b!7809647 () Bool)

(declare-fun tp!2300923 () Bool)

(declare-fun tp!2300920 () Bool)

(assert (=> b!7809647 (= e!4622487 (and tp!2300923 tp!2300920))))

(assert (= (and b!7809108 ((_ is ElementMatch!20893) (reg!21222 (regTwo!42298 r2!6217)))) b!7809644))

(assert (= (and b!7809108 ((_ is Concat!29738) (reg!21222 (regTwo!42298 r2!6217)))) b!7809645))

(assert (= (and b!7809108 ((_ is Star!20893) (reg!21222 (regTwo!42298 r2!6217)))) b!7809646))

(assert (= (and b!7809108 ((_ is Union!20893) (reg!21222 (regTwo!42298 r2!6217)))) b!7809647))

(declare-fun b!7809650 () Bool)

(declare-fun e!4622488 () Bool)

(declare-fun tp!2300927 () Bool)

(assert (=> b!7809650 (= e!4622488 tp!2300927)))

(declare-fun b!7809648 () Bool)

(assert (=> b!7809648 (= e!4622488 tp_is_empty!52141)))

(declare-fun b!7809649 () Bool)

(declare-fun tp!2300926 () Bool)

(declare-fun tp!2300929 () Bool)

(assert (=> b!7809649 (= e!4622488 (and tp!2300926 tp!2300929))))

(assert (=> b!7809084 (= tp!2300647 e!4622488)))

(declare-fun b!7809651 () Bool)

(declare-fun tp!2300928 () Bool)

(declare-fun tp!2300925 () Bool)

(assert (=> b!7809651 (= e!4622488 (and tp!2300928 tp!2300925))))

(assert (= (and b!7809084 ((_ is ElementMatch!20893) (regOne!42299 (regOne!42299 r1!6279)))) b!7809648))

(assert (= (and b!7809084 ((_ is Concat!29738) (regOne!42299 (regOne!42299 r1!6279)))) b!7809649))

(assert (= (and b!7809084 ((_ is Star!20893) (regOne!42299 (regOne!42299 r1!6279)))) b!7809650))

(assert (= (and b!7809084 ((_ is Union!20893) (regOne!42299 (regOne!42299 r1!6279)))) b!7809651))

(declare-fun b!7809654 () Bool)

(declare-fun e!4622489 () Bool)

(declare-fun tp!2300932 () Bool)

(assert (=> b!7809654 (= e!4622489 tp!2300932)))

(declare-fun b!7809652 () Bool)

(assert (=> b!7809652 (= e!4622489 tp_is_empty!52141)))

(declare-fun b!7809653 () Bool)

(declare-fun tp!2300931 () Bool)

(declare-fun tp!2300934 () Bool)

(assert (=> b!7809653 (= e!4622489 (and tp!2300931 tp!2300934))))

(assert (=> b!7809084 (= tp!2300644 e!4622489)))

(declare-fun b!7809655 () Bool)

(declare-fun tp!2300933 () Bool)

(declare-fun tp!2300930 () Bool)

(assert (=> b!7809655 (= e!4622489 (and tp!2300933 tp!2300930))))

(assert (= (and b!7809084 ((_ is ElementMatch!20893) (regTwo!42299 (regOne!42299 r1!6279)))) b!7809652))

(assert (= (and b!7809084 ((_ is Concat!29738) (regTwo!42299 (regOne!42299 r1!6279)))) b!7809653))

(assert (= (and b!7809084 ((_ is Star!20893) (regTwo!42299 (regOne!42299 r1!6279)))) b!7809654))

(assert (= (and b!7809084 ((_ is Union!20893) (regTwo!42299 (regOne!42299 r1!6279)))) b!7809655))

(declare-fun b!7809658 () Bool)

(declare-fun e!4622490 () Bool)

(declare-fun tp!2300937 () Bool)

(assert (=> b!7809658 (= e!4622490 tp!2300937)))

(declare-fun b!7809656 () Bool)

(assert (=> b!7809656 (= e!4622490 tp_is_empty!52141)))

(declare-fun b!7809657 () Bool)

(declare-fun tp!2300936 () Bool)

(declare-fun tp!2300939 () Bool)

(assert (=> b!7809657 (= e!4622490 (and tp!2300936 tp!2300939))))

(assert (=> b!7809099 (= tp!2300663 e!4622490)))

(declare-fun b!7809659 () Bool)

(declare-fun tp!2300938 () Bool)

(declare-fun tp!2300935 () Bool)

(assert (=> b!7809659 (= e!4622490 (and tp!2300938 tp!2300935))))

(assert (= (and b!7809099 ((_ is ElementMatch!20893) (regOne!42298 (reg!21222 r1!6279)))) b!7809656))

(assert (= (and b!7809099 ((_ is Concat!29738) (regOne!42298 (reg!21222 r1!6279)))) b!7809657))

(assert (= (and b!7809099 ((_ is Star!20893) (regOne!42298 (reg!21222 r1!6279)))) b!7809658))

(assert (= (and b!7809099 ((_ is Union!20893) (regOne!42298 (reg!21222 r1!6279)))) b!7809659))

(declare-fun b!7809662 () Bool)

(declare-fun e!4622491 () Bool)

(declare-fun tp!2300942 () Bool)

(assert (=> b!7809662 (= e!4622491 tp!2300942)))

(declare-fun b!7809660 () Bool)

(assert (=> b!7809660 (= e!4622491 tp_is_empty!52141)))

(declare-fun b!7809661 () Bool)

(declare-fun tp!2300941 () Bool)

(declare-fun tp!2300944 () Bool)

(assert (=> b!7809661 (= e!4622491 (and tp!2300941 tp!2300944))))

(assert (=> b!7809099 (= tp!2300666 e!4622491)))

(declare-fun b!7809663 () Bool)

(declare-fun tp!2300943 () Bool)

(declare-fun tp!2300940 () Bool)

(assert (=> b!7809663 (= e!4622491 (and tp!2300943 tp!2300940))))

(assert (= (and b!7809099 ((_ is ElementMatch!20893) (regTwo!42298 (reg!21222 r1!6279)))) b!7809660))

(assert (= (and b!7809099 ((_ is Concat!29738) (regTwo!42298 (reg!21222 r1!6279)))) b!7809661))

(assert (= (and b!7809099 ((_ is Star!20893) (regTwo!42298 (reg!21222 r1!6279)))) b!7809662))

(assert (= (and b!7809099 ((_ is Union!20893) (regTwo!42298 (reg!21222 r1!6279)))) b!7809663))

(declare-fun b!7809666 () Bool)

(declare-fun e!4622492 () Bool)

(declare-fun tp!2300947 () Bool)

(assert (=> b!7809666 (= e!4622492 tp!2300947)))

(declare-fun b!7809664 () Bool)

(assert (=> b!7809664 (= e!4622492 tp_is_empty!52141)))

(declare-fun b!7809665 () Bool)

(declare-fun tp!2300946 () Bool)

(declare-fun tp!2300949 () Bool)

(assert (=> b!7809665 (= e!4622492 (and tp!2300946 tp!2300949))))

(assert (=> b!7809082 (= tp!2300645 e!4622492)))

(declare-fun b!7809667 () Bool)

(declare-fun tp!2300948 () Bool)

(declare-fun tp!2300945 () Bool)

(assert (=> b!7809667 (= e!4622492 (and tp!2300948 tp!2300945))))

(assert (= (and b!7809082 ((_ is ElementMatch!20893) (regOne!42298 (regOne!42299 r1!6279)))) b!7809664))

(assert (= (and b!7809082 ((_ is Concat!29738) (regOne!42298 (regOne!42299 r1!6279)))) b!7809665))

(assert (= (and b!7809082 ((_ is Star!20893) (regOne!42298 (regOne!42299 r1!6279)))) b!7809666))

(assert (= (and b!7809082 ((_ is Union!20893) (regOne!42298 (regOne!42299 r1!6279)))) b!7809667))

(declare-fun b!7809670 () Bool)

(declare-fun e!4622493 () Bool)

(declare-fun tp!2300952 () Bool)

(assert (=> b!7809670 (= e!4622493 tp!2300952)))

(declare-fun b!7809668 () Bool)

(assert (=> b!7809668 (= e!4622493 tp_is_empty!52141)))

(declare-fun b!7809669 () Bool)

(declare-fun tp!2300951 () Bool)

(declare-fun tp!2300954 () Bool)

(assert (=> b!7809669 (= e!4622493 (and tp!2300951 tp!2300954))))

(assert (=> b!7809082 (= tp!2300648 e!4622493)))

(declare-fun b!7809671 () Bool)

(declare-fun tp!2300953 () Bool)

(declare-fun tp!2300950 () Bool)

(assert (=> b!7809671 (= e!4622493 (and tp!2300953 tp!2300950))))

(assert (= (and b!7809082 ((_ is ElementMatch!20893) (regTwo!42298 (regOne!42299 r1!6279)))) b!7809668))

(assert (= (and b!7809082 ((_ is Concat!29738) (regTwo!42298 (regOne!42299 r1!6279)))) b!7809669))

(assert (= (and b!7809082 ((_ is Star!20893) (regTwo!42298 (regOne!42299 r1!6279)))) b!7809670))

(assert (= (and b!7809082 ((_ is Union!20893) (regTwo!42298 (regOne!42299 r1!6279)))) b!7809671))

(declare-fun b!7809674 () Bool)

(declare-fun e!4622494 () Bool)

(declare-fun tp!2300957 () Bool)

(assert (=> b!7809674 (= e!4622494 tp!2300957)))

(declare-fun b!7809672 () Bool)

(assert (=> b!7809672 (= e!4622494 tp_is_empty!52141)))

(declare-fun b!7809673 () Bool)

(declare-fun tp!2300956 () Bool)

(declare-fun tp!2300959 () Bool)

(assert (=> b!7809673 (= e!4622494 (and tp!2300956 tp!2300959))))

(assert (=> b!7809125 (= tp!2300695 e!4622494)))

(declare-fun b!7809675 () Bool)

(declare-fun tp!2300958 () Bool)

(declare-fun tp!2300955 () Bool)

(assert (=> b!7809675 (= e!4622494 (and tp!2300958 tp!2300955))))

(assert (= (and b!7809125 ((_ is ElementMatch!20893) (regOne!42299 (regTwo!42298 r1!6279)))) b!7809672))

(assert (= (and b!7809125 ((_ is Concat!29738) (regOne!42299 (regTwo!42298 r1!6279)))) b!7809673))

(assert (= (and b!7809125 ((_ is Star!20893) (regOne!42299 (regTwo!42298 r1!6279)))) b!7809674))

(assert (= (and b!7809125 ((_ is Union!20893) (regOne!42299 (regTwo!42298 r1!6279)))) b!7809675))

(declare-fun b!7809678 () Bool)

(declare-fun e!4622495 () Bool)

(declare-fun tp!2300962 () Bool)

(assert (=> b!7809678 (= e!4622495 tp!2300962)))

(declare-fun b!7809676 () Bool)

(assert (=> b!7809676 (= e!4622495 tp_is_empty!52141)))

(declare-fun b!7809677 () Bool)

(declare-fun tp!2300961 () Bool)

(declare-fun tp!2300964 () Bool)

(assert (=> b!7809677 (= e!4622495 (and tp!2300961 tp!2300964))))

(assert (=> b!7809125 (= tp!2300692 e!4622495)))

(declare-fun b!7809679 () Bool)

(declare-fun tp!2300963 () Bool)

(declare-fun tp!2300960 () Bool)

(assert (=> b!7809679 (= e!4622495 (and tp!2300963 tp!2300960))))

(assert (= (and b!7809125 ((_ is ElementMatch!20893) (regTwo!42299 (regTwo!42298 r1!6279)))) b!7809676))

(assert (= (and b!7809125 ((_ is Concat!29738) (regTwo!42299 (regTwo!42298 r1!6279)))) b!7809677))

(assert (= (and b!7809125 ((_ is Star!20893) (regTwo!42299 (regTwo!42298 r1!6279)))) b!7809678))

(assert (= (and b!7809125 ((_ is Union!20893) (regTwo!42299 (regTwo!42298 r1!6279)))) b!7809679))

(declare-fun b!7809682 () Bool)

(declare-fun e!4622496 () Bool)

(declare-fun tp!2300967 () Bool)

(assert (=> b!7809682 (= e!4622496 tp!2300967)))

(declare-fun b!7809680 () Bool)

(assert (=> b!7809680 (= e!4622496 tp_is_empty!52141)))

(declare-fun b!7809681 () Bool)

(declare-fun tp!2300966 () Bool)

(declare-fun tp!2300969 () Bool)

(assert (=> b!7809681 (= e!4622496 (and tp!2300966 tp!2300969))))

(assert (=> b!7809116 (= tp!2300684 e!4622496)))

(declare-fun b!7809683 () Bool)

(declare-fun tp!2300968 () Bool)

(declare-fun tp!2300965 () Bool)

(assert (=> b!7809683 (= e!4622496 (and tp!2300968 tp!2300965))))

(assert (= (and b!7809116 ((_ is ElementMatch!20893) (reg!21222 (regTwo!42299 r2!6217)))) b!7809680))

(assert (= (and b!7809116 ((_ is Concat!29738) (reg!21222 (regTwo!42299 r2!6217)))) b!7809681))

(assert (= (and b!7809116 ((_ is Star!20893) (reg!21222 (regTwo!42299 r2!6217)))) b!7809682))

(assert (= (and b!7809116 ((_ is Union!20893) (reg!21222 (regTwo!42299 r2!6217)))) b!7809683))

(declare-fun b!7809686 () Bool)

(declare-fun e!4622497 () Bool)

(declare-fun tp!2300972 () Bool)

(assert (=> b!7809686 (= e!4622497 tp!2300972)))

(declare-fun b!7809684 () Bool)

(assert (=> b!7809684 (= e!4622497 tp_is_empty!52141)))

(declare-fun b!7809685 () Bool)

(declare-fun tp!2300971 () Bool)

(declare-fun tp!2300974 () Bool)

(assert (=> b!7809685 (= e!4622497 (and tp!2300971 tp!2300974))))

(assert (=> b!7809092 (= tp!2300657 e!4622497)))

(declare-fun b!7809687 () Bool)

(declare-fun tp!2300973 () Bool)

(declare-fun tp!2300970 () Bool)

(assert (=> b!7809687 (= e!4622497 (and tp!2300973 tp!2300970))))

(assert (= (and b!7809092 ((_ is ElementMatch!20893) (regOne!42299 (reg!21222 r2!6217)))) b!7809684))

(assert (= (and b!7809092 ((_ is Concat!29738) (regOne!42299 (reg!21222 r2!6217)))) b!7809685))

(assert (= (and b!7809092 ((_ is Star!20893) (regOne!42299 (reg!21222 r2!6217)))) b!7809686))

(assert (= (and b!7809092 ((_ is Union!20893) (regOne!42299 (reg!21222 r2!6217)))) b!7809687))

(declare-fun b!7809690 () Bool)

(declare-fun e!4622498 () Bool)

(declare-fun tp!2300977 () Bool)

(assert (=> b!7809690 (= e!4622498 tp!2300977)))

(declare-fun b!7809688 () Bool)

(assert (=> b!7809688 (= e!4622498 tp_is_empty!52141)))

(declare-fun b!7809689 () Bool)

(declare-fun tp!2300976 () Bool)

(declare-fun tp!2300979 () Bool)

(assert (=> b!7809689 (= e!4622498 (and tp!2300976 tp!2300979))))

(assert (=> b!7809092 (= tp!2300654 e!4622498)))

(declare-fun b!7809691 () Bool)

(declare-fun tp!2300978 () Bool)

(declare-fun tp!2300975 () Bool)

(assert (=> b!7809691 (= e!4622498 (and tp!2300978 tp!2300975))))

(assert (= (and b!7809092 ((_ is ElementMatch!20893) (regTwo!42299 (reg!21222 r2!6217)))) b!7809688))

(assert (= (and b!7809092 ((_ is Concat!29738) (regTwo!42299 (reg!21222 r2!6217)))) b!7809689))

(assert (= (and b!7809092 ((_ is Star!20893) (regTwo!42299 (reg!21222 r2!6217)))) b!7809690))

(assert (= (and b!7809092 ((_ is Union!20893) (regTwo!42299 (reg!21222 r2!6217)))) b!7809691))

(declare-fun b!7809694 () Bool)

(declare-fun e!4622499 () Bool)

(declare-fun tp!2300982 () Bool)

(assert (=> b!7809694 (= e!4622499 tp!2300982)))

(declare-fun b!7809692 () Bool)

(assert (=> b!7809692 (= e!4622499 tp_is_empty!52141)))

(declare-fun b!7809693 () Bool)

(declare-fun tp!2300981 () Bool)

(declare-fun tp!2300984 () Bool)

(assert (=> b!7809693 (= e!4622499 (and tp!2300981 tp!2300984))))

(assert (=> b!7809107 (= tp!2300673 e!4622499)))

(declare-fun b!7809695 () Bool)

(declare-fun tp!2300983 () Bool)

(declare-fun tp!2300980 () Bool)

(assert (=> b!7809695 (= e!4622499 (and tp!2300983 tp!2300980))))

(assert (= (and b!7809107 ((_ is ElementMatch!20893) (regOne!42298 (regTwo!42298 r2!6217)))) b!7809692))

(assert (= (and b!7809107 ((_ is Concat!29738) (regOne!42298 (regTwo!42298 r2!6217)))) b!7809693))

(assert (= (and b!7809107 ((_ is Star!20893) (regOne!42298 (regTwo!42298 r2!6217)))) b!7809694))

(assert (= (and b!7809107 ((_ is Union!20893) (regOne!42298 (regTwo!42298 r2!6217)))) b!7809695))

(declare-fun b!7809698 () Bool)

(declare-fun e!4622500 () Bool)

(declare-fun tp!2300987 () Bool)

(assert (=> b!7809698 (= e!4622500 tp!2300987)))

(declare-fun b!7809696 () Bool)

(assert (=> b!7809696 (= e!4622500 tp_is_empty!52141)))

(declare-fun b!7809697 () Bool)

(declare-fun tp!2300986 () Bool)

(declare-fun tp!2300989 () Bool)

(assert (=> b!7809697 (= e!4622500 (and tp!2300986 tp!2300989))))

(assert (=> b!7809107 (= tp!2300676 e!4622500)))

(declare-fun b!7809699 () Bool)

(declare-fun tp!2300988 () Bool)

(declare-fun tp!2300985 () Bool)

(assert (=> b!7809699 (= e!4622500 (and tp!2300988 tp!2300985))))

(assert (= (and b!7809107 ((_ is ElementMatch!20893) (regTwo!42298 (regTwo!42298 r2!6217)))) b!7809696))

(assert (= (and b!7809107 ((_ is Concat!29738) (regTwo!42298 (regTwo!42298 r2!6217)))) b!7809697))

(assert (= (and b!7809107 ((_ is Star!20893) (regTwo!42298 (regTwo!42298 r2!6217)))) b!7809698))

(assert (= (and b!7809107 ((_ is Union!20893) (regTwo!42298 (regTwo!42298 r2!6217)))) b!7809699))

(declare-fun b!7809702 () Bool)

(declare-fun e!4622501 () Bool)

(declare-fun tp!2300992 () Bool)

(assert (=> b!7809702 (= e!4622501 tp!2300992)))

(declare-fun b!7809700 () Bool)

(assert (=> b!7809700 (= e!4622501 tp_is_empty!52141)))

(declare-fun b!7809701 () Bool)

(declare-fun tp!2300991 () Bool)

(declare-fun tp!2300994 () Bool)

(assert (=> b!7809701 (= e!4622501 (and tp!2300991 tp!2300994))))

(assert (=> b!7809083 (= tp!2300646 e!4622501)))

(declare-fun b!7809703 () Bool)

(declare-fun tp!2300993 () Bool)

(declare-fun tp!2300990 () Bool)

(assert (=> b!7809703 (= e!4622501 (and tp!2300993 tp!2300990))))

(assert (= (and b!7809083 ((_ is ElementMatch!20893) (reg!21222 (regOne!42299 r1!6279)))) b!7809700))

(assert (= (and b!7809083 ((_ is Concat!29738) (reg!21222 (regOne!42299 r1!6279)))) b!7809701))

(assert (= (and b!7809083 ((_ is Star!20893) (reg!21222 (regOne!42299 r1!6279)))) b!7809702))

(assert (= (and b!7809083 ((_ is Union!20893) (reg!21222 (regOne!42299 r1!6279)))) b!7809703))

(declare-fun b!7809704 () Bool)

(declare-fun e!4622502 () Bool)

(declare-fun tp!2300995 () Bool)

(assert (=> b!7809704 (= e!4622502 (and tp_is_empty!52141 tp!2300995))))

(assert (=> b!7809097 (= tp!2300661 e!4622502)))

(assert (= (and b!7809097 ((_ is Cons!73608) (t!388467 (t!388467 s!14292)))) b!7809704))

(declare-fun b!7809707 () Bool)

(declare-fun e!4622503 () Bool)

(declare-fun tp!2300998 () Bool)

(assert (=> b!7809707 (= e!4622503 tp!2300998)))

(declare-fun b!7809705 () Bool)

(assert (=> b!7809705 (= e!4622503 tp_is_empty!52141)))

(declare-fun b!7809706 () Bool)

(declare-fun tp!2300997 () Bool)

(declare-fun tp!2301000 () Bool)

(assert (=> b!7809706 (= e!4622503 (and tp!2300997 tp!2301000))))

(assert (=> b!7809104 (= tp!2300669 e!4622503)))

(declare-fun b!7809708 () Bool)

(declare-fun tp!2300999 () Bool)

(declare-fun tp!2300996 () Bool)

(assert (=> b!7809708 (= e!4622503 (and tp!2300999 tp!2300996))))

(assert (= (and b!7809104 ((_ is ElementMatch!20893) (reg!21222 (regOne!42298 r2!6217)))) b!7809705))

(assert (= (and b!7809104 ((_ is Concat!29738) (reg!21222 (regOne!42298 r2!6217)))) b!7809706))

(assert (= (and b!7809104 ((_ is Star!20893) (reg!21222 (regOne!42298 r2!6217)))) b!7809707))

(assert (= (and b!7809104 ((_ is Union!20893) (reg!21222 (regOne!42298 r2!6217)))) b!7809708))

(declare-fun b!7809711 () Bool)

(declare-fun e!4622504 () Bool)

(declare-fun tp!2301003 () Bool)

(assert (=> b!7809711 (= e!4622504 tp!2301003)))

(declare-fun b!7809709 () Bool)

(assert (=> b!7809709 (= e!4622504 tp_is_empty!52141)))

(declare-fun b!7809710 () Bool)

(declare-fun tp!2301002 () Bool)

(declare-fun tp!2301005 () Bool)

(assert (=> b!7809710 (= e!4622504 (and tp!2301002 tp!2301005))))

(assert (=> b!7809105 (= tp!2300670 e!4622504)))

(declare-fun b!7809712 () Bool)

(declare-fun tp!2301004 () Bool)

(declare-fun tp!2301001 () Bool)

(assert (=> b!7809712 (= e!4622504 (and tp!2301004 tp!2301001))))

(assert (= (and b!7809105 ((_ is ElementMatch!20893) (regOne!42299 (regOne!42298 r2!6217)))) b!7809709))

(assert (= (and b!7809105 ((_ is Concat!29738) (regOne!42299 (regOne!42298 r2!6217)))) b!7809710))

(assert (= (and b!7809105 ((_ is Star!20893) (regOne!42299 (regOne!42298 r2!6217)))) b!7809711))

(assert (= (and b!7809105 ((_ is Union!20893) (regOne!42299 (regOne!42298 r2!6217)))) b!7809712))

(declare-fun b!7809715 () Bool)

(declare-fun e!4622505 () Bool)

(declare-fun tp!2301008 () Bool)

(assert (=> b!7809715 (= e!4622505 tp!2301008)))

(declare-fun b!7809713 () Bool)

(assert (=> b!7809713 (= e!4622505 tp_is_empty!52141)))

(declare-fun b!7809714 () Bool)

(declare-fun tp!2301007 () Bool)

(declare-fun tp!2301010 () Bool)

(assert (=> b!7809714 (= e!4622505 (and tp!2301007 tp!2301010))))

(assert (=> b!7809105 (= tp!2300667 e!4622505)))

(declare-fun b!7809716 () Bool)

(declare-fun tp!2301009 () Bool)

(declare-fun tp!2301006 () Bool)

(assert (=> b!7809716 (= e!4622505 (and tp!2301009 tp!2301006))))

(assert (= (and b!7809105 ((_ is ElementMatch!20893) (regTwo!42299 (regOne!42298 r2!6217)))) b!7809713))

(assert (= (and b!7809105 ((_ is Concat!29738) (regTwo!42299 (regOne!42298 r2!6217)))) b!7809714))

(assert (= (and b!7809105 ((_ is Star!20893) (regTwo!42299 (regOne!42298 r2!6217)))) b!7809715))

(assert (= (and b!7809105 ((_ is Union!20893) (regTwo!42299 (regOne!42298 r2!6217)))) b!7809716))

(check-sat (not b!7809683) (not b!7809633) (not b!7809578) (not b!7809690) (not b!7809305) (not b!7809585) (not b!7809662) (not b!7809525) (not bm!724384) (not d!2348598) (not b!7809637) (not b!7809582) (not bm!724386) (not b!7809563) (not b!7809436) (not b!7809546) (not bm!724410) (not b!7809602) (not b!7809706) (not b!7809530) (not bm!724381) (not b!7809537) (not b!7809558) (not b!7809570) (not b!7809538) (not b!7809699) (not b!7809708) (not b!7809526) (not b!7809276) (not d!2348622) (not b!7809282) (not b!7809647) (not b!7809283) (not b!7809603) (not bm!724414) (not b!7809504) (not b!7809642) (not b!7809533) (not b!7809513) (not d!2348616) (not b!7809278) (not b!7809695) (not b!7809703) (not b!7809534) (not b!7809492) (not b!7809562) (not b!7809327) (not b!7809671) (not b!7809663) (not bm!724406) (not b!7809653) (not b!7809317) (not b!7809330) (not b!7809597) (not b!7809697) (not b!7809485) (not b!7809527) (not b!7809682) (not bm!724375) (not b!7809587) (not b!7809281) (not b!7809470) (not b!7809685) (not b!7809669) (not b!7809309) (not b!7809665) (not b!7809275) (not b!7809523) (not b!7809579) (not b!7809352) (not b!7809555) (not bm!724413) (not b!7809565) (not b!7809484) (not b!7809681) (not b!7809519) (not b!7809594) (not b!7809541) (not b!7809689) (not b!7809306) (not b!7809342) (not b!7809658) (not b!7809629) (not b!7809329) (not b!7809609) (not b!7809316) (not b!7809694) (not b!7809463) (not b!7809318) (not d!2348562) (not bm!724409) (not b!7809313) (not b!7809491) (not b!7809394) (not d!2348568) (not d!2348594) (not b!7809574) (not bm!724376) (not b!7809269) (not d!2348558) (not b!7809575) (not b!7809549) (not b!7809336) (not b!7809353) (not bm!724379) (not b!7809687) (not b!7809611) (not d!2348582) (not b!7809349) (not b!7809547) (not b!7809679) tp_is_empty!52141 (not b!7809678) (not b!7809517) (not b!7809701) (not b!7809635) (not b!7809471) (not b!7809615) (not d!2348628) (not b!7809686) (not b!7809655) (not b!7809569) (not bm!724405) (not b!7809661) (not b!7809473) (not d!2348584) (not b!7809381) (not b!7809310) (not b!7809521) (not b!7809319) (not b!7809337) (not bm!724383) (not d!2348586) (not b!7809691) (not b!7809573) (not b!7809618) (not bm!724377) (not b!7809674) (not b!7809710) (not b!7809557) (not bm!724407) (not b!7809289) (not b!7809372) (not b!7809476) (not bm!724396) (not b!7809438) (not b!7809675) (not b!7809599) (not b!7809643) (not b!7809650) (not b!7809583) (not b!7809518) (not b!7809591) (not b!7809531) (not d!2348612) (not b!7809619) (not b!7809589) (not b!7809698) (not b!7809567) (not b!7809554) (not b!7809553) (not b!7809550) (not b!7809435) (not b!7809360) (not b!7809614) (not b!7809424) (not b!7809522) (not b!7809292) (not b!7809625) (not b!7809561) (not b!7809397) (not b!7809673) (not b!7809324) (not bm!724411) (not b!7809659) (not b!7809707) (not b!7809627) (not b!7809586) (not b!7809601) (not b!7809539) (not b!7809545) (not b!7809384) (not b!7809622) (not bm!724399) (not b!7809646) (not b!7809666) (not b!7809657) (not b!7809571) (not bm!724400) (not d!2348620) (not b!7809645) (not b!7809638) (not b!7809290) (not b!7809543) (not bm!724416) (not d!2348626) (not b!7809634) (not d!2348614) (not b!7809441) (not b!7809716) (not b!7809607) (not b!7809577) (not b!7809651) (not b!7809391) (not b!7809670) (not b!7809535) (not b!7809639) (not b!7809677) (not b!7809551) (not b!7809621) (not b!7809529) (not b!7809617) (not d!2348588) (not b!7809593) (not bm!724374) (not b!7809295) (not b!7809392) (not b!7809581) (not b!7809715) (not b!7809428) (not b!7809268) (not d!2348590) (not b!7809702) (not b!7809711) (not b!7809464) (not b!7809494) (not b!7809590) (not d!2348600) (not bm!724408) (not b!7809704) (not b!7809314) (not b!7809610) (not b!7809631) (not b!7809626) (not bm!724380) (not b!7809559) (not b!7809359) (not b!7809365) (not b!7809326) (not b!7809649) (not b!7809595) (not b!7809714) (not b!7809613) (not b!7809667) (not b!7809630) (not bm!724387) (not b!7809712) (not b!7809623) (not d!2348604) (not b!7809566) (not b!7809429) (not b!7809606) (not b!7809339) (not b!7809385) (not b!7809362) (not b!7809320) (not b!7809641) (not b!7809654) (not b!7809693) (not b!7809542) (not b!7809605) (not d!2348592) (not b!7809598) (not b!7809497))
(check-sat)
