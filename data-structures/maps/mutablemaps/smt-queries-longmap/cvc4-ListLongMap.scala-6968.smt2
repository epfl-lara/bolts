; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88064 () Bool)

(assert start!88064)

(declare-fun b!1016046 () Bool)

(assert (=> b!1016046 true))

(assert (=> b!1016046 true))

(declare-fun b!1016041 () Bool)

(declare-fun e!571606 () Bool)

(declare-fun tp_is_empty!23585 () Bool)

(declare-fun tp!70725 () Bool)

(assert (=> b!1016041 (= e!571606 (and tp_is_empty!23585 tp!70725))))

(declare-fun b!1016042 () Bool)

(declare-fun res!681616 () Bool)

(declare-fun e!571607 () Bool)

(assert (=> b!1016042 (=> (not res!681616) (not e!571607))))

(declare-datatypes ((B!1518 0))(
  ( (B!1519 (val!11843 Int)) )
))
(declare-datatypes ((tuple2!15322 0))(
  ( (tuple2!15323 (_1!7671 (_ BitVec 64)) (_2!7671 B!1518)) )
))
(declare-fun newHead!31 () tuple2!15322)

(declare-datatypes ((List!21623 0))(
  ( (Nil!21620) (Cons!21619 (h!22817 tuple2!15322) (t!30632 List!21623)) )
))
(declare-fun l!1114 () List!21623)

(declare-fun head!958 (List!21623) tuple2!15322)

(assert (=> b!1016042 (= res!681616 (bvslt (_1!7671 newHead!31) (_1!7671 (head!958 l!1114))))))

(declare-fun b!1016043 () Bool)

(declare-fun res!681613 () Bool)

(assert (=> b!1016043 (=> (not res!681613) (not e!571607))))

(declare-datatypes ((List!21624 0))(
  ( (Nil!21621) (Cons!21620 (h!22818 (_ BitVec 64)) (t!30633 List!21624)) )
))
(declare-fun keys!40 () List!21624)

(assert (=> b!1016043 (= res!681613 (not (is-Cons!21620 keys!40)))))

(declare-fun b!1016044 () Bool)

(declare-fun res!681614 () Bool)

(assert (=> b!1016044 (=> (not res!681614) (not e!571607))))

(declare-fun isEmpty!877 (List!21623) Bool)

(assert (=> b!1016044 (= res!681614 (not (isEmpty!877 l!1114)))))

(declare-fun res!681612 () Bool)

(assert (=> start!88064 (=> (not res!681612) (not e!571607))))

(declare-fun isStrictlySorted!607 (List!21623) Bool)

(assert (=> start!88064 (= res!681612 (isStrictlySorted!607 l!1114))))

(assert (=> start!88064 e!571607))

(assert (=> start!88064 e!571606))

(assert (=> start!88064 true))

(assert (=> start!88064 tp_is_empty!23585))

(declare-fun b!1016045 () Bool)

(assert (=> b!1016045 (= e!571607 (not (isStrictlySorted!607 (Cons!21619 newHead!31 l!1114))))))

(declare-fun res!681615 () Bool)

(assert (=> b!1016046 (=> (not res!681615) (not e!571607))))

(declare-fun lambda!998 () Int)

(declare-fun forall!276 (List!21624 Int) Bool)

(assert (=> b!1016046 (= res!681615 (forall!276 keys!40 lambda!998))))

(assert (= (and start!88064 res!681612) b!1016044))

(assert (= (and b!1016044 res!681614) b!1016046))

(assert (= (and b!1016046 res!681615) b!1016042))

(assert (= (and b!1016042 res!681616) b!1016043))

(assert (= (and b!1016043 res!681613) b!1016045))

(assert (= (and start!88064 (is-Cons!21619 l!1114)) b!1016041))

(declare-fun m!938033 () Bool)

(assert (=> b!1016046 m!938033))

(declare-fun m!938035 () Bool)

(assert (=> b!1016044 m!938035))

(declare-fun m!938037 () Bool)

(assert (=> b!1016042 m!938037))

(declare-fun m!938039 () Bool)

(assert (=> b!1016045 m!938039))

(declare-fun m!938041 () Bool)

(assert (=> start!88064 m!938041))

(push 1)

(assert (not b!1016042))

(assert (not b!1016046))

(assert (not b!1016044))

(assert tp_is_empty!23585)

(assert (not b!1016045))

(assert (not b!1016041))

(assert (not start!88064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121101 () Bool)

(declare-fun res!681645 () Bool)

(declare-fun e!571639 () Bool)

(assert (=> d!121101 (=> res!681645 e!571639)))

(assert (=> d!121101 (= res!681645 (or (is-Nil!21620 l!1114) (is-Nil!21620 (t!30632 l!1114))))))

(assert (=> d!121101 (= (isStrictlySorted!607 l!1114) e!571639)))

(declare-fun b!1016084 () Bool)

(declare-fun e!571640 () Bool)

(assert (=> b!1016084 (= e!571639 e!571640)))

(declare-fun res!681646 () Bool)

(assert (=> b!1016084 (=> (not res!681646) (not e!571640))))

(assert (=> b!1016084 (= res!681646 (bvslt (_1!7671 (h!22817 l!1114)) (_1!7671 (h!22817 (t!30632 l!1114)))))))

(declare-fun b!1016085 () Bool)

(assert (=> b!1016085 (= e!571640 (isStrictlySorted!607 (t!30632 l!1114)))))

(assert (= (and d!121101 (not res!681645)) b!1016084))

(assert (= (and b!1016084 res!681646) b!1016085))

(declare-fun m!938055 () Bool)

(assert (=> b!1016085 m!938055))

(assert (=> start!88064 d!121101))

(declare-fun d!121111 () Bool)

(declare-fun res!681649 () Bool)

(declare-fun e!571643 () Bool)

(assert (=> d!121111 (=> res!681649 e!571643)))

(assert (=> d!121111 (= res!681649 (or (is-Nil!21620 (Cons!21619 newHead!31 l!1114)) (is-Nil!21620 (t!30632 (Cons!21619 newHead!31 l!1114)))))))

(assert (=> d!121111 (= (isStrictlySorted!607 (Cons!21619 newHead!31 l!1114)) e!571643)))

(declare-fun b!1016088 () Bool)

(declare-fun e!571644 () Bool)

(assert (=> b!1016088 (= e!571643 e!571644)))

(declare-fun res!681650 () Bool)

(assert (=> b!1016088 (=> (not res!681650) (not e!571644))))

(assert (=> b!1016088 (= res!681650 (bvslt (_1!7671 (h!22817 (Cons!21619 newHead!31 l!1114))) (_1!7671 (h!22817 (t!30632 (Cons!21619 newHead!31 l!1114))))))))

(declare-fun b!1016089 () Bool)

(assert (=> b!1016089 (= e!571644 (isStrictlySorted!607 (t!30632 (Cons!21619 newHead!31 l!1114))))))

(assert (= (and d!121111 (not res!681649)) b!1016088))

(assert (= (and b!1016088 res!681650) b!1016089))

(declare-fun m!938061 () Bool)

(assert (=> b!1016089 m!938061))

(assert (=> b!1016045 d!121111))

(declare-fun d!121115 () Bool)

(declare-fun res!681657 () Bool)

(declare-fun e!571654 () Bool)

(assert (=> d!121115 (=> res!681657 e!571654)))

(assert (=> d!121115 (= res!681657 (is-Nil!21621 keys!40))))

(assert (=> d!121115 (= (forall!276 keys!40 lambda!998) e!571654)))

(declare-fun b!1016101 () Bool)

(declare-fun e!571655 () Bool)

(assert (=> b!1016101 (= e!571654 e!571655)))

(declare-fun res!681658 () Bool)

(assert (=> b!1016101 (=> (not res!681658) (not e!571655))))

(declare-fun dynLambda!1914 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016101 (= res!681658 (dynLambda!1914 lambda!998 (h!22818 keys!40)))))

(declare-fun b!1016102 () Bool)

(assert (=> b!1016102 (= e!571655 (forall!276 (t!30633 keys!40) lambda!998))))

(assert (= (and d!121115 (not res!681657)) b!1016101))

(assert (= (and b!1016101 res!681658) b!1016102))

(declare-fun b_lambda!15513 () Bool)

(assert (=> (not b_lambda!15513) (not b!1016101)))

(declare-fun m!938067 () Bool)

(assert (=> b!1016101 m!938067))

(declare-fun m!938069 () Bool)

(assert (=> b!1016102 m!938069))

(assert (=> b!1016046 d!121115))

(declare-fun d!121119 () Bool)

(assert (=> d!121119 (= (head!958 l!1114) (h!22817 l!1114))))

(assert (=> b!1016042 d!121119))

(declare-fun d!121121 () Bool)

(assert (=> d!121121 (= (isEmpty!877 l!1114) (is-Nil!21620 l!1114))))

(assert (=> b!1016044 d!121121))

(declare-fun b!1016107 () Bool)

(declare-fun e!571658 () Bool)

(declare-fun tp!70734 () Bool)

(assert (=> b!1016107 (= e!571658 (and tp_is_empty!23585 tp!70734))))

(assert (=> b!1016041 (= tp!70725 e!571658)))

(assert (= (and b!1016041 (is-Cons!21619 (t!30632 l!1114))) b!1016107))

(declare-fun b_lambda!15515 () Bool)

(assert (= b_lambda!15513 (or b!1016046 b_lambda!15515)))

(declare-fun bs!29497 () Bool)

(declare-fun d!121123 () Bool)

(assert (= bs!29497 (and d!121123 b!1016046)))

(declare-fun value!178 () B!1518)

(declare-datatypes ((Option!600 0))(
  ( (Some!599 (v!14448 B!1518)) (None!598) )
))
(declare-fun getValueByKey!549 (List!21623 (_ BitVec 64)) Option!600)

(assert (=> bs!29497 (= (dynLambda!1914 lambda!998 (h!22818 keys!40)) (= (getValueByKey!549 l!1114 (h!22818 keys!40)) (Some!599 value!178)))))

(declare-fun m!938071 () Bool)

(assert (=> bs!29497 m!938071))

(assert (=> b!1016101 d!121123))

(push 1)

