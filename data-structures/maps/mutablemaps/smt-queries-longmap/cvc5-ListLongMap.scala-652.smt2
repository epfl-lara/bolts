; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16272 () Bool)

(assert start!16272)

(declare-fun b!162188 () Bool)

(declare-fun b_free!3721 () Bool)

(declare-fun b_next!3721 () Bool)

(assert (=> b!162188 (= b_free!3721 (not b_next!3721))))

(declare-fun tp!13733 () Bool)

(declare-fun b_and!10153 () Bool)

(assert (=> b!162188 (= tp!13733 b_and!10153)))

(declare-fun mapNonEmpty!5972 () Bool)

(declare-fun mapRes!5972 () Bool)

(declare-fun tp!13732 () Bool)

(declare-fun e!106224 () Bool)

(assert (=> mapNonEmpty!5972 (= mapRes!5972 (and tp!13732 e!106224))))

(declare-fun mapKey!5972 () (_ BitVec 32))

(declare-datatypes ((V!4345 0))(
  ( (V!4346 (val!1806 Int)) )
))
(declare-datatypes ((ValueCell!1418 0))(
  ( (ValueCellFull!1418 (v!3667 V!4345)) (EmptyCell!1418) )
))
(declare-fun mapRest!5972 () (Array (_ BitVec 32) ValueCell!1418))

(declare-fun mapValue!5972 () ValueCell!1418)

(declare-datatypes ((array!6124 0))(
  ( (array!6125 (arr!2906 (Array (_ BitVec 32) (_ BitVec 64))) (size!3190 (_ BitVec 32))) )
))
(declare-datatypes ((array!6126 0))(
  ( (array!6127 (arr!2907 (Array (_ BitVec 32) ValueCell!1418)) (size!3191 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1744 0))(
  ( (LongMapFixedSize!1745 (defaultEntry!3314 Int) (mask!7930 (_ BitVec 32)) (extraKeys!3055 (_ BitVec 32)) (zeroValue!3157 V!4345) (minValue!3157 V!4345) (_size!921 (_ BitVec 32)) (_keys!5115 array!6124) (_values!3297 array!6126) (_vacant!921 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1744)

(assert (=> mapNonEmpty!5972 (= (arr!2907 (_values!3297 thiss!1248)) (store mapRest!5972 mapKey!5972 mapValue!5972))))

(declare-fun b!162183 () Bool)

(declare-fun e!106228 () Bool)

(declare-fun tp_is_empty!3523 () Bool)

(assert (=> b!162183 (= e!106228 tp_is_empty!3523)))

(declare-fun res!76837 () Bool)

(declare-fun e!106227 () Bool)

(assert (=> start!16272 (=> (not res!76837) (not e!106227))))

(declare-fun valid!782 (LongMapFixedSize!1744) Bool)

(assert (=> start!16272 (= res!76837 (valid!782 thiss!1248))))

(assert (=> start!16272 e!106227))

(declare-fun e!106225 () Bool)

(assert (=> start!16272 e!106225))

(assert (=> start!16272 true))

(declare-fun b!162184 () Bool)

(declare-datatypes ((SeekEntryResult!386 0))(
  ( (MissingZero!386 (index!3712 (_ BitVec 32))) (Found!386 (index!3713 (_ BitVec 32))) (Intermediate!386 (undefined!1198 Bool) (index!3714 (_ BitVec 32)) (x!17946 (_ BitVec 32))) (Undefined!386) (MissingVacant!386 (index!3715 (_ BitVec 32))) )
))
(declare-fun lt!82424 () SeekEntryResult!386)

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162184 (= e!106227 (and (not (is-Undefined!386 lt!82424)) (not (is-MissingVacant!386 lt!82424)) (is-MissingZero!386 lt!82424) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6124 (_ BitVec 32)) SeekEntryResult!386)

(assert (=> b!162184 (= lt!82424 (seekEntryOrOpen!0 key!828 (_keys!5115 thiss!1248) (mask!7930 thiss!1248)))))

(declare-fun b!162185 () Bool)

(declare-fun e!106229 () Bool)

(assert (=> b!162185 (= e!106229 (and e!106228 mapRes!5972))))

(declare-fun condMapEmpty!5972 () Bool)

(declare-fun mapDefault!5972 () ValueCell!1418)

