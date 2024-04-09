; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106460 () Bool)

(assert start!106460)

(declare-fun res!842628 () Bool)

(declare-fun e!720685 () Bool)

(assert (=> start!106460 (=> (not res!842628) (not e!720685))))

(declare-datatypes ((B!1974 0))(
  ( (B!1975 (val!16322 Int)) )
))
(declare-datatypes ((tuple2!21312 0))(
  ( (tuple2!21313 (_1!10666 (_ BitVec 64)) (_2!10666 B!1974)) )
))
(declare-datatypes ((List!28489 0))(
  ( (Nil!28486) (Cons!28485 (h!29694 tuple2!21312) (t!42017 List!28489)) )
))
(declare-fun l!706 () List!28489)

(declare-fun isStrictlySorted!785 (List!28489) Bool)

(assert (=> start!106460 (= res!842628 (isStrictlySorted!785 l!706))))

(assert (=> start!106460 e!720685))

(declare-fun e!720684 () Bool)

(assert (=> start!106460 e!720684))

(assert (=> start!106460 true))

(declare-fun b!1265436 () Bool)

(declare-fun res!842629 () Bool)

(assert (=> b!1265436 (=> (not res!842629) (not e!720685))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!646 (List!28489 (_ BitVec 64)) Bool)

(assert (=> b!1265436 (= res!842629 (not (containsKey!646 l!706 key1!31)))))

(declare-fun b!1265437 () Bool)

(declare-fun ListPrimitiveSize!153 (List!28489) Int)

(assert (=> b!1265437 (= e!720685 (< (ListPrimitiveSize!153 l!706) 0))))

(declare-fun b!1265438 () Bool)

(declare-fun tp_is_empty!32507 () Bool)

(declare-fun tp!96345 () Bool)

(assert (=> b!1265438 (= e!720684 (and tp_is_empty!32507 tp!96345))))

(assert (= (and start!106460 res!842628) b!1265436))

(assert (= (and b!1265436 res!842629) b!1265437))

(assert (= (and start!106460 (is-Cons!28485 l!706)) b!1265438))

(declare-fun m!1165605 () Bool)

(assert (=> start!106460 m!1165605))

(declare-fun m!1165607 () Bool)

(assert (=> b!1265436 m!1165607))

(declare-fun m!1165609 () Bool)

(assert (=> b!1265437 m!1165609))

(push 1)

(assert (not start!106460))

(assert (not b!1265438))

(assert tp_is_empty!32507)

(assert (not b!1265436))

(assert (not b!1265437))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138849 () Bool)

(declare-fun res!842640 () Bool)

(declare-fun e!720699 () Bool)

(assert (=> d!138849 (=> res!842640 e!720699)))

(assert (=> d!138849 (= res!842640 (and (is-Cons!28485 l!706) (= (_1!10666 (h!29694 l!706)) key1!31)))))

(assert (=> d!138849 (= (containsKey!646 l!706 key1!31) e!720699)))

(declare-fun b!1265455 () Bool)

(declare-fun e!720700 () Bool)

(assert (=> b!1265455 (= e!720699 e!720700)))

(declare-fun res!842641 () Bool)

(assert (=> b!1265455 (=> (not res!842641) (not e!720700))))

(assert (=> b!1265455 (= res!842641 (and (or (not (is-Cons!28485 l!706)) (bvsle (_1!10666 (h!29694 l!706)) key1!31)) (is-Cons!28485 l!706) (bvslt (_1!10666 (h!29694 l!706)) key1!31)))))

(declare-fun b!1265456 () Bool)

(assert (=> b!1265456 (= e!720700 (containsKey!646 (t!42017 l!706) key1!31))))

(assert (= (and d!138849 (not res!842640)) b!1265455))

(assert (= (and b!1265455 res!842641) b!1265456))

(declare-fun m!1165615 () Bool)

(assert (=> b!1265456 m!1165615))

(assert (=> b!1265436 d!138849))

(declare-fun d!138855 () Bool)

(declare-fun lt!573992 () Int)

(assert (=> d!138855 (>= lt!573992 0)))

(declare-fun e!720715 () Int)

(assert (=> d!138855 (= lt!573992 e!720715)))

(declare-fun c!123268 () Bool)

(assert (=> d!138855 (= c!123268 (is-Nil!28486 l!706))))

(assert (=> d!138855 (= (ListPrimitiveSize!153 l!706) lt!573992)))

(declare-fun b!1265473 () Bool)

(assert (=> b!1265473 (= e!720715 0)))

(declare-fun b!1265474 () Bool)

(assert (=> b!1265474 (= e!720715 (+ 1 (ListPrimitiveSize!153 (t!42017 l!706))))))

(assert (= (and d!138855 c!123268) b!1265473))

(assert (= (and d!138855 (not c!123268)) b!1265474))

(declare-fun m!1165621 () Bool)

(assert (=> b!1265474 m!1165621))

(assert (=> b!1265437 d!138855))

(declare-fun d!138861 () Bool)

(declare-fun res!842664 () Bool)

(declare-fun e!720733 () Bool)

(assert (=> d!138861 (=> res!842664 e!720733)))

(assert (=> d!138861 (= res!842664 (or (is-Nil!28486 l!706) (is-Nil!28486 (t!42017 l!706))))))

(assert (=> d!138861 (= (isStrictlySorted!785 l!706) e!720733)))

(declare-fun b!1265499 () Bool)

(declare-fun e!720734 () Bool)

(assert (=> b!1265499 (= e!720733 e!720734)))

(declare-fun res!842665 () Bool)

(assert (=> b!1265499 (=> (not res!842665) (not e!720734))))

(assert (=> b!1265499 (= res!842665 (bvslt (_1!10666 (h!29694 l!706)) (_1!10666 (h!29694 (t!42017 l!706)))))))

(declare-fun b!1265500 () Bool)

(assert (=> b!1265500 (= e!720734 (isStrictlySorted!785 (t!42017 l!706)))))

(assert (= (and d!138861 (not res!842664)) b!1265499))

(assert (= (and b!1265499 res!842665) b!1265500))

(declare-fun m!1165627 () Bool)

(assert (=> b!1265500 m!1165627))

(assert (=> start!106460 d!138861))

(declare-fun b!1265507 () Bool)

(declare-fun e!720739 () Bool)

(declare-fun tp!96354 () Bool)

(assert (=> b!1265507 (= e!720739 (and tp_is_empty!32507 tp!96354))))

(assert (=> b!1265438 (= tp!96345 e!720739)))

(assert (= (and b!1265438 (is-Cons!28485 (t!42017 l!706))) b!1265507))

