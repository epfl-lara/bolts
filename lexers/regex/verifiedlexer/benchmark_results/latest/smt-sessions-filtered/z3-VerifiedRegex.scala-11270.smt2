; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!592784 () Bool)

(assert start!592784)

(declare-fun b!5772282 () Bool)

(assert (=> b!5772282 true))

(assert (=> b!5772282 true))

(declare-fun lambda!314068 () Int)

(declare-fun lambda!314067 () Int)

(assert (=> b!5772282 (not (= lambda!314068 lambda!314067))))

(assert (=> b!5772282 true))

(assert (=> b!5772282 true))

(declare-fun b!5772247 () Bool)

(assert (=> b!5772247 true))

(declare-fun bs!1354238 () Bool)

(declare-fun b!5772285 () Bool)

(assert (= bs!1354238 (and b!5772285 b!5772282)))

(declare-datatypes ((C!31844 0))(
  ( (C!31845 (val!25624 Int)) )
))
(declare-datatypes ((Regex!15787 0))(
  ( (ElementMatch!15787 (c!1020774 C!31844)) (Concat!24632 (regOne!32086 Regex!15787) (regTwo!32086 Regex!15787)) (EmptyExpr!15787) (Star!15787 (reg!16116 Regex!15787)) (EmptyLang!15787) (Union!15787 (regOne!32087 Regex!15787) (regTwo!32087 Regex!15787)) )
))
(declare-fun r!7292 () Regex!15787)

(declare-fun lt!2292577 () Regex!15787)

(declare-fun lambda!314070 () Int)

(assert (=> bs!1354238 (= (and (= (regOne!32086 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292577 (regTwo!32086 r!7292))) (= lambda!314070 lambda!314067))))

(assert (=> bs!1354238 (not (= lambda!314070 lambda!314068))))

(assert (=> b!5772285 true))

(assert (=> b!5772285 true))

(assert (=> b!5772285 true))

(declare-fun lambda!314071 () Int)

(assert (=> bs!1354238 (not (= lambda!314071 lambda!314067))))

(assert (=> bs!1354238 (= (and (= (regOne!32086 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292577 (regTwo!32086 r!7292))) (= lambda!314071 lambda!314068))))

(assert (=> b!5772285 (not (= lambda!314071 lambda!314070))))

(assert (=> b!5772285 true))

(assert (=> b!5772285 true))

(assert (=> b!5772285 true))

(declare-fun lt!2292593 () Regex!15787)

(declare-fun lambda!314072 () Int)

(assert (=> bs!1354238 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292593 (regTwo!32086 r!7292))) (= lambda!314072 lambda!314067))))

(assert (=> bs!1354238 (not (= lambda!314072 lambda!314068))))

(assert (=> b!5772285 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292593 lt!2292577)) (= lambda!314072 lambda!314070))))

(assert (=> b!5772285 (not (= lambda!314072 lambda!314071))))

(assert (=> b!5772285 true))

(assert (=> b!5772285 true))

(assert (=> b!5772285 true))

(declare-fun lambda!314073 () Int)

(assert (=> bs!1354238 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292593 (regTwo!32086 r!7292))) (= lambda!314073 lambda!314068))))

(assert (=> b!5772285 (not (= lambda!314073 lambda!314072))))

(assert (=> b!5772285 (not (= lambda!314073 lambda!314070))))

(assert (=> bs!1354238 (not (= lambda!314073 lambda!314067))))

(assert (=> b!5772285 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292593 lt!2292577)) (= lambda!314073 lambda!314071))))

(assert (=> b!5772285 true))

(assert (=> b!5772285 true))

(assert (=> b!5772285 true))

(declare-fun bs!1354239 () Bool)

(declare-fun b!5772238 () Bool)

(assert (= bs!1354239 (and b!5772238 b!5772282)))

(declare-fun lambda!314074 () Int)

(assert (=> bs!1354239 (not (= lambda!314074 lambda!314068))))

(declare-fun bs!1354240 () Bool)

(assert (= bs!1354240 (and b!5772238 b!5772285)))

(assert (=> bs!1354240 (not (= lambda!314074 lambda!314073))))

(declare-fun lt!2292503 () Regex!15787)

(assert (=> bs!1354240 (= (and (= (regOne!32086 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292503 lt!2292593)) (= lambda!314074 lambda!314072))))

(assert (=> bs!1354240 (= (= lt!2292503 lt!2292577) (= lambda!314074 lambda!314070))))

(assert (=> bs!1354239 (= (and (= (regOne!32086 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292503 (regTwo!32086 r!7292))) (= lambda!314074 lambda!314067))))

(assert (=> bs!1354240 (not (= lambda!314074 lambda!314071))))

(assert (=> b!5772238 true))

(assert (=> b!5772238 true))

(assert (=> b!5772238 true))

(declare-fun lambda!314075 () Int)

(assert (=> bs!1354239 (= (and (= (regOne!32086 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292503 (regTwo!32086 r!7292))) (= lambda!314075 lambda!314068))))

(assert (=> bs!1354240 (= (and (= (regOne!32086 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292503 lt!2292593)) (= lambda!314075 lambda!314073))))

(assert (=> bs!1354240 (not (= lambda!314075 lambda!314072))))

(assert (=> bs!1354240 (not (= lambda!314075 lambda!314070))))

(assert (=> bs!1354239 (not (= lambda!314075 lambda!314067))))

(assert (=> bs!1354240 (= (= lt!2292503 lt!2292577) (= lambda!314075 lambda!314071))))

(assert (=> b!5772238 (not (= lambda!314075 lambda!314074))))

(assert (=> b!5772238 true))

(assert (=> b!5772238 true))

(assert (=> b!5772238 true))

(declare-fun lambda!314076 () Int)

(assert (=> bs!1354239 (not (= lambda!314076 lambda!314068))))

(assert (=> bs!1354240 (not (= lambda!314076 lambda!314073))))

(declare-fun lt!2292631 () Regex!15787)

(assert (=> bs!1354240 (= (= lt!2292631 lt!2292593) (= lambda!314076 lambda!314072))))

(assert (=> bs!1354240 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292631 lt!2292577)) (= lambda!314076 lambda!314070))))

(assert (=> b!5772238 (not (= lambda!314076 lambda!314075))))

(assert (=> bs!1354239 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292631 (regTwo!32086 r!7292))) (= lambda!314076 lambda!314067))))

(assert (=> bs!1354240 (not (= lambda!314076 lambda!314071))))

(assert (=> b!5772238 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292631 lt!2292503)) (= lambda!314076 lambda!314074))))

(assert (=> b!5772238 true))

(assert (=> b!5772238 true))

(assert (=> b!5772238 true))

(declare-fun lambda!314077 () Int)

(assert (=> bs!1354239 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292631 (regTwo!32086 r!7292))) (= lambda!314077 lambda!314068))))

(assert (=> bs!1354240 (= (= lt!2292631 lt!2292593) (= lambda!314077 lambda!314073))))

(assert (=> bs!1354240 (not (= lambda!314077 lambda!314072))))

(assert (=> b!5772238 (not (= lambda!314077 lambda!314076))))

(assert (=> bs!1354240 (not (= lambda!314077 lambda!314070))))

(assert (=> b!5772238 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292631 lt!2292503)) (= lambda!314077 lambda!314075))))

(assert (=> bs!1354239 (not (= lambda!314077 lambda!314067))))

(assert (=> bs!1354240 (= (and (= (regTwo!32086 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292631 lt!2292577)) (= lambda!314077 lambda!314071))))

(assert (=> b!5772238 (not (= lambda!314077 lambda!314074))))

(assert (=> b!5772238 true))

(assert (=> b!5772238 true))

(assert (=> b!5772238 true))

(declare-fun bs!1354241 () Bool)

(declare-fun b!5772284 () Bool)

(assert (= bs!1354241 (and b!5772284 b!5772282)))

(declare-fun lambda!314078 () Int)

(assert (=> bs!1354241 (not (= lambda!314078 lambda!314068))))

(declare-fun bs!1354242 () Bool)

(assert (= bs!1354242 (and b!5772284 b!5772285)))

(assert (=> bs!1354242 (not (= lambda!314078 lambda!314073))))

(declare-fun lt!2292531 () Regex!15787)

(assert (=> bs!1354242 (= (and (= lt!2292531 (regTwo!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292593)) (= lambda!314078 lambda!314072))))

(declare-fun bs!1354243 () Bool)

(assert (= bs!1354243 (and b!5772284 b!5772238)))

(assert (=> bs!1354243 (= (and (= lt!2292531 (regTwo!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292631)) (= lambda!314078 lambda!314076))))

(assert (=> bs!1354243 (not (= lambda!314078 lambda!314077))))

(assert (=> bs!1354242 (= (and (= lt!2292531 (regOne!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292577)) (= lambda!314078 lambda!314070))))

(assert (=> bs!1354243 (not (= lambda!314078 lambda!314075))))

(assert (=> bs!1354241 (= (= lt!2292531 (regOne!32086 r!7292)) (= lambda!314078 lambda!314067))))

(assert (=> bs!1354242 (not (= lambda!314078 lambda!314071))))

(assert (=> bs!1354243 (= (and (= lt!2292531 (regOne!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292503)) (= lambda!314078 lambda!314074))))

(assert (=> b!5772284 true))

(assert (=> b!5772284 true))

(assert (=> b!5772284 true))

(declare-fun lambda!314079 () Int)

(assert (=> bs!1354241 (= (= lt!2292531 (regOne!32086 r!7292)) (= lambda!314079 lambda!314068))))

(assert (=> bs!1354242 (= (and (= lt!2292531 (regTwo!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292593)) (= lambda!314079 lambda!314073))))

(assert (=> bs!1354242 (not (= lambda!314079 lambda!314072))))

(assert (=> bs!1354243 (not (= lambda!314079 lambda!314076))))

(assert (=> bs!1354243 (= (and (= lt!2292531 (regTwo!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292631)) (= lambda!314079 lambda!314077))))

(assert (=> bs!1354242 (not (= lambda!314079 lambda!314070))))

(assert (=> bs!1354243 (= (and (= lt!2292531 (regOne!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292503)) (= lambda!314079 lambda!314075))))

(assert (=> bs!1354241 (not (= lambda!314079 lambda!314067))))

(assert (=> bs!1354242 (= (and (= lt!2292531 (regOne!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292577)) (= lambda!314079 lambda!314071))))

(assert (=> b!5772284 (not (= lambda!314079 lambda!314078))))

(assert (=> bs!1354243 (not (= lambda!314079 lambda!314074))))

(assert (=> b!5772284 true))

(assert (=> b!5772284 true))

(assert (=> b!5772284 true))

(declare-fun bs!1354244 () Bool)

(declare-fun b!5772279 () Bool)

(assert (= bs!1354244 (and b!5772279 b!5772282)))

(declare-fun lambda!314080 () Int)

(assert (=> bs!1354244 (not (= lambda!314080 lambda!314068))))

(declare-fun bs!1354245 () Bool)

(assert (= bs!1354245 (and b!5772279 b!5772285)))

(assert (=> bs!1354245 (not (= lambda!314080 lambda!314073))))

(declare-datatypes ((List!63660 0))(
  ( (Nil!63536) (Cons!63536 (h!69984 C!31844) (t!376998 List!63660)) )
))
(declare-fun s!2326 () List!63660)

(declare-datatypes ((tuple2!65768 0))(
  ( (tuple2!65769 (_1!36187 List!63660) (_2!36187 List!63660)) )
))
(declare-fun lt!2292588 () tuple2!65768)

(assert (=> bs!1354245 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292593)) (= lambda!314080 lambda!314072))))

(declare-fun bs!1354246 () Bool)

(assert (= bs!1354246 (and b!5772279 b!5772238)))

(assert (=> bs!1354246 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292631)) (= lambda!314080 lambda!314076))))

(assert (=> bs!1354246 (not (= lambda!314080 lambda!314077))))

(assert (=> bs!1354245 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292577)) (= lambda!314080 lambda!314070))))

(assert (=> bs!1354246 (not (= lambda!314080 lambda!314075))))

(assert (=> bs!1354244 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314080 lambda!314067))))

(assert (=> bs!1354245 (not (= lambda!314080 lambda!314071))))

(declare-fun bs!1354247 () Bool)

(assert (= bs!1354247 (and b!5772279 b!5772284)))

(assert (=> bs!1354247 (not (= lambda!314080 lambda!314079))))

(assert (=> bs!1354247 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292531) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314080 lambda!314078))))

(assert (=> bs!1354246 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292503)) (= lambda!314080 lambda!314074))))

(assert (=> b!5772279 true))

(assert (=> b!5772279 true))

(assert (=> b!5772279 true))

(declare-fun lambda!314081 () Int)

(assert (=> bs!1354244 (not (= lambda!314081 lambda!314068))))

(assert (=> bs!1354245 (not (= lambda!314081 lambda!314073))))

(assert (=> bs!1354246 (not (= lambda!314081 lambda!314076))))

(assert (=> bs!1354246 (not (= lambda!314081 lambda!314077))))

(assert (=> bs!1354245 (not (= lambda!314081 lambda!314070))))

(assert (=> bs!1354246 (not (= lambda!314081 lambda!314075))))

(assert (=> bs!1354244 (not (= lambda!314081 lambda!314067))))

(assert (=> bs!1354245 (not (= lambda!314081 lambda!314071))))

(assert (=> bs!1354247 (not (= lambda!314081 lambda!314079))))

(assert (=> bs!1354247 (not (= lambda!314081 lambda!314078))))

(assert (=> bs!1354246 (not (= lambda!314081 lambda!314074))))

(assert (=> b!5772279 (not (= lambda!314081 lambda!314080))))

(assert (=> bs!1354245 (not (= lambda!314081 lambda!314072))))

(assert (=> b!5772279 true))

(assert (=> b!5772279 true))

(assert (=> b!5772279 true))

(declare-fun lambda!314082 () Int)

(assert (=> bs!1354244 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314082 lambda!314068))))

(assert (=> bs!1354245 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292593)) (= lambda!314082 lambda!314073))))

(assert (=> bs!1354246 (not (= lambda!314082 lambda!314076))))

(assert (=> bs!1354246 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292631)) (= lambda!314082 lambda!314077))))

(assert (=> bs!1354245 (not (= lambda!314082 lambda!314070))))

(assert (=> bs!1354246 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292503)) (= lambda!314082 lambda!314075))))

(assert (=> bs!1354244 (not (= lambda!314082 lambda!314067))))

(assert (=> bs!1354245 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292577)) (= lambda!314082 lambda!314071))))

(assert (=> b!5772279 (not (= lambda!314082 lambda!314081))))

(assert (=> bs!1354247 (= (and (= (_1!36187 lt!2292588) s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292531) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314082 lambda!314079))))

(assert (=> bs!1354247 (not (= lambda!314082 lambda!314078))))

(assert (=> bs!1354246 (not (= lambda!314082 lambda!314074))))

(assert (=> b!5772279 (not (= lambda!314082 lambda!314080))))

(assert (=> bs!1354245 (not (= lambda!314082 lambda!314072))))

(assert (=> b!5772279 true))

(assert (=> b!5772279 true))

(assert (=> b!5772279 true))

(declare-fun b!5772291 () Bool)

(assert (=> b!5772291 true))

(declare-fun bs!1354248 () Bool)

(assert (= bs!1354248 (and b!5772291 b!5772279)))

(declare-fun lambda!314085 () Int)

(declare-fun lambda!314083 () Int)

(assert (=> bs!1354248 (= lambda!314085 lambda!314083)))

(declare-fun bs!1354249 () Bool)

(assert (= bs!1354249 (and b!5772291 b!5772282)))

(declare-fun lambda!314086 () Int)

(assert (=> bs!1354249 (not (= lambda!314086 lambda!314068))))

(declare-fun bs!1354250 () Bool)

(assert (= bs!1354250 (and b!5772291 b!5772285)))

(assert (=> bs!1354250 (not (= lambda!314086 lambda!314073))))

(declare-fun bs!1354251 () Bool)

(assert (= bs!1354251 (and b!5772291 b!5772238)))

(declare-fun lt!2292545 () Regex!15787)

(assert (=> bs!1354251 (= (and (= lt!2292545 (regTwo!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292631)) (= lambda!314086 lambda!314076))))

(assert (=> bs!1354251 (not (= lambda!314086 lambda!314077))))

(assert (=> bs!1354250 (= (and (= lt!2292545 (regOne!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292577)) (= lambda!314086 lambda!314070))))

(assert (=> bs!1354251 (not (= lambda!314086 lambda!314075))))

(assert (=> bs!1354249 (= (= lt!2292545 (regOne!32086 r!7292)) (= lambda!314086 lambda!314067))))

(assert (=> bs!1354248 (not (= lambda!314086 lambda!314082))))

(assert (=> bs!1354250 (not (= lambda!314086 lambda!314071))))

(assert (=> bs!1354248 (not (= lambda!314086 lambda!314081))))

(declare-fun bs!1354252 () Bool)

(assert (= bs!1354252 (and b!5772291 b!5772284)))

(assert (=> bs!1354252 (not (= lambda!314086 lambda!314079))))

(assert (=> bs!1354252 (= (= lt!2292545 lt!2292531) (= lambda!314086 lambda!314078))))

(assert (=> bs!1354251 (= (and (= lt!2292545 (regOne!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292503)) (= lambda!314086 lambda!314074))))

(assert (=> bs!1354248 (= (and (= s!2326 (_1!36187 lt!2292588)) (= lt!2292545 (reg!16116 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292531)) (= lambda!314086 lambda!314080))))

(assert (=> bs!1354250 (= (and (= lt!2292545 (regTwo!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292593)) (= lambda!314086 lambda!314072))))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(declare-fun lambda!314087 () Int)

(assert (=> bs!1354249 (= (= lt!2292545 (regOne!32086 r!7292)) (= lambda!314087 lambda!314068))))

(assert (=> bs!1354250 (= (and (= lt!2292545 (regTwo!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292593)) (= lambda!314087 lambda!314073))))

(assert (=> bs!1354251 (not (= lambda!314087 lambda!314076))))

(assert (=> bs!1354251 (= (and (= lt!2292545 (regTwo!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292631)) (= lambda!314087 lambda!314077))))

(assert (=> bs!1354250 (not (= lambda!314087 lambda!314070))))

(assert (=> bs!1354251 (= (and (= lt!2292545 (regOne!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292503)) (= lambda!314087 lambda!314075))))

(assert (=> bs!1354249 (not (= lambda!314087 lambda!314067))))

(assert (=> bs!1354248 (= (and (= s!2326 (_1!36187 lt!2292588)) (= lt!2292545 (reg!16116 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292531)) (= lambda!314087 lambda!314082))))

(assert (=> bs!1354250 (= (and (= lt!2292545 (regOne!32086 (regOne!32086 r!7292))) (= (regTwo!32086 r!7292) lt!2292577)) (= lambda!314087 lambda!314071))))

(assert (=> b!5772291 (not (= lambda!314087 lambda!314086))))

(assert (=> bs!1354248 (not (= lambda!314087 lambda!314081))))

(assert (=> bs!1354252 (= (= lt!2292545 lt!2292531) (= lambda!314087 lambda!314079))))

(assert (=> bs!1354252 (not (= lambda!314087 lambda!314078))))

(assert (=> bs!1354251 (not (= lambda!314087 lambda!314074))))

(assert (=> bs!1354248 (not (= lambda!314087 lambda!314080))))

(assert (=> bs!1354250 (not (= lambda!314087 lambda!314072))))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(declare-fun lambda!314088 () Int)

(assert (=> bs!1354249 (not (= lambda!314088 lambda!314068))))

(assert (=> bs!1354250 (not (= lambda!314088 lambda!314073))))

(declare-fun lt!2292616 () tuple2!65768)

(assert (=> bs!1354251 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292631)) (= lambda!314088 lambda!314076))))

(assert (=> bs!1354251 (not (= lambda!314088 lambda!314077))))

(assert (=> bs!1354250 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292577)) (= lambda!314088 lambda!314070))))

(assert (=> bs!1354251 (not (= lambda!314088 lambda!314075))))

(assert (=> bs!1354248 (not (= lambda!314088 lambda!314082))))

(assert (=> bs!1354250 (not (= lambda!314088 lambda!314071))))

(assert (=> b!5772291 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292545) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314088 lambda!314086))))

(assert (=> bs!1354248 (not (= lambda!314088 lambda!314081))))

(assert (=> bs!1354252 (not (= lambda!314088 lambda!314079))))

(assert (=> bs!1354252 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292531) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314088 lambda!314078))))

(assert (=> bs!1354251 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292503)) (= lambda!314088 lambda!314074))))

(assert (=> bs!1354248 (= (= (_1!36187 lt!2292616) (_1!36187 lt!2292588)) (= lambda!314088 lambda!314080))))

(assert (=> bs!1354250 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292593)) (= lambda!314088 lambda!314072))))

(assert (=> b!5772291 (not (= lambda!314088 lambda!314087))))

(assert (=> bs!1354249 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314088 lambda!314067))))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(declare-fun lambda!314089 () Int)

(assert (=> bs!1354249 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314089 lambda!314068))))

(assert (=> bs!1354250 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292593)) (= lambda!314089 lambda!314073))))

(assert (=> bs!1354251 (not (= lambda!314089 lambda!314076))))

(assert (=> bs!1354251 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292631)) (= lambda!314089 lambda!314077))))

(assert (=> bs!1354250 (not (= lambda!314089 lambda!314070))))

(assert (=> bs!1354251 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292503)) (= lambda!314089 lambda!314075))))

(assert (=> bs!1354248 (= (= (_1!36187 lt!2292616) (_1!36187 lt!2292588)) (= lambda!314089 lambda!314082))))

(assert (=> bs!1354250 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292577)) (= lambda!314089 lambda!314071))))

(assert (=> bs!1354248 (not (= lambda!314089 lambda!314081))))

(assert (=> bs!1354252 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292531) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314089 lambda!314079))))

(assert (=> bs!1354252 (not (= lambda!314089 lambda!314078))))

(assert (=> bs!1354251 (not (= lambda!314089 lambda!314074))))

(assert (=> bs!1354248 (not (= lambda!314089 lambda!314080))))

(assert (=> bs!1354250 (not (= lambda!314089 lambda!314072))))

(assert (=> b!5772291 (= (and (= (_1!36187 lt!2292616) s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292545) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314089 lambda!314087))))

(assert (=> bs!1354249 (not (= lambda!314089 lambda!314067))))

(assert (=> b!5772291 (not (= lambda!314089 lambda!314086))))

(assert (=> b!5772291 (not (= lambda!314089 lambda!314088))))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(declare-fun lambda!314090 () Int)

(assert (=> bs!1354249 (not (= lambda!314090 lambda!314068))))

(assert (=> bs!1354250 (not (= lambda!314090 lambda!314073))))

(assert (=> bs!1354251 (not (= lambda!314090 lambda!314076))))

(assert (=> bs!1354251 (not (= lambda!314090 lambda!314077))))

(assert (=> bs!1354250 (not (= lambda!314090 lambda!314070))))

(assert (=> bs!1354251 (not (= lambda!314090 lambda!314075))))

(assert (=> bs!1354250 (not (= lambda!314090 lambda!314071))))

(assert (=> bs!1354248 (= (= (_1!36187 lt!2292616) (_1!36187 lt!2292588)) (= lambda!314090 lambda!314081))))

(assert (=> bs!1354252 (not (= lambda!314090 lambda!314079))))

(assert (=> bs!1354252 (not (= lambda!314090 lambda!314078))))

(assert (=> bs!1354251 (not (= lambda!314090 lambda!314074))))

(assert (=> bs!1354248 (not (= lambda!314090 lambda!314080))))

(assert (=> bs!1354250 (not (= lambda!314090 lambda!314072))))

(assert (=> b!5772291 (not (= lambda!314090 lambda!314087))))

(assert (=> bs!1354249 (not (= lambda!314090 lambda!314067))))

(assert (=> b!5772291 (not (= lambda!314090 lambda!314089))))

(assert (=> bs!1354248 (not (= lambda!314090 lambda!314082))))

(assert (=> b!5772291 (not (= lambda!314090 lambda!314086))))

(assert (=> b!5772291 (not (= lambda!314090 lambda!314088))))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(assert (=> b!5772291 true))

(declare-fun bs!1354253 () Bool)

(declare-fun b!5772268 () Bool)

(assert (= bs!1354253 (and b!5772268 b!5772282)))

(declare-fun lambda!314091 () Int)

(assert (=> bs!1354253 (not (= lambda!314091 lambda!314068))))

(declare-fun bs!1354254 () Bool)

(assert (= bs!1354254 (and b!5772268 b!5772285)))

(assert (=> bs!1354254 (not (= lambda!314091 lambda!314073))))

(declare-fun bs!1354255 () Bool)

(assert (= bs!1354255 (and b!5772268 b!5772238)))

(assert (=> bs!1354255 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292631)) (= lambda!314091 lambda!314076))))

(assert (=> bs!1354255 (not (= lambda!314091 lambda!314077))))

(declare-fun bs!1354256 () Bool)

(assert (= bs!1354256 (and b!5772268 b!5772291)))

(assert (=> bs!1354256 (not (= lambda!314091 lambda!314090))))

(assert (=> bs!1354254 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292577)) (= lambda!314091 lambda!314070))))

(assert (=> bs!1354255 (not (= lambda!314091 lambda!314075))))

(assert (=> bs!1354254 (not (= lambda!314091 lambda!314071))))

(declare-fun bs!1354257 () Bool)

(assert (= bs!1354257 (and b!5772268 b!5772279)))

(assert (=> bs!1354257 (not (= lambda!314091 lambda!314081))))

(declare-fun bs!1354258 () Bool)

(assert (= bs!1354258 (and b!5772268 b!5772284)))

(assert (=> bs!1354258 (not (= lambda!314091 lambda!314079))))

(assert (=> bs!1354258 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292531) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314091 lambda!314078))))

(assert (=> bs!1354255 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292503)) (= lambda!314091 lambda!314074))))

(assert (=> bs!1354257 (= (= Nil!63536 (_1!36187 lt!2292588)) (= lambda!314091 lambda!314080))))

(assert (=> bs!1354254 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292593)) (= lambda!314091 lambda!314072))))

(assert (=> bs!1354256 (not (= lambda!314091 lambda!314087))))

(assert (=> bs!1354253 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314091 lambda!314067))))

(assert (=> bs!1354256 (not (= lambda!314091 lambda!314089))))

(assert (=> bs!1354257 (not (= lambda!314091 lambda!314082))))

(assert (=> bs!1354256 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292545) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314091 lambda!314086))))

(assert (=> bs!1354256 (= (= Nil!63536 (_1!36187 lt!2292616)) (= lambda!314091 lambda!314088))))

(assert (=> b!5772268 true))

(assert (=> b!5772268 true))

(declare-fun lambda!314092 () Int)

(assert (=> bs!1354253 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 r!7292)) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314092 lambda!314068))))

(assert (=> bs!1354254 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292593)) (= lambda!314092 lambda!314073))))

(assert (=> b!5772268 (not (= lambda!314092 lambda!314091))))

(assert (=> bs!1354255 (not (= lambda!314092 lambda!314076))))

(assert (=> bs!1354255 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292631)) (= lambda!314092 lambda!314077))))

(assert (=> bs!1354256 (not (= lambda!314092 lambda!314090))))

(assert (=> bs!1354254 (not (= lambda!314092 lambda!314070))))

(assert (=> bs!1354255 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292503)) (= lambda!314092 lambda!314075))))

(assert (=> bs!1354254 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (= lt!2292531 lt!2292577)) (= lambda!314092 lambda!314071))))

(assert (=> bs!1354257 (not (= lambda!314092 lambda!314081))))

(assert (=> bs!1354258 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292531) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314092 lambda!314079))))

(assert (=> bs!1354258 (not (= lambda!314092 lambda!314078))))

(assert (=> bs!1354255 (not (= lambda!314092 lambda!314074))))

(assert (=> bs!1354257 (not (= lambda!314092 lambda!314080))))

(assert (=> bs!1354254 (not (= lambda!314092 lambda!314072))))

(assert (=> bs!1354256 (= (and (= Nil!63536 s!2326) (= (reg!16116 (regOne!32086 r!7292)) lt!2292545) (= lt!2292531 (regTwo!32086 r!7292))) (= lambda!314092 lambda!314087))))

(assert (=> bs!1354253 (not (= lambda!314092 lambda!314067))))

(assert (=> bs!1354256 (= (= Nil!63536 (_1!36187 lt!2292616)) (= lambda!314092 lambda!314089))))

(assert (=> bs!1354257 (= (= Nil!63536 (_1!36187 lt!2292588)) (= lambda!314092 lambda!314082))))

(assert (=> bs!1354256 (not (= lambda!314092 lambda!314086))))

(assert (=> bs!1354256 (not (= lambda!314092 lambda!314088))))

(assert (=> b!5772268 true))

(assert (=> b!5772268 true))

(declare-fun lambda!314093 () Int)

(assert (=> bs!1354253 (not (= lambda!314093 lambda!314068))))

(assert (=> bs!1354254 (not (= lambda!314093 lambda!314073))))

(assert (=> b!5772268 (not (= lambda!314093 lambda!314091))))

(assert (=> bs!1354255 (not (= lambda!314093 lambda!314076))))

(assert (=> bs!1354255 (not (= lambda!314093 lambda!314077))))

(assert (=> bs!1354256 (= (= Nil!63536 (_1!36187 lt!2292616)) (= lambda!314093 lambda!314090))))

(assert (=> bs!1354254 (not (= lambda!314093 lambda!314070))))

(assert (=> bs!1354254 (not (= lambda!314093 lambda!314071))))

(assert (=> bs!1354257 (= (= Nil!63536 (_1!36187 lt!2292588)) (= lambda!314093 lambda!314081))))

(assert (=> bs!1354258 (not (= lambda!314093 lambda!314079))))

(assert (=> bs!1354258 (not (= lambda!314093 lambda!314078))))

(assert (=> bs!1354255 (not (= lambda!314093 lambda!314074))))

(assert (=> bs!1354257 (not (= lambda!314093 lambda!314080))))

(assert (=> bs!1354254 (not (= lambda!314093 lambda!314072))))

(assert (=> b!5772268 (not (= lambda!314093 lambda!314092))))

(assert (=> bs!1354255 (not (= lambda!314093 lambda!314075))))

(assert (=> bs!1354256 (not (= lambda!314093 lambda!314087))))

(assert (=> bs!1354253 (not (= lambda!314093 lambda!314067))))

(assert (=> bs!1354256 (not (= lambda!314093 lambda!314089))))

(assert (=> bs!1354257 (not (= lambda!314093 lambda!314082))))

(assert (=> bs!1354256 (not (= lambda!314093 lambda!314086))))

(assert (=> bs!1354256 (not (= lambda!314093 lambda!314088))))

(assert (=> b!5772268 true))

(assert (=> b!5772268 true))

(declare-fun bm!445674 () Bool)

(declare-fun call!445818 () Bool)

(declare-fun call!445750 () Bool)

(assert (=> bm!445674 (= call!445818 call!445750)))

(declare-fun c!1020765 () Bool)

(declare-fun call!445749 () Bool)

(declare-fun c!1020761 () Bool)

(declare-fun bm!445675 () Bool)

(declare-fun lt!2292594 () Regex!15787)

(declare-fun c!1020764 () Bool)

(declare-fun lt!2292613 () Regex!15787)

(declare-fun c!1020773 () Bool)

(declare-fun c!1020769 () Bool)

(declare-fun lt!2292476 () Regex!15787)

(declare-fun c!1020762 () Bool)

(declare-fun lt!2292565 () Regex!15787)

(declare-fun lt!2292663 () List!63660)

(declare-fun lt!2292563 () Regex!15787)

(declare-fun matchR!7972 (Regex!15787 List!63660) Bool)

(assert (=> bm!445675 (= call!445749 (matchR!7972 (ite c!1020762 lt!2292563 (ite c!1020769 lt!2292476 (ite c!1020765 (ite c!1020773 lt!2292565 (ite c!1020764 lt!2292545 lt!2292613)) (ite c!1020761 lt!2292594 (regOne!32086 r!7292))))) (ite (or c!1020762 c!1020769) s!2326 (ite c!1020765 (ite c!1020773 lt!2292663 (ite c!1020764 (_1!36187 lt!2292616) s!2326)) s!2326))))))

(declare-fun b!5772229 () Bool)

(declare-fun e!3545990 () Bool)

(declare-fun lt!2292482 () Bool)

(declare-fun call!445830 () Bool)

(assert (=> b!5772229 (= e!3545990 (= lt!2292482 call!445830))))

(declare-fun bm!445676 () Bool)

(declare-fun call!445824 () Bool)

(declare-fun call!445794 () Bool)

(assert (=> bm!445676 (= call!445824 call!445794)))

(declare-fun bm!445677 () Bool)

(declare-fun call!445882 () Bool)

(declare-fun call!445826 () Bool)

(assert (=> bm!445677 (= call!445882 call!445826)))

(declare-fun bm!445678 () Bool)

(declare-datatypes ((Unit!156734 0))(
  ( (Unit!156735) )
))
(declare-fun call!445812 () Unit!156734)

(declare-fun call!445843 () Unit!156734)

(assert (=> bm!445678 (= call!445812 call!445843)))

(declare-fun lambda!314069 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63661 0))(
  ( (Nil!63537) (Cons!63537 (h!69985 Regex!15787) (t!376999 List!63661)) )
))
(declare-datatypes ((Context!10342 0))(
  ( (Context!10343 (exprs!5671 List!63661)) )
))
(declare-fun lt!2292502 () (InoxSet Context!10342))

(declare-fun lt!2292674 () (InoxSet Context!10342))

(declare-fun bm!445679 () Bool)

(declare-fun c!1020763 () Bool)

(declare-fun lt!2292573 () (InoxSet Context!10342))

(declare-fun call!445687 () (InoxSet Context!10342))

(declare-fun lt!2292478 () (InoxSet Context!10342))

(declare-fun flatMap!1400 ((InoxSet Context!10342) Int) (InoxSet Context!10342))

(assert (=> bm!445679 (= call!445687 (flatMap!1400 (ite c!1020763 lt!2292478 (ite c!1020762 lt!2292573 (ite c!1020773 lt!2292674 lt!2292502))) (ite c!1020763 lambda!314069 (ite c!1020762 lambda!314069 (ite c!1020773 lambda!314069 lambda!314069)))))))

(declare-fun bm!445680 () Bool)

(declare-fun call!445861 () Bool)

(declare-fun call!445786 () Bool)

(assert (=> bm!445680 (= call!445861 call!445786)))

(declare-fun bm!445681 () Bool)

(declare-fun call!445743 () Bool)

(declare-fun call!445710 () Bool)

(assert (=> bm!445681 (= call!445743 call!445710)))

(declare-fun bm!445682 () Bool)

(declare-fun call!445725 () List!63660)

(declare-fun lt!2292571 () List!63660)

(declare-fun ++!14002 (List!63660 List!63660) List!63660)

(assert (=> bm!445682 (= call!445725 (++!14002 (ite c!1020764 lt!2292571 Nil!63536) (ite c!1020764 (_2!36187 lt!2292616) s!2326)))))

(declare-fun bm!445683 () Bool)

(declare-fun call!445875 () Bool)

(declare-fun call!445776 () Bool)

(assert (=> bm!445683 (= call!445875 call!445776)))

(declare-fun bm!445684 () Bool)

(declare-fun call!445842 () Unit!156734)

(declare-fun call!445868 () Unit!156734)

(assert (=> bm!445684 (= call!445842 call!445868)))

(declare-fun bm!445685 () Bool)

(declare-fun call!445850 () Unit!156734)

(declare-fun lemmaConcatAssociative!106 (Regex!15787 Regex!15787 Regex!15787 List!63660) Unit!156734)

(assert (=> bm!445685 (= call!445850 (lemmaConcatAssociative!106 (ite (or c!1020762 c!1020769) (regOne!32086 (regOne!32086 r!7292)) (reg!16116 (regOne!32086 r!7292))) (ite (or c!1020762 c!1020769) (regTwo!32086 (regOne!32086 r!7292)) lt!2292531) (ite c!1020762 lt!2292593 (ite c!1020769 lt!2292631 (regTwo!32086 r!7292))) s!2326))))

(declare-fun bm!445686 () Bool)

(declare-fun call!445733 () Unit!156734)

(declare-fun call!445775 () Unit!156734)

(assert (=> bm!445686 (= call!445733 call!445775)))

(declare-fun bm!445687 () Bool)

(declare-fun call!445740 () Unit!156734)

(assert (=> bm!445687 (= call!445843 call!445740)))

(declare-fun bm!445688 () Bool)

(declare-fun call!445810 () Unit!156734)

(declare-fun call!445707 () Unit!156734)

(assert (=> bm!445688 (= call!445810 call!445707)))

(declare-fun b!5772230 () Bool)

(declare-fun e!3545986 () Bool)

(declare-fun call!445769 () Bool)

(assert (=> b!5772230 (= e!3545986 call!445769)))

(declare-fun lt!2292650 () tuple2!65768)

(declare-fun lt!2292568 () tuple2!65768)

(declare-fun bm!445689 () Bool)

(declare-fun call!445681 () List!63660)

(assert (=> bm!445689 (= call!445681 (++!14002 (ite c!1020773 (_2!36187 lt!2292650) (_1!36187 lt!2292568)) (ite c!1020773 (_2!36187 lt!2292588) (_2!36187 lt!2292568))))))

(declare-fun bm!445690 () Bool)

(declare-fun call!445695 () (InoxSet Context!10342))

(assert (=> bm!445690 (= call!445695 call!445687)))

(declare-fun call!445685 () Bool)

(declare-fun bm!445691 () Bool)

(declare-fun Exists!2887 (Int) Bool)

(assert (=> bm!445691 (= call!445685 (Exists!2887 (ite c!1020762 lambda!314070 (ite c!1020769 lambda!314077 (ite c!1020773 lambda!314081 lambda!314088)))))))

(declare-fun bm!445692 () Bool)

(declare-fun call!445745 () Unit!156734)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1516 (Regex!15787 Regex!15787 List!63660) Unit!156734)

(assert (=> bm!445692 (= call!445745 (lemmaExistCutMatchRandMatchRSpecEquivalent!1516 (ite (or c!1020762 c!1020769) (regOne!32086 (regOne!32086 r!7292)) (ite c!1020773 lt!2292531 lt!2292545)) (ite c!1020762 lt!2292577 (ite c!1020769 lt!2292503 (regTwo!32086 r!7292))) s!2326))))

(declare-fun lt!2292494 () Regex!15787)

(declare-fun call!445774 () Bool)

(declare-fun bm!445693 () Bool)

(declare-fun matchRSpec!2890 (Regex!15787 List!63660) Bool)

(assert (=> bm!445693 (= call!445774 (matchRSpec!2890 (ite c!1020763 lt!2292494 (ite c!1020773 lt!2292531 (ite c!1020764 lt!2292545 lt!2292531))) (ite c!1020763 s!2326 (ite c!1020773 (_1!36187 lt!2292588) (ite c!1020764 (_1!36187 lt!2292616) Nil!63536)))))))

(declare-fun bm!445694 () Bool)

(declare-fun call!445885 () Unit!156734)

(declare-fun call!445692 () Unit!156734)

(assert (=> bm!445694 (= call!445885 call!445692)))

(declare-fun lt!2292522 () (InoxSet Context!10342))

(declare-fun bm!445695 () Bool)

(declare-fun lt!2292609 () (InoxSet Context!10342))

(declare-fun call!445782 () (InoxSet Context!10342))

(declare-fun lt!2292675 () (InoxSet Context!10342))

(assert (=> bm!445695 (= call!445782 (flatMap!1400 (ite c!1020763 lt!2292675 (ite c!1020765 lt!2292609 lt!2292522)) (ite c!1020763 lambda!314069 (ite c!1020765 lambda!314069 lambda!314069))))))

(declare-fun bm!445696 () Bool)

(declare-datatypes ((Option!15796 0))(
  ( (None!15795) (Some!15795 (v!51854 tuple2!65768)) )
))
(declare-fun lt!2292647 () Option!15796)

(declare-fun lt!2292625 () Option!15796)

(declare-fun call!445686 () tuple2!65768)

(declare-fun get!21926 (Option!15796) tuple2!65768)

(assert (=> bm!445696 (= call!445686 (get!21926 (ite c!1020773 lt!2292625 lt!2292647)))))

(declare-fun bm!445697 () Bool)

(declare-fun call!445857 () Unit!156734)

(assert (=> bm!445697 (= call!445857 (lemmaExistCutMatchRandMatchRSpecEquivalent!1516 (ite (or c!1020762 c!1020769) (regTwo!32086 (regOne!32086 r!7292)) (reg!16116 (regOne!32086 r!7292))) (ite c!1020762 lt!2292593 (ite c!1020769 lt!2292631 lt!2292531)) (ite (or c!1020762 c!1020769) s!2326 (ite c!1020773 (_1!36187 lt!2292588) (ite c!1020764 (_1!36187 lt!2292616) Nil!63536)))))))

(declare-fun b!5772231 () Bool)

(declare-fun e!3545982 () Bool)

(assert (=> b!5772231 (= e!3545982 (= lt!2292482 call!445794))))

(declare-fun bm!445698 () Bool)

(declare-fun call!445874 () Bool)

(assert (=> bm!445698 (= call!445874 call!445818)))

(declare-fun bm!445699 () Bool)

(declare-fun call!445784 () Unit!156734)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!292 (Regex!15787 Regex!15787 List!63660 List!63660) Unit!156734)

(assert (=> bm!445699 (= call!445784 (lemmaTwoRegexMatchThenConcatMatchesConcatString!292 (ite c!1020773 lt!2292531 (reg!16116 (regOne!32086 r!7292))) (ite c!1020773 (regTwo!32086 r!7292) lt!2292565) (ite c!1020773 (_2!36187 lt!2292650) (_1!36187 lt!2292568)) (ite c!1020773 (_2!36187 lt!2292588) (_2!36187 lt!2292568))))))

(declare-fun bm!445700 () Bool)

(declare-fun call!445789 () Bool)

(assert (=> bm!445700 (= call!445789 call!445685)))

(declare-fun bm!445701 () Bool)

(declare-fun call!445748 () Option!15796)

(declare-fun findConcatSeparation!2210 (Regex!15787 Regex!15787 List!63660 List!63660 List!63660) Option!15796)

(assert (=> bm!445701 (= call!445748 (findConcatSeparation!2210 (ite c!1020762 (regTwo!32086 (regOne!32086 r!7292)) (ite c!1020769 (regOne!32086 (regOne!32086 r!7292)) (ite c!1020773 lt!2292531 (reg!16116 (regOne!32086 r!7292))))) (ite c!1020762 lt!2292593 (ite c!1020769 lt!2292503 (ite c!1020773 (regTwo!32086 r!7292) lt!2292531))) Nil!63536 (ite (or c!1020762 c!1020769 c!1020773) s!2326 (ite c!1020764 (_1!36187 lt!2292616) Nil!63536)) (ite (or c!1020762 c!1020769 c!1020773) s!2326 (ite c!1020764 (_1!36187 lt!2292616) Nil!63536))))))

(declare-fun bm!445702 () Bool)

(declare-fun call!445827 () Bool)

(declare-fun call!445717 () Bool)

(assert (=> bm!445702 (= call!445827 call!445717)))

(declare-fun b!5772232 () Bool)

(declare-fun res!2436199 () Bool)

(declare-fun e!3545977 () Bool)

(assert (=> b!5772232 (=> res!2436199 e!3545977)))

(get-info :version)

(assert (=> b!5772232 (= res!2436199 (or ((_ is EmptyExpr!15787) r!7292) ((_ is EmptyLang!15787) r!7292) ((_ is ElementMatch!15787) r!7292) ((_ is Union!15787) r!7292) (not ((_ is Concat!24632) r!7292))))))

(declare-fun bm!445703 () Bool)

(declare-fun call!445744 () Bool)

(declare-fun call!445800 () Bool)

(assert (=> bm!445703 (= call!445744 call!445800)))

(declare-fun bm!445704 () Bool)

(declare-fun call!445758 () Bool)

(assert (=> bm!445704 (= call!445758 call!445789)))

(declare-fun bm!445705 () Bool)

(declare-fun call!445811 () Bool)

(declare-fun call!445792 () Bool)

(assert (=> bm!445705 (= call!445811 call!445792)))

(declare-fun bm!445706 () Bool)

(declare-fun call!445771 () Option!15796)

(declare-fun call!445865 () Option!15796)

(assert (=> bm!445706 (= call!445771 call!445865)))

(declare-fun bm!445707 () Bool)

(declare-fun call!445838 () Bool)

(declare-fun call!445790 () Bool)

(assert (=> bm!445707 (= call!445838 call!445790)))

(declare-fun bm!445708 () Bool)

(declare-fun call!445728 () Regex!15787)

(declare-fun call!445881 () Regex!15787)

(assert (=> bm!445708 (= call!445728 call!445881)))

(declare-fun lt!2292666 () Regex!15787)

(declare-fun lt!2292553 () Regex!15787)

(declare-fun bm!445709 () Bool)

(declare-fun call!445863 () Unit!156734)

(declare-fun mainMatchTheorem!2890 (Regex!15787 List!63660) Unit!156734)

(assert (=> bm!445709 (= call!445863 (mainMatchTheorem!2890 (ite c!1020763 lt!2292666 (ite c!1020769 lt!2292503 (ite c!1020765 lt!2292553 (regOne!32086 r!7292)))) s!2326))))

(declare-fun b!5772233 () Bool)

(declare-fun e!3545997 () Bool)

(declare-fun tp!1594425 () Bool)

(assert (=> b!5772233 (= e!3545997 tp!1594425)))

(declare-fun bm!445710 () Bool)

(declare-fun call!445757 () Unit!156734)

(declare-fun call!445747 () Unit!156734)

(assert (=> bm!445710 (= call!445757 call!445747)))

(declare-fun bm!445711 () Bool)

(declare-fun call!445860 () Unit!156734)

(declare-fun call!445845 () Unit!156734)

(assert (=> bm!445711 (= call!445860 call!445845)))

(declare-fun bm!445712 () Bool)

(declare-fun call!445741 () Unit!156734)

(declare-fun call!445785 () Unit!156734)

(assert (=> bm!445712 (= call!445741 call!445785)))

(declare-fun b!5772234 () Bool)

(declare-fun e!3545999 () Bool)

(assert (=> b!5772234 (= e!3545999 (= lt!2292482 call!445750))))

(declare-fun bm!445713 () Bool)

(declare-fun call!445739 () Option!15796)

(declare-fun call!445723 () Option!15796)

(assert (=> bm!445713 (= call!445739 call!445723)))

(declare-fun b!5772235 () Bool)

(declare-fun e!3545992 () Unit!156734)

(declare-fun Unit!156736 () Unit!156734)

(assert (=> b!5772235 (= e!3545992 Unit!156736)))

(declare-fun lt!2292525 () Unit!156734)

(declare-fun lt!2292501 () (InoxSet Context!10342))

(declare-fun lt!2292580 () (InoxSet Context!10342))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!812 ((InoxSet Context!10342) (InoxSet Context!10342) List!63660) Unit!156734)

(assert (=> b!5772235 (= lt!2292525 (lemmaZipperConcatMatchesSameAsBothZippers!812 lt!2292501 lt!2292580 (t!376998 s!2326)))))

(declare-fun res!2436185 () Bool)

(declare-fun matchZipper!1925 ((InoxSet Context!10342) List!63660) Bool)

(assert (=> b!5772235 (= res!2436185 (matchZipper!1925 lt!2292501 (t!376998 s!2326)))))

(declare-fun e!3545978 () Bool)

(assert (=> b!5772235 (=> res!2436185 e!3545978)))

(assert (=> b!5772235 (= (matchZipper!1925 ((_ map or) lt!2292501 lt!2292580) (t!376998 s!2326)) e!3545978)))

(declare-fun bm!445714 () Bool)

(declare-fun call!445682 () Bool)

(declare-fun call!445701 () Bool)

(assert (=> bm!445714 (= call!445682 call!445701)))

(declare-fun bm!445715 () Bool)

(declare-fun call!445762 () Unit!156734)

(declare-fun call!445754 () Unit!156734)

(assert (=> bm!445715 (= call!445762 call!445754)))

(declare-fun lt!2292645 () Option!15796)

(declare-fun call!445756 () Bool)

(declare-fun bm!445716 () Bool)

(declare-fun isDefined!12499 (Option!15796) Bool)

(assert (=> bm!445716 (= call!445756 (isDefined!12499 (ite c!1020769 call!445865 lt!2292645)))))

(declare-fun lt!2292498 () List!63660)

(declare-fun bm!445717 () Bool)

(declare-fun call!445869 () Bool)

(assert (=> bm!445717 (= call!445869 (matchR!7972 (ite c!1020763 lt!2292666 (ite c!1020773 lt!2292531 lt!2292565)) (ite c!1020763 s!2326 (ite c!1020773 lt!2292498 (_2!36187 lt!2292568)))))))

(declare-fun bm!445718 () Bool)

(declare-fun call!445726 () Bool)

(declare-fun call!445820 () Bool)

(assert (=> bm!445718 (= call!445726 call!445820)))

(declare-fun bm!445719 () Bool)

(declare-fun call!445840 () Regex!15787)

(declare-fun call!445793 () Regex!15787)

(assert (=> bm!445719 (= call!445840 call!445793)))

(declare-fun bm!445720 () Bool)

(declare-fun call!445700 () Bool)

(declare-fun call!445855 () Bool)

(assert (=> bm!445720 (= call!445700 call!445855)))

(declare-fun lt!2292623 () Context!10342)

(declare-fun call!445722 () (InoxSet Context!10342))

(declare-fun lt!2292585 () List!63661)

(declare-fun lt!2292534 () Context!10342)

(declare-fun bm!445721 () Bool)

(declare-fun derivationStepZipperDown!1129 (Regex!15787 Context!10342 C!31844) (InoxSet Context!10342))

(assert (=> bm!445721 (= call!445722 (derivationStepZipperDown!1129 (ite c!1020763 (regTwo!32087 (regOne!32086 r!7292)) (ite c!1020762 (regTwo!32086 (regOne!32086 r!7292)) (ite c!1020769 (regOne!32086 (regOne!32086 r!7292)) (reg!16116 (regOne!32086 r!7292))))) (ite (or c!1020763 c!1020762) lt!2292623 (ite c!1020769 (Context!10343 lt!2292585) lt!2292534)) (h!69984 s!2326)))))

(declare-fun bm!445722 () Bool)

(declare-fun call!445849 () Bool)

(declare-fun call!445699 () Bool)

(assert (=> bm!445722 (= call!445849 call!445699)))

(declare-fun b!5772236 () Bool)

(declare-fun Unit!156737 () Unit!156734)

(assert (=> b!5772236 (= e!3545992 Unit!156737)))

(declare-fun bm!445723 () Bool)

(declare-fun call!445851 () Bool)

(declare-fun call!445697 () Bool)

(assert (=> bm!445723 (= call!445851 call!445697)))

(declare-fun b!5772237 () Bool)

(declare-fun res!2436188 () Bool)

(assert (=> b!5772237 (=> res!2436188 e!3545977)))

(declare-datatypes ((List!63662 0))(
  ( (Nil!63538) (Cons!63538 (h!69986 Context!10342) (t!377000 List!63662)) )
))
(declare-fun zl!343 () List!63662)

(declare-fun generalisedUnion!1650 (List!63661) Regex!15787)

(declare-fun unfocusZipperList!1215 (List!63662) List!63661)

(assert (=> b!5772237 (= res!2436188 (not (= r!7292 (generalisedUnion!1650 (unfocusZipperList!1215 zl!343)))))))

(assert (=> b!5772238 e!3545982))

(declare-fun res!2436194 () Bool)

(assert (=> b!5772238 (=> (not res!2436194) (not e!3545982))))

(assert (=> b!5772238 (= res!2436194 (= call!445827 call!445855))))

(declare-fun lt!2292567 () Unit!156734)

(declare-fun call!445715 () Unit!156734)

(assert (=> b!5772238 (= lt!2292567 call!445715)))

(assert (=> b!5772238 (= call!445800 call!445789)))

(declare-fun lt!2292558 () Unit!156734)

(declare-fun call!445764 () Unit!156734)

(assert (=> b!5772238 (= lt!2292558 call!445764)))

(assert (=> b!5772238 (= call!445756 call!445820)))

(declare-fun lt!2292626 () Unit!156734)

(assert (=> b!5772238 (= lt!2292626 call!445843)))

(assert (=> b!5772238 (= lt!2292631 call!445840)))

(declare-fun call!445806 () Bool)

(declare-fun call!445847 () Bool)

(assert (=> b!5772238 (= call!445806 call!445847)))

(declare-fun lt!2292488 () Unit!156734)

(assert (=> b!5772238 (= lt!2292488 call!445747)))

(declare-fun call!445873 () Bool)

(assert (=> b!5772238 (= call!445701 call!445873)))

(declare-fun lt!2292598 () Unit!156734)

(assert (=> b!5772238 (= lt!2292598 call!445785)))

(declare-fun call!445878 () Bool)

(assert (=> b!5772238 (= call!445743 call!445878)))

(declare-fun lt!2292619 () Unit!156734)

(assert (=> b!5772238 (= lt!2292619 call!445775)))

(declare-fun call!445816 () Regex!15787)

(assert (=> b!5772238 (= lt!2292503 call!445816)))

(declare-fun lt!2292633 () Bool)

(assert (=> b!5772238 (= lt!2292633 call!445826)))

(declare-fun lt!2292508 () Unit!156734)

(assert (=> b!5772238 (= lt!2292508 call!445810)))

(declare-fun call!445791 () Bool)

(assert (=> b!5772238 (= lt!2292633 call!445791)))

(declare-fun call!445703 () Bool)

(assert (=> b!5772238 (= lt!2292633 call!445703)))

(declare-fun lt!2292544 () Unit!156734)

(declare-fun call!445802 () Unit!156734)

(assert (=> b!5772238 (= lt!2292544 call!445802)))

(declare-fun call!445880 () Regex!15787)

(assert (=> b!5772238 (= lt!2292476 call!445880)))

(declare-fun call!445708 () (InoxSet Context!10342))

(declare-fun call!445761 () (InoxSet Context!10342))

(assert (=> b!5772238 (= call!445708 call!445761)))

(declare-fun lt!2292589 () Unit!156734)

(declare-fun call!445817 () Unit!156734)

(assert (=> b!5772238 (= lt!2292589 call!445817)))

(declare-fun lt!2292496 () (InoxSet Context!10342))

(assert (=> b!5772238 (= lt!2292496 call!445761)))

(declare-fun lt!2292529 () (InoxSet Context!10342))

(declare-fun lt!2292507 () Context!10342)

(assert (=> b!5772238 (= lt!2292529 (store ((as const (Array Context!10342 Bool)) false) lt!2292507 true))))

(declare-fun lt!2292576 () List!63661)

(assert (=> b!5772238 (= lt!2292507 (Context!10343 lt!2292576))))

(assert (=> b!5772238 (= lt!2292576 (Cons!63537 (regOne!32086 (regOne!32086 r!7292)) lt!2292585))))

(declare-fun lt!2292542 () (InoxSet Context!10342))

(declare-fun call!445742 () (InoxSet Context!10342))

(assert (=> b!5772238 (= lt!2292542 call!445742)))

(assert (=> b!5772238 (= lt!2292585 (Cons!63537 (regTwo!32086 (regOne!32086 r!7292)) (t!376999 (exprs!5671 (h!69986 zl!343)))))))

(declare-fun e!3545984 () Unit!156734)

(declare-fun Unit!156738 () Unit!156734)

(assert (=> b!5772238 (= e!3545984 Unit!156738)))

(declare-fun bm!445724 () Bool)

(declare-fun call!445862 () Bool)

(assert (=> bm!445724 (= call!445830 call!445862)))

(declare-fun bm!445725 () Bool)

(declare-fun call!445696 () Bool)

(declare-fun call!445859 () Bool)

(assert (=> bm!445725 (= call!445696 call!445859)))

(declare-fun b!5772239 () Bool)

(declare-fun res!2436175 () Bool)

(assert (=> b!5772239 (=> res!2436175 e!3545977)))

(assert (=> b!5772239 (= res!2436175 (not ((_ is Cons!63537) (exprs!5671 (h!69986 zl!343)))))))

(declare-fun bm!445726 () Bool)

(declare-fun lt!2292634 () (InoxSet Context!10342))

(declare-fun lt!2292578 () (InoxSet Context!10342))

(declare-fun call!445854 () Unit!156734)

(declare-fun lt!2292493 () (InoxSet Context!10342))

(assert (=> bm!445726 (= call!445854 (lemmaZipperConcatMatchesSameAsBothZippers!812 (ite c!1020763 lt!2292493 (ite c!1020762 lt!2292634 lt!2292501)) (ite c!1020763 lt!2292580 (ite c!1020762 lt!2292578 lt!2292580)) (t!376998 s!2326)))))

(declare-fun lt!2292510 () Regex!15787)

(declare-fun bm!445727 () Bool)

(assert (=> bm!445727 (= call!445697 (matchR!7972 (ite c!1020773 lt!2292531 (ite c!1020764 lt!2292510 lt!2292531)) (ite c!1020773 (_1!36187 lt!2292588) (ite c!1020764 s!2326 Nil!63536))))))

(declare-fun z!1189 () (InoxSet Context!10342))

(declare-fun lt!2292603 () (InoxSet Context!10342))

(declare-fun lt!2292612 () List!63660)

(declare-fun bm!445728 () Bool)

(declare-fun call!445763 () List!63661)

(assert (=> bm!445728 (= call!445769 (matchZipper!1925 (ite c!1020763 lt!2292580 (ite c!1020762 z!1189 (ite c!1020765 (ite c!1020773 (store ((as const (Array Context!10342 Bool)) false) (Context!10343 call!445763) true) lt!2292603) lt!2292580))) (ite c!1020763 (t!376998 s!2326) (ite c!1020762 s!2326 (ite c!1020765 (ite c!1020773 lt!2292612 (_2!36187 lt!2292568)) (t!376998 s!2326))))))))

(declare-fun b!5772240 () Bool)

(declare-fun e!3546009 () Bool)

(declare-fun tp!1594434 () Bool)

(declare-fun tp!1594429 () Bool)

(assert (=> b!5772240 (= e!3546009 (and tp!1594434 tp!1594429))))

(declare-fun b!5772241 () Bool)

(declare-fun e!3546002 () Unit!156734)

(declare-fun Unit!156739 () Unit!156734)

(assert (=> b!5772241 (= e!3546002 Unit!156739)))

(declare-fun lt!2292630 () (InoxSet Context!10342))

(assert (=> b!5772241 (= lt!2292630 (store ((as const (Array Context!10342 Bool)) false) lt!2292623 true))))

(declare-fun lt!2292600 () Regex!15787)

(declare-fun call!445735 () Regex!15787)

(assert (=> b!5772241 (= lt!2292600 call!445735)))

(declare-fun lt!2292648 () Unit!156734)

(assert (=> b!5772241 (= lt!2292648 call!445868)))

(declare-fun call!445832 () Bool)

(declare-fun call!445783 () Bool)

(assert (=> b!5772241 (= call!445832 call!445783)))

(declare-fun bm!445729 () Bool)

(declare-fun call!445872 () Bool)

(assert (=> bm!445729 (= call!445872 call!445882)))

(declare-fun lt!2292528 () Regex!15787)

(declare-fun bm!445730 () Bool)

(declare-fun call!445724 () Bool)

(assert (=> bm!445730 (= call!445724 (matchRSpec!2890 (ite c!1020763 lt!2292528 (ite c!1020762 lt!2292563 (ite c!1020769 lt!2292476 (ite c!1020765 lt!2292553 (regOne!32086 r!7292))))) s!2326))))

(declare-fun bm!445731 () Bool)

(declare-fun call!445864 () Bool)

(assert (=> bm!445731 (= call!445806 call!445864)))

(declare-fun bm!445732 () Bool)

(declare-fun call!445779 () Bool)

(declare-fun call!445777 () Bool)

(assert (=> bm!445732 (= call!445779 call!445777)))

(declare-fun bm!445733 () Bool)

(declare-fun lt!2292659 () List!63660)

(declare-fun c!1020766 () Bool)

(assert (=> bm!445733 (= call!445832 (matchR!7972 (ite c!1020766 lt!2292600 (ite c!1020763 lt!2292528 (ite c!1020762 (Concat!24632 (Concat!24632 (regOne!32086 (regOne!32086 r!7292)) (regTwo!32086 (regOne!32086 r!7292))) lt!2292593) (ite c!1020769 (Concat!24632 (regOne!32086 r!7292) lt!2292631) (ite c!1020765 (ite (or c!1020773 c!1020764) lt!2292553 lt!2292565) (ite c!1020761 (regOne!32086 r!7292) (regTwo!32086 r!7292))))))) (ite c!1020766 (t!376998 s!2326) (ite (or c!1020763 c!1020762 c!1020769) s!2326 (ite c!1020765 (ite c!1020773 lt!2292612 (ite c!1020764 lt!2292659 call!445725)) s!2326)))))))

(declare-fun bm!445734 () Bool)

(declare-fun call!445809 () Bool)

(assert (=> bm!445734 (= call!445864 call!445809)))

(declare-fun b!5772242 () Bool)

(declare-fun e!3546010 () Bool)

(assert (=> b!5772242 (= c!1020762 e!3546010)))

(declare-fun res!2436179 () Bool)

(assert (=> b!5772242 (=> (not res!2436179) (not e!3546010))))

(assert (=> b!5772242 (= res!2436179 ((_ is Concat!24632) (regOne!32086 r!7292)))))

(declare-fun e!3546011 () Unit!156734)

(declare-fun e!3545991 () Unit!156734)

(assert (=> b!5772242 (= e!3546011 e!3545991)))

(declare-fun bm!445735 () Bool)

(declare-fun call!445781 () Bool)

(assert (=> bm!445735 (= call!445781 (Exists!2887 (ite c!1020773 lambda!314078 lambda!314088)))))

(declare-fun bm!445736 () Bool)

(declare-fun call!445706 () Bool)

(assert (=> bm!445736 (= call!445706 call!445726)))

(declare-fun bm!445737 () Bool)

(declare-fun call!445719 () Bool)

(assert (=> bm!445737 (= call!445719 (matchZipper!1925 (ite c!1020763 lt!2292478 lt!2292573) s!2326))))

(declare-fun bm!445738 () Bool)

(declare-fun call!445689 () Bool)

(assert (=> bm!445738 (= call!445855 call!445689)))

(declare-fun call!445848 () Bool)

(declare-fun lt!2292504 () (InoxSet Context!10342))

(declare-fun bm!445739 () Bool)

(assert (=> bm!445739 (= call!445848 (matchZipper!1925 (ite c!1020763 ((_ map or) lt!2292493 lt!2292504) (ite c!1020762 lt!2292578 (ite c!1020769 lt!2292529 z!1189))) (ite (or c!1020763 c!1020762) (t!376998 s!2326) s!2326)))))

(declare-fun bm!445740 () Bool)

(declare-fun lt!2292484 () Regex!15787)

(declare-fun call!445798 () Bool)

(assert (=> bm!445740 (= call!445798 (matchRSpec!2890 (ite c!1020763 lt!2292484 (ite c!1020762 lt!2292577 (ite c!1020769 lt!2292503 (ite c!1020765 lt!2292510 (regTwo!32086 r!7292))))) s!2326))))

(declare-fun bm!445741 () Bool)

(declare-fun call!445746 () Unit!156734)

(assert (=> bm!445741 (= call!445746 call!445802)))

(declare-fun bm!445742 () Bool)

(declare-fun call!445768 () Unit!156734)

(declare-fun call!445796 () Unit!156734)

(assert (=> bm!445742 (= call!445768 call!445796)))

(declare-fun bm!445743 () Bool)

(declare-fun lt!2292499 () (InoxSet Context!10342))

(declare-fun lt!2292562 () Context!10342)

(declare-fun lt!2292592 () Context!10342)

(declare-fun call!445819 () Unit!156734)

(declare-fun lemmaFlatMapOnSingletonSet!932 ((InoxSet Context!10342) Context!10342 Int) Unit!156734)

(assert (=> bm!445743 (= call!445819 (lemmaFlatMapOnSingletonSet!932 (ite c!1020763 lt!2292478 (ite c!1020762 lt!2292499 (ite c!1020765 lt!2292603 lt!2292522))) (ite c!1020763 lt!2292592 (ite c!1020762 lt!2292562 (ite c!1020765 lt!2292534 lt!2292623))) (ite c!1020763 lambda!314069 (ite c!1020762 lambda!314069 (ite c!1020765 lambda!314069 lambda!314069)))))))

(declare-fun bm!445744 () Bool)

(declare-fun call!445825 () Option!15796)

(assert (=> bm!445744 (= call!445825 call!445739)))

(declare-fun bm!445745 () Bool)

(declare-fun call!445803 () Bool)

(assert (=> bm!445745 (= call!445803 (Exists!2887 (ite c!1020762 lambda!314071 (ite c!1020769 lambda!314075 (ite c!1020773 lambda!314082 (ite c!1020764 lambda!314088 lambda!314092))))))))

(declare-fun b!5772243 () Bool)

(declare-fun e!3546004 () Bool)

(declare-fun tp!1594432 () Bool)

(assert (=> b!5772243 (= e!3546004 tp!1594432)))

(declare-fun lt!2292509 () Context!10342)

(declare-fun bm!445746 () Bool)

(declare-fun lt!2292622 () Context!10342)

(declare-fun call!445853 () (InoxSet Context!10342))

(declare-fun derivationStepZipperUp!1055 (Context!10342 C!31844) (InoxSet Context!10342))

(assert (=> bm!445746 (= call!445853 (derivationStepZipperUp!1055 (ite c!1020763 lt!2292592 (ite c!1020762 lt!2292509 (ite c!1020769 lt!2292507 lt!2292622))) (h!69984 s!2326)))))

(declare-fun tp!1594430 () Bool)

(declare-fun setElem!38793 () Context!10342)

(declare-fun setNonEmpty!38793 () Bool)

(declare-fun setRes!38793 () Bool)

(declare-fun inv!82714 (Context!10342) Bool)

(assert (=> setNonEmpty!38793 (= setRes!38793 (and tp!1594430 (inv!82714 setElem!38793) e!3545997))))

(declare-fun setRest!38793 () (InoxSet Context!10342))

(assert (=> setNonEmpty!38793 (= z!1189 ((_ map or) (store ((as const (Array Context!10342 Bool)) false) setElem!38793 true) setRest!38793))))

(declare-fun b!5772244 () Bool)

(assert (=> b!5772244 (= e!3546002 e!3546011)))

(assert (=> b!5772244 (= c!1020763 ((_ is Union!15787) (regOne!32086 r!7292)))))

(declare-fun bm!445747 () Bool)

(declare-fun call!445879 () Bool)

(assert (=> bm!445747 (= call!445878 call!445879)))

(declare-fun setIsEmpty!38793 () Bool)

(assert (=> setIsEmpty!38793 setRes!38793))

(declare-fun bm!445748 () Bool)

(declare-fun call!445780 () Bool)

(assert (=> bm!445748 (= call!445826 call!445780)))

(declare-fun call!445886 () Bool)

(declare-fun bm!445749 () Bool)

(assert (=> bm!445749 (= call!445886 (Exists!2887 (ite c!1020762 lambda!314072 (ite c!1020769 lambda!314076 (ite c!1020773 lambda!314080 (ite c!1020764 lambda!314089 lambda!314091))))))))

(declare-fun bm!445750 () Bool)

(declare-fun call!445870 () Bool)

(declare-fun call!445683 () Bool)

(assert (=> bm!445750 (= call!445870 call!445683)))

(declare-fun bm!445751 () Bool)

(assert (=> bm!445751 (= call!445703 call!445749)))

(declare-fun bm!445752 () Bool)

(assert (=> bm!445752 (= call!445792 call!445703)))

(declare-fun bm!445753 () Bool)

(declare-fun lt!2292581 () tuple2!65768)

(declare-fun lt!2292641 () List!63660)

(declare-fun call!445852 () List!63660)

(assert (=> bm!445753 (= call!445852 (++!14002 (ite c!1020773 (_1!36187 lt!2292650) (_1!36187 lt!2292581)) (ite c!1020773 lt!2292663 lt!2292641)))))

(declare-fun bm!445754 () Bool)

(declare-fun call!445799 () Bool)

(assert (=> bm!445754 (= call!445799 call!445792)))

(declare-fun bm!445755 () Bool)

(declare-fun call!445755 () (InoxSet Context!10342))

(assert (=> bm!445755 (= call!445742 call!445755)))

(declare-fun bm!445756 () Bool)

(assert (=> bm!445756 (= call!445873 call!445803)))

(declare-fun b!5772245 () Bool)

(declare-fun e!3546000 () Unit!156734)

(declare-fun e!3545998 () Unit!156734)

(assert (=> b!5772245 (= e!3546000 e!3545998)))

(assert (=> b!5772245 (= c!1020764 call!445776)))

(declare-fun bm!445757 () Bool)

(declare-fun call!445831 () (InoxSet Context!10342))

(declare-fun call!445841 () (InoxSet Context!10342))

(assert (=> bm!445757 (= call!445831 call!445841)))

(declare-fun bm!445758 () Bool)

(declare-fun call!445737 () (InoxSet Context!10342))

(declare-fun call!445705 () (InoxSet Context!10342))

(assert (=> bm!445758 (= call!445737 call!445705)))

(declare-fun bm!445759 () Bool)

(declare-fun lt!2292519 () (InoxSet Context!10342))

(declare-fun c!1020768 () Bool)

(assert (=> bm!445759 (= call!445683 (matchZipper!1925 (ite c!1020763 z!1189 (ite c!1020762 lt!2292519 (ite c!1020769 z!1189 (ite (and c!1020765 c!1020773) (ite c!1020768 lt!2292674 z!1189) lt!2292501)))) (ite c!1020763 s!2326 (ite c!1020762 (t!376998 s!2326) (ite (or c!1020769 (and c!1020765 c!1020773)) s!2326 (t!376998 s!2326))))))))

(declare-fun bm!445760 () Bool)

(declare-fun call!445829 () Unit!156734)

(declare-fun lemmaConcatAssociativity!2896 (List!63660 List!63660 List!63660) Unit!156734)

(assert (=> bm!445760 (= call!445829 (lemmaConcatAssociativity!2896 (ite c!1020773 (_1!36187 lt!2292650) (_1!36187 lt!2292581)) (ite c!1020773 (_2!36187 lt!2292650) (_2!36187 lt!2292581)) (ite c!1020773 (_2!36187 lt!2292588) (_2!36187 lt!2292616))))))

(declare-fun bm!445761 () Bool)

(declare-fun call!445698 () Unit!156734)

(assert (=> bm!445761 (= call!445698 call!445854)))

(declare-fun bm!445762 () Bool)

(assert (=> bm!445762 (= call!445780 call!445724)))

(declare-fun call!445814 () Unit!156734)

(declare-fun bm!445763 () Bool)

(assert (=> bm!445763 (= call!445814 (mainMatchTheorem!2890 (ite c!1020763 lt!2292528 (ite c!1020762 lt!2292577 (ite c!1020773 lt!2292531 (ite c!1020764 lt!2292545 lt!2292531)))) (ite (or c!1020763 c!1020762) s!2326 (ite c!1020773 (_1!36187 lt!2292588) (ite c!1020764 (_1!36187 lt!2292616) Nil!63536)))))))

(declare-fun bm!445764 () Bool)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1974 (Regex!15787 Regex!15787 List!63660) Unit!156734)

(assert (=> bm!445764 (= call!445740 (lemmaFindConcatSeparationEquivalentToExists!1974 (ite c!1020762 (regOne!32086 (regOne!32086 r!7292)) (ite c!1020769 (regTwo!32086 (regOne!32086 r!7292)) (ite c!1020773 lt!2292531 (ite c!1020764 lt!2292545 (reg!16116 (regOne!32086 r!7292)))))) (ite c!1020762 lt!2292577 (ite c!1020769 lt!2292631 (ite (or c!1020773 c!1020764) (regTwo!32086 r!7292) lt!2292531))) (ite (or c!1020762 c!1020769 c!1020773 c!1020764) s!2326 Nil!63536)))))

(declare-fun bm!445765 () Bool)

(declare-fun call!445729 () Bool)

(assert (=> bm!445765 (= call!445729 call!445878)))

(declare-fun bm!445766 () Bool)

(declare-fun call!445778 () Bool)

(declare-fun call!445718 () Bool)

(assert (=> bm!445766 (= call!445778 call!445718)))

(declare-fun bm!445767 () Bool)

(declare-fun call!445867 () Bool)

(declare-fun call!445720 () Bool)

(assert (=> bm!445767 (= call!445867 call!445720)))

(declare-fun call!445883 () (InoxSet Context!10342))

(declare-fun bm!445768 () Bool)

(assert (=> bm!445768 (= call!445883 (flatMap!1400 (ite c!1020762 lt!2292499 lt!2292603) (ite c!1020762 lambda!314069 lambda!314069)))))

(declare-fun bm!445769 () Bool)

(assert (=> bm!445769 (= call!445701 (Exists!2887 (ite c!1020769 lambda!314074 (ite c!1020773 lambda!314079 (ite c!1020764 lambda!314087 lambda!314091)))))))

(declare-fun bm!445770 () Bool)

(declare-fun call!445808 () Bool)

(assert (=> bm!445770 (= call!445808 call!445682)))

(declare-fun bm!445771 () Bool)

(declare-fun call!445788 () Regex!15787)

(assert (=> bm!445771 (= call!445793 call!445788)))

(declare-fun bm!445772 () Bool)

(assert (=> bm!445772 (= call!445785 call!445745)))

(declare-fun bm!445773 () Bool)

(declare-fun call!445797 () Unit!156734)

(assert (=> bm!445773 (= call!445797 call!445810)))

(declare-fun b!5772246 () Bool)

(declare-fun e!3545980 () Bool)

(declare-fun tp_is_empty!40827 () Bool)

(declare-fun tp!1594433 () Bool)

(assert (=> b!5772246 (= e!3545980 (and tp_is_empty!40827 tp!1594433))))

(declare-fun bm!445774 () Bool)

(assert (=> bm!445774 (= call!445764 call!445857)))

(declare-fun bm!445775 () Bool)

(declare-fun call!445688 () Option!15796)

(assert (=> bm!445775 (= call!445688 (findConcatSeparation!2210 (ite c!1020762 (regOne!32086 (regOne!32086 r!7292)) (ite c!1020769 (regTwo!32086 (regOne!32086 r!7292)) (ite c!1020773 (reg!16116 (regOne!32086 r!7292)) lt!2292545))) (ite c!1020762 lt!2292577 (ite c!1020769 lt!2292631 (ite c!1020773 lt!2292531 (regTwo!32086 r!7292)))) Nil!63536 (ite (or c!1020762 c!1020769) s!2326 (ite c!1020773 (_1!36187 lt!2292588) s!2326)) (ite (or c!1020762 c!1020769) s!2326 (ite c!1020773 (_1!36187 lt!2292588) s!2326))))))

(declare-fun bm!445776 () Bool)

(declare-fun call!445822 () Bool)

(declare-fun nullable!5819 (Regex!15787) Bool)

(assert (=> bm!445776 (= call!445822 (nullable!5819 (ite c!1020763 (regOne!32087 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292)))))))

(declare-fun e!3545979 () Bool)

(assert (=> b!5772247 (= e!3545979 true)))

(declare-fun lt!2292518 () (InoxSet Context!10342))

(assert (=> b!5772247 (= (flatMap!1400 lt!2292518 lambda!314069) (derivationStepZipperUp!1055 lt!2292623 (h!69984 s!2326)))))

(declare-fun lt!2292532 () Unit!156734)

(assert (=> b!5772247 (= lt!2292532 (lemmaFlatMapOnSingletonSet!932 lt!2292518 lt!2292623 lambda!314069))))

(assert (=> b!5772247 (= lt!2292518 (store ((as const (Array Context!10342 Bool)) false) lt!2292623 true))))

(declare-fun lt!2292526 () Unit!156734)

(assert (=> b!5772247 (= lt!2292526 e!3546002)))

(assert (=> b!5772247 (= c!1020766 (and ((_ is ElementMatch!15787) (regOne!32086 r!7292)) (= (c!1020774 (regOne!32086 r!7292)) (h!69984 s!2326))))))

(declare-fun lt!2292495 () Unit!156734)

(assert (=> b!5772247 (= lt!2292495 e!3545992)))

(declare-fun c!1020771 () Bool)

(assert (=> b!5772247 (= c!1020771 (nullable!5819 (h!69985 (exprs!5671 (h!69986 zl!343)))))))

(assert (=> b!5772247 (= (flatMap!1400 z!1189 lambda!314069) (derivationStepZipperUp!1055 (h!69986 zl!343) (h!69984 s!2326)))))

(declare-fun lt!2292638 () Unit!156734)

(assert (=> b!5772247 (= lt!2292638 (lemmaFlatMapOnSingletonSet!932 z!1189 (h!69986 zl!343) lambda!314069))))

(assert (=> b!5772247 (= lt!2292580 (derivationStepZipperUp!1055 lt!2292623 (h!69984 s!2326)))))

(assert (=> b!5772247 (= lt!2292501 (derivationStepZipperDown!1129 (h!69985 (exprs!5671 (h!69986 zl!343))) lt!2292623 (h!69984 s!2326)))))

(assert (=> b!5772247 (= lt!2292623 (Context!10343 (t!376999 (exprs!5671 (h!69986 zl!343)))))))

(declare-fun lt!2292538 () (InoxSet Context!10342))

(assert (=> b!5772247 (= lt!2292538 (derivationStepZipperUp!1055 (Context!10343 (Cons!63537 (h!69985 (exprs!5671 (h!69986 zl!343))) (t!376999 (exprs!5671 (h!69986 zl!343))))) (h!69984 s!2326)))))

(declare-fun bm!445777 () Bool)

(declare-fun call!445795 () Unit!156734)

(assert (=> bm!445777 (= call!445817 call!445795)))

(declare-fun call!445765 () Unit!156734)

(declare-fun bm!445778 () Bool)

(assert (=> bm!445778 (= call!445765 (mainMatchTheorem!2890 (ite c!1020763 lt!2292494 (ite c!1020762 lt!2292563 (ite c!1020769 lt!2292476 (ite c!1020765 lt!2292510 (regTwo!32086 r!7292))))) s!2326))))

(declare-fun bm!445779 () Bool)

(assert (=> bm!445779 (= call!445809 (matchR!7972 (ite c!1020763 lt!2292494 (ite c!1020762 lt!2292577 (ite c!1020769 lt!2292503 (ite c!1020765 lt!2292553 (regTwo!32086 r!7292))))) s!2326))))

(declare-fun bm!445780 () Bool)

(declare-fun call!445709 () Unit!156734)

(assert (=> bm!445780 (= call!445709 (lemmaZipperConcatMatchesSameAsBothZippers!812 (ite c!1020763 lt!2292504 lt!2292634) (ite c!1020763 lt!2292580 lt!2292519) (t!376998 s!2326)))))

(declare-fun b!5772248 () Bool)

(declare-fun e!3546001 () Bool)

(assert (=> b!5772248 (= e!3546001 (not e!3545977))))

(declare-fun res!2436186 () Bool)

(assert (=> b!5772248 (=> res!2436186 e!3545977)))

(assert (=> b!5772248 (= res!2436186 (not ((_ is Cons!63538) zl!343)))))

(declare-fun lt!2292524 () Bool)

(assert (=> b!5772248 (= lt!2292482 lt!2292524)))

(assert (=> b!5772248 (= lt!2292524 (matchRSpec!2890 r!7292 s!2326))))

(assert (=> b!5772248 (= lt!2292482 (matchR!7972 r!7292 s!2326))))

(declare-fun lt!2292516 () Unit!156734)

(assert (=> b!5772248 (= lt!2292516 (mainMatchTheorem!2890 r!7292 s!2326))))

(declare-fun bm!445781 () Bool)

(declare-fun call!445766 () Bool)

(assert (=> bm!445781 (= call!445847 call!445766)))

(declare-fun b!5772249 () Bool)

(declare-fun e!3546007 () Unit!156734)

(declare-fun Unit!156740 () Unit!156734)

(assert (=> b!5772249 (= e!3546007 Unit!156740)))

(declare-fun lt!2292539 () Unit!156734)

(assert (=> b!5772249 (= lt!2292539 call!445709)))

(declare-fun res!2436183 () Bool)

(declare-fun call!445846 () Bool)

(assert (=> b!5772249 (= res!2436183 call!445846)))

(declare-fun e!3545996 () Bool)

(assert (=> b!5772249 (=> res!2436183 e!3545996)))

(assert (=> b!5772249 (= call!445699 e!3545996)))

(declare-fun b!5772250 () Bool)

(declare-fun e!3545975 () Bool)

(assert (=> b!5772250 (= e!3545975 call!445870)))

(declare-fun b!5772251 () Bool)

(declare-fun e!3546006 () Unit!156734)

(declare-fun e!3546005 () Unit!156734)

(assert (=> b!5772251 (= e!3546006 e!3546005)))

(assert (=> b!5772251 (= c!1020761 ((_ is EmptyExpr!15787) (regOne!32086 r!7292)))))

(declare-fun bm!445782 () Bool)

(declare-fun call!445844 () Bool)

(assert (=> bm!445782 (= call!445844 call!445743)))

(declare-fun b!5772252 () Bool)

(assert (=> b!5772252 (= e!3545996 call!445769)))

(declare-fun bm!445783 () Bool)

(declare-fun call!445856 () Unit!156734)

(declare-fun call!445805 () Unit!156734)

(assert (=> bm!445783 (= call!445856 call!445805)))

(declare-fun b!5772253 () Bool)

(declare-fun e!3545995 () Bool)

(assert (=> b!5772253 (= e!3545995 false)))

(declare-fun bm!445784 () Bool)

(declare-fun call!445691 () Bool)

(assert (=> bm!445784 (= call!445791 call!445691)))

(declare-fun bm!445785 () Bool)

(declare-fun call!445760 () Bool)

(assert (=> bm!445785 (= call!445760 call!445869)))

(declare-fun bm!445786 () Bool)

(declare-fun call!445839 () Bool)

(assert (=> bm!445786 (= call!445839 call!445744)))

(declare-fun b!5772254 () Bool)

(declare-fun lt!2292606 () Bool)

(assert (=> b!5772254 (not lt!2292606)))

(declare-fun lt!2292547 () Unit!156734)

(assert (=> b!5772254 (= lt!2292547 e!3546000)))

(declare-fun c!1020770 () Bool)

(assert (=> b!5772254 (= c!1020770 lt!2292606)))

(declare-fun call!445736 () Bool)

(assert (=> b!5772254 (= lt!2292606 call!445736)))

(declare-fun e!3545985 () Unit!156734)

(declare-fun Unit!156741 () Unit!156734)

(assert (=> b!5772254 (= e!3545985 Unit!156741)))

(declare-fun bm!445787 () Bool)

(declare-fun call!445866 () Bool)

(assert (=> bm!445787 (= call!445866 call!445778)))

(declare-fun b!5772255 () Bool)

(declare-fun res!2436196 () Bool)

(assert (=> b!5772255 (=> res!2436196 e!3545977)))

(declare-fun generalisedConcat!1402 (List!63661) Regex!15787)

(assert (=> b!5772255 (= res!2436196 (not (= r!7292 (generalisedConcat!1402 (exprs!5671 (h!69986 zl!343))))))))

(declare-fun bm!445788 () Bool)

(declare-fun call!445767 () Unit!156734)

(declare-fun lemmaEmptyZipperMatchesNothing!72 ((InoxSet Context!10342) List!63660) Unit!156734)

(assert (=> bm!445788 (= call!445767 (lemmaEmptyZipperMatchesNothing!72 lt!2292501 (t!376998 s!2326)))))

(declare-fun bm!445789 () Bool)

(declare-fun call!445871 () Unit!156734)

(assert (=> bm!445789 (= call!445871 call!445842)))

(declare-fun bm!445790 () Bool)

(declare-fun call!445752 () (InoxSet Context!10342))

(assert (=> bm!445790 (= call!445752 call!445853)))

(declare-fun b!5772256 () Bool)

(assert (=> b!5772256 e!3545990))

(declare-fun res!2436180 () Bool)

(assert (=> b!5772256 (=> (not res!2436180) (not e!3545990))))

(assert (=> b!5772256 (= res!2436180 (= call!445799 call!445867))))

(declare-fun lt!2292520 () Unit!156734)

(declare-fun call!445751 () Unit!156734)

(assert (=> b!5772256 (= lt!2292520 call!445751)))

(assert (=> b!5772256 (= lt!2292594 call!445881)))

(declare-fun call!445787 () Bool)

(assert (=> b!5772256 (= call!445787 call!445818)))

(declare-fun lt!2292639 () Unit!156734)

(assert (=> b!5772256 (= lt!2292639 call!445698)))

(declare-fun call!445694 () (InoxSet Context!10342))

(assert (=> b!5772256 (= call!445694 call!445841)))

(declare-fun lt!2292671 () Unit!156734)

(assert (=> b!5772256 (= lt!2292671 call!445762)))

(assert (=> b!5772256 (= lt!2292522 (store ((as const (Array Context!10342 Bool)) false) lt!2292623 true))))

(declare-fun call!445876 () Bool)

(assert (=> b!5772256 (= call!445876 call!445779)))

(declare-fun lt!2292572 () Unit!156734)

(declare-fun call!445734 () Unit!156734)

(assert (=> b!5772256 (= lt!2292572 call!445734)))

(assert (=> b!5772256 (= call!445838 call!445872)))

(declare-fun lt!2292635 () Unit!156734)

(declare-fun call!445828 () Unit!156734)

(assert (=> b!5772256 (= lt!2292635 call!445828)))

(declare-fun call!445721 () Bool)

(assert (=> b!5772256 (not call!445721)))

(declare-fun lt!2292566 () Unit!156734)

(assert (=> b!5772256 (= lt!2292566 call!445767)))

(declare-fun Unit!156742 () Unit!156734)

(assert (=> b!5772256 (= e!3546005 Unit!156742)))

(declare-fun bm!445791 () Bool)

(declare-fun call!445716 () Unit!156734)

(declare-fun lemmaStarApp!104 (Regex!15787 List!63660 List!63660) Unit!156734)

(assert (=> bm!445791 (= call!445716 (lemmaStarApp!104 (reg!16116 (regOne!32086 r!7292)) (ite c!1020773 (_1!36187 lt!2292650) (_1!36187 lt!2292581)) (ite c!1020773 (_2!36187 lt!2292650) (_2!36187 lt!2292581))))))

(declare-fun lt!2292574 () Context!10342)

(declare-fun bm!445792 () Bool)

(assert (=> bm!445792 (= call!445705 (derivationStepZipperUp!1055 (ite c!1020763 lt!2292574 (ite c!1020762 lt!2292562 lt!2292534)) (h!69984 s!2326)))))

(declare-fun bm!445793 () Bool)

(assert (=> bm!445793 (= call!445881 call!445840)))

(declare-fun bm!445794 () Bool)

(declare-fun call!445813 () Bool)

(assert (=> bm!445794 (= call!445813 call!445700)))

(declare-fun bm!445795 () Bool)

(assert (=> bm!445795 (= call!445865 call!445688)))

(declare-fun b!5772257 () Bool)

(declare-fun e!3545987 () Bool)

(declare-fun lt!2292548 () Bool)

(assert (=> b!5772257 (= e!3545987 lt!2292548)))

(declare-fun b!5772258 () Bool)

(assert (=> b!5772258 (= e!3545978 (matchZipper!1925 lt!2292580 (t!376998 s!2326)))))

(declare-fun bm!445796 () Bool)

(assert (=> bm!445796 (= call!445751 call!445871)))

(declare-fun call!445713 () Unit!156734)

(declare-fun bm!445797 () Bool)

(declare-fun lt!2292513 () Regex!15787)

(declare-fun theoremZipperRegexEquiv!681 ((InoxSet Context!10342) List!63662 Regex!15787 List!63660) Unit!156734)

(assert (=> bm!445797 (= call!445713 (theoremZipperRegexEquiv!681 (ite c!1020763 lt!2292675 (ite c!1020762 lt!2292573 (ite c!1020769 lt!2292529 (ite c!1020773 (ite c!1020768 lt!2292674 lt!2292603) lt!2292609)))) (ite c!1020763 (Cons!63538 lt!2292574 Nil!63538) (ite c!1020762 (Cons!63538 lt!2292509 Nil!63538) (ite c!1020769 (Cons!63538 lt!2292507 Nil!63538) (ite c!1020773 (ite c!1020768 (Cons!63538 lt!2292623 Nil!63538) (Cons!63538 lt!2292534 Nil!63538)) (Cons!63538 lt!2292622 Nil!63538))))) (ite c!1020763 lt!2292528 (ite c!1020762 lt!2292577 (ite c!1020769 lt!2292476 (ite c!1020773 (ite c!1020768 lt!2292513 lt!2292565) (reg!16116 (regOne!32086 r!7292)))))) (ite (or c!1020763 c!1020762 c!1020769) s!2326 (ite c!1020773 (ite c!1020768 s!2326 lt!2292663) (_1!36187 lt!2292568)))))))

(declare-fun bm!445798 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!568 (Regex!15787 List!63660) Unit!156734)

(assert (=> bm!445798 (= call!445692 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!568 (reg!16116 (regOne!32086 r!7292)) (ite c!1020773 (_1!36187 lt!2292588) (ite c!1020764 (_1!36187 lt!2292616) Nil!63536))))))

(declare-fun b!5772259 () Bool)

(declare-fun tp!1594426 () Bool)

(assert (=> b!5772259 (= e!3546009 tp!1594426)))

(declare-fun lt!2292511 () Context!10342)

(declare-fun bm!445799 () Bool)

(declare-fun call!445732 () Unit!156734)

(declare-fun lt!2292627 () (InoxSet Context!10342))

(assert (=> bm!445799 (= call!445732 (lemmaFlatMapOnSingletonSet!932 (ite c!1020763 lt!2292675 lt!2292627) (ite c!1020763 lt!2292574 lt!2292511) (ite c!1020763 lambda!314069 lambda!314069)))))

(declare-fun bm!445800 () Bool)

(declare-fun call!445690 () Regex!15787)

(assert (=> bm!445800 (= call!445880 call!445690)))

(declare-fun bm!445801 () Bool)

(assert (=> bm!445801 (= call!445691 call!445848)))

(declare-fun b!5772260 () Bool)

(declare-fun e!3545989 () Bool)

(assert (=> b!5772260 (= e!3545989 lt!2292548)))

(declare-fun bm!445802 () Bool)

(assert (=> bm!445802 (= call!445723 call!445748)))

(declare-fun bm!445803 () Bool)

(assert (=> bm!445803 (= call!445747 call!445863)))

(declare-fun call!445759 () Bool)

(declare-fun bm!445804 () Bool)

(assert (=> bm!445804 (= call!445759 (matchZipper!1925 (ite c!1020763 lt!2292493 lt!2292499) (ite c!1020763 (t!376998 s!2326) s!2326)))))

(declare-fun bm!445805 () Bool)

(declare-fun call!445835 () List!63660)

(assert (=> bm!445805 (= call!445835 (++!14002 (ite c!1020773 (_1!36187 lt!2292650) (_2!36187 lt!2292581)) (ite c!1020773 (_2!36187 lt!2292650) (_2!36187 lt!2292616))))))

(declare-fun bm!445806 () Bool)

(assert (=> bm!445806 (= call!445862 call!445791)))

(declare-fun bm!445807 () Bool)

(assert (=> bm!445807 (= call!445766 call!445798)))

(declare-fun bm!445808 () Bool)

(declare-fun call!445693 () Bool)

(assert (=> bm!445808 (= call!445693 call!445844)))

(declare-fun bm!445809 () Bool)

(declare-fun call!445804 () Unit!156734)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!152 (Context!10342 Context!10342 List!63660 List!63660) Unit!156734)

(assert (=> bm!445809 (= call!445804 (lemmaConcatenateContextMatchesConcatOfStrings!152 lt!2292622 lt!2292534 (ite c!1020773 (_1!36187 lt!2292650) (_1!36187 lt!2292568)) (ite c!1020773 lt!2292663 (_2!36187 lt!2292568))))))

(declare-fun b!5772261 () Bool)

(declare-fun e!3545981 () Bool)

(assert (=> b!5772261 (= e!3545981 (= lt!2292482 call!445683))))

(declare-fun bm!445810 () Bool)

(declare-fun call!445727 () Bool)

(assert (=> bm!445810 (= call!445727 call!445783)))

(declare-fun bm!445811 () Bool)

(declare-fun call!445834 () Bool)

(assert (=> bm!445811 (= call!445834 call!445832)))

(declare-fun lt!2292653 () List!63661)

(declare-fun bm!445812 () Bool)

(assert (=> bm!445812 (= call!445735 (generalisedConcat!1402 (ite c!1020766 (t!376999 (exprs!5671 (h!69986 zl!343))) (ite c!1020762 lt!2292653 lt!2292585))))))

(declare-fun b!5772262 () Bool)

(declare-fun e!3545974 () Unit!156734)

(declare-fun Unit!156743 () Unit!156734)

(assert (=> b!5772262 (= e!3545974 Unit!156743)))

(declare-fun lt!2292591 () Unit!156734)

(assert (=> b!5772262 (= lt!2292591 call!445854)))

(declare-fun res!2436198 () Bool)

(declare-fun lt!2292610 () Bool)

(assert (=> b!5772262 (= res!2436198 lt!2292610)))

(assert (=> b!5772262 (=> res!2436198 e!3545986)))

(assert (=> b!5772262 (= (matchZipper!1925 ((_ map or) lt!2292493 lt!2292580) (t!376998 s!2326)) e!3545986)))

(declare-fun bm!445813 () Bool)

(assert (=> bm!445813 (= call!445755 call!445722)))

(declare-fun b!5772263 () Bool)

(declare-fun res!2436178 () Bool)

(assert (=> b!5772263 (=> (not res!2436178) (not e!3546001))))

(declare-fun toList!9571 ((InoxSet Context!10342)) List!63662)

(assert (=> b!5772263 (= res!2436178 (= (toList!9571 z!1189) zl!343))))

(declare-fun b!5772264 () Bool)

(declare-fun res!2436184 () Bool)

(assert (=> b!5772264 (=> res!2436184 e!3545979)))

(declare-fun isEmpty!35434 (List!63661) Bool)

(assert (=> b!5772264 (= res!2436184 (isEmpty!35434 (t!376999 (exprs!5671 (h!69986 zl!343)))))))

(declare-fun bm!445814 () Bool)

(assert (=> bm!445814 (= call!445715 call!445850)))

(declare-fun b!5772265 () Bool)

(declare-fun tp!1594428 () Bool)

(declare-fun tp!1594431 () Bool)

(assert (=> b!5772265 (= e!3546009 (and tp!1594428 tp!1594431))))

(declare-fun b!5772266 () Bool)

(declare-fun Unit!156744 () Unit!156734)

(assert (=> b!5772266 (= e!3545974 Unit!156744)))

(declare-fun bm!445815 () Bool)

(assert (=> bm!445815 (= call!445708 (flatMap!1400 (ite c!1020769 lt!2292529 lt!2292627) (ite c!1020769 lambda!314069 lambda!314069)))))

(declare-fun bm!445816 () Bool)

(declare-fun lt!2292676 () List!63661)

(assert (=> bm!445816 (= call!445788 (generalisedConcat!1402 (ite c!1020763 lt!2292676 (t!376999 (exprs!5671 (h!69986 zl!343))))))))

(declare-fun bm!445817 () Bool)

(declare-fun lt!2292541 () List!63661)

(declare-fun lt!2292604 () List!63661)

(assert (=> bm!445817 (= call!445690 (generalisedConcat!1402 (ite c!1020763 lt!2292604 (ite c!1020762 lt!2292541 lt!2292576))))))

(declare-fun call!445770 () Bool)

(declare-fun bm!445818 () Bool)

(assert (=> bm!445818 (= call!445770 (Exists!2887 (ite c!1020762 lambda!314072 (ite c!1020769 lambda!314076 (ite c!1020773 lambda!314078 (ite c!1020764 lambda!314090 lambda!314091))))))))

(declare-fun bm!445819 () Bool)

(assert (=> bm!445819 (= call!445820 call!445770)))

(declare-fun b!5772267 () Bool)

(declare-fun e!3545994 () Bool)

(assert (=> b!5772267 (= e!3545994 (or (not lt!2292482) lt!2292524))))

(declare-fun bm!445820 () Bool)

(assert (=> bm!445820 (= call!445707 call!445765)))

(declare-fun bm!445821 () Bool)

(declare-fun call!445801 () Unit!156734)

(assert (=> bm!445821 (= call!445801 call!445713)))

(declare-fun bm!445822 () Bool)

(declare-fun call!445738 () Bool)

(assert (=> bm!445822 (= call!445738 call!445873)))

(declare-fun bm!445823 () Bool)

(declare-fun call!445684 () Bool)

(assert (=> bm!445823 (= call!445684 call!445811)))

(declare-fun call!445877 () List!63660)

(declare-fun bm!445824 () Bool)

(assert (=> bm!445824 (= call!445877 (++!14002 (ite c!1020773 lt!2292498 (_1!36187 lt!2292581)) (ite c!1020773 (_2!36187 lt!2292588) (_2!36187 lt!2292581))))))

(declare-fun e!3545973 () Bool)

(assert (=> b!5772268 e!3545973))

(declare-fun res!2436182 () Bool)

(assert (=> b!5772268 (=> (not res!2436182) (not e!3545973))))

(declare-fun call!445833 () Bool)

(assert (=> b!5772268 (= res!2436182 call!445833)))

(declare-fun lt!2292587 () Unit!156734)

(assert (=> b!5772268 (= lt!2292587 call!445860)))

(assert (=> b!5772268 (= call!445839 call!445866)))

(declare-fun lt!2292586 () Unit!156734)

(assert (=> b!5772268 (= lt!2292586 call!445885)))

(declare-fun call!445773 () Bool)

(assert (=> b!5772268 (= call!445808 call!445773)))

(declare-fun lt!2292621 () Unit!156734)

(declare-fun call!445884 () Unit!156734)

(assert (=> b!5772268 (= lt!2292621 call!445884)))

(assert (=> b!5772268 (= call!445693 call!445706)))

(declare-fun lt!2292500 () Unit!156734)

(declare-fun call!445858 () Unit!156734)

(assert (=> b!5772268 (= lt!2292500 call!445858)))

(assert (=> b!5772268 (= call!445851 call!445696)))

(declare-fun lt!2292651 () Unit!156734)

(assert (=> b!5772268 (= lt!2292651 call!445768)))

(assert (=> b!5772268 (= call!445684 call!445861)))

(declare-fun lt!2292670 () Unit!156734)

(assert (=> b!5772268 (= lt!2292670 call!445856)))

(assert (=> b!5772268 (= lt!2292613 call!445728)))

(declare-fun call!445823 () (InoxSet Context!10342))

(assert (=> b!5772268 (= call!445823 call!445831)))

(declare-fun lt!2292491 () Unit!156734)

(declare-fun call!445753 () Unit!156734)

(assert (=> b!5772268 (= lt!2292491 call!445753)))

(assert (=> b!5772268 (= lt!2292502 (store ((as const (Array Context!10342 Bool)) false) lt!2292623 true))))

(declare-fun Unit!156745 () Unit!156734)

(assert (=> b!5772268 (= e!3545998 Unit!156745)))

(declare-fun b!5772269 () Bool)

(assert (=> b!5772269 e!3545981))

(declare-fun res!2436181 () Bool)

(assert (=> b!5772269 (=> (not res!2436181) (not e!3545981))))

(declare-fun lt!2292640 () Bool)

(assert (=> b!5772269 (= res!2436181 (= lt!2292640 call!445798))))

(declare-fun lt!2292664 () Unit!156734)

(assert (=> b!5772269 (= lt!2292664 (mainMatchTheorem!2890 lt!2292484 s!2326))))

(declare-fun lt!2292557 () Bool)

(assert (=> b!5772269 (= lt!2292557 (matchRSpec!2890 lt!2292666 s!2326))))

(declare-fun lt!2292628 () Unit!156734)

(assert (=> b!5772269 (= lt!2292628 call!445863)))

(assert (=> b!5772269 (= lt!2292640 lt!2292557)))

(assert (=> b!5772269 (= lt!2292557 call!445869)))

(declare-fun call!445702 () Bool)

(assert (=> b!5772269 (= lt!2292640 call!445702)))

(assert (=> b!5772269 (= lt!2292666 (Union!15787 (Concat!24632 (regOne!32087 (regOne!32086 r!7292)) (regTwo!32086 r!7292)) (Concat!24632 (regTwo!32087 (regOne!32086 r!7292)) (regTwo!32086 r!7292))))))

(assert (=> b!5772269 (= lt!2292484 (Concat!24632 (regOne!32086 r!7292) (regTwo!32086 r!7292)))))

(declare-fun lt!2292655 () Unit!156734)

(declare-fun lemmaConcatDistributesInUnion!46 (Regex!15787 Regex!15787 Regex!15787 List!63660) Unit!156734)

(assert (=> b!5772269 (= lt!2292655 (lemmaConcatDistributesInUnion!46 (regOne!32087 (regOne!32086 r!7292)) (regTwo!32087 (regOne!32086 r!7292)) (regTwo!32086 r!7292) s!2326))))

(declare-fun lt!2292490 () Bool)

(assert (=> b!5772269 (= lt!2292490 call!445774)))

(declare-fun lt!2292646 () Unit!156734)

(assert (=> b!5772269 (= lt!2292646 call!445765)))

(declare-fun lt!2292632 () Bool)

(assert (=> b!5772269 (= lt!2292632 call!445724)))

(declare-fun lt!2292617 () Unit!156734)

(assert (=> b!5772269 (= lt!2292617 call!445814)))

(assert (=> b!5772269 (= lt!2292490 call!445719)))

(assert (=> b!5772269 (= lt!2292490 call!445809)))

(declare-fun lt!2292582 () Unit!156734)

(assert (=> b!5772269 (= lt!2292582 call!445842)))

(assert (=> b!5772269 (= lt!2292494 call!445690)))

(assert (=> b!5772269 (= lt!2292632 call!445727)))

(assert (=> b!5772269 (= lt!2292632 call!445834)))

(declare-fun lt!2292618 () Unit!156734)

(assert (=> b!5772269 (= lt!2292618 call!445713)))

(assert (=> b!5772269 (= lt!2292528 call!445788)))

(declare-fun lt!2292654 () Unit!156734)

(assert (=> b!5772269 (= lt!2292654 e!3546007)))

(declare-fun c!1020772 () Bool)

(assert (=> b!5772269 (= c!1020772 (nullable!5819 (regTwo!32087 (regOne!32086 r!7292))))))

(assert (=> b!5772269 (= call!445687 call!445853)))

(declare-fun lt!2292678 () Unit!156734)

(assert (=> b!5772269 (= lt!2292678 call!445819)))

(declare-fun lt!2292583 () (InoxSet Context!10342))

(assert (=> b!5772269 (= lt!2292583 call!445853)))

(declare-fun lt!2292599 () Unit!156734)

(assert (=> b!5772269 (= lt!2292599 e!3545974)))

(declare-fun c!1020767 () Bool)

(assert (=> b!5772269 (= c!1020767 call!445822)))

(assert (=> b!5772269 (= call!445782 call!445705)))

(declare-fun lt!2292615 () Unit!156734)

(assert (=> b!5772269 (= lt!2292615 call!445732)))

(declare-fun lt!2292624 () (InoxSet Context!10342))

(assert (=> b!5772269 (= lt!2292624 call!445705)))

(assert (=> b!5772269 (= lt!2292478 (store ((as const (Array Context!10342 Bool)) false) lt!2292592 true))))

(assert (=> b!5772269 (= lt!2292592 (Context!10343 lt!2292604))))

(assert (=> b!5772269 (= lt!2292604 (Cons!63537 (regTwo!32087 (regOne!32086 r!7292)) (t!376999 (exprs!5671 (h!69986 zl!343)))))))

(assert (=> b!5772269 (= lt!2292675 (store ((as const (Array Context!10342 Bool)) false) lt!2292574 true))))

(assert (=> b!5772269 (= lt!2292574 (Context!10343 lt!2292676))))

(assert (=> b!5772269 (= lt!2292676 (Cons!63537 (regOne!32087 (regOne!32086 r!7292)) (t!376999 (exprs!5671 (h!69986 zl!343)))))))

(declare-fun e!3545983 () Bool)

(assert (=> b!5772269 (= call!445848 e!3545983)))

(declare-fun res!2436192 () Bool)

(assert (=> b!5772269 (=> res!2436192 e!3545983)))

(assert (=> b!5772269 (= res!2436192 lt!2292610)))

(assert (=> b!5772269 (= lt!2292610 call!445759)))

(declare-fun lt!2292554 () Unit!156734)

(assert (=> b!5772269 (= lt!2292554 (lemmaZipperConcatMatchesSameAsBothZippers!812 lt!2292493 lt!2292504 (t!376998 s!2326)))))

(assert (=> b!5772269 (= lt!2292504 call!445722)))

(declare-fun call!445821 () (InoxSet Context!10342))

(assert (=> b!5772269 (= lt!2292493 call!445821)))

(declare-fun Unit!156746 () Unit!156734)

(assert (=> b!5772269 (= e!3546011 Unit!156746)))

(declare-fun bm!445825 () Bool)

(assert (=> bm!445825 (= call!445802 call!445801)))

(declare-fun b!5772270 () Bool)

(assert (=> b!5772270 (= e!3546009 tp_is_empty!40827)))

(declare-fun bm!445826 () Bool)

(assert (=> bm!445826 (= call!445786 call!445849)))

(declare-fun bm!445827 () Bool)

(assert (=> bm!445827 (= call!445816 call!445735)))

(declare-fun bm!445828 () Bool)

(assert (=> bm!445828 (= call!445790 call!445827)))

(declare-fun bm!445829 () Bool)

(assert (=> bm!445829 (= call!445717 call!445834)))

(declare-fun bm!445830 () Bool)

(assert (=> bm!445830 (= call!445750 call!445769)))

(declare-fun bm!445831 () Bool)

(declare-fun call!445807 () Bool)

(assert (=> bm!445831 (= call!445807 call!445727)))

(declare-fun bm!445832 () Bool)

(assert (=> bm!445832 (= call!445694 call!445782)))

(declare-fun bm!445833 () Bool)

(assert (=> bm!445833 (= call!445777 call!445847)))

(declare-fun bm!445834 () Bool)

(assert (=> bm!445834 (= call!445846 (matchZipper!1925 (ite c!1020763 lt!2292504 (ite c!1020762 ((_ map or) lt!2292634 lt!2292578) (ite c!1020765 (ite c!1020773 z!1189 lt!2292609) lt!2292522))) (ite (or c!1020763 c!1020762) (t!376998 s!2326) (ite c!1020765 (ite c!1020773 s!2326 (_1!36187 lt!2292568)) s!2326))))))

(declare-fun bm!445835 () Bool)

(declare-fun call!445714 () Unit!156734)

(assert (=> bm!445835 (= call!445775 call!445714)))

(declare-fun b!5772271 () Bool)

(declare-fun e!3545976 () Unit!156734)

(declare-fun Unit!156747 () Unit!156734)

(assert (=> b!5772271 (= e!3545976 Unit!156747)))

(assert (=> b!5772271 (= lt!2292674 (store ((as const (Array Context!10342 Bool)) false) lt!2292623 true))))

(declare-fun lt!2292673 () Unit!156734)

(assert (=> b!5772271 (= lt!2292673 call!445753)))

(assert (=> b!5772271 (= call!445823 call!445831)))

(assert (=> b!5772271 (= lt!2292513 call!445728)))

(declare-fun lt!2292479 () Unit!156734)

(declare-fun call!445815 () Unit!156734)

(assert (=> b!5772271 (= lt!2292479 call!445815)))

(declare-fun res!2436187 () Bool)

(assert (=> b!5772271 (= res!2436187 (= call!445813 call!445875))))

(declare-fun e!3545988 () Bool)

(assert (=> b!5772271 (=> (not res!2436187) (not e!3545988))))

(assert (=> b!5772271 e!3545988))

(declare-fun bm!445836 () Bool)

(declare-fun lt!2292485 () List!63661)

(declare-fun lt!2292564 () List!63661)

(declare-fun ++!14003 (List!63661 List!63661) List!63661)

(assert (=> bm!445836 (= call!445763 (++!14003 lt!2292485 lt!2292564))))

(declare-fun bm!445837 () Bool)

(assert (=> bm!445837 (= call!445841 (derivationStepZipperUp!1055 lt!2292623 (h!69984 s!2326)))))

(declare-fun bm!445838 () Bool)

(assert (=> bm!445838 (= call!445783 (matchZipper!1925 (ite c!1020766 lt!2292630 (ite c!1020763 lt!2292675 (ite c!1020762 lt!2292634 (ite c!1020765 (ite c!1020773 (ite c!1020768 z!1189 lt!2292603) z!1189) ((_ map or) lt!2292501 lt!2292580))))) (ite c!1020766 (t!376998 s!2326) (ite c!1020763 s!2326 (ite c!1020762 (t!376998 s!2326) (ite c!1020765 (ite c!1020773 (ite c!1020768 s!2326 lt!2292663) s!2326) (t!376998 s!2326)))))))))

(declare-fun b!5772272 () Bool)

(assert (=> b!5772272 (= e!3546010 call!445822)))

(declare-fun bm!445839 () Bool)

(assert (=> bm!445839 (= call!445736 call!445787)))

(declare-fun bm!445840 () Bool)

(assert (=> bm!445840 (= call!445753 (lemmaFlatMapOnSingletonSet!932 (ite c!1020773 lt!2292674 lt!2292502) lt!2292623 (ite c!1020773 lambda!314069 lambda!314069)))))

(declare-fun bm!445841 () Bool)

(assert (=> bm!445841 (= call!445689 call!445702)))

(declare-fun b!5772273 () Bool)

(declare-fun tp!1594427 () Bool)

(declare-fun e!3545993 () Bool)

(assert (=> b!5772273 (= e!3545993 (and (inv!82714 (h!69986 zl!343)) e!3546004 tp!1594427))))

(declare-fun b!5772274 () Bool)

(assert (=> b!5772274 (= e!3545991 e!3545984)))

(assert (=> b!5772274 (= c!1020769 ((_ is Concat!24632) (regOne!32086 r!7292)))))

(declare-fun b!5772275 () Bool)

(declare-fun e!3546008 () Bool)

(assert (=> b!5772275 (= e!3546008 call!445691)))

(declare-fun b!5772276 () Bool)

(assert (=> b!5772276 (= c!1020765 ((_ is Star!15787) (regOne!32086 r!7292)))))

(assert (=> b!5772276 (= e!3545984 e!3546006)))

(declare-fun bm!445842 () Bool)

(declare-fun call!445711 () Unit!156734)

(assert (=> bm!445842 (= call!445711 call!445764)))

(declare-fun bm!445843 () Bool)

(declare-fun call!445731 () Bool)

(declare-fun call!445712 () Bool)

(assert (=> bm!445843 (= call!445731 call!445712)))

(declare-fun bm!445844 () Bool)

(declare-fun call!445680 () Unit!156734)

(assert (=> bm!445844 (= call!445796 call!445680)))

(declare-fun lt!2292668 () List!63661)

(declare-fun bm!445845 () Bool)

(assert (=> bm!445845 (= call!445699 (matchZipper!1925 (ite c!1020763 ((_ map or) lt!2292504 lt!2292580) (ite c!1020762 ((_ map or) lt!2292634 lt!2292519) (ite c!1020773 lt!2292609 (ite c!1020764 (store ((as const (Array Context!10342 Bool)) false) (Context!10343 lt!2292668) true) lt!2292502)))) (ite (or c!1020763 c!1020762) (t!376998 s!2326) (ite c!1020773 (_1!36187 lt!2292650) (ite c!1020764 lt!2292659 s!2326)))))))

(declare-fun b!5772277 () Bool)

(declare-fun Unit!156748 () Unit!156734)

(assert (=> b!5772277 (= e!3546000 Unit!156748)))

(declare-fun b!5772278 () Bool)

(declare-fun e!3546003 () Bool)

(assert (=> b!5772278 (= e!3546003 (= lt!2292482 call!445830))))

(declare-fun Unit!156749 () Unit!156734)

(assert (=> b!5772279 (= e!3545976 Unit!156749)))

(declare-fun lt!2292523 () Unit!156734)

(assert (=> b!5772279 (= lt!2292523 call!445796)))

(assert (=> b!5772279 (= call!445697 call!445859)))

(declare-fun lt!2292560 () Unit!156734)

(assert (=> b!5772279 (= lt!2292560 call!445733)))

(assert (=> b!5772279 (= lt!2292625 call!445771)))

(assert (=> b!5772279 (= call!445731 call!445744)))

(declare-fun lt!2292546 () Unit!156734)

(assert (=> b!5772279 (= lt!2292546 call!445692)))

(assert (=> b!5772279 (= call!445778 call!445758)))

(declare-fun lt!2292487 () Unit!156734)

(assert (=> b!5772279 (= lt!2292487 call!445711)))

(assert (=> b!5772279 (= call!445729 call!445738)))

(assert (=> b!5772279 (= lt!2292650 call!445686)))

(declare-fun lt!2292601 () Unit!156734)

(assert (=> b!5772279 (= lt!2292601 call!445829)))

(assert (=> b!5772279 (= lt!2292498 call!445835)))

(assert (=> b!5772279 (= lt!2292663 call!445681)))

(declare-fun lt!2292643 () List!63660)

(assert (=> b!5772279 (= lt!2292643 call!445877)))

(assert (=> b!5772279 (= lt!2292612 call!445852)))

(assert (=> b!5772279 (= lt!2292643 lt!2292612)))

(declare-fun lt!2292492 () Unit!156734)

(assert (=> b!5772279 (= lt!2292492 call!445716)))

(assert (=> b!5772279 call!445760))

(declare-fun lt!2292614 () Unit!156734)

(assert (=> b!5772279 (= lt!2292614 call!445784)))

(assert (=> b!5772279 call!445811))

(declare-fun lt!2292590 () Unit!156734)

(assert (=> b!5772279 (= lt!2292590 call!445805)))

(assert (=> b!5772279 (= call!445813 call!445786)))

(declare-fun lt!2292497 () Unit!156734)

(assert (=> b!5772279 (= lt!2292497 call!445815)))

(declare-fun call!445679 () Bool)

(assert (=> b!5772279 call!445679))

(declare-fun lt!2292515 () Unit!156734)

(assert (=> b!5772279 (= lt!2292515 call!445804)))

(declare-fun lt!2292644 () Unit!156734)

(declare-fun call!445772 () Unit!156734)

(assert (=> b!5772279 (= lt!2292644 call!445772)))

(assert (=> b!5772279 call!445874))

(declare-fun lt!2292530 () Unit!156734)

(assert (=> b!5772279 (= lt!2292530 call!445845)))

(declare-fun res!2436173 () Bool)

(declare-fun call!445837 () Bool)

(assert (=> b!5772279 (= res!2436173 call!445837)))

(assert (=> b!5772279 (=> (not res!2436173) (not e!3545989))))

(assert (=> b!5772279 e!3545989))

(declare-fun lt!2292649 () Unit!156734)

(declare-fun call!445704 () Unit!156734)

(assert (=> b!5772279 (= lt!2292649 call!445704)))

(assert (=> b!5772279 call!445875))

(declare-fun bm!445846 () Bool)

(assert (=> bm!445846 (= call!445776 call!445824)))

(declare-fun b!5772280 () Bool)

(assert (=> b!5772280 (= e!3545988 call!445679)))

(declare-fun res!2436171 () Bool)

(assert (=> start!592784 (=> (not res!2436171) (not e!3546001))))

(declare-fun validRegex!7523 (Regex!15787) Bool)

(assert (=> start!592784 (= res!2436171 (validRegex!7523 r!7292))))

(assert (=> start!592784 e!3546001))

(assert (=> start!592784 e!3546009))

(declare-fun condSetEmpty!38793 () Bool)

(assert (=> start!592784 (= condSetEmpty!38793 (= z!1189 ((as const (Array Context!10342 Bool)) false)))))

(assert (=> start!592784 setRes!38793))

(assert (=> start!592784 e!3545993))

(assert (=> start!592784 e!3545980))

(declare-fun bm!445847 () Bool)

(assert (=> bm!445847 (= call!445879 (Exists!2887 (ite c!1020762 lambda!314073 (ite c!1020769 lambda!314074 (ite c!1020773 lambda!314080 lambda!314086)))))))

(declare-fun b!5772281 () Bool)

(assert (=> b!5772281 (= e!3545973 false)))

(declare-fun bm!445848 () Bool)

(assert (=> bm!445848 (= call!445794 call!445870)))

(declare-fun bm!445849 () Bool)

(assert (=> bm!445849 (= call!445805 call!445751)))

(declare-fun bm!445850 () Bool)

(assert (=> bm!445850 (= call!445754 call!445819)))

(declare-fun bm!445851 () Bool)

(assert (=> bm!445851 (= call!445718 (Exists!2887 (ite c!1020762 lambda!314070 (ite c!1020773 lambda!314080 (ite c!1020764 lambda!314086 lambda!314093)))))))

(declare-fun bm!445852 () Bool)

(assert (=> bm!445852 (= call!445721 call!445824)))

(assert (=> b!5772282 (= e!3545977 e!3545979)))

(declare-fun res!2436191 () Bool)

(assert (=> b!5772282 (=> res!2436191 e!3545979)))

(declare-fun lt!2292620 () Bool)

(assert (=> b!5772282 (= res!2436191 (or (not (= lt!2292482 lt!2292620)) ((_ is Nil!63536) s!2326)))))

(assert (=> b!5772282 (= (Exists!2887 lambda!314067) (Exists!2887 lambda!314068))))

(declare-fun lt!2292595 () Unit!156734)

(assert (=> b!5772282 (= lt!2292595 (lemmaExistCutMatchRandMatchRSpecEquivalent!1516 (regOne!32086 r!7292) (regTwo!32086 r!7292) s!2326))))

(assert (=> b!5772282 (= lt!2292620 (Exists!2887 lambda!314067))))

(assert (=> b!5772282 (= lt!2292620 (isDefined!12499 (findConcatSeparation!2210 (regOne!32086 r!7292) (regTwo!32086 r!7292) Nil!63536 s!2326 s!2326)))))

(declare-fun lt!2292533 () Unit!156734)

(assert (=> b!5772282 (= lt!2292533 (lemmaFindConcatSeparationEquivalentToExists!1974 (regOne!32086 r!7292) (regTwo!32086 r!7292) s!2326))))

(declare-fun lt!2292672 () List!63660)

(declare-fun bm!445853 () Bool)

(assert (=> bm!445853 (= call!445702 (matchR!7972 (ite c!1020763 lt!2292484 (ite c!1020762 (Concat!24632 (regOne!32086 (regOne!32086 r!7292)) (Concat!24632 (regTwo!32086 (regOne!32086 r!7292)) lt!2292593)) (ite c!1020769 (Concat!24632 (regOne!32086 (regOne!32086 r!7292)) (Concat!24632 (regTwo!32086 (regOne!32086 r!7292)) lt!2292631)) (ite c!1020773 (ite c!1020768 lt!2292513 (reg!16116 (regOne!32086 r!7292))) lt!2292565)))) (ite (or c!1020763 c!1020762 c!1020769) s!2326 (ite c!1020773 (ite c!1020768 s!2326 (_1!36187 lt!2292650)) lt!2292672))))))

(declare-fun bm!445854 () Bool)

(declare-fun call!445730 () Bool)

(assert (=> bm!445854 (= call!445730 call!445867)))

(declare-fun bm!445855 () Bool)

(assert (=> bm!445855 (= call!445821 (derivationStepZipperDown!1129 (ite c!1020763 (regOne!32087 (regOne!32086 r!7292)) (regOne!32086 (regOne!32086 r!7292))) (ite c!1020763 lt!2292623 lt!2292509) (h!69984 s!2326)))))

(declare-fun bm!445856 () Bool)

(declare-fun lemmaConcatPreservesForall!322 (List!63661 List!63661 Int) Unit!156734)

(assert (=> bm!445856 (= call!445772 (lemmaConcatPreservesForall!322 lt!2292485 lt!2292564 (ite c!1020773 lambda!314083 lambda!314085)))))

(declare-fun bm!445857 () Bool)

(assert (=> bm!445857 (= call!445876 call!445806)))

(declare-fun b!5772283 () Bool)

(declare-fun res!2436172 () Bool)

(assert (=> b!5772283 (=> res!2436172 e!3545977)))

(declare-fun isEmpty!35435 (List!63662) Bool)

(assert (=> b!5772283 (= res!2436172 (not (isEmpty!35435 (t!377000 zl!343))))))

(assert (=> b!5772284 call!445730))

(declare-fun lt!2292481 () Unit!156734)

(assert (=> b!5772284 (= lt!2292481 e!3545976)))

(declare-fun isEmpty!35436 (List!63660) Bool)

(assert (=> b!5772284 (= c!1020768 (isEmpty!35436 (_1!36187 lt!2292588)))))

(declare-fun call!445836 () tuple2!65768)

(assert (=> b!5772284 (= lt!2292588 call!445836)))

(assert (=> b!5772284 (= call!445726 call!445682)))

(declare-fun lt!2292536 () Unit!156734)

(assert (=> b!5772284 (= lt!2292536 call!445741)))

(assert (=> b!5772284 (= call!445844 call!445781)))

(declare-fun lt!2292569 () Option!15796)

(assert (=> b!5772284 (= lt!2292569 call!445739)))

(declare-fun lt!2292652 () Unit!156734)

(assert (=> b!5772284 (= lt!2292652 call!445812)))

(declare-fun Unit!156750 () Unit!156734)

(assert (=> b!5772284 (= e!3545985 Unit!156750)))

(declare-fun Unit!156751 () Unit!156734)

(assert (=> b!5772285 (= e!3545991 Unit!156751)))

(assert (=> b!5772285 (= lt!2292653 (Cons!63537 (regTwo!32086 (regOne!32086 r!7292)) (t!376999 (exprs!5671 (h!69986 zl!343)))))))

(assert (=> b!5772285 (= lt!2292509 (Context!10343 lt!2292653))))

(assert (=> b!5772285 (= lt!2292634 call!445821)))

(assert (=> b!5772285 (= lt!2292578 call!445755)))

(declare-fun lt!2292505 () Unit!156734)

(assert (=> b!5772285 (= lt!2292505 call!445698)))

(declare-fun lt!2292514 () Bool)

(assert (=> b!5772285 (= lt!2292514 call!445807)))

(declare-fun res!2436176 () Bool)

(assert (=> b!5772285 (= res!2436176 lt!2292514)))

(assert (=> b!5772285 (=> res!2436176 e!3546008)))

(assert (=> b!5772285 (= call!445720 e!3546008)))

(assert (=> b!5772285 (= lt!2292541 (Cons!63537 (regOne!32086 (regOne!32086 r!7292)) lt!2292653))))

(assert (=> b!5772285 (= lt!2292562 (Context!10343 lt!2292541))))

(assert (=> b!5772285 (= lt!2292499 (store ((as const (Array Context!10342 Bool)) false) lt!2292562 true))))

(assert (=> b!5772285 (= lt!2292573 (store ((as const (Array Context!10342 Bool)) false) lt!2292509 true))))

(declare-fun lt!2292489 () (InoxSet Context!10342))

(assert (=> b!5772285 (= lt!2292489 call!445737)))

(declare-fun lt!2292605 () Unit!156734)

(assert (=> b!5772285 (= lt!2292605 call!445754)))

(assert (=> b!5772285 (= call!445883 call!445737)))

(assert (=> b!5772285 (= lt!2292519 call!445752)))

(declare-fun lt!2292596 () Unit!156734)

(assert (=> b!5772285 (= lt!2292596 call!445795)))

(assert (=> b!5772285 (= call!445695 call!445752)))

(declare-fun lt!2292575 () Unit!156734)

(assert (=> b!5772285 (= lt!2292575 call!445709)))

(declare-fun res!2436195 () Bool)

(assert (=> b!5772285 (= res!2436195 lt!2292514)))

(assert (=> b!5772285 (=> res!2436195 e!3545975)))

(assert (=> b!5772285 (= call!445849 e!3545975)))

(assert (=> b!5772285 (= lt!2292563 call!445880)))

(declare-fun lt!2292543 () Unit!156734)

(assert (=> b!5772285 (= lt!2292543 call!445871)))

(declare-fun lt!2292608 () Bool)

(assert (=> b!5772285 (= lt!2292608 call!445749)))

(assert (=> b!5772285 (= lt!2292608 call!445759)))

(assert (=> b!5772285 (= lt!2292577 call!445816)))

(declare-fun lt!2292480 () Unit!156734)

(assert (=> b!5772285 (= lt!2292480 call!445801)))

(declare-fun lt!2292677 () Bool)

(assert (=> b!5772285 (= lt!2292677 call!445864)))

(assert (=> b!5772285 (= lt!2292677 call!445719)))

(declare-fun lt!2292637 () Unit!156734)

(assert (=> b!5772285 (= lt!2292637 call!445707)))

(assert (=> b!5772285 (= lt!2292608 call!445780)))

(declare-fun lt!2292660 () Unit!156734)

(assert (=> b!5772285 (= lt!2292660 call!445740)))

(assert (=> b!5772285 (= call!445710 call!445685)))

(declare-fun lt!2292477 () Unit!156734)

(assert (=> b!5772285 (= lt!2292477 call!445745)))

(assert (=> b!5772285 (= call!445718 call!445803)))

(declare-fun lt!2292611 () Unit!156734)

(assert (=> b!5772285 (= lt!2292611 call!445680)))

(assert (=> b!5772285 (= lt!2292677 call!445766)))

(assert (=> b!5772285 (= lt!2292593 call!445793)))

(declare-fun lt!2292535 () Unit!156734)

(assert (=> b!5772285 (= lt!2292535 call!445714)))

(assert (=> b!5772285 (= call!445712 call!445770)))

(declare-fun lt!2292483 () Unit!156734)

(assert (=> b!5772285 (= lt!2292483 call!445857)))

(assert (=> b!5772285 (= call!445886 call!445879)))

(declare-fun lt!2292658 () Unit!156734)

(assert (=> b!5772285 (= lt!2292658 call!445850)))

(declare-fun res!2436193 () Bool)

(assert (=> b!5772285 (= res!2436193 (= call!445717 call!445689))))

(assert (=> b!5772285 (=> (not res!2436193) (not e!3545999))))

(assert (=> b!5772285 e!3545999))

(declare-fun bm!445858 () Bool)

(assert (=> bm!445858 (= call!445680 call!445814)))

(declare-fun bm!445859 () Bool)

(assert (=> bm!445859 (= call!445773 call!445738)))

(declare-fun bm!445860 () Bool)

(assert (=> bm!445860 (= call!445815 call!445746)))

(declare-fun bm!445861 () Bool)

(assert (=> bm!445861 (= call!445828 call!445757)))

(declare-fun bm!445862 () Bool)

(assert (=> bm!445862 (= call!445884 call!445711)))

(declare-fun bm!445863 () Bool)

(assert (=> bm!445863 (= call!445859 call!445774)))

(declare-fun bm!445864 () Bool)

(assert (=> bm!445864 (= call!445858 call!445812)))

(declare-fun b!5772286 () Bool)

(assert (=> b!5772286 (= e!3545983 call!445846)))

(declare-fun bm!445865 () Bool)

(assert (=> bm!445865 (= call!445734 call!445797)))

(declare-fun b!5772287 () Bool)

(assert (=> b!5772287 e!3546003))

(declare-fun res!2436189 () Bool)

(assert (=> b!5772287 (=> (not res!2436189) (not e!3546003))))

(assert (=> b!5772287 (= res!2436189 (= call!445838 call!445779))))

(declare-fun lt!2292559 () Unit!156734)

(assert (=> b!5772287 (= lt!2292559 call!445734)))

(assert (=> b!5772287 (= call!445799 call!445872)))

(declare-fun lt!2292584 () Unit!156734)

(assert (=> b!5772287 (= lt!2292584 call!445828)))

(assert (=> b!5772287 (not call!445721)))

(declare-fun lt!2292607 () Unit!156734)

(assert (=> b!5772287 (= lt!2292607 call!445767)))

(declare-fun Unit!156752 () Unit!156734)

(assert (=> b!5772287 (= e!3546005 Unit!156752)))

(declare-fun bm!445866 () Bool)

(assert (=> bm!445866 (= call!445795 (lemmaFlatMapOnSingletonSet!932 (ite c!1020762 lt!2292573 (ite c!1020769 lt!2292529 lt!2292609)) (ite c!1020762 lt!2292509 (ite c!1020769 lt!2292507 lt!2292622)) (ite c!1020762 lambda!314069 (ite c!1020769 lambda!314069 lambda!314069))))))

(declare-fun bm!445867 () Bool)

(assert (=> bm!445867 (= call!445868 (theoremZipperRegexEquiv!681 (ite c!1020766 lt!2292630 (ite c!1020763 lt!2292478 (ite c!1020762 lt!2292499 (ite c!1020765 (ite c!1020773 lt!2292609 (ite c!1020764 lt!2292603 lt!2292502)) lt!2292522)))) (ite c!1020766 (Cons!63538 lt!2292623 Nil!63538) (ite c!1020763 (Cons!63538 lt!2292592 Nil!63538) (ite c!1020762 (Cons!63538 lt!2292562 Nil!63538) (ite c!1020765 (ite c!1020773 (Cons!63538 lt!2292622 Nil!63538) (ite c!1020764 (Cons!63538 lt!2292534 Nil!63538) (Cons!63538 lt!2292623 Nil!63538))) (Cons!63538 lt!2292623 Nil!63538))))) (ite c!1020766 lt!2292600 (ite c!1020763 lt!2292494 (ite c!1020762 lt!2292563 (ite c!1020765 (ite c!1020773 (reg!16116 (regOne!32086 r!7292)) (ite c!1020764 lt!2292565 lt!2292613)) lt!2292594)))) (ite c!1020766 (t!376998 s!2326) (ite (or c!1020763 c!1020762) s!2326 (ite c!1020765 (ite c!1020773 (_1!36187 lt!2292650) (ite c!1020764 (_2!36187 lt!2292568) s!2326)) s!2326)))))))

(declare-fun b!5772288 () Bool)

(declare-fun Unit!156753 () Unit!156734)

(assert (=> b!5772288 (= e!3546006 Unit!156753)))

(assert (=> b!5772288 (= lt!2292531 (regOne!32086 r!7292))))

(assert (=> b!5772288 (= lt!2292564 (Cons!63537 lt!2292531 (t!376999 (exprs!5671 (h!69986 zl!343)))))))

(assert (=> b!5772288 (= lt!2292511 (Context!10343 (Cons!63537 (reg!16116 (regOne!32086 r!7292)) lt!2292564)))))

(assert (=> b!5772288 (= lt!2292627 (store ((as const (Array Context!10342 Bool)) false) lt!2292511 true))))

(declare-fun lt!2292657 () (InoxSet Context!10342))

(assert (=> b!5772288 (= lt!2292657 (derivationStepZipperUp!1055 lt!2292511 (h!69984 s!2326)))))

(declare-fun lt!2292521 () Unit!156734)

(assert (=> b!5772288 (= lt!2292521 call!445732)))

(assert (=> b!5772288 (= call!445708 (derivationStepZipperUp!1055 lt!2292511 (h!69984 s!2326)))))

(assert (=> b!5772288 (= lt!2292534 (Context!10343 lt!2292564))))

(declare-fun lt!2292537 () (InoxSet Context!10342))

(assert (=> b!5772288 (= lt!2292537 call!445742)))

(assert (=> b!5772288 (= lt!2292565 (Concat!24632 lt!2292531 (regTwo!32086 r!7292)))))

(assert (=> b!5772288 (= lt!2292553 (Concat!24632 (reg!16116 (regOne!32086 r!7292)) lt!2292565))))

(assert (=> b!5772288 (= lt!2292485 (Cons!63537 (reg!16116 (regOne!32086 r!7292)) Nil!63537))))

(assert (=> b!5772288 (= lt!2292622 (Context!10343 lt!2292485))))

(assert (=> b!5772288 (= lt!2292609 (store ((as const (Array Context!10342 Bool)) false) lt!2292622 true))))

(assert (=> b!5772288 (= lt!2292603 (store ((as const (Array Context!10342 Bool)) false) lt!2292534 true))))

(declare-fun lt!2292552 () (InoxSet Context!10342))

(assert (=> b!5772288 (= lt!2292552 call!445761)))

(declare-fun lt!2292662 () (InoxSet Context!10342))

(assert (=> b!5772288 (= lt!2292662 call!445737)))

(declare-fun lt!2292665 () Unit!156734)

(assert (=> b!5772288 (= lt!2292665 call!445817)))

(assert (=> b!5772288 (= call!445694 call!445761)))

(declare-fun lt!2292570 () Unit!156734)

(assert (=> b!5772288 (= lt!2292570 call!445762)))

(assert (=> b!5772288 (= call!445883 call!445737)))

(declare-fun lt!2292550 () Unit!156734)

(assert (=> b!5772288 (= lt!2292550 call!445757)))

(assert (=> b!5772288 (= lt!2292548 call!445876)))

(declare-fun res!2436190 () Bool)

(assert (=> b!5772288 (= res!2436190 (= lt!2292548 call!445882))))

(assert (=> b!5772288 (=> (not res!2436190) (not e!3545994))))

(assert (=> b!5772288 e!3545994))

(assert (=> b!5772288 (= c!1020773 lt!2292482)))

(declare-fun lt!2292669 () Unit!156734)

(assert (=> b!5772288 (= lt!2292669 e!3545985)))

(assert (=> b!5772288 (= lt!2292482 call!445862)))

(declare-fun bm!445868 () Bool)

(assert (=> bm!445868 (= call!445710 (isDefined!12499 (ite c!1020762 call!445688 (ite c!1020769 call!445723 (ite c!1020773 lt!2292569 (ite c!1020764 lt!2292647 call!445825))))))))

(declare-fun b!5772289 () Bool)

(declare-fun Unit!156754 () Unit!156734)

(assert (=> b!5772289 (= e!3546007 Unit!156754)))

(declare-fun bm!445869 () Bool)

(assert (=> bm!445869 (= call!445800 call!445886)))

(declare-fun bm!445870 () Bool)

(assert (=> bm!445870 (= call!445787 call!445807)))

(declare-fun b!5772290 () Bool)

(declare-fun res!2436177 () Bool)

(assert (=> b!5772290 (=> (not res!2436177) (not e!3546001))))

(declare-fun unfocusZipper!1529 (List!63662) Regex!15787)

(assert (=> b!5772290 (= res!2436177 (= r!7292 (unfocusZipper!1529 zl!343)))))

(assert (=> b!5772291 e!3545995))

(declare-fun res!2436197 () Bool)

(assert (=> b!5772291 (=> (not res!2436197) (not e!3545995))))

(assert (=> b!5772291 (= res!2436197 call!445700)))

(declare-fun lt!2292561 () Unit!156734)

(assert (=> b!5772291 (= lt!2292561 call!445860)))

(assert (=> b!5772291 (matchR!7972 lt!2292531 lt!2292571)))

(declare-fun lt!2292512 () Unit!156734)

(assert (=> b!5772291 (= lt!2292512 call!445716)))

(assert (=> b!5772291 (= lt!2292672 call!445852)))

(assert (=> b!5772291 (= lt!2292672 call!445725)))

(assert (=> b!5772291 (= lt!2292641 call!445835)))

(assert (=> b!5772291 (= lt!2292571 call!445877)))

(declare-fun lt!2292540 () Unit!156734)

(assert (=> b!5772291 (= lt!2292540 call!445829)))

(assert (=> b!5772291 (= lt!2292581 call!445686)))

(assert (=> b!5772291 (= call!445781 call!445706)))

(declare-fun lt!2292667 () Unit!156734)

(assert (=> b!5772291 (= lt!2292667 call!445885)))

(assert (=> b!5772291 (= call!445773 call!445839)))

(declare-fun lt!2292551 () Unit!156734)

(assert (=> b!5772291 (= lt!2292551 call!445884)))

(assert (=> b!5772291 (= call!445693 call!445758)))

(assert (=> b!5772291 (= lt!2292647 call!445825)))

(declare-fun lt!2292506 () Unit!156734)

(assert (=> b!5772291 (= lt!2292506 call!445733)))

(assert (=> b!5772291 (= call!445684 call!445696)))

(declare-fun lt!2292629 () Unit!156734)

(assert (=> b!5772291 (= lt!2292629 call!445768)))

(assert (=> b!5772291 (= lt!2292616 (get!21926 lt!2292645))))

(assert (=> b!5772291 (= call!445729 call!445808)))

(declare-fun lt!2292556 () Unit!156734)

(assert (=> b!5772291 (= lt!2292556 call!445741)))

(assert (=> b!5772291 (= call!445756 call!445866)))

(assert (=> b!5772291 (= lt!2292645 call!445771)))

(declare-fun lt!2292636 () Unit!156734)

(assert (=> b!5772291 (= lt!2292636 call!445858)))

(assert (=> b!5772291 call!445777))

(declare-fun lt!2292517 () Unit!156734)

(assert (=> b!5772291 (= lt!2292517 call!445797)))

(assert (=> b!5772291 call!445851))

(assert (=> b!5772291 (= lt!2292510 (Concat!24632 lt!2292545 (regTwo!32086 r!7292)))))

(assert (=> b!5772291 (= lt!2292545 (Concat!24632 (reg!16116 (regOne!32086 r!7292)) lt!2292531))))

(declare-fun lt!2292656 () Unit!156734)

(assert (=> b!5772291 (= lt!2292656 call!445715)))

(assert (=> b!5772291 e!3545987))

(declare-fun res!2436174 () Bool)

(assert (=> b!5772291 (=> (not res!2436174) (not e!3545987))))

(assert (=> b!5772291 (= res!2436174 call!445833)))

(declare-fun lt!2292642 () Unit!156734)

(assert (=> b!5772291 (= lt!2292642 call!445784)))

(assert (=> b!5772291 (= call!445760 call!445874)))

(declare-fun lt!2292555 () Unit!156734)

(assert (=> b!5772291 (= lt!2292555 call!445856)))

(assert (=> b!5772291 (= (matchR!7972 (reg!16116 (regOne!32086 r!7292)) (_1!36187 lt!2292568)) call!445730)))

(declare-fun lt!2292579 () Unit!156734)

(assert (=> b!5772291 (= lt!2292579 call!445746)))

(assert (=> b!5772291 call!445861))

(assert (=> b!5772291 (= lt!2292659 call!445681)))

(assert (=> b!5772291 (= lt!2292668 call!445763)))

(declare-fun lt!2292549 () Unit!156734)

(assert (=> b!5772291 (= lt!2292549 call!445704)))

(declare-fun lt!2292486 () Unit!156734)

(assert (=> b!5772291 (= lt!2292486 call!445804)))

(assert (=> b!5772291 (= lt!2292568 call!445836)))

(assert (=> b!5772291 call!445731))

(declare-fun lt!2292597 () Option!15796)

(declare-fun findConcatSeparationZippers!140 ((InoxSet Context!10342) (InoxSet Context!10342) List!63660 List!63660 List!63660) Option!15796)

(assert (=> b!5772291 (= lt!2292597 (findConcatSeparationZippers!140 lt!2292609 lt!2292603 Nil!63536 s!2326 s!2326))))

(declare-fun lt!2292661 () Unit!156734)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!140 ((InoxSet Context!10342) Context!10342 List!63660) Unit!156734)

(assert (=> b!5772291 (= lt!2292661 (lemmaConcatZipperMatchesStringThenFindConcatDefined!140 lt!2292609 lt!2292534 s!2326))))

(declare-fun lambda!314084 () Int)

(declare-fun map!14567 ((InoxSet Context!10342) Int) (InoxSet Context!10342))

(assert (=> b!5772291 (= (map!14567 lt!2292609 lambda!314084) (store ((as const (Array Context!10342 Bool)) false) (Context!10343 call!445763) true))))

(declare-fun lt!2292527 () Unit!156734)

(assert (=> b!5772291 (= lt!2292527 call!445772)))

(declare-fun lt!2292602 () Unit!156734)

(declare-fun lemmaMapOnSingletonSet!148 ((InoxSet Context!10342) Context!10342 Int) Unit!156734)

(assert (=> b!5772291 (= lt!2292602 (lemmaMapOnSingletonSet!148 lt!2292609 lt!2292622 lambda!314084))))

(declare-fun Unit!156755 () Unit!156734)

(assert (=> b!5772291 (= e!3545998 Unit!156755)))

(declare-fun bm!445871 () Bool)

(assert (=> bm!445871 (= call!445836 (get!21926 (ite c!1020773 lt!2292569 lt!2292597)))))

(declare-fun bm!445872 () Bool)

(assert (=> bm!445872 (= call!445720 call!445846)))

(declare-fun bm!445873 () Bool)

(assert (=> bm!445873 (= call!445761 call!445752)))

(declare-fun bm!445874 () Bool)

(assert (=> bm!445874 (= call!445837 call!445790)))

(declare-fun bm!445875 () Bool)

(assert (=> bm!445875 (= call!445823 call!445695)))

(declare-fun bm!445876 () Bool)

(assert (=> bm!445876 (= call!445833 call!445837)))

(declare-fun bm!445877 () Bool)

(assert (=> bm!445877 (= call!445704 (lemmaConcatPreservesForall!322 lt!2292485 lt!2292564 (ite c!1020773 lambda!314083 lambda!314085)))))

(declare-fun bm!445878 () Bool)

(assert (=> bm!445878 (= call!445714 (lemmaFindConcatSeparationEquivalentToExists!1974 (ite c!1020762 (regTwo!32086 (regOne!32086 r!7292)) (ite c!1020769 (regOne!32086 (regOne!32086 r!7292)) (reg!16116 (regOne!32086 r!7292)))) (ite c!1020762 lt!2292593 (ite c!1020769 lt!2292503 lt!2292531)) (ite (or c!1020762 c!1020769) s!2326 (ite c!1020773 (_1!36187 lt!2292588) (_1!36187 lt!2292616)))))))

(declare-fun bm!445879 () Bool)

(assert (=> bm!445879 (= call!445845 (lemmaTwoRegexMatchThenConcatMatchesConcatString!292 (ite c!1020773 (reg!16116 (regOne!32086 r!7292)) lt!2292531) (ite c!1020773 lt!2292565 (regTwo!32086 r!7292)) (ite c!1020773 (_1!36187 lt!2292650) (ite c!1020764 lt!2292571 Nil!63536)) (ite c!1020773 lt!2292663 (ite c!1020764 (_2!36187 lt!2292616) s!2326))))))

(declare-fun bm!445880 () Bool)

(assert (=> bm!445880 (= call!445679 call!445736)))

(declare-fun bm!445881 () Bool)

(assert (=> bm!445881 (= call!445712 (isDefined!12499 (ite c!1020762 call!445748 (ite c!1020773 lt!2292625 lt!2292597))))))

(assert (= (and start!592784 res!2436171) b!5772263))

(assert (= (and b!5772263 res!2436178) b!5772290))

(assert (= (and b!5772290 res!2436177) b!5772248))

(assert (= (and b!5772248 (not res!2436186)) b!5772283))

(assert (= (and b!5772283 (not res!2436172)) b!5772255))

(assert (= (and b!5772255 (not res!2436196)) b!5772239))

(assert (= (and b!5772239 (not res!2436175)) b!5772237))

(assert (= (and b!5772237 (not res!2436188)) b!5772232))

(assert (= (and b!5772232 (not res!2436199)) b!5772282))

(assert (= (and b!5772282 (not res!2436191)) b!5772264))

(assert (= (and b!5772264 (not res!2436184)) b!5772247))

(assert (= (and b!5772247 c!1020771) b!5772235))

(assert (= (and b!5772247 (not c!1020771)) b!5772236))

(assert (= (and b!5772235 (not res!2436185)) b!5772258))

(assert (= (and b!5772247 c!1020766) b!5772241))

(assert (= (and b!5772247 (not c!1020766)) b!5772244))

(assert (= (and b!5772244 c!1020763) b!5772269))

(assert (= (and b!5772244 (not c!1020763)) b!5772242))

(assert (= (and b!5772269 (not res!2436192)) b!5772286))

(assert (= (and b!5772269 c!1020767) b!5772262))

(assert (= (and b!5772269 (not c!1020767)) b!5772266))

(assert (= (and b!5772262 (not res!2436198)) b!5772230))

(assert (= (and b!5772269 c!1020772) b!5772249))

(assert (= (and b!5772269 (not c!1020772)) b!5772289))

(assert (= (and b!5772249 (not res!2436183)) b!5772252))

(assert (= (and b!5772269 res!2436181) b!5772261))

(assert (= (and b!5772242 res!2436179) b!5772272))

(assert (= (and b!5772242 c!1020762) b!5772285))

(assert (= (and b!5772242 (not c!1020762)) b!5772274))

(assert (= (and b!5772285 (not res!2436176)) b!5772275))

(assert (= (and b!5772285 (not res!2436195)) b!5772250))

(assert (= (and b!5772285 res!2436193) b!5772234))

(assert (= (and b!5772274 c!1020769) b!5772238))

(assert (= (and b!5772274 (not c!1020769)) b!5772276))

(assert (= (and b!5772238 res!2436194) b!5772231))

(assert (= (and b!5772276 c!1020765) b!5772288))

(assert (= (and b!5772276 (not c!1020765)) b!5772251))

(assert (= (and b!5772288 res!2436190) b!5772267))

(assert (= (and b!5772288 c!1020773) b!5772284))

(assert (= (and b!5772288 (not c!1020773)) b!5772254))

(assert (= (and b!5772284 c!1020768) b!5772271))

(assert (= (and b!5772284 (not c!1020768)) b!5772279))

(assert (= (and b!5772271 res!2436187) b!5772280))

(assert (= (and b!5772279 res!2436173) b!5772260))

(assert (= (or b!5772271 b!5772279) bm!445794))

(assert (= (or b!5772271 b!5772279) bm!445860))

(assert (= (or b!5772280 b!5772279) bm!445880))

(assert (= (or b!5772271 b!5772279) bm!445683))

(assert (= (and b!5772254 c!1020770) b!5772245))

(assert (= (and b!5772254 (not c!1020770)) b!5772277))

(assert (= (and b!5772245 c!1020764) b!5772291))

(assert (= (and b!5772245 (not c!1020764)) b!5772268))

(assert (= (and b!5772291 res!2436174) b!5772257))

(assert (= (and b!5772291 res!2436197) b!5772253))

(assert (= (and b!5772268 res!2436182) b!5772281))

(assert (= (or b!5772291 b!5772268) bm!445787))

(assert (= (or b!5772291 b!5772268) bm!445862))

(assert (= (or b!5772291 b!5772268) bm!445725))

(assert (= (or b!5772291 b!5772268) bm!445786))

(assert (= (or b!5772291 b!5772268) bm!445770))

(assert (= (or b!5772291 b!5772268) bm!445859))

(assert (= (or b!5772291 b!5772268) bm!445682))

(assert (= (or b!5772291 b!5772268) bm!445723))

(assert (= (or b!5772291 b!5772268) bm!445680))

(assert (= (or b!5772291 b!5772268) bm!445711))

(assert (= (or b!5772291 b!5772268) bm!445823))

(assert (= (or b!5772291 b!5772268) bm!445694))

(assert (= (or b!5772291 b!5772268) bm!445742))

(assert (= (or b!5772291 b!5772268) bm!445864))

(assert (= (or b!5772291 b!5772268) bm!445744))

(assert (= (or b!5772291 b!5772268) bm!445783))

(assert (= (or b!5772291 b!5772268) bm!445736))

(assert (= (or b!5772291 b!5772268) bm!445876))

(assert (= (or b!5772291 b!5772268) bm!445808))

(assert (= (or b!5772279 b!5772291) bm!445696))

(assert (= (or b!5772279 bm!445787) bm!445766))

(assert (= (or b!5772279 bm!445859) bm!445822))

(assert (= (or b!5772271 b!5772268) bm!445757))

(assert (= (or b!5772279 bm!445680) bm!445826))

(assert (= (or b!5772279 b!5772291) bm!445824))

(assert (= (or b!5772279 b!5772291) bm!445836))

(assert (= (or bm!445794 b!5772291) bm!445720))

(assert (= (or b!5772284 b!5772291) bm!445712))

(assert (= (or bm!445880 b!5772254) bm!445839))

(assert (= (or b!5772279 b!5772291) bm!445765))

(assert (= (or b!5772284 bm!445808) bm!445782))

(assert (= (or b!5772279 bm!445862) bm!445842))

(assert (= (or b!5772279 b!5772291) bm!445805))

(assert (= (or b!5772279 bm!445783) bm!445849))

(assert (= (or b!5772279 b!5772291) bm!445809))

(assert (= (or b!5772284 bm!445736) bm!445718))

(assert (= (or b!5772279 bm!445786) bm!445703))

(assert (= (or bm!445860 b!5772291) bm!445741))

(assert (= (or b!5772279 b!5772291) bm!445686))

(assert (= (or b!5772279 bm!445725) bm!445863))

(assert (= (or b!5772284 b!5772291) bm!445871))

(assert (= (or b!5772279 bm!445711) bm!445879))

(assert (= (or b!5772284 b!5772291) bm!445735))

(assert (= (or b!5772279 bm!445823) bm!445705))

(assert (= (or b!5772279 b!5772291) bm!445704))

(assert (= (or b!5772279 b!5772291) bm!445689))

(assert (= (or b!5772284 bm!445864) bm!445678))

(assert (= (or b!5772279 b!5772291) bm!445877))

(assert (= (or bm!445683 b!5772245) bm!445846))

(assert (= (or b!5772279 b!5772291) bm!445843))

(assert (= (or b!5772271 b!5772268) bm!445840))

(assert (= (or b!5772279 b!5772291) bm!445753))

(assert (= (or b!5772284 b!5772291) bm!445854))

(assert (= (or b!5772284 bm!445744) bm!445713))

(assert (= (or b!5772271 b!5772268) bm!445708))

(assert (= (or b!5772279 b!5772291) bm!445856))

(assert (= (or b!5772279 b!5772291) bm!445785))

(assert (= (or b!5772279 bm!445876) bm!445874))

(assert (= (or b!5772271 b!5772268) bm!445875))

(assert (= (or b!5772279 b!5772291) bm!445760))

(assert (= (or b!5772279 bm!445742) bm!445844))

(assert (= (or b!5772279 b!5772291) bm!445699))

(assert (= (or b!5772284 bm!445770) bm!445714))

(assert (= (or b!5772279 bm!445723) bm!445727))

(assert (= (or b!5772279 b!5772291) bm!445791))

(assert (= (or b!5772279 b!5772291) bm!445706))

(assert (= (or b!5772279 bm!445694) bm!445798))

(assert (= (or b!5772279 b!5772291) bm!445698))

(assert (= (and b!5772251 c!1020761) b!5772256))

(assert (= (and b!5772251 (not c!1020761)) b!5772287))

(assert (= (and b!5772256 res!2436180) b!5772229))

(assert (= (and b!5772287 res!2436189) b!5772278))

(assert (= (or b!5772256 b!5772287) bm!445729))

(assert (= (or b!5772256 b!5772287) bm!445732))

(assert (= (or b!5772229 b!5772278) bm!445724))

(assert (= (or b!5772256 b!5772287) bm!445788))

(assert (= (or b!5772256 b!5772287) bm!445754))

(assert (= (or b!5772256 b!5772287) bm!445861))

(assert (= (or b!5772256 b!5772287) bm!445865))

(assert (= (or b!5772256 b!5772287) bm!445852))

(assert (= (or b!5772256 b!5772287) bm!445707))

(assert (= (or bm!445757 b!5772256) bm!445837))

(assert (= (or bm!445846 bm!445852) bm!445676))

(assert (= (or bm!445849 b!5772256) bm!445796))

(assert (= (or b!5772291 bm!445865) bm!445773))

(assert (= (or bm!445874 bm!445707) bm!445828))

(assert (= (or b!5772288 b!5772256) bm!445857))

(assert (= (or bm!445839 b!5772256) bm!445870))

(assert (= (or b!5772291 bm!445732) bm!445833))

(assert (= (or b!5772288 bm!445861) bm!445710))

(assert (= (or b!5772288 b!5772256) bm!445715))

(assert (= (or bm!445708 b!5772256) bm!445793))

(assert (= (or bm!445698 b!5772256) bm!445674))

(assert (= (or bm!445705 bm!445754) bm!445752))

(assert (= (or bm!445854 b!5772256) bm!445767))

(assert (= (or b!5772288 b!5772256) bm!445832))

(assert (= (or b!5772288 bm!445729) bm!445677))

(assert (= (or b!5772288 bm!445724) bm!445806))

(assert (= (or b!5772238 bm!445793) bm!445719))

(assert (= (or b!5772238 b!5772288) bm!445873))

(assert (= (or b!5772238 bm!445686) bm!445835))

(assert (= (or b!5772238 bm!445842) bm!445774))

(assert (= (or b!5772238 b!5772288) bm!445755))

(assert (= (or b!5772238 bm!445741) bm!445825))

(assert (= (or b!5772238 bm!445765) bm!445747))

(assert (= (or b!5772238 bm!445706) bm!445795))

(assert (= (or b!5772238 bm!445752) bm!445751))

(assert (= (or b!5772238 bm!445710) bm!445803))

(assert (= (or b!5772238 b!5772291) bm!445814))

(assert (= (or b!5772238 bm!445718) bm!445819))

(assert (= (or b!5772238 bm!445704) bm!445700))

(assert (= (or b!5772238 bm!445703) bm!445869))

(assert (= (or b!5772238 bm!445822) bm!445756))

(assert (= (or b!5772238 bm!445713) bm!445802))

(assert (= (or b!5772238 bm!445857) bm!445731))

(assert (= (or b!5772238 bm!445833) bm!445781))

(assert (= (or b!5772238 bm!445712) bm!445772))

(assert (= (or b!5772238 b!5772288) bm!445815))

(assert (= (or b!5772238 bm!445773) bm!445688))

(assert (= (or b!5772238 bm!445828) bm!445702))

(assert (= (or b!5772238 bm!445678) bm!445687))

(assert (= (or b!5772238 bm!445714) bm!445769))

(assert (= (or b!5772231 bm!445676) bm!445848))

(assert (= (or b!5772238 bm!445720) bm!445738))

(assert (= (or b!5772238 b!5772288) bm!445777))

(assert (= (or b!5772238 bm!445806) bm!445784))

(assert (= (or b!5772238 bm!445677) bm!445748))

(assert (= (or b!5772238 b!5772291) bm!445716))

(assert (= (or b!5772238 bm!445782) bm!445681))

(assert (= (or b!5772285 bm!445814) bm!445685))

(assert (= (or b!5772285 bm!445687) bm!445764))

(assert (= (or b!5772250 bm!445848) bm!445750))

(assert (= (or b!5772285 bm!445748) bm!445762))

(assert (= (or b!5772285 bm!445747) bm!445847))

(assert (= (or b!5772285 bm!445738) bm!445841))

(assert (= (or b!5772285 bm!445772) bm!445692))

(assert (= (or b!5772285 bm!445715) bm!445850))

(assert (= (or b!5772275 bm!445784) bm!445801))

(assert (= (or b!5772285 bm!445719) bm!445771))

(assert (= (or b!5772285 bm!445767) bm!445872))

(assert (= (or b!5772285 bm!445781) bm!445807))

(assert (= (or b!5772285 bm!445844) bm!445858))

(assert (= (or b!5772285 b!5772238) bm!445827))

(assert (= (or b!5772285 bm!445826) bm!445722))

(assert (= (or b!5772285 bm!445766) bm!445851))

(assert (= (or b!5772285 b!5772238) bm!445800))

(assert (= (or b!5772285 b!5772256) bm!445761))

(assert (= (or b!5772285 bm!445731) bm!445734))

(assert (= (or b!5772285 bm!445819) bm!445818))

(assert (= (or b!5772285 bm!445777) bm!445866))

(assert (= (or b!5772285 bm!445688) bm!445820))

(assert (= (or b!5772285 bm!445802) bm!445701))

(assert (= (or b!5772285 bm!445873) bm!445790))

(assert (= (or b!5772285 bm!445702) bm!445829))

(assert (= (or b!5772285 b!5772288) bm!445768))

(assert (= (or b!5772285 bm!445755) bm!445813))

(assert (= (or b!5772285 bm!445825) bm!445821))

(assert (= (or b!5772234 bm!445674) bm!445830))

(assert (= (or b!5772285 bm!445751) bm!445675))

(assert (= (or b!5772285 bm!445869) bm!445749))

(assert (= (or b!5772285 bm!445870) bm!445831))

(assert (= (or b!5772285 bm!445700) bm!445691))

(assert (= (or b!5772285 bm!445795) bm!445775))

(assert (= (or b!5772285 bm!445875) bm!445690))

(assert (= (or b!5772285 bm!445796) bm!445789))

(assert (= (or b!5772285 bm!445756) bm!445745))

(assert (= (or b!5772285 bm!445774) bm!445697))

(assert (= (or b!5772285 b!5772288) bm!445758))

(assert (= (or b!5772285 bm!445835) bm!445878))

(assert (= (or b!5772285 bm!445843) bm!445881))

(assert (= (or b!5772285 bm!445681) bm!445868))

(assert (= (or b!5772269 bm!445863) bm!445693))

(assert (= (or b!5772269 b!5772285) bm!445737))

(assert (= (or b!5772269 bm!445762) bm!445730))

(assert (= (or b!5772269 bm!445785) bm!445717))

(assert (= (or b!5772269 bm!445771) bm!445816))

(assert (= (or b!5772269 bm!445820) bm!445778))

(assert (= (or b!5772269 bm!445758) bm!445792))

(assert (= (or b!5772269 bm!445803) bm!445709))

(assert (= (or b!5772269 b!5772272) bm!445776))

(assert (= (or b!5772269 b!5772285) bm!445855))

(assert (= (or b!5772230 b!5772252 bm!445830) bm!445728))

(assert (= (or b!5772249 b!5772285) bm!445780))

(assert (= (or b!5772269 bm!445800) bm!445817))

(assert (= (or b!5772269 bm!445831) bm!445810))

(assert (= (or b!5772269 bm!445821) bm!445797))

(assert (= (or b!5772286 b!5772249 bm!445872) bm!445834))

(assert (= (or b!5772269 bm!445850) bm!445743))

(assert (= (or b!5772269 b!5772288) bm!445799))

(assert (= (or b!5772269 bm!445734) bm!445779))

(assert (= (or b!5772269 bm!445807) bm!445740))

(assert (= (or b!5772269 b!5772285) bm!445804))

(assert (= (or b!5772249 bm!445722) bm!445845))

(assert (= (or b!5772269 bm!445813) bm!445721))

(assert (= (or b!5772269 bm!445829) bm!445811))

(assert (= (or b!5772269 bm!445801) bm!445739))

(assert (= (or b!5772269 bm!445790) bm!445746))

(assert (= (or b!5772269 bm!445832) bm!445695))

(assert (= (or b!5772261 bm!445750) bm!445759))

(assert (= (or b!5772269 bm!445858) bm!445763))

(assert (= (or b!5772269 bm!445789) bm!445684))

(assert (= (or b!5772269 bm!445841) bm!445853))

(assert (= (or b!5772269 bm!445690) bm!445679))

(assert (= (or b!5772262 bm!445761) bm!445726))

(assert (= (or b!5772241 bm!445811) bm!445733))

(assert (= (or b!5772241 bm!445827) bm!445812))

(assert (= (or b!5772241 bm!445684) bm!445867))

(assert (= (or b!5772241 bm!445810) bm!445838))

(assert (= (and start!592784 ((_ is ElementMatch!15787) r!7292)) b!5772270))

(assert (= (and start!592784 ((_ is Concat!24632) r!7292)) b!5772240))

(assert (= (and start!592784 ((_ is Star!15787) r!7292)) b!5772259))

(assert (= (and start!592784 ((_ is Union!15787) r!7292)) b!5772265))

(assert (= (and start!592784 condSetEmpty!38793) setIsEmpty!38793))

(assert (= (and start!592784 (not condSetEmpty!38793)) setNonEmpty!38793))

(assert (= setNonEmpty!38793 b!5772233))

(assert (= b!5772273 b!5772243))

(assert (= (and start!592784 ((_ is Cons!63538) zl!343)) b!5772273))

(assert (= (and start!592784 ((_ is Cons!63536) s!2326)) b!5772246))

(declare-fun m!6717134 () Bool)

(assert (=> bm!445834 m!6717134))

(declare-fun m!6717136 () Bool)

(assert (=> bm!445745 m!6717136))

(declare-fun m!6717138 () Bool)

(assert (=> bm!445780 m!6717138))

(declare-fun m!6717140 () Bool)

(assert (=> bm!445799 m!6717140))

(declare-fun m!6717142 () Bool)

(assert (=> bm!445878 m!6717142))

(declare-fun m!6717144 () Bool)

(assert (=> bm!445679 m!6717144))

(declare-fun m!6717146 () Bool)

(assert (=> bm!445798 m!6717146))

(declare-fun m!6717148 () Bool)

(assert (=> bm!445804 m!6717148))

(declare-fun m!6717150 () Bool)

(assert (=> bm!445709 m!6717150))

(declare-fun m!6717152 () Bool)

(assert (=> b!5772284 m!6717152))

(declare-fun m!6717154 () Bool)

(assert (=> b!5772283 m!6717154))

(declare-fun m!6717156 () Bool)

(assert (=> b!5772273 m!6717156))

(declare-fun m!6717158 () Bool)

(assert (=> bm!445866 m!6717158))

(declare-fun m!6717160 () Bool)

(assert (=> bm!445792 m!6717160))

(declare-fun m!6717162 () Bool)

(assert (=> bm!445879 m!6717162))

(declare-fun m!6717164 () Bool)

(assert (=> bm!445797 m!6717164))

(declare-fun m!6717166 () Bool)

(assert (=> bm!445764 m!6717166))

(declare-fun m!6717168 () Bool)

(assert (=> bm!445853 m!6717168))

(declare-fun m!6717170 () Bool)

(assert (=> bm!445877 m!6717170))

(declare-fun m!6717172 () Bool)

(assert (=> bm!445818 m!6717172))

(declare-fun m!6717174 () Bool)

(assert (=> bm!445838 m!6717174))

(declare-fun m!6717176 () Bool)

(assert (=> bm!445840 m!6717176))

(declare-fun m!6717178 () Bool)

(assert (=> bm!445699 m!6717178))

(declare-fun m!6717180 () Bool)

(assert (=> bm!445845 m!6717180))

(declare-fun m!6717182 () Bool)

(assert (=> bm!445845 m!6717182))

(declare-fun m!6717184 () Bool)

(assert (=> bm!445851 m!6717184))

(declare-fun m!6717186 () Bool)

(assert (=> b!5772291 m!6717186))

(declare-fun m!6717188 () Bool)

(assert (=> b!5772291 m!6717188))

(declare-fun m!6717190 () Bool)

(assert (=> b!5772291 m!6717190))

(declare-fun m!6717192 () Bool)

(assert (=> b!5772291 m!6717192))

(declare-fun m!6717194 () Bool)

(assert (=> b!5772291 m!6717194))

(declare-fun m!6717196 () Bool)

(assert (=> b!5772291 m!6717196))

(declare-fun m!6717198 () Bool)

(assert (=> b!5772291 m!6717198))

(declare-fun m!6717200 () Bool)

(assert (=> b!5772291 m!6717200))

(declare-fun m!6717202 () Bool)

(assert (=> bm!445735 m!6717202))

(declare-fun m!6717204 () Bool)

(assert (=> bm!445717 m!6717204))

(declare-fun m!6717206 () Bool)

(assert (=> bm!445805 m!6717206))

(declare-fun m!6717208 () Bool)

(assert (=> b!5772238 m!6717208))

(declare-fun m!6717210 () Bool)

(assert (=> bm!445760 m!6717210))

(assert (=> bm!445856 m!6717170))

(declare-fun m!6717212 () Bool)

(assert (=> bm!445788 m!6717212))

(declare-fun m!6717214 () Bool)

(assert (=> bm!445692 m!6717214))

(declare-fun m!6717216 () Bool)

(assert (=> bm!445726 m!6717216))

(declare-fun m!6717218 () Bool)

(assert (=> bm!445697 m!6717218))

(declare-fun m!6717220 () Bool)

(assert (=> bm!445685 m!6717220))

(declare-fun m!6717222 () Bool)

(assert (=> b!5772268 m!6717222))

(declare-fun m!6717224 () Bool)

(assert (=> bm!445763 m!6717224))

(declare-fun m!6717226 () Bool)

(assert (=> bm!445817 m!6717226))

(declare-fun m!6717228 () Bool)

(assert (=> bm!445812 m!6717228))

(declare-fun m!6717230 () Bool)

(assert (=> bm!445693 m!6717230))

(declare-fun m!6717232 () Bool)

(assert (=> bm!445769 m!6717232))

(declare-fun m!6717234 () Bool)

(assert (=> b!5772264 m!6717234))

(declare-fun m!6717236 () Bool)

(assert (=> bm!445824 m!6717236))

(declare-fun m!6717238 () Bool)

(assert (=> bm!445675 m!6717238))

(declare-fun m!6717240 () Bool)

(assert (=> bm!445740 m!6717240))

(declare-fun m!6717242 () Bool)

(assert (=> bm!445815 m!6717242))

(declare-fun m!6717244 () Bool)

(assert (=> bm!445695 m!6717244))

(declare-fun m!6717246 () Bool)

(assert (=> bm!445759 m!6717246))

(declare-fun m!6717248 () Bool)

(assert (=> bm!445775 m!6717248))

(declare-fun m!6717250 () Bool)

(assert (=> bm!445881 m!6717250))

(assert (=> b!5772256 m!6717222))

(declare-fun m!6717252 () Bool)

(assert (=> bm!445701 m!6717252))

(declare-fun m!6717254 () Bool)

(assert (=> bm!445779 m!6717254))

(assert (=> b!5772271 m!6717222))

(declare-fun m!6717256 () Bool)

(assert (=> start!592784 m!6717256))

(declare-fun m!6717258 () Bool)

(assert (=> bm!445727 m!6717258))

(declare-fun m!6717260 () Bool)

(assert (=> bm!445776 m!6717260))

(declare-fun m!6717262 () Bool)

(assert (=> b!5772263 m!6717262))

(declare-fun m!6717264 () Bool)

(assert (=> b!5772290 m!6717264))

(declare-fun m!6717266 () Bool)

(assert (=> bm!445691 m!6717266))

(declare-fun m!6717268 () Bool)

(assert (=> bm!445791 m!6717268))

(declare-fun m!6717270 () Bool)

(assert (=> b!5772285 m!6717270))

(declare-fun m!6717272 () Bool)

(assert (=> b!5772285 m!6717272))

(declare-fun m!6717274 () Bool)

(assert (=> b!5772237 m!6717274))

(assert (=> b!5772237 m!6717274))

(declare-fun m!6717276 () Bool)

(assert (=> b!5772237 m!6717276))

(declare-fun m!6717278 () Bool)

(assert (=> bm!445721 m!6717278))

(declare-fun m!6717280 () Bool)

(assert (=> bm!445816 m!6717280))

(declare-fun m!6717282 () Bool)

(assert (=> bm!445730 m!6717282))

(declare-fun m!6717284 () Bool)

(assert (=> b!5772282 m!6717284))

(declare-fun m!6717286 () Bool)

(assert (=> b!5772282 m!6717286))

(declare-fun m!6717288 () Bool)

(assert (=> b!5772282 m!6717288))

(declare-fun m!6717290 () Bool)

(assert (=> b!5772282 m!6717290))

(assert (=> b!5772282 m!6717290))

(declare-fun m!6717292 () Bool)

(assert (=> b!5772282 m!6717292))

(assert (=> b!5772282 m!6717284))

(declare-fun m!6717294 () Bool)

(assert (=> b!5772282 m!6717294))

(declare-fun m!6717296 () Bool)

(assert (=> bm!445743 m!6717296))

(declare-fun m!6717298 () Bool)

(assert (=> bm!445737 m!6717298))

(declare-fun m!6717300 () Bool)

(assert (=> bm!445768 m!6717300))

(declare-fun m!6717302 () Bool)

(assert (=> bm!445847 m!6717302))

(declare-fun m!6717304 () Bool)

(assert (=> b!5772269 m!6717304))

(declare-fun m!6717306 () Bool)

(assert (=> b!5772269 m!6717306))

(declare-fun m!6717308 () Bool)

(assert (=> b!5772269 m!6717308))

(declare-fun m!6717310 () Bool)

(assert (=> b!5772269 m!6717310))

(declare-fun m!6717312 () Bool)

(assert (=> b!5772269 m!6717312))

(declare-fun m!6717314 () Bool)

(assert (=> b!5772269 m!6717314))

(declare-fun m!6717316 () Bool)

(assert (=> b!5772269 m!6717316))

(declare-fun m!6717318 () Bool)

(assert (=> bm!445867 m!6717318))

(assert (=> b!5772241 m!6717222))

(declare-fun m!6717320 () Bool)

(assert (=> setNonEmpty!38793 m!6717320))

(declare-fun m!6717322 () Bool)

(assert (=> bm!445682 m!6717322))

(declare-fun m!6717324 () Bool)

(assert (=> bm!445733 m!6717324))

(declare-fun m!6717326 () Bool)

(assert (=> bm!445746 m!6717326))

(declare-fun m!6717328 () Bool)

(assert (=> b!5772247 m!6717328))

(declare-fun m!6717330 () Bool)

(assert (=> b!5772247 m!6717330))

(declare-fun m!6717332 () Bool)

(assert (=> b!5772247 m!6717332))

(declare-fun m!6717334 () Bool)

(assert (=> b!5772247 m!6717334))

(declare-fun m!6717336 () Bool)

(assert (=> b!5772247 m!6717336))

(declare-fun m!6717338 () Bool)

(assert (=> b!5772247 m!6717338))

(declare-fun m!6717340 () Bool)

(assert (=> b!5772247 m!6717340))

(assert (=> b!5772247 m!6717222))

(declare-fun m!6717342 () Bool)

(assert (=> b!5772247 m!6717342))

(declare-fun m!6717344 () Bool)

(assert (=> b!5772247 m!6717344))

(declare-fun m!6717346 () Bool)

(assert (=> b!5772288 m!6717346))

(declare-fun m!6717348 () Bool)

(assert (=> b!5772288 m!6717348))

(declare-fun m!6717350 () Bool)

(assert (=> b!5772288 m!6717350))

(declare-fun m!6717352 () Bool)

(assert (=> b!5772288 m!6717352))

(assert (=> bm!445837 m!6717332))

(declare-fun m!6717354 () Bool)

(assert (=> bm!445778 m!6717354))

(declare-fun m!6717356 () Bool)

(assert (=> bm!445836 m!6717356))

(declare-fun m!6717358 () Bool)

(assert (=> bm!445696 m!6717358))

(declare-fun m!6717360 () Bool)

(assert (=> bm!445716 m!6717360))

(declare-fun m!6717362 () Bool)

(assert (=> bm!445689 m!6717362))

(declare-fun m!6717364 () Bool)

(assert (=> bm!445868 m!6717364))

(declare-fun m!6717366 () Bool)

(assert (=> bm!445855 m!6717366))

(declare-fun m!6717368 () Bool)

(assert (=> bm!445809 m!6717368))

(declare-fun m!6717370 () Bool)

(assert (=> bm!445749 m!6717370))

(declare-fun m!6717372 () Bool)

(assert (=> b!5772248 m!6717372))

(declare-fun m!6717374 () Bool)

(assert (=> b!5772248 m!6717374))

(declare-fun m!6717376 () Bool)

(assert (=> b!5772248 m!6717376))

(declare-fun m!6717378 () Bool)

(assert (=> b!5772258 m!6717378))

(declare-fun m!6717380 () Bool)

(assert (=> b!5772235 m!6717380))

(declare-fun m!6717382 () Bool)

(assert (=> b!5772235 m!6717382))

(declare-fun m!6717384 () Bool)

(assert (=> b!5772235 m!6717384))

(assert (=> bm!445728 m!6717186))

(declare-fun m!6717386 () Bool)

(assert (=> bm!445728 m!6717386))

(declare-fun m!6717388 () Bool)

(assert (=> b!5772262 m!6717388))

(declare-fun m!6717390 () Bool)

(assert (=> bm!445739 m!6717390))

(declare-fun m!6717392 () Bool)

(assert (=> bm!445871 m!6717392))

(declare-fun m!6717394 () Bool)

(assert (=> b!5772255 m!6717394))

(declare-fun m!6717396 () Bool)

(assert (=> bm!445753 m!6717396))

(check-sat (not bm!445740) (not bm!445837) (not bm!445727) (not bm!445836) (not bm!445881) (not bm!445717) (not bm!445851) (not bm!445695) (not bm!445877) (not b!5772246) (not b!5772243) (not b!5772233) (not bm!445693) (not bm!445691) (not bm!445856) (not b!5772265) (not bm!445780) (not bm!445867) (not bm!445853) (not bm!445791) (not b!5772255) (not bm!445840) (not bm!445824) (not b!5772247) (not bm!445682) (not bm!445701) (not bm!445816) (not bm!445845) (not bm!445792) (not bm!445769) (not bm!445745) (not b!5772258) (not b!5772235) (not bm!445735) (not bm!445788) (not b!5772269) (not bm!445804) (not bm!445799) (not bm!445730) (not b!5772262) (not bm!445812) (not b!5772264) (not bm!445866) (not bm!445768) (not bm!445746) (not bm!445764) (not bm!445847) (not bm!445776) (not bm!445778) (not bm!445685) (not bm!445759) (not b!5772237) (not bm!445838) (not b!5772284) (not bm!445855) (not bm!445797) (not bm!445779) (not bm!445716) (not b!5772259) (not bm!445728) (not b!5772288) (not bm!445749) (not b!5772290) (not b!5772282) (not bm!445879) (not bm!445733) (not bm!445760) (not b!5772263) (not b!5772248) (not bm!445805) (not bm!445699) (not b!5772291) (not bm!445809) (not bm!445871) (not bm!445737) (not bm!445743) (not b!5772283) (not bm!445696) (not b!5772273) (not bm!445798) (not bm!445697) (not bm!445775) (not bm!445721) (not bm!445834) (not bm!445709) (not bm!445878) (not bm!445815) (not b!5772240) (not bm!445726) (not bm!445868) (not bm!445817) (not bm!445675) (not bm!445753) (not bm!445679) tp_is_empty!40827 (not bm!445739) (not start!592784) (not setNonEmpty!38793) (not bm!445763) (not bm!445818) (not bm!445692) (not bm!445689))
(check-sat)
