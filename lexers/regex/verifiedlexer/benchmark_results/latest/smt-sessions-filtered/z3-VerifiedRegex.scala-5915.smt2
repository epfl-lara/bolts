; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289592 () Bool)

(assert start!289592)

(declare-fun b!3005088 () Bool)

(assert (=> b!3005088 true))

(assert (=> b!3005088 true))

(assert (=> b!3005088 true))

(declare-fun lambda!112352 () Int)

(declare-fun lambda!112351 () Int)

(assert (=> b!3005088 (not (= lambda!112352 lambda!112351))))

(assert (=> b!3005088 true))

(assert (=> b!3005088 true))

(assert (=> b!3005088 true))

(declare-fun b!3005079 () Bool)

(declare-fun e!1887400 () Bool)

(declare-fun tp!954568 () Bool)

(declare-fun tp!954571 () Bool)

(assert (=> b!3005079 (= e!1887400 (and tp!954568 tp!954571))))

(declare-fun b!3005080 () Bool)

(declare-fun e!1887404 () Bool)

(declare-fun e!1887402 () Bool)

(assert (=> b!3005080 (= e!1887404 e!1887402)))

(declare-fun res!1238469 () Bool)

(assert (=> b!3005080 (=> res!1238469 e!1887402)))

(declare-fun lt!1042755 () Int)

(declare-fun lt!1042758 () Int)

(assert (=> b!3005080 (= res!1238469 (not (= lt!1042755 lt!1042758)))))

(declare-datatypes ((C!18948 0))(
  ( (C!18949 (val!11510 Int)) )
))
(declare-datatypes ((List!35246 0))(
  ( (Nil!35122) (Cons!35122 (h!40542 C!18948) (t!234311 List!35246)) )
))
(declare-fun s!11993 () List!35246)

(declare-fun size!26511 (List!35246) Int)

(assert (=> b!3005080 (= lt!1042758 (size!26511 s!11993))))

(declare-datatypes ((tuple2!34056 0))(
  ( (tuple2!34057 (_1!20160 List!35246) (_2!20160 List!35246)) )
))
(declare-fun lt!1042752 () tuple2!34056)

(assert (=> b!3005080 (= lt!1042755 (size!26511 (_2!20160 lt!1042752)))))

(declare-datatypes ((Regex!9381 0))(
  ( (ElementMatch!9381 (c!494699 C!18948)) (Concat!14702 (regOne!19274 Regex!9381) (regTwo!19274 Regex!9381)) (EmptyExpr!9381) (Star!9381 (reg!9710 Regex!9381)) (EmptyLang!9381) (Union!9381 (regOne!19275 Regex!9381) (regTwo!19275 Regex!9381)) )
))
(declare-fun r!17423 () Regex!9381)

(declare-fun matchR!4263 (Regex!9381 List!35246) Bool)

(assert (=> b!3005080 (matchR!4263 (reg!9710 r!17423) (_1!20160 lt!1042752))))

(declare-datatypes ((Unit!49177 0))(
  ( (Unit!49178) )
))
(declare-fun lt!1042747 () Unit!49177)

(declare-fun lemmaSimplifySound!222 (Regex!9381 List!35246) Unit!49177)

(assert (=> b!3005080 (= lt!1042747 (lemmaSimplifySound!222 (reg!9710 r!17423) (_1!20160 lt!1042752)))))

(declare-fun b!3005081 () Bool)

(declare-fun tp_is_empty!16325 () Bool)

(assert (=> b!3005081 (= e!1887400 tp_is_empty!16325)))

(declare-fun b!3005082 () Bool)

(declare-fun tp!954569 () Bool)

(declare-fun tp!954570 () Bool)

(assert (=> b!3005082 (= e!1887400 (and tp!954569 tp!954570))))

(declare-fun res!1238467 () Bool)

(declare-fun e!1887398 () Bool)

(assert (=> start!289592 (=> (not res!1238467) (not e!1887398))))

(declare-fun validRegex!4114 (Regex!9381) Bool)

(assert (=> start!289592 (= res!1238467 (validRegex!4114 r!17423))))

(assert (=> start!289592 e!1887398))

(assert (=> start!289592 e!1887400))

(declare-fun e!1887401 () Bool)

(assert (=> start!289592 e!1887401))

(declare-fun b!3005083 () Bool)

(declare-fun e!1887399 () Bool)

(declare-fun e!1887406 () Bool)

(assert (=> b!3005083 (= e!1887399 e!1887406)))

(declare-fun res!1238471 () Bool)

(assert (=> b!3005083 (=> res!1238471 e!1887406)))

(declare-fun lt!1042757 () Regex!9381)

(declare-fun isEmptyLang!471 (Regex!9381) Bool)

(assert (=> b!3005083 (= res!1238471 (isEmptyLang!471 lt!1042757))))

(declare-fun simplify!372 (Regex!9381) Regex!9381)

(assert (=> b!3005083 (= lt!1042757 (simplify!372 (reg!9710 r!17423)))))

(declare-fun b!3005084 () Bool)

(declare-fun e!1887407 () Bool)

(assert (=> b!3005084 (= e!1887406 e!1887407)))

(declare-fun res!1238472 () Bool)

(assert (=> b!3005084 (=> res!1238472 e!1887407)))

(declare-fun lt!1042751 () Regex!9381)

(assert (=> b!3005084 (= res!1238472 (not (matchR!4263 lt!1042751 s!11993)))))

(assert (=> b!3005084 (= lt!1042751 (Star!9381 lt!1042757))))

(declare-fun b!3005085 () Bool)

(declare-fun tp!954573 () Bool)

(assert (=> b!3005085 (= e!1887401 (and tp_is_empty!16325 tp!954573))))

(declare-fun b!3005086 () Bool)

(assert (=> b!3005086 (= e!1887398 (not e!1887399))))

(declare-fun res!1238468 () Bool)

(assert (=> b!3005086 (=> res!1238468 e!1887399)))

(declare-fun lt!1042756 () Bool)

(get-info :version)

(assert (=> b!3005086 (= res!1238468 (or lt!1042756 ((_ is Concat!14702) r!17423) ((_ is Union!9381) r!17423) (not ((_ is Star!9381) r!17423))))))

(declare-fun matchRSpec!1518 (Regex!9381 List!35246) Bool)

(assert (=> b!3005086 (= lt!1042756 (matchRSpec!1518 r!17423 s!11993))))

(assert (=> b!3005086 (= lt!1042756 (matchR!4263 r!17423 s!11993))))

(declare-fun lt!1042746 () Unit!49177)

(declare-fun mainMatchTheorem!1518 (Regex!9381 List!35246) Unit!49177)

(assert (=> b!3005086 (= lt!1042746 (mainMatchTheorem!1518 r!17423 s!11993))))

(declare-fun b!3005087 () Bool)

(declare-fun res!1238465 () Bool)

(assert (=> b!3005087 (=> res!1238465 e!1887404)))

(assert (=> b!3005087 (= res!1238465 (not (matchR!4263 lt!1042751 (_2!20160 lt!1042752))))))

(declare-fun e!1887405 () Bool)

(declare-fun e!1887403 () Bool)

(assert (=> b!3005088 (= e!1887405 e!1887403)))

(declare-fun res!1238470 () Bool)

(assert (=> b!3005088 (=> res!1238470 e!1887403)))

(declare-fun lt!1042748 () Bool)

(assert (=> b!3005088 (= res!1238470 (not lt!1042748))))

(declare-fun Exists!1650 (Int) Bool)

(assert (=> b!3005088 (= (Exists!1650 lambda!112351) (Exists!1650 lambda!112352))))

(declare-fun lt!1042749 () Unit!49177)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!316 (Regex!9381 List!35246) Unit!49177)

(assert (=> b!3005088 (= lt!1042749 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!316 lt!1042757 s!11993))))

(assert (=> b!3005088 (= lt!1042748 (Exists!1650 lambda!112351))))

(declare-datatypes ((Option!6760 0))(
  ( (None!6759) (Some!6759 (v!34893 tuple2!34056)) )
))
(declare-fun lt!1042754 () Option!6760)

(declare-fun isDefined!5311 (Option!6760) Bool)

(assert (=> b!3005088 (= lt!1042748 (isDefined!5311 lt!1042754))))

(declare-fun findConcatSeparation!1154 (Regex!9381 Regex!9381 List!35246 List!35246 List!35246) Option!6760)

(assert (=> b!3005088 (= lt!1042754 (findConcatSeparation!1154 lt!1042757 lt!1042751 Nil!35122 s!11993 s!11993))))

(declare-fun lt!1042753 () Unit!49177)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!932 (Regex!9381 Regex!9381 List!35246) Unit!49177)

(assert (=> b!3005088 (= lt!1042753 (lemmaFindConcatSeparationEquivalentToExists!932 lt!1042757 lt!1042751 s!11993))))

(declare-fun b!3005089 () Bool)

(declare-fun res!1238474 () Bool)

(assert (=> b!3005089 (=> res!1238474 e!1887402)))

(declare-fun ++!8409 (List!35246 List!35246) List!35246)

(assert (=> b!3005089 (= res!1238474 (not (= (++!8409 (_1!20160 lt!1042752) (_2!20160 lt!1042752)) s!11993)))))

(declare-fun b!3005090 () Bool)

(assert (=> b!3005090 (= e!1887402 (= (+ (size!26511 (_1!20160 lt!1042752)) lt!1042755) lt!1042758))))

(declare-fun b!3005091 () Bool)

(assert (=> b!3005091 (= e!1887407 e!1887405)))

(declare-fun res!1238473 () Bool)

(assert (=> b!3005091 (=> res!1238473 e!1887405)))

(declare-fun isEmpty!19401 (List!35246) Bool)

(assert (=> b!3005091 (= res!1238473 (isEmpty!19401 s!11993))))

(assert (=> b!3005091 (matchRSpec!1518 lt!1042751 s!11993)))

(declare-fun lt!1042750 () Unit!49177)

(assert (=> b!3005091 (= lt!1042750 (mainMatchTheorem!1518 lt!1042751 s!11993))))

(declare-fun b!3005092 () Bool)

(assert (=> b!3005092 (= e!1887403 e!1887404)))

(declare-fun res!1238466 () Bool)

(assert (=> b!3005092 (=> res!1238466 e!1887404)))

(assert (=> b!3005092 (= res!1238466 (not (matchR!4263 lt!1042757 (_1!20160 lt!1042752))))))

(declare-fun get!10918 (Option!6760) tuple2!34056)

(assert (=> b!3005092 (= lt!1042752 (get!10918 lt!1042754))))

(declare-fun b!3005093 () Bool)

(declare-fun tp!954572 () Bool)

(assert (=> b!3005093 (= e!1887400 tp!954572)))

(assert (= (and start!289592 res!1238467) b!3005086))

(assert (= (and b!3005086 (not res!1238468)) b!3005083))

(assert (= (and b!3005083 (not res!1238471)) b!3005084))

(assert (= (and b!3005084 (not res!1238472)) b!3005091))

(assert (= (and b!3005091 (not res!1238473)) b!3005088))

(assert (= (and b!3005088 (not res!1238470)) b!3005092))

(assert (= (and b!3005092 (not res!1238466)) b!3005087))

(assert (= (and b!3005087 (not res!1238465)) b!3005080))

(assert (= (and b!3005080 (not res!1238469)) b!3005089))

(assert (= (and b!3005089 (not res!1238474)) b!3005090))

(assert (= (and start!289592 ((_ is ElementMatch!9381) r!17423)) b!3005081))

(assert (= (and start!289592 ((_ is Concat!14702) r!17423)) b!3005082))

(assert (= (and start!289592 ((_ is Star!9381) r!17423)) b!3005093))

(assert (= (and start!289592 ((_ is Union!9381) r!17423)) b!3005079))

(assert (= (and start!289592 ((_ is Cons!35122) s!11993)) b!3005085))

(declare-fun m!3354083 () Bool)

(assert (=> b!3005088 m!3354083))

(declare-fun m!3354085 () Bool)

(assert (=> b!3005088 m!3354085))

(assert (=> b!3005088 m!3354085))

(declare-fun m!3354087 () Bool)

(assert (=> b!3005088 m!3354087))

(declare-fun m!3354089 () Bool)

(assert (=> b!3005088 m!3354089))

(declare-fun m!3354091 () Bool)

(assert (=> b!3005088 m!3354091))

(declare-fun m!3354093 () Bool)

(assert (=> b!3005088 m!3354093))

(declare-fun m!3354095 () Bool)

(assert (=> b!3005091 m!3354095))

(declare-fun m!3354097 () Bool)

(assert (=> b!3005091 m!3354097))

(declare-fun m!3354099 () Bool)

(assert (=> b!3005091 m!3354099))

(declare-fun m!3354101 () Bool)

(assert (=> b!3005083 m!3354101))

(declare-fun m!3354103 () Bool)

(assert (=> b!3005083 m!3354103))

(declare-fun m!3354105 () Bool)

(assert (=> b!3005084 m!3354105))

(declare-fun m!3354107 () Bool)

(assert (=> b!3005087 m!3354107))

(declare-fun m!3354109 () Bool)

(assert (=> start!289592 m!3354109))

(declare-fun m!3354111 () Bool)

(assert (=> b!3005090 m!3354111))

(declare-fun m!3354113 () Bool)

(assert (=> b!3005092 m!3354113))

(declare-fun m!3354115 () Bool)

(assert (=> b!3005092 m!3354115))

(declare-fun m!3354117 () Bool)

(assert (=> b!3005089 m!3354117))

(declare-fun m!3354119 () Bool)

(assert (=> b!3005080 m!3354119))

(declare-fun m!3354121 () Bool)

(assert (=> b!3005080 m!3354121))

(declare-fun m!3354123 () Bool)

(assert (=> b!3005080 m!3354123))

(declare-fun m!3354125 () Bool)

(assert (=> b!3005080 m!3354125))

(declare-fun m!3354127 () Bool)

(assert (=> b!3005086 m!3354127))

(declare-fun m!3354129 () Bool)

(assert (=> b!3005086 m!3354129))

(declare-fun m!3354131 () Bool)

(assert (=> b!3005086 m!3354131))

(check-sat (not b!3005084) (not start!289592) (not b!3005089) (not b!3005085) (not b!3005079) (not b!3005093) tp_is_empty!16325 (not b!3005082) (not b!3005092) (not b!3005090) (not b!3005088) (not b!3005080) (not b!3005087) (not b!3005091) (not b!3005083) (not b!3005086))
(check-sat)
(get-model)

(declare-fun b!3005160 () Bool)

(declare-fun res!1238512 () Bool)

(declare-fun e!1887440 () Bool)

(assert (=> b!3005160 (=> (not res!1238512) (not e!1887440))))

(declare-fun tail!4923 (List!35246) List!35246)

(assert (=> b!3005160 (= res!1238512 (isEmpty!19401 (tail!4923 (_2!20160 lt!1042752))))))

(declare-fun b!3005161 () Bool)

(declare-fun res!1238514 () Bool)

(assert (=> b!3005161 (=> (not res!1238514) (not e!1887440))))

(declare-fun call!202137 () Bool)

(assert (=> b!3005161 (= res!1238514 (not call!202137))))

(declare-fun b!3005162 () Bool)

(declare-fun head!6697 (List!35246) C!18948)

(assert (=> b!3005162 (= e!1887440 (= (head!6697 (_2!20160 lt!1042752)) (c!494699 lt!1042751)))))

(declare-fun b!3005163 () Bool)

(declare-fun e!1887441 () Bool)

(declare-fun lt!1042766 () Bool)

(assert (=> b!3005163 (= e!1887441 (not lt!1042766))))

(declare-fun b!3005164 () Bool)

(declare-fun e!1887439 () Bool)

(assert (=> b!3005164 (= e!1887439 e!1887441)))

(declare-fun c!494717 () Bool)

(assert (=> b!3005164 (= c!494717 ((_ is EmptyLang!9381) lt!1042751))))

(declare-fun b!3005165 () Bool)

(assert (=> b!3005165 (= e!1887439 (= lt!1042766 call!202137))))

(declare-fun b!3005167 () Bool)

(declare-fun e!1887443 () Bool)

(declare-fun nullable!3040 (Regex!9381) Bool)

(assert (=> b!3005167 (= e!1887443 (nullable!3040 lt!1042751))))

(declare-fun b!3005168 () Bool)

(declare-fun e!1887445 () Bool)

(declare-fun e!1887444 () Bool)

(assert (=> b!3005168 (= e!1887445 e!1887444)))

(declare-fun res!1238513 () Bool)

(assert (=> b!3005168 (=> res!1238513 e!1887444)))

(assert (=> b!3005168 (= res!1238513 call!202137)))

(declare-fun bm!202132 () Bool)

(assert (=> bm!202132 (= call!202137 (isEmpty!19401 (_2!20160 lt!1042752)))))

(declare-fun b!3005169 () Bool)

(declare-fun res!1238511 () Bool)

(assert (=> b!3005169 (=> res!1238511 e!1887444)))

(assert (=> b!3005169 (= res!1238511 (not (isEmpty!19401 (tail!4923 (_2!20160 lt!1042752)))))))

(declare-fun b!3005170 () Bool)

(declare-fun e!1887442 () Bool)

(assert (=> b!3005170 (= e!1887442 e!1887445)))

(declare-fun res!1238508 () Bool)

(assert (=> b!3005170 (=> (not res!1238508) (not e!1887445))))

(assert (=> b!3005170 (= res!1238508 (not lt!1042766))))

(declare-fun b!3005171 () Bool)

(declare-fun res!1238509 () Bool)

(assert (=> b!3005171 (=> res!1238509 e!1887442)))

(assert (=> b!3005171 (= res!1238509 (not ((_ is ElementMatch!9381) lt!1042751)))))

(assert (=> b!3005171 (= e!1887441 e!1887442)))

(declare-fun b!3005172 () Bool)

(declare-fun derivativeStep!2638 (Regex!9381 C!18948) Regex!9381)

(assert (=> b!3005172 (= e!1887443 (matchR!4263 (derivativeStep!2638 lt!1042751 (head!6697 (_2!20160 lt!1042752))) (tail!4923 (_2!20160 lt!1042752))))))

(declare-fun b!3005173 () Bool)

(declare-fun res!1238507 () Bool)

(assert (=> b!3005173 (=> res!1238507 e!1887442)))

(assert (=> b!3005173 (= res!1238507 e!1887440)))

(declare-fun res!1238510 () Bool)

(assert (=> b!3005173 (=> (not res!1238510) (not e!1887440))))

(assert (=> b!3005173 (= res!1238510 lt!1042766)))

(declare-fun d!846706 () Bool)

(assert (=> d!846706 e!1887439))

(declare-fun c!494715 () Bool)

(assert (=> d!846706 (= c!494715 ((_ is EmptyExpr!9381) lt!1042751))))

(assert (=> d!846706 (= lt!1042766 e!1887443)))

(declare-fun c!494716 () Bool)

(assert (=> d!846706 (= c!494716 (isEmpty!19401 (_2!20160 lt!1042752)))))

(assert (=> d!846706 (validRegex!4114 lt!1042751)))

(assert (=> d!846706 (= (matchR!4263 lt!1042751 (_2!20160 lt!1042752)) lt!1042766)))

(declare-fun b!3005166 () Bool)

(assert (=> b!3005166 (= e!1887444 (not (= (head!6697 (_2!20160 lt!1042752)) (c!494699 lt!1042751))))))

(assert (= (and d!846706 c!494716) b!3005167))

(assert (= (and d!846706 (not c!494716)) b!3005172))

(assert (= (and d!846706 c!494715) b!3005165))

(assert (= (and d!846706 (not c!494715)) b!3005164))

(assert (= (and b!3005164 c!494717) b!3005163))

(assert (= (and b!3005164 (not c!494717)) b!3005171))

(assert (= (and b!3005171 (not res!1238509)) b!3005173))

(assert (= (and b!3005173 res!1238510) b!3005161))

(assert (= (and b!3005161 res!1238514) b!3005160))

(assert (= (and b!3005160 res!1238512) b!3005162))

(assert (= (and b!3005173 (not res!1238507)) b!3005170))

(assert (= (and b!3005170 res!1238508) b!3005168))

(assert (= (and b!3005168 (not res!1238513)) b!3005169))

(assert (= (and b!3005169 (not res!1238511)) b!3005166))

(assert (= (or b!3005165 b!3005168 b!3005161) bm!202132))

(declare-fun m!3354135 () Bool)

(assert (=> b!3005169 m!3354135))

(assert (=> b!3005169 m!3354135))

(declare-fun m!3354137 () Bool)

(assert (=> b!3005169 m!3354137))

(declare-fun m!3354139 () Bool)

(assert (=> bm!202132 m!3354139))

(declare-fun m!3354141 () Bool)

(assert (=> b!3005166 m!3354141))

(assert (=> d!846706 m!3354139))

(declare-fun m!3354143 () Bool)

(assert (=> d!846706 m!3354143))

(declare-fun m!3354145 () Bool)

(assert (=> b!3005167 m!3354145))

(assert (=> b!3005160 m!3354135))

(assert (=> b!3005160 m!3354135))

(assert (=> b!3005160 m!3354137))

(assert (=> b!3005172 m!3354141))

(assert (=> b!3005172 m!3354141))

(declare-fun m!3354147 () Bool)

(assert (=> b!3005172 m!3354147))

(assert (=> b!3005172 m!3354135))

(assert (=> b!3005172 m!3354147))

(assert (=> b!3005172 m!3354135))

(declare-fun m!3354149 () Bool)

(assert (=> b!3005172 m!3354149))

(assert (=> b!3005162 m!3354141))

(assert (=> b!3005087 d!846706))

(declare-fun bs!528696 () Bool)

(declare-fun b!3005321 () Bool)

(assert (= bs!528696 (and b!3005321 b!3005088)))

(declare-fun lambda!112366 () Int)

(assert (=> bs!528696 (not (= lambda!112366 lambda!112351))))

(assert (=> bs!528696 (= (and (= (reg!9710 r!17423) lt!1042757) (= r!17423 lt!1042751)) (= lambda!112366 lambda!112352))))

(assert (=> b!3005321 true))

(assert (=> b!3005321 true))

(declare-fun bs!528699 () Bool)

(declare-fun b!3005320 () Bool)

(assert (= bs!528699 (and b!3005320 b!3005088)))

(declare-fun lambda!112367 () Int)

(assert (=> bs!528699 (not (= lambda!112367 lambda!112351))))

(assert (=> bs!528699 (not (= lambda!112367 lambda!112352))))

(declare-fun bs!528700 () Bool)

(assert (= bs!528700 (and b!3005320 b!3005321)))

(assert (=> bs!528700 (not (= lambda!112367 lambda!112366))))

(assert (=> b!3005320 true))

(assert (=> b!3005320 true))

(declare-fun b!3005313 () Bool)

(declare-fun e!1887522 () Bool)

(declare-fun e!1887525 () Bool)

(assert (=> b!3005313 (= e!1887522 e!1887525)))

(declare-fun c!494752 () Bool)

(assert (=> b!3005313 (= c!494752 ((_ is Star!9381) r!17423))))

(declare-fun b!3005314 () Bool)

(declare-fun e!1887521 () Bool)

(declare-fun call!202152 () Bool)

(assert (=> b!3005314 (= e!1887521 call!202152)))

(declare-fun b!3005315 () Bool)

(declare-fun e!1887526 () Bool)

(assert (=> b!3005315 (= e!1887526 (= s!11993 (Cons!35122 (c!494699 r!17423) Nil!35122)))))

(declare-fun b!3005316 () Bool)

(declare-fun e!1887527 () Bool)

(assert (=> b!3005316 (= e!1887521 e!1887527)))

(declare-fun res!1238586 () Bool)

(assert (=> b!3005316 (= res!1238586 (not ((_ is EmptyLang!9381) r!17423)))))

(assert (=> b!3005316 (=> (not res!1238586) (not e!1887527))))

(declare-fun b!3005317 () Bool)

(declare-fun c!494754 () Bool)

(assert (=> b!3005317 (= c!494754 ((_ is Union!9381) r!17423))))

(assert (=> b!3005317 (= e!1887526 e!1887522)))

(declare-fun bm!202147 () Bool)

(declare-fun call!202153 () Bool)

(assert (=> bm!202147 (= call!202153 (Exists!1650 (ite c!494752 lambda!112366 lambda!112367)))))

(declare-fun b!3005318 () Bool)

(declare-fun c!494755 () Bool)

(assert (=> b!3005318 (= c!494755 ((_ is ElementMatch!9381) r!17423))))

(assert (=> b!3005318 (= e!1887527 e!1887526)))

(declare-fun b!3005319 () Bool)

(declare-fun e!1887523 () Bool)

(assert (=> b!3005319 (= e!1887523 (matchRSpec!1518 (regTwo!19275 r!17423) s!11993))))

(assert (=> b!3005320 (= e!1887525 call!202153)))

(declare-fun e!1887524 () Bool)

(assert (=> b!3005321 (= e!1887524 call!202153)))

(declare-fun bm!202148 () Bool)

(assert (=> bm!202148 (= call!202152 (isEmpty!19401 s!11993))))

(declare-fun d!846712 () Bool)

(declare-fun c!494753 () Bool)

(assert (=> d!846712 (= c!494753 ((_ is EmptyExpr!9381) r!17423))))

(assert (=> d!846712 (= (matchRSpec!1518 r!17423 s!11993) e!1887521)))

(declare-fun b!3005322 () Bool)

(assert (=> b!3005322 (= e!1887522 e!1887523)))

(declare-fun res!1238587 () Bool)

(assert (=> b!3005322 (= res!1238587 (matchRSpec!1518 (regOne!19275 r!17423) s!11993))))

(assert (=> b!3005322 (=> res!1238587 e!1887523)))

(declare-fun b!3005323 () Bool)

(declare-fun res!1238588 () Bool)

(assert (=> b!3005323 (=> res!1238588 e!1887524)))

(assert (=> b!3005323 (= res!1238588 call!202152)))

(assert (=> b!3005323 (= e!1887525 e!1887524)))

(assert (= (and d!846712 c!494753) b!3005314))

(assert (= (and d!846712 (not c!494753)) b!3005316))

(assert (= (and b!3005316 res!1238586) b!3005318))

(assert (= (and b!3005318 c!494755) b!3005315))

(assert (= (and b!3005318 (not c!494755)) b!3005317))

(assert (= (and b!3005317 c!494754) b!3005322))

(assert (= (and b!3005317 (not c!494754)) b!3005313))

(assert (= (and b!3005322 (not res!1238587)) b!3005319))

(assert (= (and b!3005313 c!494752) b!3005323))

(assert (= (and b!3005313 (not c!494752)) b!3005320))

(assert (= (and b!3005323 (not res!1238588)) b!3005321))

(assert (= (or b!3005321 b!3005320) bm!202147))

(assert (= (or b!3005314 b!3005323) bm!202148))

(declare-fun m!3354227 () Bool)

(assert (=> bm!202147 m!3354227))

(declare-fun m!3354229 () Bool)

(assert (=> b!3005319 m!3354229))

(assert (=> bm!202148 m!3354095))

(declare-fun m!3354231 () Bool)

(assert (=> b!3005322 m!3354231))

(assert (=> b!3005086 d!846712))

(declare-fun b!3005324 () Bool)

(declare-fun res!1238594 () Bool)

(declare-fun e!1887529 () Bool)

(assert (=> b!3005324 (=> (not res!1238594) (not e!1887529))))

(assert (=> b!3005324 (= res!1238594 (isEmpty!19401 (tail!4923 s!11993)))))

(declare-fun b!3005325 () Bool)

(declare-fun res!1238596 () Bool)

(assert (=> b!3005325 (=> (not res!1238596) (not e!1887529))))

(declare-fun call!202154 () Bool)

(assert (=> b!3005325 (= res!1238596 (not call!202154))))

(declare-fun b!3005326 () Bool)

(assert (=> b!3005326 (= e!1887529 (= (head!6697 s!11993) (c!494699 r!17423)))))

(declare-fun b!3005327 () Bool)

(declare-fun e!1887530 () Bool)

(declare-fun lt!1042782 () Bool)

(assert (=> b!3005327 (= e!1887530 (not lt!1042782))))

(declare-fun b!3005328 () Bool)

(declare-fun e!1887528 () Bool)

(assert (=> b!3005328 (= e!1887528 e!1887530)))

(declare-fun c!494758 () Bool)

(assert (=> b!3005328 (= c!494758 ((_ is EmptyLang!9381) r!17423))))

(declare-fun b!3005329 () Bool)

(assert (=> b!3005329 (= e!1887528 (= lt!1042782 call!202154))))

(declare-fun b!3005331 () Bool)

(declare-fun e!1887532 () Bool)

(assert (=> b!3005331 (= e!1887532 (nullable!3040 r!17423))))

(declare-fun b!3005332 () Bool)

(declare-fun e!1887534 () Bool)

(declare-fun e!1887533 () Bool)

(assert (=> b!3005332 (= e!1887534 e!1887533)))

(declare-fun res!1238595 () Bool)

(assert (=> b!3005332 (=> res!1238595 e!1887533)))

(assert (=> b!3005332 (= res!1238595 call!202154)))

(declare-fun bm!202149 () Bool)

(assert (=> bm!202149 (= call!202154 (isEmpty!19401 s!11993))))

(declare-fun b!3005333 () Bool)

(declare-fun res!1238593 () Bool)

(assert (=> b!3005333 (=> res!1238593 e!1887533)))

(assert (=> b!3005333 (= res!1238593 (not (isEmpty!19401 (tail!4923 s!11993))))))

(declare-fun b!3005334 () Bool)

(declare-fun e!1887531 () Bool)

(assert (=> b!3005334 (= e!1887531 e!1887534)))

(declare-fun res!1238590 () Bool)

(assert (=> b!3005334 (=> (not res!1238590) (not e!1887534))))

(assert (=> b!3005334 (= res!1238590 (not lt!1042782))))

(declare-fun b!3005335 () Bool)

(declare-fun res!1238591 () Bool)

(assert (=> b!3005335 (=> res!1238591 e!1887531)))

(assert (=> b!3005335 (= res!1238591 (not ((_ is ElementMatch!9381) r!17423)))))

(assert (=> b!3005335 (= e!1887530 e!1887531)))

(declare-fun b!3005336 () Bool)

(assert (=> b!3005336 (= e!1887532 (matchR!4263 (derivativeStep!2638 r!17423 (head!6697 s!11993)) (tail!4923 s!11993)))))

(declare-fun b!3005337 () Bool)

(declare-fun res!1238589 () Bool)

(assert (=> b!3005337 (=> res!1238589 e!1887531)))

(assert (=> b!3005337 (= res!1238589 e!1887529)))

(declare-fun res!1238592 () Bool)

(assert (=> b!3005337 (=> (not res!1238592) (not e!1887529))))

(assert (=> b!3005337 (= res!1238592 lt!1042782)))

(declare-fun d!846738 () Bool)

(assert (=> d!846738 e!1887528))

(declare-fun c!494756 () Bool)

(assert (=> d!846738 (= c!494756 ((_ is EmptyExpr!9381) r!17423))))

(assert (=> d!846738 (= lt!1042782 e!1887532)))

(declare-fun c!494757 () Bool)

(assert (=> d!846738 (= c!494757 (isEmpty!19401 s!11993))))

(assert (=> d!846738 (validRegex!4114 r!17423)))

(assert (=> d!846738 (= (matchR!4263 r!17423 s!11993) lt!1042782)))

(declare-fun b!3005330 () Bool)

(assert (=> b!3005330 (= e!1887533 (not (= (head!6697 s!11993) (c!494699 r!17423))))))

(assert (= (and d!846738 c!494757) b!3005331))

(assert (= (and d!846738 (not c!494757)) b!3005336))

(assert (= (and d!846738 c!494756) b!3005329))

(assert (= (and d!846738 (not c!494756)) b!3005328))

(assert (= (and b!3005328 c!494758) b!3005327))

(assert (= (and b!3005328 (not c!494758)) b!3005335))

(assert (= (and b!3005335 (not res!1238591)) b!3005337))

(assert (= (and b!3005337 res!1238592) b!3005325))

(assert (= (and b!3005325 res!1238596) b!3005324))

(assert (= (and b!3005324 res!1238594) b!3005326))

(assert (= (and b!3005337 (not res!1238589)) b!3005334))

(assert (= (and b!3005334 res!1238590) b!3005332))

(assert (= (and b!3005332 (not res!1238595)) b!3005333))

(assert (= (and b!3005333 (not res!1238593)) b!3005330))

(assert (= (or b!3005329 b!3005332 b!3005325) bm!202149))

(declare-fun m!3354233 () Bool)

(assert (=> b!3005333 m!3354233))

(assert (=> b!3005333 m!3354233))

(declare-fun m!3354235 () Bool)

(assert (=> b!3005333 m!3354235))

(assert (=> bm!202149 m!3354095))

(declare-fun m!3354237 () Bool)

(assert (=> b!3005330 m!3354237))

(assert (=> d!846738 m!3354095))

(assert (=> d!846738 m!3354109))

(declare-fun m!3354239 () Bool)

(assert (=> b!3005331 m!3354239))

(assert (=> b!3005324 m!3354233))

(assert (=> b!3005324 m!3354233))

(assert (=> b!3005324 m!3354235))

(assert (=> b!3005336 m!3354237))

(assert (=> b!3005336 m!3354237))

(declare-fun m!3354241 () Bool)

(assert (=> b!3005336 m!3354241))

(assert (=> b!3005336 m!3354233))

(assert (=> b!3005336 m!3354241))

(assert (=> b!3005336 m!3354233))

(declare-fun m!3354243 () Bool)

(assert (=> b!3005336 m!3354243))

(assert (=> b!3005326 m!3354237))

(assert (=> b!3005086 d!846738))

(declare-fun d!846740 () Bool)

(assert (=> d!846740 (= (matchR!4263 r!17423 s!11993) (matchRSpec!1518 r!17423 s!11993))))

(declare-fun lt!1042788 () Unit!49177)

(declare-fun choose!17839 (Regex!9381 List!35246) Unit!49177)

(assert (=> d!846740 (= lt!1042788 (choose!17839 r!17423 s!11993))))

(assert (=> d!846740 (validRegex!4114 r!17423)))

(assert (=> d!846740 (= (mainMatchTheorem!1518 r!17423 s!11993) lt!1042788)))

(declare-fun bs!528708 () Bool)

(assert (= bs!528708 d!846740))

(assert (=> bs!528708 m!3354129))

(assert (=> bs!528708 m!3354127))

(declare-fun m!3354255 () Bool)

(assert (=> bs!528708 m!3354255))

(assert (=> bs!528708 m!3354109))

(assert (=> b!3005086 d!846740))

(declare-fun b!3005376 () Bool)

(declare-fun res!1238622 () Bool)

(declare-fun e!1887553 () Bool)

(assert (=> b!3005376 (=> (not res!1238622) (not e!1887553))))

(declare-fun lt!1042797 () List!35246)

(assert (=> b!3005376 (= res!1238622 (= (size!26511 lt!1042797) (+ (size!26511 (_1!20160 lt!1042752)) (size!26511 (_2!20160 lt!1042752)))))))

(declare-fun b!3005374 () Bool)

(declare-fun e!1887554 () List!35246)

(assert (=> b!3005374 (= e!1887554 (_2!20160 lt!1042752))))

(declare-fun b!3005377 () Bool)

(assert (=> b!3005377 (= e!1887553 (or (not (= (_2!20160 lt!1042752) Nil!35122)) (= lt!1042797 (_1!20160 lt!1042752))))))

(declare-fun d!846748 () Bool)

(assert (=> d!846748 e!1887553))

(declare-fun res!1238621 () Bool)

(assert (=> d!846748 (=> (not res!1238621) (not e!1887553))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4780 (List!35246) (InoxSet C!18948))

(assert (=> d!846748 (= res!1238621 (= (content!4780 lt!1042797) ((_ map or) (content!4780 (_1!20160 lt!1042752)) (content!4780 (_2!20160 lt!1042752)))))))

(assert (=> d!846748 (= lt!1042797 e!1887554)))

(declare-fun c!494765 () Bool)

(assert (=> d!846748 (= c!494765 ((_ is Nil!35122) (_1!20160 lt!1042752)))))

(assert (=> d!846748 (= (++!8409 (_1!20160 lt!1042752) (_2!20160 lt!1042752)) lt!1042797)))

(declare-fun b!3005375 () Bool)

(assert (=> b!3005375 (= e!1887554 (Cons!35122 (h!40542 (_1!20160 lt!1042752)) (++!8409 (t!234311 (_1!20160 lt!1042752)) (_2!20160 lt!1042752))))))

(assert (= (and d!846748 c!494765) b!3005374))

(assert (= (and d!846748 (not c!494765)) b!3005375))

(assert (= (and d!846748 res!1238621) b!3005376))

(assert (= (and b!3005376 res!1238622) b!3005377))

(declare-fun m!3354257 () Bool)

(assert (=> b!3005376 m!3354257))

(assert (=> b!3005376 m!3354111))

(assert (=> b!3005376 m!3354121))

(declare-fun m!3354259 () Bool)

(assert (=> d!846748 m!3354259))

(declare-fun m!3354261 () Bool)

(assert (=> d!846748 m!3354261))

(declare-fun m!3354263 () Bool)

(assert (=> d!846748 m!3354263))

(declare-fun m!3354265 () Bool)

(assert (=> b!3005375 m!3354265))

(assert (=> b!3005089 d!846748))

(declare-fun d!846750 () Bool)

(declare-fun choose!17840 (Int) Bool)

(assert (=> d!846750 (= (Exists!1650 lambda!112351) (choose!17840 lambda!112351))))

(declare-fun bs!528709 () Bool)

(assert (= bs!528709 d!846750))

(declare-fun m!3354267 () Bool)

(assert (=> bs!528709 m!3354267))

(assert (=> b!3005088 d!846750))

(declare-fun d!846752 () Bool)

(declare-fun isEmpty!19403 (Option!6760) Bool)

(assert (=> d!846752 (= (isDefined!5311 lt!1042754) (not (isEmpty!19403 lt!1042754)))))

(declare-fun bs!528710 () Bool)

(assert (= bs!528710 d!846752))

(declare-fun m!3354269 () Bool)

(assert (=> bs!528710 m!3354269))

(assert (=> b!3005088 d!846752))

(declare-fun d!846754 () Bool)

(assert (=> d!846754 (= (Exists!1650 lambda!112352) (choose!17840 lambda!112352))))

(declare-fun bs!528711 () Bool)

(assert (= bs!528711 d!846754))

(declare-fun m!3354271 () Bool)

(assert (=> bs!528711 m!3354271))

(assert (=> b!3005088 d!846754))

(declare-fun bs!528724 () Bool)

(declare-fun d!846756 () Bool)

(assert (= bs!528724 (and d!846756 b!3005088)))

(declare-fun lambda!112380 () Int)

(assert (=> bs!528724 (= (= (Star!9381 lt!1042757) lt!1042751) (= lambda!112380 lambda!112351))))

(assert (=> bs!528724 (not (= lambda!112380 lambda!112352))))

(declare-fun bs!528725 () Bool)

(assert (= bs!528725 (and d!846756 b!3005321)))

(assert (=> bs!528725 (not (= lambda!112380 lambda!112366))))

(declare-fun bs!528726 () Bool)

(assert (= bs!528726 (and d!846756 b!3005320)))

(assert (=> bs!528726 (not (= lambda!112380 lambda!112367))))

(assert (=> d!846756 true))

(assert (=> d!846756 true))

(declare-fun lambda!112381 () Int)

(assert (=> bs!528724 (not (= lambda!112381 lambda!112351))))

(assert (=> bs!528726 (not (= lambda!112381 lambda!112367))))

(declare-fun bs!528727 () Bool)

(assert (= bs!528727 d!846756))

(assert (=> bs!528727 (not (= lambda!112381 lambda!112380))))

(assert (=> bs!528725 (= (and (= lt!1042757 (reg!9710 r!17423)) (= (Star!9381 lt!1042757) r!17423)) (= lambda!112381 lambda!112366))))

(assert (=> bs!528724 (= (= (Star!9381 lt!1042757) lt!1042751) (= lambda!112381 lambda!112352))))

(assert (=> d!846756 true))

(assert (=> d!846756 true))

(assert (=> d!846756 (= (Exists!1650 lambda!112380) (Exists!1650 lambda!112381))))

(declare-fun lt!1042819 () Unit!49177)

(declare-fun choose!17841 (Regex!9381 List!35246) Unit!49177)

(assert (=> d!846756 (= lt!1042819 (choose!17841 lt!1042757 s!11993))))

(assert (=> d!846756 (validRegex!4114 lt!1042757)))

(assert (=> d!846756 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!316 lt!1042757 s!11993) lt!1042819)))

(declare-fun m!3354315 () Bool)

(assert (=> bs!528727 m!3354315))

(declare-fun m!3354317 () Bool)

(assert (=> bs!528727 m!3354317))

(declare-fun m!3354319 () Bool)

(assert (=> bs!528727 m!3354319))

(declare-fun m!3354321 () Bool)

(assert (=> bs!528727 m!3354321))

(assert (=> b!3005088 d!846756))

(declare-fun bs!528728 () Bool)

(declare-fun d!846772 () Bool)

(assert (= bs!528728 (and d!846772 b!3005088)))

(declare-fun lambda!112384 () Int)

(assert (=> bs!528728 (= lambda!112384 lambda!112351)))

(declare-fun bs!528729 () Bool)

(assert (= bs!528729 (and d!846772 b!3005320)))

(assert (=> bs!528729 (not (= lambda!112384 lambda!112367))))

(declare-fun bs!528730 () Bool)

(assert (= bs!528730 (and d!846772 d!846756)))

(assert (=> bs!528730 (= (= lt!1042751 (Star!9381 lt!1042757)) (= lambda!112384 lambda!112380))))

(assert (=> bs!528730 (not (= lambda!112384 lambda!112381))))

(declare-fun bs!528731 () Bool)

(assert (= bs!528731 (and d!846772 b!3005321)))

(assert (=> bs!528731 (not (= lambda!112384 lambda!112366))))

(assert (=> bs!528728 (not (= lambda!112384 lambda!112352))))

(assert (=> d!846772 true))

(assert (=> d!846772 true))

(assert (=> d!846772 true))

(assert (=> d!846772 (= (isDefined!5311 (findConcatSeparation!1154 lt!1042757 lt!1042751 Nil!35122 s!11993 s!11993)) (Exists!1650 lambda!112384))))

(declare-fun lt!1042829 () Unit!49177)

(declare-fun choose!17842 (Regex!9381 Regex!9381 List!35246) Unit!49177)

(assert (=> d!846772 (= lt!1042829 (choose!17842 lt!1042757 lt!1042751 s!11993))))

(assert (=> d!846772 (validRegex!4114 lt!1042757)))

(assert (=> d!846772 (= (lemmaFindConcatSeparationEquivalentToExists!932 lt!1042757 lt!1042751 s!11993) lt!1042829)))

(declare-fun bs!528732 () Bool)

(assert (= bs!528732 d!846772))

(declare-fun m!3354343 () Bool)

(assert (=> bs!528732 m!3354343))

(assert (=> bs!528732 m!3354091))

(assert (=> bs!528732 m!3354321))

(declare-fun m!3354345 () Bool)

(assert (=> bs!528732 m!3354345))

(assert (=> bs!528732 m!3354091))

(declare-fun m!3354347 () Bool)

(assert (=> bs!528732 m!3354347))

(assert (=> b!3005088 d!846772))

(declare-fun d!846776 () Bool)

(declare-fun e!1887672 () Bool)

(assert (=> d!846776 e!1887672))

(declare-fun res!1238695 () Bool)

(assert (=> d!846776 (=> res!1238695 e!1887672)))

(declare-fun e!1887673 () Bool)

(assert (=> d!846776 (= res!1238695 e!1887673)))

(declare-fun res!1238697 () Bool)

(assert (=> d!846776 (=> (not res!1238697) (not e!1887673))))

(declare-fun lt!1042838 () Option!6760)

(assert (=> d!846776 (= res!1238697 (isDefined!5311 lt!1042838))))

(declare-fun e!1887669 () Option!6760)

(assert (=> d!846776 (= lt!1042838 e!1887669)))

(declare-fun c!494822 () Bool)

(declare-fun e!1887670 () Bool)

(assert (=> d!846776 (= c!494822 e!1887670)))

(declare-fun res!1238693 () Bool)

(assert (=> d!846776 (=> (not res!1238693) (not e!1887670))))

(assert (=> d!846776 (= res!1238693 (matchR!4263 lt!1042757 Nil!35122))))

(assert (=> d!846776 (validRegex!4114 lt!1042757)))

(assert (=> d!846776 (= (findConcatSeparation!1154 lt!1042757 lt!1042751 Nil!35122 s!11993 s!11993) lt!1042838)))

(declare-fun b!3005593 () Bool)

(assert (=> b!3005593 (= e!1887669 (Some!6759 (tuple2!34057 Nil!35122 s!11993)))))

(declare-fun b!3005594 () Bool)

(declare-fun lt!1042836 () Unit!49177)

(declare-fun lt!1042837 () Unit!49177)

(assert (=> b!3005594 (= lt!1042836 lt!1042837)))

(assert (=> b!3005594 (= (++!8409 (++!8409 Nil!35122 (Cons!35122 (h!40542 s!11993) Nil!35122)) (t!234311 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1020 (List!35246 C!18948 List!35246 List!35246) Unit!49177)

(assert (=> b!3005594 (= lt!1042837 (lemmaMoveElementToOtherListKeepsConcatEq!1020 Nil!35122 (h!40542 s!11993) (t!234311 s!11993) s!11993))))

(declare-fun e!1887671 () Option!6760)

(assert (=> b!3005594 (= e!1887671 (findConcatSeparation!1154 lt!1042757 lt!1042751 (++!8409 Nil!35122 (Cons!35122 (h!40542 s!11993) Nil!35122)) (t!234311 s!11993) s!11993))))

(declare-fun b!3005595 () Bool)

(declare-fun res!1238694 () Bool)

(assert (=> b!3005595 (=> (not res!1238694) (not e!1887673))))

(assert (=> b!3005595 (= res!1238694 (matchR!4263 lt!1042751 (_2!20160 (get!10918 lt!1042838))))))

(declare-fun b!3005596 () Bool)

(assert (=> b!3005596 (= e!1887671 None!6759)))

(declare-fun b!3005597 () Bool)

(assert (=> b!3005597 (= e!1887672 (not (isDefined!5311 lt!1042838)))))

(declare-fun b!3005598 () Bool)

(assert (=> b!3005598 (= e!1887670 (matchR!4263 lt!1042751 s!11993))))

(declare-fun b!3005599 () Bool)

(declare-fun res!1238696 () Bool)

(assert (=> b!3005599 (=> (not res!1238696) (not e!1887673))))

(assert (=> b!3005599 (= res!1238696 (matchR!4263 lt!1042757 (_1!20160 (get!10918 lt!1042838))))))

(declare-fun b!3005600 () Bool)

(assert (=> b!3005600 (= e!1887673 (= (++!8409 (_1!20160 (get!10918 lt!1042838)) (_2!20160 (get!10918 lt!1042838))) s!11993))))

(declare-fun b!3005601 () Bool)

(assert (=> b!3005601 (= e!1887669 e!1887671)))

(declare-fun c!494821 () Bool)

(assert (=> b!3005601 (= c!494821 ((_ is Nil!35122) s!11993))))

(assert (= (and d!846776 res!1238693) b!3005598))

(assert (= (and d!846776 c!494822) b!3005593))

(assert (= (and d!846776 (not c!494822)) b!3005601))

(assert (= (and b!3005601 c!494821) b!3005596))

(assert (= (and b!3005601 (not c!494821)) b!3005594))

(assert (= (and d!846776 res!1238697) b!3005599))

(assert (= (and b!3005599 res!1238696) b!3005595))

(assert (= (and b!3005595 res!1238694) b!3005600))

(assert (= (and d!846776 (not res!1238695)) b!3005597))

(declare-fun m!3354349 () Bool)

(assert (=> d!846776 m!3354349))

(declare-fun m!3354351 () Bool)

(assert (=> d!846776 m!3354351))

(assert (=> d!846776 m!3354321))

(assert (=> b!3005598 m!3354105))

(declare-fun m!3354353 () Bool)

(assert (=> b!3005600 m!3354353))

(declare-fun m!3354355 () Bool)

(assert (=> b!3005600 m!3354355))

(declare-fun m!3354357 () Bool)

(assert (=> b!3005594 m!3354357))

(assert (=> b!3005594 m!3354357))

(declare-fun m!3354359 () Bool)

(assert (=> b!3005594 m!3354359))

(declare-fun m!3354361 () Bool)

(assert (=> b!3005594 m!3354361))

(assert (=> b!3005594 m!3354357))

(declare-fun m!3354363 () Bool)

(assert (=> b!3005594 m!3354363))

(assert (=> b!3005599 m!3354353))

(declare-fun m!3354365 () Bool)

(assert (=> b!3005599 m!3354365))

(assert (=> b!3005595 m!3354353))

(declare-fun m!3354367 () Bool)

(assert (=> b!3005595 m!3354367))

(assert (=> b!3005597 m!3354349))

(assert (=> b!3005088 d!846776))

(declare-fun b!3005602 () Bool)

(declare-fun res!1238703 () Bool)

(declare-fun e!1887675 () Bool)

(assert (=> b!3005602 (=> (not res!1238703) (not e!1887675))))

(assert (=> b!3005602 (= res!1238703 (isEmpty!19401 (tail!4923 (_1!20160 lt!1042752))))))

(declare-fun b!3005603 () Bool)

(declare-fun res!1238705 () Bool)

(assert (=> b!3005603 (=> (not res!1238705) (not e!1887675))))

(declare-fun call!202188 () Bool)

(assert (=> b!3005603 (= res!1238705 (not call!202188))))

(declare-fun b!3005604 () Bool)

(assert (=> b!3005604 (= e!1887675 (= (head!6697 (_1!20160 lt!1042752)) (c!494699 lt!1042757)))))

(declare-fun b!3005605 () Bool)

(declare-fun e!1887676 () Bool)

(declare-fun lt!1042839 () Bool)

(assert (=> b!3005605 (= e!1887676 (not lt!1042839))))

(declare-fun b!3005606 () Bool)

(declare-fun e!1887674 () Bool)

(assert (=> b!3005606 (= e!1887674 e!1887676)))

(declare-fun c!494825 () Bool)

(assert (=> b!3005606 (= c!494825 ((_ is EmptyLang!9381) lt!1042757))))

(declare-fun b!3005607 () Bool)

(assert (=> b!3005607 (= e!1887674 (= lt!1042839 call!202188))))

(declare-fun b!3005609 () Bool)

(declare-fun e!1887678 () Bool)

(assert (=> b!3005609 (= e!1887678 (nullable!3040 lt!1042757))))

(declare-fun b!3005610 () Bool)

(declare-fun e!1887680 () Bool)

(declare-fun e!1887679 () Bool)

(assert (=> b!3005610 (= e!1887680 e!1887679)))

(declare-fun res!1238704 () Bool)

(assert (=> b!3005610 (=> res!1238704 e!1887679)))

(assert (=> b!3005610 (= res!1238704 call!202188)))

(declare-fun bm!202183 () Bool)

(assert (=> bm!202183 (= call!202188 (isEmpty!19401 (_1!20160 lt!1042752)))))

(declare-fun b!3005611 () Bool)

(declare-fun res!1238702 () Bool)

(assert (=> b!3005611 (=> res!1238702 e!1887679)))

(assert (=> b!3005611 (= res!1238702 (not (isEmpty!19401 (tail!4923 (_1!20160 lt!1042752)))))))

(declare-fun b!3005612 () Bool)

(declare-fun e!1887677 () Bool)

(assert (=> b!3005612 (= e!1887677 e!1887680)))

(declare-fun res!1238699 () Bool)

(assert (=> b!3005612 (=> (not res!1238699) (not e!1887680))))

(assert (=> b!3005612 (= res!1238699 (not lt!1042839))))

(declare-fun b!3005613 () Bool)

(declare-fun res!1238700 () Bool)

(assert (=> b!3005613 (=> res!1238700 e!1887677)))

(assert (=> b!3005613 (= res!1238700 (not ((_ is ElementMatch!9381) lt!1042757)))))

(assert (=> b!3005613 (= e!1887676 e!1887677)))

(declare-fun b!3005614 () Bool)

(assert (=> b!3005614 (= e!1887678 (matchR!4263 (derivativeStep!2638 lt!1042757 (head!6697 (_1!20160 lt!1042752))) (tail!4923 (_1!20160 lt!1042752))))))

(declare-fun b!3005615 () Bool)

(declare-fun res!1238698 () Bool)

(assert (=> b!3005615 (=> res!1238698 e!1887677)))

(assert (=> b!3005615 (= res!1238698 e!1887675)))

(declare-fun res!1238701 () Bool)

(assert (=> b!3005615 (=> (not res!1238701) (not e!1887675))))

(assert (=> b!3005615 (= res!1238701 lt!1042839)))

(declare-fun d!846778 () Bool)

(assert (=> d!846778 e!1887674))

(declare-fun c!494823 () Bool)

(assert (=> d!846778 (= c!494823 ((_ is EmptyExpr!9381) lt!1042757))))

(assert (=> d!846778 (= lt!1042839 e!1887678)))

(declare-fun c!494824 () Bool)

(assert (=> d!846778 (= c!494824 (isEmpty!19401 (_1!20160 lt!1042752)))))

(assert (=> d!846778 (validRegex!4114 lt!1042757)))

(assert (=> d!846778 (= (matchR!4263 lt!1042757 (_1!20160 lt!1042752)) lt!1042839)))

(declare-fun b!3005608 () Bool)

(assert (=> b!3005608 (= e!1887679 (not (= (head!6697 (_1!20160 lt!1042752)) (c!494699 lt!1042757))))))

(assert (= (and d!846778 c!494824) b!3005609))

(assert (= (and d!846778 (not c!494824)) b!3005614))

(assert (= (and d!846778 c!494823) b!3005607))

(assert (= (and d!846778 (not c!494823)) b!3005606))

(assert (= (and b!3005606 c!494825) b!3005605))

(assert (= (and b!3005606 (not c!494825)) b!3005613))

(assert (= (and b!3005613 (not res!1238700)) b!3005615))

(assert (= (and b!3005615 res!1238701) b!3005603))

(assert (= (and b!3005603 res!1238705) b!3005602))

(assert (= (and b!3005602 res!1238703) b!3005604))

(assert (= (and b!3005615 (not res!1238698)) b!3005612))

(assert (= (and b!3005612 res!1238699) b!3005610))

(assert (= (and b!3005610 (not res!1238704)) b!3005611))

(assert (= (and b!3005611 (not res!1238702)) b!3005608))

(assert (= (or b!3005607 b!3005610 b!3005603) bm!202183))

(declare-fun m!3354369 () Bool)

(assert (=> b!3005611 m!3354369))

(assert (=> b!3005611 m!3354369))

(declare-fun m!3354371 () Bool)

(assert (=> b!3005611 m!3354371))

(declare-fun m!3354373 () Bool)

(assert (=> bm!202183 m!3354373))

(declare-fun m!3354375 () Bool)

(assert (=> b!3005608 m!3354375))

(assert (=> d!846778 m!3354373))

(assert (=> d!846778 m!3354321))

(declare-fun m!3354377 () Bool)

(assert (=> b!3005609 m!3354377))

(assert (=> b!3005602 m!3354369))

(assert (=> b!3005602 m!3354369))

(assert (=> b!3005602 m!3354371))

(assert (=> b!3005614 m!3354375))

(assert (=> b!3005614 m!3354375))

(declare-fun m!3354379 () Bool)

(assert (=> b!3005614 m!3354379))

(assert (=> b!3005614 m!3354369))

(assert (=> b!3005614 m!3354379))

(assert (=> b!3005614 m!3354369))

(declare-fun m!3354381 () Bool)

(assert (=> b!3005614 m!3354381))

(assert (=> b!3005604 m!3354375))

(assert (=> b!3005092 d!846778))

(declare-fun d!846780 () Bool)

(assert (=> d!846780 (= (get!10918 lt!1042754) (v!34893 lt!1042754))))

(assert (=> b!3005092 d!846780))

(declare-fun d!846782 () Bool)

(declare-fun res!1238716 () Bool)

(declare-fun e!1887697 () Bool)

(assert (=> d!846782 (=> res!1238716 e!1887697)))

(assert (=> d!846782 (= res!1238716 ((_ is ElementMatch!9381) r!17423))))

(assert (=> d!846782 (= (validRegex!4114 r!17423) e!1887697)))

(declare-fun b!3005634 () Bool)

(declare-fun e!1887700 () Bool)

(declare-fun e!1887699 () Bool)

(assert (=> b!3005634 (= e!1887700 e!1887699)))

(declare-fun res!1238718 () Bool)

(assert (=> b!3005634 (=> (not res!1238718) (not e!1887699))))

(declare-fun call!202196 () Bool)

(assert (=> b!3005634 (= res!1238718 call!202196)))

(declare-fun b!3005635 () Bool)

(declare-fun res!1238720 () Bool)

(declare-fun e!1887698 () Bool)

(assert (=> b!3005635 (=> (not res!1238720) (not e!1887698))))

(declare-fun call!202197 () Bool)

(assert (=> b!3005635 (= res!1238720 call!202197)))

(declare-fun e!1887696 () Bool)

(assert (=> b!3005635 (= e!1887696 e!1887698)))

(declare-fun b!3005636 () Bool)

(declare-fun e!1887695 () Bool)

(declare-fun e!1887701 () Bool)

(assert (=> b!3005636 (= e!1887695 e!1887701)))

(declare-fun res!1238719 () Bool)

(assert (=> b!3005636 (= res!1238719 (not (nullable!3040 (reg!9710 r!17423))))))

(assert (=> b!3005636 (=> (not res!1238719) (not e!1887701))))

(declare-fun b!3005637 () Bool)

(declare-fun call!202195 () Bool)

(assert (=> b!3005637 (= e!1887701 call!202195)))

(declare-fun b!3005638 () Bool)

(assert (=> b!3005638 (= e!1887698 call!202196)))

(declare-fun c!494830 () Bool)

(declare-fun c!494831 () Bool)

(declare-fun bm!202190 () Bool)

(assert (=> bm!202190 (= call!202195 (validRegex!4114 (ite c!494831 (reg!9710 r!17423) (ite c!494830 (regTwo!19275 r!17423) (regOne!19274 r!17423)))))))

(declare-fun b!3005639 () Bool)

(assert (=> b!3005639 (= e!1887697 e!1887695)))

(assert (=> b!3005639 (= c!494831 ((_ is Star!9381) r!17423))))

(declare-fun bm!202191 () Bool)

(assert (=> bm!202191 (= call!202196 call!202195)))

(declare-fun b!3005640 () Bool)

(declare-fun res!1238717 () Bool)

(assert (=> b!3005640 (=> res!1238717 e!1887700)))

(assert (=> b!3005640 (= res!1238717 (not ((_ is Concat!14702) r!17423)))))

(assert (=> b!3005640 (= e!1887696 e!1887700)))

(declare-fun b!3005641 () Bool)

(assert (=> b!3005641 (= e!1887699 call!202197)))

(declare-fun b!3005642 () Bool)

(assert (=> b!3005642 (= e!1887695 e!1887696)))

(assert (=> b!3005642 (= c!494830 ((_ is Union!9381) r!17423))))

(declare-fun bm!202192 () Bool)

(assert (=> bm!202192 (= call!202197 (validRegex!4114 (ite c!494830 (regOne!19275 r!17423) (regTwo!19274 r!17423))))))

(assert (= (and d!846782 (not res!1238716)) b!3005639))

(assert (= (and b!3005639 c!494831) b!3005636))

(assert (= (and b!3005639 (not c!494831)) b!3005642))

(assert (= (and b!3005636 res!1238719) b!3005637))

(assert (= (and b!3005642 c!494830) b!3005635))

(assert (= (and b!3005642 (not c!494830)) b!3005640))

(assert (= (and b!3005635 res!1238720) b!3005638))

(assert (= (and b!3005640 (not res!1238717)) b!3005634))

(assert (= (and b!3005634 res!1238718) b!3005641))

(assert (= (or b!3005635 b!3005641) bm!202192))

(assert (= (or b!3005638 b!3005634) bm!202191))

(assert (= (or b!3005637 bm!202191) bm!202190))

(declare-fun m!3354383 () Bool)

(assert (=> b!3005636 m!3354383))

(declare-fun m!3354385 () Bool)

(assert (=> bm!202190 m!3354385))

(declare-fun m!3354387 () Bool)

(assert (=> bm!202192 m!3354387))

(assert (=> start!289592 d!846782))

(declare-fun d!846784 () Bool)

(assert (=> d!846784 (= (isEmpty!19401 s!11993) ((_ is Nil!35122) s!11993))))

(assert (=> b!3005091 d!846784))

(declare-fun bs!528733 () Bool)

(declare-fun b!3005651 () Bool)

(assert (= bs!528733 (and b!3005651 b!3005088)))

(declare-fun lambda!112385 () Int)

(assert (=> bs!528733 (not (= lambda!112385 lambda!112351))))

(declare-fun bs!528734 () Bool)

(assert (= bs!528734 (and b!3005651 b!3005320)))

(assert (=> bs!528734 (not (= lambda!112385 lambda!112367))))

(declare-fun bs!528735 () Bool)

(assert (= bs!528735 (and b!3005651 d!846756)))

(assert (=> bs!528735 (not (= lambda!112385 lambda!112380))))

(declare-fun bs!528736 () Bool)

(assert (= bs!528736 (and b!3005651 d!846772)))

(assert (=> bs!528736 (not (= lambda!112385 lambda!112384))))

(assert (=> bs!528735 (= (and (= (reg!9710 lt!1042751) lt!1042757) (= lt!1042751 (Star!9381 lt!1042757))) (= lambda!112385 lambda!112381))))

(declare-fun bs!528737 () Bool)

(assert (= bs!528737 (and b!3005651 b!3005321)))

(assert (=> bs!528737 (= (and (= (reg!9710 lt!1042751) (reg!9710 r!17423)) (= lt!1042751 r!17423)) (= lambda!112385 lambda!112366))))

(assert (=> bs!528733 (= (= (reg!9710 lt!1042751) lt!1042757) (= lambda!112385 lambda!112352))))

(assert (=> b!3005651 true))

(assert (=> b!3005651 true))

(declare-fun bs!528738 () Bool)

(declare-fun b!3005650 () Bool)

(assert (= bs!528738 (and b!3005650 b!3005088)))

(declare-fun lambda!112386 () Int)

(assert (=> bs!528738 (not (= lambda!112386 lambda!112351))))

(declare-fun bs!528739 () Bool)

(assert (= bs!528739 (and b!3005650 b!3005320)))

(assert (=> bs!528739 (= (and (= (regOne!19274 lt!1042751) (regOne!19274 r!17423)) (= (regTwo!19274 lt!1042751) (regTwo!19274 r!17423))) (= lambda!112386 lambda!112367))))

(declare-fun bs!528740 () Bool)

(assert (= bs!528740 (and b!3005650 b!3005651)))

(assert (=> bs!528740 (not (= lambda!112386 lambda!112385))))

(declare-fun bs!528741 () Bool)

(assert (= bs!528741 (and b!3005650 d!846756)))

(assert (=> bs!528741 (not (= lambda!112386 lambda!112380))))

(declare-fun bs!528742 () Bool)

(assert (= bs!528742 (and b!3005650 d!846772)))

(assert (=> bs!528742 (not (= lambda!112386 lambda!112384))))

(assert (=> bs!528741 (not (= lambda!112386 lambda!112381))))

(declare-fun bs!528743 () Bool)

(assert (= bs!528743 (and b!3005650 b!3005321)))

(assert (=> bs!528743 (not (= lambda!112386 lambda!112366))))

(assert (=> bs!528738 (not (= lambda!112386 lambda!112352))))

(assert (=> b!3005650 true))

(assert (=> b!3005650 true))

(declare-fun b!3005643 () Bool)

(declare-fun e!1887703 () Bool)

(declare-fun e!1887706 () Bool)

(assert (=> b!3005643 (= e!1887703 e!1887706)))

(declare-fun c!494832 () Bool)

(assert (=> b!3005643 (= c!494832 ((_ is Star!9381) lt!1042751))))

(declare-fun b!3005644 () Bool)

(declare-fun e!1887702 () Bool)

(declare-fun call!202198 () Bool)

(assert (=> b!3005644 (= e!1887702 call!202198)))

(declare-fun b!3005645 () Bool)

(declare-fun e!1887707 () Bool)

(assert (=> b!3005645 (= e!1887707 (= s!11993 (Cons!35122 (c!494699 lt!1042751) Nil!35122)))))

(declare-fun b!3005646 () Bool)

(declare-fun e!1887708 () Bool)

(assert (=> b!3005646 (= e!1887702 e!1887708)))

(declare-fun res!1238721 () Bool)

(assert (=> b!3005646 (= res!1238721 (not ((_ is EmptyLang!9381) lt!1042751)))))

(assert (=> b!3005646 (=> (not res!1238721) (not e!1887708))))

(declare-fun b!3005647 () Bool)

(declare-fun c!494834 () Bool)

(assert (=> b!3005647 (= c!494834 ((_ is Union!9381) lt!1042751))))

(assert (=> b!3005647 (= e!1887707 e!1887703)))

(declare-fun call!202199 () Bool)

(declare-fun bm!202193 () Bool)

(assert (=> bm!202193 (= call!202199 (Exists!1650 (ite c!494832 lambda!112385 lambda!112386)))))

(declare-fun b!3005648 () Bool)

(declare-fun c!494835 () Bool)

(assert (=> b!3005648 (= c!494835 ((_ is ElementMatch!9381) lt!1042751))))

(assert (=> b!3005648 (= e!1887708 e!1887707)))

(declare-fun b!3005649 () Bool)

(declare-fun e!1887704 () Bool)

(assert (=> b!3005649 (= e!1887704 (matchRSpec!1518 (regTwo!19275 lt!1042751) s!11993))))

(assert (=> b!3005650 (= e!1887706 call!202199)))

(declare-fun e!1887705 () Bool)

(assert (=> b!3005651 (= e!1887705 call!202199)))

(declare-fun bm!202194 () Bool)

(assert (=> bm!202194 (= call!202198 (isEmpty!19401 s!11993))))

(declare-fun d!846786 () Bool)

(declare-fun c!494833 () Bool)

(assert (=> d!846786 (= c!494833 ((_ is EmptyExpr!9381) lt!1042751))))

(assert (=> d!846786 (= (matchRSpec!1518 lt!1042751 s!11993) e!1887702)))

(declare-fun b!3005652 () Bool)

(assert (=> b!3005652 (= e!1887703 e!1887704)))

(declare-fun res!1238722 () Bool)

(assert (=> b!3005652 (= res!1238722 (matchRSpec!1518 (regOne!19275 lt!1042751) s!11993))))

(assert (=> b!3005652 (=> res!1238722 e!1887704)))

(declare-fun b!3005653 () Bool)

(declare-fun res!1238723 () Bool)

(assert (=> b!3005653 (=> res!1238723 e!1887705)))

(assert (=> b!3005653 (= res!1238723 call!202198)))

(assert (=> b!3005653 (= e!1887706 e!1887705)))

(assert (= (and d!846786 c!494833) b!3005644))

(assert (= (and d!846786 (not c!494833)) b!3005646))

(assert (= (and b!3005646 res!1238721) b!3005648))

(assert (= (and b!3005648 c!494835) b!3005645))

(assert (= (and b!3005648 (not c!494835)) b!3005647))

(assert (= (and b!3005647 c!494834) b!3005652))

(assert (= (and b!3005647 (not c!494834)) b!3005643))

(assert (= (and b!3005652 (not res!1238722)) b!3005649))

(assert (= (and b!3005643 c!494832) b!3005653))

(assert (= (and b!3005643 (not c!494832)) b!3005650))

(assert (= (and b!3005653 (not res!1238723)) b!3005651))

(assert (= (or b!3005651 b!3005650) bm!202193))

(assert (= (or b!3005644 b!3005653) bm!202194))

(declare-fun m!3354389 () Bool)

(assert (=> bm!202193 m!3354389))

(declare-fun m!3354391 () Bool)

(assert (=> b!3005649 m!3354391))

(assert (=> bm!202194 m!3354095))

(declare-fun m!3354393 () Bool)

(assert (=> b!3005652 m!3354393))

(assert (=> b!3005091 d!846786))

(declare-fun d!846788 () Bool)

(assert (=> d!846788 (= (matchR!4263 lt!1042751 s!11993) (matchRSpec!1518 lt!1042751 s!11993))))

(declare-fun lt!1042840 () Unit!49177)

(assert (=> d!846788 (= lt!1042840 (choose!17839 lt!1042751 s!11993))))

(assert (=> d!846788 (validRegex!4114 lt!1042751)))

(assert (=> d!846788 (= (mainMatchTheorem!1518 lt!1042751 s!11993) lt!1042840)))

(declare-fun bs!528744 () Bool)

(assert (= bs!528744 d!846788))

(assert (=> bs!528744 m!3354105))

(assert (=> bs!528744 m!3354097))

(declare-fun m!3354395 () Bool)

(assert (=> bs!528744 m!3354395))

(assert (=> bs!528744 m!3354143))

(assert (=> b!3005091 d!846788))

(declare-fun d!846790 () Bool)

(declare-fun lt!1042843 () Int)

(assert (=> d!846790 (>= lt!1042843 0)))

(declare-fun e!1887711 () Int)

(assert (=> d!846790 (= lt!1042843 e!1887711)))

(declare-fun c!494838 () Bool)

(assert (=> d!846790 (= c!494838 ((_ is Nil!35122) s!11993))))

(assert (=> d!846790 (= (size!26511 s!11993) lt!1042843)))

(declare-fun b!3005658 () Bool)

(assert (=> b!3005658 (= e!1887711 0)))

(declare-fun b!3005659 () Bool)

(assert (=> b!3005659 (= e!1887711 (+ 1 (size!26511 (t!234311 s!11993))))))

(assert (= (and d!846790 c!494838) b!3005658))

(assert (= (and d!846790 (not c!494838)) b!3005659))

(declare-fun m!3354397 () Bool)

(assert (=> b!3005659 m!3354397))

(assert (=> b!3005080 d!846790))

(declare-fun d!846792 () Bool)

(declare-fun lt!1042844 () Int)

(assert (=> d!846792 (>= lt!1042844 0)))

(declare-fun e!1887712 () Int)

(assert (=> d!846792 (= lt!1042844 e!1887712)))

(declare-fun c!494839 () Bool)

(assert (=> d!846792 (= c!494839 ((_ is Nil!35122) (_2!20160 lt!1042752)))))

(assert (=> d!846792 (= (size!26511 (_2!20160 lt!1042752)) lt!1042844)))

(declare-fun b!3005660 () Bool)

(assert (=> b!3005660 (= e!1887712 0)))

(declare-fun b!3005661 () Bool)

(assert (=> b!3005661 (= e!1887712 (+ 1 (size!26511 (t!234311 (_2!20160 lt!1042752)))))))

(assert (= (and d!846792 c!494839) b!3005660))

(assert (= (and d!846792 (not c!494839)) b!3005661))

(declare-fun m!3354399 () Bool)

(assert (=> b!3005661 m!3354399))

(assert (=> b!3005080 d!846792))

(declare-fun b!3005662 () Bool)

(declare-fun res!1238729 () Bool)

(declare-fun e!1887714 () Bool)

(assert (=> b!3005662 (=> (not res!1238729) (not e!1887714))))

(assert (=> b!3005662 (= res!1238729 (isEmpty!19401 (tail!4923 (_1!20160 lt!1042752))))))

(declare-fun b!3005663 () Bool)

(declare-fun res!1238731 () Bool)

(assert (=> b!3005663 (=> (not res!1238731) (not e!1887714))))

(declare-fun call!202200 () Bool)

(assert (=> b!3005663 (= res!1238731 (not call!202200))))

(declare-fun b!3005664 () Bool)

(assert (=> b!3005664 (= e!1887714 (= (head!6697 (_1!20160 lt!1042752)) (c!494699 (reg!9710 r!17423))))))

(declare-fun b!3005665 () Bool)

(declare-fun e!1887715 () Bool)

(declare-fun lt!1042845 () Bool)

(assert (=> b!3005665 (= e!1887715 (not lt!1042845))))

(declare-fun b!3005666 () Bool)

(declare-fun e!1887713 () Bool)

(assert (=> b!3005666 (= e!1887713 e!1887715)))

(declare-fun c!494842 () Bool)

(assert (=> b!3005666 (= c!494842 ((_ is EmptyLang!9381) (reg!9710 r!17423)))))

(declare-fun b!3005667 () Bool)

(assert (=> b!3005667 (= e!1887713 (= lt!1042845 call!202200))))

(declare-fun b!3005669 () Bool)

(declare-fun e!1887717 () Bool)

(assert (=> b!3005669 (= e!1887717 (nullable!3040 (reg!9710 r!17423)))))

(declare-fun b!3005670 () Bool)

(declare-fun e!1887719 () Bool)

(declare-fun e!1887718 () Bool)

(assert (=> b!3005670 (= e!1887719 e!1887718)))

(declare-fun res!1238730 () Bool)

(assert (=> b!3005670 (=> res!1238730 e!1887718)))

(assert (=> b!3005670 (= res!1238730 call!202200)))

(declare-fun bm!202195 () Bool)

(assert (=> bm!202195 (= call!202200 (isEmpty!19401 (_1!20160 lt!1042752)))))

(declare-fun b!3005671 () Bool)

(declare-fun res!1238728 () Bool)

(assert (=> b!3005671 (=> res!1238728 e!1887718)))

(assert (=> b!3005671 (= res!1238728 (not (isEmpty!19401 (tail!4923 (_1!20160 lt!1042752)))))))

(declare-fun b!3005672 () Bool)

(declare-fun e!1887716 () Bool)

(assert (=> b!3005672 (= e!1887716 e!1887719)))

(declare-fun res!1238725 () Bool)

(assert (=> b!3005672 (=> (not res!1238725) (not e!1887719))))

(assert (=> b!3005672 (= res!1238725 (not lt!1042845))))

(declare-fun b!3005673 () Bool)

(declare-fun res!1238726 () Bool)

(assert (=> b!3005673 (=> res!1238726 e!1887716)))

(assert (=> b!3005673 (= res!1238726 (not ((_ is ElementMatch!9381) (reg!9710 r!17423))))))

(assert (=> b!3005673 (= e!1887715 e!1887716)))

(declare-fun b!3005674 () Bool)

(assert (=> b!3005674 (= e!1887717 (matchR!4263 (derivativeStep!2638 (reg!9710 r!17423) (head!6697 (_1!20160 lt!1042752))) (tail!4923 (_1!20160 lt!1042752))))))

(declare-fun b!3005675 () Bool)

(declare-fun res!1238724 () Bool)

(assert (=> b!3005675 (=> res!1238724 e!1887716)))

(assert (=> b!3005675 (= res!1238724 e!1887714)))

(declare-fun res!1238727 () Bool)

(assert (=> b!3005675 (=> (not res!1238727) (not e!1887714))))

(assert (=> b!3005675 (= res!1238727 lt!1042845)))

(declare-fun d!846794 () Bool)

(assert (=> d!846794 e!1887713))

(declare-fun c!494840 () Bool)

(assert (=> d!846794 (= c!494840 ((_ is EmptyExpr!9381) (reg!9710 r!17423)))))

(assert (=> d!846794 (= lt!1042845 e!1887717)))

(declare-fun c!494841 () Bool)

(assert (=> d!846794 (= c!494841 (isEmpty!19401 (_1!20160 lt!1042752)))))

(assert (=> d!846794 (validRegex!4114 (reg!9710 r!17423))))

(assert (=> d!846794 (= (matchR!4263 (reg!9710 r!17423) (_1!20160 lt!1042752)) lt!1042845)))

(declare-fun b!3005668 () Bool)

(assert (=> b!3005668 (= e!1887718 (not (= (head!6697 (_1!20160 lt!1042752)) (c!494699 (reg!9710 r!17423)))))))

(assert (= (and d!846794 c!494841) b!3005669))

(assert (= (and d!846794 (not c!494841)) b!3005674))

(assert (= (and d!846794 c!494840) b!3005667))

(assert (= (and d!846794 (not c!494840)) b!3005666))

(assert (= (and b!3005666 c!494842) b!3005665))

(assert (= (and b!3005666 (not c!494842)) b!3005673))

(assert (= (and b!3005673 (not res!1238726)) b!3005675))

(assert (= (and b!3005675 res!1238727) b!3005663))

(assert (= (and b!3005663 res!1238731) b!3005662))

(assert (= (and b!3005662 res!1238729) b!3005664))

(assert (= (and b!3005675 (not res!1238724)) b!3005672))

(assert (= (and b!3005672 res!1238725) b!3005670))

(assert (= (and b!3005670 (not res!1238730)) b!3005671))

(assert (= (and b!3005671 (not res!1238728)) b!3005668))

(assert (= (or b!3005667 b!3005670 b!3005663) bm!202195))

(assert (=> b!3005671 m!3354369))

(assert (=> b!3005671 m!3354369))

(assert (=> b!3005671 m!3354371))

(assert (=> bm!202195 m!3354373))

(assert (=> b!3005668 m!3354375))

(assert (=> d!846794 m!3354373))

(declare-fun m!3354401 () Bool)

(assert (=> d!846794 m!3354401))

(assert (=> b!3005669 m!3354383))

(assert (=> b!3005662 m!3354369))

(assert (=> b!3005662 m!3354369))

(assert (=> b!3005662 m!3354371))

(assert (=> b!3005674 m!3354375))

(assert (=> b!3005674 m!3354375))

(declare-fun m!3354403 () Bool)

(assert (=> b!3005674 m!3354403))

(assert (=> b!3005674 m!3354369))

(assert (=> b!3005674 m!3354403))

(assert (=> b!3005674 m!3354369))

(declare-fun m!3354405 () Bool)

(assert (=> b!3005674 m!3354405))

(assert (=> b!3005664 m!3354375))

(assert (=> b!3005080 d!846794))

(declare-fun d!846796 () Bool)

(assert (=> d!846796 (= (matchR!4263 (reg!9710 r!17423) (_1!20160 lt!1042752)) (matchR!4263 (simplify!372 (reg!9710 r!17423)) (_1!20160 lt!1042752)))))

(declare-fun lt!1042848 () Unit!49177)

(declare-fun choose!17843 (Regex!9381 List!35246) Unit!49177)

(assert (=> d!846796 (= lt!1042848 (choose!17843 (reg!9710 r!17423) (_1!20160 lt!1042752)))))

(assert (=> d!846796 (validRegex!4114 (reg!9710 r!17423))))

(assert (=> d!846796 (= (lemmaSimplifySound!222 (reg!9710 r!17423) (_1!20160 lt!1042752)) lt!1042848)))

(declare-fun bs!528745 () Bool)

(assert (= bs!528745 d!846796))

(assert (=> bs!528745 m!3354123))

(declare-fun m!3354407 () Bool)

(assert (=> bs!528745 m!3354407))

(assert (=> bs!528745 m!3354103))

(assert (=> bs!528745 m!3354103))

(declare-fun m!3354409 () Bool)

(assert (=> bs!528745 m!3354409))

(assert (=> bs!528745 m!3354401))

(assert (=> b!3005080 d!846796))

(declare-fun d!846798 () Bool)

(declare-fun lt!1042849 () Int)

(assert (=> d!846798 (>= lt!1042849 0)))

(declare-fun e!1887720 () Int)

(assert (=> d!846798 (= lt!1042849 e!1887720)))

(declare-fun c!494843 () Bool)

(assert (=> d!846798 (= c!494843 ((_ is Nil!35122) (_1!20160 lt!1042752)))))

(assert (=> d!846798 (= (size!26511 (_1!20160 lt!1042752)) lt!1042849)))

(declare-fun b!3005676 () Bool)

(assert (=> b!3005676 (= e!1887720 0)))

(declare-fun b!3005677 () Bool)

(assert (=> b!3005677 (= e!1887720 (+ 1 (size!26511 (t!234311 (_1!20160 lt!1042752)))))))

(assert (= (and d!846798 c!494843) b!3005676))

(assert (= (and d!846798 (not c!494843)) b!3005677))

(declare-fun m!3354411 () Bool)

(assert (=> b!3005677 m!3354411))

(assert (=> b!3005090 d!846798))

(declare-fun b!3005678 () Bool)

(declare-fun res!1238737 () Bool)

(declare-fun e!1887722 () Bool)

(assert (=> b!3005678 (=> (not res!1238737) (not e!1887722))))

(assert (=> b!3005678 (= res!1238737 (isEmpty!19401 (tail!4923 s!11993)))))

(declare-fun b!3005679 () Bool)

(declare-fun res!1238739 () Bool)

(assert (=> b!3005679 (=> (not res!1238739) (not e!1887722))))

(declare-fun call!202201 () Bool)

(assert (=> b!3005679 (= res!1238739 (not call!202201))))

(declare-fun b!3005680 () Bool)

(assert (=> b!3005680 (= e!1887722 (= (head!6697 s!11993) (c!494699 lt!1042751)))))

(declare-fun b!3005681 () Bool)

(declare-fun e!1887723 () Bool)

(declare-fun lt!1042850 () Bool)

(assert (=> b!3005681 (= e!1887723 (not lt!1042850))))

(declare-fun b!3005682 () Bool)

(declare-fun e!1887721 () Bool)

(assert (=> b!3005682 (= e!1887721 e!1887723)))

(declare-fun c!494846 () Bool)

(assert (=> b!3005682 (= c!494846 ((_ is EmptyLang!9381) lt!1042751))))

(declare-fun b!3005683 () Bool)

(assert (=> b!3005683 (= e!1887721 (= lt!1042850 call!202201))))

(declare-fun b!3005685 () Bool)

(declare-fun e!1887725 () Bool)

(assert (=> b!3005685 (= e!1887725 (nullable!3040 lt!1042751))))

(declare-fun b!3005686 () Bool)

(declare-fun e!1887727 () Bool)

(declare-fun e!1887726 () Bool)

(assert (=> b!3005686 (= e!1887727 e!1887726)))

(declare-fun res!1238738 () Bool)

(assert (=> b!3005686 (=> res!1238738 e!1887726)))

(assert (=> b!3005686 (= res!1238738 call!202201)))

(declare-fun bm!202196 () Bool)

(assert (=> bm!202196 (= call!202201 (isEmpty!19401 s!11993))))

(declare-fun b!3005687 () Bool)

(declare-fun res!1238736 () Bool)

(assert (=> b!3005687 (=> res!1238736 e!1887726)))

(assert (=> b!3005687 (= res!1238736 (not (isEmpty!19401 (tail!4923 s!11993))))))

(declare-fun b!3005688 () Bool)

(declare-fun e!1887724 () Bool)

(assert (=> b!3005688 (= e!1887724 e!1887727)))

(declare-fun res!1238733 () Bool)

(assert (=> b!3005688 (=> (not res!1238733) (not e!1887727))))

(assert (=> b!3005688 (= res!1238733 (not lt!1042850))))

(declare-fun b!3005689 () Bool)

(declare-fun res!1238734 () Bool)

(assert (=> b!3005689 (=> res!1238734 e!1887724)))

(assert (=> b!3005689 (= res!1238734 (not ((_ is ElementMatch!9381) lt!1042751)))))

(assert (=> b!3005689 (= e!1887723 e!1887724)))

(declare-fun b!3005690 () Bool)

(assert (=> b!3005690 (= e!1887725 (matchR!4263 (derivativeStep!2638 lt!1042751 (head!6697 s!11993)) (tail!4923 s!11993)))))

(declare-fun b!3005691 () Bool)

(declare-fun res!1238732 () Bool)

(assert (=> b!3005691 (=> res!1238732 e!1887724)))

(assert (=> b!3005691 (= res!1238732 e!1887722)))

(declare-fun res!1238735 () Bool)

(assert (=> b!3005691 (=> (not res!1238735) (not e!1887722))))

(assert (=> b!3005691 (= res!1238735 lt!1042850)))

(declare-fun d!846800 () Bool)

(assert (=> d!846800 e!1887721))

(declare-fun c!494844 () Bool)

(assert (=> d!846800 (= c!494844 ((_ is EmptyExpr!9381) lt!1042751))))

(assert (=> d!846800 (= lt!1042850 e!1887725)))

(declare-fun c!494845 () Bool)

(assert (=> d!846800 (= c!494845 (isEmpty!19401 s!11993))))

(assert (=> d!846800 (validRegex!4114 lt!1042751)))

(assert (=> d!846800 (= (matchR!4263 lt!1042751 s!11993) lt!1042850)))

(declare-fun b!3005684 () Bool)

(assert (=> b!3005684 (= e!1887726 (not (= (head!6697 s!11993) (c!494699 lt!1042751))))))

(assert (= (and d!846800 c!494845) b!3005685))

(assert (= (and d!846800 (not c!494845)) b!3005690))

(assert (= (and d!846800 c!494844) b!3005683))

(assert (= (and d!846800 (not c!494844)) b!3005682))

(assert (= (and b!3005682 c!494846) b!3005681))

(assert (= (and b!3005682 (not c!494846)) b!3005689))

(assert (= (and b!3005689 (not res!1238734)) b!3005691))

(assert (= (and b!3005691 res!1238735) b!3005679))

(assert (= (and b!3005679 res!1238739) b!3005678))

(assert (= (and b!3005678 res!1238737) b!3005680))

(assert (= (and b!3005691 (not res!1238732)) b!3005688))

(assert (= (and b!3005688 res!1238733) b!3005686))

(assert (= (and b!3005686 (not res!1238738)) b!3005687))

(assert (= (and b!3005687 (not res!1238736)) b!3005684))

(assert (= (or b!3005683 b!3005686 b!3005679) bm!202196))

(assert (=> b!3005687 m!3354233))

(assert (=> b!3005687 m!3354233))

(assert (=> b!3005687 m!3354235))

(assert (=> bm!202196 m!3354095))

(assert (=> b!3005684 m!3354237))

(assert (=> d!846800 m!3354095))

(assert (=> d!846800 m!3354143))

(assert (=> b!3005685 m!3354145))

(assert (=> b!3005678 m!3354233))

(assert (=> b!3005678 m!3354233))

(assert (=> b!3005678 m!3354235))

(assert (=> b!3005690 m!3354237))

(assert (=> b!3005690 m!3354237))

(declare-fun m!3354413 () Bool)

(assert (=> b!3005690 m!3354413))

(assert (=> b!3005690 m!3354233))

(assert (=> b!3005690 m!3354413))

(assert (=> b!3005690 m!3354233))

(declare-fun m!3354415 () Bool)

(assert (=> b!3005690 m!3354415))

(assert (=> b!3005680 m!3354237))

(assert (=> b!3005084 d!846800))

(declare-fun d!846802 () Bool)

(assert (=> d!846802 (= (isEmptyLang!471 lt!1042757) ((_ is EmptyLang!9381) lt!1042757))))

(assert (=> b!3005083 d!846802))

(declare-fun b!3005742 () Bool)

(declare-fun c!494874 () Bool)

(declare-fun call!202217 () Bool)

(assert (=> b!3005742 (= c!494874 call!202217)))

(declare-fun e!1887762 () Regex!9381)

(declare-fun e!1887766 () Regex!9381)

(assert (=> b!3005742 (= e!1887762 e!1887766)))

(declare-fun b!3005743 () Bool)

(declare-fun c!494870 () Bool)

(assert (=> b!3005743 (= c!494870 ((_ is EmptyExpr!9381) (reg!9710 r!17423)))))

(declare-fun e!1887769 () Regex!9381)

(declare-fun e!1887758 () Regex!9381)

(assert (=> b!3005743 (= e!1887769 e!1887758)))

(declare-fun b!3005744 () Bool)

(declare-fun e!1887757 () Regex!9381)

(declare-fun e!1887768 () Regex!9381)

(assert (=> b!3005744 (= e!1887757 e!1887768)))

(declare-fun lt!1042863 () Regex!9381)

(declare-fun call!202220 () Regex!9381)

(assert (=> b!3005744 (= lt!1042863 call!202220)))

(declare-fun lt!1042865 () Regex!9381)

(declare-fun call!202221 () Regex!9381)

(assert (=> b!3005744 (= lt!1042865 call!202221)))

(declare-fun res!1238746 () Bool)

(declare-fun call!202218 () Bool)

(assert (=> b!3005744 (= res!1238746 call!202218)))

(declare-fun e!1887765 () Bool)

(assert (=> b!3005744 (=> res!1238746 e!1887765)))

(declare-fun c!494875 () Bool)

(assert (=> b!3005744 (= c!494875 e!1887765)))

(declare-fun b!3005745 () Bool)

(declare-fun lt!1042864 () Regex!9381)

(assert (=> b!3005745 (= e!1887762 lt!1042864)))

(declare-fun b!3005746 () Bool)

(declare-fun e!1887760 () Regex!9381)

(assert (=> b!3005746 (= e!1887760 lt!1042865)))

(declare-fun b!3005747 () Bool)

(declare-fun lt!1042867 () Regex!9381)

(assert (=> b!3005747 (= e!1887766 (Union!9381 lt!1042867 lt!1042864))))

(declare-fun bm!202211 () Bool)

(declare-fun call!202219 () Regex!9381)

(assert (=> bm!202211 (= call!202221 call!202219)))

(declare-fun bm!202212 () Bool)

(declare-fun c!494876 () Bool)

(assert (=> bm!202212 (= call!202220 (simplify!372 (ite c!494876 (regTwo!19275 (reg!9710 r!17423)) (regOne!19274 (reg!9710 r!17423)))))))

(declare-fun call!202216 () Bool)

(declare-fun bm!202213 () Bool)

(declare-fun lt!1042868 () Regex!9381)

(declare-fun c!494872 () Bool)

(declare-fun isEmptyExpr!483 (Regex!9381) Bool)

(assert (=> bm!202213 (= call!202216 (isEmptyExpr!483 (ite c!494872 lt!1042868 lt!1042865)))))

(declare-fun b!3005748 () Bool)

(assert (=> b!3005748 (= e!1887768 EmptyLang!9381)))

(declare-fun b!3005749 () Bool)

(declare-fun e!1887759 () Regex!9381)

(assert (=> b!3005749 (= e!1887760 e!1887759)))

(declare-fun c!494873 () Bool)

(assert (=> b!3005749 (= c!494873 call!202216)))

(declare-fun b!3005750 () Bool)

(declare-fun e!1887756 () Regex!9381)

(assert (=> b!3005750 (= e!1887758 e!1887756)))

(assert (=> b!3005750 (= c!494872 ((_ is Star!9381) (reg!9710 r!17423)))))

(declare-fun d!846804 () Bool)

(declare-fun e!1887767 () Bool)

(assert (=> d!846804 e!1887767))

(declare-fun res!1238748 () Bool)

(assert (=> d!846804 (=> (not res!1238748) (not e!1887767))))

(declare-fun lt!1042866 () Regex!9381)

(assert (=> d!846804 (= res!1238748 (validRegex!4114 lt!1042866))))

(declare-fun e!1887763 () Regex!9381)

(assert (=> d!846804 (= lt!1042866 e!1887763)))

(declare-fun c!494879 () Bool)

(assert (=> d!846804 (= c!494879 ((_ is EmptyLang!9381) (reg!9710 r!17423)))))

(assert (=> d!846804 (validRegex!4114 (reg!9710 r!17423))))

(assert (=> d!846804 (= (simplify!372 (reg!9710 r!17423)) lt!1042866)))

(declare-fun b!3005751 () Bool)

(assert (=> b!3005751 (= e!1887759 lt!1042863)))

(declare-fun b!3005752 () Bool)

(declare-fun e!1887761 () Bool)

(assert (=> b!3005752 (= e!1887761 call!202216)))

(declare-fun b!3005753 () Bool)

(assert (=> b!3005753 (= e!1887759 (Concat!14702 lt!1042863 lt!1042865))))

(declare-fun b!3005754 () Bool)

(assert (=> b!3005754 (= e!1887766 lt!1042867)))

(declare-fun b!3005755 () Bool)

(declare-fun e!1887764 () Regex!9381)

(assert (=> b!3005755 (= e!1887764 (Star!9381 lt!1042868))))

(declare-fun b!3005756 () Bool)

(declare-fun c!494877 () Bool)

(assert (=> b!3005756 (= c!494877 e!1887761)))

(declare-fun res!1238747 () Bool)

(assert (=> b!3005756 (=> res!1238747 e!1887761)))

(declare-fun call!202222 () Bool)

(assert (=> b!3005756 (= res!1238747 call!202222)))

(assert (=> b!3005756 (= lt!1042868 call!202219)))

(assert (=> b!3005756 (= e!1887756 e!1887764)))

(declare-fun b!3005757 () Bool)

(assert (=> b!3005757 (= e!1887764 EmptyExpr!9381)))

(declare-fun bm!202214 () Bool)

(assert (=> bm!202214 (= call!202217 call!202222)))

(declare-fun bm!202215 () Bool)

(assert (=> bm!202215 (= call!202219 (simplify!372 (ite c!494872 (reg!9710 (reg!9710 r!17423)) (ite c!494876 (regOne!19275 (reg!9710 r!17423)) (regTwo!19274 (reg!9710 r!17423))))))))

(declare-fun b!3005758 () Bool)

(assert (=> b!3005758 (= e!1887769 (reg!9710 r!17423))))

(declare-fun b!3005759 () Bool)

(declare-fun c!494869 () Bool)

(assert (=> b!3005759 (= c!494869 (isEmptyExpr!483 lt!1042863))))

(assert (=> b!3005759 (= e!1887768 e!1887760)))

(declare-fun b!3005760 () Bool)

(assert (=> b!3005760 (= e!1887765 call!202217)))

(declare-fun bm!202216 () Bool)

(assert (=> bm!202216 (= call!202222 (isEmptyLang!471 (ite c!494872 lt!1042868 (ite c!494876 lt!1042864 lt!1042865))))))

(declare-fun b!3005761 () Bool)

(assert (=> b!3005761 (= e!1887763 e!1887769)))

(declare-fun c!494878 () Bool)

(assert (=> b!3005761 (= c!494878 ((_ is ElementMatch!9381) (reg!9710 r!17423)))))

(declare-fun b!3005762 () Bool)

(assert (=> b!3005762 (= c!494876 ((_ is Union!9381) (reg!9710 r!17423)))))

(assert (=> b!3005762 (= e!1887756 e!1887757)))

(declare-fun b!3005763 () Bool)

(assert (=> b!3005763 (= e!1887757 e!1887762)))

(assert (=> b!3005763 (= lt!1042867 call!202221)))

(assert (=> b!3005763 (= lt!1042864 call!202220)))

(declare-fun c!494871 () Bool)

(assert (=> b!3005763 (= c!494871 call!202218)))

(declare-fun b!3005764 () Bool)

(assert (=> b!3005764 (= e!1887767 (= (nullable!3040 lt!1042866) (nullable!3040 (reg!9710 r!17423))))))

(declare-fun b!3005765 () Bool)

(assert (=> b!3005765 (= e!1887763 EmptyLang!9381)))

(declare-fun b!3005766 () Bool)

(assert (=> b!3005766 (= e!1887758 EmptyExpr!9381)))

(declare-fun bm!202217 () Bool)

(assert (=> bm!202217 (= call!202218 (isEmptyLang!471 (ite c!494876 lt!1042867 lt!1042863)))))

(assert (= (and d!846804 c!494879) b!3005765))

(assert (= (and d!846804 (not c!494879)) b!3005761))

(assert (= (and b!3005761 c!494878) b!3005758))

(assert (= (and b!3005761 (not c!494878)) b!3005743))

(assert (= (and b!3005743 c!494870) b!3005766))

(assert (= (and b!3005743 (not c!494870)) b!3005750))

(assert (= (and b!3005750 c!494872) b!3005756))

(assert (= (and b!3005750 (not c!494872)) b!3005762))

(assert (= (and b!3005756 (not res!1238747)) b!3005752))

(assert (= (and b!3005756 c!494877) b!3005757))

(assert (= (and b!3005756 (not c!494877)) b!3005755))

(assert (= (and b!3005762 c!494876) b!3005763))

(assert (= (and b!3005762 (not c!494876)) b!3005744))

(assert (= (and b!3005763 c!494871) b!3005745))

(assert (= (and b!3005763 (not c!494871)) b!3005742))

(assert (= (and b!3005742 c!494874) b!3005754))

(assert (= (and b!3005742 (not c!494874)) b!3005747))

(assert (= (and b!3005744 (not res!1238746)) b!3005760))

(assert (= (and b!3005744 c!494875) b!3005748))

(assert (= (and b!3005744 (not c!494875)) b!3005759))

(assert (= (and b!3005759 c!494869) b!3005746))

(assert (= (and b!3005759 (not c!494869)) b!3005749))

(assert (= (and b!3005749 c!494873) b!3005751))

(assert (= (and b!3005749 (not c!494873)) b!3005753))

(assert (= (or b!3005763 b!3005744) bm!202211))

(assert (= (or b!3005763 b!3005744) bm!202212))

(assert (= (or b!3005742 b!3005760) bm!202214))

(assert (= (or b!3005763 b!3005744) bm!202217))

(assert (= (or b!3005752 b!3005749) bm!202213))

(assert (= (or b!3005756 bm!202211) bm!202215))

(assert (= (or b!3005756 bm!202214) bm!202216))

(assert (= (and d!846804 res!1238748) b!3005764))

(declare-fun m!3354417 () Bool)

(assert (=> bm!202216 m!3354417))

(declare-fun m!3354419 () Bool)

(assert (=> bm!202217 m!3354419))

(declare-fun m!3354421 () Bool)

(assert (=> d!846804 m!3354421))

(assert (=> d!846804 m!3354401))

(declare-fun m!3354423 () Bool)

(assert (=> bm!202215 m!3354423))

(declare-fun m!3354425 () Bool)

(assert (=> bm!202213 m!3354425))

(declare-fun m!3354427 () Bool)

(assert (=> b!3005759 m!3354427))

(declare-fun m!3354429 () Bool)

(assert (=> bm!202212 m!3354429))

(declare-fun m!3354431 () Bool)

(assert (=> b!3005764 m!3354431))

(assert (=> b!3005764 m!3354383))

(assert (=> b!3005083 d!846804))

(declare-fun b!3005771 () Bool)

(declare-fun e!1887772 () Bool)

(declare-fun tp!954614 () Bool)

(assert (=> b!3005771 (= e!1887772 (and tp_is_empty!16325 tp!954614))))

(assert (=> b!3005085 (= tp!954573 e!1887772)))

(assert (= (and b!3005085 ((_ is Cons!35122) (t!234311 s!11993))) b!3005771))

(declare-fun b!3005785 () Bool)

(declare-fun e!1887775 () Bool)

(declare-fun tp!954626 () Bool)

(declare-fun tp!954628 () Bool)

(assert (=> b!3005785 (= e!1887775 (and tp!954626 tp!954628))))

(assert (=> b!3005079 (= tp!954568 e!1887775)))

(declare-fun b!3005783 () Bool)

(declare-fun tp!954629 () Bool)

(declare-fun tp!954627 () Bool)

(assert (=> b!3005783 (= e!1887775 (and tp!954629 tp!954627))))

(declare-fun b!3005782 () Bool)

(assert (=> b!3005782 (= e!1887775 tp_is_empty!16325)))

(declare-fun b!3005784 () Bool)

(declare-fun tp!954625 () Bool)

(assert (=> b!3005784 (= e!1887775 tp!954625)))

(assert (= (and b!3005079 ((_ is ElementMatch!9381) (regOne!19275 r!17423))) b!3005782))

(assert (= (and b!3005079 ((_ is Concat!14702) (regOne!19275 r!17423))) b!3005783))

(assert (= (and b!3005079 ((_ is Star!9381) (regOne!19275 r!17423))) b!3005784))

(assert (= (and b!3005079 ((_ is Union!9381) (regOne!19275 r!17423))) b!3005785))

(declare-fun b!3005789 () Bool)

(declare-fun e!1887776 () Bool)

(declare-fun tp!954631 () Bool)

(declare-fun tp!954633 () Bool)

(assert (=> b!3005789 (= e!1887776 (and tp!954631 tp!954633))))

(assert (=> b!3005079 (= tp!954571 e!1887776)))

(declare-fun b!3005787 () Bool)

(declare-fun tp!954634 () Bool)

(declare-fun tp!954632 () Bool)

(assert (=> b!3005787 (= e!1887776 (and tp!954634 tp!954632))))

(declare-fun b!3005786 () Bool)

(assert (=> b!3005786 (= e!1887776 tp_is_empty!16325)))

(declare-fun b!3005788 () Bool)

(declare-fun tp!954630 () Bool)

(assert (=> b!3005788 (= e!1887776 tp!954630)))

(assert (= (and b!3005079 ((_ is ElementMatch!9381) (regTwo!19275 r!17423))) b!3005786))

(assert (= (and b!3005079 ((_ is Concat!14702) (regTwo!19275 r!17423))) b!3005787))

(assert (= (and b!3005079 ((_ is Star!9381) (regTwo!19275 r!17423))) b!3005788))

(assert (= (and b!3005079 ((_ is Union!9381) (regTwo!19275 r!17423))) b!3005789))

(declare-fun b!3005793 () Bool)

(declare-fun e!1887777 () Bool)

(declare-fun tp!954636 () Bool)

(declare-fun tp!954638 () Bool)

(assert (=> b!3005793 (= e!1887777 (and tp!954636 tp!954638))))

(assert (=> b!3005093 (= tp!954572 e!1887777)))

(declare-fun b!3005791 () Bool)

(declare-fun tp!954639 () Bool)

(declare-fun tp!954637 () Bool)

(assert (=> b!3005791 (= e!1887777 (and tp!954639 tp!954637))))

(declare-fun b!3005790 () Bool)

(assert (=> b!3005790 (= e!1887777 tp_is_empty!16325)))

(declare-fun b!3005792 () Bool)

(declare-fun tp!954635 () Bool)

(assert (=> b!3005792 (= e!1887777 tp!954635)))

(assert (= (and b!3005093 ((_ is ElementMatch!9381) (reg!9710 r!17423))) b!3005790))

(assert (= (and b!3005093 ((_ is Concat!14702) (reg!9710 r!17423))) b!3005791))

(assert (= (and b!3005093 ((_ is Star!9381) (reg!9710 r!17423))) b!3005792))

(assert (= (and b!3005093 ((_ is Union!9381) (reg!9710 r!17423))) b!3005793))

(declare-fun b!3005797 () Bool)

(declare-fun e!1887778 () Bool)

(declare-fun tp!954641 () Bool)

(declare-fun tp!954643 () Bool)

(assert (=> b!3005797 (= e!1887778 (and tp!954641 tp!954643))))

(assert (=> b!3005082 (= tp!954569 e!1887778)))

(declare-fun b!3005795 () Bool)

(declare-fun tp!954644 () Bool)

(declare-fun tp!954642 () Bool)

(assert (=> b!3005795 (= e!1887778 (and tp!954644 tp!954642))))

(declare-fun b!3005794 () Bool)

(assert (=> b!3005794 (= e!1887778 tp_is_empty!16325)))

(declare-fun b!3005796 () Bool)

(declare-fun tp!954640 () Bool)

(assert (=> b!3005796 (= e!1887778 tp!954640)))

(assert (= (and b!3005082 ((_ is ElementMatch!9381) (regOne!19274 r!17423))) b!3005794))

(assert (= (and b!3005082 ((_ is Concat!14702) (regOne!19274 r!17423))) b!3005795))

(assert (= (and b!3005082 ((_ is Star!9381) (regOne!19274 r!17423))) b!3005796))

(assert (= (and b!3005082 ((_ is Union!9381) (regOne!19274 r!17423))) b!3005797))

(declare-fun b!3005801 () Bool)

(declare-fun e!1887779 () Bool)

(declare-fun tp!954646 () Bool)

(declare-fun tp!954648 () Bool)

(assert (=> b!3005801 (= e!1887779 (and tp!954646 tp!954648))))

(assert (=> b!3005082 (= tp!954570 e!1887779)))

(declare-fun b!3005799 () Bool)

(declare-fun tp!954649 () Bool)

(declare-fun tp!954647 () Bool)

(assert (=> b!3005799 (= e!1887779 (and tp!954649 tp!954647))))

(declare-fun b!3005798 () Bool)

(assert (=> b!3005798 (= e!1887779 tp_is_empty!16325)))

(declare-fun b!3005800 () Bool)

(declare-fun tp!954645 () Bool)

(assert (=> b!3005800 (= e!1887779 tp!954645)))

(assert (= (and b!3005082 ((_ is ElementMatch!9381) (regTwo!19274 r!17423))) b!3005798))

(assert (= (and b!3005082 ((_ is Concat!14702) (regTwo!19274 r!17423))) b!3005799))

(assert (= (and b!3005082 ((_ is Star!9381) (regTwo!19274 r!17423))) b!3005800))

(assert (= (and b!3005082 ((_ is Union!9381) (regTwo!19274 r!17423))) b!3005801))

(check-sat (not bm!202215) (not d!846756) (not b!3005604) (not bm!202190) (not b!3005319) (not b!3005614) (not b!3005690) (not d!846776) (not d!846772) (not b!3005324) (not d!846788) (not b!3005661) (not d!846754) (not bm!202183) (not b!3005771) (not b!3005795) (not b!3005759) (not d!846752) (not d!846750) (not b!3005662) (not b!3005680) (not b!3005799) (not b!3005669) (not d!846778) (not b!3005664) (not b!3005336) (not b!3005322) (not b!3005330) (not d!846804) (not b!3005791) (not b!3005598) (not b!3005609) (not d!846800) (not b!3005674) (not bm!202212) (not b!3005793) (not b!3005375) (not b!3005685) (not bm!202147) (not b!3005599) (not bm!202132) (not b!3005172) (not b!3005652) (not b!3005659) (not b!3005788) (not d!846748) (not b!3005160) (not b!3005792) (not b!3005611) (not d!846796) (not bm!202213) (not b!3005600) (not b!3005668) (not b!3005785) (not b!3005678) (not bm!202148) (not b!3005594) (not b!3005787) (not bm!202195) (not d!846740) (not b!3005608) (not b!3005595) (not b!3005801) (not b!3005796) (not b!3005649) (not b!3005331) (not b!3005636) (not bm!202217) (not b!3005376) tp_is_empty!16325 (not bm!202192) (not bm!202149) (not b!3005333) (not b!3005687) (not b!3005783) (not b!3005602) (not b!3005169) (not bm!202194) (not b!3005789) (not b!3005677) (not d!846794) (not b!3005684) (not bm!202193) (not b!3005784) (not b!3005167) (not b!3005764) (not d!846738) (not b!3005800) (not bm!202196) (not b!3005166) (not b!3005326) (not bm!202216) (not d!846706) (not b!3005597) (not b!3005671) (not b!3005797) (not b!3005162))
(check-sat)
