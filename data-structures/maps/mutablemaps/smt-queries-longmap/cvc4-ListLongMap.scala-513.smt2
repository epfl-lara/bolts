; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12534 () Bool)

(assert start!12534)

(declare-fun b!107767 () Bool)

(declare-fun b_free!2553 () Bool)

(declare-fun b_next!2553 () Bool)

(assert (=> b!107767 (= b_free!2553 (not b_next!2553))))

(declare-fun tp!9992 () Bool)

(declare-fun b_and!6669 () Bool)

(assert (=> b!107767 (= tp!9992 b_and!6669)))

(declare-fun b!107757 () Bool)

(declare-fun b_free!2555 () Bool)

(declare-fun b_next!2555 () Bool)

(assert (=> b!107757 (= b_free!2555 (not b_next!2555))))

(declare-fun tp!9989 () Bool)

(declare-fun b_and!6671 () Bool)

(assert (=> b!107757 (= tp!9989 b_and!6671)))

(declare-fun b!107751 () Bool)

(declare-fun res!53473 () Bool)

(declare-fun e!70176 () Bool)

(assert (=> b!107751 (=> (not res!53473) (not e!70176))))

(declare-datatypes ((V!3237 0))(
  ( (V!3238 (val!1391 Int)) )
))
(declare-datatypes ((array!4378 0))(
  ( (array!4379 (arr!2076 (Array (_ BitVec 32) (_ BitVec 64))) (size!2332 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1003 0))(
  ( (ValueCellFull!1003 (v!2914 V!3237)) (EmptyCell!1003) )
))
(declare-datatypes ((array!4380 0))(
  ( (array!4381 (arr!2077 (Array (_ BitVec 32) ValueCell!1003)) (size!2333 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!914 0))(
  ( (LongMapFixedSize!915 (defaultEntry!2607 Int) (mask!6765 (_ BitVec 32)) (extraKeys!2408 (_ BitVec 32)) (zeroValue!2480 V!3237) (minValue!2480 V!3237) (_size!506 (_ BitVec 32)) (_keys!4317 array!4378) (_values!2590 array!4380) (_vacant!506 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!914)

(declare-datatypes ((Cell!714 0))(
  ( (Cell!715 (v!2915 LongMapFixedSize!914)) )
))
(declare-datatypes ((LongMap!714 0))(
  ( (LongMap!715 (underlying!368 Cell!714)) )
))
(declare-fun thiss!992 () LongMap!714)

(assert (=> b!107751 (= res!53473 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6765 newMap!16)) (_size!506 (v!2915 (underlying!368 thiss!992)))))))

(declare-fun b!107752 () Bool)

(declare-datatypes ((Unit!3343 0))(
  ( (Unit!3344) )
))
(declare-fun e!70173 () Unit!3343)

(declare-fun Unit!3345 () Unit!3343)

(assert (=> b!107752 (= e!70173 Unit!3345)))

(declare-fun lt!55292 () Unit!3343)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!115 (array!4378 array!4380 (_ BitVec 32) (_ BitVec 32) V!3237 V!3237 (_ BitVec 64) (_ BitVec 32) Int) Unit!3343)

(assert (=> b!107752 (= lt!55292 (lemmaListMapContainsThenArrayContainsFrom!115 (_keys!4317 (v!2915 (underlying!368 thiss!992))) (_values!2590 (v!2915 (underlying!368 thiss!992))) (mask!6765 (v!2915 (underlying!368 thiss!992))) (extraKeys!2408 (v!2915 (underlying!368 thiss!992))) (zeroValue!2480 (v!2915 (underlying!368 thiss!992))) (minValue!2480 (v!2915 (underlying!368 thiss!992))) (select (arr!2076 (_keys!4317 (v!2915 (underlying!368 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2607 (v!2915 (underlying!368 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4378 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!107752 (arrayContainsKey!0 (_keys!4317 (v!2915 (underlying!368 thiss!992))) (select (arr!2076 (_keys!4317 (v!2915 (underlying!368 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!55289 () Unit!3343)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4378 (_ BitVec 32) (_ BitVec 32)) Unit!3343)

(assert (=> b!107752 (= lt!55289 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4317 (v!2915 (underlying!368 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1649 0))(
  ( (Nil!1646) (Cons!1645 (h!2243 (_ BitVec 64)) (t!5781 List!1649)) )
))
(declare-fun arrayNoDuplicates!0 (array!4378 (_ BitVec 32) List!1649) Bool)

(assert (=> b!107752 (arrayNoDuplicates!0 (_keys!4317 (v!2915 (underlying!368 thiss!992))) from!355 Nil!1646)))

(declare-fun lt!55285 () Unit!3343)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4378 (_ BitVec 32) (_ BitVec 64) List!1649) Unit!3343)

(assert (=> b!107752 (= lt!55285 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4317 (v!2915 (underlying!368 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2076 (_keys!4317 (v!2915 (underlying!368 thiss!992)))) from!355) (Cons!1645 (select (arr!2076 (_keys!4317 (v!2915 (underlying!368 thiss!992)))) from!355) Nil!1646)))))

(assert (=> b!107752 false))

(declare-fun b!107753 () Bool)

(declare-fun e!70172 () Bool)

(declare-fun tp_is_empty!2693 () Bool)

(assert (=> b!107753 (= e!70172 tp_is_empty!2693)))

(declare-fun b!107754 () Bool)

(declare-fun e!70169 () Bool)

(assert (=> b!107754 (= e!70169 tp_is_empty!2693)))

(declare-fun b!107755 () Bool)

(declare-fun e!70175 () Bool)

(declare-fun mapRes!3980 () Bool)

(assert (=> b!107755 (= e!70175 (and e!70172 mapRes!3980))))

(declare-fun condMapEmpty!3979 () Bool)

(declare-fun mapDefault!3980 () ValueCell!1003)

