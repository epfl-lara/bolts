; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3390 () Bool)

(assert start!3390)

(declare-fun b!48399 () Bool)

(declare-fun b_free!1365 () Bool)

(declare-fun b_next!1365 () Bool)

(assert (=> b!48399 (= b_free!1365 (not b_next!1365))))

(declare-fun tp!32663 () Bool)

(declare-fun b_and!1401 () Bool)

(assert (=> b!48399 (= tp!32663 b_and!1401)))

(declare-fun b!48400 () Bool)

(declare-fun b_free!1367 () Bool)

(declare-fun b_next!1367 () Bool)

(assert (=> b!48400 (= b_free!1367 (not b_next!1367))))

(declare-fun tp!32664 () Bool)

(declare-fun b_and!1403 () Bool)

(assert (=> b!48400 (= tp!32664 b_and!1403)))

(declare-fun b!48391 () Bool)

(declare-fun res!32125 () Bool)

(declare-fun e!28146 () Bool)

(assert (=> b!48391 (=> (not res!32125) (not e!28146))))

(declare-datatypes ((K!600 0))(
  ( (K!601 (val!280 Int)) )
))
(declare-datatypes ((V!654 0))(
  ( (V!655 (val!281 Int)) )
))
(declare-datatypes ((tuple2!1078 0))(
  ( (tuple2!1079 (_1!746 K!600) (_2!746 V!654)) )
))
(declare-datatypes ((List!839 0))(
  ( (Nil!833) (Cons!833 (h!6229 tuple2!1078) (t!17036 List!839)) )
))
(declare-datatypes ((array!1020 0))(
  ( (array!1021 (arr!480 (Array (_ BitVec 32) (_ BitVec 64))) (size!829 (_ BitVec 32))) )
))
(declare-datatypes ((array!1022 0))(
  ( (array!1023 (arr!481 (Array (_ BitVec 32) List!839)) (size!830 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!594 0))(
  ( (LongMapFixedSize!595 (defaultEntry!636 Int) (mask!1037 (_ BitVec 32)) (extraKeys!543 (_ BitVec 32)) (zeroValue!553 List!839) (minValue!553 List!839) (_size!727 (_ BitVec 32)) (_keys!588 array!1020) (_values!575 array!1022) (_vacant!358 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1177 0))(
  ( (Cell!1178 (v!12609 LongMapFixedSize!594)) )
))
(declare-datatypes ((MutLongMap!297 0))(
  ( (LongMap!297 (underlying!793 Cell!1177)) (MutLongMapExt!296 (__x!1404 Int)) )
))
(declare-datatypes ((Hashable!293 0))(
  ( (HashableExt!292 (__x!1405 Int)) )
))
(declare-datatypes ((Cell!1179 0))(
  ( (Cell!1180 (v!12610 MutLongMap!297)) )
))
(declare-datatypes ((MutableMap!293 0))(
  ( (MutableMapExt!292 (__x!1406 Int)) (HashMap!293 (underlying!794 Cell!1179) (hashF!2162 Hashable!293) (_size!728 (_ BitVec 32)) (defaultValue!442 Int)) )
))
(declare-fun thiss!47822 () MutableMap!293)

(get-info :version)

(assert (=> b!48391 (= res!32125 (not ((_ is MutableMapExt!292) thiss!47822)))))

(declare-fun b!48392 () Bool)

(declare-fun e!28149 () Bool)

(declare-fun e!28147 () Bool)

(assert (=> b!48392 (= e!28149 e!28147)))

(declare-fun b!48393 () Bool)

(declare-fun e!28151 () Bool)

(assert (=> b!48393 (= e!28151 false)))

(declare-datatypes ((ListMap!67 0))(
  ( (ListMap!68 (toList!188 List!839)) )
))
(declare-fun lt!6969 () ListMap!67)

(declare-datatypes ((tuple2!1080 0))(
  ( (tuple2!1081 (_1!747 Bool) (_2!747 MutableMap!293)) )
))
(declare-fun lt!6968 () tuple2!1080)

(declare-fun abstractMap!10 (MutableMap!293) ListMap!67)

(assert (=> b!48393 (= lt!6969 (abstractMap!10 (_2!747 lt!6968)))))

(declare-fun b!48394 () Bool)

(declare-fun res!32123 () Bool)

(assert (=> b!48394 (=> (not res!32123) (not e!28151))))

(assert (=> b!48394 (= res!32123 (not (_1!747 lt!6968)))))

(declare-fun b!48395 () Bool)

(declare-fun e!28148 () Bool)

(declare-fun lt!6970 () MutLongMap!297)

(assert (=> b!48395 (= e!28148 (and e!28149 ((_ is LongMap!297) lt!6970)))))

(assert (=> b!48395 (= lt!6970 (v!12610 (underlying!794 thiss!47822)))))

(declare-fun mapIsEmpty!1165 () Bool)

(declare-fun mapRes!1165 () Bool)

(assert (=> mapIsEmpty!1165 mapRes!1165))

(declare-fun mapNonEmpty!1165 () Bool)

(declare-fun tp!32669 () Bool)

(declare-fun tp!32665 () Bool)

(assert (=> mapNonEmpty!1165 (= mapRes!1165 (and tp!32669 tp!32665))))

(declare-fun mapValue!1165 () List!839)

(declare-fun mapKey!1165 () (_ BitVec 32))

(declare-fun mapRest!1165 () (Array (_ BitVec 32) List!839))

(assert (=> mapNonEmpty!1165 (= (arr!481 (_values!575 (v!12609 (underlying!793 (v!12610 (underlying!794 thiss!47822)))))) (store mapRest!1165 mapKey!1165 mapValue!1165))))

(declare-fun b!48396 () Bool)

(declare-fun e!28150 () Bool)

(declare-fun tp!32668 () Bool)

(assert (=> b!48396 (= e!28150 (and tp!32668 mapRes!1165))))

(declare-fun condMapEmpty!1165 () Bool)

(declare-fun mapDefault!1165 () List!839)

(assert (=> b!48396 (= condMapEmpty!1165 (= (arr!481 (_values!575 (v!12609 (underlying!793 (v!12610 (underlying!794 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!839)) mapDefault!1165)))))

(declare-fun b!48397 () Bool)

(declare-fun e!28153 () Bool)

(assert (=> b!48397 (= e!28147 e!28153)))

(declare-fun res!32124 () Bool)

(assert (=> start!3390 (=> (not res!32124) (not e!28146))))

(declare-fun valid!271 (MutableMap!293) Bool)

(assert (=> start!3390 (= res!32124 (valid!271 thiss!47822))))

(assert (=> start!3390 e!28146))

(declare-fun e!28152 () Bool)

(assert (=> start!3390 e!28152))

(declare-fun tp_is_empty!471 () Bool)

(assert (=> start!3390 tp_is_empty!471))

(declare-fun tp_is_empty!473 () Bool)

(assert (=> start!3390 tp_is_empty!473))

(declare-fun b!48398 () Bool)

(assert (=> b!48398 (= e!28146 e!28151)))

(declare-fun res!32126 () Bool)

(assert (=> b!48398 (=> (not res!32126) (not e!28151))))

(assert (=> b!48398 (= res!32126 (valid!271 (_2!747 lt!6968)))))

(declare-fun key!7227 () K!600)

(declare-fun v!11804 () V!654)

(declare-fun update!31 (MutableMap!293 K!600 V!654) tuple2!1080)

(assert (=> b!48398 (= lt!6968 (update!31 thiss!47822 key!7227 v!11804))))

(declare-fun tp!32667 () Bool)

(declare-fun tp!32666 () Bool)

(declare-fun array_inv!327 (array!1020) Bool)

(declare-fun array_inv!328 (array!1022) Bool)

(assert (=> b!48399 (= e!28153 (and tp!32663 tp!32666 tp!32667 (array_inv!327 (_keys!588 (v!12609 (underlying!793 (v!12610 (underlying!794 thiss!47822)))))) (array_inv!328 (_values!575 (v!12609 (underlying!793 (v!12610 (underlying!794 thiss!47822)))))) e!28150))))

(assert (=> b!48400 (= e!28152 (and e!28148 tp!32664))))

(assert (= (and start!3390 res!32124) b!48391))

(assert (= (and b!48391 res!32125) b!48398))

(assert (= (and b!48398 res!32126) b!48394))

(assert (= (and b!48394 res!32123) b!48393))

(assert (= (and b!48396 condMapEmpty!1165) mapIsEmpty!1165))

(assert (= (and b!48396 (not condMapEmpty!1165)) mapNonEmpty!1165))

(assert (= b!48399 b!48396))

(assert (= b!48397 b!48399))

(assert (= b!48392 b!48397))

(assert (= (and b!48395 ((_ is LongMap!297) (v!12610 (underlying!794 thiss!47822)))) b!48392))

(assert (= b!48400 b!48395))

(assert (= (and start!3390 ((_ is HashMap!293) thiss!47822)) b!48400))

(declare-fun m!22154 () Bool)

(assert (=> mapNonEmpty!1165 m!22154))

(declare-fun m!22156 () Bool)

(assert (=> start!3390 m!22156))

(declare-fun m!22158 () Bool)

(assert (=> b!48393 m!22158))

(declare-fun m!22160 () Bool)

(assert (=> b!48398 m!22160))

(declare-fun m!22162 () Bool)

(assert (=> b!48398 m!22162))

(declare-fun m!22164 () Bool)

(assert (=> b!48399 m!22164))

(declare-fun m!22166 () Bool)

(assert (=> b!48399 m!22166))

(check-sat tp_is_empty!471 (not mapNonEmpty!1165) (not b!48398) (not b!48399) (not b!48393) (not start!3390) b_and!1401 b_and!1403 tp_is_empty!473 (not b_next!1365) (not b!48396) (not b_next!1367))
(check-sat b_and!1401 b_and!1403 (not b_next!1367) (not b_next!1365))
