; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7792 () Bool)

(assert start!7792)

(declare-datatypes ((B!1004 0))(
  ( (B!1005 (val!1122 Int)) )
))
(declare-datatypes ((tuple2!1830 0))(
  ( (tuple2!1831 (_1!925 (_ BitVec 64)) (_2!925 B!1004)) )
))
(declare-datatypes ((List!1338 0))(
  ( (Nil!1335) (Cons!1334 (h!1914 tuple2!1830) (t!4380 List!1338)) )
))
(declare-datatypes ((ListLongMap!1255 0))(
  ( (ListLongMap!1256 (toList!643 List!1338)) )
))
(declare-fun thiss!192 () ListLongMap!1255)

(declare-fun isStrictlySorted!273 (List!1338) Bool)

(assert (=> start!7792 (not (isStrictlySorted!273 (toList!643 thiss!192)))))

(declare-fun e!31789 () Bool)

(declare-fun inv!2304 (ListLongMap!1255) Bool)

(assert (=> start!7792 (and (inv!2304 thiss!192) e!31789)))

(declare-fun b!49473 () Bool)

(declare-fun tp!6533 () Bool)

(assert (=> b!49473 (= e!31789 tp!6533)))

(assert (= start!7792 b!49473))

(declare-fun m!42903 () Bool)

(assert (=> start!7792 m!42903))

(declare-fun m!42905 () Bool)

(assert (=> start!7792 m!42905))

(push 1)

(assert (not start!7792))

(assert (not b!49473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9933 () Bool)

(declare-fun res!28630 () Bool)

(declare-fun e!31808 () Bool)

(assert (=> d!9933 (=> res!28630 e!31808)))

(assert (=> d!9933 (= res!28630 (or (is-Nil!1335 (toList!643 thiss!192)) (is-Nil!1335 (t!4380 (toList!643 thiss!192)))))))

(assert (=> d!9933 (= (isStrictlySorted!273 (toList!643 thiss!192)) e!31808)))

(declare-fun b!49491 () Bool)

(declare-fun e!31809 () Bool)

(assert (=> b!49491 (= e!31808 e!31809)))

(declare-fun res!28631 () Bool)

(assert (=> b!49491 (=> (not res!28631) (not e!31809))))

(assert (=> b!49491 (= res!28631 (bvslt (_1!925 (h!1914 (toList!643 thiss!192))) (_1!925 (h!1914 (t!4380 (toList!643 thiss!192))))))))

(declare-fun b!49493 () Bool)

(assert (=> b!49493 (= e!31809 (isStrictlySorted!273 (t!4380 (toList!643 thiss!192))))))

(assert (= (and d!9933 (not res!28630)) b!49491))

(assert (= (and b!49491 res!28631) b!49493))

(declare-fun m!42915 () Bool)

(assert (=> b!49493 m!42915))

(assert (=> start!7792 d!9933))

(declare-fun d!9939 () Bool)

(assert (=> d!9939 (= (inv!2304 thiss!192) (isStrictlySorted!273 (toList!643 thiss!192)))))

(declare-fun bs!2297 () Bool)

(assert (= bs!2297 d!9939))

(assert (=> bs!2297 m!42903))

(assert (=> start!7792 d!9939))

(declare-fun b!49502 () Bool)

(declare-fun e!31816 () Bool)

(declare-fun tp_is_empty!2155 () Bool)

(declare-fun tp!6542 () Bool)

(assert (=> b!49502 (= e!31816 (and tp_is_empty!2155 tp!6542))))

(assert (=> b!49473 (= tp!6533 e!31816)))

(assert (= (and b!49473 (is-Cons!1334 (toList!643 thiss!192))) b!49502))

(push 1)

(assert (not b!49493))

(assert (not d!9939))

(assert (not b!49502))

(assert tp_is_empty!2155)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

