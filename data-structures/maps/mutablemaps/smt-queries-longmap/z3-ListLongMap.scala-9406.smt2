; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111968 () Bool)

(assert start!111968)

(declare-fun b_free!30531 () Bool)

(declare-fun b_next!30531 () Bool)

(assert (=> start!111968 (= b_free!30531 (not b_next!30531))))

(declare-fun tp!107073 () Bool)

(declare-fun b_and!49167 () Bool)

(assert (=> start!111968 (= tp!107073 b_and!49167)))

(declare-fun b!1326472 () Bool)

(declare-fun res!880473 () Bool)

(declare-fun e!756051 () Bool)

(assert (=> b!1326472 (=> (not res!880473) (not e!756051))))

(declare-datatypes ((array!89569 0))(
  ( (array!89570 (arr!43253 (Array (_ BitVec 32) (_ BitVec 64))) (size!43804 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89569)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53571 0))(
  ( (V!53572 (val!18250 Int)) )
))
(declare-datatypes ((ValueCell!17277 0))(
  ( (ValueCellFull!17277 (v!20881 V!53571)) (EmptyCell!17277) )
))
(declare-datatypes ((array!89571 0))(
  ( (array!89572 (arr!43254 (Array (_ BitVec 32) ValueCell!17277)) (size!43805 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89571)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1326472 (= res!880473 (and (= (size!43805 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43804 _keys!1609) (size!43805 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1326473 () Bool)

(declare-fun e!756055 () Bool)

(declare-fun e!756052 () Bool)

(declare-fun mapRes!56178 () Bool)

(assert (=> b!1326473 (= e!756055 (and e!756052 mapRes!56178))))

(declare-fun condMapEmpty!56178 () Bool)

(declare-fun mapDefault!56178 () ValueCell!17277)

(assert (=> b!1326473 (= condMapEmpty!56178 (= (arr!43254 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17277)) mapDefault!56178)))))

(declare-fun b!1326474 () Bool)

(declare-fun tp_is_empty!36351 () Bool)

(assert (=> b!1326474 (= e!756052 tp_is_empty!36351)))

(declare-fun res!880471 () Bool)

(assert (=> start!111968 (=> (not res!880471) (not e!756051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111968 (= res!880471 (validMask!0 mask!2019))))

(assert (=> start!111968 e!756051))

(declare-fun array_inv!32587 (array!89569) Bool)

(assert (=> start!111968 (array_inv!32587 _keys!1609)))

(assert (=> start!111968 true))

(assert (=> start!111968 tp_is_empty!36351))

(declare-fun array_inv!32588 (array!89571) Bool)

(assert (=> start!111968 (and (array_inv!32588 _values!1337) e!756055)))

(assert (=> start!111968 tp!107073))

(declare-fun b!1326475 () Bool)

(declare-fun e!756054 () Bool)

(assert (=> b!1326475 (= e!756054 tp_is_empty!36351)))

(declare-fun b!1326476 () Bool)

(declare-fun res!880469 () Bool)

(assert (=> b!1326476 (=> (not res!880469) (not e!756051))))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1326476 (= res!880469 (not (= (select (arr!43253 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1326477 () Bool)

(declare-fun res!880476 () Bool)

(assert (=> b!1326477 (=> (not res!880476) (not e!756051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89569 (_ BitVec 32)) Bool)

(assert (=> b!1326477 (= res!880476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1326478 () Bool)

(declare-fun res!880474 () Bool)

(assert (=> b!1326478 (=> (not res!880474) (not e!756051))))

(assert (=> b!1326478 (= res!880474 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43804 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326479 () Bool)

(declare-fun res!880470 () Bool)

(assert (=> b!1326479 (=> (not res!880470) (not e!756051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1326479 (= res!880470 (validKeyInArray!0 (select (arr!43253 _keys!1609) from!2000)))))

(declare-fun b!1326480 () Bool)

(declare-fun res!880472 () Bool)

(assert (=> b!1326480 (=> (not res!880472) (not e!756051))))

(declare-datatypes ((List!30862 0))(
  ( (Nil!30859) (Cons!30858 (h!32067 (_ BitVec 64)) (t!44871 List!30862)) )
))
(declare-fun arrayNoDuplicates!0 (array!89569 (_ BitVec 32) List!30862) Bool)

(assert (=> b!1326480 (= res!880472 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30859))))

(declare-fun mapIsEmpty!56178 () Bool)

(assert (=> mapIsEmpty!56178 mapRes!56178))

(declare-fun mapNonEmpty!56178 () Bool)

(declare-fun tp!107074 () Bool)

(assert (=> mapNonEmpty!56178 (= mapRes!56178 (and tp!107074 e!756054))))

(declare-fun mapRest!56178 () (Array (_ BitVec 32) ValueCell!17277))

(declare-fun mapKey!56178 () (_ BitVec 32))

(declare-fun mapValue!56178 () ValueCell!17277)

(assert (=> mapNonEmpty!56178 (= (arr!43254 _values!1337) (store mapRest!56178 mapKey!56178 mapValue!56178))))

(declare-fun zeroValue!1279 () V!53571)

(declare-fun minValue!1279 () V!53571)

(declare-fun b!1326481 () Bool)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23698 0))(
  ( (tuple2!23699 (_1!11859 (_ BitVec 64)) (_2!11859 V!53571)) )
))
(declare-datatypes ((List!30863 0))(
  ( (Nil!30860) (Cons!30859 (h!32068 tuple2!23698) (t!44872 List!30863)) )
))
(declare-datatypes ((ListLongMap!21367 0))(
  ( (ListLongMap!21368 (toList!10699 List!30863)) )
))
(declare-fun contains!8792 (ListLongMap!21367 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5631 (array!89569 array!89571 (_ BitVec 32) (_ BitVec 32) V!53571 V!53571 (_ BitVec 32) Int) ListLongMap!21367)

(assert (=> b!1326481 (= e!756051 (not (contains!8792 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) k0!1164)))))

(declare-fun lt!590143 () ListLongMap!21367)

(declare-fun +!4614 (ListLongMap!21367 tuple2!23698) ListLongMap!21367)

(assert (=> b!1326481 (contains!8792 (+!4614 lt!590143 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-datatypes ((Unit!43634 0))(
  ( (Unit!43635) )
))
(declare-fun lt!590138 () Unit!43634)

(declare-fun addStillContains!1171 (ListLongMap!21367 (_ BitVec 64) V!53571 (_ BitVec 64)) Unit!43634)

(assert (=> b!1326481 (= lt!590138 (addStillContains!1171 lt!590143 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> b!1326481 (contains!8792 lt!590143 k0!1164)))

(declare-fun lt!590141 () ListLongMap!21367)

(declare-fun lt!590134 () tuple2!23698)

(assert (=> b!1326481 (= lt!590143 (+!4614 lt!590141 lt!590134))))

(declare-fun lt!590142 () Unit!43634)

(assert (=> b!1326481 (= lt!590142 (addStillContains!1171 lt!590141 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1326481 (contains!8792 lt!590141 k0!1164)))

(declare-fun lt!590140 () V!53571)

(declare-fun lt!590133 () Unit!43634)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!224 ((_ BitVec 64) (_ BitVec 64) V!53571 ListLongMap!21367) Unit!43634)

(assert (=> b!1326481 (= lt!590133 (lemmaInListMapAfterAddingDiffThenInBefore!224 k0!1164 (select (arr!43253 _keys!1609) from!2000) lt!590140 lt!590141))))

(declare-fun lt!590135 () ListLongMap!21367)

(assert (=> b!1326481 (contains!8792 lt!590135 k0!1164)))

(declare-fun lt!590139 () Unit!43634)

(assert (=> b!1326481 (= lt!590139 (lemmaInListMapAfterAddingDiffThenInBefore!224 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!590135))))

(declare-fun lt!590137 () ListLongMap!21367)

(assert (=> b!1326481 (contains!8792 lt!590137 k0!1164)))

(declare-fun lt!590136 () Unit!43634)

(assert (=> b!1326481 (= lt!590136 (lemmaInListMapAfterAddingDiffThenInBefore!224 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!590137))))

(assert (=> b!1326481 (= lt!590137 (+!4614 lt!590135 lt!590134))))

(assert (=> b!1326481 (= lt!590134 (tuple2!23699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1326481 (= lt!590135 (+!4614 lt!590141 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140)))))

(declare-fun get!21841 (ValueCell!17277 V!53571) V!53571)

(declare-fun dynLambda!3651 (Int (_ BitVec 64)) V!53571)

(assert (=> b!1326481 (= lt!590140 (get!21841 (select (arr!43254 _values!1337) from!2000) (dynLambda!3651 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6332 (array!89569 array!89571 (_ BitVec 32) (_ BitVec 32) V!53571 V!53571 (_ BitVec 32) Int) ListLongMap!21367)

(assert (=> b!1326481 (= lt!590141 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1326482 () Bool)

(declare-fun res!880475 () Bool)

(assert (=> b!1326482 (=> (not res!880475) (not e!756051))))

(assert (=> b!1326482 (= res!880475 (contains!8792 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(assert (= (and start!111968 res!880471) b!1326472))

(assert (= (and b!1326472 res!880473) b!1326477))

(assert (= (and b!1326477 res!880476) b!1326480))

(assert (= (and b!1326480 res!880472) b!1326478))

(assert (= (and b!1326478 res!880474) b!1326482))

(assert (= (and b!1326482 res!880475) b!1326476))

(assert (= (and b!1326476 res!880469) b!1326479))

(assert (= (and b!1326479 res!880470) b!1326481))

(assert (= (and b!1326473 condMapEmpty!56178) mapIsEmpty!56178))

(assert (= (and b!1326473 (not condMapEmpty!56178)) mapNonEmpty!56178))

(get-info :version)

(assert (= (and mapNonEmpty!56178 ((_ is ValueCellFull!17277) mapValue!56178)) b!1326475))

(assert (= (and b!1326473 ((_ is ValueCellFull!17277) mapDefault!56178)) b!1326474))

(assert (= start!111968 b!1326473))

(declare-fun b_lambda!23819 () Bool)

(assert (=> (not b_lambda!23819) (not b!1326481)))

(declare-fun t!44870 () Bool)

(declare-fun tb!11813 () Bool)

(assert (=> (and start!111968 (= defaultEntry!1340 defaultEntry!1340) t!44870) tb!11813))

(declare-fun result!24675 () Bool)

(assert (=> tb!11813 (= result!24675 tp_is_empty!36351)))

(assert (=> b!1326481 t!44870))

(declare-fun b_and!49169 () Bool)

(assert (= b_and!49167 (and (=> t!44870 result!24675) b_and!49169)))

(declare-fun m!1215571 () Bool)

(assert (=> b!1326479 m!1215571))

(assert (=> b!1326479 m!1215571))

(declare-fun m!1215573 () Bool)

(assert (=> b!1326479 m!1215573))

(assert (=> b!1326476 m!1215571))

(declare-fun m!1215575 () Bool)

(assert (=> b!1326482 m!1215575))

(assert (=> b!1326482 m!1215575))

(declare-fun m!1215577 () Bool)

(assert (=> b!1326482 m!1215577))

(declare-fun m!1215579 () Bool)

(assert (=> b!1326481 m!1215579))

(declare-fun m!1215581 () Bool)

(assert (=> b!1326481 m!1215581))

(declare-fun m!1215583 () Bool)

(assert (=> b!1326481 m!1215583))

(assert (=> b!1326481 m!1215579))

(declare-fun m!1215585 () Bool)

(assert (=> b!1326481 m!1215585))

(declare-fun m!1215587 () Bool)

(assert (=> b!1326481 m!1215587))

(declare-fun m!1215589 () Bool)

(assert (=> b!1326481 m!1215589))

(declare-fun m!1215591 () Bool)

(assert (=> b!1326481 m!1215591))

(declare-fun m!1215593 () Bool)

(assert (=> b!1326481 m!1215593))

(assert (=> b!1326481 m!1215571))

(declare-fun m!1215595 () Bool)

(assert (=> b!1326481 m!1215595))

(assert (=> b!1326481 m!1215571))

(declare-fun m!1215597 () Bool)

(assert (=> b!1326481 m!1215597))

(assert (=> b!1326481 m!1215597))

(declare-fun m!1215599 () Bool)

(assert (=> b!1326481 m!1215599))

(declare-fun m!1215601 () Bool)

(assert (=> b!1326481 m!1215601))

(declare-fun m!1215603 () Bool)

(assert (=> b!1326481 m!1215603))

(declare-fun m!1215605 () Bool)

(assert (=> b!1326481 m!1215605))

(assert (=> b!1326481 m!1215591))

(declare-fun m!1215607 () Bool)

(assert (=> b!1326481 m!1215607))

(declare-fun m!1215609 () Bool)

(assert (=> b!1326481 m!1215609))

(declare-fun m!1215611 () Bool)

(assert (=> b!1326481 m!1215611))

(assert (=> b!1326481 m!1215589))

(declare-fun m!1215613 () Bool)

(assert (=> b!1326481 m!1215613))

(declare-fun m!1215615 () Bool)

(assert (=> b!1326481 m!1215615))

(declare-fun m!1215617 () Bool)

(assert (=> b!1326481 m!1215617))

(declare-fun m!1215619 () Bool)

(assert (=> mapNonEmpty!56178 m!1215619))

(declare-fun m!1215621 () Bool)

(assert (=> b!1326477 m!1215621))

(declare-fun m!1215623 () Bool)

(assert (=> b!1326480 m!1215623))

(declare-fun m!1215625 () Bool)

(assert (=> start!111968 m!1215625))

(declare-fun m!1215627 () Bool)

(assert (=> start!111968 m!1215627))

(declare-fun m!1215629 () Bool)

(assert (=> start!111968 m!1215629))

(check-sat (not b!1326479) (not b!1326477) b_and!49169 (not b!1326480) (not b_next!30531) (not mapNonEmpty!56178) (not b!1326481) (not b_lambda!23819) (not b!1326482) (not start!111968) tp_is_empty!36351)
(check-sat b_and!49169 (not b_next!30531))
(get-model)

(declare-fun b_lambda!23823 () Bool)

(assert (= b_lambda!23819 (or (and start!111968 b_free!30531) b_lambda!23823)))

(check-sat (not b!1326479) (not b_lambda!23823) (not b!1326477) b_and!49169 (not b!1326480) (not b_next!30531) (not mapNonEmpty!56178) (not b!1326481) (not b!1326482) (not start!111968) tp_is_empty!36351)
(check-sat b_and!49169 (not b_next!30531))
(get-model)

(declare-fun d!143005 () Bool)

(assert (=> d!143005 (= (validMask!0 mask!2019) (and (or (= mask!2019 #b00000000000000000000000000000111) (= mask!2019 #b00000000000000000000000000001111) (= mask!2019 #b00000000000000000000000000011111) (= mask!2019 #b00000000000000000000000000111111) (= mask!2019 #b00000000000000000000000001111111) (= mask!2019 #b00000000000000000000000011111111) (= mask!2019 #b00000000000000000000000111111111) (= mask!2019 #b00000000000000000000001111111111) (= mask!2019 #b00000000000000000000011111111111) (= mask!2019 #b00000000000000000000111111111111) (= mask!2019 #b00000000000000000001111111111111) (= mask!2019 #b00000000000000000011111111111111) (= mask!2019 #b00000000000000000111111111111111) (= mask!2019 #b00000000000000001111111111111111) (= mask!2019 #b00000000000000011111111111111111) (= mask!2019 #b00000000000000111111111111111111) (= mask!2019 #b00000000000001111111111111111111) (= mask!2019 #b00000000000011111111111111111111) (= mask!2019 #b00000000000111111111111111111111) (= mask!2019 #b00000000001111111111111111111111) (= mask!2019 #b00000000011111111111111111111111) (= mask!2019 #b00000000111111111111111111111111) (= mask!2019 #b00000001111111111111111111111111) (= mask!2019 #b00000011111111111111111111111111) (= mask!2019 #b00000111111111111111111111111111) (= mask!2019 #b00001111111111111111111111111111) (= mask!2019 #b00011111111111111111111111111111) (= mask!2019 #b00111111111111111111111111111111)) (bvsle mask!2019 #b00111111111111111111111111111111)))))

(assert (=> start!111968 d!143005))

(declare-fun d!143007 () Bool)

(assert (=> d!143007 (= (array_inv!32587 _keys!1609) (bvsge (size!43804 _keys!1609) #b00000000000000000000000000000000))))

(assert (=> start!111968 d!143007))

(declare-fun d!143009 () Bool)

(assert (=> d!143009 (= (array_inv!32588 _values!1337) (bvsge (size!43805 _values!1337) #b00000000000000000000000000000000))))

(assert (=> start!111968 d!143009))

(declare-fun d!143011 () Bool)

(declare-fun res!880507 () Bool)

(declare-fun e!756082 () Bool)

(assert (=> d!143011 (=> res!880507 e!756082)))

(assert (=> d!143011 (= res!880507 (bvsge #b00000000000000000000000000000000 (size!43804 _keys!1609)))))

(assert (=> d!143011 (= (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30859) e!756082)))

(declare-fun bm!64729 () Bool)

(declare-fun call!64732 () Bool)

(declare-fun c!125699 () Bool)

(assert (=> bm!64729 (= call!64732 (arrayNoDuplicates!0 _keys!1609 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125699 (Cons!30858 (select (arr!43253 _keys!1609) #b00000000000000000000000000000000) Nil!30859) Nil!30859)))))

(declare-fun b!1326530 () Bool)

(declare-fun e!756079 () Bool)

(assert (=> b!1326530 (= e!756079 call!64732)))

(declare-fun b!1326531 () Bool)

(declare-fun e!756080 () Bool)

(declare-fun contains!8794 (List!30862 (_ BitVec 64)) Bool)

(assert (=> b!1326531 (= e!756080 (contains!8794 Nil!30859 (select (arr!43253 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun b!1326532 () Bool)

(assert (=> b!1326532 (= e!756079 call!64732)))

(declare-fun b!1326533 () Bool)

(declare-fun e!756081 () Bool)

(assert (=> b!1326533 (= e!756082 e!756081)))

(declare-fun res!880508 () Bool)

(assert (=> b!1326533 (=> (not res!880508) (not e!756081))))

(assert (=> b!1326533 (= res!880508 (not e!756080))))

(declare-fun res!880509 () Bool)

(assert (=> b!1326533 (=> (not res!880509) (not e!756080))))

(assert (=> b!1326533 (= res!880509 (validKeyInArray!0 (select (arr!43253 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun b!1326534 () Bool)

(assert (=> b!1326534 (= e!756081 e!756079)))

(assert (=> b!1326534 (= c!125699 (validKeyInArray!0 (select (arr!43253 _keys!1609) #b00000000000000000000000000000000)))))

(assert (= (and d!143011 (not res!880507)) b!1326533))

(assert (= (and b!1326533 res!880509) b!1326531))

(assert (= (and b!1326533 res!880508) b!1326534))

(assert (= (and b!1326534 c!125699) b!1326532))

(assert (= (and b!1326534 (not c!125699)) b!1326530))

(assert (= (or b!1326532 b!1326530) bm!64729))

(declare-fun m!1215691 () Bool)

(assert (=> bm!64729 m!1215691))

(declare-fun m!1215693 () Bool)

(assert (=> bm!64729 m!1215693))

(assert (=> b!1326531 m!1215691))

(assert (=> b!1326531 m!1215691))

(declare-fun m!1215695 () Bool)

(assert (=> b!1326531 m!1215695))

(assert (=> b!1326533 m!1215691))

(assert (=> b!1326533 m!1215691))

(declare-fun m!1215697 () Bool)

(assert (=> b!1326533 m!1215697))

(assert (=> b!1326534 m!1215691))

(assert (=> b!1326534 m!1215691))

(assert (=> b!1326534 m!1215697))

(assert (=> b!1326480 d!143011))

(declare-fun b!1326543 () Bool)

(declare-fun e!756090 () Bool)

(declare-fun e!756089 () Bool)

(assert (=> b!1326543 (= e!756090 e!756089)))

(declare-fun lt!590183 () (_ BitVec 64))

(assert (=> b!1326543 (= lt!590183 (select (arr!43253 _keys!1609) #b00000000000000000000000000000000))))

(declare-fun lt!590185 () Unit!43634)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!89569 (_ BitVec 64) (_ BitVec 32)) Unit!43634)

(assert (=> b!1326543 (= lt!590185 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!590183 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!89569 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1326543 (arrayContainsKey!0 _keys!1609 lt!590183 #b00000000000000000000000000000000)))

(declare-fun lt!590184 () Unit!43634)

(assert (=> b!1326543 (= lt!590184 lt!590185)))

(declare-fun res!880515 () Bool)

(declare-datatypes ((SeekEntryResult!10038 0))(
  ( (MissingZero!10038 (index!42522 (_ BitVec 32))) (Found!10038 (index!42523 (_ BitVec 32))) (Intermediate!10038 (undefined!10850 Bool) (index!42524 (_ BitVec 32)) (x!118284 (_ BitVec 32))) (Undefined!10038) (MissingVacant!10038 (index!42525 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!89569 (_ BitVec 32)) SeekEntryResult!10038)

(assert (=> b!1326543 (= res!880515 (= (seekEntryOrOpen!0 (select (arr!43253 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019) (Found!10038 #b00000000000000000000000000000000)))))

(assert (=> b!1326543 (=> (not res!880515) (not e!756089))))

(declare-fun b!1326544 () Bool)

(declare-fun e!756091 () Bool)

(assert (=> b!1326544 (= e!756091 e!756090)))

(declare-fun c!125702 () Bool)

(assert (=> b!1326544 (= c!125702 (validKeyInArray!0 (select (arr!43253 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun bm!64732 () Bool)

(declare-fun call!64735 () Bool)

(assert (=> bm!64732 (= call!64735 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1609 mask!2019))))

(declare-fun d!143013 () Bool)

(declare-fun res!880514 () Bool)

(assert (=> d!143013 (=> res!880514 e!756091)))

(assert (=> d!143013 (= res!880514 (bvsge #b00000000000000000000000000000000 (size!43804 _keys!1609)))))

(assert (=> d!143013 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019) e!756091)))

(declare-fun b!1326545 () Bool)

(assert (=> b!1326545 (= e!756089 call!64735)))

(declare-fun b!1326546 () Bool)

(assert (=> b!1326546 (= e!756090 call!64735)))

(assert (= (and d!143013 (not res!880514)) b!1326544))

(assert (= (and b!1326544 c!125702) b!1326543))

(assert (= (and b!1326544 (not c!125702)) b!1326546))

(assert (= (and b!1326543 res!880515) b!1326545))

(assert (= (or b!1326545 b!1326546) bm!64732))

(assert (=> b!1326543 m!1215691))

(declare-fun m!1215699 () Bool)

(assert (=> b!1326543 m!1215699))

(declare-fun m!1215701 () Bool)

(assert (=> b!1326543 m!1215701))

(assert (=> b!1326543 m!1215691))

(declare-fun m!1215703 () Bool)

(assert (=> b!1326543 m!1215703))

(assert (=> b!1326544 m!1215691))

(assert (=> b!1326544 m!1215691))

(assert (=> b!1326544 m!1215697))

(declare-fun m!1215705 () Bool)

(assert (=> bm!64732 m!1215705))

(assert (=> b!1326477 d!143013))

(declare-fun d!143015 () Bool)

(declare-fun e!756097 () Bool)

(assert (=> d!143015 e!756097))

(declare-fun res!880518 () Bool)

(assert (=> d!143015 (=> res!880518 e!756097)))

(declare-fun lt!590196 () Bool)

(assert (=> d!143015 (= res!880518 (not lt!590196))))

(declare-fun lt!590194 () Bool)

(assert (=> d!143015 (= lt!590196 lt!590194)))

(declare-fun lt!590197 () Unit!43634)

(declare-fun e!756096 () Unit!43634)

(assert (=> d!143015 (= lt!590197 e!756096)))

(declare-fun c!125705 () Bool)

(assert (=> d!143015 (= c!125705 lt!590194)))

(declare-fun containsKey!733 (List!30863 (_ BitVec 64)) Bool)

(assert (=> d!143015 (= lt!590194 (containsKey!733 (toList!10699 lt!590141) k0!1164))))

(assert (=> d!143015 (= (contains!8792 lt!590141 k0!1164) lt!590196)))

(declare-fun b!1326553 () Bool)

(declare-fun lt!590195 () Unit!43634)

(assert (=> b!1326553 (= e!756096 lt!590195)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!478 (List!30863 (_ BitVec 64)) Unit!43634)

(assert (=> b!1326553 (= lt!590195 (lemmaContainsKeyImpliesGetValueByKeyDefined!478 (toList!10699 lt!590141) k0!1164))))

(declare-datatypes ((Option!766 0))(
  ( (Some!765 (v!20883 V!53571)) (None!764) )
))
(declare-fun isDefined!518 (Option!766) Bool)

(declare-fun getValueByKey!715 (List!30863 (_ BitVec 64)) Option!766)

(assert (=> b!1326553 (isDefined!518 (getValueByKey!715 (toList!10699 lt!590141) k0!1164))))

(declare-fun b!1326554 () Bool)

(declare-fun Unit!43638 () Unit!43634)

(assert (=> b!1326554 (= e!756096 Unit!43638)))

(declare-fun b!1326555 () Bool)

(assert (=> b!1326555 (= e!756097 (isDefined!518 (getValueByKey!715 (toList!10699 lt!590141) k0!1164)))))

(assert (= (and d!143015 c!125705) b!1326553))

(assert (= (and d!143015 (not c!125705)) b!1326554))

(assert (= (and d!143015 (not res!880518)) b!1326555))

(declare-fun m!1215707 () Bool)

(assert (=> d!143015 m!1215707))

(declare-fun m!1215709 () Bool)

(assert (=> b!1326553 m!1215709))

(declare-fun m!1215711 () Bool)

(assert (=> b!1326553 m!1215711))

(assert (=> b!1326553 m!1215711))

(declare-fun m!1215713 () Bool)

(assert (=> b!1326553 m!1215713))

(assert (=> b!1326555 m!1215711))

(assert (=> b!1326555 m!1215711))

(assert (=> b!1326555 m!1215713))

(assert (=> b!1326481 d!143015))

(declare-fun d!143017 () Bool)

(declare-fun e!756099 () Bool)

(assert (=> d!143017 e!756099))

(declare-fun res!880519 () Bool)

(assert (=> d!143017 (=> res!880519 e!756099)))

(declare-fun lt!590200 () Bool)

(assert (=> d!143017 (= res!880519 (not lt!590200))))

(declare-fun lt!590198 () Bool)

(assert (=> d!143017 (= lt!590200 lt!590198)))

(declare-fun lt!590201 () Unit!43634)

(declare-fun e!756098 () Unit!43634)

(assert (=> d!143017 (= lt!590201 e!756098)))

(declare-fun c!125706 () Bool)

(assert (=> d!143017 (= c!125706 lt!590198)))

(assert (=> d!143017 (= lt!590198 (containsKey!733 (toList!10699 (+!4614 lt!590143 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))

(assert (=> d!143017 (= (contains!8792 (+!4614 lt!590143 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164) lt!590200)))

(declare-fun b!1326556 () Bool)

(declare-fun lt!590199 () Unit!43634)

(assert (=> b!1326556 (= e!756098 lt!590199)))

(assert (=> b!1326556 (= lt!590199 (lemmaContainsKeyImpliesGetValueByKeyDefined!478 (toList!10699 (+!4614 lt!590143 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))

(assert (=> b!1326556 (isDefined!518 (getValueByKey!715 (toList!10699 (+!4614 lt!590143 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))

(declare-fun b!1326557 () Bool)

(declare-fun Unit!43639 () Unit!43634)

(assert (=> b!1326557 (= e!756098 Unit!43639)))

(declare-fun b!1326558 () Bool)

(assert (=> b!1326558 (= e!756099 (isDefined!518 (getValueByKey!715 (toList!10699 (+!4614 lt!590143 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164)))))

(assert (= (and d!143017 c!125706) b!1326556))

(assert (= (and d!143017 (not c!125706)) b!1326557))

(assert (= (and d!143017 (not res!880519)) b!1326558))

(declare-fun m!1215715 () Bool)

(assert (=> d!143017 m!1215715))

(declare-fun m!1215717 () Bool)

(assert (=> b!1326556 m!1215717))

(declare-fun m!1215719 () Bool)

(assert (=> b!1326556 m!1215719))

(assert (=> b!1326556 m!1215719))

(declare-fun m!1215721 () Bool)

(assert (=> b!1326556 m!1215721))

(assert (=> b!1326558 m!1215719))

(assert (=> b!1326558 m!1215719))

(assert (=> b!1326558 m!1215721))

(assert (=> b!1326481 d!143017))

(declare-fun d!143019 () Bool)

(assert (=> d!143019 (contains!8792 (+!4614 lt!590143 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(declare-fun lt!590204 () Unit!43634)

(declare-fun choose!1959 (ListLongMap!21367 (_ BitVec 64) V!53571 (_ BitVec 64)) Unit!43634)

(assert (=> d!143019 (= lt!590204 (choose!1959 lt!590143 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164))))

(assert (=> d!143019 (contains!8792 lt!590143 k0!1164)))

(assert (=> d!143019 (= (addStillContains!1171 lt!590143 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 k0!1164) lt!590204)))

(declare-fun bs!37939 () Bool)

(assert (= bs!37939 d!143019))

(assert (=> bs!37939 m!1215597))

(assert (=> bs!37939 m!1215597))

(assert (=> bs!37939 m!1215599))

(declare-fun m!1215723 () Bool)

(assert (=> bs!37939 m!1215723))

(assert (=> bs!37939 m!1215609))

(assert (=> b!1326481 d!143019))

(declare-fun d!143021 () Bool)

(declare-fun e!756102 () Bool)

(assert (=> d!143021 e!756102))

(declare-fun res!880525 () Bool)

(assert (=> d!143021 (=> (not res!880525) (not e!756102))))

(declare-fun lt!590216 () ListLongMap!21367)

(assert (=> d!143021 (= res!880525 (contains!8792 lt!590216 (_1!11859 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140))))))

(declare-fun lt!590213 () List!30863)

(assert (=> d!143021 (= lt!590216 (ListLongMap!21368 lt!590213))))

(declare-fun lt!590214 () Unit!43634)

(declare-fun lt!590215 () Unit!43634)

(assert (=> d!143021 (= lt!590214 lt!590215)))

(assert (=> d!143021 (= (getValueByKey!715 lt!590213 (_1!11859 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140))) (Some!765 (_2!11859 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140))))))

(declare-fun lemmaContainsTupThenGetReturnValue!358 (List!30863 (_ BitVec 64) V!53571) Unit!43634)

(assert (=> d!143021 (= lt!590215 (lemmaContainsTupThenGetReturnValue!358 lt!590213 (_1!11859 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140)) (_2!11859 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140))))))

(declare-fun insertStrictlySorted!487 (List!30863 (_ BitVec 64) V!53571) List!30863)

(assert (=> d!143021 (= lt!590213 (insertStrictlySorted!487 (toList!10699 lt!590141) (_1!11859 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140)) (_2!11859 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140))))))

(assert (=> d!143021 (= (+!4614 lt!590141 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140)) lt!590216)))

(declare-fun b!1326564 () Bool)

(declare-fun res!880524 () Bool)

(assert (=> b!1326564 (=> (not res!880524) (not e!756102))))

(assert (=> b!1326564 (= res!880524 (= (getValueByKey!715 (toList!10699 lt!590216) (_1!11859 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140))) (Some!765 (_2!11859 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140)))))))

(declare-fun b!1326565 () Bool)

(declare-fun contains!8795 (List!30863 tuple2!23698) Bool)

(assert (=> b!1326565 (= e!756102 (contains!8795 (toList!10699 lt!590216) (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140)))))

(assert (= (and d!143021 res!880525) b!1326564))

(assert (= (and b!1326564 res!880524) b!1326565))

(declare-fun m!1215725 () Bool)

(assert (=> d!143021 m!1215725))

(declare-fun m!1215727 () Bool)

(assert (=> d!143021 m!1215727))

(declare-fun m!1215729 () Bool)

(assert (=> d!143021 m!1215729))

(declare-fun m!1215731 () Bool)

(assert (=> d!143021 m!1215731))

(declare-fun m!1215733 () Bool)

(assert (=> b!1326564 m!1215733))

(declare-fun m!1215735 () Bool)

(assert (=> b!1326565 m!1215735))

(assert (=> b!1326481 d!143021))

(declare-fun d!143023 () Bool)

(declare-fun e!756104 () Bool)

(assert (=> d!143023 e!756104))

(declare-fun res!880526 () Bool)

(assert (=> d!143023 (=> res!880526 e!756104)))

(declare-fun lt!590219 () Bool)

(assert (=> d!143023 (= res!880526 (not lt!590219))))

(declare-fun lt!590217 () Bool)

(assert (=> d!143023 (= lt!590219 lt!590217)))

(declare-fun lt!590220 () Unit!43634)

(declare-fun e!756103 () Unit!43634)

(assert (=> d!143023 (= lt!590220 e!756103)))

(declare-fun c!125707 () Bool)

(assert (=> d!143023 (= c!125707 lt!590217)))

(assert (=> d!143023 (= lt!590217 (containsKey!733 (toList!10699 lt!590137) k0!1164))))

(assert (=> d!143023 (= (contains!8792 lt!590137 k0!1164) lt!590219)))

(declare-fun b!1326566 () Bool)

(declare-fun lt!590218 () Unit!43634)

(assert (=> b!1326566 (= e!756103 lt!590218)))

(assert (=> b!1326566 (= lt!590218 (lemmaContainsKeyImpliesGetValueByKeyDefined!478 (toList!10699 lt!590137) k0!1164))))

(assert (=> b!1326566 (isDefined!518 (getValueByKey!715 (toList!10699 lt!590137) k0!1164))))

(declare-fun b!1326567 () Bool)

(declare-fun Unit!43640 () Unit!43634)

(assert (=> b!1326567 (= e!756103 Unit!43640)))

(declare-fun b!1326568 () Bool)

(assert (=> b!1326568 (= e!756104 (isDefined!518 (getValueByKey!715 (toList!10699 lt!590137) k0!1164)))))

(assert (= (and d!143023 c!125707) b!1326566))

(assert (= (and d!143023 (not c!125707)) b!1326567))

(assert (= (and d!143023 (not res!880526)) b!1326568))

(declare-fun m!1215737 () Bool)

(assert (=> d!143023 m!1215737))

(declare-fun m!1215739 () Bool)

(assert (=> b!1326566 m!1215739))

(declare-fun m!1215741 () Bool)

(assert (=> b!1326566 m!1215741))

(assert (=> b!1326566 m!1215741))

(declare-fun m!1215743 () Bool)

(assert (=> b!1326566 m!1215743))

(assert (=> b!1326568 m!1215741))

(assert (=> b!1326568 m!1215741))

(assert (=> b!1326568 m!1215743))

(assert (=> b!1326481 d!143023))

(declare-fun d!143025 () Bool)

(declare-fun e!756106 () Bool)

(assert (=> d!143025 e!756106))

(declare-fun res!880527 () Bool)

(assert (=> d!143025 (=> res!880527 e!756106)))

(declare-fun lt!590223 () Bool)

(assert (=> d!143025 (= res!880527 (not lt!590223))))

(declare-fun lt!590221 () Bool)

(assert (=> d!143025 (= lt!590223 lt!590221)))

(declare-fun lt!590224 () Unit!43634)

(declare-fun e!756105 () Unit!43634)

(assert (=> d!143025 (= lt!590224 e!756105)))

(declare-fun c!125708 () Bool)

(assert (=> d!143025 (= c!125708 lt!590221)))

(assert (=> d!143025 (= lt!590221 (containsKey!733 (toList!10699 lt!590143) k0!1164))))

(assert (=> d!143025 (= (contains!8792 lt!590143 k0!1164) lt!590223)))

(declare-fun b!1326569 () Bool)

(declare-fun lt!590222 () Unit!43634)

(assert (=> b!1326569 (= e!756105 lt!590222)))

(assert (=> b!1326569 (= lt!590222 (lemmaContainsKeyImpliesGetValueByKeyDefined!478 (toList!10699 lt!590143) k0!1164))))

(assert (=> b!1326569 (isDefined!518 (getValueByKey!715 (toList!10699 lt!590143) k0!1164))))

(declare-fun b!1326570 () Bool)

(declare-fun Unit!43641 () Unit!43634)

(assert (=> b!1326570 (= e!756105 Unit!43641)))

(declare-fun b!1326571 () Bool)

(assert (=> b!1326571 (= e!756106 (isDefined!518 (getValueByKey!715 (toList!10699 lt!590143) k0!1164)))))

(assert (= (and d!143025 c!125708) b!1326569))

(assert (= (and d!143025 (not c!125708)) b!1326570))

(assert (= (and d!143025 (not res!880527)) b!1326571))

(declare-fun m!1215745 () Bool)

(assert (=> d!143025 m!1215745))

(declare-fun m!1215747 () Bool)

(assert (=> b!1326569 m!1215747))

(declare-fun m!1215749 () Bool)

(assert (=> b!1326569 m!1215749))

(assert (=> b!1326569 m!1215749))

(declare-fun m!1215751 () Bool)

(assert (=> b!1326569 m!1215751))

(assert (=> b!1326571 m!1215749))

(assert (=> b!1326571 m!1215749))

(assert (=> b!1326571 m!1215751))

(assert (=> b!1326481 d!143025))

(declare-fun d!143027 () Bool)

(assert (=> d!143027 (contains!8792 lt!590135 k0!1164)))

(declare-fun lt!590227 () Unit!43634)

(declare-fun choose!1960 ((_ BitVec 64) (_ BitVec 64) V!53571 ListLongMap!21367) Unit!43634)

(assert (=> d!143027 (= lt!590227 (choose!1960 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!590135))))

(assert (=> d!143027 (contains!8792 (+!4614 lt!590135 (tuple2!23699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) k0!1164)))

(assert (=> d!143027 (= (lemmaInListMapAfterAddingDiffThenInBefore!224 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!590135) lt!590227)))

(declare-fun bs!37940 () Bool)

(assert (= bs!37940 d!143027))

(assert (=> bs!37940 m!1215615))

(declare-fun m!1215753 () Bool)

(assert (=> bs!37940 m!1215753))

(declare-fun m!1215755 () Bool)

(assert (=> bs!37940 m!1215755))

(assert (=> bs!37940 m!1215755))

(declare-fun m!1215757 () Bool)

(assert (=> bs!37940 m!1215757))

(assert (=> b!1326481 d!143027))

(declare-fun d!143029 () Bool)

(assert (=> d!143029 (contains!8792 lt!590137 k0!1164)))

(declare-fun lt!590228 () Unit!43634)

(assert (=> d!143029 (= lt!590228 (choose!1960 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!590137))))

(assert (=> d!143029 (contains!8792 (+!4614 lt!590137 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))

(assert (=> d!143029 (= (lemmaInListMapAfterAddingDiffThenInBefore!224 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!590137) lt!590228)))

(declare-fun bs!37941 () Bool)

(assert (= bs!37941 d!143029))

(assert (=> bs!37941 m!1215585))

(declare-fun m!1215759 () Bool)

(assert (=> bs!37941 m!1215759))

(declare-fun m!1215761 () Bool)

(assert (=> bs!37941 m!1215761))

(assert (=> bs!37941 m!1215761))

(declare-fun m!1215763 () Bool)

(assert (=> bs!37941 m!1215763))

(assert (=> b!1326481 d!143029))

(declare-fun d!143031 () Bool)

(declare-fun e!756107 () Bool)

(assert (=> d!143031 e!756107))

(declare-fun res!880529 () Bool)

(assert (=> d!143031 (=> (not res!880529) (not e!756107))))

(declare-fun lt!590232 () ListLongMap!21367)

(assert (=> d!143031 (= res!880529 (contains!8792 lt!590232 (_1!11859 lt!590134)))))

(declare-fun lt!590229 () List!30863)

(assert (=> d!143031 (= lt!590232 (ListLongMap!21368 lt!590229))))

(declare-fun lt!590230 () Unit!43634)

(declare-fun lt!590231 () Unit!43634)

(assert (=> d!143031 (= lt!590230 lt!590231)))

(assert (=> d!143031 (= (getValueByKey!715 lt!590229 (_1!11859 lt!590134)) (Some!765 (_2!11859 lt!590134)))))

(assert (=> d!143031 (= lt!590231 (lemmaContainsTupThenGetReturnValue!358 lt!590229 (_1!11859 lt!590134) (_2!11859 lt!590134)))))

(assert (=> d!143031 (= lt!590229 (insertStrictlySorted!487 (toList!10699 lt!590135) (_1!11859 lt!590134) (_2!11859 lt!590134)))))

(assert (=> d!143031 (= (+!4614 lt!590135 lt!590134) lt!590232)))

(declare-fun b!1326572 () Bool)

(declare-fun res!880528 () Bool)

(assert (=> b!1326572 (=> (not res!880528) (not e!756107))))

(assert (=> b!1326572 (= res!880528 (= (getValueByKey!715 (toList!10699 lt!590232) (_1!11859 lt!590134)) (Some!765 (_2!11859 lt!590134))))))

(declare-fun b!1326573 () Bool)

(assert (=> b!1326573 (= e!756107 (contains!8795 (toList!10699 lt!590232) lt!590134))))

(assert (= (and d!143031 res!880529) b!1326572))

(assert (= (and b!1326572 res!880528) b!1326573))

(declare-fun m!1215765 () Bool)

(assert (=> d!143031 m!1215765))

(declare-fun m!1215767 () Bool)

(assert (=> d!143031 m!1215767))

(declare-fun m!1215769 () Bool)

(assert (=> d!143031 m!1215769))

(declare-fun m!1215771 () Bool)

(assert (=> d!143031 m!1215771))

(declare-fun m!1215773 () Bool)

(assert (=> b!1326572 m!1215773))

(declare-fun m!1215775 () Bool)

(assert (=> b!1326573 m!1215775))

(assert (=> b!1326481 d!143031))

(declare-fun d!143033 () Bool)

(declare-fun e!756108 () Bool)

(assert (=> d!143033 e!756108))

(declare-fun res!880531 () Bool)

(assert (=> d!143033 (=> (not res!880531) (not e!756108))))

(declare-fun lt!590236 () ListLongMap!21367)

(assert (=> d!143033 (= res!880531 (contains!8792 lt!590236 (_1!11859 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun lt!590233 () List!30863)

(assert (=> d!143033 (= lt!590236 (ListLongMap!21368 lt!590233))))

(declare-fun lt!590234 () Unit!43634)

(declare-fun lt!590235 () Unit!43634)

(assert (=> d!143033 (= lt!590234 lt!590235)))

(assert (=> d!143033 (= (getValueByKey!715 lt!590233 (_1!11859 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!765 (_2!11859 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!143033 (= lt!590235 (lemmaContainsTupThenGetReturnValue!358 lt!590233 (_1!11859 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11859 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!143033 (= lt!590233 (insertStrictlySorted!487 (toList!10699 lt!590143) (_1!11859 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11859 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!143033 (= (+!4614 lt!590143 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) lt!590236)))

(declare-fun b!1326574 () Bool)

(declare-fun res!880530 () Bool)

(assert (=> b!1326574 (=> (not res!880530) (not e!756108))))

(assert (=> b!1326574 (= res!880530 (= (getValueByKey!715 (toList!10699 lt!590236) (_1!11859 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!765 (_2!11859 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun b!1326575 () Bool)

(assert (=> b!1326575 (= e!756108 (contains!8795 (toList!10699 lt!590236) (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(assert (= (and d!143033 res!880531) b!1326574))

(assert (= (and b!1326574 res!880530) b!1326575))

(declare-fun m!1215777 () Bool)

(assert (=> d!143033 m!1215777))

(declare-fun m!1215779 () Bool)

(assert (=> d!143033 m!1215779))

(declare-fun m!1215781 () Bool)

(assert (=> d!143033 m!1215781))

(declare-fun m!1215783 () Bool)

(assert (=> d!143033 m!1215783))

(declare-fun m!1215785 () Bool)

(assert (=> b!1326574 m!1215785))

(declare-fun m!1215787 () Bool)

(assert (=> b!1326575 m!1215787))

(assert (=> b!1326481 d!143033))

(declare-fun d!143035 () Bool)

(declare-fun e!756109 () Bool)

(assert (=> d!143035 e!756109))

(declare-fun res!880533 () Bool)

(assert (=> d!143035 (=> (not res!880533) (not e!756109))))

(declare-fun lt!590240 () ListLongMap!21367)

(assert (=> d!143035 (= res!880533 (contains!8792 lt!590240 (_1!11859 lt!590134)))))

(declare-fun lt!590237 () List!30863)

(assert (=> d!143035 (= lt!590240 (ListLongMap!21368 lt!590237))))

(declare-fun lt!590238 () Unit!43634)

(declare-fun lt!590239 () Unit!43634)

(assert (=> d!143035 (= lt!590238 lt!590239)))

(assert (=> d!143035 (= (getValueByKey!715 lt!590237 (_1!11859 lt!590134)) (Some!765 (_2!11859 lt!590134)))))

(assert (=> d!143035 (= lt!590239 (lemmaContainsTupThenGetReturnValue!358 lt!590237 (_1!11859 lt!590134) (_2!11859 lt!590134)))))

(assert (=> d!143035 (= lt!590237 (insertStrictlySorted!487 (toList!10699 lt!590141) (_1!11859 lt!590134) (_2!11859 lt!590134)))))

(assert (=> d!143035 (= (+!4614 lt!590141 lt!590134) lt!590240)))

(declare-fun b!1326576 () Bool)

(declare-fun res!880532 () Bool)

(assert (=> b!1326576 (=> (not res!880532) (not e!756109))))

(assert (=> b!1326576 (= res!880532 (= (getValueByKey!715 (toList!10699 lt!590240) (_1!11859 lt!590134)) (Some!765 (_2!11859 lt!590134))))))

(declare-fun b!1326577 () Bool)

(assert (=> b!1326577 (= e!756109 (contains!8795 (toList!10699 lt!590240) lt!590134))))

(assert (= (and d!143035 res!880533) b!1326576))

(assert (= (and b!1326576 res!880532) b!1326577))

(declare-fun m!1215789 () Bool)

(assert (=> d!143035 m!1215789))

(declare-fun m!1215791 () Bool)

(assert (=> d!143035 m!1215791))

(declare-fun m!1215793 () Bool)

(assert (=> d!143035 m!1215793))

(declare-fun m!1215795 () Bool)

(assert (=> d!143035 m!1215795))

(declare-fun m!1215797 () Bool)

(assert (=> b!1326576 m!1215797))

(declare-fun m!1215799 () Bool)

(assert (=> b!1326577 m!1215799))

(assert (=> b!1326481 d!143035))

(declare-fun d!143037 () Bool)

(declare-fun c!125711 () Bool)

(assert (=> d!143037 (= c!125711 ((_ is ValueCellFull!17277) (select (arr!43254 _values!1337) from!2000)))))

(declare-fun e!756112 () V!53571)

(assert (=> d!143037 (= (get!21841 (select (arr!43254 _values!1337) from!2000) (dynLambda!3651 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)) e!756112)))

(declare-fun b!1326582 () Bool)

(declare-fun get!21843 (ValueCell!17277 V!53571) V!53571)

(assert (=> b!1326582 (= e!756112 (get!21843 (select (arr!43254 _values!1337) from!2000) (dynLambda!3651 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1326583 () Bool)

(declare-fun get!21844 (ValueCell!17277 V!53571) V!53571)

(assert (=> b!1326583 (= e!756112 (get!21844 (select (arr!43254 _values!1337) from!2000) (dynLambda!3651 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143037 c!125711) b!1326582))

(assert (= (and d!143037 (not c!125711)) b!1326583))

(assert (=> b!1326582 m!1215589))

(assert (=> b!1326582 m!1215591))

(declare-fun m!1215801 () Bool)

(assert (=> b!1326582 m!1215801))

(assert (=> b!1326583 m!1215589))

(assert (=> b!1326583 m!1215591))

(declare-fun m!1215803 () Bool)

(assert (=> b!1326583 m!1215803))

(assert (=> b!1326481 d!143037))

(declare-fun d!143039 () Bool)

(assert (=> d!143039 (contains!8792 lt!590141 k0!1164)))

(declare-fun lt!590241 () Unit!43634)

(assert (=> d!143039 (= lt!590241 (choose!1960 k0!1164 (select (arr!43253 _keys!1609) from!2000) lt!590140 lt!590141))))

(assert (=> d!143039 (contains!8792 (+!4614 lt!590141 (tuple2!23699 (select (arr!43253 _keys!1609) from!2000) lt!590140)) k0!1164)))

(assert (=> d!143039 (= (lemmaInListMapAfterAddingDiffThenInBefore!224 k0!1164 (select (arr!43253 _keys!1609) from!2000) lt!590140 lt!590141) lt!590241)))

(declare-fun bs!37942 () Bool)

(assert (= bs!37942 d!143039))

(assert (=> bs!37942 m!1215583))

(assert (=> bs!37942 m!1215571))

(declare-fun m!1215805 () Bool)

(assert (=> bs!37942 m!1215805))

(assert (=> bs!37942 m!1215587))

(assert (=> bs!37942 m!1215587))

(declare-fun m!1215807 () Bool)

(assert (=> bs!37942 m!1215807))

(assert (=> b!1326481 d!143039))

(declare-fun b!1326608 () Bool)

(declare-fun e!756132 () ListLongMap!21367)

(assert (=> b!1326608 (= e!756132 (ListLongMap!21368 Nil!30860))))

(declare-fun lt!590260 () ListLongMap!21367)

(declare-fun b!1326609 () Bool)

(declare-fun e!756130 () Bool)

(assert (=> b!1326609 (= e!756130 (= lt!590260 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) defaultEntry!1340)))))

(declare-fun d!143041 () Bool)

(declare-fun e!756127 () Bool)

(assert (=> d!143041 e!756127))

(declare-fun res!880544 () Bool)

(assert (=> d!143041 (=> (not res!880544) (not e!756127))))

(assert (=> d!143041 (= res!880544 (not (contains!8792 lt!590260 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143041 (= lt!590260 e!756132)))

(declare-fun c!125723 () Bool)

(assert (=> d!143041 (= c!125723 (bvsge (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))

(assert (=> d!143041 (validMask!0 mask!2019)))

(assert (=> d!143041 (= (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) lt!590260)))

(declare-fun b!1326610 () Bool)

(declare-fun e!756128 () Bool)

(assert (=> b!1326610 (= e!756128 e!756130)))

(declare-fun c!125721 () Bool)

(assert (=> b!1326610 (= c!125721 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))

(declare-fun b!1326611 () Bool)

(declare-fun lt!590259 () Unit!43634)

(declare-fun lt!590258 () Unit!43634)

(assert (=> b!1326611 (= lt!590259 lt!590258)))

(declare-fun lt!590256 () ListLongMap!21367)

(declare-fun lt!590257 () (_ BitVec 64))

(declare-fun lt!590261 () (_ BitVec 64))

(declare-fun lt!590262 () V!53571)

(assert (=> b!1326611 (not (contains!8792 (+!4614 lt!590256 (tuple2!23699 lt!590257 lt!590262)) lt!590261))))

(declare-fun addStillNotContains!503 (ListLongMap!21367 (_ BitVec 64) V!53571 (_ BitVec 64)) Unit!43634)

(assert (=> b!1326611 (= lt!590258 (addStillNotContains!503 lt!590256 lt!590257 lt!590262 lt!590261))))

(assert (=> b!1326611 (= lt!590261 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1326611 (= lt!590262 (get!21841 (select (arr!43254 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3651 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1326611 (= lt!590257 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(declare-fun call!64738 () ListLongMap!21367)

(assert (=> b!1326611 (= lt!590256 call!64738)))

(declare-fun e!756131 () ListLongMap!21367)

(assert (=> b!1326611 (= e!756131 (+!4614 call!64738 (tuple2!23699 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21841 (select (arr!43254 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3651 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1326612 () Bool)

(assert (=> b!1326612 (= e!756127 e!756128)))

(declare-fun c!125722 () Bool)

(declare-fun e!756129 () Bool)

(assert (=> b!1326612 (= c!125722 e!756129)))

(declare-fun res!880545 () Bool)

(assert (=> b!1326612 (=> (not res!880545) (not e!756129))))

(assert (=> b!1326612 (= res!880545 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))

(declare-fun b!1326613 () Bool)

(assert (=> b!1326613 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))

(assert (=> b!1326613 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43805 _values!1337)))))

(declare-fun e!756133 () Bool)

(declare-fun apply!1065 (ListLongMap!21367 (_ BitVec 64)) V!53571)

(assert (=> b!1326613 (= e!756133 (= (apply!1065 lt!590260 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) (get!21841 (select (arr!43254 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3651 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1326614 () Bool)

(declare-fun isEmpty!1081 (ListLongMap!21367) Bool)

(assert (=> b!1326614 (= e!756130 (isEmpty!1081 lt!590260))))

(declare-fun b!1326615 () Bool)

(assert (=> b!1326615 (= e!756129 (validKeyInArray!0 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1326615 (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))

(declare-fun b!1326616 () Bool)

(assert (=> b!1326616 (= e!756132 e!756131)))

(declare-fun c!125720 () Bool)

(assert (=> b!1326616 (= c!125720 (validKeyInArray!0 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(declare-fun b!1326617 () Bool)

(declare-fun res!880543 () Bool)

(assert (=> b!1326617 (=> (not res!880543) (not e!756127))))

(assert (=> b!1326617 (= res!880543 (not (contains!8792 lt!590260 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1326618 () Bool)

(assert (=> b!1326618 (= e!756128 e!756133)))

(assert (=> b!1326618 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))

(declare-fun res!880542 () Bool)

(assert (=> b!1326618 (= res!880542 (contains!8792 lt!590260 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1326618 (=> (not res!880542) (not e!756133))))

(declare-fun bm!64735 () Bool)

(assert (=> bm!64735 (= call!64738 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) defaultEntry!1340))))

(declare-fun b!1326619 () Bool)

(assert (=> b!1326619 (= e!756131 call!64738)))

(assert (= (and d!143041 c!125723) b!1326608))

(assert (= (and d!143041 (not c!125723)) b!1326616))

(assert (= (and b!1326616 c!125720) b!1326611))

(assert (= (and b!1326616 (not c!125720)) b!1326619))

(assert (= (or b!1326611 b!1326619) bm!64735))

(assert (= (and d!143041 res!880544) b!1326617))

(assert (= (and b!1326617 res!880543) b!1326612))

(assert (= (and b!1326612 res!880545) b!1326615))

(assert (= (and b!1326612 c!125722) b!1326618))

(assert (= (and b!1326612 (not c!125722)) b!1326610))

(assert (= (and b!1326618 res!880542) b!1326613))

(assert (= (and b!1326610 c!125721) b!1326609))

(assert (= (and b!1326610 (not c!125721)) b!1326614))

(declare-fun b_lambda!23825 () Bool)

(assert (=> (not b_lambda!23825) (not b!1326611)))

(assert (=> b!1326611 t!44870))

(declare-fun b_and!49175 () Bool)

(assert (= b_and!49169 (and (=> t!44870 result!24675) b_and!49175)))

(declare-fun b_lambda!23827 () Bool)

(assert (=> (not b_lambda!23827) (not b!1326613)))

(assert (=> b!1326613 t!44870))

(declare-fun b_and!49177 () Bool)

(assert (= b_and!49175 (and (=> t!44870 result!24675) b_and!49177)))

(declare-fun m!1215809 () Bool)

(assert (=> b!1326616 m!1215809))

(assert (=> b!1326616 m!1215809))

(declare-fun m!1215811 () Bool)

(assert (=> b!1326616 m!1215811))

(assert (=> b!1326618 m!1215809))

(assert (=> b!1326618 m!1215809))

(declare-fun m!1215813 () Bool)

(assert (=> b!1326618 m!1215813))

(assert (=> b!1326611 m!1215591))

(declare-fun m!1215815 () Bool)

(assert (=> b!1326611 m!1215815))

(declare-fun m!1215817 () Bool)

(assert (=> b!1326611 m!1215817))

(declare-fun m!1215819 () Bool)

(assert (=> b!1326611 m!1215819))

(assert (=> b!1326611 m!1215819))

(declare-fun m!1215821 () Bool)

(assert (=> b!1326611 m!1215821))

(assert (=> b!1326611 m!1215817))

(assert (=> b!1326611 m!1215591))

(declare-fun m!1215823 () Bool)

(assert (=> b!1326611 m!1215823))

(assert (=> b!1326611 m!1215809))

(declare-fun m!1215825 () Bool)

(assert (=> b!1326611 m!1215825))

(assert (=> b!1326615 m!1215809))

(assert (=> b!1326615 m!1215809))

(assert (=> b!1326615 m!1215811))

(assert (=> b!1326613 m!1215591))

(assert (=> b!1326613 m!1215817))

(assert (=> b!1326613 m!1215817))

(assert (=> b!1326613 m!1215591))

(assert (=> b!1326613 m!1215823))

(assert (=> b!1326613 m!1215809))

(assert (=> b!1326613 m!1215809))

(declare-fun m!1215827 () Bool)

(assert (=> b!1326613 m!1215827))

(declare-fun m!1215829 () Bool)

(assert (=> d!143041 m!1215829))

(assert (=> d!143041 m!1215625))

(declare-fun m!1215831 () Bool)

(assert (=> bm!64735 m!1215831))

(declare-fun m!1215833 () Bool)

(assert (=> b!1326617 m!1215833))

(assert (=> b!1326609 m!1215831))

(declare-fun m!1215835 () Bool)

(assert (=> b!1326614 m!1215835))

(assert (=> b!1326481 d!143041))

(declare-fun d!143043 () Bool)

(declare-fun e!756135 () Bool)

(assert (=> d!143043 e!756135))

(declare-fun res!880546 () Bool)

(assert (=> d!143043 (=> res!880546 e!756135)))

(declare-fun lt!590265 () Bool)

(assert (=> d!143043 (= res!880546 (not lt!590265))))

(declare-fun lt!590263 () Bool)

(assert (=> d!143043 (= lt!590265 lt!590263)))

(declare-fun lt!590266 () Unit!43634)

(declare-fun e!756134 () Unit!43634)

(assert (=> d!143043 (= lt!590266 e!756134)))

(declare-fun c!125724 () Bool)

(assert (=> d!143043 (= c!125724 lt!590263)))

(assert (=> d!143043 (= lt!590263 (containsKey!733 (toList!10699 lt!590135) k0!1164))))

(assert (=> d!143043 (= (contains!8792 lt!590135 k0!1164) lt!590265)))

(declare-fun b!1326620 () Bool)

(declare-fun lt!590264 () Unit!43634)

(assert (=> b!1326620 (= e!756134 lt!590264)))

(assert (=> b!1326620 (= lt!590264 (lemmaContainsKeyImpliesGetValueByKeyDefined!478 (toList!10699 lt!590135) k0!1164))))

(assert (=> b!1326620 (isDefined!518 (getValueByKey!715 (toList!10699 lt!590135) k0!1164))))

(declare-fun b!1326621 () Bool)

(declare-fun Unit!43642 () Unit!43634)

(assert (=> b!1326621 (= e!756134 Unit!43642)))

(declare-fun b!1326622 () Bool)

(assert (=> b!1326622 (= e!756135 (isDefined!518 (getValueByKey!715 (toList!10699 lt!590135) k0!1164)))))

(assert (= (and d!143043 c!125724) b!1326620))

(assert (= (and d!143043 (not c!125724)) b!1326621))

(assert (= (and d!143043 (not res!880546)) b!1326622))

(declare-fun m!1215837 () Bool)

(assert (=> d!143043 m!1215837))

(declare-fun m!1215839 () Bool)

(assert (=> b!1326620 m!1215839))

(declare-fun m!1215841 () Bool)

(assert (=> b!1326620 m!1215841))

(assert (=> b!1326620 m!1215841))

(declare-fun m!1215843 () Bool)

(assert (=> b!1326620 m!1215843))

(assert (=> b!1326622 m!1215841))

(assert (=> b!1326622 m!1215841))

(assert (=> b!1326622 m!1215843))

(assert (=> b!1326481 d!143043))

(declare-fun d!143045 () Bool)

(declare-fun e!756137 () Bool)

(assert (=> d!143045 e!756137))

(declare-fun res!880547 () Bool)

(assert (=> d!143045 (=> res!880547 e!756137)))

(declare-fun lt!590269 () Bool)

(assert (=> d!143045 (= res!880547 (not lt!590269))))

(declare-fun lt!590267 () Bool)

(assert (=> d!143045 (= lt!590269 lt!590267)))

(declare-fun lt!590270 () Unit!43634)

(declare-fun e!756136 () Unit!43634)

(assert (=> d!143045 (= lt!590270 e!756136)))

(declare-fun c!125725 () Bool)

(assert (=> d!143045 (= c!125725 lt!590267)))

(assert (=> d!143045 (= lt!590267 (containsKey!733 (toList!10699 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))

(assert (=> d!143045 (= (contains!8792 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) k0!1164) lt!590269)))

(declare-fun b!1326623 () Bool)

(declare-fun lt!590268 () Unit!43634)

(assert (=> b!1326623 (= e!756136 lt!590268)))

(assert (=> b!1326623 (= lt!590268 (lemmaContainsKeyImpliesGetValueByKeyDefined!478 (toList!10699 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))

(assert (=> b!1326623 (isDefined!518 (getValueByKey!715 (toList!10699 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164))))

(declare-fun b!1326624 () Bool)

(declare-fun Unit!43643 () Unit!43634)

(assert (=> b!1326624 (= e!756136 Unit!43643)))

(declare-fun b!1326625 () Bool)

(assert (=> b!1326625 (= e!756137 (isDefined!518 (getValueByKey!715 (toList!10699 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) k0!1164)))))

(assert (= (and d!143045 c!125725) b!1326623))

(assert (= (and d!143045 (not c!125725)) b!1326624))

(assert (= (and d!143045 (not res!880547)) b!1326625))

(declare-fun m!1215845 () Bool)

(assert (=> d!143045 m!1215845))

(declare-fun m!1215847 () Bool)

(assert (=> b!1326623 m!1215847))

(declare-fun m!1215849 () Bool)

(assert (=> b!1326623 m!1215849))

(assert (=> b!1326623 m!1215849))

(declare-fun m!1215851 () Bool)

(assert (=> b!1326623 m!1215851))

(assert (=> b!1326625 m!1215849))

(assert (=> b!1326625 m!1215849))

(assert (=> b!1326625 m!1215851))

(assert (=> b!1326481 d!143045))

(declare-fun b!1326668 () Bool)

(declare-fun e!756172 () ListLongMap!21367)

(declare-fun call!64754 () ListLongMap!21367)

(assert (=> b!1326668 (= e!756172 (+!4614 call!64754 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(declare-fun call!64758 () ListLongMap!21367)

(declare-fun bm!64750 () Bool)

(assert (=> bm!64750 (= call!64758 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1326669 () Bool)

(declare-fun e!756176 () Bool)

(declare-fun e!756174 () Bool)

(assert (=> b!1326669 (= e!756176 e!756174)))

(declare-fun res!880573 () Bool)

(declare-fun call!64755 () Bool)

(assert (=> b!1326669 (= res!880573 call!64755)))

(assert (=> b!1326669 (=> (not res!880573) (not e!756174))))

(declare-fun d!143047 () Bool)

(declare-fun e!756171 () Bool)

(assert (=> d!143047 e!756171))

(declare-fun res!880570 () Bool)

(assert (=> d!143047 (=> (not res!880570) (not e!756171))))

(assert (=> d!143047 (= res!880570 (or (bvsge (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))))

(declare-fun lt!590318 () ListLongMap!21367)

(declare-fun lt!590319 () ListLongMap!21367)

(assert (=> d!143047 (= lt!590318 lt!590319)))

(declare-fun lt!590329 () Unit!43634)

(declare-fun e!756169 () Unit!43634)

(assert (=> d!143047 (= lt!590329 e!756169)))

(declare-fun c!125738 () Bool)

(declare-fun e!756175 () Bool)

(assert (=> d!143047 (= c!125738 e!756175)))

(declare-fun res!880574 () Bool)

(assert (=> d!143047 (=> (not res!880574) (not e!756175))))

(assert (=> d!143047 (= res!880574 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))

(assert (=> d!143047 (= lt!590319 e!756172)))

(declare-fun c!125741 () Bool)

(assert (=> d!143047 (= c!125741 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143047 (validMask!0 mask!2019)))

(assert (=> d!143047 (= (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) lt!590318)))

(declare-fun b!1326670 () Bool)

(declare-fun e!756170 () ListLongMap!21367)

(declare-fun call!64756 () ListLongMap!21367)

(assert (=> b!1326670 (= e!756170 call!64756)))

(declare-fun b!1326671 () Bool)

(declare-fun e!756173 () Bool)

(assert (=> b!1326671 (= e!756173 (= (apply!1065 lt!590318 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1279))))

(declare-fun b!1326672 () Bool)

(declare-fun e!756166 () Bool)

(declare-fun call!64753 () Bool)

(assert (=> b!1326672 (= e!756166 (not call!64753))))

(declare-fun b!1326673 () Bool)

(declare-fun res!880568 () Bool)

(assert (=> b!1326673 (=> (not res!880568) (not e!756171))))

(assert (=> b!1326673 (= res!880568 e!756176)))

(declare-fun c!125739 () Bool)

(assert (=> b!1326673 (= c!125739 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!64751 () Bool)

(declare-fun call!64757 () ListLongMap!21367)

(assert (=> bm!64751 (= call!64757 call!64758)))

(declare-fun b!1326674 () Bool)

(assert (=> b!1326674 (= e!756175 (validKeyInArray!0 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(declare-fun bm!64752 () Bool)

(assert (=> bm!64752 (= call!64755 (contains!8792 lt!590318 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64753 () Bool)

(assert (=> bm!64753 (= call!64753 (contains!8792 lt!590318 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1326675 () Bool)

(declare-fun e!756164 () Bool)

(declare-fun e!756165 () Bool)

(assert (=> b!1326675 (= e!756164 e!756165)))

(declare-fun res!880566 () Bool)

(assert (=> b!1326675 (=> (not res!880566) (not e!756165))))

(assert (=> b!1326675 (= res!880566 (contains!8792 lt!590318 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1326675 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))

(declare-fun b!1326676 () Bool)

(assert (=> b!1326676 (= e!756166 e!756173)))

(declare-fun res!880571 () Bool)

(assert (=> b!1326676 (= res!880571 call!64753)))

(assert (=> b!1326676 (=> (not res!880571) (not e!756173))))

(declare-fun b!1326677 () Bool)

(declare-fun call!64759 () ListLongMap!21367)

(assert (=> b!1326677 (= e!756170 call!64759)))

(declare-fun b!1326678 () Bool)

(assert (=> b!1326678 (= e!756174 (= (apply!1065 lt!590318 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1279))))

(declare-fun b!1326679 () Bool)

(assert (=> b!1326679 (= e!756165 (= (apply!1065 lt!590318 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) (get!21841 (select (arr!43254 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3651 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1326679 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43805 _values!1337)))))

(assert (=> b!1326679 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))

(declare-fun c!125740 () Bool)

(declare-fun bm!64754 () Bool)

(assert (=> bm!64754 (= call!64754 (+!4614 (ite c!125741 call!64758 (ite c!125740 call!64757 call!64756)) (ite (or c!125741 c!125740) (tuple2!23699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun b!1326680 () Bool)

(declare-fun lt!590335 () Unit!43634)

(assert (=> b!1326680 (= e!756169 lt!590335)))

(declare-fun lt!590332 () ListLongMap!21367)

(assert (=> b!1326680 (= lt!590332 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun lt!590334 () (_ BitVec 64))

(assert (=> b!1326680 (= lt!590334 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590331 () (_ BitVec 64))

(assert (=> b!1326680 (= lt!590331 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(declare-fun lt!590320 () Unit!43634)

(assert (=> b!1326680 (= lt!590320 (addStillContains!1171 lt!590332 lt!590334 zeroValue!1279 lt!590331))))

(assert (=> b!1326680 (contains!8792 (+!4614 lt!590332 (tuple2!23699 lt!590334 zeroValue!1279)) lt!590331)))

(declare-fun lt!590328 () Unit!43634)

(assert (=> b!1326680 (= lt!590328 lt!590320)))

(declare-fun lt!590317 () ListLongMap!21367)

(assert (=> b!1326680 (= lt!590317 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun lt!590323 () (_ BitVec 64))

(assert (=> b!1326680 (= lt!590323 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590330 () (_ BitVec 64))

(assert (=> b!1326680 (= lt!590330 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(declare-fun lt!590336 () Unit!43634)

(declare-fun addApplyDifferent!568 (ListLongMap!21367 (_ BitVec 64) V!53571 (_ BitVec 64)) Unit!43634)

(assert (=> b!1326680 (= lt!590336 (addApplyDifferent!568 lt!590317 lt!590323 minValue!1279 lt!590330))))

(assert (=> b!1326680 (= (apply!1065 (+!4614 lt!590317 (tuple2!23699 lt!590323 minValue!1279)) lt!590330) (apply!1065 lt!590317 lt!590330))))

(declare-fun lt!590321 () Unit!43634)

(assert (=> b!1326680 (= lt!590321 lt!590336)))

(declare-fun lt!590322 () ListLongMap!21367)

(assert (=> b!1326680 (= lt!590322 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun lt!590325 () (_ BitVec 64))

(assert (=> b!1326680 (= lt!590325 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590333 () (_ BitVec 64))

(assert (=> b!1326680 (= lt!590333 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(declare-fun lt!590327 () Unit!43634)

(assert (=> b!1326680 (= lt!590327 (addApplyDifferent!568 lt!590322 lt!590325 zeroValue!1279 lt!590333))))

(assert (=> b!1326680 (= (apply!1065 (+!4614 lt!590322 (tuple2!23699 lt!590325 zeroValue!1279)) lt!590333) (apply!1065 lt!590322 lt!590333))))

(declare-fun lt!590315 () Unit!43634)

(assert (=> b!1326680 (= lt!590315 lt!590327)))

(declare-fun lt!590316 () ListLongMap!21367)

(assert (=> b!1326680 (= lt!590316 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun lt!590324 () (_ BitVec 64))

(assert (=> b!1326680 (= lt!590324 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590326 () (_ BitVec 64))

(assert (=> b!1326680 (= lt!590326 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(assert (=> b!1326680 (= lt!590335 (addApplyDifferent!568 lt!590316 lt!590324 minValue!1279 lt!590326))))

(assert (=> b!1326680 (= (apply!1065 (+!4614 lt!590316 (tuple2!23699 lt!590324 minValue!1279)) lt!590326) (apply!1065 lt!590316 lt!590326))))

(declare-fun b!1326681 () Bool)

(declare-fun e!756168 () ListLongMap!21367)

(assert (=> b!1326681 (= e!756172 e!756168)))

(assert (=> b!1326681 (= c!125740 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1326682 () Bool)

(declare-fun Unit!43644 () Unit!43634)

(assert (=> b!1326682 (= e!756169 Unit!43644)))

(declare-fun b!1326683 () Bool)

(assert (=> b!1326683 (= e!756171 e!756166)))

(declare-fun c!125743 () Bool)

(assert (=> b!1326683 (= c!125743 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1326684 () Bool)

(declare-fun e!756167 () Bool)

(assert (=> b!1326684 (= e!756167 (validKeyInArray!0 (select (arr!43253 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(declare-fun b!1326685 () Bool)

(assert (=> b!1326685 (= e!756176 (not call!64755))))

(declare-fun bm!64755 () Bool)

(assert (=> bm!64755 (= call!64756 call!64757)))

(declare-fun b!1326686 () Bool)

(assert (=> b!1326686 (= e!756168 call!64759)))

(declare-fun b!1326687 () Bool)

(declare-fun res!880569 () Bool)

(assert (=> b!1326687 (=> (not res!880569) (not e!756171))))

(assert (=> b!1326687 (= res!880569 e!756164)))

(declare-fun res!880572 () Bool)

(assert (=> b!1326687 (=> res!880572 e!756164)))

(assert (=> b!1326687 (= res!880572 (not e!756167))))

(declare-fun res!880567 () Bool)

(assert (=> b!1326687 (=> (not res!880567) (not e!756167))))

(assert (=> b!1326687 (= res!880567 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43804 _keys!1609)))))

(declare-fun bm!64756 () Bool)

(assert (=> bm!64756 (= call!64759 call!64754)))

(declare-fun b!1326688 () Bool)

(declare-fun c!125742 () Bool)

(assert (=> b!1326688 (= c!125742 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1326688 (= e!756168 e!756170)))

(assert (= (and d!143047 c!125741) b!1326668))

(assert (= (and d!143047 (not c!125741)) b!1326681))

(assert (= (and b!1326681 c!125740) b!1326686))

(assert (= (and b!1326681 (not c!125740)) b!1326688))

(assert (= (and b!1326688 c!125742) b!1326677))

(assert (= (and b!1326688 (not c!125742)) b!1326670))

(assert (= (or b!1326677 b!1326670) bm!64755))

(assert (= (or b!1326686 bm!64755) bm!64751))

(assert (= (or b!1326686 b!1326677) bm!64756))

(assert (= (or b!1326668 bm!64751) bm!64750))

(assert (= (or b!1326668 bm!64756) bm!64754))

(assert (= (and d!143047 res!880574) b!1326674))

(assert (= (and d!143047 c!125738) b!1326680))

(assert (= (and d!143047 (not c!125738)) b!1326682))

(assert (= (and d!143047 res!880570) b!1326687))

(assert (= (and b!1326687 res!880567) b!1326684))

(assert (= (and b!1326687 (not res!880572)) b!1326675))

(assert (= (and b!1326675 res!880566) b!1326679))

(assert (= (and b!1326687 res!880569) b!1326673))

(assert (= (and b!1326673 c!125739) b!1326669))

(assert (= (and b!1326673 (not c!125739)) b!1326685))

(assert (= (and b!1326669 res!880573) b!1326678))

(assert (= (or b!1326669 b!1326685) bm!64752))

(assert (= (and b!1326673 res!880568) b!1326683))

(assert (= (and b!1326683 c!125743) b!1326676))

(assert (= (and b!1326683 (not c!125743)) b!1326672))

(assert (= (and b!1326676 res!880571) b!1326671))

(assert (= (or b!1326676 b!1326672) bm!64753))

(declare-fun b_lambda!23829 () Bool)

(assert (=> (not b_lambda!23829) (not b!1326679)))

(assert (=> b!1326679 t!44870))

(declare-fun b_and!49179 () Bool)

(assert (= b_and!49177 (and (=> t!44870 result!24675) b_and!49179)))

(declare-fun m!1215853 () Bool)

(assert (=> bm!64753 m!1215853))

(declare-fun m!1215855 () Bool)

(assert (=> b!1326668 m!1215855))

(assert (=> b!1326684 m!1215809))

(assert (=> b!1326684 m!1215809))

(assert (=> b!1326684 m!1215811))

(declare-fun m!1215857 () Bool)

(assert (=> b!1326678 m!1215857))

(assert (=> d!143047 m!1215625))

(declare-fun m!1215859 () Bool)

(assert (=> bm!64752 m!1215859))

(declare-fun m!1215861 () Bool)

(assert (=> b!1326671 m!1215861))

(assert (=> b!1326679 m!1215817))

(assert (=> b!1326679 m!1215591))

(assert (=> b!1326679 m!1215823))

(assert (=> b!1326679 m!1215809))

(assert (=> b!1326679 m!1215591))

(assert (=> b!1326679 m!1215809))

(declare-fun m!1215863 () Bool)

(assert (=> b!1326679 m!1215863))

(assert (=> b!1326679 m!1215817))

(declare-fun m!1215865 () Bool)

(assert (=> bm!64754 m!1215865))

(assert (=> b!1326680 m!1215809))

(declare-fun m!1215867 () Bool)

(assert (=> b!1326680 m!1215867))

(declare-fun m!1215869 () Bool)

(assert (=> b!1326680 m!1215869))

(declare-fun m!1215871 () Bool)

(assert (=> b!1326680 m!1215871))

(assert (=> b!1326680 m!1215603))

(declare-fun m!1215873 () Bool)

(assert (=> b!1326680 m!1215873))

(declare-fun m!1215875 () Bool)

(assert (=> b!1326680 m!1215875))

(declare-fun m!1215877 () Bool)

(assert (=> b!1326680 m!1215877))

(declare-fun m!1215879 () Bool)

(assert (=> b!1326680 m!1215879))

(assert (=> b!1326680 m!1215875))

(declare-fun m!1215881 () Bool)

(assert (=> b!1326680 m!1215881))

(declare-fun m!1215883 () Bool)

(assert (=> b!1326680 m!1215883))

(declare-fun m!1215885 () Bool)

(assert (=> b!1326680 m!1215885))

(declare-fun m!1215887 () Bool)

(assert (=> b!1326680 m!1215887))

(assert (=> b!1326680 m!1215885))

(declare-fun m!1215889 () Bool)

(assert (=> b!1326680 m!1215889))

(declare-fun m!1215891 () Bool)

(assert (=> b!1326680 m!1215891))

(declare-fun m!1215893 () Bool)

(assert (=> b!1326680 m!1215893))

(assert (=> b!1326680 m!1215891))

(assert (=> b!1326680 m!1215871))

(declare-fun m!1215895 () Bool)

(assert (=> b!1326680 m!1215895))

(assert (=> bm!64750 m!1215603))

(assert (=> b!1326674 m!1215809))

(assert (=> b!1326674 m!1215809))

(assert (=> b!1326674 m!1215811))

(assert (=> b!1326675 m!1215809))

(assert (=> b!1326675 m!1215809))

(declare-fun m!1215897 () Bool)

(assert (=> b!1326675 m!1215897))

(assert (=> b!1326481 d!143047))

(declare-fun d!143049 () Bool)

(assert (=> d!143049 (contains!8792 (+!4614 lt!590141 (tuple2!23699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) k0!1164)))

(declare-fun lt!590337 () Unit!43634)

(assert (=> d!143049 (= lt!590337 (choose!1959 lt!590141 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> d!143049 (contains!8792 lt!590141 k0!1164)))

(assert (=> d!143049 (= (addStillContains!1171 lt!590141 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164) lt!590337)))

(declare-fun bs!37943 () Bool)

(assert (= bs!37943 d!143049))

(declare-fun m!1215899 () Bool)

(assert (=> bs!37943 m!1215899))

(assert (=> bs!37943 m!1215899))

(declare-fun m!1215901 () Bool)

(assert (=> bs!37943 m!1215901))

(declare-fun m!1215903 () Bool)

(assert (=> bs!37943 m!1215903))

(assert (=> bs!37943 m!1215583))

(assert (=> b!1326481 d!143049))

(declare-fun d!143051 () Bool)

(assert (=> d!143051 (= (validKeyInArray!0 (select (arr!43253 _keys!1609) from!2000)) (and (not (= (select (arr!43253 _keys!1609) from!2000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43253 _keys!1609) from!2000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1326479 d!143051))

(declare-fun d!143053 () Bool)

(declare-fun e!756178 () Bool)

(assert (=> d!143053 e!756178))

(declare-fun res!880575 () Bool)

(assert (=> d!143053 (=> res!880575 e!756178)))

(declare-fun lt!590340 () Bool)

(assert (=> d!143053 (= res!880575 (not lt!590340))))

(declare-fun lt!590338 () Bool)

(assert (=> d!143053 (= lt!590340 lt!590338)))

(declare-fun lt!590341 () Unit!43634)

(declare-fun e!756177 () Unit!43634)

(assert (=> d!143053 (= lt!590341 e!756177)))

(declare-fun c!125744 () Bool)

(assert (=> d!143053 (= c!125744 lt!590338)))

(assert (=> d!143053 (= lt!590338 (containsKey!733 (toList!10699 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(assert (=> d!143053 (= (contains!8792 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164) lt!590340)))

(declare-fun b!1326689 () Bool)

(declare-fun lt!590339 () Unit!43634)

(assert (=> b!1326689 (= e!756177 lt!590339)))

(assert (=> b!1326689 (= lt!590339 (lemmaContainsKeyImpliesGetValueByKeyDefined!478 (toList!10699 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(assert (=> b!1326689 (isDefined!518 (getValueByKey!715 (toList!10699 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(declare-fun b!1326690 () Bool)

(declare-fun Unit!43645 () Unit!43634)

(assert (=> b!1326690 (= e!756177 Unit!43645)))

(declare-fun b!1326691 () Bool)

(assert (=> b!1326691 (= e!756178 (isDefined!518 (getValueByKey!715 (toList!10699 (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164)))))

(assert (= (and d!143053 c!125744) b!1326689))

(assert (= (and d!143053 (not c!125744)) b!1326690))

(assert (= (and d!143053 (not res!880575)) b!1326691))

(declare-fun m!1215905 () Bool)

(assert (=> d!143053 m!1215905))

(declare-fun m!1215907 () Bool)

(assert (=> b!1326689 m!1215907))

(declare-fun m!1215909 () Bool)

(assert (=> b!1326689 m!1215909))

(assert (=> b!1326689 m!1215909))

(declare-fun m!1215911 () Bool)

(assert (=> b!1326689 m!1215911))

(assert (=> b!1326691 m!1215909))

(assert (=> b!1326691 m!1215909))

(assert (=> b!1326691 m!1215911))

(assert (=> b!1326482 d!143053))

(declare-fun b!1326692 () Bool)

(declare-fun e!756187 () ListLongMap!21367)

(declare-fun call!64761 () ListLongMap!21367)

(assert (=> b!1326692 (= e!756187 (+!4614 call!64761 (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(declare-fun bm!64757 () Bool)

(declare-fun call!64765 () ListLongMap!21367)

(assert (=> bm!64757 (= call!64765 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun b!1326693 () Bool)

(declare-fun e!756191 () Bool)

(declare-fun e!756189 () Bool)

(assert (=> b!1326693 (= e!756191 e!756189)))

(declare-fun res!880583 () Bool)

(declare-fun call!64762 () Bool)

(assert (=> b!1326693 (= res!880583 call!64762)))

(assert (=> b!1326693 (=> (not res!880583) (not e!756189))))

(declare-fun d!143055 () Bool)

(declare-fun e!756186 () Bool)

(assert (=> d!143055 e!756186))

(declare-fun res!880580 () Bool)

(assert (=> d!143055 (=> (not res!880580) (not e!756186))))

(assert (=> d!143055 (= res!880580 (or (bvsge from!2000 (size!43804 _keys!1609)) (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43804 _keys!1609)))))))

(declare-fun lt!590345 () ListLongMap!21367)

(declare-fun lt!590346 () ListLongMap!21367)

(assert (=> d!143055 (= lt!590345 lt!590346)))

(declare-fun lt!590356 () Unit!43634)

(declare-fun e!756184 () Unit!43634)

(assert (=> d!143055 (= lt!590356 e!756184)))

(declare-fun c!125745 () Bool)

(declare-fun e!756190 () Bool)

(assert (=> d!143055 (= c!125745 e!756190)))

(declare-fun res!880584 () Bool)

(assert (=> d!143055 (=> (not res!880584) (not e!756190))))

(assert (=> d!143055 (= res!880584 (bvslt from!2000 (size!43804 _keys!1609)))))

(assert (=> d!143055 (= lt!590346 e!756187)))

(declare-fun c!125748 () Bool)

(assert (=> d!143055 (= c!125748 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143055 (validMask!0 mask!2019)))

(assert (=> d!143055 (= (getCurrentListMap!5631 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) lt!590345)))

(declare-fun b!1326694 () Bool)

(declare-fun e!756185 () ListLongMap!21367)

(declare-fun call!64763 () ListLongMap!21367)

(assert (=> b!1326694 (= e!756185 call!64763)))

(declare-fun b!1326695 () Bool)

(declare-fun e!756188 () Bool)

(assert (=> b!1326695 (= e!756188 (= (apply!1065 lt!590345 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1279))))

(declare-fun b!1326696 () Bool)

(declare-fun e!756181 () Bool)

(declare-fun call!64760 () Bool)

(assert (=> b!1326696 (= e!756181 (not call!64760))))

(declare-fun b!1326697 () Bool)

(declare-fun res!880578 () Bool)

(assert (=> b!1326697 (=> (not res!880578) (not e!756186))))

(assert (=> b!1326697 (= res!880578 e!756191)))

(declare-fun c!125746 () Bool)

(assert (=> b!1326697 (= c!125746 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!64758 () Bool)

(declare-fun call!64764 () ListLongMap!21367)

(assert (=> bm!64758 (= call!64764 call!64765)))

(declare-fun b!1326698 () Bool)

(assert (=> b!1326698 (= e!756190 (validKeyInArray!0 (select (arr!43253 _keys!1609) from!2000)))))

(declare-fun bm!64759 () Bool)

(assert (=> bm!64759 (= call!64762 (contains!8792 lt!590345 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64760 () Bool)

(assert (=> bm!64760 (= call!64760 (contains!8792 lt!590345 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1326699 () Bool)

(declare-fun e!756179 () Bool)

(declare-fun e!756180 () Bool)

(assert (=> b!1326699 (= e!756179 e!756180)))

(declare-fun res!880576 () Bool)

(assert (=> b!1326699 (=> (not res!880576) (not e!756180))))

(assert (=> b!1326699 (= res!880576 (contains!8792 lt!590345 (select (arr!43253 _keys!1609) from!2000)))))

(assert (=> b!1326699 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43804 _keys!1609)))))

(declare-fun b!1326700 () Bool)

(assert (=> b!1326700 (= e!756181 e!756188)))

(declare-fun res!880581 () Bool)

(assert (=> b!1326700 (= res!880581 call!64760)))

(assert (=> b!1326700 (=> (not res!880581) (not e!756188))))

(declare-fun b!1326701 () Bool)

(declare-fun call!64766 () ListLongMap!21367)

(assert (=> b!1326701 (= e!756185 call!64766)))

(declare-fun b!1326702 () Bool)

(assert (=> b!1326702 (= e!756189 (= (apply!1065 lt!590345 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1279))))

(declare-fun b!1326703 () Bool)

(assert (=> b!1326703 (= e!756180 (= (apply!1065 lt!590345 (select (arr!43253 _keys!1609) from!2000)) (get!21841 (select (arr!43254 _values!1337) from!2000) (dynLambda!3651 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1326703 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43805 _values!1337)))))

(assert (=> b!1326703 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43804 _keys!1609)))))

(declare-fun bm!64761 () Bool)

(declare-fun c!125747 () Bool)

(assert (=> bm!64761 (= call!64761 (+!4614 (ite c!125748 call!64765 (ite c!125747 call!64764 call!64763)) (ite (or c!125748 c!125747) (tuple2!23699 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23699 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun b!1326704 () Bool)

(declare-fun lt!590362 () Unit!43634)

(assert (=> b!1326704 (= e!756184 lt!590362)))

(declare-fun lt!590359 () ListLongMap!21367)

(assert (=> b!1326704 (= lt!590359 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!590361 () (_ BitVec 64))

(assert (=> b!1326704 (= lt!590361 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590358 () (_ BitVec 64))

(assert (=> b!1326704 (= lt!590358 (select (arr!43253 _keys!1609) from!2000))))

(declare-fun lt!590347 () Unit!43634)

(assert (=> b!1326704 (= lt!590347 (addStillContains!1171 lt!590359 lt!590361 zeroValue!1279 lt!590358))))

(assert (=> b!1326704 (contains!8792 (+!4614 lt!590359 (tuple2!23699 lt!590361 zeroValue!1279)) lt!590358)))

(declare-fun lt!590355 () Unit!43634)

(assert (=> b!1326704 (= lt!590355 lt!590347)))

(declare-fun lt!590344 () ListLongMap!21367)

(assert (=> b!1326704 (= lt!590344 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!590350 () (_ BitVec 64))

(assert (=> b!1326704 (= lt!590350 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590357 () (_ BitVec 64))

(assert (=> b!1326704 (= lt!590357 (select (arr!43253 _keys!1609) from!2000))))

(declare-fun lt!590363 () Unit!43634)

(assert (=> b!1326704 (= lt!590363 (addApplyDifferent!568 lt!590344 lt!590350 minValue!1279 lt!590357))))

(assert (=> b!1326704 (= (apply!1065 (+!4614 lt!590344 (tuple2!23699 lt!590350 minValue!1279)) lt!590357) (apply!1065 lt!590344 lt!590357))))

(declare-fun lt!590348 () Unit!43634)

(assert (=> b!1326704 (= lt!590348 lt!590363)))

(declare-fun lt!590349 () ListLongMap!21367)

(assert (=> b!1326704 (= lt!590349 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!590352 () (_ BitVec 64))

(assert (=> b!1326704 (= lt!590352 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590360 () (_ BitVec 64))

(assert (=> b!1326704 (= lt!590360 (select (arr!43253 _keys!1609) from!2000))))

(declare-fun lt!590354 () Unit!43634)

(assert (=> b!1326704 (= lt!590354 (addApplyDifferent!568 lt!590349 lt!590352 zeroValue!1279 lt!590360))))

(assert (=> b!1326704 (= (apply!1065 (+!4614 lt!590349 (tuple2!23699 lt!590352 zeroValue!1279)) lt!590360) (apply!1065 lt!590349 lt!590360))))

(declare-fun lt!590342 () Unit!43634)

(assert (=> b!1326704 (= lt!590342 lt!590354)))

(declare-fun lt!590343 () ListLongMap!21367)

(assert (=> b!1326704 (= lt!590343 (getCurrentListMapNoExtraKeys!6332 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!590351 () (_ BitVec 64))

(assert (=> b!1326704 (= lt!590351 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!590353 () (_ BitVec 64))

(assert (=> b!1326704 (= lt!590353 (select (arr!43253 _keys!1609) from!2000))))

(assert (=> b!1326704 (= lt!590362 (addApplyDifferent!568 lt!590343 lt!590351 minValue!1279 lt!590353))))

(assert (=> b!1326704 (= (apply!1065 (+!4614 lt!590343 (tuple2!23699 lt!590351 minValue!1279)) lt!590353) (apply!1065 lt!590343 lt!590353))))

(declare-fun b!1326705 () Bool)

(declare-fun e!756183 () ListLongMap!21367)

(assert (=> b!1326705 (= e!756187 e!756183)))

(assert (=> b!1326705 (= c!125747 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1326706 () Bool)

(declare-fun Unit!43646 () Unit!43634)

(assert (=> b!1326706 (= e!756184 Unit!43646)))

(declare-fun b!1326707 () Bool)

(assert (=> b!1326707 (= e!756186 e!756181)))

(declare-fun c!125750 () Bool)

(assert (=> b!1326707 (= c!125750 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1326708 () Bool)

(declare-fun e!756182 () Bool)

(assert (=> b!1326708 (= e!756182 (validKeyInArray!0 (select (arr!43253 _keys!1609) from!2000)))))

(declare-fun b!1326709 () Bool)

(assert (=> b!1326709 (= e!756191 (not call!64762))))

(declare-fun bm!64762 () Bool)

(assert (=> bm!64762 (= call!64763 call!64764)))

(declare-fun b!1326710 () Bool)

(assert (=> b!1326710 (= e!756183 call!64766)))

(declare-fun b!1326711 () Bool)

(declare-fun res!880579 () Bool)

(assert (=> b!1326711 (=> (not res!880579) (not e!756186))))

(assert (=> b!1326711 (= res!880579 e!756179)))

(declare-fun res!880582 () Bool)

(assert (=> b!1326711 (=> res!880582 e!756179)))

(assert (=> b!1326711 (= res!880582 (not e!756182))))

(declare-fun res!880577 () Bool)

(assert (=> b!1326711 (=> (not res!880577) (not e!756182))))

(assert (=> b!1326711 (= res!880577 (bvslt from!2000 (size!43804 _keys!1609)))))

(declare-fun bm!64763 () Bool)

(assert (=> bm!64763 (= call!64766 call!64761)))

(declare-fun b!1326712 () Bool)

(declare-fun c!125749 () Bool)

(assert (=> b!1326712 (= c!125749 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1326712 (= e!756183 e!756185)))

(assert (= (and d!143055 c!125748) b!1326692))

(assert (= (and d!143055 (not c!125748)) b!1326705))

(assert (= (and b!1326705 c!125747) b!1326710))

(assert (= (and b!1326705 (not c!125747)) b!1326712))

(assert (= (and b!1326712 c!125749) b!1326701))

(assert (= (and b!1326712 (not c!125749)) b!1326694))

(assert (= (or b!1326701 b!1326694) bm!64762))

(assert (= (or b!1326710 bm!64762) bm!64758))

(assert (= (or b!1326710 b!1326701) bm!64763))

(assert (= (or b!1326692 bm!64758) bm!64757))

(assert (= (or b!1326692 bm!64763) bm!64761))

(assert (= (and d!143055 res!880584) b!1326698))

(assert (= (and d!143055 c!125745) b!1326704))

(assert (= (and d!143055 (not c!125745)) b!1326706))

(assert (= (and d!143055 res!880580) b!1326711))

(assert (= (and b!1326711 res!880577) b!1326708))

(assert (= (and b!1326711 (not res!880582)) b!1326699))

(assert (= (and b!1326699 res!880576) b!1326703))

(assert (= (and b!1326711 res!880579) b!1326697))

(assert (= (and b!1326697 c!125746) b!1326693))

(assert (= (and b!1326697 (not c!125746)) b!1326709))

(assert (= (and b!1326693 res!880583) b!1326702))

(assert (= (or b!1326693 b!1326709) bm!64759))

(assert (= (and b!1326697 res!880578) b!1326707))

(assert (= (and b!1326707 c!125750) b!1326700))

(assert (= (and b!1326707 (not c!125750)) b!1326696))

(assert (= (and b!1326700 res!880581) b!1326695))

(assert (= (or b!1326700 b!1326696) bm!64760))

(declare-fun b_lambda!23831 () Bool)

(assert (=> (not b_lambda!23831) (not b!1326703)))

(assert (=> b!1326703 t!44870))

(declare-fun b_and!49181 () Bool)

(assert (= b_and!49179 (and (=> t!44870 result!24675) b_and!49181)))

(declare-fun m!1215913 () Bool)

(assert (=> bm!64760 m!1215913))

(declare-fun m!1215915 () Bool)

(assert (=> b!1326692 m!1215915))

(assert (=> b!1326708 m!1215571))

(assert (=> b!1326708 m!1215571))

(assert (=> b!1326708 m!1215573))

(declare-fun m!1215917 () Bool)

(assert (=> b!1326702 m!1215917))

(assert (=> d!143055 m!1215625))

(declare-fun m!1215919 () Bool)

(assert (=> bm!64759 m!1215919))

(declare-fun m!1215921 () Bool)

(assert (=> b!1326695 m!1215921))

(assert (=> b!1326703 m!1215589))

(assert (=> b!1326703 m!1215591))

(assert (=> b!1326703 m!1215593))

(assert (=> b!1326703 m!1215571))

(assert (=> b!1326703 m!1215591))

(assert (=> b!1326703 m!1215571))

(declare-fun m!1215923 () Bool)

(assert (=> b!1326703 m!1215923))

(assert (=> b!1326703 m!1215589))

(declare-fun m!1215925 () Bool)

(assert (=> bm!64761 m!1215925))

(assert (=> b!1326704 m!1215571))

(declare-fun m!1215927 () Bool)

(assert (=> b!1326704 m!1215927))

(declare-fun m!1215929 () Bool)

(assert (=> b!1326704 m!1215929))

(declare-fun m!1215931 () Bool)

(assert (=> b!1326704 m!1215931))

(declare-fun m!1215933 () Bool)

(assert (=> b!1326704 m!1215933))

(declare-fun m!1215935 () Bool)

(assert (=> b!1326704 m!1215935))

(declare-fun m!1215937 () Bool)

(assert (=> b!1326704 m!1215937))

(declare-fun m!1215939 () Bool)

(assert (=> b!1326704 m!1215939))

(declare-fun m!1215941 () Bool)

(assert (=> b!1326704 m!1215941))

(assert (=> b!1326704 m!1215937))

(declare-fun m!1215943 () Bool)

(assert (=> b!1326704 m!1215943))

(declare-fun m!1215945 () Bool)

(assert (=> b!1326704 m!1215945))

(declare-fun m!1215947 () Bool)

(assert (=> b!1326704 m!1215947))

(declare-fun m!1215949 () Bool)

(assert (=> b!1326704 m!1215949))

(assert (=> b!1326704 m!1215947))

(declare-fun m!1215951 () Bool)

(assert (=> b!1326704 m!1215951))

(declare-fun m!1215953 () Bool)

(assert (=> b!1326704 m!1215953))

(declare-fun m!1215955 () Bool)

(assert (=> b!1326704 m!1215955))

(assert (=> b!1326704 m!1215953))

(assert (=> b!1326704 m!1215931))

(declare-fun m!1215957 () Bool)

(assert (=> b!1326704 m!1215957))

(assert (=> bm!64757 m!1215933))

(assert (=> b!1326698 m!1215571))

(assert (=> b!1326698 m!1215571))

(assert (=> b!1326698 m!1215573))

(assert (=> b!1326699 m!1215571))

(assert (=> b!1326699 m!1215571))

(declare-fun m!1215959 () Bool)

(assert (=> b!1326699 m!1215959))

(assert (=> b!1326482 d!143055))

(declare-fun condMapEmpty!56184 () Bool)

(declare-fun mapDefault!56184 () ValueCell!17277)

(assert (=> mapNonEmpty!56178 (= condMapEmpty!56184 (= mapRest!56178 ((as const (Array (_ BitVec 32) ValueCell!17277)) mapDefault!56184)))))

(declare-fun e!756197 () Bool)

(declare-fun mapRes!56184 () Bool)

(assert (=> mapNonEmpty!56178 (= tp!107074 (and e!756197 mapRes!56184))))

(declare-fun b!1326719 () Bool)

(declare-fun e!756196 () Bool)

(assert (=> b!1326719 (= e!756196 tp_is_empty!36351)))

(declare-fun mapNonEmpty!56184 () Bool)

(declare-fun tp!107083 () Bool)

(assert (=> mapNonEmpty!56184 (= mapRes!56184 (and tp!107083 e!756196))))

(declare-fun mapKey!56184 () (_ BitVec 32))

(declare-fun mapRest!56184 () (Array (_ BitVec 32) ValueCell!17277))

(declare-fun mapValue!56184 () ValueCell!17277)

(assert (=> mapNonEmpty!56184 (= mapRest!56178 (store mapRest!56184 mapKey!56184 mapValue!56184))))

(declare-fun b!1326720 () Bool)

(assert (=> b!1326720 (= e!756197 tp_is_empty!36351)))

(declare-fun mapIsEmpty!56184 () Bool)

(assert (=> mapIsEmpty!56184 mapRes!56184))

(assert (= (and mapNonEmpty!56178 condMapEmpty!56184) mapIsEmpty!56184))

(assert (= (and mapNonEmpty!56178 (not condMapEmpty!56184)) mapNonEmpty!56184))

(assert (= (and mapNonEmpty!56184 ((_ is ValueCellFull!17277) mapValue!56184)) b!1326719))

(assert (= (and mapNonEmpty!56178 ((_ is ValueCellFull!17277) mapDefault!56184)) b!1326720))

(declare-fun m!1215961 () Bool)

(assert (=> mapNonEmpty!56184 m!1215961))

(declare-fun b_lambda!23833 () Bool)

(assert (= b_lambda!23825 (or (and start!111968 b_free!30531) b_lambda!23833)))

(declare-fun b_lambda!23835 () Bool)

(assert (= b_lambda!23829 (or (and start!111968 b_free!30531) b_lambda!23835)))

(declare-fun b_lambda!23837 () Bool)

(assert (= b_lambda!23831 (or (and start!111968 b_free!30531) b_lambda!23837)))

(declare-fun b_lambda!23839 () Bool)

(assert (= b_lambda!23827 (or (and start!111968 b_free!30531) b_lambda!23839)))

(check-sat (not bm!64760) (not d!143033) (not b!1326684) (not b!1326558) (not d!143055) (not d!143043) (not d!143049) (not b!1326572) (not bm!64729) (not b!1326533) (not b!1326571) (not b!1326675) (not b!1326611) (not b_lambda!23823) (not d!143039) (not bm!64759) (not b!1326702) (not b!1326625) (not b_lambda!23833) (not b!1326556) (not b!1326565) (not d!143047) (not b!1326704) (not b!1326703) (not b_lambda!23835) (not b!1326573) (not d!143027) (not b!1326564) (not bm!64750) (not b!1326708) (not d!143053) (not bm!64757) (not b!1326699) (not b!1326568) (not b!1326614) (not d!143019) (not b!1326618) (not b!1326553) (not b!1326577) (not b!1326691) (not b!1326689) (not bm!64752) (not mapNonEmpty!56184) (not b!1326622) (not d!143029) (not b!1326692) (not b!1326695) (not d!143025) (not d!143017) b_and!49181 (not b!1326609) (not b!1326620) (not b!1326679) (not b_next!30531) (not d!143031) (not bm!64753) (not b!1326671) (not bm!64754) (not bm!64761) (not b!1326616) tp_is_empty!36351 (not b!1326678) (not b!1326613) (not b!1326623) (not b!1326582) (not b!1326583) (not b!1326574) (not b!1326531) (not b!1326674) (not b!1326575) (not b_lambda!23837) (not b!1326615) (not d!143023) (not b!1326555) (not b!1326698) (not b!1326617) (not b!1326566) (not bm!64735) (not bm!64732) (not b_lambda!23839) (not b!1326668) (not b!1326569) (not b!1326543) (not d!143045) (not d!143035) (not b!1326680) (not b!1326576) (not b!1326544) (not d!143021) (not b!1326534) (not d!143041) (not d!143015))
(check-sat b_and!49181 (not b_next!30531))
