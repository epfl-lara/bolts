; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3110 () Bool)

(assert start!3110)

(declare-fun b!18945 () Bool)

(declare-fun b_free!655 () Bool)

(declare-fun b_next!655 () Bool)

(assert (=> b!18945 (= b_free!655 (not b_next!655))))

(declare-fun tp!3159 () Bool)

(declare-fun b_and!1317 () Bool)

(assert (=> b!18945 (= tp!3159 b_and!1317)))

(declare-fun b!18941 () Bool)

(declare-fun e!12129 () Bool)

(declare-datatypes ((V!1051 0))(
  ( (V!1052 (val!486 Int)) )
))
(declare-datatypes ((ValueCell!260 0))(
  ( (ValueCellFull!260 (v!1485 V!1051)) (EmptyCell!260) )
))
(declare-datatypes ((array!1037 0))(
  ( (array!1038 (arr!499 (Array (_ BitVec 32) ValueCell!260)) (size!589 (_ BitVec 32))) )
))
(declare-datatypes ((array!1039 0))(
  ( (array!1040 (arr!500 (Array (_ BitVec 32) (_ BitVec 64))) (size!590 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!106 0))(
  ( (LongMapFixedSize!107 (defaultEntry!1672 Int) (mask!4609 (_ BitVec 32)) (extraKeys!1582 (_ BitVec 32)) (zeroValue!1606 V!1051) (minValue!1606 V!1051) (_size!86 (_ BitVec 32)) (_keys!3097 array!1039) (_values!1668 array!1037) (_vacant!86 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!106 0))(
  ( (Cell!107 (v!1486 LongMapFixedSize!106)) )
))
(declare-datatypes ((LongMap!106 0))(
  ( (LongMap!107 (underlying!64 Cell!106)) )
))
(declare-datatypes ((tuple2!788 0))(
  ( (tuple2!789 (_1!396 Bool) (_2!396 LongMap!106)) )
))
(declare-fun lt!5354 () tuple2!788)

(declare-fun thiss!848 () LongMap!106)

(declare-datatypes ((tuple2!790 0))(
  ( (tuple2!791 (_1!397 (_ BitVec 64)) (_2!397 V!1051)) )
))
(declare-datatypes ((List!537 0))(
  ( (Nil!534) (Cons!533 (h!1099 tuple2!790) (t!3182 List!537)) )
))
(declare-datatypes ((ListLongMap!523 0))(
  ( (ListLongMap!524 (toList!277 List!537)) )
))
(declare-fun map!360 (LongMap!106) ListLongMap!523)

(assert (=> b!18941 (= e!12129 (not (= (map!360 (_2!396 lt!5354)) (map!360 thiss!848))))))

(declare-fun b!18942 () Bool)

(declare-fun e!12134 () Bool)

(declare-fun tp_is_empty!919 () Bool)

(assert (=> b!18942 (= e!12134 tp_is_empty!919)))

(declare-fun mapNonEmpty!817 () Bool)

(declare-fun mapRes!817 () Bool)

(declare-fun tp!3160 () Bool)

(assert (=> mapNonEmpty!817 (= mapRes!817 (and tp!3160 e!12134))))

(declare-fun mapKey!817 () (_ BitVec 32))

(declare-fun mapValue!817 () ValueCell!260)

(declare-fun mapRest!817 () (Array (_ BitVec 32) ValueCell!260))

(assert (=> mapNonEmpty!817 (= (arr!499 (_values!1668 (v!1486 (underlying!64 thiss!848)))) (store mapRest!817 mapKey!817 mapValue!817))))

(declare-fun b!18943 () Bool)

(declare-fun e!12130 () tuple2!788)

(assert (=> b!18943 (= e!12130 (tuple2!789 true thiss!848))))

(declare-fun e!12138 () Bool)

(declare-fun e!12136 () Bool)

(declare-fun array_inv!353 (array!1039) Bool)

(declare-fun array_inv!354 (array!1037) Bool)

(assert (=> b!18945 (= e!12136 (and tp!3159 tp_is_empty!919 (array_inv!353 (_keys!3097 (v!1486 (underlying!64 thiss!848)))) (array_inv!354 (_values!1668 (v!1486 (underlying!64 thiss!848)))) e!12138))))

(declare-fun mapIsEmpty!817 () Bool)

(assert (=> mapIsEmpty!817 mapRes!817))

(declare-fun b!18946 () Bool)

(declare-fun e!12137 () Bool)

(assert (=> b!18946 (= e!12138 (and e!12137 mapRes!817))))

(declare-fun condMapEmpty!817 () Bool)

(declare-fun mapDefault!817 () ValueCell!260)

