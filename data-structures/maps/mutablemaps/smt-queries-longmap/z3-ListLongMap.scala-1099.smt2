; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22572 () Bool)

(assert start!22572)

(declare-fun b!235822 () Bool)

(declare-fun b_free!6345 () Bool)

(declare-fun b_next!6345 () Bool)

(assert (=> b!235822 (= b_free!6345 (not b_next!6345))))

(declare-fun tp!22207 () Bool)

(declare-fun b_and!13295 () Bool)

(assert (=> b!235822 (= tp!22207 b_and!13295)))

(declare-fun b!235821 () Bool)

(declare-fun res!115675 () Bool)

(declare-fun e!153157 () Bool)

(assert (=> b!235821 (=> (not res!115675) (not e!153157))))

(declare-datatypes ((V!7923 0))(
  ( (V!7924 (val!3148 Int)) )
))
(declare-datatypes ((ValueCell!2760 0))(
  ( (ValueCellFull!2760 (v!5173 V!7923)) (EmptyCell!2760) )
))
(declare-datatypes ((array!11674 0))(
  ( (array!11675 (arr!5547 (Array (_ BitVec 32) ValueCell!2760)) (size!5884 (_ BitVec 32))) )
))
(declare-datatypes ((array!11676 0))(
  ( (array!11677 (arr!5548 (Array (_ BitVec 32) (_ BitVec 64))) (size!5885 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3420 0))(
  ( (LongMapFixedSize!3421 (defaultEntry!4382 Int) (mask!10361 (_ BitVec 32)) (extraKeys!4119 (_ BitVec 32)) (zeroValue!4223 V!7923) (minValue!4223 V!7923) (_size!1759 (_ BitVec 32)) (_keys!6460 array!11676) (_values!4365 array!11674) (_vacant!1759 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3420)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4634 0))(
  ( (tuple2!4635 (_1!2327 (_ BitVec 64)) (_2!2327 V!7923)) )
))
(declare-datatypes ((List!3567 0))(
  ( (Nil!3564) (Cons!3563 (h!4215 tuple2!4634) (t!8552 List!3567)) )
))
(declare-datatypes ((ListLongMap!3561 0))(
  ( (ListLongMap!3562 (toList!1796 List!3567)) )
))
(declare-fun contains!1668 (ListLongMap!3561 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1319 (array!11676 array!11674 (_ BitVec 32) (_ BitVec 32) V!7923 V!7923 (_ BitVec 32) Int) ListLongMap!3561)

(assert (=> b!235821 (= res!115675 (contains!1668 (getCurrentListMap!1319 (_keys!6460 thiss!1504) (_values!4365 thiss!1504) (mask!10361 thiss!1504) (extraKeys!4119 thiss!1504) (zeroValue!4223 thiss!1504) (minValue!4223 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4382 thiss!1504)) key!932))))

(declare-fun e!153156 () Bool)

(declare-fun tp_is_empty!6207 () Bool)

(declare-fun e!153152 () Bool)

(declare-fun array_inv!3651 (array!11676) Bool)

(declare-fun array_inv!3652 (array!11674) Bool)

(assert (=> b!235822 (= e!153156 (and tp!22207 tp_is_empty!6207 (array_inv!3651 (_keys!6460 thiss!1504)) (array_inv!3652 (_values!4365 thiss!1504)) e!153152))))

(declare-datatypes ((SeekEntryResult!1005 0))(
  ( (MissingZero!1005 (index!6190 (_ BitVec 32))) (Found!1005 (index!6191 (_ BitVec 32))) (Intermediate!1005 (undefined!1817 Bool) (index!6192 (_ BitVec 32)) (x!23835 (_ BitVec 32))) (Undefined!1005) (MissingVacant!1005 (index!6193 (_ BitVec 32))) )
))
(declare-fun lt!119288 () SeekEntryResult!1005)

(declare-fun e!153153 () Bool)

(declare-fun b!235823 () Bool)

(assert (=> b!235823 (= e!153153 (= (select (arr!5548 (_keys!6460 thiss!1504)) (index!6191 lt!119288)) key!932))))

(declare-fun b!235824 () Bool)

(declare-fun e!153159 () Bool)

(assert (=> b!235824 (= e!153159 tp_is_empty!6207)))

(declare-fun res!115678 () Bool)

(declare-fun e!153155 () Bool)

(assert (=> start!22572 (=> (not res!115678) (not e!153155))))

(declare-fun valid!1344 (LongMapFixedSize!3420) Bool)

(assert (=> start!22572 (= res!115678 (valid!1344 thiss!1504))))

(assert (=> start!22572 e!153155))

(assert (=> start!22572 e!153156))

(assert (=> start!22572 true))

(declare-fun b!235825 () Bool)

(declare-fun res!115680 () Bool)

(assert (=> b!235825 (=> (not res!115680) (not e!153153))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!235825 (= res!115680 (inRange!0 (index!6191 lt!119288) (mask!10361 thiss!1504)))))

(declare-fun b!235826 () Bool)

(assert (=> b!235826 (= e!153157 (not false))))

(assert (=> b!235826 e!153153))

(declare-fun res!115679 () Bool)

(assert (=> b!235826 (=> (not res!115679) (not e!153153))))

(get-info :version)

(assert (=> b!235826 (= res!115679 ((_ is Found!1005) lt!119288))))

(declare-datatypes ((Unit!7261 0))(
  ( (Unit!7262) )
))
(declare-fun lt!119287 () Unit!7261)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!317 (array!11676 array!11674 (_ BitVec 32) (_ BitVec 32) V!7923 V!7923 (_ BitVec 64) Int) Unit!7261)

(assert (=> b!235826 (= lt!119287 (lemmaInListMapThenSeekEntryOrOpenFindsIt!317 (_keys!6460 thiss!1504) (_values!4365 thiss!1504) (mask!10361 thiss!1504) (extraKeys!4119 thiss!1504) (zeroValue!4223 thiss!1504) (minValue!4223 thiss!1504) key!932 (defaultEntry!4382 thiss!1504)))))

(declare-fun b!235827 () Bool)

(declare-fun res!115677 () Bool)

(assert (=> b!235827 (=> (not res!115677) (not e!153155))))

(assert (=> b!235827 (= res!115677 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235828 () Bool)

(assert (=> b!235828 (= e!153155 e!153157)))

(declare-fun res!115676 () Bool)

(assert (=> b!235828 (=> (not res!115676) (not e!153157))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235828 (= res!115676 (or (= lt!119288 (MissingZero!1005 index!297)) (= lt!119288 (MissingVacant!1005 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11676 (_ BitVec 32)) SeekEntryResult!1005)

(assert (=> b!235828 (= lt!119288 (seekEntryOrOpen!0 key!932 (_keys!6460 thiss!1504) (mask!10361 thiss!1504)))))

(declare-fun b!235829 () Bool)

(declare-fun e!153154 () Bool)

(declare-fun mapRes!10511 () Bool)

(assert (=> b!235829 (= e!153152 (and e!153154 mapRes!10511))))

(declare-fun condMapEmpty!10511 () Bool)

(declare-fun mapDefault!10511 () ValueCell!2760)

(assert (=> b!235829 (= condMapEmpty!10511 (= (arr!5547 (_values!4365 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2760)) mapDefault!10511)))))

(declare-fun mapNonEmpty!10511 () Bool)

(declare-fun tp!22208 () Bool)

(assert (=> mapNonEmpty!10511 (= mapRes!10511 (and tp!22208 e!153159))))

(declare-fun mapKey!10511 () (_ BitVec 32))

(declare-fun mapRest!10511 () (Array (_ BitVec 32) ValueCell!2760))

(declare-fun mapValue!10511 () ValueCell!2760)

(assert (=> mapNonEmpty!10511 (= (arr!5547 (_values!4365 thiss!1504)) (store mapRest!10511 mapKey!10511 mapValue!10511))))

(declare-fun mapIsEmpty!10511 () Bool)

(assert (=> mapIsEmpty!10511 mapRes!10511))

(declare-fun b!235830 () Bool)

(assert (=> b!235830 (= e!153154 tp_is_empty!6207)))

(assert (= (and start!22572 res!115678) b!235827))

(assert (= (and b!235827 res!115677) b!235828))

(assert (= (and b!235828 res!115676) b!235821))

(assert (= (and b!235821 res!115675) b!235826))

(assert (= (and b!235826 res!115679) b!235825))

(assert (= (and b!235825 res!115680) b!235823))

(assert (= (and b!235829 condMapEmpty!10511) mapIsEmpty!10511))

(assert (= (and b!235829 (not condMapEmpty!10511)) mapNonEmpty!10511))

(assert (= (and mapNonEmpty!10511 ((_ is ValueCellFull!2760) mapValue!10511)) b!235824))

(assert (= (and b!235829 ((_ is ValueCellFull!2760) mapDefault!10511)) b!235830))

(assert (= b!235822 b!235829))

(assert (= start!22572 b!235822))

(declare-fun m!256815 () Bool)

(assert (=> b!235828 m!256815))

(declare-fun m!256817 () Bool)

(assert (=> b!235826 m!256817))

(declare-fun m!256819 () Bool)

(assert (=> b!235821 m!256819))

(assert (=> b!235821 m!256819))

(declare-fun m!256821 () Bool)

(assert (=> b!235821 m!256821))

(declare-fun m!256823 () Bool)

(assert (=> mapNonEmpty!10511 m!256823))

(declare-fun m!256825 () Bool)

(assert (=> b!235825 m!256825))

(declare-fun m!256827 () Bool)

(assert (=> b!235822 m!256827))

(declare-fun m!256829 () Bool)

(assert (=> b!235822 m!256829))

(declare-fun m!256831 () Bool)

(assert (=> b!235823 m!256831))

(declare-fun m!256833 () Bool)

(assert (=> start!22572 m!256833))

(check-sat (not b_next!6345) (not b!235821) (not start!22572) tp_is_empty!6207 (not b!235826) (not b!235828) (not b!235825) (not mapNonEmpty!10511) b_and!13295 (not b!235822))
(check-sat b_and!13295 (not b_next!6345))
