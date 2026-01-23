; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749784 () Bool)

(assert start!749784)

(declare-fun b!7944448 () Bool)

(declare-fun e!4687223 () Bool)

(declare-fun tp!2362885 () Bool)

(assert (=> b!7944448 (= e!4687223 tp!2362885)))

(declare-fun b!7944449 () Bool)

(declare-fun tp_is_empty!53401 () Bool)

(assert (=> b!7944449 (= e!4687223 tp_is_empty!53401)))

(declare-fun b!7944450 () Bool)

(declare-fun res!3151170 () Bool)

(declare-fun e!4687226 () Bool)

(assert (=> b!7944450 (=> (not res!3151170) (not e!4687226))))

(declare-datatypes ((C!43196 0))(
  ( (C!43197 (val!32146 Int)) )
))
(declare-datatypes ((Regex!21429 0))(
  ( (ElementMatch!21429 (c!1459438 C!43196)) (Concat!30428 (regOne!43370 Regex!21429) (regTwo!43370 Regex!21429)) (EmptyExpr!21429) (Star!21429 (reg!21758 Regex!21429)) (EmptyLang!21429) (Union!21429 (regOne!43371 Regex!21429) (regTwo!43371 Regex!21429)) )
))
(declare-fun baseR!116 () Regex!21429)

(declare-datatypes ((List!74658 0))(
  ( (Nil!74534) (Cons!74534 (h!80982 C!43196) (t!390401 List!74658)) )
))
(declare-fun testedP!447 () List!74658)

(declare-fun r!24602 () Regex!21429)

(declare-fun derivative!615 (Regex!21429 List!74658) Regex!21429)

(assert (=> b!7944450 (= res!3151170 (= (derivative!615 baseR!116 testedP!447) r!24602))))

(declare-fun b!7944451 () Bool)

(declare-fun e!4687225 () Bool)

(declare-fun tp!2362879 () Bool)

(assert (=> b!7944451 (= e!4687225 (and tp_is_empty!53401 tp!2362879))))

(declare-fun b!7944452 () Bool)

(declare-fun e!4687227 () Bool)

(declare-fun tp!2362886 () Bool)

(assert (=> b!7944452 (= e!4687227 (and tp_is_empty!53401 tp!2362886))))

(declare-fun b!7944453 () Bool)

(declare-fun e!4687224 () Bool)

(assert (=> b!7944453 (= e!4687226 e!4687224)))

(declare-fun res!3151173 () Bool)

(assert (=> b!7944453 (=> (not res!3151173) (not e!4687224))))

(declare-fun input!7927 () List!74658)

(declare-fun lt!2697609 () List!74658)

(declare-fun lt!2697608 () Int)

(declare-fun isEmpty!42833 (List!74658) Bool)

(declare-datatypes ((tuple2!70520 0))(
  ( (tuple2!70521 (_1!38563 List!74658) (_2!38563 List!74658)) )
))
(declare-fun findLongestMatchInner!2210 (Regex!21429 List!74658 Int List!74658 List!74658 Int) tuple2!70520)

(declare-fun size!43365 (List!74658) Int)

(assert (=> b!7944453 (= res!3151173 (isEmpty!42833 (_1!38563 (findLongestMatchInner!2210 r!24602 testedP!447 lt!2697608 lt!2697609 input!7927 (size!43365 input!7927)))))))

(declare-fun getSuffix!3732 (List!74658 List!74658) List!74658)

(assert (=> b!7944453 (= lt!2697609 (getSuffix!3732 input!7927 testedP!447))))

(assert (=> b!7944453 (= lt!2697608 (size!43365 testedP!447))))

(declare-fun b!7944454 () Bool)

(declare-fun tp!2362878 () Bool)

(declare-fun tp!2362882 () Bool)

(assert (=> b!7944454 (= e!4687223 (and tp!2362878 tp!2362882))))

(declare-fun b!7944455 () Bool)

(declare-fun ++!18315 (List!74658 List!74658) List!74658)

(assert (=> b!7944455 (= e!4687224 (not (= (++!18315 testedP!447 lt!2697609) input!7927)))))

(declare-fun b!7944456 () Bool)

(declare-fun res!3151174 () Bool)

(assert (=> b!7944456 (=> (not res!3151174) (not e!4687224))))

(declare-fun validRegex!11733 (Regex!21429) Bool)

(assert (=> b!7944456 (= res!3151174 (validRegex!11733 r!24602))))

(declare-fun b!7944458 () Bool)

(declare-fun e!4687222 () Bool)

(assert (=> b!7944458 (= e!4687222 tp_is_empty!53401)))

(declare-fun res!3151171 () Bool)

(assert (=> start!749784 (=> (not res!3151171) (not e!4687226))))

(assert (=> start!749784 (= res!3151171 (validRegex!11733 baseR!116))))

(assert (=> start!749784 e!4687226))

(assert (=> start!749784 e!4687223))

(assert (=> start!749784 e!4687227))

(assert (=> start!749784 e!4687225))

(assert (=> start!749784 e!4687222))

(declare-fun b!7944457 () Bool)

(declare-fun res!3151172 () Bool)

(assert (=> b!7944457 (=> (not res!3151172) (not e!4687226))))

(declare-fun isPrefix!6529 (List!74658 List!74658) Bool)

(assert (=> b!7944457 (= res!3151172 (isPrefix!6529 testedP!447 input!7927))))

(declare-fun b!7944459 () Bool)

(declare-fun tp!2362880 () Bool)

(declare-fun tp!2362883 () Bool)

(assert (=> b!7944459 (= e!4687223 (and tp!2362880 tp!2362883))))

(declare-fun b!7944460 () Bool)

(declare-fun tp!2362877 () Bool)

(declare-fun tp!2362875 () Bool)

(assert (=> b!7944460 (= e!4687222 (and tp!2362877 tp!2362875))))

(declare-fun b!7944461 () Bool)

(declare-fun tp!2362881 () Bool)

(assert (=> b!7944461 (= e!4687222 tp!2362881)))

(declare-fun b!7944462 () Bool)

(declare-fun tp!2362876 () Bool)

(declare-fun tp!2362884 () Bool)

(assert (=> b!7944462 (= e!4687222 (and tp!2362876 tp!2362884))))

(assert (= (and start!749784 res!3151171) b!7944457))

(assert (= (and b!7944457 res!3151172) b!7944450))

(assert (= (and b!7944450 res!3151170) b!7944453))

(assert (= (and b!7944453 res!3151173) b!7944456))

(assert (= (and b!7944456 res!3151174) b!7944455))

(get-info :version)

(assert (= (and start!749784 ((_ is ElementMatch!21429) baseR!116)) b!7944449))

(assert (= (and start!749784 ((_ is Concat!30428) baseR!116)) b!7944459))

(assert (= (and start!749784 ((_ is Star!21429) baseR!116)) b!7944448))

(assert (= (and start!749784 ((_ is Union!21429) baseR!116)) b!7944454))

(assert (= (and start!749784 ((_ is Cons!74534) testedP!447)) b!7944452))

(assert (= (and start!749784 ((_ is Cons!74534) input!7927)) b!7944451))

(assert (= (and start!749784 ((_ is ElementMatch!21429) r!24602)) b!7944458))

(assert (= (and start!749784 ((_ is Concat!30428) r!24602)) b!7944462))

(assert (= (and start!749784 ((_ is Star!21429) r!24602)) b!7944461))

(assert (= (and start!749784 ((_ is Union!21429) r!24602)) b!7944460))

(declare-fun m!8331566 () Bool)

(assert (=> b!7944456 m!8331566))

(declare-fun m!8331568 () Bool)

(assert (=> b!7944457 m!8331568))

(declare-fun m!8331570 () Bool)

(assert (=> b!7944455 m!8331570))

(declare-fun m!8331572 () Bool)

(assert (=> b!7944453 m!8331572))

(declare-fun m!8331574 () Bool)

(assert (=> b!7944453 m!8331574))

(declare-fun m!8331576 () Bool)

(assert (=> b!7944453 m!8331576))

(assert (=> b!7944453 m!8331574))

(declare-fun m!8331578 () Bool)

(assert (=> b!7944453 m!8331578))

(declare-fun m!8331580 () Bool)

(assert (=> b!7944453 m!8331580))

(declare-fun m!8331582 () Bool)

(assert (=> start!749784 m!8331582))

(declare-fun m!8331584 () Bool)

(assert (=> b!7944450 m!8331584))

(check-sat (not b!7944455) (not b!7944451) (not start!749784) (not b!7944461) (not b!7944450) (not b!7944456) (not b!7944459) (not b!7944457) (not b!7944460) (not b!7944454) (not b!7944453) tp_is_empty!53401 (not b!7944452) (not b!7944448) (not b!7944462))
(check-sat)
(get-model)

(declare-fun b!7944499 () Bool)

(declare-fun e!4687256 () Bool)

(declare-fun e!4687258 () Bool)

(assert (=> b!7944499 (= e!4687256 e!4687258)))

(declare-fun c!1459448 () Bool)

(assert (=> b!7944499 (= c!1459448 ((_ is Union!21429) baseR!116))))

(declare-fun b!7944500 () Bool)

(declare-fun e!4687261 () Bool)

(assert (=> b!7944500 (= e!4687256 e!4687261)))

(declare-fun res!3151195 () Bool)

(declare-fun nullable!9543 (Regex!21429) Bool)

(assert (=> b!7944500 (= res!3151195 (not (nullable!9543 (reg!21758 baseR!116))))))

(assert (=> b!7944500 (=> (not res!3151195) (not e!4687261))))

(declare-fun b!7944501 () Bool)

(declare-fun e!4687260 () Bool)

(declare-fun e!4687262 () Bool)

(assert (=> b!7944501 (= e!4687260 e!4687262)))

(declare-fun res!3151198 () Bool)

(assert (=> b!7944501 (=> (not res!3151198) (not e!4687262))))

(declare-fun call!736295 () Bool)

(assert (=> b!7944501 (= res!3151198 call!736295)))

(declare-fun bm!736288 () Bool)

(declare-fun call!736293 () Bool)

(assert (=> bm!736288 (= call!736295 call!736293)))

(declare-fun bm!736289 () Bool)

(declare-fun call!736294 () Bool)

(assert (=> bm!736289 (= call!736294 (validRegex!11733 (ite c!1459448 (regTwo!43371 baseR!116) (regTwo!43370 baseR!116))))))

(declare-fun b!7944503 () Bool)

(assert (=> b!7944503 (= e!4687261 call!736293)))

(declare-fun b!7944504 () Bool)

(declare-fun res!3151197 () Bool)

(declare-fun e!4687257 () Bool)

(assert (=> b!7944504 (=> (not res!3151197) (not e!4687257))))

(assert (=> b!7944504 (= res!3151197 call!736295)))

(assert (=> b!7944504 (= e!4687258 e!4687257)))

(declare-fun b!7944505 () Bool)

(declare-fun e!4687259 () Bool)

(assert (=> b!7944505 (= e!4687259 e!4687256)))

(declare-fun c!1459447 () Bool)

(assert (=> b!7944505 (= c!1459447 ((_ is Star!21429) baseR!116))))

(declare-fun bm!736290 () Bool)

(assert (=> bm!736290 (= call!736293 (validRegex!11733 (ite c!1459447 (reg!21758 baseR!116) (ite c!1459448 (regOne!43371 baseR!116) (regOne!43370 baseR!116)))))))

(declare-fun b!7944506 () Bool)

(declare-fun res!3151199 () Bool)

(assert (=> b!7944506 (=> res!3151199 e!4687260)))

(assert (=> b!7944506 (= res!3151199 (not ((_ is Concat!30428) baseR!116)))))

(assert (=> b!7944506 (= e!4687258 e!4687260)))

(declare-fun b!7944507 () Bool)

(assert (=> b!7944507 (= e!4687257 call!736294)))

(declare-fun d!2375341 () Bool)

(declare-fun res!3151196 () Bool)

(assert (=> d!2375341 (=> res!3151196 e!4687259)))

(assert (=> d!2375341 (= res!3151196 ((_ is ElementMatch!21429) baseR!116))))

(assert (=> d!2375341 (= (validRegex!11733 baseR!116) e!4687259)))

(declare-fun b!7944502 () Bool)

(assert (=> b!7944502 (= e!4687262 call!736294)))

(assert (= (and d!2375341 (not res!3151196)) b!7944505))

(assert (= (and b!7944505 c!1459447) b!7944500))

(assert (= (and b!7944505 (not c!1459447)) b!7944499))

(assert (= (and b!7944500 res!3151195) b!7944503))

(assert (= (and b!7944499 c!1459448) b!7944504))

(assert (= (and b!7944499 (not c!1459448)) b!7944506))

(assert (= (and b!7944504 res!3151197) b!7944507))

(assert (= (and b!7944506 (not res!3151199)) b!7944501))

(assert (= (and b!7944501 res!3151198) b!7944502))

(assert (= (or b!7944507 b!7944502) bm!736289))

(assert (= (or b!7944504 b!7944501) bm!736288))

(assert (= (or b!7944503 bm!736288) bm!736290))

(declare-fun m!8331586 () Bool)

(assert (=> b!7944500 m!8331586))

(declare-fun m!8331588 () Bool)

(assert (=> bm!736289 m!8331588))

(declare-fun m!8331590 () Bool)

(assert (=> bm!736290 m!8331590))

(assert (=> start!749784 d!2375341))

(declare-fun b!7944527 () Bool)

(declare-fun e!4687276 () Bool)

(declare-fun tail!15745 (List!74658) List!74658)

(assert (=> b!7944527 (= e!4687276 (isPrefix!6529 (tail!15745 testedP!447) (tail!15745 input!7927)))))

(declare-fun b!7944528 () Bool)

(declare-fun e!4687278 () Bool)

(assert (=> b!7944528 (= e!4687278 (>= (size!43365 input!7927) (size!43365 testedP!447)))))

(declare-fun d!2375343 () Bool)

(assert (=> d!2375343 e!4687278))

(declare-fun res!3151216 () Bool)

(assert (=> d!2375343 (=> res!3151216 e!4687278)))

(declare-fun lt!2697612 () Bool)

(assert (=> d!2375343 (= res!3151216 (not lt!2697612))))

(declare-fun e!4687277 () Bool)

(assert (=> d!2375343 (= lt!2697612 e!4687277)))

(declare-fun res!3151214 () Bool)

(assert (=> d!2375343 (=> res!3151214 e!4687277)))

(assert (=> d!2375343 (= res!3151214 ((_ is Nil!74534) testedP!447))))

(assert (=> d!2375343 (= (isPrefix!6529 testedP!447 input!7927) lt!2697612)))

(declare-fun b!7944526 () Bool)

(declare-fun res!3151213 () Bool)

(assert (=> b!7944526 (=> (not res!3151213) (not e!4687276))))

(declare-fun head!16202 (List!74658) C!43196)

(assert (=> b!7944526 (= res!3151213 (= (head!16202 testedP!447) (head!16202 input!7927)))))

(declare-fun b!7944525 () Bool)

(assert (=> b!7944525 (= e!4687277 e!4687276)))

(declare-fun res!3151215 () Bool)

(assert (=> b!7944525 (=> (not res!3151215) (not e!4687276))))

(assert (=> b!7944525 (= res!3151215 (not ((_ is Nil!74534) input!7927)))))

(assert (= (and d!2375343 (not res!3151214)) b!7944525))

(assert (= (and b!7944525 res!3151215) b!7944526))

(assert (= (and b!7944526 res!3151213) b!7944527))

(assert (= (and d!2375343 (not res!3151216)) b!7944528))

(declare-fun m!8331598 () Bool)

(assert (=> b!7944527 m!8331598))

(declare-fun m!8331600 () Bool)

(assert (=> b!7944527 m!8331600))

(assert (=> b!7944527 m!8331598))

(assert (=> b!7944527 m!8331600))

(declare-fun m!8331602 () Bool)

(assert (=> b!7944527 m!8331602))

(assert (=> b!7944528 m!8331574))

(assert (=> b!7944528 m!8331572))

(declare-fun m!8331604 () Bool)

(assert (=> b!7944526 m!8331604))

(declare-fun m!8331606 () Bool)

(assert (=> b!7944526 m!8331606))

(assert (=> b!7944457 d!2375343))

(declare-fun d!2375347 () Bool)

(declare-fun lt!2697617 () Regex!21429)

(assert (=> d!2375347 (validRegex!11733 lt!2697617)))

(declare-fun e!4687283 () Regex!21429)

(assert (=> d!2375347 (= lt!2697617 e!4687283)))

(declare-fun c!1459455 () Bool)

(assert (=> d!2375347 (= c!1459455 ((_ is Cons!74534) testedP!447))))

(assert (=> d!2375347 (validRegex!11733 baseR!116)))

(assert (=> d!2375347 (= (derivative!615 baseR!116 testedP!447) lt!2697617)))

(declare-fun b!7944537 () Bool)

(declare-fun derivativeStep!6480 (Regex!21429 C!43196) Regex!21429)

(assert (=> b!7944537 (= e!4687283 (derivative!615 (derivativeStep!6480 baseR!116 (h!80982 testedP!447)) (t!390401 testedP!447)))))

(declare-fun b!7944538 () Bool)

(assert (=> b!7944538 (= e!4687283 baseR!116)))

(assert (= (and d!2375347 c!1459455) b!7944537))

(assert (= (and d!2375347 (not c!1459455)) b!7944538))

(declare-fun m!8331608 () Bool)

(assert (=> d!2375347 m!8331608))

(assert (=> d!2375347 m!8331582))

(declare-fun m!8331610 () Bool)

(assert (=> b!7944537 m!8331610))

(assert (=> b!7944537 m!8331610))

(declare-fun m!8331612 () Bool)

(assert (=> b!7944537 m!8331612))

(assert (=> b!7944450 d!2375347))

(declare-fun b!7944555 () Bool)

(declare-fun e!4687293 () List!74658)

(assert (=> b!7944555 (= e!4687293 lt!2697609)))

(declare-fun b!7944558 () Bool)

(declare-fun e!4687292 () Bool)

(declare-fun lt!2697621 () List!74658)

(assert (=> b!7944558 (= e!4687292 (or (not (= lt!2697609 Nil!74534)) (= lt!2697621 testedP!447)))))

(declare-fun d!2375349 () Bool)

(assert (=> d!2375349 e!4687292))

(declare-fun res!3151227 () Bool)

(assert (=> d!2375349 (=> (not res!3151227) (not e!4687292))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15817 (List!74658) (InoxSet C!43196))

(assert (=> d!2375349 (= res!3151227 (= (content!15817 lt!2697621) ((_ map or) (content!15817 testedP!447) (content!15817 lt!2697609))))))

(assert (=> d!2375349 (= lt!2697621 e!4687293)))

(declare-fun c!1459459 () Bool)

(assert (=> d!2375349 (= c!1459459 ((_ is Nil!74534) testedP!447))))

(assert (=> d!2375349 (= (++!18315 testedP!447 lt!2697609) lt!2697621)))

(declare-fun b!7944556 () Bool)

(assert (=> b!7944556 (= e!4687293 (Cons!74534 (h!80982 testedP!447) (++!18315 (t!390401 testedP!447) lt!2697609)))))

(declare-fun b!7944557 () Bool)

(declare-fun res!3151228 () Bool)

(assert (=> b!7944557 (=> (not res!3151228) (not e!4687292))))

(assert (=> b!7944557 (= res!3151228 (= (size!43365 lt!2697621) (+ (size!43365 testedP!447) (size!43365 lt!2697609))))))

(assert (= (and d!2375349 c!1459459) b!7944555))

(assert (= (and d!2375349 (not c!1459459)) b!7944556))

(assert (= (and d!2375349 res!3151227) b!7944557))

(assert (= (and b!7944557 res!3151228) b!7944558))

(declare-fun m!8331626 () Bool)

(assert (=> d!2375349 m!8331626))

(declare-fun m!8331628 () Bool)

(assert (=> d!2375349 m!8331628))

(declare-fun m!8331630 () Bool)

(assert (=> d!2375349 m!8331630))

(declare-fun m!8331632 () Bool)

(assert (=> b!7944556 m!8331632))

(declare-fun m!8331634 () Bool)

(assert (=> b!7944557 m!8331634))

(assert (=> b!7944557 m!8331572))

(declare-fun m!8331636 () Bool)

(assert (=> b!7944557 m!8331636))

(assert (=> b!7944455 d!2375349))

(declare-fun b!7944559 () Bool)

(declare-fun e!4687294 () Bool)

(declare-fun e!4687296 () Bool)

(assert (=> b!7944559 (= e!4687294 e!4687296)))

(declare-fun c!1459461 () Bool)

(assert (=> b!7944559 (= c!1459461 ((_ is Union!21429) r!24602))))

(declare-fun b!7944560 () Bool)

(declare-fun e!4687299 () Bool)

(assert (=> b!7944560 (= e!4687294 e!4687299)))

(declare-fun res!3151229 () Bool)

(assert (=> b!7944560 (= res!3151229 (not (nullable!9543 (reg!21758 r!24602))))))

(assert (=> b!7944560 (=> (not res!3151229) (not e!4687299))))

(declare-fun b!7944561 () Bool)

(declare-fun e!4687298 () Bool)

(declare-fun e!4687300 () Bool)

(assert (=> b!7944561 (= e!4687298 e!4687300)))

(declare-fun res!3151232 () Bool)

(assert (=> b!7944561 (=> (not res!3151232) (not e!4687300))))

(declare-fun call!736301 () Bool)

(assert (=> b!7944561 (= res!3151232 call!736301)))

(declare-fun bm!736294 () Bool)

(declare-fun call!736299 () Bool)

(assert (=> bm!736294 (= call!736301 call!736299)))

(declare-fun bm!736295 () Bool)

(declare-fun call!736300 () Bool)

(assert (=> bm!736295 (= call!736300 (validRegex!11733 (ite c!1459461 (regTwo!43371 r!24602) (regTwo!43370 r!24602))))))

(declare-fun b!7944563 () Bool)

(assert (=> b!7944563 (= e!4687299 call!736299)))

(declare-fun b!7944564 () Bool)

(declare-fun res!3151231 () Bool)

(declare-fun e!4687295 () Bool)

(assert (=> b!7944564 (=> (not res!3151231) (not e!4687295))))

(assert (=> b!7944564 (= res!3151231 call!736301)))

(assert (=> b!7944564 (= e!4687296 e!4687295)))

(declare-fun b!7944565 () Bool)

(declare-fun e!4687297 () Bool)

(assert (=> b!7944565 (= e!4687297 e!4687294)))

(declare-fun c!1459460 () Bool)

(assert (=> b!7944565 (= c!1459460 ((_ is Star!21429) r!24602))))

(declare-fun bm!736296 () Bool)

(assert (=> bm!736296 (= call!736299 (validRegex!11733 (ite c!1459460 (reg!21758 r!24602) (ite c!1459461 (regOne!43371 r!24602) (regOne!43370 r!24602)))))))

(declare-fun b!7944566 () Bool)

(declare-fun res!3151233 () Bool)

(assert (=> b!7944566 (=> res!3151233 e!4687298)))

(assert (=> b!7944566 (= res!3151233 (not ((_ is Concat!30428) r!24602)))))

(assert (=> b!7944566 (= e!4687296 e!4687298)))

(declare-fun b!7944567 () Bool)

(assert (=> b!7944567 (= e!4687295 call!736300)))

(declare-fun d!2375353 () Bool)

(declare-fun res!3151230 () Bool)

(assert (=> d!2375353 (=> res!3151230 e!4687297)))

(assert (=> d!2375353 (= res!3151230 ((_ is ElementMatch!21429) r!24602))))

(assert (=> d!2375353 (= (validRegex!11733 r!24602) e!4687297)))

(declare-fun b!7944562 () Bool)

(assert (=> b!7944562 (= e!4687300 call!736300)))

(assert (= (and d!2375353 (not res!3151230)) b!7944565))

(assert (= (and b!7944565 c!1459460) b!7944560))

(assert (= (and b!7944565 (not c!1459460)) b!7944559))

(assert (= (and b!7944560 res!3151229) b!7944563))

(assert (= (and b!7944559 c!1459461) b!7944564))

(assert (= (and b!7944559 (not c!1459461)) b!7944566))

(assert (= (and b!7944564 res!3151231) b!7944567))

(assert (= (and b!7944566 (not res!3151233)) b!7944561))

(assert (= (and b!7944561 res!3151232) b!7944562))

(assert (= (or b!7944567 b!7944562) bm!736295))

(assert (= (or b!7944564 b!7944561) bm!736294))

(assert (= (or b!7944563 bm!736294) bm!736296))

(declare-fun m!8331638 () Bool)

(assert (=> b!7944560 m!8331638))

(declare-fun m!8331640 () Bool)

(assert (=> bm!736295 m!8331640))

(declare-fun m!8331642 () Bool)

(assert (=> bm!736296 m!8331642))

(assert (=> b!7944456 d!2375353))

(declare-fun d!2375355 () Bool)

(declare-fun lt!2697624 () Int)

(assert (=> d!2375355 (>= lt!2697624 0)))

(declare-fun e!4687303 () Int)

(assert (=> d!2375355 (= lt!2697624 e!4687303)))

(declare-fun c!1459464 () Bool)

(assert (=> d!2375355 (= c!1459464 ((_ is Nil!74534) input!7927))))

(assert (=> d!2375355 (= (size!43365 input!7927) lt!2697624)))

(declare-fun b!7944572 () Bool)

(assert (=> b!7944572 (= e!4687303 0)))

(declare-fun b!7944573 () Bool)

(assert (=> b!7944573 (= e!4687303 (+ 1 (size!43365 (t!390401 input!7927))))))

(assert (= (and d!2375355 c!1459464) b!7944572))

(assert (= (and d!2375355 (not c!1459464)) b!7944573))

(declare-fun m!8331644 () Bool)

(assert (=> b!7944573 m!8331644))

(assert (=> b!7944453 d!2375355))

(declare-fun b!7944626 () Bool)

(declare-fun e!4687340 () tuple2!70520)

(assert (=> b!7944626 (= e!4687340 (tuple2!70521 testedP!447 lt!2697609))))

(declare-fun bm!736313 () Bool)

(declare-fun call!736325 () C!43196)

(assert (=> bm!736313 (= call!736325 (head!16202 lt!2697609))))

(declare-fun b!7944627 () Bool)

(declare-fun c!1459487 () Bool)

(declare-fun call!736319 () Bool)

(assert (=> b!7944627 (= c!1459487 call!736319)))

(declare-datatypes ((Unit!169688 0))(
  ( (Unit!169689) )
))
(declare-fun lt!2697701 () Unit!169688)

(declare-fun lt!2697703 () Unit!169688)

(assert (=> b!7944627 (= lt!2697701 lt!2697703)))

(declare-fun lt!2697691 () C!43196)

(declare-fun lt!2697700 () List!74658)

(assert (=> b!7944627 (= (++!18315 (++!18315 testedP!447 (Cons!74534 lt!2697691 Nil!74534)) lt!2697700) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3501 (List!74658 C!43196 List!74658 List!74658) Unit!169688)

(assert (=> b!7944627 (= lt!2697703 (lemmaMoveElementToOtherListKeepsConcatEq!3501 testedP!447 lt!2697691 lt!2697700 input!7927))))

(assert (=> b!7944627 (= lt!2697700 (tail!15745 lt!2697609))))

(assert (=> b!7944627 (= lt!2697691 (head!16202 lt!2697609))))

(declare-fun lt!2697711 () Unit!169688)

(declare-fun lt!2697702 () Unit!169688)

(assert (=> b!7944627 (= lt!2697711 lt!2697702)))

(assert (=> b!7944627 (isPrefix!6529 (++!18315 testedP!447 (Cons!74534 (head!16202 (getSuffix!3732 input!7927 testedP!447)) Nil!74534)) input!7927)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1279 (List!74658 List!74658) Unit!169688)

(assert (=> b!7944627 (= lt!2697702 (lemmaAddHeadSuffixToPrefixStillPrefix!1279 testedP!447 input!7927))))

(declare-fun lt!2697697 () Unit!169688)

(declare-fun lt!2697716 () Unit!169688)

(assert (=> b!7944627 (= lt!2697697 lt!2697716)))

(assert (=> b!7944627 (= lt!2697716 (lemmaAddHeadSuffixToPrefixStillPrefix!1279 testedP!447 input!7927))))

(declare-fun lt!2697696 () List!74658)

(assert (=> b!7944627 (= lt!2697696 (++!18315 testedP!447 (Cons!74534 (head!16202 lt!2697609) Nil!74534)))))

(declare-fun lt!2697693 () Unit!169688)

(declare-fun e!4687335 () Unit!169688)

(assert (=> b!7944627 (= lt!2697693 e!4687335)))

(declare-fun c!1459486 () Bool)

(assert (=> b!7944627 (= c!1459486 (= (size!43365 testedP!447) (size!43365 input!7927)))))

(declare-fun lt!2697694 () Unit!169688)

(declare-fun lt!2697717 () Unit!169688)

(assert (=> b!7944627 (= lt!2697694 lt!2697717)))

(assert (=> b!7944627 (<= (size!43365 testedP!447) (size!43365 input!7927))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1059 (List!74658 List!74658) Unit!169688)

(assert (=> b!7944627 (= lt!2697717 (lemmaIsPrefixThenSmallerEqSize!1059 testedP!447 input!7927))))

(declare-fun e!4687338 () tuple2!70520)

(declare-fun e!4687341 () tuple2!70520)

(assert (=> b!7944627 (= e!4687338 e!4687341)))

(declare-fun b!7944628 () Bool)

(declare-fun e!4687342 () Bool)

(declare-fun e!4687336 () Bool)

(assert (=> b!7944628 (= e!4687342 e!4687336)))

(declare-fun res!3151251 () Bool)

(assert (=> b!7944628 (=> res!3151251 e!4687336)))

(declare-fun lt!2697709 () tuple2!70520)

(assert (=> b!7944628 (= res!3151251 (isEmpty!42833 (_1!38563 lt!2697709)))))

(declare-fun b!7944629 () Bool)

(declare-fun c!1459488 () Bool)

(assert (=> b!7944629 (= c!1459488 call!736319)))

(declare-fun lt!2697698 () Unit!169688)

(declare-fun lt!2697714 () Unit!169688)

(assert (=> b!7944629 (= lt!2697698 lt!2697714)))

(assert (=> b!7944629 (= input!7927 testedP!447)))

(declare-fun call!736322 () Unit!169688)

(assert (=> b!7944629 (= lt!2697714 call!736322)))

(declare-fun lt!2697704 () Unit!169688)

(declare-fun lt!2697707 () Unit!169688)

(assert (=> b!7944629 (= lt!2697704 lt!2697707)))

(declare-fun call!736321 () Bool)

(assert (=> b!7944629 call!736321))

(declare-fun call!736320 () Unit!169688)

(assert (=> b!7944629 (= lt!2697707 call!736320)))

(declare-fun e!4687339 () tuple2!70520)

(assert (=> b!7944629 (= e!4687338 e!4687339)))

(declare-fun bm!736314 () Bool)

(declare-fun call!736324 () Regex!21429)

(assert (=> bm!736314 (= call!736324 (derivativeStep!6480 r!24602 call!736325))))

(declare-fun bm!736315 () Bool)

(assert (=> bm!736315 (= call!736321 (isPrefix!6529 input!7927 input!7927))))

(declare-fun bm!736317 () Bool)

(declare-fun lemmaIsPrefixRefl!4012 (List!74658 List!74658) Unit!169688)

(assert (=> bm!736317 (= call!736320 (lemmaIsPrefixRefl!4012 input!7927 input!7927))))

(declare-fun bm!736318 () Bool)

(declare-fun call!736318 () List!74658)

(assert (=> bm!736318 (= call!736318 (tail!15745 lt!2697609))))

(declare-fun b!7944630 () Bool)

(declare-fun e!4687337 () tuple2!70520)

(assert (=> b!7944630 (= e!4687337 e!4687338)))

(declare-fun c!1459485 () Bool)

(assert (=> b!7944630 (= c!1459485 (= lt!2697608 (size!43365 input!7927)))))

(declare-fun bm!736319 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1594 (List!74658 List!74658 List!74658) Unit!169688)

(assert (=> bm!736319 (= call!736322 (lemmaIsPrefixSameLengthThenSameList!1594 input!7927 testedP!447 input!7927))))

(declare-fun b!7944631 () Bool)

(declare-fun call!736323 () tuple2!70520)

(assert (=> b!7944631 (= e!4687341 call!736323)))

(declare-fun b!7944632 () Bool)

(assert (=> b!7944632 (= e!4687339 (tuple2!70521 testedP!447 Nil!74534))))

(declare-fun b!7944633 () Bool)

(declare-fun lt!2697706 () tuple2!70520)

(assert (=> b!7944633 (= e!4687340 lt!2697706)))

(declare-fun b!7944634 () Bool)

(assert (=> b!7944634 (= e!4687339 (tuple2!70521 Nil!74534 input!7927))))

(declare-fun b!7944635 () Bool)

(declare-fun Unit!169690 () Unit!169688)

(assert (=> b!7944635 (= e!4687335 Unit!169690)))

(declare-fun bm!736320 () Bool)

(assert (=> bm!736320 (= call!736323 (findLongestMatchInner!2210 call!736324 lt!2697696 (+ lt!2697608 1) call!736318 input!7927 (size!43365 input!7927)))))

(declare-fun b!7944636 () Bool)

(declare-fun Unit!169691 () Unit!169688)

(assert (=> b!7944636 (= e!4687335 Unit!169691)))

(declare-fun lt!2697690 () Unit!169688)

(assert (=> b!7944636 (= lt!2697690 call!736320)))

(assert (=> b!7944636 call!736321))

(declare-fun lt!2697692 () Unit!169688)

(assert (=> b!7944636 (= lt!2697692 lt!2697690)))

(declare-fun lt!2697699 () Unit!169688)

(assert (=> b!7944636 (= lt!2697699 call!736322)))

(assert (=> b!7944636 (= input!7927 testedP!447)))

(declare-fun lt!2697695 () Unit!169688)

(assert (=> b!7944636 (= lt!2697695 lt!2697699)))

(assert (=> b!7944636 false))

(declare-fun b!7944637 () Bool)

(assert (=> b!7944637 (= e!4687341 e!4687340)))

(assert (=> b!7944637 (= lt!2697706 call!736323)))

(declare-fun c!1459484 () Bool)

(assert (=> b!7944637 (= c!1459484 (isEmpty!42833 (_1!38563 lt!2697706)))))

(declare-fun b!7944638 () Bool)

(assert (=> b!7944638 (= e!4687336 (>= (size!43365 (_1!38563 lt!2697709)) (size!43365 testedP!447)))))

(declare-fun b!7944639 () Bool)

(assert (=> b!7944639 (= e!4687337 (tuple2!70521 Nil!74534 input!7927))))

(declare-fun bm!736316 () Bool)

(assert (=> bm!736316 (= call!736319 (nullable!9543 r!24602))))

(declare-fun d!2375357 () Bool)

(assert (=> d!2375357 e!4687342))

(declare-fun res!3151250 () Bool)

(assert (=> d!2375357 (=> (not res!3151250) (not e!4687342))))

(assert (=> d!2375357 (= res!3151250 (= (++!18315 (_1!38563 lt!2697709) (_2!38563 lt!2697709)) input!7927))))

(assert (=> d!2375357 (= lt!2697709 e!4687337)))

(declare-fun c!1459483 () Bool)

(declare-fun lostCause!1945 (Regex!21429) Bool)

(assert (=> d!2375357 (= c!1459483 (lostCause!1945 r!24602))))

(declare-fun lt!2697705 () Unit!169688)

(declare-fun Unit!169695 () Unit!169688)

(assert (=> d!2375357 (= lt!2697705 Unit!169695)))

(assert (=> d!2375357 (= (getSuffix!3732 input!7927 testedP!447) lt!2697609)))

(declare-fun lt!2697708 () Unit!169688)

(declare-fun lt!2697712 () Unit!169688)

(assert (=> d!2375357 (= lt!2697708 lt!2697712)))

(declare-fun lt!2697713 () List!74658)

(assert (=> d!2375357 (= lt!2697609 lt!2697713)))

(declare-fun lemmaSamePrefixThenSameSuffix!2961 (List!74658 List!74658 List!74658 List!74658 List!74658) Unit!169688)

(assert (=> d!2375357 (= lt!2697712 (lemmaSamePrefixThenSameSuffix!2961 testedP!447 lt!2697609 testedP!447 lt!2697713 input!7927))))

(assert (=> d!2375357 (= lt!2697713 (getSuffix!3732 input!7927 testedP!447))))

(declare-fun lt!2697715 () Unit!169688)

(declare-fun lt!2697710 () Unit!169688)

(assert (=> d!2375357 (= lt!2697715 lt!2697710)))

(assert (=> d!2375357 (isPrefix!6529 testedP!447 (++!18315 testedP!447 lt!2697609))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3823 (List!74658 List!74658) Unit!169688)

(assert (=> d!2375357 (= lt!2697710 (lemmaConcatTwoListThenFirstIsPrefix!3823 testedP!447 lt!2697609))))

(assert (=> d!2375357 (validRegex!11733 r!24602)))

(assert (=> d!2375357 (= (findLongestMatchInner!2210 r!24602 testedP!447 lt!2697608 lt!2697609 input!7927 (size!43365 input!7927)) lt!2697709)))

(assert (= (and d!2375357 c!1459483) b!7944639))

(assert (= (and d!2375357 (not c!1459483)) b!7944630))

(assert (= (and b!7944630 c!1459485) b!7944629))

(assert (= (and b!7944630 (not c!1459485)) b!7944627))

(assert (= (and b!7944629 c!1459488) b!7944632))

(assert (= (and b!7944629 (not c!1459488)) b!7944634))

(assert (= (and b!7944627 c!1459486) b!7944636))

(assert (= (and b!7944627 (not c!1459486)) b!7944635))

(assert (= (and b!7944627 c!1459487) b!7944637))

(assert (= (and b!7944627 (not c!1459487)) b!7944631))

(assert (= (and b!7944637 c!1459484) b!7944626))

(assert (= (and b!7944637 (not c!1459484)) b!7944633))

(assert (= (or b!7944637 b!7944631) bm!736313))

(assert (= (or b!7944637 b!7944631) bm!736318))

(assert (= (or b!7944637 b!7944631) bm!736314))

(assert (= (or b!7944637 b!7944631) bm!736320))

(assert (= (or b!7944629 b!7944627) bm!736316))

(assert (= (or b!7944629 b!7944636) bm!736319))

(assert (= (or b!7944629 b!7944636) bm!736317))

(assert (= (or b!7944629 b!7944636) bm!736315))

(assert (= (and d!2375357 res!3151250) b!7944628))

(assert (= (and b!7944628 (not res!3151251)) b!7944638))

(declare-fun m!8331664 () Bool)

(assert (=> bm!736318 m!8331664))

(declare-fun m!8331666 () Bool)

(assert (=> b!7944628 m!8331666))

(declare-fun m!8331668 () Bool)

(assert (=> b!7944637 m!8331668))

(declare-fun m!8331670 () Bool)

(assert (=> b!7944627 m!8331670))

(assert (=> b!7944627 m!8331580))

(declare-fun m!8331672 () Bool)

(assert (=> b!7944627 m!8331672))

(assert (=> b!7944627 m!8331574))

(declare-fun m!8331674 () Bool)

(assert (=> b!7944627 m!8331674))

(declare-fun m!8331676 () Bool)

(assert (=> b!7944627 m!8331676))

(declare-fun m!8331678 () Bool)

(assert (=> b!7944627 m!8331678))

(declare-fun m!8331680 () Bool)

(assert (=> b!7944627 m!8331680))

(assert (=> b!7944627 m!8331580))

(declare-fun m!8331682 () Bool)

(assert (=> b!7944627 m!8331682))

(declare-fun m!8331684 () Bool)

(assert (=> b!7944627 m!8331684))

(declare-fun m!8331686 () Bool)

(assert (=> b!7944627 m!8331686))

(declare-fun m!8331688 () Bool)

(assert (=> b!7944627 m!8331688))

(assert (=> b!7944627 m!8331684))

(assert (=> b!7944627 m!8331678))

(assert (=> b!7944627 m!8331572))

(assert (=> b!7944627 m!8331664))

(declare-fun m!8331690 () Bool)

(assert (=> bm!736319 m!8331690))

(declare-fun m!8331692 () Bool)

(assert (=> d!2375357 m!8331692))

(declare-fun m!8331694 () Bool)

(assert (=> d!2375357 m!8331694))

(declare-fun m!8331696 () Bool)

(assert (=> d!2375357 m!8331696))

(assert (=> d!2375357 m!8331580))

(assert (=> d!2375357 m!8331566))

(declare-fun m!8331698 () Bool)

(assert (=> d!2375357 m!8331698))

(assert (=> d!2375357 m!8331570))

(assert (=> d!2375357 m!8331570))

(declare-fun m!8331700 () Bool)

(assert (=> d!2375357 m!8331700))

(declare-fun m!8331702 () Bool)

(assert (=> bm!736314 m!8331702))

(assert (=> bm!736313 m!8331670))

(assert (=> bm!736320 m!8331574))

(declare-fun m!8331704 () Bool)

(assert (=> bm!736320 m!8331704))

(declare-fun m!8331706 () Bool)

(assert (=> bm!736315 m!8331706))

(declare-fun m!8331708 () Bool)

(assert (=> bm!736316 m!8331708))

(declare-fun m!8331710 () Bool)

(assert (=> b!7944638 m!8331710))

(assert (=> b!7944638 m!8331572))

(declare-fun m!8331712 () Bool)

(assert (=> bm!736317 m!8331712))

(assert (=> b!7944453 d!2375357))

(declare-fun d!2375365 () Bool)

(declare-fun lt!2697720 () List!74658)

(assert (=> d!2375365 (= (++!18315 testedP!447 lt!2697720) input!7927)))

(declare-fun e!4687345 () List!74658)

(assert (=> d!2375365 (= lt!2697720 e!4687345)))

(declare-fun c!1459491 () Bool)

(assert (=> d!2375365 (= c!1459491 ((_ is Cons!74534) testedP!447))))

(assert (=> d!2375365 (>= (size!43365 input!7927) (size!43365 testedP!447))))

(assert (=> d!2375365 (= (getSuffix!3732 input!7927 testedP!447) lt!2697720)))

(declare-fun b!7944644 () Bool)

(assert (=> b!7944644 (= e!4687345 (getSuffix!3732 (tail!15745 input!7927) (t!390401 testedP!447)))))

(declare-fun b!7944645 () Bool)

(assert (=> b!7944645 (= e!4687345 input!7927)))

(assert (= (and d!2375365 c!1459491) b!7944644))

(assert (= (and d!2375365 (not c!1459491)) b!7944645))

(declare-fun m!8331714 () Bool)

(assert (=> d!2375365 m!8331714))

(assert (=> d!2375365 m!8331574))

(assert (=> d!2375365 m!8331572))

(assert (=> b!7944644 m!8331600))

(assert (=> b!7944644 m!8331600))

(declare-fun m!8331716 () Bool)

(assert (=> b!7944644 m!8331716))

(assert (=> b!7944453 d!2375365))

(declare-fun d!2375367 () Bool)

(assert (=> d!2375367 (= (isEmpty!42833 (_1!38563 (findLongestMatchInner!2210 r!24602 testedP!447 lt!2697608 lt!2697609 input!7927 (size!43365 input!7927)))) ((_ is Nil!74534) (_1!38563 (findLongestMatchInner!2210 r!24602 testedP!447 lt!2697608 lt!2697609 input!7927 (size!43365 input!7927)))))))

(assert (=> b!7944453 d!2375367))

(declare-fun d!2375369 () Bool)

(declare-fun lt!2697721 () Int)

(assert (=> d!2375369 (>= lt!2697721 0)))

(declare-fun e!4687346 () Int)

(assert (=> d!2375369 (= lt!2697721 e!4687346)))

(declare-fun c!1459492 () Bool)

(assert (=> d!2375369 (= c!1459492 ((_ is Nil!74534) testedP!447))))

(assert (=> d!2375369 (= (size!43365 testedP!447) lt!2697721)))

(declare-fun b!7944646 () Bool)

(assert (=> b!7944646 (= e!4687346 0)))

(declare-fun b!7944647 () Bool)

(assert (=> b!7944647 (= e!4687346 (+ 1 (size!43365 (t!390401 testedP!447))))))

(assert (= (and d!2375369 c!1459492) b!7944646))

(assert (= (and d!2375369 (not c!1459492)) b!7944647))

(declare-fun m!8331718 () Bool)

(assert (=> b!7944647 m!8331718))

(assert (=> b!7944453 d!2375369))

(declare-fun b!7944659 () Bool)

(declare-fun e!4687349 () Bool)

(declare-fun tp!2362899 () Bool)

(declare-fun tp!2362901 () Bool)

(assert (=> b!7944659 (= e!4687349 (and tp!2362899 tp!2362901))))

(declare-fun b!7944660 () Bool)

(declare-fun tp!2362900 () Bool)

(assert (=> b!7944660 (= e!4687349 tp!2362900)))

(declare-fun b!7944658 () Bool)

(assert (=> b!7944658 (= e!4687349 tp_is_empty!53401)))

(declare-fun b!7944661 () Bool)

(declare-fun tp!2362897 () Bool)

(declare-fun tp!2362898 () Bool)

(assert (=> b!7944661 (= e!4687349 (and tp!2362897 tp!2362898))))

(assert (=> b!7944462 (= tp!2362876 e!4687349)))

(assert (= (and b!7944462 ((_ is ElementMatch!21429) (regOne!43370 r!24602))) b!7944658))

(assert (= (and b!7944462 ((_ is Concat!30428) (regOne!43370 r!24602))) b!7944659))

(assert (= (and b!7944462 ((_ is Star!21429) (regOne!43370 r!24602))) b!7944660))

(assert (= (and b!7944462 ((_ is Union!21429) (regOne!43370 r!24602))) b!7944661))

(declare-fun b!7944663 () Bool)

(declare-fun e!4687350 () Bool)

(declare-fun tp!2362904 () Bool)

(declare-fun tp!2362906 () Bool)

(assert (=> b!7944663 (= e!4687350 (and tp!2362904 tp!2362906))))

(declare-fun b!7944664 () Bool)

(declare-fun tp!2362905 () Bool)

(assert (=> b!7944664 (= e!4687350 tp!2362905)))

(declare-fun b!7944662 () Bool)

(assert (=> b!7944662 (= e!4687350 tp_is_empty!53401)))

(declare-fun b!7944665 () Bool)

(declare-fun tp!2362902 () Bool)

(declare-fun tp!2362903 () Bool)

(assert (=> b!7944665 (= e!4687350 (and tp!2362902 tp!2362903))))

(assert (=> b!7944462 (= tp!2362884 e!4687350)))

(assert (= (and b!7944462 ((_ is ElementMatch!21429) (regTwo!43370 r!24602))) b!7944662))

(assert (= (and b!7944462 ((_ is Concat!30428) (regTwo!43370 r!24602))) b!7944663))

(assert (= (and b!7944462 ((_ is Star!21429) (regTwo!43370 r!24602))) b!7944664))

(assert (= (and b!7944462 ((_ is Union!21429) (regTwo!43370 r!24602))) b!7944665))

(declare-fun b!7944670 () Bool)

(declare-fun e!4687353 () Bool)

(declare-fun tp!2362909 () Bool)

(assert (=> b!7944670 (= e!4687353 (and tp_is_empty!53401 tp!2362909))))

(assert (=> b!7944451 (= tp!2362879 e!4687353)))

(assert (= (and b!7944451 ((_ is Cons!74534) (t!390401 input!7927))) b!7944670))

(declare-fun b!7944671 () Bool)

(declare-fun e!4687354 () Bool)

(declare-fun tp!2362910 () Bool)

(assert (=> b!7944671 (= e!4687354 (and tp_is_empty!53401 tp!2362910))))

(assert (=> b!7944452 (= tp!2362886 e!4687354)))

(assert (= (and b!7944452 ((_ is Cons!74534) (t!390401 testedP!447))) b!7944671))

(declare-fun b!7944673 () Bool)

(declare-fun e!4687355 () Bool)

(declare-fun tp!2362913 () Bool)

(declare-fun tp!2362915 () Bool)

(assert (=> b!7944673 (= e!4687355 (and tp!2362913 tp!2362915))))

(declare-fun b!7944674 () Bool)

(declare-fun tp!2362914 () Bool)

(assert (=> b!7944674 (= e!4687355 tp!2362914)))

(declare-fun b!7944672 () Bool)

(assert (=> b!7944672 (= e!4687355 tp_is_empty!53401)))

(declare-fun b!7944675 () Bool)

(declare-fun tp!2362911 () Bool)

(declare-fun tp!2362912 () Bool)

(assert (=> b!7944675 (= e!4687355 (and tp!2362911 tp!2362912))))

(assert (=> b!7944461 (= tp!2362881 e!4687355)))

(assert (= (and b!7944461 ((_ is ElementMatch!21429) (reg!21758 r!24602))) b!7944672))

(assert (= (and b!7944461 ((_ is Concat!30428) (reg!21758 r!24602))) b!7944673))

(assert (= (and b!7944461 ((_ is Star!21429) (reg!21758 r!24602))) b!7944674))

(assert (= (and b!7944461 ((_ is Union!21429) (reg!21758 r!24602))) b!7944675))

(declare-fun b!7944677 () Bool)

(declare-fun e!4687356 () Bool)

(declare-fun tp!2362918 () Bool)

(declare-fun tp!2362920 () Bool)

(assert (=> b!7944677 (= e!4687356 (and tp!2362918 tp!2362920))))

(declare-fun b!7944678 () Bool)

(declare-fun tp!2362919 () Bool)

(assert (=> b!7944678 (= e!4687356 tp!2362919)))

(declare-fun b!7944676 () Bool)

(assert (=> b!7944676 (= e!4687356 tp_is_empty!53401)))

(declare-fun b!7944679 () Bool)

(declare-fun tp!2362916 () Bool)

(declare-fun tp!2362917 () Bool)

(assert (=> b!7944679 (= e!4687356 (and tp!2362916 tp!2362917))))

(assert (=> b!7944454 (= tp!2362878 e!4687356)))

(assert (= (and b!7944454 ((_ is ElementMatch!21429) (regOne!43371 baseR!116))) b!7944676))

(assert (= (and b!7944454 ((_ is Concat!30428) (regOne!43371 baseR!116))) b!7944677))

(assert (= (and b!7944454 ((_ is Star!21429) (regOne!43371 baseR!116))) b!7944678))

(assert (= (and b!7944454 ((_ is Union!21429) (regOne!43371 baseR!116))) b!7944679))

(declare-fun b!7944681 () Bool)

(declare-fun e!4687357 () Bool)

(declare-fun tp!2362923 () Bool)

(declare-fun tp!2362925 () Bool)

(assert (=> b!7944681 (= e!4687357 (and tp!2362923 tp!2362925))))

(declare-fun b!7944682 () Bool)

(declare-fun tp!2362924 () Bool)

(assert (=> b!7944682 (= e!4687357 tp!2362924)))

(declare-fun b!7944680 () Bool)

(assert (=> b!7944680 (= e!4687357 tp_is_empty!53401)))

(declare-fun b!7944683 () Bool)

(declare-fun tp!2362921 () Bool)

(declare-fun tp!2362922 () Bool)

(assert (=> b!7944683 (= e!4687357 (and tp!2362921 tp!2362922))))

(assert (=> b!7944454 (= tp!2362882 e!4687357)))

(assert (= (and b!7944454 ((_ is ElementMatch!21429) (regTwo!43371 baseR!116))) b!7944680))

(assert (= (and b!7944454 ((_ is Concat!30428) (regTwo!43371 baseR!116))) b!7944681))

(assert (= (and b!7944454 ((_ is Star!21429) (regTwo!43371 baseR!116))) b!7944682))

(assert (= (and b!7944454 ((_ is Union!21429) (regTwo!43371 baseR!116))) b!7944683))

(declare-fun b!7944685 () Bool)

(declare-fun e!4687358 () Bool)

(declare-fun tp!2362928 () Bool)

(declare-fun tp!2362930 () Bool)

(assert (=> b!7944685 (= e!4687358 (and tp!2362928 tp!2362930))))

(declare-fun b!7944686 () Bool)

(declare-fun tp!2362929 () Bool)

(assert (=> b!7944686 (= e!4687358 tp!2362929)))

(declare-fun b!7944684 () Bool)

(assert (=> b!7944684 (= e!4687358 tp_is_empty!53401)))

(declare-fun b!7944687 () Bool)

(declare-fun tp!2362926 () Bool)

(declare-fun tp!2362927 () Bool)

(assert (=> b!7944687 (= e!4687358 (and tp!2362926 tp!2362927))))

(assert (=> b!7944459 (= tp!2362880 e!4687358)))

(assert (= (and b!7944459 ((_ is ElementMatch!21429) (regOne!43370 baseR!116))) b!7944684))

(assert (= (and b!7944459 ((_ is Concat!30428) (regOne!43370 baseR!116))) b!7944685))

(assert (= (and b!7944459 ((_ is Star!21429) (regOne!43370 baseR!116))) b!7944686))

(assert (= (and b!7944459 ((_ is Union!21429) (regOne!43370 baseR!116))) b!7944687))

(declare-fun b!7944689 () Bool)

(declare-fun e!4687359 () Bool)

(declare-fun tp!2362933 () Bool)

(declare-fun tp!2362935 () Bool)

(assert (=> b!7944689 (= e!4687359 (and tp!2362933 tp!2362935))))

(declare-fun b!7944690 () Bool)

(declare-fun tp!2362934 () Bool)

(assert (=> b!7944690 (= e!4687359 tp!2362934)))

(declare-fun b!7944688 () Bool)

(assert (=> b!7944688 (= e!4687359 tp_is_empty!53401)))

(declare-fun b!7944691 () Bool)

(declare-fun tp!2362931 () Bool)

(declare-fun tp!2362932 () Bool)

(assert (=> b!7944691 (= e!4687359 (and tp!2362931 tp!2362932))))

(assert (=> b!7944459 (= tp!2362883 e!4687359)))

(assert (= (and b!7944459 ((_ is ElementMatch!21429) (regTwo!43370 baseR!116))) b!7944688))

(assert (= (and b!7944459 ((_ is Concat!30428) (regTwo!43370 baseR!116))) b!7944689))

(assert (= (and b!7944459 ((_ is Star!21429) (regTwo!43370 baseR!116))) b!7944690))

(assert (= (and b!7944459 ((_ is Union!21429) (regTwo!43370 baseR!116))) b!7944691))

(declare-fun b!7944693 () Bool)

(declare-fun e!4687360 () Bool)

(declare-fun tp!2362938 () Bool)

(declare-fun tp!2362940 () Bool)

(assert (=> b!7944693 (= e!4687360 (and tp!2362938 tp!2362940))))

(declare-fun b!7944694 () Bool)

(declare-fun tp!2362939 () Bool)

(assert (=> b!7944694 (= e!4687360 tp!2362939)))

(declare-fun b!7944692 () Bool)

(assert (=> b!7944692 (= e!4687360 tp_is_empty!53401)))

(declare-fun b!7944695 () Bool)

(declare-fun tp!2362936 () Bool)

(declare-fun tp!2362937 () Bool)

(assert (=> b!7944695 (= e!4687360 (and tp!2362936 tp!2362937))))

(assert (=> b!7944460 (= tp!2362877 e!4687360)))

(assert (= (and b!7944460 ((_ is ElementMatch!21429) (regOne!43371 r!24602))) b!7944692))

(assert (= (and b!7944460 ((_ is Concat!30428) (regOne!43371 r!24602))) b!7944693))

(assert (= (and b!7944460 ((_ is Star!21429) (regOne!43371 r!24602))) b!7944694))

(assert (= (and b!7944460 ((_ is Union!21429) (regOne!43371 r!24602))) b!7944695))

(declare-fun b!7944697 () Bool)

(declare-fun e!4687361 () Bool)

(declare-fun tp!2362943 () Bool)

(declare-fun tp!2362945 () Bool)

(assert (=> b!7944697 (= e!4687361 (and tp!2362943 tp!2362945))))

(declare-fun b!7944698 () Bool)

(declare-fun tp!2362944 () Bool)

(assert (=> b!7944698 (= e!4687361 tp!2362944)))

(declare-fun b!7944696 () Bool)

(assert (=> b!7944696 (= e!4687361 tp_is_empty!53401)))

(declare-fun b!7944699 () Bool)

(declare-fun tp!2362941 () Bool)

(declare-fun tp!2362942 () Bool)

(assert (=> b!7944699 (= e!4687361 (and tp!2362941 tp!2362942))))

(assert (=> b!7944460 (= tp!2362875 e!4687361)))

(assert (= (and b!7944460 ((_ is ElementMatch!21429) (regTwo!43371 r!24602))) b!7944696))

(assert (= (and b!7944460 ((_ is Concat!30428) (regTwo!43371 r!24602))) b!7944697))

(assert (= (and b!7944460 ((_ is Star!21429) (regTwo!43371 r!24602))) b!7944698))

(assert (= (and b!7944460 ((_ is Union!21429) (regTwo!43371 r!24602))) b!7944699))

(declare-fun b!7944701 () Bool)

(declare-fun e!4687362 () Bool)

(declare-fun tp!2362948 () Bool)

(declare-fun tp!2362950 () Bool)

(assert (=> b!7944701 (= e!4687362 (and tp!2362948 tp!2362950))))

(declare-fun b!7944702 () Bool)

(declare-fun tp!2362949 () Bool)

(assert (=> b!7944702 (= e!4687362 tp!2362949)))

(declare-fun b!7944700 () Bool)

(assert (=> b!7944700 (= e!4687362 tp_is_empty!53401)))

(declare-fun b!7944703 () Bool)

(declare-fun tp!2362946 () Bool)

(declare-fun tp!2362947 () Bool)

(assert (=> b!7944703 (= e!4687362 (and tp!2362946 tp!2362947))))

(assert (=> b!7944448 (= tp!2362885 e!4687362)))

(assert (= (and b!7944448 ((_ is ElementMatch!21429) (reg!21758 baseR!116))) b!7944700))

(assert (= (and b!7944448 ((_ is Concat!30428) (reg!21758 baseR!116))) b!7944701))

(assert (= (and b!7944448 ((_ is Star!21429) (reg!21758 baseR!116))) b!7944702))

(assert (= (and b!7944448 ((_ is Union!21429) (reg!21758 baseR!116))) b!7944703))

(check-sat (not b!7944644) (not b!7944691) (not b!7944660) (not b!7944677) (not b!7944686) (not b!7944671) (not bm!736315) (not b!7944537) (not b!7944628) (not bm!736317) (not b!7944664) (not b!7944560) (not b!7944678) (not b!7944679) (not b!7944702) (not b!7944659) (not b!7944638) (not bm!736316) (not b!7944701) (not bm!736320) (not b!7944670) (not b!7944699) (not b!7944703) (not bm!736295) (not b!7944693) (not b!7944694) (not b!7944690) (not bm!736318) (not b!7944674) (not b!7944682) (not b!7944675) (not b!7944661) (not b!7944663) (not b!7944526) (not bm!736296) (not b!7944665) (not b!7944698) (not b!7944637) (not b!7944627) (not b!7944556) (not d!2375365) (not b!7944647) (not b!7944687) tp_is_empty!53401 (not bm!736289) (not b!7944527) (not b!7944683) (not bm!736313) (not b!7944528) (not d!2375347) (not b!7944673) (not bm!736319) (not b!7944697) (not d!2375349) (not b!7944695) (not bm!736290) (not b!7944573) (not bm!736314) (not b!7944557) (not b!7944500) (not b!7944681) (not b!7944689) (not d!2375357) (not b!7944685))
(check-sat)
