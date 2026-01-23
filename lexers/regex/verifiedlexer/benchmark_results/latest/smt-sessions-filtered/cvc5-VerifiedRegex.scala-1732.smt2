; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86676 () Bool)

(assert start!86676)

(declare-fun b!976304 () Bool)

(assert (=> b!976304 true))

(assert (=> b!976304 true))

(declare-fun b!976302 () Bool)

(declare-fun e!628704 () Bool)

(declare-fun tp!298674 () Bool)

(declare-fun tp!298671 () Bool)

(assert (=> b!976302 (= e!628704 (and tp!298674 tp!298671))))

(declare-fun b!976303 () Bool)

(declare-fun tp_is_empty!5087 () Bool)

(assert (=> b!976303 (= e!628704 tp_is_empty!5087)))

(declare-fun b!976305 () Bool)

(declare-fun e!628707 () Bool)

(declare-fun tp!298673 () Bool)

(assert (=> b!976305 (= e!628707 (and tp_is_empty!5087 tp!298673))))

(declare-fun b!976306 () Bool)

(declare-fun tp!298672 () Bool)

(assert (=> b!976306 (= e!628704 tp!298672)))

(declare-fun b!976307 () Bool)

(declare-fun e!628706 () Bool)

(declare-fun e!628705 () Bool)

(assert (=> b!976307 (= e!628706 (not e!628705))))

(declare-fun res!443383 () Bool)

(assert (=> b!976307 (=> res!443383 e!628705)))

(declare-fun lt!349480 () Bool)

(declare-datatypes ((C!6014 0))(
  ( (C!6015 (val!3255 Int)) )
))
(declare-datatypes ((Regex!2722 0))(
  ( (ElementMatch!2722 (c!159445 C!6014)) (Concat!4555 (regOne!5956 Regex!2722) (regTwo!5956 Regex!2722)) (EmptyExpr!2722) (Star!2722 (reg!3051 Regex!2722)) (EmptyLang!2722) (Union!2722 (regOne!5957 Regex!2722) (regTwo!5957 Regex!2722)) )
))
(declare-fun r!15766 () Regex!2722)

(assert (=> b!976307 (= res!443383 (or (not lt!349480) (and (is-Concat!4555 r!15766) (is-EmptyExpr!2722 (regOne!5956 r!15766))) (not (is-Concat!4555 r!15766)) (not (is-EmptyExpr!2722 (regTwo!5956 r!15766)))))))

(declare-datatypes ((List!9952 0))(
  ( (Nil!9936) (Cons!9936 (h!15337 C!6014) (t!100998 List!9952)) )
))
(declare-fun s!10566 () List!9952)

(declare-fun matchRSpec!521 (Regex!2722 List!9952) Bool)

(assert (=> b!976307 (= lt!349480 (matchRSpec!521 r!15766 s!10566))))

(declare-fun matchR!1258 (Regex!2722 List!9952) Bool)

(assert (=> b!976307 (= lt!349480 (matchR!1258 r!15766 s!10566))))

(declare-datatypes ((Unit!15103 0))(
  ( (Unit!15104) )
))
(declare-fun lt!349482 () Unit!15103)

(declare-fun mainMatchTheorem!521 (Regex!2722 List!9952) Unit!15103)

(assert (=> b!976307 (= lt!349482 (mainMatchTheorem!521 r!15766 s!10566))))

(declare-fun b!976308 () Bool)

(declare-fun tp!298670 () Bool)

(declare-fun tp!298669 () Bool)

(assert (=> b!976308 (= e!628704 (and tp!298670 tp!298669))))

(declare-fun b!976309 () Bool)

(declare-fun res!443381 () Bool)

(assert (=> b!976309 (=> res!443381 e!628705)))

(declare-fun isEmpty!6251 (List!9952) Bool)

(assert (=> b!976309 (= res!443381 (isEmpty!6251 s!10566))))

(declare-fun res!443382 () Bool)

(assert (=> start!86676 (=> (not res!443382) (not e!628706))))

(declare-fun validRegex!1191 (Regex!2722) Bool)

(assert (=> start!86676 (= res!443382 (validRegex!1191 r!15766))))

(assert (=> start!86676 e!628706))

(assert (=> start!86676 e!628704))

(assert (=> start!86676 e!628707))

(assert (=> b!976304 (= e!628705 (validRegex!1191 (regOne!5956 r!15766)))))

(declare-fun lambda!34661 () Int)

(declare-datatypes ((tuple2!11298 0))(
  ( (tuple2!11299 (_1!6475 List!9952) (_2!6475 List!9952)) )
))
(declare-datatypes ((Option!2291 0))(
  ( (None!2290) (Some!2290 (v!19707 tuple2!11298)) )
))
(declare-fun isDefined!1933 (Option!2291) Bool)

(declare-fun findConcatSeparation!397 (Regex!2722 Regex!2722 List!9952 List!9952 List!9952) Option!2291)

(declare-fun Exists!459 (Int) Bool)

(assert (=> b!976304 (= (isDefined!1933 (findConcatSeparation!397 (regOne!5956 r!15766) EmptyExpr!2722 Nil!9936 s!10566 s!10566)) (Exists!459 lambda!34661))))

(declare-fun lt!349481 () Unit!15103)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!397 (Regex!2722 Regex!2722 List!9952) Unit!15103)

(assert (=> b!976304 (= lt!349481 (lemmaFindConcatSeparationEquivalentToExists!397 (regOne!5956 r!15766) EmptyExpr!2722 s!10566))))

(assert (= (and start!86676 res!443382) b!976307))

(assert (= (and b!976307 (not res!443383)) b!976309))

(assert (= (and b!976309 (not res!443381)) b!976304))

(assert (= (and start!86676 (is-ElementMatch!2722 r!15766)) b!976303))

(assert (= (and start!86676 (is-Concat!4555 r!15766)) b!976308))

(assert (= (and start!86676 (is-Star!2722 r!15766)) b!976306))

(assert (= (and start!86676 (is-Union!2722 r!15766)) b!976302))

(assert (= (and start!86676 (is-Cons!9936 s!10566)) b!976305))

(declare-fun m!1177685 () Bool)

(assert (=> b!976307 m!1177685))

(declare-fun m!1177687 () Bool)

(assert (=> b!976307 m!1177687))

(declare-fun m!1177689 () Bool)

(assert (=> b!976307 m!1177689))

(declare-fun m!1177691 () Bool)

(assert (=> b!976309 m!1177691))

(declare-fun m!1177693 () Bool)

(assert (=> start!86676 m!1177693))

(declare-fun m!1177695 () Bool)

(assert (=> b!976304 m!1177695))

(declare-fun m!1177697 () Bool)

(assert (=> b!976304 m!1177697))

(declare-fun m!1177699 () Bool)

(assert (=> b!976304 m!1177699))

(declare-fun m!1177701 () Bool)

(assert (=> b!976304 m!1177701))

(assert (=> b!976304 m!1177697))

(declare-fun m!1177703 () Bool)

(assert (=> b!976304 m!1177703))

(push 1)

(assert tp_is_empty!5087)

(assert (not b!976307))

(assert (not b!976305))

(assert (not b!976308))

(assert (not b!976304))

(assert (not b!976302))

(assert (not start!86676))

(assert (not b!976309))

(assert (not b!976306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!243170 () Bool)

(declare-fun b!976402 () Bool)

(assert (= bs!243170 (and b!976402 b!976304)))

(declare-fun lambda!34669 () Int)

(assert (=> bs!243170 (not (= lambda!34669 lambda!34661))))

(assert (=> b!976402 true))

(assert (=> b!976402 true))

(declare-fun bs!243171 () Bool)

(declare-fun b!976406 () Bool)

(assert (= bs!243171 (and b!976406 b!976304)))

(declare-fun lambda!34670 () Int)

(assert (=> bs!243171 (not (= lambda!34670 lambda!34661))))

(declare-fun bs!243172 () Bool)

(assert (= bs!243172 (and b!976406 b!976402)))

(assert (=> bs!243172 (not (= lambda!34670 lambda!34669))))

(assert (=> b!976406 true))

(assert (=> b!976406 true))

(declare-fun b!976396 () Bool)

(declare-fun c!159459 () Bool)

(assert (=> b!976396 (= c!159459 (is-ElementMatch!2722 r!15766))))

(declare-fun e!628758 () Bool)

(declare-fun e!628760 () Bool)

(assert (=> b!976396 (= e!628758 e!628760)))

(declare-fun bm!62395 () Bool)

(declare-fun call!62400 () Bool)

(assert (=> bm!62395 (= call!62400 (isEmpty!6251 s!10566))))

(declare-fun b!976397 () Bool)

(declare-fun e!628755 () Bool)

(assert (=> b!976397 (= e!628755 (matchRSpec!521 (regTwo!5957 r!15766) s!10566))))

(declare-fun b!976398 () Bool)

(declare-fun e!628757 () Bool)

(assert (=> b!976398 (= e!628757 e!628755)))

(declare-fun res!443423 () Bool)

(assert (=> b!976398 (= res!443423 (matchRSpec!521 (regOne!5957 r!15766) s!10566))))

(assert (=> b!976398 (=> res!443423 e!628755)))

(declare-fun call!62401 () Bool)

(declare-fun c!159461 () Bool)

(declare-fun bm!62396 () Bool)

(assert (=> bm!62396 (= call!62401 (Exists!459 (ite c!159461 lambda!34669 lambda!34670)))))

(declare-fun b!976399 () Bool)

(declare-fun e!628754 () Bool)

(assert (=> b!976399 (= e!628757 e!628754)))

(assert (=> b!976399 (= c!159461 (is-Star!2722 r!15766))))

(declare-fun b!976400 () Bool)

(assert (=> b!976400 (= e!628760 (= s!10566 (Cons!9936 (c!159445 r!15766) Nil!9936)))))

(declare-fun b!976401 () Bool)

(declare-fun e!628756 () Bool)

(assert (=> b!976401 (= e!628756 e!628758)))

(declare-fun res!443425 () Bool)

(assert (=> b!976401 (= res!443425 (not (is-EmptyLang!2722 r!15766)))))

(assert (=> b!976401 (=> (not res!443425) (not e!628758))))

(declare-fun d!287471 () Bool)

(declare-fun c!159462 () Bool)

(assert (=> d!287471 (= c!159462 (is-EmptyExpr!2722 r!15766))))

(assert (=> d!287471 (= (matchRSpec!521 r!15766 s!10566) e!628756)))

(declare-fun e!628759 () Bool)

(assert (=> b!976402 (= e!628759 call!62401)))

(declare-fun b!976403 () Bool)

(declare-fun res!443424 () Bool)

(assert (=> b!976403 (=> res!443424 e!628759)))

(assert (=> b!976403 (= res!443424 call!62400)))

(assert (=> b!976403 (= e!628754 e!628759)))

(declare-fun b!976404 () Bool)

(assert (=> b!976404 (= e!628756 call!62400)))

(declare-fun b!976405 () Bool)

(declare-fun c!159460 () Bool)

(assert (=> b!976405 (= c!159460 (is-Union!2722 r!15766))))

(assert (=> b!976405 (= e!628760 e!628757)))

(assert (=> b!976406 (= e!628754 call!62401)))

(assert (= (and d!287471 c!159462) b!976404))

(assert (= (and d!287471 (not c!159462)) b!976401))

(assert (= (and b!976401 res!443425) b!976396))

(assert (= (and b!976396 c!159459) b!976400))

(assert (= (and b!976396 (not c!159459)) b!976405))

(assert (= (and b!976405 c!159460) b!976398))

(assert (= (and b!976405 (not c!159460)) b!976399))

(assert (= (and b!976398 (not res!443423)) b!976397))

(assert (= (and b!976399 c!159461) b!976403))

(assert (= (and b!976399 (not c!159461)) b!976406))

(assert (= (and b!976403 (not res!443424)) b!976402))

(assert (= (or b!976402 b!976406) bm!62396))

(assert (= (or b!976404 b!976403) bm!62395))

(assert (=> bm!62395 m!1177691))

(declare-fun m!1177725 () Bool)

(assert (=> b!976397 m!1177725))

(declare-fun m!1177727 () Bool)

(assert (=> b!976398 m!1177727))

(declare-fun m!1177731 () Bool)

(assert (=> bm!62396 m!1177731))

(assert (=> b!976307 d!287471))

(declare-fun b!976444 () Bool)

(declare-fun e!628783 () Bool)

(declare-fun head!1799 (List!9952) C!6014)

(assert (=> b!976444 (= e!628783 (not (= (head!1799 s!10566) (c!159445 r!15766))))))

(declare-fun b!976445 () Bool)

(declare-fun e!628785 () Bool)

(declare-fun lt!349494 () Bool)

(declare-fun call!62407 () Bool)

(assert (=> b!976445 (= e!628785 (= lt!349494 call!62407))))

(declare-fun b!976446 () Bool)

(declare-fun res!443448 () Bool)

(declare-fun e!628784 () Bool)

(assert (=> b!976446 (=> res!443448 e!628784)))

(assert (=> b!976446 (= res!443448 (not (is-ElementMatch!2722 r!15766)))))

(declare-fun e!628788 () Bool)

(assert (=> b!976446 (= e!628788 e!628784)))

(declare-fun b!976447 () Bool)

(declare-fun e!628787 () Bool)

(declare-fun derivativeStep!646 (Regex!2722 C!6014) Regex!2722)

(declare-fun tail!1361 (List!9952) List!9952)

(assert (=> b!976447 (= e!628787 (matchR!1258 (derivativeStep!646 r!15766 (head!1799 s!10566)) (tail!1361 s!10566)))))

(declare-fun bm!62402 () Bool)

(assert (=> bm!62402 (= call!62407 (isEmpty!6251 s!10566))))

(declare-fun b!976448 () Bool)

(declare-fun e!628786 () Bool)

(assert (=> b!976448 (= e!628786 e!628783)))

(declare-fun res!443451 () Bool)

(assert (=> b!976448 (=> res!443451 e!628783)))

(assert (=> b!976448 (= res!443451 call!62407)))

(declare-fun b!976449 () Bool)

(declare-fun res!443453 () Bool)

(declare-fun e!628782 () Bool)

(assert (=> b!976449 (=> (not res!443453) (not e!628782))))

(assert (=> b!976449 (= res!443453 (not call!62407))))

(declare-fun b!976450 () Bool)

(declare-fun res!443449 () Bool)

(assert (=> b!976450 (=> res!443449 e!628783)))

(assert (=> b!976450 (= res!443449 (not (isEmpty!6251 (tail!1361 s!10566))))))

(declare-fun b!976451 () Bool)

(declare-fun res!443450 () Bool)

(assert (=> b!976451 (=> res!443450 e!628784)))

(assert (=> b!976451 (= res!443450 e!628782)))

(declare-fun res!443447 () Bool)

(assert (=> b!976451 (=> (not res!443447) (not e!628782))))

(assert (=> b!976451 (= res!443447 lt!349494)))

(declare-fun b!976453 () Bool)

(assert (=> b!976453 (= e!628784 e!628786)))

(declare-fun res!443454 () Bool)

(assert (=> b!976453 (=> (not res!443454) (not e!628786))))

(assert (=> b!976453 (= res!443454 (not lt!349494))))

(declare-fun b!976454 () Bool)

(declare-fun nullable!840 (Regex!2722) Bool)

(assert (=> b!976454 (= e!628787 (nullable!840 r!15766))))

(declare-fun b!976455 () Bool)

(declare-fun res!443452 () Bool)

(assert (=> b!976455 (=> (not res!443452) (not e!628782))))

(assert (=> b!976455 (= res!443452 (isEmpty!6251 (tail!1361 s!10566)))))

(declare-fun b!976456 () Bool)

(assert (=> b!976456 (= e!628788 (not lt!349494))))

(declare-fun b!976457 () Bool)

(assert (=> b!976457 (= e!628782 (= (head!1799 s!10566) (c!159445 r!15766)))))

(declare-fun d!287475 () Bool)

(assert (=> d!287475 e!628785))

(declare-fun c!159471 () Bool)

(assert (=> d!287475 (= c!159471 (is-EmptyExpr!2722 r!15766))))

(assert (=> d!287475 (= lt!349494 e!628787)))

(declare-fun c!159473 () Bool)

(assert (=> d!287475 (= c!159473 (isEmpty!6251 s!10566))))

(assert (=> d!287475 (validRegex!1191 r!15766)))

(assert (=> d!287475 (= (matchR!1258 r!15766 s!10566) lt!349494)))

(declare-fun b!976452 () Bool)

(assert (=> b!976452 (= e!628785 e!628788)))

(declare-fun c!159472 () Bool)

(assert (=> b!976452 (= c!159472 (is-EmptyLang!2722 r!15766))))

(assert (= (and d!287475 c!159473) b!976454))

(assert (= (and d!287475 (not c!159473)) b!976447))

(assert (= (and d!287475 c!159471) b!976445))

(assert (= (and d!287475 (not c!159471)) b!976452))

(assert (= (and b!976452 c!159472) b!976456))

(assert (= (and b!976452 (not c!159472)) b!976446))

(assert (= (and b!976446 (not res!443448)) b!976451))

(assert (= (and b!976451 res!443447) b!976449))

(assert (= (and b!976449 res!443453) b!976455))

(assert (= (and b!976455 res!443452) b!976457))

(assert (= (and b!976451 (not res!443450)) b!976453))

(assert (= (and b!976453 res!443454) b!976448))

(assert (= (and b!976448 (not res!443451)) b!976450))

(assert (= (and b!976450 (not res!443449)) b!976444))

(assert (= (or b!976445 b!976448 b!976449) bm!62402))

(declare-fun m!1177737 () Bool)

(assert (=> b!976450 m!1177737))

(assert (=> b!976450 m!1177737))

(declare-fun m!1177739 () Bool)

(assert (=> b!976450 m!1177739))

(declare-fun m!1177741 () Bool)

(assert (=> b!976454 m!1177741))

(declare-fun m!1177743 () Bool)

(assert (=> b!976457 m!1177743))

(assert (=> b!976444 m!1177743))

(assert (=> b!976455 m!1177737))

(assert (=> b!976455 m!1177737))

(assert (=> b!976455 m!1177739))

(assert (=> d!287475 m!1177691))

(assert (=> d!287475 m!1177693))

(assert (=> b!976447 m!1177743))

(assert (=> b!976447 m!1177743))

(declare-fun m!1177745 () Bool)

(assert (=> b!976447 m!1177745))

(assert (=> b!976447 m!1177737))

(assert (=> b!976447 m!1177745))

(assert (=> b!976447 m!1177737))

(declare-fun m!1177747 () Bool)

(assert (=> b!976447 m!1177747))

(assert (=> bm!62402 m!1177691))

(assert (=> b!976307 d!287475))

(declare-fun d!287479 () Bool)

(assert (=> d!287479 (= (matchR!1258 r!15766 s!10566) (matchRSpec!521 r!15766 s!10566))))

(declare-fun lt!349497 () Unit!15103)

(declare-fun choose!6181 (Regex!2722 List!9952) Unit!15103)

(assert (=> d!287479 (= lt!349497 (choose!6181 r!15766 s!10566))))

(assert (=> d!287479 (validRegex!1191 r!15766)))

(assert (=> d!287479 (= (mainMatchTheorem!521 r!15766 s!10566) lt!349497)))

(declare-fun bs!243173 () Bool)

(assert (= bs!243173 d!287479))

(assert (=> bs!243173 m!1177687))

(assert (=> bs!243173 m!1177685))

(declare-fun m!1177749 () Bool)

(assert (=> bs!243173 m!1177749))

(assert (=> bs!243173 m!1177693))

(assert (=> b!976307 d!287479))

(declare-fun d!287481 () Bool)

(assert (=> d!287481 (= (isEmpty!6251 s!10566) (is-Nil!9936 s!10566))))

(assert (=> b!976309 d!287481))

(declare-fun b!976504 () Bool)

(declare-fun e!628822 () Bool)

(declare-fun call!62416 () Bool)

(assert (=> b!976504 (= e!628822 call!62416)))

(declare-fun b!976505 () Bool)

(declare-fun e!628820 () Bool)

(assert (=> b!976505 (= e!628820 call!62416)))

(declare-fun b!976506 () Bool)

(declare-fun e!628823 () Bool)

(declare-fun call!62415 () Bool)

(assert (=> b!976506 (= e!628823 call!62415)))

(declare-fun d!287483 () Bool)

(declare-fun res!443479 () Bool)

(declare-fun e!628819 () Bool)

(assert (=> d!287483 (=> res!443479 e!628819)))

(assert (=> d!287483 (= res!443479 (is-ElementMatch!2722 r!15766))))

(assert (=> d!287483 (= (validRegex!1191 r!15766) e!628819)))

(declare-fun b!976507 () Bool)

(declare-fun e!628825 () Bool)

(assert (=> b!976507 (= e!628825 e!628820)))

(declare-fun res!443477 () Bool)

(assert (=> b!976507 (=> (not res!443477) (not e!628820))))

(declare-fun call!62414 () Bool)

(assert (=> b!976507 (= res!443477 call!62414)))

(declare-fun c!159487 () Bool)

(declare-fun c!159486 () Bool)

(declare-fun bm!62409 () Bool)

(assert (=> bm!62409 (= call!62415 (validRegex!1191 (ite c!159487 (reg!3051 r!15766) (ite c!159486 (regTwo!5957 r!15766) (regTwo!5956 r!15766)))))))

(declare-fun bm!62410 () Bool)

(assert (=> bm!62410 (= call!62416 call!62415)))

(declare-fun b!976508 () Bool)

(declare-fun res!443478 () Bool)

(assert (=> b!976508 (=> (not res!443478) (not e!628822))))

(assert (=> b!976508 (= res!443478 call!62414)))

(declare-fun e!628821 () Bool)

(assert (=> b!976508 (= e!628821 e!628822)))

(declare-fun bm!62411 () Bool)

(assert (=> bm!62411 (= call!62414 (validRegex!1191 (ite c!159486 (regOne!5957 r!15766) (regOne!5956 r!15766))))))

(declare-fun b!976509 () Bool)

(declare-fun e!628824 () Bool)

(assert (=> b!976509 (= e!628824 e!628823)))

(declare-fun res!443480 () Bool)

(assert (=> b!976509 (= res!443480 (not (nullable!840 (reg!3051 r!15766))))))

(assert (=> b!976509 (=> (not res!443480) (not e!628823))))

(declare-fun b!976510 () Bool)

(assert (=> b!976510 (= e!628819 e!628824)))

(assert (=> b!976510 (= c!159487 (is-Star!2722 r!15766))))

(declare-fun b!976511 () Bool)

(declare-fun res!443481 () Bool)

(assert (=> b!976511 (=> res!443481 e!628825)))

(assert (=> b!976511 (= res!443481 (not (is-Concat!4555 r!15766)))))

(assert (=> b!976511 (= e!628821 e!628825)))

(declare-fun b!976512 () Bool)

(assert (=> b!976512 (= e!628824 e!628821)))

(assert (=> b!976512 (= c!159486 (is-Union!2722 r!15766))))

(assert (= (and d!287483 (not res!443479)) b!976510))

(assert (= (and b!976510 c!159487) b!976509))

(assert (= (and b!976510 (not c!159487)) b!976512))

(assert (= (and b!976509 res!443480) b!976506))

(assert (= (and b!976512 c!159486) b!976508))

(assert (= (and b!976512 (not c!159486)) b!976511))

(assert (= (and b!976508 res!443478) b!976504))

(assert (= (and b!976511 (not res!443481)) b!976507))

(assert (= (and b!976507 res!443477) b!976505))

(assert (= (or b!976504 b!976505) bm!62410))

(assert (= (or b!976508 b!976507) bm!62411))

(assert (= (or b!976506 bm!62410) bm!62409))

(declare-fun m!1177751 () Bool)

(assert (=> bm!62409 m!1177751))

(declare-fun m!1177753 () Bool)

(assert (=> bm!62411 m!1177753))

(declare-fun m!1177755 () Bool)

(assert (=> b!976509 m!1177755))

(assert (=> start!86676 d!287483))

(declare-fun d!287485 () Bool)

(declare-fun isEmpty!6253 (Option!2291) Bool)

(assert (=> d!287485 (= (isDefined!1933 (findConcatSeparation!397 (regOne!5956 r!15766) EmptyExpr!2722 Nil!9936 s!10566 s!10566)) (not (isEmpty!6253 (findConcatSeparation!397 (regOne!5956 r!15766) EmptyExpr!2722 Nil!9936 s!10566 s!10566))))))

(declare-fun bs!243174 () Bool)

(assert (= bs!243174 d!287485))

(assert (=> bs!243174 m!1177697))

(declare-fun m!1177757 () Bool)

(assert (=> bs!243174 m!1177757))

(assert (=> b!976304 d!287485))

(declare-fun b!976517 () Bool)

(declare-fun e!628831 () Bool)

(declare-fun call!62419 () Bool)

(assert (=> b!976517 (= e!628831 call!62419)))

(declare-fun b!976518 () Bool)

(declare-fun e!628829 () Bool)

(assert (=> b!976518 (= e!628829 call!62419)))

(declare-fun b!976519 () Bool)

(declare-fun e!628832 () Bool)

(declare-fun call!62418 () Bool)

(assert (=> b!976519 (= e!628832 call!62418)))

(declare-fun d!287487 () Bool)

(declare-fun res!443488 () Bool)

(declare-fun e!628828 () Bool)

(assert (=> d!287487 (=> res!443488 e!628828)))

(assert (=> d!287487 (= res!443488 (is-ElementMatch!2722 (regOne!5956 r!15766)))))

(assert (=> d!287487 (= (validRegex!1191 (regOne!5956 r!15766)) e!628828)))

(declare-fun b!976520 () Bool)

(declare-fun e!628834 () Bool)

(assert (=> b!976520 (= e!628834 e!628829)))

(declare-fun res!443486 () Bool)

(assert (=> b!976520 (=> (not res!443486) (not e!628829))))

(declare-fun call!62417 () Bool)

(assert (=> b!976520 (= res!443486 call!62417)))

(declare-fun bm!62412 () Bool)

(declare-fun c!159488 () Bool)

(declare-fun c!159489 () Bool)

(assert (=> bm!62412 (= call!62418 (validRegex!1191 (ite c!159489 (reg!3051 (regOne!5956 r!15766)) (ite c!159488 (regTwo!5957 (regOne!5956 r!15766)) (regTwo!5956 (regOne!5956 r!15766))))))))

(declare-fun bm!62413 () Bool)

(assert (=> bm!62413 (= call!62419 call!62418)))

(declare-fun b!976521 () Bool)

(declare-fun res!443487 () Bool)

(assert (=> b!976521 (=> (not res!443487) (not e!628831))))

(assert (=> b!976521 (= res!443487 call!62417)))

(declare-fun e!628830 () Bool)

(assert (=> b!976521 (= e!628830 e!628831)))

(declare-fun bm!62414 () Bool)

(assert (=> bm!62414 (= call!62417 (validRegex!1191 (ite c!159488 (regOne!5957 (regOne!5956 r!15766)) (regOne!5956 (regOne!5956 r!15766)))))))

(declare-fun b!976522 () Bool)

(declare-fun e!628833 () Bool)

(assert (=> b!976522 (= e!628833 e!628832)))

(declare-fun res!443489 () Bool)

(assert (=> b!976522 (= res!443489 (not (nullable!840 (reg!3051 (regOne!5956 r!15766)))))))

(assert (=> b!976522 (=> (not res!443489) (not e!628832))))

(declare-fun b!976523 () Bool)

(assert (=> b!976523 (= e!628828 e!628833)))

(assert (=> b!976523 (= c!159489 (is-Star!2722 (regOne!5956 r!15766)))))

(declare-fun b!976524 () Bool)

(declare-fun res!443490 () Bool)

(assert (=> b!976524 (=> res!443490 e!628834)))

(assert (=> b!976524 (= res!443490 (not (is-Concat!4555 (regOne!5956 r!15766))))))

(assert (=> b!976524 (= e!628830 e!628834)))

(declare-fun b!976525 () Bool)

(assert (=> b!976525 (= e!628833 e!628830)))

(assert (=> b!976525 (= c!159488 (is-Union!2722 (regOne!5956 r!15766)))))

(assert (= (and d!287487 (not res!443488)) b!976523))

(assert (= (and b!976523 c!159489) b!976522))

(assert (= (and b!976523 (not c!159489)) b!976525))

(assert (= (and b!976522 res!443489) b!976519))

(assert (= (and b!976525 c!159488) b!976521))

(assert (= (and b!976525 (not c!159488)) b!976524))

(assert (= (and b!976521 res!443487) b!976517))

(assert (= (and b!976524 (not res!443490)) b!976520))

(assert (= (and b!976520 res!443486) b!976518))

(assert (= (or b!976517 b!976518) bm!62413))

(assert (= (or b!976521 b!976520) bm!62414))

(assert (= (or b!976519 bm!62413) bm!62412))

(declare-fun m!1177759 () Bool)

(assert (=> bm!62412 m!1177759))

(declare-fun m!1177761 () Bool)

(assert (=> bm!62414 m!1177761))

(declare-fun m!1177763 () Bool)

(assert (=> b!976522 m!1177763))

(assert (=> b!976304 d!287487))

(declare-fun b!976555 () Bool)

(declare-fun e!628852 () Option!2291)

(assert (=> b!976555 (= e!628852 None!2290)))

(declare-fun b!976556 () Bool)

(declare-fun e!628856 () Bool)

(declare-fun lt!349506 () Option!2291)

(declare-fun ++!2692 (List!9952 List!9952) List!9952)

(declare-fun get!3433 (Option!2291) tuple2!11298)

(assert (=> b!976556 (= e!628856 (= (++!2692 (_1!6475 (get!3433 lt!349506)) (_2!6475 (get!3433 lt!349506))) s!10566))))

(declare-fun d!287489 () Bool)

(declare-fun e!628855 () Bool)

(assert (=> d!287489 e!628855))

(declare-fun res!443508 () Bool)

(assert (=> d!287489 (=> res!443508 e!628855)))

(assert (=> d!287489 (= res!443508 e!628856)))

(declare-fun res!443506 () Bool)

(assert (=> d!287489 (=> (not res!443506) (not e!628856))))

(assert (=> d!287489 (= res!443506 (isDefined!1933 lt!349506))))

(declare-fun e!628853 () Option!2291)

(assert (=> d!287489 (= lt!349506 e!628853)))

(declare-fun c!159499 () Bool)

(declare-fun e!628854 () Bool)

(assert (=> d!287489 (= c!159499 e!628854)))

(declare-fun res!443504 () Bool)

(assert (=> d!287489 (=> (not res!443504) (not e!628854))))

(assert (=> d!287489 (= res!443504 (matchR!1258 (regOne!5956 r!15766) Nil!9936))))

(assert (=> d!287489 (validRegex!1191 (regOne!5956 r!15766))))

(assert (=> d!287489 (= (findConcatSeparation!397 (regOne!5956 r!15766) EmptyExpr!2722 Nil!9936 s!10566 s!10566) lt!349506)))

(declare-fun b!976557 () Bool)

(assert (=> b!976557 (= e!628854 (matchR!1258 EmptyExpr!2722 s!10566))))

(declare-fun b!976558 () Bool)

(declare-fun lt!349505 () Unit!15103)

(declare-fun lt!349504 () Unit!15103)

(assert (=> b!976558 (= lt!349505 lt!349504)))

(assert (=> b!976558 (= (++!2692 (++!2692 Nil!9936 (Cons!9936 (h!15337 s!10566) Nil!9936)) (t!100998 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!293 (List!9952 C!6014 List!9952 List!9952) Unit!15103)

(assert (=> b!976558 (= lt!349504 (lemmaMoveElementToOtherListKeepsConcatEq!293 Nil!9936 (h!15337 s!10566) (t!100998 s!10566) s!10566))))

(assert (=> b!976558 (= e!628852 (findConcatSeparation!397 (regOne!5956 r!15766) EmptyExpr!2722 (++!2692 Nil!9936 (Cons!9936 (h!15337 s!10566) Nil!9936)) (t!100998 s!10566) s!10566))))

(declare-fun b!976559 () Bool)

(assert (=> b!976559 (= e!628855 (not (isDefined!1933 lt!349506)))))

(declare-fun b!976560 () Bool)

(declare-fun res!443505 () Bool)

(assert (=> b!976560 (=> (not res!443505) (not e!628856))))

(assert (=> b!976560 (= res!443505 (matchR!1258 (regOne!5956 r!15766) (_1!6475 (get!3433 lt!349506))))))

(declare-fun b!976561 () Bool)

(declare-fun res!443507 () Bool)

(assert (=> b!976561 (=> (not res!443507) (not e!628856))))

(assert (=> b!976561 (= res!443507 (matchR!1258 EmptyExpr!2722 (_2!6475 (get!3433 lt!349506))))))

(declare-fun b!976562 () Bool)

(assert (=> b!976562 (= e!628853 e!628852)))

(declare-fun c!159498 () Bool)

(assert (=> b!976562 (= c!159498 (is-Nil!9936 s!10566))))

(declare-fun b!976563 () Bool)

(assert (=> b!976563 (= e!628853 (Some!2290 (tuple2!11299 Nil!9936 s!10566)))))

(assert (= (and d!287489 res!443504) b!976557))

(assert (= (and d!287489 c!159499) b!976563))

(assert (= (and d!287489 (not c!159499)) b!976562))

(assert (= (and b!976562 c!159498) b!976555))

(assert (= (and b!976562 (not c!159498)) b!976558))

(assert (= (and d!287489 res!443506) b!976560))

(assert (= (and b!976560 res!443505) b!976561))

(assert (= (and b!976561 res!443507) b!976556))

(assert (= (and d!287489 (not res!443508)) b!976559))

(declare-fun m!1177765 () Bool)

(assert (=> d!287489 m!1177765))

(declare-fun m!1177767 () Bool)

(assert (=> d!287489 m!1177767))

(assert (=> d!287489 m!1177699))

(declare-fun m!1177769 () Bool)

(assert (=> b!976560 m!1177769))

(declare-fun m!1177771 () Bool)

(assert (=> b!976560 m!1177771))

(assert (=> b!976559 m!1177765))

(declare-fun m!1177773 () Bool)

(assert (=> b!976558 m!1177773))

(assert (=> b!976558 m!1177773))

(declare-fun m!1177775 () Bool)

(assert (=> b!976558 m!1177775))

(declare-fun m!1177779 () Bool)

(assert (=> b!976558 m!1177779))

(assert (=> b!976558 m!1177773))

(declare-fun m!1177781 () Bool)

(assert (=> b!976558 m!1177781))

(assert (=> b!976561 m!1177769))

(declare-fun m!1177785 () Bool)

(assert (=> b!976561 m!1177785))

(declare-fun m!1177787 () Bool)

(assert (=> b!976557 m!1177787))

(assert (=> b!976556 m!1177769))

(declare-fun m!1177791 () Bool)

(assert (=> b!976556 m!1177791))

(assert (=> b!976304 d!287489))

(declare-fun bs!243178 () Bool)

(declare-fun d!287491 () Bool)

(assert (= bs!243178 (and d!287491 b!976304)))

(declare-fun lambda!34679 () Int)

(assert (=> bs!243178 (= lambda!34679 lambda!34661)))

(declare-fun bs!243179 () Bool)

(assert (= bs!243179 (and d!287491 b!976402)))

(assert (=> bs!243179 (not (= lambda!34679 lambda!34669))))

(declare-fun bs!243180 () Bool)

(assert (= bs!243180 (and d!287491 b!976406)))

(assert (=> bs!243180 (not (= lambda!34679 lambda!34670))))

(assert (=> d!287491 true))

(assert (=> d!287491 true))

(assert (=> d!287491 true))

(assert (=> d!287491 (= (isDefined!1933 (findConcatSeparation!397 (regOne!5956 r!15766) EmptyExpr!2722 Nil!9936 s!10566 s!10566)) (Exists!459 lambda!34679))))

(declare-fun lt!349509 () Unit!15103)

(declare-fun choose!6182 (Regex!2722 Regex!2722 List!9952) Unit!15103)

(assert (=> d!287491 (= lt!349509 (choose!6182 (regOne!5956 r!15766) EmptyExpr!2722 s!10566))))

(assert (=> d!287491 (validRegex!1191 (regOne!5956 r!15766))))

(assert (=> d!287491 (= (lemmaFindConcatSeparationEquivalentToExists!397 (regOne!5956 r!15766) EmptyExpr!2722 s!10566) lt!349509)))

(declare-fun bs!243181 () Bool)

(assert (= bs!243181 d!287491))

(assert (=> bs!243181 m!1177697))

(declare-fun m!1177793 () Bool)

(assert (=> bs!243181 m!1177793))

(assert (=> bs!243181 m!1177699))

(declare-fun m!1177795 () Bool)

(assert (=> bs!243181 m!1177795))

(assert (=> bs!243181 m!1177697))

(assert (=> bs!243181 m!1177703))

(assert (=> b!976304 d!287491))

(declare-fun d!287495 () Bool)

(declare-fun choose!6183 (Int) Bool)

(assert (=> d!287495 (= (Exists!459 lambda!34661) (choose!6183 lambda!34661))))

(declare-fun bs!243182 () Bool)

(assert (= bs!243182 d!287495))

(declare-fun m!1177797 () Bool)

(assert (=> bs!243182 m!1177797))

(assert (=> b!976304 d!287495))

(declare-fun b!976580 () Bool)

(declare-fun e!628861 () Bool)

(declare-fun tp!298703 () Bool)

(assert (=> b!976580 (= e!628861 tp!298703)))

(declare-fun b!976578 () Bool)

(assert (=> b!976578 (= e!628861 tp_is_empty!5087)))

(declare-fun b!976579 () Bool)

(declare-fun tp!298706 () Bool)

(declare-fun tp!298704 () Bool)

(assert (=> b!976579 (= e!628861 (and tp!298706 tp!298704))))

(assert (=> b!976302 (= tp!298674 e!628861)))

(declare-fun b!976581 () Bool)

(declare-fun tp!298705 () Bool)

(declare-fun tp!298707 () Bool)

(assert (=> b!976581 (= e!628861 (and tp!298705 tp!298707))))

(assert (= (and b!976302 (is-ElementMatch!2722 (regOne!5957 r!15766))) b!976578))

(assert (= (and b!976302 (is-Concat!4555 (regOne!5957 r!15766))) b!976579))

(assert (= (and b!976302 (is-Star!2722 (regOne!5957 r!15766))) b!976580))

(assert (= (and b!976302 (is-Union!2722 (regOne!5957 r!15766))) b!976581))

(declare-fun b!976584 () Bool)

(declare-fun e!628862 () Bool)

(declare-fun tp!298708 () Bool)

(assert (=> b!976584 (= e!628862 tp!298708)))

(declare-fun b!976582 () Bool)

(assert (=> b!976582 (= e!628862 tp_is_empty!5087)))

(declare-fun b!976583 () Bool)

(declare-fun tp!298711 () Bool)

(declare-fun tp!298709 () Bool)

(assert (=> b!976583 (= e!628862 (and tp!298711 tp!298709))))

(assert (=> b!976302 (= tp!298671 e!628862)))

(declare-fun b!976585 () Bool)

(declare-fun tp!298710 () Bool)

(declare-fun tp!298712 () Bool)

(assert (=> b!976585 (= e!628862 (and tp!298710 tp!298712))))

(assert (= (and b!976302 (is-ElementMatch!2722 (regTwo!5957 r!15766))) b!976582))

(assert (= (and b!976302 (is-Concat!4555 (regTwo!5957 r!15766))) b!976583))

(assert (= (and b!976302 (is-Star!2722 (regTwo!5957 r!15766))) b!976584))

(assert (= (and b!976302 (is-Union!2722 (regTwo!5957 r!15766))) b!976585))

(declare-fun b!976588 () Bool)

(declare-fun e!628863 () Bool)

(declare-fun tp!298713 () Bool)

(assert (=> b!976588 (= e!628863 tp!298713)))

(declare-fun b!976586 () Bool)

(assert (=> b!976586 (= e!628863 tp_is_empty!5087)))

(declare-fun b!976587 () Bool)

(declare-fun tp!298716 () Bool)

(declare-fun tp!298714 () Bool)

(assert (=> b!976587 (= e!628863 (and tp!298716 tp!298714))))

(assert (=> b!976308 (= tp!298670 e!628863)))

(declare-fun b!976589 () Bool)

(declare-fun tp!298715 () Bool)

(declare-fun tp!298717 () Bool)

(assert (=> b!976589 (= e!628863 (and tp!298715 tp!298717))))

(assert (= (and b!976308 (is-ElementMatch!2722 (regOne!5956 r!15766))) b!976586))

(assert (= (and b!976308 (is-Concat!4555 (regOne!5956 r!15766))) b!976587))

(assert (= (and b!976308 (is-Star!2722 (regOne!5956 r!15766))) b!976588))

(assert (= (and b!976308 (is-Union!2722 (regOne!5956 r!15766))) b!976589))

(declare-fun b!976592 () Bool)

(declare-fun e!628864 () Bool)

(declare-fun tp!298718 () Bool)

(assert (=> b!976592 (= e!628864 tp!298718)))

(declare-fun b!976590 () Bool)

(assert (=> b!976590 (= e!628864 tp_is_empty!5087)))

(declare-fun b!976591 () Bool)

(declare-fun tp!298721 () Bool)

(declare-fun tp!298719 () Bool)

(assert (=> b!976591 (= e!628864 (and tp!298721 tp!298719))))

(assert (=> b!976308 (= tp!298669 e!628864)))

(declare-fun b!976593 () Bool)

(declare-fun tp!298720 () Bool)

(declare-fun tp!298722 () Bool)

(assert (=> b!976593 (= e!628864 (and tp!298720 tp!298722))))

(assert (= (and b!976308 (is-ElementMatch!2722 (regTwo!5956 r!15766))) b!976590))

(assert (= (and b!976308 (is-Concat!4555 (regTwo!5956 r!15766))) b!976591))

(assert (= (and b!976308 (is-Star!2722 (regTwo!5956 r!15766))) b!976592))

(assert (= (and b!976308 (is-Union!2722 (regTwo!5956 r!15766))) b!976593))

(declare-fun b!976598 () Bool)

(declare-fun e!628867 () Bool)

(declare-fun tp!298725 () Bool)

(assert (=> b!976598 (= e!628867 (and tp_is_empty!5087 tp!298725))))

(assert (=> b!976305 (= tp!298673 e!628867)))

(assert (= (and b!976305 (is-Cons!9936 (t!100998 s!10566))) b!976598))

(declare-fun b!976603 () Bool)

(declare-fun e!628868 () Bool)

(declare-fun tp!298726 () Bool)

(assert (=> b!976603 (= e!628868 tp!298726)))

(declare-fun b!976601 () Bool)

(assert (=> b!976601 (= e!628868 tp_is_empty!5087)))

(declare-fun b!976602 () Bool)

(declare-fun tp!298729 () Bool)

(declare-fun tp!298727 () Bool)

(assert (=> b!976602 (= e!628868 (and tp!298729 tp!298727))))

(assert (=> b!976306 (= tp!298672 e!628868)))

(declare-fun b!976604 () Bool)

(declare-fun tp!298728 () Bool)

(declare-fun tp!298730 () Bool)

(assert (=> b!976604 (= e!628868 (and tp!298728 tp!298730))))

(assert (= (and b!976306 (is-ElementMatch!2722 (reg!3051 r!15766))) b!976601))

(assert (= (and b!976306 (is-Concat!4555 (reg!3051 r!15766))) b!976602))

(assert (= (and b!976306 (is-Star!2722 (reg!3051 r!15766))) b!976603))

(assert (= (and b!976306 (is-Union!2722 (reg!3051 r!15766))) b!976604))

(push 1)

(assert (not b!976557))

(assert (not d!287475))

(assert (not b!976457))

(assert (not b!976583))

(assert (not b!976397))

(assert (not b!976447))

(assert (not d!287495))

(assert (not b!976592))

(assert (not b!976591))

(assert (not b!976444))

(assert (not b!976587))

(assert (not b!976593))

(assert (not b!976509))

(assert (not b!976559))

(assert (not b!976602))

(assert tp_is_empty!5087)

(assert (not b!976581))

(assert (not bm!62395))

(assert (not bm!62409))

(assert (not b!976450))

(assert (not b!976454))

(assert (not b!976603))

(assert (not d!287479))

(assert (not b!976561))

(assert (not bm!62411))

(assert (not b!976604))

(assert (not b!976580))

(assert (not b!976585))

(assert (not b!976588))

(assert (not b!976579))

(assert (not b!976560))

(assert (not bm!62396))

(assert (not b!976589))

(assert (not b!976455))

(assert (not d!287485))

(assert (not b!976598))

(assert (not bm!62412))

(assert (not b!976398))

(assert (not b!976584))

(assert (not b!976558))

(assert (not d!287491))

(assert (not b!976522))

(assert (not b!976556))

(assert (not bm!62402))

(assert (not bm!62414))

(assert (not d!287489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

