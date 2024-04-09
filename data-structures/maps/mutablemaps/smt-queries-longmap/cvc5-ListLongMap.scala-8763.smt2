; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106456 () Bool)

(assert start!106456)

(declare-fun res!842617 () Bool)

(declare-fun e!720673 () Bool)

(assert (=> start!106456 (=> (not res!842617) (not e!720673))))

(declare-datatypes ((B!1970 0))(
  ( (B!1971 (val!16320 Int)) )
))
(declare-datatypes ((tuple2!21308 0))(
  ( (tuple2!21309 (_1!10664 (_ BitVec 64)) (_2!10664 B!1970)) )
))
(declare-datatypes ((List!28487 0))(
  ( (Nil!28484) (Cons!28483 (h!29692 tuple2!21308) (t!42015 List!28487)) )
))
(declare-fun l!706 () List!28487)

(declare-fun isStrictlySorted!783 (List!28487) Bool)

(assert (=> start!106456 (= res!842617 (isStrictlySorted!783 l!706))))

(assert (=> start!106456 e!720673))

(declare-fun e!720672 () Bool)

(assert (=> start!106456 e!720672))

(assert (=> start!106456 true))

(declare-fun b!1265418 () Bool)

(declare-fun res!842616 () Bool)

(assert (=> b!1265418 (=> (not res!842616) (not e!720673))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!644 (List!28487 (_ BitVec 64)) Bool)

(assert (=> b!1265418 (= res!842616 (not (containsKey!644 l!706 key1!31)))))

(declare-fun b!1265419 () Bool)

(declare-fun ListPrimitiveSize!151 (List!28487) Int)

(assert (=> b!1265419 (= e!720673 (< (ListPrimitiveSize!151 l!706) 0))))

(declare-fun b!1265420 () Bool)

(declare-fun tp_is_empty!32503 () Bool)

(declare-fun tp!96339 () Bool)

(assert (=> b!1265420 (= e!720672 (and tp_is_empty!32503 tp!96339))))

(assert (= (and start!106456 res!842617) b!1265418))

(assert (= (and b!1265418 res!842616) b!1265419))

(assert (= (and start!106456 (is-Cons!28483 l!706)) b!1265420))

(declare-fun m!1165593 () Bool)

(assert (=> start!106456 m!1165593))

(declare-fun m!1165595 () Bool)

(assert (=> b!1265418 m!1165595))

(declare-fun m!1165597 () Bool)

(assert (=> b!1265419 m!1165597))

(push 1)

(assert (not start!106456))

(assert (not b!1265419))

(assert (not b!1265418))

(assert (not b!1265420))

(assert tp_is_empty!32503)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138846 () Bool)

(declare-fun res!842638 () Bool)

(declare-fun e!720697 () Bool)

(assert (=> d!138846 (=> res!842638 e!720697)))

(assert (=> d!138846 (= res!842638 (or (is-Nil!28484 l!706) (is-Nil!28484 (t!42015 l!706))))))

(assert (=> d!138846 (= (isStrictlySorted!783 l!706) e!720697)))

(declare-fun b!1265453 () Bool)

(declare-fun e!720698 () Bool)

(assert (=> b!1265453 (= e!720697 e!720698)))

(declare-fun res!842639 () Bool)

(assert (=> b!1265453 (=> (not res!842639) (not e!720698))))

(assert (=> b!1265453 (= res!842639 (bvslt (_1!10664 (h!29692 l!706)) (_1!10664 (h!29692 (t!42015 l!706)))))))

(declare-fun b!1265454 () Bool)

(assert (=> b!1265454 (= e!720698 (isStrictlySorted!783 (t!42015 l!706)))))

(assert (= (and d!138846 (not res!842638)) b!1265453))

(assert (= (and b!1265453 res!842639) b!1265454))

(declare-fun m!1165613 () Bool)

(assert (=> b!1265454 m!1165613))

(assert (=> start!106456 d!138846))

(declare-fun d!138853 () Bool)

(declare-fun res!842652 () Bool)

(declare-fun e!720713 () Bool)

(assert (=> d!138853 (=> res!842652 e!720713)))

(assert (=> d!138853 (= res!842652 (and (is-Cons!28483 l!706) (= (_1!10664 (h!29692 l!706)) key1!31)))))

(assert (=> d!138853 (= (containsKey!644 l!706 key1!31) e!720713)))

(declare-fun b!1265471 () Bool)

(declare-fun e!720714 () Bool)

(assert (=> b!1265471 (= e!720713 e!720714)))

(declare-fun res!842653 () Bool)

(assert (=> b!1265471 (=> (not res!842653) (not e!720714))))

(assert (=> b!1265471 (= res!842653 (and (or (not (is-Cons!28483 l!706)) (bvsle (_1!10664 (h!29692 l!706)) key1!31)) (is-Cons!28483 l!706) (bvslt (_1!10664 (h!29692 l!706)) key1!31)))))

(declare-fun b!1265472 () Bool)

(assert (=> b!1265472 (= e!720714 (containsKey!644 (t!42015 l!706) key1!31))))

(assert (= (and d!138853 (not res!842652)) b!1265471))

(assert (= (and b!1265471 res!842653) b!1265472))

(declare-fun m!1165619 () Bool)

(assert (=> b!1265472 m!1165619))

(assert (=> b!1265418 d!138853))

(declare-fun d!138859 () Bool)

(declare-fun lt!573995 () Int)

(assert (=> d!138859 (>= lt!573995 0)))

(declare-fun e!720728 () Int)

(assert (=> d!138859 (= lt!573995 e!720728)))

(declare-fun c!123271 () Bool)

(assert (=> d!138859 (= c!123271 (is-Nil!28484 l!706))))

(assert (=> d!138859 (= (ListPrimitiveSize!151 l!706) lt!573995)))

(declare-fun b!1265489 () Bool)

(assert (=> b!1265489 (= e!720728 0)))

(declare-fun b!1265490 () Bool)

(assert (=> b!1265490 (= e!720728 (+ 1 (ListPrimitiveSize!151 (t!42015 l!706))))))

(assert (= (and d!138859 c!123271) b!1265489))

(assert (= (and d!138859 (not c!123271)) b!1265490))

(declare-fun m!1165625 () Bool)

(assert (=> b!1265490 m!1165625))

(assert (=> b!1265419 d!138859))

(declare-fun b!1265506 () Bool)

(declare-fun e!720738 () Bool)

(declare-fun tp!96353 () Bool)

(assert (=> b!1265506 (= e!720738 (and tp_is_empty!32503 tp!96353))))

(assert (=> b!1265420 (= tp!96339 e!720738)))

(assert (= (and b!1265420 (is-Cons!28483 (t!42015 l!706))) b!1265506))

(push 1)

(assert (not b!1265506))

(assert (not b!1265490))

(assert (not b!1265454))

(assert (not b!1265472))

(assert tp_is_empty!32503)

(check-sat)

