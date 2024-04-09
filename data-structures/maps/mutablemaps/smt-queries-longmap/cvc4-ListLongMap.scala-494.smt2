; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11128 () Bool)

(assert start!11128)

(declare-fun b!90977 () Bool)

(declare-fun b_free!2325 () Bool)

(declare-fun b_next!2325 () Bool)

(assert (=> b!90977 (= b_free!2325 (not b_next!2325))))

(declare-fun tp!9223 () Bool)

(declare-fun b_and!5501 () Bool)

(assert (=> b!90977 (= tp!9223 b_and!5501)))

(declare-fun b!90971 () Bool)

(declare-fun b_free!2327 () Bool)

(declare-fun b_next!2327 () Bool)

(assert (=> b!90971 (= b_free!2327 (not b_next!2327))))

(declare-fun tp!9225 () Bool)

(declare-fun b_and!5503 () Bool)

(assert (=> b!90971 (= tp!9225 b_and!5503)))

(declare-fun b!90957 () Bool)

(declare-datatypes ((Unit!2729 0))(
  ( (Unit!2730) )
))
(declare-fun e!59349 () Unit!2729)

(declare-fun Unit!2731 () Unit!2729)

(assert (=> b!90957 (= e!59349 Unit!2731)))

(declare-fun b!90958 () Bool)

(declare-fun res!46342 () Bool)

(declare-fun e!59357 () Bool)

(assert (=> b!90958 (=> res!46342 e!59357)))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3085 0))(
  ( (V!3086 (val!1334 Int)) )
))
(declare-datatypes ((array!4124 0))(
  ( (array!4125 (arr!1962 (Array (_ BitVec 32) (_ BitVec 64))) (size!2209 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!946 0))(
  ( (ValueCellFull!946 (v!2715 V!3085)) (EmptyCell!946) )
))
(declare-datatypes ((array!4126 0))(
  ( (array!4127 (arr!1963 (Array (_ BitVec 32) ValueCell!946)) (size!2210 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!800 0))(
  ( (LongMapFixedSize!801 (defaultEntry!2401 Int) (mask!6459 (_ BitVec 32)) (extraKeys!2232 (_ BitVec 32)) (zeroValue!2289 V!3085) (minValue!2289 V!3085) (_size!449 (_ BitVec 32)) (_keys!4081 array!4124) (_values!2384 array!4126) (_vacant!449 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!604 0))(
  ( (Cell!605 (v!2716 LongMapFixedSize!800)) )
))
(declare-datatypes ((LongMap!604 0))(
  ( (LongMap!605 (underlying!313 Cell!604)) )
))
(declare-fun thiss!992 () LongMap!604)

(assert (=> b!90958 (= res!46342 (bvsge (bvsub from!355 #b00000000000000000000000000000001) (size!2209 (_keys!4081 (v!2716 (underlying!313 thiss!992))))))))

(declare-fun b!90959 () Bool)

(declare-fun e!59346 () Bool)

(declare-fun e!59352 () Bool)

(assert (=> b!90959 (= e!59346 e!59352)))

(declare-fun res!46347 () Bool)

(assert (=> b!90959 (=> (not res!46347) (not e!59352))))

(assert (=> b!90959 (= res!46347 (and (not (= (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!44151 () V!3085)

(declare-fun get!1249 (ValueCell!946 V!3085) V!3085)

(declare-fun dynLambda!364 (Int (_ BitVec 64)) V!3085)

(assert (=> b!90959 (= lt!44151 (get!1249 (select (arr!1963 (_values!2384 (v!2716 (underlying!313 thiss!992)))) from!355) (dynLambda!364 (defaultEntry!2401 (v!2716 (underlying!313 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!90960 () Bool)

(declare-fun e!59359 () Bool)

(assert (=> b!90960 (= e!59352 e!59359)))

(declare-fun res!46345 () Bool)

(assert (=> b!90960 (=> (not res!46345) (not e!59359))))

(declare-datatypes ((tuple2!2286 0))(
  ( (tuple2!2287 (_1!1153 Bool) (_2!1153 LongMapFixedSize!800)) )
))
(declare-fun lt!44146 () tuple2!2286)

(assert (=> b!90960 (= res!46345 (and (_1!1153 lt!44146) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!44161 () Unit!2729)

(assert (=> b!90960 (= lt!44161 e!59349)))

(declare-fun c!15076 () Bool)

(declare-datatypes ((tuple2!2288 0))(
  ( (tuple2!2289 (_1!1154 (_ BitVec 64)) (_2!1154 V!3085)) )
))
(declare-datatypes ((List!1579 0))(
  ( (Nil!1576) (Cons!1575 (h!2167 tuple2!2288) (t!5409 List!1579)) )
))
(declare-datatypes ((ListLongMap!1515 0))(
  ( (ListLongMap!1516 (toList!773 List!1579)) )
))
(declare-fun lt!44156 () ListLongMap!1515)

(declare-fun contains!781 (ListLongMap!1515 (_ BitVec 64)) Bool)

(assert (=> b!90960 (= c!15076 (contains!781 lt!44156 (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!800)

(declare-fun update!133 (LongMapFixedSize!800 (_ BitVec 64) V!3085) tuple2!2286)

(assert (=> b!90960 (= lt!44146 (update!133 newMap!16 (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) lt!44151))))

(declare-fun mapNonEmpty!3555 () Bool)

(declare-fun mapRes!3555 () Bool)

(declare-fun tp!9224 () Bool)

(declare-fun e!59353 () Bool)

(assert (=> mapNonEmpty!3555 (= mapRes!3555 (and tp!9224 e!59353))))

(declare-fun mapValue!3555 () ValueCell!946)

(declare-fun mapRest!3556 () (Array (_ BitVec 32) ValueCell!946))

(declare-fun mapKey!3556 () (_ BitVec 32))

(assert (=> mapNonEmpty!3555 (= (arr!1963 (_values!2384 (v!2716 (underlying!313 thiss!992)))) (store mapRest!3556 mapKey!3556 mapValue!3555))))

(declare-fun b!90961 () Bool)

(declare-fun tp_is_empty!2579 () Bool)

(assert (=> b!90961 (= e!59353 tp_is_empty!2579)))

(declare-fun mapIsEmpty!3555 () Bool)

(declare-fun mapRes!3556 () Bool)

(assert (=> mapIsEmpty!3555 mapRes!3556))

(declare-fun b!90962 () Bool)

(declare-fun e!59348 () Bool)

(assert (=> b!90962 (= e!59348 tp_is_empty!2579)))

(declare-fun b!90963 () Bool)

(declare-fun Unit!2732 () Unit!2729)

(assert (=> b!90963 (= e!59349 Unit!2732)))

(declare-fun lt!44147 () Unit!2729)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!84 (array!4124 array!4126 (_ BitVec 32) (_ BitVec 32) V!3085 V!3085 (_ BitVec 64) (_ BitVec 32) Int) Unit!2729)

(assert (=> b!90963 (= lt!44147 (lemmaListMapContainsThenArrayContainsFrom!84 (_keys!4081 (v!2716 (underlying!313 thiss!992))) (_values!2384 (v!2716 (underlying!313 thiss!992))) (mask!6459 (v!2716 (underlying!313 thiss!992))) (extraKeys!2232 (v!2716 (underlying!313 thiss!992))) (zeroValue!2289 (v!2716 (underlying!313 thiss!992))) (minValue!2289 (v!2716 (underlying!313 thiss!992))) (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2401 (v!2716 (underlying!313 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!90963 (arrayContainsKey!0 (_keys!4081 (v!2716 (underlying!313 thiss!992))) (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!44158 () Unit!2729)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4124 (_ BitVec 32) (_ BitVec 32)) Unit!2729)

(assert (=> b!90963 (= lt!44158 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4081 (v!2716 (underlying!313 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1580 0))(
  ( (Nil!1577) (Cons!1576 (h!2168 (_ BitVec 64)) (t!5410 List!1580)) )
))
(declare-fun arrayNoDuplicates!0 (array!4124 (_ BitVec 32) List!1580) Bool)

(assert (=> b!90963 (arrayNoDuplicates!0 (_keys!4081 (v!2716 (underlying!313 thiss!992))) from!355 Nil!1577)))

(declare-fun lt!44145 () Unit!2729)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4124 (_ BitVec 32) (_ BitVec 64) List!1580) Unit!2729)

(assert (=> b!90963 (= lt!44145 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4081 (v!2716 (underlying!313 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) (Cons!1576 (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) Nil!1577)))))

(assert (=> b!90963 false))

(declare-fun mapIsEmpty!3556 () Bool)

(assert (=> mapIsEmpty!3556 mapRes!3555))

(declare-fun b!90964 () Bool)

(assert (=> b!90964 (= e!59359 (not e!59357))))

(declare-fun res!46348 () Bool)

(assert (=> b!90964 (=> res!46348 e!59357)))

(declare-fun getCurrentListMap!455 (array!4124 array!4126 (_ BitVec 32) (_ BitVec 32) V!3085 V!3085 (_ BitVec 32) Int) ListLongMap!1515)

(declare-fun map!1221 (LongMapFixedSize!800) ListLongMap!1515)

(assert (=> b!90964 (= res!46348 (not (= (getCurrentListMap!455 (_keys!4081 (v!2716 (underlying!313 thiss!992))) (_values!2384 (v!2716 (underlying!313 thiss!992))) (mask!6459 (v!2716 (underlying!313 thiss!992))) (extraKeys!2232 (v!2716 (underlying!313 thiss!992))) (zeroValue!2289 (v!2716 (underlying!313 thiss!992))) (minValue!2289 (v!2716 (underlying!313 thiss!992))) from!355 (defaultEntry!2401 (v!2716 (underlying!313 thiss!992)))) (map!1221 (_2!1153 lt!44146)))))))

(declare-fun lt!44159 () ListLongMap!1515)

(declare-fun lt!44157 () tuple2!2288)

(declare-fun lt!44150 () ListLongMap!1515)

(declare-fun lt!44155 () tuple2!2288)

(declare-fun +!128 (ListLongMap!1515 tuple2!2288) ListLongMap!1515)

(assert (=> b!90964 (= (+!128 lt!44159 lt!44155) (+!128 (+!128 lt!44150 lt!44155) lt!44157))))

(assert (=> b!90964 (= lt!44155 (tuple2!2289 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2289 (v!2716 (underlying!313 thiss!992)))))))

(declare-fun lt!44152 () Unit!2729)

(declare-fun addCommutativeForDiffKeys!47 (ListLongMap!1515 (_ BitVec 64) V!3085 (_ BitVec 64) V!3085) Unit!2729)

(assert (=> b!90964 (= lt!44152 (addCommutativeForDiffKeys!47 lt!44150 (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) lt!44151 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2289 (v!2716 (underlying!313 thiss!992)))))))

(declare-fun lt!44160 () ListLongMap!1515)

(assert (=> b!90964 (= lt!44160 lt!44159)))

(assert (=> b!90964 (= lt!44159 (+!128 lt!44150 lt!44157))))

(declare-fun lt!44153 () ListLongMap!1515)

(declare-fun lt!44154 () tuple2!2288)

(assert (=> b!90964 (= lt!44160 (+!128 lt!44153 lt!44154))))

(declare-fun lt!44149 () ListLongMap!1515)

(assert (=> b!90964 (= lt!44150 (+!128 lt!44149 lt!44154))))

(assert (=> b!90964 (= lt!44154 (tuple2!2289 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2289 (v!2716 (underlying!313 thiss!992)))))))

(assert (=> b!90964 (= lt!44153 (+!128 lt!44149 lt!44157))))

(assert (=> b!90964 (= lt!44157 (tuple2!2289 (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) lt!44151))))

(declare-fun lt!44148 () Unit!2729)

(assert (=> b!90964 (= lt!44148 (addCommutativeForDiffKeys!47 lt!44149 (select (arr!1962 (_keys!4081 (v!2716 (underlying!313 thiss!992)))) from!355) lt!44151 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2289 (v!2716 (underlying!313 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!92 (array!4124 array!4126 (_ BitVec 32) (_ BitVec 32) V!3085 V!3085 (_ BitVec 32) Int) ListLongMap!1515)

(assert (=> b!90964 (= lt!44149 (getCurrentListMapNoExtraKeys!92 (_keys!4081 (v!2716 (underlying!313 thiss!992))) (_values!2384 (v!2716 (underlying!313 thiss!992))) (mask!6459 (v!2716 (underlying!313 thiss!992))) (extraKeys!2232 (v!2716 (underlying!313 thiss!992))) (zeroValue!2289 (v!2716 (underlying!313 thiss!992))) (minValue!2289 (v!2716 (underlying!313 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2401 (v!2716 (underlying!313 thiss!992)))))))

(declare-fun b!90965 () Bool)

(declare-fun e!59360 () Bool)

(declare-fun e!59344 () Bool)

(assert (=> b!90965 (= e!59360 (and e!59344 mapRes!3556))))

(declare-fun condMapEmpty!3556 () Bool)

(declare-fun mapDefault!3555 () ValueCell!946)

