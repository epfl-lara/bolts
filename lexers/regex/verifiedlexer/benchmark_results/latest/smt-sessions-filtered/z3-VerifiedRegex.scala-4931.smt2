; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251568 () Bool)

(assert start!251568)

(declare-fun b!2594544 () Bool)

(assert (=> b!2594544 true))

(declare-fun b!2594545 () Bool)

(declare-fun m!2930559 () Bool)

(assert (=> b!2594545 m!2930559))

(declare-fun bs!472616 () Bool)

(assert (= bs!472616 (and b!2594545 b!2594544)))

(declare-datatypes ((B!2145 0))(
  ( (B!2146 (val!9540 Int)) )
))
(declare-datatypes ((List!29973 0))(
  ( (Nil!29873) (Cons!29873 (h!35293 B!2145) (t!212986 List!29973)) )
))
(declare-fun l1!1546 () List!29973)

(declare-fun lambda!96576 () Int)

(declare-fun lambda!96575 () Int)

(declare-fun tail!4141 (List!29973) List!29973)

(assert (=> bs!472616 (= (= (tail!4141 l1!1546) l1!1546) (= lambda!96576 lambda!96575))))

(assert (=> b!2594545 true))

(declare-fun lambda!96577 () Int)

(assert (=> bs!472616 (= (= (t!212986 l1!1546) l1!1546) (= lambda!96577 lambda!96575))))

(assert (=> b!2594545 (= (= (t!212986 l1!1546) (tail!4141 l1!1546)) (= lambda!96577 lambda!96576))))

(assert (=> b!2594545 true))

(declare-fun bs!472617 () Bool)

(declare-fun b!2594549 () Bool)

(assert (= bs!472617 (and b!2594549 b!2594544)))

(declare-fun lambda!96578 () Int)

(assert (=> bs!472617 (not (= lambda!96578 lambda!96575))))

(declare-fun bs!472618 () Bool)

(assert (= bs!472618 (and b!2594549 b!2594545)))

(assert (=> bs!472618 (not (= lambda!96578 lambda!96576))))

(assert (=> bs!472618 (not (= lambda!96578 lambda!96577))))

(assert (=> b!2594549 true))

(declare-fun b!2594541 () Bool)

(declare-fun e!1637001 () Bool)

(declare-fun exists!926 (List!29973 Int) Bool)

(assert (=> b!2594541 (= e!1637001 (exists!926 (t!212986 l1!1546) lambda!96578))))

(declare-fun b!2594542 () Bool)

(declare-fun res!1091643 () Bool)

(declare-fun e!1636999 () Bool)

(assert (=> b!2594542 (=> (not res!1091643) (not e!1636999))))

(declare-fun l2!1515 () List!29973)

(declare-fun contains!5421 (List!29973 B!2145) Bool)

(assert (=> b!2594542 (= res!1091643 (contains!5421 l2!1515 (h!35293 l1!1546)))))

(declare-fun b!2594543 () Bool)

(declare-fun e!1637000 () Bool)

(declare-fun tp_is_empty!13425 () Bool)

(declare-fun tp!823011 () Bool)

(assert (=> b!2594543 (= e!1637000 (and tp_is_empty!13425 tp!823011))))

(declare-fun res!1091644 () Bool)

(assert (=> b!2594544 (=> (not res!1091644) (not e!1636999))))

(declare-fun forall!6110 (List!29973 Int) Bool)

(assert (=> b!2594544 (= res!1091644 (forall!6110 l2!1515 lambda!96575))))

(declare-fun e!1637004 () Bool)

(declare-fun e!1637003 () Bool)

(assert (=> b!2594545 (= e!1637004 e!1637003)))

(declare-fun res!1091649 () Bool)

(assert (=> b!2594545 (=> res!1091649 e!1637003)))

(declare-fun lt!913452 () List!29973)

(assert (=> b!2594545 (= res!1091649 (not (forall!6110 lt!913452 lambda!96577)))))

(assert (=> b!2594545 (forall!6110 lt!913452 lambda!96576)))

(declare-datatypes ((Unit!43900 0))(
  ( (Unit!43901) )
))
(declare-fun lt!913456 () Unit!43900)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!6 (List!29973 List!29973 B!2145) Unit!43900)

(assert (=> b!2594545 (= lt!913456 (lemmaForallContainsThenForTailIfContainsNotHead!6 lt!913452 l1!1546 (h!35293 l1!1546)))))

(declare-fun b!2594546 () Bool)

(declare-fun e!1637005 () Bool)

(assert (=> b!2594546 (= e!1637005 e!1636999)))

(declare-fun res!1091650 () Bool)

(assert (=> b!2594546 (=> (not res!1091650) (not e!1636999))))

(declare-fun lt!913455 () Int)

(declare-fun lt!913450 () Int)

(assert (=> b!2594546 (= res!1091650 (> lt!913455 lt!913450))))

(declare-fun size!23178 (List!29973) Int)

(assert (=> b!2594546 (= lt!913450 (size!23178 l2!1515))))

(assert (=> b!2594546 (= lt!913455 (size!23178 l1!1546))))

(declare-fun b!2594548 () Bool)

(assert (=> b!2594548 (= e!1636999 (not e!1637004))))

(declare-fun res!1091646 () Bool)

(assert (=> b!2594548 (=> res!1091646 e!1637004)))

(assert (=> b!2594548 (= res!1091646 (not (forall!6110 lt!913452 lambda!96575)))))

(assert (=> b!2594548 (= (size!23178 lt!913452) (- lt!913450 1))))

(declare-fun lt!913454 () Unit!43900)

(declare-fun lemmaRemoveElmtNoDuplicateRemoveOne!12 (List!29973 B!2145) Unit!43900)

(assert (=> b!2594548 (= lt!913454 (lemmaRemoveElmtNoDuplicateRemoveOne!12 l2!1515 (h!35293 l1!1546)))))

(assert (=> b!2594548 (forall!6110 lt!913452 lambda!96575)))

(declare-fun lt!913451 () Unit!43900)

(declare-fun lemmaRemoveElmtMaintainsForall!14 (List!29973 B!2145 Int) Unit!43900)

(assert (=> b!2594548 (= lt!913451 (lemmaRemoveElmtMaintainsForall!14 l2!1515 (h!35293 l1!1546) lambda!96575))))

(declare-fun noDuplicate!421 (List!29973) Bool)

(assert (=> b!2594548 (noDuplicate!421 lt!913452)))

(declare-fun -!150 (List!29973 B!2145) List!29973)

(assert (=> b!2594548 (= lt!913452 (-!150 l2!1515 (h!35293 l1!1546)))))

(declare-fun lt!913453 () Unit!43900)

(declare-fun lemmaRemoveElmtMaintainsNoDuplicate!16 (List!29973 B!2145) Unit!43900)

(assert (=> b!2594548 (= lt!913453 (lemmaRemoveElmtMaintainsNoDuplicate!16 l2!1515 (h!35293 l1!1546)))))

(assert (=> b!2594549 (= e!1637003 e!1637001)))

(declare-fun res!1091651 () Bool)

(assert (=> b!2594549 (=> res!1091651 e!1637001)))

(assert (=> b!2594549 (= res!1091651 (not (exists!926 (t!212986 l1!1546) lambda!96578)))))

(assert (=> b!2594549 (exists!926 (t!212986 l1!1546) lambda!96578)))

(declare-fun lt!913457 () Unit!43900)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!42 (List!29973 List!29973) Unit!43900)

(assert (=> b!2594549 (= lt!913457 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!42 (t!212986 l1!1546) lt!913452))))

(declare-fun b!2594550 () Bool)

(declare-fun e!1637002 () Bool)

(declare-fun tp!823012 () Bool)

(assert (=> b!2594550 (= e!1637002 (and tp_is_empty!13425 tp!823012))))

(declare-fun b!2594551 () Bool)

(declare-fun res!1091647 () Bool)

(assert (=> b!2594551 (=> (not res!1091647) (not e!1637005))))

(assert (=> b!2594551 (= res!1091647 (noDuplicate!421 l2!1515))))

(declare-fun res!1091645 () Bool)

(assert (=> start!251568 (=> (not res!1091645) (not e!1637005))))

(assert (=> start!251568 (= res!1091645 (noDuplicate!421 l1!1546))))

(assert (=> start!251568 e!1637005))

(assert (=> start!251568 e!1637000))

(assert (=> start!251568 e!1637002))

(declare-fun b!2594547 () Bool)

(declare-fun res!1091648 () Bool)

(assert (=> b!2594547 (=> (not res!1091648) (not e!1636999))))

(get-info :version)

(assert (=> b!2594547 (= res!1091648 ((_ is Cons!29873) l1!1546))))

(assert (= (and start!251568 res!1091645) b!2594551))

(assert (= (and b!2594551 res!1091647) b!2594546))

(assert (= (and b!2594546 res!1091650) b!2594544))

(assert (= (and b!2594544 res!1091644) b!2594547))

(assert (= (and b!2594547 res!1091648) b!2594542))

(assert (= (and b!2594542 res!1091643) b!2594548))

(assert (= (and b!2594548 (not res!1091646)) b!2594545))

(assert (= (and b!2594545 (not res!1091649)) b!2594549))

(assert (= (and b!2594549 (not res!1091651)) b!2594541))

(assert (= (and start!251568 ((_ is Cons!29873) l1!1546)) b!2594543))

(assert (= (and start!251568 ((_ is Cons!29873) l2!1515)) b!2594550))

(declare-fun m!2930561 () Bool)

(assert (=> b!2594545 m!2930561))

(declare-fun m!2930563 () Bool)

(assert (=> b!2594545 m!2930563))

(declare-fun m!2930565 () Bool)

(assert (=> b!2594545 m!2930565))

(declare-fun m!2930567 () Bool)

(assert (=> b!2594549 m!2930567))

(assert (=> b!2594549 m!2930567))

(declare-fun m!2930569 () Bool)

(assert (=> b!2594549 m!2930569))

(declare-fun m!2930571 () Bool)

(assert (=> b!2594546 m!2930571))

(declare-fun m!2930573 () Bool)

(assert (=> b!2594546 m!2930573))

(declare-fun m!2930575 () Bool)

(assert (=> b!2594551 m!2930575))

(declare-fun m!2930577 () Bool)

(assert (=> b!2594548 m!2930577))

(assert (=> b!2594548 m!2930577))

(declare-fun m!2930579 () Bool)

(assert (=> b!2594548 m!2930579))

(declare-fun m!2930581 () Bool)

(assert (=> b!2594548 m!2930581))

(declare-fun m!2930583 () Bool)

(assert (=> b!2594548 m!2930583))

(declare-fun m!2930585 () Bool)

(assert (=> b!2594548 m!2930585))

(declare-fun m!2930587 () Bool)

(assert (=> b!2594548 m!2930587))

(declare-fun m!2930589 () Bool)

(assert (=> b!2594548 m!2930589))

(declare-fun m!2930591 () Bool)

(assert (=> start!251568 m!2930591))

(declare-fun m!2930593 () Bool)

(assert (=> b!2594544 m!2930593))

(declare-fun m!2930595 () Bool)

(assert (=> b!2594542 m!2930595))

(assert (=> b!2594541 m!2930567))

(check-sat (not b!2594551) (not b!2594549) (not start!251568) (not b!2594542) (not b!2594546) (not b!2594548) (not b!2594541) (not b!2594543) (not b!2594550) tp_is_empty!13425 (not b!2594544) (not b!2594545))
(check-sat)
