; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75732 () Bool)

(assert start!75732)

(declare-fun b!889943 () Bool)

(declare-fun b_free!15675 () Bool)

(declare-fun b_next!15675 () Bool)

(assert (=> b!889943 (= b_free!15675 (not b_next!15675))))

(declare-fun tp!54995 () Bool)

(declare-fun b_and!25933 () Bool)

(assert (=> b!889943 (= tp!54995 b_and!25933)))

(declare-fun mapNonEmpty!28559 () Bool)

(declare-fun mapRes!28559 () Bool)

(declare-fun tp!54994 () Bool)

(declare-fun e!496268 () Bool)

(assert (=> mapNonEmpty!28559 (= mapRes!28559 (and tp!54994 e!496268))))

(declare-datatypes ((V!28969 0))(
  ( (V!28970 (val!9052 Int)) )
))
(declare-datatypes ((ValueCell!8520 0))(
  ( (ValueCellFull!8520 (v!11524 V!28969)) (EmptyCell!8520) )
))
(declare-fun mapValue!28559 () ValueCell!8520)

(declare-fun mapRest!28559 () (Array (_ BitVec 32) ValueCell!8520))

(declare-datatypes ((array!51972 0))(
  ( (array!51973 (arr!24988 (Array (_ BitVec 32) (_ BitVec 64))) (size!25433 (_ BitVec 32))) )
))
(declare-datatypes ((array!51974 0))(
  ( (array!51975 (arr!24989 (Array (_ BitVec 32) ValueCell!8520)) (size!25434 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4056 0))(
  ( (LongMapFixedSize!4057 (defaultEntry!5225 Int) (mask!25683 (_ BitVec 32)) (extraKeys!4919 (_ BitVec 32)) (zeroValue!5023 V!28969) (minValue!5023 V!28969) (_size!2083 (_ BitVec 32)) (_keys!9904 array!51972) (_values!5210 array!51974) (_vacant!2083 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4056)

(declare-fun mapKey!28559 () (_ BitVec 32))

(assert (=> mapNonEmpty!28559 (= (arr!24989 (_values!5210 thiss!1181)) (store mapRest!28559 mapKey!28559 mapValue!28559))))

(declare-fun b!889941 () Bool)

(declare-fun e!496263 () Bool)

(declare-fun tp_is_empty!18003 () Bool)

(assert (=> b!889941 (= e!496263 tp_is_empty!18003)))

(declare-fun b!889942 () Bool)

(declare-fun res!603146 () Bool)

(declare-fun e!496267 () Bool)

(assert (=> b!889942 (=> (not res!603146) (not e!496267))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!889942 (= res!603146 (not (= key!785 (bvneg key!785))))))

(declare-fun mapIsEmpty!28559 () Bool)

(assert (=> mapIsEmpty!28559 mapRes!28559))

(declare-fun e!496264 () Bool)

(declare-fun e!496262 () Bool)

(declare-fun array_inv!19622 (array!51972) Bool)

(declare-fun array_inv!19623 (array!51974) Bool)

(assert (=> b!889943 (= e!496264 (and tp!54995 tp_is_empty!18003 (array_inv!19622 (_keys!9904 thiss!1181)) (array_inv!19623 (_values!5210 thiss!1181)) e!496262))))

(declare-fun b!889944 () Bool)

(declare-fun e!496266 () Bool)

(declare-datatypes ((SeekEntryResult!8781 0))(
  ( (MissingZero!8781 (index!37494 (_ BitVec 32))) (Found!8781 (index!37495 (_ BitVec 32))) (Intermediate!8781 (undefined!9593 Bool) (index!37496 (_ BitVec 32)) (x!75582 (_ BitVec 32))) (Undefined!8781) (MissingVacant!8781 (index!37497 (_ BitVec 32))) )
))
(declare-fun lt!402128 () SeekEntryResult!8781)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!889944 (= e!496266 (inRange!0 (index!37495 lt!402128) (mask!25683 thiss!1181)))))

(declare-fun res!603145 () Bool)

(assert (=> start!75732 (=> (not res!603145) (not e!496267))))

(declare-fun valid!1566 (LongMapFixedSize!4056) Bool)

(assert (=> start!75732 (= res!603145 (valid!1566 thiss!1181))))

(assert (=> start!75732 e!496267))

(assert (=> start!75732 e!496264))

(assert (=> start!75732 true))

(declare-fun b!889945 () Bool)

(assert (=> b!889945 (= e!496267 (not true))))

(assert (=> b!889945 e!496266))

(declare-fun res!603147 () Bool)

(assert (=> b!889945 (=> res!603147 e!496266)))

(get-info :version)

(assert (=> b!889945 (= res!603147 (not ((_ is Found!8781) lt!402128)))))

(declare-datatypes ((Unit!30253 0))(
  ( (Unit!30254) )
))
(declare-fun lt!402129 () Unit!30253)

(declare-fun lemmaSeekEntryGivesInRangeIndex!6 (array!51972 array!51974 (_ BitVec 32) (_ BitVec 32) V!28969 V!28969 (_ BitVec 64)) Unit!30253)

(assert (=> b!889945 (= lt!402129 (lemmaSeekEntryGivesInRangeIndex!6 (_keys!9904 thiss!1181) (_values!5210 thiss!1181) (mask!25683 thiss!1181) (extraKeys!4919 thiss!1181) (zeroValue!5023 thiss!1181) (minValue!5023 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!51972 (_ BitVec 32)) SeekEntryResult!8781)

(assert (=> b!889945 (= lt!402128 (seekEntry!0 key!785 (_keys!9904 thiss!1181) (mask!25683 thiss!1181)))))

(declare-fun b!889946 () Bool)

(assert (=> b!889946 (= e!496268 tp_is_empty!18003)))

(declare-fun b!889947 () Bool)

(assert (=> b!889947 (= e!496262 (and e!496263 mapRes!28559))))

(declare-fun condMapEmpty!28559 () Bool)

(declare-fun mapDefault!28559 () ValueCell!8520)

(assert (=> b!889947 (= condMapEmpty!28559 (= (arr!24989 (_values!5210 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8520)) mapDefault!28559)))))

(assert (= (and start!75732 res!603145) b!889942))

(assert (= (and b!889942 res!603146) b!889945))

(assert (= (and b!889945 (not res!603147)) b!889944))

(assert (= (and b!889947 condMapEmpty!28559) mapIsEmpty!28559))

(assert (= (and b!889947 (not condMapEmpty!28559)) mapNonEmpty!28559))

(assert (= (and mapNonEmpty!28559 ((_ is ValueCellFull!8520) mapValue!28559)) b!889946))

(assert (= (and b!889947 ((_ is ValueCellFull!8520) mapDefault!28559)) b!889941))

(assert (= b!889943 b!889947))

(assert (= start!75732 b!889943))

(declare-fun m!828705 () Bool)

(assert (=> start!75732 m!828705))

(declare-fun m!828707 () Bool)

(assert (=> b!889945 m!828707))

(declare-fun m!828709 () Bool)

(assert (=> b!889945 m!828709))

(declare-fun m!828711 () Bool)

(assert (=> mapNonEmpty!28559 m!828711))

(declare-fun m!828713 () Bool)

(assert (=> b!889943 m!828713))

(declare-fun m!828715 () Bool)

(assert (=> b!889943 m!828715))

(declare-fun m!828717 () Bool)

(assert (=> b!889944 m!828717))

(check-sat b_and!25933 (not start!75732) tp_is_empty!18003 (not b!889945) (not b!889943) (not b!889944) (not mapNonEmpty!28559) (not b_next!15675))
(check-sat b_and!25933 (not b_next!15675))
