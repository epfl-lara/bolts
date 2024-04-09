; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15206 () Bool)

(assert start!15206)

(declare-fun b!146148 () Bool)

(declare-fun b_free!3093 () Bool)

(declare-fun b_next!3093 () Bool)

(assert (=> b!146148 (= b_free!3093 (not b_next!3093))))

(declare-fun tp!11784 () Bool)

(declare-fun b_and!9129 () Bool)

(assert (=> b!146148 (= tp!11784 b_and!9129)))

(declare-fun b!146157 () Bool)

(declare-fun b_free!3095 () Bool)

(declare-fun b_next!3095 () Bool)

(assert (=> b!146157 (= b_free!3095 (not b_next!3095))))

(declare-fun tp!11782 () Bool)

(declare-fun b_and!9131 () Bool)

(assert (=> b!146157 (= tp!11782 b_and!9131)))

(declare-fun b!146144 () Bool)

(declare-fun e!95258 () Bool)

(declare-fun e!95268 () Bool)

(assert (=> b!146144 (= e!95258 e!95268)))

(declare-fun b!146145 () Bool)

(declare-fun res!69567 () Bool)

(declare-fun e!95269 () Bool)

(assert (=> b!146145 (=> (not res!69567) (not e!95269))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3597 0))(
  ( (V!3598 (val!1526 Int)) )
))
(declare-datatypes ((array!4970 0))(
  ( (array!4971 (arr!2346 (Array (_ BitVec 32) (_ BitVec 64))) (size!2622 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1138 0))(
  ( (ValueCellFull!1138 (v!3341 V!3597)) (EmptyCell!1138) )
))
(declare-datatypes ((array!4972 0))(
  ( (array!4973 (arr!2347 (Array (_ BitVec 32) ValueCell!1138)) (size!2623 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1184 0))(
  ( (LongMapFixedSize!1185 (defaultEntry!3008 Int) (mask!7380 (_ BitVec 32)) (extraKeys!2753 (_ BitVec 32)) (zeroValue!2853 V!3597) (minValue!2853 V!3597) (_size!641 (_ BitVec 32)) (_keys!4777 array!4970) (_values!2991 array!4972) (_vacant!641 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!968 0))(
  ( (Cell!969 (v!3342 LongMapFixedSize!1184)) )
))
(declare-datatypes ((LongMap!968 0))(
  ( (LongMap!969 (underlying!495 Cell!968)) )
))
(declare-fun thiss!992 () LongMap!968)

(assert (=> b!146145 (= res!69567 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2622 (_keys!4777 (v!3342 (underlying!495 thiss!992)))))))))

(declare-fun b!146146 () Bool)

(declare-fun e!95265 () Bool)

(declare-fun tp_is_empty!2963 () Bool)

(assert (=> b!146146 (= e!95265 tp_is_empty!2963)))

(declare-fun res!69564 () Bool)

(assert (=> start!15206 (=> (not res!69564) (not e!95269))))

(declare-fun valid!576 (LongMap!968) Bool)

(assert (=> start!15206 (= res!69564 (valid!576 thiss!992))))

(assert (=> start!15206 e!95269))

(assert (=> start!15206 e!95258))

(assert (=> start!15206 true))

(declare-fun e!95264 () Bool)

(assert (=> start!15206 e!95264))

(declare-fun mapIsEmpty!4961 () Bool)

(declare-fun mapRes!4961 () Bool)

(assert (=> mapIsEmpty!4961 mapRes!4961))

(declare-fun mapNonEmpty!4961 () Bool)

(declare-fun mapRes!4962 () Bool)

(declare-fun tp!11783 () Bool)

(declare-fun e!95271 () Bool)

(assert (=> mapNonEmpty!4961 (= mapRes!4962 (and tp!11783 e!95271))))

(declare-fun mapKey!4961 () (_ BitVec 32))

(declare-fun mapValue!4961 () ValueCell!1138)

(declare-fun mapRest!4961 () (Array (_ BitVec 32) ValueCell!1138))

(assert (=> mapNonEmpty!4961 (= (arr!2347 (_values!2991 (v!3342 (underlying!495 thiss!992)))) (store mapRest!4961 mapKey!4961 mapValue!4961))))

(declare-fun mapNonEmpty!4962 () Bool)

(declare-fun tp!11781 () Bool)

(declare-fun e!95272 () Bool)

(assert (=> mapNonEmpty!4962 (= mapRes!4961 (and tp!11781 e!95272))))

(declare-fun mapValue!4962 () ValueCell!1138)

(declare-fun mapRest!4962 () (Array (_ BitVec 32) ValueCell!1138))

(declare-fun newMap!16 () LongMapFixedSize!1184)

(declare-fun mapKey!4962 () (_ BitVec 32))

(assert (=> mapNonEmpty!4962 (= (arr!2347 (_values!2991 newMap!16)) (store mapRest!4962 mapKey!4962 mapValue!4962))))

(declare-fun b!146147 () Bool)

(declare-fun e!95266 () Bool)

(assert (=> b!146147 (= e!95266 tp_is_empty!2963)))

(declare-fun e!95260 () Bool)

(declare-fun e!95263 () Bool)

(declare-fun array_inv!1455 (array!4970) Bool)

(declare-fun array_inv!1456 (array!4972) Bool)

(assert (=> b!146148 (= e!95260 (and tp!11784 tp_is_empty!2963 (array_inv!1455 (_keys!4777 (v!3342 (underlying!495 thiss!992)))) (array_inv!1456 (_values!2991 (v!3342 (underlying!495 thiss!992)))) e!95263))))

(declare-fun b!146149 () Bool)

(declare-fun e!95262 () Bool)

(assert (=> b!146149 (= e!95262 (not true))))

(assert (=> b!146149 false))

(declare-datatypes ((Unit!4621 0))(
  ( (Unit!4622) )
))
(declare-fun lt!76872 () Unit!4621)

(declare-datatypes ((List!1787 0))(
  ( (Nil!1784) (Cons!1783 (h!2391 (_ BitVec 64)) (t!6472 List!1787)) )
))
(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4970 (_ BitVec 32) (_ BitVec 64) List!1787) Unit!4621)

(assert (=> b!146149 (= lt!76872 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4777 (v!3342 (underlying!495 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2346 (_keys!4777 (v!3342 (underlying!495 thiss!992)))) from!355) (Cons!1783 (select (arr!2346 (_keys!4777 (v!3342 (underlying!495 thiss!992)))) from!355) Nil!1784)))))

(declare-fun arrayNoDuplicates!0 (array!4970 (_ BitVec 32) List!1787) Bool)

(assert (=> b!146149 (arrayNoDuplicates!0 (_keys!4777 (v!3342 (underlying!495 thiss!992))) from!355 Nil!1784)))

(declare-fun lt!76868 () Unit!4621)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4970 (_ BitVec 32) (_ BitVec 32)) Unit!4621)

(assert (=> b!146149 (= lt!76868 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4777 (v!3342 (underlying!495 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!4970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!146149 (arrayContainsKey!0 (_keys!4777 (v!3342 (underlying!495 thiss!992))) (select (arr!2346 (_keys!4777 (v!3342 (underlying!495 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!76871 () Unit!4621)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!153 (array!4970 array!4972 (_ BitVec 32) (_ BitVec 32) V!3597 V!3597 (_ BitVec 64) (_ BitVec 32) Int) Unit!4621)

(assert (=> b!146149 (= lt!76871 (lemmaListMapContainsThenArrayContainsFrom!153 (_keys!4777 (v!3342 (underlying!495 thiss!992))) (_values!2991 (v!3342 (underlying!495 thiss!992))) (mask!7380 (v!3342 (underlying!495 thiss!992))) (extraKeys!2753 (v!3342 (underlying!495 thiss!992))) (zeroValue!2853 (v!3342 (underlying!495 thiss!992))) (minValue!2853 (v!3342 (underlying!495 thiss!992))) (select (arr!2346 (_keys!4777 (v!3342 (underlying!495 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3008 (v!3342 (underlying!495 thiss!992)))))))

(declare-fun b!146150 () Bool)

(declare-fun res!69563 () Bool)

(assert (=> b!146150 (=> (not res!69563) (not e!95269))))

(assert (=> b!146150 (= res!69563 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7380 newMap!16)) (_size!641 (v!3342 (underlying!495 thiss!992)))))))

(declare-fun b!146151 () Bool)

(declare-fun e!95261 () Bool)

(assert (=> b!146151 (= e!95261 e!95262)))

(declare-fun res!69566 () Bool)

(assert (=> b!146151 (=> (not res!69566) (not e!95262))))

(declare-datatypes ((tuple2!2724 0))(
  ( (tuple2!2725 (_1!1372 (_ BitVec 64)) (_2!1372 V!3597)) )
))
(declare-datatypes ((List!1788 0))(
  ( (Nil!1785) (Cons!1784 (h!2392 tuple2!2724) (t!6473 List!1788)) )
))
(declare-datatypes ((ListLongMap!1769 0))(
  ( (ListLongMap!1770 (toList!900 List!1788)) )
))
(declare-fun lt!76870 () ListLongMap!1769)

(declare-fun contains!942 (ListLongMap!1769 (_ BitVec 64)) Bool)

(assert (=> b!146151 (= res!69566 (contains!942 lt!76870 (select (arr!2346 (_keys!4777 (v!3342 (underlying!495 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2726 0))(
  ( (tuple2!2727 (_1!1373 Bool) (_2!1373 LongMapFixedSize!1184)) )
))
(declare-fun lt!76867 () tuple2!2726)

(declare-fun update!219 (LongMapFixedSize!1184 (_ BitVec 64) V!3597) tuple2!2726)

(declare-fun get!1568 (ValueCell!1138 V!3597) V!3597)

(declare-fun dynLambda!452 (Int (_ BitVec 64)) V!3597)

(assert (=> b!146151 (= lt!76867 (update!219 newMap!16 (select (arr!2346 (_keys!4777 (v!3342 (underlying!495 thiss!992)))) from!355) (get!1568 (select (arr!2347 (_values!2991 (v!3342 (underlying!495 thiss!992)))) from!355) (dynLambda!452 (defaultEntry!3008 (v!3342 (underlying!495 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!146152 () Bool)

(assert (=> b!146152 (= e!95268 e!95260)))

(declare-fun b!146153 () Bool)

(assert (=> b!146153 (= e!95272 tp_is_empty!2963)))

(declare-fun b!146154 () Bool)

(assert (=> b!146154 (= e!95271 tp_is_empty!2963)))

(declare-fun b!146155 () Bool)

(assert (=> b!146155 (= e!95263 (and e!95266 mapRes!4962))))

(declare-fun condMapEmpty!4962 () Bool)

(declare-fun mapDefault!4961 () ValueCell!1138)

