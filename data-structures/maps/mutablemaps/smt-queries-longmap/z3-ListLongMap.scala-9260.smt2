; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110946 () Bool)

(assert start!110946)

(declare-fun b_free!29745 () Bool)

(declare-fun b_next!29745 () Bool)

(assert (=> start!110946 (= b_free!29745 (not b_next!29745))))

(declare-fun tp!104558 () Bool)

(declare-fun b_and!47963 () Bool)

(assert (=> start!110946 (= tp!104558 b_and!47963)))

(declare-fun mapIsEmpty!54841 () Bool)

(declare-fun mapRes!54841 () Bool)

(assert (=> mapIsEmpty!54841 mapRes!54841))

(declare-fun b!1312950 () Bool)

(declare-fun res!871766 () Bool)

(declare-fun e!748923 () Bool)

(assert (=> b!1312950 (=> (not res!871766) (not e!748923))))

(declare-datatypes ((array!87899 0))(
  ( (array!87900 (arr!42425 (Array (_ BitVec 32) (_ BitVec 64))) (size!42976 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87899)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87899 (_ BitVec 32)) Bool)

(assert (=> b!1312950 (= res!871766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1312951 () Bool)

(declare-fun e!748921 () Bool)

(declare-fun tp_is_empty!35475 () Bool)

(assert (=> b!1312951 (= e!748921 tp_is_empty!35475)))

(declare-fun b!1312952 () Bool)

(declare-fun e!748924 () Bool)

(declare-fun e!748925 () Bool)

(assert (=> b!1312952 (= e!748924 (and e!748925 mapRes!54841))))

(declare-fun condMapEmpty!54841 () Bool)

(declare-datatypes ((V!52403 0))(
  ( (V!52404 (val!17812 Int)) )
))
(declare-datatypes ((ValueCell!16839 0))(
  ( (ValueCellFull!16839 (v!20437 V!52403)) (EmptyCell!16839) )
))
(declare-datatypes ((array!87901 0))(
  ( (array!87902 (arr!42426 (Array (_ BitVec 32) ValueCell!16839)) (size!42977 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87901)

(declare-fun mapDefault!54841 () ValueCell!16839)

(assert (=> b!1312952 (= condMapEmpty!54841 (= (arr!42426 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16839)) mapDefault!54841)))))

(declare-fun res!871762 () Bool)

(assert (=> start!110946 (=> (not res!871762) (not e!748923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110946 (= res!871762 (validMask!0 mask!2040))))

(assert (=> start!110946 e!748923))

(assert (=> start!110946 tp!104558))

(declare-fun array_inv!32031 (array!87899) Bool)

(assert (=> start!110946 (array_inv!32031 _keys!1628)))

(assert (=> start!110946 true))

(assert (=> start!110946 tp_is_empty!35475))

(declare-fun array_inv!32032 (array!87901) Bool)

(assert (=> start!110946 (and (array_inv!32032 _values!1354) e!748924)))

(declare-fun b!1312953 () Bool)

(declare-fun res!871765 () Bool)

(assert (=> b!1312953 (=> (not res!871765) (not e!748923))))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1312953 (= res!871765 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42976 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!54841 () Bool)

(declare-fun tp!104557 () Bool)

(assert (=> mapNonEmpty!54841 (= mapRes!54841 (and tp!104557 e!748921))))

(declare-fun mapKey!54841 () (_ BitVec 32))

(declare-fun mapRest!54841 () (Array (_ BitVec 32) ValueCell!16839))

(declare-fun mapValue!54841 () ValueCell!16839)

(assert (=> mapNonEmpty!54841 (= (arr!42426 _values!1354) (store mapRest!54841 mapKey!54841 mapValue!54841))))

(declare-fun b!1312954 () Bool)

(declare-fun res!871764 () Bool)

(assert (=> b!1312954 (=> (not res!871764) (not e!748923))))

(declare-datatypes ((List!30296 0))(
  ( (Nil!30293) (Cons!30292 (h!31501 (_ BitVec 64)) (t!43909 List!30296)) )
))
(declare-fun arrayNoDuplicates!0 (array!87899 (_ BitVec 32) List!30296) Bool)

(assert (=> b!1312954 (= res!871764 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30293))))

(declare-fun b!1312955 () Bool)

(assert (=> b!1312955 (= e!748923 false)))

(declare-fun minValue!1296 () V!52403)

(declare-fun zeroValue!1296 () V!52403)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun lt!585568 () Bool)

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((tuple2!23136 0))(
  ( (tuple2!23137 (_1!11578 (_ BitVec 64)) (_2!11578 V!52403)) )
))
(declare-datatypes ((List!30297 0))(
  ( (Nil!30294) (Cons!30293 (h!31502 tuple2!23136) (t!43910 List!30297)) )
))
(declare-datatypes ((ListLongMap!20805 0))(
  ( (ListLongMap!20806 (toList!10418 List!30297)) )
))
(declare-fun contains!8504 (ListLongMap!20805 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5374 (array!87899 array!87901 (_ BitVec 32) (_ BitVec 32) V!52403 V!52403 (_ BitVec 32) Int) ListLongMap!20805)

(assert (=> b!1312955 (= lt!585568 (contains!8504 (getCurrentListMap!5374 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1312956 () Bool)

(assert (=> b!1312956 (= e!748925 tp_is_empty!35475)))

(declare-fun b!1312957 () Bool)

(declare-fun res!871763 () Bool)

(assert (=> b!1312957 (=> (not res!871763) (not e!748923))))

(assert (=> b!1312957 (= res!871763 (and (= (size!42977 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42976 _keys!1628) (size!42977 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110946 res!871762) b!1312957))

(assert (= (and b!1312957 res!871763) b!1312950))

(assert (= (and b!1312950 res!871766) b!1312954))

(assert (= (and b!1312954 res!871764) b!1312953))

(assert (= (and b!1312953 res!871765) b!1312955))

(assert (= (and b!1312952 condMapEmpty!54841) mapIsEmpty!54841))

(assert (= (and b!1312952 (not condMapEmpty!54841)) mapNonEmpty!54841))

(get-info :version)

(assert (= (and mapNonEmpty!54841 ((_ is ValueCellFull!16839) mapValue!54841)) b!1312951))

(assert (= (and b!1312952 ((_ is ValueCellFull!16839) mapDefault!54841)) b!1312956))

(assert (= start!110946 b!1312952))

(declare-fun m!1201975 () Bool)

(assert (=> mapNonEmpty!54841 m!1201975))

(declare-fun m!1201977 () Bool)

(assert (=> b!1312955 m!1201977))

(assert (=> b!1312955 m!1201977))

(declare-fun m!1201979 () Bool)

(assert (=> b!1312955 m!1201979))

(declare-fun m!1201981 () Bool)

(assert (=> start!110946 m!1201981))

(declare-fun m!1201983 () Bool)

(assert (=> start!110946 m!1201983))

(declare-fun m!1201985 () Bool)

(assert (=> start!110946 m!1201985))

(declare-fun m!1201987 () Bool)

(assert (=> b!1312950 m!1201987))

(declare-fun m!1201989 () Bool)

(assert (=> b!1312954 m!1201989))

(check-sat b_and!47963 (not b!1312950) (not b!1312955) (not mapNonEmpty!54841) (not start!110946) (not b!1312954) tp_is_empty!35475 (not b_next!29745))
(check-sat b_and!47963 (not b_next!29745))
