; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596040 () Bool)

(assert start!596040)

(declare-fun b!5817105 () Bool)

(assert (=> b!5817105 true))

(declare-fun b!5817099 () Bool)

(declare-fun e!3570225 () Bool)

(declare-fun e!3570218 () Bool)

(assert (=> b!5817099 (= e!3570225 e!3570218)))

(declare-fun res!2453095 () Bool)

(assert (=> b!5817099 (=> res!2453095 e!3570218)))

(declare-datatypes ((C!31968 0))(
  ( (C!31969 (val!25686 Int)) )
))
(declare-datatypes ((Regex!15849 0))(
  ( (ElementMatch!15849 (c!1030899 C!31968)) (Concat!24694 (regOne!32210 Regex!15849) (regTwo!32210 Regex!15849)) (EmptyExpr!15849) (Star!15849 (reg!16178 Regex!15849)) (EmptyLang!15849) (Union!15849 (regOne!32211 Regex!15849) (regTwo!32211 Regex!15849)) )
))
(declare-datatypes ((List!63846 0))(
  ( (Nil!63722) (Cons!63722 (h!70170 Regex!15849) (t!377201 List!63846)) )
))
(declare-fun lt!2301556 () List!63846)

(declare-fun lt!2301557 () Regex!15849)

(declare-fun contains!19889 (List!63846 Regex!15849) Bool)

(assert (=> b!5817099 (= res!2453095 (not (contains!19889 lt!2301556 lt!2301557)))))

(declare-fun lambda!318116 () Int)

(declare-fun getWitness!916 (List!63846 Int) Regex!15849)

(assert (=> b!5817099 (= lt!2301557 (getWitness!916 lt!2301556 lambda!318116))))

(declare-fun b!5817100 () Bool)

(declare-fun res!2453102 () Bool)

(declare-fun e!3570220 () Bool)

(assert (=> b!5817100 (=> (not res!2453102) (not e!3570220))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!10466 0))(
  ( (Context!10467 (exprs!5733 List!63846)) )
))
(declare-fun z!1189 () (InoxSet Context!10466))

(declare-datatypes ((List!63847 0))(
  ( (Nil!63723) (Cons!63723 (h!70171 Context!10466) (t!377202 List!63847)) )
))
(declare-fun zl!343 () List!63847)

(declare-fun toList!9633 ((InoxSet Context!10466)) List!63847)

(assert (=> b!5817100 (= res!2453102 (= (toList!9633 z!1189) zl!343))))

(declare-fun b!5817101 () Bool)

(declare-fun e!3570221 () Bool)

(declare-fun tp!1605082 () Bool)

(assert (=> b!5817101 (= e!3570221 tp!1605082)))

(declare-fun b!5817102 () Bool)

(declare-fun res!2453096 () Bool)

(declare-fun e!3570219 () Bool)

(assert (=> b!5817102 (=> res!2453096 e!3570219)))

(declare-fun isEmpty!35624 (List!63847) Bool)

(assert (=> b!5817102 (= res!2453096 (isEmpty!35624 (t!377202 zl!343)))))

(declare-fun tp!1605076 () Bool)

(declare-fun e!3570222 () Bool)

(declare-fun b!5817103 () Bool)

(declare-fun e!3570224 () Bool)

(declare-fun inv!82869 (Context!10466) Bool)

(assert (=> b!5817103 (= e!3570222 (and (inv!82869 (h!70171 zl!343)) e!3570224 tp!1605076))))

(declare-fun b!5817104 () Bool)

(declare-fun e!3570223 () Bool)

(assert (=> b!5817104 (= e!3570223 (isEmpty!35624 (t!377202 zl!343)))))

(declare-fun setNonEmpty!39238 () Bool)

(declare-fun setRes!39238 () Bool)

(declare-fun setElem!39238 () Context!10466)

(declare-fun tp!1605077 () Bool)

(declare-fun e!3570227 () Bool)

(assert (=> setNonEmpty!39238 (= setRes!39238 (and tp!1605077 (inv!82869 setElem!39238) e!3570227))))

(declare-fun setRest!39238 () (InoxSet Context!10466))

(assert (=> setNonEmpty!39238 (= z!1189 ((_ map or) (store ((as const (Array Context!10466 Bool)) false) setElem!39238 true) setRest!39238))))

(assert (=> b!5817105 (= e!3570219 e!3570225)))

(declare-fun res!2453097 () Bool)

(assert (=> b!5817105 (=> res!2453097 e!3570225)))

(declare-fun lt!2301558 () Bool)

(assert (=> b!5817105 (= res!2453097 (not lt!2301558))))

(declare-fun exists!2265 (List!63846 Int) Bool)

(assert (=> b!5817105 (= lt!2301558 (exists!2265 lt!2301556 lambda!318116))))

(declare-fun r!7292 () Regex!15849)

(declare-datatypes ((List!63848 0))(
  ( (Nil!63724) (Cons!63724 (h!70172 C!31968) (t!377203 List!63848)) )
))
(declare-fun s!2326 () List!63848)

(declare-datatypes ((Unit!156960 0))(
  ( (Unit!156961) )
))
(declare-fun lt!2301555 () Unit!156960)

(declare-fun matchRGenUnionSpec!290 (Regex!15849 List!63846 List!63848) Unit!156960)

(assert (=> b!5817105 (= lt!2301555 (matchRGenUnionSpec!290 r!7292 lt!2301556 s!2326))))

(declare-fun unfocusZipperList!1271 (List!63847) List!63846)

(assert (=> b!5817105 (= lt!2301556 (unfocusZipperList!1271 zl!343))))

(declare-fun b!5817106 () Bool)

(declare-fun res!2453099 () Bool)

(assert (=> b!5817106 (=> (not res!2453099) (not e!3570220))))

(declare-fun unfocusZipper!1591 (List!63847) Regex!15849)

(assert (=> b!5817106 (= res!2453099 (= r!7292 (unfocusZipper!1591 zl!343)))))

(declare-fun b!5817107 () Bool)

(declare-fun tp_is_empty!40951 () Bool)

(assert (=> b!5817107 (= e!3570221 tp_is_empty!40951)))

(declare-fun res!2453093 () Bool)

(assert (=> start!596040 (=> (not res!2453093) (not e!3570220))))

(declare-fun validRegex!7585 (Regex!15849) Bool)

(assert (=> start!596040 (= res!2453093 (validRegex!7585 r!7292))))

(assert (=> start!596040 e!3570220))

(assert (=> start!596040 e!3570221))

(declare-fun condSetEmpty!39238 () Bool)

(assert (=> start!596040 (= condSetEmpty!39238 (= z!1189 ((as const (Array Context!10466 Bool)) false)))))

(assert (=> start!596040 setRes!39238))

(assert (=> start!596040 e!3570222))

(declare-fun e!3570226 () Bool)

(assert (=> start!596040 e!3570226))

(declare-fun b!5817108 () Bool)

(declare-fun tp!1605083 () Bool)

(declare-fun tp!1605079 () Bool)

(assert (=> b!5817108 (= e!3570221 (and tp!1605083 tp!1605079))))

(declare-fun b!5817109 () Bool)

(declare-fun tp!1605080 () Bool)

(declare-fun tp!1605075 () Bool)

(assert (=> b!5817109 (= e!3570221 (and tp!1605080 tp!1605075))))

(declare-fun setIsEmpty!39238 () Bool)

(assert (=> setIsEmpty!39238 setRes!39238))

(declare-fun b!5817110 () Bool)

(declare-fun res!2453100 () Bool)

(assert (=> b!5817110 (=> res!2453100 e!3570225)))

(assert (=> b!5817110 (= res!2453100 (not (exists!2265 lt!2301556 lambda!318116)))))

(declare-fun b!5817111 () Bool)

(declare-fun res!2453098 () Bool)

(assert (=> b!5817111 (=> res!2453098 e!3570219)))

(get-info :version)

(assert (=> b!5817111 (= res!2453098 (or (not ((_ is Cons!63723) zl!343)) ((_ is Nil!63724) s!2326) (not (= zl!343 (Cons!63723 (h!70171 zl!343) (t!377202 zl!343))))))))

(declare-fun b!5817112 () Bool)

(declare-fun tp!1605081 () Bool)

(assert (=> b!5817112 (= e!3570226 (and tp_is_empty!40951 tp!1605081))))

(declare-fun b!5817113 () Bool)

(assert (=> b!5817113 (= e!3570218 (validRegex!7585 lt!2301557))))

(declare-fun b!5817114 () Bool)

(declare-fun tp!1605084 () Bool)

(assert (=> b!5817114 (= e!3570227 tp!1605084)))

(declare-fun b!5817115 () Bool)

(assert (=> b!5817115 (= e!3570220 (not e!3570219))))

(declare-fun res!2453094 () Bool)

(assert (=> b!5817115 (=> res!2453094 e!3570219)))

(assert (=> b!5817115 (= res!2453094 e!3570223)))

(declare-fun res!2453101 () Bool)

(assert (=> b!5817115 (=> (not res!2453101) (not e!3570223))))

(assert (=> b!5817115 (= res!2453101 ((_ is Cons!63723) zl!343))))

(declare-fun matchRSpec!2952 (Regex!15849 List!63848) Bool)

(assert (=> b!5817115 (= lt!2301558 (matchRSpec!2952 r!7292 s!2326))))

(declare-fun matchR!8034 (Regex!15849 List!63848) Bool)

(assert (=> b!5817115 (= lt!2301558 (matchR!8034 r!7292 s!2326))))

(declare-fun lt!2301554 () Unit!156960)

(declare-fun mainMatchTheorem!2952 (Regex!15849 List!63848) Unit!156960)

(assert (=> b!5817115 (= lt!2301554 (mainMatchTheorem!2952 r!7292 s!2326))))

(declare-fun b!5817116 () Bool)

(declare-fun tp!1605078 () Bool)

(assert (=> b!5817116 (= e!3570224 tp!1605078)))

(assert (= (and start!596040 res!2453093) b!5817100))

(assert (= (and b!5817100 res!2453102) b!5817106))

(assert (= (and b!5817106 res!2453099) b!5817115))

(assert (= (and b!5817115 res!2453101) b!5817104))

(assert (= (and b!5817115 (not res!2453094)) b!5817111))

(assert (= (and b!5817111 (not res!2453098)) b!5817102))

(assert (= (and b!5817102 (not res!2453096)) b!5817105))

(assert (= (and b!5817105 (not res!2453097)) b!5817110))

(assert (= (and b!5817110 (not res!2453100)) b!5817099))

(assert (= (and b!5817099 (not res!2453095)) b!5817113))

(assert (= (and start!596040 ((_ is ElementMatch!15849) r!7292)) b!5817107))

(assert (= (and start!596040 ((_ is Concat!24694) r!7292)) b!5817108))

(assert (= (and start!596040 ((_ is Star!15849) r!7292)) b!5817101))

(assert (= (and start!596040 ((_ is Union!15849) r!7292)) b!5817109))

(assert (= (and start!596040 condSetEmpty!39238) setIsEmpty!39238))

(assert (= (and start!596040 (not condSetEmpty!39238)) setNonEmpty!39238))

(assert (= setNonEmpty!39238 b!5817114))

(assert (= b!5817103 b!5817116))

(assert (= (and start!596040 ((_ is Cons!63723) zl!343)) b!5817103))

(assert (= (and start!596040 ((_ is Cons!63724) s!2326)) b!5817112))

(declare-fun m!6753942 () Bool)

(assert (=> b!5817102 m!6753942))

(assert (=> b!5817104 m!6753942))

(declare-fun m!6753944 () Bool)

(assert (=> b!5817099 m!6753944))

(declare-fun m!6753946 () Bool)

(assert (=> b!5817099 m!6753946))

(declare-fun m!6753948 () Bool)

(assert (=> b!5817110 m!6753948))

(declare-fun m!6753950 () Bool)

(assert (=> setNonEmpty!39238 m!6753950))

(declare-fun m!6753952 () Bool)

(assert (=> b!5817103 m!6753952))

(declare-fun m!6753954 () Bool)

(assert (=> start!596040 m!6753954))

(assert (=> b!5817105 m!6753948))

(declare-fun m!6753956 () Bool)

(assert (=> b!5817105 m!6753956))

(declare-fun m!6753958 () Bool)

(assert (=> b!5817105 m!6753958))

(declare-fun m!6753960 () Bool)

(assert (=> b!5817106 m!6753960))

(declare-fun m!6753962 () Bool)

(assert (=> b!5817113 m!6753962))

(declare-fun m!6753964 () Bool)

(assert (=> b!5817100 m!6753964))

(declare-fun m!6753966 () Bool)

(assert (=> b!5817115 m!6753966))

(declare-fun m!6753968 () Bool)

(assert (=> b!5817115 m!6753968))

(declare-fun m!6753970 () Bool)

(assert (=> b!5817115 m!6753970))

(check-sat (not b!5817113) (not b!5817104) (not b!5817108) (not b!5817112) (not b!5817101) (not b!5817114) (not b!5817102) (not b!5817116) (not start!596040) (not b!5817109) (not b!5817115) (not b!5817106) tp_is_empty!40951 (not b!5817103) (not setNonEmpty!39238) (not b!5817099) (not b!5817110) (not b!5817105) (not b!5817100))
(check-sat)
(get-model)

(declare-fun d!1831168 () Bool)

(declare-fun e!3570230 () Bool)

(assert (=> d!1831168 e!3570230))

(declare-fun res!2453105 () Bool)

(assert (=> d!1831168 (=> (not res!2453105) (not e!3570230))))

(declare-fun lt!2301561 () List!63847)

(declare-fun noDuplicate!1731 (List!63847) Bool)

(assert (=> d!1831168 (= res!2453105 (noDuplicate!1731 lt!2301561))))

(declare-fun choose!44213 ((InoxSet Context!10466)) List!63847)

(assert (=> d!1831168 (= lt!2301561 (choose!44213 z!1189))))

(assert (=> d!1831168 (= (toList!9633 z!1189) lt!2301561)))

(declare-fun b!5817121 () Bool)

(declare-fun content!11691 (List!63847) (InoxSet Context!10466))

(assert (=> b!5817121 (= e!3570230 (= (content!11691 lt!2301561) z!1189))))

(assert (= (and d!1831168 res!2453105) b!5817121))

(declare-fun m!6753972 () Bool)

(assert (=> d!1831168 m!6753972))

(declare-fun m!6753974 () Bool)

(assert (=> d!1831168 m!6753974))

(declare-fun m!6753976 () Bool)

(assert (=> b!5817121 m!6753976))

(assert (=> b!5817100 d!1831168))

(declare-fun d!1831170 () Bool)

(declare-fun lt!2301564 () Bool)

(declare-fun content!11692 (List!63846) (InoxSet Regex!15849))

(assert (=> d!1831170 (= lt!2301564 (select (content!11692 lt!2301556) lt!2301557))))

(declare-fun e!3570235 () Bool)

(assert (=> d!1831170 (= lt!2301564 e!3570235)))

(declare-fun res!2453110 () Bool)

(assert (=> d!1831170 (=> (not res!2453110) (not e!3570235))))

(assert (=> d!1831170 (= res!2453110 ((_ is Cons!63722) lt!2301556))))

(assert (=> d!1831170 (= (contains!19889 lt!2301556 lt!2301557) lt!2301564)))

(declare-fun b!5817126 () Bool)

(declare-fun e!3570236 () Bool)

(assert (=> b!5817126 (= e!3570235 e!3570236)))

(declare-fun res!2453111 () Bool)

(assert (=> b!5817126 (=> res!2453111 e!3570236)))

(assert (=> b!5817126 (= res!2453111 (= (h!70170 lt!2301556) lt!2301557))))

(declare-fun b!5817127 () Bool)

(assert (=> b!5817127 (= e!3570236 (contains!19889 (t!377201 lt!2301556) lt!2301557))))

(assert (= (and d!1831170 res!2453110) b!5817126))

(assert (= (and b!5817126 (not res!2453111)) b!5817127))

(declare-fun m!6753978 () Bool)

(assert (=> d!1831170 m!6753978))

(declare-fun m!6753980 () Bool)

(assert (=> d!1831170 m!6753980))

(declare-fun m!6753982 () Bool)

(assert (=> b!5817127 m!6753982))

(assert (=> b!5817099 d!1831170))

(declare-fun b!5817140 () Bool)

(declare-fun e!3570247 () Regex!15849)

(declare-fun e!3570246 () Regex!15849)

(assert (=> b!5817140 (= e!3570247 e!3570246)))

(declare-fun c!1030904 () Bool)

(assert (=> b!5817140 (= c!1030904 ((_ is Cons!63722) lt!2301556))))

(declare-fun d!1831172 () Bool)

(declare-fun e!3570248 () Bool)

(assert (=> d!1831172 e!3570248))

(declare-fun res!2453116 () Bool)

(assert (=> d!1831172 (=> (not res!2453116) (not e!3570248))))

(declare-fun lt!2301569 () Regex!15849)

(declare-fun dynLambda!24941 (Int Regex!15849) Bool)

(assert (=> d!1831172 (= res!2453116 (dynLambda!24941 lambda!318116 lt!2301569))))

(assert (=> d!1831172 (= lt!2301569 e!3570247)))

(declare-fun c!1030905 () Bool)

(declare-fun e!3570245 () Bool)

(assert (=> d!1831172 (= c!1030905 e!3570245)))

(declare-fun res!2453117 () Bool)

(assert (=> d!1831172 (=> (not res!2453117) (not e!3570245))))

(assert (=> d!1831172 (= res!2453117 ((_ is Cons!63722) lt!2301556))))

(assert (=> d!1831172 (exists!2265 lt!2301556 lambda!318116)))

(assert (=> d!1831172 (= (getWitness!916 lt!2301556 lambda!318116) lt!2301569)))

(declare-fun b!5817141 () Bool)

(assert (=> b!5817141 (= e!3570245 (dynLambda!24941 lambda!318116 (h!70170 lt!2301556)))))

(declare-fun b!5817142 () Bool)

(declare-fun lt!2301570 () Unit!156960)

(declare-fun Unit!156962 () Unit!156960)

(assert (=> b!5817142 (= lt!2301570 Unit!156962)))

(assert (=> b!5817142 false))

(declare-fun head!12284 (List!63846) Regex!15849)

(assert (=> b!5817142 (= e!3570246 (head!12284 lt!2301556))))

(declare-fun b!5817143 () Bool)

(assert (=> b!5817143 (= e!3570248 (contains!19889 lt!2301556 lt!2301569))))

(declare-fun b!5817144 () Bool)

(assert (=> b!5817144 (= e!3570247 (h!70170 lt!2301556))))

(declare-fun b!5817145 () Bool)

(assert (=> b!5817145 (= e!3570246 (getWitness!916 (t!377201 lt!2301556) lambda!318116))))

(assert (= (and d!1831172 res!2453117) b!5817141))

(assert (= (and d!1831172 c!1030905) b!5817144))

(assert (= (and d!1831172 (not c!1030905)) b!5817140))

(assert (= (and b!5817140 c!1030904) b!5817145))

(assert (= (and b!5817140 (not c!1030904)) b!5817142))

(assert (= (and d!1831172 res!2453116) b!5817143))

(declare-fun b_lambda!219253 () Bool)

(assert (=> (not b_lambda!219253) (not d!1831172)))

(declare-fun b_lambda!219255 () Bool)

(assert (=> (not b_lambda!219255) (not b!5817141)))

(declare-fun m!6753984 () Bool)

(assert (=> b!5817141 m!6753984))

(declare-fun m!6753986 () Bool)

(assert (=> b!5817142 m!6753986))

(declare-fun m!6753988 () Bool)

(assert (=> b!5817145 m!6753988))

(declare-fun m!6753990 () Bool)

(assert (=> d!1831172 m!6753990))

(assert (=> d!1831172 m!6753948))

(declare-fun m!6753992 () Bool)

(assert (=> b!5817143 m!6753992))

(assert (=> b!5817099 d!1831172))

(declare-fun d!1831176 () Bool)

(declare-fun lt!2301576 () Regex!15849)

(assert (=> d!1831176 (validRegex!7585 lt!2301576)))

(declare-fun generalisedUnion!1703 (List!63846) Regex!15849)

(assert (=> d!1831176 (= lt!2301576 (generalisedUnion!1703 (unfocusZipperList!1271 zl!343)))))

(assert (=> d!1831176 (= (unfocusZipper!1591 zl!343) lt!2301576)))

(declare-fun bs!1372820 () Bool)

(assert (= bs!1372820 d!1831176))

(declare-fun m!6754000 () Bool)

(assert (=> bs!1372820 m!6754000))

(assert (=> bs!1372820 m!6753958))

(assert (=> bs!1372820 m!6753958))

(declare-fun m!6754002 () Bool)

(assert (=> bs!1372820 m!6754002))

(assert (=> b!5817106 d!1831176))

(declare-fun bs!1372821 () Bool)

(declare-fun d!1831180 () Bool)

(assert (= bs!1372821 (and d!1831180 b!5817105)))

(declare-fun lambda!318119 () Int)

(assert (=> bs!1372821 (not (= lambda!318119 lambda!318116))))

(assert (=> d!1831180 true))

(declare-fun order!27217 () Int)

(declare-fun dynLambda!24943 (Int Int) Int)

(assert (=> d!1831180 (< (dynLambda!24943 order!27217 lambda!318116) (dynLambda!24943 order!27217 lambda!318119))))

(declare-fun forall!14944 (List!63846 Int) Bool)

(assert (=> d!1831180 (= (exists!2265 lt!2301556 lambda!318116) (not (forall!14944 lt!2301556 lambda!318119)))))

(declare-fun bs!1372822 () Bool)

(assert (= bs!1372822 d!1831180))

(declare-fun m!6754004 () Bool)

(assert (=> bs!1372822 m!6754004))

(assert (=> b!5817105 d!1831180))

(declare-fun bs!1372823 () Bool)

(declare-fun d!1831182 () Bool)

(assert (= bs!1372823 (and d!1831182 b!5817105)))

(declare-fun lambda!318124 () Int)

(assert (=> bs!1372823 (not (= lambda!318124 lambda!318116))))

(declare-fun bs!1372824 () Bool)

(assert (= bs!1372824 (and d!1831182 d!1831180)))

(assert (=> bs!1372824 (not (= lambda!318124 lambda!318119))))

(declare-fun lambda!318127 () Int)

(assert (=> bs!1372823 (= lambda!318127 lambda!318116)))

(assert (=> bs!1372824 (not (= lambda!318127 lambda!318119))))

(declare-fun bs!1372825 () Bool)

(assert (= bs!1372825 d!1831182))

(assert (=> bs!1372825 (not (= lambda!318127 lambda!318124))))

(assert (=> d!1831182 true))

(assert (=> d!1831182 (= (matchR!8034 r!7292 s!2326) (exists!2265 lt!2301556 lambda!318127))))

(declare-fun lt!2301585 () Unit!156960)

(declare-fun choose!44214 (Regex!15849 List!63846 List!63848) Unit!156960)

(assert (=> d!1831182 (= lt!2301585 (choose!44214 r!7292 lt!2301556 s!2326))))

(assert (=> d!1831182 (forall!14944 lt!2301556 lambda!318124)))

(assert (=> d!1831182 (= (matchRGenUnionSpec!290 r!7292 lt!2301556 s!2326) lt!2301585)))

(assert (=> bs!1372825 m!6753968))

(declare-fun m!6754016 () Bool)

(assert (=> bs!1372825 m!6754016))

(declare-fun m!6754018 () Bool)

(assert (=> bs!1372825 m!6754018))

(declare-fun m!6754020 () Bool)

(assert (=> bs!1372825 m!6754020))

(assert (=> b!5817105 d!1831182))

(declare-fun bs!1372831 () Bool)

(declare-fun d!1831188 () Bool)

(assert (= bs!1372831 (and d!1831188 b!5817105)))

(declare-fun lambda!318134 () Int)

(assert (=> bs!1372831 (not (= lambda!318134 lambda!318116))))

(declare-fun bs!1372832 () Bool)

(assert (= bs!1372832 (and d!1831188 d!1831180)))

(assert (=> bs!1372832 (not (= lambda!318134 lambda!318119))))

(declare-fun bs!1372833 () Bool)

(assert (= bs!1372833 (and d!1831188 d!1831182)))

(assert (=> bs!1372833 (= lambda!318134 lambda!318124)))

(assert (=> bs!1372833 (not (= lambda!318134 lambda!318127))))

(declare-fun lt!2301588 () List!63846)

(assert (=> d!1831188 (forall!14944 lt!2301588 lambda!318134)))

(declare-fun e!3570271 () List!63846)

(assert (=> d!1831188 (= lt!2301588 e!3570271)))

(declare-fun c!1030914 () Bool)

(assert (=> d!1831188 (= c!1030914 ((_ is Cons!63723) zl!343))))

(assert (=> d!1831188 (= (unfocusZipperList!1271 zl!343) lt!2301588)))

(declare-fun b!5817180 () Bool)

(declare-fun generalisedConcat!1455 (List!63846) Regex!15849)

(assert (=> b!5817180 (= e!3570271 (Cons!63722 (generalisedConcat!1455 (exprs!5733 (h!70171 zl!343))) (unfocusZipperList!1271 (t!377202 zl!343))))))

(declare-fun b!5817181 () Bool)

(assert (=> b!5817181 (= e!3570271 Nil!63722)))

(assert (= (and d!1831188 c!1030914) b!5817180))

(assert (= (and d!1831188 (not c!1030914)) b!5817181))

(declare-fun m!6754026 () Bool)

(assert (=> d!1831188 m!6754026))

(declare-fun m!6754028 () Bool)

(assert (=> b!5817180 m!6754028))

(declare-fun m!6754030 () Bool)

(assert (=> b!5817180 m!6754030))

(assert (=> b!5817105 d!1831188))

(declare-fun b!5817247 () Bool)

(assert (=> b!5817247 true))

(assert (=> b!5817247 true))

(declare-fun bs!1372849 () Bool)

(declare-fun b!5817243 () Bool)

(assert (= bs!1372849 (and b!5817243 b!5817247)))

(declare-fun lambda!318150 () Int)

(declare-fun lambda!318149 () Int)

(assert (=> bs!1372849 (not (= lambda!318150 lambda!318149))))

(assert (=> b!5817243 true))

(assert (=> b!5817243 true))

(declare-fun b!5817240 () Bool)

(declare-fun e!3570309 () Bool)

(declare-fun e!3570311 () Bool)

(assert (=> b!5817240 (= e!3570309 e!3570311)))

(declare-fun res!2453160 () Bool)

(assert (=> b!5817240 (= res!2453160 (matchRSpec!2952 (regOne!32211 r!7292) s!2326))))

(assert (=> b!5817240 (=> res!2453160 e!3570311)))

(declare-fun b!5817241 () Bool)

(declare-fun c!1030933 () Bool)

(assert (=> b!5817241 (= c!1030933 ((_ is ElementMatch!15849) r!7292))))

(declare-fun e!3570315 () Bool)

(declare-fun e!3570314 () Bool)

(assert (=> b!5817241 (= e!3570315 e!3570314)))

(declare-fun b!5817242 () Bool)

(assert (=> b!5817242 (= e!3570314 (= s!2326 (Cons!63724 (c!1030899 r!7292) Nil!63724)))))

(declare-fun bm!454302 () Bool)

(declare-fun call!454307 () Bool)

(declare-fun isEmpty!35625 (List!63848) Bool)

(assert (=> bm!454302 (= call!454307 (isEmpty!35625 s!2326))))

(declare-fun e!3570313 () Bool)

(declare-fun call!454308 () Bool)

(assert (=> b!5817243 (= e!3570313 call!454308)))

(declare-fun bm!454303 () Bool)

(declare-fun c!1030930 () Bool)

(declare-fun Exists!2940 (Int) Bool)

(assert (=> bm!454303 (= call!454308 (Exists!2940 (ite c!1030930 lambda!318149 lambda!318150)))))

(declare-fun b!5817244 () Bool)

(declare-fun res!2453161 () Bool)

(declare-fun e!3570312 () Bool)

(assert (=> b!5817244 (=> res!2453161 e!3570312)))

(assert (=> b!5817244 (= res!2453161 call!454307)))

(assert (=> b!5817244 (= e!3570313 e!3570312)))

(declare-fun b!5817245 () Bool)

(declare-fun e!3570310 () Bool)

(assert (=> b!5817245 (= e!3570310 call!454307)))

(declare-fun d!1831194 () Bool)

(declare-fun c!1030931 () Bool)

(assert (=> d!1831194 (= c!1030931 ((_ is EmptyExpr!15849) r!7292))))

(assert (=> d!1831194 (= (matchRSpec!2952 r!7292 s!2326) e!3570310)))

(declare-fun b!5817246 () Bool)

(assert (=> b!5817246 (= e!3570310 e!3570315)))

(declare-fun res!2453162 () Bool)

(assert (=> b!5817246 (= res!2453162 (not ((_ is EmptyLang!15849) r!7292)))))

(assert (=> b!5817246 (=> (not res!2453162) (not e!3570315))))

(assert (=> b!5817247 (= e!3570312 call!454308)))

(declare-fun b!5817248 () Bool)

(declare-fun c!1030932 () Bool)

(assert (=> b!5817248 (= c!1030932 ((_ is Union!15849) r!7292))))

(assert (=> b!5817248 (= e!3570314 e!3570309)))

(declare-fun b!5817249 () Bool)

(assert (=> b!5817249 (= e!3570311 (matchRSpec!2952 (regTwo!32211 r!7292) s!2326))))

(declare-fun b!5817250 () Bool)

(assert (=> b!5817250 (= e!3570309 e!3570313)))

(assert (=> b!5817250 (= c!1030930 ((_ is Star!15849) r!7292))))

(assert (= (and d!1831194 c!1030931) b!5817245))

(assert (= (and d!1831194 (not c!1030931)) b!5817246))

(assert (= (and b!5817246 res!2453162) b!5817241))

(assert (= (and b!5817241 c!1030933) b!5817242))

(assert (= (and b!5817241 (not c!1030933)) b!5817248))

(assert (= (and b!5817248 c!1030932) b!5817240))

(assert (= (and b!5817248 (not c!1030932)) b!5817250))

(assert (= (and b!5817240 (not res!2453160)) b!5817249))

(assert (= (and b!5817250 c!1030930) b!5817244))

(assert (= (and b!5817250 (not c!1030930)) b!5817243))

(assert (= (and b!5817244 (not res!2453161)) b!5817247))

(assert (= (or b!5817247 b!5817243) bm!454303))

(assert (= (or b!5817245 b!5817244) bm!454302))

(declare-fun m!6754050 () Bool)

(assert (=> b!5817240 m!6754050))

(declare-fun m!6754052 () Bool)

(assert (=> bm!454302 m!6754052))

(declare-fun m!6754054 () Bool)

(assert (=> bm!454303 m!6754054))

(declare-fun m!6754056 () Bool)

(assert (=> b!5817249 m!6754056))

(assert (=> b!5817115 d!1831194))

(declare-fun bm!454309 () Bool)

(declare-fun call!454314 () Bool)

(assert (=> bm!454309 (= call!454314 (isEmpty!35625 s!2326))))

(declare-fun b!5817324 () Bool)

(declare-fun e!3570360 () Bool)

(declare-fun head!12286 (List!63848) C!31968)

(assert (=> b!5817324 (= e!3570360 (not (= (head!12286 s!2326) (c!1030899 r!7292))))))

(declare-fun b!5817325 () Bool)

(declare-fun res!2453206 () Bool)

(declare-fun e!3570356 () Bool)

(assert (=> b!5817325 (=> res!2453206 e!3570356)))

(assert (=> b!5817325 (= res!2453206 (not ((_ is ElementMatch!15849) r!7292)))))

(declare-fun e!3570359 () Bool)

(assert (=> b!5817325 (= e!3570359 e!3570356)))

(declare-fun d!1831204 () Bool)

(declare-fun e!3570355 () Bool)

(assert (=> d!1831204 e!3570355))

(declare-fun c!1030951 () Bool)

(assert (=> d!1831204 (= c!1030951 ((_ is EmptyExpr!15849) r!7292))))

(declare-fun lt!2301600 () Bool)

(declare-fun e!3570358 () Bool)

(assert (=> d!1831204 (= lt!2301600 e!3570358)))

(declare-fun c!1030952 () Bool)

(assert (=> d!1831204 (= c!1030952 (isEmpty!35625 s!2326))))

(assert (=> d!1831204 (validRegex!7585 r!7292)))

(assert (=> d!1831204 (= (matchR!8034 r!7292 s!2326) lt!2301600)))

(declare-fun b!5817326 () Bool)

(declare-fun e!3570361 () Bool)

(assert (=> b!5817326 (= e!3570356 e!3570361)))

(declare-fun res!2453207 () Bool)

(assert (=> b!5817326 (=> (not res!2453207) (not e!3570361))))

(assert (=> b!5817326 (= res!2453207 (not lt!2301600))))

(declare-fun b!5817327 () Bool)

(assert (=> b!5817327 (= e!3570355 e!3570359)))

(declare-fun c!1030950 () Bool)

(assert (=> b!5817327 (= c!1030950 ((_ is EmptyLang!15849) r!7292))))

(declare-fun b!5817328 () Bool)

(assert (=> b!5817328 (= e!3570359 (not lt!2301600))))

(declare-fun b!5817329 () Bool)

(declare-fun derivativeStep!4605 (Regex!15849 C!31968) Regex!15849)

(declare-fun tail!11377 (List!63848) List!63848)

(assert (=> b!5817329 (= e!3570358 (matchR!8034 (derivativeStep!4605 r!7292 (head!12286 s!2326)) (tail!11377 s!2326)))))

(declare-fun b!5817330 () Bool)

(declare-fun res!2453201 () Bool)

(assert (=> b!5817330 (=> res!2453201 e!3570356)))

(declare-fun e!3570357 () Bool)

(assert (=> b!5817330 (= res!2453201 e!3570357)))

(declare-fun res!2453204 () Bool)

(assert (=> b!5817330 (=> (not res!2453204) (not e!3570357))))

(assert (=> b!5817330 (= res!2453204 lt!2301600)))

(declare-fun b!5817331 () Bool)

(assert (=> b!5817331 (= e!3570361 e!3570360)))

(declare-fun res!2453202 () Bool)

(assert (=> b!5817331 (=> res!2453202 e!3570360)))

(assert (=> b!5817331 (= res!2453202 call!454314)))

(declare-fun b!5817332 () Bool)

(declare-fun nullable!5864 (Regex!15849) Bool)

(assert (=> b!5817332 (= e!3570358 (nullable!5864 r!7292))))

(declare-fun b!5817333 () Bool)

(declare-fun res!2453205 () Bool)

(assert (=> b!5817333 (=> (not res!2453205) (not e!3570357))))

(assert (=> b!5817333 (= res!2453205 (isEmpty!35625 (tail!11377 s!2326)))))

(declare-fun b!5817334 () Bool)

(assert (=> b!5817334 (= e!3570355 (= lt!2301600 call!454314))))

(declare-fun b!5817335 () Bool)

(declare-fun res!2453203 () Bool)

(assert (=> b!5817335 (=> (not res!2453203) (not e!3570357))))

(assert (=> b!5817335 (= res!2453203 (not call!454314))))

(declare-fun b!5817336 () Bool)

(declare-fun res!2453200 () Bool)

(assert (=> b!5817336 (=> res!2453200 e!3570360)))

(assert (=> b!5817336 (= res!2453200 (not (isEmpty!35625 (tail!11377 s!2326))))))

(declare-fun b!5817337 () Bool)

(assert (=> b!5817337 (= e!3570357 (= (head!12286 s!2326) (c!1030899 r!7292)))))

(assert (= (and d!1831204 c!1030952) b!5817332))

(assert (= (and d!1831204 (not c!1030952)) b!5817329))

(assert (= (and d!1831204 c!1030951) b!5817334))

(assert (= (and d!1831204 (not c!1030951)) b!5817327))

(assert (= (and b!5817327 c!1030950) b!5817328))

(assert (= (and b!5817327 (not c!1030950)) b!5817325))

(assert (= (and b!5817325 (not res!2453206)) b!5817330))

(assert (= (and b!5817330 res!2453204) b!5817335))

(assert (= (and b!5817335 res!2453203) b!5817333))

(assert (= (and b!5817333 res!2453205) b!5817337))

(assert (= (and b!5817330 (not res!2453201)) b!5817326))

(assert (= (and b!5817326 res!2453207) b!5817331))

(assert (= (and b!5817331 (not res!2453202)) b!5817336))

(assert (= (and b!5817336 (not res!2453200)) b!5817324))

(assert (= (or b!5817334 b!5817335 b!5817331) bm!454309))

(declare-fun m!6754064 () Bool)

(assert (=> b!5817324 m!6754064))

(assert (=> d!1831204 m!6754052))

(assert (=> d!1831204 m!6753954))

(declare-fun m!6754066 () Bool)

(assert (=> b!5817336 m!6754066))

(assert (=> b!5817336 m!6754066))

(declare-fun m!6754068 () Bool)

(assert (=> b!5817336 m!6754068))

(assert (=> b!5817333 m!6754066))

(assert (=> b!5817333 m!6754066))

(assert (=> b!5817333 m!6754068))

(declare-fun m!6754070 () Bool)

(assert (=> b!5817332 m!6754070))

(assert (=> b!5817337 m!6754064))

(assert (=> b!5817329 m!6754064))

(assert (=> b!5817329 m!6754064))

(declare-fun m!6754072 () Bool)

(assert (=> b!5817329 m!6754072))

(assert (=> b!5817329 m!6754066))

(assert (=> b!5817329 m!6754072))

(assert (=> b!5817329 m!6754066))

(declare-fun m!6754074 () Bool)

(assert (=> b!5817329 m!6754074))

(assert (=> bm!454309 m!6754052))

(assert (=> b!5817115 d!1831204))

(declare-fun d!1831208 () Bool)

(assert (=> d!1831208 (= (matchR!8034 r!7292 s!2326) (matchRSpec!2952 r!7292 s!2326))))

(declare-fun lt!2301603 () Unit!156960)

(declare-fun choose!44216 (Regex!15849 List!63848) Unit!156960)

(assert (=> d!1831208 (= lt!2301603 (choose!44216 r!7292 s!2326))))

(assert (=> d!1831208 (validRegex!7585 r!7292)))

(assert (=> d!1831208 (= (mainMatchTheorem!2952 r!7292 s!2326) lt!2301603)))

(declare-fun bs!1372850 () Bool)

(assert (= bs!1372850 d!1831208))

(assert (=> bs!1372850 m!6753968))

(assert (=> bs!1372850 m!6753966))

(declare-fun m!6754076 () Bool)

(assert (=> bs!1372850 m!6754076))

(assert (=> bs!1372850 m!6753954))

(assert (=> b!5817115 d!1831208))

(declare-fun d!1831210 () Bool)

(assert (=> d!1831210 (= (isEmpty!35624 (t!377202 zl!343)) ((_ is Nil!63723) (t!377202 zl!343)))))

(assert (=> b!5817104 d!1831210))

(declare-fun b!5817371 () Bool)

(declare-fun e!3570387 () Bool)

(declare-fun call!454327 () Bool)

(assert (=> b!5817371 (= e!3570387 call!454327)))

(declare-fun b!5817372 () Bool)

(declare-fun e!3570389 () Bool)

(declare-fun e!3570383 () Bool)

(assert (=> b!5817372 (= e!3570389 e!3570383)))

(declare-fun c!1030961 () Bool)

(assert (=> b!5817372 (= c!1030961 ((_ is Union!15849) lt!2301557))))

(declare-fun b!5817373 () Bool)

(declare-fun e!3570386 () Bool)

(assert (=> b!5817373 (= e!3570386 e!3570389)))

(declare-fun c!1030962 () Bool)

(assert (=> b!5817373 (= c!1030962 ((_ is Star!15849) lt!2301557))))

(declare-fun d!1831212 () Bool)

(declare-fun res!2453222 () Bool)

(assert (=> d!1831212 (=> res!2453222 e!3570386)))

(assert (=> d!1831212 (= res!2453222 ((_ is ElementMatch!15849) lt!2301557))))

(assert (=> d!1831212 (= (validRegex!7585 lt!2301557) e!3570386)))

(declare-fun b!5817374 () Bool)

(declare-fun e!3570385 () Bool)

(assert (=> b!5817374 (= e!3570385 e!3570387)))

(declare-fun res!2453221 () Bool)

(assert (=> b!5817374 (=> (not res!2453221) (not e!3570387))))

(declare-fun call!454329 () Bool)

(assert (=> b!5817374 (= res!2453221 call!454329)))

(declare-fun b!5817375 () Bool)

(declare-fun e!3570388 () Bool)

(assert (=> b!5817375 (= e!3570389 e!3570388)))

(declare-fun res!2453225 () Bool)

(assert (=> b!5817375 (= res!2453225 (not (nullable!5864 (reg!16178 lt!2301557))))))

(assert (=> b!5817375 (=> (not res!2453225) (not e!3570388))))

(declare-fun b!5817376 () Bool)

(declare-fun e!3570384 () Bool)

(assert (=> b!5817376 (= e!3570384 call!454327)))

(declare-fun bm!454322 () Bool)

(assert (=> bm!454322 (= call!454329 (validRegex!7585 (ite c!1030961 (regOne!32211 lt!2301557) (regOne!32210 lt!2301557))))))

(declare-fun b!5817377 () Bool)

(declare-fun res!2453224 () Bool)

(assert (=> b!5817377 (=> res!2453224 e!3570385)))

(assert (=> b!5817377 (= res!2453224 (not ((_ is Concat!24694) lt!2301557)))))

(assert (=> b!5817377 (= e!3570383 e!3570385)))

(declare-fun bm!454323 () Bool)

(declare-fun call!454328 () Bool)

(assert (=> bm!454323 (= call!454327 call!454328)))

(declare-fun b!5817378 () Bool)

(declare-fun res!2453223 () Bool)

(assert (=> b!5817378 (=> (not res!2453223) (not e!3570384))))

(assert (=> b!5817378 (= res!2453223 call!454329)))

(assert (=> b!5817378 (= e!3570383 e!3570384)))

(declare-fun b!5817379 () Bool)

(assert (=> b!5817379 (= e!3570388 call!454328)))

(declare-fun bm!454324 () Bool)

(assert (=> bm!454324 (= call!454328 (validRegex!7585 (ite c!1030962 (reg!16178 lt!2301557) (ite c!1030961 (regTwo!32211 lt!2301557) (regTwo!32210 lt!2301557)))))))

(assert (= (and d!1831212 (not res!2453222)) b!5817373))

(assert (= (and b!5817373 c!1030962) b!5817375))

(assert (= (and b!5817373 (not c!1030962)) b!5817372))

(assert (= (and b!5817375 res!2453225) b!5817379))

(assert (= (and b!5817372 c!1030961) b!5817378))

(assert (= (and b!5817372 (not c!1030961)) b!5817377))

(assert (= (and b!5817378 res!2453223) b!5817376))

(assert (= (and b!5817377 (not res!2453224)) b!5817374))

(assert (= (and b!5817374 res!2453221) b!5817371))

(assert (= (or b!5817376 b!5817371) bm!454323))

(assert (= (or b!5817378 b!5817374) bm!454322))

(assert (= (or b!5817379 bm!454323) bm!454324))

(declare-fun m!6754086 () Bool)

(assert (=> b!5817375 m!6754086))

(declare-fun m!6754088 () Bool)

(assert (=> bm!454322 m!6754088))

(declare-fun m!6754090 () Bool)

(assert (=> bm!454324 m!6754090))

(assert (=> b!5817113 d!1831212))

(declare-fun b!5817394 () Bool)

(declare-fun e!3570402 () Bool)

(declare-fun call!454330 () Bool)

(assert (=> b!5817394 (= e!3570402 call!454330)))

(declare-fun b!5817395 () Bool)

(declare-fun e!3570404 () Bool)

(declare-fun e!3570396 () Bool)

(assert (=> b!5817395 (= e!3570404 e!3570396)))

(declare-fun c!1030969 () Bool)

(assert (=> b!5817395 (= c!1030969 ((_ is Union!15849) r!7292))))

(declare-fun b!5817396 () Bool)

(declare-fun e!3570401 () Bool)

(assert (=> b!5817396 (= e!3570401 e!3570404)))

(declare-fun c!1030970 () Bool)

(assert (=> b!5817396 (= c!1030970 ((_ is Star!15849) r!7292))))

(declare-fun d!1831216 () Bool)

(declare-fun res!2453227 () Bool)

(assert (=> d!1831216 (=> res!2453227 e!3570401)))

(assert (=> d!1831216 (= res!2453227 ((_ is ElementMatch!15849) r!7292))))

(assert (=> d!1831216 (= (validRegex!7585 r!7292) e!3570401)))

(declare-fun b!5817397 () Bool)

(declare-fun e!3570400 () Bool)

(assert (=> b!5817397 (= e!3570400 e!3570402)))

(declare-fun res!2453226 () Bool)

(assert (=> b!5817397 (=> (not res!2453226) (not e!3570402))))

(declare-fun call!454332 () Bool)

(assert (=> b!5817397 (= res!2453226 call!454332)))

(declare-fun b!5817398 () Bool)

(declare-fun e!3570403 () Bool)

(assert (=> b!5817398 (= e!3570404 e!3570403)))

(declare-fun res!2453232 () Bool)

(assert (=> b!5817398 (= res!2453232 (not (nullable!5864 (reg!16178 r!7292))))))

(assert (=> b!5817398 (=> (not res!2453232) (not e!3570403))))

(declare-fun b!5817399 () Bool)

(declare-fun e!3570397 () Bool)

(assert (=> b!5817399 (= e!3570397 call!454330)))

(declare-fun bm!454325 () Bool)

(assert (=> bm!454325 (= call!454332 (validRegex!7585 (ite c!1030969 (regOne!32211 r!7292) (regOne!32210 r!7292))))))

(declare-fun b!5817400 () Bool)

(declare-fun res!2453231 () Bool)

(assert (=> b!5817400 (=> res!2453231 e!3570400)))

(assert (=> b!5817400 (= res!2453231 (not ((_ is Concat!24694) r!7292)))))

(assert (=> b!5817400 (= e!3570396 e!3570400)))

(declare-fun bm!454326 () Bool)

(declare-fun call!454331 () Bool)

(assert (=> bm!454326 (= call!454330 call!454331)))

(declare-fun b!5817401 () Bool)

(declare-fun res!2453230 () Bool)

(assert (=> b!5817401 (=> (not res!2453230) (not e!3570397))))

(assert (=> b!5817401 (= res!2453230 call!454332)))

(assert (=> b!5817401 (= e!3570396 e!3570397)))

(declare-fun b!5817402 () Bool)

(assert (=> b!5817402 (= e!3570403 call!454331)))

(declare-fun bm!454327 () Bool)

(assert (=> bm!454327 (= call!454331 (validRegex!7585 (ite c!1030970 (reg!16178 r!7292) (ite c!1030969 (regTwo!32211 r!7292) (regTwo!32210 r!7292)))))))

(assert (= (and d!1831216 (not res!2453227)) b!5817396))

(assert (= (and b!5817396 c!1030970) b!5817398))

(assert (= (and b!5817396 (not c!1030970)) b!5817395))

(assert (= (and b!5817398 res!2453232) b!5817402))

(assert (= (and b!5817395 c!1030969) b!5817401))

(assert (= (and b!5817395 (not c!1030969)) b!5817400))

(assert (= (and b!5817401 res!2453230) b!5817399))

(assert (= (and b!5817400 (not res!2453231)) b!5817397))

(assert (= (and b!5817397 res!2453226) b!5817394))

(assert (= (or b!5817399 b!5817394) bm!454326))

(assert (= (or b!5817401 b!5817397) bm!454325))

(assert (= (or b!5817402 bm!454326) bm!454327))

(declare-fun m!6754092 () Bool)

(assert (=> b!5817398 m!6754092))

(declare-fun m!6754094 () Bool)

(assert (=> bm!454325 m!6754094))

(declare-fun m!6754096 () Bool)

(assert (=> bm!454327 m!6754096))

(assert (=> start!596040 d!1831216))

(declare-fun bs!1372852 () Bool)

(declare-fun d!1831218 () Bool)

(assert (= bs!1372852 (and d!1831218 d!1831182)))

(declare-fun lambda!318159 () Int)

(assert (=> bs!1372852 (= lambda!318159 lambda!318124)))

(declare-fun bs!1372853 () Bool)

(assert (= bs!1372853 (and d!1831218 d!1831180)))

(assert (=> bs!1372853 (not (= lambda!318159 lambda!318119))))

(declare-fun bs!1372854 () Bool)

(assert (= bs!1372854 (and d!1831218 d!1831188)))

(assert (=> bs!1372854 (= lambda!318159 lambda!318134)))

(assert (=> bs!1372852 (not (= lambda!318159 lambda!318127))))

(declare-fun bs!1372855 () Bool)

(assert (= bs!1372855 (and d!1831218 b!5817105)))

(assert (=> bs!1372855 (not (= lambda!318159 lambda!318116))))

(assert (=> d!1831218 (= (inv!82869 setElem!39238) (forall!14944 (exprs!5733 setElem!39238) lambda!318159))))

(declare-fun bs!1372856 () Bool)

(assert (= bs!1372856 d!1831218))

(declare-fun m!6754098 () Bool)

(assert (=> bs!1372856 m!6754098))

(assert (=> setNonEmpty!39238 d!1831218))

(declare-fun bs!1372857 () Bool)

(declare-fun d!1831220 () Bool)

(assert (= bs!1372857 (and d!1831220 d!1831182)))

(declare-fun lambda!318160 () Int)

(assert (=> bs!1372857 (= lambda!318160 lambda!318124)))

(declare-fun bs!1372858 () Bool)

(assert (= bs!1372858 (and d!1831220 d!1831180)))

(assert (=> bs!1372858 (not (= lambda!318160 lambda!318119))))

(declare-fun bs!1372859 () Bool)

(assert (= bs!1372859 (and d!1831220 d!1831188)))

(assert (=> bs!1372859 (= lambda!318160 lambda!318134)))

(assert (=> bs!1372857 (not (= lambda!318160 lambda!318127))))

(declare-fun bs!1372860 () Bool)

(assert (= bs!1372860 (and d!1831220 d!1831218)))

(assert (=> bs!1372860 (= lambda!318160 lambda!318159)))

(declare-fun bs!1372861 () Bool)

(assert (= bs!1372861 (and d!1831220 b!5817105)))

(assert (=> bs!1372861 (not (= lambda!318160 lambda!318116))))

(assert (=> d!1831220 (= (inv!82869 (h!70171 zl!343)) (forall!14944 (exprs!5733 (h!70171 zl!343)) lambda!318160))))

(declare-fun bs!1372862 () Bool)

(assert (= bs!1372862 d!1831220))

(declare-fun m!6754100 () Bool)

(assert (=> bs!1372862 m!6754100))

(assert (=> b!5817103 d!1831220))

(assert (=> b!5817110 d!1831180))

(assert (=> b!5817102 d!1831210))

(declare-fun b!5817421 () Bool)

(declare-fun e!3570413 () Bool)

(declare-fun tp!1605089 () Bool)

(declare-fun tp!1605090 () Bool)

(assert (=> b!5817421 (= e!3570413 (and tp!1605089 tp!1605090))))

(assert (=> b!5817114 (= tp!1605084 e!3570413)))

(assert (= (and b!5817114 ((_ is Cons!63722) (exprs!5733 setElem!39238))) b!5817421))

(declare-fun b!5817448 () Bool)

(declare-fun e!3570423 () Bool)

(declare-fun tp!1605102 () Bool)

(assert (=> b!5817448 (= e!3570423 tp!1605102)))

(declare-fun b!5817446 () Bool)

(assert (=> b!5817446 (= e!3570423 tp_is_empty!40951)))

(assert (=> b!5817101 (= tp!1605082 e!3570423)))

(declare-fun b!5817449 () Bool)

(declare-fun tp!1605101 () Bool)

(declare-fun tp!1605104 () Bool)

(assert (=> b!5817449 (= e!3570423 (and tp!1605101 tp!1605104))))

(declare-fun b!5817447 () Bool)

(declare-fun tp!1605105 () Bool)

(declare-fun tp!1605103 () Bool)

(assert (=> b!5817447 (= e!3570423 (and tp!1605105 tp!1605103))))

(assert (= (and b!5817101 ((_ is ElementMatch!15849) (reg!16178 r!7292))) b!5817446))

(assert (= (and b!5817101 ((_ is Concat!24694) (reg!16178 r!7292))) b!5817447))

(assert (= (and b!5817101 ((_ is Star!15849) (reg!16178 r!7292))) b!5817448))

(assert (= (and b!5817101 ((_ is Union!15849) (reg!16178 r!7292))) b!5817449))

(declare-fun b!5817452 () Bool)

(declare-fun e!3570424 () Bool)

(declare-fun tp!1605107 () Bool)

(assert (=> b!5817452 (= e!3570424 tp!1605107)))

(declare-fun b!5817450 () Bool)

(assert (=> b!5817450 (= e!3570424 tp_is_empty!40951)))

(assert (=> b!5817109 (= tp!1605080 e!3570424)))

(declare-fun b!5817453 () Bool)

(declare-fun tp!1605106 () Bool)

(declare-fun tp!1605109 () Bool)

(assert (=> b!5817453 (= e!3570424 (and tp!1605106 tp!1605109))))

(declare-fun b!5817451 () Bool)

(declare-fun tp!1605110 () Bool)

(declare-fun tp!1605108 () Bool)

(assert (=> b!5817451 (= e!3570424 (and tp!1605110 tp!1605108))))

(assert (= (and b!5817109 ((_ is ElementMatch!15849) (regOne!32211 r!7292))) b!5817450))

(assert (= (and b!5817109 ((_ is Concat!24694) (regOne!32211 r!7292))) b!5817451))

(assert (= (and b!5817109 ((_ is Star!15849) (regOne!32211 r!7292))) b!5817452))

(assert (= (and b!5817109 ((_ is Union!15849) (regOne!32211 r!7292))) b!5817453))

(declare-fun b!5817456 () Bool)

(declare-fun e!3570425 () Bool)

(declare-fun tp!1605112 () Bool)

(assert (=> b!5817456 (= e!3570425 tp!1605112)))

(declare-fun b!5817454 () Bool)

(assert (=> b!5817454 (= e!3570425 tp_is_empty!40951)))

(assert (=> b!5817109 (= tp!1605075 e!3570425)))

(declare-fun b!5817457 () Bool)

(declare-fun tp!1605111 () Bool)

(declare-fun tp!1605114 () Bool)

(assert (=> b!5817457 (= e!3570425 (and tp!1605111 tp!1605114))))

(declare-fun b!5817455 () Bool)

(declare-fun tp!1605115 () Bool)

(declare-fun tp!1605113 () Bool)

(assert (=> b!5817455 (= e!3570425 (and tp!1605115 tp!1605113))))

(assert (= (and b!5817109 ((_ is ElementMatch!15849) (regTwo!32211 r!7292))) b!5817454))

(assert (= (and b!5817109 ((_ is Concat!24694) (regTwo!32211 r!7292))) b!5817455))

(assert (= (and b!5817109 ((_ is Star!15849) (regTwo!32211 r!7292))) b!5817456))

(assert (= (and b!5817109 ((_ is Union!15849) (regTwo!32211 r!7292))) b!5817457))

(declare-fun condSetEmpty!39241 () Bool)

(assert (=> setNonEmpty!39238 (= condSetEmpty!39241 (= setRest!39238 ((as const (Array Context!10466 Bool)) false)))))

(declare-fun setRes!39241 () Bool)

(assert (=> setNonEmpty!39238 (= tp!1605077 setRes!39241)))

(declare-fun setIsEmpty!39241 () Bool)

(assert (=> setIsEmpty!39241 setRes!39241))

(declare-fun setElem!39241 () Context!10466)

(declare-fun tp!1605121 () Bool)

(declare-fun setNonEmpty!39241 () Bool)

(declare-fun e!3570428 () Bool)

(assert (=> setNonEmpty!39241 (= setRes!39241 (and tp!1605121 (inv!82869 setElem!39241) e!3570428))))

(declare-fun setRest!39241 () (InoxSet Context!10466))

(assert (=> setNonEmpty!39241 (= setRest!39238 ((_ map or) (store ((as const (Array Context!10466 Bool)) false) setElem!39241 true) setRest!39241))))

(declare-fun b!5817462 () Bool)

(declare-fun tp!1605120 () Bool)

(assert (=> b!5817462 (= e!3570428 tp!1605120)))

(assert (= (and setNonEmpty!39238 condSetEmpty!39241) setIsEmpty!39241))

(assert (= (and setNonEmpty!39238 (not condSetEmpty!39241)) setNonEmpty!39241))

(assert (= setNonEmpty!39241 b!5817462))

(declare-fun m!6754114 () Bool)

(assert (=> setNonEmpty!39241 m!6754114))

(declare-fun b!5817470 () Bool)

(declare-fun e!3570434 () Bool)

(declare-fun tp!1605126 () Bool)

(assert (=> b!5817470 (= e!3570434 tp!1605126)))

(declare-fun b!5817469 () Bool)

(declare-fun e!3570433 () Bool)

(declare-fun tp!1605127 () Bool)

(assert (=> b!5817469 (= e!3570433 (and (inv!82869 (h!70171 (t!377202 zl!343))) e!3570434 tp!1605127))))

(assert (=> b!5817103 (= tp!1605076 e!3570433)))

(assert (= b!5817469 b!5817470))

(assert (= (and b!5817103 ((_ is Cons!63723) (t!377202 zl!343))) b!5817469))

(declare-fun m!6754116 () Bool)

(assert (=> b!5817469 m!6754116))

(declare-fun b!5817475 () Bool)

(declare-fun e!3570437 () Bool)

(declare-fun tp!1605130 () Bool)

(assert (=> b!5817475 (= e!3570437 (and tp_is_empty!40951 tp!1605130))))

(assert (=> b!5817112 (= tp!1605081 e!3570437)))

(assert (= (and b!5817112 ((_ is Cons!63724) (t!377203 s!2326))) b!5817475))

(declare-fun b!5817478 () Bool)

(declare-fun e!3570438 () Bool)

(declare-fun tp!1605132 () Bool)

(assert (=> b!5817478 (= e!3570438 tp!1605132)))

(declare-fun b!5817476 () Bool)

(assert (=> b!5817476 (= e!3570438 tp_is_empty!40951)))

(assert (=> b!5817108 (= tp!1605083 e!3570438)))

(declare-fun b!5817479 () Bool)

(declare-fun tp!1605131 () Bool)

(declare-fun tp!1605134 () Bool)

(assert (=> b!5817479 (= e!3570438 (and tp!1605131 tp!1605134))))

(declare-fun b!5817477 () Bool)

(declare-fun tp!1605135 () Bool)

(declare-fun tp!1605133 () Bool)

(assert (=> b!5817477 (= e!3570438 (and tp!1605135 tp!1605133))))

(assert (= (and b!5817108 ((_ is ElementMatch!15849) (regOne!32210 r!7292))) b!5817476))

(assert (= (and b!5817108 ((_ is Concat!24694) (regOne!32210 r!7292))) b!5817477))

(assert (= (and b!5817108 ((_ is Star!15849) (regOne!32210 r!7292))) b!5817478))

(assert (= (and b!5817108 ((_ is Union!15849) (regOne!32210 r!7292))) b!5817479))

(declare-fun b!5817482 () Bool)

(declare-fun e!3570439 () Bool)

(declare-fun tp!1605137 () Bool)

(assert (=> b!5817482 (= e!3570439 tp!1605137)))

(declare-fun b!5817480 () Bool)

(assert (=> b!5817480 (= e!3570439 tp_is_empty!40951)))

(assert (=> b!5817108 (= tp!1605079 e!3570439)))

(declare-fun b!5817483 () Bool)

(declare-fun tp!1605136 () Bool)

(declare-fun tp!1605139 () Bool)

(assert (=> b!5817483 (= e!3570439 (and tp!1605136 tp!1605139))))

(declare-fun b!5817481 () Bool)

(declare-fun tp!1605140 () Bool)

(declare-fun tp!1605138 () Bool)

(assert (=> b!5817481 (= e!3570439 (and tp!1605140 tp!1605138))))

(assert (= (and b!5817108 ((_ is ElementMatch!15849) (regTwo!32210 r!7292))) b!5817480))

(assert (= (and b!5817108 ((_ is Concat!24694) (regTwo!32210 r!7292))) b!5817481))

(assert (= (and b!5817108 ((_ is Star!15849) (regTwo!32210 r!7292))) b!5817482))

(assert (= (and b!5817108 ((_ is Union!15849) (regTwo!32210 r!7292))) b!5817483))

(declare-fun b!5817484 () Bool)

(declare-fun e!3570440 () Bool)

(declare-fun tp!1605141 () Bool)

(declare-fun tp!1605142 () Bool)

(assert (=> b!5817484 (= e!3570440 (and tp!1605141 tp!1605142))))

(assert (=> b!5817116 (= tp!1605078 e!3570440)))

(assert (= (and b!5817116 ((_ is Cons!63722) (exprs!5733 (h!70171 zl!343)))) b!5817484))

(declare-fun b_lambda!219261 () Bool)

(assert (= b_lambda!219255 (or b!5817105 b_lambda!219261)))

(declare-fun bs!1372863 () Bool)

(declare-fun d!1831224 () Bool)

(assert (= bs!1372863 (and d!1831224 b!5817105)))

(declare-fun res!2453255 () Bool)

(declare-fun e!3570441 () Bool)

(assert (=> bs!1372863 (=> (not res!2453255) (not e!3570441))))

(assert (=> bs!1372863 (= res!2453255 (validRegex!7585 (h!70170 lt!2301556)))))

(assert (=> bs!1372863 (= (dynLambda!24941 lambda!318116 (h!70170 lt!2301556)) e!3570441)))

(declare-fun b!5817485 () Bool)

(assert (=> b!5817485 (= e!3570441 (matchR!8034 (h!70170 lt!2301556) s!2326))))

(assert (= (and bs!1372863 res!2453255) b!5817485))

(declare-fun m!6754118 () Bool)

(assert (=> bs!1372863 m!6754118))

(declare-fun m!6754120 () Bool)

(assert (=> b!5817485 m!6754120))

(assert (=> b!5817141 d!1831224))

(declare-fun b_lambda!219263 () Bool)

(assert (= b_lambda!219253 (or b!5817105 b_lambda!219263)))

(declare-fun bs!1372864 () Bool)

(declare-fun d!1831226 () Bool)

(assert (= bs!1372864 (and d!1831226 b!5817105)))

(declare-fun res!2453256 () Bool)

(declare-fun e!3570442 () Bool)

(assert (=> bs!1372864 (=> (not res!2453256) (not e!3570442))))

(assert (=> bs!1372864 (= res!2453256 (validRegex!7585 lt!2301569))))

(assert (=> bs!1372864 (= (dynLambda!24941 lambda!318116 lt!2301569) e!3570442)))

(declare-fun b!5817486 () Bool)

(assert (=> b!5817486 (= e!3570442 (matchR!8034 lt!2301569 s!2326))))

(assert (= (and bs!1372864 res!2453256) b!5817486))

(declare-fun m!6754124 () Bool)

(assert (=> bs!1372864 m!6754124))

(declare-fun m!6754126 () Bool)

(assert (=> b!5817486 m!6754126))

(assert (=> d!1831172 d!1831226))

(check-sat (not b_lambda!219263) (not d!1831172) (not b!5817483) (not d!1831218) (not b!5817485) (not b_lambda!219261) (not d!1831176) (not b!5817121) (not bm!454303) (not b!5817127) (not b!5817336) (not b!5817477) (not b!5817240) (not b!5817447) (not b!5817324) (not bm!454325) (not b!5817451) (not bm!454327) (not b!5817486) (not d!1831170) (not b!5817452) (not b!5817453) (not b!5817482) (not bs!1372863) (not b!5817481) (not b!5817180) (not d!1831204) (not bm!454309) (not d!1831168) (not bm!454324) (not b!5817333) tp_is_empty!40951 (not b!5817143) (not bm!454302) (not d!1831180) (not b!5817456) (not bm!454322) (not b!5817484) (not b!5817448) (not d!1831182) (not b!5817249) (not b!5817455) (not b!5817398) (not b!5817457) (not b!5817449) (not b!5817475) (not b!5817332) (not d!1831208) (not setNonEmpty!39241) (not b!5817479) (not b!5817421) (not bs!1372864) (not d!1831188) (not b!5817145) (not d!1831220) (not b!5817478) (not b!5817470) (not b!5817462) (not b!5817375) (not b!5817329) (not b!5817469) (not b!5817142) (not b!5817337))
(check-sat)
