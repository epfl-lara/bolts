; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663974 () Bool)

(assert start!663974)

(declare-fun b!6883362 () Bool)

(assert (=> b!6883362 true))

(assert (=> b!6883362 true))

(assert (=> b!6883362 true))

(declare-fun lambda!389665 () Int)

(declare-fun lambda!389664 () Int)

(assert (=> b!6883362 (not (= lambda!389665 lambda!389664))))

(assert (=> b!6883362 true))

(assert (=> b!6883362 true))

(assert (=> b!6883362 true))

(declare-fun bs!1838273 () Bool)

(declare-fun b!6883359 () Bool)

(assert (= bs!1838273 (and b!6883359 b!6883362)))

(declare-datatypes ((C!33816 0))(
  ( (C!33817 (val!26610 Int)) )
))
(declare-datatypes ((Regex!16773 0))(
  ( (ElementMatch!16773 (c!1280375 C!33816)) (Concat!25618 (regOne!34058 Regex!16773) (regTwo!34058 Regex!16773)) (EmptyExpr!16773) (Star!16773 (reg!17102 Regex!16773)) (EmptyLang!16773) (Union!16773 (regOne!34059 Regex!16773) (regTwo!34059 Regex!16773)) )
))
(declare-fun r1!6342 () Regex!16773)

(declare-fun lt!2460213 () Regex!16773)

(declare-fun r3!135 () Regex!16773)

(declare-fun r2!6280 () Regex!16773)

(declare-datatypes ((List!66530 0))(
  ( (Nil!66406) (Cons!66406 (h!72854 C!33816) (t!380273 List!66530)) )
))
(declare-datatypes ((tuple2!67292 0))(
  ( (tuple2!67293 (_1!36949 List!66530) (_2!36949 List!66530)) )
))
(declare-fun lt!2460205 () tuple2!67292)

(declare-fun s!14361 () List!66530)

(declare-fun lambda!389666 () Int)

(assert (=> bs!1838273 (= (and (= (_1!36949 lt!2460205) s!14361) (= r1!6342 lt!2460213) (= r2!6280 r3!135)) (= lambda!389666 lambda!389664))))

(assert (=> bs!1838273 (not (= lambda!389666 lambda!389665))))

(assert (=> b!6883359 true))

(assert (=> b!6883359 true))

(assert (=> b!6883359 true))

(declare-fun b!6883355 () Bool)

(declare-fun res!2805928 () Bool)

(declare-fun e!4147728 () Bool)

(assert (=> b!6883355 (=> (not res!2805928) (not e!4147728))))

(declare-fun validRegex!8481 (Regex!16773) Bool)

(assert (=> b!6883355 (= res!2805928 (validRegex!8481 r2!6280))))

(declare-fun res!2805927 () Bool)

(assert (=> start!663974 (=> (not res!2805927) (not e!4147728))))

(assert (=> start!663974 (= res!2805927 (validRegex!8481 r1!6342))))

(assert (=> start!663974 e!4147728))

(declare-fun e!4147729 () Bool)

(assert (=> start!663974 e!4147729))

(declare-fun e!4147726 () Bool)

(assert (=> start!663974 e!4147726))

(declare-fun e!4147727 () Bool)

(assert (=> start!663974 e!4147727))

(declare-fun e!4147731 () Bool)

(assert (=> start!663974 e!4147731))

(declare-fun b!6883356 () Bool)

(declare-fun res!2805925 () Bool)

(declare-fun e!4147732 () Bool)

(assert (=> b!6883356 (=> res!2805925 e!4147732)))

(declare-fun matchR!8918 (Regex!16773 List!66530) Bool)

(assert (=> b!6883356 (= res!2805925 (not (matchR!8918 r3!135 (_2!36949 lt!2460205))))))

(declare-fun b!6883357 () Bool)

(declare-fun tp!1893322 () Bool)

(assert (=> b!6883357 (= e!4147727 tp!1893322)))

(declare-fun b!6883358 () Bool)

(declare-fun tp_is_empty!42771 () Bool)

(declare-fun tp!1893327 () Bool)

(assert (=> b!6883358 (= e!4147731 (and tp_is_empty!42771 tp!1893327))))

(assert (=> b!6883359 (= e!4147732 true)))

(declare-datatypes ((Option!16558 0))(
  ( (None!16557) (Some!16557 (v!52829 tuple2!67292)) )
))
(declare-fun isDefined!13261 (Option!16558) Bool)

(declare-fun findConcatSeparation!2972 (Regex!16773 Regex!16773 List!66530 List!66530 List!66530) Option!16558)

(declare-fun Exists!3785 (Int) Bool)

(assert (=> b!6883359 (= (isDefined!13261 (findConcatSeparation!2972 r1!6342 r2!6280 Nil!66406 (_1!36949 lt!2460205) (_1!36949 lt!2460205))) (Exists!3785 lambda!389666))))

(declare-datatypes ((Unit!160266 0))(
  ( (Unit!160267) )
))
(declare-fun lt!2460207 () Unit!160266)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2736 (Regex!16773 Regex!16773 List!66530) Unit!160266)

(assert (=> b!6883359 (= lt!2460207 (lemmaFindConcatSeparationEquivalentToExists!2736 r1!6342 r2!6280 (_1!36949 lt!2460205)))))

(declare-fun b!6883360 () Bool)

(assert (=> b!6883360 (= e!4147727 tp_is_empty!42771)))

(declare-fun b!6883361 () Bool)

(assert (=> b!6883361 (= e!4147726 tp_is_empty!42771)))

(declare-fun e!4147730 () Bool)

(assert (=> b!6883362 (= e!4147730 e!4147732)))

(declare-fun res!2805926 () Bool)

(assert (=> b!6883362 (=> res!2805926 e!4147732)))

(declare-fun lt!2460209 () Bool)

(assert (=> b!6883362 (= res!2805926 (not lt!2460209))))

(declare-fun matchRSpec!3836 (Regex!16773 List!66530) Bool)

(assert (=> b!6883362 (= lt!2460209 (matchRSpec!3836 lt!2460213 (_1!36949 lt!2460205)))))

(assert (=> b!6883362 (= lt!2460209 (matchR!8918 lt!2460213 (_1!36949 lt!2460205)))))

(declare-fun lt!2460204 () Unit!160266)

(declare-fun mainMatchTheorem!3836 (Regex!16773 List!66530) Unit!160266)

(assert (=> b!6883362 (= lt!2460204 (mainMatchTheorem!3836 lt!2460213 (_1!36949 lt!2460205)))))

(declare-fun lt!2460206 () Option!16558)

(declare-fun get!23122 (Option!16558) tuple2!67292)

(assert (=> b!6883362 (= lt!2460205 (get!23122 lt!2460206))))

(assert (=> b!6883362 (= (Exists!3785 lambda!389664) (Exists!3785 lambda!389665))))

(declare-fun lt!2460210 () Unit!160266)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2264 (Regex!16773 Regex!16773 List!66530) Unit!160266)

(assert (=> b!6883362 (= lt!2460210 (lemmaExistCutMatchRandMatchRSpecEquivalent!2264 lt!2460213 r3!135 s!14361))))

(assert (=> b!6883362 (= (isDefined!13261 lt!2460206) (Exists!3785 lambda!389664))))

(assert (=> b!6883362 (= lt!2460206 (findConcatSeparation!2972 lt!2460213 r3!135 Nil!66406 s!14361 s!14361))))

(declare-fun lt!2460203 () Unit!160266)

(assert (=> b!6883362 (= lt!2460203 (lemmaFindConcatSeparationEquivalentToExists!2736 lt!2460213 r3!135 s!14361))))

(declare-fun b!6883363 () Bool)

(declare-fun tp!1893330 () Bool)

(assert (=> b!6883363 (= e!4147729 tp!1893330)))

(declare-fun b!6883364 () Bool)

(declare-fun tp!1893325 () Bool)

(declare-fun tp!1893329 () Bool)

(assert (=> b!6883364 (= e!4147729 (and tp!1893325 tp!1893329))))

(declare-fun b!6883365 () Bool)

(declare-fun tp!1893333 () Bool)

(assert (=> b!6883365 (= e!4147726 tp!1893333)))

(declare-fun b!6883366 () Bool)

(declare-fun tp!1893331 () Bool)

(declare-fun tp!1893321 () Bool)

(assert (=> b!6883366 (= e!4147726 (and tp!1893331 tp!1893321))))

(declare-fun b!6883367 () Bool)

(assert (=> b!6883367 (= e!4147728 (not e!4147730))))

(declare-fun res!2805923 () Bool)

(assert (=> b!6883367 (=> res!2805923 e!4147730)))

(declare-fun lt!2460212 () Bool)

(assert (=> b!6883367 (= res!2805923 (not lt!2460212))))

(declare-fun lt!2460214 () Regex!16773)

(assert (=> b!6883367 (= (matchR!8918 lt!2460214 s!14361) (matchRSpec!3836 lt!2460214 s!14361))))

(declare-fun lt!2460215 () Unit!160266)

(assert (=> b!6883367 (= lt!2460215 (mainMatchTheorem!3836 lt!2460214 s!14361))))

(declare-fun lt!2460208 () Regex!16773)

(assert (=> b!6883367 (= lt!2460212 (matchRSpec!3836 lt!2460208 s!14361))))

(assert (=> b!6883367 (= lt!2460212 (matchR!8918 lt!2460208 s!14361))))

(declare-fun lt!2460211 () Unit!160266)

(assert (=> b!6883367 (= lt!2460211 (mainMatchTheorem!3836 lt!2460208 s!14361))))

(assert (=> b!6883367 (= lt!2460214 (Concat!25618 r1!6342 (Concat!25618 r2!6280 r3!135)))))

(assert (=> b!6883367 (= lt!2460208 (Concat!25618 lt!2460213 r3!135))))

(assert (=> b!6883367 (= lt!2460213 (Concat!25618 r1!6342 r2!6280))))

(declare-fun b!6883368 () Bool)

(declare-fun tp!1893334 () Bool)

(declare-fun tp!1893326 () Bool)

(assert (=> b!6883368 (= e!4147729 (and tp!1893334 tp!1893326))))

(declare-fun b!6883369 () Bool)

(declare-fun tp!1893335 () Bool)

(declare-fun tp!1893332 () Bool)

(assert (=> b!6883369 (= e!4147727 (and tp!1893335 tp!1893332))))

(declare-fun b!6883370 () Bool)

(assert (=> b!6883370 (= e!4147729 tp_is_empty!42771)))

(declare-fun b!6883371 () Bool)

(declare-fun tp!1893320 () Bool)

(declare-fun tp!1893323 () Bool)

(assert (=> b!6883371 (= e!4147727 (and tp!1893320 tp!1893323))))

(declare-fun b!6883372 () Bool)

(declare-fun res!2805924 () Bool)

(assert (=> b!6883372 (=> (not res!2805924) (not e!4147728))))

(assert (=> b!6883372 (= res!2805924 (validRegex!8481 r3!135))))

(declare-fun b!6883373 () Bool)

(declare-fun tp!1893328 () Bool)

(declare-fun tp!1893324 () Bool)

(assert (=> b!6883373 (= e!4147726 (and tp!1893328 tp!1893324))))

(assert (= (and start!663974 res!2805927) b!6883355))

(assert (= (and b!6883355 res!2805928) b!6883372))

(assert (= (and b!6883372 res!2805924) b!6883367))

(assert (= (and b!6883367 (not res!2805923)) b!6883362))

(assert (= (and b!6883362 (not res!2805926)) b!6883356))

(assert (= (and b!6883356 (not res!2805925)) b!6883359))

(get-info :version)

(assert (= (and start!663974 ((_ is ElementMatch!16773) r1!6342)) b!6883370))

(assert (= (and start!663974 ((_ is Concat!25618) r1!6342)) b!6883368))

(assert (= (and start!663974 ((_ is Star!16773) r1!6342)) b!6883363))

(assert (= (and start!663974 ((_ is Union!16773) r1!6342)) b!6883364))

(assert (= (and start!663974 ((_ is ElementMatch!16773) r2!6280)) b!6883361))

(assert (= (and start!663974 ((_ is Concat!25618) r2!6280)) b!6883373))

(assert (= (and start!663974 ((_ is Star!16773) r2!6280)) b!6883365))

(assert (= (and start!663974 ((_ is Union!16773) r2!6280)) b!6883366))

(assert (= (and start!663974 ((_ is ElementMatch!16773) r3!135)) b!6883360))

(assert (= (and start!663974 ((_ is Concat!25618) r3!135)) b!6883371))

(assert (= (and start!663974 ((_ is Star!16773) r3!135)) b!6883357))

(assert (= (and start!663974 ((_ is Union!16773) r3!135)) b!6883369))

(assert (= (and start!663974 ((_ is Cons!66406) s!14361)) b!6883358))

(declare-fun m!7607352 () Bool)

(assert (=> b!6883355 m!7607352))

(declare-fun m!7607354 () Bool)

(assert (=> b!6883359 m!7607354))

(assert (=> b!6883359 m!7607354))

(declare-fun m!7607356 () Bool)

(assert (=> b!6883359 m!7607356))

(declare-fun m!7607358 () Bool)

(assert (=> b!6883359 m!7607358))

(declare-fun m!7607360 () Bool)

(assert (=> b!6883359 m!7607360))

(declare-fun m!7607362 () Bool)

(assert (=> b!6883356 m!7607362))

(declare-fun m!7607364 () Bool)

(assert (=> b!6883372 m!7607364))

(declare-fun m!7607366 () Bool)

(assert (=> b!6883362 m!7607366))

(assert (=> b!6883362 m!7607366))

(declare-fun m!7607368 () Bool)

(assert (=> b!6883362 m!7607368))

(declare-fun m!7607370 () Bool)

(assert (=> b!6883362 m!7607370))

(declare-fun m!7607372 () Bool)

(assert (=> b!6883362 m!7607372))

(declare-fun m!7607374 () Bool)

(assert (=> b!6883362 m!7607374))

(declare-fun m!7607376 () Bool)

(assert (=> b!6883362 m!7607376))

(declare-fun m!7607378 () Bool)

(assert (=> b!6883362 m!7607378))

(declare-fun m!7607380 () Bool)

(assert (=> b!6883362 m!7607380))

(declare-fun m!7607382 () Bool)

(assert (=> b!6883362 m!7607382))

(declare-fun m!7607384 () Bool)

(assert (=> b!6883362 m!7607384))

(declare-fun m!7607386 () Bool)

(assert (=> start!663974 m!7607386))

(declare-fun m!7607388 () Bool)

(assert (=> b!6883367 m!7607388))

(declare-fun m!7607390 () Bool)

(assert (=> b!6883367 m!7607390))

(declare-fun m!7607392 () Bool)

(assert (=> b!6883367 m!7607392))

(declare-fun m!7607394 () Bool)

(assert (=> b!6883367 m!7607394))

(declare-fun m!7607396 () Bool)

(assert (=> b!6883367 m!7607396))

(declare-fun m!7607398 () Bool)

(assert (=> b!6883367 m!7607398))

(check-sat (not b!6883358) (not b!6883367) tp_is_empty!42771 (not b!6883355) (not b!6883362) (not b!6883356) (not b!6883373) (not b!6883371) (not b!6883357) (not b!6883365) (not b!6883369) (not b!6883359) (not start!663974) (not b!6883368) (not b!6883363) (not b!6883366) (not b!6883364) (not b!6883372))
(check-sat)
