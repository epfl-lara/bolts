; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106482 () Bool)

(assert start!106482)

(declare-fun b!1265531 () Bool)

(declare-fun e!720750 () Bool)

(declare-fun tp_is_empty!32511 () Bool)

(declare-fun tp!96360 () Bool)

(assert (=> b!1265531 (= e!720750 (and tp_is_empty!32511 tp!96360))))

(declare-fun b!1265529 () Bool)

(declare-fun res!842681 () Bool)

(declare-fun e!720751 () Bool)

(assert (=> b!1265529 (=> (not res!842681) (not e!720751))))

(declare-datatypes ((B!1978 0))(
  ( (B!1979 (val!16324 Int)) )
))
(declare-datatypes ((tuple2!21316 0))(
  ( (tuple2!21317 (_1!10668 (_ BitVec 64)) (_2!10668 B!1978)) )
))
(declare-datatypes ((List!28491 0))(
  ( (Nil!28488) (Cons!28487 (h!29696 tuple2!21316) (t!42019 List!28491)) )
))
(declare-fun l!706 () List!28491)

(get-info :version)

(assert (=> b!1265529 (= res!842681 ((_ is Cons!28487) l!706))))

(declare-fun res!842682 () Bool)

(assert (=> start!106482 (=> (not res!842682) (not e!720751))))

(declare-fun isStrictlySorted!787 (List!28491) Bool)

(assert (=> start!106482 (= res!842682 (isStrictlySorted!787 l!706))))

(assert (=> start!106482 e!720751))

(assert (=> start!106482 e!720750))

(assert (=> start!106482 true))

(declare-fun b!1265528 () Bool)

(declare-fun res!842683 () Bool)

(assert (=> b!1265528 (=> (not res!842683) (not e!720751))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!648 (List!28491 (_ BitVec 64)) Bool)

(assert (=> b!1265528 (= res!842683 (not (containsKey!648 l!706 key1!31)))))

(declare-fun b!1265530 () Bool)

(assert (=> b!1265530 (= e!720751 (not (isStrictlySorted!787 (t!42019 l!706))))))

(assert (= (and start!106482 res!842682) b!1265528))

(assert (= (and b!1265528 res!842683) b!1265529))

(assert (= (and b!1265529 res!842681) b!1265530))

(assert (= (and start!106482 ((_ is Cons!28487) l!706)) b!1265531))

(declare-fun m!1165635 () Bool)

(assert (=> start!106482 m!1165635))

(declare-fun m!1165637 () Bool)

(assert (=> b!1265528 m!1165637))

(declare-fun m!1165639 () Bool)

(assert (=> b!1265530 m!1165639))

(check-sat tp_is_empty!32511 (not b!1265531) (not b!1265528) (not b!1265530) (not start!106482))
(check-sat)
(get-model)

(declare-fun d!138867 () Bool)

(declare-fun res!842707 () Bool)

(declare-fun e!720772 () Bool)

(assert (=> d!138867 (=> res!842707 e!720772)))

(assert (=> d!138867 (= res!842707 (or ((_ is Nil!28488) (t!42019 l!706)) ((_ is Nil!28488) (t!42019 (t!42019 l!706)))))))

(assert (=> d!138867 (= (isStrictlySorted!787 (t!42019 l!706)) e!720772)))

(declare-fun b!1265558 () Bool)

(declare-fun e!720773 () Bool)

(assert (=> b!1265558 (= e!720772 e!720773)))

(declare-fun res!842708 () Bool)

(assert (=> b!1265558 (=> (not res!842708) (not e!720773))))

(assert (=> b!1265558 (= res!842708 (bvslt (_1!10668 (h!29696 (t!42019 l!706))) (_1!10668 (h!29696 (t!42019 (t!42019 l!706))))))))

(declare-fun b!1265559 () Bool)

(assert (=> b!1265559 (= e!720773 (isStrictlySorted!787 (t!42019 (t!42019 l!706))))))

(assert (= (and d!138867 (not res!842707)) b!1265558))

(assert (= (and b!1265558 res!842708) b!1265559))

(declare-fun m!1165649 () Bool)

(assert (=> b!1265559 m!1165649))

(assert (=> b!1265530 d!138867))

(declare-fun d!138875 () Bool)

(declare-fun res!842716 () Bool)

(declare-fun e!720781 () Bool)

(assert (=> d!138875 (=> res!842716 e!720781)))

(assert (=> d!138875 (= res!842716 (or ((_ is Nil!28488) l!706) ((_ is Nil!28488) (t!42019 l!706))))))

(assert (=> d!138875 (= (isStrictlySorted!787 l!706) e!720781)))

(declare-fun b!1265566 () Bool)

(declare-fun e!720783 () Bool)

(assert (=> b!1265566 (= e!720781 e!720783)))

(declare-fun res!842718 () Bool)

(assert (=> b!1265566 (=> (not res!842718) (not e!720783))))

(assert (=> b!1265566 (= res!842718 (bvslt (_1!10668 (h!29696 l!706)) (_1!10668 (h!29696 (t!42019 l!706)))))))

(declare-fun b!1265568 () Bool)

(assert (=> b!1265568 (= e!720783 (isStrictlySorted!787 (t!42019 l!706)))))

(assert (= (and d!138875 (not res!842716)) b!1265566))

(assert (= (and b!1265566 res!842718) b!1265568))

(assert (=> b!1265568 m!1165639))

(assert (=> start!106482 d!138875))

(declare-fun d!138878 () Bool)

(declare-fun res!842731 () Bool)

(declare-fun e!720799 () Bool)

(assert (=> d!138878 (=> res!842731 e!720799)))

(assert (=> d!138878 (= res!842731 (and ((_ is Cons!28487) l!706) (= (_1!10668 (h!29696 l!706)) key1!31)))))

(assert (=> d!138878 (= (containsKey!648 l!706 key1!31) e!720799)))

(declare-fun b!1265587 () Bool)

(declare-fun e!720801 () Bool)

(assert (=> b!1265587 (= e!720799 e!720801)))

(declare-fun res!842733 () Bool)

(assert (=> b!1265587 (=> (not res!842733) (not e!720801))))

(assert (=> b!1265587 (= res!842733 (and (or (not ((_ is Cons!28487) l!706)) (bvsle (_1!10668 (h!29696 l!706)) key1!31)) ((_ is Cons!28487) l!706) (bvslt (_1!10668 (h!29696 l!706)) key1!31)))))

(declare-fun b!1265589 () Bool)

(assert (=> b!1265589 (= e!720801 (containsKey!648 (t!42019 l!706) key1!31))))

(assert (= (and d!138878 (not res!842731)) b!1265587))

(assert (= (and b!1265587 res!842733) b!1265589))

(declare-fun m!1165656 () Bool)

(assert (=> b!1265589 m!1165656))

(assert (=> b!1265528 d!138878))

(declare-fun b!1265599 () Bool)

(declare-fun e!720807 () Bool)

(declare-fun tp!96371 () Bool)

(assert (=> b!1265599 (= e!720807 (and tp_is_empty!32511 tp!96371))))

(assert (=> b!1265531 (= tp!96360 e!720807)))

(assert (= (and b!1265531 ((_ is Cons!28487) (t!42019 l!706))) b!1265599))

(check-sat (not b!1265559) (not b!1265568) (not b!1265589) tp_is_empty!32511 (not b!1265599))
