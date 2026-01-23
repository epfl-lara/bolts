; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664582 () Bool)

(assert start!664582)

(declare-fun b!6897319 () Bool)

(assert (=> b!6897319 true))

(assert (=> b!6897319 true))

(assert (=> b!6897319 true))

(declare-fun lambda!391152 () Int)

(declare-fun lambda!391151 () Int)

(assert (=> b!6897319 (not (= lambda!391152 lambda!391151))))

(assert (=> b!6897319 true))

(assert (=> b!6897319 true))

(assert (=> b!6897319 true))

(declare-fun bs!1841145 () Bool)

(declare-fun b!6897323 () Bool)

(assert (= bs!1841145 (and b!6897323 b!6897319)))

(declare-datatypes ((C!33952 0))(
  ( (C!33953 (val!26678 Int)) )
))
(declare-datatypes ((Regex!16841 0))(
  ( (ElementMatch!16841 (c!1281917 C!33952)) (Concat!25686 (regOne!34194 Regex!16841) (regTwo!34194 Regex!16841)) (EmptyExpr!16841) (Star!16841 (reg!17170 Regex!16841)) (EmptyLang!16841) (Union!16841 (regOne!34195 Regex!16841) (regTwo!34195 Regex!16841)) )
))
(declare-fun r1!6342 () Regex!16841)

(declare-fun lt!2464325 () Regex!16841)

(declare-fun r3!135 () Regex!16841)

(declare-datatypes ((List!66598 0))(
  ( (Nil!66474) (Cons!66474 (h!72922 C!33952) (t!380341 List!66598)) )
))
(declare-fun s!14361 () List!66598)

(declare-fun r2!6280 () Regex!16841)

(declare-datatypes ((tuple2!67416 0))(
  ( (tuple2!67417 (_1!37011 List!66598) (_2!37011 List!66598)) )
))
(declare-fun lt!2464326 () tuple2!67416)

(declare-fun lambda!391153 () Int)

(assert (=> bs!1841145 (= (and (= (_2!37011 lt!2464326) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464325)) (= lambda!391153 lambda!391151))))

(assert (=> bs!1841145 (not (= lambda!391153 lambda!391152))))

(assert (=> b!6897323 true))

(assert (=> b!6897323 true))

(assert (=> b!6897323 true))

(declare-fun lambda!391154 () Int)

(assert (=> bs!1841145 (not (= lambda!391154 lambda!391151))))

(assert (=> bs!1841145 (= (and (= (_2!37011 lt!2464326) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464325)) (= lambda!391154 lambda!391152))))

(assert (=> b!6897323 (not (= lambda!391154 lambda!391153))))

(assert (=> b!6897323 true))

(assert (=> b!6897323 true))

(assert (=> b!6897323 true))

(declare-fun b!6897315 () Bool)

(declare-fun e!4154260 () Bool)

(declare-fun tp_is_empty!42907 () Bool)

(assert (=> b!6897315 (= e!4154260 tp_is_empty!42907)))

(declare-fun b!6897316 () Bool)

(declare-fun e!4154264 () Bool)

(declare-fun tp!1898696 () Bool)

(assert (=> b!6897316 (= e!4154264 tp!1898696)))

(declare-fun b!6897317 () Bool)

(declare-fun e!4154259 () Bool)

(declare-fun tp!1898699 () Bool)

(declare-fun tp!1898707 () Bool)

(assert (=> b!6897317 (= e!4154259 (and tp!1898699 tp!1898707))))

(declare-fun b!6897318 () Bool)

(declare-fun tp!1898703 () Bool)

(declare-fun tp!1898709 () Bool)

(assert (=> b!6897318 (= e!4154260 (and tp!1898703 tp!1898709))))

(declare-fun e!4154256 () Bool)

(declare-fun e!4154257 () Bool)

(assert (=> b!6897319 (= e!4154256 e!4154257)))

(declare-fun res!2812143 () Bool)

(assert (=> b!6897319 (=> res!2812143 e!4154257)))

(declare-fun lt!2464321 () Bool)

(assert (=> b!6897319 (= res!2812143 (not lt!2464321))))

(declare-fun matchRSpec!3904 (Regex!16841 List!66598) Bool)

(assert (=> b!6897319 (= lt!2464321 (matchRSpec!3904 r1!6342 (_1!37011 lt!2464326)))))

(declare-fun matchR!8986 (Regex!16841 List!66598) Bool)

(assert (=> b!6897319 (= lt!2464321 (matchR!8986 r1!6342 (_1!37011 lt!2464326)))))

(declare-datatypes ((Unit!160402 0))(
  ( (Unit!160403) )
))
(declare-fun lt!2464322 () Unit!160402)

(declare-fun mainMatchTheorem!3904 (Regex!16841 List!66598) Unit!160402)

(assert (=> b!6897319 (= lt!2464322 (mainMatchTheorem!3904 r1!6342 (_1!37011 lt!2464326)))))

(declare-datatypes ((Option!16620 0))(
  ( (None!16619) (Some!16619 (v!52891 tuple2!67416)) )
))
(declare-fun lt!2464319 () Option!16620)

(declare-fun get!23212 (Option!16620) tuple2!67416)

(assert (=> b!6897319 (= lt!2464326 (get!23212 lt!2464319))))

(declare-fun Exists!3849 (Int) Bool)

(assert (=> b!6897319 (= (Exists!3849 lambda!391151) (Exists!3849 lambda!391152))))

(declare-fun lt!2464324 () Unit!160402)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2322 (Regex!16841 Regex!16841 List!66598) Unit!160402)

(assert (=> b!6897319 (= lt!2464324 (lemmaExistCutMatchRandMatchRSpecEquivalent!2322 r1!6342 lt!2464325 s!14361))))

(assert (=> b!6897319 (Exists!3849 lambda!391151)))

(declare-fun lt!2464329 () Unit!160402)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2796 (Regex!16841 Regex!16841 List!66598) Unit!160402)

(assert (=> b!6897319 (= lt!2464329 (lemmaFindConcatSeparationEquivalentToExists!2796 r1!6342 lt!2464325 s!14361))))

(declare-fun b!6897320 () Bool)

(declare-fun tp!1898697 () Bool)

(declare-fun tp!1898698 () Bool)

(assert (=> b!6897320 (= e!4154264 (and tp!1898697 tp!1898698))))

(declare-fun b!6897321 () Bool)

(declare-fun res!2812145 () Bool)

(declare-fun e!4154258 () Bool)

(assert (=> b!6897321 (=> (not res!2812145) (not e!4154258))))

(declare-fun validRegex!8549 (Regex!16841) Bool)

(assert (=> b!6897321 (= res!2812145 (validRegex!8549 r2!6280))))

(declare-fun b!6897322 () Bool)

(declare-fun res!2812141 () Bool)

(assert (=> b!6897322 (=> (not res!2812141) (not e!4154258))))

(assert (=> b!6897322 (= res!2812141 (validRegex!8549 r3!135))))

(declare-fun e!4154263 () Bool)

(assert (=> b!6897323 (= e!4154257 e!4154263)))

(declare-fun res!2812140 () Bool)

(assert (=> b!6897323 (=> res!2812140 e!4154263)))

(declare-fun lt!2464327 () tuple2!67416)

(assert (=> b!6897323 (= res!2812140 (not (matchR!8986 r2!6280 (_1!37011 lt!2464327))))))

(declare-fun lt!2464332 () Option!16620)

(assert (=> b!6897323 (= lt!2464327 (get!23212 lt!2464332))))

(assert (=> b!6897323 (= (Exists!3849 lambda!391153) (Exists!3849 lambda!391154))))

(declare-fun lt!2464335 () Unit!160402)

(assert (=> b!6897323 (= lt!2464335 (lemmaExistCutMatchRandMatchRSpecEquivalent!2322 r2!6280 r3!135 (_2!37011 lt!2464326)))))

(declare-fun isDefined!13323 (Option!16620) Bool)

(assert (=> b!6897323 (= (isDefined!13323 lt!2464332) (Exists!3849 lambda!391153))))

(declare-fun findConcatSeparation!3034 (Regex!16841 Regex!16841 List!66598 List!66598 List!66598) Option!16620)

(assert (=> b!6897323 (= lt!2464332 (findConcatSeparation!3034 r2!6280 r3!135 Nil!66474 (_2!37011 lt!2464326) (_2!37011 lt!2464326)))))

(declare-fun lt!2464320 () Unit!160402)

(assert (=> b!6897323 (= lt!2464320 (lemmaFindConcatSeparationEquivalentToExists!2796 r2!6280 r3!135 (_2!37011 lt!2464326)))))

(assert (=> b!6897323 (matchRSpec!3904 lt!2464325 (_2!37011 lt!2464326))))

(declare-fun lt!2464331 () Unit!160402)

(assert (=> b!6897323 (= lt!2464331 (mainMatchTheorem!3904 lt!2464325 (_2!37011 lt!2464326)))))

(declare-fun b!6897324 () Bool)

(declare-fun e!4154262 () Bool)

(declare-fun tp!1898700 () Bool)

(assert (=> b!6897324 (= e!4154262 (and tp_is_empty!42907 tp!1898700))))

(declare-fun b!6897325 () Bool)

(declare-fun tp!1898704 () Bool)

(declare-fun tp!1898708 () Bool)

(assert (=> b!6897325 (= e!4154264 (and tp!1898704 tp!1898708))))

(declare-fun b!6897326 () Bool)

(assert (=> b!6897326 (= e!4154259 tp_is_empty!42907)))

(declare-fun b!6897327 () Bool)

(declare-fun tp!1898711 () Bool)

(assert (=> b!6897327 (= e!4154259 tp!1898711)))

(declare-fun res!2812146 () Bool)

(assert (=> start!664582 (=> (not res!2812146) (not e!4154258))))

(assert (=> start!664582 (= res!2812146 (validRegex!8549 r1!6342))))

(assert (=> start!664582 e!4154258))

(assert (=> start!664582 e!4154264))

(assert (=> start!664582 e!4154259))

(assert (=> start!664582 e!4154260))

(assert (=> start!664582 e!4154262))

(declare-fun b!6897328 () Bool)

(declare-fun e!4154261 () Bool)

(assert (=> b!6897328 (= e!4154261 e!4154256)))

(declare-fun res!2812144 () Bool)

(assert (=> b!6897328 (=> res!2812144 e!4154256)))

(assert (=> b!6897328 (= res!2812144 (not (isDefined!13323 lt!2464319)))))

(assert (=> b!6897328 (= lt!2464319 (findConcatSeparation!3034 r1!6342 lt!2464325 Nil!66474 s!14361 s!14361))))

(declare-fun b!6897329 () Bool)

(declare-fun tp!1898702 () Bool)

(assert (=> b!6897329 (= e!4154260 tp!1898702)))

(declare-fun b!6897330 () Bool)

(declare-fun tp!1898701 () Bool)

(declare-fun tp!1898705 () Bool)

(assert (=> b!6897330 (= e!4154260 (and tp!1898701 tp!1898705))))

(declare-fun b!6897331 () Bool)

(declare-fun tp!1898710 () Bool)

(declare-fun tp!1898706 () Bool)

(assert (=> b!6897331 (= e!4154259 (and tp!1898710 tp!1898706))))

(declare-fun b!6897332 () Bool)

(assert (=> b!6897332 (= e!4154258 (not e!4154261))))

(declare-fun res!2812142 () Bool)

(assert (=> b!6897332 (=> res!2812142 e!4154261)))

(declare-fun lt!2464318 () Bool)

(assert (=> b!6897332 (= res!2812142 lt!2464318)))

(declare-fun lt!2464330 () Regex!16841)

(assert (=> b!6897332 (= (matchR!8986 lt!2464330 s!14361) (matchRSpec!3904 lt!2464330 s!14361))))

(declare-fun lt!2464328 () Unit!160402)

(assert (=> b!6897332 (= lt!2464328 (mainMatchTheorem!3904 lt!2464330 s!14361))))

(declare-fun lt!2464334 () Regex!16841)

(assert (=> b!6897332 (= lt!2464318 (matchRSpec!3904 lt!2464334 s!14361))))

(assert (=> b!6897332 (= lt!2464318 (matchR!8986 lt!2464334 s!14361))))

(declare-fun lt!2464333 () Unit!160402)

(assert (=> b!6897332 (= lt!2464333 (mainMatchTheorem!3904 lt!2464334 s!14361))))

(assert (=> b!6897332 (= lt!2464330 (Concat!25686 r1!6342 lt!2464325))))

(assert (=> b!6897332 (= lt!2464325 (Concat!25686 r2!6280 r3!135))))

(assert (=> b!6897332 (= lt!2464334 (Concat!25686 (Concat!25686 r1!6342 r2!6280) r3!135))))

(declare-fun b!6897333 () Bool)

(assert (=> b!6897333 (= e!4154264 tp_is_empty!42907)))

(declare-fun b!6897334 () Bool)

(assert (=> b!6897334 (= e!4154263 true)))

(declare-fun lt!2464323 () Bool)

(assert (=> b!6897334 (= lt!2464323 (matchR!8986 r3!135 (_2!37011 lt!2464327)))))

(declare-fun b!6897335 () Bool)

(declare-fun res!2812139 () Bool)

(assert (=> b!6897335 (=> res!2812139 e!4154257)))

(assert (=> b!6897335 (= res!2812139 (not (matchR!8986 lt!2464325 (_2!37011 lt!2464326))))))

(assert (= (and start!664582 res!2812146) b!6897321))

(assert (= (and b!6897321 res!2812145) b!6897322))

(assert (= (and b!6897322 res!2812141) b!6897332))

(assert (= (and b!6897332 (not res!2812142)) b!6897328))

(assert (= (and b!6897328 (not res!2812144)) b!6897319))

(assert (= (and b!6897319 (not res!2812143)) b!6897335))

(assert (= (and b!6897335 (not res!2812139)) b!6897323))

(assert (= (and b!6897323 (not res!2812140)) b!6897334))

(get-info :version)

(assert (= (and start!664582 ((_ is ElementMatch!16841) r1!6342)) b!6897333))

(assert (= (and start!664582 ((_ is Concat!25686) r1!6342)) b!6897320))

(assert (= (and start!664582 ((_ is Star!16841) r1!6342)) b!6897316))

(assert (= (and start!664582 ((_ is Union!16841) r1!6342)) b!6897325))

(assert (= (and start!664582 ((_ is ElementMatch!16841) r2!6280)) b!6897326))

(assert (= (and start!664582 ((_ is Concat!25686) r2!6280)) b!6897317))

(assert (= (and start!664582 ((_ is Star!16841) r2!6280)) b!6897327))

(assert (= (and start!664582 ((_ is Union!16841) r2!6280)) b!6897331))

(assert (= (and start!664582 ((_ is ElementMatch!16841) r3!135)) b!6897315))

(assert (= (and start!664582 ((_ is Concat!25686) r3!135)) b!6897330))

(assert (= (and start!664582 ((_ is Star!16841) r3!135)) b!6897329))

(assert (= (and start!664582 ((_ is Union!16841) r3!135)) b!6897318))

(assert (= (and start!664582 ((_ is Cons!66474) s!14361)) b!6897324))

(declare-fun m!7615934 () Bool)

(assert (=> b!6897323 m!7615934))

(declare-fun m!7615936 () Bool)

(assert (=> b!6897323 m!7615936))

(declare-fun m!7615938 () Bool)

(assert (=> b!6897323 m!7615938))

(declare-fun m!7615940 () Bool)

(assert (=> b!6897323 m!7615940))

(declare-fun m!7615942 () Bool)

(assert (=> b!6897323 m!7615942))

(assert (=> b!6897323 m!7615940))

(declare-fun m!7615944 () Bool)

(assert (=> b!6897323 m!7615944))

(declare-fun m!7615946 () Bool)

(assert (=> b!6897323 m!7615946))

(declare-fun m!7615948 () Bool)

(assert (=> b!6897323 m!7615948))

(declare-fun m!7615950 () Bool)

(assert (=> b!6897323 m!7615950))

(declare-fun m!7615952 () Bool)

(assert (=> b!6897323 m!7615952))

(declare-fun m!7615954 () Bool)

(assert (=> b!6897322 m!7615954))

(declare-fun m!7615956 () Bool)

(assert (=> b!6897335 m!7615956))

(declare-fun m!7615958 () Bool)

(assert (=> b!6897321 m!7615958))

(declare-fun m!7615960 () Bool)

(assert (=> start!664582 m!7615960))

(declare-fun m!7615962 () Bool)

(assert (=> b!6897334 m!7615962))

(declare-fun m!7615964 () Bool)

(assert (=> b!6897328 m!7615964))

(declare-fun m!7615966 () Bool)

(assert (=> b!6897328 m!7615966))

(declare-fun m!7615968 () Bool)

(assert (=> b!6897332 m!7615968))

(declare-fun m!7615970 () Bool)

(assert (=> b!6897332 m!7615970))

(declare-fun m!7615972 () Bool)

(assert (=> b!6897332 m!7615972))

(declare-fun m!7615974 () Bool)

(assert (=> b!6897332 m!7615974))

(declare-fun m!7615976 () Bool)

(assert (=> b!6897332 m!7615976))

(declare-fun m!7615978 () Bool)

(assert (=> b!6897332 m!7615978))

(declare-fun m!7615980 () Bool)

(assert (=> b!6897319 m!7615980))

(declare-fun m!7615982 () Bool)

(assert (=> b!6897319 m!7615982))

(assert (=> b!6897319 m!7615980))

(declare-fun m!7615984 () Bool)

(assert (=> b!6897319 m!7615984))

(declare-fun m!7615986 () Bool)

(assert (=> b!6897319 m!7615986))

(declare-fun m!7615988 () Bool)

(assert (=> b!6897319 m!7615988))

(declare-fun m!7615990 () Bool)

(assert (=> b!6897319 m!7615990))

(declare-fun m!7615992 () Bool)

(assert (=> b!6897319 m!7615992))

(declare-fun m!7615994 () Bool)

(assert (=> b!6897319 m!7615994))

(check-sat (not b!6897316) tp_is_empty!42907 (not b!6897322) (not b!6897317) (not b!6897318) (not b!6897330) (not b!6897320) (not b!6897325) (not b!6897334) (not b!6897321) (not b!6897328) (not b!6897329) (not b!6897332) (not start!664582) (not b!6897323) (not b!6897335) (not b!6897324) (not b!6897327) (not b!6897319) (not b!6897331))
(check-sat)
