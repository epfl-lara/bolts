; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112056 () Bool)

(assert start!112056)

(declare-fun b!1327196 () Bool)

(declare-fun e!756524 () Bool)

(declare-fun tp_is_empty!36369 () Bool)

(assert (=> b!1327196 (= e!756524 tp_is_empty!36369)))

(declare-fun mapNonEmpty!56212 () Bool)

(declare-fun mapRes!56212 () Bool)

(declare-fun tp!107120 () Bool)

(declare-fun e!756520 () Bool)

(assert (=> mapNonEmpty!56212 (= mapRes!56212 (and tp!107120 e!756520))))

(declare-datatypes ((V!53595 0))(
  ( (V!53596 (val!18259 Int)) )
))
(declare-datatypes ((ValueCell!17286 0))(
  ( (ValueCellFull!17286 (v!20893 V!53595)) (EmptyCell!17286) )
))
(declare-datatypes ((array!89605 0))(
  ( (array!89606 (arr!43269 (Array (_ BitVec 32) ValueCell!17286)) (size!43820 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89605)

(declare-fun mapRest!56212 () (Array (_ BitVec 32) ValueCell!17286))

(declare-fun mapKey!56212 () (_ BitVec 32))

(declare-fun mapValue!56212 () ValueCell!17286)

(assert (=> mapNonEmpty!56212 (= (arr!43269 _values!1320) (store mapRest!56212 mapKey!56212 mapValue!56212))))

(declare-fun res!880815 () Bool)

(declare-fun e!756521 () Bool)

(assert (=> start!112056 (=> (not res!880815) (not e!756521))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112056 (= res!880815 (validMask!0 mask!1998))))

(assert (=> start!112056 e!756521))

(assert (=> start!112056 true))

(declare-fun e!756523 () Bool)

(declare-fun array_inv!32601 (array!89605) Bool)

(assert (=> start!112056 (and (array_inv!32601 _values!1320) e!756523)))

(declare-datatypes ((array!89607 0))(
  ( (array!89608 (arr!43270 (Array (_ BitVec 32) (_ BitVec 64))) (size!43821 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89607)

(declare-fun array_inv!32602 (array!89607) Bool)

(assert (=> start!112056 (array_inv!32602 _keys!1590)))

(declare-fun b!1327197 () Bool)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1327197 (= e!756521 (and (= (size!43820 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43821 _keys!1590) (size!43820 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011) (= (size!43821 _keys!1590) (bvadd #b00000000000000000000000000000001 mask!1998)) (bvsgt #b00000000000000000000000000000000 (size!43821 _keys!1590))))))

(declare-fun b!1327198 () Bool)

(assert (=> b!1327198 (= e!756523 (and e!756524 mapRes!56212))))

(declare-fun condMapEmpty!56212 () Bool)

(declare-fun mapDefault!56212 () ValueCell!17286)

(assert (=> b!1327198 (= condMapEmpty!56212 (= (arr!43269 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17286)) mapDefault!56212)))))

(declare-fun b!1327199 () Bool)

(assert (=> b!1327199 (= e!756520 tp_is_empty!36369)))

(declare-fun mapIsEmpty!56212 () Bool)

(assert (=> mapIsEmpty!56212 mapRes!56212))

(assert (= (and start!112056 res!880815) b!1327197))

(assert (= (and b!1327198 condMapEmpty!56212) mapIsEmpty!56212))

(assert (= (and b!1327198 (not condMapEmpty!56212)) mapNonEmpty!56212))

(get-info :version)

(assert (= (and mapNonEmpty!56212 ((_ is ValueCellFull!17286) mapValue!56212)) b!1327199))

(assert (= (and b!1327198 ((_ is ValueCellFull!17286) mapDefault!56212)) b!1327196))

(assert (= start!112056 b!1327198))

(declare-fun m!1216621 () Bool)

(assert (=> mapNonEmpty!56212 m!1216621))

(declare-fun m!1216623 () Bool)

(assert (=> start!112056 m!1216623))

(declare-fun m!1216625 () Bool)

(assert (=> start!112056 m!1216625))

(declare-fun m!1216627 () Bool)

(assert (=> start!112056 m!1216627))

(check-sat (not start!112056) (not mapNonEmpty!56212) tp_is_empty!36369)
(check-sat)
(get-model)

(declare-fun d!143215 () Bool)

(assert (=> d!143215 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112056 d!143215))

(declare-fun d!143217 () Bool)

(assert (=> d!143217 (= (array_inv!32601 _values!1320) (bvsge (size!43820 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112056 d!143217))

(declare-fun d!143219 () Bool)

(assert (=> d!143219 (= (array_inv!32602 _keys!1590) (bvsge (size!43821 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112056 d!143219))

(declare-fun b!1327218 () Bool)

(declare-fun e!756544 () Bool)

(assert (=> b!1327218 (= e!756544 tp_is_empty!36369)))

(declare-fun condMapEmpty!56218 () Bool)

(declare-fun mapDefault!56218 () ValueCell!17286)

(assert (=> mapNonEmpty!56212 (= condMapEmpty!56218 (= mapRest!56212 ((as const (Array (_ BitVec 32) ValueCell!17286)) mapDefault!56218)))))

(declare-fun e!756545 () Bool)

(declare-fun mapRes!56218 () Bool)

(assert (=> mapNonEmpty!56212 (= tp!107120 (and e!756545 mapRes!56218))))

(declare-fun mapNonEmpty!56218 () Bool)

(declare-fun tp!107126 () Bool)

(assert (=> mapNonEmpty!56218 (= mapRes!56218 (and tp!107126 e!756544))))

(declare-fun mapRest!56218 () (Array (_ BitVec 32) ValueCell!17286))

(declare-fun mapKey!56218 () (_ BitVec 32))

(declare-fun mapValue!56218 () ValueCell!17286)

(assert (=> mapNonEmpty!56218 (= mapRest!56212 (store mapRest!56218 mapKey!56218 mapValue!56218))))

(declare-fun mapIsEmpty!56218 () Bool)

(assert (=> mapIsEmpty!56218 mapRes!56218))

(declare-fun b!1327219 () Bool)

(assert (=> b!1327219 (= e!756545 tp_is_empty!36369)))

(assert (= (and mapNonEmpty!56212 condMapEmpty!56218) mapIsEmpty!56218))

(assert (= (and mapNonEmpty!56212 (not condMapEmpty!56218)) mapNonEmpty!56218))

(assert (= (and mapNonEmpty!56218 ((_ is ValueCellFull!17286) mapValue!56218)) b!1327218))

(assert (= (and mapNonEmpty!56212 ((_ is ValueCellFull!17286) mapDefault!56218)) b!1327219))

(declare-fun m!1216637 () Bool)

(assert (=> mapNonEmpty!56218 m!1216637))

(check-sat (not mapNonEmpty!56218) tp_is_empty!36369)
(check-sat)
