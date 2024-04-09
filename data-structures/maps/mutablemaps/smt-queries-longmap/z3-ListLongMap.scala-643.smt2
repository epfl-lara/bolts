; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16220 () Bool)

(assert start!16220)

(declare-fun b!161635 () Bool)

(declare-fun b_free!3669 () Bool)

(declare-fun b_next!3669 () Bool)

(assert (=> b!161635 (= b_free!3669 (not b_next!3669))))

(declare-fun tp!13577 () Bool)

(declare-fun b_and!10101 () Bool)

(assert (=> b!161635 (= tp!13577 b_and!10101)))

(declare-fun b!161634 () Bool)

(declare-fun e!105698 () Bool)

(declare-fun e!105693 () Bool)

(declare-fun mapRes!5894 () Bool)

(assert (=> b!161634 (= e!105698 (and e!105693 mapRes!5894))))

(declare-fun condMapEmpty!5894 () Bool)

(declare-datatypes ((V!4275 0))(
  ( (V!4276 (val!1780 Int)) )
))
(declare-datatypes ((ValueCell!1392 0))(
  ( (ValueCellFull!1392 (v!3641 V!4275)) (EmptyCell!1392) )
))
(declare-datatypes ((array!6020 0))(
  ( (array!6021 (arr!2854 (Array (_ BitVec 32) (_ BitVec 64))) (size!3138 (_ BitVec 32))) )
))
(declare-datatypes ((array!6022 0))(
  ( (array!6023 (arr!2855 (Array (_ BitVec 32) ValueCell!1392)) (size!3139 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1692 0))(
  ( (LongMapFixedSize!1693 (defaultEntry!3288 Int) (mask!7886 (_ BitVec 32)) (extraKeys!3029 (_ BitVec 32)) (zeroValue!3131 V!4275) (minValue!3131 V!4275) (_size!895 (_ BitVec 32)) (_keys!5089 array!6020) (_values!3271 array!6022) (_vacant!895 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1692)

(declare-fun mapDefault!5894 () ValueCell!1392)

(assert (=> b!161634 (= condMapEmpty!5894 (= (arr!2855 (_values!3271 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1392)) mapDefault!5894)))))

(declare-fun e!105696 () Bool)

(declare-fun tp_is_empty!3471 () Bool)

(declare-fun array_inv!1813 (array!6020) Bool)

(declare-fun array_inv!1814 (array!6022) Bool)

(assert (=> b!161635 (= e!105696 (and tp!13577 tp_is_empty!3471 (array_inv!1813 (_keys!5089 thiss!1248)) (array_inv!1814 (_values!3271 thiss!1248)) e!105698))))

(declare-fun mapNonEmpty!5894 () Bool)

(declare-fun tp!13576 () Bool)

(declare-fun e!105695 () Bool)

(assert (=> mapNonEmpty!5894 (= mapRes!5894 (and tp!13576 e!105695))))

(declare-fun mapValue!5894 () ValueCell!1392)

(declare-fun mapRest!5894 () (Array (_ BitVec 32) ValueCell!1392))

(declare-fun mapKey!5894 () (_ BitVec 32))

(assert (=> mapNonEmpty!5894 (= (arr!2855 (_values!3271 thiss!1248)) (store mapRest!5894 mapKey!5894 mapValue!5894))))

(declare-fun b!161636 () Bool)

(assert (=> b!161636 (= e!105693 tp_is_empty!3471)))

(declare-fun b!161637 () Bool)

(declare-fun res!76600 () Bool)

(declare-fun e!105694 () Bool)

(assert (=> b!161637 (=> (not res!76600) (not e!105694))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161637 (= res!76600 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161638 () Bool)

(assert (=> b!161638 (= e!105695 tp_is_empty!3471)))

(declare-fun b!161639 () Bool)

(declare-datatypes ((SeekEntryResult!367 0))(
  ( (MissingZero!367 (index!3636 (_ BitVec 32))) (Found!367 (index!3637 (_ BitVec 32))) (Intermediate!367 (undefined!1179 Bool) (index!3638 (_ BitVec 32)) (x!17855 (_ BitVec 32))) (Undefined!367) (MissingVacant!367 (index!3639 (_ BitVec 32))) )
))
(declare-fun lt!82283 () SeekEntryResult!367)

(get-info :version)

(assert (=> b!161639 (= e!105694 (and (not ((_ is Undefined!367) lt!82283)) ((_ is MissingVacant!367) lt!82283) (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6020 (_ BitVec 32)) SeekEntryResult!367)

(assert (=> b!161639 (= lt!82283 (seekEntryOrOpen!0 key!828 (_keys!5089 thiss!1248) (mask!7886 thiss!1248)))))

(declare-fun res!76601 () Bool)

(assert (=> start!16220 (=> (not res!76601) (not e!105694))))

(declare-fun valid!766 (LongMapFixedSize!1692) Bool)

(assert (=> start!16220 (= res!76601 (valid!766 thiss!1248))))

(assert (=> start!16220 e!105694))

(assert (=> start!16220 e!105696))

(assert (=> start!16220 true))

(declare-fun mapIsEmpty!5894 () Bool)

(assert (=> mapIsEmpty!5894 mapRes!5894))

(assert (= (and start!16220 res!76601) b!161637))

(assert (= (and b!161637 res!76600) b!161639))

(assert (= (and b!161634 condMapEmpty!5894) mapIsEmpty!5894))

(assert (= (and b!161634 (not condMapEmpty!5894)) mapNonEmpty!5894))

(assert (= (and mapNonEmpty!5894 ((_ is ValueCellFull!1392) mapValue!5894)) b!161638))

(assert (= (and b!161634 ((_ is ValueCellFull!1392) mapDefault!5894)) b!161636))

(assert (= b!161635 b!161634))

(assert (= start!16220 b!161635))

(declare-fun m!193065 () Bool)

(assert (=> b!161635 m!193065))

(declare-fun m!193067 () Bool)

(assert (=> b!161635 m!193067))

(declare-fun m!193069 () Bool)

(assert (=> mapNonEmpty!5894 m!193069))

(declare-fun m!193071 () Bool)

(assert (=> b!161639 m!193071))

(declare-fun m!193073 () Bool)

(assert (=> start!16220 m!193073))

(check-sat (not b!161639) (not start!16220) (not b_next!3669) b_and!10101 tp_is_empty!3471 (not b!161635) (not mapNonEmpty!5894))
(check-sat b_and!10101 (not b_next!3669))
