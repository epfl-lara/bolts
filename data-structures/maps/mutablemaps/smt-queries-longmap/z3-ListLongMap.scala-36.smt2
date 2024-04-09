; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!650 () Bool)

(assert start!650)

(declare-fun b_free!123 () Bool)

(declare-fun b_next!123 () Bool)

(assert (=> start!650 (= b_free!123 (not b_next!123))))

(declare-fun tp!586 () Bool)

(declare-fun b_and!261 () Bool)

(assert (=> start!650 (= tp!586 b_and!261)))

(declare-fun b!4245 () Bool)

(declare-fun res!5627 () Bool)

(declare-fun e!2231 () Bool)

(assert (=> b!4245 (=> (not res!5627) (not e!2231))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!445 0))(
  ( (V!446 (val!106 Int)) )
))
(declare-datatypes ((ValueCell!84 0))(
  ( (ValueCellFull!84 (v!1193 V!445)) (EmptyCell!84) )
))
(declare-datatypes ((array!333 0))(
  ( (array!334 (arr!159 (Array (_ BitVec 32) ValueCell!84)) (size!221 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!333)

(declare-fun minValue!1434 () V!445)

(declare-datatypes ((array!335 0))(
  ( (array!336 (arr!160 (Array (_ BitVec 32) (_ BitVec 64))) (size!222 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!335)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!445)

(declare-datatypes ((tuple2!96 0))(
  ( (tuple2!97 (_1!48 (_ BitVec 64)) (_2!48 V!445)) )
))
(declare-datatypes ((List!101 0))(
  ( (Nil!98) (Cons!97 (h!663 tuple2!96) (t!2228 List!101)) )
))
(declare-datatypes ((ListLongMap!101 0))(
  ( (ListLongMap!102 (toList!66 List!101)) )
))
(declare-fun contains!36 (ListLongMap!101 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!25 (array!335 array!333 (_ BitVec 32) (_ BitVec 32) V!445 V!445 (_ BitVec 32) Int) ListLongMap!101)

(assert (=> b!4245 (= res!5627 (contains!36 (getCurrentListMap!25 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun mapIsEmpty!260 () Bool)

(declare-fun mapRes!260 () Bool)

(assert (=> mapIsEmpty!260 mapRes!260))

(declare-fun b!4246 () Bool)

(assert (=> b!4246 (= e!2231 (not true))))

(declare-fun e!2228 () Bool)

(assert (=> b!4246 e!2228))

(declare-fun c!197 () Bool)

(assert (=> b!4246 (= c!197 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!29 0))(
  ( (Unit!30) )
))
(declare-fun lt!585 () Unit!29)

(declare-fun lemmaKeyInListMapIsInArray!4 (array!335 array!333 (_ BitVec 32) (_ BitVec 32) V!445 V!445 (_ BitVec 64) Int) Unit!29)

(assert (=> b!4246 (= lt!585 (lemmaKeyInListMapIsInArray!4 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun mapNonEmpty!260 () Bool)

(declare-fun tp!587 () Bool)

(declare-fun e!2229 () Bool)

(assert (=> mapNonEmpty!260 (= mapRes!260 (and tp!587 e!2229))))

(declare-fun mapRest!260 () (Array (_ BitVec 32) ValueCell!84))

(declare-fun mapValue!260 () ValueCell!84)

(declare-fun mapKey!260 () (_ BitVec 32))

(assert (=> mapNonEmpty!260 (= (arr!159 _values!1492) (store mapRest!260 mapKey!260 mapValue!260))))

(declare-fun b!4247 () Bool)

(declare-fun res!5629 () Bool)

(assert (=> b!4247 (=> (not res!5629) (not e!2231))))

(declare-datatypes ((List!102 0))(
  ( (Nil!99) (Cons!98 (h!664 (_ BitVec 64)) (t!2229 List!102)) )
))
(declare-fun arrayNoDuplicates!0 (array!335 (_ BitVec 32) List!102) Bool)

(assert (=> b!4247 (= res!5629 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!99))))

(declare-fun b!4248 () Bool)

(declare-fun res!5631 () Bool)

(assert (=> b!4248 (=> (not res!5631) (not e!2231))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!335 (_ BitVec 32)) Bool)

(assert (=> b!4248 (= res!5631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!4249 () Bool)

(declare-fun res!5632 () Bool)

(assert (=> b!4249 (=> (not res!5632) (not e!2231))))

(assert (=> b!4249 (= res!5632 (and (= (size!221 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!222 _keys!1806) (size!221 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!4250 () Bool)

(declare-fun tp_is_empty!201 () Bool)

(assert (=> b!4250 (= e!2229 tp_is_empty!201)))

(declare-fun res!5628 () Bool)

(assert (=> start!650 (=> (not res!5628) (not e!2231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!650 (= res!5628 (validMask!0 mask!2250))))

(assert (=> start!650 e!2231))

(assert (=> start!650 tp!586))

(assert (=> start!650 true))

(declare-fun e!2226 () Bool)

(declare-fun array_inv!111 (array!333) Bool)

(assert (=> start!650 (and (array_inv!111 _values!1492) e!2226)))

(assert (=> start!650 tp_is_empty!201))

(declare-fun array_inv!112 (array!335) Bool)

(assert (=> start!650 (array_inv!112 _keys!1806)))

(declare-fun b!4251 () Bool)

(declare-fun e!2230 () Bool)

(assert (=> b!4251 (= e!2226 (and e!2230 mapRes!260))))

(declare-fun condMapEmpty!260 () Bool)

(declare-fun mapDefault!260 () ValueCell!84)

(assert (=> b!4251 (= condMapEmpty!260 (= (arr!159 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!84)) mapDefault!260)))))

(declare-fun b!4252 () Bool)

(declare-fun arrayContainsKey!0 (array!335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!4252 (= e!2228 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!4253 () Bool)

(declare-fun res!5630 () Bool)

(assert (=> b!4253 (=> (not res!5630) (not e!2231))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4253 (= res!5630 (validKeyInArray!0 k0!1278))))

(declare-fun b!4254 () Bool)

(assert (=> b!4254 (= e!2228 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4255 () Bool)

(assert (=> b!4255 (= e!2230 tp_is_empty!201)))

(assert (= (and start!650 res!5628) b!4249))

(assert (= (and b!4249 res!5632) b!4248))

(assert (= (and b!4248 res!5631) b!4247))

(assert (= (and b!4247 res!5629) b!4245))

(assert (= (and b!4245 res!5627) b!4253))

(assert (= (and b!4253 res!5630) b!4246))

(assert (= (and b!4246 c!197) b!4252))

(assert (= (and b!4246 (not c!197)) b!4254))

(assert (= (and b!4251 condMapEmpty!260) mapIsEmpty!260))

(assert (= (and b!4251 (not condMapEmpty!260)) mapNonEmpty!260))

(get-info :version)

(assert (= (and mapNonEmpty!260 ((_ is ValueCellFull!84) mapValue!260)) b!4250))

(assert (= (and b!4251 ((_ is ValueCellFull!84) mapDefault!260)) b!4255))

(assert (= start!650 b!4251))

(declare-fun m!2229 () Bool)

(assert (=> start!650 m!2229))

(declare-fun m!2231 () Bool)

(assert (=> start!650 m!2231))

(declare-fun m!2233 () Bool)

(assert (=> start!650 m!2233))

(declare-fun m!2235 () Bool)

(assert (=> b!4247 m!2235))

(declare-fun m!2237 () Bool)

(assert (=> b!4253 m!2237))

(declare-fun m!2239 () Bool)

(assert (=> b!4245 m!2239))

(assert (=> b!4245 m!2239))

(declare-fun m!2241 () Bool)

(assert (=> b!4245 m!2241))

(declare-fun m!2243 () Bool)

(assert (=> b!4248 m!2243))

(declare-fun m!2245 () Bool)

(assert (=> mapNonEmpty!260 m!2245))

(declare-fun m!2247 () Bool)

(assert (=> b!4252 m!2247))

(declare-fun m!2249 () Bool)

(assert (=> b!4246 m!2249))

(check-sat (not b!4253) (not b!4252) (not b!4245) (not start!650) tp_is_empty!201 (not b_next!123) b_and!261 (not mapNonEmpty!260) (not b!4246) (not b!4247) (not b!4248))
(check-sat b_and!261 (not b_next!123))
