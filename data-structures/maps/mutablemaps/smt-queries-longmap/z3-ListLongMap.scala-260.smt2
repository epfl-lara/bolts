; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4282 () Bool)

(assert start!4282)

(declare-fun b_free!1149 () Bool)

(declare-fun b_next!1149 () Bool)

(assert (=> start!4282 (= b_free!1149 (not b_next!1149))))

(declare-fun tp!4873 () Bool)

(declare-fun b_and!1965 () Bool)

(assert (=> start!4282 (= tp!4873 b_and!1965)))

(declare-fun b!32887 () Bool)

(declare-fun e!20894 () Bool)

(declare-fun tp_is_empty!1503 () Bool)

(assert (=> b!32887 (= e!20894 tp_is_empty!1503)))

(declare-fun b!32888 () Bool)

(declare-fun res!19970 () Bool)

(declare-fun e!20896 () Bool)

(assert (=> b!32888 (=> (not res!19970) (not e!20896))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!32888 (= res!19970 (validKeyInArray!0 k0!1304))))

(declare-fun b!32889 () Bool)

(declare-fun res!19966 () Bool)

(assert (=> b!32889 (=> (not res!19966) (not e!20896))))

(declare-datatypes ((V!1829 0))(
  ( (V!1830 (val!778 Int)) )
))
(declare-datatypes ((ValueCell!552 0))(
  ( (ValueCellFull!552 (v!1869 V!1829)) (EmptyCell!552) )
))
(declare-datatypes ((array!2215 0))(
  ( (array!2216 (arr!1059 (Array (_ BitVec 32) ValueCell!552)) (size!1160 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2215)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-datatypes ((array!2217 0))(
  ( (array!2218 (arr!1060 (Array (_ BitVec 32) (_ BitVec 64))) (size!1161 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2217)

(declare-fun mask!2294 () (_ BitVec 32))

(assert (=> b!32889 (= res!19966 (and (= (size!1160 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1161 _keys!1833) (size!1160 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!32890 () Bool)

(declare-fun e!20895 () Bool)

(assert (=> b!32890 (= e!20895 (not true))))

(declare-datatypes ((tuple2!1258 0))(
  ( (tuple2!1259 (_1!639 (_ BitVec 64)) (_2!639 V!1829)) )
))
(declare-datatypes ((List!861 0))(
  ( (Nil!858) (Cons!857 (h!1424 tuple2!1258) (t!3560 List!861)) )
))
(declare-datatypes ((ListLongMap!839 0))(
  ( (ListLongMap!840 (toList!435 List!861)) )
))
(declare-fun lt!11921 () ListLongMap!839)

(declare-fun lt!11922 () (_ BitVec 32))

(declare-fun contains!374 (ListLongMap!839 (_ BitVec 64)) Bool)

(assert (=> b!32890 (contains!374 lt!11921 (select (arr!1060 _keys!1833) lt!11922))))

(declare-datatypes ((Unit!723 0))(
  ( (Unit!724) )
))
(declare-fun lt!11920 () Unit!723)

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!1829)

(declare-fun minValue!1443 () V!1829)

(declare-fun lemmaValidKeyInArrayIsInListMap!49 (array!2217 array!2215 (_ BitVec 32) (_ BitVec 32) V!1829 V!1829 (_ BitVec 32) Int) Unit!723)

(assert (=> b!32890 (= lt!11920 (lemmaValidKeyInArrayIsInListMap!49 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 lt!11922 defaultEntry!1504))))

(declare-fun arrayScanForKey!0 (array!2217 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!32890 (= lt!11922 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32891 () Bool)

(declare-fun res!19968 () Bool)

(assert (=> b!32891 (=> (not res!19968) (not e!20896))))

(declare-datatypes ((List!862 0))(
  ( (Nil!859) (Cons!858 (h!1425 (_ BitVec 64)) (t!3561 List!862)) )
))
(declare-fun arrayNoDuplicates!0 (array!2217 (_ BitVec 32) List!862) Bool)

(assert (=> b!32891 (= res!19968 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!859))))

(declare-fun b!32892 () Bool)

(declare-fun res!19972 () Bool)

(assert (=> b!32892 (=> (not res!19972) (not e!20896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2217 (_ BitVec 32)) Bool)

(assert (=> b!32892 (= res!19972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!32893 () Bool)

(declare-fun e!20893 () Bool)

(assert (=> b!32893 (= e!20893 tp_is_empty!1503)))

(declare-fun mapIsEmpty!1789 () Bool)

(declare-fun mapRes!1789 () Bool)

(assert (=> mapIsEmpty!1789 mapRes!1789))

(declare-fun res!19969 () Bool)

(assert (=> start!4282 (=> (not res!19969) (not e!20896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4282 (= res!19969 (validMask!0 mask!2294))))

(assert (=> start!4282 e!20896))

(assert (=> start!4282 true))

(assert (=> start!4282 tp!4873))

(declare-fun e!20892 () Bool)

(declare-fun array_inv!705 (array!2215) Bool)

(assert (=> start!4282 (and (array_inv!705 _values!1501) e!20892)))

(declare-fun array_inv!706 (array!2217) Bool)

(assert (=> start!4282 (array_inv!706 _keys!1833)))

(assert (=> start!4282 tp_is_empty!1503))

(declare-fun b!32894 () Bool)

(declare-fun res!19971 () Bool)

(assert (=> b!32894 (=> (not res!19971) (not e!20895))))

(declare-fun arrayContainsKey!0 (array!2217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!32894 (= res!19971 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!32895 () Bool)

(assert (=> b!32895 (= e!20892 (and e!20893 mapRes!1789))))

(declare-fun condMapEmpty!1789 () Bool)

(declare-fun mapDefault!1789 () ValueCell!552)

(assert (=> b!32895 (= condMapEmpty!1789 (= (arr!1059 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!552)) mapDefault!1789)))))

(declare-fun b!32896 () Bool)

(assert (=> b!32896 (= e!20896 e!20895)))

(declare-fun res!19967 () Bool)

(assert (=> b!32896 (=> (not res!19967) (not e!20895))))

(assert (=> b!32896 (= res!19967 (not (contains!374 lt!11921 k0!1304)))))

(declare-fun getCurrentListMap!260 (array!2217 array!2215 (_ BitVec 32) (_ BitVec 32) V!1829 V!1829 (_ BitVec 32) Int) ListLongMap!839)

(assert (=> b!32896 (= lt!11921 (getCurrentListMap!260 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun mapNonEmpty!1789 () Bool)

(declare-fun tp!4872 () Bool)

(assert (=> mapNonEmpty!1789 (= mapRes!1789 (and tp!4872 e!20894))))

(declare-fun mapRest!1789 () (Array (_ BitVec 32) ValueCell!552))

(declare-fun mapValue!1789 () ValueCell!552)

(declare-fun mapKey!1789 () (_ BitVec 32))

(assert (=> mapNonEmpty!1789 (= (arr!1059 _values!1501) (store mapRest!1789 mapKey!1789 mapValue!1789))))

(assert (= (and start!4282 res!19969) b!32889))

(assert (= (and b!32889 res!19966) b!32892))

(assert (= (and b!32892 res!19972) b!32891))

(assert (= (and b!32891 res!19968) b!32888))

(assert (= (and b!32888 res!19970) b!32896))

(assert (= (and b!32896 res!19967) b!32894))

(assert (= (and b!32894 res!19971) b!32890))

(assert (= (and b!32895 condMapEmpty!1789) mapIsEmpty!1789))

(assert (= (and b!32895 (not condMapEmpty!1789)) mapNonEmpty!1789))

(get-info :version)

(assert (= (and mapNonEmpty!1789 ((_ is ValueCellFull!552) mapValue!1789)) b!32887))

(assert (= (and b!32895 ((_ is ValueCellFull!552) mapDefault!1789)) b!32893))

(assert (= start!4282 b!32895))

(declare-fun m!26333 () Bool)

(assert (=> b!32892 m!26333))

(declare-fun m!26335 () Bool)

(assert (=> b!32891 m!26335))

(declare-fun m!26337 () Bool)

(assert (=> b!32894 m!26337))

(declare-fun m!26339 () Bool)

(assert (=> mapNonEmpty!1789 m!26339))

(declare-fun m!26341 () Bool)

(assert (=> b!32890 m!26341))

(assert (=> b!32890 m!26341))

(declare-fun m!26343 () Bool)

(assert (=> b!32890 m!26343))

(declare-fun m!26345 () Bool)

(assert (=> b!32890 m!26345))

(declare-fun m!26347 () Bool)

(assert (=> b!32890 m!26347))

(declare-fun m!26349 () Bool)

(assert (=> b!32896 m!26349))

(declare-fun m!26351 () Bool)

(assert (=> b!32896 m!26351))

(declare-fun m!26353 () Bool)

(assert (=> start!4282 m!26353))

(declare-fun m!26355 () Bool)

(assert (=> start!4282 m!26355))

(declare-fun m!26357 () Bool)

(assert (=> start!4282 m!26357))

(declare-fun m!26359 () Bool)

(assert (=> b!32888 m!26359))

(check-sat (not b!32892) (not b!32890) (not b!32888) b_and!1965 (not b!32896) (not start!4282) (not b!32891) (not mapNonEmpty!1789) (not b_next!1149) tp_is_empty!1503 (not b!32894))
(check-sat b_and!1965 (not b_next!1149))
