; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22840 () Bool)

(assert start!22840)

(declare-fun b!237803 () Bool)

(declare-fun b_free!6385 () Bool)

(declare-fun b_next!6385 () Bool)

(assert (=> b!237803 (= b_free!6385 (not b_next!6385))))

(declare-fun tp!22349 () Bool)

(declare-fun b_and!13363 () Bool)

(assert (=> b!237803 (= tp!22349 b_and!13363)))

(declare-fun b!237796 () Bool)

(declare-fun e!154422 () Bool)

(declare-fun tp_is_empty!6247 () Bool)

(assert (=> b!237796 (= e!154422 tp_is_empty!6247)))

(declare-fun b!237797 () Bool)

(declare-fun res!116542 () Bool)

(declare-fun e!154424 () Bool)

(assert (=> b!237797 (=> (not res!116542) (not e!154424))))

(declare-datatypes ((V!7977 0))(
  ( (V!7978 (val!3168 Int)) )
))
(declare-datatypes ((ValueCell!2780 0))(
  ( (ValueCellFull!2780 (v!5199 V!7977)) (EmptyCell!2780) )
))
(declare-datatypes ((array!11766 0))(
  ( (array!11767 (arr!5587 (Array (_ BitVec 32) ValueCell!2780)) (size!5928 (_ BitVec 32))) )
))
(declare-datatypes ((array!11768 0))(
  ( (array!11769 (arr!5588 (Array (_ BitVec 32) (_ BitVec 64))) (size!5929 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3460 0))(
  ( (LongMapFixedSize!3461 (defaultEntry!4412 Int) (mask!10433 (_ BitVec 32)) (extraKeys!4149 (_ BitVec 32)) (zeroValue!4253 V!7977) (minValue!4253 V!7977) (_size!1779 (_ BitVec 32)) (_keys!6508 array!11768) (_values!4395 array!11766) (_vacant!1779 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3460)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!237797 (= res!116542 (validMask!0 (mask!10433 thiss!1504)))))

(declare-fun b!237798 () Bool)

(declare-fun res!116543 () Bool)

(assert (=> b!237798 (=> (not res!116543) (not e!154424))))

(assert (=> b!237798 (= res!116543 (and (= (size!5928 (_values!4395 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10433 thiss!1504))) (= (size!5929 (_keys!6508 thiss!1504)) (size!5928 (_values!4395 thiss!1504))) (bvsge (mask!10433 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4149 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4149 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!237799 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11768 (_ BitVec 32)) Bool)

(assert (=> b!237799 (= e!154424 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6508 thiss!1504) (mask!10433 thiss!1504))))))

(declare-fun mapIsEmpty!10593 () Bool)

(declare-fun mapRes!10593 () Bool)

(assert (=> mapIsEmpty!10593 mapRes!10593))

(declare-fun b!237801 () Bool)

(declare-fun e!154421 () Bool)

(assert (=> b!237801 (= e!154421 e!154424)))

(declare-fun res!116541 () Bool)

(assert (=> b!237801 (=> (not res!116541) (not e!154424))))

(declare-datatypes ((SeekEntryResult!1021 0))(
  ( (MissingZero!1021 (index!6254 (_ BitVec 32))) (Found!1021 (index!6255 (_ BitVec 32))) (Intermediate!1021 (undefined!1833 Bool) (index!6256 (_ BitVec 32)) (x!23999 (_ BitVec 32))) (Undefined!1021) (MissingVacant!1021 (index!6257 (_ BitVec 32))) )
))
(declare-fun lt!120313 () SeekEntryResult!1021)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!237801 (= res!116541 (or (= lt!120313 (MissingZero!1021 index!297)) (= lt!120313 (MissingVacant!1021 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11768 (_ BitVec 32)) SeekEntryResult!1021)

(assert (=> b!237801 (= lt!120313 (seekEntryOrOpen!0 key!932 (_keys!6508 thiss!1504) (mask!10433 thiss!1504)))))

(declare-fun b!237802 () Bool)

(declare-fun e!154420 () Bool)

(assert (=> b!237802 (= e!154420 tp_is_empty!6247)))

(declare-fun e!154423 () Bool)

(declare-fun e!154418 () Bool)

(declare-fun array_inv!3681 (array!11768) Bool)

(declare-fun array_inv!3682 (array!11766) Bool)

(assert (=> b!237803 (= e!154423 (and tp!22349 tp_is_empty!6247 (array_inv!3681 (_keys!6508 thiss!1504)) (array_inv!3682 (_values!4395 thiss!1504)) e!154418))))

(declare-fun mapNonEmpty!10593 () Bool)

(declare-fun tp!22350 () Bool)

(assert (=> mapNonEmpty!10593 (= mapRes!10593 (and tp!22350 e!154420))))

(declare-fun mapValue!10593 () ValueCell!2780)

(declare-fun mapRest!10593 () (Array (_ BitVec 32) ValueCell!2780))

(declare-fun mapKey!10593 () (_ BitVec 32))

(assert (=> mapNonEmpty!10593 (= (arr!5587 (_values!4395 thiss!1504)) (store mapRest!10593 mapKey!10593 mapValue!10593))))

(declare-fun b!237800 () Bool)

(declare-fun res!116538 () Bool)

(assert (=> b!237800 (=> (not res!116538) (not e!154421))))

(assert (=> b!237800 (= res!116538 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!116539 () Bool)

(assert (=> start!22840 (=> (not res!116539) (not e!154421))))

(declare-fun valid!1358 (LongMapFixedSize!3460) Bool)

(assert (=> start!22840 (= res!116539 (valid!1358 thiss!1504))))

(assert (=> start!22840 e!154421))

(assert (=> start!22840 e!154423))

(assert (=> start!22840 true))

(declare-fun b!237804 () Bool)

(declare-fun res!116540 () Bool)

(assert (=> b!237804 (=> (not res!116540) (not e!154424))))

(declare-datatypes ((tuple2!4666 0))(
  ( (tuple2!4667 (_1!2343 (_ BitVec 64)) (_2!2343 V!7977)) )
))
(declare-datatypes ((List!3589 0))(
  ( (Nil!3586) (Cons!3585 (h!4241 tuple2!4666) (t!8586 List!3589)) )
))
(declare-datatypes ((ListLongMap!3593 0))(
  ( (ListLongMap!3594 (toList!1812 List!3589)) )
))
(declare-fun contains!1692 (ListLongMap!3593 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1335 (array!11768 array!11766 (_ BitVec 32) (_ BitVec 32) V!7977 V!7977 (_ BitVec 32) Int) ListLongMap!3593)

(assert (=> b!237804 (= res!116540 (not (contains!1692 (getCurrentListMap!1335 (_keys!6508 thiss!1504) (_values!4395 thiss!1504) (mask!10433 thiss!1504) (extraKeys!4149 thiss!1504) (zeroValue!4253 thiss!1504) (minValue!4253 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4412 thiss!1504)) key!932)))))

(declare-fun b!237805 () Bool)

(assert (=> b!237805 (= e!154418 (and e!154422 mapRes!10593))))

(declare-fun condMapEmpty!10593 () Bool)

(declare-fun mapDefault!10593 () ValueCell!2780)

