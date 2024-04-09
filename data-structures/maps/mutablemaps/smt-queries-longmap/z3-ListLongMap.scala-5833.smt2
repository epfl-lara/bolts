; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75330 () Bool)

(assert start!75330)

(declare-fun b!886950 () Bool)

(declare-fun b_free!15501 () Bool)

(declare-fun b_next!15501 () Bool)

(assert (=> b!886950 (= b_free!15501 (not b_next!15501))))

(declare-fun tp!54437 () Bool)

(declare-fun b_and!25725 () Bool)

(assert (=> b!886950 (= tp!54437 b_and!25725)))

(declare-fun mapIsEmpty!28263 () Bool)

(declare-fun mapRes!28263 () Bool)

(assert (=> mapIsEmpty!28263 mapRes!28263))

(declare-fun res!602072 () Bool)

(declare-fun e!493865 () Bool)

(assert (=> start!75330 (=> (not res!602072) (not e!493865))))

(declare-datatypes ((V!28737 0))(
  ( (V!28738 (val!8965 Int)) )
))
(declare-datatypes ((ValueCell!8433 0))(
  ( (ValueCellFull!8433 (v!11406 V!28737)) (EmptyCell!8433) )
))
(declare-datatypes ((array!51604 0))(
  ( (array!51605 (arr!24814 (Array (_ BitVec 32) ValueCell!8433)) (size!25255 (_ BitVec 32))) )
))
(declare-datatypes ((array!51606 0))(
  ( (array!51607 (arr!24815 (Array (_ BitVec 32) (_ BitVec 64))) (size!25256 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3882 0))(
  ( (LongMapFixedSize!3883 (defaultEntry!5129 Int) (mask!25513 (_ BitVec 32)) (extraKeys!4822 (_ BitVec 32)) (zeroValue!4926 V!28737) (minValue!4926 V!28737) (_size!1996 (_ BitVec 32)) (_keys!9800 array!51606) (_values!5113 array!51604) (_vacant!1996 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1036 0))(
  ( (Cell!1037 (v!11407 LongMapFixedSize!3882)) )
))
(declare-datatypes ((LongMap!1036 0))(
  ( (LongMap!1037 (underlying!529 Cell!1036)) )
))
(declare-fun thiss!833 () LongMap!1036)

(declare-fun valid!1503 (LongMap!1036) Bool)

(assert (=> start!75330 (= res!602072 (valid!1503 thiss!833))))

(assert (=> start!75330 e!493865))

(declare-fun e!493866 () Bool)

(assert (=> start!75330 e!493866))

(assert (=> start!75330 true))

(declare-fun b!886944 () Bool)

(assert (=> b!886944 (= e!493865 false)))

(declare-fun lt!401133 () V!28737)

(declare-fun key!673 () (_ BitVec 64))

(declare-fun apply!387 (LongMapFixedSize!3882 (_ BitVec 64)) V!28737)

(assert (=> b!886944 (= lt!401133 (apply!387 (v!11407 (underlying!529 thiss!833)) key!673))))

(declare-fun b!886945 () Bool)

(declare-fun e!493868 () Bool)

(assert (=> b!886945 (= e!493866 e!493868)))

(declare-fun b!886946 () Bool)

(declare-fun e!493862 () Bool)

(declare-fun tp_is_empty!17829 () Bool)

(assert (=> b!886946 (= e!493862 tp_is_empty!17829)))

(declare-fun b!886947 () Bool)

(declare-fun e!493863 () Bool)

(assert (=> b!886947 (= e!493863 tp_is_empty!17829)))

(declare-fun b!886948 () Bool)

(declare-fun e!493867 () Bool)

(assert (=> b!886948 (= e!493867 (and e!493863 mapRes!28263))))

(declare-fun condMapEmpty!28263 () Bool)

(declare-fun mapDefault!28263 () ValueCell!8433)

(assert (=> b!886948 (= condMapEmpty!28263 (= (arr!24814 (_values!5113 (v!11407 (underlying!529 thiss!833)))) ((as const (Array (_ BitVec 32) ValueCell!8433)) mapDefault!28263)))))

(declare-fun b!886949 () Bool)

(declare-fun e!493861 () Bool)

(assert (=> b!886949 (= e!493868 e!493861)))

(declare-fun mapNonEmpty!28263 () Bool)

(declare-fun tp!54438 () Bool)

(assert (=> mapNonEmpty!28263 (= mapRes!28263 (and tp!54438 e!493862))))

(declare-fun mapKey!28263 () (_ BitVec 32))

(declare-fun mapValue!28263 () ValueCell!8433)

(declare-fun mapRest!28263 () (Array (_ BitVec 32) ValueCell!8433))

(assert (=> mapNonEmpty!28263 (= (arr!24814 (_values!5113 (v!11407 (underlying!529 thiss!833)))) (store mapRest!28263 mapKey!28263 mapValue!28263))))

(declare-fun array_inv!19510 (array!51606) Bool)

(declare-fun array_inv!19511 (array!51604) Bool)

(assert (=> b!886950 (= e!493861 (and tp!54437 tp_is_empty!17829 (array_inv!19510 (_keys!9800 (v!11407 (underlying!529 thiss!833)))) (array_inv!19511 (_values!5113 (v!11407 (underlying!529 thiss!833)))) e!493867))))

(assert (= (and start!75330 res!602072) b!886944))

(assert (= (and b!886948 condMapEmpty!28263) mapIsEmpty!28263))

(assert (= (and b!886948 (not condMapEmpty!28263)) mapNonEmpty!28263))

(get-info :version)

(assert (= (and mapNonEmpty!28263 ((_ is ValueCellFull!8433) mapValue!28263)) b!886946))

(assert (= (and b!886948 ((_ is ValueCellFull!8433) mapDefault!28263)) b!886947))

(assert (= b!886950 b!886948))

(assert (= b!886949 b!886950))

(assert (= b!886945 b!886949))

(assert (= start!75330 b!886945))

(declare-fun m!826807 () Bool)

(assert (=> start!75330 m!826807))

(declare-fun m!826809 () Bool)

(assert (=> b!886944 m!826809))

(declare-fun m!826811 () Bool)

(assert (=> mapNonEmpty!28263 m!826811))

(declare-fun m!826813 () Bool)

(assert (=> b!886950 m!826813))

(declare-fun m!826815 () Bool)

(assert (=> b!886950 m!826815))

(check-sat b_and!25725 (not mapNonEmpty!28263) tp_is_empty!17829 (not b!886944) (not start!75330) (not b_next!15501) (not b!886950))
(check-sat b_and!25725 (not b_next!15501))
