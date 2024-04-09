; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!14192 () Bool)

(assert start!14192)

(declare-fun b!131760 () Bool)

(declare-fun b_free!2913 () Bool)

(declare-fun b_next!2913 () Bool)

(assert (=> b!131760 (= b_free!2913 (not b_next!2913))))

(declare-fun tp!11175 () Bool)

(declare-fun b_and!8185 () Bool)

(assert (=> b!131760 (= tp!11175 b_and!8185)))

(declare-fun b!131775 () Bool)

(declare-fun b_free!2915 () Bool)

(declare-fun b_next!2915 () Bool)

(assert (=> b!131775 (= b_free!2915 (not b_next!2915))))

(declare-fun tp!11177 () Bool)

(declare-fun b_and!8187 () Bool)

(assert (=> b!131775 (= tp!11177 b_and!8187)))

(declare-fun b!131758 () Bool)

(declare-fun e!85947 () Bool)

(declare-fun tp_is_empty!2873 () Bool)

(assert (=> b!131758 (= e!85947 tp_is_empty!2873)))

(declare-fun mapNonEmpty!4625 () Bool)

(declare-fun mapRes!4625 () Bool)

(declare-fun tp!11176 () Bool)

(declare-fun e!85941 () Bool)

(assert (=> mapNonEmpty!4625 (= mapRes!4625 (and tp!11176 e!85941))))

(declare-fun mapKey!4626 () (_ BitVec 32))

(declare-datatypes ((V!3477 0))(
  ( (V!3478 (val!1481 Int)) )
))
(declare-datatypes ((array!4770 0))(
  ( (array!4771 (arr!2256 (Array (_ BitVec 32) (_ BitVec 64))) (size!2524 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1093 0))(
  ( (ValueCellFull!1093 (v!3187 V!3477)) (EmptyCell!1093) )
))
(declare-datatypes ((array!4772 0))(
  ( (array!4773 (arr!2257 (Array (_ BitVec 32) ValueCell!1093)) (size!2525 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1094 0))(
  ( (LongMapFixedSize!1095 (defaultEntry!2855 Int) (mask!7149 (_ BitVec 32)) (extraKeys!2622 (_ BitVec 32)) (zeroValue!2711 V!3477) (minValue!2711 V!3477) (_size!596 (_ BitVec 32)) (_keys!4602 array!4770) (_values!2838 array!4772) (_vacant!596 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1094)

(declare-fun mapRest!4625 () (Array (_ BitVec 32) ValueCell!1093))

(declare-fun mapValue!4625 () ValueCell!1093)

(assert (=> mapNonEmpty!4625 (= (arr!2257 (_values!2838 newMap!16)) (store mapRest!4625 mapKey!4626 mapValue!4625))))

(declare-fun b!131759 () Bool)

(declare-fun e!85948 () Bool)

(declare-fun e!85949 () Bool)

(assert (=> b!131759 (= e!85948 e!85949)))

(declare-fun res!63487 () Bool)

(assert (=> b!131759 (=> (not res!63487) (not e!85949))))

(declare-datatypes ((Cell!884 0))(
  ( (Cell!885 (v!3188 LongMapFixedSize!1094)) )
))
(declare-datatypes ((LongMap!884 0))(
  ( (LongMap!885 (underlying!453 Cell!884)) )
))
(declare-fun thiss!992 () LongMap!884)

(declare-datatypes ((tuple2!2604 0))(
  ( (tuple2!2605 (_1!1312 (_ BitVec 64)) (_2!1312 V!3477)) )
))
(declare-datatypes ((List!1734 0))(
  ( (Nil!1731) (Cons!1730 (h!2335 tuple2!2604) (t!6185 List!1734)) )
))
(declare-datatypes ((ListLongMap!1705 0))(
  ( (ListLongMap!1706 (toList!868 List!1734)) )
))
(declare-fun lt!68666 () ListLongMap!1705)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!893 (ListLongMap!1705 (_ BitVec 64)) Bool)

(assert (=> b!131759 (= res!63487 (contains!893 lt!68666 (select (arr!2256 (_keys!4602 (v!3188 (underlying!453 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2606 0))(
  ( (tuple2!2607 (_1!1313 Bool) (_2!1313 LongMapFixedSize!1094)) )
))
(declare-fun lt!68668 () tuple2!2606)

(declare-fun update!191 (LongMapFixedSize!1094 (_ BitVec 64) V!3477) tuple2!2606)

(declare-fun get!1482 (ValueCell!1093 V!3477) V!3477)

(declare-fun dynLambda!424 (Int (_ BitVec 64)) V!3477)

(assert (=> b!131759 (= lt!68668 (update!191 newMap!16 (select (arr!2256 (_keys!4602 (v!3188 (underlying!453 thiss!992)))) from!355) (get!1482 (select (arr!2257 (_values!2838 (v!3188 (underlying!453 thiss!992)))) from!355) (dynLambda!424 (defaultEntry!2855 (v!3188 (underlying!453 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!85950 () Bool)

(declare-fun e!85952 () Bool)

(declare-fun array_inv!1389 (array!4770) Bool)

(declare-fun array_inv!1390 (array!4772) Bool)

(assert (=> b!131760 (= e!85950 (and tp!11175 tp_is_empty!2873 (array_inv!1389 (_keys!4602 (v!3188 (underlying!453 thiss!992)))) (array_inv!1390 (_values!2838 (v!3188 (underlying!453 thiss!992)))) e!85952))))

(declare-fun res!63482 () Bool)

(declare-fun e!85945 () Bool)

(assert (=> start!14192 (=> (not res!63482) (not e!85945))))

(declare-fun valid!519 (LongMap!884) Bool)

(assert (=> start!14192 (= res!63482 (valid!519 thiss!992))))

(assert (=> start!14192 e!85945))

(declare-fun e!85943 () Bool)

(assert (=> start!14192 e!85943))

(assert (=> start!14192 true))

(declare-fun e!85940 () Bool)

(assert (=> start!14192 e!85940))

(declare-fun b!131761 () Bool)

(declare-fun e!85951 () Bool)

(assert (=> b!131761 (= e!85951 tp_is_empty!2873)))

(declare-fun b!131762 () Bool)

(assert (=> b!131762 (= e!85945 e!85948)))

(declare-fun res!63488 () Bool)

(assert (=> b!131762 (=> (not res!63488) (not e!85948))))

(declare-fun lt!68667 () ListLongMap!1705)

(assert (=> b!131762 (= res!63488 (and (= lt!68667 lt!68666) (not (= (select (arr!2256 (_keys!4602 (v!3188 (underlying!453 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2256 (_keys!4602 (v!3188 (underlying!453 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1402 (LongMapFixedSize!1094) ListLongMap!1705)

(assert (=> b!131762 (= lt!68666 (map!1402 newMap!16))))

(declare-fun getCurrentListMap!539 (array!4770 array!4772 (_ BitVec 32) (_ BitVec 32) V!3477 V!3477 (_ BitVec 32) Int) ListLongMap!1705)

(assert (=> b!131762 (= lt!68667 (getCurrentListMap!539 (_keys!4602 (v!3188 (underlying!453 thiss!992))) (_values!2838 (v!3188 (underlying!453 thiss!992))) (mask!7149 (v!3188 (underlying!453 thiss!992))) (extraKeys!2622 (v!3188 (underlying!453 thiss!992))) (zeroValue!2711 (v!3188 (underlying!453 thiss!992))) (minValue!2711 (v!3188 (underlying!453 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2855 (v!3188 (underlying!453 thiss!992)))))))

(declare-fun b!131763 () Bool)

(declare-fun e!85954 () Bool)

(assert (=> b!131763 (= e!85954 e!85950)))

(declare-fun b!131764 () Bool)

(declare-fun res!63481 () Bool)

(assert (=> b!131764 (=> (not res!63481) (not e!85945))))

(assert (=> b!131764 (= res!63481 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2524 (_keys!4602 (v!3188 (underlying!453 thiss!992)))))))))

(declare-fun mapIsEmpty!4625 () Bool)

(declare-fun mapRes!4626 () Bool)

(assert (=> mapIsEmpty!4625 mapRes!4626))

(declare-fun b!131765 () Bool)

(declare-fun res!63484 () Bool)

(assert (=> b!131765 (=> (not res!63484) (not e!85949))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!131765 (= res!63484 (validMask!0 (mask!7149 (v!3188 (underlying!453 thiss!992)))))))

(declare-fun b!131766 () Bool)

(declare-fun res!63480 () Bool)

(assert (=> b!131766 (=> (not res!63480) (not e!85949))))

(assert (=> b!131766 (= res!63480 (and (= (size!2525 (_values!2838 (v!3188 (underlying!453 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!7149 (v!3188 (underlying!453 thiss!992))))) (= (size!2524 (_keys!4602 (v!3188 (underlying!453 thiss!992)))) (size!2525 (_values!2838 (v!3188 (underlying!453 thiss!992))))) (bvsge (mask!7149 (v!3188 (underlying!453 thiss!992))) #b00000000000000000000000000000000) (bvsge (extraKeys!2622 (v!3188 (underlying!453 thiss!992))) #b00000000000000000000000000000000) (bvsle (extraKeys!2622 (v!3188 (underlying!453 thiss!992))) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!4626 () Bool)

(assert (=> mapIsEmpty!4626 mapRes!4625))

(declare-fun b!131767 () Bool)

(declare-fun res!63483 () Bool)

(assert (=> b!131767 (=> (not res!63483) (not e!85945))))

(declare-fun valid!520 (LongMapFixedSize!1094) Bool)

(assert (=> b!131767 (= res!63483 (valid!520 newMap!16))))

(declare-fun b!131768 () Bool)

(declare-fun e!85953 () Bool)

(assert (=> b!131768 (= e!85952 (and e!85953 mapRes!4626))))

(declare-fun condMapEmpty!4625 () Bool)

(declare-fun mapDefault!4625 () ValueCell!1093)

