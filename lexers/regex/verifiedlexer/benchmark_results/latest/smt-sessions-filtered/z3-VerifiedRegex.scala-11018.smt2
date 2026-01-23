; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!571594 () Bool)

(assert start!571594)

(declare-fun b!5456266 () Bool)

(assert (=> b!5456266 true))

(assert (=> b!5456266 true))

(declare-fun lambda!288564 () Int)

(declare-fun lambda!288563 () Int)

(assert (=> b!5456266 (not (= lambda!288564 lambda!288563))))

(assert (=> b!5456266 true))

(assert (=> b!5456266 true))

(declare-fun b!5456283 () Bool)

(assert (=> b!5456283 true))

(declare-fun bs!1262541 () Bool)

(declare-fun b!5456238 () Bool)

(assert (= bs!1262541 (and b!5456238 b!5456266)))

(declare-datatypes ((C!30836 0))(
  ( (C!30837 (val!25120 Int)) )
))
(declare-datatypes ((Regex!15283 0))(
  ( (ElementMatch!15283 (c!953077 C!30836)) (Concat!24128 (regOne!31078 Regex!15283) (regTwo!31078 Regex!15283)) (EmptyExpr!15283) (Star!15283 (reg!15612 Regex!15283)) (EmptyLang!15283) (Union!15283 (regOne!31079 Regex!15283) (regTwo!31079 Regex!15283)) )
))
(declare-fun r!7292 () Regex!15283)

(declare-fun lambda!288566 () Int)

(declare-fun lt!2227114 () Regex!15283)

(assert (=> bs!1262541 (= (and (= (regOne!31078 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2227114 (regTwo!31078 r!7292))) (= lambda!288566 lambda!288563))))

(assert (=> bs!1262541 (not (= lambda!288566 lambda!288564))))

(assert (=> b!5456238 true))

(assert (=> b!5456238 true))

(assert (=> b!5456238 true))

(declare-fun lambda!288567 () Int)

(assert (=> bs!1262541 (not (= lambda!288567 lambda!288563))))

(assert (=> bs!1262541 (= (and (= (regOne!31078 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2227114 (regTwo!31078 r!7292))) (= lambda!288567 lambda!288564))))

(assert (=> b!5456238 (not (= lambda!288567 lambda!288566))))

(assert (=> b!5456238 true))

(assert (=> b!5456238 true))

(assert (=> b!5456238 true))

(declare-fun lt!2226981 () Regex!15283)

(declare-fun lambda!288568 () Int)

(assert (=> bs!1262541 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226981 (regTwo!31078 r!7292))) (= lambda!288568 lambda!288563))))

(assert (=> bs!1262541 (not (= lambda!288568 lambda!288564))))

(assert (=> b!5456238 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226981 lt!2227114)) (= lambda!288568 lambda!288566))))

(assert (=> b!5456238 (not (= lambda!288568 lambda!288567))))

(assert (=> b!5456238 true))

(assert (=> b!5456238 true))

(assert (=> b!5456238 true))

(declare-fun lambda!288569 () Int)

(assert (=> bs!1262541 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226981 (regTwo!31078 r!7292))) (= lambda!288569 lambda!288564))))

(assert (=> b!5456238 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226981 lt!2227114)) (= lambda!288569 lambda!288567))))

(assert (=> bs!1262541 (not (= lambda!288569 lambda!288563))))

(assert (=> b!5456238 (not (= lambda!288569 lambda!288568))))

(assert (=> b!5456238 (not (= lambda!288569 lambda!288566))))

(assert (=> b!5456238 true))

(assert (=> b!5456238 true))

(assert (=> b!5456238 true))

(declare-fun bs!1262542 () Bool)

(declare-fun b!5456239 () Bool)

(assert (= bs!1262542 (and b!5456239 b!5456238)))

(declare-fun lambda!288570 () Int)

(assert (=> bs!1262542 (not (= lambda!288570 lambda!288569))))

(declare-fun bs!1262543 () Bool)

(assert (= bs!1262543 (and b!5456239 b!5456266)))

(assert (=> bs!1262543 (not (= lambda!288570 lambda!288564))))

(assert (=> bs!1262542 (not (= lambda!288570 lambda!288567))))

(declare-fun lt!2227079 () Regex!15283)

(assert (=> bs!1262543 (= (and (= (regOne!31078 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2227079 (regTwo!31078 r!7292))) (= lambda!288570 lambda!288563))))

(assert (=> bs!1262542 (= (and (= (regOne!31078 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2227079 lt!2226981)) (= lambda!288570 lambda!288568))))

(assert (=> bs!1262542 (= (= lt!2227079 lt!2227114) (= lambda!288570 lambda!288566))))

(assert (=> b!5456239 true))

(assert (=> b!5456239 true))

(assert (=> b!5456239 true))

(declare-fun lambda!288571 () Int)

(assert (=> bs!1262542 (= (and (= (regOne!31078 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2227079 lt!2226981)) (= lambda!288571 lambda!288569))))

(assert (=> bs!1262543 (= (and (= (regOne!31078 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2227079 (regTwo!31078 r!7292))) (= lambda!288571 lambda!288564))))

(assert (=> b!5456239 (not (= lambda!288571 lambda!288570))))

(assert (=> bs!1262542 (= (= lt!2227079 lt!2227114) (= lambda!288571 lambda!288567))))

(assert (=> bs!1262543 (not (= lambda!288571 lambda!288563))))

(assert (=> bs!1262542 (not (= lambda!288571 lambda!288568))))

(assert (=> bs!1262542 (not (= lambda!288571 lambda!288566))))

(assert (=> b!5456239 true))

(assert (=> b!5456239 true))

(assert (=> b!5456239 true))

(declare-fun lambda!288572 () Int)

(assert (=> bs!1262542 (not (= lambda!288572 lambda!288569))))

(assert (=> b!5456239 (not (= lambda!288572 lambda!288571))))

(assert (=> bs!1262543 (not (= lambda!288572 lambda!288564))))

(declare-fun lt!2226937 () Regex!15283)

(assert (=> b!5456239 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226937 lt!2227079)) (= lambda!288572 lambda!288570))))

(assert (=> bs!1262542 (not (= lambda!288572 lambda!288567))))

(assert (=> bs!1262543 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226937 (regTwo!31078 r!7292))) (= lambda!288572 lambda!288563))))

(assert (=> bs!1262542 (= (= lt!2226937 lt!2226981) (= lambda!288572 lambda!288568))))

(assert (=> bs!1262542 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226937 lt!2227114)) (= lambda!288572 lambda!288566))))

(assert (=> b!5456239 true))

(assert (=> b!5456239 true))

(assert (=> b!5456239 true))

(declare-fun lambda!288573 () Int)

(assert (=> b!5456239 (not (= lambda!288573 lambda!288572))))

(assert (=> bs!1262542 (= (= lt!2226937 lt!2226981) (= lambda!288573 lambda!288569))))

(assert (=> b!5456239 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226937 lt!2227079)) (= lambda!288573 lambda!288571))))

(assert (=> bs!1262543 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226937 (regTwo!31078 r!7292))) (= lambda!288573 lambda!288564))))

(assert (=> b!5456239 (not (= lambda!288573 lambda!288570))))

(assert (=> bs!1262542 (= (and (= (regTwo!31078 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226937 lt!2227114)) (= lambda!288573 lambda!288567))))

(assert (=> bs!1262543 (not (= lambda!288573 lambda!288563))))

(assert (=> bs!1262542 (not (= lambda!288573 lambda!288568))))

(assert (=> bs!1262542 (not (= lambda!288573 lambda!288566))))

(assert (=> b!5456239 true))

(assert (=> b!5456239 true))

(assert (=> b!5456239 true))

(declare-fun bs!1262544 () Bool)

(declare-fun b!5456294 () Bool)

(assert (= bs!1262544 (and b!5456294 b!5456239)))

(declare-fun lambda!288574 () Int)

(declare-fun lt!2226991 () Regex!15283)

(assert (=> bs!1262544 (= (and (= lt!2226991 (regTwo!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226937)) (= lambda!288574 lambda!288572))))

(declare-fun bs!1262545 () Bool)

(assert (= bs!1262545 (and b!5456294 b!5456238)))

(assert (=> bs!1262545 (not (= lambda!288574 lambda!288569))))

(assert (=> bs!1262544 (not (= lambda!288574 lambda!288571))))

(declare-fun bs!1262546 () Bool)

(assert (= bs!1262546 (and b!5456294 b!5456266)))

(assert (=> bs!1262546 (not (= lambda!288574 lambda!288564))))

(assert (=> bs!1262544 (= (and (= lt!2226991 (regOne!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2227079)) (= lambda!288574 lambda!288570))))

(assert (=> bs!1262545 (not (= lambda!288574 lambda!288567))))

(assert (=> bs!1262544 (not (= lambda!288574 lambda!288573))))

(assert (=> bs!1262546 (= (= lt!2226991 (regOne!31078 r!7292)) (= lambda!288574 lambda!288563))))

(assert (=> bs!1262545 (= (and (= lt!2226991 (regTwo!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226981)) (= lambda!288574 lambda!288568))))

(assert (=> bs!1262545 (= (and (= lt!2226991 (regOne!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2227114)) (= lambda!288574 lambda!288566))))

(assert (=> b!5456294 true))

(assert (=> b!5456294 true))

(assert (=> b!5456294 true))

(declare-fun lambda!288575 () Int)

(assert (=> bs!1262544 (not (= lambda!288575 lambda!288572))))

(assert (=> bs!1262545 (= (and (= lt!2226991 (regTwo!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226981)) (= lambda!288575 lambda!288569))))

(assert (=> bs!1262544 (= (and (= lt!2226991 (regOne!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2227079)) (= lambda!288575 lambda!288571))))

(assert (=> bs!1262546 (= (= lt!2226991 (regOne!31078 r!7292)) (= lambda!288575 lambda!288564))))

(assert (=> bs!1262544 (not (= lambda!288575 lambda!288570))))

(assert (=> bs!1262545 (= (and (= lt!2226991 (regOne!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2227114)) (= lambda!288575 lambda!288567))))

(assert (=> bs!1262546 (not (= lambda!288575 lambda!288563))))

(assert (=> bs!1262545 (not (= lambda!288575 lambda!288568))))

(assert (=> bs!1262545 (not (= lambda!288575 lambda!288566))))

(assert (=> bs!1262544 (= (and (= lt!2226991 (regTwo!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226937)) (= lambda!288575 lambda!288573))))

(assert (=> b!5456294 (not (= lambda!288575 lambda!288574))))

(assert (=> b!5456294 true))

(assert (=> b!5456294 true))

(assert (=> b!5456294 true))

(declare-fun bs!1262547 () Bool)

(declare-fun b!5456244 () Bool)

(assert (= bs!1262547 (and b!5456244 b!5456239)))

(declare-datatypes ((List!62148 0))(
  ( (Nil!62024) (Cons!62024 (h!68472 C!30836) (t!375377 List!62148)) )
))
(declare-fun s!2326 () List!62148)

(declare-fun lambda!288576 () Int)

(declare-datatypes ((tuple2!64964 0))(
  ( (tuple2!64965 (_1!35785 List!62148) (_2!35785 List!62148)) )
))
(declare-fun lt!2226926 () tuple2!64964)

(assert (=> bs!1262547 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226937)) (= lambda!288576 lambda!288572))))

(declare-fun bs!1262548 () Bool)

(assert (= bs!1262548 (and b!5456244 b!5456238)))

(assert (=> bs!1262548 (not (= lambda!288576 lambda!288569))))

(assert (=> bs!1262547 (not (= lambda!288576 lambda!288571))))

(declare-fun bs!1262549 () Bool)

(assert (= bs!1262549 (and b!5456244 b!5456266)))

(assert (=> bs!1262549 (not (= lambda!288576 lambda!288564))))

(assert (=> bs!1262547 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227079)) (= lambda!288576 lambda!288570))))

(declare-fun bs!1262550 () Bool)

(assert (= bs!1262550 (and b!5456244 b!5456294)))

(assert (=> bs!1262550 (not (= lambda!288576 lambda!288575))))

(assert (=> bs!1262548 (not (= lambda!288576 lambda!288567))))

(assert (=> bs!1262549 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288576 lambda!288563))))

(assert (=> bs!1262548 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226981)) (= lambda!288576 lambda!288568))))

(assert (=> bs!1262548 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227114)) (= lambda!288576 lambda!288566))))

(assert (=> bs!1262547 (not (= lambda!288576 lambda!288573))))

(assert (=> bs!1262550 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2226991) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288576 lambda!288574))))

(assert (=> b!5456244 true))

(assert (=> b!5456244 true))

(assert (=> b!5456244 true))

(declare-fun lambda!288577 () Int)

(assert (=> bs!1262547 (not (= lambda!288577 lambda!288572))))

(assert (=> bs!1262548 (not (= lambda!288577 lambda!288569))))

(assert (=> bs!1262547 (not (= lambda!288577 lambda!288571))))

(assert (=> b!5456244 (not (= lambda!288577 lambda!288576))))

(assert (=> bs!1262549 (not (= lambda!288577 lambda!288564))))

(assert (=> bs!1262547 (not (= lambda!288577 lambda!288570))))

(assert (=> bs!1262550 (not (= lambda!288577 lambda!288575))))

(assert (=> bs!1262548 (not (= lambda!288577 lambda!288567))))

(assert (=> bs!1262549 (not (= lambda!288577 lambda!288563))))

(assert (=> bs!1262548 (not (= lambda!288577 lambda!288568))))

(assert (=> bs!1262548 (not (= lambda!288577 lambda!288566))))

(assert (=> bs!1262547 (not (= lambda!288577 lambda!288573))))

(assert (=> bs!1262550 (not (= lambda!288577 lambda!288574))))

(assert (=> b!5456244 true))

(assert (=> b!5456244 true))

(assert (=> b!5456244 true))

(declare-fun lambda!288578 () Int)

(assert (=> bs!1262547 (not (= lambda!288578 lambda!288572))))

(assert (=> bs!1262548 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226981)) (= lambda!288578 lambda!288569))))

(assert (=> bs!1262547 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227079)) (= lambda!288578 lambda!288571))))

(assert (=> b!5456244 (not (= lambda!288578 lambda!288576))))

(assert (=> bs!1262549 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288578 lambda!288564))))

(assert (=> bs!1262547 (not (= lambda!288578 lambda!288570))))

(assert (=> b!5456244 (not (= lambda!288578 lambda!288577))))

(assert (=> bs!1262550 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2226991) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288578 lambda!288575))))

(assert (=> bs!1262548 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227114)) (= lambda!288578 lambda!288567))))

(assert (=> bs!1262549 (not (= lambda!288578 lambda!288563))))

(assert (=> bs!1262548 (not (= lambda!288578 lambda!288568))))

(assert (=> bs!1262548 (not (= lambda!288578 lambda!288566))))

(assert (=> bs!1262547 (= (and (= (_1!35785 lt!2226926) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226937)) (= lambda!288578 lambda!288573))))

(assert (=> bs!1262550 (not (= lambda!288578 lambda!288574))))

(assert (=> b!5456244 true))

(assert (=> b!5456244 true))

(assert (=> b!5456244 true))

(declare-fun b!5456245 () Bool)

(assert (=> b!5456245 true))

(declare-fun bs!1262551 () Bool)

(assert (= bs!1262551 (and b!5456245 b!5456244)))

(declare-fun lambda!288581 () Int)

(declare-fun lambda!288579 () Int)

(assert (=> bs!1262551 (= lambda!288581 lambda!288579)))

(declare-fun bs!1262552 () Bool)

(assert (= bs!1262552 (and b!5456245 b!5456239)))

(declare-fun lambda!288582 () Int)

(declare-fun lt!2227065 () Regex!15283)

(assert (=> bs!1262552 (= (and (= lt!2227065 (regTwo!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226937)) (= lambda!288582 lambda!288572))))

(declare-fun bs!1262553 () Bool)

(assert (= bs!1262553 (and b!5456245 b!5456238)))

(assert (=> bs!1262553 (not (= lambda!288582 lambda!288569))))

(assert (=> bs!1262552 (not (= lambda!288582 lambda!288571))))

(assert (=> bs!1262551 (= (and (= s!2326 (_1!35785 lt!2226926)) (= lt!2227065 (reg!15612 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226991)) (= lambda!288582 lambda!288576))))

(declare-fun bs!1262554 () Bool)

(assert (= bs!1262554 (and b!5456245 b!5456266)))

(assert (=> bs!1262554 (not (= lambda!288582 lambda!288564))))

(assert (=> bs!1262552 (= (and (= lt!2227065 (regOne!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2227079)) (= lambda!288582 lambda!288570))))

(assert (=> bs!1262551 (not (= lambda!288582 lambda!288577))))

(declare-fun bs!1262555 () Bool)

(assert (= bs!1262555 (and b!5456245 b!5456294)))

(assert (=> bs!1262555 (not (= lambda!288582 lambda!288575))))

(assert (=> bs!1262553 (not (= lambda!288582 lambda!288567))))

(assert (=> bs!1262551 (not (= lambda!288582 lambda!288578))))

(assert (=> bs!1262554 (= (= lt!2227065 (regOne!31078 r!7292)) (= lambda!288582 lambda!288563))))

(assert (=> bs!1262553 (= (and (= lt!2227065 (regTwo!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226981)) (= lambda!288582 lambda!288568))))

(assert (=> bs!1262553 (= (and (= lt!2227065 (regOne!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2227114)) (= lambda!288582 lambda!288566))))

(assert (=> bs!1262552 (not (= lambda!288582 lambda!288573))))

(assert (=> bs!1262555 (= (= lt!2227065 lt!2226991) (= lambda!288582 lambda!288574))))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(declare-fun lambda!288583 () Int)

(assert (=> bs!1262552 (not (= lambda!288583 lambda!288572))))

(assert (=> bs!1262553 (= (and (= lt!2227065 (regTwo!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226981)) (= lambda!288583 lambda!288569))))

(assert (=> bs!1262552 (= (and (= lt!2227065 (regOne!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2227079)) (= lambda!288583 lambda!288571))))

(assert (=> bs!1262551 (not (= lambda!288583 lambda!288576))))

(assert (=> bs!1262554 (= (= lt!2227065 (regOne!31078 r!7292)) (= lambda!288583 lambda!288564))))

(assert (=> bs!1262552 (not (= lambda!288583 lambda!288570))))

(assert (=> bs!1262551 (not (= lambda!288583 lambda!288577))))

(assert (=> bs!1262555 (= (= lt!2227065 lt!2226991) (= lambda!288583 lambda!288575))))

(assert (=> bs!1262553 (= (and (= lt!2227065 (regOne!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2227114)) (= lambda!288583 lambda!288567))))

(assert (=> bs!1262554 (not (= lambda!288583 lambda!288563))))

(assert (=> bs!1262553 (not (= lambda!288583 lambda!288568))))

(assert (=> bs!1262553 (not (= lambda!288583 lambda!288566))))

(assert (=> b!5456245 (not (= lambda!288583 lambda!288582))))

(assert (=> bs!1262551 (= (and (= s!2326 (_1!35785 lt!2226926)) (= lt!2227065 (reg!15612 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226991)) (= lambda!288583 lambda!288578))))

(assert (=> bs!1262552 (= (and (= lt!2227065 (regTwo!31078 (regOne!31078 r!7292))) (= (regTwo!31078 r!7292) lt!2226937)) (= lambda!288583 lambda!288573))))

(assert (=> bs!1262555 (not (= lambda!288583 lambda!288574))))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(declare-fun lambda!288584 () Int)

(declare-fun lt!2227092 () tuple2!64964)

(assert (=> bs!1262552 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226937)) (= lambda!288584 lambda!288572))))

(assert (=> bs!1262553 (not (= lambda!288584 lambda!288569))))

(assert (=> bs!1262552 (not (= lambda!288584 lambda!288571))))

(assert (=> bs!1262551 (= (= (_1!35785 lt!2227092) (_1!35785 lt!2226926)) (= lambda!288584 lambda!288576))))

(assert (=> bs!1262554 (not (= lambda!288584 lambda!288564))))

(assert (=> bs!1262552 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227079)) (= lambda!288584 lambda!288570))))

(assert (=> bs!1262551 (not (= lambda!288584 lambda!288577))))

(assert (=> bs!1262555 (not (= lambda!288584 lambda!288575))))

(assert (=> bs!1262553 (not (= lambda!288584 lambda!288567))))

(assert (=> bs!1262554 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288584 lambda!288563))))

(assert (=> bs!1262553 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226981)) (= lambda!288584 lambda!288568))))

(assert (=> b!5456245 (not (= lambda!288584 lambda!288583))))

(assert (=> bs!1262553 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227114)) (= lambda!288584 lambda!288566))))

(assert (=> b!5456245 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2227065) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288584 lambda!288582))))

(assert (=> bs!1262551 (not (= lambda!288584 lambda!288578))))

(assert (=> bs!1262552 (not (= lambda!288584 lambda!288573))))

(assert (=> bs!1262555 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2226991) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288584 lambda!288574))))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(declare-fun lambda!288585 () Int)

(assert (=> bs!1262552 (not (= lambda!288585 lambda!288572))))

(assert (=> bs!1262553 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226981)) (= lambda!288585 lambda!288569))))

(assert (=> bs!1262552 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227079)) (= lambda!288585 lambda!288571))))

(assert (=> bs!1262551 (not (= lambda!288585 lambda!288576))))

(assert (=> bs!1262554 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288585 lambda!288564))))

(assert (=> bs!1262552 (not (= lambda!288585 lambda!288570))))

(assert (=> b!5456245 (not (= lambda!288585 lambda!288584))))

(assert (=> bs!1262551 (not (= lambda!288585 lambda!288577))))

(assert (=> bs!1262555 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2226991) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288585 lambda!288575))))

(assert (=> bs!1262553 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227114)) (= lambda!288585 lambda!288567))))

(assert (=> bs!1262554 (not (= lambda!288585 lambda!288563))))

(assert (=> bs!1262553 (not (= lambda!288585 lambda!288568))))

(assert (=> b!5456245 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2227065) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288585 lambda!288583))))

(assert (=> bs!1262553 (not (= lambda!288585 lambda!288566))))

(assert (=> b!5456245 (not (= lambda!288585 lambda!288582))))

(assert (=> bs!1262551 (= (= (_1!35785 lt!2227092) (_1!35785 lt!2226926)) (= lambda!288585 lambda!288578))))

(assert (=> bs!1262552 (= (and (= (_1!35785 lt!2227092) s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226937)) (= lambda!288585 lambda!288573))))

(assert (=> bs!1262555 (not (= lambda!288585 lambda!288574))))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(declare-fun lambda!288586 () Int)

(assert (=> bs!1262552 (not (= lambda!288586 lambda!288572))))

(assert (=> bs!1262553 (not (= lambda!288586 lambda!288569))))

(assert (=> bs!1262552 (not (= lambda!288586 lambda!288571))))

(assert (=> bs!1262551 (not (= lambda!288586 lambda!288576))))

(assert (=> bs!1262554 (not (= lambda!288586 lambda!288564))))

(assert (=> bs!1262552 (not (= lambda!288586 lambda!288570))))

(assert (=> b!5456245 (not (= lambda!288586 lambda!288584))))

(assert (=> bs!1262551 (= (= (_1!35785 lt!2227092) (_1!35785 lt!2226926)) (= lambda!288586 lambda!288577))))

(assert (=> bs!1262555 (not (= lambda!288586 lambda!288575))))

(assert (=> bs!1262553 (not (= lambda!288586 lambda!288567))))

(assert (=> bs!1262554 (not (= lambda!288586 lambda!288563))))

(assert (=> b!5456245 (not (= lambda!288586 lambda!288585))))

(assert (=> bs!1262553 (not (= lambda!288586 lambda!288568))))

(assert (=> b!5456245 (not (= lambda!288586 lambda!288583))))

(assert (=> bs!1262553 (not (= lambda!288586 lambda!288566))))

(assert (=> b!5456245 (not (= lambda!288586 lambda!288582))))

(assert (=> bs!1262551 (not (= lambda!288586 lambda!288578))))

(assert (=> bs!1262552 (not (= lambda!288586 lambda!288573))))

(assert (=> bs!1262555 (not (= lambda!288586 lambda!288574))))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(assert (=> b!5456245 true))

(declare-fun bs!1262556 () Bool)

(declare-fun b!5456293 () Bool)

(assert (= bs!1262556 (and b!5456293 b!5456239)))

(declare-fun lambda!288587 () Int)

(assert (=> bs!1262556 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226937)) (= lambda!288587 lambda!288572))))

(declare-fun bs!1262557 () Bool)

(assert (= bs!1262557 (and b!5456293 b!5456238)))

(assert (=> bs!1262557 (not (= lambda!288587 lambda!288569))))

(assert (=> bs!1262556 (not (= lambda!288587 lambda!288571))))

(declare-fun bs!1262558 () Bool)

(assert (= bs!1262558 (and b!5456293 b!5456244)))

(assert (=> bs!1262558 (= (= Nil!62024 (_1!35785 lt!2226926)) (= lambda!288587 lambda!288576))))

(assert (=> bs!1262556 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227079)) (= lambda!288587 lambda!288570))))

(declare-fun bs!1262559 () Bool)

(assert (= bs!1262559 (and b!5456293 b!5456245)))

(assert (=> bs!1262559 (= (= Nil!62024 (_1!35785 lt!2227092)) (= lambda!288587 lambda!288584))))

(assert (=> bs!1262558 (not (= lambda!288587 lambda!288577))))

(declare-fun bs!1262560 () Bool)

(assert (= bs!1262560 (and b!5456293 b!5456294)))

(assert (=> bs!1262560 (not (= lambda!288587 lambda!288575))))

(assert (=> bs!1262557 (not (= lambda!288587 lambda!288567))))

(declare-fun bs!1262561 () Bool)

(assert (= bs!1262561 (and b!5456293 b!5456266)))

(assert (=> bs!1262561 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288587 lambda!288563))))

(assert (=> bs!1262559 (not (= lambda!288587 lambda!288585))))

(assert (=> bs!1262557 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226981)) (= lambda!288587 lambda!288568))))

(assert (=> bs!1262559 (not (= lambda!288587 lambda!288583))))

(assert (=> bs!1262557 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227114)) (= lambda!288587 lambda!288566))))

(assert (=> bs!1262561 (not (= lambda!288587 lambda!288564))))

(assert (=> bs!1262559 (not (= lambda!288587 lambda!288586))))

(assert (=> bs!1262559 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2227065) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288587 lambda!288582))))

(assert (=> bs!1262558 (not (= lambda!288587 lambda!288578))))

(assert (=> bs!1262556 (not (= lambda!288587 lambda!288573))))

(assert (=> bs!1262560 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2226991) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288587 lambda!288574))))

(assert (=> b!5456293 true))

(assert (=> b!5456293 true))

(declare-fun lambda!288588 () Int)

(assert (=> bs!1262556 (not (= lambda!288588 lambda!288572))))

(assert (=> bs!1262557 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226981)) (= lambda!288588 lambda!288569))))

(assert (=> bs!1262556 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227079)) (= lambda!288588 lambda!288571))))

(assert (=> bs!1262558 (not (= lambda!288588 lambda!288576))))

(assert (=> bs!1262556 (not (= lambda!288588 lambda!288570))))

(assert (=> bs!1262559 (not (= lambda!288588 lambda!288584))))

(assert (=> bs!1262558 (not (= lambda!288588 lambda!288577))))

(assert (=> bs!1262560 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2226991) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288588 lambda!288575))))

(assert (=> bs!1262557 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2227114)) (= lambda!288588 lambda!288567))))

(assert (=> b!5456293 (not (= lambda!288588 lambda!288587))))

(assert (=> bs!1262561 (not (= lambda!288588 lambda!288563))))

(assert (=> bs!1262559 (= (= Nil!62024 (_1!35785 lt!2227092)) (= lambda!288588 lambda!288585))))

(assert (=> bs!1262557 (not (= lambda!288588 lambda!288568))))

(assert (=> bs!1262559 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) lt!2227065) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288588 lambda!288583))))

(assert (=> bs!1262557 (not (= lambda!288588 lambda!288566))))

(assert (=> bs!1262561 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regOne!31078 r!7292)) (= lt!2226991 (regTwo!31078 r!7292))) (= lambda!288588 lambda!288564))))

(assert (=> bs!1262559 (not (= lambda!288588 lambda!288586))))

(assert (=> bs!1262559 (not (= lambda!288588 lambda!288582))))

(assert (=> bs!1262558 (= (= Nil!62024 (_1!35785 lt!2226926)) (= lambda!288588 lambda!288578))))

(assert (=> bs!1262556 (= (and (= Nil!62024 s!2326) (= (reg!15612 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) (= lt!2226991 lt!2226937)) (= lambda!288588 lambda!288573))))

(assert (=> bs!1262560 (not (= lambda!288588 lambda!288574))))

(assert (=> b!5456293 true))

(assert (=> b!5456293 true))

(declare-fun lambda!288589 () Int)

(assert (=> bs!1262556 (not (= lambda!288589 lambda!288572))))

(assert (=> bs!1262557 (not (= lambda!288589 lambda!288569))))

(assert (=> bs!1262556 (not (= lambda!288589 lambda!288571))))

(assert (=> bs!1262558 (not (= lambda!288589 lambda!288576))))

(assert (=> bs!1262556 (not (= lambda!288589 lambda!288570))))

(assert (=> bs!1262559 (not (= lambda!288589 lambda!288584))))

(assert (=> bs!1262558 (= (= Nil!62024 (_1!35785 lt!2226926)) (= lambda!288589 lambda!288577))))

(assert (=> bs!1262560 (not (= lambda!288589 lambda!288575))))

(assert (=> bs!1262557 (not (= lambda!288589 lambda!288567))))

(assert (=> b!5456293 (not (= lambda!288589 lambda!288587))))

(assert (=> bs!1262561 (not (= lambda!288589 lambda!288563))))

(assert (=> bs!1262559 (not (= lambda!288589 lambda!288585))))

(assert (=> bs!1262559 (not (= lambda!288589 lambda!288583))))

(assert (=> bs!1262557 (not (= lambda!288589 lambda!288566))))

(assert (=> bs!1262561 (not (= lambda!288589 lambda!288564))))

(assert (=> bs!1262559 (= (= Nil!62024 (_1!35785 lt!2227092)) (= lambda!288589 lambda!288586))))

(assert (=> bs!1262559 (not (= lambda!288589 lambda!288582))))

(assert (=> bs!1262558 (not (= lambda!288589 lambda!288578))))

(assert (=> bs!1262556 (not (= lambda!288589 lambda!288573))))

(assert (=> bs!1262560 (not (= lambda!288589 lambda!288574))))

(assert (=> bs!1262557 (not (= lambda!288589 lambda!288568))))

(assert (=> b!5456293 (not (= lambda!288589 lambda!288588))))

(assert (=> b!5456293 true))

(assert (=> b!5456293 true))

(declare-fun b!5456227 () Bool)

(declare-fun e!3378981 () Bool)

(declare-fun call!397615 () Bool)

(assert (=> b!5456227 (= e!3378981 call!397615)))

(declare-fun bm!397599 () Bool)

(declare-fun call!397716 () Bool)

(assert (=> bm!397599 (= call!397615 call!397716)))

(declare-fun bm!397600 () Bool)

(declare-fun call!397738 () Bool)

(declare-fun call!397643 () Bool)

(assert (=> bm!397600 (= call!397738 call!397643)))

(declare-fun bm!397601 () Bool)

(declare-fun call!397723 () Bool)

(declare-fun call!397658 () Bool)

(assert (=> bm!397601 (= call!397723 call!397658)))

(declare-fun b!5456228 () Bool)

(declare-fun e!3379011 () Bool)

(declare-fun tp!1501873 () Bool)

(assert (=> b!5456228 (= e!3379011 tp!1501873)))

(declare-fun bm!397602 () Bool)

(declare-fun call!397694 () Bool)

(declare-fun call!397781 () Bool)

(assert (=> bm!397602 (= call!397694 call!397781)))

(declare-fun bm!397603 () Bool)

(declare-fun call!397708 () Bool)

(declare-fun call!397648 () Bool)

(assert (=> bm!397603 (= call!397708 call!397648)))

(declare-fun bm!397604 () Bool)

(declare-fun call!397810 () Bool)

(declare-fun call!397767 () Bool)

(assert (=> bm!397604 (= call!397810 call!397767)))

(declare-fun bm!397605 () Bool)

(declare-datatypes ((Unit!154836 0))(
  ( (Unit!154837) )
))
(declare-fun call!397784 () Unit!154836)

(declare-fun call!397656 () Unit!154836)

(assert (=> bm!397605 (= call!397784 call!397656)))

(declare-fun call!397621 () Bool)

(declare-fun c!953069 () Bool)

(declare-fun bm!397606 () Bool)

(declare-fun c!953068 () Bool)

(declare-fun Exists!2464 (Int) Bool)

(assert (=> bm!397606 (= call!397621 (Exists!2464 (ite c!953068 lambda!288572 (ite c!953069 lambda!288574 lambda!288586))))))

(declare-fun c!953073 () Bool)

(declare-fun call!397675 () Bool)

(declare-fun lt!2227062 () Regex!15283)

(declare-fun bm!397607 () Bool)

(declare-fun matchRSpec!2386 (Regex!15283 List!62148) Bool)

(assert (=> bm!397607 (= call!397675 (matchRSpec!2386 (ite c!953073 lt!2227062 lt!2227065) (ite c!953073 s!2326 (_1!35785 lt!2227092))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62149 0))(
  ( (Nil!62025) (Cons!62025 (h!68473 Regex!15283) (t!375378 List!62149)) )
))
(declare-datatypes ((Context!9334 0))(
  ( (Context!9335 (exprs!5167 List!62149)) )
))
(declare-fun lt!2227048 () (InoxSet Context!9334))

(declare-fun call!397748 () Bool)

(declare-fun lt!2227047 () (InoxSet Context!9334))

(declare-fun c!953075 () Bool)

(declare-fun lt!2226984 () (InoxSet Context!9334))

(declare-fun lt!2227075 () (InoxSet Context!9334))

(declare-fun c!953067 () Bool)

(declare-fun c!953070 () Bool)

(declare-fun bm!397608 () Bool)

(declare-fun lt!2227117 () List!62149)

(declare-fun lt!2227014 () (InoxSet Context!9334))

(declare-fun lt!2227069 () tuple2!64964)

(declare-fun z!1189 () (InoxSet Context!9334))

(declare-fun lt!2227086 () List!62148)

(declare-fun lt!2227108 () (InoxSet Context!9334))

(declare-fun matchZipper!1527 ((InoxSet Context!9334) List!62148) Bool)

(assert (=> bm!397608 (= call!397748 (matchZipper!1527 (ite c!953075 lt!2227075 (ite c!953073 ((_ map or) lt!2227014 lt!2226984) (ite c!953070 lt!2227047 (ite c!953068 z!1189 (ite c!953067 (ite c!953069 lt!2227108 (store ((as const (Array Context!9334 Bool)) false) (Context!9335 lt!2227117) true)) lt!2227048))))) (ite (or c!953075 c!953073) (t!375377 s!2326) (ite (or c!953070 c!953068) s!2326 (ite c!953067 (ite c!953069 (_1!35785 lt!2227069) lt!2227086) (t!375377 s!2326))))))))

(declare-fun bm!397609 () Bool)

(declare-fun call!397666 () Unit!154836)

(declare-fun call!397788 () Unit!154836)

(assert (=> bm!397609 (= call!397666 call!397788)))

(declare-fun lt!2226950 () Context!9334)

(declare-fun call!397803 () (InoxSet Context!9334))

(declare-fun bm!397610 () Bool)

(declare-fun lt!2227061 () Context!9334)

(declare-fun lt!2226969 () Context!9334)

(declare-fun derivationStepZipperUp!655 (Context!9334 C!30836) (InoxSet Context!9334))

(assert (=> bm!397610 (= call!397803 (derivationStepZipperUp!655 (ite c!953073 lt!2226950 (ite c!953070 lt!2226969 lt!2227061)) (h!68472 s!2326)))))

(declare-fun bm!397611 () Bool)

(declare-fun call!397733 () Bool)

(declare-fun call!397619 () Bool)

(assert (=> bm!397611 (= call!397733 call!397619)))

(declare-fun bm!397612 () Bool)

(declare-fun call!397775 () Bool)

(declare-fun call!397608 () Bool)

(assert (=> bm!397612 (= call!397775 call!397608)))

(declare-fun call!397662 () Unit!154836)

(declare-fun bm!397613 () Bool)

(declare-fun c!953074 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!440 (Regex!15283 List!62148) Unit!154836)

(assert (=> bm!397613 (= call!397662 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!440 (reg!15612 (regOne!31078 r!7292)) (ite c!953069 (_1!35785 lt!2226926) (ite c!953074 (_1!35785 lt!2227092) Nil!62024))))))

(declare-fun lt!2227105 () (InoxSet Context!9334))

(declare-fun bm!397614 () Bool)

(declare-fun call!397627 () Bool)

(assert (=> bm!397614 (= call!397627 (matchZipper!1527 (ite c!953073 lt!2227014 lt!2227105) (t!375377 s!2326)))))

(declare-fun b!5456229 () Bool)

(declare-fun e!3378977 () Bool)

(declare-fun tp_is_empty!39819 () Bool)

(assert (=> b!5456229 (= e!3378977 tp_is_empty!39819)))

(declare-fun b!5456230 () Bool)

(declare-fun res!2323690 () Bool)

(declare-fun e!3379004 () Bool)

(assert (=> b!5456230 (=> res!2323690 e!3379004)))

(declare-datatypes ((List!62150 0))(
  ( (Nil!62026) (Cons!62026 (h!68474 Context!9334) (t!375379 List!62150)) )
))
(declare-fun zl!343 () List!62150)

(declare-fun isEmpty!34009 (List!62150) Bool)

(assert (=> b!5456230 (= res!2323690 (not (isEmpty!34009 (t!375379 zl!343))))))

(declare-fun bm!397615 () Bool)

(declare-fun call!397607 () Bool)

(declare-fun call!397711 () Bool)

(assert (=> bm!397615 (= call!397607 call!397711)))

(declare-fun bm!397616 () Bool)

(declare-fun call!397628 () Unit!154836)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1572 (Regex!15283 Regex!15283 List!62148) Unit!154836)

(assert (=> bm!397616 (= call!397628 (lemmaFindConcatSeparationEquivalentToExists!1572 (ite c!953070 (regOne!31078 (regOne!31078 r!7292)) (ite c!953068 (regTwo!31078 (regOne!31078 r!7292)) (ite c!953069 (reg!15612 (regOne!31078 r!7292)) lt!2227065))) (ite c!953070 lt!2227114 (ite c!953068 lt!2226937 (ite c!953069 lt!2226991 (regTwo!31078 r!7292)))) (ite (or c!953070 c!953068) s!2326 (ite c!953069 (_1!35785 lt!2226926) s!2326))))))

(declare-fun bm!397617 () Bool)

(declare-fun call!397706 () Bool)

(declare-fun call!397642 () Bool)

(assert (=> bm!397617 (= call!397706 call!397642)))

(declare-fun bm!397618 () Bool)

(declare-fun call!397686 () Bool)

(declare-fun call!397749 () Bool)

(assert (=> bm!397618 (= call!397686 call!397749)))

(declare-fun lt!2226931 () Regex!15283)

(declare-fun lt!2227015 () Context!9334)

(declare-fun call!397637 () Unit!154836)

(declare-fun lt!2226918 () tuple2!64964)

(declare-fun lt!2227103 () Regex!15283)

(declare-fun lt!2226976 () (InoxSet Context!9334))

(declare-fun lt!2227027 () Regex!15283)

(declare-fun lt!2227123 () (InoxSet Context!9334))

(declare-fun lt!2227002 () Context!9334)

(declare-fun lt!2226939 () (InoxSet Context!9334))

(declare-fun lt!2226963 () Regex!15283)

(declare-fun lt!2227112 () Regex!15283)

(declare-fun bm!397619 () Bool)

(declare-fun theoremZipperRegexEquiv!563 ((InoxSet Context!9334) List!62150 Regex!15283 List!62148) Unit!154836)

(assert (=> bm!397619 (= call!397637 (theoremZipperRegexEquiv!563 (ite c!953075 lt!2227075 (ite c!953073 lt!2227123 (ite c!953070 lt!2227047 (ite c!953068 lt!2226976 (ite c!953067 lt!2227108 lt!2226939))))) (ite c!953075 (Cons!62026 lt!2227061 Nil!62026) (ite c!953073 (Cons!62026 lt!2226950 Nil!62026) (ite c!953070 (Cons!62026 lt!2226969 Nil!62026) (ite c!953068 (Cons!62026 lt!2227002 Nil!62026) (ite c!953067 (Cons!62026 lt!2227015 Nil!62026) (Cons!62026 lt!2227061 Nil!62026)))))) (ite c!953075 lt!2227112 (ite c!953073 lt!2226931 (ite c!953070 lt!2226963 (ite c!953068 lt!2227103 (ite c!953067 (reg!15612 (regOne!31078 r!7292)) lt!2227027))))) (ite c!953075 (t!375377 s!2326) (ite (or c!953073 c!953070 c!953068) s!2326 (ite c!953067 (ite c!953069 (_1!35785 lt!2227069) (_1!35785 lt!2226918)) s!2326)))))))

(declare-fun b!5456231 () Bool)

(declare-fun e!3379014 () Unit!154836)

(declare-fun Unit!154838 () Unit!154836)

(assert (=> b!5456231 (= e!3379014 Unit!154838)))

(declare-fun bm!397620 () Bool)

(declare-datatypes ((Option!15394 0))(
  ( (None!15393) (Some!15393 (v!51422 tuple2!64964)) )
))
(declare-fun call!397799 () Option!15394)

(declare-fun call!397630 () Option!15394)

(assert (=> bm!397620 (= call!397799 call!397630)))

(declare-fun bm!397621 () Bool)

(declare-fun lt!2227115 () (InoxSet Context!9334))

(declare-fun call!397786 () Unit!154836)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!520 ((InoxSet Context!9334) (InoxSet Context!9334) List!62148) Unit!154836)

(assert (=> bm!397621 (= call!397786 (lemmaZipperConcatMatchesSameAsBothZippers!520 (ite c!953073 lt!2227014 lt!2227115) (ite c!953073 lt!2226984 lt!2227105) (t!375377 s!2326)))))

(declare-fun bm!397622 () Bool)

(declare-fun call!397604 () Unit!154836)

(declare-fun call!397718 () Unit!154836)

(assert (=> bm!397622 (= call!397604 call!397718)))

(declare-fun call!397674 () Bool)

(declare-fun bm!397623 () Bool)

(assert (=> bm!397623 (= call!397674 (Exists!2464 (ite c!953070 lambda!288566 (ite c!953068 lambda!288573 (ite c!953069 lambda!288576 (ite c!953074 lambda!288584 lambda!288587))))))))

(declare-fun b!5456232 () Bool)

(declare-fun e!3378987 () Bool)

(declare-fun lt!2227064 () Bool)

(declare-fun call!397692 () Bool)

(assert (=> b!5456232 (= e!3378987 (= lt!2227064 call!397692))))

(declare-fun bm!397624 () Bool)

(declare-fun call!397665 () Bool)

(declare-fun call!397618 () Bool)

(assert (=> bm!397624 (= call!397665 call!397618)))

(declare-fun bm!397625 () Bool)

(declare-fun call!397640 () Regex!15283)

(declare-fun call!397793 () Regex!15283)

(assert (=> bm!397625 (= call!397640 call!397793)))

(declare-fun bm!397626 () Bool)

(declare-fun call!397776 () Bool)

(assert (=> bm!397626 (= call!397608 call!397776)))

(declare-fun bm!397627 () Bool)

(declare-fun call!397681 () Bool)

(declare-fun call!397683 () Bool)

(assert (=> bm!397627 (= call!397681 call!397683)))

(declare-fun bm!397628 () Bool)

(declare-fun call!397805 () Bool)

(declare-fun call!397732 () Bool)

(assert (=> bm!397628 (= call!397805 call!397732)))

(declare-fun bm!397629 () Bool)

(declare-fun call!397736 () Regex!15283)

(declare-fun call!397671 () Regex!15283)

(assert (=> bm!397629 (= call!397736 call!397671)))

(declare-fun bm!397630 () Bool)

(declare-fun call!397730 () Bool)

(assert (=> bm!397630 (= call!397730 call!397706)))

(declare-fun bm!397631 () Bool)

(declare-fun call!397726 () Bool)

(declare-fun call!397610 () Bool)

(assert (=> bm!397631 (= call!397726 call!397610)))

(declare-fun b!5456233 () Bool)

(declare-fun e!3379012 () Unit!154836)

(declare-fun Unit!154839 () Unit!154836)

(assert (=> b!5456233 (= e!3379012 Unit!154839)))

(declare-fun b!5456234 () Bool)

(declare-fun e!3378995 () Bool)

(assert (=> b!5456234 e!3378995))

(declare-fun res!2323691 () Bool)

(assert (=> b!5456234 (=> (not res!2323691) (not e!3378995))))

(declare-fun call!397715 () Bool)

(assert (=> b!5456234 (= res!2323691 (= call!397715 call!397781))))

(declare-fun lt!2227066 () Unit!154836)

(assert (=> b!5456234 (= lt!2227066 call!397718)))

(assert (=> b!5456234 (= lt!2227027 call!397793)))

(declare-fun call!397714 () Bool)

(declare-fun call!397667 () Bool)

(assert (=> b!5456234 (= call!397714 call!397667)))

(declare-fun lt!2227110 () Unit!154836)

(declare-fun call!397728 () Unit!154836)

(assert (=> b!5456234 (= lt!2227110 call!397728)))

(declare-fun call!397703 () (InoxSet Context!9334))

(declare-fun call!397789 () (InoxSet Context!9334))

(assert (=> b!5456234 (= call!397703 call!397789)))

(declare-fun lt!2227101 () Unit!154836)

(declare-fun call!397783 () Unit!154836)

(assert (=> b!5456234 (= lt!2227101 call!397783)))

(assert (=> b!5456234 (= lt!2226939 (store ((as const (Array Context!9334 Bool)) false) lt!2227061 true))))

(declare-fun call!397690 () Bool)

(assert (=> b!5456234 (= call!397607 call!397690)))

(declare-fun lt!2226956 () Unit!154836)

(declare-fun call!397713 () Unit!154836)

(assert (=> b!5456234 (= lt!2226956 call!397713)))

(declare-fun call!397623 () Bool)

(assert (=> b!5456234 (= call!397623 call!397708)))

(declare-fun lt!2226936 () Unit!154836)

(declare-fun call!397792 () Unit!154836)

(assert (=> b!5456234 (= lt!2226936 call!397792)))

(assert (=> b!5456234 (not call!397706)))

(declare-fun lt!2227030 () Unit!154836)

(declare-fun call!397804 () Unit!154836)

(assert (=> b!5456234 (= lt!2227030 call!397804)))

(declare-fun e!3378990 () Unit!154836)

(declare-fun Unit!154840 () Unit!154836)

(assert (=> b!5456234 (= e!3378990 Unit!154840)))

(declare-fun b!5456235 () Bool)

(declare-fun e!3378992 () Bool)

(declare-fun lt!2227055 () (InoxSet Context!9334))

(assert (=> b!5456235 (= e!3378992 (matchZipper!1527 lt!2227055 (t!375377 s!2326)))))

(declare-fun lt!2227021 () (InoxSet Context!9334))

(declare-fun call!397721 () (InoxSet Context!9334))

(declare-fun bm!397632 () Bool)

(declare-fun lambda!288565 () Int)

(declare-fun flatMap!1010 ((InoxSet Context!9334) Int) (InoxSet Context!9334))

(assert (=> bm!397632 (= call!397721 (flatMap!1010 (ite c!953073 lt!2227021 lt!2227108) (ite c!953073 lambda!288565 lambda!288565)))))

(declare-fun bm!397633 () Bool)

(declare-fun call!397622 () Bool)

(assert (=> bm!397633 (= call!397692 call!397622)))

(declare-fun bm!397634 () Bool)

(declare-fun call!397668 () Unit!154836)

(assert (=> bm!397634 (= call!397783 call!397668)))

(declare-fun bm!397635 () Bool)

(declare-fun lt!2227008 () (InoxSet Context!9334))

(declare-fun lt!2226947 () (InoxSet Context!9334))

(declare-fun call!397750 () (InoxSet Context!9334))

(assert (=> bm!397635 (= call!397750 (flatMap!1010 (ite c!953073 lt!2227123 (ite c!953070 lt!2226947 lt!2227008)) (ite c!953073 lambda!288565 (ite c!953070 lambda!288565 lambda!288565))))))

(declare-fun b!5456236 () Bool)

(declare-fun e!3378994 () Bool)

(assert (=> b!5456236 (= c!953070 e!3378994)))

(declare-fun res!2323697 () Bool)

(assert (=> b!5456236 (=> (not res!2323697) (not e!3378994))))

(get-info :version)

(assert (=> b!5456236 (= res!2323697 ((_ is Concat!24128) (regOne!31078 r!7292)))))

(declare-fun e!3378982 () Unit!154836)

(declare-fun e!3379007 () Unit!154836)

(assert (=> b!5456236 (= e!3378982 e!3379007)))

(declare-fun b!5456237 () Bool)

(declare-fun e!3378980 () Bool)

(assert (=> b!5456237 e!3378980))

(declare-fun res!2323701 () Bool)

(assert (=> b!5456237 (=> (not res!2323701) (not e!3378980))))

(declare-fun lt!2227016 () Regex!15283)

(declare-fun lt!2226965 () Bool)

(assert (=> b!5456237 (= res!2323701 (= lt!2226965 (matchRSpec!2386 lt!2227016 s!2326)))))

(declare-fun lt!2227044 () Unit!154836)

(declare-fun call!397653 () Unit!154836)

(assert (=> b!5456237 (= lt!2227044 call!397653)))

(declare-fun lt!2226995 () Bool)

(declare-fun call!397673 () Bool)

(assert (=> b!5456237 (= lt!2226995 call!397673)))

(declare-fun lt!2227031 () Unit!154836)

(declare-fun lt!2227035 () Regex!15283)

(declare-fun mainMatchTheorem!2386 (Regex!15283 List!62148) Unit!154836)

(assert (=> b!5456237 (= lt!2227031 (mainMatchTheorem!2386 lt!2227035 s!2326))))

(assert (=> b!5456237 (= lt!2226965 lt!2226995)))

(assert (=> b!5456237 (= lt!2226995 call!397732)))

(declare-fun call!397774 () Bool)

(assert (=> b!5456237 (= lt!2226965 call!397774)))

(assert (=> b!5456237 (= lt!2227035 (Union!15283 (Concat!24128 (regOne!31079 (regOne!31078 r!7292)) (regTwo!31078 r!7292)) (Concat!24128 (regTwo!31079 (regOne!31078 r!7292)) (regTwo!31078 r!7292))))))

(assert (=> b!5456237 (= lt!2227016 (Concat!24128 (regOne!31078 r!7292) (regTwo!31078 r!7292)))))

(declare-fun lt!2227060 () Unit!154836)

(declare-fun lemmaConcatDistributesInUnion!30 (Regex!15283 Regex!15283 Regex!15283 List!62148) Unit!154836)

(assert (=> b!5456237 (= lt!2227060 (lemmaConcatDistributesInUnion!30 (regOne!31079 (regOne!31078 r!7292)) (regTwo!31079 (regOne!31078 r!7292)) (regTwo!31078 r!7292) s!2326))))

(declare-fun lt!2227084 () Bool)

(assert (=> b!5456237 (= lt!2227084 call!397675)))

(declare-fun lt!2226961 () Unit!154836)

(declare-fun call!397807 () Unit!154836)

(assert (=> b!5456237 (= lt!2226961 call!397807)))

(declare-fun lt!2226954 () Bool)

(declare-fun call!397605 () Bool)

(assert (=> b!5456237 (= lt!2226954 call!397605)))

(declare-fun lt!2226982 () Unit!154836)

(declare-fun call!397693 () Unit!154836)

(assert (=> b!5456237 (= lt!2226982 call!397693)))

(assert (=> b!5456237 (= lt!2227084 call!397749)))

(declare-fun call!397696 () Bool)

(assert (=> b!5456237 (= lt!2227084 call!397696)))

(declare-fun lt!2226970 () Unit!154836)

(declare-fun call!397808 () Unit!154836)

(assert (=> b!5456237 (= lt!2226970 call!397808)))

(declare-fun call!397768 () Regex!15283)

(assert (=> b!5456237 (= lt!2227062 call!397768)))

(assert (=> b!5456237 (= lt!2226954 (matchZipper!1527 lt!2227123 s!2326))))

(assert (=> b!5456237 (= lt!2226954 call!397723)))

(declare-fun lt!2226946 () Unit!154836)

(declare-fun call!397636 () Unit!154836)

(assert (=> b!5456237 (= lt!2226946 call!397636)))

(assert (=> b!5456237 (= lt!2226931 call!397671)))

(declare-fun lt!2226987 () Unit!154836)

(declare-fun e!3378998 () Unit!154836)

(assert (=> b!5456237 (= lt!2226987 e!3378998)))

(declare-fun c!953065 () Bool)

(declare-fun nullable!5452 (Regex!15283) Bool)

(assert (=> b!5456237 (= c!953065 (nullable!5452 (regTwo!31079 (regOne!31078 r!7292))))))

(declare-fun call!397685 () (InoxSet Context!9334))

(assert (=> b!5456237 (= call!397721 call!397685)))

(declare-fun lt!2226930 () Unit!154836)

(declare-fun call!397613 () Unit!154836)

(assert (=> b!5456237 (= lt!2226930 call!397613)))

(declare-fun lt!2226974 () (InoxSet Context!9334))

(assert (=> b!5456237 (= lt!2226974 call!397685)))

(declare-fun lt!2227080 () Unit!154836)

(assert (=> b!5456237 (= lt!2227080 e!3379012)))

(declare-fun c!953064 () Bool)

(declare-fun call!397660 () Bool)

(assert (=> b!5456237 (= c!953064 call!397660)))

(assert (=> b!5456237 (= call!397750 call!397803)))

(declare-fun lt!2227087 () Unit!154836)

(declare-fun call!397731 () Unit!154836)

(assert (=> b!5456237 (= lt!2227087 call!397731)))

(declare-fun lt!2226994 () (InoxSet Context!9334))

(assert (=> b!5456237 (= lt!2226994 call!397803)))

(declare-fun lt!2227010 () Context!9334)

(assert (=> b!5456237 (= lt!2227021 (store ((as const (Array Context!9334 Bool)) false) lt!2227010 true))))

(declare-fun lt!2227039 () List!62149)

(assert (=> b!5456237 (= lt!2227010 (Context!9335 lt!2227039))))

(assert (=> b!5456237 (= lt!2227039 (Cons!62025 (regTwo!31079 (regOne!31078 r!7292)) (t!375378 (exprs!5167 (h!68474 zl!343)))))))

(assert (=> b!5456237 (= lt!2227123 (store ((as const (Array Context!9334 Bool)) false) lt!2226950 true))))

(declare-fun lt!2227053 () List!62149)

(assert (=> b!5456237 (= lt!2226950 (Context!9335 lt!2227053))))

(assert (=> b!5456237 (= lt!2227053 (Cons!62025 (regOne!31079 (regOne!31078 r!7292)) (t!375378 (exprs!5167 (h!68474 zl!343)))))))

(declare-fun e!3379015 () Bool)

(assert (=> b!5456237 (= call!397619 e!3379015)))

(declare-fun res!2323689 () Bool)

(assert (=> b!5456237 (=> res!2323689 e!3379015)))

(declare-fun lt!2226951 () Bool)

(assert (=> b!5456237 (= res!2323689 lt!2226951)))

(assert (=> b!5456237 (= lt!2226951 call!397627)))

(declare-fun lt!2227102 () Unit!154836)

(assert (=> b!5456237 (= lt!2227102 call!397786)))

(declare-fun call!397699 () (InoxSet Context!9334))

(assert (=> b!5456237 (= lt!2226984 call!397699)))

(declare-fun call!397609 () (InoxSet Context!9334))

(assert (=> b!5456237 (= lt!2227014 call!397609)))

(declare-fun Unit!154841 () Unit!154836)

(assert (=> b!5456237 (= e!3378982 Unit!154841)))

(declare-fun call!397691 () Unit!154836)

(declare-fun lt!2227083 () List!62149)

(declare-fun bm!397636 () Bool)

(declare-fun lt!2226977 () List!62149)

(declare-fun lemmaConcatPreservesForall!250 (List!62149 List!62149 Int) Unit!154836)

(assert (=> bm!397636 (= call!397691 (lemmaConcatPreservesForall!250 lt!2226977 lt!2227083 (ite c!953069 lambda!288579 lambda!288581)))))

(declare-fun bm!397637 () Bool)

(declare-fun call!397651 () Unit!154836)

(assert (=> bm!397637 (= call!397651 call!397731)))

(declare-fun bm!397638 () Bool)

(declare-fun call!397620 () (InoxSet Context!9334))

(declare-fun call!397635 () (InoxSet Context!9334))

(assert (=> bm!397638 (= call!397620 call!397635)))

(declare-fun bm!397639 () Bool)

(assert (=> bm!397639 (= call!397781 call!397692)))

(declare-fun bm!397640 () Bool)

(declare-fun call!397737 () Bool)

(assert (=> bm!397640 (= call!397737 (Exists!2464 (ite c!953070 lambda!288568 (ite c!953069 lambda!288574 (ite c!953074 lambda!288585 lambda!288589)))))))

(declare-fun bm!397641 () Bool)

(assert (=> bm!397641 (= call!397776 (Exists!2464 (ite c!953070 lambda!288566 (ite c!953068 lambda!288572 (ite c!953069 lambda!288578 (ite c!953074 lambda!288582 lambda!288587))))))))

(declare-fun lt!2227007 () Regex!15283)

(declare-fun bm!397642 () Bool)

(declare-fun lt!2226992 () List!62148)

(declare-fun matchR!7468 (Regex!15283 List!62148) Bool)

(assert (=> bm!397642 (= call!397658 (matchR!7468 (ite c!953075 lt!2227112 (ite c!953073 lt!2226931 lt!2227007)) (ite c!953075 (t!375377 s!2326) (ite c!953073 s!2326 lt!2226992))))))

(declare-fun Unit!154842 () Unit!154836)

(assert (=> b!5456238 (= e!3379007 Unit!154842)))

(declare-fun lt!2227046 () List!62149)

(assert (=> b!5456238 (= lt!2227046 (Cons!62025 (regTwo!31078 (regOne!31078 r!7292)) (t!375378 (exprs!5167 (h!68474 zl!343)))))))

(declare-fun lt!2227009 () Context!9334)

(assert (=> b!5456238 (= lt!2227009 (Context!9335 lt!2227046))))

(assert (=> b!5456238 (= lt!2227115 call!397635)))

(declare-fun lt!2226973 () (InoxSet Context!9334))

(assert (=> b!5456238 (= lt!2226973 call!397609)))

(declare-fun lt!2226962 () Unit!154836)

(assert (=> b!5456238 (= lt!2226962 call!397728)))

(declare-fun lt!2227000 () Bool)

(assert (=> b!5456238 (= lt!2227000 call!397686)))

(declare-fun res!2323694 () Bool)

(assert (=> b!5456238 (= res!2323694 lt!2227000)))

(assert (=> b!5456238 (=> res!2323694 e!3378981)))

(declare-fun call!397652 () Bool)

(assert (=> b!5456238 (= call!397652 e!3378981)))

(declare-fun lt!2226975 () List!62149)

(assert (=> b!5456238 (= lt!2226975 (Cons!62025 (regOne!31078 (regOne!31078 r!7292)) lt!2227046))))

(assert (=> b!5456238 (= lt!2226969 (Context!9335 lt!2226975))))

(assert (=> b!5456238 (= lt!2227047 (store ((as const (Array Context!9334 Bool)) false) lt!2226969 true))))

(assert (=> b!5456238 (= lt!2226947 (store ((as const (Array Context!9334 Bool)) false) lt!2227009 true))))

(declare-fun lt!2227088 () (InoxSet Context!9334))

(declare-fun call!397634 () (InoxSet Context!9334))

(assert (=> b!5456238 (= lt!2227088 call!397634)))

(declare-fun lt!2226919 () Unit!154836)

(assert (=> b!5456238 (= lt!2226919 call!397651)))

(declare-fun call!397771 () (InoxSet Context!9334))

(assert (=> b!5456238 (= call!397771 call!397634)))

(declare-fun call!397800 () (InoxSet Context!9334))

(assert (=> b!5456238 (= lt!2227105 call!397800)))

(declare-fun lt!2226945 () Unit!154836)

(declare-fun call!397661 () Unit!154836)

(assert (=> b!5456238 (= lt!2226945 call!397661)))

(declare-fun call!397729 () (InoxSet Context!9334))

(assert (=> b!5456238 (= call!397729 call!397800)))

(declare-fun lt!2226924 () Unit!154836)

(assert (=> b!5456238 (= lt!2226924 call!397786)))

(declare-fun res!2323683 () Bool)

(assert (=> b!5456238 (= res!2323683 lt!2227000)))

(declare-fun e!3378985 () Bool)

(assert (=> b!5456238 (=> res!2323683 e!3378985)))

(declare-fun call!397809 () Bool)

(assert (=> b!5456238 (= call!397809 e!3378985)))

(declare-fun call!397777 () Regex!15283)

(assert (=> b!5456238 (= lt!2226963 call!397777)))

(declare-fun lt!2227037 () Unit!154836)

(declare-fun call!397612 () Unit!154836)

(assert (=> b!5456238 (= lt!2227037 call!397612)))

(declare-fun lt!2226971 () Bool)

(declare-fun call!397645 () Bool)

(assert (=> b!5456238 (= lt!2226971 call!397645)))

(assert (=> b!5456238 (= lt!2226971 call!397733)))

(declare-fun call!397780 () Regex!15283)

(assert (=> b!5456238 (= lt!2227114 call!397780)))

(declare-fun lt!2227072 () Unit!154836)

(declare-fun call!397773 () Unit!154836)

(assert (=> b!5456238 (= lt!2227072 call!397773)))

(declare-fun lt!2227073 () Bool)

(declare-fun call!397682 () Bool)

(assert (=> b!5456238 (= lt!2227073 call!397682)))

(assert (=> b!5456238 (= lt!2227073 call!397683)))

(declare-fun lt!2227077 () Unit!154836)

(declare-fun call!397633 () Unit!154836)

(assert (=> b!5456238 (= lt!2227077 call!397633)))

(declare-fun call!397684 () Bool)

(assert (=> b!5456238 (= lt!2226971 call!397684)))

(declare-fun lt!2227074 () Unit!154836)

(assert (=> b!5456238 (= lt!2227074 call!397628)))

(declare-fun call!397752 () Bool)

(assert (=> b!5456238 (= call!397752 call!397674)))

(declare-fun lt!2226935 () Unit!154836)

(declare-fun call!397754 () Unit!154836)

(assert (=> b!5456238 (= lt!2226935 call!397754)))

(declare-fun call!397760 () Bool)

(assert (=> b!5456238 (= call!397776 call!397760)))

(declare-fun lt!2227051 () Unit!154836)

(declare-fun call!397664 () Unit!154836)

(assert (=> b!5456238 (= lt!2227051 call!397664)))

(declare-fun call!397647 () Bool)

(assert (=> b!5456238 (= lt!2227073 call!397647)))

(assert (=> b!5456238 (= lt!2226981 call!397736)))

(declare-fun lt!2227020 () Unit!154836)

(declare-fun call!397722 () Unit!154836)

(assert (=> b!5456238 (= lt!2227020 call!397722)))

(declare-fun call!397702 () Bool)

(assert (=> b!5456238 (= call!397702 call!397737)))

(declare-fun lt!2227054 () Unit!154836)

(declare-fun call!397687 () Unit!154836)

(assert (=> b!5456238 (= lt!2227054 call!397687)))

(declare-fun call!397701 () Bool)

(declare-fun call!397717 () Bool)

(assert (=> b!5456238 (= call!397701 call!397717)))

(declare-fun lt!2226928 () Unit!154836)

(assert (=> b!5456238 (= lt!2226928 call!397788)))

(declare-fun res!2323696 () Bool)

(declare-fun call!397791 () Bool)

(declare-fun call!397806 () Bool)

(assert (=> b!5456238 (= res!2323696 (= call!397791 call!397806))))

(assert (=> b!5456238 (=> (not res!2323696) (not e!3378987))))

(assert (=> b!5456238 e!3378987))

(declare-fun bm!397643 () Bool)

(declare-fun call!397700 () Bool)

(assert (=> bm!397643 (= call!397700 call!397684)))

(declare-fun bm!397644 () Bool)

(assert (=> bm!397644 (= call!397664 call!397807)))

(declare-fun lt!2226921 () Option!15394)

(declare-fun call!397669 () tuple2!64964)

(declare-fun bm!397645 () Bool)

(declare-fun lt!2226952 () Option!15394)

(declare-fun get!21389 (Option!15394) tuple2!64964)

(assert (=> bm!397645 (= call!397669 (get!21389 (ite c!953069 lt!2226952 lt!2226921)))))

(declare-fun e!3379016 () Bool)

(assert (=> b!5456239 e!3379016))

(declare-fun res!2323695 () Bool)

(assert (=> b!5456239 (=> (not res!2323695) (not e!3379016))))

(assert (=> b!5456239 (= res!2323695 (= call!397618 call!397805))))

(declare-fun lt!2226948 () Unit!154836)

(assert (=> b!5456239 (= lt!2226948 call!397666)))

(declare-fun call!397745 () Bool)

(assert (=> b!5456239 (= call!397608 call!397745)))

(declare-fun lt!2226990 () Unit!154836)

(declare-fun call!397724 () Unit!154836)

(assert (=> b!5456239 (= lt!2226990 call!397724)))

(declare-fun call!397720 () Bool)

(assert (=> b!5456239 (= call!397720 call!397621)))

(declare-fun lt!2226927 () Unit!154836)

(declare-fun call!397763 () Unit!154836)

(assert (=> b!5456239 (= lt!2226927 call!397763)))

(declare-fun call!397679 () Regex!15283)

(assert (=> b!5456239 (= lt!2226937 call!397679)))

(assert (=> b!5456239 (= call!397711 call!397700)))

(declare-fun lt!2227116 () Unit!154836)

(declare-fun call!397639 () Unit!154836)

(assert (=> b!5456239 (= lt!2227116 call!397639)))

(declare-fun call!397631 () Bool)

(assert (=> b!5456239 (= call!397631 call!397643)))

(declare-fun lt!2227057 () Unit!154836)

(declare-fun call!397766 () Unit!154836)

(assert (=> b!5456239 (= lt!2227057 call!397766)))

(declare-fun call!397644 () Bool)

(assert (=> b!5456239 (= call!397644 call!397610)))

(declare-fun lt!2227111 () Unit!154836)

(declare-fun call!397707 () Unit!154836)

(assert (=> b!5456239 (= lt!2227111 call!397707)))

(assert (=> b!5456239 (= lt!2227079 call!397736)))

(declare-fun lt!2227091 () Bool)

(declare-fun call!397790 () Bool)

(assert (=> b!5456239 (= lt!2227091 call!397790)))

(declare-fun lt!2226983 () Unit!154836)

(declare-fun call!397617 () Unit!154836)

(assert (=> b!5456239 (= lt!2226983 call!397617)))

(declare-fun call!397677 () Bool)

(assert (=> b!5456239 (= lt!2227091 call!397677)))

(declare-fun call!397753 () Bool)

(assert (=> b!5456239 (= lt!2227091 call!397753)))

(declare-fun lt!2226925 () Unit!154836)

(declare-fun call!397624 () Unit!154836)

(assert (=> b!5456239 (= lt!2226925 call!397624)))

(assert (=> b!5456239 (= lt!2227103 call!397777)))

(declare-fun call!397801 () (InoxSet Context!9334))

(declare-fun call!397695 () (InoxSet Context!9334))

(assert (=> b!5456239 (= call!397801 call!397695)))

(declare-fun lt!2226966 () Unit!154836)

(assert (=> b!5456239 (= lt!2226966 call!397668)))

(declare-fun lt!2227023 () (InoxSet Context!9334))

(assert (=> b!5456239 (= lt!2227023 call!397695)))

(assert (=> b!5456239 (= lt!2226976 (store ((as const (Array Context!9334 Bool)) false) lt!2227002 true))))

(declare-fun lt!2226940 () List!62149)

(assert (=> b!5456239 (= lt!2227002 (Context!9335 lt!2226940))))

(declare-fun lt!2227032 () List!62149)

(assert (=> b!5456239 (= lt!2226940 (Cons!62025 (regOne!31078 (regOne!31078 r!7292)) lt!2227032))))

(declare-fun lt!2227063 () (InoxSet Context!9334))

(assert (=> b!5456239 (= lt!2227063 call!397620)))

(assert (=> b!5456239 (= lt!2227032 (Cons!62025 (regTwo!31078 (regOne!31078 r!7292)) (t!375378 (exprs!5167 (h!68474 zl!343)))))))

(declare-fun e!3379005 () Unit!154836)

(declare-fun Unit!154843 () Unit!154836)

(assert (=> b!5456239 (= e!3379005 Unit!154843)))

(declare-fun lt!2227026 () Option!15394)

(declare-fun lt!2226955 () Option!15394)

(declare-fun bm!397646 () Bool)

(declare-fun call!397611 () tuple2!64964)

(assert (=> bm!397646 (= call!397611 (get!21389 (ite c!953069 lt!2226955 lt!2227026)))))

(declare-fun bm!397647 () Bool)

(declare-fun call!397680 () Regex!15283)

(declare-fun generalisedConcat!952 (List!62149) Regex!15283)

(assert (=> bm!397647 (= call!397680 (generalisedConcat!952 (ite c!953075 (t!375378 (exprs!5167 (h!68474 zl!343))) (ite c!953073 lt!2227039 (ite c!953070 lt!2227046 (t!375378 (exprs!5167 (h!68474 zl!343))))))))))

(declare-fun b!5456240 () Bool)

(declare-fun e!3378979 () Bool)

(assert (=> b!5456240 (= e!3378979 false)))

(declare-fun lt!2226964 () Regex!15283)

(declare-fun bm!397648 () Bool)

(assert (=> bm!397648 (= call!397807 (mainMatchTheorem!2386 (ite c!953073 lt!2227062 (ite c!953070 lt!2227114 (ite c!953068 lt!2227079 (ite c!953067 lt!2226964 (regTwo!31078 r!7292))))) s!2326))))

(declare-fun b!5456241 () Bool)

(declare-fun res!2323704 () Bool)

(declare-fun e!3378988 () Bool)

(assert (=> b!5456241 (=> (not res!2323704) (not e!3378988))))

(declare-fun unfocusZipper!1025 (List!62150) Regex!15283)

(assert (=> b!5456241 (= res!2323704 (= r!7292 (unfocusZipper!1025 zl!343)))))

(declare-fun lt!2227025 () Context!9334)

(declare-fun bm!397649 () Bool)

(assert (=> bm!397649 (= call!397695 (derivationStepZipperUp!655 (ite c!953068 lt!2227002 lt!2227025) (h!68472 s!2326)))))

(declare-fun b!5456242 () Bool)

(assert (=> b!5456242 (= e!3379007 e!3379005)))

(assert (=> b!5456242 (= c!953068 ((_ is Concat!24128) (regOne!31078 r!7292)))))

(declare-fun b!5456243 () Bool)

(declare-fun Unit!154844 () Unit!154836)

(assert (=> b!5456243 (= e!3379012 Unit!154844)))

(declare-fun lt!2226932 () Unit!154836)

(assert (=> b!5456243 (= lt!2226932 (lemmaZipperConcatMatchesSameAsBothZippers!520 lt!2227014 lt!2227055 (t!375377 s!2326)))))

(declare-fun res!2323712 () Bool)

(assert (=> b!5456243 (= res!2323712 lt!2226951)))

(declare-fun e!3378996 () Bool)

(assert (=> b!5456243 (=> res!2323712 e!3378996)))

(declare-fun call!397751 () Bool)

(assert (=> b!5456243 (= call!397751 e!3378996)))

(declare-fun call!397689 () List!62148)

(declare-fun bm!397650 () Bool)

(declare-fun ++!13645 (List!62148 List!62148) List!62148)

(assert (=> bm!397650 (= call!397689 (++!13645 (ite c!953069 (_2!35785 lt!2227069) (_1!35785 lt!2226918)) (ite c!953069 (_2!35785 lt!2226926) (_2!35785 lt!2226918))))))

(declare-fun e!3378993 () Unit!154836)

(declare-fun Unit!154845 () Unit!154836)

(assert (=> b!5456244 (= e!3378993 Unit!154845)))

(declare-fun lt!2227098 () Unit!154836)

(declare-fun call!397782 () Unit!154836)

(assert (=> b!5456244 (= lt!2227098 call!397782)))

(declare-fun call!397712 () Bool)

(declare-fun call!397672 () Bool)

(assert (=> b!5456244 (= call!397712 call!397672)))

(declare-fun lt!2227090 () Unit!154836)

(declare-fun call!397734 () Unit!154836)

(assert (=> b!5456244 (= lt!2227090 call!397734)))

(declare-fun call!397735 () Option!15394)

(assert (=> b!5456244 (= lt!2226955 call!397735)))

(declare-fun call!397638 () Bool)

(assert (=> b!5456244 (= call!397638 call!397726)))

(declare-fun lt!2226960 () Unit!154836)

(assert (=> b!5456244 (= lt!2226960 call!397662)))

(declare-fun call!397697 () Bool)

(assert (=> b!5456244 (= call!397697 call!397738)))

(declare-fun lt!2227070 () Unit!154836)

(declare-fun call!397688 () Unit!154836)

(assert (=> b!5456244 (= lt!2227070 call!397688)))

(declare-fun call!397795 () Bool)

(assert (=> b!5456244 (= call!397795 call!397775)))

(assert (=> b!5456244 (= lt!2227069 call!397611)))

(declare-fun lt!2227006 () Unit!154836)

(declare-fun call!397758 () Unit!154836)

(assert (=> b!5456244 (= lt!2227006 call!397758)))

(declare-fun lt!2227100 () List!62148)

(declare-fun call!397710 () List!62148)

(assert (=> b!5456244 (= lt!2227100 call!397710)))

(declare-fun lt!2226943 () List!62148)

(assert (=> b!5456244 (= lt!2226943 call!397689)))

(declare-fun lt!2227003 () List!62148)

(declare-fun call!397719 () List!62148)

(assert (=> b!5456244 (= lt!2227003 call!397719)))

(declare-fun lt!2226938 () List!62148)

(declare-fun call!397616 () List!62148)

(assert (=> b!5456244 (= lt!2226938 call!397616)))

(assert (=> b!5456244 (= lt!2227003 lt!2226938)))

(declare-fun lt!2227106 () Unit!154836)

(declare-fun call!397743 () Unit!154836)

(assert (=> b!5456244 (= lt!2227106 call!397743)))

(declare-fun call!397614 () Bool)

(assert (=> b!5456244 call!397614))

(declare-fun lt!2226996 () Unit!154836)

(declare-fun call!397725 () Unit!154836)

(assert (=> b!5456244 (= lt!2226996 call!397725)))

(declare-fun call!397755 () Bool)

(assert (=> b!5456244 call!397755))

(declare-fun lt!2227085 () Unit!154836)

(assert (=> b!5456244 (= lt!2227085 call!397604)))

(declare-fun call!397740 () Bool)

(assert (=> b!5456244 (= call!397740 call!397730)))

(declare-fun lt!2226922 () Unit!154836)

(declare-fun call!397727 () Unit!154836)

(assert (=> b!5456244 (= lt!2226922 call!397727)))

(assert (=> b!5456244 call!397810))

(declare-fun lt!2226959 () Unit!154836)

(declare-fun call!397742 () Unit!154836)

(assert (=> b!5456244 (= lt!2226959 call!397742)))

(declare-fun lt!2226934 () Unit!154836)

(declare-fun call!397747 () Unit!154836)

(assert (=> b!5456244 (= lt!2226934 call!397747)))

(declare-fun call!397654 () Bool)

(assert (=> b!5456244 call!397654))

(declare-fun lt!2227059 () Unit!154836)

(declare-fun call!397778 () Unit!154836)

(assert (=> b!5456244 (= lt!2227059 call!397778)))

(declare-fun res!2323708 () Bool)

(declare-fun call!397787 () Bool)

(assert (=> b!5456244 (= res!2323708 call!397787)))

(declare-fun e!3379001 () Bool)

(assert (=> b!5456244 (=> (not res!2323708) (not e!3379001))))

(assert (=> b!5456244 e!3379001))

(declare-fun lt!2227081 () Unit!154836)

(assert (=> b!5456244 (= lt!2227081 call!397691)))

(declare-fun call!397663 () Bool)

(assert (=> b!5456244 call!397663))

(assert (=> b!5456245 e!3378979))

(declare-fun res!2323702 () Bool)

(assert (=> b!5456245 (=> (not res!2323702) (not e!3378979))))

(assert (=> b!5456245 (= res!2323702 call!397723)))

(declare-fun lt!2226933 () Unit!154836)

(assert (=> b!5456245 (= lt!2226933 call!397725)))

(declare-fun call!397698 () Bool)

(assert (=> b!5456245 call!397698))

(declare-fun lt!2226929 () Unit!154836)

(assert (=> b!5456245 (= lt!2226929 call!397743)))

(assert (=> b!5456245 (= lt!2226992 call!397719)))

(assert (=> b!5456245 (= lt!2226992 call!397616)))

(declare-fun lt!2227033 () List!62148)

(declare-fun call!397705 () List!62148)

(assert (=> b!5456245 (= lt!2227033 call!397705)))

(declare-fun lt!2226941 () List!62148)

(declare-fun lt!2226957 () tuple2!64964)

(assert (=> b!5456245 (= lt!2226941 (++!13645 (_1!35785 lt!2226957) (_2!35785 lt!2226957)))))

(declare-fun lt!2227043 () Unit!154836)

(assert (=> b!5456245 (= lt!2227043 call!397758)))

(assert (=> b!5456245 (= lt!2226957 call!397669)))

(declare-fun call!397626 () Bool)

(assert (=> b!5456245 (= call!397726 call!397626)))

(declare-fun lt!2227093 () Unit!154836)

(declare-fun call!397678 () Unit!154836)

(assert (=> b!5456245 (= lt!2227093 call!397678)))

(declare-fun call!397625 () Bool)

(declare-fun call!397629 () Bool)

(assert (=> b!5456245 (= call!397625 call!397629)))

(declare-fun lt!2227041 () Unit!154836)

(declare-fun call!397769 () Unit!154836)

(assert (=> b!5456245 (= lt!2227041 call!397769)))

(declare-fun call!397794 () Bool)

(assert (=> b!5456245 (= call!397638 call!397794)))

(assert (=> b!5456245 (= lt!2226921 call!397799)))

(declare-fun lt!2226920 () Unit!154836)

(declare-fun call!397762 () Unit!154836)

(assert (=> b!5456245 (= lt!2226920 call!397762)))

(assert (=> b!5456245 (= (matchR!7468 lt!2227065 (_1!35785 lt!2227092)) call!397675)))

(declare-fun lt!2227118 () Unit!154836)

(assert (=> b!5456245 (= lt!2227118 call!397693)))

(declare-fun lt!2227052 () Option!15394)

(assert (=> b!5456245 (= lt!2227092 (get!21389 lt!2227052))))

(declare-fun call!397632 () Bool)

(assert (=> b!5456245 (= call!397738 call!397632)))

(declare-fun lt!2227120 () Unit!154836)

(assert (=> b!5456245 (= lt!2227120 call!397688)))

(declare-fun call!397798 () Bool)

(declare-fun call!397649 () Bool)

(assert (=> b!5456245 (= call!397798 call!397649)))

(declare-fun call!397765 () Option!15394)

(assert (=> b!5456245 (= lt!2227052 call!397765)))

(declare-fun lt!2227094 () Unit!154836)

(assert (=> b!5456245 (= lt!2227094 call!397734)))

(declare-fun call!397759 () Bool)

(assert (=> b!5456245 call!397759))

(declare-fun lt!2226967 () Unit!154836)

(declare-fun call!397756 () Unit!154836)

(assert (=> b!5456245 (= lt!2226967 call!397756)))

(declare-fun call!397744 () Bool)

(assert (=> b!5456245 call!397744))

(declare-fun lt!2226998 () Regex!15283)

(assert (=> b!5456245 (= lt!2226998 (Concat!24128 lt!2227065 (regTwo!31078 r!7292)))))

(assert (=> b!5456245 (= lt!2227065 (Concat!24128 (reg!15612 (regOne!31078 r!7292)) lt!2226991))))

(declare-fun lt!2227013 () Unit!154836)

(assert (=> b!5456245 (= lt!2227013 call!397666)))

(declare-fun e!3378986 () Bool)

(assert (=> b!5456245 e!3378986))

(declare-fun res!2323703 () Bool)

(assert (=> b!5456245 (=> (not res!2323703) (not e!3378986))))

(assert (=> b!5456245 (= res!2323703 call!397614)))

(declare-fun lt!2227104 () Unit!154836)

(declare-fun call!397764 () Unit!154836)

(assert (=> b!5456245 (= lt!2227104 call!397764)))

(declare-fun call!397761 () Bool)

(declare-fun call!397709 () Bool)

(assert (=> b!5456245 (= call!397761 call!397709)))

(declare-fun lt!2227071 () Unit!154836)

(assert (=> b!5456245 (= lt!2227071 call!397784)))

(assert (=> b!5456245 (= call!397787 call!397694)))

(declare-fun lt!2227121 () Unit!154836)

(assert (=> b!5456245 (= lt!2227121 call!397604)))

(assert (=> b!5456245 call!397730))

(assert (=> b!5456245 (= lt!2227086 call!397689)))

(declare-fun call!397655 () List!62149)

(assert (=> b!5456245 (= lt!2227117 call!397655)))

(declare-fun lt!2226978 () Unit!154836)

(assert (=> b!5456245 (= lt!2226978 call!397747)))

(declare-fun lt!2227042 () Unit!154836)

(assert (=> b!5456245 (= lt!2227042 call!397742)))

(assert (=> b!5456245 (= lt!2226918 call!397611)))

(declare-fun call!397650 () Bool)

(assert (=> b!5456245 call!397650))

(declare-fun lt!2227012 () (InoxSet Context!9334))

(declare-fun findConcatSeparationZippers!82 ((InoxSet Context!9334) (InoxSet Context!9334) List!62148 List!62148 List!62148) Option!15394)

(assert (=> b!5456245 (= lt!2227026 (findConcatSeparationZippers!82 lt!2227108 lt!2227012 Nil!62024 s!2326 s!2326))))

(declare-fun lt!2227005 () Unit!154836)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!82 ((InoxSet Context!9334) Context!9334 List!62148) Unit!154836)

(assert (=> b!5456245 (= lt!2227005 (lemmaConcatZipperMatchesStringThenFindConcatDefined!82 lt!2227108 lt!2227025 s!2326))))

(declare-fun lambda!288580 () Int)

(declare-fun map!14251 ((InoxSet Context!9334) Int) (InoxSet Context!9334))

(assert (=> b!5456245 (= (map!14251 lt!2227108 lambda!288580) (store ((as const (Array Context!9334 Bool)) false) (Context!9335 call!397655) true))))

(declare-fun lt!2226958 () Unit!154836)

(assert (=> b!5456245 (= lt!2226958 call!397691)))

(declare-fun lt!2227029 () Unit!154836)

(declare-fun lemmaMapOnSingletonSet!84 ((InoxSet Context!9334) Context!9334 Int) Unit!154836)

(assert (=> b!5456245 (= lt!2227029 (lemmaMapOnSingletonSet!84 lt!2227108 lt!2227015 lambda!288580))))

(declare-fun e!3379002 () Unit!154836)

(declare-fun Unit!154846 () Unit!154836)

(assert (=> b!5456245 (= e!3379002 Unit!154846)))

(declare-fun bm!397651 () Bool)

(declare-fun lemmaFlatMapOnSingletonSet!542 ((InoxSet Context!9334) Context!9334 Int) Unit!154836)

(assert (=> bm!397651 (= call!397731 (lemmaFlatMapOnSingletonSet!542 (ite c!953073 lt!2227123 (ite c!953070 lt!2227047 lt!2227012)) (ite c!953073 lt!2226950 (ite c!953070 lt!2226969 lt!2227025)) (ite c!953073 lambda!288565 (ite c!953070 lambda!288565 lambda!288565))))))

(declare-fun c!953072 () Bool)

(declare-fun bm!397652 () Bool)

(assert (=> bm!397652 (= call!397753 (matchR!7468 (ite c!953068 lt!2227103 (ite c!953067 (ite c!953069 lt!2226964 (reg!15612 (regOne!31078 r!7292))) (ite c!953072 (regOne!31078 r!7292) (regTwo!31078 r!7292)))) (ite c!953068 s!2326 (ite c!953067 (ite c!953069 lt!2226938 (_1!35785 lt!2226918)) s!2326))))))

(declare-fun bm!397653 () Bool)

(declare-fun call!397739 () Option!15394)

(assert (=> bm!397653 (= call!397735 call!397739)))

(declare-fun call!397746 () Option!15394)

(declare-fun bm!397654 () Bool)

(declare-fun findConcatSeparation!1808 (Regex!15283 Regex!15283 List!62148 List!62148 List!62148) Option!15394)

(assert (=> bm!397654 (= call!397746 (findConcatSeparation!1808 (ite (or c!953070 c!953068) (regTwo!31078 (regOne!31078 r!7292)) (ite c!953069 (reg!15612 (regOne!31078 r!7292)) (ite c!953074 lt!2227065 (reg!15612 (regOne!31078 r!7292))))) (ite c!953070 lt!2226981 (ite c!953068 lt!2226937 (ite c!953069 lt!2226991 (ite c!953074 (regTwo!31078 r!7292) lt!2226991)))) Nil!62024 (ite (or c!953070 c!953068) s!2326 (ite c!953069 (_1!35785 lt!2226926) (ite c!953074 s!2326 Nil!62024))) (ite (or c!953070 c!953068) s!2326 (ite c!953069 (_1!35785 lt!2226926) (ite c!953074 s!2326 Nil!62024)))))))

(declare-fun bm!397655 () Bool)

(declare-fun call!397641 () Bool)

(assert (=> bm!397655 (= call!397641 call!397753)))

(declare-fun bm!397656 () Bool)

(assert (=> bm!397656 (= call!397765 call!397735)))

(declare-fun b!5456246 () Bool)

(declare-fun res!2323681 () Bool)

(assert (=> b!5456246 (=> res!2323681 e!3379004)))

(declare-fun generalisedUnion!1212 (List!62149) Regex!15283)

(declare-fun unfocusZipperList!725 (List!62150) List!62149)

(assert (=> b!5456246 (= res!2323681 (not (= r!7292 (generalisedUnion!1212 (unfocusZipperList!725 zl!343)))))))

(declare-fun bm!397657 () Bool)

(assert (=> bm!397657 (= call!397624 call!397612)))

(declare-fun bm!397658 () Bool)

(assert (=> bm!397658 (= call!397717 (Exists!2464 (ite c!953070 lambda!288569 (ite c!953068 lambda!288571 (ite c!953069 lambda!288577 lambda!288582)))))))

(declare-fun lt!2226972 () (InoxSet Context!9334))

(declare-fun bm!397659 () Bool)

(assert (=> bm!397659 (= call!397751 (matchZipper!1527 (ite c!953073 ((_ map or) lt!2227014 lt!2227055) (ite c!953070 ((_ map or) lt!2227115 lt!2227105) (ite c!953067 (ite c!953074 lt!2227012 lt!2226972) z!1189))) (ite (or c!953073 c!953070) (t!375377 s!2326) (ite (and c!953067 c!953074) (_2!35785 lt!2226918) s!2326))))))

(declare-fun bm!397660 () Bool)

(assert (=> bm!397660 (= call!397643 call!397717)))

(declare-fun bm!397661 () Bool)

(assert (=> bm!397661 (= call!397616 (++!13645 (ite c!953069 (_1!35785 lt!2227069) lt!2226941) (ite c!953069 lt!2226943 (_2!35785 lt!2227092))))))

(declare-fun bm!397662 () Bool)

(declare-fun call!397757 () Bool)

(assert (=> bm!397662 (= call!397683 call!397757)))

(declare-fun b!5456247 () Bool)

(declare-fun res!2323686 () Bool)

(declare-fun e!3379009 () Bool)

(assert (=> b!5456247 (=> res!2323686 e!3379009)))

(declare-fun lt!2227034 () (InoxSet Context!9334))

(declare-fun lt!2227113 () List!62150)

(declare-fun toList!9067 ((InoxSet Context!9334)) List!62150)

(assert (=> b!5456247 (= res!2323686 (not (= (toList!9067 lt!2227034) lt!2227113)))))

(declare-fun bm!397663 () Bool)

(declare-fun call!397802 () (InoxSet Context!9334))

(assert (=> bm!397663 (= call!397802 call!397771)))

(declare-fun bm!397664 () Bool)

(declare-fun call!397704 () Unit!154836)

(assert (=> bm!397664 (= call!397762 call!397704)))

(declare-fun bm!397665 () Bool)

(assert (=> bm!397665 (= call!397618 call!397645)))

(declare-fun bm!397666 () Bool)

(assert (=> bm!397666 (= call!397619 call!397748)))

(declare-fun bm!397667 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!250 (Regex!15283 Regex!15283 List!62148 List!62148) Unit!154836)

(assert (=> bm!397667 (= call!397778 (lemmaTwoRegexMatchThenConcatMatchesConcatString!250 (ite (or c!953069 c!953074) (reg!15612 (regOne!31078 r!7292)) lt!2226991) (ite (or c!953069 c!953074) lt!2227007 (regTwo!31078 r!7292)) (ite c!953069 (_1!35785 lt!2227069) (ite c!953074 (_1!35785 lt!2226918) Nil!62024)) (ite c!953069 lt!2226943 (ite c!953074 (_2!35785 lt!2226918) s!2326))))))

(declare-fun bm!397668 () Bool)

(declare-fun call!397772 () Unit!154836)

(assert (=> bm!397668 (= call!397769 call!397772)))

(declare-fun call!397676 () Option!15394)

(declare-fun bm!397669 () Bool)

(assert (=> bm!397669 (= call!397676 (findConcatSeparation!1808 (ite (or c!953070 c!953068) (regOne!31078 (regOne!31078 r!7292)) (ite c!953069 lt!2226991 (reg!15612 (regOne!31078 r!7292)))) (ite c!953070 lt!2227114 (ite c!953068 lt!2227079 (ite c!953069 (regTwo!31078 r!7292) lt!2226991))) Nil!62024 (ite (or c!953070 c!953068 c!953069) s!2326 (_1!35785 lt!2227092)) (ite (or c!953070 c!953068 c!953069) s!2326 (_1!35785 lt!2227092))))))

(declare-fun bm!397670 () Bool)

(declare-fun derivationStepZipperDown!731 (Regex!15283 Context!9334 C!30836) (InoxSet Context!9334))

(assert (=> bm!397670 (= call!397699 (derivationStepZipperDown!731 (ite c!953073 (regTwo!31079 (regOne!31078 r!7292)) (ite (or c!953070 c!953068) (regOne!31078 (regOne!31078 r!7292)) (reg!15612 (regOne!31078 r!7292)))) (ite c!953073 lt!2227061 (ite c!953070 lt!2227009 (ite c!953068 (Context!9335 lt!2227032) lt!2227025))) (h!68472 s!2326)))))

(declare-fun b!5456248 () Bool)

(declare-fun lt!2227018 () Bool)

(assert (=> b!5456248 (not lt!2227018)))

(declare-fun lt!2227067 () Unit!154836)

(declare-fun e!3379006 () Unit!154836)

(assert (=> b!5456248 (= lt!2227067 e!3379006)))

(declare-fun c!953066 () Bool)

(assert (=> b!5456248 (= c!953066 lt!2227018)))

(assert (=> b!5456248 (= lt!2227018 call!397767)))

(declare-fun e!3378989 () Unit!154836)

(declare-fun Unit!154847 () Unit!154836)

(assert (=> b!5456248 (= e!3378989 Unit!154847)))

(declare-fun b!5456249 () Bool)

(assert (=> b!5456249 (= c!953067 ((_ is Star!15283) (regOne!31078 r!7292)))))

(declare-fun e!3379018 () Unit!154836)

(assert (=> b!5456249 (= e!3379005 e!3379018)))

(declare-fun bm!397671 () Bool)

(assert (=> bm!397671 (= call!397610 (Exists!2464 (ite c!953068 lambda!288570 (ite c!953069 lambda!288576 lambda!288584))))))

(declare-fun bm!397672 () Bool)

(assert (=> bm!397672 (= call!397677 call!397686)))

(declare-fun b!5456250 () Bool)

(declare-fun tp!1501879 () Bool)

(declare-fun tp!1501875 () Bool)

(assert (=> b!5456250 (= e!3378977 (and tp!1501879 tp!1501875))))

(declare-fun bm!397673 () Bool)

(declare-fun call!397796 () Bool)

(assert (=> bm!397673 (= call!397709 call!397796)))

(declare-fun b!5456251 () Bool)

(declare-fun res!2323706 () Bool)

(assert (=> b!5456251 (=> res!2323706 e!3379004)))

(assert (=> b!5456251 (= res!2323706 (not ((_ is Cons!62025) (exprs!5167 (h!68474 zl!343)))))))

(declare-fun b!5456252 () Bool)

(declare-fun e!3378999 () Bool)

(assert (=> b!5456252 (= e!3378999 false)))

(declare-fun b!5456253 () Bool)

(declare-fun tp!1501874 () Bool)

(declare-fun tp!1501877 () Bool)

(assert (=> b!5456253 (= e!3378977 (and tp!1501874 tp!1501877))))

(declare-fun setElem!35701 () Context!9334)

(declare-fun tp!1501872 () Bool)

(declare-fun setRes!35701 () Bool)

(declare-fun setNonEmpty!35701 () Bool)

(declare-fun inv!81454 (Context!9334) Bool)

(assert (=> setNonEmpty!35701 (= setRes!35701 (and tp!1501872 (inv!81454 setElem!35701) e!3379011))))

(declare-fun setRest!35701 () (InoxSet Context!9334))

(assert (=> setNonEmpty!35701 (= z!1189 ((_ map or) (store ((as const (Array Context!9334 Bool)) false) setElem!35701 true) setRest!35701))))

(declare-fun bm!397674 () Bool)

(assert (=> bm!397674 (= call!397630 call!397676)))

(declare-fun b!5456254 () Bool)

(assert (=> b!5456254 (= e!3379018 e!3378990)))

(assert (=> b!5456254 (= c!953072 ((_ is EmptyExpr!15283) (regOne!31078 r!7292)))))

(declare-fun bm!397675 () Bool)

(assert (=> bm!397675 (= call!397644 call!397752)))

(declare-fun b!5456255 () Bool)

(declare-fun e!3378997 () Bool)

(declare-fun tp!1501878 () Bool)

(assert (=> b!5456255 (= e!3378997 (and tp_is_empty!39819 tp!1501878))))

(declare-fun bm!397676 () Bool)

(assert (=> bm!397676 (= call!397712 call!397805)))

(declare-fun bm!397677 () Bool)

(assert (=> bm!397677 (= call!397763 call!397628)))

(declare-fun bm!397678 () Bool)

(assert (=> bm!397678 (= call!397714 call!397677)))

(declare-fun bm!397679 () Bool)

(assert (=> bm!397679 (= call!397605 (matchRSpec!2386 (ite c!953073 lt!2226931 (ite c!953070 lt!2227114 (ite c!953068 lt!2227103 (ite c!953067 (ite c!953069 lt!2226991 (ite c!953074 lt!2226998 lt!2226991)) (regOne!31078 r!7292))))) (ite (or c!953073 c!953070 c!953068) s!2326 (ite c!953067 (ite c!953069 (_1!35785 lt!2226926) (ite c!953074 s!2326 Nil!62024)) s!2326))))))

(declare-fun b!5456256 () Bool)

(assert (=> b!5456256 (= e!3378988 (not e!3379004))))

(declare-fun res!2323698 () Bool)

(assert (=> b!5456256 (=> res!2323698 e!3379004)))

(assert (=> b!5456256 (= res!2323698 (not ((_ is Cons!62026) zl!343)))))

(declare-fun lt!2227019 () Bool)

(assert (=> b!5456256 (= lt!2227064 lt!2227019)))

(assert (=> b!5456256 (= lt!2227019 (matchRSpec!2386 r!7292 s!2326))))

(assert (=> b!5456256 (= lt!2227064 (matchR!7468 r!7292 s!2326))))

(declare-fun lt!2226980 () Unit!154836)

(assert (=> b!5456256 (= lt!2226980 (mainMatchTheorem!2386 r!7292 s!2326))))

(declare-fun bm!397680 () Bool)

(assert (=> bm!397680 (= call!397724 call!397754)))

(declare-fun bm!397681 () Bool)

(declare-fun call!397770 () Bool)

(assert (=> bm!397681 (= call!397770 call!397737)))

(declare-fun bm!397682 () Bool)

(assert (=> bm!397682 (= call!397719 (++!13645 (ite c!953069 lt!2227100 (_1!35785 lt!2226957)) (ite c!953069 (_2!35785 lt!2226926) lt!2227033)))))

(declare-fun b!5456257 () Bool)

(assert (=> b!5456257 (= e!3378985 call!397627)))

(declare-fun bm!397683 () Bool)

(assert (=> bm!397683 (= call!397667 call!397681)))

(declare-fun bm!397684 () Bool)

(declare-fun call!397646 () Bool)

(assert (=> bm!397684 (= call!397698 call!397646)))

(declare-fun bm!397685 () Bool)

(assert (=> bm!397685 (= call!397609 (derivationStepZipperDown!731 (ite c!953073 (regOne!31079 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) lt!2227061 (h!68472 s!2326)))))

(declare-fun b!5456258 () Bool)

(declare-fun e!3379003 () Bool)

(assert (=> b!5456258 (= e!3379003 call!397716)))

(declare-fun bm!397686 () Bool)

(assert (=> bm!397686 (= call!397688 call!397724)))

(declare-fun bm!397687 () Bool)

(assert (=> bm!397687 (= call!397684 call!397673)))

(declare-fun bm!397688 () Bool)

(assert (=> bm!397688 (= call!397693 (mainMatchTheorem!2386 (ite c!953073 lt!2226931 lt!2227065) (ite c!953073 s!2326 (_1!35785 lt!2227092))))))

(declare-fun bm!397689 () Bool)

(declare-fun call!397797 () Unit!154836)

(assert (=> bm!397689 (= call!397797 call!397617)))

(declare-fun bm!397690 () Bool)

(assert (=> bm!397690 (= call!397764 call!397778)))

(declare-fun bm!397691 () Bool)

(assert (=> bm!397691 (= call!397672 call!397648)))

(declare-fun lt!2227050 () Regex!15283)

(declare-fun lt!2227017 () Regex!15283)

(declare-fun bm!397692 () Bool)

(declare-fun c!953071 () Bool)

(assert (=> bm!397692 (= call!397696 (matchR!7468 (ite c!953073 lt!2227062 (ite c!953070 lt!2227114 (ite c!953069 (ite c!953071 lt!2227050 lt!2227007) (ite c!953074 lt!2226991 lt!2227017)))) (ite (or c!953073 c!953070) s!2326 (ite c!953069 (ite c!953071 s!2326 lt!2226943) (ite c!953074 lt!2226941 s!2326)))))))

(declare-fun res!2323692 () Bool)

(assert (=> start!571594 (=> (not res!2323692) (not e!3378988))))

(declare-fun validRegex!7019 (Regex!15283) Bool)

(assert (=> start!571594 (= res!2323692 (validRegex!7019 r!7292))))

(assert (=> start!571594 e!3378988))

(assert (=> start!571594 e!3378977))

(declare-fun condSetEmpty!35701 () Bool)

(assert (=> start!571594 (= condSetEmpty!35701 (= z!1189 ((as const (Array Context!9334 Bool)) false)))))

(assert (=> start!571594 setRes!35701))

(declare-fun e!3379008 () Bool)

(assert (=> start!571594 e!3379008))

(assert (=> start!571594 e!3378997))

(declare-fun bm!397693 () Bool)

(assert (=> bm!397693 (= call!397773 call!397808)))

(declare-fun bm!397694 () Bool)

(declare-fun lemmaConcatAssociativity!2860 (List!62148 List!62148 List!62148) Unit!154836)

(assert (=> bm!397694 (= call!397758 (lemmaConcatAssociativity!2860 (ite c!953069 (_1!35785 lt!2227069) (_1!35785 lt!2226957)) (ite c!953069 (_2!35785 lt!2227069) (_2!35785 lt!2226957)) (ite c!953069 (_2!35785 lt!2226926) (_2!35785 lt!2227092))))))

(declare-fun b!5456259 () Bool)

(declare-fun e!3378983 () Bool)

(declare-fun call!397779 () Bool)

(assert (=> b!5456259 (= e!3378983 (= lt!2227064 call!397779))))

(declare-fun bm!397695 () Bool)

(assert (=> bm!397695 (= call!397739 call!397746)))

(declare-fun bm!397696 () Bool)

(assert (=> bm!397696 (= call!397777 (generalisedConcat!952 (ite c!953070 lt!2226975 lt!2226940)))))

(declare-fun bm!397697 () Bool)

(assert (=> bm!397697 (= call!397652 (matchZipper!1527 (ite c!953073 lt!2226984 ((_ map or) lt!2227115 lt!2226973)) (t!375377 s!2326)))))

(declare-fun bm!397698 () Bool)

(declare-fun call!397606 () Unit!154836)

(assert (=> bm!397698 (= call!397606 call!397613)))

(declare-fun bm!397699 () Bool)

(assert (=> bm!397699 (= call!397722 (lemmaFindConcatSeparationEquivalentToExists!1572 (ite c!953070 (regTwo!31078 (regOne!31078 r!7292)) (ite c!953068 (regOne!31078 (regOne!31078 r!7292)) (ite c!953069 lt!2226991 (reg!15612 (regOne!31078 r!7292))))) (ite c!953070 lt!2226981 (ite c!953068 lt!2227079 (ite c!953069 (regTwo!31078 r!7292) lt!2226991))) (ite (or c!953070 c!953068 c!953069) s!2326 (ite c!953074 (_1!35785 lt!2227092) Nil!62024))))))

(declare-fun bm!397700 () Bool)

(assert (=> bm!397700 (= call!397806 call!397774)))

(declare-fun bm!397701 () Bool)

(declare-fun call!397657 () Unit!154836)

(assert (=> bm!397701 (= call!397728 call!397657)))

(declare-fun bm!397702 () Bool)

(assert (=> bm!397702 (= call!397729 call!397750)))

(declare-fun bm!397703 () Bool)

(assert (=> bm!397703 (= call!397790 call!397647)))

(declare-fun bm!397704 () Bool)

(assert (=> bm!397704 (= call!397747 (lemmaConcatPreservesForall!250 lt!2226977 lt!2227083 (ite c!953069 lambda!288579 lambda!288581)))))

(declare-fun b!5456260 () Bool)

(declare-fun e!3379017 () Bool)

(assert (=> b!5456260 (= e!3379017 e!3379009)))

(declare-fun res!2323680 () Bool)

(assert (=> b!5456260 (=> res!2323680 e!3379009)))

(declare-fun zipperDepth!184 (List!62150) Int)

(assert (=> b!5456260 (= res!2323680 (< (zipperDepth!184 zl!343) (zipperDepth!184 lt!2227113)))))

(assert (=> b!5456260 (= lt!2227113 (Cons!62026 lt!2227061 Nil!62026))))

(declare-fun bm!397705 () Bool)

(assert (=> bm!397705 (= call!397766 call!397687)))

(declare-fun b!5456261 () Bool)

(declare-fun Unit!154848 () Unit!154836)

(assert (=> b!5456261 (= e!3379018 Unit!154848)))

(assert (=> b!5456261 (= lt!2226991 (regOne!31078 r!7292))))

(assert (=> b!5456261 (= lt!2227083 (Cons!62025 lt!2226991 (t!375378 (exprs!5167 (h!68474 zl!343)))))))

(declare-fun lt!2227040 () Context!9334)

(assert (=> b!5456261 (= lt!2227040 (Context!9335 (Cons!62025 (reg!15612 (regOne!31078 r!7292)) lt!2227083)))))

(assert (=> b!5456261 (= lt!2227008 (store ((as const (Array Context!9334 Bool)) false) lt!2227040 true))))

(declare-fun lt!2227028 () (InoxSet Context!9334))

(assert (=> b!5456261 (= lt!2227028 call!397789)))

(declare-fun lt!2227011 () Unit!154836)

(assert (=> b!5456261 (= lt!2227011 call!397783)))

(assert (=> b!5456261 (= call!397729 call!397789)))

(assert (=> b!5456261 (= lt!2227025 (Context!9335 lt!2227083))))

(declare-fun lt!2227122 () (InoxSet Context!9334))

(assert (=> b!5456261 (= lt!2227122 call!397620)))

(assert (=> b!5456261 (= lt!2227007 (Concat!24128 lt!2226991 (regTwo!31078 r!7292)))))

(assert (=> b!5456261 (= lt!2226964 (Concat!24128 (reg!15612 (regOne!31078 r!7292)) lt!2227007))))

(assert (=> b!5456261 (= lt!2226977 (Cons!62025 (reg!15612 (regOne!31078 r!7292)) Nil!62025))))

(assert (=> b!5456261 (= lt!2227015 (Context!9335 lt!2226977))))

(assert (=> b!5456261 (= lt!2227108 (store ((as const (Array Context!9334 Bool)) false) lt!2227015 true))))

(assert (=> b!5456261 (= lt!2227012 (store ((as const (Array Context!9334 Bool)) false) lt!2227025 true))))

(declare-fun lt!2227022 () (InoxSet Context!9334))

(assert (=> b!5456261 (= lt!2227022 call!397800)))

(declare-fun lt!2227056 () (InoxSet Context!9334))

(assert (=> b!5456261 (= lt!2227056 call!397695)))

(declare-fun lt!2226942 () Unit!154836)

(assert (=> b!5456261 (= lt!2226942 (lemmaFlatMapOnSingletonSet!542 lt!2227108 lt!2227015 lambda!288565))))

(assert (=> b!5456261 (= call!397721 call!397800)))

(declare-fun lt!2226986 () Unit!154836)

(assert (=> b!5456261 (= lt!2226986 call!397651)))

(assert (=> b!5456261 (= call!397703 call!397695)))

(declare-fun lt!2227099 () Unit!154836)

(declare-fun call!397741 () Unit!154836)

(assert (=> b!5456261 (= lt!2227099 call!397741)))

(declare-fun lt!2227089 () Bool)

(assert (=> b!5456261 (= lt!2227089 call!397607)))

(declare-fun res!2323699 () Bool)

(declare-fun call!397785 () Bool)

(assert (=> b!5456261 (= res!2323699 (= lt!2227089 call!397785))))

(declare-fun e!3379000 () Bool)

(assert (=> b!5456261 (=> (not res!2323699) (not e!3379000))))

(assert (=> b!5456261 e!3379000))

(assert (=> b!5456261 (= c!953069 lt!2227064)))

(declare-fun lt!2227001 () Unit!154836)

(assert (=> b!5456261 (= lt!2227001 e!3378989)))

(assert (=> b!5456261 (= lt!2227064 call!397681)))

(declare-fun b!5456262 () Bool)

(declare-fun e!3378984 () Unit!154836)

(assert (=> b!5456262 (= e!3378984 e!3378982)))

(assert (=> b!5456262 (= c!953073 ((_ is Union!15283) (regOne!31078 r!7292)))))

(declare-fun b!5456263 () Bool)

(declare-fun Unit!154849 () Unit!154836)

(assert (=> b!5456263 (= e!3378998 Unit!154849)))

(declare-fun lt!2227097 () Unit!154836)

(assert (=> b!5456263 (= lt!2227097 call!397657)))

(declare-fun res!2323711 () Bool)

(assert (=> b!5456263 (= res!2323711 call!397652)))

(assert (=> b!5456263 (=> res!2323711 e!3379003)))

(assert (=> b!5456263 (= call!397757 e!3379003)))

(declare-fun bm!397706 () Bool)

(assert (=> bm!397706 (= call!397759 call!397672)))

(declare-fun b!5456264 () Bool)

(assert (=> b!5456264 (= e!3379009 true)))

(declare-fun lt!2227024 () Regex!15283)

(assert (=> b!5456264 (= lt!2227024 (unfocusZipper!1025 lt!2227113))))

(declare-fun bm!397707 () Bool)

(assert (=> bm!397707 (= call!397645 (matchR!7468 (ite c!953070 lt!2226963 (ite c!953068 (Concat!24128 (regOne!31078 r!7292) lt!2226937) (ite c!953067 (ite c!953069 lt!2226991 lt!2226964) (ite c!953072 lt!2227027 (regOne!31078 r!7292))))) (ite (or c!953070 c!953068) s!2326 (ite c!953067 (ite c!953069 lt!2227100 lt!2227086) s!2326))))))

(declare-fun bm!397708 () Bool)

(assert (=> bm!397708 (= call!397749 (matchZipper!1527 (ite c!953073 lt!2227021 (ite c!953070 lt!2227115 (ite c!953068 lt!2226976 (ite c!953067 (ite c!953069 (store ((as const (Array Context!9334 Bool)) false) (Context!9335 call!397655) true) lt!2227048) ((_ map or) lt!2227048 lt!2227055))))) (ite c!953073 s!2326 (ite c!953070 (t!375377 s!2326) (ite c!953068 s!2326 (ite (and c!953067 c!953069) lt!2226938 (t!375377 s!2326)))))))))

(declare-fun bm!397709 () Bool)

(assert (=> bm!397709 (= call!397745 call!397674)))

(declare-fun bm!397710 () Bool)

(declare-fun ++!13646 (List!62149 List!62149) List!62149)

(assert (=> bm!397710 (= call!397655 (++!13646 lt!2226977 lt!2227083))))

(declare-fun bm!397711 () Bool)

(assert (=> bm!397711 (= call!397794 call!397697)))

(declare-fun b!5456265 () Bool)

(assert (=> b!5456265 (= e!3379001 lt!2227089)))

(declare-fun e!3378991 () Bool)

(assert (=> b!5456266 (= e!3379004 e!3378991)))

(declare-fun res!2323705 () Bool)

(assert (=> b!5456266 (=> res!2323705 e!3378991)))

(declare-fun lt!2227036 () Bool)

(assert (=> b!5456266 (= res!2323705 (or (not (= lt!2227064 lt!2227036)) ((_ is Nil!62024) s!2326)))))

(assert (=> b!5456266 (= (Exists!2464 lambda!288563) (Exists!2464 lambda!288564))))

(declare-fun lt!2226979 () Unit!154836)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1118 (Regex!15283 Regex!15283 List!62148) Unit!154836)

(assert (=> b!5456266 (= lt!2226979 (lemmaExistCutMatchRandMatchRSpecEquivalent!1118 (regOne!31078 r!7292) (regTwo!31078 r!7292) s!2326))))

(assert (=> b!5456266 (= lt!2227036 (Exists!2464 lambda!288563))))

(declare-fun isDefined!12097 (Option!15394) Bool)

(assert (=> b!5456266 (= lt!2227036 (isDefined!12097 (findConcatSeparation!1808 (regOne!31078 r!7292) (regTwo!31078 r!7292) Nil!62024 s!2326 s!2326)))))

(declare-fun lt!2227004 () Unit!154836)

(assert (=> b!5456266 (= lt!2227004 (lemmaFindConcatSeparationEquivalentToExists!1572 (regOne!31078 r!7292) (regTwo!31078 r!7292) s!2326))))

(declare-fun bm!397712 () Bool)

(assert (=> bm!397712 (= call!397711 call!397791)))

(declare-fun bm!397713 () Bool)

(assert (=> bm!397713 (= call!397757 (matchZipper!1527 (ite c!953073 ((_ map or) lt!2226984 lt!2227055) (ite c!953070 lt!2226947 (ite c!953067 z!1189 (ite c!953072 lt!2227055 lt!2227048)))) (ite c!953073 (t!375377 s!2326) (ite (or c!953070 c!953067) s!2326 (t!375377 s!2326)))))))

(declare-fun bm!397714 () Bool)

(assert (=> bm!397714 (= call!397779 call!397796)))

(declare-fun bm!397715 () Bool)

(assert (=> bm!397715 (= call!397629 call!397770)))

(declare-fun b!5456267 () Bool)

(declare-fun Unit!154850 () Unit!154836)

(assert (=> b!5456267 (= e!3378998 Unit!154850)))

(declare-fun bm!397716 () Bool)

(assert (=> bm!397716 (= call!397795 call!397760)))

(declare-fun bm!397717 () Bool)

(assert (=> bm!397717 (= call!397772 call!397766)))

(declare-fun bm!397718 () Bool)

(assert (=> bm!397718 (= call!397809 call!397751)))

(declare-fun bm!397719 () Bool)

(assert (=> bm!397719 (= call!397678 call!397662)))

(declare-fun b!5456268 () Bool)

(assert (=> b!5456268 (= e!3378995 (= lt!2227064 call!397779))))

(declare-fun lt!2226923 () (InoxSet Context!9334))

(declare-fun bm!397720 () Bool)

(assert (=> bm!397720 (= call!397808 (theoremZipperRegexEquiv!563 (ite c!953073 lt!2227021 (ite c!953070 lt!2226947 (ite c!953069 (ite c!953071 lt!2226923 lt!2227012) (ite c!953074 lt!2227012 lt!2226972)))) (ite c!953073 (Cons!62026 lt!2227010 Nil!62026) (ite c!953070 (Cons!62026 lt!2227009 Nil!62026) (ite c!953069 (ite c!953071 (Cons!62026 lt!2227061 Nil!62026) (Cons!62026 lt!2227025 Nil!62026)) (ite c!953074 (Cons!62026 lt!2227025 Nil!62026) (Cons!62026 lt!2227061 Nil!62026))))) (ite c!953073 lt!2227062 (ite c!953070 lt!2227114 (ite c!953069 (ite c!953071 lt!2227050 lt!2227007) (ite c!953074 lt!2227007 lt!2227017)))) (ite (or c!953073 c!953070) s!2326 (ite c!953069 (ite c!953071 s!2326 lt!2226943) (ite c!953074 (_2!35785 lt!2226918) s!2326)))))))

(declare-fun bm!397721 () Bool)

(assert (=> bm!397721 (= call!397798 call!397720)))

(declare-fun bm!397722 () Bool)

(assert (=> bm!397722 (= call!397720 call!397702)))

(declare-fun b!5456269 () Bool)

(assert (=> b!5456269 (= e!3378986 lt!2227089)))

(declare-fun bm!397723 () Bool)

(assert (=> bm!397723 (= call!397725 (lemmaTwoRegexMatchThenConcatMatchesConcatString!250 lt!2226991 (regTwo!31078 r!7292) (ite c!953069 (_2!35785 lt!2227069) lt!2226941) (ite c!953069 (_2!35785 lt!2226926) (_2!35785 lt!2227092))))))

(declare-fun bm!397724 () Bool)

(assert (=> bm!397724 (= call!397646 call!397682)))

(declare-fun setIsEmpty!35701 () Bool)

(assert (=> setIsEmpty!35701 setRes!35701))

(declare-fun b!5456270 () Bool)

(declare-fun e!3378978 () Bool)

(assert (=> b!5456270 (= e!3378978 e!3379017)))

(declare-fun res!2323685 () Bool)

(assert (=> b!5456270 (=> res!2323685 e!3379017)))

(declare-fun lt!2226999 () Regex!15283)

(declare-fun regexDepth!199 (Regex!15283) Int)

(assert (=> b!5456270 (= res!2323685 (< (regexDepth!199 r!7292) (regexDepth!199 lt!2226999)))))

(assert (=> b!5456270 (= lt!2226999 (generalisedConcat!952 (t!375378 (exprs!5167 (h!68474 zl!343)))))))

(declare-fun bm!397725 () Bool)

(assert (=> bm!397725 (= call!397713 call!397741)))

(declare-fun bm!397726 () Bool)

(assert (=> bm!397726 (= call!397734 call!397763)))

(declare-fun b!5456271 () Bool)

(assert (=> b!5456271 e!3378983))

(declare-fun res!2323687 () Bool)

(assert (=> b!5456271 (=> (not res!2323687) (not e!3378983))))

(assert (=> b!5456271 (= res!2323687 (= call!397623 call!397690))))

(declare-fun lt!2226993 () Unit!154836)

(assert (=> b!5456271 (= lt!2226993 call!397713)))

(assert (=> b!5456271 (= call!397715 call!397708)))

(declare-fun lt!2227038 () Unit!154836)

(assert (=> b!5456271 (= lt!2227038 call!397792)))

(assert (=> b!5456271 (not call!397667)))

(declare-fun lt!2226949 () Unit!154836)

(assert (=> b!5456271 (= lt!2226949 call!397804)))

(declare-fun Unit!154851 () Unit!154836)

(assert (=> b!5456271 (= e!3378990 Unit!154851)))

(declare-fun bm!397727 () Bool)

(assert (=> bm!397727 (= call!397704 call!397707)))

(declare-fun bm!397728 () Bool)

(assert (=> bm!397728 (= call!397648 call!397790)))

(declare-fun b!5456272 () Bool)

(declare-fun res!2323684 () Bool)

(assert (=> b!5456272 (=> res!2323684 e!3379004)))

(assert (=> b!5456272 (= res!2323684 (or ((_ is EmptyExpr!15283) r!7292) ((_ is EmptyLang!15283) r!7292) ((_ is ElementMatch!15283) r!7292) ((_ is Union!15283) r!7292) (not ((_ is Concat!24128) r!7292))))))

(declare-fun b!5456273 () Bool)

(assert (=> b!5456273 (= e!3379015 call!397652)))

(declare-fun bm!397729 () Bool)

(assert (=> bm!397729 (= call!397787 call!397641)))

(declare-fun bm!397730 () Bool)

(assert (=> bm!397730 (= call!397707 call!397722)))

(declare-fun bm!397731 () Bool)

(assert (=> bm!397731 (= call!397740 call!397806)))

(declare-fun bm!397732 () Bool)

(assert (=> bm!397732 (= call!397663 call!397694)))

(declare-fun bm!397733 () Bool)

(declare-fun call!397670 () (InoxSet Context!9334))

(assert (=> bm!397733 (= call!397670 call!397634)))

(declare-fun b!5456274 () Bool)

(declare-fun res!2323679 () Bool)

(assert (=> b!5456274 (=> res!2323679 e!3379004)))

(assert (=> b!5456274 (= res!2323679 (not (= r!7292 (generalisedConcat!952 (exprs!5167 (h!68474 zl!343))))))))

(declare-fun bm!397734 () Bool)

(assert (=> bm!397734 (= call!397685 (derivationStepZipperUp!655 (ite c!953073 lt!2227010 (ite c!953070 lt!2227009 lt!2227015)) (h!68472 s!2326)))))

(declare-fun b!5456275 () Bool)

(assert (=> b!5456275 (= e!3378994 call!397660)))

(declare-fun bm!397735 () Bool)

(assert (=> bm!397735 (= call!397636 call!397637)))

(declare-fun b!5456276 () Bool)

(declare-fun res!2323688 () Bool)

(assert (=> b!5456276 (=> res!2323688 e!3379009)))

(assert (=> b!5456276 (= res!2323688 (not (validRegex!7019 lt!2226999)))))

(declare-fun bm!397736 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!38 ((InoxSet Context!9334) List!62148) Unit!154836)

(assert (=> bm!397736 (= call!397804 (lemmaEmptyZipperMatchesNothing!38 lt!2227048 (t!375377 s!2326)))))

(declare-fun bm!397737 () Bool)

(assert (=> bm!397737 (= call!397612 call!397636)))

(declare-fun bm!397738 () Bool)

(assert (=> bm!397738 (= call!397626 call!397621)))

(declare-fun b!5456277 () Bool)

(assert (=> b!5456277 (= e!3379016 (= lt!2227064 call!397642))))

(declare-fun bm!397739 () Bool)

(assert (=> bm!397739 (= call!397679 call!397780)))

(declare-fun bm!397740 () Bool)

(assert (=> bm!397740 (= call!397741 call!397639)))

(declare-fun b!5456278 () Bool)

(declare-fun e!3379010 () Bool)

(assert (=> b!5456278 (= e!3379010 call!397663)))

(declare-fun bm!397741 () Bool)

(assert (=> bm!397741 (= call!397761 call!397712)))

(declare-fun b!5456279 () Bool)

(declare-fun e!3379013 () Bool)

(declare-fun tp!1501880 () Bool)

(assert (=> b!5456279 (= e!3379013 tp!1501880)))

(declare-fun bm!397742 () Bool)

(assert (=> bm!397742 (= call!397715 call!397665)))

(declare-fun bm!397743 () Bool)

(assert (=> bm!397743 (= call!397768 call!397680)))

(declare-fun bm!397744 () Bool)

(assert (=> bm!397744 (= call!397632 call!397795)))

(declare-fun bm!397745 () Bool)

(assert (=> bm!397745 (= call!397771 (flatMap!1010 (ite c!953070 lt!2227047 (ite c!953069 lt!2226923 lt!2226972)) (ite c!953070 lambda!288565 (ite c!953069 lambda!288565 lambda!288565))))))

(declare-fun bm!397746 () Bool)

(assert (=> bm!397746 (= call!397801 (flatMap!1010 (ite c!953068 lt!2226976 (ite c!953067 lt!2227012 lt!2226939)) (ite c!953068 lambda!288565 (ite c!953067 lambda!288565 lambda!288565))))))

(declare-fun bm!397747 () Bool)

(assert (=> bm!397747 (= call!397752 (isDefined!12097 (ite c!953070 call!397676 (ite c!953068 call!397630 (ite c!953069 lt!2226952 lt!2227026)))))))

(declare-fun bm!397748 () Bool)

(assert (=> bm!397748 (= call!397668 call!397661)))

(declare-fun bm!397749 () Bool)

(assert (=> bm!397749 (= call!397789 (derivationStepZipperUp!655 (ite c!953067 lt!2227040 lt!2227061) (h!68472 s!2326)))))

(declare-fun b!5456280 () Bool)

(assert (=> b!5456280 (= e!3379000 (or (not lt!2227064) lt!2227019))))

(declare-fun bm!397750 () Bool)

(assert (=> bm!397750 (= call!397785 call!397700)))

(declare-fun bm!397751 () Bool)

(assert (=> bm!397751 (= call!397755 call!397646)))

(declare-fun bm!397752 () Bool)

(assert (=> bm!397752 (= call!397767 call!397615)))

(declare-fun b!5456281 () Bool)

(assert (=> b!5456281 (= e!3378980 (= lt!2227064 call!397622))))

(declare-fun bm!397753 () Bool)

(assert (=> bm!397753 (= call!397661 (lemmaFlatMapOnSingletonSet!542 (ite c!953070 lt!2226947 (ite c!953068 lt!2226976 (ite c!953067 lt!2227008 lt!2226939))) (ite c!953070 lt!2227009 (ite c!953068 lt!2227002 (ite c!953067 lt!2227040 lt!2227061))) (ite c!953070 lambda!288565 (ite c!953068 lambda!288565 (ite c!953067 lambda!288565 lambda!288565)))))))

(declare-fun bm!397754 () Bool)

(assert (=> bm!397754 (= call!397718 call!397624)))

(declare-fun b!5456282 () Bool)

(declare-fun Unit!154852 () Unit!154836)

(assert (=> b!5456282 (= e!3378993 Unit!154852)))

(assert (=> b!5456282 (= lt!2226923 (store ((as const (Array Context!9334 Bool)) false) lt!2227061 true))))

(declare-fun lt!2227095 () Unit!154836)

(assert (=> b!5456282 (= lt!2227095 call!397606)))

(assert (=> b!5456282 (= call!397802 call!397670)))

(assert (=> b!5456282 (= lt!2227050 call!397640)))

(declare-fun lt!2227068 () Unit!154836)

(assert (=> b!5456282 (= lt!2227068 call!397727)))

(declare-fun res!2323682 () Bool)

(assert (=> b!5456282 (= res!2323682 (= call!397755 call!397810))))

(assert (=> b!5456282 (=> (not res!2323682) (not e!3379010))))

(assert (=> b!5456282 e!3379010))

(declare-fun bm!397755 () Bool)

(declare-fun lemmaStarApp!78 (Regex!15283 List!62148 List!62148) Unit!154836)

(assert (=> bm!397755 (= call!397743 (lemmaStarApp!78 (reg!15612 (regOne!31078 r!7292)) (ite c!953069 (_1!35785 lt!2227069) (_1!35785 lt!2226957)) (ite c!953069 (_2!35785 lt!2227069) (_2!35785 lt!2226957))))))

(assert (=> b!5456283 (= e!3378991 e!3378978)))

(declare-fun res!2323709 () Bool)

(assert (=> b!5456283 (=> res!2323709 e!3378978)))

(declare-fun derivationStepZipper!1502 ((InoxSet Context!9334) C!30836) (InoxSet Context!9334))

(assert (=> b!5456283 (= res!2323709 (not (= lt!2227055 (derivationStepZipper!1502 lt!2227034 (h!68472 s!2326)))))))

(assert (=> b!5456283 (= (flatMap!1010 lt!2227034 lambda!288565) (derivationStepZipperUp!655 lt!2227061 (h!68472 s!2326)))))

(declare-fun lt!2227058 () Unit!154836)

(assert (=> b!5456283 (= lt!2227058 (lemmaFlatMapOnSingletonSet!542 lt!2227034 lt!2227061 lambda!288565))))

(assert (=> b!5456283 (= lt!2227034 (store ((as const (Array Context!9334 Bool)) false) lt!2227061 true))))

(declare-fun lt!2226988 () Unit!154836)

(assert (=> b!5456283 (= lt!2226988 e!3378984)))

(assert (=> b!5456283 (= c!953075 (and ((_ is ElementMatch!15283) (regOne!31078 r!7292)) (= (c!953077 (regOne!31078 r!7292)) (h!68472 s!2326))))))

(declare-fun lt!2226944 () Unit!154836)

(assert (=> b!5456283 (= lt!2226944 e!3379014)))

(declare-fun c!953076 () Bool)

(assert (=> b!5456283 (= c!953076 (nullable!5452 (h!68473 (exprs!5167 (h!68474 zl!343)))))))

(assert (=> b!5456283 (= (flatMap!1010 z!1189 lambda!288565) (derivationStepZipperUp!655 (h!68474 zl!343) (h!68472 s!2326)))))

(declare-fun lt!2227049 () Unit!154836)

(assert (=> b!5456283 (= lt!2227049 (lemmaFlatMapOnSingletonSet!542 z!1189 (h!68474 zl!343) lambda!288565))))

(assert (=> b!5456283 (= lt!2227055 (derivationStepZipperUp!655 lt!2227061 (h!68472 s!2326)))))

(assert (=> b!5456283 (= lt!2227048 (derivationStepZipperDown!731 (h!68473 (exprs!5167 (h!68474 zl!343))) lt!2227061 (h!68472 s!2326)))))

(assert (=> b!5456283 (= lt!2227061 (Context!9335 (t!375378 (exprs!5167 (h!68474 zl!343)))))))

(declare-fun lt!2226985 () (InoxSet Context!9334))

(assert (=> b!5456283 (= lt!2226985 (derivationStepZipperUp!655 (Context!9335 (Cons!62025 (h!68473 (exprs!5167 (h!68474 zl!343))) (t!375378 (exprs!5167 (h!68474 zl!343))))) (h!68472 s!2326)))))

(declare-fun bm!397756 () Bool)

(assert (=> bm!397756 (= call!397793 call!397679)))

(declare-fun b!5456284 () Bool)

(declare-fun Unit!154853 () Unit!154836)

(assert (=> b!5456284 (= e!3378984 Unit!154853)))

(assert (=> b!5456284 (= lt!2227075 (store ((as const (Array Context!9334 Bool)) false) lt!2227061 true))))

(assert (=> b!5456284 (= lt!2227112 call!397680)))

(declare-fun lt!2226989 () Unit!154836)

(assert (=> b!5456284 (= lt!2226989 call!397637)))

(assert (=> b!5456284 (= call!397658 call!397748)))

(declare-fun bm!397757 () Bool)

(assert (=> bm!397757 (= call!397653 (mainMatchTheorem!2386 (ite c!953073 lt!2227016 (ite c!953070 lt!2226963 (ite c!953068 lt!2227103 (ite c!953067 (ite c!953069 lt!2226991 (ite c!953074 lt!2226998 lt!2226991)) (regOne!31078 r!7292))))) (ite (or c!953073 c!953070 c!953068) s!2326 (ite c!953067 (ite c!953069 (_1!35785 lt!2226926) (ite c!953074 s!2326 Nil!62024)) s!2326))))))

(declare-fun bm!397758 () Bool)

(assert (=> bm!397758 (= call!397635 call!397699)))

(declare-fun bm!397759 () Bool)

(assert (=> bm!397759 (= call!397774 (matchR!7468 (ite c!953073 lt!2227016 (ite c!953070 (Concat!24128 (regOne!31078 (regOne!31078 r!7292)) (Concat!24128 (regTwo!31078 (regOne!31078 r!7292)) lt!2226981)) (ite c!953069 (reg!15612 (regOne!31078 r!7292)) (ite c!953074 lt!2226998 lt!2227007)))) (ite (or c!953073 c!953070) s!2326 (ite c!953069 (_1!35785 lt!2227069) (ite c!953074 s!2326 call!397705)))))))

(declare-fun bm!397760 () Bool)

(assert (=> bm!397760 (= call!397690 call!397785)))

(declare-fun bm!397761 () Bool)

(assert (=> bm!397761 (= call!397702 (isDefined!12097 (ite c!953070 call!397746 (ite c!953068 call!397739 (ite c!953074 lt!2227052 call!397765)))))))

(declare-fun bm!397762 () Bool)

(assert (=> bm!397762 (= call!397650 call!397644)))

(declare-fun bm!397763 () Bool)

(declare-fun lemmaConcatAssociative!78 (Regex!15283 Regex!15283 Regex!15283 List!62148) Unit!154836)

(assert (=> bm!397763 (= call!397788 (lemmaConcatAssociative!78 (ite (or c!953070 c!953068) (regOne!31078 (regOne!31078 r!7292)) (reg!15612 (regOne!31078 r!7292))) (ite (or c!953070 c!953068) (regTwo!31078 (regOne!31078 r!7292)) lt!2226991) (ite c!953070 lt!2226981 (ite c!953068 lt!2226937 (regTwo!31078 r!7292))) s!2326))))

(declare-fun bm!397764 () Bool)

(assert (=> bm!397764 (= call!397633 call!397653)))

(declare-fun bm!397765 () Bool)

(assert (=> bm!397765 (= call!397710 (++!13645 (ite c!953069 (_1!35785 lt!2227069) (ite c!953074 (_2!35785 lt!2226957) Nil!62024)) (ite c!953069 (_2!35785 lt!2227069) (ite c!953074 (_2!35785 lt!2227092) s!2326))))))

(declare-fun bm!397766 () Bool)

(assert (=> bm!397766 (= call!397756 call!397782)))

(declare-fun b!5456285 () Bool)

(assert (=> b!5456285 (= e!3379006 e!3379002)))

(assert (=> b!5456285 (= c!953074 call!397654)))

(declare-fun b!5456286 () Bool)

(declare-fun tp!1501881 () Bool)

(assert (=> b!5456286 (= e!3378977 tp!1501881)))

(declare-fun bm!397767 () Bool)

(assert (=> bm!397767 (= call!397660 (nullable!5452 (ite c!953073 (regOne!31079 (regOne!31078 r!7292)) (regOne!31078 (regOne!31078 r!7292)))))))

(declare-fun bm!397768 () Bool)

(declare-fun call!397659 () Bool)

(assert (=> bm!397768 (= call!397625 call!397659)))

(declare-fun bm!397769 () Bool)

(assert (=> bm!397769 (= call!397744 call!397740)))

(declare-fun bm!397770 () Bool)

(assert (=> bm!397770 (= call!397654 call!397714)))

(declare-fun bm!397771 () Bool)

(assert (=> bm!397771 (= call!397754 (lemmaExistCutMatchRandMatchRSpecEquivalent!1118 (ite c!953070 (regOne!31078 (regOne!31078 r!7292)) (ite c!953068 (regTwo!31078 (regOne!31078 r!7292)) (ite c!953069 (reg!15612 (regOne!31078 r!7292)) lt!2227065))) (ite c!953070 lt!2227114 (ite c!953068 lt!2226937 (ite c!953069 lt!2226991 (regTwo!31078 r!7292)))) (ite (or c!953070 c!953068) s!2326 (ite c!953069 (_1!35785 lt!2226926) s!2326))))))

(declare-fun bm!397772 () Bool)

(assert (=> bm!397772 (= call!397647 call!397605)))

(declare-fun bm!397773 () Bool)

(assert (=> bm!397773 (= call!397656 call!397773)))

(declare-fun bm!397774 () Bool)

(assert (=> bm!397774 (= call!397716 (matchZipper!1527 (ite c!953073 lt!2227055 (ite c!953070 lt!2226973 (ite c!953069 (ite c!953071 lt!2226923 lt!2227012) z!1189))) (ite (or c!953073 c!953070) (t!375377 s!2326) (ite c!953069 (ite c!953071 s!2326 lt!2226943) s!2326))))))

(declare-fun bm!397775 () Bool)

(assert (=> bm!397775 (= call!397622 (matchZipper!1527 (ite (or c!953073 c!953070) z!1189 (ite c!953067 (ite c!953069 z!1189 lt!2227108) lt!2226939)) (ite (or c!953073 c!953070) s!2326 (ite c!953067 (ite c!953069 s!2326 (_1!35785 lt!2226918)) s!2326))))))

(declare-fun b!5456287 () Bool)

(declare-fun Unit!154854 () Unit!154836)

(assert (=> b!5456287 (= e!3379006 Unit!154854)))

(declare-fun bm!397776 () Bool)

(assert (=> bm!397776 (= call!397638 (isDefined!12097 (ite c!953069 lt!2226955 lt!2226921)))))

(declare-fun bm!397777 () Bool)

(assert (=> bm!397777 (= call!397732 (matchR!7468 (ite c!953073 lt!2227035 (ite c!953068 (Concat!24128 (regOne!31078 (regOne!31078 r!7292)) (Concat!24128 (regTwo!31078 (regOne!31078 r!7292)) lt!2226937)) (ite c!953069 lt!2226991 (ite c!953074 lt!2227007 lt!2226991)))) (ite (or c!953073 c!953068) s!2326 (ite c!953069 (_1!35785 lt!2226926) (ite c!953074 (_2!35785 lt!2226918) Nil!62024)))))))

(declare-fun bm!397778 () Bool)

(assert (=> bm!397778 (= call!397639 call!397664)))

(declare-fun b!5456288 () Bool)

(declare-fun res!2323693 () Bool)

(assert (=> b!5456288 (=> (not res!2323693) (not e!3378988))))

(assert (=> b!5456288 (= res!2323693 (= (toList!9067 z!1189) zl!343))))

(declare-fun b!5456289 () Bool)

(declare-fun tp!1501876 () Bool)

(assert (=> b!5456289 (= e!3379008 (and (inv!81454 (h!68474 zl!343)) e!3379013 tp!1501876))))

(declare-fun bm!397779 () Bool)

(assert (=> bm!397779 (= call!397727 call!397656)))

(declare-fun bm!397780 () Bool)

(assert (=> bm!397780 (= call!397657 (lemmaZipperConcatMatchesSameAsBothZippers!520 (ite c!953073 lt!2226984 (ite c!953070 lt!2227115 lt!2227048)) (ite c!953073 lt!2227055 (ite c!953070 lt!2226973 lt!2227055)) (t!375377 s!2326)))))

(declare-fun bm!397781 () Bool)

(assert (=> bm!397781 (= call!397634 call!397803)))

(declare-fun bm!397782 () Bool)

(assert (=> bm!397782 (= call!397800 call!397685)))

(declare-fun bm!397783 () Bool)

(assert (=> bm!397783 (= call!397659 call!397631)))

(declare-fun bm!397784 () Bool)

(assert (=> bm!397784 (= call!397791 (matchR!7468 (ite c!953070 (Concat!24128 (Concat!24128 (regOne!31078 (regOne!31078 r!7292)) (regTwo!31078 (regOne!31078 r!7292))) lt!2226981) (ite c!953068 lt!2227079 (ite c!953067 lt!2226964 (regTwo!31078 r!7292)))) s!2326))))

(declare-fun b!5456290 () Bool)

(assert (=> b!5456290 (= e!3378996 call!397716)))

(declare-fun bm!397785 () Bool)

(assert (=> bm!397785 (= call!397760 (Exists!2464 (ite c!953070 lambda!288567 (ite c!953069 lambda!288576 (ite c!953074 lambda!288583 lambda!288587)))))))

(declare-fun bm!397786 () Bool)

(assert (=> bm!397786 (= call!397623 call!397641)))

(declare-fun bm!397787 () Bool)

(assert (=> bm!397787 (= call!397780 call!397768)))

(declare-fun bm!397788 () Bool)

(assert (=> bm!397788 (= call!397697 call!397745)))

(declare-fun bm!397789 () Bool)

(assert (=> bm!397789 (= call!397792 call!397797)))

(declare-fun bm!397790 () Bool)

(assert (=> bm!397790 (= call!397613 (lemmaFlatMapOnSingletonSet!542 (ite c!953073 lt!2227021 (ite c!953069 lt!2226923 lt!2226972)) (ite c!953073 lt!2227010 lt!2227061) (ite c!953073 lambda!288565 (ite c!953069 lambda!288565 lambda!288565))))))

(declare-fun bm!397791 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!98 (Context!9334 Context!9334 List!62148 List!62148) Unit!154836)

(assert (=> bm!397791 (= call!397742 (lemmaConcatenateContextMatchesConcatOfStrings!98 lt!2227015 lt!2227025 (ite c!953069 (_1!35785 lt!2227069) (_1!35785 lt!2226918)) (ite c!953069 lt!2226943 (_2!35785 lt!2226918))))))

(declare-fun bm!397792 () Bool)

(assert (=> bm!397792 (= call!397705 call!397710)))

(declare-fun b!5456291 () Bool)

(declare-fun Unit!154855 () Unit!154836)

(assert (=> b!5456291 (= e!3379014 Unit!154855)))

(declare-fun lt!2227082 () Unit!154836)

(assert (=> b!5456291 (= lt!2227082 (lemmaZipperConcatMatchesSameAsBothZippers!520 lt!2227048 lt!2227055 (t!375377 s!2326)))))

(declare-fun res!2323710 () Bool)

(assert (=> b!5456291 (= res!2323710 (matchZipper!1527 lt!2227048 (t!375377 s!2326)))))

(assert (=> b!5456291 (=> res!2323710 e!3378992)))

(assert (=> b!5456291 (= (matchZipper!1527 ((_ map or) lt!2227048 lt!2227055) (t!375377 s!2326)) e!3378992)))

(declare-fun bm!397793 () Bool)

(assert (=> bm!397793 (= call!397649 call!397775)))

(declare-fun bm!397794 () Bool)

(assert (=> bm!397794 (= call!397687 (lemmaExistCutMatchRandMatchRSpecEquivalent!1118 (ite c!953070 (regTwo!31078 (regOne!31078 r!7292)) (ite c!953068 (regOne!31078 (regOne!31078 r!7292)) (ite c!953069 lt!2226991 (reg!15612 (regOne!31078 r!7292))))) (ite c!953070 lt!2226981 (ite c!953068 lt!2227079 (ite c!953069 (regTwo!31078 r!7292) lt!2226991))) (ite (or c!953070 c!953068 c!953069) s!2326 (ite c!953074 (_1!35785 lt!2227092) Nil!62024))))))

(declare-fun bm!397795 () Bool)

(assert (=> bm!397795 (= call!397673 (matchRSpec!2386 (ite c!953073 lt!2227035 (ite c!953070 lt!2226963 (ite c!953068 lt!2227079 (ite c!953067 lt!2226964 (regTwo!31078 r!7292))))) s!2326))))

(declare-fun bm!397796 () Bool)

(assert (=> bm!397796 (= call!397617 call!397633)))

(declare-fun bm!397797 () Bool)

(assert (=> bm!397797 (= call!397614 call!397665)))

(declare-fun bm!397798 () Bool)

(assert (=> bm!397798 (= call!397703 call!397801)))

(declare-fun bm!397799 () Bool)

(assert (=> bm!397799 (= call!397796 call!397809)))

(declare-fun bm!397800 () Bool)

(assert (=> bm!397800 (= call!397701 (Exists!2464 (ite c!953070 lambda!288568 (ite c!953068 lambda!288570 (ite c!953069 lambda!288575 (ite c!953074 lambda!288584 lambda!288588))))))))

(declare-fun bm!397801 () Bool)

(assert (=> bm!397801 (= call!397682 call!397696)))

(declare-fun bm!397802 () Bool)

(assert (=> bm!397802 (= call!397642 call!397733)))

(declare-fun bm!397803 () Bool)

(assert (=> bm!397803 (= call!397782 call!397797)))

(declare-fun bm!397804 () Bool)

(assert (=> bm!397804 (= call!397631 call!397701)))

(declare-fun b!5456292 () Bool)

(declare-fun res!2323700 () Bool)

(assert (=> b!5456292 (=> res!2323700 e!3378991)))

(declare-fun isEmpty!34010 (List!62149) Bool)

(assert (=> b!5456292 (= res!2323700 (isEmpty!34010 (t!375378 (exprs!5167 (h!68474 zl!343)))))))

(assert (=> b!5456293 e!3378999))

(declare-fun res!2323707 () Bool)

(assert (=> b!5456293 (=> (not res!2323707) (not e!3378999))))

(assert (=> b!5456293 (= res!2323707 call!397744)))

(declare-fun lt!2226968 () Unit!154836)

(assert (=> b!5456293 (= lt!2226968 call!397764)))

(assert (=> b!5456293 (= call!397632 call!397629)))

(declare-fun lt!2227107 () Unit!154836)

(assert (=> b!5456293 (= lt!2227107 call!397678)))

(assert (=> b!5456293 (= call!397794 call!397625)))

(declare-fun lt!2227119 () Unit!154836)

(assert (=> b!5456293 (= lt!2227119 call!397769)))

(assert (=> b!5456293 (= call!397798 call!397649)))

(declare-fun lt!2227109 () Unit!154836)

(assert (=> b!5456293 (= lt!2227109 call!397762)))

(assert (=> b!5456293 (= call!397761 call!397759)))

(declare-fun lt!2227096 () Unit!154836)

(assert (=> b!5456293 (= lt!2227096 call!397756)))

(assert (=> b!5456293 (= call!397698 call!397709)))

(declare-fun lt!2227045 () Unit!154836)

(assert (=> b!5456293 (= lt!2227045 call!397784)))

(assert (=> b!5456293 (= lt!2227017 call!397640)))

(assert (=> b!5456293 (= call!397802 call!397670)))

(declare-fun lt!2227076 () Unit!154836)

(assert (=> b!5456293 (= lt!2227076 call!397606)))

(assert (=> b!5456293 (= lt!2226972 (store ((as const (Array Context!9334 Bool)) false) lt!2227061 true))))

(declare-fun Unit!154856 () Unit!154836)

(assert (=> b!5456293 (= e!3379002 Unit!154856)))

(declare-fun bm!397805 () Bool)

(assert (=> bm!397805 (= call!397671 (generalisedConcat!952 (ite c!953073 lt!2227053 (ite c!953070 (t!375378 (exprs!5167 (h!68474 zl!343))) lt!2227032))))))

(assert (=> b!5456294 call!397694))

(declare-fun lt!2226997 () Unit!154836)

(assert (=> b!5456294 (= lt!2226997 e!3378993)))

(declare-fun isEmpty!34011 (List!62148) Bool)

(assert (=> b!5456294 (= c!953071 (isEmpty!34011 (_1!35785 lt!2226926)))))

(assert (=> b!5456294 (= lt!2226926 call!397669)))

(assert (=> b!5456294 (= call!397770 call!397659)))

(declare-fun lt!2227078 () Unit!154836)

(assert (=> b!5456294 (= lt!2227078 call!397772)))

(assert (=> b!5456294 (= call!397650 call!397626)))

(assert (=> b!5456294 (= lt!2226952 call!397799)))

(declare-fun lt!2226953 () Unit!154836)

(assert (=> b!5456294 (= lt!2226953 call!397704)))

(declare-fun Unit!154857 () Unit!154836)

(assert (=> b!5456294 (= e!3378989 Unit!154857)))

(assert (= (and start!571594 res!2323692) b!5456288))

(assert (= (and b!5456288 res!2323693) b!5456241))

(assert (= (and b!5456241 res!2323704) b!5456256))

(assert (= (and b!5456256 (not res!2323698)) b!5456230))

(assert (= (and b!5456230 (not res!2323690)) b!5456274))

(assert (= (and b!5456274 (not res!2323679)) b!5456251))

(assert (= (and b!5456251 (not res!2323706)) b!5456246))

(assert (= (and b!5456246 (not res!2323681)) b!5456272))

(assert (= (and b!5456272 (not res!2323684)) b!5456266))

(assert (= (and b!5456266 (not res!2323705)) b!5456292))

(assert (= (and b!5456292 (not res!2323700)) b!5456283))

(assert (= (and b!5456283 c!953076) b!5456291))

(assert (= (and b!5456283 (not c!953076)) b!5456231))

(assert (= (and b!5456291 (not res!2323710)) b!5456235))

(assert (= (and b!5456283 c!953075) b!5456284))

(assert (= (and b!5456283 (not c!953075)) b!5456262))

(assert (= (and b!5456262 c!953073) b!5456237))

(assert (= (and b!5456262 (not c!953073)) b!5456236))

(assert (= (and b!5456237 (not res!2323689)) b!5456273))

(assert (= (and b!5456237 c!953064) b!5456243))

(assert (= (and b!5456237 (not c!953064)) b!5456233))

(assert (= (and b!5456243 (not res!2323712)) b!5456290))

(assert (= (and b!5456237 c!953065) b!5456263))

(assert (= (and b!5456237 (not c!953065)) b!5456267))

(assert (= (and b!5456263 (not res!2323711)) b!5456258))

(assert (= (and b!5456237 res!2323701) b!5456281))

(assert (= (and b!5456236 res!2323697) b!5456275))

(assert (= (and b!5456236 c!953070) b!5456238))

(assert (= (and b!5456236 (not c!953070)) b!5456242))

(assert (= (and b!5456238 (not res!2323694)) b!5456227))

(assert (= (and b!5456238 (not res!2323683)) b!5456257))

(assert (= (and b!5456238 res!2323696) b!5456232))

(assert (= (and b!5456242 c!953068) b!5456239))

(assert (= (and b!5456242 (not c!953068)) b!5456249))

(assert (= (and b!5456239 res!2323695) b!5456277))

(assert (= (and b!5456249 c!953067) b!5456261))

(assert (= (and b!5456249 (not c!953067)) b!5456254))

(assert (= (and b!5456261 res!2323699) b!5456280))

(assert (= (and b!5456261 c!953069) b!5456294))

(assert (= (and b!5456261 (not c!953069)) b!5456248))

(assert (= (and b!5456294 c!953071) b!5456282))

(assert (= (and b!5456294 (not c!953071)) b!5456244))

(assert (= (and b!5456282 res!2323682) b!5456278))

(assert (= (and b!5456244 res!2323708) b!5456265))

(assert (= (or b!5456282 b!5456244) bm!397751))

(assert (= (or b!5456282 b!5456244) bm!397779))

(assert (= (or b!5456278 b!5456244) bm!397732))

(assert (= (or b!5456282 b!5456244) bm!397604))

(assert (= (and b!5456248 c!953066) b!5456285))

(assert (= (and b!5456248 (not c!953066)) b!5456287))

(assert (= (and b!5456285 c!953074) b!5456245))

(assert (= (and b!5456285 (not c!953074)) b!5456293))

(assert (= (and b!5456245 res!2323703) b!5456269))

(assert (= (and b!5456245 res!2323702) b!5456240))

(assert (= (and b!5456293 res!2323707) b!5456252))

(assert (= (or b!5456245 b!5456293) bm!397664))

(assert (= (or b!5456245 b!5456293) bm!397719))

(assert (= (or b!5456245 b!5456293) bm!397684))

(assert (= (or b!5456245 b!5456293) bm!397766))

(assert (= (or b!5456245 b!5456293) bm!397792))

(assert (= (or b!5456245 b!5456293) bm!397793))

(assert (= (or b!5456245 b!5456293) bm!397744))

(assert (= (or b!5456245 b!5456293) bm!397668))

(assert (= (or b!5456245 b!5456293) bm!397656))

(assert (= (or b!5456245 b!5456293) bm!397741))

(assert (= (or b!5456245 b!5456293) bm!397673))

(assert (= (or b!5456245 b!5456293) bm!397605))

(assert (= (or b!5456245 b!5456293) bm!397711))

(assert (= (or b!5456245 b!5456293) bm!397768))

(assert (= (or b!5456245 b!5456293) bm!397715))

(assert (= (or b!5456245 b!5456293) bm!397690))

(assert (= (or b!5456245 b!5456293) bm!397706))

(assert (= (or b!5456245 b!5456293) bm!397769))

(assert (= (or b!5456245 b!5456293) bm!397721))

(assert (= (or b!5456244 b!5456245) bm!397704))

(assert (= (or b!5456244 bm!397766) bm!397803))

(assert (= (or b!5456244 b!5456245) bm!397630))

(assert (= (or b!5456244 b!5456245) bm!397776))

(assert (= (or b!5456294 bm!397715) bm!397681))

(assert (= (or b!5456244 b!5456245) bm!397755))

(assert (= (or b!5456244 b!5456245) bm!397661))

(assert (= (or b!5456244 b!5456245) bm!397791))

(assert (= (or b!5456244 b!5456245) bm!397631))

(assert (= (or b!5456244 bm!397744) bm!397716))

(assert (= (or b!5456244 b!5456245) bm!397600))

(assert (= (or bm!397732 b!5456294 b!5456245) bm!397602))

(assert (= (or b!5456244 b!5456245) bm!397694))

(assert (= (or bm!397751 bm!397684) bm!397724))

(assert (= (or b!5456282 b!5456293) bm!397625))

(assert (= (or b!5456244 bm!397711) bm!397788))

(assert (= (or b!5456244 b!5456245) bm!397650))

(assert (= (or bm!397779 bm!397605) bm!397773))

(assert (= (or b!5456294 b!5456245) bm!397762))

(assert (= (or b!5456244 b!5456245) bm!397636))

(assert (= (or b!5456244 bm!397719) bm!397613))

(assert (= (or b!5456244 bm!397793) bm!397612))

(assert (= (or b!5456244 b!5456245) bm!397646))

(assert (= (or b!5456244 bm!397741) bm!397676))

(assert (= (or b!5456244 b!5456245) bm!397723))

(assert (= (or b!5456244 b!5456245) bm!397729))

(assert (= (or b!5456244 bm!397769) bm!397731))

(assert (= (or b!5456244 b!5456245) bm!397682))

(assert (= (or b!5456244 b!5456245) bm!397686))

(assert (= (or b!5456244 bm!397656) bm!397653))

(assert (= (or bm!397604 b!5456248) bm!397752))

(assert (= (or b!5456244 bm!397706) bm!397691))

(assert (= (or b!5456294 b!5456245) bm!397738))

(assert (= (or b!5456244 b!5456245) bm!397622))

(assert (= (or b!5456294 bm!397664) bm!397727))

(assert (= (or b!5456244 b!5456245) bm!397797))

(assert (= (or b!5456282 b!5456293) bm!397698))

(assert (= (or b!5456244 bm!397690) bm!397667))

(assert (= (or b!5456244 b!5456245) bm!397726))

(assert (= (or b!5456282 b!5456293) bm!397733))

(assert (= (or b!5456282 b!5456293) bm!397663))

(assert (= (or b!5456294 bm!397768) bm!397783))

(assert (= (or b!5456294 b!5456245) bm!397620))

(assert (= (or b!5456244 bm!397792) bm!397765))

(assert (= (or b!5456294 b!5456245) bm!397645))

(assert (= (or b!5456244 b!5456245) bm!397710))

(assert (= (or b!5456294 bm!397668) bm!397717))

(assert (= (or b!5456244 b!5456285) bm!397770))

(assert (= (and b!5456254 c!953072) b!5456234))

(assert (= (and b!5456254 (not c!953072)) b!5456271))

(assert (= (and b!5456234 res!2323691) b!5456268))

(assert (= (and b!5456271 res!2323687) b!5456259))

(assert (= (or b!5456268 b!5456259) bm!397714))

(assert (= (or b!5456234 b!5456271) bm!397789))

(assert (= (or b!5456234 b!5456271) bm!397736))

(assert (= (or b!5456234 b!5456271) bm!397742))

(assert (= (or b!5456234 b!5456271) bm!397760))

(assert (= (or b!5456234 b!5456271) bm!397603))

(assert (= (or b!5456234 b!5456271) bm!397683))

(assert (= (or b!5456234 b!5456271) bm!397786))

(assert (= (or b!5456234 b!5456271) bm!397725))

(assert (= (or bm!397630 b!5456234) bm!397617))

(assert (= (or bm!397803 bm!397789) bm!397689))

(assert (= (or b!5456261 b!5456234) bm!397798))

(assert (= (or b!5456261 b!5456234) bm!397749))

(assert (= (or b!5456261 bm!397683) bm!397627))

(assert (= (or b!5456261 b!5456234) bm!397634))

(assert (= (or bm!397691 bm!397603) bm!397728))

(assert (= (or bm!397622 b!5456234) bm!397754))

(assert (= (or b!5456261 bm!397760) bm!397750))

(assert (= (or b!5456261 bm!397725) bm!397740))

(assert (= (or bm!397625 b!5456234) bm!397756))

(assert (= (or bm!397729 bm!397786) bm!397655))

(assert (= (or bm!397797 bm!397742) bm!397624))

(assert (= (or bm!397770 b!5456234) bm!397678))

(assert (= (or bm!397673 bm!397714) bm!397799))

(assert (= (or bm!397602 b!5456234) bm!397639))

(assert (= (or b!5456261 b!5456234) bm!397615))

(assert (= (or b!5456239 bm!397655) bm!397652))

(assert (= (or b!5456239 bm!397783) bm!397804))

(assert (= (or b!5456239 bm!397620) bm!397674))

(assert (= (or b!5456239 bm!397678) bm!397672))

(assert (= (or b!5456239 bm!397788) bm!397709))

(assert (= (or b!5456239 bm!397738) bm!397606))

(assert (= (or b!5456239 bm!397612) bm!397626))

(assert (= (or b!5456239 bm!397676) bm!397628))

(assert (= (or b!5456239 b!5456245) bm!397609))

(assert (= (or b!5456239 bm!397653) bm!397695))

(assert (= (or b!5456239 bm!397750) bm!397643))

(assert (= (or b!5456239 b!5456261) bm!397649))

(assert (= (or b!5456239 bm!397634) bm!397748))

(assert (= (or b!5456239 bm!397615) bm!397712))

(assert (= (or b!5456277 bm!397617) bm!397802))

(assert (= (or b!5456239 bm!397689) bm!397796))

(assert (= (or b!5456239 bm!397686) bm!397680))

(assert (= (or b!5456239 bm!397624) bm!397665))

(assert (= (or b!5456239 bm!397600) bm!397660))

(assert (= (or b!5456239 bm!397728) bm!397703))

(assert (= (or b!5456239 bm!397727) bm!397730))

(assert (= (or b!5456239 bm!397756) bm!397739))

(assert (= (or b!5456239 bm!397717) bm!397705))

(assert (= (or b!5456239 bm!397740) bm!397778))

(assert (= (or b!5456239 b!5456261) bm!397638))

(assert (= (or b!5456239 bm!397631) bm!397671))

(assert (= (or b!5456239 bm!397754) bm!397657))

(assert (= (or b!5456239 bm!397798) bm!397746))

(assert (= (or b!5456239 bm!397726) bm!397677))

(assert (= (or b!5456239 bm!397721) bm!397722))

(assert (= (or b!5456239 bm!397762) bm!397675))

(assert (= (or b!5456238 bm!397705) bm!397794))

(assert (= (or b!5456238 bm!397778) bm!397644))

(assert (= (or b!5456238 bm!397665) bm!397707))

(assert (= (or b!5456238 bm!397695) bm!397654))

(assert (= (or b!5456238 b!5456261) bm!397782))

(assert (= (or b!5456238 bm!397609) bm!397763))

(assert (= (or b!5456238 b!5456239) bm!397696))

(assert (= (or b!5456238 b!5456234) bm!397701))

(assert (= (or b!5456238 bm!397681) bm!397640))

(assert (= (or b!5456238 bm!397712) bm!397784))

(assert (= (or b!5456238 bm!397677) bm!397616))

(assert (= (or b!5456232 bm!397639) bm!397633))

(assert (= (or b!5456238 bm!397663) bm!397745))

(assert (= (or b!5456227 bm!397752) bm!397599))

(assert (= (or b!5456238 bm!397680) bm!397771))

(assert (= (or b!5456238 bm!397674) bm!397669))

(assert (= (or b!5456238 bm!397748) bm!397753))

(assert (= (or b!5456238 bm!397804) bm!397800))

(assert (= (or b!5456238 bm!397716) bm!397785))

(assert (= (or b!5456238 bm!397672) bm!397618))

(assert (= (or b!5456238 bm!397638) bm!397758))

(assert (= (or b!5456238 bm!397703) bm!397772))

(assert (= (or b!5456238 b!5456239) bm!397629))

(assert (= (or b!5456238 bm!397643) bm!397687))

(assert (= (or b!5456238 bm!397802) bm!397611))

(assert (= (or b!5456238 bm!397739) bm!397787))

(assert (= (or b!5456238 bm!397657) bm!397737))

(assert (= (or b!5456238 bm!397724) bm!397801))

(assert (= (or b!5456238 bm!397733) bm!397781))

(assert (= (or b!5456238 bm!397660) bm!397658))

(assert (= (or b!5456238 bm!397709) bm!397623))

(assert (= (or b!5456238 b!5456261) bm!397637))

(assert (= (or b!5456238 bm!397731) bm!397700))

(assert (= (or b!5456238 b!5456261) bm!397702))

(assert (= (or b!5456238 bm!397627) bm!397662))

(assert (= (or b!5456238 bm!397796) bm!397764))

(assert (= (or b!5456238 bm!397799) bm!397718))

(assert (= (or b!5456238 bm!397730) bm!397699))

(assert (= (or b!5456238 bm!397773) bm!397693))

(assert (= (or b!5456238 bm!397626) bm!397641))

(assert (= (or b!5456238 bm!397675) bm!397747))

(assert (= (or b!5456238 bm!397722) bm!397761))

(assert (= (or b!5456237 bm!397693) bm!397720))

(assert (= (or b!5456263 bm!397701) bm!397780))

(assert (= (or b!5456237 bm!397702) bm!397635))

(assert (= (or b!5456237 bm!397618) bm!397708))

(assert (= (or b!5456237 bm!397629) bm!397805))

(assert (= (or b!5456237 bm!397772) bm!397679))

(assert (= (or b!5456237 b!5456257) bm!397614))

(assert (= (or b!5456243 bm!397718) bm!397659))

(assert (= (or b!5456237 bm!397782) bm!397734))

(assert (= (or b!5456237 bm!397737) bm!397735))

(assert (= (or b!5456237 bm!397787) bm!397743))

(assert (= (or b!5456237 b!5456245) bm!397601))

(assert (= (or b!5456237 b!5456275) bm!397767))

(assert (= (or b!5456237 b!5456245) bm!397688))

(assert (= (or b!5456237 bm!397637) bm!397651))

(assert (= (or b!5456237 b!5456238) bm!397685))

(assert (= (or b!5456237 bm!397764) bm!397757))

(assert (= (or b!5456237 bm!397801) bm!397692))

(assert (= (or b!5456263 bm!397662) bm!397713))

(assert (= (or b!5456237 b!5456238) bm!397621))

(assert (= (or b!5456237 bm!397687) bm!397795))

(assert (= (or b!5456263 b!5456273 b!5456238) bm!397697))

(assert (= (or b!5456237 bm!397758) bm!397670))

(assert (= (or b!5456237 bm!397611) bm!397666))

(assert (= (or b!5456258 b!5456290 bm!397599) bm!397774))

(assert (= (or b!5456237 b!5456245) bm!397607))

(assert (= (or b!5456237 bm!397700) bm!397759))

(assert (= (or b!5456237 bm!397644) bm!397648))

(assert (= (or b!5456237 b!5456261) bm!397632))

(assert (= (or b!5456237 bm!397781) bm!397610))

(assert (= (or b!5456237 bm!397628) bm!397777))

(assert (= (or b!5456281 bm!397633) bm!397775))

(assert (= (or b!5456237 bm!397698) bm!397790))

(assert (= (or b!5456284 bm!397601) bm!397642))

(assert (= (or b!5456284 bm!397743) bm!397647))

(assert (= (or b!5456284 bm!397735) bm!397619))

(assert (= (or b!5456284 bm!397666) bm!397608))

(assert (= (and b!5456283 (not res!2323709)) b!5456270))

(assert (= (and b!5456270 (not res!2323685)) b!5456260))

(assert (= (and b!5456260 (not res!2323680)) b!5456276))

(assert (= (and b!5456276 (not res!2323688)) b!5456247))

(assert (= (and b!5456247 (not res!2323686)) b!5456264))

(assert (= (and start!571594 ((_ is ElementMatch!15283) r!7292)) b!5456229))

(assert (= (and start!571594 ((_ is Concat!24128) r!7292)) b!5456253))

(assert (= (and start!571594 ((_ is Star!15283) r!7292)) b!5456286))

(assert (= (and start!571594 ((_ is Union!15283) r!7292)) b!5456250))

(assert (= (and start!571594 condSetEmpty!35701) setIsEmpty!35701))

(assert (= (and start!571594 (not condSetEmpty!35701)) setNonEmpty!35701))

(assert (= setNonEmpty!35701 b!5456228))

(assert (= b!5456289 b!5456279))

(assert (= (and start!571594 ((_ is Cons!62026) zl!343)) b!5456289))

(assert (= (and start!571594 ((_ is Cons!62024) s!2326)) b!5456255))

(declare-fun m!6477078 () Bool)

(assert (=> bm!397745 m!6477078))

(declare-fun m!6477080 () Bool)

(assert (=> bm!397679 m!6477080))

(declare-fun m!6477082 () Bool)

(assert (=> bm!397641 m!6477082))

(declare-fun m!6477084 () Bool)

(assert (=> bm!397616 m!6477084))

(declare-fun m!6477086 () Bool)

(assert (=> bm!397696 m!6477086))

(declare-fun m!6477088 () Bool)

(assert (=> bm!397794 m!6477088))

(declare-fun m!6477090 () Bool)

(assert (=> b!5456264 m!6477090))

(declare-fun m!6477092 () Bool)

(assert (=> start!571594 m!6477092))

(declare-fun m!6477094 () Bool)

(assert (=> bm!397713 m!6477094))

(declare-fun m!6477096 () Bool)

(assert (=> b!5456238 m!6477096))

(declare-fun m!6477098 () Bool)

(assert (=> b!5456238 m!6477098))

(declare-fun m!6477100 () Bool)

(assert (=> bm!397621 m!6477100))

(declare-fun m!6477102 () Bool)

(assert (=> bm!397736 m!6477102))

(declare-fun m!6477104 () Bool)

(assert (=> bm!397667 m!6477104))

(declare-fun m!6477106 () Bool)

(assert (=> bm!397670 m!6477106))

(declare-fun m!6477108 () Bool)

(assert (=> bm!397774 m!6477108))

(declare-fun m!6477110 () Bool)

(assert (=> bm!397753 m!6477110))

(declare-fun m!6477112 () Bool)

(assert (=> bm!397734 m!6477112))

(declare-fun m!6477114 () Bool)

(assert (=> bm!397608 m!6477114))

(declare-fun m!6477116 () Bool)

(assert (=> bm!397608 m!6477116))

(declare-fun m!6477118 () Bool)

(assert (=> b!5456284 m!6477118))

(declare-fun m!6477120 () Bool)

(assert (=> b!5456266 m!6477120))

(declare-fun m!6477122 () Bool)

(assert (=> b!5456266 m!6477122))

(declare-fun m!6477124 () Bool)

(assert (=> b!5456266 m!6477124))

(declare-fun m!6477126 () Bool)

(assert (=> b!5456266 m!6477126))

(assert (=> b!5456266 m!6477120))

(declare-fun m!6477128 () Bool)

(assert (=> b!5456266 m!6477128))

(declare-fun m!6477130 () Bool)

(assert (=> b!5456266 m!6477130))

(assert (=> b!5456266 m!6477124))

(declare-fun m!6477132 () Bool)

(assert (=> bm!397710 m!6477132))

(declare-fun m!6477134 () Bool)

(assert (=> bm!397776 m!6477134))

(declare-fun m!6477136 () Bool)

(assert (=> bm!397610 m!6477136))

(declare-fun m!6477138 () Bool)

(assert (=> bm!397658 m!6477138))

(declare-fun m!6477140 () Bool)

(assert (=> bm!397723 m!6477140))

(declare-fun m!6477142 () Bool)

(assert (=> bm!397749 m!6477142))

(declare-fun m!6477144 () Bool)

(assert (=> bm!397671 m!6477144))

(declare-fun m!6477146 () Bool)

(assert (=> b!5456237 m!6477146))

(declare-fun m!6477148 () Bool)

(assert (=> b!5456237 m!6477148))

(declare-fun m!6477150 () Bool)

(assert (=> b!5456237 m!6477150))

(declare-fun m!6477152 () Bool)

(assert (=> b!5456237 m!6477152))

(declare-fun m!6477154 () Bool)

(assert (=> b!5456237 m!6477154))

(declare-fun m!6477156 () Bool)

(assert (=> b!5456237 m!6477156))

(declare-fun m!6477158 () Bool)

(assert (=> b!5456237 m!6477158))

(declare-fun m!6477160 () Bool)

(assert (=> bm!397648 m!6477160))

(declare-fun m!6477162 () Bool)

(assert (=> bm!397652 m!6477162))

(declare-fun m!6477164 () Bool)

(assert (=> bm!397645 m!6477164))

(declare-fun m!6477166 () Bool)

(assert (=> bm!397746 m!6477166))

(declare-fun m!6477168 () Bool)

(assert (=> bm!397647 m!6477168))

(declare-fun m!6477170 () Bool)

(assert (=> bm!397640 m!6477170))

(declare-fun m!6477172 () Bool)

(assert (=> bm!397623 m!6477172))

(declare-fun m!6477174 () Bool)

(assert (=> b!5456276 m!6477174))

(declare-fun m!6477176 () Bool)

(assert (=> b!5456283 m!6477176))

(declare-fun m!6477178 () Bool)

(assert (=> b!5456283 m!6477178))

(declare-fun m!6477180 () Bool)

(assert (=> b!5456283 m!6477180))

(declare-fun m!6477182 () Bool)

(assert (=> b!5456283 m!6477182))

(declare-fun m!6477184 () Bool)

(assert (=> b!5456283 m!6477184))

(assert (=> b!5456283 m!6477118))

(declare-fun m!6477186 () Bool)

(assert (=> b!5456283 m!6477186))

(declare-fun m!6477188 () Bool)

(assert (=> b!5456283 m!6477188))

(declare-fun m!6477190 () Bool)

(assert (=> b!5456283 m!6477190))

(declare-fun m!6477192 () Bool)

(assert (=> b!5456283 m!6477192))

(declare-fun m!6477194 () Bool)

(assert (=> b!5456283 m!6477194))

(declare-fun m!6477196 () Bool)

(assert (=> bm!397757 m!6477196))

(declare-fun m!6477198 () Bool)

(assert (=> bm!397767 m!6477198))

(declare-fun m!6477200 () Bool)

(assert (=> bm!397791 m!6477200))

(declare-fun m!6477202 () Bool)

(assert (=> b!5456243 m!6477202))

(declare-fun m!6477204 () Bool)

(assert (=> bm!397790 m!6477204))

(assert (=> b!5456293 m!6477118))

(declare-fun m!6477206 () Bool)

(assert (=> bm!397747 m!6477206))

(declare-fun m!6477208 () Bool)

(assert (=> bm!397682 m!6477208))

(declare-fun m!6477210 () Bool)

(assert (=> bm!397784 m!6477210))

(declare-fun m!6477212 () Bool)

(assert (=> bm!397649 m!6477212))

(declare-fun m!6477214 () Bool)

(assert (=> bm!397755 m!6477214))

(declare-fun m!6477216 () Bool)

(assert (=> bm!397688 m!6477216))

(declare-fun m!6477218 () Bool)

(assert (=> b!5456256 m!6477218))

(declare-fun m!6477220 () Bool)

(assert (=> b!5456256 m!6477220))

(declare-fun m!6477222 () Bool)

(assert (=> b!5456256 m!6477222))

(declare-fun m!6477224 () Bool)

(assert (=> bm!397777 m!6477224))

(declare-fun m!6477226 () Bool)

(assert (=> bm!397650 m!6477226))

(declare-fun m!6477228 () Bool)

(assert (=> bm!397654 m!6477228))

(declare-fun m!6477230 () Bool)

(assert (=> bm!397771 m!6477230))

(declare-fun m!6477232 () Bool)

(assert (=> bm!397607 m!6477232))

(declare-fun m!6477234 () Bool)

(assert (=> b!5456261 m!6477234))

(declare-fun m!6477236 () Bool)

(assert (=> b!5456261 m!6477236))

(declare-fun m!6477238 () Bool)

(assert (=> b!5456261 m!6477238))

(declare-fun m!6477240 () Bool)

(assert (=> b!5456261 m!6477240))

(declare-fun m!6477242 () Bool)

(assert (=> bm!397697 m!6477242))

(declare-fun m!6477244 () Bool)

(assert (=> bm!397685 m!6477244))

(declare-fun m!6477246 () Bool)

(assert (=> bm!397636 m!6477246))

(declare-fun m!6477248 () Bool)

(assert (=> b!5456270 m!6477248))

(declare-fun m!6477250 () Bool)

(assert (=> b!5456270 m!6477250))

(declare-fun m!6477252 () Bool)

(assert (=> b!5456270 m!6477252))

(declare-fun m!6477254 () Bool)

(assert (=> bm!397800 m!6477254))

(declare-fun m!6477256 () Bool)

(assert (=> bm!397759 m!6477256))

(declare-fun m!6477258 () Bool)

(assert (=> bm!397646 m!6477258))

(declare-fun m!6477260 () Bool)

(assert (=> b!5456247 m!6477260))

(declare-fun m!6477262 () Bool)

(assert (=> bm!397765 m!6477262))

(declare-fun m!6477264 () Bool)

(assert (=> bm!397694 m!6477264))

(declare-fun m!6477266 () Bool)

(assert (=> bm!397606 m!6477266))

(declare-fun m!6477268 () Bool)

(assert (=> bm!397619 m!6477268))

(declare-fun m!6477270 () Bool)

(assert (=> setNonEmpty!35701 m!6477270))

(declare-fun m!6477272 () Bool)

(assert (=> b!5456289 m!6477272))

(declare-fun m!6477274 () Bool)

(assert (=> b!5456245 m!6477274))

(declare-fun m!6477276 () Bool)

(assert (=> b!5456245 m!6477276))

(declare-fun m!6477278 () Bool)

(assert (=> b!5456245 m!6477278))

(declare-fun m!6477280 () Bool)

(assert (=> b!5456245 m!6477280))

(declare-fun m!6477282 () Bool)

(assert (=> b!5456245 m!6477282))

(declare-fun m!6477284 () Bool)

(assert (=> b!5456245 m!6477284))

(declare-fun m!6477286 () Bool)

(assert (=> b!5456245 m!6477286))

(declare-fun m!6477288 () Bool)

(assert (=> b!5456245 m!6477288))

(assert (=> b!5456234 m!6477118))

(declare-fun m!6477290 () Bool)

(assert (=> bm!397761 m!6477290))

(declare-fun m!6477292 () Bool)

(assert (=> b!5456288 m!6477292))

(declare-fun m!6477294 () Bool)

(assert (=> b!5456230 m!6477294))

(declare-fun m!6477296 () Bool)

(assert (=> bm!397720 m!6477296))

(declare-fun m!6477298 () Bool)

(assert (=> bm!397775 m!6477298))

(declare-fun m!6477300 () Bool)

(assert (=> bm!397632 m!6477300))

(declare-fun m!6477302 () Bool)

(assert (=> bm!397780 m!6477302))

(declare-fun m!6477304 () Bool)

(assert (=> bm!397707 m!6477304))

(assert (=> bm!397708 m!6477276))

(declare-fun m!6477306 () Bool)

(assert (=> bm!397708 m!6477306))

(declare-fun m!6477308 () Bool)

(assert (=> b!5456292 m!6477308))

(assert (=> b!5456282 m!6477118))

(declare-fun m!6477310 () Bool)

(assert (=> bm!397669 m!6477310))

(declare-fun m!6477312 () Bool)

(assert (=> bm!397699 m!6477312))

(declare-fun m!6477314 () Bool)

(assert (=> bm!397651 m!6477314))

(declare-fun m!6477316 () Bool)

(assert (=> b!5456235 m!6477316))

(declare-fun m!6477318 () Bool)

(assert (=> bm!397661 m!6477318))

(declare-fun m!6477320 () Bool)

(assert (=> b!5456291 m!6477320))

(declare-fun m!6477322 () Bool)

(assert (=> b!5456291 m!6477322))

(declare-fun m!6477324 () Bool)

(assert (=> b!5456291 m!6477324))

(declare-fun m!6477326 () Bool)

(assert (=> bm!397659 m!6477326))

(declare-fun m!6477328 () Bool)

(assert (=> bm!397805 m!6477328))

(declare-fun m!6477330 () Bool)

(assert (=> bm!397613 m!6477330))

(declare-fun m!6477332 () Bool)

(assert (=> bm!397614 m!6477332))

(declare-fun m!6477334 () Bool)

(assert (=> bm!397795 m!6477334))

(assert (=> bm!397704 m!6477246))

(declare-fun m!6477336 () Bool)

(assert (=> bm!397763 m!6477336))

(declare-fun m!6477338 () Bool)

(assert (=> b!5456241 m!6477338))

(declare-fun m!6477340 () Bool)

(assert (=> b!5456239 m!6477340))

(declare-fun m!6477342 () Bool)

(assert (=> bm!397785 m!6477342))

(declare-fun m!6477344 () Bool)

(assert (=> bm!397635 m!6477344))

(declare-fun m!6477346 () Bool)

(assert (=> bm!397642 m!6477346))

(declare-fun m!6477348 () Bool)

(assert (=> bm!397692 m!6477348))

(declare-fun m!6477350 () Bool)

(assert (=> b!5456274 m!6477350))

(declare-fun m!6477352 () Bool)

(assert (=> b!5456294 m!6477352))

(declare-fun m!6477354 () Bool)

(assert (=> b!5456260 m!6477354))

(declare-fun m!6477356 () Bool)

(assert (=> b!5456260 m!6477356))

(declare-fun m!6477358 () Bool)

(assert (=> b!5456246 m!6477358))

(assert (=> b!5456246 m!6477358))

(declare-fun m!6477360 () Bool)

(assert (=> b!5456246 m!6477360))

(check-sat (not bm!397682) (not bm!397645) (not bm!397648) (not bm!397658) (not bm!397713) (not bm!397765) (not bm!397775) (not b!5456253) (not bm!397785) (not b!5456246) (not bm!397651) (not b!5456270) (not b!5456288) (not bm!397696) (not bm!397776) (not bm!397707) (not bm!397616) (not b!5456245) (not bm!397771) (not bm!397763) (not bm!397610) (not bm!397669) (not b!5456255) (not b!5456291) (not b!5456286) (not bm!397692) (not bm!397761) (not b!5456260) (not bm!397723) (not bm!397606) (not bm!397777) (not b!5456247) (not bm!397661) (not b!5456243) (not b!5456235) (not bm!397649) (not bm!397608) (not bm!397753) (not bm!397800) (not bm!397623) (not bm!397720) (not bm!397679) (not bm!397641) (not b!5456256) (not bm!397671) (not setNonEmpty!35701) (not b!5456292) (not bm!397794) (not b!5456237) (not bm!397790) (not bm!397736) (not bm!397650) (not b!5456230) (not bm!397607) (not b!5456294) (not bm!397784) (not bm!397774) (not bm!397659) (not bm!397805) (not bm!397710) (not start!571594) (not bm!397746) (not bm!397642) (not b!5456261) tp_is_empty!39819 (not b!5456250) (not bm!397759) (not bm!397613) (not bm!397747) (not bm!397646) (not bm!397636) (not bm!397652) (not bm!397670) (not b!5456266) (not bm!397708) (not bm!397757) (not bm!397632) (not bm!397619) (not b!5456228) (not bm!397694) (not bm!397685) (not bm!397647) (not b!5456274) (not b!5456276) (not bm!397697) (not bm!397699) (not b!5456241) (not bm!397621) (not bm!397654) (not bm!397614) (not bm!397667) (not bm!397767) (not bm!397749) (not bm!397640) (not bm!397791) (not bm!397780) (not b!5456279) (not bm!397688) (not bm!397734) (not bm!397795) (not b!5456264) (not bm!397704) (not b!5456289) (not bm!397745) (not bm!397635) (not bm!397755) (not b!5456283))
(check-sat)
