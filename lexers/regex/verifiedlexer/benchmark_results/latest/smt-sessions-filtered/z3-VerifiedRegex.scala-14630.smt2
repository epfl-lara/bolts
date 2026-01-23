; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756604 () Bool)

(assert start!756604)

(declare-fun b!8032321 () Bool)

(declare-fun e!4731910 () Bool)

(declare-fun lt!2721967 () Bool)

(assert (=> b!8032321 (= e!4731910 lt!2721967)))

(declare-fun b!8032322 () Bool)

(declare-fun e!4731912 () Bool)

(declare-datatypes ((C!43764 0))(
  ( (C!43765 (val!32658 Int)) )
))
(declare-fun lt!2721966 () C!43764)

(declare-datatypes ((Regex!21713 0))(
  ( (ElementMatch!21713 (c!1473510 C!43764)) (Concat!30716 (regOne!43938 Regex!21713) (regTwo!43938 Regex!21713)) (EmptyExpr!21713) (Star!21713 (reg!22042 Regex!21713)) (EmptyLang!21713) (Union!21713 (regOne!43939 Regex!21713) (regTwo!43939 Regex!21713)) )
))
(declare-fun r!13230 () Regex!21713)

(assert (=> b!8032322 (= e!4731912 (not (= lt!2721966 (c!1473510 r!13230))))))

(declare-fun b!8032323 () Bool)

(declare-fun res!3176370 () Bool)

(declare-datatypes ((List!75178 0))(
  ( (Nil!75052) (Cons!75052 (h!81500 C!43764) (t!390948 List!75178)) )
))
(declare-fun lt!2721968 () List!75178)

(declare-fun isEmpty!43031 (List!75178) Bool)

(assert (=> b!8032323 (= res!3176370 (isEmpty!43031 lt!2721968))))

(declare-fun e!4731911 () Bool)

(assert (=> b!8032323 (=> (not res!3176370) (not e!4731911))))

(declare-fun e!4731913 () Bool)

(assert (=> b!8032323 (= e!4731913 e!4731911)))

(declare-fun b!8032324 () Bool)

(declare-fun e!4731909 () Bool)

(assert (=> b!8032324 (= e!4731909 e!4731910)))

(declare-fun c!1473509 () Bool)

(get-info :version)

(assert (=> b!8032324 (= c!1473509 (or ((_ is EmptyExpr!21713) r!13230) ((_ is EmptyLang!21713) r!13230)))))

(declare-fun matchR!10784 (Regex!21713 List!75178) Bool)

(declare-fun derivativeStep!6654 (Regex!21713 C!43764) Regex!21713)

(assert (=> b!8032324 (= lt!2721967 (matchR!10784 (derivativeStep!6654 r!13230 lt!2721966) lt!2721968))))

(declare-fun input!5983 () List!75178)

(declare-fun tail!16058 (List!75178) List!75178)

(assert (=> b!8032324 (= lt!2721968 (tail!16058 input!5983))))

(declare-fun head!16517 (List!75178) C!43764)

(assert (=> b!8032324 (= lt!2721966 (head!16517 input!5983))))

(declare-fun res!3176375 () Bool)

(assert (=> start!756604 (=> (not res!3176375) (not e!4731909))))

(declare-fun validRegex!12009 (Regex!21713) Bool)

(assert (=> start!756604 (= res!3176375 (validRegex!12009 r!13230))))

(assert (=> start!756604 e!4731909))

(declare-fun e!4731908 () Bool)

(assert (=> start!756604 e!4731908))

(declare-fun e!4731906 () Bool)

(assert (=> start!756604 e!4731906))

(declare-fun b!8032325 () Bool)

(assert (=> b!8032325 (= e!4731911 (= lt!2721966 (c!1473510 r!13230)))))

(declare-fun b!8032326 () Bool)

(declare-fun tp!2404264 () Bool)

(declare-fun tp!2404265 () Bool)

(assert (=> b!8032326 (= e!4731908 (and tp!2404264 tp!2404265))))

(declare-fun b!8032327 () Bool)

(declare-fun res!3176372 () Bool)

(assert (=> b!8032327 (= res!3176372 lt!2721967)))

(assert (=> b!8032327 (=> res!3176372 e!4731913)))

(declare-fun e!4731907 () Bool)

(assert (=> b!8032327 (= e!4731907 e!4731913)))

(declare-fun b!8032328 () Bool)

(declare-fun tp_is_empty!54421 () Bool)

(assert (=> b!8032328 (= e!4731908 tp_is_empty!54421)))

(declare-fun b!8032329 () Bool)

(declare-fun res!3176374 () Bool)

(assert (=> b!8032329 (= res!3176374 (not lt!2721967))))

(assert (=> b!8032329 (=> res!3176374 e!4731912)))

(declare-fun res!3176371 () Bool)

(assert (=> b!8032329 (= res!3176371 e!4731912)))

(assert (=> b!8032329 (=> (not res!3176371) (not e!4731907))))

(declare-fun b!8032330 () Bool)

(declare-fun tp!2404262 () Bool)

(assert (=> b!8032330 (= e!4731906 (and tp_is_empty!54421 tp!2404262))))

(declare-fun b!8032331 () Bool)

(declare-fun res!3176377 () Bool)

(assert (=> b!8032331 (= res!3176377 (not (isEmpty!43031 lt!2721968)))))

(assert (=> b!8032331 (=> res!3176377 e!4731912)))

(declare-fun b!8032332 () Bool)

(declare-fun tp!2404263 () Bool)

(assert (=> b!8032332 (= e!4731908 tp!2404263)))

(declare-fun b!8032333 () Bool)

(declare-fun res!3176376 () Bool)

(assert (=> b!8032333 (=> (not res!3176376) (not e!4731909))))

(assert (=> b!8032333 (= res!3176376 (not (isEmpty!43031 input!5983)))))

(declare-fun b!8032334 () Bool)

(assert (=> b!8032334 (= e!4731910 e!4731907)))

(declare-fun res!3176373 () Bool)

(assert (=> b!8032334 (= res!3176373 ((_ is ElementMatch!21713) r!13230))))

(assert (=> b!8032334 (=> (not res!3176373) (not e!4731907))))

(declare-fun b!8032335 () Bool)

(declare-fun tp!2404266 () Bool)

(declare-fun tp!2404267 () Bool)

(assert (=> b!8032335 (= e!4731908 (and tp!2404266 tp!2404267))))

(assert (= (and start!756604 res!3176375) b!8032333))

(assert (= (and b!8032333 res!3176376) b!8032324))

(assert (= (and b!8032324 c!1473509) b!8032321))

(assert (= (and b!8032324 (not c!1473509)) b!8032334))

(assert (= (and b!8032334 res!3176373) b!8032329))

(assert (= (and b!8032329 (not res!3176374)) b!8032331))

(assert (= (and b!8032331 (not res!3176377)) b!8032322))

(assert (= (and b!8032329 res!3176371) b!8032327))

(assert (= (and b!8032327 (not res!3176372)) b!8032323))

(assert (= (and b!8032323 res!3176370) b!8032325))

(assert (= (and start!756604 ((_ is ElementMatch!21713) r!13230)) b!8032328))

(assert (= (and start!756604 ((_ is Concat!30716) r!13230)) b!8032326))

(assert (= (and start!756604 ((_ is Star!21713) r!13230)) b!8032332))

(assert (= (and start!756604 ((_ is Union!21713) r!13230)) b!8032335))

(assert (= (and start!756604 ((_ is Cons!75052) input!5983)) b!8032330))

(declare-fun m!8392468 () Bool)

(assert (=> b!8032324 m!8392468))

(assert (=> b!8032324 m!8392468))

(declare-fun m!8392470 () Bool)

(assert (=> b!8032324 m!8392470))

(declare-fun m!8392472 () Bool)

(assert (=> b!8032324 m!8392472))

(declare-fun m!8392474 () Bool)

(assert (=> b!8032324 m!8392474))

(declare-fun m!8392476 () Bool)

(assert (=> start!756604 m!8392476))

(declare-fun m!8392478 () Bool)

(assert (=> b!8032331 m!8392478))

(assert (=> b!8032323 m!8392478))

(declare-fun m!8392480 () Bool)

(assert (=> b!8032333 m!8392480))

(check-sat (not b!8032332) (not b!8032323) (not b!8032333) (not b!8032331) (not b!8032335) (not start!756604) (not b!8032324) (not b!8032330) tp_is_empty!54421 (not b!8032326))
(check-sat)
(get-model)

(declare-fun b!8032391 () Bool)

(declare-fun e!4731955 () Bool)

(declare-fun e!4731951 () Bool)

(assert (=> b!8032391 (= e!4731955 e!4731951)))

(declare-fun res!3176415 () Bool)

(assert (=> b!8032391 (=> (not res!3176415) (not e!4731951))))

(declare-fun lt!2721971 () Bool)

(assert (=> b!8032391 (= res!3176415 (not lt!2721971))))

(declare-fun b!8032392 () Bool)

(declare-fun e!4731954 () Bool)

(assert (=> b!8032392 (= e!4731954 (matchR!10784 (derivativeStep!6654 (derivativeStep!6654 r!13230 lt!2721966) (head!16517 lt!2721968)) (tail!16058 lt!2721968)))))

(declare-fun b!8032393 () Bool)

(declare-fun res!3176416 () Bool)

(assert (=> b!8032393 (=> res!3176416 e!4731955)))

(assert (=> b!8032393 (= res!3176416 (not ((_ is ElementMatch!21713) (derivativeStep!6654 r!13230 lt!2721966))))))

(declare-fun e!4731950 () Bool)

(assert (=> b!8032393 (= e!4731950 e!4731955)))

(declare-fun b!8032394 () Bool)

(declare-fun res!3176412 () Bool)

(declare-fun e!4731949 () Bool)

(assert (=> b!8032394 (=> (not res!3176412) (not e!4731949))))

(assert (=> b!8032394 (= res!3176412 (isEmpty!43031 (tail!16058 lt!2721968)))))

(declare-fun b!8032395 () Bool)

(declare-fun res!3176413 () Bool)

(declare-fun e!4731952 () Bool)

(assert (=> b!8032395 (=> res!3176413 e!4731952)))

(assert (=> b!8032395 (= res!3176413 (not (isEmpty!43031 (tail!16058 lt!2721968))))))

(declare-fun bm!745113 () Bool)

(declare-fun call!745118 () Bool)

(assert (=> bm!745113 (= call!745118 (isEmpty!43031 lt!2721968))))

(declare-fun b!8032397 () Bool)

(declare-fun e!4731953 () Bool)

(assert (=> b!8032397 (= e!4731953 (= lt!2721971 call!745118))))

(declare-fun b!8032398 () Bool)

(assert (=> b!8032398 (= e!4731951 e!4731952)))

(declare-fun res!3176410 () Bool)

(assert (=> b!8032398 (=> res!3176410 e!4731952)))

(assert (=> b!8032398 (= res!3176410 call!745118)))

(declare-fun b!8032399 () Bool)

(assert (=> b!8032399 (= e!4731949 (= (head!16517 lt!2721968) (c!1473510 (derivativeStep!6654 r!13230 lt!2721966))))))

(declare-fun b!8032400 () Bool)

(assert (=> b!8032400 (= e!4731952 (not (= (head!16517 lt!2721968) (c!1473510 (derivativeStep!6654 r!13230 lt!2721966)))))))

(declare-fun b!8032401 () Bool)

(declare-fun res!3176409 () Bool)

(assert (=> b!8032401 (=> res!3176409 e!4731955)))

(assert (=> b!8032401 (= res!3176409 e!4731949)))

(declare-fun res!3176414 () Bool)

(assert (=> b!8032401 (=> (not res!3176414) (not e!4731949))))

(assert (=> b!8032401 (= res!3176414 lt!2721971)))

(declare-fun b!8032402 () Bool)

(declare-fun res!3176411 () Bool)

(assert (=> b!8032402 (=> (not res!3176411) (not e!4731949))))

(assert (=> b!8032402 (= res!3176411 (not call!745118))))

(declare-fun b!8032403 () Bool)

(assert (=> b!8032403 (= e!4731950 (not lt!2721971))))

(declare-fun b!8032404 () Bool)

(assert (=> b!8032404 (= e!4731953 e!4731950)))

(declare-fun c!1473524 () Bool)

(assert (=> b!8032404 (= c!1473524 ((_ is EmptyLang!21713) (derivativeStep!6654 r!13230 lt!2721966)))))

(declare-fun b!8032396 () Bool)

(declare-fun nullable!9745 (Regex!21713) Bool)

(assert (=> b!8032396 (= e!4731954 (nullable!9745 (derivativeStep!6654 r!13230 lt!2721966)))))

(declare-fun d!2394745 () Bool)

(assert (=> d!2394745 e!4731953))

(declare-fun c!1473525 () Bool)

(assert (=> d!2394745 (= c!1473525 ((_ is EmptyExpr!21713) (derivativeStep!6654 r!13230 lt!2721966)))))

(assert (=> d!2394745 (= lt!2721971 e!4731954)))

(declare-fun c!1473523 () Bool)

(assert (=> d!2394745 (= c!1473523 (isEmpty!43031 lt!2721968))))

(assert (=> d!2394745 (validRegex!12009 (derivativeStep!6654 r!13230 lt!2721966))))

(assert (=> d!2394745 (= (matchR!10784 (derivativeStep!6654 r!13230 lt!2721966) lt!2721968) lt!2721971)))

(assert (= (and d!2394745 c!1473523) b!8032396))

(assert (= (and d!2394745 (not c!1473523)) b!8032392))

(assert (= (and d!2394745 c!1473525) b!8032397))

(assert (= (and d!2394745 (not c!1473525)) b!8032404))

(assert (= (and b!8032404 c!1473524) b!8032403))

(assert (= (and b!8032404 (not c!1473524)) b!8032393))

(assert (= (and b!8032393 (not res!3176416)) b!8032401))

(assert (= (and b!8032401 res!3176414) b!8032402))

(assert (= (and b!8032402 res!3176411) b!8032394))

(assert (= (and b!8032394 res!3176412) b!8032399))

(assert (= (and b!8032401 (not res!3176409)) b!8032391))

(assert (= (and b!8032391 res!3176415) b!8032398))

(assert (= (and b!8032398 (not res!3176410)) b!8032395))

(assert (= (and b!8032395 (not res!3176413)) b!8032400))

(assert (= (or b!8032397 b!8032398 b!8032402) bm!745113))

(assert (=> d!2394745 m!8392478))

(assert (=> d!2394745 m!8392468))

(declare-fun m!8392488 () Bool)

(assert (=> d!2394745 m!8392488))

(declare-fun m!8392490 () Bool)

(assert (=> b!8032400 m!8392490))

(assert (=> b!8032399 m!8392490))

(assert (=> b!8032392 m!8392490))

(assert (=> b!8032392 m!8392468))

(assert (=> b!8032392 m!8392490))

(declare-fun m!8392492 () Bool)

(assert (=> b!8032392 m!8392492))

(declare-fun m!8392494 () Bool)

(assert (=> b!8032392 m!8392494))

(assert (=> b!8032392 m!8392492))

(assert (=> b!8032392 m!8392494))

(declare-fun m!8392496 () Bool)

(assert (=> b!8032392 m!8392496))

(assert (=> bm!745113 m!8392478))

(assert (=> b!8032394 m!8392494))

(assert (=> b!8032394 m!8392494))

(declare-fun m!8392498 () Bool)

(assert (=> b!8032394 m!8392498))

(assert (=> b!8032396 m!8392468))

(declare-fun m!8392500 () Bool)

(assert (=> b!8032396 m!8392500))

(assert (=> b!8032395 m!8392494))

(assert (=> b!8032395 m!8392494))

(assert (=> b!8032395 m!8392498))

(assert (=> b!8032324 d!2394745))

(declare-fun call!745129 () Regex!21713)

(declare-fun e!4731982 () Regex!21713)

(declare-fun b!8032453 () Bool)

(declare-fun call!745128 () Regex!21713)

(assert (=> b!8032453 (= e!4731982 (Union!21713 (Concat!30716 call!745129 (regTwo!43938 r!13230)) call!745128))))

(declare-fun b!8032454 () Bool)

(declare-fun e!4731984 () Regex!21713)

(assert (=> b!8032454 (= e!4731984 EmptyLang!21713)))

(declare-fun b!8032455 () Bool)

(assert (=> b!8032455 (= e!4731982 (Union!21713 (Concat!30716 call!745129 (regTwo!43938 r!13230)) EmptyLang!21713))))

(declare-fun b!8032456 () Bool)

(declare-fun e!4731983 () Regex!21713)

(declare-fun e!4731980 () Regex!21713)

(assert (=> b!8032456 (= e!4731983 e!4731980)))

(declare-fun c!1473544 () Bool)

(assert (=> b!8032456 (= c!1473544 ((_ is Star!21713) r!13230))))

(declare-fun c!1473546 () Bool)

(declare-fun bm!745122 () Bool)

(assert (=> bm!745122 (= call!745128 (derivativeStep!6654 (ite c!1473546 (regTwo!43939 r!13230) (regTwo!43938 r!13230)) lt!2721966))))

(declare-fun b!8032457 () Bool)

(declare-fun e!4731981 () Regex!21713)

(assert (=> b!8032457 (= e!4731981 (ite (= lt!2721966 (c!1473510 r!13230)) EmptyExpr!21713 EmptyLang!21713))))

(declare-fun bm!745123 () Bool)

(declare-fun call!745127 () Regex!21713)

(declare-fun call!745130 () Regex!21713)

(assert (=> bm!745123 (= call!745127 call!745130)))

(declare-fun bm!745124 () Bool)

(assert (=> bm!745124 (= call!745130 (derivativeStep!6654 (ite c!1473546 (regOne!43939 r!13230) (ite c!1473544 (reg!22042 r!13230) (regOne!43938 r!13230))) lt!2721966))))

(declare-fun b!8032458 () Bool)

(declare-fun c!1473543 () Bool)

(assert (=> b!8032458 (= c!1473543 (nullable!9745 (regOne!43938 r!13230)))))

(assert (=> b!8032458 (= e!4731980 e!4731982)))

(declare-fun d!2394755 () Bool)

(declare-fun lt!2721976 () Regex!21713)

(assert (=> d!2394755 (validRegex!12009 lt!2721976)))

(assert (=> d!2394755 (= lt!2721976 e!4731984)))

(declare-fun c!1473545 () Bool)

(assert (=> d!2394755 (= c!1473545 (or ((_ is EmptyExpr!21713) r!13230) ((_ is EmptyLang!21713) r!13230)))))

(assert (=> d!2394755 (validRegex!12009 r!13230)))

(assert (=> d!2394755 (= (derivativeStep!6654 r!13230 lt!2721966) lt!2721976)))

(declare-fun b!8032459 () Bool)

(assert (=> b!8032459 (= e!4731984 e!4731981)))

(declare-fun c!1473542 () Bool)

(assert (=> b!8032459 (= c!1473542 ((_ is ElementMatch!21713) r!13230))))

(declare-fun bm!745125 () Bool)

(assert (=> bm!745125 (= call!745129 call!745127)))

(declare-fun b!8032460 () Bool)

(assert (=> b!8032460 (= e!4731983 (Union!21713 call!745130 call!745128))))

(declare-fun b!8032461 () Bool)

(assert (=> b!8032461 (= e!4731980 (Concat!30716 call!745127 r!13230))))

(declare-fun b!8032462 () Bool)

(assert (=> b!8032462 (= c!1473546 ((_ is Union!21713) r!13230))))

(assert (=> b!8032462 (= e!4731981 e!4731983)))

(assert (= (and d!2394755 c!1473545) b!8032454))

(assert (= (and d!2394755 (not c!1473545)) b!8032459))

(assert (= (and b!8032459 c!1473542) b!8032457))

(assert (= (and b!8032459 (not c!1473542)) b!8032462))

(assert (= (and b!8032462 c!1473546) b!8032460))

(assert (= (and b!8032462 (not c!1473546)) b!8032456))

(assert (= (and b!8032456 c!1473544) b!8032461))

(assert (= (and b!8032456 (not c!1473544)) b!8032458))

(assert (= (and b!8032458 c!1473543) b!8032453))

(assert (= (and b!8032458 (not c!1473543)) b!8032455))

(assert (= (or b!8032453 b!8032455) bm!745125))

(assert (= (or b!8032461 bm!745125) bm!745123))

(assert (= (or b!8032460 b!8032453) bm!745122))

(assert (= (or b!8032460 bm!745123) bm!745124))

(declare-fun m!8392502 () Bool)

(assert (=> bm!745122 m!8392502))

(declare-fun m!8392504 () Bool)

(assert (=> bm!745124 m!8392504))

(declare-fun m!8392506 () Bool)

(assert (=> b!8032458 m!8392506))

(declare-fun m!8392508 () Bool)

(assert (=> d!2394755 m!8392508))

(assert (=> d!2394755 m!8392476))

(assert (=> b!8032324 d!2394755))

(declare-fun d!2394757 () Bool)

(assert (=> d!2394757 (= (tail!16058 input!5983) (t!390948 input!5983))))

(assert (=> b!8032324 d!2394757))

(declare-fun d!2394759 () Bool)

(assert (=> d!2394759 (= (head!16517 input!5983) (h!81500 input!5983))))

(assert (=> b!8032324 d!2394759))

(declare-fun d!2394761 () Bool)

(assert (=> d!2394761 (= (isEmpty!43031 lt!2721968) ((_ is Nil!75052) lt!2721968))))

(assert (=> b!8032331 d!2394761))

(assert (=> b!8032323 d!2394761))

(declare-fun b!8032495 () Bool)

(declare-fun res!3176455 () Bool)

(declare-fun e!4732007 () Bool)

(assert (=> b!8032495 (=> res!3176455 e!4732007)))

(assert (=> b!8032495 (= res!3176455 (not ((_ is Concat!30716) r!13230)))))

(declare-fun e!4732008 () Bool)

(assert (=> b!8032495 (= e!4732008 e!4732007)))

(declare-fun b!8032496 () Bool)

(declare-fun e!4732009 () Bool)

(declare-fun call!745141 () Bool)

(assert (=> b!8032496 (= e!4732009 call!745141)))

(declare-fun b!8032497 () Bool)

(declare-fun e!4732012 () Bool)

(declare-fun e!4732010 () Bool)

(assert (=> b!8032497 (= e!4732012 e!4732010)))

(declare-fun res!3176454 () Bool)

(assert (=> b!8032497 (= res!3176454 (not (nullable!9745 (reg!22042 r!13230))))))

(assert (=> b!8032497 (=> (not res!3176454) (not e!4732010))))

(declare-fun bm!745135 () Bool)

(declare-fun c!1473554 () Bool)

(assert (=> bm!745135 (= call!745141 (validRegex!12009 (ite c!1473554 (regTwo!43939 r!13230) (regTwo!43938 r!13230))))))

(declare-fun b!8032498 () Bool)

(declare-fun e!4732011 () Bool)

(assert (=> b!8032498 (= e!4732011 e!4732012)))

(declare-fun c!1473555 () Bool)

(assert (=> b!8032498 (= c!1473555 ((_ is Star!21713) r!13230))))

(declare-fun b!8032499 () Bool)

(declare-fun res!3176452 () Bool)

(declare-fun e!4732006 () Bool)

(assert (=> b!8032499 (=> (not res!3176452) (not e!4732006))))

(declare-fun call!745142 () Bool)

(assert (=> b!8032499 (= res!3176452 call!745142)))

(assert (=> b!8032499 (= e!4732008 e!4732006)))

(declare-fun b!8032500 () Bool)

(assert (=> b!8032500 (= e!4732012 e!4732008)))

(assert (=> b!8032500 (= c!1473554 ((_ is Union!21713) r!13230))))

(declare-fun b!8032501 () Bool)

(declare-fun call!745140 () Bool)

(assert (=> b!8032501 (= e!4732010 call!745140)))

(declare-fun bm!745137 () Bool)

(assert (=> bm!745137 (= call!745142 call!745140)))

(declare-fun bm!745136 () Bool)

(assert (=> bm!745136 (= call!745140 (validRegex!12009 (ite c!1473555 (reg!22042 r!13230) (ite c!1473554 (regOne!43939 r!13230) (regOne!43938 r!13230)))))))

(declare-fun d!2394763 () Bool)

(declare-fun res!3176451 () Bool)

(assert (=> d!2394763 (=> res!3176451 e!4732011)))

(assert (=> d!2394763 (= res!3176451 ((_ is ElementMatch!21713) r!13230))))

(assert (=> d!2394763 (= (validRegex!12009 r!13230) e!4732011)))

(declare-fun b!8032502 () Bool)

(assert (=> b!8032502 (= e!4732007 e!4732009)))

(declare-fun res!3176453 () Bool)

(assert (=> b!8032502 (=> (not res!3176453) (not e!4732009))))

(assert (=> b!8032502 (= res!3176453 call!745142)))

(declare-fun b!8032503 () Bool)

(assert (=> b!8032503 (= e!4732006 call!745141)))

(assert (= (and d!2394763 (not res!3176451)) b!8032498))

(assert (= (and b!8032498 c!1473555) b!8032497))

(assert (= (and b!8032498 (not c!1473555)) b!8032500))

(assert (= (and b!8032497 res!3176454) b!8032501))

(assert (= (and b!8032500 c!1473554) b!8032499))

(assert (= (and b!8032500 (not c!1473554)) b!8032495))

(assert (= (and b!8032499 res!3176452) b!8032503))

(assert (= (and b!8032495 (not res!3176455)) b!8032502))

(assert (= (and b!8032502 res!3176453) b!8032496))

(assert (= (or b!8032499 b!8032502) bm!745137))

(assert (= (or b!8032503 b!8032496) bm!745135))

(assert (= (or b!8032501 bm!745137) bm!745136))

(declare-fun m!8392524 () Bool)

(assert (=> b!8032497 m!8392524))

(declare-fun m!8392526 () Bool)

(assert (=> bm!745135 m!8392526))

(declare-fun m!8392528 () Bool)

(assert (=> bm!745136 m!8392528))

(assert (=> start!756604 d!2394763))

(declare-fun d!2394767 () Bool)

(assert (=> d!2394767 (= (isEmpty!43031 input!5983) ((_ is Nil!75052) input!5983))))

(assert (=> b!8032333 d!2394767))

(declare-fun b!8032517 () Bool)

(declare-fun e!4732015 () Bool)

(declare-fun tp!2404281 () Bool)

(declare-fun tp!2404279 () Bool)

(assert (=> b!8032517 (= e!4732015 (and tp!2404281 tp!2404279))))

(assert (=> b!8032335 (= tp!2404266 e!4732015)))

(declare-fun b!8032516 () Bool)

(declare-fun tp!2404282 () Bool)

(assert (=> b!8032516 (= e!4732015 tp!2404282)))

(declare-fun b!8032514 () Bool)

(assert (=> b!8032514 (= e!4732015 tp_is_empty!54421)))

(declare-fun b!8032515 () Bool)

(declare-fun tp!2404278 () Bool)

(declare-fun tp!2404280 () Bool)

(assert (=> b!8032515 (= e!4732015 (and tp!2404278 tp!2404280))))

(assert (= (and b!8032335 ((_ is ElementMatch!21713) (regOne!43939 r!13230))) b!8032514))

(assert (= (and b!8032335 ((_ is Concat!30716) (regOne!43939 r!13230))) b!8032515))

(assert (= (and b!8032335 ((_ is Star!21713) (regOne!43939 r!13230))) b!8032516))

(assert (= (and b!8032335 ((_ is Union!21713) (regOne!43939 r!13230))) b!8032517))

(declare-fun b!8032521 () Bool)

(declare-fun e!4732016 () Bool)

(declare-fun tp!2404286 () Bool)

(declare-fun tp!2404284 () Bool)

(assert (=> b!8032521 (= e!4732016 (and tp!2404286 tp!2404284))))

(assert (=> b!8032335 (= tp!2404267 e!4732016)))

(declare-fun b!8032520 () Bool)

(declare-fun tp!2404287 () Bool)

(assert (=> b!8032520 (= e!4732016 tp!2404287)))

(declare-fun b!8032518 () Bool)

(assert (=> b!8032518 (= e!4732016 tp_is_empty!54421)))

(declare-fun b!8032519 () Bool)

(declare-fun tp!2404283 () Bool)

(declare-fun tp!2404285 () Bool)

(assert (=> b!8032519 (= e!4732016 (and tp!2404283 tp!2404285))))

(assert (= (and b!8032335 ((_ is ElementMatch!21713) (regTwo!43939 r!13230))) b!8032518))

(assert (= (and b!8032335 ((_ is Concat!30716) (regTwo!43939 r!13230))) b!8032519))

(assert (= (and b!8032335 ((_ is Star!21713) (regTwo!43939 r!13230))) b!8032520))

(assert (= (and b!8032335 ((_ is Union!21713) (regTwo!43939 r!13230))) b!8032521))

(declare-fun b!8032526 () Bool)

(declare-fun e!4732019 () Bool)

(declare-fun tp!2404290 () Bool)

(assert (=> b!8032526 (= e!4732019 (and tp_is_empty!54421 tp!2404290))))

(assert (=> b!8032330 (= tp!2404262 e!4732019)))

(assert (= (and b!8032330 ((_ is Cons!75052) (t!390948 input!5983))) b!8032526))

(declare-fun b!8032530 () Bool)

(declare-fun e!4732020 () Bool)

(declare-fun tp!2404294 () Bool)

(declare-fun tp!2404292 () Bool)

(assert (=> b!8032530 (= e!4732020 (and tp!2404294 tp!2404292))))

(assert (=> b!8032332 (= tp!2404263 e!4732020)))

(declare-fun b!8032529 () Bool)

(declare-fun tp!2404295 () Bool)

(assert (=> b!8032529 (= e!4732020 tp!2404295)))

(declare-fun b!8032527 () Bool)

(assert (=> b!8032527 (= e!4732020 tp_is_empty!54421)))

(declare-fun b!8032528 () Bool)

(declare-fun tp!2404291 () Bool)

(declare-fun tp!2404293 () Bool)

(assert (=> b!8032528 (= e!4732020 (and tp!2404291 tp!2404293))))

(assert (= (and b!8032332 ((_ is ElementMatch!21713) (reg!22042 r!13230))) b!8032527))

(assert (= (and b!8032332 ((_ is Concat!30716) (reg!22042 r!13230))) b!8032528))

(assert (= (and b!8032332 ((_ is Star!21713) (reg!22042 r!13230))) b!8032529))

(assert (= (and b!8032332 ((_ is Union!21713) (reg!22042 r!13230))) b!8032530))

(declare-fun b!8032534 () Bool)

(declare-fun e!4732021 () Bool)

(declare-fun tp!2404299 () Bool)

(declare-fun tp!2404297 () Bool)

(assert (=> b!8032534 (= e!4732021 (and tp!2404299 tp!2404297))))

(assert (=> b!8032326 (= tp!2404264 e!4732021)))

(declare-fun b!8032533 () Bool)

(declare-fun tp!2404300 () Bool)

(assert (=> b!8032533 (= e!4732021 tp!2404300)))

(declare-fun b!8032531 () Bool)

(assert (=> b!8032531 (= e!4732021 tp_is_empty!54421)))

(declare-fun b!8032532 () Bool)

(declare-fun tp!2404296 () Bool)

(declare-fun tp!2404298 () Bool)

(assert (=> b!8032532 (= e!4732021 (and tp!2404296 tp!2404298))))

(assert (= (and b!8032326 ((_ is ElementMatch!21713) (regOne!43938 r!13230))) b!8032531))

(assert (= (and b!8032326 ((_ is Concat!30716) (regOne!43938 r!13230))) b!8032532))

(assert (= (and b!8032326 ((_ is Star!21713) (regOne!43938 r!13230))) b!8032533))

(assert (= (and b!8032326 ((_ is Union!21713) (regOne!43938 r!13230))) b!8032534))

(declare-fun b!8032538 () Bool)

(declare-fun e!4732022 () Bool)

(declare-fun tp!2404304 () Bool)

(declare-fun tp!2404302 () Bool)

(assert (=> b!8032538 (= e!4732022 (and tp!2404304 tp!2404302))))

(assert (=> b!8032326 (= tp!2404265 e!4732022)))

(declare-fun b!8032537 () Bool)

(declare-fun tp!2404305 () Bool)

(assert (=> b!8032537 (= e!4732022 tp!2404305)))

(declare-fun b!8032535 () Bool)

(assert (=> b!8032535 (= e!4732022 tp_is_empty!54421)))

(declare-fun b!8032536 () Bool)

(declare-fun tp!2404301 () Bool)

(declare-fun tp!2404303 () Bool)

(assert (=> b!8032536 (= e!4732022 (and tp!2404301 tp!2404303))))

(assert (= (and b!8032326 ((_ is ElementMatch!21713) (regTwo!43938 r!13230))) b!8032535))

(assert (= (and b!8032326 ((_ is Concat!30716) (regTwo!43938 r!13230))) b!8032536))

(assert (= (and b!8032326 ((_ is Star!21713) (regTwo!43938 r!13230))) b!8032537))

(assert (= (and b!8032326 ((_ is Union!21713) (regTwo!43938 r!13230))) b!8032538))

(check-sat (not b!8032538) (not b!8032529) (not b!8032533) (not b!8032520) (not b!8032534) (not bm!745135) (not b!8032517) (not b!8032528) (not d!2394755) (not b!8032399) (not b!8032536) (not b!8032532) (not b!8032526) (not b!8032497) (not b!8032515) (not bm!745124) (not b!8032521) (not b!8032396) (not b!8032392) (not b!8032458) (not bm!745136) (not d!2394745) tp_is_empty!54421 (not b!8032516) (not b!8032537) (not b!8032530) (not bm!745113) (not b!8032400) (not b!8032394) (not b!8032519) (not b!8032395) (not bm!745122))
(check-sat)
