; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112716 () Bool)

(assert start!112716)

(declare-fun b_free!31017 () Bool)

(declare-fun b_next!31017 () Bool)

(assert (=> start!112716 (= b_free!31017 (not b_next!31017))))

(declare-fun tp!108693 () Bool)

(declare-fun b_and!49981 () Bool)

(assert (=> start!112716 (= tp!108693 b_and!49981)))

(declare-fun b!1336532 () Bool)

(declare-fun res!887065 () Bool)

(declare-fun e!761128 () Bool)

(assert (=> b!1336532 (=> (not res!887065) (not e!761128))))

(declare-datatypes ((array!90685 0))(
  ( (array!90686 (arr!43803 (Array (_ BitVec 32) (_ BitVec 64))) (size!44354 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90685)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1336532 (= res!887065 (validKeyInArray!0 (select (arr!43803 _keys!1590) from!1980)))))

(declare-fun b!1336533 () Bool)

(declare-fun res!887071 () Bool)

(assert (=> b!1336533 (=> (not res!887071) (not e!761128))))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1336533 (= res!887071 (not (= (select (arr!43803 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1336534 () Bool)

(declare-fun res!887069 () Bool)

(assert (=> b!1336534 (=> (not res!887069) (not e!761128))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90685 (_ BitVec 32)) Bool)

(assert (=> b!1336534 (= res!887069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1336535 () Bool)

(declare-fun res!887064 () Bool)

(assert (=> b!1336535 (=> (not res!887064) (not e!761128))))

(declare-datatypes ((V!54339 0))(
  ( (V!54340 (val!18538 Int)) )
))
(declare-datatypes ((ValueCell!17565 0))(
  ( (ValueCellFull!17565 (v!21176 V!54339)) (EmptyCell!17565) )
))
(declare-datatypes ((array!90687 0))(
  ( (array!90688 (arr!43804 (Array (_ BitVec 32) ValueCell!17565)) (size!44355 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90687)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1336535 (= res!887064 (and (= (size!44355 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44354 _keys!1590) (size!44355 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336536 () Bool)

(declare-fun res!887066 () Bool)

(assert (=> b!1336536 (=> (not res!887066) (not e!761128))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54339)

(declare-fun zeroValue!1262 () V!54339)

(declare-datatypes ((tuple2!24060 0))(
  ( (tuple2!24061 (_1!12040 (_ BitVec 64)) (_2!12040 V!54339)) )
))
(declare-datatypes ((List!31227 0))(
  ( (Nil!31224) (Cons!31223 (h!32432 tuple2!24060) (t!45532 List!31227)) )
))
(declare-datatypes ((ListLongMap!21729 0))(
  ( (ListLongMap!21730 (toList!10880 List!31227)) )
))
(declare-fun contains!8981 (ListLongMap!21729 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5788 (array!90685 array!90687 (_ BitVec 32) (_ BitVec 32) V!54339 V!54339 (_ BitVec 32) Int) ListLongMap!21729)

(assert (=> b!1336536 (= res!887066 (contains!8981 (getCurrentListMap!5788 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun mapNonEmpty!57068 () Bool)

(declare-fun mapRes!57068 () Bool)

(declare-fun tp!108692 () Bool)

(declare-fun e!761126 () Bool)

(assert (=> mapNonEmpty!57068 (= mapRes!57068 (and tp!108692 e!761126))))

(declare-fun mapValue!57068 () ValueCell!17565)

(declare-fun mapRest!57068 () (Array (_ BitVec 32) ValueCell!17565))

(declare-fun mapKey!57068 () (_ BitVec 32))

(assert (=> mapNonEmpty!57068 (= (arr!43804 _values!1320) (store mapRest!57068 mapKey!57068 mapValue!57068))))

(declare-fun b!1336537 () Bool)

(declare-fun res!887067 () Bool)

(assert (=> b!1336537 (=> (not res!887067) (not e!761128))))

(declare-datatypes ((List!31228 0))(
  ( (Nil!31225) (Cons!31224 (h!32433 (_ BitVec 64)) (t!45533 List!31228)) )
))
(declare-fun arrayNoDuplicates!0 (array!90685 (_ BitVec 32) List!31228) Bool)

(assert (=> b!1336537 (= res!887067 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31225))))

(declare-fun b!1336538 () Bool)

(declare-fun res!887068 () Bool)

(assert (=> b!1336538 (=> (not res!887068) (not e!761128))))

(assert (=> b!1336538 (= res!887068 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44354 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336539 () Bool)

(declare-fun e!761125 () Bool)

(declare-fun e!761127 () Bool)

(assert (=> b!1336539 (= e!761125 (and e!761127 mapRes!57068))))

(declare-fun condMapEmpty!57068 () Bool)

(declare-fun mapDefault!57068 () ValueCell!17565)

(assert (=> b!1336539 (= condMapEmpty!57068 (= (arr!43804 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17565)) mapDefault!57068)))))

(declare-fun res!887070 () Bool)

(assert (=> start!112716 (=> (not res!887070) (not e!761128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112716 (= res!887070 (validMask!0 mask!1998))))

(assert (=> start!112716 e!761128))

(declare-fun array_inv!32965 (array!90687) Bool)

(assert (=> start!112716 (and (array_inv!32965 _values!1320) e!761125)))

(assert (=> start!112716 true))

(declare-fun array_inv!32966 (array!90685) Bool)

(assert (=> start!112716 (array_inv!32966 _keys!1590)))

(assert (=> start!112716 tp!108693))

(declare-fun tp_is_empty!36927 () Bool)

(assert (=> start!112716 tp_is_empty!36927))

(declare-fun b!1336540 () Bool)

(assert (=> b!1336540 (= e!761126 tp_is_empty!36927)))

(declare-fun b!1336541 () Bool)

(assert (=> b!1336541 (= e!761128 (not (not (= k0!1153 (select (arr!43803 _keys!1590) from!1980)))))))

(declare-fun lt!592736 () ListLongMap!21729)

(assert (=> b!1336541 (contains!8981 lt!592736 k0!1153)))

(declare-datatypes ((Unit!43858 0))(
  ( (Unit!43859) )
))
(declare-fun lt!592737 () Unit!43858)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!313 ((_ BitVec 64) (_ BitVec 64) V!54339 ListLongMap!21729) Unit!43858)

(assert (=> b!1336541 (= lt!592737 (lemmaInListMapAfterAddingDiffThenInBefore!313 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!592736))))

(declare-fun +!4712 (ListLongMap!21729 tuple2!24060) ListLongMap!21729)

(declare-fun getCurrentListMapNoExtraKeys!6435 (array!90685 array!90687 (_ BitVec 32) (_ BitVec 32) V!54339 V!54339 (_ BitVec 32) Int) ListLongMap!21729)

(declare-fun get!22139 (ValueCell!17565 V!54339) V!54339)

(declare-fun dynLambda!3749 (Int (_ BitVec 64)) V!54339)

(assert (=> b!1336541 (= lt!592736 (+!4712 (getCurrentListMapNoExtraKeys!6435 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24061 (select (arr!43803 _keys!1590) from!1980) (get!22139 (select (arr!43804 _values!1320) from!1980) (dynLambda!3749 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1336542 () Bool)

(assert (=> b!1336542 (= e!761127 tp_is_empty!36927)))

(declare-fun mapIsEmpty!57068 () Bool)

(assert (=> mapIsEmpty!57068 mapRes!57068))

(declare-fun b!1336543 () Bool)

(declare-fun res!887063 () Bool)

(assert (=> b!1336543 (=> (not res!887063) (not e!761128))))

(assert (=> b!1336543 (= res!887063 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!112716 res!887070) b!1336535))

(assert (= (and b!1336535 res!887064) b!1336534))

(assert (= (and b!1336534 res!887069) b!1336537))

(assert (= (and b!1336537 res!887067) b!1336538))

(assert (= (and b!1336538 res!887068) b!1336536))

(assert (= (and b!1336536 res!887066) b!1336533))

(assert (= (and b!1336533 res!887071) b!1336532))

(assert (= (and b!1336532 res!887065) b!1336543))

(assert (= (and b!1336543 res!887063) b!1336541))

(assert (= (and b!1336539 condMapEmpty!57068) mapIsEmpty!57068))

(assert (= (and b!1336539 (not condMapEmpty!57068)) mapNonEmpty!57068))

(get-info :version)

(assert (= (and mapNonEmpty!57068 ((_ is ValueCellFull!17565) mapValue!57068)) b!1336540))

(assert (= (and b!1336539 ((_ is ValueCellFull!17565) mapDefault!57068)) b!1336542))

(assert (= start!112716 b!1336539))

(declare-fun b_lambda!24185 () Bool)

(assert (=> (not b_lambda!24185) (not b!1336541)))

(declare-fun t!45531 () Bool)

(declare-fun tb!12109 () Bool)

(assert (=> (and start!112716 (= defaultEntry!1323 defaultEntry!1323) t!45531) tb!12109))

(declare-fun result!25283 () Bool)

(assert (=> tb!12109 (= result!25283 tp_is_empty!36927)))

(assert (=> b!1336541 t!45531))

(declare-fun b_and!49983 () Bool)

(assert (= b_and!49981 (and (=> t!45531 result!25283) b_and!49983)))

(declare-fun m!1224641 () Bool)

(assert (=> b!1336537 m!1224641))

(declare-fun m!1224643 () Bool)

(assert (=> b!1336536 m!1224643))

(assert (=> b!1336536 m!1224643))

(declare-fun m!1224645 () Bool)

(assert (=> b!1336536 m!1224645))

(declare-fun m!1224647 () Bool)

(assert (=> b!1336532 m!1224647))

(assert (=> b!1336532 m!1224647))

(declare-fun m!1224649 () Bool)

(assert (=> b!1336532 m!1224649))

(declare-fun m!1224651 () Bool)

(assert (=> start!112716 m!1224651))

(declare-fun m!1224653 () Bool)

(assert (=> start!112716 m!1224653))

(declare-fun m!1224655 () Bool)

(assert (=> start!112716 m!1224655))

(assert (=> b!1336533 m!1224647))

(declare-fun m!1224657 () Bool)

(assert (=> b!1336541 m!1224657))

(declare-fun m!1224659 () Bool)

(assert (=> b!1336541 m!1224659))

(declare-fun m!1224661 () Bool)

(assert (=> b!1336541 m!1224661))

(declare-fun m!1224663 () Bool)

(assert (=> b!1336541 m!1224663))

(declare-fun m!1224665 () Bool)

(assert (=> b!1336541 m!1224665))

(assert (=> b!1336541 m!1224659))

(declare-fun m!1224667 () Bool)

(assert (=> b!1336541 m!1224667))

(declare-fun m!1224669 () Bool)

(assert (=> b!1336541 m!1224669))

(assert (=> b!1336541 m!1224661))

(assert (=> b!1336541 m!1224665))

(assert (=> b!1336541 m!1224647))

(declare-fun m!1224671 () Bool)

(assert (=> b!1336534 m!1224671))

(declare-fun m!1224673 () Bool)

(assert (=> mapNonEmpty!57068 m!1224673))

(check-sat tp_is_empty!36927 (not start!112716) (not b!1336537) b_and!49983 (not b_lambda!24185) (not b!1336541) (not b!1336534) (not b_next!31017) (not b!1336536) (not mapNonEmpty!57068) (not b!1336532))
(check-sat b_and!49983 (not b_next!31017))
