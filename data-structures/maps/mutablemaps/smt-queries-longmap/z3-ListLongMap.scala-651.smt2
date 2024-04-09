; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16268 () Bool)

(assert start!16268)

(declare-fun b!162151 () Bool)

(declare-fun b_free!3717 () Bool)

(declare-fun b_next!3717 () Bool)

(assert (=> b!162151 (= b_free!3717 (not b_next!3717))))

(declare-fun tp!13720 () Bool)

(declare-fun b_and!10149 () Bool)

(assert (=> b!162151 (= tp!13720 b_and!10149)))

(declare-fun mapNonEmpty!5966 () Bool)

(declare-fun mapRes!5966 () Bool)

(declare-fun tp!13721 () Bool)

(declare-fun e!106191 () Bool)

(assert (=> mapNonEmpty!5966 (= mapRes!5966 (and tp!13721 e!106191))))

(declare-datatypes ((V!4339 0))(
  ( (V!4340 (val!1804 Int)) )
))
(declare-datatypes ((ValueCell!1416 0))(
  ( (ValueCellFull!1416 (v!3665 V!4339)) (EmptyCell!1416) )
))
(declare-fun mapRest!5966 () (Array (_ BitVec 32) ValueCell!1416))

(declare-fun mapKey!5966 () (_ BitVec 32))

(declare-datatypes ((array!6116 0))(
  ( (array!6117 (arr!2902 (Array (_ BitVec 32) (_ BitVec 64))) (size!3186 (_ BitVec 32))) )
))
(declare-datatypes ((array!6118 0))(
  ( (array!6119 (arr!2903 (Array (_ BitVec 32) ValueCell!1416)) (size!3187 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1740 0))(
  ( (LongMapFixedSize!1741 (defaultEntry!3312 Int) (mask!7926 (_ BitVec 32)) (extraKeys!3053 (_ BitVec 32)) (zeroValue!3155 V!4339) (minValue!3155 V!4339) (_size!919 (_ BitVec 32)) (_keys!5113 array!6116) (_values!3295 array!6118) (_vacant!919 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1740)

(declare-fun mapValue!5966 () ValueCell!1416)

(assert (=> mapNonEmpty!5966 (= (arr!2903 (_values!3295 thiss!1248)) (store mapRest!5966 mapKey!5966 mapValue!5966))))

(declare-fun b!162147 () Bool)

(declare-fun e!106193 () Bool)

(assert (=> b!162147 (= e!106193 false)))

(declare-datatypes ((SeekEntryResult!385 0))(
  ( (MissingZero!385 (index!3708 (_ BitVec 32))) (Found!385 (index!3709 (_ BitVec 32))) (Intermediate!385 (undefined!1197 Bool) (index!3710 (_ BitVec 32)) (x!17937 (_ BitVec 32))) (Undefined!385) (MissingVacant!385 (index!3711 (_ BitVec 32))) )
))
(declare-fun lt!82418 () SeekEntryResult!385)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6116 (_ BitVec 32)) SeekEntryResult!385)

(assert (=> b!162147 (= lt!82418 (seekEntryOrOpen!0 key!828 (_keys!5113 thiss!1248) (mask!7926 thiss!1248)))))

(declare-fun b!162148 () Bool)

(declare-fun e!106188 () Bool)

(declare-fun tp_is_empty!3519 () Bool)

(assert (=> b!162148 (= e!106188 tp_is_empty!3519)))

(declare-fun mapIsEmpty!5966 () Bool)

(assert (=> mapIsEmpty!5966 mapRes!5966))

(declare-fun res!76826 () Bool)

(assert (=> start!16268 (=> (not res!76826) (not e!106193))))

(declare-fun valid!781 (LongMapFixedSize!1740) Bool)

(assert (=> start!16268 (= res!76826 (valid!781 thiss!1248))))

(assert (=> start!16268 e!106193))

(declare-fun e!106192 () Bool)

(assert (=> start!16268 e!106192))

(assert (=> start!16268 true))

(declare-fun b!162149 () Bool)

(declare-fun res!76825 () Bool)

(assert (=> b!162149 (=> (not res!76825) (not e!106193))))

(assert (=> b!162149 (= res!76825 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162150 () Bool)

(declare-fun e!106189 () Bool)

(assert (=> b!162150 (= e!106189 (and e!106188 mapRes!5966))))

(declare-fun condMapEmpty!5966 () Bool)

(declare-fun mapDefault!5966 () ValueCell!1416)

(assert (=> b!162150 (= condMapEmpty!5966 (= (arr!2903 (_values!3295 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1416)) mapDefault!5966)))))

(declare-fun array_inv!1847 (array!6116) Bool)

(declare-fun array_inv!1848 (array!6118) Bool)

(assert (=> b!162151 (= e!106192 (and tp!13720 tp_is_empty!3519 (array_inv!1847 (_keys!5113 thiss!1248)) (array_inv!1848 (_values!3295 thiss!1248)) e!106189))))

(declare-fun b!162152 () Bool)

(assert (=> b!162152 (= e!106191 tp_is_empty!3519)))

(assert (= (and start!16268 res!76826) b!162149))

(assert (= (and b!162149 res!76825) b!162147))

(assert (= (and b!162150 condMapEmpty!5966) mapIsEmpty!5966))

(assert (= (and b!162150 (not condMapEmpty!5966)) mapNonEmpty!5966))

(get-info :version)

(assert (= (and mapNonEmpty!5966 ((_ is ValueCellFull!1416) mapValue!5966)) b!162152))

(assert (= (and b!162150 ((_ is ValueCellFull!1416) mapDefault!5966)) b!162148))

(assert (= b!162151 b!162150))

(assert (= start!16268 b!162151))

(declare-fun m!193389 () Bool)

(assert (=> mapNonEmpty!5966 m!193389))

(declare-fun m!193391 () Bool)

(assert (=> b!162147 m!193391))

(declare-fun m!193393 () Bool)

(assert (=> start!16268 m!193393))

(declare-fun m!193395 () Bool)

(assert (=> b!162151 m!193395))

(declare-fun m!193397 () Bool)

(assert (=> b!162151 m!193397))

(check-sat (not start!16268) (not b!162147) (not mapNonEmpty!5966) b_and!10149 (not b_next!3717) tp_is_empty!3519 (not b!162151))
(check-sat b_and!10149 (not b_next!3717))
