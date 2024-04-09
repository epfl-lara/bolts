; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8256 () Bool)

(assert start!8256)

(declare-fun b!52446 () Bool)

(declare-fun b_free!1653 () Bool)

(declare-fun b_next!1653 () Bool)

(assert (=> b!52446 (= b_free!1653 (not b_next!1653))))

(declare-fun tp!7059 () Bool)

(declare-fun b_and!2873 () Bool)

(assert (=> b!52446 (= tp!7059 b_and!2873)))

(declare-fun b!52437 () Bool)

(declare-fun b_free!1655 () Bool)

(declare-fun b_next!1655 () Bool)

(assert (=> b!52437 (= b_free!1655 (not b_next!1655))))

(declare-fun tp!7060 () Bool)

(declare-fun b_and!2875 () Bool)

(assert (=> b!52437 (= tp!7060 b_and!2875)))

(declare-fun b!52436 () Bool)

(declare-fun e!34142 () Bool)

(declare-fun tp_is_empty!2243 () Bool)

(assert (=> b!52436 (= e!34142 tp_is_empty!2243)))

(declare-fun b!52438 () Bool)

(declare-fun e!34136 () Bool)

(assert (=> b!52438 (= e!34136 tp_is_empty!2243)))

(declare-fun b!52439 () Bool)

(declare-fun res!29812 () Bool)

(declare-fun e!34130 () Bool)

(assert (=> b!52439 (=> (not res!29812) (not e!34130))))

(declare-datatypes ((V!2637 0))(
  ( (V!2638 (val!1166 Int)) )
))
(declare-datatypes ((array!3408 0))(
  ( (array!3409 (arr!1626 (Array (_ BitVec 32) (_ BitVec 64))) (size!1855 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!778 0))(
  ( (ValueCellFull!778 (v!2217 V!2637)) (EmptyCell!778) )
))
(declare-datatypes ((array!3410 0))(
  ( (array!3411 (arr!1627 (Array (_ BitVec 32) ValueCell!778)) (size!1856 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!464 0))(
  ( (LongMapFixedSize!465 (defaultEntry!1946 Int) (mask!5769 (_ BitVec 32)) (extraKeys!1837 (_ BitVec 32)) (zeroValue!1864 V!2637) (minValue!1864 V!2637) (_size!281 (_ BitVec 32)) (_keys!3566 array!3408) (_values!1929 array!3410) (_vacant!281 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!464)

(declare-datatypes ((Cell!280 0))(
  ( (Cell!281 (v!2218 LongMapFixedSize!464)) )
))
(declare-datatypes ((LongMap!280 0))(
  ( (LongMap!281 (underlying!151 Cell!280)) )
))
(declare-fun thiss!992 () LongMap!280)

(assert (=> b!52439 (= res!29812 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5769 newMap!16)) (_size!281 (v!2218 (underlying!151 thiss!992)))))))

(declare-fun b!52440 () Bool)

(assert (=> b!52440 (= e!34130 false)))

(declare-datatypes ((tuple2!1852 0))(
  ( (tuple2!1853 (_1!936 (_ BitVec 64)) (_2!936 V!2637)) )
))
(declare-datatypes ((List!1359 0))(
  ( (Nil!1356) (Cons!1355 (h!1935 tuple2!1852) (t!4401 List!1359)) )
))
(declare-datatypes ((ListLongMap!1271 0))(
  ( (ListLongMap!1272 (toList!651 List!1359)) )
))
(declare-fun lt!21289 () ListLongMap!1271)

(declare-fun map!1014 (LongMapFixedSize!464) ListLongMap!1271)

(assert (=> b!52440 (= lt!21289 (map!1014 newMap!16))))

(declare-fun lt!21288 () ListLongMap!1271)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!360 (array!3408 array!3410 (_ BitVec 32) (_ BitVec 32) V!2637 V!2637 (_ BitVec 32) Int) ListLongMap!1271)

(assert (=> b!52440 (= lt!21288 (getCurrentListMap!360 (_keys!3566 (v!2218 (underlying!151 thiss!992))) (_values!1929 (v!2218 (underlying!151 thiss!992))) (mask!5769 (v!2218 (underlying!151 thiss!992))) (extraKeys!1837 (v!2218 (underlying!151 thiss!992))) (zeroValue!1864 (v!2218 (underlying!151 thiss!992))) (minValue!1864 (v!2218 (underlying!151 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!1946 (v!2218 (underlying!151 thiss!992)))))))

(declare-fun mapIsEmpty!2399 () Bool)

(declare-fun mapRes!2400 () Bool)

(assert (=> mapIsEmpty!2399 mapRes!2400))

(declare-fun b!52441 () Bool)

(declare-fun e!34139 () Bool)

(declare-fun e!34131 () Bool)

(assert (=> b!52441 (= e!34139 e!34131)))

(declare-fun b!52442 () Bool)

(declare-fun e!34133 () Bool)

(declare-fun e!34135 () Bool)

(declare-fun mapRes!2399 () Bool)

(assert (=> b!52442 (= e!34133 (and e!34135 mapRes!2399))))

(declare-fun condMapEmpty!2399 () Bool)

(declare-fun mapDefault!2399 () ValueCell!778)

