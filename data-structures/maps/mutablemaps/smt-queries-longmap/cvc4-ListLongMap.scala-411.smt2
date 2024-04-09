; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7706 () Bool)

(assert start!7706)

(declare-fun b!49080 () Bool)

(declare-fun res!28452 () Bool)

(declare-fun e!31521 () Bool)

(assert (=> b!49080 (=> (not res!28452) (not e!31521))))

(declare-datatypes ((B!984 0))(
  ( (B!985 (val!1112 Int)) )
))
(declare-datatypes ((tuple2!1810 0))(
  ( (tuple2!1811 (_1!915 (_ BitVec 64)) (_2!915 B!984)) )
))
(declare-datatypes ((List!1328 0))(
  ( (Nil!1325) (Cons!1324 (h!1904 tuple2!1810) (t!4367 List!1328)) )
))
(declare-fun l!1333 () List!1328)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!121 (List!1328 (_ BitVec 64)) Bool)

(assert (=> b!49080 (= res!28452 (not (containsKey!121 l!1333 newKey!147)))))

(declare-fun b!49081 () Bool)

(declare-fun res!28450 () Bool)

(assert (=> b!49081 (=> (not res!28450) (not e!31521))))

(assert (=> b!49081 (= res!28450 (not (is-Nil!1325 l!1333)))))

(declare-fun b!49082 () Bool)

(declare-fun ListPrimitiveSize!54 (List!1328) Int)

(assert (=> b!49082 (= e!31521 (>= (ListPrimitiveSize!54 (t!4367 l!1333)) (ListPrimitiveSize!54 l!1333)))))

(declare-fun b!49083 () Bool)

(declare-fun e!31522 () Bool)

(declare-fun tp_is_empty!2135 () Bool)

(declare-fun tp!6482 () Bool)

(assert (=> b!49083 (= e!31522 (and tp_is_empty!2135 tp!6482))))

(declare-fun res!28451 () Bool)

(assert (=> start!7706 (=> (not res!28451) (not e!31521))))

(declare-fun isStrictlySorted!269 (List!1328) Bool)

(assert (=> start!7706 (= res!28451 (isStrictlySorted!269 l!1333))))

(assert (=> start!7706 e!31521))

(assert (=> start!7706 e!31522))

(assert (=> start!7706 true))

(assert (= (and start!7706 res!28451) b!49080))

(assert (= (and b!49080 res!28452) b!49081))

(assert (= (and b!49081 res!28450) b!49082))

(assert (= (and start!7706 (is-Cons!1324 l!1333)) b!49083))

(declare-fun m!42649 () Bool)

(assert (=> b!49080 m!42649))

(declare-fun m!42651 () Bool)

(assert (=> b!49082 m!42651))

(declare-fun m!42653 () Bool)

(assert (=> b!49082 m!42653))

(declare-fun m!42655 () Bool)

(assert (=> start!7706 m!42655))

(push 1)

(assert (not b!49080))

(assert tp_is_empty!2135)

(assert (not b!49083))

(assert (not b!49082))

(assert (not start!7706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9803 () Bool)

(declare-fun res!28469 () Bool)

(declare-fun e!31539 () Bool)

(assert (=> d!9803 (=> res!28469 e!31539)))

(assert (=> d!9803 (= res!28469 (and (is-Cons!1324 l!1333) (= (_1!915 (h!1904 l!1333)) newKey!147)))))

(assert (=> d!9803 (= (containsKey!121 l!1333 newKey!147) e!31539)))

(declare-fun b!49100 () Bool)

(declare-fun e!31540 () Bool)

(assert (=> b!49100 (= e!31539 e!31540)))

(declare-fun res!28470 () Bool)

(assert (=> b!49100 (=> (not res!28470) (not e!31540))))

(assert (=> b!49100 (= res!28470 (and (or (not (is-Cons!1324 l!1333)) (bvsle (_1!915 (h!1904 l!1333)) newKey!147)) (is-Cons!1324 l!1333) (bvslt (_1!915 (h!1904 l!1333)) newKey!147)))))

(declare-fun b!49101 () Bool)

(assert (=> b!49101 (= e!31540 (containsKey!121 (t!4367 l!1333) newKey!147))))

(assert (= (and d!9803 (not res!28469)) b!49100))

(assert (= (and b!49100 res!28470) b!49101))

(declare-fun m!42661 () Bool)

(assert (=> b!49101 m!42661))

(assert (=> b!49080 d!9803))

(declare-fun d!9809 () Bool)

(declare-fun lt!20725 () Int)

(assert (=> d!9809 (>= lt!20725 0)))

(declare-fun e!31550 () Int)

(assert (=> d!9809 (= lt!20725 e!31550)))

(declare-fun c!6622 () Bool)

(assert (=> d!9809 (= c!6622 (is-Nil!1325 (t!4367 l!1333)))))

(assert (=> d!9809 (= (ListPrimitiveSize!54 (t!4367 l!1333)) lt!20725)))

(declare-fun b!49120 () Bool)

(assert (=> b!49120 (= e!31550 0)))

(declare-fun b!49121 () Bool)

(assert (=> b!49121 (= e!31550 (+ 1 (ListPrimitiveSize!54 (t!4367 (t!4367 l!1333)))))))

(assert (= (and d!9809 c!6622) b!49120))

(assert (= (and d!9809 (not c!6622)) b!49121))

(declare-fun m!42667 () Bool)

(assert (=> b!49121 m!42667))

(assert (=> b!49082 d!9809))

(declare-fun d!9817 () Bool)

(declare-fun lt!20727 () Int)

(assert (=> d!9817 (>= lt!20727 0)))

(declare-fun e!31552 () Int)

(assert (=> d!9817 (= lt!20727 e!31552)))

(declare-fun c!6624 () Bool)

(assert (=> d!9817 (= c!6624 (is-Nil!1325 l!1333))))

(assert (=> d!9817 (= (ListPrimitiveSize!54 l!1333) lt!20727)))

(declare-fun b!49124 () Bool)

(assert (=> b!49124 (= e!31552 0)))

(declare-fun b!49125 () Bool)

(assert (=> b!49125 (= e!31552 (+ 1 (ListPrimitiveSize!54 (t!4367 l!1333))))))

(assert (= (and d!9817 c!6624) b!49124))

(assert (= (and d!9817 (not c!6624)) b!49125))

(assert (=> b!49125 m!42651))

(assert (=> b!49082 d!9817))

(declare-fun d!9821 () Bool)

(declare-fun res!28485 () Bool)

(declare-fun e!31567 () Bool)

(assert (=> d!9821 (=> res!28485 e!31567)))

(assert (=> d!9821 (= res!28485 (or (is-Nil!1325 l!1333) (is-Nil!1325 (t!4367 l!1333))))))

(assert (=> d!9821 (= (isStrictlySorted!269 l!1333) e!31567)))

(declare-fun b!49140 () Bool)

(declare-fun e!31568 () Bool)

(assert (=> b!49140 (= e!31567 e!31568)))

(declare-fun res!28486 () Bool)

(assert (=> b!49140 (=> (not res!28486) (not e!31568))))

(assert (=> b!49140 (= res!28486 (bvslt (_1!915 (h!1904 l!1333)) (_1!915 (h!1904 (t!4367 l!1333)))))))

(declare-fun b!49141 () Bool)

(assert (=> b!49141 (= e!31568 (isStrictlySorted!269 (t!4367 l!1333)))))

(assert (= (and d!9821 (not res!28485)) b!49140))

(assert (= (and b!49140 res!28486) b!49141))

(declare-fun m!42671 () Bool)

(assert (=> b!49141 m!42671))

(assert (=> start!7706 d!9821))

(declare-fun b!49157 () Bool)

(declare-fun e!31578 () Bool)

(declare-fun tp!6490 () Bool)

(assert (=> b!49157 (= e!31578 (and tp_is_empty!2135 tp!6490))))

(assert (=> b!49083 (= tp!6482 e!31578)))

(assert (= (and b!49083 (is-Cons!1324 (t!4367 l!1333))) b!49157))

(push 1)

