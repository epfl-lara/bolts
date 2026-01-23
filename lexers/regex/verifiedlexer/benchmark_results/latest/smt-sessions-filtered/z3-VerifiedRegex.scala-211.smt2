; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3374 () Bool)

(assert start!3374)

(declare-fun b!48167 () Bool)

(declare-fun b_free!1333 () Bool)

(declare-fun b_next!1333 () Bool)

(assert (=> b!48167 (= b_free!1333 (not b_next!1333))))

(declare-fun tp!32497 () Bool)

(declare-fun b_and!1369 () Bool)

(assert (=> b!48167 (= tp!32497 b_and!1369)))

(declare-fun b!48166 () Bool)

(declare-fun b_free!1335 () Bool)

(declare-fun b_next!1335 () Bool)

(assert (=> b!48166 (= b_free!1335 (not b_next!1335))))

(declare-fun tp!32498 () Bool)

(declare-fun b_and!1371 () Bool)

(assert (=> b!48166 (= tp!32498 b_and!1371)))

(declare-fun mapIsEmpty!1141 () Bool)

(declare-fun mapRes!1141 () Bool)

(assert (=> mapIsEmpty!1141 mapRes!1141))

(declare-fun b!48163 () Bool)

(declare-fun res!32040 () Bool)

(declare-fun e!27938 () Bool)

(assert (=> b!48163 (=> (not res!32040) (not e!27938))))

(declare-datatypes ((K!580 0))(
  ( (K!581 (val!264 Int)) )
))
(declare-datatypes ((V!634 0))(
  ( (V!635 (val!265 Int)) )
))
(declare-datatypes ((tuple2!1046 0))(
  ( (tuple2!1047 (_1!730 K!580) (_2!730 V!634)) )
))
(declare-datatypes ((List!831 0))(
  ( (Nil!825) (Cons!825 (h!6221 tuple2!1046) (t!17028 List!831)) )
))
(declare-datatypes ((array!988 0))(
  ( (array!989 (arr!464 (Array (_ BitVec 32) (_ BitVec 64))) (size!813 (_ BitVec 32))) )
))
(declare-datatypes ((array!990 0))(
  ( (array!991 (arr!465 (Array (_ BitVec 32) List!831)) (size!814 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!578 0))(
  ( (LongMapFixedSize!579 (defaultEntry!628 Int) (mask!1025 (_ BitVec 32)) (extraKeys!535 (_ BitVec 32)) (zeroValue!545 List!831) (minValue!545 List!831) (_size!711 (_ BitVec 32)) (_keys!580 array!988) (_values!567 array!990) (_vacant!350 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1145 0))(
  ( (Cell!1146 (v!12593 LongMapFixedSize!578)) )
))
(declare-datatypes ((MutLongMap!289 0))(
  ( (LongMap!289 (underlying!777 Cell!1145)) (MutLongMapExt!288 (__x!1380 Int)) )
))
(declare-datatypes ((Hashable!285 0))(
  ( (HashableExt!284 (__x!1381 Int)) )
))
(declare-datatypes ((Cell!1147 0))(
  ( (Cell!1148 (v!12594 MutLongMap!289)) )
))
(declare-datatypes ((MutableMap!285 0))(
  ( (MutableMapExt!284 (__x!1382 Int)) (HashMap!285 (underlying!778 Cell!1147) (hashF!2154 Hashable!285) (_size!712 (_ BitVec 32)) (defaultValue!434 Int)) )
))
(declare-fun thiss!47822 () MutableMap!285)

(get-info :version)

(assert (=> b!48163 (= res!32040 ((_ is MutableMapExt!284) thiss!47822))))

(declare-fun b!48164 () Bool)

(declare-fun e!27935 () Bool)

(declare-fun e!27939 () Bool)

(declare-fun lt!6903 () MutLongMap!289)

(assert (=> b!48164 (= e!27935 (and e!27939 ((_ is LongMap!289) lt!6903)))))

(assert (=> b!48164 (= lt!6903 (v!12594 (underlying!778 thiss!47822)))))

(declare-fun b!48165 () Bool)

(declare-fun res!32042 () Bool)

(declare-fun e!27943 () Bool)

(assert (=> b!48165 (=> (not res!32042) (not e!27943))))

(declare-datatypes ((tuple2!1048 0))(
  ( (tuple2!1049 (_1!731 Bool) (_2!731 MutableMap!285)) )
))
(declare-fun lt!6902 () tuple2!1048)

(assert (=> b!48165 (= res!32042 (_1!731 lt!6902))))

(declare-fun e!27937 () Bool)

(assert (=> b!48166 (= e!27937 (and e!27935 tp!32498))))

(declare-fun tp!32496 () Bool)

(declare-fun tp!32495 () Bool)

(declare-fun e!27941 () Bool)

(declare-fun e!27942 () Bool)

(declare-fun array_inv!315 (array!988) Bool)

(declare-fun array_inv!316 (array!990) Bool)

(assert (=> b!48167 (= e!27942 (and tp!32497 tp!32496 tp!32495 (array_inv!315 (_keys!580 (v!12593 (underlying!777 (v!12594 (underlying!778 thiss!47822)))))) (array_inv!316 (_values!567 (v!12593 (underlying!777 (v!12594 (underlying!778 thiss!47822)))))) e!27941))))

(declare-fun res!32039 () Bool)

(assert (=> start!3374 (=> (not res!32039) (not e!27938))))

(declare-fun valid!263 (MutableMap!285) Bool)

(assert (=> start!3374 (= res!32039 (valid!263 thiss!47822))))

(assert (=> start!3374 e!27938))

(assert (=> start!3374 e!27937))

(declare-fun tp_is_empty!439 () Bool)

(assert (=> start!3374 tp_is_empty!439))

(declare-fun tp_is_empty!441 () Bool)

(assert (=> start!3374 tp_is_empty!441))

(declare-fun b!48168 () Bool)

(assert (=> b!48168 (= e!27943 false)))

(declare-fun lt!6904 () Bool)

(declare-fun key!7227 () K!580)

(declare-datatypes ((ListMap!59 0))(
  ( (ListMap!60 (toList!184 List!831)) )
))
(declare-fun contains!33 (ListMap!59 K!580) Bool)

(declare-fun abstractMap!6 (MutableMap!285) ListMap!59)

(assert (=> b!48168 (= lt!6904 (contains!33 (abstractMap!6 (_2!731 lt!6902)) key!7227))))

(declare-fun b!48169 () Bool)

(assert (=> b!48169 (= e!27938 e!27943)))

(declare-fun res!32041 () Bool)

(assert (=> b!48169 (=> (not res!32041) (not e!27943))))

(assert (=> b!48169 (= res!32041 (valid!263 (_2!731 lt!6902)))))

(declare-fun v!11804 () V!634)

(declare-fun update!24 (MutableMap!285 K!580 V!634) tuple2!1048)

(assert (=> b!48169 (= lt!6902 (update!24 thiss!47822 key!7227 v!11804))))

(declare-fun b!48170 () Bool)

(declare-fun e!27940 () Bool)

(assert (=> b!48170 (= e!27940 e!27942)))

(declare-fun mapNonEmpty!1141 () Bool)

(declare-fun tp!32501 () Bool)

(declare-fun tp!32500 () Bool)

(assert (=> mapNonEmpty!1141 (= mapRes!1141 (and tp!32501 tp!32500))))

(declare-fun mapValue!1141 () List!831)

(declare-fun mapKey!1141 () (_ BitVec 32))

(declare-fun mapRest!1141 () (Array (_ BitVec 32) List!831))

(assert (=> mapNonEmpty!1141 (= (arr!465 (_values!567 (v!12593 (underlying!777 (v!12594 (underlying!778 thiss!47822)))))) (store mapRest!1141 mapKey!1141 mapValue!1141))))

(declare-fun b!48171 () Bool)

(assert (=> b!48171 (= e!27939 e!27940)))

(declare-fun b!48172 () Bool)

(declare-fun tp!32499 () Bool)

(assert (=> b!48172 (= e!27941 (and tp!32499 mapRes!1141))))

(declare-fun condMapEmpty!1141 () Bool)

(declare-fun mapDefault!1141 () List!831)

(assert (=> b!48172 (= condMapEmpty!1141 (= (arr!465 (_values!567 (v!12593 (underlying!777 (v!12594 (underlying!778 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!831)) mapDefault!1141)))))

(assert (= (and start!3374 res!32039) b!48163))

(assert (= (and b!48163 res!32040) b!48169))

(assert (= (and b!48169 res!32041) b!48165))

(assert (= (and b!48165 res!32042) b!48168))

(assert (= (and b!48172 condMapEmpty!1141) mapIsEmpty!1141))

(assert (= (and b!48172 (not condMapEmpty!1141)) mapNonEmpty!1141))

(assert (= b!48167 b!48172))

(assert (= b!48170 b!48167))

(assert (= b!48171 b!48170))

(assert (= (and b!48164 ((_ is LongMap!289) (v!12594 (underlying!778 thiss!47822)))) b!48171))

(assert (= b!48166 b!48164))

(assert (= (and start!3374 ((_ is HashMap!285) thiss!47822)) b!48166))

(declare-fun m!22040 () Bool)

(assert (=> b!48167 m!22040))

(declare-fun m!22042 () Bool)

(assert (=> b!48167 m!22042))

(declare-fun m!22044 () Bool)

(assert (=> b!48168 m!22044))

(assert (=> b!48168 m!22044))

(declare-fun m!22046 () Bool)

(assert (=> b!48168 m!22046))

(declare-fun m!22048 () Bool)

(assert (=> mapNonEmpty!1141 m!22048))

(declare-fun m!22050 () Bool)

(assert (=> start!3374 m!22050))

(declare-fun m!22052 () Bool)

(assert (=> b!48169 m!22052))

(declare-fun m!22054 () Bool)

(assert (=> b!48169 m!22054))

(check-sat (not b_next!1335) tp_is_empty!441 (not b!48169) (not b!48172) (not b!48167) tp_is_empty!439 b_and!1369 (not b!48168) (not start!3374) b_and!1371 (not b_next!1333) (not mapNonEmpty!1141))
(check-sat b_and!1369 b_and!1371 (not b_next!1335) (not b_next!1333))
