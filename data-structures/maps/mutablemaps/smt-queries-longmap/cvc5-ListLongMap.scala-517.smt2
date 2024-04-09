; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13070 () Bool)

(assert start!13070)

(declare-fun b!113879 () Bool)

(declare-fun b_free!2593 () Bool)

(declare-fun b_next!2593 () Bool)

(assert (=> b!113879 (= b_free!2593 (not b_next!2593))))

(declare-fun tp!10140 () Bool)

(declare-fun b_and!7001 () Bool)

(assert (=> b!113879 (= tp!10140 b_and!7001)))

(declare-fun b!113871 () Bool)

(declare-fun b_free!2595 () Bool)

(declare-fun b_next!2595 () Bool)

(assert (=> b!113871 (= b_free!2595 (not b_next!2595))))

(declare-fun tp!10139 () Bool)

(declare-fun b_and!7003 () Bool)

(assert (=> b!113871 (= tp!10139 b_and!7003)))

(declare-fun b!113869 () Bool)

(declare-fun e!74000 () Bool)

(declare-fun e!73995 () Bool)

(assert (=> b!113869 (= e!74000 e!73995)))

(declare-fun b!113870 () Bool)

(declare-fun e!73996 () Bool)

(assert (=> b!113870 (= e!73996 e!74000)))

(declare-fun tp_is_empty!2713 () Bool)

(declare-fun e!74003 () Bool)

(declare-fun e!73987 () Bool)

(declare-datatypes ((V!3265 0))(
  ( (V!3266 (val!1401 Int)) )
))
(declare-datatypes ((array!4426 0))(
  ( (array!4427 (arr!2096 (Array (_ BitVec 32) (_ BitVec 64))) (size!2356 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1013 0))(
  ( (ValueCellFull!1013 (v!2968 V!3265)) (EmptyCell!1013) )
))
(declare-datatypes ((array!4428 0))(
  ( (array!4429 (arr!2097 (Array (_ BitVec 32) ValueCell!1013)) (size!2357 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!934 0))(
  ( (LongMapFixedSize!935 (defaultEntry!2673 Int) (mask!6863 (_ BitVec 32)) (extraKeys!2462 (_ BitVec 32)) (zeroValue!2540 V!3265) (minValue!2540 V!3265) (_size!516 (_ BitVec 32)) (_keys!4395 array!4426) (_values!2656 array!4428) (_vacant!516 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!934)

(declare-fun array_inv!1261 (array!4426) Bool)

(declare-fun array_inv!1262 (array!4428) Bool)

(assert (=> b!113871 (= e!73987 (and tp!10139 tp_is_empty!2713 (array_inv!1261 (_keys!4395 newMap!16)) (array_inv!1262 (_values!2656 newMap!16)) e!74003))))

(declare-fun mapNonEmpty!4067 () Bool)

(declare-fun mapRes!4067 () Bool)

(declare-fun tp!10137 () Bool)

(declare-fun e!73990 () Bool)

(assert (=> mapNonEmpty!4067 (= mapRes!4067 (and tp!10137 e!73990))))

(declare-fun mapValue!4067 () ValueCell!1013)

(declare-fun mapRest!4067 () (Array (_ BitVec 32) ValueCell!1013))

(declare-fun mapKey!4067 () (_ BitVec 32))

(assert (=> mapNonEmpty!4067 (= (arr!2097 (_values!2656 newMap!16)) (store mapRest!4067 mapKey!4067 mapValue!4067))))

(declare-fun b!113872 () Bool)

(declare-fun e!73991 () Bool)

(declare-fun e!73993 () Bool)

(assert (=> b!113872 (= e!73991 e!73993)))

(declare-fun res!56095 () Bool)

(assert (=> b!113872 (=> (not res!56095) (not e!73993))))

(declare-datatypes ((tuple2!2448 0))(
  ( (tuple2!2449 (_1!1234 (_ BitVec 64)) (_2!1234 V!3265)) )
))
(declare-datatypes ((List!1663 0))(
  ( (Nil!1660) (Cons!1659 (h!2259 tuple2!2448) (t!5861 List!1663)) )
))
(declare-datatypes ((ListLongMap!1607 0))(
  ( (ListLongMap!1608 (toList!819 List!1663)) )
))
(declare-fun lt!59166 () ListLongMap!1607)

(declare-fun lt!59174 () ListLongMap!1607)

(assert (=> b!113872 (= res!56095 (= lt!59166 lt!59174))))

(declare-fun map!1306 (LongMapFixedSize!934) ListLongMap!1607)

(assert (=> b!113872 (= lt!59174 (map!1306 newMap!16))))

(declare-datatypes ((Cell!734 0))(
  ( (Cell!735 (v!2969 LongMapFixedSize!934)) )
))
(declare-datatypes ((LongMap!734 0))(
  ( (LongMap!735 (underlying!378 Cell!734)) )
))
(declare-fun thiss!992 () LongMap!734)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!495 (array!4426 array!4428 (_ BitVec 32) (_ BitVec 32) V!3265 V!3265 (_ BitVec 32) Int) ListLongMap!1607)

(assert (=> b!113872 (= lt!59166 (getCurrentListMap!495 (_keys!4395 (v!2969 (underlying!378 thiss!992))) (_values!2656 (v!2969 (underlying!378 thiss!992))) (mask!6863 (v!2969 (underlying!378 thiss!992))) (extraKeys!2462 (v!2969 (underlying!378 thiss!992))) (zeroValue!2540 (v!2969 (underlying!378 thiss!992))) (minValue!2540 (v!2969 (underlying!378 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2673 (v!2969 (underlying!378 thiss!992)))))))

(declare-fun b!113873 () Bool)

(declare-fun e!73989 () Bool)

(declare-fun e!73994 () Bool)

(assert (=> b!113873 (= e!73989 (not e!73994))))

(declare-fun res!56096 () Bool)

(assert (=> b!113873 (=> res!56096 e!73994)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!113873 (= res!56096 (not (validMask!0 (mask!6863 (v!2969 (underlying!378 thiss!992))))))))

(declare-fun lt!59172 () ListLongMap!1607)

(declare-fun lt!59177 () tuple2!2448)

(declare-fun lt!59171 () tuple2!2448)

(declare-fun +!153 (ListLongMap!1607 tuple2!2448) ListLongMap!1607)

(assert (=> b!113873 (= (+!153 (+!153 lt!59172 lt!59177) lt!59171) (+!153 (+!153 lt!59172 lt!59171) lt!59177))))

(assert (=> b!113873 (= lt!59171 (tuple2!2449 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2540 (v!2969 (underlying!378 thiss!992)))))))

(declare-fun lt!59175 () V!3265)

(assert (=> b!113873 (= lt!59177 (tuple2!2449 (select (arr!2096 (_keys!4395 (v!2969 (underlying!378 thiss!992)))) from!355) lt!59175))))

(declare-datatypes ((Unit!3564 0))(
  ( (Unit!3565) )
))
(declare-fun lt!59173 () Unit!3564)

(declare-fun addCommutativeForDiffKeys!65 (ListLongMap!1607 (_ BitVec 64) V!3265 (_ BitVec 64) V!3265) Unit!3564)

(assert (=> b!113873 (= lt!59173 (addCommutativeForDiffKeys!65 lt!59172 (select (arr!2096 (_keys!4395 (v!2969 (underlying!378 thiss!992)))) from!355) lt!59175 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2540 (v!2969 (underlying!378 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!120 (array!4426 array!4428 (_ BitVec 32) (_ BitVec 32) V!3265 V!3265 (_ BitVec 32) Int) ListLongMap!1607)

(assert (=> b!113873 (= lt!59172 (getCurrentListMapNoExtraKeys!120 (_keys!4395 (v!2969 (underlying!378 thiss!992))) (_values!2656 (v!2969 (underlying!378 thiss!992))) (mask!6863 (v!2969 (underlying!378 thiss!992))) (extraKeys!2462 (v!2969 (underlying!378 thiss!992))) (zeroValue!2540 (v!2969 (underlying!378 thiss!992))) (minValue!2540 (v!2969 (underlying!378 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2673 (v!2969 (underlying!378 thiss!992)))))))

(declare-fun res!56098 () Bool)

(assert (=> start!13070 (=> (not res!56098) (not e!73991))))

(declare-fun valid!431 (LongMap!734) Bool)

(assert (=> start!13070 (= res!56098 (valid!431 thiss!992))))

(assert (=> start!13070 e!73991))

(assert (=> start!13070 e!73996))

(assert (=> start!13070 true))

(assert (=> start!13070 e!73987))

(declare-fun b!113874 () Bool)

(declare-fun res!56101 () Bool)

(assert (=> b!113874 (=> res!56101 e!73994)))

(declare-datatypes ((List!1664 0))(
  ( (Nil!1661) (Cons!1660 (h!2260 (_ BitVec 64)) (t!5862 List!1664)) )
))
(declare-fun arrayNoDuplicates!0 (array!4426 (_ BitVec 32) List!1664) Bool)

(assert (=> b!113874 (= res!56101 (not (arrayNoDuplicates!0 (_keys!4395 (v!2969 (underlying!378 thiss!992))) #b00000000000000000000000000000000 Nil!1661)))))

(declare-fun b!113875 () Bool)

(declare-fun res!56094 () Bool)

(assert (=> b!113875 (=> res!56094 e!73994)))

(assert (=> b!113875 (= res!56094 (or (not (= (size!2357 (_values!2656 (v!2969 (underlying!378 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6863 (v!2969 (underlying!378 thiss!992)))))) (not (= (size!2356 (_keys!4395 (v!2969 (underlying!378 thiss!992)))) (size!2357 (_values!2656 (v!2969 (underlying!378 thiss!992)))))) (bvslt (mask!6863 (v!2969 (underlying!378 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2462 (v!2969 (underlying!378 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2462 (v!2969 (underlying!378 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!4067 () Bool)

(assert (=> mapIsEmpty!4067 mapRes!4067))

(declare-fun b!113876 () Bool)

(declare-fun e!74001 () Unit!3564)

(declare-fun Unit!3566 () Unit!3564)

(assert (=> b!113876 (= e!74001 Unit!3566)))

(declare-fun b!113877 () Bool)

(declare-fun e!73988 () Bool)

(assert (=> b!113877 (= e!73993 e!73988)))

(declare-fun res!56091 () Bool)

(assert (=> b!113877 (=> (not res!56091) (not e!73988))))

(assert (=> b!113877 (= res!56091 (and (not (= (select (arr!2096 (_keys!4395 (v!2969 (underlying!378 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2096 (_keys!4395 (v!2969 (underlying!378 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1374 (ValueCell!1013 V!3265) V!3265)

(declare-fun dynLambda!396 (Int (_ BitVec 64)) V!3265)

(assert (=> b!113877 (= lt!59175 (get!1374 (select (arr!2097 (_values!2656 (v!2969 (underlying!378 thiss!992)))) from!355) (dynLambda!396 (defaultEntry!2673 (v!2969 (underlying!378 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!113878 () Bool)

(declare-fun e!73997 () Bool)

(assert (=> b!113878 (= e!73997 tp_is_empty!2713)))

(declare-fun e!74004 () Bool)

(assert (=> b!113879 (= e!73995 (and tp!10140 tp_is_empty!2713 (array_inv!1261 (_keys!4395 (v!2969 (underlying!378 thiss!992)))) (array_inv!1262 (_values!2656 (v!2969 (underlying!378 thiss!992)))) e!74004))))

(declare-fun b!113880 () Bool)

(assert (=> b!113880 (= e!73990 tp_is_empty!2713)))

(declare-fun b!113881 () Bool)

(declare-fun e!73998 () Bool)

(declare-fun mapRes!4068 () Bool)

(assert (=> b!113881 (= e!74004 (and e!73998 mapRes!4068))))

(declare-fun condMapEmpty!4067 () Bool)

(declare-fun mapDefault!4067 () ValueCell!1013)

