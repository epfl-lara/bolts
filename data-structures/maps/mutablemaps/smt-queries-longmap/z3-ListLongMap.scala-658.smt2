; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16310 () Bool)

(assert start!16310)

(declare-fun b!162596 () Bool)

(declare-fun b_free!3759 () Bool)

(declare-fun b_next!3759 () Bool)

(assert (=> b!162596 (= b_free!3759 (not b_next!3759))))

(declare-fun tp!13846 () Bool)

(declare-fun b_and!10191 () Bool)

(assert (=> b!162596 (= tp!13846 b_and!10191)))

(declare-fun b!162593 () Bool)

(declare-fun e!106622 () Bool)

(assert (=> b!162593 (= e!106622 false)))

(declare-fun lt!82531 () Bool)

(declare-datatypes ((V!4395 0))(
  ( (V!4396 (val!1825 Int)) )
))
(declare-datatypes ((ValueCell!1437 0))(
  ( (ValueCellFull!1437 (v!3686 V!4395)) (EmptyCell!1437) )
))
(declare-datatypes ((array!6200 0))(
  ( (array!6201 (arr!2944 (Array (_ BitVec 32) (_ BitVec 64))) (size!3228 (_ BitVec 32))) )
))
(declare-datatypes ((array!6202 0))(
  ( (array!6203 (arr!2945 (Array (_ BitVec 32) ValueCell!1437)) (size!3229 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1782 0))(
  ( (LongMapFixedSize!1783 (defaultEntry!3333 Int) (mask!7961 (_ BitVec 32)) (extraKeys!3074 (_ BitVec 32)) (zeroValue!3176 V!4395) (minValue!3176 V!4395) (_size!940 (_ BitVec 32)) (_keys!5134 array!6200) (_values!3316 array!6202) (_vacant!940 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1782)

(declare-datatypes ((SeekEntryResult!397 0))(
  ( (MissingZero!397 (index!3756 (_ BitVec 32))) (Found!397 (index!3757 (_ BitVec 32))) (Intermediate!397 (undefined!1209 Bool) (index!3758 (_ BitVec 32)) (x!18005 (_ BitVec 32))) (Undefined!397) (MissingVacant!397 (index!3759 (_ BitVec 32))) )
))
(declare-fun lt!82532 () SeekEntryResult!397)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun v!309 () V!4395)

(declare-fun valid!795 (LongMapFixedSize!1782) Bool)

(declare-datatypes ((tuple2!3002 0))(
  ( (tuple2!3003 (_1!1511 Bool) (_2!1511 LongMapFixedSize!1782)) )
))
(declare-fun updateHelperNewKey!86 (LongMapFixedSize!1782 (_ BitVec 64) V!4395 (_ BitVec 32)) tuple2!3002)

(assert (=> b!162593 (= lt!82531 (valid!795 (_2!1511 (updateHelperNewKey!86 thiss!1248 key!828 v!309 (index!3756 lt!82532)))))))

(declare-fun b!162594 () Bool)

(declare-fun e!106619 () Bool)

(declare-fun e!106620 () Bool)

(declare-fun mapRes!6029 () Bool)

(assert (=> b!162594 (= e!106619 (and e!106620 mapRes!6029))))

(declare-fun condMapEmpty!6029 () Bool)

(declare-fun mapDefault!6029 () ValueCell!1437)

(assert (=> b!162594 (= condMapEmpty!6029 (= (arr!2945 (_values!3316 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1437)) mapDefault!6029)))))

(declare-fun b!162595 () Bool)

(declare-fun res!77021 () Bool)

(declare-fun e!106618 () Bool)

(assert (=> b!162595 (=> (not res!77021) (not e!106618))))

(assert (=> b!162595 (= res!77021 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!6029 () Bool)

(assert (=> mapIsEmpty!6029 mapRes!6029))

(declare-fun e!106617 () Bool)

(declare-fun tp_is_empty!3561 () Bool)

(declare-fun array_inv!1873 (array!6200) Bool)

(declare-fun array_inv!1874 (array!6202) Bool)

(assert (=> b!162596 (= e!106617 (and tp!13846 tp_is_empty!3561 (array_inv!1873 (_keys!5134 thiss!1248)) (array_inv!1874 (_values!3316 thiss!1248)) e!106619))))

(declare-fun res!77020 () Bool)

(assert (=> start!16310 (=> (not res!77020) (not e!106618))))

(assert (=> start!16310 (= res!77020 (valid!795 thiss!1248))))

(assert (=> start!16310 e!106618))

(assert (=> start!16310 e!106617))

(assert (=> start!16310 true))

(assert (=> start!16310 tp_is_empty!3561))

(declare-fun b!162597 () Bool)

(assert (=> b!162597 (= e!106620 tp_is_empty!3561)))

(declare-fun b!162598 () Bool)

(assert (=> b!162598 (= e!106618 e!106622)))

(declare-fun res!77019 () Bool)

(assert (=> b!162598 (=> (not res!77019) (not e!106622))))

(get-info :version)

(assert (=> b!162598 (= res!77019 (and (not ((_ is Undefined!397) lt!82532)) (not ((_ is MissingVacant!397) lt!82532)) ((_ is MissingZero!397) lt!82532)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6200 (_ BitVec 32)) SeekEntryResult!397)

(assert (=> b!162598 (= lt!82532 (seekEntryOrOpen!0 key!828 (_keys!5134 thiss!1248) (mask!7961 thiss!1248)))))

(declare-fun mapNonEmpty!6029 () Bool)

(declare-fun tp!13847 () Bool)

(declare-fun e!106621 () Bool)

(assert (=> mapNonEmpty!6029 (= mapRes!6029 (and tp!13847 e!106621))))

(declare-fun mapKey!6029 () (_ BitVec 32))

(declare-fun mapValue!6029 () ValueCell!1437)

(declare-fun mapRest!6029 () (Array (_ BitVec 32) ValueCell!1437))

(assert (=> mapNonEmpty!6029 (= (arr!2945 (_values!3316 thiss!1248)) (store mapRest!6029 mapKey!6029 mapValue!6029))))

(declare-fun b!162599 () Bool)

(assert (=> b!162599 (= e!106621 tp_is_empty!3561)))

(assert (= (and start!16310 res!77020) b!162595))

(assert (= (and b!162595 res!77021) b!162598))

(assert (= (and b!162598 res!77019) b!162593))

(assert (= (and b!162594 condMapEmpty!6029) mapIsEmpty!6029))

(assert (= (and b!162594 (not condMapEmpty!6029)) mapNonEmpty!6029))

(assert (= (and mapNonEmpty!6029 ((_ is ValueCellFull!1437) mapValue!6029)) b!162599))

(assert (= (and b!162594 ((_ is ValueCellFull!1437) mapDefault!6029)) b!162597))

(assert (= b!162596 b!162594))

(assert (= start!16310 b!162596))

(declare-fun m!193663 () Bool)

(assert (=> b!162596 m!193663))

(declare-fun m!193665 () Bool)

(assert (=> b!162596 m!193665))

(declare-fun m!193667 () Bool)

(assert (=> mapNonEmpty!6029 m!193667))

(declare-fun m!193669 () Bool)

(assert (=> b!162598 m!193669))

(declare-fun m!193671 () Bool)

(assert (=> start!16310 m!193671))

(declare-fun m!193673 () Bool)

(assert (=> b!162593 m!193673))

(declare-fun m!193675 () Bool)

(assert (=> b!162593 m!193675))

(check-sat b_and!10191 (not b!162598) (not mapNonEmpty!6029) tp_is_empty!3561 (not b_next!3759) (not b!162596) (not b!162593) (not start!16310))
(check-sat b_and!10191 (not b_next!3759))
