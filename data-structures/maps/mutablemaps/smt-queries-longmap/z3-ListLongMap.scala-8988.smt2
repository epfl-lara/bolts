; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108726 () Bool)

(assert start!108726)

(declare-fun b_free!28203 () Bool)

(declare-fun b_next!28203 () Bool)

(assert (=> start!108726 (= b_free!28203 (not b_next!28203))))

(declare-fun tp!99726 () Bool)

(declare-fun b_and!46279 () Bool)

(assert (=> start!108726 (= tp!99726 b_and!46279)))

(declare-fun b!1282994 () Bool)

(declare-fun e!733058 () Bool)

(assert (=> b!1282994 (= e!733058 (not true))))

(declare-datatypes ((V!50227 0))(
  ( (V!50228 (val!16996 Int)) )
))
(declare-datatypes ((tuple2!21908 0))(
  ( (tuple2!21909 (_1!10964 (_ BitVec 64)) (_2!10964 V!50227)) )
))
(declare-datatypes ((List!29118 0))(
  ( (Nil!29115) (Cons!29114 (h!30323 tuple2!21908) (t!42669 List!29118)) )
))
(declare-datatypes ((ListLongMap!19577 0))(
  ( (ListLongMap!19578 (toList!9804 List!29118)) )
))
(declare-fun lt!576533 () ListLongMap!19577)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun contains!7859 (ListLongMap!19577 (_ BitVec 64)) Bool)

(assert (=> b!1282994 (contains!7859 lt!576533 k0!1205)))

(declare-fun minValue!1387 () V!50227)

(declare-datatypes ((Unit!42399 0))(
  ( (Unit!42400) )
))
(declare-fun lt!576534 () Unit!42399)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!1 ((_ BitVec 64) (_ BitVec 64) V!50227 ListLongMap!19577) Unit!42399)

(assert (=> b!1282994 (= lt!576534 (lemmaInListMapAfterAddingDiffThenInBefore!1 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576533))))

(declare-fun zeroValue!1387 () V!50227)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16023 0))(
  ( (ValueCellFull!16023 (v!19596 V!50227)) (EmptyCell!16023) )
))
(declare-datatypes ((array!84705 0))(
  ( (array!84706 (arr!40850 (Array (_ BitVec 32) ValueCell!16023)) (size!41401 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84705)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84707 0))(
  ( (array!84708 (arr!40851 (Array (_ BitVec 32) (_ BitVec 64))) (size!41402 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84707)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun +!4252 (ListLongMap!19577 tuple2!21908) ListLongMap!19577)

(declare-fun getCurrentListMapNoExtraKeys!5963 (array!84707 array!84705 (_ BitVec 32) (_ BitVec 32) V!50227 V!50227 (_ BitVec 32) Int) ListLongMap!19577)

(assert (=> b!1282994 (= lt!576533 (+!4252 (getCurrentListMapNoExtraKeys!5963 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21909 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1282995 () Bool)

(declare-fun res!852313 () Bool)

(assert (=> b!1282995 (=> (not res!852313) (not e!733058))))

(assert (=> b!1282995 (= res!852313 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1282996 () Bool)

(declare-fun e!733060 () Bool)

(declare-fun tp_is_empty!33843 () Bool)

(assert (=> b!1282996 (= e!733060 tp_is_empty!33843)))

(declare-fun b!1282997 () Bool)

(declare-fun e!733059 () Bool)

(assert (=> b!1282997 (= e!733059 tp_is_empty!33843)))

(declare-fun b!1282998 () Bool)

(declare-fun e!733056 () Bool)

(declare-fun mapRes!52322 () Bool)

(assert (=> b!1282998 (= e!733056 (and e!733060 mapRes!52322))))

(declare-fun condMapEmpty!52322 () Bool)

(declare-fun mapDefault!52322 () ValueCell!16023)

(assert (=> b!1282998 (= condMapEmpty!52322 (= (arr!40850 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16023)) mapDefault!52322)))))

(declare-fun b!1282999 () Bool)

(declare-fun res!852311 () Bool)

(assert (=> b!1282999 (=> (not res!852311) (not e!733058))))

(assert (=> b!1282999 (= res!852311 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41402 _keys!1741))))))

(declare-fun mapIsEmpty!52322 () Bool)

(assert (=> mapIsEmpty!52322 mapRes!52322))

(declare-fun b!1283000 () Bool)

(declare-fun res!852314 () Bool)

(assert (=> b!1283000 (=> (not res!852314) (not e!733058))))

(declare-datatypes ((List!29119 0))(
  ( (Nil!29116) (Cons!29115 (h!30324 (_ BitVec 64)) (t!42670 List!29119)) )
))
(declare-fun arrayNoDuplicates!0 (array!84707 (_ BitVec 32) List!29119) Bool)

(assert (=> b!1283000 (= res!852314 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29116))))

(declare-fun b!1283001 () Bool)

(declare-fun res!852315 () Bool)

(assert (=> b!1283001 (=> (not res!852315) (not e!733058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84707 (_ BitVec 32)) Bool)

(assert (=> b!1283001 (= res!852315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283002 () Bool)

(declare-fun res!852308 () Bool)

(assert (=> b!1283002 (=> (not res!852308) (not e!733058))))

(assert (=> b!1283002 (= res!852308 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41402 _keys!1741))))))

(declare-fun res!852307 () Bool)

(assert (=> start!108726 (=> (not res!852307) (not e!733058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108726 (= res!852307 (validMask!0 mask!2175))))

(assert (=> start!108726 e!733058))

(assert (=> start!108726 tp_is_empty!33843))

(assert (=> start!108726 true))

(declare-fun array_inv!30969 (array!84705) Bool)

(assert (=> start!108726 (and (array_inv!30969 _values!1445) e!733056)))

(declare-fun array_inv!30970 (array!84707) Bool)

(assert (=> start!108726 (array_inv!30970 _keys!1741)))

(assert (=> start!108726 tp!99726))

(declare-fun b!1283003 () Bool)

(declare-fun res!852309 () Bool)

(assert (=> b!1283003 (=> (not res!852309) (not e!733058))))

(declare-fun getCurrentListMap!4823 (array!84707 array!84705 (_ BitVec 32) (_ BitVec 32) V!50227 V!50227 (_ BitVec 32) Int) ListLongMap!19577)

(assert (=> b!1283003 (= res!852309 (contains!7859 (getCurrentListMap!4823 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!52322 () Bool)

(declare-fun tp!99725 () Bool)

(assert (=> mapNonEmpty!52322 (= mapRes!52322 (and tp!99725 e!733059))))

(declare-fun mapValue!52322 () ValueCell!16023)

(declare-fun mapRest!52322 () (Array (_ BitVec 32) ValueCell!16023))

(declare-fun mapKey!52322 () (_ BitVec 32))

(assert (=> mapNonEmpty!52322 (= (arr!40850 _values!1445) (store mapRest!52322 mapKey!52322 mapValue!52322))))

(declare-fun b!1283004 () Bool)

(declare-fun res!852312 () Bool)

(assert (=> b!1283004 (=> (not res!852312) (not e!733058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283004 (= res!852312 (validKeyInArray!0 (select (arr!40851 _keys!1741) from!2144)))))

(declare-fun b!1283005 () Bool)

(declare-fun res!852310 () Bool)

(assert (=> b!1283005 (=> (not res!852310) (not e!733058))))

(assert (=> b!1283005 (= res!852310 (and (= (size!41401 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41402 _keys!1741) (size!41401 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!108726 res!852307) b!1283005))

(assert (= (and b!1283005 res!852310) b!1283001))

(assert (= (and b!1283001 res!852315) b!1283000))

(assert (= (and b!1283000 res!852314) b!1283002))

(assert (= (and b!1283002 res!852308) b!1283003))

(assert (= (and b!1283003 res!852309) b!1282999))

(assert (= (and b!1282999 res!852311) b!1283004))

(assert (= (and b!1283004 res!852312) b!1282995))

(assert (= (and b!1282995 res!852313) b!1282994))

(assert (= (and b!1282998 condMapEmpty!52322) mapIsEmpty!52322))

(assert (= (and b!1282998 (not condMapEmpty!52322)) mapNonEmpty!52322))

(get-info :version)

(assert (= (and mapNonEmpty!52322 ((_ is ValueCellFull!16023) mapValue!52322)) b!1282997))

(assert (= (and b!1282998 ((_ is ValueCellFull!16023) mapDefault!52322)) b!1282996))

(assert (= start!108726 b!1282998))

(declare-fun m!1177039 () Bool)

(assert (=> b!1283000 m!1177039))

(declare-fun m!1177041 () Bool)

(assert (=> b!1283001 m!1177041))

(declare-fun m!1177043 () Bool)

(assert (=> b!1283004 m!1177043))

(assert (=> b!1283004 m!1177043))

(declare-fun m!1177045 () Bool)

(assert (=> b!1283004 m!1177045))

(declare-fun m!1177047 () Bool)

(assert (=> mapNonEmpty!52322 m!1177047))

(declare-fun m!1177049 () Bool)

(assert (=> start!108726 m!1177049))

(declare-fun m!1177051 () Bool)

(assert (=> start!108726 m!1177051))

(declare-fun m!1177053 () Bool)

(assert (=> start!108726 m!1177053))

(declare-fun m!1177055 () Bool)

(assert (=> b!1283003 m!1177055))

(assert (=> b!1283003 m!1177055))

(declare-fun m!1177057 () Bool)

(assert (=> b!1283003 m!1177057))

(declare-fun m!1177059 () Bool)

(assert (=> b!1282994 m!1177059))

(declare-fun m!1177061 () Bool)

(assert (=> b!1282994 m!1177061))

(declare-fun m!1177063 () Bool)

(assert (=> b!1282994 m!1177063))

(assert (=> b!1282994 m!1177063))

(declare-fun m!1177065 () Bool)

(assert (=> b!1282994 m!1177065))

(check-sat (not start!108726) (not b!1283000) (not b!1282994) tp_is_empty!33843 (not mapNonEmpty!52322) (not b!1283003) (not b!1283004) (not b!1283001) b_and!46279 (not b_next!28203))
(check-sat b_and!46279 (not b_next!28203))
