; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183802 () Bool)

(assert start!183802)

(declare-datatypes ((Object!3824 0) (Conc!6737 0) (BalanceConc!13396 0) (List!20411 0) (IArray!13479 0))(
  ( (BalanceConc!13395 (value!114204 BalanceConc!13396)) (List!20410 (value!114205 List!20411)) (Character!70 (value!114206 (_ BitVec 16))) (Open!70 (value!114207 Int)) )
  ( (Node!6737 (left!16269 Conc!6737) (right!16599 Conc!6737) (csize!13704 Int) (cheight!6948 Int)) (Leaf!9836 (xs!9613 IArray!13479) (csize!13705 Int)) (Empty!6737) )
  ( (BalanceConc!13397 (c!301094 Conc!6737)) )
  ( (Nil!20339) (Cons!20339 (h!25740 Object!3824) (t!171946 List!20411)) )
  ( (IArray!13480 (innerList!6797 List!20411)) )
))
(declare-datatypes ((T!31966 0))(
  ( (T!31967 (val!5758 Int)) )
))
(declare-datatypes ((List!20412 0))(
  ( (Nil!20340) (Cons!20340 (h!25741 T!31966) (t!171947 List!20412)) )
))
(declare-datatypes ((Vector!144 0))(
  ( (Vector!145 (underlying!3940 Object!3824) (overflowing!129 List!20412)) )
))
(declare-fun thiss!9347 () Vector!144)

(declare-fun that!747 () Vector!144)

(declare-fun list!8264 (Vector!144) List!20412)

(declare-fun choose!11599 (Vector!144 Vector!144) Vector!144)

(declare-fun ++!5522 (List!20412 List!20412) List!20412)

(assert (=> start!183802 (not (= (list!8264 (choose!11599 thiss!9347 that!747)) (++!5522 (list!8264 thiss!9347) (list!8264 that!747))))))

(declare-fun e!1178698 () Bool)

(assert (=> start!183802 e!1178698))

(declare-fun e!1178697 () Bool)

(assert (=> start!183802 e!1178697))

(declare-fun b!1844428 () Bool)

(declare-fun tp!521578 () Bool)

(declare-fun tp!521576 () Bool)

(assert (=> b!1844428 (= e!1178698 (and tp!521578 tp!521576))))

(declare-fun b!1844429 () Bool)

(declare-fun tp!521577 () Bool)

(declare-fun tp!521575 () Bool)

(assert (=> b!1844429 (= e!1178697 (and tp!521577 tp!521575))))

(assert (= start!183802 b!1844428))

(assert (= start!183802 b!1844429))

(declare-fun m!2272721 () Bool)

(assert (=> start!183802 m!2272721))

(declare-fun m!2272723 () Bool)

(assert (=> start!183802 m!2272723))

(declare-fun m!2272725 () Bool)

(assert (=> start!183802 m!2272725))

(assert (=> start!183802 m!2272721))

(assert (=> start!183802 m!2272725))

(declare-fun m!2272727 () Bool)

(assert (=> start!183802 m!2272727))

(assert (=> start!183802 m!2272723))

(declare-fun m!2272729 () Bool)

(assert (=> start!183802 m!2272729))

(check-sat (not start!183802) (not b!1844428) (not b!1844429))
(check-sat)
(get-model)

(declare-fun d!564503 () Bool)

(declare-fun choose!11600 (Vector!144) List!20412)

(assert (=> d!564503 (= (list!8264 that!747) (choose!11600 that!747))))

(declare-fun bs!408848 () Bool)

(assert (= bs!408848 d!564503))

(declare-fun m!2272731 () Bool)

(assert (=> bs!408848 m!2272731))

(assert (=> start!183802 d!564503))

(declare-fun d!564507 () Bool)

(assert (=> d!564507 (= (list!8264 thiss!9347) (choose!11600 thiss!9347))))

(declare-fun bs!408849 () Bool)

(assert (= bs!408849 d!564507))

(declare-fun m!2272733 () Bool)

(assert (=> bs!408849 m!2272733))

(assert (=> start!183802 d!564507))

(declare-fun d!564509 () Bool)

(assert (=> d!564509 (= (list!8264 (choose!11599 thiss!9347 that!747)) (choose!11600 (choose!11599 thiss!9347 that!747)))))

(declare-fun bs!408850 () Bool)

(assert (= bs!408850 d!564509))

(assert (=> bs!408850 m!2272723))

(declare-fun m!2272735 () Bool)

(assert (=> bs!408850 m!2272735))

(assert (=> start!183802 d!564509))

(declare-fun b!1844440 () Bool)

(declare-fun res!828444 () Bool)

(declare-fun e!1178704 () Bool)

(assert (=> b!1844440 (=> (not res!828444) (not e!1178704))))

(declare-fun lt!714621 () List!20412)

(declare-fun size!16105 (List!20412) Int)

(assert (=> b!1844440 (= res!828444 (= (size!16105 lt!714621) (+ (size!16105 (list!8264 thiss!9347)) (size!16105 (list!8264 that!747)))))))

(declare-fun b!1844438 () Bool)

(declare-fun e!1178703 () List!20412)

(assert (=> b!1844438 (= e!1178703 (list!8264 that!747))))

(declare-fun d!564511 () Bool)

(assert (=> d!564511 e!1178704))

(declare-fun res!828445 () Bool)

(assert (=> d!564511 (=> (not res!828445) (not e!1178704))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3024 (List!20412) (InoxSet T!31966))

(assert (=> d!564511 (= res!828445 (= (content!3024 lt!714621) ((_ map or) (content!3024 (list!8264 thiss!9347)) (content!3024 (list!8264 that!747)))))))

(assert (=> d!564511 (= lt!714621 e!1178703)))

(declare-fun c!301097 () Bool)

(get-info :version)

(assert (=> d!564511 (= c!301097 ((_ is Nil!20340) (list!8264 thiss!9347)))))

(assert (=> d!564511 (= (++!5522 (list!8264 thiss!9347) (list!8264 that!747)) lt!714621)))

(declare-fun b!1844439 () Bool)

(assert (=> b!1844439 (= e!1178703 (Cons!20340 (h!25741 (list!8264 thiss!9347)) (++!5522 (t!171947 (list!8264 thiss!9347)) (list!8264 that!747))))))

(declare-fun b!1844441 () Bool)

(assert (=> b!1844441 (= e!1178704 (or (not (= (list!8264 that!747) Nil!20340)) (= lt!714621 (list!8264 thiss!9347))))))

(assert (= (and d!564511 c!301097) b!1844438))

(assert (= (and d!564511 (not c!301097)) b!1844439))

(assert (= (and d!564511 res!828445) b!1844440))

(assert (= (and b!1844440 res!828444) b!1844441))

(declare-fun m!2272743 () Bool)

(assert (=> b!1844440 m!2272743))

(assert (=> b!1844440 m!2272721))

(declare-fun m!2272745 () Bool)

(assert (=> b!1844440 m!2272745))

(assert (=> b!1844440 m!2272725))

(declare-fun m!2272747 () Bool)

(assert (=> b!1844440 m!2272747))

(declare-fun m!2272749 () Bool)

(assert (=> d!564511 m!2272749))

(assert (=> d!564511 m!2272721))

(declare-fun m!2272751 () Bool)

(assert (=> d!564511 m!2272751))

(assert (=> d!564511 m!2272725))

(declare-fun m!2272753 () Bool)

(assert (=> d!564511 m!2272753))

(assert (=> b!1844439 m!2272725))

(declare-fun m!2272755 () Bool)

(assert (=> b!1844439 m!2272755))

(assert (=> start!183802 d!564511))

(declare-fun d!564519 () Bool)

(declare-fun choose!11601 (Vector!144 Vector!144) Vector!144)

(assert (=> d!564519 (= (choose!11599 thiss!9347 that!747) (choose!11601 thiss!9347 that!747))))

(declare-fun bs!408854 () Bool)

(assert (= bs!408854 d!564519))

(declare-fun m!2272757 () Bool)

(assert (=> bs!408854 m!2272757))

(assert (=> start!183802 d!564519))

(declare-fun b!1844459 () Bool)

(declare-fun e!1178714 () Bool)

(declare-fun tp!521583 () Bool)

(declare-fun inv!26614 (Conc!6737) Bool)

(assert (=> b!1844459 (= e!1178714 (and (inv!26614 (c!301094 (value!114204 (underlying!3940 thiss!9347)))) tp!521583))))

(declare-fun b!1844458 () Bool)

(declare-fun e!1178713 () Bool)

(declare-fun inv!26615 (BalanceConc!13396) Bool)

(assert (=> b!1844458 (= e!1178713 (and (inv!26615 (value!114204 (underlying!3940 thiss!9347))) e!1178714))))

(declare-fun b!1844460 () Bool)

(declare-fun tp!521584 () Bool)

(assert (=> b!1844460 (= e!1178713 tp!521584)))

(assert (=> b!1844428 (= tp!521578 e!1178713)))

(assert (= b!1844458 b!1844459))

(assert (= (and b!1844428 ((_ is BalanceConc!13395) (underlying!3940 thiss!9347))) b!1844458))

(assert (= (and b!1844428 ((_ is List!20410) (underlying!3940 thiss!9347))) b!1844460))

(declare-fun m!2272759 () Bool)

(assert (=> b!1844459 m!2272759))

(declare-fun m!2272761 () Bool)

(assert (=> b!1844458 m!2272761))

(declare-fun b!1844465 () Bool)

(declare-fun e!1178717 () Bool)

(declare-fun tp_is_empty!8363 () Bool)

(declare-fun tp!521587 () Bool)

(assert (=> b!1844465 (= e!1178717 (and tp_is_empty!8363 tp!521587))))

(assert (=> b!1844428 (= tp!521576 e!1178717)))

(assert (= (and b!1844428 ((_ is Cons!20340) (overflowing!129 thiss!9347))) b!1844465))

(declare-fun b!1844467 () Bool)

(declare-fun e!1178719 () Bool)

(declare-fun tp!521588 () Bool)

(assert (=> b!1844467 (= e!1178719 (and (inv!26614 (c!301094 (value!114204 (underlying!3940 that!747)))) tp!521588))))

(declare-fun b!1844466 () Bool)

(declare-fun e!1178718 () Bool)

(assert (=> b!1844466 (= e!1178718 (and (inv!26615 (value!114204 (underlying!3940 that!747))) e!1178719))))

(declare-fun b!1844468 () Bool)

(declare-fun tp!521589 () Bool)

(assert (=> b!1844468 (= e!1178718 tp!521589)))

(assert (=> b!1844429 (= tp!521577 e!1178718)))

(assert (= b!1844466 b!1844467))

(assert (= (and b!1844429 ((_ is BalanceConc!13395) (underlying!3940 that!747))) b!1844466))

(assert (= (and b!1844429 ((_ is List!20410) (underlying!3940 that!747))) b!1844468))

(declare-fun m!2272763 () Bool)

(assert (=> b!1844467 m!2272763))

(declare-fun m!2272765 () Bool)

(assert (=> b!1844466 m!2272765))

(declare-fun b!1844469 () Bool)

(declare-fun e!1178720 () Bool)

(declare-fun tp!521590 () Bool)

(assert (=> b!1844469 (= e!1178720 (and tp_is_empty!8363 tp!521590))))

(assert (=> b!1844429 (= tp!521575 e!1178720)))

(assert (= (and b!1844429 ((_ is Cons!20340) (overflowing!129 that!747))) b!1844469))

(check-sat (not b!1844467) tp_is_empty!8363 (not d!564503) (not b!1844469) (not b!1844458) (not d!564511) (not d!564509) (not b!1844439) (not b!1844468) (not b!1844459) (not b!1844466) (not b!1844440) (not d!564507) (not b!1844465) (not d!564519) (not b!1844460))
(check-sat)
(get-model)

(declare-fun d!564523 () Bool)

(declare-fun c!301103 () Bool)

(assert (=> d!564523 (= c!301103 ((_ is Node!6737) (c!301094 (value!114204 (underlying!3940 thiss!9347)))))))

(declare-fun e!1178739 () Bool)

(assert (=> d!564523 (= (inv!26614 (c!301094 (value!114204 (underlying!3940 thiss!9347)))) e!1178739)))

(declare-fun b!1844500 () Bool)

(declare-fun inv!26618 (Conc!6737) Bool)

(assert (=> b!1844500 (= e!1178739 (inv!26618 (c!301094 (value!114204 (underlying!3940 thiss!9347)))))))

(declare-fun b!1844501 () Bool)

(declare-fun e!1178740 () Bool)

(assert (=> b!1844501 (= e!1178739 e!1178740)))

(declare-fun res!828454 () Bool)

(assert (=> b!1844501 (= res!828454 (not ((_ is Leaf!9836) (c!301094 (value!114204 (underlying!3940 thiss!9347))))))))

(assert (=> b!1844501 (=> res!828454 e!1178740)))

(declare-fun b!1844502 () Bool)

(declare-fun inv!26619 (Conc!6737) Bool)

(assert (=> b!1844502 (= e!1178740 (inv!26619 (c!301094 (value!114204 (underlying!3940 thiss!9347)))))))

(assert (= (and d!564523 c!301103) b!1844500))

(assert (= (and d!564523 (not c!301103)) b!1844501))

(assert (= (and b!1844501 (not res!828454)) b!1844502))

(declare-fun m!2272791 () Bool)

(assert (=> b!1844500 m!2272791))

(declare-fun m!2272793 () Bool)

(assert (=> b!1844502 m!2272793))

(assert (=> b!1844459 d!564523))

(declare-fun d!564525 () Bool)

(declare-fun isBalanced!2096 (Conc!6737) Bool)

(assert (=> d!564525 (= (inv!26615 (value!114204 (underlying!3940 that!747))) (isBalanced!2096 (c!301094 (value!114204 (underlying!3940 that!747)))))))

(declare-fun bs!408856 () Bool)

(assert (= bs!408856 d!564525))

(declare-fun m!2272795 () Bool)

(assert (=> bs!408856 m!2272795))

(assert (=> b!1844466 d!564525))

(declare-fun b!1844505 () Bool)

(declare-fun res!828455 () Bool)

(declare-fun e!1178742 () Bool)

(assert (=> b!1844505 (=> (not res!828455) (not e!1178742))))

(declare-fun lt!714625 () List!20412)

(assert (=> b!1844505 (= res!828455 (= (size!16105 lt!714625) (+ (size!16105 (t!171947 (list!8264 thiss!9347))) (size!16105 (list!8264 that!747)))))))

(declare-fun b!1844503 () Bool)

(declare-fun e!1178741 () List!20412)

(assert (=> b!1844503 (= e!1178741 (list!8264 that!747))))

(declare-fun d!564527 () Bool)

(assert (=> d!564527 e!1178742))

(declare-fun res!828456 () Bool)

(assert (=> d!564527 (=> (not res!828456) (not e!1178742))))

(assert (=> d!564527 (= res!828456 (= (content!3024 lt!714625) ((_ map or) (content!3024 (t!171947 (list!8264 thiss!9347))) (content!3024 (list!8264 that!747)))))))

(assert (=> d!564527 (= lt!714625 e!1178741)))

(declare-fun c!301104 () Bool)

(assert (=> d!564527 (= c!301104 ((_ is Nil!20340) (t!171947 (list!8264 thiss!9347))))))

(assert (=> d!564527 (= (++!5522 (t!171947 (list!8264 thiss!9347)) (list!8264 that!747)) lt!714625)))

(declare-fun b!1844504 () Bool)

(assert (=> b!1844504 (= e!1178741 (Cons!20340 (h!25741 (t!171947 (list!8264 thiss!9347))) (++!5522 (t!171947 (t!171947 (list!8264 thiss!9347))) (list!8264 that!747))))))

(declare-fun b!1844506 () Bool)

(assert (=> b!1844506 (= e!1178742 (or (not (= (list!8264 that!747) Nil!20340)) (= lt!714625 (t!171947 (list!8264 thiss!9347)))))))

(assert (= (and d!564527 c!301104) b!1844503))

(assert (= (and d!564527 (not c!301104)) b!1844504))

(assert (= (and d!564527 res!828456) b!1844505))

(assert (= (and b!1844505 res!828455) b!1844506))

(declare-fun m!2272797 () Bool)

(assert (=> b!1844505 m!2272797))

(declare-fun m!2272799 () Bool)

(assert (=> b!1844505 m!2272799))

(assert (=> b!1844505 m!2272725))

(assert (=> b!1844505 m!2272747))

(declare-fun m!2272801 () Bool)

(assert (=> d!564527 m!2272801))

(declare-fun m!2272803 () Bool)

(assert (=> d!564527 m!2272803))

(assert (=> d!564527 m!2272725))

(assert (=> d!564527 m!2272753))

(assert (=> b!1844504 m!2272725))

(declare-fun m!2272805 () Bool)

(assert (=> b!1844504 m!2272805))

(assert (=> b!1844439 d!564527))

(declare-fun d!564529 () Bool)

(declare-fun res!828459 () Vector!144)

(assert (=> d!564529 (= (list!8264 res!828459) (++!5522 (list!8264 thiss!9347) (list!8264 that!747)))))

(declare-fun e!1178745 () Bool)

(assert (=> d!564529 e!1178745))

(assert (=> d!564529 (= (choose!11601 thiss!9347 that!747) res!828459)))

(declare-fun b!1844509 () Bool)

(declare-fun tp!521607 () Bool)

(declare-fun tp!521608 () Bool)

(assert (=> b!1844509 (= e!1178745 (and tp!521607 tp!521608))))

(assert (= d!564529 b!1844509))

(declare-fun m!2272807 () Bool)

(assert (=> d!564529 m!2272807))

(assert (=> d!564529 m!2272721))

(assert (=> d!564529 m!2272725))

(assert (=> d!564529 m!2272721))

(assert (=> d!564529 m!2272725))

(assert (=> d!564529 m!2272727))

(assert (=> d!564519 d!564529))

(declare-fun d!564531 () Bool)

(declare-fun c!301105 () Bool)

(assert (=> d!564531 (= c!301105 ((_ is Node!6737) (c!301094 (value!114204 (underlying!3940 that!747)))))))

(declare-fun e!1178746 () Bool)

(assert (=> d!564531 (= (inv!26614 (c!301094 (value!114204 (underlying!3940 that!747)))) e!1178746)))

(declare-fun b!1844510 () Bool)

(assert (=> b!1844510 (= e!1178746 (inv!26618 (c!301094 (value!114204 (underlying!3940 that!747)))))))

(declare-fun b!1844511 () Bool)

(declare-fun e!1178747 () Bool)

(assert (=> b!1844511 (= e!1178746 e!1178747)))

(declare-fun res!828460 () Bool)

(assert (=> b!1844511 (= res!828460 (not ((_ is Leaf!9836) (c!301094 (value!114204 (underlying!3940 that!747))))))))

(assert (=> b!1844511 (=> res!828460 e!1178747)))

(declare-fun b!1844512 () Bool)

(assert (=> b!1844512 (= e!1178747 (inv!26619 (c!301094 (value!114204 (underlying!3940 that!747)))))))

(assert (= (and d!564531 c!301105) b!1844510))

(assert (= (and d!564531 (not c!301105)) b!1844511))

(assert (= (and b!1844511 (not res!828460)) b!1844512))

(declare-fun m!2272809 () Bool)

(assert (=> b!1844510 m!2272809))

(declare-fun m!2272811 () Bool)

(assert (=> b!1844512 m!2272811))

(assert (=> b!1844467 d!564531))

(declare-fun d!564533 () Bool)

(assert (=> d!564533 true))

(declare-fun e!1178750 () Bool)

(assert (=> d!564533 e!1178750))

(declare-fun res!828463 () List!20412)

(assert (=> d!564533 (= (choose!11600 thiss!9347) res!828463)))

(declare-fun b!1844515 () Bool)

(declare-fun tp!521611 () Bool)

(assert (=> b!1844515 (= e!1178750 (and tp_is_empty!8363 tp!521611))))

(assert (= (and d!564533 ((_ is Cons!20340) res!828463)) b!1844515))

(assert (=> d!564507 d!564533))

(declare-fun d!564535 () Bool)

(assert (=> d!564535 true))

(declare-fun e!1178751 () Bool)

(assert (=> d!564535 e!1178751))

(declare-fun res!828464 () List!20412)

(assert (=> d!564535 (= (choose!11600 (choose!11599 thiss!9347 that!747)) res!828464)))

(declare-fun b!1844516 () Bool)

(declare-fun tp!521612 () Bool)

(assert (=> b!1844516 (= e!1178751 (and tp_is_empty!8363 tp!521612))))

(assert (= (and d!564535 ((_ is Cons!20340) res!828464)) b!1844516))

(assert (=> d!564509 d!564535))

(declare-fun d!564537 () Bool)

(declare-fun c!301108 () Bool)

(assert (=> d!564537 (= c!301108 ((_ is Nil!20340) lt!714621))))

(declare-fun e!1178754 () (InoxSet T!31966))

(assert (=> d!564537 (= (content!3024 lt!714621) e!1178754)))

(declare-fun b!1844521 () Bool)

(assert (=> b!1844521 (= e!1178754 ((as const (Array T!31966 Bool)) false))))

(declare-fun b!1844522 () Bool)

(assert (=> b!1844522 (= e!1178754 ((_ map or) (store ((as const (Array T!31966 Bool)) false) (h!25741 lt!714621) true) (content!3024 (t!171947 lt!714621))))))

(assert (= (and d!564537 c!301108) b!1844521))

(assert (= (and d!564537 (not c!301108)) b!1844522))

(declare-fun m!2272813 () Bool)

(assert (=> b!1844522 m!2272813))

(declare-fun m!2272815 () Bool)

(assert (=> b!1844522 m!2272815))

(assert (=> d!564511 d!564537))

(declare-fun d!564539 () Bool)

(declare-fun c!301109 () Bool)

(assert (=> d!564539 (= c!301109 ((_ is Nil!20340) (list!8264 thiss!9347)))))

(declare-fun e!1178755 () (InoxSet T!31966))

(assert (=> d!564539 (= (content!3024 (list!8264 thiss!9347)) e!1178755)))

(declare-fun b!1844523 () Bool)

(assert (=> b!1844523 (= e!1178755 ((as const (Array T!31966 Bool)) false))))

(declare-fun b!1844524 () Bool)

(assert (=> b!1844524 (= e!1178755 ((_ map or) (store ((as const (Array T!31966 Bool)) false) (h!25741 (list!8264 thiss!9347)) true) (content!3024 (t!171947 (list!8264 thiss!9347)))))))

(assert (= (and d!564539 c!301109) b!1844523))

(assert (= (and d!564539 (not c!301109)) b!1844524))

(declare-fun m!2272817 () Bool)

(assert (=> b!1844524 m!2272817))

(assert (=> b!1844524 m!2272803))

(assert (=> d!564511 d!564539))

(declare-fun d!564541 () Bool)

(declare-fun c!301110 () Bool)

(assert (=> d!564541 (= c!301110 ((_ is Nil!20340) (list!8264 that!747)))))

(declare-fun e!1178756 () (InoxSet T!31966))

(assert (=> d!564541 (= (content!3024 (list!8264 that!747)) e!1178756)))

(declare-fun b!1844525 () Bool)

(assert (=> b!1844525 (= e!1178756 ((as const (Array T!31966 Bool)) false))))

(declare-fun b!1844526 () Bool)

(assert (=> b!1844526 (= e!1178756 ((_ map or) (store ((as const (Array T!31966 Bool)) false) (h!25741 (list!8264 that!747)) true) (content!3024 (t!171947 (list!8264 that!747)))))))

(assert (= (and d!564541 c!301110) b!1844525))

(assert (= (and d!564541 (not c!301110)) b!1844526))

(declare-fun m!2272819 () Bool)

(assert (=> b!1844526 m!2272819))

(declare-fun m!2272821 () Bool)

(assert (=> b!1844526 m!2272821))

(assert (=> d!564511 d!564541))

(declare-fun d!564543 () Bool)

(declare-fun lt!714628 () Int)

(assert (=> d!564543 (>= lt!714628 0)))

(declare-fun e!1178759 () Int)

(assert (=> d!564543 (= lt!714628 e!1178759)))

(declare-fun c!301113 () Bool)

(assert (=> d!564543 (= c!301113 ((_ is Nil!20340) lt!714621))))

(assert (=> d!564543 (= (size!16105 lt!714621) lt!714628)))

(declare-fun b!1844531 () Bool)

(assert (=> b!1844531 (= e!1178759 0)))

(declare-fun b!1844532 () Bool)

(assert (=> b!1844532 (= e!1178759 (+ 1 (size!16105 (t!171947 lt!714621))))))

(assert (= (and d!564543 c!301113) b!1844531))

(assert (= (and d!564543 (not c!301113)) b!1844532))

(declare-fun m!2272823 () Bool)

(assert (=> b!1844532 m!2272823))

(assert (=> b!1844440 d!564543))

(declare-fun d!564545 () Bool)

(declare-fun lt!714629 () Int)

(assert (=> d!564545 (>= lt!714629 0)))

(declare-fun e!1178760 () Int)

(assert (=> d!564545 (= lt!714629 e!1178760)))

(declare-fun c!301114 () Bool)

(assert (=> d!564545 (= c!301114 ((_ is Nil!20340) (list!8264 thiss!9347)))))

(assert (=> d!564545 (= (size!16105 (list!8264 thiss!9347)) lt!714629)))

(declare-fun b!1844533 () Bool)

(assert (=> b!1844533 (= e!1178760 0)))

(declare-fun b!1844534 () Bool)

(assert (=> b!1844534 (= e!1178760 (+ 1 (size!16105 (t!171947 (list!8264 thiss!9347)))))))

(assert (= (and d!564545 c!301114) b!1844533))

(assert (= (and d!564545 (not c!301114)) b!1844534))

(assert (=> b!1844534 m!2272799))

(assert (=> b!1844440 d!564545))

(declare-fun d!564547 () Bool)

(declare-fun lt!714630 () Int)

(assert (=> d!564547 (>= lt!714630 0)))

(declare-fun e!1178761 () Int)

(assert (=> d!564547 (= lt!714630 e!1178761)))

(declare-fun c!301115 () Bool)

(assert (=> d!564547 (= c!301115 ((_ is Nil!20340) (list!8264 that!747)))))

(assert (=> d!564547 (= (size!16105 (list!8264 that!747)) lt!714630)))

(declare-fun b!1844535 () Bool)

(assert (=> b!1844535 (= e!1178761 0)))

(declare-fun b!1844536 () Bool)

(assert (=> b!1844536 (= e!1178761 (+ 1 (size!16105 (t!171947 (list!8264 that!747)))))))

(assert (= (and d!564547 c!301115) b!1844535))

(assert (= (and d!564547 (not c!301115)) b!1844536))

(declare-fun m!2272825 () Bool)

(assert (=> b!1844536 m!2272825))

(assert (=> b!1844440 d!564547))

(declare-fun d!564549 () Bool)

(assert (=> d!564549 true))

(declare-fun e!1178762 () Bool)

(assert (=> d!564549 e!1178762))

(declare-fun res!828465 () List!20412)

(assert (=> d!564549 (= (choose!11600 that!747) res!828465)))

(declare-fun b!1844537 () Bool)

(declare-fun tp!521613 () Bool)

(assert (=> b!1844537 (= e!1178762 (and tp_is_empty!8363 tp!521613))))

(assert (= (and d!564549 ((_ is Cons!20340) res!828465)) b!1844537))

(assert (=> d!564503 d!564549))

(declare-fun d!564551 () Bool)

(assert (=> d!564551 (= (inv!26615 (value!114204 (underlying!3940 thiss!9347))) (isBalanced!2096 (c!301094 (value!114204 (underlying!3940 thiss!9347)))))))

(declare-fun bs!408857 () Bool)

(assert (= bs!408857 d!564551))

(declare-fun m!2272827 () Bool)

(assert (=> bs!408857 m!2272827))

(assert (=> b!1844458 d!564551))

(declare-fun e!1178770 () Bool)

(declare-fun tp!521624 () Bool)

(declare-fun b!1844548 () Bool)

(declare-fun tp!521622 () Bool)

(assert (=> b!1844548 (= e!1178770 (and (inv!26614 (left!16269 (c!301094 (value!114204 (underlying!3940 thiss!9347))))) tp!521622 (inv!26614 (right!16599 (c!301094 (value!114204 (underlying!3940 thiss!9347))))) tp!521624))))

(declare-fun b!1844550 () Bool)

(declare-fun e!1178769 () Bool)

(declare-fun tp!521623 () Bool)

(assert (=> b!1844550 (= e!1178769 tp!521623)))

(declare-fun b!1844549 () Bool)

(declare-fun inv!26620 (IArray!13479) Bool)

(assert (=> b!1844549 (= e!1178770 (and (inv!26620 (xs!9613 (c!301094 (value!114204 (underlying!3940 thiss!9347))))) e!1178769))))

(assert (=> b!1844459 (= tp!521583 (and (inv!26614 (c!301094 (value!114204 (underlying!3940 thiss!9347)))) e!1178770))))

(assert (= (and b!1844459 ((_ is Node!6737) (c!301094 (value!114204 (underlying!3940 thiss!9347))))) b!1844548))

(assert (= b!1844549 b!1844550))

(assert (= (and b!1844459 ((_ is Leaf!9836) (c!301094 (value!114204 (underlying!3940 thiss!9347))))) b!1844549))

(declare-fun m!2272829 () Bool)

(assert (=> b!1844548 m!2272829))

(declare-fun m!2272831 () Bool)

(assert (=> b!1844548 m!2272831))

(declare-fun m!2272833 () Bool)

(assert (=> b!1844549 m!2272833))

(assert (=> b!1844459 m!2272759))

(declare-fun b!1844552 () Bool)

(declare-fun tp!521626 () Bool)

(declare-fun tp!521628 () Bool)

(declare-fun e!1178773 () Bool)

(assert (=> b!1844552 (= e!1178773 (and (inv!26614 (left!16269 (c!301094 (value!114204 (underlying!3940 that!747))))) tp!521626 (inv!26614 (right!16599 (c!301094 (value!114204 (underlying!3940 that!747))))) tp!521628))))

(declare-fun b!1844554 () Bool)

(declare-fun e!1178772 () Bool)

(declare-fun tp!521627 () Bool)

(assert (=> b!1844554 (= e!1178772 tp!521627)))

(declare-fun b!1844553 () Bool)

(assert (=> b!1844553 (= e!1178773 (and (inv!26620 (xs!9613 (c!301094 (value!114204 (underlying!3940 that!747))))) e!1178772))))

(assert (=> b!1844467 (= tp!521588 (and (inv!26614 (c!301094 (value!114204 (underlying!3940 that!747)))) e!1178773))))

(assert (= (and b!1844467 ((_ is Node!6737) (c!301094 (value!114204 (underlying!3940 that!747))))) b!1844552))

(assert (= b!1844553 b!1844554))

(assert (= (and b!1844467 ((_ is Leaf!9836) (c!301094 (value!114204 (underlying!3940 that!747))))) b!1844553))

(declare-fun m!2272835 () Bool)

(assert (=> b!1844552 m!2272835))

(declare-fun m!2272837 () Bool)

(assert (=> b!1844552 m!2272837))

(declare-fun m!2272839 () Bool)

(assert (=> b!1844553 m!2272839))

(assert (=> b!1844467 m!2272763))

(declare-fun b!1844555 () Bool)

(declare-fun e!1178774 () Bool)

(declare-fun tp!521629 () Bool)

(assert (=> b!1844555 (= e!1178774 (and tp_is_empty!8363 tp!521629))))

(assert (=> b!1844465 (= tp!521587 e!1178774)))

(assert (= (and b!1844465 ((_ is Cons!20340) (t!171947 (overflowing!129 thiss!9347)))) b!1844555))

(declare-fun b!1844560 () Bool)

(declare-fun e!1178777 () Bool)

(declare-fun tp!521634 () Bool)

(declare-fun tp!521635 () Bool)

(assert (=> b!1844560 (= e!1178777 (and tp!521634 tp!521635))))

(assert (=> b!1844460 (= tp!521584 e!1178777)))

(assert (= (and b!1844460 ((_ is Cons!20339) (value!114205 (underlying!3940 thiss!9347)))) b!1844560))

(declare-fun b!1844561 () Bool)

(declare-fun e!1178778 () Bool)

(declare-fun tp!521636 () Bool)

(declare-fun tp!521637 () Bool)

(assert (=> b!1844561 (= e!1178778 (and tp!521636 tp!521637))))

(assert (=> b!1844468 (= tp!521589 e!1178778)))

(assert (= (and b!1844468 ((_ is Cons!20339) (value!114205 (underlying!3940 that!747)))) b!1844561))

(declare-fun b!1844562 () Bool)

(declare-fun e!1178779 () Bool)

(declare-fun tp!521638 () Bool)

(assert (=> b!1844562 (= e!1178779 (and tp_is_empty!8363 tp!521638))))

(assert (=> b!1844469 (= tp!521590 e!1178779)))

(assert (= (and b!1844469 ((_ is Cons!20340) (t!171947 (overflowing!129 that!747)))) b!1844562))

(check-sat (not d!564527) (not b!1844467) (not d!564525) (not b!1844504) (not b!1844561) (not b!1844554) (not b!1844516) (not b!1844552) (not b!1844524) (not b!1844532) (not b!1844502) (not d!564529) (not b!1844548) (not b!1844526) tp_is_empty!8363 (not b!1844509) (not b!1844522) (not b!1844549) (not b!1844534) (not b!1844515) (not b!1844505) (not b!1844512) (not b!1844536) (not b!1844510) (not d!564551) (not b!1844555) (not b!1844459) (not b!1844562) (not b!1844500) (not b!1844550) (not b!1844537) (not b!1844560) (not b!1844553))
(check-sat)
