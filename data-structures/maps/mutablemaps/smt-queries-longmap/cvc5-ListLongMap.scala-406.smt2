; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7606 () Bool)

(assert start!7606)

(declare-fun b!48521 () Bool)

(declare-fun res!28142 () Bool)

(declare-fun e!31150 () Bool)

(assert (=> b!48521 (=> (not res!28142) (not e!31150))))

(declare-datatypes ((B!950 0))(
  ( (B!951 (val!1095 Int)) )
))
(declare-datatypes ((tuple2!1776 0))(
  ( (tuple2!1777 (_1!898 (_ BitVec 64)) (_2!898 B!950)) )
))
(declare-datatypes ((List!1311 0))(
  ( (Nil!1308) (Cons!1307 (h!1887 tuple2!1776) (t!4347 List!1311)) )
))
(declare-fun l!1333 () List!1311)

(declare-fun isStrictlySorted!255 (List!1311) Bool)

(assert (=> b!48521 (= res!28142 (isStrictlySorted!255 (t!4347 l!1333)))))

(declare-fun res!28143 () Bool)

(assert (=> start!7606 (=> (not res!28143) (not e!31150))))

(assert (=> start!7606 (= res!28143 (isStrictlySorted!255 l!1333))))

(assert (=> start!7606 e!31150))

(declare-fun e!31149 () Bool)

(assert (=> start!7606 e!31149))

(assert (=> start!7606 true))

(declare-fun b!48522 () Bool)

(declare-fun res!28140 () Bool)

(assert (=> b!48522 (=> (not res!28140) (not e!31150))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!107 (List!1311 (_ BitVec 64)) Bool)

(assert (=> b!48522 (= res!28140 (not (containsKey!107 l!1333 newKey!147)))))

(declare-fun b!48523 () Bool)

(assert (=> b!48523 (= e!31150 (containsKey!107 (t!4347 l!1333) newKey!147))))

(declare-fun b!48524 () Bool)

(declare-fun res!28141 () Bool)

(assert (=> b!48524 (=> (not res!28141) (not e!31150))))

(assert (=> b!48524 (= res!28141 (not (is-Nil!1308 l!1333)))))

(declare-fun b!48525 () Bool)

(declare-fun tp_is_empty!2101 () Bool)

(declare-fun tp!6401 () Bool)

(assert (=> b!48525 (= e!31149 (and tp_is_empty!2101 tp!6401))))

(assert (= (and start!7606 res!28143) b!48522))

(assert (= (and b!48522 res!28140) b!48524))

(assert (= (and b!48524 res!28141) b!48521))

(assert (= (and b!48521 res!28142) b!48523))

(assert (= (and start!7606 (is-Cons!1307 l!1333)) b!48525))

(declare-fun m!42345 () Bool)

(assert (=> b!48521 m!42345))

(declare-fun m!42347 () Bool)

(assert (=> start!7606 m!42347))

(declare-fun m!42349 () Bool)

(assert (=> b!48522 m!42349))

(declare-fun m!42351 () Bool)

(assert (=> b!48523 m!42351))

(push 1)

(assert (not b!48525))

(assert (not start!7606))

(assert (not b!48521))

(assert (not b!48522))

(assert (not b!48523))

(assert tp_is_empty!2101)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9664 () Bool)

(declare-fun res!28180 () Bool)

(declare-fun e!31175 () Bool)

(assert (=> d!9664 (=> res!28180 e!31175)))

(assert (=> d!9664 (= res!28180 (or (is-Nil!1308 l!1333) (is-Nil!1308 (t!4347 l!1333))))))

(assert (=> d!9664 (= (isStrictlySorted!255 l!1333) e!31175)))

(declare-fun b!48566 () Bool)

(declare-fun e!31176 () Bool)

(assert (=> b!48566 (= e!31175 e!31176)))

(declare-fun res!28181 () Bool)

(assert (=> b!48566 (=> (not res!28181) (not e!31176))))

(assert (=> b!48566 (= res!28181 (bvslt (_1!898 (h!1887 l!1333)) (_1!898 (h!1887 (t!4347 l!1333)))))))

(declare-fun b!48567 () Bool)

(assert (=> b!48567 (= e!31176 (isStrictlySorted!255 (t!4347 l!1333)))))

(assert (= (and d!9664 (not res!28180)) b!48566))

(assert (= (and b!48566 res!28181) b!48567))

(assert (=> b!48567 m!42345))

(assert (=> start!7606 d!9664))

(declare-fun d!9669 () Bool)

(declare-fun res!28200 () Bool)

(declare-fun e!31195 () Bool)

(assert (=> d!9669 (=> res!28200 e!31195)))

(assert (=> d!9669 (= res!28200 (and (is-Cons!1307 (t!4347 l!1333)) (= (_1!898 (h!1887 (t!4347 l!1333))) newKey!147)))))

(assert (=> d!9669 (= (containsKey!107 (t!4347 l!1333) newKey!147) e!31195)))

(declare-fun b!48588 () Bool)

(declare-fun e!31196 () Bool)

(assert (=> b!48588 (= e!31195 e!31196)))

(declare-fun res!28201 () Bool)

(assert (=> b!48588 (=> (not res!28201) (not e!31196))))

(assert (=> b!48588 (= res!28201 (and (or (not (is-Cons!1307 (t!4347 l!1333))) (bvsle (_1!898 (h!1887 (t!4347 l!1333))) newKey!147)) (is-Cons!1307 (t!4347 l!1333)) (bvslt (_1!898 (h!1887 (t!4347 l!1333))) newKey!147)))))

(declare-fun b!48589 () Bool)

(assert (=> b!48589 (= e!31196 (containsKey!107 (t!4347 (t!4347 l!1333)) newKey!147))))

(assert (= (and d!9669 (not res!28200)) b!48588))

(assert (= (and b!48588 res!28201) b!48589))

(declare-fun m!42373 () Bool)

(assert (=> b!48589 m!42373))

(assert (=> b!48523 d!9669))

(declare-fun d!9677 () Bool)

(declare-fun res!28202 () Bool)

(declare-fun e!31197 () Bool)

(assert (=> d!9677 (=> res!28202 e!31197)))

(assert (=> d!9677 (= res!28202 (and (is-Cons!1307 l!1333) (= (_1!898 (h!1887 l!1333)) newKey!147)))))

(assert (=> d!9677 (= (containsKey!107 l!1333 newKey!147) e!31197)))

(declare-fun b!48590 () Bool)

(declare-fun e!31198 () Bool)

(assert (=> b!48590 (= e!31197 e!31198)))

(declare-fun res!28203 () Bool)

(assert (=> b!48590 (=> (not res!28203) (not e!31198))))

(assert (=> b!48590 (= res!28203 (and (or (not (is-Cons!1307 l!1333)) (bvsle (_1!898 (h!1887 l!1333)) newKey!147)) (is-Cons!1307 l!1333) (bvslt (_1!898 (h!1887 l!1333)) newKey!147)))))

(declare-fun b!48591 () Bool)

(assert (=> b!48591 (= e!31198 (containsKey!107 (t!4347 l!1333) newKey!147))))

(assert (= (and d!9677 (not res!28202)) b!48590))

(assert (= (and b!48590 res!28203) b!48591))

(assert (=> b!48591 m!42351))

(assert (=> b!48522 d!9677))

(declare-fun d!9679 () Bool)

(declare-fun res!28208 () Bool)

(declare-fun e!31203 () Bool)

(assert (=> d!9679 (=> res!28208 e!31203)))

(assert (=> d!9679 (= res!28208 (or (is-Nil!1308 (t!4347 l!1333)) (is-Nil!1308 (t!4347 (t!4347 l!1333)))))))

(assert (=> d!9679 (= (isStrictlySorted!255 (t!4347 l!1333)) e!31203)))

(declare-fun b!48596 () Bool)

(declare-fun e!31204 () Bool)

(assert (=> b!48596 (= e!31203 e!31204)))

(declare-fun res!28209 () Bool)

(assert (=> b!48596 (=> (not res!28209) (not e!31204))))

(assert (=> b!48596 (= res!28209 (bvslt (_1!898 (h!1887 (t!4347 l!1333))) (_1!898 (h!1887 (t!4347 (t!4347 l!1333))))))))

(declare-fun b!48597 () Bool)

(assert (=> b!48597 (= e!31204 (isStrictlySorted!255 (t!4347 (t!4347 l!1333))))))

(assert (= (and d!9679 (not res!28208)) b!48596))

(assert (= (and b!48596 res!28209) b!48597))

(declare-fun m!42377 () Bool)

(assert (=> b!48597 m!42377))

(assert (=> b!48521 d!9679))

(declare-fun b!48612 () Bool)

(declare-fun e!31215 () Bool)

(declare-fun tp!6412 () Bool)

(assert (=> b!48612 (= e!31215 (and tp_is_empty!2101 tp!6412))))

(assert (=> b!48525 (= tp!6401 e!31215)))

(assert (= (and b!48525 (is-Cons!1307 (t!4347 l!1333))) b!48612))

(push 1)

(assert (not b!48589))

(assert (not b!48597))

(assert (not b!48591))

(assert (not b!48612))

(assert tp_is_empty!2101)

(assert (not b!48567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

