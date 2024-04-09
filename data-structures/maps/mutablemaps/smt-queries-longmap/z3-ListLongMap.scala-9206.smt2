; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110622 () Bool)

(assert start!110622)

(declare-fun b_free!29421 () Bool)

(declare-fun b_next!29421 () Bool)

(assert (=> start!110622 (= b_free!29421 (not b_next!29421))))

(declare-fun tp!103585 () Bool)

(declare-fun b_and!47639 () Bool)

(assert (=> start!110622 (= tp!103585 b_and!47639)))

(declare-fun b!1308254 () Bool)

(declare-fun res!868532 () Bool)

(declare-fun e!746494 () Bool)

(assert (=> b!1308254 (=> (not res!868532) (not e!746494))))

(declare-datatypes ((array!87269 0))(
  ( (array!87270 (arr!42110 (Array (_ BitVec 32) (_ BitVec 64))) (size!42661 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87269)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87269 (_ BitVec 32)) Bool)

(assert (=> b!1308254 (= res!868532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1308255 () Bool)

(declare-fun res!868529 () Bool)

(assert (=> b!1308255 (=> (not res!868529) (not e!746494))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1308255 (= res!868529 (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1308256 () Bool)

(declare-fun res!868524 () Bool)

(assert (=> b!1308256 (=> (not res!868524) (not e!746494))))

(declare-datatypes ((List!30062 0))(
  ( (Nil!30059) (Cons!30058 (h!31267 (_ BitVec 64)) (t!43675 List!30062)) )
))
(declare-fun arrayNoDuplicates!0 (array!87269 (_ BitVec 32) List!30062) Bool)

(assert (=> b!1308256 (= res!868524 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30059))))

(declare-fun res!868530 () Bool)

(assert (=> start!110622 (=> (not res!868530) (not e!746494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110622 (= res!868530 (validMask!0 mask!2040))))

(assert (=> start!110622 e!746494))

(assert (=> start!110622 tp!103585))

(declare-fun array_inv!31827 (array!87269) Bool)

(assert (=> start!110622 (array_inv!31827 _keys!1628)))

(assert (=> start!110622 true))

(declare-fun tp_is_empty!35151 () Bool)

(assert (=> start!110622 tp_is_empty!35151))

(declare-datatypes ((V!51971 0))(
  ( (V!51972 (val!17650 Int)) )
))
(declare-datatypes ((ValueCell!16677 0))(
  ( (ValueCellFull!16677 (v!20275 V!51971)) (EmptyCell!16677) )
))
(declare-datatypes ((array!87271 0))(
  ( (array!87272 (arr!42111 (Array (_ BitVec 32) ValueCell!16677)) (size!42662 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87271)

(declare-fun e!746492 () Bool)

(declare-fun array_inv!31828 (array!87271) Bool)

(assert (=> start!110622 (and (array_inv!31828 _values!1354) e!746492)))

(declare-fun b!1308257 () Bool)

(declare-fun res!868528 () Bool)

(assert (=> b!1308257 (=> (not res!868528) (not e!746494))))

(assert (=> b!1308257 (= res!868528 (and (= (size!42662 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42661 _keys!1628) (size!42662 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1308258 () Bool)

(declare-fun res!868525 () Bool)

(assert (=> b!1308258 (=> (not res!868525) (not e!746494))))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1308258 (= res!868525 (validKeyInArray!0 (select (arr!42110 _keys!1628) from!2020)))))

(declare-fun b!1308259 () Bool)

(declare-fun e!746495 () Bool)

(declare-fun mapRes!54355 () Bool)

(assert (=> b!1308259 (= e!746492 (and e!746495 mapRes!54355))))

(declare-fun condMapEmpty!54355 () Bool)

(declare-fun mapDefault!54355 () ValueCell!16677)

(assert (=> b!1308259 (= condMapEmpty!54355 (= (arr!42111 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16677)) mapDefault!54355)))))

(declare-fun b!1308260 () Bool)

(assert (=> b!1308260 (= e!746495 tp_is_empty!35151)))

(declare-fun mapIsEmpty!54355 () Bool)

(assert (=> mapIsEmpty!54355 mapRes!54355))

(declare-fun b!1308261 () Bool)

(declare-fun res!868531 () Bool)

(assert (=> b!1308261 (=> (not res!868531) (not e!746494))))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51971)

(declare-fun zeroValue!1296 () V!51971)

(declare-datatypes ((tuple2!22890 0))(
  ( (tuple2!22891 (_1!11455 (_ BitVec 64)) (_2!11455 V!51971)) )
))
(declare-datatypes ((List!30063 0))(
  ( (Nil!30060) (Cons!30059 (h!31268 tuple2!22890) (t!43676 List!30063)) )
))
(declare-datatypes ((ListLongMap!20559 0))(
  ( (ListLongMap!20560 (toList!10295 List!30063)) )
))
(declare-fun contains!8381 (ListLongMap!20559 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5251 (array!87269 array!87271 (_ BitVec 32) (_ BitVec 32) V!51971 V!51971 (_ BitVec 32) Int) ListLongMap!20559)

(assert (=> b!1308261 (= res!868531 (contains!8381 (getCurrentListMap!5251 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapNonEmpty!54355 () Bool)

(declare-fun tp!103586 () Bool)

(declare-fun e!746491 () Bool)

(assert (=> mapNonEmpty!54355 (= mapRes!54355 (and tp!103586 e!746491))))

(declare-fun mapValue!54355 () ValueCell!16677)

(declare-fun mapKey!54355 () (_ BitVec 32))

(declare-fun mapRest!54355 () (Array (_ BitVec 32) ValueCell!16677))

(assert (=> mapNonEmpty!54355 (= (arr!42111 _values!1354) (store mapRest!54355 mapKey!54355 mapValue!54355))))

(declare-fun b!1308262 () Bool)

(declare-fun res!868526 () Bool)

(assert (=> b!1308262 (=> (not res!868526) (not e!746494))))

(assert (=> b!1308262 (= res!868526 (not (= (select (arr!42110 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1308263 () Bool)

(declare-fun res!868527 () Bool)

(assert (=> b!1308263 (=> (not res!868527) (not e!746494))))

(assert (=> b!1308263 (= res!868527 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42661 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1308264 () Bool)

(assert (=> b!1308264 (= e!746491 tp_is_empty!35151)))

(declare-fun b!1308265 () Bool)

(assert (=> b!1308265 (= e!746494 (not true))))

(assert (=> b!1308265 (contains!8381 (getCurrentListMap!5251 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43238 0))(
  ( (Unit!43239) )
))
(declare-fun lt!585082 () Unit!43238)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!9 (array!87269 array!87271 (_ BitVec 32) (_ BitVec 32) V!51971 V!51971 (_ BitVec 64) (_ BitVec 32) Int) Unit!43238)

(assert (=> b!1308265 (= lt!585082 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstNoXZero!9 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(assert (= (and start!110622 res!868530) b!1308257))

(assert (= (and b!1308257 res!868528) b!1308254))

(assert (= (and b!1308254 res!868532) b!1308256))

(assert (= (and b!1308256 res!868524) b!1308263))

(assert (= (and b!1308263 res!868527) b!1308261))

(assert (= (and b!1308261 res!868531) b!1308262))

(assert (= (and b!1308262 res!868526) b!1308258))

(assert (= (and b!1308258 res!868525) b!1308255))

(assert (= (and b!1308255 res!868529) b!1308265))

(assert (= (and b!1308259 condMapEmpty!54355) mapIsEmpty!54355))

(assert (= (and b!1308259 (not condMapEmpty!54355)) mapNonEmpty!54355))

(get-info :version)

(assert (= (and mapNonEmpty!54355 ((_ is ValueCellFull!16677) mapValue!54355)) b!1308264))

(assert (= (and b!1308259 ((_ is ValueCellFull!16677) mapDefault!54355)) b!1308260))

(assert (= start!110622 b!1308259))

(declare-fun m!1198703 () Bool)

(assert (=> mapNonEmpty!54355 m!1198703))

(declare-fun m!1198705 () Bool)

(assert (=> b!1308262 m!1198705))

(assert (=> b!1308258 m!1198705))

(assert (=> b!1308258 m!1198705))

(declare-fun m!1198707 () Bool)

(assert (=> b!1308258 m!1198707))

(declare-fun m!1198709 () Bool)

(assert (=> b!1308256 m!1198709))

(declare-fun m!1198711 () Bool)

(assert (=> b!1308254 m!1198711))

(declare-fun m!1198713 () Bool)

(assert (=> start!110622 m!1198713))

(declare-fun m!1198715 () Bool)

(assert (=> start!110622 m!1198715))

(declare-fun m!1198717 () Bool)

(assert (=> start!110622 m!1198717))

(declare-fun m!1198719 () Bool)

(assert (=> b!1308265 m!1198719))

(assert (=> b!1308265 m!1198719))

(declare-fun m!1198721 () Bool)

(assert (=> b!1308265 m!1198721))

(declare-fun m!1198723 () Bool)

(assert (=> b!1308265 m!1198723))

(declare-fun m!1198725 () Bool)

(assert (=> b!1308261 m!1198725))

(assert (=> b!1308261 m!1198725))

(declare-fun m!1198727 () Bool)

(assert (=> b!1308261 m!1198727))

(check-sat (not start!110622) (not mapNonEmpty!54355) (not b_next!29421) (not b!1308265) (not b!1308258) (not b!1308261) b_and!47639 (not b!1308254) tp_is_empty!35151 (not b!1308256))
(check-sat b_and!47639 (not b_next!29421))
