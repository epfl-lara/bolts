; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12200 () Bool)

(assert start!12200)

(declare-fun b!103183 () Bool)

(declare-fun b_free!2509 () Bool)

(declare-fun b_next!2509 () Bool)

(assert (=> b!103183 (= b_free!2509 (not b_next!2509))))

(declare-fun tp!9843 () Bool)

(declare-fun b_and!6389 () Bool)

(assert (=> b!103183 (= tp!9843 b_and!6389)))

(declare-fun b!103182 () Bool)

(declare-fun b_free!2511 () Bool)

(declare-fun b_next!2511 () Bool)

(assert (=> b!103182 (= b_free!2511 (not b_next!2511))))

(declare-fun tp!9841 () Bool)

(declare-fun b_and!6391 () Bool)

(assert (=> b!103182 (= tp!9841 b_and!6391)))

(declare-fun mapIsEmpty!3897 () Bool)

(declare-fun mapRes!3897 () Bool)

(assert (=> mapIsEmpty!3897 mapRes!3897))

(declare-fun e!67233 () Bool)

(declare-fun e!67221 () Bool)

(declare-datatypes ((V!3209 0))(
  ( (V!3210 (val!1380 Int)) )
))
(declare-datatypes ((array!4330 0))(
  ( (array!4331 (arr!2054 (Array (_ BitVec 32) (_ BitVec 64))) (size!2308 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!992 0))(
  ( (ValueCellFull!992 (v!2873 V!3209)) (EmptyCell!992) )
))
(declare-datatypes ((array!4332 0))(
  ( (array!4333 (arr!2055 (Array (_ BitVec 32) ValueCell!992)) (size!2309 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!892 0))(
  ( (LongMapFixedSize!893 (defaultEntry!2560 Int) (mask!6696 (_ BitVec 32)) (extraKeys!2369 (_ BitVec 32)) (zeroValue!2437 V!3209) (minValue!2437 V!3209) (_size!495 (_ BitVec 32)) (_keys!4262 array!4330) (_values!2543 array!4332) (_vacant!495 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!892)

(declare-fun tp_is_empty!2671 () Bool)

(declare-fun array_inv!1235 (array!4330) Bool)

(declare-fun array_inv!1236 (array!4332) Bool)

(assert (=> b!103182 (= e!67221 (and tp!9841 tp_is_empty!2671 (array_inv!1235 (_keys!4262 newMap!16)) (array_inv!1236 (_values!2543 newMap!16)) e!67233))))

(declare-fun b!103184 () Bool)

(declare-datatypes ((Unit!3166 0))(
  ( (Unit!3167) )
))
(declare-fun e!67229 () Unit!3166)

(declare-fun Unit!3168 () Unit!3166)

(assert (=> b!103184 (= e!67229 Unit!3168)))

(declare-fun b!103185 () Bool)

(declare-fun e!67224 () Bool)

(declare-fun e!67227 () Bool)

(assert (=> b!103185 (= e!67224 e!67227)))

(declare-fun res!51541 () Bool)

(assert (=> b!103185 (=> (not res!51541) (not e!67227))))

(declare-datatypes ((tuple2!2396 0))(
  ( (tuple2!2397 (_1!1208 Bool) (_2!1208 LongMapFixedSize!892)) )
))
(declare-fun lt!52508 () tuple2!2396)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!103185 (= res!51541 (and (_1!1208 lt!52508) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!52514 () Unit!3166)

(assert (=> b!103185 (= lt!52514 e!67229)))

(declare-datatypes ((Cell!694 0))(
  ( (Cell!695 (v!2874 LongMapFixedSize!892)) )
))
(declare-datatypes ((LongMap!694 0))(
  ( (LongMap!695 (underlying!358 Cell!694)) )
))
(declare-fun thiss!992 () LongMap!694)

(declare-fun c!17768 () Bool)

(declare-datatypes ((tuple2!2398 0))(
  ( (tuple2!2399 (_1!1209 (_ BitVec 64)) (_2!1209 V!3209)) )
))
(declare-datatypes ((List!1635 0))(
  ( (Nil!1632) (Cons!1631 (h!2227 tuple2!2398) (t!5705 List!1635)) )
))
(declare-datatypes ((ListLongMap!1577 0))(
  ( (ListLongMap!1578 (toList!804 List!1635)) )
))
(declare-fun lt!52512 () ListLongMap!1577)

(declare-fun contains!824 (ListLongMap!1577 (_ BitVec 64)) Bool)

(assert (=> b!103185 (= c!17768 (contains!824 lt!52512 (select (arr!2054 (_keys!4262 (v!2874 (underlying!358 thiss!992)))) from!355)))))

(declare-fun lt!52506 () V!3209)

(declare-fun update!155 (LongMapFixedSize!892 (_ BitVec 64) V!3209) tuple2!2396)

(assert (=> b!103185 (= lt!52508 (update!155 newMap!16 (select (arr!2054 (_keys!4262 (v!2874 (underlying!358 thiss!992)))) from!355) lt!52506))))

(declare-fun b!103186 () Bool)

(declare-fun e!67235 () Bool)

(declare-fun e!67230 () Bool)

(assert (=> b!103186 (= e!67235 e!67230)))

(declare-fun b!103187 () Bool)

(declare-fun e!67237 () Bool)

(assert (=> b!103187 (= e!67237 tp_is_empty!2671)))

(declare-fun b!103188 () Bool)

(declare-fun Unit!3169 () Unit!3166)

(assert (=> b!103188 (= e!67229 Unit!3169)))

(declare-fun lt!52516 () Unit!3166)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!109 (array!4330 array!4332 (_ BitVec 32) (_ BitVec 32) V!3209 V!3209 (_ BitVec 64) (_ BitVec 32) Int) Unit!3166)

(assert (=> b!103188 (= lt!52516 (lemmaListMapContainsThenArrayContainsFrom!109 (_keys!4262 (v!2874 (underlying!358 thiss!992))) (_values!2543 (v!2874 (underlying!358 thiss!992))) (mask!6696 (v!2874 (underlying!358 thiss!992))) (extraKeys!2369 (v!2874 (underlying!358 thiss!992))) (zeroValue!2437 (v!2874 (underlying!358 thiss!992))) (minValue!2437 (v!2874 (underlying!358 thiss!992))) (select (arr!2054 (_keys!4262 (v!2874 (underlying!358 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2560 (v!2874 (underlying!358 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!103188 (arrayContainsKey!0 (_keys!4262 (v!2874 (underlying!358 thiss!992))) (select (arr!2054 (_keys!4262 (v!2874 (underlying!358 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!52513 () Unit!3166)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4330 (_ BitVec 32) (_ BitVec 32)) Unit!3166)

(assert (=> b!103188 (= lt!52513 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4262 (v!2874 (underlying!358 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1636 0))(
  ( (Nil!1633) (Cons!1632 (h!2228 (_ BitVec 64)) (t!5706 List!1636)) )
))
(declare-fun arrayNoDuplicates!0 (array!4330 (_ BitVec 32) List!1636) Bool)

(assert (=> b!103188 (arrayNoDuplicates!0 (_keys!4262 (v!2874 (underlying!358 thiss!992))) from!355 Nil!1633)))

(declare-fun lt!52510 () Unit!3166)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4330 (_ BitVec 32) (_ BitVec 64) List!1636) Unit!3166)

(assert (=> b!103188 (= lt!52510 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4262 (v!2874 (underlying!358 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2054 (_keys!4262 (v!2874 (underlying!358 thiss!992)))) from!355) (Cons!1632 (select (arr!2054 (_keys!4262 (v!2874 (underlying!358 thiss!992)))) from!355) Nil!1633)))))

(assert (=> b!103188 false))

(declare-fun b!103189 () Bool)

(declare-fun e!67228 () Bool)

(assert (=> b!103189 (= e!67228 tp_is_empty!2671)))

(declare-fun b!103190 () Bool)

(declare-fun e!67222 () Bool)

(declare-fun mapRes!3898 () Bool)

(assert (=> b!103190 (= e!67222 (and e!67228 mapRes!3898))))

(declare-fun condMapEmpty!3898 () Bool)

(declare-fun mapDefault!3898 () ValueCell!992)

