; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11962 () Bool)

(assert start!11962)

(declare-fun b!100832 () Bool)

(declare-fun b_free!2457 () Bool)

(declare-fun b_next!2457 () Bool)

(assert (=> b!100832 (= b_free!2457 (not b_next!2457))))

(declare-fun tp!9671 () Bool)

(declare-fun b_and!6221 () Bool)

(assert (=> b!100832 (= tp!9671 b_and!6221)))

(declare-fun b!100827 () Bool)

(declare-fun b_free!2459 () Bool)

(declare-fun b_next!2459 () Bool)

(assert (=> b!100827 (= b_free!2459 (not b_next!2459))))

(declare-fun tp!9670 () Bool)

(declare-fun b_and!6223 () Bool)

(assert (=> b!100827 (= tp!9670 b_and!6223)))

(declare-fun mapIsEmpty!3803 () Bool)

(declare-fun mapRes!3803 () Bool)

(assert (=> mapIsEmpty!3803 mapRes!3803))

(declare-fun b!100825 () Bool)

(declare-fun res!50542 () Bool)

(declare-fun e!65678 () Bool)

(assert (=> b!100825 (=> (not res!50542) (not e!65678))))

(declare-datatypes ((V!3173 0))(
  ( (V!3174 (val!1367 Int)) )
))
(declare-datatypes ((array!4272 0))(
  ( (array!4273 (arr!2028 (Array (_ BitVec 32) (_ BitVec 64))) (size!2280 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!979 0))(
  ( (ValueCellFull!979 (v!2834 V!3173)) (EmptyCell!979) )
))
(declare-datatypes ((array!4274 0))(
  ( (array!4275 (arr!2029 (Array (_ BitVec 32) ValueCell!979)) (size!2281 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!866 0))(
  ( (LongMapFixedSize!867 (defaultEntry!2524 Int) (mask!6641 (_ BitVec 32)) (extraKeys!2337 (_ BitVec 32)) (zeroValue!2403 V!3173) (minValue!2403 V!3173) (_size!482 (_ BitVec 32)) (_keys!4222 array!4272) (_values!2507 array!4274) (_vacant!482 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!670 0))(
  ( (Cell!671 (v!2835 LongMapFixedSize!866)) )
))
(declare-datatypes ((LongMap!670 0))(
  ( (LongMap!671 (underlying!346 Cell!670)) )
))
(declare-fun thiss!992 () LongMap!670)

(assert (=> b!100825 (= res!50542 (and (= (size!2281 (_values!2507 (v!2835 (underlying!346 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6641 (v!2835 (underlying!346 thiss!992))))) (= (size!2280 (_keys!4222 (v!2835 (underlying!346 thiss!992)))) (size!2281 (_values!2507 (v!2835 (underlying!346 thiss!992))))) (bvsge (mask!6641 (v!2835 (underlying!346 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2337 (v!2835 (underlying!346 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2337 (v!2835 (underlying!346 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun b!100826 () Bool)

(declare-fun e!65677 () Bool)

(declare-fun tp_is_empty!2645 () Bool)

(assert (=> b!100826 (= e!65677 tp_is_empty!2645)))

(declare-fun mapIsEmpty!3804 () Bool)

(declare-fun mapRes!3804 () Bool)

(assert (=> mapIsEmpty!3804 mapRes!3804))

(declare-fun mapNonEmpty!3803 () Bool)

(declare-fun tp!9672 () Bool)

(declare-fun e!65669 () Bool)

(assert (=> mapNonEmpty!3803 (= mapRes!3803 (and tp!9672 e!65669))))

(declare-fun mapRest!3804 () (Array (_ BitVec 32) ValueCell!979))

(declare-fun mapValue!3803 () ValueCell!979)

(declare-fun newMap!16 () LongMapFixedSize!866)

(declare-fun mapKey!3804 () (_ BitVec 32))

(assert (=> mapNonEmpty!3803 (= (arr!2029 (_values!2507 newMap!16)) (store mapRest!3804 mapKey!3804 mapValue!3803))))

(declare-fun e!65681 () Bool)

(declare-fun e!65672 () Bool)

(declare-fun array_inv!1221 (array!4272) Bool)

(declare-fun array_inv!1222 (array!4274) Bool)

(assert (=> b!100827 (= e!65681 (and tp!9670 tp_is_empty!2645 (array_inv!1221 (_keys!4222 newMap!16)) (array_inv!1222 (_values!2507 newMap!16)) e!65672))))

(declare-fun res!50546 () Bool)

(declare-fun e!65675 () Bool)

(assert (=> start!11962 (=> (not res!50546) (not e!65675))))

(declare-fun valid!392 (LongMap!670) Bool)

(assert (=> start!11962 (= res!50546 (valid!392 thiss!992))))

(assert (=> start!11962 e!65675))

(declare-fun e!65676 () Bool)

(assert (=> start!11962 e!65676))

(assert (=> start!11962 true))

(assert (=> start!11962 e!65681))

(declare-fun b!100828 () Bool)

(declare-fun e!65682 () Bool)

(declare-fun e!65684 () Bool)

(assert (=> b!100828 (= e!65682 (and e!65684 mapRes!3804))))

(declare-fun condMapEmpty!3803 () Bool)

(declare-fun mapDefault!3803 () ValueCell!979)

