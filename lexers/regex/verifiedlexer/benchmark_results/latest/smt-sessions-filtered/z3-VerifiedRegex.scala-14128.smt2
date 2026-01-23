; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742814 () Bool)

(assert start!742814)

(declare-fun b!7842971 () Bool)

(declare-fun e!4637173 () Bool)

(declare-fun tp!2321280 () Bool)

(declare-fun tp!2321278 () Bool)

(assert (=> b!7842971 (= e!4637173 (and tp!2321280 tp!2321278))))

(declare-fun res!3119552 () Bool)

(declare-fun e!4637172 () Bool)

(assert (=> start!742814 (=> (not res!3119552) (not e!4637172))))

(declare-datatypes ((C!42384 0))(
  ( (C!42385 (val!31654 Int)) )
))
(declare-datatypes ((Regex!21029 0))(
  ( (ElementMatch!21029 (c!1441761 C!42384)) (Concat!29874 (regOne!42570 Regex!21029) (regTwo!42570 Regex!21029)) (EmptyExpr!21029) (Star!21029 (reg!21358 Regex!21029)) (EmptyLang!21029) (Union!21029 (regOne!42571 Regex!21029) (regTwo!42571 Regex!21029)) )
))
(declare-fun r!27161 () Regex!21029)

(declare-datatypes ((List!73888 0))(
  ( (Nil!73764) (Cons!73764 (h!80212 C!42384) (t!388623 List!73888)) )
))
(declare-fun s!15118 () List!73888)

(get-info :version)

(assert (=> start!742814 (= res!3119552 (and (= r!27161 EmptyLang!21029) ((_ is Cons!73764) s!15118)))))

(assert (=> start!742814 e!4637172))

(assert (=> start!742814 e!4637173))

(declare-fun e!4637171 () Bool)

(assert (=> start!742814 e!4637171))

(declare-fun b!7842972 () Bool)

(declare-fun tp!2321281 () Bool)

(declare-fun tp!2321279 () Bool)

(assert (=> b!7842972 (= e!4637173 (and tp!2321281 tp!2321279))))

(declare-fun b!7842973 () Bool)

(declare-fun validRegex!11443 (Regex!21029) Bool)

(assert (=> b!7842973 (= e!4637172 (not (validRegex!11443 r!27161)))))

(declare-fun b!7842974 () Bool)

(declare-fun tp_is_empty!52457 () Bool)

(assert (=> b!7842974 (= e!4637173 tp_is_empty!52457)))

(declare-fun b!7842975 () Bool)

(declare-fun tp!2321277 () Bool)

(assert (=> b!7842975 (= e!4637171 (and tp_is_empty!52457 tp!2321277))))

(declare-fun b!7842976 () Bool)

(declare-fun tp!2321282 () Bool)

(assert (=> b!7842976 (= e!4637173 tp!2321282)))

(assert (= (and start!742814 res!3119552) b!7842973))

(assert (= (and start!742814 ((_ is ElementMatch!21029) r!27161)) b!7842974))

(assert (= (and start!742814 ((_ is Concat!29874) r!27161)) b!7842971))

(assert (= (and start!742814 ((_ is Star!21029) r!27161)) b!7842976))

(assert (= (and start!742814 ((_ is Union!21029) r!27161)) b!7842972))

(assert (= (and start!742814 ((_ is Cons!73764) s!15118)) b!7842975))

(declare-fun m!8255042 () Bool)

(assert (=> b!7842973 m!8255042))

(check-sat (not b!7842972) (not b!7842973) tp_is_empty!52457 (not b!7842971) (not b!7842975) (not b!7842976))
(check-sat)
(get-model)

(declare-fun bm!726745 () Bool)

(declare-fun call!726751 () Bool)

(declare-fun call!726752 () Bool)

(assert (=> bm!726745 (= call!726751 call!726752)))

(declare-fun b!7843032 () Bool)

(declare-fun e!4637211 () Bool)

(declare-fun e!4637213 () Bool)

(assert (=> b!7843032 (= e!4637211 e!4637213)))

(declare-fun c!1441773 () Bool)

(assert (=> b!7843032 (= c!1441773 ((_ is Union!21029) r!27161))))

(declare-fun b!7843033 () Bool)

(declare-fun res!3119579 () Bool)

(declare-fun e!4637212 () Bool)

(assert (=> b!7843033 (=> res!3119579 e!4637212)))

(assert (=> b!7843033 (= res!3119579 (not ((_ is Concat!29874) r!27161)))))

(assert (=> b!7843033 (= e!4637213 e!4637212)))

(declare-fun b!7843035 () Bool)

(declare-fun e!4637214 () Bool)

(assert (=> b!7843035 (= e!4637214 call!726751)))

(declare-fun b!7843036 () Bool)

(declare-fun res!3119581 () Bool)

(assert (=> b!7843036 (=> (not res!3119581) (not e!4637214))))

(declare-fun call!726750 () Bool)

(assert (=> b!7843036 (= res!3119581 call!726750)))

(assert (=> b!7843036 (= e!4637213 e!4637214)))

(declare-fun b!7843037 () Bool)

(declare-fun e!4637217 () Bool)

(assert (=> b!7843037 (= e!4637212 e!4637217)))

(declare-fun res!3119580 () Bool)

(assert (=> b!7843037 (=> (not res!3119580) (not e!4637217))))

(assert (=> b!7843037 (= res!3119580 call!726750)))

(declare-fun b!7843038 () Bool)

(declare-fun e!4637215 () Bool)

(assert (=> b!7843038 (= e!4637215 e!4637211)))

(declare-fun c!1441772 () Bool)

(assert (=> b!7843038 (= c!1441772 ((_ is Star!21029) r!27161))))

(declare-fun b!7843039 () Bool)

(assert (=> b!7843039 (= e!4637217 call!726751)))

(declare-fun b!7843040 () Bool)

(declare-fun e!4637216 () Bool)

(assert (=> b!7843040 (= e!4637211 e!4637216)))

(declare-fun res!3119582 () Bool)

(declare-fun nullable!9319 (Regex!21029) Bool)

(assert (=> b!7843040 (= res!3119582 (not (nullable!9319 (reg!21358 r!27161))))))

(assert (=> b!7843040 (=> (not res!3119582) (not e!4637216))))

(declare-fun d!2352631 () Bool)

(declare-fun res!3119578 () Bool)

(assert (=> d!2352631 (=> res!3119578 e!4637215)))

(assert (=> d!2352631 (= res!3119578 ((_ is ElementMatch!21029) r!27161))))

(assert (=> d!2352631 (= (validRegex!11443 r!27161) e!4637215)))

(declare-fun b!7843034 () Bool)

(assert (=> b!7843034 (= e!4637216 call!726752)))

(declare-fun bm!726746 () Bool)

(assert (=> bm!726746 (= call!726750 (validRegex!11443 (ite c!1441773 (regOne!42571 r!27161) (regOne!42570 r!27161))))))

(declare-fun bm!726747 () Bool)

(assert (=> bm!726747 (= call!726752 (validRegex!11443 (ite c!1441772 (reg!21358 r!27161) (ite c!1441773 (regTwo!42571 r!27161) (regTwo!42570 r!27161)))))))

(assert (= (and d!2352631 (not res!3119578)) b!7843038))

(assert (= (and b!7843038 c!1441772) b!7843040))

(assert (= (and b!7843038 (not c!1441772)) b!7843032))

(assert (= (and b!7843040 res!3119582) b!7843034))

(assert (= (and b!7843032 c!1441773) b!7843036))

(assert (= (and b!7843032 (not c!1441773)) b!7843033))

(assert (= (and b!7843036 res!3119581) b!7843035))

(assert (= (and b!7843033 (not res!3119579)) b!7843037))

(assert (= (and b!7843037 res!3119580) b!7843039))

(assert (= (or b!7843036 b!7843037) bm!726746))

(assert (= (or b!7843035 b!7843039) bm!726745))

(assert (= (or b!7843034 bm!726745) bm!726747))

(declare-fun m!8255050 () Bool)

(assert (=> b!7843040 m!8255050))

(declare-fun m!8255052 () Bool)

(assert (=> bm!726746 m!8255052))

(declare-fun m!8255054 () Bool)

(assert (=> bm!726747 m!8255054))

(assert (=> b!7842973 d!2352631))

(declare-fun b!7843057 () Bool)

(declare-fun e!4637223 () Bool)

(declare-fun tp!2321310 () Bool)

(assert (=> b!7843057 (= e!4637223 (and tp_is_empty!52457 tp!2321310))))

(assert (=> b!7842975 (= tp!2321277 e!4637223)))

(assert (= (and b!7842975 ((_ is Cons!73764) (t!388623 s!15118))) b!7843057))

(declare-fun e!4637231 () Bool)

(assert (=> b!7842976 (= tp!2321282 e!4637231)))

(declare-fun b!7843082 () Bool)

(declare-fun tp!2321336 () Bool)

(declare-fun tp!2321335 () Bool)

(assert (=> b!7843082 (= e!4637231 (and tp!2321336 tp!2321335))))

(declare-fun b!7843083 () Bool)

(declare-fun tp!2321334 () Bool)

(assert (=> b!7843083 (= e!4637231 tp!2321334)))

(declare-fun b!7843081 () Bool)

(assert (=> b!7843081 (= e!4637231 tp_is_empty!52457)))

(declare-fun b!7843084 () Bool)

(declare-fun tp!2321338 () Bool)

(declare-fun tp!2321337 () Bool)

(assert (=> b!7843084 (= e!4637231 (and tp!2321338 tp!2321337))))

(assert (= (and b!7842976 ((_ is ElementMatch!21029) (reg!21358 r!27161))) b!7843081))

(assert (= (and b!7842976 ((_ is Concat!29874) (reg!21358 r!27161))) b!7843082))

(assert (= (and b!7842976 ((_ is Star!21029) (reg!21358 r!27161))) b!7843083))

(assert (= (and b!7842976 ((_ is Union!21029) (reg!21358 r!27161))) b!7843084))

(declare-fun e!4637232 () Bool)

(assert (=> b!7842971 (= tp!2321280 e!4637232)))

(declare-fun b!7843086 () Bool)

(declare-fun tp!2321341 () Bool)

(declare-fun tp!2321340 () Bool)

(assert (=> b!7843086 (= e!4637232 (and tp!2321341 tp!2321340))))

(declare-fun b!7843087 () Bool)

(declare-fun tp!2321339 () Bool)

(assert (=> b!7843087 (= e!4637232 tp!2321339)))

(declare-fun b!7843085 () Bool)

(assert (=> b!7843085 (= e!4637232 tp_is_empty!52457)))

(declare-fun b!7843088 () Bool)

(declare-fun tp!2321343 () Bool)

(declare-fun tp!2321342 () Bool)

(assert (=> b!7843088 (= e!4637232 (and tp!2321343 tp!2321342))))

(assert (= (and b!7842971 ((_ is ElementMatch!21029) (regOne!42570 r!27161))) b!7843085))

(assert (= (and b!7842971 ((_ is Concat!29874) (regOne!42570 r!27161))) b!7843086))

(assert (= (and b!7842971 ((_ is Star!21029) (regOne!42570 r!27161))) b!7843087))

(assert (= (and b!7842971 ((_ is Union!21029) (regOne!42570 r!27161))) b!7843088))

(declare-fun e!4637233 () Bool)

(assert (=> b!7842971 (= tp!2321278 e!4637233)))

(declare-fun b!7843090 () Bool)

(declare-fun tp!2321346 () Bool)

(declare-fun tp!2321345 () Bool)

(assert (=> b!7843090 (= e!4637233 (and tp!2321346 tp!2321345))))

(declare-fun b!7843091 () Bool)

(declare-fun tp!2321344 () Bool)

(assert (=> b!7843091 (= e!4637233 tp!2321344)))

(declare-fun b!7843089 () Bool)

(assert (=> b!7843089 (= e!4637233 tp_is_empty!52457)))

(declare-fun b!7843092 () Bool)

(declare-fun tp!2321348 () Bool)

(declare-fun tp!2321347 () Bool)

(assert (=> b!7843092 (= e!4637233 (and tp!2321348 tp!2321347))))

(assert (= (and b!7842971 ((_ is ElementMatch!21029) (regTwo!42570 r!27161))) b!7843089))

(assert (= (and b!7842971 ((_ is Concat!29874) (regTwo!42570 r!27161))) b!7843090))

(assert (= (and b!7842971 ((_ is Star!21029) (regTwo!42570 r!27161))) b!7843091))

(assert (= (and b!7842971 ((_ is Union!21029) (regTwo!42570 r!27161))) b!7843092))

(declare-fun e!4637234 () Bool)

(assert (=> b!7842972 (= tp!2321281 e!4637234)))

(declare-fun b!7843094 () Bool)

(declare-fun tp!2321351 () Bool)

(declare-fun tp!2321350 () Bool)

(assert (=> b!7843094 (= e!4637234 (and tp!2321351 tp!2321350))))

(declare-fun b!7843095 () Bool)

(declare-fun tp!2321349 () Bool)

(assert (=> b!7843095 (= e!4637234 tp!2321349)))

(declare-fun b!7843093 () Bool)

(assert (=> b!7843093 (= e!4637234 tp_is_empty!52457)))

(declare-fun b!7843096 () Bool)

(declare-fun tp!2321353 () Bool)

(declare-fun tp!2321352 () Bool)

(assert (=> b!7843096 (= e!4637234 (and tp!2321353 tp!2321352))))

(assert (= (and b!7842972 ((_ is ElementMatch!21029) (regOne!42571 r!27161))) b!7843093))

(assert (= (and b!7842972 ((_ is Concat!29874) (regOne!42571 r!27161))) b!7843094))

(assert (= (and b!7842972 ((_ is Star!21029) (regOne!42571 r!27161))) b!7843095))

(assert (= (and b!7842972 ((_ is Union!21029) (regOne!42571 r!27161))) b!7843096))

(declare-fun e!4637235 () Bool)

(assert (=> b!7842972 (= tp!2321279 e!4637235)))

(declare-fun b!7843098 () Bool)

(declare-fun tp!2321356 () Bool)

(declare-fun tp!2321355 () Bool)

(assert (=> b!7843098 (= e!4637235 (and tp!2321356 tp!2321355))))

(declare-fun b!7843099 () Bool)

(declare-fun tp!2321354 () Bool)

(assert (=> b!7843099 (= e!4637235 tp!2321354)))

(declare-fun b!7843097 () Bool)

(assert (=> b!7843097 (= e!4637235 tp_is_empty!52457)))

(declare-fun b!7843100 () Bool)

(declare-fun tp!2321358 () Bool)

(declare-fun tp!2321357 () Bool)

(assert (=> b!7843100 (= e!4637235 (and tp!2321358 tp!2321357))))

(assert (= (and b!7842972 ((_ is ElementMatch!21029) (regTwo!42571 r!27161))) b!7843097))

(assert (= (and b!7842972 ((_ is Concat!29874) (regTwo!42571 r!27161))) b!7843098))

(assert (= (and b!7842972 ((_ is Star!21029) (regTwo!42571 r!27161))) b!7843099))

(assert (= (and b!7842972 ((_ is Union!21029) (regTwo!42571 r!27161))) b!7843100))

(check-sat (not b!7843100) (not bm!726747) (not b!7843057) (not b!7843088) (not b!7843090) (not b!7843087) (not b!7843086) (not b!7843082) tp_is_empty!52457 (not b!7843092) (not b!7843096) (not b!7843099) (not b!7843084) (not b!7843083) (not b!7843091) (not b!7843040) (not b!7843095) (not b!7843094) (not b!7843098) (not bm!726746))
(check-sat)
