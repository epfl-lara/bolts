; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16280 () Bool)

(assert start!16280)

(declare-fun b!162259 () Bool)

(declare-fun b_free!3729 () Bool)

(declare-fun b_next!3729 () Bool)

(assert (=> b!162259 (= b_free!3729 (not b_next!3729))))

(declare-fun tp!13756 () Bool)

(declare-fun b_and!10161 () Bool)

(assert (=> b!162259 (= tp!13756 b_and!10161)))

(declare-fun b!162255 () Bool)

(declare-fun e!106301 () Bool)

(declare-fun e!106300 () Bool)

(declare-fun mapRes!5984 () Bool)

(assert (=> b!162255 (= e!106301 (and e!106300 mapRes!5984))))

(declare-fun condMapEmpty!5984 () Bool)

(declare-datatypes ((V!4355 0))(
  ( (V!4356 (val!1810 Int)) )
))
(declare-datatypes ((ValueCell!1422 0))(
  ( (ValueCellFull!1422 (v!3671 V!4355)) (EmptyCell!1422) )
))
(declare-datatypes ((array!6140 0))(
  ( (array!6141 (arr!2914 (Array (_ BitVec 32) (_ BitVec 64))) (size!3198 (_ BitVec 32))) )
))
(declare-datatypes ((array!6142 0))(
  ( (array!6143 (arr!2915 (Array (_ BitVec 32) ValueCell!1422)) (size!3199 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1752 0))(
  ( (LongMapFixedSize!1753 (defaultEntry!3318 Int) (mask!7936 (_ BitVec 32)) (extraKeys!3059 (_ BitVec 32)) (zeroValue!3161 V!4355) (minValue!3161 V!4355) (_size!925 (_ BitVec 32)) (_keys!5119 array!6140) (_values!3301 array!6142) (_vacant!925 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1752)

(declare-fun mapDefault!5984 () ValueCell!1422)

(assert (=> b!162255 (= condMapEmpty!5984 (= (arr!2915 (_values!3301 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1422)) mapDefault!5984)))))

(declare-fun res!76861 () Bool)

(declare-fun e!106297 () Bool)

(assert (=> start!16280 (=> (not res!76861) (not e!106297))))

(declare-fun valid!785 (LongMapFixedSize!1752) Bool)

(assert (=> start!16280 (= res!76861 (valid!785 thiss!1248))))

(assert (=> start!16280 e!106297))

(declare-fun e!106299 () Bool)

(assert (=> start!16280 e!106299))

(assert (=> start!16280 true))

(declare-fun b!162256 () Bool)

(declare-datatypes ((SeekEntryResult!389 0))(
  ( (MissingZero!389 (index!3724 (_ BitVec 32))) (Found!389 (index!3725 (_ BitVec 32))) (Intermediate!389 (undefined!1201 Bool) (index!3726 (_ BitVec 32)) (x!17957 (_ BitVec 32))) (Undefined!389) (MissingVacant!389 (index!3727 (_ BitVec 32))) )
))
(declare-fun lt!82436 () SeekEntryResult!389)

(declare-fun key!828 () (_ BitVec 64))

(get-info :version)

(assert (=> b!162256 (= e!106297 (and (not ((_ is Undefined!389) lt!82436)) (not ((_ is MissingVacant!389) lt!82436)) ((_ is MissingZero!389) lt!82436) (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6140 (_ BitVec 32)) SeekEntryResult!389)

(assert (=> b!162256 (= lt!82436 (seekEntryOrOpen!0 key!828 (_keys!5119 thiss!1248) (mask!7936 thiss!1248)))))

(declare-fun b!162257 () Bool)

(declare-fun res!76862 () Bool)

(assert (=> b!162257 (=> (not res!76862) (not e!106297))))

(assert (=> b!162257 (= res!76862 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!5984 () Bool)

(assert (=> mapIsEmpty!5984 mapRes!5984))

(declare-fun b!162258 () Bool)

(declare-fun e!106296 () Bool)

(declare-fun tp_is_empty!3531 () Bool)

(assert (=> b!162258 (= e!106296 tp_is_empty!3531)))

(declare-fun array_inv!1855 (array!6140) Bool)

(declare-fun array_inv!1856 (array!6142) Bool)

(assert (=> b!162259 (= e!106299 (and tp!13756 tp_is_empty!3531 (array_inv!1855 (_keys!5119 thiss!1248)) (array_inv!1856 (_values!3301 thiss!1248)) e!106301))))

(declare-fun b!162260 () Bool)

(assert (=> b!162260 (= e!106300 tp_is_empty!3531)))

(declare-fun mapNonEmpty!5984 () Bool)

(declare-fun tp!13757 () Bool)

(assert (=> mapNonEmpty!5984 (= mapRes!5984 (and tp!13757 e!106296))))

(declare-fun mapRest!5984 () (Array (_ BitVec 32) ValueCell!1422))

(declare-fun mapKey!5984 () (_ BitVec 32))

(declare-fun mapValue!5984 () ValueCell!1422)

(assert (=> mapNonEmpty!5984 (= (arr!2915 (_values!3301 thiss!1248)) (store mapRest!5984 mapKey!5984 mapValue!5984))))

(assert (= (and start!16280 res!76861) b!162257))

(assert (= (and b!162257 res!76862) b!162256))

(assert (= (and b!162255 condMapEmpty!5984) mapIsEmpty!5984))

(assert (= (and b!162255 (not condMapEmpty!5984)) mapNonEmpty!5984))

(assert (= (and mapNonEmpty!5984 ((_ is ValueCellFull!1422) mapValue!5984)) b!162258))

(assert (= (and b!162255 ((_ is ValueCellFull!1422) mapDefault!5984)) b!162260))

(assert (= b!162259 b!162255))

(assert (= start!16280 b!162259))

(declare-fun m!193449 () Bool)

(assert (=> start!16280 m!193449))

(declare-fun m!193451 () Bool)

(assert (=> b!162256 m!193451))

(declare-fun m!193453 () Bool)

(assert (=> b!162259 m!193453))

(declare-fun m!193455 () Bool)

(assert (=> b!162259 m!193455))

(declare-fun m!193457 () Bool)

(assert (=> mapNonEmpty!5984 m!193457))

(check-sat b_and!10161 (not b_next!3729) (not mapNonEmpty!5984) (not b!162256) (not start!16280) (not b!162259) tp_is_empty!3531)
(check-sat b_and!10161 (not b_next!3729))
