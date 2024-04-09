; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15476 () Bool)

(assert start!15476)

(declare-fun b!153770 () Bool)

(declare-fun b_free!3213 () Bool)

(declare-fun b_next!3213 () Bool)

(assert (=> b!153770 (= b_free!3213 (not b_next!3213))))

(declare-fun tp!12156 () Bool)

(declare-fun b_and!9593 () Bool)

(assert (=> b!153770 (= tp!12156 b_and!9593)))

(declare-fun b!153769 () Bool)

(declare-fun b_free!3215 () Bool)

(declare-fun b_next!3215 () Bool)

(assert (=> b!153769 (= b_free!3215 (not b_next!3215))))

(declare-fun tp!12155 () Bool)

(declare-fun b_and!9595 () Bool)

(assert (=> b!153769 (= tp!12155 b_and!9595)))

(declare-fun b!153768 () Bool)

(declare-fun e!100464 () Bool)

(declare-datatypes ((V!3677 0))(
  ( (V!3678 (val!1556 Int)) )
))
(declare-datatypes ((array!5094 0))(
  ( (array!5095 (arr!2406 (Array (_ BitVec 32) (_ BitVec 64))) (size!2683 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1168 0))(
  ( (ValueCellFull!1168 (v!3411 V!3677)) (EmptyCell!1168) )
))
(declare-datatypes ((array!5096 0))(
  ( (array!5097 (arr!2407 (Array (_ BitVec 32) ValueCell!1168)) (size!2684 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1244 0))(
  ( (LongMapFixedSize!1245 (defaultEntry!3061 Int) (mask!7463 (_ BitVec 32)) (extraKeys!2802 (_ BitVec 32)) (zeroValue!2904 V!3677) (minValue!2904 V!3677) (_size!671 (_ BitVec 32)) (_keys!4834 array!5094) (_values!3044 array!5096) (_vacant!671 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2800 0))(
  ( (tuple2!2801 (_1!1410 Bool) (_2!1410 LongMapFixedSize!1244)) )
))
(declare-fun lt!80698 () tuple2!2800)

(declare-datatypes ((Cell!1022 0))(
  ( (Cell!1023 (v!3412 LongMapFixedSize!1244)) )
))
(declare-datatypes ((LongMap!1022 0))(
  ( (LongMap!1023 (underlying!522 Cell!1022)) )
))
(declare-fun thiss!992 () LongMap!1022)

(declare-datatypes ((tuple2!2802 0))(
  ( (tuple2!2803 (_1!1411 (_ BitVec 64)) (_2!1411 V!3677)) )
))
(declare-datatypes ((List!1820 0))(
  ( (Nil!1817) (Cons!1816 (h!2425 tuple2!2802) (t!6618 List!1820)) )
))
(declare-datatypes ((ListLongMap!1811 0))(
  ( (ListLongMap!1812 (toList!921 List!1820)) )
))
(declare-fun map!1496 (LongMapFixedSize!1244) ListLongMap!1811)

(assert (=> b!153768 (= e!100464 (not (= (map!1496 (_2!1410 lt!80698)) (map!1496 (v!3412 (underlying!522 thiss!992))))))))

(declare-fun tp_is_empty!3023 () Bool)

(declare-fun e!100476 () Bool)

(declare-fun e!100467 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!1244)

(declare-fun array_inv!1495 (array!5094) Bool)

(declare-fun array_inv!1496 (array!5096) Bool)

(assert (=> b!153769 (= e!100467 (and tp!12155 tp_is_empty!3023 (array_inv!1495 (_keys!4834 newMap!16)) (array_inv!1496 (_values!3044 newMap!16)) e!100476))))

(declare-fun e!100474 () Bool)

(declare-fun e!100468 () Bool)

(assert (=> b!153770 (= e!100474 (and tp!12156 tp_is_empty!3023 (array_inv!1495 (_keys!4834 (v!3412 (underlying!522 thiss!992)))) (array_inv!1496 (_values!3044 (v!3412 (underlying!522 thiss!992)))) e!100468))))

(declare-fun b!153771 () Bool)

(declare-fun res!72669 () Bool)

(declare-fun e!100473 () Bool)

(assert (=> b!153771 (=> (not res!72669) (not e!100473))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!153771 (= res!72669 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2683 (_keys!4834 (v!3412 (underlying!522 thiss!992)))))))))

(declare-fun b!153772 () Bool)

(declare-fun res!72672 () Bool)

(assert (=> b!153772 (=> (not res!72672) (not e!100473))))

(declare-fun valid!609 (LongMapFixedSize!1244) Bool)

(assert (=> b!153772 (= res!72672 (valid!609 newMap!16))))

(declare-fun b!153773 () Bool)

(declare-fun e!100466 () Bool)

(assert (=> b!153773 (= e!100466 tp_is_empty!3023)))

(declare-fun mapIsEmpty!5155 () Bool)

(declare-fun mapRes!5155 () Bool)

(assert (=> mapIsEmpty!5155 mapRes!5155))

(declare-fun b!153774 () Bool)

(declare-fun e!100469 () Bool)

(assert (=> b!153774 (= e!100469 e!100464)))

(declare-fun res!72665 () Bool)

(assert (=> b!153774 (=> res!72665 e!100464)))

(assert (=> b!153774 (= res!72665 (not (valid!609 (_2!1410 lt!80698))))))

(declare-fun b!153775 () Bool)

(declare-fun e!100465 () Bool)

(assert (=> b!153775 (= e!100468 (and e!100465 mapRes!5155))))

(declare-fun condMapEmpty!5155 () Bool)

(declare-fun mapDefault!5156 () ValueCell!1168)

