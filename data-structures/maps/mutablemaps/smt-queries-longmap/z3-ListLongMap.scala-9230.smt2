; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110766 () Bool)

(assert start!110766)

(declare-fun b_free!29565 () Bool)

(declare-fun b_next!29565 () Bool)

(assert (=> start!110766 (= b_free!29565 (not b_next!29565))))

(declare-fun tp!104018 () Bool)

(declare-fun b_and!47783 () Bool)

(assert (=> start!110766 (= tp!104018 b_and!47783)))

(declare-fun b!1310414 () Bool)

(declare-fun e!747574 () Bool)

(declare-fun tp_is_empty!35295 () Bool)

(assert (=> b!1310414 (= e!747574 tp_is_empty!35295)))

(declare-fun mapNonEmpty!54571 () Bool)

(declare-fun mapRes!54571 () Bool)

(declare-fun tp!104017 () Bool)

(assert (=> mapNonEmpty!54571 (= mapRes!54571 (and tp!104017 e!747574))))

(declare-datatypes ((V!52163 0))(
  ( (V!52164 (val!17722 Int)) )
))
(declare-datatypes ((ValueCell!16749 0))(
  ( (ValueCellFull!16749 (v!20347 V!52163)) (EmptyCell!16749) )
))
(declare-fun mapRest!54571 () (Array (_ BitVec 32) ValueCell!16749))

(declare-datatypes ((array!87545 0))(
  ( (array!87546 (arr!42248 (Array (_ BitVec 32) ValueCell!16749)) (size!42799 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87545)

(declare-fun mapKey!54571 () (_ BitVec 32))

(declare-fun mapValue!54571 () ValueCell!16749)

(assert (=> mapNonEmpty!54571 (= (arr!42248 _values!1354) (store mapRest!54571 mapKey!54571 mapValue!54571))))

(declare-fun b!1310415 () Bool)

(declare-fun res!870037 () Bool)

(declare-fun e!747573 () Bool)

(assert (=> b!1310415 (=> (not res!870037) (not e!747573))))

(declare-datatypes ((array!87547 0))(
  ( (array!87548 (arr!42249 (Array (_ BitVec 32) (_ BitVec 64))) (size!42800 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87547)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310415 (= res!870037 (validKeyInArray!0 (select (arr!42249 _keys!1628) from!2020)))))

(declare-fun mapIsEmpty!54571 () Bool)

(assert (=> mapIsEmpty!54571 mapRes!54571))

(declare-fun b!1310416 () Bool)

(declare-fun res!870040 () Bool)

(assert (=> b!1310416 (=> (not res!870040) (not e!747573))))

(declare-datatypes ((List!30166 0))(
  ( (Nil!30163) (Cons!30162 (h!31371 (_ BitVec 64)) (t!43779 List!30166)) )
))
(declare-fun arrayNoDuplicates!0 (array!87547 (_ BitVec 32) List!30166) Bool)

(assert (=> b!1310416 (= res!870040 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30163))))

(declare-fun b!1310417 () Bool)

(assert (=> b!1310417 (= e!747573 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!52163)

(declare-fun zeroValue!1296 () V!52163)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23002 0))(
  ( (tuple2!23003 (_1!11511 (_ BitVec 64)) (_2!11511 V!52163)) )
))
(declare-datatypes ((List!30167 0))(
  ( (Nil!30164) (Cons!30163 (h!31372 tuple2!23002) (t!43780 List!30167)) )
))
(declare-datatypes ((ListLongMap!20671 0))(
  ( (ListLongMap!20672 (toList!10351 List!30167)) )
))
(declare-fun contains!8437 (ListLongMap!20671 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5307 (array!87547 array!87545 (_ BitVec 32) (_ BitVec 32) V!52163 V!52163 (_ BitVec 32) Int) ListLongMap!20671)

(assert (=> b!1310417 (contains!8437 (getCurrentListMap!5307 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43288 0))(
  ( (Unit!43289) )
))
(declare-fun lt!585298 () Unit!43288)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!18 (array!87547 array!87545 (_ BitVec 32) (_ BitVec 32) V!52163 V!52163 (_ BitVec 64) (_ BitVec 32) Int) Unit!43288)

(assert (=> b!1310417 (= lt!585298 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXMin!18 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1310418 () Bool)

(declare-fun res!870038 () Bool)

(assert (=> b!1310418 (=> (not res!870038) (not e!747573))))

(assert (=> b!1310418 (= res!870038 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42800 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1310419 () Bool)

(declare-fun res!870044 () Bool)

(assert (=> b!1310419 (=> (not res!870044) (not e!747573))))

(assert (=> b!1310419 (= res!870044 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1310420 () Bool)

(declare-fun e!747571 () Bool)

(assert (=> b!1310420 (= e!747571 tp_is_empty!35295)))

(declare-fun b!1310421 () Bool)

(declare-fun res!870036 () Bool)

(assert (=> b!1310421 (=> (not res!870036) (not e!747573))))

(assert (=> b!1310421 (= res!870036 (not (= (select (arr!42249 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1310422 () Bool)

(declare-fun res!870042 () Bool)

(assert (=> b!1310422 (=> (not res!870042) (not e!747573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87547 (_ BitVec 32)) Bool)

(assert (=> b!1310422 (= res!870042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310423 () Bool)

(declare-fun res!870041 () Bool)

(assert (=> b!1310423 (=> (not res!870041) (not e!747573))))

(assert (=> b!1310423 (= res!870041 (and (= (size!42799 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42800 _keys!1628) (size!42799 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun res!870043 () Bool)

(assert (=> start!110766 (=> (not res!870043) (not e!747573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110766 (= res!870043 (validMask!0 mask!2040))))

(assert (=> start!110766 e!747573))

(assert (=> start!110766 tp!104018))

(declare-fun array_inv!31917 (array!87547) Bool)

(assert (=> start!110766 (array_inv!31917 _keys!1628)))

(assert (=> start!110766 true))

(assert (=> start!110766 tp_is_empty!35295))

(declare-fun e!747575 () Bool)

(declare-fun array_inv!31918 (array!87545) Bool)

(assert (=> start!110766 (and (array_inv!31918 _values!1354) e!747575)))

(declare-fun b!1310424 () Bool)

(assert (=> b!1310424 (= e!747575 (and e!747571 mapRes!54571))))

(declare-fun condMapEmpty!54571 () Bool)

(declare-fun mapDefault!54571 () ValueCell!16749)

(assert (=> b!1310424 (= condMapEmpty!54571 (= (arr!42248 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16749)) mapDefault!54571)))))

(declare-fun b!1310425 () Bool)

(declare-fun res!870039 () Bool)

(assert (=> b!1310425 (=> (not res!870039) (not e!747573))))

(assert (=> b!1310425 (= res!870039 (contains!8437 (getCurrentListMap!5307 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110766 res!870043) b!1310423))

(assert (= (and b!1310423 res!870041) b!1310422))

(assert (= (and b!1310422 res!870042) b!1310416))

(assert (= (and b!1310416 res!870040) b!1310418))

(assert (= (and b!1310418 res!870038) b!1310425))

(assert (= (and b!1310425 res!870039) b!1310421))

(assert (= (and b!1310421 res!870036) b!1310415))

(assert (= (and b!1310415 res!870037) b!1310419))

(assert (= (and b!1310419 res!870044) b!1310417))

(assert (= (and b!1310424 condMapEmpty!54571) mapIsEmpty!54571))

(assert (= (and b!1310424 (not condMapEmpty!54571)) mapNonEmpty!54571))

(get-info :version)

(assert (= (and mapNonEmpty!54571 ((_ is ValueCellFull!16749) mapValue!54571)) b!1310414))

(assert (= (and b!1310424 ((_ is ValueCellFull!16749) mapDefault!54571)) b!1310420))

(assert (= start!110766 b!1310424))

(declare-fun m!1200215 () Bool)

(assert (=> b!1310425 m!1200215))

(assert (=> b!1310425 m!1200215))

(declare-fun m!1200217 () Bool)

(assert (=> b!1310425 m!1200217))

(declare-fun m!1200219 () Bool)

(assert (=> b!1310421 m!1200219))

(declare-fun m!1200221 () Bool)

(assert (=> mapNonEmpty!54571 m!1200221))

(declare-fun m!1200223 () Bool)

(assert (=> b!1310417 m!1200223))

(assert (=> b!1310417 m!1200223))

(declare-fun m!1200225 () Bool)

(assert (=> b!1310417 m!1200225))

(declare-fun m!1200227 () Bool)

(assert (=> b!1310417 m!1200227))

(assert (=> b!1310415 m!1200219))

(assert (=> b!1310415 m!1200219))

(declare-fun m!1200229 () Bool)

(assert (=> b!1310415 m!1200229))

(declare-fun m!1200231 () Bool)

(assert (=> b!1310422 m!1200231))

(declare-fun m!1200233 () Bool)

(assert (=> start!110766 m!1200233))

(declare-fun m!1200235 () Bool)

(assert (=> start!110766 m!1200235))

(declare-fun m!1200237 () Bool)

(assert (=> start!110766 m!1200237))

(declare-fun m!1200239 () Bool)

(assert (=> b!1310416 m!1200239))

(check-sat (not b!1310425) (not b!1310415) (not b!1310417) tp_is_empty!35295 (not start!110766) (not b!1310422) (not b_next!29565) (not b!1310416) b_and!47783 (not mapNonEmpty!54571))
(check-sat b_and!47783 (not b_next!29565))
