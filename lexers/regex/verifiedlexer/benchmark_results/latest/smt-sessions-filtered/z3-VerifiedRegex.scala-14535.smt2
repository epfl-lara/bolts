; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754944 () Bool)

(assert start!754944)

(declare-fun b!8020391 () Bool)

(declare-fun e!4724612 () Bool)

(declare-fun tp_is_empty!54045 () Bool)

(declare-fun tp!2400484 () Bool)

(assert (=> b!8020391 (= e!4724612 (and tp_is_empty!54045 tp!2400484))))

(declare-fun b!8020392 () Bool)

(declare-fun e!4724611 () Bool)

(declare-datatypes ((B!4157 0))(
  ( (B!4158 (val!32468 Int)) )
))
(declare-datatypes ((List!74980 0))(
  ( (Nil!74856) (Cons!74856 (h!81304 B!4157) (t!390723 List!74980)) )
))
(declare-fun p1!173 () List!74980)

(declare-fun p2!173 () List!74980)

(get-info :version)

(assert (=> b!8020392 (= e!4724611 (and ((_ is Cons!74856) p1!173) (= p2!173 Nil!74856)))))

(declare-fun b!8020393 () Bool)

(declare-fun res!3171195 () Bool)

(assert (=> b!8020393 (=> (not res!3171195) (not e!4724611))))

(declare-fun l!3353 () List!74980)

(declare-fun isPrefix!6787 (List!74980 List!74980) Bool)

(assert (=> b!8020393 (= res!3171195 (isPrefix!6787 p2!173 l!3353))))

(declare-fun b!8020394 () Bool)

(declare-fun e!4724613 () Bool)

(declare-fun tp!2400483 () Bool)

(assert (=> b!8020394 (= e!4724613 (and tp_is_empty!54045 tp!2400483))))

(declare-fun b!8020395 () Bool)

(declare-fun res!3171194 () Bool)

(assert (=> b!8020395 (=> (not res!3171194) (not e!4724611))))

(declare-fun size!43641 (List!74980) Int)

(assert (=> b!8020395 (= res!3171194 (= (size!43641 p1!173) (size!43641 p2!173)))))

(declare-fun b!8020396 () Bool)

(declare-fun e!4724610 () Bool)

(declare-fun tp!2400482 () Bool)

(assert (=> b!8020396 (= e!4724610 (and tp_is_empty!54045 tp!2400482))))

(declare-fun res!3171196 () Bool)

(assert (=> start!754944 (=> (not res!3171196) (not e!4724611))))

(assert (=> start!754944 (= res!3171196 (isPrefix!6787 p1!173 l!3353))))

(assert (=> start!754944 e!4724611))

(assert (=> start!754944 e!4724613))

(assert (=> start!754944 e!4724612))

(assert (=> start!754944 e!4724610))

(assert (= (and start!754944 res!3171196) b!8020393))

(assert (= (and b!8020393 res!3171195) b!8020395))

(assert (= (and b!8020395 res!3171194) b!8020392))

(assert (= (and start!754944 ((_ is Cons!74856) p1!173)) b!8020394))

(assert (= (and start!754944 ((_ is Cons!74856) l!3353)) b!8020391))

(assert (= (and start!754944 ((_ is Cons!74856) p2!173)) b!8020396))

(declare-fun m!8383390 () Bool)

(assert (=> b!8020393 m!8383390))

(declare-fun m!8383392 () Bool)

(assert (=> b!8020395 m!8383392))

(declare-fun m!8383394 () Bool)

(assert (=> b!8020395 m!8383394))

(declare-fun m!8383396 () Bool)

(assert (=> start!754944 m!8383396))

(check-sat (not b!8020396) (not b!8020393) (not start!754944) (not b!8020394) (not b!8020395) tp_is_empty!54045 (not b!8020391))
(check-sat)
(get-model)

(declare-fun b!8020438 () Bool)

(declare-fun e!4724642 () Bool)

(declare-fun tail!15931 (List!74980) List!74980)

(assert (=> b!8020438 (= e!4724642 (isPrefix!6787 (tail!15931 p2!173) (tail!15931 l!3353)))))

(declare-fun b!8020439 () Bool)

(declare-fun e!4724641 () Bool)

(assert (=> b!8020439 (= e!4724641 (>= (size!43641 l!3353) (size!43641 p2!173)))))

(declare-fun d!2391558 () Bool)

(assert (=> d!2391558 e!4724641))

(declare-fun res!3171223 () Bool)

(assert (=> d!2391558 (=> res!3171223 e!4724641)))

(declare-fun lt!2719798 () Bool)

(assert (=> d!2391558 (= res!3171223 (not lt!2719798))))

(declare-fun e!4724643 () Bool)

(assert (=> d!2391558 (= lt!2719798 e!4724643)))

(declare-fun res!3171224 () Bool)

(assert (=> d!2391558 (=> res!3171224 e!4724643)))

(assert (=> d!2391558 (= res!3171224 ((_ is Nil!74856) p2!173))))

(assert (=> d!2391558 (= (isPrefix!6787 p2!173 l!3353) lt!2719798)))

(declare-fun b!8020437 () Bool)

(declare-fun res!3171222 () Bool)

(assert (=> b!8020437 (=> (not res!3171222) (not e!4724642))))

(declare-fun head!16398 (List!74980) B!4157)

(assert (=> b!8020437 (= res!3171222 (= (head!16398 p2!173) (head!16398 l!3353)))))

(declare-fun b!8020436 () Bool)

(assert (=> b!8020436 (= e!4724643 e!4724642)))

(declare-fun res!3171221 () Bool)

(assert (=> b!8020436 (=> (not res!3171221) (not e!4724642))))

(assert (=> b!8020436 (= res!3171221 (not ((_ is Nil!74856) l!3353)))))

(assert (= (and d!2391558 (not res!3171224)) b!8020436))

(assert (= (and b!8020436 res!3171221) b!8020437))

(assert (= (and b!8020437 res!3171222) b!8020438))

(assert (= (and d!2391558 (not res!3171223)) b!8020439))

(declare-fun m!8383420 () Bool)

(assert (=> b!8020438 m!8383420))

(declare-fun m!8383422 () Bool)

(assert (=> b!8020438 m!8383422))

(assert (=> b!8020438 m!8383420))

(assert (=> b!8020438 m!8383422))

(declare-fun m!8383424 () Bool)

(assert (=> b!8020438 m!8383424))

(declare-fun m!8383426 () Bool)

(assert (=> b!8020439 m!8383426))

(assert (=> b!8020439 m!8383394))

(declare-fun m!8383428 () Bool)

(assert (=> b!8020437 m!8383428))

(declare-fun m!8383430 () Bool)

(assert (=> b!8020437 m!8383430))

(assert (=> b!8020393 d!2391558))

(declare-fun b!8020442 () Bool)

(declare-fun e!4724645 () Bool)

(assert (=> b!8020442 (= e!4724645 (isPrefix!6787 (tail!15931 p1!173) (tail!15931 l!3353)))))

(declare-fun b!8020443 () Bool)

(declare-fun e!4724644 () Bool)

(assert (=> b!8020443 (= e!4724644 (>= (size!43641 l!3353) (size!43641 p1!173)))))

(declare-fun d!2391562 () Bool)

(assert (=> d!2391562 e!4724644))

(declare-fun res!3171227 () Bool)

(assert (=> d!2391562 (=> res!3171227 e!4724644)))

(declare-fun lt!2719799 () Bool)

(assert (=> d!2391562 (= res!3171227 (not lt!2719799))))

(declare-fun e!4724646 () Bool)

(assert (=> d!2391562 (= lt!2719799 e!4724646)))

(declare-fun res!3171228 () Bool)

(assert (=> d!2391562 (=> res!3171228 e!4724646)))

(assert (=> d!2391562 (= res!3171228 ((_ is Nil!74856) p1!173))))

(assert (=> d!2391562 (= (isPrefix!6787 p1!173 l!3353) lt!2719799)))

(declare-fun b!8020441 () Bool)

(declare-fun res!3171226 () Bool)

(assert (=> b!8020441 (=> (not res!3171226) (not e!4724645))))

(assert (=> b!8020441 (= res!3171226 (= (head!16398 p1!173) (head!16398 l!3353)))))

(declare-fun b!8020440 () Bool)

(assert (=> b!8020440 (= e!4724646 e!4724645)))

(declare-fun res!3171225 () Bool)

(assert (=> b!8020440 (=> (not res!3171225) (not e!4724645))))

(assert (=> b!8020440 (= res!3171225 (not ((_ is Nil!74856) l!3353)))))

(assert (= (and d!2391562 (not res!3171228)) b!8020440))

(assert (= (and b!8020440 res!3171225) b!8020441))

(assert (= (and b!8020441 res!3171226) b!8020442))

(assert (= (and d!2391562 (not res!3171227)) b!8020443))

(declare-fun m!8383432 () Bool)

(assert (=> b!8020442 m!8383432))

(assert (=> b!8020442 m!8383422))

(assert (=> b!8020442 m!8383432))

(assert (=> b!8020442 m!8383422))

(declare-fun m!8383434 () Bool)

(assert (=> b!8020442 m!8383434))

(assert (=> b!8020443 m!8383426))

(assert (=> b!8020443 m!8383392))

(declare-fun m!8383436 () Bool)

(assert (=> b!8020441 m!8383436))

(assert (=> b!8020441 m!8383430))

(assert (=> start!754944 d!2391562))

(declare-fun d!2391564 () Bool)

(declare-fun lt!2719802 () Int)

(assert (=> d!2391564 (>= lt!2719802 0)))

(declare-fun e!4724649 () Int)

(assert (=> d!2391564 (= lt!2719802 e!4724649)))

(declare-fun c!1472039 () Bool)

(assert (=> d!2391564 (= c!1472039 ((_ is Nil!74856) p1!173))))

(assert (=> d!2391564 (= (size!43641 p1!173) lt!2719802)))

(declare-fun b!8020448 () Bool)

(assert (=> b!8020448 (= e!4724649 0)))

(declare-fun b!8020449 () Bool)

(assert (=> b!8020449 (= e!4724649 (+ 1 (size!43641 (t!390723 p1!173))))))

(assert (= (and d!2391564 c!1472039) b!8020448))

(assert (= (and d!2391564 (not c!1472039)) b!8020449))

(declare-fun m!8383438 () Bool)

(assert (=> b!8020449 m!8383438))

(assert (=> b!8020395 d!2391564))

(declare-fun d!2391566 () Bool)

(declare-fun lt!2719803 () Int)

(assert (=> d!2391566 (>= lt!2719803 0)))

(declare-fun e!4724650 () Int)

(assert (=> d!2391566 (= lt!2719803 e!4724650)))

(declare-fun c!1472040 () Bool)

(assert (=> d!2391566 (= c!1472040 ((_ is Nil!74856) p2!173))))

(assert (=> d!2391566 (= (size!43641 p2!173) lt!2719803)))

(declare-fun b!8020450 () Bool)

(assert (=> b!8020450 (= e!4724650 0)))

(declare-fun b!8020451 () Bool)

(assert (=> b!8020451 (= e!4724650 (+ 1 (size!43641 (t!390723 p2!173))))))

(assert (= (and d!2391566 c!1472040) b!8020450))

(assert (= (and d!2391566 (not c!1472040)) b!8020451))

(declare-fun m!8383440 () Bool)

(assert (=> b!8020451 m!8383440))

(assert (=> b!8020395 d!2391566))

(declare-fun b!8020456 () Bool)

(declare-fun e!4724653 () Bool)

(declare-fun tp!2400492 () Bool)

(assert (=> b!8020456 (= e!4724653 (and tp_is_empty!54045 tp!2400492))))

(assert (=> b!8020394 (= tp!2400483 e!4724653)))

(assert (= (and b!8020394 ((_ is Cons!74856) (t!390723 p1!173))) b!8020456))

(declare-fun b!8020457 () Bool)

(declare-fun e!4724654 () Bool)

(declare-fun tp!2400493 () Bool)

(assert (=> b!8020457 (= e!4724654 (and tp_is_empty!54045 tp!2400493))))

(assert (=> b!8020391 (= tp!2400484 e!4724654)))

(assert (= (and b!8020391 ((_ is Cons!74856) (t!390723 l!3353))) b!8020457))

(declare-fun b!8020458 () Bool)

(declare-fun e!4724655 () Bool)

(declare-fun tp!2400494 () Bool)

(assert (=> b!8020458 (= e!4724655 (and tp_is_empty!54045 tp!2400494))))

(assert (=> b!8020396 (= tp!2400482 e!4724655)))

(assert (= (and b!8020396 ((_ is Cons!74856) (t!390723 p2!173))) b!8020458))

(check-sat (not b!8020451) (not b!8020458) tp_is_empty!54045 (not b!8020438) (not b!8020449) (not b!8020457) (not b!8020443) (not b!8020456) (not b!8020442) (not b!8020437) (not b!8020439) (not b!8020441))
(check-sat)
(get-model)

(declare-fun d!2391590 () Bool)

(declare-fun lt!2719809 () Int)

(assert (=> d!2391590 (>= lt!2719809 0)))

(declare-fun e!4724668 () Int)

(assert (=> d!2391590 (= lt!2719809 e!4724668)))

(declare-fun c!1472044 () Bool)

(assert (=> d!2391590 (= c!1472044 ((_ is Nil!74856) (t!390723 p2!173)))))

(assert (=> d!2391590 (= (size!43641 (t!390723 p2!173)) lt!2719809)))

(declare-fun b!8020476 () Bool)

(assert (=> b!8020476 (= e!4724668 0)))

(declare-fun b!8020477 () Bool)

(assert (=> b!8020477 (= e!4724668 (+ 1 (size!43641 (t!390723 (t!390723 p2!173)))))))

(assert (= (and d!2391590 c!1472044) b!8020476))

(assert (= (and d!2391590 (not c!1472044)) b!8020477))

(declare-fun m!8383470 () Bool)

(assert (=> b!8020477 m!8383470))

(assert (=> b!8020451 d!2391590))

(declare-fun d!2391592 () Bool)

(assert (=> d!2391592 (= (head!16398 p2!173) (h!81304 p2!173))))

(assert (=> b!8020437 d!2391592))

(declare-fun d!2391594 () Bool)

(assert (=> d!2391594 (= (head!16398 l!3353) (h!81304 l!3353))))

(assert (=> b!8020437 d!2391594))

(declare-fun d!2391596 () Bool)

(assert (=> d!2391596 (= (head!16398 p1!173) (h!81304 p1!173))))

(assert (=> b!8020441 d!2391596))

(assert (=> b!8020441 d!2391594))

(declare-fun b!8020480 () Bool)

(declare-fun e!4724670 () Bool)

(assert (=> b!8020480 (= e!4724670 (isPrefix!6787 (tail!15931 (tail!15931 p1!173)) (tail!15931 (tail!15931 l!3353))))))

(declare-fun b!8020481 () Bool)

(declare-fun e!4724669 () Bool)

(assert (=> b!8020481 (= e!4724669 (>= (size!43641 (tail!15931 l!3353)) (size!43641 (tail!15931 p1!173))))))

(declare-fun d!2391598 () Bool)

(assert (=> d!2391598 e!4724669))

(declare-fun res!3171239 () Bool)

(assert (=> d!2391598 (=> res!3171239 e!4724669)))

(declare-fun lt!2719810 () Bool)

(assert (=> d!2391598 (= res!3171239 (not lt!2719810))))

(declare-fun e!4724671 () Bool)

(assert (=> d!2391598 (= lt!2719810 e!4724671)))

(declare-fun res!3171240 () Bool)

(assert (=> d!2391598 (=> res!3171240 e!4724671)))

(assert (=> d!2391598 (= res!3171240 ((_ is Nil!74856) (tail!15931 p1!173)))))

(assert (=> d!2391598 (= (isPrefix!6787 (tail!15931 p1!173) (tail!15931 l!3353)) lt!2719810)))

(declare-fun b!8020479 () Bool)

(declare-fun res!3171238 () Bool)

(assert (=> b!8020479 (=> (not res!3171238) (not e!4724670))))

(assert (=> b!8020479 (= res!3171238 (= (head!16398 (tail!15931 p1!173)) (head!16398 (tail!15931 l!3353))))))

(declare-fun b!8020478 () Bool)

(assert (=> b!8020478 (= e!4724671 e!4724670)))

(declare-fun res!3171237 () Bool)

(assert (=> b!8020478 (=> (not res!3171237) (not e!4724670))))

(assert (=> b!8020478 (= res!3171237 (not ((_ is Nil!74856) (tail!15931 l!3353))))))

(assert (= (and d!2391598 (not res!3171240)) b!8020478))

(assert (= (and b!8020478 res!3171237) b!8020479))

(assert (= (and b!8020479 res!3171238) b!8020480))

(assert (= (and d!2391598 (not res!3171239)) b!8020481))

(assert (=> b!8020480 m!8383432))

(declare-fun m!8383472 () Bool)

(assert (=> b!8020480 m!8383472))

(assert (=> b!8020480 m!8383422))

(declare-fun m!8383474 () Bool)

(assert (=> b!8020480 m!8383474))

(assert (=> b!8020480 m!8383472))

(assert (=> b!8020480 m!8383474))

(declare-fun m!8383476 () Bool)

(assert (=> b!8020480 m!8383476))

(assert (=> b!8020481 m!8383422))

(declare-fun m!8383478 () Bool)

(assert (=> b!8020481 m!8383478))

(assert (=> b!8020481 m!8383432))

(declare-fun m!8383480 () Bool)

(assert (=> b!8020481 m!8383480))

(assert (=> b!8020479 m!8383432))

(declare-fun m!8383482 () Bool)

(assert (=> b!8020479 m!8383482))

(assert (=> b!8020479 m!8383422))

(declare-fun m!8383484 () Bool)

(assert (=> b!8020479 m!8383484))

(assert (=> b!8020442 d!2391598))

(declare-fun d!2391600 () Bool)

(assert (=> d!2391600 (= (tail!15931 p1!173) (t!390723 p1!173))))

(assert (=> b!8020442 d!2391600))

(declare-fun d!2391602 () Bool)

(assert (=> d!2391602 (= (tail!15931 l!3353) (t!390723 l!3353))))

(assert (=> b!8020442 d!2391602))

(declare-fun b!8020484 () Bool)

(declare-fun e!4724673 () Bool)

(assert (=> b!8020484 (= e!4724673 (isPrefix!6787 (tail!15931 (tail!15931 p2!173)) (tail!15931 (tail!15931 l!3353))))))

(declare-fun b!8020485 () Bool)

(declare-fun e!4724672 () Bool)

(assert (=> b!8020485 (= e!4724672 (>= (size!43641 (tail!15931 l!3353)) (size!43641 (tail!15931 p2!173))))))

(declare-fun d!2391604 () Bool)

(assert (=> d!2391604 e!4724672))

(declare-fun res!3171243 () Bool)

(assert (=> d!2391604 (=> res!3171243 e!4724672)))

(declare-fun lt!2719811 () Bool)

(assert (=> d!2391604 (= res!3171243 (not lt!2719811))))

(declare-fun e!4724674 () Bool)

(assert (=> d!2391604 (= lt!2719811 e!4724674)))

(declare-fun res!3171244 () Bool)

(assert (=> d!2391604 (=> res!3171244 e!4724674)))

(assert (=> d!2391604 (= res!3171244 ((_ is Nil!74856) (tail!15931 p2!173)))))

(assert (=> d!2391604 (= (isPrefix!6787 (tail!15931 p2!173) (tail!15931 l!3353)) lt!2719811)))

(declare-fun b!8020483 () Bool)

(declare-fun res!3171242 () Bool)

(assert (=> b!8020483 (=> (not res!3171242) (not e!4724673))))

(assert (=> b!8020483 (= res!3171242 (= (head!16398 (tail!15931 p2!173)) (head!16398 (tail!15931 l!3353))))))

(declare-fun b!8020482 () Bool)

(assert (=> b!8020482 (= e!4724674 e!4724673)))

(declare-fun res!3171241 () Bool)

(assert (=> b!8020482 (=> (not res!3171241) (not e!4724673))))

(assert (=> b!8020482 (= res!3171241 (not ((_ is Nil!74856) (tail!15931 l!3353))))))

(assert (= (and d!2391604 (not res!3171244)) b!8020482))

(assert (= (and b!8020482 res!3171241) b!8020483))

(assert (= (and b!8020483 res!3171242) b!8020484))

(assert (= (and d!2391604 (not res!3171243)) b!8020485))

(assert (=> b!8020484 m!8383420))

(declare-fun m!8383486 () Bool)

(assert (=> b!8020484 m!8383486))

(assert (=> b!8020484 m!8383422))

(assert (=> b!8020484 m!8383474))

(assert (=> b!8020484 m!8383486))

(assert (=> b!8020484 m!8383474))

(declare-fun m!8383488 () Bool)

(assert (=> b!8020484 m!8383488))

(assert (=> b!8020485 m!8383422))

(assert (=> b!8020485 m!8383478))

(assert (=> b!8020485 m!8383420))

(declare-fun m!8383490 () Bool)

(assert (=> b!8020485 m!8383490))

(assert (=> b!8020483 m!8383420))

(declare-fun m!8383492 () Bool)

(assert (=> b!8020483 m!8383492))

(assert (=> b!8020483 m!8383422))

(assert (=> b!8020483 m!8383484))

(assert (=> b!8020438 d!2391604))

(declare-fun d!2391606 () Bool)

(assert (=> d!2391606 (= (tail!15931 p2!173) (t!390723 p2!173))))

(assert (=> b!8020438 d!2391606))

(assert (=> b!8020438 d!2391602))

(declare-fun d!2391608 () Bool)

(declare-fun lt!2719812 () Int)

(assert (=> d!2391608 (>= lt!2719812 0)))

(declare-fun e!4724675 () Int)

(assert (=> d!2391608 (= lt!2719812 e!4724675)))

(declare-fun c!1472045 () Bool)

(assert (=> d!2391608 (= c!1472045 ((_ is Nil!74856) l!3353))))

(assert (=> d!2391608 (= (size!43641 l!3353) lt!2719812)))

(declare-fun b!8020486 () Bool)

(assert (=> b!8020486 (= e!4724675 0)))

(declare-fun b!8020487 () Bool)

(assert (=> b!8020487 (= e!4724675 (+ 1 (size!43641 (t!390723 l!3353))))))

(assert (= (and d!2391608 c!1472045) b!8020486))

(assert (= (and d!2391608 (not c!1472045)) b!8020487))

(declare-fun m!8383494 () Bool)

(assert (=> b!8020487 m!8383494))

(assert (=> b!8020439 d!2391608))

(assert (=> b!8020439 d!2391566))

(declare-fun d!2391610 () Bool)

(declare-fun lt!2719813 () Int)

(assert (=> d!2391610 (>= lt!2719813 0)))

(declare-fun e!4724676 () Int)

(assert (=> d!2391610 (= lt!2719813 e!4724676)))

(declare-fun c!1472046 () Bool)

(assert (=> d!2391610 (= c!1472046 ((_ is Nil!74856) (t!390723 p1!173)))))

(assert (=> d!2391610 (= (size!43641 (t!390723 p1!173)) lt!2719813)))

(declare-fun b!8020488 () Bool)

(assert (=> b!8020488 (= e!4724676 0)))

(declare-fun b!8020489 () Bool)

(assert (=> b!8020489 (= e!4724676 (+ 1 (size!43641 (t!390723 (t!390723 p1!173)))))))

(assert (= (and d!2391610 c!1472046) b!8020488))

(assert (= (and d!2391610 (not c!1472046)) b!8020489))

(declare-fun m!8383496 () Bool)

(assert (=> b!8020489 m!8383496))

(assert (=> b!8020449 d!2391610))

(assert (=> b!8020443 d!2391608))

(assert (=> b!8020443 d!2391564))

(declare-fun b!8020490 () Bool)

(declare-fun e!4724677 () Bool)

(declare-fun tp!2400498 () Bool)

(assert (=> b!8020490 (= e!4724677 (and tp_is_empty!54045 tp!2400498))))

(assert (=> b!8020457 (= tp!2400493 e!4724677)))

(assert (= (and b!8020457 ((_ is Cons!74856) (t!390723 (t!390723 l!3353)))) b!8020490))

(declare-fun b!8020491 () Bool)

(declare-fun e!4724678 () Bool)

(declare-fun tp!2400499 () Bool)

(assert (=> b!8020491 (= e!4724678 (and tp_is_empty!54045 tp!2400499))))

(assert (=> b!8020456 (= tp!2400492 e!4724678)))

(assert (= (and b!8020456 ((_ is Cons!74856) (t!390723 (t!390723 p1!173)))) b!8020491))

(declare-fun b!8020492 () Bool)

(declare-fun e!4724679 () Bool)

(declare-fun tp!2400500 () Bool)

(assert (=> b!8020492 (= e!4724679 (and tp_is_empty!54045 tp!2400500))))

(assert (=> b!8020458 (= tp!2400494 e!4724679)))

(assert (= (and b!8020458 ((_ is Cons!74856) (t!390723 (t!390723 p2!173)))) b!8020492))

(check-sat (not b!8020480) (not b!8020492) (not b!8020477) (not b!8020490) (not b!8020484) (not b!8020491) (not b!8020483) tp_is_empty!54045 (not b!8020481) (not b!8020487) (not b!8020489) (not b!8020479) (not b!8020485))
(check-sat)
