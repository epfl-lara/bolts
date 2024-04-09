; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110520 () Bool)

(assert start!110520)

(declare-fun b!1306870 () Bool)

(declare-fun e!745728 () Bool)

(declare-fun tp_is_empty!35049 () Bool)

(assert (=> b!1306870 (= e!745728 tp_is_empty!35049)))

(declare-fun b!1306871 () Bool)

(declare-fun e!745729 () Bool)

(assert (=> b!1306871 (= e!745729 tp_is_empty!35049)))

(declare-fun e!745727 () Bool)

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun b!1306872 () Bool)

(declare-datatypes ((array!87081 0))(
  ( (array!87082 (arr!42016 (Array (_ BitVec 32) (_ BitVec 64))) (size!42567 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87081)

(assert (=> b!1306872 (= e!745727 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42567 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsgt from!2020 (size!42567 _keys!1628))))))

(declare-fun res!867602 () Bool)

(assert (=> start!110520 (=> (not res!867602) (not e!745727))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110520 (= res!867602 (validMask!0 mask!2040))))

(assert (=> start!110520 e!745727))

(declare-fun array_inv!31765 (array!87081) Bool)

(assert (=> start!110520 (array_inv!31765 _keys!1628)))

(assert (=> start!110520 true))

(declare-datatypes ((V!51835 0))(
  ( (V!51836 (val!17599 Int)) )
))
(declare-datatypes ((ValueCell!16626 0))(
  ( (ValueCellFull!16626 (v!20224 V!51835)) (EmptyCell!16626) )
))
(declare-datatypes ((array!87083 0))(
  ( (array!87084 (arr!42017 (Array (_ BitVec 32) ValueCell!16626)) (size!42568 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87083)

(declare-fun e!745726 () Bool)

(declare-fun array_inv!31766 (array!87083) Bool)

(assert (=> start!110520 (and (array_inv!31766 _values!1354) e!745726)))

(declare-fun b!1306873 () Bool)

(declare-fun res!867601 () Bool)

(assert (=> b!1306873 (=> (not res!867601) (not e!745727))))

(declare-datatypes ((List!29995 0))(
  ( (Nil!29992) (Cons!29991 (h!31200 (_ BitVec 64)) (t!43608 List!29995)) )
))
(declare-fun arrayNoDuplicates!0 (array!87081 (_ BitVec 32) List!29995) Bool)

(assert (=> b!1306873 (= res!867601 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!29992))))

(declare-fun mapIsEmpty!54202 () Bool)

(declare-fun mapRes!54202 () Bool)

(assert (=> mapIsEmpty!54202 mapRes!54202))

(declare-fun b!1306874 () Bool)

(declare-fun res!867600 () Bool)

(assert (=> b!1306874 (=> (not res!867600) (not e!745727))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87081 (_ BitVec 32)) Bool)

(assert (=> b!1306874 (= res!867600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1306875 () Bool)

(assert (=> b!1306875 (= e!745726 (and e!745729 mapRes!54202))))

(declare-fun condMapEmpty!54202 () Bool)

(declare-fun mapDefault!54202 () ValueCell!16626)

(assert (=> b!1306875 (= condMapEmpty!54202 (= (arr!42017 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16626)) mapDefault!54202)))))

(declare-fun b!1306876 () Bool)

(declare-fun res!867599 () Bool)

(assert (=> b!1306876 (=> (not res!867599) (not e!745727))))

(declare-fun extraKeys!1275 () (_ BitVec 32))

(assert (=> b!1306876 (= res!867599 (and (= (size!42568 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42567 _keys!1628) (size!42568 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!54202 () Bool)

(declare-fun tp!103283 () Bool)

(assert (=> mapNonEmpty!54202 (= mapRes!54202 (and tp!103283 e!745728))))

(declare-fun mapValue!54202 () ValueCell!16626)

(declare-fun mapKey!54202 () (_ BitVec 32))

(declare-fun mapRest!54202 () (Array (_ BitVec 32) ValueCell!16626))

(assert (=> mapNonEmpty!54202 (= (arr!42017 _values!1354) (store mapRest!54202 mapKey!54202 mapValue!54202))))

(assert (= (and start!110520 res!867602) b!1306876))

(assert (= (and b!1306876 res!867599) b!1306874))

(assert (= (and b!1306874 res!867600) b!1306873))

(assert (= (and b!1306873 res!867601) b!1306872))

(assert (= (and b!1306875 condMapEmpty!54202) mapIsEmpty!54202))

(assert (= (and b!1306875 (not condMapEmpty!54202)) mapNonEmpty!54202))

(get-info :version)

(assert (= (and mapNonEmpty!54202 ((_ is ValueCellFull!16626) mapValue!54202)) b!1306870))

(assert (= (and b!1306875 ((_ is ValueCellFull!16626) mapDefault!54202)) b!1306871))

(assert (= start!110520 b!1306875))

(declare-fun m!1197765 () Bool)

(assert (=> start!110520 m!1197765))

(declare-fun m!1197767 () Bool)

(assert (=> start!110520 m!1197767))

(declare-fun m!1197769 () Bool)

(assert (=> start!110520 m!1197769))

(declare-fun m!1197771 () Bool)

(assert (=> b!1306873 m!1197771))

(declare-fun m!1197773 () Bool)

(assert (=> b!1306874 m!1197773))

(declare-fun m!1197775 () Bool)

(assert (=> mapNonEmpty!54202 m!1197775))

(check-sat tp_is_empty!35049 (not start!110520) (not mapNonEmpty!54202) (not b!1306873) (not b!1306874))
(check-sat)
