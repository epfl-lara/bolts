; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111108 () Bool)

(assert start!111108)

(declare-fun b_free!29907 () Bool)

(declare-fun b_next!29907 () Bool)

(assert (=> start!111108 (= b_free!29907 (not b_next!29907))))

(declare-fun tp!105044 () Bool)

(declare-fun b_and!48125 () Bool)

(assert (=> start!111108 (= tp!105044 b_and!48125)))

(declare-fun b!1314957 () Bool)

(declare-fun res!873042 () Bool)

(declare-fun e!750138 () Bool)

(assert (=> b!1314957 (=> (not res!873042) (not e!750138))))

(declare-datatypes ((array!88203 0))(
  ( (array!88204 (arr!42577 (Array (_ BitVec 32) (_ BitVec 64))) (size!43128 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88203)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1314957 (= res!873042 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43128 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1314958 () Bool)

(declare-fun e!750140 () Bool)

(declare-fun tp_is_empty!35637 () Bool)

(assert (=> b!1314958 (= e!750140 tp_is_empty!35637)))

(declare-fun b!1314959 () Bool)

(declare-fun res!873044 () Bool)

(assert (=> b!1314959 (=> (not res!873044) (not e!750138))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88203 (_ BitVec 32)) Bool)

(assert (=> b!1314959 (= res!873044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1314960 () Bool)

(assert (=> b!1314960 (= e!750138 false)))

(declare-fun lt!585802 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((V!52619 0))(
  ( (V!52620 (val!17893 Int)) )
))
(declare-fun minValue!1296 () V!52619)

(declare-datatypes ((ValueCell!16920 0))(
  ( (ValueCellFull!16920 (v!20518 V!52619)) (EmptyCell!16920) )
))
(declare-datatypes ((array!88205 0))(
  ( (array!88206 (arr!42578 (Array (_ BitVec 32) ValueCell!16920)) (size!43129 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88205)

(declare-fun zeroValue!1296 () V!52619)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-datatypes ((tuple2!23238 0))(
  ( (tuple2!23239 (_1!11629 (_ BitVec 64)) (_2!11629 V!52619)) )
))
(declare-datatypes ((List!30404 0))(
  ( (Nil!30401) (Cons!30400 (h!31609 tuple2!23238) (t!44017 List!30404)) )
))
(declare-datatypes ((ListLongMap!20907 0))(
  ( (ListLongMap!20908 (toList!10469 List!30404)) )
))
(declare-fun contains!8555 (ListLongMap!20907 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5425 (array!88203 array!88205 (_ BitVec 32) (_ BitVec 32) V!52619 V!52619 (_ BitVec 32) Int) ListLongMap!20907)

(assert (=> b!1314960 (= lt!585802 (contains!8555 (getCurrentListMap!5425 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1314962 () Bool)

(declare-fun e!750136 () Bool)

(declare-fun mapRes!55084 () Bool)

(assert (=> b!1314962 (= e!750136 (and e!750140 mapRes!55084))))

(declare-fun condMapEmpty!55084 () Bool)

(declare-fun mapDefault!55084 () ValueCell!16920)

(assert (=> b!1314962 (= condMapEmpty!55084 (= (arr!42578 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16920)) mapDefault!55084)))))

(declare-fun mapNonEmpty!55084 () Bool)

(declare-fun tp!105043 () Bool)

(declare-fun e!750139 () Bool)

(assert (=> mapNonEmpty!55084 (= mapRes!55084 (and tp!105043 e!750139))))

(declare-fun mapKey!55084 () (_ BitVec 32))

(declare-fun mapValue!55084 () ValueCell!16920)

(declare-fun mapRest!55084 () (Array (_ BitVec 32) ValueCell!16920))

(assert (=> mapNonEmpty!55084 (= (arr!42578 _values!1354) (store mapRest!55084 mapKey!55084 mapValue!55084))))

(declare-fun res!873043 () Bool)

(assert (=> start!111108 (=> (not res!873043) (not e!750138))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111108 (= res!873043 (validMask!0 mask!2040))))

(assert (=> start!111108 e!750138))

(assert (=> start!111108 tp!105044))

(declare-fun array_inv!32131 (array!88203) Bool)

(assert (=> start!111108 (array_inv!32131 _keys!1628)))

(assert (=> start!111108 true))

(assert (=> start!111108 tp_is_empty!35637))

(declare-fun array_inv!32132 (array!88205) Bool)

(assert (=> start!111108 (and (array_inv!32132 _values!1354) e!750136)))

(declare-fun b!1314961 () Bool)

(declare-fun res!873041 () Bool)

(assert (=> b!1314961 (=> (not res!873041) (not e!750138))))

(assert (=> b!1314961 (= res!873041 (and (= (size!43129 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!43128 _keys!1628) (size!43129 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1314963 () Bool)

(assert (=> b!1314963 (= e!750139 tp_is_empty!35637)))

(declare-fun b!1314964 () Bool)

(declare-fun res!873040 () Bool)

(assert (=> b!1314964 (=> (not res!873040) (not e!750138))))

(declare-datatypes ((List!30405 0))(
  ( (Nil!30402) (Cons!30401 (h!31610 (_ BitVec 64)) (t!44018 List!30405)) )
))
(declare-fun arrayNoDuplicates!0 (array!88203 (_ BitVec 32) List!30405) Bool)

(assert (=> b!1314964 (= res!873040 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30402))))

(declare-fun mapIsEmpty!55084 () Bool)

(assert (=> mapIsEmpty!55084 mapRes!55084))

(assert (= (and start!111108 res!873043) b!1314961))

(assert (= (and b!1314961 res!873041) b!1314959))

(assert (= (and b!1314959 res!873044) b!1314964))

(assert (= (and b!1314964 res!873040) b!1314957))

(assert (= (and b!1314957 res!873042) b!1314960))

(assert (= (and b!1314962 condMapEmpty!55084) mapIsEmpty!55084))

(assert (= (and b!1314962 (not condMapEmpty!55084)) mapNonEmpty!55084))

(get-info :version)

(assert (= (and mapNonEmpty!55084 ((_ is ValueCellFull!16920) mapValue!55084)) b!1314963))

(assert (= (and b!1314962 ((_ is ValueCellFull!16920) mapDefault!55084)) b!1314958))

(assert (= start!111108 b!1314962))

(declare-fun m!1203313 () Bool)

(assert (=> mapNonEmpty!55084 m!1203313))

(declare-fun m!1203315 () Bool)

(assert (=> start!111108 m!1203315))

(declare-fun m!1203317 () Bool)

(assert (=> start!111108 m!1203317))

(declare-fun m!1203319 () Bool)

(assert (=> start!111108 m!1203319))

(declare-fun m!1203321 () Bool)

(assert (=> b!1314960 m!1203321))

(assert (=> b!1314960 m!1203321))

(declare-fun m!1203323 () Bool)

(assert (=> b!1314960 m!1203323))

(declare-fun m!1203325 () Bool)

(assert (=> b!1314964 m!1203325))

(declare-fun m!1203327 () Bool)

(assert (=> b!1314959 m!1203327))

(check-sat (not b!1314959) (not start!111108) tp_is_empty!35637 (not b_next!29907) (not b!1314960) (not mapNonEmpty!55084) b_and!48125 (not b!1314964))
(check-sat b_and!48125 (not b_next!29907))
