; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16214 () Bool)

(assert start!16214)

(declare-fun b!161582 () Bool)

(declare-fun b_free!3663 () Bool)

(declare-fun b_next!3663 () Bool)

(assert (=> b!161582 (= b_free!3663 (not b_next!3663))))

(declare-fun tp!13559 () Bool)

(declare-fun b_and!10095 () Bool)

(assert (=> b!161582 (= tp!13559 b_and!10095)))

(declare-fun b!161580 () Bool)

(declare-fun res!76582 () Bool)

(declare-fun e!105640 () Bool)

(assert (=> b!161580 (=> (not res!76582) (not e!105640))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!161580 (= res!76582 (not (= key!828 (bvneg key!828))))))

(declare-fun res!76583 () Bool)

(assert (=> start!16214 (=> (not res!76583) (not e!105640))))

(declare-datatypes ((V!4267 0))(
  ( (V!4268 (val!1777 Int)) )
))
(declare-datatypes ((ValueCell!1389 0))(
  ( (ValueCellFull!1389 (v!3638 V!4267)) (EmptyCell!1389) )
))
(declare-datatypes ((array!6008 0))(
  ( (array!6009 (arr!2848 (Array (_ BitVec 32) (_ BitVec 64))) (size!3132 (_ BitVec 32))) )
))
(declare-datatypes ((array!6010 0))(
  ( (array!6011 (arr!2849 (Array (_ BitVec 32) ValueCell!1389)) (size!3133 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1686 0))(
  ( (LongMapFixedSize!1687 (defaultEntry!3285 Int) (mask!7881 (_ BitVec 32)) (extraKeys!3026 (_ BitVec 32)) (zeroValue!3128 V!4267) (minValue!3128 V!4267) (_size!892 (_ BitVec 32)) (_keys!5086 array!6008) (_values!3268 array!6010) (_vacant!892 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1686)

(declare-fun valid!763 (LongMapFixedSize!1686) Bool)

(assert (=> start!16214 (= res!76583 (valid!763 thiss!1248))))

(assert (=> start!16214 e!105640))

(declare-fun e!105641 () Bool)

(assert (=> start!16214 e!105641))

(assert (=> start!16214 true))

(declare-fun b!161581 () Bool)

(declare-fun e!105642 () Bool)

(declare-fun e!105644 () Bool)

(declare-fun mapRes!5885 () Bool)

(assert (=> b!161581 (= e!105642 (and e!105644 mapRes!5885))))

(declare-fun condMapEmpty!5885 () Bool)

(declare-fun mapDefault!5885 () ValueCell!1389)

(assert (=> b!161581 (= condMapEmpty!5885 (= (arr!2849 (_values!3268 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1389)) mapDefault!5885)))))

(declare-fun tp_is_empty!3465 () Bool)

(declare-fun array_inv!1807 (array!6008) Bool)

(declare-fun array_inv!1808 (array!6010) Bool)

(assert (=> b!161582 (= e!105641 (and tp!13559 tp_is_empty!3465 (array_inv!1807 (_keys!5086 thiss!1248)) (array_inv!1808 (_values!3268 thiss!1248)) e!105642))))

(declare-fun b!161583 () Bool)

(assert (=> b!161583 (= e!105644 tp_is_empty!3465)))

(declare-fun b!161584 () Bool)

(assert (=> b!161584 (= e!105640 false)))

(declare-datatypes ((SeekEntryResult!364 0))(
  ( (MissingZero!364 (index!3624 (_ BitVec 32))) (Found!364 (index!3625 (_ BitVec 32))) (Intermediate!364 (undefined!1176 Bool) (index!3626 (_ BitVec 32)) (x!17844 (_ BitVec 32))) (Undefined!364) (MissingVacant!364 (index!3627 (_ BitVec 32))) )
))
(declare-fun lt!82274 () SeekEntryResult!364)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6008 (_ BitVec 32)) SeekEntryResult!364)

(assert (=> b!161584 (= lt!82274 (seekEntryOrOpen!0 key!828 (_keys!5086 thiss!1248) (mask!7881 thiss!1248)))))

(declare-fun b!161585 () Bool)

(declare-fun e!105639 () Bool)

(assert (=> b!161585 (= e!105639 tp_is_empty!3465)))

(declare-fun mapNonEmpty!5885 () Bool)

(declare-fun tp!13558 () Bool)

(assert (=> mapNonEmpty!5885 (= mapRes!5885 (and tp!13558 e!105639))))

(declare-fun mapKey!5885 () (_ BitVec 32))

(declare-fun mapRest!5885 () (Array (_ BitVec 32) ValueCell!1389))

(declare-fun mapValue!5885 () ValueCell!1389)

(assert (=> mapNonEmpty!5885 (= (arr!2849 (_values!3268 thiss!1248)) (store mapRest!5885 mapKey!5885 mapValue!5885))))

(declare-fun mapIsEmpty!5885 () Bool)

(assert (=> mapIsEmpty!5885 mapRes!5885))

(assert (= (and start!16214 res!76583) b!161580))

(assert (= (and b!161580 res!76582) b!161584))

(assert (= (and b!161581 condMapEmpty!5885) mapIsEmpty!5885))

(assert (= (and b!161581 (not condMapEmpty!5885)) mapNonEmpty!5885))

(get-info :version)

(assert (= (and mapNonEmpty!5885 ((_ is ValueCellFull!1389) mapValue!5885)) b!161585))

(assert (= (and b!161581 ((_ is ValueCellFull!1389) mapDefault!5885)) b!161583))

(assert (= b!161582 b!161581))

(assert (= start!16214 b!161582))

(declare-fun m!193035 () Bool)

(assert (=> start!16214 m!193035))

(declare-fun m!193037 () Bool)

(assert (=> b!161582 m!193037))

(declare-fun m!193039 () Bool)

(assert (=> b!161582 m!193039))

(declare-fun m!193041 () Bool)

(assert (=> b!161584 m!193041))

(declare-fun m!193043 () Bool)

(assert (=> mapNonEmpty!5885 m!193043))

(check-sat b_and!10095 (not start!16214) (not b_next!3663) (not mapNonEmpty!5885) (not b!161582) tp_is_empty!3465 (not b!161584))
(check-sat b_and!10095 (not b_next!3663))
