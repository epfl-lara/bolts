; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113594 () Bool)

(assert start!113594)

(declare-fun b_free!31551 () Bool)

(declare-fun b_next!31551 () Bool)

(assert (=> start!113594 (= b_free!31551 (not b_next!31551))))

(declare-fun tp!110462 () Bool)

(declare-fun b_and!50901 () Bool)

(assert (=> start!113594 (= tp!110462 b_and!50901)))

(declare-fun b!1348010 () Bool)

(declare-fun e!766907 () Bool)

(declare-fun tp_is_empty!37551 () Bool)

(assert (=> b!1348010 (= e!766907 tp_is_empty!37551)))

(declare-fun b!1348011 () Bool)

(declare-fun res!894520 () Bool)

(declare-fun e!766908 () Bool)

(assert (=> b!1348011 (=> (not res!894520) (not e!766908))))

(declare-datatypes ((array!91891 0))(
  ( (array!91892 (arr!44396 (Array (_ BitVec 32) (_ BitVec 64))) (size!44947 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91891)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1348011 (= res!894520 (validKeyInArray!0 (select (arr!44396 _keys!1571) from!1960)))))

(declare-fun b!1348012 () Bool)

(declare-fun res!894519 () Bool)

(assert (=> b!1348012 (=> (not res!894519) (not e!766908))))

(declare-datatypes ((V!55171 0))(
  ( (V!55172 (val!18850 Int)) )
))
(declare-fun minValue!1245 () V!55171)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!55171)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17877 0))(
  ( (ValueCellFull!17877 (v!21499 V!55171)) (EmptyCell!17877) )
))
(declare-datatypes ((array!91893 0))(
  ( (array!91894 (arr!44397 (Array (_ BitVec 32) ValueCell!17877)) (size!44948 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91893)

(declare-fun defaultEntry!1306 () Int)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((tuple2!24446 0))(
  ( (tuple2!24447 (_1!12233 (_ BitVec 64)) (_2!12233 V!55171)) )
))
(declare-datatypes ((List!31615 0))(
  ( (Nil!31612) (Cons!31611 (h!32820 tuple2!24446) (t!46252 List!31615)) )
))
(declare-datatypes ((ListLongMap!22115 0))(
  ( (ListLongMap!22116 (toList!11073 List!31615)) )
))
(declare-fun contains!9186 (ListLongMap!22115 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5963 (array!91891 array!91893 (_ BitVec 32) (_ BitVec 32) V!55171 V!55171 (_ BitVec 32) Int) ListLongMap!22115)

(assert (=> b!1348012 (= res!894519 (contains!9186 (getCurrentListMap!5963 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1348013 () Bool)

(declare-fun res!894514 () Bool)

(assert (=> b!1348013 (=> (not res!894514) (not e!766908))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91891 (_ BitVec 32)) Bool)

(assert (=> b!1348013 (= res!894514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun mapNonEmpty!58037 () Bool)

(declare-fun mapRes!58037 () Bool)

(declare-fun tp!110463 () Bool)

(assert (=> mapNonEmpty!58037 (= mapRes!58037 (and tp!110463 e!766907))))

(declare-fun mapRest!58037 () (Array (_ BitVec 32) ValueCell!17877))

(declare-fun mapValue!58037 () ValueCell!17877)

(declare-fun mapKey!58037 () (_ BitVec 32))

(assert (=> mapNonEmpty!58037 (= (arr!44397 _values!1303) (store mapRest!58037 mapKey!58037 mapValue!58037))))

(declare-fun b!1348014 () Bool)

(assert (=> b!1348014 (= e!766908 (not true))))

(declare-fun lt!595859 () ListLongMap!22115)

(assert (=> b!1348014 (contains!9186 lt!595859 k0!1142)))

(declare-fun lt!595861 () V!55171)

(declare-datatypes ((Unit!44112 0))(
  ( (Unit!44113) )
))
(declare-fun lt!595860 () Unit!44112)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!408 ((_ BitVec 64) (_ BitVec 64) V!55171 ListLongMap!22115) Unit!44112)

(assert (=> b!1348014 (= lt!595860 (lemmaInListMapAfterAddingDiffThenInBefore!408 k0!1142 (select (arr!44396 _keys!1571) from!1960) lt!595861 lt!595859))))

(declare-fun lt!595862 () ListLongMap!22115)

(assert (=> b!1348014 (contains!9186 lt!595862 k0!1142)))

(declare-fun lt!595858 () Unit!44112)

(assert (=> b!1348014 (= lt!595858 (lemmaInListMapAfterAddingDiffThenInBefore!408 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!595862))))

(declare-fun +!4822 (ListLongMap!22115 tuple2!24446) ListLongMap!22115)

(assert (=> b!1348014 (= lt!595862 (+!4822 lt!595859 (tuple2!24447 (select (arr!44396 _keys!1571) from!1960) lt!595861)))))

(declare-fun get!22470 (ValueCell!17877 V!55171) V!55171)

(declare-fun dynLambda!3859 (Int (_ BitVec 64)) V!55171)

(assert (=> b!1348014 (= lt!595861 (get!22470 (select (arr!44397 _values!1303) from!1960) (dynLambda!3859 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6549 (array!91891 array!91893 (_ BitVec 32) (_ BitVec 32) V!55171 V!55171 (_ BitVec 32) Int) ListLongMap!22115)

(assert (=> b!1348014 (= lt!595859 (getCurrentListMapNoExtraKeys!6549 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1348015 () Bool)

(declare-fun res!894513 () Bool)

(assert (=> b!1348015 (=> (not res!894513) (not e!766908))))

(assert (=> b!1348015 (= res!894513 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44947 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1348016 () Bool)

(declare-fun res!894516 () Bool)

(assert (=> b!1348016 (=> (not res!894516) (not e!766908))))

(assert (=> b!1348016 (= res!894516 (not (= (select (arr!44396 _keys!1571) from!1960) k0!1142)))))

(declare-fun res!894515 () Bool)

(assert (=> start!113594 (=> (not res!894515) (not e!766908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113594 (= res!894515 (validMask!0 mask!1977))))

(assert (=> start!113594 e!766908))

(assert (=> start!113594 tp_is_empty!37551))

(assert (=> start!113594 true))

(declare-fun array_inv!33355 (array!91891) Bool)

(assert (=> start!113594 (array_inv!33355 _keys!1571)))

(declare-fun e!766906 () Bool)

(declare-fun array_inv!33356 (array!91893) Bool)

(assert (=> start!113594 (and (array_inv!33356 _values!1303) e!766906)))

(assert (=> start!113594 tp!110462))

(declare-fun b!1348017 () Bool)

(declare-fun res!894518 () Bool)

(assert (=> b!1348017 (=> (not res!894518) (not e!766908))))

(assert (=> b!1348017 (= res!894518 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1348018 () Bool)

(declare-fun res!894512 () Bool)

(assert (=> b!1348018 (=> (not res!894512) (not e!766908))))

(declare-datatypes ((List!31616 0))(
  ( (Nil!31613) (Cons!31612 (h!32821 (_ BitVec 64)) (t!46253 List!31616)) )
))
(declare-fun arrayNoDuplicates!0 (array!91891 (_ BitVec 32) List!31616) Bool)

(assert (=> b!1348018 (= res!894512 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31613))))

(declare-fun b!1348019 () Bool)

(declare-fun res!894517 () Bool)

(assert (=> b!1348019 (=> (not res!894517) (not e!766908))))

(assert (=> b!1348019 (= res!894517 (and (= (size!44948 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44947 _keys!1571) (size!44948 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!58037 () Bool)

(assert (=> mapIsEmpty!58037 mapRes!58037))

(declare-fun b!1348020 () Bool)

(declare-fun e!766909 () Bool)

(assert (=> b!1348020 (= e!766909 tp_is_empty!37551)))

(declare-fun b!1348021 () Bool)

(assert (=> b!1348021 (= e!766906 (and e!766909 mapRes!58037))))

(declare-fun condMapEmpty!58037 () Bool)

(declare-fun mapDefault!58037 () ValueCell!17877)

(assert (=> b!1348021 (= condMapEmpty!58037 (= (arr!44397 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17877)) mapDefault!58037)))))

(assert (= (and start!113594 res!894515) b!1348019))

(assert (= (and b!1348019 res!894517) b!1348013))

(assert (= (and b!1348013 res!894514) b!1348018))

(assert (= (and b!1348018 res!894512) b!1348015))

(assert (= (and b!1348015 res!894513) b!1348012))

(assert (= (and b!1348012 res!894519) b!1348016))

(assert (= (and b!1348016 res!894516) b!1348011))

(assert (= (and b!1348011 res!894520) b!1348017))

(assert (= (and b!1348017 res!894518) b!1348014))

(assert (= (and b!1348021 condMapEmpty!58037) mapIsEmpty!58037))

(assert (= (and b!1348021 (not condMapEmpty!58037)) mapNonEmpty!58037))

(get-info :version)

(assert (= (and mapNonEmpty!58037 ((_ is ValueCellFull!17877) mapValue!58037)) b!1348010))

(assert (= (and b!1348021 ((_ is ValueCellFull!17877) mapDefault!58037)) b!1348020))

(assert (= start!113594 b!1348021))

(declare-fun b_lambda!24635 () Bool)

(assert (=> (not b_lambda!24635) (not b!1348014)))

(declare-fun t!46251 () Bool)

(declare-fun tb!12441 () Bool)

(assert (=> (and start!113594 (= defaultEntry!1306 defaultEntry!1306) t!46251) tb!12441))

(declare-fun result!25967 () Bool)

(assert (=> tb!12441 (= result!25967 tp_is_empty!37551)))

(assert (=> b!1348014 t!46251))

(declare-fun b_and!50903 () Bool)

(assert (= b_and!50901 (and (=> t!46251 result!25967) b_and!50903)))

(declare-fun m!1235071 () Bool)

(assert (=> b!1348012 m!1235071))

(assert (=> b!1348012 m!1235071))

(declare-fun m!1235073 () Bool)

(assert (=> b!1348012 m!1235073))

(declare-fun m!1235075 () Bool)

(assert (=> b!1348016 m!1235075))

(assert (=> b!1348011 m!1235075))

(assert (=> b!1348011 m!1235075))

(declare-fun m!1235077 () Bool)

(assert (=> b!1348011 m!1235077))

(declare-fun m!1235079 () Bool)

(assert (=> start!113594 m!1235079))

(declare-fun m!1235081 () Bool)

(assert (=> start!113594 m!1235081))

(declare-fun m!1235083 () Bool)

(assert (=> start!113594 m!1235083))

(declare-fun m!1235085 () Bool)

(assert (=> b!1348013 m!1235085))

(declare-fun m!1235087 () Bool)

(assert (=> mapNonEmpty!58037 m!1235087))

(assert (=> b!1348014 m!1235075))

(declare-fun m!1235089 () Bool)

(assert (=> b!1348014 m!1235089))

(declare-fun m!1235091 () Bool)

(assert (=> b!1348014 m!1235091))

(declare-fun m!1235093 () Bool)

(assert (=> b!1348014 m!1235093))

(declare-fun m!1235095 () Bool)

(assert (=> b!1348014 m!1235095))

(declare-fun m!1235097 () Bool)

(assert (=> b!1348014 m!1235097))

(assert (=> b!1348014 m!1235093))

(declare-fun m!1235099 () Bool)

(assert (=> b!1348014 m!1235099))

(assert (=> b!1348014 m!1235095))

(assert (=> b!1348014 m!1235075))

(declare-fun m!1235101 () Bool)

(assert (=> b!1348014 m!1235101))

(declare-fun m!1235103 () Bool)

(assert (=> b!1348014 m!1235103))

(declare-fun m!1235105 () Bool)

(assert (=> b!1348014 m!1235105))

(declare-fun m!1235107 () Bool)

(assert (=> b!1348018 m!1235107))

(check-sat (not b_next!31551) tp_is_empty!37551 (not b!1348014) (not mapNonEmpty!58037) (not b_lambda!24635) (not b!1348013) (not b!1348018) b_and!50903 (not b!1348012) (not start!113594) (not b!1348011))
(check-sat b_and!50903 (not b_next!31551))
