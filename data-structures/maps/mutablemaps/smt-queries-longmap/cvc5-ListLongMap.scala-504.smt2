; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11810 () Bool)

(assert start!11810)

(declare-fun b!99070 () Bool)

(declare-fun b_free!2437 () Bool)

(declare-fun b_next!2437 () Bool)

(assert (=> b!99070 (= b_free!2437 (not b_next!2437))))

(declare-fun tp!9603 () Bool)

(declare-fun b_and!6093 () Bool)

(assert (=> b!99070 (= tp!9603 b_and!6093)))

(declare-fun b!99063 () Bool)

(declare-fun b_free!2439 () Bool)

(declare-fun b_next!2439 () Bool)

(assert (=> b!99063 (= b_free!2439 (not b_next!2439))))

(declare-fun tp!9601 () Bool)

(declare-fun b_and!6095 () Bool)

(assert (=> b!99063 (= tp!9601 b_and!6095)))

(declare-fun b!99061 () Bool)

(declare-datatypes ((Unit!3028 0))(
  ( (Unit!3029) )
))
(declare-fun e!64560 () Unit!3028)

(declare-fun Unit!3030 () Unit!3028)

(assert (=> b!99061 (= e!64560 Unit!3030)))

(declare-fun mapNonEmpty!3765 () Bool)

(declare-fun mapRes!3766 () Bool)

(declare-fun tp!9602 () Bool)

(declare-fun e!64570 () Bool)

(assert (=> mapNonEmpty!3765 (= mapRes!3766 (and tp!9602 e!64570))))

(declare-fun mapKey!3765 () (_ BitVec 32))

(declare-datatypes ((V!3161 0))(
  ( (V!3162 (val!1362 Int)) )
))
(declare-datatypes ((array!4250 0))(
  ( (array!4251 (arr!2018 (Array (_ BitVec 32) (_ BitVec 64))) (size!2269 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!974 0))(
  ( (ValueCellFull!974 (v!2814 V!3161)) (EmptyCell!974) )
))
(declare-datatypes ((array!4252 0))(
  ( (array!4253 (arr!2019 (Array (_ BitVec 32) ValueCell!974)) (size!2270 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!856 0))(
  ( (LongMapFixedSize!857 (defaultEntry!2501 Int) (mask!6608 (_ BitVec 32)) (extraKeys!2318 (_ BitVec 32)) (zeroValue!2382 V!3161) (minValue!2382 V!3161) (_size!477 (_ BitVec 32)) (_keys!4195 array!4250) (_values!2484 array!4252) (_vacant!477 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!856)

(declare-fun mapValue!3766 () ValueCell!974)

(declare-fun mapRest!3765 () (Array (_ BitVec 32) ValueCell!974))

(assert (=> mapNonEmpty!3765 (= (arr!2019 (_values!2484 newMap!16)) (store mapRest!3765 mapKey!3765 mapValue!3766))))

(declare-fun b!99062 () Bool)

(declare-fun e!64563 () Bool)

(declare-datatypes ((Cell!660 0))(
  ( (Cell!661 (v!2815 LongMapFixedSize!856)) )
))
(declare-datatypes ((LongMap!660 0))(
  ( (LongMap!661 (underlying!341 Cell!660)) )
))
(declare-fun thiss!992 () LongMap!660)

(assert (=> b!99062 (= e!64563 (and (= (size!2270 (_values!2484 (v!2815 (underlying!341 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6608 (v!2815 (underlying!341 thiss!992))))) (= (size!2269 (_keys!4195 (v!2815 (underlying!341 thiss!992)))) (size!2270 (_values!2484 (v!2815 (underlying!341 thiss!992))))) (bvsge (mask!6608 (v!2815 (underlying!341 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2318 (v!2815 (underlying!341 thiss!992))) #b00000000000000000000000000000000) (bvsgt (extraKeys!2318 (v!2815 (underlying!341 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun e!64566 () Bool)

(declare-fun tp_is_empty!2635 () Bool)

(declare-fun e!64559 () Bool)

(declare-fun array_inv!1215 (array!4250) Bool)

(declare-fun array_inv!1216 (array!4252) Bool)

(assert (=> b!99063 (= e!64559 (and tp!9601 tp_is_empty!2635 (array_inv!1215 (_keys!4195 newMap!16)) (array_inv!1216 (_values!2484 newMap!16)) e!64566))))

(declare-fun b!99064 () Bool)

(declare-fun e!64569 () Bool)

(declare-fun e!64562 () Bool)

(assert (=> b!99064 (= e!64569 e!64562)))

(declare-fun b!99065 () Bool)

(declare-fun e!64555 () Bool)

(assert (=> b!99065 (= e!64555 tp_is_empty!2635)))

(declare-fun b!99066 () Bool)

(declare-fun res!49789 () Bool)

(assert (=> b!99066 (=> (not res!49789) (not e!64563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!99066 (= res!49789 (validMask!0 (mask!6608 (v!2815 (underlying!341 thiss!992)))))))

(declare-fun b!99067 () Bool)

(declare-fun e!64568 () Bool)

(assert (=> b!99067 (= e!64562 e!64568)))

(declare-fun mapNonEmpty!3766 () Bool)

(declare-fun mapRes!3765 () Bool)

(declare-fun tp!9604 () Bool)

(declare-fun e!64557 () Bool)

(assert (=> mapNonEmpty!3766 (= mapRes!3765 (and tp!9604 e!64557))))

(declare-fun mapValue!3765 () ValueCell!974)

(declare-fun mapKey!3766 () (_ BitVec 32))

(declare-fun mapRest!3766 () (Array (_ BitVec 32) ValueCell!974))

(assert (=> mapNonEmpty!3766 (= (arr!2019 (_values!2484 (v!2815 (underlying!341 thiss!992)))) (store mapRest!3766 mapKey!3766 mapValue!3765))))

(declare-fun b!99068 () Bool)

(assert (=> b!99068 (= e!64570 tp_is_empty!2635)))

(declare-fun b!99069 () Bool)

(declare-fun res!49794 () Bool)

(declare-fun e!64561 () Bool)

(assert (=> b!99069 (=> (not res!49794) (not e!64561))))

(assert (=> b!99069 (= res!49794 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6608 newMap!16)) (_size!477 (v!2815 (underlying!341 thiss!992)))))))

(declare-fun e!64567 () Bool)

(assert (=> b!99070 (= e!64568 (and tp!9603 tp_is_empty!2635 (array_inv!1215 (_keys!4195 (v!2815 (underlying!341 thiss!992)))) (array_inv!1216 (_values!2484 (v!2815 (underlying!341 thiss!992)))) e!64567))))

(declare-fun b!99071 () Bool)

(declare-fun e!64556 () Bool)

(assert (=> b!99071 (= e!64556 e!64563)))

(declare-fun res!49793 () Bool)

(assert (=> b!99071 (=> (not res!49793) (not e!64563))))

(declare-datatypes ((tuple2!2360 0))(
  ( (tuple2!2361 (_1!1190 Bool) (_2!1190 LongMapFixedSize!856)) )
))
(declare-fun lt!49844 () tuple2!2360)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!99071 (= res!49793 (and (_1!1190 lt!49844) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!49845 () Unit!3028)

(assert (=> b!99071 (= lt!49845 e!64560)))

(declare-datatypes ((tuple2!2362 0))(
  ( (tuple2!2363 (_1!1191 (_ BitVec 64)) (_2!1191 V!3161)) )
))
(declare-datatypes ((List!1614 0))(
  ( (Nil!1611) (Cons!1610 (h!2205 tuple2!2362) (t!5592 List!1614)) )
))
(declare-datatypes ((ListLongMap!1555 0))(
  ( (ListLongMap!1556 (toList!793 List!1614)) )
))
(declare-fun lt!49842 () ListLongMap!1555)

(declare-fun c!16900 () Bool)

(declare-fun contains!809 (ListLongMap!1555 (_ BitVec 64)) Bool)

(assert (=> b!99071 (= c!16900 (contains!809 lt!49842 (select (arr!2018 (_keys!4195 (v!2815 (underlying!341 thiss!992)))) from!355)))))

(declare-fun update!148 (LongMapFixedSize!856 (_ BitVec 64) V!3161) tuple2!2360)

(declare-fun get!1303 (ValueCell!974 V!3161) V!3161)

(declare-fun dynLambda!380 (Int (_ BitVec 64)) V!3161)

(assert (=> b!99071 (= lt!49844 (update!148 newMap!16 (select (arr!2018 (_keys!4195 (v!2815 (underlying!341 thiss!992)))) from!355) (get!1303 (select (arr!2019 (_values!2484 (v!2815 (underlying!341 thiss!992)))) from!355) (dynLambda!380 (defaultEntry!2501 (v!2815 (underlying!341 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!99072 () Bool)

(declare-fun e!64565 () Bool)

(assert (=> b!99072 (= e!64567 (and e!64565 mapRes!3765))))

(declare-fun condMapEmpty!3766 () Bool)

(declare-fun mapDefault!3766 () ValueCell!974)

