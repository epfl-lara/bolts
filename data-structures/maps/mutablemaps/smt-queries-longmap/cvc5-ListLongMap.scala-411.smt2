; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7702 () Bool)

(assert start!7702)

(declare-fun res!28433 () Bool)

(declare-fun e!31509 () Bool)

(assert (=> start!7702 (=> (not res!28433) (not e!31509))))

(declare-datatypes ((B!980 0))(
  ( (B!981 (val!1110 Int)) )
))
(declare-datatypes ((tuple2!1806 0))(
  ( (tuple2!1807 (_1!913 (_ BitVec 64)) (_2!913 B!980)) )
))
(declare-datatypes ((List!1326 0))(
  ( (Nil!1323) (Cons!1322 (h!1902 tuple2!1806) (t!4365 List!1326)) )
))
(declare-fun l!1333 () List!1326)

(declare-fun isStrictlySorted!267 (List!1326) Bool)

(assert (=> start!7702 (= res!28433 (isStrictlySorted!267 l!1333))))

(assert (=> start!7702 e!31509))

(declare-fun e!31510 () Bool)

(assert (=> start!7702 e!31510))

(assert (=> start!7702 true))

(declare-fun b!49058 () Bool)

(declare-fun ListPrimitiveSize!52 (List!1326) Int)

(assert (=> b!49058 (= e!31509 (>= (ListPrimitiveSize!52 (t!4365 l!1333)) (ListPrimitiveSize!52 l!1333)))))

(declare-fun b!49059 () Bool)

(declare-fun tp_is_empty!2131 () Bool)

(declare-fun tp!6476 () Bool)

(assert (=> b!49059 (= e!31510 (and tp_is_empty!2131 tp!6476))))

(declare-fun b!49057 () Bool)

(declare-fun res!28432 () Bool)

(assert (=> b!49057 (=> (not res!28432) (not e!31509))))

(assert (=> b!49057 (= res!28432 (not (is-Nil!1323 l!1333)))))

(declare-fun b!49056 () Bool)

(declare-fun res!28434 () Bool)

(assert (=> b!49056 (=> (not res!28434) (not e!31509))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!119 (List!1326 (_ BitVec 64)) Bool)

(assert (=> b!49056 (= res!28434 (not (containsKey!119 l!1333 newKey!147)))))

(assert (= (and start!7702 res!28433) b!49056))

(assert (= (and b!49056 res!28434) b!49057))

(assert (= (and b!49057 res!28432) b!49058))

(assert (= (and start!7702 (is-Cons!1322 l!1333)) b!49059))

(declare-fun m!42633 () Bool)

(assert (=> start!7702 m!42633))

(declare-fun m!42635 () Bool)

(assert (=> b!49058 m!42635))

(declare-fun m!42637 () Bool)

(assert (=> b!49058 m!42637))

(declare-fun m!42639 () Bool)

(assert (=> b!49056 m!42639))

(push 1)

(assert (not b!49058))

(assert (not start!7702))

(assert tp_is_empty!2131)

(assert (not b!49056))

(assert (not b!49059))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9801 () Bool)

(declare-fun res!28465 () Bool)

(declare-fun e!31535 () Bool)

(assert (=> d!9801 (=> res!28465 e!31535)))

(assert (=> d!9801 (= res!28465 (or (is-Nil!1323 l!1333) (is-Nil!1323 (t!4365 l!1333))))))

(assert (=> d!9801 (= (isStrictlySorted!267 l!1333) e!31535)))

(declare-fun b!49096 () Bool)

(declare-fun e!31536 () Bool)

(assert (=> b!49096 (= e!31535 e!31536)))

(declare-fun res!28466 () Bool)

(assert (=> b!49096 (=> (not res!28466) (not e!31536))))

(assert (=> b!49096 (= res!28466 (bvslt (_1!913 (h!1902 l!1333)) (_1!913 (h!1902 (t!4365 l!1333)))))))

(declare-fun b!49097 () Bool)

(assert (=> b!49097 (= e!31536 (isStrictlySorted!267 (t!4365 l!1333)))))

(assert (= (and d!9801 (not res!28465)) b!49096))

(assert (= (and b!49096 res!28466) b!49097))

(declare-fun m!42657 () Bool)

(assert (=> b!49097 m!42657))

(assert (=> start!7702 d!9801))

(declare-fun d!9805 () Bool)

(declare-fun lt!20722 () Int)

(assert (=> d!9805 (>= lt!20722 0)))

(declare-fun e!31547 () Int)

(assert (=> d!9805 (= lt!20722 e!31547)))

(declare-fun c!6619 () Bool)

(assert (=> d!9805 (= c!6619 (is-Nil!1323 (t!4365 l!1333)))))

(assert (=> d!9805 (= (ListPrimitiveSize!52 (t!4365 l!1333)) lt!20722)))

(declare-fun b!49114 () Bool)

(assert (=> b!49114 (= e!31547 0)))

(declare-fun b!49115 () Bool)

(assert (=> b!49115 (= e!31547 (+ 1 (ListPrimitiveSize!52 (t!4365 (t!4365 l!1333)))))))

(assert (= (and d!9805 c!6619) b!49114))

(assert (= (and d!9805 (not c!6619)) b!49115))

(declare-fun m!42663 () Bool)

(assert (=> b!49115 m!42663))

(assert (=> b!49058 d!9805))

(declare-fun d!9811 () Bool)

(declare-fun lt!20724 () Int)

(assert (=> d!9811 (>= lt!20724 0)))

(declare-fun e!31549 () Int)

(assert (=> d!9811 (= lt!20724 e!31549)))

(declare-fun c!6621 () Bool)

(assert (=> d!9811 (= c!6621 (is-Nil!1323 l!1333))))

(assert (=> d!9811 (= (ListPrimitiveSize!52 l!1333) lt!20724)))

(declare-fun b!49118 () Bool)

(assert (=> b!49118 (= e!31549 0)))

(declare-fun b!49119 () Bool)

(assert (=> b!49119 (= e!31549 (+ 1 (ListPrimitiveSize!52 (t!4365 l!1333))))))

(assert (= (and d!9811 c!6621) b!49118))

(assert (= (and d!9811 (not c!6621)) b!49119))

(assert (=> b!49119 m!42635))

(assert (=> b!49058 d!9811))

(declare-fun d!9815 () Bool)

(declare-fun res!28487 () Bool)

(declare-fun e!31569 () Bool)

(assert (=> d!9815 (=> res!28487 e!31569)))

(assert (=> d!9815 (= res!28487 (and (is-Cons!1322 l!1333) (= (_1!913 (h!1902 l!1333)) newKey!147)))))

(assert (=> d!9815 (= (containsKey!119 l!1333 newKey!147) e!31569)))

(declare-fun b!49142 () Bool)

(declare-fun e!31570 () Bool)

(assert (=> b!49142 (= e!31569 e!31570)))

(declare-fun res!28488 () Bool)

(assert (=> b!49142 (=> (not res!28488) (not e!31570))))

(assert (=> b!49142 (= res!28488 (and (or (not (is-Cons!1322 l!1333)) (bvsle (_1!913 (h!1902 l!1333)) newKey!147)) (is-Cons!1322 l!1333) (bvslt (_1!913 (h!1902 l!1333)) newKey!147)))))

(declare-fun b!49143 () Bool)

(assert (=> b!49143 (= e!31570 (containsKey!119 (t!4365 l!1333) newKey!147))))

(assert (= (and d!9815 (not res!28487)) b!49142))

(assert (= (and b!49142 res!28488) b!49143))

(declare-fun m!42673 () Bool)

(assert (=> b!49143 m!42673))

(assert (=> b!49056 d!9815))

(declare-fun b!49158 () Bool)

(declare-fun e!31579 () Bool)

(declare-fun tp!6491 () Bool)

(assert (=> b!49158 (= e!31579 (and tp_is_empty!2131 tp!6491))))

(assert (=> b!49059 (= tp!6476 e!31579)))

(assert (= (and b!49059 (is-Cons!1322 (t!4365 l!1333))) b!49158))

(push 1)

