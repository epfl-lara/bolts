; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!485406 () Bool)

(assert start!485406)

(declare-fun b!4750622 () Bool)

(declare-fun res!2014377 () Bool)

(declare-fun e!2963383 () Bool)

(assert (=> b!4750622 (=> (not res!2014377) (not e!2963383))))

(declare-datatypes ((K!14498 0))(
  ( (K!14499 (val!19869 Int)) )
))
(declare-datatypes ((V!14744 0))(
  ( (V!14745 (val!19870 Int)) )
))
(declare-datatypes ((tuple2!54838 0))(
  ( (tuple2!54839 (_1!30713 K!14498) (_2!30713 V!14744)) )
))
(declare-fun t!14174 () tuple2!54838)

(declare-datatypes ((List!53201 0))(
  ( (Nil!53077) (Cons!53077 (h!59474 tuple2!54838) (t!360527 List!53201)) )
))
(declare-fun l!14304 () List!53201)

(declare-fun noDuplicateKeys!2139 (List!53201) Bool)

(assert (=> b!4750622 (= res!2014377 (noDuplicateKeys!2139 (Cons!53077 t!14174 l!14304)))))

(declare-datatypes ((ListMap!5523 0))(
  ( (ListMap!5524 (toList!6107 List!53201)) )
))
(declare-fun lt!1914224 () ListMap!5523)

(declare-fun b!4750623 () Bool)

(declare-fun e!2963386 () Bool)

(declare-fun acc!1214 () ListMap!5523)

(declare-fun eq!1208 (ListMap!5523 ListMap!5523) Bool)

(declare-fun addToMapMapFromBucket!1563 (List!53201 ListMap!5523) ListMap!5523)

(assert (=> b!4750623 (= e!2963386 (eq!1208 lt!1914224 (addToMapMapFromBucket!1563 l!14304 acc!1214)))))

(declare-fun res!2014375 () Bool)

(assert (=> start!485406 (=> (not res!2014375) (not e!2963383))))

(assert (=> start!485406 (= res!2014375 (noDuplicateKeys!2139 l!14304))))

(assert (=> start!485406 e!2963383))

(declare-fun e!2963384 () Bool)

(assert (=> start!485406 e!2963384))

(declare-fun tp_is_empty!31849 () Bool)

(declare-fun tp_is_empty!31851 () Bool)

(assert (=> start!485406 (and tp_is_empty!31849 tp_is_empty!31851)))

(declare-fun e!2963385 () Bool)

(declare-fun inv!68369 (ListMap!5523) Bool)

(assert (=> start!485406 (and (inv!68369 acc!1214) e!2963385)))

(declare-fun b!4750624 () Bool)

(declare-fun tp!1350106 () Bool)

(assert (=> b!4750624 (= e!2963384 (and tp_is_empty!31849 tp_is_empty!31851 tp!1350106))))

(declare-fun b!4750625 () Bool)

(assert (=> b!4750625 (= e!2963383 (not true))))

(assert (=> b!4750625 e!2963386))

(declare-fun res!2014374 () Bool)

(assert (=> b!4750625 (=> (not res!2014374) (not e!2963386))))

(declare-fun lt!1914222 () ListMap!5523)

(declare-fun +!2373 (ListMap!5523 tuple2!54838) ListMap!5523)

(assert (=> b!4750625 (= res!2014374 (eq!1208 (addToMapMapFromBucket!1563 (Cons!53077 t!14174 (t!360527 l!14304)) lt!1914222) (+!2373 lt!1914224 t!14174)))))

(declare-datatypes ((Unit!135502 0))(
  ( (Unit!135503) )
))
(declare-fun lt!1914223 () Unit!135502)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!453 (tuple2!54838 List!53201 ListMap!5523) Unit!135502)

(assert (=> b!4750625 (= lt!1914223 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!453 t!14174 (t!360527 l!14304) lt!1914222))))

(assert (=> b!4750625 (= lt!1914224 (addToMapMapFromBucket!1563 (t!360527 l!14304) lt!1914222))))

(assert (=> b!4750625 (= lt!1914222 (+!2373 acc!1214 (h!59474 l!14304)))))

(declare-fun b!4750626 () Bool)

(declare-fun tp!1350107 () Bool)

(assert (=> b!4750626 (= e!2963385 tp!1350107)))

(declare-fun b!4750627 () Bool)

(declare-fun res!2014376 () Bool)

(assert (=> b!4750627 (=> (not res!2014376) (not e!2963383))))

(assert (=> b!4750627 (= res!2014376 (not (is-Nil!53077 l!14304)))))

(assert (= (and start!485406 res!2014375) b!4750622))

(assert (= (and b!4750622 res!2014377) b!4750627))

(assert (= (and b!4750627 res!2014376) b!4750625))

(assert (= (and b!4750625 res!2014374) b!4750623))

(assert (= (and start!485406 (is-Cons!53077 l!14304)) b!4750624))

(assert (= start!485406 b!4750626))

(declare-fun m!5711601 () Bool)

(assert (=> b!4750622 m!5711601))

(declare-fun m!5711603 () Bool)

(assert (=> b!4750623 m!5711603))

(assert (=> b!4750623 m!5711603))

(declare-fun m!5711605 () Bool)

(assert (=> b!4750623 m!5711605))

(declare-fun m!5711607 () Bool)

(assert (=> start!485406 m!5711607))

(declare-fun m!5711609 () Bool)

(assert (=> start!485406 m!5711609))

(declare-fun m!5711611 () Bool)

(assert (=> b!4750625 m!5711611))

(declare-fun m!5711613 () Bool)

(assert (=> b!4750625 m!5711613))

(declare-fun m!5711615 () Bool)

(assert (=> b!4750625 m!5711615))

(declare-fun m!5711617 () Bool)

(assert (=> b!4750625 m!5711617))

(assert (=> b!4750625 m!5711613))

(assert (=> b!4750625 m!5711617))

(declare-fun m!5711619 () Bool)

(assert (=> b!4750625 m!5711619))

(declare-fun m!5711621 () Bool)

(assert (=> b!4750625 m!5711621))

(push 1)

(assert (not b!4750622))

(assert (not b!4750625))

(assert tp_is_empty!31851)

(assert (not b!4750624))

(assert (not b!4750626))

(assert tp_is_empty!31849)

(assert (not b!4750623))

(assert (not start!485406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

