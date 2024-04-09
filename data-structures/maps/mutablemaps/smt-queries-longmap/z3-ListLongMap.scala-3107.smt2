; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43692 () Bool)

(assert start!43692)

(declare-fun res!288140 () Bool)

(declare-fun e!284544 () Bool)

(assert (=> start!43692 (=> (not res!288140) (not e!284544))))

(declare-datatypes ((B!1066 0))(
  ( (B!1067 (val!6985 Int)) )
))
(declare-datatypes ((tuple2!9168 0))(
  ( (tuple2!9169 (_1!4594 (_ BitVec 64)) (_2!4594 B!1066)) )
))
(declare-datatypes ((List!9284 0))(
  ( (Nil!9281) (Cons!9280 (h!10136 tuple2!9168) (t!15514 List!9284)) )
))
(declare-datatypes ((ListLongMap!8095 0))(
  ( (ListLongMap!8096 (toList!4063 List!9284)) )
))
(declare-fun thiss!180 () ListLongMap!8095)

(declare-fun isEmpty!623 (ListLongMap!8095) Bool)

(assert (=> start!43692 (= res!288140 (not (isEmpty!623 thiss!180)))))

(assert (=> start!43692 e!284544))

(declare-fun e!284545 () Bool)

(declare-fun inv!15792 (ListLongMap!8095) Bool)

(assert (=> start!43692 (and (inv!15792 thiss!180) e!284545)))

(declare-fun b!483487 () Bool)

(assert (=> b!483487 (= e!284544 (= (toList!4063 thiss!180) Nil!9281))))

(declare-fun b!483488 () Bool)

(declare-fun tp!43378 () Bool)

(assert (=> b!483488 (= e!284545 tp!43378)))

(assert (= (and start!43692 res!288140) b!483487))

(assert (= start!43692 b!483488))

(declare-fun m!464477 () Bool)

(assert (=> start!43692 m!464477))

(declare-fun m!464479 () Bool)

(assert (=> start!43692 m!464479))

(check-sat (not start!43692) (not b!483488))
(check-sat)
(get-model)

(declare-fun d!76815 () Bool)

(declare-fun isEmpty!625 (List!9284) Bool)

(assert (=> d!76815 (= (isEmpty!623 thiss!180) (isEmpty!625 (toList!4063 thiss!180)))))

(declare-fun bs!15369 () Bool)

(assert (= bs!15369 d!76815))

(declare-fun m!464485 () Bool)

(assert (=> bs!15369 m!464485))

(assert (=> start!43692 d!76815))

(declare-fun d!76821 () Bool)

(declare-fun isStrictlySorted!389 (List!9284) Bool)

(assert (=> d!76821 (= (inv!15792 thiss!180) (isStrictlySorted!389 (toList!4063 thiss!180)))))

(declare-fun bs!15372 () Bool)

(assert (= bs!15372 d!76821))

(declare-fun m!464491 () Bool)

(assert (=> bs!15372 m!464491))

(assert (=> start!43692 d!76821))

(declare-fun b!483503 () Bool)

(declare-fun e!284556 () Bool)

(declare-fun tp_is_empty!13873 () Bool)

(declare-fun tp!43386 () Bool)

(assert (=> b!483503 (= e!284556 (and tp_is_empty!13873 tp!43386))))

(assert (=> b!483488 (= tp!43378 e!284556)))

(get-info :version)

(assert (= (and b!483488 ((_ is Cons!9280) (toList!4063 thiss!180))) b!483503))

(check-sat (not d!76821) (not d!76815) (not b!483503) tp_is_empty!13873)
(check-sat)
(get-model)

(declare-fun d!76827 () Bool)

(declare-fun res!288148 () Bool)

(declare-fun e!284565 () Bool)

(assert (=> d!76827 (=> res!288148 e!284565)))

(assert (=> d!76827 (= res!288148 (or ((_ is Nil!9281) (toList!4063 thiss!180)) ((_ is Nil!9281) (t!15514 (toList!4063 thiss!180)))))))

(assert (=> d!76827 (= (isStrictlySorted!389 (toList!4063 thiss!180)) e!284565)))

(declare-fun b!483514 () Bool)

(declare-fun e!284566 () Bool)

(assert (=> b!483514 (= e!284565 e!284566)))

(declare-fun res!288149 () Bool)

(assert (=> b!483514 (=> (not res!288149) (not e!284566))))

(assert (=> b!483514 (= res!288149 (bvslt (_1!4594 (h!10136 (toList!4063 thiss!180))) (_1!4594 (h!10136 (t!15514 (toList!4063 thiss!180))))))))

(declare-fun b!483515 () Bool)

(assert (=> b!483515 (= e!284566 (isStrictlySorted!389 (t!15514 (toList!4063 thiss!180))))))

(assert (= (and d!76827 (not res!288148)) b!483514))

(assert (= (and b!483514 res!288149) b!483515))

(declare-fun m!464497 () Bool)

(assert (=> b!483515 m!464497))

(assert (=> d!76821 d!76827))

(declare-fun d!76835 () Bool)

(assert (=> d!76835 (= (isEmpty!625 (toList!4063 thiss!180)) ((_ is Nil!9281) (toList!4063 thiss!180)))))

(assert (=> d!76815 d!76835))

(declare-fun b!483520 () Bool)

(declare-fun e!284571 () Bool)

(declare-fun tp!43391 () Bool)

(assert (=> b!483520 (= e!284571 (and tp_is_empty!13873 tp!43391))))

(assert (=> b!483503 (= tp!43386 e!284571)))

(assert (= (and b!483503 ((_ is Cons!9280) (t!15514 (toList!4063 thiss!180)))) b!483520))

(check-sat (not b!483515) (not b!483520) tp_is_empty!13873)
(check-sat)
