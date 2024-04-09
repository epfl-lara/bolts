; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16290 () Bool)

(assert start!16290)

(declare-fun b!162350 () Bool)

(declare-fun b_free!3739 () Bool)

(declare-fun b_next!3739 () Bool)

(assert (=> b!162350 (= b_free!3739 (not b_next!3739))))

(declare-fun tp!13786 () Bool)

(declare-fun b_and!10171 () Bool)

(assert (=> b!162350 (= tp!13786 b_and!10171)))

(declare-fun b!162347 () Bool)

(declare-fun res!76893 () Bool)

(declare-fun e!106391 () Bool)

(assert (=> b!162347 (=> (not res!76893) (not e!106391))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162347 (= res!76893 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!5999 () Bool)

(declare-fun mapRes!5999 () Bool)

(assert (=> mapIsEmpty!5999 mapRes!5999))

(declare-fun res!76895 () Bool)

(assert (=> start!16290 (=> (not res!76895) (not e!106391))))

(declare-datatypes ((V!4369 0))(
  ( (V!4370 (val!1815 Int)) )
))
(declare-datatypes ((ValueCell!1427 0))(
  ( (ValueCellFull!1427 (v!3676 V!4369)) (EmptyCell!1427) )
))
(declare-datatypes ((array!6160 0))(
  ( (array!6161 (arr!2924 (Array (_ BitVec 32) (_ BitVec 64))) (size!3208 (_ BitVec 32))) )
))
(declare-datatypes ((array!6162 0))(
  ( (array!6163 (arr!2925 (Array (_ BitVec 32) ValueCell!1427)) (size!3209 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1762 0))(
  ( (LongMapFixedSize!1763 (defaultEntry!3323 Int) (mask!7945 (_ BitVec 32)) (extraKeys!3064 (_ BitVec 32)) (zeroValue!3166 V!4369) (minValue!3166 V!4369) (_size!930 (_ BitVec 32)) (_keys!5124 array!6160) (_values!3306 array!6162) (_vacant!930 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1762)

(declare-fun valid!789 (LongMapFixedSize!1762) Bool)

(assert (=> start!16290 (= res!76895 (valid!789 thiss!1248))))

(assert (=> start!16290 e!106391))

(declare-fun e!106388 () Bool)

(assert (=> start!16290 e!106388))

(assert (=> start!16290 true))

(declare-fun tp_is_empty!3541 () Bool)

(assert (=> start!16290 tp_is_empty!3541))

(declare-fun mapNonEmpty!5999 () Bool)

(declare-fun tp!13787 () Bool)

(declare-fun e!106393 () Bool)

(assert (=> mapNonEmpty!5999 (= mapRes!5999 (and tp!13787 e!106393))))

(declare-fun mapRest!5999 () (Array (_ BitVec 32) ValueCell!1427))

(declare-fun mapValue!5999 () ValueCell!1427)

(declare-fun mapKey!5999 () (_ BitVec 32))

(assert (=> mapNonEmpty!5999 (= (arr!2925 (_values!3306 thiss!1248)) (store mapRest!5999 mapKey!5999 mapValue!5999))))

(declare-fun b!162348 () Bool)

(declare-fun e!106392 () Bool)

(declare-fun e!106389 () Bool)

(assert (=> b!162348 (= e!106392 (and e!106389 mapRes!5999))))

(declare-fun condMapEmpty!5999 () Bool)

(declare-fun mapDefault!5999 () ValueCell!1427)

