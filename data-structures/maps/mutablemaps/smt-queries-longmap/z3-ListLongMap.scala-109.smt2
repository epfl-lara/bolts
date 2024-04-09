; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1796 () Bool)

(assert start!1796)

(declare-fun b!12587 () Bool)

(declare-fun e!7529 () Bool)

(declare-fun tp_is_empty!633 () Bool)

(declare-fun tp!2099 () Bool)

(assert (=> b!12587 (= e!7529 (and tp_is_empty!633 tp!2099))))

(declare-fun b!12584 () Bool)

(declare-fun res!10101 () Bool)

(declare-fun e!7528 () Bool)

(assert (=> b!12584 (=> (not res!10101) (not e!7528))))

(declare-fun key!303 () (_ BitVec 64))

(declare-datatypes ((B!460 0))(
  ( (B!461 (val!325 Int)) )
))
(declare-fun v!194 () B!460)

(declare-datatypes ((tuple2!432 0))(
  ( (tuple2!433 (_1!216 (_ BitVec 64)) (_2!216 B!460)) )
))
(declare-datatypes ((List!372 0))(
  ( (Nil!369) (Cons!368 (h!934 tuple2!432) (t!2759 List!372)) )
))
(declare-fun l!1094 () List!372)

(declare-datatypes ((Option!57 0))(
  ( (Some!56 (v!1377 B!460)) (None!55) )
))
(declare-fun getValueByKey!51 (List!372 (_ BitVec 64)) Option!57)

(assert (=> b!12584 (= res!10101 (= (getValueByKey!51 l!1094 key!303) (Some!56 v!194)))))

(declare-fun b!12585 () Bool)

(declare-fun res!10102 () Bool)

(assert (=> b!12585 (=> (not res!10102) (not e!7528))))

(get-info :version)

(assert (=> b!12585 (= res!10102 (or (not ((_ is Cons!368) l!1094)) (= (_1!216 (h!934 l!1094)) key!303)))))

(declare-fun res!10100 () Bool)

(assert (=> start!1796 (=> (not res!10100) (not e!7528))))

(declare-fun isStrictlySorted!69 (List!372) Bool)

(assert (=> start!1796 (= res!10100 (isStrictlySorted!69 l!1094))))

(assert (=> start!1796 e!7528))

(assert (=> start!1796 e!7529))

(assert (=> start!1796 true))

(assert (=> start!1796 tp_is_empty!633))

(declare-fun b!12586 () Bool)

(declare-fun contains!177 (List!372 tuple2!432) Bool)

(assert (=> b!12586 (= e!7528 (not (contains!177 l!1094 (tuple2!433 key!303 v!194))))))

(assert (= (and start!1796 res!10100) b!12584))

(assert (= (and b!12584 res!10101) b!12585))

(assert (= (and b!12585 res!10102) b!12586))

(assert (= (and start!1796 ((_ is Cons!368) l!1094)) b!12587))

(declare-fun m!8555 () Bool)

(assert (=> b!12584 m!8555))

(declare-fun m!8557 () Bool)

(assert (=> start!1796 m!8557))

(declare-fun m!8559 () Bool)

(assert (=> b!12586 m!8559))

(check-sat (not b!12587) (not b!12586) (not start!1796) tp_is_empty!633 (not b!12584))
(check-sat)
(get-model)

(declare-fun d!1797 () Bool)

(declare-fun res!10120 () Bool)

(declare-fun e!7544 () Bool)

(assert (=> d!1797 (=> res!10120 e!7544)))

(assert (=> d!1797 (= res!10120 (or ((_ is Nil!369) l!1094) ((_ is Nil!369) (t!2759 l!1094))))))

(assert (=> d!1797 (= (isStrictlySorted!69 l!1094) e!7544)))

(declare-fun b!12608 () Bool)

(declare-fun e!7545 () Bool)

(assert (=> b!12608 (= e!7544 e!7545)))

(declare-fun res!10121 () Bool)

(assert (=> b!12608 (=> (not res!10121) (not e!7545))))

(assert (=> b!12608 (= res!10121 (bvslt (_1!216 (h!934 l!1094)) (_1!216 (h!934 (t!2759 l!1094)))))))

(declare-fun b!12609 () Bool)

(assert (=> b!12609 (= e!7545 (isStrictlySorted!69 (t!2759 l!1094)))))

(assert (= (and d!1797 (not res!10120)) b!12608))

(assert (= (and b!12608 res!10121) b!12609))

(declare-fun m!8567 () Bool)

(assert (=> b!12609 m!8567))

(assert (=> start!1796 d!1797))

(declare-fun lt!3180 () Bool)

(declare-fun d!1801 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13 (List!372) (InoxSet tuple2!432))

(assert (=> d!1801 (= lt!3180 (select (content!13 l!1094) (tuple2!433 key!303 v!194)))))

(declare-fun e!7563 () Bool)

(assert (=> d!1801 (= lt!3180 e!7563)))

(declare-fun res!10138 () Bool)

(assert (=> d!1801 (=> (not res!10138) (not e!7563))))

(assert (=> d!1801 (= res!10138 ((_ is Cons!368) l!1094))))

(assert (=> d!1801 (= (contains!177 l!1094 (tuple2!433 key!303 v!194)) lt!3180)))

(declare-fun b!12626 () Bool)

(declare-fun e!7562 () Bool)

(assert (=> b!12626 (= e!7563 e!7562)))

(declare-fun res!10139 () Bool)

(assert (=> b!12626 (=> res!10139 e!7562)))

(assert (=> b!12626 (= res!10139 (= (h!934 l!1094) (tuple2!433 key!303 v!194)))))

(declare-fun b!12627 () Bool)

(assert (=> b!12627 (= e!7562 (contains!177 (t!2759 l!1094) (tuple2!433 key!303 v!194)))))

(assert (= (and d!1801 res!10138) b!12626))

(assert (= (and b!12626 (not res!10139)) b!12627))

(declare-fun m!8577 () Bool)

(assert (=> d!1801 m!8577))

(declare-fun m!8579 () Bool)

(assert (=> d!1801 m!8579))

(declare-fun m!8581 () Bool)

(assert (=> b!12627 m!8581))

(assert (=> b!12586 d!1801))

(declare-fun b!12662 () Bool)

(declare-fun e!7584 () Option!57)

(assert (=> b!12662 (= e!7584 None!55)))

(declare-fun b!12661 () Bool)

(assert (=> b!12661 (= e!7584 (getValueByKey!51 (t!2759 l!1094) key!303))))

(declare-fun b!12660 () Bool)

(declare-fun e!7583 () Option!57)

(assert (=> b!12660 (= e!7583 e!7584)))

(declare-fun c!1136 () Bool)

(assert (=> b!12660 (= c!1136 (and ((_ is Cons!368) l!1094) (not (= (_1!216 (h!934 l!1094)) key!303))))))

(declare-fun d!1809 () Bool)

(declare-fun c!1135 () Bool)

(assert (=> d!1809 (= c!1135 (and ((_ is Cons!368) l!1094) (= (_1!216 (h!934 l!1094)) key!303)))))

(assert (=> d!1809 (= (getValueByKey!51 l!1094 key!303) e!7583)))

(declare-fun b!12659 () Bool)

(assert (=> b!12659 (= e!7583 (Some!56 (_2!216 (h!934 l!1094))))))

(assert (= (and d!1809 c!1135) b!12659))

(assert (= (and d!1809 (not c!1135)) b!12660))

(assert (= (and b!12660 c!1136) b!12661))

(assert (= (and b!12660 (not c!1136)) b!12662))

(declare-fun m!8587 () Bool)

(assert (=> b!12661 m!8587))

(assert (=> b!12584 d!1809))

(declare-fun b!12667 () Bool)

(declare-fun e!7587 () Bool)

(declare-fun tp!2108 () Bool)

(assert (=> b!12667 (= e!7587 (and tp_is_empty!633 tp!2108))))

(assert (=> b!12587 (= tp!2099 e!7587)))

(assert (= (and b!12587 ((_ is Cons!368) (t!2759 l!1094))) b!12667))

(check-sat (not b!12609) (not b!12627) (not d!1801) tp_is_empty!633 (not b!12661) (not b!12667))
(check-sat)
