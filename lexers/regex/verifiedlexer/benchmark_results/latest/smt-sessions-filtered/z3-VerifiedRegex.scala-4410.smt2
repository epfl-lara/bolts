; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!234744 () Bool)

(assert start!234744)

(declare-fun b!2392274 () Bool)

(assert (=> b!2392274 true))

(assert (=> b!2392274 true))

(declare-fun lambda!89657 () Int)

(declare-fun lambda!89656 () Int)

(assert (=> b!2392274 (not (= lambda!89657 lambda!89656))))

(assert (=> b!2392274 true))

(assert (=> b!2392274 true))

(declare-fun bm!145721 () Bool)

(declare-datatypes ((C!14184 0))(
  ( (C!14185 (val!8334 Int)) )
))
(declare-datatypes ((Regex!7013 0))(
  ( (ElementMatch!7013 (c!380565 C!14184)) (Concat!11649 (regOne!14538 Regex!7013) (regTwo!14538 Regex!7013)) (EmptyExpr!7013) (Star!7013 (reg!7342 Regex!7013)) (EmptyLang!7013) (Union!7013 (regOne!14539 Regex!7013) (regTwo!14539 Regex!7013)) )
))
(declare-fun call!145733 () Regex!7013)

(declare-fun lt!870810 () Regex!7013)

(declare-datatypes ((List!28264 0))(
  ( (Nil!28166) (Cons!28166 (h!33567 C!14184) (t!208241 List!28264)) )
))
(declare-datatypes ((tuple2!27890 0))(
  ( (tuple2!27891 (_1!16486 List!28264) (_2!16486 List!28264)) )
))
(declare-datatypes ((Option!5556 0))(
  ( (None!5555) (Some!5555 (v!30963 tuple2!27890)) )
))
(declare-fun call!145735 () Option!5556)

(declare-fun s!9460 () List!28264)

(declare-fun findConcatSeparation!664 (Regex!7013 Regex!7013 List!28264 List!28264 List!28264) Option!5556)

(assert (=> bm!145721 (= call!145735 (findConcatSeparation!664 lt!870810 call!145733 Nil!28166 s!9460 s!9460))))

(declare-fun e!1524851 () Bool)

(declare-fun e!1524852 () Bool)

(assert (=> b!2392274 (= e!1524851 e!1524852)))

(declare-fun res!1016341 () Bool)

(assert (=> b!2392274 (=> res!1016341 e!1524852)))

(declare-fun lt!870814 () Bool)

(declare-fun lt!870799 () Bool)

(assert (=> b!2392274 (= res!1016341 (not (= lt!870814 lt!870799)))))

(declare-fun Exists!1075 (Int) Bool)

(assert (=> b!2392274 (= (Exists!1075 lambda!89656) (Exists!1075 lambda!89657))))

(declare-datatypes ((Unit!41192 0))(
  ( (Unit!41193) )
))
(declare-fun lt!870811 () Unit!41192)

(declare-fun r!13927 () Regex!7013)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!414 (Regex!7013 Regex!7013 List!28264) Unit!41192)

(assert (=> b!2392274 (= lt!870811 (lemmaExistCutMatchRandMatchRSpecEquivalent!414 (regOne!14538 r!13927) (regTwo!14538 r!13927) s!9460))))

(assert (=> b!2392274 (= lt!870799 (Exists!1075 lambda!89656))))

(declare-fun isDefined!4384 (Option!5556) Bool)

(assert (=> b!2392274 (= lt!870799 (isDefined!4384 (findConcatSeparation!664 (regOne!14538 r!13927) (regTwo!14538 r!13927) Nil!28166 s!9460 s!9460)))))

(declare-fun lt!870805 () Unit!41192)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!664 (Regex!7013 Regex!7013 List!28264) Unit!41192)

(assert (=> b!2392274 (= lt!870805 (lemmaFindConcatSeparationEquivalentToExists!664 (regOne!14538 r!13927) (regTwo!14538 r!13927) s!9460))))

(declare-fun b!2392275 () Bool)

(declare-fun e!1524841 () Unit!41192)

(declare-fun Unit!41194 () Unit!41192)

(assert (=> b!2392275 (= e!1524841 Unit!41194)))

(declare-fun lt!870815 () Option!5556)

(declare-fun call!145731 () Option!5556)

(assert (=> b!2392275 (= lt!870815 call!145731)))

(declare-fun lt!870809 () Bool)

(declare-fun call!145736 () Bool)

(assert (=> b!2392275 (= lt!870809 call!145736)))

(declare-fun c!380561 () Bool)

(assert (=> b!2392275 (= c!380561 lt!870809)))

(declare-fun lt!870804 () Unit!41192)

(declare-fun e!1524845 () Unit!41192)

(assert (=> b!2392275 (= lt!870804 e!1524845)))

(declare-fun res!1016346 () Bool)

(assert (=> b!2392275 (= res!1016346 (not lt!870809))))

(declare-fun e!1524846 () Bool)

(assert (=> b!2392275 (=> (not res!1016346) (not e!1524846))))

(assert (=> b!2392275 e!1524846))

(declare-fun bm!145722 () Bool)

(declare-fun call!145726 () Regex!7013)

(declare-datatypes ((List!28265 0))(
  ( (Nil!28167) (Cons!28167 (h!33568 Regex!7013) (t!208242 List!28265)) )
))
(declare-fun l!9164 () List!28265)

(declare-fun head!5257 (List!28265) Regex!7013)

(assert (=> bm!145722 (= call!145726 (head!5257 l!9164))))

(declare-fun b!2392276 () Bool)

(declare-fun e!1524847 () Unit!41192)

(declare-fun e!1524853 () Unit!41192)

(assert (=> b!2392276 (= e!1524847 e!1524853)))

(declare-fun lt!870807 () List!28265)

(declare-fun tail!3527 (List!28265) List!28265)

(assert (=> b!2392276 (= lt!870807 (tail!3527 l!9164))))

(declare-fun c!380564 () Bool)

(declare-fun isEmpty!16146 (List!28265) Bool)

(assert (=> b!2392276 (= c!380564 (isEmpty!16146 lt!870807))))

(declare-fun bm!145723 () Bool)

(declare-fun c!380562 () Bool)

(assert (=> bm!145723 (= call!145736 (isDefined!4384 (ite c!380562 call!145731 lt!870815)))))

(declare-fun b!2392277 () Bool)

(declare-fun e!1524839 () Bool)

(declare-fun tp!762380 () Bool)

(declare-fun tp!762383 () Bool)

(assert (=> b!2392277 (= e!1524839 (and tp!762380 tp!762383))))

(declare-fun b!2392278 () Bool)

(declare-fun lt!870800 () Bool)

(declare-fun call!145730 () Bool)

(assert (=> b!2392278 (= lt!870800 call!145730)))

(declare-fun Unit!41195 () Unit!41192)

(assert (=> b!2392278 (= e!1524853 Unit!41195)))

(declare-fun call!145732 () Option!5556)

(declare-fun bm!145724 () Bool)

(assert (=> bm!145724 (= call!145730 (isDefined!4384 (ite c!380564 call!145735 call!145732)))))

(declare-fun bm!145725 () Bool)

(declare-fun call!145729 () Regex!7013)

(assert (=> bm!145725 (= call!145732 (findConcatSeparation!664 (ite c!380564 lt!870810 call!145726) (ite c!380564 EmptyExpr!7013 call!145729) Nil!28166 s!9460 s!9460))))

(declare-fun b!2392279 () Bool)

(declare-fun e!1524840 () Bool)

(assert (=> b!2392279 e!1524840))

(declare-fun res!1016342 () Bool)

(assert (=> b!2392279 (=> (not res!1016342) (not e!1524840))))

(declare-fun call!145734 () Bool)

(assert (=> b!2392279 (= res!1016342 call!145734)))

(declare-fun lt!870808 () Unit!41192)

(declare-fun lt!870813 () tuple2!27890)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!32 (Regex!7013 Regex!7013 List!28264 List!28264 List!28264) Unit!41192)

(assert (=> b!2392279 (= lt!870808 (lemmaFindSeparationIsDefinedThenConcatMatches!32 lt!870810 EmptyExpr!7013 (_1!16486 lt!870813) (_2!16486 lt!870813) s!9460))))

(declare-fun get!8617 (Option!5556) tuple2!27890)

(assert (=> b!2392279 (= lt!870813 (get!8617 lt!870815))))

(declare-fun Unit!41196 () Unit!41192)

(assert (=> b!2392279 (= e!1524845 Unit!41196)))

(declare-fun b!2392280 () Bool)

(declare-fun tp!762387 () Bool)

(assert (=> b!2392280 (= e!1524839 tp!762387)))

(declare-fun call!145727 () List!28264)

(declare-fun bm!145726 () Bool)

(declare-fun ++!6967 (List!28264 List!28264) List!28264)

(assert (=> bm!145726 (= call!145727 (++!6967 (ite c!380562 s!9460 (_1!16486 lt!870813)) (ite c!380562 Nil!28166 (_2!16486 lt!870813))))))

(declare-fun b!2392281 () Bool)

(declare-fun e!1524849 () Bool)

(declare-fun tp!762382 () Bool)

(declare-fun tp!762386 () Bool)

(assert (=> b!2392281 (= e!1524849 (and tp!762382 tp!762386))))

(declare-fun b!2392282 () Bool)

(declare-fun call!145728 () Bool)

(assert (=> b!2392282 (= e!1524846 (not call!145728))))

(declare-fun b!2392283 () Bool)

(declare-fun Unit!41197 () Unit!41192)

(assert (=> b!2392283 (= e!1524847 Unit!41197)))

(assert (=> b!2392283 false))

(declare-fun b!2392284 () Bool)

(declare-fun e!1524844 () Bool)

(assert (=> b!2392284 (= e!1524852 e!1524844)))

(declare-fun res!1016347 () Bool)

(assert (=> b!2392284 (=> res!1016347 e!1524844)))

(get-info :version)

(assert (=> b!2392284 (= res!1016347 (not ((_ is Cons!28167) l!9164)))))

(declare-fun lt!870798 () Unit!41192)

(assert (=> b!2392284 (= lt!870798 e!1524847)))

(declare-fun c!380563 () Bool)

(assert (=> b!2392284 (= c!380563 (isEmpty!16146 l!9164))))

(declare-fun b!2392285 () Bool)

(declare-fun res!1016345 () Bool)

(declare-fun e!1524842 () Bool)

(assert (=> b!2392285 (=> res!1016345 e!1524842)))

(declare-fun lt!870816 () Regex!7013)

(declare-fun validRegex!2738 (Regex!7013) Bool)

(assert (=> b!2392285 (= res!1016345 (not (validRegex!2738 lt!870816)))))

(declare-fun b!2392286 () Bool)

(declare-fun e!1524843 () Bool)

(declare-fun tp_is_empty!11439 () Bool)

(declare-fun tp!762385 () Bool)

(assert (=> b!2392286 (= e!1524843 (and tp_is_empty!11439 tp!762385))))

(declare-fun b!2392287 () Bool)

(declare-fun e!1524854 () Bool)

(assert (=> b!2392287 (= e!1524854 (not e!1524851))))

(declare-fun res!1016339 () Bool)

(assert (=> b!2392287 (=> res!1016339 e!1524851)))

(assert (=> b!2392287 (= res!1016339 (not ((_ is Concat!11649) r!13927)))))

(assert (=> b!2392287 (= lt!870800 lt!870814)))

(declare-fun matchRSpec!862 (Regex!7013 List!28264) Bool)

(assert (=> b!2392287 (= lt!870814 (matchRSpec!862 r!13927 s!9460))))

(declare-fun matchR!3130 (Regex!7013 List!28264) Bool)

(assert (=> b!2392287 (= lt!870800 (matchR!3130 r!13927 s!9460))))

(declare-fun lt!870803 () Unit!41192)

(declare-fun mainMatchTheorem!862 (Regex!7013 List!28264) Unit!41192)

(assert (=> b!2392287 (= lt!870803 (mainMatchTheorem!862 r!13927 s!9460))))

(declare-fun b!2392288 () Bool)

(assert (=> b!2392288 (= e!1524840 false)))

(declare-fun bm!145727 () Bool)

(declare-fun generalisedConcat!114 (List!28265) Regex!7013)

(assert (=> bm!145727 (= call!145729 (generalisedConcat!114 lt!870807))))

(declare-fun b!2392289 () Bool)

(declare-fun Unit!41198 () Unit!41192)

(assert (=> b!2392289 (= e!1524845 Unit!41198)))

(declare-fun b!2392290 () Bool)

(declare-fun e!1524850 () Bool)

(assert (=> b!2392290 (= e!1524850 call!145734)))

(declare-fun bm!145728 () Bool)

(declare-fun lt!870802 () Regex!7013)

(assert (=> bm!145728 (= call!145734 (matchR!3130 (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013)) (ite c!380562 s!9460 call!145727)))))

(declare-fun b!2392291 () Bool)

(declare-fun Unit!41199 () Unit!41192)

(assert (=> b!2392291 (= e!1524841 Unit!41199)))

(declare-fun lt!870812 () Unit!41192)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!50 (Regex!7013 Regex!7013 List!28264 List!28264) Unit!41192)

(assert (=> b!2392291 (= lt!870812 (lemmaTwoRegexMatchThenConcatMatchesConcatString!50 lt!870810 EmptyExpr!7013 s!9460 Nil!28166))))

(assert (=> b!2392291 (= lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013))))

(declare-fun res!1016340 () Bool)

(assert (=> b!2392291 (= res!1016340 (matchR!3130 lt!870802 call!145727))))

(assert (=> b!2392291 (=> (not res!1016340) (not e!1524850))))

(assert (=> b!2392291 e!1524850))

(declare-fun lt!870801 () Unit!41192)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!32 (Regex!7013 Regex!7013 List!28264) Unit!41192)

(assert (=> b!2392291 (= lt!870801 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!32 lt!870810 EmptyExpr!7013 s!9460))))

(declare-fun res!1016343 () Bool)

(assert (=> b!2392291 (= res!1016343 call!145736)))

(declare-fun e!1524848 () Bool)

(assert (=> b!2392291 (=> (not res!1016343) (not e!1524848))))

(assert (=> b!2392291 e!1524848))

(declare-fun b!2392292 () Bool)

(assert (=> b!2392292 (= e!1524839 tp_is_empty!11439)))

(declare-fun b!2392293 () Bool)

(assert (=> b!2392293 (= e!1524848 call!145728)))

(declare-fun bm!145729 () Bool)

(assert (=> bm!145729 (= call!145731 call!145732)))

(declare-fun b!2392294 () Bool)

(assert (=> b!2392294 (= lt!870800 (isDefined!4384 (findConcatSeparation!664 lt!870810 call!145729 Nil!28166 s!9460 s!9460)))))

(declare-fun lt!870806 () Unit!41192)

(assert (=> b!2392294 (= lt!870806 e!1524841)))

(assert (=> b!2392294 (= c!380562 (matchR!3130 lt!870810 s!9460))))

(assert (=> b!2392294 (= lt!870810 call!145726)))

(declare-fun Unit!41200 () Unit!41192)

(assert (=> b!2392294 (= e!1524853 Unit!41200)))

(declare-fun bm!145730 () Bool)

(assert (=> bm!145730 (= call!145728 call!145730)))

(declare-fun res!1016348 () Bool)

(assert (=> start!234744 (=> (not res!1016348) (not e!1524854))))

(declare-fun lambda!89655 () Int)

(declare-fun forall!5647 (List!28265 Int) Bool)

(assert (=> start!234744 (= res!1016348 (forall!5647 l!9164 lambda!89655))))

(assert (=> start!234744 e!1524854))

(assert (=> start!234744 e!1524849))

(assert (=> start!234744 e!1524839))

(assert (=> start!234744 e!1524843))

(declare-fun b!2392295 () Bool)

(declare-fun res!1016338 () Bool)

(assert (=> b!2392295 (=> (not res!1016338) (not e!1524854))))

(assert (=> b!2392295 (= res!1016338 (= r!13927 (generalisedConcat!114 l!9164)))))

(declare-fun b!2392296 () Bool)

(assert (=> b!2392296 (= e!1524842 (= (++!6967 Nil!28166 s!9460) s!9460))))

(declare-fun b!2392297 () Bool)

(assert (=> b!2392297 (= e!1524844 e!1524842)))

(declare-fun res!1016344 () Bool)

(assert (=> b!2392297 (=> res!1016344 e!1524842)))

(assert (=> b!2392297 (= res!1016344 (not (validRegex!2738 (h!33568 l!9164))))))

(assert (=> b!2392297 (= lt!870816 (generalisedConcat!114 (t!208242 l!9164)))))

(declare-fun b!2392298 () Bool)

(declare-fun tp!762381 () Bool)

(declare-fun tp!762384 () Bool)

(assert (=> b!2392298 (= e!1524839 (and tp!762381 tp!762384))))

(declare-fun bm!145731 () Bool)

(assert (=> bm!145731 (= call!145733 call!145729)))

(assert (= (and start!234744 res!1016348) b!2392295))

(assert (= (and b!2392295 res!1016338) b!2392287))

(assert (= (and b!2392287 (not res!1016339)) b!2392274))

(assert (= (and b!2392274 (not res!1016341)) b!2392284))

(assert (= (and b!2392284 c!380563) b!2392283))

(assert (= (and b!2392284 (not c!380563)) b!2392276))

(assert (= (and b!2392276 c!380564) b!2392294))

(assert (= (and b!2392276 (not c!380564)) b!2392278))

(assert (= (and b!2392294 c!380562) b!2392291))

(assert (= (and b!2392294 (not c!380562)) b!2392275))

(assert (= (and b!2392291 res!1016340) b!2392290))

(assert (= (and b!2392291 res!1016343) b!2392293))

(assert (= (and b!2392275 c!380561) b!2392279))

(assert (= (and b!2392275 (not c!380561)) b!2392289))

(assert (= (and b!2392279 res!1016342) b!2392288))

(assert (= (and b!2392275 res!1016346) b!2392282))

(assert (= (or b!2392293 b!2392282) bm!145731))

(assert (= (or b!2392291 b!2392279) bm!145726))

(assert (= (or b!2392291 b!2392275) bm!145729))

(assert (= (or b!2392290 b!2392279) bm!145728))

(assert (= (or b!2392291 b!2392275) bm!145723))

(assert (= (or b!2392293 b!2392282) bm!145721))

(assert (= (or b!2392293 b!2392282) bm!145730))

(assert (= (or b!2392294 b!2392278) bm!145722))

(assert (= (or bm!145731 b!2392294 b!2392278) bm!145727))

(assert (= (or bm!145729 b!2392278) bm!145725))

(assert (= (or bm!145730 b!2392278) bm!145724))

(assert (= (and b!2392284 (not res!1016347)) b!2392297))

(assert (= (and b!2392297 (not res!1016344)) b!2392285))

(assert (= (and b!2392285 (not res!1016345)) b!2392296))

(assert (= (and start!234744 ((_ is Cons!28167) l!9164)) b!2392281))

(assert (= (and start!234744 ((_ is ElementMatch!7013) r!13927)) b!2392292))

(assert (= (and start!234744 ((_ is Concat!11649) r!13927)) b!2392277))

(assert (= (and start!234744 ((_ is Star!7013) r!13927)) b!2392280))

(assert (= (and start!234744 ((_ is Union!7013) r!13927)) b!2392298))

(assert (= (and start!234744 ((_ is Cons!28166) s!9460)) b!2392286))

(declare-fun m!2791991 () Bool)

(assert (=> b!2392295 m!2791991))

(declare-fun m!2791993 () Bool)

(assert (=> b!2392297 m!2791993))

(declare-fun m!2791995 () Bool)

(assert (=> b!2392297 m!2791995))

(declare-fun m!2791997 () Bool)

(assert (=> bm!145726 m!2791997))

(declare-fun m!2791999 () Bool)

(assert (=> bm!145724 m!2791999))

(declare-fun m!2792001 () Bool)

(assert (=> b!2392276 m!2792001))

(declare-fun m!2792003 () Bool)

(assert (=> b!2392276 m!2792003))

(declare-fun m!2792005 () Bool)

(assert (=> b!2392291 m!2792005))

(declare-fun m!2792007 () Bool)

(assert (=> b!2392291 m!2792007))

(declare-fun m!2792009 () Bool)

(assert (=> b!2392291 m!2792009))

(declare-fun m!2792011 () Bool)

(assert (=> b!2392285 m!2792011))

(declare-fun m!2792013 () Bool)

(assert (=> bm!145721 m!2792013))

(declare-fun m!2792015 () Bool)

(assert (=> b!2392279 m!2792015))

(declare-fun m!2792017 () Bool)

(assert (=> b!2392279 m!2792017))

(declare-fun m!2792019 () Bool)

(assert (=> bm!145727 m!2792019))

(declare-fun m!2792021 () Bool)

(assert (=> bm!145723 m!2792021))

(declare-fun m!2792023 () Bool)

(assert (=> bm!145722 m!2792023))

(declare-fun m!2792025 () Bool)

(assert (=> b!2392284 m!2792025))

(declare-fun m!2792027 () Bool)

(assert (=> bm!145728 m!2792027))

(declare-fun m!2792029 () Bool)

(assert (=> start!234744 m!2792029))

(declare-fun m!2792031 () Bool)

(assert (=> b!2392287 m!2792031))

(declare-fun m!2792033 () Bool)

(assert (=> b!2392287 m!2792033))

(declare-fun m!2792035 () Bool)

(assert (=> b!2392287 m!2792035))

(declare-fun m!2792037 () Bool)

(assert (=> bm!145725 m!2792037))

(declare-fun m!2792039 () Bool)

(assert (=> b!2392296 m!2792039))

(declare-fun m!2792041 () Bool)

(assert (=> b!2392294 m!2792041))

(assert (=> b!2392294 m!2792041))

(declare-fun m!2792043 () Bool)

(assert (=> b!2392294 m!2792043))

(declare-fun m!2792045 () Bool)

(assert (=> b!2392294 m!2792045))

(declare-fun m!2792047 () Bool)

(assert (=> b!2392274 m!2792047))

(declare-fun m!2792049 () Bool)

(assert (=> b!2392274 m!2792049))

(declare-fun m!2792051 () Bool)

(assert (=> b!2392274 m!2792051))

(declare-fun m!2792053 () Bool)

(assert (=> b!2392274 m!2792053))

(assert (=> b!2392274 m!2792047))

(declare-fun m!2792055 () Bool)

(assert (=> b!2392274 m!2792055))

(declare-fun m!2792057 () Bool)

(assert (=> b!2392274 m!2792057))

(assert (=> b!2392274 m!2792057))

(check-sat (not bm!145723) (not b!2392281) (not b!2392277) (not bm!145725) (not bm!145724) tp_is_empty!11439 (not bm!145727) (not b!2392291) (not bm!145722) (not bm!145721) (not b!2392295) (not b!2392298) (not b!2392286) (not b!2392276) (not b!2392294) (not b!2392274) (not start!234744) (not b!2392297) (not b!2392296) (not bm!145728) (not b!2392284) (not b!2392279) (not b!2392287) (not bm!145726) (not b!2392280) (not b!2392285))
(check-sat)
(get-model)

(declare-fun b!2392349 () Bool)

(declare-fun e!1524889 () Bool)

(declare-fun e!1524888 () Bool)

(assert (=> b!2392349 (= e!1524889 e!1524888)))

(declare-fun res!1016375 () Bool)

(declare-fun nullable!2061 (Regex!7013) Bool)

(assert (=> b!2392349 (= res!1016375 (not (nullable!2061 (reg!7342 lt!870816))))))

(assert (=> b!2392349 (=> (not res!1016375) (not e!1524888))))

(declare-fun c!380576 () Bool)

(declare-fun c!380577 () Bool)

(declare-fun call!145746 () Bool)

(declare-fun bm!145740 () Bool)

(assert (=> bm!145740 (= call!145746 (validRegex!2738 (ite c!380577 (reg!7342 lt!870816) (ite c!380576 (regTwo!14539 lt!870816) (regOne!14538 lt!870816)))))))

(declare-fun b!2392350 () Bool)

(declare-fun e!1524883 () Bool)

(declare-fun e!1524885 () Bool)

(assert (=> b!2392350 (= e!1524883 e!1524885)))

(declare-fun res!1016378 () Bool)

(assert (=> b!2392350 (=> (not res!1016378) (not e!1524885))))

(declare-fun call!145747 () Bool)

(assert (=> b!2392350 (= res!1016378 call!145747)))

(declare-fun b!2392351 () Bool)

(declare-fun call!145745 () Bool)

(assert (=> b!2392351 (= e!1524885 call!145745)))

(declare-fun bm!145741 () Bool)

(assert (=> bm!145741 (= call!145745 (validRegex!2738 (ite c!380576 (regOne!14539 lt!870816) (regTwo!14538 lt!870816))))))

(declare-fun b!2392352 () Bool)

(assert (=> b!2392352 (= e!1524888 call!145746)))

(declare-fun b!2392353 () Bool)

(declare-fun e!1524887 () Bool)

(assert (=> b!2392353 (= e!1524887 e!1524889)))

(assert (=> b!2392353 (= c!380577 ((_ is Star!7013) lt!870816))))

(declare-fun bm!145742 () Bool)

(assert (=> bm!145742 (= call!145747 call!145746)))

(declare-fun d!698373 () Bool)

(declare-fun res!1016377 () Bool)

(assert (=> d!698373 (=> res!1016377 e!1524887)))

(assert (=> d!698373 (= res!1016377 ((_ is ElementMatch!7013) lt!870816))))

(assert (=> d!698373 (= (validRegex!2738 lt!870816) e!1524887)))

(declare-fun b!2392354 () Bool)

(declare-fun res!1016376 () Bool)

(declare-fun e!1524886 () Bool)

(assert (=> b!2392354 (=> (not res!1016376) (not e!1524886))))

(assert (=> b!2392354 (= res!1016376 call!145745)))

(declare-fun e!1524884 () Bool)

(assert (=> b!2392354 (= e!1524884 e!1524886)))

(declare-fun b!2392355 () Bool)

(assert (=> b!2392355 (= e!1524886 call!145747)))

(declare-fun b!2392356 () Bool)

(assert (=> b!2392356 (= e!1524889 e!1524884)))

(assert (=> b!2392356 (= c!380576 ((_ is Union!7013) lt!870816))))

(declare-fun b!2392357 () Bool)

(declare-fun res!1016379 () Bool)

(assert (=> b!2392357 (=> res!1016379 e!1524883)))

(assert (=> b!2392357 (= res!1016379 (not ((_ is Concat!11649) lt!870816)))))

(assert (=> b!2392357 (= e!1524884 e!1524883)))

(assert (= (and d!698373 (not res!1016377)) b!2392353))

(assert (= (and b!2392353 c!380577) b!2392349))

(assert (= (and b!2392353 (not c!380577)) b!2392356))

(assert (= (and b!2392349 res!1016375) b!2392352))

(assert (= (and b!2392356 c!380576) b!2392354))

(assert (= (and b!2392356 (not c!380576)) b!2392357))

(assert (= (and b!2392354 res!1016376) b!2392355))

(assert (= (and b!2392357 (not res!1016379)) b!2392350))

(assert (= (and b!2392350 res!1016378) b!2392351))

(assert (= (or b!2392354 b!2392351) bm!145741))

(assert (= (or b!2392355 b!2392350) bm!145742))

(assert (= (or b!2392352 bm!145742) bm!145740))

(declare-fun m!2792059 () Bool)

(assert (=> b!2392349 m!2792059))

(declare-fun m!2792061 () Bool)

(assert (=> bm!145740 m!2792061))

(declare-fun m!2792063 () Bool)

(assert (=> bm!145741 m!2792063))

(assert (=> b!2392285 d!698373))

(declare-fun d!698375 () Bool)

(declare-fun isEmpty!16148 (Option!5556) Bool)

(assert (=> d!698375 (= (isDefined!4384 (ite c!380562 call!145731 lt!870815)) (not (isEmpty!16148 (ite c!380562 call!145731 lt!870815))))))

(declare-fun bs!462629 () Bool)

(assert (= bs!462629 d!698375))

(declare-fun m!2792065 () Bool)

(assert (=> bs!462629 m!2792065))

(assert (=> bm!145723 d!698375))

(declare-fun d!698377 () Bool)

(assert (=> d!698377 (= (isEmpty!16146 l!9164) ((_ is Nil!28167) l!9164))))

(assert (=> b!2392284 d!698377))

(declare-fun bs!462632 () Bool)

(declare-fun b!2392445 () Bool)

(assert (= bs!462632 (and b!2392445 b!2392274)))

(declare-fun lambda!89665 () Int)

(assert (=> bs!462632 (not (= lambda!89665 lambda!89656))))

(assert (=> bs!462632 (not (= lambda!89665 lambda!89657))))

(assert (=> b!2392445 true))

(assert (=> b!2392445 true))

(declare-fun bs!462633 () Bool)

(declare-fun b!2392447 () Bool)

(assert (= bs!462633 (and b!2392447 b!2392274)))

(declare-fun lambda!89666 () Int)

(assert (=> bs!462633 (not (= lambda!89666 lambda!89656))))

(assert (=> bs!462633 (= lambda!89666 lambda!89657)))

(declare-fun bs!462634 () Bool)

(assert (= bs!462634 (and b!2392447 b!2392445)))

(assert (=> bs!462634 (not (= lambda!89666 lambda!89665))))

(assert (=> b!2392447 true))

(assert (=> b!2392447 true))

(declare-fun b!2392440 () Bool)

(declare-fun e!1524939 () Bool)

(declare-fun e!1524940 () Bool)

(assert (=> b!2392440 (= e!1524939 e!1524940)))

(declare-fun res!1016417 () Bool)

(assert (=> b!2392440 (= res!1016417 (not ((_ is EmptyLang!7013) r!13927)))))

(assert (=> b!2392440 (=> (not res!1016417) (not e!1524940))))

(declare-fun b!2392441 () Bool)

(declare-fun e!1524944 () Bool)

(assert (=> b!2392441 (= e!1524944 (matchRSpec!862 (regTwo!14539 r!13927) s!9460))))

(declare-fun b!2392442 () Bool)

(declare-fun c!380603 () Bool)

(assert (=> b!2392442 (= c!380603 ((_ is Union!7013) r!13927))))

(declare-fun e!1524943 () Bool)

(declare-fun e!1524945 () Bool)

(assert (=> b!2392442 (= e!1524943 e!1524945)))

(declare-fun b!2392443 () Bool)

(declare-fun e!1524941 () Bool)

(assert (=> b!2392443 (= e!1524945 e!1524941)))

(declare-fun c!380604 () Bool)

(assert (=> b!2392443 (= c!380604 ((_ is Star!7013) r!13927))))

(declare-fun b!2392444 () Bool)

(declare-fun c!380601 () Bool)

(assert (=> b!2392444 (= c!380601 ((_ is ElementMatch!7013) r!13927))))

(assert (=> b!2392444 (= e!1524940 e!1524943)))

(declare-fun e!1524942 () Bool)

(declare-fun call!145754 () Bool)

(assert (=> b!2392445 (= e!1524942 call!145754)))

(declare-fun bm!145748 () Bool)

(assert (=> bm!145748 (= call!145754 (Exists!1075 (ite c!380604 lambda!89665 lambda!89666)))))

(declare-fun bm!145749 () Bool)

(declare-fun call!145753 () Bool)

(declare-fun isEmpty!16149 (List!28264) Bool)

(assert (=> bm!145749 (= call!145753 (isEmpty!16149 s!9460))))

(assert (=> b!2392447 (= e!1524941 call!145754)))

(declare-fun b!2392448 () Bool)

(assert (=> b!2392448 (= e!1524945 e!1524944)))

(declare-fun res!1016418 () Bool)

(assert (=> b!2392448 (= res!1016418 (matchRSpec!862 (regOne!14539 r!13927) s!9460))))

(assert (=> b!2392448 (=> res!1016418 e!1524944)))

(declare-fun b!2392446 () Bool)

(assert (=> b!2392446 (= e!1524943 (= s!9460 (Cons!28166 (c!380565 r!13927) Nil!28166)))))

(declare-fun d!698379 () Bool)

(declare-fun c!380602 () Bool)

(assert (=> d!698379 (= c!380602 ((_ is EmptyExpr!7013) r!13927))))

(assert (=> d!698379 (= (matchRSpec!862 r!13927 s!9460) e!1524939)))

(declare-fun b!2392449 () Bool)

(declare-fun res!1016416 () Bool)

(assert (=> b!2392449 (=> res!1016416 e!1524942)))

(assert (=> b!2392449 (= res!1016416 call!145753)))

(assert (=> b!2392449 (= e!1524941 e!1524942)))

(declare-fun b!2392450 () Bool)

(assert (=> b!2392450 (= e!1524939 call!145753)))

(assert (= (and d!698379 c!380602) b!2392450))

(assert (= (and d!698379 (not c!380602)) b!2392440))

(assert (= (and b!2392440 res!1016417) b!2392444))

(assert (= (and b!2392444 c!380601) b!2392446))

(assert (= (and b!2392444 (not c!380601)) b!2392442))

(assert (= (and b!2392442 c!380603) b!2392448))

(assert (= (and b!2392442 (not c!380603)) b!2392443))

(assert (= (and b!2392448 (not res!1016418)) b!2392441))

(assert (= (and b!2392443 c!380604) b!2392449))

(assert (= (and b!2392443 (not c!380604)) b!2392447))

(assert (= (and b!2392449 (not res!1016416)) b!2392445))

(assert (= (or b!2392445 b!2392447) bm!145748))

(assert (= (or b!2392450 b!2392449) bm!145749))

(declare-fun m!2792101 () Bool)

(assert (=> b!2392441 m!2792101))

(declare-fun m!2792103 () Bool)

(assert (=> bm!145748 m!2792103))

(declare-fun m!2792105 () Bool)

(assert (=> bm!145749 m!2792105))

(declare-fun m!2792107 () Bool)

(assert (=> b!2392448 m!2792107))

(assert (=> b!2392287 d!698379))

(declare-fun b!2392507 () Bool)

(declare-fun e!1524981 () Bool)

(declare-fun lt!870834 () Bool)

(declare-fun call!145757 () Bool)

(assert (=> b!2392507 (= e!1524981 (= lt!870834 call!145757))))

(declare-fun b!2392508 () Bool)

(declare-fun e!1524980 () Bool)

(declare-fun head!5259 (List!28264) C!14184)

(assert (=> b!2392508 (= e!1524980 (not (= (head!5259 s!9460) (c!380565 r!13927))))))

(declare-fun b!2392509 () Bool)

(declare-fun e!1524975 () Bool)

(assert (=> b!2392509 (= e!1524981 e!1524975)))

(declare-fun c!380618 () Bool)

(assert (=> b!2392509 (= c!380618 ((_ is EmptyLang!7013) r!13927))))

(declare-fun b!2392510 () Bool)

(declare-fun res!1016452 () Bool)

(assert (=> b!2392510 (=> res!1016452 e!1524980)))

(declare-fun tail!3529 (List!28264) List!28264)

(assert (=> b!2392510 (= res!1016452 (not (isEmpty!16149 (tail!3529 s!9460))))))

(declare-fun b!2392511 () Bool)

(assert (=> b!2392511 (= e!1524975 (not lt!870834))))

(declare-fun b!2392512 () Bool)

(declare-fun e!1524978 () Bool)

(declare-fun derivativeStep!1720 (Regex!7013 C!14184) Regex!7013)

(assert (=> b!2392512 (= e!1524978 (matchR!3130 (derivativeStep!1720 r!13927 (head!5259 s!9460)) (tail!3529 s!9460)))))

(declare-fun b!2392513 () Bool)

(assert (=> b!2392513 (= e!1524978 (nullable!2061 r!13927))))

(declare-fun b!2392514 () Bool)

(declare-fun res!1016457 () Bool)

(declare-fun e!1524979 () Bool)

(assert (=> b!2392514 (=> (not res!1016457) (not e!1524979))))

(assert (=> b!2392514 (= res!1016457 (isEmpty!16149 (tail!3529 s!9460)))))

(declare-fun b!2392515 () Bool)

(assert (=> b!2392515 (= e!1524979 (= (head!5259 s!9460) (c!380565 r!13927)))))

(declare-fun bm!145752 () Bool)

(assert (=> bm!145752 (= call!145757 (isEmpty!16149 s!9460))))

(declare-fun d!698389 () Bool)

(assert (=> d!698389 e!1524981))

(declare-fun c!380617 () Bool)

(assert (=> d!698389 (= c!380617 ((_ is EmptyExpr!7013) r!13927))))

(assert (=> d!698389 (= lt!870834 e!1524978)))

(declare-fun c!380619 () Bool)

(assert (=> d!698389 (= c!380619 (isEmpty!16149 s!9460))))

(assert (=> d!698389 (validRegex!2738 r!13927)))

(assert (=> d!698389 (= (matchR!3130 r!13927 s!9460) lt!870834)))

(declare-fun b!2392506 () Bool)

(declare-fun e!1524977 () Bool)

(assert (=> b!2392506 (= e!1524977 e!1524980)))

(declare-fun res!1016455 () Bool)

(assert (=> b!2392506 (=> res!1016455 e!1524980)))

(assert (=> b!2392506 (= res!1016455 call!145757)))

(declare-fun b!2392516 () Bool)

(declare-fun res!1016456 () Bool)

(assert (=> b!2392516 (=> (not res!1016456) (not e!1524979))))

(assert (=> b!2392516 (= res!1016456 (not call!145757))))

(declare-fun b!2392517 () Bool)

(declare-fun res!1016450 () Bool)

(declare-fun e!1524976 () Bool)

(assert (=> b!2392517 (=> res!1016450 e!1524976)))

(assert (=> b!2392517 (= res!1016450 (not ((_ is ElementMatch!7013) r!13927)))))

(assert (=> b!2392517 (= e!1524975 e!1524976)))

(declare-fun b!2392518 () Bool)

(declare-fun res!1016453 () Bool)

(assert (=> b!2392518 (=> res!1016453 e!1524976)))

(assert (=> b!2392518 (= res!1016453 e!1524979)))

(declare-fun res!1016454 () Bool)

(assert (=> b!2392518 (=> (not res!1016454) (not e!1524979))))

(assert (=> b!2392518 (= res!1016454 lt!870834)))

(declare-fun b!2392519 () Bool)

(assert (=> b!2392519 (= e!1524976 e!1524977)))

(declare-fun res!1016451 () Bool)

(assert (=> b!2392519 (=> (not res!1016451) (not e!1524977))))

(assert (=> b!2392519 (= res!1016451 (not lt!870834))))

(assert (= (and d!698389 c!380619) b!2392513))

(assert (= (and d!698389 (not c!380619)) b!2392512))

(assert (= (and d!698389 c!380617) b!2392507))

(assert (= (and d!698389 (not c!380617)) b!2392509))

(assert (= (and b!2392509 c!380618) b!2392511))

(assert (= (and b!2392509 (not c!380618)) b!2392517))

(assert (= (and b!2392517 (not res!1016450)) b!2392518))

(assert (= (and b!2392518 res!1016454) b!2392516))

(assert (= (and b!2392516 res!1016456) b!2392514))

(assert (= (and b!2392514 res!1016457) b!2392515))

(assert (= (and b!2392518 (not res!1016453)) b!2392519))

(assert (= (and b!2392519 res!1016451) b!2392506))

(assert (= (and b!2392506 (not res!1016455)) b!2392510))

(assert (= (and b!2392510 (not res!1016452)) b!2392508))

(assert (= (or b!2392507 b!2392506 b!2392516) bm!145752))

(declare-fun m!2792133 () Bool)

(assert (=> b!2392515 m!2792133))

(assert (=> d!698389 m!2792105))

(declare-fun m!2792135 () Bool)

(assert (=> d!698389 m!2792135))

(declare-fun m!2792137 () Bool)

(assert (=> b!2392514 m!2792137))

(assert (=> b!2392514 m!2792137))

(declare-fun m!2792139 () Bool)

(assert (=> b!2392514 m!2792139))

(assert (=> b!2392508 m!2792133))

(assert (=> bm!145752 m!2792105))

(assert (=> b!2392512 m!2792133))

(assert (=> b!2392512 m!2792133))

(declare-fun m!2792141 () Bool)

(assert (=> b!2392512 m!2792141))

(assert (=> b!2392512 m!2792137))

(assert (=> b!2392512 m!2792141))

(assert (=> b!2392512 m!2792137))

(declare-fun m!2792143 () Bool)

(assert (=> b!2392512 m!2792143))

(declare-fun m!2792145 () Bool)

(assert (=> b!2392513 m!2792145))

(assert (=> b!2392510 m!2792137))

(assert (=> b!2392510 m!2792137))

(assert (=> b!2392510 m!2792139))

(assert (=> b!2392287 d!698389))

(declare-fun d!698393 () Bool)

(assert (=> d!698393 (= (matchR!3130 r!13927 s!9460) (matchRSpec!862 r!13927 s!9460))))

(declare-fun lt!870840 () Unit!41192)

(declare-fun choose!14097 (Regex!7013 List!28264) Unit!41192)

(assert (=> d!698393 (= lt!870840 (choose!14097 r!13927 s!9460))))

(assert (=> d!698393 (validRegex!2738 r!13927)))

(assert (=> d!698393 (= (mainMatchTheorem!862 r!13927 s!9460) lt!870840)))

(declare-fun bs!462635 () Bool)

(assert (= bs!462635 d!698393))

(assert (=> bs!462635 m!2792033))

(assert (=> bs!462635 m!2792031))

(declare-fun m!2792155 () Bool)

(assert (=> bs!462635 m!2792155))

(assert (=> bs!462635 m!2792135))

(assert (=> b!2392287 d!698393))

(declare-fun e!1525028 () Bool)

(declare-fun b!2392591 () Bool)

(assert (=> b!2392591 (= e!1525028 (matchR!3130 (ite c!380564 EmptyExpr!7013 call!145729) s!9460))))

(declare-fun b!2392592 () Bool)

(declare-fun res!1016501 () Bool)

(declare-fun e!1525029 () Bool)

(assert (=> b!2392592 (=> (not res!1016501) (not e!1525029))))

(declare-fun lt!870855 () Option!5556)

(assert (=> b!2392592 (= res!1016501 (matchR!3130 (ite c!380564 lt!870810 call!145726) (_1!16486 (get!8617 lt!870855))))))

(declare-fun b!2392593 () Bool)

(assert (=> b!2392593 (= e!1525029 (= (++!6967 (_1!16486 (get!8617 lt!870855)) (_2!16486 (get!8617 lt!870855))) s!9460))))

(declare-fun b!2392594 () Bool)

(declare-fun e!1525032 () Option!5556)

(assert (=> b!2392594 (= e!1525032 (Some!5555 (tuple2!27891 Nil!28166 s!9460)))))

(declare-fun b!2392595 () Bool)

(declare-fun e!1525031 () Bool)

(assert (=> b!2392595 (= e!1525031 (not (isDefined!4384 lt!870855)))))

(declare-fun d!698397 () Bool)

(assert (=> d!698397 e!1525031))

(declare-fun res!1016502 () Bool)

(assert (=> d!698397 (=> res!1016502 e!1525031)))

(assert (=> d!698397 (= res!1016502 e!1525029)))

(declare-fun res!1016503 () Bool)

(assert (=> d!698397 (=> (not res!1016503) (not e!1525029))))

(assert (=> d!698397 (= res!1016503 (isDefined!4384 lt!870855))))

(assert (=> d!698397 (= lt!870855 e!1525032)))

(declare-fun c!380636 () Bool)

(assert (=> d!698397 (= c!380636 e!1525028)))

(declare-fun res!1016499 () Bool)

(assert (=> d!698397 (=> (not res!1016499) (not e!1525028))))

(assert (=> d!698397 (= res!1016499 (matchR!3130 (ite c!380564 lt!870810 call!145726) Nil!28166))))

(assert (=> d!698397 (validRegex!2738 (ite c!380564 lt!870810 call!145726))))

(assert (=> d!698397 (= (findConcatSeparation!664 (ite c!380564 lt!870810 call!145726) (ite c!380564 EmptyExpr!7013 call!145729) Nil!28166 s!9460 s!9460) lt!870855)))

(declare-fun b!2392596 () Bool)

(declare-fun e!1525030 () Option!5556)

(assert (=> b!2392596 (= e!1525030 None!5555)))

(declare-fun b!2392597 () Bool)

(declare-fun res!1016500 () Bool)

(assert (=> b!2392597 (=> (not res!1016500) (not e!1525029))))

(assert (=> b!2392597 (= res!1016500 (matchR!3130 (ite c!380564 EmptyExpr!7013 call!145729) (_2!16486 (get!8617 lt!870855))))))

(declare-fun b!2392598 () Bool)

(assert (=> b!2392598 (= e!1525032 e!1525030)))

(declare-fun c!380635 () Bool)

(assert (=> b!2392598 (= c!380635 ((_ is Nil!28166) s!9460))))

(declare-fun b!2392599 () Bool)

(declare-fun lt!870854 () Unit!41192)

(declare-fun lt!870856 () Unit!41192)

(assert (=> b!2392599 (= lt!870854 lt!870856)))

(assert (=> b!2392599 (= (++!6967 (++!6967 Nil!28166 (Cons!28166 (h!33567 s!9460) Nil!28166)) (t!208241 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!609 (List!28264 C!14184 List!28264 List!28264) Unit!41192)

(assert (=> b!2392599 (= lt!870856 (lemmaMoveElementToOtherListKeepsConcatEq!609 Nil!28166 (h!33567 s!9460) (t!208241 s!9460) s!9460))))

(assert (=> b!2392599 (= e!1525030 (findConcatSeparation!664 (ite c!380564 lt!870810 call!145726) (ite c!380564 EmptyExpr!7013 call!145729) (++!6967 Nil!28166 (Cons!28166 (h!33567 s!9460) Nil!28166)) (t!208241 s!9460) s!9460))))

(assert (= (and d!698397 res!1016499) b!2392591))

(assert (= (and d!698397 c!380636) b!2392594))

(assert (= (and d!698397 (not c!380636)) b!2392598))

(assert (= (and b!2392598 c!380635) b!2392596))

(assert (= (and b!2392598 (not c!380635)) b!2392599))

(assert (= (and d!698397 res!1016503) b!2392592))

(assert (= (and b!2392592 res!1016501) b!2392597))

(assert (= (and b!2392597 res!1016500) b!2392593))

(assert (= (and d!698397 (not res!1016502)) b!2392595))

(declare-fun m!2792205 () Bool)

(assert (=> b!2392597 m!2792205))

(declare-fun m!2792207 () Bool)

(assert (=> b!2392597 m!2792207))

(declare-fun m!2792209 () Bool)

(assert (=> b!2392599 m!2792209))

(assert (=> b!2392599 m!2792209))

(declare-fun m!2792211 () Bool)

(assert (=> b!2392599 m!2792211))

(declare-fun m!2792213 () Bool)

(assert (=> b!2392599 m!2792213))

(assert (=> b!2392599 m!2792209))

(declare-fun m!2792215 () Bool)

(assert (=> b!2392599 m!2792215))

(declare-fun m!2792217 () Bool)

(assert (=> b!2392595 m!2792217))

(assert (=> b!2392593 m!2792205))

(declare-fun m!2792219 () Bool)

(assert (=> b!2392593 m!2792219))

(assert (=> b!2392592 m!2792205))

(declare-fun m!2792221 () Bool)

(assert (=> b!2392592 m!2792221))

(assert (=> d!698397 m!2792217))

(declare-fun m!2792223 () Bool)

(assert (=> d!698397 m!2792223))

(declare-fun m!2792225 () Bool)

(assert (=> d!698397 m!2792225))

(declare-fun m!2792227 () Bool)

(assert (=> b!2392591 m!2792227))

(assert (=> bm!145725 d!698397))

(declare-fun d!698411 () Bool)

(declare-fun res!1016508 () Bool)

(declare-fun e!1525037 () Bool)

(assert (=> d!698411 (=> res!1016508 e!1525037)))

(assert (=> d!698411 (= res!1016508 ((_ is Nil!28167) l!9164))))

(assert (=> d!698411 (= (forall!5647 l!9164 lambda!89655) e!1525037)))

(declare-fun b!2392604 () Bool)

(declare-fun e!1525038 () Bool)

(assert (=> b!2392604 (= e!1525037 e!1525038)))

(declare-fun res!1016509 () Bool)

(assert (=> b!2392604 (=> (not res!1016509) (not e!1525038))))

(declare-fun dynLambda!12128 (Int Regex!7013) Bool)

(assert (=> b!2392604 (= res!1016509 (dynLambda!12128 lambda!89655 (h!33568 l!9164)))))

(declare-fun b!2392605 () Bool)

(assert (=> b!2392605 (= e!1525038 (forall!5647 (t!208242 l!9164) lambda!89655))))

(assert (= (and d!698411 (not res!1016508)) b!2392604))

(assert (= (and b!2392604 res!1016509) b!2392605))

(declare-fun b_lambda!74213 () Bool)

(assert (=> (not b_lambda!74213) (not b!2392604)))

(declare-fun m!2792229 () Bool)

(assert (=> b!2392604 m!2792229))

(declare-fun m!2792231 () Bool)

(assert (=> b!2392605 m!2792231))

(assert (=> start!234744 d!698411))

(declare-fun d!698413 () Bool)

(assert (=> d!698413 (= (isDefined!4384 (findConcatSeparation!664 lt!870810 call!145729 Nil!28166 s!9460 s!9460)) (not (isEmpty!16148 (findConcatSeparation!664 lt!870810 call!145729 Nil!28166 s!9460 s!9460))))))

(declare-fun bs!462639 () Bool)

(assert (= bs!462639 d!698413))

(assert (=> bs!462639 m!2792041))

(declare-fun m!2792233 () Bool)

(assert (=> bs!462639 m!2792233))

(assert (=> b!2392294 d!698413))

(declare-fun b!2392606 () Bool)

(declare-fun e!1525039 () Bool)

(assert (=> b!2392606 (= e!1525039 (matchR!3130 call!145729 s!9460))))

(declare-fun b!2392607 () Bool)

(declare-fun res!1016512 () Bool)

(declare-fun e!1525040 () Bool)

(assert (=> b!2392607 (=> (not res!1016512) (not e!1525040))))

(declare-fun lt!870860 () Option!5556)

(assert (=> b!2392607 (= res!1016512 (matchR!3130 lt!870810 (_1!16486 (get!8617 lt!870860))))))

(declare-fun b!2392608 () Bool)

(assert (=> b!2392608 (= e!1525040 (= (++!6967 (_1!16486 (get!8617 lt!870860)) (_2!16486 (get!8617 lt!870860))) s!9460))))

(declare-fun b!2392609 () Bool)

(declare-fun e!1525043 () Option!5556)

(assert (=> b!2392609 (= e!1525043 (Some!5555 (tuple2!27891 Nil!28166 s!9460)))))

(declare-fun b!2392610 () Bool)

(declare-fun e!1525042 () Bool)

(assert (=> b!2392610 (= e!1525042 (not (isDefined!4384 lt!870860)))))

(declare-fun d!698415 () Bool)

(assert (=> d!698415 e!1525042))

(declare-fun res!1016513 () Bool)

(assert (=> d!698415 (=> res!1016513 e!1525042)))

(assert (=> d!698415 (= res!1016513 e!1525040)))

(declare-fun res!1016514 () Bool)

(assert (=> d!698415 (=> (not res!1016514) (not e!1525040))))

(assert (=> d!698415 (= res!1016514 (isDefined!4384 lt!870860))))

(assert (=> d!698415 (= lt!870860 e!1525043)))

(declare-fun c!380638 () Bool)

(assert (=> d!698415 (= c!380638 e!1525039)))

(declare-fun res!1016510 () Bool)

(assert (=> d!698415 (=> (not res!1016510) (not e!1525039))))

(assert (=> d!698415 (= res!1016510 (matchR!3130 lt!870810 Nil!28166))))

(assert (=> d!698415 (validRegex!2738 lt!870810)))

(assert (=> d!698415 (= (findConcatSeparation!664 lt!870810 call!145729 Nil!28166 s!9460 s!9460) lt!870860)))

(declare-fun b!2392611 () Bool)

(declare-fun e!1525041 () Option!5556)

(assert (=> b!2392611 (= e!1525041 None!5555)))

(declare-fun b!2392612 () Bool)

(declare-fun res!1016511 () Bool)

(assert (=> b!2392612 (=> (not res!1016511) (not e!1525040))))

(assert (=> b!2392612 (= res!1016511 (matchR!3130 call!145729 (_2!16486 (get!8617 lt!870860))))))

(declare-fun b!2392613 () Bool)

(assert (=> b!2392613 (= e!1525043 e!1525041)))

(declare-fun c!380637 () Bool)

(assert (=> b!2392613 (= c!380637 ((_ is Nil!28166) s!9460))))

(declare-fun b!2392614 () Bool)

(declare-fun lt!870859 () Unit!41192)

(declare-fun lt!870861 () Unit!41192)

(assert (=> b!2392614 (= lt!870859 lt!870861)))

(assert (=> b!2392614 (= (++!6967 (++!6967 Nil!28166 (Cons!28166 (h!33567 s!9460) Nil!28166)) (t!208241 s!9460)) s!9460)))

(assert (=> b!2392614 (= lt!870861 (lemmaMoveElementToOtherListKeepsConcatEq!609 Nil!28166 (h!33567 s!9460) (t!208241 s!9460) s!9460))))

(assert (=> b!2392614 (= e!1525041 (findConcatSeparation!664 lt!870810 call!145729 (++!6967 Nil!28166 (Cons!28166 (h!33567 s!9460) Nil!28166)) (t!208241 s!9460) s!9460))))

(assert (= (and d!698415 res!1016510) b!2392606))

(assert (= (and d!698415 c!380638) b!2392609))

(assert (= (and d!698415 (not c!380638)) b!2392613))

(assert (= (and b!2392613 c!380637) b!2392611))

(assert (= (and b!2392613 (not c!380637)) b!2392614))

(assert (= (and d!698415 res!1016514) b!2392607))

(assert (= (and b!2392607 res!1016512) b!2392612))

(assert (= (and b!2392612 res!1016511) b!2392608))

(assert (= (and d!698415 (not res!1016513)) b!2392610))

(declare-fun m!2792235 () Bool)

(assert (=> b!2392612 m!2792235))

(declare-fun m!2792237 () Bool)

(assert (=> b!2392612 m!2792237))

(assert (=> b!2392614 m!2792209))

(assert (=> b!2392614 m!2792209))

(assert (=> b!2392614 m!2792211))

(assert (=> b!2392614 m!2792213))

(assert (=> b!2392614 m!2792209))

(declare-fun m!2792239 () Bool)

(assert (=> b!2392614 m!2792239))

(declare-fun m!2792241 () Bool)

(assert (=> b!2392610 m!2792241))

(assert (=> b!2392608 m!2792235))

(declare-fun m!2792243 () Bool)

(assert (=> b!2392608 m!2792243))

(assert (=> b!2392607 m!2792235))

(declare-fun m!2792245 () Bool)

(assert (=> b!2392607 m!2792245))

(assert (=> d!698415 m!2792241))

(declare-fun m!2792247 () Bool)

(assert (=> d!698415 m!2792247))

(declare-fun m!2792249 () Bool)

(assert (=> d!698415 m!2792249))

(declare-fun m!2792251 () Bool)

(assert (=> b!2392606 m!2792251))

(assert (=> b!2392294 d!698415))

(declare-fun b!2392620 () Bool)

(declare-fun e!1525052 () Bool)

(declare-fun lt!870862 () Bool)

(declare-fun call!145768 () Bool)

(assert (=> b!2392620 (= e!1525052 (= lt!870862 call!145768))))

(declare-fun b!2392621 () Bool)

(declare-fun e!1525051 () Bool)

(assert (=> b!2392621 (= e!1525051 (not (= (head!5259 s!9460) (c!380565 lt!870810))))))

(declare-fun b!2392622 () Bool)

(declare-fun e!1525046 () Bool)

(assert (=> b!2392622 (= e!1525052 e!1525046)))

(declare-fun c!380640 () Bool)

(assert (=> b!2392622 (= c!380640 ((_ is EmptyLang!7013) lt!870810))))

(declare-fun b!2392623 () Bool)

(declare-fun res!1016521 () Bool)

(assert (=> b!2392623 (=> res!1016521 e!1525051)))

(assert (=> b!2392623 (= res!1016521 (not (isEmpty!16149 (tail!3529 s!9460))))))

(declare-fun b!2392624 () Bool)

(assert (=> b!2392624 (= e!1525046 (not lt!870862))))

(declare-fun b!2392625 () Bool)

(declare-fun e!1525049 () Bool)

(assert (=> b!2392625 (= e!1525049 (matchR!3130 (derivativeStep!1720 lt!870810 (head!5259 s!9460)) (tail!3529 s!9460)))))

(declare-fun b!2392626 () Bool)

(assert (=> b!2392626 (= e!1525049 (nullable!2061 lt!870810))))

(declare-fun b!2392627 () Bool)

(declare-fun res!1016526 () Bool)

(declare-fun e!1525050 () Bool)

(assert (=> b!2392627 (=> (not res!1016526) (not e!1525050))))

(assert (=> b!2392627 (= res!1016526 (isEmpty!16149 (tail!3529 s!9460)))))

(declare-fun b!2392628 () Bool)

(assert (=> b!2392628 (= e!1525050 (= (head!5259 s!9460) (c!380565 lt!870810)))))

(declare-fun bm!145763 () Bool)

(assert (=> bm!145763 (= call!145768 (isEmpty!16149 s!9460))))

(declare-fun d!698417 () Bool)

(assert (=> d!698417 e!1525052))

(declare-fun c!380639 () Bool)

(assert (=> d!698417 (= c!380639 ((_ is EmptyExpr!7013) lt!870810))))

(assert (=> d!698417 (= lt!870862 e!1525049)))

(declare-fun c!380641 () Bool)

(assert (=> d!698417 (= c!380641 (isEmpty!16149 s!9460))))

(assert (=> d!698417 (validRegex!2738 lt!870810)))

(assert (=> d!698417 (= (matchR!3130 lt!870810 s!9460) lt!870862)))

(declare-fun b!2392619 () Bool)

(declare-fun e!1525048 () Bool)

(assert (=> b!2392619 (= e!1525048 e!1525051)))

(declare-fun res!1016524 () Bool)

(assert (=> b!2392619 (=> res!1016524 e!1525051)))

(assert (=> b!2392619 (= res!1016524 call!145768)))

(declare-fun b!2392629 () Bool)

(declare-fun res!1016525 () Bool)

(assert (=> b!2392629 (=> (not res!1016525) (not e!1525050))))

(assert (=> b!2392629 (= res!1016525 (not call!145768))))

(declare-fun b!2392630 () Bool)

(declare-fun res!1016519 () Bool)

(declare-fun e!1525047 () Bool)

(assert (=> b!2392630 (=> res!1016519 e!1525047)))

(assert (=> b!2392630 (= res!1016519 (not ((_ is ElementMatch!7013) lt!870810)))))

(assert (=> b!2392630 (= e!1525046 e!1525047)))

(declare-fun b!2392631 () Bool)

(declare-fun res!1016522 () Bool)

(assert (=> b!2392631 (=> res!1016522 e!1525047)))

(assert (=> b!2392631 (= res!1016522 e!1525050)))

(declare-fun res!1016523 () Bool)

(assert (=> b!2392631 (=> (not res!1016523) (not e!1525050))))

(assert (=> b!2392631 (= res!1016523 lt!870862)))

(declare-fun b!2392632 () Bool)

(assert (=> b!2392632 (= e!1525047 e!1525048)))

(declare-fun res!1016520 () Bool)

(assert (=> b!2392632 (=> (not res!1016520) (not e!1525048))))

(assert (=> b!2392632 (= res!1016520 (not lt!870862))))

(assert (= (and d!698417 c!380641) b!2392626))

(assert (= (and d!698417 (not c!380641)) b!2392625))

(assert (= (and d!698417 c!380639) b!2392620))

(assert (= (and d!698417 (not c!380639)) b!2392622))

(assert (= (and b!2392622 c!380640) b!2392624))

(assert (= (and b!2392622 (not c!380640)) b!2392630))

(assert (= (and b!2392630 (not res!1016519)) b!2392631))

(assert (= (and b!2392631 res!1016523) b!2392629))

(assert (= (and b!2392629 res!1016525) b!2392627))

(assert (= (and b!2392627 res!1016526) b!2392628))

(assert (= (and b!2392631 (not res!1016522)) b!2392632))

(assert (= (and b!2392632 res!1016520) b!2392619))

(assert (= (and b!2392619 (not res!1016524)) b!2392623))

(assert (= (and b!2392623 (not res!1016521)) b!2392621))

(assert (= (or b!2392620 b!2392619 b!2392629) bm!145763))

(assert (=> b!2392628 m!2792133))

(assert (=> d!698417 m!2792105))

(assert (=> d!698417 m!2792249))

(assert (=> b!2392627 m!2792137))

(assert (=> b!2392627 m!2792137))

(assert (=> b!2392627 m!2792139))

(assert (=> b!2392621 m!2792133))

(assert (=> bm!145763 m!2792105))

(assert (=> b!2392625 m!2792133))

(assert (=> b!2392625 m!2792133))

(declare-fun m!2792253 () Bool)

(assert (=> b!2392625 m!2792253))

(assert (=> b!2392625 m!2792137))

(assert (=> b!2392625 m!2792253))

(assert (=> b!2392625 m!2792137))

(declare-fun m!2792255 () Bool)

(assert (=> b!2392625 m!2792255))

(declare-fun m!2792257 () Bool)

(assert (=> b!2392626 m!2792257))

(assert (=> b!2392623 m!2792137))

(assert (=> b!2392623 m!2792137))

(assert (=> b!2392623 m!2792139))

(assert (=> b!2392294 d!698417))

(declare-fun d!698419 () Bool)

(assert (=> d!698419 (= (isDefined!4384 (ite c!380564 call!145735 call!145732)) (not (isEmpty!16148 (ite c!380564 call!145735 call!145732))))))

(declare-fun bs!462640 () Bool)

(assert (= bs!462640 d!698419))

(declare-fun m!2792259 () Bool)

(assert (=> bs!462640 m!2792259))

(assert (=> bm!145724 d!698419))

(declare-fun b!2392633 () Bool)

(declare-fun e!1525059 () Bool)

(declare-fun e!1525058 () Bool)

(assert (=> b!2392633 (= e!1525059 e!1525058)))

(declare-fun res!1016527 () Bool)

(assert (=> b!2392633 (= res!1016527 (not (nullable!2061 (reg!7342 (h!33568 l!9164)))))))

(assert (=> b!2392633 (=> (not res!1016527) (not e!1525058))))

(declare-fun c!380642 () Bool)

(declare-fun call!145770 () Bool)

(declare-fun bm!145764 () Bool)

(declare-fun c!380643 () Bool)

(assert (=> bm!145764 (= call!145770 (validRegex!2738 (ite c!380643 (reg!7342 (h!33568 l!9164)) (ite c!380642 (regTwo!14539 (h!33568 l!9164)) (regOne!14538 (h!33568 l!9164))))))))

(declare-fun b!2392634 () Bool)

(declare-fun e!1525053 () Bool)

(declare-fun e!1525055 () Bool)

(assert (=> b!2392634 (= e!1525053 e!1525055)))

(declare-fun res!1016530 () Bool)

(assert (=> b!2392634 (=> (not res!1016530) (not e!1525055))))

(declare-fun call!145771 () Bool)

(assert (=> b!2392634 (= res!1016530 call!145771)))

(declare-fun b!2392635 () Bool)

(declare-fun call!145769 () Bool)

(assert (=> b!2392635 (= e!1525055 call!145769)))

(declare-fun bm!145765 () Bool)

(assert (=> bm!145765 (= call!145769 (validRegex!2738 (ite c!380642 (regOne!14539 (h!33568 l!9164)) (regTwo!14538 (h!33568 l!9164)))))))

(declare-fun b!2392636 () Bool)

(assert (=> b!2392636 (= e!1525058 call!145770)))

(declare-fun b!2392637 () Bool)

(declare-fun e!1525057 () Bool)

(assert (=> b!2392637 (= e!1525057 e!1525059)))

(assert (=> b!2392637 (= c!380643 ((_ is Star!7013) (h!33568 l!9164)))))

(declare-fun bm!145766 () Bool)

(assert (=> bm!145766 (= call!145771 call!145770)))

(declare-fun d!698421 () Bool)

(declare-fun res!1016529 () Bool)

(assert (=> d!698421 (=> res!1016529 e!1525057)))

(assert (=> d!698421 (= res!1016529 ((_ is ElementMatch!7013) (h!33568 l!9164)))))

(assert (=> d!698421 (= (validRegex!2738 (h!33568 l!9164)) e!1525057)))

(declare-fun b!2392638 () Bool)

(declare-fun res!1016528 () Bool)

(declare-fun e!1525056 () Bool)

(assert (=> b!2392638 (=> (not res!1016528) (not e!1525056))))

(assert (=> b!2392638 (= res!1016528 call!145769)))

(declare-fun e!1525054 () Bool)

(assert (=> b!2392638 (= e!1525054 e!1525056)))

(declare-fun b!2392639 () Bool)

(assert (=> b!2392639 (= e!1525056 call!145771)))

(declare-fun b!2392640 () Bool)

(assert (=> b!2392640 (= e!1525059 e!1525054)))

(assert (=> b!2392640 (= c!380642 ((_ is Union!7013) (h!33568 l!9164)))))

(declare-fun b!2392641 () Bool)

(declare-fun res!1016531 () Bool)

(assert (=> b!2392641 (=> res!1016531 e!1525053)))

(assert (=> b!2392641 (= res!1016531 (not ((_ is Concat!11649) (h!33568 l!9164))))))

(assert (=> b!2392641 (= e!1525054 e!1525053)))

(assert (= (and d!698421 (not res!1016529)) b!2392637))

(assert (= (and b!2392637 c!380643) b!2392633))

(assert (= (and b!2392637 (not c!380643)) b!2392640))

(assert (= (and b!2392633 res!1016527) b!2392636))

(assert (= (and b!2392640 c!380642) b!2392638))

(assert (= (and b!2392640 (not c!380642)) b!2392641))

(assert (= (and b!2392638 res!1016528) b!2392639))

(assert (= (and b!2392641 (not res!1016531)) b!2392634))

(assert (= (and b!2392634 res!1016530) b!2392635))

(assert (= (or b!2392638 b!2392635) bm!145765))

(assert (= (or b!2392639 b!2392634) bm!145766))

(assert (= (or b!2392636 bm!145766) bm!145764))

(declare-fun m!2792261 () Bool)

(assert (=> b!2392633 m!2792261))

(declare-fun m!2792263 () Bool)

(assert (=> bm!145764 m!2792263))

(declare-fun m!2792265 () Bool)

(assert (=> bm!145765 m!2792265))

(assert (=> b!2392297 d!698421))

(declare-fun bs!462643 () Bool)

(declare-fun d!698423 () Bool)

(assert (= bs!462643 (and d!698423 start!234744)))

(declare-fun lambda!89676 () Int)

(assert (=> bs!462643 (= lambda!89676 lambda!89655)))

(declare-fun b!2392666 () Bool)

(declare-fun e!1525079 () Regex!7013)

(assert (=> b!2392666 (= e!1525079 (Concat!11649 (h!33568 (t!208242 l!9164)) (generalisedConcat!114 (t!208242 (t!208242 l!9164)))))))

(declare-fun b!2392667 () Bool)

(declare-fun e!1525076 () Bool)

(declare-fun e!1525074 () Bool)

(assert (=> b!2392667 (= e!1525076 e!1525074)))

(declare-fun c!380652 () Bool)

(assert (=> b!2392667 (= c!380652 (isEmpty!16146 (t!208242 l!9164)))))

(assert (=> d!698423 e!1525076))

(declare-fun res!1016540 () Bool)

(assert (=> d!698423 (=> (not res!1016540) (not e!1525076))))

(declare-fun lt!870868 () Regex!7013)

(assert (=> d!698423 (= res!1016540 (validRegex!2738 lt!870868))))

(declare-fun e!1525078 () Regex!7013)

(assert (=> d!698423 (= lt!870868 e!1525078)))

(declare-fun c!380655 () Bool)

(declare-fun e!1525075 () Bool)

(assert (=> d!698423 (= c!380655 e!1525075)))

(declare-fun res!1016541 () Bool)

(assert (=> d!698423 (=> (not res!1016541) (not e!1525075))))

(assert (=> d!698423 (= res!1016541 ((_ is Cons!28167) (t!208242 l!9164)))))

(assert (=> d!698423 (forall!5647 (t!208242 l!9164) lambda!89676)))

(assert (=> d!698423 (= (generalisedConcat!114 (t!208242 l!9164)) lt!870868)))

(declare-fun b!2392668 () Bool)

(declare-fun e!1525077 () Bool)

(declare-fun isConcat!83 (Regex!7013) Bool)

(assert (=> b!2392668 (= e!1525077 (isConcat!83 lt!870868))))

(declare-fun b!2392669 () Bool)

(assert (=> b!2392669 (= e!1525074 e!1525077)))

(declare-fun c!380653 () Bool)

(assert (=> b!2392669 (= c!380653 (isEmpty!16146 (tail!3527 (t!208242 l!9164))))))

(declare-fun b!2392670 () Bool)

(assert (=> b!2392670 (= e!1525077 (= lt!870868 (head!5257 (t!208242 l!9164))))))

(declare-fun b!2392671 () Bool)

(declare-fun isEmptyExpr!83 (Regex!7013) Bool)

(assert (=> b!2392671 (= e!1525074 (isEmptyExpr!83 lt!870868))))

(declare-fun b!2392672 () Bool)

(assert (=> b!2392672 (= e!1525078 e!1525079)))

(declare-fun c!380654 () Bool)

(assert (=> b!2392672 (= c!380654 ((_ is Cons!28167) (t!208242 l!9164)))))

(declare-fun b!2392673 () Bool)

(assert (=> b!2392673 (= e!1525078 (h!33568 (t!208242 l!9164)))))

(declare-fun b!2392674 () Bool)

(assert (=> b!2392674 (= e!1525075 (isEmpty!16146 (t!208242 (t!208242 l!9164))))))

(declare-fun b!2392675 () Bool)

(assert (=> b!2392675 (= e!1525079 EmptyExpr!7013)))

(assert (= (and d!698423 res!1016541) b!2392674))

(assert (= (and d!698423 c!380655) b!2392673))

(assert (= (and d!698423 (not c!380655)) b!2392672))

(assert (= (and b!2392672 c!380654) b!2392666))

(assert (= (and b!2392672 (not c!380654)) b!2392675))

(assert (= (and d!698423 res!1016540) b!2392667))

(assert (= (and b!2392667 c!380652) b!2392671))

(assert (= (and b!2392667 (not c!380652)) b!2392669))

(assert (= (and b!2392669 c!380653) b!2392670))

(assert (= (and b!2392669 (not c!380653)) b!2392668))

(declare-fun m!2792273 () Bool)

(assert (=> b!2392671 m!2792273))

(declare-fun m!2792275 () Bool)

(assert (=> b!2392674 m!2792275))

(declare-fun m!2792277 () Bool)

(assert (=> b!2392667 m!2792277))

(declare-fun m!2792279 () Bool)

(assert (=> d!698423 m!2792279))

(declare-fun m!2792281 () Bool)

(assert (=> d!698423 m!2792281))

(declare-fun m!2792283 () Bool)

(assert (=> b!2392666 m!2792283))

(declare-fun m!2792285 () Bool)

(assert (=> b!2392669 m!2792285))

(assert (=> b!2392669 m!2792285))

(declare-fun m!2792287 () Bool)

(assert (=> b!2392669 m!2792287))

(declare-fun m!2792289 () Bool)

(assert (=> b!2392670 m!2792289))

(declare-fun m!2792291 () Bool)

(assert (=> b!2392668 m!2792291))

(assert (=> b!2392297 d!698423))

(declare-fun d!698427 () Bool)

(assert (=> d!698427 (= (isDefined!4384 (findConcatSeparation!664 (regOne!14538 r!13927) (regTwo!14538 r!13927) Nil!28166 s!9460 s!9460)) (not (isEmpty!16148 (findConcatSeparation!664 (regOne!14538 r!13927) (regTwo!14538 r!13927) Nil!28166 s!9460 s!9460))))))

(declare-fun bs!462644 () Bool)

(assert (= bs!462644 d!698427))

(assert (=> bs!462644 m!2792047))

(declare-fun m!2792293 () Bool)

(assert (=> bs!462644 m!2792293))

(assert (=> b!2392274 d!698427))

(declare-fun bs!462651 () Bool)

(declare-fun d!698429 () Bool)

(assert (= bs!462651 (and d!698429 b!2392274)))

(declare-fun lambda!89682 () Int)

(assert (=> bs!462651 (= lambda!89682 lambda!89656)))

(assert (=> bs!462651 (not (= lambda!89682 lambda!89657))))

(declare-fun bs!462652 () Bool)

(assert (= bs!462652 (and d!698429 b!2392445)))

(assert (=> bs!462652 (not (= lambda!89682 lambda!89665))))

(declare-fun bs!462653 () Bool)

(assert (= bs!462653 (and d!698429 b!2392447)))

(assert (=> bs!462653 (not (= lambda!89682 lambda!89666))))

(assert (=> d!698429 true))

(assert (=> d!698429 true))

(assert (=> d!698429 true))

(assert (=> d!698429 (= (isDefined!4384 (findConcatSeparation!664 (regOne!14538 r!13927) (regTwo!14538 r!13927) Nil!28166 s!9460 s!9460)) (Exists!1075 lambda!89682))))

(declare-fun lt!870876 () Unit!41192)

(declare-fun choose!14103 (Regex!7013 Regex!7013 List!28264) Unit!41192)

(assert (=> d!698429 (= lt!870876 (choose!14103 (regOne!14538 r!13927) (regTwo!14538 r!13927) s!9460))))

(assert (=> d!698429 (validRegex!2738 (regOne!14538 r!13927))))

(assert (=> d!698429 (= (lemmaFindConcatSeparationEquivalentToExists!664 (regOne!14538 r!13927) (regTwo!14538 r!13927) s!9460) lt!870876)))

(declare-fun bs!462654 () Bool)

(assert (= bs!462654 d!698429))

(assert (=> bs!462654 m!2792047))

(declare-fun m!2792337 () Bool)

(assert (=> bs!462654 m!2792337))

(assert (=> bs!462654 m!2792047))

(assert (=> bs!462654 m!2792049))

(declare-fun m!2792339 () Bool)

(assert (=> bs!462654 m!2792339))

(declare-fun m!2792341 () Bool)

(assert (=> bs!462654 m!2792341))

(assert (=> b!2392274 d!698429))

(declare-fun bs!462655 () Bool)

(declare-fun d!698441 () Bool)

(assert (= bs!462655 (and d!698441 b!2392274)))

(declare-fun lambda!89691 () Int)

(assert (=> bs!462655 (= lambda!89691 lambda!89656)))

(declare-fun bs!462656 () Bool)

(assert (= bs!462656 (and d!698441 b!2392445)))

(assert (=> bs!462656 (not (= lambda!89691 lambda!89665))))

(declare-fun bs!462657 () Bool)

(assert (= bs!462657 (and d!698441 b!2392447)))

(assert (=> bs!462657 (not (= lambda!89691 lambda!89666))))

(declare-fun bs!462658 () Bool)

(assert (= bs!462658 (and d!698441 d!698429)))

(assert (=> bs!462658 (= lambda!89691 lambda!89682)))

(assert (=> bs!462655 (not (= lambda!89691 lambda!89657))))

(assert (=> d!698441 true))

(assert (=> d!698441 true))

(assert (=> d!698441 true))

(declare-fun lambda!89693 () Int)

(assert (=> bs!462655 (not (= lambda!89693 lambda!89656))))

(assert (=> bs!462656 (not (= lambda!89693 lambda!89665))))

(declare-fun bs!462662 () Bool)

(assert (= bs!462662 d!698441))

(assert (=> bs!462662 (not (= lambda!89693 lambda!89691))))

(assert (=> bs!462657 (= lambda!89693 lambda!89666)))

(assert (=> bs!462658 (not (= lambda!89693 lambda!89682))))

(assert (=> bs!462655 (= lambda!89693 lambda!89657)))

(assert (=> d!698441 true))

(assert (=> d!698441 true))

(assert (=> d!698441 true))

(assert (=> d!698441 (= (Exists!1075 lambda!89691) (Exists!1075 lambda!89693))))

(declare-fun lt!870879 () Unit!41192)

(declare-fun choose!14104 (Regex!7013 Regex!7013 List!28264) Unit!41192)

(assert (=> d!698441 (= lt!870879 (choose!14104 (regOne!14538 r!13927) (regTwo!14538 r!13927) s!9460))))

(assert (=> d!698441 (validRegex!2738 (regOne!14538 r!13927))))

(assert (=> d!698441 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!414 (regOne!14538 r!13927) (regTwo!14538 r!13927) s!9460) lt!870879)))

(declare-fun m!2792343 () Bool)

(assert (=> bs!462662 m!2792343))

(declare-fun m!2792345 () Bool)

(assert (=> bs!462662 m!2792345))

(declare-fun m!2792347 () Bool)

(assert (=> bs!462662 m!2792347))

(assert (=> bs!462662 m!2792337))

(assert (=> b!2392274 d!698441))

(declare-fun d!698443 () Bool)

(declare-fun choose!14105 (Int) Bool)

(assert (=> d!698443 (= (Exists!1075 lambda!89657) (choose!14105 lambda!89657))))

(declare-fun bs!462667 () Bool)

(assert (= bs!462667 d!698443))

(declare-fun m!2792349 () Bool)

(assert (=> bs!462667 m!2792349))

(assert (=> b!2392274 d!698443))

(declare-fun b!2392754 () Bool)

(declare-fun e!1525124 () Bool)

(assert (=> b!2392754 (= e!1525124 (matchR!3130 (regTwo!14538 r!13927) s!9460))))

(declare-fun b!2392755 () Bool)

(declare-fun res!1016586 () Bool)

(declare-fun e!1525125 () Bool)

(assert (=> b!2392755 (=> (not res!1016586) (not e!1525125))))

(declare-fun lt!870881 () Option!5556)

(assert (=> b!2392755 (= res!1016586 (matchR!3130 (regOne!14538 r!13927) (_1!16486 (get!8617 lt!870881))))))

(declare-fun b!2392756 () Bool)

(assert (=> b!2392756 (= e!1525125 (= (++!6967 (_1!16486 (get!8617 lt!870881)) (_2!16486 (get!8617 lt!870881))) s!9460))))

(declare-fun b!2392757 () Bool)

(declare-fun e!1525128 () Option!5556)

(assert (=> b!2392757 (= e!1525128 (Some!5555 (tuple2!27891 Nil!28166 s!9460)))))

(declare-fun b!2392758 () Bool)

(declare-fun e!1525127 () Bool)

(assert (=> b!2392758 (= e!1525127 (not (isDefined!4384 lt!870881)))))

(declare-fun d!698445 () Bool)

(assert (=> d!698445 e!1525127))

(declare-fun res!1016587 () Bool)

(assert (=> d!698445 (=> res!1016587 e!1525127)))

(assert (=> d!698445 (= res!1016587 e!1525125)))

(declare-fun res!1016588 () Bool)

(assert (=> d!698445 (=> (not res!1016588) (not e!1525125))))

(assert (=> d!698445 (= res!1016588 (isDefined!4384 lt!870881))))

(assert (=> d!698445 (= lt!870881 e!1525128)))

(declare-fun c!380675 () Bool)

(assert (=> d!698445 (= c!380675 e!1525124)))

(declare-fun res!1016584 () Bool)

(assert (=> d!698445 (=> (not res!1016584) (not e!1525124))))

(assert (=> d!698445 (= res!1016584 (matchR!3130 (regOne!14538 r!13927) Nil!28166))))

(assert (=> d!698445 (validRegex!2738 (regOne!14538 r!13927))))

(assert (=> d!698445 (= (findConcatSeparation!664 (regOne!14538 r!13927) (regTwo!14538 r!13927) Nil!28166 s!9460 s!9460) lt!870881)))

(declare-fun b!2392759 () Bool)

(declare-fun e!1525126 () Option!5556)

(assert (=> b!2392759 (= e!1525126 None!5555)))

(declare-fun b!2392760 () Bool)

(declare-fun res!1016585 () Bool)

(assert (=> b!2392760 (=> (not res!1016585) (not e!1525125))))

(assert (=> b!2392760 (= res!1016585 (matchR!3130 (regTwo!14538 r!13927) (_2!16486 (get!8617 lt!870881))))))

(declare-fun b!2392761 () Bool)

(assert (=> b!2392761 (= e!1525128 e!1525126)))

(declare-fun c!380674 () Bool)

(assert (=> b!2392761 (= c!380674 ((_ is Nil!28166) s!9460))))

(declare-fun b!2392762 () Bool)

(declare-fun lt!870880 () Unit!41192)

(declare-fun lt!870882 () Unit!41192)

(assert (=> b!2392762 (= lt!870880 lt!870882)))

(assert (=> b!2392762 (= (++!6967 (++!6967 Nil!28166 (Cons!28166 (h!33567 s!9460) Nil!28166)) (t!208241 s!9460)) s!9460)))

(assert (=> b!2392762 (= lt!870882 (lemmaMoveElementToOtherListKeepsConcatEq!609 Nil!28166 (h!33567 s!9460) (t!208241 s!9460) s!9460))))

(assert (=> b!2392762 (= e!1525126 (findConcatSeparation!664 (regOne!14538 r!13927) (regTwo!14538 r!13927) (++!6967 Nil!28166 (Cons!28166 (h!33567 s!9460) Nil!28166)) (t!208241 s!9460) s!9460))))

(assert (= (and d!698445 res!1016584) b!2392754))

(assert (= (and d!698445 c!380675) b!2392757))

(assert (= (and d!698445 (not c!380675)) b!2392761))

(assert (= (and b!2392761 c!380674) b!2392759))

(assert (= (and b!2392761 (not c!380674)) b!2392762))

(assert (= (and d!698445 res!1016588) b!2392755))

(assert (= (and b!2392755 res!1016586) b!2392760))

(assert (= (and b!2392760 res!1016585) b!2392756))

(assert (= (and d!698445 (not res!1016587)) b!2392758))

(declare-fun m!2792359 () Bool)

(assert (=> b!2392760 m!2792359))

(declare-fun m!2792361 () Bool)

(assert (=> b!2392760 m!2792361))

(assert (=> b!2392762 m!2792209))

(assert (=> b!2392762 m!2792209))

(assert (=> b!2392762 m!2792211))

(assert (=> b!2392762 m!2792213))

(assert (=> b!2392762 m!2792209))

(declare-fun m!2792363 () Bool)

(assert (=> b!2392762 m!2792363))

(declare-fun m!2792365 () Bool)

(assert (=> b!2392758 m!2792365))

(assert (=> b!2392756 m!2792359))

(declare-fun m!2792367 () Bool)

(assert (=> b!2392756 m!2792367))

(assert (=> b!2392755 m!2792359))

(declare-fun m!2792369 () Bool)

(assert (=> b!2392755 m!2792369))

(assert (=> d!698445 m!2792365))

(declare-fun m!2792373 () Bool)

(assert (=> d!698445 m!2792373))

(assert (=> d!698445 m!2792337))

(declare-fun m!2792377 () Bool)

(assert (=> b!2392754 m!2792377))

(assert (=> b!2392274 d!698445))

(declare-fun d!698449 () Bool)

(assert (=> d!698449 (= (Exists!1075 lambda!89656) (choose!14105 lambda!89656))))

(declare-fun bs!462668 () Bool)

(assert (= bs!462668 d!698449))

(declare-fun m!2792385 () Bool)

(assert (=> bs!462668 m!2792385))

(assert (=> b!2392274 d!698449))

(declare-fun b!2392787 () Bool)

(declare-fun res!1016602 () Bool)

(declare-fun e!1525141 () Bool)

(assert (=> b!2392787 (=> (not res!1016602) (not e!1525141))))

(declare-fun lt!870889 () List!28264)

(declare-fun size!22187 (List!28264) Int)

(assert (=> b!2392787 (= res!1016602 (= (size!22187 lt!870889) (+ (size!22187 (ite c!380562 s!9460 (_1!16486 lt!870813))) (size!22187 (ite c!380562 Nil!28166 (_2!16486 lt!870813))))))))

(declare-fun e!1525140 () List!28264)

(declare-fun b!2392786 () Bool)

(assert (=> b!2392786 (= e!1525140 (Cons!28166 (h!33567 (ite c!380562 s!9460 (_1!16486 lt!870813))) (++!6967 (t!208241 (ite c!380562 s!9460 (_1!16486 lt!870813))) (ite c!380562 Nil!28166 (_2!16486 lt!870813)))))))

(declare-fun b!2392788 () Bool)

(assert (=> b!2392788 (= e!1525141 (or (not (= (ite c!380562 Nil!28166 (_2!16486 lt!870813)) Nil!28166)) (= lt!870889 (ite c!380562 s!9460 (_1!16486 lt!870813)))))))

(declare-fun b!2392785 () Bool)

(assert (=> b!2392785 (= e!1525140 (ite c!380562 Nil!28166 (_2!16486 lt!870813)))))

(declare-fun d!698451 () Bool)

(assert (=> d!698451 e!1525141))

(declare-fun res!1016601 () Bool)

(assert (=> d!698451 (=> (not res!1016601) (not e!1525141))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3849 (List!28264) (InoxSet C!14184))

(assert (=> d!698451 (= res!1016601 (= (content!3849 lt!870889) ((_ map or) (content!3849 (ite c!380562 s!9460 (_1!16486 lt!870813))) (content!3849 (ite c!380562 Nil!28166 (_2!16486 lt!870813))))))))

(assert (=> d!698451 (= lt!870889 e!1525140)))

(declare-fun c!380681 () Bool)

(assert (=> d!698451 (= c!380681 ((_ is Nil!28166) (ite c!380562 s!9460 (_1!16486 lt!870813))))))

(assert (=> d!698451 (= (++!6967 (ite c!380562 s!9460 (_1!16486 lt!870813)) (ite c!380562 Nil!28166 (_2!16486 lt!870813))) lt!870889)))

(assert (= (and d!698451 c!380681) b!2392785))

(assert (= (and d!698451 (not c!380681)) b!2392786))

(assert (= (and d!698451 res!1016601) b!2392787))

(assert (= (and b!2392787 res!1016602) b!2392788))

(declare-fun m!2792395 () Bool)

(assert (=> b!2392787 m!2792395))

(declare-fun m!2792397 () Bool)

(assert (=> b!2392787 m!2792397))

(declare-fun m!2792399 () Bool)

(assert (=> b!2392787 m!2792399))

(declare-fun m!2792401 () Bool)

(assert (=> b!2392786 m!2792401))

(declare-fun m!2792403 () Bool)

(assert (=> d!698451 m!2792403))

(declare-fun m!2792405 () Bool)

(assert (=> d!698451 m!2792405))

(declare-fun m!2792407 () Bool)

(assert (=> d!698451 m!2792407))

(assert (=> bm!145726 d!698451))

(declare-fun bs!462671 () Bool)

(declare-fun d!698459 () Bool)

(assert (= bs!462671 (and d!698459 start!234744)))

(declare-fun lambda!89695 () Int)

(assert (=> bs!462671 (= lambda!89695 lambda!89655)))

(declare-fun bs!462672 () Bool)

(assert (= bs!462672 (and d!698459 d!698423)))

(assert (=> bs!462672 (= lambda!89695 lambda!89676)))

(declare-fun b!2392789 () Bool)

(declare-fun e!1525147 () Regex!7013)

(assert (=> b!2392789 (= e!1525147 (Concat!11649 (h!33568 l!9164) (generalisedConcat!114 (t!208242 l!9164))))))

(declare-fun b!2392790 () Bool)

(declare-fun e!1525144 () Bool)

(declare-fun e!1525142 () Bool)

(assert (=> b!2392790 (= e!1525144 e!1525142)))

(declare-fun c!380682 () Bool)

(assert (=> b!2392790 (= c!380682 (isEmpty!16146 l!9164))))

(assert (=> d!698459 e!1525144))

(declare-fun res!1016603 () Bool)

(assert (=> d!698459 (=> (not res!1016603) (not e!1525144))))

(declare-fun lt!870890 () Regex!7013)

(assert (=> d!698459 (= res!1016603 (validRegex!2738 lt!870890))))

(declare-fun e!1525146 () Regex!7013)

(assert (=> d!698459 (= lt!870890 e!1525146)))

(declare-fun c!380685 () Bool)

(declare-fun e!1525143 () Bool)

(assert (=> d!698459 (= c!380685 e!1525143)))

(declare-fun res!1016604 () Bool)

(assert (=> d!698459 (=> (not res!1016604) (not e!1525143))))

(assert (=> d!698459 (= res!1016604 ((_ is Cons!28167) l!9164))))

(assert (=> d!698459 (forall!5647 l!9164 lambda!89695)))

(assert (=> d!698459 (= (generalisedConcat!114 l!9164) lt!870890)))

(declare-fun b!2392791 () Bool)

(declare-fun e!1525145 () Bool)

(assert (=> b!2392791 (= e!1525145 (isConcat!83 lt!870890))))

(declare-fun b!2392792 () Bool)

(assert (=> b!2392792 (= e!1525142 e!1525145)))

(declare-fun c!380683 () Bool)

(assert (=> b!2392792 (= c!380683 (isEmpty!16146 (tail!3527 l!9164)))))

(declare-fun b!2392793 () Bool)

(assert (=> b!2392793 (= e!1525145 (= lt!870890 (head!5257 l!9164)))))

(declare-fun b!2392794 () Bool)

(assert (=> b!2392794 (= e!1525142 (isEmptyExpr!83 lt!870890))))

(declare-fun b!2392795 () Bool)

(assert (=> b!2392795 (= e!1525146 e!1525147)))

(declare-fun c!380684 () Bool)

(assert (=> b!2392795 (= c!380684 ((_ is Cons!28167) l!9164))))

(declare-fun b!2392796 () Bool)

(assert (=> b!2392796 (= e!1525146 (h!33568 l!9164))))

(declare-fun b!2392797 () Bool)

(assert (=> b!2392797 (= e!1525143 (isEmpty!16146 (t!208242 l!9164)))))

(declare-fun b!2392798 () Bool)

(assert (=> b!2392798 (= e!1525147 EmptyExpr!7013)))

(assert (= (and d!698459 res!1016604) b!2392797))

(assert (= (and d!698459 c!380685) b!2392796))

(assert (= (and d!698459 (not c!380685)) b!2392795))

(assert (= (and b!2392795 c!380684) b!2392789))

(assert (= (and b!2392795 (not c!380684)) b!2392798))

(assert (= (and d!698459 res!1016603) b!2392790))

(assert (= (and b!2392790 c!380682) b!2392794))

(assert (= (and b!2392790 (not c!380682)) b!2392792))

(assert (= (and b!2392792 c!380683) b!2392793))

(assert (= (and b!2392792 (not c!380683)) b!2392791))

(declare-fun m!2792409 () Bool)

(assert (=> b!2392794 m!2792409))

(assert (=> b!2392797 m!2792277))

(assert (=> b!2392790 m!2792025))

(declare-fun m!2792411 () Bool)

(assert (=> d!698459 m!2792411))

(declare-fun m!2792413 () Bool)

(assert (=> d!698459 m!2792413))

(assert (=> b!2392789 m!2791995))

(assert (=> b!2392792 m!2792001))

(assert (=> b!2392792 m!2792001))

(declare-fun m!2792415 () Bool)

(assert (=> b!2392792 m!2792415))

(assert (=> b!2392793 m!2792023))

(declare-fun m!2792417 () Bool)

(assert (=> b!2392791 m!2792417))

(assert (=> b!2392295 d!698459))

(declare-fun d!698461 () Bool)

(assert (=> d!698461 (matchR!3130 (Concat!11649 lt!870810 EmptyExpr!7013) (++!6967 (_1!16486 lt!870813) (_2!16486 lt!870813)))))

(declare-fun lt!870896 () Unit!41192)

(declare-fun choose!14106 (Regex!7013 Regex!7013 List!28264 List!28264 List!28264) Unit!41192)

(assert (=> d!698461 (= lt!870896 (choose!14106 lt!870810 EmptyExpr!7013 (_1!16486 lt!870813) (_2!16486 lt!870813) s!9460))))

(assert (=> d!698461 (validRegex!2738 lt!870810)))

(assert (=> d!698461 (= (lemmaFindSeparationIsDefinedThenConcatMatches!32 lt!870810 EmptyExpr!7013 (_1!16486 lt!870813) (_2!16486 lt!870813) s!9460) lt!870896)))

(declare-fun bs!462673 () Bool)

(assert (= bs!462673 d!698461))

(declare-fun m!2792433 () Bool)

(assert (=> bs!462673 m!2792433))

(assert (=> bs!462673 m!2792433))

(declare-fun m!2792435 () Bool)

(assert (=> bs!462673 m!2792435))

(declare-fun m!2792437 () Bool)

(assert (=> bs!462673 m!2792437))

(assert (=> bs!462673 m!2792249))

(assert (=> b!2392279 d!698461))

(declare-fun d!698465 () Bool)

(assert (=> d!698465 (= (get!8617 lt!870815) (v!30963 lt!870815))))

(assert (=> b!2392279 d!698465))

(declare-fun bs!462674 () Bool)

(declare-fun d!698467 () Bool)

(assert (= bs!462674 (and d!698467 start!234744)))

(declare-fun lambda!89696 () Int)

(assert (=> bs!462674 (= lambda!89696 lambda!89655)))

(declare-fun bs!462675 () Bool)

(assert (= bs!462675 (and d!698467 d!698423)))

(assert (=> bs!462675 (= lambda!89696 lambda!89676)))

(declare-fun bs!462676 () Bool)

(assert (= bs!462676 (and d!698467 d!698459)))

(assert (=> bs!462676 (= lambda!89696 lambda!89695)))

(declare-fun b!2392811 () Bool)

(declare-fun e!1525159 () Regex!7013)

(assert (=> b!2392811 (= e!1525159 (Concat!11649 (h!33568 lt!870807) (generalisedConcat!114 (t!208242 lt!870807))))))

(declare-fun b!2392812 () Bool)

(declare-fun e!1525156 () Bool)

(declare-fun e!1525154 () Bool)

(assert (=> b!2392812 (= e!1525156 e!1525154)))

(declare-fun c!380689 () Bool)

(assert (=> b!2392812 (= c!380689 (isEmpty!16146 lt!870807))))

(assert (=> d!698467 e!1525156))

(declare-fun res!1016611 () Bool)

(assert (=> d!698467 (=> (not res!1016611) (not e!1525156))))

(declare-fun lt!870897 () Regex!7013)

(assert (=> d!698467 (= res!1016611 (validRegex!2738 lt!870897))))

(declare-fun e!1525158 () Regex!7013)

(assert (=> d!698467 (= lt!870897 e!1525158)))

(declare-fun c!380692 () Bool)

(declare-fun e!1525155 () Bool)

(assert (=> d!698467 (= c!380692 e!1525155)))

(declare-fun res!1016612 () Bool)

(assert (=> d!698467 (=> (not res!1016612) (not e!1525155))))

(assert (=> d!698467 (= res!1016612 ((_ is Cons!28167) lt!870807))))

(assert (=> d!698467 (forall!5647 lt!870807 lambda!89696)))

(assert (=> d!698467 (= (generalisedConcat!114 lt!870807) lt!870897)))

(declare-fun b!2392813 () Bool)

(declare-fun e!1525157 () Bool)

(assert (=> b!2392813 (= e!1525157 (isConcat!83 lt!870897))))

(declare-fun b!2392814 () Bool)

(assert (=> b!2392814 (= e!1525154 e!1525157)))

(declare-fun c!380690 () Bool)

(assert (=> b!2392814 (= c!380690 (isEmpty!16146 (tail!3527 lt!870807)))))

(declare-fun b!2392815 () Bool)

(assert (=> b!2392815 (= e!1525157 (= lt!870897 (head!5257 lt!870807)))))

(declare-fun b!2392816 () Bool)

(assert (=> b!2392816 (= e!1525154 (isEmptyExpr!83 lt!870897))))

(declare-fun b!2392817 () Bool)

(assert (=> b!2392817 (= e!1525158 e!1525159)))

(declare-fun c!380691 () Bool)

(assert (=> b!2392817 (= c!380691 ((_ is Cons!28167) lt!870807))))

(declare-fun b!2392818 () Bool)

(assert (=> b!2392818 (= e!1525158 (h!33568 lt!870807))))

(declare-fun b!2392819 () Bool)

(assert (=> b!2392819 (= e!1525155 (isEmpty!16146 (t!208242 lt!870807)))))

(declare-fun b!2392820 () Bool)

(assert (=> b!2392820 (= e!1525159 EmptyExpr!7013)))

(assert (= (and d!698467 res!1016612) b!2392819))

(assert (= (and d!698467 c!380692) b!2392818))

(assert (= (and d!698467 (not c!380692)) b!2392817))

(assert (= (and b!2392817 c!380691) b!2392811))

(assert (= (and b!2392817 (not c!380691)) b!2392820))

(assert (= (and d!698467 res!1016611) b!2392812))

(assert (= (and b!2392812 c!380689) b!2392816))

(assert (= (and b!2392812 (not c!380689)) b!2392814))

(assert (= (and b!2392814 c!380690) b!2392815))

(assert (= (and b!2392814 (not c!380690)) b!2392813))

(declare-fun m!2792439 () Bool)

(assert (=> b!2392816 m!2792439))

(declare-fun m!2792441 () Bool)

(assert (=> b!2392819 m!2792441))

(assert (=> b!2392812 m!2792003))

(declare-fun m!2792443 () Bool)

(assert (=> d!698467 m!2792443))

(declare-fun m!2792445 () Bool)

(assert (=> d!698467 m!2792445))

(declare-fun m!2792447 () Bool)

(assert (=> b!2392811 m!2792447))

(declare-fun m!2792449 () Bool)

(assert (=> b!2392814 m!2792449))

(assert (=> b!2392814 m!2792449))

(declare-fun m!2792451 () Bool)

(assert (=> b!2392814 m!2792451))

(declare-fun m!2792453 () Bool)

(assert (=> b!2392815 m!2792453))

(declare-fun m!2792455 () Bool)

(assert (=> b!2392813 m!2792455))

(assert (=> bm!145727 d!698467))

(declare-fun b!2392823 () Bool)

(declare-fun res!1016614 () Bool)

(declare-fun e!1525161 () Bool)

(assert (=> b!2392823 (=> (not res!1016614) (not e!1525161))))

(declare-fun lt!870901 () List!28264)

(assert (=> b!2392823 (= res!1016614 (= (size!22187 lt!870901) (+ (size!22187 Nil!28166) (size!22187 s!9460))))))

(declare-fun b!2392822 () Bool)

(declare-fun e!1525160 () List!28264)

(assert (=> b!2392822 (= e!1525160 (Cons!28166 (h!33567 Nil!28166) (++!6967 (t!208241 Nil!28166) s!9460)))))

(declare-fun b!2392824 () Bool)

(assert (=> b!2392824 (= e!1525161 (or (not (= s!9460 Nil!28166)) (= lt!870901 Nil!28166)))))

(declare-fun b!2392821 () Bool)

(assert (=> b!2392821 (= e!1525160 s!9460)))

(declare-fun d!698469 () Bool)

(assert (=> d!698469 e!1525161))

(declare-fun res!1016613 () Bool)

(assert (=> d!698469 (=> (not res!1016613) (not e!1525161))))

(assert (=> d!698469 (= res!1016613 (= (content!3849 lt!870901) ((_ map or) (content!3849 Nil!28166) (content!3849 s!9460))))))

(assert (=> d!698469 (= lt!870901 e!1525160)))

(declare-fun c!380693 () Bool)

(assert (=> d!698469 (= c!380693 ((_ is Nil!28166) Nil!28166))))

(assert (=> d!698469 (= (++!6967 Nil!28166 s!9460) lt!870901)))

(assert (= (and d!698469 c!380693) b!2392821))

(assert (= (and d!698469 (not c!380693)) b!2392822))

(assert (= (and d!698469 res!1016613) b!2392823))

(assert (= (and b!2392823 res!1016614) b!2392824))

(declare-fun m!2792463 () Bool)

(assert (=> b!2392823 m!2792463))

(declare-fun m!2792465 () Bool)

(assert (=> b!2392823 m!2792465))

(declare-fun m!2792467 () Bool)

(assert (=> b!2392823 m!2792467))

(declare-fun m!2792469 () Bool)

(assert (=> b!2392822 m!2792469))

(declare-fun m!2792471 () Bool)

(assert (=> d!698469 m!2792471))

(declare-fun m!2792473 () Bool)

(assert (=> d!698469 m!2792473))

(declare-fun m!2792475 () Bool)

(assert (=> d!698469 m!2792475))

(assert (=> b!2392296 d!698469))

(declare-fun b!2392825 () Bool)

(declare-fun e!1525162 () Bool)

(assert (=> b!2392825 (= e!1525162 (matchR!3130 call!145733 s!9460))))

(declare-fun b!2392826 () Bool)

(declare-fun res!1016617 () Bool)

(declare-fun e!1525163 () Bool)

(assert (=> b!2392826 (=> (not res!1016617) (not e!1525163))))

(declare-fun lt!870903 () Option!5556)

(assert (=> b!2392826 (= res!1016617 (matchR!3130 lt!870810 (_1!16486 (get!8617 lt!870903))))))

(declare-fun b!2392827 () Bool)

(assert (=> b!2392827 (= e!1525163 (= (++!6967 (_1!16486 (get!8617 lt!870903)) (_2!16486 (get!8617 lt!870903))) s!9460))))

(declare-fun b!2392828 () Bool)

(declare-fun e!1525166 () Option!5556)

(assert (=> b!2392828 (= e!1525166 (Some!5555 (tuple2!27891 Nil!28166 s!9460)))))

(declare-fun b!2392829 () Bool)

(declare-fun e!1525165 () Bool)

(assert (=> b!2392829 (= e!1525165 (not (isDefined!4384 lt!870903)))))

(declare-fun d!698473 () Bool)

(assert (=> d!698473 e!1525165))

(declare-fun res!1016618 () Bool)

(assert (=> d!698473 (=> res!1016618 e!1525165)))

(assert (=> d!698473 (= res!1016618 e!1525163)))

(declare-fun res!1016619 () Bool)

(assert (=> d!698473 (=> (not res!1016619) (not e!1525163))))

(assert (=> d!698473 (= res!1016619 (isDefined!4384 lt!870903))))

(assert (=> d!698473 (= lt!870903 e!1525166)))

(declare-fun c!380695 () Bool)

(assert (=> d!698473 (= c!380695 e!1525162)))

(declare-fun res!1016615 () Bool)

(assert (=> d!698473 (=> (not res!1016615) (not e!1525162))))

(assert (=> d!698473 (= res!1016615 (matchR!3130 lt!870810 Nil!28166))))

(assert (=> d!698473 (validRegex!2738 lt!870810)))

(assert (=> d!698473 (= (findConcatSeparation!664 lt!870810 call!145733 Nil!28166 s!9460 s!9460) lt!870903)))

(declare-fun b!2392830 () Bool)

(declare-fun e!1525164 () Option!5556)

(assert (=> b!2392830 (= e!1525164 None!5555)))

(declare-fun b!2392831 () Bool)

(declare-fun res!1016616 () Bool)

(assert (=> b!2392831 (=> (not res!1016616) (not e!1525163))))

(assert (=> b!2392831 (= res!1016616 (matchR!3130 call!145733 (_2!16486 (get!8617 lt!870903))))))

(declare-fun b!2392832 () Bool)

(assert (=> b!2392832 (= e!1525166 e!1525164)))

(declare-fun c!380694 () Bool)

(assert (=> b!2392832 (= c!380694 ((_ is Nil!28166) s!9460))))

(declare-fun b!2392833 () Bool)

(declare-fun lt!870902 () Unit!41192)

(declare-fun lt!870904 () Unit!41192)

(assert (=> b!2392833 (= lt!870902 lt!870904)))

(assert (=> b!2392833 (= (++!6967 (++!6967 Nil!28166 (Cons!28166 (h!33567 s!9460) Nil!28166)) (t!208241 s!9460)) s!9460)))

(assert (=> b!2392833 (= lt!870904 (lemmaMoveElementToOtherListKeepsConcatEq!609 Nil!28166 (h!33567 s!9460) (t!208241 s!9460) s!9460))))

(assert (=> b!2392833 (= e!1525164 (findConcatSeparation!664 lt!870810 call!145733 (++!6967 Nil!28166 (Cons!28166 (h!33567 s!9460) Nil!28166)) (t!208241 s!9460) s!9460))))

(assert (= (and d!698473 res!1016615) b!2392825))

(assert (= (and d!698473 c!380695) b!2392828))

(assert (= (and d!698473 (not c!380695)) b!2392832))

(assert (= (and b!2392832 c!380694) b!2392830))

(assert (= (and b!2392832 (not c!380694)) b!2392833))

(assert (= (and d!698473 res!1016619) b!2392826))

(assert (= (and b!2392826 res!1016617) b!2392831))

(assert (= (and b!2392831 res!1016616) b!2392827))

(assert (= (and d!698473 (not res!1016618)) b!2392829))

(declare-fun m!2792479 () Bool)

(assert (=> b!2392831 m!2792479))

(declare-fun m!2792481 () Bool)

(assert (=> b!2392831 m!2792481))

(assert (=> b!2392833 m!2792209))

(assert (=> b!2392833 m!2792209))

(assert (=> b!2392833 m!2792211))

(assert (=> b!2392833 m!2792213))

(assert (=> b!2392833 m!2792209))

(declare-fun m!2792483 () Bool)

(assert (=> b!2392833 m!2792483))

(declare-fun m!2792485 () Bool)

(assert (=> b!2392829 m!2792485))

(assert (=> b!2392827 m!2792479))

(declare-fun m!2792487 () Bool)

(assert (=> b!2392827 m!2792487))

(assert (=> b!2392826 m!2792479))

(declare-fun m!2792489 () Bool)

(assert (=> b!2392826 m!2792489))

(assert (=> d!698473 m!2792485))

(assert (=> d!698473 m!2792247))

(assert (=> d!698473 m!2792249))

(declare-fun m!2792491 () Bool)

(assert (=> b!2392825 m!2792491))

(assert (=> bm!145721 d!698473))

(declare-fun d!698481 () Bool)

(assert (=> d!698481 (= (head!5257 l!9164) (h!33568 l!9164))))

(assert (=> bm!145722 d!698481))

(declare-fun d!698483 () Bool)

(assert (=> d!698483 (matchR!3130 (Concat!11649 lt!870810 EmptyExpr!7013) (++!6967 s!9460 Nil!28166))))

(declare-fun lt!870912 () Unit!41192)

(declare-fun choose!14109 (Regex!7013 Regex!7013 List!28264 List!28264) Unit!41192)

(assert (=> d!698483 (= lt!870912 (choose!14109 lt!870810 EmptyExpr!7013 s!9460 Nil!28166))))

(declare-fun e!1525194 () Bool)

(assert (=> d!698483 e!1525194))

(declare-fun res!1016642 () Bool)

(assert (=> d!698483 (=> (not res!1016642) (not e!1525194))))

(assert (=> d!698483 (= res!1016642 (validRegex!2738 lt!870810))))

(assert (=> d!698483 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!50 lt!870810 EmptyExpr!7013 s!9460 Nil!28166) lt!870912)))

(declare-fun b!2392878 () Bool)

(assert (=> b!2392878 (= e!1525194 (validRegex!2738 EmptyExpr!7013))))

(assert (= (and d!698483 res!1016642) b!2392878))

(declare-fun m!2792537 () Bool)

(assert (=> d!698483 m!2792537))

(assert (=> d!698483 m!2792537))

(declare-fun m!2792539 () Bool)

(assert (=> d!698483 m!2792539))

(declare-fun m!2792541 () Bool)

(assert (=> d!698483 m!2792541))

(assert (=> d!698483 m!2792249))

(declare-fun m!2792543 () Bool)

(assert (=> b!2392878 m!2792543))

(assert (=> b!2392291 d!698483))

(declare-fun b!2392884 () Bool)

(declare-fun e!1525203 () Bool)

(declare-fun lt!870914 () Bool)

(declare-fun call!145783 () Bool)

(assert (=> b!2392884 (= e!1525203 (= lt!870914 call!145783))))

(declare-fun b!2392885 () Bool)

(declare-fun e!1525202 () Bool)

(assert (=> b!2392885 (= e!1525202 (not (= (head!5259 call!145727) (c!380565 lt!870802))))))

(declare-fun b!2392886 () Bool)

(declare-fun e!1525197 () Bool)

(assert (=> b!2392886 (= e!1525203 e!1525197)))

(declare-fun c!380709 () Bool)

(assert (=> b!2392886 (= c!380709 ((_ is EmptyLang!7013) lt!870802))))

(declare-fun b!2392887 () Bool)

(declare-fun res!1016647 () Bool)

(assert (=> b!2392887 (=> res!1016647 e!1525202)))

(assert (=> b!2392887 (= res!1016647 (not (isEmpty!16149 (tail!3529 call!145727))))))

(declare-fun b!2392888 () Bool)

(assert (=> b!2392888 (= e!1525197 (not lt!870914))))

(declare-fun b!2392889 () Bool)

(declare-fun e!1525200 () Bool)

(assert (=> b!2392889 (= e!1525200 (matchR!3130 (derivativeStep!1720 lt!870802 (head!5259 call!145727)) (tail!3529 call!145727)))))

(declare-fun b!2392890 () Bool)

(assert (=> b!2392890 (= e!1525200 (nullable!2061 lt!870802))))

(declare-fun b!2392891 () Bool)

(declare-fun res!1016652 () Bool)

(declare-fun e!1525201 () Bool)

(assert (=> b!2392891 (=> (not res!1016652) (not e!1525201))))

(assert (=> b!2392891 (= res!1016652 (isEmpty!16149 (tail!3529 call!145727)))))

(declare-fun b!2392892 () Bool)

(assert (=> b!2392892 (= e!1525201 (= (head!5259 call!145727) (c!380565 lt!870802)))))

(declare-fun bm!145778 () Bool)

(assert (=> bm!145778 (= call!145783 (isEmpty!16149 call!145727))))

(declare-fun d!698493 () Bool)

(assert (=> d!698493 e!1525203))

(declare-fun c!380708 () Bool)

(assert (=> d!698493 (= c!380708 ((_ is EmptyExpr!7013) lt!870802))))

(assert (=> d!698493 (= lt!870914 e!1525200)))

(declare-fun c!380710 () Bool)

(assert (=> d!698493 (= c!380710 (isEmpty!16149 call!145727))))

(assert (=> d!698493 (validRegex!2738 lt!870802)))

(assert (=> d!698493 (= (matchR!3130 lt!870802 call!145727) lt!870914)))

(declare-fun b!2392883 () Bool)

(declare-fun e!1525199 () Bool)

(assert (=> b!2392883 (= e!1525199 e!1525202)))

(declare-fun res!1016650 () Bool)

(assert (=> b!2392883 (=> res!1016650 e!1525202)))

(assert (=> b!2392883 (= res!1016650 call!145783)))

(declare-fun b!2392893 () Bool)

(declare-fun res!1016651 () Bool)

(assert (=> b!2392893 (=> (not res!1016651) (not e!1525201))))

(assert (=> b!2392893 (= res!1016651 (not call!145783))))

(declare-fun b!2392894 () Bool)

(declare-fun res!1016645 () Bool)

(declare-fun e!1525198 () Bool)

(assert (=> b!2392894 (=> res!1016645 e!1525198)))

(assert (=> b!2392894 (= res!1016645 (not ((_ is ElementMatch!7013) lt!870802)))))

(assert (=> b!2392894 (= e!1525197 e!1525198)))

(declare-fun b!2392895 () Bool)

(declare-fun res!1016648 () Bool)

(assert (=> b!2392895 (=> res!1016648 e!1525198)))

(assert (=> b!2392895 (= res!1016648 e!1525201)))

(declare-fun res!1016649 () Bool)

(assert (=> b!2392895 (=> (not res!1016649) (not e!1525201))))

(assert (=> b!2392895 (= res!1016649 lt!870914)))

(declare-fun b!2392896 () Bool)

(assert (=> b!2392896 (= e!1525198 e!1525199)))

(declare-fun res!1016646 () Bool)

(assert (=> b!2392896 (=> (not res!1016646) (not e!1525199))))

(assert (=> b!2392896 (= res!1016646 (not lt!870914))))

(assert (= (and d!698493 c!380710) b!2392890))

(assert (= (and d!698493 (not c!380710)) b!2392889))

(assert (= (and d!698493 c!380708) b!2392884))

(assert (= (and d!698493 (not c!380708)) b!2392886))

(assert (= (and b!2392886 c!380709) b!2392888))

(assert (= (and b!2392886 (not c!380709)) b!2392894))

(assert (= (and b!2392894 (not res!1016645)) b!2392895))

(assert (= (and b!2392895 res!1016649) b!2392893))

(assert (= (and b!2392893 res!1016651) b!2392891))

(assert (= (and b!2392891 res!1016652) b!2392892))

(assert (= (and b!2392895 (not res!1016648)) b!2392896))

(assert (= (and b!2392896 res!1016646) b!2392883))

(assert (= (and b!2392883 (not res!1016650)) b!2392887))

(assert (= (and b!2392887 (not res!1016647)) b!2392885))

(assert (= (or b!2392884 b!2392883 b!2392893) bm!145778))

(declare-fun m!2792559 () Bool)

(assert (=> b!2392892 m!2792559))

(declare-fun m!2792561 () Bool)

(assert (=> d!698493 m!2792561))

(declare-fun m!2792563 () Bool)

(assert (=> d!698493 m!2792563))

(declare-fun m!2792565 () Bool)

(assert (=> b!2392891 m!2792565))

(assert (=> b!2392891 m!2792565))

(declare-fun m!2792567 () Bool)

(assert (=> b!2392891 m!2792567))

(assert (=> b!2392885 m!2792559))

(assert (=> bm!145778 m!2792561))

(assert (=> b!2392889 m!2792559))

(assert (=> b!2392889 m!2792559))

(declare-fun m!2792569 () Bool)

(assert (=> b!2392889 m!2792569))

(assert (=> b!2392889 m!2792565))

(assert (=> b!2392889 m!2792569))

(assert (=> b!2392889 m!2792565))

(declare-fun m!2792571 () Bool)

(assert (=> b!2392889 m!2792571))

(declare-fun m!2792573 () Bool)

(assert (=> b!2392890 m!2792573))

(assert (=> b!2392887 m!2792565))

(assert (=> b!2392887 m!2792565))

(assert (=> b!2392887 m!2792567))

(assert (=> b!2392291 d!698493))

(declare-fun d!698495 () Bool)

(assert (=> d!698495 (isDefined!4384 (findConcatSeparation!664 lt!870810 EmptyExpr!7013 Nil!28166 s!9460 s!9460))))

(declare-fun lt!870917 () Unit!41192)

(declare-fun choose!14110 (Regex!7013 Regex!7013 List!28264) Unit!41192)

(assert (=> d!698495 (= lt!870917 (choose!14110 lt!870810 EmptyExpr!7013 s!9460))))

(assert (=> d!698495 (validRegex!2738 lt!870810)))

(assert (=> d!698495 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!32 lt!870810 EmptyExpr!7013 s!9460) lt!870917)))

(declare-fun bs!462683 () Bool)

(assert (= bs!462683 d!698495))

(declare-fun m!2792575 () Bool)

(assert (=> bs!462683 m!2792575))

(assert (=> bs!462683 m!2792575))

(declare-fun m!2792577 () Bool)

(assert (=> bs!462683 m!2792577))

(declare-fun m!2792579 () Bool)

(assert (=> bs!462683 m!2792579))

(assert (=> bs!462683 m!2792249))

(assert (=> b!2392291 d!698495))

(declare-fun d!698499 () Bool)

(assert (=> d!698499 (= (tail!3527 l!9164) (t!208242 l!9164))))

(assert (=> b!2392276 d!698499))

(declare-fun d!698501 () Bool)

(assert (=> d!698501 (= (isEmpty!16146 lt!870807) ((_ is Nil!28167) lt!870807))))

(assert (=> b!2392276 d!698501))

(declare-fun b!2392942 () Bool)

(declare-fun e!1525224 () Bool)

(declare-fun lt!870918 () Bool)

(declare-fun call!145784 () Bool)

(assert (=> b!2392942 (= e!1525224 (= lt!870918 call!145784))))

(declare-fun e!1525223 () Bool)

(declare-fun b!2392943 () Bool)

(assert (=> b!2392943 (= e!1525223 (not (= (head!5259 (ite c!380562 s!9460 call!145727)) (c!380565 (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013))))))))

(declare-fun b!2392944 () Bool)

(declare-fun e!1525218 () Bool)

(assert (=> b!2392944 (= e!1525224 e!1525218)))

(declare-fun c!380712 () Bool)

(assert (=> b!2392944 (= c!380712 ((_ is EmptyLang!7013) (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013))))))

(declare-fun b!2392945 () Bool)

(declare-fun res!1016655 () Bool)

(assert (=> b!2392945 (=> res!1016655 e!1525223)))

(assert (=> b!2392945 (= res!1016655 (not (isEmpty!16149 (tail!3529 (ite c!380562 s!9460 call!145727)))))))

(declare-fun b!2392946 () Bool)

(assert (=> b!2392946 (= e!1525218 (not lt!870918))))

(declare-fun e!1525221 () Bool)

(declare-fun b!2392947 () Bool)

(assert (=> b!2392947 (= e!1525221 (matchR!3130 (derivativeStep!1720 (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013)) (head!5259 (ite c!380562 s!9460 call!145727))) (tail!3529 (ite c!380562 s!9460 call!145727))))))

(declare-fun b!2392948 () Bool)

(assert (=> b!2392948 (= e!1525221 (nullable!2061 (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013))))))

(declare-fun b!2392949 () Bool)

(declare-fun res!1016660 () Bool)

(declare-fun e!1525222 () Bool)

(assert (=> b!2392949 (=> (not res!1016660) (not e!1525222))))

(assert (=> b!2392949 (= res!1016660 (isEmpty!16149 (tail!3529 (ite c!380562 s!9460 call!145727))))))

(declare-fun b!2392950 () Bool)

(assert (=> b!2392950 (= e!1525222 (= (head!5259 (ite c!380562 s!9460 call!145727)) (c!380565 (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013)))))))

(declare-fun bm!145779 () Bool)

(assert (=> bm!145779 (= call!145784 (isEmpty!16149 (ite c!380562 s!9460 call!145727)))))

(declare-fun d!698503 () Bool)

(assert (=> d!698503 e!1525224))

(declare-fun c!380711 () Bool)

(assert (=> d!698503 (= c!380711 ((_ is EmptyExpr!7013) (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013))))))

(assert (=> d!698503 (= lt!870918 e!1525221)))

(declare-fun c!380713 () Bool)

(assert (=> d!698503 (= c!380713 (isEmpty!16149 (ite c!380562 s!9460 call!145727)))))

(assert (=> d!698503 (validRegex!2738 (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013)))))

(assert (=> d!698503 (= (matchR!3130 (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013)) (ite c!380562 s!9460 call!145727)) lt!870918)))

(declare-fun b!2392941 () Bool)

(declare-fun e!1525220 () Bool)

(assert (=> b!2392941 (= e!1525220 e!1525223)))

(declare-fun res!1016658 () Bool)

(assert (=> b!2392941 (=> res!1016658 e!1525223)))

(assert (=> b!2392941 (= res!1016658 call!145784)))

(declare-fun b!2392951 () Bool)

(declare-fun res!1016659 () Bool)

(assert (=> b!2392951 (=> (not res!1016659) (not e!1525222))))

(assert (=> b!2392951 (= res!1016659 (not call!145784))))

(declare-fun b!2392952 () Bool)

(declare-fun res!1016653 () Bool)

(declare-fun e!1525219 () Bool)

(assert (=> b!2392952 (=> res!1016653 e!1525219)))

(assert (=> b!2392952 (= res!1016653 (not ((_ is ElementMatch!7013) (ite c!380562 lt!870802 (Concat!11649 lt!870810 EmptyExpr!7013)))))))

(assert (=> b!2392952 (= e!1525218 e!1525219)))

(declare-fun b!2392953 () Bool)

(declare-fun res!1016656 () Bool)

(assert (=> b!2392953 (=> res!1016656 e!1525219)))

(assert (=> b!2392953 (= res!1016656 e!1525222)))

(declare-fun res!1016657 () Bool)

(assert (=> b!2392953 (=> (not res!1016657) (not e!1525222))))

(assert (=> b!2392953 (= res!1016657 lt!870918)))

(declare-fun b!2392954 () Bool)

(assert (=> b!2392954 (= e!1525219 e!1525220)))

(declare-fun res!1016654 () Bool)

(assert (=> b!2392954 (=> (not res!1016654) (not e!1525220))))

(assert (=> b!2392954 (= res!1016654 (not lt!870918))))

(assert (= (and d!698503 c!380713) b!2392948))

(assert (= (and d!698503 (not c!380713)) b!2392947))

(assert (= (and d!698503 c!380711) b!2392942))

(assert (= (and d!698503 (not c!380711)) b!2392944))

(assert (= (and b!2392944 c!380712) b!2392946))

(assert (= (and b!2392944 (not c!380712)) b!2392952))

(assert (= (and b!2392952 (not res!1016653)) b!2392953))

(assert (= (and b!2392953 res!1016657) b!2392951))

(assert (= (and b!2392951 res!1016659) b!2392949))

(assert (= (and b!2392949 res!1016660) b!2392950))

(assert (= (and b!2392953 (not res!1016656)) b!2392954))

(assert (= (and b!2392954 res!1016654) b!2392941))

(assert (= (and b!2392941 (not res!1016658)) b!2392945))

(assert (= (and b!2392945 (not res!1016655)) b!2392943))

(assert (= (or b!2392942 b!2392941 b!2392951) bm!145779))

(declare-fun m!2792581 () Bool)

(assert (=> b!2392950 m!2792581))

(declare-fun m!2792583 () Bool)

(assert (=> d!698503 m!2792583))

(declare-fun m!2792585 () Bool)

(assert (=> d!698503 m!2792585))

(declare-fun m!2792587 () Bool)

(assert (=> b!2392949 m!2792587))

(assert (=> b!2392949 m!2792587))

(declare-fun m!2792589 () Bool)

(assert (=> b!2392949 m!2792589))

(assert (=> b!2392943 m!2792581))

(assert (=> bm!145779 m!2792583))

(assert (=> b!2392947 m!2792581))

(assert (=> b!2392947 m!2792581))

(declare-fun m!2792591 () Bool)

(assert (=> b!2392947 m!2792591))

(assert (=> b!2392947 m!2792587))

(assert (=> b!2392947 m!2792591))

(assert (=> b!2392947 m!2792587))

(declare-fun m!2792593 () Bool)

(assert (=> b!2392947 m!2792593))

(declare-fun m!2792595 () Bool)

(assert (=> b!2392948 m!2792595))

(assert (=> b!2392945 m!2792587))

(assert (=> b!2392945 m!2792587))

(assert (=> b!2392945 m!2792589))

(assert (=> bm!145728 d!698503))

(declare-fun b!2392966 () Bool)

(declare-fun e!1525227 () Bool)

(declare-fun tp!762451 () Bool)

(declare-fun tp!762449 () Bool)

(assert (=> b!2392966 (= e!1525227 (and tp!762451 tp!762449))))

(declare-fun b!2392968 () Bool)

(declare-fun tp!762450 () Bool)

(declare-fun tp!762448 () Bool)

(assert (=> b!2392968 (= e!1525227 (and tp!762450 tp!762448))))

(assert (=> b!2392280 (= tp!762387 e!1525227)))

(declare-fun b!2392967 () Bool)

(declare-fun tp!762447 () Bool)

(assert (=> b!2392967 (= e!1525227 tp!762447)))

(declare-fun b!2392965 () Bool)

(assert (=> b!2392965 (= e!1525227 tp_is_empty!11439)))

(assert (= (and b!2392280 ((_ is ElementMatch!7013) (reg!7342 r!13927))) b!2392965))

(assert (= (and b!2392280 ((_ is Concat!11649) (reg!7342 r!13927))) b!2392966))

(assert (= (and b!2392280 ((_ is Star!7013) (reg!7342 r!13927))) b!2392967))

(assert (= (and b!2392280 ((_ is Union!7013) (reg!7342 r!13927))) b!2392968))

(declare-fun b!2392970 () Bool)

(declare-fun e!1525228 () Bool)

(declare-fun tp!762456 () Bool)

(declare-fun tp!762454 () Bool)

(assert (=> b!2392970 (= e!1525228 (and tp!762456 tp!762454))))

(declare-fun b!2392972 () Bool)

(declare-fun tp!762455 () Bool)

(declare-fun tp!762453 () Bool)

(assert (=> b!2392972 (= e!1525228 (and tp!762455 tp!762453))))

(assert (=> b!2392277 (= tp!762380 e!1525228)))

(declare-fun b!2392971 () Bool)

(declare-fun tp!762452 () Bool)

(assert (=> b!2392971 (= e!1525228 tp!762452)))

(declare-fun b!2392969 () Bool)

(assert (=> b!2392969 (= e!1525228 tp_is_empty!11439)))

(assert (= (and b!2392277 ((_ is ElementMatch!7013) (regOne!14538 r!13927))) b!2392969))

(assert (= (and b!2392277 ((_ is Concat!11649) (regOne!14538 r!13927))) b!2392970))

(assert (= (and b!2392277 ((_ is Star!7013) (regOne!14538 r!13927))) b!2392971))

(assert (= (and b!2392277 ((_ is Union!7013) (regOne!14538 r!13927))) b!2392972))

(declare-fun b!2392974 () Bool)

(declare-fun e!1525229 () Bool)

(declare-fun tp!762461 () Bool)

(declare-fun tp!762459 () Bool)

(assert (=> b!2392974 (= e!1525229 (and tp!762461 tp!762459))))

(declare-fun b!2392976 () Bool)

(declare-fun tp!762460 () Bool)

(declare-fun tp!762458 () Bool)

(assert (=> b!2392976 (= e!1525229 (and tp!762460 tp!762458))))

(assert (=> b!2392277 (= tp!762383 e!1525229)))

(declare-fun b!2392975 () Bool)

(declare-fun tp!762457 () Bool)

(assert (=> b!2392975 (= e!1525229 tp!762457)))

(declare-fun b!2392973 () Bool)

(assert (=> b!2392973 (= e!1525229 tp_is_empty!11439)))

(assert (= (and b!2392277 ((_ is ElementMatch!7013) (regTwo!14538 r!13927))) b!2392973))

(assert (= (and b!2392277 ((_ is Concat!11649) (regTwo!14538 r!13927))) b!2392974))

(assert (= (and b!2392277 ((_ is Star!7013) (regTwo!14538 r!13927))) b!2392975))

(assert (= (and b!2392277 ((_ is Union!7013) (regTwo!14538 r!13927))) b!2392976))

(declare-fun b!2392978 () Bool)

(declare-fun e!1525230 () Bool)

(declare-fun tp!762466 () Bool)

(declare-fun tp!762464 () Bool)

(assert (=> b!2392978 (= e!1525230 (and tp!762466 tp!762464))))

(declare-fun b!2392980 () Bool)

(declare-fun tp!762465 () Bool)

(declare-fun tp!762463 () Bool)

(assert (=> b!2392980 (= e!1525230 (and tp!762465 tp!762463))))

(assert (=> b!2392298 (= tp!762381 e!1525230)))

(declare-fun b!2392979 () Bool)

(declare-fun tp!762462 () Bool)

(assert (=> b!2392979 (= e!1525230 tp!762462)))

(declare-fun b!2392977 () Bool)

(assert (=> b!2392977 (= e!1525230 tp_is_empty!11439)))

(assert (= (and b!2392298 ((_ is ElementMatch!7013) (regOne!14539 r!13927))) b!2392977))

(assert (= (and b!2392298 ((_ is Concat!11649) (regOne!14539 r!13927))) b!2392978))

(assert (= (and b!2392298 ((_ is Star!7013) (regOne!14539 r!13927))) b!2392979))

(assert (= (and b!2392298 ((_ is Union!7013) (regOne!14539 r!13927))) b!2392980))

(declare-fun b!2392982 () Bool)

(declare-fun e!1525231 () Bool)

(declare-fun tp!762471 () Bool)

(declare-fun tp!762469 () Bool)

(assert (=> b!2392982 (= e!1525231 (and tp!762471 tp!762469))))

(declare-fun b!2392984 () Bool)

(declare-fun tp!762470 () Bool)

(declare-fun tp!762468 () Bool)

(assert (=> b!2392984 (= e!1525231 (and tp!762470 tp!762468))))

(assert (=> b!2392298 (= tp!762384 e!1525231)))

(declare-fun b!2392983 () Bool)

(declare-fun tp!762467 () Bool)

(assert (=> b!2392983 (= e!1525231 tp!762467)))

(declare-fun b!2392981 () Bool)

(assert (=> b!2392981 (= e!1525231 tp_is_empty!11439)))

(assert (= (and b!2392298 ((_ is ElementMatch!7013) (regTwo!14539 r!13927))) b!2392981))

(assert (= (and b!2392298 ((_ is Concat!11649) (regTwo!14539 r!13927))) b!2392982))

(assert (= (and b!2392298 ((_ is Star!7013) (regTwo!14539 r!13927))) b!2392983))

(assert (= (and b!2392298 ((_ is Union!7013) (regTwo!14539 r!13927))) b!2392984))

(declare-fun b!2392989 () Bool)

(declare-fun e!1525234 () Bool)

(declare-fun tp!762474 () Bool)

(assert (=> b!2392989 (= e!1525234 (and tp_is_empty!11439 tp!762474))))

(assert (=> b!2392286 (= tp!762385 e!1525234)))

(assert (= (and b!2392286 ((_ is Cons!28166) (t!208241 s!9460))) b!2392989))

(declare-fun b!2392991 () Bool)

(declare-fun e!1525235 () Bool)

(declare-fun tp!762479 () Bool)

(declare-fun tp!762477 () Bool)

(assert (=> b!2392991 (= e!1525235 (and tp!762479 tp!762477))))

(declare-fun b!2392993 () Bool)

(declare-fun tp!762478 () Bool)

(declare-fun tp!762476 () Bool)

(assert (=> b!2392993 (= e!1525235 (and tp!762478 tp!762476))))

(assert (=> b!2392281 (= tp!762382 e!1525235)))

(declare-fun b!2392992 () Bool)

(declare-fun tp!762475 () Bool)

(assert (=> b!2392992 (= e!1525235 tp!762475)))

(declare-fun b!2392990 () Bool)

(assert (=> b!2392990 (= e!1525235 tp_is_empty!11439)))

(assert (= (and b!2392281 ((_ is ElementMatch!7013) (h!33568 l!9164))) b!2392990))

(assert (= (and b!2392281 ((_ is Concat!11649) (h!33568 l!9164))) b!2392991))

(assert (= (and b!2392281 ((_ is Star!7013) (h!33568 l!9164))) b!2392992))

(assert (= (and b!2392281 ((_ is Union!7013) (h!33568 l!9164))) b!2392993))

(declare-fun b!2392998 () Bool)

(declare-fun e!1525238 () Bool)

(declare-fun tp!762484 () Bool)

(declare-fun tp!762485 () Bool)

(assert (=> b!2392998 (= e!1525238 (and tp!762484 tp!762485))))

(assert (=> b!2392281 (= tp!762386 e!1525238)))

(assert (= (and b!2392281 ((_ is Cons!28167) (t!208242 l!9164))) b!2392998))

(declare-fun b_lambda!74217 () Bool)

(assert (= b_lambda!74213 (or start!234744 b_lambda!74217)))

(declare-fun bs!462684 () Bool)

(declare-fun d!698505 () Bool)

(assert (= bs!462684 (and d!698505 start!234744)))

(assert (=> bs!462684 (= (dynLambda!12128 lambda!89655 (h!33568 l!9164)) (validRegex!2738 (h!33568 l!9164)))))

(assert (=> bs!462684 m!2791993))

(assert (=> b!2392604 d!698505))

(check-sat (not b!2392608) (not bm!145763) (not d!698397) (not d!698461) (not b!2392825) (not d!698495) (not b!2392948) (not b!2392970) (not d!698419) (not b!2392991) (not bm!145765) (not b!2392792) (not b!2392599) (not b!2392671) (not d!698443) (not b!2392945) (not b!2392758) (not b!2392510) (not d!698413) (not b!2392827) (not b!2392979) (not b!2392972) (not d!698389) (not bm!145752) (not b!2392983) (not b!2392592) (not bm!145740) (not b!2392975) (not b!2392992) (not b!2392349) (not b!2392441) (not b!2392605) (not b!2392978) (not b!2392668) (not b_lambda!74217) (not d!698451) (not d!698459) (not d!698423) (not bm!145749) (not b!2392950) (not b!2392760) (not b!2392822) (not b!2392514) (not b!2392823) (not d!698427) (not b!2392816) (not b!2392614) (not b!2392993) (not b!2392633) (not b!2392593) (not b!2392892) (not d!698445) (not b!2392890) (not b!2392512) (not d!698469) (not bm!145779) (not b!2392811) (not b!2392833) (not b!2392787) (not d!698493) (not d!698467) tp_is_empty!11439 (not bm!145764) (not b!2392626) (not b!2392762) (not b!2392831) (not b!2392980) (not d!698473) (not b!2392813) (not b!2392878) (not b!2392815) (not b!2392891) (not b!2392667) (not b!2392448) (not b!2392591) (not b!2392949) (not b!2392976) (not b!2392786) (not b!2392967) (not b!2392812) (not d!698417) (not b!2392595) (not bm!145778) (not b!2392597) (not b!2392943) (not b!2392971) (not d!698375) (not b!2392794) (not b!2392789) (not b!2392947) (not b!2392889) (not b!2392625) (not b!2392670) (not b!2392829) (not b!2392982) (not b!2392621) (not b!2392966) (not b!2392610) (not d!698393) (not b!2392819) (not b!2392989) (not b!2392998) (not b!2392627) (not bm!145748) (not b!2392513) (not d!698503) (not b!2392887) (not b!2392508) (not d!698449) (not b!2392674) (not b!2392814) (not b!2392754) (not b!2392756) (not b!2392826) (not b!2392793) (not b!2392612) (not b!2392791) (not b!2392515) (not d!698415) (not d!698483) (not bs!462684) (not b!2392606) (not b!2392984) (not b!2392623) (not b!2392666) (not d!698429) (not b!2392968) (not bm!145741) (not b!2392669) (not b!2392607) (not d!698441) (not b!2392755) (not b!2392797) (not b!2392628) (not b!2392974) (not b!2392790) (not b!2392885))
(check-sat)
