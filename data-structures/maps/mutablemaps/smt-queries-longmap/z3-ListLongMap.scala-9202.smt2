; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110598 () Bool)

(assert start!110598)

(declare-fun b_free!29397 () Bool)

(declare-fun b_next!29397 () Bool)

(assert (=> start!110598 (= b_free!29397 (not b_next!29397))))

(declare-fun tp!103513 () Bool)

(declare-fun b_and!47615 () Bool)

(assert (=> start!110598 (= tp!103513 b_and!47615)))

(declare-fun b!1307822 () Bool)

(declare-fun e!746311 () Bool)

(declare-fun e!746312 () Bool)

(declare-fun mapRes!54319 () Bool)

(assert (=> b!1307822 (= e!746311 (and e!746312 mapRes!54319))))

(declare-fun condMapEmpty!54319 () Bool)

(declare-datatypes ((V!51939 0))(
  ( (V!51940 (val!17638 Int)) )
))
(declare-datatypes ((ValueCell!16665 0))(
  ( (ValueCellFull!16665 (v!20263 V!51939)) (EmptyCell!16665) )
))
(declare-datatypes ((array!87225 0))(
  ( (array!87226 (arr!42088 (Array (_ BitVec 32) ValueCell!16665)) (size!42639 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87225)

(declare-fun mapDefault!54319 () ValueCell!16665)

(assert (=> b!1307822 (= condMapEmpty!54319 (= (arr!42088 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16665)) mapDefault!54319)))))

(declare-fun res!868202 () Bool)

(declare-fun e!746315 () Bool)

(assert (=> start!110598 (=> (not res!868202) (not e!746315))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110598 (= res!868202 (validMask!0 mask!2040))))

(assert (=> start!110598 e!746315))

(assert (=> start!110598 tp!103513))

(declare-datatypes ((array!87227 0))(
  ( (array!87228 (arr!42089 (Array (_ BitVec 32) (_ BitVec 64))) (size!42640 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87227)

(declare-fun array_inv!31813 (array!87227) Bool)

(assert (=> start!110598 (array_inv!31813 _keys!1628)))

(assert (=> start!110598 true))

(declare-fun tp_is_empty!35127 () Bool)

(assert (=> start!110598 tp_is_empty!35127))

(declare-fun array_inv!31814 (array!87225) Bool)

(assert (=> start!110598 (and (array_inv!31814 _values!1354) e!746311)))

(declare-fun b!1307823 () Bool)

(declare-fun e!746313 () Bool)

(assert (=> b!1307823 (= e!746313 tp_is_empty!35127)))

(declare-fun mapIsEmpty!54319 () Bool)

(assert (=> mapIsEmpty!54319 mapRes!54319))

(declare-fun b!1307824 () Bool)

(declare-fun res!868208 () Bool)

(assert (=> b!1307824 (=> (not res!868208) (not e!746315))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307824 (= res!868208 (and (= (size!42639 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42640 _keys!1628) (size!42639 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1307825 () Bool)

(assert (=> b!1307825 (= e!746315 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51939)

(declare-fun zeroValue!1296 () V!51939)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22874 0))(
  ( (tuple2!22875 (_1!11447 (_ BitVec 64)) (_2!11447 V!51939)) )
))
(declare-datatypes ((List!30046 0))(
  ( (Nil!30043) (Cons!30042 (h!31251 tuple2!22874) (t!43659 List!30046)) )
))
(declare-datatypes ((ListLongMap!20543 0))(
  ( (ListLongMap!20544 (toList!10287 List!30046)) )
))
(declare-fun contains!8373 (ListLongMap!20543 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5243 (array!87227 array!87225 (_ BitVec 32) (_ BitVec 32) V!51939 V!51939 (_ BitVec 32) Int) ListLongMap!20543)

(assert (=> b!1307825 (contains!8373 (getCurrentListMap!5243 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43224 0))(
  ( (Unit!43225) )
))
(declare-fun lt!585046 () Unit!43224)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!2 (array!87227 array!87225 (_ BitVec 32) (_ BitVec 32) V!51939 V!51939 (_ BitVec 64) (_ BitVec 32) Int) Unit!43224)

(assert (=> b!1307825 (= lt!585046 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!2 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1307826 () Bool)

(declare-fun res!868204 () Bool)

(assert (=> b!1307826 (=> (not res!868204) (not e!746315))))

(assert (=> b!1307826 (= res!868204 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1307827 () Bool)

(declare-fun res!868200 () Bool)

(assert (=> b!1307827 (=> (not res!868200) (not e!746315))))

(assert (=> b!1307827 (= res!868200 (contains!8373 (getCurrentListMap!5243 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1307828 () Bool)

(declare-fun res!868201 () Bool)

(assert (=> b!1307828 (=> (not res!868201) (not e!746315))))

(assert (=> b!1307828 (= res!868201 (not (= (select (arr!42089 _keys!1628) from!2020) k0!1175)))))

(declare-fun mapNonEmpty!54319 () Bool)

(declare-fun tp!103514 () Bool)

(assert (=> mapNonEmpty!54319 (= mapRes!54319 (and tp!103514 e!746313))))

(declare-fun mapValue!54319 () ValueCell!16665)

(declare-fun mapKey!54319 () (_ BitVec 32))

(declare-fun mapRest!54319 () (Array (_ BitVec 32) ValueCell!16665))

(assert (=> mapNonEmpty!54319 (= (arr!42088 _values!1354) (store mapRest!54319 mapKey!54319 mapValue!54319))))

(declare-fun b!1307829 () Bool)

(declare-fun res!868206 () Bool)

(assert (=> b!1307829 (=> (not res!868206) (not e!746315))))

(declare-datatypes ((List!30047 0))(
  ( (Nil!30044) (Cons!30043 (h!31252 (_ BitVec 64)) (t!43660 List!30047)) )
))
(declare-fun arrayNoDuplicates!0 (array!87227 (_ BitVec 32) List!30047) Bool)

(assert (=> b!1307829 (= res!868206 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30044))))

(declare-fun b!1307830 () Bool)

(assert (=> b!1307830 (= e!746312 tp_is_empty!35127)))

(declare-fun b!1307831 () Bool)

(declare-fun res!868203 () Bool)

(assert (=> b!1307831 (=> (not res!868203) (not e!746315))))

(assert (=> b!1307831 (= res!868203 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42640 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307832 () Bool)

(declare-fun res!868205 () Bool)

(assert (=> b!1307832 (=> (not res!868205) (not e!746315))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1307832 (= res!868205 (validKeyInArray!0 (select (arr!42089 _keys!1628) from!2020)))))

(declare-fun b!1307833 () Bool)

(declare-fun res!868207 () Bool)

(assert (=> b!1307833 (=> (not res!868207) (not e!746315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87227 (_ BitVec 32)) Bool)

(assert (=> b!1307833 (= res!868207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(assert (= (and start!110598 res!868202) b!1307824))

(assert (= (and b!1307824 res!868208) b!1307833))

(assert (= (and b!1307833 res!868207) b!1307829))

(assert (= (and b!1307829 res!868206) b!1307831))

(assert (= (and b!1307831 res!868203) b!1307827))

(assert (= (and b!1307827 res!868200) b!1307828))

(assert (= (and b!1307828 res!868201) b!1307832))

(assert (= (and b!1307832 res!868205) b!1307826))

(assert (= (and b!1307826 res!868204) b!1307825))

(assert (= (and b!1307822 condMapEmpty!54319) mapIsEmpty!54319))

(assert (= (and b!1307822 (not condMapEmpty!54319)) mapNonEmpty!54319))

(get-info :version)

(assert (= (and mapNonEmpty!54319 ((_ is ValueCellFull!16665) mapValue!54319)) b!1307823))

(assert (= (and b!1307822 ((_ is ValueCellFull!16665) mapDefault!54319)) b!1307830))

(assert (= start!110598 b!1307822))

(declare-fun m!1198391 () Bool)

(assert (=> b!1307827 m!1198391))

(assert (=> b!1307827 m!1198391))

(declare-fun m!1198393 () Bool)

(assert (=> b!1307827 m!1198393))

(declare-fun m!1198395 () Bool)

(assert (=> b!1307828 m!1198395))

(declare-fun m!1198397 () Bool)

(assert (=> start!110598 m!1198397))

(declare-fun m!1198399 () Bool)

(assert (=> start!110598 m!1198399))

(declare-fun m!1198401 () Bool)

(assert (=> start!110598 m!1198401))

(declare-fun m!1198403 () Bool)

(assert (=> b!1307829 m!1198403))

(declare-fun m!1198405 () Bool)

(assert (=> b!1307833 m!1198405))

(declare-fun m!1198407 () Bool)

(assert (=> mapNonEmpty!54319 m!1198407))

(declare-fun m!1198409 () Bool)

(assert (=> b!1307825 m!1198409))

(assert (=> b!1307825 m!1198409))

(declare-fun m!1198411 () Bool)

(assert (=> b!1307825 m!1198411))

(declare-fun m!1198413 () Bool)

(assert (=> b!1307825 m!1198413))

(assert (=> b!1307832 m!1198395))

(assert (=> b!1307832 m!1198395))

(declare-fun m!1198415 () Bool)

(assert (=> b!1307832 m!1198415))

(check-sat b_and!47615 (not b!1307827) tp_is_empty!35127 (not b!1307825) (not start!110598) (not b!1307829) (not b!1307832) (not b_next!29397) (not mapNonEmpty!54319) (not b!1307833))
(check-sat b_and!47615 (not b_next!29397))
