; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113092 () Bool)

(assert start!113092)

(declare-fun b_free!31107 () Bool)

(declare-fun b_next!31107 () Bool)

(assert (=> start!113092 (= b_free!31107 (not b_next!31107))))

(declare-fun tp!109127 () Bool)

(declare-fun b_and!50147 () Bool)

(assert (=> start!113092 (= tp!109127 b_and!50147)))

(declare-fun b!1339903 () Bool)

(declare-fun e!763256 () Bool)

(assert (=> b!1339903 (= e!763256 false)))

(declare-datatypes ((V!54579 0))(
  ( (V!54580 (val!18628 Int)) )
))
(declare-fun minValue!1245 () V!54579)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91031 0))(
  ( (array!91032 (arr!43967 (Array (_ BitVec 32) (_ BitVec 64))) (size!44518 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91031)

(declare-fun zeroValue!1245 () V!54579)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17655 0))(
  ( (ValueCellFull!17655 (v!21274 V!54579)) (EmptyCell!17655) )
))
(declare-datatypes ((array!91033 0))(
  ( (array!91034 (arr!43968 (Array (_ BitVec 32) ValueCell!17655)) (size!44519 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91033)

(declare-fun lt!593887 () Bool)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24126 0))(
  ( (tuple2!24127 (_1!12073 (_ BitVec 64)) (_2!12073 V!54579)) )
))
(declare-datatypes ((List!31311 0))(
  ( (Nil!31308) (Cons!31307 (h!32516 tuple2!24126) (t!45650 List!31311)) )
))
(declare-datatypes ((ListLongMap!21795 0))(
  ( (ListLongMap!21796 (toList!10913 List!31311)) )
))
(declare-fun contains!9025 (ListLongMap!21795 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5817 (array!91031 array!91033 (_ BitVec 32) (_ BitVec 32) V!54579 V!54579 (_ BitVec 32) Int) ListLongMap!21795)

(assert (=> b!1339903 (= lt!593887 (contains!9025 (getCurrentListMap!5817 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1339904 () Bool)

(declare-fun e!763253 () Bool)

(declare-fun e!763252 () Bool)

(declare-fun mapRes!57367 () Bool)

(assert (=> b!1339904 (= e!763253 (and e!763252 mapRes!57367))))

(declare-fun condMapEmpty!57367 () Bool)

(declare-fun mapDefault!57367 () ValueCell!17655)

(assert (=> b!1339904 (= condMapEmpty!57367 (= (arr!43968 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17655)) mapDefault!57367)))))

(declare-fun b!1339905 () Bool)

(declare-fun res!888922 () Bool)

(assert (=> b!1339905 (=> (not res!888922) (not e!763256))))

(declare-datatypes ((List!31312 0))(
  ( (Nil!31309) (Cons!31308 (h!32517 (_ BitVec 64)) (t!45651 List!31312)) )
))
(declare-fun arrayNoDuplicates!0 (array!91031 (_ BitVec 32) List!31312) Bool)

(assert (=> b!1339905 (= res!888922 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31309))))

(declare-fun b!1339907 () Bool)

(declare-fun tp_is_empty!37107 () Bool)

(assert (=> b!1339907 (= e!763252 tp_is_empty!37107)))

(declare-fun b!1339908 () Bool)

(declare-fun e!763255 () Bool)

(assert (=> b!1339908 (= e!763255 tp_is_empty!37107)))

(declare-fun mapNonEmpty!57367 () Bool)

(declare-fun tp!109126 () Bool)

(assert (=> mapNonEmpty!57367 (= mapRes!57367 (and tp!109126 e!763255))))

(declare-fun mapRest!57367 () (Array (_ BitVec 32) ValueCell!17655))

(declare-fun mapValue!57367 () ValueCell!17655)

(declare-fun mapKey!57367 () (_ BitVec 32))

(assert (=> mapNonEmpty!57367 (= (arr!43968 _values!1303) (store mapRest!57367 mapKey!57367 mapValue!57367))))

(declare-fun b!1339909 () Bool)

(declare-fun res!888925 () Bool)

(assert (=> b!1339909 (=> (not res!888925) (not e!763256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91031 (_ BitVec 32)) Bool)

(assert (=> b!1339909 (= res!888925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339910 () Bool)

(declare-fun res!888924 () Bool)

(assert (=> b!1339910 (=> (not res!888924) (not e!763256))))

(assert (=> b!1339910 (= res!888924 (and (= (size!44519 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44518 _keys!1571) (size!44519 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57367 () Bool)

(assert (=> mapIsEmpty!57367 mapRes!57367))

(declare-fun res!888926 () Bool)

(assert (=> start!113092 (=> (not res!888926) (not e!763256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113092 (= res!888926 (validMask!0 mask!1977))))

(assert (=> start!113092 e!763256))

(assert (=> start!113092 tp_is_empty!37107))

(assert (=> start!113092 true))

(declare-fun array_inv!33075 (array!91031) Bool)

(assert (=> start!113092 (array_inv!33075 _keys!1571)))

(declare-fun array_inv!33076 (array!91033) Bool)

(assert (=> start!113092 (and (array_inv!33076 _values!1303) e!763253)))

(assert (=> start!113092 tp!109127))

(declare-fun b!1339906 () Bool)

(declare-fun res!888923 () Bool)

(assert (=> b!1339906 (=> (not res!888923) (not e!763256))))

(assert (=> b!1339906 (= res!888923 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44518 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!113092 res!888926) b!1339910))

(assert (= (and b!1339910 res!888924) b!1339909))

(assert (= (and b!1339909 res!888925) b!1339905))

(assert (= (and b!1339905 res!888922) b!1339906))

(assert (= (and b!1339906 res!888923) b!1339903))

(assert (= (and b!1339904 condMapEmpty!57367) mapIsEmpty!57367))

(assert (= (and b!1339904 (not condMapEmpty!57367)) mapNonEmpty!57367))

(get-info :version)

(assert (= (and mapNonEmpty!57367 ((_ is ValueCellFull!17655) mapValue!57367)) b!1339908))

(assert (= (and b!1339904 ((_ is ValueCellFull!17655) mapDefault!57367)) b!1339907))

(assert (= start!113092 b!1339904))

(declare-fun m!1227809 () Bool)

(assert (=> mapNonEmpty!57367 m!1227809))

(declare-fun m!1227811 () Bool)

(assert (=> b!1339903 m!1227811))

(assert (=> b!1339903 m!1227811))

(declare-fun m!1227813 () Bool)

(assert (=> b!1339903 m!1227813))

(declare-fun m!1227815 () Bool)

(assert (=> b!1339905 m!1227815))

(declare-fun m!1227817 () Bool)

(assert (=> b!1339909 m!1227817))

(declare-fun m!1227819 () Bool)

(assert (=> start!113092 m!1227819))

(declare-fun m!1227821 () Bool)

(assert (=> start!113092 m!1227821))

(declare-fun m!1227823 () Bool)

(assert (=> start!113092 m!1227823))

(check-sat (not b!1339903) b_and!50147 (not b_next!31107) (not mapNonEmpty!57367) tp_is_empty!37107 (not start!113092) (not b!1339909) (not b!1339905))
(check-sat b_and!50147 (not b_next!31107))
