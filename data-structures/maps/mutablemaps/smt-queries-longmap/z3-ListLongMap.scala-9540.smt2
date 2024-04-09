; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113140 () Bool)

(assert start!113140)

(declare-fun b_free!31155 () Bool)

(declare-fun b_next!31155 () Bool)

(assert (=> start!113140 (= b_free!31155 (not b_next!31155))))

(declare-fun tp!109271 () Bool)

(declare-fun b_and!50227 () Bool)

(assert (=> start!113140 (= tp!109271 b_and!50227)))

(declare-fun b!1340738 () Bool)

(declare-fun res!889511 () Bool)

(declare-fun e!763614 () Bool)

(assert (=> b!1340738 (=> (not res!889511) (not e!763614))))

(declare-datatypes ((array!91119 0))(
  ( (array!91120 (arr!44011 (Array (_ BitVec 32) (_ BitVec 64))) (size!44562 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91119)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1340738 (= res!889511 (validKeyInArray!0 (select (arr!44011 _keys!1571) from!1960)))))

(declare-fun b!1340739 () Bool)

(declare-fun e!763612 () Bool)

(declare-fun tp_is_empty!37155 () Bool)

(assert (=> b!1340739 (= e!763612 tp_is_empty!37155)))

(declare-fun b!1340740 () Bool)

(declare-fun res!889515 () Bool)

(assert (=> b!1340740 (=> (not res!889515) (not e!763614))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1340740 (= res!889515 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44562 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!889514 () Bool)

(assert (=> start!113140 (=> (not res!889514) (not e!763614))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113140 (= res!889514 (validMask!0 mask!1977))))

(assert (=> start!113140 e!763614))

(assert (=> start!113140 tp_is_empty!37155))

(assert (=> start!113140 true))

(declare-fun array_inv!33099 (array!91119) Bool)

(assert (=> start!113140 (array_inv!33099 _keys!1571)))

(declare-datatypes ((V!54643 0))(
  ( (V!54644 (val!18652 Int)) )
))
(declare-datatypes ((ValueCell!17679 0))(
  ( (ValueCellFull!17679 (v!21298 V!54643)) (EmptyCell!17679) )
))
(declare-datatypes ((array!91121 0))(
  ( (array!91122 (arr!44012 (Array (_ BitVec 32) ValueCell!17679)) (size!44563 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91121)

(declare-fun e!763613 () Bool)

(declare-fun array_inv!33100 (array!91121) Bool)

(assert (=> start!113140 (and (array_inv!33100 _values!1303) e!763613)))

(assert (=> start!113140 tp!109271))

(declare-fun b!1340741 () Bool)

(declare-fun res!889510 () Bool)

(assert (=> b!1340741 (=> (not res!889510) (not e!763614))))

(assert (=> b!1340741 (= res!889510 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1340742 () Bool)

(assert (=> b!1340742 (= e!763614 (not true))))

(declare-datatypes ((tuple2!24156 0))(
  ( (tuple2!24157 (_1!12088 (_ BitVec 64)) (_2!12088 V!54643)) )
))
(declare-datatypes ((List!31340 0))(
  ( (Nil!31337) (Cons!31336 (h!32545 tuple2!24156) (t!45713 List!31340)) )
))
(declare-datatypes ((ListLongMap!21825 0))(
  ( (ListLongMap!21826 (toList!10928 List!31340)) )
))
(declare-fun lt!593983 () ListLongMap!21825)

(declare-fun contains!9040 (ListLongMap!21825 (_ BitVec 64)) Bool)

(assert (=> b!1340742 (contains!9040 lt!593983 k0!1142)))

(declare-datatypes ((Unit!43933 0))(
  ( (Unit!43934) )
))
(declare-fun lt!593982 () Unit!43933)

(declare-fun zeroValue!1245 () V!54643)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!326 ((_ BitVec 64) (_ BitVec 64) V!54643 ListLongMap!21825) Unit!43933)

(assert (=> b!1340742 (= lt!593982 (lemmaInListMapAfterAddingDiffThenInBefore!326 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!593983))))

(declare-fun minValue!1245 () V!54643)

(declare-fun defaultEntry!1306 () Int)

(declare-fun +!4734 (ListLongMap!21825 tuple2!24156) ListLongMap!21825)

(declare-fun getCurrentListMapNoExtraKeys!6457 (array!91119 array!91121 (_ BitVec 32) (_ BitVec 32) V!54643 V!54643 (_ BitVec 32) Int) ListLongMap!21825)

(declare-fun get!22247 (ValueCell!17679 V!54643) V!54643)

(declare-fun dynLambda!3771 (Int (_ BitVec 64)) V!54643)

(assert (=> b!1340742 (= lt!593983 (+!4734 (getCurrentListMapNoExtraKeys!6457 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24157 (select (arr!44011 _keys!1571) from!1960) (get!22247 (select (arr!44012 _values!1303) from!1960) (dynLambda!3771 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1340743 () Bool)

(declare-fun res!889509 () Bool)

(assert (=> b!1340743 (=> (not res!889509) (not e!763614))))

(assert (=> b!1340743 (= res!889509 (not (= (select (arr!44011 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1340744 () Bool)

(declare-fun res!889516 () Bool)

(assert (=> b!1340744 (=> (not res!889516) (not e!763614))))

(declare-fun getCurrentListMap!5831 (array!91119 array!91121 (_ BitVec 32) (_ BitVec 32) V!54643 V!54643 (_ BitVec 32) Int) ListLongMap!21825)

(assert (=> b!1340744 (= res!889516 (contains!9040 (getCurrentListMap!5831 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1340745 () Bool)

(declare-fun res!889512 () Bool)

(assert (=> b!1340745 (=> (not res!889512) (not e!763614))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91119 (_ BitVec 32)) Bool)

(assert (=> b!1340745 (= res!889512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1340746 () Bool)

(declare-fun res!889517 () Bool)

(assert (=> b!1340746 (=> (not res!889517) (not e!763614))))

(assert (=> b!1340746 (= res!889517 (and (= (size!44563 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44562 _keys!1571) (size!44563 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340747 () Bool)

(declare-fun e!763615 () Bool)

(assert (=> b!1340747 (= e!763615 tp_is_empty!37155)))

(declare-fun b!1340748 () Bool)

(declare-fun mapRes!57439 () Bool)

(assert (=> b!1340748 (= e!763613 (and e!763612 mapRes!57439))))

(declare-fun condMapEmpty!57439 () Bool)

(declare-fun mapDefault!57439 () ValueCell!17679)

(assert (=> b!1340748 (= condMapEmpty!57439 (= (arr!44012 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17679)) mapDefault!57439)))))

(declare-fun mapIsEmpty!57439 () Bool)

(assert (=> mapIsEmpty!57439 mapRes!57439))

(declare-fun b!1340749 () Bool)

(declare-fun res!889513 () Bool)

(assert (=> b!1340749 (=> (not res!889513) (not e!763614))))

(declare-datatypes ((List!31341 0))(
  ( (Nil!31338) (Cons!31337 (h!32546 (_ BitVec 64)) (t!45714 List!31341)) )
))
(declare-fun arrayNoDuplicates!0 (array!91119 (_ BitVec 32) List!31341) Bool)

(assert (=> b!1340749 (= res!889513 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31338))))

(declare-fun mapNonEmpty!57439 () Bool)

(declare-fun tp!109270 () Bool)

(assert (=> mapNonEmpty!57439 (= mapRes!57439 (and tp!109270 e!763615))))

(declare-fun mapValue!57439 () ValueCell!17679)

(declare-fun mapKey!57439 () (_ BitVec 32))

(declare-fun mapRest!57439 () (Array (_ BitVec 32) ValueCell!17679))

(assert (=> mapNonEmpty!57439 (= (arr!44012 _values!1303) (store mapRest!57439 mapKey!57439 mapValue!57439))))

(assert (= (and start!113140 res!889514) b!1340746))

(assert (= (and b!1340746 res!889517) b!1340745))

(assert (= (and b!1340745 res!889512) b!1340749))

(assert (= (and b!1340749 res!889513) b!1340740))

(assert (= (and b!1340740 res!889515) b!1340744))

(assert (= (and b!1340744 res!889516) b!1340743))

(assert (= (and b!1340743 res!889509) b!1340738))

(assert (= (and b!1340738 res!889511) b!1340741))

(assert (= (and b!1340741 res!889510) b!1340742))

(assert (= (and b!1340748 condMapEmpty!57439) mapIsEmpty!57439))

(assert (= (and b!1340748 (not condMapEmpty!57439)) mapNonEmpty!57439))

(get-info :version)

(assert (= (and mapNonEmpty!57439 ((_ is ValueCellFull!17679) mapValue!57439)) b!1340747))

(assert (= (and b!1340748 ((_ is ValueCellFull!17679) mapDefault!57439)) b!1340739))

(assert (= start!113140 b!1340748))

(declare-fun b_lambda!24341 () Bool)

(assert (=> (not b_lambda!24341) (not b!1340742)))

(declare-fun t!45712 () Bool)

(declare-fun tb!12177 () Bool)

(assert (=> (and start!113140 (= defaultEntry!1306 defaultEntry!1306) t!45712) tb!12177))

(declare-fun result!25437 () Bool)

(assert (=> tb!12177 (= result!25437 tp_is_empty!37155)))

(assert (=> b!1340742 t!45712))

(declare-fun b_and!50229 () Bool)

(assert (= b_and!50227 (and (=> t!45712 result!25437) b_and!50229)))

(declare-fun m!1228493 () Bool)

(assert (=> start!113140 m!1228493))

(declare-fun m!1228495 () Bool)

(assert (=> start!113140 m!1228495))

(declare-fun m!1228497 () Bool)

(assert (=> start!113140 m!1228497))

(declare-fun m!1228499 () Bool)

(assert (=> b!1340745 m!1228499))

(declare-fun m!1228501 () Bool)

(assert (=> b!1340749 m!1228501))

(declare-fun m!1228503 () Bool)

(assert (=> b!1340738 m!1228503))

(assert (=> b!1340738 m!1228503))

(declare-fun m!1228505 () Bool)

(assert (=> b!1340738 m!1228505))

(declare-fun m!1228507 () Bool)

(assert (=> b!1340744 m!1228507))

(assert (=> b!1340744 m!1228507))

(declare-fun m!1228509 () Bool)

(assert (=> b!1340744 m!1228509))

(declare-fun m!1228511 () Bool)

(assert (=> mapNonEmpty!57439 m!1228511))

(assert (=> b!1340743 m!1228503))

(declare-fun m!1228513 () Bool)

(assert (=> b!1340742 m!1228513))

(declare-fun m!1228515 () Bool)

(assert (=> b!1340742 m!1228515))

(declare-fun m!1228517 () Bool)

(assert (=> b!1340742 m!1228517))

(declare-fun m!1228519 () Bool)

(assert (=> b!1340742 m!1228519))

(declare-fun m!1228521 () Bool)

(assert (=> b!1340742 m!1228521))

(assert (=> b!1340742 m!1228515))

(declare-fun m!1228523 () Bool)

(assert (=> b!1340742 m!1228523))

(assert (=> b!1340742 m!1228517))

(assert (=> b!1340742 m!1228519))

(declare-fun m!1228525 () Bool)

(assert (=> b!1340742 m!1228525))

(assert (=> b!1340742 m!1228503))

(check-sat (not mapNonEmpty!57439) b_and!50229 (not b!1340742) (not b!1340745) (not start!113140) (not b!1340738) (not b_lambda!24341) (not b!1340744) (not b_next!31155) tp_is_empty!37155 (not b!1340749))
(check-sat b_and!50229 (not b_next!31155))
