; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486184 () Bool)

(assert start!486184)

(declare-fun b!4755635 () Bool)

(declare-fun res!2017519 () Bool)

(declare-fun e!2966764 () Bool)

(assert (=> b!4755635 (=> (not res!2017519) (not e!2966764))))

(declare-datatypes ((K!14690 0))(
  ( (K!14691 (val!20023 Int)) )
))
(declare-datatypes ((V!14936 0))(
  ( (V!14937 (val!20024 Int)) )
))
(declare-datatypes ((tuple2!54992 0))(
  ( (tuple2!54993 (_1!30790 K!14690) (_2!30790 V!14936)) )
))
(declare-datatypes ((List!53280 0))(
  ( (Nil!53156) (Cons!53156 (h!59553 tuple2!54992) (t!360624 List!53280)) )
))
(declare-datatypes ((ListMap!5677 0))(
  ( (ListMap!5678 (toList!6184 List!53280)) )
))
(declare-fun lhm1!51 () ListMap!5677)

(declare-fun lhm2!51 () ListMap!5677)

(declare-fun eq!1279 (ListMap!5677 ListMap!5677) Bool)

(assert (=> b!4755635 (= res!2017519 (eq!1279 lhm1!51 lhm2!51))))

(declare-fun b!4755636 () Bool)

(declare-fun e!2966765 () Bool)

(assert (=> b!4755636 (= e!2966764 (not e!2966765))))

(declare-fun res!2017518 () Bool)

(assert (=> b!4755636 (=> res!2017518 e!2966765)))

(declare-fun l!13115 () List!53280)

(declare-fun noDuplicateKeys!2216 (List!53280) Bool)

(assert (=> b!4755636 (= res!2017518 (not (noDuplicateKeys!2216 (t!360624 l!13115))))))

(declare-fun lt!1922419 () ListMap!5677)

(declare-fun lt!1922421 () ListMap!5677)

(assert (=> b!4755636 (eq!1279 lt!1922419 lt!1922421)))

(declare-datatypes ((Unit!137558 0))(
  ( (Unit!137559) )
))
(declare-fun lt!1922420 () Unit!137558)

(declare-fun lemmaAddToEqMapsPreservesEq!128 (ListMap!5677 ListMap!5677 K!14690 V!14936) Unit!137558)

(assert (=> b!4755636 (= lt!1922420 (lemmaAddToEqMapsPreservesEq!128 lhm1!51 lhm2!51 (_1!30790 (h!59553 l!13115)) (_2!30790 (h!59553 l!13115))))))

(declare-fun +!2444 (ListMap!5677 tuple2!54992) ListMap!5677)

(assert (=> b!4755636 (= lt!1922421 (+!2444 lhm2!51 (h!59553 l!13115)))))

(assert (=> b!4755636 (= lt!1922419 (+!2444 lhm1!51 (h!59553 l!13115)))))

(declare-fun res!2017516 () Bool)

(assert (=> start!486184 (=> (not res!2017516) (not e!2966764))))

(assert (=> start!486184 (= res!2017516 (noDuplicateKeys!2216 l!13115))))

(assert (=> start!486184 e!2966764))

(declare-fun e!2966767 () Bool)

(assert (=> start!486184 e!2966767))

(declare-fun e!2966768 () Bool)

(declare-fun inv!68560 (ListMap!5677) Bool)

(assert (=> start!486184 (and (inv!68560 lhm1!51) e!2966768)))

(declare-fun e!2966766 () Bool)

(assert (=> start!486184 (and (inv!68560 lhm2!51) e!2966766)))

(declare-fun b!4755637 () Bool)

(declare-fun tp!1350804 () Bool)

(assert (=> b!4755637 (= e!2966768 tp!1350804)))

(declare-fun b!4755638 () Bool)

(declare-fun ListPrimitiveSize!343 (List!53280) Int)

(assert (=> b!4755638 (= e!2966765 (< (ListPrimitiveSize!343 (t!360624 l!13115)) (ListPrimitiveSize!343 l!13115)))))

(declare-fun tp_is_empty!32157 () Bool)

(declare-fun tp_is_empty!32159 () Bool)

(declare-fun b!4755639 () Bool)

(declare-fun tp!1350805 () Bool)

(assert (=> b!4755639 (= e!2966767 (and tp_is_empty!32157 tp_is_empty!32159 tp!1350805))))

(declare-fun b!4755640 () Bool)

(declare-fun tp!1350803 () Bool)

(assert (=> b!4755640 (= e!2966766 tp!1350803)))

(declare-fun b!4755641 () Bool)

(declare-fun res!2017517 () Bool)

(assert (=> b!4755641 (=> (not res!2017517) (not e!2966764))))

(get-info :version)

(assert (=> b!4755641 (= res!2017517 ((_ is Cons!53156) l!13115))))

(assert (= (and start!486184 res!2017516) b!4755635))

(assert (= (and b!4755635 res!2017519) b!4755641))

(assert (= (and b!4755641 res!2017517) b!4755636))

(assert (= (and b!4755636 (not res!2017518)) b!4755638))

(assert (= (and start!486184 ((_ is Cons!53156) l!13115)) b!4755639))

(assert (= start!486184 b!4755637))

(assert (= start!486184 b!4755640))

(declare-fun m!5725475 () Bool)

(assert (=> b!4755635 m!5725475))

(declare-fun m!5725477 () Bool)

(assert (=> b!4755636 m!5725477))

(declare-fun m!5725479 () Bool)

(assert (=> b!4755636 m!5725479))

(declare-fun m!5725481 () Bool)

(assert (=> b!4755636 m!5725481))

(declare-fun m!5725483 () Bool)

(assert (=> b!4755636 m!5725483))

(declare-fun m!5725485 () Bool)

(assert (=> b!4755636 m!5725485))

(declare-fun m!5725487 () Bool)

(assert (=> start!486184 m!5725487))

(declare-fun m!5725489 () Bool)

(assert (=> start!486184 m!5725489))

(declare-fun m!5725491 () Bool)

(assert (=> start!486184 m!5725491))

(declare-fun m!5725493 () Bool)

(assert (=> b!4755638 m!5725493))

(declare-fun m!5725495 () Bool)

(assert (=> b!4755638 m!5725495))

(check-sat (not b!4755640) tp_is_empty!32157 (not b!4755638) (not start!486184) (not b!4755637) (not b!4755635) (not b!4755639) tp_is_empty!32159 (not b!4755636))
(check-sat)
(get-model)

(declare-fun d!1520640 () Bool)

(declare-fun lt!1922424 () Int)

(assert (=> d!1520640 (>= lt!1922424 0)))

(declare-fun e!2966777 () Int)

(assert (=> d!1520640 (= lt!1922424 e!2966777)))

(declare-fun c!811662 () Bool)

(assert (=> d!1520640 (= c!811662 ((_ is Nil!53156) (t!360624 l!13115)))))

(assert (=> d!1520640 (= (ListPrimitiveSize!343 (t!360624 l!13115)) lt!1922424)))

(declare-fun b!4755652 () Bool)

(assert (=> b!4755652 (= e!2966777 0)))

(declare-fun b!4755653 () Bool)

(assert (=> b!4755653 (= e!2966777 (+ 1 (ListPrimitiveSize!343 (t!360624 (t!360624 l!13115)))))))

(assert (= (and d!1520640 c!811662) b!4755652))

(assert (= (and d!1520640 (not c!811662)) b!4755653))

(declare-fun m!5725503 () Bool)

(assert (=> b!4755653 m!5725503))

(assert (=> b!4755638 d!1520640))

(declare-fun d!1520648 () Bool)

(declare-fun lt!1922425 () Int)

(assert (=> d!1520648 (>= lt!1922425 0)))

(declare-fun e!2966778 () Int)

(assert (=> d!1520648 (= lt!1922425 e!2966778)))

(declare-fun c!811663 () Bool)

(assert (=> d!1520648 (= c!811663 ((_ is Nil!53156) l!13115))))

(assert (=> d!1520648 (= (ListPrimitiveSize!343 l!13115) lt!1922425)))

(declare-fun b!4755654 () Bool)

(assert (=> b!4755654 (= e!2966778 0)))

(declare-fun b!4755655 () Bool)

(assert (=> b!4755655 (= e!2966778 (+ 1 (ListPrimitiveSize!343 (t!360624 l!13115))))))

(assert (= (and d!1520648 c!811663) b!4755654))

(assert (= (and d!1520648 (not c!811663)) b!4755655))

(assert (=> b!4755655 m!5725493))

(assert (=> b!4755638 d!1520648))

(declare-fun d!1520650 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9564 (List!53280) (InoxSet tuple2!54992))

(assert (=> d!1520650 (= (eq!1279 lhm1!51 lhm2!51) (= (content!9564 (toList!6184 lhm1!51)) (content!9564 (toList!6184 lhm2!51))))))

(declare-fun bs!1146691 () Bool)

(assert (= bs!1146691 d!1520650))

(declare-fun m!5725509 () Bool)

(assert (=> bs!1146691 m!5725509))

(declare-fun m!5725511 () Bool)

(assert (=> bs!1146691 m!5725511))

(assert (=> b!4755635 d!1520650))

(declare-fun d!1520654 () Bool)

(declare-fun res!2017530 () Bool)

(declare-fun e!2966787 () Bool)

(assert (=> d!1520654 (=> res!2017530 e!2966787)))

(assert (=> d!1520654 (= res!2017530 (not ((_ is Cons!53156) l!13115)))))

(assert (=> d!1520654 (= (noDuplicateKeys!2216 l!13115) e!2966787)))

(declare-fun b!4755668 () Bool)

(declare-fun e!2966788 () Bool)

(assert (=> b!4755668 (= e!2966787 e!2966788)))

(declare-fun res!2017531 () Bool)

(assert (=> b!4755668 (=> (not res!2017531) (not e!2966788))))

(declare-fun containsKey!3608 (List!53280 K!14690) Bool)

(assert (=> b!4755668 (= res!2017531 (not (containsKey!3608 (t!360624 l!13115) (_1!30790 (h!59553 l!13115)))))))

(declare-fun b!4755669 () Bool)

(assert (=> b!4755669 (= e!2966788 (noDuplicateKeys!2216 (t!360624 l!13115)))))

(assert (= (and d!1520654 (not res!2017530)) b!4755668))

(assert (= (and b!4755668 res!2017531) b!4755669))

(declare-fun m!5725515 () Bool)

(assert (=> b!4755668 m!5725515))

(assert (=> b!4755669 m!5725483))

(assert (=> start!486184 d!1520654))

(declare-fun d!1520660 () Bool)

(declare-fun invariantList!1629 (List!53280) Bool)

(assert (=> d!1520660 (= (inv!68560 lhm1!51) (invariantList!1629 (toList!6184 lhm1!51)))))

(declare-fun bs!1146692 () Bool)

(assert (= bs!1146692 d!1520660))

(declare-fun m!5725517 () Bool)

(assert (=> bs!1146692 m!5725517))

(assert (=> start!486184 d!1520660))

(declare-fun d!1520662 () Bool)

(assert (=> d!1520662 (= (inv!68560 lhm2!51) (invariantList!1629 (toList!6184 lhm2!51)))))

(declare-fun bs!1146693 () Bool)

(assert (= bs!1146693 d!1520662))

(declare-fun m!5725519 () Bool)

(assert (=> bs!1146693 m!5725519))

(assert (=> start!486184 d!1520662))

(declare-fun d!1520664 () Bool)

(assert (=> d!1520664 (eq!1279 (+!2444 lhm1!51 (tuple2!54993 (_1!30790 (h!59553 l!13115)) (_2!30790 (h!59553 l!13115)))) (+!2444 lhm2!51 (tuple2!54993 (_1!30790 (h!59553 l!13115)) (_2!30790 (h!59553 l!13115)))))))

(declare-fun lt!1922435 () Unit!137558)

(declare-fun choose!33888 (ListMap!5677 ListMap!5677 K!14690 V!14936) Unit!137558)

(assert (=> d!1520664 (= lt!1922435 (choose!33888 lhm1!51 lhm2!51 (_1!30790 (h!59553 l!13115)) (_2!30790 (h!59553 l!13115))))))

(assert (=> d!1520664 (eq!1279 lhm1!51 lhm2!51)))

(assert (=> d!1520664 (= (lemmaAddToEqMapsPreservesEq!128 lhm1!51 lhm2!51 (_1!30790 (h!59553 l!13115)) (_2!30790 (h!59553 l!13115))) lt!1922435)))

(declare-fun bs!1146695 () Bool)

(assert (= bs!1146695 d!1520664))

(declare-fun m!5725529 () Bool)

(assert (=> bs!1146695 m!5725529))

(declare-fun m!5725531 () Bool)

(assert (=> bs!1146695 m!5725531))

(declare-fun m!5725533 () Bool)

(assert (=> bs!1146695 m!5725533))

(assert (=> bs!1146695 m!5725529))

(assert (=> bs!1146695 m!5725475))

(declare-fun m!5725535 () Bool)

(assert (=> bs!1146695 m!5725535))

(assert (=> bs!1146695 m!5725531))

(assert (=> b!4755636 d!1520664))

(declare-fun d!1520668 () Bool)

(declare-fun e!2966801 () Bool)

(assert (=> d!1520668 e!2966801))

(declare-fun res!2017547 () Bool)

(assert (=> d!1520668 (=> (not res!2017547) (not e!2966801))))

(declare-fun lt!1922462 () ListMap!5677)

(declare-fun contains!16579 (ListMap!5677 K!14690) Bool)

(assert (=> d!1520668 (= res!2017547 (contains!16579 lt!1922462 (_1!30790 (h!59553 l!13115))))))

(declare-fun lt!1922463 () List!53280)

(assert (=> d!1520668 (= lt!1922462 (ListMap!5678 lt!1922463))))

(declare-fun lt!1922461 () Unit!137558)

(declare-fun lt!1922460 () Unit!137558)

(assert (=> d!1520668 (= lt!1922461 lt!1922460)))

(declare-datatypes ((Option!12565 0))(
  ( (None!12564) (Some!12564 (v!47265 V!14936)) )
))
(declare-fun getValueByKey!2115 (List!53280 K!14690) Option!12565)

(assert (=> d!1520668 (= (getValueByKey!2115 lt!1922463 (_1!30790 (h!59553 l!13115))) (Some!12564 (_2!30790 (h!59553 l!13115))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1191 (List!53280 K!14690 V!14936) Unit!137558)

(assert (=> d!1520668 (= lt!1922460 (lemmaContainsTupThenGetReturnValue!1191 lt!1922463 (_1!30790 (h!59553 l!13115)) (_2!30790 (h!59553 l!13115))))))

(declare-fun insertNoDuplicatedKeys!699 (List!53280 K!14690 V!14936) List!53280)

(assert (=> d!1520668 (= lt!1922463 (insertNoDuplicatedKeys!699 (toList!6184 lhm2!51) (_1!30790 (h!59553 l!13115)) (_2!30790 (h!59553 l!13115))))))

(assert (=> d!1520668 (= (+!2444 lhm2!51 (h!59553 l!13115)) lt!1922462)))

(declare-fun b!4755690 () Bool)

(declare-fun res!2017546 () Bool)

(assert (=> b!4755690 (=> (not res!2017546) (not e!2966801))))

(assert (=> b!4755690 (= res!2017546 (= (getValueByKey!2115 (toList!6184 lt!1922462) (_1!30790 (h!59553 l!13115))) (Some!12564 (_2!30790 (h!59553 l!13115)))))))

(declare-fun b!4755691 () Bool)

(declare-fun contains!16580 (List!53280 tuple2!54992) Bool)

(assert (=> b!4755691 (= e!2966801 (contains!16580 (toList!6184 lt!1922462) (h!59553 l!13115)))))

(assert (= (and d!1520668 res!2017547) b!4755690))

(assert (= (and b!4755690 res!2017546) b!4755691))

(declare-fun m!5725569 () Bool)

(assert (=> d!1520668 m!5725569))

(declare-fun m!5725571 () Bool)

(assert (=> d!1520668 m!5725571))

(declare-fun m!5725573 () Bool)

(assert (=> d!1520668 m!5725573))

(declare-fun m!5725575 () Bool)

(assert (=> d!1520668 m!5725575))

(declare-fun m!5725577 () Bool)

(assert (=> b!4755690 m!5725577))

(declare-fun m!5725579 () Bool)

(assert (=> b!4755691 m!5725579))

(assert (=> b!4755636 d!1520668))

(declare-fun d!1520676 () Bool)

(assert (=> d!1520676 (= (eq!1279 lt!1922419 lt!1922421) (= (content!9564 (toList!6184 lt!1922419)) (content!9564 (toList!6184 lt!1922421))))))

(declare-fun bs!1146697 () Bool)

(assert (= bs!1146697 d!1520676))

(declare-fun m!5725581 () Bool)

(assert (=> bs!1146697 m!5725581))

(declare-fun m!5725583 () Bool)

(assert (=> bs!1146697 m!5725583))

(assert (=> b!4755636 d!1520676))

(declare-fun d!1520678 () Bool)

(declare-fun e!2966803 () Bool)

(assert (=> d!1520678 e!2966803))

(declare-fun res!2017549 () Bool)

(assert (=> d!1520678 (=> (not res!2017549) (not e!2966803))))

(declare-fun lt!1922466 () ListMap!5677)

(assert (=> d!1520678 (= res!2017549 (contains!16579 lt!1922466 (_1!30790 (h!59553 l!13115))))))

(declare-fun lt!1922467 () List!53280)

(assert (=> d!1520678 (= lt!1922466 (ListMap!5678 lt!1922467))))

(declare-fun lt!1922465 () Unit!137558)

(declare-fun lt!1922464 () Unit!137558)

(assert (=> d!1520678 (= lt!1922465 lt!1922464)))

(assert (=> d!1520678 (= (getValueByKey!2115 lt!1922467 (_1!30790 (h!59553 l!13115))) (Some!12564 (_2!30790 (h!59553 l!13115))))))

(assert (=> d!1520678 (= lt!1922464 (lemmaContainsTupThenGetReturnValue!1191 lt!1922467 (_1!30790 (h!59553 l!13115)) (_2!30790 (h!59553 l!13115))))))

(assert (=> d!1520678 (= lt!1922467 (insertNoDuplicatedKeys!699 (toList!6184 lhm1!51) (_1!30790 (h!59553 l!13115)) (_2!30790 (h!59553 l!13115))))))

(assert (=> d!1520678 (= (+!2444 lhm1!51 (h!59553 l!13115)) lt!1922466)))

(declare-fun b!4755693 () Bool)

(declare-fun res!2017548 () Bool)

(assert (=> b!4755693 (=> (not res!2017548) (not e!2966803))))

(assert (=> b!4755693 (= res!2017548 (= (getValueByKey!2115 (toList!6184 lt!1922466) (_1!30790 (h!59553 l!13115))) (Some!12564 (_2!30790 (h!59553 l!13115)))))))

(declare-fun b!4755694 () Bool)

(assert (=> b!4755694 (= e!2966803 (contains!16580 (toList!6184 lt!1922466) (h!59553 l!13115)))))

(assert (= (and d!1520678 res!2017549) b!4755693))

(assert (= (and b!4755693 res!2017548) b!4755694))

(declare-fun m!5725585 () Bool)

(assert (=> d!1520678 m!5725585))

(declare-fun m!5725587 () Bool)

(assert (=> d!1520678 m!5725587))

(declare-fun m!5725589 () Bool)

(assert (=> d!1520678 m!5725589))

(declare-fun m!5725591 () Bool)

(assert (=> d!1520678 m!5725591))

(declare-fun m!5725593 () Bool)

(assert (=> b!4755693 m!5725593))

(declare-fun m!5725595 () Bool)

(assert (=> b!4755694 m!5725595))

(assert (=> b!4755636 d!1520678))

(declare-fun d!1520680 () Bool)

(declare-fun res!2017550 () Bool)

(declare-fun e!2966804 () Bool)

(assert (=> d!1520680 (=> res!2017550 e!2966804)))

(assert (=> d!1520680 (= res!2017550 (not ((_ is Cons!53156) (t!360624 l!13115))))))

(assert (=> d!1520680 (= (noDuplicateKeys!2216 (t!360624 l!13115)) e!2966804)))

(declare-fun b!4755695 () Bool)

(declare-fun e!2966805 () Bool)

(assert (=> b!4755695 (= e!2966804 e!2966805)))

(declare-fun res!2017551 () Bool)

(assert (=> b!4755695 (=> (not res!2017551) (not e!2966805))))

(assert (=> b!4755695 (= res!2017551 (not (containsKey!3608 (t!360624 (t!360624 l!13115)) (_1!30790 (h!59553 (t!360624 l!13115))))))))

(declare-fun b!4755696 () Bool)

(assert (=> b!4755696 (= e!2966805 (noDuplicateKeys!2216 (t!360624 (t!360624 l!13115))))))

(assert (= (and d!1520680 (not res!2017550)) b!4755695))

(assert (= (and b!4755695 res!2017551) b!4755696))

(declare-fun m!5725597 () Bool)

(assert (=> b!4755695 m!5725597))

(declare-fun m!5725599 () Bool)

(assert (=> b!4755696 m!5725599))

(assert (=> b!4755636 d!1520680))

(declare-fun tp!1350813 () Bool)

(declare-fun b!4755701 () Bool)

(declare-fun e!2966808 () Bool)

(assert (=> b!4755701 (= e!2966808 (and tp_is_empty!32157 tp_is_empty!32159 tp!1350813))))

(assert (=> b!4755639 (= tp!1350805 e!2966808)))

(assert (= (and b!4755639 ((_ is Cons!53156) (t!360624 l!13115))) b!4755701))

(declare-fun e!2966809 () Bool)

(declare-fun b!4755702 () Bool)

(declare-fun tp!1350814 () Bool)

(assert (=> b!4755702 (= e!2966809 (and tp_is_empty!32157 tp_is_empty!32159 tp!1350814))))

(assert (=> b!4755640 (= tp!1350803 e!2966809)))

(assert (= (and b!4755640 ((_ is Cons!53156) (toList!6184 lhm2!51))) b!4755702))

(declare-fun e!2966810 () Bool)

(declare-fun tp!1350815 () Bool)

(declare-fun b!4755703 () Bool)

(assert (=> b!4755703 (= e!2966810 (and tp_is_empty!32157 tp_is_empty!32159 tp!1350815))))

(assert (=> b!4755637 (= tp!1350804 e!2966810)))

(assert (= (and b!4755637 ((_ is Cons!53156) (toList!6184 lhm1!51))) b!4755703))

(check-sat (not b!4755690) (not b!4755696) (not d!1520676) (not d!1520664) (not b!4755669) (not d!1520678) (not b!4755668) (not b!4755703) (not d!1520650) (not b!4755693) (not d!1520668) (not b!4755694) (not d!1520660) (not b!4755701) (not b!4755702) (not b!4755653) (not b!4755655) tp_is_empty!32157 tp_is_empty!32159 (not b!4755691) (not d!1520662) (not b!4755695))
(check-sat)
