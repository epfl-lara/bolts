; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113086 () Bool)

(assert start!113086)

(declare-fun b_free!31101 () Bool)

(declare-fun b_next!31101 () Bool)

(assert (=> start!113086 (= b_free!31101 (not b_next!31101))))

(declare-fun tp!109109 () Bool)

(declare-fun b_and!50141 () Bool)

(assert (=> start!113086 (= tp!109109 b_and!50141)))

(declare-fun b!1339831 () Bool)

(declare-fun res!888880 () Bool)

(declare-fun e!763208 () Bool)

(assert (=> b!1339831 (=> (not res!888880) (not e!763208))))

(declare-datatypes ((array!91019 0))(
  ( (array!91020 (arr!43961 (Array (_ BitVec 32) (_ BitVec 64))) (size!44512 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91019)

(declare-datatypes ((List!31308 0))(
  ( (Nil!31305) (Cons!31304 (h!32513 (_ BitVec 64)) (t!45647 List!31308)) )
))
(declare-fun arrayNoDuplicates!0 (array!91019 (_ BitVec 32) List!31308) Bool)

(assert (=> b!1339831 (= res!888880 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31305))))

(declare-fun b!1339832 () Bool)

(declare-fun e!763209 () Bool)

(declare-fun tp_is_empty!37101 () Bool)

(assert (=> b!1339832 (= e!763209 tp_is_empty!37101)))

(declare-fun b!1339833 () Bool)

(declare-fun res!888878 () Bool)

(assert (=> b!1339833 (=> (not res!888878) (not e!763208))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91019 (_ BitVec 32)) Bool)

(assert (=> b!1339833 (= res!888878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339834 () Bool)

(declare-fun e!763207 () Bool)

(declare-fun mapRes!57358 () Bool)

(assert (=> b!1339834 (= e!763207 (and e!763209 mapRes!57358))))

(declare-fun condMapEmpty!57358 () Bool)

(declare-datatypes ((V!54571 0))(
  ( (V!54572 (val!18625 Int)) )
))
(declare-datatypes ((ValueCell!17652 0))(
  ( (ValueCellFull!17652 (v!21271 V!54571)) (EmptyCell!17652) )
))
(declare-datatypes ((array!91021 0))(
  ( (array!91022 (arr!43962 (Array (_ BitVec 32) ValueCell!17652)) (size!44513 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91021)

(declare-fun mapDefault!57358 () ValueCell!17652)

(assert (=> b!1339834 (= condMapEmpty!57358 (= (arr!43962 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17652)) mapDefault!57358)))))

(declare-fun res!888881 () Bool)

(assert (=> start!113086 (=> (not res!888881) (not e!763208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113086 (= res!888881 (validMask!0 mask!1977))))

(assert (=> start!113086 e!763208))

(assert (=> start!113086 tp_is_empty!37101))

(assert (=> start!113086 true))

(declare-fun array_inv!33073 (array!91019) Bool)

(assert (=> start!113086 (array_inv!33073 _keys!1571)))

(declare-fun array_inv!33074 (array!91021) Bool)

(assert (=> start!113086 (and (array_inv!33074 _values!1303) e!763207)))

(assert (=> start!113086 tp!109109))

(declare-fun b!1339835 () Bool)

(declare-fun res!888877 () Bool)

(assert (=> b!1339835 (=> (not res!888877) (not e!763208))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1339835 (= res!888877 (and (= (size!44513 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44512 _keys!1571) (size!44513 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57358 () Bool)

(assert (=> mapIsEmpty!57358 mapRes!57358))

(declare-fun b!1339836 () Bool)

(declare-fun res!888879 () Bool)

(assert (=> b!1339836 (=> (not res!888879) (not e!763208))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339836 (= res!888879 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44512 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!57358 () Bool)

(declare-fun tp!109108 () Bool)

(declare-fun e!763210 () Bool)

(assert (=> mapNonEmpty!57358 (= mapRes!57358 (and tp!109108 e!763210))))

(declare-fun mapValue!57358 () ValueCell!17652)

(declare-fun mapKey!57358 () (_ BitVec 32))

(declare-fun mapRest!57358 () (Array (_ BitVec 32) ValueCell!17652))

(assert (=> mapNonEmpty!57358 (= (arr!43962 _values!1303) (store mapRest!57358 mapKey!57358 mapValue!57358))))

(declare-fun b!1339837 () Bool)

(assert (=> b!1339837 (= e!763208 false)))

(declare-fun minValue!1245 () V!54571)

(declare-fun zeroValue!1245 () V!54571)

(declare-fun defaultEntry!1306 () Int)

(declare-fun lt!593878 () Bool)

(declare-datatypes ((tuple2!24122 0))(
  ( (tuple2!24123 (_1!12071 (_ BitVec 64)) (_2!12071 V!54571)) )
))
(declare-datatypes ((List!31309 0))(
  ( (Nil!31306) (Cons!31305 (h!32514 tuple2!24122) (t!45648 List!31309)) )
))
(declare-datatypes ((ListLongMap!21791 0))(
  ( (ListLongMap!21792 (toList!10911 List!31309)) )
))
(declare-fun contains!9023 (ListLongMap!21791 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5815 (array!91019 array!91021 (_ BitVec 32) (_ BitVec 32) V!54571 V!54571 (_ BitVec 32) Int) ListLongMap!21791)

(assert (=> b!1339837 (= lt!593878 (contains!9023 (getCurrentListMap!5815 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1339838 () Bool)

(assert (=> b!1339838 (= e!763210 tp_is_empty!37101)))

(assert (= (and start!113086 res!888881) b!1339835))

(assert (= (and b!1339835 res!888877) b!1339833))

(assert (= (and b!1339833 res!888878) b!1339831))

(assert (= (and b!1339831 res!888880) b!1339836))

(assert (= (and b!1339836 res!888879) b!1339837))

(assert (= (and b!1339834 condMapEmpty!57358) mapIsEmpty!57358))

(assert (= (and b!1339834 (not condMapEmpty!57358)) mapNonEmpty!57358))

(get-info :version)

(assert (= (and mapNonEmpty!57358 ((_ is ValueCellFull!17652) mapValue!57358)) b!1339838))

(assert (= (and b!1339834 ((_ is ValueCellFull!17652) mapDefault!57358)) b!1339832))

(assert (= start!113086 b!1339834))

(declare-fun m!1227761 () Bool)

(assert (=> start!113086 m!1227761))

(declare-fun m!1227763 () Bool)

(assert (=> start!113086 m!1227763))

(declare-fun m!1227765 () Bool)

(assert (=> start!113086 m!1227765))

(declare-fun m!1227767 () Bool)

(assert (=> mapNonEmpty!57358 m!1227767))

(declare-fun m!1227769 () Bool)

(assert (=> b!1339833 m!1227769))

(declare-fun m!1227771 () Bool)

(assert (=> b!1339831 m!1227771))

(declare-fun m!1227773 () Bool)

(assert (=> b!1339837 m!1227773))

(assert (=> b!1339837 m!1227773))

(declare-fun m!1227775 () Bool)

(assert (=> b!1339837 m!1227775))

(check-sat b_and!50141 (not mapNonEmpty!57358) (not b!1339831) (not start!113086) (not b_next!31101) tp_is_empty!37101 (not b!1339833) (not b!1339837))
(check-sat b_and!50141 (not b_next!31101))
