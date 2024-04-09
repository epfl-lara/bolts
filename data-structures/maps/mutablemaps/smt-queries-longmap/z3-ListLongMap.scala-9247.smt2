; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110868 () Bool)

(assert start!110868)

(declare-fun b_free!29667 () Bool)

(declare-fun b_next!29667 () Bool)

(assert (=> start!110868 (= b_free!29667 (not b_next!29667))))

(declare-fun tp!104324 () Bool)

(declare-fun b_and!47885 () Bool)

(assert (=> start!110868 (= tp!104324 b_and!47885)))

(declare-fun b!1311818 () Bool)

(declare-fun e!748338 () Bool)

(assert (=> b!1311818 (= e!748338 (not true))))

(declare-fun defaultEntry!1357 () Int)

(declare-datatypes ((array!87745 0))(
  ( (array!87746 (arr!42348 (Array (_ BitVec 32) (_ BitVec 64))) (size!42899 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87745)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-datatypes ((V!52299 0))(
  ( (V!52300 (val!17773 Int)) )
))
(declare-fun minValue!1296 () V!52299)

(declare-datatypes ((ValueCell!16800 0))(
  ( (ValueCellFull!16800 (v!20398 V!52299)) (EmptyCell!16800) )
))
(declare-datatypes ((array!87747 0))(
  ( (array!87748 (arr!42349 (Array (_ BitVec 32) ValueCell!16800)) (size!42900 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87747)

(declare-fun zeroValue!1296 () V!52299)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((tuple2!23078 0))(
  ( (tuple2!23079 (_1!11549 (_ BitVec 64)) (_2!11549 V!52299)) )
))
(declare-datatypes ((List!30240 0))(
  ( (Nil!30237) (Cons!30236 (h!31445 tuple2!23078) (t!43853 List!30240)) )
))
(declare-datatypes ((ListLongMap!20747 0))(
  ( (ListLongMap!20748 (toList!10389 List!30240)) )
))
(declare-fun contains!8475 (ListLongMap!20747 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5345 (array!87745 array!87747 (_ BitVec 32) (_ BitVec 32) V!52299 V!52299 (_ BitVec 32) Int) ListLongMap!20747)

(assert (=> b!1311818 (contains!8475 (getCurrentListMap!5345 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 (bvadd #b00000000000000000000000000000001 from!2020) defaultEntry!1357) k0!1175)))

(declare-datatypes ((Unit!43312 0))(
  ( (Unit!43313) )
))
(declare-fun lt!585451 () Unit!43312)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!9 (array!87745 array!87747 (_ BitVec 32) (_ BitVec 32) V!52299 V!52299 (_ BitVec 64) (_ BitVec 32) Int) Unit!43312)

(assert (=> b!1311818 (= lt!585451 (lemmaInListMapFromThenFromPlsOneIfNotEqToFstXKeys!9 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 k0!1175 from!2020 defaultEntry!1357))))

(declare-fun b!1311819 () Bool)

(declare-fun e!748336 () Bool)

(declare-fun e!748337 () Bool)

(declare-fun mapRes!54724 () Bool)

(assert (=> b!1311819 (= e!748336 (and e!748337 mapRes!54724))))

(declare-fun condMapEmpty!54724 () Bool)

(declare-fun mapDefault!54724 () ValueCell!16800)

(assert (=> b!1311819 (= condMapEmpty!54724 (= (arr!42349 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16800)) mapDefault!54724)))))

(declare-fun b!1311820 () Bool)

(declare-fun res!870988 () Bool)

(assert (=> b!1311820 (=> (not res!870988) (not e!748338))))

(assert (=> b!1311820 (= res!870988 (and (= (size!42900 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42899 _keys!1628) (size!42900 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(declare-fun b!1311821 () Bool)

(declare-fun e!748339 () Bool)

(declare-fun tp_is_empty!35397 () Bool)

(assert (=> b!1311821 (= e!748339 tp_is_empty!35397)))

(declare-fun res!870985 () Bool)

(assert (=> start!110868 (=> (not res!870985) (not e!748338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110868 (= res!870985 (validMask!0 mask!2040))))

(assert (=> start!110868 e!748338))

(assert (=> start!110868 tp!104324))

(declare-fun array_inv!31979 (array!87745) Bool)

(assert (=> start!110868 (array_inv!31979 _keys!1628)))

(assert (=> start!110868 true))

(assert (=> start!110868 tp_is_empty!35397))

(declare-fun array_inv!31980 (array!87747) Bool)

(assert (=> start!110868 (and (array_inv!31980 _values!1354) e!748336)))

(declare-fun b!1311822 () Bool)

(declare-fun res!870989 () Bool)

(assert (=> b!1311822 (=> (not res!870989) (not e!748338))))

(assert (=> b!1311822 (= res!870989 (not (= (select (arr!42348 _keys!1628) from!2020) k0!1175)))))

(declare-fun b!1311823 () Bool)

(declare-fun res!870982 () Bool)

(assert (=> b!1311823 (=> (not res!870982) (not e!748338))))

(assert (=> b!1311823 (= res!870982 (and (not (= (bvand extraKeys!1275 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1275 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1311824 () Bool)

(declare-fun res!870984 () Bool)

(assert (=> b!1311824 (=> (not res!870984) (not e!748338))))

(declare-datatypes ((List!30241 0))(
  ( (Nil!30238) (Cons!30237 (h!31446 (_ BitVec 64)) (t!43854 List!30241)) )
))
(declare-fun arrayNoDuplicates!0 (array!87745 (_ BitVec 32) List!30241) Bool)

(assert (=> b!1311824 (= res!870984 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30238))))

(declare-fun b!1311825 () Bool)

(declare-fun res!870981 () Bool)

(assert (=> b!1311825 (=> (not res!870981) (not e!748338))))

(assert (=> b!1311825 (= res!870981 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42899 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1311826 () Bool)

(declare-fun res!870983 () Bool)

(assert (=> b!1311826 (=> (not res!870983) (not e!748338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1311826 (= res!870983 (validKeyInArray!0 (select (arr!42348 _keys!1628) from!2020)))))

(declare-fun mapNonEmpty!54724 () Bool)

(declare-fun tp!104323 () Bool)

(assert (=> mapNonEmpty!54724 (= mapRes!54724 (and tp!104323 e!748339))))

(declare-fun mapKey!54724 () (_ BitVec 32))

(declare-fun mapValue!54724 () ValueCell!16800)

(declare-fun mapRest!54724 () (Array (_ BitVec 32) ValueCell!16800))

(assert (=> mapNonEmpty!54724 (= (arr!42349 _values!1354) (store mapRest!54724 mapKey!54724 mapValue!54724))))

(declare-fun b!1311827 () Bool)

(assert (=> b!1311827 (= e!748337 tp_is_empty!35397)))

(declare-fun mapIsEmpty!54724 () Bool)

(assert (=> mapIsEmpty!54724 mapRes!54724))

(declare-fun b!1311828 () Bool)

(declare-fun res!870986 () Bool)

(assert (=> b!1311828 (=> (not res!870986) (not e!748338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87745 (_ BitVec 32)) Bool)

(assert (=> b!1311828 (= res!870986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1311829 () Bool)

(declare-fun res!870987 () Bool)

(assert (=> b!1311829 (=> (not res!870987) (not e!748338))))

(assert (=> b!1311829 (= res!870987 (contains!8475 (getCurrentListMap!5345 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(assert (= (and start!110868 res!870985) b!1311820))

(assert (= (and b!1311820 res!870988) b!1311828))

(assert (= (and b!1311828 res!870986) b!1311824))

(assert (= (and b!1311824 res!870984) b!1311825))

(assert (= (and b!1311825 res!870981) b!1311829))

(assert (= (and b!1311829 res!870987) b!1311822))

(assert (= (and b!1311822 res!870989) b!1311826))

(assert (= (and b!1311826 res!870983) b!1311823))

(assert (= (and b!1311823 res!870982) b!1311818))

(assert (= (and b!1311819 condMapEmpty!54724) mapIsEmpty!54724))

(assert (= (and b!1311819 (not condMapEmpty!54724)) mapNonEmpty!54724))

(get-info :version)

(assert (= (and mapNonEmpty!54724 ((_ is ValueCellFull!16800) mapValue!54724)) b!1311821))

(assert (= (and b!1311819 ((_ is ValueCellFull!16800) mapDefault!54724)) b!1311827))

(assert (= start!110868 b!1311819))

(declare-fun m!1201181 () Bool)

(assert (=> start!110868 m!1201181))

(declare-fun m!1201183 () Bool)

(assert (=> start!110868 m!1201183))

(declare-fun m!1201185 () Bool)

(assert (=> start!110868 m!1201185))

(declare-fun m!1201187 () Bool)

(assert (=> b!1311826 m!1201187))

(assert (=> b!1311826 m!1201187))

(declare-fun m!1201189 () Bool)

(assert (=> b!1311826 m!1201189))

(assert (=> b!1311822 m!1201187))

(declare-fun m!1201191 () Bool)

(assert (=> b!1311828 m!1201191))

(declare-fun m!1201193 () Bool)

(assert (=> b!1311824 m!1201193))

(declare-fun m!1201195 () Bool)

(assert (=> b!1311818 m!1201195))

(assert (=> b!1311818 m!1201195))

(declare-fun m!1201197 () Bool)

(assert (=> b!1311818 m!1201197))

(declare-fun m!1201199 () Bool)

(assert (=> b!1311818 m!1201199))

(declare-fun m!1201201 () Bool)

(assert (=> mapNonEmpty!54724 m!1201201))

(declare-fun m!1201203 () Bool)

(assert (=> b!1311829 m!1201203))

(assert (=> b!1311829 m!1201203))

(declare-fun m!1201205 () Bool)

(assert (=> b!1311829 m!1201205))

(check-sat (not b_next!29667) (not b!1311829) tp_is_empty!35397 (not b!1311826) (not mapNonEmpty!54724) (not start!110868) b_and!47885 (not b!1311824) (not b!1311828) (not b!1311818))
(check-sat b_and!47885 (not b_next!29667))
