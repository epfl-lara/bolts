; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78864 () Bool)

(assert start!78864)

(declare-fun b_free!17049 () Bool)

(declare-fun b_next!17049 () Bool)

(assert (=> start!78864 (= b_free!17049 (not b_next!17049))))

(declare-fun tp!59588 () Bool)

(declare-fun b_and!27853 () Bool)

(assert (=> start!78864 (= tp!59588 b_and!27853)))

(declare-fun b!920549 () Bool)

(declare-fun e!516675 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!920549 (= e!516675 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!920550 () Bool)

(declare-fun res!620892 () Bool)

(declare-fun e!516674 () Bool)

(assert (=> b!920550 (=> (not res!620892) (not e!516674))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!920550 (= res!620892 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!920551 () Bool)

(declare-fun e!516673 () Bool)

(assert (=> b!920551 (= e!516674 e!516673)))

(declare-fun res!620882 () Bool)

(assert (=> b!920551 (=> (not res!620882) (not e!516673))))

(declare-fun lt!413287 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!920551 (= res!620882 (validKeyInArray!0 lt!413287))))

(declare-datatypes ((array!55106 0))(
  ( (array!55107 (arr!26494 (Array (_ BitVec 32) (_ BitVec 64))) (size!26954 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55106)

(assert (=> b!920551 (= lt!413287 (select (arr!26494 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapNonEmpty!31092 () Bool)

(declare-fun mapRes!31092 () Bool)

(declare-fun tp!59589 () Bool)

(declare-fun e!516672 () Bool)

(assert (=> mapNonEmpty!31092 (= mapRes!31092 (and tp!59589 e!516672))))

(declare-fun mapKey!31092 () (_ BitVec 32))

(declare-datatypes ((V!31041 0))(
  ( (V!31042 (val!9829 Int)) )
))
(declare-datatypes ((ValueCell!9297 0))(
  ( (ValueCellFull!9297 (v!12347 V!31041)) (EmptyCell!9297) )
))
(declare-fun mapValue!31092 () ValueCell!9297)

(declare-datatypes ((array!55108 0))(
  ( (array!55109 (arr!26495 (Array (_ BitVec 32) ValueCell!9297)) (size!26955 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55108)

(declare-fun mapRest!31092 () (Array (_ BitVec 32) ValueCell!9297))

(assert (=> mapNonEmpty!31092 (= (arr!26495 _values!1231) (store mapRest!31092 mapKey!31092 mapValue!31092))))

(declare-fun b!920552 () Bool)

(declare-fun res!620894 () Bool)

(assert (=> b!920552 (=> (not res!620894) (not e!516674))))

(declare-fun v!791 () V!31041)

(declare-datatypes ((tuple2!12874 0))(
  ( (tuple2!12875 (_1!6447 (_ BitVec 64)) (_2!6447 V!31041)) )
))
(declare-datatypes ((List!18716 0))(
  ( (Nil!18713) (Cons!18712 (h!19858 tuple2!12874) (t!26503 List!18716)) )
))
(declare-datatypes ((ListLongMap!11585 0))(
  ( (ListLongMap!11586 (toList!5808 List!18716)) )
))
(declare-fun lt!413286 () ListLongMap!11585)

(declare-fun apply!619 (ListLongMap!11585 (_ BitVec 64)) V!31041)

(assert (=> b!920552 (= res!620894 (= (apply!619 lt!413286 k0!1099) v!791))))

(declare-fun res!620888 () Bool)

(declare-fun e!516668 () Bool)

(assert (=> start!78864 (=> (not res!620888) (not e!516668))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78864 (= res!620888 (validMask!0 mask!1881))))

(assert (=> start!78864 e!516668))

(assert (=> start!78864 true))

(declare-fun tp_is_empty!19557 () Bool)

(assert (=> start!78864 tp_is_empty!19557))

(declare-fun e!516670 () Bool)

(declare-fun array_inv!20632 (array!55108) Bool)

(assert (=> start!78864 (and (array_inv!20632 _values!1231) e!516670)))

(assert (=> start!78864 tp!59588))

(declare-fun array_inv!20633 (array!55106) Bool)

(assert (=> start!78864 (array_inv!20633 _keys!1487)))

(declare-fun b!920553 () Bool)

(declare-fun arrayContainsKey!0 (array!55106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!920553 (= e!516675 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!920554 () Bool)

(declare-fun res!620887 () Bool)

(assert (=> b!920554 (=> (not res!620887) (not e!516668))))

(assert (=> b!920554 (= res!620887 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26954 _keys!1487))))))

(declare-fun b!920555 () Bool)

(declare-fun res!620883 () Bool)

(declare-fun e!516671 () Bool)

(assert (=> b!920555 (=> res!620883 e!516671)))

(declare-datatypes ((List!18717 0))(
  ( (Nil!18714) (Cons!18713 (h!19859 (_ BitVec 64)) (t!26504 List!18717)) )
))
(declare-fun contains!4824 (List!18717 (_ BitVec 64)) Bool)

(assert (=> b!920555 (= res!620883 (contains!4824 Nil!18714 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920556 () Bool)

(declare-fun res!620885 () Bool)

(assert (=> b!920556 (=> (not res!620885) (not e!516668))))

(declare-fun arrayNoDuplicates!0 (array!55106 (_ BitVec 32) List!18717) Bool)

(assert (=> b!920556 (= res!620885 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18714))))

(declare-fun b!920557 () Bool)

(declare-fun res!620891 () Bool)

(assert (=> b!920557 (=> (not res!620891) (not e!516668))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55106 (_ BitVec 32)) Bool)

(assert (=> b!920557 (= res!620891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!920558 () Bool)

(assert (=> b!920558 (= e!516671 true)))

(declare-fun lt!413284 () Bool)

(assert (=> b!920558 (= lt!413284 (contains!4824 Nil!18714 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!920559 () Bool)

(declare-fun res!620893 () Bool)

(assert (=> b!920559 (=> res!620893 e!516671)))

(declare-fun noDuplicate!1340 (List!18717) Bool)

(assert (=> b!920559 (= res!620893 (not (noDuplicate!1340 Nil!18714)))))

(declare-fun b!920560 () Bool)

(assert (=> b!920560 (= e!516672 tp_is_empty!19557)))

(declare-fun b!920561 () Bool)

(declare-fun res!620890 () Bool)

(assert (=> b!920561 (=> (not res!620890) (not e!516668))))

(assert (=> b!920561 (= res!620890 (and (= (size!26955 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26954 _keys!1487) (size!26955 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!920562 () Bool)

(declare-fun res!620886 () Bool)

(assert (=> b!920562 (=> (not res!620886) (not e!516674))))

(assert (=> b!920562 (= res!620886 (validKeyInArray!0 k0!1099))))

(declare-fun b!920563 () Bool)

(assert (=> b!920563 (= e!516673 (not e!516671))))

(declare-fun res!620889 () Bool)

(assert (=> b!920563 (=> res!620889 e!516671)))

(assert (=> b!920563 (= res!620889 (or (bvsge (size!26954 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!26954 _keys!1487))))))

(assert (=> b!920563 e!516675))

(declare-fun c!95993 () Bool)

(assert (=> b!920563 (= c!95993 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31061 0))(
  ( (Unit!31062) )
))
(declare-fun lt!413283 () Unit!31061)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31041)

(declare-fun minValue!1173 () V!31041)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!173 (array!55106 array!55108 (_ BitVec 32) (_ BitVec 32) V!31041 V!31041 (_ BitVec 64) (_ BitVec 32) Int) Unit!31061)

(assert (=> b!920563 (= lt!413283 (lemmaListMapContainsThenArrayContainsFrom!173 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!920563 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18714)))

(declare-fun lt!413288 () Unit!31061)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55106 (_ BitVec 32) (_ BitVec 32)) Unit!31061)

(assert (=> b!920563 (= lt!413288 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413289 () tuple2!12874)

(declare-fun contains!4825 (ListLongMap!11585 (_ BitVec 64)) Bool)

(declare-fun +!2627 (ListLongMap!11585 tuple2!12874) ListLongMap!11585)

(assert (=> b!920563 (contains!4825 (+!2627 lt!413286 lt!413289) k0!1099)))

(declare-fun lt!413282 () V!31041)

(declare-fun lt!413285 () Unit!31061)

(declare-fun addStillContains!389 (ListLongMap!11585 (_ BitVec 64) V!31041 (_ BitVec 64)) Unit!31061)

(assert (=> b!920563 (= lt!413285 (addStillContains!389 lt!413286 lt!413287 lt!413282 k0!1099))))

(declare-fun getCurrentListMap!3030 (array!55106 array!55108 (_ BitVec 32) (_ BitVec 32) V!31041 V!31041 (_ BitVec 32) Int) ListLongMap!11585)

(assert (=> b!920563 (= (getCurrentListMap!3030 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2627 (getCurrentListMap!3030 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413289))))

(assert (=> b!920563 (= lt!413289 (tuple2!12875 lt!413287 lt!413282))))

(declare-fun get!13922 (ValueCell!9297 V!31041) V!31041)

(declare-fun dynLambda!1466 (Int (_ BitVec 64)) V!31041)

(assert (=> b!920563 (= lt!413282 (get!13922 (select (arr!26495 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1466 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413281 () Unit!31061)

(declare-fun lemmaListMapRecursiveValidKeyArray!62 (array!55106 array!55108 (_ BitVec 32) (_ BitVec 32) V!31041 V!31041 (_ BitVec 32) Int) Unit!31061)

(assert (=> b!920563 (= lt!413281 (lemmaListMapRecursiveValidKeyArray!62 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!920564 () Bool)

(declare-fun e!516669 () Bool)

(assert (=> b!920564 (= e!516669 tp_is_empty!19557)))

(declare-fun mapIsEmpty!31092 () Bool)

(assert (=> mapIsEmpty!31092 mapRes!31092))

(declare-fun b!920565 () Bool)

(assert (=> b!920565 (= e!516668 e!516674)))

(declare-fun res!620884 () Bool)

(assert (=> b!920565 (=> (not res!620884) (not e!516674))))

(assert (=> b!920565 (= res!620884 (contains!4825 lt!413286 k0!1099))))

(assert (=> b!920565 (= lt!413286 (getCurrentListMap!3030 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!920566 () Bool)

(assert (=> b!920566 (= e!516670 (and e!516669 mapRes!31092))))

(declare-fun condMapEmpty!31092 () Bool)

(declare-fun mapDefault!31092 () ValueCell!9297)

(assert (=> b!920566 (= condMapEmpty!31092 (= (arr!26495 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9297)) mapDefault!31092)))))

(assert (= (and start!78864 res!620888) b!920561))

(assert (= (and b!920561 res!620890) b!920557))

(assert (= (and b!920557 res!620891) b!920556))

(assert (= (and b!920556 res!620885) b!920554))

(assert (= (and b!920554 res!620887) b!920565))

(assert (= (and b!920565 res!620884) b!920552))

(assert (= (and b!920552 res!620894) b!920550))

(assert (= (and b!920550 res!620892) b!920562))

(assert (= (and b!920562 res!620886) b!920551))

(assert (= (and b!920551 res!620882) b!920563))

(assert (= (and b!920563 c!95993) b!920553))

(assert (= (and b!920563 (not c!95993)) b!920549))

(assert (= (and b!920563 (not res!620889)) b!920559))

(assert (= (and b!920559 (not res!620893)) b!920555))

(assert (= (and b!920555 (not res!620883)) b!920558))

(assert (= (and b!920566 condMapEmpty!31092) mapIsEmpty!31092))

(assert (= (and b!920566 (not condMapEmpty!31092)) mapNonEmpty!31092))

(get-info :version)

(assert (= (and mapNonEmpty!31092 ((_ is ValueCellFull!9297) mapValue!31092)) b!920560))

(assert (= (and b!920566 ((_ is ValueCellFull!9297) mapDefault!31092)) b!920564))

(assert (= start!78864 b!920566))

(declare-fun b_lambda!13581 () Bool)

(assert (=> (not b_lambda!13581) (not b!920563)))

(declare-fun t!26502 () Bool)

(declare-fun tb!5637 () Bool)

(assert (=> (and start!78864 (= defaultEntry!1235 defaultEntry!1235) t!26502) tb!5637))

(declare-fun result!11089 () Bool)

(assert (=> tb!5637 (= result!11089 tp_is_empty!19557)))

(assert (=> b!920563 t!26502))

(declare-fun b_and!27855 () Bool)

(assert (= b_and!27853 (and (=> t!26502 result!11089) b_and!27855)))

(declare-fun m!854585 () Bool)

(assert (=> b!920562 m!854585))

(declare-fun m!854587 () Bool)

(assert (=> start!78864 m!854587))

(declare-fun m!854589 () Bool)

(assert (=> start!78864 m!854589))

(declare-fun m!854591 () Bool)

(assert (=> start!78864 m!854591))

(declare-fun m!854593 () Bool)

(assert (=> b!920559 m!854593))

(declare-fun m!854595 () Bool)

(assert (=> b!920553 m!854595))

(declare-fun m!854597 () Bool)

(assert (=> b!920563 m!854597))

(declare-fun m!854599 () Bool)

(assert (=> b!920563 m!854599))

(declare-fun m!854601 () Bool)

(assert (=> b!920563 m!854601))

(assert (=> b!920563 m!854597))

(declare-fun m!854603 () Bool)

(assert (=> b!920563 m!854603))

(declare-fun m!854605 () Bool)

(assert (=> b!920563 m!854605))

(declare-fun m!854607 () Bool)

(assert (=> b!920563 m!854607))

(declare-fun m!854609 () Bool)

(assert (=> b!920563 m!854609))

(declare-fun m!854611 () Bool)

(assert (=> b!920563 m!854611))

(assert (=> b!920563 m!854609))

(assert (=> b!920563 m!854611))

(declare-fun m!854613 () Bool)

(assert (=> b!920563 m!854613))

(declare-fun m!854615 () Bool)

(assert (=> b!920563 m!854615))

(declare-fun m!854617 () Bool)

(assert (=> b!920563 m!854617))

(declare-fun m!854619 () Bool)

(assert (=> b!920563 m!854619))

(assert (=> b!920563 m!854599))

(declare-fun m!854621 () Bool)

(assert (=> b!920563 m!854621))

(declare-fun m!854623 () Bool)

(assert (=> b!920565 m!854623))

(declare-fun m!854625 () Bool)

(assert (=> b!920565 m!854625))

(declare-fun m!854627 () Bool)

(assert (=> b!920557 m!854627))

(declare-fun m!854629 () Bool)

(assert (=> b!920555 m!854629))

(declare-fun m!854631 () Bool)

(assert (=> b!920552 m!854631))

(declare-fun m!854633 () Bool)

(assert (=> mapNonEmpty!31092 m!854633))

(declare-fun m!854635 () Bool)

(assert (=> b!920551 m!854635))

(declare-fun m!854637 () Bool)

(assert (=> b!920551 m!854637))

(declare-fun m!854639 () Bool)

(assert (=> b!920558 m!854639))

(declare-fun m!854641 () Bool)

(assert (=> b!920556 m!854641))

(check-sat (not b_next!17049) tp_is_empty!19557 (not b!920556) (not b!920558) (not b!920557) (not b!920553) (not b!920562) (not b!920555) (not start!78864) (not b_lambda!13581) (not b!920565) (not b!920551) (not b!920552) (not mapNonEmpty!31092) b_and!27855 (not b!920563) (not b!920559))
(check-sat b_and!27855 (not b_next!17049))
