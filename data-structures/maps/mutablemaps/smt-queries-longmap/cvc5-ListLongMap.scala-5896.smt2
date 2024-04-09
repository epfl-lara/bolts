; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!76186 () Bool)

(assert start!76186)

(declare-fun b!894438 () Bool)

(declare-fun b_free!15877 () Bool)

(declare-fun b_next!15877 () Bool)

(assert (=> b!894438 (= b_free!15877 (not b_next!15877))))

(declare-fun tp!55623 () Bool)

(declare-fun b_and!26187 () Bool)

(assert (=> b!894438 (= tp!55623 b_and!26187)))

(declare-fun b!894433 () Bool)

(declare-fun e!499644 () Bool)

(declare-fun e!499646 () Bool)

(assert (=> b!894433 (= e!499644 e!499646)))

(declare-fun res!605405 () Bool)

(assert (=> b!894433 (=> (not res!605405) (not e!499646))))

(declare-datatypes ((array!52388 0))(
  ( (array!52389 (arr!25190 (Array (_ BitVec 32) (_ BitVec 64))) (size!25637 (_ BitVec 32))) )
))
(declare-datatypes ((V!29239 0))(
  ( (V!29240 (val!9153 Int)) )
))
(declare-datatypes ((ValueCell!8621 0))(
  ( (ValueCellFull!8621 (v!11640 V!29239)) (EmptyCell!8621) )
))
(declare-datatypes ((array!52390 0))(
  ( (array!52391 (arr!25191 (Array (_ BitVec 32) ValueCell!8621)) (size!25638 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4258 0))(
  ( (LongMapFixedSize!4259 (defaultEntry!5341 Int) (mask!25897 (_ BitVec 32)) (extraKeys!5037 (_ BitVec 32)) (zeroValue!5141 V!29239) (minValue!5141 V!29239) (_size!2184 (_ BitVec 32)) (_keys!10035 array!52388) (_values!5328 array!52390) (_vacant!2184 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4258)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!894433 (= res!605405 (validMask!0 (mask!25897 thiss!1181)))))

(declare-datatypes ((SeekEntryResult!8861 0))(
  ( (MissingZero!8861 (index!37814 (_ BitVec 32))) (Found!8861 (index!37815 (_ BitVec 32))) (Intermediate!8861 (undefined!9673 Bool) (index!37816 (_ BitVec 32)) (x!76050 (_ BitVec 32))) (Undefined!8861) (MissingVacant!8861 (index!37817 (_ BitVec 32))) )
))
(declare-fun lt!404253 () SeekEntryResult!8861)

(declare-fun key!785 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52388 (_ BitVec 32)) SeekEntryResult!8861)

(assert (=> b!894433 (= lt!404253 (seekEntry!0 key!785 (_keys!10035 thiss!1181) (mask!25897 thiss!1181)))))

(declare-fun b!894434 () Bool)

(declare-fun e!499647 () Bool)

(declare-fun tp_is_empty!18205 () Bool)

(assert (=> b!894434 (= e!499647 tp_is_empty!18205)))

(declare-fun b!894435 () Bool)

(assert (=> b!894435 (= e!499646 (not (= (size!25638 (_values!5328 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25897 thiss!1181)))))))

(declare-fun mapIsEmpty!28884 () Bool)

(declare-fun mapRes!28884 () Bool)

(assert (=> mapIsEmpty!28884 mapRes!28884))

(declare-fun b!894437 () Bool)

(declare-fun res!605404 () Bool)

(assert (=> b!894437 (=> (not res!605404) (not e!499644))))

(assert (=> b!894437 (= res!605404 (not (= key!785 (bvneg key!785))))))

(declare-fun mapNonEmpty!28884 () Bool)

(declare-fun tp!55622 () Bool)

(assert (=> mapNonEmpty!28884 (= mapRes!28884 (and tp!55622 e!499647))))

(declare-fun mapRest!28884 () (Array (_ BitVec 32) ValueCell!8621))

(declare-fun mapValue!28884 () ValueCell!8621)

(declare-fun mapKey!28884 () (_ BitVec 32))

(assert (=> mapNonEmpty!28884 (= (arr!25191 (_values!5328 thiss!1181)) (store mapRest!28884 mapKey!28884 mapValue!28884))))

(declare-fun e!499648 () Bool)

(declare-fun e!499645 () Bool)

(declare-fun array_inv!19758 (array!52388) Bool)

(declare-fun array_inv!19759 (array!52390) Bool)

(assert (=> b!894438 (= e!499645 (and tp!55623 tp_is_empty!18205 (array_inv!19758 (_keys!10035 thiss!1181)) (array_inv!19759 (_values!5328 thiss!1181)) e!499648))))

(declare-fun b!894439 () Bool)

(declare-fun e!499649 () Bool)

(assert (=> b!894439 (= e!499649 tp_is_empty!18205)))

(declare-fun b!894436 () Bool)

(assert (=> b!894436 (= e!499648 (and e!499649 mapRes!28884))))

(declare-fun condMapEmpty!28884 () Bool)

(declare-fun mapDefault!28884 () ValueCell!8621)

