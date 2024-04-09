; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75580 () Bool)

(assert start!75580)

(declare-fun b!888576 () Bool)

(declare-fun b_free!15579 () Bool)

(declare-fun b_next!15579 () Bool)

(assert (=> b!888576 (= b_free!15579 (not b_next!15579))))

(declare-fun tp!54692 () Bool)

(declare-fun b_and!25837 () Bool)

(assert (=> b!888576 (= tp!54692 b_and!25837)))

(declare-fun e!495189 () Bool)

(declare-fun e!495187 () Bool)

(declare-fun tp_is_empty!17907 () Bool)

(declare-datatypes ((array!51772 0))(
  ( (array!51773 (arr!24892 (Array (_ BitVec 32) (_ BitVec 64))) (size!25335 (_ BitVec 32))) )
))
(declare-datatypes ((V!28841 0))(
  ( (V!28842 (val!9004 Int)) )
))
(declare-datatypes ((ValueCell!8472 0))(
  ( (ValueCellFull!8472 (v!11474 V!28841)) (EmptyCell!8472) )
))
(declare-datatypes ((array!51774 0))(
  ( (array!51775 (arr!24893 (Array (_ BitVec 32) ValueCell!8472)) (size!25336 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3960 0))(
  ( (LongMapFixedSize!3961 (defaultEntry!5177 Int) (mask!25598 (_ BitVec 32)) (extraKeys!4871 (_ BitVec 32)) (zeroValue!4975 V!28841) (minValue!4975 V!28841) (_size!2035 (_ BitVec 32)) (_keys!9854 array!51772) (_values!5162 array!51774) (_vacant!2035 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!3960)

(declare-fun array_inv!19558 (array!51772) Bool)

(declare-fun array_inv!19559 (array!51774) Bool)

(assert (=> b!888576 (= e!495189 (and tp!54692 tp_is_empty!17907 (array_inv!19558 (_keys!9854 thiss!1181)) (array_inv!19559 (_values!5162 thiss!1181)) e!495187))))

(declare-fun mapIsEmpty!28401 () Bool)

(declare-fun mapRes!28401 () Bool)

(assert (=> mapIsEmpty!28401 mapRes!28401))

(declare-fun b!888577 () Bool)

(declare-fun e!495188 () Bool)

(assert (=> b!888577 (= e!495188 tp_is_empty!17907)))

(declare-fun b!888578 () Bool)

(assert (=> b!888578 (= e!495187 (and e!495188 mapRes!28401))))

(declare-fun condMapEmpty!28401 () Bool)

(declare-fun mapDefault!28401 () ValueCell!8472)

(assert (=> b!888578 (= condMapEmpty!28401 (= (arr!24893 (_values!5162 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8472)) mapDefault!28401)))))

(declare-fun mapNonEmpty!28401 () Bool)

(declare-fun tp!54693 () Bool)

(declare-fun e!495190 () Bool)

(assert (=> mapNonEmpty!28401 (= mapRes!28401 (and tp!54693 e!495190))))

(declare-fun mapRest!28401 () (Array (_ BitVec 32) ValueCell!8472))

(declare-fun mapKey!28401 () (_ BitVec 32))

(declare-fun mapValue!28401 () ValueCell!8472)

(assert (=> mapNonEmpty!28401 (= (arr!24893 (_values!5162 thiss!1181)) (store mapRest!28401 mapKey!28401 mapValue!28401))))

(declare-fun b!888579 () Bool)

(assert (=> b!888579 (= e!495190 tp_is_empty!17907)))

(declare-fun lt!401856 () Bool)

(declare-fun valid!1532 (LongMapFixedSize!3960) Bool)

(assert (=> start!75580 (= lt!401856 (valid!1532 thiss!1181))))

(assert (=> start!75580 false))

(assert (=> start!75580 e!495189))

(assert (= (and b!888578 condMapEmpty!28401) mapIsEmpty!28401))

(assert (= (and b!888578 (not condMapEmpty!28401)) mapNonEmpty!28401))

(get-info :version)

(assert (= (and mapNonEmpty!28401 ((_ is ValueCellFull!8472) mapValue!28401)) b!888579))

(assert (= (and b!888578 ((_ is ValueCellFull!8472) mapDefault!28401)) b!888577))

(assert (= b!888576 b!888578))

(assert (= start!75580 b!888576))

(declare-fun m!827913 () Bool)

(assert (=> b!888576 m!827913))

(declare-fun m!827915 () Bool)

(assert (=> b!888576 m!827915))

(declare-fun m!827917 () Bool)

(assert (=> mapNonEmpty!28401 m!827917))

(declare-fun m!827919 () Bool)

(assert (=> start!75580 m!827919))

(check-sat (not mapNonEmpty!28401) (not b!888576) (not b_next!15579) tp_is_empty!17907 (not start!75580) b_and!25837)
(check-sat b_and!25837 (not b_next!15579))
