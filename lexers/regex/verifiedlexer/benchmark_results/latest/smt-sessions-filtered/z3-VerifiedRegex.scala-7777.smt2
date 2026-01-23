; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408638 () Bool)

(assert start!408638)

(declare-fun b!4264523 () Bool)

(declare-fun res!1752600 () Bool)

(declare-fun e!2647944 () Bool)

(assert (=> b!4264523 (=> (not res!1752600) (not e!2647944))))

(declare-datatypes ((B!2857 0))(
  ( (B!2858 (val!15258 Int)) )
))
(declare-datatypes ((List!47387 0))(
  ( (Nil!47263) (Cons!47263 (h!52683 B!2857) (t!353454 List!47387)) )
))
(declare-fun l1!1529 () List!47387)

(declare-fun b!25415 () B!2857)

(get-info :version)

(assert (=> b!4264523 (= res!1752600 (and (or (not ((_ is Cons!47263) l1!1529)) (not (= (h!52683 l1!1529) b!25415))) ((_ is Cons!47263) l1!1529)))))

(declare-fun b!4264524 () Bool)

(declare-fun e!2647942 () Bool)

(declare-fun tp_is_empty!22925 () Bool)

(declare-fun tp!1307393 () Bool)

(assert (=> b!4264524 (= e!2647942 (and tp_is_empty!22925 tp!1307393))))

(declare-fun b!4264525 () Bool)

(declare-fun e!2647943 () Bool)

(declare-fun tp!1307394 () Bool)

(assert (=> b!4264525 (= e!2647943 (and tp_is_empty!22925 tp!1307394))))

(declare-fun res!1752601 () Bool)

(assert (=> start!408638 (=> (not res!1752601) (not e!2647944))))

(declare-fun contains!9784 (List!47387 B!2857) Bool)

(assert (=> start!408638 (= res!1752601 (not (contains!9784 l1!1529 b!25415)))))

(assert (=> start!408638 e!2647944))

(assert (=> start!408638 e!2647942))

(assert (=> start!408638 tp_is_empty!22925))

(assert (=> start!408638 e!2647943))

(declare-fun b!4264526 () Bool)

(declare-fun ListPrimitiveSize!317 (List!47387) Int)

(assert (=> b!4264526 (= e!2647944 (>= (ListPrimitiveSize!317 (t!353454 l1!1529)) (ListPrimitiveSize!317 l1!1529)))))

(declare-fun b!4264527 () Bool)

(declare-fun res!1752598 () Bool)

(assert (=> b!4264527 (=> (not res!1752598) (not e!2647944))))

(assert (=> b!4264527 (= res!1752598 (not (contains!9784 (t!353454 l1!1529) b!25415)))))

(declare-fun b!4264528 () Bool)

(declare-fun res!1752599 () Bool)

(assert (=> b!4264528 (=> (not res!1752599) (not e!2647944))))

(declare-fun l2!1498 () List!47387)

(assert (=> b!4264528 (= res!1752599 (not (contains!9784 l2!1498 b!25415)))))

(assert (= (and start!408638 res!1752601) b!4264528))

(assert (= (and b!4264528 res!1752599) b!4264523))

(assert (= (and b!4264523 res!1752600) b!4264527))

(assert (= (and b!4264527 res!1752598) b!4264526))

(assert (= (and start!408638 ((_ is Cons!47263) l1!1529)) b!4264524))

(assert (= (and start!408638 ((_ is Cons!47263) l2!1498)) b!4264525))

(declare-fun m!4854805 () Bool)

(assert (=> start!408638 m!4854805))

(declare-fun m!4854807 () Bool)

(assert (=> b!4264526 m!4854807))

(declare-fun m!4854809 () Bool)

(assert (=> b!4264526 m!4854809))

(declare-fun m!4854811 () Bool)

(assert (=> b!4264527 m!4854811))

(declare-fun m!4854813 () Bool)

(assert (=> b!4264528 m!4854813))

(check-sat tp_is_empty!22925 (not b!4264524) (not b!4264525) (not b!4264528) (not b!4264527) (not start!408638) (not b!4264526))
(check-sat)
(get-model)

(declare-fun d!1256446 () Bool)

(declare-fun lt!1511417 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7463 (List!47387) (InoxSet B!2857))

(assert (=> d!1256446 (= lt!1511417 (select (content!7463 l2!1498) b!25415))))

(declare-fun e!2647949 () Bool)

(assert (=> d!1256446 (= lt!1511417 e!2647949)))

(declare-fun res!1752606 () Bool)

(assert (=> d!1256446 (=> (not res!1752606) (not e!2647949))))

(assert (=> d!1256446 (= res!1752606 ((_ is Cons!47263) l2!1498))))

(assert (=> d!1256446 (= (contains!9784 l2!1498 b!25415) lt!1511417)))

(declare-fun b!4264533 () Bool)

(declare-fun e!2647950 () Bool)

(assert (=> b!4264533 (= e!2647949 e!2647950)))

(declare-fun res!1752607 () Bool)

(assert (=> b!4264533 (=> res!1752607 e!2647950)))

(assert (=> b!4264533 (= res!1752607 (= (h!52683 l2!1498) b!25415))))

(declare-fun b!4264534 () Bool)

(assert (=> b!4264534 (= e!2647950 (contains!9784 (t!353454 l2!1498) b!25415))))

(assert (= (and d!1256446 res!1752606) b!4264533))

(assert (= (and b!4264533 (not res!1752607)) b!4264534))

(declare-fun m!4854815 () Bool)

(assert (=> d!1256446 m!4854815))

(declare-fun m!4854817 () Bool)

(assert (=> d!1256446 m!4854817))

(declare-fun m!4854819 () Bool)

(assert (=> b!4264534 m!4854819))

(assert (=> b!4264528 d!1256446))

(declare-fun d!1256450 () Bool)

(declare-fun lt!1511420 () Bool)

(assert (=> d!1256450 (= lt!1511420 (select (content!7463 l1!1529) b!25415))))

(declare-fun e!2647953 () Bool)

(assert (=> d!1256450 (= lt!1511420 e!2647953)))

(declare-fun res!1752608 () Bool)

(assert (=> d!1256450 (=> (not res!1752608) (not e!2647953))))

(assert (=> d!1256450 (= res!1752608 ((_ is Cons!47263) l1!1529))))

(assert (=> d!1256450 (= (contains!9784 l1!1529 b!25415) lt!1511420)))

(declare-fun b!4264539 () Bool)

(declare-fun e!2647954 () Bool)

(assert (=> b!4264539 (= e!2647953 e!2647954)))

(declare-fun res!1752609 () Bool)

(assert (=> b!4264539 (=> res!1752609 e!2647954)))

(assert (=> b!4264539 (= res!1752609 (= (h!52683 l1!1529) b!25415))))

(declare-fun b!4264540 () Bool)

(assert (=> b!4264540 (= e!2647954 (contains!9784 (t!353454 l1!1529) b!25415))))

(assert (= (and d!1256450 res!1752608) b!4264539))

(assert (= (and b!4264539 (not res!1752609)) b!4264540))

(declare-fun m!4854821 () Bool)

(assert (=> d!1256450 m!4854821))

(declare-fun m!4854823 () Bool)

(assert (=> d!1256450 m!4854823))

(assert (=> b!4264540 m!4854811))

(assert (=> start!408638 d!1256450))

(declare-fun d!1256452 () Bool)

(declare-fun lt!1511421 () Bool)

(assert (=> d!1256452 (= lt!1511421 (select (content!7463 (t!353454 l1!1529)) b!25415))))

(declare-fun e!2647955 () Bool)

(assert (=> d!1256452 (= lt!1511421 e!2647955)))

(declare-fun res!1752610 () Bool)

(assert (=> d!1256452 (=> (not res!1752610) (not e!2647955))))

(assert (=> d!1256452 (= res!1752610 ((_ is Cons!47263) (t!353454 l1!1529)))))

(assert (=> d!1256452 (= (contains!9784 (t!353454 l1!1529) b!25415) lt!1511421)))

(declare-fun b!4264541 () Bool)

(declare-fun e!2647956 () Bool)

(assert (=> b!4264541 (= e!2647955 e!2647956)))

(declare-fun res!1752611 () Bool)

(assert (=> b!4264541 (=> res!1752611 e!2647956)))

(assert (=> b!4264541 (= res!1752611 (= (h!52683 (t!353454 l1!1529)) b!25415))))

(declare-fun b!4264542 () Bool)

(assert (=> b!4264542 (= e!2647956 (contains!9784 (t!353454 (t!353454 l1!1529)) b!25415))))

(assert (= (and d!1256452 res!1752610) b!4264541))

(assert (= (and b!4264541 (not res!1752611)) b!4264542))

(declare-fun m!4854825 () Bool)

(assert (=> d!1256452 m!4854825))

(declare-fun m!4854827 () Bool)

(assert (=> d!1256452 m!4854827))

(declare-fun m!4854829 () Bool)

(assert (=> b!4264542 m!4854829))

(assert (=> b!4264527 d!1256452))

(declare-fun d!1256454 () Bool)

(declare-fun lt!1511426 () Int)

(assert (=> d!1256454 (>= lt!1511426 0)))

(declare-fun e!2647961 () Int)

(assert (=> d!1256454 (= lt!1511426 e!2647961)))

(declare-fun c!724692 () Bool)

(assert (=> d!1256454 (= c!724692 ((_ is Nil!47263) (t!353454 l1!1529)))))

(assert (=> d!1256454 (= (ListPrimitiveSize!317 (t!353454 l1!1529)) lt!1511426)))

(declare-fun b!4264551 () Bool)

(assert (=> b!4264551 (= e!2647961 0)))

(declare-fun b!4264552 () Bool)

(assert (=> b!4264552 (= e!2647961 (+ 1 (ListPrimitiveSize!317 (t!353454 (t!353454 l1!1529)))))))

(assert (= (and d!1256454 c!724692) b!4264551))

(assert (= (and d!1256454 (not c!724692)) b!4264552))

(declare-fun m!4854833 () Bool)

(assert (=> b!4264552 m!4854833))

(assert (=> b!4264526 d!1256454))

(declare-fun d!1256460 () Bool)

(declare-fun lt!1511429 () Int)

(assert (=> d!1256460 (>= lt!1511429 0)))

(declare-fun e!2647962 () Int)

(assert (=> d!1256460 (= lt!1511429 e!2647962)))

(declare-fun c!724693 () Bool)

(assert (=> d!1256460 (= c!724693 ((_ is Nil!47263) l1!1529))))

(assert (=> d!1256460 (= (ListPrimitiveSize!317 l1!1529) lt!1511429)))

(declare-fun b!4264553 () Bool)

(assert (=> b!4264553 (= e!2647962 0)))

(declare-fun b!4264554 () Bool)

(assert (=> b!4264554 (= e!2647962 (+ 1 (ListPrimitiveSize!317 (t!353454 l1!1529))))))

(assert (= (and d!1256460 c!724693) b!4264553))

(assert (= (and d!1256460 (not c!724693)) b!4264554))

(assert (=> b!4264554 m!4854807))

(assert (=> b!4264526 d!1256460))

(declare-fun b!4264563 () Bool)

(declare-fun e!2647969 () Bool)

(declare-fun tp!1307397 () Bool)

(assert (=> b!4264563 (= e!2647969 (and tp_is_empty!22925 tp!1307397))))

(assert (=> b!4264524 (= tp!1307393 e!2647969)))

(assert (= (and b!4264524 ((_ is Cons!47263) (t!353454 l1!1529))) b!4264563))

(declare-fun b!4264564 () Bool)

(declare-fun e!2647970 () Bool)

(declare-fun tp!1307398 () Bool)

(assert (=> b!4264564 (= e!2647970 (and tp_is_empty!22925 tp!1307398))))

(assert (=> b!4264525 (= tp!1307394 e!2647970)))

(assert (= (and b!4264525 ((_ is Cons!47263) (t!353454 l2!1498))) b!4264564))

(check-sat tp_is_empty!22925 (not d!1256450) (not b!4264534) (not b!4264563) (not b!4264542) (not b!4264540) (not b!4264554) (not b!4264552) (not d!1256452) (not b!4264564) (not d!1256446))
(check-sat)
