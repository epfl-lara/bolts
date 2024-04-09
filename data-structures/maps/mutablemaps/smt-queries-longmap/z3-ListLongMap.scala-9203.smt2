; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110604 () Bool)

(assert start!110604)

(declare-fun b_free!29403 () Bool)

(declare-fun b_next!29403 () Bool)

(assert (=> start!110604 (= b_free!29403 (not b_next!29403))))

(declare-fun tp!103531 () Bool)

(declare-fun b_and!47621 () Bool)

(assert (=> start!110604 (= tp!103531 b_and!47621)))

(declare-fun b!1307930 () Bool)

(declare-fun res!868286 () Bool)

(declare-fun e!746359 () Bool)

(assert (=> b!1307930 (=> (not res!868286) (not e!746359))))

(declare-datatypes ((array!87237 0))(
  ( (array!87238 (arr!42094 (Array (_ BitVec 32) (_ BitVec 64))) (size!42645 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87237)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87237 (_ BitVec 32)) Bool)

(assert (=> b!1307930 (= res!868286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1307931 () Bool)

(declare-fun res!868285 () Bool)

(assert (=> b!1307931 (=> (not res!868285) (not e!746359))))

(declare-datatypes ((V!51947 0))(
  ( (V!51948 (val!17641 Int)) )
))
(declare-datatypes ((ValueCell!16668 0))(
  ( (ValueCellFull!16668 (v!20266 V!51947)) (EmptyCell!16668) )
))
(declare-datatypes ((array!87239 0))(
  ( (array!87240 (arr!42095 (Array (_ BitVec 32) ValueCell!16668)) (size!42646 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87239)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307931 (= res!868285 (and (= (size!42646 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42645 _keys!1628) (size!42646 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307932 () Bool)

(declare-fun e!746357 () Bool)

(declare-fun tp_is_empty!35133 () Bool)

(assert (=> b!1307932 (= e!746357 tp_is_empty!35133)))

(declare-fun b!1307933 () Bool)

(declare-fun e!746358 () Bool)

(declare-fun mapRes!54328 () Bool)

(assert (=> b!1307933 (= e!746358 (and e!746357 mapRes!54328))))

(declare-fun condMapEmpty!54328 () Bool)

(declare-fun mapDefault!54328 () ValueCell!16668)

(assert (=> b!1307933 (= condMapEmpty!54328 (= (arr!42095 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16668)) mapDefault!54328)))))

(declare-fun b!1307934 () Bool)

(declare-fun res!868281 () Bool)

(assert (=> b!1307934 (=> (not res!868281) (not e!746359))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51947)

(declare-fun zeroValue!1296 () V!51947)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22880 0))(
  ( (tuple2!22881 (_1!11450 (_ BitVec 64)) (_2!11450 V!51947)) )
))
(declare-datatypes ((List!30051 0))(
  ( (Nil!30048) (Cons!30047 (h!31256 tuple2!22880) (t!43664 List!30051)) )
))
(declare-datatypes ((ListLongMap!20549 0))(
  ( (ListLongMap!20550 (toList!10290 List!30051)) )
))
(declare-fun contains!8376 (ListLongMap!20549 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5246 (array!87237 array!87239 (_ BitVec 32) (_ BitVec 32) V!51947 V!51947 (_ BitVec 32) Int) ListLongMap!20549)

(assert (=> b!1307934 (= res!868281 (contains!8376 (getCurrentListMap!5246 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun res!868282 () Bool)

(assert (=> start!110604 (=> (not res!868282) (not e!746359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110604 (= res!868282 (validMask!0 mask!2040))))

(assert (=> start!110604 e!746359))

(assert (=> start!110604 tp!103531))

(declare-fun array_inv!31819 (array!87237) Bool)

(assert (=> start!110604 (array_inv!31819 _keys!1628)))

(assert (=> start!110604 true))

(assert (=> start!110604 tp_is_empty!35133))

(declare-fun array_inv!31820 (array!87239) Bool)

(assert (=> start!110604 (and (array_inv!31820 _values!1354) e!746358)))

(declare-fun b!1307935 () Bool)

(declare-fun res!868289 () Bool)

(assert (=> b!1307935 (=> (not res!868289) (not e!746359))))

(assert (=> b!1307935 (= res!868289 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42645 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307936 () Bool)

(declare-fun e!746356 () Bool)

(assert (=> b!1307936 (= e!746356 tp_is_empty!35133)))

(declare-fun b!1307937 () Bool)

(declare-fun res!868288 () Bool)

(assert (=> b!1307937 (=> (not res!868288) (not e!746359))))

(assert (=> b!1307937 (= res!868288 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!54328 () Bool)

(assert (=> mapIsEmpty!54328 mapRes!54328))

(declare-fun mapNonEmpty!54328 () Bool)

(declare-fun tp!103532 () Bool)

(assert (=> mapNonEmpty!54328 (= mapRes!54328 (and tp!103532 e!746356))))

(declare-fun mapValue!54328 () ValueCell!16668)

(declare-fun mapKey!54328 () (_ BitVec 32))

(declare-fun mapRest!54328 () (Array (_ BitVec 32) ValueCell!16668))

(assert (=> mapNonEmpty!54328 (= (arr!42095 _values!1354) (store mapRest!54328 mapKey!54328 mapValue!54328))))

(declare-fun b!1307938 () Bool)

(assert (=> b!1307938 (= e!746359 (not true))))

(assert (=> b!1307938 (contains!8376 (getCurrentListMap!5246 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43230 0))(
  ( (Unit!43231) )
))
(declare-fun lt!585055 () Unit!43230)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!5 (array!87237 array!87239 (_ BitVec 32) (_ BitVec 32) V!51947 V!51947 (_ BitVec 64) (_ BitVec 32) Int) Unit!43230)

(assert (=> b!1307938 (= lt!585055 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!5 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1307939 () Bool)

(declare-fun res!868284 () Bool)

(assert (=> b!1307939 (=> (not res!868284) (not e!746359))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1307939 (= res!868284 (validKeyInArray!0 (select (arr!42094 _keys!1628) from!2020)))))

(declare-fun b!1307940 () Bool)

(declare-fun res!868283 () Bool)

(assert (=> b!1307940 (=> (not res!868283) (not e!746359))))

(declare-datatypes ((List!30052 0))(
  ( (Nil!30049) (Cons!30048 (h!31257 (_ BitVec 64)) (t!43665 List!30052)) )
))
(declare-fun arrayNoDuplicates!0 (array!87237 (_ BitVec 32) List!30052) Bool)

(assert (=> b!1307940 (= res!868283 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30049))))

(declare-fun b!1307941 () Bool)

(declare-fun res!868287 () Bool)

(assert (=> b!1307941 (=> (not res!868287) (not e!746359))))

(assert (=> b!1307941 (= res!868287 (not (= (select (arr!42094 _keys!1628) from!2020) k0!1175)))))

(assert (= (and start!110604 res!868282) b!1307931))

(assert (= (and b!1307931 res!868285) b!1307930))

(assert (= (and b!1307930 res!868286) b!1307940))

(assert (= (and b!1307940 res!868283) b!1307935))

(assert (= (and b!1307935 res!868289) b!1307934))

(assert (= (and b!1307934 res!868281) b!1307941))

(assert (= (and b!1307941 res!868287) b!1307939))

(assert (= (and b!1307939 res!868284) b!1307937))

(assert (= (and b!1307937 res!868288) b!1307938))

(assert (= (and b!1307933 condMapEmpty!54328) mapIsEmpty!54328))

(assert (= (and b!1307933 (not condMapEmpty!54328)) mapNonEmpty!54328))

(get-info :version)

(assert (= (and mapNonEmpty!54328 ((_ is ValueCellFull!16668) mapValue!54328)) b!1307936))

(assert (= (and b!1307933 ((_ is ValueCellFull!16668) mapDefault!54328)) b!1307932))

(assert (= start!110604 b!1307933))

(declare-fun m!1198469 () Bool)

(assert (=> b!1307930 m!1198469))

(declare-fun m!1198471 () Bool)

(assert (=> start!110604 m!1198471))

(declare-fun m!1198473 () Bool)

(assert (=> start!110604 m!1198473))

(declare-fun m!1198475 () Bool)

(assert (=> start!110604 m!1198475))

(declare-fun m!1198477 () Bool)

(assert (=> mapNonEmpty!54328 m!1198477))

(declare-fun m!1198479 () Bool)

(assert (=> b!1307941 m!1198479))

(declare-fun m!1198481 () Bool)

(assert (=> b!1307940 m!1198481))

(declare-fun m!1198483 () Bool)

(assert (=> b!1307938 m!1198483))

(assert (=> b!1307938 m!1198483))

(declare-fun m!1198485 () Bool)

(assert (=> b!1307938 m!1198485))

(declare-fun m!1198487 () Bool)

(assert (=> b!1307938 m!1198487))

(assert (=> b!1307939 m!1198479))

(assert (=> b!1307939 m!1198479))

(declare-fun m!1198489 () Bool)

(assert (=> b!1307939 m!1198489))

(declare-fun m!1198491 () Bool)

(assert (=> b!1307934 m!1198491))

(assert (=> b!1307934 m!1198491))

(declare-fun m!1198493 () Bool)

(assert (=> b!1307934 m!1198493))

(check-sat (not b!1307934) (not b!1307930) (not b_next!29403) (not b!1307939) (not start!110604) (not mapNonEmpty!54328) tp_is_empty!35133 b_and!47621 (not b!1307940) (not b!1307938))
(check-sat b_and!47621 (not b_next!29403))
