; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664074 () Bool)

(assert start!664074)

(declare-fun b!6885343 () Bool)

(assert (=> b!6885343 true))

(assert (=> b!6885343 true))

(assert (=> b!6885343 true))

(declare-fun lambda!389880 () Int)

(declare-fun lambda!389879 () Int)

(assert (=> b!6885343 (not (= lambda!389880 lambda!389879))))

(assert (=> b!6885343 true))

(assert (=> b!6885343 true))

(assert (=> b!6885343 true))

(declare-fun bs!1838601 () Bool)

(declare-fun b!6885361 () Bool)

(assert (= bs!1838601 (and b!6885361 b!6885343)))

(declare-datatypes ((C!33832 0))(
  ( (C!33833 (val!26618 Int)) )
))
(declare-datatypes ((List!66538 0))(
  ( (Nil!66414) (Cons!66414 (h!72862 C!33832) (t!380281 List!66538)) )
))
(declare-datatypes ((tuple2!67308 0))(
  ( (tuple2!67309 (_1!36957 List!66538) (_2!36957 List!66538)) )
))
(declare-fun lt!2460688 () tuple2!67308)

(declare-datatypes ((Regex!16781 0))(
  ( (ElementMatch!16781 (c!1280613 C!33832)) (Concat!25626 (regOne!34074 Regex!16781) (regTwo!34074 Regex!16781)) (EmptyExpr!16781) (Star!16781 (reg!17110 Regex!16781)) (EmptyLang!16781) (Union!16781 (regOne!34075 Regex!16781) (regTwo!34075 Regex!16781)) )
))
(declare-fun r3!135 () Regex!16781)

(declare-fun lt!2460684 () Regex!16781)

(declare-fun s!14361 () List!66538)

(declare-fun r2!6280 () Regex!16781)

(declare-fun lambda!389881 () Int)

(declare-fun r1!6342 () Regex!16781)

(assert (=> bs!1838601 (= (and (= (_1!36957 lt!2460688) s!14361) (= r1!6342 lt!2460684) (= r2!6280 r3!135)) (= lambda!389881 lambda!389879))))

(assert (=> bs!1838601 (not (= lambda!389881 lambda!389880))))

(assert (=> b!6885361 true))

(assert (=> b!6885361 true))

(assert (=> b!6885361 true))

(declare-fun lambda!389882 () Int)

(assert (=> bs!1838601 (not (= lambda!389882 lambda!389879))))

(assert (=> bs!1838601 (= (and (= (_1!36957 lt!2460688) s!14361) (= r1!6342 lt!2460684) (= r2!6280 r3!135)) (= lambda!389882 lambda!389880))))

(assert (=> b!6885361 (not (= lambda!389882 lambda!389881))))

(assert (=> b!6885361 true))

(assert (=> b!6885361 true))

(assert (=> b!6885361 true))

(declare-fun e!4148651 () Bool)

(declare-fun e!4148653 () Bool)

(assert (=> b!6885343 (= e!4148651 e!4148653)))

(declare-fun res!2806791 () Bool)

(assert (=> b!6885343 (=> res!2806791 e!4148653)))

(declare-fun lt!2460686 () Bool)

(assert (=> b!6885343 (= res!2806791 (not lt!2460686))))

(declare-fun matchRSpec!3844 (Regex!16781 List!66538) Bool)

(assert (=> b!6885343 (= lt!2460686 (matchRSpec!3844 lt!2460684 (_1!36957 lt!2460688)))))

(declare-fun matchR!8926 (Regex!16781 List!66538) Bool)

(assert (=> b!6885343 (= lt!2460686 (matchR!8926 lt!2460684 (_1!36957 lt!2460688)))))

(declare-datatypes ((Unit!160282 0))(
  ( (Unit!160283) )
))
(declare-fun lt!2460687 () Unit!160282)

(declare-fun mainMatchTheorem!3844 (Regex!16781 List!66538) Unit!160282)

(assert (=> b!6885343 (= lt!2460687 (mainMatchTheorem!3844 lt!2460684 (_1!36957 lt!2460688)))))

(declare-datatypes ((Option!16566 0))(
  ( (None!16565) (Some!16565 (v!52837 tuple2!67308)) )
))
(declare-fun lt!2460691 () Option!16566)

(declare-fun get!23134 (Option!16566) tuple2!67308)

(assert (=> b!6885343 (= lt!2460688 (get!23134 lt!2460691))))

(declare-fun Exists!3793 (Int) Bool)

(assert (=> b!6885343 (= (Exists!3793 lambda!389879) (Exists!3793 lambda!389880))))

(declare-fun lt!2460698 () Unit!160282)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2272 (Regex!16781 Regex!16781 List!66538) Unit!160282)

(assert (=> b!6885343 (= lt!2460698 (lemmaExistCutMatchRandMatchRSpecEquivalent!2272 lt!2460684 r3!135 s!14361))))

(declare-fun isDefined!13269 (Option!16566) Bool)

(assert (=> b!6885343 (= (isDefined!13269 lt!2460691) (Exists!3793 lambda!389879))))

(declare-fun findConcatSeparation!2980 (Regex!16781 Regex!16781 List!66538 List!66538 List!66538) Option!16566)

(assert (=> b!6885343 (= lt!2460691 (findConcatSeparation!2980 lt!2460684 r3!135 Nil!66414 s!14361 s!14361))))

(declare-fun lt!2460692 () Unit!160282)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2744 (Regex!16781 Regex!16781 List!66538) Unit!160282)

(assert (=> b!6885343 (= lt!2460692 (lemmaFindConcatSeparationEquivalentToExists!2744 lt!2460684 r3!135 s!14361))))

(declare-fun b!6885344 () Bool)

(declare-fun e!4148650 () Bool)

(declare-fun tp!1894060 () Bool)

(declare-fun tp!1894064 () Bool)

(assert (=> b!6885344 (= e!4148650 (and tp!1894060 tp!1894064))))

(declare-fun b!6885345 () Bool)

(declare-fun e!4148652 () Bool)

(assert (=> b!6885345 (= e!4148652 (not e!4148651))))

(declare-fun res!2806796 () Bool)

(assert (=> b!6885345 (=> res!2806796 e!4148651)))

(declare-fun lt!2460693 () Bool)

(assert (=> b!6885345 (= res!2806796 (not lt!2460693))))

(declare-fun lt!2460690 () Regex!16781)

(assert (=> b!6885345 (= (matchR!8926 lt!2460690 s!14361) (matchRSpec!3844 lt!2460690 s!14361))))

(declare-fun lt!2460697 () Unit!160282)

(assert (=> b!6885345 (= lt!2460697 (mainMatchTheorem!3844 lt!2460690 s!14361))))

(declare-fun lt!2460694 () Regex!16781)

(assert (=> b!6885345 (= lt!2460693 (matchRSpec!3844 lt!2460694 s!14361))))

(assert (=> b!6885345 (= lt!2460693 (matchR!8926 lt!2460694 s!14361))))

(declare-fun lt!2460699 () Unit!160282)

(assert (=> b!6885345 (= lt!2460699 (mainMatchTheorem!3844 lt!2460694 s!14361))))

(assert (=> b!6885345 (= lt!2460690 (Concat!25626 r1!6342 (Concat!25626 r2!6280 r3!135)))))

(assert (=> b!6885345 (= lt!2460694 (Concat!25626 lt!2460684 r3!135))))

(assert (=> b!6885345 (= lt!2460684 (Concat!25626 r1!6342 r2!6280))))

(declare-fun b!6885346 () Bool)

(declare-fun res!2806794 () Bool)

(assert (=> b!6885346 (=> (not res!2806794) (not e!4148652))))

(declare-fun validRegex!8489 (Regex!16781) Bool)

(assert (=> b!6885346 (= res!2806794 (validRegex!8489 r3!135))))

(declare-fun b!6885347 () Bool)

(declare-fun e!4148654 () Bool)

(declare-fun tp!1894065 () Bool)

(declare-fun tp!1894059 () Bool)

(assert (=> b!6885347 (= e!4148654 (and tp!1894065 tp!1894059))))

(declare-fun b!6885348 () Bool)

(declare-fun e!4148656 () Bool)

(declare-fun tp_is_empty!42787 () Bool)

(assert (=> b!6885348 (= e!4148656 tp_is_empty!42787)))

(declare-fun res!2806793 () Bool)

(assert (=> start!664074 (=> (not res!2806793) (not e!4148652))))

(assert (=> start!664074 (= res!2806793 (validRegex!8489 r1!6342))))

(assert (=> start!664074 e!4148652))

(assert (=> start!664074 e!4148650))

(assert (=> start!664074 e!4148654))

(assert (=> start!664074 e!4148656))

(declare-fun e!4148655 () Bool)

(assert (=> start!664074 e!4148655))

(declare-fun b!6885349 () Bool)

(declare-fun tp!1894068 () Bool)

(assert (=> b!6885349 (= e!4148655 (and tp_is_empty!42787 tp!1894068))))

(declare-fun b!6885350 () Bool)

(declare-fun tp!1894058 () Bool)

(declare-fun tp!1894067 () Bool)

(assert (=> b!6885350 (= e!4148654 (and tp!1894058 tp!1894067))))

(declare-fun b!6885351 () Bool)

(declare-fun tp!1894070 () Bool)

(declare-fun tp!1894071 () Bool)

(assert (=> b!6885351 (= e!4148650 (and tp!1894070 tp!1894071))))

(declare-fun b!6885352 () Bool)

(assert (=> b!6885352 (= e!4148650 tp_is_empty!42787)))

(declare-fun b!6885353 () Bool)

(declare-fun tp!1894062 () Bool)

(assert (=> b!6885353 (= e!4148656 tp!1894062)))

(declare-fun b!6885354 () Bool)

(declare-fun tp!1894066 () Bool)

(declare-fun tp!1894057 () Bool)

(assert (=> b!6885354 (= e!4148656 (and tp!1894066 tp!1894057))))

(declare-fun b!6885355 () Bool)

(assert (=> b!6885355 (= e!4148654 tp_is_empty!42787)))

(declare-fun b!6885356 () Bool)

(declare-fun tp!1894056 () Bool)

(assert (=> b!6885356 (= e!4148650 tp!1894056)))

(declare-fun b!6885357 () Bool)

(declare-fun tp!1894061 () Bool)

(declare-fun tp!1894063 () Bool)

(assert (=> b!6885357 (= e!4148656 (and tp!1894061 tp!1894063))))

(declare-fun b!6885358 () Bool)

(declare-fun res!2806792 () Bool)

(assert (=> b!6885358 (=> (not res!2806792) (not e!4148652))))

(assert (=> b!6885358 (= res!2806792 (validRegex!8489 r2!6280))))

(declare-fun b!6885359 () Bool)

(declare-fun res!2806795 () Bool)

(assert (=> b!6885359 (=> res!2806795 e!4148653)))

(assert (=> b!6885359 (= res!2806795 (not (matchR!8926 r3!135 (_2!36957 lt!2460688))))))

(declare-fun b!6885360 () Bool)

(declare-fun tp!1894069 () Bool)

(assert (=> b!6885360 (= e!4148654 tp!1894069)))

(assert (=> b!6885361 (= e!4148653 true)))

(declare-fun lt!2460695 () Bool)

(declare-fun lt!2460685 () Option!16566)

(assert (=> b!6885361 (= lt!2460695 (matchR!8926 r1!6342 (_1!36957 (get!23134 lt!2460685))))))

(assert (=> b!6885361 (= (Exists!3793 lambda!389881) (Exists!3793 lambda!389882))))

(declare-fun lt!2460689 () Unit!160282)

(assert (=> b!6885361 (= lt!2460689 (lemmaExistCutMatchRandMatchRSpecEquivalent!2272 r1!6342 r2!6280 (_1!36957 lt!2460688)))))

(assert (=> b!6885361 (= (isDefined!13269 lt!2460685) (Exists!3793 lambda!389881))))

(assert (=> b!6885361 (= lt!2460685 (findConcatSeparation!2980 r1!6342 r2!6280 Nil!66414 (_1!36957 lt!2460688) (_1!36957 lt!2460688)))))

(declare-fun lt!2460696 () Unit!160282)

(assert (=> b!6885361 (= lt!2460696 (lemmaFindConcatSeparationEquivalentToExists!2744 r1!6342 r2!6280 (_1!36957 lt!2460688)))))

(assert (= (and start!664074 res!2806793) b!6885358))

(assert (= (and b!6885358 res!2806792) b!6885346))

(assert (= (and b!6885346 res!2806794) b!6885345))

(assert (= (and b!6885345 (not res!2806796)) b!6885343))

(assert (= (and b!6885343 (not res!2806791)) b!6885359))

(assert (= (and b!6885359 (not res!2806795)) b!6885361))

(get-info :version)

(assert (= (and start!664074 ((_ is ElementMatch!16781) r1!6342)) b!6885352))

(assert (= (and start!664074 ((_ is Concat!25626) r1!6342)) b!6885344))

(assert (= (and start!664074 ((_ is Star!16781) r1!6342)) b!6885356))

(assert (= (and start!664074 ((_ is Union!16781) r1!6342)) b!6885351))

(assert (= (and start!664074 ((_ is ElementMatch!16781) r2!6280)) b!6885355))

(assert (= (and start!664074 ((_ is Concat!25626) r2!6280)) b!6885350))

(assert (= (and start!664074 ((_ is Star!16781) r2!6280)) b!6885360))

(assert (= (and start!664074 ((_ is Union!16781) r2!6280)) b!6885347))

(assert (= (and start!664074 ((_ is ElementMatch!16781) r3!135)) b!6885348))

(assert (= (and start!664074 ((_ is Concat!25626) r3!135)) b!6885357))

(assert (= (and start!664074 ((_ is Star!16781) r3!135)) b!6885353))

(assert (= (and start!664074 ((_ is Union!16781) r3!135)) b!6885354))

(assert (= (and start!664074 ((_ is Cons!66414) s!14361)) b!6885349))

(declare-fun m!7608496 () Bool)

(assert (=> b!6885358 m!7608496))

(declare-fun m!7608498 () Bool)

(assert (=> b!6885343 m!7608498))

(declare-fun m!7608500 () Bool)

(assert (=> b!6885343 m!7608500))

(declare-fun m!7608502 () Bool)

(assert (=> b!6885343 m!7608502))

(declare-fun m!7608504 () Bool)

(assert (=> b!6885343 m!7608504))

(declare-fun m!7608506 () Bool)

(assert (=> b!6885343 m!7608506))

(declare-fun m!7608508 () Bool)

(assert (=> b!6885343 m!7608508))

(assert (=> b!6885343 m!7608508))

(declare-fun m!7608510 () Bool)

(assert (=> b!6885343 m!7608510))

(declare-fun m!7608512 () Bool)

(assert (=> b!6885343 m!7608512))

(declare-fun m!7608514 () Bool)

(assert (=> b!6885343 m!7608514))

(declare-fun m!7608516 () Bool)

(assert (=> b!6885343 m!7608516))

(declare-fun m!7608518 () Bool)

(assert (=> b!6885345 m!7608518))

(declare-fun m!7608520 () Bool)

(assert (=> b!6885345 m!7608520))

(declare-fun m!7608522 () Bool)

(assert (=> b!6885345 m!7608522))

(declare-fun m!7608524 () Bool)

(assert (=> b!6885345 m!7608524))

(declare-fun m!7608526 () Bool)

(assert (=> b!6885345 m!7608526))

(declare-fun m!7608528 () Bool)

(assert (=> b!6885345 m!7608528))

(declare-fun m!7608530 () Bool)

(assert (=> start!664074 m!7608530))

(declare-fun m!7608532 () Bool)

(assert (=> b!6885361 m!7608532))

(declare-fun m!7608534 () Bool)

(assert (=> b!6885361 m!7608534))

(declare-fun m!7608536 () Bool)

(assert (=> b!6885361 m!7608536))

(declare-fun m!7608538 () Bool)

(assert (=> b!6885361 m!7608538))

(declare-fun m!7608540 () Bool)

(assert (=> b!6885361 m!7608540))

(declare-fun m!7608542 () Bool)

(assert (=> b!6885361 m!7608542))

(assert (=> b!6885361 m!7608542))

(declare-fun m!7608544 () Bool)

(assert (=> b!6885361 m!7608544))

(declare-fun m!7608546 () Bool)

(assert (=> b!6885361 m!7608546))

(declare-fun m!7608548 () Bool)

(assert (=> b!6885359 m!7608548))

(declare-fun m!7608550 () Bool)

(assert (=> b!6885346 m!7608550))

(check-sat (not b!6885354) (not b!6885361) (not start!664074) (not b!6885345) (not b!6885347) tp_is_empty!42787 (not b!6885353) (not b!6885350) (not b!6885360) (not b!6885359) (not b!6885346) (not b!6885344) (not b!6885349) (not b!6885343) (not b!6885356) (not b!6885358) (not b!6885357) (not b!6885351))
(check-sat)
