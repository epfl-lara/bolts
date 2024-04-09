; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107962 () Bool)

(assert start!107962)

(declare-fun res!847705 () Bool)

(declare-fun e!727955 () Bool)

(assert (=> start!107962 (=> (not res!847705) (not e!727955))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107962 (= res!847705 (validMask!0 mask!1805))))

(assert (=> start!107962 e!727955))

(assert (=> start!107962 true))

(declare-datatypes ((V!49427 0))(
  ( (V!49428 (val!16696 Int)) )
))
(declare-datatypes ((ValueCell!15723 0))(
  ( (ValueCellFull!15723 (v!19290 V!49427)) (EmptyCell!15723) )
))
(declare-datatypes ((array!83533 0))(
  ( (array!83534 (arr!40279 (Array (_ BitVec 32) ValueCell!15723)) (size!40830 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83533)

(declare-fun e!727958 () Bool)

(declare-fun array_inv!30567 (array!83533) Bool)

(assert (=> start!107962 (and (array_inv!30567 _values!1187) e!727958)))

(declare-datatypes ((array!83535 0))(
  ( (array!83536 (arr!40280 (Array (_ BitVec 32) (_ BitVec 64))) (size!40831 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83535)

(declare-fun array_inv!30568 (array!83535) Bool)

(assert (=> start!107962 (array_inv!30568 _keys!1427)))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun b!1275190 () Bool)

(assert (=> b!1275190 (= e!727955 (and (= (size!40830 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40831 _keys!1427) (size!40830 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011) (= (size!40831 _keys!1427) (bvadd #b00000000000000000000000000000001 mask!1805)) (bvsgt #b00000000000000000000000000000000 (size!40831 _keys!1427))))))

(declare-fun b!1275191 () Bool)

(declare-fun e!727957 () Bool)

(declare-fun mapRes!51377 () Bool)

(assert (=> b!1275191 (= e!727958 (and e!727957 mapRes!51377))))

(declare-fun condMapEmpty!51377 () Bool)

(declare-fun mapDefault!51377 () ValueCell!15723)

(assert (=> b!1275191 (= condMapEmpty!51377 (= (arr!40279 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15723)) mapDefault!51377)))))

(declare-fun b!1275192 () Bool)

(declare-fun e!727956 () Bool)

(declare-fun tp_is_empty!33243 () Bool)

(assert (=> b!1275192 (= e!727956 tp_is_empty!33243)))

(declare-fun b!1275193 () Bool)

(assert (=> b!1275193 (= e!727957 tp_is_empty!33243)))

(declare-fun mapIsEmpty!51377 () Bool)

(assert (=> mapIsEmpty!51377 mapRes!51377))

(declare-fun mapNonEmpty!51377 () Bool)

(declare-fun tp!98136 () Bool)

(assert (=> mapNonEmpty!51377 (= mapRes!51377 (and tp!98136 e!727956))))

(declare-fun mapValue!51377 () ValueCell!15723)

(declare-fun mapKey!51377 () (_ BitVec 32))

(declare-fun mapRest!51377 () (Array (_ BitVec 32) ValueCell!15723))

(assert (=> mapNonEmpty!51377 (= (arr!40279 _values!1187) (store mapRest!51377 mapKey!51377 mapValue!51377))))

(assert (= (and start!107962 res!847705) b!1275190))

(assert (= (and b!1275191 condMapEmpty!51377) mapIsEmpty!51377))

(assert (= (and b!1275191 (not condMapEmpty!51377)) mapNonEmpty!51377))

(get-info :version)

(assert (= (and mapNonEmpty!51377 ((_ is ValueCellFull!15723) mapValue!51377)) b!1275192))

(assert (= (and b!1275191 ((_ is ValueCellFull!15723) mapDefault!51377)) b!1275193))

(assert (= start!107962 b!1275191))

(declare-fun m!1171545 () Bool)

(assert (=> start!107962 m!1171545))

(declare-fun m!1171547 () Bool)

(assert (=> start!107962 m!1171547))

(declare-fun m!1171549 () Bool)

(assert (=> start!107962 m!1171549))

(declare-fun m!1171551 () Bool)

(assert (=> mapNonEmpty!51377 m!1171551))

(check-sat (not start!107962) (not mapNonEmpty!51377) tp_is_empty!33243)
(check-sat)
(get-model)

(declare-fun d!140257 () Bool)

(assert (=> d!140257 (= (validMask!0 mask!1805) (and (or (= mask!1805 #b00000000000000000000000000000111) (= mask!1805 #b00000000000000000000000000001111) (= mask!1805 #b00000000000000000000000000011111) (= mask!1805 #b00000000000000000000000000111111) (= mask!1805 #b00000000000000000000000001111111) (= mask!1805 #b00000000000000000000000011111111) (= mask!1805 #b00000000000000000000000111111111) (= mask!1805 #b00000000000000000000001111111111) (= mask!1805 #b00000000000000000000011111111111) (= mask!1805 #b00000000000000000000111111111111) (= mask!1805 #b00000000000000000001111111111111) (= mask!1805 #b00000000000000000011111111111111) (= mask!1805 #b00000000000000000111111111111111) (= mask!1805 #b00000000000000001111111111111111) (= mask!1805 #b00000000000000011111111111111111) (= mask!1805 #b00000000000000111111111111111111) (= mask!1805 #b00000000000001111111111111111111) (= mask!1805 #b00000000000011111111111111111111) (= mask!1805 #b00000000000111111111111111111111) (= mask!1805 #b00000000001111111111111111111111) (= mask!1805 #b00000000011111111111111111111111) (= mask!1805 #b00000000111111111111111111111111) (= mask!1805 #b00000001111111111111111111111111) (= mask!1805 #b00000011111111111111111111111111) (= mask!1805 #b00000111111111111111111111111111) (= mask!1805 #b00001111111111111111111111111111) (= mask!1805 #b00011111111111111111111111111111) (= mask!1805 #b00111111111111111111111111111111)) (bvsle mask!1805 #b00111111111111111111111111111111)))))

(assert (=> start!107962 d!140257))

(declare-fun d!140259 () Bool)

(assert (=> d!140259 (= (array_inv!30567 _values!1187) (bvsge (size!40830 _values!1187) #b00000000000000000000000000000000))))

(assert (=> start!107962 d!140259))

(declare-fun d!140261 () Bool)

(assert (=> d!140261 (= (array_inv!30568 _keys!1427) (bvsge (size!40831 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> start!107962 d!140261))

(declare-fun condMapEmpty!51383 () Bool)

(declare-fun mapDefault!51383 () ValueCell!15723)

(assert (=> mapNonEmpty!51377 (= condMapEmpty!51383 (= mapRest!51377 ((as const (Array (_ BitVec 32) ValueCell!15723)) mapDefault!51383)))))

(declare-fun e!727980 () Bool)

(declare-fun mapRes!51383 () Bool)

(assert (=> mapNonEmpty!51377 (= tp!98136 (and e!727980 mapRes!51383))))

(declare-fun b!1275213 () Bool)

(assert (=> b!1275213 (= e!727980 tp_is_empty!33243)))

(declare-fun b!1275212 () Bool)

(declare-fun e!727979 () Bool)

(assert (=> b!1275212 (= e!727979 tp_is_empty!33243)))

(declare-fun mapIsEmpty!51383 () Bool)

(assert (=> mapIsEmpty!51383 mapRes!51383))

(declare-fun mapNonEmpty!51383 () Bool)

(declare-fun tp!98142 () Bool)

(assert (=> mapNonEmpty!51383 (= mapRes!51383 (and tp!98142 e!727979))))

(declare-fun mapValue!51383 () ValueCell!15723)

(declare-fun mapKey!51383 () (_ BitVec 32))

(declare-fun mapRest!51383 () (Array (_ BitVec 32) ValueCell!15723))

(assert (=> mapNonEmpty!51383 (= mapRest!51377 (store mapRest!51383 mapKey!51383 mapValue!51383))))

(assert (= (and mapNonEmpty!51377 condMapEmpty!51383) mapIsEmpty!51383))

(assert (= (and mapNonEmpty!51377 (not condMapEmpty!51383)) mapNonEmpty!51383))

(assert (= (and mapNonEmpty!51383 ((_ is ValueCellFull!15723) mapValue!51383)) b!1275212))

(assert (= (and mapNonEmpty!51377 ((_ is ValueCellFull!15723) mapDefault!51383)) b!1275213))

(declare-fun m!1171561 () Bool)

(assert (=> mapNonEmpty!51383 m!1171561))

(check-sat (not mapNonEmpty!51383) tp_is_empty!33243)
(check-sat)
