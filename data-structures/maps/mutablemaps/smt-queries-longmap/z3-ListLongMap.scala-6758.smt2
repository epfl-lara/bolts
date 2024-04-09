; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84830 () Bool)

(assert start!84830)

(declare-fun b!991307 () Bool)

(declare-fun e!559082 () Bool)

(declare-fun tp_is_empty!23325 () Bool)

(assert (=> b!991307 (= e!559082 tp_is_empty!23325)))

(declare-fun b!991308 () Bool)

(declare-fun e!559083 () Bool)

(declare-fun e!559085 () Bool)

(declare-fun mapRes!37044 () Bool)

(assert (=> b!991308 (= e!559083 (and e!559085 mapRes!37044))))

(declare-fun condMapEmpty!37044 () Bool)

(declare-datatypes ((V!36083 0))(
  ( (V!36084 (val!11713 Int)) )
))
(declare-datatypes ((ValueCell!11181 0))(
  ( (ValueCellFull!11181 (v!14289 V!36083)) (EmptyCell!11181) )
))
(declare-datatypes ((array!62597 0))(
  ( (array!62598 (arr!30144 (Array (_ BitVec 32) ValueCell!11181)) (size!30624 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62597)

(declare-fun mapDefault!37044 () ValueCell!11181)

(assert (=> b!991308 (= condMapEmpty!37044 (= (arr!30144 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11181)) mapDefault!37044)))))

(declare-fun mapIsEmpty!37044 () Bool)

(assert (=> mapIsEmpty!37044 mapRes!37044))

(declare-fun res!662771 () Bool)

(declare-fun e!559084 () Bool)

(assert (=> start!84830 (=> (not res!662771) (not e!559084))))

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84830 (= res!662771 (validMask!0 mask!2471))))

(assert (=> start!84830 e!559084))

(assert (=> start!84830 true))

(declare-fun array_inv!23143 (array!62597) Bool)

(assert (=> start!84830 (and (array_inv!23143 _values!1551) e!559083)))

(declare-datatypes ((array!62599 0))(
  ( (array!62600 (arr!30145 (Array (_ BitVec 32) (_ BitVec 64))) (size!30625 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62599)

(declare-fun array_inv!23144 (array!62599) Bool)

(assert (=> start!84830 (array_inv!23144 _keys!1945)))

(declare-fun mapNonEmpty!37044 () Bool)

(declare-fun tp!70116 () Bool)

(assert (=> mapNonEmpty!37044 (= mapRes!37044 (and tp!70116 e!559082))))

(declare-fun mapValue!37044 () ValueCell!11181)

(declare-fun mapRest!37044 () (Array (_ BitVec 32) ValueCell!11181))

(declare-fun mapKey!37044 () (_ BitVec 32))

(assert (=> mapNonEmpty!37044 (= (arr!30144 _values!1551) (store mapRest!37044 mapKey!37044 mapValue!37044))))

(declare-fun b!991309 () Bool)

(assert (=> b!991309 (= e!559085 tp_is_empty!23325)))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(declare-fun b!991310 () Bool)

(assert (=> b!991310 (= e!559084 (and (= (size!30624 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30625 _keys!1945) (size!30624 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011) (= (size!30625 _keys!1945) (bvadd #b00000000000000000000000000000001 mask!2471)) (bvsgt #b00000000000000000000000000000000 (size!30625 _keys!1945))))))

(assert (= (and start!84830 res!662771) b!991310))

(assert (= (and b!991308 condMapEmpty!37044) mapIsEmpty!37044))

(assert (= (and b!991308 (not condMapEmpty!37044)) mapNonEmpty!37044))

(get-info :version)

(assert (= (and mapNonEmpty!37044 ((_ is ValueCellFull!11181) mapValue!37044)) b!991307))

(assert (= (and b!991308 ((_ is ValueCellFull!11181) mapDefault!37044)) b!991309))

(assert (= start!84830 b!991308))

(declare-fun m!919361 () Bool)

(assert (=> start!84830 m!919361))

(declare-fun m!919363 () Bool)

(assert (=> start!84830 m!919363))

(declare-fun m!919365 () Bool)

(assert (=> start!84830 m!919365))

(declare-fun m!919367 () Bool)

(assert (=> mapNonEmpty!37044 m!919367))

(check-sat (not start!84830) (not mapNonEmpty!37044) tp_is_empty!23325)
(check-sat)
(get-model)

(declare-fun d!117861 () Bool)

(assert (=> d!117861 (= (validMask!0 mask!2471) (and (or (= mask!2471 #b00000000000000000000000000000111) (= mask!2471 #b00000000000000000000000000001111) (= mask!2471 #b00000000000000000000000000011111) (= mask!2471 #b00000000000000000000000000111111) (= mask!2471 #b00000000000000000000000001111111) (= mask!2471 #b00000000000000000000000011111111) (= mask!2471 #b00000000000000000000000111111111) (= mask!2471 #b00000000000000000000001111111111) (= mask!2471 #b00000000000000000000011111111111) (= mask!2471 #b00000000000000000000111111111111) (= mask!2471 #b00000000000000000001111111111111) (= mask!2471 #b00000000000000000011111111111111) (= mask!2471 #b00000000000000000111111111111111) (= mask!2471 #b00000000000000001111111111111111) (= mask!2471 #b00000000000000011111111111111111) (= mask!2471 #b00000000000000111111111111111111) (= mask!2471 #b00000000000001111111111111111111) (= mask!2471 #b00000000000011111111111111111111) (= mask!2471 #b00000000000111111111111111111111) (= mask!2471 #b00000000001111111111111111111111) (= mask!2471 #b00000000011111111111111111111111) (= mask!2471 #b00000000111111111111111111111111) (= mask!2471 #b00000001111111111111111111111111) (= mask!2471 #b00000011111111111111111111111111) (= mask!2471 #b00000111111111111111111111111111) (= mask!2471 #b00001111111111111111111111111111) (= mask!2471 #b00011111111111111111111111111111) (= mask!2471 #b00111111111111111111111111111111)) (bvsle mask!2471 #b00111111111111111111111111111111)))))

(assert (=> start!84830 d!117861))

(declare-fun d!117863 () Bool)

(assert (=> d!117863 (= (array_inv!23143 _values!1551) (bvsge (size!30624 _values!1551) #b00000000000000000000000000000000))))

(assert (=> start!84830 d!117863))

(declare-fun d!117865 () Bool)

(assert (=> d!117865 (= (array_inv!23144 _keys!1945) (bvsge (size!30625 _keys!1945) #b00000000000000000000000000000000))))

(assert (=> start!84830 d!117865))

(declare-fun condMapEmpty!37050 () Bool)

(declare-fun mapDefault!37050 () ValueCell!11181)

(assert (=> mapNonEmpty!37044 (= condMapEmpty!37050 (= mapRest!37044 ((as const (Array (_ BitVec 32) ValueCell!11181)) mapDefault!37050)))))

(declare-fun e!559106 () Bool)

(declare-fun mapRes!37050 () Bool)

(assert (=> mapNonEmpty!37044 (= tp!70116 (and e!559106 mapRes!37050))))

(declare-fun mapIsEmpty!37050 () Bool)

(assert (=> mapIsEmpty!37050 mapRes!37050))

(declare-fun mapNonEmpty!37050 () Bool)

(declare-fun tp!70122 () Bool)

(declare-fun e!559107 () Bool)

(assert (=> mapNonEmpty!37050 (= mapRes!37050 (and tp!70122 e!559107))))

(declare-fun mapRest!37050 () (Array (_ BitVec 32) ValueCell!11181))

(declare-fun mapKey!37050 () (_ BitVec 32))

(declare-fun mapValue!37050 () ValueCell!11181)

(assert (=> mapNonEmpty!37050 (= mapRest!37044 (store mapRest!37050 mapKey!37050 mapValue!37050))))

(declare-fun b!991330 () Bool)

(assert (=> b!991330 (= e!559106 tp_is_empty!23325)))

(declare-fun b!991329 () Bool)

(assert (=> b!991329 (= e!559107 tp_is_empty!23325)))

(assert (= (and mapNonEmpty!37044 condMapEmpty!37050) mapIsEmpty!37050))

(assert (= (and mapNonEmpty!37044 (not condMapEmpty!37050)) mapNonEmpty!37050))

(assert (= (and mapNonEmpty!37050 ((_ is ValueCellFull!11181) mapValue!37050)) b!991329))

(assert (= (and mapNonEmpty!37044 ((_ is ValueCellFull!11181) mapDefault!37050)) b!991330))

(declare-fun m!919377 () Bool)

(assert (=> mapNonEmpty!37050 m!919377))

(check-sat (not mapNonEmpty!37050) tp_is_empty!23325)
(check-sat)
