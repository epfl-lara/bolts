; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16274 () Bool)

(assert start!16274)

(declare-fun b!162202 () Bool)

(declare-fun b_free!3723 () Bool)

(declare-fun b_next!3723 () Bool)

(assert (=> b!162202 (= b_free!3723 (not b_next!3723))))

(declare-fun tp!13739 () Bool)

(declare-fun b_and!10155 () Bool)

(assert (=> b!162202 (= tp!13739 b_and!10155)))

(declare-fun b!162201 () Bool)

(declare-fun e!106244 () Bool)

(declare-fun tp_is_empty!3525 () Bool)

(assert (=> b!162201 (= e!106244 tp_is_empty!3525)))

(declare-fun e!106243 () Bool)

(declare-fun e!106242 () Bool)

(declare-datatypes ((V!4347 0))(
  ( (V!4348 (val!1807 Int)) )
))
(declare-datatypes ((ValueCell!1419 0))(
  ( (ValueCellFull!1419 (v!3668 V!4347)) (EmptyCell!1419) )
))
(declare-datatypes ((array!6128 0))(
  ( (array!6129 (arr!2908 (Array (_ BitVec 32) (_ BitVec 64))) (size!3192 (_ BitVec 32))) )
))
(declare-datatypes ((array!6130 0))(
  ( (array!6131 (arr!2909 (Array (_ BitVec 32) ValueCell!1419)) (size!3193 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1746 0))(
  ( (LongMapFixedSize!1747 (defaultEntry!3315 Int) (mask!7931 (_ BitVec 32)) (extraKeys!3056 (_ BitVec 32)) (zeroValue!3158 V!4347) (minValue!3158 V!4347) (_size!922 (_ BitVec 32)) (_keys!5116 array!6128) (_values!3298 array!6130) (_vacant!922 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1746)

(declare-fun array_inv!1851 (array!6128) Bool)

(declare-fun array_inv!1852 (array!6130) Bool)

(assert (=> b!162202 (= e!106242 (and tp!13739 tp_is_empty!3525 (array_inv!1851 (_keys!5116 thiss!1248)) (array_inv!1852 (_values!3298 thiss!1248)) e!106243))))

(declare-fun b!162203 () Bool)

(declare-fun mapRes!5975 () Bool)

(assert (=> b!162203 (= e!106243 (and e!106244 mapRes!5975))))

(declare-fun condMapEmpty!5975 () Bool)

(declare-fun mapDefault!5975 () ValueCell!1419)

(assert (=> b!162203 (= condMapEmpty!5975 (= (arr!2909 (_values!3298 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1419)) mapDefault!5975)))))

(declare-fun mapIsEmpty!5975 () Bool)

(assert (=> mapIsEmpty!5975 mapRes!5975))

(declare-fun b!162204 () Bool)

(declare-fun e!106245 () Bool)

(assert (=> b!162204 (= e!106245 tp_is_empty!3525)))

(declare-fun mapNonEmpty!5975 () Bool)

(declare-fun tp!13738 () Bool)

(assert (=> mapNonEmpty!5975 (= mapRes!5975 (and tp!13738 e!106245))))

(declare-fun mapKey!5975 () (_ BitVec 32))

(declare-fun mapValue!5975 () ValueCell!1419)

(declare-fun mapRest!5975 () (Array (_ BitVec 32) ValueCell!1419))

(assert (=> mapNonEmpty!5975 (= (arr!2909 (_values!3298 thiss!1248)) (store mapRest!5975 mapKey!5975 mapValue!5975))))

(declare-fun b!162206 () Bool)

(declare-fun e!106246 () Bool)

(declare-datatypes ((SeekEntryResult!387 0))(
  ( (MissingZero!387 (index!3716 (_ BitVec 32))) (Found!387 (index!3717 (_ BitVec 32))) (Intermediate!387 (undefined!1199 Bool) (index!3718 (_ BitVec 32)) (x!17947 (_ BitVec 32))) (Undefined!387) (MissingVacant!387 (index!3719 (_ BitVec 32))) )
))
(declare-fun lt!82427 () SeekEntryResult!387)

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(assert (=> b!162206 (= e!106246 (and (not ((_ is Undefined!387) lt!82427)) (not ((_ is MissingVacant!387) lt!82427)) ((_ is MissingZero!387) lt!82427) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6128 (_ BitVec 32)) SeekEntryResult!387)

(assert (=> b!162206 (= lt!82427 (seekEntryOrOpen!0 key!828 (_keys!5116 thiss!1248) (mask!7931 thiss!1248)))))

(declare-fun res!76843 () Bool)

(assert (=> start!16274 (=> (not res!76843) (not e!106246))))

(declare-fun valid!783 (LongMapFixedSize!1746) Bool)

(assert (=> start!16274 (= res!76843 (valid!783 thiss!1248))))

(assert (=> start!16274 e!106246))

(assert (=> start!16274 e!106242))

(assert (=> start!16274 true))

(declare-fun b!162205 () Bool)

(declare-fun res!76844 () Bool)

(assert (=> b!162205 (=> (not res!76844) (not e!106246))))

(assert (=> b!162205 (= res!76844 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!16274 res!76843) b!162205))

(assert (= (and b!162205 res!76844) b!162206))

(assert (= (and b!162203 condMapEmpty!5975) mapIsEmpty!5975))

(assert (= (and b!162203 (not condMapEmpty!5975)) mapNonEmpty!5975))

(assert (= (and mapNonEmpty!5975 ((_ is ValueCellFull!1419) mapValue!5975)) b!162204))

(assert (= (and b!162203 ((_ is ValueCellFull!1419) mapDefault!5975)) b!162201))

(assert (= b!162202 b!162203))

(assert (= start!16274 b!162202))

(declare-fun m!193419 () Bool)

(assert (=> b!162202 m!193419))

(declare-fun m!193421 () Bool)

(assert (=> b!162202 m!193421))

(declare-fun m!193423 () Bool)

(assert (=> mapNonEmpty!5975 m!193423))

(declare-fun m!193425 () Bool)

(assert (=> b!162206 m!193425))

(declare-fun m!193427 () Bool)

(assert (=> start!16274 m!193427))

(check-sat tp_is_empty!3525 (not b_next!3723) (not mapNonEmpty!5975) b_and!10155 (not b!162202) (not start!16274) (not b!162206))
(check-sat b_and!10155 (not b_next!3723))
