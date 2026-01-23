; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295100 () Bool)

(assert start!295100)

(declare-fun res!1276207 () Bool)

(declare-fun e!1947346 () Bool)

(assert (=> start!295100 (=> (not res!1276207) (not e!1947346))))

(declare-datatypes ((C!19424 0))(
  ( (C!19425 (val!11748 Int)) )
))
(declare-datatypes ((Regex!9619 0))(
  ( (ElementMatch!9619 (c!522487 C!19424)) (Concat!14940 (regOne!19750 Regex!9619) (regTwo!19750 Regex!9619)) (EmptyExpr!9619) (Star!9619 (reg!9948 Regex!9619)) (EmptyLang!9619) (Union!9619 (regOne!19751 Regex!9619) (regTwo!19751 Regex!9619)) )
))
(declare-fun r!17423 () Regex!9619)

(declare-fun validRegex!4352 (Regex!9619) Bool)

(assert (=> start!295100 (= res!1276207 (validRegex!4352 r!17423))))

(assert (=> start!295100 e!1947346))

(declare-fun e!1947348 () Bool)

(assert (=> start!295100 e!1947348))

(declare-fun e!1947343 () Bool)

(assert (=> start!295100 e!1947343))

(declare-fun b!3118344 () Bool)

(declare-fun e!1947345 () Bool)

(assert (=> b!3118344 (= e!1947346 (not e!1947345))))

(declare-fun res!1276210 () Bool)

(assert (=> b!3118344 (=> res!1276210 e!1947345)))

(declare-fun lt!1058644 () Bool)

(get-info :version)

(assert (=> b!3118344 (= res!1276210 (or lt!1058644 ((_ is Concat!14940) r!17423) ((_ is Union!9619) r!17423) (not ((_ is Star!9619) r!17423))))))

(declare-datatypes ((List!35484 0))(
  ( (Nil!35360) (Cons!35360 (h!40780 C!19424) (t!234549 List!35484)) )
))
(declare-fun s!11993 () List!35484)

(declare-fun matchRSpec!1756 (Regex!9619 List!35484) Bool)

(assert (=> b!3118344 (= lt!1058644 (matchRSpec!1756 r!17423 s!11993))))

(declare-fun matchR!4501 (Regex!9619 List!35484) Bool)

(assert (=> b!3118344 (= lt!1058644 (matchR!4501 r!17423 s!11993))))

(declare-datatypes ((Unit!49677 0))(
  ( (Unit!49678) )
))
(declare-fun lt!1058646 () Unit!49677)

(declare-fun mainMatchTheorem!1756 (Regex!9619 List!35484) Unit!49677)

(assert (=> b!3118344 (= lt!1058646 (mainMatchTheorem!1756 r!17423 s!11993))))

(declare-fun b!3118345 () Bool)

(declare-fun tp_is_empty!16801 () Bool)

(assert (=> b!3118345 (= e!1947348 tp_is_empty!16801)))

(declare-fun b!3118346 () Bool)

(declare-fun tp!977675 () Bool)

(assert (=> b!3118346 (= e!1947348 tp!977675)))

(declare-fun b!3118347 () Bool)

(declare-fun e!1947344 () Bool)

(declare-fun e!1947349 () Bool)

(assert (=> b!3118347 (= e!1947344 e!1947349)))

(declare-fun res!1276208 () Bool)

(assert (=> b!3118347 (=> res!1276208 e!1947349)))

(declare-fun isEmpty!19703 (List!35484) Bool)

(assert (=> b!3118347 (= res!1276208 (not (isEmpty!19703 s!11993)))))

(declare-fun lt!1058645 () Regex!9619)

(assert (=> b!3118347 (matchRSpec!1756 lt!1058645 s!11993)))

(declare-fun lt!1058648 () Unit!49677)

(assert (=> b!3118347 (= lt!1058648 (mainMatchTheorem!1756 lt!1058645 s!11993))))

(declare-fun b!3118348 () Bool)

(declare-fun tp!977676 () Bool)

(assert (=> b!3118348 (= e!1947343 (and tp_is_empty!16801 tp!977676))))

(declare-fun b!3118349 () Bool)

(declare-fun simplify!574 (Regex!9619) Regex!9619)

(assert (=> b!3118349 (= e!1947349 (not (matchR!4501 (simplify!574 r!17423) s!11993)))))

(declare-fun b!3118350 () Bool)

(declare-fun tp!977673 () Bool)

(declare-fun tp!977672 () Bool)

(assert (=> b!3118350 (= e!1947348 (and tp!977673 tp!977672))))

(declare-fun b!3118351 () Bool)

(declare-fun e!1947347 () Bool)

(assert (=> b!3118351 (= e!1947345 e!1947347)))

(declare-fun res!1276209 () Bool)

(assert (=> b!3118351 (=> res!1276209 e!1947347)))

(declare-fun lt!1058647 () Regex!9619)

(declare-fun isEmptyLang!670 (Regex!9619) Bool)

(assert (=> b!3118351 (= res!1276209 (isEmptyLang!670 lt!1058647))))

(assert (=> b!3118351 (= lt!1058647 (simplify!574 (reg!9948 r!17423)))))

(declare-fun b!3118352 () Bool)

(declare-fun tp!977674 () Bool)

(declare-fun tp!977677 () Bool)

(assert (=> b!3118352 (= e!1947348 (and tp!977674 tp!977677))))

(declare-fun b!3118353 () Bool)

(assert (=> b!3118353 (= e!1947347 e!1947344)))

(declare-fun res!1276206 () Bool)

(assert (=> b!3118353 (=> res!1276206 e!1947344)))

(assert (=> b!3118353 (= res!1276206 (not (matchR!4501 lt!1058645 s!11993)))))

(assert (=> b!3118353 (= lt!1058645 (Star!9619 lt!1058647))))

(assert (= (and start!295100 res!1276207) b!3118344))

(assert (= (and b!3118344 (not res!1276210)) b!3118351))

(assert (= (and b!3118351 (not res!1276209)) b!3118353))

(assert (= (and b!3118353 (not res!1276206)) b!3118347))

(assert (= (and b!3118347 (not res!1276208)) b!3118349))

(assert (= (and start!295100 ((_ is ElementMatch!9619) r!17423)) b!3118345))

(assert (= (and start!295100 ((_ is Concat!14940) r!17423)) b!3118350))

(assert (= (and start!295100 ((_ is Star!9619) r!17423)) b!3118346))

(assert (= (and start!295100 ((_ is Union!9619) r!17423)) b!3118352))

(assert (= (and start!295100 ((_ is Cons!35360) s!11993)) b!3118348))

(declare-fun m!3407257 () Bool)

(assert (=> b!3118349 m!3407257))

(assert (=> b!3118349 m!3407257))

(declare-fun m!3407259 () Bool)

(assert (=> b!3118349 m!3407259))

(declare-fun m!3407261 () Bool)

(assert (=> b!3118353 m!3407261))

(declare-fun m!3407263 () Bool)

(assert (=> b!3118344 m!3407263))

(declare-fun m!3407265 () Bool)

(assert (=> b!3118344 m!3407265))

(declare-fun m!3407267 () Bool)

(assert (=> b!3118344 m!3407267))

(declare-fun m!3407269 () Bool)

(assert (=> b!3118347 m!3407269))

(declare-fun m!3407271 () Bool)

(assert (=> b!3118347 m!3407271))

(declare-fun m!3407273 () Bool)

(assert (=> b!3118347 m!3407273))

(declare-fun m!3407275 () Bool)

(assert (=> b!3118351 m!3407275))

(declare-fun m!3407277 () Bool)

(assert (=> b!3118351 m!3407277))

(declare-fun m!3407279 () Bool)

(assert (=> start!295100 m!3407279))

(check-sat (not b!3118349) (not b!3118348) (not start!295100) (not b!3118350) (not b!3118353) (not b!3118352) (not b!3118351) (not b!3118347) (not b!3118346) tp_is_empty!16801 (not b!3118344))
(check-sat)
(get-model)

(declare-fun d!862301 () Bool)

(assert (=> d!862301 (= (isEmpty!19703 s!11993) ((_ is Nil!35360) s!11993))))

(assert (=> b!3118347 d!862301))

(declare-fun b!3118531 () Bool)

(assert (=> b!3118531 true))

(assert (=> b!3118531 true))

(declare-fun bs!535874 () Bool)

(declare-fun b!3118536 () Bool)

(assert (= bs!535874 (and b!3118536 b!3118531)))

(declare-fun lambda!115188 () Int)

(declare-fun lambda!115187 () Int)

(assert (=> bs!535874 (not (= lambda!115188 lambda!115187))))

(assert (=> b!3118536 true))

(assert (=> b!3118536 true))

(declare-fun e!1947449 () Bool)

(declare-fun call!221461 () Bool)

(assert (=> b!3118531 (= e!1947449 call!221461)))

(declare-fun b!3118532 () Bool)

(declare-fun e!1947452 () Bool)

(declare-fun e!1947453 () Bool)

(assert (=> b!3118532 (= e!1947452 e!1947453)))

(declare-fun c!522547 () Bool)

(assert (=> b!3118532 (= c!522547 ((_ is Star!9619) lt!1058645))))

(declare-fun b!3118533 () Bool)

(declare-fun e!1947448 () Bool)

(assert (=> b!3118533 (= e!1947448 (= s!11993 (Cons!35360 (c!522487 lt!1058645) Nil!35360)))))

(declare-fun bm!221456 () Bool)

(declare-fun Exists!1872 (Int) Bool)

(assert (=> bm!221456 (= call!221461 (Exists!1872 (ite c!522547 lambda!115187 lambda!115188)))))

(declare-fun b!3118534 () Bool)

(declare-fun res!1276274 () Bool)

(assert (=> b!3118534 (=> res!1276274 e!1947449)))

(declare-fun call!221462 () Bool)

(assert (=> b!3118534 (= res!1276274 call!221462)))

(assert (=> b!3118534 (= e!1947453 e!1947449)))

(declare-fun b!3118535 () Bool)

(declare-fun c!522548 () Bool)

(assert (=> b!3118535 (= c!522548 ((_ is Union!9619) lt!1058645))))

(assert (=> b!3118535 (= e!1947448 e!1947452)))

(declare-fun bm!221457 () Bool)

(assert (=> bm!221457 (= call!221462 (isEmpty!19703 s!11993))))

(assert (=> b!3118536 (= e!1947453 call!221461)))

(declare-fun b!3118537 () Bool)

(declare-fun c!522546 () Bool)

(assert (=> b!3118537 (= c!522546 ((_ is ElementMatch!9619) lt!1058645))))

(declare-fun e!1947451 () Bool)

(assert (=> b!3118537 (= e!1947451 e!1947448)))

(declare-fun d!862303 () Bool)

(declare-fun c!522549 () Bool)

(assert (=> d!862303 (= c!522549 ((_ is EmptyExpr!9619) lt!1058645))))

(declare-fun e!1947447 () Bool)

(assert (=> d!862303 (= (matchRSpec!1756 lt!1058645 s!11993) e!1947447)))

(declare-fun b!3118538 () Bool)

(assert (=> b!3118538 (= e!1947447 call!221462)))

(declare-fun b!3118539 () Bool)

(declare-fun e!1947450 () Bool)

(assert (=> b!3118539 (= e!1947452 e!1947450)))

(declare-fun res!1276272 () Bool)

(assert (=> b!3118539 (= res!1276272 (matchRSpec!1756 (regOne!19751 lt!1058645) s!11993))))

(assert (=> b!3118539 (=> res!1276272 e!1947450)))

(declare-fun b!3118540 () Bool)

(assert (=> b!3118540 (= e!1947447 e!1947451)))

(declare-fun res!1276273 () Bool)

(assert (=> b!3118540 (= res!1276273 (not ((_ is EmptyLang!9619) lt!1058645)))))

(assert (=> b!3118540 (=> (not res!1276273) (not e!1947451))))

(declare-fun b!3118541 () Bool)

(assert (=> b!3118541 (= e!1947450 (matchRSpec!1756 (regTwo!19751 lt!1058645) s!11993))))

(assert (= (and d!862303 c!522549) b!3118538))

(assert (= (and d!862303 (not c!522549)) b!3118540))

(assert (= (and b!3118540 res!1276273) b!3118537))

(assert (= (and b!3118537 c!522546) b!3118533))

(assert (= (and b!3118537 (not c!522546)) b!3118535))

(assert (= (and b!3118535 c!522548) b!3118539))

(assert (= (and b!3118535 (not c!522548)) b!3118532))

(assert (= (and b!3118539 (not res!1276272)) b!3118541))

(assert (= (and b!3118532 c!522547) b!3118534))

(assert (= (and b!3118532 (not c!522547)) b!3118536))

(assert (= (and b!3118534 (not res!1276274)) b!3118531))

(assert (= (or b!3118531 b!3118536) bm!221456))

(assert (= (or b!3118538 b!3118534) bm!221457))

(declare-fun m!3407313 () Bool)

(assert (=> bm!221456 m!3407313))

(assert (=> bm!221457 m!3407269))

(declare-fun m!3407315 () Bool)

(assert (=> b!3118539 m!3407315))

(declare-fun m!3407317 () Bool)

(assert (=> b!3118541 m!3407317))

(assert (=> b!3118347 d!862303))

(declare-fun d!862311 () Bool)

(assert (=> d!862311 (= (matchR!4501 lt!1058645 s!11993) (matchRSpec!1756 lt!1058645 s!11993))))

(declare-fun lt!1058672 () Unit!49677)

(declare-fun choose!18443 (Regex!9619 List!35484) Unit!49677)

(assert (=> d!862311 (= lt!1058672 (choose!18443 lt!1058645 s!11993))))

(assert (=> d!862311 (validRegex!4352 lt!1058645)))

(assert (=> d!862311 (= (mainMatchTheorem!1756 lt!1058645 s!11993) lt!1058672)))

(declare-fun bs!535875 () Bool)

(assert (= bs!535875 d!862311))

(assert (=> bs!535875 m!3407261))

(assert (=> bs!535875 m!3407271))

(declare-fun m!3407319 () Bool)

(assert (=> bs!535875 m!3407319))

(declare-fun m!3407321 () Bool)

(assert (=> bs!535875 m!3407321))

(assert (=> b!3118347 d!862311))

(declare-fun b!3118618 () Bool)

(declare-fun res!1276313 () Bool)

(declare-fun e!1947495 () Bool)

(assert (=> b!3118618 (=> res!1276313 e!1947495)))

(assert (=> b!3118618 (= res!1276313 (not ((_ is ElementMatch!9619) lt!1058645)))))

(declare-fun e!1947496 () Bool)

(assert (=> b!3118618 (= e!1947496 e!1947495)))

(declare-fun b!3118619 () Bool)

(declare-fun e!1947493 () Bool)

(declare-fun e!1947494 () Bool)

(assert (=> b!3118619 (= e!1947493 e!1947494)))

(declare-fun res!1276311 () Bool)

(assert (=> b!3118619 (=> res!1276311 e!1947494)))

(declare-fun call!221474 () Bool)

(assert (=> b!3118619 (= res!1276311 call!221474)))

(declare-fun b!3118620 () Bool)

(declare-fun head!6911 (List!35484) C!19424)

(assert (=> b!3118620 (= e!1947494 (not (= (head!6911 s!11993) (c!522487 lt!1058645))))))

(declare-fun b!3118621 () Bool)

(assert (=> b!3118621 (= e!1947495 e!1947493)))

(declare-fun res!1276316 () Bool)

(assert (=> b!3118621 (=> (not res!1276316) (not e!1947493))))

(declare-fun lt!1058679 () Bool)

(assert (=> b!3118621 (= res!1276316 (not lt!1058679))))

(declare-fun d!862313 () Bool)

(declare-fun e!1947497 () Bool)

(assert (=> d!862313 e!1947497))

(declare-fun c!522568 () Bool)

(assert (=> d!862313 (= c!522568 ((_ is EmptyExpr!9619) lt!1058645))))

(declare-fun e!1947491 () Bool)

(assert (=> d!862313 (= lt!1058679 e!1947491)))

(declare-fun c!522567 () Bool)

(assert (=> d!862313 (= c!522567 (isEmpty!19703 s!11993))))

(assert (=> d!862313 (validRegex!4352 lt!1058645)))

(assert (=> d!862313 (= (matchR!4501 lt!1058645 s!11993) lt!1058679)))

(declare-fun b!3118622 () Bool)

(declare-fun res!1276309 () Bool)

(declare-fun e!1947492 () Bool)

(assert (=> b!3118622 (=> (not res!1276309) (not e!1947492))))

(assert (=> b!3118622 (= res!1276309 (not call!221474))))

(declare-fun b!3118623 () Bool)

(declare-fun res!1276314 () Bool)

(assert (=> b!3118623 (=> (not res!1276314) (not e!1947492))))

(declare-fun tail!5137 (List!35484) List!35484)

(assert (=> b!3118623 (= res!1276314 (isEmpty!19703 (tail!5137 s!11993)))))

(declare-fun b!3118624 () Bool)

(declare-fun nullable!3257 (Regex!9619) Bool)

(assert (=> b!3118624 (= e!1947491 (nullable!3257 lt!1058645))))

(declare-fun b!3118625 () Bool)

(assert (=> b!3118625 (= e!1947497 (= lt!1058679 call!221474))))

(declare-fun b!3118626 () Bool)

(declare-fun res!1276312 () Bool)

(assert (=> b!3118626 (=> res!1276312 e!1947495)))

(assert (=> b!3118626 (= res!1276312 e!1947492)))

(declare-fun res!1276315 () Bool)

(assert (=> b!3118626 (=> (not res!1276315) (not e!1947492))))

(assert (=> b!3118626 (= res!1276315 lt!1058679)))

(declare-fun b!3118627 () Bool)

(declare-fun res!1276310 () Bool)

(assert (=> b!3118627 (=> res!1276310 e!1947494)))

(assert (=> b!3118627 (= res!1276310 (not (isEmpty!19703 (tail!5137 s!11993))))))

(declare-fun b!3118628 () Bool)

(assert (=> b!3118628 (= e!1947492 (= (head!6911 s!11993) (c!522487 lt!1058645)))))

(declare-fun b!3118629 () Bool)

(assert (=> b!3118629 (= e!1947496 (not lt!1058679))))

(declare-fun b!3118630 () Bool)

(assert (=> b!3118630 (= e!1947497 e!1947496)))

(declare-fun c!522569 () Bool)

(assert (=> b!3118630 (= c!522569 ((_ is EmptyLang!9619) lt!1058645))))

(declare-fun bm!221469 () Bool)

(assert (=> bm!221469 (= call!221474 (isEmpty!19703 s!11993))))

(declare-fun b!3118631 () Bool)

(declare-fun derivativeStep!2852 (Regex!9619 C!19424) Regex!9619)

(assert (=> b!3118631 (= e!1947491 (matchR!4501 (derivativeStep!2852 lt!1058645 (head!6911 s!11993)) (tail!5137 s!11993)))))

(assert (= (and d!862313 c!522567) b!3118624))

(assert (= (and d!862313 (not c!522567)) b!3118631))

(assert (= (and d!862313 c!522568) b!3118625))

(assert (= (and d!862313 (not c!522568)) b!3118630))

(assert (= (and b!3118630 c!522569) b!3118629))

(assert (= (and b!3118630 (not c!522569)) b!3118618))

(assert (= (and b!3118618 (not res!1276313)) b!3118626))

(assert (= (and b!3118626 res!1276315) b!3118622))

(assert (= (and b!3118622 res!1276309) b!3118623))

(assert (= (and b!3118623 res!1276314) b!3118628))

(assert (= (and b!3118626 (not res!1276312)) b!3118621))

(assert (= (and b!3118621 res!1276316) b!3118619))

(assert (= (and b!3118619 (not res!1276311)) b!3118627))

(assert (= (and b!3118627 (not res!1276310)) b!3118620))

(assert (= (or b!3118625 b!3118619 b!3118622) bm!221469))

(assert (=> d!862313 m!3407269))

(assert (=> d!862313 m!3407321))

(declare-fun m!3407341 () Bool)

(assert (=> b!3118623 m!3407341))

(assert (=> b!3118623 m!3407341))

(declare-fun m!3407347 () Bool)

(assert (=> b!3118623 m!3407347))

(declare-fun m!3407349 () Bool)

(assert (=> b!3118624 m!3407349))

(assert (=> bm!221469 m!3407269))

(declare-fun m!3407351 () Bool)

(assert (=> b!3118628 m!3407351))

(assert (=> b!3118620 m!3407351))

(assert (=> b!3118627 m!3407341))

(assert (=> b!3118627 m!3407341))

(assert (=> b!3118627 m!3407347))

(assert (=> b!3118631 m!3407351))

(assert (=> b!3118631 m!3407351))

(declare-fun m!3407353 () Bool)

(assert (=> b!3118631 m!3407353))

(assert (=> b!3118631 m!3407341))

(assert (=> b!3118631 m!3407353))

(assert (=> b!3118631 m!3407341))

(declare-fun m!3407355 () Bool)

(assert (=> b!3118631 m!3407355))

(assert (=> b!3118353 d!862313))

(declare-fun b!3118693 () Bool)

(declare-fun e!1947540 () Bool)

(declare-fun e!1947543 () Bool)

(assert (=> b!3118693 (= e!1947540 e!1947543)))

(declare-fun c!522589 () Bool)

(assert (=> b!3118693 (= c!522589 ((_ is Star!9619) r!17423))))

(declare-fun b!3118694 () Bool)

(declare-fun res!1276342 () Bool)

(declare-fun e!1947541 () Bool)

(assert (=> b!3118694 (=> (not res!1276342) (not e!1947541))))

(declare-fun call!221496 () Bool)

(assert (=> b!3118694 (= res!1276342 call!221496)))

(declare-fun e!1947545 () Bool)

(assert (=> b!3118694 (= e!1947545 e!1947541)))

(declare-fun bm!221489 () Bool)

(declare-fun call!221494 () Bool)

(declare-fun call!221495 () Bool)

(assert (=> bm!221489 (= call!221494 call!221495)))

(declare-fun b!3118695 () Bool)

(declare-fun e!1947542 () Bool)

(assert (=> b!3118695 (= e!1947543 e!1947542)))

(declare-fun res!1276340 () Bool)

(assert (=> b!3118695 (= res!1276340 (not (nullable!3257 (reg!9948 r!17423))))))

(assert (=> b!3118695 (=> (not res!1276340) (not e!1947542))))

(declare-fun d!862327 () Bool)

(declare-fun res!1276343 () Bool)

(assert (=> d!862327 (=> res!1276343 e!1947540)))

(assert (=> d!862327 (= res!1276343 ((_ is ElementMatch!9619) r!17423))))

(assert (=> d!862327 (= (validRegex!4352 r!17423) e!1947540)))

(declare-fun b!3118696 () Bool)

(declare-fun e!1947546 () Bool)

(declare-fun e!1947544 () Bool)

(assert (=> b!3118696 (= e!1947546 e!1947544)))

(declare-fun res!1276341 () Bool)

(assert (=> b!3118696 (=> (not res!1276341) (not e!1947544))))

(assert (=> b!3118696 (= res!1276341 call!221494)))

(declare-fun b!3118697 () Bool)

(assert (=> b!3118697 (= e!1947541 call!221494)))

(declare-fun bm!221490 () Bool)

(declare-fun c!522590 () Bool)

(assert (=> bm!221490 (= call!221496 (validRegex!4352 (ite c!522590 (regOne!19751 r!17423) (regTwo!19750 r!17423))))))

(declare-fun b!3118698 () Bool)

(declare-fun res!1276344 () Bool)

(assert (=> b!3118698 (=> res!1276344 e!1947546)))

(assert (=> b!3118698 (= res!1276344 (not ((_ is Concat!14940) r!17423)))))

(assert (=> b!3118698 (= e!1947545 e!1947546)))

(declare-fun b!3118699 () Bool)

(assert (=> b!3118699 (= e!1947544 call!221496)))

(declare-fun b!3118700 () Bool)

(assert (=> b!3118700 (= e!1947543 e!1947545)))

(assert (=> b!3118700 (= c!522590 ((_ is Union!9619) r!17423))))

(declare-fun b!3118701 () Bool)

(assert (=> b!3118701 (= e!1947542 call!221495)))

(declare-fun bm!221491 () Bool)

(assert (=> bm!221491 (= call!221495 (validRegex!4352 (ite c!522589 (reg!9948 r!17423) (ite c!522590 (regTwo!19751 r!17423) (regOne!19750 r!17423)))))))

(assert (= (and d!862327 (not res!1276343)) b!3118693))

(assert (= (and b!3118693 c!522589) b!3118695))

(assert (= (and b!3118693 (not c!522589)) b!3118700))

(assert (= (and b!3118695 res!1276340) b!3118701))

(assert (= (and b!3118700 c!522590) b!3118694))

(assert (= (and b!3118700 (not c!522590)) b!3118698))

(assert (= (and b!3118694 res!1276342) b!3118697))

(assert (= (and b!3118698 (not res!1276344)) b!3118696))

(assert (= (and b!3118696 res!1276341) b!3118699))

(assert (= (or b!3118694 b!3118699) bm!221490))

(assert (= (or b!3118697 b!3118696) bm!221489))

(assert (= (or b!3118701 bm!221489) bm!221491))

(declare-fun m!3407377 () Bool)

(assert (=> b!3118695 m!3407377))

(declare-fun m!3407379 () Bool)

(assert (=> bm!221490 m!3407379))

(declare-fun m!3407381 () Bool)

(assert (=> bm!221491 m!3407381))

(assert (=> start!295100 d!862327))

(declare-fun b!3118702 () Bool)

(declare-fun res!1276349 () Bool)

(declare-fun e!1947551 () Bool)

(assert (=> b!3118702 (=> res!1276349 e!1947551)))

(assert (=> b!3118702 (= res!1276349 (not ((_ is ElementMatch!9619) (simplify!574 r!17423))))))

(declare-fun e!1947552 () Bool)

(assert (=> b!3118702 (= e!1947552 e!1947551)))

(declare-fun b!3118703 () Bool)

(declare-fun e!1947549 () Bool)

(declare-fun e!1947550 () Bool)

(assert (=> b!3118703 (= e!1947549 e!1947550)))

(declare-fun res!1276347 () Bool)

(assert (=> b!3118703 (=> res!1276347 e!1947550)))

(declare-fun call!221497 () Bool)

(assert (=> b!3118703 (= res!1276347 call!221497)))

(declare-fun b!3118704 () Bool)

(assert (=> b!3118704 (= e!1947550 (not (= (head!6911 s!11993) (c!522487 (simplify!574 r!17423)))))))

(declare-fun b!3118705 () Bool)

(assert (=> b!3118705 (= e!1947551 e!1947549)))

(declare-fun res!1276352 () Bool)

(assert (=> b!3118705 (=> (not res!1276352) (not e!1947549))))

(declare-fun lt!1058687 () Bool)

(assert (=> b!3118705 (= res!1276352 (not lt!1058687))))

(declare-fun d!862333 () Bool)

(declare-fun e!1947553 () Bool)

(assert (=> d!862333 e!1947553))

(declare-fun c!522592 () Bool)

(assert (=> d!862333 (= c!522592 ((_ is EmptyExpr!9619) (simplify!574 r!17423)))))

(declare-fun e!1947547 () Bool)

(assert (=> d!862333 (= lt!1058687 e!1947547)))

(declare-fun c!522591 () Bool)

(assert (=> d!862333 (= c!522591 (isEmpty!19703 s!11993))))

(assert (=> d!862333 (validRegex!4352 (simplify!574 r!17423))))

(assert (=> d!862333 (= (matchR!4501 (simplify!574 r!17423) s!11993) lt!1058687)))

(declare-fun b!3118706 () Bool)

(declare-fun res!1276345 () Bool)

(declare-fun e!1947548 () Bool)

(assert (=> b!3118706 (=> (not res!1276345) (not e!1947548))))

(assert (=> b!3118706 (= res!1276345 (not call!221497))))

(declare-fun b!3118707 () Bool)

(declare-fun res!1276350 () Bool)

(assert (=> b!3118707 (=> (not res!1276350) (not e!1947548))))

(assert (=> b!3118707 (= res!1276350 (isEmpty!19703 (tail!5137 s!11993)))))

(declare-fun b!3118708 () Bool)

(assert (=> b!3118708 (= e!1947547 (nullable!3257 (simplify!574 r!17423)))))

(declare-fun b!3118709 () Bool)

(assert (=> b!3118709 (= e!1947553 (= lt!1058687 call!221497))))

(declare-fun b!3118710 () Bool)

(declare-fun res!1276348 () Bool)

(assert (=> b!3118710 (=> res!1276348 e!1947551)))

(assert (=> b!3118710 (= res!1276348 e!1947548)))

(declare-fun res!1276351 () Bool)

(assert (=> b!3118710 (=> (not res!1276351) (not e!1947548))))

(assert (=> b!3118710 (= res!1276351 lt!1058687)))

(declare-fun b!3118711 () Bool)

(declare-fun res!1276346 () Bool)

(assert (=> b!3118711 (=> res!1276346 e!1947550)))

(assert (=> b!3118711 (= res!1276346 (not (isEmpty!19703 (tail!5137 s!11993))))))

(declare-fun b!3118712 () Bool)

(assert (=> b!3118712 (= e!1947548 (= (head!6911 s!11993) (c!522487 (simplify!574 r!17423))))))

(declare-fun b!3118713 () Bool)

(assert (=> b!3118713 (= e!1947552 (not lt!1058687))))

(declare-fun b!3118714 () Bool)

(assert (=> b!3118714 (= e!1947553 e!1947552)))

(declare-fun c!522593 () Bool)

(assert (=> b!3118714 (= c!522593 ((_ is EmptyLang!9619) (simplify!574 r!17423)))))

(declare-fun bm!221492 () Bool)

(assert (=> bm!221492 (= call!221497 (isEmpty!19703 s!11993))))

(declare-fun b!3118715 () Bool)

(assert (=> b!3118715 (= e!1947547 (matchR!4501 (derivativeStep!2852 (simplify!574 r!17423) (head!6911 s!11993)) (tail!5137 s!11993)))))

(assert (= (and d!862333 c!522591) b!3118708))

(assert (= (and d!862333 (not c!522591)) b!3118715))

(assert (= (and d!862333 c!522592) b!3118709))

(assert (= (and d!862333 (not c!522592)) b!3118714))

(assert (= (and b!3118714 c!522593) b!3118713))

(assert (= (and b!3118714 (not c!522593)) b!3118702))

(assert (= (and b!3118702 (not res!1276349)) b!3118710))

(assert (= (and b!3118710 res!1276351) b!3118706))

(assert (= (and b!3118706 res!1276345) b!3118707))

(assert (= (and b!3118707 res!1276350) b!3118712))

(assert (= (and b!3118710 (not res!1276348)) b!3118705))

(assert (= (and b!3118705 res!1276352) b!3118703))

(assert (= (and b!3118703 (not res!1276347)) b!3118711))

(assert (= (and b!3118711 (not res!1276346)) b!3118704))

(assert (= (or b!3118709 b!3118703 b!3118706) bm!221492))

(assert (=> d!862333 m!3407269))

(assert (=> d!862333 m!3407257))

(declare-fun m!3407383 () Bool)

(assert (=> d!862333 m!3407383))

(assert (=> b!3118707 m!3407341))

(assert (=> b!3118707 m!3407341))

(assert (=> b!3118707 m!3407347))

(assert (=> b!3118708 m!3407257))

(declare-fun m!3407385 () Bool)

(assert (=> b!3118708 m!3407385))

(assert (=> bm!221492 m!3407269))

(assert (=> b!3118712 m!3407351))

(assert (=> b!3118704 m!3407351))

(assert (=> b!3118711 m!3407341))

(assert (=> b!3118711 m!3407341))

(assert (=> b!3118711 m!3407347))

(assert (=> b!3118715 m!3407351))

(assert (=> b!3118715 m!3407257))

(assert (=> b!3118715 m!3407351))

(declare-fun m!3407387 () Bool)

(assert (=> b!3118715 m!3407387))

(assert (=> b!3118715 m!3407341))

(assert (=> b!3118715 m!3407387))

(assert (=> b!3118715 m!3407341))

(declare-fun m!3407389 () Bool)

(assert (=> b!3118715 m!3407389))

(assert (=> b!3118349 d!862333))

(declare-fun b!3118824 () Bool)

(declare-fun e!1947616 () Regex!9619)

(assert (=> b!3118824 (= e!1947616 EmptyLang!9619)))

(declare-fun bm!221511 () Bool)

(declare-fun call!221520 () Regex!9619)

(declare-fun c!522624 () Bool)

(assert (=> bm!221511 (= call!221520 (simplify!574 (ite c!522624 (regTwo!19751 r!17423) (regTwo!19750 r!17423))))))

(declare-fun b!3118825 () Bool)

(declare-fun e!1947609 () Regex!9619)

(assert (=> b!3118825 (= e!1947609 e!1947616)))

(declare-fun lt!1058702 () Regex!9619)

(declare-fun call!221516 () Regex!9619)

(assert (=> b!3118825 (= lt!1058702 call!221516)))

(declare-fun lt!1058705 () Regex!9619)

(assert (=> b!3118825 (= lt!1058705 call!221520)))

(declare-fun res!1276373 () Bool)

(declare-fun call!221518 () Bool)

(assert (=> b!3118825 (= res!1276373 call!221518)))

(declare-fun e!1947611 () Bool)

(assert (=> b!3118825 (=> res!1276373 e!1947611)))

(declare-fun c!522622 () Bool)

(assert (=> b!3118825 (= c!522622 e!1947611)))

(declare-fun b!3118826 () Bool)

(declare-fun c!522627 () Bool)

(declare-fun call!221521 () Bool)

(assert (=> b!3118826 (= c!522627 call!221521)))

(declare-fun e!1947606 () Regex!9619)

(assert (=> b!3118826 (= e!1947616 e!1947606)))

(declare-fun b!3118828 () Bool)

(declare-fun e!1947619 () Regex!9619)

(declare-fun e!1947607 () Regex!9619)

(assert (=> b!3118828 (= e!1947619 e!1947607)))

(declare-fun c!522626 () Bool)

(assert (=> b!3118828 (= c!522626 ((_ is Star!9619) r!17423))))

(declare-fun bm!221512 () Bool)

(declare-fun lt!1058706 () Regex!9619)

(declare-fun call!221522 () Bool)

(assert (=> bm!221512 (= call!221522 (isEmptyLang!670 (ite c!522624 lt!1058706 lt!1058705)))))

(declare-fun b!3118829 () Bool)

(declare-fun e!1947615 () Bool)

(declare-fun lt!1058703 () Regex!9619)

(assert (=> b!3118829 (= e!1947615 (= (nullable!3257 lt!1058703) (nullable!3257 r!17423)))))

(declare-fun b!3118830 () Bool)

(declare-fun c!522621 () Bool)

(declare-fun e!1947612 () Bool)

(assert (=> b!3118830 (= c!522621 e!1947612)))

(declare-fun res!1276372 () Bool)

(assert (=> b!3118830 (=> res!1276372 e!1947612)))

(declare-fun call!221519 () Bool)

(assert (=> b!3118830 (= res!1276372 call!221519)))

(declare-fun lt!1058701 () Regex!9619)

(declare-fun call!221517 () Regex!9619)

(assert (=> b!3118830 (= lt!1058701 call!221517)))

(declare-fun e!1947617 () Regex!9619)

(assert (=> b!3118830 (= e!1947607 e!1947617)))

(declare-fun b!3118831 () Bool)

(declare-fun e!1947610 () Regex!9619)

(assert (=> b!3118831 (= e!1947610 (Concat!14940 lt!1058702 lt!1058705))))

(declare-fun b!3118832 () Bool)

(declare-fun c!522630 () Bool)

(assert (=> b!3118832 (= c!522630 ((_ is EmptyExpr!9619) r!17423))))

(declare-fun e!1947618 () Regex!9619)

(assert (=> b!3118832 (= e!1947618 e!1947619)))

(declare-fun b!3118833 () Bool)

(declare-fun e!1947613 () Regex!9619)

(declare-fun lt!1058704 () Regex!9619)

(assert (=> b!3118833 (= e!1947613 lt!1058704)))

(declare-fun b!3118834 () Bool)

(declare-fun e!1947608 () Regex!9619)

(assert (=> b!3118834 (= e!1947608 lt!1058706)))

(declare-fun b!3118835 () Bool)

(assert (=> b!3118835 (= e!1947606 lt!1058705)))

(declare-fun b!3118836 () Bool)

(assert (=> b!3118836 (= e!1947619 EmptyExpr!9619)))

(declare-fun b!3118837 () Bool)

(assert (=> b!3118837 (= e!1947608 (Union!9619 lt!1058706 lt!1058704))))

(declare-fun bm!221513 () Bool)

(assert (=> bm!221513 (= call!221519 (isEmptyLang!670 (ite c!522626 lt!1058701 (ite c!522624 lt!1058704 lt!1058702))))))

(declare-fun b!3118838 () Bool)

(assert (=> b!3118838 (= e!1947609 e!1947613)))

(assert (=> b!3118838 (= lt!1058706 call!221516)))

(assert (=> b!3118838 (= lt!1058704 call!221520)))

(declare-fun c!522623 () Bool)

(assert (=> b!3118838 (= c!522623 call!221522)))

(declare-fun d!862335 () Bool)

(assert (=> d!862335 e!1947615))

(declare-fun res!1276374 () Bool)

(assert (=> d!862335 (=> (not res!1276374) (not e!1947615))))

(assert (=> d!862335 (= res!1276374 (validRegex!4352 lt!1058703))))

(declare-fun e!1947614 () Regex!9619)

(assert (=> d!862335 (= lt!1058703 e!1947614)))

(declare-fun c!522631 () Bool)

(assert (=> d!862335 (= c!522631 ((_ is EmptyLang!9619) r!17423))))

(assert (=> d!862335 (validRegex!4352 r!17423)))

(assert (=> d!862335 (= (simplify!574 r!17423) lt!1058703)))

(declare-fun b!3118827 () Bool)

(assert (=> b!3118827 (= e!1947618 r!17423)))

(declare-fun b!3118839 () Bool)

(assert (=> b!3118839 (= c!522624 ((_ is Union!9619) r!17423))))

(assert (=> b!3118839 (= e!1947607 e!1947609)))

(declare-fun b!3118840 () Bool)

(assert (=> b!3118840 (= e!1947612 call!221521)))

(declare-fun b!3118841 () Bool)

(assert (=> b!3118841 (= e!1947611 call!221522)))

(declare-fun bm!221514 () Bool)

(declare-fun isEmptyExpr!668 (Regex!9619) Bool)

(assert (=> bm!221514 (= call!221521 (isEmptyExpr!668 (ite c!522626 lt!1058701 lt!1058702)))))

(declare-fun b!3118842 () Bool)

(assert (=> b!3118842 (= e!1947617 EmptyExpr!9619)))

(declare-fun bm!221515 () Bool)

(assert (=> bm!221515 (= call!221518 call!221519)))

(declare-fun b!3118843 () Bool)

(assert (=> b!3118843 (= e!1947617 (Star!9619 lt!1058701))))

(declare-fun b!3118844 () Bool)

(assert (=> b!3118844 (= e!1947614 e!1947618)))

(declare-fun c!522629 () Bool)

(assert (=> b!3118844 (= c!522629 ((_ is ElementMatch!9619) r!17423))))

(declare-fun b!3118845 () Bool)

(assert (=> b!3118845 (= e!1947606 e!1947610)))

(declare-fun c!522628 () Bool)

(assert (=> b!3118845 (= c!522628 (isEmptyExpr!668 lt!1058705))))

(declare-fun b!3118846 () Bool)

(declare-fun c!522625 () Bool)

(assert (=> b!3118846 (= c!522625 call!221518)))

(assert (=> b!3118846 (= e!1947613 e!1947608)))

(declare-fun b!3118847 () Bool)

(assert (=> b!3118847 (= e!1947610 lt!1058702)))

(declare-fun bm!221516 () Bool)

(assert (=> bm!221516 (= call!221517 (simplify!574 (ite c!522626 (reg!9948 r!17423) (ite c!522624 (regOne!19751 r!17423) (regOne!19750 r!17423)))))))

(declare-fun bm!221517 () Bool)

(assert (=> bm!221517 (= call!221516 call!221517)))

(declare-fun b!3118848 () Bool)

(assert (=> b!3118848 (= e!1947614 EmptyLang!9619)))

(assert (= (and d!862335 c!522631) b!3118848))

(assert (= (and d!862335 (not c!522631)) b!3118844))

(assert (= (and b!3118844 c!522629) b!3118827))

(assert (= (and b!3118844 (not c!522629)) b!3118832))

(assert (= (and b!3118832 c!522630) b!3118836))

(assert (= (and b!3118832 (not c!522630)) b!3118828))

(assert (= (and b!3118828 c!522626) b!3118830))

(assert (= (and b!3118828 (not c!522626)) b!3118839))

(assert (= (and b!3118830 (not res!1276372)) b!3118840))

(assert (= (and b!3118830 c!522621) b!3118842))

(assert (= (and b!3118830 (not c!522621)) b!3118843))

(assert (= (and b!3118839 c!522624) b!3118838))

(assert (= (and b!3118839 (not c!522624)) b!3118825))

(assert (= (and b!3118838 c!522623) b!3118833))

(assert (= (and b!3118838 (not c!522623)) b!3118846))

(assert (= (and b!3118846 c!522625) b!3118834))

(assert (= (and b!3118846 (not c!522625)) b!3118837))

(assert (= (and b!3118825 (not res!1276373)) b!3118841))

(assert (= (and b!3118825 c!522622) b!3118824))

(assert (= (and b!3118825 (not c!522622)) b!3118826))

(assert (= (and b!3118826 c!522627) b!3118835))

(assert (= (and b!3118826 (not c!522627)) b!3118845))

(assert (= (and b!3118845 c!522628) b!3118847))

(assert (= (and b!3118845 (not c!522628)) b!3118831))

(assert (= (or b!3118838 b!3118825) bm!221511))

(assert (= (or b!3118838 b!3118825) bm!221517))

(assert (= (or b!3118846 b!3118825) bm!221515))

(assert (= (or b!3118838 b!3118841) bm!221512))

(assert (= (or b!3118840 b!3118826) bm!221514))

(assert (= (or b!3118830 bm!221517) bm!221516))

(assert (= (or b!3118830 bm!221515) bm!221513))

(assert (= (and d!862335 res!1276374) b!3118829))

(declare-fun m!3407401 () Bool)

(assert (=> b!3118845 m!3407401))

(declare-fun m!3407403 () Bool)

(assert (=> bm!221511 m!3407403))

(declare-fun m!3407405 () Bool)

(assert (=> bm!221514 m!3407405))

(declare-fun m!3407407 () Bool)

(assert (=> bm!221516 m!3407407))

(declare-fun m!3407409 () Bool)

(assert (=> b!3118829 m!3407409))

(declare-fun m!3407411 () Bool)

(assert (=> b!3118829 m!3407411))

(declare-fun m!3407413 () Bool)

(assert (=> bm!221512 m!3407413))

(declare-fun m!3407415 () Bool)

(assert (=> d!862335 m!3407415))

(assert (=> d!862335 m!3407279))

(declare-fun m!3407417 () Bool)

(assert (=> bm!221513 m!3407417))

(assert (=> b!3118349 d!862335))

(declare-fun bs!535884 () Bool)

(declare-fun b!3118849 () Bool)

(assert (= bs!535884 (and b!3118849 b!3118531)))

(declare-fun lambda!115195 () Int)

(assert (=> bs!535884 (= (and (= (reg!9948 r!17423) (reg!9948 lt!1058645)) (= r!17423 lt!1058645)) (= lambda!115195 lambda!115187))))

(declare-fun bs!535885 () Bool)

(assert (= bs!535885 (and b!3118849 b!3118536)))

(assert (=> bs!535885 (not (= lambda!115195 lambda!115188))))

(assert (=> b!3118849 true))

(assert (=> b!3118849 true))

(declare-fun bs!535886 () Bool)

(declare-fun b!3118854 () Bool)

(assert (= bs!535886 (and b!3118854 b!3118531)))

(declare-fun lambda!115196 () Int)

(assert (=> bs!535886 (not (= lambda!115196 lambda!115187))))

(declare-fun bs!535887 () Bool)

(assert (= bs!535887 (and b!3118854 b!3118536)))

(assert (=> bs!535887 (= (and (= (regOne!19750 r!17423) (regOne!19750 lt!1058645)) (= (regTwo!19750 r!17423) (regTwo!19750 lt!1058645))) (= lambda!115196 lambda!115188))))

(declare-fun bs!535888 () Bool)

(assert (= bs!535888 (and b!3118854 b!3118849)))

(assert (=> bs!535888 (not (= lambda!115196 lambda!115195))))

(assert (=> b!3118854 true))

(assert (=> b!3118854 true))

(declare-fun e!1947622 () Bool)

(declare-fun call!221523 () Bool)

(assert (=> b!3118849 (= e!1947622 call!221523)))

(declare-fun b!3118850 () Bool)

(declare-fun e!1947625 () Bool)

(declare-fun e!1947626 () Bool)

(assert (=> b!3118850 (= e!1947625 e!1947626)))

(declare-fun c!522633 () Bool)

(assert (=> b!3118850 (= c!522633 ((_ is Star!9619) r!17423))))

(declare-fun b!3118851 () Bool)

(declare-fun e!1947621 () Bool)

(assert (=> b!3118851 (= e!1947621 (= s!11993 (Cons!35360 (c!522487 r!17423) Nil!35360)))))

(declare-fun bm!221518 () Bool)

(assert (=> bm!221518 (= call!221523 (Exists!1872 (ite c!522633 lambda!115195 lambda!115196)))))

(declare-fun b!3118852 () Bool)

(declare-fun res!1276377 () Bool)

(assert (=> b!3118852 (=> res!1276377 e!1947622)))

(declare-fun call!221524 () Bool)

(assert (=> b!3118852 (= res!1276377 call!221524)))

(assert (=> b!3118852 (= e!1947626 e!1947622)))

(declare-fun b!3118853 () Bool)

(declare-fun c!522634 () Bool)

(assert (=> b!3118853 (= c!522634 ((_ is Union!9619) r!17423))))

(assert (=> b!3118853 (= e!1947621 e!1947625)))

(declare-fun bm!221519 () Bool)

(assert (=> bm!221519 (= call!221524 (isEmpty!19703 s!11993))))

(assert (=> b!3118854 (= e!1947626 call!221523)))

(declare-fun b!3118855 () Bool)

(declare-fun c!522632 () Bool)

(assert (=> b!3118855 (= c!522632 ((_ is ElementMatch!9619) r!17423))))

(declare-fun e!1947624 () Bool)

(assert (=> b!3118855 (= e!1947624 e!1947621)))

(declare-fun d!862339 () Bool)

(declare-fun c!522635 () Bool)

(assert (=> d!862339 (= c!522635 ((_ is EmptyExpr!9619) r!17423))))

(declare-fun e!1947620 () Bool)

(assert (=> d!862339 (= (matchRSpec!1756 r!17423 s!11993) e!1947620)))

(declare-fun b!3118856 () Bool)

(assert (=> b!3118856 (= e!1947620 call!221524)))

(declare-fun b!3118857 () Bool)

(declare-fun e!1947623 () Bool)

(assert (=> b!3118857 (= e!1947625 e!1947623)))

(declare-fun res!1276375 () Bool)

(assert (=> b!3118857 (= res!1276375 (matchRSpec!1756 (regOne!19751 r!17423) s!11993))))

(assert (=> b!3118857 (=> res!1276375 e!1947623)))

(declare-fun b!3118858 () Bool)

(assert (=> b!3118858 (= e!1947620 e!1947624)))

(declare-fun res!1276376 () Bool)

(assert (=> b!3118858 (= res!1276376 (not ((_ is EmptyLang!9619) r!17423)))))

(assert (=> b!3118858 (=> (not res!1276376) (not e!1947624))))

(declare-fun b!3118859 () Bool)

(assert (=> b!3118859 (= e!1947623 (matchRSpec!1756 (regTwo!19751 r!17423) s!11993))))

(assert (= (and d!862339 c!522635) b!3118856))

(assert (= (and d!862339 (not c!522635)) b!3118858))

(assert (= (and b!3118858 res!1276376) b!3118855))

(assert (= (and b!3118855 c!522632) b!3118851))

(assert (= (and b!3118855 (not c!522632)) b!3118853))

(assert (= (and b!3118853 c!522634) b!3118857))

(assert (= (and b!3118853 (not c!522634)) b!3118850))

(assert (= (and b!3118857 (not res!1276375)) b!3118859))

(assert (= (and b!3118850 c!522633) b!3118852))

(assert (= (and b!3118850 (not c!522633)) b!3118854))

(assert (= (and b!3118852 (not res!1276377)) b!3118849))

(assert (= (or b!3118849 b!3118854) bm!221518))

(assert (= (or b!3118856 b!3118852) bm!221519))

(declare-fun m!3407419 () Bool)

(assert (=> bm!221518 m!3407419))

(assert (=> bm!221519 m!3407269))

(declare-fun m!3407421 () Bool)

(assert (=> b!3118857 m!3407421))

(declare-fun m!3407423 () Bool)

(assert (=> b!3118859 m!3407423))

(assert (=> b!3118344 d!862339))

(declare-fun b!3118860 () Bool)

(declare-fun res!1276382 () Bool)

(declare-fun e!1947631 () Bool)

(assert (=> b!3118860 (=> res!1276382 e!1947631)))

(assert (=> b!3118860 (= res!1276382 (not ((_ is ElementMatch!9619) r!17423)))))

(declare-fun e!1947632 () Bool)

(assert (=> b!3118860 (= e!1947632 e!1947631)))

(declare-fun b!3118861 () Bool)

(declare-fun e!1947629 () Bool)

(declare-fun e!1947630 () Bool)

(assert (=> b!3118861 (= e!1947629 e!1947630)))

(declare-fun res!1276380 () Bool)

(assert (=> b!3118861 (=> res!1276380 e!1947630)))

(declare-fun call!221525 () Bool)

(assert (=> b!3118861 (= res!1276380 call!221525)))

(declare-fun b!3118862 () Bool)

(assert (=> b!3118862 (= e!1947630 (not (= (head!6911 s!11993) (c!522487 r!17423))))))

(declare-fun b!3118863 () Bool)

(assert (=> b!3118863 (= e!1947631 e!1947629)))

(declare-fun res!1276385 () Bool)

(assert (=> b!3118863 (=> (not res!1276385) (not e!1947629))))

(declare-fun lt!1058707 () Bool)

(assert (=> b!3118863 (= res!1276385 (not lt!1058707))))

(declare-fun d!862341 () Bool)

(declare-fun e!1947633 () Bool)

(assert (=> d!862341 e!1947633))

(declare-fun c!522637 () Bool)

(assert (=> d!862341 (= c!522637 ((_ is EmptyExpr!9619) r!17423))))

(declare-fun e!1947627 () Bool)

(assert (=> d!862341 (= lt!1058707 e!1947627)))

(declare-fun c!522636 () Bool)

(assert (=> d!862341 (= c!522636 (isEmpty!19703 s!11993))))

(assert (=> d!862341 (validRegex!4352 r!17423)))

(assert (=> d!862341 (= (matchR!4501 r!17423 s!11993) lt!1058707)))

(declare-fun b!3118864 () Bool)

(declare-fun res!1276378 () Bool)

(declare-fun e!1947628 () Bool)

(assert (=> b!3118864 (=> (not res!1276378) (not e!1947628))))

(assert (=> b!3118864 (= res!1276378 (not call!221525))))

(declare-fun b!3118865 () Bool)

(declare-fun res!1276383 () Bool)

(assert (=> b!3118865 (=> (not res!1276383) (not e!1947628))))

(assert (=> b!3118865 (= res!1276383 (isEmpty!19703 (tail!5137 s!11993)))))

(declare-fun b!3118866 () Bool)

(assert (=> b!3118866 (= e!1947627 (nullable!3257 r!17423))))

(declare-fun b!3118867 () Bool)

(assert (=> b!3118867 (= e!1947633 (= lt!1058707 call!221525))))

(declare-fun b!3118868 () Bool)

(declare-fun res!1276381 () Bool)

(assert (=> b!3118868 (=> res!1276381 e!1947631)))

(assert (=> b!3118868 (= res!1276381 e!1947628)))

(declare-fun res!1276384 () Bool)

(assert (=> b!3118868 (=> (not res!1276384) (not e!1947628))))

(assert (=> b!3118868 (= res!1276384 lt!1058707)))

(declare-fun b!3118869 () Bool)

(declare-fun res!1276379 () Bool)

(assert (=> b!3118869 (=> res!1276379 e!1947630)))

(assert (=> b!3118869 (= res!1276379 (not (isEmpty!19703 (tail!5137 s!11993))))))

(declare-fun b!3118870 () Bool)

(assert (=> b!3118870 (= e!1947628 (= (head!6911 s!11993) (c!522487 r!17423)))))

(declare-fun b!3118871 () Bool)

(assert (=> b!3118871 (= e!1947632 (not lt!1058707))))

(declare-fun b!3118872 () Bool)

(assert (=> b!3118872 (= e!1947633 e!1947632)))

(declare-fun c!522638 () Bool)

(assert (=> b!3118872 (= c!522638 ((_ is EmptyLang!9619) r!17423))))

(declare-fun bm!221520 () Bool)

(assert (=> bm!221520 (= call!221525 (isEmpty!19703 s!11993))))

(declare-fun b!3118873 () Bool)

(assert (=> b!3118873 (= e!1947627 (matchR!4501 (derivativeStep!2852 r!17423 (head!6911 s!11993)) (tail!5137 s!11993)))))

(assert (= (and d!862341 c!522636) b!3118866))

(assert (= (and d!862341 (not c!522636)) b!3118873))

(assert (= (and d!862341 c!522637) b!3118867))

(assert (= (and d!862341 (not c!522637)) b!3118872))

(assert (= (and b!3118872 c!522638) b!3118871))

(assert (= (and b!3118872 (not c!522638)) b!3118860))

(assert (= (and b!3118860 (not res!1276382)) b!3118868))

(assert (= (and b!3118868 res!1276384) b!3118864))

(assert (= (and b!3118864 res!1276378) b!3118865))

(assert (= (and b!3118865 res!1276383) b!3118870))

(assert (= (and b!3118868 (not res!1276381)) b!3118863))

(assert (= (and b!3118863 res!1276385) b!3118861))

(assert (= (and b!3118861 (not res!1276380)) b!3118869))

(assert (= (and b!3118869 (not res!1276379)) b!3118862))

(assert (= (or b!3118867 b!3118861 b!3118864) bm!221520))

(assert (=> d!862341 m!3407269))

(assert (=> d!862341 m!3407279))

(assert (=> b!3118865 m!3407341))

(assert (=> b!3118865 m!3407341))

(assert (=> b!3118865 m!3407347))

(assert (=> b!3118866 m!3407411))

(assert (=> bm!221520 m!3407269))

(assert (=> b!3118870 m!3407351))

(assert (=> b!3118862 m!3407351))

(assert (=> b!3118869 m!3407341))

(assert (=> b!3118869 m!3407341))

(assert (=> b!3118869 m!3407347))

(assert (=> b!3118873 m!3407351))

(assert (=> b!3118873 m!3407351))

(declare-fun m!3407425 () Bool)

(assert (=> b!3118873 m!3407425))

(assert (=> b!3118873 m!3407341))

(assert (=> b!3118873 m!3407425))

(assert (=> b!3118873 m!3407341))

(declare-fun m!3407427 () Bool)

(assert (=> b!3118873 m!3407427))

(assert (=> b!3118344 d!862341))

(declare-fun d!862343 () Bool)

(assert (=> d!862343 (= (matchR!4501 r!17423 s!11993) (matchRSpec!1756 r!17423 s!11993))))

(declare-fun lt!1058708 () Unit!49677)

(assert (=> d!862343 (= lt!1058708 (choose!18443 r!17423 s!11993))))

(assert (=> d!862343 (validRegex!4352 r!17423)))

(assert (=> d!862343 (= (mainMatchTheorem!1756 r!17423 s!11993) lt!1058708)))

(declare-fun bs!535889 () Bool)

(assert (= bs!535889 d!862343))

(assert (=> bs!535889 m!3407265))

(assert (=> bs!535889 m!3407263))

(declare-fun m!3407429 () Bool)

(assert (=> bs!535889 m!3407429))

(assert (=> bs!535889 m!3407279))

(assert (=> b!3118344 d!862343))

(declare-fun d!862345 () Bool)

(assert (=> d!862345 (= (isEmptyLang!670 lt!1058647) ((_ is EmptyLang!9619) lt!1058647))))

(assert (=> b!3118351 d!862345))

(declare-fun b!3118874 () Bool)

(declare-fun e!1947644 () Regex!9619)

(assert (=> b!3118874 (= e!1947644 EmptyLang!9619)))

(declare-fun bm!221521 () Bool)

(declare-fun call!221530 () Regex!9619)

(declare-fun c!522642 () Bool)

(assert (=> bm!221521 (= call!221530 (simplify!574 (ite c!522642 (regTwo!19751 (reg!9948 r!17423)) (regTwo!19750 (reg!9948 r!17423)))))))

(declare-fun b!3118875 () Bool)

(declare-fun e!1947637 () Regex!9619)

(assert (=> b!3118875 (= e!1947637 e!1947644)))

(declare-fun lt!1058710 () Regex!9619)

(declare-fun call!221526 () Regex!9619)

(assert (=> b!3118875 (= lt!1058710 call!221526)))

(declare-fun lt!1058713 () Regex!9619)

(assert (=> b!3118875 (= lt!1058713 call!221530)))

(declare-fun res!1276387 () Bool)

(declare-fun call!221528 () Bool)

(assert (=> b!3118875 (= res!1276387 call!221528)))

(declare-fun e!1947639 () Bool)

(assert (=> b!3118875 (=> res!1276387 e!1947639)))

(declare-fun c!522640 () Bool)

(assert (=> b!3118875 (= c!522640 e!1947639)))

(declare-fun b!3118876 () Bool)

(declare-fun c!522645 () Bool)

(declare-fun call!221531 () Bool)

(assert (=> b!3118876 (= c!522645 call!221531)))

(declare-fun e!1947634 () Regex!9619)

(assert (=> b!3118876 (= e!1947644 e!1947634)))

(declare-fun b!3118878 () Bool)

(declare-fun e!1947647 () Regex!9619)

(declare-fun e!1947635 () Regex!9619)

(assert (=> b!3118878 (= e!1947647 e!1947635)))

(declare-fun c!522644 () Bool)

(assert (=> b!3118878 (= c!522644 ((_ is Star!9619) (reg!9948 r!17423)))))

(declare-fun lt!1058714 () Regex!9619)

(declare-fun bm!221522 () Bool)

(declare-fun call!221532 () Bool)

(assert (=> bm!221522 (= call!221532 (isEmptyLang!670 (ite c!522642 lt!1058714 lt!1058713)))))

(declare-fun b!3118879 () Bool)

(declare-fun e!1947643 () Bool)

(declare-fun lt!1058711 () Regex!9619)

(assert (=> b!3118879 (= e!1947643 (= (nullable!3257 lt!1058711) (nullable!3257 (reg!9948 r!17423))))))

(declare-fun b!3118880 () Bool)

(declare-fun c!522639 () Bool)

(declare-fun e!1947640 () Bool)

(assert (=> b!3118880 (= c!522639 e!1947640)))

(declare-fun res!1276386 () Bool)

(assert (=> b!3118880 (=> res!1276386 e!1947640)))

(declare-fun call!221529 () Bool)

(assert (=> b!3118880 (= res!1276386 call!221529)))

(declare-fun lt!1058709 () Regex!9619)

(declare-fun call!221527 () Regex!9619)

(assert (=> b!3118880 (= lt!1058709 call!221527)))

(declare-fun e!1947645 () Regex!9619)

(assert (=> b!3118880 (= e!1947635 e!1947645)))

(declare-fun b!3118881 () Bool)

(declare-fun e!1947638 () Regex!9619)

(assert (=> b!3118881 (= e!1947638 (Concat!14940 lt!1058710 lt!1058713))))

(declare-fun b!3118882 () Bool)

(declare-fun c!522648 () Bool)

(assert (=> b!3118882 (= c!522648 ((_ is EmptyExpr!9619) (reg!9948 r!17423)))))

(declare-fun e!1947646 () Regex!9619)

(assert (=> b!3118882 (= e!1947646 e!1947647)))

(declare-fun b!3118883 () Bool)

(declare-fun e!1947641 () Regex!9619)

(declare-fun lt!1058712 () Regex!9619)

(assert (=> b!3118883 (= e!1947641 lt!1058712)))

(declare-fun b!3118884 () Bool)

(declare-fun e!1947636 () Regex!9619)

(assert (=> b!3118884 (= e!1947636 lt!1058714)))

(declare-fun b!3118885 () Bool)

(assert (=> b!3118885 (= e!1947634 lt!1058713)))

(declare-fun b!3118886 () Bool)

(assert (=> b!3118886 (= e!1947647 EmptyExpr!9619)))

(declare-fun b!3118887 () Bool)

(assert (=> b!3118887 (= e!1947636 (Union!9619 lt!1058714 lt!1058712))))

(declare-fun bm!221523 () Bool)

(assert (=> bm!221523 (= call!221529 (isEmptyLang!670 (ite c!522644 lt!1058709 (ite c!522642 lt!1058712 lt!1058710))))))

(declare-fun b!3118888 () Bool)

(assert (=> b!3118888 (= e!1947637 e!1947641)))

(assert (=> b!3118888 (= lt!1058714 call!221526)))

(assert (=> b!3118888 (= lt!1058712 call!221530)))

(declare-fun c!522641 () Bool)

(assert (=> b!3118888 (= c!522641 call!221532)))

(declare-fun d!862347 () Bool)

(assert (=> d!862347 e!1947643))

(declare-fun res!1276388 () Bool)

(assert (=> d!862347 (=> (not res!1276388) (not e!1947643))))

(assert (=> d!862347 (= res!1276388 (validRegex!4352 lt!1058711))))

(declare-fun e!1947642 () Regex!9619)

(assert (=> d!862347 (= lt!1058711 e!1947642)))

(declare-fun c!522649 () Bool)

(assert (=> d!862347 (= c!522649 ((_ is EmptyLang!9619) (reg!9948 r!17423)))))

(assert (=> d!862347 (validRegex!4352 (reg!9948 r!17423))))

(assert (=> d!862347 (= (simplify!574 (reg!9948 r!17423)) lt!1058711)))

(declare-fun b!3118877 () Bool)

(assert (=> b!3118877 (= e!1947646 (reg!9948 r!17423))))

(declare-fun b!3118889 () Bool)

(assert (=> b!3118889 (= c!522642 ((_ is Union!9619) (reg!9948 r!17423)))))

(assert (=> b!3118889 (= e!1947635 e!1947637)))

(declare-fun b!3118890 () Bool)

(assert (=> b!3118890 (= e!1947640 call!221531)))

(declare-fun b!3118891 () Bool)

(assert (=> b!3118891 (= e!1947639 call!221532)))

(declare-fun bm!221524 () Bool)

(assert (=> bm!221524 (= call!221531 (isEmptyExpr!668 (ite c!522644 lt!1058709 lt!1058710)))))

(declare-fun b!3118892 () Bool)

(assert (=> b!3118892 (= e!1947645 EmptyExpr!9619)))

(declare-fun bm!221525 () Bool)

(assert (=> bm!221525 (= call!221528 call!221529)))

(declare-fun b!3118893 () Bool)

(assert (=> b!3118893 (= e!1947645 (Star!9619 lt!1058709))))

(declare-fun b!3118894 () Bool)

(assert (=> b!3118894 (= e!1947642 e!1947646)))

(declare-fun c!522647 () Bool)

(assert (=> b!3118894 (= c!522647 ((_ is ElementMatch!9619) (reg!9948 r!17423)))))

(declare-fun b!3118895 () Bool)

(assert (=> b!3118895 (= e!1947634 e!1947638)))

(declare-fun c!522646 () Bool)

(assert (=> b!3118895 (= c!522646 (isEmptyExpr!668 lt!1058713))))

(declare-fun b!3118896 () Bool)

(declare-fun c!522643 () Bool)

(assert (=> b!3118896 (= c!522643 call!221528)))

(assert (=> b!3118896 (= e!1947641 e!1947636)))

(declare-fun b!3118897 () Bool)

(assert (=> b!3118897 (= e!1947638 lt!1058710)))

(declare-fun bm!221526 () Bool)

(assert (=> bm!221526 (= call!221527 (simplify!574 (ite c!522644 (reg!9948 (reg!9948 r!17423)) (ite c!522642 (regOne!19751 (reg!9948 r!17423)) (regOne!19750 (reg!9948 r!17423))))))))

(declare-fun bm!221527 () Bool)

(assert (=> bm!221527 (= call!221526 call!221527)))

(declare-fun b!3118898 () Bool)

(assert (=> b!3118898 (= e!1947642 EmptyLang!9619)))

(assert (= (and d!862347 c!522649) b!3118898))

(assert (= (and d!862347 (not c!522649)) b!3118894))

(assert (= (and b!3118894 c!522647) b!3118877))

(assert (= (and b!3118894 (not c!522647)) b!3118882))

(assert (= (and b!3118882 c!522648) b!3118886))

(assert (= (and b!3118882 (not c!522648)) b!3118878))

(assert (= (and b!3118878 c!522644) b!3118880))

(assert (= (and b!3118878 (not c!522644)) b!3118889))

(assert (= (and b!3118880 (not res!1276386)) b!3118890))

(assert (= (and b!3118880 c!522639) b!3118892))

(assert (= (and b!3118880 (not c!522639)) b!3118893))

(assert (= (and b!3118889 c!522642) b!3118888))

(assert (= (and b!3118889 (not c!522642)) b!3118875))

(assert (= (and b!3118888 c!522641) b!3118883))

(assert (= (and b!3118888 (not c!522641)) b!3118896))

(assert (= (and b!3118896 c!522643) b!3118884))

(assert (= (and b!3118896 (not c!522643)) b!3118887))

(assert (= (and b!3118875 (not res!1276387)) b!3118891))

(assert (= (and b!3118875 c!522640) b!3118874))

(assert (= (and b!3118875 (not c!522640)) b!3118876))

(assert (= (and b!3118876 c!522645) b!3118885))

(assert (= (and b!3118876 (not c!522645)) b!3118895))

(assert (= (and b!3118895 c!522646) b!3118897))

(assert (= (and b!3118895 (not c!522646)) b!3118881))

(assert (= (or b!3118888 b!3118875) bm!221521))

(assert (= (or b!3118888 b!3118875) bm!221527))

(assert (= (or b!3118896 b!3118875) bm!221525))

(assert (= (or b!3118888 b!3118891) bm!221522))

(assert (= (or b!3118890 b!3118876) bm!221524))

(assert (= (or b!3118880 bm!221527) bm!221526))

(assert (= (or b!3118880 bm!221525) bm!221523))

(assert (= (and d!862347 res!1276388) b!3118879))

(declare-fun m!3407431 () Bool)

(assert (=> b!3118895 m!3407431))

(declare-fun m!3407433 () Bool)

(assert (=> bm!221521 m!3407433))

(declare-fun m!3407435 () Bool)

(assert (=> bm!221524 m!3407435))

(declare-fun m!3407437 () Bool)

(assert (=> bm!221526 m!3407437))

(declare-fun m!3407439 () Bool)

(assert (=> b!3118879 m!3407439))

(assert (=> b!3118879 m!3407377))

(declare-fun m!3407441 () Bool)

(assert (=> bm!221522 m!3407441))

(declare-fun m!3407443 () Bool)

(assert (=> d!862347 m!3407443))

(declare-fun m!3407445 () Bool)

(assert (=> d!862347 m!3407445))

(declare-fun m!3407447 () Bool)

(assert (=> bm!221523 m!3407447))

(assert (=> b!3118351 d!862347))

(declare-fun e!1947650 () Bool)

(assert (=> b!3118352 (= tp!977674 e!1947650)))

(declare-fun b!3118910 () Bool)

(declare-fun tp!977729 () Bool)

(declare-fun tp!977730 () Bool)

(assert (=> b!3118910 (= e!1947650 (and tp!977729 tp!977730))))

(declare-fun b!3118909 () Bool)

(assert (=> b!3118909 (= e!1947650 tp_is_empty!16801)))

(declare-fun b!3118912 () Bool)

(declare-fun tp!977728 () Bool)

(declare-fun tp!977726 () Bool)

(assert (=> b!3118912 (= e!1947650 (and tp!977728 tp!977726))))

(declare-fun b!3118911 () Bool)

(declare-fun tp!977727 () Bool)

(assert (=> b!3118911 (= e!1947650 tp!977727)))

(assert (= (and b!3118352 ((_ is ElementMatch!9619) (regOne!19751 r!17423))) b!3118909))

(assert (= (and b!3118352 ((_ is Concat!14940) (regOne!19751 r!17423))) b!3118910))

(assert (= (and b!3118352 ((_ is Star!9619) (regOne!19751 r!17423))) b!3118911))

(assert (= (and b!3118352 ((_ is Union!9619) (regOne!19751 r!17423))) b!3118912))

(declare-fun e!1947651 () Bool)

(assert (=> b!3118352 (= tp!977677 e!1947651)))

(declare-fun b!3118914 () Bool)

(declare-fun tp!977734 () Bool)

(declare-fun tp!977735 () Bool)

(assert (=> b!3118914 (= e!1947651 (and tp!977734 tp!977735))))

(declare-fun b!3118913 () Bool)

(assert (=> b!3118913 (= e!1947651 tp_is_empty!16801)))

(declare-fun b!3118916 () Bool)

(declare-fun tp!977733 () Bool)

(declare-fun tp!977731 () Bool)

(assert (=> b!3118916 (= e!1947651 (and tp!977733 tp!977731))))

(declare-fun b!3118915 () Bool)

(declare-fun tp!977732 () Bool)

(assert (=> b!3118915 (= e!1947651 tp!977732)))

(assert (= (and b!3118352 ((_ is ElementMatch!9619) (regTwo!19751 r!17423))) b!3118913))

(assert (= (and b!3118352 ((_ is Concat!14940) (regTwo!19751 r!17423))) b!3118914))

(assert (= (and b!3118352 ((_ is Star!9619) (regTwo!19751 r!17423))) b!3118915))

(assert (= (and b!3118352 ((_ is Union!9619) (regTwo!19751 r!17423))) b!3118916))

(declare-fun b!3118921 () Bool)

(declare-fun e!1947654 () Bool)

(declare-fun tp!977738 () Bool)

(assert (=> b!3118921 (= e!1947654 (and tp_is_empty!16801 tp!977738))))

(assert (=> b!3118348 (= tp!977676 e!1947654)))

(assert (= (and b!3118348 ((_ is Cons!35360) (t!234549 s!11993))) b!3118921))

(declare-fun e!1947655 () Bool)

(assert (=> b!3118350 (= tp!977673 e!1947655)))

(declare-fun b!3118923 () Bool)

(declare-fun tp!977742 () Bool)

(declare-fun tp!977743 () Bool)

(assert (=> b!3118923 (= e!1947655 (and tp!977742 tp!977743))))

(declare-fun b!3118922 () Bool)

(assert (=> b!3118922 (= e!1947655 tp_is_empty!16801)))

(declare-fun b!3118925 () Bool)

(declare-fun tp!977741 () Bool)

(declare-fun tp!977739 () Bool)

(assert (=> b!3118925 (= e!1947655 (and tp!977741 tp!977739))))

(declare-fun b!3118924 () Bool)

(declare-fun tp!977740 () Bool)

(assert (=> b!3118924 (= e!1947655 tp!977740)))

(assert (= (and b!3118350 ((_ is ElementMatch!9619) (regOne!19750 r!17423))) b!3118922))

(assert (= (and b!3118350 ((_ is Concat!14940) (regOne!19750 r!17423))) b!3118923))

(assert (= (and b!3118350 ((_ is Star!9619) (regOne!19750 r!17423))) b!3118924))

(assert (= (and b!3118350 ((_ is Union!9619) (regOne!19750 r!17423))) b!3118925))

(declare-fun e!1947656 () Bool)

(assert (=> b!3118350 (= tp!977672 e!1947656)))

(declare-fun b!3118927 () Bool)

(declare-fun tp!977747 () Bool)

(declare-fun tp!977748 () Bool)

(assert (=> b!3118927 (= e!1947656 (and tp!977747 tp!977748))))

(declare-fun b!3118926 () Bool)

(assert (=> b!3118926 (= e!1947656 tp_is_empty!16801)))

(declare-fun b!3118929 () Bool)

(declare-fun tp!977746 () Bool)

(declare-fun tp!977744 () Bool)

(assert (=> b!3118929 (= e!1947656 (and tp!977746 tp!977744))))

(declare-fun b!3118928 () Bool)

(declare-fun tp!977745 () Bool)

(assert (=> b!3118928 (= e!1947656 tp!977745)))

(assert (= (and b!3118350 ((_ is ElementMatch!9619) (regTwo!19750 r!17423))) b!3118926))

(assert (= (and b!3118350 ((_ is Concat!14940) (regTwo!19750 r!17423))) b!3118927))

(assert (= (and b!3118350 ((_ is Star!9619) (regTwo!19750 r!17423))) b!3118928))

(assert (= (and b!3118350 ((_ is Union!9619) (regTwo!19750 r!17423))) b!3118929))

(declare-fun e!1947657 () Bool)

(assert (=> b!3118346 (= tp!977675 e!1947657)))

(declare-fun b!3118931 () Bool)

(declare-fun tp!977752 () Bool)

(declare-fun tp!977753 () Bool)

(assert (=> b!3118931 (= e!1947657 (and tp!977752 tp!977753))))

(declare-fun b!3118930 () Bool)

(assert (=> b!3118930 (= e!1947657 tp_is_empty!16801)))

(declare-fun b!3118933 () Bool)

(declare-fun tp!977751 () Bool)

(declare-fun tp!977749 () Bool)

(assert (=> b!3118933 (= e!1947657 (and tp!977751 tp!977749))))

(declare-fun b!3118932 () Bool)

(declare-fun tp!977750 () Bool)

(assert (=> b!3118932 (= e!1947657 tp!977750)))

(assert (= (and b!3118346 ((_ is ElementMatch!9619) (reg!9948 r!17423))) b!3118930))

(assert (= (and b!3118346 ((_ is Concat!14940) (reg!9948 r!17423))) b!3118931))

(assert (= (and b!3118346 ((_ is Star!9619) (reg!9948 r!17423))) b!3118932))

(assert (= (and b!3118346 ((_ is Union!9619) (reg!9948 r!17423))) b!3118933))

(check-sat (not bm!221456) (not b!3118873) (not b!3118715) (not b!3118862) (not bm!221469) (not bm!221512) (not b!3118912) (not b!3118921) (not b!3118704) (not b!3118929) (not bm!221513) (not bm!221490) (not b!3118711) (not b!3118695) (not b!3118910) (not b!3118627) (not b!3118845) (not bm!221457) (not b!3118624) (not b!3118911) (not b!3118914) (not b!3118915) (not bm!221524) (not b!3118870) (not bm!221511) (not b!3118931) (not bm!221514) (not bm!221492) (not b!3118829) (not bm!221521) (not d!862341) (not d!862311) (not bm!221526) (not b!3118628) (not d!862335) (not b!3118708) (not b!3118895) (not b!3118631) (not bm!221518) (not b!3118925) (not b!3118541) (not d!862313) (not b!3118859) (not bm!221523) (not b!3118923) (not d!862333) (not b!3118927) (not bm!221516) (not bm!221520) (not b!3118879) (not b!3118623) (not b!3118865) (not b!3118933) (not b!3118857) (not bm!221522) (not b!3118928) (not b!3118869) (not b!3118712) (not bm!221491) (not b!3118924) tp_is_empty!16801 (not d!862347) (not b!3118539) (not bm!221519) (not b!3118916) (not b!3118707) (not b!3118620) (not b!3118932) (not d!862343) (not b!3118866))
(check-sat)
