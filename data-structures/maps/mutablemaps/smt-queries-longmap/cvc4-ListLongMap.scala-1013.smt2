; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21694 () Bool)

(assert start!21694)

(declare-fun b!217687 () Bool)

(declare-fun b_free!5831 () Bool)

(declare-fun b_next!5831 () Bool)

(assert (=> b!217687 (= b_free!5831 (not b_next!5831))))

(declare-fun tp!20628 () Bool)

(declare-fun b_and!12739 () Bool)

(assert (=> b!217687 (= tp!20628 b_and!12739)))

(declare-fun mapNonEmpty!9702 () Bool)

(declare-fun mapRes!9702 () Bool)

(declare-fun tp!20627 () Bool)

(declare-fun e!141615 () Bool)

(assert (=> mapNonEmpty!9702 (= mapRes!9702 (and tp!20627 e!141615))))

(declare-datatypes ((V!7237 0))(
  ( (V!7238 (val!2891 Int)) )
))
(declare-datatypes ((ValueCell!2503 0))(
  ( (ValueCellFull!2503 (v!4905 V!7237)) (EmptyCell!2503) )
))
(declare-datatypes ((array!10624 0))(
  ( (array!10625 (arr!5033 (Array (_ BitVec 32) ValueCell!2503)) (size!5365 (_ BitVec 32))) )
))
(declare-datatypes ((array!10626 0))(
  ( (array!10627 (arr!5034 (Array (_ BitVec 32) (_ BitVec 64))) (size!5366 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2906 0))(
  ( (LongMapFixedSize!2907 (defaultEntry!4103 Int) (mask!9864 (_ BitVec 32)) (extraKeys!3840 (_ BitVec 32)) (zeroValue!3944 V!7237) (minValue!3944 V!7237) (_size!1502 (_ BitVec 32)) (_keys!6152 array!10626) (_values!4086 array!10624) (_vacant!1502 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2906)

(declare-fun mapKey!9702 () (_ BitVec 32))

(declare-fun mapRest!9702 () (Array (_ BitVec 32) ValueCell!2503))

(declare-fun mapValue!9702 () ValueCell!2503)

(assert (=> mapNonEmpty!9702 (= (arr!5033 (_values!4086 thiss!1504)) (store mapRest!9702 mapKey!9702 mapValue!9702))))

(declare-fun b!217679 () Bool)

(declare-fun e!141617 () Bool)

(declare-fun e!141616 () Bool)

(assert (=> b!217679 (= e!141617 e!141616)))

(declare-fun res!106649 () Bool)

(assert (=> b!217679 (=> (not res!106649) (not e!141616))))

(declare-datatypes ((SeekEntryResult!781 0))(
  ( (MissingZero!781 (index!5294 (_ BitVec 32))) (Found!781 (index!5295 (_ BitVec 32))) (Intermediate!781 (undefined!1593 Bool) (index!5296 (_ BitVec 32)) (x!22773 (_ BitVec 32))) (Undefined!781) (MissingVacant!781 (index!5297 (_ BitVec 32))) )
))
(declare-fun lt!111420 () SeekEntryResult!781)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!217679 (= res!106649 (or (= lt!111420 (MissingZero!781 index!297)) (= lt!111420 (MissingVacant!781 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10626 (_ BitVec 32)) SeekEntryResult!781)

(assert (=> b!217679 (= lt!111420 (seekEntryOrOpen!0 key!932 (_keys!6152 thiss!1504) (mask!9864 thiss!1504)))))

(declare-fun b!217680 () Bool)

(declare-fun res!106646 () Bool)

(assert (=> b!217680 (=> (not res!106646) (not e!141616))))

(assert (=> b!217680 (= res!106646 (and (= (size!5365 (_values!4086 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9864 thiss!1504))) (= (size!5366 (_keys!6152 thiss!1504)) (size!5365 (_values!4086 thiss!1504))) (bvsge (mask!9864 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3840 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3840 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!217681 () Bool)

(declare-fun res!106650 () Bool)

(assert (=> b!217681 (=> (not res!106650) (not e!141616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!217681 (= res!106650 (validMask!0 (mask!9864 thiss!1504)))))

(declare-fun b!217682 () Bool)

(declare-fun e!141621 () Bool)

(declare-fun tp_is_empty!5693 () Bool)

(assert (=> b!217682 (= e!141621 tp_is_empty!5693)))

(declare-fun mapIsEmpty!9702 () Bool)

(assert (=> mapIsEmpty!9702 mapRes!9702))

(declare-fun b!217683 () Bool)

(assert (=> b!217683 (= e!141616 false)))

(declare-fun lt!111421 () Bool)

(declare-datatypes ((List!3220 0))(
  ( (Nil!3217) (Cons!3216 (h!3863 (_ BitVec 64)) (t!8183 List!3220)) )
))
(declare-fun arrayNoDuplicates!0 (array!10626 (_ BitVec 32) List!3220) Bool)

(assert (=> b!217683 (= lt!111421 (arrayNoDuplicates!0 (_keys!6152 thiss!1504) #b00000000000000000000000000000000 Nil!3217))))

(declare-fun b!217684 () Bool)

(assert (=> b!217684 (= e!141615 tp_is_empty!5693)))

(declare-fun b!217685 () Bool)

(declare-fun e!141620 () Bool)

(assert (=> b!217685 (= e!141620 (and e!141621 mapRes!9702))))

(declare-fun condMapEmpty!9702 () Bool)

(declare-fun mapDefault!9702 () ValueCell!2503)

