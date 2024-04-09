; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10038 () Bool)

(assert start!10038)

(declare-fun b!76055 () Bool)

(declare-fun b_free!2145 () Bool)

(declare-fun b_next!2145 () Bool)

(assert (=> b!76055 (= b_free!2145 (not b_next!2145))))

(declare-fun tp!8625 () Bool)

(declare-fun b_and!4653 () Bool)

(assert (=> b!76055 (= tp!8625 b_and!4653)))

(declare-fun b!76058 () Bool)

(declare-fun b_free!2147 () Bool)

(declare-fun b_next!2147 () Bool)

(assert (=> b!76058 (= b_free!2147 (not b_next!2147))))

(declare-fun tp!8626 () Bool)

(declare-fun b_and!4655 () Bool)

(assert (=> b!76058 (= tp!8626 b_and!4655)))

(declare-fun b!76047 () Bool)

(declare-fun e!49699 () Bool)

(declare-fun e!49692 () Bool)

(assert (=> b!76047 (= e!49699 e!49692)))

(declare-fun res!40049 () Bool)

(assert (=> b!76047 (=> (not res!40049) (not e!49692))))

(declare-datatypes ((V!2965 0))(
  ( (V!2966 (val!1289 Int)) )
))
(declare-datatypes ((array!3926 0))(
  ( (array!3927 (arr!1872 (Array (_ BitVec 32) (_ BitVec 64))) (size!2112 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!901 0))(
  ( (ValueCellFull!901 (v!2563 V!2965)) (EmptyCell!901) )
))
(declare-datatypes ((array!3928 0))(
  ( (array!3929 (arr!1873 (Array (_ BitVec 32) ValueCell!901)) (size!2113 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!710 0))(
  ( (LongMapFixedSize!711 (defaultEntry!2248 Int) (mask!6231 (_ BitVec 32)) (extraKeys!2101 (_ BitVec 32)) (zeroValue!2147 V!2965) (minValue!2147 V!2965) (_size!404 (_ BitVec 32)) (_keys!3906 array!3926) (_values!2231 array!3928) (_vacant!404 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2162 0))(
  ( (tuple2!2163 (_1!1091 Bool) (_2!1091 LongMapFixedSize!710)) )
))
(declare-fun lt!34484 () tuple2!2162)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!76047 (= res!40049 (and (_1!1091 lt!34484) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2202 0))(
  ( (Unit!2203) )
))
(declare-fun lt!34483 () Unit!2202)

(declare-fun e!49703 () Unit!2202)

(assert (=> b!76047 (= lt!34483 e!49703)))

(declare-datatypes ((Cell!520 0))(
  ( (Cell!521 (v!2564 LongMapFixedSize!710)) )
))
(declare-datatypes ((LongMap!520 0))(
  ( (LongMap!521 (underlying!271 Cell!520)) )
))
(declare-fun thiss!992 () LongMap!520)

(declare-datatypes ((tuple2!2164 0))(
  ( (tuple2!2165 (_1!1092 (_ BitVec 64)) (_2!1092 V!2965)) )
))
(declare-datatypes ((List!1517 0))(
  ( (Nil!1514) (Cons!1513 (h!2101 tuple2!2164) (t!5119 List!1517)) )
))
(declare-datatypes ((ListLongMap!1449 0))(
  ( (ListLongMap!1450 (toList!740 List!1517)) )
))
(declare-fun lt!34479 () ListLongMap!1449)

(declare-fun c!11569 () Bool)

(declare-fun contains!736 (ListLongMap!1449 (_ BitVec 64)) Bool)

(assert (=> b!76047 (= c!11569 (contains!736 lt!34479 (select (arr!1872 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!710)

(declare-fun lt!34482 () V!2965)

(declare-fun update!106 (LongMapFixedSize!710 (_ BitVec 64) V!2965) tuple2!2162)

(assert (=> b!76047 (= lt!34484 (update!106 newMap!16 (select (arr!1872 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) from!355) lt!34482))))

(declare-fun b!76048 () Bool)

(declare-fun Unit!2204 () Unit!2202)

(assert (=> b!76048 (= e!49703 Unit!2204)))

(declare-fun b!76049 () Bool)

(declare-fun res!40058 () Bool)

(declare-fun e!49700 () Bool)

(assert (=> b!76049 (=> (not res!40058) (not e!49700))))

(declare-fun valid!300 (LongMapFixedSize!710) Bool)

(assert (=> b!76049 (= res!40058 (valid!300 newMap!16))))

(declare-fun mapIsEmpty!3227 () Bool)

(declare-fun mapRes!3228 () Bool)

(assert (=> mapIsEmpty!3227 mapRes!3228))

(declare-fun b!76050 () Bool)

(declare-fun res!40056 () Bool)

(declare-fun e!49702 () Bool)

(assert (=> b!76050 (=> res!40056 e!49702)))

(assert (=> b!76050 (= res!40056 (or (not (= (size!2113 (_values!2231 (v!2564 (underlying!271 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6231 (v!2564 (underlying!271 thiss!992)))))) (not (= (size!2112 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) (size!2113 (_values!2231 (v!2564 (underlying!271 thiss!992)))))) (bvslt (mask!6231 (v!2564 (underlying!271 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2101 (v!2564 (underlying!271 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2101 (v!2564 (underlying!271 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!76051 () Bool)

(declare-fun e!49693 () Bool)

(assert (=> b!76051 (= e!49693 e!49699)))

(declare-fun res!40054 () Bool)

(assert (=> b!76051 (=> (not res!40054) (not e!49699))))

(assert (=> b!76051 (= res!40054 (and (not (= (select (arr!1872 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1872 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1169 (ValueCell!901 V!2965) V!2965)

(declare-fun dynLambda!339 (Int (_ BitVec 64)) V!2965)

(assert (=> b!76051 (= lt!34482 (get!1169 (select (arr!1873 (_values!2231 (v!2564 (underlying!271 thiss!992)))) from!355) (dynLambda!339 (defaultEntry!2248 (v!2564 (underlying!271 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!76052 () Bool)

(declare-fun e!49701 () Bool)

(declare-fun tp_is_empty!2489 () Bool)

(assert (=> b!76052 (= e!49701 tp_is_empty!2489)))

(declare-fun b!76053 () Bool)

(declare-fun Unit!2205 () Unit!2202)

(assert (=> b!76053 (= e!49703 Unit!2205)))

(declare-fun lt!34481 () Unit!2202)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!56 (array!3926 array!3928 (_ BitVec 32) (_ BitVec 32) V!2965 V!2965 (_ BitVec 64) (_ BitVec 32) Int) Unit!2202)

(assert (=> b!76053 (= lt!34481 (lemmaListMapContainsThenArrayContainsFrom!56 (_keys!3906 (v!2564 (underlying!271 thiss!992))) (_values!2231 (v!2564 (underlying!271 thiss!992))) (mask!6231 (v!2564 (underlying!271 thiss!992))) (extraKeys!2101 (v!2564 (underlying!271 thiss!992))) (zeroValue!2147 (v!2564 (underlying!271 thiss!992))) (minValue!2147 (v!2564 (underlying!271 thiss!992))) (select (arr!1872 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2248 (v!2564 (underlying!271 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!76053 (arrayContainsKey!0 (_keys!3906 (v!2564 (underlying!271 thiss!992))) (select (arr!1872 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!34485 () Unit!2202)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3926 (_ BitVec 32) (_ BitVec 32)) Unit!2202)

(assert (=> b!76053 (= lt!34485 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3906 (v!2564 (underlying!271 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1518 0))(
  ( (Nil!1515) (Cons!1514 (h!2102 (_ BitVec 64)) (t!5120 List!1518)) )
))
(declare-fun arrayNoDuplicates!0 (array!3926 (_ BitVec 32) List!1518) Bool)

(assert (=> b!76053 (arrayNoDuplicates!0 (_keys!3906 (v!2564 (underlying!271 thiss!992))) from!355 Nil!1515)))

(declare-fun lt!34480 () Unit!2202)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3926 (_ BitVec 32) (_ BitVec 64) List!1518) Unit!2202)

(assert (=> b!76053 (= lt!34480 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3906 (v!2564 (underlying!271 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1872 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) from!355) (Cons!1514 (select (arr!1872 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) from!355) Nil!1515)))))

(assert (=> b!76053 false))

(declare-fun mapNonEmpty!3227 () Bool)

(declare-fun mapRes!3227 () Bool)

(declare-fun tp!8628 () Bool)

(assert (=> mapNonEmpty!3227 (= mapRes!3227 (and tp!8628 e!49701))))

(declare-fun mapValue!3228 () ValueCell!901)

(declare-fun mapRest!3228 () (Array (_ BitVec 32) ValueCell!901))

(declare-fun mapKey!3228 () (_ BitVec 32))

(assert (=> mapNonEmpty!3227 (= (arr!1873 (_values!2231 (v!2564 (underlying!271 thiss!992)))) (store mapRest!3228 mapKey!3228 mapValue!3228))))

(declare-fun b!76054 () Bool)

(declare-fun e!49696 () Bool)

(declare-fun e!49705 () Bool)

(assert (=> b!76054 (= e!49696 e!49705)))

(declare-fun res!40055 () Bool)

(assert (=> start!10038 (=> (not res!40055) (not e!49700))))

(declare-fun valid!301 (LongMap!520) Bool)

(assert (=> start!10038 (= res!40055 (valid!301 thiss!992))))

(assert (=> start!10038 e!49700))

(declare-fun e!49707 () Bool)

(assert (=> start!10038 e!49707))

(assert (=> start!10038 true))

(declare-fun e!49694 () Bool)

(assert (=> start!10038 e!49694))

(declare-fun e!49706 () Bool)

(declare-fun array_inv!1113 (array!3926) Bool)

(declare-fun array_inv!1114 (array!3928) Bool)

(assert (=> b!76055 (= e!49705 (and tp!8625 tp_is_empty!2489 (array_inv!1113 (_keys!3906 (v!2564 (underlying!271 thiss!992)))) (array_inv!1114 (_values!2231 (v!2564 (underlying!271 thiss!992)))) e!49706))))

(declare-fun b!76056 () Bool)

(declare-fun res!40051 () Bool)

(assert (=> b!76056 (=> res!40051 e!49702)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3926 (_ BitVec 32)) Bool)

(assert (=> b!76056 (= res!40051 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3906 (v!2564 (underlying!271 thiss!992))) (mask!6231 (v!2564 (underlying!271 thiss!992))))))))

(declare-fun b!76057 () Bool)

(declare-fun res!40053 () Bool)

(assert (=> b!76057 (=> (not res!40053) (not e!49700))))

(assert (=> b!76057 (= res!40053 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2112 (_keys!3906 (v!2564 (underlying!271 thiss!992)))))))))

(declare-fun e!49698 () Bool)

(assert (=> b!76058 (= e!49694 (and tp!8626 tp_is_empty!2489 (array_inv!1113 (_keys!3906 newMap!16)) (array_inv!1114 (_values!2231 newMap!16)) e!49698))))

(declare-fun b!76059 () Bool)

(declare-fun e!49697 () Bool)

(assert (=> b!76059 (= e!49697 tp_is_empty!2489)))

(declare-fun mapNonEmpty!3228 () Bool)

(declare-fun tp!8627 () Bool)

(declare-fun e!49708 () Bool)

(assert (=> mapNonEmpty!3228 (= mapRes!3228 (and tp!8627 e!49708))))

(declare-fun mapValue!3227 () ValueCell!901)

(declare-fun mapKey!3227 () (_ BitVec 32))

(declare-fun mapRest!3227 () (Array (_ BitVec 32) ValueCell!901))

(assert (=> mapNonEmpty!3228 (= (arr!1873 (_values!2231 newMap!16)) (store mapRest!3227 mapKey!3227 mapValue!3227))))

(declare-fun b!76060 () Bool)

(assert (=> b!76060 (= e!49707 e!49696)))

(declare-fun b!76061 () Bool)

(assert (=> b!76061 (= e!49702 (arrayNoDuplicates!0 (_keys!3906 (v!2564 (underlying!271 thiss!992))) #b00000000000000000000000000000000 Nil!1515))))

(declare-fun b!76062 () Bool)

(declare-fun e!49691 () Bool)

(assert (=> b!76062 (= e!49691 tp_is_empty!2489)))

(declare-fun b!76063 () Bool)

(declare-fun res!40052 () Bool)

(assert (=> b!76063 (=> (not res!40052) (not e!49700))))

(assert (=> b!76063 (= res!40052 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6231 newMap!16)) (_size!404 (v!2564 (underlying!271 thiss!992)))))))

(declare-fun b!76064 () Bool)

(assert (=> b!76064 (= e!49706 (and e!49691 mapRes!3227))))

(declare-fun condMapEmpty!3228 () Bool)

(declare-fun mapDefault!3227 () ValueCell!901)

