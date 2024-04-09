; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16086 () Bool)

(assert start!16086)

(declare-fun b!159586 () Bool)

(declare-fun b_free!3535 () Bool)

(declare-fun b_next!3535 () Bool)

(assert (=> b!159586 (= b_free!3535 (not b_next!3535))))

(declare-fun tp!13175 () Bool)

(declare-fun b_and!9967 () Bool)

(assert (=> b!159586 (= tp!13175 b_and!9967)))

(declare-fun mapIsEmpty!5693 () Bool)

(declare-fun mapRes!5693 () Bool)

(assert (=> mapIsEmpty!5693 mapRes!5693))

(declare-fun b!159584 () Bool)

(declare-fun res!75443 () Bool)

(declare-fun e!104444 () Bool)

(assert (=> b!159584 (=> (not res!75443) (not e!104444))))

(declare-datatypes ((V!4097 0))(
  ( (V!4098 (val!1713 Int)) )
))
(declare-datatypes ((ValueCell!1325 0))(
  ( (ValueCellFull!1325 (v!3574 V!4097)) (EmptyCell!1325) )
))
(declare-datatypes ((array!5752 0))(
  ( (array!5753 (arr!2720 (Array (_ BitVec 32) (_ BitVec 64))) (size!3004 (_ BitVec 32))) )
))
(declare-datatypes ((array!5754 0))(
  ( (array!5755 (arr!2721 (Array (_ BitVec 32) ValueCell!1325)) (size!3005 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1558 0))(
  ( (LongMapFixedSize!1559 (defaultEntry!3221 Int) (mask!7775 (_ BitVec 32)) (extraKeys!2962 (_ BitVec 32)) (zeroValue!3064 V!4097) (minValue!3064 V!4097) (_size!828 (_ BitVec 32)) (_keys!5022 array!5752) (_values!3204 array!5754) (_vacant!828 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1558)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159584 (= res!75443 (validMask!0 (mask!7775 thiss!1248)))))

(declare-fun b!159585 () Bool)

(declare-fun res!75448 () Bool)

(assert (=> b!159585 (=> (not res!75448) (not e!104444))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!327 0))(
  ( (MissingZero!327 (index!3476 (_ BitVec 32))) (Found!327 (index!3477 (_ BitVec 32))) (Intermediate!327 (undefined!1139 Bool) (index!3478 (_ BitVec 32)) (x!17639 (_ BitVec 32))) (Undefined!327) (MissingVacant!327 (index!3479 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5752 (_ BitVec 32)) SeekEntryResult!327)

(assert (=> b!159585 (= res!75448 (is-Undefined!327 (seekEntryOrOpen!0 key!828 (_keys!5022 thiss!1248) (mask!7775 thiss!1248))))))

(declare-fun e!104447 () Bool)

(declare-fun e!104445 () Bool)

(declare-fun tp_is_empty!3337 () Bool)

(declare-fun array_inv!1721 (array!5752) Bool)

(declare-fun array_inv!1722 (array!5754) Bool)

(assert (=> b!159586 (= e!104445 (and tp!13175 tp_is_empty!3337 (array_inv!1721 (_keys!5022 thiss!1248)) (array_inv!1722 (_values!3204 thiss!1248)) e!104447))))

(declare-fun b!159587 () Bool)

(declare-fun res!75447 () Bool)

(assert (=> b!159587 (=> (not res!75447) (not e!104444))))

(assert (=> b!159587 (= res!75447 (and (= (size!3005 (_values!3204 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7775 thiss!1248))) (= (size!3004 (_keys!5022 thiss!1248)) (size!3005 (_values!3204 thiss!1248))) (bvsge (mask!7775 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2962 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2962 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159588 () Bool)

(declare-fun e!104443 () Bool)

(assert (=> b!159588 (= e!104443 tp_is_empty!3337)))

(declare-fun mapNonEmpty!5693 () Bool)

(declare-fun tp!13174 () Bool)

(declare-fun e!104446 () Bool)

(assert (=> mapNonEmpty!5693 (= mapRes!5693 (and tp!13174 e!104446))))

(declare-fun mapValue!5693 () ValueCell!1325)

(declare-fun mapRest!5693 () (Array (_ BitVec 32) ValueCell!1325))

(declare-fun mapKey!5693 () (_ BitVec 32))

(assert (=> mapNonEmpty!5693 (= (arr!2721 (_values!3204 thiss!1248)) (store mapRest!5693 mapKey!5693 mapValue!5693))))

(declare-fun b!159589 () Bool)

(declare-fun res!75446 () Bool)

(assert (=> b!159589 (=> (not res!75446) (not e!104444))))

(declare-datatypes ((tuple2!2874 0))(
  ( (tuple2!2875 (_1!1447 (_ BitVec 64)) (_2!1447 V!4097)) )
))
(declare-datatypes ((List!1928 0))(
  ( (Nil!1925) (Cons!1924 (h!2537 tuple2!2874) (t!6738 List!1928)) )
))
(declare-datatypes ((ListLongMap!1883 0))(
  ( (ListLongMap!1884 (toList!957 List!1928)) )
))
(declare-fun contains!987 (ListLongMap!1883 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!617 (array!5752 array!5754 (_ BitVec 32) (_ BitVec 32) V!4097 V!4097 (_ BitVec 32) Int) ListLongMap!1883)

(assert (=> b!159589 (= res!75446 (contains!987 (getCurrentListMap!617 (_keys!5022 thiss!1248) (_values!3204 thiss!1248) (mask!7775 thiss!1248) (extraKeys!2962 thiss!1248) (zeroValue!3064 thiss!1248) (minValue!3064 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3221 thiss!1248)) key!828))))

(declare-fun res!75449 () Bool)

(assert (=> start!16086 (=> (not res!75449) (not e!104444))))

(declare-fun valid!723 (LongMapFixedSize!1558) Bool)

(assert (=> start!16086 (= res!75449 (valid!723 thiss!1248))))

(assert (=> start!16086 e!104444))

(assert (=> start!16086 e!104445))

(assert (=> start!16086 true))

(declare-fun b!159583 () Bool)

(assert (=> b!159583 (= e!104446 tp_is_empty!3337)))

(declare-fun b!159590 () Bool)

(declare-fun res!75445 () Bool)

(assert (=> b!159590 (=> (not res!75445) (not e!104444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5752 (_ BitVec 32)) Bool)

(assert (=> b!159590 (= res!75445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5022 thiss!1248) (mask!7775 thiss!1248)))))

(declare-fun b!159591 () Bool)

(assert (=> b!159591 (= e!104444 false)))

(declare-fun lt!82037 () Bool)

(declare-datatypes ((List!1929 0))(
  ( (Nil!1926) (Cons!1925 (h!2538 (_ BitVec 64)) (t!6739 List!1929)) )
))
(declare-fun arrayNoDuplicates!0 (array!5752 (_ BitVec 32) List!1929) Bool)

(assert (=> b!159591 (= lt!82037 (arrayNoDuplicates!0 (_keys!5022 thiss!1248) #b00000000000000000000000000000000 Nil!1926))))

(declare-fun b!159592 () Bool)

(assert (=> b!159592 (= e!104447 (and e!104443 mapRes!5693))))

(declare-fun condMapEmpty!5693 () Bool)

(declare-fun mapDefault!5693 () ValueCell!1325)

