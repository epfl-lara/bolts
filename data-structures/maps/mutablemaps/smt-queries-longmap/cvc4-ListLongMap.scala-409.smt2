; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7640 () Bool)

(assert start!7640)

(declare-fun res!28259 () Bool)

(declare-fun e!31264 () Bool)

(assert (=> start!7640 (=> (not res!28259) (not e!31264))))

(declare-datatypes ((B!972 0))(
  ( (B!973 (val!1106 Int)) )
))
(declare-datatypes ((tuple2!1798 0))(
  ( (tuple2!1799 (_1!909 (_ BitVec 64)) (_2!909 B!972)) )
))
(declare-datatypes ((List!1322 0))(
  ( (Nil!1319) (Cons!1318 (h!1898 tuple2!1798) (t!4358 List!1322)) )
))
(declare-fun l!1333 () List!1322)

(declare-fun isStrictlySorted!263 (List!1322) Bool)

(assert (=> start!7640 (= res!28259 (isStrictlySorted!263 l!1333))))

(assert (=> start!7640 e!31264))

(declare-fun e!31263 () Bool)

(assert (=> start!7640 e!31263))

(assert (=> start!7640 true))

(declare-fun b!48688 () Bool)

(declare-fun res!28260 () Bool)

(assert (=> b!48688 (=> (not res!28260) (not e!31264))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!115 (List!1322 (_ BitVec 64)) Bool)

(assert (=> b!48688 (= res!28260 (not (containsKey!115 l!1333 newKey!147)))))

(declare-fun b!48689 () Bool)

(declare-fun ListPrimitiveSize!51 (List!1322) Int)

(assert (=> b!48689 (= e!31264 (< (ListPrimitiveSize!51 l!1333) 0))))

(declare-fun b!48690 () Bool)

(declare-fun tp_is_empty!2123 () Bool)

(declare-fun tp!6443 () Bool)

(assert (=> b!48690 (= e!31263 (and tp_is_empty!2123 tp!6443))))

(assert (= (and start!7640 res!28259) b!48688))

(assert (= (and b!48688 res!28260) b!48689))

(assert (= (and start!7640 (is-Cons!1318 l!1333)) b!48690))

(declare-fun m!42411 () Bool)

(assert (=> start!7640 m!42411))

(declare-fun m!42413 () Bool)

(assert (=> b!48688 m!42413))

(declare-fun m!42415 () Bool)

(assert (=> b!48689 m!42415))

(push 1)

(assert (not start!7640))

(assert tp_is_empty!2123)

(assert (not b!48688))

(assert (not b!48690))

(assert (not b!48689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9697 () Bool)

(declare-fun res!28277 () Bool)

(declare-fun e!31281 () Bool)

(assert (=> d!9697 (=> res!28277 e!31281)))

(assert (=> d!9697 (= res!28277 (and (is-Cons!1318 l!1333) (= (_1!909 (h!1898 l!1333)) newKey!147)))))

(assert (=> d!9697 (= (containsKey!115 l!1333 newKey!147) e!31281)))

(declare-fun b!48707 () Bool)

(declare-fun e!31282 () Bool)

(assert (=> b!48707 (= e!31281 e!31282)))

(declare-fun res!28278 () Bool)

(assert (=> b!48707 (=> (not res!28278) (not e!31282))))

(assert (=> b!48707 (= res!28278 (and (or (not (is-Cons!1318 l!1333)) (bvsle (_1!909 (h!1898 l!1333)) newKey!147)) (is-Cons!1318 l!1333) (bvslt (_1!909 (h!1898 l!1333)) newKey!147)))))

(declare-fun b!48708 () Bool)

(assert (=> b!48708 (= e!31282 (containsKey!115 (t!4358 l!1333) newKey!147))))

(assert (= (and d!9697 (not res!28277)) b!48707))

(assert (= (and b!48707 res!28278) b!48708))

(declare-fun m!42421 () Bool)

(assert (=> b!48708 m!42421))

(assert (=> b!48688 d!9697))

(declare-fun d!9703 () Bool)

(declare-fun lt!20694 () Int)

(assert (=> d!9703 (>= lt!20694 0)))

(declare-fun e!31291 () Int)

(assert (=> d!9703 (= lt!20694 e!31291)))

(declare-fun c!6546 () Bool)

(assert (=> d!9703 (= c!6546 (is-Nil!1319 l!1333))))

(assert (=> d!9703 (= (ListPrimitiveSize!51 l!1333) lt!20694)))

(declare-fun b!48725 () Bool)

(assert (=> b!48725 (= e!31291 0)))

(declare-fun b!48726 () Bool)

(assert (=> b!48726 (= e!31291 (+ 1 (ListPrimitiveSize!51 (t!4358 l!1333))))))

(assert (= (and d!9703 c!6546) b!48725))

(assert (= (and d!9703 (not c!6546)) b!48726))

(declare-fun m!42427 () Bool)

(assert (=> b!48726 m!42427))

(assert (=> b!48689 d!9703))

(declare-fun d!9709 () Bool)

(declare-fun res!28295 () Bool)

(declare-fun e!31310 () Bool)

(assert (=> d!9709 (=> res!28295 e!31310)))

(assert (=> d!9709 (= res!28295 (or (is-Nil!1319 l!1333) (is-Nil!1319 (t!4358 l!1333))))))

(assert (=> d!9709 (= (isStrictlySorted!263 l!1333) e!31310)))

(declare-fun b!48747 () Bool)

(declare-fun e!31311 () Bool)

(assert (=> b!48747 (= e!31310 e!31311)))

(declare-fun res!28296 () Bool)

(assert (=> b!48747 (=> (not res!28296) (not e!31311))))

(assert (=> b!48747 (= res!28296 (bvslt (_1!909 (h!1898 l!1333)) (_1!909 (h!1898 (t!4358 l!1333)))))))

(declare-fun b!48748 () Bool)

(assert (=> b!48748 (= e!31311 (isStrictlySorted!263 (t!4358 l!1333)))))

