; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72286 () Bool)

(assert start!72286)

(declare-fun b!837160 () Bool)

(declare-fun e!467234 () Bool)

(declare-fun e!467238 () Bool)

(declare-fun mapRes!24578 () Bool)

(assert (=> b!837160 (= e!467234 (and e!467238 mapRes!24578))))

(declare-fun condMapEmpty!24578 () Bool)

(declare-datatypes ((V!25475 0))(
  ( (V!25476 (val!7708 Int)) )
))
(declare-datatypes ((ValueCell!7221 0))(
  ( (ValueCellFull!7221 (v!10128 V!25475)) (EmptyCell!7221) )
))
(declare-datatypes ((array!46906 0))(
  ( (array!46907 (arr!22481 (Array (_ BitVec 32) ValueCell!7221)) (size!22922 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46906)

(declare-fun mapDefault!24578 () ValueCell!7221)

(assert (=> b!837160 (= condMapEmpty!24578 (= (arr!22481 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7221)) mapDefault!24578)))))

(declare-fun res!569480 () Bool)

(declare-fun e!467236 () Bool)

(assert (=> start!72286 (=> (not res!569480) (not e!467236))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!46908 0))(
  ( (array!46909 (arr!22482 (Array (_ BitVec 32) (_ BitVec 64))) (size!22923 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46908)

(assert (=> start!72286 (= res!569480 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22923 _keys!868))))))

(assert (=> start!72286 e!467236))

(assert (=> start!72286 true))

(declare-fun array_inv!17898 (array!46908) Bool)

(assert (=> start!72286 (array_inv!17898 _keys!868)))

(declare-fun array_inv!17899 (array!46906) Bool)

(assert (=> start!72286 (and (array_inv!17899 _values!688) e!467234)))

(declare-fun b!837161 () Bool)

(declare-fun res!569479 () Bool)

(assert (=> b!837161 (=> (not res!569479) (not e!467236))))

(declare-datatypes ((List!16077 0))(
  ( (Nil!16074) (Cons!16073 (h!17204 (_ BitVec 64)) (t!22456 List!16077)) )
))
(declare-fun noDuplicate!1298 (List!16077) Bool)

(assert (=> b!837161 (= res!569479 (noDuplicate!1298 Nil!16074))))

(declare-fun b!837162 () Bool)

(declare-fun tp_is_empty!15321 () Bool)

(assert (=> b!837162 (= e!467238 tp_is_empty!15321)))

(declare-fun mapNonEmpty!24578 () Bool)

(declare-fun tp!47573 () Bool)

(declare-fun e!467239 () Bool)

(assert (=> mapNonEmpty!24578 (= mapRes!24578 (and tp!47573 e!467239))))

(declare-fun mapRest!24578 () (Array (_ BitVec 32) ValueCell!7221))

(declare-fun mapValue!24578 () ValueCell!7221)

(declare-fun mapKey!24578 () (_ BitVec 32))

(assert (=> mapNonEmpty!24578 (= (arr!22481 _values!688) (store mapRest!24578 mapKey!24578 mapValue!24578))))

(declare-fun mapIsEmpty!24578 () Bool)

(assert (=> mapIsEmpty!24578 mapRes!24578))

(declare-fun b!837163 () Bool)

(declare-fun res!569484 () Bool)

(assert (=> b!837163 (=> (not res!569484) (not e!467236))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!837163 (= res!569484 (and (= (size!22922 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22923 _keys!868) (size!22922 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837164 () Bool)

(declare-fun res!569485 () Bool)

(assert (=> b!837164 (=> (not res!569485) (not e!467236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837164 (= res!569485 (validMask!0 mask!1196))))

(declare-fun b!837165 () Bool)

(declare-fun res!569483 () Bool)

(assert (=> b!837165 (=> (not res!569483) (not e!467236))))

(assert (=> b!837165 (= res!569483 (and (bvsle #b00000000000000000000000000000000 (size!22923 _keys!868)) (bvslt (size!22923 _keys!868) #b01111111111111111111111111111111)))))

(declare-fun b!837166 () Bool)

(declare-fun e!467235 () Bool)

(assert (=> b!837166 (= e!467236 e!467235)))

(declare-fun res!569482 () Bool)

(assert (=> b!837166 (=> res!569482 e!467235)))

(declare-fun contains!4215 (List!16077 (_ BitVec 64)) Bool)

(assert (=> b!837166 (= res!569482 (contains!4215 Nil!16074 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!837167 () Bool)

(assert (=> b!837167 (= e!467239 tp_is_empty!15321)))

(declare-fun b!837168 () Bool)

(assert (=> b!837168 (= e!467235 (contains!4215 Nil!16074 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!837169 () Bool)

(declare-fun res!569481 () Bool)

(assert (=> b!837169 (=> (not res!569481) (not e!467236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46908 (_ BitVec 32)) Bool)

(assert (=> b!837169 (= res!569481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72286 res!569480) b!837164))

(assert (= (and b!837164 res!569485) b!837163))

(assert (= (and b!837163 res!569484) b!837169))

(assert (= (and b!837169 res!569481) b!837165))

(assert (= (and b!837165 res!569483) b!837161))

(assert (= (and b!837161 res!569479) b!837166))

(assert (= (and b!837166 (not res!569482)) b!837168))

(assert (= (and b!837160 condMapEmpty!24578) mapIsEmpty!24578))

(assert (= (and b!837160 (not condMapEmpty!24578)) mapNonEmpty!24578))

(get-info :version)

(assert (= (and mapNonEmpty!24578 ((_ is ValueCellFull!7221) mapValue!24578)) b!837167))

(assert (= (and b!837160 ((_ is ValueCellFull!7221) mapDefault!24578)) b!837162))

(assert (= start!72286 b!837160))

(declare-fun m!782165 () Bool)

(assert (=> b!837161 m!782165))

(declare-fun m!782167 () Bool)

(assert (=> b!837166 m!782167))

(declare-fun m!782169 () Bool)

(assert (=> b!837169 m!782169))

(declare-fun m!782171 () Bool)

(assert (=> b!837164 m!782171))

(declare-fun m!782173 () Bool)

(assert (=> b!837168 m!782173))

(declare-fun m!782175 () Bool)

(assert (=> mapNonEmpty!24578 m!782175))

(declare-fun m!782177 () Bool)

(assert (=> start!72286 m!782177))

(declare-fun m!782179 () Bool)

(assert (=> start!72286 m!782179))

(check-sat (not start!72286) (not b!837166) (not b!837164) tp_is_empty!15321 (not b!837168) (not b!837161) (not b!837169) (not mapNonEmpty!24578))
(check-sat)
(get-model)

(declare-fun d!107745 () Bool)

(declare-fun lt!380486 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!392 (List!16077) (InoxSet (_ BitVec 64)))

(assert (=> d!107745 (= lt!380486 (select (content!392 Nil!16074) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!467263 () Bool)

(assert (=> d!107745 (= lt!380486 e!467263)))

(declare-fun res!569511 () Bool)

(assert (=> d!107745 (=> (not res!569511) (not e!467263))))

(assert (=> d!107745 (= res!569511 ((_ is Cons!16073) Nil!16074))))

(assert (=> d!107745 (= (contains!4215 Nil!16074 #b1000000000000000000000000000000000000000000000000000000000000000) lt!380486)))

(declare-fun b!837204 () Bool)

(declare-fun e!467262 () Bool)

(assert (=> b!837204 (= e!467263 e!467262)))

(declare-fun res!569512 () Bool)

(assert (=> b!837204 (=> res!569512 e!467262)))

(assert (=> b!837204 (= res!569512 (= (h!17204 Nil!16074) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!837205 () Bool)

(assert (=> b!837205 (= e!467262 (contains!4215 (t!22456 Nil!16074) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!107745 res!569511) b!837204))

(assert (= (and b!837204 (not res!569512)) b!837205))

(declare-fun m!782197 () Bool)

(assert (=> d!107745 m!782197))

(declare-fun m!782199 () Bool)

(assert (=> d!107745 m!782199))

(declare-fun m!782201 () Bool)

(assert (=> b!837205 m!782201))

(assert (=> b!837168 d!107745))

(declare-fun d!107747 () Bool)

(assert (=> d!107747 (= (array_inv!17898 _keys!868) (bvsge (size!22923 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!72286 d!107747))

(declare-fun d!107749 () Bool)

(assert (=> d!107749 (= (array_inv!17899 _values!688) (bvsge (size!22922 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!72286 d!107749))

(declare-fun d!107751 () Bool)

(declare-fun lt!380487 () Bool)

(assert (=> d!107751 (= lt!380487 (select (content!392 Nil!16074) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!467265 () Bool)

(assert (=> d!107751 (= lt!380487 e!467265)))

(declare-fun res!569513 () Bool)

(assert (=> d!107751 (=> (not res!569513) (not e!467265))))

(assert (=> d!107751 (= res!569513 ((_ is Cons!16073) Nil!16074))))

(assert (=> d!107751 (= (contains!4215 Nil!16074 #b0000000000000000000000000000000000000000000000000000000000000000) lt!380487)))

(declare-fun b!837206 () Bool)

(declare-fun e!467264 () Bool)

(assert (=> b!837206 (= e!467265 e!467264)))

(declare-fun res!569514 () Bool)

(assert (=> b!837206 (=> res!569514 e!467264)))

(assert (=> b!837206 (= res!569514 (= (h!17204 Nil!16074) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!837207 () Bool)

(assert (=> b!837207 (= e!467264 (contains!4215 (t!22456 Nil!16074) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!107751 res!569513) b!837206))

(assert (= (and b!837206 (not res!569514)) b!837207))

(assert (=> d!107751 m!782197))

(declare-fun m!782203 () Bool)

(assert (=> d!107751 m!782203))

(declare-fun m!782205 () Bool)

(assert (=> b!837207 m!782205))

(assert (=> b!837166 d!107751))

(declare-fun d!107753 () Bool)

(declare-fun res!569519 () Bool)

(declare-fun e!467270 () Bool)

(assert (=> d!107753 (=> res!569519 e!467270)))

(assert (=> d!107753 (= res!569519 ((_ is Nil!16074) Nil!16074))))

(assert (=> d!107753 (= (noDuplicate!1298 Nil!16074) e!467270)))

(declare-fun b!837212 () Bool)

(declare-fun e!467271 () Bool)

(assert (=> b!837212 (= e!467270 e!467271)))

(declare-fun res!569520 () Bool)

(assert (=> b!837212 (=> (not res!569520) (not e!467271))))

(assert (=> b!837212 (= res!569520 (not (contains!4215 (t!22456 Nil!16074) (h!17204 Nil!16074))))))

(declare-fun b!837213 () Bool)

(assert (=> b!837213 (= e!467271 (noDuplicate!1298 (t!22456 Nil!16074)))))

(assert (= (and d!107753 (not res!569519)) b!837212))

(assert (= (and b!837212 res!569520) b!837213))

(declare-fun m!782207 () Bool)

(assert (=> b!837212 m!782207))

(declare-fun m!782209 () Bool)

(assert (=> b!837213 m!782209))

(assert (=> b!837161 d!107753))

(declare-fun d!107755 () Bool)

(assert (=> d!107755 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!837164 d!107755))

(declare-fun d!107757 () Bool)

(declare-fun res!569525 () Bool)

(declare-fun e!467280 () Bool)

(assert (=> d!107757 (=> res!569525 e!467280)))

(assert (=> d!107757 (= res!569525 (bvsge #b00000000000000000000000000000000 (size!22923 _keys!868)))))

(assert (=> d!107757 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!467280)))

(declare-fun b!837222 () Bool)

(declare-fun e!467279 () Bool)

(declare-fun e!467278 () Bool)

(assert (=> b!837222 (= e!467279 e!467278)))

(declare-fun lt!380495 () (_ BitVec 64))

(assert (=> b!837222 (= lt!380495 (select (arr!22482 _keys!868) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!28776 0))(
  ( (Unit!28777) )
))
(declare-fun lt!380494 () Unit!28776)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46908 (_ BitVec 64) (_ BitVec 32)) Unit!28776)

(assert (=> b!837222 (= lt!380494 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!380495 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!837222 (arrayContainsKey!0 _keys!868 lt!380495 #b00000000000000000000000000000000)))

(declare-fun lt!380496 () Unit!28776)

(assert (=> b!837222 (= lt!380496 lt!380494)))

(declare-fun res!569526 () Bool)

(declare-datatypes ((SeekEntryResult!8737 0))(
  ( (MissingZero!8737 (index!37318 (_ BitVec 32))) (Found!8737 (index!37319 (_ BitVec 32))) (Intermediate!8737 (undefined!9549 Bool) (index!37320 (_ BitVec 32)) (x!70715 (_ BitVec 32))) (Undefined!8737) (MissingVacant!8737 (index!37321 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46908 (_ BitVec 32)) SeekEntryResult!8737)

(assert (=> b!837222 (= res!569526 (= (seekEntryOrOpen!0 (select (arr!22482 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8737 #b00000000000000000000000000000000)))))

(assert (=> b!837222 (=> (not res!569526) (not e!467278))))

(declare-fun b!837223 () Bool)

(declare-fun call!36821 () Bool)

(assert (=> b!837223 (= e!467278 call!36821)))

(declare-fun bm!36818 () Bool)

(assert (=> bm!36818 (= call!36821 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!837224 () Bool)

(assert (=> b!837224 (= e!467279 call!36821)))

(declare-fun b!837225 () Bool)

(assert (=> b!837225 (= e!467280 e!467279)))

(declare-fun c!91071 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!837225 (= c!91071 (validKeyInArray!0 (select (arr!22482 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!107757 (not res!569525)) b!837225))

(assert (= (and b!837225 c!91071) b!837222))

(assert (= (and b!837225 (not c!91071)) b!837224))

(assert (= (and b!837222 res!569526) b!837223))

(assert (= (or b!837223 b!837224) bm!36818))

(declare-fun m!782211 () Bool)

(assert (=> b!837222 m!782211))

(declare-fun m!782213 () Bool)

(assert (=> b!837222 m!782213))

(declare-fun m!782215 () Bool)

(assert (=> b!837222 m!782215))

(assert (=> b!837222 m!782211))

(declare-fun m!782217 () Bool)

(assert (=> b!837222 m!782217))

(declare-fun m!782219 () Bool)

(assert (=> bm!36818 m!782219))

(assert (=> b!837225 m!782211))

(assert (=> b!837225 m!782211))

(declare-fun m!782221 () Bool)

(assert (=> b!837225 m!782221))

(assert (=> b!837169 d!107757))

(declare-fun mapIsEmpty!24584 () Bool)

(declare-fun mapRes!24584 () Bool)

(assert (=> mapIsEmpty!24584 mapRes!24584))

(declare-fun b!837232 () Bool)

(declare-fun e!467286 () Bool)

(assert (=> b!837232 (= e!467286 tp_is_empty!15321)))

(declare-fun condMapEmpty!24584 () Bool)

(declare-fun mapDefault!24584 () ValueCell!7221)

(assert (=> mapNonEmpty!24578 (= condMapEmpty!24584 (= mapRest!24578 ((as const (Array (_ BitVec 32) ValueCell!7221)) mapDefault!24584)))))

(declare-fun e!467285 () Bool)

(assert (=> mapNonEmpty!24578 (= tp!47573 (and e!467285 mapRes!24584))))

(declare-fun mapNonEmpty!24584 () Bool)

(declare-fun tp!47579 () Bool)

(assert (=> mapNonEmpty!24584 (= mapRes!24584 (and tp!47579 e!467286))))

(declare-fun mapRest!24584 () (Array (_ BitVec 32) ValueCell!7221))

(declare-fun mapKey!24584 () (_ BitVec 32))

(declare-fun mapValue!24584 () ValueCell!7221)

(assert (=> mapNonEmpty!24584 (= mapRest!24578 (store mapRest!24584 mapKey!24584 mapValue!24584))))

(declare-fun b!837233 () Bool)

(assert (=> b!837233 (= e!467285 tp_is_empty!15321)))

(assert (= (and mapNonEmpty!24578 condMapEmpty!24584) mapIsEmpty!24584))

(assert (= (and mapNonEmpty!24578 (not condMapEmpty!24584)) mapNonEmpty!24584))

(assert (= (and mapNonEmpty!24584 ((_ is ValueCellFull!7221) mapValue!24584)) b!837232))

(assert (= (and mapNonEmpty!24578 ((_ is ValueCellFull!7221) mapDefault!24584)) b!837233))

(declare-fun m!782223 () Bool)

(assert (=> mapNonEmpty!24584 m!782223))

(check-sat (not d!107751) (not b!837222) tp_is_empty!15321 (not b!837225) (not bm!36818) (not b!837212) (not d!107745) (not b!837205) (not mapNonEmpty!24584) (not b!837213) (not b!837207))
(check-sat)
