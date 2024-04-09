; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8138 () Bool)

(assert start!8138)

(declare-fun b!51287 () Bool)

(declare-fun b_free!1585 () Bool)

(declare-fun b_next!1585 () Bool)

(assert (=> b!51287 (= b_free!1585 (not b_next!1585))))

(declare-fun tp!6838 () Bool)

(declare-fun b_and!2805 () Bool)

(assert (=> b!51287 (= tp!6838 b_and!2805)))

(declare-fun b!51282 () Bool)

(declare-fun b_free!1587 () Bool)

(declare-fun b_next!1587 () Bool)

(assert (=> b!51282 (= b_free!1587 (not b_next!1587))))

(declare-fun tp!6837 () Bool)

(declare-fun b_and!2807 () Bool)

(assert (=> b!51282 (= tp!6837 b_and!2807)))

(declare-fun b!51277 () Bool)

(declare-fun e!33231 () Bool)

(declare-fun tp_is_empty!2209 () Bool)

(assert (=> b!51277 (= e!33231 tp_is_empty!2209)))

(declare-fun b!51278 () Bool)

(declare-fun res!29366 () Bool)

(declare-fun e!33234 () Bool)

(assert (=> b!51278 (=> (not res!29366) (not e!33234))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2593 0))(
  ( (V!2594 (val!1149 Int)) )
))
(declare-datatypes ((array!3334 0))(
  ( (array!3335 (arr!1592 (Array (_ BitVec 32) (_ BitVec 64))) (size!1818 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!761 0))(
  ( (ValueCellFull!761 (v!2184 V!2593)) (EmptyCell!761) )
))
(declare-datatypes ((array!3336 0))(
  ( (array!3337 (arr!1593 (Array (_ BitVec 32) ValueCell!761)) (size!1819 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!430 0))(
  ( (LongMapFixedSize!431 (defaultEntry!1929 Int) (mask!5733 (_ BitVec 32)) (extraKeys!1820 (_ BitVec 32)) (zeroValue!1847 V!2593) (minValue!1847 V!2593) (_size!264 (_ BitVec 32)) (_keys!3543 array!3334) (_values!1912 array!3336) (_vacant!264 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!252 0))(
  ( (Cell!253 (v!2185 LongMapFixedSize!430)) )
))
(declare-datatypes ((LongMap!252 0))(
  ( (LongMap!253 (underlying!137 Cell!252)) )
))
(declare-fun thiss!992 () LongMap!252)

(assert (=> b!51278 (= res!29366 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1818 (_keys!3543 (v!2185 (underlying!137 thiss!992)))))))))

(declare-fun b!51279 () Bool)

(declare-fun res!29365 () Bool)

(assert (=> b!51279 (=> (not res!29365) (not e!33234))))

(declare-fun newMap!16 () LongMapFixedSize!430)

(declare-fun valid!148 (LongMapFixedSize!430) Bool)

(assert (=> b!51279 (= res!29365 (valid!148 newMap!16))))

(declare-fun b!51280 () Bool)

(declare-fun e!33240 () Bool)

(declare-fun e!33230 () Bool)

(declare-fun mapRes!2277 () Bool)

(assert (=> b!51280 (= e!33240 (and e!33230 mapRes!2277))))

(declare-fun condMapEmpty!2278 () Bool)

(declare-fun mapDefault!2278 () ValueCell!761)

