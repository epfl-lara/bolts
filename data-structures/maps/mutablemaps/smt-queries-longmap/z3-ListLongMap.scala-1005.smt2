; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21644 () Bool)

(assert start!21644)

(declare-fun b!216855 () Bool)

(declare-fun b_free!5781 () Bool)

(declare-fun b_next!5781 () Bool)

(assert (=> b!216855 (= b_free!5781 (not b_next!5781))))

(declare-fun tp!20477 () Bool)

(declare-fun b_and!12689 () Bool)

(assert (=> b!216855 (= tp!20477 b_and!12689)))

(declare-fun mapIsEmpty!9627 () Bool)

(declare-fun mapRes!9627 () Bool)

(assert (=> mapIsEmpty!9627 mapRes!9627))

(declare-fun res!106119 () Bool)

(declare-fun e!141093 () Bool)

(assert (=> start!21644 (=> (not res!106119) (not e!141093))))

(declare-datatypes ((V!7171 0))(
  ( (V!7172 (val!2866 Int)) )
))
(declare-datatypes ((ValueCell!2478 0))(
  ( (ValueCellFull!2478 (v!4880 V!7171)) (EmptyCell!2478) )
))
(declare-datatypes ((array!10524 0))(
  ( (array!10525 (arr!4983 (Array (_ BitVec 32) ValueCell!2478)) (size!5315 (_ BitVec 32))) )
))
(declare-datatypes ((array!10526 0))(
  ( (array!10527 (arr!4984 (Array (_ BitVec 32) (_ BitVec 64))) (size!5316 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2856 0))(
  ( (LongMapFixedSize!2857 (defaultEntry!4078 Int) (mask!9823 (_ BitVec 32)) (extraKeys!3815 (_ BitVec 32)) (zeroValue!3919 V!7171) (minValue!3919 V!7171) (_size!1477 (_ BitVec 32)) (_keys!6127 array!10526) (_values!4061 array!10524) (_vacant!1477 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2856)

(declare-fun valid!1152 (LongMapFixedSize!2856) Bool)

(assert (=> start!21644 (= res!106119 (valid!1152 thiss!1504))))

(assert (=> start!21644 e!141093))

(declare-fun e!141094 () Bool)

(assert (=> start!21644 e!141094))

(assert (=> start!21644 true))

(declare-fun b!216854 () Bool)

(declare-fun e!141095 () Bool)

(assert (=> b!216854 (= e!141093 e!141095)))

(declare-fun res!106121 () Bool)

(assert (=> b!216854 (=> (not res!106121) (not e!141095))))

(declare-datatypes ((SeekEntryResult!764 0))(
  ( (MissingZero!764 (index!5226 (_ BitVec 32))) (Found!764 (index!5227 (_ BitVec 32))) (Intermediate!764 (undefined!1576 Bool) (index!5228 (_ BitVec 32)) (x!22692 (_ BitVec 32))) (Undefined!764) (MissingVacant!764 (index!5229 (_ BitVec 32))) )
))
(declare-fun lt!111270 () SeekEntryResult!764)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216854 (= res!106121 (or (= lt!111270 (MissingZero!764 index!297)) (= lt!111270 (MissingVacant!764 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10526 (_ BitVec 32)) SeekEntryResult!764)

(assert (=> b!216854 (= lt!111270 (seekEntryOrOpen!0 key!932 (_keys!6127 thiss!1504) (mask!9823 thiss!1504)))))

(declare-fun e!141090 () Bool)

(declare-fun tp_is_empty!5643 () Bool)

(declare-fun array_inv!3285 (array!10526) Bool)

(declare-fun array_inv!3286 (array!10524) Bool)

(assert (=> b!216855 (= e!141094 (and tp!20477 tp_is_empty!5643 (array_inv!3285 (_keys!6127 thiss!1504)) (array_inv!3286 (_values!4061 thiss!1504)) e!141090))))

(declare-fun b!216856 () Bool)

(declare-fun e!141096 () Bool)

(assert (=> b!216856 (= e!141090 (and e!141096 mapRes!9627))))

(declare-fun condMapEmpty!9627 () Bool)

(declare-fun mapDefault!9627 () ValueCell!2478)

(assert (=> b!216856 (= condMapEmpty!9627 (= (arr!4983 (_values!4061 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2478)) mapDefault!9627)))))

(declare-fun b!216857 () Bool)

(declare-fun res!106123 () Bool)

(assert (=> b!216857 (=> (not res!106123) (not e!141093))))

(assert (=> b!216857 (= res!106123 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!216858 () Bool)

(declare-fun res!106124 () Bool)

(assert (=> b!216858 (=> (not res!106124) (not e!141095))))

(declare-datatypes ((tuple2!4262 0))(
  ( (tuple2!4263 (_1!2141 (_ BitVec 64)) (_2!2141 V!7171)) )
))
(declare-datatypes ((List!3189 0))(
  ( (Nil!3186) (Cons!3185 (h!3832 tuple2!4262) (t!8152 List!3189)) )
))
(declare-datatypes ((ListLongMap!3189 0))(
  ( (ListLongMap!3190 (toList!1610 List!3189)) )
))
(declare-fun contains!1445 (ListLongMap!3189 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1133 (array!10526 array!10524 (_ BitVec 32) (_ BitVec 32) V!7171 V!7171 (_ BitVec 32) Int) ListLongMap!3189)

(assert (=> b!216858 (= res!106124 (contains!1445 (getCurrentListMap!1133 (_keys!6127 thiss!1504) (_values!4061 thiss!1504) (mask!9823 thiss!1504) (extraKeys!3815 thiss!1504) (zeroValue!3919 thiss!1504) (minValue!3919 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4078 thiss!1504)) key!932))))

(declare-fun b!216859 () Bool)

(declare-fun e!141092 () Bool)

(assert (=> b!216859 (= e!141092 tp_is_empty!5643)))

(declare-fun b!216860 () Bool)

(declare-fun res!106122 () Bool)

(assert (=> b!216860 (=> (not res!106122) (not e!141095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10526 (_ BitVec 32)) Bool)

(assert (=> b!216860 (= res!106122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6127 thiss!1504) (mask!9823 thiss!1504)))))

(declare-fun b!216861 () Bool)

(assert (=> b!216861 (= e!141096 tp_is_empty!5643)))

(declare-fun b!216862 () Bool)

(declare-fun res!106125 () Bool)

(assert (=> b!216862 (=> (not res!106125) (not e!141095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!216862 (= res!106125 (validMask!0 (mask!9823 thiss!1504)))))

(declare-fun b!216863 () Bool)

(assert (=> b!216863 (= e!141095 false)))

(declare-fun lt!111271 () Bool)

(declare-datatypes ((List!3190 0))(
  ( (Nil!3187) (Cons!3186 (h!3833 (_ BitVec 64)) (t!8153 List!3190)) )
))
(declare-fun arrayNoDuplicates!0 (array!10526 (_ BitVec 32) List!3190) Bool)

(assert (=> b!216863 (= lt!111271 (arrayNoDuplicates!0 (_keys!6127 thiss!1504) #b00000000000000000000000000000000 Nil!3187))))

(declare-fun b!216864 () Bool)

(declare-fun res!106120 () Bool)

(assert (=> b!216864 (=> (not res!106120) (not e!141095))))

(assert (=> b!216864 (= res!106120 (and (= (size!5315 (_values!4061 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9823 thiss!1504))) (= (size!5316 (_keys!6127 thiss!1504)) (size!5315 (_values!4061 thiss!1504))) (bvsge (mask!9823 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3815 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3815 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9627 () Bool)

(declare-fun tp!20478 () Bool)

(assert (=> mapNonEmpty!9627 (= mapRes!9627 (and tp!20478 e!141092))))

(declare-fun mapKey!9627 () (_ BitVec 32))

(declare-fun mapValue!9627 () ValueCell!2478)

(declare-fun mapRest!9627 () (Array (_ BitVec 32) ValueCell!2478))

(assert (=> mapNonEmpty!9627 (= (arr!4983 (_values!4061 thiss!1504)) (store mapRest!9627 mapKey!9627 mapValue!9627))))

(assert (= (and start!21644 res!106119) b!216857))

(assert (= (and b!216857 res!106123) b!216854))

(assert (= (and b!216854 res!106121) b!216858))

(assert (= (and b!216858 res!106124) b!216862))

(assert (= (and b!216862 res!106125) b!216864))

(assert (= (and b!216864 res!106120) b!216860))

(assert (= (and b!216860 res!106122) b!216863))

(assert (= (and b!216856 condMapEmpty!9627) mapIsEmpty!9627))

(assert (= (and b!216856 (not condMapEmpty!9627)) mapNonEmpty!9627))

(get-info :version)

(assert (= (and mapNonEmpty!9627 ((_ is ValueCellFull!2478) mapValue!9627)) b!216859))

(assert (= (and b!216856 ((_ is ValueCellFull!2478) mapDefault!9627)) b!216861))

(assert (= b!216855 b!216856))

(assert (= start!21644 b!216855))

(declare-fun m!243407 () Bool)

(assert (=> start!21644 m!243407))

(declare-fun m!243409 () Bool)

(assert (=> b!216862 m!243409))

(declare-fun m!243411 () Bool)

(assert (=> b!216863 m!243411))

(declare-fun m!243413 () Bool)

(assert (=> b!216854 m!243413))

(declare-fun m!243415 () Bool)

(assert (=> b!216858 m!243415))

(assert (=> b!216858 m!243415))

(declare-fun m!243417 () Bool)

(assert (=> b!216858 m!243417))

(declare-fun m!243419 () Bool)

(assert (=> mapNonEmpty!9627 m!243419))

(declare-fun m!243421 () Bool)

(assert (=> b!216855 m!243421))

(declare-fun m!243423 () Bool)

(assert (=> b!216855 m!243423))

(declare-fun m!243425 () Bool)

(assert (=> b!216860 m!243425))

(check-sat (not start!21644) (not b_next!5781) (not b!216858) (not mapNonEmpty!9627) (not b!216862) (not b!216854) tp_is_empty!5643 b_and!12689 (not b!216863) (not b!216855) (not b!216860))
(check-sat b_and!12689 (not b_next!5781))
