; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15492 () Bool)

(assert start!15492)

(declare-fun b!153951 () Bool)

(declare-fun b_free!3217 () Bool)

(declare-fun b_next!3217 () Bool)

(assert (=> b!153951 (= b_free!3217 (not b_next!3217))))

(declare-fun tp!12173 () Bool)

(declare-fun b_and!9605 () Bool)

(assert (=> b!153951 (= tp!12173 b_and!9605)))

(declare-fun b!153959 () Bool)

(declare-fun b_free!3219 () Bool)

(declare-fun b_next!3219 () Bool)

(assert (=> b!153959 (= b_free!3219 (not b_next!3219))))

(declare-fun tp!12171 () Bool)

(declare-fun b_and!9607 () Bool)

(assert (=> b!153959 (= tp!12171 b_and!9607)))

(declare-fun b!153945 () Bool)

(declare-fun e!100594 () Bool)

(declare-fun e!100589 () Bool)

(assert (=> b!153945 (= e!100594 e!100589)))

(declare-fun mapIsEmpty!5165 () Bool)

(declare-fun mapRes!5165 () Bool)

(assert (=> mapIsEmpty!5165 mapRes!5165))

(declare-fun b!153946 () Bool)

(declare-fun e!100586 () Bool)

(declare-fun e!100593 () Bool)

(assert (=> b!153946 (= e!100586 e!100593)))

(declare-fun res!72729 () Bool)

(assert (=> b!153946 (=> (not res!72729) (not e!100593))))

(declare-datatypes ((V!3681 0))(
  ( (V!3682 (val!1557 Int)) )
))
(declare-datatypes ((tuple2!2804 0))(
  ( (tuple2!2805 (_1!1412 (_ BitVec 64)) (_2!1412 V!3681)) )
))
(declare-datatypes ((List!1822 0))(
  ( (Nil!1819) (Cons!1818 (h!2427 tuple2!2804) (t!6624 List!1822)) )
))
(declare-datatypes ((ListLongMap!1813 0))(
  ( (ListLongMap!1814 (toList!922 List!1822)) )
))
(declare-fun lt!80865 () ListLongMap!1813)

(declare-datatypes ((array!5100 0))(
  ( (array!5101 (arr!2408 (Array (_ BitVec 32) (_ BitVec 64))) (size!2685 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1169 0))(
  ( (ValueCellFull!1169 (v!3413 V!3681)) (EmptyCell!1169) )
))
(declare-datatypes ((array!5102 0))(
  ( (array!5103 (arr!2409 (Array (_ BitVec 32) ValueCell!1169)) (size!2686 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1246 0))(
  ( (LongMapFixedSize!1247 (defaultEntry!3063 Int) (mask!7467 (_ BitVec 32)) (extraKeys!2804 (_ BitVec 32)) (zeroValue!2906 V!3681) (minValue!2906 V!3681) (_size!672 (_ BitVec 32)) (_keys!4836 array!5100) (_values!3046 array!5102) (_vacant!672 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1024 0))(
  ( (Cell!1025 (v!3414 LongMapFixedSize!1246)) )
))
(declare-datatypes ((LongMap!1024 0))(
  ( (LongMap!1025 (underlying!523 Cell!1024)) )
))
(declare-fun thiss!992 () LongMap!1024)

(declare-fun lt!80866 () ListLongMap!1813)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!153946 (= res!72729 (and (= lt!80866 lt!80865) (or (= (select (arr!2408 (_keys!4836 (v!3414 (underlying!523 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!2408 (_keys!4836 (v!3414 (underlying!523 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-fun newMap!16 () LongMapFixedSize!1246)

(declare-fun map!1499 (LongMapFixedSize!1246) ListLongMap!1813)

(assert (=> b!153946 (= lt!80865 (map!1499 newMap!16))))

(declare-fun getCurrentListMap!583 (array!5100 array!5102 (_ BitVec 32) (_ BitVec 32) V!3681 V!3681 (_ BitVec 32) Int) ListLongMap!1813)

(assert (=> b!153946 (= lt!80866 (getCurrentListMap!583 (_keys!4836 (v!3414 (underlying!523 thiss!992))) (_values!3046 (v!3414 (underlying!523 thiss!992))) (mask!7467 (v!3414 (underlying!523 thiss!992))) (extraKeys!2804 (v!3414 (underlying!523 thiss!992))) (zeroValue!2906 (v!3414 (underlying!523 thiss!992))) (minValue!2906 (v!3414 (underlying!523 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3063 (v!3414 (underlying!523 thiss!992)))))))

(declare-fun b!153947 () Bool)

(declare-fun e!100590 () Bool)

(declare-fun tp_is_empty!3025 () Bool)

(assert (=> b!153947 (= e!100590 tp_is_empty!3025)))

(declare-fun b!153948 () Bool)

(declare-fun e!100582 () Bool)

(assert (=> b!153948 (= e!100582 tp_is_empty!3025)))

(declare-fun mapNonEmpty!5165 () Bool)

(declare-fun tp!12174 () Bool)

(assert (=> mapNonEmpty!5165 (= mapRes!5165 (and tp!12174 e!100582))))

(declare-fun mapKey!5165 () (_ BitVec 32))

(declare-fun mapRest!5166 () (Array (_ BitVec 32) ValueCell!1169))

(declare-fun mapValue!5165 () ValueCell!1169)

(assert (=> mapNonEmpty!5165 (= (arr!2409 (_values!3046 newMap!16)) (store mapRest!5166 mapKey!5165 mapValue!5165))))

(declare-fun b!153949 () Bool)

(declare-fun e!100591 () Bool)

(declare-fun e!100584 () Bool)

(declare-fun mapRes!5166 () Bool)

(assert (=> b!153949 (= e!100591 (and e!100584 mapRes!5166))))

(declare-fun condMapEmpty!5166 () Bool)

(declare-fun mapDefault!5165 () ValueCell!1169)

