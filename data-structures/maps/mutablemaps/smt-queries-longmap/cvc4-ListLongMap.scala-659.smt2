; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16318 () Bool)

(assert start!16318)

(declare-fun b!162679 () Bool)

(declare-fun b_free!3767 () Bool)

(declare-fun b_next!3767 () Bool)

(assert (=> b!162679 (= b_free!3767 (not b_next!3767))))

(declare-fun tp!13870 () Bool)

(declare-fun b_and!10199 () Bool)

(assert (=> b!162679 (= tp!13870 b_and!10199)))

(declare-fun b!162677 () Bool)

(declare-fun e!106701 () Bool)

(assert (=> b!162677 (= e!106701 false)))

(declare-datatypes ((V!4405 0))(
  ( (V!4406 (val!1829 Int)) )
))
(declare-fun v!309 () V!4405)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!400 0))(
  ( (MissingZero!400 (index!3768 (_ BitVec 32))) (Found!400 (index!3769 (_ BitVec 32))) (Intermediate!400 (undefined!1212 Bool) (index!3770 (_ BitVec 32)) (x!18016 (_ BitVec 32))) (Undefined!400) (MissingVacant!400 (index!3771 (_ BitVec 32))) )
))
(declare-fun lt!82555 () SeekEntryResult!400)

(declare-datatypes ((ValueCell!1441 0))(
  ( (ValueCellFull!1441 (v!3690 V!4405)) (EmptyCell!1441) )
))
(declare-datatypes ((array!6216 0))(
  ( (array!6217 (arr!2952 (Array (_ BitVec 32) (_ BitVec 64))) (size!3236 (_ BitVec 32))) )
))
(declare-datatypes ((array!6218 0))(
  ( (array!6219 (arr!2953 (Array (_ BitVec 32) ValueCell!1441)) (size!3237 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1790 0))(
  ( (LongMapFixedSize!1791 (defaultEntry!3337 Int) (mask!7967 (_ BitVec 32)) (extraKeys!3078 (_ BitVec 32)) (zeroValue!3180 V!4405) (minValue!3180 V!4405) (_size!944 (_ BitVec 32)) (_keys!5138 array!6216) (_values!3320 array!6218) (_vacant!944 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1790)

(declare-fun lt!82556 () Bool)

(declare-fun valid!798 (LongMapFixedSize!1790) Bool)

(declare-datatypes ((tuple2!3008 0))(
  ( (tuple2!3009 (_1!1514 Bool) (_2!1514 LongMapFixedSize!1790)) )
))
(declare-fun updateHelperNewKey!89 (LongMapFixedSize!1790 (_ BitVec 64) V!4405 (_ BitVec 32)) tuple2!3008)

(assert (=> b!162677 (= lt!82556 (valid!798 (_2!1514 (updateHelperNewKey!89 thiss!1248 key!828 v!309 (index!3768 lt!82555)))))))

(declare-fun b!162678 () Bool)

(declare-fun e!106702 () Bool)

(declare-fun tp_is_empty!3569 () Bool)

(assert (=> b!162678 (= e!106702 tp_is_empty!3569)))

(declare-fun e!106706 () Bool)

(declare-fun e!106703 () Bool)

(declare-fun array_inv!1877 (array!6216) Bool)

(declare-fun array_inv!1878 (array!6218) Bool)

(assert (=> b!162679 (= e!106703 (and tp!13870 tp_is_empty!3569 (array_inv!1877 (_keys!5138 thiss!1248)) (array_inv!1878 (_values!3320 thiss!1248)) e!106706))))

(declare-fun b!162680 () Bool)

(declare-fun e!106704 () Bool)

(assert (=> b!162680 (= e!106704 e!106701)))

(declare-fun res!77057 () Bool)

(assert (=> b!162680 (=> (not res!77057) (not e!106701))))

(assert (=> b!162680 (= res!77057 (and (not (is-Undefined!400 lt!82555)) (not (is-MissingVacant!400 lt!82555)) (is-MissingZero!400 lt!82555)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6216 (_ BitVec 32)) SeekEntryResult!400)

(assert (=> b!162680 (= lt!82555 (seekEntryOrOpen!0 key!828 (_keys!5138 thiss!1248) (mask!7967 thiss!1248)))))

(declare-fun res!77055 () Bool)

(assert (=> start!16318 (=> (not res!77055) (not e!106704))))

(assert (=> start!16318 (= res!77055 (valid!798 thiss!1248))))

(assert (=> start!16318 e!106704))

(assert (=> start!16318 e!106703))

(assert (=> start!16318 true))

(assert (=> start!16318 tp_is_empty!3569))

(declare-fun b!162681 () Bool)

(declare-fun e!106705 () Bool)

(assert (=> b!162681 (= e!106705 tp_is_empty!3569)))

(declare-fun mapNonEmpty!6041 () Bool)

(declare-fun mapRes!6041 () Bool)

(declare-fun tp!13871 () Bool)

(assert (=> mapNonEmpty!6041 (= mapRes!6041 (and tp!13871 e!106705))))

(declare-fun mapRest!6041 () (Array (_ BitVec 32) ValueCell!1441))

(declare-fun mapValue!6041 () ValueCell!1441)

(declare-fun mapKey!6041 () (_ BitVec 32))

(assert (=> mapNonEmpty!6041 (= (arr!2953 (_values!3320 thiss!1248)) (store mapRest!6041 mapKey!6041 mapValue!6041))))

(declare-fun b!162682 () Bool)

(assert (=> b!162682 (= e!106706 (and e!106702 mapRes!6041))))

(declare-fun condMapEmpty!6041 () Bool)

(declare-fun mapDefault!6041 () ValueCell!1441)

