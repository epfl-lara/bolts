; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!665540 () Bool)

(assert start!665540)

(declare-fun b!6919355 () Bool)

(assert (=> b!6919355 true))

(assert (=> b!6919355 true))

(assert (=> b!6919355 true))

(declare-fun lambda!393234 () Int)

(declare-fun lambda!393233 () Int)

(assert (=> b!6919355 (not (= lambda!393234 lambda!393233))))

(assert (=> b!6919355 true))

(assert (=> b!6919355 true))

(assert (=> b!6919355 true))

(declare-fun bs!1846252 () Bool)

(declare-fun b!6919352 () Bool)

(assert (= bs!1846252 (and b!6919352 b!6919355)))

(declare-datatypes ((C!34094 0))(
  ( (C!34095 (val!26749 Int)) )
))
(declare-datatypes ((Regex!16912 0))(
  ( (ElementMatch!16912 (c!1284706 C!34094)) (Concat!25757 (regOne!34336 Regex!16912) (regTwo!34336 Regex!16912)) (EmptyExpr!16912) (Star!16912 (reg!17241 Regex!16912)) (EmptyLang!16912) (Union!16912 (regOne!34337 Regex!16912) (regTwo!34337 Regex!16912)) )
))
(declare-fun r1!6342 () Regex!16912)

(declare-fun r3!135 () Regex!16912)

(declare-datatypes ((List!66665 0))(
  ( (Nil!66541) (Cons!66541 (h!72989 C!34094) (t!380408 List!66665)) )
))
(declare-datatypes ((tuple2!67538 0))(
  ( (tuple2!67539 (_1!37072 List!66665) (_2!37072 List!66665)) )
))
(declare-fun lt!2469871 () tuple2!67538)

(declare-fun s!14361 () List!66665)

(declare-fun lambda!393235 () Int)

(declare-fun r2!6280 () Regex!16912)

(declare-fun lt!2469857 () Regex!16912)

(assert (=> bs!1846252 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393235 lambda!393233))))

(assert (=> bs!1846252 (not (= lambda!393235 lambda!393234))))

(assert (=> b!6919352 true))

(assert (=> b!6919352 true))

(assert (=> b!6919352 true))

(declare-fun lambda!393236 () Int)

(assert (=> bs!1846252 (not (= lambda!393236 lambda!393233))))

(assert (=> bs!1846252 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393236 lambda!393234))))

(assert (=> b!6919352 (not (= lambda!393236 lambda!393235))))

(assert (=> b!6919352 true))

(assert (=> b!6919352 true))

(assert (=> b!6919352 true))

(declare-fun bs!1846253 () Bool)

(declare-fun b!6919356 () Bool)

(assert (= bs!1846253 (and b!6919356 b!6919355)))

(declare-fun lambda!393237 () Int)

(declare-fun lt!2469872 () List!66665)

(assert (=> bs!1846253 (= (and (= lt!2469872 s!14361) (= r2!6280 lt!2469857)) (= lambda!393237 lambda!393233))))

(assert (=> bs!1846253 (not (= lambda!393237 lambda!393234))))

(declare-fun bs!1846254 () Bool)

(assert (= bs!1846254 (and b!6919356 b!6919352)))

(assert (=> bs!1846254 (= (and (= lt!2469872 (_1!37072 lt!2469871)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393237 lambda!393235))))

(assert (=> bs!1846254 (not (= lambda!393237 lambda!393236))))

(assert (=> b!6919356 true))

(assert (=> b!6919356 true))

(assert (=> b!6919356 true))

(declare-fun lambda!393238 () Int)

(assert (=> bs!1846254 (not (= lambda!393238 lambda!393235))))

(assert (=> bs!1846253 (not (= lambda!393238 lambda!393233))))

(assert (=> bs!1846254 (= (and (= lt!2469872 (_1!37072 lt!2469871)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393238 lambda!393236))))

(assert (=> b!6919356 (not (= lambda!393238 lambda!393237))))

(assert (=> bs!1846253 (= (and (= lt!2469872 s!14361) (= r2!6280 lt!2469857)) (= lambda!393238 lambda!393234))))

(assert (=> b!6919356 true))

(assert (=> b!6919356 true))

(assert (=> b!6919356 true))

(declare-fun b!6919344 () Bool)

(declare-fun res!2821277 () Bool)

(declare-fun e!4164685 () Bool)

(assert (=> b!6919344 (=> res!2821277 e!4164685)))

(declare-fun matchR!9051 (Regex!16912 List!66665) Bool)

(assert (=> b!6919344 (= res!2821277 (not (matchR!9051 r3!135 (_2!37072 lt!2469871))))))

(declare-fun b!6919345 () Bool)

(declare-fun e!4164689 () Bool)

(declare-fun tp_is_empty!43049 () Bool)

(assert (=> b!6919345 (= e!4164689 tp_is_empty!43049)))

(declare-fun b!6919346 () Bool)

(declare-fun e!4164686 () Bool)

(declare-fun tp!1907284 () Bool)

(declare-fun tp!1907290 () Bool)

(assert (=> b!6919346 (= e!4164686 (and tp!1907284 tp!1907290))))

(declare-fun b!6919347 () Bool)

(declare-fun res!2821275 () Bool)

(declare-fun e!4164682 () Bool)

(assert (=> b!6919347 (=> (not res!2821275) (not e!4164682))))

(declare-fun validRegex!8618 (Regex!16912) Bool)

(assert (=> b!6919347 (= res!2821275 (validRegex!8618 r2!6280))))

(declare-fun b!6919348 () Bool)

(declare-fun e!4164683 () Bool)

(declare-fun tp!1907296 () Bool)

(declare-fun tp!1907289 () Bool)

(assert (=> b!6919348 (= e!4164683 (and tp!1907296 tp!1907289))))

(declare-fun b!6919349 () Bool)

(assert (=> b!6919349 (= e!4164683 tp_is_empty!43049)))

(declare-fun b!6919350 () Bool)

(declare-fun tp!1907297 () Bool)

(assert (=> b!6919350 (= e!4164689 tp!1907297)))

(declare-fun res!2821279 () Bool)

(assert (=> start!665540 (=> (not res!2821279) (not e!4164682))))

(assert (=> start!665540 (= res!2821279 (validRegex!8618 r1!6342))))

(assert (=> start!665540 e!4164682))

(assert (=> start!665540 e!4164683))

(assert (=> start!665540 e!4164689))

(assert (=> start!665540 e!4164686))

(declare-fun e!4164681 () Bool)

(assert (=> start!665540 e!4164681))

(declare-fun b!6919351 () Bool)

(declare-fun e!4164688 () Bool)

(assert (=> b!6919351 (= e!4164682 (not e!4164688))))

(declare-fun res!2821276 () Bool)

(assert (=> b!6919351 (=> res!2821276 e!4164688)))

(declare-fun lt!2469859 () Bool)

(assert (=> b!6919351 (= res!2821276 (not lt!2469859))))

(declare-fun lt!2469851 () Regex!16912)

(declare-fun matchRSpec!3969 (Regex!16912 List!66665) Bool)

(assert (=> b!6919351 (= (matchR!9051 lt!2469851 s!14361) (matchRSpec!3969 lt!2469851 s!14361))))

(declare-datatypes ((Unit!160548 0))(
  ( (Unit!160549) )
))
(declare-fun lt!2469853 () Unit!160548)

(declare-fun mainMatchTheorem!3969 (Regex!16912 List!66665) Unit!160548)

(assert (=> b!6919351 (= lt!2469853 (mainMatchTheorem!3969 lt!2469851 s!14361))))

(declare-fun lt!2469865 () Regex!16912)

(assert (=> b!6919351 (= lt!2469859 (matchRSpec!3969 lt!2469865 s!14361))))

(assert (=> b!6919351 (= lt!2469859 (matchR!9051 lt!2469865 s!14361))))

(declare-fun lt!2469864 () Unit!160548)

(assert (=> b!6919351 (= lt!2469864 (mainMatchTheorem!3969 lt!2469865 s!14361))))

(declare-fun lt!2469860 () Regex!16912)

(assert (=> b!6919351 (= lt!2469851 (Concat!25757 r1!6342 lt!2469860))))

(assert (=> b!6919351 (= lt!2469860 (Concat!25757 r2!6280 r3!135))))

(assert (=> b!6919351 (= lt!2469865 (Concat!25757 lt!2469857 r3!135))))

(assert (=> b!6919351 (= lt!2469857 (Concat!25757 r1!6342 r2!6280))))

(declare-fun e!4164687 () Bool)

(assert (=> b!6919352 (= e!4164685 e!4164687)))

(declare-fun res!2821271 () Bool)

(assert (=> b!6919352 (=> res!2821271 e!4164687)))

(declare-fun lt!2469855 () tuple2!67538)

(assert (=> b!6919352 (= res!2821271 (not (matchR!9051 r1!6342 (_1!37072 lt!2469855))))))

(declare-datatypes ((Option!16681 0))(
  ( (None!16680) (Some!16680 (v!52952 tuple2!67538)) )
))
(declare-fun lt!2469869 () Option!16681)

(declare-fun get!23309 (Option!16681) tuple2!67538)

(assert (=> b!6919352 (= lt!2469855 (get!23309 lt!2469869))))

(declare-fun Exists!3914 (Int) Bool)

(assert (=> b!6919352 (= (Exists!3914 lambda!393235) (Exists!3914 lambda!393236))))

(declare-fun lt!2469867 () Unit!160548)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2381 (Regex!16912 Regex!16912 List!66665) Unit!160548)

(assert (=> b!6919352 (= lt!2469867 (lemmaExistCutMatchRandMatchRSpecEquivalent!2381 r1!6342 r2!6280 (_1!37072 lt!2469871)))))

(declare-fun isDefined!13384 (Option!16681) Bool)

(assert (=> b!6919352 (= (isDefined!13384 lt!2469869) (Exists!3914 lambda!393235))))

(declare-fun findConcatSeparation!3095 (Regex!16912 Regex!16912 List!66665 List!66665 List!66665) Option!16681)

(assert (=> b!6919352 (= lt!2469869 (findConcatSeparation!3095 r1!6342 r2!6280 Nil!66541 (_1!37072 lt!2469871) (_1!37072 lt!2469871)))))

(declare-fun lt!2469858 () Unit!160548)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2857 (Regex!16912 Regex!16912 List!66665) Unit!160548)

(assert (=> b!6919352 (= lt!2469858 (lemmaFindConcatSeparationEquivalentToExists!2857 r1!6342 r2!6280 (_1!37072 lt!2469871)))))

(declare-fun b!6919353 () Bool)

(declare-fun e!4164684 () Bool)

(assert (=> b!6919353 (= e!4164687 e!4164684)))

(declare-fun res!2821278 () Bool)

(assert (=> b!6919353 (=> res!2821278 e!4164684)))

(declare-fun ++!14955 (List!66665 List!66665) List!66665)

(assert (=> b!6919353 (= res!2821278 (not (= (++!14955 (++!14955 (_1!37072 lt!2469855) (_2!37072 lt!2469855)) (_2!37072 lt!2469871)) s!14361)))))

(assert (=> b!6919353 (matchRSpec!3969 r2!6280 (_2!37072 lt!2469855))))

(declare-fun lt!2469868 () Unit!160548)

(assert (=> b!6919353 (= lt!2469868 (mainMatchTheorem!3969 r2!6280 (_2!37072 lt!2469855)))))

(assert (=> b!6919353 (matchRSpec!3969 r1!6342 (_1!37072 lt!2469855))))

(declare-fun lt!2469863 () Unit!160548)

(assert (=> b!6919353 (= lt!2469863 (mainMatchTheorem!3969 r1!6342 (_1!37072 lt!2469855)))))

(declare-fun b!6919354 () Bool)

(declare-fun tp!1907291 () Bool)

(declare-fun tp!1907292 () Bool)

(assert (=> b!6919354 (= e!4164686 (and tp!1907291 tp!1907292))))

(assert (=> b!6919355 (= e!4164688 e!4164685)))

(declare-fun res!2821273 () Bool)

(assert (=> b!6919355 (=> res!2821273 e!4164685)))

(declare-fun lt!2469862 () Bool)

(assert (=> b!6919355 (= res!2821273 (not lt!2469862))))

(assert (=> b!6919355 (= lt!2469862 (matchRSpec!3969 lt!2469857 (_1!37072 lt!2469871)))))

(assert (=> b!6919355 (= lt!2469862 (matchR!9051 lt!2469857 (_1!37072 lt!2469871)))))

(declare-fun lt!2469866 () Unit!160548)

(assert (=> b!6919355 (= lt!2469866 (mainMatchTheorem!3969 lt!2469857 (_1!37072 lt!2469871)))))

(declare-fun lt!2469854 () Option!16681)

(assert (=> b!6919355 (= lt!2469871 (get!23309 lt!2469854))))

(assert (=> b!6919355 (= (Exists!3914 lambda!393233) (Exists!3914 lambda!393234))))

(declare-fun lt!2469852 () Unit!160548)

(assert (=> b!6919355 (= lt!2469852 (lemmaExistCutMatchRandMatchRSpecEquivalent!2381 lt!2469857 r3!135 s!14361))))

(assert (=> b!6919355 (= (isDefined!13384 lt!2469854) (Exists!3914 lambda!393233))))

(assert (=> b!6919355 (= lt!2469854 (findConcatSeparation!3095 lt!2469857 r3!135 Nil!66541 s!14361 s!14361))))

(declare-fun lt!2469861 () Unit!160548)

(assert (=> b!6919355 (= lt!2469861 (lemmaFindConcatSeparationEquivalentToExists!2857 lt!2469857 r3!135 s!14361))))

(declare-fun isPrefix!5803 (List!66665 List!66665) Bool)

(assert (=> b!6919356 (= e!4164684 (isPrefix!5803 Nil!66541 (_2!37072 lt!2469855)))))

(assert (=> b!6919356 (= (Exists!3914 lambda!393237) (Exists!3914 lambda!393238))))

(declare-fun lt!2469856 () Unit!160548)

(assert (=> b!6919356 (= lt!2469856 (lemmaExistCutMatchRandMatchRSpecEquivalent!2381 r2!6280 r3!135 lt!2469872))))

(assert (=> b!6919356 (= (isDefined!13384 (findConcatSeparation!3095 r2!6280 r3!135 Nil!66541 lt!2469872 lt!2469872)) (Exists!3914 lambda!393237))))

(declare-fun lt!2469850 () Unit!160548)

(assert (=> b!6919356 (= lt!2469850 (lemmaFindConcatSeparationEquivalentToExists!2857 r2!6280 r3!135 lt!2469872))))

(assert (=> b!6919356 (= (matchR!9051 lt!2469860 lt!2469872) (matchRSpec!3969 lt!2469860 lt!2469872))))

(declare-fun lt!2469870 () Unit!160548)

(assert (=> b!6919356 (= lt!2469870 (mainMatchTheorem!3969 lt!2469860 lt!2469872))))

(assert (=> b!6919356 (= lt!2469872 (++!14955 (_2!37072 lt!2469855) (_2!37072 lt!2469871)))))

(declare-fun b!6919357 () Bool)

(declare-fun res!2821274 () Bool)

(assert (=> b!6919357 (=> res!2821274 e!4164687)))

(assert (=> b!6919357 (= res!2821274 (not (matchR!9051 r2!6280 (_2!37072 lt!2469855))))))

(declare-fun b!6919358 () Bool)

(declare-fun tp!1907294 () Bool)

(assert (=> b!6919358 (= e!4164686 tp!1907294)))

(declare-fun b!6919359 () Bool)

(declare-fun tp!1907298 () Bool)

(assert (=> b!6919359 (= e!4164683 tp!1907298)))

(declare-fun b!6919360 () Bool)

(assert (=> b!6919360 (= e!4164686 tp_is_empty!43049)))

(declare-fun b!6919361 () Bool)

(declare-fun res!2821272 () Bool)

(assert (=> b!6919361 (=> (not res!2821272) (not e!4164682))))

(assert (=> b!6919361 (= res!2821272 (validRegex!8618 r3!135))))

(declare-fun b!6919362 () Bool)

(declare-fun tp!1907286 () Bool)

(declare-fun tp!1907299 () Bool)

(assert (=> b!6919362 (= e!4164689 (and tp!1907286 tp!1907299))))

(declare-fun b!6919363 () Bool)

(declare-fun tp!1907285 () Bool)

(declare-fun tp!1907295 () Bool)

(assert (=> b!6919363 (= e!4164683 (and tp!1907285 tp!1907295))))

(declare-fun b!6919364 () Bool)

(declare-fun tp!1907288 () Bool)

(declare-fun tp!1907293 () Bool)

(assert (=> b!6919364 (= e!4164689 (and tp!1907288 tp!1907293))))

(declare-fun b!6919365 () Bool)

(declare-fun tp!1907287 () Bool)

(assert (=> b!6919365 (= e!4164681 (and tp_is_empty!43049 tp!1907287))))

(assert (= (and start!665540 res!2821279) b!6919347))

(assert (= (and b!6919347 res!2821275) b!6919361))

(assert (= (and b!6919361 res!2821272) b!6919351))

(assert (= (and b!6919351 (not res!2821276)) b!6919355))

(assert (= (and b!6919355 (not res!2821273)) b!6919344))

(assert (= (and b!6919344 (not res!2821277)) b!6919352))

(assert (= (and b!6919352 (not res!2821271)) b!6919357))

(assert (= (and b!6919357 (not res!2821274)) b!6919353))

(assert (= (and b!6919353 (not res!2821278)) b!6919356))

(assert (= (and start!665540 (is-ElementMatch!16912 r1!6342)) b!6919349))

(assert (= (and start!665540 (is-Concat!25757 r1!6342)) b!6919363))

(assert (= (and start!665540 (is-Star!16912 r1!6342)) b!6919359))

(assert (= (and start!665540 (is-Union!16912 r1!6342)) b!6919348))

(assert (= (and start!665540 (is-ElementMatch!16912 r2!6280)) b!6919345))

(assert (= (and start!665540 (is-Concat!25757 r2!6280)) b!6919364))

(assert (= (and start!665540 (is-Star!16912 r2!6280)) b!6919350))

(assert (= (and start!665540 (is-Union!16912 r2!6280)) b!6919362))

(assert (= (and start!665540 (is-ElementMatch!16912 r3!135)) b!6919360))

(assert (= (and start!665540 (is-Concat!25757 r3!135)) b!6919354))

(assert (= (and start!665540 (is-Star!16912 r3!135)) b!6919358))

(assert (= (and start!665540 (is-Union!16912 r3!135)) b!6919346))

(assert (= (and start!665540 (is-Cons!66541 s!14361)) b!6919365))

(declare-fun m!7629464 () Bool)

(assert (=> b!6919361 m!7629464))

(declare-fun m!7629466 () Bool)

(assert (=> start!665540 m!7629466))

(declare-fun m!7629468 () Bool)

(assert (=> b!6919353 m!7629468))

(declare-fun m!7629470 () Bool)

(assert (=> b!6919353 m!7629470))

(assert (=> b!6919353 m!7629468))

(declare-fun m!7629472 () Bool)

(assert (=> b!6919353 m!7629472))

(declare-fun m!7629474 () Bool)

(assert (=> b!6919353 m!7629474))

(declare-fun m!7629476 () Bool)

(assert (=> b!6919353 m!7629476))

(declare-fun m!7629478 () Bool)

(assert (=> b!6919353 m!7629478))

(declare-fun m!7629480 () Bool)

(assert (=> b!6919344 m!7629480))

(declare-fun m!7629482 () Bool)

(assert (=> b!6919356 m!7629482))

(declare-fun m!7629484 () Bool)

(assert (=> b!6919356 m!7629484))

(declare-fun m!7629486 () Bool)

(assert (=> b!6919356 m!7629486))

(declare-fun m!7629488 () Bool)

(assert (=> b!6919356 m!7629488))

(declare-fun m!7629490 () Bool)

(assert (=> b!6919356 m!7629490))

(declare-fun m!7629492 () Bool)

(assert (=> b!6919356 m!7629492))

(declare-fun m!7629494 () Bool)

(assert (=> b!6919356 m!7629494))

(assert (=> b!6919356 m!7629486))

(declare-fun m!7629496 () Bool)

(assert (=> b!6919356 m!7629496))

(assert (=> b!6919356 m!7629496))

(declare-fun m!7629498 () Bool)

(assert (=> b!6919356 m!7629498))

(declare-fun m!7629500 () Bool)

(assert (=> b!6919356 m!7629500))

(declare-fun m!7629502 () Bool)

(assert (=> b!6919356 m!7629502))

(declare-fun m!7629504 () Bool)

(assert (=> b!6919352 m!7629504))

(declare-fun m!7629506 () Bool)

(assert (=> b!6919352 m!7629506))

(assert (=> b!6919352 m!7629506))

(declare-fun m!7629508 () Bool)

(assert (=> b!6919352 m!7629508))

(declare-fun m!7629510 () Bool)

(assert (=> b!6919352 m!7629510))

(declare-fun m!7629512 () Bool)

(assert (=> b!6919352 m!7629512))

(declare-fun m!7629514 () Bool)

(assert (=> b!6919352 m!7629514))

(declare-fun m!7629516 () Bool)

(assert (=> b!6919352 m!7629516))

(declare-fun m!7629518 () Bool)

(assert (=> b!6919352 m!7629518))

(declare-fun m!7629520 () Bool)

(assert (=> b!6919357 m!7629520))

(declare-fun m!7629522 () Bool)

(assert (=> b!6919351 m!7629522))

(declare-fun m!7629524 () Bool)

(assert (=> b!6919351 m!7629524))

(declare-fun m!7629526 () Bool)

(assert (=> b!6919351 m!7629526))

(declare-fun m!7629528 () Bool)

(assert (=> b!6919351 m!7629528))

(declare-fun m!7629530 () Bool)

(assert (=> b!6919351 m!7629530))

(declare-fun m!7629532 () Bool)

(assert (=> b!6919351 m!7629532))

(declare-fun m!7629534 () Bool)

(assert (=> b!6919347 m!7629534))

(declare-fun m!7629536 () Bool)

(assert (=> b!6919355 m!7629536))

(declare-fun m!7629538 () Bool)

(assert (=> b!6919355 m!7629538))

(declare-fun m!7629540 () Bool)

(assert (=> b!6919355 m!7629540))

(declare-fun m!7629542 () Bool)

(assert (=> b!6919355 m!7629542))

(declare-fun m!7629544 () Bool)

(assert (=> b!6919355 m!7629544))

(declare-fun m!7629546 () Bool)

(assert (=> b!6919355 m!7629546))

(declare-fun m!7629548 () Bool)

(assert (=> b!6919355 m!7629548))

(declare-fun m!7629550 () Bool)

(assert (=> b!6919355 m!7629550))

(declare-fun m!7629552 () Bool)

(assert (=> b!6919355 m!7629552))

(declare-fun m!7629554 () Bool)

(assert (=> b!6919355 m!7629554))

(assert (=> b!6919355 m!7629548))

(push 1)

(assert (not b!6919356))

(assert (not b!6919348))

(assert (not b!6919363))

(assert (not b!6919359))

(assert (not b!6919353))

(assert (not b!6919352))

(assert tp_is_empty!43049)

(assert (not b!6919351))

(assert (not b!6919364))

(assert (not b!6919358))

(assert (not b!6919350))

(assert (not b!6919354))

(assert (not b!6919357))

(assert (not b!6919365))

(assert (not b!6919344))

(assert (not b!6919361))

(assert (not start!665540))

(assert (not b!6919355))

(assert (not b!6919347))

(assert (not b!6919362))

(assert (not b!6919346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2164268 () Bool)

(declare-fun choose!51518 (Int) Bool)

(assert (=> d!2164268 (= (Exists!3914 lambda!393237) (choose!51518 lambda!393237))))

(declare-fun bs!1846258 () Bool)

(assert (= bs!1846258 d!2164268))

(declare-fun m!7629648 () Bool)

(assert (=> bs!1846258 m!7629648))

(assert (=> b!6919356 d!2164268))

(declare-fun d!2164270 () Bool)

(assert (=> d!2164270 (= (matchR!9051 lt!2469860 lt!2469872) (matchRSpec!3969 lt!2469860 lt!2469872))))

(declare-fun lt!2469944 () Unit!160548)

(declare-fun choose!51519 (Regex!16912 List!66665) Unit!160548)

(assert (=> d!2164270 (= lt!2469944 (choose!51519 lt!2469860 lt!2469872))))

(assert (=> d!2164270 (validRegex!8618 lt!2469860)))

(assert (=> d!2164270 (= (mainMatchTheorem!3969 lt!2469860 lt!2469872) lt!2469944)))

(declare-fun bs!1846259 () Bool)

(assert (= bs!1846259 d!2164270))

(assert (=> bs!1846259 m!7629482))

(assert (=> bs!1846259 m!7629492))

(declare-fun m!7629650 () Bool)

(assert (=> bs!1846259 m!7629650))

(declare-fun m!7629652 () Bool)

(assert (=> bs!1846259 m!7629652))

(assert (=> b!6919356 d!2164270))

(declare-fun b!6919508 () Bool)

(declare-fun res!2821364 () Bool)

(declare-fun e!4164755 () Bool)

(assert (=> b!6919508 (=> res!2821364 e!4164755)))

(declare-fun e!4164749 () Bool)

(assert (=> b!6919508 (= res!2821364 e!4164749)))

(declare-fun res!2821365 () Bool)

(assert (=> b!6919508 (=> (not res!2821365) (not e!4164749))))

(declare-fun lt!2469947 () Bool)

(assert (=> b!6919508 (= res!2821365 lt!2469947)))

(declare-fun b!6919509 () Bool)

(declare-fun res!2821362 () Bool)

(assert (=> b!6919509 (=> (not res!2821362) (not e!4164749))))

(declare-fun isEmpty!38792 (List!66665) Bool)

(declare-fun tail!12925 (List!66665) List!66665)

(assert (=> b!6919509 (= res!2821362 (isEmpty!38792 (tail!12925 lt!2469872)))))

(declare-fun b!6919510 () Bool)

(declare-fun e!4164752 () Bool)

(assert (=> b!6919510 (= e!4164752 (not lt!2469947))))

(declare-fun b!6919511 () Bool)

(declare-fun res!2821360 () Bool)

(assert (=> b!6919511 (=> (not res!2821360) (not e!4164749))))

(declare-fun call!629008 () Bool)

(assert (=> b!6919511 (= res!2821360 (not call!629008))))

(declare-fun b!6919512 () Bool)

(declare-fun e!4164750 () Bool)

(declare-fun e!4164754 () Bool)

(assert (=> b!6919512 (= e!4164750 e!4164754)))

(declare-fun res!2821361 () Bool)

(assert (=> b!6919512 (=> res!2821361 e!4164754)))

(assert (=> b!6919512 (= res!2821361 call!629008)))

(declare-fun b!6919513 () Bool)

(declare-fun e!4164753 () Bool)

(assert (=> b!6919513 (= e!4164753 e!4164752)))

(declare-fun c!1284714 () Bool)

(assert (=> b!6919513 (= c!1284714 (is-EmptyLang!16912 lt!2469860))))

(declare-fun b!6919515 () Bool)

(declare-fun head!13873 (List!66665) C!34094)

(assert (=> b!6919515 (= e!4164749 (= (head!13873 lt!2469872) (c!1284706 lt!2469860)))))

(declare-fun b!6919516 () Bool)

(assert (=> b!6919516 (= e!4164753 (= lt!2469947 call!629008))))

(declare-fun bm!629003 () Bool)

(assert (=> bm!629003 (= call!629008 (isEmpty!38792 lt!2469872))))

(declare-fun b!6919517 () Bool)

(declare-fun e!4164751 () Bool)

(declare-fun nullable!6745 (Regex!16912) Bool)

(assert (=> b!6919517 (= e!4164751 (nullable!6745 lt!2469860))))

(declare-fun d!2164272 () Bool)

(assert (=> d!2164272 e!4164753))

(declare-fun c!1284715 () Bool)

(assert (=> d!2164272 (= c!1284715 (is-EmptyExpr!16912 lt!2469860))))

(assert (=> d!2164272 (= lt!2469947 e!4164751)))

(declare-fun c!1284716 () Bool)

(assert (=> d!2164272 (= c!1284716 (isEmpty!38792 lt!2469872))))

(assert (=> d!2164272 (validRegex!8618 lt!2469860)))

(assert (=> d!2164272 (= (matchR!9051 lt!2469860 lt!2469872) lt!2469947)))

(declare-fun b!6919514 () Bool)

(declare-fun res!2821363 () Bool)

(assert (=> b!6919514 (=> res!2821363 e!4164755)))

(assert (=> b!6919514 (= res!2821363 (not (is-ElementMatch!16912 lt!2469860)))))

(assert (=> b!6919514 (= e!4164752 e!4164755)))

(declare-fun b!6919518 () Bool)

(declare-fun res!2821359 () Bool)

(assert (=> b!6919518 (=> res!2821359 e!4164754)))

(assert (=> b!6919518 (= res!2821359 (not (isEmpty!38792 (tail!12925 lt!2469872))))))

(declare-fun b!6919519 () Bool)

(assert (=> b!6919519 (= e!4164754 (not (= (head!13873 lt!2469872) (c!1284706 lt!2469860))))))

(declare-fun b!6919520 () Bool)

(assert (=> b!6919520 (= e!4164755 e!4164750)))

(declare-fun res!2821366 () Bool)

(assert (=> b!6919520 (=> (not res!2821366) (not e!4164750))))

(assert (=> b!6919520 (= res!2821366 (not lt!2469947))))

(declare-fun b!6919521 () Bool)

(declare-fun derivativeStep!5420 (Regex!16912 C!34094) Regex!16912)

(assert (=> b!6919521 (= e!4164751 (matchR!9051 (derivativeStep!5420 lt!2469860 (head!13873 lt!2469872)) (tail!12925 lt!2469872)))))

(assert (= (and d!2164272 c!1284716) b!6919517))

(assert (= (and d!2164272 (not c!1284716)) b!6919521))

(assert (= (and d!2164272 c!1284715) b!6919516))

(assert (= (and d!2164272 (not c!1284715)) b!6919513))

(assert (= (and b!6919513 c!1284714) b!6919510))

(assert (= (and b!6919513 (not c!1284714)) b!6919514))

(assert (= (and b!6919514 (not res!2821363)) b!6919508))

(assert (= (and b!6919508 res!2821365) b!6919511))

(assert (= (and b!6919511 res!2821360) b!6919509))

(assert (= (and b!6919509 res!2821362) b!6919515))

(assert (= (and b!6919508 (not res!2821364)) b!6919520))

(assert (= (and b!6919520 res!2821366) b!6919512))

(assert (= (and b!6919512 (not res!2821361)) b!6919518))

(assert (= (and b!6919518 (not res!2821359)) b!6919519))

(assert (= (or b!6919516 b!6919511 b!6919512) bm!629003))

(declare-fun m!7629654 () Bool)

(assert (=> b!6919518 m!7629654))

(assert (=> b!6919518 m!7629654))

(declare-fun m!7629656 () Bool)

(assert (=> b!6919518 m!7629656))

(assert (=> b!6919509 m!7629654))

(assert (=> b!6919509 m!7629654))

(assert (=> b!6919509 m!7629656))

(declare-fun m!7629658 () Bool)

(assert (=> bm!629003 m!7629658))

(declare-fun m!7629660 () Bool)

(assert (=> b!6919521 m!7629660))

(assert (=> b!6919521 m!7629660))

(declare-fun m!7629662 () Bool)

(assert (=> b!6919521 m!7629662))

(assert (=> b!6919521 m!7629654))

(assert (=> b!6919521 m!7629662))

(assert (=> b!6919521 m!7629654))

(declare-fun m!7629664 () Bool)

(assert (=> b!6919521 m!7629664))

(assert (=> b!6919519 m!7629660))

(assert (=> d!2164272 m!7629658))

(assert (=> d!2164272 m!7629652))

(declare-fun m!7629666 () Bool)

(assert (=> b!6919517 m!7629666))

(assert (=> b!6919515 m!7629660))

(assert (=> b!6919356 d!2164272))

(declare-fun bs!1846260 () Bool)

(declare-fun d!2164274 () Bool)

(assert (= bs!1846260 (and d!2164274 b!6919352)))

(declare-fun lambda!393265 () Int)

(assert (=> bs!1846260 (= (and (= lt!2469872 (_1!37072 lt!2469871)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393265 lambda!393235))))

(declare-fun bs!1846261 () Bool)

(assert (= bs!1846261 (and d!2164274 b!6919355)))

(assert (=> bs!1846261 (= (and (= lt!2469872 s!14361) (= r2!6280 lt!2469857)) (= lambda!393265 lambda!393233))))

(assert (=> bs!1846260 (not (= lambda!393265 lambda!393236))))

(assert (=> bs!1846261 (not (= lambda!393265 lambda!393234))))

(declare-fun bs!1846262 () Bool)

(assert (= bs!1846262 (and d!2164274 b!6919356)))

(assert (=> bs!1846262 (not (= lambda!393265 lambda!393238))))

(assert (=> bs!1846262 (= lambda!393265 lambda!393237)))

(assert (=> d!2164274 true))

(assert (=> d!2164274 true))

(assert (=> d!2164274 true))

(assert (=> d!2164274 (= (isDefined!13384 (findConcatSeparation!3095 r2!6280 r3!135 Nil!66541 lt!2469872 lt!2469872)) (Exists!3914 lambda!393265))))

(declare-fun lt!2469950 () Unit!160548)

(declare-fun choose!51520 (Regex!16912 Regex!16912 List!66665) Unit!160548)

(assert (=> d!2164274 (= lt!2469950 (choose!51520 r2!6280 r3!135 lt!2469872))))

(assert (=> d!2164274 (validRegex!8618 r2!6280)))

(assert (=> d!2164274 (= (lemmaFindConcatSeparationEquivalentToExists!2857 r2!6280 r3!135 lt!2469872) lt!2469950)))

(declare-fun bs!1846263 () Bool)

(assert (= bs!1846263 d!2164274))

(assert (=> bs!1846263 m!7629534))

(declare-fun m!7629668 () Bool)

(assert (=> bs!1846263 m!7629668))

(assert (=> bs!1846263 m!7629496))

(declare-fun m!7629670 () Bool)

(assert (=> bs!1846263 m!7629670))

(assert (=> bs!1846263 m!7629496))

(assert (=> bs!1846263 m!7629498))

(assert (=> b!6919356 d!2164274))

(declare-fun d!2164276 () Bool)

(assert (=> d!2164276 (= (Exists!3914 lambda!393238) (choose!51518 lambda!393238))))

(declare-fun bs!1846264 () Bool)

(assert (= bs!1846264 d!2164276))

(declare-fun m!7629672 () Bool)

(assert (=> bs!1846264 m!7629672))

(assert (=> b!6919356 d!2164276))

(declare-fun d!2164278 () Bool)

(declare-fun e!4164765 () Bool)

(assert (=> d!2164278 e!4164765))

(declare-fun res!2821380 () Bool)

(assert (=> d!2164278 (=> res!2821380 e!4164765)))

(declare-fun lt!2469953 () Bool)

(assert (=> d!2164278 (= res!2821380 (not lt!2469953))))

(declare-fun e!4164766 () Bool)

(assert (=> d!2164278 (= lt!2469953 e!4164766)))

(declare-fun res!2821381 () Bool)

(assert (=> d!2164278 (=> res!2821381 e!4164766)))

(assert (=> d!2164278 (= res!2821381 (is-Nil!66541 Nil!66541))))

(assert (=> d!2164278 (= (isPrefix!5803 Nil!66541 (_2!37072 lt!2469855)) lt!2469953)))

(declare-fun b!6919537 () Bool)

(declare-fun size!40770 (List!66665) Int)

(assert (=> b!6919537 (= e!4164765 (>= (size!40770 (_2!37072 lt!2469855)) (size!40770 Nil!66541)))))

(declare-fun b!6919535 () Bool)

(declare-fun res!2821382 () Bool)

(declare-fun e!4164764 () Bool)

(assert (=> b!6919535 (=> (not res!2821382) (not e!4164764))))

(assert (=> b!6919535 (= res!2821382 (= (head!13873 Nil!66541) (head!13873 (_2!37072 lt!2469855))))))

(declare-fun b!6919534 () Bool)

(assert (=> b!6919534 (= e!4164766 e!4164764)))

(declare-fun res!2821379 () Bool)

(assert (=> b!6919534 (=> (not res!2821379) (not e!4164764))))

(assert (=> b!6919534 (= res!2821379 (not (is-Nil!66541 (_2!37072 lt!2469855))))))

(declare-fun b!6919536 () Bool)

(assert (=> b!6919536 (= e!4164764 (isPrefix!5803 (tail!12925 Nil!66541) (tail!12925 (_2!37072 lt!2469855))))))

(assert (= (and d!2164278 (not res!2821381)) b!6919534))

(assert (= (and b!6919534 res!2821379) b!6919535))

(assert (= (and b!6919535 res!2821382) b!6919536))

(assert (= (and d!2164278 (not res!2821380)) b!6919537))

(declare-fun m!7629674 () Bool)

(assert (=> b!6919537 m!7629674))

(declare-fun m!7629676 () Bool)

(assert (=> b!6919537 m!7629676))

(declare-fun m!7629678 () Bool)

(assert (=> b!6919535 m!7629678))

(declare-fun m!7629680 () Bool)

(assert (=> b!6919535 m!7629680))

(declare-fun m!7629682 () Bool)

(assert (=> b!6919536 m!7629682))

(declare-fun m!7629684 () Bool)

(assert (=> b!6919536 m!7629684))

(assert (=> b!6919536 m!7629682))

(assert (=> b!6919536 m!7629684))

(declare-fun m!7629686 () Bool)

(assert (=> b!6919536 m!7629686))

(assert (=> b!6919356 d!2164278))

(declare-fun bs!1846266 () Bool)

(declare-fun b!6919578 () Bool)

(assert (= bs!1846266 (and b!6919578 d!2164274)))

(declare-fun lambda!393270 () Int)

(assert (=> bs!1846266 (not (= lambda!393270 lambda!393265))))

(declare-fun bs!1846267 () Bool)

(assert (= bs!1846267 (and b!6919578 b!6919352)))

(assert (=> bs!1846267 (not (= lambda!393270 lambda!393235))))

(declare-fun bs!1846268 () Bool)

(assert (= bs!1846268 (and b!6919578 b!6919355)))

(assert (=> bs!1846268 (not (= lambda!393270 lambda!393233))))

(assert (=> bs!1846267 (not (= lambda!393270 lambda!393236))))

(assert (=> bs!1846268 (not (= lambda!393270 lambda!393234))))

(declare-fun bs!1846269 () Bool)

(assert (= bs!1846269 (and b!6919578 b!6919356)))

(assert (=> bs!1846269 (not (= lambda!393270 lambda!393238))))

(assert (=> bs!1846269 (not (= lambda!393270 lambda!393237))))

(assert (=> b!6919578 true))

(assert (=> b!6919578 true))

(declare-fun bs!1846270 () Bool)

(declare-fun b!6919573 () Bool)

(assert (= bs!1846270 (and b!6919573 b!6919578)))

(declare-fun lambda!393271 () Int)

(assert (=> bs!1846270 (not (= lambda!393271 lambda!393270))))

(declare-fun bs!1846271 () Bool)

(assert (= bs!1846271 (and b!6919573 d!2164274)))

(assert (=> bs!1846271 (not (= lambda!393271 lambda!393265))))

(declare-fun bs!1846272 () Bool)

(assert (= bs!1846272 (and b!6919573 b!6919352)))

(assert (=> bs!1846272 (not (= lambda!393271 lambda!393235))))

(declare-fun bs!1846273 () Bool)

(assert (= bs!1846273 (and b!6919573 b!6919355)))

(assert (=> bs!1846273 (not (= lambda!393271 lambda!393233))))

(assert (=> bs!1846272 (= (and (= lt!2469872 (_1!37072 lt!2469871)) (= (regOne!34336 lt!2469860) r1!6342) (= (regTwo!34336 lt!2469860) r2!6280)) (= lambda!393271 lambda!393236))))

(assert (=> bs!1846273 (= (and (= lt!2469872 s!14361) (= (regOne!34336 lt!2469860) lt!2469857) (= (regTwo!34336 lt!2469860) r3!135)) (= lambda!393271 lambda!393234))))

(declare-fun bs!1846274 () Bool)

(assert (= bs!1846274 (and b!6919573 b!6919356)))

(assert (=> bs!1846274 (= (and (= (regOne!34336 lt!2469860) r2!6280) (= (regTwo!34336 lt!2469860) r3!135)) (= lambda!393271 lambda!393238))))

(assert (=> bs!1846274 (not (= lambda!393271 lambda!393237))))

(assert (=> b!6919573 true))

(assert (=> b!6919573 true))

(declare-fun b!6919571 () Bool)

(declare-fun e!4164788 () Bool)

(declare-fun call!629013 () Bool)

(assert (=> b!6919571 (= e!4164788 call!629013)))

(declare-fun b!6919572 () Bool)

(declare-fun c!1284727 () Bool)

(assert (=> b!6919572 (= c!1284727 (is-Union!16912 lt!2469860))))

(declare-fun e!4164785 () Bool)

(declare-fun e!4164789 () Bool)

(assert (=> b!6919572 (= e!4164785 e!4164789)))

(declare-fun e!4164786 () Bool)

(declare-fun call!629014 () Bool)

(assert (=> b!6919573 (= e!4164786 call!629014)))

(declare-fun b!6919574 () Bool)

(declare-fun e!4164787 () Bool)

(assert (=> b!6919574 (= e!4164787 (matchRSpec!3969 (regTwo!34337 lt!2469860) lt!2469872))))

(declare-fun c!1284725 () Bool)

(declare-fun bm!629008 () Bool)

(assert (=> bm!629008 (= call!629014 (Exists!3914 (ite c!1284725 lambda!393270 lambda!393271)))))

(declare-fun b!6919575 () Bool)

(declare-fun res!2821401 () Bool)

(declare-fun e!4164790 () Bool)

(assert (=> b!6919575 (=> res!2821401 e!4164790)))

(assert (=> b!6919575 (= res!2821401 call!629013)))

(assert (=> b!6919575 (= e!4164786 e!4164790)))

(declare-fun bm!629009 () Bool)

(assert (=> bm!629009 (= call!629013 (isEmpty!38792 lt!2469872))))

(declare-fun b!6919576 () Bool)

(declare-fun e!4164791 () Bool)

(assert (=> b!6919576 (= e!4164788 e!4164791)))

(declare-fun res!2821399 () Bool)

(assert (=> b!6919576 (= res!2821399 (not (is-EmptyLang!16912 lt!2469860)))))

(assert (=> b!6919576 (=> (not res!2821399) (not e!4164791))))

(declare-fun b!6919577 () Bool)

(assert (=> b!6919577 (= e!4164789 e!4164787)))

(declare-fun res!2821400 () Bool)

(assert (=> b!6919577 (= res!2821400 (matchRSpec!3969 (regOne!34337 lt!2469860) lt!2469872))))

(assert (=> b!6919577 (=> res!2821400 e!4164787)))

(assert (=> b!6919578 (= e!4164790 call!629014)))

(declare-fun d!2164282 () Bool)

(declare-fun c!1284728 () Bool)

(assert (=> d!2164282 (= c!1284728 (is-EmptyExpr!16912 lt!2469860))))

(assert (=> d!2164282 (= (matchRSpec!3969 lt!2469860 lt!2469872) e!4164788)))

(declare-fun b!6919570 () Bool)

(assert (=> b!6919570 (= e!4164789 e!4164786)))

(assert (=> b!6919570 (= c!1284725 (is-Star!16912 lt!2469860))))

(declare-fun b!6919579 () Bool)

(declare-fun c!1284726 () Bool)

(assert (=> b!6919579 (= c!1284726 (is-ElementMatch!16912 lt!2469860))))

(assert (=> b!6919579 (= e!4164791 e!4164785)))

(declare-fun b!6919580 () Bool)

(assert (=> b!6919580 (= e!4164785 (= lt!2469872 (Cons!66541 (c!1284706 lt!2469860) Nil!66541)))))

(assert (= (and d!2164282 c!1284728) b!6919571))

(assert (= (and d!2164282 (not c!1284728)) b!6919576))

(assert (= (and b!6919576 res!2821399) b!6919579))

(assert (= (and b!6919579 c!1284726) b!6919580))

(assert (= (and b!6919579 (not c!1284726)) b!6919572))

(assert (= (and b!6919572 c!1284727) b!6919577))

(assert (= (and b!6919572 (not c!1284727)) b!6919570))

(assert (= (and b!6919577 (not res!2821400)) b!6919574))

(assert (= (and b!6919570 c!1284725) b!6919575))

(assert (= (and b!6919570 (not c!1284725)) b!6919573))

(assert (= (and b!6919575 (not res!2821401)) b!6919578))

(assert (= (or b!6919578 b!6919573) bm!629008))

(assert (= (or b!6919571 b!6919575) bm!629009))

(declare-fun m!7629690 () Bool)

(assert (=> b!6919574 m!7629690))

(declare-fun m!7629692 () Bool)

(assert (=> bm!629008 m!7629692))

(assert (=> bm!629009 m!7629658))

(declare-fun m!7629694 () Bool)

(assert (=> b!6919577 m!7629694))

(assert (=> b!6919356 d!2164282))

(declare-fun b!6919620 () Bool)

(declare-fun e!4164810 () Bool)

(declare-fun lt!2469958 () List!66665)

(assert (=> b!6919620 (= e!4164810 (or (not (= (_2!37072 lt!2469871) Nil!66541)) (= lt!2469958 (_2!37072 lt!2469855))))))

(declare-fun b!6919618 () Bool)

(declare-fun e!4164811 () List!66665)

(assert (=> b!6919618 (= e!4164811 (Cons!66541 (h!72989 (_2!37072 lt!2469855)) (++!14955 (t!380408 (_2!37072 lt!2469855)) (_2!37072 lt!2469871))))))

(declare-fun d!2164286 () Bool)

(assert (=> d!2164286 e!4164810))

(declare-fun res!2821422 () Bool)

(assert (=> d!2164286 (=> (not res!2821422) (not e!4164810))))

(declare-fun content!13073 (List!66665) (Set C!34094))

(assert (=> d!2164286 (= res!2821422 (= (content!13073 lt!2469958) (set.union (content!13073 (_2!37072 lt!2469855)) (content!13073 (_2!37072 lt!2469871)))))))

(assert (=> d!2164286 (= lt!2469958 e!4164811)))

(declare-fun c!1284737 () Bool)

(assert (=> d!2164286 (= c!1284737 (is-Nil!66541 (_2!37072 lt!2469855)))))

(assert (=> d!2164286 (= (++!14955 (_2!37072 lt!2469855) (_2!37072 lt!2469871)) lt!2469958)))

(declare-fun b!6919617 () Bool)

(assert (=> b!6919617 (= e!4164811 (_2!37072 lt!2469871))))

(declare-fun b!6919619 () Bool)

(declare-fun res!2821423 () Bool)

(assert (=> b!6919619 (=> (not res!2821423) (not e!4164810))))

(assert (=> b!6919619 (= res!2821423 (= (size!40770 lt!2469958) (+ (size!40770 (_2!37072 lt!2469855)) (size!40770 (_2!37072 lt!2469871)))))))

(assert (= (and d!2164286 c!1284737) b!6919617))

(assert (= (and d!2164286 (not c!1284737)) b!6919618))

(assert (= (and d!2164286 res!2821422) b!6919619))

(assert (= (and b!6919619 res!2821423) b!6919620))

(declare-fun m!7629696 () Bool)

(assert (=> b!6919618 m!7629696))

(declare-fun m!7629698 () Bool)

(assert (=> d!2164286 m!7629698))

(declare-fun m!7629700 () Bool)

(assert (=> d!2164286 m!7629700))

(declare-fun m!7629702 () Bool)

(assert (=> d!2164286 m!7629702))

(declare-fun m!7629704 () Bool)

(assert (=> b!6919619 m!7629704))

(assert (=> b!6919619 m!7629674))

(declare-fun m!7629706 () Bool)

(assert (=> b!6919619 m!7629706))

(assert (=> b!6919356 d!2164286))

(declare-fun bs!1846275 () Bool)

(declare-fun d!2164288 () Bool)

(assert (= bs!1846275 (and d!2164288 b!6919578)))

(declare-fun lambda!393276 () Int)

(assert (=> bs!1846275 (not (= lambda!393276 lambda!393270))))

(declare-fun bs!1846276 () Bool)

(assert (= bs!1846276 (and d!2164288 d!2164274)))

(assert (=> bs!1846276 (= lambda!393276 lambda!393265)))

(declare-fun bs!1846277 () Bool)

(assert (= bs!1846277 (and d!2164288 b!6919573)))

(assert (=> bs!1846277 (not (= lambda!393276 lambda!393271))))

(declare-fun bs!1846278 () Bool)

(assert (= bs!1846278 (and d!2164288 b!6919352)))

(assert (=> bs!1846278 (= (and (= lt!2469872 (_1!37072 lt!2469871)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393276 lambda!393235))))

(declare-fun bs!1846279 () Bool)

(assert (= bs!1846279 (and d!2164288 b!6919355)))

(assert (=> bs!1846279 (= (and (= lt!2469872 s!14361) (= r2!6280 lt!2469857)) (= lambda!393276 lambda!393233))))

(assert (=> bs!1846278 (not (= lambda!393276 lambda!393236))))

(assert (=> bs!1846279 (not (= lambda!393276 lambda!393234))))

(declare-fun bs!1846280 () Bool)

(assert (= bs!1846280 (and d!2164288 b!6919356)))

(assert (=> bs!1846280 (not (= lambda!393276 lambda!393238))))

(assert (=> bs!1846280 (= lambda!393276 lambda!393237)))

(assert (=> d!2164288 true))

(assert (=> d!2164288 true))

(assert (=> d!2164288 true))

(declare-fun lambda!393277 () Int)

(assert (=> bs!1846275 (not (= lambda!393277 lambda!393270))))

(assert (=> bs!1846276 (not (= lambda!393277 lambda!393265))))

(assert (=> bs!1846277 (= (and (= r2!6280 (regOne!34336 lt!2469860)) (= r3!135 (regTwo!34336 lt!2469860))) (= lambda!393277 lambda!393271))))

(assert (=> bs!1846278 (not (= lambda!393277 lambda!393235))))

(assert (=> bs!1846279 (not (= lambda!393277 lambda!393233))))

(assert (=> bs!1846278 (= (and (= lt!2469872 (_1!37072 lt!2469871)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393277 lambda!393236))))

(declare-fun bs!1846281 () Bool)

(assert (= bs!1846281 d!2164288))

(assert (=> bs!1846281 (not (= lambda!393277 lambda!393276))))

(assert (=> bs!1846279 (= (and (= lt!2469872 s!14361) (= r2!6280 lt!2469857)) (= lambda!393277 lambda!393234))))

(assert (=> bs!1846280 (= lambda!393277 lambda!393238)))

(assert (=> bs!1846280 (not (= lambda!393277 lambda!393237))))

(assert (=> d!2164288 true))

(assert (=> d!2164288 true))

(assert (=> d!2164288 true))

(assert (=> d!2164288 (= (Exists!3914 lambda!393276) (Exists!3914 lambda!393277))))

(declare-fun lt!2469962 () Unit!160548)

(declare-fun choose!51521 (Regex!16912 Regex!16912 List!66665) Unit!160548)

(assert (=> d!2164288 (= lt!2469962 (choose!51521 r2!6280 r3!135 lt!2469872))))

(assert (=> d!2164288 (validRegex!8618 r2!6280)))

(assert (=> d!2164288 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2381 r2!6280 r3!135 lt!2469872) lt!2469962)))

(declare-fun m!7629722 () Bool)

(assert (=> bs!1846281 m!7629722))

(declare-fun m!7629724 () Bool)

(assert (=> bs!1846281 m!7629724))

(declare-fun m!7629726 () Bool)

(assert (=> bs!1846281 m!7629726))

(assert (=> bs!1846281 m!7629534))

(assert (=> b!6919356 d!2164288))

(declare-fun b!6919661 () Bool)

(declare-fun e!4164836 () Option!16681)

(assert (=> b!6919661 (= e!4164836 None!16680)))

(declare-fun b!6919662 () Bool)

(declare-fun e!4164837 () Bool)

(assert (=> b!6919662 (= e!4164837 (matchR!9051 r3!135 lt!2469872))))

(declare-fun b!6919663 () Bool)

(declare-fun lt!2469970 () Unit!160548)

(declare-fun lt!2469969 () Unit!160548)

(assert (=> b!6919663 (= lt!2469970 lt!2469969)))

(assert (=> b!6919663 (= (++!14955 (++!14955 Nil!66541 (Cons!66541 (h!72989 lt!2469872) Nil!66541)) (t!380408 lt!2469872)) lt!2469872)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2824 (List!66665 C!34094 List!66665 List!66665) Unit!160548)

(assert (=> b!6919663 (= lt!2469969 (lemmaMoveElementToOtherListKeepsConcatEq!2824 Nil!66541 (h!72989 lt!2469872) (t!380408 lt!2469872) lt!2469872))))

(assert (=> b!6919663 (= e!4164836 (findConcatSeparation!3095 r2!6280 r3!135 (++!14955 Nil!66541 (Cons!66541 (h!72989 lt!2469872) Nil!66541)) (t!380408 lt!2469872) lt!2469872))))

(declare-fun b!6919664 () Bool)

(declare-fun res!2821450 () Bool)

(declare-fun e!4164835 () Bool)

(assert (=> b!6919664 (=> (not res!2821450) (not e!4164835))))

(declare-fun lt!2469971 () Option!16681)

(assert (=> b!6919664 (= res!2821450 (matchR!9051 r2!6280 (_1!37072 (get!23309 lt!2469971))))))

(declare-fun b!6919665 () Bool)

(declare-fun res!2821454 () Bool)

(assert (=> b!6919665 (=> (not res!2821454) (not e!4164835))))

(assert (=> b!6919665 (= res!2821454 (matchR!9051 r3!135 (_2!37072 (get!23309 lt!2469971))))))

(declare-fun b!6919666 () Bool)

(declare-fun e!4164833 () Option!16681)

(assert (=> b!6919666 (= e!4164833 (Some!16680 (tuple2!67539 Nil!66541 lt!2469872)))))

(declare-fun b!6919667 () Bool)

(declare-fun e!4164834 () Bool)

(assert (=> b!6919667 (= e!4164834 (not (isDefined!13384 lt!2469971)))))

(declare-fun b!6919668 () Bool)

(assert (=> b!6919668 (= e!4164833 e!4164836)))

(declare-fun c!1284746 () Bool)

(assert (=> b!6919668 (= c!1284746 (is-Nil!66541 lt!2469872))))

(declare-fun d!2164292 () Bool)

(assert (=> d!2164292 e!4164834))

(declare-fun res!2821452 () Bool)

(assert (=> d!2164292 (=> res!2821452 e!4164834)))

(assert (=> d!2164292 (= res!2821452 e!4164835)))

(declare-fun res!2821451 () Bool)

(assert (=> d!2164292 (=> (not res!2821451) (not e!4164835))))

(assert (=> d!2164292 (= res!2821451 (isDefined!13384 lt!2469971))))

(assert (=> d!2164292 (= lt!2469971 e!4164833)))

(declare-fun c!1284745 () Bool)

(assert (=> d!2164292 (= c!1284745 e!4164837)))

(declare-fun res!2821453 () Bool)

(assert (=> d!2164292 (=> (not res!2821453) (not e!4164837))))

(assert (=> d!2164292 (= res!2821453 (matchR!9051 r2!6280 Nil!66541))))

(assert (=> d!2164292 (validRegex!8618 r2!6280)))

(assert (=> d!2164292 (= (findConcatSeparation!3095 r2!6280 r3!135 Nil!66541 lt!2469872 lt!2469872) lt!2469971)))

(declare-fun b!6919669 () Bool)

(assert (=> b!6919669 (= e!4164835 (= (++!14955 (_1!37072 (get!23309 lt!2469971)) (_2!37072 (get!23309 lt!2469971))) lt!2469872))))

(assert (= (and d!2164292 res!2821453) b!6919662))

(assert (= (and d!2164292 c!1284745) b!6919666))

(assert (= (and d!2164292 (not c!1284745)) b!6919668))

(assert (= (and b!6919668 c!1284746) b!6919661))

(assert (= (and b!6919668 (not c!1284746)) b!6919663))

(assert (= (and d!2164292 res!2821451) b!6919664))

(assert (= (and b!6919664 res!2821450) b!6919665))

(assert (= (and b!6919665 res!2821454) b!6919669))

(assert (= (and d!2164292 (not res!2821452)) b!6919667))

(declare-fun m!7629728 () Bool)

(assert (=> b!6919664 m!7629728))

(declare-fun m!7629730 () Bool)

(assert (=> b!6919664 m!7629730))

(declare-fun m!7629732 () Bool)

(assert (=> b!6919667 m!7629732))

(assert (=> b!6919669 m!7629728))

(declare-fun m!7629734 () Bool)

(assert (=> b!6919669 m!7629734))

(declare-fun m!7629736 () Bool)

(assert (=> b!6919662 m!7629736))

(assert (=> b!6919665 m!7629728))

(declare-fun m!7629738 () Bool)

(assert (=> b!6919665 m!7629738))

(assert (=> d!2164292 m!7629732))

(declare-fun m!7629740 () Bool)

(assert (=> d!2164292 m!7629740))

(assert (=> d!2164292 m!7629534))

(declare-fun m!7629742 () Bool)

(assert (=> b!6919663 m!7629742))

(assert (=> b!6919663 m!7629742))

(declare-fun m!7629744 () Bool)

(assert (=> b!6919663 m!7629744))

(declare-fun m!7629746 () Bool)

(assert (=> b!6919663 m!7629746))

(assert (=> b!6919663 m!7629742))

(declare-fun m!7629748 () Bool)

(assert (=> b!6919663 m!7629748))

(assert (=> b!6919356 d!2164292))

(declare-fun d!2164294 () Bool)

(declare-fun isEmpty!38793 (Option!16681) Bool)

(assert (=> d!2164294 (= (isDefined!13384 (findConcatSeparation!3095 r2!6280 r3!135 Nil!66541 lt!2469872 lt!2469872)) (not (isEmpty!38793 (findConcatSeparation!3095 r2!6280 r3!135 Nil!66541 lt!2469872 lt!2469872))))))

(declare-fun bs!1846282 () Bool)

(assert (= bs!1846282 d!2164294))

(assert (=> bs!1846282 m!7629496))

(declare-fun m!7629750 () Bool)

(assert (=> bs!1846282 m!7629750))

(assert (=> b!6919356 d!2164294))

(declare-fun b!6919698 () Bool)

(declare-fun res!2821468 () Bool)

(declare-fun e!4164862 () Bool)

(assert (=> b!6919698 (=> res!2821468 e!4164862)))

(assert (=> b!6919698 (= res!2821468 (not (is-Concat!25757 r3!135)))))

(declare-fun e!4164861 () Bool)

(assert (=> b!6919698 (= e!4164861 e!4164862)))

(declare-fun bm!629019 () Bool)

(declare-fun call!629024 () Bool)

(declare-fun c!1284756 () Bool)

(assert (=> bm!629019 (= call!629024 (validRegex!8618 (ite c!1284756 (regOne!34337 r3!135) (regTwo!34336 r3!135))))))

(declare-fun call!629026 () Bool)

(declare-fun c!1284755 () Bool)

(declare-fun bm!629020 () Bool)

(assert (=> bm!629020 (= call!629026 (validRegex!8618 (ite c!1284755 (reg!17241 r3!135) (ite c!1284756 (regTwo!34337 r3!135) (regOne!34336 r3!135)))))))

(declare-fun b!6919699 () Bool)

(declare-fun e!4164863 () Bool)

(assert (=> b!6919699 (= e!4164863 call!629026)))

(declare-fun b!6919700 () Bool)

(declare-fun e!4164864 () Bool)

(assert (=> b!6919700 (= e!4164864 e!4164861)))

(assert (=> b!6919700 (= c!1284756 (is-Union!16912 r3!135))))

(declare-fun bm!629021 () Bool)

(declare-fun call!629025 () Bool)

(assert (=> bm!629021 (= call!629025 call!629026)))

(declare-fun b!6919701 () Bool)

(assert (=> b!6919701 (= e!4164864 e!4164863)))

(declare-fun res!2821469 () Bool)

(assert (=> b!6919701 (= res!2821469 (not (nullable!6745 (reg!17241 r3!135))))))

(assert (=> b!6919701 (=> (not res!2821469) (not e!4164863))))

(declare-fun d!2164296 () Bool)

(declare-fun res!2821467 () Bool)

(declare-fun e!4164859 () Bool)

(assert (=> d!2164296 (=> res!2821467 e!4164859)))

(assert (=> d!2164296 (= res!2821467 (is-ElementMatch!16912 r3!135))))

(assert (=> d!2164296 (= (validRegex!8618 r3!135) e!4164859)))

(declare-fun b!6919702 () Bool)

(declare-fun res!2821470 () Bool)

(declare-fun e!4164860 () Bool)

(assert (=> b!6919702 (=> (not res!2821470) (not e!4164860))))

(assert (=> b!6919702 (= res!2821470 call!629024)))

(assert (=> b!6919702 (= e!4164861 e!4164860)))

(declare-fun b!6919703 () Bool)

(declare-fun e!4164858 () Bool)

(assert (=> b!6919703 (= e!4164862 e!4164858)))

(declare-fun res!2821471 () Bool)

(assert (=> b!6919703 (=> (not res!2821471) (not e!4164858))))

(assert (=> b!6919703 (= res!2821471 call!629025)))

(declare-fun b!6919704 () Bool)

(assert (=> b!6919704 (= e!4164860 call!629025)))

(declare-fun b!6919705 () Bool)

(assert (=> b!6919705 (= e!4164858 call!629024)))

(declare-fun b!6919706 () Bool)

(assert (=> b!6919706 (= e!4164859 e!4164864)))

(assert (=> b!6919706 (= c!1284755 (is-Star!16912 r3!135))))

(assert (= (and d!2164296 (not res!2821467)) b!6919706))

(assert (= (and b!6919706 c!1284755) b!6919701))

(assert (= (and b!6919706 (not c!1284755)) b!6919700))

(assert (= (and b!6919701 res!2821469) b!6919699))

(assert (= (and b!6919700 c!1284756) b!6919702))

(assert (= (and b!6919700 (not c!1284756)) b!6919698))

(assert (= (and b!6919702 res!2821470) b!6919704))

(assert (= (and b!6919698 (not res!2821468)) b!6919703))

(assert (= (and b!6919703 res!2821471) b!6919705))

(assert (= (or b!6919702 b!6919705) bm!629019))

(assert (= (or b!6919704 b!6919703) bm!629021))

(assert (= (or b!6919699 bm!629021) bm!629020))

(declare-fun m!7629752 () Bool)

(assert (=> bm!629019 m!7629752))

(declare-fun m!7629754 () Bool)

(assert (=> bm!629020 m!7629754))

(declare-fun m!7629756 () Bool)

(assert (=> b!6919701 m!7629756))

(assert (=> b!6919361 d!2164296))

(declare-fun b!6919707 () Bool)

(declare-fun res!2821477 () Bool)

(declare-fun e!4164871 () Bool)

(assert (=> b!6919707 (=> res!2821477 e!4164871)))

(declare-fun e!4164865 () Bool)

(assert (=> b!6919707 (= res!2821477 e!4164865)))

(declare-fun res!2821478 () Bool)

(assert (=> b!6919707 (=> (not res!2821478) (not e!4164865))))

(declare-fun lt!2469978 () Bool)

(assert (=> b!6919707 (= res!2821478 lt!2469978)))

(declare-fun b!6919708 () Bool)

(declare-fun res!2821475 () Bool)

(assert (=> b!6919708 (=> (not res!2821475) (not e!4164865))))

(assert (=> b!6919708 (= res!2821475 (isEmpty!38792 (tail!12925 s!14361)))))

(declare-fun b!6919709 () Bool)

(declare-fun e!4164868 () Bool)

(assert (=> b!6919709 (= e!4164868 (not lt!2469978))))

(declare-fun b!6919710 () Bool)

(declare-fun res!2821473 () Bool)

(assert (=> b!6919710 (=> (not res!2821473) (not e!4164865))))

(declare-fun call!629027 () Bool)

(assert (=> b!6919710 (= res!2821473 (not call!629027))))

(declare-fun b!6919711 () Bool)

(declare-fun e!4164866 () Bool)

(declare-fun e!4164870 () Bool)

(assert (=> b!6919711 (= e!4164866 e!4164870)))

(declare-fun res!2821474 () Bool)

(assert (=> b!6919711 (=> res!2821474 e!4164870)))

(assert (=> b!6919711 (= res!2821474 call!629027)))

(declare-fun b!6919712 () Bool)

(declare-fun e!4164869 () Bool)

(assert (=> b!6919712 (= e!4164869 e!4164868)))

(declare-fun c!1284757 () Bool)

(assert (=> b!6919712 (= c!1284757 (is-EmptyLang!16912 lt!2469851))))

(declare-fun b!6919714 () Bool)

(assert (=> b!6919714 (= e!4164865 (= (head!13873 s!14361) (c!1284706 lt!2469851)))))

(declare-fun b!6919715 () Bool)

(assert (=> b!6919715 (= e!4164869 (= lt!2469978 call!629027))))

(declare-fun bm!629022 () Bool)

(assert (=> bm!629022 (= call!629027 (isEmpty!38792 s!14361))))

(declare-fun b!6919716 () Bool)

(declare-fun e!4164867 () Bool)

(assert (=> b!6919716 (= e!4164867 (nullable!6745 lt!2469851))))

(declare-fun d!2164298 () Bool)

(assert (=> d!2164298 e!4164869))

(declare-fun c!1284758 () Bool)

(assert (=> d!2164298 (= c!1284758 (is-EmptyExpr!16912 lt!2469851))))

(assert (=> d!2164298 (= lt!2469978 e!4164867)))

(declare-fun c!1284759 () Bool)

(assert (=> d!2164298 (= c!1284759 (isEmpty!38792 s!14361))))

(assert (=> d!2164298 (validRegex!8618 lt!2469851)))

(assert (=> d!2164298 (= (matchR!9051 lt!2469851 s!14361) lt!2469978)))

(declare-fun b!6919713 () Bool)

(declare-fun res!2821476 () Bool)

(assert (=> b!6919713 (=> res!2821476 e!4164871)))

(assert (=> b!6919713 (= res!2821476 (not (is-ElementMatch!16912 lt!2469851)))))

(assert (=> b!6919713 (= e!4164868 e!4164871)))

(declare-fun b!6919717 () Bool)

(declare-fun res!2821472 () Bool)

(assert (=> b!6919717 (=> res!2821472 e!4164870)))

(assert (=> b!6919717 (= res!2821472 (not (isEmpty!38792 (tail!12925 s!14361))))))

(declare-fun b!6919718 () Bool)

(assert (=> b!6919718 (= e!4164870 (not (= (head!13873 s!14361) (c!1284706 lt!2469851))))))

(declare-fun b!6919719 () Bool)

(assert (=> b!6919719 (= e!4164871 e!4164866)))

(declare-fun res!2821479 () Bool)

(assert (=> b!6919719 (=> (not res!2821479) (not e!4164866))))

(assert (=> b!6919719 (= res!2821479 (not lt!2469978))))

(declare-fun b!6919720 () Bool)

(assert (=> b!6919720 (= e!4164867 (matchR!9051 (derivativeStep!5420 lt!2469851 (head!13873 s!14361)) (tail!12925 s!14361)))))

(assert (= (and d!2164298 c!1284759) b!6919716))

(assert (= (and d!2164298 (not c!1284759)) b!6919720))

(assert (= (and d!2164298 c!1284758) b!6919715))

(assert (= (and d!2164298 (not c!1284758)) b!6919712))

(assert (= (and b!6919712 c!1284757) b!6919709))

(assert (= (and b!6919712 (not c!1284757)) b!6919713))

(assert (= (and b!6919713 (not res!2821476)) b!6919707))

(assert (= (and b!6919707 res!2821478) b!6919710))

(assert (= (and b!6919710 res!2821473) b!6919708))

(assert (= (and b!6919708 res!2821475) b!6919714))

(assert (= (and b!6919707 (not res!2821477)) b!6919719))

(assert (= (and b!6919719 res!2821479) b!6919711))

(assert (= (and b!6919711 (not res!2821474)) b!6919717))

(assert (= (and b!6919717 (not res!2821472)) b!6919718))

(assert (= (or b!6919715 b!6919710 b!6919711) bm!629022))

(declare-fun m!7629758 () Bool)

(assert (=> b!6919717 m!7629758))

(assert (=> b!6919717 m!7629758))

(declare-fun m!7629760 () Bool)

(assert (=> b!6919717 m!7629760))

(assert (=> b!6919708 m!7629758))

(assert (=> b!6919708 m!7629758))

(assert (=> b!6919708 m!7629760))

(declare-fun m!7629762 () Bool)

(assert (=> bm!629022 m!7629762))

(declare-fun m!7629764 () Bool)

(assert (=> b!6919720 m!7629764))

(assert (=> b!6919720 m!7629764))

(declare-fun m!7629766 () Bool)

(assert (=> b!6919720 m!7629766))

(assert (=> b!6919720 m!7629758))

(assert (=> b!6919720 m!7629766))

(assert (=> b!6919720 m!7629758))

(declare-fun m!7629768 () Bool)

(assert (=> b!6919720 m!7629768))

(assert (=> b!6919718 m!7629764))

(assert (=> d!2164298 m!7629762))

(declare-fun m!7629770 () Bool)

(assert (=> d!2164298 m!7629770))

(declare-fun m!7629772 () Bool)

(assert (=> b!6919716 m!7629772))

(assert (=> b!6919714 m!7629764))

(assert (=> b!6919351 d!2164298))

(declare-fun d!2164300 () Bool)

(assert (=> d!2164300 (= (matchR!9051 lt!2469851 s!14361) (matchRSpec!3969 lt!2469851 s!14361))))

(declare-fun lt!2469979 () Unit!160548)

(assert (=> d!2164300 (= lt!2469979 (choose!51519 lt!2469851 s!14361))))

(assert (=> d!2164300 (validRegex!8618 lt!2469851)))

(assert (=> d!2164300 (= (mainMatchTheorem!3969 lt!2469851 s!14361) lt!2469979)))

(declare-fun bs!1846283 () Bool)

(assert (= bs!1846283 d!2164300))

(assert (=> bs!1846283 m!7629532))

(assert (=> bs!1846283 m!7629522))

(declare-fun m!7629774 () Bool)

(assert (=> bs!1846283 m!7629774))

(assert (=> bs!1846283 m!7629770))

(assert (=> b!6919351 d!2164300))

(declare-fun d!2164302 () Bool)

(assert (=> d!2164302 (= (matchR!9051 lt!2469865 s!14361) (matchRSpec!3969 lt!2469865 s!14361))))

(declare-fun lt!2469980 () Unit!160548)

(assert (=> d!2164302 (= lt!2469980 (choose!51519 lt!2469865 s!14361))))

(assert (=> d!2164302 (validRegex!8618 lt!2469865)))

(assert (=> d!2164302 (= (mainMatchTheorem!3969 lt!2469865 s!14361) lt!2469980)))

(declare-fun bs!1846284 () Bool)

(assert (= bs!1846284 d!2164302))

(assert (=> bs!1846284 m!7629526))

(assert (=> bs!1846284 m!7629530))

(declare-fun m!7629776 () Bool)

(assert (=> bs!1846284 m!7629776))

(declare-fun m!7629778 () Bool)

(assert (=> bs!1846284 m!7629778))

(assert (=> b!6919351 d!2164302))

(declare-fun bs!1846285 () Bool)

(declare-fun b!6919737 () Bool)

(assert (= bs!1846285 (and b!6919737 b!6919578)))

(declare-fun lambda!393278 () Int)

(assert (=> bs!1846285 (= (and (= s!14361 lt!2469872) (= (reg!17241 lt!2469851) (reg!17241 lt!2469860)) (= lt!2469851 lt!2469860)) (= lambda!393278 lambda!393270))))

(declare-fun bs!1846286 () Bool)

(assert (= bs!1846286 (and b!6919737 d!2164274)))

(assert (=> bs!1846286 (not (= lambda!393278 lambda!393265))))

(declare-fun bs!1846287 () Bool)

(assert (= bs!1846287 (and b!6919737 b!6919573)))

(assert (=> bs!1846287 (not (= lambda!393278 lambda!393271))))

(declare-fun bs!1846288 () Bool)

(assert (= bs!1846288 (and b!6919737 b!6919352)))

(assert (=> bs!1846288 (not (= lambda!393278 lambda!393235))))

(declare-fun bs!1846289 () Bool)

(assert (= bs!1846289 (and b!6919737 d!2164288)))

(assert (=> bs!1846289 (not (= lambda!393278 lambda!393277))))

(declare-fun bs!1846290 () Bool)

(assert (= bs!1846290 (and b!6919737 b!6919355)))

(assert (=> bs!1846290 (not (= lambda!393278 lambda!393233))))

(assert (=> bs!1846288 (not (= lambda!393278 lambda!393236))))

(assert (=> bs!1846289 (not (= lambda!393278 lambda!393276))))

(assert (=> bs!1846290 (not (= lambda!393278 lambda!393234))))

(declare-fun bs!1846291 () Bool)

(assert (= bs!1846291 (and b!6919737 b!6919356)))

(assert (=> bs!1846291 (not (= lambda!393278 lambda!393238))))

(assert (=> bs!1846291 (not (= lambda!393278 lambda!393237))))

(assert (=> b!6919737 true))

(assert (=> b!6919737 true))

(declare-fun bs!1846292 () Bool)

(declare-fun b!6919732 () Bool)

(assert (= bs!1846292 (and b!6919732 b!6919578)))

(declare-fun lambda!393279 () Int)

(assert (=> bs!1846292 (not (= lambda!393279 lambda!393270))))

(declare-fun bs!1846293 () Bool)

(assert (= bs!1846293 (and b!6919732 d!2164274)))

(assert (=> bs!1846293 (not (= lambda!393279 lambda!393265))))

(declare-fun bs!1846294 () Bool)

(assert (= bs!1846294 (and b!6919732 b!6919573)))

(assert (=> bs!1846294 (= (and (= s!14361 lt!2469872) (= (regOne!34336 lt!2469851) (regOne!34336 lt!2469860)) (= (regTwo!34336 lt!2469851) (regTwo!34336 lt!2469860))) (= lambda!393279 lambda!393271))))

(declare-fun bs!1846295 () Bool)

(assert (= bs!1846295 (and b!6919732 b!6919352)))

(assert (=> bs!1846295 (not (= lambda!393279 lambda!393235))))

(declare-fun bs!1846296 () Bool)

(assert (= bs!1846296 (and b!6919732 b!6919355)))

(assert (=> bs!1846296 (not (= lambda!393279 lambda!393233))))

(assert (=> bs!1846295 (= (and (= s!14361 (_1!37072 lt!2469871)) (= (regOne!34336 lt!2469851) r1!6342) (= (regTwo!34336 lt!2469851) r2!6280)) (= lambda!393279 lambda!393236))))

(declare-fun bs!1846297 () Bool)

(assert (= bs!1846297 (and b!6919732 d!2164288)))

(assert (=> bs!1846297 (not (= lambda!393279 lambda!393276))))

(assert (=> bs!1846296 (= (and (= (regOne!34336 lt!2469851) lt!2469857) (= (regTwo!34336 lt!2469851) r3!135)) (= lambda!393279 lambda!393234))))

(declare-fun bs!1846298 () Bool)

(assert (= bs!1846298 (and b!6919732 b!6919737)))

(assert (=> bs!1846298 (not (= lambda!393279 lambda!393278))))

(assert (=> bs!1846297 (= (and (= s!14361 lt!2469872) (= (regOne!34336 lt!2469851) r2!6280) (= (regTwo!34336 lt!2469851) r3!135)) (= lambda!393279 lambda!393277))))

(declare-fun bs!1846299 () Bool)

(assert (= bs!1846299 (and b!6919732 b!6919356)))

(assert (=> bs!1846299 (= (and (= s!14361 lt!2469872) (= (regOne!34336 lt!2469851) r2!6280) (= (regTwo!34336 lt!2469851) r3!135)) (= lambda!393279 lambda!393238))))

(assert (=> bs!1846299 (not (= lambda!393279 lambda!393237))))

(assert (=> b!6919732 true))

(assert (=> b!6919732 true))

(declare-fun b!6919730 () Bool)

(declare-fun e!4164879 () Bool)

(declare-fun call!629028 () Bool)

(assert (=> b!6919730 (= e!4164879 call!629028)))

(declare-fun b!6919731 () Bool)

(declare-fun c!1284762 () Bool)

(assert (=> b!6919731 (= c!1284762 (is-Union!16912 lt!2469851))))

(declare-fun e!4164876 () Bool)

(declare-fun e!4164880 () Bool)

(assert (=> b!6919731 (= e!4164876 e!4164880)))

(declare-fun e!4164877 () Bool)

(declare-fun call!629029 () Bool)

(assert (=> b!6919732 (= e!4164877 call!629029)))

(declare-fun b!6919733 () Bool)

(declare-fun e!4164878 () Bool)

(assert (=> b!6919733 (= e!4164878 (matchRSpec!3969 (regTwo!34337 lt!2469851) s!14361))))

(declare-fun bm!629023 () Bool)

(declare-fun c!1284760 () Bool)

(assert (=> bm!629023 (= call!629029 (Exists!3914 (ite c!1284760 lambda!393278 lambda!393279)))))

(declare-fun b!6919734 () Bool)

(declare-fun res!2821490 () Bool)

(declare-fun e!4164881 () Bool)

(assert (=> b!6919734 (=> res!2821490 e!4164881)))

(assert (=> b!6919734 (= res!2821490 call!629028)))

(assert (=> b!6919734 (= e!4164877 e!4164881)))

(declare-fun bm!629024 () Bool)

(assert (=> bm!629024 (= call!629028 (isEmpty!38792 s!14361))))

(declare-fun b!6919735 () Bool)

(declare-fun e!4164882 () Bool)

(assert (=> b!6919735 (= e!4164879 e!4164882)))

(declare-fun res!2821488 () Bool)

(assert (=> b!6919735 (= res!2821488 (not (is-EmptyLang!16912 lt!2469851)))))

(assert (=> b!6919735 (=> (not res!2821488) (not e!4164882))))

(declare-fun b!6919736 () Bool)

(assert (=> b!6919736 (= e!4164880 e!4164878)))

(declare-fun res!2821489 () Bool)

(assert (=> b!6919736 (= res!2821489 (matchRSpec!3969 (regOne!34337 lt!2469851) s!14361))))

(assert (=> b!6919736 (=> res!2821489 e!4164878)))

(assert (=> b!6919737 (= e!4164881 call!629029)))

(declare-fun d!2164304 () Bool)

(declare-fun c!1284763 () Bool)

(assert (=> d!2164304 (= c!1284763 (is-EmptyExpr!16912 lt!2469851))))

(assert (=> d!2164304 (= (matchRSpec!3969 lt!2469851 s!14361) e!4164879)))

(declare-fun b!6919729 () Bool)

(assert (=> b!6919729 (= e!4164880 e!4164877)))

(assert (=> b!6919729 (= c!1284760 (is-Star!16912 lt!2469851))))

(declare-fun b!6919738 () Bool)

(declare-fun c!1284761 () Bool)

(assert (=> b!6919738 (= c!1284761 (is-ElementMatch!16912 lt!2469851))))

(assert (=> b!6919738 (= e!4164882 e!4164876)))

(declare-fun b!6919739 () Bool)

(assert (=> b!6919739 (= e!4164876 (= s!14361 (Cons!66541 (c!1284706 lt!2469851) Nil!66541)))))

(assert (= (and d!2164304 c!1284763) b!6919730))

(assert (= (and d!2164304 (not c!1284763)) b!6919735))

(assert (= (and b!6919735 res!2821488) b!6919738))

(assert (= (and b!6919738 c!1284761) b!6919739))

(assert (= (and b!6919738 (not c!1284761)) b!6919731))

(assert (= (and b!6919731 c!1284762) b!6919736))

(assert (= (and b!6919731 (not c!1284762)) b!6919729))

(assert (= (and b!6919736 (not res!2821489)) b!6919733))

(assert (= (and b!6919729 c!1284760) b!6919734))

(assert (= (and b!6919729 (not c!1284760)) b!6919732))

(assert (= (and b!6919734 (not res!2821490)) b!6919737))

(assert (= (or b!6919737 b!6919732) bm!629023))

(assert (= (or b!6919730 b!6919734) bm!629024))

(declare-fun m!7629780 () Bool)

(assert (=> b!6919733 m!7629780))

(declare-fun m!7629782 () Bool)

(assert (=> bm!629023 m!7629782))

(assert (=> bm!629024 m!7629762))

(declare-fun m!7629784 () Bool)

(assert (=> b!6919736 m!7629784))

(assert (=> b!6919351 d!2164304))

(declare-fun b!6919740 () Bool)

(declare-fun res!2821496 () Bool)

(declare-fun e!4164889 () Bool)

(assert (=> b!6919740 (=> res!2821496 e!4164889)))

(declare-fun e!4164883 () Bool)

(assert (=> b!6919740 (= res!2821496 e!4164883)))

(declare-fun res!2821497 () Bool)

(assert (=> b!6919740 (=> (not res!2821497) (not e!4164883))))

(declare-fun lt!2469981 () Bool)

(assert (=> b!6919740 (= res!2821497 lt!2469981)))

(declare-fun b!6919741 () Bool)

(declare-fun res!2821494 () Bool)

(assert (=> b!6919741 (=> (not res!2821494) (not e!4164883))))

(assert (=> b!6919741 (= res!2821494 (isEmpty!38792 (tail!12925 s!14361)))))

(declare-fun b!6919742 () Bool)

(declare-fun e!4164886 () Bool)

(assert (=> b!6919742 (= e!4164886 (not lt!2469981))))

(declare-fun b!6919743 () Bool)

(declare-fun res!2821492 () Bool)

(assert (=> b!6919743 (=> (not res!2821492) (not e!4164883))))

(declare-fun call!629030 () Bool)

(assert (=> b!6919743 (= res!2821492 (not call!629030))))

(declare-fun b!6919744 () Bool)

(declare-fun e!4164884 () Bool)

(declare-fun e!4164888 () Bool)

(assert (=> b!6919744 (= e!4164884 e!4164888)))

(declare-fun res!2821493 () Bool)

(assert (=> b!6919744 (=> res!2821493 e!4164888)))

(assert (=> b!6919744 (= res!2821493 call!629030)))

(declare-fun b!6919745 () Bool)

(declare-fun e!4164887 () Bool)

(assert (=> b!6919745 (= e!4164887 e!4164886)))

(declare-fun c!1284764 () Bool)

(assert (=> b!6919745 (= c!1284764 (is-EmptyLang!16912 lt!2469865))))

(declare-fun b!6919747 () Bool)

(assert (=> b!6919747 (= e!4164883 (= (head!13873 s!14361) (c!1284706 lt!2469865)))))

(declare-fun b!6919748 () Bool)

(assert (=> b!6919748 (= e!4164887 (= lt!2469981 call!629030))))

(declare-fun bm!629025 () Bool)

(assert (=> bm!629025 (= call!629030 (isEmpty!38792 s!14361))))

(declare-fun b!6919749 () Bool)

(declare-fun e!4164885 () Bool)

(assert (=> b!6919749 (= e!4164885 (nullable!6745 lt!2469865))))

(declare-fun d!2164306 () Bool)

(assert (=> d!2164306 e!4164887))

(declare-fun c!1284765 () Bool)

(assert (=> d!2164306 (= c!1284765 (is-EmptyExpr!16912 lt!2469865))))

(assert (=> d!2164306 (= lt!2469981 e!4164885)))

(declare-fun c!1284766 () Bool)

(assert (=> d!2164306 (= c!1284766 (isEmpty!38792 s!14361))))

(assert (=> d!2164306 (validRegex!8618 lt!2469865)))

(assert (=> d!2164306 (= (matchR!9051 lt!2469865 s!14361) lt!2469981)))

(declare-fun b!6919746 () Bool)

(declare-fun res!2821495 () Bool)

(assert (=> b!6919746 (=> res!2821495 e!4164889)))

(assert (=> b!6919746 (= res!2821495 (not (is-ElementMatch!16912 lt!2469865)))))

(assert (=> b!6919746 (= e!4164886 e!4164889)))

(declare-fun b!6919750 () Bool)

(declare-fun res!2821491 () Bool)

(assert (=> b!6919750 (=> res!2821491 e!4164888)))

(assert (=> b!6919750 (= res!2821491 (not (isEmpty!38792 (tail!12925 s!14361))))))

(declare-fun b!6919751 () Bool)

(assert (=> b!6919751 (= e!4164888 (not (= (head!13873 s!14361) (c!1284706 lt!2469865))))))

(declare-fun b!6919752 () Bool)

(assert (=> b!6919752 (= e!4164889 e!4164884)))

(declare-fun res!2821498 () Bool)

(assert (=> b!6919752 (=> (not res!2821498) (not e!4164884))))

(assert (=> b!6919752 (= res!2821498 (not lt!2469981))))

(declare-fun b!6919753 () Bool)

(assert (=> b!6919753 (= e!4164885 (matchR!9051 (derivativeStep!5420 lt!2469865 (head!13873 s!14361)) (tail!12925 s!14361)))))

(assert (= (and d!2164306 c!1284766) b!6919749))

(assert (= (and d!2164306 (not c!1284766)) b!6919753))

(assert (= (and d!2164306 c!1284765) b!6919748))

(assert (= (and d!2164306 (not c!1284765)) b!6919745))

(assert (= (and b!6919745 c!1284764) b!6919742))

(assert (= (and b!6919745 (not c!1284764)) b!6919746))

(assert (= (and b!6919746 (not res!2821495)) b!6919740))

(assert (= (and b!6919740 res!2821497) b!6919743))

(assert (= (and b!6919743 res!2821492) b!6919741))

(assert (= (and b!6919741 res!2821494) b!6919747))

(assert (= (and b!6919740 (not res!2821496)) b!6919752))

(assert (= (and b!6919752 res!2821498) b!6919744))

(assert (= (and b!6919744 (not res!2821493)) b!6919750))

(assert (= (and b!6919750 (not res!2821491)) b!6919751))

(assert (= (or b!6919748 b!6919743 b!6919744) bm!629025))

(assert (=> b!6919750 m!7629758))

(assert (=> b!6919750 m!7629758))

(assert (=> b!6919750 m!7629760))

(assert (=> b!6919741 m!7629758))

(assert (=> b!6919741 m!7629758))

(assert (=> b!6919741 m!7629760))

(assert (=> bm!629025 m!7629762))

(assert (=> b!6919753 m!7629764))

(assert (=> b!6919753 m!7629764))

(declare-fun m!7629786 () Bool)

(assert (=> b!6919753 m!7629786))

(assert (=> b!6919753 m!7629758))

(assert (=> b!6919753 m!7629786))

(assert (=> b!6919753 m!7629758))

(declare-fun m!7629788 () Bool)

(assert (=> b!6919753 m!7629788))

(assert (=> b!6919751 m!7629764))

(assert (=> d!2164306 m!7629762))

(assert (=> d!2164306 m!7629778))

(declare-fun m!7629790 () Bool)

(assert (=> b!6919749 m!7629790))

(assert (=> b!6919747 m!7629764))

(assert (=> b!6919351 d!2164306))

(declare-fun bs!1846300 () Bool)

(declare-fun b!6919762 () Bool)

(assert (= bs!1846300 (and b!6919762 b!6919578)))

(declare-fun lambda!393280 () Int)

(assert (=> bs!1846300 (= (and (= s!14361 lt!2469872) (= (reg!17241 lt!2469865) (reg!17241 lt!2469860)) (= lt!2469865 lt!2469860)) (= lambda!393280 lambda!393270))))

(declare-fun bs!1846301 () Bool)

(assert (= bs!1846301 (and b!6919762 d!2164274)))

(assert (=> bs!1846301 (not (= lambda!393280 lambda!393265))))

(declare-fun bs!1846302 () Bool)

(assert (= bs!1846302 (and b!6919762 b!6919573)))

(assert (=> bs!1846302 (not (= lambda!393280 lambda!393271))))

(declare-fun bs!1846303 () Bool)

(assert (= bs!1846303 (and b!6919762 b!6919352)))

(assert (=> bs!1846303 (not (= lambda!393280 lambda!393235))))

(declare-fun bs!1846304 () Bool)

(assert (= bs!1846304 (and b!6919762 b!6919355)))

(assert (=> bs!1846304 (not (= lambda!393280 lambda!393233))))

(assert (=> bs!1846303 (not (= lambda!393280 lambda!393236))))

(declare-fun bs!1846305 () Bool)

(assert (= bs!1846305 (and b!6919762 d!2164288)))

(assert (=> bs!1846305 (not (= lambda!393280 lambda!393276))))

(declare-fun bs!1846306 () Bool)

(assert (= bs!1846306 (and b!6919762 b!6919737)))

(assert (=> bs!1846306 (= (and (= (reg!17241 lt!2469865) (reg!17241 lt!2469851)) (= lt!2469865 lt!2469851)) (= lambda!393280 lambda!393278))))

(assert (=> bs!1846305 (not (= lambda!393280 lambda!393277))))

(declare-fun bs!1846307 () Bool)

(assert (= bs!1846307 (and b!6919762 b!6919356)))

(assert (=> bs!1846307 (not (= lambda!393280 lambda!393238))))

(assert (=> bs!1846307 (not (= lambda!393280 lambda!393237))))

(declare-fun bs!1846308 () Bool)

(assert (= bs!1846308 (and b!6919762 b!6919732)))

(assert (=> bs!1846308 (not (= lambda!393280 lambda!393279))))

(assert (=> bs!1846304 (not (= lambda!393280 lambda!393234))))

(assert (=> b!6919762 true))

(assert (=> b!6919762 true))

(declare-fun bs!1846309 () Bool)

(declare-fun b!6919757 () Bool)

(assert (= bs!1846309 (and b!6919757 b!6919578)))

(declare-fun lambda!393281 () Int)

(assert (=> bs!1846309 (not (= lambda!393281 lambda!393270))))

(declare-fun bs!1846310 () Bool)

(assert (= bs!1846310 (and b!6919757 d!2164274)))

(assert (=> bs!1846310 (not (= lambda!393281 lambda!393265))))

(declare-fun bs!1846311 () Bool)

(assert (= bs!1846311 (and b!6919757 b!6919573)))

(assert (=> bs!1846311 (= (and (= s!14361 lt!2469872) (= (regOne!34336 lt!2469865) (regOne!34336 lt!2469860)) (= (regTwo!34336 lt!2469865) (regTwo!34336 lt!2469860))) (= lambda!393281 lambda!393271))))

(declare-fun bs!1846312 () Bool)

(assert (= bs!1846312 (and b!6919757 b!6919352)))

(assert (=> bs!1846312 (not (= lambda!393281 lambda!393235))))

(declare-fun bs!1846313 () Bool)

(assert (= bs!1846313 (and b!6919757 b!6919355)))

(assert (=> bs!1846313 (not (= lambda!393281 lambda!393233))))

(declare-fun bs!1846314 () Bool)

(assert (= bs!1846314 (and b!6919757 b!6919762)))

(assert (=> bs!1846314 (not (= lambda!393281 lambda!393280))))

(assert (=> bs!1846312 (= (and (= s!14361 (_1!37072 lt!2469871)) (= (regOne!34336 lt!2469865) r1!6342) (= (regTwo!34336 lt!2469865) r2!6280)) (= lambda!393281 lambda!393236))))

(declare-fun bs!1846315 () Bool)

(assert (= bs!1846315 (and b!6919757 d!2164288)))

(assert (=> bs!1846315 (not (= lambda!393281 lambda!393276))))

(declare-fun bs!1846316 () Bool)

(assert (= bs!1846316 (and b!6919757 b!6919737)))

(assert (=> bs!1846316 (not (= lambda!393281 lambda!393278))))

(assert (=> bs!1846315 (= (and (= s!14361 lt!2469872) (= (regOne!34336 lt!2469865) r2!6280) (= (regTwo!34336 lt!2469865) r3!135)) (= lambda!393281 lambda!393277))))

(declare-fun bs!1846317 () Bool)

(assert (= bs!1846317 (and b!6919757 b!6919356)))

(assert (=> bs!1846317 (= (and (= s!14361 lt!2469872) (= (regOne!34336 lt!2469865) r2!6280) (= (regTwo!34336 lt!2469865) r3!135)) (= lambda!393281 lambda!393238))))

(assert (=> bs!1846317 (not (= lambda!393281 lambda!393237))))

(declare-fun bs!1846318 () Bool)

(assert (= bs!1846318 (and b!6919757 b!6919732)))

(assert (=> bs!1846318 (= (and (= (regOne!34336 lt!2469865) (regOne!34336 lt!2469851)) (= (regTwo!34336 lt!2469865) (regTwo!34336 lt!2469851))) (= lambda!393281 lambda!393279))))

(assert (=> bs!1846313 (= (and (= (regOne!34336 lt!2469865) lt!2469857) (= (regTwo!34336 lt!2469865) r3!135)) (= lambda!393281 lambda!393234))))

(assert (=> b!6919757 true))

(assert (=> b!6919757 true))

(declare-fun b!6919755 () Bool)

(declare-fun e!4164893 () Bool)

(declare-fun call!629031 () Bool)

(assert (=> b!6919755 (= e!4164893 call!629031)))

(declare-fun b!6919756 () Bool)

(declare-fun c!1284769 () Bool)

(assert (=> b!6919756 (= c!1284769 (is-Union!16912 lt!2469865))))

(declare-fun e!4164890 () Bool)

(declare-fun e!4164894 () Bool)

(assert (=> b!6919756 (= e!4164890 e!4164894)))

(declare-fun e!4164891 () Bool)

(declare-fun call!629032 () Bool)

(assert (=> b!6919757 (= e!4164891 call!629032)))

(declare-fun b!6919758 () Bool)

(declare-fun e!4164892 () Bool)

(assert (=> b!6919758 (= e!4164892 (matchRSpec!3969 (regTwo!34337 lt!2469865) s!14361))))

(declare-fun bm!629026 () Bool)

(declare-fun c!1284767 () Bool)

(assert (=> bm!629026 (= call!629032 (Exists!3914 (ite c!1284767 lambda!393280 lambda!393281)))))

(declare-fun b!6919759 () Bool)

(declare-fun res!2821501 () Bool)

(declare-fun e!4164895 () Bool)

(assert (=> b!6919759 (=> res!2821501 e!4164895)))

(assert (=> b!6919759 (= res!2821501 call!629031)))

(assert (=> b!6919759 (= e!4164891 e!4164895)))

(declare-fun bm!629027 () Bool)

(assert (=> bm!629027 (= call!629031 (isEmpty!38792 s!14361))))

(declare-fun b!6919760 () Bool)

(declare-fun e!4164896 () Bool)

(assert (=> b!6919760 (= e!4164893 e!4164896)))

(declare-fun res!2821499 () Bool)

(assert (=> b!6919760 (= res!2821499 (not (is-EmptyLang!16912 lt!2469865)))))

(assert (=> b!6919760 (=> (not res!2821499) (not e!4164896))))

(declare-fun b!6919761 () Bool)

(assert (=> b!6919761 (= e!4164894 e!4164892)))

(declare-fun res!2821500 () Bool)

(assert (=> b!6919761 (= res!2821500 (matchRSpec!3969 (regOne!34337 lt!2469865) s!14361))))

(assert (=> b!6919761 (=> res!2821500 e!4164892)))

(assert (=> b!6919762 (= e!4164895 call!629032)))

(declare-fun d!2164308 () Bool)

(declare-fun c!1284770 () Bool)

(assert (=> d!2164308 (= c!1284770 (is-EmptyExpr!16912 lt!2469865))))

(assert (=> d!2164308 (= (matchRSpec!3969 lt!2469865 s!14361) e!4164893)))

(declare-fun b!6919754 () Bool)

(assert (=> b!6919754 (= e!4164894 e!4164891)))

(assert (=> b!6919754 (= c!1284767 (is-Star!16912 lt!2469865))))

(declare-fun b!6919763 () Bool)

(declare-fun c!1284768 () Bool)

(assert (=> b!6919763 (= c!1284768 (is-ElementMatch!16912 lt!2469865))))

(assert (=> b!6919763 (= e!4164896 e!4164890)))

(declare-fun b!6919764 () Bool)

(assert (=> b!6919764 (= e!4164890 (= s!14361 (Cons!66541 (c!1284706 lt!2469865) Nil!66541)))))

(assert (= (and d!2164308 c!1284770) b!6919755))

(assert (= (and d!2164308 (not c!1284770)) b!6919760))

(assert (= (and b!6919760 res!2821499) b!6919763))

(assert (= (and b!6919763 c!1284768) b!6919764))

(assert (= (and b!6919763 (not c!1284768)) b!6919756))

(assert (= (and b!6919756 c!1284769) b!6919761))

(assert (= (and b!6919756 (not c!1284769)) b!6919754))

(assert (= (and b!6919761 (not res!2821500)) b!6919758))

(assert (= (and b!6919754 c!1284767) b!6919759))

(assert (= (and b!6919754 (not c!1284767)) b!6919757))

(assert (= (and b!6919759 (not res!2821501)) b!6919762))

(assert (= (or b!6919762 b!6919757) bm!629026))

(assert (= (or b!6919755 b!6919759) bm!629027))

(declare-fun m!7629792 () Bool)

(assert (=> b!6919758 m!7629792))

(declare-fun m!7629794 () Bool)

(assert (=> bm!629026 m!7629794))

(assert (=> bm!629027 m!7629762))

(declare-fun m!7629796 () Bool)

(assert (=> b!6919761 m!7629796))

(assert (=> b!6919351 d!2164308))

(declare-fun b!6919774 () Bool)

(declare-fun res!2821512 () Bool)

(declare-fun e!4164908 () Bool)

(assert (=> b!6919774 (=> res!2821512 e!4164908)))

(declare-fun e!4164902 () Bool)

(assert (=> b!6919774 (= res!2821512 e!4164902)))

(declare-fun res!2821513 () Bool)

(assert (=> b!6919774 (=> (not res!2821513) (not e!4164902))))

(declare-fun lt!2469985 () Bool)

(assert (=> b!6919774 (= res!2821513 lt!2469985)))

(declare-fun b!6919775 () Bool)

(declare-fun res!2821510 () Bool)

(assert (=> b!6919775 (=> (not res!2821510) (not e!4164902))))

(assert (=> b!6919775 (= res!2821510 (isEmpty!38792 (tail!12925 (_2!37072 lt!2469871))))))

(declare-fun b!6919776 () Bool)

(declare-fun e!4164905 () Bool)

(assert (=> b!6919776 (= e!4164905 (not lt!2469985))))

(declare-fun b!6919777 () Bool)

(declare-fun res!2821508 () Bool)

(assert (=> b!6919777 (=> (not res!2821508) (not e!4164902))))

(declare-fun call!629033 () Bool)

(assert (=> b!6919777 (= res!2821508 (not call!629033))))

(declare-fun b!6919778 () Bool)

(declare-fun e!4164903 () Bool)

(declare-fun e!4164907 () Bool)

(assert (=> b!6919778 (= e!4164903 e!4164907)))

(declare-fun res!2821509 () Bool)

(assert (=> b!6919778 (=> res!2821509 e!4164907)))

(assert (=> b!6919778 (= res!2821509 call!629033)))

(declare-fun b!6919779 () Bool)

(declare-fun e!4164906 () Bool)

(assert (=> b!6919779 (= e!4164906 e!4164905)))

(declare-fun c!1284773 () Bool)

(assert (=> b!6919779 (= c!1284773 (is-EmptyLang!16912 r3!135))))

(declare-fun b!6919781 () Bool)

(assert (=> b!6919781 (= e!4164902 (= (head!13873 (_2!37072 lt!2469871)) (c!1284706 r3!135)))))

(declare-fun b!6919782 () Bool)

(assert (=> b!6919782 (= e!4164906 (= lt!2469985 call!629033))))

(declare-fun bm!629028 () Bool)

(assert (=> bm!629028 (= call!629033 (isEmpty!38792 (_2!37072 lt!2469871)))))

(declare-fun b!6919783 () Bool)

(declare-fun e!4164904 () Bool)

(assert (=> b!6919783 (= e!4164904 (nullable!6745 r3!135))))

(declare-fun d!2164310 () Bool)

(assert (=> d!2164310 e!4164906))

(declare-fun c!1284774 () Bool)

(assert (=> d!2164310 (= c!1284774 (is-EmptyExpr!16912 r3!135))))

(assert (=> d!2164310 (= lt!2469985 e!4164904)))

(declare-fun c!1284775 () Bool)

(assert (=> d!2164310 (= c!1284775 (isEmpty!38792 (_2!37072 lt!2469871)))))

(assert (=> d!2164310 (validRegex!8618 r3!135)))

(assert (=> d!2164310 (= (matchR!9051 r3!135 (_2!37072 lt!2469871)) lt!2469985)))

(declare-fun b!6919780 () Bool)

(declare-fun res!2821511 () Bool)

(assert (=> b!6919780 (=> res!2821511 e!4164908)))

(assert (=> b!6919780 (= res!2821511 (not (is-ElementMatch!16912 r3!135)))))

(assert (=> b!6919780 (= e!4164905 e!4164908)))

(declare-fun b!6919784 () Bool)

(declare-fun res!2821507 () Bool)

(assert (=> b!6919784 (=> res!2821507 e!4164907)))

(assert (=> b!6919784 (= res!2821507 (not (isEmpty!38792 (tail!12925 (_2!37072 lt!2469871)))))))

(declare-fun b!6919785 () Bool)

(assert (=> b!6919785 (= e!4164907 (not (= (head!13873 (_2!37072 lt!2469871)) (c!1284706 r3!135))))))

(declare-fun b!6919786 () Bool)

(assert (=> b!6919786 (= e!4164908 e!4164903)))

(declare-fun res!2821514 () Bool)

(assert (=> b!6919786 (=> (not res!2821514) (not e!4164903))))

(assert (=> b!6919786 (= res!2821514 (not lt!2469985))))

(declare-fun b!6919787 () Bool)

(assert (=> b!6919787 (= e!4164904 (matchR!9051 (derivativeStep!5420 r3!135 (head!13873 (_2!37072 lt!2469871))) (tail!12925 (_2!37072 lt!2469871))))))

(assert (= (and d!2164310 c!1284775) b!6919783))

(assert (= (and d!2164310 (not c!1284775)) b!6919787))

(assert (= (and d!2164310 c!1284774) b!6919782))

(assert (= (and d!2164310 (not c!1284774)) b!6919779))

(assert (= (and b!6919779 c!1284773) b!6919776))

(assert (= (and b!6919779 (not c!1284773)) b!6919780))

(assert (= (and b!6919780 (not res!2821511)) b!6919774))

(assert (= (and b!6919774 res!2821513) b!6919777))

(assert (= (and b!6919777 res!2821508) b!6919775))

(assert (= (and b!6919775 res!2821510) b!6919781))

(assert (= (and b!6919774 (not res!2821512)) b!6919786))

(assert (= (and b!6919786 res!2821514) b!6919778))

(assert (= (and b!6919778 (not res!2821509)) b!6919784))

(assert (= (and b!6919784 (not res!2821507)) b!6919785))

(assert (= (or b!6919782 b!6919777 b!6919778) bm!629028))

(declare-fun m!7629814 () Bool)

(assert (=> b!6919784 m!7629814))

(assert (=> b!6919784 m!7629814))

(declare-fun m!7629816 () Bool)

(assert (=> b!6919784 m!7629816))

(assert (=> b!6919775 m!7629814))

(assert (=> b!6919775 m!7629814))

(assert (=> b!6919775 m!7629816))

(declare-fun m!7629820 () Bool)

(assert (=> bm!629028 m!7629820))

(declare-fun m!7629822 () Bool)

(assert (=> b!6919787 m!7629822))

(assert (=> b!6919787 m!7629822))

(declare-fun m!7629824 () Bool)

(assert (=> b!6919787 m!7629824))

(assert (=> b!6919787 m!7629814))

(assert (=> b!6919787 m!7629824))

(assert (=> b!6919787 m!7629814))

(declare-fun m!7629828 () Bool)

(assert (=> b!6919787 m!7629828))

(assert (=> b!6919785 m!7629822))

(assert (=> d!2164310 m!7629820))

(assert (=> d!2164310 m!7629464))

(declare-fun m!7629830 () Bool)

(assert (=> b!6919783 m!7629830))

(assert (=> b!6919781 m!7629822))

(assert (=> b!6919344 d!2164310))

(declare-fun bs!1846319 () Bool)

(declare-fun d!2164312 () Bool)

(assert (= bs!1846319 (and d!2164312 b!6919578)))

(declare-fun lambda!393282 () Int)

(assert (=> bs!1846319 (not (= lambda!393282 lambda!393270))))

(declare-fun bs!1846320 () Bool)

(assert (= bs!1846320 (and d!2164312 d!2164274)))

(assert (=> bs!1846320 (= (and (= s!14361 lt!2469872) (= lt!2469857 r2!6280)) (= lambda!393282 lambda!393265))))

(declare-fun bs!1846321 () Bool)

(assert (= bs!1846321 (and d!2164312 b!6919573)))

(assert (=> bs!1846321 (not (= lambda!393282 lambda!393271))))

(declare-fun bs!1846322 () Bool)

(assert (= bs!1846322 (and d!2164312 b!6919352)))

(assert (=> bs!1846322 (= (and (= s!14361 (_1!37072 lt!2469871)) (= lt!2469857 r1!6342) (= r3!135 r2!6280)) (= lambda!393282 lambda!393235))))

(declare-fun bs!1846323 () Bool)

(assert (= bs!1846323 (and d!2164312 b!6919355)))

(assert (=> bs!1846323 (= lambda!393282 lambda!393233)))

(assert (=> bs!1846322 (not (= lambda!393282 lambda!393236))))

(declare-fun bs!1846324 () Bool)

(assert (= bs!1846324 (and d!2164312 d!2164288)))

(assert (=> bs!1846324 (= (and (= s!14361 lt!2469872) (= lt!2469857 r2!6280)) (= lambda!393282 lambda!393276))))

(declare-fun bs!1846325 () Bool)

(assert (= bs!1846325 (and d!2164312 b!6919737)))

(assert (=> bs!1846325 (not (= lambda!393282 lambda!393278))))

(assert (=> bs!1846324 (not (= lambda!393282 lambda!393277))))

(declare-fun bs!1846326 () Bool)

(assert (= bs!1846326 (and d!2164312 b!6919757)))

(assert (=> bs!1846326 (not (= lambda!393282 lambda!393281))))

(declare-fun bs!1846328 () Bool)

(assert (= bs!1846328 (and d!2164312 b!6919762)))

(assert (=> bs!1846328 (not (= lambda!393282 lambda!393280))))

(declare-fun bs!1846329 () Bool)

(assert (= bs!1846329 (and d!2164312 b!6919356)))

(assert (=> bs!1846329 (not (= lambda!393282 lambda!393238))))

(assert (=> bs!1846329 (= (and (= s!14361 lt!2469872) (= lt!2469857 r2!6280)) (= lambda!393282 lambda!393237))))

(declare-fun bs!1846330 () Bool)

(assert (= bs!1846330 (and d!2164312 b!6919732)))

(assert (=> bs!1846330 (not (= lambda!393282 lambda!393279))))

(assert (=> bs!1846323 (not (= lambda!393282 lambda!393234))))

(assert (=> d!2164312 true))

(assert (=> d!2164312 true))

(assert (=> d!2164312 true))

(declare-fun lambda!393283 () Int)

(assert (=> bs!1846319 (not (= lambda!393283 lambda!393270))))

(assert (=> bs!1846320 (not (= lambda!393283 lambda!393265))))

(assert (=> bs!1846321 (= (and (= s!14361 lt!2469872) (= lt!2469857 (regOne!34336 lt!2469860)) (= r3!135 (regTwo!34336 lt!2469860))) (= lambda!393283 lambda!393271))))

(assert (=> bs!1846322 (not (= lambda!393283 lambda!393235))))

(assert (=> bs!1846323 (not (= lambda!393283 lambda!393233))))

(declare-fun bs!1846331 () Bool)

(assert (= bs!1846331 d!2164312))

(assert (=> bs!1846331 (not (= lambda!393283 lambda!393282))))

(assert (=> bs!1846322 (= (and (= s!14361 (_1!37072 lt!2469871)) (= lt!2469857 r1!6342) (= r3!135 r2!6280)) (= lambda!393283 lambda!393236))))

(assert (=> bs!1846324 (not (= lambda!393283 lambda!393276))))

(assert (=> bs!1846325 (not (= lambda!393283 lambda!393278))))

(assert (=> bs!1846324 (= (and (= s!14361 lt!2469872) (= lt!2469857 r2!6280)) (= lambda!393283 lambda!393277))))

(assert (=> bs!1846326 (= (and (= lt!2469857 (regOne!34336 lt!2469865)) (= r3!135 (regTwo!34336 lt!2469865))) (= lambda!393283 lambda!393281))))

(assert (=> bs!1846328 (not (= lambda!393283 lambda!393280))))

(assert (=> bs!1846329 (= (and (= s!14361 lt!2469872) (= lt!2469857 r2!6280)) (= lambda!393283 lambda!393238))))

(assert (=> bs!1846329 (not (= lambda!393283 lambda!393237))))

(assert (=> bs!1846330 (= (and (= lt!2469857 (regOne!34336 lt!2469851)) (= r3!135 (regTwo!34336 lt!2469851))) (= lambda!393283 lambda!393279))))

(assert (=> bs!1846323 (= lambda!393283 lambda!393234)))

(assert (=> d!2164312 true))

(assert (=> d!2164312 true))

(assert (=> d!2164312 true))

(assert (=> d!2164312 (= (Exists!3914 lambda!393282) (Exists!3914 lambda!393283))))

(declare-fun lt!2469986 () Unit!160548)

(assert (=> d!2164312 (= lt!2469986 (choose!51521 lt!2469857 r3!135 s!14361))))

(assert (=> d!2164312 (validRegex!8618 lt!2469857)))

(assert (=> d!2164312 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2381 lt!2469857 r3!135 s!14361) lt!2469986)))

(declare-fun m!7629836 () Bool)

(assert (=> bs!1846331 m!7629836))

(declare-fun m!7629838 () Bool)

(assert (=> bs!1846331 m!7629838))

(declare-fun m!7629840 () Bool)

(assert (=> bs!1846331 m!7629840))

(declare-fun m!7629842 () Bool)

(assert (=> bs!1846331 m!7629842))

(assert (=> b!6919355 d!2164312))

(declare-fun bs!1846332 () Bool)

(declare-fun d!2164318 () Bool)

(assert (= bs!1846332 (and d!2164318 b!6919578)))

(declare-fun lambda!393284 () Int)

(assert (=> bs!1846332 (not (= lambda!393284 lambda!393270))))

(declare-fun bs!1846333 () Bool)

(assert (= bs!1846333 (and d!2164318 d!2164274)))

(assert (=> bs!1846333 (= (and (= s!14361 lt!2469872) (= lt!2469857 r2!6280)) (= lambda!393284 lambda!393265))))

(declare-fun bs!1846334 () Bool)

(assert (= bs!1846334 (and d!2164318 b!6919573)))

(assert (=> bs!1846334 (not (= lambda!393284 lambda!393271))))

(declare-fun bs!1846335 () Bool)

(assert (= bs!1846335 (and d!2164318 b!6919352)))

(assert (=> bs!1846335 (= (and (= s!14361 (_1!37072 lt!2469871)) (= lt!2469857 r1!6342) (= r3!135 r2!6280)) (= lambda!393284 lambda!393235))))

(declare-fun bs!1846336 () Bool)

(assert (= bs!1846336 (and d!2164318 b!6919355)))

(assert (=> bs!1846336 (= lambda!393284 lambda!393233)))

(declare-fun bs!1846337 () Bool)

(assert (= bs!1846337 (and d!2164318 d!2164312)))

(assert (=> bs!1846337 (= lambda!393284 lambda!393282)))

(assert (=> bs!1846335 (not (= lambda!393284 lambda!393236))))

(declare-fun bs!1846338 () Bool)

(assert (= bs!1846338 (and d!2164318 d!2164288)))

(assert (=> bs!1846338 (= (and (= s!14361 lt!2469872) (= lt!2469857 r2!6280)) (= lambda!393284 lambda!393276))))

(assert (=> bs!1846337 (not (= lambda!393284 lambda!393283))))

(declare-fun bs!1846339 () Bool)

(assert (= bs!1846339 (and d!2164318 b!6919737)))

(assert (=> bs!1846339 (not (= lambda!393284 lambda!393278))))

(assert (=> bs!1846338 (not (= lambda!393284 lambda!393277))))

(declare-fun bs!1846340 () Bool)

(assert (= bs!1846340 (and d!2164318 b!6919757)))

(assert (=> bs!1846340 (not (= lambda!393284 lambda!393281))))

(declare-fun bs!1846341 () Bool)

(assert (= bs!1846341 (and d!2164318 b!6919762)))

(assert (=> bs!1846341 (not (= lambda!393284 lambda!393280))))

(declare-fun bs!1846342 () Bool)

(assert (= bs!1846342 (and d!2164318 b!6919356)))

(assert (=> bs!1846342 (not (= lambda!393284 lambda!393238))))

(assert (=> bs!1846342 (= (and (= s!14361 lt!2469872) (= lt!2469857 r2!6280)) (= lambda!393284 lambda!393237))))

(declare-fun bs!1846343 () Bool)

(assert (= bs!1846343 (and d!2164318 b!6919732)))

(assert (=> bs!1846343 (not (= lambda!393284 lambda!393279))))

(assert (=> bs!1846336 (not (= lambda!393284 lambda!393234))))

(assert (=> d!2164318 true))

(assert (=> d!2164318 true))

(assert (=> d!2164318 true))

(assert (=> d!2164318 (= (isDefined!13384 (findConcatSeparation!3095 lt!2469857 r3!135 Nil!66541 s!14361 s!14361)) (Exists!3914 lambda!393284))))

(declare-fun lt!2469987 () Unit!160548)

(assert (=> d!2164318 (= lt!2469987 (choose!51520 lt!2469857 r3!135 s!14361))))

(assert (=> d!2164318 (validRegex!8618 lt!2469857)))

(assert (=> d!2164318 (= (lemmaFindConcatSeparationEquivalentToExists!2857 lt!2469857 r3!135 s!14361) lt!2469987)))

(declare-fun bs!1846344 () Bool)

(assert (= bs!1846344 d!2164318))

(assert (=> bs!1846344 m!7629842))

(declare-fun m!7629844 () Bool)

(assert (=> bs!1846344 m!7629844))

(assert (=> bs!1846344 m!7629538))

(declare-fun m!7629846 () Bool)

(assert (=> bs!1846344 m!7629846))

(assert (=> bs!1846344 m!7629538))

(declare-fun m!7629848 () Bool)

(assert (=> bs!1846344 m!7629848))

(assert (=> b!6919355 d!2164318))

(declare-fun d!2164320 () Bool)

(assert (=> d!2164320 (= (Exists!3914 lambda!393233) (choose!51518 lambda!393233))))

(declare-fun bs!1846345 () Bool)

(assert (= bs!1846345 d!2164320))

(declare-fun m!7629850 () Bool)

(assert (=> bs!1846345 m!7629850))

(assert (=> b!6919355 d!2164320))

(declare-fun d!2164322 () Bool)

(assert (=> d!2164322 (= (matchR!9051 lt!2469857 (_1!37072 lt!2469871)) (matchRSpec!3969 lt!2469857 (_1!37072 lt!2469871)))))

(declare-fun lt!2469988 () Unit!160548)

(assert (=> d!2164322 (= lt!2469988 (choose!51519 lt!2469857 (_1!37072 lt!2469871)))))

(assert (=> d!2164322 (validRegex!8618 lt!2469857)))

(assert (=> d!2164322 (= (mainMatchTheorem!3969 lt!2469857 (_1!37072 lt!2469871)) lt!2469988)))

(declare-fun bs!1846346 () Bool)

(assert (= bs!1846346 d!2164322))

(assert (=> bs!1846346 m!7629542))

(assert (=> bs!1846346 m!7629546))

(declare-fun m!7629852 () Bool)

(assert (=> bs!1846346 m!7629852))

(assert (=> bs!1846346 m!7629842))

(assert (=> b!6919355 d!2164322))

(declare-fun b!6919788 () Bool)

(declare-fun res!2821520 () Bool)

(declare-fun e!4164915 () Bool)

(assert (=> b!6919788 (=> res!2821520 e!4164915)))

(declare-fun e!4164909 () Bool)

(assert (=> b!6919788 (= res!2821520 e!4164909)))

(declare-fun res!2821521 () Bool)

(assert (=> b!6919788 (=> (not res!2821521) (not e!4164909))))

(declare-fun lt!2469989 () Bool)

(assert (=> b!6919788 (= res!2821521 lt!2469989)))

(declare-fun b!6919789 () Bool)

(declare-fun res!2821518 () Bool)

(assert (=> b!6919789 (=> (not res!2821518) (not e!4164909))))

(assert (=> b!6919789 (= res!2821518 (isEmpty!38792 (tail!12925 (_1!37072 lt!2469871))))))

(declare-fun b!6919790 () Bool)

(declare-fun e!4164912 () Bool)

(assert (=> b!6919790 (= e!4164912 (not lt!2469989))))

(declare-fun b!6919791 () Bool)

(declare-fun res!2821516 () Bool)

(assert (=> b!6919791 (=> (not res!2821516) (not e!4164909))))

(declare-fun call!629034 () Bool)

(assert (=> b!6919791 (= res!2821516 (not call!629034))))

(declare-fun b!6919792 () Bool)

(declare-fun e!4164910 () Bool)

(declare-fun e!4164914 () Bool)

(assert (=> b!6919792 (= e!4164910 e!4164914)))

(declare-fun res!2821517 () Bool)

(assert (=> b!6919792 (=> res!2821517 e!4164914)))

(assert (=> b!6919792 (= res!2821517 call!629034)))

(declare-fun b!6919793 () Bool)

(declare-fun e!4164913 () Bool)

(assert (=> b!6919793 (= e!4164913 e!4164912)))

(declare-fun c!1284776 () Bool)

(assert (=> b!6919793 (= c!1284776 (is-EmptyLang!16912 lt!2469857))))

(declare-fun b!6919795 () Bool)

(assert (=> b!6919795 (= e!4164909 (= (head!13873 (_1!37072 lt!2469871)) (c!1284706 lt!2469857)))))

(declare-fun b!6919796 () Bool)

(assert (=> b!6919796 (= e!4164913 (= lt!2469989 call!629034))))

(declare-fun bm!629029 () Bool)

(assert (=> bm!629029 (= call!629034 (isEmpty!38792 (_1!37072 lt!2469871)))))

(declare-fun b!6919797 () Bool)

(declare-fun e!4164911 () Bool)

(assert (=> b!6919797 (= e!4164911 (nullable!6745 lt!2469857))))

(declare-fun d!2164324 () Bool)

(assert (=> d!2164324 e!4164913))

(declare-fun c!1284777 () Bool)

(assert (=> d!2164324 (= c!1284777 (is-EmptyExpr!16912 lt!2469857))))

(assert (=> d!2164324 (= lt!2469989 e!4164911)))

(declare-fun c!1284778 () Bool)

(assert (=> d!2164324 (= c!1284778 (isEmpty!38792 (_1!37072 lt!2469871)))))

(assert (=> d!2164324 (validRegex!8618 lt!2469857)))

(assert (=> d!2164324 (= (matchR!9051 lt!2469857 (_1!37072 lt!2469871)) lt!2469989)))

(declare-fun b!6919794 () Bool)

(declare-fun res!2821519 () Bool)

(assert (=> b!6919794 (=> res!2821519 e!4164915)))

(assert (=> b!6919794 (= res!2821519 (not (is-ElementMatch!16912 lt!2469857)))))

(assert (=> b!6919794 (= e!4164912 e!4164915)))

(declare-fun b!6919798 () Bool)

(declare-fun res!2821515 () Bool)

(assert (=> b!6919798 (=> res!2821515 e!4164914)))

(assert (=> b!6919798 (= res!2821515 (not (isEmpty!38792 (tail!12925 (_1!37072 lt!2469871)))))))

(declare-fun b!6919799 () Bool)

(assert (=> b!6919799 (= e!4164914 (not (= (head!13873 (_1!37072 lt!2469871)) (c!1284706 lt!2469857))))))

(declare-fun b!6919800 () Bool)

(assert (=> b!6919800 (= e!4164915 e!4164910)))

(declare-fun res!2821522 () Bool)

(assert (=> b!6919800 (=> (not res!2821522) (not e!4164910))))

(assert (=> b!6919800 (= res!2821522 (not lt!2469989))))

(declare-fun b!6919801 () Bool)

(assert (=> b!6919801 (= e!4164911 (matchR!9051 (derivativeStep!5420 lt!2469857 (head!13873 (_1!37072 lt!2469871))) (tail!12925 (_1!37072 lt!2469871))))))

(assert (= (and d!2164324 c!1284778) b!6919797))

(assert (= (and d!2164324 (not c!1284778)) b!6919801))

(assert (= (and d!2164324 c!1284777) b!6919796))

(assert (= (and d!2164324 (not c!1284777)) b!6919793))

(assert (= (and b!6919793 c!1284776) b!6919790))

(assert (= (and b!6919793 (not c!1284776)) b!6919794))

(assert (= (and b!6919794 (not res!2821519)) b!6919788))

(assert (= (and b!6919788 res!2821521) b!6919791))

(assert (= (and b!6919791 res!2821516) b!6919789))

(assert (= (and b!6919789 res!2821518) b!6919795))

(assert (= (and b!6919788 (not res!2821520)) b!6919800))

(assert (= (and b!6919800 res!2821522) b!6919792))

(assert (= (and b!6919792 (not res!2821517)) b!6919798))

(assert (= (and b!6919798 (not res!2821515)) b!6919799))

(assert (= (or b!6919796 b!6919791 b!6919792) bm!629029))

(declare-fun m!7629854 () Bool)

(assert (=> b!6919798 m!7629854))

(assert (=> b!6919798 m!7629854))

(declare-fun m!7629856 () Bool)

(assert (=> b!6919798 m!7629856))

(assert (=> b!6919789 m!7629854))

(assert (=> b!6919789 m!7629854))

(assert (=> b!6919789 m!7629856))

(declare-fun m!7629858 () Bool)

(assert (=> bm!629029 m!7629858))

(declare-fun m!7629860 () Bool)

(assert (=> b!6919801 m!7629860))

(assert (=> b!6919801 m!7629860))

(declare-fun m!7629862 () Bool)

(assert (=> b!6919801 m!7629862))

(assert (=> b!6919801 m!7629854))

(assert (=> b!6919801 m!7629862))

(assert (=> b!6919801 m!7629854))

(declare-fun m!7629864 () Bool)

(assert (=> b!6919801 m!7629864))

(assert (=> b!6919799 m!7629860))

(assert (=> d!2164324 m!7629858))

(assert (=> d!2164324 m!7629842))

(declare-fun m!7629866 () Bool)

(assert (=> b!6919797 m!7629866))

(assert (=> b!6919795 m!7629860))

(assert (=> b!6919355 d!2164324))

(declare-fun d!2164326 () Bool)

(assert (=> d!2164326 (= (isDefined!13384 lt!2469854) (not (isEmpty!38793 lt!2469854)))))

(declare-fun bs!1846347 () Bool)

(assert (= bs!1846347 d!2164326))

(declare-fun m!7629868 () Bool)

(assert (=> bs!1846347 m!7629868))

(assert (=> b!6919355 d!2164326))

(declare-fun d!2164328 () Bool)

(assert (=> d!2164328 (= (get!23309 lt!2469854) (v!52952 lt!2469854))))

(assert (=> b!6919355 d!2164328))

(declare-fun bs!1846348 () Bool)

(declare-fun b!6919810 () Bool)

(assert (= bs!1846348 (and b!6919810 b!6919578)))

(declare-fun lambda!393285 () Int)

(assert (=> bs!1846348 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= (reg!17241 lt!2469857) (reg!17241 lt!2469860)) (= lt!2469857 lt!2469860)) (= lambda!393285 lambda!393270))))

(declare-fun bs!1846349 () Bool)

(assert (= bs!1846349 (and b!6919810 d!2164318)))

(assert (=> bs!1846349 (not (= lambda!393285 lambda!393284))))

(declare-fun bs!1846350 () Bool)

(assert (= bs!1846350 (and b!6919810 d!2164274)))

(assert (=> bs!1846350 (not (= lambda!393285 lambda!393265))))

(declare-fun bs!1846351 () Bool)

(assert (= bs!1846351 (and b!6919810 b!6919573)))

(assert (=> bs!1846351 (not (= lambda!393285 lambda!393271))))

(declare-fun bs!1846352 () Bool)

(assert (= bs!1846352 (and b!6919810 b!6919352)))

(assert (=> bs!1846352 (not (= lambda!393285 lambda!393235))))

(declare-fun bs!1846353 () Bool)

(assert (= bs!1846353 (and b!6919810 b!6919355)))

(assert (=> bs!1846353 (not (= lambda!393285 lambda!393233))))

(declare-fun bs!1846354 () Bool)

(assert (= bs!1846354 (and b!6919810 d!2164312)))

(assert (=> bs!1846354 (not (= lambda!393285 lambda!393282))))

(assert (=> bs!1846352 (not (= lambda!393285 lambda!393236))))

(declare-fun bs!1846355 () Bool)

(assert (= bs!1846355 (and b!6919810 d!2164288)))

(assert (=> bs!1846355 (not (= lambda!393285 lambda!393276))))

(assert (=> bs!1846354 (not (= lambda!393285 lambda!393283))))

(declare-fun bs!1846356 () Bool)

(assert (= bs!1846356 (and b!6919810 b!6919737)))

(assert (=> bs!1846356 (= (and (= (_1!37072 lt!2469871) s!14361) (= (reg!17241 lt!2469857) (reg!17241 lt!2469851)) (= lt!2469857 lt!2469851)) (= lambda!393285 lambda!393278))))

(assert (=> bs!1846355 (not (= lambda!393285 lambda!393277))))

(declare-fun bs!1846357 () Bool)

(assert (= bs!1846357 (and b!6919810 b!6919757)))

(assert (=> bs!1846357 (not (= lambda!393285 lambda!393281))))

(declare-fun bs!1846358 () Bool)

(assert (= bs!1846358 (and b!6919810 b!6919762)))

(assert (=> bs!1846358 (= (and (= (_1!37072 lt!2469871) s!14361) (= (reg!17241 lt!2469857) (reg!17241 lt!2469865)) (= lt!2469857 lt!2469865)) (= lambda!393285 lambda!393280))))

(declare-fun bs!1846359 () Bool)

(assert (= bs!1846359 (and b!6919810 b!6919356)))

(assert (=> bs!1846359 (not (= lambda!393285 lambda!393238))))

(assert (=> bs!1846359 (not (= lambda!393285 lambda!393237))))

(declare-fun bs!1846360 () Bool)

(assert (= bs!1846360 (and b!6919810 b!6919732)))

(assert (=> bs!1846360 (not (= lambda!393285 lambda!393279))))

(assert (=> bs!1846353 (not (= lambda!393285 lambda!393234))))

(assert (=> b!6919810 true))

(assert (=> b!6919810 true))

(declare-fun bs!1846361 () Bool)

(declare-fun b!6919805 () Bool)

(assert (= bs!1846361 (and b!6919805 b!6919578)))

(declare-fun lambda!393286 () Int)

(assert (=> bs!1846361 (not (= lambda!393286 lambda!393270))))

(declare-fun bs!1846362 () Bool)

(assert (= bs!1846362 (and b!6919805 d!2164318)))

(assert (=> bs!1846362 (not (= lambda!393286 lambda!393284))))

(declare-fun bs!1846363 () Bool)

(assert (= bs!1846363 (and b!6919805 d!2164274)))

(assert (=> bs!1846363 (not (= lambda!393286 lambda!393265))))

(declare-fun bs!1846364 () Bool)

(assert (= bs!1846364 (and b!6919805 b!6919573)))

(assert (=> bs!1846364 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= (regOne!34336 lt!2469857) (regOne!34336 lt!2469860)) (= (regTwo!34336 lt!2469857) (regTwo!34336 lt!2469860))) (= lambda!393286 lambda!393271))))

(declare-fun bs!1846365 () Bool)

(assert (= bs!1846365 (and b!6919805 b!6919352)))

(assert (=> bs!1846365 (not (= lambda!393286 lambda!393235))))

(declare-fun bs!1846366 () Bool)

(assert (= bs!1846366 (and b!6919805 b!6919355)))

(assert (=> bs!1846366 (not (= lambda!393286 lambda!393233))))

(declare-fun bs!1846367 () Bool)

(assert (= bs!1846367 (and b!6919805 d!2164312)))

(assert (=> bs!1846367 (not (= lambda!393286 lambda!393282))))

(assert (=> bs!1846365 (= (and (= (regOne!34336 lt!2469857) r1!6342) (= (regTwo!34336 lt!2469857) r2!6280)) (= lambda!393286 lambda!393236))))

(declare-fun bs!1846368 () Bool)

(assert (= bs!1846368 (and b!6919805 b!6919810)))

(assert (=> bs!1846368 (not (= lambda!393286 lambda!393285))))

(declare-fun bs!1846369 () Bool)

(assert (= bs!1846369 (and b!6919805 d!2164288)))

(assert (=> bs!1846369 (not (= lambda!393286 lambda!393276))))

(assert (=> bs!1846367 (= (and (= (_1!37072 lt!2469871) s!14361) (= (regOne!34336 lt!2469857) lt!2469857) (= (regTwo!34336 lt!2469857) r3!135)) (= lambda!393286 lambda!393283))))

(declare-fun bs!1846370 () Bool)

(assert (= bs!1846370 (and b!6919805 b!6919737)))

(assert (=> bs!1846370 (not (= lambda!393286 lambda!393278))))

(assert (=> bs!1846369 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= (regOne!34336 lt!2469857) r2!6280) (= (regTwo!34336 lt!2469857) r3!135)) (= lambda!393286 lambda!393277))))

(declare-fun bs!1846371 () Bool)

(assert (= bs!1846371 (and b!6919805 b!6919757)))

(assert (=> bs!1846371 (= (and (= (_1!37072 lt!2469871) s!14361) (= (regOne!34336 lt!2469857) (regOne!34336 lt!2469865)) (= (regTwo!34336 lt!2469857) (regTwo!34336 lt!2469865))) (= lambda!393286 lambda!393281))))

(declare-fun bs!1846372 () Bool)

(assert (= bs!1846372 (and b!6919805 b!6919762)))

(assert (=> bs!1846372 (not (= lambda!393286 lambda!393280))))

(declare-fun bs!1846373 () Bool)

(assert (= bs!1846373 (and b!6919805 b!6919356)))

(assert (=> bs!1846373 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= (regOne!34336 lt!2469857) r2!6280) (= (regTwo!34336 lt!2469857) r3!135)) (= lambda!393286 lambda!393238))))

(assert (=> bs!1846373 (not (= lambda!393286 lambda!393237))))

(declare-fun bs!1846374 () Bool)

(assert (= bs!1846374 (and b!6919805 b!6919732)))

(assert (=> bs!1846374 (= (and (= (_1!37072 lt!2469871) s!14361) (= (regOne!34336 lt!2469857) (regOne!34336 lt!2469851)) (= (regTwo!34336 lt!2469857) (regTwo!34336 lt!2469851))) (= lambda!393286 lambda!393279))))

(assert (=> bs!1846366 (= (and (= (_1!37072 lt!2469871) s!14361) (= (regOne!34336 lt!2469857) lt!2469857) (= (regTwo!34336 lt!2469857) r3!135)) (= lambda!393286 lambda!393234))))

(assert (=> b!6919805 true))

(assert (=> b!6919805 true))

(declare-fun b!6919803 () Bool)

(declare-fun e!4164919 () Bool)

(declare-fun call!629035 () Bool)

(assert (=> b!6919803 (= e!4164919 call!629035)))

(declare-fun b!6919804 () Bool)

(declare-fun c!1284781 () Bool)

(assert (=> b!6919804 (= c!1284781 (is-Union!16912 lt!2469857))))

(declare-fun e!4164916 () Bool)

(declare-fun e!4164920 () Bool)

(assert (=> b!6919804 (= e!4164916 e!4164920)))

(declare-fun e!4164917 () Bool)

(declare-fun call!629036 () Bool)

(assert (=> b!6919805 (= e!4164917 call!629036)))

(declare-fun b!6919806 () Bool)

(declare-fun e!4164918 () Bool)

(assert (=> b!6919806 (= e!4164918 (matchRSpec!3969 (regTwo!34337 lt!2469857) (_1!37072 lt!2469871)))))

(declare-fun c!1284779 () Bool)

(declare-fun bm!629030 () Bool)

(assert (=> bm!629030 (= call!629036 (Exists!3914 (ite c!1284779 lambda!393285 lambda!393286)))))

(declare-fun b!6919807 () Bool)

(declare-fun res!2821525 () Bool)

(declare-fun e!4164921 () Bool)

(assert (=> b!6919807 (=> res!2821525 e!4164921)))

(assert (=> b!6919807 (= res!2821525 call!629035)))

(assert (=> b!6919807 (= e!4164917 e!4164921)))

(declare-fun bm!629031 () Bool)

(assert (=> bm!629031 (= call!629035 (isEmpty!38792 (_1!37072 lt!2469871)))))

(declare-fun b!6919808 () Bool)

(declare-fun e!4164922 () Bool)

(assert (=> b!6919808 (= e!4164919 e!4164922)))

(declare-fun res!2821523 () Bool)

(assert (=> b!6919808 (= res!2821523 (not (is-EmptyLang!16912 lt!2469857)))))

(assert (=> b!6919808 (=> (not res!2821523) (not e!4164922))))

(declare-fun b!6919809 () Bool)

(assert (=> b!6919809 (= e!4164920 e!4164918)))

(declare-fun res!2821524 () Bool)

(assert (=> b!6919809 (= res!2821524 (matchRSpec!3969 (regOne!34337 lt!2469857) (_1!37072 lt!2469871)))))

(assert (=> b!6919809 (=> res!2821524 e!4164918)))

(assert (=> b!6919810 (= e!4164921 call!629036)))

(declare-fun d!2164330 () Bool)

(declare-fun c!1284782 () Bool)

(assert (=> d!2164330 (= c!1284782 (is-EmptyExpr!16912 lt!2469857))))

(assert (=> d!2164330 (= (matchRSpec!3969 lt!2469857 (_1!37072 lt!2469871)) e!4164919)))

(declare-fun b!6919802 () Bool)

(assert (=> b!6919802 (= e!4164920 e!4164917)))

(assert (=> b!6919802 (= c!1284779 (is-Star!16912 lt!2469857))))

(declare-fun b!6919811 () Bool)

(declare-fun c!1284780 () Bool)

(assert (=> b!6919811 (= c!1284780 (is-ElementMatch!16912 lt!2469857))))

(assert (=> b!6919811 (= e!4164922 e!4164916)))

(declare-fun b!6919812 () Bool)

(assert (=> b!6919812 (= e!4164916 (= (_1!37072 lt!2469871) (Cons!66541 (c!1284706 lt!2469857) Nil!66541)))))

(assert (= (and d!2164330 c!1284782) b!6919803))

(assert (= (and d!2164330 (not c!1284782)) b!6919808))

(assert (= (and b!6919808 res!2821523) b!6919811))

(assert (= (and b!6919811 c!1284780) b!6919812))

(assert (= (and b!6919811 (not c!1284780)) b!6919804))

(assert (= (and b!6919804 c!1284781) b!6919809))

(assert (= (and b!6919804 (not c!1284781)) b!6919802))

(assert (= (and b!6919809 (not res!2821524)) b!6919806))

(assert (= (and b!6919802 c!1284779) b!6919807))

(assert (= (and b!6919802 (not c!1284779)) b!6919805))

(assert (= (and b!6919807 (not res!2821525)) b!6919810))

(assert (= (or b!6919810 b!6919805) bm!629030))

(assert (= (or b!6919803 b!6919807) bm!629031))

(declare-fun m!7629870 () Bool)

(assert (=> b!6919806 m!7629870))

(declare-fun m!7629872 () Bool)

(assert (=> bm!629030 m!7629872))

(assert (=> bm!629031 m!7629858))

(declare-fun m!7629874 () Bool)

(assert (=> b!6919809 m!7629874))

(assert (=> b!6919355 d!2164330))

(declare-fun b!6919813 () Bool)

(declare-fun e!4164926 () Option!16681)

(assert (=> b!6919813 (= e!4164926 None!16680)))

(declare-fun b!6919814 () Bool)

(declare-fun e!4164927 () Bool)

(assert (=> b!6919814 (= e!4164927 (matchR!9051 r3!135 s!14361))))

(declare-fun b!6919815 () Bool)

(declare-fun lt!2469993 () Unit!160548)

(declare-fun lt!2469992 () Unit!160548)

(assert (=> b!6919815 (= lt!2469993 lt!2469992)))

(assert (=> b!6919815 (= (++!14955 (++!14955 Nil!66541 (Cons!66541 (h!72989 s!14361) Nil!66541)) (t!380408 s!14361)) s!14361)))

(assert (=> b!6919815 (= lt!2469992 (lemmaMoveElementToOtherListKeepsConcatEq!2824 Nil!66541 (h!72989 s!14361) (t!380408 s!14361) s!14361))))

(assert (=> b!6919815 (= e!4164926 (findConcatSeparation!3095 lt!2469857 r3!135 (++!14955 Nil!66541 (Cons!66541 (h!72989 s!14361) Nil!66541)) (t!380408 s!14361) s!14361))))

(declare-fun b!6919816 () Bool)

(declare-fun res!2821526 () Bool)

(declare-fun e!4164925 () Bool)

(assert (=> b!6919816 (=> (not res!2821526) (not e!4164925))))

(declare-fun lt!2469994 () Option!16681)

(assert (=> b!6919816 (= res!2821526 (matchR!9051 lt!2469857 (_1!37072 (get!23309 lt!2469994))))))

(declare-fun b!6919817 () Bool)

(declare-fun res!2821530 () Bool)

(assert (=> b!6919817 (=> (not res!2821530) (not e!4164925))))

(assert (=> b!6919817 (= res!2821530 (matchR!9051 r3!135 (_2!37072 (get!23309 lt!2469994))))))

(declare-fun b!6919818 () Bool)

(declare-fun e!4164923 () Option!16681)

(assert (=> b!6919818 (= e!4164923 (Some!16680 (tuple2!67539 Nil!66541 s!14361)))))

(declare-fun b!6919819 () Bool)

(declare-fun e!4164924 () Bool)

(assert (=> b!6919819 (= e!4164924 (not (isDefined!13384 lt!2469994)))))

(declare-fun b!6919820 () Bool)

(assert (=> b!6919820 (= e!4164923 e!4164926)))

(declare-fun c!1284784 () Bool)

(assert (=> b!6919820 (= c!1284784 (is-Nil!66541 s!14361))))

(declare-fun d!2164332 () Bool)

(assert (=> d!2164332 e!4164924))

(declare-fun res!2821528 () Bool)

(assert (=> d!2164332 (=> res!2821528 e!4164924)))

(assert (=> d!2164332 (= res!2821528 e!4164925)))

(declare-fun res!2821527 () Bool)

(assert (=> d!2164332 (=> (not res!2821527) (not e!4164925))))

(assert (=> d!2164332 (= res!2821527 (isDefined!13384 lt!2469994))))

(assert (=> d!2164332 (= lt!2469994 e!4164923)))

(declare-fun c!1284783 () Bool)

(assert (=> d!2164332 (= c!1284783 e!4164927)))

(declare-fun res!2821529 () Bool)

(assert (=> d!2164332 (=> (not res!2821529) (not e!4164927))))

(assert (=> d!2164332 (= res!2821529 (matchR!9051 lt!2469857 Nil!66541))))

(assert (=> d!2164332 (validRegex!8618 lt!2469857)))

(assert (=> d!2164332 (= (findConcatSeparation!3095 lt!2469857 r3!135 Nil!66541 s!14361 s!14361) lt!2469994)))

(declare-fun b!6919821 () Bool)

(assert (=> b!6919821 (= e!4164925 (= (++!14955 (_1!37072 (get!23309 lt!2469994)) (_2!37072 (get!23309 lt!2469994))) s!14361))))

(assert (= (and d!2164332 res!2821529) b!6919814))

(assert (= (and d!2164332 c!1284783) b!6919818))

(assert (= (and d!2164332 (not c!1284783)) b!6919820))

(assert (= (and b!6919820 c!1284784) b!6919813))

(assert (= (and b!6919820 (not c!1284784)) b!6919815))

(assert (= (and d!2164332 res!2821527) b!6919816))

(assert (= (and b!6919816 res!2821526) b!6919817))

(assert (= (and b!6919817 res!2821530) b!6919821))

(assert (= (and d!2164332 (not res!2821528)) b!6919819))

(declare-fun m!7629876 () Bool)

(assert (=> b!6919816 m!7629876))

(declare-fun m!7629878 () Bool)

(assert (=> b!6919816 m!7629878))

(declare-fun m!7629880 () Bool)

(assert (=> b!6919819 m!7629880))

(assert (=> b!6919821 m!7629876))

(declare-fun m!7629882 () Bool)

(assert (=> b!6919821 m!7629882))

(declare-fun m!7629884 () Bool)

(assert (=> b!6919814 m!7629884))

(assert (=> b!6919817 m!7629876))

(declare-fun m!7629886 () Bool)

(assert (=> b!6919817 m!7629886))

(assert (=> d!2164332 m!7629880))

(declare-fun m!7629888 () Bool)

(assert (=> d!2164332 m!7629888))

(assert (=> d!2164332 m!7629842))

(declare-fun m!7629890 () Bool)

(assert (=> b!6919815 m!7629890))

(assert (=> b!6919815 m!7629890))

(declare-fun m!7629892 () Bool)

(assert (=> b!6919815 m!7629892))

(declare-fun m!7629894 () Bool)

(assert (=> b!6919815 m!7629894))

(assert (=> b!6919815 m!7629890))

(declare-fun m!7629896 () Bool)

(assert (=> b!6919815 m!7629896))

(assert (=> b!6919355 d!2164332))

(declare-fun d!2164334 () Bool)

(assert (=> d!2164334 (= (Exists!3914 lambda!393234) (choose!51518 lambda!393234))))

(declare-fun bs!1846375 () Bool)

(assert (= bs!1846375 d!2164334))

(declare-fun m!7629898 () Bool)

(assert (=> bs!1846375 m!7629898))

(assert (=> b!6919355 d!2164334))

(declare-fun d!2164336 () Bool)

(assert (=> d!2164336 (= (matchR!9051 r2!6280 (_2!37072 lt!2469855)) (matchRSpec!3969 r2!6280 (_2!37072 lt!2469855)))))

(declare-fun lt!2469995 () Unit!160548)

(assert (=> d!2164336 (= lt!2469995 (choose!51519 r2!6280 (_2!37072 lt!2469855)))))

(assert (=> d!2164336 (validRegex!8618 r2!6280)))

(assert (=> d!2164336 (= (mainMatchTheorem!3969 r2!6280 (_2!37072 lt!2469855)) lt!2469995)))

(declare-fun bs!1846376 () Bool)

(assert (= bs!1846376 d!2164336))

(assert (=> bs!1846376 m!7629520))

(assert (=> bs!1846376 m!7629470))

(declare-fun m!7629900 () Bool)

(assert (=> bs!1846376 m!7629900))

(assert (=> bs!1846376 m!7629534))

(assert (=> b!6919353 d!2164336))

(declare-fun e!4164930 () Bool)

(declare-fun lt!2469996 () List!66665)

(declare-fun b!6919829 () Bool)

(assert (=> b!6919829 (= e!4164930 (or (not (= (_2!37072 lt!2469871) Nil!66541)) (= lt!2469996 (++!14955 (_1!37072 lt!2469855) (_2!37072 lt!2469855)))))))

(declare-fun b!6919827 () Bool)

(declare-fun e!4164931 () List!66665)

(assert (=> b!6919827 (= e!4164931 (Cons!66541 (h!72989 (++!14955 (_1!37072 lt!2469855) (_2!37072 lt!2469855))) (++!14955 (t!380408 (++!14955 (_1!37072 lt!2469855) (_2!37072 lt!2469855))) (_2!37072 lt!2469871))))))

(declare-fun d!2164338 () Bool)

(assert (=> d!2164338 e!4164930))

(declare-fun res!2821535 () Bool)

(assert (=> d!2164338 (=> (not res!2821535) (not e!4164930))))

(assert (=> d!2164338 (= res!2821535 (= (content!13073 lt!2469996) (set.union (content!13073 (++!14955 (_1!37072 lt!2469855) (_2!37072 lt!2469855))) (content!13073 (_2!37072 lt!2469871)))))))

(assert (=> d!2164338 (= lt!2469996 e!4164931)))

(declare-fun c!1284785 () Bool)

(assert (=> d!2164338 (= c!1284785 (is-Nil!66541 (++!14955 (_1!37072 lt!2469855) (_2!37072 lt!2469855))))))

(assert (=> d!2164338 (= (++!14955 (++!14955 (_1!37072 lt!2469855) (_2!37072 lt!2469855)) (_2!37072 lt!2469871)) lt!2469996)))

(declare-fun b!6919826 () Bool)

(assert (=> b!6919826 (= e!4164931 (_2!37072 lt!2469871))))

(declare-fun b!6919828 () Bool)

(declare-fun res!2821536 () Bool)

(assert (=> b!6919828 (=> (not res!2821536) (not e!4164930))))

(assert (=> b!6919828 (= res!2821536 (= (size!40770 lt!2469996) (+ (size!40770 (++!14955 (_1!37072 lt!2469855) (_2!37072 lt!2469855))) (size!40770 (_2!37072 lt!2469871)))))))

(assert (= (and d!2164338 c!1284785) b!6919826))

(assert (= (and d!2164338 (not c!1284785)) b!6919827))

(assert (= (and d!2164338 res!2821535) b!6919828))

(assert (= (and b!6919828 res!2821536) b!6919829))

(declare-fun m!7629902 () Bool)

(assert (=> b!6919827 m!7629902))

(declare-fun m!7629904 () Bool)

(assert (=> d!2164338 m!7629904))

(assert (=> d!2164338 m!7629468))

(declare-fun m!7629906 () Bool)

(assert (=> d!2164338 m!7629906))

(assert (=> d!2164338 m!7629702))

(declare-fun m!7629908 () Bool)

(assert (=> b!6919828 m!7629908))

(assert (=> b!6919828 m!7629468))

(declare-fun m!7629910 () Bool)

(assert (=> b!6919828 m!7629910))

(assert (=> b!6919828 m!7629706))

(assert (=> b!6919353 d!2164338))

(declare-fun bs!1846377 () Bool)

(declare-fun b!6919838 () Bool)

(assert (= bs!1846377 (and b!6919838 b!6919578)))

(declare-fun lambda!393289 () Int)

(assert (=> bs!1846377 (= (and (= (_1!37072 lt!2469855) lt!2469872) (= (reg!17241 r1!6342) (reg!17241 lt!2469860)) (= r1!6342 lt!2469860)) (= lambda!393289 lambda!393270))))

(declare-fun bs!1846378 () Bool)

(assert (= bs!1846378 (and b!6919838 d!2164318)))

(assert (=> bs!1846378 (not (= lambda!393289 lambda!393284))))

(declare-fun bs!1846379 () Bool)

(assert (= bs!1846379 (and b!6919838 d!2164274)))

(assert (=> bs!1846379 (not (= lambda!393289 lambda!393265))))

(declare-fun bs!1846380 () Bool)

(assert (= bs!1846380 (and b!6919838 b!6919573)))

(assert (=> bs!1846380 (not (= lambda!393289 lambda!393271))))

(declare-fun bs!1846381 () Bool)

(assert (= bs!1846381 (and b!6919838 b!6919352)))

(assert (=> bs!1846381 (not (= lambda!393289 lambda!393235))))

(declare-fun bs!1846382 () Bool)

(assert (= bs!1846382 (and b!6919838 b!6919355)))

(assert (=> bs!1846382 (not (= lambda!393289 lambda!393233))))

(assert (=> bs!1846381 (not (= lambda!393289 lambda!393236))))

(declare-fun bs!1846383 () Bool)

(assert (= bs!1846383 (and b!6919838 b!6919810)))

(assert (=> bs!1846383 (= (and (= (_1!37072 lt!2469855) (_1!37072 lt!2469871)) (= (reg!17241 r1!6342) (reg!17241 lt!2469857)) (= r1!6342 lt!2469857)) (= lambda!393289 lambda!393285))))

(declare-fun bs!1846384 () Bool)

(assert (= bs!1846384 (and b!6919838 d!2164288)))

(assert (=> bs!1846384 (not (= lambda!393289 lambda!393276))))

(declare-fun bs!1846385 () Bool)

(assert (= bs!1846385 (and b!6919838 d!2164312)))

(assert (=> bs!1846385 (not (= lambda!393289 lambda!393283))))

(declare-fun bs!1846386 () Bool)

(assert (= bs!1846386 (and b!6919838 b!6919737)))

(assert (=> bs!1846386 (= (and (= (_1!37072 lt!2469855) s!14361) (= (reg!17241 r1!6342) (reg!17241 lt!2469851)) (= r1!6342 lt!2469851)) (= lambda!393289 lambda!393278))))

(assert (=> bs!1846384 (not (= lambda!393289 lambda!393277))))

(declare-fun bs!1846387 () Bool)

(assert (= bs!1846387 (and b!6919838 b!6919757)))

(assert (=> bs!1846387 (not (= lambda!393289 lambda!393281))))

(declare-fun bs!1846388 () Bool)

(assert (= bs!1846388 (and b!6919838 b!6919762)))

(assert (=> bs!1846388 (= (and (= (_1!37072 lt!2469855) s!14361) (= (reg!17241 r1!6342) (reg!17241 lt!2469865)) (= r1!6342 lt!2469865)) (= lambda!393289 lambda!393280))))

(assert (=> bs!1846385 (not (= lambda!393289 lambda!393282))))

(declare-fun bs!1846389 () Bool)

(assert (= bs!1846389 (and b!6919838 b!6919805)))

(assert (=> bs!1846389 (not (= lambda!393289 lambda!393286))))

(declare-fun bs!1846390 () Bool)

(assert (= bs!1846390 (and b!6919838 b!6919356)))

(assert (=> bs!1846390 (not (= lambda!393289 lambda!393238))))

(assert (=> bs!1846390 (not (= lambda!393289 lambda!393237))))

(declare-fun bs!1846391 () Bool)

(assert (= bs!1846391 (and b!6919838 b!6919732)))

(assert (=> bs!1846391 (not (= lambda!393289 lambda!393279))))

(assert (=> bs!1846382 (not (= lambda!393289 lambda!393234))))

(assert (=> b!6919838 true))

(assert (=> b!6919838 true))

(declare-fun bs!1846392 () Bool)

(declare-fun b!6919833 () Bool)

(assert (= bs!1846392 (and b!6919833 b!6919578)))

(declare-fun lambda!393292 () Int)

(assert (=> bs!1846392 (not (= lambda!393292 lambda!393270))))

(declare-fun bs!1846393 () Bool)

(assert (= bs!1846393 (and b!6919833 d!2164318)))

(assert (=> bs!1846393 (not (= lambda!393292 lambda!393284))))

(declare-fun bs!1846394 () Bool)

(assert (= bs!1846394 (and b!6919833 b!6919838)))

(assert (=> bs!1846394 (not (= lambda!393292 lambda!393289))))

(declare-fun bs!1846395 () Bool)

(assert (= bs!1846395 (and b!6919833 d!2164274)))

(assert (=> bs!1846395 (not (= lambda!393292 lambda!393265))))

(declare-fun bs!1846396 () Bool)

(assert (= bs!1846396 (and b!6919833 b!6919573)))

(assert (=> bs!1846396 (= (and (= (_1!37072 lt!2469855) lt!2469872) (= (regOne!34336 r1!6342) (regOne!34336 lt!2469860)) (= (regTwo!34336 r1!6342) (regTwo!34336 lt!2469860))) (= lambda!393292 lambda!393271))))

(declare-fun bs!1846397 () Bool)

(assert (= bs!1846397 (and b!6919833 b!6919352)))

(assert (=> bs!1846397 (not (= lambda!393292 lambda!393235))))

(declare-fun bs!1846398 () Bool)

(assert (= bs!1846398 (and b!6919833 b!6919355)))

(assert (=> bs!1846398 (not (= lambda!393292 lambda!393233))))

(assert (=> bs!1846397 (= (and (= (_1!37072 lt!2469855) (_1!37072 lt!2469871)) (= (regOne!34336 r1!6342) r1!6342) (= (regTwo!34336 r1!6342) r2!6280)) (= lambda!393292 lambda!393236))))

(declare-fun bs!1846399 () Bool)

(assert (= bs!1846399 (and b!6919833 b!6919810)))

(assert (=> bs!1846399 (not (= lambda!393292 lambda!393285))))

(declare-fun bs!1846400 () Bool)

(assert (= bs!1846400 (and b!6919833 d!2164288)))

(assert (=> bs!1846400 (not (= lambda!393292 lambda!393276))))

(declare-fun bs!1846401 () Bool)

(assert (= bs!1846401 (and b!6919833 d!2164312)))

(assert (=> bs!1846401 (= (and (= (_1!37072 lt!2469855) s!14361) (= (regOne!34336 r1!6342) lt!2469857) (= (regTwo!34336 r1!6342) r3!135)) (= lambda!393292 lambda!393283))))

(declare-fun bs!1846402 () Bool)

(assert (= bs!1846402 (and b!6919833 b!6919737)))

(assert (=> bs!1846402 (not (= lambda!393292 lambda!393278))))

(assert (=> bs!1846400 (= (and (= (_1!37072 lt!2469855) lt!2469872) (= (regOne!34336 r1!6342) r2!6280) (= (regTwo!34336 r1!6342) r3!135)) (= lambda!393292 lambda!393277))))

(declare-fun bs!1846403 () Bool)

(assert (= bs!1846403 (and b!6919833 b!6919757)))

(assert (=> bs!1846403 (= (and (= (_1!37072 lt!2469855) s!14361) (= (regOne!34336 r1!6342) (regOne!34336 lt!2469865)) (= (regTwo!34336 r1!6342) (regTwo!34336 lt!2469865))) (= lambda!393292 lambda!393281))))

(declare-fun bs!1846404 () Bool)

(assert (= bs!1846404 (and b!6919833 b!6919762)))

(assert (=> bs!1846404 (not (= lambda!393292 lambda!393280))))

(assert (=> bs!1846401 (not (= lambda!393292 lambda!393282))))

(declare-fun bs!1846405 () Bool)

(assert (= bs!1846405 (and b!6919833 b!6919805)))

(assert (=> bs!1846405 (= (and (= (_1!37072 lt!2469855) (_1!37072 lt!2469871)) (= (regOne!34336 r1!6342) (regOne!34336 lt!2469857)) (= (regTwo!34336 r1!6342) (regTwo!34336 lt!2469857))) (= lambda!393292 lambda!393286))))

(declare-fun bs!1846406 () Bool)

(assert (= bs!1846406 (and b!6919833 b!6919356)))

(assert (=> bs!1846406 (= (and (= (_1!37072 lt!2469855) lt!2469872) (= (regOne!34336 r1!6342) r2!6280) (= (regTwo!34336 r1!6342) r3!135)) (= lambda!393292 lambda!393238))))

(assert (=> bs!1846406 (not (= lambda!393292 lambda!393237))))

(declare-fun bs!1846407 () Bool)

(assert (= bs!1846407 (and b!6919833 b!6919732)))

(assert (=> bs!1846407 (= (and (= (_1!37072 lt!2469855) s!14361) (= (regOne!34336 r1!6342) (regOne!34336 lt!2469851)) (= (regTwo!34336 r1!6342) (regTwo!34336 lt!2469851))) (= lambda!393292 lambda!393279))))

(assert (=> bs!1846398 (= (and (= (_1!37072 lt!2469855) s!14361) (= (regOne!34336 r1!6342) lt!2469857) (= (regTwo!34336 r1!6342) r3!135)) (= lambda!393292 lambda!393234))))

(assert (=> b!6919833 true))

(assert (=> b!6919833 true))

(declare-fun b!6919831 () Bool)

(declare-fun e!4164935 () Bool)

(declare-fun call!629037 () Bool)

(assert (=> b!6919831 (= e!4164935 call!629037)))

(declare-fun b!6919832 () Bool)

(declare-fun c!1284788 () Bool)

(assert (=> b!6919832 (= c!1284788 (is-Union!16912 r1!6342))))

(declare-fun e!4164932 () Bool)

(declare-fun e!4164936 () Bool)

(assert (=> b!6919832 (= e!4164932 e!4164936)))

(declare-fun e!4164933 () Bool)

(declare-fun call!629038 () Bool)

(assert (=> b!6919833 (= e!4164933 call!629038)))

(declare-fun b!6919834 () Bool)

(declare-fun e!4164934 () Bool)

(assert (=> b!6919834 (= e!4164934 (matchRSpec!3969 (regTwo!34337 r1!6342) (_1!37072 lt!2469855)))))

(declare-fun bm!629032 () Bool)

(declare-fun c!1284786 () Bool)

(assert (=> bm!629032 (= call!629038 (Exists!3914 (ite c!1284786 lambda!393289 lambda!393292)))))

(declare-fun b!6919835 () Bool)

(declare-fun res!2821539 () Bool)

(declare-fun e!4164937 () Bool)

(assert (=> b!6919835 (=> res!2821539 e!4164937)))

(assert (=> b!6919835 (= res!2821539 call!629037)))

(assert (=> b!6919835 (= e!4164933 e!4164937)))

(declare-fun bm!629033 () Bool)

(assert (=> bm!629033 (= call!629037 (isEmpty!38792 (_1!37072 lt!2469855)))))

(declare-fun b!6919836 () Bool)

(declare-fun e!4164938 () Bool)

(assert (=> b!6919836 (= e!4164935 e!4164938)))

(declare-fun res!2821537 () Bool)

(assert (=> b!6919836 (= res!2821537 (not (is-EmptyLang!16912 r1!6342)))))

(assert (=> b!6919836 (=> (not res!2821537) (not e!4164938))))

(declare-fun b!6919837 () Bool)

(assert (=> b!6919837 (= e!4164936 e!4164934)))

(declare-fun res!2821538 () Bool)

(assert (=> b!6919837 (= res!2821538 (matchRSpec!3969 (regOne!34337 r1!6342) (_1!37072 lt!2469855)))))

(assert (=> b!6919837 (=> res!2821538 e!4164934)))

(assert (=> b!6919838 (= e!4164937 call!629038)))

(declare-fun d!2164340 () Bool)

(declare-fun c!1284789 () Bool)

(assert (=> d!2164340 (= c!1284789 (is-EmptyExpr!16912 r1!6342))))

(assert (=> d!2164340 (= (matchRSpec!3969 r1!6342 (_1!37072 lt!2469855)) e!4164935)))

(declare-fun b!6919830 () Bool)

(assert (=> b!6919830 (= e!4164936 e!4164933)))

(assert (=> b!6919830 (= c!1284786 (is-Star!16912 r1!6342))))

(declare-fun b!6919839 () Bool)

(declare-fun c!1284787 () Bool)

(assert (=> b!6919839 (= c!1284787 (is-ElementMatch!16912 r1!6342))))

(assert (=> b!6919839 (= e!4164938 e!4164932)))

(declare-fun b!6919840 () Bool)

(assert (=> b!6919840 (= e!4164932 (= (_1!37072 lt!2469855) (Cons!66541 (c!1284706 r1!6342) Nil!66541)))))

(assert (= (and d!2164340 c!1284789) b!6919831))

(assert (= (and d!2164340 (not c!1284789)) b!6919836))

(assert (= (and b!6919836 res!2821537) b!6919839))

(assert (= (and b!6919839 c!1284787) b!6919840))

(assert (= (and b!6919839 (not c!1284787)) b!6919832))

(assert (= (and b!6919832 c!1284788) b!6919837))

(assert (= (and b!6919832 (not c!1284788)) b!6919830))

(assert (= (and b!6919837 (not res!2821538)) b!6919834))

(assert (= (and b!6919830 c!1284786) b!6919835))

(assert (= (and b!6919830 (not c!1284786)) b!6919833))

(assert (= (and b!6919835 (not res!2821539)) b!6919838))

(assert (= (or b!6919838 b!6919833) bm!629032))

(assert (= (or b!6919831 b!6919835) bm!629033))

(declare-fun m!7629912 () Bool)

(assert (=> b!6919834 m!7629912))

(declare-fun m!7629914 () Bool)

(assert (=> bm!629032 m!7629914))

(declare-fun m!7629916 () Bool)

(assert (=> bm!629033 m!7629916))

(declare-fun m!7629918 () Bool)

(assert (=> b!6919837 m!7629918))

(assert (=> b!6919353 d!2164340))

(declare-fun d!2164342 () Bool)

(assert (=> d!2164342 (= (matchR!9051 r1!6342 (_1!37072 lt!2469855)) (matchRSpec!3969 r1!6342 (_1!37072 lt!2469855)))))

(declare-fun lt!2469998 () Unit!160548)

(assert (=> d!2164342 (= lt!2469998 (choose!51519 r1!6342 (_1!37072 lt!2469855)))))

(assert (=> d!2164342 (validRegex!8618 r1!6342)))

(assert (=> d!2164342 (= (mainMatchTheorem!3969 r1!6342 (_1!37072 lt!2469855)) lt!2469998)))

(declare-fun bs!1846409 () Bool)

(assert (= bs!1846409 d!2164342))

(assert (=> bs!1846409 m!7629514))

(assert (=> bs!1846409 m!7629478))

(declare-fun m!7629920 () Bool)

(assert (=> bs!1846409 m!7629920))

(assert (=> bs!1846409 m!7629466))

(assert (=> b!6919353 d!2164342))

(declare-fun bs!1846412 () Bool)

(declare-fun b!6919853 () Bool)

(assert (= bs!1846412 (and b!6919853 b!6919578)))

(declare-fun lambda!393294 () Int)

(assert (=> bs!1846412 (= (and (= (_2!37072 lt!2469855) lt!2469872) (= (reg!17241 r2!6280) (reg!17241 lt!2469860)) (= r2!6280 lt!2469860)) (= lambda!393294 lambda!393270))))

(declare-fun bs!1846413 () Bool)

(assert (= bs!1846413 (and b!6919853 b!6919838)))

(assert (=> bs!1846413 (= (and (= (_2!37072 lt!2469855) (_1!37072 lt!2469855)) (= (reg!17241 r2!6280) (reg!17241 r1!6342)) (= r2!6280 r1!6342)) (= lambda!393294 lambda!393289))))

(declare-fun bs!1846414 () Bool)

(assert (= bs!1846414 (and b!6919853 d!2164274)))

(assert (=> bs!1846414 (not (= lambda!393294 lambda!393265))))

(declare-fun bs!1846415 () Bool)

(assert (= bs!1846415 (and b!6919853 b!6919573)))

(assert (=> bs!1846415 (not (= lambda!393294 lambda!393271))))

(declare-fun bs!1846416 () Bool)

(assert (= bs!1846416 (and b!6919853 b!6919352)))

(assert (=> bs!1846416 (not (= lambda!393294 lambda!393235))))

(declare-fun bs!1846417 () Bool)

(assert (= bs!1846417 (and b!6919853 b!6919355)))

(assert (=> bs!1846417 (not (= lambda!393294 lambda!393233))))

(assert (=> bs!1846416 (not (= lambda!393294 lambda!393236))))

(declare-fun bs!1846418 () Bool)

(assert (= bs!1846418 (and b!6919853 b!6919810)))

(assert (=> bs!1846418 (= (and (= (_2!37072 lt!2469855) (_1!37072 lt!2469871)) (= (reg!17241 r2!6280) (reg!17241 lt!2469857)) (= r2!6280 lt!2469857)) (= lambda!393294 lambda!393285))))

(declare-fun bs!1846419 () Bool)

(assert (= bs!1846419 (and b!6919853 d!2164288)))

(assert (=> bs!1846419 (not (= lambda!393294 lambda!393276))))

(declare-fun bs!1846420 () Bool)

(assert (= bs!1846420 (and b!6919853 d!2164312)))

(assert (=> bs!1846420 (not (= lambda!393294 lambda!393283))))

(declare-fun bs!1846421 () Bool)

(assert (= bs!1846421 (and b!6919853 d!2164318)))

(assert (=> bs!1846421 (not (= lambda!393294 lambda!393284))))

(declare-fun bs!1846422 () Bool)

(assert (= bs!1846422 (and b!6919853 b!6919833)))

(assert (=> bs!1846422 (not (= lambda!393294 lambda!393292))))

(declare-fun bs!1846423 () Bool)

(assert (= bs!1846423 (and b!6919853 b!6919737)))

(assert (=> bs!1846423 (= (and (= (_2!37072 lt!2469855) s!14361) (= (reg!17241 r2!6280) (reg!17241 lt!2469851)) (= r2!6280 lt!2469851)) (= lambda!393294 lambda!393278))))

(assert (=> bs!1846419 (not (= lambda!393294 lambda!393277))))

(declare-fun bs!1846424 () Bool)

(assert (= bs!1846424 (and b!6919853 b!6919757)))

(assert (=> bs!1846424 (not (= lambda!393294 lambda!393281))))

(declare-fun bs!1846425 () Bool)

(assert (= bs!1846425 (and b!6919853 b!6919762)))

(assert (=> bs!1846425 (= (and (= (_2!37072 lt!2469855) s!14361) (= (reg!17241 r2!6280) (reg!17241 lt!2469865)) (= r2!6280 lt!2469865)) (= lambda!393294 lambda!393280))))

(assert (=> bs!1846420 (not (= lambda!393294 lambda!393282))))

(declare-fun bs!1846426 () Bool)

(assert (= bs!1846426 (and b!6919853 b!6919805)))

(assert (=> bs!1846426 (not (= lambda!393294 lambda!393286))))

(declare-fun bs!1846427 () Bool)

(assert (= bs!1846427 (and b!6919853 b!6919356)))

(assert (=> bs!1846427 (not (= lambda!393294 lambda!393238))))

(assert (=> bs!1846427 (not (= lambda!393294 lambda!393237))))

(declare-fun bs!1846429 () Bool)

(assert (= bs!1846429 (and b!6919853 b!6919732)))

(assert (=> bs!1846429 (not (= lambda!393294 lambda!393279))))

(assert (=> bs!1846417 (not (= lambda!393294 lambda!393234))))

(assert (=> b!6919853 true))

(assert (=> b!6919853 true))

(declare-fun bs!1846430 () Bool)

(declare-fun b!6919848 () Bool)

(assert (= bs!1846430 (and b!6919848 b!6919578)))

(declare-fun lambda!393296 () Int)

(assert (=> bs!1846430 (not (= lambda!393296 lambda!393270))))

(declare-fun bs!1846432 () Bool)

(assert (= bs!1846432 (and b!6919848 b!6919853)))

(assert (=> bs!1846432 (not (= lambda!393296 lambda!393294))))

(declare-fun bs!1846433 () Bool)

(assert (= bs!1846433 (and b!6919848 b!6919838)))

(assert (=> bs!1846433 (not (= lambda!393296 lambda!393289))))

(declare-fun bs!1846434 () Bool)

(assert (= bs!1846434 (and b!6919848 d!2164274)))

(assert (=> bs!1846434 (not (= lambda!393296 lambda!393265))))

(declare-fun bs!1846435 () Bool)

(assert (= bs!1846435 (and b!6919848 b!6919573)))

(assert (=> bs!1846435 (= (and (= (_2!37072 lt!2469855) lt!2469872) (= (regOne!34336 r2!6280) (regOne!34336 lt!2469860)) (= (regTwo!34336 r2!6280) (regTwo!34336 lt!2469860))) (= lambda!393296 lambda!393271))))

(declare-fun bs!1846436 () Bool)

(assert (= bs!1846436 (and b!6919848 b!6919352)))

(assert (=> bs!1846436 (not (= lambda!393296 lambda!393235))))

(declare-fun bs!1846437 () Bool)

(assert (= bs!1846437 (and b!6919848 b!6919355)))

(assert (=> bs!1846437 (not (= lambda!393296 lambda!393233))))

(assert (=> bs!1846436 (= (and (= (_2!37072 lt!2469855) (_1!37072 lt!2469871)) (= (regOne!34336 r2!6280) r1!6342) (= (regTwo!34336 r2!6280) r2!6280)) (= lambda!393296 lambda!393236))))

(declare-fun bs!1846438 () Bool)

(assert (= bs!1846438 (and b!6919848 b!6919810)))

(assert (=> bs!1846438 (not (= lambda!393296 lambda!393285))))

(declare-fun bs!1846439 () Bool)

(assert (= bs!1846439 (and b!6919848 d!2164288)))

(assert (=> bs!1846439 (not (= lambda!393296 lambda!393276))))

(declare-fun bs!1846440 () Bool)

(assert (= bs!1846440 (and b!6919848 d!2164312)))

(assert (=> bs!1846440 (= (and (= (_2!37072 lt!2469855) s!14361) (= (regOne!34336 r2!6280) lt!2469857) (= (regTwo!34336 r2!6280) r3!135)) (= lambda!393296 lambda!393283))))

(declare-fun bs!1846441 () Bool)

(assert (= bs!1846441 (and b!6919848 d!2164318)))

(assert (=> bs!1846441 (not (= lambda!393296 lambda!393284))))

(declare-fun bs!1846442 () Bool)

(assert (= bs!1846442 (and b!6919848 b!6919833)))

(assert (=> bs!1846442 (= (and (= (_2!37072 lt!2469855) (_1!37072 lt!2469855)) (= (regOne!34336 r2!6280) (regOne!34336 r1!6342)) (= (regTwo!34336 r2!6280) (regTwo!34336 r1!6342))) (= lambda!393296 lambda!393292))))

(declare-fun bs!1846443 () Bool)

(assert (= bs!1846443 (and b!6919848 b!6919737)))

(assert (=> bs!1846443 (not (= lambda!393296 lambda!393278))))

(assert (=> bs!1846439 (= (and (= (_2!37072 lt!2469855) lt!2469872) (= (regOne!34336 r2!6280) r2!6280) (= (regTwo!34336 r2!6280) r3!135)) (= lambda!393296 lambda!393277))))

(declare-fun bs!1846444 () Bool)

(assert (= bs!1846444 (and b!6919848 b!6919757)))

(assert (=> bs!1846444 (= (and (= (_2!37072 lt!2469855) s!14361) (= (regOne!34336 r2!6280) (regOne!34336 lt!2469865)) (= (regTwo!34336 r2!6280) (regTwo!34336 lt!2469865))) (= lambda!393296 lambda!393281))))

(declare-fun bs!1846445 () Bool)

(assert (= bs!1846445 (and b!6919848 b!6919762)))

(assert (=> bs!1846445 (not (= lambda!393296 lambda!393280))))

(assert (=> bs!1846440 (not (= lambda!393296 lambda!393282))))

(declare-fun bs!1846446 () Bool)

(assert (= bs!1846446 (and b!6919848 b!6919805)))

(assert (=> bs!1846446 (= (and (= (_2!37072 lt!2469855) (_1!37072 lt!2469871)) (= (regOne!34336 r2!6280) (regOne!34336 lt!2469857)) (= (regTwo!34336 r2!6280) (regTwo!34336 lt!2469857))) (= lambda!393296 lambda!393286))))

(declare-fun bs!1846447 () Bool)

(assert (= bs!1846447 (and b!6919848 b!6919356)))

(assert (=> bs!1846447 (= (and (= (_2!37072 lt!2469855) lt!2469872) (= (regOne!34336 r2!6280) r2!6280) (= (regTwo!34336 r2!6280) r3!135)) (= lambda!393296 lambda!393238))))

(assert (=> bs!1846447 (not (= lambda!393296 lambda!393237))))

(declare-fun bs!1846448 () Bool)

(assert (= bs!1846448 (and b!6919848 b!6919732)))

(assert (=> bs!1846448 (= (and (= (_2!37072 lt!2469855) s!14361) (= (regOne!34336 r2!6280) (regOne!34336 lt!2469851)) (= (regTwo!34336 r2!6280) (regTwo!34336 lt!2469851))) (= lambda!393296 lambda!393279))))

(assert (=> bs!1846437 (= (and (= (_2!37072 lt!2469855) s!14361) (= (regOne!34336 r2!6280) lt!2469857) (= (regTwo!34336 r2!6280) r3!135)) (= lambda!393296 lambda!393234))))

(assert (=> b!6919848 true))

(assert (=> b!6919848 true))

(declare-fun b!6919846 () Bool)

(declare-fun e!4164944 () Bool)

(declare-fun call!629039 () Bool)

(assert (=> b!6919846 (= e!4164944 call!629039)))

(declare-fun b!6919847 () Bool)

(declare-fun c!1284792 () Bool)

(assert (=> b!6919847 (= c!1284792 (is-Union!16912 r2!6280))))

(declare-fun e!4164941 () Bool)

(declare-fun e!4164945 () Bool)

(assert (=> b!6919847 (= e!4164941 e!4164945)))

(declare-fun e!4164942 () Bool)

(declare-fun call!629040 () Bool)

(assert (=> b!6919848 (= e!4164942 call!629040)))

(declare-fun b!6919849 () Bool)

(declare-fun e!4164943 () Bool)

(assert (=> b!6919849 (= e!4164943 (matchRSpec!3969 (regTwo!34337 r2!6280) (_2!37072 lt!2469855)))))

(declare-fun bm!629034 () Bool)

(declare-fun c!1284790 () Bool)

(assert (=> bm!629034 (= call!629040 (Exists!3914 (ite c!1284790 lambda!393294 lambda!393296)))))

(declare-fun b!6919850 () Bool)

(declare-fun res!2821546 () Bool)

(declare-fun e!4164946 () Bool)

(assert (=> b!6919850 (=> res!2821546 e!4164946)))

(assert (=> b!6919850 (= res!2821546 call!629039)))

(assert (=> b!6919850 (= e!4164942 e!4164946)))

(declare-fun bm!629035 () Bool)

(assert (=> bm!629035 (= call!629039 (isEmpty!38792 (_2!37072 lt!2469855)))))

(declare-fun b!6919851 () Bool)

(declare-fun e!4164947 () Bool)

(assert (=> b!6919851 (= e!4164944 e!4164947)))

(declare-fun res!2821544 () Bool)

(assert (=> b!6919851 (= res!2821544 (not (is-EmptyLang!16912 r2!6280)))))

(assert (=> b!6919851 (=> (not res!2821544) (not e!4164947))))

(declare-fun b!6919852 () Bool)

(assert (=> b!6919852 (= e!4164945 e!4164943)))

(declare-fun res!2821545 () Bool)

(assert (=> b!6919852 (= res!2821545 (matchRSpec!3969 (regOne!34337 r2!6280) (_2!37072 lt!2469855)))))

(assert (=> b!6919852 (=> res!2821545 e!4164943)))

(assert (=> b!6919853 (= e!4164946 call!629040)))

(declare-fun d!2164344 () Bool)

(declare-fun c!1284793 () Bool)

(assert (=> d!2164344 (= c!1284793 (is-EmptyExpr!16912 r2!6280))))

(assert (=> d!2164344 (= (matchRSpec!3969 r2!6280 (_2!37072 lt!2469855)) e!4164944)))

(declare-fun b!6919845 () Bool)

(assert (=> b!6919845 (= e!4164945 e!4164942)))

(assert (=> b!6919845 (= c!1284790 (is-Star!16912 r2!6280))))

(declare-fun b!6919854 () Bool)

(declare-fun c!1284791 () Bool)

(assert (=> b!6919854 (= c!1284791 (is-ElementMatch!16912 r2!6280))))

(assert (=> b!6919854 (= e!4164947 e!4164941)))

(declare-fun b!6919855 () Bool)

(assert (=> b!6919855 (= e!4164941 (= (_2!37072 lt!2469855) (Cons!66541 (c!1284706 r2!6280) Nil!66541)))))

(assert (= (and d!2164344 c!1284793) b!6919846))

(assert (= (and d!2164344 (not c!1284793)) b!6919851))

(assert (= (and b!6919851 res!2821544) b!6919854))

(assert (= (and b!6919854 c!1284791) b!6919855))

(assert (= (and b!6919854 (not c!1284791)) b!6919847))

(assert (= (and b!6919847 c!1284792) b!6919852))

(assert (= (and b!6919847 (not c!1284792)) b!6919845))

(assert (= (and b!6919852 (not res!2821545)) b!6919849))

(assert (= (and b!6919845 c!1284790) b!6919850))

(assert (= (and b!6919845 (not c!1284790)) b!6919848))

(assert (= (and b!6919850 (not res!2821546)) b!6919853))

(assert (= (or b!6919853 b!6919848) bm!629034))

(assert (= (or b!6919846 b!6919850) bm!629035))

(declare-fun m!7629930 () Bool)

(assert (=> b!6919849 m!7629930))

(declare-fun m!7629932 () Bool)

(assert (=> bm!629034 m!7629932))

(declare-fun m!7629934 () Bool)

(assert (=> bm!629035 m!7629934))

(declare-fun m!7629936 () Bool)

(assert (=> b!6919852 m!7629936))

(assert (=> b!6919353 d!2164344))

(declare-fun b!6919859 () Bool)

(declare-fun e!4164948 () Bool)

(declare-fun lt!2469999 () List!66665)

(assert (=> b!6919859 (= e!4164948 (or (not (= (_2!37072 lt!2469855) Nil!66541)) (= lt!2469999 (_1!37072 lt!2469855))))))

(declare-fun b!6919857 () Bool)

(declare-fun e!4164949 () List!66665)

(assert (=> b!6919857 (= e!4164949 (Cons!66541 (h!72989 (_1!37072 lt!2469855)) (++!14955 (t!380408 (_1!37072 lt!2469855)) (_2!37072 lt!2469855))))))

(declare-fun d!2164352 () Bool)

(assert (=> d!2164352 e!4164948))

(declare-fun res!2821547 () Bool)

(assert (=> d!2164352 (=> (not res!2821547) (not e!4164948))))

(assert (=> d!2164352 (= res!2821547 (= (content!13073 lt!2469999) (set.union (content!13073 (_1!37072 lt!2469855)) (content!13073 (_2!37072 lt!2469855)))))))

(assert (=> d!2164352 (= lt!2469999 e!4164949)))

(declare-fun c!1284794 () Bool)

(assert (=> d!2164352 (= c!1284794 (is-Nil!66541 (_1!37072 lt!2469855)))))

(assert (=> d!2164352 (= (++!14955 (_1!37072 lt!2469855) (_2!37072 lt!2469855)) lt!2469999)))

(declare-fun b!6919856 () Bool)

(assert (=> b!6919856 (= e!4164949 (_2!37072 lt!2469855))))

(declare-fun b!6919858 () Bool)

(declare-fun res!2821548 () Bool)

(assert (=> b!6919858 (=> (not res!2821548) (not e!4164948))))

(assert (=> b!6919858 (= res!2821548 (= (size!40770 lt!2469999) (+ (size!40770 (_1!37072 lt!2469855)) (size!40770 (_2!37072 lt!2469855)))))))

(assert (= (and d!2164352 c!1284794) b!6919856))

(assert (= (and d!2164352 (not c!1284794)) b!6919857))

(assert (= (and d!2164352 res!2821547) b!6919858))

(assert (= (and b!6919858 res!2821548) b!6919859))

(declare-fun m!7629938 () Bool)

(assert (=> b!6919857 m!7629938))

(declare-fun m!7629940 () Bool)

(assert (=> d!2164352 m!7629940))

(declare-fun m!7629942 () Bool)

(assert (=> d!2164352 m!7629942))

(assert (=> d!2164352 m!7629700))

(declare-fun m!7629944 () Bool)

(assert (=> b!6919858 m!7629944))

(declare-fun m!7629946 () Bool)

(assert (=> b!6919858 m!7629946))

(assert (=> b!6919858 m!7629674))

(assert (=> b!6919353 d!2164352))

(declare-fun b!6919860 () Bool)

(declare-fun res!2821550 () Bool)

(declare-fun e!4164954 () Bool)

(assert (=> b!6919860 (=> res!2821550 e!4164954)))

(assert (=> b!6919860 (= res!2821550 (not (is-Concat!25757 r1!6342)))))

(declare-fun e!4164953 () Bool)

(assert (=> b!6919860 (= e!4164953 e!4164954)))

(declare-fun bm!629036 () Bool)

(declare-fun call!629041 () Bool)

(declare-fun c!1284796 () Bool)

(assert (=> bm!629036 (= call!629041 (validRegex!8618 (ite c!1284796 (regOne!34337 r1!6342) (regTwo!34336 r1!6342))))))

(declare-fun bm!629037 () Bool)

(declare-fun c!1284795 () Bool)

(declare-fun call!629043 () Bool)

(assert (=> bm!629037 (= call!629043 (validRegex!8618 (ite c!1284795 (reg!17241 r1!6342) (ite c!1284796 (regTwo!34337 r1!6342) (regOne!34336 r1!6342)))))))

(declare-fun b!6919861 () Bool)

(declare-fun e!4164955 () Bool)

(assert (=> b!6919861 (= e!4164955 call!629043)))

(declare-fun b!6919862 () Bool)

(declare-fun e!4164956 () Bool)

(assert (=> b!6919862 (= e!4164956 e!4164953)))

(assert (=> b!6919862 (= c!1284796 (is-Union!16912 r1!6342))))

(declare-fun bm!629038 () Bool)

(declare-fun call!629042 () Bool)

(assert (=> bm!629038 (= call!629042 call!629043)))

(declare-fun b!6919863 () Bool)

(assert (=> b!6919863 (= e!4164956 e!4164955)))

(declare-fun res!2821551 () Bool)

(assert (=> b!6919863 (= res!2821551 (not (nullable!6745 (reg!17241 r1!6342))))))

(assert (=> b!6919863 (=> (not res!2821551) (not e!4164955))))

(declare-fun d!2164354 () Bool)

(declare-fun res!2821549 () Bool)

(declare-fun e!4164951 () Bool)

(assert (=> d!2164354 (=> res!2821549 e!4164951)))

(assert (=> d!2164354 (= res!2821549 (is-ElementMatch!16912 r1!6342))))

(assert (=> d!2164354 (= (validRegex!8618 r1!6342) e!4164951)))

(declare-fun b!6919864 () Bool)

(declare-fun res!2821552 () Bool)

(declare-fun e!4164952 () Bool)

(assert (=> b!6919864 (=> (not res!2821552) (not e!4164952))))

(assert (=> b!6919864 (= res!2821552 call!629041)))

(assert (=> b!6919864 (= e!4164953 e!4164952)))

(declare-fun b!6919865 () Bool)

(declare-fun e!4164950 () Bool)

(assert (=> b!6919865 (= e!4164954 e!4164950)))

(declare-fun res!2821553 () Bool)

(assert (=> b!6919865 (=> (not res!2821553) (not e!4164950))))

(assert (=> b!6919865 (= res!2821553 call!629042)))

(declare-fun b!6919866 () Bool)

(assert (=> b!6919866 (= e!4164952 call!629042)))

(declare-fun b!6919867 () Bool)

(assert (=> b!6919867 (= e!4164950 call!629041)))

(declare-fun b!6919868 () Bool)

(assert (=> b!6919868 (= e!4164951 e!4164956)))

(assert (=> b!6919868 (= c!1284795 (is-Star!16912 r1!6342))))

(assert (= (and d!2164354 (not res!2821549)) b!6919868))

(assert (= (and b!6919868 c!1284795) b!6919863))

(assert (= (and b!6919868 (not c!1284795)) b!6919862))

(assert (= (and b!6919863 res!2821551) b!6919861))

(assert (= (and b!6919862 c!1284796) b!6919864))

(assert (= (and b!6919862 (not c!1284796)) b!6919860))

(assert (= (and b!6919864 res!2821552) b!6919866))

(assert (= (and b!6919860 (not res!2821550)) b!6919865))

(assert (= (and b!6919865 res!2821553) b!6919867))

(assert (= (or b!6919864 b!6919867) bm!629036))

(assert (= (or b!6919866 b!6919865) bm!629038))

(assert (= (or b!6919861 bm!629038) bm!629037))

(declare-fun m!7629948 () Bool)

(assert (=> bm!629036 m!7629948))

(declare-fun m!7629950 () Bool)

(assert (=> bm!629037 m!7629950))

(declare-fun m!7629952 () Bool)

(assert (=> b!6919863 m!7629952))

(assert (=> start!665540 d!2164354))

(declare-fun b!6919869 () Bool)

(declare-fun res!2821559 () Bool)

(declare-fun e!4164963 () Bool)

(assert (=> b!6919869 (=> res!2821559 e!4164963)))

(declare-fun e!4164957 () Bool)

(assert (=> b!6919869 (= res!2821559 e!4164957)))

(declare-fun res!2821560 () Bool)

(assert (=> b!6919869 (=> (not res!2821560) (not e!4164957))))

(declare-fun lt!2470000 () Bool)

(assert (=> b!6919869 (= res!2821560 lt!2470000)))

(declare-fun b!6919870 () Bool)

(declare-fun res!2821557 () Bool)

(assert (=> b!6919870 (=> (not res!2821557) (not e!4164957))))

(assert (=> b!6919870 (= res!2821557 (isEmpty!38792 (tail!12925 (_1!37072 lt!2469855))))))

(declare-fun b!6919871 () Bool)

(declare-fun e!4164960 () Bool)

(assert (=> b!6919871 (= e!4164960 (not lt!2470000))))

(declare-fun b!6919872 () Bool)

(declare-fun res!2821555 () Bool)

(assert (=> b!6919872 (=> (not res!2821555) (not e!4164957))))

(declare-fun call!629044 () Bool)

(assert (=> b!6919872 (= res!2821555 (not call!629044))))

(declare-fun b!6919873 () Bool)

(declare-fun e!4164958 () Bool)

(declare-fun e!4164962 () Bool)

(assert (=> b!6919873 (= e!4164958 e!4164962)))

(declare-fun res!2821556 () Bool)

(assert (=> b!6919873 (=> res!2821556 e!4164962)))

(assert (=> b!6919873 (= res!2821556 call!629044)))

(declare-fun b!6919874 () Bool)

(declare-fun e!4164961 () Bool)

(assert (=> b!6919874 (= e!4164961 e!4164960)))

(declare-fun c!1284797 () Bool)

(assert (=> b!6919874 (= c!1284797 (is-EmptyLang!16912 r1!6342))))

(declare-fun b!6919876 () Bool)

(assert (=> b!6919876 (= e!4164957 (= (head!13873 (_1!37072 lt!2469855)) (c!1284706 r1!6342)))))

(declare-fun b!6919877 () Bool)

(assert (=> b!6919877 (= e!4164961 (= lt!2470000 call!629044))))

(declare-fun bm!629039 () Bool)

(assert (=> bm!629039 (= call!629044 (isEmpty!38792 (_1!37072 lt!2469855)))))

(declare-fun b!6919878 () Bool)

(declare-fun e!4164959 () Bool)

(assert (=> b!6919878 (= e!4164959 (nullable!6745 r1!6342))))

(declare-fun d!2164356 () Bool)

(assert (=> d!2164356 e!4164961))

(declare-fun c!1284798 () Bool)

(assert (=> d!2164356 (= c!1284798 (is-EmptyExpr!16912 r1!6342))))

(assert (=> d!2164356 (= lt!2470000 e!4164959)))

(declare-fun c!1284799 () Bool)

(assert (=> d!2164356 (= c!1284799 (isEmpty!38792 (_1!37072 lt!2469855)))))

(assert (=> d!2164356 (validRegex!8618 r1!6342)))

(assert (=> d!2164356 (= (matchR!9051 r1!6342 (_1!37072 lt!2469855)) lt!2470000)))

(declare-fun b!6919875 () Bool)

(declare-fun res!2821558 () Bool)

(assert (=> b!6919875 (=> res!2821558 e!4164963)))

(assert (=> b!6919875 (= res!2821558 (not (is-ElementMatch!16912 r1!6342)))))

(assert (=> b!6919875 (= e!4164960 e!4164963)))

(declare-fun b!6919879 () Bool)

(declare-fun res!2821554 () Bool)

(assert (=> b!6919879 (=> res!2821554 e!4164962)))

(assert (=> b!6919879 (= res!2821554 (not (isEmpty!38792 (tail!12925 (_1!37072 lt!2469855)))))))

(declare-fun b!6919880 () Bool)

(assert (=> b!6919880 (= e!4164962 (not (= (head!13873 (_1!37072 lt!2469855)) (c!1284706 r1!6342))))))

(declare-fun b!6919881 () Bool)

(assert (=> b!6919881 (= e!4164963 e!4164958)))

(declare-fun res!2821561 () Bool)

(assert (=> b!6919881 (=> (not res!2821561) (not e!4164958))))

(assert (=> b!6919881 (= res!2821561 (not lt!2470000))))

(declare-fun b!6919882 () Bool)

(assert (=> b!6919882 (= e!4164959 (matchR!9051 (derivativeStep!5420 r1!6342 (head!13873 (_1!37072 lt!2469855))) (tail!12925 (_1!37072 lt!2469855))))))

(assert (= (and d!2164356 c!1284799) b!6919878))

(assert (= (and d!2164356 (not c!1284799)) b!6919882))

(assert (= (and d!2164356 c!1284798) b!6919877))

(assert (= (and d!2164356 (not c!1284798)) b!6919874))

(assert (= (and b!6919874 c!1284797) b!6919871))

(assert (= (and b!6919874 (not c!1284797)) b!6919875))

(assert (= (and b!6919875 (not res!2821558)) b!6919869))

(assert (= (and b!6919869 res!2821560) b!6919872))

(assert (= (and b!6919872 res!2821555) b!6919870))

(assert (= (and b!6919870 res!2821557) b!6919876))

(assert (= (and b!6919869 (not res!2821559)) b!6919881))

(assert (= (and b!6919881 res!2821561) b!6919873))

(assert (= (and b!6919873 (not res!2821556)) b!6919879))

(assert (= (and b!6919879 (not res!2821554)) b!6919880))

(assert (= (or b!6919877 b!6919872 b!6919873) bm!629039))

(declare-fun m!7629954 () Bool)

(assert (=> b!6919879 m!7629954))

(assert (=> b!6919879 m!7629954))

(declare-fun m!7629956 () Bool)

(assert (=> b!6919879 m!7629956))

(assert (=> b!6919870 m!7629954))

(assert (=> b!6919870 m!7629954))

(assert (=> b!6919870 m!7629956))

(assert (=> bm!629039 m!7629916))

(declare-fun m!7629958 () Bool)

(assert (=> b!6919882 m!7629958))

(assert (=> b!6919882 m!7629958))

(declare-fun m!7629960 () Bool)

(assert (=> b!6919882 m!7629960))

(assert (=> b!6919882 m!7629954))

(assert (=> b!6919882 m!7629960))

(assert (=> b!6919882 m!7629954))

(declare-fun m!7629962 () Bool)

(assert (=> b!6919882 m!7629962))

(assert (=> b!6919880 m!7629958))

(assert (=> d!2164356 m!7629916))

(assert (=> d!2164356 m!7629466))

(declare-fun m!7629964 () Bool)

(assert (=> b!6919878 m!7629964))

(assert (=> b!6919876 m!7629958))

(assert (=> b!6919352 d!2164356))

(declare-fun d!2164358 () Bool)

(assert (=> d!2164358 (= (Exists!3914 lambda!393235) (choose!51518 lambda!393235))))

(declare-fun bs!1846449 () Bool)

(assert (= bs!1846449 d!2164358))

(declare-fun m!7629966 () Bool)

(assert (=> bs!1846449 m!7629966))

(assert (=> b!6919352 d!2164358))

(declare-fun d!2164360 () Bool)

(assert (=> d!2164360 (= (isDefined!13384 lt!2469869) (not (isEmpty!38793 lt!2469869)))))

(declare-fun bs!1846450 () Bool)

(assert (= bs!1846450 d!2164360))

(declare-fun m!7629968 () Bool)

(assert (=> bs!1846450 m!7629968))

(assert (=> b!6919352 d!2164360))

(declare-fun b!6919883 () Bool)

(declare-fun e!4164967 () Option!16681)

(assert (=> b!6919883 (= e!4164967 None!16680)))

(declare-fun b!6919884 () Bool)

(declare-fun e!4164968 () Bool)

(assert (=> b!6919884 (= e!4164968 (matchR!9051 r2!6280 (_1!37072 lt!2469871)))))

(declare-fun b!6919885 () Bool)

(declare-fun lt!2470002 () Unit!160548)

(declare-fun lt!2470001 () Unit!160548)

(assert (=> b!6919885 (= lt!2470002 lt!2470001)))

(assert (=> b!6919885 (= (++!14955 (++!14955 Nil!66541 (Cons!66541 (h!72989 (_1!37072 lt!2469871)) Nil!66541)) (t!380408 (_1!37072 lt!2469871))) (_1!37072 lt!2469871))))

(assert (=> b!6919885 (= lt!2470001 (lemmaMoveElementToOtherListKeepsConcatEq!2824 Nil!66541 (h!72989 (_1!37072 lt!2469871)) (t!380408 (_1!37072 lt!2469871)) (_1!37072 lt!2469871)))))

(assert (=> b!6919885 (= e!4164967 (findConcatSeparation!3095 r1!6342 r2!6280 (++!14955 Nil!66541 (Cons!66541 (h!72989 (_1!37072 lt!2469871)) Nil!66541)) (t!380408 (_1!37072 lt!2469871)) (_1!37072 lt!2469871)))))

(declare-fun b!6919886 () Bool)

(declare-fun res!2821562 () Bool)

(declare-fun e!4164966 () Bool)

(assert (=> b!6919886 (=> (not res!2821562) (not e!4164966))))

(declare-fun lt!2470003 () Option!16681)

(assert (=> b!6919886 (= res!2821562 (matchR!9051 r1!6342 (_1!37072 (get!23309 lt!2470003))))))

(declare-fun b!6919887 () Bool)

(declare-fun res!2821566 () Bool)

(assert (=> b!6919887 (=> (not res!2821566) (not e!4164966))))

(assert (=> b!6919887 (= res!2821566 (matchR!9051 r2!6280 (_2!37072 (get!23309 lt!2470003))))))

(declare-fun b!6919888 () Bool)

(declare-fun e!4164964 () Option!16681)

(assert (=> b!6919888 (= e!4164964 (Some!16680 (tuple2!67539 Nil!66541 (_1!37072 lt!2469871))))))

(declare-fun b!6919889 () Bool)

(declare-fun e!4164965 () Bool)

(assert (=> b!6919889 (= e!4164965 (not (isDefined!13384 lt!2470003)))))

(declare-fun b!6919890 () Bool)

(assert (=> b!6919890 (= e!4164964 e!4164967)))

(declare-fun c!1284801 () Bool)

(assert (=> b!6919890 (= c!1284801 (is-Nil!66541 (_1!37072 lt!2469871)))))

(declare-fun d!2164362 () Bool)

(assert (=> d!2164362 e!4164965))

(declare-fun res!2821564 () Bool)

(assert (=> d!2164362 (=> res!2821564 e!4164965)))

(assert (=> d!2164362 (= res!2821564 e!4164966)))

(declare-fun res!2821563 () Bool)

(assert (=> d!2164362 (=> (not res!2821563) (not e!4164966))))

(assert (=> d!2164362 (= res!2821563 (isDefined!13384 lt!2470003))))

(assert (=> d!2164362 (= lt!2470003 e!4164964)))

(declare-fun c!1284800 () Bool)

(assert (=> d!2164362 (= c!1284800 e!4164968)))

(declare-fun res!2821565 () Bool)

(assert (=> d!2164362 (=> (not res!2821565) (not e!4164968))))

(assert (=> d!2164362 (= res!2821565 (matchR!9051 r1!6342 Nil!66541))))

(assert (=> d!2164362 (validRegex!8618 r1!6342)))

(assert (=> d!2164362 (= (findConcatSeparation!3095 r1!6342 r2!6280 Nil!66541 (_1!37072 lt!2469871) (_1!37072 lt!2469871)) lt!2470003)))

(declare-fun b!6919891 () Bool)

(assert (=> b!6919891 (= e!4164966 (= (++!14955 (_1!37072 (get!23309 lt!2470003)) (_2!37072 (get!23309 lt!2470003))) (_1!37072 lt!2469871)))))

(assert (= (and d!2164362 res!2821565) b!6919884))

(assert (= (and d!2164362 c!1284800) b!6919888))

(assert (= (and d!2164362 (not c!1284800)) b!6919890))

(assert (= (and b!6919890 c!1284801) b!6919883))

(assert (= (and b!6919890 (not c!1284801)) b!6919885))

(assert (= (and d!2164362 res!2821563) b!6919886))

(assert (= (and b!6919886 res!2821562) b!6919887))

(assert (= (and b!6919887 res!2821566) b!6919891))

(assert (= (and d!2164362 (not res!2821564)) b!6919889))

(declare-fun m!7629970 () Bool)

(assert (=> b!6919886 m!7629970))

(declare-fun m!7629972 () Bool)

(assert (=> b!6919886 m!7629972))

(declare-fun m!7629974 () Bool)

(assert (=> b!6919889 m!7629974))

(assert (=> b!6919891 m!7629970))

(declare-fun m!7629976 () Bool)

(assert (=> b!6919891 m!7629976))

(declare-fun m!7629978 () Bool)

(assert (=> b!6919884 m!7629978))

(assert (=> b!6919887 m!7629970))

(declare-fun m!7629980 () Bool)

(assert (=> b!6919887 m!7629980))

(assert (=> d!2164362 m!7629974))

(declare-fun m!7629982 () Bool)

(assert (=> d!2164362 m!7629982))

(assert (=> d!2164362 m!7629466))

(declare-fun m!7629984 () Bool)

(assert (=> b!6919885 m!7629984))

(assert (=> b!6919885 m!7629984))

(declare-fun m!7629986 () Bool)

(assert (=> b!6919885 m!7629986))

(declare-fun m!7629988 () Bool)

(assert (=> b!6919885 m!7629988))

(assert (=> b!6919885 m!7629984))

(declare-fun m!7629990 () Bool)

(assert (=> b!6919885 m!7629990))

(assert (=> b!6919352 d!2164362))

(declare-fun bs!1846451 () Bool)

(declare-fun d!2164364 () Bool)

(assert (= bs!1846451 (and d!2164364 b!6919578)))

(declare-fun lambda!393297 () Int)

(assert (=> bs!1846451 (not (= lambda!393297 lambda!393270))))

(declare-fun bs!1846452 () Bool)

(assert (= bs!1846452 (and d!2164364 b!6919853)))

(assert (=> bs!1846452 (not (= lambda!393297 lambda!393294))))

(declare-fun bs!1846453 () Bool)

(assert (= bs!1846453 (and d!2164364 b!6919838)))

(assert (=> bs!1846453 (not (= lambda!393297 lambda!393289))))

(declare-fun bs!1846454 () Bool)

(assert (= bs!1846454 (and d!2164364 d!2164274)))

(assert (=> bs!1846454 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393297 lambda!393265))))

(declare-fun bs!1846455 () Bool)

(assert (= bs!1846455 (and d!2164364 b!6919352)))

(assert (=> bs!1846455 (= lambda!393297 lambda!393235)))

(declare-fun bs!1846456 () Bool)

(assert (= bs!1846456 (and d!2164364 b!6919355)))

(assert (=> bs!1846456 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393297 lambda!393233))))

(assert (=> bs!1846455 (not (= lambda!393297 lambda!393236))))

(declare-fun bs!1846457 () Bool)

(assert (= bs!1846457 (and d!2164364 b!6919810)))

(assert (=> bs!1846457 (not (= lambda!393297 lambda!393285))))

(declare-fun bs!1846458 () Bool)

(assert (= bs!1846458 (and d!2164364 d!2164288)))

(assert (=> bs!1846458 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393297 lambda!393276))))

(declare-fun bs!1846459 () Bool)

(assert (= bs!1846459 (and d!2164364 d!2164312)))

(assert (=> bs!1846459 (not (= lambda!393297 lambda!393283))))

(declare-fun bs!1846460 () Bool)

(assert (= bs!1846460 (and d!2164364 d!2164318)))

(assert (=> bs!1846460 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393297 lambda!393284))))

(declare-fun bs!1846461 () Bool)

(assert (= bs!1846461 (and d!2164364 b!6919833)))

(assert (=> bs!1846461 (not (= lambda!393297 lambda!393292))))

(declare-fun bs!1846462 () Bool)

(assert (= bs!1846462 (and d!2164364 b!6919848)))

(assert (=> bs!1846462 (not (= lambda!393297 lambda!393296))))

(declare-fun bs!1846463 () Bool)

(assert (= bs!1846463 (and d!2164364 b!6919573)))

(assert (=> bs!1846463 (not (= lambda!393297 lambda!393271))))

(declare-fun bs!1846464 () Bool)

(assert (= bs!1846464 (and d!2164364 b!6919737)))

(assert (=> bs!1846464 (not (= lambda!393297 lambda!393278))))

(assert (=> bs!1846458 (not (= lambda!393297 lambda!393277))))

(declare-fun bs!1846465 () Bool)

(assert (= bs!1846465 (and d!2164364 b!6919757)))

(assert (=> bs!1846465 (not (= lambda!393297 lambda!393281))))

(declare-fun bs!1846466 () Bool)

(assert (= bs!1846466 (and d!2164364 b!6919762)))

(assert (=> bs!1846466 (not (= lambda!393297 lambda!393280))))

(assert (=> bs!1846459 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393297 lambda!393282))))

(declare-fun bs!1846467 () Bool)

(assert (= bs!1846467 (and d!2164364 b!6919805)))

(assert (=> bs!1846467 (not (= lambda!393297 lambda!393286))))

(declare-fun bs!1846468 () Bool)

(assert (= bs!1846468 (and d!2164364 b!6919356)))

(assert (=> bs!1846468 (not (= lambda!393297 lambda!393238))))

(assert (=> bs!1846468 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393297 lambda!393237))))

(declare-fun bs!1846469 () Bool)

(assert (= bs!1846469 (and d!2164364 b!6919732)))

(assert (=> bs!1846469 (not (= lambda!393297 lambda!393279))))

(assert (=> bs!1846456 (not (= lambda!393297 lambda!393234))))

(assert (=> d!2164364 true))

(assert (=> d!2164364 true))

(assert (=> d!2164364 true))

(assert (=> d!2164364 (= (isDefined!13384 (findConcatSeparation!3095 r1!6342 r2!6280 Nil!66541 (_1!37072 lt!2469871) (_1!37072 lt!2469871))) (Exists!3914 lambda!393297))))

(declare-fun lt!2470004 () Unit!160548)

(assert (=> d!2164364 (= lt!2470004 (choose!51520 r1!6342 r2!6280 (_1!37072 lt!2469871)))))

(assert (=> d!2164364 (validRegex!8618 r1!6342)))

(assert (=> d!2164364 (= (lemmaFindConcatSeparationEquivalentToExists!2857 r1!6342 r2!6280 (_1!37072 lt!2469871)) lt!2470004)))

(declare-fun bs!1846470 () Bool)

(assert (= bs!1846470 d!2164364))

(assert (=> bs!1846470 m!7629466))

(declare-fun m!7629992 () Bool)

(assert (=> bs!1846470 m!7629992))

(assert (=> bs!1846470 m!7629516))

(declare-fun m!7629994 () Bool)

(assert (=> bs!1846470 m!7629994))

(assert (=> bs!1846470 m!7629516))

(declare-fun m!7629996 () Bool)

(assert (=> bs!1846470 m!7629996))

(assert (=> b!6919352 d!2164364))

(declare-fun d!2164366 () Bool)

(assert (=> d!2164366 (= (Exists!3914 lambda!393236) (choose!51518 lambda!393236))))

(declare-fun bs!1846471 () Bool)

(assert (= bs!1846471 d!2164366))

(declare-fun m!7629998 () Bool)

(assert (=> bs!1846471 m!7629998))

(assert (=> b!6919352 d!2164366))

(declare-fun d!2164368 () Bool)

(assert (=> d!2164368 (= (get!23309 lt!2469869) (v!52952 lt!2469869))))

(assert (=> b!6919352 d!2164368))

(declare-fun bs!1846472 () Bool)

(declare-fun d!2164370 () Bool)

(assert (= bs!1846472 (and d!2164370 b!6919578)))

(declare-fun lambda!393300 () Int)

(assert (=> bs!1846472 (not (= lambda!393300 lambda!393270))))

(declare-fun bs!1846473 () Bool)

(assert (= bs!1846473 (and d!2164370 b!6919838)))

(assert (=> bs!1846473 (not (= lambda!393300 lambda!393289))))

(declare-fun bs!1846474 () Bool)

(assert (= bs!1846474 (and d!2164370 d!2164274)))

(assert (=> bs!1846474 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393300 lambda!393265))))

(declare-fun bs!1846475 () Bool)

(assert (= bs!1846475 (and d!2164370 b!6919352)))

(assert (=> bs!1846475 (= lambda!393300 lambda!393235)))

(declare-fun bs!1846476 () Bool)

(assert (= bs!1846476 (and d!2164370 b!6919355)))

(assert (=> bs!1846476 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393300 lambda!393233))))

(assert (=> bs!1846475 (not (= lambda!393300 lambda!393236))))

(declare-fun bs!1846477 () Bool)

(assert (= bs!1846477 (and d!2164370 b!6919810)))

(assert (=> bs!1846477 (not (= lambda!393300 lambda!393285))))

(declare-fun bs!1846478 () Bool)

(assert (= bs!1846478 (and d!2164370 d!2164288)))

(assert (=> bs!1846478 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393300 lambda!393276))))

(declare-fun bs!1846479 () Bool)

(assert (= bs!1846479 (and d!2164370 d!2164312)))

(assert (=> bs!1846479 (not (= lambda!393300 lambda!393283))))

(declare-fun bs!1846480 () Bool)

(assert (= bs!1846480 (and d!2164370 d!2164318)))

(assert (=> bs!1846480 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393300 lambda!393284))))

(declare-fun bs!1846481 () Bool)

(assert (= bs!1846481 (and d!2164370 b!6919833)))

(assert (=> bs!1846481 (not (= lambda!393300 lambda!393292))))

(declare-fun bs!1846482 () Bool)

(assert (= bs!1846482 (and d!2164370 d!2164364)))

(assert (=> bs!1846482 (= lambda!393300 lambda!393297)))

(declare-fun bs!1846483 () Bool)

(assert (= bs!1846483 (and d!2164370 b!6919853)))

(assert (=> bs!1846483 (not (= lambda!393300 lambda!393294))))

(declare-fun bs!1846484 () Bool)

(assert (= bs!1846484 (and d!2164370 b!6919848)))

(assert (=> bs!1846484 (not (= lambda!393300 lambda!393296))))

(declare-fun bs!1846485 () Bool)

(assert (= bs!1846485 (and d!2164370 b!6919573)))

(assert (=> bs!1846485 (not (= lambda!393300 lambda!393271))))

(declare-fun bs!1846486 () Bool)

(assert (= bs!1846486 (and d!2164370 b!6919737)))

(assert (=> bs!1846486 (not (= lambda!393300 lambda!393278))))

(assert (=> bs!1846478 (not (= lambda!393300 lambda!393277))))

(declare-fun bs!1846487 () Bool)

(assert (= bs!1846487 (and d!2164370 b!6919757)))

(assert (=> bs!1846487 (not (= lambda!393300 lambda!393281))))

(declare-fun bs!1846488 () Bool)

(assert (= bs!1846488 (and d!2164370 b!6919762)))

(assert (=> bs!1846488 (not (= lambda!393300 lambda!393280))))

(assert (=> bs!1846479 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393300 lambda!393282))))

(declare-fun bs!1846489 () Bool)

(assert (= bs!1846489 (and d!2164370 b!6919805)))

(assert (=> bs!1846489 (not (= lambda!393300 lambda!393286))))

(declare-fun bs!1846490 () Bool)

(assert (= bs!1846490 (and d!2164370 b!6919356)))

(assert (=> bs!1846490 (not (= lambda!393300 lambda!393238))))

(assert (=> bs!1846490 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393300 lambda!393237))))

(declare-fun bs!1846492 () Bool)

(assert (= bs!1846492 (and d!2164370 b!6919732)))

(assert (=> bs!1846492 (not (= lambda!393300 lambda!393279))))

(assert (=> bs!1846476 (not (= lambda!393300 lambda!393234))))

(assert (=> d!2164370 true))

(assert (=> d!2164370 true))

(assert (=> d!2164370 true))

(declare-fun lambda!393302 () Int)

(assert (=> bs!1846472 (not (= lambda!393302 lambda!393270))))

(assert (=> bs!1846473 (not (= lambda!393302 lambda!393289))))

(assert (=> bs!1846474 (not (= lambda!393302 lambda!393265))))

(assert (=> bs!1846475 (not (= lambda!393302 lambda!393235))))

(assert (=> bs!1846476 (not (= lambda!393302 lambda!393233))))

(assert (=> bs!1846475 (= lambda!393302 lambda!393236)))

(assert (=> bs!1846477 (not (= lambda!393302 lambda!393285))))

(assert (=> bs!1846479 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393302 lambda!393283))))

(assert (=> bs!1846480 (not (= lambda!393302 lambda!393284))))

(assert (=> bs!1846481 (= (and (= (_1!37072 lt!2469871) (_1!37072 lt!2469855)) (= r1!6342 (regOne!34336 r1!6342)) (= r2!6280 (regTwo!34336 r1!6342))) (= lambda!393302 lambda!393292))))

(assert (=> bs!1846482 (not (= lambda!393302 lambda!393297))))

(assert (=> bs!1846483 (not (= lambda!393302 lambda!393294))))

(assert (=> bs!1846484 (= (and (= (_1!37072 lt!2469871) (_2!37072 lt!2469855)) (= r1!6342 (regOne!34336 r2!6280)) (= r2!6280 (regTwo!34336 r2!6280))) (= lambda!393302 lambda!393296))))

(assert (=> bs!1846485 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= r1!6342 (regOne!34336 lt!2469860)) (= r2!6280 (regTwo!34336 lt!2469860))) (= lambda!393302 lambda!393271))))

(assert (=> bs!1846486 (not (= lambda!393302 lambda!393278))))

(assert (=> bs!1846478 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393302 lambda!393277))))

(assert (=> bs!1846487 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 (regOne!34336 lt!2469865)) (= r2!6280 (regTwo!34336 lt!2469865))) (= lambda!393302 lambda!393281))))

(assert (=> bs!1846488 (not (= lambda!393302 lambda!393280))))

(assert (=> bs!1846479 (not (= lambda!393302 lambda!393282))))

(assert (=> bs!1846489 (= (and (= r1!6342 (regOne!34336 lt!2469857)) (= r2!6280 (regTwo!34336 lt!2469857))) (= lambda!393302 lambda!393286))))

(assert (=> bs!1846490 (= (and (= (_1!37072 lt!2469871) lt!2469872) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393302 lambda!393238))))

(assert (=> bs!1846490 (not (= lambda!393302 lambda!393237))))

(declare-fun bs!1846497 () Bool)

(assert (= bs!1846497 d!2164370))

(assert (=> bs!1846497 (not (= lambda!393302 lambda!393300))))

(assert (=> bs!1846478 (not (= lambda!393302 lambda!393276))))

(assert (=> bs!1846492 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 (regOne!34336 lt!2469851)) (= r2!6280 (regTwo!34336 lt!2469851))) (= lambda!393302 lambda!393279))))

(assert (=> bs!1846476 (= (and (= (_1!37072 lt!2469871) s!14361) (= r1!6342 lt!2469857) (= r2!6280 r3!135)) (= lambda!393302 lambda!393234))))

(assert (=> d!2164370 true))

(assert (=> d!2164370 true))

(assert (=> d!2164370 true))

(assert (=> d!2164370 (= (Exists!3914 lambda!393300) (Exists!3914 lambda!393302))))

(declare-fun lt!2470007 () Unit!160548)

(assert (=> d!2164370 (= lt!2470007 (choose!51521 r1!6342 r2!6280 (_1!37072 lt!2469871)))))

(assert (=> d!2164370 (validRegex!8618 r1!6342)))

(assert (=> d!2164370 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2381 r1!6342 r2!6280 (_1!37072 lt!2469871)) lt!2470007)))

(declare-fun m!7630006 () Bool)

(assert (=> bs!1846497 m!7630006))

(declare-fun m!7630008 () Bool)

(assert (=> bs!1846497 m!7630008))

(declare-fun m!7630010 () Bool)

(assert (=> bs!1846497 m!7630010))

(assert (=> bs!1846497 m!7629466))

(assert (=> b!6919352 d!2164370))

(declare-fun b!6919896 () Bool)

(declare-fun res!2821576 () Bool)

(declare-fun e!4164977 () Bool)

(assert (=> b!6919896 (=> res!2821576 e!4164977)))

(declare-fun e!4164971 () Bool)

(assert (=> b!6919896 (= res!2821576 e!4164971)))

(declare-fun res!2821577 () Bool)

(assert (=> b!6919896 (=> (not res!2821577) (not e!4164971))))

(declare-fun lt!2470009 () Bool)

(assert (=> b!6919896 (= res!2821577 lt!2470009)))

(declare-fun b!6919897 () Bool)

(declare-fun res!2821574 () Bool)

(assert (=> b!6919897 (=> (not res!2821574) (not e!4164971))))

(assert (=> b!6919897 (= res!2821574 (isEmpty!38792 (tail!12925 (_2!37072 lt!2469855))))))

(declare-fun b!6919898 () Bool)

(declare-fun e!4164974 () Bool)

(assert (=> b!6919898 (= e!4164974 (not lt!2470009))))

(declare-fun b!6919899 () Bool)

(declare-fun res!2821572 () Bool)

(assert (=> b!6919899 (=> (not res!2821572) (not e!4164971))))

(declare-fun call!629045 () Bool)

(assert (=> b!6919899 (= res!2821572 (not call!629045))))

(declare-fun b!6919900 () Bool)

(declare-fun e!4164972 () Bool)

(declare-fun e!4164976 () Bool)

(assert (=> b!6919900 (= e!4164972 e!4164976)))

(declare-fun res!2821573 () Bool)

(assert (=> b!6919900 (=> res!2821573 e!4164976)))

(assert (=> b!6919900 (= res!2821573 call!629045)))

(declare-fun b!6919901 () Bool)

(declare-fun e!4164975 () Bool)

(assert (=> b!6919901 (= e!4164975 e!4164974)))

(declare-fun c!1284802 () Bool)

(assert (=> b!6919901 (= c!1284802 (is-EmptyLang!16912 r2!6280))))

(declare-fun b!6919903 () Bool)

(assert (=> b!6919903 (= e!4164971 (= (head!13873 (_2!37072 lt!2469855)) (c!1284706 r2!6280)))))

(declare-fun b!6919904 () Bool)

(assert (=> b!6919904 (= e!4164975 (= lt!2470009 call!629045))))

(declare-fun bm!629040 () Bool)

(assert (=> bm!629040 (= call!629045 (isEmpty!38792 (_2!37072 lt!2469855)))))

(declare-fun b!6919905 () Bool)

(declare-fun e!4164973 () Bool)

(assert (=> b!6919905 (= e!4164973 (nullable!6745 r2!6280))))

(declare-fun d!2164374 () Bool)

(assert (=> d!2164374 e!4164975))

(declare-fun c!1284803 () Bool)

(assert (=> d!2164374 (= c!1284803 (is-EmptyExpr!16912 r2!6280))))

(assert (=> d!2164374 (= lt!2470009 e!4164973)))

(declare-fun c!1284804 () Bool)

(assert (=> d!2164374 (= c!1284804 (isEmpty!38792 (_2!37072 lt!2469855)))))

(assert (=> d!2164374 (validRegex!8618 r2!6280)))

(assert (=> d!2164374 (= (matchR!9051 r2!6280 (_2!37072 lt!2469855)) lt!2470009)))

(declare-fun b!6919902 () Bool)

(declare-fun res!2821575 () Bool)

(assert (=> b!6919902 (=> res!2821575 e!4164977)))

(assert (=> b!6919902 (= res!2821575 (not (is-ElementMatch!16912 r2!6280)))))

(assert (=> b!6919902 (= e!4164974 e!4164977)))

(declare-fun b!6919906 () Bool)

(declare-fun res!2821571 () Bool)

(assert (=> b!6919906 (=> res!2821571 e!4164976)))

(assert (=> b!6919906 (= res!2821571 (not (isEmpty!38792 (tail!12925 (_2!37072 lt!2469855)))))))

(declare-fun b!6919907 () Bool)

(assert (=> b!6919907 (= e!4164976 (not (= (head!13873 (_2!37072 lt!2469855)) (c!1284706 r2!6280))))))

(declare-fun b!6919908 () Bool)

(assert (=> b!6919908 (= e!4164977 e!4164972)))

(declare-fun res!2821578 () Bool)

(assert (=> b!6919908 (=> (not res!2821578) (not e!4164972))))

(assert (=> b!6919908 (= res!2821578 (not lt!2470009))))

(declare-fun b!6919909 () Bool)

(assert (=> b!6919909 (= e!4164973 (matchR!9051 (derivativeStep!5420 r2!6280 (head!13873 (_2!37072 lt!2469855))) (tail!12925 (_2!37072 lt!2469855))))))

(assert (= (and d!2164374 c!1284804) b!6919905))

(assert (= (and d!2164374 (not c!1284804)) b!6919909))

(assert (= (and d!2164374 c!1284803) b!6919904))

(assert (= (and d!2164374 (not c!1284803)) b!6919901))

(assert (= (and b!6919901 c!1284802) b!6919898))

(assert (= (and b!6919901 (not c!1284802)) b!6919902))

(assert (= (and b!6919902 (not res!2821575)) b!6919896))

(assert (= (and b!6919896 res!2821577) b!6919899))

(assert (= (and b!6919899 res!2821572) b!6919897))

(assert (= (and b!6919897 res!2821574) b!6919903))

(assert (= (and b!6919896 (not res!2821576)) b!6919908))

(assert (= (and b!6919908 res!2821578) b!6919900))

(assert (= (and b!6919900 (not res!2821573)) b!6919906))

(assert (= (and b!6919906 (not res!2821571)) b!6919907))

(assert (= (or b!6919904 b!6919899 b!6919900) bm!629040))

(assert (=> b!6919906 m!7629684))

(assert (=> b!6919906 m!7629684))

(declare-fun m!7630012 () Bool)

(assert (=> b!6919906 m!7630012))

(assert (=> b!6919897 m!7629684))

(assert (=> b!6919897 m!7629684))

(assert (=> b!6919897 m!7630012))

(assert (=> bm!629040 m!7629934))

(assert (=> b!6919909 m!7629680))

(assert (=> b!6919909 m!7629680))

(declare-fun m!7630014 () Bool)

(assert (=> b!6919909 m!7630014))

(assert (=> b!6919909 m!7629684))

(assert (=> b!6919909 m!7630014))

(assert (=> b!6919909 m!7629684))

(declare-fun m!7630016 () Bool)

(assert (=> b!6919909 m!7630016))

(assert (=> b!6919907 m!7629680))

(assert (=> d!2164374 m!7629934))

(assert (=> d!2164374 m!7629534))

(declare-fun m!7630018 () Bool)

(assert (=> b!6919905 m!7630018))

(assert (=> b!6919903 m!7629680))

(assert (=> b!6919357 d!2164374))

(declare-fun b!6919910 () Bool)

(declare-fun res!2821580 () Bool)

(declare-fun e!4164982 () Bool)

(assert (=> b!6919910 (=> res!2821580 e!4164982)))

(assert (=> b!6919910 (= res!2821580 (not (is-Concat!25757 r2!6280)))))

(declare-fun e!4164981 () Bool)

(assert (=> b!6919910 (= e!4164981 e!4164982)))

(declare-fun bm!629041 () Bool)

(declare-fun call!629046 () Bool)

(declare-fun c!1284806 () Bool)

(assert (=> bm!629041 (= call!629046 (validRegex!8618 (ite c!1284806 (regOne!34337 r2!6280) (regTwo!34336 r2!6280))))))

(declare-fun call!629048 () Bool)

(declare-fun bm!629042 () Bool)

(declare-fun c!1284805 () Bool)

(assert (=> bm!629042 (= call!629048 (validRegex!8618 (ite c!1284805 (reg!17241 r2!6280) (ite c!1284806 (regTwo!34337 r2!6280) (regOne!34336 r2!6280)))))))

(declare-fun b!6919911 () Bool)

(declare-fun e!4164983 () Bool)

(assert (=> b!6919911 (= e!4164983 call!629048)))

(declare-fun b!6919912 () Bool)

(declare-fun e!4164984 () Bool)

(assert (=> b!6919912 (= e!4164984 e!4164981)))

(assert (=> b!6919912 (= c!1284806 (is-Union!16912 r2!6280))))

(declare-fun bm!629043 () Bool)

(declare-fun call!629047 () Bool)

(assert (=> bm!629043 (= call!629047 call!629048)))

(declare-fun b!6919913 () Bool)

(assert (=> b!6919913 (= e!4164984 e!4164983)))

(declare-fun res!2821581 () Bool)

(assert (=> b!6919913 (= res!2821581 (not (nullable!6745 (reg!17241 r2!6280))))))

(assert (=> b!6919913 (=> (not res!2821581) (not e!4164983))))

(declare-fun d!2164376 () Bool)

(declare-fun res!2821579 () Bool)

(declare-fun e!4164979 () Bool)

(assert (=> d!2164376 (=> res!2821579 e!4164979)))

(assert (=> d!2164376 (= res!2821579 (is-ElementMatch!16912 r2!6280))))

(assert (=> d!2164376 (= (validRegex!8618 r2!6280) e!4164979)))

(declare-fun b!6919914 () Bool)

(declare-fun res!2821582 () Bool)

(declare-fun e!4164980 () Bool)

(assert (=> b!6919914 (=> (not res!2821582) (not e!4164980))))

(assert (=> b!6919914 (= res!2821582 call!629046)))

(assert (=> b!6919914 (= e!4164981 e!4164980)))

(declare-fun b!6919915 () Bool)

(declare-fun e!4164978 () Bool)

(assert (=> b!6919915 (= e!4164982 e!4164978)))

(declare-fun res!2821583 () Bool)

(assert (=> b!6919915 (=> (not res!2821583) (not e!4164978))))

(assert (=> b!6919915 (= res!2821583 call!629047)))

(declare-fun b!6919916 () Bool)

(assert (=> b!6919916 (= e!4164980 call!629047)))

(declare-fun b!6919917 () Bool)

(assert (=> b!6919917 (= e!4164978 call!629046)))

(declare-fun b!6919918 () Bool)

(assert (=> b!6919918 (= e!4164979 e!4164984)))

(assert (=> b!6919918 (= c!1284805 (is-Star!16912 r2!6280))))

(assert (= (and d!2164376 (not res!2821579)) b!6919918))

(assert (= (and b!6919918 c!1284805) b!6919913))

(assert (= (and b!6919918 (not c!1284805)) b!6919912))

(assert (= (and b!6919913 res!2821581) b!6919911))

(assert (= (and b!6919912 c!1284806) b!6919914))

(assert (= (and b!6919912 (not c!1284806)) b!6919910))

(assert (= (and b!6919914 res!2821582) b!6919916))

(assert (= (and b!6919910 (not res!2821580)) b!6919915))

(assert (= (and b!6919915 res!2821583) b!6919917))

(assert (= (or b!6919914 b!6919917) bm!629041))

(assert (= (or b!6919916 b!6919915) bm!629043))

(assert (= (or b!6919911 bm!629043) bm!629042))

(declare-fun m!7630020 () Bool)

(assert (=> bm!629041 m!7630020))

(declare-fun m!7630022 () Bool)

(assert (=> bm!629042 m!7630022))

(declare-fun m!7630024 () Bool)

(assert (=> b!6919913 m!7630024))

(assert (=> b!6919347 d!2164376))

(declare-fun b!6919950 () Bool)

(declare-fun e!4165001 () Bool)

(declare-fun tp!1907360 () Bool)

(declare-fun tp!1907361 () Bool)

(assert (=> b!6919950 (= e!4165001 (and tp!1907360 tp!1907361))))

(declare-fun b!6919947 () Bool)

(assert (=> b!6919947 (= e!4165001 tp_is_empty!43049)))

(assert (=> b!6919362 (= tp!1907286 e!4165001)))

(declare-fun b!6919948 () Bool)

(declare-fun tp!1907362 () Bool)

(declare-fun tp!1907358 () Bool)

(assert (=> b!6919948 (= e!4165001 (and tp!1907362 tp!1907358))))

(declare-fun b!6919949 () Bool)

(declare-fun tp!1907359 () Bool)

(assert (=> b!6919949 (= e!4165001 tp!1907359)))

(assert (= (and b!6919362 (is-ElementMatch!16912 (regOne!34337 r2!6280))) b!6919947))

(assert (= (and b!6919362 (is-Concat!25757 (regOne!34337 r2!6280))) b!6919948))

(assert (= (and b!6919362 (is-Star!16912 (regOne!34337 r2!6280))) b!6919949))

(assert (= (and b!6919362 (is-Union!16912 (regOne!34337 r2!6280))) b!6919950))

(declare-fun b!6919954 () Bool)

(declare-fun e!4165002 () Bool)

(declare-fun tp!1907365 () Bool)

(declare-fun tp!1907366 () Bool)

(assert (=> b!6919954 (= e!4165002 (and tp!1907365 tp!1907366))))

(declare-fun b!6919951 () Bool)

(assert (=> b!6919951 (= e!4165002 tp_is_empty!43049)))

(assert (=> b!6919362 (= tp!1907299 e!4165002)))

(declare-fun b!6919952 () Bool)

(declare-fun tp!1907367 () Bool)

(declare-fun tp!1907363 () Bool)

(assert (=> b!6919952 (= e!4165002 (and tp!1907367 tp!1907363))))

(declare-fun b!6919953 () Bool)

(declare-fun tp!1907364 () Bool)

(assert (=> b!6919953 (= e!4165002 tp!1907364)))

(assert (= (and b!6919362 (is-ElementMatch!16912 (regTwo!34337 r2!6280))) b!6919951))

(assert (= (and b!6919362 (is-Concat!25757 (regTwo!34337 r2!6280))) b!6919952))

(assert (= (and b!6919362 (is-Star!16912 (regTwo!34337 r2!6280))) b!6919953))

(assert (= (and b!6919362 (is-Union!16912 (regTwo!34337 r2!6280))) b!6919954))

(declare-fun b!6919958 () Bool)

(declare-fun e!4165003 () Bool)

(declare-fun tp!1907370 () Bool)

(declare-fun tp!1907371 () Bool)

(assert (=> b!6919958 (= e!4165003 (and tp!1907370 tp!1907371))))

(declare-fun b!6919955 () Bool)

(assert (=> b!6919955 (= e!4165003 tp_is_empty!43049)))

(assert (=> b!6919346 (= tp!1907284 e!4165003)))

(declare-fun b!6919956 () Bool)

(declare-fun tp!1907372 () Bool)

(declare-fun tp!1907368 () Bool)

(assert (=> b!6919956 (= e!4165003 (and tp!1907372 tp!1907368))))

(declare-fun b!6919957 () Bool)

(declare-fun tp!1907369 () Bool)

(assert (=> b!6919957 (= e!4165003 tp!1907369)))

(assert (= (and b!6919346 (is-ElementMatch!16912 (regOne!34337 r3!135))) b!6919955))

(assert (= (and b!6919346 (is-Concat!25757 (regOne!34337 r3!135))) b!6919956))

(assert (= (and b!6919346 (is-Star!16912 (regOne!34337 r3!135))) b!6919957))

(assert (= (and b!6919346 (is-Union!16912 (regOne!34337 r3!135))) b!6919958))

(declare-fun b!6919962 () Bool)

(declare-fun e!4165004 () Bool)

(declare-fun tp!1907375 () Bool)

(declare-fun tp!1907376 () Bool)

(assert (=> b!6919962 (= e!4165004 (and tp!1907375 tp!1907376))))

(declare-fun b!6919959 () Bool)

(assert (=> b!6919959 (= e!4165004 tp_is_empty!43049)))

(assert (=> b!6919346 (= tp!1907290 e!4165004)))

(declare-fun b!6919960 () Bool)

(declare-fun tp!1907377 () Bool)

(declare-fun tp!1907373 () Bool)

(assert (=> b!6919960 (= e!4165004 (and tp!1907377 tp!1907373))))

(declare-fun b!6919961 () Bool)

(declare-fun tp!1907374 () Bool)

(assert (=> b!6919961 (= e!4165004 tp!1907374)))

(assert (= (and b!6919346 (is-ElementMatch!16912 (regTwo!34337 r3!135))) b!6919959))

(assert (= (and b!6919346 (is-Concat!25757 (regTwo!34337 r3!135))) b!6919960))

(assert (= (and b!6919346 (is-Star!16912 (regTwo!34337 r3!135))) b!6919961))

(assert (= (and b!6919346 (is-Union!16912 (regTwo!34337 r3!135))) b!6919962))

(declare-fun b!6919967 () Bool)

(declare-fun e!4165007 () Bool)

(declare-fun tp!1907380 () Bool)

(assert (=> b!6919967 (= e!4165007 (and tp_is_empty!43049 tp!1907380))))

(assert (=> b!6919365 (= tp!1907287 e!4165007)))

(assert (= (and b!6919365 (is-Cons!66541 (t!380408 s!14361))) b!6919967))

(declare-fun b!6919971 () Bool)

(declare-fun e!4165008 () Bool)

(declare-fun tp!1907383 () Bool)

(declare-fun tp!1907384 () Bool)

(assert (=> b!6919971 (= e!4165008 (and tp!1907383 tp!1907384))))

(declare-fun b!6919968 () Bool)

(assert (=> b!6919968 (= e!4165008 tp_is_empty!43049)))

(assert (=> b!6919350 (= tp!1907297 e!4165008)))

(declare-fun b!6919969 () Bool)

(declare-fun tp!1907385 () Bool)

(declare-fun tp!1907381 () Bool)

(assert (=> b!6919969 (= e!4165008 (and tp!1907385 tp!1907381))))

(declare-fun b!6919970 () Bool)

(declare-fun tp!1907382 () Bool)

(assert (=> b!6919970 (= e!4165008 tp!1907382)))

(assert (= (and b!6919350 (is-ElementMatch!16912 (reg!17241 r2!6280))) b!6919968))

(assert (= (and b!6919350 (is-Concat!25757 (reg!17241 r2!6280))) b!6919969))

(assert (= (and b!6919350 (is-Star!16912 (reg!17241 r2!6280))) b!6919970))

(assert (= (and b!6919350 (is-Union!16912 (reg!17241 r2!6280))) b!6919971))

(declare-fun b!6919975 () Bool)

(declare-fun e!4165009 () Bool)

(declare-fun tp!1907388 () Bool)

(declare-fun tp!1907389 () Bool)

(assert (=> b!6919975 (= e!4165009 (and tp!1907388 tp!1907389))))

(declare-fun b!6919972 () Bool)

(assert (=> b!6919972 (= e!4165009 tp_is_empty!43049)))

(assert (=> b!6919364 (= tp!1907288 e!4165009)))

(declare-fun b!6919973 () Bool)

(declare-fun tp!1907390 () Bool)

(declare-fun tp!1907386 () Bool)

(assert (=> b!6919973 (= e!4165009 (and tp!1907390 tp!1907386))))

(declare-fun b!6919974 () Bool)

(declare-fun tp!1907387 () Bool)

(assert (=> b!6919974 (= e!4165009 tp!1907387)))

(assert (= (and b!6919364 (is-ElementMatch!16912 (regOne!34336 r2!6280))) b!6919972))

(assert (= (and b!6919364 (is-Concat!25757 (regOne!34336 r2!6280))) b!6919973))

(assert (= (and b!6919364 (is-Star!16912 (regOne!34336 r2!6280))) b!6919974))

(assert (= (and b!6919364 (is-Union!16912 (regOne!34336 r2!6280))) b!6919975))

(declare-fun b!6919979 () Bool)

(declare-fun e!4165010 () Bool)

(declare-fun tp!1907393 () Bool)

(declare-fun tp!1907394 () Bool)

(assert (=> b!6919979 (= e!4165010 (and tp!1907393 tp!1907394))))

(declare-fun b!6919976 () Bool)

(assert (=> b!6919976 (= e!4165010 tp_is_empty!43049)))

(assert (=> b!6919364 (= tp!1907293 e!4165010)))

(declare-fun b!6919977 () Bool)

(declare-fun tp!1907395 () Bool)

(declare-fun tp!1907391 () Bool)

(assert (=> b!6919977 (= e!4165010 (and tp!1907395 tp!1907391))))

(declare-fun b!6919978 () Bool)

(declare-fun tp!1907392 () Bool)

(assert (=> b!6919978 (= e!4165010 tp!1907392)))

(assert (= (and b!6919364 (is-ElementMatch!16912 (regTwo!34336 r2!6280))) b!6919976))

(assert (= (and b!6919364 (is-Concat!25757 (regTwo!34336 r2!6280))) b!6919977))

(assert (= (and b!6919364 (is-Star!16912 (regTwo!34336 r2!6280))) b!6919978))

(assert (= (and b!6919364 (is-Union!16912 (regTwo!34336 r2!6280))) b!6919979))

(declare-fun b!6919983 () Bool)

(declare-fun e!4165011 () Bool)

(declare-fun tp!1907398 () Bool)

(declare-fun tp!1907399 () Bool)

(assert (=> b!6919983 (= e!4165011 (and tp!1907398 tp!1907399))))

(declare-fun b!6919980 () Bool)

(assert (=> b!6919980 (= e!4165011 tp_is_empty!43049)))

(assert (=> b!6919348 (= tp!1907296 e!4165011)))

(declare-fun b!6919981 () Bool)

(declare-fun tp!1907400 () Bool)

(declare-fun tp!1907396 () Bool)

(assert (=> b!6919981 (= e!4165011 (and tp!1907400 tp!1907396))))

(declare-fun b!6919982 () Bool)

(declare-fun tp!1907397 () Bool)

(assert (=> b!6919982 (= e!4165011 tp!1907397)))

(assert (= (and b!6919348 (is-ElementMatch!16912 (regOne!34337 r1!6342))) b!6919980))

(assert (= (and b!6919348 (is-Concat!25757 (regOne!34337 r1!6342))) b!6919981))

(assert (= (and b!6919348 (is-Star!16912 (regOne!34337 r1!6342))) b!6919982))

(assert (= (and b!6919348 (is-Union!16912 (regOne!34337 r1!6342))) b!6919983))

(declare-fun b!6919987 () Bool)

(declare-fun e!4165012 () Bool)

(declare-fun tp!1907403 () Bool)

(declare-fun tp!1907404 () Bool)

(assert (=> b!6919987 (= e!4165012 (and tp!1907403 tp!1907404))))

(declare-fun b!6919984 () Bool)

(assert (=> b!6919984 (= e!4165012 tp_is_empty!43049)))

(assert (=> b!6919348 (= tp!1907289 e!4165012)))

(declare-fun b!6919985 () Bool)

(declare-fun tp!1907405 () Bool)

(declare-fun tp!1907401 () Bool)

(assert (=> b!6919985 (= e!4165012 (and tp!1907405 tp!1907401))))

(declare-fun b!6919986 () Bool)

(declare-fun tp!1907402 () Bool)

(assert (=> b!6919986 (= e!4165012 tp!1907402)))

(assert (= (and b!6919348 (is-ElementMatch!16912 (regTwo!34337 r1!6342))) b!6919984))

(assert (= (and b!6919348 (is-Concat!25757 (regTwo!34337 r1!6342))) b!6919985))

(assert (= (and b!6919348 (is-Star!16912 (regTwo!34337 r1!6342))) b!6919986))

(assert (= (and b!6919348 (is-Union!16912 (regTwo!34337 r1!6342))) b!6919987))

(declare-fun b!6919991 () Bool)

(declare-fun e!4165013 () Bool)

(declare-fun tp!1907408 () Bool)

(declare-fun tp!1907409 () Bool)

(assert (=> b!6919991 (= e!4165013 (and tp!1907408 tp!1907409))))

(declare-fun b!6919988 () Bool)

(assert (=> b!6919988 (= e!4165013 tp_is_empty!43049)))

(assert (=> b!6919354 (= tp!1907291 e!4165013)))

(declare-fun b!6919989 () Bool)

(declare-fun tp!1907410 () Bool)

(declare-fun tp!1907406 () Bool)

(assert (=> b!6919989 (= e!4165013 (and tp!1907410 tp!1907406))))

(declare-fun b!6919990 () Bool)

(declare-fun tp!1907407 () Bool)

(assert (=> b!6919990 (= e!4165013 tp!1907407)))

(assert (= (and b!6919354 (is-ElementMatch!16912 (regOne!34336 r3!135))) b!6919988))

(assert (= (and b!6919354 (is-Concat!25757 (regOne!34336 r3!135))) b!6919989))

(assert (= (and b!6919354 (is-Star!16912 (regOne!34336 r3!135))) b!6919990))

(assert (= (and b!6919354 (is-Union!16912 (regOne!34336 r3!135))) b!6919991))

(declare-fun b!6919995 () Bool)

(declare-fun e!4165014 () Bool)

(declare-fun tp!1907413 () Bool)

(declare-fun tp!1907414 () Bool)

(assert (=> b!6919995 (= e!4165014 (and tp!1907413 tp!1907414))))

(declare-fun b!6919992 () Bool)

(assert (=> b!6919992 (= e!4165014 tp_is_empty!43049)))

(assert (=> b!6919354 (= tp!1907292 e!4165014)))

(declare-fun b!6919993 () Bool)

(declare-fun tp!1907415 () Bool)

(declare-fun tp!1907411 () Bool)

(assert (=> b!6919993 (= e!4165014 (and tp!1907415 tp!1907411))))

(declare-fun b!6919994 () Bool)

(declare-fun tp!1907412 () Bool)

(assert (=> b!6919994 (= e!4165014 tp!1907412)))

(assert (= (and b!6919354 (is-ElementMatch!16912 (regTwo!34336 r3!135))) b!6919992))

(assert (= (and b!6919354 (is-Concat!25757 (regTwo!34336 r3!135))) b!6919993))

(assert (= (and b!6919354 (is-Star!16912 (regTwo!34336 r3!135))) b!6919994))

(assert (= (and b!6919354 (is-Union!16912 (regTwo!34336 r3!135))) b!6919995))

(declare-fun b!6919999 () Bool)

(declare-fun e!4165015 () Bool)

(declare-fun tp!1907418 () Bool)

(declare-fun tp!1907419 () Bool)

(assert (=> b!6919999 (= e!4165015 (and tp!1907418 tp!1907419))))

(declare-fun b!6919996 () Bool)

(assert (=> b!6919996 (= e!4165015 tp_is_empty!43049)))

(assert (=> b!6919359 (= tp!1907298 e!4165015)))

(declare-fun b!6919997 () Bool)

(declare-fun tp!1907420 () Bool)

(declare-fun tp!1907416 () Bool)

(assert (=> b!6919997 (= e!4165015 (and tp!1907420 tp!1907416))))

(declare-fun b!6919998 () Bool)

(declare-fun tp!1907417 () Bool)

(assert (=> b!6919998 (= e!4165015 tp!1907417)))

(assert (= (and b!6919359 (is-ElementMatch!16912 (reg!17241 r1!6342))) b!6919996))

(assert (= (and b!6919359 (is-Concat!25757 (reg!17241 r1!6342))) b!6919997))

(assert (= (and b!6919359 (is-Star!16912 (reg!17241 r1!6342))) b!6919998))

(assert (= (and b!6919359 (is-Union!16912 (reg!17241 r1!6342))) b!6919999))

(declare-fun b!6920003 () Bool)

(declare-fun e!4165016 () Bool)

(declare-fun tp!1907423 () Bool)

(declare-fun tp!1907424 () Bool)

(assert (=> b!6920003 (= e!4165016 (and tp!1907423 tp!1907424))))

(declare-fun b!6920000 () Bool)

(assert (=> b!6920000 (= e!4165016 tp_is_empty!43049)))

(assert (=> b!6919358 (= tp!1907294 e!4165016)))

(declare-fun b!6920001 () Bool)

(declare-fun tp!1907425 () Bool)

(declare-fun tp!1907421 () Bool)

(assert (=> b!6920001 (= e!4165016 (and tp!1907425 tp!1907421))))

(declare-fun b!6920002 () Bool)

(declare-fun tp!1907422 () Bool)

(assert (=> b!6920002 (= e!4165016 tp!1907422)))

(assert (= (and b!6919358 (is-ElementMatch!16912 (reg!17241 r3!135))) b!6920000))

(assert (= (and b!6919358 (is-Concat!25757 (reg!17241 r3!135))) b!6920001))

(assert (= (and b!6919358 (is-Star!16912 (reg!17241 r3!135))) b!6920002))

(assert (= (and b!6919358 (is-Union!16912 (reg!17241 r3!135))) b!6920003))

(declare-fun b!6920007 () Bool)

(declare-fun e!4165017 () Bool)

(declare-fun tp!1907428 () Bool)

(declare-fun tp!1907429 () Bool)

(assert (=> b!6920007 (= e!4165017 (and tp!1907428 tp!1907429))))

(declare-fun b!6920004 () Bool)

(assert (=> b!6920004 (= e!4165017 tp_is_empty!43049)))

(assert (=> b!6919363 (= tp!1907285 e!4165017)))

(declare-fun b!6920005 () Bool)

(declare-fun tp!1907430 () Bool)

(declare-fun tp!1907426 () Bool)

(assert (=> b!6920005 (= e!4165017 (and tp!1907430 tp!1907426))))

(declare-fun b!6920006 () Bool)

(declare-fun tp!1907427 () Bool)

(assert (=> b!6920006 (= e!4165017 tp!1907427)))

(assert (= (and b!6919363 (is-ElementMatch!16912 (regOne!34336 r1!6342))) b!6920004))

(assert (= (and b!6919363 (is-Concat!25757 (regOne!34336 r1!6342))) b!6920005))

(assert (= (and b!6919363 (is-Star!16912 (regOne!34336 r1!6342))) b!6920006))

(assert (= (and b!6919363 (is-Union!16912 (regOne!34336 r1!6342))) b!6920007))

(declare-fun b!6920011 () Bool)

(declare-fun e!4165018 () Bool)

(declare-fun tp!1907433 () Bool)

(declare-fun tp!1907434 () Bool)

(assert (=> b!6920011 (= e!4165018 (and tp!1907433 tp!1907434))))

(declare-fun b!6920008 () Bool)

(assert (=> b!6920008 (= e!4165018 tp_is_empty!43049)))

(assert (=> b!6919363 (= tp!1907295 e!4165018)))

(declare-fun b!6920009 () Bool)

(declare-fun tp!1907435 () Bool)

(declare-fun tp!1907431 () Bool)

(assert (=> b!6920009 (= e!4165018 (and tp!1907435 tp!1907431))))

(declare-fun b!6920010 () Bool)

(declare-fun tp!1907432 () Bool)

(assert (=> b!6920010 (= e!4165018 tp!1907432)))

(assert (= (and b!6919363 (is-ElementMatch!16912 (regTwo!34336 r1!6342))) b!6920008))

(assert (= (and b!6919363 (is-Concat!25757 (regTwo!34336 r1!6342))) b!6920009))

(assert (= (and b!6919363 (is-Star!16912 (regTwo!34336 r1!6342))) b!6920010))

(assert (= (and b!6919363 (is-Union!16912 (regTwo!34336 r1!6342))) b!6920011))

(push 1)

(assert (not b!6919849))

(assert (not d!2164356))

(assert (not b!6919857))

(assert (not b!6919909))

(assert (not b!6919949))

(assert (not bm!629041))

(assert (not b!6919852))

(assert (not bm!629035))

(assert (not b!6919669))

(assert (not b!6919795))

(assert (not b!6919905))

(assert (not bm!629025))

(assert (not b!6919784))

(assert (not b!6919708))

(assert (not d!2164312))

(assert (not b!6919821))

(assert (not d!2164272))

(assert (not d!2164298))

(assert (not d!2164342))

(assert (not d!2164270))

(assert (not b!6919958))

(assert (not b!6919997))

(assert (not b!6919753))

(assert (not b!6919969))

(assert (not bm!629028))

(assert (not b!6919785))

(assert (not b!6919897))

(assert (not b!6919863))

(assert (not b!6920009))

(assert (not d!2164288))

(assert (not b!6919998))

(assert (not b!6919761))

(assert (not b!6919733))

(assert (not b!6919747))

(assert (not b!6919880))

(assert (not d!2164324))

(assert (not b!6919718))

(assert (not b!6919814))

(assert (not b!6919948))

(assert (not d!2164358))

(assert (not b!6919750))

(assert (not d!2164322))

(assert (not d!2164306))

(assert (not b!6919837))

(assert (not bm!629029))

(assert (not d!2164310))

(assert (not b!6919994))

(assert (not b!6919977))

(assert (not b!6919987))

(assert (not b!6919975))

(assert (not d!2164274))

(assert (not b!6919979))

(assert (not b!6919891))

(assert (not b!6919663))

(assert (not d!2164352))

(assert (not b!6919913))

(assert (not b!6919537))

(assert (not b!6919797))

(assert (not b!6919799))

(assert (not b!6919956))

(assert (not b!6919993))

(assert (not d!2164276))

(assert (not b!6919787))

(assert (not d!2164286))

(assert (not bm!629036))

(assert (not b!6919714))

(assert (not b!6919817))

(assert (not d!2164326))

(assert (not b!6919716))

(assert (not d!2164374))

(assert (not b!6919981))

(assert (not b!6919535))

(assert (not b!6919720))

(assert (not b!6919999))

(assert (not b!6919879))

(assert (not b!6919509))

(assert (not b!6919819))

(assert (not d!2164292))

(assert (not b!6919882))

(assert (not d!2164338))

(assert (not b!6919619))

(assert (not bm!629034))

(assert (not b!6919517))

(assert (not b!6920002))

(assert (not b!6919870))

(assert (not b!6919876))

(assert (not b!6919986))

(assert (not b!6919967))

(assert (not b!6919827))

(assert (not b!6919741))

(assert (not bm!629023))

(assert (not b!6919884))

(assert (not d!2164332))

(assert (not b!6919749))

(assert (not b!6919858))

(assert (not b!6919970))

(assert (not b!6919521))

(assert (not d!2164366))

(assert (not d!2164320))

(assert (not b!6919985))

(assert (not bm!629032))

(assert (not b!6919978))

(assert (not b!6919665))

(assert (not bm!629033))

(assert (not d!2164336))

(assert (not d!2164318))

(assert (not b!6919775))

(assert (not b!6919618))

(assert (not b!6919758))

(assert (not b!6919806))

(assert (not b!6919815))

(assert (not b!6919950))

(assert (not b!6919664))

(assert (not d!2164370))

(assert (not b!6919885))

(assert (not bm!629027))

(assert (not bm!629020))

(assert (not d!2164300))

(assert (not b!6919906))

(assert (not b!6919701))

(assert (not b!6920003))

(assert (not b!6919809))

(assert (not b!6919519))

(assert (not b!6919834))

(assert (not b!6919962))

(assert (not b!6919887))

(assert (not b!6919878))

(assert (not b!6919736))

(assert (not b!6919662))

(assert (not d!2164268))

(assert (not bm!629030))

(assert tp_is_empty!43049)

(assert (not bm!629022))

(assert (not b!6919667))

(assert (not b!6919717))

(assert (not b!6919990))

(assert (not b!6919907))

(assert (not bm!629024))

(assert (not bm!629040))

(assert (not d!2164362))

(assert (not b!6919957))

(assert (not b!6919801))

(assert (not d!2164364))

(assert (not b!6919983))

(assert (not b!6919518))

(assert (not bm!629019))

(assert (not b!6920010))

(assert (not b!6919952))

(assert (not b!6920007))

(assert (not b!6920005))

(assert (not b!6919960))

(assert (not b!6919536))

(assert (not bm!629042))

(assert (not d!2164302))

(assert (not bm!629037))

(assert (not b!6919903))

(assert (not b!6920001))

(assert (not b!6919974))

(assert (not bm!629026))

(assert (not b!6919982))

(assert (not b!6919973))

(assert (not b!6919991))

(assert (not b!6919989))

(assert (not d!2164360))

(assert (not b!6919961))

(assert (not b!6920006))

(assert (not b!6919889))

(assert (not bm!629008))

(assert (not b!6919515))

(assert (not b!6919781))

(assert (not b!6920011))

(assert (not b!6919751))

(assert (not b!6919971))

(assert (not bm!629009))

(assert (not bm!629031))

(assert (not b!6919783))

(assert (not b!6919886))

(assert (not b!6919995))

(assert (not bm!629003))

(assert (not b!6919954))

(assert (not b!6919798))

(assert (not b!6919789))

(assert (not d!2164294))

(assert (not b!6919828))

(assert (not b!6919577))

(assert (not d!2164334))

(assert (not bm!629039))

(assert (not b!6919574))

(assert (not b!6919816))

(assert (not b!6919953))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

