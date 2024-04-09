; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75518 () Bool)

(assert start!75518)

(declare-fun b!888189 () Bool)

(declare-fun b_free!15561 () Bool)

(declare-fun b_next!15561 () Bool)

(assert (=> b!888189 (= b_free!15561 (not b_next!15561))))

(declare-fun tp!54634 () Bool)

(declare-fun b_and!25817 () Bool)

(assert (=> b!888189 (= tp!54634 b_and!25817)))

(declare-fun mapIsEmpty!28370 () Bool)

(declare-fun mapRes!28370 () Bool)

(assert (=> mapIsEmpty!28370 mapRes!28370))

(declare-fun b!888187 () Bool)

(declare-fun e!494897 () Bool)

(declare-fun tp_is_empty!17889 () Bool)

(assert (=> b!888187 (= e!494897 tp_is_empty!17889)))

(declare-fun mapNonEmpty!28370 () Bool)

(declare-fun tp!54635 () Bool)

(declare-fun e!494895 () Bool)

(assert (=> mapNonEmpty!28370 (= mapRes!28370 (and tp!54635 e!494895))))

(declare-datatypes ((V!28817 0))(
  ( (V!28818 (val!8995 Int)) )
))
(declare-datatypes ((ValueCell!8463 0))(
  ( (ValueCellFull!8463 (v!11464 V!28817)) (EmptyCell!8463) )
))
(declare-fun mapValue!28370 () ValueCell!8463)

(declare-fun mapKey!28370 () (_ BitVec 32))

(declare-datatypes ((array!51734 0))(
  ( (array!51735 (arr!24874 (Array (_ BitVec 32) (_ BitVec 64))) (size!25316 (_ BitVec 32))) )
))
(declare-datatypes ((array!51736 0))(
  ( (array!51737 (arr!24875 (Array (_ BitVec 32) ValueCell!8463)) (size!25317 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3942 0))(
  ( (LongMapFixedSize!3943 (defaultEntry!5165 Int) (mask!25576 (_ BitVec 32)) (extraKeys!4859 (_ BitVec 32)) (zeroValue!4963 V!28817) (minValue!4963 V!28817) (_size!2026 (_ BitVec 32)) (_keys!9840 array!51734) (_values!5150 array!51736) (_vacant!2026 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3942)

(declare-fun mapRest!28370 () (Array (_ BitVec 32) ValueCell!8463))

(assert (=> mapNonEmpty!28370 (= (arr!24875 (_values!5150 thiss!1181)) (store mapRest!28370 mapKey!28370 mapValue!28370))))

(declare-fun b!888188 () Bool)

(declare-fun e!494896 () Bool)

(assert (=> b!888188 (= e!494896 (and e!494897 mapRes!28370))))

(declare-fun condMapEmpty!28370 () Bool)

(declare-fun mapDefault!28370 () ValueCell!8463)

(assert (=> b!888188 (= condMapEmpty!28370 (= (arr!24875 (_values!5150 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8463)) mapDefault!28370)))))

(declare-fun e!494899 () Bool)

(declare-fun array_inv!19548 (array!51734) Bool)

(declare-fun array_inv!19549 (array!51736) Bool)

(assert (=> b!888189 (= e!494899 (and tp!54634 tp_is_empty!17889 (array_inv!19548 (_keys!9840 thiss!1181)) (array_inv!19549 (_values!5150 thiss!1181)) e!494896))))

(declare-fun b!888190 () Bool)

(assert (=> b!888190 (= e!494895 tp_is_empty!17889)))

(declare-fun lt!401663 () Bool)

(declare-fun valid!1527 (LongMapFixedSize!3942) Bool)

(assert (=> start!75518 (= lt!401663 (valid!1527 thiss!1181))))

(assert (=> start!75518 false))

(assert (=> start!75518 e!494899))

(assert (= (and b!888188 condMapEmpty!28370) mapIsEmpty!28370))

(assert (= (and b!888188 (not condMapEmpty!28370)) mapNonEmpty!28370))

(get-info :version)

(assert (= (and mapNonEmpty!28370 ((_ is ValueCellFull!8463) mapValue!28370)) b!888190))

(assert (= (and b!888188 ((_ is ValueCellFull!8463) mapDefault!28370)) b!888187))

(assert (= b!888189 b!888188))

(assert (= start!75518 b!888189))

(declare-fun m!827639 () Bool)

(assert (=> mapNonEmpty!28370 m!827639))

(declare-fun m!827641 () Bool)

(assert (=> b!888189 m!827641))

(declare-fun m!827643 () Bool)

(assert (=> b!888189 m!827643))

(declare-fun m!827645 () Bool)

(assert (=> start!75518 m!827645))

(check-sat (not b_next!15561) tp_is_empty!17889 (not mapNonEmpty!28370) (not start!75518) (not b!888189) b_and!25817)
(check-sat b_and!25817 (not b_next!15561))
