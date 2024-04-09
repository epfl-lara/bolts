; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112928 () Bool)

(assert start!112928)

(declare-fun mapNonEmpty!57172 () Bool)

(declare-fun mapRes!57172 () Bool)

(declare-fun tp!108872 () Bool)

(declare-fun e!762260 () Bool)

(assert (=> mapNonEmpty!57172 (= mapRes!57172 (and tp!108872 e!762260))))

(declare-datatypes ((V!54419 0))(
  ( (V!54420 (val!18568 Int)) )
))
(declare-datatypes ((ValueCell!17595 0))(
  ( (ValueCellFull!17595 (v!21213 V!54419)) (EmptyCell!17595) )
))
(declare-fun mapValue!57172 () ValueCell!17595)

(declare-datatypes ((array!90807 0))(
  ( (array!90808 (arr!43860 (Array (_ BitVec 32) ValueCell!17595)) (size!44411 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90807)

(declare-fun mapKey!57172 () (_ BitVec 32))

(declare-fun mapRest!57172 () (Array (_ BitVec 32) ValueCell!17595))

(assert (=> mapNonEmpty!57172 (= (arr!43860 _values!1303) (store mapRest!57172 mapKey!57172 mapValue!57172))))

(declare-fun b!1338560 () Bool)

(declare-fun e!762259 () Bool)

(declare-fun e!762257 () Bool)

(assert (=> b!1338560 (= e!762259 (and e!762257 mapRes!57172))))

(declare-fun condMapEmpty!57172 () Bool)

(declare-fun mapDefault!57172 () ValueCell!17595)

(assert (=> b!1338560 (= condMapEmpty!57172 (= (arr!43860 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17595)) mapDefault!57172)))))

(declare-fun b!1338561 () Bool)

(declare-fun tp_is_empty!36987 () Bool)

(assert (=> b!1338561 (= e!762257 tp_is_empty!36987)))

(declare-fun b!1338562 () Bool)

(assert (=> b!1338562 (= e!762260 tp_is_empty!36987)))

(declare-fun res!888183 () Bool)

(declare-fun e!762258 () Bool)

(assert (=> start!112928 (=> (not res!888183) (not e!762258))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112928 (= res!888183 (validMask!0 mask!1977))))

(assert (=> start!112928 e!762258))

(assert (=> start!112928 true))

(declare-fun array_inv!33001 (array!90807) Bool)

(assert (=> start!112928 (and (array_inv!33001 _values!1303) e!762259)))

(declare-datatypes ((array!90809 0))(
  ( (array!90810 (arr!43861 (Array (_ BitVec 32) (_ BitVec 64))) (size!44412 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90809)

(declare-fun array_inv!33002 (array!90809) Bool)

(assert (=> start!112928 (array_inv!33002 _keys!1571)))

(declare-fun b!1338563 () Bool)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1338563 (= e!762258 (and (= (size!44411 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44412 _keys!1571) (size!44411 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011) (= (size!44412 _keys!1571) (bvadd #b00000000000000000000000000000001 mask!1977)) (bvsgt #b00000000000000000000000000000000 (size!44412 _keys!1571))))))

(declare-fun mapIsEmpty!57172 () Bool)

(assert (=> mapIsEmpty!57172 mapRes!57172))

(assert (= (and start!112928 res!888183) b!1338563))

(assert (= (and b!1338560 condMapEmpty!57172) mapIsEmpty!57172))

(assert (= (and b!1338560 (not condMapEmpty!57172)) mapNonEmpty!57172))

(get-info :version)

(assert (= (and mapNonEmpty!57172 ((_ is ValueCellFull!17595) mapValue!57172)) b!1338562))

(assert (= (and b!1338560 ((_ is ValueCellFull!17595) mapDefault!57172)) b!1338561))

(assert (= start!112928 b!1338560))

(declare-fun m!1226945 () Bool)

(assert (=> mapNonEmpty!57172 m!1226945))

(declare-fun m!1226947 () Bool)

(assert (=> start!112928 m!1226947))

(declare-fun m!1226949 () Bool)

(assert (=> start!112928 m!1226949))

(declare-fun m!1226951 () Bool)

(assert (=> start!112928 m!1226951))

(check-sat (not start!112928) (not mapNonEmpty!57172) tp_is_empty!36987)
(check-sat)
(get-model)

(declare-fun d!143989 () Bool)

(assert (=> d!143989 (= (validMask!0 mask!1977) (and (or (= mask!1977 #b00000000000000000000000000000111) (= mask!1977 #b00000000000000000000000000001111) (= mask!1977 #b00000000000000000000000000011111) (= mask!1977 #b00000000000000000000000000111111) (= mask!1977 #b00000000000000000000000001111111) (= mask!1977 #b00000000000000000000000011111111) (= mask!1977 #b00000000000000000000000111111111) (= mask!1977 #b00000000000000000000001111111111) (= mask!1977 #b00000000000000000000011111111111) (= mask!1977 #b00000000000000000000111111111111) (= mask!1977 #b00000000000000000001111111111111) (= mask!1977 #b00000000000000000011111111111111) (= mask!1977 #b00000000000000000111111111111111) (= mask!1977 #b00000000000000001111111111111111) (= mask!1977 #b00000000000000011111111111111111) (= mask!1977 #b00000000000000111111111111111111) (= mask!1977 #b00000000000001111111111111111111) (= mask!1977 #b00000000000011111111111111111111) (= mask!1977 #b00000000000111111111111111111111) (= mask!1977 #b00000000001111111111111111111111) (= mask!1977 #b00000000011111111111111111111111) (= mask!1977 #b00000000111111111111111111111111) (= mask!1977 #b00000001111111111111111111111111) (= mask!1977 #b00000011111111111111111111111111) (= mask!1977 #b00000111111111111111111111111111) (= mask!1977 #b00001111111111111111111111111111) (= mask!1977 #b00011111111111111111111111111111) (= mask!1977 #b00111111111111111111111111111111)) (bvsle mask!1977 #b00111111111111111111111111111111)))))

(assert (=> start!112928 d!143989))

(declare-fun d!143991 () Bool)

(assert (=> d!143991 (= (array_inv!33001 _values!1303) (bvsge (size!44411 _values!1303) #b00000000000000000000000000000000))))

(assert (=> start!112928 d!143991))

(declare-fun d!143993 () Bool)

(assert (=> d!143993 (= (array_inv!33002 _keys!1571) (bvsge (size!44412 _keys!1571) #b00000000000000000000000000000000))))

(assert (=> start!112928 d!143993))

(declare-fun b!1338582 () Bool)

(declare-fun e!762282 () Bool)

(assert (=> b!1338582 (= e!762282 tp_is_empty!36987)))

(declare-fun mapIsEmpty!57178 () Bool)

(declare-fun mapRes!57178 () Bool)

(assert (=> mapIsEmpty!57178 mapRes!57178))

(declare-fun condMapEmpty!57178 () Bool)

(declare-fun mapDefault!57178 () ValueCell!17595)

(assert (=> mapNonEmpty!57172 (= condMapEmpty!57178 (= mapRest!57172 ((as const (Array (_ BitVec 32) ValueCell!17595)) mapDefault!57178)))))

(declare-fun e!762281 () Bool)

(assert (=> mapNonEmpty!57172 (= tp!108872 (and e!762281 mapRes!57178))))

(declare-fun mapNonEmpty!57178 () Bool)

(declare-fun tp!108878 () Bool)

(assert (=> mapNonEmpty!57178 (= mapRes!57178 (and tp!108878 e!762282))))

(declare-fun mapValue!57178 () ValueCell!17595)

(declare-fun mapRest!57178 () (Array (_ BitVec 32) ValueCell!17595))

(declare-fun mapKey!57178 () (_ BitVec 32))

(assert (=> mapNonEmpty!57178 (= mapRest!57172 (store mapRest!57178 mapKey!57178 mapValue!57178))))

(declare-fun b!1338583 () Bool)

(assert (=> b!1338583 (= e!762281 tp_is_empty!36987)))

(assert (= (and mapNonEmpty!57172 condMapEmpty!57178) mapIsEmpty!57178))

(assert (= (and mapNonEmpty!57172 (not condMapEmpty!57178)) mapNonEmpty!57178))

(assert (= (and mapNonEmpty!57178 ((_ is ValueCellFull!17595) mapValue!57178)) b!1338582))

(assert (= (and mapNonEmpty!57172 ((_ is ValueCellFull!17595) mapDefault!57178)) b!1338583))

(declare-fun m!1226961 () Bool)

(assert (=> mapNonEmpty!57178 m!1226961))

(check-sat (not mapNonEmpty!57178) tp_is_empty!36987)
(check-sat)
