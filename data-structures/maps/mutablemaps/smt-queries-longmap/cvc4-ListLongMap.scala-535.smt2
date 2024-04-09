; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!13454 () Bool)

(assert start!13454)

(declare-fun b!123401 () Bool)

(declare-fun b_free!2817 () Bool)

(declare-fun b_next!2817 () Bool)

(assert (=> b!123401 (= b_free!2817 (not b_next!2817))))

(declare-fun tp!10839 () Bool)

(declare-fun b_and!7593 () Bool)

(assert (=> b!123401 (= tp!10839 b_and!7593)))

(declare-fun b!123398 () Bool)

(declare-fun b_free!2819 () Bool)

(declare-fun b_next!2819 () Bool)

(assert (=> b!123398 (= b_free!2819 (not b_next!2819))))

(declare-fun tp!10840 () Bool)

(declare-fun b_and!7595 () Bool)

(assert (=> b!123398 (= tp!10840 b_and!7595)))

(declare-fun b!123390 () Bool)

(declare-fun e!80667 () Bool)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3413 0))(
  ( (V!3414 (val!1457 Int)) )
))
(declare-datatypes ((array!4660 0))(
  ( (array!4661 (arr!2208 (Array (_ BitVec 32) (_ BitVec 64))) (size!2470 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1069 0))(
  ( (ValueCellFull!1069 (v!3090 V!3413)) (EmptyCell!1069) )
))
(declare-datatypes ((array!4662 0))(
  ( (array!4663 (arr!2209 (Array (_ BitVec 32) ValueCell!1069)) (size!2471 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1046 0))(
  ( (LongMapFixedSize!1047 (defaultEntry!2756 Int) (mask!6994 (_ BitVec 32)) (extraKeys!2541 (_ BitVec 32)) (zeroValue!2621 V!3413) (minValue!2621 V!3413) (_size!572 (_ BitVec 32)) (_keys!4483 array!4660) (_values!2739 array!4662) (_vacant!572 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!838 0))(
  ( (Cell!839 (v!3091 LongMapFixedSize!1046)) )
))
(declare-datatypes ((LongMap!838 0))(
  ( (LongMap!839 (underlying!430 Cell!838)) )
))
(declare-fun thiss!992 () LongMap!838)

(assert (=> b!123390 (= e!80667 (bvsge from!355 (size!2471 (_values!2739 (v!3091 (underlying!430 thiss!992))))))))

(declare-fun b!123391 () Bool)

(declare-fun e!80675 () Bool)

(declare-fun e!80674 () Bool)

(assert (=> b!123391 (= e!80675 e!80674)))

(declare-fun b!123392 () Bool)

(declare-fun e!80663 () Bool)

(declare-fun tp_is_empty!2825 () Bool)

(assert (=> b!123392 (= e!80663 tp_is_empty!2825)))

(declare-fun b!123393 () Bool)

(declare-fun res!59909 () Bool)

(assert (=> b!123393 (=> (not res!59909) (not e!80667))))

(declare-fun newMap!16 () LongMapFixedSize!1046)

(declare-datatypes ((tuple2!2548 0))(
  ( (tuple2!2549 (_1!1284 (_ BitVec 64)) (_2!1284 V!3413)) )
))
(declare-datatypes ((List!1710 0))(
  ( (Nil!1707) (Cons!1706 (h!2307 tuple2!2548) (t!6021 List!1710)) )
))
(declare-datatypes ((ListLongMap!1673 0))(
  ( (ListLongMap!1674 (toList!852 List!1710)) )
))
(declare-fun getCurrentListMap!525 (array!4660 array!4662 (_ BitVec 32) (_ BitVec 32) V!3413 V!3413 (_ BitVec 32) Int) ListLongMap!1673)

(declare-fun map!1372 (LongMapFixedSize!1046) ListLongMap!1673)

(assert (=> b!123393 (= res!59909 (= (getCurrentListMap!525 (_keys!4483 (v!3091 (underlying!430 thiss!992))) (_values!2739 (v!3091 (underlying!430 thiss!992))) (mask!6994 (v!3091 (underlying!430 thiss!992))) (extraKeys!2541 (v!3091 (underlying!430 thiss!992))) (zeroValue!2621 (v!3091 (underlying!430 thiss!992))) (minValue!2621 (v!3091 (underlying!430 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2756 (v!3091 (underlying!430 thiss!992)))) (map!1372 newMap!16)))))

(declare-fun mapIsEmpty!4431 () Bool)

(declare-fun mapRes!4432 () Bool)

(assert (=> mapIsEmpty!4431 mapRes!4432))

(declare-fun mapNonEmpty!4431 () Bool)

(declare-fun mapRes!4431 () Bool)

(declare-fun tp!10837 () Bool)

(declare-fun e!80673 () Bool)

(assert (=> mapNonEmpty!4431 (= mapRes!4431 (and tp!10837 e!80673))))

(declare-fun mapValue!4432 () ValueCell!1069)

(declare-fun mapRest!4431 () (Array (_ BitVec 32) ValueCell!1069))

(declare-fun mapKey!4431 () (_ BitVec 32))

(assert (=> mapNonEmpty!4431 (= (arr!2209 (_values!2739 newMap!16)) (store mapRest!4431 mapKey!4431 mapValue!4432))))

(declare-fun b!123394 () Bool)

(declare-fun e!80670 () Bool)

(declare-fun e!80671 () Bool)

(assert (=> b!123394 (= e!80670 (and e!80671 mapRes!4432))))

(declare-fun condMapEmpty!4432 () Bool)

(declare-fun mapDefault!4432 () ValueCell!1069)

