; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16794 () Bool)

(assert start!16794)

(declare-fun b!168904 () Bool)

(declare-fun b_free!4087 () Bool)

(declare-fun b_next!4087 () Bool)

(assert (=> b!168904 (= b_free!4087 (not b_next!4087))))

(declare-fun tp!14862 () Bool)

(declare-fun b_and!10519 () Bool)

(assert (=> b!168904 (= tp!14862 b_and!10519)))

(declare-fun b!168895 () Bool)

(declare-datatypes ((SeekEntryResult!524 0))(
  ( (MissingZero!524 (index!4264 (_ BitVec 32))) (Found!524 (index!4265 (_ BitVec 32))) (Intermediate!524 (undefined!1336 Bool) (index!4266 (_ BitVec 32)) (x!18680 (_ BitVec 32))) (Undefined!524) (MissingVacant!524 (index!4267 (_ BitVec 32))) )
))
(declare-fun lt!84689 () SeekEntryResult!524)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!4833 0))(
  ( (V!4834 (val!1989 Int)) )
))
(declare-datatypes ((ValueCell!1601 0))(
  ( (ValueCellFull!1601 (v!3850 V!4833)) (EmptyCell!1601) )
))
(declare-datatypes ((array!6874 0))(
  ( (array!6875 (arr!3272 (Array (_ BitVec 32) (_ BitVec 64))) (size!3560 (_ BitVec 32))) )
))
(declare-datatypes ((array!6876 0))(
  ( (array!6877 (arr!3273 (Array (_ BitVec 32) ValueCell!1601)) (size!3561 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2110 0))(
  ( (LongMapFixedSize!2111 (defaultEntry!3497 Int) (mask!8272 (_ BitVec 32)) (extraKeys!3238 (_ BitVec 32)) (zeroValue!3340 V!4833) (minValue!3340 V!4833) (_size!1104 (_ BitVec 32)) (_keys!5322 array!6874) (_values!3480 array!6876) (_vacant!1104 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2110)

(declare-fun e!111140 () Bool)

(assert (=> b!168895 (= e!111140 (= (select (arr!3272 (_keys!5322 thiss!1248)) (index!4265 lt!84689)) key!828))))

(declare-fun b!168896 () Bool)

(declare-fun res!80411 () Bool)

(declare-fun e!111142 () Bool)

(assert (=> b!168896 (=> (not res!80411) (not e!111142))))

(assert (=> b!168896 (= res!80411 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6552 () Bool)

(declare-fun mapRes!6552 () Bool)

(assert (=> mapIsEmpty!6552 mapRes!6552))

(declare-fun b!168897 () Bool)

(declare-fun e!111143 () Bool)

(declare-fun tp_is_empty!3889 () Bool)

(assert (=> b!168897 (= e!111143 tp_is_empty!3889)))

(declare-fun res!80412 () Bool)

(assert (=> start!16794 (=> (not res!80412) (not e!111142))))

(declare-fun valid!906 (LongMapFixedSize!2110) Bool)

(assert (=> start!16794 (= res!80412 (valid!906 thiss!1248))))

(assert (=> start!16794 e!111142))

(declare-fun e!111147 () Bool)

(assert (=> start!16794 e!111147))

(assert (=> start!16794 true))

(assert (=> start!16794 tp_is_empty!3889))

(declare-fun b!168898 () Bool)

(declare-datatypes ((Unit!5218 0))(
  ( (Unit!5219) )
))
(declare-fun e!111145 () Unit!5218)

(declare-fun lt!84688 () Unit!5218)

(assert (=> b!168898 (= e!111145 lt!84688)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!133 (array!6874 array!6876 (_ BitVec 32) (_ BitVec 32) V!4833 V!4833 (_ BitVec 64) Int) Unit!5218)

(assert (=> b!168898 (= lt!84688 (lemmaInListMapThenSeekEntryOrOpenFindsIt!133 (_keys!5322 thiss!1248) (_values!3480 thiss!1248) (mask!8272 thiss!1248) (extraKeys!3238 thiss!1248) (zeroValue!3340 thiss!1248) (minValue!3340 thiss!1248) key!828 (defaultEntry!3497 thiss!1248)))))

(declare-fun res!80409 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!168898 (= res!80409 (inRange!0 (index!4265 lt!84689) (mask!8272 thiss!1248)))))

(assert (=> b!168898 (=> (not res!80409) (not e!111140))))

(assert (=> b!168898 e!111140))

(declare-fun b!168899 () Bool)

(declare-fun Unit!5220 () Unit!5218)

(assert (=> b!168899 (= e!111145 Unit!5220)))

(declare-fun lt!84695 () Unit!5218)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!132 (array!6874 array!6876 (_ BitVec 32) (_ BitVec 32) V!4833 V!4833 (_ BitVec 64) Int) Unit!5218)

(assert (=> b!168899 (= lt!84695 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!132 (_keys!5322 thiss!1248) (_values!3480 thiss!1248) (mask!8272 thiss!1248) (extraKeys!3238 thiss!1248) (zeroValue!3340 thiss!1248) (minValue!3340 thiss!1248) key!828 (defaultEntry!3497 thiss!1248)))))

(assert (=> b!168899 false))

(declare-fun b!168900 () Bool)

(declare-fun e!111148 () Bool)

(assert (=> b!168900 (= e!111142 e!111148)))

(declare-fun res!80410 () Bool)

(assert (=> b!168900 (=> (not res!80410) (not e!111148))))

(assert (=> b!168900 (= res!80410 (and (not (is-Undefined!524 lt!84689)) (not (is-MissingVacant!524 lt!84689)) (not (is-MissingZero!524 lt!84689)) (is-Found!524 lt!84689)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6874 (_ BitVec 32)) SeekEntryResult!524)

(assert (=> b!168900 (= lt!84689 (seekEntryOrOpen!0 key!828 (_keys!5322 thiss!1248) (mask!8272 thiss!1248)))))

(declare-fun mapNonEmpty!6552 () Bool)

(declare-fun tp!14861 () Bool)

(declare-fun e!111144 () Bool)

(assert (=> mapNonEmpty!6552 (= mapRes!6552 (and tp!14861 e!111144))))

(declare-fun mapRest!6552 () (Array (_ BitVec 32) ValueCell!1601))

(declare-fun mapValue!6552 () ValueCell!1601)

(declare-fun mapKey!6552 () (_ BitVec 32))

(assert (=> mapNonEmpty!6552 (= (arr!3273 (_values!3480 thiss!1248)) (store mapRest!6552 mapKey!6552 mapValue!6552))))

(declare-fun b!168901 () Bool)

(declare-fun e!111146 () Bool)

(assert (=> b!168901 (= e!111146 (and e!111143 mapRes!6552))))

(declare-fun condMapEmpty!6552 () Bool)

(declare-fun mapDefault!6552 () ValueCell!1601)

