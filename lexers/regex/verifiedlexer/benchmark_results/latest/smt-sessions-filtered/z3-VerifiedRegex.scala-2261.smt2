; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110766 () Bool)

(assert start!110766)

(declare-fun b!1256497 () Bool)

(declare-fun b_free!29727 () Bool)

(declare-fun b_next!30431 () Bool)

(assert (=> b!1256497 (= b_free!29727 (not b_next!30431))))

(declare-fun tp!370518 () Bool)

(declare-fun b_and!84871 () Bool)

(assert (=> b!1256497 (= tp!370518 b_and!84871)))

(declare-fun b!1256491 () Bool)

(declare-fun e!799707 () Bool)

(declare-fun e!799713 () Bool)

(assert (=> b!1256491 (= e!799707 e!799713)))

(declare-fun res!556361 () Bool)

(declare-fun e!799712 () Bool)

(assert (=> start!110766 (=> (not res!556361) (not e!799712))))

(declare-datatypes ((V!2928 0))(
  ( (V!2929 (val!4176 Int)) )
))
(declare-datatypes ((array!4594 0))(
  ( (array!4595 (arr!2049 (Array (_ BitVec 32) (_ BitVec 64))) (size!9940 (_ BitVec 32))) )
))
(declare-datatypes ((array!4596 0))(
  ( (array!4597 (arr!2050 (Array (_ BitVec 32) V!2928)) (size!9941 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2596 0))(
  ( (LongMapFixedSize!2597 (defaultEntry!1658 Int) (mask!4103 (_ BitVec 32)) (extraKeys!1545 (_ BitVec 32)) (zeroValue!1555 V!2928) (minValue!1555 V!2928) (_size!2692 (_ BitVec 32)) (_keys!1592 array!4594) (_values!1577 array!4596) (_vacant!1359 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5107 0))(
  ( (Cell!5108 (v!20753 LongMapFixedSize!2596)) )
))
(declare-datatypes ((MutLongMap!1298 0))(
  ( (LongMap!1298 (underlying!2816 Cell!5107)) (MutLongMapExt!1297 (__x!8192 Int)) )
))
(declare-fun thiss!47531 () MutLongMap!1298)

(declare-fun valid!1030 (MutLongMap!1298) Bool)

(assert (=> start!110766 (= res!556361 (valid!1030 thiss!47531))))

(assert (=> start!110766 e!799712))

(assert (=> start!110766 e!799707))

(assert (=> start!110766 true))

(declare-fun tp_is_empty!6491 () Bool)

(assert (=> start!110766 tp_is_empty!6491))

(declare-fun b!1256492 () Bool)

(declare-fun e!799708 () Bool)

(declare-fun mapRes!6240 () Bool)

(assert (=> b!1256492 (= e!799708 (and tp_is_empty!6491 mapRes!6240))))

(declare-fun condMapEmpty!6240 () Bool)

(declare-fun mapDefault!6240 () V!2928)

(assert (=> b!1256492 (= condMapEmpty!6240 (= (arr!2050 (_values!1577 (v!20753 (underlying!2816 thiss!47531)))) ((as const (Array (_ BitVec 32) V!2928)) mapDefault!6240)))))

(declare-fun b!1256493 () Bool)

(declare-fun e!799710 () Bool)

(assert (=> b!1256493 (= e!799713 e!799710)))

(declare-fun mapIsEmpty!6240 () Bool)

(assert (=> mapIsEmpty!6240 mapRes!6240))

(declare-fun b!1256494 () Bool)

(declare-fun res!556360 () Bool)

(assert (=> b!1256494 (=> (not res!556360) (not e!799712))))

(get-info :version)

(assert (=> b!1256494 (= res!556360 (not ((_ is LongMap!1298) thiss!47531)))))

(declare-fun b!1256495 () Bool)

(declare-fun e!799711 () Bool)

(assert (=> b!1256495 (= e!799711 false)))

(declare-fun lt!420560 () Bool)

(declare-datatypes ((tuple2!12446 0))(
  ( (tuple2!12447 (_1!7070 Bool) (_2!7070 MutLongMap!1298)) )
))
(declare-fun lt!420561 () tuple2!12446)

(declare-fun key!7099 () (_ BitVec 64))

(declare-datatypes ((tuple2!12448 0))(
  ( (tuple2!12449 (_1!7071 (_ BitVec 64)) (_2!7071 V!2928)) )
))
(declare-datatypes ((List!12624 0))(
  ( (Nil!12560) (Cons!12560 (h!17961 tuple2!12448) (t!115756 List!12624)) )
))
(declare-datatypes ((ListLongMap!131 0))(
  ( (ListLongMap!132 (toList!697 List!12624)) )
))
(declare-fun contains!2117 (ListLongMap!131 (_ BitVec 64)) Bool)

(declare-fun abstractMap!45 (MutLongMap!1298) ListLongMap!131)

(assert (=> b!1256495 (= lt!420560 (contains!2117 (abstractMap!45 (_2!7070 lt!420561)) key!7099))))

(declare-fun b!1256496 () Bool)

(assert (=> b!1256496 (= e!799712 e!799711)))

(declare-fun res!556362 () Bool)

(assert (=> b!1256496 (=> (not res!556362) (not e!799711))))

(assert (=> b!1256496 (= res!556362 (valid!1030 (_2!7070 lt!420561)))))

(declare-fun v!11775 () V!2928)

(declare-fun update!72 (MutLongMap!1298 (_ BitVec 64) V!2928) tuple2!12446)

(assert (=> b!1256496 (= lt!420561 (update!72 thiss!47531 key!7099 v!11775))))

(declare-fun mapNonEmpty!6240 () Bool)

(declare-fun tp!370519 () Bool)

(assert (=> mapNonEmpty!6240 (= mapRes!6240 (and tp!370519 tp_is_empty!6491))))

(declare-fun mapKey!6240 () (_ BitVec 32))

(declare-fun mapRest!6240 () (Array (_ BitVec 32) V!2928))

(declare-fun mapValue!6240 () V!2928)

(assert (=> mapNonEmpty!6240 (= (arr!2050 (_values!1577 (v!20753 (underlying!2816 thiss!47531)))) (store mapRest!6240 mapKey!6240 mapValue!6240))))

(declare-fun array_inv!1489 (array!4594) Bool)

(declare-fun array_inv!1490 (array!4596) Bool)

(assert (=> b!1256497 (= e!799710 (and tp!370518 tp_is_empty!6491 (array_inv!1489 (_keys!1592 (v!20753 (underlying!2816 thiss!47531)))) (array_inv!1490 (_values!1577 (v!20753 (underlying!2816 thiss!47531)))) e!799708))))

(declare-fun b!1256498 () Bool)

(declare-fun res!556363 () Bool)

(assert (=> b!1256498 (=> (not res!556363) (not e!799711))))

(assert (=> b!1256498 (= res!556363 (_1!7070 lt!420561))))

(assert (= (and start!110766 res!556361) b!1256494))

(assert (= (and b!1256494 res!556360) b!1256496))

(assert (= (and b!1256496 res!556362) b!1256498))

(assert (= (and b!1256498 res!556363) b!1256495))

(assert (= (and b!1256492 condMapEmpty!6240) mapIsEmpty!6240))

(assert (= (and b!1256492 (not condMapEmpty!6240)) mapNonEmpty!6240))

(assert (= b!1256497 b!1256492))

(assert (= b!1256493 b!1256497))

(assert (= b!1256491 b!1256493))

(assert (= (and start!110766 ((_ is LongMap!1298) thiss!47531)) b!1256491))

(declare-fun m!1414851 () Bool)

(assert (=> mapNonEmpty!6240 m!1414851))

(declare-fun m!1414853 () Bool)

(assert (=> b!1256496 m!1414853))

(declare-fun m!1414855 () Bool)

(assert (=> b!1256496 m!1414855))

(declare-fun m!1414857 () Bool)

(assert (=> b!1256495 m!1414857))

(assert (=> b!1256495 m!1414857))

(declare-fun m!1414859 () Bool)

(assert (=> b!1256495 m!1414859))

(declare-fun m!1414861 () Bool)

(assert (=> b!1256497 m!1414861))

(declare-fun m!1414863 () Bool)

(assert (=> b!1256497 m!1414863))

(declare-fun m!1414865 () Bool)

(assert (=> start!110766 m!1414865))

(check-sat (not b_next!30431) (not b!1256496) (not b!1256495) (not b!1256497) (not start!110766) (not mapNonEmpty!6240) tp_is_empty!6491 b_and!84871)
(check-sat b_and!84871 (not b_next!30431))
