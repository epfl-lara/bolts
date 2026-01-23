; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3378 () Bool)

(assert start!3378)

(declare-fun b!48231 () Bool)

(declare-fun b_free!1341 () Bool)

(declare-fun b_next!1341 () Bool)

(assert (=> b!48231 (= b_free!1341 (not b_next!1341))))

(declare-fun tp!32542 () Bool)

(declare-fun b_and!1377 () Bool)

(assert (=> b!48231 (= tp!32542 b_and!1377)))

(declare-fun b!48227 () Bool)

(declare-fun b_free!1343 () Bool)

(declare-fun b_next!1343 () Bool)

(assert (=> b!48227 (= b_free!1343 (not b_next!1343))))

(declare-fun tp!32543 () Bool)

(declare-fun b_and!1379 () Bool)

(assert (=> b!48227 (= tp!32543 b_and!1379)))

(declare-fun b!48223 () Bool)

(declare-fun e!27996 () Bool)

(declare-fun tp!32537 () Bool)

(declare-fun mapRes!1147 () Bool)

(assert (=> b!48223 (= e!27996 (and tp!32537 mapRes!1147))))

(declare-fun condMapEmpty!1147 () Bool)

(declare-datatypes ((K!585 0))(
  ( (K!586 (val!268 Int)) )
))
(declare-datatypes ((V!639 0))(
  ( (V!640 (val!269 Int)) )
))
(declare-datatypes ((tuple2!1054 0))(
  ( (tuple2!1055 (_1!734 K!585) (_2!734 V!639)) )
))
(declare-datatypes ((List!833 0))(
  ( (Nil!827) (Cons!827 (h!6223 tuple2!1054) (t!17030 List!833)) )
))
(declare-datatypes ((array!996 0))(
  ( (array!997 (arr!468 (Array (_ BitVec 32) (_ BitVec 64))) (size!817 (_ BitVec 32))) )
))
(declare-datatypes ((array!998 0))(
  ( (array!999 (arr!469 (Array (_ BitVec 32) List!833)) (size!818 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!582 0))(
  ( (LongMapFixedSize!583 (defaultEntry!630 Int) (mask!1028 (_ BitVec 32)) (extraKeys!537 (_ BitVec 32)) (zeroValue!547 List!833) (minValue!547 List!833) (_size!715 (_ BitVec 32)) (_keys!582 array!996) (_values!569 array!998) (_vacant!352 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1153 0))(
  ( (Cell!1154 (v!12597 LongMapFixedSize!582)) )
))
(declare-datatypes ((MutLongMap!291 0))(
  ( (LongMap!291 (underlying!781 Cell!1153)) (MutLongMapExt!290 (__x!1386 Int)) )
))
(declare-datatypes ((Hashable!287 0))(
  ( (HashableExt!286 (__x!1387 Int)) )
))
(declare-datatypes ((Cell!1155 0))(
  ( (Cell!1156 (v!12598 MutLongMap!291)) )
))
(declare-datatypes ((MutableMap!287 0))(
  ( (MutableMapExt!286 (__x!1388 Int)) (HashMap!287 (underlying!782 Cell!1155) (hashF!2156 Hashable!287) (_size!716 (_ BitVec 32)) (defaultValue!436 Int)) )
))
(declare-fun thiss!47822 () MutableMap!287)

(declare-fun mapDefault!1147 () List!833)

(assert (=> b!48223 (= condMapEmpty!1147 (= (arr!469 (_values!569 (v!12597 (underlying!781 (v!12598 (underlying!782 thiss!47822)))))) ((as const (Array (_ BitVec 32) List!833)) mapDefault!1147)))))

(declare-fun b!48224 () Bool)

(declare-fun e!27994 () Bool)

(declare-fun e!27992 () Bool)

(assert (=> b!48224 (= e!27994 e!27992)))

(declare-fun res!32065 () Bool)

(assert (=> b!48224 (=> (not res!32065) (not e!27992))))

(declare-datatypes ((tuple2!1056 0))(
  ( (tuple2!1057 (_1!735 Bool) (_2!735 MutableMap!287)) )
))
(declare-fun lt!6920 () tuple2!1056)

(declare-fun valid!265 (MutableMap!287) Bool)

(assert (=> b!48224 (= res!32065 (valid!265 (_2!735 lt!6920)))))

(declare-fun key!7227 () K!585)

(declare-fun v!11804 () V!639)

(declare-fun update!26 (MutableMap!287 K!585 V!639) tuple2!1056)

(assert (=> b!48224 (= lt!6920 (update!26 thiss!47822 key!7227 v!11804))))

(declare-fun b!48225 () Bool)

(declare-fun e!27993 () Bool)

(declare-fun e!27990 () Bool)

(assert (=> b!48225 (= e!27993 e!27990)))

(declare-fun res!32064 () Bool)

(assert (=> start!3378 (=> (not res!32064) (not e!27994))))

(assert (=> start!3378 (= res!32064 (valid!265 thiss!47822))))

(assert (=> start!3378 e!27994))

(declare-fun e!27995 () Bool)

(assert (=> start!3378 e!27995))

(declare-fun tp_is_empty!447 () Bool)

(assert (=> start!3378 tp_is_empty!447))

(declare-fun tp_is_empty!449 () Bool)

(assert (=> start!3378 tp_is_empty!449))

(declare-fun b!48226 () Bool)

(declare-fun res!32063 () Bool)

(assert (=> b!48226 (=> (not res!32063) (not e!27992))))

(assert (=> b!48226 (= res!32063 (not (_1!735 lt!6920)))))

(declare-fun mapIsEmpty!1147 () Bool)

(assert (=> mapIsEmpty!1147 mapRes!1147))

(declare-fun e!27989 () Bool)

(assert (=> b!48227 (= e!27995 (and e!27989 tp!32543))))

(declare-fun b!48228 () Bool)

(declare-fun e!27997 () Bool)

(assert (=> b!48228 (= e!27997 e!27993)))

(declare-fun b!48229 () Bool)

(declare-fun res!32066 () Bool)

(assert (=> b!48229 (=> (not res!32066) (not e!27994))))

(get-info :version)

(assert (=> b!48229 (= res!32066 ((_ is MutableMapExt!286) thiss!47822))))

(declare-fun b!48230 () Bool)

(declare-fun lt!6921 () MutLongMap!291)

(assert (=> b!48230 (= e!27989 (and e!27997 ((_ is LongMap!291) lt!6921)))))

(assert (=> b!48230 (= lt!6921 (v!12598 (underlying!782 thiss!47822)))))

(declare-fun mapNonEmpty!1147 () Bool)

(declare-fun tp!32539 () Bool)

(declare-fun tp!32538 () Bool)

(assert (=> mapNonEmpty!1147 (= mapRes!1147 (and tp!32539 tp!32538))))

(declare-fun mapRest!1147 () (Array (_ BitVec 32) List!833))

(declare-fun mapKey!1147 () (_ BitVec 32))

(declare-fun mapValue!1147 () List!833)

(assert (=> mapNonEmpty!1147 (= (arr!469 (_values!569 (v!12597 (underlying!781 (v!12598 (underlying!782 thiss!47822)))))) (store mapRest!1147 mapKey!1147 mapValue!1147))))

(declare-fun tp!32540 () Bool)

(declare-fun tp!32541 () Bool)

(declare-fun array_inv!317 (array!996) Bool)

(declare-fun array_inv!318 (array!998) Bool)

(assert (=> b!48231 (= e!27990 (and tp!32542 tp!32540 tp!32541 (array_inv!317 (_keys!582 (v!12597 (underlying!781 (v!12598 (underlying!782 thiss!47822)))))) (array_inv!318 (_values!569 (v!12597 (underlying!781 (v!12598 (underlying!782 thiss!47822)))))) e!27996))))

(declare-fun b!48232 () Bool)

(assert (=> b!48232 (= e!27992 false)))

(declare-datatypes ((ListMap!61 0))(
  ( (ListMap!62 (toList!185 List!833)) )
))
(declare-fun lt!6922 () ListMap!61)

(declare-fun abstractMap!7 (MutableMap!287) ListMap!61)

(assert (=> b!48232 (= lt!6922 (abstractMap!7 (_2!735 lt!6920)))))

(assert (= (and start!3378 res!32064) b!48229))

(assert (= (and b!48229 res!32066) b!48224))

(assert (= (and b!48224 res!32065) b!48226))

(assert (= (and b!48226 res!32063) b!48232))

(assert (= (and b!48223 condMapEmpty!1147) mapIsEmpty!1147))

(assert (= (and b!48223 (not condMapEmpty!1147)) mapNonEmpty!1147))

(assert (= b!48231 b!48223))

(assert (= b!48225 b!48231))

(assert (= b!48228 b!48225))

(assert (= (and b!48230 ((_ is LongMap!291) (v!12598 (underlying!782 thiss!47822)))) b!48228))

(assert (= b!48227 b!48230))

(assert (= (and start!3378 ((_ is HashMap!287) thiss!47822)) b!48227))

(declare-fun m!22070 () Bool)

(assert (=> b!48224 m!22070))

(declare-fun m!22072 () Bool)

(assert (=> b!48224 m!22072))

(declare-fun m!22074 () Bool)

(assert (=> b!48232 m!22074))

(declare-fun m!22076 () Bool)

(assert (=> b!48231 m!22076))

(declare-fun m!22078 () Bool)

(assert (=> b!48231 m!22078))

(declare-fun m!22080 () Bool)

(assert (=> start!3378 m!22080))

(declare-fun m!22082 () Bool)

(assert (=> mapNonEmpty!1147 m!22082))

(check-sat (not b!48224) b_and!1377 (not start!3378) b_and!1379 tp_is_empty!447 (not b_next!1343) (not b!48231) (not b!48232) (not b!48223) tp_is_empty!449 (not b_next!1341) (not mapNonEmpty!1147))
(check-sat b_and!1377 b_and!1379 (not b_next!1343) (not b_next!1341))
