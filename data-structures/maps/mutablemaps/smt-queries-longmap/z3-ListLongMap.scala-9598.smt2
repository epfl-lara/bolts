; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113488 () Bool)

(assert start!113488)

(declare-fun b_free!31503 () Bool)

(declare-fun b_next!31503 () Bool)

(assert (=> start!113488 (= b_free!31503 (not b_next!31503))))

(declare-fun tp!110315 () Bool)

(declare-fun b_and!50801 () Bool)

(assert (=> start!113488 (= tp!110315 b_and!50801)))

(declare-fun b!1346724 () Bool)

(declare-fun e!766304 () Bool)

(declare-fun tp_is_empty!37503 () Bool)

(assert (=> b!1346724 (= e!766304 tp_is_empty!37503)))

(declare-fun res!893710 () Bool)

(declare-fun e!766307 () Bool)

(assert (=> start!113488 (=> (not res!893710) (not e!766307))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113488 (= res!893710 (validMask!0 mask!1977))))

(assert (=> start!113488 e!766307))

(assert (=> start!113488 tp_is_empty!37503))

(assert (=> start!113488 true))

(declare-datatypes ((array!91795 0))(
  ( (array!91796 (arr!44349 (Array (_ BitVec 32) (_ BitVec 64))) (size!44900 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91795)

(declare-fun array_inv!33327 (array!91795) Bool)

(assert (=> start!113488 (array_inv!33327 _keys!1571)))

(declare-datatypes ((V!55107 0))(
  ( (V!55108 (val!18826 Int)) )
))
(declare-datatypes ((ValueCell!17853 0))(
  ( (ValueCellFull!17853 (v!21472 V!55107)) (EmptyCell!17853) )
))
(declare-datatypes ((array!91797 0))(
  ( (array!91798 (arr!44350 (Array (_ BitVec 32) ValueCell!17853)) (size!44901 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91797)

(declare-fun e!766306 () Bool)

(declare-fun array_inv!33328 (array!91797) Bool)

(assert (=> start!113488 (and (array_inv!33328 _values!1303) e!766306)))

(assert (=> start!113488 tp!110315))

(declare-fun mapNonEmpty!57961 () Bool)

(declare-fun mapRes!57961 () Bool)

(declare-fun tp!110314 () Bool)

(declare-fun e!766305 () Bool)

(assert (=> mapNonEmpty!57961 (= mapRes!57961 (and tp!110314 e!766305))))

(declare-fun mapRest!57961 () (Array (_ BitVec 32) ValueCell!17853))

(declare-fun mapValue!57961 () ValueCell!17853)

(declare-fun mapKey!57961 () (_ BitVec 32))

(assert (=> mapNonEmpty!57961 (= (arr!44350 _values!1303) (store mapRest!57961 mapKey!57961 mapValue!57961))))

(declare-fun b!1346725 () Bool)

(declare-fun res!893707 () Bool)

(assert (=> b!1346725 (=> (not res!893707) (not e!766307))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1346725 (= res!893707 (validKeyInArray!0 (select (arr!44349 _keys!1571) from!1960)))))

(declare-fun b!1346726 () Bool)

(assert (=> b!1346726 (= e!766307 false)))

(declare-fun minValue!1245 () V!55107)

(declare-fun defaultEntry!1306 () Int)

(declare-fun zeroValue!1245 () V!55107)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((tuple2!24404 0))(
  ( (tuple2!24405 (_1!12212 (_ BitVec 64)) (_2!12212 V!55107)) )
))
(declare-datatypes ((List!31577 0))(
  ( (Nil!31574) (Cons!31573 (h!32782 tuple2!24404) (t!46174 List!31577)) )
))
(declare-datatypes ((ListLongMap!22073 0))(
  ( (ListLongMap!22074 (toList!11052 List!31577)) )
))
(declare-fun lt!595480 () ListLongMap!22073)

(declare-fun getCurrentListMapNoExtraKeys!6535 (array!91795 array!91797 (_ BitVec 32) (_ BitVec 32) V!55107 V!55107 (_ BitVec 32) Int) ListLongMap!22073)

(assert (=> b!1346726 (= lt!595480 (getCurrentListMapNoExtraKeys!6535 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun mapIsEmpty!57961 () Bool)

(assert (=> mapIsEmpty!57961 mapRes!57961))

(declare-fun b!1346727 () Bool)

(declare-fun res!893705 () Bool)

(assert (=> b!1346727 (=> (not res!893705) (not e!766307))))

(declare-datatypes ((List!31578 0))(
  ( (Nil!31575) (Cons!31574 (h!32783 (_ BitVec 64)) (t!46175 List!31578)) )
))
(declare-fun arrayNoDuplicates!0 (array!91795 (_ BitVec 32) List!31578) Bool)

(assert (=> b!1346727 (= res!893705 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31575))))

(declare-fun b!1346728 () Bool)

(declare-fun res!893706 () Bool)

(assert (=> b!1346728 (=> (not res!893706) (not e!766307))))

(declare-fun k0!1142 () (_ BitVec 64))

(assert (=> b!1346728 (= res!893706 (not (= (select (arr!44349 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1346729 () Bool)

(declare-fun res!893703 () Bool)

(assert (=> b!1346729 (=> (not res!893703) (not e!766307))))

(declare-fun contains!9164 (ListLongMap!22073 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5943 (array!91795 array!91797 (_ BitVec 32) (_ BitVec 32) V!55107 V!55107 (_ BitVec 32) Int) ListLongMap!22073)

(assert (=> b!1346729 (= res!893703 (contains!9164 (getCurrentListMap!5943 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1346730 () Bool)

(declare-fun res!893704 () Bool)

(assert (=> b!1346730 (=> (not res!893704) (not e!766307))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91795 (_ BitVec 32)) Bool)

(assert (=> b!1346730 (= res!893704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1346731 () Bool)

(declare-fun res!893711 () Bool)

(assert (=> b!1346731 (=> (not res!893711) (not e!766307))))

(assert (=> b!1346731 (= res!893711 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44900 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346732 () Bool)

(assert (=> b!1346732 (= e!766306 (and e!766304 mapRes!57961))))

(declare-fun condMapEmpty!57961 () Bool)

(declare-fun mapDefault!57961 () ValueCell!17853)

(assert (=> b!1346732 (= condMapEmpty!57961 (= (arr!44350 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17853)) mapDefault!57961)))))

(declare-fun b!1346733 () Bool)

(declare-fun res!893708 () Bool)

(assert (=> b!1346733 (=> (not res!893708) (not e!766307))))

(assert (=> b!1346733 (= res!893708 (and (= (size!44901 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44900 _keys!1571) (size!44901 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1346734 () Bool)

(assert (=> b!1346734 (= e!766305 tp_is_empty!37503)))

(declare-fun b!1346735 () Bool)

(declare-fun res!893709 () Bool)

(assert (=> b!1346735 (=> (not res!893709) (not e!766307))))

(assert (=> b!1346735 (= res!893709 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!113488 res!893710) b!1346733))

(assert (= (and b!1346733 res!893708) b!1346730))

(assert (= (and b!1346730 res!893704) b!1346727))

(assert (= (and b!1346727 res!893705) b!1346731))

(assert (= (and b!1346731 res!893711) b!1346729))

(assert (= (and b!1346729 res!893703) b!1346728))

(assert (= (and b!1346728 res!893706) b!1346725))

(assert (= (and b!1346725 res!893707) b!1346735))

(assert (= (and b!1346735 res!893709) b!1346726))

(assert (= (and b!1346732 condMapEmpty!57961) mapIsEmpty!57961))

(assert (= (and b!1346732 (not condMapEmpty!57961)) mapNonEmpty!57961))

(get-info :version)

(assert (= (and mapNonEmpty!57961 ((_ is ValueCellFull!17853) mapValue!57961)) b!1346734))

(assert (= (and b!1346732 ((_ is ValueCellFull!17853) mapDefault!57961)) b!1346724))

(assert (= start!113488 b!1346732))

(declare-fun m!1233773 () Bool)

(assert (=> b!1346728 m!1233773))

(declare-fun m!1233775 () Bool)

(assert (=> start!113488 m!1233775))

(declare-fun m!1233777 () Bool)

(assert (=> start!113488 m!1233777))

(declare-fun m!1233779 () Bool)

(assert (=> start!113488 m!1233779))

(declare-fun m!1233781 () Bool)

(assert (=> b!1346727 m!1233781))

(declare-fun m!1233783 () Bool)

(assert (=> b!1346730 m!1233783))

(declare-fun m!1233785 () Bool)

(assert (=> mapNonEmpty!57961 m!1233785))

(declare-fun m!1233787 () Bool)

(assert (=> b!1346729 m!1233787))

(assert (=> b!1346729 m!1233787))

(declare-fun m!1233789 () Bool)

(assert (=> b!1346729 m!1233789))

(assert (=> b!1346725 m!1233773))

(assert (=> b!1346725 m!1233773))

(declare-fun m!1233791 () Bool)

(assert (=> b!1346725 m!1233791))

(declare-fun m!1233793 () Bool)

(assert (=> b!1346726 m!1233793))

(check-sat (not b!1346726) (not start!113488) (not b!1346725) tp_is_empty!37503 (not mapNonEmpty!57961) (not b!1346730) b_and!50801 (not b!1346727) (not b!1346729) (not b_next!31503))
(check-sat b_and!50801 (not b_next!31503))
