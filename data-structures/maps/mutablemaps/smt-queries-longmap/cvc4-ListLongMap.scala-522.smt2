; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13138 () Bool)

(assert start!13138)

(declare-fun b!115185 () Bool)

(declare-fun b_free!2661 () Bool)

(declare-fun b_next!2661 () Bool)

(assert (=> b!115185 (= b_free!2661 (not b_next!2661))))

(declare-fun tp!10348 () Bool)

(declare-fun b_and!7149 () Bool)

(assert (=> b!115185 (= tp!10348 b_and!7149)))

(declare-fun b!115193 () Bool)

(declare-fun b_free!2663 () Bool)

(declare-fun b_next!2663 () Bool)

(assert (=> b!115193 (= b_free!2663 (not b_next!2663))))

(declare-fun tp!10347 () Bool)

(declare-fun b_and!7151 () Bool)

(assert (=> b!115193 (= tp!10347 b_and!7151)))

(declare-fun mapNonEmpty!4173 () Bool)

(declare-fun mapRes!4173 () Bool)

(declare-fun tp!10346 () Bool)

(declare-fun e!75024 () Bool)

(assert (=> mapNonEmpty!4173 (= mapRes!4173 (and tp!10346 e!75024))))

(declare-datatypes ((V!3309 0))(
  ( (V!3310 (val!1418 Int)) )
))
(declare-datatypes ((array!4496 0))(
  ( (array!4497 (arr!2130 (Array (_ BitVec 32) (_ BitVec 64))) (size!2390 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1030 0))(
  ( (ValueCellFull!1030 (v!3003 V!3309)) (EmptyCell!1030) )
))
(declare-datatypes ((array!4498 0))(
  ( (array!4499 (arr!2131 (Array (_ BitVec 32) ValueCell!1030)) (size!2391 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!968 0))(
  ( (LongMapFixedSize!969 (defaultEntry!2693 Int) (mask!6893 (_ BitVec 32)) (extraKeys!2482 (_ BitVec 32)) (zeroValue!2560 V!3309) (minValue!2560 V!3309) (_size!533 (_ BitVec 32)) (_keys!4415 array!4496) (_values!2676 array!4498) (_vacant!533 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!766 0))(
  ( (Cell!767 (v!3004 LongMapFixedSize!968)) )
))
(declare-datatypes ((LongMap!766 0))(
  ( (LongMap!767 (underlying!394 Cell!766)) )
))
(declare-fun thiss!992 () LongMap!766)

(declare-fun mapRest!4174 () (Array (_ BitVec 32) ValueCell!1030))

(declare-fun mapValue!4174 () ValueCell!1030)

(declare-fun mapKey!4173 () (_ BitVec 32))

(assert (=> mapNonEmpty!4173 (= (arr!2131 (_values!2676 (v!3004 (underlying!394 thiss!992)))) (store mapRest!4174 mapKey!4173 mapValue!4174))))

(declare-fun e!75028 () Bool)

(declare-fun tp_is_empty!2747 () Bool)

(declare-fun e!75017 () Bool)

(declare-fun array_inv!1287 (array!4496) Bool)

(declare-fun array_inv!1288 (array!4498) Bool)

(assert (=> b!115185 (= e!75017 (and tp!10348 tp_is_empty!2747 (array_inv!1287 (_keys!4415 (v!3004 (underlying!394 thiss!992)))) (array_inv!1288 (_values!2676 (v!3004 (underlying!394 thiss!992)))) e!75028))))

(declare-fun b!115186 () Bool)

(declare-fun res!56586 () Bool)

(declare-fun e!75014 () Bool)

(assert (=> b!115186 (=> (not res!56586) (not e!75014))))

(declare-fun newMap!16 () LongMapFixedSize!968)

(declare-fun valid!449 (LongMapFixedSize!968) Bool)

(assert (=> b!115186 (= res!56586 (valid!449 newMap!16))))

(declare-fun b!115187 () Bool)

(declare-fun res!56587 () Bool)

(assert (=> b!115187 (=> (not res!56587) (not e!75014))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!115187 (= res!56587 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2390 (_keys!4415 (v!3004 (underlying!394 thiss!992)))))))))

(declare-fun b!115188 () Bool)

(declare-fun e!75023 () Bool)

(assert (=> b!115188 (= e!75023 e!75017)))

(declare-fun b!115189 () Bool)

(declare-fun e!75015 () Bool)

(assert (=> b!115189 (= e!75015 false)))

(declare-datatypes ((Unit!3609 0))(
  ( (Unit!3610) )
))
(declare-fun lt!60043 () Unit!3609)

(declare-fun e!75025 () Unit!3609)

(assert (=> b!115189 (= lt!60043 e!75025)))

(declare-fun c!20569 () Bool)

(declare-datatypes ((tuple2!2488 0))(
  ( (tuple2!2489 (_1!1254 (_ BitVec 64)) (_2!1254 V!3309)) )
))
(declare-datatypes ((List!1683 0))(
  ( (Nil!1680) (Cons!1679 (h!2279 tuple2!2488) (t!5949 List!1683)) )
))
(declare-datatypes ((ListLongMap!1629 0))(
  ( (ListLongMap!1630 (toList!830 List!1683)) )
))
(declare-fun lt!60039 () ListLongMap!1629)

(declare-fun contains!858 (ListLongMap!1629 (_ BitVec 64)) Bool)

(assert (=> b!115189 (= c!20569 (contains!858 lt!60039 (select (arr!2130 (_keys!4415 (v!3004 (underlying!394 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2490 0))(
  ( (tuple2!2491 (_1!1255 Bool) (_2!1255 LongMapFixedSize!968)) )
))
(declare-fun lt!60041 () tuple2!2490)

(declare-fun update!175 (LongMapFixedSize!968 (_ BitVec 64) V!3309) tuple2!2490)

(declare-fun get!1396 (ValueCell!1030 V!3309) V!3309)

(declare-fun dynLambda!406 (Int (_ BitVec 64)) V!3309)

(assert (=> b!115189 (= lt!60041 (update!175 newMap!16 (select (arr!2130 (_keys!4415 (v!3004 (underlying!394 thiss!992)))) from!355) (get!1396 (select (arr!2131 (_values!2676 (v!3004 (underlying!394 thiss!992)))) from!355) (dynLambda!406 (defaultEntry!2693 (v!3004 (underlying!394 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!115190 () Bool)

(declare-fun e!75027 () Bool)

(assert (=> b!115190 (= e!75027 tp_is_empty!2747)))

(declare-fun b!115191 () Bool)

(declare-fun Unit!3611 () Unit!3609)

(assert (=> b!115191 (= e!75025 Unit!3611)))

(declare-fun e!75016 () Bool)

(declare-fun e!75019 () Bool)

(assert (=> b!115193 (= e!75019 (and tp!10347 tp_is_empty!2747 (array_inv!1287 (_keys!4415 newMap!16)) (array_inv!1288 (_values!2676 newMap!16)) e!75016))))

(declare-fun b!115194 () Bool)

(assert (=> b!115194 (= e!75024 tp_is_empty!2747)))

(declare-fun b!115195 () Bool)

(declare-fun e!75020 () Bool)

(assert (=> b!115195 (= e!75020 tp_is_empty!2747)))

(declare-fun mapIsEmpty!4173 () Bool)

(assert (=> mapIsEmpty!4173 mapRes!4173))

(declare-fun b!115196 () Bool)

(declare-fun e!75018 () Bool)

(assert (=> b!115196 (= e!75018 tp_is_empty!2747)))

(declare-fun b!115197 () Bool)

(declare-fun Unit!3612 () Unit!3609)

(assert (=> b!115197 (= e!75025 Unit!3612)))

(declare-fun lt!60044 () Unit!3609)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!130 (array!4496 array!4498 (_ BitVec 32) (_ BitVec 32) V!3309 V!3309 (_ BitVec 64) (_ BitVec 32) Int) Unit!3609)

(assert (=> b!115197 (= lt!60044 (lemmaListMapContainsThenArrayContainsFrom!130 (_keys!4415 (v!3004 (underlying!394 thiss!992))) (_values!2676 (v!3004 (underlying!394 thiss!992))) (mask!6893 (v!3004 (underlying!394 thiss!992))) (extraKeys!2482 (v!3004 (underlying!394 thiss!992))) (zeroValue!2560 (v!3004 (underlying!394 thiss!992))) (minValue!2560 (v!3004 (underlying!394 thiss!992))) (select (arr!2130 (_keys!4415 (v!3004 (underlying!394 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2693 (v!3004 (underlying!394 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!115197 (arrayContainsKey!0 (_keys!4415 (v!3004 (underlying!394 thiss!992))) (select (arr!2130 (_keys!4415 (v!3004 (underlying!394 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!60042 () Unit!3609)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4496 (_ BitVec 32) (_ BitVec 32)) Unit!3609)

(assert (=> b!115197 (= lt!60042 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4415 (v!3004 (underlying!394 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1684 0))(
  ( (Nil!1681) (Cons!1680 (h!2280 (_ BitVec 64)) (t!5950 List!1684)) )
))
(declare-fun arrayNoDuplicates!0 (array!4496 (_ BitVec 32) List!1684) Bool)

(assert (=> b!115197 (arrayNoDuplicates!0 (_keys!4415 (v!3004 (underlying!394 thiss!992))) from!355 Nil!1681)))

(declare-fun lt!60040 () Unit!3609)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4496 (_ BitVec 32) (_ BitVec 64) List!1684) Unit!3609)

(assert (=> b!115197 (= lt!60040 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4415 (v!3004 (underlying!394 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2130 (_keys!4415 (v!3004 (underlying!394 thiss!992)))) from!355) (Cons!1680 (select (arr!2130 (_keys!4415 (v!3004 (underlying!394 thiss!992)))) from!355) Nil!1681)))))

(assert (=> b!115197 false))

(declare-fun b!115198 () Bool)

(declare-fun e!75021 () Bool)

(assert (=> b!115198 (= e!75021 e!75023)))

(declare-fun b!115199 () Bool)

(declare-fun mapRes!4174 () Bool)

(assert (=> b!115199 (= e!75016 (and e!75020 mapRes!4174))))

(declare-fun condMapEmpty!4174 () Bool)

(declare-fun mapDefault!4174 () ValueCell!1030)

