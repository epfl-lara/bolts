; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110196 () Bool)

(assert start!110196)

(declare-fun b_free!29283 () Bool)

(declare-fun b_next!29283 () Bool)

(assert (=> start!110196 (= b_free!29283 (not b_next!29283))))

(declare-fun tp!103008 () Bool)

(declare-fun b_and!47473 () Bool)

(assert (=> start!110196 (= tp!103008 b_and!47473)))

(declare-fun b!1304204 () Bool)

(declare-fun e!743953 () Bool)

(declare-fun tp_is_empty!34923 () Bool)

(assert (=> b!1304204 (= e!743953 tp_is_empty!34923)))

(declare-fun b!1304205 () Bool)

(declare-fun e!743952 () Bool)

(assert (=> b!1304205 (= e!743952 true)))

(declare-datatypes ((V!51667 0))(
  ( (V!51668 (val!17536 Int)) )
))
(declare-datatypes ((tuple2!22790 0))(
  ( (tuple2!22791 (_1!11405 (_ BitVec 64)) (_2!11405 V!51667)) )
))
(declare-datatypes ((List!29940 0))(
  ( (Nil!29937) (Cons!29936 (h!31145 tuple2!22790) (t!43545 List!29940)) )
))
(declare-datatypes ((ListLongMap!20459 0))(
  ( (ListLongMap!20460 (toList!10245 List!29940)) )
))
(declare-fun lt!583694 () ListLongMap!20459)

(declare-fun zeroValue!1387 () V!51667)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!8320 (ListLongMap!20459 (_ BitVec 64)) Bool)

(declare-fun +!4463 (ListLongMap!20459 tuple2!22790) ListLongMap!20459)

(assert (=> b!1304205 (not (contains!8320 (+!4463 lt!583694 (tuple2!22791 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!43138 0))(
  ( (Unit!43139) )
))
(declare-fun lt!583693 () Unit!43138)

(declare-fun addStillNotContains!487 (ListLongMap!20459 (_ BitVec 64) V!51667 (_ BitVec 64)) Unit!43138)

(assert (=> b!1304205 (= lt!583693 (addStillNotContains!487 lt!583694 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!51667)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16563 0))(
  ( (ValueCellFull!16563 (v!20153 V!51667)) (EmptyCell!16563) )
))
(declare-datatypes ((array!86827 0))(
  ( (array!86828 (arr!41898 (Array (_ BitVec 32) ValueCell!16563)) (size!42449 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86827)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86829 0))(
  ( (array!86830 (arr!41899 (Array (_ BitVec 32) (_ BitVec 64))) (size!42450 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86829)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6179 (array!86829 array!86827 (_ BitVec 32) (_ BitVec 32) V!51667 V!51667 (_ BitVec 32) Int) ListLongMap!20459)

(assert (=> b!1304205 (= lt!583694 (getCurrentListMapNoExtraKeys!6179 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1304206 () Bool)

(declare-fun res!866244 () Bool)

(declare-fun e!743948 () Bool)

(assert (=> b!1304206 (=> (not res!866244) (not e!743948))))

(assert (=> b!1304206 (= res!866244 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42450 _keys!1741))))))

(declare-fun b!1304207 () Bool)

(declare-fun e!743951 () Bool)

(assert (=> b!1304207 (= e!743951 tp_is_empty!34923)))

(declare-fun res!866245 () Bool)

(assert (=> start!110196 (=> (not res!866245) (not e!743948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110196 (= res!866245 (validMask!0 mask!2175))))

(assert (=> start!110196 e!743948))

(assert (=> start!110196 tp_is_empty!34923))

(assert (=> start!110196 true))

(declare-fun e!743950 () Bool)

(declare-fun array_inv!31685 (array!86827) Bool)

(assert (=> start!110196 (and (array_inv!31685 _values!1445) e!743950)))

(declare-fun array_inv!31686 (array!86829) Bool)

(assert (=> start!110196 (array_inv!31686 _keys!1741)))

(assert (=> start!110196 tp!103008))

(declare-fun b!1304208 () Bool)

(declare-fun res!866246 () Bool)

(assert (=> b!1304208 (=> (not res!866246) (not e!743948))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86829 (_ BitVec 32)) Bool)

(assert (=> b!1304208 (= res!866246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1304209 () Bool)

(declare-fun res!866249 () Bool)

(assert (=> b!1304209 (=> (not res!866249) (not e!743948))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1304209 (= res!866249 (not (validKeyInArray!0 (select (arr!41899 _keys!1741) from!2144))))))

(declare-fun b!1304210 () Bool)

(declare-fun mapRes!53984 () Bool)

(assert (=> b!1304210 (= e!743950 (and e!743953 mapRes!53984))))

(declare-fun condMapEmpty!53984 () Bool)

(declare-fun mapDefault!53984 () ValueCell!16563)

(assert (=> b!1304210 (= condMapEmpty!53984 (= (arr!41898 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16563)) mapDefault!53984)))))

(declare-fun b!1304211 () Bool)

(declare-fun res!866247 () Bool)

(assert (=> b!1304211 (=> (not res!866247) (not e!743948))))

(assert (=> b!1304211 (= res!866247 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42450 _keys!1741))))))

(declare-fun b!1304212 () Bool)

(declare-fun res!866252 () Bool)

(assert (=> b!1304212 (=> (not res!866252) (not e!743948))))

(declare-datatypes ((List!29941 0))(
  ( (Nil!29938) (Cons!29937 (h!31146 (_ BitVec 64)) (t!43546 List!29941)) )
))
(declare-fun arrayNoDuplicates!0 (array!86829 (_ BitVec 32) List!29941) Bool)

(assert (=> b!1304212 (= res!866252 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29938))))

(declare-fun b!1304213 () Bool)

(assert (=> b!1304213 (= e!743948 (not e!743952))))

(declare-fun res!866248 () Bool)

(assert (=> b!1304213 (=> res!866248 e!743952)))

(assert (=> b!1304213 (= res!866248 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1304213 (not (contains!8320 (ListLongMap!20460 Nil!29937) k0!1205))))

(declare-fun lt!583695 () Unit!43138)

(declare-fun emptyContainsNothing!228 ((_ BitVec 64)) Unit!43138)

(assert (=> b!1304213 (= lt!583695 (emptyContainsNothing!228 k0!1205))))

(declare-fun mapNonEmpty!53984 () Bool)

(declare-fun tp!103007 () Bool)

(assert (=> mapNonEmpty!53984 (= mapRes!53984 (and tp!103007 e!743951))))

(declare-fun mapValue!53984 () ValueCell!16563)

(declare-fun mapRest!53984 () (Array (_ BitVec 32) ValueCell!16563))

(declare-fun mapKey!53984 () (_ BitVec 32))

(assert (=> mapNonEmpty!53984 (= (arr!41898 _values!1445) (store mapRest!53984 mapKey!53984 mapValue!53984))))

(declare-fun b!1304214 () Bool)

(declare-fun res!866250 () Bool)

(assert (=> b!1304214 (=> (not res!866250) (not e!743948))))

(assert (=> b!1304214 (= res!866250 (and (= (size!42449 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42450 _keys!1741) (size!42449 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!53984 () Bool)

(assert (=> mapIsEmpty!53984 mapRes!53984))

(declare-fun b!1304215 () Bool)

(declare-fun res!866251 () Bool)

(assert (=> b!1304215 (=> (not res!866251) (not e!743948))))

(declare-fun getCurrentListMap!5204 (array!86829 array!86827 (_ BitVec 32) (_ BitVec 32) V!51667 V!51667 (_ BitVec 32) Int) ListLongMap!20459)

(assert (=> b!1304215 (= res!866251 (contains!8320 (getCurrentListMap!5204 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!110196 res!866245) b!1304214))

(assert (= (and b!1304214 res!866250) b!1304208))

(assert (= (and b!1304208 res!866246) b!1304212))

(assert (= (and b!1304212 res!866252) b!1304206))

(assert (= (and b!1304206 res!866244) b!1304215))

(assert (= (and b!1304215 res!866251) b!1304211))

(assert (= (and b!1304211 res!866247) b!1304209))

(assert (= (and b!1304209 res!866249) b!1304213))

(assert (= (and b!1304213 (not res!866248)) b!1304205))

(assert (= (and b!1304210 condMapEmpty!53984) mapIsEmpty!53984))

(assert (= (and b!1304210 (not condMapEmpty!53984)) mapNonEmpty!53984))

(get-info :version)

(assert (= (and mapNonEmpty!53984 ((_ is ValueCellFull!16563) mapValue!53984)) b!1304207))

(assert (= (and b!1304210 ((_ is ValueCellFull!16563) mapDefault!53984)) b!1304204))

(assert (= start!110196 b!1304210))

(declare-fun m!1195219 () Bool)

(assert (=> b!1304215 m!1195219))

(assert (=> b!1304215 m!1195219))

(declare-fun m!1195221 () Bool)

(assert (=> b!1304215 m!1195221))

(declare-fun m!1195223 () Bool)

(assert (=> mapNonEmpty!53984 m!1195223))

(declare-fun m!1195225 () Bool)

(assert (=> start!110196 m!1195225))

(declare-fun m!1195227 () Bool)

(assert (=> start!110196 m!1195227))

(declare-fun m!1195229 () Bool)

(assert (=> start!110196 m!1195229))

(declare-fun m!1195231 () Bool)

(assert (=> b!1304212 m!1195231))

(declare-fun m!1195233 () Bool)

(assert (=> b!1304205 m!1195233))

(assert (=> b!1304205 m!1195233))

(declare-fun m!1195235 () Bool)

(assert (=> b!1304205 m!1195235))

(declare-fun m!1195237 () Bool)

(assert (=> b!1304205 m!1195237))

(declare-fun m!1195239 () Bool)

(assert (=> b!1304205 m!1195239))

(declare-fun m!1195241 () Bool)

(assert (=> b!1304213 m!1195241))

(declare-fun m!1195243 () Bool)

(assert (=> b!1304213 m!1195243))

(declare-fun m!1195245 () Bool)

(assert (=> b!1304209 m!1195245))

(assert (=> b!1304209 m!1195245))

(declare-fun m!1195247 () Bool)

(assert (=> b!1304209 m!1195247))

(declare-fun m!1195249 () Bool)

(assert (=> b!1304208 m!1195249))

(check-sat tp_is_empty!34923 (not start!110196) (not b!1304205) (not b!1304208) (not b!1304213) (not mapNonEmpty!53984) (not b!1304209) (not b!1304212) b_and!47473 (not b_next!29283) (not b!1304215))
(check-sat b_and!47473 (not b_next!29283))
