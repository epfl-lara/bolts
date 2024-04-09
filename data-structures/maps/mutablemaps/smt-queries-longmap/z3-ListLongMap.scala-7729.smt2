; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97124 () Bool)

(assert start!97124)

(declare-fun b!1104229 () Bool)

(declare-fun e!630345 () Bool)

(declare-fun tp_is_empty!27351 () Bool)

(assert (=> b!1104229 (= e!630345 tp_is_empty!27351)))

(declare-fun b!1104230 () Bool)

(declare-fun res!736800 () Bool)

(declare-fun e!630342 () Bool)

(assert (=> b!1104230 (=> (not res!736800) (not e!630342))))

(declare-datatypes ((array!71578 0))(
  ( (array!71579 (arr!34440 (Array (_ BitVec 32) (_ BitVec 64))) (size!34977 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71578)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71578 (_ BitVec 32)) Bool)

(assert (=> b!1104230 (= res!736800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208)) mask!1564))))

(declare-fun b!1104231 () Bool)

(declare-fun res!736789 () Bool)

(assert (=> b!1104231 (=> (not res!736789) (not e!630342))))

(assert (=> b!1104231 (= res!736789 (and (bvsle #b00000000000000000000000000000000 (size!34977 _keys!1208)) (bvslt (size!34977 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1104232 () Bool)

(declare-fun e!630344 () Bool)

(declare-datatypes ((List!24175 0))(
  ( (Nil!24172) (Cons!24171 (h!25380 (_ BitVec 64)) (t!34447 List!24175)) )
))
(declare-fun contains!6431 (List!24175 (_ BitVec 64)) Bool)

(assert (=> b!1104232 (= e!630344 (contains!6431 Nil!24172 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1104233 () Bool)

(declare-fun e!630347 () Bool)

(declare-fun mapRes!42838 () Bool)

(assert (=> b!1104233 (= e!630347 (and e!630345 mapRes!42838))))

(declare-fun condMapEmpty!42838 () Bool)

(declare-datatypes ((V!41595 0))(
  ( (V!41596 (val!13732 Int)) )
))
(declare-datatypes ((ValueCell!12966 0))(
  ( (ValueCellFull!12966 (v!16365 V!41595)) (EmptyCell!12966) )
))
(declare-datatypes ((array!71580 0))(
  ( (array!71581 (arr!34441 (Array (_ BitVec 32) ValueCell!12966)) (size!34978 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71580)

(declare-fun mapDefault!42838 () ValueCell!12966)

(assert (=> b!1104233 (= condMapEmpty!42838 (= (arr!34441 _values!996) ((as const (Array (_ BitVec 32) ValueCell!12966)) mapDefault!42838)))))

(declare-fun b!1104234 () Bool)

(declare-fun e!630346 () Bool)

(assert (=> b!1104234 (= e!630346 tp_is_empty!27351)))

(declare-fun b!1104235 () Bool)

(declare-fun res!736799 () Bool)

(assert (=> b!1104235 (=> (not res!736799) (not e!630342))))

(assert (=> b!1104235 (= res!736799 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!34977 _keys!1208))))))

(declare-fun b!1104236 () Bool)

(assert (=> b!1104236 (= e!630342 e!630344)))

(declare-fun res!736790 () Bool)

(assert (=> b!1104236 (=> res!736790 e!630344)))

(assert (=> b!1104236 (= res!736790 (contains!6431 Nil!24172 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1104237 () Bool)

(declare-fun res!736791 () Bool)

(assert (=> b!1104237 (=> (not res!736791) (not e!630342))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1104237 (= res!736791 (validKeyInArray!0 k0!934))))

(declare-fun res!736793 () Bool)

(assert (=> start!97124 (=> (not res!736793) (not e!630342))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97124 (= res!736793 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34977 _keys!1208))))))

(assert (=> start!97124 e!630342))

(declare-fun array_inv!26374 (array!71578) Bool)

(assert (=> start!97124 (array_inv!26374 _keys!1208)))

(assert (=> start!97124 true))

(declare-fun array_inv!26375 (array!71580) Bool)

(assert (=> start!97124 (and (array_inv!26375 _values!996) e!630347)))

(declare-fun b!1104238 () Bool)

(declare-fun res!736797 () Bool)

(assert (=> b!1104238 (=> (not res!736797) (not e!630342))))

(declare-fun arrayNoDuplicates!0 (array!71578 (_ BitVec 32) List!24175) Bool)

(assert (=> b!1104238 (= res!736797 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24172))))

(declare-fun b!1104239 () Bool)

(declare-fun res!736794 () Bool)

(assert (=> b!1104239 (=> (not res!736794) (not e!630342))))

(declare-fun noDuplicate!1604 (List!24175) Bool)

(assert (=> b!1104239 (= res!736794 (noDuplicate!1604 Nil!24172))))

(declare-fun b!1104240 () Bool)

(declare-fun res!736792 () Bool)

(assert (=> b!1104240 (=> (not res!736792) (not e!630342))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1104240 (= res!736792 (and (= (size!34978 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34977 _keys!1208) (size!34978 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!42838 () Bool)

(declare-fun tp!81759 () Bool)

(assert (=> mapNonEmpty!42838 (= mapRes!42838 (and tp!81759 e!630346))))

(declare-fun mapValue!42838 () ValueCell!12966)

(declare-fun mapRest!42838 () (Array (_ BitVec 32) ValueCell!12966))

(declare-fun mapKey!42838 () (_ BitVec 32))

(assert (=> mapNonEmpty!42838 (= (arr!34441 _values!996) (store mapRest!42838 mapKey!42838 mapValue!42838))))

(declare-fun mapIsEmpty!42838 () Bool)

(assert (=> mapIsEmpty!42838 mapRes!42838))

(declare-fun b!1104241 () Bool)

(declare-fun res!736795 () Bool)

(assert (=> b!1104241 (=> (not res!736795) (not e!630342))))

(assert (=> b!1104241 (= res!736795 (= (select (arr!34440 _keys!1208) i!673) k0!934))))

(declare-fun b!1104242 () Bool)

(declare-fun res!736798 () Bool)

(assert (=> b!1104242 (=> (not res!736798) (not e!630342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1104242 (= res!736798 (validMask!0 mask!1564))))

(declare-fun b!1104243 () Bool)

(declare-fun res!736796 () Bool)

(assert (=> b!1104243 (=> (not res!736796) (not e!630342))))

(assert (=> b!1104243 (= res!736796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!97124 res!736793) b!1104242))

(assert (= (and b!1104242 res!736798) b!1104240))

(assert (= (and b!1104240 res!736792) b!1104243))

(assert (= (and b!1104243 res!736796) b!1104238))

(assert (= (and b!1104238 res!736797) b!1104235))

(assert (= (and b!1104235 res!736799) b!1104237))

(assert (= (and b!1104237 res!736791) b!1104241))

(assert (= (and b!1104241 res!736795) b!1104230))

(assert (= (and b!1104230 res!736800) b!1104231))

(assert (= (and b!1104231 res!736789) b!1104239))

(assert (= (and b!1104239 res!736794) b!1104236))

(assert (= (and b!1104236 (not res!736790)) b!1104232))

(assert (= (and b!1104233 condMapEmpty!42838) mapIsEmpty!42838))

(assert (= (and b!1104233 (not condMapEmpty!42838)) mapNonEmpty!42838))

(get-info :version)

(assert (= (and mapNonEmpty!42838 ((_ is ValueCellFull!12966) mapValue!42838)) b!1104234))

(assert (= (and b!1104233 ((_ is ValueCellFull!12966) mapDefault!42838)) b!1104229))

(assert (= start!97124 b!1104233))

(declare-fun m!1024163 () Bool)

(assert (=> b!1104242 m!1024163))

(declare-fun m!1024165 () Bool)

(assert (=> b!1104239 m!1024165))

(declare-fun m!1024167 () Bool)

(assert (=> mapNonEmpty!42838 m!1024167))

(declare-fun m!1024169 () Bool)

(assert (=> b!1104241 m!1024169))

(declare-fun m!1024171 () Bool)

(assert (=> b!1104243 m!1024171))

(declare-fun m!1024173 () Bool)

(assert (=> b!1104230 m!1024173))

(declare-fun m!1024175 () Bool)

(assert (=> b!1104230 m!1024175))

(declare-fun m!1024177 () Bool)

(assert (=> start!97124 m!1024177))

(declare-fun m!1024179 () Bool)

(assert (=> start!97124 m!1024179))

(declare-fun m!1024181 () Bool)

(assert (=> b!1104236 m!1024181))

(declare-fun m!1024183 () Bool)

(assert (=> b!1104232 m!1024183))

(declare-fun m!1024185 () Bool)

(assert (=> b!1104238 m!1024185))

(declare-fun m!1024187 () Bool)

(assert (=> b!1104237 m!1024187))

(check-sat (not b!1104242) (not b!1104232) (not b!1104239) (not start!97124) (not b!1104237) (not b!1104236) (not b!1104243) (not mapNonEmpty!42838) tp_is_empty!27351 (not b!1104238) (not b!1104230))
(check-sat)
(get-model)

(declare-fun b!1104297 () Bool)

(declare-fun e!630373 () Bool)

(declare-fun call!46343 () Bool)

(assert (=> b!1104297 (= e!630373 call!46343)))

(declare-fun bm!46340 () Bool)

(assert (=> bm!46340 (= call!46343 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208)) mask!1564))))

(declare-fun b!1104298 () Bool)

(declare-fun e!630374 () Bool)

(assert (=> b!1104298 (= e!630374 call!46343)))

(declare-fun d!130837 () Bool)

(declare-fun res!736841 () Bool)

(declare-fun e!630372 () Bool)

(assert (=> d!130837 (=> res!736841 e!630372)))

(assert (=> d!130837 (= res!736841 (bvsge #b00000000000000000000000000000000 (size!34977 (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208)))))))

(assert (=> d!130837 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208)) mask!1564) e!630372)))

(declare-fun b!1104299 () Bool)

(assert (=> b!1104299 (= e!630374 e!630373)))

(declare-fun lt!495101 () (_ BitVec 64))

(assert (=> b!1104299 (= lt!495101 (select (arr!34440 (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!36183 0))(
  ( (Unit!36184) )
))
(declare-fun lt!495099 () Unit!36183)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71578 (_ BitVec 64) (_ BitVec 32)) Unit!36183)

(assert (=> b!1104299 (= lt!495099 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208)) lt!495101 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!71578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1104299 (arrayContainsKey!0 (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208)) lt!495101 #b00000000000000000000000000000000)))

(declare-fun lt!495100 () Unit!36183)

(assert (=> b!1104299 (= lt!495100 lt!495099)))

(declare-fun res!736842 () Bool)

(declare-datatypes ((SeekEntryResult!9920 0))(
  ( (MissingZero!9920 (index!42050 (_ BitVec 32))) (Found!9920 (index!42051 (_ BitVec 32))) (Intermediate!9920 (undefined!10732 Bool) (index!42052 (_ BitVec 32)) (x!99314 (_ BitVec 32))) (Undefined!9920) (MissingVacant!9920 (index!42053 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!71578 (_ BitVec 32)) SeekEntryResult!9920)

(assert (=> b!1104299 (= res!736842 (= (seekEntryOrOpen!0 (select (arr!34440 (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208))) #b00000000000000000000000000000000) (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208)) mask!1564) (Found!9920 #b00000000000000000000000000000000)))))

(assert (=> b!1104299 (=> (not res!736842) (not e!630373))))

(declare-fun b!1104300 () Bool)

(assert (=> b!1104300 (= e!630372 e!630374)))

(declare-fun c!108944 () Bool)

(assert (=> b!1104300 (= c!108944 (validKeyInArray!0 (select (arr!34440 (array!71579 (store (arr!34440 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34977 _keys!1208))) #b00000000000000000000000000000000)))))

(assert (= (and d!130837 (not res!736841)) b!1104300))

(assert (= (and b!1104300 c!108944) b!1104299))

(assert (= (and b!1104300 (not c!108944)) b!1104298))

(assert (= (and b!1104299 res!736842) b!1104297))

(assert (= (or b!1104297 b!1104298) bm!46340))

(declare-fun m!1024215 () Bool)

(assert (=> bm!46340 m!1024215))

(declare-fun m!1024217 () Bool)

(assert (=> b!1104299 m!1024217))

(declare-fun m!1024219 () Bool)

(assert (=> b!1104299 m!1024219))

(declare-fun m!1024221 () Bool)

(assert (=> b!1104299 m!1024221))

(assert (=> b!1104299 m!1024217))

(declare-fun m!1024223 () Bool)

(assert (=> b!1104299 m!1024223))

(assert (=> b!1104300 m!1024217))

(assert (=> b!1104300 m!1024217))

(declare-fun m!1024225 () Bool)

(assert (=> b!1104300 m!1024225))

(assert (=> b!1104230 d!130837))

(declare-fun d!130839 () Bool)

(assert (=> d!130839 (= (array_inv!26374 _keys!1208) (bvsge (size!34977 _keys!1208) #b00000000000000000000000000000000))))

(assert (=> start!97124 d!130839))

(declare-fun d!130841 () Bool)

(assert (=> d!130841 (= (array_inv!26375 _values!996) (bvsge (size!34978 _values!996) #b00000000000000000000000000000000))))

(assert (=> start!97124 d!130841))

(declare-fun b!1104301 () Bool)

(declare-fun e!630376 () Bool)

(declare-fun call!46344 () Bool)

(assert (=> b!1104301 (= e!630376 call!46344)))

(declare-fun bm!46341 () Bool)

(assert (=> bm!46341 (= call!46344 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1208 mask!1564))))

(declare-fun b!1104302 () Bool)

(declare-fun e!630377 () Bool)

(assert (=> b!1104302 (= e!630377 call!46344)))

(declare-fun d!130843 () Bool)

(declare-fun res!736843 () Bool)

(declare-fun e!630375 () Bool)

(assert (=> d!130843 (=> res!736843 e!630375)))

(assert (=> d!130843 (= res!736843 (bvsge #b00000000000000000000000000000000 (size!34977 _keys!1208)))))

(assert (=> d!130843 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564) e!630375)))

(declare-fun b!1104303 () Bool)

(assert (=> b!1104303 (= e!630377 e!630376)))

(declare-fun lt!495104 () (_ BitVec 64))

(assert (=> b!1104303 (= lt!495104 (select (arr!34440 _keys!1208) #b00000000000000000000000000000000))))

(declare-fun lt!495102 () Unit!36183)

(assert (=> b!1104303 (= lt!495102 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 lt!495104 #b00000000000000000000000000000000))))

(assert (=> b!1104303 (arrayContainsKey!0 _keys!1208 lt!495104 #b00000000000000000000000000000000)))

(declare-fun lt!495103 () Unit!36183)

(assert (=> b!1104303 (= lt!495103 lt!495102)))

(declare-fun res!736844 () Bool)

(assert (=> b!1104303 (= res!736844 (= (seekEntryOrOpen!0 (select (arr!34440 _keys!1208) #b00000000000000000000000000000000) _keys!1208 mask!1564) (Found!9920 #b00000000000000000000000000000000)))))

(assert (=> b!1104303 (=> (not res!736844) (not e!630376))))

(declare-fun b!1104304 () Bool)

(assert (=> b!1104304 (= e!630375 e!630377)))

(declare-fun c!108945 () Bool)

(assert (=> b!1104304 (= c!108945 (validKeyInArray!0 (select (arr!34440 _keys!1208) #b00000000000000000000000000000000)))))

(assert (= (and d!130843 (not res!736843)) b!1104304))

(assert (= (and b!1104304 c!108945) b!1104303))

(assert (= (and b!1104304 (not c!108945)) b!1104302))

(assert (= (and b!1104303 res!736844) b!1104301))

(assert (= (or b!1104301 b!1104302) bm!46341))

(declare-fun m!1024227 () Bool)

(assert (=> bm!46341 m!1024227))

(declare-fun m!1024229 () Bool)

(assert (=> b!1104303 m!1024229))

(declare-fun m!1024231 () Bool)

(assert (=> b!1104303 m!1024231))

(declare-fun m!1024233 () Bool)

(assert (=> b!1104303 m!1024233))

(assert (=> b!1104303 m!1024229))

(declare-fun m!1024235 () Bool)

(assert (=> b!1104303 m!1024235))

(assert (=> b!1104304 m!1024229))

(assert (=> b!1104304 m!1024229))

(declare-fun m!1024237 () Bool)

(assert (=> b!1104304 m!1024237))

(assert (=> b!1104243 d!130843))

(declare-fun d!130845 () Bool)

(assert (=> d!130845 (= (validMask!0 mask!1564) (and (or (= mask!1564 #b00000000000000000000000000000111) (= mask!1564 #b00000000000000000000000000001111) (= mask!1564 #b00000000000000000000000000011111) (= mask!1564 #b00000000000000000000000000111111) (= mask!1564 #b00000000000000000000000001111111) (= mask!1564 #b00000000000000000000000011111111) (= mask!1564 #b00000000000000000000000111111111) (= mask!1564 #b00000000000000000000001111111111) (= mask!1564 #b00000000000000000000011111111111) (= mask!1564 #b00000000000000000000111111111111) (= mask!1564 #b00000000000000000001111111111111) (= mask!1564 #b00000000000000000011111111111111) (= mask!1564 #b00000000000000000111111111111111) (= mask!1564 #b00000000000000001111111111111111) (= mask!1564 #b00000000000000011111111111111111) (= mask!1564 #b00000000000000111111111111111111) (= mask!1564 #b00000000000001111111111111111111) (= mask!1564 #b00000000000011111111111111111111) (= mask!1564 #b00000000000111111111111111111111) (= mask!1564 #b00000000001111111111111111111111) (= mask!1564 #b00000000011111111111111111111111) (= mask!1564 #b00000000111111111111111111111111) (= mask!1564 #b00000001111111111111111111111111) (= mask!1564 #b00000011111111111111111111111111) (= mask!1564 #b00000111111111111111111111111111) (= mask!1564 #b00001111111111111111111111111111) (= mask!1564 #b00011111111111111111111111111111) (= mask!1564 #b00111111111111111111111111111111)) (bvsle mask!1564 #b00111111111111111111111111111111)))))

(assert (=> b!1104242 d!130845))

(declare-fun d!130847 () Bool)

(declare-fun res!736849 () Bool)

(declare-fun e!630382 () Bool)

(assert (=> d!130847 (=> res!736849 e!630382)))

(assert (=> d!130847 (= res!736849 ((_ is Nil!24172) Nil!24172))))

(assert (=> d!130847 (= (noDuplicate!1604 Nil!24172) e!630382)))

(declare-fun b!1104309 () Bool)

(declare-fun e!630383 () Bool)

(assert (=> b!1104309 (= e!630382 e!630383)))

(declare-fun res!736850 () Bool)

(assert (=> b!1104309 (=> (not res!736850) (not e!630383))))

(assert (=> b!1104309 (= res!736850 (not (contains!6431 (t!34447 Nil!24172) (h!25380 Nil!24172))))))

(declare-fun b!1104310 () Bool)

(assert (=> b!1104310 (= e!630383 (noDuplicate!1604 (t!34447 Nil!24172)))))

(assert (= (and d!130847 (not res!736849)) b!1104309))

(assert (= (and b!1104309 res!736850) b!1104310))

(declare-fun m!1024239 () Bool)

(assert (=> b!1104309 m!1024239))

(declare-fun m!1024241 () Bool)

(assert (=> b!1104310 m!1024241))

(assert (=> b!1104239 d!130847))

(declare-fun b!1104321 () Bool)

(declare-fun e!630393 () Bool)

(declare-fun e!630395 () Bool)

(assert (=> b!1104321 (= e!630393 e!630395)))

(declare-fun res!736858 () Bool)

(assert (=> b!1104321 (=> (not res!736858) (not e!630395))))

(declare-fun e!630394 () Bool)

(assert (=> b!1104321 (= res!736858 (not e!630394))))

(declare-fun res!736859 () Bool)

(assert (=> b!1104321 (=> (not res!736859) (not e!630394))))

(assert (=> b!1104321 (= res!736859 (validKeyInArray!0 (select (arr!34440 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1104322 () Bool)

(declare-fun e!630392 () Bool)

(declare-fun call!46347 () Bool)

(assert (=> b!1104322 (= e!630392 call!46347)))

(declare-fun d!130849 () Bool)

(declare-fun res!736857 () Bool)

(assert (=> d!130849 (=> res!736857 e!630393)))

(assert (=> d!130849 (= res!736857 (bvsge #b00000000000000000000000000000000 (size!34977 _keys!1208)))))

(assert (=> d!130849 (= (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24172) e!630393)))

(declare-fun b!1104323 () Bool)

(assert (=> b!1104323 (= e!630394 (contains!6431 Nil!24172 (select (arr!34440 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1104324 () Bool)

(assert (=> b!1104324 (= e!630395 e!630392)))

(declare-fun c!108948 () Bool)

(assert (=> b!1104324 (= c!108948 (validKeyInArray!0 (select (arr!34440 _keys!1208) #b00000000000000000000000000000000)))))

(declare-fun b!1104325 () Bool)

(assert (=> b!1104325 (= e!630392 call!46347)))

(declare-fun bm!46344 () Bool)

(assert (=> bm!46344 (= call!46347 (arrayNoDuplicates!0 _keys!1208 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108948 (Cons!24171 (select (arr!34440 _keys!1208) #b00000000000000000000000000000000) Nil!24172) Nil!24172)))))

(assert (= (and d!130849 (not res!736857)) b!1104321))

(assert (= (and b!1104321 res!736859) b!1104323))

(assert (= (and b!1104321 res!736858) b!1104324))

(assert (= (and b!1104324 c!108948) b!1104325))

(assert (= (and b!1104324 (not c!108948)) b!1104322))

(assert (= (or b!1104325 b!1104322) bm!46344))

(assert (=> b!1104321 m!1024229))

(assert (=> b!1104321 m!1024229))

(assert (=> b!1104321 m!1024237))

(assert (=> b!1104323 m!1024229))

(assert (=> b!1104323 m!1024229))

(declare-fun m!1024243 () Bool)

(assert (=> b!1104323 m!1024243))

(assert (=> b!1104324 m!1024229))

(assert (=> b!1104324 m!1024229))

(assert (=> b!1104324 m!1024237))

(assert (=> bm!46344 m!1024229))

(declare-fun m!1024245 () Bool)

(assert (=> bm!46344 m!1024245))

(assert (=> b!1104238 d!130849))

(declare-fun d!130851 () Bool)

(declare-fun lt!495107 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!543 (List!24175) (InoxSet (_ BitVec 64)))

(assert (=> d!130851 (= lt!495107 (select (content!543 Nil!24172) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!630401 () Bool)

(assert (=> d!130851 (= lt!495107 e!630401)))

(declare-fun res!736865 () Bool)

(assert (=> d!130851 (=> (not res!736865) (not e!630401))))

(assert (=> d!130851 (= res!736865 ((_ is Cons!24171) Nil!24172))))

(assert (=> d!130851 (= (contains!6431 Nil!24172 #b1000000000000000000000000000000000000000000000000000000000000000) lt!495107)))

(declare-fun b!1104330 () Bool)

(declare-fun e!630400 () Bool)

(assert (=> b!1104330 (= e!630401 e!630400)))

(declare-fun res!736864 () Bool)

(assert (=> b!1104330 (=> res!736864 e!630400)))

(assert (=> b!1104330 (= res!736864 (= (h!25380 Nil!24172) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1104331 () Bool)

(assert (=> b!1104331 (= e!630400 (contains!6431 (t!34447 Nil!24172) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!130851 res!736865) b!1104330))

(assert (= (and b!1104330 (not res!736864)) b!1104331))

(declare-fun m!1024247 () Bool)

(assert (=> d!130851 m!1024247))

(declare-fun m!1024249 () Bool)

(assert (=> d!130851 m!1024249))

(declare-fun m!1024251 () Bool)

(assert (=> b!1104331 m!1024251))

(assert (=> b!1104232 d!130851))

(declare-fun d!130853 () Bool)

(assert (=> d!130853 (= (validKeyInArray!0 k0!934) (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1104237 d!130853))

(declare-fun d!130855 () Bool)

(declare-fun lt!495108 () Bool)

(assert (=> d!130855 (= lt!495108 (select (content!543 Nil!24172) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!630403 () Bool)

(assert (=> d!130855 (= lt!495108 e!630403)))

(declare-fun res!736867 () Bool)

(assert (=> d!130855 (=> (not res!736867) (not e!630403))))

(assert (=> d!130855 (= res!736867 ((_ is Cons!24171) Nil!24172))))

(assert (=> d!130855 (= (contains!6431 Nil!24172 #b0000000000000000000000000000000000000000000000000000000000000000) lt!495108)))

(declare-fun b!1104332 () Bool)

(declare-fun e!630402 () Bool)

(assert (=> b!1104332 (= e!630403 e!630402)))

(declare-fun res!736866 () Bool)

(assert (=> b!1104332 (=> res!736866 e!630402)))

(assert (=> b!1104332 (= res!736866 (= (h!25380 Nil!24172) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1104333 () Bool)

(assert (=> b!1104333 (= e!630402 (contains!6431 (t!34447 Nil!24172) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!130855 res!736867) b!1104332))

(assert (= (and b!1104332 (not res!736866)) b!1104333))

(assert (=> d!130855 m!1024247))

(declare-fun m!1024253 () Bool)

(assert (=> d!130855 m!1024253))

(declare-fun m!1024255 () Bool)

(assert (=> b!1104333 m!1024255))

(assert (=> b!1104236 d!130855))

(declare-fun condMapEmpty!42844 () Bool)

(declare-fun mapDefault!42844 () ValueCell!12966)

(assert (=> mapNonEmpty!42838 (= condMapEmpty!42844 (= mapRest!42838 ((as const (Array (_ BitVec 32) ValueCell!12966)) mapDefault!42844)))))

(declare-fun e!630408 () Bool)

(declare-fun mapRes!42844 () Bool)

(assert (=> mapNonEmpty!42838 (= tp!81759 (and e!630408 mapRes!42844))))

(declare-fun mapIsEmpty!42844 () Bool)

(assert (=> mapIsEmpty!42844 mapRes!42844))

(declare-fun b!1104341 () Bool)

(assert (=> b!1104341 (= e!630408 tp_is_empty!27351)))

(declare-fun mapNonEmpty!42844 () Bool)

(declare-fun tp!81765 () Bool)

(declare-fun e!630409 () Bool)

(assert (=> mapNonEmpty!42844 (= mapRes!42844 (and tp!81765 e!630409))))

(declare-fun mapKey!42844 () (_ BitVec 32))

(declare-fun mapValue!42844 () ValueCell!12966)

(declare-fun mapRest!42844 () (Array (_ BitVec 32) ValueCell!12966))

(assert (=> mapNonEmpty!42844 (= mapRest!42838 (store mapRest!42844 mapKey!42844 mapValue!42844))))

(declare-fun b!1104340 () Bool)

(assert (=> b!1104340 (= e!630409 tp_is_empty!27351)))

(assert (= (and mapNonEmpty!42838 condMapEmpty!42844) mapIsEmpty!42844))

(assert (= (and mapNonEmpty!42838 (not condMapEmpty!42844)) mapNonEmpty!42844))

(assert (= (and mapNonEmpty!42844 ((_ is ValueCellFull!12966) mapValue!42844)) b!1104340))

(assert (= (and mapNonEmpty!42838 ((_ is ValueCellFull!12966) mapDefault!42844)) b!1104341))

(declare-fun m!1024257 () Bool)

(assert (=> mapNonEmpty!42844 m!1024257))

(check-sat (not b!1104310) (not b!1104323) (not b!1104304) (not b!1104324) (not bm!46340) (not d!130851) (not b!1104333) (not bm!46341) (not b!1104300) (not b!1104303) (not mapNonEmpty!42844) (not b!1104321) (not d!130855) (not b!1104309) (not bm!46344) (not b!1104299) (not b!1104331) tp_is_empty!27351)
(check-sat)
