; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187606 () Bool)

(assert start!187606)

(declare-fun b!1872646 () Bool)

(declare-fun res!838100 () Bool)

(declare-fun e!1194654 () Bool)

(assert (=> b!1872646 (=> (not res!838100) (not e!1194654))))

(declare-fun e!1194652 () Bool)

(assert (=> b!1872646 (= res!838100 e!1194652)))

(declare-fun res!838099 () Bool)

(assert (=> b!1872646 (=> res!838099 e!1194652)))

(declare-datatypes ((B!1653 0))(
  ( (B!1654 (val!6016 Int)) )
))
(declare-datatypes ((List!20833 0))(
  ( (Nil!20751) (Cons!20751 (h!26152 B!1653) (t!173050 List!20833)) )
))
(declare-fun l1!1293 () List!20833)

(get-info :version)

(assert (=> b!1872646 (= res!838099 (not ((_ is Cons!20751) l1!1293)))))

(declare-fun b!1872647 () Bool)

(declare-fun e!1194653 () Bool)

(declare-fun tp_is_empty!8811 () Bool)

(declare-fun tp!532548 () Bool)

(assert (=> b!1872647 (= e!1194653 (and tp_is_empty!8811 tp!532548))))

(declare-fun b!1872648 () Bool)

(declare-fun l2!1262 () List!20833)

(declare-fun tail!2879 (List!20833) List!20833)

(declare-fun ++!5634 (List!20833 List!20833) List!20833)

(assert (=> b!1872648 (= e!1194654 (not (= (tail!2879 (++!5634 l1!1293 l2!1262)) (++!5634 (tail!2879 l1!1293) l2!1262))))))

(declare-fun res!838101 () Bool)

(assert (=> start!187606 (=> (not res!838101) (not e!1194654))))

(declare-fun isEmpty!12957 (List!20833) Bool)

(assert (=> start!187606 (= res!838101 (not (isEmpty!12957 l1!1293)))))

(assert (=> start!187606 e!1194654))

(assert (=> start!187606 e!1194653))

(declare-fun e!1194655 () Bool)

(assert (=> start!187606 e!1194655))

(declare-fun b!1872649 () Bool)

(assert (=> b!1872649 (= e!1194652 (isEmpty!12957 (t!173050 l1!1293)))))

(declare-fun b!1872650 () Bool)

(declare-fun tp!532549 () Bool)

(assert (=> b!1872650 (= e!1194655 (and tp_is_empty!8811 tp!532549))))

(assert (= (and start!187606 res!838101) b!1872646))

(assert (= (and b!1872646 (not res!838099)) b!1872649))

(assert (= (and b!1872646 res!838100) b!1872648))

(assert (= (and start!187606 ((_ is Cons!20751) l1!1293)) b!1872647))

(assert (= (and start!187606 ((_ is Cons!20751) l2!1262)) b!1872650))

(declare-fun m!2298389 () Bool)

(assert (=> b!1872648 m!2298389))

(assert (=> b!1872648 m!2298389))

(declare-fun m!2298391 () Bool)

(assert (=> b!1872648 m!2298391))

(declare-fun m!2298393 () Bool)

(assert (=> b!1872648 m!2298393))

(assert (=> b!1872648 m!2298393))

(declare-fun m!2298395 () Bool)

(assert (=> b!1872648 m!2298395))

(declare-fun m!2298397 () Bool)

(assert (=> start!187606 m!2298397))

(declare-fun m!2298399 () Bool)

(assert (=> b!1872649 m!2298399))

(check-sat (not start!187606) (not b!1872647) (not b!1872648) (not b!1872649) (not b!1872650) tp_is_empty!8811)
(check-sat)
(get-model)

(declare-fun d!572521 () Bool)

(assert (=> d!572521 (= (tail!2879 (++!5634 l1!1293 l2!1262)) (t!173050 (++!5634 l1!1293 l2!1262)))))

(assert (=> b!1872648 d!572521))

(declare-fun lt!719716 () List!20833)

(declare-fun e!1194668 () Bool)

(declare-fun b!1872680 () Bool)

(assert (=> b!1872680 (= e!1194668 (or (not (= l2!1262 Nil!20751)) (= lt!719716 l1!1293)))))

(declare-fun d!572523 () Bool)

(assert (=> d!572523 e!1194668))

(declare-fun res!838114 () Bool)

(assert (=> d!572523 (=> (not res!838114) (not e!1194668))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3101 (List!20833) (InoxSet B!1653))

(assert (=> d!572523 (= res!838114 (= (content!3101 lt!719716) ((_ map or) (content!3101 l1!1293) (content!3101 l2!1262))))))

(declare-fun e!1194669 () List!20833)

(assert (=> d!572523 (= lt!719716 e!1194669)))

(declare-fun c!305292 () Bool)

(assert (=> d!572523 (= c!305292 ((_ is Nil!20751) l1!1293))))

(assert (=> d!572523 (= (++!5634 l1!1293 l2!1262) lt!719716)))

(declare-fun b!1872677 () Bool)

(assert (=> b!1872677 (= e!1194669 l2!1262)))

(declare-fun b!1872678 () Bool)

(assert (=> b!1872678 (= e!1194669 (Cons!20751 (h!26152 l1!1293) (++!5634 (t!173050 l1!1293) l2!1262)))))

(declare-fun b!1872679 () Bool)

(declare-fun res!838115 () Bool)

(assert (=> b!1872679 (=> (not res!838115) (not e!1194668))))

(declare-fun size!16476 (List!20833) Int)

(assert (=> b!1872679 (= res!838115 (= (size!16476 lt!719716) (+ (size!16476 l1!1293) (size!16476 l2!1262))))))

(assert (= (and d!572523 c!305292) b!1872677))

(assert (= (and d!572523 (not c!305292)) b!1872678))

(assert (= (and d!572523 res!838114) b!1872679))

(assert (= (and b!1872679 res!838115) b!1872680))

(declare-fun m!2298425 () Bool)

(assert (=> d!572523 m!2298425))

(declare-fun m!2298427 () Bool)

(assert (=> d!572523 m!2298427))

(declare-fun m!2298429 () Bool)

(assert (=> d!572523 m!2298429))

(declare-fun m!2298431 () Bool)

(assert (=> b!1872678 m!2298431))

(declare-fun m!2298433 () Bool)

(assert (=> b!1872679 m!2298433))

(declare-fun m!2298435 () Bool)

(assert (=> b!1872679 m!2298435))

(declare-fun m!2298437 () Bool)

(assert (=> b!1872679 m!2298437))

(assert (=> b!1872648 d!572523))

(declare-fun e!1194674 () Bool)

(declare-fun b!1872688 () Bool)

(declare-fun lt!719717 () List!20833)

(assert (=> b!1872688 (= e!1194674 (or (not (= l2!1262 Nil!20751)) (= lt!719717 (tail!2879 l1!1293))))))

(declare-fun d!572531 () Bool)

(assert (=> d!572531 e!1194674))

(declare-fun res!838116 () Bool)

(assert (=> d!572531 (=> (not res!838116) (not e!1194674))))

(assert (=> d!572531 (= res!838116 (= (content!3101 lt!719717) ((_ map or) (content!3101 (tail!2879 l1!1293)) (content!3101 l2!1262))))))

(declare-fun e!1194675 () List!20833)

(assert (=> d!572531 (= lt!719717 e!1194675)))

(declare-fun c!305293 () Bool)

(assert (=> d!572531 (= c!305293 ((_ is Nil!20751) (tail!2879 l1!1293)))))

(assert (=> d!572531 (= (++!5634 (tail!2879 l1!1293) l2!1262) lt!719717)))

(declare-fun b!1872685 () Bool)

(assert (=> b!1872685 (= e!1194675 l2!1262)))

(declare-fun b!1872686 () Bool)

(assert (=> b!1872686 (= e!1194675 (Cons!20751 (h!26152 (tail!2879 l1!1293)) (++!5634 (t!173050 (tail!2879 l1!1293)) l2!1262)))))

(declare-fun b!1872687 () Bool)

(declare-fun res!838117 () Bool)

(assert (=> b!1872687 (=> (not res!838117) (not e!1194674))))

(assert (=> b!1872687 (= res!838117 (= (size!16476 lt!719717) (+ (size!16476 (tail!2879 l1!1293)) (size!16476 l2!1262))))))

(assert (= (and d!572531 c!305293) b!1872685))

(assert (= (and d!572531 (not c!305293)) b!1872686))

(assert (= (and d!572531 res!838116) b!1872687))

(assert (= (and b!1872687 res!838117) b!1872688))

(declare-fun m!2298439 () Bool)

(assert (=> d!572531 m!2298439))

(assert (=> d!572531 m!2298393))

(declare-fun m!2298441 () Bool)

(assert (=> d!572531 m!2298441))

(assert (=> d!572531 m!2298429))

(declare-fun m!2298443 () Bool)

(assert (=> b!1872686 m!2298443))

(declare-fun m!2298445 () Bool)

(assert (=> b!1872687 m!2298445))

(assert (=> b!1872687 m!2298393))

(declare-fun m!2298447 () Bool)

(assert (=> b!1872687 m!2298447))

(assert (=> b!1872687 m!2298437))

(assert (=> b!1872648 d!572531))

(declare-fun d!572533 () Bool)

(assert (=> d!572533 (= (tail!2879 l1!1293) (t!173050 l1!1293))))

(assert (=> b!1872648 d!572533))

(declare-fun d!572535 () Bool)

(assert (=> d!572535 (= (isEmpty!12957 l1!1293) ((_ is Nil!20751) l1!1293))))

(assert (=> start!187606 d!572535))

(declare-fun d!572537 () Bool)

(assert (=> d!572537 (= (isEmpty!12957 (t!173050 l1!1293)) ((_ is Nil!20751) (t!173050 l1!1293)))))

(assert (=> b!1872649 d!572537))

(declare-fun b!1872693 () Bool)

(declare-fun e!1194678 () Bool)

(declare-fun tp!532556 () Bool)

(assert (=> b!1872693 (= e!1194678 (and tp_is_empty!8811 tp!532556))))

(assert (=> b!1872647 (= tp!532548 e!1194678)))

(assert (= (and b!1872647 ((_ is Cons!20751) (t!173050 l1!1293))) b!1872693))

(declare-fun b!1872694 () Bool)

(declare-fun e!1194679 () Bool)

(declare-fun tp!532557 () Bool)

(assert (=> b!1872694 (= e!1194679 (and tp_is_empty!8811 tp!532557))))

(assert (=> b!1872650 (= tp!532549 e!1194679)))

(assert (= (and b!1872650 ((_ is Cons!20751) (t!173050 l2!1262))) b!1872694))

(check-sat (not d!572531) (not b!1872693) (not b!1872678) (not b!1872686) (not b!1872679) (not b!1872694) (not b!1872687) (not d!572523) tp_is_empty!8811)
(check-sat)
