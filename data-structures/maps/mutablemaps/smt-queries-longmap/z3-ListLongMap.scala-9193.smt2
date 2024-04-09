; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110544 () Bool)

(assert start!110544)

(declare-fun b_free!29343 () Bool)

(declare-fun b_next!29343 () Bool)

(assert (=> start!110544 (= b_free!29343 (not b_next!29343))))

(declare-fun tp!103351 () Bool)

(declare-fun b_and!47561 () Bool)

(assert (=> start!110544 (= tp!103351 b_and!47561)))

(declare-fun res!867778 () Bool)

(declare-fun e!745910 () Bool)

(assert (=> start!110544 (=> (not res!867778) (not e!745910))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110544 (= res!867778 (validMask!0 mask!2040))))

(assert (=> start!110544 e!745910))

(assert (=> start!110544 tp!103351))

(declare-datatypes ((array!87121 0))(
  ( (array!87122 (arr!42036 (Array (_ BitVec 32) (_ BitVec 64))) (size!42587 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87121)

(declare-fun array_inv!31775 (array!87121) Bool)

(assert (=> start!110544 (array_inv!31775 _keys!1628)))

(assert (=> start!110544 true))

(declare-fun tp_is_empty!35073 () Bool)

(assert (=> start!110544 tp_is_empty!35073))

(declare-datatypes ((V!51867 0))(
  ( (V!51868 (val!17611 Int)) )
))
(declare-datatypes ((ValueCell!16638 0))(
  ( (ValueCellFull!16638 (v!20236 V!51867)) (EmptyCell!16638) )
))
(declare-datatypes ((array!87123 0))(
  ( (array!87124 (arr!42037 (Array (_ BitVec 32) ValueCell!16638)) (size!42588 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87123)

(declare-fun e!745907 () Bool)

(declare-fun array_inv!31776 (array!87123) Bool)

(assert (=> start!110544 (and (array_inv!31776 _values!1354) e!745907)))

(declare-fun b!1307154 () Bool)

(declare-fun res!867775 () Bool)

(assert (=> b!1307154 (=> (not res!867775) (not e!745910))))

(declare-datatypes ((List!30005 0))(
  ( (Nil!30002) (Cons!30001 (h!31210 (_ BitVec 64)) (t!43618 List!30005)) )
))
(declare-fun arrayNoDuplicates!0 (array!87121 (_ BitVec 32) List!30005) Bool)

(assert (=> b!1307154 (= res!867775 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30002))))

(declare-fun mapIsEmpty!54238 () Bool)

(declare-fun mapRes!54238 () Bool)

(assert (=> mapIsEmpty!54238 mapRes!54238))

(declare-fun b!1307155 () Bool)

(declare-fun e!745909 () Bool)

(assert (=> b!1307155 (= e!745907 (and e!745909 mapRes!54238))))

(declare-fun condMapEmpty!54238 () Bool)

(declare-fun mapDefault!54238 () ValueCell!16638)

(assert (=> b!1307155 (= condMapEmpty!54238 (= (arr!42037 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16638)) mapDefault!54238)))))

(declare-fun b!1307156 () Bool)

(assert (=> b!1307156 (= e!745909 tp_is_empty!35073)))

(declare-fun b!1307157 () Bool)

(declare-fun e!745906 () Bool)

(assert (=> b!1307157 (= e!745906 tp_is_empty!35073)))

(declare-fun b!1307158 () Bool)

(declare-fun res!867776 () Bool)

(assert (=> b!1307158 (=> (not res!867776) (not e!745910))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1307158 (= res!867776 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42587 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307159 () Bool)

(assert (=> b!1307159 (= e!745910 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun minValue!1296 () V!51867)

(declare-fun zeroValue!1296 () V!51867)

(declare-fun lt!584965 () Bool)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!22834 0))(
  ( (tuple2!22835 (_1!11427 (_ BitVec 64)) (_2!11427 V!51867)) )
))
(declare-datatypes ((List!30006 0))(
  ( (Nil!30003) (Cons!30002 (h!31211 tuple2!22834) (t!43619 List!30006)) )
))
(declare-datatypes ((ListLongMap!20503 0))(
  ( (ListLongMap!20504 (toList!10267 List!30006)) )
))
(declare-fun contains!8353 (ListLongMap!20503 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5223 (array!87121 array!87123 (_ BitVec 32) (_ BitVec 32) V!51867 V!51867 (_ BitVec 32) Int) ListLongMap!20503)

(assert (=> b!1307159 (= lt!584965 (contains!8353 (getCurrentListMap!5223 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1307160 () Bool)

(declare-fun res!867777 () Bool)

(assert (=> b!1307160 (=> (not res!867777) (not e!745910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87121 (_ BitVec 32)) Bool)

(assert (=> b!1307160 (= res!867777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun mapNonEmpty!54238 () Bool)

(declare-fun tp!103352 () Bool)

(assert (=> mapNonEmpty!54238 (= mapRes!54238 (and tp!103352 e!745906))))

(declare-fun mapRest!54238 () (Array (_ BitVec 32) ValueCell!16638))

(declare-fun mapValue!54238 () ValueCell!16638)

(declare-fun mapKey!54238 () (_ BitVec 32))

(assert (=> mapNonEmpty!54238 (= (arr!42037 _values!1354) (store mapRest!54238 mapKey!54238 mapValue!54238))))

(declare-fun b!1307161 () Bool)

(declare-fun res!867779 () Bool)

(assert (=> b!1307161 (=> (not res!867779) (not e!745910))))

(assert (=> b!1307161 (= res!867779 (and (= (size!42588 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42587 _keys!1628) (size!42588 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110544 res!867778) b!1307161))

(assert (= (and b!1307161 res!867779) b!1307160))

(assert (= (and b!1307160 res!867777) b!1307154))

(assert (= (and b!1307154 res!867775) b!1307158))

(assert (= (and b!1307158 res!867776) b!1307159))

(assert (= (and b!1307155 condMapEmpty!54238) mapIsEmpty!54238))

(assert (= (and b!1307155 (not condMapEmpty!54238)) mapNonEmpty!54238))

(get-info :version)

(assert (= (and mapNonEmpty!54238 ((_ is ValueCellFull!16638) mapValue!54238)) b!1307157))

(assert (= (and b!1307155 ((_ is ValueCellFull!16638) mapDefault!54238)) b!1307156))

(assert (= start!110544 b!1307155))

(declare-fun m!1197949 () Bool)

(assert (=> start!110544 m!1197949))

(declare-fun m!1197951 () Bool)

(assert (=> start!110544 m!1197951))

(declare-fun m!1197953 () Bool)

(assert (=> start!110544 m!1197953))

(declare-fun m!1197955 () Bool)

(assert (=> b!1307159 m!1197955))

(assert (=> b!1307159 m!1197955))

(declare-fun m!1197957 () Bool)

(assert (=> b!1307159 m!1197957))

(declare-fun m!1197959 () Bool)

(assert (=> b!1307160 m!1197959))

(declare-fun m!1197961 () Bool)

(assert (=> mapNonEmpty!54238 m!1197961))

(declare-fun m!1197963 () Bool)

(assert (=> b!1307154 m!1197963))

(check-sat (not b!1307159) (not b!1307160) (not start!110544) (not b!1307154) b_and!47561 (not mapNonEmpty!54238) tp_is_empty!35073 (not b_next!29343))
(check-sat b_and!47561 (not b_next!29343))
