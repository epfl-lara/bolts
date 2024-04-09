; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110562 () Bool)

(assert start!110562)

(declare-fun b_free!29361 () Bool)

(declare-fun b_next!29361 () Bool)

(assert (=> start!110562 (= b_free!29361 (not b_next!29361))))

(declare-fun tp!103406 () Bool)

(declare-fun b_and!47579 () Bool)

(assert (=> start!110562 (= tp!103406 b_and!47579)))

(declare-fun b!1307370 () Bool)

(declare-fun res!867910 () Bool)

(declare-fun e!746044 () Bool)

(assert (=> b!1307370 (=> (not res!867910) (not e!746044))))

(declare-datatypes ((array!87157 0))(
  ( (array!87158 (arr!42054 (Array (_ BitVec 32) (_ BitVec 64))) (size!42605 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87157)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!51891 0))(
  ( (V!51892 (val!17620 Int)) )
))
(declare-datatypes ((ValueCell!16647 0))(
  ( (ValueCellFull!16647 (v!20245 V!51891)) (EmptyCell!16647) )
))
(declare-datatypes ((array!87159 0))(
  ( (array!87160 (arr!42055 (Array (_ BitVec 32) ValueCell!16647)) (size!42606 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87159)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1307370 (= res!867910 (and (= (size!42606 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42605 _keys!1628) (size!42606 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54265 () Bool)

(declare-fun mapRes!54265 () Bool)

(declare-fun tp!103405 () Bool)

(declare-fun e!746041 () Bool)

(assert (=> mapNonEmpty!54265 (= mapRes!54265 (and tp!103405 e!746041))))

(declare-fun mapKey!54265 () (_ BitVec 32))

(declare-fun mapRest!54265 () (Array (_ BitVec 32) ValueCell!16647))

(declare-fun mapValue!54265 () ValueCell!16647)

(assert (=> mapNonEmpty!54265 (= (arr!42055 _values!1354) (store mapRest!54265 mapKey!54265 mapValue!54265))))

(declare-fun b!1307372 () Bool)

(assert (=> b!1307372 (= e!746044 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun minValue!1296 () V!51891)

(declare-fun zeroValue!1296 () V!51891)

(declare-fun lt!584992 () Bool)

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22844 0))(
  ( (tuple2!22845 (_1!11432 (_ BitVec 64)) (_2!11432 V!51891)) )
))
(declare-datatypes ((List!30018 0))(
  ( (Nil!30015) (Cons!30014 (h!31223 tuple2!22844) (t!43631 List!30018)) )
))
(declare-datatypes ((ListLongMap!20513 0))(
  ( (ListLongMap!20514 (toList!10272 List!30018)) )
))
(declare-fun contains!8358 (ListLongMap!20513 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5228 (array!87157 array!87159 (_ BitVec 32) (_ BitVec 32) V!51891 V!51891 (_ BitVec 32) Int) ListLongMap!20513)

(assert (=> b!1307372 (= lt!584992 (contains!8358 (getCurrentListMap!5228 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun mapIsEmpty!54265 () Bool)

(assert (=> mapIsEmpty!54265 mapRes!54265))

(declare-fun b!1307373 () Bool)

(declare-fun res!867911 () Bool)

(assert (=> b!1307373 (=> (not res!867911) (not e!746044))))

(declare-datatypes ((List!30019 0))(
  ( (Nil!30016) (Cons!30015 (h!31224 (_ BitVec 64)) (t!43632 List!30019)) )
))
(declare-fun arrayNoDuplicates!0 (array!87157 (_ BitVec 32) List!30019) Bool)

(assert (=> b!1307373 (= res!867911 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30016))))

(declare-fun b!1307374 () Bool)

(declare-fun res!867912 () Bool)

(assert (=> b!1307374 (=> (not res!867912) (not e!746044))))

(assert (=> b!1307374 (= res!867912 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42605 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307375 () Bool)

(declare-fun tp_is_empty!35091 () Bool)

(assert (=> b!1307375 (= e!746041 tp_is_empty!35091)))

(declare-fun b!1307376 () Bool)

(declare-fun e!746045 () Bool)

(declare-fun e!746042 () Bool)

(assert (=> b!1307376 (= e!746045 (and e!746042 mapRes!54265))))

(declare-fun condMapEmpty!54265 () Bool)

(declare-fun mapDefault!54265 () ValueCell!16647)

(assert (=> b!1307376 (= condMapEmpty!54265 (= (arr!42055 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16647)) mapDefault!54265)))))

(declare-fun b!1307377 () Bool)

(declare-fun res!867913 () Bool)

(assert (=> b!1307377 (=> (not res!867913) (not e!746044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87157 (_ BitVec 32)) Bool)

(assert (=> b!1307377 (= res!867913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!867914 () Bool)

(assert (=> start!110562 (=> (not res!867914) (not e!746044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110562 (= res!867914 (validMask!0 mask!2040))))

(assert (=> start!110562 e!746044))

(assert (=> start!110562 tp!103406))

(declare-fun array_inv!31789 (array!87157) Bool)

(assert (=> start!110562 (array_inv!31789 _keys!1628)))

(assert (=> start!110562 true))

(assert (=> start!110562 tp_is_empty!35091))

(declare-fun array_inv!31790 (array!87159) Bool)

(assert (=> start!110562 (and (array_inv!31790 _values!1354) e!746045)))

(declare-fun b!1307371 () Bool)

(assert (=> b!1307371 (= e!746042 tp_is_empty!35091)))

(assert (= (and start!110562 res!867914) b!1307370))

(assert (= (and b!1307370 res!867910) b!1307377))

(assert (= (and b!1307377 res!867913) b!1307373))

(assert (= (and b!1307373 res!867911) b!1307374))

(assert (= (and b!1307374 res!867912) b!1307372))

(assert (= (and b!1307376 condMapEmpty!54265) mapIsEmpty!54265))

(assert (= (and b!1307376 (not condMapEmpty!54265)) mapNonEmpty!54265))

(get-info :version)

(assert (= (and mapNonEmpty!54265 ((_ is ValueCellFull!16647) mapValue!54265)) b!1307375))

(assert (= (and b!1307376 ((_ is ValueCellFull!16647) mapDefault!54265)) b!1307371))

(assert (= start!110562 b!1307376))

(declare-fun m!1198093 () Bool)

(assert (=> mapNonEmpty!54265 m!1198093))

(declare-fun m!1198095 () Bool)

(assert (=> start!110562 m!1198095))

(declare-fun m!1198097 () Bool)

(assert (=> start!110562 m!1198097))

(declare-fun m!1198099 () Bool)

(assert (=> start!110562 m!1198099))

(declare-fun m!1198101 () Bool)

(assert (=> b!1307373 m!1198101))

(declare-fun m!1198103 () Bool)

(assert (=> b!1307377 m!1198103))

(declare-fun m!1198105 () Bool)

(assert (=> b!1307372 m!1198105))

(assert (=> b!1307372 m!1198105))

(declare-fun m!1198107 () Bool)

(assert (=> b!1307372 m!1198107))

(check-sat (not start!110562) tp_is_empty!35091 (not b!1307372) b_and!47579 (not b_next!29361) (not mapNonEmpty!54265) (not b!1307373) (not b!1307377))
(check-sat b_and!47579 (not b_next!29361))
