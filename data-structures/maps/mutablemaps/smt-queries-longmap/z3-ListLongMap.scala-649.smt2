; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16256 () Bool)

(assert start!16256)

(declare-fun b!162031 () Bool)

(declare-fun b_free!3705 () Bool)

(declare-fun b_next!3705 () Bool)

(assert (=> b!162031 (= b_free!3705 (not b_next!3705))))

(declare-fun tp!13684 () Bool)

(declare-fun b_and!10137 () Bool)

(assert (=> b!162031 (= tp!13684 b_and!10137)))

(declare-fun mapNonEmpty!5948 () Bool)

(declare-fun mapRes!5948 () Bool)

(declare-fun tp!13685 () Bool)

(declare-fun e!106072 () Bool)

(assert (=> mapNonEmpty!5948 (= mapRes!5948 (and tp!13685 e!106072))))

(declare-fun mapKey!5948 () (_ BitVec 32))

(declare-datatypes ((V!4323 0))(
  ( (V!4324 (val!1798 Int)) )
))
(declare-datatypes ((ValueCell!1410 0))(
  ( (ValueCellFull!1410 (v!3659 V!4323)) (EmptyCell!1410) )
))
(declare-fun mapRest!5948 () (Array (_ BitVec 32) ValueCell!1410))

(declare-datatypes ((array!6092 0))(
  ( (array!6093 (arr!2890 (Array (_ BitVec 32) (_ BitVec 64))) (size!3174 (_ BitVec 32))) )
))
(declare-datatypes ((array!6094 0))(
  ( (array!6095 (arr!2891 (Array (_ BitVec 32) ValueCell!1410)) (size!3175 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1728 0))(
  ( (LongMapFixedSize!1729 (defaultEntry!3306 Int) (mask!7916 (_ BitVec 32)) (extraKeys!3047 (_ BitVec 32)) (zeroValue!3149 V!4323) (minValue!3149 V!4323) (_size!913 (_ BitVec 32)) (_keys!5107 array!6092) (_values!3289 array!6094) (_vacant!913 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1728)

(declare-fun mapValue!5948 () ValueCell!1410)

(assert (=> mapNonEmpty!5948 (= (arr!2891 (_values!3289 thiss!1248)) (store mapRest!5948 mapKey!5948 mapValue!5948))))

(declare-fun b!162026 () Bool)

(declare-fun e!106070 () Bool)

(assert (=> b!162026 (= e!106070 false)))

(declare-datatypes ((SeekEntryResult!379 0))(
  ( (MissingZero!379 (index!3684 (_ BitVec 32))) (Found!379 (index!3685 (_ BitVec 32))) (Intermediate!379 (undefined!1191 Bool) (index!3686 (_ BitVec 32)) (x!17915 (_ BitVec 32))) (Undefined!379) (MissingVacant!379 (index!3687 (_ BitVec 32))) )
))
(declare-fun lt!82387 () SeekEntryResult!379)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lt!82388 () Bool)

(declare-fun v!309 () V!4323)

(declare-fun valid!777 (LongMapFixedSize!1728) Bool)

(declare-datatypes ((tuple2!2980 0))(
  ( (tuple2!2981 (_1!1500 Bool) (_2!1500 LongMapFixedSize!1728)) )
))
(declare-fun updateHelperNewKey!78 (LongMapFixedSize!1728 (_ BitVec 64) V!4323 (_ BitVec 32)) tuple2!2980)

(assert (=> b!162026 (= lt!82388 (valid!777 (_2!1500 (updateHelperNewKey!78 thiss!1248 key!828 v!309 (index!3687 lt!82387)))))))

(declare-fun mapIsEmpty!5948 () Bool)

(assert (=> mapIsEmpty!5948 mapRes!5948))

(declare-fun b!162027 () Bool)

(declare-fun e!106069 () Bool)

(declare-fun e!106071 () Bool)

(assert (=> b!162027 (= e!106069 (and e!106071 mapRes!5948))))

(declare-fun condMapEmpty!5948 () Bool)

(declare-fun mapDefault!5948 () ValueCell!1410)

(assert (=> b!162027 (= condMapEmpty!5948 (= (arr!2891 (_values!3289 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1410)) mapDefault!5948)))))

(declare-fun b!162028 () Bool)

(declare-fun e!106068 () Bool)

(assert (=> b!162028 (= e!106068 e!106070)))

(declare-fun res!76777 () Bool)

(assert (=> b!162028 (=> (not res!76777) (not e!106070))))

(get-info :version)

(assert (=> b!162028 (= res!76777 (and (not ((_ is Undefined!379) lt!82387)) ((_ is MissingVacant!379) lt!82387)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6092 (_ BitVec 32)) SeekEntryResult!379)

(assert (=> b!162028 (= lt!82387 (seekEntryOrOpen!0 key!828 (_keys!5107 thiss!1248) (mask!7916 thiss!1248)))))

(declare-fun b!162029 () Bool)

(declare-fun tp_is_empty!3507 () Bool)

(assert (=> b!162029 (= e!106071 tp_is_empty!3507)))

(declare-fun b!162030 () Bool)

(assert (=> b!162030 (= e!106072 tp_is_empty!3507)))

(declare-fun res!76778 () Bool)

(assert (=> start!16256 (=> (not res!76778) (not e!106068))))

(assert (=> start!16256 (= res!76778 (valid!777 thiss!1248))))

(assert (=> start!16256 e!106068))

(declare-fun e!106073 () Bool)

(assert (=> start!16256 e!106073))

(assert (=> start!16256 true))

(assert (=> start!16256 tp_is_empty!3507))

(declare-fun array_inv!1841 (array!6092) Bool)

(declare-fun array_inv!1842 (array!6094) Bool)

(assert (=> b!162031 (= e!106073 (and tp!13684 tp_is_empty!3507 (array_inv!1841 (_keys!5107 thiss!1248)) (array_inv!1842 (_values!3289 thiss!1248)) e!106069))))

(declare-fun b!162032 () Bool)

(declare-fun res!76776 () Bool)

(assert (=> b!162032 (=> (not res!76776) (not e!106068))))

(assert (=> b!162032 (= res!76776 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!16256 res!76778) b!162032))

(assert (= (and b!162032 res!76776) b!162028))

(assert (= (and b!162028 res!76777) b!162026))

(assert (= (and b!162027 condMapEmpty!5948) mapIsEmpty!5948))

(assert (= (and b!162027 (not condMapEmpty!5948)) mapNonEmpty!5948))

(assert (= (and mapNonEmpty!5948 ((_ is ValueCellFull!1410) mapValue!5948)) b!162030))

(assert (= (and b!162027 ((_ is ValueCellFull!1410) mapDefault!5948)) b!162029))

(assert (= b!162031 b!162027))

(assert (= start!16256 b!162031))

(declare-fun m!193309 () Bool)

(assert (=> mapNonEmpty!5948 m!193309))

(declare-fun m!193311 () Bool)

(assert (=> start!16256 m!193311))

(declare-fun m!193313 () Bool)

(assert (=> b!162026 m!193313))

(declare-fun m!193315 () Bool)

(assert (=> b!162026 m!193315))

(declare-fun m!193317 () Bool)

(assert (=> b!162031 m!193317))

(declare-fun m!193319 () Bool)

(assert (=> b!162031 m!193319))

(declare-fun m!193321 () Bool)

(assert (=> b!162028 m!193321))

(check-sat tp_is_empty!3507 (not b!162026) (not b!162031) (not b_next!3705) (not mapNonEmpty!5948) (not b!162028) b_and!10137 (not start!16256))
(check-sat b_and!10137 (not b_next!3705))
