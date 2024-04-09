; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80918 () Bool)

(assert start!80918)

(declare-fun b!947680 () Bool)

(declare-fun b_free!18187 () Bool)

(declare-fun b_next!18187 () Bool)

(assert (=> b!947680 (= b_free!18187 (not b_next!18187))))

(declare-fun tp!63130 () Bool)

(declare-fun b_and!29629 () Bool)

(assert (=> b!947680 (= tp!63130 b_and!29629)))

(declare-fun mapNonEmpty!32926 () Bool)

(declare-fun mapRes!32926 () Bool)

(declare-fun tp!63129 () Bool)

(declare-fun e!533479 () Bool)

(assert (=> mapNonEmpty!32926 (= mapRes!32926 (and tp!63129 e!533479))))

(declare-datatypes ((V!32559 0))(
  ( (V!32560 (val!10398 Int)) )
))
(declare-datatypes ((ValueCell!9866 0))(
  ( (ValueCellFull!9866 (v!12933 V!32559)) (EmptyCell!9866) )
))
(declare-fun mapRest!32926 () (Array (_ BitVec 32) ValueCell!9866))

(declare-datatypes ((array!57414 0))(
  ( (array!57415 (arr!27611 (Array (_ BitVec 32) ValueCell!9866)) (size!28085 (_ BitVec 32))) )
))
(declare-datatypes ((array!57416 0))(
  ( (array!57417 (arr!27612 (Array (_ BitVec 32) (_ BitVec 64))) (size!28086 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4882 0))(
  ( (LongMapFixedSize!4883 (defaultEntry!5740 Int) (mask!27481 (_ BitVec 32)) (extraKeys!5472 (_ BitVec 32)) (zeroValue!5576 V!32559) (minValue!5576 V!32559) (_size!2496 (_ BitVec 32)) (_keys!10650 array!57416) (_values!5763 array!57414) (_vacant!2496 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4882)

(declare-fun mapKey!32926 () (_ BitVec 32))

(declare-fun mapValue!32926 () ValueCell!9866)

(assert (=> mapNonEmpty!32926 (= (arr!27611 (_values!5763 thiss!1141)) (store mapRest!32926 mapKey!32926 mapValue!32926))))

(declare-fun b!947677 () Bool)

(declare-fun res!636048 () Bool)

(declare-fun e!533481 () Bool)

(assert (=> b!947677 (=> (not res!636048) (not e!533481))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13612 0))(
  ( (tuple2!13613 (_1!6816 (_ BitVec 64)) (_2!6816 V!32559)) )
))
(declare-datatypes ((List!19442 0))(
  ( (Nil!19439) (Cons!19438 (h!20594 tuple2!13612) (t!27773 List!19442)) )
))
(declare-datatypes ((ListLongMap!12323 0))(
  ( (ListLongMap!12324 (toList!6177 List!19442)) )
))
(declare-fun contains!5210 (ListLongMap!12323 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3362 (array!57416 array!57414 (_ BitVec 32) (_ BitVec 32) V!32559 V!32559 (_ BitVec 32) Int) ListLongMap!12323)

(assert (=> b!947677 (= res!636048 (contains!5210 (getCurrentListMap!3362 (_keys!10650 thiss!1141) (_values!5763 thiss!1141) (mask!27481 thiss!1141) (extraKeys!5472 thiss!1141) (zeroValue!5576 thiss!1141) (minValue!5576 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5740 thiss!1141)) key!756))))

(declare-fun b!947678 () Bool)

(declare-fun e!533477 () Bool)

(declare-fun tp_is_empty!20695 () Bool)

(assert (=> b!947678 (= e!533477 tp_is_empty!20695)))

(declare-fun b!947679 () Bool)

(declare-fun res!636051 () Bool)

(assert (=> b!947679 (=> (not res!636051) (not e!533481))))

(declare-datatypes ((SeekEntryResult!9112 0))(
  ( (MissingZero!9112 (index!38818 (_ BitVec 32))) (Found!9112 (index!38819 (_ BitVec 32))) (Intermediate!9112 (undefined!9924 Bool) (index!38820 (_ BitVec 32)) (x!81539 (_ BitVec 32))) (Undefined!9112) (MissingVacant!9112 (index!38821 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57416 (_ BitVec 32)) SeekEntryResult!9112)

(assert (=> b!947679 (= res!636051 (not (is-Found!9112 (seekEntry!0 key!756 (_keys!10650 thiss!1141) (mask!27481 thiss!1141)))))))

(declare-fun e!533476 () Bool)

(declare-fun e!533480 () Bool)

(declare-fun array_inv!21382 (array!57416) Bool)

(declare-fun array_inv!21383 (array!57414) Bool)

(assert (=> b!947680 (= e!533476 (and tp!63130 tp_is_empty!20695 (array_inv!21382 (_keys!10650 thiss!1141)) (array_inv!21383 (_values!5763 thiss!1141)) e!533480))))

(declare-fun res!636049 () Bool)

(assert (=> start!80918 (=> (not res!636049) (not e!533481))))

(declare-fun valid!1837 (LongMapFixedSize!4882) Bool)

(assert (=> start!80918 (= res!636049 (valid!1837 thiss!1141))))

(assert (=> start!80918 e!533481))

(assert (=> start!80918 e!533476))

(assert (=> start!80918 true))

(declare-fun mapIsEmpty!32926 () Bool)

(assert (=> mapIsEmpty!32926 mapRes!32926))

(declare-fun b!947681 () Bool)

(assert (=> b!947681 (= e!533479 tp_is_empty!20695)))

(declare-fun b!947682 () Bool)

(declare-fun res!636050 () Bool)

(assert (=> b!947682 (=> (not res!636050) (not e!533481))))

(assert (=> b!947682 (= res!636050 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!947683 () Bool)

(assert (=> b!947683 (= e!533480 (and e!533477 mapRes!32926))))

(declare-fun condMapEmpty!32926 () Bool)

(declare-fun mapDefault!32926 () ValueCell!9866)

