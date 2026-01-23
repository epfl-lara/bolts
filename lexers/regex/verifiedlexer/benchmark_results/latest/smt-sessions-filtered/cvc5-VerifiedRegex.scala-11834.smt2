; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!665592 () Bool)

(assert start!665592)

(declare-fun b!6920439 () Bool)

(assert (=> b!6920439 true))

(assert (=> b!6920439 true))

(assert (=> b!6920439 true))

(declare-fun lambda!393344 () Int)

(declare-fun lambda!393343 () Int)

(assert (=> b!6920439 (not (= lambda!393344 lambda!393343))))

(assert (=> b!6920439 true))

(assert (=> b!6920439 true))

(assert (=> b!6920439 true))

(declare-fun bs!1846716 () Bool)

(declare-fun b!6920441 () Bool)

(assert (= bs!1846716 (and b!6920441 b!6920439)))

(declare-datatypes ((C!34098 0))(
  ( (C!34099 (val!26751 Int)) )
))
(declare-datatypes ((Regex!16914 0))(
  ( (ElementMatch!16914 (c!1284876 C!34098)) (Concat!25759 (regOne!34340 Regex!16914) (regTwo!34340 Regex!16914)) (EmptyExpr!16914) (Star!16914 (reg!17243 Regex!16914)) (EmptyLang!16914) (Union!16914 (regOne!34341 Regex!16914) (regTwo!34341 Regex!16914)) )
))
(declare-fun r1!6342 () Regex!16914)

(declare-fun lt!2470108 () Regex!16914)

(declare-datatypes ((List!66667 0))(
  ( (Nil!66543) (Cons!66543 (h!72991 C!34098) (t!380410 List!66667)) )
))
(declare-fun s!14361 () List!66667)

(declare-fun lambda!393345 () Int)

(declare-datatypes ((tuple2!67542 0))(
  ( (tuple2!67543 (_1!37074 List!66667) (_2!37074 List!66667)) )
))
(declare-fun lt!2470095 () tuple2!67542)

(declare-fun r3!135 () Regex!16914)

(declare-fun r2!6280 () Regex!16914)

(assert (=> bs!1846716 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393345 lambda!393343))))

(assert (=> bs!1846716 (not (= lambda!393345 lambda!393344))))

(assert (=> b!6920441 true))

(assert (=> b!6920441 true))

(assert (=> b!6920441 true))

(declare-fun lambda!393346 () Int)

(assert (=> bs!1846716 (not (= lambda!393346 lambda!393343))))

(assert (=> bs!1846716 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393346 lambda!393344))))

(assert (=> b!6920441 (not (= lambda!393346 lambda!393345))))

(assert (=> b!6920441 true))

(assert (=> b!6920441 true))

(assert (=> b!6920441 true))

(declare-fun bs!1846717 () Bool)

(declare-fun b!6920428 () Bool)

(assert (= bs!1846717 (and b!6920428 b!6920439)))

(declare-fun lt!2470093 () List!66667)

(declare-fun lambda!393347 () Int)

(assert (=> bs!1846717 (= (and (= lt!2470093 s!14361) (= r2!6280 lt!2470108)) (= lambda!393347 lambda!393343))))

(assert (=> bs!1846717 (not (= lambda!393347 lambda!393344))))

(declare-fun bs!1846718 () Bool)

(assert (= bs!1846718 (and b!6920428 b!6920441)))

(assert (=> bs!1846718 (= (and (= lt!2470093 (_1!37074 lt!2470095)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393347 lambda!393345))))

(assert (=> bs!1846718 (not (= lambda!393347 lambda!393346))))

(assert (=> b!6920428 true))

(assert (=> b!6920428 true))

(assert (=> b!6920428 true))

(declare-fun lambda!393348 () Int)

(assert (=> b!6920428 (not (= lambda!393348 lambda!393347))))

(assert (=> bs!1846718 (not (= lambda!393348 lambda!393345))))

(assert (=> bs!1846718 (= (and (= lt!2470093 (_1!37074 lt!2470095)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393348 lambda!393346))))

(assert (=> bs!1846717 (= (and (= lt!2470093 s!14361) (= r2!6280 lt!2470108)) (= lambda!393348 lambda!393344))))

(assert (=> bs!1846717 (not (= lambda!393348 lambda!393343))))

(assert (=> b!6920428 true))

(assert (=> b!6920428 true))

(assert (=> b!6920428 true))

(declare-fun e!4165230 () Bool)

(declare-fun e!4165233 () Bool)

(assert (=> b!6920428 (= e!4165230 e!4165233)))

(declare-fun res!2821782 () Bool)

(assert (=> b!6920428 (=> res!2821782 e!4165233)))

(declare-fun lt!2470091 () tuple2!67542)

(declare-fun isPrefix!5805 (List!66667 List!66667) Bool)

(assert (=> b!6920428 (= res!2821782 (not (isPrefix!5805 Nil!66543 (_2!37074 lt!2470091))))))

(declare-fun Exists!3916 (Int) Bool)

(assert (=> b!6920428 (= (Exists!3916 lambda!393347) (Exists!3916 lambda!393348))))

(declare-datatypes ((Unit!160552 0))(
  ( (Unit!160553) )
))
(declare-fun lt!2470100 () Unit!160552)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2383 (Regex!16914 Regex!16914 List!66667) Unit!160552)

(assert (=> b!6920428 (= lt!2470100 (lemmaExistCutMatchRandMatchRSpecEquivalent!2383 r2!6280 r3!135 lt!2470093))))

(declare-datatypes ((Option!16683 0))(
  ( (None!16682) (Some!16682 (v!52954 tuple2!67542)) )
))
(declare-fun isDefined!13386 (Option!16683) Bool)

(declare-fun findConcatSeparation!3097 (Regex!16914 Regex!16914 List!66667 List!66667 List!66667) Option!16683)

(assert (=> b!6920428 (= (isDefined!13386 (findConcatSeparation!3097 r2!6280 r3!135 Nil!66543 lt!2470093 lt!2470093)) (Exists!3916 lambda!393347))))

(declare-fun lt!2470088 () Unit!160552)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2859 (Regex!16914 Regex!16914 List!66667) Unit!160552)

(assert (=> b!6920428 (= lt!2470088 (lemmaFindConcatSeparationEquivalentToExists!2859 r2!6280 r3!135 lt!2470093))))

(declare-fun lt!2470101 () Regex!16914)

(declare-fun matchR!9053 (Regex!16914 List!66667) Bool)

(declare-fun matchRSpec!3971 (Regex!16914 List!66667) Bool)

(assert (=> b!6920428 (= (matchR!9053 lt!2470101 lt!2470093) (matchRSpec!3971 lt!2470101 lt!2470093))))

(declare-fun lt!2470094 () Unit!160552)

(declare-fun mainMatchTheorem!3971 (Regex!16914 List!66667) Unit!160552)

(assert (=> b!6920428 (= lt!2470094 (mainMatchTheorem!3971 lt!2470101 lt!2470093))))

(declare-fun ++!14957 (List!66667 List!66667) List!66667)

(assert (=> b!6920428 (= lt!2470093 (++!14957 (_2!37074 lt!2470091) (_2!37074 lt!2470095)))))

(declare-fun b!6920429 () Bool)

(declare-fun e!4165236 () Bool)

(declare-fun tp!1907561 () Bool)

(declare-fun tp!1907559 () Bool)

(assert (=> b!6920429 (= e!4165236 (and tp!1907561 tp!1907559))))

(declare-fun b!6920430 () Bool)

(declare-fun e!4165235 () Bool)

(declare-fun tp_is_empty!43053 () Bool)

(declare-fun tp!1907566 () Bool)

(assert (=> b!6920430 (= e!4165235 (and tp_is_empty!43053 tp!1907566))))

(declare-fun b!6920431 () Bool)

(declare-fun e!4165237 () Bool)

(declare-fun tp!1907570 () Bool)

(declare-fun tp!1907565 () Bool)

(assert (=> b!6920431 (= e!4165237 (and tp!1907570 tp!1907565))))

(declare-fun b!6920432 () Bool)

(declare-fun e!4165229 () Bool)

(declare-fun tp!1907568 () Bool)

(assert (=> b!6920432 (= e!4165229 tp!1907568)))

(declare-fun b!6920434 () Bool)

(declare-fun res!2821783 () Bool)

(declare-fun e!4165234 () Bool)

(assert (=> b!6920434 (=> res!2821783 e!4165234)))

(assert (=> b!6920434 (= res!2821783 (not (matchR!9053 r2!6280 (_2!37074 lt!2470091))))))

(declare-fun b!6920435 () Bool)

(declare-fun tp!1907558 () Bool)

(declare-fun tp!1907562 () Bool)

(assert (=> b!6920435 (= e!4165236 (and tp!1907558 tp!1907562))))

(declare-fun b!6920436 () Bool)

(declare-fun res!2821785 () Bool)

(declare-fun e!4165232 () Bool)

(assert (=> b!6920436 (=> (not res!2821785) (not e!4165232))))

(declare-fun validRegex!8620 (Regex!16914) Bool)

(assert (=> b!6920436 (= res!2821785 (validRegex!8620 r2!6280))))

(declare-fun b!6920437 () Bool)

(declare-fun tp!1907564 () Bool)

(declare-fun tp!1907569 () Bool)

(assert (=> b!6920437 (= e!4165237 (and tp!1907564 tp!1907569))))

(declare-fun b!6920438 () Bool)

(assert (=> b!6920438 (= e!4165233 (= (++!14957 Nil!66543 lt!2470093) lt!2470093))))

(declare-fun e!4165238 () Bool)

(declare-fun e!4165231 () Bool)

(assert (=> b!6920439 (= e!4165238 e!4165231)))

(declare-fun res!2821779 () Bool)

(assert (=> b!6920439 (=> res!2821779 e!4165231)))

(declare-fun lt!2470096 () Bool)

(assert (=> b!6920439 (= res!2821779 (not lt!2470096))))

(assert (=> b!6920439 (= lt!2470096 (matchRSpec!3971 lt!2470108 (_1!37074 lt!2470095)))))

(assert (=> b!6920439 (= lt!2470096 (matchR!9053 lt!2470108 (_1!37074 lt!2470095)))))

(declare-fun lt!2470089 () Unit!160552)

(assert (=> b!6920439 (= lt!2470089 (mainMatchTheorem!3971 lt!2470108 (_1!37074 lt!2470095)))))

(declare-fun lt!2470107 () Option!16683)

(declare-fun get!23312 (Option!16683) tuple2!67542)

(assert (=> b!6920439 (= lt!2470095 (get!23312 lt!2470107))))

(assert (=> b!6920439 (= (Exists!3916 lambda!393343) (Exists!3916 lambda!393344))))

(declare-fun lt!2470106 () Unit!160552)

(assert (=> b!6920439 (= lt!2470106 (lemmaExistCutMatchRandMatchRSpecEquivalent!2383 lt!2470108 r3!135 s!14361))))

(assert (=> b!6920439 (= (isDefined!13386 lt!2470107) (Exists!3916 lambda!393343))))

(assert (=> b!6920439 (= lt!2470107 (findConcatSeparation!3097 lt!2470108 r3!135 Nil!66543 s!14361 s!14361))))

(declare-fun lt!2470105 () Unit!160552)

(assert (=> b!6920439 (= lt!2470105 (lemmaFindConcatSeparationEquivalentToExists!2859 lt!2470108 r3!135 s!14361))))

(declare-fun b!6920440 () Bool)

(declare-fun res!2821788 () Bool)

(assert (=> b!6920440 (=> res!2821788 e!4165231)))

(assert (=> b!6920440 (= res!2821788 (not (matchR!9053 r3!135 (_2!37074 lt!2470095))))))

(assert (=> b!6920441 (= e!4165231 e!4165234)))

(declare-fun res!2821786 () Bool)

(assert (=> b!6920441 (=> res!2821786 e!4165234)))

(assert (=> b!6920441 (= res!2821786 (not (matchR!9053 r1!6342 (_1!37074 lt!2470091))))))

(declare-fun lt!2470103 () Option!16683)

(assert (=> b!6920441 (= lt!2470091 (get!23312 lt!2470103))))

(assert (=> b!6920441 (= (Exists!3916 lambda!393345) (Exists!3916 lambda!393346))))

(declare-fun lt!2470104 () Unit!160552)

(assert (=> b!6920441 (= lt!2470104 (lemmaExistCutMatchRandMatchRSpecEquivalent!2383 r1!6342 r2!6280 (_1!37074 lt!2470095)))))

(assert (=> b!6920441 (= (isDefined!13386 lt!2470103) (Exists!3916 lambda!393345))))

(assert (=> b!6920441 (= lt!2470103 (findConcatSeparation!3097 r1!6342 r2!6280 Nil!66543 (_1!37074 lt!2470095) (_1!37074 lt!2470095)))))

(declare-fun lt!2470092 () Unit!160552)

(assert (=> b!6920441 (= lt!2470092 (lemmaFindConcatSeparationEquivalentToExists!2859 r1!6342 r2!6280 (_1!37074 lt!2470095)))))

(declare-fun res!2821781 () Bool)

(assert (=> start!665592 (=> (not res!2821781) (not e!4165232))))

(assert (=> start!665592 (= res!2821781 (validRegex!8620 r1!6342))))

(assert (=> start!665592 e!4165232))

(assert (=> start!665592 e!4165237))

(assert (=> start!665592 e!4165229))

(assert (=> start!665592 e!4165236))

(assert (=> start!665592 e!4165235))

(declare-fun b!6920433 () Bool)

(declare-fun tp!1907560 () Bool)

(assert (=> b!6920433 (= e!4165236 tp!1907560)))

(declare-fun b!6920442 () Bool)

(assert (=> b!6920442 (= e!4165236 tp_is_empty!43053)))

(declare-fun b!6920443 () Bool)

(assert (=> b!6920443 (= e!4165229 tp_is_empty!43053)))

(declare-fun b!6920444 () Bool)

(declare-fun res!2821780 () Bool)

(assert (=> b!6920444 (=> (not res!2821780) (not e!4165232))))

(assert (=> b!6920444 (= res!2821780 (validRegex!8620 r3!135))))

(declare-fun b!6920445 () Bool)

(declare-fun tp!1907557 () Bool)

(declare-fun tp!1907563 () Bool)

(assert (=> b!6920445 (= e!4165229 (and tp!1907557 tp!1907563))))

(declare-fun b!6920446 () Bool)

(declare-fun tp!1907571 () Bool)

(assert (=> b!6920446 (= e!4165237 tp!1907571)))

(declare-fun b!6920447 () Bool)

(assert (=> b!6920447 (= e!4165232 (not e!4165238))))

(declare-fun res!2821787 () Bool)

(assert (=> b!6920447 (=> res!2821787 e!4165238)))

(declare-fun lt!2470110 () Bool)

(assert (=> b!6920447 (= res!2821787 (not lt!2470110))))

(declare-fun lt!2470102 () Regex!16914)

(assert (=> b!6920447 (= (matchR!9053 lt!2470102 s!14361) (matchRSpec!3971 lt!2470102 s!14361))))

(declare-fun lt!2470098 () Unit!160552)

(assert (=> b!6920447 (= lt!2470098 (mainMatchTheorem!3971 lt!2470102 s!14361))))

(declare-fun lt!2470090 () Regex!16914)

(assert (=> b!6920447 (= lt!2470110 (matchRSpec!3971 lt!2470090 s!14361))))

(assert (=> b!6920447 (= lt!2470110 (matchR!9053 lt!2470090 s!14361))))

(declare-fun lt!2470097 () Unit!160552)

(assert (=> b!6920447 (= lt!2470097 (mainMatchTheorem!3971 lt!2470090 s!14361))))

(assert (=> b!6920447 (= lt!2470102 (Concat!25759 r1!6342 lt!2470101))))

(assert (=> b!6920447 (= lt!2470101 (Concat!25759 r2!6280 r3!135))))

(assert (=> b!6920447 (= lt!2470090 (Concat!25759 lt!2470108 r3!135))))

(assert (=> b!6920447 (= lt!2470108 (Concat!25759 r1!6342 r2!6280))))

(declare-fun b!6920448 () Bool)

(assert (=> b!6920448 (= e!4165237 tp_is_empty!43053)))

(declare-fun b!6920449 () Bool)

(assert (=> b!6920449 (= e!4165234 e!4165230)))

(declare-fun res!2821784 () Bool)

(assert (=> b!6920449 (=> res!2821784 e!4165230)))

(assert (=> b!6920449 (= res!2821784 (not (= (++!14957 (++!14957 (_1!37074 lt!2470091) (_2!37074 lt!2470091)) (_2!37074 lt!2470095)) s!14361)))))

(assert (=> b!6920449 (matchRSpec!3971 r2!6280 (_2!37074 lt!2470091))))

(declare-fun lt!2470109 () Unit!160552)

(assert (=> b!6920449 (= lt!2470109 (mainMatchTheorem!3971 r2!6280 (_2!37074 lt!2470091)))))

(assert (=> b!6920449 (matchRSpec!3971 r1!6342 (_1!37074 lt!2470091))))

(declare-fun lt!2470099 () Unit!160552)

(assert (=> b!6920449 (= lt!2470099 (mainMatchTheorem!3971 r1!6342 (_1!37074 lt!2470091)))))

(declare-fun b!6920450 () Bool)

(declare-fun tp!1907556 () Bool)

(declare-fun tp!1907567 () Bool)

(assert (=> b!6920450 (= e!4165229 (and tp!1907556 tp!1907567))))

(assert (= (and start!665592 res!2821781) b!6920436))

(assert (= (and b!6920436 res!2821785) b!6920444))

(assert (= (and b!6920444 res!2821780) b!6920447))

(assert (= (and b!6920447 (not res!2821787)) b!6920439))

(assert (= (and b!6920439 (not res!2821779)) b!6920440))

(assert (= (and b!6920440 (not res!2821788)) b!6920441))

(assert (= (and b!6920441 (not res!2821786)) b!6920434))

(assert (= (and b!6920434 (not res!2821783)) b!6920449))

(assert (= (and b!6920449 (not res!2821784)) b!6920428))

(assert (= (and b!6920428 (not res!2821782)) b!6920438))

(assert (= (and start!665592 (is-ElementMatch!16914 r1!6342)) b!6920448))

(assert (= (and start!665592 (is-Concat!25759 r1!6342)) b!6920437))

(assert (= (and start!665592 (is-Star!16914 r1!6342)) b!6920446))

(assert (= (and start!665592 (is-Union!16914 r1!6342)) b!6920431))

(assert (= (and start!665592 (is-ElementMatch!16914 r2!6280)) b!6920443))

(assert (= (and start!665592 (is-Concat!25759 r2!6280)) b!6920450))

(assert (= (and start!665592 (is-Star!16914 r2!6280)) b!6920432))

(assert (= (and start!665592 (is-Union!16914 r2!6280)) b!6920445))

(assert (= (and start!665592 (is-ElementMatch!16914 r3!135)) b!6920442))

(assert (= (and start!665592 (is-Concat!25759 r3!135)) b!6920429))

(assert (= (and start!665592 (is-Star!16914 r3!135)) b!6920433))

(assert (= (and start!665592 (is-Union!16914 r3!135)) b!6920435))

(assert (= (and start!665592 (is-Cons!66543 s!14361)) b!6920430))

(declare-fun m!7630296 () Bool)

(assert (=> b!6920447 m!7630296))

(declare-fun m!7630298 () Bool)

(assert (=> b!6920447 m!7630298))

(declare-fun m!7630300 () Bool)

(assert (=> b!6920447 m!7630300))

(declare-fun m!7630302 () Bool)

(assert (=> b!6920447 m!7630302))

(declare-fun m!7630304 () Bool)

(assert (=> b!6920447 m!7630304))

(declare-fun m!7630306 () Bool)

(assert (=> b!6920447 m!7630306))

(declare-fun m!7630308 () Bool)

(assert (=> b!6920436 m!7630308))

(declare-fun m!7630310 () Bool)

(assert (=> b!6920439 m!7630310))

(declare-fun m!7630312 () Bool)

(assert (=> b!6920439 m!7630312))

(declare-fun m!7630314 () Bool)

(assert (=> b!6920439 m!7630314))

(declare-fun m!7630316 () Bool)

(assert (=> b!6920439 m!7630316))

(declare-fun m!7630318 () Bool)

(assert (=> b!6920439 m!7630318))

(declare-fun m!7630320 () Bool)

(assert (=> b!6920439 m!7630320))

(declare-fun m!7630322 () Bool)

(assert (=> b!6920439 m!7630322))

(assert (=> b!6920439 m!7630322))

(declare-fun m!7630324 () Bool)

(assert (=> b!6920439 m!7630324))

(declare-fun m!7630326 () Bool)

(assert (=> b!6920439 m!7630326))

(declare-fun m!7630328 () Bool)

(assert (=> b!6920439 m!7630328))

(declare-fun m!7630330 () Bool)

(assert (=> b!6920444 m!7630330))

(declare-fun m!7630332 () Bool)

(assert (=> b!6920449 m!7630332))

(declare-fun m!7630334 () Bool)

(assert (=> b!6920449 m!7630334))

(declare-fun m!7630336 () Bool)

(assert (=> b!6920449 m!7630336))

(declare-fun m!7630338 () Bool)

(assert (=> b!6920449 m!7630338))

(declare-fun m!7630340 () Bool)

(assert (=> b!6920449 m!7630340))

(assert (=> b!6920449 m!7630340))

(declare-fun m!7630342 () Bool)

(assert (=> b!6920449 m!7630342))

(declare-fun m!7630344 () Bool)

(assert (=> b!6920438 m!7630344))

(declare-fun m!7630346 () Bool)

(assert (=> start!665592 m!7630346))

(declare-fun m!7630348 () Bool)

(assert (=> b!6920434 m!7630348))

(declare-fun m!7630350 () Bool)

(assert (=> b!6920441 m!7630350))

(declare-fun m!7630352 () Bool)

(assert (=> b!6920441 m!7630352))

(declare-fun m!7630354 () Bool)

(assert (=> b!6920441 m!7630354))

(declare-fun m!7630356 () Bool)

(assert (=> b!6920441 m!7630356))

(declare-fun m!7630358 () Bool)

(assert (=> b!6920441 m!7630358))

(assert (=> b!6920441 m!7630354))

(declare-fun m!7630360 () Bool)

(assert (=> b!6920441 m!7630360))

(declare-fun m!7630362 () Bool)

(assert (=> b!6920441 m!7630362))

(declare-fun m!7630364 () Bool)

(assert (=> b!6920441 m!7630364))

(declare-fun m!7630366 () Bool)

(assert (=> b!6920440 m!7630366))

(declare-fun m!7630368 () Bool)

(assert (=> b!6920428 m!7630368))

(declare-fun m!7630370 () Bool)

(assert (=> b!6920428 m!7630370))

(declare-fun m!7630372 () Bool)

(assert (=> b!6920428 m!7630372))

(assert (=> b!6920428 m!7630370))

(declare-fun m!7630374 () Bool)

(assert (=> b!6920428 m!7630374))

(declare-fun m!7630376 () Bool)

(assert (=> b!6920428 m!7630376))

(declare-fun m!7630378 () Bool)

(assert (=> b!6920428 m!7630378))

(declare-fun m!7630380 () Bool)

(assert (=> b!6920428 m!7630380))

(declare-fun m!7630382 () Bool)

(assert (=> b!6920428 m!7630382))

(declare-fun m!7630384 () Bool)

(assert (=> b!6920428 m!7630384))

(declare-fun m!7630386 () Bool)

(assert (=> b!6920428 m!7630386))

(assert (=> b!6920428 m!7630372))

(declare-fun m!7630388 () Bool)

(assert (=> b!6920428 m!7630388))

(push 1)

(assert (not b!6920433))

(assert (not b!6920431))

(assert (not b!6920439))

(assert (not b!6920428))

(assert (not start!665592))

(assert (not b!6920445))

(assert (not b!6920444))

(assert (not b!6920434))

(assert tp_is_empty!43053)

(assert (not b!6920441))

(assert (not b!6920430))

(assert (not b!6920450))

(assert (not b!6920440))

(assert (not b!6920438))

(assert (not b!6920432))

(assert (not b!6920429))

(assert (not b!6920449))

(assert (not b!6920437))

(assert (not b!6920446))

(assert (not b!6920436))

(assert (not b!6920435))

(assert (not b!6920447))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2164453 () Bool)

(declare-fun e!4165291 () Bool)

(assert (=> d!2164453 e!4165291))

(declare-fun res!2821860 () Bool)

(assert (=> d!2164453 (=> (not res!2821860) (not e!4165291))))

(declare-fun lt!2470182 () List!66667)

(declare-fun content!13075 (List!66667) (Set C!34098))

(assert (=> d!2164453 (= res!2821860 (= (content!13075 lt!2470182) (set.union (content!13075 Nil!66543) (content!13075 lt!2470093))))))

(declare-fun e!4165292 () List!66667)

(assert (=> d!2164453 (= lt!2470182 e!4165292)))

(declare-fun c!1284880 () Bool)

(assert (=> d!2164453 (= c!1284880 (is-Nil!66543 Nil!66543))))

(assert (=> d!2164453 (= (++!14957 Nil!66543 lt!2470093) lt!2470182)))

(declare-fun b!6920576 () Bool)

(assert (=> b!6920576 (= e!4165292 lt!2470093)))

(declare-fun b!6920579 () Bool)

(assert (=> b!6920579 (= e!4165291 (or (not (= lt!2470093 Nil!66543)) (= lt!2470182 Nil!66543)))))

(declare-fun b!6920578 () Bool)

(declare-fun res!2821859 () Bool)

(assert (=> b!6920578 (=> (not res!2821859) (not e!4165291))))

(declare-fun size!40772 (List!66667) Int)

(assert (=> b!6920578 (= res!2821859 (= (size!40772 lt!2470182) (+ (size!40772 Nil!66543) (size!40772 lt!2470093))))))

(declare-fun b!6920577 () Bool)

(assert (=> b!6920577 (= e!4165292 (Cons!66543 (h!72991 Nil!66543) (++!14957 (t!380410 Nil!66543) lt!2470093)))))

(assert (= (and d!2164453 c!1284880) b!6920576))

(assert (= (and d!2164453 (not c!1284880)) b!6920577))

(assert (= (and d!2164453 res!2821860) b!6920578))

(assert (= (and b!6920578 res!2821859) b!6920579))

(declare-fun m!7630484 () Bool)

(assert (=> d!2164453 m!7630484))

(declare-fun m!7630486 () Bool)

(assert (=> d!2164453 m!7630486))

(declare-fun m!7630488 () Bool)

(assert (=> d!2164453 m!7630488))

(declare-fun m!7630490 () Bool)

(assert (=> b!6920578 m!7630490))

(declare-fun m!7630492 () Bool)

(assert (=> b!6920578 m!7630492))

(declare-fun m!7630494 () Bool)

(assert (=> b!6920578 m!7630494))

(declare-fun m!7630496 () Bool)

(assert (=> b!6920577 m!7630496))

(assert (=> b!6920438 d!2164453))

(declare-fun d!2164455 () Bool)

(declare-fun e!4165293 () Bool)

(assert (=> d!2164455 e!4165293))

(declare-fun res!2821862 () Bool)

(assert (=> d!2164455 (=> (not res!2821862) (not e!4165293))))

(declare-fun lt!2470183 () List!66667)

(assert (=> d!2164455 (= res!2821862 (= (content!13075 lt!2470183) (set.union (content!13075 (_1!37074 lt!2470091)) (content!13075 (_2!37074 lt!2470091)))))))

(declare-fun e!4165294 () List!66667)

(assert (=> d!2164455 (= lt!2470183 e!4165294)))

(declare-fun c!1284881 () Bool)

(assert (=> d!2164455 (= c!1284881 (is-Nil!66543 (_1!37074 lt!2470091)))))

(assert (=> d!2164455 (= (++!14957 (_1!37074 lt!2470091) (_2!37074 lt!2470091)) lt!2470183)))

(declare-fun b!6920580 () Bool)

(assert (=> b!6920580 (= e!4165294 (_2!37074 lt!2470091))))

(declare-fun b!6920583 () Bool)

(assert (=> b!6920583 (= e!4165293 (or (not (= (_2!37074 lt!2470091) Nil!66543)) (= lt!2470183 (_1!37074 lt!2470091))))))

(declare-fun b!6920582 () Bool)

(declare-fun res!2821861 () Bool)

(assert (=> b!6920582 (=> (not res!2821861) (not e!4165293))))

(assert (=> b!6920582 (= res!2821861 (= (size!40772 lt!2470183) (+ (size!40772 (_1!37074 lt!2470091)) (size!40772 (_2!37074 lt!2470091)))))))

(declare-fun b!6920581 () Bool)

(assert (=> b!6920581 (= e!4165294 (Cons!66543 (h!72991 (_1!37074 lt!2470091)) (++!14957 (t!380410 (_1!37074 lt!2470091)) (_2!37074 lt!2470091))))))

(assert (= (and d!2164455 c!1284881) b!6920580))

(assert (= (and d!2164455 (not c!1284881)) b!6920581))

(assert (= (and d!2164455 res!2821862) b!6920582))

(assert (= (and b!6920582 res!2821861) b!6920583))

(declare-fun m!7630498 () Bool)

(assert (=> d!2164455 m!7630498))

(declare-fun m!7630500 () Bool)

(assert (=> d!2164455 m!7630500))

(declare-fun m!7630502 () Bool)

(assert (=> d!2164455 m!7630502))

(declare-fun m!7630504 () Bool)

(assert (=> b!6920582 m!7630504))

(declare-fun m!7630506 () Bool)

(assert (=> b!6920582 m!7630506))

(declare-fun m!7630508 () Bool)

(assert (=> b!6920582 m!7630508))

(declare-fun m!7630510 () Bool)

(assert (=> b!6920581 m!7630510))

(assert (=> b!6920449 d!2164455))

(declare-fun d!2164457 () Bool)

(assert (=> d!2164457 (= (matchR!9053 r1!6342 (_1!37074 lt!2470091)) (matchRSpec!3971 r1!6342 (_1!37074 lt!2470091)))))

(declare-fun lt!2470186 () Unit!160552)

(declare-fun choose!51526 (Regex!16914 List!66667) Unit!160552)

(assert (=> d!2164457 (= lt!2470186 (choose!51526 r1!6342 (_1!37074 lt!2470091)))))

(assert (=> d!2164457 (validRegex!8620 r1!6342)))

(assert (=> d!2164457 (= (mainMatchTheorem!3971 r1!6342 (_1!37074 lt!2470091)) lt!2470186)))

(declare-fun bs!1846722 () Bool)

(assert (= bs!1846722 d!2164457))

(assert (=> bs!1846722 m!7630364))

(assert (=> bs!1846722 m!7630336))

(declare-fun m!7630512 () Bool)

(assert (=> bs!1846722 m!7630512))

(assert (=> bs!1846722 m!7630346))

(assert (=> b!6920449 d!2164457))

(declare-fun bs!1846723 () Bool)

(declare-fun b!6920626 () Bool)

(assert (= bs!1846723 (and b!6920626 b!6920428)))

(declare-fun lambda!393377 () Int)

(assert (=> bs!1846723 (not (= lambda!393377 lambda!393347))))

(declare-fun bs!1846724 () Bool)

(assert (= bs!1846724 (and b!6920626 b!6920441)))

(assert (=> bs!1846724 (not (= lambda!393377 lambda!393345))))

(assert (=> bs!1846724 (not (= lambda!393377 lambda!393346))))

(declare-fun bs!1846725 () Bool)

(assert (= bs!1846725 (and b!6920626 b!6920439)))

(assert (=> bs!1846725 (not (= lambda!393377 lambda!393344))))

(assert (=> bs!1846723 (not (= lambda!393377 lambda!393348))))

(assert (=> bs!1846725 (not (= lambda!393377 lambda!393343))))

(assert (=> b!6920626 true))

(assert (=> b!6920626 true))

(declare-fun bs!1846726 () Bool)

(declare-fun b!6920622 () Bool)

(assert (= bs!1846726 (and b!6920622 b!6920626)))

(declare-fun lambda!393378 () Int)

(assert (=> bs!1846726 (not (= lambda!393378 lambda!393377))))

(declare-fun bs!1846727 () Bool)

(assert (= bs!1846727 (and b!6920622 b!6920428)))

(assert (=> bs!1846727 (not (= lambda!393378 lambda!393347))))

(declare-fun bs!1846728 () Bool)

(assert (= bs!1846728 (and b!6920622 b!6920441)))

(assert (=> bs!1846728 (not (= lambda!393378 lambda!393345))))

(assert (=> bs!1846728 (= (and (= (_2!37074 lt!2470091) (_1!37074 lt!2470095)) (= (regOne!34340 r2!6280) r1!6342) (= (regTwo!34340 r2!6280) r2!6280)) (= lambda!393378 lambda!393346))))

(declare-fun bs!1846729 () Bool)

(assert (= bs!1846729 (and b!6920622 b!6920439)))

(assert (=> bs!1846729 (= (and (= (_2!37074 lt!2470091) s!14361) (= (regOne!34340 r2!6280) lt!2470108) (= (regTwo!34340 r2!6280) r3!135)) (= lambda!393378 lambda!393344))))

(assert (=> bs!1846727 (= (and (= (_2!37074 lt!2470091) lt!2470093) (= (regOne!34340 r2!6280) r2!6280) (= (regTwo!34340 r2!6280) r3!135)) (= lambda!393378 lambda!393348))))

(assert (=> bs!1846729 (not (= lambda!393378 lambda!393343))))

(assert (=> b!6920622 true))

(assert (=> b!6920622 true))

(declare-fun b!6920616 () Bool)

(declare-fun e!4165318 () Bool)

(assert (=> b!6920616 (= e!4165318 (= (_2!37074 lt!2470091) (Cons!66543 (c!1284876 r2!6280) Nil!66543)))))

(declare-fun b!6920617 () Bool)

(declare-fun e!4165316 () Bool)

(declare-fun e!4165314 () Bool)

(assert (=> b!6920617 (= e!4165316 e!4165314)))

(declare-fun res!2821881 () Bool)

(assert (=> b!6920617 (= res!2821881 (not (is-EmptyLang!16914 r2!6280)))))

(assert (=> b!6920617 (=> (not res!2821881) (not e!4165314))))

(declare-fun d!2164459 () Bool)

(declare-fun c!1284893 () Bool)

(assert (=> d!2164459 (= c!1284893 (is-EmptyExpr!16914 r2!6280))))

(assert (=> d!2164459 (= (matchRSpec!3971 r2!6280 (_2!37074 lt!2470091)) e!4165316)))

(declare-fun b!6920618 () Bool)

(declare-fun e!4165317 () Bool)

(declare-fun e!4165313 () Bool)

(assert (=> b!6920618 (= e!4165317 e!4165313)))

(declare-fun c!1284891 () Bool)

(assert (=> b!6920618 (= c!1284891 (is-Star!16914 r2!6280))))

(declare-fun bm!629085 () Bool)

(declare-fun call!629091 () Bool)

(assert (=> bm!629085 (= call!629091 (Exists!3916 (ite c!1284891 lambda!393377 lambda!393378)))))

(declare-fun b!6920619 () Bool)

(declare-fun c!1284892 () Bool)

(assert (=> b!6920619 (= c!1284892 (is-ElementMatch!16914 r2!6280))))

(assert (=> b!6920619 (= e!4165314 e!4165318)))

(declare-fun b!6920620 () Bool)

(declare-fun call!629090 () Bool)

(assert (=> b!6920620 (= e!4165316 call!629090)))

(declare-fun b!6920621 () Bool)

(declare-fun res!2821879 () Bool)

(declare-fun e!4165315 () Bool)

(assert (=> b!6920621 (=> res!2821879 e!4165315)))

(assert (=> b!6920621 (= res!2821879 call!629090)))

(assert (=> b!6920621 (= e!4165313 e!4165315)))

(assert (=> b!6920622 (= e!4165313 call!629091)))

(declare-fun b!6920623 () Bool)

(declare-fun c!1284890 () Bool)

(assert (=> b!6920623 (= c!1284890 (is-Union!16914 r2!6280))))

(assert (=> b!6920623 (= e!4165318 e!4165317)))

(declare-fun b!6920624 () Bool)

(declare-fun e!4165319 () Bool)

(assert (=> b!6920624 (= e!4165319 (matchRSpec!3971 (regTwo!34341 r2!6280) (_2!37074 lt!2470091)))))

(declare-fun b!6920625 () Bool)

(assert (=> b!6920625 (= e!4165317 e!4165319)))

(declare-fun res!2821880 () Bool)

(assert (=> b!6920625 (= res!2821880 (matchRSpec!3971 (regOne!34341 r2!6280) (_2!37074 lt!2470091)))))

(assert (=> b!6920625 (=> res!2821880 e!4165319)))

(assert (=> b!6920626 (= e!4165315 call!629091)))

(declare-fun bm!629086 () Bool)

(declare-fun isEmpty!38796 (List!66667) Bool)

(assert (=> bm!629086 (= call!629090 (isEmpty!38796 (_2!37074 lt!2470091)))))

(assert (= (and d!2164459 c!1284893) b!6920620))

(assert (= (and d!2164459 (not c!1284893)) b!6920617))

(assert (= (and b!6920617 res!2821881) b!6920619))

(assert (= (and b!6920619 c!1284892) b!6920616))

(assert (= (and b!6920619 (not c!1284892)) b!6920623))

(assert (= (and b!6920623 c!1284890) b!6920625))

(assert (= (and b!6920623 (not c!1284890)) b!6920618))

(assert (= (and b!6920625 (not res!2821880)) b!6920624))

(assert (= (and b!6920618 c!1284891) b!6920621))

(assert (= (and b!6920618 (not c!1284891)) b!6920622))

(assert (= (and b!6920621 (not res!2821879)) b!6920626))

(assert (= (or b!6920626 b!6920622) bm!629085))

(assert (= (or b!6920620 b!6920621) bm!629086))

(declare-fun m!7630514 () Bool)

(assert (=> bm!629085 m!7630514))

(declare-fun m!7630516 () Bool)

(assert (=> b!6920624 m!7630516))

(declare-fun m!7630518 () Bool)

(assert (=> b!6920625 m!7630518))

(declare-fun m!7630520 () Bool)

(assert (=> bm!629086 m!7630520))

(assert (=> b!6920449 d!2164459))

(declare-fun d!2164461 () Bool)

(declare-fun e!4165320 () Bool)

(assert (=> d!2164461 e!4165320))

(declare-fun res!2821883 () Bool)

(assert (=> d!2164461 (=> (not res!2821883) (not e!4165320))))

(declare-fun lt!2470187 () List!66667)

(assert (=> d!2164461 (= res!2821883 (= (content!13075 lt!2470187) (set.union (content!13075 (++!14957 (_1!37074 lt!2470091) (_2!37074 lt!2470091))) (content!13075 (_2!37074 lt!2470095)))))))

(declare-fun e!4165321 () List!66667)

(assert (=> d!2164461 (= lt!2470187 e!4165321)))

(declare-fun c!1284894 () Bool)

(assert (=> d!2164461 (= c!1284894 (is-Nil!66543 (++!14957 (_1!37074 lt!2470091) (_2!37074 lt!2470091))))))

(assert (=> d!2164461 (= (++!14957 (++!14957 (_1!37074 lt!2470091) (_2!37074 lt!2470091)) (_2!37074 lt!2470095)) lt!2470187)))

(declare-fun b!6920627 () Bool)

(assert (=> b!6920627 (= e!4165321 (_2!37074 lt!2470095))))

(declare-fun b!6920630 () Bool)

(assert (=> b!6920630 (= e!4165320 (or (not (= (_2!37074 lt!2470095) Nil!66543)) (= lt!2470187 (++!14957 (_1!37074 lt!2470091) (_2!37074 lt!2470091)))))))

(declare-fun b!6920629 () Bool)

(declare-fun res!2821882 () Bool)

(assert (=> b!6920629 (=> (not res!2821882) (not e!4165320))))

(assert (=> b!6920629 (= res!2821882 (= (size!40772 lt!2470187) (+ (size!40772 (++!14957 (_1!37074 lt!2470091) (_2!37074 lt!2470091))) (size!40772 (_2!37074 lt!2470095)))))))

(declare-fun b!6920628 () Bool)

(assert (=> b!6920628 (= e!4165321 (Cons!66543 (h!72991 (++!14957 (_1!37074 lt!2470091) (_2!37074 lt!2470091))) (++!14957 (t!380410 (++!14957 (_1!37074 lt!2470091) (_2!37074 lt!2470091))) (_2!37074 lt!2470095))))))

(assert (= (and d!2164461 c!1284894) b!6920627))

(assert (= (and d!2164461 (not c!1284894)) b!6920628))

(assert (= (and d!2164461 res!2821883) b!6920629))

(assert (= (and b!6920629 res!2821882) b!6920630))

(declare-fun m!7630522 () Bool)

(assert (=> d!2164461 m!7630522))

(assert (=> d!2164461 m!7630340))

(declare-fun m!7630524 () Bool)

(assert (=> d!2164461 m!7630524))

(declare-fun m!7630526 () Bool)

(assert (=> d!2164461 m!7630526))

(declare-fun m!7630528 () Bool)

(assert (=> b!6920629 m!7630528))

(assert (=> b!6920629 m!7630340))

(declare-fun m!7630530 () Bool)

(assert (=> b!6920629 m!7630530))

(declare-fun m!7630532 () Bool)

(assert (=> b!6920629 m!7630532))

(declare-fun m!7630534 () Bool)

(assert (=> b!6920628 m!7630534))

(assert (=> b!6920449 d!2164461))

(declare-fun bs!1846730 () Bool)

(declare-fun b!6920641 () Bool)

(assert (= bs!1846730 (and b!6920641 b!6920626)))

(declare-fun lambda!393379 () Int)

(assert (=> bs!1846730 (= (and (= (_1!37074 lt!2470091) (_2!37074 lt!2470091)) (= (reg!17243 r1!6342) (reg!17243 r2!6280)) (= r1!6342 r2!6280)) (= lambda!393379 lambda!393377))))

(declare-fun bs!1846731 () Bool)

(assert (= bs!1846731 (and b!6920641 b!6920428)))

(assert (=> bs!1846731 (not (= lambda!393379 lambda!393347))))

(declare-fun bs!1846732 () Bool)

(assert (= bs!1846732 (and b!6920641 b!6920441)))

(assert (=> bs!1846732 (not (= lambda!393379 lambda!393345))))

(assert (=> bs!1846732 (not (= lambda!393379 lambda!393346))))

(declare-fun bs!1846733 () Bool)

(assert (= bs!1846733 (and b!6920641 b!6920439)))

(assert (=> bs!1846733 (not (= lambda!393379 lambda!393344))))

(assert (=> bs!1846731 (not (= lambda!393379 lambda!393348))))

(assert (=> bs!1846733 (not (= lambda!393379 lambda!393343))))

(declare-fun bs!1846734 () Bool)

(assert (= bs!1846734 (and b!6920641 b!6920622)))

(assert (=> bs!1846734 (not (= lambda!393379 lambda!393378))))

(assert (=> b!6920641 true))

(assert (=> b!6920641 true))

(declare-fun bs!1846735 () Bool)

(declare-fun b!6920637 () Bool)

(assert (= bs!1846735 (and b!6920637 b!6920626)))

(declare-fun lambda!393380 () Int)

(assert (=> bs!1846735 (not (= lambda!393380 lambda!393377))))

(declare-fun bs!1846736 () Bool)

(assert (= bs!1846736 (and b!6920637 b!6920428)))

(assert (=> bs!1846736 (not (= lambda!393380 lambda!393347))))

(declare-fun bs!1846737 () Bool)

(assert (= bs!1846737 (and b!6920637 b!6920441)))

(assert (=> bs!1846737 (not (= lambda!393380 lambda!393345))))

(assert (=> bs!1846737 (= (and (= (_1!37074 lt!2470091) (_1!37074 lt!2470095)) (= (regOne!34340 r1!6342) r1!6342) (= (regTwo!34340 r1!6342) r2!6280)) (= lambda!393380 lambda!393346))))

(declare-fun bs!1846738 () Bool)

(assert (= bs!1846738 (and b!6920637 b!6920439)))

(assert (=> bs!1846738 (= (and (= (_1!37074 lt!2470091) s!14361) (= (regOne!34340 r1!6342) lt!2470108) (= (regTwo!34340 r1!6342) r3!135)) (= lambda!393380 lambda!393344))))

(assert (=> bs!1846736 (= (and (= (_1!37074 lt!2470091) lt!2470093) (= (regOne!34340 r1!6342) r2!6280) (= (regTwo!34340 r1!6342) r3!135)) (= lambda!393380 lambda!393348))))

(assert (=> bs!1846738 (not (= lambda!393380 lambda!393343))))

(declare-fun bs!1846739 () Bool)

(assert (= bs!1846739 (and b!6920637 b!6920641)))

(assert (=> bs!1846739 (not (= lambda!393380 lambda!393379))))

(declare-fun bs!1846740 () Bool)

(assert (= bs!1846740 (and b!6920637 b!6920622)))

(assert (=> bs!1846740 (= (and (= (_1!37074 lt!2470091) (_2!37074 lt!2470091)) (= (regOne!34340 r1!6342) (regOne!34340 r2!6280)) (= (regTwo!34340 r1!6342) (regTwo!34340 r2!6280))) (= lambda!393380 lambda!393378))))

(assert (=> b!6920637 true))

(assert (=> b!6920637 true))

(declare-fun b!6920631 () Bool)

(declare-fun e!4165327 () Bool)

(assert (=> b!6920631 (= e!4165327 (= (_1!37074 lt!2470091) (Cons!66543 (c!1284876 r1!6342) Nil!66543)))))

(declare-fun b!6920632 () Bool)

(declare-fun e!4165325 () Bool)

(declare-fun e!4165323 () Bool)

(assert (=> b!6920632 (= e!4165325 e!4165323)))

(declare-fun res!2821886 () Bool)

(assert (=> b!6920632 (= res!2821886 (not (is-EmptyLang!16914 r1!6342)))))

(assert (=> b!6920632 (=> (not res!2821886) (not e!4165323))))

(declare-fun d!2164463 () Bool)

(declare-fun c!1284898 () Bool)

(assert (=> d!2164463 (= c!1284898 (is-EmptyExpr!16914 r1!6342))))

(assert (=> d!2164463 (= (matchRSpec!3971 r1!6342 (_1!37074 lt!2470091)) e!4165325)))

(declare-fun b!6920633 () Bool)

(declare-fun e!4165326 () Bool)

(declare-fun e!4165322 () Bool)

(assert (=> b!6920633 (= e!4165326 e!4165322)))

(declare-fun c!1284896 () Bool)

(assert (=> b!6920633 (= c!1284896 (is-Star!16914 r1!6342))))

(declare-fun call!629093 () Bool)

(declare-fun bm!629087 () Bool)

(assert (=> bm!629087 (= call!629093 (Exists!3916 (ite c!1284896 lambda!393379 lambda!393380)))))

(declare-fun b!6920634 () Bool)

(declare-fun c!1284897 () Bool)

(assert (=> b!6920634 (= c!1284897 (is-ElementMatch!16914 r1!6342))))

(assert (=> b!6920634 (= e!4165323 e!4165327)))

(declare-fun b!6920635 () Bool)

(declare-fun call!629092 () Bool)

(assert (=> b!6920635 (= e!4165325 call!629092)))

(declare-fun b!6920636 () Bool)

(declare-fun res!2821884 () Bool)

(declare-fun e!4165324 () Bool)

(assert (=> b!6920636 (=> res!2821884 e!4165324)))

(assert (=> b!6920636 (= res!2821884 call!629092)))

(assert (=> b!6920636 (= e!4165322 e!4165324)))

(assert (=> b!6920637 (= e!4165322 call!629093)))

(declare-fun b!6920638 () Bool)

(declare-fun c!1284895 () Bool)

(assert (=> b!6920638 (= c!1284895 (is-Union!16914 r1!6342))))

(assert (=> b!6920638 (= e!4165327 e!4165326)))

(declare-fun b!6920639 () Bool)

(declare-fun e!4165328 () Bool)

(assert (=> b!6920639 (= e!4165328 (matchRSpec!3971 (regTwo!34341 r1!6342) (_1!37074 lt!2470091)))))

(declare-fun b!6920640 () Bool)

(assert (=> b!6920640 (= e!4165326 e!4165328)))

(declare-fun res!2821885 () Bool)

(assert (=> b!6920640 (= res!2821885 (matchRSpec!3971 (regOne!34341 r1!6342) (_1!37074 lt!2470091)))))

(assert (=> b!6920640 (=> res!2821885 e!4165328)))

(assert (=> b!6920641 (= e!4165324 call!629093)))

(declare-fun bm!629088 () Bool)

(assert (=> bm!629088 (= call!629092 (isEmpty!38796 (_1!37074 lt!2470091)))))

(assert (= (and d!2164463 c!1284898) b!6920635))

(assert (= (and d!2164463 (not c!1284898)) b!6920632))

(assert (= (and b!6920632 res!2821886) b!6920634))

(assert (= (and b!6920634 c!1284897) b!6920631))

(assert (= (and b!6920634 (not c!1284897)) b!6920638))

(assert (= (and b!6920638 c!1284895) b!6920640))

(assert (= (and b!6920638 (not c!1284895)) b!6920633))

(assert (= (and b!6920640 (not res!2821885)) b!6920639))

(assert (= (and b!6920633 c!1284896) b!6920636))

(assert (= (and b!6920633 (not c!1284896)) b!6920637))

(assert (= (and b!6920636 (not res!2821884)) b!6920641))

(assert (= (or b!6920641 b!6920637) bm!629087))

(assert (= (or b!6920635 b!6920636) bm!629088))

(declare-fun m!7630536 () Bool)

(assert (=> bm!629087 m!7630536))

(declare-fun m!7630538 () Bool)

(assert (=> b!6920639 m!7630538))

(declare-fun m!7630540 () Bool)

(assert (=> b!6920640 m!7630540))

(declare-fun m!7630542 () Bool)

(assert (=> bm!629088 m!7630542))

(assert (=> b!6920449 d!2164463))

(declare-fun d!2164465 () Bool)

(assert (=> d!2164465 (= (matchR!9053 r2!6280 (_2!37074 lt!2470091)) (matchRSpec!3971 r2!6280 (_2!37074 lt!2470091)))))

(declare-fun lt!2470188 () Unit!160552)

(assert (=> d!2164465 (= lt!2470188 (choose!51526 r2!6280 (_2!37074 lt!2470091)))))

(assert (=> d!2164465 (validRegex!8620 r2!6280)))

(assert (=> d!2164465 (= (mainMatchTheorem!3971 r2!6280 (_2!37074 lt!2470091)) lt!2470188)))

(declare-fun bs!1846741 () Bool)

(assert (= bs!1846741 d!2164465))

(assert (=> bs!1846741 m!7630348))

(assert (=> bs!1846741 m!7630334))

(declare-fun m!7630544 () Bool)

(assert (=> bs!1846741 m!7630544))

(assert (=> bs!1846741 m!7630308))

(assert (=> b!6920449 d!2164465))

(declare-fun bm!629095 () Bool)

(declare-fun call!629102 () Bool)

(declare-fun c!1284903 () Bool)

(assert (=> bm!629095 (= call!629102 (validRegex!8620 (ite c!1284903 (regTwo!34341 r3!135) (regOne!34340 r3!135))))))

(declare-fun b!6920660 () Bool)

(declare-fun e!4165346 () Bool)

(declare-fun e!4165347 () Bool)

(assert (=> b!6920660 (= e!4165346 e!4165347)))

(assert (=> b!6920660 (= c!1284903 (is-Union!16914 r3!135))))

(declare-fun b!6920661 () Bool)

(declare-fun e!4165343 () Bool)

(assert (=> b!6920661 (= e!4165343 call!629102)))

(declare-fun b!6920662 () Bool)

(declare-fun e!4165345 () Bool)

(assert (=> b!6920662 (= e!4165345 e!4165346)))

(declare-fun c!1284904 () Bool)

(assert (=> b!6920662 (= c!1284904 (is-Star!16914 r3!135))))

(declare-fun b!6920663 () Bool)

(declare-fun e!4165348 () Bool)

(assert (=> b!6920663 (= e!4165346 e!4165348)))

(declare-fun res!2821898 () Bool)

(declare-fun nullable!6747 (Regex!16914) Bool)

(assert (=> b!6920663 (= res!2821898 (not (nullable!6747 (reg!17243 r3!135))))))

(assert (=> b!6920663 (=> (not res!2821898) (not e!4165348))))

(declare-fun b!6920664 () Bool)

(declare-fun e!4165344 () Bool)

(declare-fun e!4165349 () Bool)

(assert (=> b!6920664 (= e!4165344 e!4165349)))

(declare-fun res!2821900 () Bool)

(assert (=> b!6920664 (=> (not res!2821900) (not e!4165349))))

(assert (=> b!6920664 (= res!2821900 call!629102)))

(declare-fun d!2164467 () Bool)

(declare-fun res!2821901 () Bool)

(assert (=> d!2164467 (=> res!2821901 e!4165345)))

(assert (=> d!2164467 (= res!2821901 (is-ElementMatch!16914 r3!135))))

(assert (=> d!2164467 (= (validRegex!8620 r3!135) e!4165345)))

(declare-fun b!6920665 () Bool)

(declare-fun res!2821899 () Bool)

(assert (=> b!6920665 (=> (not res!2821899) (not e!4165343))))

(declare-fun call!629101 () Bool)

(assert (=> b!6920665 (= res!2821899 call!629101)))

(assert (=> b!6920665 (= e!4165347 e!4165343)))

(declare-fun b!6920666 () Bool)

(declare-fun call!629100 () Bool)

(assert (=> b!6920666 (= e!4165348 call!629100)))

(declare-fun b!6920667 () Bool)

(declare-fun res!2821897 () Bool)

(assert (=> b!6920667 (=> res!2821897 e!4165344)))

(assert (=> b!6920667 (= res!2821897 (not (is-Concat!25759 r3!135)))))

(assert (=> b!6920667 (= e!4165347 e!4165344)))

(declare-fun bm!629096 () Bool)

(assert (=> bm!629096 (= call!629100 (validRegex!8620 (ite c!1284904 (reg!17243 r3!135) (ite c!1284903 (regOne!34341 r3!135) (regTwo!34340 r3!135)))))))

(declare-fun bm!629097 () Bool)

(assert (=> bm!629097 (= call!629101 call!629100)))

(declare-fun b!6920668 () Bool)

(assert (=> b!6920668 (= e!4165349 call!629101)))

(assert (= (and d!2164467 (not res!2821901)) b!6920662))

(assert (= (and b!6920662 c!1284904) b!6920663))

(assert (= (and b!6920662 (not c!1284904)) b!6920660))

(assert (= (and b!6920663 res!2821898) b!6920666))

(assert (= (and b!6920660 c!1284903) b!6920665))

(assert (= (and b!6920660 (not c!1284903)) b!6920667))

(assert (= (and b!6920665 res!2821899) b!6920661))

(assert (= (and b!6920667 (not res!2821897)) b!6920664))

(assert (= (and b!6920664 res!2821900) b!6920668))

(assert (= (or b!6920665 b!6920668) bm!629097))

(assert (= (or b!6920661 b!6920664) bm!629095))

(assert (= (or b!6920666 bm!629097) bm!629096))

(declare-fun m!7630546 () Bool)

(assert (=> bm!629095 m!7630546))

(declare-fun m!7630548 () Bool)

(assert (=> b!6920663 m!7630548))

(declare-fun m!7630550 () Bool)

(assert (=> bm!629096 m!7630550))

(assert (=> b!6920444 d!2164467))

(declare-fun b!6920699 () Bool)

(declare-fun e!4165369 () Option!16683)

(declare-fun e!4165370 () Option!16683)

(assert (=> b!6920699 (= e!4165369 e!4165370)))

(declare-fun c!1284913 () Bool)

(assert (=> b!6920699 (= c!1284913 (is-Nil!66543 lt!2470093))))

(declare-fun b!6920701 () Bool)

(assert (=> b!6920701 (= e!4165369 (Some!16682 (tuple2!67543 Nil!66543 lt!2470093)))))

(declare-fun b!6920702 () Bool)

(declare-fun e!4165366 () Bool)

(declare-fun lt!2470200 () Option!16683)

(assert (=> b!6920702 (= e!4165366 (= (++!14957 (_1!37074 (get!23312 lt!2470200)) (_2!37074 (get!23312 lt!2470200))) lt!2470093))))

(declare-fun b!6920703 () Bool)

(declare-fun e!4165368 () Bool)

(assert (=> b!6920703 (= e!4165368 (not (isDefined!13386 lt!2470200)))))

(declare-fun b!6920704 () Bool)

(declare-fun res!2821921 () Bool)

(assert (=> b!6920704 (=> (not res!2821921) (not e!4165366))))

(assert (=> b!6920704 (= res!2821921 (matchR!9053 r2!6280 (_1!37074 (get!23312 lt!2470200))))))

(declare-fun b!6920705 () Bool)

(assert (=> b!6920705 (= e!4165370 None!16682)))

(declare-fun b!6920706 () Bool)

(declare-fun lt!2470199 () Unit!160552)

(declare-fun lt!2470198 () Unit!160552)

(assert (=> b!6920706 (= lt!2470199 lt!2470198)))

(assert (=> b!6920706 (= (++!14957 (++!14957 Nil!66543 (Cons!66543 (h!72991 lt!2470093) Nil!66543)) (t!380410 lt!2470093)) lt!2470093)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2826 (List!66667 C!34098 List!66667 List!66667) Unit!160552)

(assert (=> b!6920706 (= lt!2470198 (lemmaMoveElementToOtherListKeepsConcatEq!2826 Nil!66543 (h!72991 lt!2470093) (t!380410 lt!2470093) lt!2470093))))

(assert (=> b!6920706 (= e!4165370 (findConcatSeparation!3097 r2!6280 r3!135 (++!14957 Nil!66543 (Cons!66543 (h!72991 lt!2470093) Nil!66543)) (t!380410 lt!2470093) lt!2470093))))

(declare-fun b!6920707 () Bool)

(declare-fun res!2821919 () Bool)

(assert (=> b!6920707 (=> (not res!2821919) (not e!4165366))))

(assert (=> b!6920707 (= res!2821919 (matchR!9053 r3!135 (_2!37074 (get!23312 lt!2470200))))))

(declare-fun d!2164471 () Bool)

(assert (=> d!2164471 e!4165368))

(declare-fun res!2821922 () Bool)

(assert (=> d!2164471 (=> res!2821922 e!4165368)))

(assert (=> d!2164471 (= res!2821922 e!4165366)))

(declare-fun res!2821920 () Bool)

(assert (=> d!2164471 (=> (not res!2821920) (not e!4165366))))

(assert (=> d!2164471 (= res!2821920 (isDefined!13386 lt!2470200))))

(assert (=> d!2164471 (= lt!2470200 e!4165369)))

(declare-fun c!1284912 () Bool)

(declare-fun e!4165367 () Bool)

(assert (=> d!2164471 (= c!1284912 e!4165367)))

(declare-fun res!2821918 () Bool)

(assert (=> d!2164471 (=> (not res!2821918) (not e!4165367))))

(assert (=> d!2164471 (= res!2821918 (matchR!9053 r2!6280 Nil!66543))))

(assert (=> d!2164471 (validRegex!8620 r2!6280)))

(assert (=> d!2164471 (= (findConcatSeparation!3097 r2!6280 r3!135 Nil!66543 lt!2470093 lt!2470093) lt!2470200)))

(declare-fun b!6920700 () Bool)

(assert (=> b!6920700 (= e!4165367 (matchR!9053 r3!135 lt!2470093))))

(assert (= (and d!2164471 res!2821918) b!6920700))

(assert (= (and d!2164471 c!1284912) b!6920701))

(assert (= (and d!2164471 (not c!1284912)) b!6920699))

(assert (= (and b!6920699 c!1284913) b!6920705))

(assert (= (and b!6920699 (not c!1284913)) b!6920706))

(assert (= (and d!2164471 res!2821920) b!6920704))

(assert (= (and b!6920704 res!2821921) b!6920707))

(assert (= (and b!6920707 res!2821919) b!6920702))

(assert (= (and d!2164471 (not res!2821922)) b!6920703))

(declare-fun m!7630566 () Bool)

(assert (=> b!6920707 m!7630566))

(declare-fun m!7630568 () Bool)

(assert (=> b!6920707 m!7630568))

(declare-fun m!7630570 () Bool)

(assert (=> b!6920703 m!7630570))

(assert (=> b!6920704 m!7630566))

(declare-fun m!7630572 () Bool)

(assert (=> b!6920704 m!7630572))

(declare-fun m!7630574 () Bool)

(assert (=> b!6920706 m!7630574))

(assert (=> b!6920706 m!7630574))

(declare-fun m!7630576 () Bool)

(assert (=> b!6920706 m!7630576))

(declare-fun m!7630578 () Bool)

(assert (=> b!6920706 m!7630578))

(assert (=> b!6920706 m!7630574))

(declare-fun m!7630580 () Bool)

(assert (=> b!6920706 m!7630580))

(assert (=> b!6920702 m!7630566))

(declare-fun m!7630582 () Bool)

(assert (=> b!6920702 m!7630582))

(assert (=> d!2164471 m!7630570))

(declare-fun m!7630584 () Bool)

(assert (=> d!2164471 m!7630584))

(assert (=> d!2164471 m!7630308))

(declare-fun m!7630586 () Bool)

(assert (=> b!6920700 m!7630586))

(assert (=> b!6920428 d!2164471))

(declare-fun bs!1846742 () Bool)

(declare-fun b!6920718 () Bool)

(assert (= bs!1846742 (and b!6920718 b!6920637)))

(declare-fun lambda!393381 () Int)

(assert (=> bs!1846742 (not (= lambda!393381 lambda!393380))))

(declare-fun bs!1846743 () Bool)

(assert (= bs!1846743 (and b!6920718 b!6920626)))

(assert (=> bs!1846743 (= (and (= lt!2470093 (_2!37074 lt!2470091)) (= (reg!17243 lt!2470101) (reg!17243 r2!6280)) (= lt!2470101 r2!6280)) (= lambda!393381 lambda!393377))))

(declare-fun bs!1846744 () Bool)

(assert (= bs!1846744 (and b!6920718 b!6920428)))

(assert (=> bs!1846744 (not (= lambda!393381 lambda!393347))))

(declare-fun bs!1846745 () Bool)

(assert (= bs!1846745 (and b!6920718 b!6920441)))

(assert (=> bs!1846745 (not (= lambda!393381 lambda!393345))))

(assert (=> bs!1846745 (not (= lambda!393381 lambda!393346))))

(declare-fun bs!1846746 () Bool)

(assert (= bs!1846746 (and b!6920718 b!6920439)))

(assert (=> bs!1846746 (not (= lambda!393381 lambda!393344))))

(assert (=> bs!1846744 (not (= lambda!393381 lambda!393348))))

(assert (=> bs!1846746 (not (= lambda!393381 lambda!393343))))

(declare-fun bs!1846747 () Bool)

(assert (= bs!1846747 (and b!6920718 b!6920641)))

(assert (=> bs!1846747 (= (and (= lt!2470093 (_1!37074 lt!2470091)) (= (reg!17243 lt!2470101) (reg!17243 r1!6342)) (= lt!2470101 r1!6342)) (= lambda!393381 lambda!393379))))

(declare-fun bs!1846748 () Bool)

(assert (= bs!1846748 (and b!6920718 b!6920622)))

(assert (=> bs!1846748 (not (= lambda!393381 lambda!393378))))

(assert (=> b!6920718 true))

(assert (=> b!6920718 true))

(declare-fun bs!1846749 () Bool)

(declare-fun b!6920714 () Bool)

(assert (= bs!1846749 (and b!6920714 b!6920637)))

(declare-fun lambda!393382 () Int)

(assert (=> bs!1846749 (= (and (= lt!2470093 (_1!37074 lt!2470091)) (= (regOne!34340 lt!2470101) (regOne!34340 r1!6342)) (= (regTwo!34340 lt!2470101) (regTwo!34340 r1!6342))) (= lambda!393382 lambda!393380))))

(declare-fun bs!1846750 () Bool)

(assert (= bs!1846750 (and b!6920714 b!6920626)))

(assert (=> bs!1846750 (not (= lambda!393382 lambda!393377))))

(declare-fun bs!1846751 () Bool)

(assert (= bs!1846751 (and b!6920714 b!6920428)))

(assert (=> bs!1846751 (not (= lambda!393382 lambda!393347))))

(declare-fun bs!1846752 () Bool)

(assert (= bs!1846752 (and b!6920714 b!6920441)))

(assert (=> bs!1846752 (not (= lambda!393382 lambda!393345))))

(assert (=> bs!1846752 (= (and (= lt!2470093 (_1!37074 lt!2470095)) (= (regOne!34340 lt!2470101) r1!6342) (= (regTwo!34340 lt!2470101) r2!6280)) (= lambda!393382 lambda!393346))))

(declare-fun bs!1846753 () Bool)

(assert (= bs!1846753 (and b!6920714 b!6920439)))

(assert (=> bs!1846753 (= (and (= lt!2470093 s!14361) (= (regOne!34340 lt!2470101) lt!2470108) (= (regTwo!34340 lt!2470101) r3!135)) (= lambda!393382 lambda!393344))))

(assert (=> bs!1846751 (= (and (= (regOne!34340 lt!2470101) r2!6280) (= (regTwo!34340 lt!2470101) r3!135)) (= lambda!393382 lambda!393348))))

(assert (=> bs!1846753 (not (= lambda!393382 lambda!393343))))

(declare-fun bs!1846754 () Bool)

(assert (= bs!1846754 (and b!6920714 b!6920641)))

(assert (=> bs!1846754 (not (= lambda!393382 lambda!393379))))

(declare-fun bs!1846755 () Bool)

(assert (= bs!1846755 (and b!6920714 b!6920718)))

(assert (=> bs!1846755 (not (= lambda!393382 lambda!393381))))

(declare-fun bs!1846756 () Bool)

(assert (= bs!1846756 (and b!6920714 b!6920622)))

(assert (=> bs!1846756 (= (and (= lt!2470093 (_2!37074 lt!2470091)) (= (regOne!34340 lt!2470101) (regOne!34340 r2!6280)) (= (regTwo!34340 lt!2470101) (regTwo!34340 r2!6280))) (= lambda!393382 lambda!393378))))

(assert (=> b!6920714 true))

(assert (=> b!6920714 true))

(declare-fun b!6920708 () Bool)

(declare-fun e!4165376 () Bool)

(assert (=> b!6920708 (= e!4165376 (= lt!2470093 (Cons!66543 (c!1284876 lt!2470101) Nil!66543)))))

(declare-fun b!6920709 () Bool)

(declare-fun e!4165374 () Bool)

(declare-fun e!4165372 () Bool)

(assert (=> b!6920709 (= e!4165374 e!4165372)))

(declare-fun res!2821925 () Bool)

(assert (=> b!6920709 (= res!2821925 (not (is-EmptyLang!16914 lt!2470101)))))

(assert (=> b!6920709 (=> (not res!2821925) (not e!4165372))))

(declare-fun d!2164475 () Bool)

(declare-fun c!1284917 () Bool)

(assert (=> d!2164475 (= c!1284917 (is-EmptyExpr!16914 lt!2470101))))

(assert (=> d!2164475 (= (matchRSpec!3971 lt!2470101 lt!2470093) e!4165374)))

(declare-fun b!6920710 () Bool)

(declare-fun e!4165375 () Bool)

(declare-fun e!4165371 () Bool)

(assert (=> b!6920710 (= e!4165375 e!4165371)))

(declare-fun c!1284915 () Bool)

(assert (=> b!6920710 (= c!1284915 (is-Star!16914 lt!2470101))))

(declare-fun bm!629098 () Bool)

(declare-fun call!629104 () Bool)

(assert (=> bm!629098 (= call!629104 (Exists!3916 (ite c!1284915 lambda!393381 lambda!393382)))))

(declare-fun b!6920711 () Bool)

(declare-fun c!1284916 () Bool)

(assert (=> b!6920711 (= c!1284916 (is-ElementMatch!16914 lt!2470101))))

(assert (=> b!6920711 (= e!4165372 e!4165376)))

(declare-fun b!6920712 () Bool)

(declare-fun call!629103 () Bool)

(assert (=> b!6920712 (= e!4165374 call!629103)))

(declare-fun b!6920713 () Bool)

(declare-fun res!2821923 () Bool)

(declare-fun e!4165373 () Bool)

(assert (=> b!6920713 (=> res!2821923 e!4165373)))

(assert (=> b!6920713 (= res!2821923 call!629103)))

(assert (=> b!6920713 (= e!4165371 e!4165373)))

(assert (=> b!6920714 (= e!4165371 call!629104)))

(declare-fun b!6920715 () Bool)

(declare-fun c!1284914 () Bool)

(assert (=> b!6920715 (= c!1284914 (is-Union!16914 lt!2470101))))

(assert (=> b!6920715 (= e!4165376 e!4165375)))

(declare-fun b!6920716 () Bool)

(declare-fun e!4165377 () Bool)

(assert (=> b!6920716 (= e!4165377 (matchRSpec!3971 (regTwo!34341 lt!2470101) lt!2470093))))

(declare-fun b!6920717 () Bool)

(assert (=> b!6920717 (= e!4165375 e!4165377)))

(declare-fun res!2821924 () Bool)

(assert (=> b!6920717 (= res!2821924 (matchRSpec!3971 (regOne!34341 lt!2470101) lt!2470093))))

(assert (=> b!6920717 (=> res!2821924 e!4165377)))

(assert (=> b!6920718 (= e!4165373 call!629104)))

(declare-fun bm!629099 () Bool)

(assert (=> bm!629099 (= call!629103 (isEmpty!38796 lt!2470093))))

(assert (= (and d!2164475 c!1284917) b!6920712))

(assert (= (and d!2164475 (not c!1284917)) b!6920709))

(assert (= (and b!6920709 res!2821925) b!6920711))

(assert (= (and b!6920711 c!1284916) b!6920708))

(assert (= (and b!6920711 (not c!1284916)) b!6920715))

(assert (= (and b!6920715 c!1284914) b!6920717))

(assert (= (and b!6920715 (not c!1284914)) b!6920710))

(assert (= (and b!6920717 (not res!2821924)) b!6920716))

(assert (= (and b!6920710 c!1284915) b!6920713))

(assert (= (and b!6920710 (not c!1284915)) b!6920714))

(assert (= (and b!6920713 (not res!2821923)) b!6920718))

(assert (= (or b!6920718 b!6920714) bm!629098))

(assert (= (or b!6920712 b!6920713) bm!629099))

(declare-fun m!7630588 () Bool)

(assert (=> bm!629098 m!7630588))

(declare-fun m!7630590 () Bool)

(assert (=> b!6920716 m!7630590))

(declare-fun m!7630592 () Bool)

(assert (=> b!6920717 m!7630592))

(declare-fun m!7630594 () Bool)

(assert (=> bm!629099 m!7630594))

(assert (=> b!6920428 d!2164475))

(declare-fun d!2164477 () Bool)

(assert (=> d!2164477 (= (matchR!9053 lt!2470101 lt!2470093) (matchRSpec!3971 lt!2470101 lt!2470093))))

(declare-fun lt!2470201 () Unit!160552)

(assert (=> d!2164477 (= lt!2470201 (choose!51526 lt!2470101 lt!2470093))))

(assert (=> d!2164477 (validRegex!8620 lt!2470101)))

(assert (=> d!2164477 (= (mainMatchTheorem!3971 lt!2470101 lt!2470093) lt!2470201)))

(declare-fun bs!1846757 () Bool)

(assert (= bs!1846757 d!2164477))

(assert (=> bs!1846757 m!7630378))

(assert (=> bs!1846757 m!7630386))

(declare-fun m!7630596 () Bool)

(assert (=> bs!1846757 m!7630596))

(declare-fun m!7630598 () Bool)

(assert (=> bs!1846757 m!7630598))

(assert (=> b!6920428 d!2164477))

(declare-fun d!2164479 () Bool)

(declare-fun isEmpty!38797 (Option!16683) Bool)

(assert (=> d!2164479 (= (isDefined!13386 (findConcatSeparation!3097 r2!6280 r3!135 Nil!66543 lt!2470093 lt!2470093)) (not (isEmpty!38797 (findConcatSeparation!3097 r2!6280 r3!135 Nil!66543 lt!2470093 lt!2470093))))))

(declare-fun bs!1846758 () Bool)

(assert (= bs!1846758 d!2164479))

(assert (=> bs!1846758 m!7630372))

(declare-fun m!7630600 () Bool)

(assert (=> bs!1846758 m!7630600))

(assert (=> b!6920428 d!2164479))

(declare-fun bs!1846759 () Bool)

(declare-fun d!2164481 () Bool)

(assert (= bs!1846759 (and d!2164481 b!6920637)))

(declare-fun lambda!393387 () Int)

(assert (=> bs!1846759 (not (= lambda!393387 lambda!393380))))

(declare-fun bs!1846760 () Bool)

(assert (= bs!1846760 (and d!2164481 b!6920626)))

(assert (=> bs!1846760 (not (= lambda!393387 lambda!393377))))

(declare-fun bs!1846761 () Bool)

(assert (= bs!1846761 (and d!2164481 b!6920428)))

(assert (=> bs!1846761 (= lambda!393387 lambda!393347)))

(declare-fun bs!1846762 () Bool)

(assert (= bs!1846762 (and d!2164481 b!6920441)))

(assert (=> bs!1846762 (= (and (= lt!2470093 (_1!37074 lt!2470095)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393387 lambda!393345))))

(assert (=> bs!1846762 (not (= lambda!393387 lambda!393346))))

(declare-fun bs!1846763 () Bool)

(assert (= bs!1846763 (and d!2164481 b!6920439)))

(assert (=> bs!1846763 (not (= lambda!393387 lambda!393344))))

(assert (=> bs!1846761 (not (= lambda!393387 lambda!393348))))

(assert (=> bs!1846763 (= (and (= lt!2470093 s!14361) (= r2!6280 lt!2470108)) (= lambda!393387 lambda!393343))))

(declare-fun bs!1846764 () Bool)

(assert (= bs!1846764 (and d!2164481 b!6920641)))

(assert (=> bs!1846764 (not (= lambda!393387 lambda!393379))))

(declare-fun bs!1846765 () Bool)

(assert (= bs!1846765 (and d!2164481 b!6920718)))

(assert (=> bs!1846765 (not (= lambda!393387 lambda!393381))))

(declare-fun bs!1846766 () Bool)

(assert (= bs!1846766 (and d!2164481 b!6920714)))

(assert (=> bs!1846766 (not (= lambda!393387 lambda!393382))))

(declare-fun bs!1846767 () Bool)

(assert (= bs!1846767 (and d!2164481 b!6920622)))

(assert (=> bs!1846767 (not (= lambda!393387 lambda!393378))))

(assert (=> d!2164481 true))

(assert (=> d!2164481 true))

(assert (=> d!2164481 true))

(assert (=> d!2164481 (= (isDefined!13386 (findConcatSeparation!3097 r2!6280 r3!135 Nil!66543 lt!2470093 lt!2470093)) (Exists!3916 lambda!393387))))

(declare-fun lt!2470204 () Unit!160552)

(declare-fun choose!51527 (Regex!16914 Regex!16914 List!66667) Unit!160552)

(assert (=> d!2164481 (= lt!2470204 (choose!51527 r2!6280 r3!135 lt!2470093))))

(assert (=> d!2164481 (validRegex!8620 r2!6280)))

(assert (=> d!2164481 (= (lemmaFindConcatSeparationEquivalentToExists!2859 r2!6280 r3!135 lt!2470093) lt!2470204)))

(declare-fun bs!1846768 () Bool)

(assert (= bs!1846768 d!2164481))

(declare-fun m!7630602 () Bool)

(assert (=> bs!1846768 m!7630602))

(assert (=> bs!1846768 m!7630372))

(assert (=> bs!1846768 m!7630372))

(assert (=> bs!1846768 m!7630388))

(assert (=> bs!1846768 m!7630308))

(declare-fun m!7630604 () Bool)

(assert (=> bs!1846768 m!7630604))

(assert (=> b!6920428 d!2164481))

(declare-fun d!2164483 () Bool)

(declare-fun choose!51528 (Int) Bool)

(assert (=> d!2164483 (= (Exists!3916 lambda!393347) (choose!51528 lambda!393347))))

(declare-fun bs!1846769 () Bool)

(assert (= bs!1846769 d!2164483))

(declare-fun m!7630606 () Bool)

(assert (=> bs!1846769 m!7630606))

(assert (=> b!6920428 d!2164483))

(declare-fun d!2164485 () Bool)

(assert (=> d!2164485 (= (Exists!3916 lambda!393348) (choose!51528 lambda!393348))))

(declare-fun bs!1846770 () Bool)

(assert (= bs!1846770 d!2164485))

(declare-fun m!7630608 () Bool)

(assert (=> bs!1846770 m!7630608))

(assert (=> b!6920428 d!2164485))

(declare-fun b!6920783 () Bool)

(declare-fun e!4165416 () Bool)

(declare-fun head!13875 (List!66667) C!34098)

(assert (=> b!6920783 (= e!4165416 (= (head!13875 lt!2470093) (c!1284876 lt!2470101)))))

(declare-fun b!6920784 () Bool)

(declare-fun res!2821963 () Bool)

(declare-fun e!4165413 () Bool)

(assert (=> b!6920784 (=> res!2821963 e!4165413)))

(assert (=> b!6920784 (= res!2821963 (not (is-ElementMatch!16914 lt!2470101)))))

(declare-fun e!4165412 () Bool)

(assert (=> b!6920784 (= e!4165412 e!4165413)))

(declare-fun b!6920785 () Bool)

(declare-fun e!4165415 () Bool)

(assert (=> b!6920785 (= e!4165415 (not (= (head!13875 lt!2470093) (c!1284876 lt!2470101))))))

(declare-fun b!6920786 () Bool)

(declare-fun e!4165417 () Bool)

(assert (=> b!6920786 (= e!4165417 (nullable!6747 lt!2470101))))

(declare-fun d!2164487 () Bool)

(declare-fun e!4165414 () Bool)

(assert (=> d!2164487 e!4165414))

(declare-fun c!1284933 () Bool)

(assert (=> d!2164487 (= c!1284933 (is-EmptyExpr!16914 lt!2470101))))

(declare-fun lt!2470207 () Bool)

(assert (=> d!2164487 (= lt!2470207 e!4165417)))

(declare-fun c!1284934 () Bool)

(assert (=> d!2164487 (= c!1284934 (isEmpty!38796 lt!2470093))))

(assert (=> d!2164487 (validRegex!8620 lt!2470101)))

(assert (=> d!2164487 (= (matchR!9053 lt!2470101 lt!2470093) lt!2470207)))

(declare-fun b!6920787 () Bool)

(declare-fun e!4165418 () Bool)

(assert (=> b!6920787 (= e!4165418 e!4165415)))

(declare-fun res!2821967 () Bool)

(assert (=> b!6920787 (=> res!2821967 e!4165415)))

(declare-fun call!629111 () Bool)

(assert (=> b!6920787 (= res!2821967 call!629111)))

(declare-fun b!6920788 () Bool)

(declare-fun res!2821966 () Bool)

(assert (=> b!6920788 (=> res!2821966 e!4165413)))

(assert (=> b!6920788 (= res!2821966 e!4165416)))

(declare-fun res!2821968 () Bool)

(assert (=> b!6920788 (=> (not res!2821968) (not e!4165416))))

(assert (=> b!6920788 (= res!2821968 lt!2470207)))

(declare-fun b!6920789 () Bool)

(assert (=> b!6920789 (= e!4165414 (= lt!2470207 call!629111))))

(declare-fun b!6920790 () Bool)

(declare-fun res!2821965 () Bool)

(assert (=> b!6920790 (=> (not res!2821965) (not e!4165416))))

(assert (=> b!6920790 (= res!2821965 (not call!629111))))

(declare-fun b!6920791 () Bool)

(declare-fun res!2821962 () Bool)

(assert (=> b!6920791 (=> res!2821962 e!4165415)))

(declare-fun tail!12927 (List!66667) List!66667)

(assert (=> b!6920791 (= res!2821962 (not (isEmpty!38796 (tail!12927 lt!2470093))))))

(declare-fun b!6920792 () Bool)

(assert (=> b!6920792 (= e!4165414 e!4165412)))

(declare-fun c!1284932 () Bool)

(assert (=> b!6920792 (= c!1284932 (is-EmptyLang!16914 lt!2470101))))

(declare-fun b!6920793 () Bool)

(declare-fun res!2821969 () Bool)

(assert (=> b!6920793 (=> (not res!2821969) (not e!4165416))))

(assert (=> b!6920793 (= res!2821969 (isEmpty!38796 (tail!12927 lt!2470093)))))

(declare-fun b!6920794 () Bool)

(assert (=> b!6920794 (= e!4165413 e!4165418)))

(declare-fun res!2821964 () Bool)

(assert (=> b!6920794 (=> (not res!2821964) (not e!4165418))))

(assert (=> b!6920794 (= res!2821964 (not lt!2470207))))

(declare-fun bm!629106 () Bool)

(assert (=> bm!629106 (= call!629111 (isEmpty!38796 lt!2470093))))

(declare-fun b!6920795 () Bool)

(assert (=> b!6920795 (= e!4165412 (not lt!2470207))))

(declare-fun b!6920796 () Bool)

(declare-fun derivativeStep!5422 (Regex!16914 C!34098) Regex!16914)

(assert (=> b!6920796 (= e!4165417 (matchR!9053 (derivativeStep!5422 lt!2470101 (head!13875 lt!2470093)) (tail!12927 lt!2470093)))))

(assert (= (and d!2164487 c!1284934) b!6920786))

(assert (= (and d!2164487 (not c!1284934)) b!6920796))

(assert (= (and d!2164487 c!1284933) b!6920789))

(assert (= (and d!2164487 (not c!1284933)) b!6920792))

(assert (= (and b!6920792 c!1284932) b!6920795))

(assert (= (and b!6920792 (not c!1284932)) b!6920784))

(assert (= (and b!6920784 (not res!2821963)) b!6920788))

(assert (= (and b!6920788 res!2821968) b!6920790))

(assert (= (and b!6920790 res!2821965) b!6920793))

(assert (= (and b!6920793 res!2821969) b!6920783))

(assert (= (and b!6920788 (not res!2821966)) b!6920794))

(assert (= (and b!6920794 res!2821964) b!6920787))

(assert (= (and b!6920787 (not res!2821967)) b!6920791))

(assert (= (and b!6920791 (not res!2821962)) b!6920785))

(assert (= (or b!6920789 b!6920787 b!6920790) bm!629106))

(declare-fun m!7630610 () Bool)

(assert (=> b!6920793 m!7630610))

(assert (=> b!6920793 m!7630610))

(declare-fun m!7630612 () Bool)

(assert (=> b!6920793 m!7630612))

(declare-fun m!7630614 () Bool)

(assert (=> b!6920796 m!7630614))

(assert (=> b!6920796 m!7630614))

(declare-fun m!7630616 () Bool)

(assert (=> b!6920796 m!7630616))

(assert (=> b!6920796 m!7630610))

(assert (=> b!6920796 m!7630616))

(assert (=> b!6920796 m!7630610))

(declare-fun m!7630618 () Bool)

(assert (=> b!6920796 m!7630618))

(assert (=> d!2164487 m!7630594))

(assert (=> d!2164487 m!7630598))

(assert (=> bm!629106 m!7630594))

(assert (=> b!6920791 m!7630610))

(assert (=> b!6920791 m!7630610))

(assert (=> b!6920791 m!7630612))

(assert (=> b!6920785 m!7630614))

(declare-fun m!7630620 () Bool)

(assert (=> b!6920786 m!7630620))

(assert (=> b!6920783 m!7630614))

(assert (=> b!6920428 d!2164487))

(declare-fun b!6920816 () Bool)

(declare-fun e!4165432 () Bool)

(declare-fun e!4165433 () Bool)

(assert (=> b!6920816 (= e!4165432 e!4165433)))

(declare-fun res!2821982 () Bool)

(assert (=> b!6920816 (=> (not res!2821982) (not e!4165433))))

(assert (=> b!6920816 (= res!2821982 (not (is-Nil!66543 (_2!37074 lt!2470091))))))

(declare-fun b!6920817 () Bool)

(declare-fun res!2821981 () Bool)

(assert (=> b!6920817 (=> (not res!2821981) (not e!4165433))))

(assert (=> b!6920817 (= res!2821981 (= (head!13875 Nil!66543) (head!13875 (_2!37074 lt!2470091))))))

(declare-fun d!2164489 () Bool)

(declare-fun e!4165434 () Bool)

(assert (=> d!2164489 e!4165434))

(declare-fun res!2821984 () Bool)

(assert (=> d!2164489 (=> res!2821984 e!4165434)))

(declare-fun lt!2470210 () Bool)

(assert (=> d!2164489 (= res!2821984 (not lt!2470210))))

(assert (=> d!2164489 (= lt!2470210 e!4165432)))

(declare-fun res!2821983 () Bool)

(assert (=> d!2164489 (=> res!2821983 e!4165432)))

(assert (=> d!2164489 (= res!2821983 (is-Nil!66543 Nil!66543))))

(assert (=> d!2164489 (= (isPrefix!5805 Nil!66543 (_2!37074 lt!2470091)) lt!2470210)))

(declare-fun b!6920818 () Bool)

(assert (=> b!6920818 (= e!4165433 (isPrefix!5805 (tail!12927 Nil!66543) (tail!12927 (_2!37074 lt!2470091))))))

(declare-fun b!6920819 () Bool)

(assert (=> b!6920819 (= e!4165434 (>= (size!40772 (_2!37074 lt!2470091)) (size!40772 Nil!66543)))))

(assert (= (and d!2164489 (not res!2821983)) b!6920816))

(assert (= (and b!6920816 res!2821982) b!6920817))

(assert (= (and b!6920817 res!2821981) b!6920818))

(assert (= (and d!2164489 (not res!2821984)) b!6920819))

(declare-fun m!7630622 () Bool)

(assert (=> b!6920817 m!7630622))

(declare-fun m!7630624 () Bool)

(assert (=> b!6920817 m!7630624))

(declare-fun m!7630626 () Bool)

(assert (=> b!6920818 m!7630626))

(declare-fun m!7630628 () Bool)

(assert (=> b!6920818 m!7630628))

(assert (=> b!6920818 m!7630626))

(assert (=> b!6920818 m!7630628))

(declare-fun m!7630630 () Bool)

(assert (=> b!6920818 m!7630630))

(assert (=> b!6920819 m!7630508))

(assert (=> b!6920819 m!7630492))

(assert (=> b!6920428 d!2164489))

(declare-fun d!2164491 () Bool)

(declare-fun e!4165435 () Bool)

(assert (=> d!2164491 e!4165435))

(declare-fun res!2821986 () Bool)

(assert (=> d!2164491 (=> (not res!2821986) (not e!4165435))))

(declare-fun lt!2470211 () List!66667)

(assert (=> d!2164491 (= res!2821986 (= (content!13075 lt!2470211) (set.union (content!13075 (_2!37074 lt!2470091)) (content!13075 (_2!37074 lt!2470095)))))))

(declare-fun e!4165436 () List!66667)

(assert (=> d!2164491 (= lt!2470211 e!4165436)))

(declare-fun c!1284939 () Bool)

(assert (=> d!2164491 (= c!1284939 (is-Nil!66543 (_2!37074 lt!2470091)))))

(assert (=> d!2164491 (= (++!14957 (_2!37074 lt!2470091) (_2!37074 lt!2470095)) lt!2470211)))

(declare-fun b!6920820 () Bool)

(assert (=> b!6920820 (= e!4165436 (_2!37074 lt!2470095))))

(declare-fun b!6920823 () Bool)

(assert (=> b!6920823 (= e!4165435 (or (not (= (_2!37074 lt!2470095) Nil!66543)) (= lt!2470211 (_2!37074 lt!2470091))))))

(declare-fun b!6920822 () Bool)

(declare-fun res!2821985 () Bool)

(assert (=> b!6920822 (=> (not res!2821985) (not e!4165435))))

(assert (=> b!6920822 (= res!2821985 (= (size!40772 lt!2470211) (+ (size!40772 (_2!37074 lt!2470091)) (size!40772 (_2!37074 lt!2470095)))))))

(declare-fun b!6920821 () Bool)

(assert (=> b!6920821 (= e!4165436 (Cons!66543 (h!72991 (_2!37074 lt!2470091)) (++!14957 (t!380410 (_2!37074 lt!2470091)) (_2!37074 lt!2470095))))))

(assert (= (and d!2164491 c!1284939) b!6920820))

(assert (= (and d!2164491 (not c!1284939)) b!6920821))

(assert (= (and d!2164491 res!2821986) b!6920822))

(assert (= (and b!6920822 res!2821985) b!6920823))

(declare-fun m!7630632 () Bool)

(assert (=> d!2164491 m!7630632))

(assert (=> d!2164491 m!7630502))

(assert (=> d!2164491 m!7630526))

(declare-fun m!7630634 () Bool)

(assert (=> b!6920822 m!7630634))

(assert (=> b!6920822 m!7630508))

(assert (=> b!6920822 m!7630532))

(declare-fun m!7630636 () Bool)

(assert (=> b!6920821 m!7630636))

(assert (=> b!6920428 d!2164491))

(declare-fun bs!1846778 () Bool)

(declare-fun d!2164493 () Bool)

(assert (= bs!1846778 (and d!2164493 b!6920637)))

(declare-fun lambda!393396 () Int)

(assert (=> bs!1846778 (not (= lambda!393396 lambda!393380))))

(declare-fun bs!1846779 () Bool)

(assert (= bs!1846779 (and d!2164493 b!6920626)))

(assert (=> bs!1846779 (not (= lambda!393396 lambda!393377))))

(declare-fun bs!1846780 () Bool)

(assert (= bs!1846780 (and d!2164493 b!6920428)))

(assert (=> bs!1846780 (= lambda!393396 lambda!393347)))

(declare-fun bs!1846781 () Bool)

(assert (= bs!1846781 (and d!2164493 b!6920441)))

(assert (=> bs!1846781 (= (and (= lt!2470093 (_1!37074 lt!2470095)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393396 lambda!393345))))

(assert (=> bs!1846781 (not (= lambda!393396 lambda!393346))))

(declare-fun bs!1846782 () Bool)

(assert (= bs!1846782 (and d!2164493 b!6920439)))

(assert (=> bs!1846782 (not (= lambda!393396 lambda!393344))))

(assert (=> bs!1846780 (not (= lambda!393396 lambda!393348))))

(assert (=> bs!1846782 (= (and (= lt!2470093 s!14361) (= r2!6280 lt!2470108)) (= lambda!393396 lambda!393343))))

(declare-fun bs!1846783 () Bool)

(assert (= bs!1846783 (and d!2164493 d!2164481)))

(assert (=> bs!1846783 (= lambda!393396 lambda!393387)))

(declare-fun bs!1846784 () Bool)

(assert (= bs!1846784 (and d!2164493 b!6920641)))

(assert (=> bs!1846784 (not (= lambda!393396 lambda!393379))))

(declare-fun bs!1846785 () Bool)

(assert (= bs!1846785 (and d!2164493 b!6920718)))

(assert (=> bs!1846785 (not (= lambda!393396 lambda!393381))))

(declare-fun bs!1846786 () Bool)

(assert (= bs!1846786 (and d!2164493 b!6920714)))

(assert (=> bs!1846786 (not (= lambda!393396 lambda!393382))))

(declare-fun bs!1846787 () Bool)

(assert (= bs!1846787 (and d!2164493 b!6920622)))

(assert (=> bs!1846787 (not (= lambda!393396 lambda!393378))))

(assert (=> d!2164493 true))

(assert (=> d!2164493 true))

(assert (=> d!2164493 true))

(declare-fun lambda!393397 () Int)

(assert (=> bs!1846778 (= (and (= lt!2470093 (_1!37074 lt!2470091)) (= r2!6280 (regOne!34340 r1!6342)) (= r3!135 (regTwo!34340 r1!6342))) (= lambda!393397 lambda!393380))))

(assert (=> bs!1846779 (not (= lambda!393397 lambda!393377))))

(assert (=> bs!1846780 (not (= lambda!393397 lambda!393347))))

(declare-fun bs!1846788 () Bool)

(assert (= bs!1846788 d!2164493))

(assert (=> bs!1846788 (not (= lambda!393397 lambda!393396))))

(assert (=> bs!1846781 (not (= lambda!393397 lambda!393345))))

(assert (=> bs!1846781 (= (and (= lt!2470093 (_1!37074 lt!2470095)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393397 lambda!393346))))

(assert (=> bs!1846782 (= (and (= lt!2470093 s!14361) (= r2!6280 lt!2470108)) (= lambda!393397 lambda!393344))))

(assert (=> bs!1846780 (= lambda!393397 lambda!393348)))

(assert (=> bs!1846782 (not (= lambda!393397 lambda!393343))))

(assert (=> bs!1846783 (not (= lambda!393397 lambda!393387))))

(assert (=> bs!1846784 (not (= lambda!393397 lambda!393379))))

(assert (=> bs!1846785 (not (= lambda!393397 lambda!393381))))

(assert (=> bs!1846786 (= (and (= r2!6280 (regOne!34340 lt!2470101)) (= r3!135 (regTwo!34340 lt!2470101))) (= lambda!393397 lambda!393382))))

(assert (=> bs!1846787 (= (and (= lt!2470093 (_2!37074 lt!2470091)) (= r2!6280 (regOne!34340 r2!6280)) (= r3!135 (regTwo!34340 r2!6280))) (= lambda!393397 lambda!393378))))

(assert (=> d!2164493 true))

(assert (=> d!2164493 true))

(assert (=> d!2164493 true))

(assert (=> d!2164493 (= (Exists!3916 lambda!393396) (Exists!3916 lambda!393397))))

(declare-fun lt!2470214 () Unit!160552)

(declare-fun choose!51529 (Regex!16914 Regex!16914 List!66667) Unit!160552)

(assert (=> d!2164493 (= lt!2470214 (choose!51529 r2!6280 r3!135 lt!2470093))))

(assert (=> d!2164493 (validRegex!8620 r2!6280)))

(assert (=> d!2164493 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2383 r2!6280 r3!135 lt!2470093) lt!2470214)))

(declare-fun m!7630646 () Bool)

(assert (=> bs!1846788 m!7630646))

(declare-fun m!7630648 () Bool)

(assert (=> bs!1846788 m!7630648))

(declare-fun m!7630650 () Bool)

(assert (=> bs!1846788 m!7630650))

(assert (=> bs!1846788 m!7630308))

(assert (=> b!6920428 d!2164493))

(declare-fun d!2164497 () Bool)

(assert (=> d!2164497 (= (Exists!3916 lambda!393343) (choose!51528 lambda!393343))))

(declare-fun bs!1846789 () Bool)

(assert (= bs!1846789 d!2164497))

(declare-fun m!7630652 () Bool)

(assert (=> bs!1846789 m!7630652))

(assert (=> b!6920439 d!2164497))

(declare-fun bs!1846790 () Bool)

(declare-fun b!6920842 () Bool)

(assert (= bs!1846790 (and b!6920842 b!6920637)))

(declare-fun lambda!393398 () Int)

(assert (=> bs!1846790 (not (= lambda!393398 lambda!393380))))

(declare-fun bs!1846791 () Bool)

(assert (= bs!1846791 (and b!6920842 b!6920626)))

(assert (=> bs!1846791 (= (and (= (_1!37074 lt!2470095) (_2!37074 lt!2470091)) (= (reg!17243 lt!2470108) (reg!17243 r2!6280)) (= lt!2470108 r2!6280)) (= lambda!393398 lambda!393377))))

(declare-fun bs!1846792 () Bool)

(assert (= bs!1846792 (and b!6920842 d!2164493)))

(assert (=> bs!1846792 (not (= lambda!393398 lambda!393397))))

(declare-fun bs!1846793 () Bool)

(assert (= bs!1846793 (and b!6920842 b!6920428)))

(assert (=> bs!1846793 (not (= lambda!393398 lambda!393347))))

(assert (=> bs!1846792 (not (= lambda!393398 lambda!393396))))

(declare-fun bs!1846794 () Bool)

(assert (= bs!1846794 (and b!6920842 b!6920441)))

(assert (=> bs!1846794 (not (= lambda!393398 lambda!393345))))

(assert (=> bs!1846794 (not (= lambda!393398 lambda!393346))))

(declare-fun bs!1846795 () Bool)

(assert (= bs!1846795 (and b!6920842 b!6920439)))

(assert (=> bs!1846795 (not (= lambda!393398 lambda!393344))))

(assert (=> bs!1846793 (not (= lambda!393398 lambda!393348))))

(assert (=> bs!1846795 (not (= lambda!393398 lambda!393343))))

(declare-fun bs!1846797 () Bool)

(assert (= bs!1846797 (and b!6920842 d!2164481)))

(assert (=> bs!1846797 (not (= lambda!393398 lambda!393387))))

(declare-fun bs!1846798 () Bool)

(assert (= bs!1846798 (and b!6920842 b!6920641)))

(assert (=> bs!1846798 (= (and (= (_1!37074 lt!2470095) (_1!37074 lt!2470091)) (= (reg!17243 lt!2470108) (reg!17243 r1!6342)) (= lt!2470108 r1!6342)) (= lambda!393398 lambda!393379))))

(declare-fun bs!1846799 () Bool)

(assert (= bs!1846799 (and b!6920842 b!6920718)))

(assert (=> bs!1846799 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= (reg!17243 lt!2470108) (reg!17243 lt!2470101)) (= lt!2470108 lt!2470101)) (= lambda!393398 lambda!393381))))

(declare-fun bs!1846801 () Bool)

(assert (= bs!1846801 (and b!6920842 b!6920714)))

(assert (=> bs!1846801 (not (= lambda!393398 lambda!393382))))

(declare-fun bs!1846802 () Bool)

(assert (= bs!1846802 (and b!6920842 b!6920622)))

(assert (=> bs!1846802 (not (= lambda!393398 lambda!393378))))

(assert (=> b!6920842 true))

(assert (=> b!6920842 true))

(declare-fun bs!1846803 () Bool)

(declare-fun b!6920838 () Bool)

(assert (= bs!1846803 (and b!6920838 b!6920637)))

(declare-fun lambda!393399 () Int)

(assert (=> bs!1846803 (= (and (= (_1!37074 lt!2470095) (_1!37074 lt!2470091)) (= (regOne!34340 lt!2470108) (regOne!34340 r1!6342)) (= (regTwo!34340 lt!2470108) (regTwo!34340 r1!6342))) (= lambda!393399 lambda!393380))))

(declare-fun bs!1846804 () Bool)

(assert (= bs!1846804 (and b!6920838 b!6920626)))

(assert (=> bs!1846804 (not (= lambda!393399 lambda!393377))))

(declare-fun bs!1846805 () Bool)

(assert (= bs!1846805 (and b!6920838 b!6920842)))

(assert (=> bs!1846805 (not (= lambda!393399 lambda!393398))))

(declare-fun bs!1846806 () Bool)

(assert (= bs!1846806 (and b!6920838 d!2164493)))

(assert (=> bs!1846806 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= (regOne!34340 lt!2470108) r2!6280) (= (regTwo!34340 lt!2470108) r3!135)) (= lambda!393399 lambda!393397))))

(declare-fun bs!1846807 () Bool)

(assert (= bs!1846807 (and b!6920838 b!6920428)))

(assert (=> bs!1846807 (not (= lambda!393399 lambda!393347))))

(assert (=> bs!1846806 (not (= lambda!393399 lambda!393396))))

(declare-fun bs!1846808 () Bool)

(assert (= bs!1846808 (and b!6920838 b!6920441)))

(assert (=> bs!1846808 (not (= lambda!393399 lambda!393345))))

(assert (=> bs!1846808 (= (and (= (regOne!34340 lt!2470108) r1!6342) (= (regTwo!34340 lt!2470108) r2!6280)) (= lambda!393399 lambda!393346))))

(declare-fun bs!1846809 () Bool)

(assert (= bs!1846809 (and b!6920838 b!6920439)))

(assert (=> bs!1846809 (= (and (= (_1!37074 lt!2470095) s!14361) (= (regOne!34340 lt!2470108) lt!2470108) (= (regTwo!34340 lt!2470108) r3!135)) (= lambda!393399 lambda!393344))))

(assert (=> bs!1846807 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= (regOne!34340 lt!2470108) r2!6280) (= (regTwo!34340 lt!2470108) r3!135)) (= lambda!393399 lambda!393348))))

(assert (=> bs!1846809 (not (= lambda!393399 lambda!393343))))

(declare-fun bs!1846810 () Bool)

(assert (= bs!1846810 (and b!6920838 d!2164481)))

(assert (=> bs!1846810 (not (= lambda!393399 lambda!393387))))

(declare-fun bs!1846812 () Bool)

(assert (= bs!1846812 (and b!6920838 b!6920641)))

(assert (=> bs!1846812 (not (= lambda!393399 lambda!393379))))

(declare-fun bs!1846813 () Bool)

(assert (= bs!1846813 (and b!6920838 b!6920718)))

(assert (=> bs!1846813 (not (= lambda!393399 lambda!393381))))

(declare-fun bs!1846814 () Bool)

(assert (= bs!1846814 (and b!6920838 b!6920714)))

(assert (=> bs!1846814 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= (regOne!34340 lt!2470108) (regOne!34340 lt!2470101)) (= (regTwo!34340 lt!2470108) (regTwo!34340 lt!2470101))) (= lambda!393399 lambda!393382))))

(declare-fun bs!1846815 () Bool)

(assert (= bs!1846815 (and b!6920838 b!6920622)))

(assert (=> bs!1846815 (= (and (= (_1!37074 lt!2470095) (_2!37074 lt!2470091)) (= (regOne!34340 lt!2470108) (regOne!34340 r2!6280)) (= (regTwo!34340 lt!2470108) (regTwo!34340 r2!6280))) (= lambda!393399 lambda!393378))))

(assert (=> b!6920838 true))

(assert (=> b!6920838 true))

(declare-fun b!6920832 () Bool)

(declare-fun e!4165446 () Bool)

(assert (=> b!6920832 (= e!4165446 (= (_1!37074 lt!2470095) (Cons!66543 (c!1284876 lt!2470108) Nil!66543)))))

(declare-fun b!6920833 () Bool)

(declare-fun e!4165444 () Bool)

(declare-fun e!4165442 () Bool)

(assert (=> b!6920833 (= e!4165444 e!4165442)))

(declare-fun res!2821997 () Bool)

(assert (=> b!6920833 (= res!2821997 (not (is-EmptyLang!16914 lt!2470108)))))

(assert (=> b!6920833 (=> (not res!2821997) (not e!4165442))))

(declare-fun d!2164499 () Bool)

(declare-fun c!1284943 () Bool)

(assert (=> d!2164499 (= c!1284943 (is-EmptyExpr!16914 lt!2470108))))

(assert (=> d!2164499 (= (matchRSpec!3971 lt!2470108 (_1!37074 lt!2470095)) e!4165444)))

(declare-fun b!6920834 () Bool)

(declare-fun e!4165445 () Bool)

(declare-fun e!4165441 () Bool)

(assert (=> b!6920834 (= e!4165445 e!4165441)))

(declare-fun c!1284941 () Bool)

(assert (=> b!6920834 (= c!1284941 (is-Star!16914 lt!2470108))))

(declare-fun call!629115 () Bool)

(declare-fun bm!629109 () Bool)

(assert (=> bm!629109 (= call!629115 (Exists!3916 (ite c!1284941 lambda!393398 lambda!393399)))))

(declare-fun b!6920835 () Bool)

(declare-fun c!1284942 () Bool)

(assert (=> b!6920835 (= c!1284942 (is-ElementMatch!16914 lt!2470108))))

(assert (=> b!6920835 (= e!4165442 e!4165446)))

(declare-fun b!6920836 () Bool)

(declare-fun call!629114 () Bool)

(assert (=> b!6920836 (= e!4165444 call!629114)))

(declare-fun b!6920837 () Bool)

(declare-fun res!2821995 () Bool)

(declare-fun e!4165443 () Bool)

(assert (=> b!6920837 (=> res!2821995 e!4165443)))

(assert (=> b!6920837 (= res!2821995 call!629114)))

(assert (=> b!6920837 (= e!4165441 e!4165443)))

(assert (=> b!6920838 (= e!4165441 call!629115)))

(declare-fun b!6920839 () Bool)

(declare-fun c!1284940 () Bool)

(assert (=> b!6920839 (= c!1284940 (is-Union!16914 lt!2470108))))

(assert (=> b!6920839 (= e!4165446 e!4165445)))

(declare-fun b!6920840 () Bool)

(declare-fun e!4165447 () Bool)

(assert (=> b!6920840 (= e!4165447 (matchRSpec!3971 (regTwo!34341 lt!2470108) (_1!37074 lt!2470095)))))

(declare-fun b!6920841 () Bool)

(assert (=> b!6920841 (= e!4165445 e!4165447)))

(declare-fun res!2821996 () Bool)

(assert (=> b!6920841 (= res!2821996 (matchRSpec!3971 (regOne!34341 lt!2470108) (_1!37074 lt!2470095)))))

(assert (=> b!6920841 (=> res!2821996 e!4165447)))

(assert (=> b!6920842 (= e!4165443 call!629115)))

(declare-fun bm!629110 () Bool)

(assert (=> bm!629110 (= call!629114 (isEmpty!38796 (_1!37074 lt!2470095)))))

(assert (= (and d!2164499 c!1284943) b!6920836))

(assert (= (and d!2164499 (not c!1284943)) b!6920833))

(assert (= (and b!6920833 res!2821997) b!6920835))

(assert (= (and b!6920835 c!1284942) b!6920832))

(assert (= (and b!6920835 (not c!1284942)) b!6920839))

(assert (= (and b!6920839 c!1284940) b!6920841))

(assert (= (and b!6920839 (not c!1284940)) b!6920834))

(assert (= (and b!6920841 (not res!2821996)) b!6920840))

(assert (= (and b!6920834 c!1284941) b!6920837))

(assert (= (and b!6920834 (not c!1284941)) b!6920838))

(assert (= (and b!6920837 (not res!2821995)) b!6920842))

(assert (= (or b!6920842 b!6920838) bm!629109))

(assert (= (or b!6920836 b!6920837) bm!629110))

(declare-fun m!7630658 () Bool)

(assert (=> bm!629109 m!7630658))

(declare-fun m!7630660 () Bool)

(assert (=> b!6920840 m!7630660))

(declare-fun m!7630662 () Bool)

(assert (=> b!6920841 m!7630662))

(declare-fun m!7630664 () Bool)

(assert (=> bm!629110 m!7630664))

(assert (=> b!6920439 d!2164499))

(declare-fun d!2164505 () Bool)

(assert (=> d!2164505 (= (get!23312 lt!2470107) (v!52954 lt!2470107))))

(assert (=> b!6920439 d!2164505))

(declare-fun d!2164507 () Bool)

(assert (=> d!2164507 (= (isDefined!13386 lt!2470107) (not (isEmpty!38797 lt!2470107)))))

(declare-fun bs!1846819 () Bool)

(assert (= bs!1846819 d!2164507))

(declare-fun m!7630666 () Bool)

(assert (=> bs!1846819 m!7630666))

(assert (=> b!6920439 d!2164507))

(declare-fun bs!1846821 () Bool)

(declare-fun d!2164509 () Bool)

(assert (= bs!1846821 (and d!2164509 b!6920637)))

(declare-fun lambda!393401 () Int)

(assert (=> bs!1846821 (not (= lambda!393401 lambda!393380))))

(declare-fun bs!1846822 () Bool)

(assert (= bs!1846822 (and d!2164509 b!6920626)))

(assert (=> bs!1846822 (not (= lambda!393401 lambda!393377))))

(declare-fun bs!1846823 () Bool)

(assert (= bs!1846823 (and d!2164509 b!6920842)))

(assert (=> bs!1846823 (not (= lambda!393401 lambda!393398))))

(declare-fun bs!1846824 () Bool)

(assert (= bs!1846824 (and d!2164509 d!2164493)))

(assert (=> bs!1846824 (not (= lambda!393401 lambda!393397))))

(declare-fun bs!1846825 () Bool)

(assert (= bs!1846825 (and d!2164509 b!6920428)))

(assert (=> bs!1846825 (= (and (= s!14361 lt!2470093) (= lt!2470108 r2!6280)) (= lambda!393401 lambda!393347))))

(assert (=> bs!1846824 (= (and (= s!14361 lt!2470093) (= lt!2470108 r2!6280)) (= lambda!393401 lambda!393396))))

(declare-fun bs!1846826 () Bool)

(assert (= bs!1846826 (and d!2164509 b!6920441)))

(assert (=> bs!1846826 (= (and (= s!14361 (_1!37074 lt!2470095)) (= lt!2470108 r1!6342) (= r3!135 r2!6280)) (= lambda!393401 lambda!393345))))

(assert (=> bs!1846826 (not (= lambda!393401 lambda!393346))))

(declare-fun bs!1846827 () Bool)

(assert (= bs!1846827 (and d!2164509 b!6920439)))

(assert (=> bs!1846827 (not (= lambda!393401 lambda!393344))))

(assert (=> bs!1846825 (not (= lambda!393401 lambda!393348))))

(assert (=> bs!1846827 (= lambda!393401 lambda!393343)))

(declare-fun bs!1846828 () Bool)

(assert (= bs!1846828 (and d!2164509 d!2164481)))

(assert (=> bs!1846828 (= (and (= s!14361 lt!2470093) (= lt!2470108 r2!6280)) (= lambda!393401 lambda!393387))))

(declare-fun bs!1846829 () Bool)

(assert (= bs!1846829 (and d!2164509 b!6920718)))

(assert (=> bs!1846829 (not (= lambda!393401 lambda!393381))))

(declare-fun bs!1846830 () Bool)

(assert (= bs!1846830 (and d!2164509 b!6920714)))

(assert (=> bs!1846830 (not (= lambda!393401 lambda!393382))))

(declare-fun bs!1846832 () Bool)

(assert (= bs!1846832 (and d!2164509 b!6920622)))

(assert (=> bs!1846832 (not (= lambda!393401 lambda!393378))))

(declare-fun bs!1846833 () Bool)

(assert (= bs!1846833 (and d!2164509 b!6920838)))

(assert (=> bs!1846833 (not (= lambda!393401 lambda!393399))))

(declare-fun bs!1846834 () Bool)

(assert (= bs!1846834 (and d!2164509 b!6920641)))

(assert (=> bs!1846834 (not (= lambda!393401 lambda!393379))))

(assert (=> d!2164509 true))

(assert (=> d!2164509 true))

(assert (=> d!2164509 true))

(declare-fun lambda!393403 () Int)

(assert (=> bs!1846821 (= (and (= s!14361 (_1!37074 lt!2470091)) (= lt!2470108 (regOne!34340 r1!6342)) (= r3!135 (regTwo!34340 r1!6342))) (= lambda!393403 lambda!393380))))

(assert (=> bs!1846822 (not (= lambda!393403 lambda!393377))))

(assert (=> bs!1846824 (= (and (= s!14361 lt!2470093) (= lt!2470108 r2!6280)) (= lambda!393403 lambda!393397))))

(assert (=> bs!1846825 (not (= lambda!393403 lambda!393347))))

(assert (=> bs!1846824 (not (= lambda!393403 lambda!393396))))

(assert (=> bs!1846826 (not (= lambda!393403 lambda!393345))))

(assert (=> bs!1846826 (= (and (= s!14361 (_1!37074 lt!2470095)) (= lt!2470108 r1!6342) (= r3!135 r2!6280)) (= lambda!393403 lambda!393346))))

(assert (=> bs!1846827 (= lambda!393403 lambda!393344)))

(assert (=> bs!1846825 (= (and (= s!14361 lt!2470093) (= lt!2470108 r2!6280)) (= lambda!393403 lambda!393348))))

(assert (=> bs!1846827 (not (= lambda!393403 lambda!393343))))

(assert (=> bs!1846828 (not (= lambda!393403 lambda!393387))))

(assert (=> bs!1846829 (not (= lambda!393403 lambda!393381))))

(assert (=> bs!1846830 (= (and (= s!14361 lt!2470093) (= lt!2470108 (regOne!34340 lt!2470101)) (= r3!135 (regTwo!34340 lt!2470101))) (= lambda!393403 lambda!393382))))

(assert (=> bs!1846832 (= (and (= s!14361 (_2!37074 lt!2470091)) (= lt!2470108 (regOne!34340 r2!6280)) (= r3!135 (regTwo!34340 r2!6280))) (= lambda!393403 lambda!393378))))

(assert (=> bs!1846823 (not (= lambda!393403 lambda!393398))))

(declare-fun bs!1846840 () Bool)

(assert (= bs!1846840 d!2164509))

(assert (=> bs!1846840 (not (= lambda!393403 lambda!393401))))

(assert (=> bs!1846833 (= (and (= s!14361 (_1!37074 lt!2470095)) (= lt!2470108 (regOne!34340 lt!2470108)) (= r3!135 (regTwo!34340 lt!2470108))) (= lambda!393403 lambda!393399))))

(assert (=> bs!1846834 (not (= lambda!393403 lambda!393379))))

(assert (=> d!2164509 true))

(assert (=> d!2164509 true))

(assert (=> d!2164509 true))

(assert (=> d!2164509 (= (Exists!3916 lambda!393401) (Exists!3916 lambda!393403))))

(declare-fun lt!2470219 () Unit!160552)

(assert (=> d!2164509 (= lt!2470219 (choose!51529 lt!2470108 r3!135 s!14361))))

(assert (=> d!2164509 (validRegex!8620 lt!2470108)))

(assert (=> d!2164509 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2383 lt!2470108 r3!135 s!14361) lt!2470219)))

(declare-fun m!7630668 () Bool)

(assert (=> bs!1846840 m!7630668))

(declare-fun m!7630670 () Bool)

(assert (=> bs!1846840 m!7630670))

(declare-fun m!7630672 () Bool)

(assert (=> bs!1846840 m!7630672))

(declare-fun m!7630674 () Bool)

(assert (=> bs!1846840 m!7630674))

(assert (=> b!6920439 d!2164509))

(declare-fun d!2164511 () Bool)

(assert (=> d!2164511 (= (Exists!3916 lambda!393344) (choose!51528 lambda!393344))))

(declare-fun bs!1846841 () Bool)

(assert (= bs!1846841 d!2164511))

(declare-fun m!7630676 () Bool)

(assert (=> bs!1846841 m!7630676))

(assert (=> b!6920439 d!2164511))

(declare-fun d!2164513 () Bool)

(assert (=> d!2164513 (= (matchR!9053 lt!2470108 (_1!37074 lt!2470095)) (matchRSpec!3971 lt!2470108 (_1!37074 lt!2470095)))))

(declare-fun lt!2470220 () Unit!160552)

(assert (=> d!2164513 (= lt!2470220 (choose!51526 lt!2470108 (_1!37074 lt!2470095)))))

(assert (=> d!2164513 (validRegex!8620 lt!2470108)))

(assert (=> d!2164513 (= (mainMatchTheorem!3971 lt!2470108 (_1!37074 lt!2470095)) lt!2470220)))

(declare-fun bs!1846842 () Bool)

(assert (= bs!1846842 d!2164513))

(assert (=> bs!1846842 m!7630318))

(assert (=> bs!1846842 m!7630326))

(declare-fun m!7630678 () Bool)

(assert (=> bs!1846842 m!7630678))

(assert (=> bs!1846842 m!7630674))

(assert (=> b!6920439 d!2164513))

(declare-fun bs!1846843 () Bool)

(declare-fun d!2164515 () Bool)

(assert (= bs!1846843 (and d!2164515 b!6920637)))

(declare-fun lambda!393404 () Int)

(assert (=> bs!1846843 (not (= lambda!393404 lambda!393380))))

(declare-fun bs!1846844 () Bool)

(assert (= bs!1846844 (and d!2164515 b!6920626)))

(assert (=> bs!1846844 (not (= lambda!393404 lambda!393377))))

(declare-fun bs!1846845 () Bool)

(assert (= bs!1846845 (and d!2164515 d!2164493)))

(assert (=> bs!1846845 (not (= lambda!393404 lambda!393397))))

(declare-fun bs!1846846 () Bool)

(assert (= bs!1846846 (and d!2164515 b!6920428)))

(assert (=> bs!1846846 (= (and (= s!14361 lt!2470093) (= lt!2470108 r2!6280)) (= lambda!393404 lambda!393347))))

(assert (=> bs!1846845 (= (and (= s!14361 lt!2470093) (= lt!2470108 r2!6280)) (= lambda!393404 lambda!393396))))

(declare-fun bs!1846847 () Bool)

(assert (= bs!1846847 (and d!2164515 d!2164509)))

(assert (=> bs!1846847 (not (= lambda!393404 lambda!393403))))

(declare-fun bs!1846848 () Bool)

(assert (= bs!1846848 (and d!2164515 b!6920441)))

(assert (=> bs!1846848 (= (and (= s!14361 (_1!37074 lt!2470095)) (= lt!2470108 r1!6342) (= r3!135 r2!6280)) (= lambda!393404 lambda!393345))))

(assert (=> bs!1846848 (not (= lambda!393404 lambda!393346))))

(declare-fun bs!1846849 () Bool)

(assert (= bs!1846849 (and d!2164515 b!6920439)))

(assert (=> bs!1846849 (not (= lambda!393404 lambda!393344))))

(assert (=> bs!1846846 (not (= lambda!393404 lambda!393348))))

(assert (=> bs!1846849 (= lambda!393404 lambda!393343)))

(declare-fun bs!1846850 () Bool)

(assert (= bs!1846850 (and d!2164515 d!2164481)))

(assert (=> bs!1846850 (= (and (= s!14361 lt!2470093) (= lt!2470108 r2!6280)) (= lambda!393404 lambda!393387))))

(declare-fun bs!1846851 () Bool)

(assert (= bs!1846851 (and d!2164515 b!6920718)))

(assert (=> bs!1846851 (not (= lambda!393404 lambda!393381))))

(declare-fun bs!1846852 () Bool)

(assert (= bs!1846852 (and d!2164515 b!6920714)))

(assert (=> bs!1846852 (not (= lambda!393404 lambda!393382))))

(declare-fun bs!1846853 () Bool)

(assert (= bs!1846853 (and d!2164515 b!6920622)))

(assert (=> bs!1846853 (not (= lambda!393404 lambda!393378))))

(declare-fun bs!1846854 () Bool)

(assert (= bs!1846854 (and d!2164515 b!6920842)))

(assert (=> bs!1846854 (not (= lambda!393404 lambda!393398))))

(assert (=> bs!1846847 (= lambda!393404 lambda!393401)))

(declare-fun bs!1846855 () Bool)

(assert (= bs!1846855 (and d!2164515 b!6920838)))

(assert (=> bs!1846855 (not (= lambda!393404 lambda!393399))))

(declare-fun bs!1846856 () Bool)

(assert (= bs!1846856 (and d!2164515 b!6920641)))

(assert (=> bs!1846856 (not (= lambda!393404 lambda!393379))))

(assert (=> d!2164515 true))

(assert (=> d!2164515 true))

(assert (=> d!2164515 true))

(assert (=> d!2164515 (= (isDefined!13386 (findConcatSeparation!3097 lt!2470108 r3!135 Nil!66543 s!14361 s!14361)) (Exists!3916 lambda!393404))))

(declare-fun lt!2470221 () Unit!160552)

(assert (=> d!2164515 (= lt!2470221 (choose!51527 lt!2470108 r3!135 s!14361))))

(assert (=> d!2164515 (validRegex!8620 lt!2470108)))

(assert (=> d!2164515 (= (lemmaFindConcatSeparationEquivalentToExists!2859 lt!2470108 r3!135 s!14361) lt!2470221)))

(declare-fun bs!1846857 () Bool)

(assert (= bs!1846857 d!2164515))

(declare-fun m!7630702 () Bool)

(assert (=> bs!1846857 m!7630702))

(assert (=> bs!1846857 m!7630320))

(assert (=> bs!1846857 m!7630320))

(declare-fun m!7630704 () Bool)

(assert (=> bs!1846857 m!7630704))

(assert (=> bs!1846857 m!7630674))

(declare-fun m!7630706 () Bool)

(assert (=> bs!1846857 m!7630706))

(assert (=> b!6920439 d!2164515))

(declare-fun b!6920858 () Bool)

(declare-fun e!4165461 () Bool)

(assert (=> b!6920858 (= e!4165461 (= (head!13875 (_1!37074 lt!2470095)) (c!1284876 lt!2470108)))))

(declare-fun b!6920859 () Bool)

(declare-fun res!2822004 () Bool)

(declare-fun e!4165458 () Bool)

(assert (=> b!6920859 (=> res!2822004 e!4165458)))

(assert (=> b!6920859 (= res!2822004 (not (is-ElementMatch!16914 lt!2470108)))))

(declare-fun e!4165457 () Bool)

(assert (=> b!6920859 (= e!4165457 e!4165458)))

(declare-fun b!6920860 () Bool)

(declare-fun e!4165460 () Bool)

(assert (=> b!6920860 (= e!4165460 (not (= (head!13875 (_1!37074 lt!2470095)) (c!1284876 lt!2470108))))))

(declare-fun b!6920861 () Bool)

(declare-fun e!4165462 () Bool)

(assert (=> b!6920861 (= e!4165462 (nullable!6747 lt!2470108))))

(declare-fun d!2164521 () Bool)

(declare-fun e!4165459 () Bool)

(assert (=> d!2164521 e!4165459))

(declare-fun c!1284950 () Bool)

(assert (=> d!2164521 (= c!1284950 (is-EmptyExpr!16914 lt!2470108))))

(declare-fun lt!2470224 () Bool)

(assert (=> d!2164521 (= lt!2470224 e!4165462)))

(declare-fun c!1284951 () Bool)

(assert (=> d!2164521 (= c!1284951 (isEmpty!38796 (_1!37074 lt!2470095)))))

(assert (=> d!2164521 (validRegex!8620 lt!2470108)))

(assert (=> d!2164521 (= (matchR!9053 lt!2470108 (_1!37074 lt!2470095)) lt!2470224)))

(declare-fun b!6920862 () Bool)

(declare-fun e!4165463 () Bool)

(assert (=> b!6920862 (= e!4165463 e!4165460)))

(declare-fun res!2822008 () Bool)

(assert (=> b!6920862 (=> res!2822008 e!4165460)))

(declare-fun call!629118 () Bool)

(assert (=> b!6920862 (= res!2822008 call!629118)))

(declare-fun b!6920863 () Bool)

(declare-fun res!2822007 () Bool)

(assert (=> b!6920863 (=> res!2822007 e!4165458)))

(assert (=> b!6920863 (= res!2822007 e!4165461)))

(declare-fun res!2822009 () Bool)

(assert (=> b!6920863 (=> (not res!2822009) (not e!4165461))))

(assert (=> b!6920863 (= res!2822009 lt!2470224)))

(declare-fun b!6920864 () Bool)

(assert (=> b!6920864 (= e!4165459 (= lt!2470224 call!629118))))

(declare-fun b!6920865 () Bool)

(declare-fun res!2822006 () Bool)

(assert (=> b!6920865 (=> (not res!2822006) (not e!4165461))))

(assert (=> b!6920865 (= res!2822006 (not call!629118))))

(declare-fun b!6920866 () Bool)

(declare-fun res!2822003 () Bool)

(assert (=> b!6920866 (=> res!2822003 e!4165460)))

(assert (=> b!6920866 (= res!2822003 (not (isEmpty!38796 (tail!12927 (_1!37074 lt!2470095)))))))

(declare-fun b!6920867 () Bool)

(assert (=> b!6920867 (= e!4165459 e!4165457)))

(declare-fun c!1284949 () Bool)

(assert (=> b!6920867 (= c!1284949 (is-EmptyLang!16914 lt!2470108))))

(declare-fun b!6920868 () Bool)

(declare-fun res!2822010 () Bool)

(assert (=> b!6920868 (=> (not res!2822010) (not e!4165461))))

(assert (=> b!6920868 (= res!2822010 (isEmpty!38796 (tail!12927 (_1!37074 lt!2470095))))))

(declare-fun b!6920869 () Bool)

(assert (=> b!6920869 (= e!4165458 e!4165463)))

(declare-fun res!2822005 () Bool)

(assert (=> b!6920869 (=> (not res!2822005) (not e!4165463))))

(assert (=> b!6920869 (= res!2822005 (not lt!2470224))))

(declare-fun bm!629113 () Bool)

(assert (=> bm!629113 (= call!629118 (isEmpty!38796 (_1!37074 lt!2470095)))))

(declare-fun b!6920870 () Bool)

(assert (=> b!6920870 (= e!4165457 (not lt!2470224))))

(declare-fun b!6920871 () Bool)

(assert (=> b!6920871 (= e!4165462 (matchR!9053 (derivativeStep!5422 lt!2470108 (head!13875 (_1!37074 lt!2470095))) (tail!12927 (_1!37074 lt!2470095))))))

(assert (= (and d!2164521 c!1284951) b!6920861))

(assert (= (and d!2164521 (not c!1284951)) b!6920871))

(assert (= (and d!2164521 c!1284950) b!6920864))

(assert (= (and d!2164521 (not c!1284950)) b!6920867))

(assert (= (and b!6920867 c!1284949) b!6920870))

(assert (= (and b!6920867 (not c!1284949)) b!6920859))

(assert (= (and b!6920859 (not res!2822004)) b!6920863))

(assert (= (and b!6920863 res!2822009) b!6920865))

(assert (= (and b!6920865 res!2822006) b!6920868))

(assert (= (and b!6920868 res!2822010) b!6920858))

(assert (= (and b!6920863 (not res!2822007)) b!6920869))

(assert (= (and b!6920869 res!2822005) b!6920862))

(assert (= (and b!6920862 (not res!2822008)) b!6920866))

(assert (= (and b!6920866 (not res!2822003)) b!6920860))

(assert (= (or b!6920864 b!6920862 b!6920865) bm!629113))

(declare-fun m!7630712 () Bool)

(assert (=> b!6920868 m!7630712))

(assert (=> b!6920868 m!7630712))

(declare-fun m!7630714 () Bool)

(assert (=> b!6920868 m!7630714))

(declare-fun m!7630716 () Bool)

(assert (=> b!6920871 m!7630716))

(assert (=> b!6920871 m!7630716))

(declare-fun m!7630718 () Bool)

(assert (=> b!6920871 m!7630718))

(assert (=> b!6920871 m!7630712))

(assert (=> b!6920871 m!7630718))

(assert (=> b!6920871 m!7630712))

(declare-fun m!7630720 () Bool)

(assert (=> b!6920871 m!7630720))

(assert (=> d!2164521 m!7630664))

(assert (=> d!2164521 m!7630674))

(assert (=> bm!629113 m!7630664))

(assert (=> b!6920866 m!7630712))

(assert (=> b!6920866 m!7630712))

(assert (=> b!6920866 m!7630714))

(assert (=> b!6920860 m!7630716))

(declare-fun m!7630722 () Bool)

(assert (=> b!6920861 m!7630722))

(assert (=> b!6920858 m!7630716))

(assert (=> b!6920439 d!2164521))

(declare-fun b!6920872 () Bool)

(declare-fun e!4165467 () Option!16683)

(declare-fun e!4165468 () Option!16683)

(assert (=> b!6920872 (= e!4165467 e!4165468)))

(declare-fun c!1284953 () Bool)

(assert (=> b!6920872 (= c!1284953 (is-Nil!66543 s!14361))))

(declare-fun b!6920874 () Bool)

(assert (=> b!6920874 (= e!4165467 (Some!16682 (tuple2!67543 Nil!66543 s!14361)))))

(declare-fun b!6920875 () Bool)

(declare-fun e!4165464 () Bool)

(declare-fun lt!2470227 () Option!16683)

(assert (=> b!6920875 (= e!4165464 (= (++!14957 (_1!37074 (get!23312 lt!2470227)) (_2!37074 (get!23312 lt!2470227))) s!14361))))

(declare-fun b!6920876 () Bool)

(declare-fun e!4165466 () Bool)

(assert (=> b!6920876 (= e!4165466 (not (isDefined!13386 lt!2470227)))))

(declare-fun b!6920877 () Bool)

(declare-fun res!2822014 () Bool)

(assert (=> b!6920877 (=> (not res!2822014) (not e!4165464))))

(assert (=> b!6920877 (= res!2822014 (matchR!9053 lt!2470108 (_1!37074 (get!23312 lt!2470227))))))

(declare-fun b!6920878 () Bool)

(assert (=> b!6920878 (= e!4165468 None!16682)))

(declare-fun b!6920879 () Bool)

(declare-fun lt!2470226 () Unit!160552)

(declare-fun lt!2470225 () Unit!160552)

(assert (=> b!6920879 (= lt!2470226 lt!2470225)))

(assert (=> b!6920879 (= (++!14957 (++!14957 Nil!66543 (Cons!66543 (h!72991 s!14361) Nil!66543)) (t!380410 s!14361)) s!14361)))

(assert (=> b!6920879 (= lt!2470225 (lemmaMoveElementToOtherListKeepsConcatEq!2826 Nil!66543 (h!72991 s!14361) (t!380410 s!14361) s!14361))))

(assert (=> b!6920879 (= e!4165468 (findConcatSeparation!3097 lt!2470108 r3!135 (++!14957 Nil!66543 (Cons!66543 (h!72991 s!14361) Nil!66543)) (t!380410 s!14361) s!14361))))

(declare-fun b!6920880 () Bool)

(declare-fun res!2822012 () Bool)

(assert (=> b!6920880 (=> (not res!2822012) (not e!4165464))))

(assert (=> b!6920880 (= res!2822012 (matchR!9053 r3!135 (_2!37074 (get!23312 lt!2470227))))))

(declare-fun d!2164525 () Bool)

(assert (=> d!2164525 e!4165466))

(declare-fun res!2822015 () Bool)

(assert (=> d!2164525 (=> res!2822015 e!4165466)))

(assert (=> d!2164525 (= res!2822015 e!4165464)))

(declare-fun res!2822013 () Bool)

(assert (=> d!2164525 (=> (not res!2822013) (not e!4165464))))

(assert (=> d!2164525 (= res!2822013 (isDefined!13386 lt!2470227))))

(assert (=> d!2164525 (= lt!2470227 e!4165467)))

(declare-fun c!1284952 () Bool)

(declare-fun e!4165465 () Bool)

(assert (=> d!2164525 (= c!1284952 e!4165465)))

(declare-fun res!2822011 () Bool)

(assert (=> d!2164525 (=> (not res!2822011) (not e!4165465))))

(assert (=> d!2164525 (= res!2822011 (matchR!9053 lt!2470108 Nil!66543))))

(assert (=> d!2164525 (validRegex!8620 lt!2470108)))

(assert (=> d!2164525 (= (findConcatSeparation!3097 lt!2470108 r3!135 Nil!66543 s!14361 s!14361) lt!2470227)))

(declare-fun b!6920873 () Bool)

(assert (=> b!6920873 (= e!4165465 (matchR!9053 r3!135 s!14361))))

(assert (= (and d!2164525 res!2822011) b!6920873))

(assert (= (and d!2164525 c!1284952) b!6920874))

(assert (= (and d!2164525 (not c!1284952)) b!6920872))

(assert (= (and b!6920872 c!1284953) b!6920878))

(assert (= (and b!6920872 (not c!1284953)) b!6920879))

(assert (= (and d!2164525 res!2822013) b!6920877))

(assert (= (and b!6920877 res!2822014) b!6920880))

(assert (= (and b!6920880 res!2822012) b!6920875))

(assert (= (and d!2164525 (not res!2822015)) b!6920876))

(declare-fun m!7630728 () Bool)

(assert (=> b!6920880 m!7630728))

(declare-fun m!7630730 () Bool)

(assert (=> b!6920880 m!7630730))

(declare-fun m!7630732 () Bool)

(assert (=> b!6920876 m!7630732))

(assert (=> b!6920877 m!7630728))

(declare-fun m!7630734 () Bool)

(assert (=> b!6920877 m!7630734))

(declare-fun m!7630736 () Bool)

(assert (=> b!6920879 m!7630736))

(assert (=> b!6920879 m!7630736))

(declare-fun m!7630738 () Bool)

(assert (=> b!6920879 m!7630738))

(declare-fun m!7630740 () Bool)

(assert (=> b!6920879 m!7630740))

(assert (=> b!6920879 m!7630736))

(declare-fun m!7630742 () Bool)

(assert (=> b!6920879 m!7630742))

(assert (=> b!6920875 m!7630728))

(declare-fun m!7630744 () Bool)

(assert (=> b!6920875 m!7630744))

(assert (=> d!2164525 m!7630732))

(declare-fun m!7630746 () Bool)

(assert (=> d!2164525 m!7630746))

(assert (=> d!2164525 m!7630674))

(declare-fun m!7630748 () Bool)

(assert (=> b!6920873 m!7630748))

(assert (=> b!6920439 d!2164525))

(declare-fun b!6920881 () Bool)

(declare-fun e!4165473 () Bool)

(assert (=> b!6920881 (= e!4165473 (= (head!13875 (_2!37074 lt!2470091)) (c!1284876 r2!6280)))))

(declare-fun b!6920882 () Bool)

(declare-fun res!2822017 () Bool)

(declare-fun e!4165470 () Bool)

(assert (=> b!6920882 (=> res!2822017 e!4165470)))

(assert (=> b!6920882 (= res!2822017 (not (is-ElementMatch!16914 r2!6280)))))

(declare-fun e!4165469 () Bool)

(assert (=> b!6920882 (= e!4165469 e!4165470)))

(declare-fun b!6920883 () Bool)

(declare-fun e!4165472 () Bool)

(assert (=> b!6920883 (= e!4165472 (not (= (head!13875 (_2!37074 lt!2470091)) (c!1284876 r2!6280))))))

(declare-fun b!6920884 () Bool)

(declare-fun e!4165474 () Bool)

(assert (=> b!6920884 (= e!4165474 (nullable!6747 r2!6280))))

(declare-fun d!2164531 () Bool)

(declare-fun e!4165471 () Bool)

(assert (=> d!2164531 e!4165471))

(declare-fun c!1284955 () Bool)

(assert (=> d!2164531 (= c!1284955 (is-EmptyExpr!16914 r2!6280))))

(declare-fun lt!2470228 () Bool)

(assert (=> d!2164531 (= lt!2470228 e!4165474)))

(declare-fun c!1284956 () Bool)

(assert (=> d!2164531 (= c!1284956 (isEmpty!38796 (_2!37074 lt!2470091)))))

(assert (=> d!2164531 (validRegex!8620 r2!6280)))

(assert (=> d!2164531 (= (matchR!9053 r2!6280 (_2!37074 lt!2470091)) lt!2470228)))

(declare-fun b!6920885 () Bool)

(declare-fun e!4165475 () Bool)

(assert (=> b!6920885 (= e!4165475 e!4165472)))

(declare-fun res!2822021 () Bool)

(assert (=> b!6920885 (=> res!2822021 e!4165472)))

(declare-fun call!629119 () Bool)

(assert (=> b!6920885 (= res!2822021 call!629119)))

(declare-fun b!6920886 () Bool)

(declare-fun res!2822020 () Bool)

(assert (=> b!6920886 (=> res!2822020 e!4165470)))

(assert (=> b!6920886 (= res!2822020 e!4165473)))

(declare-fun res!2822022 () Bool)

(assert (=> b!6920886 (=> (not res!2822022) (not e!4165473))))

(assert (=> b!6920886 (= res!2822022 lt!2470228)))

(declare-fun b!6920887 () Bool)

(assert (=> b!6920887 (= e!4165471 (= lt!2470228 call!629119))))

(declare-fun b!6920888 () Bool)

(declare-fun res!2822019 () Bool)

(assert (=> b!6920888 (=> (not res!2822019) (not e!4165473))))

(assert (=> b!6920888 (= res!2822019 (not call!629119))))

(declare-fun b!6920889 () Bool)

(declare-fun res!2822016 () Bool)

(assert (=> b!6920889 (=> res!2822016 e!4165472)))

(assert (=> b!6920889 (= res!2822016 (not (isEmpty!38796 (tail!12927 (_2!37074 lt!2470091)))))))

(declare-fun b!6920890 () Bool)

(assert (=> b!6920890 (= e!4165471 e!4165469)))

(declare-fun c!1284954 () Bool)

(assert (=> b!6920890 (= c!1284954 (is-EmptyLang!16914 r2!6280))))

(declare-fun b!6920891 () Bool)

(declare-fun res!2822023 () Bool)

(assert (=> b!6920891 (=> (not res!2822023) (not e!4165473))))

(assert (=> b!6920891 (= res!2822023 (isEmpty!38796 (tail!12927 (_2!37074 lt!2470091))))))

(declare-fun b!6920892 () Bool)

(assert (=> b!6920892 (= e!4165470 e!4165475)))

(declare-fun res!2822018 () Bool)

(assert (=> b!6920892 (=> (not res!2822018) (not e!4165475))))

(assert (=> b!6920892 (= res!2822018 (not lt!2470228))))

(declare-fun bm!629114 () Bool)

(assert (=> bm!629114 (= call!629119 (isEmpty!38796 (_2!37074 lt!2470091)))))

(declare-fun b!6920893 () Bool)

(assert (=> b!6920893 (= e!4165469 (not lt!2470228))))

(declare-fun b!6920894 () Bool)

(assert (=> b!6920894 (= e!4165474 (matchR!9053 (derivativeStep!5422 r2!6280 (head!13875 (_2!37074 lt!2470091))) (tail!12927 (_2!37074 lt!2470091))))))

(assert (= (and d!2164531 c!1284956) b!6920884))

(assert (= (and d!2164531 (not c!1284956)) b!6920894))

(assert (= (and d!2164531 c!1284955) b!6920887))

(assert (= (and d!2164531 (not c!1284955)) b!6920890))

(assert (= (and b!6920890 c!1284954) b!6920893))

(assert (= (and b!6920890 (not c!1284954)) b!6920882))

(assert (= (and b!6920882 (not res!2822017)) b!6920886))

(assert (= (and b!6920886 res!2822022) b!6920888))

(assert (= (and b!6920888 res!2822019) b!6920891))

(assert (= (and b!6920891 res!2822023) b!6920881))

(assert (= (and b!6920886 (not res!2822020)) b!6920892))

(assert (= (and b!6920892 res!2822018) b!6920885))

(assert (= (and b!6920885 (not res!2822021)) b!6920889))

(assert (= (and b!6920889 (not res!2822016)) b!6920883))

(assert (= (or b!6920887 b!6920885 b!6920888) bm!629114))

(assert (=> b!6920891 m!7630628))

(assert (=> b!6920891 m!7630628))

(declare-fun m!7630752 () Bool)

(assert (=> b!6920891 m!7630752))

(assert (=> b!6920894 m!7630624))

(assert (=> b!6920894 m!7630624))

(declare-fun m!7630754 () Bool)

(assert (=> b!6920894 m!7630754))

(assert (=> b!6920894 m!7630628))

(assert (=> b!6920894 m!7630754))

(assert (=> b!6920894 m!7630628))

(declare-fun m!7630756 () Bool)

(assert (=> b!6920894 m!7630756))

(assert (=> d!2164531 m!7630520))

(assert (=> d!2164531 m!7630308))

(assert (=> bm!629114 m!7630520))

(assert (=> b!6920889 m!7630628))

(assert (=> b!6920889 m!7630628))

(assert (=> b!6920889 m!7630752))

(assert (=> b!6920883 m!7630624))

(declare-fun m!7630758 () Bool)

(assert (=> b!6920884 m!7630758))

(assert (=> b!6920881 m!7630624))

(assert (=> b!6920434 d!2164531))

(declare-fun bm!629115 () Bool)

(declare-fun call!629122 () Bool)

(declare-fun c!1284957 () Bool)

(assert (=> bm!629115 (= call!629122 (validRegex!8620 (ite c!1284957 (regTwo!34341 r1!6342) (regOne!34340 r1!6342))))))

(declare-fun b!6920895 () Bool)

(declare-fun e!4165479 () Bool)

(declare-fun e!4165480 () Bool)

(assert (=> b!6920895 (= e!4165479 e!4165480)))

(assert (=> b!6920895 (= c!1284957 (is-Union!16914 r1!6342))))

(declare-fun b!6920896 () Bool)

(declare-fun e!4165476 () Bool)

(assert (=> b!6920896 (= e!4165476 call!629122)))

(declare-fun b!6920897 () Bool)

(declare-fun e!4165478 () Bool)

(assert (=> b!6920897 (= e!4165478 e!4165479)))

(declare-fun c!1284958 () Bool)

(assert (=> b!6920897 (= c!1284958 (is-Star!16914 r1!6342))))

(declare-fun b!6920898 () Bool)

(declare-fun e!4165481 () Bool)

(assert (=> b!6920898 (= e!4165479 e!4165481)))

(declare-fun res!2822025 () Bool)

(assert (=> b!6920898 (= res!2822025 (not (nullable!6747 (reg!17243 r1!6342))))))

(assert (=> b!6920898 (=> (not res!2822025) (not e!4165481))))

(declare-fun b!6920899 () Bool)

(declare-fun e!4165477 () Bool)

(declare-fun e!4165482 () Bool)

(assert (=> b!6920899 (= e!4165477 e!4165482)))

(declare-fun res!2822027 () Bool)

(assert (=> b!6920899 (=> (not res!2822027) (not e!4165482))))

(assert (=> b!6920899 (= res!2822027 call!629122)))

(declare-fun d!2164535 () Bool)

(declare-fun res!2822028 () Bool)

(assert (=> d!2164535 (=> res!2822028 e!4165478)))

(assert (=> d!2164535 (= res!2822028 (is-ElementMatch!16914 r1!6342))))

(assert (=> d!2164535 (= (validRegex!8620 r1!6342) e!4165478)))

(declare-fun b!6920900 () Bool)

(declare-fun res!2822026 () Bool)

(assert (=> b!6920900 (=> (not res!2822026) (not e!4165476))))

(declare-fun call!629121 () Bool)

(assert (=> b!6920900 (= res!2822026 call!629121)))

(assert (=> b!6920900 (= e!4165480 e!4165476)))

(declare-fun b!6920901 () Bool)

(declare-fun call!629120 () Bool)

(assert (=> b!6920901 (= e!4165481 call!629120)))

(declare-fun b!6920902 () Bool)

(declare-fun res!2822024 () Bool)

(assert (=> b!6920902 (=> res!2822024 e!4165477)))

(assert (=> b!6920902 (= res!2822024 (not (is-Concat!25759 r1!6342)))))

(assert (=> b!6920902 (= e!4165480 e!4165477)))

(declare-fun bm!629116 () Bool)

(assert (=> bm!629116 (= call!629120 (validRegex!8620 (ite c!1284958 (reg!17243 r1!6342) (ite c!1284957 (regOne!34341 r1!6342) (regTwo!34340 r1!6342)))))))

(declare-fun bm!629117 () Bool)

(assert (=> bm!629117 (= call!629121 call!629120)))

(declare-fun b!6920903 () Bool)

(assert (=> b!6920903 (= e!4165482 call!629121)))

(assert (= (and d!2164535 (not res!2822028)) b!6920897))

(assert (= (and b!6920897 c!1284958) b!6920898))

(assert (= (and b!6920897 (not c!1284958)) b!6920895))

(assert (= (and b!6920898 res!2822025) b!6920901))

(assert (= (and b!6920895 c!1284957) b!6920900))

(assert (= (and b!6920895 (not c!1284957)) b!6920902))

(assert (= (and b!6920900 res!2822026) b!6920896))

(assert (= (and b!6920902 (not res!2822024)) b!6920899))

(assert (= (and b!6920899 res!2822027) b!6920903))

(assert (= (or b!6920900 b!6920903) bm!629117))

(assert (= (or b!6920896 b!6920899) bm!629115))

(assert (= (or b!6920901 bm!629117) bm!629116))

(declare-fun m!7630760 () Bool)

(assert (=> bm!629115 m!7630760))

(declare-fun m!7630762 () Bool)

(assert (=> b!6920898 m!7630762))

(declare-fun m!7630764 () Bool)

(assert (=> bm!629116 m!7630764))

(assert (=> start!665592 d!2164535))

(declare-fun b!6920904 () Bool)

(declare-fun e!4165487 () Bool)

(assert (=> b!6920904 (= e!4165487 (= (head!13875 (_2!37074 lt!2470095)) (c!1284876 r3!135)))))

(declare-fun b!6920905 () Bool)

(declare-fun res!2822030 () Bool)

(declare-fun e!4165484 () Bool)

(assert (=> b!6920905 (=> res!2822030 e!4165484)))

(assert (=> b!6920905 (= res!2822030 (not (is-ElementMatch!16914 r3!135)))))

(declare-fun e!4165483 () Bool)

(assert (=> b!6920905 (= e!4165483 e!4165484)))

(declare-fun b!6920906 () Bool)

(declare-fun e!4165486 () Bool)

(assert (=> b!6920906 (= e!4165486 (not (= (head!13875 (_2!37074 lt!2470095)) (c!1284876 r3!135))))))

(declare-fun b!6920907 () Bool)

(declare-fun e!4165488 () Bool)

(assert (=> b!6920907 (= e!4165488 (nullable!6747 r3!135))))

(declare-fun d!2164537 () Bool)

(declare-fun e!4165485 () Bool)

(assert (=> d!2164537 e!4165485))

(declare-fun c!1284960 () Bool)

(assert (=> d!2164537 (= c!1284960 (is-EmptyExpr!16914 r3!135))))

(declare-fun lt!2470229 () Bool)

(assert (=> d!2164537 (= lt!2470229 e!4165488)))

(declare-fun c!1284961 () Bool)

(assert (=> d!2164537 (= c!1284961 (isEmpty!38796 (_2!37074 lt!2470095)))))

(assert (=> d!2164537 (validRegex!8620 r3!135)))

(assert (=> d!2164537 (= (matchR!9053 r3!135 (_2!37074 lt!2470095)) lt!2470229)))

(declare-fun b!6920908 () Bool)

(declare-fun e!4165489 () Bool)

(assert (=> b!6920908 (= e!4165489 e!4165486)))

(declare-fun res!2822034 () Bool)

(assert (=> b!6920908 (=> res!2822034 e!4165486)))

(declare-fun call!629123 () Bool)

(assert (=> b!6920908 (= res!2822034 call!629123)))

(declare-fun b!6920909 () Bool)

(declare-fun res!2822033 () Bool)

(assert (=> b!6920909 (=> res!2822033 e!4165484)))

(assert (=> b!6920909 (= res!2822033 e!4165487)))

(declare-fun res!2822035 () Bool)

(assert (=> b!6920909 (=> (not res!2822035) (not e!4165487))))

(assert (=> b!6920909 (= res!2822035 lt!2470229)))

(declare-fun b!6920910 () Bool)

(assert (=> b!6920910 (= e!4165485 (= lt!2470229 call!629123))))

(declare-fun b!6920911 () Bool)

(declare-fun res!2822032 () Bool)

(assert (=> b!6920911 (=> (not res!2822032) (not e!4165487))))

(assert (=> b!6920911 (= res!2822032 (not call!629123))))

(declare-fun b!6920912 () Bool)

(declare-fun res!2822029 () Bool)

(assert (=> b!6920912 (=> res!2822029 e!4165486)))

(assert (=> b!6920912 (= res!2822029 (not (isEmpty!38796 (tail!12927 (_2!37074 lt!2470095)))))))

(declare-fun b!6920913 () Bool)

(assert (=> b!6920913 (= e!4165485 e!4165483)))

(declare-fun c!1284959 () Bool)

(assert (=> b!6920913 (= c!1284959 (is-EmptyLang!16914 r3!135))))

(declare-fun b!6920914 () Bool)

(declare-fun res!2822036 () Bool)

(assert (=> b!6920914 (=> (not res!2822036) (not e!4165487))))

(assert (=> b!6920914 (= res!2822036 (isEmpty!38796 (tail!12927 (_2!37074 lt!2470095))))))

(declare-fun b!6920915 () Bool)

(assert (=> b!6920915 (= e!4165484 e!4165489)))

(declare-fun res!2822031 () Bool)

(assert (=> b!6920915 (=> (not res!2822031) (not e!4165489))))

(assert (=> b!6920915 (= res!2822031 (not lt!2470229))))

(declare-fun bm!629118 () Bool)

(assert (=> bm!629118 (= call!629123 (isEmpty!38796 (_2!37074 lt!2470095)))))

(declare-fun b!6920916 () Bool)

(assert (=> b!6920916 (= e!4165483 (not lt!2470229))))

(declare-fun b!6920917 () Bool)

(assert (=> b!6920917 (= e!4165488 (matchR!9053 (derivativeStep!5422 r3!135 (head!13875 (_2!37074 lt!2470095))) (tail!12927 (_2!37074 lt!2470095))))))

(assert (= (and d!2164537 c!1284961) b!6920907))

(assert (= (and d!2164537 (not c!1284961)) b!6920917))

(assert (= (and d!2164537 c!1284960) b!6920910))

(assert (= (and d!2164537 (not c!1284960)) b!6920913))

(assert (= (and b!6920913 c!1284959) b!6920916))

(assert (= (and b!6920913 (not c!1284959)) b!6920905))

(assert (= (and b!6920905 (not res!2822030)) b!6920909))

(assert (= (and b!6920909 res!2822035) b!6920911))

(assert (= (and b!6920911 res!2822032) b!6920914))

(assert (= (and b!6920914 res!2822036) b!6920904))

(assert (= (and b!6920909 (not res!2822033)) b!6920915))

(assert (= (and b!6920915 res!2822031) b!6920908))

(assert (= (and b!6920908 (not res!2822034)) b!6920912))

(assert (= (and b!6920912 (not res!2822029)) b!6920906))

(assert (= (or b!6920910 b!6920908 b!6920911) bm!629118))

(declare-fun m!7630766 () Bool)

(assert (=> b!6920914 m!7630766))

(assert (=> b!6920914 m!7630766))

(declare-fun m!7630768 () Bool)

(assert (=> b!6920914 m!7630768))

(declare-fun m!7630770 () Bool)

(assert (=> b!6920917 m!7630770))

(assert (=> b!6920917 m!7630770))

(declare-fun m!7630772 () Bool)

(assert (=> b!6920917 m!7630772))

(assert (=> b!6920917 m!7630766))

(assert (=> b!6920917 m!7630772))

(assert (=> b!6920917 m!7630766))

(declare-fun m!7630774 () Bool)

(assert (=> b!6920917 m!7630774))

(declare-fun m!7630776 () Bool)

(assert (=> d!2164537 m!7630776))

(assert (=> d!2164537 m!7630330))

(assert (=> bm!629118 m!7630776))

(assert (=> b!6920912 m!7630766))

(assert (=> b!6920912 m!7630766))

(assert (=> b!6920912 m!7630768))

(assert (=> b!6920906 m!7630770))

(declare-fun m!7630778 () Bool)

(assert (=> b!6920907 m!7630778))

(assert (=> b!6920904 m!7630770))

(assert (=> b!6920440 d!2164537))

(declare-fun d!2164539 () Bool)

(assert (=> d!2164539 (= (get!23312 lt!2470103) (v!52954 lt!2470103))))

(assert (=> b!6920441 d!2164539))

(declare-fun b!6920918 () Bool)

(declare-fun e!4165494 () Bool)

(assert (=> b!6920918 (= e!4165494 (= (head!13875 (_1!37074 lt!2470091)) (c!1284876 r1!6342)))))

(declare-fun b!6920919 () Bool)

(declare-fun res!2822038 () Bool)

(declare-fun e!4165491 () Bool)

(assert (=> b!6920919 (=> res!2822038 e!4165491)))

(assert (=> b!6920919 (= res!2822038 (not (is-ElementMatch!16914 r1!6342)))))

(declare-fun e!4165490 () Bool)

(assert (=> b!6920919 (= e!4165490 e!4165491)))

(declare-fun b!6920920 () Bool)

(declare-fun e!4165493 () Bool)

(assert (=> b!6920920 (= e!4165493 (not (= (head!13875 (_1!37074 lt!2470091)) (c!1284876 r1!6342))))))

(declare-fun b!6920921 () Bool)

(declare-fun e!4165495 () Bool)

(assert (=> b!6920921 (= e!4165495 (nullable!6747 r1!6342))))

(declare-fun d!2164541 () Bool)

(declare-fun e!4165492 () Bool)

(assert (=> d!2164541 e!4165492))

(declare-fun c!1284963 () Bool)

(assert (=> d!2164541 (= c!1284963 (is-EmptyExpr!16914 r1!6342))))

(declare-fun lt!2470230 () Bool)

(assert (=> d!2164541 (= lt!2470230 e!4165495)))

(declare-fun c!1284964 () Bool)

(assert (=> d!2164541 (= c!1284964 (isEmpty!38796 (_1!37074 lt!2470091)))))

(assert (=> d!2164541 (validRegex!8620 r1!6342)))

(assert (=> d!2164541 (= (matchR!9053 r1!6342 (_1!37074 lt!2470091)) lt!2470230)))

(declare-fun b!6920922 () Bool)

(declare-fun e!4165496 () Bool)

(assert (=> b!6920922 (= e!4165496 e!4165493)))

(declare-fun res!2822042 () Bool)

(assert (=> b!6920922 (=> res!2822042 e!4165493)))

(declare-fun call!629124 () Bool)

(assert (=> b!6920922 (= res!2822042 call!629124)))

(declare-fun b!6920923 () Bool)

(declare-fun res!2822041 () Bool)

(assert (=> b!6920923 (=> res!2822041 e!4165491)))

(assert (=> b!6920923 (= res!2822041 e!4165494)))

(declare-fun res!2822043 () Bool)

(assert (=> b!6920923 (=> (not res!2822043) (not e!4165494))))

(assert (=> b!6920923 (= res!2822043 lt!2470230)))

(declare-fun b!6920924 () Bool)

(assert (=> b!6920924 (= e!4165492 (= lt!2470230 call!629124))))

(declare-fun b!6920925 () Bool)

(declare-fun res!2822040 () Bool)

(assert (=> b!6920925 (=> (not res!2822040) (not e!4165494))))

(assert (=> b!6920925 (= res!2822040 (not call!629124))))

(declare-fun b!6920926 () Bool)

(declare-fun res!2822037 () Bool)

(assert (=> b!6920926 (=> res!2822037 e!4165493)))

(assert (=> b!6920926 (= res!2822037 (not (isEmpty!38796 (tail!12927 (_1!37074 lt!2470091)))))))

(declare-fun b!6920927 () Bool)

(assert (=> b!6920927 (= e!4165492 e!4165490)))

(declare-fun c!1284962 () Bool)

(assert (=> b!6920927 (= c!1284962 (is-EmptyLang!16914 r1!6342))))

(declare-fun b!6920928 () Bool)

(declare-fun res!2822044 () Bool)

(assert (=> b!6920928 (=> (not res!2822044) (not e!4165494))))

(assert (=> b!6920928 (= res!2822044 (isEmpty!38796 (tail!12927 (_1!37074 lt!2470091))))))

(declare-fun b!6920929 () Bool)

(assert (=> b!6920929 (= e!4165491 e!4165496)))

(declare-fun res!2822039 () Bool)

(assert (=> b!6920929 (=> (not res!2822039) (not e!4165496))))

(assert (=> b!6920929 (= res!2822039 (not lt!2470230))))

(declare-fun bm!629119 () Bool)

(assert (=> bm!629119 (= call!629124 (isEmpty!38796 (_1!37074 lt!2470091)))))

(declare-fun b!6920930 () Bool)

(assert (=> b!6920930 (= e!4165490 (not lt!2470230))))

(declare-fun b!6920931 () Bool)

(assert (=> b!6920931 (= e!4165495 (matchR!9053 (derivativeStep!5422 r1!6342 (head!13875 (_1!37074 lt!2470091))) (tail!12927 (_1!37074 lt!2470091))))))

(assert (= (and d!2164541 c!1284964) b!6920921))

(assert (= (and d!2164541 (not c!1284964)) b!6920931))

(assert (= (and d!2164541 c!1284963) b!6920924))

(assert (= (and d!2164541 (not c!1284963)) b!6920927))

(assert (= (and b!6920927 c!1284962) b!6920930))

(assert (= (and b!6920927 (not c!1284962)) b!6920919))

(assert (= (and b!6920919 (not res!2822038)) b!6920923))

(assert (= (and b!6920923 res!2822043) b!6920925))

(assert (= (and b!6920925 res!2822040) b!6920928))

(assert (= (and b!6920928 res!2822044) b!6920918))

(assert (= (and b!6920923 (not res!2822041)) b!6920929))

(assert (= (and b!6920929 res!2822039) b!6920922))

(assert (= (and b!6920922 (not res!2822042)) b!6920926))

(assert (= (and b!6920926 (not res!2822037)) b!6920920))

(assert (= (or b!6920924 b!6920922 b!6920925) bm!629119))

(declare-fun m!7630780 () Bool)

(assert (=> b!6920928 m!7630780))

(assert (=> b!6920928 m!7630780))

(declare-fun m!7630782 () Bool)

(assert (=> b!6920928 m!7630782))

(declare-fun m!7630784 () Bool)

(assert (=> b!6920931 m!7630784))

(assert (=> b!6920931 m!7630784))

(declare-fun m!7630786 () Bool)

(assert (=> b!6920931 m!7630786))

(assert (=> b!6920931 m!7630780))

(assert (=> b!6920931 m!7630786))

(assert (=> b!6920931 m!7630780))

(declare-fun m!7630788 () Bool)

(assert (=> b!6920931 m!7630788))

(assert (=> d!2164541 m!7630542))

(assert (=> d!2164541 m!7630346))

(assert (=> bm!629119 m!7630542))

(assert (=> b!6920926 m!7630780))

(assert (=> b!6920926 m!7630780))

(assert (=> b!6920926 m!7630782))

(assert (=> b!6920920 m!7630784))

(declare-fun m!7630790 () Bool)

(assert (=> b!6920921 m!7630790))

(assert (=> b!6920918 m!7630784))

(assert (=> b!6920441 d!2164541))

(declare-fun b!6920932 () Bool)

(declare-fun e!4165500 () Option!16683)

(declare-fun e!4165501 () Option!16683)

(assert (=> b!6920932 (= e!4165500 e!4165501)))

(declare-fun c!1284966 () Bool)

(assert (=> b!6920932 (= c!1284966 (is-Nil!66543 (_1!37074 lt!2470095)))))

(declare-fun b!6920934 () Bool)

(assert (=> b!6920934 (= e!4165500 (Some!16682 (tuple2!67543 Nil!66543 (_1!37074 lt!2470095))))))

(declare-fun b!6920935 () Bool)

(declare-fun e!4165497 () Bool)

(declare-fun lt!2470233 () Option!16683)

(assert (=> b!6920935 (= e!4165497 (= (++!14957 (_1!37074 (get!23312 lt!2470233)) (_2!37074 (get!23312 lt!2470233))) (_1!37074 lt!2470095)))))

(declare-fun b!6920936 () Bool)

(declare-fun e!4165499 () Bool)

(assert (=> b!6920936 (= e!4165499 (not (isDefined!13386 lt!2470233)))))

(declare-fun b!6920937 () Bool)

(declare-fun res!2822048 () Bool)

(assert (=> b!6920937 (=> (not res!2822048) (not e!4165497))))

(assert (=> b!6920937 (= res!2822048 (matchR!9053 r1!6342 (_1!37074 (get!23312 lt!2470233))))))

(declare-fun b!6920938 () Bool)

(assert (=> b!6920938 (= e!4165501 None!16682)))

(declare-fun b!6920939 () Bool)

(declare-fun lt!2470232 () Unit!160552)

(declare-fun lt!2470231 () Unit!160552)

(assert (=> b!6920939 (= lt!2470232 lt!2470231)))

(assert (=> b!6920939 (= (++!14957 (++!14957 Nil!66543 (Cons!66543 (h!72991 (_1!37074 lt!2470095)) Nil!66543)) (t!380410 (_1!37074 lt!2470095))) (_1!37074 lt!2470095))))

(assert (=> b!6920939 (= lt!2470231 (lemmaMoveElementToOtherListKeepsConcatEq!2826 Nil!66543 (h!72991 (_1!37074 lt!2470095)) (t!380410 (_1!37074 lt!2470095)) (_1!37074 lt!2470095)))))

(assert (=> b!6920939 (= e!4165501 (findConcatSeparation!3097 r1!6342 r2!6280 (++!14957 Nil!66543 (Cons!66543 (h!72991 (_1!37074 lt!2470095)) Nil!66543)) (t!380410 (_1!37074 lt!2470095)) (_1!37074 lt!2470095)))))

(declare-fun b!6920940 () Bool)

(declare-fun res!2822046 () Bool)

(assert (=> b!6920940 (=> (not res!2822046) (not e!4165497))))

(assert (=> b!6920940 (= res!2822046 (matchR!9053 r2!6280 (_2!37074 (get!23312 lt!2470233))))))

(declare-fun d!2164543 () Bool)

(assert (=> d!2164543 e!4165499))

(declare-fun res!2822049 () Bool)

(assert (=> d!2164543 (=> res!2822049 e!4165499)))

(assert (=> d!2164543 (= res!2822049 e!4165497)))

(declare-fun res!2822047 () Bool)

(assert (=> d!2164543 (=> (not res!2822047) (not e!4165497))))

(assert (=> d!2164543 (= res!2822047 (isDefined!13386 lt!2470233))))

(assert (=> d!2164543 (= lt!2470233 e!4165500)))

(declare-fun c!1284965 () Bool)

(declare-fun e!4165498 () Bool)

(assert (=> d!2164543 (= c!1284965 e!4165498)))

(declare-fun res!2822045 () Bool)

(assert (=> d!2164543 (=> (not res!2822045) (not e!4165498))))

(assert (=> d!2164543 (= res!2822045 (matchR!9053 r1!6342 Nil!66543))))

(assert (=> d!2164543 (validRegex!8620 r1!6342)))

(assert (=> d!2164543 (= (findConcatSeparation!3097 r1!6342 r2!6280 Nil!66543 (_1!37074 lt!2470095) (_1!37074 lt!2470095)) lt!2470233)))

(declare-fun b!6920933 () Bool)

(assert (=> b!6920933 (= e!4165498 (matchR!9053 r2!6280 (_1!37074 lt!2470095)))))

(assert (= (and d!2164543 res!2822045) b!6920933))

(assert (= (and d!2164543 c!1284965) b!6920934))

(assert (= (and d!2164543 (not c!1284965)) b!6920932))

(assert (= (and b!6920932 c!1284966) b!6920938))

(assert (= (and b!6920932 (not c!1284966)) b!6920939))

(assert (= (and d!2164543 res!2822047) b!6920937))

(assert (= (and b!6920937 res!2822048) b!6920940))

(assert (= (and b!6920940 res!2822046) b!6920935))

(assert (= (and d!2164543 (not res!2822049)) b!6920936))

(declare-fun m!7630792 () Bool)

(assert (=> b!6920940 m!7630792))

(declare-fun m!7630794 () Bool)

(assert (=> b!6920940 m!7630794))

(declare-fun m!7630796 () Bool)

(assert (=> b!6920936 m!7630796))

(assert (=> b!6920937 m!7630792))

(declare-fun m!7630798 () Bool)

(assert (=> b!6920937 m!7630798))

(declare-fun m!7630800 () Bool)

(assert (=> b!6920939 m!7630800))

(assert (=> b!6920939 m!7630800))

(declare-fun m!7630802 () Bool)

(assert (=> b!6920939 m!7630802))

(declare-fun m!7630804 () Bool)

(assert (=> b!6920939 m!7630804))

(assert (=> b!6920939 m!7630800))

(declare-fun m!7630806 () Bool)

(assert (=> b!6920939 m!7630806))

(assert (=> b!6920935 m!7630792))

(declare-fun m!7630808 () Bool)

(assert (=> b!6920935 m!7630808))

(assert (=> d!2164543 m!7630796))

(declare-fun m!7630810 () Bool)

(assert (=> d!2164543 m!7630810))

(assert (=> d!2164543 m!7630346))

(declare-fun m!7630812 () Bool)

(assert (=> b!6920933 m!7630812))

(assert (=> b!6920441 d!2164543))

(declare-fun bs!1846862 () Bool)

(declare-fun d!2164545 () Bool)

(assert (= bs!1846862 (and d!2164545 b!6920637)))

(declare-fun lambda!393405 () Int)

(assert (=> bs!1846862 (not (= lambda!393405 lambda!393380))))

(declare-fun bs!1846863 () Bool)

(assert (= bs!1846863 (and d!2164545 b!6920626)))

(assert (=> bs!1846863 (not (= lambda!393405 lambda!393377))))

(declare-fun bs!1846864 () Bool)

(assert (= bs!1846864 (and d!2164545 d!2164515)))

(assert (=> bs!1846864 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393405 lambda!393404))))

(declare-fun bs!1846865 () Bool)

(assert (= bs!1846865 (and d!2164545 d!2164493)))

(assert (=> bs!1846865 (not (= lambda!393405 lambda!393397))))

(declare-fun bs!1846866 () Bool)

(assert (= bs!1846866 (and d!2164545 b!6920428)))

(assert (=> bs!1846866 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393405 lambda!393347))))

(assert (=> bs!1846865 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393405 lambda!393396))))

(declare-fun bs!1846867 () Bool)

(assert (= bs!1846867 (and d!2164545 d!2164509)))

(assert (=> bs!1846867 (not (= lambda!393405 lambda!393403))))

(declare-fun bs!1846868 () Bool)

(assert (= bs!1846868 (and d!2164545 b!6920441)))

(assert (=> bs!1846868 (= lambda!393405 lambda!393345)))

(assert (=> bs!1846868 (not (= lambda!393405 lambda!393346))))

(declare-fun bs!1846869 () Bool)

(assert (= bs!1846869 (and d!2164545 b!6920439)))

(assert (=> bs!1846869 (not (= lambda!393405 lambda!393344))))

(assert (=> bs!1846866 (not (= lambda!393405 lambda!393348))))

(assert (=> bs!1846869 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393405 lambda!393343))))

(declare-fun bs!1846870 () Bool)

(assert (= bs!1846870 (and d!2164545 d!2164481)))

(assert (=> bs!1846870 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393405 lambda!393387))))

(declare-fun bs!1846871 () Bool)

(assert (= bs!1846871 (and d!2164545 b!6920718)))

(assert (=> bs!1846871 (not (= lambda!393405 lambda!393381))))

(declare-fun bs!1846872 () Bool)

(assert (= bs!1846872 (and d!2164545 b!6920714)))

(assert (=> bs!1846872 (not (= lambda!393405 lambda!393382))))

(declare-fun bs!1846873 () Bool)

(assert (= bs!1846873 (and d!2164545 b!6920622)))

(assert (=> bs!1846873 (not (= lambda!393405 lambda!393378))))

(declare-fun bs!1846874 () Bool)

(assert (= bs!1846874 (and d!2164545 b!6920842)))

(assert (=> bs!1846874 (not (= lambda!393405 lambda!393398))))

(assert (=> bs!1846867 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393405 lambda!393401))))

(declare-fun bs!1846875 () Bool)

(assert (= bs!1846875 (and d!2164545 b!6920838)))

(assert (=> bs!1846875 (not (= lambda!393405 lambda!393399))))

(declare-fun bs!1846876 () Bool)

(assert (= bs!1846876 (and d!2164545 b!6920641)))

(assert (=> bs!1846876 (not (= lambda!393405 lambda!393379))))

(assert (=> d!2164545 true))

(assert (=> d!2164545 true))

(assert (=> d!2164545 true))

(declare-fun lambda!393406 () Int)

(assert (=> bs!1846862 (= (and (= (_1!37074 lt!2470095) (_1!37074 lt!2470091)) (= r1!6342 (regOne!34340 r1!6342)) (= r2!6280 (regTwo!34340 r1!6342))) (= lambda!393406 lambda!393380))))

(assert (=> bs!1846863 (not (= lambda!393406 lambda!393377))))

(assert (=> bs!1846864 (not (= lambda!393406 lambda!393404))))

(assert (=> bs!1846865 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393406 lambda!393397))))

(assert (=> bs!1846866 (not (= lambda!393406 lambda!393347))))

(assert (=> bs!1846865 (not (= lambda!393406 lambda!393396))))

(assert (=> bs!1846867 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393406 lambda!393403))))

(assert (=> bs!1846868 (not (= lambda!393406 lambda!393345))))

(assert (=> bs!1846868 (= lambda!393406 lambda!393346)))

(assert (=> bs!1846866 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393406 lambda!393348))))

(assert (=> bs!1846869 (not (= lambda!393406 lambda!393343))))

(assert (=> bs!1846870 (not (= lambda!393406 lambda!393387))))

(assert (=> bs!1846871 (not (= lambda!393406 lambda!393381))))

(assert (=> bs!1846872 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= r1!6342 (regOne!34340 lt!2470101)) (= r2!6280 (regTwo!34340 lt!2470101))) (= lambda!393406 lambda!393382))))

(assert (=> bs!1846873 (= (and (= (_1!37074 lt!2470095) (_2!37074 lt!2470091)) (= r1!6342 (regOne!34340 r2!6280)) (= r2!6280 (regTwo!34340 r2!6280))) (= lambda!393406 lambda!393378))))

(assert (=> bs!1846874 (not (= lambda!393406 lambda!393398))))

(assert (=> bs!1846867 (not (= lambda!393406 lambda!393401))))

(declare-fun bs!1846877 () Bool)

(assert (= bs!1846877 d!2164545))

(assert (=> bs!1846877 (not (= lambda!393406 lambda!393405))))

(assert (=> bs!1846869 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393406 lambda!393344))))

(assert (=> bs!1846875 (= (and (= r1!6342 (regOne!34340 lt!2470108)) (= r2!6280 (regTwo!34340 lt!2470108))) (= lambda!393406 lambda!393399))))

(assert (=> bs!1846876 (not (= lambda!393406 lambda!393379))))

(assert (=> d!2164545 true))

(assert (=> d!2164545 true))

(assert (=> d!2164545 true))

(assert (=> d!2164545 (= (Exists!3916 lambda!393405) (Exists!3916 lambda!393406))))

(declare-fun lt!2470234 () Unit!160552)

(assert (=> d!2164545 (= lt!2470234 (choose!51529 r1!6342 r2!6280 (_1!37074 lt!2470095)))))

(assert (=> d!2164545 (validRegex!8620 r1!6342)))

(assert (=> d!2164545 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2383 r1!6342 r2!6280 (_1!37074 lt!2470095)) lt!2470234)))

(declare-fun m!7630814 () Bool)

(assert (=> bs!1846877 m!7630814))

(declare-fun m!7630816 () Bool)

(assert (=> bs!1846877 m!7630816))

(declare-fun m!7630818 () Bool)

(assert (=> bs!1846877 m!7630818))

(assert (=> bs!1846877 m!7630346))

(assert (=> b!6920441 d!2164545))

(declare-fun d!2164547 () Bool)

(assert (=> d!2164547 (= (Exists!3916 lambda!393345) (choose!51528 lambda!393345))))

(declare-fun bs!1846878 () Bool)

(assert (= bs!1846878 d!2164547))

(declare-fun m!7630820 () Bool)

(assert (=> bs!1846878 m!7630820))

(assert (=> b!6920441 d!2164547))

(declare-fun d!2164549 () Bool)

(assert (=> d!2164549 (= (Exists!3916 lambda!393346) (choose!51528 lambda!393346))))

(declare-fun bs!1846879 () Bool)

(assert (= bs!1846879 d!2164549))

(declare-fun m!7630822 () Bool)

(assert (=> bs!1846879 m!7630822))

(assert (=> b!6920441 d!2164549))

(declare-fun d!2164551 () Bool)

(assert (=> d!2164551 (= (isDefined!13386 lt!2470103) (not (isEmpty!38797 lt!2470103)))))

(declare-fun bs!1846880 () Bool)

(assert (= bs!1846880 d!2164551))

(declare-fun m!7630824 () Bool)

(assert (=> bs!1846880 m!7630824))

(assert (=> b!6920441 d!2164551))

(declare-fun bs!1846881 () Bool)

(declare-fun d!2164553 () Bool)

(assert (= bs!1846881 (and d!2164553 b!6920637)))

(declare-fun lambda!393407 () Int)

(assert (=> bs!1846881 (not (= lambda!393407 lambda!393380))))

(declare-fun bs!1846882 () Bool)

(assert (= bs!1846882 (and d!2164553 b!6920626)))

(assert (=> bs!1846882 (not (= lambda!393407 lambda!393377))))

(declare-fun bs!1846883 () Bool)

(assert (= bs!1846883 (and d!2164553 d!2164515)))

(assert (=> bs!1846883 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393407 lambda!393404))))

(declare-fun bs!1846884 () Bool)

(assert (= bs!1846884 (and d!2164553 d!2164493)))

(assert (=> bs!1846884 (not (= lambda!393407 lambda!393397))))

(declare-fun bs!1846885 () Bool)

(assert (= bs!1846885 (and d!2164553 b!6920428)))

(assert (=> bs!1846885 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393407 lambda!393347))))

(assert (=> bs!1846884 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393407 lambda!393396))))

(declare-fun bs!1846886 () Bool)

(assert (= bs!1846886 (and d!2164553 d!2164509)))

(assert (=> bs!1846886 (not (= lambda!393407 lambda!393403))))

(declare-fun bs!1846887 () Bool)

(assert (= bs!1846887 (and d!2164553 b!6920441)))

(assert (=> bs!1846887 (= lambda!393407 lambda!393345)))

(assert (=> bs!1846887 (not (= lambda!393407 lambda!393346))))

(assert (=> bs!1846885 (not (= lambda!393407 lambda!393348))))

(declare-fun bs!1846888 () Bool)

(assert (= bs!1846888 (and d!2164553 b!6920439)))

(assert (=> bs!1846888 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393407 lambda!393343))))

(declare-fun bs!1846889 () Bool)

(assert (= bs!1846889 (and d!2164553 d!2164545)))

(assert (=> bs!1846889 (not (= lambda!393407 lambda!393406))))

(declare-fun bs!1846890 () Bool)

(assert (= bs!1846890 (and d!2164553 d!2164481)))

(assert (=> bs!1846890 (= (and (= (_1!37074 lt!2470095) lt!2470093) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393407 lambda!393387))))

(declare-fun bs!1846891 () Bool)

(assert (= bs!1846891 (and d!2164553 b!6920718)))

(assert (=> bs!1846891 (not (= lambda!393407 lambda!393381))))

(declare-fun bs!1846892 () Bool)

(assert (= bs!1846892 (and d!2164553 b!6920714)))

(assert (=> bs!1846892 (not (= lambda!393407 lambda!393382))))

(declare-fun bs!1846893 () Bool)

(assert (= bs!1846893 (and d!2164553 b!6920622)))

(assert (=> bs!1846893 (not (= lambda!393407 lambda!393378))))

(declare-fun bs!1846894 () Bool)

(assert (= bs!1846894 (and d!2164553 b!6920842)))

(assert (=> bs!1846894 (not (= lambda!393407 lambda!393398))))

(assert (=> bs!1846886 (= (and (= (_1!37074 lt!2470095) s!14361) (= r1!6342 lt!2470108) (= r2!6280 r3!135)) (= lambda!393407 lambda!393401))))

(assert (=> bs!1846889 (= lambda!393407 lambda!393405)))

(assert (=> bs!1846888 (not (= lambda!393407 lambda!393344))))

(declare-fun bs!1846895 () Bool)

(assert (= bs!1846895 (and d!2164553 b!6920838)))

(assert (=> bs!1846895 (not (= lambda!393407 lambda!393399))))

(declare-fun bs!1846896 () Bool)

(assert (= bs!1846896 (and d!2164553 b!6920641)))

(assert (=> bs!1846896 (not (= lambda!393407 lambda!393379))))

(assert (=> d!2164553 true))

(assert (=> d!2164553 true))

(assert (=> d!2164553 true))

(assert (=> d!2164553 (= (isDefined!13386 (findConcatSeparation!3097 r1!6342 r2!6280 Nil!66543 (_1!37074 lt!2470095) (_1!37074 lt!2470095))) (Exists!3916 lambda!393407))))

(declare-fun lt!2470237 () Unit!160552)

(assert (=> d!2164553 (= lt!2470237 (choose!51527 r1!6342 r2!6280 (_1!37074 lt!2470095)))))

(assert (=> d!2164553 (validRegex!8620 r1!6342)))

(assert (=> d!2164553 (= (lemmaFindConcatSeparationEquivalentToExists!2859 r1!6342 r2!6280 (_1!37074 lt!2470095)) lt!2470237)))

(declare-fun bs!1846897 () Bool)

(assert (= bs!1846897 d!2164553))

(declare-fun m!7630826 () Bool)

(assert (=> bs!1846897 m!7630826))

(assert (=> bs!1846897 m!7630362))

(assert (=> bs!1846897 m!7630362))

(declare-fun m!7630828 () Bool)

(assert (=> bs!1846897 m!7630828))

(assert (=> bs!1846897 m!7630346))

(declare-fun m!7630830 () Bool)

(assert (=> bs!1846897 m!7630830))

(assert (=> b!6920441 d!2164553))

(declare-fun bm!629120 () Bool)

(declare-fun call!629127 () Bool)

(declare-fun c!1284967 () Bool)

(assert (=> bm!629120 (= call!629127 (validRegex!8620 (ite c!1284967 (regTwo!34341 r2!6280) (regOne!34340 r2!6280))))))

(declare-fun b!6920945 () Bool)

(declare-fun e!4165507 () Bool)

(declare-fun e!4165508 () Bool)

(assert (=> b!6920945 (= e!4165507 e!4165508)))

(assert (=> b!6920945 (= c!1284967 (is-Union!16914 r2!6280))))

(declare-fun b!6920946 () Bool)

(declare-fun e!4165504 () Bool)

(assert (=> b!6920946 (= e!4165504 call!629127)))

(declare-fun b!6920947 () Bool)

(declare-fun e!4165506 () Bool)

(assert (=> b!6920947 (= e!4165506 e!4165507)))

(declare-fun c!1284968 () Bool)

(assert (=> b!6920947 (= c!1284968 (is-Star!16914 r2!6280))))

(declare-fun b!6920948 () Bool)

(declare-fun e!4165509 () Bool)

(assert (=> b!6920948 (= e!4165507 e!4165509)))

(declare-fun res!2822055 () Bool)

(assert (=> b!6920948 (= res!2822055 (not (nullable!6747 (reg!17243 r2!6280))))))

(assert (=> b!6920948 (=> (not res!2822055) (not e!4165509))))

(declare-fun b!6920949 () Bool)

(declare-fun e!4165505 () Bool)

(declare-fun e!4165510 () Bool)

(assert (=> b!6920949 (= e!4165505 e!4165510)))

(declare-fun res!2822057 () Bool)

(assert (=> b!6920949 (=> (not res!2822057) (not e!4165510))))

(assert (=> b!6920949 (= res!2822057 call!629127)))

(declare-fun d!2164555 () Bool)

(declare-fun res!2822058 () Bool)

(assert (=> d!2164555 (=> res!2822058 e!4165506)))

(assert (=> d!2164555 (= res!2822058 (is-ElementMatch!16914 r2!6280))))

(assert (=> d!2164555 (= (validRegex!8620 r2!6280) e!4165506)))

(declare-fun b!6920950 () Bool)

(declare-fun res!2822056 () Bool)

(assert (=> b!6920950 (=> (not res!2822056) (not e!4165504))))

(declare-fun call!629126 () Bool)

(assert (=> b!6920950 (= res!2822056 call!629126)))

(assert (=> b!6920950 (= e!4165508 e!4165504)))

(declare-fun b!6920951 () Bool)

(declare-fun call!629125 () Bool)

(assert (=> b!6920951 (= e!4165509 call!629125)))

(declare-fun b!6920952 () Bool)

(declare-fun res!2822054 () Bool)

(assert (=> b!6920952 (=> res!2822054 e!4165505)))

(assert (=> b!6920952 (= res!2822054 (not (is-Concat!25759 r2!6280)))))

(assert (=> b!6920952 (= e!4165508 e!4165505)))

(declare-fun bm!629121 () Bool)

(assert (=> bm!629121 (= call!629125 (validRegex!8620 (ite c!1284968 (reg!17243 r2!6280) (ite c!1284967 (regOne!34341 r2!6280) (regTwo!34340 r2!6280)))))))

(declare-fun bm!629122 () Bool)

(assert (=> bm!629122 (= call!629126 call!629125)))

(declare-fun b!6920953 () Bool)

(assert (=> b!6920953 (= e!4165510 call!629126)))

(assert (= (and d!2164555 (not res!2822058)) b!6920947))

(assert (= (and b!6920947 c!1284968) b!6920948))

(assert (= (and b!6920947 (not c!1284968)) b!6920945))

(assert (= (and b!6920948 res!2822055) b!6920951))

(assert (= (and b!6920945 c!1284967) b!6920950))

(assert (= (and b!6920945 (not c!1284967)) b!6920952))

(assert (= (and b!6920950 res!2822056) b!6920946))

(assert (= (and b!6920952 (not res!2822054)) b!6920949))

(assert (= (and b!6920949 res!2822057) b!6920953))

(assert (= (or b!6920950 b!6920953) bm!629122))

(assert (= (or b!6920946 b!6920949) bm!629120))

(assert (= (or b!6920951 bm!629122) bm!629121))

(declare-fun m!7630832 () Bool)

(assert (=> bm!629120 m!7630832))

(declare-fun m!7630834 () Bool)

(assert (=> b!6920948 m!7630834))

(declare-fun m!7630836 () Bool)

(assert (=> bm!629121 m!7630836))

(assert (=> b!6920436 d!2164555))

(declare-fun bs!1846898 () Bool)

(declare-fun b!6920964 () Bool)

(assert (= bs!1846898 (and b!6920964 b!6920637)))

(declare-fun lambda!393410 () Int)

(assert (=> bs!1846898 (not (= lambda!393410 lambda!393380))))

(declare-fun bs!1846899 () Bool)

(assert (= bs!1846899 (and b!6920964 b!6920626)))

(assert (=> bs!1846899 (= (and (= s!14361 (_2!37074 lt!2470091)) (= (reg!17243 lt!2470090) (reg!17243 r2!6280)) (= lt!2470090 r2!6280)) (= lambda!393410 lambda!393377))))

(declare-fun bs!1846900 () Bool)

(assert (= bs!1846900 (and b!6920964 d!2164515)))

(assert (=> bs!1846900 (not (= lambda!393410 lambda!393404))))

(declare-fun bs!1846901 () Bool)

(assert (= bs!1846901 (and b!6920964 d!2164553)))

(assert (=> bs!1846901 (not (= lambda!393410 lambda!393407))))

(declare-fun bs!1846902 () Bool)

(assert (= bs!1846902 (and b!6920964 d!2164493)))

(assert (=> bs!1846902 (not (= lambda!393410 lambda!393397))))

(declare-fun bs!1846903 () Bool)

(assert (= bs!1846903 (and b!6920964 b!6920428)))

(assert (=> bs!1846903 (not (= lambda!393410 lambda!393347))))

(assert (=> bs!1846902 (not (= lambda!393410 lambda!393396))))

(declare-fun bs!1846904 () Bool)

(assert (= bs!1846904 (and b!6920964 d!2164509)))

(assert (=> bs!1846904 (not (= lambda!393410 lambda!393403))))

(declare-fun bs!1846905 () Bool)

(assert (= bs!1846905 (and b!6920964 b!6920441)))

(assert (=> bs!1846905 (not (= lambda!393410 lambda!393345))))

(assert (=> bs!1846905 (not (= lambda!393410 lambda!393346))))

(assert (=> bs!1846903 (not (= lambda!393410 lambda!393348))))

(declare-fun bs!1846906 () Bool)

(assert (= bs!1846906 (and b!6920964 b!6920439)))

(assert (=> bs!1846906 (not (= lambda!393410 lambda!393343))))

(declare-fun bs!1846907 () Bool)

(assert (= bs!1846907 (and b!6920964 d!2164545)))

(assert (=> bs!1846907 (not (= lambda!393410 lambda!393406))))

(declare-fun bs!1846908 () Bool)

(assert (= bs!1846908 (and b!6920964 d!2164481)))

(assert (=> bs!1846908 (not (= lambda!393410 lambda!393387))))

(declare-fun bs!1846909 () Bool)

(assert (= bs!1846909 (and b!6920964 b!6920718)))

(assert (=> bs!1846909 (= (and (= s!14361 lt!2470093) (= (reg!17243 lt!2470090) (reg!17243 lt!2470101)) (= lt!2470090 lt!2470101)) (= lambda!393410 lambda!393381))))

(declare-fun bs!1846910 () Bool)

(assert (= bs!1846910 (and b!6920964 b!6920714)))

(assert (=> bs!1846910 (not (= lambda!393410 lambda!393382))))

(declare-fun bs!1846911 () Bool)

(assert (= bs!1846911 (and b!6920964 b!6920622)))

(assert (=> bs!1846911 (not (= lambda!393410 lambda!393378))))

(declare-fun bs!1846912 () Bool)

(assert (= bs!1846912 (and b!6920964 b!6920842)))

(assert (=> bs!1846912 (= (and (= s!14361 (_1!37074 lt!2470095)) (= (reg!17243 lt!2470090) (reg!17243 lt!2470108)) (= lt!2470090 lt!2470108)) (= lambda!393410 lambda!393398))))

(assert (=> bs!1846904 (not (= lambda!393410 lambda!393401))))

(assert (=> bs!1846907 (not (= lambda!393410 lambda!393405))))

(assert (=> bs!1846906 (not (= lambda!393410 lambda!393344))))

(declare-fun bs!1846913 () Bool)

(assert (= bs!1846913 (and b!6920964 b!6920838)))

(assert (=> bs!1846913 (not (= lambda!393410 lambda!393399))))

(declare-fun bs!1846914 () Bool)

(assert (= bs!1846914 (and b!6920964 b!6920641)))

(assert (=> bs!1846914 (= (and (= s!14361 (_1!37074 lt!2470091)) (= (reg!17243 lt!2470090) (reg!17243 r1!6342)) (= lt!2470090 r1!6342)) (= lambda!393410 lambda!393379))))

(assert (=> b!6920964 true))

(assert (=> b!6920964 true))

(declare-fun bs!1846917 () Bool)

(declare-fun b!6920960 () Bool)

(assert (= bs!1846917 (and b!6920960 b!6920637)))

(declare-fun lambda!393412 () Int)

(assert (=> bs!1846917 (= (and (= s!14361 (_1!37074 lt!2470091)) (= (regOne!34340 lt!2470090) (regOne!34340 r1!6342)) (= (regTwo!34340 lt!2470090) (regTwo!34340 r1!6342))) (= lambda!393412 lambda!393380))))

(declare-fun bs!1846919 () Bool)

(assert (= bs!1846919 (and b!6920960 b!6920626)))

(assert (=> bs!1846919 (not (= lambda!393412 lambda!393377))))

(declare-fun bs!1846920 () Bool)

(assert (= bs!1846920 (and b!6920960 d!2164515)))

(assert (=> bs!1846920 (not (= lambda!393412 lambda!393404))))

(declare-fun bs!1846922 () Bool)

(assert (= bs!1846922 (and b!6920960 d!2164553)))

(assert (=> bs!1846922 (not (= lambda!393412 lambda!393407))))

(declare-fun bs!1846923 () Bool)

(assert (= bs!1846923 (and b!6920960 b!6920428)))

(assert (=> bs!1846923 (not (= lambda!393412 lambda!393347))))

(declare-fun bs!1846925 () Bool)

(assert (= bs!1846925 (and b!6920960 d!2164493)))

(assert (=> bs!1846925 (not (= lambda!393412 lambda!393396))))

(declare-fun bs!1846926 () Bool)

(assert (= bs!1846926 (and b!6920960 d!2164509)))

(assert (=> bs!1846926 (= (and (= (regOne!34340 lt!2470090) lt!2470108) (= (regTwo!34340 lt!2470090) r3!135)) (= lambda!393412 lambda!393403))))

(declare-fun bs!1846927 () Bool)

(assert (= bs!1846927 (and b!6920960 b!6920441)))

(assert (=> bs!1846927 (not (= lambda!393412 lambda!393345))))

(assert (=> bs!1846927 (= (and (= s!14361 (_1!37074 lt!2470095)) (= (regOne!34340 lt!2470090) r1!6342) (= (regTwo!34340 lt!2470090) r2!6280)) (= lambda!393412 lambda!393346))))

(assert (=> bs!1846923 (= (and (= s!14361 lt!2470093) (= (regOne!34340 lt!2470090) r2!6280) (= (regTwo!34340 lt!2470090) r3!135)) (= lambda!393412 lambda!393348))))

(declare-fun bs!1846930 () Bool)

(assert (= bs!1846930 (and b!6920960 b!6920439)))

(assert (=> bs!1846930 (not (= lambda!393412 lambda!393343))))

(declare-fun bs!1846931 () Bool)

(assert (= bs!1846931 (and b!6920960 d!2164545)))

(assert (=> bs!1846931 (= (and (= s!14361 (_1!37074 lt!2470095)) (= (regOne!34340 lt!2470090) r1!6342) (= (regTwo!34340 lt!2470090) r2!6280)) (= lambda!393412 lambda!393406))))

(declare-fun bs!1846932 () Bool)

(assert (= bs!1846932 (and b!6920960 d!2164481)))

(assert (=> bs!1846932 (not (= lambda!393412 lambda!393387))))

(declare-fun bs!1846933 () Bool)

(assert (= bs!1846933 (and b!6920960 b!6920718)))

(assert (=> bs!1846933 (not (= lambda!393412 lambda!393381))))

(declare-fun bs!1846934 () Bool)

(assert (= bs!1846934 (and b!6920960 b!6920714)))

(assert (=> bs!1846934 (= (and (= s!14361 lt!2470093) (= (regOne!34340 lt!2470090) (regOne!34340 lt!2470101)) (= (regTwo!34340 lt!2470090) (regTwo!34340 lt!2470101))) (= lambda!393412 lambda!393382))))

(declare-fun bs!1846935 () Bool)

(assert (= bs!1846935 (and b!6920960 b!6920622)))

(assert (=> bs!1846935 (= (and (= s!14361 (_2!37074 lt!2470091)) (= (regOne!34340 lt!2470090) (regOne!34340 r2!6280)) (= (regTwo!34340 lt!2470090) (regTwo!34340 r2!6280))) (= lambda!393412 lambda!393378))))

(declare-fun bs!1846936 () Bool)

(assert (= bs!1846936 (and b!6920960 b!6920842)))

(assert (=> bs!1846936 (not (= lambda!393412 lambda!393398))))

(assert (=> bs!1846926 (not (= lambda!393412 lambda!393401))))

(declare-fun bs!1846938 () Bool)

(assert (= bs!1846938 (and b!6920960 b!6920964)))

(assert (=> bs!1846938 (not (= lambda!393412 lambda!393410))))

(assert (=> bs!1846925 (= (and (= s!14361 lt!2470093) (= (regOne!34340 lt!2470090) r2!6280) (= (regTwo!34340 lt!2470090) r3!135)) (= lambda!393412 lambda!393397))))

(assert (=> bs!1846931 (not (= lambda!393412 lambda!393405))))

(assert (=> bs!1846930 (= (and (= (regOne!34340 lt!2470090) lt!2470108) (= (regTwo!34340 lt!2470090) r3!135)) (= lambda!393412 lambda!393344))))

(declare-fun bs!1846939 () Bool)

(assert (= bs!1846939 (and b!6920960 b!6920838)))

(assert (=> bs!1846939 (= (and (= s!14361 (_1!37074 lt!2470095)) (= (regOne!34340 lt!2470090) (regOne!34340 lt!2470108)) (= (regTwo!34340 lt!2470090) (regTwo!34340 lt!2470108))) (= lambda!393412 lambda!393399))))

(declare-fun bs!1846940 () Bool)

(assert (= bs!1846940 (and b!6920960 b!6920641)))

(assert (=> bs!1846940 (not (= lambda!393412 lambda!393379))))

(assert (=> b!6920960 true))

(assert (=> b!6920960 true))

(declare-fun b!6920954 () Bool)

(declare-fun e!4165516 () Bool)

(assert (=> b!6920954 (= e!4165516 (= s!14361 (Cons!66543 (c!1284876 lt!2470090) Nil!66543)))))

(declare-fun b!6920955 () Bool)

(declare-fun e!4165514 () Bool)

(declare-fun e!4165512 () Bool)

(assert (=> b!6920955 (= e!4165514 e!4165512)))

(declare-fun res!2822061 () Bool)

(assert (=> b!6920955 (= res!2822061 (not (is-EmptyLang!16914 lt!2470090)))))

(assert (=> b!6920955 (=> (not res!2822061) (not e!4165512))))

(declare-fun d!2164557 () Bool)

(declare-fun c!1284972 () Bool)

(assert (=> d!2164557 (= c!1284972 (is-EmptyExpr!16914 lt!2470090))))

(assert (=> d!2164557 (= (matchRSpec!3971 lt!2470090 s!14361) e!4165514)))

(declare-fun b!6920956 () Bool)

(declare-fun e!4165515 () Bool)

(declare-fun e!4165511 () Bool)

(assert (=> b!6920956 (= e!4165515 e!4165511)))

(declare-fun c!1284970 () Bool)

(assert (=> b!6920956 (= c!1284970 (is-Star!16914 lt!2470090))))

(declare-fun bm!629123 () Bool)

(declare-fun call!629129 () Bool)

(assert (=> bm!629123 (= call!629129 (Exists!3916 (ite c!1284970 lambda!393410 lambda!393412)))))

(declare-fun b!6920957 () Bool)

(declare-fun c!1284971 () Bool)

(assert (=> b!6920957 (= c!1284971 (is-ElementMatch!16914 lt!2470090))))

(assert (=> b!6920957 (= e!4165512 e!4165516)))

(declare-fun b!6920958 () Bool)

(declare-fun call!629128 () Bool)

(assert (=> b!6920958 (= e!4165514 call!629128)))

(declare-fun b!6920959 () Bool)

(declare-fun res!2822059 () Bool)

(declare-fun e!4165513 () Bool)

(assert (=> b!6920959 (=> res!2822059 e!4165513)))

(assert (=> b!6920959 (= res!2822059 call!629128)))

(assert (=> b!6920959 (= e!4165511 e!4165513)))

(assert (=> b!6920960 (= e!4165511 call!629129)))

(declare-fun b!6920961 () Bool)

(declare-fun c!1284969 () Bool)

(assert (=> b!6920961 (= c!1284969 (is-Union!16914 lt!2470090))))

(assert (=> b!6920961 (= e!4165516 e!4165515)))

(declare-fun b!6920962 () Bool)

(declare-fun e!4165517 () Bool)

(assert (=> b!6920962 (= e!4165517 (matchRSpec!3971 (regTwo!34341 lt!2470090) s!14361))))

(declare-fun b!6920963 () Bool)

(assert (=> b!6920963 (= e!4165515 e!4165517)))

(declare-fun res!2822060 () Bool)

(assert (=> b!6920963 (= res!2822060 (matchRSpec!3971 (regOne!34341 lt!2470090) s!14361))))

(assert (=> b!6920963 (=> res!2822060 e!4165517)))

(assert (=> b!6920964 (= e!4165513 call!629129)))

(declare-fun bm!629124 () Bool)

(assert (=> bm!629124 (= call!629128 (isEmpty!38796 s!14361))))

(assert (= (and d!2164557 c!1284972) b!6920958))

(assert (= (and d!2164557 (not c!1284972)) b!6920955))

(assert (= (and b!6920955 res!2822061) b!6920957))

(assert (= (and b!6920957 c!1284971) b!6920954))

(assert (= (and b!6920957 (not c!1284971)) b!6920961))

(assert (= (and b!6920961 c!1284969) b!6920963))

(assert (= (and b!6920961 (not c!1284969)) b!6920956))

(assert (= (and b!6920963 (not res!2822060)) b!6920962))

(assert (= (and b!6920956 c!1284970) b!6920959))

(assert (= (and b!6920956 (not c!1284970)) b!6920960))

(assert (= (and b!6920959 (not res!2822059)) b!6920964))

(assert (= (or b!6920964 b!6920960) bm!629123))

(assert (= (or b!6920958 b!6920959) bm!629124))

(declare-fun m!7630844 () Bool)

(assert (=> bm!629123 m!7630844))

(declare-fun m!7630846 () Bool)

(assert (=> b!6920962 m!7630846))

(declare-fun m!7630848 () Bool)

(assert (=> b!6920963 m!7630848))

(declare-fun m!7630850 () Bool)

(assert (=> bm!629124 m!7630850))

(assert (=> b!6920447 d!2164557))

(declare-fun d!2164561 () Bool)

(assert (=> d!2164561 (= (matchR!9053 lt!2470090 s!14361) (matchRSpec!3971 lt!2470090 s!14361))))

(declare-fun lt!2470239 () Unit!160552)

(assert (=> d!2164561 (= lt!2470239 (choose!51526 lt!2470090 s!14361))))

(assert (=> d!2164561 (validRegex!8620 lt!2470090)))

(assert (=> d!2164561 (= (mainMatchTheorem!3971 lt!2470090 s!14361) lt!2470239)))

(declare-fun bs!1846941 () Bool)

(assert (= bs!1846941 d!2164561))

(assert (=> bs!1846941 m!7630304))

(assert (=> bs!1846941 m!7630302))

(declare-fun m!7630852 () Bool)

(assert (=> bs!1846941 m!7630852))

(declare-fun m!7630854 () Bool)

(assert (=> bs!1846941 m!7630854))

(assert (=> b!6920447 d!2164561))

(declare-fun b!6920965 () Bool)

(declare-fun e!4165522 () Bool)

(assert (=> b!6920965 (= e!4165522 (= (head!13875 s!14361) (c!1284876 lt!2470102)))))

(declare-fun b!6920966 () Bool)

(declare-fun res!2822063 () Bool)

(declare-fun e!4165519 () Bool)

(assert (=> b!6920966 (=> res!2822063 e!4165519)))

(assert (=> b!6920966 (= res!2822063 (not (is-ElementMatch!16914 lt!2470102)))))

(declare-fun e!4165518 () Bool)

(assert (=> b!6920966 (= e!4165518 e!4165519)))

(declare-fun b!6920967 () Bool)

(declare-fun e!4165521 () Bool)

(assert (=> b!6920967 (= e!4165521 (not (= (head!13875 s!14361) (c!1284876 lt!2470102))))))

(declare-fun b!6920968 () Bool)

(declare-fun e!4165523 () Bool)

(assert (=> b!6920968 (= e!4165523 (nullable!6747 lt!2470102))))

(declare-fun d!2164563 () Bool)

(declare-fun e!4165520 () Bool)

(assert (=> d!2164563 e!4165520))

(declare-fun c!1284974 () Bool)

(assert (=> d!2164563 (= c!1284974 (is-EmptyExpr!16914 lt!2470102))))

(declare-fun lt!2470240 () Bool)

(assert (=> d!2164563 (= lt!2470240 e!4165523)))

(declare-fun c!1284975 () Bool)

(assert (=> d!2164563 (= c!1284975 (isEmpty!38796 s!14361))))

(assert (=> d!2164563 (validRegex!8620 lt!2470102)))

(assert (=> d!2164563 (= (matchR!9053 lt!2470102 s!14361) lt!2470240)))

(declare-fun b!6920969 () Bool)

(declare-fun e!4165524 () Bool)

(assert (=> b!6920969 (= e!4165524 e!4165521)))

(declare-fun res!2822067 () Bool)

(assert (=> b!6920969 (=> res!2822067 e!4165521)))

(declare-fun call!629130 () Bool)

(assert (=> b!6920969 (= res!2822067 call!629130)))

(declare-fun b!6920970 () Bool)

(declare-fun res!2822066 () Bool)

(assert (=> b!6920970 (=> res!2822066 e!4165519)))

(assert (=> b!6920970 (= res!2822066 e!4165522)))

(declare-fun res!2822068 () Bool)

(assert (=> b!6920970 (=> (not res!2822068) (not e!4165522))))

(assert (=> b!6920970 (= res!2822068 lt!2470240)))

(declare-fun b!6920971 () Bool)

(assert (=> b!6920971 (= e!4165520 (= lt!2470240 call!629130))))

(declare-fun b!6920972 () Bool)

(declare-fun res!2822065 () Bool)

(assert (=> b!6920972 (=> (not res!2822065) (not e!4165522))))

(assert (=> b!6920972 (= res!2822065 (not call!629130))))

(declare-fun b!6920973 () Bool)

(declare-fun res!2822062 () Bool)

(assert (=> b!6920973 (=> res!2822062 e!4165521)))

(assert (=> b!6920973 (= res!2822062 (not (isEmpty!38796 (tail!12927 s!14361))))))

(declare-fun b!6920974 () Bool)

(assert (=> b!6920974 (= e!4165520 e!4165518)))

(declare-fun c!1284973 () Bool)

(assert (=> b!6920974 (= c!1284973 (is-EmptyLang!16914 lt!2470102))))

(declare-fun b!6920975 () Bool)

(declare-fun res!2822069 () Bool)

(assert (=> b!6920975 (=> (not res!2822069) (not e!4165522))))

(assert (=> b!6920975 (= res!2822069 (isEmpty!38796 (tail!12927 s!14361)))))

(declare-fun b!6920976 () Bool)

(assert (=> b!6920976 (= e!4165519 e!4165524)))

(declare-fun res!2822064 () Bool)

(assert (=> b!6920976 (=> (not res!2822064) (not e!4165524))))

(assert (=> b!6920976 (= res!2822064 (not lt!2470240))))

(declare-fun bm!629125 () Bool)

(assert (=> bm!629125 (= call!629130 (isEmpty!38796 s!14361))))

(declare-fun b!6920977 () Bool)

(assert (=> b!6920977 (= e!4165518 (not lt!2470240))))

(declare-fun b!6920978 () Bool)

(assert (=> b!6920978 (= e!4165523 (matchR!9053 (derivativeStep!5422 lt!2470102 (head!13875 s!14361)) (tail!12927 s!14361)))))

(assert (= (and d!2164563 c!1284975) b!6920968))

(assert (= (and d!2164563 (not c!1284975)) b!6920978))

(assert (= (and d!2164563 c!1284974) b!6920971))

(assert (= (and d!2164563 (not c!1284974)) b!6920974))

(assert (= (and b!6920974 c!1284973) b!6920977))

(assert (= (and b!6920974 (not c!1284973)) b!6920966))

(assert (= (and b!6920966 (not res!2822063)) b!6920970))

(assert (= (and b!6920970 res!2822068) b!6920972))

(assert (= (and b!6920972 res!2822065) b!6920975))

(assert (= (and b!6920975 res!2822069) b!6920965))

(assert (= (and b!6920970 (not res!2822066)) b!6920976))

(assert (= (and b!6920976 res!2822064) b!6920969))

(assert (= (and b!6920969 (not res!2822067)) b!6920973))

(assert (= (and b!6920973 (not res!2822062)) b!6920967))

(assert (= (or b!6920971 b!6920969 b!6920972) bm!629125))

(declare-fun m!7630856 () Bool)

(assert (=> b!6920975 m!7630856))

(assert (=> b!6920975 m!7630856))

(declare-fun m!7630858 () Bool)

(assert (=> b!6920975 m!7630858))

(declare-fun m!7630860 () Bool)

(assert (=> b!6920978 m!7630860))

(assert (=> b!6920978 m!7630860))

(declare-fun m!7630862 () Bool)

(assert (=> b!6920978 m!7630862))

(assert (=> b!6920978 m!7630856))

(assert (=> b!6920978 m!7630862))

(assert (=> b!6920978 m!7630856))

(declare-fun m!7630864 () Bool)

(assert (=> b!6920978 m!7630864))

(assert (=> d!2164563 m!7630850))

(declare-fun m!7630866 () Bool)

(assert (=> d!2164563 m!7630866))

(assert (=> bm!629125 m!7630850))

(assert (=> b!6920973 m!7630856))

(assert (=> b!6920973 m!7630856))

(assert (=> b!6920973 m!7630858))

(assert (=> b!6920967 m!7630860))

(declare-fun m!7630868 () Bool)

(assert (=> b!6920968 m!7630868))

(assert (=> b!6920965 m!7630860))

(assert (=> b!6920447 d!2164563))

(declare-fun b!6920979 () Bool)

(declare-fun e!4165529 () Bool)

(assert (=> b!6920979 (= e!4165529 (= (head!13875 s!14361) (c!1284876 lt!2470090)))))

(declare-fun b!6920980 () Bool)

(declare-fun res!2822071 () Bool)

(declare-fun e!4165526 () Bool)

(assert (=> b!6920980 (=> res!2822071 e!4165526)))

(assert (=> b!6920980 (= res!2822071 (not (is-ElementMatch!16914 lt!2470090)))))

(declare-fun e!4165525 () Bool)

(assert (=> b!6920980 (= e!4165525 e!4165526)))

(declare-fun b!6920981 () Bool)

(declare-fun e!4165528 () Bool)

(assert (=> b!6920981 (= e!4165528 (not (= (head!13875 s!14361) (c!1284876 lt!2470090))))))

(declare-fun b!6920982 () Bool)

(declare-fun e!4165530 () Bool)

(assert (=> b!6920982 (= e!4165530 (nullable!6747 lt!2470090))))

(declare-fun d!2164565 () Bool)

(declare-fun e!4165527 () Bool)

(assert (=> d!2164565 e!4165527))

(declare-fun c!1284977 () Bool)

(assert (=> d!2164565 (= c!1284977 (is-EmptyExpr!16914 lt!2470090))))

(declare-fun lt!2470241 () Bool)

(assert (=> d!2164565 (= lt!2470241 e!4165530)))

(declare-fun c!1284978 () Bool)

(assert (=> d!2164565 (= c!1284978 (isEmpty!38796 s!14361))))

(assert (=> d!2164565 (validRegex!8620 lt!2470090)))

(assert (=> d!2164565 (= (matchR!9053 lt!2470090 s!14361) lt!2470241)))

(declare-fun b!6920983 () Bool)

(declare-fun e!4165531 () Bool)

(assert (=> b!6920983 (= e!4165531 e!4165528)))

(declare-fun res!2822075 () Bool)

(assert (=> b!6920983 (=> res!2822075 e!4165528)))

(declare-fun call!629131 () Bool)

(assert (=> b!6920983 (= res!2822075 call!629131)))

(declare-fun b!6920984 () Bool)

(declare-fun res!2822074 () Bool)

(assert (=> b!6920984 (=> res!2822074 e!4165526)))

(assert (=> b!6920984 (= res!2822074 e!4165529)))

(declare-fun res!2822076 () Bool)

(assert (=> b!6920984 (=> (not res!2822076) (not e!4165529))))

(assert (=> b!6920984 (= res!2822076 lt!2470241)))

(declare-fun b!6920985 () Bool)

(assert (=> b!6920985 (= e!4165527 (= lt!2470241 call!629131))))

(declare-fun b!6920986 () Bool)

(declare-fun res!2822073 () Bool)

(assert (=> b!6920986 (=> (not res!2822073) (not e!4165529))))

(assert (=> b!6920986 (= res!2822073 (not call!629131))))

(declare-fun b!6920987 () Bool)

(declare-fun res!2822070 () Bool)

(assert (=> b!6920987 (=> res!2822070 e!4165528)))

(assert (=> b!6920987 (= res!2822070 (not (isEmpty!38796 (tail!12927 s!14361))))))

(declare-fun b!6920988 () Bool)

(assert (=> b!6920988 (= e!4165527 e!4165525)))

(declare-fun c!1284976 () Bool)

(assert (=> b!6920988 (= c!1284976 (is-EmptyLang!16914 lt!2470090))))

(declare-fun b!6920989 () Bool)

(declare-fun res!2822077 () Bool)

(assert (=> b!6920989 (=> (not res!2822077) (not e!4165529))))

(assert (=> b!6920989 (= res!2822077 (isEmpty!38796 (tail!12927 s!14361)))))

(declare-fun b!6920990 () Bool)

(assert (=> b!6920990 (= e!4165526 e!4165531)))

(declare-fun res!2822072 () Bool)

(assert (=> b!6920990 (=> (not res!2822072) (not e!4165531))))

(assert (=> b!6920990 (= res!2822072 (not lt!2470241))))

(declare-fun bm!629126 () Bool)

(assert (=> bm!629126 (= call!629131 (isEmpty!38796 s!14361))))

(declare-fun b!6920991 () Bool)

(assert (=> b!6920991 (= e!4165525 (not lt!2470241))))

(declare-fun b!6920992 () Bool)

(assert (=> b!6920992 (= e!4165530 (matchR!9053 (derivativeStep!5422 lt!2470090 (head!13875 s!14361)) (tail!12927 s!14361)))))

(assert (= (and d!2164565 c!1284978) b!6920982))

(assert (= (and d!2164565 (not c!1284978)) b!6920992))

(assert (= (and d!2164565 c!1284977) b!6920985))

(assert (= (and d!2164565 (not c!1284977)) b!6920988))

(assert (= (and b!6920988 c!1284976) b!6920991))

(assert (= (and b!6920988 (not c!1284976)) b!6920980))

(assert (= (and b!6920980 (not res!2822071)) b!6920984))

(assert (= (and b!6920984 res!2822076) b!6920986))

(assert (= (and b!6920986 res!2822073) b!6920989))

(assert (= (and b!6920989 res!2822077) b!6920979))

(assert (= (and b!6920984 (not res!2822074)) b!6920990))

(assert (= (and b!6920990 res!2822072) b!6920983))

(assert (= (and b!6920983 (not res!2822075)) b!6920987))

(assert (= (and b!6920987 (not res!2822070)) b!6920981))

(assert (= (or b!6920985 b!6920983 b!6920986) bm!629126))

(assert (=> b!6920989 m!7630856))

(assert (=> b!6920989 m!7630856))

(assert (=> b!6920989 m!7630858))

(assert (=> b!6920992 m!7630860))

(assert (=> b!6920992 m!7630860))

(declare-fun m!7630870 () Bool)

(assert (=> b!6920992 m!7630870))

(assert (=> b!6920992 m!7630856))

(assert (=> b!6920992 m!7630870))

(assert (=> b!6920992 m!7630856))

(declare-fun m!7630872 () Bool)

(assert (=> b!6920992 m!7630872))

(assert (=> d!2164565 m!7630850))

(assert (=> d!2164565 m!7630854))

(assert (=> bm!629126 m!7630850))

(assert (=> b!6920987 m!7630856))

(assert (=> b!6920987 m!7630856))

(assert (=> b!6920987 m!7630858))

(assert (=> b!6920981 m!7630860))

(declare-fun m!7630874 () Bool)

(assert (=> b!6920982 m!7630874))

(assert (=> b!6920979 m!7630860))

(assert (=> b!6920447 d!2164565))

(declare-fun bs!1846942 () Bool)

(declare-fun b!6921003 () Bool)

(assert (= bs!1846942 (and b!6921003 b!6920637)))

(declare-fun lambda!393413 () Int)

(assert (=> bs!1846942 (not (= lambda!393413 lambda!393380))))

(declare-fun bs!1846943 () Bool)

(assert (= bs!1846943 (and b!6921003 b!6920626)))

(assert (=> bs!1846943 (= (and (= s!14361 (_2!37074 lt!2470091)) (= (reg!17243 lt!2470102) (reg!17243 r2!6280)) (= lt!2470102 r2!6280)) (= lambda!393413 lambda!393377))))

(declare-fun bs!1846944 () Bool)

(assert (= bs!1846944 (and b!6921003 d!2164515)))

(assert (=> bs!1846944 (not (= lambda!393413 lambda!393404))))

(declare-fun bs!1846945 () Bool)

(assert (= bs!1846945 (and b!6921003 d!2164553)))

(assert (=> bs!1846945 (not (= lambda!393413 lambda!393407))))

(declare-fun bs!1846946 () Bool)

(assert (= bs!1846946 (and b!6921003 b!6920428)))

(assert (=> bs!1846946 (not (= lambda!393413 lambda!393347))))

(declare-fun bs!1846947 () Bool)

(assert (= bs!1846947 (and b!6921003 d!2164493)))

(assert (=> bs!1846947 (not (= lambda!393413 lambda!393396))))

(declare-fun bs!1846948 () Bool)

(assert (= bs!1846948 (and b!6921003 d!2164509)))

(assert (=> bs!1846948 (not (= lambda!393413 lambda!393403))))

(declare-fun bs!1846949 () Bool)

(assert (= bs!1846949 (and b!6921003 b!6920441)))

(assert (=> bs!1846949 (not (= lambda!393413 lambda!393345))))

(assert (=> bs!1846949 (not (= lambda!393413 lambda!393346))))

(assert (=> bs!1846946 (not (= lambda!393413 lambda!393348))))

(declare-fun bs!1846950 () Bool)

(assert (= bs!1846950 (and b!6921003 b!6920439)))

(assert (=> bs!1846950 (not (= lambda!393413 lambda!393343))))

(declare-fun bs!1846951 () Bool)

(assert (= bs!1846951 (and b!6921003 d!2164545)))

(assert (=> bs!1846951 (not (= lambda!393413 lambda!393406))))

(declare-fun bs!1846952 () Bool)

(assert (= bs!1846952 (and b!6921003 d!2164481)))

(assert (=> bs!1846952 (not (= lambda!393413 lambda!393387))))

(declare-fun bs!1846953 () Bool)

(assert (= bs!1846953 (and b!6921003 b!6920718)))

(assert (=> bs!1846953 (= (and (= s!14361 lt!2470093) (= (reg!17243 lt!2470102) (reg!17243 lt!2470101)) (= lt!2470102 lt!2470101)) (= lambda!393413 lambda!393381))))

(declare-fun bs!1846954 () Bool)

(assert (= bs!1846954 (and b!6921003 b!6920714)))

(assert (=> bs!1846954 (not (= lambda!393413 lambda!393382))))

(declare-fun bs!1846955 () Bool)

(assert (= bs!1846955 (and b!6921003 b!6920622)))

(assert (=> bs!1846955 (not (= lambda!393413 lambda!393378))))

(declare-fun bs!1846956 () Bool)

(assert (= bs!1846956 (and b!6921003 b!6920960)))

(assert (=> bs!1846956 (not (= lambda!393413 lambda!393412))))

(declare-fun bs!1846957 () Bool)

(assert (= bs!1846957 (and b!6921003 b!6920842)))

(assert (=> bs!1846957 (= (and (= s!14361 (_1!37074 lt!2470095)) (= (reg!17243 lt!2470102) (reg!17243 lt!2470108)) (= lt!2470102 lt!2470108)) (= lambda!393413 lambda!393398))))

(assert (=> bs!1846948 (not (= lambda!393413 lambda!393401))))

(declare-fun bs!1846958 () Bool)

(assert (= bs!1846958 (and b!6921003 b!6920964)))

(assert (=> bs!1846958 (= (and (= (reg!17243 lt!2470102) (reg!17243 lt!2470090)) (= lt!2470102 lt!2470090)) (= lambda!393413 lambda!393410))))

(assert (=> bs!1846947 (not (= lambda!393413 lambda!393397))))

(assert (=> bs!1846951 (not (= lambda!393413 lambda!393405))))

(assert (=> bs!1846950 (not (= lambda!393413 lambda!393344))))

(declare-fun bs!1846959 () Bool)

(assert (= bs!1846959 (and b!6921003 b!6920838)))

(assert (=> bs!1846959 (not (= lambda!393413 lambda!393399))))

(declare-fun bs!1846960 () Bool)

(assert (= bs!1846960 (and b!6921003 b!6920641)))

(assert (=> bs!1846960 (= (and (= s!14361 (_1!37074 lt!2470091)) (= (reg!17243 lt!2470102) (reg!17243 r1!6342)) (= lt!2470102 r1!6342)) (= lambda!393413 lambda!393379))))

(assert (=> b!6921003 true))

(assert (=> b!6921003 true))

(declare-fun bs!1846961 () Bool)

(declare-fun b!6920999 () Bool)

(assert (= bs!1846961 (and b!6920999 b!6920637)))

(declare-fun lambda!393414 () Int)

(assert (=> bs!1846961 (= (and (= s!14361 (_1!37074 lt!2470091)) (= (regOne!34340 lt!2470102) (regOne!34340 r1!6342)) (= (regTwo!34340 lt!2470102) (regTwo!34340 r1!6342))) (= lambda!393414 lambda!393380))))

(declare-fun bs!1846962 () Bool)

(assert (= bs!1846962 (and b!6920999 d!2164515)))

(assert (=> bs!1846962 (not (= lambda!393414 lambda!393404))))

(declare-fun bs!1846963 () Bool)

(assert (= bs!1846963 (and b!6920999 d!2164553)))

(assert (=> bs!1846963 (not (= lambda!393414 lambda!393407))))

(declare-fun bs!1846964 () Bool)

(assert (= bs!1846964 (and b!6920999 b!6920428)))

(assert (=> bs!1846964 (not (= lambda!393414 lambda!393347))))

(declare-fun bs!1846965 () Bool)

(assert (= bs!1846965 (and b!6920999 d!2164493)))

(assert (=> bs!1846965 (not (= lambda!393414 lambda!393396))))

(declare-fun bs!1846966 () Bool)

(assert (= bs!1846966 (and b!6920999 d!2164509)))

(assert (=> bs!1846966 (= (and (= (regOne!34340 lt!2470102) lt!2470108) (= (regTwo!34340 lt!2470102) r3!135)) (= lambda!393414 lambda!393403))))

(declare-fun bs!1846967 () Bool)

(assert (= bs!1846967 (and b!6920999 b!6920441)))

(assert (=> bs!1846967 (not (= lambda!393414 lambda!393345))))

(assert (=> bs!1846967 (= (and (= s!14361 (_1!37074 lt!2470095)) (= (regOne!34340 lt!2470102) r1!6342) (= (regTwo!34340 lt!2470102) r2!6280)) (= lambda!393414 lambda!393346))))

(assert (=> bs!1846964 (= (and (= s!14361 lt!2470093) (= (regOne!34340 lt!2470102) r2!6280) (= (regTwo!34340 lt!2470102) r3!135)) (= lambda!393414 lambda!393348))))

(declare-fun bs!1846968 () Bool)

(assert (= bs!1846968 (and b!6920999 b!6920439)))

(assert (=> bs!1846968 (not (= lambda!393414 lambda!393343))))

(declare-fun bs!1846969 () Bool)

(assert (= bs!1846969 (and b!6920999 d!2164545)))

(assert (=> bs!1846969 (= (and (= s!14361 (_1!37074 lt!2470095)) (= (regOne!34340 lt!2470102) r1!6342) (= (regTwo!34340 lt!2470102) r2!6280)) (= lambda!393414 lambda!393406))))

(declare-fun bs!1846970 () Bool)

(assert (= bs!1846970 (and b!6920999 d!2164481)))

(assert (=> bs!1846970 (not (= lambda!393414 lambda!393387))))

(declare-fun bs!1846971 () Bool)

(assert (= bs!1846971 (and b!6920999 b!6920718)))

(assert (=> bs!1846971 (not (= lambda!393414 lambda!393381))))

(declare-fun bs!1846972 () Bool)

(assert (= bs!1846972 (and b!6920999 b!6920714)))

(assert (=> bs!1846972 (= (and (= s!14361 lt!2470093) (= (regOne!34340 lt!2470102) (regOne!34340 lt!2470101)) (= (regTwo!34340 lt!2470102) (regTwo!34340 lt!2470101))) (= lambda!393414 lambda!393382))))

(declare-fun bs!1846973 () Bool)

(assert (= bs!1846973 (and b!6920999 b!6920622)))

(assert (=> bs!1846973 (= (and (= s!14361 (_2!37074 lt!2470091)) (= (regOne!34340 lt!2470102) (regOne!34340 r2!6280)) (= (regTwo!34340 lt!2470102) (regTwo!34340 r2!6280))) (= lambda!393414 lambda!393378))))

(declare-fun bs!1846974 () Bool)

(assert (= bs!1846974 (and b!6920999 b!6920960)))

(assert (=> bs!1846974 (= (and (= (regOne!34340 lt!2470102) (regOne!34340 lt!2470090)) (= (regTwo!34340 lt!2470102) (regTwo!34340 lt!2470090))) (= lambda!393414 lambda!393412))))

(declare-fun bs!1846975 () Bool)

(assert (= bs!1846975 (and b!6920999 b!6920626)))

(assert (=> bs!1846975 (not (= lambda!393414 lambda!393377))))

(declare-fun bs!1846976 () Bool)

(assert (= bs!1846976 (and b!6920999 b!6921003)))

(assert (=> bs!1846976 (not (= lambda!393414 lambda!393413))))

(declare-fun bs!1846977 () Bool)

(assert (= bs!1846977 (and b!6920999 b!6920842)))

(assert (=> bs!1846977 (not (= lambda!393414 lambda!393398))))

(assert (=> bs!1846966 (not (= lambda!393414 lambda!393401))))

(declare-fun bs!1846978 () Bool)

(assert (= bs!1846978 (and b!6920999 b!6920964)))

(assert (=> bs!1846978 (not (= lambda!393414 lambda!393410))))

(assert (=> bs!1846965 (= (and (= s!14361 lt!2470093) (= (regOne!34340 lt!2470102) r2!6280) (= (regTwo!34340 lt!2470102) r3!135)) (= lambda!393414 lambda!393397))))

(assert (=> bs!1846969 (not (= lambda!393414 lambda!393405))))

(assert (=> bs!1846968 (= (and (= (regOne!34340 lt!2470102) lt!2470108) (= (regTwo!34340 lt!2470102) r3!135)) (= lambda!393414 lambda!393344))))

(declare-fun bs!1846979 () Bool)

(assert (= bs!1846979 (and b!6920999 b!6920838)))

(assert (=> bs!1846979 (= (and (= s!14361 (_1!37074 lt!2470095)) (= (regOne!34340 lt!2470102) (regOne!34340 lt!2470108)) (= (regTwo!34340 lt!2470102) (regTwo!34340 lt!2470108))) (= lambda!393414 lambda!393399))))

(declare-fun bs!1846980 () Bool)

(assert (= bs!1846980 (and b!6920999 b!6920641)))

(assert (=> bs!1846980 (not (= lambda!393414 lambda!393379))))

(assert (=> b!6920999 true))

(assert (=> b!6920999 true))

(declare-fun b!6920993 () Bool)

(declare-fun e!4165537 () Bool)

(assert (=> b!6920993 (= e!4165537 (= s!14361 (Cons!66543 (c!1284876 lt!2470102) Nil!66543)))))

(declare-fun b!6920994 () Bool)

(declare-fun e!4165535 () Bool)

(declare-fun e!4165533 () Bool)

(assert (=> b!6920994 (= e!4165535 e!4165533)))

(declare-fun res!2822080 () Bool)

(assert (=> b!6920994 (= res!2822080 (not (is-EmptyLang!16914 lt!2470102)))))

(assert (=> b!6920994 (=> (not res!2822080) (not e!4165533))))

(declare-fun d!2164567 () Bool)

(declare-fun c!1284982 () Bool)

(assert (=> d!2164567 (= c!1284982 (is-EmptyExpr!16914 lt!2470102))))

(assert (=> d!2164567 (= (matchRSpec!3971 lt!2470102 s!14361) e!4165535)))

(declare-fun b!6920995 () Bool)

(declare-fun e!4165536 () Bool)

(declare-fun e!4165532 () Bool)

(assert (=> b!6920995 (= e!4165536 e!4165532)))

(declare-fun c!1284980 () Bool)

(assert (=> b!6920995 (= c!1284980 (is-Star!16914 lt!2470102))))

(declare-fun call!629133 () Bool)

(declare-fun bm!629127 () Bool)

(assert (=> bm!629127 (= call!629133 (Exists!3916 (ite c!1284980 lambda!393413 lambda!393414)))))

(declare-fun b!6920996 () Bool)

(declare-fun c!1284981 () Bool)

(assert (=> b!6920996 (= c!1284981 (is-ElementMatch!16914 lt!2470102))))

(assert (=> b!6920996 (= e!4165533 e!4165537)))

(declare-fun b!6920997 () Bool)

(declare-fun call!629132 () Bool)

(assert (=> b!6920997 (= e!4165535 call!629132)))

(declare-fun b!6920998 () Bool)

(declare-fun res!2822078 () Bool)

(declare-fun e!4165534 () Bool)

(assert (=> b!6920998 (=> res!2822078 e!4165534)))

(assert (=> b!6920998 (= res!2822078 call!629132)))

(assert (=> b!6920998 (= e!4165532 e!4165534)))

(assert (=> b!6920999 (= e!4165532 call!629133)))

(declare-fun b!6921000 () Bool)

(declare-fun c!1284979 () Bool)

(assert (=> b!6921000 (= c!1284979 (is-Union!16914 lt!2470102))))

(assert (=> b!6921000 (= e!4165537 e!4165536)))

(declare-fun b!6921001 () Bool)

(declare-fun e!4165538 () Bool)

(assert (=> b!6921001 (= e!4165538 (matchRSpec!3971 (regTwo!34341 lt!2470102) s!14361))))

(declare-fun b!6921002 () Bool)

(assert (=> b!6921002 (= e!4165536 e!4165538)))

(declare-fun res!2822079 () Bool)

(assert (=> b!6921002 (= res!2822079 (matchRSpec!3971 (regOne!34341 lt!2470102) s!14361))))

(assert (=> b!6921002 (=> res!2822079 e!4165538)))

(assert (=> b!6921003 (= e!4165534 call!629133)))

(declare-fun bm!629128 () Bool)

(assert (=> bm!629128 (= call!629132 (isEmpty!38796 s!14361))))

(assert (= (and d!2164567 c!1284982) b!6920997))

(assert (= (and d!2164567 (not c!1284982)) b!6920994))

(assert (= (and b!6920994 res!2822080) b!6920996))

(assert (= (and b!6920996 c!1284981) b!6920993))

(assert (= (and b!6920996 (not c!1284981)) b!6921000))

(assert (= (and b!6921000 c!1284979) b!6921002))

(assert (= (and b!6921000 (not c!1284979)) b!6920995))

(assert (= (and b!6921002 (not res!2822079)) b!6921001))

(assert (= (and b!6920995 c!1284980) b!6920998))

(assert (= (and b!6920995 (not c!1284980)) b!6920999))

(assert (= (and b!6920998 (not res!2822078)) b!6921003))

(assert (= (or b!6921003 b!6920999) bm!629127))

(assert (= (or b!6920997 b!6920998) bm!629128))

(declare-fun m!7630876 () Bool)

(assert (=> bm!629127 m!7630876))

(declare-fun m!7630878 () Bool)

(assert (=> b!6921001 m!7630878))

(declare-fun m!7630880 () Bool)

(assert (=> b!6921002 m!7630880))

(assert (=> bm!629128 m!7630850))

(assert (=> b!6920447 d!2164567))

(declare-fun d!2164569 () Bool)

(assert (=> d!2164569 (= (matchR!9053 lt!2470102 s!14361) (matchRSpec!3971 lt!2470102 s!14361))))

(declare-fun lt!2470244 () Unit!160552)

(assert (=> d!2164569 (= lt!2470244 (choose!51526 lt!2470102 s!14361))))

(assert (=> d!2164569 (validRegex!8620 lt!2470102)))

(assert (=> d!2164569 (= (mainMatchTheorem!3971 lt!2470102 s!14361) lt!2470244)))

(declare-fun bs!1846981 () Bool)

(assert (= bs!1846981 d!2164569))

(assert (=> bs!1846981 m!7630296))

(assert (=> bs!1846981 m!7630306))

(declare-fun m!7630882 () Bool)

(assert (=> bs!1846981 m!7630882))

(assert (=> bs!1846981 m!7630866))

(assert (=> b!6920447 d!2164569))

(declare-fun b!6921020 () Bool)

(declare-fun e!4165543 () Bool)

(declare-fun tp!1907631 () Bool)

(assert (=> b!6921020 (= e!4165543 tp!1907631)))

(declare-fun b!6921018 () Bool)

(assert (=> b!6921018 (= e!4165543 tp_is_empty!43053)))

(assert (=> b!6920437 (= tp!1907564 e!4165543)))

(declare-fun b!6921021 () Bool)

(declare-fun tp!1907633 () Bool)

(declare-fun tp!1907634 () Bool)

(assert (=> b!6921021 (= e!4165543 (and tp!1907633 tp!1907634))))

(declare-fun b!6921019 () Bool)

(declare-fun tp!1907630 () Bool)

(declare-fun tp!1907632 () Bool)

(assert (=> b!6921019 (= e!4165543 (and tp!1907630 tp!1907632))))

(assert (= (and b!6920437 (is-ElementMatch!16914 (regOne!34340 r1!6342))) b!6921018))

(assert (= (and b!6920437 (is-Concat!25759 (regOne!34340 r1!6342))) b!6921019))

(assert (= (and b!6920437 (is-Star!16914 (regOne!34340 r1!6342))) b!6921020))

(assert (= (and b!6920437 (is-Union!16914 (regOne!34340 r1!6342))) b!6921021))

(declare-fun b!6921024 () Bool)

(declare-fun e!4165544 () Bool)

(declare-fun tp!1907636 () Bool)

(assert (=> b!6921024 (= e!4165544 tp!1907636)))

(declare-fun b!6921022 () Bool)

(assert (=> b!6921022 (= e!4165544 tp_is_empty!43053)))

(assert (=> b!6920437 (= tp!1907569 e!4165544)))

(declare-fun b!6921025 () Bool)

(declare-fun tp!1907638 () Bool)

(declare-fun tp!1907639 () Bool)

(assert (=> b!6921025 (= e!4165544 (and tp!1907638 tp!1907639))))

(declare-fun b!6921023 () Bool)

(declare-fun tp!1907635 () Bool)

(declare-fun tp!1907637 () Bool)

(assert (=> b!6921023 (= e!4165544 (and tp!1907635 tp!1907637))))

(assert (= (and b!6920437 (is-ElementMatch!16914 (regTwo!34340 r1!6342))) b!6921022))

(assert (= (and b!6920437 (is-Concat!25759 (regTwo!34340 r1!6342))) b!6921023))

(assert (= (and b!6920437 (is-Star!16914 (regTwo!34340 r1!6342))) b!6921024))

(assert (= (and b!6920437 (is-Union!16914 (regTwo!34340 r1!6342))) b!6921025))

(declare-fun b!6921028 () Bool)

(declare-fun e!4165545 () Bool)

(declare-fun tp!1907641 () Bool)

(assert (=> b!6921028 (= e!4165545 tp!1907641)))

(declare-fun b!6921026 () Bool)

(assert (=> b!6921026 (= e!4165545 tp_is_empty!43053)))

(assert (=> b!6920432 (= tp!1907568 e!4165545)))

(declare-fun b!6921029 () Bool)

(declare-fun tp!1907643 () Bool)

(declare-fun tp!1907644 () Bool)

(assert (=> b!6921029 (= e!4165545 (and tp!1907643 tp!1907644))))

(declare-fun b!6921027 () Bool)

(declare-fun tp!1907640 () Bool)

(declare-fun tp!1907642 () Bool)

(assert (=> b!6921027 (= e!4165545 (and tp!1907640 tp!1907642))))

(assert (= (and b!6920432 (is-ElementMatch!16914 (reg!17243 r2!6280))) b!6921026))

(assert (= (and b!6920432 (is-Concat!25759 (reg!17243 r2!6280))) b!6921027))

(assert (= (and b!6920432 (is-Star!16914 (reg!17243 r2!6280))) b!6921028))

(assert (= (and b!6920432 (is-Union!16914 (reg!17243 r2!6280))) b!6921029))

(declare-fun b!6921032 () Bool)

(declare-fun e!4165548 () Bool)

(declare-fun tp!1907646 () Bool)

(assert (=> b!6921032 (= e!4165548 tp!1907646)))

(declare-fun b!6921030 () Bool)

(assert (=> b!6921030 (= e!4165548 tp_is_empty!43053)))

(assert (=> b!6920433 (= tp!1907560 e!4165548)))

(declare-fun b!6921033 () Bool)

(declare-fun tp!1907648 () Bool)

(declare-fun tp!1907649 () Bool)

(assert (=> b!6921033 (= e!4165548 (and tp!1907648 tp!1907649))))

(declare-fun b!6921031 () Bool)

(declare-fun tp!1907645 () Bool)

(declare-fun tp!1907647 () Bool)

(assert (=> b!6921031 (= e!4165548 (and tp!1907645 tp!1907647))))

(assert (= (and b!6920433 (is-ElementMatch!16914 (reg!17243 r3!135))) b!6921030))

(assert (= (and b!6920433 (is-Concat!25759 (reg!17243 r3!135))) b!6921031))

(assert (= (and b!6920433 (is-Star!16914 (reg!17243 r3!135))) b!6921032))

(assert (= (and b!6920433 (is-Union!16914 (reg!17243 r3!135))) b!6921033))

(declare-fun b!6921040 () Bool)

(declare-fun e!4165549 () Bool)

(declare-fun tp!1907651 () Bool)

(assert (=> b!6921040 (= e!4165549 tp!1907651)))

(declare-fun b!6921038 () Bool)

(assert (=> b!6921038 (= e!4165549 tp_is_empty!43053)))

(assert (=> b!6920450 (= tp!1907556 e!4165549)))

(declare-fun b!6921041 () Bool)

(declare-fun tp!1907653 () Bool)

(declare-fun tp!1907654 () Bool)

(assert (=> b!6921041 (= e!4165549 (and tp!1907653 tp!1907654))))

(declare-fun b!6921039 () Bool)

(declare-fun tp!1907650 () Bool)

(declare-fun tp!1907652 () Bool)

(assert (=> b!6921039 (= e!4165549 (and tp!1907650 tp!1907652))))

(assert (= (and b!6920450 (is-ElementMatch!16914 (regOne!34340 r2!6280))) b!6921038))

(assert (= (and b!6920450 (is-Concat!25759 (regOne!34340 r2!6280))) b!6921039))

(assert (= (and b!6920450 (is-Star!16914 (regOne!34340 r2!6280))) b!6921040))

(assert (= (and b!6920450 (is-Union!16914 (regOne!34340 r2!6280))) b!6921041))

(declare-fun b!6921044 () Bool)

(declare-fun e!4165550 () Bool)

(declare-fun tp!1907656 () Bool)

(assert (=> b!6921044 (= e!4165550 tp!1907656)))

(declare-fun b!6921042 () Bool)

(assert (=> b!6921042 (= e!4165550 tp_is_empty!43053)))

(assert (=> b!6920450 (= tp!1907567 e!4165550)))

(declare-fun b!6921045 () Bool)

(declare-fun tp!1907658 () Bool)

(declare-fun tp!1907659 () Bool)

(assert (=> b!6921045 (= e!4165550 (and tp!1907658 tp!1907659))))

(declare-fun b!6921043 () Bool)

(declare-fun tp!1907655 () Bool)

(declare-fun tp!1907657 () Bool)

(assert (=> b!6921043 (= e!4165550 (and tp!1907655 tp!1907657))))

(assert (= (and b!6920450 (is-ElementMatch!16914 (regTwo!34340 r2!6280))) b!6921042))

(assert (= (and b!6920450 (is-Concat!25759 (regTwo!34340 r2!6280))) b!6921043))

(assert (= (and b!6920450 (is-Star!16914 (regTwo!34340 r2!6280))) b!6921044))

(assert (= (and b!6920450 (is-Union!16914 (regTwo!34340 r2!6280))) b!6921045))

(declare-fun b!6921048 () Bool)

(declare-fun e!4165551 () Bool)

(declare-fun tp!1907661 () Bool)

(assert (=> b!6921048 (= e!4165551 tp!1907661)))

(declare-fun b!6921046 () Bool)

(assert (=> b!6921046 (= e!4165551 tp_is_empty!43053)))

(assert (=> b!6920445 (= tp!1907557 e!4165551)))

(declare-fun b!6921049 () Bool)

(declare-fun tp!1907663 () Bool)

(declare-fun tp!1907664 () Bool)

(assert (=> b!6921049 (= e!4165551 (and tp!1907663 tp!1907664))))

(declare-fun b!6921047 () Bool)

(declare-fun tp!1907660 () Bool)

(declare-fun tp!1907662 () Bool)

(assert (=> b!6921047 (= e!4165551 (and tp!1907660 tp!1907662))))

(assert (= (and b!6920445 (is-ElementMatch!16914 (regOne!34341 r2!6280))) b!6921046))

(assert (= (and b!6920445 (is-Concat!25759 (regOne!34341 r2!6280))) b!6921047))

(assert (= (and b!6920445 (is-Star!16914 (regOne!34341 r2!6280))) b!6921048))

(assert (= (and b!6920445 (is-Union!16914 (regOne!34341 r2!6280))) b!6921049))

(declare-fun b!6921052 () Bool)

(declare-fun e!4165552 () Bool)

(declare-fun tp!1907666 () Bool)

(assert (=> b!6921052 (= e!4165552 tp!1907666)))

(declare-fun b!6921050 () Bool)

(assert (=> b!6921050 (= e!4165552 tp_is_empty!43053)))

(assert (=> b!6920445 (= tp!1907563 e!4165552)))

(declare-fun b!6921053 () Bool)

(declare-fun tp!1907668 () Bool)

(declare-fun tp!1907669 () Bool)

(assert (=> b!6921053 (= e!4165552 (and tp!1907668 tp!1907669))))

(declare-fun b!6921051 () Bool)

(declare-fun tp!1907665 () Bool)

(declare-fun tp!1907667 () Bool)

(assert (=> b!6921051 (= e!4165552 (and tp!1907665 tp!1907667))))

(assert (= (and b!6920445 (is-ElementMatch!16914 (regTwo!34341 r2!6280))) b!6921050))

(assert (= (and b!6920445 (is-Concat!25759 (regTwo!34341 r2!6280))) b!6921051))

(assert (= (and b!6920445 (is-Star!16914 (regTwo!34341 r2!6280))) b!6921052))

(assert (= (and b!6920445 (is-Union!16914 (regTwo!34341 r2!6280))) b!6921053))

(declare-fun b!6921056 () Bool)

(declare-fun e!4165553 () Bool)

(declare-fun tp!1907671 () Bool)

(assert (=> b!6921056 (= e!4165553 tp!1907671)))

(declare-fun b!6921054 () Bool)

(assert (=> b!6921054 (= e!4165553 tp_is_empty!43053)))

(assert (=> b!6920429 (= tp!1907561 e!4165553)))

(declare-fun b!6921057 () Bool)

(declare-fun tp!1907673 () Bool)

(declare-fun tp!1907674 () Bool)

(assert (=> b!6921057 (= e!4165553 (and tp!1907673 tp!1907674))))

(declare-fun b!6921055 () Bool)

(declare-fun tp!1907670 () Bool)

(declare-fun tp!1907672 () Bool)

(assert (=> b!6921055 (= e!4165553 (and tp!1907670 tp!1907672))))

(assert (= (and b!6920429 (is-ElementMatch!16914 (regOne!34340 r3!135))) b!6921054))

(assert (= (and b!6920429 (is-Concat!25759 (regOne!34340 r3!135))) b!6921055))

(assert (= (and b!6920429 (is-Star!16914 (regOne!34340 r3!135))) b!6921056))

(assert (= (and b!6920429 (is-Union!16914 (regOne!34340 r3!135))) b!6921057))

(declare-fun b!6921060 () Bool)

(declare-fun e!4165554 () Bool)

(declare-fun tp!1907676 () Bool)

(assert (=> b!6921060 (= e!4165554 tp!1907676)))

(declare-fun b!6921058 () Bool)

(assert (=> b!6921058 (= e!4165554 tp_is_empty!43053)))

(assert (=> b!6920429 (= tp!1907559 e!4165554)))

(declare-fun b!6921061 () Bool)

(declare-fun tp!1907678 () Bool)

(declare-fun tp!1907679 () Bool)

(assert (=> b!6921061 (= e!4165554 (and tp!1907678 tp!1907679))))

(declare-fun b!6921059 () Bool)

(declare-fun tp!1907675 () Bool)

(declare-fun tp!1907677 () Bool)

(assert (=> b!6921059 (= e!4165554 (and tp!1907675 tp!1907677))))

(assert (= (and b!6920429 (is-ElementMatch!16914 (regTwo!34340 r3!135))) b!6921058))

(assert (= (and b!6920429 (is-Concat!25759 (regTwo!34340 r3!135))) b!6921059))

(assert (= (and b!6920429 (is-Star!16914 (regTwo!34340 r3!135))) b!6921060))

(assert (= (and b!6920429 (is-Union!16914 (regTwo!34340 r3!135))) b!6921061))

(declare-fun b!6921064 () Bool)

(declare-fun e!4165555 () Bool)

(declare-fun tp!1907681 () Bool)

(assert (=> b!6921064 (= e!4165555 tp!1907681)))

(declare-fun b!6921062 () Bool)

(assert (=> b!6921062 (= e!4165555 tp_is_empty!43053)))

(assert (=> b!6920435 (= tp!1907558 e!4165555)))

(declare-fun b!6921065 () Bool)

(declare-fun tp!1907683 () Bool)

(declare-fun tp!1907684 () Bool)

(assert (=> b!6921065 (= e!4165555 (and tp!1907683 tp!1907684))))

(declare-fun b!6921063 () Bool)

(declare-fun tp!1907680 () Bool)

(declare-fun tp!1907682 () Bool)

(assert (=> b!6921063 (= e!4165555 (and tp!1907680 tp!1907682))))

(assert (= (and b!6920435 (is-ElementMatch!16914 (regOne!34341 r3!135))) b!6921062))

(assert (= (and b!6920435 (is-Concat!25759 (regOne!34341 r3!135))) b!6921063))

(assert (= (and b!6920435 (is-Star!16914 (regOne!34341 r3!135))) b!6921064))

(assert (= (and b!6920435 (is-Union!16914 (regOne!34341 r3!135))) b!6921065))

(declare-fun b!6921068 () Bool)

(declare-fun e!4165556 () Bool)

(declare-fun tp!1907686 () Bool)

(assert (=> b!6921068 (= e!4165556 tp!1907686)))

(declare-fun b!6921066 () Bool)

(assert (=> b!6921066 (= e!4165556 tp_is_empty!43053)))

(assert (=> b!6920435 (= tp!1907562 e!4165556)))

(declare-fun b!6921069 () Bool)

(declare-fun tp!1907688 () Bool)

(declare-fun tp!1907689 () Bool)

(assert (=> b!6921069 (= e!4165556 (and tp!1907688 tp!1907689))))

(declare-fun b!6921067 () Bool)

(declare-fun tp!1907685 () Bool)

(declare-fun tp!1907687 () Bool)

(assert (=> b!6921067 (= e!4165556 (and tp!1907685 tp!1907687))))

(assert (= (and b!6920435 (is-ElementMatch!16914 (regTwo!34341 r3!135))) b!6921066))

(assert (= (and b!6920435 (is-Concat!25759 (regTwo!34341 r3!135))) b!6921067))

(assert (= (and b!6920435 (is-Star!16914 (regTwo!34341 r3!135))) b!6921068))

(assert (= (and b!6920435 (is-Union!16914 (regTwo!34341 r3!135))) b!6921069))

(declare-fun b!6921072 () Bool)

(declare-fun e!4165557 () Bool)

(declare-fun tp!1907691 () Bool)

(assert (=> b!6921072 (= e!4165557 tp!1907691)))

(declare-fun b!6921070 () Bool)

(assert (=> b!6921070 (= e!4165557 tp_is_empty!43053)))

(assert (=> b!6920446 (= tp!1907571 e!4165557)))

(declare-fun b!6921073 () Bool)

(declare-fun tp!1907693 () Bool)

(declare-fun tp!1907694 () Bool)

(assert (=> b!6921073 (= e!4165557 (and tp!1907693 tp!1907694))))

(declare-fun b!6921071 () Bool)

(declare-fun tp!1907690 () Bool)

(declare-fun tp!1907692 () Bool)

(assert (=> b!6921071 (= e!4165557 (and tp!1907690 tp!1907692))))

(assert (= (and b!6920446 (is-ElementMatch!16914 (reg!17243 r1!6342))) b!6921070))

(assert (= (and b!6920446 (is-Concat!25759 (reg!17243 r1!6342))) b!6921071))

(assert (= (and b!6920446 (is-Star!16914 (reg!17243 r1!6342))) b!6921072))

(assert (= (and b!6920446 (is-Union!16914 (reg!17243 r1!6342))) b!6921073))

(declare-fun b!6921078 () Bool)

(declare-fun e!4165560 () Bool)

(declare-fun tp!1907697 () Bool)

(assert (=> b!6921078 (= e!4165560 (and tp_is_empty!43053 tp!1907697))))

(assert (=> b!6920430 (= tp!1907566 e!4165560)))

(assert (= (and b!6920430 (is-Cons!66543 (t!380410 s!14361))) b!6921078))

(declare-fun b!6921081 () Bool)

(declare-fun e!4165561 () Bool)

(declare-fun tp!1907699 () Bool)

(assert (=> b!6921081 (= e!4165561 tp!1907699)))

(declare-fun b!6921079 () Bool)

(assert (=> b!6921079 (= e!4165561 tp_is_empty!43053)))

(assert (=> b!6920431 (= tp!1907570 e!4165561)))

(declare-fun b!6921082 () Bool)

(declare-fun tp!1907701 () Bool)

(declare-fun tp!1907702 () Bool)

(assert (=> b!6921082 (= e!4165561 (and tp!1907701 tp!1907702))))

(declare-fun b!6921080 () Bool)

(declare-fun tp!1907698 () Bool)

(declare-fun tp!1907700 () Bool)

(assert (=> b!6921080 (= e!4165561 (and tp!1907698 tp!1907700))))

(assert (= (and b!6920431 (is-ElementMatch!16914 (regOne!34341 r1!6342))) b!6921079))

(assert (= (and b!6920431 (is-Concat!25759 (regOne!34341 r1!6342))) b!6921080))

(assert (= (and b!6920431 (is-Star!16914 (regOne!34341 r1!6342))) b!6921081))

(assert (= (and b!6920431 (is-Union!16914 (regOne!34341 r1!6342))) b!6921082))

(declare-fun b!6921085 () Bool)

(declare-fun e!4165562 () Bool)

(declare-fun tp!1907704 () Bool)

(assert (=> b!6921085 (= e!4165562 tp!1907704)))

(declare-fun b!6921083 () Bool)

(assert (=> b!6921083 (= e!4165562 tp_is_empty!43053)))

(assert (=> b!6920431 (= tp!1907565 e!4165562)))

(declare-fun b!6921086 () Bool)

(declare-fun tp!1907706 () Bool)

(declare-fun tp!1907707 () Bool)

(assert (=> b!6921086 (= e!4165562 (and tp!1907706 tp!1907707))))

(declare-fun b!6921084 () Bool)

(declare-fun tp!1907703 () Bool)

(declare-fun tp!1907705 () Bool)

(assert (=> b!6921084 (= e!4165562 (and tp!1907703 tp!1907705))))

(assert (= (and b!6920431 (is-ElementMatch!16914 (regTwo!34341 r1!6342))) b!6921083))

(assert (= (and b!6920431 (is-Concat!25759 (regTwo!34341 r1!6342))) b!6921084))

(assert (= (and b!6920431 (is-Star!16914 (regTwo!34341 r1!6342))) b!6921085))

(assert (= (and b!6920431 (is-Union!16914 (regTwo!34341 r1!6342))) b!6921086))

(push 1)

(assert (not b!6920861))

(assert (not b!6920819))

(assert (not bm!629124))

(assert (not b!6920877))

(assert (not b!6921025))

(assert (not d!2164547))

(assert (not b!6921080))

(assert (not b!6920883))

(assert (not d!2164541))

(assert (not b!6920821))

(assert (not b!6920940))

(assert (not d!2164525))

(assert (not bm!629095))

(assert (not b!6920926))

(assert (not b!6920624))

(assert (not b!6921061))

(assert (not d!2164507))

(assert (not b!6920965))

(assert (not b!6921023))

(assert (not b!6921039))

(assert (not b!6920962))

(assert (not b!6920891))

(assert (not bm!629087))

(assert (not b!6920578))

(assert (not b!6921064))

(assert (not b!6920639))

(assert (not b!6920975))

(assert (not b!6920914))

(assert (not bm!629128))

(assert (not d!2164509))

(assert (not b!6921045))

(assert (not b!6920963))

(assert (not b!6920935))

(assert (not bm!629085))

(assert (not d!2164511))

(assert (not b!6920840))

(assert (not b!6921085))

(assert (not b!6920948))

(assert (not b!6921031))

(assert (not b!6920881))

(assert (not b!6920817))

(assert (not b!6920933))

(assert (not b!6920629))

(assert (not b!6921001))

(assert (not b!6921067))

(assert (not b!6920703))

(assert (not bm!629106))

(assert (not b!6920928))

(assert (not b!6921028))

(assert (not d!2164485))

(assert (not d!2164553))

(assert (not b!6921082))

(assert (not b!6921049))

(assert (not b!6920973))

(assert (not b!6920989))

(assert (not b!6920917))

(assert (not d!2164471))

(assert (not b!6920841))

(assert (not bm!629098))

(assert (not bm!629096))

(assert (not d!2164483))

(assert (not d!2164465))

(assert (not d!2164461))

(assert (not b!6921081))

(assert (not b!6921033))

(assert (not b!6920992))

(assert (not bm!629123))

(assert (not b!6921029))

(assert (not bm!629099))

(assert (not d!2164455))

(assert (not b!6920716))

(assert (not bm!629118))

(assert (not d!2164491))

(assert (not b!6920791))

(assert (not b!6920979))

(assert (not b!6920873))

(assert (not b!6920879))

(assert (not bm!629109))

(assert (not b!6921040))

(assert (not b!6920931))

(assert (not b!6920866))

(assert (not d!2164479))

(assert (not b!6921071))

(assert (not b!6920987))

(assert (not d!2164481))

(assert (not bm!629115))

(assert (not b!6920912))

(assert (not b!6920921))

(assert (not bm!629088))

(assert (not bm!629110))

(assert (not b!6920581))

(assert (not d!2164563))

(assert (not b!6921063))

(assert (not b!6921024))

(assert (not b!6920884))

(assert (not b!6920907))

(assert (not b!6920968))

(assert (not b!6920920))

(assert (not d!2164521))

(assert (not bm!629114))

(assert (not d!2164453))

(assert (not d!2164537))

(assert (not b!6920868))

(assert (not b!6920700))

(assert (not bm!629127))

(assert (not bm!629119))

(assert (not b!6921051))

(assert (not b!6921053))

(assert (not d!2164531))

(assert (not b!6921073))

(assert (not b!6920967))

(assert (not b!6920904))

(assert (not b!6920939))

(assert (not b!6920663))

(assert (not b!6921072))

(assert (not b!6921021))

(assert (not d!2164515))

(assert (not b!6921059))

(assert (not b!6921055))

(assert (not d!2164457))

(assert (not b!6920981))

(assert (not b!6921084))

(assert (not b!6921068))

(assert (not b!6920876))

(assert (not d!2164513))

(assert (not b!6920625))

(assert (not bm!629125))

(assert (not b!6921047))

(assert (not d!2164477))

(assert (not b!6920937))

(assert (not b!6921078))

(assert (not bm!629113))

(assert (not b!6920582))

(assert (not d!2164561))

(assert (not b!6921044))

(assert (not b!6920818))

(assert (not b!6921002))

(assert (not d!2164487))

(assert (not b!6920871))

(assert (not d!2164493))

(assert (not b!6921057))

(assert (not b!6920786))

(assert (not b!6920860))

(assert (not b!6921048))

(assert (not b!6920785))

(assert (not b!6920783))

(assert (not b!6920717))

(assert (not b!6921069))

(assert (not b!6921020))

(assert (not b!6921032))

(assert (not b!6920706))

(assert (not b!6920628))

(assert (not b!6920889))

(assert (not b!6920894))

(assert (not b!6921027))

(assert (not b!6921086))

(assert (not bm!629121))

(assert (not b!6920822))

(assert (not b!6920936))

(assert (not bm!629116))

(assert (not bm!629126))

(assert (not d!2164543))

(assert (not d!2164565))

(assert (not d!2164551))

(assert (not b!6920858))

(assert (not b!6920793))

(assert (not b!6921052))

(assert (not b!6920577))

(assert (not b!6921065))

(assert (not b!6920898))

(assert (not b!6920640))

(assert (not b!6920880))

(assert (not b!6920707))

(assert (not b!6920918))

(assert (not b!6920704))

(assert (not b!6920982))

(assert (not d!2164545))

(assert (not b!6920906))

(assert (not d!2164497))

(assert (not b!6921043))

(assert (not b!6920875))

(assert (not b!6920978))

(assert (not b!6921056))

(assert (not b!6921041))

(assert (not d!2164569))

(assert (not b!6921060))

(assert (not d!2164549))

(assert (not b!6920702))

(assert tp_is_empty!43053)

(assert (not b!6921019))

(assert (not bm!629120))

(assert (not b!6920796))

(assert (not bm!629086))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

