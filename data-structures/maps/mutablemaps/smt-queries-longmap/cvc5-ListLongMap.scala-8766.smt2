; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106516 () Bool)

(assert start!106516)

(declare-fun b!1265721 () Bool)

(declare-fun res!842833 () Bool)

(declare-fun e!720889 () Bool)

(assert (=> b!1265721 (=> (not res!842833) (not e!720889))))

(declare-datatypes ((B!1988 0))(
  ( (B!1989 (val!16329 Int)) )
))
(declare-datatypes ((tuple2!21326 0))(
  ( (tuple2!21327 (_1!10673 (_ BitVec 64)) (_2!10673 B!1988)) )
))
(declare-datatypes ((List!28496 0))(
  ( (Nil!28493) (Cons!28492 (h!29701 tuple2!21326) (t!42024 List!28496)) )
))
(declare-fun l!706 () List!28496)

(declare-fun isStrictlySorted!792 (List!28496) Bool)

(assert (=> b!1265721 (= res!842833 (isStrictlySorted!792 (t!42024 l!706)))))

(declare-fun b!1265722 () Bool)

(declare-fun res!842829 () Bool)

(assert (=> b!1265722 (=> (not res!842829) (not e!720889))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!653 (List!28496 (_ BitVec 64)) Bool)

(assert (=> b!1265722 (= res!842829 (not (containsKey!653 l!706 key1!31)))))

(declare-fun b!1265723 () Bool)

(declare-fun res!842832 () Bool)

(assert (=> b!1265723 (=> (not res!842832) (not e!720889))))

(assert (=> b!1265723 (= res!842832 (not (containsKey!653 (t!42024 l!706) key1!31)))))

(declare-fun b!1265724 () Bool)

(declare-fun e!720888 () Bool)

(declare-fun tp_is_empty!32521 () Bool)

(declare-fun tp!96393 () Bool)

(assert (=> b!1265724 (= e!720888 (and tp_is_empty!32521 tp!96393))))

(declare-fun b!1265725 () Bool)

(declare-fun ListPrimitiveSize!154 (List!28496) Int)

(assert (=> b!1265725 (= e!720889 (>= (ListPrimitiveSize!154 (t!42024 l!706)) (ListPrimitiveSize!154 l!706)))))

(declare-fun b!1265726 () Bool)

(declare-fun res!842830 () Bool)

(assert (=> b!1265726 (=> (not res!842830) (not e!720889))))

(assert (=> b!1265726 (= res!842830 (is-Cons!28492 l!706))))

(declare-fun res!842831 () Bool)

(assert (=> start!106516 (=> (not res!842831) (not e!720889))))

(assert (=> start!106516 (= res!842831 (isStrictlySorted!792 l!706))))

(assert (=> start!106516 e!720889))

(assert (=> start!106516 e!720888))

(assert (=> start!106516 true))

(assert (= (and start!106516 res!842831) b!1265722))

(assert (= (and b!1265722 res!842829) b!1265726))

(assert (= (and b!1265726 res!842830) b!1265721))

(assert (= (and b!1265721 res!842833) b!1265723))

(assert (= (and b!1265723 res!842832) b!1265725))

(assert (= (and start!106516 (is-Cons!28492 l!706)) b!1265724))

(declare-fun m!1165695 () Bool)

(assert (=> b!1265722 m!1165695))

(declare-fun m!1165697 () Bool)

(assert (=> b!1265721 m!1165697))

(declare-fun m!1165699 () Bool)

(assert (=> b!1265725 m!1165699))

(declare-fun m!1165701 () Bool)

(assert (=> b!1265725 m!1165701))

(declare-fun m!1165703 () Bool)

(assert (=> start!106516 m!1165703))

(declare-fun m!1165705 () Bool)

(assert (=> b!1265723 m!1165705))

(push 1)

(assert (not start!106516))

(assert (not b!1265721))

(assert (not b!1265723))

(assert tp_is_empty!32521)

(assert (not b!1265725))

(assert (not b!1265722))

(assert (not b!1265724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138913 () Bool)

(declare-fun res!842868 () Bool)

(declare-fun e!720909 () Bool)

(assert (=> d!138913 (=> res!842868 e!720909)))

(assert (=> d!138913 (= res!842868 (or (is-Nil!28493 (t!42024 l!706)) (is-Nil!28493 (t!42024 (t!42024 l!706)))))))

(assert (=> d!138913 (= (isStrictlySorted!792 (t!42024 l!706)) e!720909)))

(declare-fun b!1265773 () Bool)

(declare-fun e!720910 () Bool)

(assert (=> b!1265773 (= e!720909 e!720910)))

(declare-fun res!842869 () Bool)

(assert (=> b!1265773 (=> (not res!842869) (not e!720910))))

(assert (=> b!1265773 (= res!842869 (bvslt (_1!10673 (h!29701 (t!42024 l!706))) (_1!10673 (h!29701 (t!42024 (t!42024 l!706))))))))

(declare-fun b!1265774 () Bool)

(assert (=> b!1265774 (= e!720910 (isStrictlySorted!792 (t!42024 (t!42024 l!706))))))

(assert (= (and d!138913 (not res!842868)) b!1265773))

(assert (= (and b!1265773 res!842869) b!1265774))

(declare-fun m!1165733 () Bool)

(assert (=> b!1265774 m!1165733))

(assert (=> b!1265721 d!138913))

(declare-fun d!138919 () Bool)

(declare-fun res!842886 () Bool)

(declare-fun e!720928 () Bool)

(assert (=> d!138919 (=> res!842886 e!720928)))

(assert (=> d!138919 (= res!842886 (and (is-Cons!28492 l!706) (= (_1!10673 (h!29701 l!706)) key1!31)))))

(assert (=> d!138919 (= (containsKey!653 l!706 key1!31) e!720928)))

(declare-fun b!1265791 () Bool)

(declare-fun e!720929 () Bool)

(assert (=> b!1265791 (= e!720928 e!720929)))

(declare-fun res!842887 () Bool)

(assert (=> b!1265791 (=> (not res!842887) (not e!720929))))

(assert (=> b!1265791 (= res!842887 (and (or (not (is-Cons!28492 l!706)) (bvsle (_1!10673 (h!29701 l!706)) key1!31)) (is-Cons!28492 l!706) (bvslt (_1!10673 (h!29701 l!706)) key1!31)))))

(declare-fun b!1265792 () Bool)

(assert (=> b!1265792 (= e!720929 (containsKey!653 (t!42024 l!706) key1!31))))

(assert (= (and d!138919 (not res!842886)) b!1265791))

(assert (= (and b!1265791 res!842887) b!1265792))

(assert (=> b!1265792 m!1165705))

(assert (=> b!1265722 d!138919))

(declare-fun d!138927 () Bool)

(declare-fun res!842888 () Bool)

(declare-fun e!720930 () Bool)

(assert (=> d!138927 (=> res!842888 e!720930)))

(assert (=> d!138927 (= res!842888 (and (is-Cons!28492 (t!42024 l!706)) (= (_1!10673 (h!29701 (t!42024 l!706))) key1!31)))))

(assert (=> d!138927 (= (containsKey!653 (t!42024 l!706) key1!31) e!720930)))

(declare-fun b!1265795 () Bool)

(declare-fun e!720931 () Bool)

(assert (=> b!1265795 (= e!720930 e!720931)))

(declare-fun res!842889 () Bool)

(assert (=> b!1265795 (=> (not res!842889) (not e!720931))))

(assert (=> b!1265795 (= res!842889 (and (or (not (is-Cons!28492 (t!42024 l!706))) (bvsle (_1!10673 (h!29701 (t!42024 l!706))) key1!31)) (is-Cons!28492 (t!42024 l!706)) (bvslt (_1!10673 (h!29701 (t!42024 l!706))) key1!31)))))

(declare-fun b!1265796 () Bool)

(assert (=> b!1265796 (= e!720931 (containsKey!653 (t!42024 (t!42024 l!706)) key1!31))))

(assert (= (and d!138927 (not res!842888)) b!1265795))

(assert (= (and b!1265795 res!842889) b!1265796))

(declare-fun m!1165737 () Bool)

(assert (=> b!1265796 m!1165737))

(assert (=> b!1265723 d!138927))

(declare-fun d!138929 () Bool)

(declare-fun res!842890 () Bool)

(declare-fun e!720932 () Bool)

(assert (=> d!138929 (=> res!842890 e!720932)))

(assert (=> d!138929 (= res!842890 (or (is-Nil!28493 l!706) (is-Nil!28493 (t!42024 l!706))))))

(assert (=> d!138929 (= (isStrictlySorted!792 l!706) e!720932)))

(declare-fun b!1265797 () Bool)

(declare-fun e!720933 () Bool)

(assert (=> b!1265797 (= e!720932 e!720933)))

(declare-fun res!842891 () Bool)

(assert (=> b!1265797 (=> (not res!842891) (not e!720933))))

(assert (=> b!1265797 (= res!842891 (bvslt (_1!10673 (h!29701 l!706)) (_1!10673 (h!29701 (t!42024 l!706)))))))

(declare-fun b!1265798 () Bool)

(assert (=> b!1265798 (= e!720933 (isStrictlySorted!792 (t!42024 l!706)))))

(assert (= (and d!138929 (not res!842890)) b!1265797))

(assert (= (and b!1265797 res!842891) b!1265798))

(assert (=> b!1265798 m!1165697))

(assert (=> start!106516 d!138929))

(declare-fun d!138931 () Bool)

(declare-fun lt!574005 () Int)

(assert (=> d!138931 (>= lt!574005 0)))

(declare-fun e!720941 () Int)

(assert (=> d!138931 (= lt!574005 e!720941)))

(declare-fun c!123281 () Bool)

(assert (=> d!138931 (= c!123281 (is-Nil!28493 (t!42024 l!706)))))

(assert (=> d!138931 (= (ListPrimitiveSize!154 (t!42024 l!706)) lt!574005)))

(declare-fun b!1265811 () Bool)

(assert (=> b!1265811 (= e!720941 0)))

(declare-fun b!1265812 () Bool)

(assert (=> b!1265812 (= e!720941 (+ 1 (ListPrimitiveSize!154 (t!42024 (t!42024 l!706)))))))

(assert (= (and d!138931 c!123281) b!1265811))

(assert (= (and d!138931 (not c!123281)) b!1265812))

(declare-fun m!1165741 () Bool)

(assert (=> b!1265812 m!1165741))

(assert (=> b!1265725 d!138931))

(declare-fun d!138937 () Bool)

(declare-fun lt!574007 () Int)

(assert (=> d!138937 (>= lt!574007 0)))

(declare-fun e!720943 () Int)

(assert (=> d!138937 (= lt!574007 e!720943)))

(declare-fun c!123283 () Bool)

(assert (=> d!138937 (= c!123283 (is-Nil!28493 l!706))))

(assert (=> d!138937 (= (ListPrimitiveSize!154 l!706) lt!574007)))

(declare-fun b!1265815 () Bool)

(assert (=> b!1265815 (= e!720943 0)))

(declare-fun b!1265816 () Bool)

(assert (=> b!1265816 (= e!720943 (+ 1 (ListPrimitiveSize!154 (t!42024 l!706))))))

(assert (= (and d!138937 c!123283) b!1265815))

(assert (= (and d!138937 (not c!123283)) b!1265816))

(assert (=> b!1265816 m!1165699))

(assert (=> b!1265725 d!138937))

(declare-fun b!1265821 () Bool)

(declare-fun e!720946 () Bool)

(declare-fun tp!96402 () Bool)

(assert (=> b!1265821 (= e!720946 (and tp_is_empty!32521 tp!96402))))

(assert (=> b!1265724 (= tp!96393 e!720946)))

(assert (= (and b!1265724 (is-Cons!28492 (t!42024 l!706))) b!1265821))

(push 1)

(assert (not b!1265774))

(assert (not b!1265796))

(assert (not b!1265812))

(assert (not b!1265821))

(assert tp_is_empty!32521)

(assert (not b!1265816))

(assert (not b!1265792))

(assert (not b!1265798))

(check-sat)

(pop 1)

(push 1)

(check-sat)

