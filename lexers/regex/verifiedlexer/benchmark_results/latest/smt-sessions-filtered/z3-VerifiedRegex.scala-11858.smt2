; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666470 () Bool)

(assert start!666470)

(declare-fun b!6938772 () Bool)

(assert (=> b!6938772 true))

(assert (=> b!6938772 true))

(assert (=> b!6938772 true))

(declare-fun lambda!395224 () Int)

(declare-fun lambda!395223 () Int)

(assert (=> b!6938772 (not (= lambda!395224 lambda!395223))))

(assert (=> b!6938772 true))

(assert (=> b!6938772 true))

(assert (=> b!6938772 true))

(declare-fun bs!1853609 () Bool)

(declare-fun b!6938767 () Bool)

(assert (= bs!1853609 (and b!6938767 b!6938772)))

(declare-datatypes ((C!34196 0))(
  ( (C!34197 (val!26800 Int)) )
))
(declare-datatypes ((Regex!16963 0))(
  ( (ElementMatch!16963 (c!1287519 C!34196)) (Concat!25808 (regOne!34438 Regex!16963) (regTwo!34438 Regex!16963)) (EmptyExpr!16963) (Star!16963 (reg!17292 Regex!16963)) (EmptyLang!16963) (Union!16963 (regOne!34439 Regex!16963) (regTwo!34439 Regex!16963)) )
))
(declare-fun r1!6342 () Regex!16963)

(declare-fun lambda!395225 () Int)

(declare-fun lt!2475243 () Regex!16963)

(declare-fun r3!135 () Regex!16963)

(declare-datatypes ((List!66716 0))(
  ( (Nil!66592) (Cons!66592 (h!73040 C!34196) (t!380459 List!66716)) )
))
(declare-datatypes ((tuple2!67640 0))(
  ( (tuple2!67641 (_1!37123 List!66716) (_2!37123 List!66716)) )
))
(declare-fun lt!2475244 () tuple2!67640)

(declare-fun s!14361 () List!66716)

(declare-fun r2!6280 () Regex!16963)

(assert (=> bs!1853609 (= (and (= (_2!37123 lt!2475244) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475243)) (= lambda!395225 lambda!395223))))

(assert (=> bs!1853609 (not (= lambda!395225 lambda!395224))))

(assert (=> b!6938767 true))

(assert (=> b!6938767 true))

(assert (=> b!6938767 true))

(declare-fun lambda!395226 () Int)

(assert (=> bs!1853609 (not (= lambda!395226 lambda!395223))))

(assert (=> bs!1853609 (= (and (= (_2!37123 lt!2475244) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475243)) (= lambda!395226 lambda!395224))))

(assert (=> b!6938767 (not (= lambda!395226 lambda!395225))))

(assert (=> b!6938767 true))

(assert (=> b!6938767 true))

(assert (=> b!6938767 true))

(declare-fun bs!1853610 () Bool)

(declare-fun b!6938777 () Bool)

(assert (= bs!1853610 (and b!6938777 b!6938772)))

(declare-fun lambda!395227 () Int)

(declare-fun lt!2475259 () List!66716)

(assert (=> bs!1853610 (= (and (= lt!2475259 s!14361) (= r2!6280 lt!2475243)) (= lambda!395227 lambda!395223))))

(assert (=> bs!1853610 (not (= lambda!395227 lambda!395224))))

(declare-fun bs!1853611 () Bool)

(assert (= bs!1853611 (and b!6938777 b!6938767)))

(assert (=> bs!1853611 (= (and (= lt!2475259 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395227 lambda!395225))))

(assert (=> bs!1853611 (not (= lambda!395227 lambda!395226))))

(assert (=> b!6938777 true))

(assert (=> b!6938777 true))

(assert (=> b!6938777 true))

(declare-fun lambda!395228 () Int)

(assert (=> bs!1853611 (= (and (= lt!2475259 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395228 lambda!395226))))

(assert (=> b!6938777 (not (= lambda!395228 lambda!395227))))

(assert (=> bs!1853610 (= (and (= lt!2475259 s!14361) (= r2!6280 lt!2475243)) (= lambda!395228 lambda!395224))))

(assert (=> bs!1853610 (not (= lambda!395228 lambda!395223))))

(assert (=> bs!1853611 (not (= lambda!395228 lambda!395225))))

(assert (=> b!6938777 true))

(assert (=> b!6938777 true))

(assert (=> b!6938777 true))

(declare-fun b!6938756 () Bool)

(declare-fun res!2830346 () Bool)

(declare-fun e!4174385 () Bool)

(assert (=> b!6938756 (=> res!2830346 e!4174385)))

(declare-fun matchR!9102 (Regex!16963 List!66716) Bool)

(assert (=> b!6938756 (= res!2830346 (not (matchR!9102 lt!2475243 (_2!37123 lt!2475244))))))

(declare-fun res!2830349 () Bool)

(declare-fun e!4174387 () Bool)

(assert (=> start!666470 (=> (not res!2830349) (not e!4174387))))

(declare-fun validRegex!8669 (Regex!16963) Bool)

(assert (=> start!666470 (= res!2830349 (validRegex!8669 r1!6342))))

(assert (=> start!666470 e!4174387))

(declare-fun e!4174389 () Bool)

(assert (=> start!666470 e!4174389))

(declare-fun e!4174391 () Bool)

(assert (=> start!666470 e!4174391))

(declare-fun e!4174386 () Bool)

(assert (=> start!666470 e!4174386))

(declare-fun e!4174393 () Bool)

(assert (=> start!666470 e!4174393))

(declare-fun b!6938757 () Bool)

(declare-fun res!2830350 () Bool)

(declare-fun e!4174392 () Bool)

(assert (=> b!6938757 (=> res!2830350 e!4174392)))

(declare-fun lt!2475267 () tuple2!67640)

(assert (=> b!6938757 (= res!2830350 (not (matchR!9102 r3!135 (_2!37123 lt!2475267))))))

(declare-fun b!6938758 () Bool)

(declare-fun tp_is_empty!43151 () Bool)

(assert (=> b!6938758 (= e!4174386 tp_is_empty!43151)))

(declare-fun b!6938759 () Bool)

(declare-fun e!4174384 () Bool)

(assert (=> b!6938759 (= e!4174392 e!4174384)))

(declare-fun res!2830345 () Bool)

(assert (=> b!6938759 (=> res!2830345 e!4174384)))

(declare-fun lt!2475251 () List!66716)

(assert (=> b!6938759 (= res!2830345 (not (= lt!2475251 s!14361)))))

(declare-fun ++!15002 (List!66716 List!66716) List!66716)

(assert (=> b!6938759 (= lt!2475251 (++!15002 (_1!37123 lt!2475244) (++!15002 (_1!37123 lt!2475267) (_2!37123 lt!2475267))))))

(declare-fun matchRSpec!4020 (Regex!16963 List!66716) Bool)

(assert (=> b!6938759 (matchRSpec!4020 r3!135 (_2!37123 lt!2475267))))

(declare-datatypes ((Unit!160650 0))(
  ( (Unit!160651) )
))
(declare-fun lt!2475257 () Unit!160650)

(declare-fun mainMatchTheorem!4020 (Regex!16963 List!66716) Unit!160650)

(assert (=> b!6938759 (= lt!2475257 (mainMatchTheorem!4020 r3!135 (_2!37123 lt!2475267)))))

(assert (=> b!6938759 (matchRSpec!4020 r2!6280 (_1!37123 lt!2475267))))

(declare-fun lt!2475268 () Unit!160650)

(assert (=> b!6938759 (= lt!2475268 (mainMatchTheorem!4020 r2!6280 (_1!37123 lt!2475267)))))

(declare-fun b!6938760 () Bool)

(assert (=> b!6938760 (= e!4174389 tp_is_empty!43151)))

(declare-fun b!6938761 () Bool)

(declare-fun e!4174394 () Bool)

(declare-fun lt!2475270 () Regex!16963)

(assert (=> b!6938761 (= e!4174394 (validRegex!8669 lt!2475270))))

(declare-datatypes ((Option!16732 0))(
  ( (None!16731) (Some!16731 (v!53003 tuple2!67640)) )
))
(declare-fun isDefined!13433 (Option!16732) Bool)

(declare-fun findConcatSeparation!3146 (Regex!16963 Regex!16963 List!66716 List!66716 List!66716) Option!16732)

(assert (=> b!6938761 (isDefined!13433 (findConcatSeparation!3146 lt!2475270 r3!135 Nil!66592 s!14361 s!14361))))

(declare-fun lt!2475246 () Unit!160650)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!106 (Regex!16963 Regex!16963 List!66716 List!66716 List!66716 List!66716 List!66716) Unit!160650)

(assert (=> b!6938761 (= lt!2475246 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!106 lt!2475270 r3!135 lt!2475259 (_2!37123 lt!2475267) s!14361 Nil!66592 s!14361))))

(declare-fun b!6938762 () Bool)

(assert (=> b!6938762 (= e!4174391 tp_is_empty!43151)))

(declare-fun b!6938763 () Bool)

(declare-fun tp!1912735 () Bool)

(assert (=> b!6938763 (= e!4174393 (and tp_is_empty!43151 tp!1912735))))

(declare-fun b!6938764 () Bool)

(declare-fun tp!1912726 () Bool)

(declare-fun tp!1912731 () Bool)

(assert (=> b!6938764 (= e!4174391 (and tp!1912726 tp!1912731))))

(declare-fun b!6938765 () Bool)

(declare-fun res!2830344 () Bool)

(assert (=> b!6938765 (=> (not res!2830344) (not e!4174387))))

(assert (=> b!6938765 (= res!2830344 (validRegex!8669 r3!135))))

(declare-fun b!6938766 () Bool)

(declare-fun tp!1912736 () Bool)

(assert (=> b!6938766 (= e!4174386 tp!1912736)))

(assert (=> b!6938767 (= e!4174385 e!4174392)))

(declare-fun res!2830351 () Bool)

(assert (=> b!6938767 (=> res!2830351 e!4174392)))

(assert (=> b!6938767 (= res!2830351 (not (matchR!9102 r2!6280 (_1!37123 lt!2475267))))))

(declare-fun lt!2475266 () Option!16732)

(declare-fun get!23381 (Option!16732) tuple2!67640)

(assert (=> b!6938767 (= lt!2475267 (get!23381 lt!2475266))))

(declare-fun Exists!3963 (Int) Bool)

(assert (=> b!6938767 (= (Exists!3963 lambda!395225) (Exists!3963 lambda!395226))))

(declare-fun lt!2475261 () Unit!160650)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2424 (Regex!16963 Regex!16963 List!66716) Unit!160650)

(assert (=> b!6938767 (= lt!2475261 (lemmaExistCutMatchRandMatchRSpecEquivalent!2424 r2!6280 r3!135 (_2!37123 lt!2475244)))))

(assert (=> b!6938767 (= (isDefined!13433 lt!2475266) (Exists!3963 lambda!395225))))

(assert (=> b!6938767 (= lt!2475266 (findConcatSeparation!3146 r2!6280 r3!135 Nil!66592 (_2!37123 lt!2475244) (_2!37123 lt!2475244)))))

(declare-fun lt!2475271 () Unit!160650)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2904 (Regex!16963 Regex!16963 List!66716) Unit!160650)

(assert (=> b!6938767 (= lt!2475271 (lemmaFindConcatSeparationEquivalentToExists!2904 r2!6280 r3!135 (_2!37123 lt!2475244)))))

(assert (=> b!6938767 (matchRSpec!4020 lt!2475243 (_2!37123 lt!2475244))))

(declare-fun lt!2475258 () Unit!160650)

(assert (=> b!6938767 (= lt!2475258 (mainMatchTheorem!4020 lt!2475243 (_2!37123 lt!2475244)))))

(declare-fun b!6938768 () Bool)

(declare-fun tp!1912730 () Bool)

(declare-fun tp!1912733 () Bool)

(assert (=> b!6938768 (= e!4174386 (and tp!1912730 tp!1912733))))

(declare-fun b!6938769 () Bool)

(declare-fun tp!1912727 () Bool)

(declare-fun tp!1912729 () Bool)

(assert (=> b!6938769 (= e!4174389 (and tp!1912727 tp!1912729))))

(declare-fun b!6938770 () Bool)

(declare-fun tp!1912728 () Bool)

(declare-fun tp!1912737 () Bool)

(assert (=> b!6938770 (= e!4174386 (and tp!1912728 tp!1912737))))

(declare-fun b!6938771 () Bool)

(declare-fun tp!1912724 () Bool)

(declare-fun tp!1912734 () Bool)

(assert (=> b!6938771 (= e!4174389 (and tp!1912724 tp!1912734))))

(declare-fun e!4174390 () Bool)

(assert (=> b!6938772 (= e!4174390 e!4174385)))

(declare-fun res!2830343 () Bool)

(assert (=> b!6938772 (=> res!2830343 e!4174385)))

(declare-fun lt!2475253 () Bool)

(assert (=> b!6938772 (= res!2830343 (not lt!2475253))))

(assert (=> b!6938772 (= lt!2475253 (matchRSpec!4020 r1!6342 (_1!37123 lt!2475244)))))

(assert (=> b!6938772 (= lt!2475253 (matchR!9102 r1!6342 (_1!37123 lt!2475244)))))

(declare-fun lt!2475262 () Unit!160650)

(assert (=> b!6938772 (= lt!2475262 (mainMatchTheorem!4020 r1!6342 (_1!37123 lt!2475244)))))

(declare-fun lt!2475249 () Option!16732)

(assert (=> b!6938772 (= lt!2475244 (get!23381 lt!2475249))))

(assert (=> b!6938772 (= (Exists!3963 lambda!395223) (Exists!3963 lambda!395224))))

(declare-fun lt!2475247 () Unit!160650)

(assert (=> b!6938772 (= lt!2475247 (lemmaExistCutMatchRandMatchRSpecEquivalent!2424 r1!6342 lt!2475243 s!14361))))

(assert (=> b!6938772 (Exists!3963 lambda!395223)))

(declare-fun lt!2475254 () Unit!160650)

(assert (=> b!6938772 (= lt!2475254 (lemmaFindConcatSeparationEquivalentToExists!2904 r1!6342 lt!2475243 s!14361))))

(declare-fun b!6938773 () Bool)

(declare-fun e!4174388 () Bool)

(assert (=> b!6938773 (= e!4174387 (not e!4174388))))

(declare-fun res!2830342 () Bool)

(assert (=> b!6938773 (=> res!2830342 e!4174388)))

(declare-fun lt!2475263 () Bool)

(assert (=> b!6938773 (= res!2830342 lt!2475263)))

(declare-fun lt!2475252 () Regex!16963)

(assert (=> b!6938773 (= (matchR!9102 lt!2475252 s!14361) (matchRSpec!4020 lt!2475252 s!14361))))

(declare-fun lt!2475260 () Unit!160650)

(assert (=> b!6938773 (= lt!2475260 (mainMatchTheorem!4020 lt!2475252 s!14361))))

(declare-fun lt!2475269 () Regex!16963)

(assert (=> b!6938773 (= lt!2475263 (matchRSpec!4020 lt!2475269 s!14361))))

(assert (=> b!6938773 (= lt!2475263 (matchR!9102 lt!2475269 s!14361))))

(declare-fun lt!2475245 () Unit!160650)

(assert (=> b!6938773 (= lt!2475245 (mainMatchTheorem!4020 lt!2475269 s!14361))))

(assert (=> b!6938773 (= lt!2475252 (Concat!25808 r1!6342 lt!2475243))))

(assert (=> b!6938773 (= lt!2475243 (Concat!25808 r2!6280 r3!135))))

(assert (=> b!6938773 (= lt!2475269 (Concat!25808 lt!2475270 r3!135))))

(assert (=> b!6938773 (= lt!2475270 (Concat!25808 r1!6342 r2!6280))))

(declare-fun b!6938774 () Bool)

(declare-fun res!2830348 () Bool)

(assert (=> b!6938774 (=> (not res!2830348) (not e!4174387))))

(assert (=> b!6938774 (= res!2830348 (validRegex!8669 r2!6280))))

(declare-fun b!6938775 () Bool)

(declare-fun tp!1912725 () Bool)

(assert (=> b!6938775 (= e!4174389 tp!1912725)))

(declare-fun b!6938776 () Bool)

(assert (=> b!6938776 (= e!4174388 e!4174390)))

(declare-fun res!2830347 () Bool)

(assert (=> b!6938776 (=> res!2830347 e!4174390)))

(assert (=> b!6938776 (= res!2830347 (not (isDefined!13433 lt!2475249)))))

(assert (=> b!6938776 (= lt!2475249 (findConcatSeparation!3146 r1!6342 lt!2475243 Nil!66592 s!14361 s!14361))))

(assert (=> b!6938777 (= e!4174384 e!4174394)))

(declare-fun res!2830352 () Bool)

(assert (=> b!6938777 (=> res!2830352 e!4174394)))

(declare-fun lt!2475242 () Bool)

(declare-fun lt!2475256 () List!66716)

(assert (=> b!6938777 (= res!2830352 (or (not lt!2475242) (not (= lt!2475256 s!14361))))))

(declare-fun lt!2475248 () Bool)

(assert (=> b!6938777 lt!2475248))

(declare-fun lt!2475241 () Unit!160650)

(assert (=> b!6938777 (= lt!2475241 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!106 r1!6342 r2!6280 (_1!37123 lt!2475244) (_1!37123 lt!2475267) lt!2475259 Nil!66592 lt!2475259))))

(assert (=> b!6938777 (= (Exists!3963 lambda!395227) (Exists!3963 lambda!395228))))

(declare-fun lt!2475250 () Unit!160650)

(assert (=> b!6938777 (= lt!2475250 (lemmaExistCutMatchRandMatchRSpecEquivalent!2424 r1!6342 r2!6280 lt!2475259))))

(assert (=> b!6938777 (= lt!2475248 (Exists!3963 lambda!395227))))

(assert (=> b!6938777 (= lt!2475248 (isDefined!13433 (findConcatSeparation!3146 r1!6342 r2!6280 Nil!66592 lt!2475259 lt!2475259)))))

(declare-fun lt!2475265 () Unit!160650)

(assert (=> b!6938777 (= lt!2475265 (lemmaFindConcatSeparationEquivalentToExists!2904 r1!6342 r2!6280 lt!2475259))))

(assert (=> b!6938777 (= lt!2475242 (matchRSpec!4020 lt!2475270 lt!2475259))))

(assert (=> b!6938777 (= lt!2475242 (matchR!9102 lt!2475270 lt!2475259))))

(declare-fun lt!2475264 () Unit!160650)

(assert (=> b!6938777 (= lt!2475264 (mainMatchTheorem!4020 lt!2475270 lt!2475259))))

(assert (=> b!6938777 (= lt!2475256 lt!2475251)))

(assert (=> b!6938777 (= lt!2475256 (++!15002 lt!2475259 (_2!37123 lt!2475267)))))

(assert (=> b!6938777 (= lt!2475259 (++!15002 (_1!37123 lt!2475244) (_1!37123 lt!2475267)))))

(declare-fun lt!2475255 () Unit!160650)

(declare-fun lemmaConcatAssociativity!3044 (List!66716 List!66716 List!66716) Unit!160650)

(assert (=> b!6938777 (= lt!2475255 (lemmaConcatAssociativity!3044 (_1!37123 lt!2475244) (_1!37123 lt!2475267) (_2!37123 lt!2475267)))))

(declare-fun b!6938778 () Bool)

(declare-fun tp!1912732 () Bool)

(assert (=> b!6938778 (= e!4174391 tp!1912732)))

(declare-fun b!6938779 () Bool)

(declare-fun tp!1912739 () Bool)

(declare-fun tp!1912738 () Bool)

(assert (=> b!6938779 (= e!4174391 (and tp!1912739 tp!1912738))))

(assert (= (and start!666470 res!2830349) b!6938774))

(assert (= (and b!6938774 res!2830348) b!6938765))

(assert (= (and b!6938765 res!2830344) b!6938773))

(assert (= (and b!6938773 (not res!2830342)) b!6938776))

(assert (= (and b!6938776 (not res!2830347)) b!6938772))

(assert (= (and b!6938772 (not res!2830343)) b!6938756))

(assert (= (and b!6938756 (not res!2830346)) b!6938767))

(assert (= (and b!6938767 (not res!2830351)) b!6938757))

(assert (= (and b!6938757 (not res!2830350)) b!6938759))

(assert (= (and b!6938759 (not res!2830345)) b!6938777))

(assert (= (and b!6938777 (not res!2830352)) b!6938761))

(get-info :version)

(assert (= (and start!666470 ((_ is ElementMatch!16963) r1!6342)) b!6938760))

(assert (= (and start!666470 ((_ is Concat!25808) r1!6342)) b!6938769))

(assert (= (and start!666470 ((_ is Star!16963) r1!6342)) b!6938775))

(assert (= (and start!666470 ((_ is Union!16963) r1!6342)) b!6938771))

(assert (= (and start!666470 ((_ is ElementMatch!16963) r2!6280)) b!6938762))

(assert (= (and start!666470 ((_ is Concat!25808) r2!6280)) b!6938764))

(assert (= (and start!666470 ((_ is Star!16963) r2!6280)) b!6938778))

(assert (= (and start!666470 ((_ is Union!16963) r2!6280)) b!6938779))

(assert (= (and start!666470 ((_ is ElementMatch!16963) r3!135)) b!6938758))

(assert (= (and start!666470 ((_ is Concat!25808) r3!135)) b!6938770))

(assert (= (and start!666470 ((_ is Star!16963) r3!135)) b!6938766))

(assert (= (and start!666470 ((_ is Union!16963) r3!135)) b!6938768))

(assert (= (and start!666470 ((_ is Cons!66592) s!14361)) b!6938763))

(declare-fun m!7644120 () Bool)

(assert (=> b!6938776 m!7644120))

(declare-fun m!7644122 () Bool)

(assert (=> b!6938776 m!7644122))

(declare-fun m!7644124 () Bool)

(assert (=> b!6938761 m!7644124))

(declare-fun m!7644126 () Bool)

(assert (=> b!6938761 m!7644126))

(assert (=> b!6938761 m!7644126))

(declare-fun m!7644128 () Bool)

(assert (=> b!6938761 m!7644128))

(declare-fun m!7644130 () Bool)

(assert (=> b!6938761 m!7644130))

(declare-fun m!7644132 () Bool)

(assert (=> b!6938767 m!7644132))

(declare-fun m!7644134 () Bool)

(assert (=> b!6938767 m!7644134))

(declare-fun m!7644136 () Bool)

(assert (=> b!6938767 m!7644136))

(declare-fun m!7644138 () Bool)

(assert (=> b!6938767 m!7644138))

(declare-fun m!7644140 () Bool)

(assert (=> b!6938767 m!7644140))

(declare-fun m!7644142 () Bool)

(assert (=> b!6938767 m!7644142))

(declare-fun m!7644144 () Bool)

(assert (=> b!6938767 m!7644144))

(assert (=> b!6938767 m!7644132))

(declare-fun m!7644146 () Bool)

(assert (=> b!6938767 m!7644146))

(declare-fun m!7644148 () Bool)

(assert (=> b!6938767 m!7644148))

(declare-fun m!7644150 () Bool)

(assert (=> b!6938767 m!7644150))

(declare-fun m!7644152 () Bool)

(assert (=> b!6938756 m!7644152))

(declare-fun m!7644154 () Bool)

(assert (=> b!6938757 m!7644154))

(declare-fun m!7644156 () Bool)

(assert (=> b!6938773 m!7644156))

(declare-fun m!7644158 () Bool)

(assert (=> b!6938773 m!7644158))

(declare-fun m!7644160 () Bool)

(assert (=> b!6938773 m!7644160))

(declare-fun m!7644162 () Bool)

(assert (=> b!6938773 m!7644162))

(declare-fun m!7644164 () Bool)

(assert (=> b!6938773 m!7644164))

(declare-fun m!7644166 () Bool)

(assert (=> b!6938773 m!7644166))

(declare-fun m!7644168 () Bool)

(assert (=> b!6938772 m!7644168))

(assert (=> b!6938772 m!7644168))

(declare-fun m!7644170 () Bool)

(assert (=> b!6938772 m!7644170))

(declare-fun m!7644172 () Bool)

(assert (=> b!6938772 m!7644172))

(declare-fun m!7644174 () Bool)

(assert (=> b!6938772 m!7644174))

(declare-fun m!7644176 () Bool)

(assert (=> b!6938772 m!7644176))

(declare-fun m!7644178 () Bool)

(assert (=> b!6938772 m!7644178))

(declare-fun m!7644180 () Bool)

(assert (=> b!6938772 m!7644180))

(declare-fun m!7644182 () Bool)

(assert (=> b!6938772 m!7644182))

(declare-fun m!7644184 () Bool)

(assert (=> b!6938759 m!7644184))

(declare-fun m!7644186 () Bool)

(assert (=> b!6938759 m!7644186))

(declare-fun m!7644188 () Bool)

(assert (=> b!6938759 m!7644188))

(declare-fun m!7644190 () Bool)

(assert (=> b!6938759 m!7644190))

(declare-fun m!7644192 () Bool)

(assert (=> b!6938759 m!7644192))

(assert (=> b!6938759 m!7644184))

(declare-fun m!7644194 () Bool)

(assert (=> b!6938759 m!7644194))

(declare-fun m!7644196 () Bool)

(assert (=> b!6938777 m!7644196))

(declare-fun m!7644198 () Bool)

(assert (=> b!6938777 m!7644198))

(declare-fun m!7644200 () Bool)

(assert (=> b!6938777 m!7644200))

(declare-fun m!7644202 () Bool)

(assert (=> b!6938777 m!7644202))

(declare-fun m!7644204 () Bool)

(assert (=> b!6938777 m!7644204))

(declare-fun m!7644206 () Bool)

(assert (=> b!6938777 m!7644206))

(declare-fun m!7644208 () Bool)

(assert (=> b!6938777 m!7644208))

(declare-fun m!7644210 () Bool)

(assert (=> b!6938777 m!7644210))

(assert (=> b!6938777 m!7644196))

(declare-fun m!7644212 () Bool)

(assert (=> b!6938777 m!7644212))

(assert (=> b!6938777 m!7644206))

(declare-fun m!7644214 () Bool)

(assert (=> b!6938777 m!7644214))

(declare-fun m!7644216 () Bool)

(assert (=> b!6938777 m!7644216))

(declare-fun m!7644218 () Bool)

(assert (=> b!6938777 m!7644218))

(declare-fun m!7644220 () Bool)

(assert (=> b!6938777 m!7644220))

(declare-fun m!7644222 () Bool)

(assert (=> start!666470 m!7644222))

(declare-fun m!7644224 () Bool)

(assert (=> b!6938765 m!7644224))

(declare-fun m!7644226 () Bool)

(assert (=> b!6938774 m!7644226))

(check-sat (not b!6938769) (not b!6938766) (not b!6938761) (not b!6938768) (not b!6938773) (not b!6938765) (not b!6938779) (not b!6938759) (not b!6938756) (not b!6938770) (not b!6938772) (not b!6938777) (not b!6938774) (not b!6938763) (not b!6938767) tp_is_empty!43151 (not b!6938776) (not b!6938764) (not b!6938775) (not b!6938757) (not b!6938771) (not start!666470) (not b!6938778))
(check-sat)
(get-model)

(declare-fun b!6938924 () Bool)

(declare-fun res!2830431 () Bool)

(declare-fun e!4174474 () Bool)

(assert (=> b!6938924 (=> (not res!2830431) (not e!4174474))))

(declare-fun isEmpty!38862 (List!66716) Bool)

(declare-fun tail!12960 (List!66716) List!66716)

(assert (=> b!6938924 (= res!2830431 (isEmpty!38862 (tail!12960 (_2!37123 lt!2475244))))))

(declare-fun b!6938925 () Bool)

(declare-fun e!4174476 () Bool)

(declare-fun nullable!6780 (Regex!16963) Bool)

(assert (=> b!6938925 (= e!4174476 (nullable!6780 lt!2475243))))

(declare-fun b!6938926 () Bool)

(declare-fun res!2830436 () Bool)

(declare-fun e!4174479 () Bool)

(assert (=> b!6938926 (=> res!2830436 e!4174479)))

(assert (=> b!6938926 (= res!2830436 (not ((_ is ElementMatch!16963) lt!2475243)))))

(declare-fun e!4174475 () Bool)

(assert (=> b!6938926 (= e!4174475 e!4174479)))

(declare-fun b!6938927 () Bool)

(declare-fun e!4174473 () Bool)

(declare-fun head!13908 (List!66716) C!34196)

(assert (=> b!6938927 (= e!4174473 (not (= (head!13908 (_2!37123 lt!2475244)) (c!1287519 lt!2475243))))))

(declare-fun b!6938928 () Bool)

(declare-fun e!4174477 () Bool)

(assert (=> b!6938928 (= e!4174477 e!4174475)))

(declare-fun c!1287551 () Bool)

(assert (=> b!6938928 (= c!1287551 ((_ is EmptyLang!16963) lt!2475243))))

(declare-fun b!6938929 () Bool)

(declare-fun res!2830438 () Bool)

(assert (=> b!6938929 (=> (not res!2830438) (not e!4174474))))

(declare-fun call!630407 () Bool)

(assert (=> b!6938929 (= res!2830438 (not call!630407))))

(declare-fun b!6938930 () Bool)

(declare-fun derivativeStep!5455 (Regex!16963 C!34196) Regex!16963)

(assert (=> b!6938930 (= e!4174476 (matchR!9102 (derivativeStep!5455 lt!2475243 (head!13908 (_2!37123 lt!2475244))) (tail!12960 (_2!37123 lt!2475244))))))

(declare-fun b!6938931 () Bool)

(declare-fun lt!2475290 () Bool)

(assert (=> b!6938931 (= e!4174475 (not lt!2475290))))

(declare-fun b!6938932 () Bool)

(declare-fun res!2830437 () Bool)

(assert (=> b!6938932 (=> res!2830437 e!4174473)))

(assert (=> b!6938932 (= res!2830437 (not (isEmpty!38862 (tail!12960 (_2!37123 lt!2475244)))))))

(declare-fun b!6938933 () Bool)

(assert (=> b!6938933 (= e!4174474 (= (head!13908 (_2!37123 lt!2475244)) (c!1287519 lt!2475243)))))

(declare-fun b!6938934 () Bool)

(declare-fun e!4174478 () Bool)

(assert (=> b!6938934 (= e!4174479 e!4174478)))

(declare-fun res!2830433 () Bool)

(assert (=> b!6938934 (=> (not res!2830433) (not e!4174478))))

(assert (=> b!6938934 (= res!2830433 (not lt!2475290))))

(declare-fun d!2167301 () Bool)

(assert (=> d!2167301 e!4174477))

(declare-fun c!1287550 () Bool)

(assert (=> d!2167301 (= c!1287550 ((_ is EmptyExpr!16963) lt!2475243))))

(assert (=> d!2167301 (= lt!2475290 e!4174476)))

(declare-fun c!1287552 () Bool)

(assert (=> d!2167301 (= c!1287552 (isEmpty!38862 (_2!37123 lt!2475244)))))

(assert (=> d!2167301 (validRegex!8669 lt!2475243)))

(assert (=> d!2167301 (= (matchR!9102 lt!2475243 (_2!37123 lt!2475244)) lt!2475290)))

(declare-fun b!6938935 () Bool)

(assert (=> b!6938935 (= e!4174478 e!4174473)))

(declare-fun res!2830432 () Bool)

(assert (=> b!6938935 (=> res!2830432 e!4174473)))

(assert (=> b!6938935 (= res!2830432 call!630407)))

(declare-fun b!6938936 () Bool)

(declare-fun res!2830435 () Bool)

(assert (=> b!6938936 (=> res!2830435 e!4174479)))

(assert (=> b!6938936 (= res!2830435 e!4174474)))

(declare-fun res!2830434 () Bool)

(assert (=> b!6938936 (=> (not res!2830434) (not e!4174474))))

(assert (=> b!6938936 (= res!2830434 lt!2475290)))

(declare-fun bm!630402 () Bool)

(assert (=> bm!630402 (= call!630407 (isEmpty!38862 (_2!37123 lt!2475244)))))

(declare-fun b!6938937 () Bool)

(assert (=> b!6938937 (= e!4174477 (= lt!2475290 call!630407))))

(assert (= (and d!2167301 c!1287552) b!6938925))

(assert (= (and d!2167301 (not c!1287552)) b!6938930))

(assert (= (and d!2167301 c!1287550) b!6938937))

(assert (= (and d!2167301 (not c!1287550)) b!6938928))

(assert (= (and b!6938928 c!1287551) b!6938931))

(assert (= (and b!6938928 (not c!1287551)) b!6938926))

(assert (= (and b!6938926 (not res!2830436)) b!6938936))

(assert (= (and b!6938936 res!2830434) b!6938929))

(assert (= (and b!6938929 res!2830438) b!6938924))

(assert (= (and b!6938924 res!2830431) b!6938933))

(assert (= (and b!6938936 (not res!2830435)) b!6938934))

(assert (= (and b!6938934 res!2830433) b!6938935))

(assert (= (and b!6938935 (not res!2830432)) b!6938932))

(assert (= (and b!6938932 (not res!2830437)) b!6938927))

(assert (= (or b!6938937 b!6938929 b!6938935) bm!630402))

(declare-fun m!7644292 () Bool)

(assert (=> b!6938933 m!7644292))

(declare-fun m!7644294 () Bool)

(assert (=> d!2167301 m!7644294))

(declare-fun m!7644296 () Bool)

(assert (=> d!2167301 m!7644296))

(declare-fun m!7644298 () Bool)

(assert (=> b!6938924 m!7644298))

(assert (=> b!6938924 m!7644298))

(declare-fun m!7644300 () Bool)

(assert (=> b!6938924 m!7644300))

(declare-fun m!7644302 () Bool)

(assert (=> b!6938925 m!7644302))

(assert (=> b!6938932 m!7644298))

(assert (=> b!6938932 m!7644298))

(assert (=> b!6938932 m!7644300))

(assert (=> b!6938927 m!7644292))

(assert (=> bm!630402 m!7644294))

(assert (=> b!6938930 m!7644292))

(assert (=> b!6938930 m!7644292))

(declare-fun m!7644304 () Bool)

(assert (=> b!6938930 m!7644304))

(assert (=> b!6938930 m!7644298))

(assert (=> b!6938930 m!7644304))

(assert (=> b!6938930 m!7644298))

(declare-fun m!7644308 () Bool)

(assert (=> b!6938930 m!7644308))

(assert (=> b!6938756 d!2167301))

(declare-fun lt!2475298 () List!66716)

(declare-fun e!4174488 () Bool)

(declare-fun b!6938957 () Bool)

(assert (=> b!6938957 (= e!4174488 (or (not (= (_2!37123 lt!2475267) Nil!66592)) (= lt!2475298 lt!2475259)))))

(declare-fun b!6938954 () Bool)

(declare-fun e!4174489 () List!66716)

(assert (=> b!6938954 (= e!4174489 (_2!37123 lt!2475267))))

(declare-fun b!6938955 () Bool)

(assert (=> b!6938955 (= e!4174489 (Cons!66592 (h!73040 lt!2475259) (++!15002 (t!380459 lt!2475259) (_2!37123 lt!2475267))))))

(declare-fun d!2167313 () Bool)

(assert (=> d!2167313 e!4174488))

(declare-fun res!2830451 () Bool)

(assert (=> d!2167313 (=> (not res!2830451) (not e!4174488))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13101 (List!66716) (InoxSet C!34196))

(assert (=> d!2167313 (= res!2830451 (= (content!13101 lt!2475298) ((_ map or) (content!13101 lt!2475259) (content!13101 (_2!37123 lt!2475267)))))))

(assert (=> d!2167313 (= lt!2475298 e!4174489)))

(declare-fun c!1287555 () Bool)

(assert (=> d!2167313 (= c!1287555 ((_ is Nil!66592) lt!2475259))))

(assert (=> d!2167313 (= (++!15002 lt!2475259 (_2!37123 lt!2475267)) lt!2475298)))

(declare-fun b!6938956 () Bool)

(declare-fun res!2830452 () Bool)

(assert (=> b!6938956 (=> (not res!2830452) (not e!4174488))))

(declare-fun size!40798 (List!66716) Int)

(assert (=> b!6938956 (= res!2830452 (= (size!40798 lt!2475298) (+ (size!40798 lt!2475259) (size!40798 (_2!37123 lt!2475267)))))))

(assert (= (and d!2167313 c!1287555) b!6938954))

(assert (= (and d!2167313 (not c!1287555)) b!6938955))

(assert (= (and d!2167313 res!2830451) b!6938956))

(assert (= (and b!6938956 res!2830452) b!6938957))

(declare-fun m!7644310 () Bool)

(assert (=> b!6938955 m!7644310))

(declare-fun m!7644312 () Bool)

(assert (=> d!2167313 m!7644312))

(declare-fun m!7644314 () Bool)

(assert (=> d!2167313 m!7644314))

(declare-fun m!7644316 () Bool)

(assert (=> d!2167313 m!7644316))

(declare-fun m!7644318 () Bool)

(assert (=> b!6938956 m!7644318))

(declare-fun m!7644320 () Bool)

(assert (=> b!6938956 m!7644320))

(declare-fun m!7644322 () Bool)

(assert (=> b!6938956 m!7644322))

(assert (=> b!6938777 d!2167313))

(declare-fun d!2167315 () Bool)

(declare-fun choose!51693 (Int) Bool)

(assert (=> d!2167315 (= (Exists!3963 lambda!395227) (choose!51693 lambda!395227))))

(declare-fun bs!1853617 () Bool)

(assert (= bs!1853617 d!2167315))

(declare-fun m!7644324 () Bool)

(assert (=> bs!1853617 m!7644324))

(assert (=> b!6938777 d!2167315))

(declare-fun bs!1853628 () Bool)

(declare-fun b!6939056 () Bool)

(assert (= bs!1853628 (and b!6939056 b!6938767)))

(declare-fun lambda!395246 () Int)

(assert (=> bs!1853628 (not (= lambda!395246 lambda!395226))))

(declare-fun bs!1853629 () Bool)

(assert (= bs!1853629 (and b!6939056 b!6938777)))

(assert (=> bs!1853629 (not (= lambda!395246 lambda!395227))))

(assert (=> bs!1853629 (not (= lambda!395246 lambda!395228))))

(declare-fun bs!1853630 () Bool)

(assert (= bs!1853630 (and b!6939056 b!6938772)))

(assert (=> bs!1853630 (not (= lambda!395246 lambda!395224))))

(assert (=> bs!1853630 (not (= lambda!395246 lambda!395223))))

(assert (=> bs!1853628 (not (= lambda!395246 lambda!395225))))

(assert (=> b!6939056 true))

(assert (=> b!6939056 true))

(declare-fun bs!1853631 () Bool)

(declare-fun b!6939059 () Bool)

(assert (= bs!1853631 (and b!6939059 b!6938767)))

(declare-fun lambda!395247 () Int)

(assert (=> bs!1853631 (= (and (= lt!2475259 (_2!37123 lt!2475244)) (= (regOne!34438 lt!2475270) r2!6280) (= (regTwo!34438 lt!2475270) r3!135)) (= lambda!395247 lambda!395226))))

(declare-fun bs!1853632 () Bool)

(assert (= bs!1853632 (and b!6939059 b!6938777)))

(assert (=> bs!1853632 (not (= lambda!395247 lambda!395227))))

(assert (=> bs!1853632 (= (and (= (regOne!34438 lt!2475270) r1!6342) (= (regTwo!34438 lt!2475270) r2!6280)) (= lambda!395247 lambda!395228))))

(declare-fun bs!1853634 () Bool)

(assert (= bs!1853634 (and b!6939059 b!6938772)))

(assert (=> bs!1853634 (= (and (= lt!2475259 s!14361) (= (regOne!34438 lt!2475270) r1!6342) (= (regTwo!34438 lt!2475270) lt!2475243)) (= lambda!395247 lambda!395224))))

(assert (=> bs!1853634 (not (= lambda!395247 lambda!395223))))

(assert (=> bs!1853631 (not (= lambda!395247 lambda!395225))))

(declare-fun bs!1853637 () Bool)

(assert (= bs!1853637 (and b!6939059 b!6939056)))

(assert (=> bs!1853637 (not (= lambda!395247 lambda!395246))))

(assert (=> b!6939059 true))

(assert (=> b!6939059 true))

(declare-fun bm!630408 () Bool)

(declare-fun call!630413 () Bool)

(assert (=> bm!630408 (= call!630413 (isEmpty!38862 lt!2475259))))

(declare-fun b!6939049 () Bool)

(declare-fun res!2830504 () Bool)

(declare-fun e!4174541 () Bool)

(assert (=> b!6939049 (=> res!2830504 e!4174541)))

(assert (=> b!6939049 (= res!2830504 call!630413)))

(declare-fun e!4174544 () Bool)

(assert (=> b!6939049 (= e!4174544 e!4174541)))

(declare-fun b!6939050 () Bool)

(declare-fun e!4174545 () Bool)

(declare-fun e!4174546 () Bool)

(assert (=> b!6939050 (= e!4174545 e!4174546)))

(declare-fun res!2830503 () Bool)

(assert (=> b!6939050 (= res!2830503 (matchRSpec!4020 (regOne!34439 lt!2475270) lt!2475259))))

(assert (=> b!6939050 (=> res!2830503 e!4174546)))

(declare-fun b!6939051 () Bool)

(assert (=> b!6939051 (= e!4174546 (matchRSpec!4020 (regTwo!34439 lt!2475270) lt!2475259))))

(declare-fun c!1287577 () Bool)

(declare-fun call!630414 () Bool)

(declare-fun bm!630409 () Bool)

(assert (=> bm!630409 (= call!630414 (Exists!3963 (ite c!1287577 lambda!395246 lambda!395247)))))

(declare-fun b!6939052 () Bool)

(declare-fun e!4174543 () Bool)

(assert (=> b!6939052 (= e!4174543 call!630413)))

(declare-fun b!6939054 () Bool)

(declare-fun c!1287578 () Bool)

(assert (=> b!6939054 (= c!1287578 ((_ is ElementMatch!16963) lt!2475270))))

(declare-fun e!4174540 () Bool)

(declare-fun e!4174542 () Bool)

(assert (=> b!6939054 (= e!4174540 e!4174542)))

(declare-fun b!6939055 () Bool)

(assert (=> b!6939055 (= e!4174542 (= lt!2475259 (Cons!66592 (c!1287519 lt!2475270) Nil!66592)))))

(assert (=> b!6939056 (= e!4174541 call!630414)))

(declare-fun b!6939057 () Bool)

(declare-fun c!1287580 () Bool)

(assert (=> b!6939057 (= c!1287580 ((_ is Union!16963) lt!2475270))))

(assert (=> b!6939057 (= e!4174542 e!4174545)))

(declare-fun b!6939058 () Bool)

(assert (=> b!6939058 (= e!4174543 e!4174540)))

(declare-fun res!2830502 () Bool)

(assert (=> b!6939058 (= res!2830502 (not ((_ is EmptyLang!16963) lt!2475270)))))

(assert (=> b!6939058 (=> (not res!2830502) (not e!4174540))))

(assert (=> b!6939059 (= e!4174544 call!630414)))

(declare-fun b!6939053 () Bool)

(assert (=> b!6939053 (= e!4174545 e!4174544)))

(assert (=> b!6939053 (= c!1287577 ((_ is Star!16963) lt!2475270))))

(declare-fun d!2167317 () Bool)

(declare-fun c!1287579 () Bool)

(assert (=> d!2167317 (= c!1287579 ((_ is EmptyExpr!16963) lt!2475270))))

(assert (=> d!2167317 (= (matchRSpec!4020 lt!2475270 lt!2475259) e!4174543)))

(assert (= (and d!2167317 c!1287579) b!6939052))

(assert (= (and d!2167317 (not c!1287579)) b!6939058))

(assert (= (and b!6939058 res!2830502) b!6939054))

(assert (= (and b!6939054 c!1287578) b!6939055))

(assert (= (and b!6939054 (not c!1287578)) b!6939057))

(assert (= (and b!6939057 c!1287580) b!6939050))

(assert (= (and b!6939057 (not c!1287580)) b!6939053))

(assert (= (and b!6939050 (not res!2830503)) b!6939051))

(assert (= (and b!6939053 c!1287577) b!6939049))

(assert (= (and b!6939053 (not c!1287577)) b!6939059))

(assert (= (and b!6939049 (not res!2830504)) b!6939056))

(assert (= (or b!6939056 b!6939059) bm!630409))

(assert (= (or b!6939052 b!6939049) bm!630408))

(declare-fun m!7644378 () Bool)

(assert (=> bm!630408 m!7644378))

(declare-fun m!7644380 () Bool)

(assert (=> b!6939050 m!7644380))

(declare-fun m!7644382 () Bool)

(assert (=> b!6939051 m!7644382))

(declare-fun m!7644384 () Bool)

(assert (=> bm!630409 m!7644384))

(assert (=> b!6938777 d!2167317))

(declare-fun b!6939071 () Bool)

(declare-fun res!2830508 () Bool)

(declare-fun e!4174555 () Bool)

(assert (=> b!6939071 (=> (not res!2830508) (not e!4174555))))

(assert (=> b!6939071 (= res!2830508 (isEmpty!38862 (tail!12960 lt!2475259)))))

(declare-fun b!6939072 () Bool)

(declare-fun e!4174557 () Bool)

(assert (=> b!6939072 (= e!4174557 (nullable!6780 lt!2475270))))

(declare-fun b!6939073 () Bool)

(declare-fun res!2830513 () Bool)

(declare-fun e!4174560 () Bool)

(assert (=> b!6939073 (=> res!2830513 e!4174560)))

(assert (=> b!6939073 (= res!2830513 (not ((_ is ElementMatch!16963) lt!2475270)))))

(declare-fun e!4174556 () Bool)

(assert (=> b!6939073 (= e!4174556 e!4174560)))

(declare-fun b!6939074 () Bool)

(declare-fun e!4174554 () Bool)

(assert (=> b!6939074 (= e!4174554 (not (= (head!13908 lt!2475259) (c!1287519 lt!2475270))))))

(declare-fun b!6939075 () Bool)

(declare-fun e!4174558 () Bool)

(assert (=> b!6939075 (= e!4174558 e!4174556)))

(declare-fun c!1287586 () Bool)

(assert (=> b!6939075 (= c!1287586 ((_ is EmptyLang!16963) lt!2475270))))

(declare-fun b!6939076 () Bool)

(declare-fun res!2830515 () Bool)

(assert (=> b!6939076 (=> (not res!2830515) (not e!4174555))))

(declare-fun call!630421 () Bool)

(assert (=> b!6939076 (= res!2830515 (not call!630421))))

(declare-fun b!6939077 () Bool)

(assert (=> b!6939077 (= e!4174557 (matchR!9102 (derivativeStep!5455 lt!2475270 (head!13908 lt!2475259)) (tail!12960 lt!2475259)))))

(declare-fun b!6939078 () Bool)

(declare-fun lt!2475307 () Bool)

(assert (=> b!6939078 (= e!4174556 (not lt!2475307))))

(declare-fun b!6939079 () Bool)

(declare-fun res!2830514 () Bool)

(assert (=> b!6939079 (=> res!2830514 e!4174554)))

(assert (=> b!6939079 (= res!2830514 (not (isEmpty!38862 (tail!12960 lt!2475259))))))

(declare-fun b!6939080 () Bool)

(assert (=> b!6939080 (= e!4174555 (= (head!13908 lt!2475259) (c!1287519 lt!2475270)))))

(declare-fun b!6939081 () Bool)

(declare-fun e!4174559 () Bool)

(assert (=> b!6939081 (= e!4174560 e!4174559)))

(declare-fun res!2830510 () Bool)

(assert (=> b!6939081 (=> (not res!2830510) (not e!4174559))))

(assert (=> b!6939081 (= res!2830510 (not lt!2475307))))

(declare-fun d!2167333 () Bool)

(assert (=> d!2167333 e!4174558))

(declare-fun c!1287585 () Bool)

(assert (=> d!2167333 (= c!1287585 ((_ is EmptyExpr!16963) lt!2475270))))

(assert (=> d!2167333 (= lt!2475307 e!4174557)))

(declare-fun c!1287587 () Bool)

(assert (=> d!2167333 (= c!1287587 (isEmpty!38862 lt!2475259))))

(assert (=> d!2167333 (validRegex!8669 lt!2475270)))

(assert (=> d!2167333 (= (matchR!9102 lt!2475270 lt!2475259) lt!2475307)))

(declare-fun b!6939082 () Bool)

(assert (=> b!6939082 (= e!4174559 e!4174554)))

(declare-fun res!2830509 () Bool)

(assert (=> b!6939082 (=> res!2830509 e!4174554)))

(assert (=> b!6939082 (= res!2830509 call!630421)))

(declare-fun b!6939083 () Bool)

(declare-fun res!2830512 () Bool)

(assert (=> b!6939083 (=> res!2830512 e!4174560)))

(assert (=> b!6939083 (= res!2830512 e!4174555)))

(declare-fun res!2830511 () Bool)

(assert (=> b!6939083 (=> (not res!2830511) (not e!4174555))))

(assert (=> b!6939083 (= res!2830511 lt!2475307)))

(declare-fun bm!630416 () Bool)

(assert (=> bm!630416 (= call!630421 (isEmpty!38862 lt!2475259))))

(declare-fun b!6939084 () Bool)

(assert (=> b!6939084 (= e!4174558 (= lt!2475307 call!630421))))

(assert (= (and d!2167333 c!1287587) b!6939072))

(assert (= (and d!2167333 (not c!1287587)) b!6939077))

(assert (= (and d!2167333 c!1287585) b!6939084))

(assert (= (and d!2167333 (not c!1287585)) b!6939075))

(assert (= (and b!6939075 c!1287586) b!6939078))

(assert (= (and b!6939075 (not c!1287586)) b!6939073))

(assert (= (and b!6939073 (not res!2830513)) b!6939083))

(assert (= (and b!6939083 res!2830511) b!6939076))

(assert (= (and b!6939076 res!2830515) b!6939071))

(assert (= (and b!6939071 res!2830508) b!6939080))

(assert (= (and b!6939083 (not res!2830512)) b!6939081))

(assert (= (and b!6939081 res!2830510) b!6939082))

(assert (= (and b!6939082 (not res!2830509)) b!6939079))

(assert (= (and b!6939079 (not res!2830514)) b!6939074))

(assert (= (or b!6939084 b!6939076 b!6939082) bm!630416))

(declare-fun m!7644386 () Bool)

(assert (=> b!6939080 m!7644386))

(assert (=> d!2167333 m!7644378))

(assert (=> d!2167333 m!7644124))

(declare-fun m!7644388 () Bool)

(assert (=> b!6939071 m!7644388))

(assert (=> b!6939071 m!7644388))

(declare-fun m!7644394 () Bool)

(assert (=> b!6939071 m!7644394))

(declare-fun m!7644396 () Bool)

(assert (=> b!6939072 m!7644396))

(assert (=> b!6939079 m!7644388))

(assert (=> b!6939079 m!7644388))

(assert (=> b!6939079 m!7644394))

(assert (=> b!6939074 m!7644386))

(assert (=> bm!630416 m!7644378))

(assert (=> b!6939077 m!7644386))

(assert (=> b!6939077 m!7644386))

(declare-fun m!7644400 () Bool)

(assert (=> b!6939077 m!7644400))

(assert (=> b!6939077 m!7644388))

(assert (=> b!6939077 m!7644400))

(assert (=> b!6939077 m!7644388))

(declare-fun m!7644404 () Bool)

(assert (=> b!6939077 m!7644404))

(assert (=> b!6938777 d!2167333))

(declare-fun lt!2475310 () List!66716)

(declare-fun b!6939088 () Bool)

(declare-fun e!4174561 () Bool)

(assert (=> b!6939088 (= e!4174561 (or (not (= (_1!37123 lt!2475267) Nil!66592)) (= lt!2475310 (_1!37123 lt!2475244))))))

(declare-fun b!6939085 () Bool)

(declare-fun e!4174562 () List!66716)

(assert (=> b!6939085 (= e!4174562 (_1!37123 lt!2475267))))

(declare-fun b!6939086 () Bool)

(assert (=> b!6939086 (= e!4174562 (Cons!66592 (h!73040 (_1!37123 lt!2475244)) (++!15002 (t!380459 (_1!37123 lt!2475244)) (_1!37123 lt!2475267))))))

(declare-fun d!2167339 () Bool)

(assert (=> d!2167339 e!4174561))

(declare-fun res!2830516 () Bool)

(assert (=> d!2167339 (=> (not res!2830516) (not e!4174561))))

(assert (=> d!2167339 (= res!2830516 (= (content!13101 lt!2475310) ((_ map or) (content!13101 (_1!37123 lt!2475244)) (content!13101 (_1!37123 lt!2475267)))))))

(assert (=> d!2167339 (= lt!2475310 e!4174562)))

(declare-fun c!1287588 () Bool)

(assert (=> d!2167339 (= c!1287588 ((_ is Nil!66592) (_1!37123 lt!2475244)))))

(assert (=> d!2167339 (= (++!15002 (_1!37123 lt!2475244) (_1!37123 lt!2475267)) lt!2475310)))

(declare-fun b!6939087 () Bool)

(declare-fun res!2830517 () Bool)

(assert (=> b!6939087 (=> (not res!2830517) (not e!4174561))))

(assert (=> b!6939087 (= res!2830517 (= (size!40798 lt!2475310) (+ (size!40798 (_1!37123 lt!2475244)) (size!40798 (_1!37123 lt!2475267)))))))

(assert (= (and d!2167339 c!1287588) b!6939085))

(assert (= (and d!2167339 (not c!1287588)) b!6939086))

(assert (= (and d!2167339 res!2830516) b!6939087))

(assert (= (and b!6939087 res!2830517) b!6939088))

(declare-fun m!7644406 () Bool)

(assert (=> b!6939086 m!7644406))

(declare-fun m!7644408 () Bool)

(assert (=> d!2167339 m!7644408))

(declare-fun m!7644410 () Bool)

(assert (=> d!2167339 m!7644410))

(declare-fun m!7644412 () Bool)

(assert (=> d!2167339 m!7644412))

(declare-fun m!7644414 () Bool)

(assert (=> b!6939087 m!7644414))

(declare-fun m!7644416 () Bool)

(assert (=> b!6939087 m!7644416))

(declare-fun m!7644418 () Bool)

(assert (=> b!6939087 m!7644418))

(assert (=> b!6938777 d!2167339))

(declare-fun d!2167341 () Bool)

(assert (=> d!2167341 (= (Exists!3963 lambda!395228) (choose!51693 lambda!395228))))

(declare-fun bs!1853652 () Bool)

(assert (= bs!1853652 d!2167341))

(declare-fun m!7644420 () Bool)

(assert (=> bs!1853652 m!7644420))

(assert (=> b!6938777 d!2167341))

(declare-fun b!6939177 () Bool)

(declare-fun res!2830560 () Bool)

(declare-fun e!4174616 () Bool)

(assert (=> b!6939177 (=> (not res!2830560) (not e!4174616))))

(declare-fun lt!2475331 () Option!16732)

(assert (=> b!6939177 (= res!2830560 (matchR!9102 r1!6342 (_1!37123 (get!23381 lt!2475331))))))

(declare-fun b!6939178 () Bool)

(declare-fun e!4174615 () Bool)

(assert (=> b!6939178 (= e!4174615 (not (isDefined!13433 lt!2475331)))))

(declare-fun d!2167343 () Bool)

(assert (=> d!2167343 e!4174615))

(declare-fun res!2830564 () Bool)

(assert (=> d!2167343 (=> res!2830564 e!4174615)))

(assert (=> d!2167343 (= res!2830564 e!4174616)))

(declare-fun res!2830561 () Bool)

(assert (=> d!2167343 (=> (not res!2830561) (not e!4174616))))

(assert (=> d!2167343 (= res!2830561 (isDefined!13433 lt!2475331))))

(declare-fun e!4174617 () Option!16732)

(assert (=> d!2167343 (= lt!2475331 e!4174617)))

(declare-fun c!1287612 () Bool)

(declare-fun e!4174618 () Bool)

(assert (=> d!2167343 (= c!1287612 e!4174618)))

(declare-fun res!2830562 () Bool)

(assert (=> d!2167343 (=> (not res!2830562) (not e!4174618))))

(assert (=> d!2167343 (= res!2830562 (matchR!9102 r1!6342 Nil!66592))))

(assert (=> d!2167343 (validRegex!8669 r1!6342)))

(assert (=> d!2167343 (= (findConcatSeparation!3146 r1!6342 r2!6280 Nil!66592 lt!2475259 lt!2475259) lt!2475331)))

(declare-fun b!6939179 () Bool)

(declare-fun lt!2475330 () Unit!160650)

(declare-fun lt!2475332 () Unit!160650)

(assert (=> b!6939179 (= lt!2475330 lt!2475332)))

(assert (=> b!6939179 (= (++!15002 (++!15002 Nil!66592 (Cons!66592 (h!73040 lt!2475259) Nil!66592)) (t!380459 lt!2475259)) lt!2475259)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2859 (List!66716 C!34196 List!66716 List!66716) Unit!160650)

(assert (=> b!6939179 (= lt!2475332 (lemmaMoveElementToOtherListKeepsConcatEq!2859 Nil!66592 (h!73040 lt!2475259) (t!380459 lt!2475259) lt!2475259))))

(declare-fun e!4174614 () Option!16732)

(assert (=> b!6939179 (= e!4174614 (findConcatSeparation!3146 r1!6342 r2!6280 (++!15002 Nil!66592 (Cons!66592 (h!73040 lt!2475259) Nil!66592)) (t!380459 lt!2475259) lt!2475259))))

(declare-fun b!6939180 () Bool)

(assert (=> b!6939180 (= e!4174617 (Some!16731 (tuple2!67641 Nil!66592 lt!2475259)))))

(declare-fun b!6939181 () Bool)

(declare-fun res!2830563 () Bool)

(assert (=> b!6939181 (=> (not res!2830563) (not e!4174616))))

(assert (=> b!6939181 (= res!2830563 (matchR!9102 r2!6280 (_2!37123 (get!23381 lt!2475331))))))

(declare-fun b!6939182 () Bool)

(assert (=> b!6939182 (= e!4174618 (matchR!9102 r2!6280 lt!2475259))))

(declare-fun b!6939183 () Bool)

(assert (=> b!6939183 (= e!4174616 (= (++!15002 (_1!37123 (get!23381 lt!2475331)) (_2!37123 (get!23381 lt!2475331))) lt!2475259))))

(declare-fun b!6939184 () Bool)

(assert (=> b!6939184 (= e!4174614 None!16731)))

(declare-fun b!6939185 () Bool)

(assert (=> b!6939185 (= e!4174617 e!4174614)))

(declare-fun c!1287613 () Bool)

(assert (=> b!6939185 (= c!1287613 ((_ is Nil!66592) lt!2475259))))

(assert (= (and d!2167343 res!2830562) b!6939182))

(assert (= (and d!2167343 c!1287612) b!6939180))

(assert (= (and d!2167343 (not c!1287612)) b!6939185))

(assert (= (and b!6939185 c!1287613) b!6939184))

(assert (= (and b!6939185 (not c!1287613)) b!6939179))

(assert (= (and d!2167343 res!2830561) b!6939177))

(assert (= (and b!6939177 res!2830560) b!6939181))

(assert (= (and b!6939181 res!2830563) b!6939183))

(assert (= (and d!2167343 (not res!2830564)) b!6939178))

(declare-fun m!7644520 () Bool)

(assert (=> b!6939181 m!7644520))

(declare-fun m!7644522 () Bool)

(assert (=> b!6939181 m!7644522))

(declare-fun m!7644524 () Bool)

(assert (=> b!6939178 m!7644524))

(declare-fun m!7644526 () Bool)

(assert (=> b!6939179 m!7644526))

(assert (=> b!6939179 m!7644526))

(declare-fun m!7644528 () Bool)

(assert (=> b!6939179 m!7644528))

(declare-fun m!7644530 () Bool)

(assert (=> b!6939179 m!7644530))

(assert (=> b!6939179 m!7644526))

(declare-fun m!7644532 () Bool)

(assert (=> b!6939179 m!7644532))

(assert (=> b!6939177 m!7644520))

(declare-fun m!7644534 () Bool)

(assert (=> b!6939177 m!7644534))

(assert (=> d!2167343 m!7644524))

(declare-fun m!7644536 () Bool)

(assert (=> d!2167343 m!7644536))

(assert (=> d!2167343 m!7644222))

(assert (=> b!6939183 m!7644520))

(declare-fun m!7644538 () Bool)

(assert (=> b!6939183 m!7644538))

(declare-fun m!7644540 () Bool)

(assert (=> b!6939182 m!7644540))

(assert (=> b!6938777 d!2167343))

(declare-fun d!2167371 () Bool)

(assert (=> d!2167371 (= (++!15002 (++!15002 (_1!37123 lt!2475244) (_1!37123 lt!2475267)) (_2!37123 lt!2475267)) (++!15002 (_1!37123 lt!2475244) (++!15002 (_1!37123 lt!2475267) (_2!37123 lt!2475267))))))

(declare-fun lt!2475337 () Unit!160650)

(declare-fun choose!51694 (List!66716 List!66716 List!66716) Unit!160650)

(assert (=> d!2167371 (= lt!2475337 (choose!51694 (_1!37123 lt!2475244) (_1!37123 lt!2475267) (_2!37123 lt!2475267)))))

(assert (=> d!2167371 (= (lemmaConcatAssociativity!3044 (_1!37123 lt!2475244) (_1!37123 lt!2475267) (_2!37123 lt!2475267)) lt!2475337)))

(declare-fun bs!1853718 () Bool)

(assert (= bs!1853718 d!2167371))

(assert (=> bs!1853718 m!7644184))

(assert (=> bs!1853718 m!7644186))

(declare-fun m!7644556 () Bool)

(assert (=> bs!1853718 m!7644556))

(assert (=> bs!1853718 m!7644210))

(declare-fun m!7644558 () Bool)

(assert (=> bs!1853718 m!7644558))

(assert (=> bs!1853718 m!7644210))

(assert (=> bs!1853718 m!7644184))

(assert (=> b!6938777 d!2167371))

(declare-fun d!2167379 () Bool)

(declare-fun isEmpty!38863 (Option!16732) Bool)

(assert (=> d!2167379 (= (isDefined!13433 (findConcatSeparation!3146 r1!6342 r2!6280 Nil!66592 lt!2475259 lt!2475259)) (not (isEmpty!38863 (findConcatSeparation!3146 r1!6342 r2!6280 Nil!66592 lt!2475259 lt!2475259))))))

(declare-fun bs!1853723 () Bool)

(assert (= bs!1853723 d!2167379))

(assert (=> bs!1853723 m!7644206))

(declare-fun m!7644560 () Bool)

(assert (=> bs!1853723 m!7644560))

(assert (=> b!6938777 d!2167379))

(declare-fun bs!1853750 () Bool)

(declare-fun d!2167381 () Bool)

(assert (= bs!1853750 (and d!2167381 b!6939059)))

(declare-fun lambda!395262 () Int)

(assert (=> bs!1853750 (not (= lambda!395262 lambda!395247))))

(declare-fun bs!1853752 () Bool)

(assert (= bs!1853752 (and d!2167381 b!6938767)))

(assert (=> bs!1853752 (not (= lambda!395262 lambda!395226))))

(declare-fun bs!1853753 () Bool)

(assert (= bs!1853753 (and d!2167381 b!6938777)))

(assert (=> bs!1853753 (= lambda!395262 lambda!395227)))

(assert (=> bs!1853753 (not (= lambda!395262 lambda!395228))))

(declare-fun bs!1853755 () Bool)

(assert (= bs!1853755 (and d!2167381 b!6938772)))

(assert (=> bs!1853755 (not (= lambda!395262 lambda!395224))))

(assert (=> bs!1853755 (= (and (= lt!2475259 s!14361) (= r2!6280 lt!2475243)) (= lambda!395262 lambda!395223))))

(assert (=> bs!1853752 (= (and (= lt!2475259 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395262 lambda!395225))))

(declare-fun bs!1853758 () Bool)

(assert (= bs!1853758 (and d!2167381 b!6939056)))

(assert (=> bs!1853758 (not (= lambda!395262 lambda!395246))))

(assert (=> d!2167381 true))

(assert (=> d!2167381 true))

(assert (=> d!2167381 true))

(assert (=> d!2167381 (= (isDefined!13433 (findConcatSeparation!3146 r1!6342 r2!6280 Nil!66592 lt!2475259 lt!2475259)) (Exists!3963 lambda!395262))))

(declare-fun lt!2475343 () Unit!160650)

(declare-fun choose!51695 (Regex!16963 Regex!16963 List!66716) Unit!160650)

(assert (=> d!2167381 (= lt!2475343 (choose!51695 r1!6342 r2!6280 lt!2475259))))

(assert (=> d!2167381 (validRegex!8669 r1!6342)))

(assert (=> d!2167381 (= (lemmaFindConcatSeparationEquivalentToExists!2904 r1!6342 r2!6280 lt!2475259) lt!2475343)))

(declare-fun bs!1853761 () Bool)

(assert (= bs!1853761 d!2167381))

(declare-fun m!7644594 () Bool)

(assert (=> bs!1853761 m!7644594))

(declare-fun m!7644596 () Bool)

(assert (=> bs!1853761 m!7644596))

(assert (=> bs!1853761 m!7644222))

(assert (=> bs!1853761 m!7644206))

(assert (=> bs!1853761 m!7644214))

(assert (=> bs!1853761 m!7644206))

(assert (=> b!6938777 d!2167381))

(declare-fun d!2167391 () Bool)

(assert (=> d!2167391 (= (matchR!9102 lt!2475270 lt!2475259) (matchRSpec!4020 lt!2475270 lt!2475259))))

(declare-fun lt!2475346 () Unit!160650)

(declare-fun choose!51696 (Regex!16963 List!66716) Unit!160650)

(assert (=> d!2167391 (= lt!2475346 (choose!51696 lt!2475270 lt!2475259))))

(assert (=> d!2167391 (validRegex!8669 lt!2475270)))

(assert (=> d!2167391 (= (mainMatchTheorem!4020 lt!2475270 lt!2475259) lt!2475346)))

(declare-fun bs!1853780 () Bool)

(assert (= bs!1853780 d!2167391))

(assert (=> bs!1853780 m!7644204))

(assert (=> bs!1853780 m!7644202))

(declare-fun m!7644598 () Bool)

(assert (=> bs!1853780 m!7644598))

(assert (=> bs!1853780 m!7644124))

(assert (=> b!6938777 d!2167391))

(declare-fun d!2167393 () Bool)

(assert (=> d!2167393 (isDefined!13433 (findConcatSeparation!3146 r1!6342 r2!6280 Nil!66592 lt!2475259 lt!2475259))))

(declare-fun lt!2475350 () Unit!160650)

(declare-fun choose!51697 (Regex!16963 Regex!16963 List!66716 List!66716 List!66716 List!66716 List!66716) Unit!160650)

(assert (=> d!2167393 (= lt!2475350 (choose!51697 r1!6342 r2!6280 (_1!37123 lt!2475244) (_1!37123 lt!2475267) lt!2475259 Nil!66592 lt!2475259))))

(assert (=> d!2167393 (validRegex!8669 r1!6342)))

(assert (=> d!2167393 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!106 r1!6342 r2!6280 (_1!37123 lt!2475244) (_1!37123 lt!2475267) lt!2475259 Nil!66592 lt!2475259) lt!2475350)))

(declare-fun bs!1853798 () Bool)

(assert (= bs!1853798 d!2167393))

(assert (=> bs!1853798 m!7644206))

(assert (=> bs!1853798 m!7644206))

(assert (=> bs!1853798 m!7644214))

(declare-fun m!7644608 () Bool)

(assert (=> bs!1853798 m!7644608))

(assert (=> bs!1853798 m!7644222))

(assert (=> b!6938777 d!2167393))

(declare-fun bs!1853823 () Bool)

(declare-fun d!2167397 () Bool)

(assert (= bs!1853823 (and d!2167397 b!6939059)))

(declare-fun lambda!395271 () Int)

(assert (=> bs!1853823 (not (= lambda!395271 lambda!395247))))

(declare-fun bs!1853824 () Bool)

(assert (= bs!1853824 (and d!2167397 b!6938767)))

(assert (=> bs!1853824 (not (= lambda!395271 lambda!395226))))

(declare-fun bs!1853825 () Bool)

(assert (= bs!1853825 (and d!2167397 b!6938777)))

(assert (=> bs!1853825 (= lambda!395271 lambda!395227)))

(declare-fun bs!1853826 () Bool)

(assert (= bs!1853826 (and d!2167397 d!2167381)))

(assert (=> bs!1853826 (= lambda!395271 lambda!395262)))

(assert (=> bs!1853825 (not (= lambda!395271 lambda!395228))))

(declare-fun bs!1853827 () Bool)

(assert (= bs!1853827 (and d!2167397 b!6938772)))

(assert (=> bs!1853827 (not (= lambda!395271 lambda!395224))))

(assert (=> bs!1853827 (= (and (= lt!2475259 s!14361) (= r2!6280 lt!2475243)) (= lambda!395271 lambda!395223))))

(assert (=> bs!1853824 (= (and (= lt!2475259 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395271 lambda!395225))))

(declare-fun bs!1853829 () Bool)

(assert (= bs!1853829 (and d!2167397 b!6939056)))

(assert (=> bs!1853829 (not (= lambda!395271 lambda!395246))))

(assert (=> d!2167397 true))

(assert (=> d!2167397 true))

(assert (=> d!2167397 true))

(declare-fun lambda!395272 () Int)

(assert (=> bs!1853823 (= (and (= r1!6342 (regOne!34438 lt!2475270)) (= r2!6280 (regTwo!34438 lt!2475270))) (= lambda!395272 lambda!395247))))

(assert (=> bs!1853824 (= (and (= lt!2475259 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395272 lambda!395226))))

(assert (=> bs!1853825 (not (= lambda!395272 lambda!395227))))

(assert (=> bs!1853826 (not (= lambda!395272 lambda!395262))))

(assert (=> bs!1853825 (= lambda!395272 lambda!395228)))

(assert (=> bs!1853827 (= (and (= lt!2475259 s!14361) (= r2!6280 lt!2475243)) (= lambda!395272 lambda!395224))))

(assert (=> bs!1853827 (not (= lambda!395272 lambda!395223))))

(assert (=> bs!1853824 (not (= lambda!395272 lambda!395225))))

(declare-fun bs!1853837 () Bool)

(assert (= bs!1853837 d!2167397))

(assert (=> bs!1853837 (not (= lambda!395272 lambda!395271))))

(assert (=> bs!1853829 (not (= lambda!395272 lambda!395246))))

(assert (=> d!2167397 true))

(assert (=> d!2167397 true))

(assert (=> d!2167397 true))

(assert (=> d!2167397 (= (Exists!3963 lambda!395271) (Exists!3963 lambda!395272))))

(declare-fun lt!2475358 () Unit!160650)

(declare-fun choose!51698 (Regex!16963 Regex!16963 List!66716) Unit!160650)

(assert (=> d!2167397 (= lt!2475358 (choose!51698 r1!6342 r2!6280 lt!2475259))))

(assert (=> d!2167397 (validRegex!8669 r1!6342)))

(assert (=> d!2167397 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2424 r1!6342 r2!6280 lt!2475259) lt!2475358)))

(declare-fun m!7644658 () Bool)

(assert (=> bs!1853837 m!7644658))

(declare-fun m!7644660 () Bool)

(assert (=> bs!1853837 m!7644660))

(declare-fun m!7644662 () Bool)

(assert (=> bs!1853837 m!7644662))

(assert (=> bs!1853837 m!7644222))

(assert (=> b!6938777 d!2167397))

(declare-fun b!6939280 () Bool)

(declare-fun res!2830613 () Bool)

(declare-fun e!4174677 () Bool)

(assert (=> b!6939280 (=> (not res!2830613) (not e!4174677))))

(assert (=> b!6939280 (= res!2830613 (isEmpty!38862 (tail!12960 (_1!37123 lt!2475267))))))

(declare-fun b!6939281 () Bool)

(declare-fun e!4174679 () Bool)

(assert (=> b!6939281 (= e!4174679 (nullable!6780 r2!6280))))

(declare-fun b!6939282 () Bool)

(declare-fun res!2830618 () Bool)

(declare-fun e!4174682 () Bool)

(assert (=> b!6939282 (=> res!2830618 e!4174682)))

(assert (=> b!6939282 (= res!2830618 (not ((_ is ElementMatch!16963) r2!6280)))))

(declare-fun e!4174678 () Bool)

(assert (=> b!6939282 (= e!4174678 e!4174682)))

(declare-fun b!6939283 () Bool)

(declare-fun e!4174676 () Bool)

(assert (=> b!6939283 (= e!4174676 (not (= (head!13908 (_1!37123 lt!2475267)) (c!1287519 r2!6280))))))

(declare-fun b!6939284 () Bool)

(declare-fun e!4174680 () Bool)

(assert (=> b!6939284 (= e!4174680 e!4174678)))

(declare-fun c!1287638 () Bool)

(assert (=> b!6939284 (= c!1287638 ((_ is EmptyLang!16963) r2!6280))))

(declare-fun b!6939285 () Bool)

(declare-fun res!2830620 () Bool)

(assert (=> b!6939285 (=> (not res!2830620) (not e!4174677))))

(declare-fun call!630443 () Bool)

(assert (=> b!6939285 (= res!2830620 (not call!630443))))

(declare-fun b!6939286 () Bool)

(assert (=> b!6939286 (= e!4174679 (matchR!9102 (derivativeStep!5455 r2!6280 (head!13908 (_1!37123 lt!2475267))) (tail!12960 (_1!37123 lt!2475267))))))

(declare-fun b!6939287 () Bool)

(declare-fun lt!2475360 () Bool)

(assert (=> b!6939287 (= e!4174678 (not lt!2475360))))

(declare-fun b!6939288 () Bool)

(declare-fun res!2830619 () Bool)

(assert (=> b!6939288 (=> res!2830619 e!4174676)))

(assert (=> b!6939288 (= res!2830619 (not (isEmpty!38862 (tail!12960 (_1!37123 lt!2475267)))))))

(declare-fun b!6939289 () Bool)

(assert (=> b!6939289 (= e!4174677 (= (head!13908 (_1!37123 lt!2475267)) (c!1287519 r2!6280)))))

(declare-fun b!6939290 () Bool)

(declare-fun e!4174681 () Bool)

(assert (=> b!6939290 (= e!4174682 e!4174681)))

(declare-fun res!2830615 () Bool)

(assert (=> b!6939290 (=> (not res!2830615) (not e!4174681))))

(assert (=> b!6939290 (= res!2830615 (not lt!2475360))))

(declare-fun d!2167421 () Bool)

(assert (=> d!2167421 e!4174680))

(declare-fun c!1287637 () Bool)

(assert (=> d!2167421 (= c!1287637 ((_ is EmptyExpr!16963) r2!6280))))

(assert (=> d!2167421 (= lt!2475360 e!4174679)))

(declare-fun c!1287639 () Bool)

(assert (=> d!2167421 (= c!1287639 (isEmpty!38862 (_1!37123 lt!2475267)))))

(assert (=> d!2167421 (validRegex!8669 r2!6280)))

(assert (=> d!2167421 (= (matchR!9102 r2!6280 (_1!37123 lt!2475267)) lt!2475360)))

(declare-fun b!6939291 () Bool)

(assert (=> b!6939291 (= e!4174681 e!4174676)))

(declare-fun res!2830614 () Bool)

(assert (=> b!6939291 (=> res!2830614 e!4174676)))

(assert (=> b!6939291 (= res!2830614 call!630443)))

(declare-fun b!6939292 () Bool)

(declare-fun res!2830617 () Bool)

(assert (=> b!6939292 (=> res!2830617 e!4174682)))

(assert (=> b!6939292 (= res!2830617 e!4174677)))

(declare-fun res!2830616 () Bool)

(assert (=> b!6939292 (=> (not res!2830616) (not e!4174677))))

(assert (=> b!6939292 (= res!2830616 lt!2475360)))

(declare-fun bm!630438 () Bool)

(assert (=> bm!630438 (= call!630443 (isEmpty!38862 (_1!37123 lt!2475267)))))

(declare-fun b!6939293 () Bool)

(assert (=> b!6939293 (= e!4174680 (= lt!2475360 call!630443))))

(assert (= (and d!2167421 c!1287639) b!6939281))

(assert (= (and d!2167421 (not c!1287639)) b!6939286))

(assert (= (and d!2167421 c!1287637) b!6939293))

(assert (= (and d!2167421 (not c!1287637)) b!6939284))

(assert (= (and b!6939284 c!1287638) b!6939287))

(assert (= (and b!6939284 (not c!1287638)) b!6939282))

(assert (= (and b!6939282 (not res!2830618)) b!6939292))

(assert (= (and b!6939292 res!2830616) b!6939285))

(assert (= (and b!6939285 res!2830620) b!6939280))

(assert (= (and b!6939280 res!2830613) b!6939289))

(assert (= (and b!6939292 (not res!2830617)) b!6939290))

(assert (= (and b!6939290 res!2830615) b!6939291))

(assert (= (and b!6939291 (not res!2830614)) b!6939288))

(assert (= (and b!6939288 (not res!2830619)) b!6939283))

(assert (= (or b!6939293 b!6939285 b!6939291) bm!630438))

(declare-fun m!7644664 () Bool)

(assert (=> b!6939289 m!7644664))

(declare-fun m!7644666 () Bool)

(assert (=> d!2167421 m!7644666))

(assert (=> d!2167421 m!7644226))

(declare-fun m!7644668 () Bool)

(assert (=> b!6939280 m!7644668))

(assert (=> b!6939280 m!7644668))

(declare-fun m!7644670 () Bool)

(assert (=> b!6939280 m!7644670))

(declare-fun m!7644672 () Bool)

(assert (=> b!6939281 m!7644672))

(assert (=> b!6939288 m!7644668))

(assert (=> b!6939288 m!7644668))

(assert (=> b!6939288 m!7644670))

(assert (=> b!6939283 m!7644664))

(assert (=> bm!630438 m!7644666))

(assert (=> b!6939286 m!7644664))

(assert (=> b!6939286 m!7644664))

(declare-fun m!7644674 () Bool)

(assert (=> b!6939286 m!7644674))

(assert (=> b!6939286 m!7644668))

(assert (=> b!6939286 m!7644674))

(assert (=> b!6939286 m!7644668))

(declare-fun m!7644676 () Bool)

(assert (=> b!6939286 m!7644676))

(assert (=> b!6938767 d!2167421))

(declare-fun d!2167423 () Bool)

(assert (=> d!2167423 (= (isDefined!13433 lt!2475266) (not (isEmpty!38863 lt!2475266)))))

(declare-fun bs!1853849 () Bool)

(assert (= bs!1853849 d!2167423))

(declare-fun m!7644678 () Bool)

(assert (=> bs!1853849 m!7644678))

(assert (=> b!6938767 d!2167423))

(declare-fun d!2167425 () Bool)

(assert (=> d!2167425 (= (matchR!9102 lt!2475243 (_2!37123 lt!2475244)) (matchRSpec!4020 lt!2475243 (_2!37123 lt!2475244)))))

(declare-fun lt!2475361 () Unit!160650)

(assert (=> d!2167425 (= lt!2475361 (choose!51696 lt!2475243 (_2!37123 lt!2475244)))))

(assert (=> d!2167425 (validRegex!8669 lt!2475243)))

(assert (=> d!2167425 (= (mainMatchTheorem!4020 lt!2475243 (_2!37123 lt!2475244)) lt!2475361)))

(declare-fun bs!1853851 () Bool)

(assert (= bs!1853851 d!2167425))

(assert (=> bs!1853851 m!7644152))

(assert (=> bs!1853851 m!7644148))

(declare-fun m!7644680 () Bool)

(assert (=> bs!1853851 m!7644680))

(assert (=> bs!1853851 m!7644296))

(assert (=> b!6938767 d!2167425))

(declare-fun bs!1853852 () Bool)

(declare-fun d!2167427 () Bool)

(assert (= bs!1853852 (and d!2167427 b!6939059)))

(declare-fun lambda!395274 () Int)

(assert (=> bs!1853852 (not (= lambda!395274 lambda!395247))))

(declare-fun bs!1853854 () Bool)

(assert (= bs!1853854 (and d!2167427 b!6938767)))

(assert (=> bs!1853854 (not (= lambda!395274 lambda!395226))))

(declare-fun bs!1853856 () Bool)

(assert (= bs!1853856 (and d!2167427 b!6938777)))

(assert (=> bs!1853856 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395274 lambda!395227))))

(declare-fun bs!1853858 () Bool)

(assert (= bs!1853858 (and d!2167427 d!2167381)))

(assert (=> bs!1853858 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395274 lambda!395262))))

(assert (=> bs!1853856 (not (= lambda!395274 lambda!395228))))

(declare-fun bs!1853861 () Bool)

(assert (= bs!1853861 (and d!2167427 b!6938772)))

(assert (=> bs!1853861 (not (= lambda!395274 lambda!395224))))

(assert (=> bs!1853861 (= (and (= (_2!37123 lt!2475244) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475243)) (= lambda!395274 lambda!395223))))

(declare-fun bs!1853864 () Bool)

(assert (= bs!1853864 (and d!2167427 d!2167397)))

(assert (=> bs!1853864 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395274 lambda!395271))))

(declare-fun bs!1853865 () Bool)

(assert (= bs!1853865 (and d!2167427 b!6939056)))

(assert (=> bs!1853865 (not (= lambda!395274 lambda!395246))))

(assert (=> bs!1853864 (not (= lambda!395274 lambda!395272))))

(assert (=> bs!1853854 (= lambda!395274 lambda!395225)))

(assert (=> d!2167427 true))

(assert (=> d!2167427 true))

(assert (=> d!2167427 true))

(assert (=> d!2167427 (= (isDefined!13433 (findConcatSeparation!3146 r2!6280 r3!135 Nil!66592 (_2!37123 lt!2475244) (_2!37123 lt!2475244))) (Exists!3963 lambda!395274))))

(declare-fun lt!2475362 () Unit!160650)

(assert (=> d!2167427 (= lt!2475362 (choose!51695 r2!6280 r3!135 (_2!37123 lt!2475244)))))

(assert (=> d!2167427 (validRegex!8669 r2!6280)))

(assert (=> d!2167427 (= (lemmaFindConcatSeparationEquivalentToExists!2904 r2!6280 r3!135 (_2!37123 lt!2475244)) lt!2475362)))

(declare-fun bs!1853870 () Bool)

(assert (= bs!1853870 d!2167427))

(declare-fun m!7644682 () Bool)

(assert (=> bs!1853870 m!7644682))

(declare-fun m!7644684 () Bool)

(assert (=> bs!1853870 m!7644684))

(assert (=> bs!1853870 m!7644226))

(assert (=> bs!1853870 m!7644136))

(declare-fun m!7644686 () Bool)

(assert (=> bs!1853870 m!7644686))

(assert (=> bs!1853870 m!7644136))

(assert (=> b!6938767 d!2167427))

(declare-fun d!2167429 () Bool)

(assert (=> d!2167429 (= (Exists!3963 lambda!395225) (choose!51693 lambda!395225))))

(declare-fun bs!1853873 () Bool)

(assert (= bs!1853873 d!2167429))

(declare-fun m!7644688 () Bool)

(assert (=> bs!1853873 m!7644688))

(assert (=> b!6938767 d!2167429))

(declare-fun b!6939294 () Bool)

(declare-fun res!2830621 () Bool)

(declare-fun e!4174685 () Bool)

(assert (=> b!6939294 (=> (not res!2830621) (not e!4174685))))

(declare-fun lt!2475364 () Option!16732)

(assert (=> b!6939294 (= res!2830621 (matchR!9102 r2!6280 (_1!37123 (get!23381 lt!2475364))))))

(declare-fun b!6939295 () Bool)

(declare-fun e!4174684 () Bool)

(assert (=> b!6939295 (= e!4174684 (not (isDefined!13433 lt!2475364)))))

(declare-fun d!2167431 () Bool)

(assert (=> d!2167431 e!4174684))

(declare-fun res!2830625 () Bool)

(assert (=> d!2167431 (=> res!2830625 e!4174684)))

(assert (=> d!2167431 (= res!2830625 e!4174685)))

(declare-fun res!2830622 () Bool)

(assert (=> d!2167431 (=> (not res!2830622) (not e!4174685))))

(assert (=> d!2167431 (= res!2830622 (isDefined!13433 lt!2475364))))

(declare-fun e!4174686 () Option!16732)

(assert (=> d!2167431 (= lt!2475364 e!4174686)))

(declare-fun c!1287640 () Bool)

(declare-fun e!4174687 () Bool)

(assert (=> d!2167431 (= c!1287640 e!4174687)))

(declare-fun res!2830623 () Bool)

(assert (=> d!2167431 (=> (not res!2830623) (not e!4174687))))

(assert (=> d!2167431 (= res!2830623 (matchR!9102 r2!6280 Nil!66592))))

(assert (=> d!2167431 (validRegex!8669 r2!6280)))

(assert (=> d!2167431 (= (findConcatSeparation!3146 r2!6280 r3!135 Nil!66592 (_2!37123 lt!2475244) (_2!37123 lt!2475244)) lt!2475364)))

(declare-fun b!6939296 () Bool)

(declare-fun lt!2475363 () Unit!160650)

(declare-fun lt!2475365 () Unit!160650)

(assert (=> b!6939296 (= lt!2475363 lt!2475365)))

(assert (=> b!6939296 (= (++!15002 (++!15002 Nil!66592 (Cons!66592 (h!73040 (_2!37123 lt!2475244)) Nil!66592)) (t!380459 (_2!37123 lt!2475244))) (_2!37123 lt!2475244))))

(assert (=> b!6939296 (= lt!2475365 (lemmaMoveElementToOtherListKeepsConcatEq!2859 Nil!66592 (h!73040 (_2!37123 lt!2475244)) (t!380459 (_2!37123 lt!2475244)) (_2!37123 lt!2475244)))))

(declare-fun e!4174683 () Option!16732)

(assert (=> b!6939296 (= e!4174683 (findConcatSeparation!3146 r2!6280 r3!135 (++!15002 Nil!66592 (Cons!66592 (h!73040 (_2!37123 lt!2475244)) Nil!66592)) (t!380459 (_2!37123 lt!2475244)) (_2!37123 lt!2475244)))))

(declare-fun b!6939297 () Bool)

(assert (=> b!6939297 (= e!4174686 (Some!16731 (tuple2!67641 Nil!66592 (_2!37123 lt!2475244))))))

(declare-fun b!6939298 () Bool)

(declare-fun res!2830624 () Bool)

(assert (=> b!6939298 (=> (not res!2830624) (not e!4174685))))

(assert (=> b!6939298 (= res!2830624 (matchR!9102 r3!135 (_2!37123 (get!23381 lt!2475364))))))

(declare-fun b!6939299 () Bool)

(assert (=> b!6939299 (= e!4174687 (matchR!9102 r3!135 (_2!37123 lt!2475244)))))

(declare-fun b!6939300 () Bool)

(assert (=> b!6939300 (= e!4174685 (= (++!15002 (_1!37123 (get!23381 lt!2475364)) (_2!37123 (get!23381 lt!2475364))) (_2!37123 lt!2475244)))))

(declare-fun b!6939301 () Bool)

(assert (=> b!6939301 (= e!4174683 None!16731)))

(declare-fun b!6939302 () Bool)

(assert (=> b!6939302 (= e!4174686 e!4174683)))

(declare-fun c!1287641 () Bool)

(assert (=> b!6939302 (= c!1287641 ((_ is Nil!66592) (_2!37123 lt!2475244)))))

(assert (= (and d!2167431 res!2830623) b!6939299))

(assert (= (and d!2167431 c!1287640) b!6939297))

(assert (= (and d!2167431 (not c!1287640)) b!6939302))

(assert (= (and b!6939302 c!1287641) b!6939301))

(assert (= (and b!6939302 (not c!1287641)) b!6939296))

(assert (= (and d!2167431 res!2830622) b!6939294))

(assert (= (and b!6939294 res!2830621) b!6939298))

(assert (= (and b!6939298 res!2830624) b!6939300))

(assert (= (and d!2167431 (not res!2830625)) b!6939295))

(declare-fun m!7644690 () Bool)

(assert (=> b!6939298 m!7644690))

(declare-fun m!7644692 () Bool)

(assert (=> b!6939298 m!7644692))

(declare-fun m!7644694 () Bool)

(assert (=> b!6939295 m!7644694))

(declare-fun m!7644696 () Bool)

(assert (=> b!6939296 m!7644696))

(assert (=> b!6939296 m!7644696))

(declare-fun m!7644698 () Bool)

(assert (=> b!6939296 m!7644698))

(declare-fun m!7644700 () Bool)

(assert (=> b!6939296 m!7644700))

(assert (=> b!6939296 m!7644696))

(declare-fun m!7644702 () Bool)

(assert (=> b!6939296 m!7644702))

(assert (=> b!6939294 m!7644690))

(declare-fun m!7644704 () Bool)

(assert (=> b!6939294 m!7644704))

(assert (=> d!2167431 m!7644694))

(declare-fun m!7644706 () Bool)

(assert (=> d!2167431 m!7644706))

(assert (=> d!2167431 m!7644226))

(assert (=> b!6939300 m!7644690))

(declare-fun m!7644709 () Bool)

(assert (=> b!6939300 m!7644709))

(declare-fun m!7644712 () Bool)

(assert (=> b!6939299 m!7644712))

(assert (=> b!6938767 d!2167431))

(declare-fun bs!1853882 () Bool)

(declare-fun b!6939310 () Bool)

(assert (= bs!1853882 (and b!6939310 b!6939059)))

(declare-fun lambda!395276 () Int)

(assert (=> bs!1853882 (not (= lambda!395276 lambda!395247))))

(declare-fun bs!1853883 () Bool)

(assert (= bs!1853883 (and b!6939310 b!6938767)))

(assert (=> bs!1853883 (not (= lambda!395276 lambda!395226))))

(declare-fun bs!1853884 () Bool)

(assert (= bs!1853884 (and b!6939310 b!6938777)))

(assert (=> bs!1853884 (not (= lambda!395276 lambda!395227))))

(declare-fun bs!1853885 () Bool)

(assert (= bs!1853885 (and b!6939310 d!2167381)))

(assert (=> bs!1853885 (not (= lambda!395276 lambda!395262))))

(assert (=> bs!1853884 (not (= lambda!395276 lambda!395228))))

(declare-fun bs!1853886 () Bool)

(assert (= bs!1853886 (and b!6939310 b!6938772)))

(assert (=> bs!1853886 (not (= lambda!395276 lambda!395224))))

(assert (=> bs!1853886 (not (= lambda!395276 lambda!395223))))

(declare-fun bs!1853887 () Bool)

(assert (= bs!1853887 (and b!6939310 d!2167427)))

(assert (=> bs!1853887 (not (= lambda!395276 lambda!395274))))

(declare-fun bs!1853888 () Bool)

(assert (= bs!1853888 (and b!6939310 d!2167397)))

(assert (=> bs!1853888 (not (= lambda!395276 lambda!395271))))

(declare-fun bs!1853889 () Bool)

(assert (= bs!1853889 (and b!6939310 b!6939056)))

(assert (=> bs!1853889 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= (reg!17292 lt!2475243) (reg!17292 lt!2475270)) (= lt!2475243 lt!2475270)) (= lambda!395276 lambda!395246))))

(assert (=> bs!1853888 (not (= lambda!395276 lambda!395272))))

(assert (=> bs!1853883 (not (= lambda!395276 lambda!395225))))

(assert (=> b!6939310 true))

(assert (=> b!6939310 true))

(declare-fun bs!1853896 () Bool)

(declare-fun b!6939313 () Bool)

(assert (= bs!1853896 (and b!6939313 b!6939310)))

(declare-fun lambda!395278 () Int)

(assert (=> bs!1853896 (not (= lambda!395278 lambda!395276))))

(declare-fun bs!1853898 () Bool)

(assert (= bs!1853898 (and b!6939313 b!6939059)))

(assert (=> bs!1853898 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= (regOne!34438 lt!2475243) (regOne!34438 lt!2475270)) (= (regTwo!34438 lt!2475243) (regTwo!34438 lt!2475270))) (= lambda!395278 lambda!395247))))

(declare-fun bs!1853899 () Bool)

(assert (= bs!1853899 (and b!6939313 b!6938767)))

(assert (=> bs!1853899 (= (and (= (regOne!34438 lt!2475243) r2!6280) (= (regTwo!34438 lt!2475243) r3!135)) (= lambda!395278 lambda!395226))))

(declare-fun bs!1853901 () Bool)

(assert (= bs!1853901 (and b!6939313 b!6938777)))

(assert (=> bs!1853901 (not (= lambda!395278 lambda!395227))))

(declare-fun bs!1853903 () Bool)

(assert (= bs!1853903 (and b!6939313 d!2167381)))

(assert (=> bs!1853903 (not (= lambda!395278 lambda!395262))))

(assert (=> bs!1853901 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= (regOne!34438 lt!2475243) r1!6342) (= (regTwo!34438 lt!2475243) r2!6280)) (= lambda!395278 lambda!395228))))

(declare-fun bs!1853906 () Bool)

(assert (= bs!1853906 (and b!6939313 b!6938772)))

(assert (=> bs!1853906 (= (and (= (_2!37123 lt!2475244) s!14361) (= (regOne!34438 lt!2475243) r1!6342) (= (regTwo!34438 lt!2475243) lt!2475243)) (= lambda!395278 lambda!395224))))

(assert (=> bs!1853906 (not (= lambda!395278 lambda!395223))))

(declare-fun bs!1853907 () Bool)

(assert (= bs!1853907 (and b!6939313 d!2167427)))

(assert (=> bs!1853907 (not (= lambda!395278 lambda!395274))))

(declare-fun bs!1853909 () Bool)

(assert (= bs!1853909 (and b!6939313 d!2167397)))

(assert (=> bs!1853909 (not (= lambda!395278 lambda!395271))))

(declare-fun bs!1853911 () Bool)

(assert (= bs!1853911 (and b!6939313 b!6939056)))

(assert (=> bs!1853911 (not (= lambda!395278 lambda!395246))))

(assert (=> bs!1853909 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= (regOne!34438 lt!2475243) r1!6342) (= (regTwo!34438 lt!2475243) r2!6280)) (= lambda!395278 lambda!395272))))

(assert (=> bs!1853899 (not (= lambda!395278 lambda!395225))))

(assert (=> b!6939313 true))

(assert (=> b!6939313 true))

(declare-fun bm!630439 () Bool)

(declare-fun call!630444 () Bool)

(assert (=> bm!630439 (= call!630444 (isEmpty!38862 (_2!37123 lt!2475244)))))

(declare-fun b!6939303 () Bool)

(declare-fun res!2830628 () Bool)

(declare-fun e!4174689 () Bool)

(assert (=> b!6939303 (=> res!2830628 e!4174689)))

(assert (=> b!6939303 (= res!2830628 call!630444)))

(declare-fun e!4174692 () Bool)

(assert (=> b!6939303 (= e!4174692 e!4174689)))

(declare-fun b!6939304 () Bool)

(declare-fun e!4174693 () Bool)

(declare-fun e!4174694 () Bool)

(assert (=> b!6939304 (= e!4174693 e!4174694)))

(declare-fun res!2830627 () Bool)

(assert (=> b!6939304 (= res!2830627 (matchRSpec!4020 (regOne!34439 lt!2475243) (_2!37123 lt!2475244)))))

(assert (=> b!6939304 (=> res!2830627 e!4174694)))

(declare-fun b!6939305 () Bool)

(assert (=> b!6939305 (= e!4174694 (matchRSpec!4020 (regTwo!34439 lt!2475243) (_2!37123 lt!2475244)))))

(declare-fun c!1287642 () Bool)

(declare-fun call!630445 () Bool)

(declare-fun bm!630440 () Bool)

(assert (=> bm!630440 (= call!630445 (Exists!3963 (ite c!1287642 lambda!395276 lambda!395278)))))

(declare-fun b!6939306 () Bool)

(declare-fun e!4174691 () Bool)

(assert (=> b!6939306 (= e!4174691 call!630444)))

(declare-fun b!6939308 () Bool)

(declare-fun c!1287643 () Bool)

(assert (=> b!6939308 (= c!1287643 ((_ is ElementMatch!16963) lt!2475243))))

(declare-fun e!4174688 () Bool)

(declare-fun e!4174690 () Bool)

(assert (=> b!6939308 (= e!4174688 e!4174690)))

(declare-fun b!6939309 () Bool)

(assert (=> b!6939309 (= e!4174690 (= (_2!37123 lt!2475244) (Cons!66592 (c!1287519 lt!2475243) Nil!66592)))))

(assert (=> b!6939310 (= e!4174689 call!630445)))

(declare-fun b!6939311 () Bool)

(declare-fun c!1287645 () Bool)

(assert (=> b!6939311 (= c!1287645 ((_ is Union!16963) lt!2475243))))

(assert (=> b!6939311 (= e!4174690 e!4174693)))

(declare-fun b!6939312 () Bool)

(assert (=> b!6939312 (= e!4174691 e!4174688)))

(declare-fun res!2830626 () Bool)

(assert (=> b!6939312 (= res!2830626 (not ((_ is EmptyLang!16963) lt!2475243)))))

(assert (=> b!6939312 (=> (not res!2830626) (not e!4174688))))

(assert (=> b!6939313 (= e!4174692 call!630445)))

(declare-fun b!6939307 () Bool)

(assert (=> b!6939307 (= e!4174693 e!4174692)))

(assert (=> b!6939307 (= c!1287642 ((_ is Star!16963) lt!2475243))))

(declare-fun d!2167433 () Bool)

(declare-fun c!1287644 () Bool)

(assert (=> d!2167433 (= c!1287644 ((_ is EmptyExpr!16963) lt!2475243))))

(assert (=> d!2167433 (= (matchRSpec!4020 lt!2475243 (_2!37123 lt!2475244)) e!4174691)))

(assert (= (and d!2167433 c!1287644) b!6939306))

(assert (= (and d!2167433 (not c!1287644)) b!6939312))

(assert (= (and b!6939312 res!2830626) b!6939308))

(assert (= (and b!6939308 c!1287643) b!6939309))

(assert (= (and b!6939308 (not c!1287643)) b!6939311))

(assert (= (and b!6939311 c!1287645) b!6939304))

(assert (= (and b!6939311 (not c!1287645)) b!6939307))

(assert (= (and b!6939304 (not res!2830627)) b!6939305))

(assert (= (and b!6939307 c!1287642) b!6939303))

(assert (= (and b!6939307 (not c!1287642)) b!6939313))

(assert (= (and b!6939303 (not res!2830628)) b!6939310))

(assert (= (or b!6939310 b!6939313) bm!630440))

(assert (= (or b!6939306 b!6939303) bm!630439))

(assert (=> bm!630439 m!7644294))

(declare-fun m!7644736 () Bool)

(assert (=> b!6939304 m!7644736))

(declare-fun m!7644738 () Bool)

(assert (=> b!6939305 m!7644738))

(declare-fun m!7644740 () Bool)

(assert (=> bm!630440 m!7644740))

(assert (=> b!6938767 d!2167433))

(declare-fun d!2167441 () Bool)

(assert (=> d!2167441 (= (get!23381 lt!2475266) (v!53003 lt!2475266))))

(assert (=> b!6938767 d!2167441))

(declare-fun bs!1853921 () Bool)

(declare-fun d!2167443 () Bool)

(assert (= bs!1853921 (and d!2167443 b!6939310)))

(declare-fun lambda!395280 () Int)

(assert (=> bs!1853921 (not (= lambda!395280 lambda!395276))))

(declare-fun bs!1853923 () Bool)

(assert (= bs!1853923 (and d!2167443 b!6939059)))

(assert (=> bs!1853923 (not (= lambda!395280 lambda!395247))))

(declare-fun bs!1853925 () Bool)

(assert (= bs!1853925 (and d!2167443 b!6938767)))

(assert (=> bs!1853925 (not (= lambda!395280 lambda!395226))))

(declare-fun bs!1853927 () Bool)

(assert (= bs!1853927 (and d!2167443 b!6938777)))

(assert (=> bs!1853927 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395280 lambda!395227))))

(declare-fun bs!1853929 () Bool)

(assert (= bs!1853929 (and d!2167443 d!2167381)))

(assert (=> bs!1853929 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395280 lambda!395262))))

(declare-fun bs!1853931 () Bool)

(assert (= bs!1853931 (and d!2167443 b!6938772)))

(assert (=> bs!1853931 (not (= lambda!395280 lambda!395224))))

(assert (=> bs!1853931 (= (and (= (_2!37123 lt!2475244) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475243)) (= lambda!395280 lambda!395223))))

(declare-fun bs!1853933 () Bool)

(assert (= bs!1853933 (and d!2167443 d!2167427)))

(assert (=> bs!1853933 (= lambda!395280 lambda!395274)))

(declare-fun bs!1853935 () Bool)

(assert (= bs!1853935 (and d!2167443 d!2167397)))

(assert (=> bs!1853935 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395280 lambda!395271))))

(declare-fun bs!1853937 () Bool)

(assert (= bs!1853937 (and d!2167443 b!6939056)))

(assert (=> bs!1853937 (not (= lambda!395280 lambda!395246))))

(assert (=> bs!1853927 (not (= lambda!395280 lambda!395228))))

(declare-fun bs!1853940 () Bool)

(assert (= bs!1853940 (and d!2167443 b!6939313)))

(assert (=> bs!1853940 (not (= lambda!395280 lambda!395278))))

(assert (=> bs!1853935 (not (= lambda!395280 lambda!395272))))

(assert (=> bs!1853925 (= lambda!395280 lambda!395225)))

(assert (=> d!2167443 true))

(assert (=> d!2167443 true))

(assert (=> d!2167443 true))

(declare-fun lambda!395281 () Int)

(assert (=> bs!1853921 (not (= lambda!395281 lambda!395276))))

(assert (=> bs!1853923 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= r2!6280 (regOne!34438 lt!2475270)) (= r3!135 (regTwo!34438 lt!2475270))) (= lambda!395281 lambda!395247))))

(assert (=> bs!1853925 (= lambda!395281 lambda!395226)))

(assert (=> bs!1853927 (not (= lambda!395281 lambda!395227))))

(assert (=> bs!1853931 (= (and (= (_2!37123 lt!2475244) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475243)) (= lambda!395281 lambda!395224))))

(assert (=> bs!1853931 (not (= lambda!395281 lambda!395223))))

(assert (=> bs!1853933 (not (= lambda!395281 lambda!395274))))

(assert (=> bs!1853935 (not (= lambda!395281 lambda!395271))))

(assert (=> bs!1853937 (not (= lambda!395281 lambda!395246))))

(declare-fun bs!1853952 () Bool)

(assert (= bs!1853952 d!2167443))

(assert (=> bs!1853952 (not (= lambda!395281 lambda!395280))))

(assert (=> bs!1853929 (not (= lambda!395281 lambda!395262))))

(assert (=> bs!1853927 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395281 lambda!395228))))

(assert (=> bs!1853940 (= (and (= r2!6280 (regOne!34438 lt!2475243)) (= r3!135 (regTwo!34438 lt!2475243))) (= lambda!395281 lambda!395278))))

(assert (=> bs!1853935 (= (and (= (_2!37123 lt!2475244) lt!2475259) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395281 lambda!395272))))

(assert (=> bs!1853925 (not (= lambda!395281 lambda!395225))))

(assert (=> d!2167443 true))

(assert (=> d!2167443 true))

(assert (=> d!2167443 true))

(assert (=> d!2167443 (= (Exists!3963 lambda!395280) (Exists!3963 lambda!395281))))

(declare-fun lt!2475368 () Unit!160650)

(assert (=> d!2167443 (= lt!2475368 (choose!51698 r2!6280 r3!135 (_2!37123 lt!2475244)))))

(assert (=> d!2167443 (validRegex!8669 r2!6280)))

(assert (=> d!2167443 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2424 r2!6280 r3!135 (_2!37123 lt!2475244)) lt!2475368)))

(declare-fun m!7644748 () Bool)

(assert (=> bs!1853952 m!7644748))

(declare-fun m!7644750 () Bool)

(assert (=> bs!1853952 m!7644750))

(declare-fun m!7644752 () Bool)

(assert (=> bs!1853952 m!7644752))

(assert (=> bs!1853952 m!7644226))

(assert (=> b!6938767 d!2167443))

(declare-fun d!2167447 () Bool)

(assert (=> d!2167447 (= (Exists!3963 lambda!395226) (choose!51693 lambda!395226))))

(declare-fun bs!1853953 () Bool)

(assert (= bs!1853953 d!2167447))

(declare-fun m!7644754 () Bool)

(assert (=> bs!1853953 m!7644754))

(assert (=> b!6938767 d!2167447))

(declare-fun d!2167449 () Bool)

(assert (=> d!2167449 (= (isDefined!13433 lt!2475249) (not (isEmpty!38863 lt!2475249)))))

(declare-fun bs!1853954 () Bool)

(assert (= bs!1853954 d!2167449))

(declare-fun m!7644756 () Bool)

(assert (=> bs!1853954 m!7644756))

(assert (=> b!6938776 d!2167449))

(declare-fun b!6939353 () Bool)

(declare-fun res!2830648 () Bool)

(declare-fun e!4174718 () Bool)

(assert (=> b!6939353 (=> (not res!2830648) (not e!4174718))))

(declare-fun lt!2475371 () Option!16732)

(assert (=> b!6939353 (= res!2830648 (matchR!9102 r1!6342 (_1!37123 (get!23381 lt!2475371))))))

(declare-fun b!6939354 () Bool)

(declare-fun e!4174717 () Bool)

(assert (=> b!6939354 (= e!4174717 (not (isDefined!13433 lt!2475371)))))

(declare-fun d!2167451 () Bool)

(assert (=> d!2167451 e!4174717))

(declare-fun res!2830652 () Bool)

(assert (=> d!2167451 (=> res!2830652 e!4174717)))

(assert (=> d!2167451 (= res!2830652 e!4174718)))

(declare-fun res!2830649 () Bool)

(assert (=> d!2167451 (=> (not res!2830649) (not e!4174718))))

(assert (=> d!2167451 (= res!2830649 (isDefined!13433 lt!2475371))))

(declare-fun e!4174719 () Option!16732)

(assert (=> d!2167451 (= lt!2475371 e!4174719)))

(declare-fun c!1287656 () Bool)

(declare-fun e!4174720 () Bool)

(assert (=> d!2167451 (= c!1287656 e!4174720)))

(declare-fun res!2830650 () Bool)

(assert (=> d!2167451 (=> (not res!2830650) (not e!4174720))))

(assert (=> d!2167451 (= res!2830650 (matchR!9102 r1!6342 Nil!66592))))

(assert (=> d!2167451 (validRegex!8669 r1!6342)))

(assert (=> d!2167451 (= (findConcatSeparation!3146 r1!6342 lt!2475243 Nil!66592 s!14361 s!14361) lt!2475371)))

(declare-fun b!6939355 () Bool)

(declare-fun lt!2475370 () Unit!160650)

(declare-fun lt!2475372 () Unit!160650)

(assert (=> b!6939355 (= lt!2475370 lt!2475372)))

(assert (=> b!6939355 (= (++!15002 (++!15002 Nil!66592 (Cons!66592 (h!73040 s!14361) Nil!66592)) (t!380459 s!14361)) s!14361)))

(assert (=> b!6939355 (= lt!2475372 (lemmaMoveElementToOtherListKeepsConcatEq!2859 Nil!66592 (h!73040 s!14361) (t!380459 s!14361) s!14361))))

(declare-fun e!4174716 () Option!16732)

(assert (=> b!6939355 (= e!4174716 (findConcatSeparation!3146 r1!6342 lt!2475243 (++!15002 Nil!66592 (Cons!66592 (h!73040 s!14361) Nil!66592)) (t!380459 s!14361) s!14361))))

(declare-fun b!6939356 () Bool)

(assert (=> b!6939356 (= e!4174719 (Some!16731 (tuple2!67641 Nil!66592 s!14361)))))

(declare-fun b!6939357 () Bool)

(declare-fun res!2830651 () Bool)

(assert (=> b!6939357 (=> (not res!2830651) (not e!4174718))))

(assert (=> b!6939357 (= res!2830651 (matchR!9102 lt!2475243 (_2!37123 (get!23381 lt!2475371))))))

(declare-fun b!6939358 () Bool)

(assert (=> b!6939358 (= e!4174720 (matchR!9102 lt!2475243 s!14361))))

(declare-fun b!6939359 () Bool)

(assert (=> b!6939359 (= e!4174718 (= (++!15002 (_1!37123 (get!23381 lt!2475371)) (_2!37123 (get!23381 lt!2475371))) s!14361))))

(declare-fun b!6939360 () Bool)

(assert (=> b!6939360 (= e!4174716 None!16731)))

(declare-fun b!6939361 () Bool)

(assert (=> b!6939361 (= e!4174719 e!4174716)))

(declare-fun c!1287657 () Bool)

(assert (=> b!6939361 (= c!1287657 ((_ is Nil!66592) s!14361))))

(assert (= (and d!2167451 res!2830650) b!6939358))

(assert (= (and d!2167451 c!1287656) b!6939356))

(assert (= (and d!2167451 (not c!1287656)) b!6939361))

(assert (= (and b!6939361 c!1287657) b!6939360))

(assert (= (and b!6939361 (not c!1287657)) b!6939355))

(assert (= (and d!2167451 res!2830649) b!6939353))

(assert (= (and b!6939353 res!2830648) b!6939357))

(assert (= (and b!6939357 res!2830651) b!6939359))

(assert (= (and d!2167451 (not res!2830652)) b!6939354))

(declare-fun m!7644764 () Bool)

(assert (=> b!6939357 m!7644764))

(declare-fun m!7644766 () Bool)

(assert (=> b!6939357 m!7644766))

(declare-fun m!7644768 () Bool)

(assert (=> b!6939354 m!7644768))

(declare-fun m!7644770 () Bool)

(assert (=> b!6939355 m!7644770))

(assert (=> b!6939355 m!7644770))

(declare-fun m!7644772 () Bool)

(assert (=> b!6939355 m!7644772))

(declare-fun m!7644774 () Bool)

(assert (=> b!6939355 m!7644774))

(assert (=> b!6939355 m!7644770))

(declare-fun m!7644776 () Bool)

(assert (=> b!6939355 m!7644776))

(assert (=> b!6939353 m!7644764))

(declare-fun m!7644778 () Bool)

(assert (=> b!6939353 m!7644778))

(assert (=> d!2167451 m!7644768))

(assert (=> d!2167451 m!7644536))

(assert (=> d!2167451 m!7644222))

(assert (=> b!6939359 m!7644764))

(declare-fun m!7644780 () Bool)

(assert (=> b!6939359 m!7644780))

(declare-fun m!7644782 () Bool)

(assert (=> b!6939358 m!7644782))

(assert (=> b!6938776 d!2167451))

(declare-fun bm!630451 () Bool)

(declare-fun call!630457 () Bool)

(declare-fun c!1287663 () Bool)

(declare-fun c!1287662 () Bool)

(assert (=> bm!630451 (= call!630457 (validRegex!8669 (ite c!1287662 (reg!17292 r3!135) (ite c!1287663 (regOne!34439 r3!135) (regTwo!34438 r3!135)))))))

(declare-fun b!6939455 () Bool)

(declare-fun e!4174761 () Bool)

(assert (=> b!6939455 (= e!4174761 call!630457)))

(declare-fun b!6939456 () Bool)

(declare-fun e!4174757 () Bool)

(assert (=> b!6939456 (= e!4174757 e!4174761)))

(declare-fun res!2830663 () Bool)

(assert (=> b!6939456 (= res!2830663 (not (nullable!6780 (reg!17292 r3!135))))))

(assert (=> b!6939456 (=> (not res!2830663) (not e!4174761))))

(declare-fun bm!630452 () Bool)

(declare-fun call!630456 () Bool)

(assert (=> bm!630452 (= call!630456 call!630457)))

(declare-fun bm!630453 () Bool)

(declare-fun call!630458 () Bool)

(assert (=> bm!630453 (= call!630458 (validRegex!8669 (ite c!1287663 (regTwo!34439 r3!135) (regOne!34438 r3!135))))))

(declare-fun b!6939457 () Bool)

(declare-fun e!4174755 () Bool)

(assert (=> b!6939457 (= e!4174755 call!630456)))

(declare-fun b!6939458 () Bool)

(declare-fun e!4174758 () Bool)

(assert (=> b!6939458 (= e!4174758 e!4174757)))

(assert (=> b!6939458 (= c!1287662 ((_ is Star!16963) r3!135))))

(declare-fun d!2167453 () Bool)

(declare-fun res!2830666 () Bool)

(assert (=> d!2167453 (=> res!2830666 e!4174758)))

(assert (=> d!2167453 (= res!2830666 ((_ is ElementMatch!16963) r3!135))))

(assert (=> d!2167453 (= (validRegex!8669 r3!135) e!4174758)))

(declare-fun b!6939459 () Bool)

(declare-fun res!2830665 () Bool)

(declare-fun e!4174756 () Bool)

(assert (=> b!6939459 (=> res!2830665 e!4174756)))

(assert (=> b!6939459 (= res!2830665 (not ((_ is Concat!25808) r3!135)))))

(declare-fun e!4174760 () Bool)

(assert (=> b!6939459 (= e!4174760 e!4174756)))

(declare-fun b!6939460 () Bool)

(assert (=> b!6939460 (= e!4174757 e!4174760)))

(assert (=> b!6939460 (= c!1287663 ((_ is Union!16963) r3!135))))

(declare-fun b!6939461 () Bool)

(assert (=> b!6939461 (= e!4174756 e!4174755)))

(declare-fun res!2830664 () Bool)

(assert (=> b!6939461 (=> (not res!2830664) (not e!4174755))))

(assert (=> b!6939461 (= res!2830664 call!630458)))

(declare-fun b!6939462 () Bool)

(declare-fun res!2830667 () Bool)

(declare-fun e!4174759 () Bool)

(assert (=> b!6939462 (=> (not res!2830667) (not e!4174759))))

(assert (=> b!6939462 (= res!2830667 call!630456)))

(assert (=> b!6939462 (= e!4174760 e!4174759)))

(declare-fun b!6939463 () Bool)

(assert (=> b!6939463 (= e!4174759 call!630458)))

(assert (= (and d!2167453 (not res!2830666)) b!6939458))

(assert (= (and b!6939458 c!1287662) b!6939456))

(assert (= (and b!6939458 (not c!1287662)) b!6939460))

(assert (= (and b!6939456 res!2830663) b!6939455))

(assert (= (and b!6939460 c!1287663) b!6939462))

(assert (= (and b!6939460 (not c!1287663)) b!6939459))

(assert (= (and b!6939462 res!2830667) b!6939463))

(assert (= (and b!6939459 (not res!2830665)) b!6939461))

(assert (= (and b!6939461 res!2830664) b!6939457))

(assert (= (or b!6939462 b!6939457) bm!630452))

(assert (= (or b!6939463 b!6939461) bm!630453))

(assert (= (or b!6939455 bm!630452) bm!630451))

(declare-fun m!7644784 () Bool)

(assert (=> bm!630451 m!7644784))

(declare-fun m!7644786 () Bool)

(assert (=> b!6939456 m!7644786))

(declare-fun m!7644788 () Bool)

(assert (=> bm!630453 m!7644788))

(assert (=> b!6938765 d!2167453))

(declare-fun bs!1853955 () Bool)

(declare-fun b!6939471 () Bool)

(assert (= bs!1853955 (and b!6939471 b!6939310)))

(declare-fun lambda!395282 () Int)

(assert (=> bs!1853955 (= (and (= (_1!37123 lt!2475267) (_2!37123 lt!2475244)) (= (reg!17292 r2!6280) (reg!17292 lt!2475243)) (= r2!6280 lt!2475243)) (= lambda!395282 lambda!395276))))

(declare-fun bs!1853956 () Bool)

(assert (= bs!1853956 (and b!6939471 b!6939059)))

(assert (=> bs!1853956 (not (= lambda!395282 lambda!395247))))

(declare-fun bs!1853957 () Bool)

(assert (= bs!1853957 (and b!6939471 b!6938767)))

(assert (=> bs!1853957 (not (= lambda!395282 lambda!395226))))

(declare-fun bs!1853958 () Bool)

(assert (= bs!1853958 (and b!6939471 b!6938777)))

(assert (=> bs!1853958 (not (= lambda!395282 lambda!395227))))

(declare-fun bs!1853959 () Bool)

(assert (= bs!1853959 (and b!6939471 b!6938772)))

(assert (=> bs!1853959 (not (= lambda!395282 lambda!395224))))

(assert (=> bs!1853959 (not (= lambda!395282 lambda!395223))))

(declare-fun bs!1853960 () Bool)

(assert (= bs!1853960 (and b!6939471 d!2167427)))

(assert (=> bs!1853960 (not (= lambda!395282 lambda!395274))))

(declare-fun bs!1853961 () Bool)

(assert (= bs!1853961 (and b!6939471 d!2167397)))

(assert (=> bs!1853961 (not (= lambda!395282 lambda!395271))))

(declare-fun bs!1853962 () Bool)

(assert (= bs!1853962 (and b!6939471 b!6939056)))

(assert (=> bs!1853962 (= (and (= (_1!37123 lt!2475267) lt!2475259) (= (reg!17292 r2!6280) (reg!17292 lt!2475270)) (= r2!6280 lt!2475270)) (= lambda!395282 lambda!395246))))

(declare-fun bs!1853963 () Bool)

(assert (= bs!1853963 (and b!6939471 d!2167443)))

(assert (=> bs!1853963 (not (= lambda!395282 lambda!395280))))

(assert (=> bs!1853963 (not (= lambda!395282 lambda!395281))))

(declare-fun bs!1853964 () Bool)

(assert (= bs!1853964 (and b!6939471 d!2167381)))

(assert (=> bs!1853964 (not (= lambda!395282 lambda!395262))))

(assert (=> bs!1853958 (not (= lambda!395282 lambda!395228))))

(declare-fun bs!1853965 () Bool)

(assert (= bs!1853965 (and b!6939471 b!6939313)))

(assert (=> bs!1853965 (not (= lambda!395282 lambda!395278))))

(assert (=> bs!1853961 (not (= lambda!395282 lambda!395272))))

(assert (=> bs!1853957 (not (= lambda!395282 lambda!395225))))

(assert (=> b!6939471 true))

(assert (=> b!6939471 true))

(declare-fun bs!1853966 () Bool)

(declare-fun b!6939474 () Bool)

(assert (= bs!1853966 (and b!6939474 b!6939310)))

(declare-fun lambda!395283 () Int)

(assert (=> bs!1853966 (not (= lambda!395283 lambda!395276))))

(declare-fun bs!1853967 () Bool)

(assert (= bs!1853967 (and b!6939474 b!6939059)))

(assert (=> bs!1853967 (= (and (= (_1!37123 lt!2475267) lt!2475259) (= (regOne!34438 r2!6280) (regOne!34438 lt!2475270)) (= (regTwo!34438 r2!6280) (regTwo!34438 lt!2475270))) (= lambda!395283 lambda!395247))))

(declare-fun bs!1853968 () Bool)

(assert (= bs!1853968 (and b!6939474 b!6938767)))

(assert (=> bs!1853968 (= (and (= (_1!37123 lt!2475267) (_2!37123 lt!2475244)) (= (regOne!34438 r2!6280) r2!6280) (= (regTwo!34438 r2!6280) r3!135)) (= lambda!395283 lambda!395226))))

(declare-fun bs!1853969 () Bool)

(assert (= bs!1853969 (and b!6939474 b!6938777)))

(assert (=> bs!1853969 (not (= lambda!395283 lambda!395227))))

(declare-fun bs!1853970 () Bool)

(assert (= bs!1853970 (and b!6939474 b!6938772)))

(assert (=> bs!1853970 (= (and (= (_1!37123 lt!2475267) s!14361) (= (regOne!34438 r2!6280) r1!6342) (= (regTwo!34438 r2!6280) lt!2475243)) (= lambda!395283 lambda!395224))))

(assert (=> bs!1853970 (not (= lambda!395283 lambda!395223))))

(declare-fun bs!1853971 () Bool)

(assert (= bs!1853971 (and b!6939474 d!2167427)))

(assert (=> bs!1853971 (not (= lambda!395283 lambda!395274))))

(declare-fun bs!1853972 () Bool)

(assert (= bs!1853972 (and b!6939474 d!2167397)))

(assert (=> bs!1853972 (not (= lambda!395283 lambda!395271))))

(declare-fun bs!1853973 () Bool)

(assert (= bs!1853973 (and b!6939474 b!6939056)))

(assert (=> bs!1853973 (not (= lambda!395283 lambda!395246))))

(declare-fun bs!1853974 () Bool)

(assert (= bs!1853974 (and b!6939474 b!6939471)))

(assert (=> bs!1853974 (not (= lambda!395283 lambda!395282))))

(declare-fun bs!1853975 () Bool)

(assert (= bs!1853975 (and b!6939474 d!2167443)))

(assert (=> bs!1853975 (not (= lambda!395283 lambda!395280))))

(assert (=> bs!1853975 (= (and (= (_1!37123 lt!2475267) (_2!37123 lt!2475244)) (= (regOne!34438 r2!6280) r2!6280) (= (regTwo!34438 r2!6280) r3!135)) (= lambda!395283 lambda!395281))))

(declare-fun bs!1853976 () Bool)

(assert (= bs!1853976 (and b!6939474 d!2167381)))

(assert (=> bs!1853976 (not (= lambda!395283 lambda!395262))))

(assert (=> bs!1853969 (= (and (= (_1!37123 lt!2475267) lt!2475259) (= (regOne!34438 r2!6280) r1!6342) (= (regTwo!34438 r2!6280) r2!6280)) (= lambda!395283 lambda!395228))))

(declare-fun bs!1853977 () Bool)

(assert (= bs!1853977 (and b!6939474 b!6939313)))

(assert (=> bs!1853977 (= (and (= (_1!37123 lt!2475267) (_2!37123 lt!2475244)) (= (regOne!34438 r2!6280) (regOne!34438 lt!2475243)) (= (regTwo!34438 r2!6280) (regTwo!34438 lt!2475243))) (= lambda!395283 lambda!395278))))

(assert (=> bs!1853972 (= (and (= (_1!37123 lt!2475267) lt!2475259) (= (regOne!34438 r2!6280) r1!6342) (= (regTwo!34438 r2!6280) r2!6280)) (= lambda!395283 lambda!395272))))

(assert (=> bs!1853968 (not (= lambda!395283 lambda!395225))))

(assert (=> b!6939474 true))

(assert (=> b!6939474 true))

(declare-fun bm!630454 () Bool)

(declare-fun call!630459 () Bool)

(assert (=> bm!630454 (= call!630459 (isEmpty!38862 (_1!37123 lt!2475267)))))

(declare-fun b!6939464 () Bool)

(declare-fun res!2830670 () Bool)

(declare-fun e!4174763 () Bool)

(assert (=> b!6939464 (=> res!2830670 e!4174763)))

(assert (=> b!6939464 (= res!2830670 call!630459)))

(declare-fun e!4174766 () Bool)

(assert (=> b!6939464 (= e!4174766 e!4174763)))

(declare-fun b!6939465 () Bool)

(declare-fun e!4174767 () Bool)

(declare-fun e!4174768 () Bool)

(assert (=> b!6939465 (= e!4174767 e!4174768)))

(declare-fun res!2830669 () Bool)

(assert (=> b!6939465 (= res!2830669 (matchRSpec!4020 (regOne!34439 r2!6280) (_1!37123 lt!2475267)))))

(assert (=> b!6939465 (=> res!2830669 e!4174768)))

(declare-fun b!6939466 () Bool)

(assert (=> b!6939466 (= e!4174768 (matchRSpec!4020 (regTwo!34439 r2!6280) (_1!37123 lt!2475267)))))

(declare-fun call!630460 () Bool)

(declare-fun bm!630455 () Bool)

(declare-fun c!1287664 () Bool)

(assert (=> bm!630455 (= call!630460 (Exists!3963 (ite c!1287664 lambda!395282 lambda!395283)))))

(declare-fun b!6939467 () Bool)

(declare-fun e!4174765 () Bool)

(assert (=> b!6939467 (= e!4174765 call!630459)))

(declare-fun b!6939469 () Bool)

(declare-fun c!1287665 () Bool)

(assert (=> b!6939469 (= c!1287665 ((_ is ElementMatch!16963) r2!6280))))

(declare-fun e!4174762 () Bool)

(declare-fun e!4174764 () Bool)

(assert (=> b!6939469 (= e!4174762 e!4174764)))

(declare-fun b!6939470 () Bool)

(assert (=> b!6939470 (= e!4174764 (= (_1!37123 lt!2475267) (Cons!66592 (c!1287519 r2!6280) Nil!66592)))))

(assert (=> b!6939471 (= e!4174763 call!630460)))

(declare-fun b!6939472 () Bool)

(declare-fun c!1287667 () Bool)

(assert (=> b!6939472 (= c!1287667 ((_ is Union!16963) r2!6280))))

(assert (=> b!6939472 (= e!4174764 e!4174767)))

(declare-fun b!6939473 () Bool)

(assert (=> b!6939473 (= e!4174765 e!4174762)))

(declare-fun res!2830668 () Bool)

(assert (=> b!6939473 (= res!2830668 (not ((_ is EmptyLang!16963) r2!6280)))))

(assert (=> b!6939473 (=> (not res!2830668) (not e!4174762))))

(assert (=> b!6939474 (= e!4174766 call!630460)))

(declare-fun b!6939468 () Bool)

(assert (=> b!6939468 (= e!4174767 e!4174766)))

(assert (=> b!6939468 (= c!1287664 ((_ is Star!16963) r2!6280))))

(declare-fun d!2167455 () Bool)

(declare-fun c!1287666 () Bool)

(assert (=> d!2167455 (= c!1287666 ((_ is EmptyExpr!16963) r2!6280))))

(assert (=> d!2167455 (= (matchRSpec!4020 r2!6280 (_1!37123 lt!2475267)) e!4174765)))

(assert (= (and d!2167455 c!1287666) b!6939467))

(assert (= (and d!2167455 (not c!1287666)) b!6939473))

(assert (= (and b!6939473 res!2830668) b!6939469))

(assert (= (and b!6939469 c!1287665) b!6939470))

(assert (= (and b!6939469 (not c!1287665)) b!6939472))

(assert (= (and b!6939472 c!1287667) b!6939465))

(assert (= (and b!6939472 (not c!1287667)) b!6939468))

(assert (= (and b!6939465 (not res!2830669)) b!6939466))

(assert (= (and b!6939468 c!1287664) b!6939464))

(assert (= (and b!6939468 (not c!1287664)) b!6939474))

(assert (= (and b!6939464 (not res!2830670)) b!6939471))

(assert (= (or b!6939471 b!6939474) bm!630455))

(assert (= (or b!6939467 b!6939464) bm!630454))

(assert (=> bm!630454 m!7644666))

(declare-fun m!7644790 () Bool)

(assert (=> b!6939465 m!7644790))

(declare-fun m!7644792 () Bool)

(assert (=> b!6939466 m!7644792))

(declare-fun m!7644794 () Bool)

(assert (=> bm!630455 m!7644794))

(assert (=> b!6938759 d!2167455))

(declare-fun bs!1853978 () Bool)

(declare-fun b!6939482 () Bool)

(assert (= bs!1853978 (and b!6939482 b!6939310)))

(declare-fun lambda!395284 () Int)

(assert (=> bs!1853978 (= (and (= (_2!37123 lt!2475267) (_2!37123 lt!2475244)) (= (reg!17292 r3!135) (reg!17292 lt!2475243)) (= r3!135 lt!2475243)) (= lambda!395284 lambda!395276))))

(declare-fun bs!1853979 () Bool)

(assert (= bs!1853979 (and b!6939482 b!6939059)))

(assert (=> bs!1853979 (not (= lambda!395284 lambda!395247))))

(declare-fun bs!1853980 () Bool)

(assert (= bs!1853980 (and b!6939482 b!6938767)))

(assert (=> bs!1853980 (not (= lambda!395284 lambda!395226))))

(declare-fun bs!1853981 () Bool)

(assert (= bs!1853981 (and b!6939482 b!6938777)))

(assert (=> bs!1853981 (not (= lambda!395284 lambda!395227))))

(declare-fun bs!1853982 () Bool)

(assert (= bs!1853982 (and b!6939482 b!6939474)))

(assert (=> bs!1853982 (not (= lambda!395284 lambda!395283))))

(declare-fun bs!1853983 () Bool)

(assert (= bs!1853983 (and b!6939482 b!6938772)))

(assert (=> bs!1853983 (not (= lambda!395284 lambda!395224))))

(assert (=> bs!1853983 (not (= lambda!395284 lambda!395223))))

(declare-fun bs!1853984 () Bool)

(assert (= bs!1853984 (and b!6939482 d!2167427)))

(assert (=> bs!1853984 (not (= lambda!395284 lambda!395274))))

(declare-fun bs!1853985 () Bool)

(assert (= bs!1853985 (and b!6939482 d!2167397)))

(assert (=> bs!1853985 (not (= lambda!395284 lambda!395271))))

(declare-fun bs!1853986 () Bool)

(assert (= bs!1853986 (and b!6939482 b!6939056)))

(assert (=> bs!1853986 (= (and (= (_2!37123 lt!2475267) lt!2475259) (= (reg!17292 r3!135) (reg!17292 lt!2475270)) (= r3!135 lt!2475270)) (= lambda!395284 lambda!395246))))

(declare-fun bs!1853987 () Bool)

(assert (= bs!1853987 (and b!6939482 b!6939471)))

(assert (=> bs!1853987 (= (and (= (_2!37123 lt!2475267) (_1!37123 lt!2475267)) (= (reg!17292 r3!135) (reg!17292 r2!6280)) (= r3!135 r2!6280)) (= lambda!395284 lambda!395282))))

(declare-fun bs!1853988 () Bool)

(assert (= bs!1853988 (and b!6939482 d!2167443)))

(assert (=> bs!1853988 (not (= lambda!395284 lambda!395280))))

(assert (=> bs!1853988 (not (= lambda!395284 lambda!395281))))

(declare-fun bs!1853989 () Bool)

(assert (= bs!1853989 (and b!6939482 d!2167381)))

(assert (=> bs!1853989 (not (= lambda!395284 lambda!395262))))

(assert (=> bs!1853981 (not (= lambda!395284 lambda!395228))))

(declare-fun bs!1853990 () Bool)

(assert (= bs!1853990 (and b!6939482 b!6939313)))

(assert (=> bs!1853990 (not (= lambda!395284 lambda!395278))))

(assert (=> bs!1853985 (not (= lambda!395284 lambda!395272))))

(assert (=> bs!1853980 (not (= lambda!395284 lambda!395225))))

(assert (=> b!6939482 true))

(assert (=> b!6939482 true))

(declare-fun bs!1853991 () Bool)

(declare-fun b!6939485 () Bool)

(assert (= bs!1853991 (and b!6939485 b!6939310)))

(declare-fun lambda!395285 () Int)

(assert (=> bs!1853991 (not (= lambda!395285 lambda!395276))))

(declare-fun bs!1853992 () Bool)

(assert (= bs!1853992 (and b!6939485 b!6939059)))

(assert (=> bs!1853992 (= (and (= (_2!37123 lt!2475267) lt!2475259) (= (regOne!34438 r3!135) (regOne!34438 lt!2475270)) (= (regTwo!34438 r3!135) (regTwo!34438 lt!2475270))) (= lambda!395285 lambda!395247))))

(declare-fun bs!1853993 () Bool)

(assert (= bs!1853993 (and b!6939485 b!6938767)))

(assert (=> bs!1853993 (= (and (= (_2!37123 lt!2475267) (_2!37123 lt!2475244)) (= (regOne!34438 r3!135) r2!6280) (= (regTwo!34438 r3!135) r3!135)) (= lambda!395285 lambda!395226))))

(declare-fun bs!1853994 () Bool)

(assert (= bs!1853994 (and b!6939485 b!6938777)))

(assert (=> bs!1853994 (not (= lambda!395285 lambda!395227))))

(declare-fun bs!1853995 () Bool)

(assert (= bs!1853995 (and b!6939485 b!6939474)))

(assert (=> bs!1853995 (= (and (= (_2!37123 lt!2475267) (_1!37123 lt!2475267)) (= (regOne!34438 r3!135) (regOne!34438 r2!6280)) (= (regTwo!34438 r3!135) (regTwo!34438 r2!6280))) (= lambda!395285 lambda!395283))))

(declare-fun bs!1853996 () Bool)

(assert (= bs!1853996 (and b!6939485 b!6938772)))

(assert (=> bs!1853996 (= (and (= (_2!37123 lt!2475267) s!14361) (= (regOne!34438 r3!135) r1!6342) (= (regTwo!34438 r3!135) lt!2475243)) (= lambda!395285 lambda!395224))))

(assert (=> bs!1853996 (not (= lambda!395285 lambda!395223))))

(declare-fun bs!1853997 () Bool)

(assert (= bs!1853997 (and b!6939485 d!2167427)))

(assert (=> bs!1853997 (not (= lambda!395285 lambda!395274))))

(declare-fun bs!1853998 () Bool)

(assert (= bs!1853998 (and b!6939485 d!2167397)))

(assert (=> bs!1853998 (not (= lambda!395285 lambda!395271))))

(declare-fun bs!1853999 () Bool)

(assert (= bs!1853999 (and b!6939485 b!6939056)))

(assert (=> bs!1853999 (not (= lambda!395285 lambda!395246))))

(declare-fun bs!1854000 () Bool)

(assert (= bs!1854000 (and b!6939485 b!6939471)))

(assert (=> bs!1854000 (not (= lambda!395285 lambda!395282))))

(declare-fun bs!1854001 () Bool)

(assert (= bs!1854001 (and b!6939485 b!6939482)))

(assert (=> bs!1854001 (not (= lambda!395285 lambda!395284))))

(declare-fun bs!1854002 () Bool)

(assert (= bs!1854002 (and b!6939485 d!2167443)))

(assert (=> bs!1854002 (not (= lambda!395285 lambda!395280))))

(assert (=> bs!1854002 (= (and (= (_2!37123 lt!2475267) (_2!37123 lt!2475244)) (= (regOne!34438 r3!135) r2!6280) (= (regTwo!34438 r3!135) r3!135)) (= lambda!395285 lambda!395281))))

(declare-fun bs!1854003 () Bool)

(assert (= bs!1854003 (and b!6939485 d!2167381)))

(assert (=> bs!1854003 (not (= lambda!395285 lambda!395262))))

(assert (=> bs!1853994 (= (and (= (_2!37123 lt!2475267) lt!2475259) (= (regOne!34438 r3!135) r1!6342) (= (regTwo!34438 r3!135) r2!6280)) (= lambda!395285 lambda!395228))))

(declare-fun bs!1854004 () Bool)

(assert (= bs!1854004 (and b!6939485 b!6939313)))

(assert (=> bs!1854004 (= (and (= (_2!37123 lt!2475267) (_2!37123 lt!2475244)) (= (regOne!34438 r3!135) (regOne!34438 lt!2475243)) (= (regTwo!34438 r3!135) (regTwo!34438 lt!2475243))) (= lambda!395285 lambda!395278))))

(assert (=> bs!1853998 (= (and (= (_2!37123 lt!2475267) lt!2475259) (= (regOne!34438 r3!135) r1!6342) (= (regTwo!34438 r3!135) r2!6280)) (= lambda!395285 lambda!395272))))

(assert (=> bs!1853993 (not (= lambda!395285 lambda!395225))))

(assert (=> b!6939485 true))

(assert (=> b!6939485 true))

(declare-fun bm!630456 () Bool)

(declare-fun call!630461 () Bool)

(assert (=> bm!630456 (= call!630461 (isEmpty!38862 (_2!37123 lt!2475267)))))

(declare-fun b!6939475 () Bool)

(declare-fun res!2830673 () Bool)

(declare-fun e!4174770 () Bool)

(assert (=> b!6939475 (=> res!2830673 e!4174770)))

(assert (=> b!6939475 (= res!2830673 call!630461)))

(declare-fun e!4174773 () Bool)

(assert (=> b!6939475 (= e!4174773 e!4174770)))

(declare-fun b!6939476 () Bool)

(declare-fun e!4174774 () Bool)

(declare-fun e!4174775 () Bool)

(assert (=> b!6939476 (= e!4174774 e!4174775)))

(declare-fun res!2830672 () Bool)

(assert (=> b!6939476 (= res!2830672 (matchRSpec!4020 (regOne!34439 r3!135) (_2!37123 lt!2475267)))))

(assert (=> b!6939476 (=> res!2830672 e!4174775)))

(declare-fun b!6939477 () Bool)

(assert (=> b!6939477 (= e!4174775 (matchRSpec!4020 (regTwo!34439 r3!135) (_2!37123 lt!2475267)))))

(declare-fun c!1287668 () Bool)

(declare-fun call!630462 () Bool)

(declare-fun bm!630457 () Bool)

(assert (=> bm!630457 (= call!630462 (Exists!3963 (ite c!1287668 lambda!395284 lambda!395285)))))

(declare-fun b!6939478 () Bool)

(declare-fun e!4174772 () Bool)

(assert (=> b!6939478 (= e!4174772 call!630461)))

(declare-fun b!6939480 () Bool)

(declare-fun c!1287669 () Bool)

(assert (=> b!6939480 (= c!1287669 ((_ is ElementMatch!16963) r3!135))))

(declare-fun e!4174769 () Bool)

(declare-fun e!4174771 () Bool)

(assert (=> b!6939480 (= e!4174769 e!4174771)))

(declare-fun b!6939481 () Bool)

(assert (=> b!6939481 (= e!4174771 (= (_2!37123 lt!2475267) (Cons!66592 (c!1287519 r3!135) Nil!66592)))))

(assert (=> b!6939482 (= e!4174770 call!630462)))

(declare-fun b!6939483 () Bool)

(declare-fun c!1287671 () Bool)

(assert (=> b!6939483 (= c!1287671 ((_ is Union!16963) r3!135))))

(assert (=> b!6939483 (= e!4174771 e!4174774)))

(declare-fun b!6939484 () Bool)

(assert (=> b!6939484 (= e!4174772 e!4174769)))

(declare-fun res!2830671 () Bool)

(assert (=> b!6939484 (= res!2830671 (not ((_ is EmptyLang!16963) r3!135)))))

(assert (=> b!6939484 (=> (not res!2830671) (not e!4174769))))

(assert (=> b!6939485 (= e!4174773 call!630462)))

(declare-fun b!6939479 () Bool)

(assert (=> b!6939479 (= e!4174774 e!4174773)))

(assert (=> b!6939479 (= c!1287668 ((_ is Star!16963) r3!135))))

(declare-fun d!2167457 () Bool)

(declare-fun c!1287670 () Bool)

(assert (=> d!2167457 (= c!1287670 ((_ is EmptyExpr!16963) r3!135))))

(assert (=> d!2167457 (= (matchRSpec!4020 r3!135 (_2!37123 lt!2475267)) e!4174772)))

(assert (= (and d!2167457 c!1287670) b!6939478))

(assert (= (and d!2167457 (not c!1287670)) b!6939484))

(assert (= (and b!6939484 res!2830671) b!6939480))

(assert (= (and b!6939480 c!1287669) b!6939481))

(assert (= (and b!6939480 (not c!1287669)) b!6939483))

(assert (= (and b!6939483 c!1287671) b!6939476))

(assert (= (and b!6939483 (not c!1287671)) b!6939479))

(assert (= (and b!6939476 (not res!2830672)) b!6939477))

(assert (= (and b!6939479 c!1287668) b!6939475))

(assert (= (and b!6939479 (not c!1287668)) b!6939485))

(assert (= (and b!6939475 (not res!2830673)) b!6939482))

(assert (= (or b!6939482 b!6939485) bm!630457))

(assert (= (or b!6939478 b!6939475) bm!630456))

(declare-fun m!7644796 () Bool)

(assert (=> bm!630456 m!7644796))

(declare-fun m!7644798 () Bool)

(assert (=> b!6939476 m!7644798))

(declare-fun m!7644800 () Bool)

(assert (=> b!6939477 m!7644800))

(declare-fun m!7644802 () Bool)

(assert (=> bm!630457 m!7644802))

(assert (=> b!6938759 d!2167457))

(declare-fun e!4174776 () Bool)

(declare-fun b!6939489 () Bool)

(declare-fun lt!2475373 () List!66716)

(assert (=> b!6939489 (= e!4174776 (or (not (= (++!15002 (_1!37123 lt!2475267) (_2!37123 lt!2475267)) Nil!66592)) (= lt!2475373 (_1!37123 lt!2475244))))))

(declare-fun b!6939486 () Bool)

(declare-fun e!4174777 () List!66716)

(assert (=> b!6939486 (= e!4174777 (++!15002 (_1!37123 lt!2475267) (_2!37123 lt!2475267)))))

(declare-fun b!6939487 () Bool)

(assert (=> b!6939487 (= e!4174777 (Cons!66592 (h!73040 (_1!37123 lt!2475244)) (++!15002 (t!380459 (_1!37123 lt!2475244)) (++!15002 (_1!37123 lt!2475267) (_2!37123 lt!2475267)))))))

(declare-fun d!2167459 () Bool)

(assert (=> d!2167459 e!4174776))

(declare-fun res!2830674 () Bool)

(assert (=> d!2167459 (=> (not res!2830674) (not e!4174776))))

(assert (=> d!2167459 (= res!2830674 (= (content!13101 lt!2475373) ((_ map or) (content!13101 (_1!37123 lt!2475244)) (content!13101 (++!15002 (_1!37123 lt!2475267) (_2!37123 lt!2475267))))))))

(assert (=> d!2167459 (= lt!2475373 e!4174777)))

(declare-fun c!1287672 () Bool)

(assert (=> d!2167459 (= c!1287672 ((_ is Nil!66592) (_1!37123 lt!2475244)))))

(assert (=> d!2167459 (= (++!15002 (_1!37123 lt!2475244) (++!15002 (_1!37123 lt!2475267) (_2!37123 lt!2475267))) lt!2475373)))

(declare-fun b!6939488 () Bool)

(declare-fun res!2830675 () Bool)

(assert (=> b!6939488 (=> (not res!2830675) (not e!4174776))))

(assert (=> b!6939488 (= res!2830675 (= (size!40798 lt!2475373) (+ (size!40798 (_1!37123 lt!2475244)) (size!40798 (++!15002 (_1!37123 lt!2475267) (_2!37123 lt!2475267))))))))

(assert (= (and d!2167459 c!1287672) b!6939486))

(assert (= (and d!2167459 (not c!1287672)) b!6939487))

(assert (= (and d!2167459 res!2830674) b!6939488))

(assert (= (and b!6939488 res!2830675) b!6939489))

(assert (=> b!6939487 m!7644184))

(declare-fun m!7644804 () Bool)

(assert (=> b!6939487 m!7644804))

(declare-fun m!7644806 () Bool)

(assert (=> d!2167459 m!7644806))

(assert (=> d!2167459 m!7644410))

(assert (=> d!2167459 m!7644184))

(declare-fun m!7644808 () Bool)

(assert (=> d!2167459 m!7644808))

(declare-fun m!7644810 () Bool)

(assert (=> b!6939488 m!7644810))

(assert (=> b!6939488 m!7644416))

(assert (=> b!6939488 m!7644184))

(declare-fun m!7644812 () Bool)

(assert (=> b!6939488 m!7644812))

(assert (=> b!6938759 d!2167459))

(declare-fun d!2167461 () Bool)

(assert (=> d!2167461 (= (matchR!9102 r2!6280 (_1!37123 lt!2475267)) (matchRSpec!4020 r2!6280 (_1!37123 lt!2475267)))))

(declare-fun lt!2475374 () Unit!160650)

(assert (=> d!2167461 (= lt!2475374 (choose!51696 r2!6280 (_1!37123 lt!2475267)))))

(assert (=> d!2167461 (validRegex!8669 r2!6280)))

(assert (=> d!2167461 (= (mainMatchTheorem!4020 r2!6280 (_1!37123 lt!2475267)) lt!2475374)))

(declare-fun bs!1854005 () Bool)

(assert (= bs!1854005 d!2167461))

(assert (=> bs!1854005 m!7644134))

(assert (=> bs!1854005 m!7644194))

(declare-fun m!7644814 () Bool)

(assert (=> bs!1854005 m!7644814))

(assert (=> bs!1854005 m!7644226))

(assert (=> b!6938759 d!2167461))

(declare-fun b!6939493 () Bool)

(declare-fun e!4174778 () Bool)

(declare-fun lt!2475375 () List!66716)

(assert (=> b!6939493 (= e!4174778 (or (not (= (_2!37123 lt!2475267) Nil!66592)) (= lt!2475375 (_1!37123 lt!2475267))))))

(declare-fun b!6939490 () Bool)

(declare-fun e!4174779 () List!66716)

(assert (=> b!6939490 (= e!4174779 (_2!37123 lt!2475267))))

(declare-fun b!6939491 () Bool)

(assert (=> b!6939491 (= e!4174779 (Cons!66592 (h!73040 (_1!37123 lt!2475267)) (++!15002 (t!380459 (_1!37123 lt!2475267)) (_2!37123 lt!2475267))))))

(declare-fun d!2167463 () Bool)

(assert (=> d!2167463 e!4174778))

(declare-fun res!2830676 () Bool)

(assert (=> d!2167463 (=> (not res!2830676) (not e!4174778))))

(assert (=> d!2167463 (= res!2830676 (= (content!13101 lt!2475375) ((_ map or) (content!13101 (_1!37123 lt!2475267)) (content!13101 (_2!37123 lt!2475267)))))))

(assert (=> d!2167463 (= lt!2475375 e!4174779)))

(declare-fun c!1287673 () Bool)

(assert (=> d!2167463 (= c!1287673 ((_ is Nil!66592) (_1!37123 lt!2475267)))))

(assert (=> d!2167463 (= (++!15002 (_1!37123 lt!2475267) (_2!37123 lt!2475267)) lt!2475375)))

(declare-fun b!6939492 () Bool)

(declare-fun res!2830677 () Bool)

(assert (=> b!6939492 (=> (not res!2830677) (not e!4174778))))

(assert (=> b!6939492 (= res!2830677 (= (size!40798 lt!2475375) (+ (size!40798 (_1!37123 lt!2475267)) (size!40798 (_2!37123 lt!2475267)))))))

(assert (= (and d!2167463 c!1287673) b!6939490))

(assert (= (and d!2167463 (not c!1287673)) b!6939491))

(assert (= (and d!2167463 res!2830676) b!6939492))

(assert (= (and b!6939492 res!2830677) b!6939493))

(declare-fun m!7644816 () Bool)

(assert (=> b!6939491 m!7644816))

(declare-fun m!7644818 () Bool)

(assert (=> d!2167463 m!7644818))

(assert (=> d!2167463 m!7644412))

(assert (=> d!2167463 m!7644316))

(declare-fun m!7644820 () Bool)

(assert (=> b!6939492 m!7644820))

(assert (=> b!6939492 m!7644418))

(assert (=> b!6939492 m!7644322))

(assert (=> b!6938759 d!2167463))

(declare-fun d!2167465 () Bool)

(assert (=> d!2167465 (= (matchR!9102 r3!135 (_2!37123 lt!2475267)) (matchRSpec!4020 r3!135 (_2!37123 lt!2475267)))))

(declare-fun lt!2475376 () Unit!160650)

(assert (=> d!2167465 (= lt!2475376 (choose!51696 r3!135 (_2!37123 lt!2475267)))))

(assert (=> d!2167465 (validRegex!8669 r3!135)))

(assert (=> d!2167465 (= (mainMatchTheorem!4020 r3!135 (_2!37123 lt!2475267)) lt!2475376)))

(declare-fun bs!1854006 () Bool)

(assert (= bs!1854006 d!2167465))

(assert (=> bs!1854006 m!7644154))

(assert (=> bs!1854006 m!7644192))

(declare-fun m!7644822 () Bool)

(assert (=> bs!1854006 m!7644822))

(assert (=> bs!1854006 m!7644224))

(assert (=> b!6938759 d!2167465))

(declare-fun b!6939494 () Bool)

(declare-fun res!2830678 () Bool)

(declare-fun e!4174781 () Bool)

(assert (=> b!6939494 (=> (not res!2830678) (not e!4174781))))

(assert (=> b!6939494 (= res!2830678 (isEmpty!38862 (tail!12960 (_2!37123 lt!2475267))))))

(declare-fun b!6939495 () Bool)

(declare-fun e!4174783 () Bool)

(assert (=> b!6939495 (= e!4174783 (nullable!6780 r3!135))))

(declare-fun b!6939496 () Bool)

(declare-fun res!2830683 () Bool)

(declare-fun e!4174786 () Bool)

(assert (=> b!6939496 (=> res!2830683 e!4174786)))

(assert (=> b!6939496 (= res!2830683 (not ((_ is ElementMatch!16963) r3!135)))))

(declare-fun e!4174782 () Bool)

(assert (=> b!6939496 (= e!4174782 e!4174786)))

(declare-fun b!6939497 () Bool)

(declare-fun e!4174780 () Bool)

(assert (=> b!6939497 (= e!4174780 (not (= (head!13908 (_2!37123 lt!2475267)) (c!1287519 r3!135))))))

(declare-fun b!6939498 () Bool)

(declare-fun e!4174784 () Bool)

(assert (=> b!6939498 (= e!4174784 e!4174782)))

(declare-fun c!1287675 () Bool)

(assert (=> b!6939498 (= c!1287675 ((_ is EmptyLang!16963) r3!135))))

(declare-fun b!6939499 () Bool)

(declare-fun res!2830685 () Bool)

(assert (=> b!6939499 (=> (not res!2830685) (not e!4174781))))

(declare-fun call!630463 () Bool)

(assert (=> b!6939499 (= res!2830685 (not call!630463))))

(declare-fun b!6939500 () Bool)

(assert (=> b!6939500 (= e!4174783 (matchR!9102 (derivativeStep!5455 r3!135 (head!13908 (_2!37123 lt!2475267))) (tail!12960 (_2!37123 lt!2475267))))))

(declare-fun b!6939501 () Bool)

(declare-fun lt!2475377 () Bool)

(assert (=> b!6939501 (= e!4174782 (not lt!2475377))))

(declare-fun b!6939502 () Bool)

(declare-fun res!2830684 () Bool)

(assert (=> b!6939502 (=> res!2830684 e!4174780)))

(assert (=> b!6939502 (= res!2830684 (not (isEmpty!38862 (tail!12960 (_2!37123 lt!2475267)))))))

(declare-fun b!6939503 () Bool)

(assert (=> b!6939503 (= e!4174781 (= (head!13908 (_2!37123 lt!2475267)) (c!1287519 r3!135)))))

(declare-fun b!6939504 () Bool)

(declare-fun e!4174785 () Bool)

(assert (=> b!6939504 (= e!4174786 e!4174785)))

(declare-fun res!2830680 () Bool)

(assert (=> b!6939504 (=> (not res!2830680) (not e!4174785))))

(assert (=> b!6939504 (= res!2830680 (not lt!2475377))))

(declare-fun d!2167467 () Bool)

(assert (=> d!2167467 e!4174784))

(declare-fun c!1287674 () Bool)

(assert (=> d!2167467 (= c!1287674 ((_ is EmptyExpr!16963) r3!135))))

(assert (=> d!2167467 (= lt!2475377 e!4174783)))

(declare-fun c!1287676 () Bool)

(assert (=> d!2167467 (= c!1287676 (isEmpty!38862 (_2!37123 lt!2475267)))))

(assert (=> d!2167467 (validRegex!8669 r3!135)))

(assert (=> d!2167467 (= (matchR!9102 r3!135 (_2!37123 lt!2475267)) lt!2475377)))

(declare-fun b!6939505 () Bool)

(assert (=> b!6939505 (= e!4174785 e!4174780)))

(declare-fun res!2830679 () Bool)

(assert (=> b!6939505 (=> res!2830679 e!4174780)))

(assert (=> b!6939505 (= res!2830679 call!630463)))

(declare-fun b!6939506 () Bool)

(declare-fun res!2830682 () Bool)

(assert (=> b!6939506 (=> res!2830682 e!4174786)))

(assert (=> b!6939506 (= res!2830682 e!4174781)))

(declare-fun res!2830681 () Bool)

(assert (=> b!6939506 (=> (not res!2830681) (not e!4174781))))

(assert (=> b!6939506 (= res!2830681 lt!2475377)))

(declare-fun bm!630458 () Bool)

(assert (=> bm!630458 (= call!630463 (isEmpty!38862 (_2!37123 lt!2475267)))))

(declare-fun b!6939507 () Bool)

(assert (=> b!6939507 (= e!4174784 (= lt!2475377 call!630463))))

(assert (= (and d!2167467 c!1287676) b!6939495))

(assert (= (and d!2167467 (not c!1287676)) b!6939500))

(assert (= (and d!2167467 c!1287674) b!6939507))

(assert (= (and d!2167467 (not c!1287674)) b!6939498))

(assert (= (and b!6939498 c!1287675) b!6939501))

(assert (= (and b!6939498 (not c!1287675)) b!6939496))

(assert (= (and b!6939496 (not res!2830683)) b!6939506))

(assert (= (and b!6939506 res!2830681) b!6939499))

(assert (= (and b!6939499 res!2830685) b!6939494))

(assert (= (and b!6939494 res!2830678) b!6939503))

(assert (= (and b!6939506 (not res!2830682)) b!6939504))

(assert (= (and b!6939504 res!2830680) b!6939505))

(assert (= (and b!6939505 (not res!2830679)) b!6939502))

(assert (= (and b!6939502 (not res!2830684)) b!6939497))

(assert (= (or b!6939507 b!6939499 b!6939505) bm!630458))

(declare-fun m!7644824 () Bool)

(assert (=> b!6939503 m!7644824))

(assert (=> d!2167467 m!7644796))

(assert (=> d!2167467 m!7644224))

(declare-fun m!7644826 () Bool)

(assert (=> b!6939494 m!7644826))

(assert (=> b!6939494 m!7644826))

(declare-fun m!7644828 () Bool)

(assert (=> b!6939494 m!7644828))

(declare-fun m!7644830 () Bool)

(assert (=> b!6939495 m!7644830))

(assert (=> b!6939502 m!7644826))

(assert (=> b!6939502 m!7644826))

(assert (=> b!6939502 m!7644828))

(assert (=> b!6939497 m!7644824))

(assert (=> bm!630458 m!7644796))

(assert (=> b!6939500 m!7644824))

(assert (=> b!6939500 m!7644824))

(declare-fun m!7644832 () Bool)

(assert (=> b!6939500 m!7644832))

(assert (=> b!6939500 m!7644826))

(assert (=> b!6939500 m!7644832))

(assert (=> b!6939500 m!7644826))

(declare-fun m!7644834 () Bool)

(assert (=> b!6939500 m!7644834))

(assert (=> b!6938757 d!2167467))

(declare-fun c!1287677 () Bool)

(declare-fun c!1287678 () Bool)

(declare-fun bm!630459 () Bool)

(declare-fun call!630465 () Bool)

(assert (=> bm!630459 (= call!630465 (validRegex!8669 (ite c!1287677 (reg!17292 r1!6342) (ite c!1287678 (regOne!34439 r1!6342) (regTwo!34438 r1!6342)))))))

(declare-fun b!6939508 () Bool)

(declare-fun e!4174793 () Bool)

(assert (=> b!6939508 (= e!4174793 call!630465)))

(declare-fun b!6939509 () Bool)

(declare-fun e!4174789 () Bool)

(assert (=> b!6939509 (= e!4174789 e!4174793)))

(declare-fun res!2830686 () Bool)

(assert (=> b!6939509 (= res!2830686 (not (nullable!6780 (reg!17292 r1!6342))))))

(assert (=> b!6939509 (=> (not res!2830686) (not e!4174793))))

(declare-fun bm!630460 () Bool)

(declare-fun call!630464 () Bool)

(assert (=> bm!630460 (= call!630464 call!630465)))

(declare-fun bm!630461 () Bool)

(declare-fun call!630466 () Bool)

(assert (=> bm!630461 (= call!630466 (validRegex!8669 (ite c!1287678 (regTwo!34439 r1!6342) (regOne!34438 r1!6342))))))

(declare-fun b!6939510 () Bool)

(declare-fun e!4174787 () Bool)

(assert (=> b!6939510 (= e!4174787 call!630464)))

(declare-fun b!6939511 () Bool)

(declare-fun e!4174790 () Bool)

(assert (=> b!6939511 (= e!4174790 e!4174789)))

(assert (=> b!6939511 (= c!1287677 ((_ is Star!16963) r1!6342))))

(declare-fun d!2167469 () Bool)

(declare-fun res!2830689 () Bool)

(assert (=> d!2167469 (=> res!2830689 e!4174790)))

(assert (=> d!2167469 (= res!2830689 ((_ is ElementMatch!16963) r1!6342))))

(assert (=> d!2167469 (= (validRegex!8669 r1!6342) e!4174790)))

(declare-fun b!6939512 () Bool)

(declare-fun res!2830688 () Bool)

(declare-fun e!4174788 () Bool)

(assert (=> b!6939512 (=> res!2830688 e!4174788)))

(assert (=> b!6939512 (= res!2830688 (not ((_ is Concat!25808) r1!6342)))))

(declare-fun e!4174792 () Bool)

(assert (=> b!6939512 (= e!4174792 e!4174788)))

(declare-fun b!6939513 () Bool)

(assert (=> b!6939513 (= e!4174789 e!4174792)))

(assert (=> b!6939513 (= c!1287678 ((_ is Union!16963) r1!6342))))

(declare-fun b!6939514 () Bool)

(assert (=> b!6939514 (= e!4174788 e!4174787)))

(declare-fun res!2830687 () Bool)

(assert (=> b!6939514 (=> (not res!2830687) (not e!4174787))))

(assert (=> b!6939514 (= res!2830687 call!630466)))

(declare-fun b!6939515 () Bool)

(declare-fun res!2830690 () Bool)

(declare-fun e!4174791 () Bool)

(assert (=> b!6939515 (=> (not res!2830690) (not e!4174791))))

(assert (=> b!6939515 (= res!2830690 call!630464)))

(assert (=> b!6939515 (= e!4174792 e!4174791)))

(declare-fun b!6939516 () Bool)

(assert (=> b!6939516 (= e!4174791 call!630466)))

(assert (= (and d!2167469 (not res!2830689)) b!6939511))

(assert (= (and b!6939511 c!1287677) b!6939509))

(assert (= (and b!6939511 (not c!1287677)) b!6939513))

(assert (= (and b!6939509 res!2830686) b!6939508))

(assert (= (and b!6939513 c!1287678) b!6939515))

(assert (= (and b!6939513 (not c!1287678)) b!6939512))

(assert (= (and b!6939515 res!2830690) b!6939516))

(assert (= (and b!6939512 (not res!2830688)) b!6939514))

(assert (= (and b!6939514 res!2830687) b!6939510))

(assert (= (or b!6939515 b!6939510) bm!630460))

(assert (= (or b!6939516 b!6939514) bm!630461))

(assert (= (or b!6939508 bm!630460) bm!630459))

(declare-fun m!7644836 () Bool)

(assert (=> bm!630459 m!7644836))

(declare-fun m!7644838 () Bool)

(assert (=> b!6939509 m!7644838))

(declare-fun m!7644840 () Bool)

(assert (=> bm!630461 m!7644840))

(assert (=> start!666470 d!2167469))

(declare-fun d!2167471 () Bool)

(assert (=> d!2167471 (= (matchR!9102 r1!6342 (_1!37123 lt!2475244)) (matchRSpec!4020 r1!6342 (_1!37123 lt!2475244)))))

(declare-fun lt!2475378 () Unit!160650)

(assert (=> d!2167471 (= lt!2475378 (choose!51696 r1!6342 (_1!37123 lt!2475244)))))

(assert (=> d!2167471 (validRegex!8669 r1!6342)))

(assert (=> d!2167471 (= (mainMatchTheorem!4020 r1!6342 (_1!37123 lt!2475244)) lt!2475378)))

(declare-fun bs!1854007 () Bool)

(assert (= bs!1854007 d!2167471))

(assert (=> bs!1854007 m!7644170))

(assert (=> bs!1854007 m!7644174))

(declare-fun m!7644842 () Bool)

(assert (=> bs!1854007 m!7644842))

(assert (=> bs!1854007 m!7644222))

(assert (=> b!6938772 d!2167471))

(declare-fun d!2167473 () Bool)

(assert (=> d!2167473 (= (Exists!3963 lambda!395223) (choose!51693 lambda!395223))))

(declare-fun bs!1854008 () Bool)

(assert (= bs!1854008 d!2167473))

(declare-fun m!7644844 () Bool)

(assert (=> bs!1854008 m!7644844))

(assert (=> b!6938772 d!2167473))

(declare-fun b!6939517 () Bool)

(declare-fun res!2830691 () Bool)

(declare-fun e!4174795 () Bool)

(assert (=> b!6939517 (=> (not res!2830691) (not e!4174795))))

(assert (=> b!6939517 (= res!2830691 (isEmpty!38862 (tail!12960 (_1!37123 lt!2475244))))))

(declare-fun b!6939518 () Bool)

(declare-fun e!4174797 () Bool)

(assert (=> b!6939518 (= e!4174797 (nullable!6780 r1!6342))))

(declare-fun b!6939519 () Bool)

(declare-fun res!2830696 () Bool)

(declare-fun e!4174800 () Bool)

(assert (=> b!6939519 (=> res!2830696 e!4174800)))

(assert (=> b!6939519 (= res!2830696 (not ((_ is ElementMatch!16963) r1!6342)))))

(declare-fun e!4174796 () Bool)

(assert (=> b!6939519 (= e!4174796 e!4174800)))

(declare-fun b!6939520 () Bool)

(declare-fun e!4174794 () Bool)

(assert (=> b!6939520 (= e!4174794 (not (= (head!13908 (_1!37123 lt!2475244)) (c!1287519 r1!6342))))))

(declare-fun b!6939521 () Bool)

(declare-fun e!4174798 () Bool)

(assert (=> b!6939521 (= e!4174798 e!4174796)))

(declare-fun c!1287680 () Bool)

(assert (=> b!6939521 (= c!1287680 ((_ is EmptyLang!16963) r1!6342))))

(declare-fun b!6939522 () Bool)

(declare-fun res!2830698 () Bool)

(assert (=> b!6939522 (=> (not res!2830698) (not e!4174795))))

(declare-fun call!630467 () Bool)

(assert (=> b!6939522 (= res!2830698 (not call!630467))))

(declare-fun b!6939523 () Bool)

(assert (=> b!6939523 (= e!4174797 (matchR!9102 (derivativeStep!5455 r1!6342 (head!13908 (_1!37123 lt!2475244))) (tail!12960 (_1!37123 lt!2475244))))))

(declare-fun b!6939524 () Bool)

(declare-fun lt!2475379 () Bool)

(assert (=> b!6939524 (= e!4174796 (not lt!2475379))))

(declare-fun b!6939525 () Bool)

(declare-fun res!2830697 () Bool)

(assert (=> b!6939525 (=> res!2830697 e!4174794)))

(assert (=> b!6939525 (= res!2830697 (not (isEmpty!38862 (tail!12960 (_1!37123 lt!2475244)))))))

(declare-fun b!6939526 () Bool)

(assert (=> b!6939526 (= e!4174795 (= (head!13908 (_1!37123 lt!2475244)) (c!1287519 r1!6342)))))

(declare-fun b!6939527 () Bool)

(declare-fun e!4174799 () Bool)

(assert (=> b!6939527 (= e!4174800 e!4174799)))

(declare-fun res!2830693 () Bool)

(assert (=> b!6939527 (=> (not res!2830693) (not e!4174799))))

(assert (=> b!6939527 (= res!2830693 (not lt!2475379))))

(declare-fun d!2167475 () Bool)

(assert (=> d!2167475 e!4174798))

(declare-fun c!1287679 () Bool)

(assert (=> d!2167475 (= c!1287679 ((_ is EmptyExpr!16963) r1!6342))))

(assert (=> d!2167475 (= lt!2475379 e!4174797)))

(declare-fun c!1287681 () Bool)

(assert (=> d!2167475 (= c!1287681 (isEmpty!38862 (_1!37123 lt!2475244)))))

(assert (=> d!2167475 (validRegex!8669 r1!6342)))

(assert (=> d!2167475 (= (matchR!9102 r1!6342 (_1!37123 lt!2475244)) lt!2475379)))

(declare-fun b!6939528 () Bool)

(assert (=> b!6939528 (= e!4174799 e!4174794)))

(declare-fun res!2830692 () Bool)

(assert (=> b!6939528 (=> res!2830692 e!4174794)))

(assert (=> b!6939528 (= res!2830692 call!630467)))

(declare-fun b!6939529 () Bool)

(declare-fun res!2830695 () Bool)

(assert (=> b!6939529 (=> res!2830695 e!4174800)))

(assert (=> b!6939529 (= res!2830695 e!4174795)))

(declare-fun res!2830694 () Bool)

(assert (=> b!6939529 (=> (not res!2830694) (not e!4174795))))

(assert (=> b!6939529 (= res!2830694 lt!2475379)))

(declare-fun bm!630462 () Bool)

(assert (=> bm!630462 (= call!630467 (isEmpty!38862 (_1!37123 lt!2475244)))))

(declare-fun b!6939530 () Bool)

(assert (=> b!6939530 (= e!4174798 (= lt!2475379 call!630467))))

(assert (= (and d!2167475 c!1287681) b!6939518))

(assert (= (and d!2167475 (not c!1287681)) b!6939523))

(assert (= (and d!2167475 c!1287679) b!6939530))

(assert (= (and d!2167475 (not c!1287679)) b!6939521))

(assert (= (and b!6939521 c!1287680) b!6939524))

(assert (= (and b!6939521 (not c!1287680)) b!6939519))

(assert (= (and b!6939519 (not res!2830696)) b!6939529))

(assert (= (and b!6939529 res!2830694) b!6939522))

(assert (= (and b!6939522 res!2830698) b!6939517))

(assert (= (and b!6939517 res!2830691) b!6939526))

(assert (= (and b!6939529 (not res!2830695)) b!6939527))

(assert (= (and b!6939527 res!2830693) b!6939528))

(assert (= (and b!6939528 (not res!2830692)) b!6939525))

(assert (= (and b!6939525 (not res!2830697)) b!6939520))

(assert (= (or b!6939530 b!6939522 b!6939528) bm!630462))

(declare-fun m!7644846 () Bool)

(assert (=> b!6939526 m!7644846))

(declare-fun m!7644848 () Bool)

(assert (=> d!2167475 m!7644848))

(assert (=> d!2167475 m!7644222))

(declare-fun m!7644850 () Bool)

(assert (=> b!6939517 m!7644850))

(assert (=> b!6939517 m!7644850))

(declare-fun m!7644852 () Bool)

(assert (=> b!6939517 m!7644852))

(declare-fun m!7644854 () Bool)

(assert (=> b!6939518 m!7644854))

(assert (=> b!6939525 m!7644850))

(assert (=> b!6939525 m!7644850))

(assert (=> b!6939525 m!7644852))

(assert (=> b!6939520 m!7644846))

(assert (=> bm!630462 m!7644848))

(assert (=> b!6939523 m!7644846))

(assert (=> b!6939523 m!7644846))

(declare-fun m!7644856 () Bool)

(assert (=> b!6939523 m!7644856))

(assert (=> b!6939523 m!7644850))

(assert (=> b!6939523 m!7644856))

(assert (=> b!6939523 m!7644850))

(declare-fun m!7644858 () Bool)

(assert (=> b!6939523 m!7644858))

(assert (=> b!6938772 d!2167475))

(declare-fun d!2167477 () Bool)

(assert (=> d!2167477 (= (Exists!3963 lambda!395224) (choose!51693 lambda!395224))))

(declare-fun bs!1854009 () Bool)

(assert (= bs!1854009 d!2167477))

(declare-fun m!7644860 () Bool)

(assert (=> bs!1854009 m!7644860))

(assert (=> b!6938772 d!2167477))

(declare-fun bs!1854010 () Bool)

(declare-fun d!2167479 () Bool)

(assert (= bs!1854010 (and d!2167479 b!6939310)))

(declare-fun lambda!395286 () Int)

(assert (=> bs!1854010 (not (= lambda!395286 lambda!395276))))

(declare-fun bs!1854011 () Bool)

(assert (= bs!1854011 (and d!2167479 b!6939059)))

(assert (=> bs!1854011 (not (= lambda!395286 lambda!395247))))

(declare-fun bs!1854012 () Bool)

(assert (= bs!1854012 (and d!2167479 b!6938767)))

(assert (=> bs!1854012 (not (= lambda!395286 lambda!395226))))

(declare-fun bs!1854013 () Bool)

(assert (= bs!1854013 (and d!2167479 b!6938777)))

(assert (=> bs!1854013 (= (and (= s!14361 lt!2475259) (= lt!2475243 r2!6280)) (= lambda!395286 lambda!395227))))

(declare-fun bs!1854014 () Bool)

(assert (= bs!1854014 (and d!2167479 b!6939474)))

(assert (=> bs!1854014 (not (= lambda!395286 lambda!395283))))

(declare-fun bs!1854015 () Bool)

(assert (= bs!1854015 (and d!2167479 b!6938772)))

(assert (=> bs!1854015 (not (= lambda!395286 lambda!395224))))

(assert (=> bs!1854015 (= lambda!395286 lambda!395223)))

(declare-fun bs!1854016 () Bool)

(assert (= bs!1854016 (and d!2167479 d!2167427)))

(assert (=> bs!1854016 (= (and (= s!14361 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= lt!2475243 r3!135)) (= lambda!395286 lambda!395274))))

(declare-fun bs!1854017 () Bool)

(assert (= bs!1854017 (and d!2167479 d!2167397)))

(assert (=> bs!1854017 (= (and (= s!14361 lt!2475259) (= lt!2475243 r2!6280)) (= lambda!395286 lambda!395271))))

(declare-fun bs!1854018 () Bool)

(assert (= bs!1854018 (and d!2167479 b!6939056)))

(assert (=> bs!1854018 (not (= lambda!395286 lambda!395246))))

(declare-fun bs!1854019 () Bool)

(assert (= bs!1854019 (and d!2167479 b!6939471)))

(assert (=> bs!1854019 (not (= lambda!395286 lambda!395282))))

(declare-fun bs!1854020 () Bool)

(assert (= bs!1854020 (and d!2167479 b!6939482)))

(assert (=> bs!1854020 (not (= lambda!395286 lambda!395284))))

(declare-fun bs!1854021 () Bool)

(assert (= bs!1854021 (and d!2167479 b!6939485)))

(assert (=> bs!1854021 (not (= lambda!395286 lambda!395285))))

(declare-fun bs!1854022 () Bool)

(assert (= bs!1854022 (and d!2167479 d!2167443)))

(assert (=> bs!1854022 (= (and (= s!14361 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= lt!2475243 r3!135)) (= lambda!395286 lambda!395280))))

(assert (=> bs!1854022 (not (= lambda!395286 lambda!395281))))

(declare-fun bs!1854023 () Bool)

(assert (= bs!1854023 (and d!2167479 d!2167381)))

(assert (=> bs!1854023 (= (and (= s!14361 lt!2475259) (= lt!2475243 r2!6280)) (= lambda!395286 lambda!395262))))

(assert (=> bs!1854013 (not (= lambda!395286 lambda!395228))))

(declare-fun bs!1854024 () Bool)

(assert (= bs!1854024 (and d!2167479 b!6939313)))

(assert (=> bs!1854024 (not (= lambda!395286 lambda!395278))))

(assert (=> bs!1854017 (not (= lambda!395286 lambda!395272))))

(assert (=> bs!1854012 (= (and (= s!14361 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= lt!2475243 r3!135)) (= lambda!395286 lambda!395225))))

(assert (=> d!2167479 true))

(assert (=> d!2167479 true))

(assert (=> d!2167479 true))

(declare-fun lambda!395287 () Int)

(assert (=> bs!1854010 (not (= lambda!395287 lambda!395276))))

(assert (=> bs!1854011 (= (and (= s!14361 lt!2475259) (= r1!6342 (regOne!34438 lt!2475270)) (= lt!2475243 (regTwo!34438 lt!2475270))) (= lambda!395287 lambda!395247))))

(assert (=> bs!1854012 (= (and (= s!14361 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= lt!2475243 r3!135)) (= lambda!395287 lambda!395226))))

(assert (=> bs!1854013 (not (= lambda!395287 lambda!395227))))

(assert (=> bs!1854014 (= (and (= s!14361 (_1!37123 lt!2475267)) (= r1!6342 (regOne!34438 r2!6280)) (= lt!2475243 (regTwo!34438 r2!6280))) (= lambda!395287 lambda!395283))))

(assert (=> bs!1854015 (= lambda!395287 lambda!395224)))

(assert (=> bs!1854015 (not (= lambda!395287 lambda!395223))))

(assert (=> bs!1854016 (not (= lambda!395287 lambda!395274))))

(assert (=> bs!1854017 (not (= lambda!395287 lambda!395271))))

(assert (=> bs!1854018 (not (= lambda!395287 lambda!395246))))

(assert (=> bs!1854019 (not (= lambda!395287 lambda!395282))))

(assert (=> bs!1854020 (not (= lambda!395287 lambda!395284))))

(assert (=> bs!1854021 (= (and (= s!14361 (_2!37123 lt!2475267)) (= r1!6342 (regOne!34438 r3!135)) (= lt!2475243 (regTwo!34438 r3!135))) (= lambda!395287 lambda!395285))))

(declare-fun bs!1854025 () Bool)

(assert (= bs!1854025 d!2167479))

(assert (=> bs!1854025 (not (= lambda!395287 lambda!395286))))

(assert (=> bs!1854022 (not (= lambda!395287 lambda!395280))))

(assert (=> bs!1854022 (= (and (= s!14361 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= lt!2475243 r3!135)) (= lambda!395287 lambda!395281))))

(assert (=> bs!1854023 (not (= lambda!395287 lambda!395262))))

(assert (=> bs!1854013 (= (and (= s!14361 lt!2475259) (= lt!2475243 r2!6280)) (= lambda!395287 lambda!395228))))

(assert (=> bs!1854024 (= (and (= s!14361 (_2!37123 lt!2475244)) (= r1!6342 (regOne!34438 lt!2475243)) (= lt!2475243 (regTwo!34438 lt!2475243))) (= lambda!395287 lambda!395278))))

(assert (=> bs!1854017 (= (and (= s!14361 lt!2475259) (= lt!2475243 r2!6280)) (= lambda!395287 lambda!395272))))

(assert (=> bs!1854012 (not (= lambda!395287 lambda!395225))))

(assert (=> d!2167479 true))

(assert (=> d!2167479 true))

(assert (=> d!2167479 true))

(assert (=> d!2167479 (= (Exists!3963 lambda!395286) (Exists!3963 lambda!395287))))

(declare-fun lt!2475380 () Unit!160650)

(assert (=> d!2167479 (= lt!2475380 (choose!51698 r1!6342 lt!2475243 s!14361))))

(assert (=> d!2167479 (validRegex!8669 r1!6342)))

(assert (=> d!2167479 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2424 r1!6342 lt!2475243 s!14361) lt!2475380)))

(declare-fun m!7644862 () Bool)

(assert (=> bs!1854025 m!7644862))

(declare-fun m!7644864 () Bool)

(assert (=> bs!1854025 m!7644864))

(declare-fun m!7644866 () Bool)

(assert (=> bs!1854025 m!7644866))

(assert (=> bs!1854025 m!7644222))

(assert (=> b!6938772 d!2167479))

(declare-fun d!2167481 () Bool)

(assert (=> d!2167481 (= (get!23381 lt!2475249) (v!53003 lt!2475249))))

(assert (=> b!6938772 d!2167481))

(declare-fun bs!1854026 () Bool)

(declare-fun d!2167483 () Bool)

(assert (= bs!1854026 (and d!2167483 b!6939310)))

(declare-fun lambda!395288 () Int)

(assert (=> bs!1854026 (not (= lambda!395288 lambda!395276))))

(declare-fun bs!1854027 () Bool)

(assert (= bs!1854027 (and d!2167483 b!6939059)))

(assert (=> bs!1854027 (not (= lambda!395288 lambda!395247))))

(declare-fun bs!1854028 () Bool)

(assert (= bs!1854028 (and d!2167483 b!6938767)))

(assert (=> bs!1854028 (not (= lambda!395288 lambda!395226))))

(declare-fun bs!1854029 () Bool)

(assert (= bs!1854029 (and d!2167483 b!6938777)))

(assert (=> bs!1854029 (= (and (= s!14361 lt!2475259) (= lt!2475243 r2!6280)) (= lambda!395288 lambda!395227))))

(declare-fun bs!1854030 () Bool)

(assert (= bs!1854030 (and d!2167483 b!6939474)))

(assert (=> bs!1854030 (not (= lambda!395288 lambda!395283))))

(declare-fun bs!1854031 () Bool)

(assert (= bs!1854031 (and d!2167483 b!6938772)))

(assert (=> bs!1854031 (not (= lambda!395288 lambda!395224))))

(assert (=> bs!1854031 (= lambda!395288 lambda!395223)))

(declare-fun bs!1854032 () Bool)

(assert (= bs!1854032 (and d!2167483 d!2167397)))

(assert (=> bs!1854032 (= (and (= s!14361 lt!2475259) (= lt!2475243 r2!6280)) (= lambda!395288 lambda!395271))))

(declare-fun bs!1854033 () Bool)

(assert (= bs!1854033 (and d!2167483 b!6939056)))

(assert (=> bs!1854033 (not (= lambda!395288 lambda!395246))))

(declare-fun bs!1854034 () Bool)

(assert (= bs!1854034 (and d!2167483 b!6939471)))

(assert (=> bs!1854034 (not (= lambda!395288 lambda!395282))))

(declare-fun bs!1854035 () Bool)

(assert (= bs!1854035 (and d!2167483 b!6939482)))

(assert (=> bs!1854035 (not (= lambda!395288 lambda!395284))))

(declare-fun bs!1854036 () Bool)

(assert (= bs!1854036 (and d!2167483 b!6939485)))

(assert (=> bs!1854036 (not (= lambda!395288 lambda!395285))))

(declare-fun bs!1854037 () Bool)

(assert (= bs!1854037 (and d!2167483 d!2167479)))

(assert (=> bs!1854037 (= lambda!395288 lambda!395286)))

(declare-fun bs!1854038 () Bool)

(assert (= bs!1854038 (and d!2167483 d!2167443)))

(assert (=> bs!1854038 (= (and (= s!14361 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= lt!2475243 r3!135)) (= lambda!395288 lambda!395280))))

(assert (=> bs!1854038 (not (= lambda!395288 lambda!395281))))

(declare-fun bs!1854039 () Bool)

(assert (= bs!1854039 (and d!2167483 d!2167381)))

(assert (=> bs!1854039 (= (and (= s!14361 lt!2475259) (= lt!2475243 r2!6280)) (= lambda!395288 lambda!395262))))

(assert (=> bs!1854029 (not (= lambda!395288 lambda!395228))))

(declare-fun bs!1854040 () Bool)

(assert (= bs!1854040 (and d!2167483 b!6939313)))

(assert (=> bs!1854040 (not (= lambda!395288 lambda!395278))))

(assert (=> bs!1854032 (not (= lambda!395288 lambda!395272))))

(assert (=> bs!1854028 (= (and (= s!14361 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= lt!2475243 r3!135)) (= lambda!395288 lambda!395225))))

(assert (=> bs!1854037 (not (= lambda!395288 lambda!395287))))

(declare-fun bs!1854041 () Bool)

(assert (= bs!1854041 (and d!2167483 d!2167427)))

(assert (=> bs!1854041 (= (and (= s!14361 (_2!37123 lt!2475244)) (= r1!6342 r2!6280) (= lt!2475243 r3!135)) (= lambda!395288 lambda!395274))))

(assert (=> d!2167483 true))

(assert (=> d!2167483 true))

(assert (=> d!2167483 true))

(assert (=> d!2167483 (= (isDefined!13433 (findConcatSeparation!3146 r1!6342 lt!2475243 Nil!66592 s!14361 s!14361)) (Exists!3963 lambda!395288))))

(declare-fun lt!2475381 () Unit!160650)

(assert (=> d!2167483 (= lt!2475381 (choose!51695 r1!6342 lt!2475243 s!14361))))

(assert (=> d!2167483 (validRegex!8669 r1!6342)))

(assert (=> d!2167483 (= (lemmaFindConcatSeparationEquivalentToExists!2904 r1!6342 lt!2475243 s!14361) lt!2475381)))

(declare-fun bs!1854042 () Bool)

(assert (= bs!1854042 d!2167483))

(declare-fun m!7644868 () Bool)

(assert (=> bs!1854042 m!7644868))

(declare-fun m!7644870 () Bool)

(assert (=> bs!1854042 m!7644870))

(assert (=> bs!1854042 m!7644222))

(assert (=> bs!1854042 m!7644122))

(declare-fun m!7644872 () Bool)

(assert (=> bs!1854042 m!7644872))

(assert (=> bs!1854042 m!7644122))

(assert (=> b!6938772 d!2167483))

(declare-fun bs!1854043 () Bool)

(declare-fun b!6939538 () Bool)

(assert (= bs!1854043 (and b!6939538 b!6939310)))

(declare-fun lambda!395289 () Int)

(assert (=> bs!1854043 (= (and (= (_1!37123 lt!2475244) (_2!37123 lt!2475244)) (= (reg!17292 r1!6342) (reg!17292 lt!2475243)) (= r1!6342 lt!2475243)) (= lambda!395289 lambda!395276))))

(declare-fun bs!1854044 () Bool)

(assert (= bs!1854044 (and b!6939538 b!6939059)))

(assert (=> bs!1854044 (not (= lambda!395289 lambda!395247))))

(declare-fun bs!1854045 () Bool)

(assert (= bs!1854045 (and b!6939538 b!6938767)))

(assert (=> bs!1854045 (not (= lambda!395289 lambda!395226))))

(declare-fun bs!1854046 () Bool)

(assert (= bs!1854046 (and b!6939538 b!6938777)))

(assert (=> bs!1854046 (not (= lambda!395289 lambda!395227))))

(declare-fun bs!1854047 () Bool)

(assert (= bs!1854047 (and b!6939538 b!6939474)))

(assert (=> bs!1854047 (not (= lambda!395289 lambda!395283))))

(declare-fun bs!1854048 () Bool)

(assert (= bs!1854048 (and b!6939538 b!6938772)))

(assert (=> bs!1854048 (not (= lambda!395289 lambda!395224))))

(assert (=> bs!1854048 (not (= lambda!395289 lambda!395223))))

(declare-fun bs!1854049 () Bool)

(assert (= bs!1854049 (and b!6939538 d!2167397)))

(assert (=> bs!1854049 (not (= lambda!395289 lambda!395271))))

(declare-fun bs!1854050 () Bool)

(assert (= bs!1854050 (and b!6939538 b!6939056)))

(assert (=> bs!1854050 (= (and (= (_1!37123 lt!2475244) lt!2475259) (= (reg!17292 r1!6342) (reg!17292 lt!2475270)) (= r1!6342 lt!2475270)) (= lambda!395289 lambda!395246))))

(declare-fun bs!1854051 () Bool)

(assert (= bs!1854051 (and b!6939538 b!6939471)))

(assert (=> bs!1854051 (= (and (= (_1!37123 lt!2475244) (_1!37123 lt!2475267)) (= (reg!17292 r1!6342) (reg!17292 r2!6280)) (= r1!6342 r2!6280)) (= lambda!395289 lambda!395282))))

(declare-fun bs!1854052 () Bool)

(assert (= bs!1854052 (and b!6939538 b!6939482)))

(assert (=> bs!1854052 (= (and (= (_1!37123 lt!2475244) (_2!37123 lt!2475267)) (= (reg!17292 r1!6342) (reg!17292 r3!135)) (= r1!6342 r3!135)) (= lambda!395289 lambda!395284))))

(declare-fun bs!1854053 () Bool)

(assert (= bs!1854053 (and b!6939538 d!2167479)))

(assert (=> bs!1854053 (not (= lambda!395289 lambda!395286))))

(declare-fun bs!1854054 () Bool)

(assert (= bs!1854054 (and b!6939538 d!2167443)))

(assert (=> bs!1854054 (not (= lambda!395289 lambda!395280))))

(assert (=> bs!1854054 (not (= lambda!395289 lambda!395281))))

(declare-fun bs!1854055 () Bool)

(assert (= bs!1854055 (and b!6939538 d!2167381)))

(assert (=> bs!1854055 (not (= lambda!395289 lambda!395262))))

(assert (=> bs!1854046 (not (= lambda!395289 lambda!395228))))

(declare-fun bs!1854056 () Bool)

(assert (= bs!1854056 (and b!6939538 b!6939313)))

(assert (=> bs!1854056 (not (= lambda!395289 lambda!395278))))

(assert (=> bs!1854049 (not (= lambda!395289 lambda!395272))))

(assert (=> bs!1854045 (not (= lambda!395289 lambda!395225))))

(assert (=> bs!1854053 (not (= lambda!395289 lambda!395287))))

(declare-fun bs!1854057 () Bool)

(assert (= bs!1854057 (and b!6939538 d!2167427)))

(assert (=> bs!1854057 (not (= lambda!395289 lambda!395274))))

(declare-fun bs!1854058 () Bool)

(assert (= bs!1854058 (and b!6939538 d!2167483)))

(assert (=> bs!1854058 (not (= lambda!395289 lambda!395288))))

(declare-fun bs!1854059 () Bool)

(assert (= bs!1854059 (and b!6939538 b!6939485)))

(assert (=> bs!1854059 (not (= lambda!395289 lambda!395285))))

(assert (=> b!6939538 true))

(assert (=> b!6939538 true))

(declare-fun bs!1854060 () Bool)

(declare-fun b!6939541 () Bool)

(assert (= bs!1854060 (and b!6939541 b!6939310)))

(declare-fun lambda!395290 () Int)

(assert (=> bs!1854060 (not (= lambda!395290 lambda!395276))))

(declare-fun bs!1854061 () Bool)

(assert (= bs!1854061 (and b!6939541 b!6939059)))

(assert (=> bs!1854061 (= (and (= (_1!37123 lt!2475244) lt!2475259) (= (regOne!34438 r1!6342) (regOne!34438 lt!2475270)) (= (regTwo!34438 r1!6342) (regTwo!34438 lt!2475270))) (= lambda!395290 lambda!395247))))

(declare-fun bs!1854062 () Bool)

(assert (= bs!1854062 (and b!6939541 b!6938767)))

(assert (=> bs!1854062 (= (and (= (_1!37123 lt!2475244) (_2!37123 lt!2475244)) (= (regOne!34438 r1!6342) r2!6280) (= (regTwo!34438 r1!6342) r3!135)) (= lambda!395290 lambda!395226))))

(declare-fun bs!1854063 () Bool)

(assert (= bs!1854063 (and b!6939541 b!6938777)))

(assert (=> bs!1854063 (not (= lambda!395290 lambda!395227))))

(declare-fun bs!1854064 () Bool)

(assert (= bs!1854064 (and b!6939541 b!6939474)))

(assert (=> bs!1854064 (= (and (= (_1!37123 lt!2475244) (_1!37123 lt!2475267)) (= (regOne!34438 r1!6342) (regOne!34438 r2!6280)) (= (regTwo!34438 r1!6342) (regTwo!34438 r2!6280))) (= lambda!395290 lambda!395283))))

(declare-fun bs!1854065 () Bool)

(assert (= bs!1854065 (and b!6939541 b!6938772)))

(assert (=> bs!1854065 (= (and (= (_1!37123 lt!2475244) s!14361) (= (regOne!34438 r1!6342) r1!6342) (= (regTwo!34438 r1!6342) lt!2475243)) (= lambda!395290 lambda!395224))))

(assert (=> bs!1854065 (not (= lambda!395290 lambda!395223))))

(declare-fun bs!1854066 () Bool)

(assert (= bs!1854066 (and b!6939541 d!2167397)))

(assert (=> bs!1854066 (not (= lambda!395290 lambda!395271))))

(declare-fun bs!1854067 () Bool)

(assert (= bs!1854067 (and b!6939541 b!6939471)))

(assert (=> bs!1854067 (not (= lambda!395290 lambda!395282))))

(declare-fun bs!1854068 () Bool)

(assert (= bs!1854068 (and b!6939541 b!6939482)))

(assert (=> bs!1854068 (not (= lambda!395290 lambda!395284))))

(declare-fun bs!1854069 () Bool)

(assert (= bs!1854069 (and b!6939541 d!2167479)))

(assert (=> bs!1854069 (not (= lambda!395290 lambda!395286))))

(declare-fun bs!1854070 () Bool)

(assert (= bs!1854070 (and b!6939541 d!2167443)))

(assert (=> bs!1854070 (not (= lambda!395290 lambda!395280))))

(assert (=> bs!1854070 (= (and (= (_1!37123 lt!2475244) (_2!37123 lt!2475244)) (= (regOne!34438 r1!6342) r2!6280) (= (regTwo!34438 r1!6342) r3!135)) (= lambda!395290 lambda!395281))))

(declare-fun bs!1854071 () Bool)

(assert (= bs!1854071 (and b!6939541 d!2167381)))

(assert (=> bs!1854071 (not (= lambda!395290 lambda!395262))))

(assert (=> bs!1854063 (= (and (= (_1!37123 lt!2475244) lt!2475259) (= (regOne!34438 r1!6342) r1!6342) (= (regTwo!34438 r1!6342) r2!6280)) (= lambda!395290 lambda!395228))))

(declare-fun bs!1854072 () Bool)

(assert (= bs!1854072 (and b!6939541 b!6939313)))

(assert (=> bs!1854072 (= (and (= (_1!37123 lt!2475244) (_2!37123 lt!2475244)) (= (regOne!34438 r1!6342) (regOne!34438 lt!2475243)) (= (regTwo!34438 r1!6342) (regTwo!34438 lt!2475243))) (= lambda!395290 lambda!395278))))

(assert (=> bs!1854066 (= (and (= (_1!37123 lt!2475244) lt!2475259) (= (regOne!34438 r1!6342) r1!6342) (= (regTwo!34438 r1!6342) r2!6280)) (= lambda!395290 lambda!395272))))

(assert (=> bs!1854062 (not (= lambda!395290 lambda!395225))))

(assert (=> bs!1854069 (= (and (= (_1!37123 lt!2475244) s!14361) (= (regOne!34438 r1!6342) r1!6342) (= (regTwo!34438 r1!6342) lt!2475243)) (= lambda!395290 lambda!395287))))

(declare-fun bs!1854073 () Bool)

(assert (= bs!1854073 (and b!6939541 d!2167427)))

(assert (=> bs!1854073 (not (= lambda!395290 lambda!395274))))

(declare-fun bs!1854074 () Bool)

(assert (= bs!1854074 (and b!6939541 b!6939056)))

(assert (=> bs!1854074 (not (= lambda!395290 lambda!395246))))

(declare-fun bs!1854075 () Bool)

(assert (= bs!1854075 (and b!6939541 b!6939538)))

(assert (=> bs!1854075 (not (= lambda!395290 lambda!395289))))

(declare-fun bs!1854076 () Bool)

(assert (= bs!1854076 (and b!6939541 d!2167483)))

(assert (=> bs!1854076 (not (= lambda!395290 lambda!395288))))

(declare-fun bs!1854077 () Bool)

(assert (= bs!1854077 (and b!6939541 b!6939485)))

(assert (=> bs!1854077 (= (and (= (_1!37123 lt!2475244) (_2!37123 lt!2475267)) (= (regOne!34438 r1!6342) (regOne!34438 r3!135)) (= (regTwo!34438 r1!6342) (regTwo!34438 r3!135))) (= lambda!395290 lambda!395285))))

(assert (=> b!6939541 true))

(assert (=> b!6939541 true))

(declare-fun bm!630463 () Bool)

(declare-fun call!630468 () Bool)

(assert (=> bm!630463 (= call!630468 (isEmpty!38862 (_1!37123 lt!2475244)))))

(declare-fun b!6939531 () Bool)

(declare-fun res!2830701 () Bool)

(declare-fun e!4174802 () Bool)

(assert (=> b!6939531 (=> res!2830701 e!4174802)))

(assert (=> b!6939531 (= res!2830701 call!630468)))

(declare-fun e!4174805 () Bool)

(assert (=> b!6939531 (= e!4174805 e!4174802)))

(declare-fun b!6939532 () Bool)

(declare-fun e!4174806 () Bool)

(declare-fun e!4174807 () Bool)

(assert (=> b!6939532 (= e!4174806 e!4174807)))

(declare-fun res!2830700 () Bool)

(assert (=> b!6939532 (= res!2830700 (matchRSpec!4020 (regOne!34439 r1!6342) (_1!37123 lt!2475244)))))

(assert (=> b!6939532 (=> res!2830700 e!4174807)))

(declare-fun b!6939533 () Bool)

(assert (=> b!6939533 (= e!4174807 (matchRSpec!4020 (regTwo!34439 r1!6342) (_1!37123 lt!2475244)))))

(declare-fun c!1287682 () Bool)

(declare-fun call!630469 () Bool)

(declare-fun bm!630464 () Bool)

(assert (=> bm!630464 (= call!630469 (Exists!3963 (ite c!1287682 lambda!395289 lambda!395290)))))

(declare-fun b!6939534 () Bool)

(declare-fun e!4174804 () Bool)

(assert (=> b!6939534 (= e!4174804 call!630468)))

(declare-fun b!6939536 () Bool)

(declare-fun c!1287683 () Bool)

(assert (=> b!6939536 (= c!1287683 ((_ is ElementMatch!16963) r1!6342))))

(declare-fun e!4174801 () Bool)

(declare-fun e!4174803 () Bool)

(assert (=> b!6939536 (= e!4174801 e!4174803)))

(declare-fun b!6939537 () Bool)

(assert (=> b!6939537 (= e!4174803 (= (_1!37123 lt!2475244) (Cons!66592 (c!1287519 r1!6342) Nil!66592)))))

(assert (=> b!6939538 (= e!4174802 call!630469)))

(declare-fun b!6939539 () Bool)

(declare-fun c!1287685 () Bool)

(assert (=> b!6939539 (= c!1287685 ((_ is Union!16963) r1!6342))))

(assert (=> b!6939539 (= e!4174803 e!4174806)))

(declare-fun b!6939540 () Bool)

(assert (=> b!6939540 (= e!4174804 e!4174801)))

(declare-fun res!2830699 () Bool)

(assert (=> b!6939540 (= res!2830699 (not ((_ is EmptyLang!16963) r1!6342)))))

(assert (=> b!6939540 (=> (not res!2830699) (not e!4174801))))

(assert (=> b!6939541 (= e!4174805 call!630469)))

(declare-fun b!6939535 () Bool)

(assert (=> b!6939535 (= e!4174806 e!4174805)))

(assert (=> b!6939535 (= c!1287682 ((_ is Star!16963) r1!6342))))

(declare-fun d!2167485 () Bool)

(declare-fun c!1287684 () Bool)

(assert (=> d!2167485 (= c!1287684 ((_ is EmptyExpr!16963) r1!6342))))

(assert (=> d!2167485 (= (matchRSpec!4020 r1!6342 (_1!37123 lt!2475244)) e!4174804)))

(assert (= (and d!2167485 c!1287684) b!6939534))

(assert (= (and d!2167485 (not c!1287684)) b!6939540))

(assert (= (and b!6939540 res!2830699) b!6939536))

(assert (= (and b!6939536 c!1287683) b!6939537))

(assert (= (and b!6939536 (not c!1287683)) b!6939539))

(assert (= (and b!6939539 c!1287685) b!6939532))

(assert (= (and b!6939539 (not c!1287685)) b!6939535))

(assert (= (and b!6939532 (not res!2830700)) b!6939533))

(assert (= (and b!6939535 c!1287682) b!6939531))

(assert (= (and b!6939535 (not c!1287682)) b!6939541))

(assert (= (and b!6939531 (not res!2830701)) b!6939538))

(assert (= (or b!6939538 b!6939541) bm!630464))

(assert (= (or b!6939534 b!6939531) bm!630463))

(assert (=> bm!630463 m!7644848))

(declare-fun m!7644874 () Bool)

(assert (=> b!6939532 m!7644874))

(declare-fun m!7644876 () Bool)

(assert (=> b!6939533 m!7644876))

(declare-fun m!7644878 () Bool)

(assert (=> bm!630464 m!7644878))

(assert (=> b!6938772 d!2167485))

(declare-fun call!630471 () Bool)

(declare-fun c!1287686 () Bool)

(declare-fun c!1287687 () Bool)

(declare-fun bm!630465 () Bool)

(assert (=> bm!630465 (= call!630471 (validRegex!8669 (ite c!1287686 (reg!17292 lt!2475270) (ite c!1287687 (regOne!34439 lt!2475270) (regTwo!34438 lt!2475270)))))))

(declare-fun b!6939542 () Bool)

(declare-fun e!4174814 () Bool)

(assert (=> b!6939542 (= e!4174814 call!630471)))

(declare-fun b!6939543 () Bool)

(declare-fun e!4174810 () Bool)

(assert (=> b!6939543 (= e!4174810 e!4174814)))

(declare-fun res!2830702 () Bool)

(assert (=> b!6939543 (= res!2830702 (not (nullable!6780 (reg!17292 lt!2475270))))))

(assert (=> b!6939543 (=> (not res!2830702) (not e!4174814))))

(declare-fun bm!630466 () Bool)

(declare-fun call!630470 () Bool)

(assert (=> bm!630466 (= call!630470 call!630471)))

(declare-fun bm!630467 () Bool)

(declare-fun call!630472 () Bool)

(assert (=> bm!630467 (= call!630472 (validRegex!8669 (ite c!1287687 (regTwo!34439 lt!2475270) (regOne!34438 lt!2475270))))))

(declare-fun b!6939544 () Bool)

(declare-fun e!4174808 () Bool)

(assert (=> b!6939544 (= e!4174808 call!630470)))

(declare-fun b!6939545 () Bool)

(declare-fun e!4174811 () Bool)

(assert (=> b!6939545 (= e!4174811 e!4174810)))

(assert (=> b!6939545 (= c!1287686 ((_ is Star!16963) lt!2475270))))

(declare-fun d!2167487 () Bool)

(declare-fun res!2830705 () Bool)

(assert (=> d!2167487 (=> res!2830705 e!4174811)))

(assert (=> d!2167487 (= res!2830705 ((_ is ElementMatch!16963) lt!2475270))))

(assert (=> d!2167487 (= (validRegex!8669 lt!2475270) e!4174811)))

(declare-fun b!6939546 () Bool)

(declare-fun res!2830704 () Bool)

(declare-fun e!4174809 () Bool)

(assert (=> b!6939546 (=> res!2830704 e!4174809)))

(assert (=> b!6939546 (= res!2830704 (not ((_ is Concat!25808) lt!2475270)))))

(declare-fun e!4174813 () Bool)

(assert (=> b!6939546 (= e!4174813 e!4174809)))

(declare-fun b!6939547 () Bool)

(assert (=> b!6939547 (= e!4174810 e!4174813)))

(assert (=> b!6939547 (= c!1287687 ((_ is Union!16963) lt!2475270))))

(declare-fun b!6939548 () Bool)

(assert (=> b!6939548 (= e!4174809 e!4174808)))

(declare-fun res!2830703 () Bool)

(assert (=> b!6939548 (=> (not res!2830703) (not e!4174808))))

(assert (=> b!6939548 (= res!2830703 call!630472)))

(declare-fun b!6939549 () Bool)

(declare-fun res!2830706 () Bool)

(declare-fun e!4174812 () Bool)

(assert (=> b!6939549 (=> (not res!2830706) (not e!4174812))))

(assert (=> b!6939549 (= res!2830706 call!630470)))

(assert (=> b!6939549 (= e!4174813 e!4174812)))

(declare-fun b!6939550 () Bool)

(assert (=> b!6939550 (= e!4174812 call!630472)))

(assert (= (and d!2167487 (not res!2830705)) b!6939545))

(assert (= (and b!6939545 c!1287686) b!6939543))

(assert (= (and b!6939545 (not c!1287686)) b!6939547))

(assert (= (and b!6939543 res!2830702) b!6939542))

(assert (= (and b!6939547 c!1287687) b!6939549))

(assert (= (and b!6939547 (not c!1287687)) b!6939546))

(assert (= (and b!6939549 res!2830706) b!6939550))

(assert (= (and b!6939546 (not res!2830704)) b!6939548))

(assert (= (and b!6939548 res!2830703) b!6939544))

(assert (= (or b!6939549 b!6939544) bm!630466))

(assert (= (or b!6939550 b!6939548) bm!630467))

(assert (= (or b!6939542 bm!630466) bm!630465))

(declare-fun m!7644880 () Bool)

(assert (=> bm!630465 m!7644880))

(declare-fun m!7644882 () Bool)

(assert (=> b!6939543 m!7644882))

(declare-fun m!7644884 () Bool)

(assert (=> bm!630467 m!7644884))

(assert (=> b!6938761 d!2167487))

(declare-fun d!2167489 () Bool)

(assert (=> d!2167489 (= (isDefined!13433 (findConcatSeparation!3146 lt!2475270 r3!135 Nil!66592 s!14361 s!14361)) (not (isEmpty!38863 (findConcatSeparation!3146 lt!2475270 r3!135 Nil!66592 s!14361 s!14361))))))

(declare-fun bs!1854078 () Bool)

(assert (= bs!1854078 d!2167489))

(assert (=> bs!1854078 m!7644126))

(declare-fun m!7644886 () Bool)

(assert (=> bs!1854078 m!7644886))

(assert (=> b!6938761 d!2167489))

(declare-fun b!6939551 () Bool)

(declare-fun res!2830707 () Bool)

(declare-fun e!4174817 () Bool)

(assert (=> b!6939551 (=> (not res!2830707) (not e!4174817))))

(declare-fun lt!2475383 () Option!16732)

(assert (=> b!6939551 (= res!2830707 (matchR!9102 lt!2475270 (_1!37123 (get!23381 lt!2475383))))))

(declare-fun b!6939552 () Bool)

(declare-fun e!4174816 () Bool)

(assert (=> b!6939552 (= e!4174816 (not (isDefined!13433 lt!2475383)))))

(declare-fun d!2167491 () Bool)

(assert (=> d!2167491 e!4174816))

(declare-fun res!2830711 () Bool)

(assert (=> d!2167491 (=> res!2830711 e!4174816)))

(assert (=> d!2167491 (= res!2830711 e!4174817)))

(declare-fun res!2830708 () Bool)

(assert (=> d!2167491 (=> (not res!2830708) (not e!4174817))))

(assert (=> d!2167491 (= res!2830708 (isDefined!13433 lt!2475383))))

(declare-fun e!4174818 () Option!16732)

(assert (=> d!2167491 (= lt!2475383 e!4174818)))

(declare-fun c!1287688 () Bool)

(declare-fun e!4174819 () Bool)

(assert (=> d!2167491 (= c!1287688 e!4174819)))

(declare-fun res!2830709 () Bool)

(assert (=> d!2167491 (=> (not res!2830709) (not e!4174819))))

(assert (=> d!2167491 (= res!2830709 (matchR!9102 lt!2475270 Nil!66592))))

(assert (=> d!2167491 (validRegex!8669 lt!2475270)))

(assert (=> d!2167491 (= (findConcatSeparation!3146 lt!2475270 r3!135 Nil!66592 s!14361 s!14361) lt!2475383)))

(declare-fun b!6939553 () Bool)

(declare-fun lt!2475382 () Unit!160650)

(declare-fun lt!2475384 () Unit!160650)

(assert (=> b!6939553 (= lt!2475382 lt!2475384)))

(assert (=> b!6939553 (= (++!15002 (++!15002 Nil!66592 (Cons!66592 (h!73040 s!14361) Nil!66592)) (t!380459 s!14361)) s!14361)))

(assert (=> b!6939553 (= lt!2475384 (lemmaMoveElementToOtherListKeepsConcatEq!2859 Nil!66592 (h!73040 s!14361) (t!380459 s!14361) s!14361))))

(declare-fun e!4174815 () Option!16732)

(assert (=> b!6939553 (= e!4174815 (findConcatSeparation!3146 lt!2475270 r3!135 (++!15002 Nil!66592 (Cons!66592 (h!73040 s!14361) Nil!66592)) (t!380459 s!14361) s!14361))))

(declare-fun b!6939554 () Bool)

(assert (=> b!6939554 (= e!4174818 (Some!16731 (tuple2!67641 Nil!66592 s!14361)))))

(declare-fun b!6939555 () Bool)

(declare-fun res!2830710 () Bool)

(assert (=> b!6939555 (=> (not res!2830710) (not e!4174817))))

(assert (=> b!6939555 (= res!2830710 (matchR!9102 r3!135 (_2!37123 (get!23381 lt!2475383))))))

(declare-fun b!6939556 () Bool)

(assert (=> b!6939556 (= e!4174819 (matchR!9102 r3!135 s!14361))))

(declare-fun b!6939557 () Bool)

(assert (=> b!6939557 (= e!4174817 (= (++!15002 (_1!37123 (get!23381 lt!2475383)) (_2!37123 (get!23381 lt!2475383))) s!14361))))

(declare-fun b!6939558 () Bool)

(assert (=> b!6939558 (= e!4174815 None!16731)))

(declare-fun b!6939559 () Bool)

(assert (=> b!6939559 (= e!4174818 e!4174815)))

(declare-fun c!1287689 () Bool)

(assert (=> b!6939559 (= c!1287689 ((_ is Nil!66592) s!14361))))

(assert (= (and d!2167491 res!2830709) b!6939556))

(assert (= (and d!2167491 c!1287688) b!6939554))

(assert (= (and d!2167491 (not c!1287688)) b!6939559))

(assert (= (and b!6939559 c!1287689) b!6939558))

(assert (= (and b!6939559 (not c!1287689)) b!6939553))

(assert (= (and d!2167491 res!2830708) b!6939551))

(assert (= (and b!6939551 res!2830707) b!6939555))

(assert (= (and b!6939555 res!2830710) b!6939557))

(assert (= (and d!2167491 (not res!2830711)) b!6939552))

(declare-fun m!7644888 () Bool)

(assert (=> b!6939555 m!7644888))

(declare-fun m!7644890 () Bool)

(assert (=> b!6939555 m!7644890))

(declare-fun m!7644892 () Bool)

(assert (=> b!6939552 m!7644892))

(assert (=> b!6939553 m!7644770))

(assert (=> b!6939553 m!7644770))

(assert (=> b!6939553 m!7644772))

(assert (=> b!6939553 m!7644774))

(assert (=> b!6939553 m!7644770))

(declare-fun m!7644894 () Bool)

(assert (=> b!6939553 m!7644894))

(assert (=> b!6939551 m!7644888))

(declare-fun m!7644896 () Bool)

(assert (=> b!6939551 m!7644896))

(assert (=> d!2167491 m!7644892))

(declare-fun m!7644898 () Bool)

(assert (=> d!2167491 m!7644898))

(assert (=> d!2167491 m!7644124))

(assert (=> b!6939557 m!7644888))

(declare-fun m!7644900 () Bool)

(assert (=> b!6939557 m!7644900))

(declare-fun m!7644902 () Bool)

(assert (=> b!6939556 m!7644902))

(assert (=> b!6938761 d!2167491))

(declare-fun d!2167493 () Bool)

(assert (=> d!2167493 (isDefined!13433 (findConcatSeparation!3146 lt!2475270 r3!135 Nil!66592 s!14361 s!14361))))

(declare-fun lt!2475385 () Unit!160650)

(assert (=> d!2167493 (= lt!2475385 (choose!51697 lt!2475270 r3!135 lt!2475259 (_2!37123 lt!2475267) s!14361 Nil!66592 s!14361))))

(assert (=> d!2167493 (validRegex!8669 lt!2475270)))

(assert (=> d!2167493 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!106 lt!2475270 r3!135 lt!2475259 (_2!37123 lt!2475267) s!14361 Nil!66592 s!14361) lt!2475385)))

(declare-fun bs!1854079 () Bool)

(assert (= bs!1854079 d!2167493))

(assert (=> bs!1854079 m!7644126))

(assert (=> bs!1854079 m!7644126))

(assert (=> bs!1854079 m!7644128))

(declare-fun m!7644904 () Bool)

(assert (=> bs!1854079 m!7644904))

(assert (=> bs!1854079 m!7644124))

(assert (=> b!6938761 d!2167493))

(declare-fun bs!1854080 () Bool)

(declare-fun b!6939567 () Bool)

(assert (= bs!1854080 (and b!6939567 b!6939310)))

(declare-fun lambda!395291 () Int)

(assert (=> bs!1854080 (= (and (= s!14361 (_2!37123 lt!2475244)) (= (reg!17292 lt!2475269) (reg!17292 lt!2475243)) (= lt!2475269 lt!2475243)) (= lambda!395291 lambda!395276))))

(declare-fun bs!1854081 () Bool)

(assert (= bs!1854081 (and b!6939567 b!6939059)))

(assert (=> bs!1854081 (not (= lambda!395291 lambda!395247))))

(declare-fun bs!1854082 () Bool)

(assert (= bs!1854082 (and b!6939567 b!6938767)))

(assert (=> bs!1854082 (not (= lambda!395291 lambda!395226))))

(declare-fun bs!1854083 () Bool)

(assert (= bs!1854083 (and b!6939567 b!6938777)))

(assert (=> bs!1854083 (not (= lambda!395291 lambda!395227))))

(declare-fun bs!1854084 () Bool)

(assert (= bs!1854084 (and b!6939567 b!6939474)))

(assert (=> bs!1854084 (not (= lambda!395291 lambda!395283))))

(declare-fun bs!1854085 () Bool)

(assert (= bs!1854085 (and b!6939567 b!6938772)))

(assert (=> bs!1854085 (not (= lambda!395291 lambda!395224))))

(assert (=> bs!1854085 (not (= lambda!395291 lambda!395223))))

(declare-fun bs!1854086 () Bool)

(assert (= bs!1854086 (and b!6939567 d!2167397)))

(assert (=> bs!1854086 (not (= lambda!395291 lambda!395271))))

(declare-fun bs!1854087 () Bool)

(assert (= bs!1854087 (and b!6939567 b!6939471)))

(assert (=> bs!1854087 (= (and (= s!14361 (_1!37123 lt!2475267)) (= (reg!17292 lt!2475269) (reg!17292 r2!6280)) (= lt!2475269 r2!6280)) (= lambda!395291 lambda!395282))))

(declare-fun bs!1854088 () Bool)

(assert (= bs!1854088 (and b!6939567 b!6939482)))

(assert (=> bs!1854088 (= (and (= s!14361 (_2!37123 lt!2475267)) (= (reg!17292 lt!2475269) (reg!17292 r3!135)) (= lt!2475269 r3!135)) (= lambda!395291 lambda!395284))))

(declare-fun bs!1854089 () Bool)

(assert (= bs!1854089 (and b!6939567 d!2167479)))

(assert (=> bs!1854089 (not (= lambda!395291 lambda!395286))))

(declare-fun bs!1854090 () Bool)

(assert (= bs!1854090 (and b!6939567 d!2167443)))

(assert (=> bs!1854090 (not (= lambda!395291 lambda!395280))))

(assert (=> bs!1854090 (not (= lambda!395291 lambda!395281))))

(declare-fun bs!1854091 () Bool)

(assert (= bs!1854091 (and b!6939567 d!2167381)))

(assert (=> bs!1854091 (not (= lambda!395291 lambda!395262))))

(assert (=> bs!1854083 (not (= lambda!395291 lambda!395228))))

(declare-fun bs!1854092 () Bool)

(assert (= bs!1854092 (and b!6939567 b!6939541)))

(assert (=> bs!1854092 (not (= lambda!395291 lambda!395290))))

(declare-fun bs!1854093 () Bool)

(assert (= bs!1854093 (and b!6939567 b!6939313)))

(assert (=> bs!1854093 (not (= lambda!395291 lambda!395278))))

(assert (=> bs!1854086 (not (= lambda!395291 lambda!395272))))

(assert (=> bs!1854082 (not (= lambda!395291 lambda!395225))))

(assert (=> bs!1854089 (not (= lambda!395291 lambda!395287))))

(declare-fun bs!1854094 () Bool)

(assert (= bs!1854094 (and b!6939567 d!2167427)))

(assert (=> bs!1854094 (not (= lambda!395291 lambda!395274))))

(declare-fun bs!1854095 () Bool)

(assert (= bs!1854095 (and b!6939567 b!6939056)))

(assert (=> bs!1854095 (= (and (= s!14361 lt!2475259) (= (reg!17292 lt!2475269) (reg!17292 lt!2475270)) (= lt!2475269 lt!2475270)) (= lambda!395291 lambda!395246))))

(declare-fun bs!1854096 () Bool)

(assert (= bs!1854096 (and b!6939567 b!6939538)))

(assert (=> bs!1854096 (= (and (= s!14361 (_1!37123 lt!2475244)) (= (reg!17292 lt!2475269) (reg!17292 r1!6342)) (= lt!2475269 r1!6342)) (= lambda!395291 lambda!395289))))

(declare-fun bs!1854097 () Bool)

(assert (= bs!1854097 (and b!6939567 d!2167483)))

(assert (=> bs!1854097 (not (= lambda!395291 lambda!395288))))

(declare-fun bs!1854098 () Bool)

(assert (= bs!1854098 (and b!6939567 b!6939485)))

(assert (=> bs!1854098 (not (= lambda!395291 lambda!395285))))

(assert (=> b!6939567 true))

(assert (=> b!6939567 true))

(declare-fun bs!1854099 () Bool)

(declare-fun b!6939570 () Bool)

(assert (= bs!1854099 (and b!6939570 b!6939310)))

(declare-fun lambda!395292 () Int)

(assert (=> bs!1854099 (not (= lambda!395292 lambda!395276))))

(declare-fun bs!1854100 () Bool)

(assert (= bs!1854100 (and b!6939570 b!6939059)))

(assert (=> bs!1854100 (= (and (= s!14361 lt!2475259) (= (regOne!34438 lt!2475269) (regOne!34438 lt!2475270)) (= (regTwo!34438 lt!2475269) (regTwo!34438 lt!2475270))) (= lambda!395292 lambda!395247))))

(declare-fun bs!1854101 () Bool)

(assert (= bs!1854101 (and b!6939570 b!6938767)))

(assert (=> bs!1854101 (= (and (= s!14361 (_2!37123 lt!2475244)) (= (regOne!34438 lt!2475269) r2!6280) (= (regTwo!34438 lt!2475269) r3!135)) (= lambda!395292 lambda!395226))))

(declare-fun bs!1854102 () Bool)

(assert (= bs!1854102 (and b!6939570 b!6938777)))

(assert (=> bs!1854102 (not (= lambda!395292 lambda!395227))))

(declare-fun bs!1854103 () Bool)

(assert (= bs!1854103 (and b!6939570 b!6939474)))

(assert (=> bs!1854103 (= (and (= s!14361 (_1!37123 lt!2475267)) (= (regOne!34438 lt!2475269) (regOne!34438 r2!6280)) (= (regTwo!34438 lt!2475269) (regTwo!34438 r2!6280))) (= lambda!395292 lambda!395283))))

(declare-fun bs!1854104 () Bool)

(assert (= bs!1854104 (and b!6939570 b!6938772)))

(assert (=> bs!1854104 (= (and (= (regOne!34438 lt!2475269) r1!6342) (= (regTwo!34438 lt!2475269) lt!2475243)) (= lambda!395292 lambda!395224))))

(assert (=> bs!1854104 (not (= lambda!395292 lambda!395223))))

(declare-fun bs!1854105 () Bool)

(assert (= bs!1854105 (and b!6939570 d!2167397)))

(assert (=> bs!1854105 (not (= lambda!395292 lambda!395271))))

(declare-fun bs!1854106 () Bool)

(assert (= bs!1854106 (and b!6939570 b!6939567)))

(assert (=> bs!1854106 (not (= lambda!395292 lambda!395291))))

(declare-fun bs!1854107 () Bool)

(assert (= bs!1854107 (and b!6939570 b!6939471)))

(assert (=> bs!1854107 (not (= lambda!395292 lambda!395282))))

(declare-fun bs!1854108 () Bool)

(assert (= bs!1854108 (and b!6939570 b!6939482)))

(assert (=> bs!1854108 (not (= lambda!395292 lambda!395284))))

(declare-fun bs!1854109 () Bool)

(assert (= bs!1854109 (and b!6939570 d!2167479)))

(assert (=> bs!1854109 (not (= lambda!395292 lambda!395286))))

(declare-fun bs!1854110 () Bool)

(assert (= bs!1854110 (and b!6939570 d!2167443)))

(assert (=> bs!1854110 (not (= lambda!395292 lambda!395280))))

(assert (=> bs!1854110 (= (and (= s!14361 (_2!37123 lt!2475244)) (= (regOne!34438 lt!2475269) r2!6280) (= (regTwo!34438 lt!2475269) r3!135)) (= lambda!395292 lambda!395281))))

(declare-fun bs!1854111 () Bool)

(assert (= bs!1854111 (and b!6939570 d!2167381)))

(assert (=> bs!1854111 (not (= lambda!395292 lambda!395262))))

(assert (=> bs!1854102 (= (and (= s!14361 lt!2475259) (= (regOne!34438 lt!2475269) r1!6342) (= (regTwo!34438 lt!2475269) r2!6280)) (= lambda!395292 lambda!395228))))

(declare-fun bs!1854112 () Bool)

(assert (= bs!1854112 (and b!6939570 b!6939541)))

(assert (=> bs!1854112 (= (and (= s!14361 (_1!37123 lt!2475244)) (= (regOne!34438 lt!2475269) (regOne!34438 r1!6342)) (= (regTwo!34438 lt!2475269) (regTwo!34438 r1!6342))) (= lambda!395292 lambda!395290))))

(declare-fun bs!1854113 () Bool)

(assert (= bs!1854113 (and b!6939570 b!6939313)))

(assert (=> bs!1854113 (= (and (= s!14361 (_2!37123 lt!2475244)) (= (regOne!34438 lt!2475269) (regOne!34438 lt!2475243)) (= (regTwo!34438 lt!2475269) (regTwo!34438 lt!2475243))) (= lambda!395292 lambda!395278))))

(assert (=> bs!1854105 (= (and (= s!14361 lt!2475259) (= (regOne!34438 lt!2475269) r1!6342) (= (regTwo!34438 lt!2475269) r2!6280)) (= lambda!395292 lambda!395272))))

(assert (=> bs!1854101 (not (= lambda!395292 lambda!395225))))

(assert (=> bs!1854109 (= (and (= (regOne!34438 lt!2475269) r1!6342) (= (regTwo!34438 lt!2475269) lt!2475243)) (= lambda!395292 lambda!395287))))

(declare-fun bs!1854114 () Bool)

(assert (= bs!1854114 (and b!6939570 d!2167427)))

(assert (=> bs!1854114 (not (= lambda!395292 lambda!395274))))

(declare-fun bs!1854115 () Bool)

(assert (= bs!1854115 (and b!6939570 b!6939056)))

(assert (=> bs!1854115 (not (= lambda!395292 lambda!395246))))

(declare-fun bs!1854116 () Bool)

(assert (= bs!1854116 (and b!6939570 b!6939538)))

(assert (=> bs!1854116 (not (= lambda!395292 lambda!395289))))

(declare-fun bs!1854117 () Bool)

(assert (= bs!1854117 (and b!6939570 d!2167483)))

(assert (=> bs!1854117 (not (= lambda!395292 lambda!395288))))

(declare-fun bs!1854118 () Bool)

(assert (= bs!1854118 (and b!6939570 b!6939485)))

(assert (=> bs!1854118 (= (and (= s!14361 (_2!37123 lt!2475267)) (= (regOne!34438 lt!2475269) (regOne!34438 r3!135)) (= (regTwo!34438 lt!2475269) (regTwo!34438 r3!135))) (= lambda!395292 lambda!395285))))

(assert (=> b!6939570 true))

(assert (=> b!6939570 true))

(declare-fun bm!630468 () Bool)

(declare-fun call!630473 () Bool)

(assert (=> bm!630468 (= call!630473 (isEmpty!38862 s!14361))))

(declare-fun b!6939560 () Bool)

(declare-fun res!2830714 () Bool)

(declare-fun e!4174821 () Bool)

(assert (=> b!6939560 (=> res!2830714 e!4174821)))

(assert (=> b!6939560 (= res!2830714 call!630473)))

(declare-fun e!4174824 () Bool)

(assert (=> b!6939560 (= e!4174824 e!4174821)))

(declare-fun b!6939561 () Bool)

(declare-fun e!4174825 () Bool)

(declare-fun e!4174826 () Bool)

(assert (=> b!6939561 (= e!4174825 e!4174826)))

(declare-fun res!2830713 () Bool)

(assert (=> b!6939561 (= res!2830713 (matchRSpec!4020 (regOne!34439 lt!2475269) s!14361))))

(assert (=> b!6939561 (=> res!2830713 e!4174826)))

(declare-fun b!6939562 () Bool)

(assert (=> b!6939562 (= e!4174826 (matchRSpec!4020 (regTwo!34439 lt!2475269) s!14361))))

(declare-fun c!1287690 () Bool)

(declare-fun bm!630469 () Bool)

(declare-fun call!630474 () Bool)

(assert (=> bm!630469 (= call!630474 (Exists!3963 (ite c!1287690 lambda!395291 lambda!395292)))))

(declare-fun b!6939563 () Bool)

(declare-fun e!4174823 () Bool)

(assert (=> b!6939563 (= e!4174823 call!630473)))

(declare-fun b!6939565 () Bool)

(declare-fun c!1287691 () Bool)

(assert (=> b!6939565 (= c!1287691 ((_ is ElementMatch!16963) lt!2475269))))

(declare-fun e!4174820 () Bool)

(declare-fun e!4174822 () Bool)

(assert (=> b!6939565 (= e!4174820 e!4174822)))

(declare-fun b!6939566 () Bool)

(assert (=> b!6939566 (= e!4174822 (= s!14361 (Cons!66592 (c!1287519 lt!2475269) Nil!66592)))))

(assert (=> b!6939567 (= e!4174821 call!630474)))

(declare-fun b!6939568 () Bool)

(declare-fun c!1287693 () Bool)

(assert (=> b!6939568 (= c!1287693 ((_ is Union!16963) lt!2475269))))

(assert (=> b!6939568 (= e!4174822 e!4174825)))

(declare-fun b!6939569 () Bool)

(assert (=> b!6939569 (= e!4174823 e!4174820)))

(declare-fun res!2830712 () Bool)

(assert (=> b!6939569 (= res!2830712 (not ((_ is EmptyLang!16963) lt!2475269)))))

(assert (=> b!6939569 (=> (not res!2830712) (not e!4174820))))

(assert (=> b!6939570 (= e!4174824 call!630474)))

(declare-fun b!6939564 () Bool)

(assert (=> b!6939564 (= e!4174825 e!4174824)))

(assert (=> b!6939564 (= c!1287690 ((_ is Star!16963) lt!2475269))))

(declare-fun d!2167495 () Bool)

(declare-fun c!1287692 () Bool)

(assert (=> d!2167495 (= c!1287692 ((_ is EmptyExpr!16963) lt!2475269))))

(assert (=> d!2167495 (= (matchRSpec!4020 lt!2475269 s!14361) e!4174823)))

(assert (= (and d!2167495 c!1287692) b!6939563))

(assert (= (and d!2167495 (not c!1287692)) b!6939569))

(assert (= (and b!6939569 res!2830712) b!6939565))

(assert (= (and b!6939565 c!1287691) b!6939566))

(assert (= (and b!6939565 (not c!1287691)) b!6939568))

(assert (= (and b!6939568 c!1287693) b!6939561))

(assert (= (and b!6939568 (not c!1287693)) b!6939564))

(assert (= (and b!6939561 (not res!2830713)) b!6939562))

(assert (= (and b!6939564 c!1287690) b!6939560))

(assert (= (and b!6939564 (not c!1287690)) b!6939570))

(assert (= (and b!6939560 (not res!2830714)) b!6939567))

(assert (= (or b!6939567 b!6939570) bm!630469))

(assert (= (or b!6939563 b!6939560) bm!630468))

(declare-fun m!7644906 () Bool)

(assert (=> bm!630468 m!7644906))

(declare-fun m!7644908 () Bool)

(assert (=> b!6939561 m!7644908))

(declare-fun m!7644910 () Bool)

(assert (=> b!6939562 m!7644910))

(declare-fun m!7644912 () Bool)

(assert (=> bm!630469 m!7644912))

(assert (=> b!6938773 d!2167495))

(declare-fun d!2167497 () Bool)

(assert (=> d!2167497 (= (matchR!9102 lt!2475269 s!14361) (matchRSpec!4020 lt!2475269 s!14361))))

(declare-fun lt!2475386 () Unit!160650)

(assert (=> d!2167497 (= lt!2475386 (choose!51696 lt!2475269 s!14361))))

(assert (=> d!2167497 (validRegex!8669 lt!2475269)))

(assert (=> d!2167497 (= (mainMatchTheorem!4020 lt!2475269 s!14361) lt!2475386)))

(declare-fun bs!1854119 () Bool)

(assert (= bs!1854119 d!2167497))

(assert (=> bs!1854119 m!7644166))

(assert (=> bs!1854119 m!7644160))

(declare-fun m!7644914 () Bool)

(assert (=> bs!1854119 m!7644914))

(declare-fun m!7644916 () Bool)

(assert (=> bs!1854119 m!7644916))

(assert (=> b!6938773 d!2167497))

(declare-fun b!6939571 () Bool)

(declare-fun res!2830715 () Bool)

(declare-fun e!4174828 () Bool)

(assert (=> b!6939571 (=> (not res!2830715) (not e!4174828))))

(assert (=> b!6939571 (= res!2830715 (isEmpty!38862 (tail!12960 s!14361)))))

(declare-fun b!6939572 () Bool)

(declare-fun e!4174830 () Bool)

(assert (=> b!6939572 (= e!4174830 (nullable!6780 lt!2475252))))

(declare-fun b!6939573 () Bool)

(declare-fun res!2830720 () Bool)

(declare-fun e!4174833 () Bool)

(assert (=> b!6939573 (=> res!2830720 e!4174833)))

(assert (=> b!6939573 (= res!2830720 (not ((_ is ElementMatch!16963) lt!2475252)))))

(declare-fun e!4174829 () Bool)

(assert (=> b!6939573 (= e!4174829 e!4174833)))

(declare-fun b!6939574 () Bool)

(declare-fun e!4174827 () Bool)

(assert (=> b!6939574 (= e!4174827 (not (= (head!13908 s!14361) (c!1287519 lt!2475252))))))

(declare-fun b!6939575 () Bool)

(declare-fun e!4174831 () Bool)

(assert (=> b!6939575 (= e!4174831 e!4174829)))

(declare-fun c!1287695 () Bool)

(assert (=> b!6939575 (= c!1287695 ((_ is EmptyLang!16963) lt!2475252))))

(declare-fun b!6939576 () Bool)

(declare-fun res!2830722 () Bool)

(assert (=> b!6939576 (=> (not res!2830722) (not e!4174828))))

(declare-fun call!630475 () Bool)

(assert (=> b!6939576 (= res!2830722 (not call!630475))))

(declare-fun b!6939577 () Bool)

(assert (=> b!6939577 (= e!4174830 (matchR!9102 (derivativeStep!5455 lt!2475252 (head!13908 s!14361)) (tail!12960 s!14361)))))

(declare-fun b!6939578 () Bool)

(declare-fun lt!2475387 () Bool)

(assert (=> b!6939578 (= e!4174829 (not lt!2475387))))

(declare-fun b!6939579 () Bool)

(declare-fun res!2830721 () Bool)

(assert (=> b!6939579 (=> res!2830721 e!4174827)))

(assert (=> b!6939579 (= res!2830721 (not (isEmpty!38862 (tail!12960 s!14361))))))

(declare-fun b!6939580 () Bool)

(assert (=> b!6939580 (= e!4174828 (= (head!13908 s!14361) (c!1287519 lt!2475252)))))

(declare-fun b!6939581 () Bool)

(declare-fun e!4174832 () Bool)

(assert (=> b!6939581 (= e!4174833 e!4174832)))

(declare-fun res!2830717 () Bool)

(assert (=> b!6939581 (=> (not res!2830717) (not e!4174832))))

(assert (=> b!6939581 (= res!2830717 (not lt!2475387))))

(declare-fun d!2167499 () Bool)

(assert (=> d!2167499 e!4174831))

(declare-fun c!1287694 () Bool)

(assert (=> d!2167499 (= c!1287694 ((_ is EmptyExpr!16963) lt!2475252))))

(assert (=> d!2167499 (= lt!2475387 e!4174830)))

(declare-fun c!1287696 () Bool)

(assert (=> d!2167499 (= c!1287696 (isEmpty!38862 s!14361))))

(assert (=> d!2167499 (validRegex!8669 lt!2475252)))

(assert (=> d!2167499 (= (matchR!9102 lt!2475252 s!14361) lt!2475387)))

(declare-fun b!6939582 () Bool)

(assert (=> b!6939582 (= e!4174832 e!4174827)))

(declare-fun res!2830716 () Bool)

(assert (=> b!6939582 (=> res!2830716 e!4174827)))

(assert (=> b!6939582 (= res!2830716 call!630475)))

(declare-fun b!6939583 () Bool)

(declare-fun res!2830719 () Bool)

(assert (=> b!6939583 (=> res!2830719 e!4174833)))

(assert (=> b!6939583 (= res!2830719 e!4174828)))

(declare-fun res!2830718 () Bool)

(assert (=> b!6939583 (=> (not res!2830718) (not e!4174828))))

(assert (=> b!6939583 (= res!2830718 lt!2475387)))

(declare-fun bm!630470 () Bool)

(assert (=> bm!630470 (= call!630475 (isEmpty!38862 s!14361))))

(declare-fun b!6939584 () Bool)

(assert (=> b!6939584 (= e!4174831 (= lt!2475387 call!630475))))

(assert (= (and d!2167499 c!1287696) b!6939572))

(assert (= (and d!2167499 (not c!1287696)) b!6939577))

(assert (= (and d!2167499 c!1287694) b!6939584))

(assert (= (and d!2167499 (not c!1287694)) b!6939575))

(assert (= (and b!6939575 c!1287695) b!6939578))

(assert (= (and b!6939575 (not c!1287695)) b!6939573))

(assert (= (and b!6939573 (not res!2830720)) b!6939583))

(assert (= (and b!6939583 res!2830718) b!6939576))

(assert (= (and b!6939576 res!2830722) b!6939571))

(assert (= (and b!6939571 res!2830715) b!6939580))

(assert (= (and b!6939583 (not res!2830719)) b!6939581))

(assert (= (and b!6939581 res!2830717) b!6939582))

(assert (= (and b!6939582 (not res!2830716)) b!6939579))

(assert (= (and b!6939579 (not res!2830721)) b!6939574))

(assert (= (or b!6939584 b!6939576 b!6939582) bm!630470))

(declare-fun m!7644918 () Bool)

(assert (=> b!6939580 m!7644918))

(assert (=> d!2167499 m!7644906))

(declare-fun m!7644920 () Bool)

(assert (=> d!2167499 m!7644920))

(declare-fun m!7644922 () Bool)

(assert (=> b!6939571 m!7644922))

(assert (=> b!6939571 m!7644922))

(declare-fun m!7644924 () Bool)

(assert (=> b!6939571 m!7644924))

(declare-fun m!7644926 () Bool)

(assert (=> b!6939572 m!7644926))

(assert (=> b!6939579 m!7644922))

(assert (=> b!6939579 m!7644922))

(assert (=> b!6939579 m!7644924))

(assert (=> b!6939574 m!7644918))

(assert (=> bm!630470 m!7644906))

(assert (=> b!6939577 m!7644918))

(assert (=> b!6939577 m!7644918))

(declare-fun m!7644928 () Bool)

(assert (=> b!6939577 m!7644928))

(assert (=> b!6939577 m!7644922))

(assert (=> b!6939577 m!7644928))

(assert (=> b!6939577 m!7644922))

(declare-fun m!7644930 () Bool)

(assert (=> b!6939577 m!7644930))

(assert (=> b!6938773 d!2167499))

(declare-fun bs!1854120 () Bool)

(declare-fun b!6939592 () Bool)

(assert (= bs!1854120 (and b!6939592 b!6939310)))

(declare-fun lambda!395293 () Int)

(assert (=> bs!1854120 (= (and (= s!14361 (_2!37123 lt!2475244)) (= (reg!17292 lt!2475252) (reg!17292 lt!2475243)) (= lt!2475252 lt!2475243)) (= lambda!395293 lambda!395276))))

(declare-fun bs!1854121 () Bool)

(assert (= bs!1854121 (and b!6939592 b!6939059)))

(assert (=> bs!1854121 (not (= lambda!395293 lambda!395247))))

(declare-fun bs!1854122 () Bool)

(assert (= bs!1854122 (and b!6939592 b!6938767)))

(assert (=> bs!1854122 (not (= lambda!395293 lambda!395226))))

(declare-fun bs!1854123 () Bool)

(assert (= bs!1854123 (and b!6939592 b!6938777)))

(assert (=> bs!1854123 (not (= lambda!395293 lambda!395227))))

(declare-fun bs!1854124 () Bool)

(assert (= bs!1854124 (and b!6939592 b!6939474)))

(assert (=> bs!1854124 (not (= lambda!395293 lambda!395283))))

(declare-fun bs!1854125 () Bool)

(assert (= bs!1854125 (and b!6939592 b!6938772)))

(assert (=> bs!1854125 (not (= lambda!395293 lambda!395224))))

(assert (=> bs!1854125 (not (= lambda!395293 lambda!395223))))

(declare-fun bs!1854126 () Bool)

(assert (= bs!1854126 (and b!6939592 b!6939570)))

(assert (=> bs!1854126 (not (= lambda!395293 lambda!395292))))

(declare-fun bs!1854127 () Bool)

(assert (= bs!1854127 (and b!6939592 d!2167397)))

(assert (=> bs!1854127 (not (= lambda!395293 lambda!395271))))

(declare-fun bs!1854128 () Bool)

(assert (= bs!1854128 (and b!6939592 b!6939567)))

(assert (=> bs!1854128 (= (and (= (reg!17292 lt!2475252) (reg!17292 lt!2475269)) (= lt!2475252 lt!2475269)) (= lambda!395293 lambda!395291))))

(declare-fun bs!1854129 () Bool)

(assert (= bs!1854129 (and b!6939592 b!6939471)))

(assert (=> bs!1854129 (= (and (= s!14361 (_1!37123 lt!2475267)) (= (reg!17292 lt!2475252) (reg!17292 r2!6280)) (= lt!2475252 r2!6280)) (= lambda!395293 lambda!395282))))

(declare-fun bs!1854130 () Bool)

(assert (= bs!1854130 (and b!6939592 b!6939482)))

(assert (=> bs!1854130 (= (and (= s!14361 (_2!37123 lt!2475267)) (= (reg!17292 lt!2475252) (reg!17292 r3!135)) (= lt!2475252 r3!135)) (= lambda!395293 lambda!395284))))

(declare-fun bs!1854131 () Bool)

(assert (= bs!1854131 (and b!6939592 d!2167479)))

(assert (=> bs!1854131 (not (= lambda!395293 lambda!395286))))

(declare-fun bs!1854132 () Bool)

(assert (= bs!1854132 (and b!6939592 d!2167443)))

(assert (=> bs!1854132 (not (= lambda!395293 lambda!395280))))

(assert (=> bs!1854132 (not (= lambda!395293 lambda!395281))))

(declare-fun bs!1854133 () Bool)

(assert (= bs!1854133 (and b!6939592 d!2167381)))

(assert (=> bs!1854133 (not (= lambda!395293 lambda!395262))))

(assert (=> bs!1854123 (not (= lambda!395293 lambda!395228))))

(declare-fun bs!1854134 () Bool)

(assert (= bs!1854134 (and b!6939592 b!6939541)))

(assert (=> bs!1854134 (not (= lambda!395293 lambda!395290))))

(declare-fun bs!1854135 () Bool)

(assert (= bs!1854135 (and b!6939592 b!6939313)))

(assert (=> bs!1854135 (not (= lambda!395293 lambda!395278))))

(assert (=> bs!1854127 (not (= lambda!395293 lambda!395272))))

(assert (=> bs!1854122 (not (= lambda!395293 lambda!395225))))

(assert (=> bs!1854131 (not (= lambda!395293 lambda!395287))))

(declare-fun bs!1854136 () Bool)

(assert (= bs!1854136 (and b!6939592 d!2167427)))

(assert (=> bs!1854136 (not (= lambda!395293 lambda!395274))))

(declare-fun bs!1854137 () Bool)

(assert (= bs!1854137 (and b!6939592 b!6939056)))

(assert (=> bs!1854137 (= (and (= s!14361 lt!2475259) (= (reg!17292 lt!2475252) (reg!17292 lt!2475270)) (= lt!2475252 lt!2475270)) (= lambda!395293 lambda!395246))))

(declare-fun bs!1854138 () Bool)

(assert (= bs!1854138 (and b!6939592 b!6939538)))

(assert (=> bs!1854138 (= (and (= s!14361 (_1!37123 lt!2475244)) (= (reg!17292 lt!2475252) (reg!17292 r1!6342)) (= lt!2475252 r1!6342)) (= lambda!395293 lambda!395289))))

(declare-fun bs!1854139 () Bool)

(assert (= bs!1854139 (and b!6939592 d!2167483)))

(assert (=> bs!1854139 (not (= lambda!395293 lambda!395288))))

(declare-fun bs!1854140 () Bool)

(assert (= bs!1854140 (and b!6939592 b!6939485)))

(assert (=> bs!1854140 (not (= lambda!395293 lambda!395285))))

(assert (=> b!6939592 true))

(assert (=> b!6939592 true))

(declare-fun bs!1854141 () Bool)

(declare-fun b!6939595 () Bool)

(assert (= bs!1854141 (and b!6939595 b!6939310)))

(declare-fun lambda!395294 () Int)

(assert (=> bs!1854141 (not (= lambda!395294 lambda!395276))))

(declare-fun bs!1854142 () Bool)

(assert (= bs!1854142 (and b!6939595 b!6939059)))

(assert (=> bs!1854142 (= (and (= s!14361 lt!2475259) (= (regOne!34438 lt!2475252) (regOne!34438 lt!2475270)) (= (regTwo!34438 lt!2475252) (regTwo!34438 lt!2475270))) (= lambda!395294 lambda!395247))))

(declare-fun bs!1854143 () Bool)

(assert (= bs!1854143 (and b!6939595 b!6938767)))

(assert (=> bs!1854143 (= (and (= s!14361 (_2!37123 lt!2475244)) (= (regOne!34438 lt!2475252) r2!6280) (= (regTwo!34438 lt!2475252) r3!135)) (= lambda!395294 lambda!395226))))

(declare-fun bs!1854144 () Bool)

(assert (= bs!1854144 (and b!6939595 b!6938777)))

(assert (=> bs!1854144 (not (= lambda!395294 lambda!395227))))

(declare-fun bs!1854145 () Bool)

(assert (= bs!1854145 (and b!6939595 b!6939474)))

(assert (=> bs!1854145 (= (and (= s!14361 (_1!37123 lt!2475267)) (= (regOne!34438 lt!2475252) (regOne!34438 r2!6280)) (= (regTwo!34438 lt!2475252) (regTwo!34438 r2!6280))) (= lambda!395294 lambda!395283))))

(declare-fun bs!1854146 () Bool)

(assert (= bs!1854146 (and b!6939595 b!6938772)))

(assert (=> bs!1854146 (= (and (= (regOne!34438 lt!2475252) r1!6342) (= (regTwo!34438 lt!2475252) lt!2475243)) (= lambda!395294 lambda!395224))))

(assert (=> bs!1854146 (not (= lambda!395294 lambda!395223))))

(declare-fun bs!1854147 () Bool)

(assert (= bs!1854147 (and b!6939595 b!6939570)))

(assert (=> bs!1854147 (= (and (= (regOne!34438 lt!2475252) (regOne!34438 lt!2475269)) (= (regTwo!34438 lt!2475252) (regTwo!34438 lt!2475269))) (= lambda!395294 lambda!395292))))

(declare-fun bs!1854148 () Bool)

(assert (= bs!1854148 (and b!6939595 b!6939592)))

(assert (=> bs!1854148 (not (= lambda!395294 lambda!395293))))

(declare-fun bs!1854149 () Bool)

(assert (= bs!1854149 (and b!6939595 d!2167397)))

(assert (=> bs!1854149 (not (= lambda!395294 lambda!395271))))

(declare-fun bs!1854150 () Bool)

(assert (= bs!1854150 (and b!6939595 b!6939567)))

(assert (=> bs!1854150 (not (= lambda!395294 lambda!395291))))

(declare-fun bs!1854151 () Bool)

(assert (= bs!1854151 (and b!6939595 b!6939471)))

(assert (=> bs!1854151 (not (= lambda!395294 lambda!395282))))

(declare-fun bs!1854152 () Bool)

(assert (= bs!1854152 (and b!6939595 b!6939482)))

(assert (=> bs!1854152 (not (= lambda!395294 lambda!395284))))

(declare-fun bs!1854153 () Bool)

(assert (= bs!1854153 (and b!6939595 d!2167479)))

(assert (=> bs!1854153 (not (= lambda!395294 lambda!395286))))

(declare-fun bs!1854154 () Bool)

(assert (= bs!1854154 (and b!6939595 d!2167443)))

(assert (=> bs!1854154 (not (= lambda!395294 lambda!395280))))

(assert (=> bs!1854154 (= (and (= s!14361 (_2!37123 lt!2475244)) (= (regOne!34438 lt!2475252) r2!6280) (= (regTwo!34438 lt!2475252) r3!135)) (= lambda!395294 lambda!395281))))

(declare-fun bs!1854155 () Bool)

(assert (= bs!1854155 (and b!6939595 d!2167381)))

(assert (=> bs!1854155 (not (= lambda!395294 lambda!395262))))

(assert (=> bs!1854144 (= (and (= s!14361 lt!2475259) (= (regOne!34438 lt!2475252) r1!6342) (= (regTwo!34438 lt!2475252) r2!6280)) (= lambda!395294 lambda!395228))))

(declare-fun bs!1854156 () Bool)

(assert (= bs!1854156 (and b!6939595 b!6939541)))

(assert (=> bs!1854156 (= (and (= s!14361 (_1!37123 lt!2475244)) (= (regOne!34438 lt!2475252) (regOne!34438 r1!6342)) (= (regTwo!34438 lt!2475252) (regTwo!34438 r1!6342))) (= lambda!395294 lambda!395290))))

(declare-fun bs!1854157 () Bool)

(assert (= bs!1854157 (and b!6939595 b!6939313)))

(assert (=> bs!1854157 (= (and (= s!14361 (_2!37123 lt!2475244)) (= (regOne!34438 lt!2475252) (regOne!34438 lt!2475243)) (= (regTwo!34438 lt!2475252) (regTwo!34438 lt!2475243))) (= lambda!395294 lambda!395278))))

(assert (=> bs!1854149 (= (and (= s!14361 lt!2475259) (= (regOne!34438 lt!2475252) r1!6342) (= (regTwo!34438 lt!2475252) r2!6280)) (= lambda!395294 lambda!395272))))

(assert (=> bs!1854143 (not (= lambda!395294 lambda!395225))))

(assert (=> bs!1854153 (= (and (= (regOne!34438 lt!2475252) r1!6342) (= (regTwo!34438 lt!2475252) lt!2475243)) (= lambda!395294 lambda!395287))))

(declare-fun bs!1854158 () Bool)

(assert (= bs!1854158 (and b!6939595 d!2167427)))

(assert (=> bs!1854158 (not (= lambda!395294 lambda!395274))))

(declare-fun bs!1854159 () Bool)

(assert (= bs!1854159 (and b!6939595 b!6939056)))

(assert (=> bs!1854159 (not (= lambda!395294 lambda!395246))))

(declare-fun bs!1854160 () Bool)

(assert (= bs!1854160 (and b!6939595 b!6939538)))

(assert (=> bs!1854160 (not (= lambda!395294 lambda!395289))))

(declare-fun bs!1854161 () Bool)

(assert (= bs!1854161 (and b!6939595 d!2167483)))

(assert (=> bs!1854161 (not (= lambda!395294 lambda!395288))))

(declare-fun bs!1854162 () Bool)

(assert (= bs!1854162 (and b!6939595 b!6939485)))

(assert (=> bs!1854162 (= (and (= s!14361 (_2!37123 lt!2475267)) (= (regOne!34438 lt!2475252) (regOne!34438 r3!135)) (= (regTwo!34438 lt!2475252) (regTwo!34438 r3!135))) (= lambda!395294 lambda!395285))))

(assert (=> b!6939595 true))

(assert (=> b!6939595 true))

(declare-fun bm!630471 () Bool)

(declare-fun call!630476 () Bool)

(assert (=> bm!630471 (= call!630476 (isEmpty!38862 s!14361))))

(declare-fun b!6939585 () Bool)

(declare-fun res!2830725 () Bool)

(declare-fun e!4174835 () Bool)

(assert (=> b!6939585 (=> res!2830725 e!4174835)))

(assert (=> b!6939585 (= res!2830725 call!630476)))

(declare-fun e!4174838 () Bool)

(assert (=> b!6939585 (= e!4174838 e!4174835)))

(declare-fun b!6939586 () Bool)

(declare-fun e!4174839 () Bool)

(declare-fun e!4174840 () Bool)

(assert (=> b!6939586 (= e!4174839 e!4174840)))

(declare-fun res!2830724 () Bool)

(assert (=> b!6939586 (= res!2830724 (matchRSpec!4020 (regOne!34439 lt!2475252) s!14361))))

(assert (=> b!6939586 (=> res!2830724 e!4174840)))

(declare-fun b!6939587 () Bool)

(assert (=> b!6939587 (= e!4174840 (matchRSpec!4020 (regTwo!34439 lt!2475252) s!14361))))

(declare-fun bm!630472 () Bool)

(declare-fun c!1287697 () Bool)

(declare-fun call!630477 () Bool)

(assert (=> bm!630472 (= call!630477 (Exists!3963 (ite c!1287697 lambda!395293 lambda!395294)))))

(declare-fun b!6939588 () Bool)

(declare-fun e!4174837 () Bool)

(assert (=> b!6939588 (= e!4174837 call!630476)))

(declare-fun b!6939590 () Bool)

(declare-fun c!1287698 () Bool)

(assert (=> b!6939590 (= c!1287698 ((_ is ElementMatch!16963) lt!2475252))))

(declare-fun e!4174834 () Bool)

(declare-fun e!4174836 () Bool)

(assert (=> b!6939590 (= e!4174834 e!4174836)))

(declare-fun b!6939591 () Bool)

(assert (=> b!6939591 (= e!4174836 (= s!14361 (Cons!66592 (c!1287519 lt!2475252) Nil!66592)))))

(assert (=> b!6939592 (= e!4174835 call!630477)))

(declare-fun b!6939593 () Bool)

(declare-fun c!1287700 () Bool)

(assert (=> b!6939593 (= c!1287700 ((_ is Union!16963) lt!2475252))))

(assert (=> b!6939593 (= e!4174836 e!4174839)))

(declare-fun b!6939594 () Bool)

(assert (=> b!6939594 (= e!4174837 e!4174834)))

(declare-fun res!2830723 () Bool)

(assert (=> b!6939594 (= res!2830723 (not ((_ is EmptyLang!16963) lt!2475252)))))

(assert (=> b!6939594 (=> (not res!2830723) (not e!4174834))))

(assert (=> b!6939595 (= e!4174838 call!630477)))

(declare-fun b!6939589 () Bool)

(assert (=> b!6939589 (= e!4174839 e!4174838)))

(assert (=> b!6939589 (= c!1287697 ((_ is Star!16963) lt!2475252))))

(declare-fun d!2167501 () Bool)

(declare-fun c!1287699 () Bool)

(assert (=> d!2167501 (= c!1287699 ((_ is EmptyExpr!16963) lt!2475252))))

(assert (=> d!2167501 (= (matchRSpec!4020 lt!2475252 s!14361) e!4174837)))

(assert (= (and d!2167501 c!1287699) b!6939588))

(assert (= (and d!2167501 (not c!1287699)) b!6939594))

(assert (= (and b!6939594 res!2830723) b!6939590))

(assert (= (and b!6939590 c!1287698) b!6939591))

(assert (= (and b!6939590 (not c!1287698)) b!6939593))

(assert (= (and b!6939593 c!1287700) b!6939586))

(assert (= (and b!6939593 (not c!1287700)) b!6939589))

(assert (= (and b!6939586 (not res!2830724)) b!6939587))

(assert (= (and b!6939589 c!1287697) b!6939585))

(assert (= (and b!6939589 (not c!1287697)) b!6939595))

(assert (= (and b!6939585 (not res!2830725)) b!6939592))

(assert (= (or b!6939592 b!6939595) bm!630472))

(assert (= (or b!6939588 b!6939585) bm!630471))

(assert (=> bm!630471 m!7644906))

(declare-fun m!7644932 () Bool)

(assert (=> b!6939586 m!7644932))

(declare-fun m!7644934 () Bool)

(assert (=> b!6939587 m!7644934))

(declare-fun m!7644936 () Bool)

(assert (=> bm!630472 m!7644936))

(assert (=> b!6938773 d!2167501))

(declare-fun d!2167503 () Bool)

(assert (=> d!2167503 (= (matchR!9102 lt!2475252 s!14361) (matchRSpec!4020 lt!2475252 s!14361))))

(declare-fun lt!2475388 () Unit!160650)

(assert (=> d!2167503 (= lt!2475388 (choose!51696 lt!2475252 s!14361))))

(assert (=> d!2167503 (validRegex!8669 lt!2475252)))

(assert (=> d!2167503 (= (mainMatchTheorem!4020 lt!2475252 s!14361) lt!2475388)))

(declare-fun bs!1854163 () Bool)

(assert (= bs!1854163 d!2167503))

(assert (=> bs!1854163 m!7644158))

(assert (=> bs!1854163 m!7644164))

(declare-fun m!7644938 () Bool)

(assert (=> bs!1854163 m!7644938))

(assert (=> bs!1854163 m!7644920))

(assert (=> b!6938773 d!2167503))

(declare-fun b!6939596 () Bool)

(declare-fun res!2830726 () Bool)

(declare-fun e!4174842 () Bool)

(assert (=> b!6939596 (=> (not res!2830726) (not e!4174842))))

(assert (=> b!6939596 (= res!2830726 (isEmpty!38862 (tail!12960 s!14361)))))

(declare-fun b!6939597 () Bool)

(declare-fun e!4174844 () Bool)

(assert (=> b!6939597 (= e!4174844 (nullable!6780 lt!2475269))))

(declare-fun b!6939598 () Bool)

(declare-fun res!2830731 () Bool)

(declare-fun e!4174847 () Bool)

(assert (=> b!6939598 (=> res!2830731 e!4174847)))

(assert (=> b!6939598 (= res!2830731 (not ((_ is ElementMatch!16963) lt!2475269)))))

(declare-fun e!4174843 () Bool)

(assert (=> b!6939598 (= e!4174843 e!4174847)))

(declare-fun b!6939599 () Bool)

(declare-fun e!4174841 () Bool)

(assert (=> b!6939599 (= e!4174841 (not (= (head!13908 s!14361) (c!1287519 lt!2475269))))))

(declare-fun b!6939600 () Bool)

(declare-fun e!4174845 () Bool)

(assert (=> b!6939600 (= e!4174845 e!4174843)))

(declare-fun c!1287702 () Bool)

(assert (=> b!6939600 (= c!1287702 ((_ is EmptyLang!16963) lt!2475269))))

(declare-fun b!6939601 () Bool)

(declare-fun res!2830733 () Bool)

(assert (=> b!6939601 (=> (not res!2830733) (not e!4174842))))

(declare-fun call!630478 () Bool)

(assert (=> b!6939601 (= res!2830733 (not call!630478))))

(declare-fun b!6939602 () Bool)

(assert (=> b!6939602 (= e!4174844 (matchR!9102 (derivativeStep!5455 lt!2475269 (head!13908 s!14361)) (tail!12960 s!14361)))))

(declare-fun b!6939603 () Bool)

(declare-fun lt!2475389 () Bool)

(assert (=> b!6939603 (= e!4174843 (not lt!2475389))))

(declare-fun b!6939604 () Bool)

(declare-fun res!2830732 () Bool)

(assert (=> b!6939604 (=> res!2830732 e!4174841)))

(assert (=> b!6939604 (= res!2830732 (not (isEmpty!38862 (tail!12960 s!14361))))))

(declare-fun b!6939605 () Bool)

(assert (=> b!6939605 (= e!4174842 (= (head!13908 s!14361) (c!1287519 lt!2475269)))))

(declare-fun b!6939606 () Bool)

(declare-fun e!4174846 () Bool)

(assert (=> b!6939606 (= e!4174847 e!4174846)))

(declare-fun res!2830728 () Bool)

(assert (=> b!6939606 (=> (not res!2830728) (not e!4174846))))

(assert (=> b!6939606 (= res!2830728 (not lt!2475389))))

(declare-fun d!2167505 () Bool)

(assert (=> d!2167505 e!4174845))

(declare-fun c!1287701 () Bool)

(assert (=> d!2167505 (= c!1287701 ((_ is EmptyExpr!16963) lt!2475269))))

(assert (=> d!2167505 (= lt!2475389 e!4174844)))

(declare-fun c!1287703 () Bool)

(assert (=> d!2167505 (= c!1287703 (isEmpty!38862 s!14361))))

(assert (=> d!2167505 (validRegex!8669 lt!2475269)))

(assert (=> d!2167505 (= (matchR!9102 lt!2475269 s!14361) lt!2475389)))

(declare-fun b!6939607 () Bool)

(assert (=> b!6939607 (= e!4174846 e!4174841)))

(declare-fun res!2830727 () Bool)

(assert (=> b!6939607 (=> res!2830727 e!4174841)))

(assert (=> b!6939607 (= res!2830727 call!630478)))

(declare-fun b!6939608 () Bool)

(declare-fun res!2830730 () Bool)

(assert (=> b!6939608 (=> res!2830730 e!4174847)))

(assert (=> b!6939608 (= res!2830730 e!4174842)))

(declare-fun res!2830729 () Bool)

(assert (=> b!6939608 (=> (not res!2830729) (not e!4174842))))

(assert (=> b!6939608 (= res!2830729 lt!2475389)))

(declare-fun bm!630473 () Bool)

(assert (=> bm!630473 (= call!630478 (isEmpty!38862 s!14361))))

(declare-fun b!6939609 () Bool)

(assert (=> b!6939609 (= e!4174845 (= lt!2475389 call!630478))))

(assert (= (and d!2167505 c!1287703) b!6939597))

(assert (= (and d!2167505 (not c!1287703)) b!6939602))

(assert (= (and d!2167505 c!1287701) b!6939609))

(assert (= (and d!2167505 (not c!1287701)) b!6939600))

(assert (= (and b!6939600 c!1287702) b!6939603))

(assert (= (and b!6939600 (not c!1287702)) b!6939598))

(assert (= (and b!6939598 (not res!2830731)) b!6939608))

(assert (= (and b!6939608 res!2830729) b!6939601))

(assert (= (and b!6939601 res!2830733) b!6939596))

(assert (= (and b!6939596 res!2830726) b!6939605))

(assert (= (and b!6939608 (not res!2830730)) b!6939606))

(assert (= (and b!6939606 res!2830728) b!6939607))

(assert (= (and b!6939607 (not res!2830727)) b!6939604))

(assert (= (and b!6939604 (not res!2830732)) b!6939599))

(assert (= (or b!6939609 b!6939601 b!6939607) bm!630473))

(assert (=> b!6939605 m!7644918))

(assert (=> d!2167505 m!7644906))

(assert (=> d!2167505 m!7644916))

(assert (=> b!6939596 m!7644922))

(assert (=> b!6939596 m!7644922))

(assert (=> b!6939596 m!7644924))

(declare-fun m!7644940 () Bool)

(assert (=> b!6939597 m!7644940))

(assert (=> b!6939604 m!7644922))

(assert (=> b!6939604 m!7644922))

(assert (=> b!6939604 m!7644924))

(assert (=> b!6939599 m!7644918))

(assert (=> bm!630473 m!7644906))

(assert (=> b!6939602 m!7644918))

(assert (=> b!6939602 m!7644918))

(declare-fun m!7644942 () Bool)

(assert (=> b!6939602 m!7644942))

(assert (=> b!6939602 m!7644922))

(assert (=> b!6939602 m!7644942))

(assert (=> b!6939602 m!7644922))

(declare-fun m!7644944 () Bool)

(assert (=> b!6939602 m!7644944))

(assert (=> b!6938773 d!2167505))

(declare-fun bm!630474 () Bool)

(declare-fun c!1287705 () Bool)

(declare-fun call!630480 () Bool)

(declare-fun c!1287704 () Bool)

(assert (=> bm!630474 (= call!630480 (validRegex!8669 (ite c!1287704 (reg!17292 r2!6280) (ite c!1287705 (regOne!34439 r2!6280) (regTwo!34438 r2!6280)))))))

(declare-fun b!6939610 () Bool)

(declare-fun e!4174854 () Bool)

(assert (=> b!6939610 (= e!4174854 call!630480)))

(declare-fun b!6939611 () Bool)

(declare-fun e!4174850 () Bool)

(assert (=> b!6939611 (= e!4174850 e!4174854)))

(declare-fun res!2830734 () Bool)

(assert (=> b!6939611 (= res!2830734 (not (nullable!6780 (reg!17292 r2!6280))))))

(assert (=> b!6939611 (=> (not res!2830734) (not e!4174854))))

(declare-fun bm!630475 () Bool)

(declare-fun call!630479 () Bool)

(assert (=> bm!630475 (= call!630479 call!630480)))

(declare-fun bm!630476 () Bool)

(declare-fun call!630481 () Bool)

(assert (=> bm!630476 (= call!630481 (validRegex!8669 (ite c!1287705 (regTwo!34439 r2!6280) (regOne!34438 r2!6280))))))

(declare-fun b!6939612 () Bool)

(declare-fun e!4174848 () Bool)

(assert (=> b!6939612 (= e!4174848 call!630479)))

(declare-fun b!6939613 () Bool)

(declare-fun e!4174851 () Bool)

(assert (=> b!6939613 (= e!4174851 e!4174850)))

(assert (=> b!6939613 (= c!1287704 ((_ is Star!16963) r2!6280))))

(declare-fun d!2167507 () Bool)

(declare-fun res!2830737 () Bool)

(assert (=> d!2167507 (=> res!2830737 e!4174851)))

(assert (=> d!2167507 (= res!2830737 ((_ is ElementMatch!16963) r2!6280))))

(assert (=> d!2167507 (= (validRegex!8669 r2!6280) e!4174851)))

(declare-fun b!6939614 () Bool)

(declare-fun res!2830736 () Bool)

(declare-fun e!4174849 () Bool)

(assert (=> b!6939614 (=> res!2830736 e!4174849)))

(assert (=> b!6939614 (= res!2830736 (not ((_ is Concat!25808) r2!6280)))))

(declare-fun e!4174853 () Bool)

(assert (=> b!6939614 (= e!4174853 e!4174849)))

(declare-fun b!6939615 () Bool)

(assert (=> b!6939615 (= e!4174850 e!4174853)))

(assert (=> b!6939615 (= c!1287705 ((_ is Union!16963) r2!6280))))

(declare-fun b!6939616 () Bool)

(assert (=> b!6939616 (= e!4174849 e!4174848)))

(declare-fun res!2830735 () Bool)

(assert (=> b!6939616 (=> (not res!2830735) (not e!4174848))))

(assert (=> b!6939616 (= res!2830735 call!630481)))

(declare-fun b!6939617 () Bool)

(declare-fun res!2830738 () Bool)

(declare-fun e!4174852 () Bool)

(assert (=> b!6939617 (=> (not res!2830738) (not e!4174852))))

(assert (=> b!6939617 (= res!2830738 call!630479)))

(assert (=> b!6939617 (= e!4174853 e!4174852)))

(declare-fun b!6939618 () Bool)

(assert (=> b!6939618 (= e!4174852 call!630481)))

(assert (= (and d!2167507 (not res!2830737)) b!6939613))

(assert (= (and b!6939613 c!1287704) b!6939611))

(assert (= (and b!6939613 (not c!1287704)) b!6939615))

(assert (= (and b!6939611 res!2830734) b!6939610))

(assert (= (and b!6939615 c!1287705) b!6939617))

(assert (= (and b!6939615 (not c!1287705)) b!6939614))

(assert (= (and b!6939617 res!2830738) b!6939618))

(assert (= (and b!6939614 (not res!2830736)) b!6939616))

(assert (= (and b!6939616 res!2830735) b!6939612))

(assert (= (or b!6939617 b!6939612) bm!630475))

(assert (= (or b!6939618 b!6939616) bm!630476))

(assert (= (or b!6939610 bm!630475) bm!630474))

(declare-fun m!7644946 () Bool)

(assert (=> bm!630474 m!7644946))

(declare-fun m!7644948 () Bool)

(assert (=> b!6939611 m!7644948))

(declare-fun m!7644950 () Bool)

(assert (=> bm!630476 m!7644950))

(assert (=> b!6938774 d!2167507))

(declare-fun e!4174857 () Bool)

(assert (=> b!6938778 (= tp!1912732 e!4174857)))

(declare-fun b!6939631 () Bool)

(declare-fun tp!1912839 () Bool)

(assert (=> b!6939631 (= e!4174857 tp!1912839)))

(declare-fun b!6939630 () Bool)

(declare-fun tp!1912842 () Bool)

(declare-fun tp!1912841 () Bool)

(assert (=> b!6939630 (= e!4174857 (and tp!1912842 tp!1912841))))

(declare-fun b!6939632 () Bool)

(declare-fun tp!1912838 () Bool)

(declare-fun tp!1912840 () Bool)

(assert (=> b!6939632 (= e!4174857 (and tp!1912838 tp!1912840))))

(declare-fun b!6939629 () Bool)

(assert (=> b!6939629 (= e!4174857 tp_is_empty!43151)))

(assert (= (and b!6938778 ((_ is ElementMatch!16963) (reg!17292 r2!6280))) b!6939629))

(assert (= (and b!6938778 ((_ is Concat!25808) (reg!17292 r2!6280))) b!6939630))

(assert (= (and b!6938778 ((_ is Star!16963) (reg!17292 r2!6280))) b!6939631))

(assert (= (and b!6938778 ((_ is Union!16963) (reg!17292 r2!6280))) b!6939632))

(declare-fun e!4174858 () Bool)

(assert (=> b!6938766 (= tp!1912736 e!4174858)))

(declare-fun b!6939635 () Bool)

(declare-fun tp!1912844 () Bool)

(assert (=> b!6939635 (= e!4174858 tp!1912844)))

(declare-fun b!6939634 () Bool)

(declare-fun tp!1912847 () Bool)

(declare-fun tp!1912846 () Bool)

(assert (=> b!6939634 (= e!4174858 (and tp!1912847 tp!1912846))))

(declare-fun b!6939636 () Bool)

(declare-fun tp!1912843 () Bool)

(declare-fun tp!1912845 () Bool)

(assert (=> b!6939636 (= e!4174858 (and tp!1912843 tp!1912845))))

(declare-fun b!6939633 () Bool)

(assert (=> b!6939633 (= e!4174858 tp_is_empty!43151)))

(assert (= (and b!6938766 ((_ is ElementMatch!16963) (reg!17292 r3!135))) b!6939633))

(assert (= (and b!6938766 ((_ is Concat!25808) (reg!17292 r3!135))) b!6939634))

(assert (= (and b!6938766 ((_ is Star!16963) (reg!17292 r3!135))) b!6939635))

(assert (= (and b!6938766 ((_ is Union!16963) (reg!17292 r3!135))) b!6939636))

(declare-fun e!4174859 () Bool)

(assert (=> b!6938771 (= tp!1912724 e!4174859)))

(declare-fun b!6939639 () Bool)

(declare-fun tp!1912849 () Bool)

(assert (=> b!6939639 (= e!4174859 tp!1912849)))

(declare-fun b!6939638 () Bool)

(declare-fun tp!1912852 () Bool)

(declare-fun tp!1912851 () Bool)

(assert (=> b!6939638 (= e!4174859 (and tp!1912852 tp!1912851))))

(declare-fun b!6939640 () Bool)

(declare-fun tp!1912848 () Bool)

(declare-fun tp!1912850 () Bool)

(assert (=> b!6939640 (= e!4174859 (and tp!1912848 tp!1912850))))

(declare-fun b!6939637 () Bool)

(assert (=> b!6939637 (= e!4174859 tp_is_empty!43151)))

(assert (= (and b!6938771 ((_ is ElementMatch!16963) (regOne!34439 r1!6342))) b!6939637))

(assert (= (and b!6938771 ((_ is Concat!25808) (regOne!34439 r1!6342))) b!6939638))

(assert (= (and b!6938771 ((_ is Star!16963) (regOne!34439 r1!6342))) b!6939639))

(assert (= (and b!6938771 ((_ is Union!16963) (regOne!34439 r1!6342))) b!6939640))

(declare-fun e!4174860 () Bool)

(assert (=> b!6938771 (= tp!1912734 e!4174860)))

(declare-fun b!6939643 () Bool)

(declare-fun tp!1912854 () Bool)

(assert (=> b!6939643 (= e!4174860 tp!1912854)))

(declare-fun b!6939642 () Bool)

(declare-fun tp!1912857 () Bool)

(declare-fun tp!1912856 () Bool)

(assert (=> b!6939642 (= e!4174860 (and tp!1912857 tp!1912856))))

(declare-fun b!6939644 () Bool)

(declare-fun tp!1912853 () Bool)

(declare-fun tp!1912855 () Bool)

(assert (=> b!6939644 (= e!4174860 (and tp!1912853 tp!1912855))))

(declare-fun b!6939641 () Bool)

(assert (=> b!6939641 (= e!4174860 tp_is_empty!43151)))

(assert (= (and b!6938771 ((_ is ElementMatch!16963) (regTwo!34439 r1!6342))) b!6939641))

(assert (= (and b!6938771 ((_ is Concat!25808) (regTwo!34439 r1!6342))) b!6939642))

(assert (= (and b!6938771 ((_ is Star!16963) (regTwo!34439 r1!6342))) b!6939643))

(assert (= (and b!6938771 ((_ is Union!16963) (regTwo!34439 r1!6342))) b!6939644))

(declare-fun e!4174861 () Bool)

(assert (=> b!6938764 (= tp!1912726 e!4174861)))

(declare-fun b!6939647 () Bool)

(declare-fun tp!1912859 () Bool)

(assert (=> b!6939647 (= e!4174861 tp!1912859)))

(declare-fun b!6939646 () Bool)

(declare-fun tp!1912862 () Bool)

(declare-fun tp!1912861 () Bool)

(assert (=> b!6939646 (= e!4174861 (and tp!1912862 tp!1912861))))

(declare-fun b!6939648 () Bool)

(declare-fun tp!1912858 () Bool)

(declare-fun tp!1912860 () Bool)

(assert (=> b!6939648 (= e!4174861 (and tp!1912858 tp!1912860))))

(declare-fun b!6939645 () Bool)

(assert (=> b!6939645 (= e!4174861 tp_is_empty!43151)))

(assert (= (and b!6938764 ((_ is ElementMatch!16963) (regOne!34438 r2!6280))) b!6939645))

(assert (= (and b!6938764 ((_ is Concat!25808) (regOne!34438 r2!6280))) b!6939646))

(assert (= (and b!6938764 ((_ is Star!16963) (regOne!34438 r2!6280))) b!6939647))

(assert (= (and b!6938764 ((_ is Union!16963) (regOne!34438 r2!6280))) b!6939648))

(declare-fun e!4174862 () Bool)

(assert (=> b!6938764 (= tp!1912731 e!4174862)))

(declare-fun b!6939651 () Bool)

(declare-fun tp!1912864 () Bool)

(assert (=> b!6939651 (= e!4174862 tp!1912864)))

(declare-fun b!6939650 () Bool)

(declare-fun tp!1912867 () Bool)

(declare-fun tp!1912866 () Bool)

(assert (=> b!6939650 (= e!4174862 (and tp!1912867 tp!1912866))))

(declare-fun b!6939652 () Bool)

(declare-fun tp!1912863 () Bool)

(declare-fun tp!1912865 () Bool)

(assert (=> b!6939652 (= e!4174862 (and tp!1912863 tp!1912865))))

(declare-fun b!6939649 () Bool)

(assert (=> b!6939649 (= e!4174862 tp_is_empty!43151)))

(assert (= (and b!6938764 ((_ is ElementMatch!16963) (regTwo!34438 r2!6280))) b!6939649))

(assert (= (and b!6938764 ((_ is Concat!25808) (regTwo!34438 r2!6280))) b!6939650))

(assert (= (and b!6938764 ((_ is Star!16963) (regTwo!34438 r2!6280))) b!6939651))

(assert (= (and b!6938764 ((_ is Union!16963) (regTwo!34438 r2!6280))) b!6939652))

(declare-fun e!4174863 () Bool)

(assert (=> b!6938769 (= tp!1912727 e!4174863)))

(declare-fun b!6939655 () Bool)

(declare-fun tp!1912869 () Bool)

(assert (=> b!6939655 (= e!4174863 tp!1912869)))

(declare-fun b!6939654 () Bool)

(declare-fun tp!1912872 () Bool)

(declare-fun tp!1912871 () Bool)

(assert (=> b!6939654 (= e!4174863 (and tp!1912872 tp!1912871))))

(declare-fun b!6939656 () Bool)

(declare-fun tp!1912868 () Bool)

(declare-fun tp!1912870 () Bool)

(assert (=> b!6939656 (= e!4174863 (and tp!1912868 tp!1912870))))

(declare-fun b!6939653 () Bool)

(assert (=> b!6939653 (= e!4174863 tp_is_empty!43151)))

(assert (= (and b!6938769 ((_ is ElementMatch!16963) (regOne!34438 r1!6342))) b!6939653))

(assert (= (and b!6938769 ((_ is Concat!25808) (regOne!34438 r1!6342))) b!6939654))

(assert (= (and b!6938769 ((_ is Star!16963) (regOne!34438 r1!6342))) b!6939655))

(assert (= (and b!6938769 ((_ is Union!16963) (regOne!34438 r1!6342))) b!6939656))

(declare-fun e!4174864 () Bool)

(assert (=> b!6938769 (= tp!1912729 e!4174864)))

(declare-fun b!6939659 () Bool)

(declare-fun tp!1912874 () Bool)

(assert (=> b!6939659 (= e!4174864 tp!1912874)))

(declare-fun b!6939658 () Bool)

(declare-fun tp!1912877 () Bool)

(declare-fun tp!1912876 () Bool)

(assert (=> b!6939658 (= e!4174864 (and tp!1912877 tp!1912876))))

(declare-fun b!6939660 () Bool)

(declare-fun tp!1912873 () Bool)

(declare-fun tp!1912875 () Bool)

(assert (=> b!6939660 (= e!4174864 (and tp!1912873 tp!1912875))))

(declare-fun b!6939657 () Bool)

(assert (=> b!6939657 (= e!4174864 tp_is_empty!43151)))

(assert (= (and b!6938769 ((_ is ElementMatch!16963) (regTwo!34438 r1!6342))) b!6939657))

(assert (= (and b!6938769 ((_ is Concat!25808) (regTwo!34438 r1!6342))) b!6939658))

(assert (= (and b!6938769 ((_ is Star!16963) (regTwo!34438 r1!6342))) b!6939659))

(assert (= (and b!6938769 ((_ is Union!16963) (regTwo!34438 r1!6342))) b!6939660))

(declare-fun e!4174865 () Bool)

(assert (=> b!6938770 (= tp!1912728 e!4174865)))

(declare-fun b!6939663 () Bool)

(declare-fun tp!1912879 () Bool)

(assert (=> b!6939663 (= e!4174865 tp!1912879)))

(declare-fun b!6939662 () Bool)

(declare-fun tp!1912882 () Bool)

(declare-fun tp!1912881 () Bool)

(assert (=> b!6939662 (= e!4174865 (and tp!1912882 tp!1912881))))

(declare-fun b!6939664 () Bool)

(declare-fun tp!1912878 () Bool)

(declare-fun tp!1912880 () Bool)

(assert (=> b!6939664 (= e!4174865 (and tp!1912878 tp!1912880))))

(declare-fun b!6939661 () Bool)

(assert (=> b!6939661 (= e!4174865 tp_is_empty!43151)))

(assert (= (and b!6938770 ((_ is ElementMatch!16963) (regOne!34438 r3!135))) b!6939661))

(assert (= (and b!6938770 ((_ is Concat!25808) (regOne!34438 r3!135))) b!6939662))

(assert (= (and b!6938770 ((_ is Star!16963) (regOne!34438 r3!135))) b!6939663))

(assert (= (and b!6938770 ((_ is Union!16963) (regOne!34438 r3!135))) b!6939664))

(declare-fun e!4174866 () Bool)

(assert (=> b!6938770 (= tp!1912737 e!4174866)))

(declare-fun b!6939667 () Bool)

(declare-fun tp!1912884 () Bool)

(assert (=> b!6939667 (= e!4174866 tp!1912884)))

(declare-fun b!6939666 () Bool)

(declare-fun tp!1912887 () Bool)

(declare-fun tp!1912886 () Bool)

(assert (=> b!6939666 (= e!4174866 (and tp!1912887 tp!1912886))))

(declare-fun b!6939668 () Bool)

(declare-fun tp!1912883 () Bool)

(declare-fun tp!1912885 () Bool)

(assert (=> b!6939668 (= e!4174866 (and tp!1912883 tp!1912885))))

(declare-fun b!6939665 () Bool)

(assert (=> b!6939665 (= e!4174866 tp_is_empty!43151)))

(assert (= (and b!6938770 ((_ is ElementMatch!16963) (regTwo!34438 r3!135))) b!6939665))

(assert (= (and b!6938770 ((_ is Concat!25808) (regTwo!34438 r3!135))) b!6939666))

(assert (= (and b!6938770 ((_ is Star!16963) (regTwo!34438 r3!135))) b!6939667))

(assert (= (and b!6938770 ((_ is Union!16963) (regTwo!34438 r3!135))) b!6939668))

(declare-fun e!4174867 () Bool)

(assert (=> b!6938775 (= tp!1912725 e!4174867)))

(declare-fun b!6939671 () Bool)

(declare-fun tp!1912889 () Bool)

(assert (=> b!6939671 (= e!4174867 tp!1912889)))

(declare-fun b!6939670 () Bool)

(declare-fun tp!1912892 () Bool)

(declare-fun tp!1912891 () Bool)

(assert (=> b!6939670 (= e!4174867 (and tp!1912892 tp!1912891))))

(declare-fun b!6939672 () Bool)

(declare-fun tp!1912888 () Bool)

(declare-fun tp!1912890 () Bool)

(assert (=> b!6939672 (= e!4174867 (and tp!1912888 tp!1912890))))

(declare-fun b!6939669 () Bool)

(assert (=> b!6939669 (= e!4174867 tp_is_empty!43151)))

(assert (= (and b!6938775 ((_ is ElementMatch!16963) (reg!17292 r1!6342))) b!6939669))

(assert (= (and b!6938775 ((_ is Concat!25808) (reg!17292 r1!6342))) b!6939670))

(assert (= (and b!6938775 ((_ is Star!16963) (reg!17292 r1!6342))) b!6939671))

(assert (= (and b!6938775 ((_ is Union!16963) (reg!17292 r1!6342))) b!6939672))

(declare-fun e!4174868 () Bool)

(assert (=> b!6938768 (= tp!1912730 e!4174868)))

(declare-fun b!6939675 () Bool)

(declare-fun tp!1912894 () Bool)

(assert (=> b!6939675 (= e!4174868 tp!1912894)))

(declare-fun b!6939674 () Bool)

(declare-fun tp!1912897 () Bool)

(declare-fun tp!1912896 () Bool)

(assert (=> b!6939674 (= e!4174868 (and tp!1912897 tp!1912896))))

(declare-fun b!6939676 () Bool)

(declare-fun tp!1912893 () Bool)

(declare-fun tp!1912895 () Bool)

(assert (=> b!6939676 (= e!4174868 (and tp!1912893 tp!1912895))))

(declare-fun b!6939673 () Bool)

(assert (=> b!6939673 (= e!4174868 tp_is_empty!43151)))

(assert (= (and b!6938768 ((_ is ElementMatch!16963) (regOne!34439 r3!135))) b!6939673))

(assert (= (and b!6938768 ((_ is Concat!25808) (regOne!34439 r3!135))) b!6939674))

(assert (= (and b!6938768 ((_ is Star!16963) (regOne!34439 r3!135))) b!6939675))

(assert (= (and b!6938768 ((_ is Union!16963) (regOne!34439 r3!135))) b!6939676))

(declare-fun e!4174869 () Bool)

(assert (=> b!6938768 (= tp!1912733 e!4174869)))

(declare-fun b!6939679 () Bool)

(declare-fun tp!1912899 () Bool)

(assert (=> b!6939679 (= e!4174869 tp!1912899)))

(declare-fun b!6939678 () Bool)

(declare-fun tp!1912902 () Bool)

(declare-fun tp!1912901 () Bool)

(assert (=> b!6939678 (= e!4174869 (and tp!1912902 tp!1912901))))

(declare-fun b!6939680 () Bool)

(declare-fun tp!1912898 () Bool)

(declare-fun tp!1912900 () Bool)

(assert (=> b!6939680 (= e!4174869 (and tp!1912898 tp!1912900))))

(declare-fun b!6939677 () Bool)

(assert (=> b!6939677 (= e!4174869 tp_is_empty!43151)))

(assert (= (and b!6938768 ((_ is ElementMatch!16963) (regTwo!34439 r3!135))) b!6939677))

(assert (= (and b!6938768 ((_ is Concat!25808) (regTwo!34439 r3!135))) b!6939678))

(assert (= (and b!6938768 ((_ is Star!16963) (regTwo!34439 r3!135))) b!6939679))

(assert (= (and b!6938768 ((_ is Union!16963) (regTwo!34439 r3!135))) b!6939680))

(declare-fun e!4174870 () Bool)

(assert (=> b!6938779 (= tp!1912739 e!4174870)))

(declare-fun b!6939683 () Bool)

(declare-fun tp!1912904 () Bool)

(assert (=> b!6939683 (= e!4174870 tp!1912904)))

(declare-fun b!6939682 () Bool)

(declare-fun tp!1912907 () Bool)

(declare-fun tp!1912906 () Bool)

(assert (=> b!6939682 (= e!4174870 (and tp!1912907 tp!1912906))))

(declare-fun b!6939684 () Bool)

(declare-fun tp!1912903 () Bool)

(declare-fun tp!1912905 () Bool)

(assert (=> b!6939684 (= e!4174870 (and tp!1912903 tp!1912905))))

(declare-fun b!6939681 () Bool)

(assert (=> b!6939681 (= e!4174870 tp_is_empty!43151)))

(assert (= (and b!6938779 ((_ is ElementMatch!16963) (regOne!34439 r2!6280))) b!6939681))

(assert (= (and b!6938779 ((_ is Concat!25808) (regOne!34439 r2!6280))) b!6939682))

(assert (= (and b!6938779 ((_ is Star!16963) (regOne!34439 r2!6280))) b!6939683))

(assert (= (and b!6938779 ((_ is Union!16963) (regOne!34439 r2!6280))) b!6939684))

(declare-fun e!4174871 () Bool)

(assert (=> b!6938779 (= tp!1912738 e!4174871)))

(declare-fun b!6939687 () Bool)

(declare-fun tp!1912909 () Bool)

(assert (=> b!6939687 (= e!4174871 tp!1912909)))

(declare-fun b!6939686 () Bool)

(declare-fun tp!1912912 () Bool)

(declare-fun tp!1912911 () Bool)

(assert (=> b!6939686 (= e!4174871 (and tp!1912912 tp!1912911))))

(declare-fun b!6939688 () Bool)

(declare-fun tp!1912908 () Bool)

(declare-fun tp!1912910 () Bool)

(assert (=> b!6939688 (= e!4174871 (and tp!1912908 tp!1912910))))

(declare-fun b!6939685 () Bool)

(assert (=> b!6939685 (= e!4174871 tp_is_empty!43151)))

(assert (= (and b!6938779 ((_ is ElementMatch!16963) (regTwo!34439 r2!6280))) b!6939685))

(assert (= (and b!6938779 ((_ is Concat!25808) (regTwo!34439 r2!6280))) b!6939686))

(assert (= (and b!6938779 ((_ is Star!16963) (regTwo!34439 r2!6280))) b!6939687))

(assert (= (and b!6938779 ((_ is Union!16963) (regTwo!34439 r2!6280))) b!6939688))

(declare-fun b!6939693 () Bool)

(declare-fun e!4174874 () Bool)

(declare-fun tp!1912915 () Bool)

(assert (=> b!6939693 (= e!4174874 (and tp_is_empty!43151 tp!1912915))))

(assert (=> b!6938763 (= tp!1912735 e!4174874)))

(assert (= (and b!6938763 ((_ is Cons!66592) (t!380459 s!14361))) b!6939693))

(check-sat (not b!6939630) (not b!6939577) (not b!6939304) (not b!6939050) (not bm!630409) (not b!6939586) (not b!6939640) (not b!6939651) (not d!2167475) (not b!6938930) (not b!6939071) (not bm!630471) (not b!6939682) (not d!2167449) (not b!6939635) (not b!6939666) (not b!6939672) (not b!6939543) (not b!6939604) (not d!2167431) (not b!6939660) (not b!6939579) (not bm!630469) (not b!6939354) (not bm!630453) (not b!6939296) (not bm!630474) (not bm!630408) (not b!6939684) (not b!6939678) (not b!6939686) (not bm!630470) (not bm!630457) (not b!6939520) (not b!6939663) (not d!2167477) (not b!6939533) (not b!6939289) (not b!6939357) (not d!2167391) (not b!6939655) (not d!2167379) (not b!6939280) (not d!2167333) (not b!6939305) (not b!6939676) (not b!6939294) (not b!6939488) (not d!2167467) (not bm!630463) (not d!2167505) (not b!6939551) (not b!6939667) (not b!6939465) (not b!6939298) (not b!6939659) (not b!6939647) (not b!6939642) (not b!6939288) (not b!6939502) (not b!6939654) (not bm!630440) (not b!6939182) (not bm!630458) (not b!6939509) (not b!6939683) (not b!6939580) (not b!6939179) (not b!6939491) (not b!6939532) (not b!6939359) (not d!2167447) (not bm!630473) (not b!6939643) (not b!6939688) (not b!6939674) (not b!6939552) (not b!6939664) (not d!2167499) (not d!2167465) (not b!6939281) (not d!2167381) tp_is_empty!43151 (not d!2167443) (not d!2167339) (not b!6939051) (not bm!630472) (not d!2167397) (not b!6939658) (not b!6938924) (not b!6939525) (not b!6939636) (not d!2167497) (not b!6939599) (not b!6939526) (not d!2167459) (not b!6939077) (not b!6939638) (not b!6939492) (not b!6939500) (not b!6939632) (not b!6939087) (not d!2167483) (not bm!630461) (not b!6939476) (not b!6939466) (not bm!630464) (not b!6939477) (not b!6939650) (not b!6939553) (not b!6939494) (not b!6939517) (not b!6939183) (not b!6939557) (not d!2167473) (not d!2167451) (not d!2167471) (not b!6939605) (not b!6939497) (not b!6939646) (not b!6939679) (not d!2167429) (not d!2167503) (not b!6939648) (not d!2167489) (not bm!630455) (not bm!630402) (not b!6939556) (not b!6938925) (not d!2167493) (not d!2167301) (not b!6939177) (not b!6938933) (not b!6939079) (not b!6939074) (not d!2167371) (not bm!630462) (not b!6939295) (not b!6938956) (not b!6939656) (not b!6939671) (not b!6939561) (not b!6939662) (not b!6938927) (not b!6939300) (not b!6939487) (not b!6939086) (not b!6939597) (not bm!630476) (not b!6938932) (not b!6939687) (not bm!630459) (not b!6939611) (not b!6939675) (not b!6939358) (not d!2167315) (not b!6939181) (not b!6939555) (not b!6939572) (not d!2167341) (not b!6939518) (not b!6939652) (not b!6939596) (not d!2167463) (not b!6938955) (not b!6939644) (not d!2167491) (not b!6939456) (not b!6939668) (not b!6939680) (not b!6939602) (not b!6939571) (not b!6939670) (not b!6939178) (not b!6939299) (not bm!630451) (not bm!630456) (not b!6939080) (not d!2167423) (not d!2167343) (not b!6939355) (not d!2167425) (not b!6939495) (not bm!630416) (not b!6939286) (not b!6939631) (not bm!630454) (not b!6939353) (not b!6939503) (not b!6939523) (not b!6939574) (not bm!630439) (not d!2167479) (not b!6939587) (not b!6939072) (not bm!630465) (not b!6939639) (not bm!630467) (not b!6939634) (not d!2167427) (not b!6939693) (not d!2167461) (not bm!630438) (not b!6939283) (not bm!630468) (not b!6939562) (not d!2167393) (not d!2167313) (not d!2167421))
(check-sat)
