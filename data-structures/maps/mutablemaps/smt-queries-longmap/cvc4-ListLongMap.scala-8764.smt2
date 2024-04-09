; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106484 () Bool)

(assert start!106484)

(declare-fun b!1265541 () Bool)

(declare-fun res!842692 () Bool)

(declare-fun e!720756 () Bool)

(assert (=> b!1265541 (=> (not res!842692) (not e!720756))))

(declare-datatypes ((B!1980 0))(
  ( (B!1981 (val!16325 Int)) )
))
(declare-datatypes ((tuple2!21318 0))(
  ( (tuple2!21319 (_1!10669 (_ BitVec 64)) (_2!10669 B!1980)) )
))
(declare-datatypes ((List!28492 0))(
  ( (Nil!28489) (Cons!28488 (h!29697 tuple2!21318) (t!42020 List!28492)) )
))
(declare-fun l!706 () List!28492)

(assert (=> b!1265541 (= res!842692 (is-Cons!28488 l!706))))

(declare-fun b!1265542 () Bool)

(declare-fun isStrictlySorted!788 (List!28492) Bool)

(assert (=> b!1265542 (= e!720756 (not (isStrictlySorted!788 (t!42020 l!706))))))

(declare-fun b!1265543 () Bool)

(declare-fun e!720757 () Bool)

(declare-fun tp_is_empty!32513 () Bool)

(declare-fun tp!96363 () Bool)

(assert (=> b!1265543 (= e!720757 (and tp_is_empty!32513 tp!96363))))

(declare-fun res!842691 () Bool)

(assert (=> start!106484 (=> (not res!842691) (not e!720756))))

(assert (=> start!106484 (= res!842691 (isStrictlySorted!788 l!706))))

(assert (=> start!106484 e!720756))

(assert (=> start!106484 e!720757))

(assert (=> start!106484 true))

(declare-fun b!1265540 () Bool)

(declare-fun res!842690 () Bool)

(assert (=> b!1265540 (=> (not res!842690) (not e!720756))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!649 (List!28492 (_ BitVec 64)) Bool)

(assert (=> b!1265540 (= res!842690 (not (containsKey!649 l!706 key1!31)))))

(assert (= (and start!106484 res!842691) b!1265540))

(assert (= (and b!1265540 res!842690) b!1265541))

(assert (= (and b!1265541 res!842692) b!1265542))

(assert (= (and start!106484 (is-Cons!28488 l!706)) b!1265543))

(declare-fun m!1165641 () Bool)

(assert (=> b!1265542 m!1165641))

(declare-fun m!1165643 () Bool)

(assert (=> start!106484 m!1165643))

(declare-fun m!1165645 () Bool)

(assert (=> b!1265540 m!1165645))

(push 1)

(assert (not b!1265540))

(assert tp_is_empty!32513)

(assert (not b!1265542))

(assert (not start!106484))

(assert (not b!1265543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138869 () Bool)

(declare-fun res!842709 () Bool)

(declare-fun e!720774 () Bool)

(assert (=> d!138869 (=> res!842709 e!720774)))

(assert (=> d!138869 (= res!842709 (or (is-Nil!28489 (t!42020 l!706)) (is-Nil!28489 (t!42020 (t!42020 l!706)))))))

(assert (=> d!138869 (= (isStrictlySorted!788 (t!42020 l!706)) e!720774)))

(declare-fun b!1265560 () Bool)

(declare-fun e!720775 () Bool)

(assert (=> b!1265560 (= e!720774 e!720775)))

(declare-fun res!842710 () Bool)

(assert (=> b!1265560 (=> (not res!842710) (not e!720775))))

(assert (=> b!1265560 (= res!842710 (bvslt (_1!10669 (h!29697 (t!42020 l!706))) (_1!10669 (h!29697 (t!42020 (t!42020 l!706))))))))

(declare-fun b!1265561 () Bool)

(assert (=> b!1265561 (= e!720775 (isStrictlySorted!788 (t!42020 (t!42020 l!706))))))

(assert (= (and d!138869 (not res!842709)) b!1265560))

(assert (= (and b!1265560 res!842710) b!1265561))

(declare-fun m!1165648 () Bool)

(assert (=> b!1265561 m!1165648))

(assert (=> b!1265542 d!138869))

(declare-fun d!138874 () Bool)

(declare-fun res!842715 () Bool)

(declare-fun e!720780 () Bool)

(assert (=> d!138874 (=> res!842715 e!720780)))

(assert (=> d!138874 (= res!842715 (or (is-Nil!28489 l!706) (is-Nil!28489 (t!42020 l!706))))))

(assert (=> d!138874 (= (isStrictlySorted!788 l!706) e!720780)))

(declare-fun b!1265567 () Bool)

(declare-fun e!720782 () Bool)

(assert (=> b!1265567 (= e!720780 e!720782)))

(declare-fun res!842717 () Bool)

(assert (=> b!1265567 (=> (not res!842717) (not e!720782))))

(assert (=> b!1265567 (= res!842717 (bvslt (_1!10669 (h!29697 l!706)) (_1!10669 (h!29697 (t!42020 l!706)))))))

(declare-fun b!1265569 () Bool)

(assert (=> b!1265569 (= e!720782 (isStrictlySorted!788 (t!42020 l!706)))))

(assert (= (and d!138874 (not res!842715)) b!1265567))

(assert (= (and b!1265567 res!842717) b!1265569))

(assert (=> b!1265569 m!1165641))

(assert (=> start!106484 d!138874))

(declare-fun d!138879 () Bool)

(declare-fun res!842732 () Bool)

(declare-fun e!720800 () Bool)

(assert (=> d!138879 (=> res!842732 e!720800)))

(assert (=> d!138879 (= res!842732 (and (is-Cons!28488 l!706) (= (_1!10669 (h!29697 l!706)) key1!31)))))

(assert (=> d!138879 (= (containsKey!649 l!706 key1!31) e!720800)))

(declare-fun b!1265588 () Bool)

(declare-fun e!720802 () Bool)

(assert (=> b!1265588 (= e!720800 e!720802)))

(declare-fun res!842734 () Bool)

(assert (=> b!1265588 (=> (not res!842734) (not e!720802))))

(assert (=> b!1265588 (= res!842734 (and (or (not (is-Cons!28488 l!706)) (bvsle (_1!10669 (h!29697 l!706)) key1!31)) (is-Cons!28488 l!706) (bvslt (_1!10669 (h!29697 l!706)) key1!31)))))

