; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510446 () Bool)

(assert start!510446)

(declare-fun res!2082535 () Bool)

(declare-fun e!3049162 () Bool)

(assert (=> start!510446 (=> res!2082535 e!3049162)))

(declare-datatypes ((T!99256 0))(
  ( (T!99257 (val!22551 Int)) )
))
(declare-datatypes ((List!56150 0))(
  ( (Nil!56026) (Cons!56026 (h!62474 T!99256) (t!364770 List!56150)) )
))
(declare-datatypes ((IArray!29283 0))(
  ( (IArray!29284 (innerList!14699 List!56150)) )
))
(declare-datatypes ((Conc!14611 0))(
  ( (Node!14611 (left!40703 Conc!14611) (right!41033 Conc!14611) (csize!29452 Int) (cheight!14822 Int)) (Leaf!24350 (xs!17921 IArray!29283) (csize!29453 Int)) (Empty!14611) )
))
(declare-fun lt!1999059 () Conc!14611)

(declare-fun isBalanced!3973 (Conc!14611) Bool)

(assert (=> start!510446 (= res!2082535 (not (isBalanced!3973 lt!1999059)))))

(declare-datatypes ((BalanceConc!28664 0))(
  ( (BalanceConc!28665 (c!829763 Conc!14611)) )
))
(declare-fun thiss!5865 () BalanceConc!28664)

(declare-fun v!5451 () T!99256)

(declare-fun prepend!1409 (Conc!14611 T!99256) Conc!14611)

(assert (=> start!510446 (= lt!1999059 (prepend!1409 (c!829763 thiss!5865) v!5451))))

(assert (=> start!510446 e!3049162))

(declare-fun e!3049163 () Bool)

(declare-fun inv!71987 (BalanceConc!28664) Bool)

(assert (=> start!510446 (and (inv!71987 thiss!5865) e!3049163)))

(declare-fun tp_is_empty!35685 () Bool)

(assert (=> start!510446 tp_is_empty!35685))

(declare-fun b!4878672 () Bool)

(declare-fun list!17557 (BalanceConc!28664) List!56150)

(assert (=> b!4878672 (= e!3049162 (not (= (list!17557 (BalanceConc!28665 lt!1999059)) (Cons!56026 v!5451 (list!17557 thiss!5865)))))))

(declare-fun b!4878673 () Bool)

(declare-fun tp!1372744 () Bool)

(declare-fun inv!71988 (Conc!14611) Bool)

(assert (=> b!4878673 (= e!3049163 (and (inv!71988 (c!829763 thiss!5865)) tp!1372744))))

(assert (= (and start!510446 (not res!2082535)) b!4878672))

(assert (= start!510446 b!4878673))

(declare-fun m!5881592 () Bool)

(assert (=> start!510446 m!5881592))

(declare-fun m!5881594 () Bool)

(assert (=> start!510446 m!5881594))

(declare-fun m!5881596 () Bool)

(assert (=> start!510446 m!5881596))

(declare-fun m!5881598 () Bool)

(assert (=> b!4878672 m!5881598))

(declare-fun m!5881600 () Bool)

(assert (=> b!4878672 m!5881600))

(declare-fun m!5881602 () Bool)

(assert (=> b!4878673 m!5881602))

(push 1)

(assert (not b!4878673))

(assert (not b!4878672))

(assert (not start!510446))

(assert tp_is_empty!35685)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1567505 () Bool)

(declare-fun c!829767 () Bool)

(assert (=> d!1567505 (= c!829767 (is-Node!14611 (c!829763 thiss!5865)))))

(declare-fun e!3049174 () Bool)

(assert (=> d!1567505 (= (inv!71988 (c!829763 thiss!5865)) e!3049174)))

(declare-fun b!4878686 () Bool)

(declare-fun inv!71991 (Conc!14611) Bool)

(assert (=> b!4878686 (= e!3049174 (inv!71991 (c!829763 thiss!5865)))))

(declare-fun b!4878687 () Bool)

(declare-fun e!3049175 () Bool)

(assert (=> b!4878687 (= e!3049174 e!3049175)))

(declare-fun res!2082541 () Bool)

(assert (=> b!4878687 (= res!2082541 (not (is-Leaf!24350 (c!829763 thiss!5865))))))

(assert (=> b!4878687 (=> res!2082541 e!3049175)))

(declare-fun b!4878688 () Bool)

(declare-fun inv!71992 (Conc!14611) Bool)

(assert (=> b!4878688 (= e!3049175 (inv!71992 (c!829763 thiss!5865)))))

(assert (= (and d!1567505 c!829767) b!4878686))

(assert (= (and d!1567505 (not c!829767)) b!4878687))

(assert (= (and b!4878687 (not res!2082541)) b!4878688))

(declare-fun m!5881616 () Bool)

(assert (=> b!4878686 m!5881616))

(declare-fun m!5881618 () Bool)

(assert (=> b!4878688 m!5881618))

(assert (=> b!4878673 d!1567505))

(declare-fun d!1567509 () Bool)

(declare-fun list!17559 (Conc!14611) List!56150)

(assert (=> d!1567509 (= (list!17557 (BalanceConc!28665 lt!1999059)) (list!17559 (c!829763 (BalanceConc!28665 lt!1999059))))))

(declare-fun bs!1175269 () Bool)

(assert (= bs!1175269 d!1567509))

(declare-fun m!5881620 () Bool)

(assert (=> bs!1175269 m!5881620))

(assert (=> b!4878672 d!1567509))

(declare-fun d!1567511 () Bool)

(assert (=> d!1567511 (= (list!17557 thiss!5865) (list!17559 (c!829763 thiss!5865)))))

(declare-fun bs!1175270 () Bool)

(assert (= bs!1175270 d!1567511))

(declare-fun m!5881622 () Bool)

(assert (=> bs!1175270 m!5881622))

(assert (=> b!4878672 d!1567511))

(declare-fun d!1567513 () Bool)

(declare-fun res!2082557 () Bool)

(declare-fun e!3049187 () Bool)

(assert (=> d!1567513 (=> res!2082557 e!3049187)))

(assert (=> d!1567513 (= res!2082557 (not (is-Node!14611 lt!1999059)))))

(assert (=> d!1567513 (= (isBalanced!3973 lt!1999059) e!3049187)))

(declare-fun b!4878710 () Bool)

(declare-fun res!2082559 () Bool)

(declare-fun e!3049186 () Bool)

(assert (=> b!4878710 (=> (not res!2082559) (not e!3049186))))

(declare-fun isEmpty!30022 (Conc!14611) Bool)

(assert (=> b!4878710 (= res!2082559 (not (isEmpty!30022 (left!40703 lt!1999059))))))

(declare-fun b!4878711 () Bool)

(assert (=> b!4878711 (= e!3049186 (not (isEmpty!30022 (right!41033 lt!1999059))))))

(declare-fun b!4878712 () Bool)

(declare-fun res!2082561 () Bool)

(assert (=> b!4878712 (=> (not res!2082561) (not e!3049186))))

(declare-fun height!1944 (Conc!14611) Int)

(assert (=> b!4878712 (= res!2082561 (<= (- (height!1944 (left!40703 lt!1999059)) (height!1944 (right!41033 lt!1999059))) 1))))

(declare-fun b!4878713 () Bool)

(assert (=> b!4878713 (= e!3049187 e!3049186)))

(declare-fun res!2082558 () Bool)

(assert (=> b!4878713 (=> (not res!2082558) (not e!3049186))))

(assert (=> b!4878713 (= res!2082558 (<= (- 1) (- (height!1944 (left!40703 lt!1999059)) (height!1944 (right!41033 lt!1999059)))))))

(declare-fun b!4878714 () Bool)

(declare-fun res!2082560 () Bool)

(assert (=> b!4878714 (=> (not res!2082560) (not e!3049186))))

(assert (=> b!4878714 (= res!2082560 (isBalanced!3973 (right!41033 lt!1999059)))))

(declare-fun b!4878715 () Bool)

(declare-fun res!2082562 () Bool)

(assert (=> b!4878715 (=> (not res!2082562) (not e!3049186))))

(assert (=> b!4878715 (= res!2082562 (isBalanced!3973 (left!40703 lt!1999059)))))

(assert (= (and d!1567513 (not res!2082557)) b!4878713))

(assert (= (and b!4878713 res!2082558) b!4878712))

(assert (= (and b!4878712 res!2082561) b!4878715))

(assert (= (and b!4878715 res!2082562) b!4878714))

(assert (= (and b!4878714 res!2082560) b!4878710))

(assert (= (and b!4878710 res!2082559) b!4878711))

(declare-fun m!5881628 () Bool)

(assert (=> b!4878710 m!5881628))

(declare-fun m!5881630 () Bool)

(assert (=> b!4878712 m!5881630))

(declare-fun m!5881632 () Bool)

(assert (=> b!4878712 m!5881632))

(declare-fun m!5881634 () Bool)

(assert (=> b!4878715 m!5881634))

(declare-fun m!5881636 () Bool)

(assert (=> b!4878714 m!5881636))

(assert (=> b!4878713 m!5881630))

(assert (=> b!4878713 m!5881632))

(declare-fun m!5881638 () Bool)

(assert (=> b!4878711 m!5881638))

(assert (=> start!510446 d!1567513))

(declare-fun d!1567517 () Bool)

(declare-fun e!3049190 () Bool)

(assert (=> d!1567517 e!3049190))

(declare-fun res!2082565 () Bool)

(assert (=> d!1567517 (=> (not res!2082565) (not e!3049190))))

(declare-fun lt!1999065 () Conc!14611)

(assert (=> d!1567517 (= res!2082565 (isBalanced!3973 lt!1999065))))

(declare-fun ++!12212 (Conc!14611 Conc!14611) Conc!14611)

(declare-fun fill!232 (Int T!99256) IArray!29283)

(assert (=> d!1567517 (= lt!1999065 (++!12212 (Leaf!24350 (fill!232 1 v!5451) 1) (c!829763 thiss!5865)))))

(assert (=> d!1567517 (isBalanced!3973 (c!829763 thiss!5865))))

(assert (=> d!1567517 (= (prepend!1409 (c!829763 thiss!5865) v!5451) lt!1999065)))

(declare-fun b!4878718 () Bool)

(assert (=> b!4878718 (= e!3049190 (= (list!17559 lt!1999065) (Cons!56026 v!5451 (list!17559 (c!829763 thiss!5865)))))))

(assert (= (and d!1567517 res!2082565) b!4878718))

(declare-fun m!5881640 () Bool)

(assert (=> d!1567517 m!5881640))

(declare-fun m!5881642 () Bool)

(assert (=> d!1567517 m!5881642))

(declare-fun m!5881644 () Bool)

(assert (=> d!1567517 m!5881644))

(declare-fun m!5881646 () Bool)

(assert (=> d!1567517 m!5881646))

(declare-fun m!5881648 () Bool)

(assert (=> b!4878718 m!5881648))

(assert (=> b!4878718 m!5881622))

(assert (=> start!510446 d!1567517))

(declare-fun d!1567519 () Bool)

(assert (=> d!1567519 (= (inv!71987 thiss!5865) (isBalanced!3973 (c!829763 thiss!5865)))))

(declare-fun bs!1175271 () Bool)

(assert (= bs!1175271 d!1567519))

(assert (=> bs!1175271 m!5881646))

(assert (=> start!510446 d!1567519))

(declare-fun tp!1372756 () Bool)

(declare-fun e!3049200 () Bool)

(declare-fun tp!1372754 () Bool)

(declare-fun b!4878739 () Bool)

(assert (=> b!4878739 (= e!3049200 (and (inv!71988 (left!40703 (c!829763 thiss!5865))) tp!1372756 (inv!71988 (right!41033 (c!829763 thiss!5865))) tp!1372754))))

(declare-fun b!4878741 () Bool)

(declare-fun e!3049199 () Bool)

(declare-fun tp!1372755 () Bool)

(assert (=> b!4878741 (= e!3049199 tp!1372755)))

(declare-fun b!4878740 () Bool)

(declare-fun inv!71993 (IArray!29283) Bool)

(assert (=> b!4878740 (= e!3049200 (and (inv!71993 (xs!17921 (c!829763 thiss!5865))) e!3049199))))

(assert (=> b!4878673 (= tp!1372744 (and (inv!71988 (c!829763 thiss!5865)) e!3049200))))

(assert (= (and b!4878673 (is-Node!14611 (c!829763 thiss!5865))) b!4878739))

(assert (= b!4878740 b!4878741))

(assert (= (and b!4878673 (is-Leaf!24350 (c!829763 thiss!5865))) b!4878740))

(declare-fun m!5881650 () Bool)

(assert (=> b!4878739 m!5881650))

(declare-fun m!5881652 () Bool)

(assert (=> b!4878739 m!5881652))

(declare-fun m!5881654 () Bool)

(assert (=> b!4878740 m!5881654))

(assert (=> b!4878673 m!5881602))

(push 1)

(assert (not b!4878715))

(assert (not b!4878741))

(assert (not b!4878718))

(assert (not b!4878739))

(assert (not d!1567517))

(assert (not d!1567509))

(assert (not d!1567511))

(assert (not b!4878740))

(assert tp_is_empty!35685)

(assert (not b!4878713))

(assert (not b!4878673))

(assert (not b!4878686))

(assert (not b!4878688))

(assert (not b!4878711))

(assert (not d!1567519))

(assert (not b!4878714))

(assert (not b!4878710))

(assert (not b!4878712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

