; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21650 () Bool)

(assert start!21650)

(declare-fun b!216960 () Bool)

(declare-fun b_free!5787 () Bool)

(declare-fun b_next!5787 () Bool)

(assert (=> b!216960 (= b_free!5787 (not b_next!5787))))

(declare-fun tp!20496 () Bool)

(declare-fun b_and!12695 () Bool)

(assert (=> b!216960 (= tp!20496 b_and!12695)))

(declare-fun b!216953 () Bool)

(declare-fun res!106187 () Bool)

(declare-fun e!141153 () Bool)

(assert (=> b!216953 (=> (not res!106187) (not e!141153))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!216953 (= res!106187 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216955 () Bool)

(declare-fun res!106184 () Bool)

(declare-fun e!141158 () Bool)

(assert (=> b!216955 (=> (not res!106184) (not e!141158))))

(declare-datatypes ((V!7179 0))(
  ( (V!7180 (val!2869 Int)) )
))
(declare-datatypes ((ValueCell!2481 0))(
  ( (ValueCellFull!2481 (v!4883 V!7179)) (EmptyCell!2481) )
))
(declare-datatypes ((array!10536 0))(
  ( (array!10537 (arr!4989 (Array (_ BitVec 32) ValueCell!2481)) (size!5321 (_ BitVec 32))) )
))
(declare-datatypes ((array!10538 0))(
  ( (array!10539 (arr!4990 (Array (_ BitVec 32) (_ BitVec 64))) (size!5322 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2862 0))(
  ( (LongMapFixedSize!2863 (defaultEntry!4081 Int) (mask!9828 (_ BitVec 32)) (extraKeys!3818 (_ BitVec 32)) (zeroValue!3922 V!7179) (minValue!3922 V!7179) (_size!1480 (_ BitVec 32)) (_keys!6130 array!10538) (_values!4064 array!10536) (_vacant!1480 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2862)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216955 (= res!106184 (validMask!0 (mask!9828 thiss!1504)))))

(declare-fun b!216956 () Bool)

(declare-fun res!106188 () Bool)

(assert (=> b!216956 (=> (not res!106188) (not e!141158))))

(declare-datatypes ((tuple2!4264 0))(
  ( (tuple2!4265 (_1!2142 (_ BitVec 64)) (_2!2142 V!7179)) )
))
(declare-datatypes ((List!3191 0))(
  ( (Nil!3188) (Cons!3187 (h!3834 tuple2!4264) (t!8154 List!3191)) )
))
(declare-datatypes ((ListLongMap!3191 0))(
  ( (ListLongMap!3192 (toList!1611 List!3191)) )
))
(declare-fun contains!1446 (ListLongMap!3191 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1134 (array!10538 array!10536 (_ BitVec 32) (_ BitVec 32) V!7179 V!7179 (_ BitVec 32) Int) ListLongMap!3191)

(assert (=> b!216956 (= res!106188 (contains!1446 (getCurrentListMap!1134 (_keys!6130 thiss!1504) (_values!4064 thiss!1504) (mask!9828 thiss!1504) (extraKeys!3818 thiss!1504) (zeroValue!3922 thiss!1504) (minValue!3922 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4081 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!9636 () Bool)

(declare-fun mapRes!9636 () Bool)

(assert (=> mapIsEmpty!9636 mapRes!9636))

(declare-fun b!216957 () Bool)

(declare-fun e!141155 () Bool)

(declare-fun tp_is_empty!5649 () Bool)

(assert (=> b!216957 (= e!141155 tp_is_empty!5649)))

(declare-fun mapNonEmpty!9636 () Bool)

(declare-fun tp!20495 () Bool)

(assert (=> mapNonEmpty!9636 (= mapRes!9636 (and tp!20495 e!141155))))

(declare-fun mapKey!9636 () (_ BitVec 32))

(declare-fun mapValue!9636 () ValueCell!2481)

(declare-fun mapRest!9636 () (Array (_ BitVec 32) ValueCell!2481))

(assert (=> mapNonEmpty!9636 (= (arr!4989 (_values!4064 thiss!1504)) (store mapRest!9636 mapKey!9636 mapValue!9636))))

(declare-fun b!216958 () Bool)

(assert (=> b!216958 (= e!141158 false)))

(declare-fun lt!111288 () Bool)

(declare-datatypes ((List!3192 0))(
  ( (Nil!3189) (Cons!3188 (h!3835 (_ BitVec 64)) (t!8155 List!3192)) )
))
(declare-fun arrayNoDuplicates!0 (array!10538 (_ BitVec 32) List!3192) Bool)

(assert (=> b!216958 (= lt!111288 (arrayNoDuplicates!0 (_keys!6130 thiss!1504) #b00000000000000000000000000000000 Nil!3189))))

(declare-fun b!216959 () Bool)

(declare-fun e!141156 () Bool)

(assert (=> b!216959 (= e!141156 tp_is_empty!5649)))

(declare-fun e!141154 () Bool)

(declare-fun e!141157 () Bool)

(declare-fun array_inv!3291 (array!10538) Bool)

(declare-fun array_inv!3292 (array!10536) Bool)

(assert (=> b!216960 (= e!141157 (and tp!20496 tp_is_empty!5649 (array_inv!3291 (_keys!6130 thiss!1504)) (array_inv!3292 (_values!4064 thiss!1504)) e!141154))))

(declare-fun b!216961 () Bool)

(assert (=> b!216961 (= e!141154 (and e!141156 mapRes!9636))))

(declare-fun condMapEmpty!9636 () Bool)

(declare-fun mapDefault!9636 () ValueCell!2481)

(assert (=> b!216961 (= condMapEmpty!9636 (= (arr!4989 (_values!4064 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2481)) mapDefault!9636)))))

(declare-fun b!216962 () Bool)

(declare-fun res!106182 () Bool)

(assert (=> b!216962 (=> (not res!106182) (not e!141158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10538 (_ BitVec 32)) Bool)

(assert (=> b!216962 (= res!106182 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6130 thiss!1504) (mask!9828 thiss!1504)))))

(declare-fun b!216963 () Bool)

(assert (=> b!216963 (= e!141153 e!141158)))

(declare-fun res!106183 () Bool)

(assert (=> b!216963 (=> (not res!106183) (not e!141158))))

(declare-datatypes ((SeekEntryResult!767 0))(
  ( (MissingZero!767 (index!5238 (_ BitVec 32))) (Found!767 (index!5239 (_ BitVec 32))) (Intermediate!767 (undefined!1579 Bool) (index!5240 (_ BitVec 32)) (x!22703 (_ BitVec 32))) (Undefined!767) (MissingVacant!767 (index!5241 (_ BitVec 32))) )
))
(declare-fun lt!111289 () SeekEntryResult!767)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216963 (= res!106183 (or (= lt!111289 (MissingZero!767 index!297)) (= lt!111289 (MissingVacant!767 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10538 (_ BitVec 32)) SeekEntryResult!767)

(assert (=> b!216963 (= lt!111289 (seekEntryOrOpen!0 key!932 (_keys!6130 thiss!1504) (mask!9828 thiss!1504)))))

(declare-fun res!106185 () Bool)

(assert (=> start!21650 (=> (not res!106185) (not e!141153))))

(declare-fun valid!1155 (LongMapFixedSize!2862) Bool)

(assert (=> start!21650 (= res!106185 (valid!1155 thiss!1504))))

(assert (=> start!21650 e!141153))

(assert (=> start!21650 e!141157))

(assert (=> start!21650 true))

(declare-fun b!216954 () Bool)

(declare-fun res!106186 () Bool)

(assert (=> b!216954 (=> (not res!106186) (not e!141158))))

(assert (=> b!216954 (= res!106186 (and (= (size!5321 (_values!4064 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9828 thiss!1504))) (= (size!5322 (_keys!6130 thiss!1504)) (size!5321 (_values!4064 thiss!1504))) (bvsge (mask!9828 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3818 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3818 thiss!1504) #b00000000000000000000000000000011)))))

(assert (= (and start!21650 res!106185) b!216953))

(assert (= (and b!216953 res!106187) b!216963))

(assert (= (and b!216963 res!106183) b!216956))

(assert (= (and b!216956 res!106188) b!216955))

(assert (= (and b!216955 res!106184) b!216954))

(assert (= (and b!216954 res!106186) b!216962))

(assert (= (and b!216962 res!106182) b!216958))

(assert (= (and b!216961 condMapEmpty!9636) mapIsEmpty!9636))

(assert (= (and b!216961 (not condMapEmpty!9636)) mapNonEmpty!9636))

(get-info :version)

(assert (= (and mapNonEmpty!9636 ((_ is ValueCellFull!2481) mapValue!9636)) b!216957))

(assert (= (and b!216961 ((_ is ValueCellFull!2481) mapDefault!9636)) b!216959))

(assert (= b!216960 b!216961))

(assert (= start!21650 b!216960))

(declare-fun m!243467 () Bool)

(assert (=> b!216955 m!243467))

(declare-fun m!243469 () Bool)

(assert (=> b!216958 m!243469))

(declare-fun m!243471 () Bool)

(assert (=> b!216962 m!243471))

(declare-fun m!243473 () Bool)

(assert (=> b!216960 m!243473))

(declare-fun m!243475 () Bool)

(assert (=> b!216960 m!243475))

(declare-fun m!243477 () Bool)

(assert (=> b!216963 m!243477))

(declare-fun m!243479 () Bool)

(assert (=> mapNonEmpty!9636 m!243479))

(declare-fun m!243481 () Bool)

(assert (=> b!216956 m!243481))

(assert (=> b!216956 m!243481))

(declare-fun m!243483 () Bool)

(assert (=> b!216956 m!243483))

(declare-fun m!243485 () Bool)

(assert (=> start!21650 m!243485))

(check-sat (not mapNonEmpty!9636) (not b!216963) (not b!216956) b_and!12695 (not b!216962) (not b_next!5787) tp_is_empty!5649 (not b!216960) (not start!21650) (not b!216955) (not b!216958))
(check-sat b_and!12695 (not b_next!5787))
