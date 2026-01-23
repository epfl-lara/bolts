; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!231200 () Bool)

(assert start!231200)

(declare-fun b!2358473 () Bool)

(declare-fun b_free!70365 () Bool)

(declare-fun b_next!71069 () Bool)

(assert (=> b!2358473 (= b_free!70365 (not b_next!71069))))

(declare-fun tp!754057 () Bool)

(declare-fun b_and!185293 () Bool)

(assert (=> b!2358473 (= tp!754057 b_and!185293)))

(declare-fun b!2358470 () Bool)

(declare-fun b_free!70367 () Bool)

(declare-fun b_next!71071 () Bool)

(assert (=> b!2358470 (= b_free!70367 (not b_next!71071))))

(declare-fun tp!754058 () Bool)

(declare-fun b_and!185295 () Bool)

(assert (=> b!2358470 (= tp!754058 b_and!185295)))

(declare-fun mapNonEmpty!15078 () Bool)

(declare-fun mapRes!15078 () Bool)

(declare-fun tp!754056 () Bool)

(declare-fun tp!754061 () Bool)

(assert (=> mapNonEmpty!15078 (= mapRes!15078 (and tp!754056 tp!754061))))

(declare-datatypes ((K!4942 0))(
  ( (K!4943 (val!8177 Int)) )
))
(declare-datatypes ((V!5144 0))(
  ( (V!5145 (val!8178 Int)) )
))
(declare-datatypes ((tuple2!27608 0))(
  ( (tuple2!27609 (_1!16345 K!4942) (_2!16345 V!5144)) )
))
(declare-datatypes ((List!27974 0))(
  ( (Nil!27876) (Cons!27876 (h!33277 tuple2!27608) (t!207845 List!27974)) )
))
(declare-fun mapValue!15078 () List!27974)

(declare-fun mapKey!15078 () (_ BitVec 32))

(declare-fun mapRest!15078 () (Array (_ BitVec 32) List!27974))

(declare-datatypes ((array!11329 0))(
  ( (array!11330 (arr!5046 (Array (_ BitVec 32) (_ BitVec 64))) (size!22070 (_ BitVec 32))) )
))
(declare-datatypes ((array!11331 0))(
  ( (array!11332 (arr!5047 (Array (_ BitVec 32) List!27974)) (size!22071 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6456 0))(
  ( (LongMapFixedSize!6457 (defaultEntry!3599 Int) (mask!8118 (_ BitVec 32)) (extraKeys!3476 (_ BitVec 32)) (zeroValue!3486 List!27974) (minValue!3486 List!27974) (_size!6503 (_ BitVec 32)) (_keys!3525 array!11329) (_values!3508 array!11331) (_vacant!3289 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3138 0))(
  ( (HashableExt!3137 (__x!18442 Int)) )
))
(declare-datatypes ((Cell!12729 0))(
  ( (Cell!12730 (v!30795 LongMapFixedSize!6456)) )
))
(declare-datatypes ((MutLongMap!3228 0))(
  ( (LongMap!3228 (underlying!6661 Cell!12729)) (MutLongMapExt!3227 (__x!18443 Int)) )
))
(declare-datatypes ((Cell!12731 0))(
  ( (Cell!12732 (v!30796 MutLongMap!3228)) )
))
(declare-datatypes ((MutableMap!3138 0))(
  ( (MutableMapExt!3137 (__x!18444 Int)) (HashMap!3138 (underlying!6662 Cell!12731) (hashF!5067 Hashable!3138) (_size!6504 (_ BitVec 32)) (defaultValue!3300 Int)) )
))
(declare-fun thiss!47723 () MutableMap!3138)

(assert (=> mapNonEmpty!15078 (= (arr!5047 (_values!3508 (v!30795 (underlying!6661 (v!30796 (underlying!6662 thiss!47723)))))) (store mapRest!15078 mapKey!15078 mapValue!15078))))

(declare-fun e!1506319 () Bool)

(declare-fun e!1506324 () Bool)

(assert (=> b!2358470 (= e!1506319 (and e!1506324 tp!754058))))

(declare-fun mapIsEmpty!15078 () Bool)

(assert (=> mapIsEmpty!15078 mapRes!15078))

(declare-fun res!1001037 () Bool)

(declare-fun e!1506320 () Bool)

(assert (=> start!231200 (=> (not res!1001037) (not e!1506320))))

(get-info :version)

(assert (=> start!231200 (= res!1001037 ((_ is MutableMapExt!3137) thiss!47723))))

(assert (=> start!231200 e!1506320))

(assert (=> start!231200 e!1506319))

(declare-fun tp_is_empty!11161 () Bool)

(assert (=> start!231200 tp_is_empty!11161))

(declare-fun b!2358471 () Bool)

(assert (=> b!2358471 (= e!1506320 false)))

(declare-fun lt!863578 () V!5144)

(declare-fun key!7163 () K!4942)

(declare-fun choose!13658 (MutableMap!3138 K!4942) V!5144)

(assert (=> b!2358471 (= lt!863578 (choose!13658 thiss!47723 key!7163))))

(declare-fun b!2358472 () Bool)

(declare-fun e!1506317 () Bool)

(declare-fun e!1506323 () Bool)

(assert (=> b!2358472 (= e!1506317 e!1506323)))

(declare-fun tp!754062 () Bool)

(declare-fun e!1506321 () Bool)

(declare-fun tp!754060 () Bool)

(declare-fun e!1506318 () Bool)

(declare-fun array_inv!3619 (array!11329) Bool)

(declare-fun array_inv!3620 (array!11331) Bool)

(assert (=> b!2358473 (= e!1506321 (and tp!754057 tp!754062 tp!754060 (array_inv!3619 (_keys!3525 (v!30795 (underlying!6661 (v!30796 (underlying!6662 thiss!47723)))))) (array_inv!3620 (_values!3508 (v!30795 (underlying!6661 (v!30796 (underlying!6662 thiss!47723)))))) e!1506318))))

(declare-fun b!2358474 () Bool)

(declare-fun tp!754059 () Bool)

(assert (=> b!2358474 (= e!1506318 (and tp!754059 mapRes!15078))))

(declare-fun condMapEmpty!15078 () Bool)

(declare-fun mapDefault!15078 () List!27974)

(assert (=> b!2358474 (= condMapEmpty!15078 (= (arr!5047 (_values!3508 (v!30795 (underlying!6661 (v!30796 (underlying!6662 thiss!47723)))))) ((as const (Array (_ BitVec 32) List!27974)) mapDefault!15078)))))

(declare-fun b!2358475 () Bool)

(assert (=> b!2358475 (= e!1506323 e!1506321)))

(declare-fun b!2358476 () Bool)

(declare-fun res!1001036 () Bool)

(assert (=> b!2358476 (=> (not res!1001036) (not e!1506320))))

(declare-fun valid!2421 (MutableMap!3138) Bool)

(assert (=> b!2358476 (= res!1001036 (valid!2421 thiss!47723))))

(declare-fun b!2358477 () Bool)

(declare-fun lt!863577 () MutLongMap!3228)

(assert (=> b!2358477 (= e!1506324 (and e!1506317 ((_ is LongMap!3228) lt!863577)))))

(assert (=> b!2358477 (= lt!863577 (v!30796 (underlying!6662 thiss!47723)))))

(assert (= (and start!231200 res!1001037) b!2358476))

(assert (= (and b!2358476 res!1001036) b!2358471))

(assert (= (and b!2358474 condMapEmpty!15078) mapIsEmpty!15078))

(assert (= (and b!2358474 (not condMapEmpty!15078)) mapNonEmpty!15078))

(assert (= b!2358473 b!2358474))

(assert (= b!2358475 b!2358473))

(assert (= b!2358472 b!2358475))

(assert (= (and b!2358477 ((_ is LongMap!3228) (v!30796 (underlying!6662 thiss!47723)))) b!2358472))

(assert (= b!2358470 b!2358477))

(assert (= (and start!231200 ((_ is HashMap!3138) thiss!47723)) b!2358470))

(declare-fun m!2771251 () Bool)

(assert (=> mapNonEmpty!15078 m!2771251))

(declare-fun m!2771253 () Bool)

(assert (=> b!2358471 m!2771253))

(declare-fun m!2771255 () Bool)

(assert (=> b!2358473 m!2771255))

(declare-fun m!2771257 () Bool)

(assert (=> b!2358473 m!2771257))

(declare-fun m!2771259 () Bool)

(assert (=> b!2358476 m!2771259))

(check-sat (not b!2358474) tp_is_empty!11161 b_and!185295 (not b!2358476) (not b!2358473) (not b!2358471) (not mapNonEmpty!15078) (not b_next!71069) (not b_next!71071) b_and!185293)
(check-sat b_and!185293 b_and!185295 (not b_next!71071) (not b_next!71069))
