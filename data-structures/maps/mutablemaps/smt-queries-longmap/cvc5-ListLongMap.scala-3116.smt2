; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43798 () Bool)

(assert start!43798)

(declare-fun res!288316 () Bool)

(declare-fun e!284757 () Bool)

(assert (=> start!43798 (=> (not res!288316) (not e!284757))))

(declare-datatypes ((B!1118 0))(
  ( (B!1119 (val!7011 Int)) )
))
(declare-datatypes ((tuple2!9220 0))(
  ( (tuple2!9221 (_1!4620 (_ BitVec 64)) (_2!4620 B!1118)) )
))
(declare-datatypes ((List!9310 0))(
  ( (Nil!9307) (Cons!9306 (h!10162 tuple2!9220) (t!15540 List!9310)) )
))
(declare-fun l!956 () List!9310)

(declare-fun isStrictlySorted!410 (List!9310) Bool)

(assert (=> start!43798 (= res!288316 (isStrictlySorted!410 l!956))))

(assert (=> start!43798 e!284757))

(declare-fun e!284758 () Bool)

(assert (=> start!43798 e!284758))

(assert (=> start!43798 true))

(declare-fun b!483777 () Bool)

(declare-fun res!288317 () Bool)

(assert (=> b!483777 (=> (not res!288317) (not e!284757))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!376 (List!9310 (_ BitVec 64)) Bool)

(assert (=> b!483777 (= res!288317 (not (containsKey!376 l!956 key!251)))))

(declare-fun b!483778 () Bool)

(declare-fun ListPrimitiveSize!61 (List!9310) Int)

(assert (=> b!483778 (= e!284757 (< (ListPrimitiveSize!61 l!956) 0))))

(declare-fun b!483779 () Bool)

(declare-fun tp_is_empty!13927 () Bool)

(declare-fun tp!43480 () Bool)

(assert (=> b!483779 (= e!284758 (and tp_is_empty!13927 tp!43480))))

(assert (= (and start!43798 res!288316) b!483777))

(assert (= (and b!483777 res!288317) b!483778))

(assert (= (and start!43798 (is-Cons!9306 l!956)) b!483779))

(declare-fun m!464683 () Bool)

(assert (=> start!43798 m!464683))

(declare-fun m!464685 () Bool)

(assert (=> b!483777 m!464685))

(declare-fun m!464687 () Bool)

(assert (=> b!483778 m!464687))

(push 1)

(assert tp_is_empty!13927)

(assert (not b!483779))

(assert (not b!483777))

(assert (not start!43798))

(assert (not b!483778))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76901 () Bool)

(declare-fun lt!219296 () Int)

(assert (=> d!76901 (>= lt!219296 0)))

(declare-fun e!284777 () Int)

(assert (=> d!76901 (= lt!219296 e!284777)))

(declare-fun c!58091 () Bool)

(assert (=> d!76901 (= c!58091 (is-Nil!9307 l!956))))

(assert (=> d!76901 (= (ListPrimitiveSize!61 l!956) lt!219296)))

(declare-fun b!483806 () Bool)

(assert (=> b!483806 (= e!284777 0)))

(declare-fun b!483807 () Bool)

(assert (=> b!483807 (= e!284777 (+ 1 (ListPrimitiveSize!61 (t!15540 l!956))))))

(assert (= (and d!76901 c!58091) b!483806))

(assert (= (and d!76901 (not c!58091)) b!483807))

(declare-fun m!464701 () Bool)

(assert (=> b!483807 m!464701))

(assert (=> b!483778 d!76901))

(declare-fun d!76905 () Bool)

(declare-fun res!288350 () Bool)

(declare-fun e!284796 () Bool)

(assert (=> d!76905 (=> res!288350 e!284796)))

(assert (=> d!76905 (= res!288350 (and (is-Cons!9306 l!956) (= (_1!4620 (h!10162 l!956)) key!251)))))

(assert (=> d!76905 (= (containsKey!376 l!956 key!251) e!284796)))

(declare-fun b!483828 () Bool)

(declare-fun e!284797 () Bool)

(assert (=> b!483828 (= e!284796 e!284797)))

(declare-fun res!288351 () Bool)

(assert (=> b!483828 (=> (not res!288351) (not e!284797))))

(assert (=> b!483828 (= res!288351 (and (or (not (is-Cons!9306 l!956)) (bvsle (_1!4620 (h!10162 l!956)) key!251)) (is-Cons!9306 l!956) (bvslt (_1!4620 (h!10162 l!956)) key!251)))))

(declare-fun b!483829 () Bool)

(assert (=> b!483829 (= e!284797 (containsKey!376 (t!15540 l!956) key!251))))

(assert (= (and d!76905 (not res!288350)) b!483828))

(assert (= (and b!483828 res!288351) b!483829))

(declare-fun m!464707 () Bool)

(assert (=> b!483829 m!464707))

(assert (=> b!483777 d!76905))

(declare-fun d!76911 () Bool)

(declare-fun res!288362 () Bool)

(declare-fun e!284812 () Bool)

(assert (=> d!76911 (=> res!288362 e!284812)))

(assert (=> d!76911 (= res!288362 (or (is-Nil!9307 l!956) (is-Nil!9307 (t!15540 l!956))))))

(assert (=> d!76911 (= (isStrictlySorted!410 l!956) e!284812)))

(declare-fun b!483848 () Bool)

(declare-fun e!284813 () Bool)

(assert (=> b!483848 (= e!284812 e!284813)))

(declare-fun res!288363 () Bool)

(assert (=> b!483848 (=> (not res!288363) (not e!284813))))

(assert (=> b!483848 (= res!288363 (bvslt (_1!4620 (h!10162 l!956)) (_1!4620 (h!10162 (t!15540 l!956)))))))

(declare-fun b!483849 () Bool)

(assert (=> b!483849 (= e!284813 (isStrictlySorted!410 (t!15540 l!956)))))

(assert (= (and d!76911 (not res!288362)) b!483848))

(assert (= (and b!483848 res!288363) b!483849))

(declare-fun m!464715 () Bool)

(assert (=> b!483849 m!464715))

(assert (=> start!43798 d!76911))

(declare-fun b!483858 () Bool)

(declare-fun e!284818 () Bool)

(declare-fun tp!43491 () Bool)

(assert (=> b!483858 (= e!284818 (and tp_is_empty!13927 tp!43491))))

(assert (=> b!483779 (= tp!43480 e!284818)))

(assert (= (and b!483779 (is-Cons!9306 (t!15540 l!956))) b!483858))

(push 1)

