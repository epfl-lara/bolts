; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13900 () Bool)

(assert start!13900)

(declare-fun res!62441 () Bool)

(declare-fun e!77359 () Bool)

(assert (=> start!13900 (=> (not res!62441) (not e!77359))))

(declare-datatypes ((B!791 0))(
  ( (B!792 (val!881 Int)) )
))
(declare-datatypes ((List!2199 0))(
  ( (Nil!2193) (Cons!2193 (h!7590 B!791) (t!22785 List!2199)) )
))
(declare-fun l!3288 () List!2199)

(declare-fun tot!41 () List!2199)

(declare-fun elmt!148 () B!791)

(declare-fun isPrefix!186 (List!2199 List!2199) Bool)

(declare-fun ++!467 (List!2199 List!2199) List!2199)

(assert (=> start!13900 (= res!62441 (isPrefix!186 (++!467 l!3288 (Cons!2193 elmt!148 Nil!2193)) tot!41))))

(assert (=> start!13900 e!77359))

(declare-fun e!77358 () Bool)

(assert (=> start!13900 e!77358))

(declare-fun tp_is_empty!1435 () Bool)

(assert (=> start!13900 tp_is_empty!1435))

(declare-fun e!77360 () Bool)

(assert (=> start!13900 e!77360))

(declare-fun b!133611 () Bool)

(assert (=> b!133611 (= e!77359 (and (is-Cons!2193 l!3288) (= tot!41 Nil!2193)))))

(declare-fun b!133612 () Bool)

(declare-fun tp!70557 () Bool)

(assert (=> b!133612 (= e!77358 (and tp_is_empty!1435 tp!70557))))

(declare-fun b!133613 () Bool)

(declare-fun tp!70558 () Bool)

(assert (=> b!133613 (= e!77360 (and tp_is_empty!1435 tp!70558))))

(assert (= (and start!13900 res!62441) b!133611))

(assert (= (and start!13900 (is-Cons!2193 l!3288)) b!133612))

(assert (= (and start!13900 (is-Cons!2193 tot!41)) b!133613))

(declare-fun m!118621 () Bool)

(assert (=> start!13900 m!118621))

(assert (=> start!13900 m!118621))

(declare-fun m!118623 () Bool)

(assert (=> start!13900 m!118623))

(push 1)

(assert (not start!13900))

(assert (not b!133613))

(assert (not b!133612))

(assert tp_is_empty!1435)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!77377 () Bool)

(declare-fun b!133634 () Bool)

(declare-fun size!1992 (List!2199) Int)

(assert (=> b!133634 (= e!77377 (>= (size!1992 tot!41) (size!1992 (++!467 l!3288 (Cons!2193 elmt!148 Nil!2193)))))))

(declare-fun b!133633 () Bool)

(declare-fun e!77376 () Bool)

(declare-fun tail!277 (List!2199) List!2199)

(assert (=> b!133633 (= e!77376 (isPrefix!186 (tail!277 (++!467 l!3288 (Cons!2193 elmt!148 Nil!2193))) (tail!277 tot!41)))))

(declare-fun d!31978 () Bool)

(assert (=> d!31978 e!77377))

(declare-fun res!62456 () Bool)

(assert (=> d!31978 (=> res!62456 e!77377)))

(declare-fun lt!40333 () Bool)

(assert (=> d!31978 (= res!62456 (not lt!40333))))

(declare-fun e!77378 () Bool)

(assert (=> d!31978 (= lt!40333 e!77378)))

(declare-fun res!62454 () Bool)

(assert (=> d!31978 (=> res!62454 e!77378)))

(assert (=> d!31978 (= res!62454 (is-Nil!2193 (++!467 l!3288 (Cons!2193 elmt!148 Nil!2193))))))

(assert (=> d!31978 (= (isPrefix!186 (++!467 l!3288 (Cons!2193 elmt!148 Nil!2193)) tot!41) lt!40333)))

(declare-fun b!133631 () Bool)

(assert (=> b!133631 (= e!77378 e!77376)))

(declare-fun res!62455 () Bool)

(assert (=> b!133631 (=> (not res!62455) (not e!77376))))

(assert (=> b!133631 (= res!62455 (not (is-Nil!2193 tot!41)))))

(declare-fun b!133632 () Bool)

(declare-fun res!62453 () Bool)

(assert (=> b!133632 (=> (not res!62453) (not e!77376))))

(declare-fun head!531 (List!2199) B!791)

(assert (=> b!133632 (= res!62453 (= (head!531 (++!467 l!3288 (Cons!2193 elmt!148 Nil!2193))) (head!531 tot!41)))))

(assert (= (and d!31978 (not res!62454)) b!133631))

(assert (= (and b!133631 res!62455) b!133632))

(assert (= (and b!133632 res!62453) b!133633))

(assert (= (and d!31978 (not res!62456)) b!133634))

(declare-fun m!118629 () Bool)

(assert (=> b!133634 m!118629))

(assert (=> b!133634 m!118621))

(declare-fun m!118631 () Bool)

(assert (=> b!133634 m!118631))

(assert (=> b!133633 m!118621))

(declare-fun m!118633 () Bool)

(assert (=> b!133633 m!118633))

(declare-fun m!118635 () Bool)

(assert (=> b!133633 m!118635))

(assert (=> b!133633 m!118633))

(assert (=> b!133633 m!118635))

(declare-fun m!118637 () Bool)

(assert (=> b!133633 m!118637))

(assert (=> b!133632 m!118621))

(declare-fun m!118639 () Bool)

(assert (=> b!133632 m!118639))

(declare-fun m!118641 () Bool)

(assert (=> b!133632 m!118641))

(assert (=> start!13900 d!31978))

(declare-fun b!133643 () Bool)

(declare-fun e!77384 () List!2199)

(assert (=> b!133643 (= e!77384 (Cons!2193 elmt!148 Nil!2193))))

(declare-fun d!31982 () Bool)

(declare-fun e!77383 () Bool)

(assert (=> d!31982 e!77383))

(declare-fun res!62462 () Bool)

(assert (=> d!31982 (=> (not res!62462) (not e!77383))))

(declare-fun lt!40336 () List!2199)

(declare-fun content!304 (List!2199) (Set B!791))

(assert (=> d!31982 (= res!62462 (= (content!304 lt!40336) (set.union (content!304 l!3288) (content!304 (Cons!2193 elmt!148 Nil!2193)))))))

(assert (=> d!31982 (= lt!40336 e!77384)))

(declare-fun c!28643 () Bool)

(assert (=> d!31982 (= c!28643 (is-Nil!2193 l!3288))))

(assert (=> d!31982 (= (++!467 l!3288 (Cons!2193 elmt!148 Nil!2193)) lt!40336)))

(declare-fun b!133644 () Bool)

(assert (=> b!133644 (= e!77384 (Cons!2193 (h!7590 l!3288) (++!467 (t!22785 l!3288) (Cons!2193 elmt!148 Nil!2193))))))

(declare-fun b!133645 () Bool)

(declare-fun res!62461 () Bool)

(assert (=> b!133645 (=> (not res!62461) (not e!77383))))

(assert (=> b!133645 (= res!62461 (= (size!1992 lt!40336) (+ (size!1992 l!3288) (size!1992 (Cons!2193 elmt!148 Nil!2193)))))))

(declare-fun b!133646 () Bool)

(assert (=> b!133646 (= e!77383 (or (not (= (Cons!2193 elmt!148 Nil!2193) Nil!2193)) (= lt!40336 l!3288)))))

(assert (= (and d!31982 c!28643) b!133643))

(assert (= (and d!31982 (not c!28643)) b!133644))

(assert (= (and d!31982 res!62462) b!133645))

(assert (= (and b!133645 res!62461) b!133646))

(declare-fun m!118643 () Bool)

(assert (=> d!31982 m!118643))

(declare-fun m!118645 () Bool)

(assert (=> d!31982 m!118645))

(declare-fun m!118647 () Bool)

(assert (=> d!31982 m!118647))

(declare-fun m!118649 () Bool)

(assert (=> b!133644 m!118649))

(declare-fun m!118651 () Bool)

(assert (=> b!133645 m!118651))

(declare-fun m!118653 () Bool)

(assert (=> b!133645 m!118653))

(declare-fun m!118655 () Bool)

(assert (=> b!133645 m!118655))

(assert (=> start!13900 d!31982))

(declare-fun b!133659 () Bool)

(declare-fun e!77393 () Bool)

(declare-fun tp!70567 () Bool)

(assert (=> b!133659 (= e!77393 (and tp_is_empty!1435 tp!70567))))

(assert (=> b!133613 (= tp!70558 e!77393)))

(assert (= (and b!133613 (is-Cons!2193 (t!22785 tot!41))) b!133659))

(declare-fun b!133660 () Bool)

(declare-fun e!77394 () Bool)

(declare-fun tp!70568 () Bool)

(assert (=> b!133660 (= e!77394 (and tp_is_empty!1435 tp!70568))))

(assert (=> b!133612 (= tp!70557 e!77394)))

(assert (= (and b!133612 (is-Cons!2193 (t!22785 l!3288))) b!133660))

(push 1)

(assert (not b!133632))

(assert (not b!133659))

(assert (not b!133634))

(assert (not d!31982))

(assert (not b!133645))

(assert (not b!133633))

(assert (not b!133644))

(assert tp_is_empty!1435)

(assert (not b!133660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

