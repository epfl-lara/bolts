; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664094 () Bool)

(assert start!664094)

(declare-fun b!6886306 () Bool)

(assert (=> b!6886306 true))

(assert (=> b!6886306 true))

(assert (=> b!6886306 true))

(declare-fun lambda!390045 () Int)

(declare-fun lambda!390044 () Int)

(assert (=> b!6886306 (not (= lambda!390045 lambda!390044))))

(assert (=> b!6886306 true))

(assert (=> b!6886306 true))

(assert (=> b!6886306 true))

(declare-fun bs!1838623 () Bool)

(declare-fun b!6886310 () Bool)

(assert (= bs!1838623 (and b!6886310 b!6886306)))

(declare-datatypes ((C!33852 0))(
  ( (C!33853 (val!26628 Int)) )
))
(declare-datatypes ((Regex!16791 0))(
  ( (ElementMatch!16791 (c!1280623 C!33852)) (Concat!25636 (regOne!34094 Regex!16791) (regTwo!34094 Regex!16791)) (EmptyExpr!16791) (Star!16791 (reg!17120 Regex!16791)) (EmptyLang!16791) (Union!16791 (regOne!34095 Regex!16791) (regTwo!34095 Regex!16791)) )
))
(declare-fun r1!6342 () Regex!16791)

(declare-fun r3!135 () Regex!16791)

(declare-datatypes ((List!66548 0))(
  ( (Nil!66424) (Cons!66424 (h!72872 C!33852) (t!380291 List!66548)) )
))
(declare-datatypes ((tuple2!67328 0))(
  ( (tuple2!67329 (_1!36967 List!66548) (_2!36967 List!66548)) )
))
(declare-fun lt!2461268 () tuple2!67328)

(declare-fun s!14361 () List!66548)

(declare-fun lambda!390046 () Int)

(declare-fun lt!2461267 () Regex!16791)

(declare-fun r2!6280 () Regex!16791)

(assert (=> bs!1838623 (= (and (= (_1!36967 lt!2461268) s!14361) (= r1!6342 lt!2461267) (= r2!6280 r3!135)) (= lambda!390046 lambda!390044))))

(assert (=> bs!1838623 (not (= lambda!390046 lambda!390045))))

(assert (=> b!6886310 true))

(assert (=> b!6886310 true))

(assert (=> b!6886310 true))

(declare-fun lambda!390047 () Int)

(assert (=> bs!1838623 (not (= lambda!390047 lambda!390044))))

(assert (=> bs!1838623 (= (and (= (_1!36967 lt!2461268) s!14361) (= r1!6342 lt!2461267) (= r2!6280 r3!135)) (= lambda!390047 lambda!390045))))

(assert (=> b!6886310 (not (= lambda!390047 lambda!390046))))

(assert (=> b!6886310 true))

(assert (=> b!6886310 true))

(assert (=> b!6886310 true))

(declare-fun bs!1838624 () Bool)

(declare-fun b!6886300 () Bool)

(assert (= bs!1838624 (and b!6886300 b!6886306)))

(declare-fun lt!2461274 () List!66548)

(declare-fun lambda!390048 () Int)

(assert (=> bs!1838624 (= (and (= lt!2461274 s!14361) (= r2!6280 lt!2461267)) (= lambda!390048 lambda!390044))))

(assert (=> bs!1838624 (not (= lambda!390048 lambda!390045))))

(declare-fun bs!1838625 () Bool)

(assert (= bs!1838625 (and b!6886300 b!6886310)))

(assert (=> bs!1838625 (= (and (= lt!2461274 (_1!36967 lt!2461268)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390048 lambda!390046))))

(assert (=> bs!1838625 (not (= lambda!390048 lambda!390047))))

(assert (=> b!6886300 true))

(assert (=> b!6886300 true))

(assert (=> b!6886300 true))

(declare-fun b!6886290 () Bool)

(declare-fun e!4149034 () Bool)

(declare-fun tp_is_empty!42807 () Bool)

(declare-fun tp!1894546 () Bool)

(assert (=> b!6886290 (= e!4149034 (and tp_is_empty!42807 tp!1894546))))

(declare-fun b!6886291 () Bool)

(declare-fun e!4149038 () Bool)

(declare-fun tp!1894537 () Bool)

(declare-fun tp!1894549 () Bool)

(assert (=> b!6886291 (= e!4149038 (and tp!1894537 tp!1894549))))

(declare-fun b!6886292 () Bool)

(declare-fun e!4149035 () Bool)

(declare-fun e!4149036 () Bool)

(assert (=> b!6886292 (= e!4149035 e!4149036)))

(declare-fun res!2807290 () Bool)

(assert (=> b!6886292 (=> res!2807290 e!4149036)))

(declare-fun lt!2461270 () tuple2!67328)

(declare-fun ++!14870 (List!66548 List!66548) List!66548)

(assert (=> b!6886292 (= res!2807290 (not (= (++!14870 (++!14870 (_1!36967 lt!2461270) (_2!36967 lt!2461270)) (_2!36967 lt!2461268)) s!14361)))))

(declare-fun matchRSpec!3854 (Regex!16791 List!66548) Bool)

(assert (=> b!6886292 (matchRSpec!3854 r2!6280 (_2!36967 lt!2461270))))

(declare-datatypes ((Unit!160302 0))(
  ( (Unit!160303) )
))
(declare-fun lt!2461261 () Unit!160302)

(declare-fun mainMatchTheorem!3854 (Regex!16791 List!66548) Unit!160302)

(assert (=> b!6886292 (= lt!2461261 (mainMatchTheorem!3854 r2!6280 (_2!36967 lt!2461270)))))

(assert (=> b!6886292 (matchRSpec!3854 r1!6342 (_1!36967 lt!2461270))))

(declare-fun lt!2461269 () Unit!160302)

(assert (=> b!6886292 (= lt!2461269 (mainMatchTheorem!3854 r1!6342 (_1!36967 lt!2461270)))))

(declare-fun b!6886293 () Bool)

(declare-fun e!4149037 () Bool)

(declare-fun tp!1894538 () Bool)

(declare-fun tp!1894544 () Bool)

(assert (=> b!6886293 (= e!4149037 (and tp!1894538 tp!1894544))))

(declare-fun b!6886294 () Bool)

(declare-fun tp!1894545 () Bool)

(declare-fun tp!1894539 () Bool)

(assert (=> b!6886294 (= e!4149038 (and tp!1894545 tp!1894539))))

(declare-fun b!6886295 () Bool)

(assert (=> b!6886295 (= e!4149038 tp_is_empty!42807)))

(declare-fun res!2807295 () Bool)

(declare-fun e!4149032 () Bool)

(assert (=> start!664094 (=> (not res!2807295) (not e!4149032))))

(declare-fun validRegex!8499 (Regex!16791) Bool)

(assert (=> start!664094 (= res!2807295 (validRegex!8499 r1!6342))))

(assert (=> start!664094 e!4149032))

(assert (=> start!664094 e!4149037))

(declare-fun e!4149030 () Bool)

(assert (=> start!664094 e!4149030))

(assert (=> start!664094 e!4149038))

(assert (=> start!664094 e!4149034))

(declare-fun b!6886296 () Bool)

(declare-fun res!2807292 () Bool)

(assert (=> b!6886296 (=> (not res!2807292) (not e!4149032))))

(assert (=> b!6886296 (= res!2807292 (validRegex!8499 r3!135))))

(declare-fun b!6886297 () Bool)

(assert (=> b!6886297 (= e!4149030 tp_is_empty!42807)))

(declare-fun b!6886298 () Bool)

(declare-fun res!2807293 () Bool)

(assert (=> b!6886298 (=> (not res!2807293) (not e!4149032))))

(assert (=> b!6886298 (= res!2807293 (validRegex!8499 r2!6280))))

(declare-fun b!6886299 () Bool)

(declare-fun res!2807294 () Bool)

(assert (=> b!6886299 (=> res!2807294 e!4149035)))

(declare-fun matchR!8936 (Regex!16791 List!66548) Bool)

(assert (=> b!6886299 (= res!2807294 (not (matchR!8936 r2!6280 (_2!36967 lt!2461270))))))

(assert (=> b!6886300 (= e!4149036 true)))

(declare-datatypes ((Option!16576 0))(
  ( (None!16575) (Some!16575 (v!52847 tuple2!67328)) )
))
(declare-fun isDefined!13279 (Option!16576) Bool)

(declare-fun findConcatSeparation!2990 (Regex!16791 Regex!16791 List!66548 List!66548 List!66548) Option!16576)

(declare-fun Exists!3803 (Int) Bool)

(assert (=> b!6886300 (= (isDefined!13279 (findConcatSeparation!2990 r2!6280 r3!135 Nil!66424 lt!2461274 lt!2461274)) (Exists!3803 lambda!390048))))

(declare-fun lt!2461258 () Unit!160302)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2754 (Regex!16791 Regex!16791 List!66548) Unit!160302)

(assert (=> b!6886300 (= lt!2461258 (lemmaFindConcatSeparationEquivalentToExists!2754 r2!6280 r3!135 lt!2461274))))

(declare-fun lt!2461256 () Regex!16791)

(assert (=> b!6886300 (= (matchR!8936 lt!2461256 lt!2461274) (matchRSpec!3854 lt!2461256 lt!2461274))))

(declare-fun lt!2461257 () Unit!160302)

(assert (=> b!6886300 (= lt!2461257 (mainMatchTheorem!3854 lt!2461256 lt!2461274))))

(assert (=> b!6886300 (= lt!2461274 (++!14870 (_2!36967 lt!2461270) (_2!36967 lt!2461268)))))

(declare-fun b!6886301 () Bool)

(declare-fun tp!1894543 () Bool)

(assert (=> b!6886301 (= e!4149037 tp!1894543)))

(declare-fun b!6886302 () Bool)

(declare-fun tp!1894540 () Bool)

(declare-fun tp!1894536 () Bool)

(assert (=> b!6886302 (= e!4149037 (and tp!1894540 tp!1894536))))

(declare-fun b!6886303 () Bool)

(declare-fun tp!1894542 () Bool)

(assert (=> b!6886303 (= e!4149030 tp!1894542)))

(declare-fun b!6886304 () Bool)

(declare-fun e!4149031 () Bool)

(assert (=> b!6886304 (= e!4149032 (not e!4149031))))

(declare-fun res!2807291 () Bool)

(assert (=> b!6886304 (=> res!2807291 e!4149031)))

(declare-fun lt!2461266 () Bool)

(assert (=> b!6886304 (= res!2807291 (not lt!2461266))))

(declare-fun lt!2461260 () Regex!16791)

(assert (=> b!6886304 (= (matchR!8936 lt!2461260 s!14361) (matchRSpec!3854 lt!2461260 s!14361))))

(declare-fun lt!2461263 () Unit!160302)

(assert (=> b!6886304 (= lt!2461263 (mainMatchTheorem!3854 lt!2461260 s!14361))))

(declare-fun lt!2461264 () Regex!16791)

(assert (=> b!6886304 (= lt!2461266 (matchRSpec!3854 lt!2461264 s!14361))))

(assert (=> b!6886304 (= lt!2461266 (matchR!8936 lt!2461264 s!14361))))

(declare-fun lt!2461275 () Unit!160302)

(assert (=> b!6886304 (= lt!2461275 (mainMatchTheorem!3854 lt!2461264 s!14361))))

(assert (=> b!6886304 (= lt!2461260 (Concat!25636 r1!6342 lt!2461256))))

(assert (=> b!6886304 (= lt!2461256 (Concat!25636 r2!6280 r3!135))))

(assert (=> b!6886304 (= lt!2461264 (Concat!25636 lt!2461267 r3!135))))

(assert (=> b!6886304 (= lt!2461267 (Concat!25636 r1!6342 r2!6280))))

(declare-fun b!6886305 () Bool)

(declare-fun res!2807296 () Bool)

(declare-fun e!4149033 () Bool)

(assert (=> b!6886305 (=> res!2807296 e!4149033)))

(assert (=> b!6886305 (= res!2807296 (not (matchR!8936 r3!135 (_2!36967 lt!2461268))))))

(assert (=> b!6886306 (= e!4149031 e!4149033)))

(declare-fun res!2807288 () Bool)

(assert (=> b!6886306 (=> res!2807288 e!4149033)))

(declare-fun lt!2461254 () Bool)

(assert (=> b!6886306 (= res!2807288 (not lt!2461254))))

(assert (=> b!6886306 (= lt!2461254 (matchRSpec!3854 lt!2461267 (_1!36967 lt!2461268)))))

(assert (=> b!6886306 (= lt!2461254 (matchR!8936 lt!2461267 (_1!36967 lt!2461268)))))

(declare-fun lt!2461255 () Unit!160302)

(assert (=> b!6886306 (= lt!2461255 (mainMatchTheorem!3854 lt!2461267 (_1!36967 lt!2461268)))))

(declare-fun lt!2461259 () Option!16576)

(declare-fun get!23149 (Option!16576) tuple2!67328)

(assert (=> b!6886306 (= lt!2461268 (get!23149 lt!2461259))))

(assert (=> b!6886306 (= (Exists!3803 lambda!390044) (Exists!3803 lambda!390045))))

(declare-fun lt!2461271 () Unit!160302)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2282 (Regex!16791 Regex!16791 List!66548) Unit!160302)

(assert (=> b!6886306 (= lt!2461271 (lemmaExistCutMatchRandMatchRSpecEquivalent!2282 lt!2461267 r3!135 s!14361))))

(assert (=> b!6886306 (= (isDefined!13279 lt!2461259) (Exists!3803 lambda!390044))))

(assert (=> b!6886306 (= lt!2461259 (findConcatSeparation!2990 lt!2461267 r3!135 Nil!66424 s!14361 s!14361))))

(declare-fun lt!2461272 () Unit!160302)

(assert (=> b!6886306 (= lt!2461272 (lemmaFindConcatSeparationEquivalentToExists!2754 lt!2461267 r3!135 s!14361))))

(declare-fun b!6886307 () Bool)

(declare-fun tp!1894541 () Bool)

(assert (=> b!6886307 (= e!4149038 tp!1894541)))

(declare-fun b!6886308 () Bool)

(declare-fun tp!1894550 () Bool)

(declare-fun tp!1894551 () Bool)

(assert (=> b!6886308 (= e!4149030 (and tp!1894550 tp!1894551))))

(declare-fun b!6886309 () Bool)

(declare-fun tp!1894548 () Bool)

(declare-fun tp!1894547 () Bool)

(assert (=> b!6886309 (= e!4149030 (and tp!1894548 tp!1894547))))

(assert (=> b!6886310 (= e!4149033 e!4149035)))

(declare-fun res!2807289 () Bool)

(assert (=> b!6886310 (=> res!2807289 e!4149035)))

(assert (=> b!6886310 (= res!2807289 (not (matchR!8936 r1!6342 (_1!36967 lt!2461270))))))

(declare-fun lt!2461262 () Option!16576)

(assert (=> b!6886310 (= lt!2461270 (get!23149 lt!2461262))))

(assert (=> b!6886310 (= (Exists!3803 lambda!390046) (Exists!3803 lambda!390047))))

(declare-fun lt!2461273 () Unit!160302)

(assert (=> b!6886310 (= lt!2461273 (lemmaExistCutMatchRandMatchRSpecEquivalent!2282 r1!6342 r2!6280 (_1!36967 lt!2461268)))))

(assert (=> b!6886310 (= (isDefined!13279 lt!2461262) (Exists!3803 lambda!390046))))

(assert (=> b!6886310 (= lt!2461262 (findConcatSeparation!2990 r1!6342 r2!6280 Nil!66424 (_1!36967 lt!2461268) (_1!36967 lt!2461268)))))

(declare-fun lt!2461265 () Unit!160302)

(assert (=> b!6886310 (= lt!2461265 (lemmaFindConcatSeparationEquivalentToExists!2754 r1!6342 r2!6280 (_1!36967 lt!2461268)))))

(declare-fun b!6886311 () Bool)

(assert (=> b!6886311 (= e!4149037 tp_is_empty!42807)))

(assert (= (and start!664094 res!2807295) b!6886298))

(assert (= (and b!6886298 res!2807293) b!6886296))

(assert (= (and b!6886296 res!2807292) b!6886304))

(assert (= (and b!6886304 (not res!2807291)) b!6886306))

(assert (= (and b!6886306 (not res!2807288)) b!6886305))

(assert (= (and b!6886305 (not res!2807296)) b!6886310))

(assert (= (and b!6886310 (not res!2807289)) b!6886299))

(assert (= (and b!6886299 (not res!2807294)) b!6886292))

(assert (= (and b!6886292 (not res!2807290)) b!6886300))

(get-info :version)

(assert (= (and start!664094 ((_ is ElementMatch!16791) r1!6342)) b!6886311))

(assert (= (and start!664094 ((_ is Concat!25636) r1!6342)) b!6886293))

(assert (= (and start!664094 ((_ is Star!16791) r1!6342)) b!6886301))

(assert (= (and start!664094 ((_ is Union!16791) r1!6342)) b!6886302))

(assert (= (and start!664094 ((_ is ElementMatch!16791) r2!6280)) b!6886297))

(assert (= (and start!664094 ((_ is Concat!25636) r2!6280)) b!6886308))

(assert (= (and start!664094 ((_ is Star!16791) r2!6280)) b!6886303))

(assert (= (and start!664094 ((_ is Union!16791) r2!6280)) b!6886309))

(assert (= (and start!664094 ((_ is ElementMatch!16791) r3!135)) b!6886295))

(assert (= (and start!664094 ((_ is Concat!25636) r3!135)) b!6886294))

(assert (= (and start!664094 ((_ is Star!16791) r3!135)) b!6886307))

(assert (= (and start!664094 ((_ is Union!16791) r3!135)) b!6886291))

(assert (= (and start!664094 ((_ is Cons!66424) s!14361)) b!6886290))

(declare-fun m!7609178 () Bool)

(assert (=> b!6886305 m!7609178))

(declare-fun m!7609180 () Bool)

(assert (=> b!6886300 m!7609180))

(declare-fun m!7609182 () Bool)

(assert (=> b!6886300 m!7609182))

(declare-fun m!7609184 () Bool)

(assert (=> b!6886300 m!7609184))

(declare-fun m!7609186 () Bool)

(assert (=> b!6886300 m!7609186))

(declare-fun m!7609188 () Bool)

(assert (=> b!6886300 m!7609188))

(declare-fun m!7609190 () Bool)

(assert (=> b!6886300 m!7609190))

(declare-fun m!7609192 () Bool)

(assert (=> b!6886300 m!7609192))

(assert (=> b!6886300 m!7609180))

(declare-fun m!7609194 () Bool)

(assert (=> b!6886300 m!7609194))

(declare-fun m!7609196 () Bool)

(assert (=> b!6886292 m!7609196))

(declare-fun m!7609198 () Bool)

(assert (=> b!6886292 m!7609198))

(declare-fun m!7609200 () Bool)

(assert (=> b!6886292 m!7609200))

(declare-fun m!7609202 () Bool)

(assert (=> b!6886292 m!7609202))

(declare-fun m!7609204 () Bool)

(assert (=> b!6886292 m!7609204))

(assert (=> b!6886292 m!7609196))

(declare-fun m!7609206 () Bool)

(assert (=> b!6886292 m!7609206))

(declare-fun m!7609208 () Bool)

(assert (=> b!6886310 m!7609208))

(declare-fun m!7609210 () Bool)

(assert (=> b!6886310 m!7609210))

(declare-fun m!7609212 () Bool)

(assert (=> b!6886310 m!7609212))

(declare-fun m!7609214 () Bool)

(assert (=> b!6886310 m!7609214))

(declare-fun m!7609216 () Bool)

(assert (=> b!6886310 m!7609216))

(assert (=> b!6886310 m!7609208))

(declare-fun m!7609218 () Bool)

(assert (=> b!6886310 m!7609218))

(declare-fun m!7609220 () Bool)

(assert (=> b!6886310 m!7609220))

(declare-fun m!7609222 () Bool)

(assert (=> b!6886310 m!7609222))

(declare-fun m!7609224 () Bool)

(assert (=> b!6886304 m!7609224))

(declare-fun m!7609226 () Bool)

(assert (=> b!6886304 m!7609226))

(declare-fun m!7609228 () Bool)

(assert (=> b!6886304 m!7609228))

(declare-fun m!7609230 () Bool)

(assert (=> b!6886304 m!7609230))

(declare-fun m!7609232 () Bool)

(assert (=> b!6886304 m!7609232))

(declare-fun m!7609234 () Bool)

(assert (=> b!6886304 m!7609234))

(declare-fun m!7609236 () Bool)

(assert (=> b!6886306 m!7609236))

(declare-fun m!7609238 () Bool)

(assert (=> b!6886306 m!7609238))

(declare-fun m!7609240 () Bool)

(assert (=> b!6886306 m!7609240))

(declare-fun m!7609242 () Bool)

(assert (=> b!6886306 m!7609242))

(declare-fun m!7609244 () Bool)

(assert (=> b!6886306 m!7609244))

(declare-fun m!7609246 () Bool)

(assert (=> b!6886306 m!7609246))

(declare-fun m!7609248 () Bool)

(assert (=> b!6886306 m!7609248))

(assert (=> b!6886306 m!7609244))

(declare-fun m!7609250 () Bool)

(assert (=> b!6886306 m!7609250))

(declare-fun m!7609252 () Bool)

(assert (=> b!6886306 m!7609252))

(declare-fun m!7609254 () Bool)

(assert (=> b!6886306 m!7609254))

(declare-fun m!7609256 () Bool)

(assert (=> start!664094 m!7609256))

(declare-fun m!7609258 () Bool)

(assert (=> b!6886296 m!7609258))

(declare-fun m!7609260 () Bool)

(assert (=> b!6886298 m!7609260))

(declare-fun m!7609262 () Bool)

(assert (=> b!6886299 m!7609262))

(check-sat (not b!6886293) (not b!6886292) (not b!6886301) (not b!6886309) (not b!6886298) (not b!6886304) (not b!6886305) (not b!6886306) (not b!6886303) (not b!6886308) (not b!6886302) tp_is_empty!42807 (not b!6886310) (not b!6886307) (not b!6886299) (not start!664094) (not b!6886291) (not b!6886290) (not b!6886294) (not b!6886296) (not b!6886300))
(check-sat)
