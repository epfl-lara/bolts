; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510430 () Bool)

(assert start!510430)

(declare-datatypes ((T!99242 0))(
  ( (T!99243 (val!22549 Int)) )
))
(declare-datatypes ((List!56148 0))(
  ( (Nil!56024) (Cons!56024 (h!62472 T!99242) (t!364766 List!56148)) )
))
(declare-datatypes ((IArray!29279 0))(
  ( (IArray!29280 (innerList!14697 List!56148)) )
))
(declare-datatypes ((Conc!14609 0))(
  ( (Node!14609 (left!40700 Conc!14609) (right!41030 Conc!14609) (csize!29448 Int) (cheight!14820 Int)) (Leaf!24347 (xs!17919 IArray!29279) (csize!29449 Int)) (Empty!14609) )
))
(declare-datatypes ((BalanceConc!28660 0))(
  ( (BalanceConc!28661 (c!829755 Conc!14609)) )
))
(declare-fun thiss!5865 () BalanceConc!28660)

(declare-fun v!5451 () T!99242)

(declare-fun inv!71974 (BalanceConc!28660) Bool)

(declare-fun prepend!1407 (Conc!14609 T!99242) Conc!14609)

(assert (=> start!510430 (not (inv!71974 (BalanceConc!28661 (prepend!1407 (c!829755 thiss!5865) v!5451))))))

(declare-fun e!3049124 () Bool)

(assert (=> start!510430 (and (inv!71974 thiss!5865) e!3049124)))

(declare-fun tp_is_empty!35681 () Bool)

(assert (=> start!510430 tp_is_empty!35681))

(declare-fun b!4878618 () Bool)

(declare-fun tp!1372720 () Bool)

(declare-fun inv!71975 (Conc!14609) Bool)

(assert (=> b!4878618 (= e!3049124 (and (inv!71975 (c!829755 thiss!5865)) tp!1372720))))

(assert (= start!510430 b!4878618))

(declare-fun m!5881528 () Bool)

(assert (=> start!510430 m!5881528))

(declare-fun m!5881530 () Bool)

(assert (=> start!510430 m!5881530))

(declare-fun m!5881532 () Bool)

(assert (=> start!510430 m!5881532))

(declare-fun m!5881534 () Bool)

(assert (=> b!4878618 m!5881534))

(push 1)

(assert (not b!4878618))

(assert (not start!510430))

(assert tp_is_empty!35681)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1567488 () Bool)

(declare-fun c!829759 () Bool)

(assert (=> d!1567488 (= c!829759 (is-Node!14609 (c!829755 thiss!5865)))))

(declare-fun e!3049132 () Bool)

(assert (=> d!1567488 (= (inv!71975 (c!829755 thiss!5865)) e!3049132)))

(declare-fun b!4878628 () Bool)

(declare-fun inv!71978 (Conc!14609) Bool)

(assert (=> b!4878628 (= e!3049132 (inv!71978 (c!829755 thiss!5865)))))

(declare-fun b!4878629 () Bool)

(declare-fun e!3049133 () Bool)

(assert (=> b!4878629 (= e!3049132 e!3049133)))

(declare-fun res!2082523 () Bool)

(assert (=> b!4878629 (= res!2082523 (not (is-Leaf!24347 (c!829755 thiss!5865))))))

(assert (=> b!4878629 (=> res!2082523 e!3049133)))

(declare-fun b!4878630 () Bool)

(declare-fun inv!71979 (Conc!14609) Bool)

(assert (=> b!4878630 (= e!3049133 (inv!71979 (c!829755 thiss!5865)))))

(assert (= (and d!1567488 c!829759) b!4878628))

(assert (= (and d!1567488 (not c!829759)) b!4878629))

(assert (= (and b!4878629 (not res!2082523)) b!4878630))

(declare-fun m!5881544 () Bool)

(assert (=> b!4878628 m!5881544))

(declare-fun m!5881546 () Bool)

(assert (=> b!4878630 m!5881546))

(assert (=> b!4878618 d!1567488))

(declare-fun d!1567492 () Bool)

(declare-fun isBalanced!3971 (Conc!14609) Bool)

(assert (=> d!1567492 (= (inv!71974 (BalanceConc!28661 (prepend!1407 (c!829755 thiss!5865) v!5451))) (isBalanced!3971 (c!829755 (BalanceConc!28661 (prepend!1407 (c!829755 thiss!5865) v!5451)))))))

(declare-fun bs!1175263 () Bool)

(assert (= bs!1175263 d!1567492))

(declare-fun m!5881548 () Bool)

(assert (=> bs!1175263 m!5881548))

(assert (=> start!510430 d!1567492))

(declare-fun d!1567494 () Bool)

(declare-fun e!3049142 () Bool)

(assert (=> d!1567494 e!3049142))

(declare-fun res!2082529 () Bool)

(assert (=> d!1567494 (=> (not res!2082529) (not e!3049142))))

(declare-fun lt!1999053 () Conc!14609)

(assert (=> d!1567494 (= res!2082529 (isBalanced!3971 lt!1999053))))

(declare-fun ++!12210 (Conc!14609 Conc!14609) Conc!14609)

(declare-fun fill!230 (Int T!99242) IArray!29279)

(assert (=> d!1567494 (= lt!1999053 (++!12210 (Leaf!24347 (fill!230 1 v!5451) 1) (c!829755 thiss!5865)))))

(assert (=> d!1567494 (isBalanced!3971 (c!829755 thiss!5865))))

(assert (=> d!1567494 (= (prepend!1407 (c!829755 thiss!5865) v!5451) lt!1999053)))

(declare-fun b!4878642 () Bool)

(declare-fun list!17555 (Conc!14609) List!56148)

(assert (=> b!4878642 (= e!3049142 (= (list!17555 lt!1999053) (Cons!56024 v!5451 (list!17555 (c!829755 thiss!5865)))))))

(assert (= (and d!1567494 res!2082529) b!4878642))

(declare-fun m!5881556 () Bool)

(assert (=> d!1567494 m!5881556))

(declare-fun m!5881558 () Bool)

(assert (=> d!1567494 m!5881558))

(declare-fun m!5881560 () Bool)

(assert (=> d!1567494 m!5881560))

(declare-fun m!5881562 () Bool)

(assert (=> d!1567494 m!5881562))

(declare-fun m!5881564 () Bool)

(assert (=> b!4878642 m!5881564))

(declare-fun m!5881566 () Bool)

(assert (=> b!4878642 m!5881566))

(assert (=> start!510430 d!1567494))

(declare-fun d!1567500 () Bool)

(assert (=> d!1567500 (= (inv!71974 thiss!5865) (isBalanced!3971 (c!829755 thiss!5865)))))

(declare-fun bs!1175265 () Bool)

(assert (= bs!1175265 d!1567500))

(assert (=> bs!1175265 m!5881562))

(assert (=> start!510430 d!1567500))

(declare-fun tp!1372731 () Bool)

(declare-fun b!4878651 () Bool)

(declare-fun tp!1372730 () Bool)

(declare-fun e!3049147 () Bool)

(assert (=> b!4878651 (= e!3049147 (and (inv!71975 (left!40700 (c!829755 thiss!5865))) tp!1372731 (inv!71975 (right!41030 (c!829755 thiss!5865))) tp!1372730))))

(declare-fun b!4878653 () Bool)

(declare-fun e!3049148 () Bool)

(declare-fun tp!1372732 () Bool)

(assert (=> b!4878653 (= e!3049148 tp!1372732)))

(declare-fun b!4878652 () Bool)

(declare-fun inv!71982 (IArray!29279) Bool)

(assert (=> b!4878652 (= e!3049147 (and (inv!71982 (xs!17919 (c!829755 thiss!5865))) e!3049148))))

(assert (=> b!4878618 (= tp!1372720 (and (inv!71975 (c!829755 thiss!5865)) e!3049147))))

(assert (= (and b!4878618 (is-Node!14609 (c!829755 thiss!5865))) b!4878651))

(assert (= b!4878652 b!4878653))

(assert (= (and b!4878618 (is-Leaf!24347 (c!829755 thiss!5865))) b!4878652))

(declare-fun m!5881568 () Bool)

(assert (=> b!4878651 m!5881568))

(declare-fun m!5881570 () Bool)

(assert (=> b!4878651 m!5881570))

(declare-fun m!5881572 () Bool)

(assert (=> b!4878652 m!5881572))

(assert (=> b!4878618 m!5881534))

(push 1)

(assert (not b!4878628))

(assert (not d!1567492))

(assert tp_is_empty!35681)

(assert (not b!4878651))

(assert (not d!1567494))

(assert (not b!4878630))

(assert (not b!4878652))

(assert (not b!4878618))

(assert (not d!1567500))

(assert (not b!4878642))

(assert (not b!4878653))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

