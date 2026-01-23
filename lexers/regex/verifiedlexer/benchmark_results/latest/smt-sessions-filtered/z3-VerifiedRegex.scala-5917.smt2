; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289664 () Bool)

(assert start!289664)

(declare-fun b!3006050 () Bool)

(assert (=> b!3006050 true))

(assert (=> b!3006050 true))

(assert (=> b!3006050 true))

(declare-fun lambda!112418 () Int)

(declare-fun lambda!112417 () Int)

(assert (=> b!3006050 (not (= lambda!112418 lambda!112417))))

(assert (=> b!3006050 true))

(assert (=> b!3006050 true))

(assert (=> b!3006050 true))

(declare-fun b!3006041 () Bool)

(declare-fun e!1887921 () Bool)

(declare-fun e!1887925 () Bool)

(assert (=> b!3006041 (= e!1887921 e!1887925)))

(declare-fun res!1238923 () Bool)

(assert (=> b!3006041 (=> res!1238923 e!1887925)))

(declare-fun lt!1043035 () Int)

(declare-fun lt!1043029 () Int)

(assert (=> b!3006041 (= res!1238923 (not (= lt!1043035 lt!1043029)))))

(declare-datatypes ((C!18956 0))(
  ( (C!18957 (val!11514 Int)) )
))
(declare-datatypes ((List!35250 0))(
  ( (Nil!35126) (Cons!35126 (h!40546 C!18956) (t!234315 List!35250)) )
))
(declare-fun s!11993 () List!35250)

(declare-fun size!26515 (List!35250) Int)

(assert (=> b!3006041 (= lt!1043029 (size!26515 s!11993))))

(declare-datatypes ((tuple2!34064 0))(
  ( (tuple2!34065 (_1!20164 List!35250) (_2!20164 List!35250)) )
))
(declare-fun lt!1043032 () tuple2!34064)

(assert (=> b!3006041 (= lt!1043035 (size!26515 (_2!20164 lt!1043032)))))

(declare-datatypes ((Regex!9385 0))(
  ( (ElementMatch!9385 (c!494883 C!18956)) (Concat!14706 (regOne!19282 Regex!9385) (regTwo!19282 Regex!9385)) (EmptyExpr!9385) (Star!9385 (reg!9714 Regex!9385)) (EmptyLang!9385) (Union!9385 (regOne!19283 Regex!9385) (regTwo!19283 Regex!9385)) )
))
(declare-fun r!17423 () Regex!9385)

(declare-fun matchR!4267 (Regex!9385 List!35250) Bool)

(assert (=> b!3006041 (matchR!4267 (reg!9714 r!17423) (_1!20164 lt!1043032))))

(declare-datatypes ((Unit!49185 0))(
  ( (Unit!49186) )
))
(declare-fun lt!1043033 () Unit!49185)

(declare-fun lemmaSimplifySound!226 (Regex!9385 List!35250) Unit!49185)

(assert (=> b!3006041 (= lt!1043033 (lemmaSimplifySound!226 (reg!9714 r!17423) (_1!20164 lt!1043032)))))

(declare-fun b!3006042 () Bool)

(declare-fun e!1887928 () Bool)

(assert (=> b!3006042 (= e!1887925 e!1887928)))

(declare-fun res!1238924 () Bool)

(assert (=> b!3006042 (=> res!1238924 e!1887928)))

(declare-fun lt!1043030 () Int)

(assert (=> b!3006042 (= res!1238924 (or (not (= (+ lt!1043030 lt!1043035) lt!1043029)) (not (= lt!1043030 0))))))

(assert (=> b!3006042 (= lt!1043030 (size!26515 (_1!20164 lt!1043032)))))

(declare-fun b!3006043 () Bool)

(declare-fun e!1887927 () Bool)

(declare-fun tp!954720 () Bool)

(assert (=> b!3006043 (= e!1887927 tp!954720)))

(declare-fun b!3006044 () Bool)

(declare-fun isEmpty!19407 (List!35250) Bool)

(assert (=> b!3006044 (= e!1887928 (isEmpty!19407 (_1!20164 lt!1043032)))))

(declare-fun b!3006045 () Bool)

(declare-fun tp!954721 () Bool)

(declare-fun tp!954718 () Bool)

(assert (=> b!3006045 (= e!1887927 (and tp!954721 tp!954718))))

(declare-fun b!3006046 () Bool)

(declare-fun e!1887923 () Bool)

(declare-fun tp_is_empty!16333 () Bool)

(declare-fun tp!954719 () Bool)

(assert (=> b!3006046 (= e!1887923 (and tp_is_empty!16333 tp!954719))))

(declare-fun b!3006047 () Bool)

(declare-fun res!1238929 () Bool)

(assert (=> b!3006047 (=> res!1238929 e!1887921)))

(declare-fun lt!1043025 () Regex!9385)

(assert (=> b!3006047 (= res!1238929 (not (matchR!4267 lt!1043025 (_2!20164 lt!1043032))))))

(declare-fun b!3006048 () Bool)

(declare-fun e!1887926 () Bool)

(declare-fun e!1887919 () Bool)

(assert (=> b!3006048 (= e!1887926 e!1887919)))

(declare-fun res!1238926 () Bool)

(assert (=> b!3006048 (=> res!1238926 e!1887919)))

(assert (=> b!3006048 (= res!1238926 (not (matchR!4267 lt!1043025 s!11993)))))

(declare-fun lt!1043036 () Regex!9385)

(assert (=> b!3006048 (= lt!1043025 (Star!9385 lt!1043036))))

(declare-fun b!3006049 () Bool)

(assert (=> b!3006049 (= e!1887927 tp_is_empty!16333)))

(declare-fun b!3006040 () Bool)

(declare-fun e!1887929 () Bool)

(assert (=> b!3006040 (= e!1887929 e!1887926)))

(declare-fun res!1238927 () Bool)

(assert (=> b!3006040 (=> res!1238927 e!1887926)))

(declare-fun isEmptyLang!475 (Regex!9385) Bool)

(assert (=> b!3006040 (= res!1238927 (isEmptyLang!475 lt!1043036))))

(declare-fun simplify!376 (Regex!9385) Regex!9385)

(assert (=> b!3006040 (= lt!1043036 (simplify!376 (reg!9714 r!17423)))))

(declare-fun res!1238921 () Bool)

(declare-fun e!1887920 () Bool)

(assert (=> start!289664 (=> (not res!1238921) (not e!1887920))))

(declare-fun validRegex!4118 (Regex!9385) Bool)

(assert (=> start!289664 (= res!1238921 (validRegex!4118 r!17423))))

(assert (=> start!289664 e!1887920))

(assert (=> start!289664 e!1887927))

(assert (=> start!289664 e!1887923))

(declare-fun e!1887922 () Bool)

(declare-fun e!1887924 () Bool)

(assert (=> b!3006050 (= e!1887922 e!1887924)))

(declare-fun res!1238928 () Bool)

(assert (=> b!3006050 (=> res!1238928 e!1887924)))

(declare-fun lt!1043028 () Bool)

(assert (=> b!3006050 (= res!1238928 (not lt!1043028))))

(declare-fun Exists!1654 (Int) Bool)

(assert (=> b!3006050 (= (Exists!1654 lambda!112417) (Exists!1654 lambda!112418))))

(declare-fun lt!1043026 () Unit!49185)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!320 (Regex!9385 List!35250) Unit!49185)

(assert (=> b!3006050 (= lt!1043026 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!320 lt!1043036 s!11993))))

(assert (=> b!3006050 (= lt!1043028 (Exists!1654 lambda!112417))))

(declare-datatypes ((Option!6764 0))(
  ( (None!6763) (Some!6763 (v!34897 tuple2!34064)) )
))
(declare-fun lt!1043027 () Option!6764)

(declare-fun isDefined!5315 (Option!6764) Bool)

(assert (=> b!3006050 (= lt!1043028 (isDefined!5315 lt!1043027))))

(declare-fun findConcatSeparation!1158 (Regex!9385 Regex!9385 List!35250 List!35250 List!35250) Option!6764)

(assert (=> b!3006050 (= lt!1043027 (findConcatSeparation!1158 lt!1043036 lt!1043025 Nil!35126 s!11993 s!11993))))

(declare-fun lt!1043031 () Unit!49185)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!936 (Regex!9385 Regex!9385 List!35250) Unit!49185)

(assert (=> b!3006050 (= lt!1043031 (lemmaFindConcatSeparationEquivalentToExists!936 lt!1043036 lt!1043025 s!11993))))

(declare-fun b!3006051 () Bool)

(declare-fun res!1238925 () Bool)

(assert (=> b!3006051 (=> res!1238925 e!1887925)))

(declare-fun ++!8413 (List!35250 List!35250) List!35250)

(assert (=> b!3006051 (= res!1238925 (not (= (++!8413 (_1!20164 lt!1043032) (_2!20164 lt!1043032)) s!11993)))))

(declare-fun b!3006052 () Bool)

(assert (=> b!3006052 (= e!1887920 (not e!1887929))))

(declare-fun res!1238922 () Bool)

(assert (=> b!3006052 (=> res!1238922 e!1887929)))

(declare-fun lt!1043034 () Bool)

(get-info :version)

(assert (=> b!3006052 (= res!1238922 (or lt!1043034 ((_ is Concat!14706) r!17423) ((_ is Union!9385) r!17423) (not ((_ is Star!9385) r!17423))))))

(declare-fun matchRSpec!1522 (Regex!9385 List!35250) Bool)

(assert (=> b!3006052 (= lt!1043034 (matchRSpec!1522 r!17423 s!11993))))

(assert (=> b!3006052 (= lt!1043034 (matchR!4267 r!17423 s!11993))))

(declare-fun lt!1043023 () Unit!49185)

(declare-fun mainMatchTheorem!1522 (Regex!9385 List!35250) Unit!49185)

(assert (=> b!3006052 (= lt!1043023 (mainMatchTheorem!1522 r!17423 s!11993))))

(declare-fun b!3006053 () Bool)

(assert (=> b!3006053 (= e!1887919 e!1887922)))

(declare-fun res!1238930 () Bool)

(assert (=> b!3006053 (=> res!1238930 e!1887922)))

(assert (=> b!3006053 (= res!1238930 (isEmpty!19407 s!11993))))

(assert (=> b!3006053 (matchRSpec!1522 lt!1043025 s!11993)))

(declare-fun lt!1043024 () Unit!49185)

(assert (=> b!3006053 (= lt!1043024 (mainMatchTheorem!1522 lt!1043025 s!11993))))

(declare-fun b!3006054 () Bool)

(assert (=> b!3006054 (= e!1887924 e!1887921)))

(declare-fun res!1238920 () Bool)

(assert (=> b!3006054 (=> res!1238920 e!1887921)))

(assert (=> b!3006054 (= res!1238920 (not (matchR!4267 lt!1043036 (_1!20164 lt!1043032))))))

(declare-fun get!10924 (Option!6764) tuple2!34064)

(assert (=> b!3006054 (= lt!1043032 (get!10924 lt!1043027))))

(declare-fun b!3006055 () Bool)

(declare-fun tp!954716 () Bool)

(declare-fun tp!954717 () Bool)

(assert (=> b!3006055 (= e!1887927 (and tp!954716 tp!954717))))

(assert (= (and start!289664 res!1238921) b!3006052))

(assert (= (and b!3006052 (not res!1238922)) b!3006040))

(assert (= (and b!3006040 (not res!1238927)) b!3006048))

(assert (= (and b!3006048 (not res!1238926)) b!3006053))

(assert (= (and b!3006053 (not res!1238930)) b!3006050))

(assert (= (and b!3006050 (not res!1238928)) b!3006054))

(assert (= (and b!3006054 (not res!1238920)) b!3006047))

(assert (= (and b!3006047 (not res!1238929)) b!3006041))

(assert (= (and b!3006041 (not res!1238923)) b!3006051))

(assert (= (and b!3006051 (not res!1238925)) b!3006042))

(assert (= (and b!3006042 (not res!1238924)) b!3006044))

(assert (= (and start!289664 ((_ is ElementMatch!9385) r!17423)) b!3006049))

(assert (= (and start!289664 ((_ is Concat!14706) r!17423)) b!3006055))

(assert (= (and start!289664 ((_ is Star!9385) r!17423)) b!3006043))

(assert (= (and start!289664 ((_ is Union!9385) r!17423)) b!3006045))

(assert (= (and start!289664 ((_ is Cons!35126) s!11993)) b!3006046))

(declare-fun m!3354585 () Bool)

(assert (=> b!3006048 m!3354585))

(declare-fun m!3354587 () Bool)

(assert (=> b!3006042 m!3354587))

(declare-fun m!3354589 () Bool)

(assert (=> start!289664 m!3354589))

(declare-fun m!3354591 () Bool)

(assert (=> b!3006051 m!3354591))

(declare-fun m!3354593 () Bool)

(assert (=> b!3006052 m!3354593))

(declare-fun m!3354595 () Bool)

(assert (=> b!3006052 m!3354595))

(declare-fun m!3354597 () Bool)

(assert (=> b!3006052 m!3354597))

(declare-fun m!3354599 () Bool)

(assert (=> b!3006041 m!3354599))

(declare-fun m!3354601 () Bool)

(assert (=> b!3006041 m!3354601))

(declare-fun m!3354603 () Bool)

(assert (=> b!3006041 m!3354603))

(declare-fun m!3354605 () Bool)

(assert (=> b!3006041 m!3354605))

(declare-fun m!3354607 () Bool)

(assert (=> b!3006040 m!3354607))

(declare-fun m!3354609 () Bool)

(assert (=> b!3006040 m!3354609))

(declare-fun m!3354611 () Bool)

(assert (=> b!3006044 m!3354611))

(declare-fun m!3354613 () Bool)

(assert (=> b!3006054 m!3354613))

(declare-fun m!3354615 () Bool)

(assert (=> b!3006054 m!3354615))

(declare-fun m!3354617 () Bool)

(assert (=> b!3006053 m!3354617))

(declare-fun m!3354619 () Bool)

(assert (=> b!3006053 m!3354619))

(declare-fun m!3354621 () Bool)

(assert (=> b!3006053 m!3354621))

(declare-fun m!3354623 () Bool)

(assert (=> b!3006050 m!3354623))

(declare-fun m!3354625 () Bool)

(assert (=> b!3006050 m!3354625))

(declare-fun m!3354627 () Bool)

(assert (=> b!3006050 m!3354627))

(assert (=> b!3006050 m!3354623))

(declare-fun m!3354629 () Bool)

(assert (=> b!3006050 m!3354629))

(declare-fun m!3354631 () Bool)

(assert (=> b!3006050 m!3354631))

(declare-fun m!3354633 () Bool)

(assert (=> b!3006050 m!3354633))

(declare-fun m!3354635 () Bool)

(assert (=> b!3006047 m!3354635))

(check-sat (not b!3006048) (not b!3006054) (not b!3006046) (not b!3006041) (not b!3006040) (not b!3006047) (not b!3006045) tp_is_empty!16333 (not b!3006042) (not b!3006050) (not b!3006052) (not b!3006044) (not start!289664) (not b!3006051) (not b!3006055) (not b!3006043) (not b!3006053))
(check-sat)
(get-model)

(declare-fun b!3006081 () Bool)

(declare-fun e!1887940 () List!35250)

(assert (=> b!3006081 (= e!1887940 (Cons!35126 (h!40546 (_1!20164 lt!1043032)) (++!8413 (t!234315 (_1!20164 lt!1043032)) (_2!20164 lt!1043032))))))

(declare-fun d!846808 () Bool)

(declare-fun e!1887941 () Bool)

(assert (=> d!846808 e!1887941))

(declare-fun res!1238941 () Bool)

(assert (=> d!846808 (=> (not res!1238941) (not e!1887941))))

(declare-fun lt!1043042 () List!35250)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4782 (List!35250) (InoxSet C!18956))

(assert (=> d!846808 (= res!1238941 (= (content!4782 lt!1043042) ((_ map or) (content!4782 (_1!20164 lt!1043032)) (content!4782 (_2!20164 lt!1043032)))))))

(assert (=> d!846808 (= lt!1043042 e!1887940)))

(declare-fun c!494889 () Bool)

(assert (=> d!846808 (= c!494889 ((_ is Nil!35126) (_1!20164 lt!1043032)))))

(assert (=> d!846808 (= (++!8413 (_1!20164 lt!1043032) (_2!20164 lt!1043032)) lt!1043042)))

(declare-fun b!3006083 () Bool)

(assert (=> b!3006083 (= e!1887941 (or (not (= (_2!20164 lt!1043032) Nil!35126)) (= lt!1043042 (_1!20164 lt!1043032))))))

(declare-fun b!3006080 () Bool)

(assert (=> b!3006080 (= e!1887940 (_2!20164 lt!1043032))))

(declare-fun b!3006082 () Bool)

(declare-fun res!1238942 () Bool)

(assert (=> b!3006082 (=> (not res!1238942) (not e!1887941))))

(assert (=> b!3006082 (= res!1238942 (= (size!26515 lt!1043042) (+ (size!26515 (_1!20164 lt!1043032)) (size!26515 (_2!20164 lt!1043032)))))))

(assert (= (and d!846808 c!494889) b!3006080))

(assert (= (and d!846808 (not c!494889)) b!3006081))

(assert (= (and d!846808 res!1238941) b!3006082))

(assert (= (and b!3006082 res!1238942) b!3006083))

(declare-fun m!3354647 () Bool)

(assert (=> b!3006081 m!3354647))

(declare-fun m!3354649 () Bool)

(assert (=> d!846808 m!3354649))

(declare-fun m!3354651 () Bool)

(assert (=> d!846808 m!3354651))

(declare-fun m!3354653 () Bool)

(assert (=> d!846808 m!3354653))

(declare-fun m!3354655 () Bool)

(assert (=> b!3006082 m!3354655))

(assert (=> b!3006082 m!3354587))

(assert (=> b!3006082 m!3354601))

(assert (=> b!3006051 d!846808))

(declare-fun d!846816 () Bool)

(assert (=> d!846816 (= (isEmptyLang!475 lt!1043036) ((_ is EmptyLang!9385) lt!1043036))))

(assert (=> b!3006040 d!846816))

(declare-fun b!3006244 () Bool)

(declare-fun e!1888040 () Regex!9385)

(declare-fun lt!1043073 () Regex!9385)

(declare-fun lt!1043077 () Regex!9385)

(assert (=> b!3006244 (= e!1888040 (Concat!14706 lt!1043073 lt!1043077))))

(declare-fun b!3006245 () Bool)

(declare-fun e!1888046 () Bool)

(declare-fun lt!1043078 () Regex!9385)

(declare-fun nullable!3042 (Regex!9385) Bool)

(assert (=> b!3006245 (= e!1888046 (= (nullable!3042 lt!1043078) (nullable!3042 (reg!9714 r!17423))))))

(declare-fun lt!1043075 () Regex!9385)

(declare-fun call!202253 () Bool)

(declare-fun bm!202244 () Bool)

(declare-fun c!494937 () Bool)

(assert (=> bm!202244 (= call!202253 (isEmptyLang!475 (ite c!494937 lt!1043075 lt!1043073)))))

(declare-fun b!3006246 () Bool)

(declare-fun c!494943 () Bool)

(declare-fun e!1888044 () Bool)

(assert (=> b!3006246 (= c!494943 e!1888044)))

(declare-fun res!1239019 () Bool)

(assert (=> b!3006246 (=> res!1239019 e!1888044)))

(declare-fun call!202249 () Bool)

(assert (=> b!3006246 (= res!1239019 call!202249)))

(declare-fun lt!1043076 () Regex!9385)

(declare-fun call!202251 () Regex!9385)

(assert (=> b!3006246 (= lt!1043076 call!202251)))

(declare-fun e!1888038 () Regex!9385)

(declare-fun e!1888042 () Regex!9385)

(assert (=> b!3006246 (= e!1888038 e!1888042)))

(declare-fun bm!202245 () Bool)

(declare-fun call!202254 () Regex!9385)

(assert (=> bm!202245 (= call!202254 call!202251)))

(declare-fun b!3006247 () Bool)

(declare-fun c!494934 () Bool)

(declare-fun isEmptyExpr!485 (Regex!9385) Bool)

(assert (=> b!3006247 (= c!494934 (isEmptyExpr!485 lt!1043073))))

(declare-fun e!1888039 () Regex!9385)

(declare-fun e!1888041 () Regex!9385)

(assert (=> b!3006247 (= e!1888039 e!1888041)))

(declare-fun bm!202246 () Bool)

(declare-fun c!494938 () Bool)

(assert (=> bm!202246 (= call!202251 (simplify!376 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))))))

(declare-fun b!3006248 () Bool)

(declare-fun e!1888037 () Regex!9385)

(declare-fun lt!1043074 () Regex!9385)

(assert (=> b!3006248 (= e!1888037 (Union!9385 lt!1043074 lt!1043075))))

(declare-fun b!3006249 () Bool)

(assert (=> b!3006249 (= e!1888042 EmptyExpr!9385)))

(declare-fun b!3006250 () Bool)

(assert (=> b!3006250 (= c!494937 ((_ is Union!9385) (reg!9714 r!17423)))))

(declare-fun e!1888035 () Regex!9385)

(assert (=> b!3006250 (= e!1888038 e!1888035)))

(declare-fun b!3006251 () Bool)

(declare-fun e!1888033 () Regex!9385)

(assert (=> b!3006251 (= e!1888035 e!1888033)))

(declare-fun call!202252 () Regex!9385)

(assert (=> b!3006251 (= lt!1043074 call!202252)))

(assert (=> b!3006251 (= lt!1043075 call!202254)))

(declare-fun c!494933 () Bool)

(declare-fun call!202250 () Bool)

(assert (=> b!3006251 (= c!494933 call!202250)))

(declare-fun bm!202247 () Bool)

(assert (=> bm!202247 (= call!202249 (isEmptyLang!475 (ite c!494938 lt!1043076 (ite c!494937 lt!1043074 lt!1043077))))))

(declare-fun b!3006252 () Bool)

(assert (=> b!3006252 (= e!1888040 lt!1043073)))

(declare-fun b!3006253 () Bool)

(assert (=> b!3006253 (= e!1888041 lt!1043077)))

(declare-fun b!3006254 () Bool)

(declare-fun c!494935 () Bool)

(assert (=> b!3006254 (= c!494935 call!202253)))

(assert (=> b!3006254 (= e!1888033 e!1888037)))

(declare-fun b!3006255 () Bool)

(declare-fun e!1888043 () Regex!9385)

(assert (=> b!3006255 (= e!1888043 e!1888038)))

(assert (=> b!3006255 (= c!494938 ((_ is Star!9385) (reg!9714 r!17423)))))

(declare-fun b!3006256 () Bool)

(declare-fun e!1888036 () Regex!9385)

(declare-fun e!1888034 () Regex!9385)

(assert (=> b!3006256 (= e!1888036 e!1888034)))

(declare-fun c!494941 () Bool)

(assert (=> b!3006256 (= c!494941 ((_ is ElementMatch!9385) (reg!9714 r!17423)))))

(declare-fun b!3006257 () Bool)

(declare-fun e!1888045 () Bool)

(assert (=> b!3006257 (= e!1888045 call!202250)))

(declare-fun b!3006258 () Bool)

(assert (=> b!3006258 (= e!1888039 EmptyLang!9385)))

(declare-fun bm!202248 () Bool)

(assert (=> bm!202248 (= call!202252 (simplify!376 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))))))

(declare-fun bm!202249 () Bool)

(assert (=> bm!202249 (= call!202250 call!202249)))

(declare-fun b!3006259 () Bool)

(assert (=> b!3006259 (= e!1888033 lt!1043075)))

(declare-fun b!3006260 () Bool)

(declare-fun c!494942 () Bool)

(assert (=> b!3006260 (= c!494942 ((_ is EmptyExpr!9385) (reg!9714 r!17423)))))

(assert (=> b!3006260 (= e!1888034 e!1888043)))

(declare-fun b!3006261 () Bool)

(assert (=> b!3006261 (= e!1888043 EmptyExpr!9385)))

(declare-fun b!3006262 () Bool)

(assert (=> b!3006262 (= e!1888037 lt!1043074)))

(declare-fun b!3006263 () Bool)

(assert (=> b!3006263 (= e!1888041 e!1888040)))

(declare-fun c!494939 () Bool)

(declare-fun call!202255 () Bool)

(assert (=> b!3006263 (= c!494939 call!202255)))

(declare-fun b!3006264 () Bool)

(assert (=> b!3006264 (= e!1888034 (reg!9714 r!17423))))

(declare-fun b!3006265 () Bool)

(assert (=> b!3006265 (= e!1888035 e!1888039)))

(assert (=> b!3006265 (= lt!1043073 call!202254)))

(assert (=> b!3006265 (= lt!1043077 call!202252)))

(declare-fun res!1239017 () Bool)

(assert (=> b!3006265 (= res!1239017 call!202253)))

(assert (=> b!3006265 (=> res!1239017 e!1888045)))

(declare-fun c!494936 () Bool)

(assert (=> b!3006265 (= c!494936 e!1888045)))

(declare-fun b!3006266 () Bool)

(assert (=> b!3006266 (= e!1888044 call!202255)))

(declare-fun bm!202250 () Bool)

(assert (=> bm!202250 (= call!202255 (isEmptyExpr!485 (ite c!494938 lt!1043076 lt!1043077)))))

(declare-fun b!3006267 () Bool)

(assert (=> b!3006267 (= e!1888042 (Star!9385 lt!1043076))))

(declare-fun d!846818 () Bool)

(assert (=> d!846818 e!1888046))

(declare-fun res!1239018 () Bool)

(assert (=> d!846818 (=> (not res!1239018) (not e!1888046))))

(assert (=> d!846818 (= res!1239018 (validRegex!4118 lt!1043078))))

(assert (=> d!846818 (= lt!1043078 e!1888036)))

(declare-fun c!494940 () Bool)

(assert (=> d!846818 (= c!494940 ((_ is EmptyLang!9385) (reg!9714 r!17423)))))

(assert (=> d!846818 (validRegex!4118 (reg!9714 r!17423))))

(assert (=> d!846818 (= (simplify!376 (reg!9714 r!17423)) lt!1043078)))

(declare-fun b!3006268 () Bool)

(assert (=> b!3006268 (= e!1888036 EmptyLang!9385)))

(assert (= (and d!846818 c!494940) b!3006268))

(assert (= (and d!846818 (not c!494940)) b!3006256))

(assert (= (and b!3006256 c!494941) b!3006264))

(assert (= (and b!3006256 (not c!494941)) b!3006260))

(assert (= (and b!3006260 c!494942) b!3006261))

(assert (= (and b!3006260 (not c!494942)) b!3006255))

(assert (= (and b!3006255 c!494938) b!3006246))

(assert (= (and b!3006255 (not c!494938)) b!3006250))

(assert (= (and b!3006246 (not res!1239019)) b!3006266))

(assert (= (and b!3006246 c!494943) b!3006249))

(assert (= (and b!3006246 (not c!494943)) b!3006267))

(assert (= (and b!3006250 c!494937) b!3006251))

(assert (= (and b!3006250 (not c!494937)) b!3006265))

(assert (= (and b!3006251 c!494933) b!3006259))

(assert (= (and b!3006251 (not c!494933)) b!3006254))

(assert (= (and b!3006254 c!494935) b!3006262))

(assert (= (and b!3006254 (not c!494935)) b!3006248))

(assert (= (and b!3006265 (not res!1239017)) b!3006257))

(assert (= (and b!3006265 c!494936) b!3006258))

(assert (= (and b!3006265 (not c!494936)) b!3006247))

(assert (= (and b!3006247 c!494934) b!3006253))

(assert (= (and b!3006247 (not c!494934)) b!3006263))

(assert (= (and b!3006263 c!494939) b!3006252))

(assert (= (and b!3006263 (not c!494939)) b!3006244))

(assert (= (or b!3006251 b!3006265) bm!202248))

(assert (= (or b!3006251 b!3006265) bm!202245))

(assert (= (or b!3006251 b!3006257) bm!202249))

(assert (= (or b!3006254 b!3006265) bm!202244))

(assert (= (or b!3006266 b!3006263) bm!202250))

(assert (= (or b!3006246 bm!202245) bm!202246))

(assert (= (or b!3006246 bm!202249) bm!202247))

(assert (= (and d!846818 res!1239018) b!3006245))

(declare-fun m!3354719 () Bool)

(assert (=> bm!202246 m!3354719))

(declare-fun m!3354721 () Bool)

(assert (=> bm!202244 m!3354721))

(declare-fun m!3354723 () Bool)

(assert (=> bm!202247 m!3354723))

(declare-fun m!3354725 () Bool)

(assert (=> bm!202250 m!3354725))

(declare-fun m!3354727 () Bool)

(assert (=> b!3006247 m!3354727))

(declare-fun m!3354729 () Bool)

(assert (=> d!846818 m!3354729))

(declare-fun m!3354731 () Bool)

(assert (=> d!846818 m!3354731))

(declare-fun m!3354733 () Bool)

(assert (=> b!3006245 m!3354733))

(declare-fun m!3354735 () Bool)

(assert (=> b!3006245 m!3354735))

(declare-fun m!3354737 () Bool)

(assert (=> bm!202248 m!3354737))

(assert (=> b!3006040 d!846818))

(declare-fun d!846836 () Bool)

(declare-fun choose!17848 (Int) Bool)

(assert (=> d!846836 (= (Exists!1654 lambda!112417) (choose!17848 lambda!112417))))

(declare-fun bs!528758 () Bool)

(assert (= bs!528758 d!846836))

(declare-fun m!3354739 () Bool)

(assert (=> bs!528758 m!3354739))

(assert (=> b!3006050 d!846836))

(declare-fun d!846838 () Bool)

(declare-fun isEmpty!19409 (Option!6764) Bool)

(assert (=> d!846838 (= (isDefined!5315 lt!1043027) (not (isEmpty!19409 lt!1043027)))))

(declare-fun bs!528759 () Bool)

(assert (= bs!528759 d!846838))

(declare-fun m!3354741 () Bool)

(assert (=> bs!528759 m!3354741))

(assert (=> b!3006050 d!846838))

(declare-fun d!846840 () Bool)

(assert (=> d!846840 (= (Exists!1654 lambda!112418) (choose!17848 lambda!112418))))

(declare-fun bs!528760 () Bool)

(assert (= bs!528760 d!846840))

(declare-fun m!3354743 () Bool)

(assert (=> bs!528760 m!3354743))

(assert (=> b!3006050 d!846840))

(declare-fun bs!528769 () Bool)

(declare-fun d!846842 () Bool)

(assert (= bs!528769 (and d!846842 b!3006050)))

(declare-fun lambda!112438 () Int)

(assert (=> bs!528769 (= (= (Star!9385 lt!1043036) lt!1043025) (= lambda!112438 lambda!112417))))

(assert (=> bs!528769 (not (= lambda!112438 lambda!112418))))

(assert (=> d!846842 true))

(assert (=> d!846842 true))

(declare-fun lambda!112439 () Int)

(assert (=> bs!528769 (not (= lambda!112439 lambda!112417))))

(assert (=> bs!528769 (= (= (Star!9385 lt!1043036) lt!1043025) (= lambda!112439 lambda!112418))))

(declare-fun bs!528770 () Bool)

(assert (= bs!528770 d!846842))

(assert (=> bs!528770 (not (= lambda!112439 lambda!112438))))

(assert (=> d!846842 true))

(assert (=> d!846842 true))

(assert (=> d!846842 (= (Exists!1654 lambda!112438) (Exists!1654 lambda!112439))))

(declare-fun lt!1043097 () Unit!49185)

(declare-fun choose!17849 (Regex!9385 List!35250) Unit!49185)

(assert (=> d!846842 (= lt!1043097 (choose!17849 lt!1043036 s!11993))))

(assert (=> d!846842 (validRegex!4118 lt!1043036)))

(assert (=> d!846842 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!320 lt!1043036 s!11993) lt!1043097)))

(declare-fun m!3354765 () Bool)

(assert (=> bs!528770 m!3354765))

(declare-fun m!3354767 () Bool)

(assert (=> bs!528770 m!3354767))

(declare-fun m!3354769 () Bool)

(assert (=> bs!528770 m!3354769))

(declare-fun m!3354771 () Bool)

(assert (=> bs!528770 m!3354771))

(assert (=> b!3006050 d!846842))

(declare-fun b!3006527 () Bool)

(declare-fun e!1888179 () Option!6764)

(assert (=> b!3006527 (= e!1888179 (Some!6763 (tuple2!34065 Nil!35126 s!11993)))))

(declare-fun b!3006528 () Bool)

(declare-fun e!1888182 () Bool)

(assert (=> b!3006528 (= e!1888182 (matchR!4267 lt!1043025 s!11993))))

(declare-fun d!846852 () Bool)

(declare-fun e!1888180 () Bool)

(assert (=> d!846852 e!1888180))

(declare-fun res!1239103 () Bool)

(assert (=> d!846852 (=> res!1239103 e!1888180)))

(declare-fun e!1888181 () Bool)

(assert (=> d!846852 (= res!1239103 e!1888181)))

(declare-fun res!1239107 () Bool)

(assert (=> d!846852 (=> (not res!1239107) (not e!1888181))))

(declare-fun lt!1043122 () Option!6764)

(assert (=> d!846852 (= res!1239107 (isDefined!5315 lt!1043122))))

(assert (=> d!846852 (= lt!1043122 e!1888179)))

(declare-fun c!495015 () Bool)

(assert (=> d!846852 (= c!495015 e!1888182)))

(declare-fun res!1239104 () Bool)

(assert (=> d!846852 (=> (not res!1239104) (not e!1888182))))

(assert (=> d!846852 (= res!1239104 (matchR!4267 lt!1043036 Nil!35126))))

(assert (=> d!846852 (validRegex!4118 lt!1043036)))

(assert (=> d!846852 (= (findConcatSeparation!1158 lt!1043036 lt!1043025 Nil!35126 s!11993 s!11993) lt!1043122)))

(declare-fun b!3006529 () Bool)

(declare-fun e!1888178 () Option!6764)

(assert (=> b!3006529 (= e!1888178 None!6763)))

(declare-fun b!3006530 () Bool)

(declare-fun lt!1043123 () Unit!49185)

(declare-fun lt!1043124 () Unit!49185)

(assert (=> b!3006530 (= lt!1043123 lt!1043124)))

(assert (=> b!3006530 (= (++!8413 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) (t!234315 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1022 (List!35250 C!18956 List!35250 List!35250) Unit!49185)

(assert (=> b!3006530 (= lt!1043124 (lemmaMoveElementToOtherListKeepsConcatEq!1022 Nil!35126 (h!40546 s!11993) (t!234315 s!11993) s!11993))))

(assert (=> b!3006530 (= e!1888178 (findConcatSeparation!1158 lt!1043036 lt!1043025 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) (t!234315 s!11993) s!11993))))

(declare-fun b!3006531 () Bool)

(declare-fun res!1239105 () Bool)

(assert (=> b!3006531 (=> (not res!1239105) (not e!1888181))))

(assert (=> b!3006531 (= res!1239105 (matchR!4267 lt!1043036 (_1!20164 (get!10924 lt!1043122))))))

(declare-fun b!3006532 () Bool)

(declare-fun res!1239106 () Bool)

(assert (=> b!3006532 (=> (not res!1239106) (not e!1888181))))

(assert (=> b!3006532 (= res!1239106 (matchR!4267 lt!1043025 (_2!20164 (get!10924 lt!1043122))))))

(declare-fun b!3006533 () Bool)

(assert (=> b!3006533 (= e!1888179 e!1888178)))

(declare-fun c!495014 () Bool)

(assert (=> b!3006533 (= c!495014 ((_ is Nil!35126) s!11993))))

(declare-fun b!3006534 () Bool)

(assert (=> b!3006534 (= e!1888181 (= (++!8413 (_1!20164 (get!10924 lt!1043122)) (_2!20164 (get!10924 lt!1043122))) s!11993))))

(declare-fun b!3006535 () Bool)

(assert (=> b!3006535 (= e!1888180 (not (isDefined!5315 lt!1043122)))))

(assert (= (and d!846852 res!1239104) b!3006528))

(assert (= (and d!846852 c!495015) b!3006527))

(assert (= (and d!846852 (not c!495015)) b!3006533))

(assert (= (and b!3006533 c!495014) b!3006529))

(assert (= (and b!3006533 (not c!495014)) b!3006530))

(assert (= (and d!846852 res!1239107) b!3006531))

(assert (= (and b!3006531 res!1239105) b!3006532))

(assert (= (and b!3006532 res!1239106) b!3006534))

(assert (= (and d!846852 (not res!1239103)) b!3006535))

(declare-fun m!3354829 () Bool)

(assert (=> b!3006530 m!3354829))

(assert (=> b!3006530 m!3354829))

(declare-fun m!3354831 () Bool)

(assert (=> b!3006530 m!3354831))

(declare-fun m!3354833 () Bool)

(assert (=> b!3006530 m!3354833))

(assert (=> b!3006530 m!3354829))

(declare-fun m!3354835 () Bool)

(assert (=> b!3006530 m!3354835))

(declare-fun m!3354837 () Bool)

(assert (=> b!3006535 m!3354837))

(declare-fun m!3354839 () Bool)

(assert (=> b!3006532 m!3354839))

(declare-fun m!3354841 () Bool)

(assert (=> b!3006532 m!3354841))

(assert (=> b!3006528 m!3354585))

(assert (=> b!3006531 m!3354839))

(declare-fun m!3354843 () Bool)

(assert (=> b!3006531 m!3354843))

(assert (=> d!846852 m!3354837))

(declare-fun m!3354845 () Bool)

(assert (=> d!846852 m!3354845))

(assert (=> d!846852 m!3354771))

(assert (=> b!3006534 m!3354839))

(declare-fun m!3354847 () Bool)

(assert (=> b!3006534 m!3354847))

(assert (=> b!3006050 d!846852))

(declare-fun bs!528784 () Bool)

(declare-fun d!846876 () Bool)

(assert (= bs!528784 (and d!846876 b!3006050)))

(declare-fun lambda!112444 () Int)

(assert (=> bs!528784 (= lambda!112444 lambda!112417)))

(assert (=> bs!528784 (not (= lambda!112444 lambda!112418))))

(declare-fun bs!528785 () Bool)

(assert (= bs!528785 (and d!846876 d!846842)))

(assert (=> bs!528785 (= (= lt!1043025 (Star!9385 lt!1043036)) (= lambda!112444 lambda!112438))))

(assert (=> bs!528785 (not (= lambda!112444 lambda!112439))))

(assert (=> d!846876 true))

(assert (=> d!846876 true))

(assert (=> d!846876 true))

(assert (=> d!846876 (= (isDefined!5315 (findConcatSeparation!1158 lt!1043036 lt!1043025 Nil!35126 s!11993 s!11993)) (Exists!1654 lambda!112444))))

(declare-fun lt!1043127 () Unit!49185)

(declare-fun choose!17850 (Regex!9385 Regex!9385 List!35250) Unit!49185)

(assert (=> d!846876 (= lt!1043127 (choose!17850 lt!1043036 lt!1043025 s!11993))))

(assert (=> d!846876 (validRegex!4118 lt!1043036)))

(assert (=> d!846876 (= (lemmaFindConcatSeparationEquivalentToExists!936 lt!1043036 lt!1043025 s!11993) lt!1043127)))

(declare-fun bs!528786 () Bool)

(assert (= bs!528786 d!846876))

(assert (=> bs!528786 m!3354629))

(assert (=> bs!528786 m!3354771))

(declare-fun m!3354849 () Bool)

(assert (=> bs!528786 m!3354849))

(declare-fun m!3354851 () Bool)

(assert (=> bs!528786 m!3354851))

(assert (=> bs!528786 m!3354629))

(declare-fun m!3354853 () Bool)

(assert (=> bs!528786 m!3354853))

(assert (=> b!3006050 d!846876))

(declare-fun bs!528787 () Bool)

(declare-fun b!3006577 () Bool)

(assert (= bs!528787 (and b!3006577 b!3006050)))

(declare-fun lambda!112449 () Int)

(assert (=> bs!528787 (not (= lambda!112449 lambda!112417))))

(declare-fun bs!528788 () Bool)

(assert (= bs!528788 (and b!3006577 d!846842)))

(assert (=> bs!528788 (not (= lambda!112449 lambda!112438))))

(assert (=> bs!528787 (= (and (= (reg!9714 r!17423) lt!1043036) (= r!17423 lt!1043025)) (= lambda!112449 lambda!112418))))

(assert (=> bs!528788 (= (and (= (reg!9714 r!17423) lt!1043036) (= r!17423 (Star!9385 lt!1043036))) (= lambda!112449 lambda!112439))))

(declare-fun bs!528789 () Bool)

(assert (= bs!528789 (and b!3006577 d!846876)))

(assert (=> bs!528789 (not (= lambda!112449 lambda!112444))))

(assert (=> b!3006577 true))

(assert (=> b!3006577 true))

(declare-fun bs!528790 () Bool)

(declare-fun b!3006573 () Bool)

(assert (= bs!528790 (and b!3006573 b!3006577)))

(declare-fun lambda!112450 () Int)

(assert (=> bs!528790 (not (= lambda!112450 lambda!112449))))

(declare-fun bs!528791 () Bool)

(assert (= bs!528791 (and b!3006573 b!3006050)))

(assert (=> bs!528791 (not (= lambda!112450 lambda!112417))))

(declare-fun bs!528792 () Bool)

(assert (= bs!528792 (and b!3006573 d!846842)))

(assert (=> bs!528792 (not (= lambda!112450 lambda!112438))))

(assert (=> bs!528791 (not (= lambda!112450 lambda!112418))))

(assert (=> bs!528792 (not (= lambda!112450 lambda!112439))))

(declare-fun bs!528793 () Bool)

(assert (= bs!528793 (and b!3006573 d!846876)))

(assert (=> bs!528793 (not (= lambda!112450 lambda!112444))))

(assert (=> b!3006573 true))

(assert (=> b!3006573 true))

(declare-fun b!3006572 () Bool)

(declare-fun e!1888204 () Bool)

(declare-fun e!1888209 () Bool)

(assert (=> b!3006572 (= e!1888204 e!1888209)))

(declare-fun c!495024 () Bool)

(assert (=> b!3006572 (= c!495024 ((_ is Star!9385) r!17423))))

(declare-fun call!202293 () Bool)

(assert (=> b!3006573 (= e!1888209 call!202293)))

(declare-fun b!3006574 () Bool)

(declare-fun c!495025 () Bool)

(assert (=> b!3006574 (= c!495025 ((_ is ElementMatch!9385) r!17423))))

(declare-fun e!1888207 () Bool)

(declare-fun e!1888208 () Bool)

(assert (=> b!3006574 (= e!1888207 e!1888208)))

(declare-fun b!3006575 () Bool)

(assert (=> b!3006575 (= e!1888208 (= s!11993 (Cons!35126 (c!494883 r!17423) Nil!35126)))))

(declare-fun b!3006576 () Bool)

(declare-fun res!1239129 () Bool)

(declare-fun e!1888203 () Bool)

(assert (=> b!3006576 (=> res!1239129 e!1888203)))

(declare-fun call!202294 () Bool)

(assert (=> b!3006576 (= res!1239129 call!202294)))

(assert (=> b!3006576 (= e!1888209 e!1888203)))

(assert (=> b!3006577 (= e!1888203 call!202293)))

(declare-fun b!3006578 () Bool)

(declare-fun e!1888205 () Bool)

(assert (=> b!3006578 (= e!1888204 e!1888205)))

(declare-fun res!1239128 () Bool)

(assert (=> b!3006578 (= res!1239128 (matchRSpec!1522 (regOne!19283 r!17423) s!11993))))

(assert (=> b!3006578 (=> res!1239128 e!1888205)))

(declare-fun b!3006579 () Bool)

(declare-fun e!1888206 () Bool)

(assert (=> b!3006579 (= e!1888206 call!202294)))

(declare-fun b!3006580 () Bool)

(assert (=> b!3006580 (= e!1888206 e!1888207)))

(declare-fun res!1239130 () Bool)

(assert (=> b!3006580 (= res!1239130 (not ((_ is EmptyLang!9385) r!17423)))))

(assert (=> b!3006580 (=> (not res!1239130) (not e!1888207))))

(declare-fun b!3006581 () Bool)

(declare-fun c!495027 () Bool)

(assert (=> b!3006581 (= c!495027 ((_ is Union!9385) r!17423))))

(assert (=> b!3006581 (= e!1888208 e!1888204)))

(declare-fun bm!202288 () Bool)

(assert (=> bm!202288 (= call!202293 (Exists!1654 (ite c!495024 lambda!112449 lambda!112450)))))

(declare-fun d!846878 () Bool)

(declare-fun c!495026 () Bool)

(assert (=> d!846878 (= c!495026 ((_ is EmptyExpr!9385) r!17423))))

(assert (=> d!846878 (= (matchRSpec!1522 r!17423 s!11993) e!1888206)))

(declare-fun b!3006582 () Bool)

(assert (=> b!3006582 (= e!1888205 (matchRSpec!1522 (regTwo!19283 r!17423) s!11993))))

(declare-fun bm!202289 () Bool)

(assert (=> bm!202289 (= call!202294 (isEmpty!19407 s!11993))))

(assert (= (and d!846878 c!495026) b!3006579))

(assert (= (and d!846878 (not c!495026)) b!3006580))

(assert (= (and b!3006580 res!1239130) b!3006574))

(assert (= (and b!3006574 c!495025) b!3006575))

(assert (= (and b!3006574 (not c!495025)) b!3006581))

(assert (= (and b!3006581 c!495027) b!3006578))

(assert (= (and b!3006581 (not c!495027)) b!3006572))

(assert (= (and b!3006578 (not res!1239128)) b!3006582))

(assert (= (and b!3006572 c!495024) b!3006576))

(assert (= (and b!3006572 (not c!495024)) b!3006573))

(assert (= (and b!3006576 (not res!1239129)) b!3006577))

(assert (= (or b!3006577 b!3006573) bm!202288))

(assert (= (or b!3006579 b!3006576) bm!202289))

(declare-fun m!3354855 () Bool)

(assert (=> b!3006578 m!3354855))

(declare-fun m!3354857 () Bool)

(assert (=> bm!202288 m!3354857))

(declare-fun m!3354859 () Bool)

(assert (=> b!3006582 m!3354859))

(assert (=> bm!202289 m!3354617))

(assert (=> b!3006052 d!846878))

(declare-fun b!3006611 () Bool)

(declare-fun e!1888230 () Bool)

(declare-fun lt!1043130 () Bool)

(declare-fun call!202297 () Bool)

(assert (=> b!3006611 (= e!1888230 (= lt!1043130 call!202297))))

(declare-fun b!3006612 () Bool)

(declare-fun res!1239150 () Bool)

(declare-fun e!1888226 () Bool)

(assert (=> b!3006612 (=> (not res!1239150) (not e!1888226))))

(assert (=> b!3006612 (= res!1239150 (not call!202297))))

(declare-fun b!3006613 () Bool)

(declare-fun res!1239148 () Bool)

(declare-fun e!1888224 () Bool)

(assert (=> b!3006613 (=> res!1239148 e!1888224)))

(assert (=> b!3006613 (= res!1239148 e!1888226)))

(declare-fun res!1239154 () Bool)

(assert (=> b!3006613 (=> (not res!1239154) (not e!1888226))))

(assert (=> b!3006613 (= res!1239154 lt!1043130)))

(declare-fun b!3006614 () Bool)

(declare-fun e!1888225 () Bool)

(assert (=> b!3006614 (= e!1888230 e!1888225)))

(declare-fun c!495035 () Bool)

(assert (=> b!3006614 (= c!495035 ((_ is EmptyLang!9385) r!17423))))

(declare-fun bm!202292 () Bool)

(assert (=> bm!202292 (= call!202297 (isEmpty!19407 s!11993))))

(declare-fun b!3006615 () Bool)

(declare-fun res!1239147 () Bool)

(declare-fun e!1888229 () Bool)

(assert (=> b!3006615 (=> res!1239147 e!1888229)))

(declare-fun tail!4925 (List!35250) List!35250)

(assert (=> b!3006615 (= res!1239147 (not (isEmpty!19407 (tail!4925 s!11993))))))

(declare-fun b!3006616 () Bool)

(assert (=> b!3006616 (= e!1888225 (not lt!1043130))))

(declare-fun b!3006617 () Bool)

(declare-fun e!1888228 () Bool)

(assert (=> b!3006617 (= e!1888228 e!1888229)))

(declare-fun res!1239152 () Bool)

(assert (=> b!3006617 (=> res!1239152 e!1888229)))

(assert (=> b!3006617 (= res!1239152 call!202297)))

(declare-fun b!3006618 () Bool)

(declare-fun e!1888227 () Bool)

(assert (=> b!3006618 (= e!1888227 (nullable!3042 r!17423))))

(declare-fun d!846880 () Bool)

(assert (=> d!846880 e!1888230))

(declare-fun c!495036 () Bool)

(assert (=> d!846880 (= c!495036 ((_ is EmptyExpr!9385) r!17423))))

(assert (=> d!846880 (= lt!1043130 e!1888227)))

(declare-fun c!495034 () Bool)

(assert (=> d!846880 (= c!495034 (isEmpty!19407 s!11993))))

(assert (=> d!846880 (validRegex!4118 r!17423)))

(assert (=> d!846880 (= (matchR!4267 r!17423 s!11993) lt!1043130)))

(declare-fun b!3006619 () Bool)

(declare-fun res!1239153 () Bool)

(assert (=> b!3006619 (=> (not res!1239153) (not e!1888226))))

(assert (=> b!3006619 (= res!1239153 (isEmpty!19407 (tail!4925 s!11993)))))

(declare-fun b!3006620 () Bool)

(assert (=> b!3006620 (= e!1888224 e!1888228)))

(declare-fun res!1239149 () Bool)

(assert (=> b!3006620 (=> (not res!1239149) (not e!1888228))))

(assert (=> b!3006620 (= res!1239149 (not lt!1043130))))

(declare-fun b!3006621 () Bool)

(declare-fun res!1239151 () Bool)

(assert (=> b!3006621 (=> res!1239151 e!1888224)))

(assert (=> b!3006621 (= res!1239151 (not ((_ is ElementMatch!9385) r!17423)))))

(assert (=> b!3006621 (= e!1888225 e!1888224)))

(declare-fun b!3006622 () Bool)

(declare-fun head!6699 (List!35250) C!18956)

(assert (=> b!3006622 (= e!1888226 (= (head!6699 s!11993) (c!494883 r!17423)))))

(declare-fun b!3006623 () Bool)

(declare-fun derivativeStep!2640 (Regex!9385 C!18956) Regex!9385)

(assert (=> b!3006623 (= e!1888227 (matchR!4267 (derivativeStep!2640 r!17423 (head!6699 s!11993)) (tail!4925 s!11993)))))

(declare-fun b!3006624 () Bool)

(assert (=> b!3006624 (= e!1888229 (not (= (head!6699 s!11993) (c!494883 r!17423))))))

(assert (= (and d!846880 c!495034) b!3006618))

(assert (= (and d!846880 (not c!495034)) b!3006623))

(assert (= (and d!846880 c!495036) b!3006611))

(assert (= (and d!846880 (not c!495036)) b!3006614))

(assert (= (and b!3006614 c!495035) b!3006616))

(assert (= (and b!3006614 (not c!495035)) b!3006621))

(assert (= (and b!3006621 (not res!1239151)) b!3006613))

(assert (= (and b!3006613 res!1239154) b!3006612))

(assert (= (and b!3006612 res!1239150) b!3006619))

(assert (= (and b!3006619 res!1239153) b!3006622))

(assert (= (and b!3006613 (not res!1239148)) b!3006620))

(assert (= (and b!3006620 res!1239149) b!3006617))

(assert (= (and b!3006617 (not res!1239152)) b!3006615))

(assert (= (and b!3006615 (not res!1239147)) b!3006624))

(assert (= (or b!3006611 b!3006612 b!3006617) bm!202292))

(declare-fun m!3354861 () Bool)

(assert (=> b!3006624 m!3354861))

(assert (=> b!3006622 m!3354861))

(assert (=> b!3006623 m!3354861))

(assert (=> b!3006623 m!3354861))

(declare-fun m!3354863 () Bool)

(assert (=> b!3006623 m!3354863))

(declare-fun m!3354865 () Bool)

(assert (=> b!3006623 m!3354865))

(assert (=> b!3006623 m!3354863))

(assert (=> b!3006623 m!3354865))

(declare-fun m!3354867 () Bool)

(assert (=> b!3006623 m!3354867))

(assert (=> bm!202292 m!3354617))

(declare-fun m!3354869 () Bool)

(assert (=> b!3006618 m!3354869))

(assert (=> d!846880 m!3354617))

(assert (=> d!846880 m!3354589))

(assert (=> b!3006615 m!3354865))

(assert (=> b!3006615 m!3354865))

(declare-fun m!3354871 () Bool)

(assert (=> b!3006615 m!3354871))

(assert (=> b!3006619 m!3354865))

(assert (=> b!3006619 m!3354865))

(assert (=> b!3006619 m!3354871))

(assert (=> b!3006052 d!846880))

(declare-fun d!846882 () Bool)

(assert (=> d!846882 (= (matchR!4267 r!17423 s!11993) (matchRSpec!1522 r!17423 s!11993))))

(declare-fun lt!1043133 () Unit!49185)

(declare-fun choose!17852 (Regex!9385 List!35250) Unit!49185)

(assert (=> d!846882 (= lt!1043133 (choose!17852 r!17423 s!11993))))

(assert (=> d!846882 (validRegex!4118 r!17423)))

(assert (=> d!846882 (= (mainMatchTheorem!1522 r!17423 s!11993) lt!1043133)))

(declare-fun bs!528794 () Bool)

(assert (= bs!528794 d!846882))

(assert (=> bs!528794 m!3354595))

(assert (=> bs!528794 m!3354593))

(declare-fun m!3354873 () Bool)

(assert (=> bs!528794 m!3354873))

(assert (=> bs!528794 m!3354589))

(assert (=> b!3006052 d!846882))

(declare-fun d!846884 () Bool)

(declare-fun lt!1043136 () Int)

(assert (=> d!846884 (>= lt!1043136 0)))

(declare-fun e!1888233 () Int)

(assert (=> d!846884 (= lt!1043136 e!1888233)))

(declare-fun c!495039 () Bool)

(assert (=> d!846884 (= c!495039 ((_ is Nil!35126) s!11993))))

(assert (=> d!846884 (= (size!26515 s!11993) lt!1043136)))

(declare-fun b!3006629 () Bool)

(assert (=> b!3006629 (= e!1888233 0)))

(declare-fun b!3006630 () Bool)

(assert (=> b!3006630 (= e!1888233 (+ 1 (size!26515 (t!234315 s!11993))))))

(assert (= (and d!846884 c!495039) b!3006629))

(assert (= (and d!846884 (not c!495039)) b!3006630))

(declare-fun m!3354875 () Bool)

(assert (=> b!3006630 m!3354875))

(assert (=> b!3006041 d!846884))

(declare-fun d!846886 () Bool)

(declare-fun lt!1043137 () Int)

(assert (=> d!846886 (>= lt!1043137 0)))

(declare-fun e!1888234 () Int)

(assert (=> d!846886 (= lt!1043137 e!1888234)))

(declare-fun c!495040 () Bool)

(assert (=> d!846886 (= c!495040 ((_ is Nil!35126) (_2!20164 lt!1043032)))))

(assert (=> d!846886 (= (size!26515 (_2!20164 lt!1043032)) lt!1043137)))

(declare-fun b!3006631 () Bool)

(assert (=> b!3006631 (= e!1888234 0)))

(declare-fun b!3006632 () Bool)

(assert (=> b!3006632 (= e!1888234 (+ 1 (size!26515 (t!234315 (_2!20164 lt!1043032)))))))

(assert (= (and d!846886 c!495040) b!3006631))

(assert (= (and d!846886 (not c!495040)) b!3006632))

(declare-fun m!3354877 () Bool)

(assert (=> b!3006632 m!3354877))

(assert (=> b!3006041 d!846886))

(declare-fun b!3006633 () Bool)

(declare-fun e!1888241 () Bool)

(declare-fun lt!1043138 () Bool)

(declare-fun call!202298 () Bool)

(assert (=> b!3006633 (= e!1888241 (= lt!1043138 call!202298))))

(declare-fun b!3006634 () Bool)

(declare-fun res!1239158 () Bool)

(declare-fun e!1888237 () Bool)

(assert (=> b!3006634 (=> (not res!1239158) (not e!1888237))))

(assert (=> b!3006634 (= res!1239158 (not call!202298))))

(declare-fun b!3006635 () Bool)

(declare-fun res!1239156 () Bool)

(declare-fun e!1888235 () Bool)

(assert (=> b!3006635 (=> res!1239156 e!1888235)))

(assert (=> b!3006635 (= res!1239156 e!1888237)))

(declare-fun res!1239162 () Bool)

(assert (=> b!3006635 (=> (not res!1239162) (not e!1888237))))

(assert (=> b!3006635 (= res!1239162 lt!1043138)))

(declare-fun b!3006636 () Bool)

(declare-fun e!1888236 () Bool)

(assert (=> b!3006636 (= e!1888241 e!1888236)))

(declare-fun c!495042 () Bool)

(assert (=> b!3006636 (= c!495042 ((_ is EmptyLang!9385) (reg!9714 r!17423)))))

(declare-fun bm!202293 () Bool)

(assert (=> bm!202293 (= call!202298 (isEmpty!19407 (_1!20164 lt!1043032)))))

(declare-fun b!3006637 () Bool)

(declare-fun res!1239155 () Bool)

(declare-fun e!1888240 () Bool)

(assert (=> b!3006637 (=> res!1239155 e!1888240)))

(assert (=> b!3006637 (= res!1239155 (not (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032)))))))

(declare-fun b!3006638 () Bool)

(assert (=> b!3006638 (= e!1888236 (not lt!1043138))))

(declare-fun b!3006639 () Bool)

(declare-fun e!1888239 () Bool)

(assert (=> b!3006639 (= e!1888239 e!1888240)))

(declare-fun res!1239160 () Bool)

(assert (=> b!3006639 (=> res!1239160 e!1888240)))

(assert (=> b!3006639 (= res!1239160 call!202298)))

(declare-fun b!3006640 () Bool)

(declare-fun e!1888238 () Bool)

(assert (=> b!3006640 (= e!1888238 (nullable!3042 (reg!9714 r!17423)))))

(declare-fun d!846888 () Bool)

(assert (=> d!846888 e!1888241))

(declare-fun c!495043 () Bool)

(assert (=> d!846888 (= c!495043 ((_ is EmptyExpr!9385) (reg!9714 r!17423)))))

(assert (=> d!846888 (= lt!1043138 e!1888238)))

(declare-fun c!495041 () Bool)

(assert (=> d!846888 (= c!495041 (isEmpty!19407 (_1!20164 lt!1043032)))))

(assert (=> d!846888 (validRegex!4118 (reg!9714 r!17423))))

(assert (=> d!846888 (= (matchR!4267 (reg!9714 r!17423) (_1!20164 lt!1043032)) lt!1043138)))

(declare-fun b!3006641 () Bool)

(declare-fun res!1239161 () Bool)

(assert (=> b!3006641 (=> (not res!1239161) (not e!1888237))))

(assert (=> b!3006641 (= res!1239161 (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032))))))

(declare-fun b!3006642 () Bool)

(assert (=> b!3006642 (= e!1888235 e!1888239)))

(declare-fun res!1239157 () Bool)

(assert (=> b!3006642 (=> (not res!1239157) (not e!1888239))))

(assert (=> b!3006642 (= res!1239157 (not lt!1043138))))

(declare-fun b!3006643 () Bool)

(declare-fun res!1239159 () Bool)

(assert (=> b!3006643 (=> res!1239159 e!1888235)))

(assert (=> b!3006643 (= res!1239159 (not ((_ is ElementMatch!9385) (reg!9714 r!17423))))))

(assert (=> b!3006643 (= e!1888236 e!1888235)))

(declare-fun b!3006644 () Bool)

(assert (=> b!3006644 (= e!1888237 (= (head!6699 (_1!20164 lt!1043032)) (c!494883 (reg!9714 r!17423))))))

(declare-fun b!3006645 () Bool)

(assert (=> b!3006645 (= e!1888238 (matchR!4267 (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032))) (tail!4925 (_1!20164 lt!1043032))))))

(declare-fun b!3006646 () Bool)

(assert (=> b!3006646 (= e!1888240 (not (= (head!6699 (_1!20164 lt!1043032)) (c!494883 (reg!9714 r!17423)))))))

(assert (= (and d!846888 c!495041) b!3006640))

(assert (= (and d!846888 (not c!495041)) b!3006645))

(assert (= (and d!846888 c!495043) b!3006633))

(assert (= (and d!846888 (not c!495043)) b!3006636))

(assert (= (and b!3006636 c!495042) b!3006638))

(assert (= (and b!3006636 (not c!495042)) b!3006643))

(assert (= (and b!3006643 (not res!1239159)) b!3006635))

(assert (= (and b!3006635 res!1239162) b!3006634))

(assert (= (and b!3006634 res!1239158) b!3006641))

(assert (= (and b!3006641 res!1239161) b!3006644))

(assert (= (and b!3006635 (not res!1239156)) b!3006642))

(assert (= (and b!3006642 res!1239157) b!3006639))

(assert (= (and b!3006639 (not res!1239160)) b!3006637))

(assert (= (and b!3006637 (not res!1239155)) b!3006646))

(assert (= (or b!3006633 b!3006634 b!3006639) bm!202293))

(declare-fun m!3354879 () Bool)

(assert (=> b!3006646 m!3354879))

(assert (=> b!3006644 m!3354879))

(assert (=> b!3006645 m!3354879))

(assert (=> b!3006645 m!3354879))

(declare-fun m!3354881 () Bool)

(assert (=> b!3006645 m!3354881))

(declare-fun m!3354883 () Bool)

(assert (=> b!3006645 m!3354883))

(assert (=> b!3006645 m!3354881))

(assert (=> b!3006645 m!3354883))

(declare-fun m!3354885 () Bool)

(assert (=> b!3006645 m!3354885))

(assert (=> bm!202293 m!3354611))

(assert (=> b!3006640 m!3354735))

(assert (=> d!846888 m!3354611))

(assert (=> d!846888 m!3354731))

(assert (=> b!3006637 m!3354883))

(assert (=> b!3006637 m!3354883))

(declare-fun m!3354887 () Bool)

(assert (=> b!3006637 m!3354887))

(assert (=> b!3006641 m!3354883))

(assert (=> b!3006641 m!3354883))

(assert (=> b!3006641 m!3354887))

(assert (=> b!3006041 d!846888))

(declare-fun d!846890 () Bool)

(assert (=> d!846890 (= (matchR!4267 (reg!9714 r!17423) (_1!20164 lt!1043032)) (matchR!4267 (simplify!376 (reg!9714 r!17423)) (_1!20164 lt!1043032)))))

(declare-fun lt!1043141 () Unit!49185)

(declare-fun choose!17853 (Regex!9385 List!35250) Unit!49185)

(assert (=> d!846890 (= lt!1043141 (choose!17853 (reg!9714 r!17423) (_1!20164 lt!1043032)))))

(assert (=> d!846890 (validRegex!4118 (reg!9714 r!17423))))

(assert (=> d!846890 (= (lemmaSimplifySound!226 (reg!9714 r!17423) (_1!20164 lt!1043032)) lt!1043141)))

(declare-fun bs!528795 () Bool)

(assert (= bs!528795 d!846890))

(assert (=> bs!528795 m!3354603))

(assert (=> bs!528795 m!3354609))

(declare-fun m!3354889 () Bool)

(assert (=> bs!528795 m!3354889))

(assert (=> bs!528795 m!3354609))

(declare-fun m!3354891 () Bool)

(assert (=> bs!528795 m!3354891))

(assert (=> bs!528795 m!3354731))

(assert (=> b!3006041 d!846890))

(declare-fun d!846892 () Bool)

(assert (=> d!846892 (= (isEmpty!19407 s!11993) ((_ is Nil!35126) s!11993))))

(assert (=> b!3006053 d!846892))

(declare-fun bs!528796 () Bool)

(declare-fun b!3006652 () Bool)

(assert (= bs!528796 (and b!3006652 b!3006577)))

(declare-fun lambda!112451 () Int)

(assert (=> bs!528796 (= (and (= (reg!9714 lt!1043025) (reg!9714 r!17423)) (= lt!1043025 r!17423)) (= lambda!112451 lambda!112449))))

(declare-fun bs!528797 () Bool)

(assert (= bs!528797 (and b!3006652 b!3006050)))

(assert (=> bs!528797 (not (= lambda!112451 lambda!112417))))

(declare-fun bs!528798 () Bool)

(assert (= bs!528798 (and b!3006652 d!846842)))

(assert (=> bs!528798 (not (= lambda!112451 lambda!112438))))

(assert (=> bs!528797 (= (= (reg!9714 lt!1043025) lt!1043036) (= lambda!112451 lambda!112418))))

(assert (=> bs!528798 (= (and (= (reg!9714 lt!1043025) lt!1043036) (= lt!1043025 (Star!9385 lt!1043036))) (= lambda!112451 lambda!112439))))

(declare-fun bs!528799 () Bool)

(assert (= bs!528799 (and b!3006652 b!3006573)))

(assert (=> bs!528799 (not (= lambda!112451 lambda!112450))))

(declare-fun bs!528800 () Bool)

(assert (= bs!528800 (and b!3006652 d!846876)))

(assert (=> bs!528800 (not (= lambda!112451 lambda!112444))))

(assert (=> b!3006652 true))

(assert (=> b!3006652 true))

(declare-fun bs!528801 () Bool)

(declare-fun b!3006648 () Bool)

(assert (= bs!528801 (and b!3006648 b!3006577)))

(declare-fun lambda!112452 () Int)

(assert (=> bs!528801 (not (= lambda!112452 lambda!112449))))

(declare-fun bs!528802 () Bool)

(assert (= bs!528802 (and b!3006648 b!3006050)))

(assert (=> bs!528802 (not (= lambda!112452 lambda!112417))))

(declare-fun bs!528803 () Bool)

(assert (= bs!528803 (and b!3006648 d!846842)))

(assert (=> bs!528803 (not (= lambda!112452 lambda!112438))))

(declare-fun bs!528804 () Bool)

(assert (= bs!528804 (and b!3006648 b!3006652)))

(assert (=> bs!528804 (not (= lambda!112452 lambda!112451))))

(assert (=> bs!528802 (not (= lambda!112452 lambda!112418))))

(assert (=> bs!528803 (not (= lambda!112452 lambda!112439))))

(declare-fun bs!528805 () Bool)

(assert (= bs!528805 (and b!3006648 b!3006573)))

(assert (=> bs!528805 (= (and (= (regOne!19282 lt!1043025) (regOne!19282 r!17423)) (= (regTwo!19282 lt!1043025) (regTwo!19282 r!17423))) (= lambda!112452 lambda!112450))))

(declare-fun bs!528806 () Bool)

(assert (= bs!528806 (and b!3006648 d!846876)))

(assert (=> bs!528806 (not (= lambda!112452 lambda!112444))))

(assert (=> b!3006648 true))

(assert (=> b!3006648 true))

(declare-fun b!3006647 () Bool)

(declare-fun e!1888243 () Bool)

(declare-fun e!1888248 () Bool)

(assert (=> b!3006647 (= e!1888243 e!1888248)))

(declare-fun c!495044 () Bool)

(assert (=> b!3006647 (= c!495044 ((_ is Star!9385) lt!1043025))))

(declare-fun call!202299 () Bool)

(assert (=> b!3006648 (= e!1888248 call!202299)))

(declare-fun b!3006649 () Bool)

(declare-fun c!495045 () Bool)

(assert (=> b!3006649 (= c!495045 ((_ is ElementMatch!9385) lt!1043025))))

(declare-fun e!1888246 () Bool)

(declare-fun e!1888247 () Bool)

(assert (=> b!3006649 (= e!1888246 e!1888247)))

(declare-fun b!3006650 () Bool)

(assert (=> b!3006650 (= e!1888247 (= s!11993 (Cons!35126 (c!494883 lt!1043025) Nil!35126)))))

(declare-fun b!3006651 () Bool)

(declare-fun res!1239164 () Bool)

(declare-fun e!1888242 () Bool)

(assert (=> b!3006651 (=> res!1239164 e!1888242)))

(declare-fun call!202300 () Bool)

(assert (=> b!3006651 (= res!1239164 call!202300)))

(assert (=> b!3006651 (= e!1888248 e!1888242)))

(assert (=> b!3006652 (= e!1888242 call!202299)))

(declare-fun b!3006653 () Bool)

(declare-fun e!1888244 () Bool)

(assert (=> b!3006653 (= e!1888243 e!1888244)))

(declare-fun res!1239163 () Bool)

(assert (=> b!3006653 (= res!1239163 (matchRSpec!1522 (regOne!19283 lt!1043025) s!11993))))

(assert (=> b!3006653 (=> res!1239163 e!1888244)))

(declare-fun b!3006654 () Bool)

(declare-fun e!1888245 () Bool)

(assert (=> b!3006654 (= e!1888245 call!202300)))

(declare-fun b!3006655 () Bool)

(assert (=> b!3006655 (= e!1888245 e!1888246)))

(declare-fun res!1239165 () Bool)

(assert (=> b!3006655 (= res!1239165 (not ((_ is EmptyLang!9385) lt!1043025)))))

(assert (=> b!3006655 (=> (not res!1239165) (not e!1888246))))

(declare-fun b!3006656 () Bool)

(declare-fun c!495047 () Bool)

(assert (=> b!3006656 (= c!495047 ((_ is Union!9385) lt!1043025))))

(assert (=> b!3006656 (= e!1888247 e!1888243)))

(declare-fun bm!202294 () Bool)

(assert (=> bm!202294 (= call!202299 (Exists!1654 (ite c!495044 lambda!112451 lambda!112452)))))

(declare-fun d!846894 () Bool)

(declare-fun c!495046 () Bool)

(assert (=> d!846894 (= c!495046 ((_ is EmptyExpr!9385) lt!1043025))))

(assert (=> d!846894 (= (matchRSpec!1522 lt!1043025 s!11993) e!1888245)))

(declare-fun b!3006657 () Bool)

(assert (=> b!3006657 (= e!1888244 (matchRSpec!1522 (regTwo!19283 lt!1043025) s!11993))))

(declare-fun bm!202295 () Bool)

(assert (=> bm!202295 (= call!202300 (isEmpty!19407 s!11993))))

(assert (= (and d!846894 c!495046) b!3006654))

(assert (= (and d!846894 (not c!495046)) b!3006655))

(assert (= (and b!3006655 res!1239165) b!3006649))

(assert (= (and b!3006649 c!495045) b!3006650))

(assert (= (and b!3006649 (not c!495045)) b!3006656))

(assert (= (and b!3006656 c!495047) b!3006653))

(assert (= (and b!3006656 (not c!495047)) b!3006647))

(assert (= (and b!3006653 (not res!1239163)) b!3006657))

(assert (= (and b!3006647 c!495044) b!3006651))

(assert (= (and b!3006647 (not c!495044)) b!3006648))

(assert (= (and b!3006651 (not res!1239164)) b!3006652))

(assert (= (or b!3006652 b!3006648) bm!202294))

(assert (= (or b!3006654 b!3006651) bm!202295))

(declare-fun m!3354893 () Bool)

(assert (=> b!3006653 m!3354893))

(declare-fun m!3354895 () Bool)

(assert (=> bm!202294 m!3354895))

(declare-fun m!3354897 () Bool)

(assert (=> b!3006657 m!3354897))

(assert (=> bm!202295 m!3354617))

(assert (=> b!3006053 d!846894))

(declare-fun d!846896 () Bool)

(assert (=> d!846896 (= (matchR!4267 lt!1043025 s!11993) (matchRSpec!1522 lt!1043025 s!11993))))

(declare-fun lt!1043142 () Unit!49185)

(assert (=> d!846896 (= lt!1043142 (choose!17852 lt!1043025 s!11993))))

(assert (=> d!846896 (validRegex!4118 lt!1043025)))

(assert (=> d!846896 (= (mainMatchTheorem!1522 lt!1043025 s!11993) lt!1043142)))

(declare-fun bs!528807 () Bool)

(assert (= bs!528807 d!846896))

(assert (=> bs!528807 m!3354585))

(assert (=> bs!528807 m!3354619))

(declare-fun m!3354899 () Bool)

(assert (=> bs!528807 m!3354899))

(declare-fun m!3354901 () Bool)

(assert (=> bs!528807 m!3354901))

(assert (=> b!3006053 d!846896))

(declare-fun d!846898 () Bool)

(declare-fun lt!1043143 () Int)

(assert (=> d!846898 (>= lt!1043143 0)))

(declare-fun e!1888249 () Int)

(assert (=> d!846898 (= lt!1043143 e!1888249)))

(declare-fun c!495048 () Bool)

(assert (=> d!846898 (= c!495048 ((_ is Nil!35126) (_1!20164 lt!1043032)))))

(assert (=> d!846898 (= (size!26515 (_1!20164 lt!1043032)) lt!1043143)))

(declare-fun b!3006658 () Bool)

(assert (=> b!3006658 (= e!1888249 0)))

(declare-fun b!3006659 () Bool)

(assert (=> b!3006659 (= e!1888249 (+ 1 (size!26515 (t!234315 (_1!20164 lt!1043032)))))))

(assert (= (and d!846898 c!495048) b!3006658))

(assert (= (and d!846898 (not c!495048)) b!3006659))

(declare-fun m!3354903 () Bool)

(assert (=> b!3006659 m!3354903))

(assert (=> b!3006042 d!846898))

(declare-fun d!846900 () Bool)

(assert (=> d!846900 (= (isEmpty!19407 (_1!20164 lt!1043032)) ((_ is Nil!35126) (_1!20164 lt!1043032)))))

(assert (=> b!3006044 d!846900))

(declare-fun b!3006660 () Bool)

(declare-fun e!1888256 () Bool)

(declare-fun lt!1043144 () Bool)

(declare-fun call!202301 () Bool)

(assert (=> b!3006660 (= e!1888256 (= lt!1043144 call!202301))))

(declare-fun b!3006661 () Bool)

(declare-fun res!1239169 () Bool)

(declare-fun e!1888252 () Bool)

(assert (=> b!3006661 (=> (not res!1239169) (not e!1888252))))

(assert (=> b!3006661 (= res!1239169 (not call!202301))))

(declare-fun b!3006662 () Bool)

(declare-fun res!1239167 () Bool)

(declare-fun e!1888250 () Bool)

(assert (=> b!3006662 (=> res!1239167 e!1888250)))

(assert (=> b!3006662 (= res!1239167 e!1888252)))

(declare-fun res!1239173 () Bool)

(assert (=> b!3006662 (=> (not res!1239173) (not e!1888252))))

(assert (=> b!3006662 (= res!1239173 lt!1043144)))

(declare-fun b!3006663 () Bool)

(declare-fun e!1888251 () Bool)

(assert (=> b!3006663 (= e!1888256 e!1888251)))

(declare-fun c!495050 () Bool)

(assert (=> b!3006663 (= c!495050 ((_ is EmptyLang!9385) lt!1043036))))

(declare-fun bm!202296 () Bool)

(assert (=> bm!202296 (= call!202301 (isEmpty!19407 (_1!20164 lt!1043032)))))

(declare-fun b!3006664 () Bool)

(declare-fun res!1239166 () Bool)

(declare-fun e!1888255 () Bool)

(assert (=> b!3006664 (=> res!1239166 e!1888255)))

(assert (=> b!3006664 (= res!1239166 (not (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032)))))))

(declare-fun b!3006665 () Bool)

(assert (=> b!3006665 (= e!1888251 (not lt!1043144))))

(declare-fun b!3006666 () Bool)

(declare-fun e!1888254 () Bool)

(assert (=> b!3006666 (= e!1888254 e!1888255)))

(declare-fun res!1239171 () Bool)

(assert (=> b!3006666 (=> res!1239171 e!1888255)))

(assert (=> b!3006666 (= res!1239171 call!202301)))

(declare-fun b!3006667 () Bool)

(declare-fun e!1888253 () Bool)

(assert (=> b!3006667 (= e!1888253 (nullable!3042 lt!1043036))))

(declare-fun d!846902 () Bool)

(assert (=> d!846902 e!1888256))

(declare-fun c!495051 () Bool)

(assert (=> d!846902 (= c!495051 ((_ is EmptyExpr!9385) lt!1043036))))

(assert (=> d!846902 (= lt!1043144 e!1888253)))

(declare-fun c!495049 () Bool)

(assert (=> d!846902 (= c!495049 (isEmpty!19407 (_1!20164 lt!1043032)))))

(assert (=> d!846902 (validRegex!4118 lt!1043036)))

(assert (=> d!846902 (= (matchR!4267 lt!1043036 (_1!20164 lt!1043032)) lt!1043144)))

(declare-fun b!3006668 () Bool)

(declare-fun res!1239172 () Bool)

(assert (=> b!3006668 (=> (not res!1239172) (not e!1888252))))

(assert (=> b!3006668 (= res!1239172 (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032))))))

(declare-fun b!3006669 () Bool)

(assert (=> b!3006669 (= e!1888250 e!1888254)))

(declare-fun res!1239168 () Bool)

(assert (=> b!3006669 (=> (not res!1239168) (not e!1888254))))

(assert (=> b!3006669 (= res!1239168 (not lt!1043144))))

(declare-fun b!3006670 () Bool)

(declare-fun res!1239170 () Bool)

(assert (=> b!3006670 (=> res!1239170 e!1888250)))

(assert (=> b!3006670 (= res!1239170 (not ((_ is ElementMatch!9385) lt!1043036)))))

(assert (=> b!3006670 (= e!1888251 e!1888250)))

(declare-fun b!3006671 () Bool)

(assert (=> b!3006671 (= e!1888252 (= (head!6699 (_1!20164 lt!1043032)) (c!494883 lt!1043036)))))

(declare-fun b!3006672 () Bool)

(assert (=> b!3006672 (= e!1888253 (matchR!4267 (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032))) (tail!4925 (_1!20164 lt!1043032))))))

(declare-fun b!3006673 () Bool)

(assert (=> b!3006673 (= e!1888255 (not (= (head!6699 (_1!20164 lt!1043032)) (c!494883 lt!1043036))))))

(assert (= (and d!846902 c!495049) b!3006667))

(assert (= (and d!846902 (not c!495049)) b!3006672))

(assert (= (and d!846902 c!495051) b!3006660))

(assert (= (and d!846902 (not c!495051)) b!3006663))

(assert (= (and b!3006663 c!495050) b!3006665))

(assert (= (and b!3006663 (not c!495050)) b!3006670))

(assert (= (and b!3006670 (not res!1239170)) b!3006662))

(assert (= (and b!3006662 res!1239173) b!3006661))

(assert (= (and b!3006661 res!1239169) b!3006668))

(assert (= (and b!3006668 res!1239172) b!3006671))

(assert (= (and b!3006662 (not res!1239167)) b!3006669))

(assert (= (and b!3006669 res!1239168) b!3006666))

(assert (= (and b!3006666 (not res!1239171)) b!3006664))

(assert (= (and b!3006664 (not res!1239166)) b!3006673))

(assert (= (or b!3006660 b!3006661 b!3006666) bm!202296))

(assert (=> b!3006673 m!3354879))

(assert (=> b!3006671 m!3354879))

(assert (=> b!3006672 m!3354879))

(assert (=> b!3006672 m!3354879))

(declare-fun m!3354905 () Bool)

(assert (=> b!3006672 m!3354905))

(assert (=> b!3006672 m!3354883))

(assert (=> b!3006672 m!3354905))

(assert (=> b!3006672 m!3354883))

(declare-fun m!3354907 () Bool)

(assert (=> b!3006672 m!3354907))

(assert (=> bm!202296 m!3354611))

(declare-fun m!3354909 () Bool)

(assert (=> b!3006667 m!3354909))

(assert (=> d!846902 m!3354611))

(assert (=> d!846902 m!3354771))

(assert (=> b!3006664 m!3354883))

(assert (=> b!3006664 m!3354883))

(assert (=> b!3006664 m!3354887))

(assert (=> b!3006668 m!3354883))

(assert (=> b!3006668 m!3354883))

(assert (=> b!3006668 m!3354887))

(assert (=> b!3006054 d!846902))

(declare-fun d!846904 () Bool)

(assert (=> d!846904 (= (get!10924 lt!1043027) (v!34897 lt!1043027))))

(assert (=> b!3006054 d!846904))

(declare-fun b!3006692 () Bool)

(declare-fun e!1888277 () Bool)

(declare-fun call!202308 () Bool)

(assert (=> b!3006692 (= e!1888277 call!202308)))

(declare-fun b!3006693 () Bool)

(declare-fun res!1239185 () Bool)

(declare-fun e!1888276 () Bool)

(assert (=> b!3006693 (=> (not res!1239185) (not e!1888276))))

(declare-fun call!202309 () Bool)

(assert (=> b!3006693 (= res!1239185 call!202309)))

(declare-fun e!1888274 () Bool)

(assert (=> b!3006693 (= e!1888274 e!1888276)))

(declare-fun b!3006694 () Bool)

(declare-fun e!1888272 () Bool)

(assert (=> b!3006694 (= e!1888272 e!1888277)))

(declare-fun res!1239184 () Bool)

(assert (=> b!3006694 (= res!1239184 (not (nullable!3042 (reg!9714 r!17423))))))

(assert (=> b!3006694 (=> (not res!1239184) (not e!1888277))))

(declare-fun b!3006695 () Bool)

(declare-fun res!1239186 () Bool)

(declare-fun e!1888271 () Bool)

(assert (=> b!3006695 (=> res!1239186 e!1888271)))

(assert (=> b!3006695 (= res!1239186 (not ((_ is Concat!14706) r!17423)))))

(assert (=> b!3006695 (= e!1888274 e!1888271)))

(declare-fun b!3006696 () Bool)

(assert (=> b!3006696 (= e!1888272 e!1888274)))

(declare-fun c!495057 () Bool)

(assert (=> b!3006696 (= c!495057 ((_ is Union!9385) r!17423))))

(declare-fun c!495056 () Bool)

(declare-fun bm!202303 () Bool)

(assert (=> bm!202303 (= call!202308 (validRegex!4118 (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))))))

(declare-fun bm!202304 () Bool)

(assert (=> bm!202304 (= call!202309 (validRegex!4118 (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))))))

(declare-fun bm!202305 () Bool)

(declare-fun call!202310 () Bool)

(assert (=> bm!202305 (= call!202310 call!202308)))

(declare-fun b!3006697 () Bool)

(assert (=> b!3006697 (= e!1888276 call!202310)))

(declare-fun b!3006698 () Bool)

(declare-fun e!1888273 () Bool)

(assert (=> b!3006698 (= e!1888271 e!1888273)))

(declare-fun res!1239187 () Bool)

(assert (=> b!3006698 (=> (not res!1239187) (not e!1888273))))

(assert (=> b!3006698 (= res!1239187 call!202310)))

(declare-fun d!846906 () Bool)

(declare-fun res!1239188 () Bool)

(declare-fun e!1888275 () Bool)

(assert (=> d!846906 (=> res!1239188 e!1888275)))

(assert (=> d!846906 (= res!1239188 ((_ is ElementMatch!9385) r!17423))))

(assert (=> d!846906 (= (validRegex!4118 r!17423) e!1888275)))

(declare-fun b!3006699 () Bool)

(assert (=> b!3006699 (= e!1888273 call!202309)))

(declare-fun b!3006700 () Bool)

(assert (=> b!3006700 (= e!1888275 e!1888272)))

(assert (=> b!3006700 (= c!495056 ((_ is Star!9385) r!17423))))

(assert (= (and d!846906 (not res!1239188)) b!3006700))

(assert (= (and b!3006700 c!495056) b!3006694))

(assert (= (and b!3006700 (not c!495056)) b!3006696))

(assert (= (and b!3006694 res!1239184) b!3006692))

(assert (= (and b!3006696 c!495057) b!3006693))

(assert (= (and b!3006696 (not c!495057)) b!3006695))

(assert (= (and b!3006693 res!1239185) b!3006697))

(assert (= (and b!3006695 (not res!1239186)) b!3006698))

(assert (= (and b!3006698 res!1239187) b!3006699))

(assert (= (or b!3006693 b!3006699) bm!202304))

(assert (= (or b!3006697 b!3006698) bm!202305))

(assert (= (or b!3006692 bm!202305) bm!202303))

(assert (=> b!3006694 m!3354735))

(declare-fun m!3354911 () Bool)

(assert (=> bm!202303 m!3354911))

(declare-fun m!3354913 () Bool)

(assert (=> bm!202304 m!3354913))

(assert (=> start!289664 d!846906))

(declare-fun b!3006701 () Bool)

(declare-fun e!1888284 () Bool)

(declare-fun lt!1043145 () Bool)

(declare-fun call!202311 () Bool)

(assert (=> b!3006701 (= e!1888284 (= lt!1043145 call!202311))))

(declare-fun b!3006702 () Bool)

(declare-fun res!1239192 () Bool)

(declare-fun e!1888280 () Bool)

(assert (=> b!3006702 (=> (not res!1239192) (not e!1888280))))

(assert (=> b!3006702 (= res!1239192 (not call!202311))))

(declare-fun b!3006703 () Bool)

(declare-fun res!1239190 () Bool)

(declare-fun e!1888278 () Bool)

(assert (=> b!3006703 (=> res!1239190 e!1888278)))

(assert (=> b!3006703 (= res!1239190 e!1888280)))

(declare-fun res!1239196 () Bool)

(assert (=> b!3006703 (=> (not res!1239196) (not e!1888280))))

(assert (=> b!3006703 (= res!1239196 lt!1043145)))

(declare-fun b!3006704 () Bool)

(declare-fun e!1888279 () Bool)

(assert (=> b!3006704 (= e!1888284 e!1888279)))

(declare-fun c!495059 () Bool)

(assert (=> b!3006704 (= c!495059 ((_ is EmptyLang!9385) lt!1043025))))

(declare-fun bm!202306 () Bool)

(assert (=> bm!202306 (= call!202311 (isEmpty!19407 (_2!20164 lt!1043032)))))

(declare-fun b!3006705 () Bool)

(declare-fun res!1239189 () Bool)

(declare-fun e!1888283 () Bool)

(assert (=> b!3006705 (=> res!1239189 e!1888283)))

(assert (=> b!3006705 (= res!1239189 (not (isEmpty!19407 (tail!4925 (_2!20164 lt!1043032)))))))

(declare-fun b!3006706 () Bool)

(assert (=> b!3006706 (= e!1888279 (not lt!1043145))))

(declare-fun b!3006707 () Bool)

(declare-fun e!1888282 () Bool)

(assert (=> b!3006707 (= e!1888282 e!1888283)))

(declare-fun res!1239194 () Bool)

(assert (=> b!3006707 (=> res!1239194 e!1888283)))

(assert (=> b!3006707 (= res!1239194 call!202311)))

(declare-fun b!3006708 () Bool)

(declare-fun e!1888281 () Bool)

(assert (=> b!3006708 (= e!1888281 (nullable!3042 lt!1043025))))

(declare-fun d!846908 () Bool)

(assert (=> d!846908 e!1888284))

(declare-fun c!495060 () Bool)

(assert (=> d!846908 (= c!495060 ((_ is EmptyExpr!9385) lt!1043025))))

(assert (=> d!846908 (= lt!1043145 e!1888281)))

(declare-fun c!495058 () Bool)

(assert (=> d!846908 (= c!495058 (isEmpty!19407 (_2!20164 lt!1043032)))))

(assert (=> d!846908 (validRegex!4118 lt!1043025)))

(assert (=> d!846908 (= (matchR!4267 lt!1043025 (_2!20164 lt!1043032)) lt!1043145)))

(declare-fun b!3006709 () Bool)

(declare-fun res!1239195 () Bool)

(assert (=> b!3006709 (=> (not res!1239195) (not e!1888280))))

(assert (=> b!3006709 (= res!1239195 (isEmpty!19407 (tail!4925 (_2!20164 lt!1043032))))))

(declare-fun b!3006710 () Bool)

(assert (=> b!3006710 (= e!1888278 e!1888282)))

(declare-fun res!1239191 () Bool)

(assert (=> b!3006710 (=> (not res!1239191) (not e!1888282))))

(assert (=> b!3006710 (= res!1239191 (not lt!1043145))))

(declare-fun b!3006711 () Bool)

(declare-fun res!1239193 () Bool)

(assert (=> b!3006711 (=> res!1239193 e!1888278)))

(assert (=> b!3006711 (= res!1239193 (not ((_ is ElementMatch!9385) lt!1043025)))))

(assert (=> b!3006711 (= e!1888279 e!1888278)))

(declare-fun b!3006712 () Bool)

(assert (=> b!3006712 (= e!1888280 (= (head!6699 (_2!20164 lt!1043032)) (c!494883 lt!1043025)))))

(declare-fun b!3006713 () Bool)

(assert (=> b!3006713 (= e!1888281 (matchR!4267 (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032))) (tail!4925 (_2!20164 lt!1043032))))))

(declare-fun b!3006714 () Bool)

(assert (=> b!3006714 (= e!1888283 (not (= (head!6699 (_2!20164 lt!1043032)) (c!494883 lt!1043025))))))

(assert (= (and d!846908 c!495058) b!3006708))

(assert (= (and d!846908 (not c!495058)) b!3006713))

(assert (= (and d!846908 c!495060) b!3006701))

(assert (= (and d!846908 (not c!495060)) b!3006704))

(assert (= (and b!3006704 c!495059) b!3006706))

(assert (= (and b!3006704 (not c!495059)) b!3006711))

(assert (= (and b!3006711 (not res!1239193)) b!3006703))

(assert (= (and b!3006703 res!1239196) b!3006702))

(assert (= (and b!3006702 res!1239192) b!3006709))

(assert (= (and b!3006709 res!1239195) b!3006712))

(assert (= (and b!3006703 (not res!1239190)) b!3006710))

(assert (= (and b!3006710 res!1239191) b!3006707))

(assert (= (and b!3006707 (not res!1239194)) b!3006705))

(assert (= (and b!3006705 (not res!1239189)) b!3006714))

(assert (= (or b!3006701 b!3006702 b!3006707) bm!202306))

(declare-fun m!3354915 () Bool)

(assert (=> b!3006714 m!3354915))

(assert (=> b!3006712 m!3354915))

(assert (=> b!3006713 m!3354915))

(assert (=> b!3006713 m!3354915))

(declare-fun m!3354917 () Bool)

(assert (=> b!3006713 m!3354917))

(declare-fun m!3354919 () Bool)

(assert (=> b!3006713 m!3354919))

(assert (=> b!3006713 m!3354917))

(assert (=> b!3006713 m!3354919))

(declare-fun m!3354921 () Bool)

(assert (=> b!3006713 m!3354921))

(declare-fun m!3354923 () Bool)

(assert (=> bm!202306 m!3354923))

(declare-fun m!3354925 () Bool)

(assert (=> b!3006708 m!3354925))

(assert (=> d!846908 m!3354923))

(assert (=> d!846908 m!3354901))

(assert (=> b!3006705 m!3354919))

(assert (=> b!3006705 m!3354919))

(declare-fun m!3354927 () Bool)

(assert (=> b!3006705 m!3354927))

(assert (=> b!3006709 m!3354919))

(assert (=> b!3006709 m!3354919))

(assert (=> b!3006709 m!3354927))

(assert (=> b!3006047 d!846908))

(declare-fun b!3006715 () Bool)

(declare-fun e!1888291 () Bool)

(declare-fun lt!1043146 () Bool)

(declare-fun call!202312 () Bool)

(assert (=> b!3006715 (= e!1888291 (= lt!1043146 call!202312))))

(declare-fun b!3006716 () Bool)

(declare-fun res!1239200 () Bool)

(declare-fun e!1888287 () Bool)

(assert (=> b!3006716 (=> (not res!1239200) (not e!1888287))))

(assert (=> b!3006716 (= res!1239200 (not call!202312))))

(declare-fun b!3006717 () Bool)

(declare-fun res!1239198 () Bool)

(declare-fun e!1888285 () Bool)

(assert (=> b!3006717 (=> res!1239198 e!1888285)))

(assert (=> b!3006717 (= res!1239198 e!1888287)))

(declare-fun res!1239204 () Bool)

(assert (=> b!3006717 (=> (not res!1239204) (not e!1888287))))

(assert (=> b!3006717 (= res!1239204 lt!1043146)))

(declare-fun b!3006718 () Bool)

(declare-fun e!1888286 () Bool)

(assert (=> b!3006718 (= e!1888291 e!1888286)))

(declare-fun c!495062 () Bool)

(assert (=> b!3006718 (= c!495062 ((_ is EmptyLang!9385) lt!1043025))))

(declare-fun bm!202307 () Bool)

(assert (=> bm!202307 (= call!202312 (isEmpty!19407 s!11993))))

(declare-fun b!3006719 () Bool)

(declare-fun res!1239197 () Bool)

(declare-fun e!1888290 () Bool)

(assert (=> b!3006719 (=> res!1239197 e!1888290)))

(assert (=> b!3006719 (= res!1239197 (not (isEmpty!19407 (tail!4925 s!11993))))))

(declare-fun b!3006720 () Bool)

(assert (=> b!3006720 (= e!1888286 (not lt!1043146))))

(declare-fun b!3006721 () Bool)

(declare-fun e!1888289 () Bool)

(assert (=> b!3006721 (= e!1888289 e!1888290)))

(declare-fun res!1239202 () Bool)

(assert (=> b!3006721 (=> res!1239202 e!1888290)))

(assert (=> b!3006721 (= res!1239202 call!202312)))

(declare-fun b!3006722 () Bool)

(declare-fun e!1888288 () Bool)

(assert (=> b!3006722 (= e!1888288 (nullable!3042 lt!1043025))))

(declare-fun d!846910 () Bool)

(assert (=> d!846910 e!1888291))

(declare-fun c!495063 () Bool)

(assert (=> d!846910 (= c!495063 ((_ is EmptyExpr!9385) lt!1043025))))

(assert (=> d!846910 (= lt!1043146 e!1888288)))

(declare-fun c!495061 () Bool)

(assert (=> d!846910 (= c!495061 (isEmpty!19407 s!11993))))

(assert (=> d!846910 (validRegex!4118 lt!1043025)))

(assert (=> d!846910 (= (matchR!4267 lt!1043025 s!11993) lt!1043146)))

(declare-fun b!3006723 () Bool)

(declare-fun res!1239203 () Bool)

(assert (=> b!3006723 (=> (not res!1239203) (not e!1888287))))

(assert (=> b!3006723 (= res!1239203 (isEmpty!19407 (tail!4925 s!11993)))))

(declare-fun b!3006724 () Bool)

(assert (=> b!3006724 (= e!1888285 e!1888289)))

(declare-fun res!1239199 () Bool)

(assert (=> b!3006724 (=> (not res!1239199) (not e!1888289))))

(assert (=> b!3006724 (= res!1239199 (not lt!1043146))))

(declare-fun b!3006725 () Bool)

(declare-fun res!1239201 () Bool)

(assert (=> b!3006725 (=> res!1239201 e!1888285)))

(assert (=> b!3006725 (= res!1239201 (not ((_ is ElementMatch!9385) lt!1043025)))))

(assert (=> b!3006725 (= e!1888286 e!1888285)))

(declare-fun b!3006726 () Bool)

(assert (=> b!3006726 (= e!1888287 (= (head!6699 s!11993) (c!494883 lt!1043025)))))

(declare-fun b!3006727 () Bool)

(assert (=> b!3006727 (= e!1888288 (matchR!4267 (derivativeStep!2640 lt!1043025 (head!6699 s!11993)) (tail!4925 s!11993)))))

(declare-fun b!3006728 () Bool)

(assert (=> b!3006728 (= e!1888290 (not (= (head!6699 s!11993) (c!494883 lt!1043025))))))

(assert (= (and d!846910 c!495061) b!3006722))

(assert (= (and d!846910 (not c!495061)) b!3006727))

(assert (= (and d!846910 c!495063) b!3006715))

(assert (= (and d!846910 (not c!495063)) b!3006718))

(assert (= (and b!3006718 c!495062) b!3006720))

(assert (= (and b!3006718 (not c!495062)) b!3006725))

(assert (= (and b!3006725 (not res!1239201)) b!3006717))

(assert (= (and b!3006717 res!1239204) b!3006716))

(assert (= (and b!3006716 res!1239200) b!3006723))

(assert (= (and b!3006723 res!1239203) b!3006726))

(assert (= (and b!3006717 (not res!1239198)) b!3006724))

(assert (= (and b!3006724 res!1239199) b!3006721))

(assert (= (and b!3006721 (not res!1239202)) b!3006719))

(assert (= (and b!3006719 (not res!1239197)) b!3006728))

(assert (= (or b!3006715 b!3006716 b!3006721) bm!202307))

(assert (=> b!3006728 m!3354861))

(assert (=> b!3006726 m!3354861))

(assert (=> b!3006727 m!3354861))

(assert (=> b!3006727 m!3354861))

(declare-fun m!3354929 () Bool)

(assert (=> b!3006727 m!3354929))

(assert (=> b!3006727 m!3354865))

(assert (=> b!3006727 m!3354929))

(assert (=> b!3006727 m!3354865))

(declare-fun m!3354931 () Bool)

(assert (=> b!3006727 m!3354931))

(assert (=> bm!202307 m!3354617))

(assert (=> b!3006722 m!3354925))

(assert (=> d!846910 m!3354617))

(assert (=> d!846910 m!3354901))

(assert (=> b!3006719 m!3354865))

(assert (=> b!3006719 m!3354865))

(assert (=> b!3006719 m!3354871))

(assert (=> b!3006723 m!3354865))

(assert (=> b!3006723 m!3354865))

(assert (=> b!3006723 m!3354871))

(assert (=> b!3006048 d!846910))

(declare-fun b!3006741 () Bool)

(declare-fun e!1888294 () Bool)

(declare-fun tp!954771 () Bool)

(assert (=> b!3006741 (= e!1888294 tp!954771)))

(declare-fun b!3006740 () Bool)

(declare-fun tp!954773 () Bool)

(declare-fun tp!954774 () Bool)

(assert (=> b!3006740 (= e!1888294 (and tp!954773 tp!954774))))

(declare-fun b!3006742 () Bool)

(declare-fun tp!954772 () Bool)

(declare-fun tp!954770 () Bool)

(assert (=> b!3006742 (= e!1888294 (and tp!954772 tp!954770))))

(assert (=> b!3006055 (= tp!954716 e!1888294)))

(declare-fun b!3006739 () Bool)

(assert (=> b!3006739 (= e!1888294 tp_is_empty!16333)))

(assert (= (and b!3006055 ((_ is ElementMatch!9385) (regOne!19282 r!17423))) b!3006739))

(assert (= (and b!3006055 ((_ is Concat!14706) (regOne!19282 r!17423))) b!3006740))

(assert (= (and b!3006055 ((_ is Star!9385) (regOne!19282 r!17423))) b!3006741))

(assert (= (and b!3006055 ((_ is Union!9385) (regOne!19282 r!17423))) b!3006742))

(declare-fun b!3006745 () Bool)

(declare-fun e!1888295 () Bool)

(declare-fun tp!954776 () Bool)

(assert (=> b!3006745 (= e!1888295 tp!954776)))

(declare-fun b!3006744 () Bool)

(declare-fun tp!954778 () Bool)

(declare-fun tp!954779 () Bool)

(assert (=> b!3006744 (= e!1888295 (and tp!954778 tp!954779))))

(declare-fun b!3006746 () Bool)

(declare-fun tp!954777 () Bool)

(declare-fun tp!954775 () Bool)

(assert (=> b!3006746 (= e!1888295 (and tp!954777 tp!954775))))

(assert (=> b!3006055 (= tp!954717 e!1888295)))

(declare-fun b!3006743 () Bool)

(assert (=> b!3006743 (= e!1888295 tp_is_empty!16333)))

(assert (= (and b!3006055 ((_ is ElementMatch!9385) (regTwo!19282 r!17423))) b!3006743))

(assert (= (and b!3006055 ((_ is Concat!14706) (regTwo!19282 r!17423))) b!3006744))

(assert (= (and b!3006055 ((_ is Star!9385) (regTwo!19282 r!17423))) b!3006745))

(assert (= (and b!3006055 ((_ is Union!9385) (regTwo!19282 r!17423))) b!3006746))

(declare-fun b!3006749 () Bool)

(declare-fun e!1888296 () Bool)

(declare-fun tp!954781 () Bool)

(assert (=> b!3006749 (= e!1888296 tp!954781)))

(declare-fun b!3006748 () Bool)

(declare-fun tp!954783 () Bool)

(declare-fun tp!954784 () Bool)

(assert (=> b!3006748 (= e!1888296 (and tp!954783 tp!954784))))

(declare-fun b!3006750 () Bool)

(declare-fun tp!954782 () Bool)

(declare-fun tp!954780 () Bool)

(assert (=> b!3006750 (= e!1888296 (and tp!954782 tp!954780))))

(assert (=> b!3006045 (= tp!954721 e!1888296)))

(declare-fun b!3006747 () Bool)

(assert (=> b!3006747 (= e!1888296 tp_is_empty!16333)))

(assert (= (and b!3006045 ((_ is ElementMatch!9385) (regOne!19283 r!17423))) b!3006747))

(assert (= (and b!3006045 ((_ is Concat!14706) (regOne!19283 r!17423))) b!3006748))

(assert (= (and b!3006045 ((_ is Star!9385) (regOne!19283 r!17423))) b!3006749))

(assert (= (and b!3006045 ((_ is Union!9385) (regOne!19283 r!17423))) b!3006750))

(declare-fun b!3006753 () Bool)

(declare-fun e!1888297 () Bool)

(declare-fun tp!954786 () Bool)

(assert (=> b!3006753 (= e!1888297 tp!954786)))

(declare-fun b!3006752 () Bool)

(declare-fun tp!954788 () Bool)

(declare-fun tp!954789 () Bool)

(assert (=> b!3006752 (= e!1888297 (and tp!954788 tp!954789))))

(declare-fun b!3006754 () Bool)

(declare-fun tp!954787 () Bool)

(declare-fun tp!954785 () Bool)

(assert (=> b!3006754 (= e!1888297 (and tp!954787 tp!954785))))

(assert (=> b!3006045 (= tp!954718 e!1888297)))

(declare-fun b!3006751 () Bool)

(assert (=> b!3006751 (= e!1888297 tp_is_empty!16333)))

(assert (= (and b!3006045 ((_ is ElementMatch!9385) (regTwo!19283 r!17423))) b!3006751))

(assert (= (and b!3006045 ((_ is Concat!14706) (regTwo!19283 r!17423))) b!3006752))

(assert (= (and b!3006045 ((_ is Star!9385) (regTwo!19283 r!17423))) b!3006753))

(assert (= (and b!3006045 ((_ is Union!9385) (regTwo!19283 r!17423))) b!3006754))

(declare-fun b!3006759 () Bool)

(declare-fun e!1888300 () Bool)

(declare-fun tp!954792 () Bool)

(assert (=> b!3006759 (= e!1888300 (and tp_is_empty!16333 tp!954792))))

(assert (=> b!3006046 (= tp!954719 e!1888300)))

(assert (= (and b!3006046 ((_ is Cons!35126) (t!234315 s!11993))) b!3006759))

(declare-fun b!3006762 () Bool)

(declare-fun e!1888301 () Bool)

(declare-fun tp!954794 () Bool)

(assert (=> b!3006762 (= e!1888301 tp!954794)))

(declare-fun b!3006761 () Bool)

(declare-fun tp!954796 () Bool)

(declare-fun tp!954797 () Bool)

(assert (=> b!3006761 (= e!1888301 (and tp!954796 tp!954797))))

(declare-fun b!3006763 () Bool)

(declare-fun tp!954795 () Bool)

(declare-fun tp!954793 () Bool)

(assert (=> b!3006763 (= e!1888301 (and tp!954795 tp!954793))))

(assert (=> b!3006043 (= tp!954720 e!1888301)))

(declare-fun b!3006760 () Bool)

(assert (=> b!3006760 (= e!1888301 tp_is_empty!16333)))

(assert (= (and b!3006043 ((_ is ElementMatch!9385) (reg!9714 r!17423))) b!3006760))

(assert (= (and b!3006043 ((_ is Concat!14706) (reg!9714 r!17423))) b!3006761))

(assert (= (and b!3006043 ((_ is Star!9385) (reg!9714 r!17423))) b!3006762))

(assert (= (and b!3006043 ((_ is Union!9385) (reg!9714 r!17423))) b!3006763))

(check-sat (not b!3006622) (not bm!202244) (not b!3006619) (not b!3006749) (not d!846852) (not b!3006659) (not b!3006722) (not b!3006709) (not d!846888) (not b!3006761) (not b!3006719) (not bm!202296) (not b!3006623) (not b!3006672) (not bm!202246) (not b!3006750) (not bm!202250) (not b!3006531) (not b!3006664) (not b!3006744) (not d!846840) (not d!846836) (not b!3006667) (not d!846842) (not b!3006644) (not d!846902) (not b!3006740) (not b!3006713) (not bm!202303) (not b!3006673) (not d!846896) (not b!3006081) (not b!3006618) (not bm!202288) (not b!3006694) (not b!3006645) (not b!3006754) (not b!3006746) (not d!846880) (not b!3006615) (not b!3006742) (not b!3006708) (not b!3006624) (not d!846910) (not bm!202307) (not b!3006637) (not b!3006653) (not bm!202304) (not b!3006528) (not bm!202292) (not b!3006712) (not b!3006582) tp_is_empty!16333 (not b!3006762) (not bm!202289) (not d!846908) (not b!3006657) (not b!3006668) (not b!3006632) (not b!3006705) (not d!846838) (not b!3006641) (not d!846808) (not b!3006640) (not b!3006245) (not bm!202306) (not b!3006748) (not d!846818) (not bm!202295) (not b!3006753) (not b!3006082) (not b!3006578) (not b!3006723) (not d!846882) (not b!3006532) (not bm!202293) (not bm!202247) (not b!3006728) (not b!3006646) (not b!3006752) (not b!3006530) (not b!3006534) (not bm!202248) (not b!3006759) (not bm!202294) (not d!846876) (not b!3006671) (not b!3006714) (not d!846890) (not b!3006247) (not b!3006726) (not b!3006763) (not b!3006535) (not b!3006630) (not b!3006741) (not b!3006727) (not b!3006745))
(check-sat)
(get-model)

(declare-fun d!846974 () Bool)

(declare-fun lt!1043156 () Int)

(assert (=> d!846974 (>= lt!1043156 0)))

(declare-fun e!1888380 () Int)

(assert (=> d!846974 (= lt!1043156 e!1888380)))

(declare-fun c!495107 () Bool)

(assert (=> d!846974 (= c!495107 ((_ is Nil!35126) (t!234315 (_1!20164 lt!1043032))))))

(assert (=> d!846974 (= (size!26515 (t!234315 (_1!20164 lt!1043032))) lt!1043156)))

(declare-fun b!3006901 () Bool)

(assert (=> b!3006901 (= e!1888380 0)))

(declare-fun b!3006902 () Bool)

(assert (=> b!3006902 (= e!1888380 (+ 1 (size!26515 (t!234315 (t!234315 (_1!20164 lt!1043032))))))))

(assert (= (and d!846974 c!495107) b!3006901))

(assert (= (and d!846974 (not c!495107)) b!3006902))

(declare-fun m!3355049 () Bool)

(assert (=> b!3006902 m!3355049))

(assert (=> b!3006659 d!846974))

(declare-fun b!3006903 () Bool)

(declare-fun e!1888387 () Bool)

(declare-fun lt!1043157 () Bool)

(declare-fun call!202344 () Bool)

(assert (=> b!3006903 (= e!1888387 (= lt!1043157 call!202344))))

(declare-fun b!3006904 () Bool)

(declare-fun res!1239262 () Bool)

(declare-fun e!1888383 () Bool)

(assert (=> b!3006904 (=> (not res!1239262) (not e!1888383))))

(assert (=> b!3006904 (= res!1239262 (not call!202344))))

(declare-fun b!3006905 () Bool)

(declare-fun res!1239260 () Bool)

(declare-fun e!1888381 () Bool)

(assert (=> b!3006905 (=> res!1239260 e!1888381)))

(assert (=> b!3006905 (= res!1239260 e!1888383)))

(declare-fun res!1239266 () Bool)

(assert (=> b!3006905 (=> (not res!1239266) (not e!1888383))))

(assert (=> b!3006905 (= res!1239266 lt!1043157)))

(declare-fun b!3006906 () Bool)

(declare-fun e!1888382 () Bool)

(assert (=> b!3006906 (= e!1888387 e!1888382)))

(declare-fun c!495109 () Bool)

(assert (=> b!3006906 (= c!495109 ((_ is EmptyLang!9385) lt!1043025))))

(declare-fun bm!202339 () Bool)

(assert (=> bm!202339 (= call!202344 (isEmpty!19407 (_2!20164 (get!10924 lt!1043122))))))

(declare-fun b!3006907 () Bool)

(declare-fun res!1239259 () Bool)

(declare-fun e!1888386 () Bool)

(assert (=> b!3006907 (=> res!1239259 e!1888386)))

(assert (=> b!3006907 (= res!1239259 (not (isEmpty!19407 (tail!4925 (_2!20164 (get!10924 lt!1043122))))))))

(declare-fun b!3006908 () Bool)

(assert (=> b!3006908 (= e!1888382 (not lt!1043157))))

(declare-fun b!3006909 () Bool)

(declare-fun e!1888385 () Bool)

(assert (=> b!3006909 (= e!1888385 e!1888386)))

(declare-fun res!1239264 () Bool)

(assert (=> b!3006909 (=> res!1239264 e!1888386)))

(assert (=> b!3006909 (= res!1239264 call!202344)))

(declare-fun b!3006910 () Bool)

(declare-fun e!1888384 () Bool)

(assert (=> b!3006910 (= e!1888384 (nullable!3042 lt!1043025))))

(declare-fun d!846976 () Bool)

(assert (=> d!846976 e!1888387))

(declare-fun c!495110 () Bool)

(assert (=> d!846976 (= c!495110 ((_ is EmptyExpr!9385) lt!1043025))))

(assert (=> d!846976 (= lt!1043157 e!1888384)))

(declare-fun c!495108 () Bool)

(assert (=> d!846976 (= c!495108 (isEmpty!19407 (_2!20164 (get!10924 lt!1043122))))))

(assert (=> d!846976 (validRegex!4118 lt!1043025)))

(assert (=> d!846976 (= (matchR!4267 lt!1043025 (_2!20164 (get!10924 lt!1043122))) lt!1043157)))

(declare-fun b!3006911 () Bool)

(declare-fun res!1239265 () Bool)

(assert (=> b!3006911 (=> (not res!1239265) (not e!1888383))))

(assert (=> b!3006911 (= res!1239265 (isEmpty!19407 (tail!4925 (_2!20164 (get!10924 lt!1043122)))))))

(declare-fun b!3006912 () Bool)

(assert (=> b!3006912 (= e!1888381 e!1888385)))

(declare-fun res!1239261 () Bool)

(assert (=> b!3006912 (=> (not res!1239261) (not e!1888385))))

(assert (=> b!3006912 (= res!1239261 (not lt!1043157))))

(declare-fun b!3006913 () Bool)

(declare-fun res!1239263 () Bool)

(assert (=> b!3006913 (=> res!1239263 e!1888381)))

(assert (=> b!3006913 (= res!1239263 (not ((_ is ElementMatch!9385) lt!1043025)))))

(assert (=> b!3006913 (= e!1888382 e!1888381)))

(declare-fun b!3006914 () Bool)

(assert (=> b!3006914 (= e!1888383 (= (head!6699 (_2!20164 (get!10924 lt!1043122))) (c!494883 lt!1043025)))))

(declare-fun b!3006915 () Bool)

(assert (=> b!3006915 (= e!1888384 (matchR!4267 (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 (get!10924 lt!1043122)))) (tail!4925 (_2!20164 (get!10924 lt!1043122)))))))

(declare-fun b!3006916 () Bool)

(assert (=> b!3006916 (= e!1888386 (not (= (head!6699 (_2!20164 (get!10924 lt!1043122))) (c!494883 lt!1043025))))))

(assert (= (and d!846976 c!495108) b!3006910))

(assert (= (and d!846976 (not c!495108)) b!3006915))

(assert (= (and d!846976 c!495110) b!3006903))

(assert (= (and d!846976 (not c!495110)) b!3006906))

(assert (= (and b!3006906 c!495109) b!3006908))

(assert (= (and b!3006906 (not c!495109)) b!3006913))

(assert (= (and b!3006913 (not res!1239263)) b!3006905))

(assert (= (and b!3006905 res!1239266) b!3006904))

(assert (= (and b!3006904 res!1239262) b!3006911))

(assert (= (and b!3006911 res!1239265) b!3006914))

(assert (= (and b!3006905 (not res!1239260)) b!3006912))

(assert (= (and b!3006912 res!1239261) b!3006909))

(assert (= (and b!3006909 (not res!1239264)) b!3006907))

(assert (= (and b!3006907 (not res!1239259)) b!3006916))

(assert (= (or b!3006903 b!3006904 b!3006909) bm!202339))

(declare-fun m!3355051 () Bool)

(assert (=> b!3006916 m!3355051))

(assert (=> b!3006914 m!3355051))

(assert (=> b!3006915 m!3355051))

(assert (=> b!3006915 m!3355051))

(declare-fun m!3355053 () Bool)

(assert (=> b!3006915 m!3355053))

(declare-fun m!3355055 () Bool)

(assert (=> b!3006915 m!3355055))

(assert (=> b!3006915 m!3355053))

(assert (=> b!3006915 m!3355055))

(declare-fun m!3355057 () Bool)

(assert (=> b!3006915 m!3355057))

(declare-fun m!3355059 () Bool)

(assert (=> bm!202339 m!3355059))

(assert (=> b!3006910 m!3354925))

(assert (=> d!846976 m!3355059))

(assert (=> d!846976 m!3354901))

(assert (=> b!3006907 m!3355055))

(assert (=> b!3006907 m!3355055))

(declare-fun m!3355061 () Bool)

(assert (=> b!3006907 m!3355061))

(assert (=> b!3006911 m!3355055))

(assert (=> b!3006911 m!3355055))

(assert (=> b!3006911 m!3355061))

(assert (=> b!3006532 d!846976))

(declare-fun d!846978 () Bool)

(assert (=> d!846978 (= (get!10924 lt!1043122) (v!34897 lt!1043122))))

(assert (=> b!3006532 d!846978))

(declare-fun d!846980 () Bool)

(assert (=> d!846980 (= (head!6699 s!11993) (h!40546 s!11993))))

(assert (=> b!3006726 d!846980))

(declare-fun b!3006922 () Bool)

(declare-fun e!1888390 () List!35250)

(assert (=> b!3006922 (= e!1888390 (Cons!35126 (h!40546 (_1!20164 (get!10924 lt!1043122))) (++!8413 (t!234315 (_1!20164 (get!10924 lt!1043122))) (_2!20164 (get!10924 lt!1043122)))))))

(declare-fun d!846982 () Bool)

(declare-fun e!1888391 () Bool)

(assert (=> d!846982 e!1888391))

(declare-fun res!1239271 () Bool)

(assert (=> d!846982 (=> (not res!1239271) (not e!1888391))))

(declare-fun lt!1043158 () List!35250)

(assert (=> d!846982 (= res!1239271 (= (content!4782 lt!1043158) ((_ map or) (content!4782 (_1!20164 (get!10924 lt!1043122))) (content!4782 (_2!20164 (get!10924 lt!1043122))))))))

(assert (=> d!846982 (= lt!1043158 e!1888390)))

(declare-fun c!495111 () Bool)

(assert (=> d!846982 (= c!495111 ((_ is Nil!35126) (_1!20164 (get!10924 lt!1043122))))))

(assert (=> d!846982 (= (++!8413 (_1!20164 (get!10924 lt!1043122)) (_2!20164 (get!10924 lt!1043122))) lt!1043158)))

(declare-fun b!3006924 () Bool)

(assert (=> b!3006924 (= e!1888391 (or (not (= (_2!20164 (get!10924 lt!1043122)) Nil!35126)) (= lt!1043158 (_1!20164 (get!10924 lt!1043122)))))))

(declare-fun b!3006921 () Bool)

(assert (=> b!3006921 (= e!1888390 (_2!20164 (get!10924 lt!1043122)))))

(declare-fun b!3006923 () Bool)

(declare-fun res!1239272 () Bool)

(assert (=> b!3006923 (=> (not res!1239272) (not e!1888391))))

(assert (=> b!3006923 (= res!1239272 (= (size!26515 lt!1043158) (+ (size!26515 (_1!20164 (get!10924 lt!1043122))) (size!26515 (_2!20164 (get!10924 lt!1043122))))))))

(assert (= (and d!846982 c!495111) b!3006921))

(assert (= (and d!846982 (not c!495111)) b!3006922))

(assert (= (and d!846982 res!1239271) b!3006923))

(assert (= (and b!3006923 res!1239272) b!3006924))

(declare-fun m!3355063 () Bool)

(assert (=> b!3006922 m!3355063))

(declare-fun m!3355065 () Bool)

(assert (=> d!846982 m!3355065))

(declare-fun m!3355067 () Bool)

(assert (=> d!846982 m!3355067))

(declare-fun m!3355069 () Bool)

(assert (=> d!846982 m!3355069))

(declare-fun m!3355071 () Bool)

(assert (=> b!3006923 m!3355071))

(declare-fun m!3355073 () Bool)

(assert (=> b!3006923 m!3355073))

(declare-fun m!3355075 () Bool)

(assert (=> b!3006923 m!3355075))

(assert (=> b!3006534 d!846982))

(assert (=> b!3006534 d!846978))

(declare-fun d!846984 () Bool)

(assert (=> d!846984 (= (isEmpty!19407 (tail!4925 s!11993)) ((_ is Nil!35126) (tail!4925 s!11993)))))

(assert (=> b!3006619 d!846984))

(declare-fun d!846986 () Bool)

(assert (=> d!846986 (= (tail!4925 s!11993) (t!234315 s!11993))))

(assert (=> b!3006619 d!846986))

(declare-fun d!846990 () Bool)

(assert (=> d!846990 (= (isEmpty!19407 (_2!20164 lt!1043032)) ((_ is Nil!35126) (_2!20164 lt!1043032)))))

(assert (=> d!846908 d!846990))

(declare-fun b!3006939 () Bool)

(declare-fun e!1888405 () Bool)

(declare-fun call!202346 () Bool)

(assert (=> b!3006939 (= e!1888405 call!202346)))

(declare-fun b!3006940 () Bool)

(declare-fun res!1239282 () Bool)

(declare-fun e!1888404 () Bool)

(assert (=> b!3006940 (=> (not res!1239282) (not e!1888404))))

(declare-fun call!202347 () Bool)

(assert (=> b!3006940 (= res!1239282 call!202347)))

(declare-fun e!1888402 () Bool)

(assert (=> b!3006940 (= e!1888402 e!1888404)))

(declare-fun b!3006941 () Bool)

(declare-fun e!1888400 () Bool)

(assert (=> b!3006941 (= e!1888400 e!1888405)))

(declare-fun res!1239281 () Bool)

(assert (=> b!3006941 (= res!1239281 (not (nullable!3042 (reg!9714 lt!1043025))))))

(assert (=> b!3006941 (=> (not res!1239281) (not e!1888405))))

(declare-fun b!3006942 () Bool)

(declare-fun res!1239283 () Bool)

(declare-fun e!1888399 () Bool)

(assert (=> b!3006942 (=> res!1239283 e!1888399)))

(assert (=> b!3006942 (= res!1239283 (not ((_ is Concat!14706) lt!1043025)))))

(assert (=> b!3006942 (= e!1888402 e!1888399)))

(declare-fun b!3006943 () Bool)

(assert (=> b!3006943 (= e!1888400 e!1888402)))

(declare-fun c!495116 () Bool)

(assert (=> b!3006943 (= c!495116 ((_ is Union!9385) lt!1043025))))

(declare-fun c!495115 () Bool)

(declare-fun bm!202341 () Bool)

(assert (=> bm!202341 (= call!202346 (validRegex!4118 (ite c!495115 (reg!9714 lt!1043025) (ite c!495116 (regTwo!19283 lt!1043025) (regOne!19282 lt!1043025)))))))

(declare-fun bm!202342 () Bool)

(assert (=> bm!202342 (= call!202347 (validRegex!4118 (ite c!495116 (regOne!19283 lt!1043025) (regTwo!19282 lt!1043025))))))

(declare-fun bm!202343 () Bool)

(declare-fun call!202348 () Bool)

(assert (=> bm!202343 (= call!202348 call!202346)))

(declare-fun b!3006944 () Bool)

(assert (=> b!3006944 (= e!1888404 call!202348)))

(declare-fun b!3006945 () Bool)

(declare-fun e!1888401 () Bool)

(assert (=> b!3006945 (= e!1888399 e!1888401)))

(declare-fun res!1239284 () Bool)

(assert (=> b!3006945 (=> (not res!1239284) (not e!1888401))))

(assert (=> b!3006945 (= res!1239284 call!202348)))

(declare-fun d!846992 () Bool)

(declare-fun res!1239285 () Bool)

(declare-fun e!1888403 () Bool)

(assert (=> d!846992 (=> res!1239285 e!1888403)))

(assert (=> d!846992 (= res!1239285 ((_ is ElementMatch!9385) lt!1043025))))

(assert (=> d!846992 (= (validRegex!4118 lt!1043025) e!1888403)))

(declare-fun b!3006946 () Bool)

(assert (=> b!3006946 (= e!1888401 call!202347)))

(declare-fun b!3006947 () Bool)

(assert (=> b!3006947 (= e!1888403 e!1888400)))

(assert (=> b!3006947 (= c!495115 ((_ is Star!9385) lt!1043025))))

(assert (= (and d!846992 (not res!1239285)) b!3006947))

(assert (= (and b!3006947 c!495115) b!3006941))

(assert (= (and b!3006947 (not c!495115)) b!3006943))

(assert (= (and b!3006941 res!1239281) b!3006939))

(assert (= (and b!3006943 c!495116) b!3006940))

(assert (= (and b!3006943 (not c!495116)) b!3006942))

(assert (= (and b!3006940 res!1239282) b!3006944))

(assert (= (and b!3006942 (not res!1239283)) b!3006945))

(assert (= (and b!3006945 res!1239284) b!3006946))

(assert (= (or b!3006940 b!3006946) bm!202342))

(assert (= (or b!3006944 b!3006945) bm!202343))

(assert (= (or b!3006939 bm!202343) bm!202341))

(declare-fun m!3355087 () Bool)

(assert (=> b!3006941 m!3355087))

(declare-fun m!3355089 () Bool)

(assert (=> bm!202341 m!3355089))

(declare-fun m!3355091 () Bool)

(assert (=> bm!202342 m!3355091))

(assert (=> d!846908 d!846992))

(declare-fun bs!528875 () Bool)

(declare-fun b!3006963 () Bool)

(assert (= bs!528875 (and b!3006963 b!3006577)))

(declare-fun lambda!112466 () Int)

(assert (=> bs!528875 (= (and (= (reg!9714 (regOne!19283 lt!1043025)) (reg!9714 r!17423)) (= (regOne!19283 lt!1043025) r!17423)) (= lambda!112466 lambda!112449))))

(declare-fun bs!528876 () Bool)

(assert (= bs!528876 (and b!3006963 b!3006050)))

(assert (=> bs!528876 (not (= lambda!112466 lambda!112417))))

(declare-fun bs!528877 () Bool)

(assert (= bs!528877 (and b!3006963 d!846842)))

(assert (=> bs!528877 (not (= lambda!112466 lambda!112438))))

(declare-fun bs!528878 () Bool)

(assert (= bs!528878 (and b!3006963 b!3006652)))

(assert (=> bs!528878 (= (and (= (reg!9714 (regOne!19283 lt!1043025)) (reg!9714 lt!1043025)) (= (regOne!19283 lt!1043025) lt!1043025)) (= lambda!112466 lambda!112451))))

(declare-fun bs!528879 () Bool)

(assert (= bs!528879 (and b!3006963 b!3006648)))

(assert (=> bs!528879 (not (= lambda!112466 lambda!112452))))

(assert (=> bs!528876 (= (and (= (reg!9714 (regOne!19283 lt!1043025)) lt!1043036) (= (regOne!19283 lt!1043025) lt!1043025)) (= lambda!112466 lambda!112418))))

(assert (=> bs!528877 (= (and (= (reg!9714 (regOne!19283 lt!1043025)) lt!1043036) (= (regOne!19283 lt!1043025) (Star!9385 lt!1043036))) (= lambda!112466 lambda!112439))))

(declare-fun bs!528880 () Bool)

(assert (= bs!528880 (and b!3006963 b!3006573)))

(assert (=> bs!528880 (not (= lambda!112466 lambda!112450))))

(declare-fun bs!528881 () Bool)

(assert (= bs!528881 (and b!3006963 d!846876)))

(assert (=> bs!528881 (not (= lambda!112466 lambda!112444))))

(assert (=> b!3006963 true))

(assert (=> b!3006963 true))

(declare-fun bs!528882 () Bool)

(declare-fun b!3006959 () Bool)

(assert (= bs!528882 (and b!3006959 b!3006577)))

(declare-fun lambda!112467 () Int)

(assert (=> bs!528882 (not (= lambda!112467 lambda!112449))))

(declare-fun bs!528883 () Bool)

(assert (= bs!528883 (and b!3006959 b!3006050)))

(assert (=> bs!528883 (not (= lambda!112467 lambda!112417))))

(declare-fun bs!528884 () Bool)

(assert (= bs!528884 (and b!3006959 d!846842)))

(assert (=> bs!528884 (not (= lambda!112467 lambda!112438))))

(declare-fun bs!528885 () Bool)

(assert (= bs!528885 (and b!3006959 b!3006963)))

(assert (=> bs!528885 (not (= lambda!112467 lambda!112466))))

(declare-fun bs!528886 () Bool)

(assert (= bs!528886 (and b!3006959 b!3006652)))

(assert (=> bs!528886 (not (= lambda!112467 lambda!112451))))

(declare-fun bs!528887 () Bool)

(assert (= bs!528887 (and b!3006959 b!3006648)))

(assert (=> bs!528887 (= (and (= (regOne!19282 (regOne!19283 lt!1043025)) (regOne!19282 lt!1043025)) (= (regTwo!19282 (regOne!19283 lt!1043025)) (regTwo!19282 lt!1043025))) (= lambda!112467 lambda!112452))))

(assert (=> bs!528883 (not (= lambda!112467 lambda!112418))))

(assert (=> bs!528884 (not (= lambda!112467 lambda!112439))))

(declare-fun bs!528888 () Bool)

(assert (= bs!528888 (and b!3006959 b!3006573)))

(assert (=> bs!528888 (= (and (= (regOne!19282 (regOne!19283 lt!1043025)) (regOne!19282 r!17423)) (= (regTwo!19282 (regOne!19283 lt!1043025)) (regTwo!19282 r!17423))) (= lambda!112467 lambda!112450))))

(declare-fun bs!528889 () Bool)

(assert (= bs!528889 (and b!3006959 d!846876)))

(assert (=> bs!528889 (not (= lambda!112467 lambda!112444))))

(assert (=> b!3006959 true))

(assert (=> b!3006959 true))

(declare-fun b!3006958 () Bool)

(declare-fun e!1888412 () Bool)

(declare-fun e!1888417 () Bool)

(assert (=> b!3006958 (= e!1888412 e!1888417)))

(declare-fun c!495122 () Bool)

(assert (=> b!3006958 (= c!495122 ((_ is Star!9385) (regOne!19283 lt!1043025)))))

(declare-fun call!202353 () Bool)

(assert (=> b!3006959 (= e!1888417 call!202353)))

(declare-fun b!3006960 () Bool)

(declare-fun c!495123 () Bool)

(assert (=> b!3006960 (= c!495123 ((_ is ElementMatch!9385) (regOne!19283 lt!1043025)))))

(declare-fun e!1888415 () Bool)

(declare-fun e!1888416 () Bool)

(assert (=> b!3006960 (= e!1888415 e!1888416)))

(declare-fun b!3006961 () Bool)

(assert (=> b!3006961 (= e!1888416 (= s!11993 (Cons!35126 (c!494883 (regOne!19283 lt!1043025)) Nil!35126)))))

(declare-fun b!3006962 () Bool)

(declare-fun res!1239287 () Bool)

(declare-fun e!1888411 () Bool)

(assert (=> b!3006962 (=> res!1239287 e!1888411)))

(declare-fun call!202354 () Bool)

(assert (=> b!3006962 (= res!1239287 call!202354)))

(assert (=> b!3006962 (= e!1888417 e!1888411)))

(assert (=> b!3006963 (= e!1888411 call!202353)))

(declare-fun b!3006964 () Bool)

(declare-fun e!1888413 () Bool)

(assert (=> b!3006964 (= e!1888412 e!1888413)))

(declare-fun res!1239286 () Bool)

(assert (=> b!3006964 (= res!1239286 (matchRSpec!1522 (regOne!19283 (regOne!19283 lt!1043025)) s!11993))))

(assert (=> b!3006964 (=> res!1239286 e!1888413)))

(declare-fun b!3006965 () Bool)

(declare-fun e!1888414 () Bool)

(assert (=> b!3006965 (= e!1888414 call!202354)))

(declare-fun b!3006966 () Bool)

(assert (=> b!3006966 (= e!1888414 e!1888415)))

(declare-fun res!1239288 () Bool)

(assert (=> b!3006966 (= res!1239288 (not ((_ is EmptyLang!9385) (regOne!19283 lt!1043025))))))

(assert (=> b!3006966 (=> (not res!1239288) (not e!1888415))))

(declare-fun b!3006967 () Bool)

(declare-fun c!495125 () Bool)

(assert (=> b!3006967 (= c!495125 ((_ is Union!9385) (regOne!19283 lt!1043025)))))

(assert (=> b!3006967 (= e!1888416 e!1888412)))

(declare-fun bm!202348 () Bool)

(assert (=> bm!202348 (= call!202353 (Exists!1654 (ite c!495122 lambda!112466 lambda!112467)))))

(declare-fun d!846996 () Bool)

(declare-fun c!495124 () Bool)

(assert (=> d!846996 (= c!495124 ((_ is EmptyExpr!9385) (regOne!19283 lt!1043025)))))

(assert (=> d!846996 (= (matchRSpec!1522 (regOne!19283 lt!1043025) s!11993) e!1888414)))

(declare-fun b!3006968 () Bool)

(assert (=> b!3006968 (= e!1888413 (matchRSpec!1522 (regTwo!19283 (regOne!19283 lt!1043025)) s!11993))))

(declare-fun bm!202349 () Bool)

(assert (=> bm!202349 (= call!202354 (isEmpty!19407 s!11993))))

(assert (= (and d!846996 c!495124) b!3006965))

(assert (= (and d!846996 (not c!495124)) b!3006966))

(assert (= (and b!3006966 res!1239288) b!3006960))

(assert (= (and b!3006960 c!495123) b!3006961))

(assert (= (and b!3006960 (not c!495123)) b!3006967))

(assert (= (and b!3006967 c!495125) b!3006964))

(assert (= (and b!3006967 (not c!495125)) b!3006958))

(assert (= (and b!3006964 (not res!1239286)) b!3006968))

(assert (= (and b!3006958 c!495122) b!3006962))

(assert (= (and b!3006958 (not c!495122)) b!3006959))

(assert (= (and b!3006962 (not res!1239287)) b!3006963))

(assert (= (or b!3006963 b!3006959) bm!202348))

(assert (= (or b!3006965 b!3006962) bm!202349))

(declare-fun m!3355153 () Bool)

(assert (=> b!3006964 m!3355153))

(declare-fun m!3355155 () Bool)

(assert (=> bm!202348 m!3355155))

(declare-fun m!3355157 () Bool)

(assert (=> b!3006968 m!3355157))

(assert (=> bm!202349 m!3354617))

(assert (=> b!3006653 d!846996))

(assert (=> b!3006728 d!846980))

(declare-fun b!3007034 () Bool)

(declare-fun e!1888459 () Bool)

(declare-fun lt!1043165 () Bool)

(declare-fun call!202365 () Bool)

(assert (=> b!3007034 (= e!1888459 (= lt!1043165 call!202365))))

(declare-fun b!3007035 () Bool)

(declare-fun res!1239321 () Bool)

(declare-fun e!1888455 () Bool)

(assert (=> b!3007035 (=> (not res!1239321) (not e!1888455))))

(assert (=> b!3007035 (= res!1239321 (not call!202365))))

(declare-fun b!3007036 () Bool)

(declare-fun res!1239319 () Bool)

(declare-fun e!1888453 () Bool)

(assert (=> b!3007036 (=> res!1239319 e!1888453)))

(assert (=> b!3007036 (= res!1239319 e!1888455)))

(declare-fun res!1239325 () Bool)

(assert (=> b!3007036 (=> (not res!1239325) (not e!1888455))))

(assert (=> b!3007036 (= res!1239325 lt!1043165)))

(declare-fun b!3007037 () Bool)

(declare-fun e!1888454 () Bool)

(assert (=> b!3007037 (= e!1888459 e!1888454)))

(declare-fun c!495145 () Bool)

(assert (=> b!3007037 (= c!495145 ((_ is EmptyLang!9385) (simplify!376 (reg!9714 r!17423))))))

(declare-fun bm!202360 () Bool)

(assert (=> bm!202360 (= call!202365 (isEmpty!19407 (_1!20164 lt!1043032)))))

(declare-fun b!3007038 () Bool)

(declare-fun res!1239318 () Bool)

(declare-fun e!1888458 () Bool)

(assert (=> b!3007038 (=> res!1239318 e!1888458)))

(assert (=> b!3007038 (= res!1239318 (not (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032)))))))

(declare-fun b!3007039 () Bool)

(assert (=> b!3007039 (= e!1888454 (not lt!1043165))))

(declare-fun b!3007040 () Bool)

(declare-fun e!1888457 () Bool)

(assert (=> b!3007040 (= e!1888457 e!1888458)))

(declare-fun res!1239323 () Bool)

(assert (=> b!3007040 (=> res!1239323 e!1888458)))

(assert (=> b!3007040 (= res!1239323 call!202365)))

(declare-fun b!3007041 () Bool)

(declare-fun e!1888456 () Bool)

(assert (=> b!3007041 (= e!1888456 (nullable!3042 (simplify!376 (reg!9714 r!17423))))))

(declare-fun d!847018 () Bool)

(assert (=> d!847018 e!1888459))

(declare-fun c!495146 () Bool)

(assert (=> d!847018 (= c!495146 ((_ is EmptyExpr!9385) (simplify!376 (reg!9714 r!17423))))))

(assert (=> d!847018 (= lt!1043165 e!1888456)))

(declare-fun c!495144 () Bool)

(assert (=> d!847018 (= c!495144 (isEmpty!19407 (_1!20164 lt!1043032)))))

(assert (=> d!847018 (validRegex!4118 (simplify!376 (reg!9714 r!17423)))))

(assert (=> d!847018 (= (matchR!4267 (simplify!376 (reg!9714 r!17423)) (_1!20164 lt!1043032)) lt!1043165)))

(declare-fun b!3007042 () Bool)

(declare-fun res!1239324 () Bool)

(assert (=> b!3007042 (=> (not res!1239324) (not e!1888455))))

(assert (=> b!3007042 (= res!1239324 (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032))))))

(declare-fun b!3007043 () Bool)

(assert (=> b!3007043 (= e!1888453 e!1888457)))

(declare-fun res!1239320 () Bool)

(assert (=> b!3007043 (=> (not res!1239320) (not e!1888457))))

(assert (=> b!3007043 (= res!1239320 (not lt!1043165))))

(declare-fun b!3007044 () Bool)

(declare-fun res!1239322 () Bool)

(assert (=> b!3007044 (=> res!1239322 e!1888453)))

(assert (=> b!3007044 (= res!1239322 (not ((_ is ElementMatch!9385) (simplify!376 (reg!9714 r!17423)))))))

(assert (=> b!3007044 (= e!1888454 e!1888453)))

(declare-fun b!3007045 () Bool)

(assert (=> b!3007045 (= e!1888455 (= (head!6699 (_1!20164 lt!1043032)) (c!494883 (simplify!376 (reg!9714 r!17423)))))))

(declare-fun b!3007046 () Bool)

(assert (=> b!3007046 (= e!1888456 (matchR!4267 (derivativeStep!2640 (simplify!376 (reg!9714 r!17423)) (head!6699 (_1!20164 lt!1043032))) (tail!4925 (_1!20164 lt!1043032))))))

(declare-fun b!3007047 () Bool)

(assert (=> b!3007047 (= e!1888458 (not (= (head!6699 (_1!20164 lt!1043032)) (c!494883 (simplify!376 (reg!9714 r!17423))))))))

(assert (= (and d!847018 c!495144) b!3007041))

(assert (= (and d!847018 (not c!495144)) b!3007046))

(assert (= (and d!847018 c!495146) b!3007034))

(assert (= (and d!847018 (not c!495146)) b!3007037))

(assert (= (and b!3007037 c!495145) b!3007039))

(assert (= (and b!3007037 (not c!495145)) b!3007044))

(assert (= (and b!3007044 (not res!1239322)) b!3007036))

(assert (= (and b!3007036 res!1239325) b!3007035))

(assert (= (and b!3007035 res!1239321) b!3007042))

(assert (= (and b!3007042 res!1239324) b!3007045))

(assert (= (and b!3007036 (not res!1239319)) b!3007043))

(assert (= (and b!3007043 res!1239320) b!3007040))

(assert (= (and b!3007040 (not res!1239323)) b!3007038))

(assert (= (and b!3007038 (not res!1239318)) b!3007047))

(assert (= (or b!3007034 b!3007035 b!3007040) bm!202360))

(assert (=> b!3007047 m!3354879))

(assert (=> b!3007045 m!3354879))

(assert (=> b!3007046 m!3354879))

(assert (=> b!3007046 m!3354609))

(assert (=> b!3007046 m!3354879))

(declare-fun m!3355169 () Bool)

(assert (=> b!3007046 m!3355169))

(assert (=> b!3007046 m!3354883))

(assert (=> b!3007046 m!3355169))

(assert (=> b!3007046 m!3354883))

(declare-fun m!3355171 () Bool)

(assert (=> b!3007046 m!3355171))

(assert (=> bm!202360 m!3354611))

(assert (=> b!3007041 m!3354609))

(declare-fun m!3355173 () Bool)

(assert (=> b!3007041 m!3355173))

(assert (=> d!847018 m!3354611))

(assert (=> d!847018 m!3354609))

(declare-fun m!3355175 () Bool)

(assert (=> d!847018 m!3355175))

(assert (=> b!3007038 m!3354883))

(assert (=> b!3007038 m!3354883))

(assert (=> b!3007038 m!3354887))

(assert (=> b!3007042 m!3354883))

(assert (=> b!3007042 m!3354883))

(assert (=> b!3007042 m!3354887))

(assert (=> d!846890 d!847018))

(assert (=> d!846890 d!846888))

(assert (=> d!846890 d!846818))

(declare-fun b!3007068 () Bool)

(declare-fun e!1888476 () Bool)

(declare-fun call!202367 () Bool)

(assert (=> b!3007068 (= e!1888476 call!202367)))

(declare-fun b!3007069 () Bool)

(declare-fun res!1239335 () Bool)

(declare-fun e!1888475 () Bool)

(assert (=> b!3007069 (=> (not res!1239335) (not e!1888475))))

(declare-fun call!202368 () Bool)

(assert (=> b!3007069 (= res!1239335 call!202368)))

(declare-fun e!1888473 () Bool)

(assert (=> b!3007069 (= e!1888473 e!1888475)))

(declare-fun b!3007070 () Bool)

(declare-fun e!1888471 () Bool)

(assert (=> b!3007070 (= e!1888471 e!1888476)))

(declare-fun res!1239334 () Bool)

(assert (=> b!3007070 (= res!1239334 (not (nullable!3042 (reg!9714 (reg!9714 r!17423)))))))

(assert (=> b!3007070 (=> (not res!1239334) (not e!1888476))))

(declare-fun b!3007071 () Bool)

(declare-fun res!1239336 () Bool)

(declare-fun e!1888470 () Bool)

(assert (=> b!3007071 (=> res!1239336 e!1888470)))

(assert (=> b!3007071 (= res!1239336 (not ((_ is Concat!14706) (reg!9714 r!17423))))))

(assert (=> b!3007071 (= e!1888473 e!1888470)))

(declare-fun b!3007072 () Bool)

(assert (=> b!3007072 (= e!1888471 e!1888473)))

(declare-fun c!495154 () Bool)

(assert (=> b!3007072 (= c!495154 ((_ is Union!9385) (reg!9714 r!17423)))))

(declare-fun bm!202362 () Bool)

(declare-fun c!495153 () Bool)

(assert (=> bm!202362 (= call!202367 (validRegex!4118 (ite c!495153 (reg!9714 (reg!9714 r!17423)) (ite c!495154 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))))))

(declare-fun bm!202363 () Bool)

(assert (=> bm!202363 (= call!202368 (validRegex!4118 (ite c!495154 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))))))

(declare-fun bm!202364 () Bool)

(declare-fun call!202369 () Bool)

(assert (=> bm!202364 (= call!202369 call!202367)))

(declare-fun b!3007073 () Bool)

(assert (=> b!3007073 (= e!1888475 call!202369)))

(declare-fun b!3007074 () Bool)

(declare-fun e!1888472 () Bool)

(assert (=> b!3007074 (= e!1888470 e!1888472)))

(declare-fun res!1239337 () Bool)

(assert (=> b!3007074 (=> (not res!1239337) (not e!1888472))))

(assert (=> b!3007074 (= res!1239337 call!202369)))

(declare-fun d!847028 () Bool)

(declare-fun res!1239338 () Bool)

(declare-fun e!1888474 () Bool)

(assert (=> d!847028 (=> res!1239338 e!1888474)))

(assert (=> d!847028 (= res!1239338 ((_ is ElementMatch!9385) (reg!9714 r!17423)))))

(assert (=> d!847028 (= (validRegex!4118 (reg!9714 r!17423)) e!1888474)))

(declare-fun b!3007075 () Bool)

(assert (=> b!3007075 (= e!1888472 call!202368)))

(declare-fun b!3007076 () Bool)

(assert (=> b!3007076 (= e!1888474 e!1888471)))

(assert (=> b!3007076 (= c!495153 ((_ is Star!9385) (reg!9714 r!17423)))))

(assert (= (and d!847028 (not res!1239338)) b!3007076))

(assert (= (and b!3007076 c!495153) b!3007070))

(assert (= (and b!3007076 (not c!495153)) b!3007072))

(assert (= (and b!3007070 res!1239334) b!3007068))

(assert (= (and b!3007072 c!495154) b!3007069))

(assert (= (and b!3007072 (not c!495154)) b!3007071))

(assert (= (and b!3007069 res!1239335) b!3007073))

(assert (= (and b!3007071 (not res!1239336)) b!3007074))

(assert (= (and b!3007074 res!1239337) b!3007075))

(assert (= (or b!3007069 b!3007075) bm!202363))

(assert (= (or b!3007073 b!3007074) bm!202364))

(assert (= (or b!3007068 bm!202364) bm!202362))

(declare-fun m!3355185 () Bool)

(assert (=> b!3007070 m!3355185))

(declare-fun m!3355187 () Bool)

(assert (=> bm!202362 m!3355187))

(declare-fun m!3355189 () Bool)

(assert (=> bm!202363 m!3355189))

(assert (=> d!846890 d!847028))

(declare-fun d!847032 () Bool)

(assert (=> d!847032 (= (matchR!4267 (reg!9714 r!17423) (_1!20164 lt!1043032)) (matchR!4267 (simplify!376 (reg!9714 r!17423)) (_1!20164 lt!1043032)))))

(assert (=> d!847032 true))

(declare-fun _$95!545 () Unit!49185)

(assert (=> d!847032 (= (choose!17853 (reg!9714 r!17423) (_1!20164 lt!1043032)) _$95!545)))

(declare-fun bs!528892 () Bool)

(assert (= bs!528892 d!847032))

(assert (=> bs!528892 m!3354603))

(assert (=> bs!528892 m!3354609))

(assert (=> bs!528892 m!3354609))

(assert (=> bs!528892 m!3354891))

(assert (=> d!846890 d!847032))

(declare-fun d!847052 () Bool)

(assert (=> d!847052 (= (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032))) ((_ is Nil!35126) (tail!4925 (_1!20164 lt!1043032))))))

(assert (=> b!3006637 d!847052))

(declare-fun d!847054 () Bool)

(assert (=> d!847054 (= (tail!4925 (_1!20164 lt!1043032)) (t!234315 (_1!20164 lt!1043032)))))

(assert (=> b!3006637 d!847054))

(declare-fun d!847056 () Bool)

(assert (=> d!847056 (= (isEmptyLang!475 (ite c!494937 lt!1043075 lt!1043073)) ((_ is EmptyLang!9385) (ite c!494937 lt!1043075 lt!1043073)))))

(assert (=> bm!202244 d!847056))

(declare-fun d!847058 () Bool)

(assert (=> d!847058 true))

(assert (=> d!847058 true))

(declare-fun res!1239348 () Bool)

(assert (=> d!847058 (= (choose!17848 lambda!112417) res!1239348)))

(assert (=> d!846836 d!847058))

(assert (=> bm!202306 d!846990))

(declare-fun b!3007125 () Bool)

(declare-fun e!1888510 () Bool)

(declare-fun lt!1043175 () Bool)

(declare-fun call!202383 () Bool)

(assert (=> b!3007125 (= e!1888510 (= lt!1043175 call!202383))))

(declare-fun b!3007126 () Bool)

(declare-fun res!1239352 () Bool)

(declare-fun e!1888506 () Bool)

(assert (=> b!3007126 (=> (not res!1239352) (not e!1888506))))

(assert (=> b!3007126 (= res!1239352 (not call!202383))))

(declare-fun b!3007127 () Bool)

(declare-fun res!1239350 () Bool)

(declare-fun e!1888504 () Bool)

(assert (=> b!3007127 (=> res!1239350 e!1888504)))

(assert (=> b!3007127 (= res!1239350 e!1888506)))

(declare-fun res!1239356 () Bool)

(assert (=> b!3007127 (=> (not res!1239356) (not e!1888506))))

(assert (=> b!3007127 (= res!1239356 lt!1043175)))

(declare-fun b!3007128 () Bool)

(declare-fun e!1888505 () Bool)

(assert (=> b!3007128 (= e!1888510 e!1888505)))

(declare-fun c!495177 () Bool)

(assert (=> b!3007128 (= c!495177 ((_ is EmptyLang!9385) (derivativeStep!2640 r!17423 (head!6699 s!11993))))))

(declare-fun bm!202378 () Bool)

(assert (=> bm!202378 (= call!202383 (isEmpty!19407 (tail!4925 s!11993)))))

(declare-fun b!3007129 () Bool)

(declare-fun res!1239349 () Bool)

(declare-fun e!1888509 () Bool)

(assert (=> b!3007129 (=> res!1239349 e!1888509)))

(assert (=> b!3007129 (= res!1239349 (not (isEmpty!19407 (tail!4925 (tail!4925 s!11993)))))))

(declare-fun b!3007130 () Bool)

(assert (=> b!3007130 (= e!1888505 (not lt!1043175))))

(declare-fun b!3007131 () Bool)

(declare-fun e!1888508 () Bool)

(assert (=> b!3007131 (= e!1888508 e!1888509)))

(declare-fun res!1239354 () Bool)

(assert (=> b!3007131 (=> res!1239354 e!1888509)))

(assert (=> b!3007131 (= res!1239354 call!202383)))

(declare-fun b!3007132 () Bool)

(declare-fun e!1888507 () Bool)

(assert (=> b!3007132 (= e!1888507 (nullable!3042 (derivativeStep!2640 r!17423 (head!6699 s!11993))))))

(declare-fun d!847060 () Bool)

(assert (=> d!847060 e!1888510))

(declare-fun c!495178 () Bool)

(assert (=> d!847060 (= c!495178 ((_ is EmptyExpr!9385) (derivativeStep!2640 r!17423 (head!6699 s!11993))))))

(assert (=> d!847060 (= lt!1043175 e!1888507)))

(declare-fun c!495176 () Bool)

(assert (=> d!847060 (= c!495176 (isEmpty!19407 (tail!4925 s!11993)))))

(assert (=> d!847060 (validRegex!4118 (derivativeStep!2640 r!17423 (head!6699 s!11993)))))

(assert (=> d!847060 (= (matchR!4267 (derivativeStep!2640 r!17423 (head!6699 s!11993)) (tail!4925 s!11993)) lt!1043175)))

(declare-fun b!3007133 () Bool)

(declare-fun res!1239355 () Bool)

(assert (=> b!3007133 (=> (not res!1239355) (not e!1888506))))

(assert (=> b!3007133 (= res!1239355 (isEmpty!19407 (tail!4925 (tail!4925 s!11993))))))

(declare-fun b!3007134 () Bool)

(assert (=> b!3007134 (= e!1888504 e!1888508)))

(declare-fun res!1239351 () Bool)

(assert (=> b!3007134 (=> (not res!1239351) (not e!1888508))))

(assert (=> b!3007134 (= res!1239351 (not lt!1043175))))

(declare-fun b!3007135 () Bool)

(declare-fun res!1239353 () Bool)

(assert (=> b!3007135 (=> res!1239353 e!1888504)))

(assert (=> b!3007135 (= res!1239353 (not ((_ is ElementMatch!9385) (derivativeStep!2640 r!17423 (head!6699 s!11993)))))))

(assert (=> b!3007135 (= e!1888505 e!1888504)))

(declare-fun b!3007136 () Bool)

(assert (=> b!3007136 (= e!1888506 (= (head!6699 (tail!4925 s!11993)) (c!494883 (derivativeStep!2640 r!17423 (head!6699 s!11993)))))))

(declare-fun b!3007137 () Bool)

(assert (=> b!3007137 (= e!1888507 (matchR!4267 (derivativeStep!2640 (derivativeStep!2640 r!17423 (head!6699 s!11993)) (head!6699 (tail!4925 s!11993))) (tail!4925 (tail!4925 s!11993))))))

(declare-fun b!3007138 () Bool)

(assert (=> b!3007138 (= e!1888509 (not (= (head!6699 (tail!4925 s!11993)) (c!494883 (derivativeStep!2640 r!17423 (head!6699 s!11993))))))))

(assert (= (and d!847060 c!495176) b!3007132))

(assert (= (and d!847060 (not c!495176)) b!3007137))

(assert (= (and d!847060 c!495178) b!3007125))

(assert (= (and d!847060 (not c!495178)) b!3007128))

(assert (= (and b!3007128 c!495177) b!3007130))

(assert (= (and b!3007128 (not c!495177)) b!3007135))

(assert (= (and b!3007135 (not res!1239353)) b!3007127))

(assert (= (and b!3007127 res!1239356) b!3007126))

(assert (= (and b!3007126 res!1239352) b!3007133))

(assert (= (and b!3007133 res!1239355) b!3007136))

(assert (= (and b!3007127 (not res!1239350)) b!3007134))

(assert (= (and b!3007134 res!1239351) b!3007131))

(assert (= (and b!3007131 (not res!1239354)) b!3007129))

(assert (= (and b!3007129 (not res!1239349)) b!3007138))

(assert (= (or b!3007125 b!3007126 b!3007131) bm!202378))

(assert (=> b!3007138 m!3354865))

(declare-fun m!3355225 () Bool)

(assert (=> b!3007138 m!3355225))

(assert (=> b!3007136 m!3354865))

(assert (=> b!3007136 m!3355225))

(assert (=> b!3007137 m!3354865))

(assert (=> b!3007137 m!3355225))

(assert (=> b!3007137 m!3354863))

(assert (=> b!3007137 m!3355225))

(declare-fun m!3355227 () Bool)

(assert (=> b!3007137 m!3355227))

(assert (=> b!3007137 m!3354865))

(declare-fun m!3355229 () Bool)

(assert (=> b!3007137 m!3355229))

(assert (=> b!3007137 m!3355227))

(assert (=> b!3007137 m!3355229))

(declare-fun m!3355231 () Bool)

(assert (=> b!3007137 m!3355231))

(assert (=> bm!202378 m!3354865))

(assert (=> bm!202378 m!3354871))

(assert (=> b!3007132 m!3354863))

(declare-fun m!3355233 () Bool)

(assert (=> b!3007132 m!3355233))

(assert (=> d!847060 m!3354865))

(assert (=> d!847060 m!3354871))

(assert (=> d!847060 m!3354863))

(declare-fun m!3355235 () Bool)

(assert (=> d!847060 m!3355235))

(assert (=> b!3007129 m!3354865))

(assert (=> b!3007129 m!3355229))

(assert (=> b!3007129 m!3355229))

(declare-fun m!3355237 () Bool)

(assert (=> b!3007129 m!3355237))

(assert (=> b!3007133 m!3354865))

(assert (=> b!3007133 m!3355229))

(assert (=> b!3007133 m!3355229))

(assert (=> b!3007133 m!3355237))

(assert (=> b!3006623 d!847060))

(declare-fun b!3007204 () Bool)

(declare-fun e!1888550 () Regex!9385)

(declare-fun call!202403 () Regex!9385)

(declare-fun call!202402 () Regex!9385)

(assert (=> b!3007204 (= e!1888550 (Union!9385 call!202403 call!202402))))

(declare-fun b!3007205 () Bool)

(declare-fun e!1888554 () Regex!9385)

(assert (=> b!3007205 (= e!1888554 (ite (= (head!6699 s!11993) (c!494883 r!17423)) EmptyExpr!9385 EmptyLang!9385))))

(declare-fun b!3007206 () Bool)

(declare-fun c!495204 () Bool)

(assert (=> b!3007206 (= c!495204 ((_ is Union!9385) r!17423))))

(assert (=> b!3007206 (= e!1888554 e!1888550)))

(declare-fun bm!202396 () Bool)

(assert (=> bm!202396 (= call!202402 (derivativeStep!2640 (ite c!495204 (regTwo!19283 r!17423) (regTwo!19282 r!17423)) (head!6699 s!11993)))))

(declare-fun bm!202397 () Bool)

(declare-fun call!202401 () Regex!9385)

(assert (=> bm!202397 (= call!202401 call!202403)))

(declare-fun bm!202398 () Bool)

(declare-fun call!202404 () Regex!9385)

(assert (=> bm!202398 (= call!202404 call!202401)))

(declare-fun b!3007207 () Bool)

(declare-fun e!1888552 () Regex!9385)

(assert (=> b!3007207 (= e!1888552 EmptyLang!9385)))

(declare-fun b!3007208 () Bool)

(declare-fun c!495203 () Bool)

(assert (=> b!3007208 (= c!495203 (nullable!3042 (regOne!19282 r!17423)))))

(declare-fun e!1888551 () Regex!9385)

(declare-fun e!1888553 () Regex!9385)

(assert (=> b!3007208 (= e!1888551 e!1888553)))

(declare-fun b!3007209 () Bool)

(assert (=> b!3007209 (= e!1888553 (Union!9385 (Concat!14706 call!202404 (regTwo!19282 r!17423)) EmptyLang!9385))))

(declare-fun b!3007210 () Bool)

(assert (=> b!3007210 (= e!1888550 e!1888551)))

(declare-fun c!495205 () Bool)

(assert (=> b!3007210 (= c!495205 ((_ is Star!9385) r!17423))))

(declare-fun b!3007211 () Bool)

(assert (=> b!3007211 (= e!1888553 (Union!9385 (Concat!14706 call!202404 (regTwo!19282 r!17423)) call!202402))))

(declare-fun b!3007212 () Bool)

(assert (=> b!3007212 (= e!1888552 e!1888554)))

(declare-fun c!495202 () Bool)

(assert (=> b!3007212 (= c!495202 ((_ is ElementMatch!9385) r!17423))))

(declare-fun d!847062 () Bool)

(declare-fun lt!1043180 () Regex!9385)

(assert (=> d!847062 (validRegex!4118 lt!1043180)))

(assert (=> d!847062 (= lt!1043180 e!1888552)))

(declare-fun c!495201 () Bool)

(assert (=> d!847062 (= c!495201 (or ((_ is EmptyExpr!9385) r!17423) ((_ is EmptyLang!9385) r!17423)))))

(assert (=> d!847062 (validRegex!4118 r!17423)))

(assert (=> d!847062 (= (derivativeStep!2640 r!17423 (head!6699 s!11993)) lt!1043180)))

(declare-fun bm!202399 () Bool)

(assert (=> bm!202399 (= call!202403 (derivativeStep!2640 (ite c!495204 (regOne!19283 r!17423) (ite c!495205 (reg!9714 r!17423) (regOne!19282 r!17423))) (head!6699 s!11993)))))

(declare-fun b!3007213 () Bool)

(assert (=> b!3007213 (= e!1888551 (Concat!14706 call!202401 r!17423))))

(assert (= (and d!847062 c!495201) b!3007207))

(assert (= (and d!847062 (not c!495201)) b!3007212))

(assert (= (and b!3007212 c!495202) b!3007205))

(assert (= (and b!3007212 (not c!495202)) b!3007206))

(assert (= (and b!3007206 c!495204) b!3007204))

(assert (= (and b!3007206 (not c!495204)) b!3007210))

(assert (= (and b!3007210 c!495205) b!3007213))

(assert (= (and b!3007210 (not c!495205)) b!3007208))

(assert (= (and b!3007208 c!495203) b!3007211))

(assert (= (and b!3007208 (not c!495203)) b!3007209))

(assert (= (or b!3007211 b!3007209) bm!202398))

(assert (= (or b!3007213 bm!202398) bm!202397))

(assert (= (or b!3007204 b!3007211) bm!202396))

(assert (= (or b!3007204 bm!202397) bm!202399))

(assert (=> bm!202396 m!3354861))

(declare-fun m!3355275 () Bool)

(assert (=> bm!202396 m!3355275))

(declare-fun m!3355277 () Bool)

(assert (=> b!3007208 m!3355277))

(declare-fun m!3355279 () Bool)

(assert (=> d!847062 m!3355279))

(assert (=> d!847062 m!3354589))

(assert (=> bm!202399 m!3354861))

(declare-fun m!3355281 () Bool)

(assert (=> bm!202399 m!3355281))

(assert (=> b!3006623 d!847062))

(assert (=> b!3006623 d!846980))

(assert (=> b!3006623 d!846986))

(assert (=> d!846902 d!846900))

(declare-fun b!3007214 () Bool)

(declare-fun e!1888561 () Bool)

(declare-fun call!202405 () Bool)

(assert (=> b!3007214 (= e!1888561 call!202405)))

(declare-fun b!3007215 () Bool)

(declare-fun res!1239379 () Bool)

(declare-fun e!1888560 () Bool)

(assert (=> b!3007215 (=> (not res!1239379) (not e!1888560))))

(declare-fun call!202406 () Bool)

(assert (=> b!3007215 (= res!1239379 call!202406)))

(declare-fun e!1888558 () Bool)

(assert (=> b!3007215 (= e!1888558 e!1888560)))

(declare-fun b!3007216 () Bool)

(declare-fun e!1888556 () Bool)

(assert (=> b!3007216 (= e!1888556 e!1888561)))

(declare-fun res!1239378 () Bool)

(assert (=> b!3007216 (= res!1239378 (not (nullable!3042 (reg!9714 lt!1043036))))))

(assert (=> b!3007216 (=> (not res!1239378) (not e!1888561))))

(declare-fun b!3007217 () Bool)

(declare-fun res!1239380 () Bool)

(declare-fun e!1888555 () Bool)

(assert (=> b!3007217 (=> res!1239380 e!1888555)))

(assert (=> b!3007217 (= res!1239380 (not ((_ is Concat!14706) lt!1043036)))))

(assert (=> b!3007217 (= e!1888558 e!1888555)))

(declare-fun b!3007218 () Bool)

(assert (=> b!3007218 (= e!1888556 e!1888558)))

(declare-fun c!495207 () Bool)

(assert (=> b!3007218 (= c!495207 ((_ is Union!9385) lt!1043036))))

(declare-fun bm!202400 () Bool)

(declare-fun c!495206 () Bool)

(assert (=> bm!202400 (= call!202405 (validRegex!4118 (ite c!495206 (reg!9714 lt!1043036) (ite c!495207 (regTwo!19283 lt!1043036) (regOne!19282 lt!1043036)))))))

(declare-fun bm!202401 () Bool)

(assert (=> bm!202401 (= call!202406 (validRegex!4118 (ite c!495207 (regOne!19283 lt!1043036) (regTwo!19282 lt!1043036))))))

(declare-fun bm!202402 () Bool)

(declare-fun call!202407 () Bool)

(assert (=> bm!202402 (= call!202407 call!202405)))

(declare-fun b!3007219 () Bool)

(assert (=> b!3007219 (= e!1888560 call!202407)))

(declare-fun b!3007220 () Bool)

(declare-fun e!1888557 () Bool)

(assert (=> b!3007220 (= e!1888555 e!1888557)))

(declare-fun res!1239381 () Bool)

(assert (=> b!3007220 (=> (not res!1239381) (not e!1888557))))

(assert (=> b!3007220 (= res!1239381 call!202407)))

(declare-fun d!847080 () Bool)

(declare-fun res!1239382 () Bool)

(declare-fun e!1888559 () Bool)

(assert (=> d!847080 (=> res!1239382 e!1888559)))

(assert (=> d!847080 (= res!1239382 ((_ is ElementMatch!9385) lt!1043036))))

(assert (=> d!847080 (= (validRegex!4118 lt!1043036) e!1888559)))

(declare-fun b!3007221 () Bool)

(assert (=> b!3007221 (= e!1888557 call!202406)))

(declare-fun b!3007222 () Bool)

(assert (=> b!3007222 (= e!1888559 e!1888556)))

(assert (=> b!3007222 (= c!495206 ((_ is Star!9385) lt!1043036))))

(assert (= (and d!847080 (not res!1239382)) b!3007222))

(assert (= (and b!3007222 c!495206) b!3007216))

(assert (= (and b!3007222 (not c!495206)) b!3007218))

(assert (= (and b!3007216 res!1239378) b!3007214))

(assert (= (and b!3007218 c!495207) b!3007215))

(assert (= (and b!3007218 (not c!495207)) b!3007217))

(assert (= (and b!3007215 res!1239379) b!3007219))

(assert (= (and b!3007217 (not res!1239380)) b!3007220))

(assert (= (and b!3007220 res!1239381) b!3007221))

(assert (= (or b!3007215 b!3007221) bm!202401))

(assert (= (or b!3007219 b!3007220) bm!202402))

(assert (= (or b!3007214 bm!202402) bm!202400))

(declare-fun m!3355283 () Bool)

(assert (=> b!3007216 m!3355283))

(declare-fun m!3355285 () Bool)

(assert (=> bm!202400 m!3355285))

(declare-fun m!3355287 () Bool)

(assert (=> bm!202401 m!3355287))

(assert (=> d!846902 d!847080))

(declare-fun d!847084 () Bool)

(assert (=> d!847084 (= (Exists!1654 (ite c!495044 lambda!112451 lambda!112452)) (choose!17848 (ite c!495044 lambda!112451 lambda!112452)))))

(declare-fun bs!528954 () Bool)

(assert (= bs!528954 d!847084))

(declare-fun m!3355289 () Bool)

(assert (=> bs!528954 m!3355289))

(assert (=> bm!202294 d!847084))

(declare-fun bs!528955 () Bool)

(declare-fun b!3007242 () Bool)

(assert (= bs!528955 (and b!3007242 b!3006577)))

(declare-fun lambda!112472 () Int)

(assert (=> bs!528955 (= (and (= (reg!9714 (regTwo!19283 r!17423)) (reg!9714 r!17423)) (= (regTwo!19283 r!17423) r!17423)) (= lambda!112472 lambda!112449))))

(declare-fun bs!528956 () Bool)

(assert (= bs!528956 (and b!3007242 b!3006050)))

(assert (=> bs!528956 (not (= lambda!112472 lambda!112417))))

(declare-fun bs!528957 () Bool)

(assert (= bs!528957 (and b!3007242 d!846842)))

(assert (=> bs!528957 (not (= lambda!112472 lambda!112438))))

(declare-fun bs!528958 () Bool)

(assert (= bs!528958 (and b!3007242 b!3006963)))

(assert (=> bs!528958 (= (and (= (reg!9714 (regTwo!19283 r!17423)) (reg!9714 (regOne!19283 lt!1043025))) (= (regTwo!19283 r!17423) (regOne!19283 lt!1043025))) (= lambda!112472 lambda!112466))))

(declare-fun bs!528959 () Bool)

(assert (= bs!528959 (and b!3007242 b!3006652)))

(assert (=> bs!528959 (= (and (= (reg!9714 (regTwo!19283 r!17423)) (reg!9714 lt!1043025)) (= (regTwo!19283 r!17423) lt!1043025)) (= lambda!112472 lambda!112451))))

(declare-fun bs!528960 () Bool)

(assert (= bs!528960 (and b!3007242 b!3006648)))

(assert (=> bs!528960 (not (= lambda!112472 lambda!112452))))

(assert (=> bs!528957 (= (and (= (reg!9714 (regTwo!19283 r!17423)) lt!1043036) (= (regTwo!19283 r!17423) (Star!9385 lt!1043036))) (= lambda!112472 lambda!112439))))

(declare-fun bs!528961 () Bool)

(assert (= bs!528961 (and b!3007242 b!3006573)))

(assert (=> bs!528961 (not (= lambda!112472 lambda!112450))))

(declare-fun bs!528962 () Bool)

(assert (= bs!528962 (and b!3007242 d!846876)))

(assert (=> bs!528962 (not (= lambda!112472 lambda!112444))))

(assert (=> bs!528956 (= (and (= (reg!9714 (regTwo!19283 r!17423)) lt!1043036) (= (regTwo!19283 r!17423) lt!1043025)) (= lambda!112472 lambda!112418))))

(declare-fun bs!528963 () Bool)

(assert (= bs!528963 (and b!3007242 b!3006959)))

(assert (=> bs!528963 (not (= lambda!112472 lambda!112467))))

(assert (=> b!3007242 true))

(assert (=> b!3007242 true))

(declare-fun bs!528964 () Bool)

(declare-fun b!3007238 () Bool)

(assert (= bs!528964 (and b!3007238 b!3006577)))

(declare-fun lambda!112473 () Int)

(assert (=> bs!528964 (not (= lambda!112473 lambda!112449))))

(declare-fun bs!528965 () Bool)

(assert (= bs!528965 (and b!3007238 b!3006050)))

(assert (=> bs!528965 (not (= lambda!112473 lambda!112417))))

(declare-fun bs!528966 () Bool)

(assert (= bs!528966 (and b!3007238 d!846842)))

(assert (=> bs!528966 (not (= lambda!112473 lambda!112438))))

(declare-fun bs!528968 () Bool)

(assert (= bs!528968 (and b!3007238 b!3006963)))

(assert (=> bs!528968 (not (= lambda!112473 lambda!112466))))

(declare-fun bs!528970 () Bool)

(assert (= bs!528970 (and b!3007238 b!3006652)))

(assert (=> bs!528970 (not (= lambda!112473 lambda!112451))))

(declare-fun bs!528971 () Bool)

(assert (= bs!528971 (and b!3007238 b!3006648)))

(assert (=> bs!528971 (= (and (= (regOne!19282 (regTwo!19283 r!17423)) (regOne!19282 lt!1043025)) (= (regTwo!19282 (regTwo!19283 r!17423)) (regTwo!19282 lt!1043025))) (= lambda!112473 lambda!112452))))

(declare-fun bs!528972 () Bool)

(assert (= bs!528972 (and b!3007238 b!3007242)))

(assert (=> bs!528972 (not (= lambda!112473 lambda!112472))))

(assert (=> bs!528966 (not (= lambda!112473 lambda!112439))))

(declare-fun bs!528973 () Bool)

(assert (= bs!528973 (and b!3007238 b!3006573)))

(assert (=> bs!528973 (= (and (= (regOne!19282 (regTwo!19283 r!17423)) (regOne!19282 r!17423)) (= (regTwo!19282 (regTwo!19283 r!17423)) (regTwo!19282 r!17423))) (= lambda!112473 lambda!112450))))

(declare-fun bs!528974 () Bool)

(assert (= bs!528974 (and b!3007238 d!846876)))

(assert (=> bs!528974 (not (= lambda!112473 lambda!112444))))

(assert (=> bs!528965 (not (= lambda!112473 lambda!112418))))

(declare-fun bs!528975 () Bool)

(assert (= bs!528975 (and b!3007238 b!3006959)))

(assert (=> bs!528975 (= (and (= (regOne!19282 (regTwo!19283 r!17423)) (regOne!19282 (regOne!19283 lt!1043025))) (= (regTwo!19282 (regTwo!19283 r!17423)) (regTwo!19282 (regOne!19283 lt!1043025)))) (= lambda!112473 lambda!112467))))

(assert (=> b!3007238 true))

(assert (=> b!3007238 true))

(declare-fun b!3007237 () Bool)

(declare-fun e!1888570 () Bool)

(declare-fun e!1888575 () Bool)

(assert (=> b!3007237 (= e!1888570 e!1888575)))

(declare-fun c!495211 () Bool)

(assert (=> b!3007237 (= c!495211 ((_ is Star!9385) (regTwo!19283 r!17423)))))

(declare-fun call!202409 () Bool)

(assert (=> b!3007238 (= e!1888575 call!202409)))

(declare-fun b!3007239 () Bool)

(declare-fun c!495212 () Bool)

(assert (=> b!3007239 (= c!495212 ((_ is ElementMatch!9385) (regTwo!19283 r!17423)))))

(declare-fun e!1888573 () Bool)

(declare-fun e!1888574 () Bool)

(assert (=> b!3007239 (= e!1888573 e!1888574)))

(declare-fun b!3007240 () Bool)

(assert (=> b!3007240 (= e!1888574 (= s!11993 (Cons!35126 (c!494883 (regTwo!19283 r!17423)) Nil!35126)))))

(declare-fun b!3007241 () Bool)

(declare-fun res!1239392 () Bool)

(declare-fun e!1888569 () Bool)

(assert (=> b!3007241 (=> res!1239392 e!1888569)))

(declare-fun call!202410 () Bool)

(assert (=> b!3007241 (= res!1239392 call!202410)))

(assert (=> b!3007241 (= e!1888575 e!1888569)))

(assert (=> b!3007242 (= e!1888569 call!202409)))

(declare-fun b!3007243 () Bool)

(declare-fun e!1888571 () Bool)

(assert (=> b!3007243 (= e!1888570 e!1888571)))

(declare-fun res!1239391 () Bool)

(assert (=> b!3007243 (= res!1239391 (matchRSpec!1522 (regOne!19283 (regTwo!19283 r!17423)) s!11993))))

(assert (=> b!3007243 (=> res!1239391 e!1888571)))

(declare-fun b!3007244 () Bool)

(declare-fun e!1888572 () Bool)

(assert (=> b!3007244 (= e!1888572 call!202410)))

(declare-fun b!3007245 () Bool)

(assert (=> b!3007245 (= e!1888572 e!1888573)))

(declare-fun res!1239393 () Bool)

(assert (=> b!3007245 (= res!1239393 (not ((_ is EmptyLang!9385) (regTwo!19283 r!17423))))))

(assert (=> b!3007245 (=> (not res!1239393) (not e!1888573))))

(declare-fun b!3007246 () Bool)

(declare-fun c!495214 () Bool)

(assert (=> b!3007246 (= c!495214 ((_ is Union!9385) (regTwo!19283 r!17423)))))

(assert (=> b!3007246 (= e!1888574 e!1888570)))

(declare-fun bm!202404 () Bool)

(assert (=> bm!202404 (= call!202409 (Exists!1654 (ite c!495211 lambda!112472 lambda!112473)))))

(declare-fun d!847086 () Bool)

(declare-fun c!495213 () Bool)

(assert (=> d!847086 (= c!495213 ((_ is EmptyExpr!9385) (regTwo!19283 r!17423)))))

(assert (=> d!847086 (= (matchRSpec!1522 (regTwo!19283 r!17423) s!11993) e!1888572)))

(declare-fun b!3007247 () Bool)

(assert (=> b!3007247 (= e!1888571 (matchRSpec!1522 (regTwo!19283 (regTwo!19283 r!17423)) s!11993))))

(declare-fun bm!202405 () Bool)

(assert (=> bm!202405 (= call!202410 (isEmpty!19407 s!11993))))

(assert (= (and d!847086 c!495213) b!3007244))

(assert (= (and d!847086 (not c!495213)) b!3007245))

(assert (= (and b!3007245 res!1239393) b!3007239))

(assert (= (and b!3007239 c!495212) b!3007240))

(assert (= (and b!3007239 (not c!495212)) b!3007246))

(assert (= (and b!3007246 c!495214) b!3007243))

(assert (= (and b!3007246 (not c!495214)) b!3007237))

(assert (= (and b!3007243 (not res!1239391)) b!3007247))

(assert (= (and b!3007237 c!495211) b!3007241))

(assert (= (and b!3007237 (not c!495211)) b!3007238))

(assert (= (and b!3007241 (not res!1239392)) b!3007242))

(assert (= (or b!3007242 b!3007238) bm!202404))

(assert (= (or b!3007244 b!3007241) bm!202405))

(declare-fun m!3355353 () Bool)

(assert (=> b!3007243 m!3355353))

(declare-fun m!3355355 () Bool)

(assert (=> bm!202404 m!3355355))

(declare-fun m!3355357 () Bool)

(assert (=> b!3007247 m!3355357))

(assert (=> bm!202405 m!3354617))

(assert (=> b!3006582 d!847086))

(declare-fun d!847102 () Bool)

(declare-fun nullableFct!865 (Regex!9385) Bool)

(assert (=> d!847102 (= (nullable!3042 (reg!9714 r!17423)) (nullableFct!865 (reg!9714 r!17423)))))

(declare-fun bs!528976 () Bool)

(assert (= bs!528976 d!847102))

(declare-fun m!3355359 () Bool)

(assert (=> bs!528976 m!3355359))

(assert (=> b!3006694 d!847102))

(assert (=> b!3006641 d!847052))

(assert (=> b!3006641 d!847054))

(assert (=> bm!202295 d!846892))

(declare-fun b!3007283 () Bool)

(declare-fun e!1888601 () Bool)

(declare-fun call!202418 () Bool)

(assert (=> b!3007283 (= e!1888601 call!202418)))

(declare-fun b!3007284 () Bool)

(declare-fun res!1239402 () Bool)

(declare-fun e!1888600 () Bool)

(assert (=> b!3007284 (=> (not res!1239402) (not e!1888600))))

(declare-fun call!202419 () Bool)

(assert (=> b!3007284 (= res!1239402 call!202419)))

(declare-fun e!1888598 () Bool)

(assert (=> b!3007284 (= e!1888598 e!1888600)))

(declare-fun b!3007285 () Bool)

(declare-fun e!1888596 () Bool)

(assert (=> b!3007285 (= e!1888596 e!1888601)))

(declare-fun res!1239401 () Bool)

(assert (=> b!3007285 (= res!1239401 (not (nullable!3042 (reg!9714 lt!1043078))))))

(assert (=> b!3007285 (=> (not res!1239401) (not e!1888601))))

(declare-fun b!3007286 () Bool)

(declare-fun res!1239403 () Bool)

(declare-fun e!1888595 () Bool)

(assert (=> b!3007286 (=> res!1239403 e!1888595)))

(assert (=> b!3007286 (= res!1239403 (not ((_ is Concat!14706) lt!1043078)))))

(assert (=> b!3007286 (= e!1888598 e!1888595)))

(declare-fun b!3007287 () Bool)

(assert (=> b!3007287 (= e!1888596 e!1888598)))

(declare-fun c!495230 () Bool)

(assert (=> b!3007287 (= c!495230 ((_ is Union!9385) lt!1043078))))

(declare-fun c!495229 () Bool)

(declare-fun bm!202413 () Bool)

(assert (=> bm!202413 (= call!202418 (validRegex!4118 (ite c!495229 (reg!9714 lt!1043078) (ite c!495230 (regTwo!19283 lt!1043078) (regOne!19282 lt!1043078)))))))

(declare-fun bm!202414 () Bool)

(assert (=> bm!202414 (= call!202419 (validRegex!4118 (ite c!495230 (regOne!19283 lt!1043078) (regTwo!19282 lt!1043078))))))

(declare-fun bm!202415 () Bool)

(declare-fun call!202420 () Bool)

(assert (=> bm!202415 (= call!202420 call!202418)))

(declare-fun b!3007288 () Bool)

(assert (=> b!3007288 (= e!1888600 call!202420)))

(declare-fun b!3007289 () Bool)

(declare-fun e!1888597 () Bool)

(assert (=> b!3007289 (= e!1888595 e!1888597)))

(declare-fun res!1239404 () Bool)

(assert (=> b!3007289 (=> (not res!1239404) (not e!1888597))))

(assert (=> b!3007289 (= res!1239404 call!202420)))

(declare-fun d!847104 () Bool)

(declare-fun res!1239405 () Bool)

(declare-fun e!1888599 () Bool)

(assert (=> d!847104 (=> res!1239405 e!1888599)))

(assert (=> d!847104 (= res!1239405 ((_ is ElementMatch!9385) lt!1043078))))

(assert (=> d!847104 (= (validRegex!4118 lt!1043078) e!1888599)))

(declare-fun b!3007290 () Bool)

(assert (=> b!3007290 (= e!1888597 call!202419)))

(declare-fun b!3007291 () Bool)

(assert (=> b!3007291 (= e!1888599 e!1888596)))

(assert (=> b!3007291 (= c!495229 ((_ is Star!9385) lt!1043078))))

(assert (= (and d!847104 (not res!1239405)) b!3007291))

(assert (= (and b!3007291 c!495229) b!3007285))

(assert (= (and b!3007291 (not c!495229)) b!3007287))

(assert (= (and b!3007285 res!1239401) b!3007283))

(assert (= (and b!3007287 c!495230) b!3007284))

(assert (= (and b!3007287 (not c!495230)) b!3007286))

(assert (= (and b!3007284 res!1239402) b!3007288))

(assert (= (and b!3007286 (not res!1239403)) b!3007289))

(assert (= (and b!3007289 res!1239404) b!3007290))

(assert (= (or b!3007284 b!3007290) bm!202414))

(assert (= (or b!3007288 b!3007289) bm!202415))

(assert (= (or b!3007283 bm!202415) bm!202413))

(declare-fun m!3355361 () Bool)

(assert (=> b!3007285 m!3355361))

(declare-fun m!3355363 () Bool)

(assert (=> bm!202413 m!3355363))

(declare-fun m!3355365 () Bool)

(assert (=> bm!202414 m!3355365))

(assert (=> d!846818 d!847104))

(assert (=> d!846818 d!847028))

(declare-fun b!3007292 () Bool)

(declare-fun e!1888609 () Regex!9385)

(declare-fun lt!1043191 () Regex!9385)

(declare-fun lt!1043195 () Regex!9385)

(assert (=> b!3007292 (= e!1888609 (Concat!14706 lt!1043191 lt!1043195))))

(declare-fun e!1888615 () Bool)

(declare-fun b!3007293 () Bool)

(declare-fun lt!1043196 () Regex!9385)

(assert (=> b!3007293 (= e!1888615 (= (nullable!3042 lt!1043196) (nullable!3042 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423)))))))))

(declare-fun lt!1043193 () Regex!9385)

(declare-fun call!202425 () Bool)

(declare-fun bm!202416 () Bool)

(declare-fun c!495235 () Bool)

(assert (=> bm!202416 (= call!202425 (isEmptyLang!475 (ite c!495235 lt!1043193 lt!1043191)))))

(declare-fun b!3007294 () Bool)

(declare-fun c!495241 () Bool)

(declare-fun e!1888613 () Bool)

(assert (=> b!3007294 (= c!495241 e!1888613)))

(declare-fun res!1239408 () Bool)

(assert (=> b!3007294 (=> res!1239408 e!1888613)))

(declare-fun call!202421 () Bool)

(assert (=> b!3007294 (= res!1239408 call!202421)))

(declare-fun lt!1043194 () Regex!9385)

(declare-fun call!202423 () Regex!9385)

(assert (=> b!3007294 (= lt!1043194 call!202423)))

(declare-fun e!1888607 () Regex!9385)

(declare-fun e!1888611 () Regex!9385)

(assert (=> b!3007294 (= e!1888607 e!1888611)))

(declare-fun bm!202417 () Bool)

(declare-fun call!202426 () Regex!9385)

(assert (=> bm!202417 (= call!202426 call!202423)))

(declare-fun b!3007295 () Bool)

(declare-fun c!495232 () Bool)

(assert (=> b!3007295 (= c!495232 (isEmptyExpr!485 lt!1043191))))

(declare-fun e!1888608 () Regex!9385)

(declare-fun e!1888610 () Regex!9385)

(assert (=> b!3007295 (= e!1888608 e!1888610)))

(declare-fun bm!202418 () Bool)

(declare-fun c!495236 () Bool)

(assert (=> bm!202418 (= call!202423 (simplify!376 (ite c!495236 (reg!9714 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))) (ite c!495235 (regTwo!19283 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))) (regOne!19282 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423)))))))))))

(declare-fun b!3007296 () Bool)

(declare-fun e!1888606 () Regex!9385)

(declare-fun lt!1043192 () Regex!9385)

(assert (=> b!3007296 (= e!1888606 (Union!9385 lt!1043192 lt!1043193))))

(declare-fun b!3007297 () Bool)

(assert (=> b!3007297 (= e!1888611 EmptyExpr!9385)))

(declare-fun b!3007298 () Bool)

(assert (=> b!3007298 (= c!495235 ((_ is Union!9385) (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))))))

(declare-fun e!1888604 () Regex!9385)

(assert (=> b!3007298 (= e!1888607 e!1888604)))

(declare-fun b!3007299 () Bool)

(declare-fun e!1888602 () Regex!9385)

(assert (=> b!3007299 (= e!1888604 e!1888602)))

(declare-fun call!202424 () Regex!9385)

(assert (=> b!3007299 (= lt!1043192 call!202424)))

(assert (=> b!3007299 (= lt!1043193 call!202426)))

(declare-fun c!495231 () Bool)

(declare-fun call!202422 () Bool)

(assert (=> b!3007299 (= c!495231 call!202422)))

(declare-fun bm!202419 () Bool)

(assert (=> bm!202419 (= call!202421 (isEmptyLang!475 (ite c!495236 lt!1043194 (ite c!495235 lt!1043192 lt!1043195))))))

(declare-fun b!3007300 () Bool)

(assert (=> b!3007300 (= e!1888609 lt!1043191)))

(declare-fun b!3007301 () Bool)

(assert (=> b!3007301 (= e!1888610 lt!1043195)))

(declare-fun b!3007302 () Bool)

(declare-fun c!495233 () Bool)

(assert (=> b!3007302 (= c!495233 call!202425)))

(assert (=> b!3007302 (= e!1888602 e!1888606)))

(declare-fun b!3007303 () Bool)

(declare-fun e!1888612 () Regex!9385)

(assert (=> b!3007303 (= e!1888612 e!1888607)))

(assert (=> b!3007303 (= c!495236 ((_ is Star!9385) (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))))))

(declare-fun b!3007304 () Bool)

(declare-fun e!1888605 () Regex!9385)

(declare-fun e!1888603 () Regex!9385)

(assert (=> b!3007304 (= e!1888605 e!1888603)))

(declare-fun c!495239 () Bool)

(assert (=> b!3007304 (= c!495239 ((_ is ElementMatch!9385) (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))))))

(declare-fun b!3007305 () Bool)

(declare-fun e!1888614 () Bool)

(assert (=> b!3007305 (= e!1888614 call!202422)))

(declare-fun b!3007306 () Bool)

(assert (=> b!3007306 (= e!1888608 EmptyLang!9385)))

(declare-fun bm!202420 () Bool)

(assert (=> bm!202420 (= call!202424 (simplify!376 (ite c!495235 (regOne!19283 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))) (regTwo!19282 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))))))))

(declare-fun bm!202421 () Bool)

(assert (=> bm!202421 (= call!202422 call!202421)))

(declare-fun b!3007307 () Bool)

(assert (=> b!3007307 (= e!1888602 lt!1043193)))

(declare-fun b!3007308 () Bool)

(declare-fun c!495240 () Bool)

(assert (=> b!3007308 (= c!495240 ((_ is EmptyExpr!9385) (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))))))

(assert (=> b!3007308 (= e!1888603 e!1888612)))

(declare-fun b!3007309 () Bool)

(assert (=> b!3007309 (= e!1888612 EmptyExpr!9385)))

(declare-fun b!3007310 () Bool)

(assert (=> b!3007310 (= e!1888606 lt!1043192)))

(declare-fun b!3007311 () Bool)

(assert (=> b!3007311 (= e!1888610 e!1888609)))

(declare-fun c!495237 () Bool)

(declare-fun call!202427 () Bool)

(assert (=> b!3007311 (= c!495237 call!202427)))

(declare-fun b!3007312 () Bool)

(assert (=> b!3007312 (= e!1888603 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423)))))))

(declare-fun b!3007313 () Bool)

(assert (=> b!3007313 (= e!1888604 e!1888608)))

(assert (=> b!3007313 (= lt!1043191 call!202426)))

(assert (=> b!3007313 (= lt!1043195 call!202424)))

(declare-fun res!1239406 () Bool)

(assert (=> b!3007313 (= res!1239406 call!202425)))

(assert (=> b!3007313 (=> res!1239406 e!1888614)))

(declare-fun c!495234 () Bool)

(assert (=> b!3007313 (= c!495234 e!1888614)))

(declare-fun b!3007314 () Bool)

(assert (=> b!3007314 (= e!1888613 call!202427)))

(declare-fun bm!202422 () Bool)

(assert (=> bm!202422 (= call!202427 (isEmptyExpr!485 (ite c!495236 lt!1043194 lt!1043195)))))

(declare-fun b!3007315 () Bool)

(assert (=> b!3007315 (= e!1888611 (Star!9385 lt!1043194))))

(declare-fun d!847106 () Bool)

(assert (=> d!847106 e!1888615))

(declare-fun res!1239407 () Bool)

(assert (=> d!847106 (=> (not res!1239407) (not e!1888615))))

(assert (=> d!847106 (= res!1239407 (validRegex!4118 lt!1043196))))

(assert (=> d!847106 (= lt!1043196 e!1888605)))

(declare-fun c!495238 () Bool)

(assert (=> d!847106 (= c!495238 ((_ is EmptyLang!9385) (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))))))

(assert (=> d!847106 (validRegex!4118 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423)))))))

(assert (=> d!847106 (= (simplify!376 (ite c!494938 (reg!9714 (reg!9714 r!17423)) (ite c!494937 (regTwo!19283 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423))))) lt!1043196)))

(declare-fun b!3007316 () Bool)

(assert (=> b!3007316 (= e!1888605 EmptyLang!9385)))

(assert (= (and d!847106 c!495238) b!3007316))

(assert (= (and d!847106 (not c!495238)) b!3007304))

(assert (= (and b!3007304 c!495239) b!3007312))

(assert (= (and b!3007304 (not c!495239)) b!3007308))

(assert (= (and b!3007308 c!495240) b!3007309))

(assert (= (and b!3007308 (not c!495240)) b!3007303))

(assert (= (and b!3007303 c!495236) b!3007294))

(assert (= (and b!3007303 (not c!495236)) b!3007298))

(assert (= (and b!3007294 (not res!1239408)) b!3007314))

(assert (= (and b!3007294 c!495241) b!3007297))

(assert (= (and b!3007294 (not c!495241)) b!3007315))

(assert (= (and b!3007298 c!495235) b!3007299))

(assert (= (and b!3007298 (not c!495235)) b!3007313))

(assert (= (and b!3007299 c!495231) b!3007307))

(assert (= (and b!3007299 (not c!495231)) b!3007302))

(assert (= (and b!3007302 c!495233) b!3007310))

(assert (= (and b!3007302 (not c!495233)) b!3007296))

(assert (= (and b!3007313 (not res!1239406)) b!3007305))

(assert (= (and b!3007313 c!495234) b!3007306))

(assert (= (and b!3007313 (not c!495234)) b!3007295))

(assert (= (and b!3007295 c!495232) b!3007301))

(assert (= (and b!3007295 (not c!495232)) b!3007311))

(assert (= (and b!3007311 c!495237) b!3007300))

(assert (= (and b!3007311 (not c!495237)) b!3007292))

(assert (= (or b!3007299 b!3007313) bm!202420))

(assert (= (or b!3007299 b!3007313) bm!202417))

(assert (= (or b!3007299 b!3007305) bm!202421))

(assert (= (or b!3007302 b!3007313) bm!202416))

(assert (= (or b!3007314 b!3007311) bm!202422))

(assert (= (or b!3007294 bm!202417) bm!202418))

(assert (= (or b!3007294 bm!202421) bm!202419))

(assert (= (and d!847106 res!1239407) b!3007293))

(declare-fun m!3355371 () Bool)

(assert (=> bm!202418 m!3355371))

(declare-fun m!3355373 () Bool)

(assert (=> bm!202416 m!3355373))

(declare-fun m!3355375 () Bool)

(assert (=> bm!202419 m!3355375))

(declare-fun m!3355377 () Bool)

(assert (=> bm!202422 m!3355377))

(declare-fun m!3355379 () Bool)

(assert (=> b!3007295 m!3355379))

(declare-fun m!3355381 () Bool)

(assert (=> d!847106 m!3355381))

(declare-fun m!3355383 () Bool)

(assert (=> d!847106 m!3355383))

(declare-fun m!3355385 () Bool)

(assert (=> b!3007293 m!3355385))

(declare-fun m!3355387 () Bool)

(assert (=> b!3007293 m!3355387))

(declare-fun m!3355389 () Bool)

(assert (=> bm!202420 m!3355389))

(assert (=> bm!202246 d!847106))

(assert (=> d!846896 d!846910))

(assert (=> d!846896 d!846894))

(declare-fun d!847110 () Bool)

(assert (=> d!847110 (= (matchR!4267 lt!1043025 s!11993) (matchRSpec!1522 lt!1043025 s!11993))))

(assert (=> d!847110 true))

(declare-fun _$88!3337 () Unit!49185)

(assert (=> d!847110 (= (choose!17852 lt!1043025 s!11993) _$88!3337)))

(declare-fun bs!528978 () Bool)

(assert (= bs!528978 d!847110))

(assert (=> bs!528978 m!3354585))

(assert (=> bs!528978 m!3354619))

(assert (=> d!846896 d!847110))

(assert (=> d!846896 d!846992))

(declare-fun b!3007343 () Bool)

(declare-fun e!1888625 () List!35250)

(assert (=> b!3007343 (= e!1888625 (Cons!35126 (h!40546 (t!234315 (_1!20164 lt!1043032))) (++!8413 (t!234315 (t!234315 (_1!20164 lt!1043032))) (_2!20164 lt!1043032))))))

(declare-fun d!847112 () Bool)

(declare-fun e!1888626 () Bool)

(assert (=> d!847112 e!1888626))

(declare-fun res!1239414 () Bool)

(assert (=> d!847112 (=> (not res!1239414) (not e!1888626))))

(declare-fun lt!1043203 () List!35250)

(assert (=> d!847112 (= res!1239414 (= (content!4782 lt!1043203) ((_ map or) (content!4782 (t!234315 (_1!20164 lt!1043032))) (content!4782 (_2!20164 lt!1043032)))))))

(assert (=> d!847112 (= lt!1043203 e!1888625)))

(declare-fun c!495244 () Bool)

(assert (=> d!847112 (= c!495244 ((_ is Nil!35126) (t!234315 (_1!20164 lt!1043032))))))

(assert (=> d!847112 (= (++!8413 (t!234315 (_1!20164 lt!1043032)) (_2!20164 lt!1043032)) lt!1043203)))

(declare-fun b!3007345 () Bool)

(assert (=> b!3007345 (= e!1888626 (or (not (= (_2!20164 lt!1043032) Nil!35126)) (= lt!1043203 (t!234315 (_1!20164 lt!1043032)))))))

(declare-fun b!3007342 () Bool)

(assert (=> b!3007342 (= e!1888625 (_2!20164 lt!1043032))))

(declare-fun b!3007344 () Bool)

(declare-fun res!1239415 () Bool)

(assert (=> b!3007344 (=> (not res!1239415) (not e!1888626))))

(assert (=> b!3007344 (= res!1239415 (= (size!26515 lt!1043203) (+ (size!26515 (t!234315 (_1!20164 lt!1043032))) (size!26515 (_2!20164 lt!1043032)))))))

(assert (= (and d!847112 c!495244) b!3007342))

(assert (= (and d!847112 (not c!495244)) b!3007343))

(assert (= (and d!847112 res!1239414) b!3007344))

(assert (= (and b!3007344 res!1239415) b!3007345))

(declare-fun m!3355413 () Bool)

(assert (=> b!3007343 m!3355413))

(declare-fun m!3355415 () Bool)

(assert (=> d!847112 m!3355415))

(declare-fun m!3355417 () Bool)

(assert (=> d!847112 m!3355417))

(assert (=> d!847112 m!3354653))

(declare-fun m!3355419 () Bool)

(assert (=> b!3007344 m!3355419))

(assert (=> b!3007344 m!3354903))

(assert (=> b!3007344 m!3354601))

(assert (=> b!3006081 d!847112))

(declare-fun d!847114 () Bool)

(assert (=> d!847114 (= (nullable!3042 lt!1043025) (nullableFct!865 lt!1043025))))

(declare-fun bs!528979 () Bool)

(assert (= bs!528979 d!847114))

(declare-fun m!3355421 () Bool)

(assert (=> bs!528979 m!3355421))

(assert (=> b!3006708 d!847114))

(declare-fun d!847116 () Bool)

(assert (=> d!847116 (= (isEmptyExpr!485 (ite c!494938 lt!1043076 lt!1043077)) ((_ is EmptyExpr!9385) (ite c!494938 lt!1043076 lt!1043077)))))

(assert (=> bm!202250 d!847116))

(assert (=> bm!202296 d!846900))

(declare-fun b!3007374 () Bool)

(declare-fun e!1888640 () Bool)

(declare-fun call!202428 () Bool)

(assert (=> b!3007374 (= e!1888640 call!202428)))

(declare-fun b!3007375 () Bool)

(declare-fun res!1239417 () Bool)

(declare-fun e!1888639 () Bool)

(assert (=> b!3007375 (=> (not res!1239417) (not e!1888639))))

(declare-fun call!202429 () Bool)

(assert (=> b!3007375 (= res!1239417 call!202429)))

(declare-fun e!1888637 () Bool)

(assert (=> b!3007375 (= e!1888637 e!1888639)))

(declare-fun b!3007376 () Bool)

(declare-fun e!1888635 () Bool)

(assert (=> b!3007376 (= e!1888635 e!1888640)))

(declare-fun res!1239416 () Bool)

(assert (=> b!3007376 (= res!1239416 (not (nullable!3042 (reg!9714 (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))))))))

(assert (=> b!3007376 (=> (not res!1239416) (not e!1888640))))

(declare-fun b!3007377 () Bool)

(declare-fun res!1239418 () Bool)

(declare-fun e!1888634 () Bool)

(assert (=> b!3007377 (=> res!1239418 e!1888634)))

(assert (=> b!3007377 (= res!1239418 (not ((_ is Concat!14706) (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423)))))))

(assert (=> b!3007377 (= e!1888637 e!1888634)))

(declare-fun b!3007378 () Bool)

(assert (=> b!3007378 (= e!1888635 e!1888637)))

(declare-fun c!495246 () Bool)

(assert (=> b!3007378 (= c!495246 ((_ is Union!9385) (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))))))

(declare-fun bm!202423 () Bool)

(declare-fun c!495245 () Bool)

(assert (=> bm!202423 (= call!202428 (validRegex!4118 (ite c!495245 (reg!9714 (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))) (ite c!495246 (regTwo!19283 (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))) (regOne!19282 (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423)))))))))

(declare-fun bm!202424 () Bool)

(assert (=> bm!202424 (= call!202429 (validRegex!4118 (ite c!495246 (regOne!19283 (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))) (regTwo!19282 (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))))))))

(declare-fun bm!202425 () Bool)

(declare-fun call!202430 () Bool)

(assert (=> bm!202425 (= call!202430 call!202428)))

(declare-fun b!3007379 () Bool)

(assert (=> b!3007379 (= e!1888639 call!202430)))

(declare-fun b!3007380 () Bool)

(declare-fun e!1888636 () Bool)

(assert (=> b!3007380 (= e!1888634 e!1888636)))

(declare-fun res!1239419 () Bool)

(assert (=> b!3007380 (=> (not res!1239419) (not e!1888636))))

(assert (=> b!3007380 (= res!1239419 call!202430)))

(declare-fun d!847118 () Bool)

(declare-fun res!1239420 () Bool)

(declare-fun e!1888638 () Bool)

(assert (=> d!847118 (=> res!1239420 e!1888638)))

(assert (=> d!847118 (= res!1239420 ((_ is ElementMatch!9385) (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))))))

(assert (=> d!847118 (= (validRegex!4118 (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))) e!1888638)))

(declare-fun b!3007381 () Bool)

(assert (=> b!3007381 (= e!1888636 call!202429)))

(declare-fun b!3007382 () Bool)

(assert (=> b!3007382 (= e!1888638 e!1888635)))

(assert (=> b!3007382 (= c!495245 ((_ is Star!9385) (ite c!495057 (regOne!19283 r!17423) (regTwo!19282 r!17423))))))

(assert (= (and d!847118 (not res!1239420)) b!3007382))

(assert (= (and b!3007382 c!495245) b!3007376))

(assert (= (and b!3007382 (not c!495245)) b!3007378))

(assert (= (and b!3007376 res!1239416) b!3007374))

(assert (= (and b!3007378 c!495246) b!3007375))

(assert (= (and b!3007378 (not c!495246)) b!3007377))

(assert (= (and b!3007375 res!1239417) b!3007379))

(assert (= (and b!3007377 (not res!1239418)) b!3007380))

(assert (= (and b!3007380 res!1239419) b!3007381))

(assert (= (or b!3007375 b!3007381) bm!202424))

(assert (= (or b!3007379 b!3007380) bm!202425))

(assert (= (or b!3007374 bm!202425) bm!202423))

(declare-fun m!3355423 () Bool)

(assert (=> b!3007376 m!3355423))

(declare-fun m!3355425 () Bool)

(assert (=> bm!202423 m!3355425))

(declare-fun m!3355427 () Bool)

(assert (=> bm!202424 m!3355427))

(assert (=> bm!202304 d!847118))

(declare-fun b!3007403 () Bool)

(declare-fun e!1888652 () Bool)

(declare-fun lt!1043204 () Bool)

(declare-fun call!202431 () Bool)

(assert (=> b!3007403 (= e!1888652 (= lt!1043204 call!202431))))

(declare-fun b!3007404 () Bool)

(declare-fun res!1239424 () Bool)

(declare-fun e!1888648 () Bool)

(assert (=> b!3007404 (=> (not res!1239424) (not e!1888648))))

(assert (=> b!3007404 (= res!1239424 (not call!202431))))

(declare-fun b!3007405 () Bool)

(declare-fun res!1239422 () Bool)

(declare-fun e!1888646 () Bool)

(assert (=> b!3007405 (=> res!1239422 e!1888646)))

(assert (=> b!3007405 (= res!1239422 e!1888648)))

(declare-fun res!1239428 () Bool)

(assert (=> b!3007405 (=> (not res!1239428) (not e!1888648))))

(assert (=> b!3007405 (= res!1239428 lt!1043204)))

(declare-fun b!3007406 () Bool)

(declare-fun e!1888647 () Bool)

(assert (=> b!3007406 (= e!1888652 e!1888647)))

(declare-fun c!495248 () Bool)

(assert (=> b!3007406 (= c!495248 ((_ is EmptyLang!9385) (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032)))))))

(declare-fun bm!202426 () Bool)

(assert (=> bm!202426 (= call!202431 (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032))))))

(declare-fun b!3007407 () Bool)

(declare-fun res!1239421 () Bool)

(declare-fun e!1888651 () Bool)

(assert (=> b!3007407 (=> res!1239421 e!1888651)))

(assert (=> b!3007407 (= res!1239421 (not (isEmpty!19407 (tail!4925 (tail!4925 (_1!20164 lt!1043032))))))))

(declare-fun b!3007408 () Bool)

(assert (=> b!3007408 (= e!1888647 (not lt!1043204))))

(declare-fun b!3007409 () Bool)

(declare-fun e!1888650 () Bool)

(assert (=> b!3007409 (= e!1888650 e!1888651)))

(declare-fun res!1239426 () Bool)

(assert (=> b!3007409 (=> res!1239426 e!1888651)))

(assert (=> b!3007409 (= res!1239426 call!202431)))

(declare-fun b!3007410 () Bool)

(declare-fun e!1888649 () Bool)

(assert (=> b!3007410 (= e!1888649 (nullable!3042 (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032)))))))

(declare-fun d!847120 () Bool)

(assert (=> d!847120 e!1888652))

(declare-fun c!495249 () Bool)

(assert (=> d!847120 (= c!495249 ((_ is EmptyExpr!9385) (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032)))))))

(assert (=> d!847120 (= lt!1043204 e!1888649)))

(declare-fun c!495247 () Bool)

(assert (=> d!847120 (= c!495247 (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032))))))

(assert (=> d!847120 (validRegex!4118 (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032))))))

(assert (=> d!847120 (= (matchR!4267 (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032))) (tail!4925 (_1!20164 lt!1043032))) lt!1043204)))

(declare-fun b!3007411 () Bool)

(declare-fun res!1239427 () Bool)

(assert (=> b!3007411 (=> (not res!1239427) (not e!1888648))))

(assert (=> b!3007411 (= res!1239427 (isEmpty!19407 (tail!4925 (tail!4925 (_1!20164 lt!1043032)))))))

(declare-fun b!3007412 () Bool)

(assert (=> b!3007412 (= e!1888646 e!1888650)))

(declare-fun res!1239423 () Bool)

(assert (=> b!3007412 (=> (not res!1239423) (not e!1888650))))

(assert (=> b!3007412 (= res!1239423 (not lt!1043204))))

(declare-fun b!3007413 () Bool)

(declare-fun res!1239425 () Bool)

(assert (=> b!3007413 (=> res!1239425 e!1888646)))

(assert (=> b!3007413 (= res!1239425 (not ((_ is ElementMatch!9385) (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032))))))))

(assert (=> b!3007413 (= e!1888647 e!1888646)))

(declare-fun b!3007414 () Bool)

(assert (=> b!3007414 (= e!1888648 (= (head!6699 (tail!4925 (_1!20164 lt!1043032))) (c!494883 (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032))))))))

(declare-fun b!3007415 () Bool)

(assert (=> b!3007415 (= e!1888649 (matchR!4267 (derivativeStep!2640 (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032))) (head!6699 (tail!4925 (_1!20164 lt!1043032)))) (tail!4925 (tail!4925 (_1!20164 lt!1043032)))))))

(declare-fun b!3007416 () Bool)

(assert (=> b!3007416 (= e!1888651 (not (= (head!6699 (tail!4925 (_1!20164 lt!1043032))) (c!494883 (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032)))))))))

(assert (= (and d!847120 c!495247) b!3007410))

(assert (= (and d!847120 (not c!495247)) b!3007415))

(assert (= (and d!847120 c!495249) b!3007403))

(assert (= (and d!847120 (not c!495249)) b!3007406))

(assert (= (and b!3007406 c!495248) b!3007408))

(assert (= (and b!3007406 (not c!495248)) b!3007413))

(assert (= (and b!3007413 (not res!1239425)) b!3007405))

(assert (= (and b!3007405 res!1239428) b!3007404))

(assert (= (and b!3007404 res!1239424) b!3007411))

(assert (= (and b!3007411 res!1239427) b!3007414))

(assert (= (and b!3007405 (not res!1239422)) b!3007412))

(assert (= (and b!3007412 res!1239423) b!3007409))

(assert (= (and b!3007409 (not res!1239426)) b!3007407))

(assert (= (and b!3007407 (not res!1239421)) b!3007416))

(assert (= (or b!3007403 b!3007404 b!3007409) bm!202426))

(assert (=> b!3007416 m!3354883))

(declare-fun m!3355429 () Bool)

(assert (=> b!3007416 m!3355429))

(assert (=> b!3007414 m!3354883))

(assert (=> b!3007414 m!3355429))

(assert (=> b!3007415 m!3354883))

(assert (=> b!3007415 m!3355429))

(assert (=> b!3007415 m!3354881))

(assert (=> b!3007415 m!3355429))

(declare-fun m!3355431 () Bool)

(assert (=> b!3007415 m!3355431))

(assert (=> b!3007415 m!3354883))

(declare-fun m!3355433 () Bool)

(assert (=> b!3007415 m!3355433))

(assert (=> b!3007415 m!3355431))

(assert (=> b!3007415 m!3355433))

(declare-fun m!3355435 () Bool)

(assert (=> b!3007415 m!3355435))

(assert (=> bm!202426 m!3354883))

(assert (=> bm!202426 m!3354887))

(assert (=> b!3007410 m!3354881))

(declare-fun m!3355437 () Bool)

(assert (=> b!3007410 m!3355437))

(assert (=> d!847120 m!3354883))

(assert (=> d!847120 m!3354887))

(assert (=> d!847120 m!3354881))

(declare-fun m!3355439 () Bool)

(assert (=> d!847120 m!3355439))

(assert (=> b!3007407 m!3354883))

(assert (=> b!3007407 m!3355433))

(assert (=> b!3007407 m!3355433))

(declare-fun m!3355441 () Bool)

(assert (=> b!3007407 m!3355441))

(assert (=> b!3007411 m!3354883))

(assert (=> b!3007411 m!3355433))

(assert (=> b!3007411 m!3355433))

(assert (=> b!3007411 m!3355441))

(assert (=> b!3006645 d!847120))

(declare-fun b!3007449 () Bool)

(declare-fun e!1888661 () Regex!9385)

(declare-fun call!202434 () Regex!9385)

(declare-fun call!202433 () Regex!9385)

(assert (=> b!3007449 (= e!1888661 (Union!9385 call!202434 call!202433))))

(declare-fun b!3007450 () Bool)

(declare-fun e!1888666 () Regex!9385)

(assert (=> b!3007450 (= e!1888666 (ite (= (head!6699 (_1!20164 lt!1043032)) (c!494883 (reg!9714 r!17423))) EmptyExpr!9385 EmptyLang!9385))))

(declare-fun b!3007451 () Bool)

(declare-fun c!495253 () Bool)

(assert (=> b!3007451 (= c!495253 ((_ is Union!9385) (reg!9714 r!17423)))))

(assert (=> b!3007451 (= e!1888666 e!1888661)))

(declare-fun bm!202427 () Bool)

(assert (=> bm!202427 (= call!202433 (derivativeStep!2640 (ite c!495253 (regTwo!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423))) (head!6699 (_1!20164 lt!1043032))))))

(declare-fun bm!202428 () Bool)

(declare-fun call!202432 () Regex!9385)

(assert (=> bm!202428 (= call!202432 call!202434)))

(declare-fun bm!202429 () Bool)

(declare-fun call!202435 () Regex!9385)

(assert (=> bm!202429 (= call!202435 call!202432)))

(declare-fun b!3007454 () Bool)

(declare-fun e!1888663 () Regex!9385)

(assert (=> b!3007454 (= e!1888663 EmptyLang!9385)))

(declare-fun b!3007456 () Bool)

(declare-fun c!495252 () Bool)

(assert (=> b!3007456 (= c!495252 (nullable!3042 (regOne!19282 (reg!9714 r!17423))))))

(declare-fun e!1888662 () Regex!9385)

(declare-fun e!1888664 () Regex!9385)

(assert (=> b!3007456 (= e!1888662 e!1888664)))

(declare-fun b!3007458 () Bool)

(assert (=> b!3007458 (= e!1888664 (Union!9385 (Concat!14706 call!202435 (regTwo!19282 (reg!9714 r!17423))) EmptyLang!9385))))

(declare-fun b!3007459 () Bool)

(assert (=> b!3007459 (= e!1888661 e!1888662)))

(declare-fun c!495254 () Bool)

(assert (=> b!3007459 (= c!495254 ((_ is Star!9385) (reg!9714 r!17423)))))

(declare-fun b!3007460 () Bool)

(assert (=> b!3007460 (= e!1888664 (Union!9385 (Concat!14706 call!202435 (regTwo!19282 (reg!9714 r!17423))) call!202433))))

(declare-fun b!3007461 () Bool)

(assert (=> b!3007461 (= e!1888663 e!1888666)))

(declare-fun c!495251 () Bool)

(assert (=> b!3007461 (= c!495251 ((_ is ElementMatch!9385) (reg!9714 r!17423)))))

(declare-fun d!847122 () Bool)

(declare-fun lt!1043205 () Regex!9385)

(assert (=> d!847122 (validRegex!4118 lt!1043205)))

(assert (=> d!847122 (= lt!1043205 e!1888663)))

(declare-fun c!495250 () Bool)

(assert (=> d!847122 (= c!495250 (or ((_ is EmptyExpr!9385) (reg!9714 r!17423)) ((_ is EmptyLang!9385) (reg!9714 r!17423))))))

(assert (=> d!847122 (validRegex!4118 (reg!9714 r!17423))))

(assert (=> d!847122 (= (derivativeStep!2640 (reg!9714 r!17423) (head!6699 (_1!20164 lt!1043032))) lt!1043205)))

(declare-fun bm!202430 () Bool)

(assert (=> bm!202430 (= call!202434 (derivativeStep!2640 (ite c!495253 (regOne!19283 (reg!9714 r!17423)) (ite c!495254 (reg!9714 (reg!9714 r!17423)) (regOne!19282 (reg!9714 r!17423)))) (head!6699 (_1!20164 lt!1043032))))))

(declare-fun b!3007462 () Bool)

(assert (=> b!3007462 (= e!1888662 (Concat!14706 call!202432 (reg!9714 r!17423)))))

(assert (= (and d!847122 c!495250) b!3007454))

(assert (= (and d!847122 (not c!495250)) b!3007461))

(assert (= (and b!3007461 c!495251) b!3007450))

(assert (= (and b!3007461 (not c!495251)) b!3007451))

(assert (= (and b!3007451 c!495253) b!3007449))

(assert (= (and b!3007451 (not c!495253)) b!3007459))

(assert (= (and b!3007459 c!495254) b!3007462))

(assert (= (and b!3007459 (not c!495254)) b!3007456))

(assert (= (and b!3007456 c!495252) b!3007460))

(assert (= (and b!3007456 (not c!495252)) b!3007458))

(assert (= (or b!3007460 b!3007458) bm!202429))

(assert (= (or b!3007462 bm!202429) bm!202428))

(assert (= (or b!3007449 b!3007460) bm!202427))

(assert (= (or b!3007449 bm!202428) bm!202430))

(assert (=> bm!202427 m!3354879))

(declare-fun m!3355443 () Bool)

(assert (=> bm!202427 m!3355443))

(declare-fun m!3355445 () Bool)

(assert (=> b!3007456 m!3355445))

(declare-fun m!3355447 () Bool)

(assert (=> d!847122 m!3355447))

(assert (=> d!847122 m!3354731))

(assert (=> bm!202430 m!3354879))

(declare-fun m!3355449 () Bool)

(assert (=> bm!202430 m!3355449))

(assert (=> b!3006645 d!847122))

(declare-fun d!847124 () Bool)

(assert (=> d!847124 (= (head!6699 (_1!20164 lt!1043032)) (h!40546 (_1!20164 lt!1043032)))))

(assert (=> b!3006645 d!847124))

(assert (=> b!3006645 d!847054))

(declare-fun d!847126 () Bool)

(assert (=> d!847126 (= (isEmpty!19409 lt!1043027) (not ((_ is Some!6763) lt!1043027)))))

(assert (=> d!846838 d!847126))

(declare-fun d!847128 () Bool)

(assert (=> d!847128 (= (head!6699 (_2!20164 lt!1043032)) (h!40546 (_2!20164 lt!1043032)))))

(assert (=> b!3006712 d!847128))

(declare-fun d!847130 () Bool)

(assert (=> d!847130 true))

(assert (=> d!847130 true))

(declare-fun res!1239429 () Bool)

(assert (=> d!847130 (= (choose!17848 lambda!112418) res!1239429)))

(assert (=> d!846840 d!847130))

(declare-fun d!847132 () Bool)

(assert (=> d!847132 (= (nullable!3042 lt!1043036) (nullableFct!865 lt!1043036))))

(declare-fun bs!528980 () Bool)

(assert (= bs!528980 d!847132))

(declare-fun m!3355451 () Bool)

(assert (=> bs!528980 m!3355451))

(assert (=> b!3006667 d!847132))

(assert (=> b!3006719 d!846984))

(assert (=> b!3006719 d!846986))

(assert (=> b!3006714 d!847128))

(declare-fun d!847134 () Bool)

(declare-fun lt!1043206 () Int)

(assert (=> d!847134 (>= lt!1043206 0)))

(declare-fun e!1888668 () Int)

(assert (=> d!847134 (= lt!1043206 e!1888668)))

(declare-fun c!495255 () Bool)

(assert (=> d!847134 (= c!495255 ((_ is Nil!35126) (t!234315 (_2!20164 lt!1043032))))))

(assert (=> d!847134 (= (size!26515 (t!234315 (_2!20164 lt!1043032))) lt!1043206)))

(declare-fun b!3007464 () Bool)

(assert (=> b!3007464 (= e!1888668 0)))

(declare-fun b!3007465 () Bool)

(assert (=> b!3007465 (= e!1888668 (+ 1 (size!26515 (t!234315 (t!234315 (_2!20164 lt!1043032))))))))

(assert (= (and d!847134 c!495255) b!3007464))

(assert (= (and d!847134 (not c!495255)) b!3007465))

(declare-fun m!3355453 () Bool)

(assert (=> b!3007465 m!3355453))

(assert (=> b!3006632 d!847134))

(assert (=> bm!202292 d!846892))

(assert (=> b!3006671 d!847124))

(assert (=> b!3006723 d!846984))

(assert (=> b!3006723 d!846986))

(declare-fun b!3007466 () Bool)

(declare-fun e!1888675 () Bool)

(declare-fun lt!1043207 () Bool)

(declare-fun call!202436 () Bool)

(assert (=> b!3007466 (= e!1888675 (= lt!1043207 call!202436))))

(declare-fun b!3007467 () Bool)

(declare-fun res!1239433 () Bool)

(declare-fun e!1888671 () Bool)

(assert (=> b!3007467 (=> (not res!1239433) (not e!1888671))))

(assert (=> b!3007467 (= res!1239433 (not call!202436))))

(declare-fun b!3007468 () Bool)

(declare-fun res!1239431 () Bool)

(declare-fun e!1888669 () Bool)

(assert (=> b!3007468 (=> res!1239431 e!1888669)))

(assert (=> b!3007468 (= res!1239431 e!1888671)))

(declare-fun res!1239437 () Bool)

(assert (=> b!3007468 (=> (not res!1239437) (not e!1888671))))

(assert (=> b!3007468 (= res!1239437 lt!1043207)))

(declare-fun b!3007469 () Bool)

(declare-fun e!1888670 () Bool)

(assert (=> b!3007469 (= e!1888675 e!1888670)))

(declare-fun c!495257 () Bool)

(assert (=> b!3007469 (= c!495257 ((_ is EmptyLang!9385) lt!1043036))))

(declare-fun bm!202431 () Bool)

(assert (=> bm!202431 (= call!202436 (isEmpty!19407 (_1!20164 (get!10924 lt!1043122))))))

(declare-fun b!3007470 () Bool)

(declare-fun res!1239430 () Bool)

(declare-fun e!1888674 () Bool)

(assert (=> b!3007470 (=> res!1239430 e!1888674)))

(assert (=> b!3007470 (= res!1239430 (not (isEmpty!19407 (tail!4925 (_1!20164 (get!10924 lt!1043122))))))))

(declare-fun b!3007471 () Bool)

(assert (=> b!3007471 (= e!1888670 (not lt!1043207))))

(declare-fun b!3007472 () Bool)

(declare-fun e!1888673 () Bool)

(assert (=> b!3007472 (= e!1888673 e!1888674)))

(declare-fun res!1239435 () Bool)

(assert (=> b!3007472 (=> res!1239435 e!1888674)))

(assert (=> b!3007472 (= res!1239435 call!202436)))

(declare-fun b!3007473 () Bool)

(declare-fun e!1888672 () Bool)

(assert (=> b!3007473 (= e!1888672 (nullable!3042 lt!1043036))))

(declare-fun d!847136 () Bool)

(assert (=> d!847136 e!1888675))

(declare-fun c!495258 () Bool)

(assert (=> d!847136 (= c!495258 ((_ is EmptyExpr!9385) lt!1043036))))

(assert (=> d!847136 (= lt!1043207 e!1888672)))

(declare-fun c!495256 () Bool)

(assert (=> d!847136 (= c!495256 (isEmpty!19407 (_1!20164 (get!10924 lt!1043122))))))

(assert (=> d!847136 (validRegex!4118 lt!1043036)))

(assert (=> d!847136 (= (matchR!4267 lt!1043036 (_1!20164 (get!10924 lt!1043122))) lt!1043207)))

(declare-fun b!3007474 () Bool)

(declare-fun res!1239436 () Bool)

(assert (=> b!3007474 (=> (not res!1239436) (not e!1888671))))

(assert (=> b!3007474 (= res!1239436 (isEmpty!19407 (tail!4925 (_1!20164 (get!10924 lt!1043122)))))))

(declare-fun b!3007475 () Bool)

(assert (=> b!3007475 (= e!1888669 e!1888673)))

(declare-fun res!1239432 () Bool)

(assert (=> b!3007475 (=> (not res!1239432) (not e!1888673))))

(assert (=> b!3007475 (= res!1239432 (not lt!1043207))))

(declare-fun b!3007476 () Bool)

(declare-fun res!1239434 () Bool)

(assert (=> b!3007476 (=> res!1239434 e!1888669)))

(assert (=> b!3007476 (= res!1239434 (not ((_ is ElementMatch!9385) lt!1043036)))))

(assert (=> b!3007476 (= e!1888670 e!1888669)))

(declare-fun b!3007477 () Bool)

(assert (=> b!3007477 (= e!1888671 (= (head!6699 (_1!20164 (get!10924 lt!1043122))) (c!494883 lt!1043036)))))

(declare-fun b!3007478 () Bool)

(assert (=> b!3007478 (= e!1888672 (matchR!4267 (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 (get!10924 lt!1043122)))) (tail!4925 (_1!20164 (get!10924 lt!1043122)))))))

(declare-fun b!3007479 () Bool)

(assert (=> b!3007479 (= e!1888674 (not (= (head!6699 (_1!20164 (get!10924 lt!1043122))) (c!494883 lt!1043036))))))

(assert (= (and d!847136 c!495256) b!3007473))

(assert (= (and d!847136 (not c!495256)) b!3007478))

(assert (= (and d!847136 c!495258) b!3007466))

(assert (= (and d!847136 (not c!495258)) b!3007469))

(assert (= (and b!3007469 c!495257) b!3007471))

(assert (= (and b!3007469 (not c!495257)) b!3007476))

(assert (= (and b!3007476 (not res!1239434)) b!3007468))

(assert (= (and b!3007468 res!1239437) b!3007467))

(assert (= (and b!3007467 res!1239433) b!3007474))

(assert (= (and b!3007474 res!1239436) b!3007477))

(assert (= (and b!3007468 (not res!1239431)) b!3007475))

(assert (= (and b!3007475 res!1239432) b!3007472))

(assert (= (and b!3007472 (not res!1239435)) b!3007470))

(assert (= (and b!3007470 (not res!1239430)) b!3007479))

(assert (= (or b!3007466 b!3007467 b!3007472) bm!202431))

(declare-fun m!3355455 () Bool)

(assert (=> b!3007479 m!3355455))

(assert (=> b!3007477 m!3355455))

(assert (=> b!3007478 m!3355455))

(assert (=> b!3007478 m!3355455))

(declare-fun m!3355457 () Bool)

(assert (=> b!3007478 m!3355457))

(declare-fun m!3355459 () Bool)

(assert (=> b!3007478 m!3355459))

(assert (=> b!3007478 m!3355457))

(assert (=> b!3007478 m!3355459))

(declare-fun m!3355461 () Bool)

(assert (=> b!3007478 m!3355461))

(declare-fun m!3355463 () Bool)

(assert (=> bm!202431 m!3355463))

(assert (=> b!3007473 m!3354909))

(assert (=> d!847136 m!3355463))

(assert (=> d!847136 m!3354771))

(assert (=> b!3007470 m!3355459))

(assert (=> b!3007470 m!3355459))

(declare-fun m!3355465 () Bool)

(assert (=> b!3007470 m!3355465))

(assert (=> b!3007474 m!3355459))

(assert (=> b!3007474 m!3355459))

(assert (=> b!3007474 m!3355465))

(assert (=> b!3006531 d!847136))

(assert (=> b!3006531 d!846978))

(assert (=> b!3006673 d!847124))

(assert (=> d!846888 d!846900))

(assert (=> d!846888 d!847028))

(declare-fun d!847138 () Bool)

(assert (=> d!847138 (= (nullable!3042 r!17423) (nullableFct!865 r!17423))))

(declare-fun bs!528981 () Bool)

(assert (= bs!528981 d!847138))

(declare-fun m!3355467 () Bool)

(assert (=> bs!528981 m!3355467))

(assert (=> b!3006618 d!847138))

(declare-fun b!3007480 () Bool)

(declare-fun e!1888682 () Bool)

(declare-fun lt!1043208 () Bool)

(declare-fun call!202437 () Bool)

(assert (=> b!3007480 (= e!1888682 (= lt!1043208 call!202437))))

(declare-fun b!3007481 () Bool)

(declare-fun res!1239441 () Bool)

(declare-fun e!1888678 () Bool)

(assert (=> b!3007481 (=> (not res!1239441) (not e!1888678))))

(assert (=> b!3007481 (= res!1239441 (not call!202437))))

(declare-fun b!3007482 () Bool)

(declare-fun res!1239439 () Bool)

(declare-fun e!1888676 () Bool)

(assert (=> b!3007482 (=> res!1239439 e!1888676)))

(assert (=> b!3007482 (= res!1239439 e!1888678)))

(declare-fun res!1239445 () Bool)

(assert (=> b!3007482 (=> (not res!1239445) (not e!1888678))))

(assert (=> b!3007482 (= res!1239445 lt!1043208)))

(declare-fun b!3007483 () Bool)

(declare-fun e!1888677 () Bool)

(assert (=> b!3007483 (= e!1888682 e!1888677)))

(declare-fun c!495260 () Bool)

(assert (=> b!3007483 (= c!495260 ((_ is EmptyLang!9385) (derivativeStep!2640 lt!1043025 (head!6699 s!11993))))))

(declare-fun bm!202432 () Bool)

(assert (=> bm!202432 (= call!202437 (isEmpty!19407 (tail!4925 s!11993)))))

(declare-fun b!3007484 () Bool)

(declare-fun res!1239438 () Bool)

(declare-fun e!1888681 () Bool)

(assert (=> b!3007484 (=> res!1239438 e!1888681)))

(assert (=> b!3007484 (= res!1239438 (not (isEmpty!19407 (tail!4925 (tail!4925 s!11993)))))))

(declare-fun b!3007485 () Bool)

(assert (=> b!3007485 (= e!1888677 (not lt!1043208))))

(declare-fun b!3007486 () Bool)

(declare-fun e!1888680 () Bool)

(assert (=> b!3007486 (= e!1888680 e!1888681)))

(declare-fun res!1239443 () Bool)

(assert (=> b!3007486 (=> res!1239443 e!1888681)))

(assert (=> b!3007486 (= res!1239443 call!202437)))

(declare-fun b!3007487 () Bool)

(declare-fun e!1888679 () Bool)

(assert (=> b!3007487 (= e!1888679 (nullable!3042 (derivativeStep!2640 lt!1043025 (head!6699 s!11993))))))

(declare-fun d!847140 () Bool)

(assert (=> d!847140 e!1888682))

(declare-fun c!495261 () Bool)

(assert (=> d!847140 (= c!495261 ((_ is EmptyExpr!9385) (derivativeStep!2640 lt!1043025 (head!6699 s!11993))))))

(assert (=> d!847140 (= lt!1043208 e!1888679)))

(declare-fun c!495259 () Bool)

(assert (=> d!847140 (= c!495259 (isEmpty!19407 (tail!4925 s!11993)))))

(assert (=> d!847140 (validRegex!4118 (derivativeStep!2640 lt!1043025 (head!6699 s!11993)))))

(assert (=> d!847140 (= (matchR!4267 (derivativeStep!2640 lt!1043025 (head!6699 s!11993)) (tail!4925 s!11993)) lt!1043208)))

(declare-fun b!3007488 () Bool)

(declare-fun res!1239444 () Bool)

(assert (=> b!3007488 (=> (not res!1239444) (not e!1888678))))

(assert (=> b!3007488 (= res!1239444 (isEmpty!19407 (tail!4925 (tail!4925 s!11993))))))

(declare-fun b!3007489 () Bool)

(assert (=> b!3007489 (= e!1888676 e!1888680)))

(declare-fun res!1239440 () Bool)

(assert (=> b!3007489 (=> (not res!1239440) (not e!1888680))))

(assert (=> b!3007489 (= res!1239440 (not lt!1043208))))

(declare-fun b!3007490 () Bool)

(declare-fun res!1239442 () Bool)

(assert (=> b!3007490 (=> res!1239442 e!1888676)))

(assert (=> b!3007490 (= res!1239442 (not ((_ is ElementMatch!9385) (derivativeStep!2640 lt!1043025 (head!6699 s!11993)))))))

(assert (=> b!3007490 (= e!1888677 e!1888676)))

(declare-fun b!3007491 () Bool)

(assert (=> b!3007491 (= e!1888678 (= (head!6699 (tail!4925 s!11993)) (c!494883 (derivativeStep!2640 lt!1043025 (head!6699 s!11993)))))))

(declare-fun b!3007492 () Bool)

(assert (=> b!3007492 (= e!1888679 (matchR!4267 (derivativeStep!2640 (derivativeStep!2640 lt!1043025 (head!6699 s!11993)) (head!6699 (tail!4925 s!11993))) (tail!4925 (tail!4925 s!11993))))))

(declare-fun b!3007493 () Bool)

(assert (=> b!3007493 (= e!1888681 (not (= (head!6699 (tail!4925 s!11993)) (c!494883 (derivativeStep!2640 lt!1043025 (head!6699 s!11993))))))))

(assert (= (and d!847140 c!495259) b!3007487))

(assert (= (and d!847140 (not c!495259)) b!3007492))

(assert (= (and d!847140 c!495261) b!3007480))

(assert (= (and d!847140 (not c!495261)) b!3007483))

(assert (= (and b!3007483 c!495260) b!3007485))

(assert (= (and b!3007483 (not c!495260)) b!3007490))

(assert (= (and b!3007490 (not res!1239442)) b!3007482))

(assert (= (and b!3007482 res!1239445) b!3007481))

(assert (= (and b!3007481 res!1239441) b!3007488))

(assert (= (and b!3007488 res!1239444) b!3007491))

(assert (= (and b!3007482 (not res!1239439)) b!3007489))

(assert (= (and b!3007489 res!1239440) b!3007486))

(assert (= (and b!3007486 (not res!1239443)) b!3007484))

(assert (= (and b!3007484 (not res!1239438)) b!3007493))

(assert (= (or b!3007480 b!3007481 b!3007486) bm!202432))

(assert (=> b!3007493 m!3354865))

(assert (=> b!3007493 m!3355225))

(assert (=> b!3007491 m!3354865))

(assert (=> b!3007491 m!3355225))

(assert (=> b!3007492 m!3354865))

(assert (=> b!3007492 m!3355225))

(assert (=> b!3007492 m!3354929))

(assert (=> b!3007492 m!3355225))

(declare-fun m!3355469 () Bool)

(assert (=> b!3007492 m!3355469))

(assert (=> b!3007492 m!3354865))

(assert (=> b!3007492 m!3355229))

(assert (=> b!3007492 m!3355469))

(assert (=> b!3007492 m!3355229))

(declare-fun m!3355471 () Bool)

(assert (=> b!3007492 m!3355471))

(assert (=> bm!202432 m!3354865))

(assert (=> bm!202432 m!3354871))

(assert (=> b!3007487 m!3354929))

(declare-fun m!3355473 () Bool)

(assert (=> b!3007487 m!3355473))

(assert (=> d!847140 m!3354865))

(assert (=> d!847140 m!3354871))

(assert (=> d!847140 m!3354929))

(declare-fun m!3355475 () Bool)

(assert (=> d!847140 m!3355475))

(assert (=> b!3007484 m!3354865))

(assert (=> b!3007484 m!3355229))

(assert (=> b!3007484 m!3355229))

(assert (=> b!3007484 m!3355237))

(assert (=> b!3007488 m!3354865))

(assert (=> b!3007488 m!3355229))

(assert (=> b!3007488 m!3355229))

(assert (=> b!3007488 m!3355237))

(assert (=> b!3006727 d!847140))

(declare-fun b!3007494 () Bool)

(declare-fun e!1888683 () Regex!9385)

(declare-fun call!202440 () Regex!9385)

(declare-fun call!202439 () Regex!9385)

(assert (=> b!3007494 (= e!1888683 (Union!9385 call!202440 call!202439))))

(declare-fun b!3007495 () Bool)

(declare-fun e!1888687 () Regex!9385)

(assert (=> b!3007495 (= e!1888687 (ite (= (head!6699 s!11993) (c!494883 lt!1043025)) EmptyExpr!9385 EmptyLang!9385))))

(declare-fun b!3007496 () Bool)

(declare-fun c!495265 () Bool)

(assert (=> b!3007496 (= c!495265 ((_ is Union!9385) lt!1043025))))

(assert (=> b!3007496 (= e!1888687 e!1888683)))

(declare-fun bm!202433 () Bool)

(assert (=> bm!202433 (= call!202439 (derivativeStep!2640 (ite c!495265 (regTwo!19283 lt!1043025) (regTwo!19282 lt!1043025)) (head!6699 s!11993)))))

(declare-fun bm!202434 () Bool)

(declare-fun call!202438 () Regex!9385)

(assert (=> bm!202434 (= call!202438 call!202440)))

(declare-fun bm!202435 () Bool)

(declare-fun call!202441 () Regex!9385)

(assert (=> bm!202435 (= call!202441 call!202438)))

(declare-fun b!3007497 () Bool)

(declare-fun e!1888685 () Regex!9385)

(assert (=> b!3007497 (= e!1888685 EmptyLang!9385)))

(declare-fun b!3007498 () Bool)

(declare-fun c!495264 () Bool)

(assert (=> b!3007498 (= c!495264 (nullable!3042 (regOne!19282 lt!1043025)))))

(declare-fun e!1888684 () Regex!9385)

(declare-fun e!1888686 () Regex!9385)

(assert (=> b!3007498 (= e!1888684 e!1888686)))

(declare-fun b!3007499 () Bool)

(assert (=> b!3007499 (= e!1888686 (Union!9385 (Concat!14706 call!202441 (regTwo!19282 lt!1043025)) EmptyLang!9385))))

(declare-fun b!3007500 () Bool)

(assert (=> b!3007500 (= e!1888683 e!1888684)))

(declare-fun c!495266 () Bool)

(assert (=> b!3007500 (= c!495266 ((_ is Star!9385) lt!1043025))))

(declare-fun b!3007501 () Bool)

(assert (=> b!3007501 (= e!1888686 (Union!9385 (Concat!14706 call!202441 (regTwo!19282 lt!1043025)) call!202439))))

(declare-fun b!3007502 () Bool)

(assert (=> b!3007502 (= e!1888685 e!1888687)))

(declare-fun c!495263 () Bool)

(assert (=> b!3007502 (= c!495263 ((_ is ElementMatch!9385) lt!1043025))))

(declare-fun d!847142 () Bool)

(declare-fun lt!1043209 () Regex!9385)

(assert (=> d!847142 (validRegex!4118 lt!1043209)))

(assert (=> d!847142 (= lt!1043209 e!1888685)))

(declare-fun c!495262 () Bool)

(assert (=> d!847142 (= c!495262 (or ((_ is EmptyExpr!9385) lt!1043025) ((_ is EmptyLang!9385) lt!1043025)))))

(assert (=> d!847142 (validRegex!4118 lt!1043025)))

(assert (=> d!847142 (= (derivativeStep!2640 lt!1043025 (head!6699 s!11993)) lt!1043209)))

(declare-fun bm!202436 () Bool)

(assert (=> bm!202436 (= call!202440 (derivativeStep!2640 (ite c!495265 (regOne!19283 lt!1043025) (ite c!495266 (reg!9714 lt!1043025) (regOne!19282 lt!1043025))) (head!6699 s!11993)))))

(declare-fun b!3007503 () Bool)

(assert (=> b!3007503 (= e!1888684 (Concat!14706 call!202438 lt!1043025))))

(assert (= (and d!847142 c!495262) b!3007497))

(assert (= (and d!847142 (not c!495262)) b!3007502))

(assert (= (and b!3007502 c!495263) b!3007495))

(assert (= (and b!3007502 (not c!495263)) b!3007496))

(assert (= (and b!3007496 c!495265) b!3007494))

(assert (= (and b!3007496 (not c!495265)) b!3007500))

(assert (= (and b!3007500 c!495266) b!3007503))

(assert (= (and b!3007500 (not c!495266)) b!3007498))

(assert (= (and b!3007498 c!495264) b!3007501))

(assert (= (and b!3007498 (not c!495264)) b!3007499))

(assert (= (or b!3007501 b!3007499) bm!202435))

(assert (= (or b!3007503 bm!202435) bm!202434))

(assert (= (or b!3007494 b!3007501) bm!202433))

(assert (= (or b!3007494 bm!202434) bm!202436))

(assert (=> bm!202433 m!3354861))

(declare-fun m!3355477 () Bool)

(assert (=> bm!202433 m!3355477))

(declare-fun m!3355479 () Bool)

(assert (=> b!3007498 m!3355479))

(declare-fun m!3355481 () Bool)

(assert (=> d!847142 m!3355481))

(assert (=> d!847142 m!3354901))

(assert (=> bm!202436 m!3354861))

(declare-fun m!3355483 () Bool)

(assert (=> bm!202436 m!3355483))

(assert (=> b!3006727 d!847142))

(assert (=> b!3006727 d!846980))

(assert (=> b!3006727 d!846986))

(declare-fun bs!528982 () Bool)

(declare-fun b!3007509 () Bool)

(assert (= bs!528982 (and b!3007509 b!3007238)))

(declare-fun lambda!112474 () Int)

(assert (=> bs!528982 (not (= lambda!112474 lambda!112473))))

(declare-fun bs!528983 () Bool)

(assert (= bs!528983 (and b!3007509 b!3006577)))

(assert (=> bs!528983 (= (and (= (reg!9714 (regOne!19283 r!17423)) (reg!9714 r!17423)) (= (regOne!19283 r!17423) r!17423)) (= lambda!112474 lambda!112449))))

(declare-fun bs!528984 () Bool)

(assert (= bs!528984 (and b!3007509 b!3006050)))

(assert (=> bs!528984 (not (= lambda!112474 lambda!112417))))

(declare-fun bs!528985 () Bool)

(assert (= bs!528985 (and b!3007509 d!846842)))

(assert (=> bs!528985 (not (= lambda!112474 lambda!112438))))

(declare-fun bs!528986 () Bool)

(assert (= bs!528986 (and b!3007509 b!3006963)))

(assert (=> bs!528986 (= (and (= (reg!9714 (regOne!19283 r!17423)) (reg!9714 (regOne!19283 lt!1043025))) (= (regOne!19283 r!17423) (regOne!19283 lt!1043025))) (= lambda!112474 lambda!112466))))

(declare-fun bs!528987 () Bool)

(assert (= bs!528987 (and b!3007509 b!3006652)))

(assert (=> bs!528987 (= (and (= (reg!9714 (regOne!19283 r!17423)) (reg!9714 lt!1043025)) (= (regOne!19283 r!17423) lt!1043025)) (= lambda!112474 lambda!112451))))

(declare-fun bs!528988 () Bool)

(assert (= bs!528988 (and b!3007509 b!3006648)))

(assert (=> bs!528988 (not (= lambda!112474 lambda!112452))))

(declare-fun bs!528989 () Bool)

(assert (= bs!528989 (and b!3007509 b!3007242)))

(assert (=> bs!528989 (= (and (= (reg!9714 (regOne!19283 r!17423)) (reg!9714 (regTwo!19283 r!17423))) (= (regOne!19283 r!17423) (regTwo!19283 r!17423))) (= lambda!112474 lambda!112472))))

(assert (=> bs!528985 (= (and (= (reg!9714 (regOne!19283 r!17423)) lt!1043036) (= (regOne!19283 r!17423) (Star!9385 lt!1043036))) (= lambda!112474 lambda!112439))))

(declare-fun bs!528990 () Bool)

(assert (= bs!528990 (and b!3007509 b!3006573)))

(assert (=> bs!528990 (not (= lambda!112474 lambda!112450))))

(declare-fun bs!528991 () Bool)

(assert (= bs!528991 (and b!3007509 d!846876)))

(assert (=> bs!528991 (not (= lambda!112474 lambda!112444))))

(assert (=> bs!528984 (= (and (= (reg!9714 (regOne!19283 r!17423)) lt!1043036) (= (regOne!19283 r!17423) lt!1043025)) (= lambda!112474 lambda!112418))))

(declare-fun bs!528992 () Bool)

(assert (= bs!528992 (and b!3007509 b!3006959)))

(assert (=> bs!528992 (not (= lambda!112474 lambda!112467))))

(assert (=> b!3007509 true))

(assert (=> b!3007509 true))

(declare-fun bs!528993 () Bool)

(declare-fun b!3007505 () Bool)

(assert (= bs!528993 (and b!3007505 b!3007509)))

(declare-fun lambda!112475 () Int)

(assert (=> bs!528993 (not (= lambda!112475 lambda!112474))))

(declare-fun bs!528994 () Bool)

(assert (= bs!528994 (and b!3007505 b!3007238)))

(assert (=> bs!528994 (= (and (= (regOne!19282 (regOne!19283 r!17423)) (regOne!19282 (regTwo!19283 r!17423))) (= (regTwo!19282 (regOne!19283 r!17423)) (regTwo!19282 (regTwo!19283 r!17423)))) (= lambda!112475 lambda!112473))))

(declare-fun bs!528995 () Bool)

(assert (= bs!528995 (and b!3007505 b!3006577)))

(assert (=> bs!528995 (not (= lambda!112475 lambda!112449))))

(declare-fun bs!528996 () Bool)

(assert (= bs!528996 (and b!3007505 b!3006050)))

(assert (=> bs!528996 (not (= lambda!112475 lambda!112417))))

(declare-fun bs!528997 () Bool)

(assert (= bs!528997 (and b!3007505 d!846842)))

(assert (=> bs!528997 (not (= lambda!112475 lambda!112438))))

(declare-fun bs!528998 () Bool)

(assert (= bs!528998 (and b!3007505 b!3006963)))

(assert (=> bs!528998 (not (= lambda!112475 lambda!112466))))

(declare-fun bs!528999 () Bool)

(assert (= bs!528999 (and b!3007505 b!3006652)))

(assert (=> bs!528999 (not (= lambda!112475 lambda!112451))))

(declare-fun bs!529000 () Bool)

(assert (= bs!529000 (and b!3007505 b!3006648)))

(assert (=> bs!529000 (= (and (= (regOne!19282 (regOne!19283 r!17423)) (regOne!19282 lt!1043025)) (= (regTwo!19282 (regOne!19283 r!17423)) (regTwo!19282 lt!1043025))) (= lambda!112475 lambda!112452))))

(declare-fun bs!529001 () Bool)

(assert (= bs!529001 (and b!3007505 b!3007242)))

(assert (=> bs!529001 (not (= lambda!112475 lambda!112472))))

(assert (=> bs!528997 (not (= lambda!112475 lambda!112439))))

(declare-fun bs!529002 () Bool)

(assert (= bs!529002 (and b!3007505 b!3006573)))

(assert (=> bs!529002 (= (and (= (regOne!19282 (regOne!19283 r!17423)) (regOne!19282 r!17423)) (= (regTwo!19282 (regOne!19283 r!17423)) (regTwo!19282 r!17423))) (= lambda!112475 lambda!112450))))

(declare-fun bs!529003 () Bool)

(assert (= bs!529003 (and b!3007505 d!846876)))

(assert (=> bs!529003 (not (= lambda!112475 lambda!112444))))

(assert (=> bs!528996 (not (= lambda!112475 lambda!112418))))

(declare-fun bs!529004 () Bool)

(assert (= bs!529004 (and b!3007505 b!3006959)))

(assert (=> bs!529004 (= (and (= (regOne!19282 (regOne!19283 r!17423)) (regOne!19282 (regOne!19283 lt!1043025))) (= (regTwo!19282 (regOne!19283 r!17423)) (regTwo!19282 (regOne!19283 lt!1043025)))) (= lambda!112475 lambda!112467))))

(assert (=> b!3007505 true))

(assert (=> b!3007505 true))

(declare-fun b!3007504 () Bool)

(declare-fun e!1888689 () Bool)

(declare-fun e!1888694 () Bool)

(assert (=> b!3007504 (= e!1888689 e!1888694)))

(declare-fun c!495267 () Bool)

(assert (=> b!3007504 (= c!495267 ((_ is Star!9385) (regOne!19283 r!17423)))))

(declare-fun call!202442 () Bool)

(assert (=> b!3007505 (= e!1888694 call!202442)))

(declare-fun b!3007506 () Bool)

(declare-fun c!495268 () Bool)

(assert (=> b!3007506 (= c!495268 ((_ is ElementMatch!9385) (regOne!19283 r!17423)))))

(declare-fun e!1888692 () Bool)

(declare-fun e!1888693 () Bool)

(assert (=> b!3007506 (= e!1888692 e!1888693)))

(declare-fun b!3007507 () Bool)

(assert (=> b!3007507 (= e!1888693 (= s!11993 (Cons!35126 (c!494883 (regOne!19283 r!17423)) Nil!35126)))))

(declare-fun b!3007508 () Bool)

(declare-fun res!1239447 () Bool)

(declare-fun e!1888688 () Bool)

(assert (=> b!3007508 (=> res!1239447 e!1888688)))

(declare-fun call!202443 () Bool)

(assert (=> b!3007508 (= res!1239447 call!202443)))

(assert (=> b!3007508 (= e!1888694 e!1888688)))

(assert (=> b!3007509 (= e!1888688 call!202442)))

(declare-fun b!3007510 () Bool)

(declare-fun e!1888690 () Bool)

(assert (=> b!3007510 (= e!1888689 e!1888690)))

(declare-fun res!1239446 () Bool)

(assert (=> b!3007510 (= res!1239446 (matchRSpec!1522 (regOne!19283 (regOne!19283 r!17423)) s!11993))))

(assert (=> b!3007510 (=> res!1239446 e!1888690)))

(declare-fun b!3007511 () Bool)

(declare-fun e!1888691 () Bool)

(assert (=> b!3007511 (= e!1888691 call!202443)))

(declare-fun b!3007512 () Bool)

(assert (=> b!3007512 (= e!1888691 e!1888692)))

(declare-fun res!1239448 () Bool)

(assert (=> b!3007512 (= res!1239448 (not ((_ is EmptyLang!9385) (regOne!19283 r!17423))))))

(assert (=> b!3007512 (=> (not res!1239448) (not e!1888692))))

(declare-fun b!3007513 () Bool)

(declare-fun c!495270 () Bool)

(assert (=> b!3007513 (= c!495270 ((_ is Union!9385) (regOne!19283 r!17423)))))

(assert (=> b!3007513 (= e!1888693 e!1888689)))

(declare-fun bm!202437 () Bool)

(assert (=> bm!202437 (= call!202442 (Exists!1654 (ite c!495267 lambda!112474 lambda!112475)))))

(declare-fun d!847144 () Bool)

(declare-fun c!495269 () Bool)

(assert (=> d!847144 (= c!495269 ((_ is EmptyExpr!9385) (regOne!19283 r!17423)))))

(assert (=> d!847144 (= (matchRSpec!1522 (regOne!19283 r!17423) s!11993) e!1888691)))

(declare-fun b!3007514 () Bool)

(assert (=> b!3007514 (= e!1888690 (matchRSpec!1522 (regTwo!19283 (regOne!19283 r!17423)) s!11993))))

(declare-fun bm!202438 () Bool)

(assert (=> bm!202438 (= call!202443 (isEmpty!19407 s!11993))))

(assert (= (and d!847144 c!495269) b!3007511))

(assert (= (and d!847144 (not c!495269)) b!3007512))

(assert (= (and b!3007512 res!1239448) b!3007506))

(assert (= (and b!3007506 c!495268) b!3007507))

(assert (= (and b!3007506 (not c!495268)) b!3007513))

(assert (= (and b!3007513 c!495270) b!3007510))

(assert (= (and b!3007513 (not c!495270)) b!3007504))

(assert (= (and b!3007510 (not res!1239446)) b!3007514))

(assert (= (and b!3007504 c!495267) b!3007508))

(assert (= (and b!3007504 (not c!495267)) b!3007505))

(assert (= (and b!3007508 (not res!1239447)) b!3007509))

(assert (= (or b!3007509 b!3007505) bm!202437))

(assert (= (or b!3007511 b!3007508) bm!202438))

(declare-fun m!3355485 () Bool)

(assert (=> b!3007510 m!3355485))

(declare-fun m!3355487 () Bool)

(assert (=> bm!202437 m!3355487))

(declare-fun m!3355489 () Bool)

(assert (=> b!3007514 m!3355489))

(assert (=> bm!202438 m!3354617))

(assert (=> b!3006578 d!847144))

(declare-fun d!847146 () Bool)

(assert (=> d!847146 (= (isDefined!5315 lt!1043122) (not (isEmpty!19409 lt!1043122)))))

(declare-fun bs!529005 () Bool)

(assert (= bs!529005 d!847146))

(declare-fun m!3355491 () Bool)

(assert (=> bs!529005 m!3355491))

(assert (=> b!3006535 d!847146))

(assert (=> bm!202293 d!846900))

(declare-fun d!847148 () Bool)

(assert (=> d!847148 (= (nullable!3042 lt!1043078) (nullableFct!865 lt!1043078))))

(declare-fun bs!529006 () Bool)

(assert (= bs!529006 d!847148))

(declare-fun m!3355493 () Bool)

(assert (=> bs!529006 m!3355493))

(assert (=> b!3006245 d!847148))

(assert (=> b!3006245 d!847102))

(assert (=> b!3006622 d!846980))

(assert (=> d!846876 d!847080))

(declare-fun d!847150 () Bool)

(assert (=> d!847150 (= (Exists!1654 lambda!112444) (choose!17848 lambda!112444))))

(declare-fun bs!529007 () Bool)

(assert (= bs!529007 d!847150))

(declare-fun m!3355495 () Bool)

(assert (=> bs!529007 m!3355495))

(assert (=> d!846876 d!847150))

(assert (=> d!846876 d!846852))

(declare-fun bs!529008 () Bool)

(declare-fun d!847152 () Bool)

(assert (= bs!529008 (and d!847152 b!3007509)))

(declare-fun lambda!112478 () Int)

(assert (=> bs!529008 (not (= lambda!112478 lambda!112474))))

(declare-fun bs!529009 () Bool)

(assert (= bs!529009 (and d!847152 b!3007238)))

(assert (=> bs!529009 (not (= lambda!112478 lambda!112473))))

(declare-fun bs!529010 () Bool)

(assert (= bs!529010 (and d!847152 b!3006577)))

(assert (=> bs!529010 (not (= lambda!112478 lambda!112449))))

(declare-fun bs!529011 () Bool)

(assert (= bs!529011 (and d!847152 b!3006050)))

(assert (=> bs!529011 (= lambda!112478 lambda!112417)))

(declare-fun bs!529012 () Bool)

(assert (= bs!529012 (and d!847152 d!846842)))

(assert (=> bs!529012 (= (= lt!1043025 (Star!9385 lt!1043036)) (= lambda!112478 lambda!112438))))

(declare-fun bs!529013 () Bool)

(assert (= bs!529013 (and d!847152 b!3006963)))

(assert (=> bs!529013 (not (= lambda!112478 lambda!112466))))

(declare-fun bs!529014 () Bool)

(assert (= bs!529014 (and d!847152 b!3007505)))

(assert (=> bs!529014 (not (= lambda!112478 lambda!112475))))

(declare-fun bs!529015 () Bool)

(assert (= bs!529015 (and d!847152 b!3006652)))

(assert (=> bs!529015 (not (= lambda!112478 lambda!112451))))

(declare-fun bs!529016 () Bool)

(assert (= bs!529016 (and d!847152 b!3006648)))

(assert (=> bs!529016 (not (= lambda!112478 lambda!112452))))

(declare-fun bs!529017 () Bool)

(assert (= bs!529017 (and d!847152 b!3007242)))

(assert (=> bs!529017 (not (= lambda!112478 lambda!112472))))

(assert (=> bs!529012 (not (= lambda!112478 lambda!112439))))

(declare-fun bs!529018 () Bool)

(assert (= bs!529018 (and d!847152 b!3006573)))

(assert (=> bs!529018 (not (= lambda!112478 lambda!112450))))

(declare-fun bs!529019 () Bool)

(assert (= bs!529019 (and d!847152 d!846876)))

(assert (=> bs!529019 (= lambda!112478 lambda!112444)))

(assert (=> bs!529011 (not (= lambda!112478 lambda!112418))))

(declare-fun bs!529020 () Bool)

(assert (= bs!529020 (and d!847152 b!3006959)))

(assert (=> bs!529020 (not (= lambda!112478 lambda!112467))))

(assert (=> d!847152 true))

(assert (=> d!847152 true))

(assert (=> d!847152 true))

(assert (=> d!847152 (= (isDefined!5315 (findConcatSeparation!1158 lt!1043036 lt!1043025 Nil!35126 s!11993 s!11993)) (Exists!1654 lambda!112478))))

(assert (=> d!847152 true))

(declare-fun _$89!1280 () Unit!49185)

(assert (=> d!847152 (= (choose!17850 lt!1043036 lt!1043025 s!11993) _$89!1280)))

(declare-fun bs!529021 () Bool)

(assert (= bs!529021 d!847152))

(assert (=> bs!529021 m!3354629))

(assert (=> bs!529021 m!3354629))

(assert (=> bs!529021 m!3354853))

(declare-fun m!3355497 () Bool)

(assert (=> bs!529021 m!3355497))

(assert (=> d!846876 d!847152))

(declare-fun d!847154 () Bool)

(assert (=> d!847154 (= (isDefined!5315 (findConcatSeparation!1158 lt!1043036 lt!1043025 Nil!35126 s!11993 s!11993)) (not (isEmpty!19409 (findConcatSeparation!1158 lt!1043036 lt!1043025 Nil!35126 s!11993 s!11993))))))

(declare-fun bs!529022 () Bool)

(assert (= bs!529022 d!847154))

(assert (=> bs!529022 m!3354629))

(declare-fun m!3355499 () Bool)

(assert (=> bs!529022 m!3355499))

(assert (=> d!846876 d!847154))

(assert (=> d!846880 d!846892))

(assert (=> d!846880 d!846906))

(assert (=> b!3006624 d!846980))

(declare-fun d!847156 () Bool)

(assert (=> d!847156 (= (Exists!1654 (ite c!495024 lambda!112449 lambda!112450)) (choose!17848 (ite c!495024 lambda!112449 lambda!112450)))))

(declare-fun bs!529023 () Bool)

(assert (= bs!529023 d!847156))

(declare-fun m!3355501 () Bool)

(assert (=> bs!529023 m!3355501))

(assert (=> bm!202288 d!847156))

(assert (=> b!3006640 d!847102))

(declare-fun d!847158 () Bool)

(assert (=> d!847158 (= (isEmpty!19407 (tail!4925 (_2!20164 lt!1043032))) ((_ is Nil!35126) (tail!4925 (_2!20164 lt!1043032))))))

(assert (=> b!3006705 d!847158))

(declare-fun d!847160 () Bool)

(assert (=> d!847160 (= (tail!4925 (_2!20164 lt!1043032)) (t!234315 (_2!20164 lt!1043032)))))

(assert (=> b!3006705 d!847160))

(declare-fun d!847162 () Bool)

(assert (=> d!847162 (= (isEmptyExpr!485 lt!1043073) ((_ is EmptyExpr!9385) lt!1043073))))

(assert (=> b!3006247 d!847162))

(declare-fun d!847164 () Bool)

(declare-fun lt!1043210 () Int)

(assert (=> d!847164 (>= lt!1043210 0)))

(declare-fun e!1888697 () Int)

(assert (=> d!847164 (= lt!1043210 e!1888697)))

(declare-fun c!495271 () Bool)

(assert (=> d!847164 (= c!495271 ((_ is Nil!35126) (t!234315 s!11993)))))

(assert (=> d!847164 (= (size!26515 (t!234315 s!11993)) lt!1043210)))

(declare-fun b!3007519 () Bool)

(assert (=> b!3007519 (= e!1888697 0)))

(declare-fun b!3007520 () Bool)

(assert (=> b!3007520 (= e!1888697 (+ 1 (size!26515 (t!234315 (t!234315 s!11993)))))))

(assert (= (and d!847164 c!495271) b!3007519))

(assert (= (and d!847164 (not c!495271)) b!3007520))

(declare-fun m!3355503 () Bool)

(assert (=> b!3007520 m!3355503))

(assert (=> b!3006630 d!847164))

(assert (=> bm!202289 d!846892))

(declare-fun bs!529024 () Bool)

(declare-fun b!3007526 () Bool)

(assert (= bs!529024 (and b!3007526 b!3007509)))

(declare-fun lambda!112479 () Int)

(assert (=> bs!529024 (= (and (= (reg!9714 (regTwo!19283 lt!1043025)) (reg!9714 (regOne!19283 r!17423))) (= (regTwo!19283 lt!1043025) (regOne!19283 r!17423))) (= lambda!112479 lambda!112474))))

(declare-fun bs!529025 () Bool)

(assert (= bs!529025 (and b!3007526 b!3007238)))

(assert (=> bs!529025 (not (= lambda!112479 lambda!112473))))

(declare-fun bs!529026 () Bool)

(assert (= bs!529026 (and b!3007526 b!3006577)))

(assert (=> bs!529026 (= (and (= (reg!9714 (regTwo!19283 lt!1043025)) (reg!9714 r!17423)) (= (regTwo!19283 lt!1043025) r!17423)) (= lambda!112479 lambda!112449))))

(declare-fun bs!529027 () Bool)

(assert (= bs!529027 (and b!3007526 d!846842)))

(assert (=> bs!529027 (not (= lambda!112479 lambda!112438))))

(declare-fun bs!529028 () Bool)

(assert (= bs!529028 (and b!3007526 b!3006963)))

(assert (=> bs!529028 (= (and (= (reg!9714 (regTwo!19283 lt!1043025)) (reg!9714 (regOne!19283 lt!1043025))) (= (regTwo!19283 lt!1043025) (regOne!19283 lt!1043025))) (= lambda!112479 lambda!112466))))

(declare-fun bs!529029 () Bool)

(assert (= bs!529029 (and b!3007526 b!3007505)))

(assert (=> bs!529029 (not (= lambda!112479 lambda!112475))))

(declare-fun bs!529030 () Bool)

(assert (= bs!529030 (and b!3007526 b!3006652)))

(assert (=> bs!529030 (= (and (= (reg!9714 (regTwo!19283 lt!1043025)) (reg!9714 lt!1043025)) (= (regTwo!19283 lt!1043025) lt!1043025)) (= lambda!112479 lambda!112451))))

(declare-fun bs!529031 () Bool)

(assert (= bs!529031 (and b!3007526 b!3006648)))

(assert (=> bs!529031 (not (= lambda!112479 lambda!112452))))

(declare-fun bs!529032 () Bool)

(assert (= bs!529032 (and b!3007526 b!3007242)))

(assert (=> bs!529032 (= (and (= (reg!9714 (regTwo!19283 lt!1043025)) (reg!9714 (regTwo!19283 r!17423))) (= (regTwo!19283 lt!1043025) (regTwo!19283 r!17423))) (= lambda!112479 lambda!112472))))

(assert (=> bs!529027 (= (and (= (reg!9714 (regTwo!19283 lt!1043025)) lt!1043036) (= (regTwo!19283 lt!1043025) (Star!9385 lt!1043036))) (= lambda!112479 lambda!112439))))

(declare-fun bs!529033 () Bool)

(assert (= bs!529033 (and b!3007526 b!3006573)))

(assert (=> bs!529033 (not (= lambda!112479 lambda!112450))))

(declare-fun bs!529034 () Bool)

(assert (= bs!529034 (and b!3007526 d!846876)))

(assert (=> bs!529034 (not (= lambda!112479 lambda!112444))))

(declare-fun bs!529035 () Bool)

(assert (= bs!529035 (and b!3007526 b!3006050)))

(assert (=> bs!529035 (not (= lambda!112479 lambda!112417))))

(declare-fun bs!529036 () Bool)

(assert (= bs!529036 (and b!3007526 d!847152)))

(assert (=> bs!529036 (not (= lambda!112479 lambda!112478))))

(assert (=> bs!529035 (= (and (= (reg!9714 (regTwo!19283 lt!1043025)) lt!1043036) (= (regTwo!19283 lt!1043025) lt!1043025)) (= lambda!112479 lambda!112418))))

(declare-fun bs!529037 () Bool)

(assert (= bs!529037 (and b!3007526 b!3006959)))

(assert (=> bs!529037 (not (= lambda!112479 lambda!112467))))

(assert (=> b!3007526 true))

(assert (=> b!3007526 true))

(declare-fun bs!529038 () Bool)

(declare-fun b!3007522 () Bool)

(assert (= bs!529038 (and b!3007522 b!3007509)))

(declare-fun lambda!112480 () Int)

(assert (=> bs!529038 (not (= lambda!112480 lambda!112474))))

(declare-fun bs!529039 () Bool)

(assert (= bs!529039 (and b!3007522 b!3007238)))

(assert (=> bs!529039 (= (and (= (regOne!19282 (regTwo!19283 lt!1043025)) (regOne!19282 (regTwo!19283 r!17423))) (= (regTwo!19282 (regTwo!19283 lt!1043025)) (regTwo!19282 (regTwo!19283 r!17423)))) (= lambda!112480 lambda!112473))))

(declare-fun bs!529040 () Bool)

(assert (= bs!529040 (and b!3007522 b!3006577)))

(assert (=> bs!529040 (not (= lambda!112480 lambda!112449))))

(declare-fun bs!529041 () Bool)

(assert (= bs!529041 (and b!3007522 b!3007526)))

(assert (=> bs!529041 (not (= lambda!112480 lambda!112479))))

(declare-fun bs!529042 () Bool)

(assert (= bs!529042 (and b!3007522 d!846842)))

(assert (=> bs!529042 (not (= lambda!112480 lambda!112438))))

(declare-fun bs!529043 () Bool)

(assert (= bs!529043 (and b!3007522 b!3006963)))

(assert (=> bs!529043 (not (= lambda!112480 lambda!112466))))

(declare-fun bs!529044 () Bool)

(assert (= bs!529044 (and b!3007522 b!3007505)))

(assert (=> bs!529044 (= (and (= (regOne!19282 (regTwo!19283 lt!1043025)) (regOne!19282 (regOne!19283 r!17423))) (= (regTwo!19282 (regTwo!19283 lt!1043025)) (regTwo!19282 (regOne!19283 r!17423)))) (= lambda!112480 lambda!112475))))

(declare-fun bs!529045 () Bool)

(assert (= bs!529045 (and b!3007522 b!3006652)))

(assert (=> bs!529045 (not (= lambda!112480 lambda!112451))))

(declare-fun bs!529046 () Bool)

(assert (= bs!529046 (and b!3007522 b!3006648)))

(assert (=> bs!529046 (= (and (= (regOne!19282 (regTwo!19283 lt!1043025)) (regOne!19282 lt!1043025)) (= (regTwo!19282 (regTwo!19283 lt!1043025)) (regTwo!19282 lt!1043025))) (= lambda!112480 lambda!112452))))

(declare-fun bs!529047 () Bool)

(assert (= bs!529047 (and b!3007522 b!3007242)))

(assert (=> bs!529047 (not (= lambda!112480 lambda!112472))))

(assert (=> bs!529042 (not (= lambda!112480 lambda!112439))))

(declare-fun bs!529048 () Bool)

(assert (= bs!529048 (and b!3007522 b!3006573)))

(assert (=> bs!529048 (= (and (= (regOne!19282 (regTwo!19283 lt!1043025)) (regOne!19282 r!17423)) (= (regTwo!19282 (regTwo!19283 lt!1043025)) (regTwo!19282 r!17423))) (= lambda!112480 lambda!112450))))

(declare-fun bs!529049 () Bool)

(assert (= bs!529049 (and b!3007522 d!846876)))

(assert (=> bs!529049 (not (= lambda!112480 lambda!112444))))

(declare-fun bs!529050 () Bool)

(assert (= bs!529050 (and b!3007522 b!3006050)))

(assert (=> bs!529050 (not (= lambda!112480 lambda!112417))))

(declare-fun bs!529051 () Bool)

(assert (= bs!529051 (and b!3007522 d!847152)))

(assert (=> bs!529051 (not (= lambda!112480 lambda!112478))))

(assert (=> bs!529050 (not (= lambda!112480 lambda!112418))))

(declare-fun bs!529052 () Bool)

(assert (= bs!529052 (and b!3007522 b!3006959)))

(assert (=> bs!529052 (= (and (= (regOne!19282 (regTwo!19283 lt!1043025)) (regOne!19282 (regOne!19283 lt!1043025))) (= (regTwo!19282 (regTwo!19283 lt!1043025)) (regTwo!19282 (regOne!19283 lt!1043025)))) (= lambda!112480 lambda!112467))))

(assert (=> b!3007522 true))

(assert (=> b!3007522 true))

(declare-fun b!3007521 () Bool)

(declare-fun e!1888699 () Bool)

(declare-fun e!1888704 () Bool)

(assert (=> b!3007521 (= e!1888699 e!1888704)))

(declare-fun c!495272 () Bool)

(assert (=> b!3007521 (= c!495272 ((_ is Star!9385) (regTwo!19283 lt!1043025)))))

(declare-fun call!202444 () Bool)

(assert (=> b!3007522 (= e!1888704 call!202444)))

(declare-fun b!3007523 () Bool)

(declare-fun c!495273 () Bool)

(assert (=> b!3007523 (= c!495273 ((_ is ElementMatch!9385) (regTwo!19283 lt!1043025)))))

(declare-fun e!1888702 () Bool)

(declare-fun e!1888703 () Bool)

(assert (=> b!3007523 (= e!1888702 e!1888703)))

(declare-fun b!3007524 () Bool)

(assert (=> b!3007524 (= e!1888703 (= s!11993 (Cons!35126 (c!494883 (regTwo!19283 lt!1043025)) Nil!35126)))))

(declare-fun b!3007525 () Bool)

(declare-fun res!1239454 () Bool)

(declare-fun e!1888698 () Bool)

(assert (=> b!3007525 (=> res!1239454 e!1888698)))

(declare-fun call!202445 () Bool)

(assert (=> b!3007525 (= res!1239454 call!202445)))

(assert (=> b!3007525 (= e!1888704 e!1888698)))

(assert (=> b!3007526 (= e!1888698 call!202444)))

(declare-fun b!3007527 () Bool)

(declare-fun e!1888700 () Bool)

(assert (=> b!3007527 (= e!1888699 e!1888700)))

(declare-fun res!1239453 () Bool)

(assert (=> b!3007527 (= res!1239453 (matchRSpec!1522 (regOne!19283 (regTwo!19283 lt!1043025)) s!11993))))

(assert (=> b!3007527 (=> res!1239453 e!1888700)))

(declare-fun b!3007528 () Bool)

(declare-fun e!1888701 () Bool)

(assert (=> b!3007528 (= e!1888701 call!202445)))

(declare-fun b!3007529 () Bool)

(assert (=> b!3007529 (= e!1888701 e!1888702)))

(declare-fun res!1239455 () Bool)

(assert (=> b!3007529 (= res!1239455 (not ((_ is EmptyLang!9385) (regTwo!19283 lt!1043025))))))

(assert (=> b!3007529 (=> (not res!1239455) (not e!1888702))))

(declare-fun b!3007530 () Bool)

(declare-fun c!495275 () Bool)

(assert (=> b!3007530 (= c!495275 ((_ is Union!9385) (regTwo!19283 lt!1043025)))))

(assert (=> b!3007530 (= e!1888703 e!1888699)))

(declare-fun bm!202439 () Bool)

(assert (=> bm!202439 (= call!202444 (Exists!1654 (ite c!495272 lambda!112479 lambda!112480)))))

(declare-fun d!847166 () Bool)

(declare-fun c!495274 () Bool)

(assert (=> d!847166 (= c!495274 ((_ is EmptyExpr!9385) (regTwo!19283 lt!1043025)))))

(assert (=> d!847166 (= (matchRSpec!1522 (regTwo!19283 lt!1043025) s!11993) e!1888701)))

(declare-fun b!3007531 () Bool)

(assert (=> b!3007531 (= e!1888700 (matchRSpec!1522 (regTwo!19283 (regTwo!19283 lt!1043025)) s!11993))))

(declare-fun bm!202440 () Bool)

(assert (=> bm!202440 (= call!202445 (isEmpty!19407 s!11993))))

(assert (= (and d!847166 c!495274) b!3007528))

(assert (= (and d!847166 (not c!495274)) b!3007529))

(assert (= (and b!3007529 res!1239455) b!3007523))

(assert (= (and b!3007523 c!495273) b!3007524))

(assert (= (and b!3007523 (not c!495273)) b!3007530))

(assert (= (and b!3007530 c!495275) b!3007527))

(assert (= (and b!3007530 (not c!495275)) b!3007521))

(assert (= (and b!3007527 (not res!1239453)) b!3007531))

(assert (= (and b!3007521 c!495272) b!3007525))

(assert (= (and b!3007521 (not c!495272)) b!3007522))

(assert (= (and b!3007525 (not res!1239454)) b!3007526))

(assert (= (or b!3007526 b!3007522) bm!202439))

(assert (= (or b!3007528 b!3007525) bm!202440))

(declare-fun m!3355505 () Bool)

(assert (=> b!3007527 m!3355505))

(declare-fun m!3355507 () Bool)

(assert (=> bm!202439 m!3355507))

(declare-fun m!3355509 () Bool)

(assert (=> b!3007531 m!3355509))

(assert (=> bm!202440 m!3354617))

(assert (=> b!3006657 d!847166))

(assert (=> d!846910 d!846892))

(assert (=> d!846910 d!846992))

(assert (=> b!3006644 d!847124))

(assert (=> b!3006664 d!847052))

(assert (=> b!3006664 d!847054))

(declare-fun d!847168 () Bool)

(declare-fun lt!1043211 () Int)

(assert (=> d!847168 (>= lt!1043211 0)))

(declare-fun e!1888705 () Int)

(assert (=> d!847168 (= lt!1043211 e!1888705)))

(declare-fun c!495276 () Bool)

(assert (=> d!847168 (= c!495276 ((_ is Nil!35126) lt!1043042))))

(assert (=> d!847168 (= (size!26515 lt!1043042) lt!1043211)))

(declare-fun b!3007532 () Bool)

(assert (=> b!3007532 (= e!1888705 0)))

(declare-fun b!3007533 () Bool)

(assert (=> b!3007533 (= e!1888705 (+ 1 (size!26515 (t!234315 lt!1043042))))))

(assert (= (and d!847168 c!495276) b!3007532))

(assert (= (and d!847168 (not c!495276)) b!3007533))

(declare-fun m!3355511 () Bool)

(assert (=> b!3007533 m!3355511))

(assert (=> b!3006082 d!847168))

(assert (=> b!3006082 d!846898))

(assert (=> b!3006082 d!846886))

(assert (=> b!3006709 d!847158))

(assert (=> b!3006709 d!847160))

(declare-fun d!847170 () Bool)

(declare-fun c!495279 () Bool)

(assert (=> d!847170 (= c!495279 ((_ is Nil!35126) lt!1043042))))

(declare-fun e!1888708 () (InoxSet C!18956))

(assert (=> d!847170 (= (content!4782 lt!1043042) e!1888708)))

(declare-fun b!3007538 () Bool)

(assert (=> b!3007538 (= e!1888708 ((as const (Array C!18956 Bool)) false))))

(declare-fun b!3007539 () Bool)

(assert (=> b!3007539 (= e!1888708 ((_ map or) (store ((as const (Array C!18956 Bool)) false) (h!40546 lt!1043042) true) (content!4782 (t!234315 lt!1043042))))))

(assert (= (and d!847170 c!495279) b!3007538))

(assert (= (and d!847170 (not c!495279)) b!3007539))

(declare-fun m!3355513 () Bool)

(assert (=> b!3007539 m!3355513))

(declare-fun m!3355515 () Bool)

(assert (=> b!3007539 m!3355515))

(assert (=> d!846808 d!847170))

(declare-fun d!847172 () Bool)

(declare-fun c!495280 () Bool)

(assert (=> d!847172 (= c!495280 ((_ is Nil!35126) (_1!20164 lt!1043032)))))

(declare-fun e!1888709 () (InoxSet C!18956))

(assert (=> d!847172 (= (content!4782 (_1!20164 lt!1043032)) e!1888709)))

(declare-fun b!3007540 () Bool)

(assert (=> b!3007540 (= e!1888709 ((as const (Array C!18956 Bool)) false))))

(declare-fun b!3007541 () Bool)

(assert (=> b!3007541 (= e!1888709 ((_ map or) (store ((as const (Array C!18956 Bool)) false) (h!40546 (_1!20164 lt!1043032)) true) (content!4782 (t!234315 (_1!20164 lt!1043032)))))))

(assert (= (and d!847172 c!495280) b!3007540))

(assert (= (and d!847172 (not c!495280)) b!3007541))

(declare-fun m!3355517 () Bool)

(assert (=> b!3007541 m!3355517))

(assert (=> b!3007541 m!3355417))

(assert (=> d!846808 d!847172))

(declare-fun d!847174 () Bool)

(declare-fun c!495281 () Bool)

(assert (=> d!847174 (= c!495281 ((_ is Nil!35126) (_2!20164 lt!1043032)))))

(declare-fun e!1888710 () (InoxSet C!18956))

(assert (=> d!847174 (= (content!4782 (_2!20164 lt!1043032)) e!1888710)))

(declare-fun b!3007542 () Bool)

(assert (=> b!3007542 (= e!1888710 ((as const (Array C!18956 Bool)) false))))

(declare-fun b!3007543 () Bool)

(assert (=> b!3007543 (= e!1888710 ((_ map or) (store ((as const (Array C!18956 Bool)) false) (h!40546 (_2!20164 lt!1043032)) true) (content!4782 (t!234315 (_2!20164 lt!1043032)))))))

(assert (= (and d!847174 c!495281) b!3007542))

(assert (= (and d!847174 (not c!495281)) b!3007543))

(declare-fun m!3355519 () Bool)

(assert (=> b!3007543 m!3355519))

(declare-fun m!3355521 () Bool)

(assert (=> b!3007543 m!3355521))

(assert (=> d!846808 d!847174))

(declare-fun b!3007544 () Bool)

(declare-fun e!1888717 () Bool)

(declare-fun call!202446 () Bool)

(assert (=> b!3007544 (= e!1888717 call!202446)))

(declare-fun b!3007545 () Bool)

(declare-fun res!1239457 () Bool)

(declare-fun e!1888716 () Bool)

(assert (=> b!3007545 (=> (not res!1239457) (not e!1888716))))

(declare-fun call!202447 () Bool)

(assert (=> b!3007545 (= res!1239457 call!202447)))

(declare-fun e!1888714 () Bool)

(assert (=> b!3007545 (= e!1888714 e!1888716)))

(declare-fun b!3007546 () Bool)

(declare-fun e!1888712 () Bool)

(assert (=> b!3007546 (= e!1888712 e!1888717)))

(declare-fun res!1239456 () Bool)

(assert (=> b!3007546 (= res!1239456 (not (nullable!3042 (reg!9714 (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))))))))

(assert (=> b!3007546 (=> (not res!1239456) (not e!1888717))))

(declare-fun b!3007547 () Bool)

(declare-fun res!1239458 () Bool)

(declare-fun e!1888711 () Bool)

(assert (=> b!3007547 (=> res!1239458 e!1888711)))

(assert (=> b!3007547 (= res!1239458 (not ((_ is Concat!14706) (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423))))))))

(assert (=> b!3007547 (= e!1888714 e!1888711)))

(declare-fun b!3007548 () Bool)

(assert (=> b!3007548 (= e!1888712 e!1888714)))

(declare-fun c!495283 () Bool)

(assert (=> b!3007548 (= c!495283 ((_ is Union!9385) (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))))))

(declare-fun bm!202441 () Bool)

(declare-fun c!495282 () Bool)

(assert (=> bm!202441 (= call!202446 (validRegex!4118 (ite c!495282 (reg!9714 (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))) (ite c!495283 (regTwo!19283 (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))) (regOne!19282 (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423))))))))))

(declare-fun bm!202442 () Bool)

(assert (=> bm!202442 (= call!202447 (validRegex!4118 (ite c!495283 (regOne!19283 (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))) (regTwo!19282 (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))))))))

(declare-fun bm!202443 () Bool)

(declare-fun call!202448 () Bool)

(assert (=> bm!202443 (= call!202448 call!202446)))

(declare-fun b!3007549 () Bool)

(assert (=> b!3007549 (= e!1888716 call!202448)))

(declare-fun b!3007550 () Bool)

(declare-fun e!1888713 () Bool)

(assert (=> b!3007550 (= e!1888711 e!1888713)))

(declare-fun res!1239459 () Bool)

(assert (=> b!3007550 (=> (not res!1239459) (not e!1888713))))

(assert (=> b!3007550 (= res!1239459 call!202448)))

(declare-fun d!847176 () Bool)

(declare-fun res!1239460 () Bool)

(declare-fun e!1888715 () Bool)

(assert (=> d!847176 (=> res!1239460 e!1888715)))

(assert (=> d!847176 (= res!1239460 ((_ is ElementMatch!9385) (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))))))

(assert (=> d!847176 (= (validRegex!4118 (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))) e!1888715)))

(declare-fun b!3007551 () Bool)

(assert (=> b!3007551 (= e!1888713 call!202447)))

(declare-fun b!3007552 () Bool)

(assert (=> b!3007552 (= e!1888715 e!1888712)))

(assert (=> b!3007552 (= c!495282 ((_ is Star!9385) (ite c!495056 (reg!9714 r!17423) (ite c!495057 (regTwo!19283 r!17423) (regOne!19282 r!17423)))))))

(assert (= (and d!847176 (not res!1239460)) b!3007552))

(assert (= (and b!3007552 c!495282) b!3007546))

(assert (= (and b!3007552 (not c!495282)) b!3007548))

(assert (= (and b!3007546 res!1239456) b!3007544))

(assert (= (and b!3007548 c!495283) b!3007545))

(assert (= (and b!3007548 (not c!495283)) b!3007547))

(assert (= (and b!3007545 res!1239457) b!3007549))

(assert (= (and b!3007547 (not res!1239458)) b!3007550))

(assert (= (and b!3007550 res!1239459) b!3007551))

(assert (= (or b!3007545 b!3007551) bm!202442))

(assert (= (or b!3007549 b!3007550) bm!202443))

(assert (= (or b!3007544 bm!202443) bm!202441))

(declare-fun m!3355523 () Bool)

(assert (=> b!3007546 m!3355523))

(declare-fun m!3355525 () Bool)

(assert (=> bm!202441 m!3355525))

(declare-fun m!3355527 () Bool)

(assert (=> bm!202442 m!3355527))

(assert (=> bm!202303 d!847176))

(declare-fun d!847178 () Bool)

(assert (=> d!847178 (= (isEmptyLang!475 (ite c!494938 lt!1043076 (ite c!494937 lt!1043074 lt!1043077))) ((_ is EmptyLang!9385) (ite c!494938 lt!1043076 (ite c!494937 lt!1043074 lt!1043077))))))

(assert (=> bm!202247 d!847178))

(assert (=> b!3006646 d!847124))

(assert (=> d!846852 d!847146))

(declare-fun b!3007553 () Bool)

(declare-fun e!1888724 () Bool)

(declare-fun lt!1043212 () Bool)

(declare-fun call!202449 () Bool)

(assert (=> b!3007553 (= e!1888724 (= lt!1043212 call!202449))))

(declare-fun b!3007554 () Bool)

(declare-fun res!1239464 () Bool)

(declare-fun e!1888720 () Bool)

(assert (=> b!3007554 (=> (not res!1239464) (not e!1888720))))

(assert (=> b!3007554 (= res!1239464 (not call!202449))))

(declare-fun b!3007555 () Bool)

(declare-fun res!1239462 () Bool)

(declare-fun e!1888718 () Bool)

(assert (=> b!3007555 (=> res!1239462 e!1888718)))

(assert (=> b!3007555 (= res!1239462 e!1888720)))

(declare-fun res!1239468 () Bool)

(assert (=> b!3007555 (=> (not res!1239468) (not e!1888720))))

(assert (=> b!3007555 (= res!1239468 lt!1043212)))

(declare-fun b!3007556 () Bool)

(declare-fun e!1888719 () Bool)

(assert (=> b!3007556 (= e!1888724 e!1888719)))

(declare-fun c!495285 () Bool)

(assert (=> b!3007556 (= c!495285 ((_ is EmptyLang!9385) lt!1043036))))

(declare-fun bm!202444 () Bool)

(assert (=> bm!202444 (= call!202449 (isEmpty!19407 Nil!35126))))

(declare-fun b!3007557 () Bool)

(declare-fun res!1239461 () Bool)

(declare-fun e!1888723 () Bool)

(assert (=> b!3007557 (=> res!1239461 e!1888723)))

(assert (=> b!3007557 (= res!1239461 (not (isEmpty!19407 (tail!4925 Nil!35126))))))

(declare-fun b!3007558 () Bool)

(assert (=> b!3007558 (= e!1888719 (not lt!1043212))))

(declare-fun b!3007559 () Bool)

(declare-fun e!1888722 () Bool)

(assert (=> b!3007559 (= e!1888722 e!1888723)))

(declare-fun res!1239466 () Bool)

(assert (=> b!3007559 (=> res!1239466 e!1888723)))

(assert (=> b!3007559 (= res!1239466 call!202449)))

(declare-fun b!3007560 () Bool)

(declare-fun e!1888721 () Bool)

(assert (=> b!3007560 (= e!1888721 (nullable!3042 lt!1043036))))

(declare-fun d!847180 () Bool)

(assert (=> d!847180 e!1888724))

(declare-fun c!495286 () Bool)

(assert (=> d!847180 (= c!495286 ((_ is EmptyExpr!9385) lt!1043036))))

(assert (=> d!847180 (= lt!1043212 e!1888721)))

(declare-fun c!495284 () Bool)

(assert (=> d!847180 (= c!495284 (isEmpty!19407 Nil!35126))))

(assert (=> d!847180 (validRegex!4118 lt!1043036)))

(assert (=> d!847180 (= (matchR!4267 lt!1043036 Nil!35126) lt!1043212)))

(declare-fun b!3007561 () Bool)

(declare-fun res!1239467 () Bool)

(assert (=> b!3007561 (=> (not res!1239467) (not e!1888720))))

(assert (=> b!3007561 (= res!1239467 (isEmpty!19407 (tail!4925 Nil!35126)))))

(declare-fun b!3007562 () Bool)

(assert (=> b!3007562 (= e!1888718 e!1888722)))

(declare-fun res!1239463 () Bool)

(assert (=> b!3007562 (=> (not res!1239463) (not e!1888722))))

(assert (=> b!3007562 (= res!1239463 (not lt!1043212))))

(declare-fun b!3007563 () Bool)

(declare-fun res!1239465 () Bool)

(assert (=> b!3007563 (=> res!1239465 e!1888718)))

(assert (=> b!3007563 (= res!1239465 (not ((_ is ElementMatch!9385) lt!1043036)))))

(assert (=> b!3007563 (= e!1888719 e!1888718)))

(declare-fun b!3007564 () Bool)

(assert (=> b!3007564 (= e!1888720 (= (head!6699 Nil!35126) (c!494883 lt!1043036)))))

(declare-fun b!3007565 () Bool)

(assert (=> b!3007565 (= e!1888721 (matchR!4267 (derivativeStep!2640 lt!1043036 (head!6699 Nil!35126)) (tail!4925 Nil!35126)))))

(declare-fun b!3007566 () Bool)

(assert (=> b!3007566 (= e!1888723 (not (= (head!6699 Nil!35126) (c!494883 lt!1043036))))))

(assert (= (and d!847180 c!495284) b!3007560))

(assert (= (and d!847180 (not c!495284)) b!3007565))

(assert (= (and d!847180 c!495286) b!3007553))

(assert (= (and d!847180 (not c!495286)) b!3007556))

(assert (= (and b!3007556 c!495285) b!3007558))

(assert (= (and b!3007556 (not c!495285)) b!3007563))

(assert (= (and b!3007563 (not res!1239465)) b!3007555))

(assert (= (and b!3007555 res!1239468) b!3007554))

(assert (= (and b!3007554 res!1239464) b!3007561))

(assert (= (and b!3007561 res!1239467) b!3007564))

(assert (= (and b!3007555 (not res!1239462)) b!3007562))

(assert (= (and b!3007562 res!1239463) b!3007559))

(assert (= (and b!3007559 (not res!1239466)) b!3007557))

(assert (= (and b!3007557 (not res!1239461)) b!3007566))

(assert (= (or b!3007553 b!3007554 b!3007559) bm!202444))

(declare-fun m!3355529 () Bool)

(assert (=> b!3007566 m!3355529))

(assert (=> b!3007564 m!3355529))

(assert (=> b!3007565 m!3355529))

(assert (=> b!3007565 m!3355529))

(declare-fun m!3355531 () Bool)

(assert (=> b!3007565 m!3355531))

(declare-fun m!3355533 () Bool)

(assert (=> b!3007565 m!3355533))

(assert (=> b!3007565 m!3355531))

(assert (=> b!3007565 m!3355533))

(declare-fun m!3355535 () Bool)

(assert (=> b!3007565 m!3355535))

(declare-fun m!3355537 () Bool)

(assert (=> bm!202444 m!3355537))

(assert (=> b!3007560 m!3354909))

(assert (=> d!847180 m!3355537))

(assert (=> d!847180 m!3354771))

(assert (=> b!3007557 m!3355533))

(assert (=> b!3007557 m!3355533))

(declare-fun m!3355539 () Bool)

(assert (=> b!3007557 m!3355539))

(assert (=> b!3007561 m!3355533))

(assert (=> b!3007561 m!3355533))

(assert (=> b!3007561 m!3355539))

(assert (=> d!846852 d!847180))

(assert (=> d!846852 d!847080))

(assert (=> bm!202307 d!846892))

(assert (=> b!3006668 d!847052))

(assert (=> b!3006668 d!847054))

(declare-fun b!3007567 () Bool)

(declare-fun e!1888731 () Bool)

(declare-fun lt!1043213 () Bool)

(declare-fun call!202450 () Bool)

(assert (=> b!3007567 (= e!1888731 (= lt!1043213 call!202450))))

(declare-fun b!3007568 () Bool)

(declare-fun res!1239472 () Bool)

(declare-fun e!1888727 () Bool)

(assert (=> b!3007568 (=> (not res!1239472) (not e!1888727))))

(assert (=> b!3007568 (= res!1239472 (not call!202450))))

(declare-fun b!3007569 () Bool)

(declare-fun res!1239470 () Bool)

(declare-fun e!1888725 () Bool)

(assert (=> b!3007569 (=> res!1239470 e!1888725)))

(assert (=> b!3007569 (= res!1239470 e!1888727)))

(declare-fun res!1239476 () Bool)

(assert (=> b!3007569 (=> (not res!1239476) (not e!1888727))))

(assert (=> b!3007569 (= res!1239476 lt!1043213)))

(declare-fun b!3007570 () Bool)

(declare-fun e!1888726 () Bool)

(assert (=> b!3007570 (= e!1888731 e!1888726)))

(declare-fun c!495288 () Bool)

(assert (=> b!3007570 (= c!495288 ((_ is EmptyLang!9385) (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032)))))))

(declare-fun bm!202445 () Bool)

(assert (=> bm!202445 (= call!202450 (isEmpty!19407 (tail!4925 (_2!20164 lt!1043032))))))

(declare-fun b!3007571 () Bool)

(declare-fun res!1239469 () Bool)

(declare-fun e!1888730 () Bool)

(assert (=> b!3007571 (=> res!1239469 e!1888730)))

(assert (=> b!3007571 (= res!1239469 (not (isEmpty!19407 (tail!4925 (tail!4925 (_2!20164 lt!1043032))))))))

(declare-fun b!3007572 () Bool)

(assert (=> b!3007572 (= e!1888726 (not lt!1043213))))

(declare-fun b!3007573 () Bool)

(declare-fun e!1888729 () Bool)

(assert (=> b!3007573 (= e!1888729 e!1888730)))

(declare-fun res!1239474 () Bool)

(assert (=> b!3007573 (=> res!1239474 e!1888730)))

(assert (=> b!3007573 (= res!1239474 call!202450)))

(declare-fun b!3007574 () Bool)

(declare-fun e!1888728 () Bool)

(assert (=> b!3007574 (= e!1888728 (nullable!3042 (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032)))))))

(declare-fun d!847182 () Bool)

(assert (=> d!847182 e!1888731))

(declare-fun c!495289 () Bool)

(assert (=> d!847182 (= c!495289 ((_ is EmptyExpr!9385) (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032)))))))

(assert (=> d!847182 (= lt!1043213 e!1888728)))

(declare-fun c!495287 () Bool)

(assert (=> d!847182 (= c!495287 (isEmpty!19407 (tail!4925 (_2!20164 lt!1043032))))))

(assert (=> d!847182 (validRegex!4118 (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032))))))

(assert (=> d!847182 (= (matchR!4267 (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032))) (tail!4925 (_2!20164 lt!1043032))) lt!1043213)))

(declare-fun b!3007575 () Bool)

(declare-fun res!1239475 () Bool)

(assert (=> b!3007575 (=> (not res!1239475) (not e!1888727))))

(assert (=> b!3007575 (= res!1239475 (isEmpty!19407 (tail!4925 (tail!4925 (_2!20164 lt!1043032)))))))

(declare-fun b!3007576 () Bool)

(assert (=> b!3007576 (= e!1888725 e!1888729)))

(declare-fun res!1239471 () Bool)

(assert (=> b!3007576 (=> (not res!1239471) (not e!1888729))))

(assert (=> b!3007576 (= res!1239471 (not lt!1043213))))

(declare-fun b!3007577 () Bool)

(declare-fun res!1239473 () Bool)

(assert (=> b!3007577 (=> res!1239473 e!1888725)))

(assert (=> b!3007577 (= res!1239473 (not ((_ is ElementMatch!9385) (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032))))))))

(assert (=> b!3007577 (= e!1888726 e!1888725)))

(declare-fun b!3007578 () Bool)

(assert (=> b!3007578 (= e!1888727 (= (head!6699 (tail!4925 (_2!20164 lt!1043032))) (c!494883 (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032))))))))

(declare-fun b!3007579 () Bool)

(assert (=> b!3007579 (= e!1888728 (matchR!4267 (derivativeStep!2640 (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032))) (head!6699 (tail!4925 (_2!20164 lt!1043032)))) (tail!4925 (tail!4925 (_2!20164 lt!1043032)))))))

(declare-fun b!3007580 () Bool)

(assert (=> b!3007580 (= e!1888730 (not (= (head!6699 (tail!4925 (_2!20164 lt!1043032))) (c!494883 (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032)))))))))

(assert (= (and d!847182 c!495287) b!3007574))

(assert (= (and d!847182 (not c!495287)) b!3007579))

(assert (= (and d!847182 c!495289) b!3007567))

(assert (= (and d!847182 (not c!495289)) b!3007570))

(assert (= (and b!3007570 c!495288) b!3007572))

(assert (= (and b!3007570 (not c!495288)) b!3007577))

(assert (= (and b!3007577 (not res!1239473)) b!3007569))

(assert (= (and b!3007569 res!1239476) b!3007568))

(assert (= (and b!3007568 res!1239472) b!3007575))

(assert (= (and b!3007575 res!1239475) b!3007578))

(assert (= (and b!3007569 (not res!1239470)) b!3007576))

(assert (= (and b!3007576 res!1239471) b!3007573))

(assert (= (and b!3007573 (not res!1239474)) b!3007571))

(assert (= (and b!3007571 (not res!1239469)) b!3007580))

(assert (= (or b!3007567 b!3007568 b!3007573) bm!202445))

(assert (=> b!3007580 m!3354919))

(declare-fun m!3355541 () Bool)

(assert (=> b!3007580 m!3355541))

(assert (=> b!3007578 m!3354919))

(assert (=> b!3007578 m!3355541))

(assert (=> b!3007579 m!3354919))

(assert (=> b!3007579 m!3355541))

(assert (=> b!3007579 m!3354917))

(assert (=> b!3007579 m!3355541))

(declare-fun m!3355543 () Bool)

(assert (=> b!3007579 m!3355543))

(assert (=> b!3007579 m!3354919))

(declare-fun m!3355545 () Bool)

(assert (=> b!3007579 m!3355545))

(assert (=> b!3007579 m!3355543))

(assert (=> b!3007579 m!3355545))

(declare-fun m!3355547 () Bool)

(assert (=> b!3007579 m!3355547))

(assert (=> bm!202445 m!3354919))

(assert (=> bm!202445 m!3354927))

(assert (=> b!3007574 m!3354917))

(declare-fun m!3355549 () Bool)

(assert (=> b!3007574 m!3355549))

(assert (=> d!847182 m!3354919))

(assert (=> d!847182 m!3354927))

(assert (=> d!847182 m!3354917))

(declare-fun m!3355551 () Bool)

(assert (=> d!847182 m!3355551))

(assert (=> b!3007571 m!3354919))

(assert (=> b!3007571 m!3355545))

(assert (=> b!3007571 m!3355545))

(declare-fun m!3355553 () Bool)

(assert (=> b!3007571 m!3355553))

(assert (=> b!3007575 m!3354919))

(assert (=> b!3007575 m!3355545))

(assert (=> b!3007575 m!3355545))

(assert (=> b!3007575 m!3355553))

(assert (=> b!3006713 d!847182))

(declare-fun b!3007581 () Bool)

(declare-fun e!1888732 () Regex!9385)

(declare-fun call!202453 () Regex!9385)

(declare-fun call!202452 () Regex!9385)

(assert (=> b!3007581 (= e!1888732 (Union!9385 call!202453 call!202452))))

(declare-fun b!3007582 () Bool)

(declare-fun e!1888736 () Regex!9385)

(assert (=> b!3007582 (= e!1888736 (ite (= (head!6699 (_2!20164 lt!1043032)) (c!494883 lt!1043025)) EmptyExpr!9385 EmptyLang!9385))))

(declare-fun b!3007583 () Bool)

(declare-fun c!495293 () Bool)

(assert (=> b!3007583 (= c!495293 ((_ is Union!9385) lt!1043025))))

(assert (=> b!3007583 (= e!1888736 e!1888732)))

(declare-fun bm!202446 () Bool)

(assert (=> bm!202446 (= call!202452 (derivativeStep!2640 (ite c!495293 (regTwo!19283 lt!1043025) (regTwo!19282 lt!1043025)) (head!6699 (_2!20164 lt!1043032))))))

(declare-fun bm!202447 () Bool)

(declare-fun call!202451 () Regex!9385)

(assert (=> bm!202447 (= call!202451 call!202453)))

(declare-fun bm!202448 () Bool)

(declare-fun call!202454 () Regex!9385)

(assert (=> bm!202448 (= call!202454 call!202451)))

(declare-fun b!3007584 () Bool)

(declare-fun e!1888734 () Regex!9385)

(assert (=> b!3007584 (= e!1888734 EmptyLang!9385)))

(declare-fun b!3007585 () Bool)

(declare-fun c!495292 () Bool)

(assert (=> b!3007585 (= c!495292 (nullable!3042 (regOne!19282 lt!1043025)))))

(declare-fun e!1888733 () Regex!9385)

(declare-fun e!1888735 () Regex!9385)

(assert (=> b!3007585 (= e!1888733 e!1888735)))

(declare-fun b!3007586 () Bool)

(assert (=> b!3007586 (= e!1888735 (Union!9385 (Concat!14706 call!202454 (regTwo!19282 lt!1043025)) EmptyLang!9385))))

(declare-fun b!3007587 () Bool)

(assert (=> b!3007587 (= e!1888732 e!1888733)))

(declare-fun c!495294 () Bool)

(assert (=> b!3007587 (= c!495294 ((_ is Star!9385) lt!1043025))))

(declare-fun b!3007588 () Bool)

(assert (=> b!3007588 (= e!1888735 (Union!9385 (Concat!14706 call!202454 (regTwo!19282 lt!1043025)) call!202452))))

(declare-fun b!3007589 () Bool)

(assert (=> b!3007589 (= e!1888734 e!1888736)))

(declare-fun c!495291 () Bool)

(assert (=> b!3007589 (= c!495291 ((_ is ElementMatch!9385) lt!1043025))))

(declare-fun d!847184 () Bool)

(declare-fun lt!1043214 () Regex!9385)

(assert (=> d!847184 (validRegex!4118 lt!1043214)))

(assert (=> d!847184 (= lt!1043214 e!1888734)))

(declare-fun c!495290 () Bool)

(assert (=> d!847184 (= c!495290 (or ((_ is EmptyExpr!9385) lt!1043025) ((_ is EmptyLang!9385) lt!1043025)))))

(assert (=> d!847184 (validRegex!4118 lt!1043025)))

(assert (=> d!847184 (= (derivativeStep!2640 lt!1043025 (head!6699 (_2!20164 lt!1043032))) lt!1043214)))

(declare-fun bm!202449 () Bool)

(assert (=> bm!202449 (= call!202453 (derivativeStep!2640 (ite c!495293 (regOne!19283 lt!1043025) (ite c!495294 (reg!9714 lt!1043025) (regOne!19282 lt!1043025))) (head!6699 (_2!20164 lt!1043032))))))

(declare-fun b!3007590 () Bool)

(assert (=> b!3007590 (= e!1888733 (Concat!14706 call!202451 lt!1043025))))

(assert (= (and d!847184 c!495290) b!3007584))

(assert (= (and d!847184 (not c!495290)) b!3007589))

(assert (= (and b!3007589 c!495291) b!3007582))

(assert (= (and b!3007589 (not c!495291)) b!3007583))

(assert (= (and b!3007583 c!495293) b!3007581))

(assert (= (and b!3007583 (not c!495293)) b!3007587))

(assert (= (and b!3007587 c!495294) b!3007590))

(assert (= (and b!3007587 (not c!495294)) b!3007585))

(assert (= (and b!3007585 c!495292) b!3007588))

(assert (= (and b!3007585 (not c!495292)) b!3007586))

(assert (= (or b!3007588 b!3007586) bm!202448))

(assert (= (or b!3007590 bm!202448) bm!202447))

(assert (= (or b!3007581 b!3007588) bm!202446))

(assert (= (or b!3007581 bm!202447) bm!202449))

(assert (=> bm!202446 m!3354915))

(declare-fun m!3355555 () Bool)

(assert (=> bm!202446 m!3355555))

(assert (=> b!3007585 m!3355479))

(declare-fun m!3355557 () Bool)

(assert (=> d!847184 m!3355557))

(assert (=> d!847184 m!3354901))

(assert (=> bm!202449 m!3354915))

(declare-fun m!3355559 () Bool)

(assert (=> bm!202449 m!3355559))

(assert (=> b!3006713 d!847184))

(assert (=> b!3006713 d!847128))

(assert (=> b!3006713 d!847160))

(assert (=> b!3006528 d!846910))

(assert (=> b!3006722 d!847114))

(declare-fun b!3007591 () Bool)

(declare-fun e!1888743 () Bool)

(declare-fun lt!1043215 () Bool)

(declare-fun call!202455 () Bool)

(assert (=> b!3007591 (= e!1888743 (= lt!1043215 call!202455))))

(declare-fun b!3007592 () Bool)

(declare-fun res!1239480 () Bool)

(declare-fun e!1888739 () Bool)

(assert (=> b!3007592 (=> (not res!1239480) (not e!1888739))))

(assert (=> b!3007592 (= res!1239480 (not call!202455))))

(declare-fun b!3007593 () Bool)

(declare-fun res!1239478 () Bool)

(declare-fun e!1888737 () Bool)

(assert (=> b!3007593 (=> res!1239478 e!1888737)))

(assert (=> b!3007593 (= res!1239478 e!1888739)))

(declare-fun res!1239484 () Bool)

(assert (=> b!3007593 (=> (not res!1239484) (not e!1888739))))

(assert (=> b!3007593 (= res!1239484 lt!1043215)))

(declare-fun b!3007594 () Bool)

(declare-fun e!1888738 () Bool)

(assert (=> b!3007594 (= e!1888743 e!1888738)))

(declare-fun c!495296 () Bool)

(assert (=> b!3007594 (= c!495296 ((_ is EmptyLang!9385) (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032)))))))

(declare-fun bm!202450 () Bool)

(assert (=> bm!202450 (= call!202455 (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032))))))

(declare-fun b!3007595 () Bool)

(declare-fun res!1239477 () Bool)

(declare-fun e!1888742 () Bool)

(assert (=> b!3007595 (=> res!1239477 e!1888742)))

(assert (=> b!3007595 (= res!1239477 (not (isEmpty!19407 (tail!4925 (tail!4925 (_1!20164 lt!1043032))))))))

(declare-fun b!3007596 () Bool)

(assert (=> b!3007596 (= e!1888738 (not lt!1043215))))

(declare-fun b!3007597 () Bool)

(declare-fun e!1888741 () Bool)

(assert (=> b!3007597 (= e!1888741 e!1888742)))

(declare-fun res!1239482 () Bool)

(assert (=> b!3007597 (=> res!1239482 e!1888742)))

(assert (=> b!3007597 (= res!1239482 call!202455)))

(declare-fun b!3007598 () Bool)

(declare-fun e!1888740 () Bool)

(assert (=> b!3007598 (= e!1888740 (nullable!3042 (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032)))))))

(declare-fun d!847186 () Bool)

(assert (=> d!847186 e!1888743))

(declare-fun c!495297 () Bool)

(assert (=> d!847186 (= c!495297 ((_ is EmptyExpr!9385) (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032)))))))

(assert (=> d!847186 (= lt!1043215 e!1888740)))

(declare-fun c!495295 () Bool)

(assert (=> d!847186 (= c!495295 (isEmpty!19407 (tail!4925 (_1!20164 lt!1043032))))))

(assert (=> d!847186 (validRegex!4118 (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032))))))

(assert (=> d!847186 (= (matchR!4267 (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032))) (tail!4925 (_1!20164 lt!1043032))) lt!1043215)))

(declare-fun b!3007599 () Bool)

(declare-fun res!1239483 () Bool)

(assert (=> b!3007599 (=> (not res!1239483) (not e!1888739))))

(assert (=> b!3007599 (= res!1239483 (isEmpty!19407 (tail!4925 (tail!4925 (_1!20164 lt!1043032)))))))

(declare-fun b!3007600 () Bool)

(assert (=> b!3007600 (= e!1888737 e!1888741)))

(declare-fun res!1239479 () Bool)

(assert (=> b!3007600 (=> (not res!1239479) (not e!1888741))))

(assert (=> b!3007600 (= res!1239479 (not lt!1043215))))

(declare-fun b!3007601 () Bool)

(declare-fun res!1239481 () Bool)

(assert (=> b!3007601 (=> res!1239481 e!1888737)))

(assert (=> b!3007601 (= res!1239481 (not ((_ is ElementMatch!9385) (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032))))))))

(assert (=> b!3007601 (= e!1888738 e!1888737)))

(declare-fun b!3007602 () Bool)

(assert (=> b!3007602 (= e!1888739 (= (head!6699 (tail!4925 (_1!20164 lt!1043032))) (c!494883 (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032))))))))

(declare-fun b!3007603 () Bool)

(assert (=> b!3007603 (= e!1888740 (matchR!4267 (derivativeStep!2640 (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032))) (head!6699 (tail!4925 (_1!20164 lt!1043032)))) (tail!4925 (tail!4925 (_1!20164 lt!1043032)))))))

(declare-fun b!3007604 () Bool)

(assert (=> b!3007604 (= e!1888742 (not (= (head!6699 (tail!4925 (_1!20164 lt!1043032))) (c!494883 (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032)))))))))

(assert (= (and d!847186 c!495295) b!3007598))

(assert (= (and d!847186 (not c!495295)) b!3007603))

(assert (= (and d!847186 c!495297) b!3007591))

(assert (= (and d!847186 (not c!495297)) b!3007594))

(assert (= (and b!3007594 c!495296) b!3007596))

(assert (= (and b!3007594 (not c!495296)) b!3007601))

(assert (= (and b!3007601 (not res!1239481)) b!3007593))

(assert (= (and b!3007593 res!1239484) b!3007592))

(assert (= (and b!3007592 res!1239480) b!3007599))

(assert (= (and b!3007599 res!1239483) b!3007602))

(assert (= (and b!3007593 (not res!1239478)) b!3007600))

(assert (= (and b!3007600 res!1239479) b!3007597))

(assert (= (and b!3007597 (not res!1239482)) b!3007595))

(assert (= (and b!3007595 (not res!1239477)) b!3007604))

(assert (= (or b!3007591 b!3007592 b!3007597) bm!202450))

(assert (=> b!3007604 m!3354883))

(assert (=> b!3007604 m!3355429))

(assert (=> b!3007602 m!3354883))

(assert (=> b!3007602 m!3355429))

(assert (=> b!3007603 m!3354883))

(assert (=> b!3007603 m!3355429))

(assert (=> b!3007603 m!3354905))

(assert (=> b!3007603 m!3355429))

(declare-fun m!3355561 () Bool)

(assert (=> b!3007603 m!3355561))

(assert (=> b!3007603 m!3354883))

(assert (=> b!3007603 m!3355433))

(assert (=> b!3007603 m!3355561))

(assert (=> b!3007603 m!3355433))

(declare-fun m!3355563 () Bool)

(assert (=> b!3007603 m!3355563))

(assert (=> bm!202450 m!3354883))

(assert (=> bm!202450 m!3354887))

(assert (=> b!3007598 m!3354905))

(declare-fun m!3355565 () Bool)

(assert (=> b!3007598 m!3355565))

(assert (=> d!847186 m!3354883))

(assert (=> d!847186 m!3354887))

(assert (=> d!847186 m!3354905))

(declare-fun m!3355567 () Bool)

(assert (=> d!847186 m!3355567))

(assert (=> b!3007595 m!3354883))

(assert (=> b!3007595 m!3355433))

(assert (=> b!3007595 m!3355433))

(assert (=> b!3007595 m!3355441))

(assert (=> b!3007599 m!3354883))

(assert (=> b!3007599 m!3355433))

(assert (=> b!3007599 m!3355433))

(assert (=> b!3007599 m!3355441))

(assert (=> b!3006672 d!847186))

(declare-fun b!3007605 () Bool)

(declare-fun e!1888744 () Regex!9385)

(declare-fun call!202458 () Regex!9385)

(declare-fun call!202457 () Regex!9385)

(assert (=> b!3007605 (= e!1888744 (Union!9385 call!202458 call!202457))))

(declare-fun b!3007606 () Bool)

(declare-fun e!1888748 () Regex!9385)

(assert (=> b!3007606 (= e!1888748 (ite (= (head!6699 (_1!20164 lt!1043032)) (c!494883 lt!1043036)) EmptyExpr!9385 EmptyLang!9385))))

(declare-fun b!3007607 () Bool)

(declare-fun c!495301 () Bool)

(assert (=> b!3007607 (= c!495301 ((_ is Union!9385) lt!1043036))))

(assert (=> b!3007607 (= e!1888748 e!1888744)))

(declare-fun bm!202451 () Bool)

(assert (=> bm!202451 (= call!202457 (derivativeStep!2640 (ite c!495301 (regTwo!19283 lt!1043036) (regTwo!19282 lt!1043036)) (head!6699 (_1!20164 lt!1043032))))))

(declare-fun bm!202452 () Bool)

(declare-fun call!202456 () Regex!9385)

(assert (=> bm!202452 (= call!202456 call!202458)))

(declare-fun bm!202453 () Bool)

(declare-fun call!202459 () Regex!9385)

(assert (=> bm!202453 (= call!202459 call!202456)))

(declare-fun b!3007608 () Bool)

(declare-fun e!1888746 () Regex!9385)

(assert (=> b!3007608 (= e!1888746 EmptyLang!9385)))

(declare-fun b!3007609 () Bool)

(declare-fun c!495300 () Bool)

(assert (=> b!3007609 (= c!495300 (nullable!3042 (regOne!19282 lt!1043036)))))

(declare-fun e!1888745 () Regex!9385)

(declare-fun e!1888747 () Regex!9385)

(assert (=> b!3007609 (= e!1888745 e!1888747)))

(declare-fun b!3007610 () Bool)

(assert (=> b!3007610 (= e!1888747 (Union!9385 (Concat!14706 call!202459 (regTwo!19282 lt!1043036)) EmptyLang!9385))))

(declare-fun b!3007611 () Bool)

(assert (=> b!3007611 (= e!1888744 e!1888745)))

(declare-fun c!495302 () Bool)

(assert (=> b!3007611 (= c!495302 ((_ is Star!9385) lt!1043036))))

(declare-fun b!3007612 () Bool)

(assert (=> b!3007612 (= e!1888747 (Union!9385 (Concat!14706 call!202459 (regTwo!19282 lt!1043036)) call!202457))))

(declare-fun b!3007613 () Bool)

(assert (=> b!3007613 (= e!1888746 e!1888748)))

(declare-fun c!495299 () Bool)

(assert (=> b!3007613 (= c!495299 ((_ is ElementMatch!9385) lt!1043036))))

(declare-fun d!847188 () Bool)

(declare-fun lt!1043216 () Regex!9385)

(assert (=> d!847188 (validRegex!4118 lt!1043216)))

(assert (=> d!847188 (= lt!1043216 e!1888746)))

(declare-fun c!495298 () Bool)

(assert (=> d!847188 (= c!495298 (or ((_ is EmptyExpr!9385) lt!1043036) ((_ is EmptyLang!9385) lt!1043036)))))

(assert (=> d!847188 (validRegex!4118 lt!1043036)))

(assert (=> d!847188 (= (derivativeStep!2640 lt!1043036 (head!6699 (_1!20164 lt!1043032))) lt!1043216)))

(declare-fun bm!202454 () Bool)

(assert (=> bm!202454 (= call!202458 (derivativeStep!2640 (ite c!495301 (regOne!19283 lt!1043036) (ite c!495302 (reg!9714 lt!1043036) (regOne!19282 lt!1043036))) (head!6699 (_1!20164 lt!1043032))))))

(declare-fun b!3007614 () Bool)

(assert (=> b!3007614 (= e!1888745 (Concat!14706 call!202456 lt!1043036))))

(assert (= (and d!847188 c!495298) b!3007608))

(assert (= (and d!847188 (not c!495298)) b!3007613))

(assert (= (and b!3007613 c!495299) b!3007606))

(assert (= (and b!3007613 (not c!495299)) b!3007607))

(assert (= (and b!3007607 c!495301) b!3007605))

(assert (= (and b!3007607 (not c!495301)) b!3007611))

(assert (= (and b!3007611 c!495302) b!3007614))

(assert (= (and b!3007611 (not c!495302)) b!3007609))

(assert (= (and b!3007609 c!495300) b!3007612))

(assert (= (and b!3007609 (not c!495300)) b!3007610))

(assert (= (or b!3007612 b!3007610) bm!202453))

(assert (= (or b!3007614 bm!202453) bm!202452))

(assert (= (or b!3007605 b!3007612) bm!202451))

(assert (= (or b!3007605 bm!202452) bm!202454))

(assert (=> bm!202451 m!3354879))

(declare-fun m!3355569 () Bool)

(assert (=> bm!202451 m!3355569))

(declare-fun m!3355571 () Bool)

(assert (=> b!3007609 m!3355571))

(declare-fun m!3355573 () Bool)

(assert (=> d!847188 m!3355573))

(assert (=> d!847188 m!3354771))

(assert (=> bm!202454 m!3354879))

(declare-fun m!3355575 () Bool)

(assert (=> bm!202454 m!3355575))

(assert (=> b!3006672 d!847188))

(assert (=> b!3006672 d!847124))

(assert (=> b!3006672 d!847054))

(declare-fun b!3007616 () Bool)

(declare-fun e!1888749 () List!35250)

(assert (=> b!3007616 (= e!1888749 (Cons!35126 (h!40546 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126))) (++!8413 (t!234315 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126))) (t!234315 s!11993))))))

(declare-fun d!847190 () Bool)

(declare-fun e!1888750 () Bool)

(assert (=> d!847190 e!1888750))

(declare-fun res!1239485 () Bool)

(assert (=> d!847190 (=> (not res!1239485) (not e!1888750))))

(declare-fun lt!1043217 () List!35250)

(assert (=> d!847190 (= res!1239485 (= (content!4782 lt!1043217) ((_ map or) (content!4782 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126))) (content!4782 (t!234315 s!11993)))))))

(assert (=> d!847190 (= lt!1043217 e!1888749)))

(declare-fun c!495303 () Bool)

(assert (=> d!847190 (= c!495303 ((_ is Nil!35126) (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126))))))

(assert (=> d!847190 (= (++!8413 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) (t!234315 s!11993)) lt!1043217)))

(declare-fun b!3007618 () Bool)

(assert (=> b!3007618 (= e!1888750 (or (not (= (t!234315 s!11993) Nil!35126)) (= lt!1043217 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)))))))

(declare-fun b!3007615 () Bool)

(assert (=> b!3007615 (= e!1888749 (t!234315 s!11993))))

(declare-fun b!3007617 () Bool)

(declare-fun res!1239486 () Bool)

(assert (=> b!3007617 (=> (not res!1239486) (not e!1888750))))

(assert (=> b!3007617 (= res!1239486 (= (size!26515 lt!1043217) (+ (size!26515 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126))) (size!26515 (t!234315 s!11993)))))))

(assert (= (and d!847190 c!495303) b!3007615))

(assert (= (and d!847190 (not c!495303)) b!3007616))

(assert (= (and d!847190 res!1239485) b!3007617))

(assert (= (and b!3007617 res!1239486) b!3007618))

(declare-fun m!3355577 () Bool)

(assert (=> b!3007616 m!3355577))

(declare-fun m!3355579 () Bool)

(assert (=> d!847190 m!3355579))

(assert (=> d!847190 m!3354829))

(declare-fun m!3355581 () Bool)

(assert (=> d!847190 m!3355581))

(declare-fun m!3355583 () Bool)

(assert (=> d!847190 m!3355583))

(declare-fun m!3355585 () Bool)

(assert (=> b!3007617 m!3355585))

(assert (=> b!3007617 m!3354829))

(declare-fun m!3355587 () Bool)

(assert (=> b!3007617 m!3355587))

(assert (=> b!3007617 m!3354875))

(assert (=> b!3006530 d!847190))

(declare-fun b!3007620 () Bool)

(declare-fun e!1888751 () List!35250)

(assert (=> b!3007620 (= e!1888751 (Cons!35126 (h!40546 Nil!35126) (++!8413 (t!234315 Nil!35126) (Cons!35126 (h!40546 s!11993) Nil!35126))))))

(declare-fun d!847192 () Bool)

(declare-fun e!1888752 () Bool)

(assert (=> d!847192 e!1888752))

(declare-fun res!1239487 () Bool)

(assert (=> d!847192 (=> (not res!1239487) (not e!1888752))))

(declare-fun lt!1043218 () List!35250)

(assert (=> d!847192 (= res!1239487 (= (content!4782 lt!1043218) ((_ map or) (content!4782 Nil!35126) (content!4782 (Cons!35126 (h!40546 s!11993) Nil!35126)))))))

(assert (=> d!847192 (= lt!1043218 e!1888751)))

(declare-fun c!495304 () Bool)

(assert (=> d!847192 (= c!495304 ((_ is Nil!35126) Nil!35126))))

(assert (=> d!847192 (= (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) lt!1043218)))

(declare-fun b!3007622 () Bool)

(assert (=> b!3007622 (= e!1888752 (or (not (= (Cons!35126 (h!40546 s!11993) Nil!35126) Nil!35126)) (= lt!1043218 Nil!35126)))))

(declare-fun b!3007619 () Bool)

(assert (=> b!3007619 (= e!1888751 (Cons!35126 (h!40546 s!11993) Nil!35126))))

(declare-fun b!3007621 () Bool)

(declare-fun res!1239488 () Bool)

(assert (=> b!3007621 (=> (not res!1239488) (not e!1888752))))

(assert (=> b!3007621 (= res!1239488 (= (size!26515 lt!1043218) (+ (size!26515 Nil!35126) (size!26515 (Cons!35126 (h!40546 s!11993) Nil!35126)))))))

(assert (= (and d!847192 c!495304) b!3007619))

(assert (= (and d!847192 (not c!495304)) b!3007620))

(assert (= (and d!847192 res!1239487) b!3007621))

(assert (= (and b!3007621 res!1239488) b!3007622))

(declare-fun m!3355589 () Bool)

(assert (=> b!3007620 m!3355589))

(declare-fun m!3355591 () Bool)

(assert (=> d!847192 m!3355591))

(declare-fun m!3355593 () Bool)

(assert (=> d!847192 m!3355593))

(declare-fun m!3355595 () Bool)

(assert (=> d!847192 m!3355595))

(declare-fun m!3355597 () Bool)

(assert (=> b!3007621 m!3355597))

(declare-fun m!3355599 () Bool)

(assert (=> b!3007621 m!3355599))

(declare-fun m!3355601 () Bool)

(assert (=> b!3007621 m!3355601))

(assert (=> b!3006530 d!847192))

(declare-fun d!847194 () Bool)

(assert (=> d!847194 (= (++!8413 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) (t!234315 s!11993)) s!11993)))

(declare-fun lt!1043221 () Unit!49185)

(declare-fun choose!17854 (List!35250 C!18956 List!35250 List!35250) Unit!49185)

(assert (=> d!847194 (= lt!1043221 (choose!17854 Nil!35126 (h!40546 s!11993) (t!234315 s!11993) s!11993))))

(assert (=> d!847194 (= (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) (t!234315 s!11993))) s!11993)))

(assert (=> d!847194 (= (lemmaMoveElementToOtherListKeepsConcatEq!1022 Nil!35126 (h!40546 s!11993) (t!234315 s!11993) s!11993) lt!1043221)))

(declare-fun bs!529053 () Bool)

(assert (= bs!529053 d!847194))

(assert (=> bs!529053 m!3354829))

(assert (=> bs!529053 m!3354829))

(assert (=> bs!529053 m!3354831))

(declare-fun m!3355603 () Bool)

(assert (=> bs!529053 m!3355603))

(declare-fun m!3355605 () Bool)

(assert (=> bs!529053 m!3355605))

(assert (=> b!3006530 d!847194))

(declare-fun b!3007623 () Bool)

(declare-fun e!1888754 () Option!6764)

(assert (=> b!3007623 (= e!1888754 (Some!6763 (tuple2!34065 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) (t!234315 s!11993))))))

(declare-fun b!3007624 () Bool)

(declare-fun e!1888757 () Bool)

(assert (=> b!3007624 (= e!1888757 (matchR!4267 lt!1043025 (t!234315 s!11993)))))

(declare-fun d!847196 () Bool)

(declare-fun e!1888755 () Bool)

(assert (=> d!847196 e!1888755))

(declare-fun res!1239489 () Bool)

(assert (=> d!847196 (=> res!1239489 e!1888755)))

(declare-fun e!1888756 () Bool)

(assert (=> d!847196 (= res!1239489 e!1888756)))

(declare-fun res!1239493 () Bool)

(assert (=> d!847196 (=> (not res!1239493) (not e!1888756))))

(declare-fun lt!1043222 () Option!6764)

(assert (=> d!847196 (= res!1239493 (isDefined!5315 lt!1043222))))

(assert (=> d!847196 (= lt!1043222 e!1888754)))

(declare-fun c!495306 () Bool)

(assert (=> d!847196 (= c!495306 e!1888757)))

(declare-fun res!1239490 () Bool)

(assert (=> d!847196 (=> (not res!1239490) (not e!1888757))))

(assert (=> d!847196 (= res!1239490 (matchR!4267 lt!1043036 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126))))))

(assert (=> d!847196 (validRegex!4118 lt!1043036)))

(assert (=> d!847196 (= (findConcatSeparation!1158 lt!1043036 lt!1043025 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) (t!234315 s!11993) s!11993) lt!1043222)))

(declare-fun b!3007625 () Bool)

(declare-fun e!1888753 () Option!6764)

(assert (=> b!3007625 (= e!1888753 None!6763)))

(declare-fun b!3007626 () Bool)

(declare-fun lt!1043223 () Unit!49185)

(declare-fun lt!1043224 () Unit!49185)

(assert (=> b!3007626 (= lt!1043223 lt!1043224)))

(assert (=> b!3007626 (= (++!8413 (++!8413 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) (Cons!35126 (h!40546 (t!234315 s!11993)) Nil!35126)) (t!234315 (t!234315 s!11993))) s!11993)))

(assert (=> b!3007626 (= lt!1043224 (lemmaMoveElementToOtherListKeepsConcatEq!1022 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) (h!40546 (t!234315 s!11993)) (t!234315 (t!234315 s!11993)) s!11993))))

(assert (=> b!3007626 (= e!1888753 (findConcatSeparation!1158 lt!1043036 lt!1043025 (++!8413 (++!8413 Nil!35126 (Cons!35126 (h!40546 s!11993) Nil!35126)) (Cons!35126 (h!40546 (t!234315 s!11993)) Nil!35126)) (t!234315 (t!234315 s!11993)) s!11993))))

(declare-fun b!3007627 () Bool)

(declare-fun res!1239491 () Bool)

(assert (=> b!3007627 (=> (not res!1239491) (not e!1888756))))

(assert (=> b!3007627 (= res!1239491 (matchR!4267 lt!1043036 (_1!20164 (get!10924 lt!1043222))))))

(declare-fun b!3007628 () Bool)

(declare-fun res!1239492 () Bool)

(assert (=> b!3007628 (=> (not res!1239492) (not e!1888756))))

(assert (=> b!3007628 (= res!1239492 (matchR!4267 lt!1043025 (_2!20164 (get!10924 lt!1043222))))))

(declare-fun b!3007629 () Bool)

(assert (=> b!3007629 (= e!1888754 e!1888753)))

(declare-fun c!495305 () Bool)

(assert (=> b!3007629 (= c!495305 ((_ is Nil!35126) (t!234315 s!11993)))))

(declare-fun b!3007630 () Bool)

(assert (=> b!3007630 (= e!1888756 (= (++!8413 (_1!20164 (get!10924 lt!1043222)) (_2!20164 (get!10924 lt!1043222))) s!11993))))

(declare-fun b!3007631 () Bool)

(assert (=> b!3007631 (= e!1888755 (not (isDefined!5315 lt!1043222)))))

(assert (= (and d!847196 res!1239490) b!3007624))

(assert (= (and d!847196 c!495306) b!3007623))

(assert (= (and d!847196 (not c!495306)) b!3007629))

(assert (= (and b!3007629 c!495305) b!3007625))

(assert (= (and b!3007629 (not c!495305)) b!3007626))

(assert (= (and d!847196 res!1239493) b!3007627))

(assert (= (and b!3007627 res!1239491) b!3007628))

(assert (= (and b!3007628 res!1239492) b!3007630))

(assert (= (and d!847196 (not res!1239489)) b!3007631))

(assert (=> b!3007626 m!3354829))

(declare-fun m!3355607 () Bool)

(assert (=> b!3007626 m!3355607))

(assert (=> b!3007626 m!3355607))

(declare-fun m!3355609 () Bool)

(assert (=> b!3007626 m!3355609))

(assert (=> b!3007626 m!3354829))

(declare-fun m!3355611 () Bool)

(assert (=> b!3007626 m!3355611))

(assert (=> b!3007626 m!3355607))

(declare-fun m!3355613 () Bool)

(assert (=> b!3007626 m!3355613))

(declare-fun m!3355615 () Bool)

(assert (=> b!3007631 m!3355615))

(declare-fun m!3355617 () Bool)

(assert (=> b!3007628 m!3355617))

(declare-fun m!3355619 () Bool)

(assert (=> b!3007628 m!3355619))

(declare-fun m!3355621 () Bool)

(assert (=> b!3007624 m!3355621))

(assert (=> b!3007627 m!3355617))

(declare-fun m!3355623 () Bool)

(assert (=> b!3007627 m!3355623))

(assert (=> d!847196 m!3355615))

(assert (=> d!847196 m!3354829))

(declare-fun m!3355625 () Bool)

(assert (=> d!847196 m!3355625))

(assert (=> d!847196 m!3354771))

(assert (=> b!3007630 m!3355617))

(declare-fun m!3355627 () Bool)

(assert (=> b!3007630 m!3355627))

(assert (=> b!3006530 d!847196))

(assert (=> b!3006615 d!846984))

(assert (=> b!3006615 d!846986))

(declare-fun d!847198 () Bool)

(assert (=> d!847198 (= (Exists!1654 lambda!112438) (choose!17848 lambda!112438))))

(declare-fun bs!529054 () Bool)

(assert (= bs!529054 d!847198))

(declare-fun m!3355629 () Bool)

(assert (=> bs!529054 m!3355629))

(assert (=> d!846842 d!847198))

(declare-fun d!847200 () Bool)

(assert (=> d!847200 (= (Exists!1654 lambda!112439) (choose!17848 lambda!112439))))

(declare-fun bs!529055 () Bool)

(assert (= bs!529055 d!847200))

(declare-fun m!3355631 () Bool)

(assert (=> bs!529055 m!3355631))

(assert (=> d!846842 d!847200))

(declare-fun bs!529056 () Bool)

(declare-fun d!847202 () Bool)

(assert (= bs!529056 (and d!847202 b!3007509)))

(declare-fun lambda!112485 () Int)

(assert (=> bs!529056 (not (= lambda!112485 lambda!112474))))

(declare-fun bs!529057 () Bool)

(assert (= bs!529057 (and d!847202 b!3006577)))

(assert (=> bs!529057 (not (= lambda!112485 lambda!112449))))

(declare-fun bs!529058 () Bool)

(assert (= bs!529058 (and d!847202 b!3007526)))

(assert (=> bs!529058 (not (= lambda!112485 lambda!112479))))

(declare-fun bs!529059 () Bool)

(assert (= bs!529059 (and d!847202 d!846842)))

(assert (=> bs!529059 (= lambda!112485 lambda!112438)))

(declare-fun bs!529060 () Bool)

(assert (= bs!529060 (and d!847202 b!3006963)))

(assert (=> bs!529060 (not (= lambda!112485 lambda!112466))))

(declare-fun bs!529061 () Bool)

(assert (= bs!529061 (and d!847202 b!3007505)))

(assert (=> bs!529061 (not (= lambda!112485 lambda!112475))))

(declare-fun bs!529062 () Bool)

(assert (= bs!529062 (and d!847202 b!3006652)))

(assert (=> bs!529062 (not (= lambda!112485 lambda!112451))))

(declare-fun bs!529063 () Bool)

(assert (= bs!529063 (and d!847202 b!3006648)))

(assert (=> bs!529063 (not (= lambda!112485 lambda!112452))))

(declare-fun bs!529064 () Bool)

(assert (= bs!529064 (and d!847202 b!3007242)))

(assert (=> bs!529064 (not (= lambda!112485 lambda!112472))))

(assert (=> bs!529059 (not (= lambda!112485 lambda!112439))))

(declare-fun bs!529065 () Bool)

(assert (= bs!529065 (and d!847202 b!3006573)))

(assert (=> bs!529065 (not (= lambda!112485 lambda!112450))))

(declare-fun bs!529066 () Bool)

(assert (= bs!529066 (and d!847202 d!846876)))

(assert (=> bs!529066 (= (= (Star!9385 lt!1043036) lt!1043025) (= lambda!112485 lambda!112444))))

(declare-fun bs!529067 () Bool)

(assert (= bs!529067 (and d!847202 b!3007522)))

(assert (=> bs!529067 (not (= lambda!112485 lambda!112480))))

(declare-fun bs!529068 () Bool)

(assert (= bs!529068 (and d!847202 b!3007238)))

(assert (=> bs!529068 (not (= lambda!112485 lambda!112473))))

(declare-fun bs!529069 () Bool)

(assert (= bs!529069 (and d!847202 b!3006050)))

(assert (=> bs!529069 (= (= (Star!9385 lt!1043036) lt!1043025) (= lambda!112485 lambda!112417))))

(declare-fun bs!529070 () Bool)

(assert (= bs!529070 (and d!847202 d!847152)))

(assert (=> bs!529070 (= (= (Star!9385 lt!1043036) lt!1043025) (= lambda!112485 lambda!112478))))

(assert (=> bs!529069 (not (= lambda!112485 lambda!112418))))

(declare-fun bs!529071 () Bool)

(assert (= bs!529071 (and d!847202 b!3006959)))

(assert (=> bs!529071 (not (= lambda!112485 lambda!112467))))

(assert (=> d!847202 true))

(assert (=> d!847202 true))

(declare-fun lambda!112486 () Int)

(assert (=> bs!529056 (= (and (= lt!1043036 (reg!9714 (regOne!19283 r!17423))) (= (Star!9385 lt!1043036) (regOne!19283 r!17423))) (= lambda!112486 lambda!112474))))

(assert (=> bs!529057 (= (and (= lt!1043036 (reg!9714 r!17423)) (= (Star!9385 lt!1043036) r!17423)) (= lambda!112486 lambda!112449))))

(declare-fun bs!529072 () Bool)

(assert (= bs!529072 d!847202))

(assert (=> bs!529072 (not (= lambda!112486 lambda!112485))))

(assert (=> bs!529058 (= (and (= lt!1043036 (reg!9714 (regTwo!19283 lt!1043025))) (= (Star!9385 lt!1043036) (regTwo!19283 lt!1043025))) (= lambda!112486 lambda!112479))))

(assert (=> bs!529059 (not (= lambda!112486 lambda!112438))))

(assert (=> bs!529060 (= (and (= lt!1043036 (reg!9714 (regOne!19283 lt!1043025))) (= (Star!9385 lt!1043036) (regOne!19283 lt!1043025))) (= lambda!112486 lambda!112466))))

(assert (=> bs!529061 (not (= lambda!112486 lambda!112475))))

(assert (=> bs!529062 (= (and (= lt!1043036 (reg!9714 lt!1043025)) (= (Star!9385 lt!1043036) lt!1043025)) (= lambda!112486 lambda!112451))))

(assert (=> bs!529063 (not (= lambda!112486 lambda!112452))))

(assert (=> bs!529064 (= (and (= lt!1043036 (reg!9714 (regTwo!19283 r!17423))) (= (Star!9385 lt!1043036) (regTwo!19283 r!17423))) (= lambda!112486 lambda!112472))))

(assert (=> bs!529059 (= lambda!112486 lambda!112439)))

(assert (=> bs!529065 (not (= lambda!112486 lambda!112450))))

(assert (=> bs!529066 (not (= lambda!112486 lambda!112444))))

(assert (=> bs!529067 (not (= lambda!112486 lambda!112480))))

(assert (=> bs!529068 (not (= lambda!112486 lambda!112473))))

(assert (=> bs!529069 (not (= lambda!112486 lambda!112417))))

(assert (=> bs!529070 (not (= lambda!112486 lambda!112478))))

(assert (=> bs!529069 (= (= (Star!9385 lt!1043036) lt!1043025) (= lambda!112486 lambda!112418))))

(assert (=> bs!529071 (not (= lambda!112486 lambda!112467))))

(assert (=> d!847202 true))

(assert (=> d!847202 true))

(assert (=> d!847202 (= (Exists!1654 lambda!112485) (Exists!1654 lambda!112486))))

(assert (=> d!847202 true))

(declare-fun _$91!470 () Unit!49185)

(assert (=> d!847202 (= (choose!17849 lt!1043036 s!11993) _$91!470)))

(declare-fun m!3355633 () Bool)

(assert (=> bs!529072 m!3355633))

(declare-fun m!3355635 () Bool)

(assert (=> bs!529072 m!3355635))

(assert (=> d!846842 d!847202))

(assert (=> d!846842 d!847080))

(declare-fun b!3007642 () Bool)

(declare-fun e!1888769 () Regex!9385)

(declare-fun lt!1043225 () Regex!9385)

(declare-fun lt!1043229 () Regex!9385)

(assert (=> b!3007642 (= e!1888769 (Concat!14706 lt!1043225 lt!1043229))))

(declare-fun lt!1043230 () Regex!9385)

(declare-fun e!1888775 () Bool)

(declare-fun b!3007643 () Bool)

(assert (=> b!3007643 (= e!1888775 (= (nullable!3042 lt!1043230) (nullable!3042 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423))))))))

(declare-fun c!495311 () Bool)

(declare-fun call!202464 () Bool)

(declare-fun lt!1043227 () Regex!9385)

(declare-fun bm!202455 () Bool)

(assert (=> bm!202455 (= call!202464 (isEmptyLang!475 (ite c!495311 lt!1043227 lt!1043225)))))

(declare-fun b!3007644 () Bool)

(declare-fun c!495317 () Bool)

(declare-fun e!1888773 () Bool)

(assert (=> b!3007644 (= c!495317 e!1888773)))

(declare-fun res!1239506 () Bool)

(assert (=> b!3007644 (=> res!1239506 e!1888773)))

(declare-fun call!202460 () Bool)

(assert (=> b!3007644 (= res!1239506 call!202460)))

(declare-fun lt!1043228 () Regex!9385)

(declare-fun call!202462 () Regex!9385)

(assert (=> b!3007644 (= lt!1043228 call!202462)))

(declare-fun e!1888767 () Regex!9385)

(declare-fun e!1888771 () Regex!9385)

(assert (=> b!3007644 (= e!1888767 e!1888771)))

(declare-fun bm!202456 () Bool)

(declare-fun call!202465 () Regex!9385)

(assert (=> bm!202456 (= call!202465 call!202462)))

(declare-fun b!3007645 () Bool)

(declare-fun c!495308 () Bool)

(assert (=> b!3007645 (= c!495308 (isEmptyExpr!485 lt!1043225))))

(declare-fun e!1888768 () Regex!9385)

(declare-fun e!1888770 () Regex!9385)

(assert (=> b!3007645 (= e!1888768 e!1888770)))

(declare-fun bm!202457 () Bool)

(declare-fun c!495312 () Bool)

(assert (=> bm!202457 (= call!202462 (simplify!376 (ite c!495312 (reg!9714 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))) (ite c!495311 (regTwo!19283 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))) (regOne!19282 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423))))))))))

(declare-fun b!3007646 () Bool)

(declare-fun e!1888766 () Regex!9385)

(declare-fun lt!1043226 () Regex!9385)

(assert (=> b!3007646 (= e!1888766 (Union!9385 lt!1043226 lt!1043227))))

(declare-fun b!3007647 () Bool)

(assert (=> b!3007647 (= e!1888771 EmptyExpr!9385)))

(declare-fun b!3007648 () Bool)

(assert (=> b!3007648 (= c!495311 ((_ is Union!9385) (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))))))

(declare-fun e!1888764 () Regex!9385)

(assert (=> b!3007648 (= e!1888767 e!1888764)))

(declare-fun b!3007649 () Bool)

(declare-fun e!1888762 () Regex!9385)

(assert (=> b!3007649 (= e!1888764 e!1888762)))

(declare-fun call!202463 () Regex!9385)

(assert (=> b!3007649 (= lt!1043226 call!202463)))

(assert (=> b!3007649 (= lt!1043227 call!202465)))

(declare-fun c!495307 () Bool)

(declare-fun call!202461 () Bool)

(assert (=> b!3007649 (= c!495307 call!202461)))

(declare-fun bm!202458 () Bool)

(assert (=> bm!202458 (= call!202460 (isEmptyLang!475 (ite c!495312 lt!1043228 (ite c!495311 lt!1043226 lt!1043229))))))

(declare-fun b!3007650 () Bool)

(assert (=> b!3007650 (= e!1888769 lt!1043225)))

(declare-fun b!3007651 () Bool)

(assert (=> b!3007651 (= e!1888770 lt!1043229)))

(declare-fun b!3007652 () Bool)

(declare-fun c!495309 () Bool)

(assert (=> b!3007652 (= c!495309 call!202464)))

(assert (=> b!3007652 (= e!1888762 e!1888766)))

(declare-fun b!3007653 () Bool)

(declare-fun e!1888772 () Regex!9385)

(assert (=> b!3007653 (= e!1888772 e!1888767)))

(assert (=> b!3007653 (= c!495312 ((_ is Star!9385) (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))))))

(declare-fun b!3007654 () Bool)

(declare-fun e!1888765 () Regex!9385)

(declare-fun e!1888763 () Regex!9385)

(assert (=> b!3007654 (= e!1888765 e!1888763)))

(declare-fun c!495315 () Bool)

(assert (=> b!3007654 (= c!495315 ((_ is ElementMatch!9385) (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))))))

(declare-fun b!3007655 () Bool)

(declare-fun e!1888774 () Bool)

(assert (=> b!3007655 (= e!1888774 call!202461)))

(declare-fun b!3007656 () Bool)

(assert (=> b!3007656 (= e!1888768 EmptyLang!9385)))

(declare-fun bm!202459 () Bool)

(assert (=> bm!202459 (= call!202463 (simplify!376 (ite c!495311 (regOne!19283 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))) (regTwo!19282 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))))))))

(declare-fun bm!202460 () Bool)

(assert (=> bm!202460 (= call!202461 call!202460)))

(declare-fun b!3007657 () Bool)

(assert (=> b!3007657 (= e!1888762 lt!1043227)))

(declare-fun b!3007658 () Bool)

(declare-fun c!495316 () Bool)

(assert (=> b!3007658 (= c!495316 ((_ is EmptyExpr!9385) (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))))))

(assert (=> b!3007658 (= e!1888763 e!1888772)))

(declare-fun b!3007659 () Bool)

(assert (=> b!3007659 (= e!1888772 EmptyExpr!9385)))

(declare-fun b!3007660 () Bool)

(assert (=> b!3007660 (= e!1888766 lt!1043226)))

(declare-fun b!3007661 () Bool)

(assert (=> b!3007661 (= e!1888770 e!1888769)))

(declare-fun c!495313 () Bool)

(declare-fun call!202466 () Bool)

(assert (=> b!3007661 (= c!495313 call!202466)))

(declare-fun b!3007662 () Bool)

(assert (=> b!3007662 (= e!1888763 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423))))))

(declare-fun b!3007663 () Bool)

(assert (=> b!3007663 (= e!1888764 e!1888768)))

(assert (=> b!3007663 (= lt!1043225 call!202465)))

(assert (=> b!3007663 (= lt!1043229 call!202463)))

(declare-fun res!1239504 () Bool)

(assert (=> b!3007663 (= res!1239504 call!202464)))

(assert (=> b!3007663 (=> res!1239504 e!1888774)))

(declare-fun c!495310 () Bool)

(assert (=> b!3007663 (= c!495310 e!1888774)))

(declare-fun b!3007664 () Bool)

(assert (=> b!3007664 (= e!1888773 call!202466)))

(declare-fun bm!202461 () Bool)

(assert (=> bm!202461 (= call!202466 (isEmptyExpr!485 (ite c!495312 lt!1043228 lt!1043229)))))

(declare-fun b!3007665 () Bool)

(assert (=> b!3007665 (= e!1888771 (Star!9385 lt!1043228))))

(declare-fun d!847204 () Bool)

(assert (=> d!847204 e!1888775))

(declare-fun res!1239505 () Bool)

(assert (=> d!847204 (=> (not res!1239505) (not e!1888775))))

(assert (=> d!847204 (= res!1239505 (validRegex!4118 lt!1043230))))

(assert (=> d!847204 (= lt!1043230 e!1888765)))

(declare-fun c!495314 () Bool)

(assert (=> d!847204 (= c!495314 ((_ is EmptyLang!9385) (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))))))

(assert (=> d!847204 (validRegex!4118 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423))))))

(assert (=> d!847204 (= (simplify!376 (ite c!494937 (regOne!19283 (reg!9714 r!17423)) (regTwo!19282 (reg!9714 r!17423)))) lt!1043230)))

(declare-fun b!3007666 () Bool)

(assert (=> b!3007666 (= e!1888765 EmptyLang!9385)))

(assert (= (and d!847204 c!495314) b!3007666))

(assert (= (and d!847204 (not c!495314)) b!3007654))

(assert (= (and b!3007654 c!495315) b!3007662))

(assert (= (and b!3007654 (not c!495315)) b!3007658))

(assert (= (and b!3007658 c!495316) b!3007659))

(assert (= (and b!3007658 (not c!495316)) b!3007653))

(assert (= (and b!3007653 c!495312) b!3007644))

(assert (= (and b!3007653 (not c!495312)) b!3007648))

(assert (= (and b!3007644 (not res!1239506)) b!3007664))

(assert (= (and b!3007644 c!495317) b!3007647))

(assert (= (and b!3007644 (not c!495317)) b!3007665))

(assert (= (and b!3007648 c!495311) b!3007649))

(assert (= (and b!3007648 (not c!495311)) b!3007663))

(assert (= (and b!3007649 c!495307) b!3007657))

(assert (= (and b!3007649 (not c!495307)) b!3007652))

(assert (= (and b!3007652 c!495309) b!3007660))

(assert (= (and b!3007652 (not c!495309)) b!3007646))

(assert (= (and b!3007663 (not res!1239504)) b!3007655))

(assert (= (and b!3007663 c!495310) b!3007656))

(assert (= (and b!3007663 (not c!495310)) b!3007645))

(assert (= (and b!3007645 c!495308) b!3007651))

(assert (= (and b!3007645 (not c!495308)) b!3007661))

(assert (= (and b!3007661 c!495313) b!3007650))

(assert (= (and b!3007661 (not c!495313)) b!3007642))

(assert (= (or b!3007649 b!3007663) bm!202459))

(assert (= (or b!3007649 b!3007663) bm!202456))

(assert (= (or b!3007649 b!3007655) bm!202460))

(assert (= (or b!3007652 b!3007663) bm!202455))

(assert (= (or b!3007664 b!3007661) bm!202461))

(assert (= (or b!3007644 bm!202456) bm!202457))

(assert (= (or b!3007644 bm!202460) bm!202458))

(assert (= (and d!847204 res!1239505) b!3007643))

(declare-fun m!3355637 () Bool)

(assert (=> bm!202457 m!3355637))

(declare-fun m!3355639 () Bool)

(assert (=> bm!202455 m!3355639))

(declare-fun m!3355641 () Bool)

(assert (=> bm!202458 m!3355641))

(declare-fun m!3355643 () Bool)

(assert (=> bm!202461 m!3355643))

(declare-fun m!3355645 () Bool)

(assert (=> b!3007645 m!3355645))

(declare-fun m!3355647 () Bool)

(assert (=> d!847204 m!3355647))

(declare-fun m!3355649 () Bool)

(assert (=> d!847204 m!3355649))

(declare-fun m!3355651 () Bool)

(assert (=> b!3007643 m!3355651))

(declare-fun m!3355653 () Bool)

(assert (=> b!3007643 m!3355653))

(declare-fun m!3355655 () Bool)

(assert (=> bm!202459 m!3355655))

(assert (=> bm!202248 d!847204))

(assert (=> d!846882 d!846880))

(assert (=> d!846882 d!846878))

(declare-fun d!847206 () Bool)

(assert (=> d!847206 (= (matchR!4267 r!17423 s!11993) (matchRSpec!1522 r!17423 s!11993))))

(assert (=> d!847206 true))

(declare-fun _$88!3338 () Unit!49185)

(assert (=> d!847206 (= (choose!17852 r!17423 s!11993) _$88!3338)))

(declare-fun bs!529073 () Bool)

(assert (= bs!529073 d!847206))

(assert (=> bs!529073 m!3354595))

(assert (=> bs!529073 m!3354593))

(assert (=> d!846882 d!847206))

(assert (=> d!846882 d!846906))

(declare-fun b!3007669 () Bool)

(declare-fun e!1888776 () Bool)

(declare-fun tp!954925 () Bool)

(assert (=> b!3007669 (= e!1888776 tp!954925)))

(declare-fun b!3007668 () Bool)

(declare-fun tp!954927 () Bool)

(declare-fun tp!954928 () Bool)

(assert (=> b!3007668 (= e!1888776 (and tp!954927 tp!954928))))

(declare-fun b!3007670 () Bool)

(declare-fun tp!954926 () Bool)

(declare-fun tp!954924 () Bool)

(assert (=> b!3007670 (= e!1888776 (and tp!954926 tp!954924))))

(assert (=> b!3006742 (= tp!954772 e!1888776)))

(declare-fun b!3007667 () Bool)

(assert (=> b!3007667 (= e!1888776 tp_is_empty!16333)))

(assert (= (and b!3006742 ((_ is ElementMatch!9385) (regOne!19283 (regOne!19282 r!17423)))) b!3007667))

(assert (= (and b!3006742 ((_ is Concat!14706) (regOne!19283 (regOne!19282 r!17423)))) b!3007668))

(assert (= (and b!3006742 ((_ is Star!9385) (regOne!19283 (regOne!19282 r!17423)))) b!3007669))

(assert (= (and b!3006742 ((_ is Union!9385) (regOne!19283 (regOne!19282 r!17423)))) b!3007670))

(declare-fun b!3007673 () Bool)

(declare-fun e!1888777 () Bool)

(declare-fun tp!954930 () Bool)

(assert (=> b!3007673 (= e!1888777 tp!954930)))

(declare-fun b!3007672 () Bool)

(declare-fun tp!954932 () Bool)

(declare-fun tp!954933 () Bool)

(assert (=> b!3007672 (= e!1888777 (and tp!954932 tp!954933))))

(declare-fun b!3007674 () Bool)

(declare-fun tp!954931 () Bool)

(declare-fun tp!954929 () Bool)

(assert (=> b!3007674 (= e!1888777 (and tp!954931 tp!954929))))

(assert (=> b!3006742 (= tp!954770 e!1888777)))

(declare-fun b!3007671 () Bool)

(assert (=> b!3007671 (= e!1888777 tp_is_empty!16333)))

(assert (= (and b!3006742 ((_ is ElementMatch!9385) (regTwo!19283 (regOne!19282 r!17423)))) b!3007671))

(assert (= (and b!3006742 ((_ is Concat!14706) (regTwo!19283 (regOne!19282 r!17423)))) b!3007672))

(assert (= (and b!3006742 ((_ is Star!9385) (regTwo!19283 (regOne!19282 r!17423)))) b!3007673))

(assert (= (and b!3006742 ((_ is Union!9385) (regTwo!19283 (regOne!19282 r!17423)))) b!3007674))

(declare-fun b!3007677 () Bool)

(declare-fun e!1888778 () Bool)

(declare-fun tp!954935 () Bool)

(assert (=> b!3007677 (= e!1888778 tp!954935)))

(declare-fun b!3007676 () Bool)

(declare-fun tp!954937 () Bool)

(declare-fun tp!954938 () Bool)

(assert (=> b!3007676 (= e!1888778 (and tp!954937 tp!954938))))

(declare-fun b!3007678 () Bool)

(declare-fun tp!954936 () Bool)

(declare-fun tp!954934 () Bool)

(assert (=> b!3007678 (= e!1888778 (and tp!954936 tp!954934))))

(assert (=> b!3006762 (= tp!954794 e!1888778)))

(declare-fun b!3007675 () Bool)

(assert (=> b!3007675 (= e!1888778 tp_is_empty!16333)))

(assert (= (and b!3006762 ((_ is ElementMatch!9385) (reg!9714 (reg!9714 r!17423)))) b!3007675))

(assert (= (and b!3006762 ((_ is Concat!14706) (reg!9714 (reg!9714 r!17423)))) b!3007676))

(assert (= (and b!3006762 ((_ is Star!9385) (reg!9714 (reg!9714 r!17423)))) b!3007677))

(assert (= (and b!3006762 ((_ is Union!9385) (reg!9714 (reg!9714 r!17423)))) b!3007678))

(declare-fun b!3007681 () Bool)

(declare-fun e!1888779 () Bool)

(declare-fun tp!954940 () Bool)

(assert (=> b!3007681 (= e!1888779 tp!954940)))

(declare-fun b!3007680 () Bool)

(declare-fun tp!954942 () Bool)

(declare-fun tp!954943 () Bool)

(assert (=> b!3007680 (= e!1888779 (and tp!954942 tp!954943))))

(declare-fun b!3007682 () Bool)

(declare-fun tp!954941 () Bool)

(declare-fun tp!954939 () Bool)

(assert (=> b!3007682 (= e!1888779 (and tp!954941 tp!954939))))

(assert (=> b!3006763 (= tp!954795 e!1888779)))

(declare-fun b!3007679 () Bool)

(assert (=> b!3007679 (= e!1888779 tp_is_empty!16333)))

(assert (= (and b!3006763 ((_ is ElementMatch!9385) (regOne!19283 (reg!9714 r!17423)))) b!3007679))

(assert (= (and b!3006763 ((_ is Concat!14706) (regOne!19283 (reg!9714 r!17423)))) b!3007680))

(assert (= (and b!3006763 ((_ is Star!9385) (regOne!19283 (reg!9714 r!17423)))) b!3007681))

(assert (= (and b!3006763 ((_ is Union!9385) (regOne!19283 (reg!9714 r!17423)))) b!3007682))

(declare-fun b!3007685 () Bool)

(declare-fun e!1888780 () Bool)

(declare-fun tp!954945 () Bool)

(assert (=> b!3007685 (= e!1888780 tp!954945)))

(declare-fun b!3007684 () Bool)

(declare-fun tp!954947 () Bool)

(declare-fun tp!954948 () Bool)

(assert (=> b!3007684 (= e!1888780 (and tp!954947 tp!954948))))

(declare-fun b!3007686 () Bool)

(declare-fun tp!954946 () Bool)

(declare-fun tp!954944 () Bool)

(assert (=> b!3007686 (= e!1888780 (and tp!954946 tp!954944))))

(assert (=> b!3006763 (= tp!954793 e!1888780)))

(declare-fun b!3007683 () Bool)

(assert (=> b!3007683 (= e!1888780 tp_is_empty!16333)))

(assert (= (and b!3006763 ((_ is ElementMatch!9385) (regTwo!19283 (reg!9714 r!17423)))) b!3007683))

(assert (= (and b!3006763 ((_ is Concat!14706) (regTwo!19283 (reg!9714 r!17423)))) b!3007684))

(assert (= (and b!3006763 ((_ is Star!9385) (regTwo!19283 (reg!9714 r!17423)))) b!3007685))

(assert (= (and b!3006763 ((_ is Union!9385) (regTwo!19283 (reg!9714 r!17423)))) b!3007686))

(declare-fun b!3007687 () Bool)

(declare-fun e!1888781 () Bool)

(declare-fun tp!954949 () Bool)

(assert (=> b!3007687 (= e!1888781 (and tp_is_empty!16333 tp!954949))))

(assert (=> b!3006759 (= tp!954792 e!1888781)))

(assert (= (and b!3006759 ((_ is Cons!35126) (t!234315 (t!234315 s!11993)))) b!3007687))

(declare-fun b!3007690 () Bool)

(declare-fun e!1888782 () Bool)

(declare-fun tp!954951 () Bool)

(assert (=> b!3007690 (= e!1888782 tp!954951)))

(declare-fun b!3007689 () Bool)

(declare-fun tp!954953 () Bool)

(declare-fun tp!954954 () Bool)

(assert (=> b!3007689 (= e!1888782 (and tp!954953 tp!954954))))

(declare-fun b!3007691 () Bool)

(declare-fun tp!954952 () Bool)

(declare-fun tp!954950 () Bool)

(assert (=> b!3007691 (= e!1888782 (and tp!954952 tp!954950))))

(assert (=> b!3006752 (= tp!954788 e!1888782)))

(declare-fun b!3007688 () Bool)

(assert (=> b!3007688 (= e!1888782 tp_is_empty!16333)))

(assert (= (and b!3006752 ((_ is ElementMatch!9385) (regOne!19282 (regTwo!19283 r!17423)))) b!3007688))

(assert (= (and b!3006752 ((_ is Concat!14706) (regOne!19282 (regTwo!19283 r!17423)))) b!3007689))

(assert (= (and b!3006752 ((_ is Star!9385) (regOne!19282 (regTwo!19283 r!17423)))) b!3007690))

(assert (= (and b!3006752 ((_ is Union!9385) (regOne!19282 (regTwo!19283 r!17423)))) b!3007691))

(declare-fun b!3007694 () Bool)

(declare-fun e!1888783 () Bool)

(declare-fun tp!954956 () Bool)

(assert (=> b!3007694 (= e!1888783 tp!954956)))

(declare-fun b!3007693 () Bool)

(declare-fun tp!954958 () Bool)

(declare-fun tp!954959 () Bool)

(assert (=> b!3007693 (= e!1888783 (and tp!954958 tp!954959))))

(declare-fun b!3007695 () Bool)

(declare-fun tp!954957 () Bool)

(declare-fun tp!954955 () Bool)

(assert (=> b!3007695 (= e!1888783 (and tp!954957 tp!954955))))

(assert (=> b!3006752 (= tp!954789 e!1888783)))

(declare-fun b!3007692 () Bool)

(assert (=> b!3007692 (= e!1888783 tp_is_empty!16333)))

(assert (= (and b!3006752 ((_ is ElementMatch!9385) (regTwo!19282 (regTwo!19283 r!17423)))) b!3007692))

(assert (= (and b!3006752 ((_ is Concat!14706) (regTwo!19282 (regTwo!19283 r!17423)))) b!3007693))

(assert (= (and b!3006752 ((_ is Star!9385) (regTwo!19282 (regTwo!19283 r!17423)))) b!3007694))

(assert (= (and b!3006752 ((_ is Union!9385) (regTwo!19282 (regTwo!19283 r!17423)))) b!3007695))

(declare-fun b!3007698 () Bool)

(declare-fun e!1888784 () Bool)

(declare-fun tp!954961 () Bool)

(assert (=> b!3007698 (= e!1888784 tp!954961)))

(declare-fun b!3007697 () Bool)

(declare-fun tp!954963 () Bool)

(declare-fun tp!954964 () Bool)

(assert (=> b!3007697 (= e!1888784 (and tp!954963 tp!954964))))

(declare-fun b!3007699 () Bool)

(declare-fun tp!954962 () Bool)

(declare-fun tp!954960 () Bool)

(assert (=> b!3007699 (= e!1888784 (and tp!954962 tp!954960))))

(assert (=> b!3006753 (= tp!954786 e!1888784)))

(declare-fun b!3007696 () Bool)

(assert (=> b!3007696 (= e!1888784 tp_is_empty!16333)))

(assert (= (and b!3006753 ((_ is ElementMatch!9385) (reg!9714 (regTwo!19283 r!17423)))) b!3007696))

(assert (= (and b!3006753 ((_ is Concat!14706) (reg!9714 (regTwo!19283 r!17423)))) b!3007697))

(assert (= (and b!3006753 ((_ is Star!9385) (reg!9714 (regTwo!19283 r!17423)))) b!3007698))

(assert (= (and b!3006753 ((_ is Union!9385) (reg!9714 (regTwo!19283 r!17423)))) b!3007699))

(declare-fun b!3007702 () Bool)

(declare-fun e!1888785 () Bool)

(declare-fun tp!954966 () Bool)

(assert (=> b!3007702 (= e!1888785 tp!954966)))

(declare-fun b!3007701 () Bool)

(declare-fun tp!954968 () Bool)

(declare-fun tp!954969 () Bool)

(assert (=> b!3007701 (= e!1888785 (and tp!954968 tp!954969))))

(declare-fun b!3007703 () Bool)

(declare-fun tp!954967 () Bool)

(declare-fun tp!954965 () Bool)

(assert (=> b!3007703 (= e!1888785 (and tp!954967 tp!954965))))

(assert (=> b!3006748 (= tp!954783 e!1888785)))

(declare-fun b!3007700 () Bool)

(assert (=> b!3007700 (= e!1888785 tp_is_empty!16333)))

(assert (= (and b!3006748 ((_ is ElementMatch!9385) (regOne!19282 (regOne!19283 r!17423)))) b!3007700))

(assert (= (and b!3006748 ((_ is Concat!14706) (regOne!19282 (regOne!19283 r!17423)))) b!3007701))

(assert (= (and b!3006748 ((_ is Star!9385) (regOne!19282 (regOne!19283 r!17423)))) b!3007702))

(assert (= (and b!3006748 ((_ is Union!9385) (regOne!19282 (regOne!19283 r!17423)))) b!3007703))

(declare-fun b!3007706 () Bool)

(declare-fun e!1888786 () Bool)

(declare-fun tp!954971 () Bool)

(assert (=> b!3007706 (= e!1888786 tp!954971)))

(declare-fun b!3007705 () Bool)

(declare-fun tp!954973 () Bool)

(declare-fun tp!954974 () Bool)

(assert (=> b!3007705 (= e!1888786 (and tp!954973 tp!954974))))

(declare-fun b!3007707 () Bool)

(declare-fun tp!954972 () Bool)

(declare-fun tp!954970 () Bool)

(assert (=> b!3007707 (= e!1888786 (and tp!954972 tp!954970))))

(assert (=> b!3006748 (= tp!954784 e!1888786)))

(declare-fun b!3007704 () Bool)

(assert (=> b!3007704 (= e!1888786 tp_is_empty!16333)))

(assert (= (and b!3006748 ((_ is ElementMatch!9385) (regTwo!19282 (regOne!19283 r!17423)))) b!3007704))

(assert (= (and b!3006748 ((_ is Concat!14706) (regTwo!19282 (regOne!19283 r!17423)))) b!3007705))

(assert (= (and b!3006748 ((_ is Star!9385) (regTwo!19282 (regOne!19283 r!17423)))) b!3007706))

(assert (= (and b!3006748 ((_ is Union!9385) (regTwo!19282 (regOne!19283 r!17423)))) b!3007707))

(declare-fun b!3007710 () Bool)

(declare-fun e!1888787 () Bool)

(declare-fun tp!954976 () Bool)

(assert (=> b!3007710 (= e!1888787 tp!954976)))

(declare-fun b!3007709 () Bool)

(declare-fun tp!954978 () Bool)

(declare-fun tp!954979 () Bool)

(assert (=> b!3007709 (= e!1888787 (and tp!954978 tp!954979))))

(declare-fun b!3007711 () Bool)

(declare-fun tp!954977 () Bool)

(declare-fun tp!954975 () Bool)

(assert (=> b!3007711 (= e!1888787 (and tp!954977 tp!954975))))

(assert (=> b!3006749 (= tp!954781 e!1888787)))

(declare-fun b!3007708 () Bool)

(assert (=> b!3007708 (= e!1888787 tp_is_empty!16333)))

(assert (= (and b!3006749 ((_ is ElementMatch!9385) (reg!9714 (regOne!19283 r!17423)))) b!3007708))

(assert (= (and b!3006749 ((_ is Concat!14706) (reg!9714 (regOne!19283 r!17423)))) b!3007709))

(assert (= (and b!3006749 ((_ is Star!9385) (reg!9714 (regOne!19283 r!17423)))) b!3007710))

(assert (= (and b!3006749 ((_ is Union!9385) (reg!9714 (regOne!19283 r!17423)))) b!3007711))

(declare-fun b!3007714 () Bool)

(declare-fun e!1888788 () Bool)

(declare-fun tp!954981 () Bool)

(assert (=> b!3007714 (= e!1888788 tp!954981)))

(declare-fun b!3007713 () Bool)

(declare-fun tp!954983 () Bool)

(declare-fun tp!954984 () Bool)

(assert (=> b!3007713 (= e!1888788 (and tp!954983 tp!954984))))

(declare-fun b!3007715 () Bool)

(declare-fun tp!954982 () Bool)

(declare-fun tp!954980 () Bool)

(assert (=> b!3007715 (= e!1888788 (and tp!954982 tp!954980))))

(assert (=> b!3006744 (= tp!954778 e!1888788)))

(declare-fun b!3007712 () Bool)

(assert (=> b!3007712 (= e!1888788 tp_is_empty!16333)))

(assert (= (and b!3006744 ((_ is ElementMatch!9385) (regOne!19282 (regTwo!19282 r!17423)))) b!3007712))

(assert (= (and b!3006744 ((_ is Concat!14706) (regOne!19282 (regTwo!19282 r!17423)))) b!3007713))

(assert (= (and b!3006744 ((_ is Star!9385) (regOne!19282 (regTwo!19282 r!17423)))) b!3007714))

(assert (= (and b!3006744 ((_ is Union!9385) (regOne!19282 (regTwo!19282 r!17423)))) b!3007715))

(declare-fun b!3007718 () Bool)

(declare-fun e!1888789 () Bool)

(declare-fun tp!954986 () Bool)

(assert (=> b!3007718 (= e!1888789 tp!954986)))

(declare-fun b!3007717 () Bool)

(declare-fun tp!954988 () Bool)

(declare-fun tp!954989 () Bool)

(assert (=> b!3007717 (= e!1888789 (and tp!954988 tp!954989))))

(declare-fun b!3007719 () Bool)

(declare-fun tp!954987 () Bool)

(declare-fun tp!954985 () Bool)

(assert (=> b!3007719 (= e!1888789 (and tp!954987 tp!954985))))

(assert (=> b!3006744 (= tp!954779 e!1888789)))

(declare-fun b!3007716 () Bool)

(assert (=> b!3007716 (= e!1888789 tp_is_empty!16333)))

(assert (= (and b!3006744 ((_ is ElementMatch!9385) (regTwo!19282 (regTwo!19282 r!17423)))) b!3007716))

(assert (= (and b!3006744 ((_ is Concat!14706) (regTwo!19282 (regTwo!19282 r!17423)))) b!3007717))

(assert (= (and b!3006744 ((_ is Star!9385) (regTwo!19282 (regTwo!19282 r!17423)))) b!3007718))

(assert (= (and b!3006744 ((_ is Union!9385) (regTwo!19282 (regTwo!19282 r!17423)))) b!3007719))

(declare-fun b!3007722 () Bool)

(declare-fun e!1888790 () Bool)

(declare-fun tp!954991 () Bool)

(assert (=> b!3007722 (= e!1888790 tp!954991)))

(declare-fun b!3007721 () Bool)

(declare-fun tp!954993 () Bool)

(declare-fun tp!954994 () Bool)

(assert (=> b!3007721 (= e!1888790 (and tp!954993 tp!954994))))

(declare-fun b!3007723 () Bool)

(declare-fun tp!954992 () Bool)

(declare-fun tp!954990 () Bool)

(assert (=> b!3007723 (= e!1888790 (and tp!954992 tp!954990))))

(assert (=> b!3006745 (= tp!954776 e!1888790)))

(declare-fun b!3007720 () Bool)

(assert (=> b!3007720 (= e!1888790 tp_is_empty!16333)))

(assert (= (and b!3006745 ((_ is ElementMatch!9385) (reg!9714 (regTwo!19282 r!17423)))) b!3007720))

(assert (= (and b!3006745 ((_ is Concat!14706) (reg!9714 (regTwo!19282 r!17423)))) b!3007721))

(assert (= (and b!3006745 ((_ is Star!9385) (reg!9714 (regTwo!19282 r!17423)))) b!3007722))

(assert (= (and b!3006745 ((_ is Union!9385) (reg!9714 (regTwo!19282 r!17423)))) b!3007723))

(declare-fun b!3007726 () Bool)

(declare-fun e!1888791 () Bool)

(declare-fun tp!954996 () Bool)

(assert (=> b!3007726 (= e!1888791 tp!954996)))

(declare-fun b!3007725 () Bool)

(declare-fun tp!954998 () Bool)

(declare-fun tp!954999 () Bool)

(assert (=> b!3007725 (= e!1888791 (and tp!954998 tp!954999))))

(declare-fun b!3007727 () Bool)

(declare-fun tp!954997 () Bool)

(declare-fun tp!954995 () Bool)

(assert (=> b!3007727 (= e!1888791 (and tp!954997 tp!954995))))

(assert (=> b!3006740 (= tp!954773 e!1888791)))

(declare-fun b!3007724 () Bool)

(assert (=> b!3007724 (= e!1888791 tp_is_empty!16333)))

(assert (= (and b!3006740 ((_ is ElementMatch!9385) (regOne!19282 (regOne!19282 r!17423)))) b!3007724))

(assert (= (and b!3006740 ((_ is Concat!14706) (regOne!19282 (regOne!19282 r!17423)))) b!3007725))

(assert (= (and b!3006740 ((_ is Star!9385) (regOne!19282 (regOne!19282 r!17423)))) b!3007726))

(assert (= (and b!3006740 ((_ is Union!9385) (regOne!19282 (regOne!19282 r!17423)))) b!3007727))

(declare-fun b!3007730 () Bool)

(declare-fun e!1888792 () Bool)

(declare-fun tp!955001 () Bool)

(assert (=> b!3007730 (= e!1888792 tp!955001)))

(declare-fun b!3007729 () Bool)

(declare-fun tp!955003 () Bool)

(declare-fun tp!955004 () Bool)

(assert (=> b!3007729 (= e!1888792 (and tp!955003 tp!955004))))

(declare-fun b!3007731 () Bool)

(declare-fun tp!955002 () Bool)

(declare-fun tp!955000 () Bool)

(assert (=> b!3007731 (= e!1888792 (and tp!955002 tp!955000))))

(assert (=> b!3006740 (= tp!954774 e!1888792)))

(declare-fun b!3007728 () Bool)

(assert (=> b!3007728 (= e!1888792 tp_is_empty!16333)))

(assert (= (and b!3006740 ((_ is ElementMatch!9385) (regTwo!19282 (regOne!19282 r!17423)))) b!3007728))

(assert (= (and b!3006740 ((_ is Concat!14706) (regTwo!19282 (regOne!19282 r!17423)))) b!3007729))

(assert (= (and b!3006740 ((_ is Star!9385) (regTwo!19282 (regOne!19282 r!17423)))) b!3007730))

(assert (= (and b!3006740 ((_ is Union!9385) (regTwo!19282 (regOne!19282 r!17423)))) b!3007731))

(declare-fun b!3007734 () Bool)

(declare-fun e!1888793 () Bool)

(declare-fun tp!955006 () Bool)

(assert (=> b!3007734 (= e!1888793 tp!955006)))

(declare-fun b!3007733 () Bool)

(declare-fun tp!955008 () Bool)

(declare-fun tp!955009 () Bool)

(assert (=> b!3007733 (= e!1888793 (and tp!955008 tp!955009))))

(declare-fun b!3007735 () Bool)

(declare-fun tp!955007 () Bool)

(declare-fun tp!955005 () Bool)

(assert (=> b!3007735 (= e!1888793 (and tp!955007 tp!955005))))

(assert (=> b!3006754 (= tp!954787 e!1888793)))

(declare-fun b!3007732 () Bool)

(assert (=> b!3007732 (= e!1888793 tp_is_empty!16333)))

(assert (= (and b!3006754 ((_ is ElementMatch!9385) (regOne!19283 (regTwo!19283 r!17423)))) b!3007732))

(assert (= (and b!3006754 ((_ is Concat!14706) (regOne!19283 (regTwo!19283 r!17423)))) b!3007733))

(assert (= (and b!3006754 ((_ is Star!9385) (regOne!19283 (regTwo!19283 r!17423)))) b!3007734))

(assert (= (and b!3006754 ((_ is Union!9385) (regOne!19283 (regTwo!19283 r!17423)))) b!3007735))

(declare-fun b!3007738 () Bool)

(declare-fun e!1888794 () Bool)

(declare-fun tp!955011 () Bool)

(assert (=> b!3007738 (= e!1888794 tp!955011)))

(declare-fun b!3007737 () Bool)

(declare-fun tp!955013 () Bool)

(declare-fun tp!955014 () Bool)

(assert (=> b!3007737 (= e!1888794 (and tp!955013 tp!955014))))

(declare-fun b!3007739 () Bool)

(declare-fun tp!955012 () Bool)

(declare-fun tp!955010 () Bool)

(assert (=> b!3007739 (= e!1888794 (and tp!955012 tp!955010))))

(assert (=> b!3006754 (= tp!954785 e!1888794)))

(declare-fun b!3007736 () Bool)

(assert (=> b!3007736 (= e!1888794 tp_is_empty!16333)))

(assert (= (and b!3006754 ((_ is ElementMatch!9385) (regTwo!19283 (regTwo!19283 r!17423)))) b!3007736))

(assert (= (and b!3006754 ((_ is Concat!14706) (regTwo!19283 (regTwo!19283 r!17423)))) b!3007737))

(assert (= (and b!3006754 ((_ is Star!9385) (regTwo!19283 (regTwo!19283 r!17423)))) b!3007738))

(assert (= (and b!3006754 ((_ is Union!9385) (regTwo!19283 (regTwo!19283 r!17423)))) b!3007739))

(declare-fun b!3007742 () Bool)

(declare-fun e!1888795 () Bool)

(declare-fun tp!955016 () Bool)

(assert (=> b!3007742 (= e!1888795 tp!955016)))

(declare-fun b!3007741 () Bool)

(declare-fun tp!955018 () Bool)

(declare-fun tp!955019 () Bool)

(assert (=> b!3007741 (= e!1888795 (and tp!955018 tp!955019))))

(declare-fun b!3007743 () Bool)

(declare-fun tp!955017 () Bool)

(declare-fun tp!955015 () Bool)

(assert (=> b!3007743 (= e!1888795 (and tp!955017 tp!955015))))

(assert (=> b!3006741 (= tp!954771 e!1888795)))

(declare-fun b!3007740 () Bool)

(assert (=> b!3007740 (= e!1888795 tp_is_empty!16333)))

(assert (= (and b!3006741 ((_ is ElementMatch!9385) (reg!9714 (regOne!19282 r!17423)))) b!3007740))

(assert (= (and b!3006741 ((_ is Concat!14706) (reg!9714 (regOne!19282 r!17423)))) b!3007741))

(assert (= (and b!3006741 ((_ is Star!9385) (reg!9714 (regOne!19282 r!17423)))) b!3007742))

(assert (= (and b!3006741 ((_ is Union!9385) (reg!9714 (regOne!19282 r!17423)))) b!3007743))

(declare-fun b!3007746 () Bool)

(declare-fun e!1888796 () Bool)

(declare-fun tp!955021 () Bool)

(assert (=> b!3007746 (= e!1888796 tp!955021)))

(declare-fun b!3007745 () Bool)

(declare-fun tp!955023 () Bool)

(declare-fun tp!955024 () Bool)

(assert (=> b!3007745 (= e!1888796 (and tp!955023 tp!955024))))

(declare-fun b!3007747 () Bool)

(declare-fun tp!955022 () Bool)

(declare-fun tp!955020 () Bool)

(assert (=> b!3007747 (= e!1888796 (and tp!955022 tp!955020))))

(assert (=> b!3006750 (= tp!954782 e!1888796)))

(declare-fun b!3007744 () Bool)

(assert (=> b!3007744 (= e!1888796 tp_is_empty!16333)))

(assert (= (and b!3006750 ((_ is ElementMatch!9385) (regOne!19283 (regOne!19283 r!17423)))) b!3007744))

(assert (= (and b!3006750 ((_ is Concat!14706) (regOne!19283 (regOne!19283 r!17423)))) b!3007745))

(assert (= (and b!3006750 ((_ is Star!9385) (regOne!19283 (regOne!19283 r!17423)))) b!3007746))

(assert (= (and b!3006750 ((_ is Union!9385) (regOne!19283 (regOne!19283 r!17423)))) b!3007747))

(declare-fun b!3007750 () Bool)

(declare-fun e!1888797 () Bool)

(declare-fun tp!955026 () Bool)

(assert (=> b!3007750 (= e!1888797 tp!955026)))

(declare-fun b!3007749 () Bool)

(declare-fun tp!955028 () Bool)

(declare-fun tp!955029 () Bool)

(assert (=> b!3007749 (= e!1888797 (and tp!955028 tp!955029))))

(declare-fun b!3007751 () Bool)

(declare-fun tp!955027 () Bool)

(declare-fun tp!955025 () Bool)

(assert (=> b!3007751 (= e!1888797 (and tp!955027 tp!955025))))

(assert (=> b!3006750 (= tp!954780 e!1888797)))

(declare-fun b!3007748 () Bool)

(assert (=> b!3007748 (= e!1888797 tp_is_empty!16333)))

(assert (= (and b!3006750 ((_ is ElementMatch!9385) (regTwo!19283 (regOne!19283 r!17423)))) b!3007748))

(assert (= (and b!3006750 ((_ is Concat!14706) (regTwo!19283 (regOne!19283 r!17423)))) b!3007749))

(assert (= (and b!3006750 ((_ is Star!9385) (regTwo!19283 (regOne!19283 r!17423)))) b!3007750))

(assert (= (and b!3006750 ((_ is Union!9385) (regTwo!19283 (regOne!19283 r!17423)))) b!3007751))

(declare-fun b!3007754 () Bool)

(declare-fun e!1888798 () Bool)

(declare-fun tp!955031 () Bool)

(assert (=> b!3007754 (= e!1888798 tp!955031)))

(declare-fun b!3007753 () Bool)

(declare-fun tp!955033 () Bool)

(declare-fun tp!955034 () Bool)

(assert (=> b!3007753 (= e!1888798 (and tp!955033 tp!955034))))

(declare-fun b!3007755 () Bool)

(declare-fun tp!955032 () Bool)

(declare-fun tp!955030 () Bool)

(assert (=> b!3007755 (= e!1888798 (and tp!955032 tp!955030))))

(assert (=> b!3006761 (= tp!954796 e!1888798)))

(declare-fun b!3007752 () Bool)

(assert (=> b!3007752 (= e!1888798 tp_is_empty!16333)))

(assert (= (and b!3006761 ((_ is ElementMatch!9385) (regOne!19282 (reg!9714 r!17423)))) b!3007752))

(assert (= (and b!3006761 ((_ is Concat!14706) (regOne!19282 (reg!9714 r!17423)))) b!3007753))

(assert (= (and b!3006761 ((_ is Star!9385) (regOne!19282 (reg!9714 r!17423)))) b!3007754))

(assert (= (and b!3006761 ((_ is Union!9385) (regOne!19282 (reg!9714 r!17423)))) b!3007755))

(declare-fun b!3007758 () Bool)

(declare-fun e!1888799 () Bool)

(declare-fun tp!955036 () Bool)

(assert (=> b!3007758 (= e!1888799 tp!955036)))

(declare-fun b!3007757 () Bool)

(declare-fun tp!955038 () Bool)

(declare-fun tp!955039 () Bool)

(assert (=> b!3007757 (= e!1888799 (and tp!955038 tp!955039))))

(declare-fun b!3007759 () Bool)

(declare-fun tp!955037 () Bool)

(declare-fun tp!955035 () Bool)

(assert (=> b!3007759 (= e!1888799 (and tp!955037 tp!955035))))

(assert (=> b!3006761 (= tp!954797 e!1888799)))

(declare-fun b!3007756 () Bool)

(assert (=> b!3007756 (= e!1888799 tp_is_empty!16333)))

(assert (= (and b!3006761 ((_ is ElementMatch!9385) (regTwo!19282 (reg!9714 r!17423)))) b!3007756))

(assert (= (and b!3006761 ((_ is Concat!14706) (regTwo!19282 (reg!9714 r!17423)))) b!3007757))

(assert (= (and b!3006761 ((_ is Star!9385) (regTwo!19282 (reg!9714 r!17423)))) b!3007758))

(assert (= (and b!3006761 ((_ is Union!9385) (regTwo!19282 (reg!9714 r!17423)))) b!3007759))

(declare-fun b!3007762 () Bool)

(declare-fun e!1888800 () Bool)

(declare-fun tp!955041 () Bool)

(assert (=> b!3007762 (= e!1888800 tp!955041)))

(declare-fun b!3007761 () Bool)

(declare-fun tp!955043 () Bool)

(declare-fun tp!955044 () Bool)

(assert (=> b!3007761 (= e!1888800 (and tp!955043 tp!955044))))

(declare-fun b!3007763 () Bool)

(declare-fun tp!955042 () Bool)

(declare-fun tp!955040 () Bool)

(assert (=> b!3007763 (= e!1888800 (and tp!955042 tp!955040))))

(assert (=> b!3006746 (= tp!954777 e!1888800)))

(declare-fun b!3007760 () Bool)

(assert (=> b!3007760 (= e!1888800 tp_is_empty!16333)))

(assert (= (and b!3006746 ((_ is ElementMatch!9385) (regOne!19283 (regTwo!19282 r!17423)))) b!3007760))

(assert (= (and b!3006746 ((_ is Concat!14706) (regOne!19283 (regTwo!19282 r!17423)))) b!3007761))

(assert (= (and b!3006746 ((_ is Star!9385) (regOne!19283 (regTwo!19282 r!17423)))) b!3007762))

(assert (= (and b!3006746 ((_ is Union!9385) (regOne!19283 (regTwo!19282 r!17423)))) b!3007763))

(declare-fun b!3007766 () Bool)

(declare-fun e!1888801 () Bool)

(declare-fun tp!955046 () Bool)

(assert (=> b!3007766 (= e!1888801 tp!955046)))

(declare-fun b!3007765 () Bool)

(declare-fun tp!955048 () Bool)

(declare-fun tp!955049 () Bool)

(assert (=> b!3007765 (= e!1888801 (and tp!955048 tp!955049))))

(declare-fun b!3007767 () Bool)

(declare-fun tp!955047 () Bool)

(declare-fun tp!955045 () Bool)

(assert (=> b!3007767 (= e!1888801 (and tp!955047 tp!955045))))

(assert (=> b!3006746 (= tp!954775 e!1888801)))

(declare-fun b!3007764 () Bool)

(assert (=> b!3007764 (= e!1888801 tp_is_empty!16333)))

(assert (= (and b!3006746 ((_ is ElementMatch!9385) (regTwo!19283 (regTwo!19282 r!17423)))) b!3007764))

(assert (= (and b!3006746 ((_ is Concat!14706) (regTwo!19283 (regTwo!19282 r!17423)))) b!3007765))

(assert (= (and b!3006746 ((_ is Star!9385) (regTwo!19283 (regTwo!19282 r!17423)))) b!3007766))

(assert (= (and b!3006746 ((_ is Union!9385) (regTwo!19283 (regTwo!19282 r!17423)))) b!3007767))

(check-sat (not bm!202339) (not b!3007684) (not bm!202348) (not b!3007706) (not b!3007498) (not b!3007645) (not bm!202461) (not b!3007707) (not b!3007694) (not d!847102) (not b!3007136) (not b!3007697) (not b!3007626) (not bm!202401) (not bm!202405) (not b!3007686) (not b!3007763) (not b!3007407) (not b!3007493) (not b!3007749) (not b!3007705) (not b!3007624) (not b!3007070) (not bm!202423) (not b!3007621) (not b!3007668) (not bm!202450) (not b!3007520) (not b!3007628) (not b!3007216) (not b!3007670) (not b!3007585) (not b!3007739) (not d!847112) (not b!3007630) (not d!847156) (not d!847032) (not d!847196) (not bm!202459) (not bm!202426) (not b!3006941) (not b!3007723) (not bm!202439) (not bm!202424) (not b!3007691) (not b!3007564) (not bm!202360) (not bm!202399) (not b!3006916) (not b!3007595) (not b!3007410) (not bm!202396) (not b!3007491) (not b!3007722) (not d!847194) (not b!3007761) (not d!847138) (not b!3007726) (not bm!202418) (not d!847154) (not b!3007046) (not bm!202414) (not b!3007719) (not d!847140) (not bm!202454) (not b!3007137) (not b!3007616) (not d!847062) (not b!3007415) (not d!847200) (not bm!202416) (not bm!202431) (not d!847186) (not d!847202) (not b!3007643) (not b!3007473) (not b!3007758) (not bm!202362) (not b!3007710) (not b!3007479) (not b!3007743) (not bm!202457) (not b!3007767) (not b!3007620) (not b!3007703) (not b!3007541) (not b!3007750) (not b!3007546) (not d!847146) (not b!3007045) (not b!3007571) (not b!3007702) (not b!3007631) (not bm!202342) (not d!847152) (not d!847106) (not b!3007492) (not d!847190) (not b!3007713) (not b!3007689) (not d!847114) (not b!3007751) (not bm!202413) (not b!3007698) (not d!847198) (not b!3007753) (not b!3007717) (not b!3007557) (not d!847150) (not b!3007711) (not d!846976) (not b!3007693) (not b!3007672) tp_is_empty!16333 (not b!3006902) (not b!3007456) (not b!3007733) (not bm!202404) (not b!3006910) (not b!3007599) (not bm!202419) (not b!3007680) (not d!847018) (not bm!202458) (not d!847192) (not b!3007138) (not b!3007533) (not bm!202451) (not b!3007699) (not b!3007414) (not b!3007574) (not b!3007411) (not b!3007701) (not d!847180) (not d!847084) (not b!3007735) (not b!3007578) (not b!3007757) (not b!3007737) (not b!3007725) (not b!3007755) (not b!3007695) (not b!3007133) (not b!3007132) (not b!3007746) (not d!847132) (not b!3007566) (not b!3006915) (not b!3007718) (not b!3007678) (not b!3007488) (not b!3007727) (not b!3007575) (not b!3006964) (not bm!202341) (not b!3006914) (not bm!202378) (not b!3007714) (not b!3007478) (not d!847120) (not b!3007477) (not bm!202455) (not bm!202432) (not bm!202445) (not b!3006907) (not b!3007293) (not b!3007766) (not b!3007603) (not b!3007531) (not b!3007285) (not b!3007627) (not b!3007745) (not b!3007687) (not b!3007247) (not b!3007295) (not b!3007487) (not b!3007047) (not b!3007416) (not bm!202349) (not b!3007747) (not b!3007565) (not d!847184) (not b!3007681) (not d!847206) (not b!3007376) (not b!3006911) (not d!847204) (not d!847110) (not bm!202427) (not bm!202444) (not b!3007715) (not b!3007731) (not d!847142) (not b!3007598) (not b!3007709) (not b!3007682) (not bm!202422) (not b!3007579) (not d!847136) (not b!3007685) (not b!3007734) (not b!3007470) (not b!3007465) (not b!3007721) (not b!3007676) (not b!3007343) (not b!3007729) (not bm!202442) (not b!3007514) (not b!3006923) (not b!3007041) (not b!3007674) (not bm!202400) (not b!3007759) (not bm!202449) (not d!847060) (not b!3007129) (not d!847182) (not b!3007604) (not d!847148) (not b!3007484) (not b!3007617) (not b!3007510) (not b!3006922) (not b!3007580) (not bm!202430) (not b!3007677) (not b!3007602) (not b!3007527) (not b!3007742) (not b!3007730) (not b!3007738) (not b!3007560) (not bm!202433) (not d!846982) (not b!3007690) (not b!3007539) (not b!3006968) (not bm!202446) (not d!847122) (not d!847188) (not b!3007609) (not b!3007754) (not bm!202436) (not b!3007344) (not b!3007741) (not b!3007765) (not bm!202441) (not b!3007669) (not b!3007474) (not bm!202437) (not b!3007673) (not bm!202363) (not b!3007042) (not b!3007561) (not b!3007243) (not b!3007762) (not bm!202440) (not bm!202438) (not bm!202420) (not b!3007038) (not b!3007543) (not b!3007208))
(check-sat)
