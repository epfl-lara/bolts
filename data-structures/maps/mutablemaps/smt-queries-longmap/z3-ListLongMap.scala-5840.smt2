; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75456 () Bool)

(assert start!75456)

(declare-fun b!887799 () Bool)

(declare-fun b_free!15543 () Bool)

(declare-fun b_next!15543 () Bool)

(assert (=> b!887799 (= b_free!15543 (not b_next!15543))))

(declare-fun tp!54576 () Bool)

(declare-fun b_and!25797 () Bool)

(assert (=> b!887799 (= tp!54576 b_and!25797)))

(declare-fun b!887798 () Bool)

(declare-fun e!494608 () Bool)

(declare-fun tp_is_empty!17871 () Bool)

(assert (=> b!887798 (= e!494608 tp_is_empty!17871)))

(declare-datatypes ((array!51696 0))(
  ( (array!51697 (arr!24856 (Array (_ BitVec 32) (_ BitVec 64))) (size!25297 (_ BitVec 32))) )
))
(declare-datatypes ((V!28793 0))(
  ( (V!28794 (val!8986 Int)) )
))
(declare-datatypes ((ValueCell!8454 0))(
  ( (ValueCellFull!8454 (v!11452 V!28793)) (EmptyCell!8454) )
))
(declare-datatypes ((array!51698 0))(
  ( (array!51699 (arr!24857 (Array (_ BitVec 32) ValueCell!8454)) (size!25298 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3924 0))(
  ( (LongMapFixedSize!3925 (defaultEntry!5153 Int) (mask!25554 (_ BitVec 32)) (extraKeys!4847 (_ BitVec 32)) (zeroValue!4951 V!28793) (minValue!4951 V!28793) (_size!2017 (_ BitVec 32)) (_keys!9826 array!51696) (_values!5138 array!51698) (_vacant!2017 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3924)

(declare-fun e!494607 () Bool)

(declare-fun e!494605 () Bool)

(declare-fun array_inv!19538 (array!51696) Bool)

(declare-fun array_inv!19539 (array!51698) Bool)

(assert (=> b!887799 (= e!494605 (and tp!54576 tp_is_empty!17871 (array_inv!19538 (_keys!9826 thiss!1181)) (array_inv!19539 (_values!5138 thiss!1181)) e!494607))))

(declare-fun mapNonEmpty!28339 () Bool)

(declare-fun mapRes!28339 () Bool)

(declare-fun tp!54577 () Bool)

(declare-fun e!494606 () Bool)

(assert (=> mapNonEmpty!28339 (= mapRes!28339 (and tp!54577 e!494606))))

(declare-fun mapRest!28339 () (Array (_ BitVec 32) ValueCell!8454))

(declare-fun mapKey!28339 () (_ BitVec 32))

(declare-fun mapValue!28339 () ValueCell!8454)

(assert (=> mapNonEmpty!28339 (= (arr!24857 (_values!5138 thiss!1181)) (store mapRest!28339 mapKey!28339 mapValue!28339))))

(declare-fun lt!401470 () Bool)

(declare-fun valid!1520 (LongMapFixedSize!3924) Bool)

(assert (=> start!75456 (= lt!401470 (valid!1520 thiss!1181))))

(assert (=> start!75456 false))

(assert (=> start!75456 e!494605))

(declare-fun mapIsEmpty!28339 () Bool)

(assert (=> mapIsEmpty!28339 mapRes!28339))

(declare-fun b!887800 () Bool)

(assert (=> b!887800 (= e!494606 tp_is_empty!17871)))

(declare-fun b!887801 () Bool)

(assert (=> b!887801 (= e!494607 (and e!494608 mapRes!28339))))

(declare-fun condMapEmpty!28339 () Bool)

(declare-fun mapDefault!28339 () ValueCell!8454)

(assert (=> b!887801 (= condMapEmpty!28339 (= (arr!24857 (_values!5138 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8454)) mapDefault!28339)))))

(assert (= (and b!887801 condMapEmpty!28339) mapIsEmpty!28339))

(assert (= (and b!887801 (not condMapEmpty!28339)) mapNonEmpty!28339))

(get-info :version)

(assert (= (and mapNonEmpty!28339 ((_ is ValueCellFull!8454) mapValue!28339)) b!887800))

(assert (= (and b!887801 ((_ is ValueCellFull!8454) mapDefault!28339)) b!887798))

(assert (= b!887799 b!887801))

(assert (= start!75456 b!887799))

(declare-fun m!827365 () Bool)

(assert (=> b!887799 m!827365))

(declare-fun m!827367 () Bool)

(assert (=> b!887799 m!827367))

(declare-fun m!827369 () Bool)

(assert (=> mapNonEmpty!28339 m!827369))

(declare-fun m!827371 () Bool)

(assert (=> start!75456 m!827371))

(check-sat (not start!75456) (not b_next!15543) b_and!25797 (not mapNonEmpty!28339) tp_is_empty!17871 (not b!887799))
(check-sat b_and!25797 (not b_next!15543))
