; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12858 () Bool)

(assert start!12858)

(declare-fun b!112000 () Bool)

(declare-fun b_free!2577 () Bool)

(declare-fun b_next!2577 () Bool)

(assert (=> b!112000 (= b_free!2577 (not b_next!2577))))

(declare-fun tp!10078 () Bool)

(declare-fun b_and!6901 () Bool)

(assert (=> b!112000 (= tp!10078 b_and!6901)))

(declare-fun b!111992 () Bool)

(declare-fun b_free!2579 () Bool)

(declare-fun b_next!2579 () Bool)

(assert (=> b!111992 (= b_free!2579 (not b_next!2579))))

(declare-fun tp!10080 () Bool)

(declare-fun b_and!6903 () Bool)

(assert (=> b!111992 (= tp!10080 b_and!6903)))

(declare-fun b!111991 () Bool)

(declare-fun e!72831 () Bool)

(declare-fun tp_is_empty!2705 () Bool)

(assert (=> b!111991 (= e!72831 tp_is_empty!2705)))

(declare-fun e!72844 () Bool)

(declare-datatypes ((V!3253 0))(
  ( (V!3254 (val!1397 Int)) )
))
(declare-datatypes ((array!4406 0))(
  ( (array!4407 (arr!2088 (Array (_ BitVec 32) (_ BitVec 64))) (size!2346 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1009 0))(
  ( (ValueCellFull!1009 (v!2946 V!3253)) (EmptyCell!1009) )
))
(declare-datatypes ((array!4408 0))(
  ( (array!4409 (arr!2089 (Array (_ BitVec 32) ValueCell!1009)) (size!2347 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!926 0))(
  ( (LongMapFixedSize!927 (defaultEntry!2649 Int) (mask!6827 (_ BitVec 32)) (extraKeys!2442 (_ BitVec 32)) (zeroValue!2518 V!3253) (minValue!2518 V!3253) (_size!512 (_ BitVec 32)) (_keys!4367 array!4406) (_values!2632 array!4408) (_vacant!512 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!926)

(declare-fun e!72830 () Bool)

(declare-fun array_inv!1257 (array!4406) Bool)

(declare-fun array_inv!1258 (array!4408) Bool)

(assert (=> b!111992 (= e!72830 (and tp!10080 tp_is_empty!2705 (array_inv!1257 (_keys!4367 newMap!16)) (array_inv!1258 (_values!2632 newMap!16)) e!72844))))

(declare-fun b!111993 () Bool)

(declare-fun e!72833 () Bool)

(declare-fun e!72838 () Bool)

(assert (=> b!111993 (= e!72833 e!72838)))

(declare-fun mapNonEmpty!4031 () Bool)

(declare-fun mapRes!4031 () Bool)

(declare-fun tp!10077 () Bool)

(declare-fun e!72841 () Bool)

(assert (=> mapNonEmpty!4031 (= mapRes!4031 (and tp!10077 e!72841))))

(declare-datatypes ((Cell!726 0))(
  ( (Cell!727 (v!2947 LongMapFixedSize!926)) )
))
(declare-datatypes ((LongMap!726 0))(
  ( (LongMap!727 (underlying!374 Cell!726)) )
))
(declare-fun thiss!992 () LongMap!726)

(declare-fun mapRest!4032 () (Array (_ BitVec 32) ValueCell!1009))

(declare-fun mapValue!4032 () ValueCell!1009)

(declare-fun mapKey!4031 () (_ BitVec 32))

(assert (=> mapNonEmpty!4031 (= (arr!2089 (_values!2632 (v!2947 (underlying!374 thiss!992)))) (store mapRest!4032 mapKey!4031 mapValue!4032))))

(declare-fun b!111994 () Bool)

(declare-datatypes ((Unit!3503 0))(
  ( (Unit!3504) )
))
(declare-fun e!72835 () Unit!3503)

(declare-fun Unit!3505 () Unit!3503)

(assert (=> b!111994 (= e!72835 Unit!3505)))

(declare-fun lt!57835 () Unit!3503)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!120 (array!4406 array!4408 (_ BitVec 32) (_ BitVec 32) V!3253 V!3253 (_ BitVec 64) (_ BitVec 32) Int) Unit!3503)

(assert (=> b!111994 (= lt!57835 (lemmaListMapContainsThenArrayContainsFrom!120 (_keys!4367 (v!2947 (underlying!374 thiss!992))) (_values!2632 (v!2947 (underlying!374 thiss!992))) (mask!6827 (v!2947 (underlying!374 thiss!992))) (extraKeys!2442 (v!2947 (underlying!374 thiss!992))) (zeroValue!2518 (v!2947 (underlying!374 thiss!992))) (minValue!2518 (v!2947 (underlying!374 thiss!992))) (select (arr!2088 (_keys!4367 (v!2947 (underlying!374 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2649 (v!2947 (underlying!374 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!111994 (arrayContainsKey!0 (_keys!4367 (v!2947 (underlying!374 thiss!992))) (select (arr!2088 (_keys!4367 (v!2947 (underlying!374 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!57836 () Unit!3503)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4406 (_ BitVec 32) (_ BitVec 32)) Unit!3503)

(assert (=> b!111994 (= lt!57836 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4367 (v!2947 (underlying!374 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1658 0))(
  ( (Nil!1655) (Cons!1654 (h!2254 (_ BitVec 64)) (t!5832 List!1658)) )
))
(declare-fun arrayNoDuplicates!0 (array!4406 (_ BitVec 32) List!1658) Bool)

(assert (=> b!111994 (arrayNoDuplicates!0 (_keys!4367 (v!2947 (underlying!374 thiss!992))) from!355 Nil!1655)))

(declare-fun lt!57825 () Unit!3503)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4406 (_ BitVec 32) (_ BitVec 64) List!1658) Unit!3503)

(assert (=> b!111994 (= lt!57825 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4367 (v!2947 (underlying!374 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2088 (_keys!4367 (v!2947 (underlying!374 thiss!992)))) from!355) (Cons!1654 (select (arr!2088 (_keys!4367 (v!2947 (underlying!374 thiss!992)))) from!355) Nil!1655)))))

(assert (=> b!111994 false))

(declare-fun b!111995 () Bool)

(declare-fun res!55273 () Bool)

(declare-fun e!72829 () Bool)

(assert (=> b!111995 (=> (not res!55273) (not e!72829))))

(declare-fun valid!424 (LongMapFixedSize!926) Bool)

(assert (=> b!111995 (= res!55273 (valid!424 newMap!16))))

(declare-fun b!111996 () Bool)

(declare-fun e!72845 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4406 (_ BitVec 32)) Bool)

(assert (=> b!111996 (= e!72845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4367 (v!2947 (underlying!374 thiss!992))) (mask!6827 (v!2947 (underlying!374 thiss!992)))))))

(declare-fun res!55266 () Bool)

(assert (=> start!12858 (=> (not res!55266) (not e!72829))))

(declare-fun valid!425 (LongMap!726) Bool)

(assert (=> start!12858 (= res!55266 (valid!425 thiss!992))))

(assert (=> start!12858 e!72829))

(assert (=> start!12858 e!72833))

(assert (=> start!12858 true))

(assert (=> start!12858 e!72830))

(declare-fun b!111997 () Bool)

(declare-fun mapRes!4032 () Bool)

(assert (=> b!111997 (= e!72844 (and e!72831 mapRes!4032))))

(declare-fun condMapEmpty!4032 () Bool)

(declare-fun mapDefault!4031 () ValueCell!1009)

