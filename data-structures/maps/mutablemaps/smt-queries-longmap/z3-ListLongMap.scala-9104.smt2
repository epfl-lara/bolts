; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109446 () Bool)

(assert start!109446)

(declare-fun b_free!28899 () Bool)

(declare-fun b_next!28899 () Bool)

(assert (=> start!109446 (= b_free!28899 (not b_next!28899))))

(declare-fun tp!101817 () Bool)

(declare-fun b_and!46999 () Bool)

(assert (=> start!109446 (= tp!101817 b_and!46999)))

(declare-fun b!1295205 () Bool)

(declare-fun e!739040 () Bool)

(declare-fun e!739044 () Bool)

(assert (=> b!1295205 (= e!739040 (not e!739044))))

(declare-fun res!860902 () Bool)

(assert (=> b!1295205 (=> res!860902 e!739044)))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1295205 (= res!860902 (or (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((V!51155 0))(
  ( (V!51156 (val!17344 Int)) )
))
(declare-datatypes ((tuple2!22482 0))(
  ( (tuple2!22483 (_1!11251 (_ BitVec 64)) (_2!11251 V!51155)) )
))
(declare-datatypes ((List!29650 0))(
  ( (Nil!29647) (Cons!29646 (h!30855 tuple2!22482) (t!43221 List!29650)) )
))
(declare-datatypes ((ListLongMap!20151 0))(
  ( (ListLongMap!20152 (toList!10091 List!29650)) )
))
(declare-fun contains!8147 (ListLongMap!20151 (_ BitVec 64)) Bool)

(assert (=> b!1295205 (not (contains!8147 (ListLongMap!20152 Nil!29647) k0!1205))))

(declare-datatypes ((Unit!42849 0))(
  ( (Unit!42850) )
))
(declare-fun lt!579802 () Unit!42849)

(declare-fun emptyContainsNothing!180 ((_ BitVec 64)) Unit!42849)

(assert (=> b!1295205 (= lt!579802 (emptyContainsNothing!180 k0!1205))))

(declare-fun b!1295206 () Bool)

(declare-fun e!739041 () Bool)

(declare-fun tp_is_empty!34539 () Bool)

(assert (=> b!1295206 (= e!739041 tp_is_empty!34539)))

(declare-fun b!1295207 () Bool)

(declare-fun res!860898 () Bool)

(assert (=> b!1295207 (=> (not res!860898) (not e!739040))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((array!86061 0))(
  ( (array!86062 (arr!41527 (Array (_ BitVec 32) (_ BitVec 64))) (size!42078 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86061)

(assert (=> b!1295207 (= res!860898 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42078 _keys!1741))))))

(declare-fun b!1295208 () Bool)

(declare-fun res!860896 () Bool)

(assert (=> b!1295208 (=> (not res!860896) (not e!739040))))

(declare-datatypes ((List!29651 0))(
  ( (Nil!29648) (Cons!29647 (h!30856 (_ BitVec 64)) (t!43222 List!29651)) )
))
(declare-fun arrayNoDuplicates!0 (array!86061 (_ BitVec 32) List!29651) Bool)

(assert (=> b!1295208 (= res!860896 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29648))))

(declare-fun b!1295209 () Bool)

(declare-fun e!739045 () Bool)

(declare-fun e!739043 () Bool)

(declare-fun mapRes!53369 () Bool)

(assert (=> b!1295209 (= e!739045 (and e!739043 mapRes!53369))))

(declare-fun condMapEmpty!53369 () Bool)

(declare-datatypes ((ValueCell!16371 0))(
  ( (ValueCellFull!16371 (v!19945 V!51155)) (EmptyCell!16371) )
))
(declare-datatypes ((array!86063 0))(
  ( (array!86064 (arr!41528 (Array (_ BitVec 32) ValueCell!16371)) (size!42079 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86063)

(declare-fun mapDefault!53369 () ValueCell!16371)

(assert (=> b!1295209 (= condMapEmpty!53369 (= (arr!41528 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16371)) mapDefault!53369)))))

(declare-fun mapIsEmpty!53369 () Bool)

(assert (=> mapIsEmpty!53369 mapRes!53369))

(declare-fun res!860899 () Bool)

(assert (=> start!109446 (=> (not res!860899) (not e!739040))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109446 (= res!860899 (validMask!0 mask!2175))))

(assert (=> start!109446 e!739040))

(assert (=> start!109446 tp_is_empty!34539))

(assert (=> start!109446 true))

(declare-fun array_inv!31425 (array!86063) Bool)

(assert (=> start!109446 (and (array_inv!31425 _values!1445) e!739045)))

(declare-fun array_inv!31426 (array!86061) Bool)

(assert (=> start!109446 (array_inv!31426 _keys!1741)))

(assert (=> start!109446 tp!101817))

(declare-fun b!1295210 () Bool)

(declare-fun res!860904 () Bool)

(assert (=> b!1295210 (=> (not res!860904) (not e!739040))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1295210 (= res!860904 (not (validKeyInArray!0 (select (arr!41527 _keys!1741) from!2144))))))

(declare-fun b!1295211 () Bool)

(declare-fun res!860900 () Bool)

(assert (=> b!1295211 (=> (not res!860900) (not e!739040))))

(assert (=> b!1295211 (= res!860900 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42078 _keys!1741))))))

(declare-fun b!1295212 () Bool)

(assert (=> b!1295212 (= e!739043 tp_is_empty!34539)))

(declare-fun b!1295213 () Bool)

(assert (=> b!1295213 (= e!739044 true)))

(declare-fun lt!579800 () ListLongMap!20151)

(declare-fun minValue!1387 () V!51155)

(declare-fun +!4395 (ListLongMap!20151 tuple2!22482) ListLongMap!20151)

(assert (=> b!1295213 (not (contains!8147 (+!4395 lt!579800 (tuple2!22483 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k0!1205))))

(declare-fun lt!579801 () Unit!42849)

(declare-fun addStillNotContains!440 (ListLongMap!20151 (_ BitVec 64) V!51155 (_ BitVec 64)) Unit!42849)

(assert (=> b!1295213 (= lt!579801 (addStillNotContains!440 lt!579800 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 k0!1205))))

(declare-fun zeroValue!1387 () V!51155)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6111 (array!86061 array!86063 (_ BitVec 32) (_ BitVec 32) V!51155 V!51155 (_ BitVec 32) Int) ListLongMap!20151)

(assert (=> b!1295213 (= lt!579800 (getCurrentListMapNoExtraKeys!6111 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1295214 () Bool)

(declare-fun res!860901 () Bool)

(assert (=> b!1295214 (=> (not res!860901) (not e!739040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86061 (_ BitVec 32)) Bool)

(assert (=> b!1295214 (= res!860901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapNonEmpty!53369 () Bool)

(declare-fun tp!101816 () Bool)

(assert (=> mapNonEmpty!53369 (= mapRes!53369 (and tp!101816 e!739041))))

(declare-fun mapKey!53369 () (_ BitVec 32))

(declare-fun mapRest!53369 () (Array (_ BitVec 32) ValueCell!16371))

(declare-fun mapValue!53369 () ValueCell!16371)

(assert (=> mapNonEmpty!53369 (= (arr!41528 _values!1445) (store mapRest!53369 mapKey!53369 mapValue!53369))))

(declare-fun b!1295215 () Bool)

(declare-fun res!860897 () Bool)

(assert (=> b!1295215 (=> (not res!860897) (not e!739040))))

(assert (=> b!1295215 (= res!860897 (and (= (size!42079 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42078 _keys!1741) (size!42079 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1295216 () Bool)

(declare-fun res!860903 () Bool)

(assert (=> b!1295216 (=> (not res!860903) (not e!739040))))

(declare-fun getCurrentListMap!5072 (array!86061 array!86063 (_ BitVec 32) (_ BitVec 32) V!51155 V!51155 (_ BitVec 32) Int) ListLongMap!20151)

(assert (=> b!1295216 (= res!860903 (contains!8147 (getCurrentListMap!5072 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!109446 res!860899) b!1295215))

(assert (= (and b!1295215 res!860897) b!1295214))

(assert (= (and b!1295214 res!860901) b!1295208))

(assert (= (and b!1295208 res!860896) b!1295211))

(assert (= (and b!1295211 res!860900) b!1295216))

(assert (= (and b!1295216 res!860903) b!1295207))

(assert (= (and b!1295207 res!860898) b!1295210))

(assert (= (and b!1295210 res!860904) b!1295205))

(assert (= (and b!1295205 (not res!860902)) b!1295213))

(assert (= (and b!1295209 condMapEmpty!53369) mapIsEmpty!53369))

(assert (= (and b!1295209 (not condMapEmpty!53369)) mapNonEmpty!53369))

(get-info :version)

(assert (= (and mapNonEmpty!53369 ((_ is ValueCellFull!16371) mapValue!53369)) b!1295206))

(assert (= (and b!1295209 ((_ is ValueCellFull!16371) mapDefault!53369)) b!1295212))

(assert (= start!109446 b!1295209))

(declare-fun m!1187281 () Bool)

(assert (=> mapNonEmpty!53369 m!1187281))

(declare-fun m!1187283 () Bool)

(assert (=> start!109446 m!1187283))

(declare-fun m!1187285 () Bool)

(assert (=> start!109446 m!1187285))

(declare-fun m!1187287 () Bool)

(assert (=> start!109446 m!1187287))

(declare-fun m!1187289 () Bool)

(assert (=> b!1295216 m!1187289))

(assert (=> b!1295216 m!1187289))

(declare-fun m!1187291 () Bool)

(assert (=> b!1295216 m!1187291))

(declare-fun m!1187293 () Bool)

(assert (=> b!1295213 m!1187293))

(assert (=> b!1295213 m!1187293))

(declare-fun m!1187295 () Bool)

(assert (=> b!1295213 m!1187295))

(declare-fun m!1187297 () Bool)

(assert (=> b!1295213 m!1187297))

(declare-fun m!1187299 () Bool)

(assert (=> b!1295213 m!1187299))

(declare-fun m!1187301 () Bool)

(assert (=> b!1295214 m!1187301))

(declare-fun m!1187303 () Bool)

(assert (=> b!1295210 m!1187303))

(assert (=> b!1295210 m!1187303))

(declare-fun m!1187305 () Bool)

(assert (=> b!1295210 m!1187305))

(declare-fun m!1187307 () Bool)

(assert (=> b!1295208 m!1187307))

(declare-fun m!1187309 () Bool)

(assert (=> b!1295205 m!1187309))

(declare-fun m!1187311 () Bool)

(assert (=> b!1295205 m!1187311))

(check-sat (not b!1295216) (not b_next!28899) (not b!1295214) (not b!1295210) b_and!46999 (not mapNonEmpty!53369) (not b!1295205) tp_is_empty!34539 (not b!1295208) (not b!1295213) (not start!109446))
(check-sat b_and!46999 (not b_next!28899))
