; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3370 () Bool)

(assert start!3370)

(declare-fun b!48110 () Bool)

(declare-fun b_free!1325 () Bool)

(declare-fun b_next!1325 () Bool)

(assert (=> b!48110 (= b_free!1325 (not b_next!1325))))

(declare-fun tp!32455 () Bool)

(declare-fun b_and!1361 () Bool)

(assert (=> b!48110 (= tp!32455 b_and!1361)))

(declare-fun b!48107 () Bool)

(declare-fun b_free!1327 () Bool)

(declare-fun b_next!1327 () Bool)

(assert (=> b!48107 (= b_free!1327 (not b_next!1327))))

(declare-fun tp!32459 () Bool)

(declare-fun b_and!1363 () Bool)

(assert (=> b!48107 (= tp!32459 b_and!1363)))

(declare-fun b!48105 () Bool)

(declare-fun res!32018 () Bool)

(declare-fun e!27889 () Bool)

(assert (=> b!48105 (=> (not res!32018) (not e!27889))))

(declare-datatypes ((K!575 0))(
  ( (K!576 (val!260 Int)) )
))
(declare-datatypes ((V!629 0))(
  ( (V!630 (val!261 Int)) )
))
(declare-datatypes ((tuple2!1040 0))(
  ( (tuple2!1041 (_1!727 K!575) (_2!727 V!629)) )
))
(declare-datatypes ((List!829 0))(
  ( (Nil!823) (Cons!823 (h!6219 tuple2!1040) (t!17026 List!829)) )
))
(declare-datatypes ((array!980 0))(
  ( (array!981 (arr!460 (Array (_ BitVec 32) (_ BitVec 64))) (size!809 (_ BitVec 32))) )
))
(declare-datatypes ((array!982 0))(
  ( (array!983 (arr!461 (Array (_ BitVec 32) List!829)) (size!810 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!574 0))(
  ( (LongMapFixedSize!575 (defaultEntry!626 Int) (mask!1022 (_ BitVec 32)) (extraKeys!533 (_ BitVec 32)) (zeroValue!543 List!829) (minValue!543 List!829) (_size!707 (_ BitVec 32)) (_keys!578 array!980) (_values!565 array!982) (_vacant!348 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1137 0))(
  ( (Cell!1138 (v!12589 LongMapFixedSize!574)) )
))
(declare-datatypes ((MutLongMap!287 0))(
  ( (LongMap!287 (underlying!773 Cell!1137)) (MutLongMapExt!286 (__x!1374 Int)) )
))
(declare-datatypes ((Hashable!283 0))(
  ( (HashableExt!282 (__x!1375 Int)) )
))
(declare-datatypes ((Cell!1139 0))(
  ( (Cell!1140 (v!12590 MutLongMap!287)) )
))
(declare-datatypes ((MutableMap!283 0))(
  ( (MutableMapExt!282 (__x!1376 Int)) (HashMap!283 (underlying!774 Cell!1139) (hashF!2152 Hashable!283) (_size!708 (_ BitVec 32)) (defaultValue!432 Int)) )
))
(declare-fun thiss!47822 () MutableMap!283)

(get-info :version)

(assert (=> b!48105 (= res!32018 ((_ is MutableMapExt!282) thiss!47822))))

(declare-fun b!48106 () Bool)

(assert (=> b!48106 (= e!27889 false)))

(declare-fun key!7227 () K!575)

(declare-fun v!11804 () V!629)

(declare-fun lt!6885 () Bool)

(declare-fun valid!262 (MutableMap!283) Bool)

(declare-datatypes ((tuple2!1042 0))(
  ( (tuple2!1043 (_1!728 Bool) (_2!728 MutableMap!283)) )
))
(declare-fun update!23 (MutableMap!283 K!575 V!629) tuple2!1042)

(assert (=> b!48106 (= lt!6885 (valid!262 (_2!728 (update!23 thiss!47822 key!7227 v!11804))))))

(declare-fun res!32017 () Bool)

(assert (=> start!3370 (=> (not res!32017) (not e!27889))))

(assert (=> start!3370 (= res!32017 (valid!262 thiss!47822))))

(assert (=> start!3370 e!27889))

(declare-fun e!27886 () Bool)

(assert (=> start!3370 e!27886))

(declare-fun tp_is_empty!431 () Bool)

(assert (=> start!3370 tp_is_empty!431))

(declare-fun tp_is_empty!433 () Bool)

(assert (=> start!3370 tp_is_empty!433))

(declare-fun mapIsEmpty!1135 () Bool)

(declare-fun mapRes!1135 () Bool)

(assert (=> mapIsEmpty!1135 mapRes!1135))

(declare-fun e!27883 () Bool)

(assert (=> b!48107 (= e!27886 (and e!27883 tp!32459))))

(declare-fun b!48108 () Bool)

(declare-fun e!27888 () Bool)

(declare-fun e!27882 () Bool)

(assert (=> b!48108 (= e!27888 e!27882)))

(declare-fun mapNonEmpty!1135 () Bool)

(declare-fun tp!32456 () Bool)

(declare-fun tp!32458 () Bool)

(assert (=> mapNonEmpty!1135 (= mapRes!1135 (and tp!32456 tp!32458))))

(declare-fun mapValue!1135 () List!829)

(declare-fun mapRest!1135 () (Array (_ BitVec 32) List!829))

(declare-fun mapKey!1135 () (_ BitVec 32))

(assert (=> mapNonEmpty!1135 (= (arr!461 (_values!565 (v!12589 (underlying!773 (v!12590 (underlying!774 thiss!47822)))))) (store mapRest!1135 mapKey!1135 mapValue!1135))))

(declare-fun b!48109 () Bool)

(declare-fun e!27884 () Bool)

(declare-fun lt!6886 () MutLongMap!287)

(assert (=> b!48109 (= e!27883 (and e!27884 ((_ is LongMap!287) lt!6886)))))

(assert (=> b!48109 (= lt!6886 (v!12590 (underlying!774 thiss!47822)))))

(declare-fun e!27885 () Bool)

(declare-fun tp!32454 () Bool)

(declare-fun tp!32457 () Bool)

(declare-fun array_inv!313 (array!980) Bool)

(declare-fun array_inv!314 (array!982) Bool)

(assert (=> b!48110 (= e!27882 (and tp!32455 tp!32454 tp!32457 (array_inv!313 (_keys!578 (v!12589 (underlying!773 (v!12590 (underlying!774 thiss!47822)))))) (array_inv!314 (_values!565 (v!12589 (underlying!773 (v!12590 (underlying!774 thiss!47822)))))) e!27885))))

(declare-fun b!48111 () Bool)

(declare-fun tp!32453 () Bool)

(assert (=> b!48111 (= e!27885 (and tp!32453 mapRes!1135))))

(declare-fun condMapEmpty!1135 () Bool)

(declare-fun mapDefault!1135 () List!829)

(assert (=> b!48111 (= condMapEmpty!1135 (= (arr!461 (_values!565 (v!12589 (underlying!773 (v!12590 (underlying!774 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!829)) mapDefault!1135)))))

(declare-fun b!48112 () Bool)

(assert (=> b!48112 (= e!27884 e!27888)))

(assert (= (and start!3370 res!32017) b!48105))

(assert (= (and b!48105 res!32018) b!48106))

(assert (= (and b!48111 condMapEmpty!1135) mapIsEmpty!1135))

(assert (= (and b!48111 (not condMapEmpty!1135)) mapNonEmpty!1135))

(assert (= b!48110 b!48111))

(assert (= b!48108 b!48110))

(assert (= b!48112 b!48108))

(assert (= (and b!48109 ((_ is LongMap!287) (v!12590 (underlying!774 thiss!47822)))) b!48112))

(assert (= b!48107 b!48109))

(assert (= (and start!3370 ((_ is HashMap!283) thiss!47822)) b!48107))

(declare-fun m!22012 () Bool)

(assert (=> b!48106 m!22012))

(declare-fun m!22014 () Bool)

(assert (=> b!48106 m!22014))

(declare-fun m!22016 () Bool)

(assert (=> start!3370 m!22016))

(declare-fun m!22018 () Bool)

(assert (=> mapNonEmpty!1135 m!22018))

(declare-fun m!22020 () Bool)

(assert (=> b!48110 m!22020))

(declare-fun m!22022 () Bool)

(assert (=> b!48110 m!22022))

(check-sat tp_is_empty!431 (not b!48111) (not b_next!1327) (not mapNonEmpty!1135) (not b_next!1325) (not b!48110) (not b!48106) (not start!3370) b_and!1363 tp_is_empty!433 b_and!1361)
(check-sat b_and!1361 b_and!1363 (not b_next!1327) (not b_next!1325))
