; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113564 () Bool)

(assert start!113564)

(declare-fun b_free!31521 () Bool)

(declare-fun b_next!31521 () Bool)

(assert (=> start!113564 (= b_free!31521 (not b_next!31521))))

(declare-fun tp!110372 () Bool)

(declare-fun b_and!50841 () Bool)

(assert (=> start!113564 (= tp!110372 b_and!50841)))

(declare-fun b!1347440 () Bool)

(declare-fun res!894114 () Bool)

(declare-fun e!766684 () Bool)

(assert (=> b!1347440 (=> (not res!894114) (not e!766684))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1347440 (= res!894114 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!57992 () Bool)

(declare-fun mapRes!57992 () Bool)

(assert (=> mapIsEmpty!57992 mapRes!57992))

(declare-fun b!1347441 () Bool)

(declare-fun res!894112 () Bool)

(assert (=> b!1347441 (=> (not res!894112) (not e!766684))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91833 0))(
  ( (array!91834 (arr!44367 (Array (_ BitVec 32) (_ BitVec 64))) (size!44918 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91833)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1347441 (= res!894112 (not (= (select (arr!44367 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1347442 () Bool)

(declare-fun res!894113 () Bool)

(assert (=> b!1347442 (=> (not res!894113) (not e!766684))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91833 (_ BitVec 32)) Bool)

(assert (=> b!1347442 (= res!894113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1347443 () Bool)

(declare-fun e!766683 () Bool)

(declare-fun e!766685 () Bool)

(assert (=> b!1347443 (= e!766683 (and e!766685 mapRes!57992))))

(declare-fun condMapEmpty!57992 () Bool)

(declare-datatypes ((V!55131 0))(
  ( (V!55132 (val!18835 Int)) )
))
(declare-datatypes ((ValueCell!17862 0))(
  ( (ValueCellFull!17862 (v!21484 V!55131)) (EmptyCell!17862) )
))
(declare-datatypes ((array!91835 0))(
  ( (array!91836 (arr!44368 (Array (_ BitVec 32) ValueCell!17862)) (size!44919 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91835)

(declare-fun mapDefault!57992 () ValueCell!17862)

(assert (=> b!1347443 (= condMapEmpty!57992 (= (arr!44368 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17862)) mapDefault!57992)))))

(declare-fun b!1347444 () Bool)

(declare-fun res!894111 () Bool)

(assert (=> b!1347444 (=> (not res!894111) (not e!766684))))

(declare-fun minValue!1245 () V!55131)

(declare-fun zeroValue!1245 () V!55131)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24420 0))(
  ( (tuple2!24421 (_1!12220 (_ BitVec 64)) (_2!12220 V!55131)) )
))
(declare-datatypes ((List!31590 0))(
  ( (Nil!31587) (Cons!31586 (h!32795 tuple2!24420) (t!46197 List!31590)) )
))
(declare-datatypes ((ListLongMap!22089 0))(
  ( (ListLongMap!22090 (toList!11060 List!31590)) )
))
(declare-fun contains!9173 (ListLongMap!22089 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5950 (array!91833 array!91835 (_ BitVec 32) (_ BitVec 32) V!55131 V!55131 (_ BitVec 32) Int) ListLongMap!22089)

(assert (=> b!1347444 (= res!894111 (contains!9173 (getCurrentListMap!5950 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1347445 () Bool)

(declare-fun res!894115 () Bool)

(assert (=> b!1347445 (=> (not res!894115) (not e!766684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1347445 (= res!894115 (validKeyInArray!0 (select (arr!44367 _keys!1571) from!1960)))))

(declare-fun b!1347446 () Bool)

(declare-fun e!766681 () Bool)

(declare-fun tp_is_empty!37521 () Bool)

(assert (=> b!1347446 (= e!766681 tp_is_empty!37521)))

(declare-fun b!1347448 () Bool)

(assert (=> b!1347448 (= e!766684 false)))

(declare-fun lt!595757 () Bool)

(declare-fun +!4814 (ListLongMap!22089 tuple2!24420) ListLongMap!22089)

(declare-fun getCurrentListMapNoExtraKeys!6541 (array!91833 array!91835 (_ BitVec 32) (_ BitVec 32) V!55131 V!55131 (_ BitVec 32) Int) ListLongMap!22089)

(declare-fun get!22452 (ValueCell!17862 V!55131) V!55131)

(declare-fun dynLambda!3851 (Int (_ BitVec 64)) V!55131)

(assert (=> b!1347448 (= lt!595757 (contains!9173 (+!4814 (+!4814 (getCurrentListMapNoExtraKeys!6541 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306) (tuple2!24421 (select (arr!44367 _keys!1571) from!1960) (get!22452 (select (arr!44368 _values!1303) from!1960) (dynLambda!3851 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24421 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142))))

(declare-fun b!1347449 () Bool)

(declare-fun res!894107 () Bool)

(assert (=> b!1347449 (=> (not res!894107) (not e!766684))))

(assert (=> b!1347449 (= res!894107 (and (= (size!44919 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44918 _keys!1571) (size!44919 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57992 () Bool)

(declare-fun tp!110373 () Bool)

(assert (=> mapNonEmpty!57992 (= mapRes!57992 (and tp!110373 e!766681))))

(declare-fun mapKey!57992 () (_ BitVec 32))

(declare-fun mapRest!57992 () (Array (_ BitVec 32) ValueCell!17862))

(declare-fun mapValue!57992 () ValueCell!17862)

(assert (=> mapNonEmpty!57992 (= (arr!44368 _values!1303) (store mapRest!57992 mapKey!57992 mapValue!57992))))

(declare-fun b!1347450 () Bool)

(declare-fun res!894110 () Bool)

(assert (=> b!1347450 (=> (not res!894110) (not e!766684))))

(declare-datatypes ((List!31591 0))(
  ( (Nil!31588) (Cons!31587 (h!32796 (_ BitVec 64)) (t!46198 List!31591)) )
))
(declare-fun arrayNoDuplicates!0 (array!91833 (_ BitVec 32) List!31591) Bool)

(assert (=> b!1347450 (= res!894110 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31588))))

(declare-fun b!1347451 () Bool)

(declare-fun res!894109 () Bool)

(assert (=> b!1347451 (=> (not res!894109) (not e!766684))))

(assert (=> b!1347451 (= res!894109 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44918 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!894108 () Bool)

(assert (=> start!113564 (=> (not res!894108) (not e!766684))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113564 (= res!894108 (validMask!0 mask!1977))))

(assert (=> start!113564 e!766684))

(assert (=> start!113564 tp_is_empty!37521))

(assert (=> start!113564 true))

(declare-fun array_inv!33339 (array!91833) Bool)

(assert (=> start!113564 (array_inv!33339 _keys!1571)))

(declare-fun array_inv!33340 (array!91835) Bool)

(assert (=> start!113564 (and (array_inv!33340 _values!1303) e!766683)))

(assert (=> start!113564 tp!110372))

(declare-fun b!1347447 () Bool)

(assert (=> b!1347447 (= e!766685 tp_is_empty!37521)))

(assert (= (and start!113564 res!894108) b!1347449))

(assert (= (and b!1347449 res!894107) b!1347442))

(assert (= (and b!1347442 res!894113) b!1347450))

(assert (= (and b!1347450 res!894110) b!1347451))

(assert (= (and b!1347451 res!894109) b!1347444))

(assert (= (and b!1347444 res!894111) b!1347441))

(assert (= (and b!1347441 res!894112) b!1347445))

(assert (= (and b!1347445 res!894115) b!1347440))

(assert (= (and b!1347440 res!894114) b!1347448))

(assert (= (and b!1347443 condMapEmpty!57992) mapIsEmpty!57992))

(assert (= (and b!1347443 (not condMapEmpty!57992)) mapNonEmpty!57992))

(get-info :version)

(assert (= (and mapNonEmpty!57992 ((_ is ValueCellFull!17862) mapValue!57992)) b!1347446))

(assert (= (and b!1347443 ((_ is ValueCellFull!17862) mapDefault!57992)) b!1347447))

(assert (= start!113564 b!1347443))

(declare-fun b_lambda!24605 () Bool)

(assert (=> (not b_lambda!24605) (not b!1347448)))

(declare-fun t!46196 () Bool)

(declare-fun tb!12411 () Bool)

(assert (=> (and start!113564 (= defaultEntry!1306 defaultEntry!1306) t!46196) tb!12411))

(declare-fun result!25907 () Bool)

(assert (=> tb!12411 (= result!25907 tp_is_empty!37521)))

(assert (=> b!1347448 t!46196))

(declare-fun b_and!50843 () Bool)

(assert (= b_and!50841 (and (=> t!46196 result!25907) b_and!50843)))

(declare-fun m!1234557 () Bool)

(assert (=> b!1347448 m!1234557))

(declare-fun m!1234559 () Bool)

(assert (=> b!1347448 m!1234559))

(declare-fun m!1234561 () Bool)

(assert (=> b!1347448 m!1234561))

(declare-fun m!1234563 () Bool)

(assert (=> b!1347448 m!1234563))

(declare-fun m!1234565 () Bool)

(assert (=> b!1347448 m!1234565))

(declare-fun m!1234567 () Bool)

(assert (=> b!1347448 m!1234567))

(assert (=> b!1347448 m!1234561))

(declare-fun m!1234569 () Bool)

(assert (=> b!1347448 m!1234569))

(assert (=> b!1347448 m!1234563))

(assert (=> b!1347448 m!1234565))

(declare-fun m!1234571 () Bool)

(assert (=> b!1347448 m!1234571))

(assert (=> b!1347448 m!1234569))

(assert (=> b!1347448 m!1234557))

(declare-fun m!1234573 () Bool)

(assert (=> b!1347444 m!1234573))

(assert (=> b!1347444 m!1234573))

(declare-fun m!1234575 () Bool)

(assert (=> b!1347444 m!1234575))

(declare-fun m!1234577 () Bool)

(assert (=> start!113564 m!1234577))

(declare-fun m!1234579 () Bool)

(assert (=> start!113564 m!1234579))

(declare-fun m!1234581 () Bool)

(assert (=> start!113564 m!1234581))

(declare-fun m!1234583 () Bool)

(assert (=> b!1347442 m!1234583))

(assert (=> b!1347445 m!1234571))

(assert (=> b!1347445 m!1234571))

(declare-fun m!1234585 () Bool)

(assert (=> b!1347445 m!1234585))

(declare-fun m!1234587 () Bool)

(assert (=> b!1347450 m!1234587))

(assert (=> b!1347441 m!1234571))

(declare-fun m!1234589 () Bool)

(assert (=> mapNonEmpty!57992 m!1234589))

(check-sat (not b_lambda!24605) (not b!1347442) (not b!1347448) (not mapNonEmpty!57992) (not b!1347444) (not start!113564) (not b_next!31521) b_and!50843 tp_is_empty!37521 (not b!1347445) (not b!1347450))
(check-sat b_and!50843 (not b_next!31521))
