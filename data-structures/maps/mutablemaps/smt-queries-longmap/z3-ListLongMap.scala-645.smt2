; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16232 () Bool)

(assert start!16232)

(declare-fun b!161743 () Bool)

(declare-fun b_free!3681 () Bool)

(declare-fun b_next!3681 () Bool)

(assert (=> b!161743 (= b_free!3681 (not b_next!3681))))

(declare-fun tp!13613 () Bool)

(declare-fun b_and!10113 () Bool)

(assert (=> b!161743 (= tp!13613 b_and!10113)))

(declare-fun mapNonEmpty!5912 () Bool)

(declare-fun mapRes!5912 () Bool)

(declare-fun tp!13612 () Bool)

(declare-fun e!105804 () Bool)

(assert (=> mapNonEmpty!5912 (= mapRes!5912 (and tp!13612 e!105804))))

(declare-fun mapKey!5912 () (_ BitVec 32))

(declare-datatypes ((V!4291 0))(
  ( (V!4292 (val!1786 Int)) )
))
(declare-datatypes ((ValueCell!1398 0))(
  ( (ValueCellFull!1398 (v!3647 V!4291)) (EmptyCell!1398) )
))
(declare-datatypes ((array!6044 0))(
  ( (array!6045 (arr!2866 (Array (_ BitVec 32) (_ BitVec 64))) (size!3150 (_ BitVec 32))) )
))
(declare-datatypes ((array!6046 0))(
  ( (array!6047 (arr!2867 (Array (_ BitVec 32) ValueCell!1398)) (size!3151 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1704 0))(
  ( (LongMapFixedSize!1705 (defaultEntry!3294 Int) (mask!7896 (_ BitVec 32)) (extraKeys!3035 (_ BitVec 32)) (zeroValue!3137 V!4291) (minValue!3137 V!4291) (_size!901 (_ BitVec 32)) (_keys!5095 array!6044) (_values!3277 array!6046) (_vacant!901 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1704)

(declare-fun mapRest!5912 () (Array (_ BitVec 32) ValueCell!1398))

(declare-fun mapValue!5912 () ValueCell!1398)

(assert (=> mapNonEmpty!5912 (= (arr!2867 (_values!3277 thiss!1248)) (store mapRest!5912 mapKey!5912 mapValue!5912))))

(declare-fun mapIsEmpty!5912 () Bool)

(assert (=> mapIsEmpty!5912 mapRes!5912))

(declare-fun b!161742 () Bool)

(declare-fun e!105806 () Bool)

(declare-fun tp_is_empty!3483 () Bool)

(assert (=> b!161742 (= e!105806 tp_is_empty!3483)))

(declare-fun res!76636 () Bool)

(declare-fun e!105805 () Bool)

(assert (=> start!16232 (=> (not res!76636) (not e!105805))))

(declare-fun valid!770 (LongMapFixedSize!1704) Bool)

(assert (=> start!16232 (= res!76636 (valid!770 thiss!1248))))

(assert (=> start!16232 e!105805))

(declare-fun e!105801 () Bool)

(assert (=> start!16232 e!105801))

(assert (=> start!16232 true))

(declare-fun e!105803 () Bool)

(declare-fun array_inv!1823 (array!6044) Bool)

(declare-fun array_inv!1824 (array!6046) Bool)

(assert (=> b!161743 (= e!105801 (and tp!13613 tp_is_empty!3483 (array_inv!1823 (_keys!5095 thiss!1248)) (array_inv!1824 (_values!3277 thiss!1248)) e!105803))))

(declare-fun b!161744 () Bool)

(assert (=> b!161744 (= e!105804 tp_is_empty!3483)))

(declare-fun b!161745 () Bool)

(declare-datatypes ((SeekEntryResult!372 0))(
  ( (MissingZero!372 (index!3656 (_ BitVec 32))) (Found!372 (index!3657 (_ BitVec 32))) (Intermediate!372 (undefined!1184 Bool) (index!3658 (_ BitVec 32)) (x!17876 (_ BitVec 32))) (Undefined!372) (MissingVacant!372 (index!3659 (_ BitVec 32))) )
))
(declare-fun lt!82301 () SeekEntryResult!372)

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(assert (=> b!161745 (= e!105805 (and (not ((_ is Undefined!372) lt!82301)) ((_ is MissingVacant!372) lt!82301) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!82301 (MissingZero!372 (index!3659 lt!82301)))) (not (= lt!82301 (MissingVacant!372 (index!3659 lt!82301))))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6044 (_ BitVec 32)) SeekEntryResult!372)

(assert (=> b!161745 (= lt!82301 (seekEntryOrOpen!0 key!828 (_keys!5095 thiss!1248) (mask!7896 thiss!1248)))))

(declare-fun b!161746 () Bool)

(assert (=> b!161746 (= e!105803 (and e!105806 mapRes!5912))))

(declare-fun condMapEmpty!5912 () Bool)

(declare-fun mapDefault!5912 () ValueCell!1398)

(assert (=> b!161746 (= condMapEmpty!5912 (= (arr!2867 (_values!3277 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1398)) mapDefault!5912)))))

(declare-fun b!161747 () Bool)

(declare-fun res!76637 () Bool)

(assert (=> b!161747 (=> (not res!76637) (not e!105805))))

(assert (=> b!161747 (= res!76637 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!16232 res!76636) b!161747))

(assert (= (and b!161747 res!76637) b!161745))

(assert (= (and b!161746 condMapEmpty!5912) mapIsEmpty!5912))

(assert (= (and b!161746 (not condMapEmpty!5912)) mapNonEmpty!5912))

(assert (= (and mapNonEmpty!5912 ((_ is ValueCellFull!1398) mapValue!5912)) b!161744))

(assert (= (and b!161746 ((_ is ValueCellFull!1398) mapDefault!5912)) b!161742))

(assert (= b!161743 b!161746))

(assert (= start!16232 b!161743))

(declare-fun m!193125 () Bool)

(assert (=> mapNonEmpty!5912 m!193125))

(declare-fun m!193127 () Bool)

(assert (=> start!16232 m!193127))

(declare-fun m!193129 () Bool)

(assert (=> b!161743 m!193129))

(declare-fun m!193131 () Bool)

(assert (=> b!161743 m!193131))

(declare-fun m!193133 () Bool)

(assert (=> b!161745 m!193133))

(check-sat b_and!10113 (not b_next!3681) tp_is_empty!3483 (not mapNonEmpty!5912) (not start!16232) (not b!161745) (not b!161743))
(check-sat b_and!10113 (not b_next!3681))
