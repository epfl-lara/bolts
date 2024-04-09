; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16304 () Bool)

(assert start!16304)

(declare-fun b!162525 () Bool)

(declare-fun b_free!3753 () Bool)

(declare-fun b_next!3753 () Bool)

(assert (=> b!162525 (= b_free!3753 (not b_next!3753))))

(declare-fun tp!13828 () Bool)

(declare-fun b_and!10185 () Bool)

(assert (=> b!162525 (= tp!13828 b_and!10185)))

(declare-fun b!162522 () Bool)

(declare-fun res!76984 () Bool)

(declare-fun e!106556 () Bool)

(assert (=> b!162522 (=> (not res!76984) (not e!106556))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!162522 (= res!76984 (not (= key!828 (bvneg key!828))))))

(declare-fun b!162523 () Bool)

(declare-fun e!106555 () Bool)

(assert (=> b!162523 (= e!106556 e!106555)))

(declare-fun res!76986 () Bool)

(assert (=> b!162523 (=> (not res!76986) (not e!106555))))

(declare-datatypes ((SeekEntryResult!395 0))(
  ( (MissingZero!395 (index!3748 (_ BitVec 32))) (Found!395 (index!3749 (_ BitVec 32))) (Intermediate!395 (undefined!1207 Bool) (index!3750 (_ BitVec 32)) (x!17995 (_ BitVec 32))) (Undefined!395) (MissingVacant!395 (index!3751 (_ BitVec 32))) )
))
(declare-fun lt!82510 () SeekEntryResult!395)

(get-info :version)

(assert (=> b!162523 (= res!76986 (and (not ((_ is Undefined!395) lt!82510)) (not ((_ is MissingVacant!395) lt!82510)) ((_ is MissingZero!395) lt!82510)))))

(declare-datatypes ((V!4387 0))(
  ( (V!4388 (val!1822 Int)) )
))
(declare-datatypes ((ValueCell!1434 0))(
  ( (ValueCellFull!1434 (v!3683 V!4387)) (EmptyCell!1434) )
))
(declare-datatypes ((array!6188 0))(
  ( (array!6189 (arr!2938 (Array (_ BitVec 32) (_ BitVec 64))) (size!3222 (_ BitVec 32))) )
))
(declare-datatypes ((array!6190 0))(
  ( (array!6191 (arr!2939 (Array (_ BitVec 32) ValueCell!1434)) (size!3223 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1776 0))(
  ( (LongMapFixedSize!1777 (defaultEntry!3330 Int) (mask!7956 (_ BitVec 32)) (extraKeys!3071 (_ BitVec 32)) (zeroValue!3173 V!4387) (minValue!3173 V!4387) (_size!937 (_ BitVec 32)) (_keys!5131 array!6188) (_values!3313 array!6190) (_vacant!937 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1776)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6188 (_ BitVec 32)) SeekEntryResult!395)

(assert (=> b!162523 (= lt!82510 (seekEntryOrOpen!0 key!828 (_keys!5131 thiss!1248) (mask!7956 thiss!1248)))))

(declare-fun b!162524 () Bool)

(declare-fun e!106554 () Bool)

(declare-fun tp_is_empty!3555 () Bool)

(assert (=> b!162524 (= e!106554 tp_is_empty!3555)))

(declare-fun e!106550 () Bool)

(declare-fun e!106549 () Bool)

(declare-fun array_inv!1869 (array!6188) Bool)

(declare-fun array_inv!1870 (array!6190) Bool)

(assert (=> b!162525 (= e!106549 (and tp!13828 tp_is_empty!3555 (array_inv!1869 (_keys!5131 thiss!1248)) (array_inv!1870 (_values!3313 thiss!1248)) e!106550))))

(declare-fun b!162526 () Bool)

(declare-fun res!76988 () Bool)

(declare-fun e!106552 () Bool)

(assert (=> b!162526 (=> (not res!76988) (not e!106552))))

(declare-datatypes ((tuple2!2998 0))(
  ( (tuple2!2999 (_1!1509 Bool) (_2!1509 LongMapFixedSize!1776)) )
))
(declare-fun lt!82509 () tuple2!2998)

(assert (=> b!162526 (= res!76988 (_1!1509 lt!82509))))

(declare-fun mapNonEmpty!6020 () Bool)

(declare-fun mapRes!6020 () Bool)

(declare-fun tp!13829 () Bool)

(assert (=> mapNonEmpty!6020 (= mapRes!6020 (and tp!13829 e!106554))))

(declare-fun mapKey!6020 () (_ BitVec 32))

(declare-fun mapRest!6020 () (Array (_ BitVec 32) ValueCell!1434))

(declare-fun mapValue!6020 () ValueCell!1434)

(assert (=> mapNonEmpty!6020 (= (arr!2939 (_values!3313 thiss!1248)) (store mapRest!6020 mapKey!6020 mapValue!6020))))

(declare-fun b!162527 () Bool)

(assert (=> b!162527 (= e!106552 false)))

(declare-fun lt!82511 () Bool)

(declare-datatypes ((tuple2!3000 0))(
  ( (tuple2!3001 (_1!1510 (_ BitVec 64)) (_2!1510 V!4387)) )
))
(declare-datatypes ((List!2006 0))(
  ( (Nil!2003) (Cons!2002 (h!2615 tuple2!3000) (t!6816 List!2006)) )
))
(declare-datatypes ((ListLongMap!1977 0))(
  ( (ListLongMap!1978 (toList!1004 List!2006)) )
))
(declare-fun contains!1034 (ListLongMap!1977 (_ BitVec 64)) Bool)

(declare-fun map!1690 (LongMapFixedSize!1776) ListLongMap!1977)

(assert (=> b!162527 (= lt!82511 (contains!1034 (map!1690 (_2!1509 lt!82509)) key!828))))

(declare-fun res!76985 () Bool)

(assert (=> start!16304 (=> (not res!76985) (not e!106556))))

(declare-fun valid!794 (LongMapFixedSize!1776) Bool)

(assert (=> start!16304 (= res!76985 (valid!794 thiss!1248))))

(assert (=> start!16304 e!106556))

(assert (=> start!16304 e!106549))

(assert (=> start!16304 true))

(assert (=> start!16304 tp_is_empty!3555))

(declare-fun b!162528 () Bool)

(declare-fun e!106551 () Bool)

(assert (=> b!162528 (= e!106551 tp_is_empty!3555)))

(declare-fun mapIsEmpty!6020 () Bool)

(assert (=> mapIsEmpty!6020 mapRes!6020))

(declare-fun b!162529 () Bool)

(assert (=> b!162529 (= e!106550 (and e!106551 mapRes!6020))))

(declare-fun condMapEmpty!6020 () Bool)

(declare-fun mapDefault!6020 () ValueCell!1434)

(assert (=> b!162529 (= condMapEmpty!6020 (= (arr!2939 (_values!3313 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1434)) mapDefault!6020)))))

(declare-fun b!162530 () Bool)

(assert (=> b!162530 (= e!106555 e!106552)))

(declare-fun res!76987 () Bool)

(assert (=> b!162530 (=> (not res!76987) (not e!106552))))

(assert (=> b!162530 (= res!76987 (valid!794 (_2!1509 lt!82509)))))

(declare-fun v!309 () V!4387)

(declare-fun updateHelperNewKey!85 (LongMapFixedSize!1776 (_ BitVec 64) V!4387 (_ BitVec 32)) tuple2!2998)

(assert (=> b!162530 (= lt!82509 (updateHelperNewKey!85 thiss!1248 key!828 v!309 (index!3748 lt!82510)))))

(assert (= (and start!16304 res!76985) b!162522))

(assert (= (and b!162522 res!76984) b!162523))

(assert (= (and b!162523 res!76986) b!162530))

(assert (= (and b!162530 res!76987) b!162526))

(assert (= (and b!162526 res!76988) b!162527))

(assert (= (and b!162529 condMapEmpty!6020) mapIsEmpty!6020))

(assert (= (and b!162529 (not condMapEmpty!6020)) mapNonEmpty!6020))

(assert (= (and mapNonEmpty!6020 ((_ is ValueCellFull!1434) mapValue!6020)) b!162524))

(assert (= (and b!162529 ((_ is ValueCellFull!1434) mapDefault!6020)) b!162528))

(assert (= b!162525 b!162529))

(assert (= start!16304 b!162525))

(declare-fun m!193613 () Bool)

(assert (=> b!162523 m!193613))

(declare-fun m!193615 () Bool)

(assert (=> b!162525 m!193615))

(declare-fun m!193617 () Bool)

(assert (=> b!162525 m!193617))

(declare-fun m!193619 () Bool)

(assert (=> mapNonEmpty!6020 m!193619))

(declare-fun m!193621 () Bool)

(assert (=> b!162530 m!193621))

(declare-fun m!193623 () Bool)

(assert (=> b!162530 m!193623))

(declare-fun m!193625 () Bool)

(assert (=> start!16304 m!193625))

(declare-fun m!193627 () Bool)

(assert (=> b!162527 m!193627))

(assert (=> b!162527 m!193627))

(declare-fun m!193629 () Bool)

(assert (=> b!162527 m!193629))

(check-sat (not b!162523) (not b_next!3753) (not b!162525) (not start!16304) (not mapNonEmpty!6020) b_and!10185 (not b!162530) tp_is_empty!3555 (not b!162527))
(check-sat b_and!10185 (not b_next!3753))
