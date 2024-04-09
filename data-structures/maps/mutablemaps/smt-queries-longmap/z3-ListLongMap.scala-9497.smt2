; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112628 () Bool)

(assert start!112628)

(declare-fun b_free!30987 () Bool)

(declare-fun b_next!30987 () Bool)

(assert (=> start!112628 (= b_free!30987 (not b_next!30987))))

(declare-fun tp!108599 () Bool)

(declare-fun b_and!49907 () Bool)

(assert (=> start!112628 (= tp!108599 b_and!49907)))

(declare-fun b!1335578 () Bool)

(declare-fun res!886505 () Bool)

(declare-fun e!760660 () Bool)

(assert (=> b!1335578 (=> (not res!886505) (not e!760660))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90629 0))(
  ( (array!90630 (arr!43776 (Array (_ BitVec 32) (_ BitVec 64))) (size!44327 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90629)

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1335578 (= res!886505 (not (= (select (arr!43776 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1335579 () Bool)

(declare-fun e!760656 () Bool)

(declare-fun e!760658 () Bool)

(declare-fun mapRes!57019 () Bool)

(assert (=> b!1335579 (= e!760656 (and e!760658 mapRes!57019))))

(declare-fun condMapEmpty!57019 () Bool)

(declare-datatypes ((V!54299 0))(
  ( (V!54300 (val!18523 Int)) )
))
(declare-datatypes ((ValueCell!17550 0))(
  ( (ValueCellFull!17550 (v!21158 V!54299)) (EmptyCell!17550) )
))
(declare-datatypes ((array!90631 0))(
  ( (array!90632 (arr!43777 (Array (_ BitVec 32) ValueCell!17550)) (size!44328 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90631)

(declare-fun mapDefault!57019 () ValueCell!17550)

(assert (=> b!1335579 (= condMapEmpty!57019 (= (arr!43777 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17550)) mapDefault!57019)))))

(declare-fun mapIsEmpty!57019 () Bool)

(assert (=> mapIsEmpty!57019 mapRes!57019))

(declare-fun b!1335580 () Bool)

(declare-fun res!886498 () Bool)

(assert (=> b!1335580 (=> (not res!886498) (not e!760660))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1335580 (= res!886498 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1335581 () Bool)

(declare-fun tp_is_empty!36897 () Bool)

(assert (=> b!1335581 (= e!760658 tp_is_empty!36897)))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun b!1335582 () Bool)

(declare-fun minValue!1262 () V!54299)

(declare-fun zeroValue!1262 () V!54299)

(declare-datatypes ((tuple2!24042 0))(
  ( (tuple2!24043 (_1!12031 (_ BitVec 64)) (_2!12031 V!54299)) )
))
(declare-datatypes ((List!31211 0))(
  ( (Nil!31208) (Cons!31207 (h!32416 tuple2!24042) (t!45486 List!31211)) )
))
(declare-datatypes ((ListLongMap!21711 0))(
  ( (ListLongMap!21712 (toList!10871 List!31211)) )
))
(declare-fun contains!8970 (ListLongMap!21711 (_ BitVec 64)) Bool)

(declare-fun +!4703 (ListLongMap!21711 tuple2!24042) ListLongMap!21711)

(declare-fun getCurrentListMapNoExtraKeys!6426 (array!90629 array!90631 (_ BitVec 32) (_ BitVec 32) V!54299 V!54299 (_ BitVec 32) Int) ListLongMap!21711)

(declare-fun get!22117 (ValueCell!17550 V!54299) V!54299)

(declare-fun dynLambda!3740 (Int (_ BitVec 64)) V!54299)

(assert (=> b!1335582 (= e!760660 (not (contains!8970 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))))

(declare-fun res!886500 () Bool)

(assert (=> start!112628 (=> (not res!886500) (not e!760660))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112628 (= res!886500 (validMask!0 mask!1998))))

(assert (=> start!112628 e!760660))

(declare-fun array_inv!32949 (array!90631) Bool)

(assert (=> start!112628 (and (array_inv!32949 _values!1320) e!760656)))

(assert (=> start!112628 true))

(declare-fun array_inv!32950 (array!90629) Bool)

(assert (=> start!112628 (array_inv!32950 _keys!1590)))

(assert (=> start!112628 tp!108599))

(assert (=> start!112628 tp_is_empty!36897))

(declare-fun b!1335583 () Bool)

(declare-fun e!760659 () Bool)

(assert (=> b!1335583 (= e!760659 tp_is_empty!36897)))

(declare-fun b!1335584 () Bool)

(declare-fun res!886504 () Bool)

(assert (=> b!1335584 (=> (not res!886504) (not e!760660))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1335584 (= res!886504 (validKeyInArray!0 (select (arr!43776 _keys!1590) from!1980)))))

(declare-fun b!1335585 () Bool)

(declare-fun res!886502 () Bool)

(assert (=> b!1335585 (=> (not res!886502) (not e!760660))))

(assert (=> b!1335585 (= res!886502 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44327 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335586 () Bool)

(declare-fun res!886497 () Bool)

(assert (=> b!1335586 (=> (not res!886497) (not e!760660))))

(assert (=> b!1335586 (= res!886497 (and (= (size!44328 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44327 _keys!1590) (size!44328 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!57019 () Bool)

(declare-fun tp!108598 () Bool)

(assert (=> mapNonEmpty!57019 (= mapRes!57019 (and tp!108598 e!760659))))

(declare-fun mapValue!57019 () ValueCell!17550)

(declare-fun mapRest!57019 () (Array (_ BitVec 32) ValueCell!17550))

(declare-fun mapKey!57019 () (_ BitVec 32))

(assert (=> mapNonEmpty!57019 (= (arr!43777 _values!1320) (store mapRest!57019 mapKey!57019 mapValue!57019))))

(declare-fun b!1335587 () Bool)

(declare-fun res!886499 () Bool)

(assert (=> b!1335587 (=> (not res!886499) (not e!760660))))

(declare-datatypes ((List!31212 0))(
  ( (Nil!31209) (Cons!31208 (h!32417 (_ BitVec 64)) (t!45487 List!31212)) )
))
(declare-fun arrayNoDuplicates!0 (array!90629 (_ BitVec 32) List!31212) Bool)

(assert (=> b!1335587 (= res!886499 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31209))))

(declare-fun b!1335588 () Bool)

(declare-fun res!886501 () Bool)

(assert (=> b!1335588 (=> (not res!886501) (not e!760660))))

(declare-fun getCurrentListMap!5781 (array!90629 array!90631 (_ BitVec 32) (_ BitVec 32) V!54299 V!54299 (_ BitVec 32) Int) ListLongMap!21711)

(assert (=> b!1335588 (= res!886501 (contains!8970 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1335589 () Bool)

(declare-fun res!886503 () Bool)

(assert (=> b!1335589 (=> (not res!886503) (not e!760660))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90629 (_ BitVec 32)) Bool)

(assert (=> b!1335589 (= res!886503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(assert (= (and start!112628 res!886500) b!1335586))

(assert (= (and b!1335586 res!886497) b!1335589))

(assert (= (and b!1335589 res!886503) b!1335587))

(assert (= (and b!1335587 res!886499) b!1335585))

(assert (= (and b!1335585 res!886502) b!1335588))

(assert (= (and b!1335588 res!886501) b!1335578))

(assert (= (and b!1335578 res!886505) b!1335584))

(assert (= (and b!1335584 res!886504) b!1335580))

(assert (= (and b!1335580 res!886498) b!1335582))

(assert (= (and b!1335579 condMapEmpty!57019) mapIsEmpty!57019))

(assert (= (and b!1335579 (not condMapEmpty!57019)) mapNonEmpty!57019))

(get-info :version)

(assert (= (and mapNonEmpty!57019 ((_ is ValueCellFull!17550) mapValue!57019)) b!1335583))

(assert (= (and b!1335579 ((_ is ValueCellFull!17550) mapDefault!57019)) b!1335581))

(assert (= start!112628 b!1335579))

(declare-fun b_lambda!24125 () Bool)

(assert (=> (not b_lambda!24125) (not b!1335582)))

(declare-fun t!45485 () Bool)

(declare-fun tb!12079 () Bool)

(assert (=> (and start!112628 (= defaultEntry!1323 defaultEntry!1323) t!45485) tb!12079))

(declare-fun result!25221 () Bool)

(assert (=> tb!12079 (= result!25221 tp_is_empty!36897)))

(assert (=> b!1335582 t!45485))

(declare-fun b_and!49909 () Bool)

(assert (= b_and!49907 (and (=> t!45485 result!25221) b_and!49909)))

(declare-fun m!1223593 () Bool)

(assert (=> b!1335578 m!1223593))

(declare-fun m!1223595 () Bool)

(assert (=> b!1335589 m!1223595))

(declare-fun m!1223597 () Bool)

(assert (=> start!112628 m!1223597))

(declare-fun m!1223599 () Bool)

(assert (=> start!112628 m!1223599))

(declare-fun m!1223601 () Bool)

(assert (=> start!112628 m!1223601))

(declare-fun m!1223603 () Bool)

(assert (=> b!1335582 m!1223603))

(declare-fun m!1223605 () Bool)

(assert (=> b!1335582 m!1223605))

(declare-fun m!1223607 () Bool)

(assert (=> b!1335582 m!1223607))

(declare-fun m!1223609 () Bool)

(assert (=> b!1335582 m!1223609))

(declare-fun m!1223611 () Bool)

(assert (=> b!1335582 m!1223611))

(assert (=> b!1335582 m!1223605))

(declare-fun m!1223613 () Bool)

(assert (=> b!1335582 m!1223613))

(assert (=> b!1335582 m!1223603))

(assert (=> b!1335582 m!1223607))

(assert (=> b!1335582 m!1223593))

(assert (=> b!1335582 m!1223609))

(assert (=> b!1335582 m!1223613))

(declare-fun m!1223615 () Bool)

(assert (=> b!1335582 m!1223615))

(assert (=> b!1335584 m!1223593))

(assert (=> b!1335584 m!1223593))

(declare-fun m!1223617 () Bool)

(assert (=> b!1335584 m!1223617))

(declare-fun m!1223619 () Bool)

(assert (=> b!1335587 m!1223619))

(declare-fun m!1223621 () Bool)

(assert (=> mapNonEmpty!57019 m!1223621))

(declare-fun m!1223623 () Bool)

(assert (=> b!1335588 m!1223623))

(assert (=> b!1335588 m!1223623))

(declare-fun m!1223625 () Bool)

(assert (=> b!1335588 m!1223625))

(check-sat (not b!1335589) (not b!1335587) (not b!1335588) (not start!112628) tp_is_empty!36897 (not b!1335582) (not b!1335584) (not b_lambda!24125) (not mapNonEmpty!57019) (not b_next!30987) b_and!49909)
(check-sat b_and!49909 (not b_next!30987))
(get-model)

(declare-fun b_lambda!24129 () Bool)

(assert (= b_lambda!24125 (or (and start!112628 b_free!30987) b_lambda!24129)))

(check-sat (not b!1335589) (not b!1335587) (not b!1335588) (not start!112628) tp_is_empty!36897 (not b!1335584) (not mapNonEmpty!57019) (not b!1335582) (not b_lambda!24129) (not b_next!30987) b_and!49909)
(check-sat b_and!49909 (not b_next!30987))
(get-model)

(declare-fun d!143437 () Bool)

(assert (=> d!143437 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112628 d!143437))

(declare-fun d!143439 () Bool)

(assert (=> d!143439 (= (array_inv!32949 _values!1320) (bvsge (size!44328 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112628 d!143439))

(declare-fun d!143441 () Bool)

(assert (=> d!143441 (= (array_inv!32950 _keys!1590) (bvsge (size!44327 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112628 d!143441))

(declare-fun d!143443 () Bool)

(declare-fun e!760678 () Bool)

(assert (=> d!143443 e!760678))

(declare-fun res!886537 () Bool)

(assert (=> d!143443 (=> (not res!886537) (not e!760678))))

(declare-fun lt!592414 () ListLongMap!21711)

(assert (=> d!143443 (= res!886537 (contains!8970 lt!592414 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!592413 () List!31211)

(assert (=> d!143443 (= lt!592414 (ListLongMap!21712 lt!592413))))

(declare-datatypes ((Unit!43831 0))(
  ( (Unit!43832) )
))
(declare-fun lt!592415 () Unit!43831)

(declare-fun lt!592412 () Unit!43831)

(assert (=> d!143443 (= lt!592415 lt!592412)))

(declare-datatypes ((Option!768 0))(
  ( (Some!767 (v!21160 V!54299)) (None!766) )
))
(declare-fun getValueByKey!717 (List!31211 (_ BitVec 64)) Option!768)

(assert (=> d!143443 (= (getValueByKey!717 lt!592413 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!767 (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!360 (List!31211 (_ BitVec 64) V!54299) Unit!43831)

(assert (=> d!143443 (= lt!592412 (lemmaContainsTupThenGetReturnValue!360 lt!592413 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!489 (List!31211 (_ BitVec 64) V!54299) List!31211)

(assert (=> d!143443 (= lt!592413 (insertStrictlySorted!489 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143443 (= (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!592414)))

(declare-fun b!1335634 () Bool)

(declare-fun res!886538 () Bool)

(assert (=> b!1335634 (=> (not res!886538) (not e!760678))))

(assert (=> b!1335634 (= res!886538 (= (getValueByKey!717 (toList!10871 lt!592414) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!767 (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1335635 () Bool)

(declare-fun contains!8971 (List!31211 tuple2!24042) Bool)

(assert (=> b!1335635 (= e!760678 (contains!8971 (toList!10871 lt!592414) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!143443 res!886537) b!1335634))

(assert (= (and b!1335634 res!886538) b!1335635))

(declare-fun m!1223661 () Bool)

(assert (=> d!143443 m!1223661))

(declare-fun m!1223663 () Bool)

(assert (=> d!143443 m!1223663))

(declare-fun m!1223665 () Bool)

(assert (=> d!143443 m!1223665))

(declare-fun m!1223667 () Bool)

(assert (=> d!143443 m!1223667))

(declare-fun m!1223669 () Bool)

(assert (=> b!1335634 m!1223669))

(declare-fun m!1223671 () Bool)

(assert (=> b!1335635 m!1223671))

(assert (=> b!1335582 d!143443))

(declare-fun d!143445 () Bool)

(declare-fun e!760679 () Bool)

(assert (=> d!143445 e!760679))

(declare-fun res!886539 () Bool)

(assert (=> d!143445 (=> (not res!886539) (not e!760679))))

(declare-fun lt!592418 () ListLongMap!21711)

(assert (=> d!143445 (= res!886539 (contains!8970 lt!592418 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun lt!592417 () List!31211)

(assert (=> d!143445 (= lt!592418 (ListLongMap!21712 lt!592417))))

(declare-fun lt!592419 () Unit!43831)

(declare-fun lt!592416 () Unit!43831)

(assert (=> d!143445 (= lt!592419 lt!592416)))

(assert (=> d!143445 (= (getValueByKey!717 lt!592417 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!767 (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143445 (= lt!592416 (lemmaContainsTupThenGetReturnValue!360 lt!592417 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143445 (= lt!592417 (insertStrictlySorted!489 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143445 (= (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) lt!592418)))

(declare-fun b!1335636 () Bool)

(declare-fun res!886540 () Bool)

(assert (=> b!1335636 (=> (not res!886540) (not e!760679))))

(assert (=> b!1335636 (= res!886540 (= (getValueByKey!717 (toList!10871 lt!592418) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!767 (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun b!1335637 () Bool)

(assert (=> b!1335637 (= e!760679 (contains!8971 (toList!10871 lt!592418) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(assert (= (and d!143445 res!886539) b!1335636))

(assert (= (and b!1335636 res!886540) b!1335637))

(declare-fun m!1223673 () Bool)

(assert (=> d!143445 m!1223673))

(declare-fun m!1223675 () Bool)

(assert (=> d!143445 m!1223675))

(declare-fun m!1223677 () Bool)

(assert (=> d!143445 m!1223677))

(declare-fun m!1223679 () Bool)

(assert (=> d!143445 m!1223679))

(declare-fun m!1223681 () Bool)

(assert (=> b!1335636 m!1223681))

(declare-fun m!1223683 () Bool)

(assert (=> b!1335637 m!1223683))

(assert (=> b!1335582 d!143445))

(declare-fun b!1335662 () Bool)

(declare-fun e!760699 () ListLongMap!21711)

(declare-fun e!760700 () ListLongMap!21711)

(assert (=> b!1335662 (= e!760699 e!760700)))

(declare-fun c!125853 () Bool)

(assert (=> b!1335662 (= c!125853 (validKeyInArray!0 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1335663 () Bool)

(declare-fun e!760694 () Bool)

(declare-fun lt!592435 () ListLongMap!21711)

(declare-fun isEmpty!1084 (ListLongMap!21711) Bool)

(assert (=> b!1335663 (= e!760694 (isEmpty!1084 lt!592435))))

(declare-fun b!1335664 () Bool)

(declare-fun e!760695 () Bool)

(assert (=> b!1335664 (= e!760695 (validKeyInArray!0 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1335664 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))

(declare-fun b!1335665 () Bool)

(declare-fun res!886552 () Bool)

(declare-fun e!760697 () Bool)

(assert (=> b!1335665 (=> (not res!886552) (not e!760697))))

(assert (=> b!1335665 (= res!886552 (not (contains!8970 lt!592435 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1335666 () Bool)

(declare-fun e!760696 () Bool)

(assert (=> b!1335666 (= e!760696 e!760694)))

(declare-fun c!125855 () Bool)

(assert (=> b!1335666 (= c!125855 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44327 _keys!1590)))))

(declare-fun b!1335667 () Bool)

(declare-fun e!760698 () Bool)

(assert (=> b!1335667 (= e!760696 e!760698)))

(assert (=> b!1335667 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44327 _keys!1590)))))

(declare-fun res!886549 () Bool)

(assert (=> b!1335667 (= res!886549 (contains!8970 lt!592435 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1335667 (=> (not res!886549) (not e!760698))))

(declare-fun d!143447 () Bool)

(assert (=> d!143447 e!760697))

(declare-fun res!886550 () Bool)

(assert (=> d!143447 (=> (not res!886550) (not e!760697))))

(assert (=> d!143447 (= res!886550 (not (contains!8970 lt!592435 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143447 (= lt!592435 e!760699)))

(declare-fun c!125854 () Bool)

(assert (=> d!143447 (= c!125854 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) (size!44327 _keys!1590)))))

(assert (=> d!143447 (validMask!0 mask!1998)))

(assert (=> d!143447 (= (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) lt!592435)))

(declare-fun b!1335668 () Bool)

(assert (=> b!1335668 (= e!760699 (ListLongMap!21712 Nil!31208))))

(declare-fun b!1335669 () Bool)

(declare-fun call!64821 () ListLongMap!21711)

(assert (=> b!1335669 (= e!760700 call!64821)))

(declare-fun b!1335670 () Bool)

(assert (=> b!1335670 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44327 _keys!1590)))))

(assert (=> b!1335670 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44328 _values!1320)))))

(declare-fun apply!1067 (ListLongMap!21711 (_ BitVec 64)) V!54299)

(assert (=> b!1335670 (= e!760698 (= (apply!1067 lt!592435 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335671 () Bool)

(assert (=> b!1335671 (= e!760694 (= lt!592435 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun b!1335672 () Bool)

(declare-fun lt!592439 () Unit!43831)

(declare-fun lt!592437 () Unit!43831)

(assert (=> b!1335672 (= lt!592439 lt!592437)))

(declare-fun lt!592438 () (_ BitVec 64))

(declare-fun lt!592440 () V!54299)

(declare-fun lt!592436 () (_ BitVec 64))

(declare-fun lt!592434 () ListLongMap!21711)

(assert (=> b!1335672 (not (contains!8970 (+!4703 lt!592434 (tuple2!24043 lt!592438 lt!592440)) lt!592436))))

(declare-fun addStillNotContains!505 (ListLongMap!21711 (_ BitVec 64) V!54299 (_ BitVec 64)) Unit!43831)

(assert (=> b!1335672 (= lt!592437 (addStillNotContains!505 lt!592434 lt!592438 lt!592440 lt!592436))))

(assert (=> b!1335672 (= lt!592436 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1335672 (= lt!592440 (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1335672 (= lt!592438 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(assert (=> b!1335672 (= lt!592434 call!64821)))

(assert (=> b!1335672 (= e!760700 (+!4703 call!64821 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!64818 () Bool)

(assert (=> bm!64818 (= call!64821 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323))))

(declare-fun b!1335673 () Bool)

(assert (=> b!1335673 (= e!760697 e!760696)))

(declare-fun c!125852 () Bool)

(assert (=> b!1335673 (= c!125852 e!760695)))

(declare-fun res!886551 () Bool)

(assert (=> b!1335673 (=> (not res!886551) (not e!760695))))

(assert (=> b!1335673 (= res!886551 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44327 _keys!1590)))))

(assert (= (and d!143447 c!125854) b!1335668))

(assert (= (and d!143447 (not c!125854)) b!1335662))

(assert (= (and b!1335662 c!125853) b!1335672))

(assert (= (and b!1335662 (not c!125853)) b!1335669))

(assert (= (or b!1335672 b!1335669) bm!64818))

(assert (= (and d!143447 res!886550) b!1335665))

(assert (= (and b!1335665 res!886552) b!1335673))

(assert (= (and b!1335673 res!886551) b!1335664))

(assert (= (and b!1335673 c!125852) b!1335667))

(assert (= (and b!1335673 (not c!125852)) b!1335666))

(assert (= (and b!1335667 res!886549) b!1335670))

(assert (= (and b!1335666 c!125855) b!1335671))

(assert (= (and b!1335666 (not c!125855)) b!1335663))

(declare-fun b_lambda!24131 () Bool)

(assert (=> (not b_lambda!24131) (not b!1335670)))

(assert (=> b!1335670 t!45485))

(declare-fun b_and!49915 () Bool)

(assert (= b_and!49909 (and (=> t!45485 result!25221) b_and!49915)))

(declare-fun b_lambda!24133 () Bool)

(assert (=> (not b_lambda!24133) (not b!1335672)))

(assert (=> b!1335672 t!45485))

(declare-fun b_and!49917 () Bool)

(assert (= b_and!49915 (and (=> t!45485 result!25221) b_and!49917)))

(declare-fun m!1223685 () Bool)

(assert (=> b!1335663 m!1223685))

(declare-fun m!1223687 () Bool)

(assert (=> b!1335667 m!1223687))

(assert (=> b!1335667 m!1223687))

(declare-fun m!1223689 () Bool)

(assert (=> b!1335667 m!1223689))

(assert (=> b!1335664 m!1223687))

(assert (=> b!1335664 m!1223687))

(declare-fun m!1223691 () Bool)

(assert (=> b!1335664 m!1223691))

(assert (=> b!1335662 m!1223687))

(assert (=> b!1335662 m!1223687))

(assert (=> b!1335662 m!1223691))

(declare-fun m!1223693 () Bool)

(assert (=> b!1335672 m!1223693))

(declare-fun m!1223695 () Bool)

(assert (=> b!1335672 m!1223695))

(declare-fun m!1223697 () Bool)

(assert (=> b!1335672 m!1223697))

(declare-fun m!1223699 () Bool)

(assert (=> b!1335672 m!1223699))

(assert (=> b!1335672 m!1223609))

(declare-fun m!1223701 () Bool)

(assert (=> b!1335672 m!1223701))

(declare-fun m!1223703 () Bool)

(assert (=> b!1335672 m!1223703))

(assert (=> b!1335672 m!1223699))

(assert (=> b!1335672 m!1223609))

(assert (=> b!1335672 m!1223695))

(assert (=> b!1335672 m!1223687))

(declare-fun m!1223705 () Bool)

(assert (=> d!143447 m!1223705))

(assert (=> d!143447 m!1223597))

(declare-fun m!1223707 () Bool)

(assert (=> bm!64818 m!1223707))

(declare-fun m!1223709 () Bool)

(assert (=> b!1335665 m!1223709))

(assert (=> b!1335670 m!1223687))

(assert (=> b!1335670 m!1223699))

(assert (=> b!1335670 m!1223609))

(assert (=> b!1335670 m!1223701))

(assert (=> b!1335670 m!1223699))

(assert (=> b!1335670 m!1223609))

(assert (=> b!1335670 m!1223687))

(declare-fun m!1223711 () Bool)

(assert (=> b!1335670 m!1223711))

(assert (=> b!1335671 m!1223707))

(assert (=> b!1335582 d!143447))

(declare-fun d!143449 () Bool)

(declare-fun c!125858 () Bool)

(assert (=> d!143449 (= c!125858 ((_ is ValueCellFull!17550) (select (arr!43777 _values!1320) from!1980)))))

(declare-fun e!760703 () V!54299)

(assert (=> d!143449 (= (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) e!760703)))

(declare-fun b!1335678 () Bool)

(declare-fun get!22118 (ValueCell!17550 V!54299) V!54299)

(assert (=> b!1335678 (= e!760703 (get!22118 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1335679 () Bool)

(declare-fun get!22119 (ValueCell!17550 V!54299) V!54299)

(assert (=> b!1335679 (= e!760703 (get!22119 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143449 c!125858) b!1335678))

(assert (= (and d!143449 (not c!125858)) b!1335679))

(assert (=> b!1335678 m!1223607))

(assert (=> b!1335678 m!1223609))

(declare-fun m!1223713 () Bool)

(assert (=> b!1335678 m!1223713))

(assert (=> b!1335679 m!1223607))

(assert (=> b!1335679 m!1223609))

(declare-fun m!1223715 () Bool)

(assert (=> b!1335679 m!1223715))

(assert (=> b!1335582 d!143449))

(declare-fun d!143451 () Bool)

(declare-fun e!760709 () Bool)

(assert (=> d!143451 e!760709))

(declare-fun res!886555 () Bool)

(assert (=> d!143451 (=> res!886555 e!760709)))

(declare-fun lt!592451 () Bool)

(assert (=> d!143451 (= res!886555 (not lt!592451))))

(declare-fun lt!592449 () Bool)

(assert (=> d!143451 (= lt!592451 lt!592449)))

(declare-fun lt!592452 () Unit!43831)

(declare-fun e!760708 () Unit!43831)

(assert (=> d!143451 (= lt!592452 e!760708)))

(declare-fun c!125861 () Bool)

(assert (=> d!143451 (= c!125861 lt!592449)))

(declare-fun containsKey!735 (List!31211 (_ BitVec 64)) Bool)

(assert (=> d!143451 (= lt!592449 (containsKey!735 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))

(assert (=> d!143451 (= (contains!8970 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153) lt!592451)))

(declare-fun b!1335686 () Bool)

(declare-fun lt!592450 () Unit!43831)

(assert (=> b!1335686 (= e!760708 lt!592450)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!480 (List!31211 (_ BitVec 64)) Unit!43831)

(assert (=> b!1335686 (= lt!592450 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))

(declare-fun isDefined!520 (Option!768) Bool)

(assert (=> b!1335686 (isDefined!520 (getValueByKey!717 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))

(declare-fun b!1335687 () Bool)

(declare-fun Unit!43833 () Unit!43831)

(assert (=> b!1335687 (= e!760708 Unit!43833)))

(declare-fun b!1335688 () Bool)

(assert (=> b!1335688 (= e!760709 (isDefined!520 (getValueByKey!717 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153)))))

(assert (= (and d!143451 c!125861) b!1335686))

(assert (= (and d!143451 (not c!125861)) b!1335687))

(assert (= (and d!143451 (not res!886555)) b!1335688))

(declare-fun m!1223717 () Bool)

(assert (=> d!143451 m!1223717))

(declare-fun m!1223719 () Bool)

(assert (=> b!1335686 m!1223719))

(declare-fun m!1223721 () Bool)

(assert (=> b!1335686 m!1223721))

(assert (=> b!1335686 m!1223721))

(declare-fun m!1223723 () Bool)

(assert (=> b!1335686 m!1223723))

(assert (=> b!1335688 m!1223721))

(assert (=> b!1335688 m!1223721))

(assert (=> b!1335688 m!1223723))

(assert (=> b!1335582 d!143451))

(declare-fun d!143453 () Bool)

(assert (=> d!143453 (= (validKeyInArray!0 (select (arr!43776 _keys!1590) from!1980)) (and (not (= (select (arr!43776 _keys!1590) from!1980) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43776 _keys!1590) from!1980) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1335584 d!143453))

(declare-fun b!1335697 () Bool)

(declare-fun e!760716 () Bool)

(declare-fun call!64824 () Bool)

(assert (=> b!1335697 (= e!760716 call!64824)))

(declare-fun bm!64821 () Bool)

(assert (=> bm!64821 (= call!64824 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(declare-fun d!143455 () Bool)

(declare-fun res!886561 () Bool)

(declare-fun e!760717 () Bool)

(assert (=> d!143455 (=> res!886561 e!760717)))

(assert (=> d!143455 (= res!886561 (bvsge #b00000000000000000000000000000000 (size!44327 _keys!1590)))))

(assert (=> d!143455 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998) e!760717)))

(declare-fun b!1335698 () Bool)

(declare-fun e!760718 () Bool)

(assert (=> b!1335698 (= e!760718 call!64824)))

(declare-fun b!1335699 () Bool)

(assert (=> b!1335699 (= e!760717 e!760718)))

(declare-fun c!125864 () Bool)

(assert (=> b!1335699 (= c!125864 (validKeyInArray!0 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1335700 () Bool)

(assert (=> b!1335700 (= e!760718 e!760716)))

(declare-fun lt!592461 () (_ BitVec 64))

(assert (=> b!1335700 (= lt!592461 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000))))

(declare-fun lt!592459 () Unit!43831)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!90629 (_ BitVec 64) (_ BitVec 32)) Unit!43831)

(assert (=> b!1335700 (= lt!592459 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!592461 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!90629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1335700 (arrayContainsKey!0 _keys!1590 lt!592461 #b00000000000000000000000000000000)))

(declare-fun lt!592460 () Unit!43831)

(assert (=> b!1335700 (= lt!592460 lt!592459)))

(declare-fun res!886560 () Bool)

(declare-datatypes ((SeekEntryResult!10044 0))(
  ( (MissingZero!10044 (index!42546 (_ BitVec 32))) (Found!10044 (index!42547 (_ BitVec 32))) (Intermediate!10044 (undefined!10856 Bool) (index!42548 (_ BitVec 32)) (x!119318 (_ BitVec 32))) (Undefined!10044) (MissingVacant!10044 (index!42549 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!90629 (_ BitVec 32)) SeekEntryResult!10044)

(assert (=> b!1335700 (= res!886560 (= (seekEntryOrOpen!0 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) (Found!10044 #b00000000000000000000000000000000)))))

(assert (=> b!1335700 (=> (not res!886560) (not e!760716))))

(assert (= (and d!143455 (not res!886561)) b!1335699))

(assert (= (and b!1335699 c!125864) b!1335700))

(assert (= (and b!1335699 (not c!125864)) b!1335698))

(assert (= (and b!1335700 res!886560) b!1335697))

(assert (= (or b!1335697 b!1335698) bm!64821))

(declare-fun m!1223725 () Bool)

(assert (=> bm!64821 m!1223725))

(declare-fun m!1223727 () Bool)

(assert (=> b!1335699 m!1223727))

(assert (=> b!1335699 m!1223727))

(declare-fun m!1223729 () Bool)

(assert (=> b!1335699 m!1223729))

(assert (=> b!1335700 m!1223727))

(declare-fun m!1223731 () Bool)

(assert (=> b!1335700 m!1223731))

(declare-fun m!1223733 () Bool)

(assert (=> b!1335700 m!1223733))

(assert (=> b!1335700 m!1223727))

(declare-fun m!1223735 () Bool)

(assert (=> b!1335700 m!1223735))

(assert (=> b!1335589 d!143455))

(declare-fun b!1335711 () Bool)

(declare-fun e!760730 () Bool)

(declare-fun e!760727 () Bool)

(assert (=> b!1335711 (= e!760730 e!760727)))

(declare-fun c!125867 () Bool)

(assert (=> b!1335711 (= c!125867 (validKeyInArray!0 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1335712 () Bool)

(declare-fun e!760729 () Bool)

(assert (=> b!1335712 (= e!760729 e!760730)))

(declare-fun res!886570 () Bool)

(assert (=> b!1335712 (=> (not res!886570) (not e!760730))))

(declare-fun e!760728 () Bool)

(assert (=> b!1335712 (= res!886570 (not e!760728))))

(declare-fun res!886568 () Bool)

(assert (=> b!1335712 (=> (not res!886568) (not e!760728))))

(assert (=> b!1335712 (= res!886568 (validKeyInArray!0 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1335713 () Bool)

(declare-fun contains!8972 (List!31212 (_ BitVec 64)) Bool)

(assert (=> b!1335713 (= e!760728 (contains!8972 Nil!31209 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1335714 () Bool)

(declare-fun call!64827 () Bool)

(assert (=> b!1335714 (= e!760727 call!64827)))

(declare-fun b!1335715 () Bool)

(assert (=> b!1335715 (= e!760727 call!64827)))

(declare-fun bm!64824 () Bool)

(assert (=> bm!64824 (= call!64827 (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125867 (Cons!31208 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) Nil!31209) Nil!31209)))))

(declare-fun d!143457 () Bool)

(declare-fun res!886569 () Bool)

(assert (=> d!143457 (=> res!886569 e!760729)))

(assert (=> d!143457 (= res!886569 (bvsge #b00000000000000000000000000000000 (size!44327 _keys!1590)))))

(assert (=> d!143457 (= (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31209) e!760729)))

(assert (= (and d!143457 (not res!886569)) b!1335712))

(assert (= (and b!1335712 res!886568) b!1335713))

(assert (= (and b!1335712 res!886570) b!1335711))

(assert (= (and b!1335711 c!125867) b!1335714))

(assert (= (and b!1335711 (not c!125867)) b!1335715))

(assert (= (or b!1335714 b!1335715) bm!64824))

(assert (=> b!1335711 m!1223727))

(assert (=> b!1335711 m!1223727))

(assert (=> b!1335711 m!1223729))

(assert (=> b!1335712 m!1223727))

(assert (=> b!1335712 m!1223727))

(assert (=> b!1335712 m!1223729))

(assert (=> b!1335713 m!1223727))

(assert (=> b!1335713 m!1223727))

(declare-fun m!1223737 () Bool)

(assert (=> b!1335713 m!1223737))

(assert (=> bm!64824 m!1223727))

(declare-fun m!1223739 () Bool)

(assert (=> bm!64824 m!1223739))

(assert (=> b!1335587 d!143457))

(declare-fun d!143459 () Bool)

(declare-fun e!760732 () Bool)

(assert (=> d!143459 e!760732))

(declare-fun res!886571 () Bool)

(assert (=> d!143459 (=> res!886571 e!760732)))

(declare-fun lt!592464 () Bool)

(assert (=> d!143459 (= res!886571 (not lt!592464))))

(declare-fun lt!592462 () Bool)

(assert (=> d!143459 (= lt!592464 lt!592462)))

(declare-fun lt!592465 () Unit!43831)

(declare-fun e!760731 () Unit!43831)

(assert (=> d!143459 (= lt!592465 e!760731)))

(declare-fun c!125868 () Bool)

(assert (=> d!143459 (= c!125868 lt!592462)))

(assert (=> d!143459 (= lt!592462 (containsKey!735 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (=> d!143459 (= (contains!8970 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153) lt!592464)))

(declare-fun b!1335716 () Bool)

(declare-fun lt!592463 () Unit!43831)

(assert (=> b!1335716 (= e!760731 lt!592463)))

(assert (=> b!1335716 (= lt!592463 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (=> b!1335716 (isDefined!520 (getValueByKey!717 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun b!1335717 () Bool)

(declare-fun Unit!43834 () Unit!43831)

(assert (=> b!1335717 (= e!760731 Unit!43834)))

(declare-fun b!1335718 () Bool)

(assert (=> b!1335718 (= e!760732 (isDefined!520 (getValueByKey!717 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153)))))

(assert (= (and d!143459 c!125868) b!1335716))

(assert (= (and d!143459 (not c!125868)) b!1335717))

(assert (= (and d!143459 (not res!886571)) b!1335718))

(declare-fun m!1223741 () Bool)

(assert (=> d!143459 m!1223741))

(declare-fun m!1223743 () Bool)

(assert (=> b!1335716 m!1223743))

(declare-fun m!1223745 () Bool)

(assert (=> b!1335716 m!1223745))

(assert (=> b!1335716 m!1223745))

(declare-fun m!1223747 () Bool)

(assert (=> b!1335716 m!1223747))

(assert (=> b!1335718 m!1223745))

(assert (=> b!1335718 m!1223745))

(assert (=> b!1335718 m!1223747))

(assert (=> b!1335588 d!143459))

(declare-fun bm!64839 () Bool)

(declare-fun call!64847 () ListLongMap!21711)

(declare-fun call!64846 () ListLongMap!21711)

(assert (=> bm!64839 (= call!64847 call!64846)))

(declare-fun b!1335761 () Bool)

(declare-fun e!760766 () Bool)

(declare-fun lt!592510 () ListLongMap!21711)

(assert (=> b!1335761 (= e!760766 (= (apply!1067 lt!592510 (select (arr!43776 _keys!1590) from!1980)) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1335761 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44328 _values!1320)))))

(assert (=> b!1335761 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44327 _keys!1590)))))

(declare-fun b!1335762 () Bool)

(declare-fun e!760765 () Bool)

(declare-fun e!760769 () Bool)

(assert (=> b!1335762 (= e!760765 e!760769)))

(declare-fun res!886595 () Bool)

(declare-fun call!64843 () Bool)

(assert (=> b!1335762 (= res!886595 call!64843)))

(assert (=> b!1335762 (=> (not res!886595) (not e!760769))))

(declare-fun b!1335763 () Bool)

(declare-fun e!760768 () ListLongMap!21711)

(declare-fun call!64845 () ListLongMap!21711)

(assert (=> b!1335763 (= e!760768 call!64845)))

(declare-fun b!1335764 () Bool)

(declare-fun e!760760 () Bool)

(assert (=> b!1335764 (= e!760760 (= (apply!1067 lt!592510 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1262))))

(declare-fun b!1335765 () Bool)

(declare-fun e!760763 () ListLongMap!21711)

(assert (=> b!1335765 (= e!760763 e!760768)))

(declare-fun c!125885 () Bool)

(assert (=> b!1335765 (= c!125885 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1335766 () Bool)

(declare-fun e!760770 () Bool)

(declare-fun call!64848 () Bool)

(assert (=> b!1335766 (= e!760770 (not call!64848))))

(declare-fun b!1335767 () Bool)

(assert (=> b!1335767 (= e!760765 (not call!64843))))

(declare-fun b!1335768 () Bool)

(declare-fun c!125886 () Bool)

(assert (=> b!1335768 (= c!125886 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!760759 () ListLongMap!21711)

(assert (=> b!1335768 (= e!760768 e!760759)))

(declare-fun call!64844 () ListLongMap!21711)

(declare-fun bm!64840 () Bool)

(declare-fun call!64842 () ListLongMap!21711)

(declare-fun c!125883 () Bool)

(assert (=> bm!64840 (= call!64844 (+!4703 (ite c!125883 call!64846 (ite c!125885 call!64847 call!64842)) (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1335769 () Bool)

(assert (=> b!1335769 (= e!760759 call!64842)))

(declare-fun bm!64841 () Bool)

(assert (=> bm!64841 (= call!64842 call!64847)))

(declare-fun b!1335770 () Bool)

(declare-fun e!760761 () Bool)

(assert (=> b!1335770 (= e!760761 (validKeyInArray!0 (select (arr!43776 _keys!1590) from!1980)))))

(declare-fun b!1335771 () Bool)

(assert (=> b!1335771 (= e!760759 call!64845)))

(declare-fun b!1335772 () Bool)

(assert (=> b!1335772 (= e!760763 (+!4703 call!64844 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun b!1335773 () Bool)

(declare-fun e!760762 () Unit!43831)

(declare-fun lt!592512 () Unit!43831)

(assert (=> b!1335773 (= e!760762 lt!592512)))

(declare-fun lt!592520 () ListLongMap!21711)

(assert (=> b!1335773 (= lt!592520 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!592516 () (_ BitVec 64))

(assert (=> b!1335773 (= lt!592516 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!592519 () (_ BitVec 64))

(assert (=> b!1335773 (= lt!592519 (select (arr!43776 _keys!1590) from!1980))))

(declare-fun lt!592527 () Unit!43831)

(declare-fun addStillContains!1193 (ListLongMap!21711 (_ BitVec 64) V!54299 (_ BitVec 64)) Unit!43831)

(assert (=> b!1335773 (= lt!592527 (addStillContains!1193 lt!592520 lt!592516 zeroValue!1262 lt!592519))))

(assert (=> b!1335773 (contains!8970 (+!4703 lt!592520 (tuple2!24043 lt!592516 zeroValue!1262)) lt!592519)))

(declare-fun lt!592514 () Unit!43831)

(assert (=> b!1335773 (= lt!592514 lt!592527)))

(declare-fun lt!592515 () ListLongMap!21711)

(assert (=> b!1335773 (= lt!592515 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!592528 () (_ BitVec 64))

(assert (=> b!1335773 (= lt!592528 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!592525 () (_ BitVec 64))

(assert (=> b!1335773 (= lt!592525 (select (arr!43776 _keys!1590) from!1980))))

(declare-fun lt!592531 () Unit!43831)

(declare-fun addApplyDifferent!570 (ListLongMap!21711 (_ BitVec 64) V!54299 (_ BitVec 64)) Unit!43831)

(assert (=> b!1335773 (= lt!592531 (addApplyDifferent!570 lt!592515 lt!592528 minValue!1262 lt!592525))))

(assert (=> b!1335773 (= (apply!1067 (+!4703 lt!592515 (tuple2!24043 lt!592528 minValue!1262)) lt!592525) (apply!1067 lt!592515 lt!592525))))

(declare-fun lt!592529 () Unit!43831)

(assert (=> b!1335773 (= lt!592529 lt!592531)))

(declare-fun lt!592522 () ListLongMap!21711)

(assert (=> b!1335773 (= lt!592522 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!592521 () (_ BitVec 64))

(assert (=> b!1335773 (= lt!592521 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!592523 () (_ BitVec 64))

(assert (=> b!1335773 (= lt!592523 (select (arr!43776 _keys!1590) from!1980))))

(declare-fun lt!592524 () Unit!43831)

(assert (=> b!1335773 (= lt!592524 (addApplyDifferent!570 lt!592522 lt!592521 zeroValue!1262 lt!592523))))

(assert (=> b!1335773 (= (apply!1067 (+!4703 lt!592522 (tuple2!24043 lt!592521 zeroValue!1262)) lt!592523) (apply!1067 lt!592522 lt!592523))))

(declare-fun lt!592518 () Unit!43831)

(assert (=> b!1335773 (= lt!592518 lt!592524)))

(declare-fun lt!592526 () ListLongMap!21711)

(assert (=> b!1335773 (= lt!592526 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!592530 () (_ BitVec 64))

(assert (=> b!1335773 (= lt!592530 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!592513 () (_ BitVec 64))

(assert (=> b!1335773 (= lt!592513 (select (arr!43776 _keys!1590) from!1980))))

(assert (=> b!1335773 (= lt!592512 (addApplyDifferent!570 lt!592526 lt!592530 minValue!1262 lt!592513))))

(assert (=> b!1335773 (= (apply!1067 (+!4703 lt!592526 (tuple2!24043 lt!592530 minValue!1262)) lt!592513) (apply!1067 lt!592526 lt!592513))))

(declare-fun b!1335774 () Bool)

(declare-fun res!886594 () Bool)

(declare-fun e!760771 () Bool)

(assert (=> b!1335774 (=> (not res!886594) (not e!760771))))

(declare-fun e!760764 () Bool)

(assert (=> b!1335774 (= res!886594 e!760764)))

(declare-fun res!886598 () Bool)

(assert (=> b!1335774 (=> res!886598 e!760764)))

(assert (=> b!1335774 (= res!886598 (not e!760761))))

(declare-fun res!886591 () Bool)

(assert (=> b!1335774 (=> (not res!886591) (not e!760761))))

(assert (=> b!1335774 (= res!886591 (bvslt from!1980 (size!44327 _keys!1590)))))

(declare-fun bm!64842 () Bool)

(assert (=> bm!64842 (= call!64845 call!64844)))

(declare-fun b!1335775 () Bool)

(assert (=> b!1335775 (= e!760770 e!760760)))

(declare-fun res!886592 () Bool)

(assert (=> b!1335775 (= res!886592 call!64848)))

(assert (=> b!1335775 (=> (not res!886592) (not e!760760))))

(declare-fun bm!64843 () Bool)

(assert (=> bm!64843 (= call!64846 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun bm!64844 () Bool)

(assert (=> bm!64844 (= call!64848 (contains!8970 lt!592510 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1335776 () Bool)

(assert (=> b!1335776 (= e!760764 e!760766)))

(declare-fun res!886597 () Bool)

(assert (=> b!1335776 (=> (not res!886597) (not e!760766))))

(assert (=> b!1335776 (= res!886597 (contains!8970 lt!592510 (select (arr!43776 _keys!1590) from!1980)))))

(assert (=> b!1335776 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44327 _keys!1590)))))

(declare-fun b!1335777 () Bool)

(assert (=> b!1335777 (= e!760769 (= (apply!1067 lt!592510 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1262))))

(declare-fun b!1335778 () Bool)

(declare-fun res!886593 () Bool)

(assert (=> b!1335778 (=> (not res!886593) (not e!760771))))

(assert (=> b!1335778 (= res!886593 e!760770)))

(declare-fun c!125881 () Bool)

(assert (=> b!1335778 (= c!125881 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1335779 () Bool)

(assert (=> b!1335779 (= e!760771 e!760765)))

(declare-fun c!125882 () Bool)

(assert (=> b!1335779 (= c!125882 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!143461 () Bool)

(assert (=> d!143461 e!760771))

(declare-fun res!886590 () Bool)

(assert (=> d!143461 (=> (not res!886590) (not e!760771))))

(assert (=> d!143461 (= res!886590 (or (bvsge from!1980 (size!44327 _keys!1590)) (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44327 _keys!1590)))))))

(declare-fun lt!592517 () ListLongMap!21711)

(assert (=> d!143461 (= lt!592510 lt!592517)))

(declare-fun lt!592511 () Unit!43831)

(assert (=> d!143461 (= lt!592511 e!760762)))

(declare-fun c!125884 () Bool)

(declare-fun e!760767 () Bool)

(assert (=> d!143461 (= c!125884 e!760767)))

(declare-fun res!886596 () Bool)

(assert (=> d!143461 (=> (not res!886596) (not e!760767))))

(assert (=> d!143461 (= res!886596 (bvslt from!1980 (size!44327 _keys!1590)))))

(assert (=> d!143461 (= lt!592517 e!760763)))

(assert (=> d!143461 (= c!125883 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143461 (validMask!0 mask!1998)))

(assert (=> d!143461 (= (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) lt!592510)))

(declare-fun b!1335780 () Bool)

(declare-fun Unit!43835 () Unit!43831)

(assert (=> b!1335780 (= e!760762 Unit!43835)))

(declare-fun bm!64845 () Bool)

(assert (=> bm!64845 (= call!64843 (contains!8970 lt!592510 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1335781 () Bool)

(assert (=> b!1335781 (= e!760767 (validKeyInArray!0 (select (arr!43776 _keys!1590) from!1980)))))

(assert (= (and d!143461 c!125883) b!1335772))

(assert (= (and d!143461 (not c!125883)) b!1335765))

(assert (= (and b!1335765 c!125885) b!1335763))

(assert (= (and b!1335765 (not c!125885)) b!1335768))

(assert (= (and b!1335768 c!125886) b!1335771))

(assert (= (and b!1335768 (not c!125886)) b!1335769))

(assert (= (or b!1335771 b!1335769) bm!64841))

(assert (= (or b!1335763 bm!64841) bm!64839))

(assert (= (or b!1335763 b!1335771) bm!64842))

(assert (= (or b!1335772 bm!64839) bm!64843))

(assert (= (or b!1335772 bm!64842) bm!64840))

(assert (= (and d!143461 res!886596) b!1335781))

(assert (= (and d!143461 c!125884) b!1335773))

(assert (= (and d!143461 (not c!125884)) b!1335780))

(assert (= (and d!143461 res!886590) b!1335774))

(assert (= (and b!1335774 res!886591) b!1335770))

(assert (= (and b!1335774 (not res!886598)) b!1335776))

(assert (= (and b!1335776 res!886597) b!1335761))

(assert (= (and b!1335774 res!886594) b!1335778))

(assert (= (and b!1335778 c!125881) b!1335775))

(assert (= (and b!1335778 (not c!125881)) b!1335766))

(assert (= (and b!1335775 res!886592) b!1335764))

(assert (= (or b!1335775 b!1335766) bm!64844))

(assert (= (and b!1335778 res!886593) b!1335779))

(assert (= (and b!1335779 c!125882) b!1335762))

(assert (= (and b!1335779 (not c!125882)) b!1335767))

(assert (= (and b!1335762 res!886595) b!1335777))

(assert (= (or b!1335762 b!1335767) bm!64845))

(declare-fun b_lambda!24135 () Bool)

(assert (=> (not b_lambda!24135) (not b!1335761)))

(assert (=> b!1335761 t!45485))

(declare-fun b_and!49919 () Bool)

(assert (= b_and!49917 (and (=> t!45485 result!25221) b_and!49919)))

(declare-fun m!1223749 () Bool)

(assert (=> b!1335773 m!1223749))

(declare-fun m!1223751 () Bool)

(assert (=> b!1335773 m!1223751))

(declare-fun m!1223753 () Bool)

(assert (=> b!1335773 m!1223753))

(declare-fun m!1223755 () Bool)

(assert (=> b!1335773 m!1223755))

(declare-fun m!1223757 () Bool)

(assert (=> b!1335773 m!1223757))

(declare-fun m!1223759 () Bool)

(assert (=> b!1335773 m!1223759))

(declare-fun m!1223761 () Bool)

(assert (=> b!1335773 m!1223761))

(declare-fun m!1223763 () Bool)

(assert (=> b!1335773 m!1223763))

(declare-fun m!1223765 () Bool)

(assert (=> b!1335773 m!1223765))

(assert (=> b!1335773 m!1223593))

(declare-fun m!1223767 () Bool)

(assert (=> b!1335773 m!1223767))

(declare-fun m!1223769 () Bool)

(assert (=> b!1335773 m!1223769))

(declare-fun m!1223771 () Bool)

(assert (=> b!1335773 m!1223771))

(assert (=> b!1335773 m!1223769))

(declare-fun m!1223773 () Bool)

(assert (=> b!1335773 m!1223773))

(assert (=> b!1335773 m!1223767))

(declare-fun m!1223775 () Bool)

(assert (=> b!1335773 m!1223775))

(declare-fun m!1223777 () Bool)

(assert (=> b!1335773 m!1223777))

(declare-fun m!1223779 () Bool)

(assert (=> b!1335773 m!1223779))

(assert (=> b!1335773 m!1223751))

(assert (=> b!1335773 m!1223763))

(declare-fun m!1223781 () Bool)

(assert (=> bm!64840 m!1223781))

(assert (=> b!1335770 m!1223593))

(assert (=> b!1335770 m!1223593))

(assert (=> b!1335770 m!1223617))

(assert (=> b!1335776 m!1223593))

(assert (=> b!1335776 m!1223593))

(declare-fun m!1223783 () Bool)

(assert (=> b!1335776 m!1223783))

(assert (=> b!1335781 m!1223593))

(assert (=> b!1335781 m!1223593))

(assert (=> b!1335781 m!1223617))

(declare-fun m!1223785 () Bool)

(assert (=> b!1335764 m!1223785))

(declare-fun m!1223787 () Bool)

(assert (=> b!1335772 m!1223787))

(assert (=> b!1335761 m!1223609))

(assert (=> b!1335761 m!1223607))

(assert (=> b!1335761 m!1223609))

(assert (=> b!1335761 m!1223611))

(assert (=> b!1335761 m!1223593))

(declare-fun m!1223789 () Bool)

(assert (=> b!1335761 m!1223789))

(assert (=> b!1335761 m!1223593))

(assert (=> b!1335761 m!1223607))

(declare-fun m!1223791 () Bool)

(assert (=> bm!64844 m!1223791))

(declare-fun m!1223793 () Bool)

(assert (=> bm!64845 m!1223793))

(assert (=> d!143461 m!1223597))

(assert (=> bm!64843 m!1223749))

(declare-fun m!1223795 () Bool)

(assert (=> b!1335777 m!1223795))

(assert (=> b!1335588 d!143461))

(declare-fun condMapEmpty!57025 () Bool)

(declare-fun mapDefault!57025 () ValueCell!17550)

(assert (=> mapNonEmpty!57019 (= condMapEmpty!57025 (= mapRest!57019 ((as const (Array (_ BitVec 32) ValueCell!17550)) mapDefault!57025)))))

(declare-fun e!760776 () Bool)

(declare-fun mapRes!57025 () Bool)

(assert (=> mapNonEmpty!57019 (= tp!108598 (and e!760776 mapRes!57025))))

(declare-fun mapIsEmpty!57025 () Bool)

(assert (=> mapIsEmpty!57025 mapRes!57025))

(declare-fun mapNonEmpty!57025 () Bool)

(declare-fun tp!108608 () Bool)

(declare-fun e!760777 () Bool)

(assert (=> mapNonEmpty!57025 (= mapRes!57025 (and tp!108608 e!760777))))

(declare-fun mapValue!57025 () ValueCell!17550)

(declare-fun mapKey!57025 () (_ BitVec 32))

(declare-fun mapRest!57025 () (Array (_ BitVec 32) ValueCell!17550))

(assert (=> mapNonEmpty!57025 (= mapRest!57019 (store mapRest!57025 mapKey!57025 mapValue!57025))))

(declare-fun b!1335789 () Bool)

(assert (=> b!1335789 (= e!760776 tp_is_empty!36897)))

(declare-fun b!1335788 () Bool)

(assert (=> b!1335788 (= e!760777 tp_is_empty!36897)))

(assert (= (and mapNonEmpty!57019 condMapEmpty!57025) mapIsEmpty!57025))

(assert (= (and mapNonEmpty!57019 (not condMapEmpty!57025)) mapNonEmpty!57025))

(assert (= (and mapNonEmpty!57025 ((_ is ValueCellFull!17550) mapValue!57025)) b!1335788))

(assert (= (and mapNonEmpty!57019 ((_ is ValueCellFull!17550) mapDefault!57025)) b!1335789))

(declare-fun m!1223797 () Bool)

(assert (=> mapNonEmpty!57025 m!1223797))

(declare-fun b_lambda!24137 () Bool)

(assert (= b_lambda!24131 (or (and start!112628 b_free!30987) b_lambda!24137)))

(declare-fun b_lambda!24139 () Bool)

(assert (= b_lambda!24133 (or (and start!112628 b_free!30987) b_lambda!24139)))

(declare-fun b_lambda!24141 () Bool)

(assert (= b_lambda!24135 (or (and start!112628 b_free!30987) b_lambda!24141)))

(check-sat (not bm!64824) (not b!1335712) (not d!143459) (not b_lambda!24141) (not b!1335635) (not b!1335688) b_and!49919 (not b!1335672) (not b!1335667) (not b!1335764) (not b!1335670) (not b!1335761) (not d!143451) (not bm!64844) (not b!1335637) (not b!1335773) (not bm!64840) (not b!1335671) (not b!1335772) (not b!1335665) (not bm!64843) (not b!1335663) (not b!1335679) (not d!143443) (not bm!64845) tp_is_empty!36897 (not b!1335662) (not b!1335777) (not b!1335634) (not b_lambda!24129) (not bm!64818) (not b!1335636) (not b!1335700) (not b_next!30987) (not b_lambda!24139) (not b!1335678) (not d!143445) (not b!1335711) (not b!1335699) (not b!1335781) (not b!1335776) (not bm!64821) (not b_lambda!24137) (not b!1335716) (not d!143461) (not b!1335718) (not mapNonEmpty!57025) (not b!1335770) (not b!1335686) (not d!143447) (not b!1335713) (not b!1335664))
(check-sat b_and!49919 (not b_next!30987))
(get-model)

(declare-fun d!143463 () Bool)

(assert (=> d!143463 (isDefined!520 (getValueByKey!717 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))

(declare-fun lt!592534 () Unit!43831)

(declare-fun choose!1964 (List!31211 (_ BitVec 64)) Unit!43831)

(assert (=> d!143463 (= lt!592534 (choose!1964 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))

(declare-fun e!760780 () Bool)

(assert (=> d!143463 e!760780))

(declare-fun res!886601 () Bool)

(assert (=> d!143463 (=> (not res!886601) (not e!760780))))

(declare-fun isStrictlySorted!875 (List!31211) Bool)

(assert (=> d!143463 (= res!886601 (isStrictlySorted!875 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143463 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153) lt!592534)))

(declare-fun b!1335792 () Bool)

(assert (=> b!1335792 (= e!760780 (containsKey!735 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))

(assert (= (and d!143463 res!886601) b!1335792))

(assert (=> d!143463 m!1223721))

(assert (=> d!143463 m!1223721))

(assert (=> d!143463 m!1223723))

(declare-fun m!1223799 () Bool)

(assert (=> d!143463 m!1223799))

(declare-fun m!1223801 () Bool)

(assert (=> d!143463 m!1223801))

(assert (=> b!1335792 m!1223717))

(assert (=> b!1335686 d!143463))

(declare-fun d!143465 () Bool)

(declare-fun isEmpty!1085 (Option!768) Bool)

(assert (=> d!143465 (= (isDefined!520 (getValueByKey!717 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153)) (not (isEmpty!1085 (getValueByKey!717 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153))))))

(declare-fun bs!38240 () Bool)

(assert (= bs!38240 d!143465))

(assert (=> bs!38240 m!1223721))

(declare-fun m!1223803 () Bool)

(assert (=> bs!38240 m!1223803))

(assert (=> b!1335686 d!143465))

(declare-fun e!760785 () Option!768)

(declare-fun b!1335801 () Bool)

(assert (=> b!1335801 (= e!760785 (Some!767 (_2!12031 (h!32416 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))))

(declare-fun d!143467 () Bool)

(declare-fun c!125891 () Bool)

(assert (=> d!143467 (= c!125891 (and ((_ is Cons!31207) (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (= (_1!12031 (h!32416 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))) k0!1153)))))

(assert (=> d!143467 (= (getValueByKey!717 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153) e!760785)))

(declare-fun e!760786 () Option!768)

(declare-fun b!1335803 () Bool)

(assert (=> b!1335803 (= e!760786 (getValueByKey!717 (t!45486 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) k0!1153))))

(declare-fun b!1335804 () Bool)

(assert (=> b!1335804 (= e!760786 None!766)))

(declare-fun b!1335802 () Bool)

(assert (=> b!1335802 (= e!760785 e!760786)))

(declare-fun c!125892 () Bool)

(assert (=> b!1335802 (= c!125892 (and ((_ is Cons!31207) (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (not (= (_1!12031 (h!32416 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))) k0!1153))))))

(assert (= (and d!143467 c!125891) b!1335801))

(assert (= (and d!143467 (not c!125891)) b!1335802))

(assert (= (and b!1335802 c!125892) b!1335803))

(assert (= (and b!1335802 (not c!125892)) b!1335804))

(declare-fun m!1223805 () Bool)

(assert (=> b!1335803 m!1223805))

(assert (=> b!1335686 d!143467))

(declare-fun b!1335805 () Bool)

(declare-fun e!760787 () Bool)

(declare-fun call!64849 () Bool)

(assert (=> b!1335805 (= e!760787 call!64849)))

(declare-fun bm!64846 () Bool)

(assert (=> bm!64846 (= call!64849 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(declare-fun d!143469 () Bool)

(declare-fun res!886603 () Bool)

(declare-fun e!760788 () Bool)

(assert (=> d!143469 (=> res!886603 e!760788)))

(assert (=> d!143469 (= res!886603 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44327 _keys!1590)))))

(assert (=> d!143469 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998) e!760788)))

(declare-fun b!1335806 () Bool)

(declare-fun e!760789 () Bool)

(assert (=> b!1335806 (= e!760789 call!64849)))

(declare-fun b!1335807 () Bool)

(assert (=> b!1335807 (= e!760788 e!760789)))

(declare-fun c!125893 () Bool)

(assert (=> b!1335807 (= c!125893 (validKeyInArray!0 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1335808 () Bool)

(assert (=> b!1335808 (= e!760789 e!760787)))

(declare-fun lt!592537 () (_ BitVec 64))

(assert (=> b!1335808 (= lt!592537 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!592535 () Unit!43831)

(assert (=> b!1335808 (= lt!592535 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!592537 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1335808 (arrayContainsKey!0 _keys!1590 lt!592537 #b00000000000000000000000000000000)))

(declare-fun lt!592536 () Unit!43831)

(assert (=> b!1335808 (= lt!592536 lt!592535)))

(declare-fun res!886602 () Bool)

(assert (=> b!1335808 (= res!886602 (= (seekEntryOrOpen!0 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1590 mask!1998) (Found!10044 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1335808 (=> (not res!886602) (not e!760787))))

(assert (= (and d!143469 (not res!886603)) b!1335807))

(assert (= (and b!1335807 c!125893) b!1335808))

(assert (= (and b!1335807 (not c!125893)) b!1335806))

(assert (= (and b!1335808 res!886602) b!1335805))

(assert (= (or b!1335805 b!1335806) bm!64846))

(declare-fun m!1223807 () Bool)

(assert (=> bm!64846 m!1223807))

(declare-fun m!1223809 () Bool)

(assert (=> b!1335807 m!1223809))

(assert (=> b!1335807 m!1223809))

(declare-fun m!1223811 () Bool)

(assert (=> b!1335807 m!1223811))

(assert (=> b!1335808 m!1223809))

(declare-fun m!1223813 () Bool)

(assert (=> b!1335808 m!1223813))

(declare-fun m!1223815 () Bool)

(assert (=> b!1335808 m!1223815))

(assert (=> b!1335808 m!1223809))

(declare-fun m!1223817 () Bool)

(assert (=> b!1335808 m!1223817))

(assert (=> bm!64821 d!143469))

(declare-fun d!143471 () Bool)

(assert (=> d!143471 (= (validKeyInArray!0 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)) (and (not (= (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1335712 d!143471))

(declare-fun d!143473 () Bool)

(declare-fun e!760790 () Bool)

(assert (=> d!143473 e!760790))

(declare-fun res!886604 () Bool)

(assert (=> d!143473 (=> (not res!886604) (not e!760790))))

(declare-fun lt!592540 () ListLongMap!21711)

(assert (=> d!143473 (= res!886604 (contains!8970 lt!592540 (_1!12031 (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun lt!592539 () List!31211)

(assert (=> d!143473 (= lt!592540 (ListLongMap!21712 lt!592539))))

(declare-fun lt!592541 () Unit!43831)

(declare-fun lt!592538 () Unit!43831)

(assert (=> d!143473 (= lt!592541 lt!592538)))

(assert (=> d!143473 (= (getValueByKey!717 lt!592539 (_1!12031 (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (Some!767 (_2!12031 (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143473 (= lt!592538 (lemmaContainsTupThenGetReturnValue!360 lt!592539 (_1!12031 (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (_2!12031 (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143473 (= lt!592539 (insertStrictlySorted!489 (toList!10871 (ite c!125883 call!64846 (ite c!125885 call!64847 call!64842))) (_1!12031 (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (_2!12031 (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143473 (= (+!4703 (ite c!125883 call!64846 (ite c!125885 call!64847 call!64842)) (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) lt!592540)))

(declare-fun b!1335809 () Bool)

(declare-fun res!886605 () Bool)

(assert (=> b!1335809 (=> (not res!886605) (not e!760790))))

(assert (=> b!1335809 (= res!886605 (= (getValueByKey!717 (toList!10871 lt!592540) (_1!12031 (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (Some!767 (_2!12031 (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))))

(declare-fun b!1335810 () Bool)

(assert (=> b!1335810 (= e!760790 (contains!8971 (toList!10871 lt!592540) (ite (or c!125883 c!125885) (tuple2!24043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (= (and d!143473 res!886604) b!1335809))

(assert (= (and b!1335809 res!886605) b!1335810))

(declare-fun m!1223819 () Bool)

(assert (=> d!143473 m!1223819))

(declare-fun m!1223821 () Bool)

(assert (=> d!143473 m!1223821))

(declare-fun m!1223823 () Bool)

(assert (=> d!143473 m!1223823))

(declare-fun m!1223825 () Bool)

(assert (=> d!143473 m!1223825))

(declare-fun m!1223827 () Bool)

(assert (=> b!1335809 m!1223827))

(declare-fun m!1223829 () Bool)

(assert (=> b!1335810 m!1223829))

(assert (=> bm!64840 d!143473))

(declare-fun d!143475 () Bool)

(declare-fun isEmpty!1086 (List!31211) Bool)

(assert (=> d!143475 (= (isEmpty!1084 lt!592435) (isEmpty!1086 (toList!10871 lt!592435)))))

(declare-fun bs!38241 () Bool)

(assert (= bs!38241 d!143475))

(declare-fun m!1223831 () Bool)

(assert (=> bs!38241 m!1223831))

(assert (=> b!1335663 d!143475))

(declare-fun d!143477 () Bool)

(assert (=> d!143477 (= (get!22118 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!21158 (select (arr!43777 _values!1320) from!1980)))))

(assert (=> b!1335678 d!143477))

(declare-fun d!143479 () Bool)

(declare-fun lt!592544 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!664 (List!31212) (InoxSet (_ BitVec 64)))

(assert (=> d!143479 (= lt!592544 (select (content!664 Nil!31209) (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun e!760795 () Bool)

(assert (=> d!143479 (= lt!592544 e!760795)))

(declare-fun res!886610 () Bool)

(assert (=> d!143479 (=> (not res!886610) (not e!760795))))

(assert (=> d!143479 (= res!886610 ((_ is Cons!31208) Nil!31209))))

(assert (=> d!143479 (= (contains!8972 Nil!31209 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)) lt!592544)))

(declare-fun b!1335815 () Bool)

(declare-fun e!760796 () Bool)

(assert (=> b!1335815 (= e!760795 e!760796)))

(declare-fun res!886611 () Bool)

(assert (=> b!1335815 (=> res!886611 e!760796)))

(assert (=> b!1335815 (= res!886611 (= (h!32417 Nil!31209) (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1335816 () Bool)

(assert (=> b!1335816 (= e!760796 (contains!8972 (t!45487 Nil!31209) (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)))))

(assert (= (and d!143479 res!886610) b!1335815))

(assert (= (and b!1335815 (not res!886611)) b!1335816))

(declare-fun m!1223833 () Bool)

(assert (=> d!143479 m!1223833))

(assert (=> d!143479 m!1223727))

(declare-fun m!1223835 () Bool)

(assert (=> d!143479 m!1223835))

(assert (=> b!1335816 m!1223727))

(declare-fun m!1223837 () Bool)

(assert (=> b!1335816 m!1223837))

(assert (=> b!1335713 d!143479))

(declare-fun d!143481 () Bool)

(assert (=> d!143481 (= (isDefined!520 (getValueByKey!717 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153)) (not (isEmpty!1085 (getValueByKey!717 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))))

(declare-fun bs!38242 () Bool)

(assert (= bs!38242 d!143481))

(assert (=> bs!38242 m!1223745))

(declare-fun m!1223839 () Bool)

(assert (=> bs!38242 m!1223839))

(assert (=> b!1335718 d!143481))

(declare-fun b!1335817 () Bool)

(declare-fun e!760797 () Option!768)

(assert (=> b!1335817 (= e!760797 (Some!767 (_2!12031 (h!32416 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))))))

(declare-fun d!143483 () Bool)

(declare-fun c!125894 () Bool)

(assert (=> d!143483 (= c!125894 (and ((_ is Cons!31207) (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (= (_1!12031 (h!32416 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)))))

(assert (=> d!143483 (= (getValueByKey!717 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153) e!760797)))

(declare-fun e!760798 () Option!768)

(declare-fun b!1335819 () Bool)

(assert (=> b!1335819 (= e!760798 (getValueByKey!717 (t!45486 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) k0!1153))))

(declare-fun b!1335820 () Bool)

(assert (=> b!1335820 (= e!760798 None!766)))

(declare-fun b!1335818 () Bool)

(assert (=> b!1335818 (= e!760797 e!760798)))

(declare-fun c!125895 () Bool)

(assert (=> b!1335818 (= c!125895 (and ((_ is Cons!31207) (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (not (= (_1!12031 (h!32416 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153))))))

(assert (= (and d!143483 c!125894) b!1335817))

(assert (= (and d!143483 (not c!125894)) b!1335818))

(assert (= (and b!1335818 c!125895) b!1335819))

(assert (= (and b!1335818 (not c!125895)) b!1335820))

(declare-fun m!1223841 () Bool)

(assert (=> b!1335819 m!1223841))

(assert (=> b!1335718 d!143483))

(assert (=> b!1335711 d!143471))

(declare-fun d!143485 () Bool)

(declare-fun e!760800 () Bool)

(assert (=> d!143485 e!760800))

(declare-fun res!886612 () Bool)

(assert (=> d!143485 (=> res!886612 e!760800)))

(declare-fun lt!592547 () Bool)

(assert (=> d!143485 (= res!886612 (not lt!592547))))

(declare-fun lt!592545 () Bool)

(assert (=> d!143485 (= lt!592547 lt!592545)))

(declare-fun lt!592548 () Unit!43831)

(declare-fun e!760799 () Unit!43831)

(assert (=> d!143485 (= lt!592548 e!760799)))

(declare-fun c!125896 () Bool)

(assert (=> d!143485 (= c!125896 lt!592545)))

(assert (=> d!143485 (= lt!592545 (containsKey!735 (toList!10871 lt!592435) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143485 (= (contains!8970 lt!592435 #b0000000000000000000000000000000000000000000000000000000000000000) lt!592547)))

(declare-fun b!1335821 () Bool)

(declare-fun lt!592546 () Unit!43831)

(assert (=> b!1335821 (= e!760799 lt!592546)))

(assert (=> b!1335821 (= lt!592546 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 lt!592435) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1335821 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592435) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1335822 () Bool)

(declare-fun Unit!43836 () Unit!43831)

(assert (=> b!1335822 (= e!760799 Unit!43836)))

(declare-fun b!1335823 () Bool)

(assert (=> b!1335823 (= e!760800 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592435) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143485 c!125896) b!1335821))

(assert (= (and d!143485 (not c!125896)) b!1335822))

(assert (= (and d!143485 (not res!886612)) b!1335823))

(declare-fun m!1223843 () Bool)

(assert (=> d!143485 m!1223843))

(declare-fun m!1223845 () Bool)

(assert (=> b!1335821 m!1223845))

(declare-fun m!1223847 () Bool)

(assert (=> b!1335821 m!1223847))

(assert (=> b!1335821 m!1223847))

(declare-fun m!1223849 () Bool)

(assert (=> b!1335821 m!1223849))

(assert (=> b!1335823 m!1223847))

(assert (=> b!1335823 m!1223847))

(assert (=> b!1335823 m!1223849))

(assert (=> d!143447 d!143485))

(assert (=> d!143447 d!143437))

(declare-fun d!143487 () Bool)

(assert (=> d!143487 (= (validKeyInArray!0 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (and (not (= (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1335662 d!143487))

(declare-fun d!143489 () Bool)

(declare-fun e!760802 () Bool)

(assert (=> d!143489 e!760802))

(declare-fun res!886613 () Bool)

(assert (=> d!143489 (=> res!886613 e!760802)))

(declare-fun lt!592551 () Bool)

(assert (=> d!143489 (= res!886613 (not lt!592551))))

(declare-fun lt!592549 () Bool)

(assert (=> d!143489 (= lt!592551 lt!592549)))

(declare-fun lt!592552 () Unit!43831)

(declare-fun e!760801 () Unit!43831)

(assert (=> d!143489 (= lt!592552 e!760801)))

(declare-fun c!125897 () Bool)

(assert (=> d!143489 (= c!125897 lt!592549)))

(assert (=> d!143489 (= lt!592549 (containsKey!735 (toList!10871 lt!592435) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143489 (= (contains!8970 lt!592435 #b1000000000000000000000000000000000000000000000000000000000000000) lt!592551)))

(declare-fun b!1335824 () Bool)

(declare-fun lt!592550 () Unit!43831)

(assert (=> b!1335824 (= e!760801 lt!592550)))

(assert (=> b!1335824 (= lt!592550 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 lt!592435) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1335824 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592435) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1335825 () Bool)

(declare-fun Unit!43837 () Unit!43831)

(assert (=> b!1335825 (= e!760801 Unit!43837)))

(declare-fun b!1335826 () Bool)

(assert (=> b!1335826 (= e!760802 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592435) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143489 c!125897) b!1335824))

(assert (= (and d!143489 (not c!125897)) b!1335825))

(assert (= (and d!143489 (not res!886613)) b!1335826))

(declare-fun m!1223851 () Bool)

(assert (=> d!143489 m!1223851))

(declare-fun m!1223853 () Bool)

(assert (=> b!1335824 m!1223853))

(declare-fun m!1223855 () Bool)

(assert (=> b!1335824 m!1223855))

(assert (=> b!1335824 m!1223855))

(declare-fun m!1223857 () Bool)

(assert (=> b!1335824 m!1223857))

(assert (=> b!1335826 m!1223855))

(assert (=> b!1335826 m!1223855))

(assert (=> b!1335826 m!1223857))

(assert (=> b!1335665 d!143489))

(declare-fun d!143491 () Bool)

(assert (=> d!143491 (arrayContainsKey!0 _keys!1590 lt!592461 #b00000000000000000000000000000000)))

(declare-fun lt!592555 () Unit!43831)

(declare-fun choose!13 (array!90629 (_ BitVec 64) (_ BitVec 32)) Unit!43831)

(assert (=> d!143491 (= lt!592555 (choose!13 _keys!1590 lt!592461 #b00000000000000000000000000000000))))

(assert (=> d!143491 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!143491 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!592461 #b00000000000000000000000000000000) lt!592555)))

(declare-fun bs!38243 () Bool)

(assert (= bs!38243 d!143491))

(assert (=> bs!38243 m!1223733))

(declare-fun m!1223859 () Bool)

(assert (=> bs!38243 m!1223859))

(assert (=> b!1335700 d!143491))

(declare-fun d!143493 () Bool)

(declare-fun res!886618 () Bool)

(declare-fun e!760807 () Bool)

(assert (=> d!143493 (=> res!886618 e!760807)))

(assert (=> d!143493 (= res!886618 (= (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) lt!592461))))

(assert (=> d!143493 (= (arrayContainsKey!0 _keys!1590 lt!592461 #b00000000000000000000000000000000) e!760807)))

(declare-fun b!1335831 () Bool)

(declare-fun e!760808 () Bool)

(assert (=> b!1335831 (= e!760807 e!760808)))

(declare-fun res!886619 () Bool)

(assert (=> b!1335831 (=> (not res!886619) (not e!760808))))

(assert (=> b!1335831 (= res!886619 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44327 _keys!1590)))))

(declare-fun b!1335832 () Bool)

(assert (=> b!1335832 (= e!760808 (arrayContainsKey!0 _keys!1590 lt!592461 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!143493 (not res!886618)) b!1335831))

(assert (= (and b!1335831 res!886619) b!1335832))

(assert (=> d!143493 m!1223727))

(declare-fun m!1223861 () Bool)

(assert (=> b!1335832 m!1223861))

(assert (=> b!1335700 d!143493))

(declare-fun b!1335845 () Bool)

(declare-fun e!760815 () SeekEntryResult!10044)

(declare-fun lt!592564 () SeekEntryResult!10044)

(assert (=> b!1335845 (= e!760815 (Found!10044 (index!42548 lt!592564)))))

(declare-fun b!1335846 () Bool)

(declare-fun e!760816 () SeekEntryResult!10044)

(assert (=> b!1335846 (= e!760816 Undefined!10044)))

(declare-fun b!1335847 () Bool)

(declare-fun e!760817 () SeekEntryResult!10044)

(assert (=> b!1335847 (= e!760817 (MissingZero!10044 (index!42548 lt!592564)))))

(declare-fun b!1335848 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!90629 (_ BitVec 32)) SeekEntryResult!10044)

(assert (=> b!1335848 (= e!760817 (seekKeyOrZeroReturnVacant!0 (x!119318 lt!592564) (index!42548 lt!592564) (index!42548 lt!592564) (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998))))

(declare-fun b!1335849 () Bool)

(declare-fun c!125904 () Bool)

(declare-fun lt!592563 () (_ BitVec 64))

(assert (=> b!1335849 (= c!125904 (= lt!592563 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1335849 (= e!760815 e!760817)))

(declare-fun b!1335850 () Bool)

(assert (=> b!1335850 (= e!760816 e!760815)))

(assert (=> b!1335850 (= lt!592563 (select (arr!43776 _keys!1590) (index!42548 lt!592564)))))

(declare-fun c!125906 () Bool)

(assert (=> b!1335850 (= c!125906 (= lt!592563 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun d!143495 () Bool)

(declare-fun lt!592562 () SeekEntryResult!10044)

(assert (=> d!143495 (and (or ((_ is Undefined!10044) lt!592562) (not ((_ is Found!10044) lt!592562)) (and (bvsge (index!42547 lt!592562) #b00000000000000000000000000000000) (bvslt (index!42547 lt!592562) (size!44327 _keys!1590)))) (or ((_ is Undefined!10044) lt!592562) ((_ is Found!10044) lt!592562) (not ((_ is MissingZero!10044) lt!592562)) (and (bvsge (index!42546 lt!592562) #b00000000000000000000000000000000) (bvslt (index!42546 lt!592562) (size!44327 _keys!1590)))) (or ((_ is Undefined!10044) lt!592562) ((_ is Found!10044) lt!592562) ((_ is MissingZero!10044) lt!592562) (not ((_ is MissingVacant!10044) lt!592562)) (and (bvsge (index!42549 lt!592562) #b00000000000000000000000000000000) (bvslt (index!42549 lt!592562) (size!44327 _keys!1590)))) (or ((_ is Undefined!10044) lt!592562) (ite ((_ is Found!10044) lt!592562) (= (select (arr!43776 _keys!1590) (index!42547 lt!592562)) (select (arr!43776 _keys!1590) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10044) lt!592562) (= (select (arr!43776 _keys!1590) (index!42546 lt!592562)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10044) lt!592562) (= (select (arr!43776 _keys!1590) (index!42549 lt!592562)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143495 (= lt!592562 e!760816)))

(declare-fun c!125905 () Bool)

(assert (=> d!143495 (= c!125905 (and ((_ is Intermediate!10044) lt!592564) (undefined!10856 lt!592564)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!90629 (_ BitVec 32)) SeekEntryResult!10044)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!143495 (= lt!592564 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) mask!1998) (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998))))

(assert (=> d!143495 (validMask!0 mask!1998)))

(assert (=> d!143495 (= (seekEntryOrOpen!0 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) lt!592562)))

(assert (= (and d!143495 c!125905) b!1335846))

(assert (= (and d!143495 (not c!125905)) b!1335850))

(assert (= (and b!1335850 c!125906) b!1335845))

(assert (= (and b!1335850 (not c!125906)) b!1335849))

(assert (= (and b!1335849 c!125904) b!1335847))

(assert (= (and b!1335849 (not c!125904)) b!1335848))

(assert (=> b!1335848 m!1223727))

(declare-fun m!1223863 () Bool)

(assert (=> b!1335848 m!1223863))

(declare-fun m!1223865 () Bool)

(assert (=> b!1335850 m!1223865))

(declare-fun m!1223867 () Bool)

(assert (=> d!143495 m!1223867))

(declare-fun m!1223869 () Bool)

(assert (=> d!143495 m!1223869))

(assert (=> d!143495 m!1223727))

(declare-fun m!1223871 () Bool)

(assert (=> d!143495 m!1223871))

(assert (=> d!143495 m!1223727))

(assert (=> d!143495 m!1223869))

(declare-fun m!1223873 () Bool)

(assert (=> d!143495 m!1223873))

(declare-fun m!1223875 () Bool)

(assert (=> d!143495 m!1223875))

(assert (=> d!143495 m!1223597))

(assert (=> b!1335700 d!143495))

(assert (=> b!1335664 d!143487))

(declare-fun d!143497 () Bool)

(assert (=> d!143497 (= (get!22119 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1335679 d!143497))

(assert (=> b!1335688 d!143465))

(assert (=> b!1335688 d!143467))

(assert (=> b!1335699 d!143471))

(assert (=> b!1335770 d!143453))

(declare-fun b!1335851 () Bool)

(declare-fun e!760818 () Option!768)

(assert (=> b!1335851 (= e!760818 (Some!767 (_2!12031 (h!32416 (toList!10871 lt!592418)))))))

(declare-fun d!143499 () Bool)

(declare-fun c!125907 () Bool)

(assert (=> d!143499 (= c!125907 (and ((_ is Cons!31207) (toList!10871 lt!592418)) (= (_1!12031 (h!32416 (toList!10871 lt!592418))) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143499 (= (getValueByKey!717 (toList!10871 lt!592418) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) e!760818)))

(declare-fun b!1335853 () Bool)

(declare-fun e!760819 () Option!768)

(assert (=> b!1335853 (= e!760819 (getValueByKey!717 (t!45486 (toList!10871 lt!592418)) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1335854 () Bool)

(assert (=> b!1335854 (= e!760819 None!766)))

(declare-fun b!1335852 () Bool)

(assert (=> b!1335852 (= e!760818 e!760819)))

(declare-fun c!125908 () Bool)

(assert (=> b!1335852 (= c!125908 (and ((_ is Cons!31207) (toList!10871 lt!592418)) (not (= (_1!12031 (h!32416 (toList!10871 lt!592418))) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))))

(assert (= (and d!143499 c!125907) b!1335851))

(assert (= (and d!143499 (not c!125907)) b!1335852))

(assert (= (and b!1335852 c!125908) b!1335853))

(assert (= (and b!1335852 (not c!125908)) b!1335854))

(declare-fun m!1223877 () Bool)

(assert (=> b!1335853 m!1223877))

(assert (=> b!1335636 d!143499))

(declare-fun d!143501 () Bool)

(declare-fun e!760820 () Bool)

(assert (=> d!143501 e!760820))

(declare-fun res!886620 () Bool)

(assert (=> d!143501 (=> (not res!886620) (not e!760820))))

(declare-fun lt!592567 () ListLongMap!21711)

(assert (=> d!143501 (= res!886620 (contains!8970 lt!592567 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun lt!592566 () List!31211)

(assert (=> d!143501 (= lt!592567 (ListLongMap!21712 lt!592566))))

(declare-fun lt!592568 () Unit!43831)

(declare-fun lt!592565 () Unit!43831)

(assert (=> d!143501 (= lt!592568 lt!592565)))

(assert (=> d!143501 (= (getValueByKey!717 lt!592566 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!767 (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143501 (= lt!592565 (lemmaContainsTupThenGetReturnValue!360 lt!592566 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143501 (= lt!592566 (insertStrictlySorted!489 (toList!10871 call!64844) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143501 (= (+!4703 call!64844 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) lt!592567)))

(declare-fun b!1335855 () Bool)

(declare-fun res!886621 () Bool)

(assert (=> b!1335855 (=> (not res!886621) (not e!760820))))

(assert (=> b!1335855 (= res!886621 (= (getValueByKey!717 (toList!10871 lt!592567) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!767 (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun b!1335856 () Bool)

(assert (=> b!1335856 (= e!760820 (contains!8971 (toList!10871 lt!592567) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(assert (= (and d!143501 res!886620) b!1335855))

(assert (= (and b!1335855 res!886621) b!1335856))

(declare-fun m!1223879 () Bool)

(assert (=> d!143501 m!1223879))

(declare-fun m!1223881 () Bool)

(assert (=> d!143501 m!1223881))

(declare-fun m!1223883 () Bool)

(assert (=> d!143501 m!1223883))

(declare-fun m!1223885 () Bool)

(assert (=> d!143501 m!1223885))

(declare-fun m!1223887 () Bool)

(assert (=> b!1335855 m!1223887))

(declare-fun m!1223889 () Bool)

(assert (=> b!1335856 m!1223889))

(assert (=> b!1335772 d!143501))

(declare-fun b!1335857 () Bool)

(declare-fun e!760821 () Option!768)

(assert (=> b!1335857 (= e!760821 (Some!767 (_2!12031 (h!32416 (toList!10871 lt!592414)))))))

(declare-fun d!143503 () Bool)

(declare-fun c!125909 () Bool)

(assert (=> d!143503 (= c!125909 (and ((_ is Cons!31207) (toList!10871 lt!592414)) (= (_1!12031 (h!32416 (toList!10871 lt!592414))) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!143503 (= (getValueByKey!717 (toList!10871 lt!592414) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!760821)))

(declare-fun e!760822 () Option!768)

(declare-fun b!1335859 () Bool)

(assert (=> b!1335859 (= e!760822 (getValueByKey!717 (t!45486 (toList!10871 lt!592414)) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1335860 () Bool)

(assert (=> b!1335860 (= e!760822 None!766)))

(declare-fun b!1335858 () Bool)

(assert (=> b!1335858 (= e!760821 e!760822)))

(declare-fun c!125910 () Bool)

(assert (=> b!1335858 (= c!125910 (and ((_ is Cons!31207) (toList!10871 lt!592414)) (not (= (_1!12031 (h!32416 (toList!10871 lt!592414))) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!143503 c!125909) b!1335857))

(assert (= (and d!143503 (not c!125909)) b!1335858))

(assert (= (and b!1335858 c!125910) b!1335859))

(assert (= (and b!1335858 (not c!125910)) b!1335860))

(declare-fun m!1223891 () Bool)

(assert (=> b!1335859 m!1223891))

(assert (=> b!1335634 d!143503))

(declare-fun d!143505 () Bool)

(declare-fun e!760824 () Bool)

(assert (=> d!143505 e!760824))

(declare-fun res!886622 () Bool)

(assert (=> d!143505 (=> res!886622 e!760824)))

(declare-fun lt!592571 () Bool)

(assert (=> d!143505 (= res!886622 (not lt!592571))))

(declare-fun lt!592569 () Bool)

(assert (=> d!143505 (= lt!592571 lt!592569)))

(declare-fun lt!592572 () Unit!43831)

(declare-fun e!760823 () Unit!43831)

(assert (=> d!143505 (= lt!592572 e!760823)))

(declare-fun c!125911 () Bool)

(assert (=> d!143505 (= c!125911 lt!592569)))

(assert (=> d!143505 (= lt!592569 (containsKey!735 (toList!10871 lt!592435) (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> d!143505 (= (contains!8970 lt!592435 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) lt!592571)))

(declare-fun b!1335861 () Bool)

(declare-fun lt!592570 () Unit!43831)

(assert (=> b!1335861 (= e!760823 lt!592570)))

(assert (=> b!1335861 (= lt!592570 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 lt!592435) (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1335861 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592435) (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1335862 () Bool)

(declare-fun Unit!43838 () Unit!43831)

(assert (=> b!1335862 (= e!760823 Unit!43838)))

(declare-fun b!1335863 () Bool)

(assert (=> b!1335863 (= e!760824 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592435) (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))))

(assert (= (and d!143505 c!125911) b!1335861))

(assert (= (and d!143505 (not c!125911)) b!1335862))

(assert (= (and d!143505 (not res!886622)) b!1335863))

(assert (=> d!143505 m!1223687))

(declare-fun m!1223893 () Bool)

(assert (=> d!143505 m!1223893))

(assert (=> b!1335861 m!1223687))

(declare-fun m!1223895 () Bool)

(assert (=> b!1335861 m!1223895))

(assert (=> b!1335861 m!1223687))

(declare-fun m!1223897 () Bool)

(assert (=> b!1335861 m!1223897))

(assert (=> b!1335861 m!1223897))

(declare-fun m!1223899 () Bool)

(assert (=> b!1335861 m!1223899))

(assert (=> b!1335863 m!1223687))

(assert (=> b!1335863 m!1223897))

(assert (=> b!1335863 m!1223897))

(assert (=> b!1335863 m!1223899))

(assert (=> b!1335667 d!143505))

(declare-fun d!143507 () Bool)

(assert (=> d!143507 (= (apply!1067 (+!4703 lt!592526 (tuple2!24043 lt!592530 minValue!1262)) lt!592513) (apply!1067 lt!592526 lt!592513))))

(declare-fun lt!592575 () Unit!43831)

(declare-fun choose!1965 (ListLongMap!21711 (_ BitVec 64) V!54299 (_ BitVec 64)) Unit!43831)

(assert (=> d!143507 (= lt!592575 (choose!1965 lt!592526 lt!592530 minValue!1262 lt!592513))))

(declare-fun e!760827 () Bool)

(assert (=> d!143507 e!760827))

(declare-fun res!886625 () Bool)

(assert (=> d!143507 (=> (not res!886625) (not e!760827))))

(assert (=> d!143507 (= res!886625 (contains!8970 lt!592526 lt!592513))))

(assert (=> d!143507 (= (addApplyDifferent!570 lt!592526 lt!592530 minValue!1262 lt!592513) lt!592575)))

(declare-fun b!1335867 () Bool)

(assert (=> b!1335867 (= e!760827 (not (= lt!592513 lt!592530)))))

(assert (= (and d!143507 res!886625) b!1335867))

(assert (=> d!143507 m!1223769))

(declare-fun m!1223901 () Bool)

(assert (=> d!143507 m!1223901))

(assert (=> d!143507 m!1223761))

(declare-fun m!1223903 () Bool)

(assert (=> d!143507 m!1223903))

(assert (=> d!143507 m!1223769))

(assert (=> d!143507 m!1223771))

(assert (=> b!1335773 d!143507))

(declare-fun d!143509 () Bool)

(declare-fun get!22120 (Option!768) V!54299)

(assert (=> d!143509 (= (apply!1067 (+!4703 lt!592526 (tuple2!24043 lt!592530 minValue!1262)) lt!592513) (get!22120 (getValueByKey!717 (toList!10871 (+!4703 lt!592526 (tuple2!24043 lt!592530 minValue!1262))) lt!592513)))))

(declare-fun bs!38244 () Bool)

(assert (= bs!38244 d!143509))

(declare-fun m!1223905 () Bool)

(assert (=> bs!38244 m!1223905))

(assert (=> bs!38244 m!1223905))

(declare-fun m!1223907 () Bool)

(assert (=> bs!38244 m!1223907))

(assert (=> b!1335773 d!143509))

(declare-fun b!1335868 () Bool)

(declare-fun e!760833 () ListLongMap!21711)

(declare-fun e!760834 () ListLongMap!21711)

(assert (=> b!1335868 (= e!760833 e!760834)))

(declare-fun c!125913 () Bool)

(assert (=> b!1335868 (= c!125913 (validKeyInArray!0 (select (arr!43776 _keys!1590) from!1980)))))

(declare-fun b!1335869 () Bool)

(declare-fun e!760828 () Bool)

(declare-fun lt!592577 () ListLongMap!21711)

(assert (=> b!1335869 (= e!760828 (isEmpty!1084 lt!592577))))

(declare-fun b!1335870 () Bool)

(declare-fun e!760829 () Bool)

(assert (=> b!1335870 (= e!760829 (validKeyInArray!0 (select (arr!43776 _keys!1590) from!1980)))))

(assert (=> b!1335870 (bvsge from!1980 #b00000000000000000000000000000000)))

(declare-fun b!1335871 () Bool)

(declare-fun res!886629 () Bool)

(declare-fun e!760831 () Bool)

(assert (=> b!1335871 (=> (not res!886629) (not e!760831))))

(assert (=> b!1335871 (= res!886629 (not (contains!8970 lt!592577 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1335872 () Bool)

(declare-fun e!760830 () Bool)

(assert (=> b!1335872 (= e!760830 e!760828)))

(declare-fun c!125915 () Bool)

(assert (=> b!1335872 (= c!125915 (bvslt from!1980 (size!44327 _keys!1590)))))

(declare-fun b!1335873 () Bool)

(declare-fun e!760832 () Bool)

(assert (=> b!1335873 (= e!760830 e!760832)))

(assert (=> b!1335873 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44327 _keys!1590)))))

(declare-fun res!886626 () Bool)

(assert (=> b!1335873 (= res!886626 (contains!8970 lt!592577 (select (arr!43776 _keys!1590) from!1980)))))

(assert (=> b!1335873 (=> (not res!886626) (not e!760832))))

(declare-fun d!143511 () Bool)

(assert (=> d!143511 e!760831))

(declare-fun res!886627 () Bool)

(assert (=> d!143511 (=> (not res!886627) (not e!760831))))

(assert (=> d!143511 (= res!886627 (not (contains!8970 lt!592577 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143511 (= lt!592577 e!760833)))

(declare-fun c!125914 () Bool)

(assert (=> d!143511 (= c!125914 (bvsge from!1980 (size!44327 _keys!1590)))))

(assert (=> d!143511 (validMask!0 mask!1998)))

(assert (=> d!143511 (= (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) lt!592577)))

(declare-fun b!1335874 () Bool)

(assert (=> b!1335874 (= e!760833 (ListLongMap!21712 Nil!31208))))

(declare-fun b!1335875 () Bool)

(declare-fun call!64850 () ListLongMap!21711)

(assert (=> b!1335875 (= e!760834 call!64850)))

(declare-fun b!1335876 () Bool)

(assert (=> b!1335876 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44327 _keys!1590)))))

(assert (=> b!1335876 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44328 _values!1320)))))

(assert (=> b!1335876 (= e!760832 (= (apply!1067 lt!592577 (select (arr!43776 _keys!1590) from!1980)) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335877 () Bool)

(assert (=> b!1335877 (= e!760828 (= lt!592577 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd from!1980 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun b!1335878 () Bool)

(declare-fun lt!592581 () Unit!43831)

(declare-fun lt!592579 () Unit!43831)

(assert (=> b!1335878 (= lt!592581 lt!592579)))

(declare-fun lt!592576 () ListLongMap!21711)

(declare-fun lt!592580 () (_ BitVec 64))

(declare-fun lt!592582 () V!54299)

(declare-fun lt!592578 () (_ BitVec 64))

(assert (=> b!1335878 (not (contains!8970 (+!4703 lt!592576 (tuple2!24043 lt!592580 lt!592582)) lt!592578))))

(assert (=> b!1335878 (= lt!592579 (addStillNotContains!505 lt!592576 lt!592580 lt!592582 lt!592578))))

(assert (=> b!1335878 (= lt!592578 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1335878 (= lt!592582 (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1335878 (= lt!592580 (select (arr!43776 _keys!1590) from!1980))))

(assert (=> b!1335878 (= lt!592576 call!64850)))

(assert (=> b!1335878 (= e!760834 (+!4703 call!64850 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!64847 () Bool)

(assert (=> bm!64847 (= call!64850 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd from!1980 #b00000000000000000000000000000001) defaultEntry!1323))))

(declare-fun b!1335879 () Bool)

(assert (=> b!1335879 (= e!760831 e!760830)))

(declare-fun c!125912 () Bool)

(assert (=> b!1335879 (= c!125912 e!760829)))

(declare-fun res!886628 () Bool)

(assert (=> b!1335879 (=> (not res!886628) (not e!760829))))

(assert (=> b!1335879 (= res!886628 (bvslt from!1980 (size!44327 _keys!1590)))))

(assert (= (and d!143511 c!125914) b!1335874))

(assert (= (and d!143511 (not c!125914)) b!1335868))

(assert (= (and b!1335868 c!125913) b!1335878))

(assert (= (and b!1335868 (not c!125913)) b!1335875))

(assert (= (or b!1335878 b!1335875) bm!64847))

(assert (= (and d!143511 res!886627) b!1335871))

(assert (= (and b!1335871 res!886629) b!1335879))

(assert (= (and b!1335879 res!886628) b!1335870))

(assert (= (and b!1335879 c!125912) b!1335873))

(assert (= (and b!1335879 (not c!125912)) b!1335872))

(assert (= (and b!1335873 res!886626) b!1335876))

(assert (= (and b!1335872 c!125915) b!1335877))

(assert (= (and b!1335872 (not c!125915)) b!1335869))

(declare-fun b_lambda!24143 () Bool)

(assert (=> (not b_lambda!24143) (not b!1335876)))

(assert (=> b!1335876 t!45485))

(declare-fun b_and!49921 () Bool)

(assert (= b_and!49919 (and (=> t!45485 result!25221) b_and!49921)))

(declare-fun b_lambda!24145 () Bool)

(assert (=> (not b_lambda!24145) (not b!1335878)))

(assert (=> b!1335878 t!45485))

(declare-fun b_and!49923 () Bool)

(assert (= b_and!49921 (and (=> t!45485 result!25221) b_and!49923)))

(declare-fun m!1223909 () Bool)

(assert (=> b!1335869 m!1223909))

(assert (=> b!1335873 m!1223593))

(assert (=> b!1335873 m!1223593))

(declare-fun m!1223911 () Bool)

(assert (=> b!1335873 m!1223911))

(assert (=> b!1335870 m!1223593))

(assert (=> b!1335870 m!1223593))

(assert (=> b!1335870 m!1223617))

(assert (=> b!1335868 m!1223593))

(assert (=> b!1335868 m!1223593))

(assert (=> b!1335868 m!1223617))

(declare-fun m!1223913 () Bool)

(assert (=> b!1335878 m!1223913))

(declare-fun m!1223915 () Bool)

(assert (=> b!1335878 m!1223915))

(declare-fun m!1223917 () Bool)

(assert (=> b!1335878 m!1223917))

(assert (=> b!1335878 m!1223607))

(assert (=> b!1335878 m!1223609))

(assert (=> b!1335878 m!1223611))

(declare-fun m!1223919 () Bool)

(assert (=> b!1335878 m!1223919))

(assert (=> b!1335878 m!1223607))

(assert (=> b!1335878 m!1223609))

(assert (=> b!1335878 m!1223915))

(assert (=> b!1335878 m!1223593))

(declare-fun m!1223921 () Bool)

(assert (=> d!143511 m!1223921))

(assert (=> d!143511 m!1223597))

(declare-fun m!1223923 () Bool)

(assert (=> bm!64847 m!1223923))

(declare-fun m!1223925 () Bool)

(assert (=> b!1335871 m!1223925))

(assert (=> b!1335876 m!1223593))

(assert (=> b!1335876 m!1223607))

(assert (=> b!1335876 m!1223609))

(assert (=> b!1335876 m!1223611))

(assert (=> b!1335876 m!1223607))

(assert (=> b!1335876 m!1223609))

(assert (=> b!1335876 m!1223593))

(declare-fun m!1223927 () Bool)

(assert (=> b!1335876 m!1223927))

(assert (=> b!1335877 m!1223923))

(assert (=> b!1335773 d!143511))

(declare-fun d!143513 () Bool)

(declare-fun e!760835 () Bool)

(assert (=> d!143513 e!760835))

(declare-fun res!886630 () Bool)

(assert (=> d!143513 (=> (not res!886630) (not e!760835))))

(declare-fun lt!592585 () ListLongMap!21711)

(assert (=> d!143513 (= res!886630 (contains!8970 lt!592585 (_1!12031 (tuple2!24043 lt!592521 zeroValue!1262))))))

(declare-fun lt!592584 () List!31211)

(assert (=> d!143513 (= lt!592585 (ListLongMap!21712 lt!592584))))

(declare-fun lt!592586 () Unit!43831)

(declare-fun lt!592583 () Unit!43831)

(assert (=> d!143513 (= lt!592586 lt!592583)))

(assert (=> d!143513 (= (getValueByKey!717 lt!592584 (_1!12031 (tuple2!24043 lt!592521 zeroValue!1262))) (Some!767 (_2!12031 (tuple2!24043 lt!592521 zeroValue!1262))))))

(assert (=> d!143513 (= lt!592583 (lemmaContainsTupThenGetReturnValue!360 lt!592584 (_1!12031 (tuple2!24043 lt!592521 zeroValue!1262)) (_2!12031 (tuple2!24043 lt!592521 zeroValue!1262))))))

(assert (=> d!143513 (= lt!592584 (insertStrictlySorted!489 (toList!10871 lt!592522) (_1!12031 (tuple2!24043 lt!592521 zeroValue!1262)) (_2!12031 (tuple2!24043 lt!592521 zeroValue!1262))))))

(assert (=> d!143513 (= (+!4703 lt!592522 (tuple2!24043 lt!592521 zeroValue!1262)) lt!592585)))

(declare-fun b!1335880 () Bool)

(declare-fun res!886631 () Bool)

(assert (=> b!1335880 (=> (not res!886631) (not e!760835))))

(assert (=> b!1335880 (= res!886631 (= (getValueByKey!717 (toList!10871 lt!592585) (_1!12031 (tuple2!24043 lt!592521 zeroValue!1262))) (Some!767 (_2!12031 (tuple2!24043 lt!592521 zeroValue!1262)))))))

(declare-fun b!1335881 () Bool)

(assert (=> b!1335881 (= e!760835 (contains!8971 (toList!10871 lt!592585) (tuple2!24043 lt!592521 zeroValue!1262)))))

(assert (= (and d!143513 res!886630) b!1335880))

(assert (= (and b!1335880 res!886631) b!1335881))

(declare-fun m!1223929 () Bool)

(assert (=> d!143513 m!1223929))

(declare-fun m!1223931 () Bool)

(assert (=> d!143513 m!1223931))

(declare-fun m!1223933 () Bool)

(assert (=> d!143513 m!1223933))

(declare-fun m!1223935 () Bool)

(assert (=> d!143513 m!1223935))

(declare-fun m!1223937 () Bool)

(assert (=> b!1335880 m!1223937))

(declare-fun m!1223939 () Bool)

(assert (=> b!1335881 m!1223939))

(assert (=> b!1335773 d!143513))

(declare-fun d!143515 () Bool)

(declare-fun e!760836 () Bool)

(assert (=> d!143515 e!760836))

(declare-fun res!886632 () Bool)

(assert (=> d!143515 (=> (not res!886632) (not e!760836))))

(declare-fun lt!592589 () ListLongMap!21711)

(assert (=> d!143515 (= res!886632 (contains!8970 lt!592589 (_1!12031 (tuple2!24043 lt!592528 minValue!1262))))))

(declare-fun lt!592588 () List!31211)

(assert (=> d!143515 (= lt!592589 (ListLongMap!21712 lt!592588))))

(declare-fun lt!592590 () Unit!43831)

(declare-fun lt!592587 () Unit!43831)

(assert (=> d!143515 (= lt!592590 lt!592587)))

(assert (=> d!143515 (= (getValueByKey!717 lt!592588 (_1!12031 (tuple2!24043 lt!592528 minValue!1262))) (Some!767 (_2!12031 (tuple2!24043 lt!592528 minValue!1262))))))

(assert (=> d!143515 (= lt!592587 (lemmaContainsTupThenGetReturnValue!360 lt!592588 (_1!12031 (tuple2!24043 lt!592528 minValue!1262)) (_2!12031 (tuple2!24043 lt!592528 minValue!1262))))))

(assert (=> d!143515 (= lt!592588 (insertStrictlySorted!489 (toList!10871 lt!592515) (_1!12031 (tuple2!24043 lt!592528 minValue!1262)) (_2!12031 (tuple2!24043 lt!592528 minValue!1262))))))

(assert (=> d!143515 (= (+!4703 lt!592515 (tuple2!24043 lt!592528 minValue!1262)) lt!592589)))

(declare-fun b!1335882 () Bool)

(declare-fun res!886633 () Bool)

(assert (=> b!1335882 (=> (not res!886633) (not e!760836))))

(assert (=> b!1335882 (= res!886633 (= (getValueByKey!717 (toList!10871 lt!592589) (_1!12031 (tuple2!24043 lt!592528 minValue!1262))) (Some!767 (_2!12031 (tuple2!24043 lt!592528 minValue!1262)))))))

(declare-fun b!1335883 () Bool)

(assert (=> b!1335883 (= e!760836 (contains!8971 (toList!10871 lt!592589) (tuple2!24043 lt!592528 minValue!1262)))))

(assert (= (and d!143515 res!886632) b!1335882))

(assert (= (and b!1335882 res!886633) b!1335883))

(declare-fun m!1223941 () Bool)

(assert (=> d!143515 m!1223941))

(declare-fun m!1223943 () Bool)

(assert (=> d!143515 m!1223943))

(declare-fun m!1223945 () Bool)

(assert (=> d!143515 m!1223945))

(declare-fun m!1223947 () Bool)

(assert (=> d!143515 m!1223947))

(declare-fun m!1223949 () Bool)

(assert (=> b!1335882 m!1223949))

(declare-fun m!1223951 () Bool)

(assert (=> b!1335883 m!1223951))

(assert (=> b!1335773 d!143515))

(declare-fun d!143517 () Bool)

(assert (=> d!143517 (= (apply!1067 lt!592522 lt!592523) (get!22120 (getValueByKey!717 (toList!10871 lt!592522) lt!592523)))))

(declare-fun bs!38245 () Bool)

(assert (= bs!38245 d!143517))

(declare-fun m!1223953 () Bool)

(assert (=> bs!38245 m!1223953))

(assert (=> bs!38245 m!1223953))

(declare-fun m!1223955 () Bool)

(assert (=> bs!38245 m!1223955))

(assert (=> b!1335773 d!143517))

(declare-fun d!143519 () Bool)

(assert (=> d!143519 (= (apply!1067 (+!4703 lt!592522 (tuple2!24043 lt!592521 zeroValue!1262)) lt!592523) (apply!1067 lt!592522 lt!592523))))

(declare-fun lt!592591 () Unit!43831)

(assert (=> d!143519 (= lt!592591 (choose!1965 lt!592522 lt!592521 zeroValue!1262 lt!592523))))

(declare-fun e!760837 () Bool)

(assert (=> d!143519 e!760837))

(declare-fun res!886634 () Bool)

(assert (=> d!143519 (=> (not res!886634) (not e!760837))))

(assert (=> d!143519 (= res!886634 (contains!8970 lt!592522 lt!592523))))

(assert (=> d!143519 (= (addApplyDifferent!570 lt!592522 lt!592521 zeroValue!1262 lt!592523) lt!592591)))

(declare-fun b!1335884 () Bool)

(assert (=> b!1335884 (= e!760837 (not (= lt!592523 lt!592521)))))

(assert (= (and d!143519 res!886634) b!1335884))

(assert (=> d!143519 m!1223763))

(declare-fun m!1223957 () Bool)

(assert (=> d!143519 m!1223957))

(assert (=> d!143519 m!1223757))

(declare-fun m!1223959 () Bool)

(assert (=> d!143519 m!1223959))

(assert (=> d!143519 m!1223763))

(assert (=> d!143519 m!1223765))

(assert (=> b!1335773 d!143519))

(declare-fun d!143521 () Bool)

(declare-fun e!760838 () Bool)

(assert (=> d!143521 e!760838))

(declare-fun res!886635 () Bool)

(assert (=> d!143521 (=> (not res!886635) (not e!760838))))

(declare-fun lt!592594 () ListLongMap!21711)

(assert (=> d!143521 (= res!886635 (contains!8970 lt!592594 (_1!12031 (tuple2!24043 lt!592516 zeroValue!1262))))))

(declare-fun lt!592593 () List!31211)

(assert (=> d!143521 (= lt!592594 (ListLongMap!21712 lt!592593))))

(declare-fun lt!592595 () Unit!43831)

(declare-fun lt!592592 () Unit!43831)

(assert (=> d!143521 (= lt!592595 lt!592592)))

(assert (=> d!143521 (= (getValueByKey!717 lt!592593 (_1!12031 (tuple2!24043 lt!592516 zeroValue!1262))) (Some!767 (_2!12031 (tuple2!24043 lt!592516 zeroValue!1262))))))

(assert (=> d!143521 (= lt!592592 (lemmaContainsTupThenGetReturnValue!360 lt!592593 (_1!12031 (tuple2!24043 lt!592516 zeroValue!1262)) (_2!12031 (tuple2!24043 lt!592516 zeroValue!1262))))))

(assert (=> d!143521 (= lt!592593 (insertStrictlySorted!489 (toList!10871 lt!592520) (_1!12031 (tuple2!24043 lt!592516 zeroValue!1262)) (_2!12031 (tuple2!24043 lt!592516 zeroValue!1262))))))

(assert (=> d!143521 (= (+!4703 lt!592520 (tuple2!24043 lt!592516 zeroValue!1262)) lt!592594)))

(declare-fun b!1335885 () Bool)

(declare-fun res!886636 () Bool)

(assert (=> b!1335885 (=> (not res!886636) (not e!760838))))

(assert (=> b!1335885 (= res!886636 (= (getValueByKey!717 (toList!10871 lt!592594) (_1!12031 (tuple2!24043 lt!592516 zeroValue!1262))) (Some!767 (_2!12031 (tuple2!24043 lt!592516 zeroValue!1262)))))))

(declare-fun b!1335886 () Bool)

(assert (=> b!1335886 (= e!760838 (contains!8971 (toList!10871 lt!592594) (tuple2!24043 lt!592516 zeroValue!1262)))))

(assert (= (and d!143521 res!886635) b!1335885))

(assert (= (and b!1335885 res!886636) b!1335886))

(declare-fun m!1223961 () Bool)

(assert (=> d!143521 m!1223961))

(declare-fun m!1223963 () Bool)

(assert (=> d!143521 m!1223963))

(declare-fun m!1223965 () Bool)

(assert (=> d!143521 m!1223965))

(declare-fun m!1223967 () Bool)

(assert (=> d!143521 m!1223967))

(declare-fun m!1223969 () Bool)

(assert (=> b!1335885 m!1223969))

(declare-fun m!1223971 () Bool)

(assert (=> b!1335886 m!1223971))

(assert (=> b!1335773 d!143521))

(declare-fun d!143523 () Bool)

(assert (=> d!143523 (contains!8970 (+!4703 lt!592520 (tuple2!24043 lt!592516 zeroValue!1262)) lt!592519)))

(declare-fun lt!592598 () Unit!43831)

(declare-fun choose!1966 (ListLongMap!21711 (_ BitVec 64) V!54299 (_ BitVec 64)) Unit!43831)

(assert (=> d!143523 (= lt!592598 (choose!1966 lt!592520 lt!592516 zeroValue!1262 lt!592519))))

(assert (=> d!143523 (contains!8970 lt!592520 lt!592519)))

(assert (=> d!143523 (= (addStillContains!1193 lt!592520 lt!592516 zeroValue!1262 lt!592519) lt!592598)))

(declare-fun bs!38246 () Bool)

(assert (= bs!38246 d!143523))

(assert (=> bs!38246 m!1223767))

(assert (=> bs!38246 m!1223767))

(assert (=> bs!38246 m!1223775))

(declare-fun m!1223973 () Bool)

(assert (=> bs!38246 m!1223973))

(declare-fun m!1223975 () Bool)

(assert (=> bs!38246 m!1223975))

(assert (=> b!1335773 d!143523))

(declare-fun d!143525 () Bool)

(assert (=> d!143525 (= (apply!1067 (+!4703 lt!592515 (tuple2!24043 lt!592528 minValue!1262)) lt!592525) (apply!1067 lt!592515 lt!592525))))

(declare-fun lt!592599 () Unit!43831)

(assert (=> d!143525 (= lt!592599 (choose!1965 lt!592515 lt!592528 minValue!1262 lt!592525))))

(declare-fun e!760839 () Bool)

(assert (=> d!143525 e!760839))

(declare-fun res!886637 () Bool)

(assert (=> d!143525 (=> (not res!886637) (not e!760839))))

(assert (=> d!143525 (= res!886637 (contains!8970 lt!592515 lt!592525))))

(assert (=> d!143525 (= (addApplyDifferent!570 lt!592515 lt!592528 minValue!1262 lt!592525) lt!592599)))

(declare-fun b!1335888 () Bool)

(assert (=> b!1335888 (= e!760839 (not (= lt!592525 lt!592528)))))

(assert (= (and d!143525 res!886637) b!1335888))

(assert (=> d!143525 m!1223751))

(declare-fun m!1223977 () Bool)

(assert (=> d!143525 m!1223977))

(assert (=> d!143525 m!1223773))

(declare-fun m!1223979 () Bool)

(assert (=> d!143525 m!1223979))

(assert (=> d!143525 m!1223751))

(assert (=> d!143525 m!1223753))

(assert (=> b!1335773 d!143525))

(declare-fun d!143527 () Bool)

(assert (=> d!143527 (= (apply!1067 (+!4703 lt!592515 (tuple2!24043 lt!592528 minValue!1262)) lt!592525) (get!22120 (getValueByKey!717 (toList!10871 (+!4703 lt!592515 (tuple2!24043 lt!592528 minValue!1262))) lt!592525)))))

(declare-fun bs!38247 () Bool)

(assert (= bs!38247 d!143527))

(declare-fun m!1223981 () Bool)

(assert (=> bs!38247 m!1223981))

(assert (=> bs!38247 m!1223981))

(declare-fun m!1223983 () Bool)

(assert (=> bs!38247 m!1223983))

(assert (=> b!1335773 d!143527))

(declare-fun d!143529 () Bool)

(declare-fun e!760840 () Bool)

(assert (=> d!143529 e!760840))

(declare-fun res!886638 () Bool)

(assert (=> d!143529 (=> (not res!886638) (not e!760840))))

(declare-fun lt!592602 () ListLongMap!21711)

(assert (=> d!143529 (= res!886638 (contains!8970 lt!592602 (_1!12031 (tuple2!24043 lt!592530 minValue!1262))))))

(declare-fun lt!592601 () List!31211)

(assert (=> d!143529 (= lt!592602 (ListLongMap!21712 lt!592601))))

(declare-fun lt!592603 () Unit!43831)

(declare-fun lt!592600 () Unit!43831)

(assert (=> d!143529 (= lt!592603 lt!592600)))

(assert (=> d!143529 (= (getValueByKey!717 lt!592601 (_1!12031 (tuple2!24043 lt!592530 minValue!1262))) (Some!767 (_2!12031 (tuple2!24043 lt!592530 minValue!1262))))))

(assert (=> d!143529 (= lt!592600 (lemmaContainsTupThenGetReturnValue!360 lt!592601 (_1!12031 (tuple2!24043 lt!592530 minValue!1262)) (_2!12031 (tuple2!24043 lt!592530 minValue!1262))))))

(assert (=> d!143529 (= lt!592601 (insertStrictlySorted!489 (toList!10871 lt!592526) (_1!12031 (tuple2!24043 lt!592530 minValue!1262)) (_2!12031 (tuple2!24043 lt!592530 minValue!1262))))))

(assert (=> d!143529 (= (+!4703 lt!592526 (tuple2!24043 lt!592530 minValue!1262)) lt!592602)))

(declare-fun b!1335889 () Bool)

(declare-fun res!886639 () Bool)

(assert (=> b!1335889 (=> (not res!886639) (not e!760840))))

(assert (=> b!1335889 (= res!886639 (= (getValueByKey!717 (toList!10871 lt!592602) (_1!12031 (tuple2!24043 lt!592530 minValue!1262))) (Some!767 (_2!12031 (tuple2!24043 lt!592530 minValue!1262)))))))

(declare-fun b!1335890 () Bool)

(assert (=> b!1335890 (= e!760840 (contains!8971 (toList!10871 lt!592602) (tuple2!24043 lt!592530 minValue!1262)))))

(assert (= (and d!143529 res!886638) b!1335889))

(assert (= (and b!1335889 res!886639) b!1335890))

(declare-fun m!1223985 () Bool)

(assert (=> d!143529 m!1223985))

(declare-fun m!1223987 () Bool)

(assert (=> d!143529 m!1223987))

(declare-fun m!1223989 () Bool)

(assert (=> d!143529 m!1223989))

(declare-fun m!1223991 () Bool)

(assert (=> d!143529 m!1223991))

(declare-fun m!1223993 () Bool)

(assert (=> b!1335889 m!1223993))

(declare-fun m!1223995 () Bool)

(assert (=> b!1335890 m!1223995))

(assert (=> b!1335773 d!143529))

(declare-fun d!143531 () Bool)

(declare-fun e!760842 () Bool)

(assert (=> d!143531 e!760842))

(declare-fun res!886640 () Bool)

(assert (=> d!143531 (=> res!886640 e!760842)))

(declare-fun lt!592606 () Bool)

(assert (=> d!143531 (= res!886640 (not lt!592606))))

(declare-fun lt!592604 () Bool)

(assert (=> d!143531 (= lt!592606 lt!592604)))

(declare-fun lt!592607 () Unit!43831)

(declare-fun e!760841 () Unit!43831)

(assert (=> d!143531 (= lt!592607 e!760841)))

(declare-fun c!125916 () Bool)

(assert (=> d!143531 (= c!125916 lt!592604)))

(assert (=> d!143531 (= lt!592604 (containsKey!735 (toList!10871 (+!4703 lt!592520 (tuple2!24043 lt!592516 zeroValue!1262))) lt!592519))))

(assert (=> d!143531 (= (contains!8970 (+!4703 lt!592520 (tuple2!24043 lt!592516 zeroValue!1262)) lt!592519) lt!592606)))

(declare-fun b!1335891 () Bool)

(declare-fun lt!592605 () Unit!43831)

(assert (=> b!1335891 (= e!760841 lt!592605)))

(assert (=> b!1335891 (= lt!592605 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 (+!4703 lt!592520 (tuple2!24043 lt!592516 zeroValue!1262))) lt!592519))))

(assert (=> b!1335891 (isDefined!520 (getValueByKey!717 (toList!10871 (+!4703 lt!592520 (tuple2!24043 lt!592516 zeroValue!1262))) lt!592519))))

(declare-fun b!1335892 () Bool)

(declare-fun Unit!43839 () Unit!43831)

(assert (=> b!1335892 (= e!760841 Unit!43839)))

(declare-fun b!1335893 () Bool)

(assert (=> b!1335893 (= e!760842 (isDefined!520 (getValueByKey!717 (toList!10871 (+!4703 lt!592520 (tuple2!24043 lt!592516 zeroValue!1262))) lt!592519)))))

(assert (= (and d!143531 c!125916) b!1335891))

(assert (= (and d!143531 (not c!125916)) b!1335892))

(assert (= (and d!143531 (not res!886640)) b!1335893))

(declare-fun m!1223997 () Bool)

(assert (=> d!143531 m!1223997))

(declare-fun m!1223999 () Bool)

(assert (=> b!1335891 m!1223999))

(declare-fun m!1224001 () Bool)

(assert (=> b!1335891 m!1224001))

(assert (=> b!1335891 m!1224001))

(declare-fun m!1224003 () Bool)

(assert (=> b!1335891 m!1224003))

(assert (=> b!1335893 m!1224001))

(assert (=> b!1335893 m!1224001))

(assert (=> b!1335893 m!1224003))

(assert (=> b!1335773 d!143531))

(declare-fun d!143533 () Bool)

(assert (=> d!143533 (= (apply!1067 lt!592526 lt!592513) (get!22120 (getValueByKey!717 (toList!10871 lt!592526) lt!592513)))))

(declare-fun bs!38248 () Bool)

(assert (= bs!38248 d!143533))

(declare-fun m!1224005 () Bool)

(assert (=> bs!38248 m!1224005))

(assert (=> bs!38248 m!1224005))

(declare-fun m!1224007 () Bool)

(assert (=> bs!38248 m!1224007))

(assert (=> b!1335773 d!143533))

(declare-fun d!143535 () Bool)

(assert (=> d!143535 (= (apply!1067 (+!4703 lt!592522 (tuple2!24043 lt!592521 zeroValue!1262)) lt!592523) (get!22120 (getValueByKey!717 (toList!10871 (+!4703 lt!592522 (tuple2!24043 lt!592521 zeroValue!1262))) lt!592523)))))

(declare-fun bs!38249 () Bool)

(assert (= bs!38249 d!143535))

(declare-fun m!1224009 () Bool)

(assert (=> bs!38249 m!1224009))

(assert (=> bs!38249 m!1224009))

(declare-fun m!1224011 () Bool)

(assert (=> bs!38249 m!1224011))

(assert (=> b!1335773 d!143535))

(declare-fun d!143537 () Bool)

(assert (=> d!143537 (= (apply!1067 lt!592515 lt!592525) (get!22120 (getValueByKey!717 (toList!10871 lt!592515) lt!592525)))))

(declare-fun bs!38250 () Bool)

(assert (= bs!38250 d!143537))

(declare-fun m!1224013 () Bool)

(assert (=> bs!38250 m!1224013))

(assert (=> bs!38250 m!1224013))

(declare-fun m!1224015 () Bool)

(assert (=> bs!38250 m!1224015))

(assert (=> b!1335773 d!143537))

(declare-fun lt!592610 () Bool)

(declare-fun d!143539 () Bool)

(declare-fun content!665 (List!31211) (InoxSet tuple2!24042))

(assert (=> d!143539 (= lt!592610 (select (content!665 (toList!10871 lt!592414)) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!760848 () Bool)

(assert (=> d!143539 (= lt!592610 e!760848)))

(declare-fun res!886645 () Bool)

(assert (=> d!143539 (=> (not res!886645) (not e!760848))))

(assert (=> d!143539 (= res!886645 ((_ is Cons!31207) (toList!10871 lt!592414)))))

(assert (=> d!143539 (= (contains!8971 (toList!10871 lt!592414) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!592610)))

(declare-fun b!1335898 () Bool)

(declare-fun e!760847 () Bool)

(assert (=> b!1335898 (= e!760848 e!760847)))

(declare-fun res!886646 () Bool)

(assert (=> b!1335898 (=> res!886646 e!760847)))

(assert (=> b!1335898 (= res!886646 (= (h!32416 (toList!10871 lt!592414)) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1335899 () Bool)

(assert (=> b!1335899 (= e!760847 (contains!8971 (t!45486 (toList!10871 lt!592414)) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!143539 res!886645) b!1335898))

(assert (= (and b!1335898 (not res!886646)) b!1335899))

(declare-fun m!1224017 () Bool)

(assert (=> d!143539 m!1224017))

(declare-fun m!1224019 () Bool)

(assert (=> d!143539 m!1224019))

(declare-fun m!1224021 () Bool)

(assert (=> b!1335899 m!1224021))

(assert (=> b!1335635 d!143539))

(declare-fun b!1335900 () Bool)

(declare-fun e!760854 () ListLongMap!21711)

(declare-fun e!760855 () ListLongMap!21711)

(assert (=> b!1335900 (= e!760854 e!760855)))

(declare-fun c!125918 () Bool)

(assert (=> b!1335900 (= c!125918 (validKeyInArray!0 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001))))))

(declare-fun b!1335901 () Bool)

(declare-fun e!760849 () Bool)

(declare-fun lt!592612 () ListLongMap!21711)

(assert (=> b!1335901 (= e!760849 (isEmpty!1084 lt!592612))))

(declare-fun b!1335902 () Bool)

(declare-fun e!760850 () Bool)

(assert (=> b!1335902 (= e!760850 (validKeyInArray!0 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001))))))

(assert (=> b!1335902 (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!1335903 () Bool)

(declare-fun res!886650 () Bool)

(declare-fun e!760852 () Bool)

(assert (=> b!1335903 (=> (not res!886650) (not e!760852))))

(assert (=> b!1335903 (= res!886650 (not (contains!8970 lt!592612 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1335904 () Bool)

(declare-fun e!760851 () Bool)

(assert (=> b!1335904 (= e!760851 e!760849)))

(declare-fun c!125920 () Bool)

(assert (=> b!1335904 (= c!125920 (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44327 _keys!1590)))))

(declare-fun b!1335905 () Bool)

(declare-fun e!760853 () Bool)

(assert (=> b!1335905 (= e!760851 e!760853)))

(assert (=> b!1335905 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44327 _keys!1590)))))

(declare-fun res!886647 () Bool)

(assert (=> b!1335905 (= res!886647 (contains!8970 lt!592612 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001))))))

(assert (=> b!1335905 (=> (not res!886647) (not e!760853))))

(declare-fun d!143541 () Bool)

(assert (=> d!143541 e!760852))

(declare-fun res!886648 () Bool)

(assert (=> d!143541 (=> (not res!886648) (not e!760852))))

(assert (=> d!143541 (= res!886648 (not (contains!8970 lt!592612 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143541 (= lt!592612 e!760854)))

(declare-fun c!125919 () Bool)

(assert (=> d!143541 (= c!125919 (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44327 _keys!1590)))))

(assert (=> d!143541 (validMask!0 mask!1998)))

(assert (=> d!143541 (= (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323) lt!592612)))

(declare-fun b!1335906 () Bool)

(assert (=> b!1335906 (= e!760854 (ListLongMap!21712 Nil!31208))))

(declare-fun b!1335907 () Bool)

(declare-fun call!64851 () ListLongMap!21711)

(assert (=> b!1335907 (= e!760855 call!64851)))

(declare-fun b!1335908 () Bool)

(assert (=> b!1335908 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44327 _keys!1590)))))

(assert (=> b!1335908 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44328 _values!1320)))))

(assert (=> b!1335908 (= e!760853 (= (apply!1067 lt!592612 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001))) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1335909 () Bool)

(assert (=> b!1335909 (= e!760849 (= lt!592612 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun b!1335910 () Bool)

(declare-fun lt!592616 () Unit!43831)

(declare-fun lt!592614 () Unit!43831)

(assert (=> b!1335910 (= lt!592616 lt!592614)))

(declare-fun lt!592611 () ListLongMap!21711)

(declare-fun lt!592617 () V!54299)

(declare-fun lt!592613 () (_ BitVec 64))

(declare-fun lt!592615 () (_ BitVec 64))

(assert (=> b!1335910 (not (contains!8970 (+!4703 lt!592611 (tuple2!24043 lt!592615 lt!592617)) lt!592613))))

(assert (=> b!1335910 (= lt!592614 (addStillNotContains!505 lt!592611 lt!592615 lt!592617 lt!592613))))

(assert (=> b!1335910 (= lt!592613 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1335910 (= lt!592617 (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1335910 (= lt!592615 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)))))

(assert (=> b!1335910 (= lt!592611 call!64851)))

(assert (=> b!1335910 (= e!760855 (+!4703 call!64851 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!64848 () Bool)

(assert (=> bm!64848 (= call!64851 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1323))))

(declare-fun b!1335911 () Bool)

(assert (=> b!1335911 (= e!760852 e!760851)))

(declare-fun c!125917 () Bool)

(assert (=> b!1335911 (= c!125917 e!760850)))

(declare-fun res!886649 () Bool)

(assert (=> b!1335911 (=> (not res!886649) (not e!760850))))

(assert (=> b!1335911 (= res!886649 (bvslt (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) (size!44327 _keys!1590)))))

(assert (= (and d!143541 c!125919) b!1335906))

(assert (= (and d!143541 (not c!125919)) b!1335900))

(assert (= (and b!1335900 c!125918) b!1335910))

(assert (= (and b!1335900 (not c!125918)) b!1335907))

(assert (= (or b!1335910 b!1335907) bm!64848))

(assert (= (and d!143541 res!886648) b!1335903))

(assert (= (and b!1335903 res!886650) b!1335911))

(assert (= (and b!1335911 res!886649) b!1335902))

(assert (= (and b!1335911 c!125917) b!1335905))

(assert (= (and b!1335911 (not c!125917)) b!1335904))

(assert (= (and b!1335905 res!886647) b!1335908))

(assert (= (and b!1335904 c!125920) b!1335909))

(assert (= (and b!1335904 (not c!125920)) b!1335901))

(declare-fun b_lambda!24147 () Bool)

(assert (=> (not b_lambda!24147) (not b!1335908)))

(assert (=> b!1335908 t!45485))

(declare-fun b_and!49925 () Bool)

(assert (= b_and!49923 (and (=> t!45485 result!25221) b_and!49925)))

(declare-fun b_lambda!24149 () Bool)

(assert (=> (not b_lambda!24149) (not b!1335910)))

(assert (=> b!1335910 t!45485))

(declare-fun b_and!49927 () Bool)

(assert (= b_and!49925 (and (=> t!45485 result!25221) b_and!49927)))

(declare-fun m!1224023 () Bool)

(assert (=> b!1335901 m!1224023))

(declare-fun m!1224025 () Bool)

(assert (=> b!1335905 m!1224025))

(assert (=> b!1335905 m!1224025))

(declare-fun m!1224027 () Bool)

(assert (=> b!1335905 m!1224027))

(assert (=> b!1335902 m!1224025))

(assert (=> b!1335902 m!1224025))

(declare-fun m!1224029 () Bool)

(assert (=> b!1335902 m!1224029))

(assert (=> b!1335900 m!1224025))

(assert (=> b!1335900 m!1224025))

(assert (=> b!1335900 m!1224029))

(declare-fun m!1224031 () Bool)

(assert (=> b!1335910 m!1224031))

(declare-fun m!1224033 () Bool)

(assert (=> b!1335910 m!1224033))

(declare-fun m!1224035 () Bool)

(assert (=> b!1335910 m!1224035))

(declare-fun m!1224037 () Bool)

(assert (=> b!1335910 m!1224037))

(assert (=> b!1335910 m!1223609))

(declare-fun m!1224039 () Bool)

(assert (=> b!1335910 m!1224039))

(declare-fun m!1224041 () Bool)

(assert (=> b!1335910 m!1224041))

(assert (=> b!1335910 m!1224037))

(assert (=> b!1335910 m!1223609))

(assert (=> b!1335910 m!1224033))

(assert (=> b!1335910 m!1224025))

(declare-fun m!1224043 () Bool)

(assert (=> d!143541 m!1224043))

(assert (=> d!143541 m!1223597))

(declare-fun m!1224045 () Bool)

(assert (=> bm!64848 m!1224045))

(declare-fun m!1224047 () Bool)

(assert (=> b!1335903 m!1224047))

(assert (=> b!1335908 m!1224025))

(assert (=> b!1335908 m!1224037))

(assert (=> b!1335908 m!1223609))

(assert (=> b!1335908 m!1224039))

(assert (=> b!1335908 m!1224037))

(assert (=> b!1335908 m!1223609))

(assert (=> b!1335908 m!1224025))

(declare-fun m!1224049 () Bool)

(assert (=> b!1335908 m!1224049))

(assert (=> b!1335909 m!1224045))

(assert (=> b!1335671 d!143541))

(assert (=> d!143461 d!143437))

(declare-fun d!143543 () Bool)

(declare-fun res!886655 () Bool)

(declare-fun e!760860 () Bool)

(assert (=> d!143543 (=> res!886655 e!760860)))

(assert (=> d!143543 (= res!886655 (and ((_ is Cons!31207) (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (= (_1!12031 (h!32416 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)))))

(assert (=> d!143543 (= (containsKey!735 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153) e!760860)))

(declare-fun b!1335916 () Bool)

(declare-fun e!760861 () Bool)

(assert (=> b!1335916 (= e!760860 e!760861)))

(declare-fun res!886656 () Bool)

(assert (=> b!1335916 (=> (not res!886656) (not e!760861))))

(assert (=> b!1335916 (= res!886656 (and (or (not ((_ is Cons!31207) (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) (bvsle (_1!12031 (h!32416 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)) ((_ is Cons!31207) (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) (bvslt (_1!12031 (h!32416 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)))) k0!1153)))))

(declare-fun b!1335917 () Bool)

(assert (=> b!1335917 (= e!760861 (containsKey!735 (t!45486 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))) k0!1153))))

(assert (= (and d!143543 (not res!886655)) b!1335916))

(assert (= (and b!1335916 res!886656) b!1335917))

(declare-fun m!1224051 () Bool)

(assert (=> b!1335917 m!1224051))

(assert (=> d!143459 d!143543))

(declare-fun d!143545 () Bool)

(declare-fun lt!592618 () Bool)

(assert (=> d!143545 (= lt!592618 (select (content!665 (toList!10871 lt!592418)) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun e!760863 () Bool)

(assert (=> d!143545 (= lt!592618 e!760863)))

(declare-fun res!886657 () Bool)

(assert (=> d!143545 (=> (not res!886657) (not e!760863))))

(assert (=> d!143545 (= res!886657 ((_ is Cons!31207) (toList!10871 lt!592418)))))

(assert (=> d!143545 (= (contains!8971 (toList!10871 lt!592418) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) lt!592618)))

(declare-fun b!1335918 () Bool)

(declare-fun e!760862 () Bool)

(assert (=> b!1335918 (= e!760863 e!760862)))

(declare-fun res!886658 () Bool)

(assert (=> b!1335918 (=> res!886658 e!760862)))

(assert (=> b!1335918 (= res!886658 (= (h!32416 (toList!10871 lt!592418)) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun b!1335919 () Bool)

(assert (=> b!1335919 (= e!760862 (contains!8971 (t!45486 (toList!10871 lt!592418)) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(assert (= (and d!143545 res!886657) b!1335918))

(assert (= (and b!1335918 (not res!886658)) b!1335919))

(declare-fun m!1224053 () Bool)

(assert (=> d!143545 m!1224053))

(declare-fun m!1224055 () Bool)

(assert (=> d!143545 m!1224055))

(declare-fun m!1224057 () Bool)

(assert (=> b!1335919 m!1224057))

(assert (=> b!1335637 d!143545))

(declare-fun d!143547 () Bool)

(assert (=> d!143547 (= (apply!1067 lt!592435 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22120 (getValueByKey!717 (toList!10871 lt!592435) (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))))

(declare-fun bs!38251 () Bool)

(assert (= bs!38251 d!143547))

(assert (=> bs!38251 m!1223687))

(assert (=> bs!38251 m!1223897))

(assert (=> bs!38251 m!1223897))

(declare-fun m!1224059 () Bool)

(assert (=> bs!38251 m!1224059))

(assert (=> b!1335670 d!143547))

(declare-fun d!143549 () Bool)

(declare-fun c!125921 () Bool)

(assert (=> d!143549 (= c!125921 ((_ is ValueCellFull!17550) (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun e!760864 () V!54299)

(assert (=> d!143549 (= (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) e!760864)))

(declare-fun b!1335920 () Bool)

(assert (=> b!1335920 (= e!760864 (get!22118 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1335921 () Bool)

(assert (=> b!1335921 (= e!760864 (get!22119 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143549 c!125921) b!1335920))

(assert (= (and d!143549 (not c!125921)) b!1335921))

(assert (=> b!1335920 m!1223699))

(assert (=> b!1335920 m!1223609))

(declare-fun m!1224061 () Bool)

(assert (=> b!1335920 m!1224061))

(assert (=> b!1335921 m!1223699))

(assert (=> b!1335921 m!1223609))

(declare-fun m!1224063 () Bool)

(assert (=> b!1335921 m!1224063))

(assert (=> b!1335670 d!143549))

(declare-fun d!143551 () Bool)

(declare-fun res!886659 () Bool)

(declare-fun e!760865 () Bool)

(assert (=> d!143551 (=> res!886659 e!760865)))

(assert (=> d!143551 (= res!886659 (and ((_ is Cons!31207) (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (= (_1!12031 (h!32416 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))) k0!1153)))))

(assert (=> d!143551 (= (containsKey!735 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) k0!1153) e!760865)))

(declare-fun b!1335922 () Bool)

(declare-fun e!760866 () Bool)

(assert (=> b!1335922 (= e!760865 e!760866)))

(declare-fun res!886660 () Bool)

(assert (=> b!1335922 (=> (not res!886660) (not e!760866))))

(assert (=> b!1335922 (= res!886660 (and (or (not ((_ is Cons!31207) (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))) (bvsle (_1!12031 (h!32416 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))) k0!1153)) ((_ is Cons!31207) (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) (bvslt (_1!12031 (h!32416 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))) k0!1153)))))

(declare-fun b!1335923 () Bool)

(assert (=> b!1335923 (= e!760866 (containsKey!735 (t!45486 (toList!10871 (+!4703 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))) k0!1153))))

(assert (= (and d!143551 (not res!886659)) b!1335922))

(assert (= (and b!1335922 res!886660) b!1335923))

(declare-fun m!1224065 () Bool)

(assert (=> b!1335923 m!1224065))

(assert (=> d!143451 d!143551))

(assert (=> bm!64818 d!143541))

(assert (=> bm!64843 d!143511))

(declare-fun d!143553 () Bool)

(declare-fun e!760868 () Bool)

(assert (=> d!143553 e!760868))

(declare-fun res!886661 () Bool)

(assert (=> d!143553 (=> res!886661 e!760868)))

(declare-fun lt!592621 () Bool)

(assert (=> d!143553 (= res!886661 (not lt!592621))))

(declare-fun lt!592619 () Bool)

(assert (=> d!143553 (= lt!592621 lt!592619)))

(declare-fun lt!592622 () Unit!43831)

(declare-fun e!760867 () Unit!43831)

(assert (=> d!143553 (= lt!592622 e!760867)))

(declare-fun c!125922 () Bool)

(assert (=> d!143553 (= c!125922 lt!592619)))

(assert (=> d!143553 (= lt!592619 (containsKey!735 (toList!10871 lt!592510) (select (arr!43776 _keys!1590) from!1980)))))

(assert (=> d!143553 (= (contains!8970 lt!592510 (select (arr!43776 _keys!1590) from!1980)) lt!592621)))

(declare-fun b!1335924 () Bool)

(declare-fun lt!592620 () Unit!43831)

(assert (=> b!1335924 (= e!760867 lt!592620)))

(assert (=> b!1335924 (= lt!592620 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 lt!592510) (select (arr!43776 _keys!1590) from!1980)))))

(assert (=> b!1335924 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592510) (select (arr!43776 _keys!1590) from!1980)))))

(declare-fun b!1335925 () Bool)

(declare-fun Unit!43840 () Unit!43831)

(assert (=> b!1335925 (= e!760867 Unit!43840)))

(declare-fun b!1335926 () Bool)

(assert (=> b!1335926 (= e!760868 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592510) (select (arr!43776 _keys!1590) from!1980))))))

(assert (= (and d!143553 c!125922) b!1335924))

(assert (= (and d!143553 (not c!125922)) b!1335925))

(assert (= (and d!143553 (not res!886661)) b!1335926))

(assert (=> d!143553 m!1223593))

(declare-fun m!1224067 () Bool)

(assert (=> d!143553 m!1224067))

(assert (=> b!1335924 m!1223593))

(declare-fun m!1224069 () Bool)

(assert (=> b!1335924 m!1224069))

(assert (=> b!1335924 m!1223593))

(declare-fun m!1224071 () Bool)

(assert (=> b!1335924 m!1224071))

(assert (=> b!1335924 m!1224071))

(declare-fun m!1224073 () Bool)

(assert (=> b!1335924 m!1224073))

(assert (=> b!1335926 m!1223593))

(assert (=> b!1335926 m!1224071))

(assert (=> b!1335926 m!1224071))

(assert (=> b!1335926 m!1224073))

(assert (=> b!1335776 d!143553))

(declare-fun d!143555 () Bool)

(declare-fun e!760870 () Bool)

(assert (=> d!143555 e!760870))

(declare-fun res!886662 () Bool)

(assert (=> d!143555 (=> res!886662 e!760870)))

(declare-fun lt!592625 () Bool)

(assert (=> d!143555 (= res!886662 (not lt!592625))))

(declare-fun lt!592623 () Bool)

(assert (=> d!143555 (= lt!592625 lt!592623)))

(declare-fun lt!592626 () Unit!43831)

(declare-fun e!760869 () Unit!43831)

(assert (=> d!143555 (= lt!592626 e!760869)))

(declare-fun c!125923 () Bool)

(assert (=> d!143555 (= c!125923 lt!592623)))

(assert (=> d!143555 (= lt!592623 (containsKey!735 (toList!10871 (+!4703 lt!592434 (tuple2!24043 lt!592438 lt!592440))) lt!592436))))

(assert (=> d!143555 (= (contains!8970 (+!4703 lt!592434 (tuple2!24043 lt!592438 lt!592440)) lt!592436) lt!592625)))

(declare-fun b!1335927 () Bool)

(declare-fun lt!592624 () Unit!43831)

(assert (=> b!1335927 (= e!760869 lt!592624)))

(assert (=> b!1335927 (= lt!592624 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 (+!4703 lt!592434 (tuple2!24043 lt!592438 lt!592440))) lt!592436))))

(assert (=> b!1335927 (isDefined!520 (getValueByKey!717 (toList!10871 (+!4703 lt!592434 (tuple2!24043 lt!592438 lt!592440))) lt!592436))))

(declare-fun b!1335928 () Bool)

(declare-fun Unit!43841 () Unit!43831)

(assert (=> b!1335928 (= e!760869 Unit!43841)))

(declare-fun b!1335929 () Bool)

(assert (=> b!1335929 (= e!760870 (isDefined!520 (getValueByKey!717 (toList!10871 (+!4703 lt!592434 (tuple2!24043 lt!592438 lt!592440))) lt!592436)))))

(assert (= (and d!143555 c!125923) b!1335927))

(assert (= (and d!143555 (not c!125923)) b!1335928))

(assert (= (and d!143555 (not res!886662)) b!1335929))

(declare-fun m!1224075 () Bool)

(assert (=> d!143555 m!1224075))

(declare-fun m!1224077 () Bool)

(assert (=> b!1335927 m!1224077))

(declare-fun m!1224079 () Bool)

(assert (=> b!1335927 m!1224079))

(assert (=> b!1335927 m!1224079))

(declare-fun m!1224081 () Bool)

(assert (=> b!1335927 m!1224081))

(assert (=> b!1335929 m!1224079))

(assert (=> b!1335929 m!1224079))

(assert (=> b!1335929 m!1224081))

(assert (=> b!1335672 d!143555))

(declare-fun d!143557 () Bool)

(declare-fun e!760871 () Bool)

(assert (=> d!143557 e!760871))

(declare-fun res!886663 () Bool)

(assert (=> d!143557 (=> (not res!886663) (not e!760871))))

(declare-fun lt!592629 () ListLongMap!21711)

(assert (=> d!143557 (= res!886663 (contains!8970 lt!592629 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!592628 () List!31211)

(assert (=> d!143557 (= lt!592629 (ListLongMap!21712 lt!592628))))

(declare-fun lt!592630 () Unit!43831)

(declare-fun lt!592627 () Unit!43831)

(assert (=> d!143557 (= lt!592630 lt!592627)))

(assert (=> d!143557 (= (getValueByKey!717 lt!592628 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!767 (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143557 (= lt!592627 (lemmaContainsTupThenGetReturnValue!360 lt!592628 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143557 (= lt!592628 (insertStrictlySorted!489 (toList!10871 call!64821) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143557 (= (+!4703 call!64821 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!592629)))

(declare-fun b!1335930 () Bool)

(declare-fun res!886664 () Bool)

(assert (=> b!1335930 (=> (not res!886664) (not e!760871))))

(assert (=> b!1335930 (= res!886664 (= (getValueByKey!717 (toList!10871 lt!592629) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!767 (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1335931 () Bool)

(assert (=> b!1335931 (= e!760871 (contains!8971 (toList!10871 lt!592629) (tuple2!24043 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22117 (select (arr!43777 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!143557 res!886663) b!1335930))

(assert (= (and b!1335930 res!886664) b!1335931))

(declare-fun m!1224083 () Bool)

(assert (=> d!143557 m!1224083))

(declare-fun m!1224085 () Bool)

(assert (=> d!143557 m!1224085))

(declare-fun m!1224087 () Bool)

(assert (=> d!143557 m!1224087))

(declare-fun m!1224089 () Bool)

(assert (=> d!143557 m!1224089))

(declare-fun m!1224091 () Bool)

(assert (=> b!1335930 m!1224091))

(declare-fun m!1224093 () Bool)

(assert (=> b!1335931 m!1224093))

(assert (=> b!1335672 d!143557))

(declare-fun d!143559 () Bool)

(assert (=> d!143559 (not (contains!8970 (+!4703 lt!592434 (tuple2!24043 lt!592438 lt!592440)) lt!592436))))

(declare-fun lt!592633 () Unit!43831)

(declare-fun choose!1967 (ListLongMap!21711 (_ BitVec 64) V!54299 (_ BitVec 64)) Unit!43831)

(assert (=> d!143559 (= lt!592633 (choose!1967 lt!592434 lt!592438 lt!592440 lt!592436))))

(declare-fun e!760874 () Bool)

(assert (=> d!143559 e!760874))

(declare-fun res!886667 () Bool)

(assert (=> d!143559 (=> (not res!886667) (not e!760874))))

(assert (=> d!143559 (= res!886667 (not (contains!8970 lt!592434 lt!592436)))))

(assert (=> d!143559 (= (addStillNotContains!505 lt!592434 lt!592438 lt!592440 lt!592436) lt!592633)))

(declare-fun b!1335935 () Bool)

(assert (=> b!1335935 (= e!760874 (not (= lt!592438 lt!592436)))))

(assert (= (and d!143559 res!886667) b!1335935))

(assert (=> d!143559 m!1223695))

(assert (=> d!143559 m!1223695))

(assert (=> d!143559 m!1223697))

(declare-fun m!1224095 () Bool)

(assert (=> d!143559 m!1224095))

(declare-fun m!1224097 () Bool)

(assert (=> d!143559 m!1224097))

(assert (=> b!1335672 d!143559))

(assert (=> b!1335672 d!143549))

(declare-fun d!143561 () Bool)

(declare-fun e!760875 () Bool)

(assert (=> d!143561 e!760875))

(declare-fun res!886668 () Bool)

(assert (=> d!143561 (=> (not res!886668) (not e!760875))))

(declare-fun lt!592636 () ListLongMap!21711)

(assert (=> d!143561 (= res!886668 (contains!8970 lt!592636 (_1!12031 (tuple2!24043 lt!592438 lt!592440))))))

(declare-fun lt!592635 () List!31211)

(assert (=> d!143561 (= lt!592636 (ListLongMap!21712 lt!592635))))

(declare-fun lt!592637 () Unit!43831)

(declare-fun lt!592634 () Unit!43831)

(assert (=> d!143561 (= lt!592637 lt!592634)))

(assert (=> d!143561 (= (getValueByKey!717 lt!592635 (_1!12031 (tuple2!24043 lt!592438 lt!592440))) (Some!767 (_2!12031 (tuple2!24043 lt!592438 lt!592440))))))

(assert (=> d!143561 (= lt!592634 (lemmaContainsTupThenGetReturnValue!360 lt!592635 (_1!12031 (tuple2!24043 lt!592438 lt!592440)) (_2!12031 (tuple2!24043 lt!592438 lt!592440))))))

(assert (=> d!143561 (= lt!592635 (insertStrictlySorted!489 (toList!10871 lt!592434) (_1!12031 (tuple2!24043 lt!592438 lt!592440)) (_2!12031 (tuple2!24043 lt!592438 lt!592440))))))

(assert (=> d!143561 (= (+!4703 lt!592434 (tuple2!24043 lt!592438 lt!592440)) lt!592636)))

(declare-fun b!1335936 () Bool)

(declare-fun res!886669 () Bool)

(assert (=> b!1335936 (=> (not res!886669) (not e!760875))))

(assert (=> b!1335936 (= res!886669 (= (getValueByKey!717 (toList!10871 lt!592636) (_1!12031 (tuple2!24043 lt!592438 lt!592440))) (Some!767 (_2!12031 (tuple2!24043 lt!592438 lt!592440)))))))

(declare-fun b!1335937 () Bool)

(assert (=> b!1335937 (= e!760875 (contains!8971 (toList!10871 lt!592636) (tuple2!24043 lt!592438 lt!592440)))))

(assert (= (and d!143561 res!886668) b!1335936))

(assert (= (and b!1335936 res!886669) b!1335937))

(declare-fun m!1224099 () Bool)

(assert (=> d!143561 m!1224099))

(declare-fun m!1224101 () Bool)

(assert (=> d!143561 m!1224101))

(declare-fun m!1224103 () Bool)

(assert (=> d!143561 m!1224103))

(declare-fun m!1224105 () Bool)

(assert (=> d!143561 m!1224105))

(declare-fun m!1224107 () Bool)

(assert (=> b!1335936 m!1224107))

(declare-fun m!1224109 () Bool)

(assert (=> b!1335937 m!1224109))

(assert (=> b!1335672 d!143561))

(declare-fun d!143563 () Bool)

(declare-fun e!760877 () Bool)

(assert (=> d!143563 e!760877))

(declare-fun res!886670 () Bool)

(assert (=> d!143563 (=> res!886670 e!760877)))

(declare-fun lt!592640 () Bool)

(assert (=> d!143563 (= res!886670 (not lt!592640))))

(declare-fun lt!592638 () Bool)

(assert (=> d!143563 (= lt!592640 lt!592638)))

(declare-fun lt!592641 () Unit!43831)

(declare-fun e!760876 () Unit!43831)

(assert (=> d!143563 (= lt!592641 e!760876)))

(declare-fun c!125924 () Bool)

(assert (=> d!143563 (= c!125924 lt!592638)))

(assert (=> d!143563 (= lt!592638 (containsKey!735 (toList!10871 lt!592510) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143563 (= (contains!8970 lt!592510 #b0000000000000000000000000000000000000000000000000000000000000000) lt!592640)))

(declare-fun b!1335938 () Bool)

(declare-fun lt!592639 () Unit!43831)

(assert (=> b!1335938 (= e!760876 lt!592639)))

(assert (=> b!1335938 (= lt!592639 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 lt!592510) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1335938 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592510) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1335939 () Bool)

(declare-fun Unit!43842 () Unit!43831)

(assert (=> b!1335939 (= e!760876 Unit!43842)))

(declare-fun b!1335940 () Bool)

(assert (=> b!1335940 (= e!760877 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592510) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143563 c!125924) b!1335938))

(assert (= (and d!143563 (not c!125924)) b!1335939))

(assert (= (and d!143563 (not res!886670)) b!1335940))

(declare-fun m!1224111 () Bool)

(assert (=> d!143563 m!1224111))

(declare-fun m!1224113 () Bool)

(assert (=> b!1335938 m!1224113))

(declare-fun m!1224115 () Bool)

(assert (=> b!1335938 m!1224115))

(assert (=> b!1335938 m!1224115))

(declare-fun m!1224117 () Bool)

(assert (=> b!1335938 m!1224117))

(assert (=> b!1335940 m!1224115))

(assert (=> b!1335940 m!1224115))

(assert (=> b!1335940 m!1224117))

(assert (=> bm!64844 d!143563))

(declare-fun d!143565 () Bool)

(assert (=> d!143565 (= (apply!1067 lt!592510 (select (arr!43776 _keys!1590) from!1980)) (get!22120 (getValueByKey!717 (toList!10871 lt!592510) (select (arr!43776 _keys!1590) from!1980))))))

(declare-fun bs!38252 () Bool)

(assert (= bs!38252 d!143565))

(assert (=> bs!38252 m!1223593))

(assert (=> bs!38252 m!1224071))

(assert (=> bs!38252 m!1224071))

(declare-fun m!1224119 () Bool)

(assert (=> bs!38252 m!1224119))

(assert (=> b!1335761 d!143565))

(assert (=> b!1335761 d!143449))

(declare-fun d!143567 () Bool)

(assert (=> d!143567 (= (apply!1067 lt!592510 #b1000000000000000000000000000000000000000000000000000000000000000) (get!22120 (getValueByKey!717 (toList!10871 lt!592510) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38253 () Bool)

(assert (= bs!38253 d!143567))

(declare-fun m!1224121 () Bool)

(assert (=> bs!38253 m!1224121))

(assert (=> bs!38253 m!1224121))

(declare-fun m!1224123 () Bool)

(assert (=> bs!38253 m!1224123))

(assert (=> b!1335777 d!143567))

(declare-fun d!143569 () Bool)

(declare-fun e!760879 () Bool)

(assert (=> d!143569 e!760879))

(declare-fun res!886671 () Bool)

(assert (=> d!143569 (=> res!886671 e!760879)))

(declare-fun lt!592644 () Bool)

(assert (=> d!143569 (= res!886671 (not lt!592644))))

(declare-fun lt!592642 () Bool)

(assert (=> d!143569 (= lt!592644 lt!592642)))

(declare-fun lt!592645 () Unit!43831)

(declare-fun e!760878 () Unit!43831)

(assert (=> d!143569 (= lt!592645 e!760878)))

(declare-fun c!125925 () Bool)

(assert (=> d!143569 (= c!125925 lt!592642)))

(assert (=> d!143569 (= lt!592642 (containsKey!735 (toList!10871 lt!592414) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143569 (= (contains!8970 lt!592414 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!592644)))

(declare-fun b!1335941 () Bool)

(declare-fun lt!592643 () Unit!43831)

(assert (=> b!1335941 (= e!760878 lt!592643)))

(assert (=> b!1335941 (= lt!592643 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 lt!592414) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!1335941 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592414) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1335942 () Bool)

(declare-fun Unit!43843 () Unit!43831)

(assert (=> b!1335942 (= e!760878 Unit!43843)))

(declare-fun b!1335943 () Bool)

(assert (=> b!1335943 (= e!760879 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592414) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!143569 c!125925) b!1335941))

(assert (= (and d!143569 (not c!125925)) b!1335942))

(assert (= (and d!143569 (not res!886671)) b!1335943))

(declare-fun m!1224125 () Bool)

(assert (=> d!143569 m!1224125))

(declare-fun m!1224127 () Bool)

(assert (=> b!1335941 m!1224127))

(assert (=> b!1335941 m!1223669))

(assert (=> b!1335941 m!1223669))

(declare-fun m!1224129 () Bool)

(assert (=> b!1335941 m!1224129))

(assert (=> b!1335943 m!1223669))

(assert (=> b!1335943 m!1223669))

(assert (=> b!1335943 m!1224129))

(assert (=> d!143443 d!143569))

(declare-fun b!1335944 () Bool)

(declare-fun e!760880 () Option!768)

(assert (=> b!1335944 (= e!760880 (Some!767 (_2!12031 (h!32416 lt!592413))))))

(declare-fun c!125926 () Bool)

(declare-fun d!143571 () Bool)

(assert (=> d!143571 (= c!125926 (and ((_ is Cons!31207) lt!592413) (= (_1!12031 (h!32416 lt!592413)) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!143571 (= (getValueByKey!717 lt!592413 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!760880)))

(declare-fun e!760881 () Option!768)

(declare-fun b!1335946 () Bool)

(assert (=> b!1335946 (= e!760881 (getValueByKey!717 (t!45486 lt!592413) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1335947 () Bool)

(assert (=> b!1335947 (= e!760881 None!766)))

(declare-fun b!1335945 () Bool)

(assert (=> b!1335945 (= e!760880 e!760881)))

(declare-fun c!125927 () Bool)

(assert (=> b!1335945 (= c!125927 (and ((_ is Cons!31207) lt!592413) (not (= (_1!12031 (h!32416 lt!592413)) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(assert (= (and d!143571 c!125926) b!1335944))

(assert (= (and d!143571 (not c!125926)) b!1335945))

(assert (= (and b!1335945 c!125927) b!1335946))

(assert (= (and b!1335945 (not c!125927)) b!1335947))

(declare-fun m!1224131 () Bool)

(assert (=> b!1335946 m!1224131))

(assert (=> d!143443 d!143571))

(declare-fun d!143573 () Bool)

(assert (=> d!143573 (= (getValueByKey!717 lt!592413 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!767 (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!592648 () Unit!43831)

(declare-fun choose!1968 (List!31211 (_ BitVec 64) V!54299) Unit!43831)

(assert (=> d!143573 (= lt!592648 (choose!1968 lt!592413 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!760884 () Bool)

(assert (=> d!143573 e!760884))

(declare-fun res!886676 () Bool)

(assert (=> d!143573 (=> (not res!886676) (not e!760884))))

(assert (=> d!143573 (= res!886676 (isStrictlySorted!875 lt!592413))))

(assert (=> d!143573 (= (lemmaContainsTupThenGetReturnValue!360 lt!592413 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!592648)))

(declare-fun b!1335952 () Bool)

(declare-fun res!886677 () Bool)

(assert (=> b!1335952 (=> (not res!886677) (not e!760884))))

(assert (=> b!1335952 (= res!886677 (containsKey!735 lt!592413 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1335953 () Bool)

(assert (=> b!1335953 (= e!760884 (contains!8971 lt!592413 (tuple2!24043 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!143573 res!886676) b!1335952))

(assert (= (and b!1335952 res!886677) b!1335953))

(assert (=> d!143573 m!1223663))

(declare-fun m!1224133 () Bool)

(assert (=> d!143573 m!1224133))

(declare-fun m!1224135 () Bool)

(assert (=> d!143573 m!1224135))

(declare-fun m!1224137 () Bool)

(assert (=> b!1335952 m!1224137))

(declare-fun m!1224139 () Bool)

(assert (=> b!1335953 m!1224139))

(assert (=> d!143443 d!143573))

(declare-fun c!125936 () Bool)

(declare-fun b!1335974 () Bool)

(assert (=> b!1335974 (= c!125936 (and ((_ is Cons!31207) (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (bvsgt (_1!12031 (h!32416 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!760895 () List!31211)

(declare-fun e!760897 () List!31211)

(assert (=> b!1335974 (= e!760895 e!760897)))

(declare-fun call!64858 () List!31211)

(declare-fun e!760896 () List!31211)

(declare-fun bm!64855 () Bool)

(declare-fun c!125937 () Bool)

(declare-fun $colon$colon!672 (List!31211 tuple2!24042) List!31211)

(assert (=> bm!64855 (= call!64858 ($colon$colon!672 e!760896 (ite c!125937 (h!32416 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (tuple2!24043 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!125938 () Bool)

(assert (=> bm!64855 (= c!125938 c!125937)))

(declare-fun b!1335976 () Bool)

(declare-fun call!64860 () List!31211)

(assert (=> b!1335976 (= e!760897 call!64860)))

(declare-fun b!1335977 () Bool)

(declare-fun lt!592651 () List!31211)

(declare-fun e!760899 () Bool)

(assert (=> b!1335977 (= e!760899 (contains!8971 lt!592651 (tuple2!24043 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1335978 () Bool)

(declare-fun e!760898 () List!31211)

(assert (=> b!1335978 (= e!760898 call!64858)))

(declare-fun b!1335979 () Bool)

(assert (=> b!1335979 (= e!760896 (insertStrictlySorted!489 (t!45486 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!64856 () Bool)

(declare-fun call!64859 () List!31211)

(assert (=> bm!64856 (= call!64860 call!64859)))

(declare-fun b!1335980 () Bool)

(declare-fun res!886683 () Bool)

(assert (=> b!1335980 (=> (not res!886683) (not e!760899))))

(assert (=> b!1335980 (= res!886683 (containsKey!735 lt!592651 (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1335981 () Bool)

(assert (=> b!1335981 (= e!760895 call!64859)))

(declare-fun b!1335982 () Bool)

(assert (=> b!1335982 (= e!760897 call!64860)))

(declare-fun b!1335975 () Bool)

(assert (=> b!1335975 (= e!760898 e!760895)))

(declare-fun c!125939 () Bool)

(assert (=> b!1335975 (= c!125939 (and ((_ is Cons!31207) (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (= (_1!12031 (h!32416 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun d!143575 () Bool)

(assert (=> d!143575 e!760899))

(declare-fun res!886682 () Bool)

(assert (=> d!143575 (=> (not res!886682) (not e!760899))))

(assert (=> d!143575 (= res!886682 (isStrictlySorted!875 lt!592651))))

(assert (=> d!143575 (= lt!592651 e!760898)))

(assert (=> d!143575 (= c!125937 (and ((_ is Cons!31207) (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (bvslt (_1!12031 (h!32416 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!143575 (isStrictlySorted!875 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))))

(assert (=> d!143575 (= (insertStrictlySorted!489 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) (_1!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!12031 (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!592651)))

(declare-fun b!1335983 () Bool)

(assert (=> b!1335983 (= e!760896 (ite c!125939 (t!45486 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (ite c!125936 (Cons!31207 (h!32416 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))) (t!45486 (toList!10871 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)))) Nil!31208)))))

(declare-fun bm!64857 () Bool)

(assert (=> bm!64857 (= call!64859 call!64858)))

(assert (= (and d!143575 c!125937) b!1335978))

(assert (= (and d!143575 (not c!125937)) b!1335975))

(assert (= (and b!1335975 c!125939) b!1335981))

(assert (= (and b!1335975 (not c!125939)) b!1335974))

(assert (= (and b!1335974 c!125936) b!1335976))

(assert (= (and b!1335974 (not c!125936)) b!1335982))

(assert (= (or b!1335976 b!1335982) bm!64856))

(assert (= (or b!1335981 bm!64856) bm!64857))

(assert (= (or b!1335978 bm!64857) bm!64855))

(assert (= (and bm!64855 c!125938) b!1335979))

(assert (= (and bm!64855 (not c!125938)) b!1335983))

(assert (= (and d!143575 res!886682) b!1335980))

(assert (= (and b!1335980 res!886683) b!1335977))

(declare-fun m!1224141 () Bool)

(assert (=> b!1335979 m!1224141))

(declare-fun m!1224143 () Bool)

(assert (=> d!143575 m!1224143))

(declare-fun m!1224145 () Bool)

(assert (=> d!143575 m!1224145))

(declare-fun m!1224147 () Bool)

(assert (=> bm!64855 m!1224147))

(declare-fun m!1224149 () Bool)

(assert (=> b!1335977 m!1224149))

(declare-fun m!1224151 () Bool)

(assert (=> b!1335980 m!1224151))

(assert (=> d!143443 d!143575))

(declare-fun d!143577 () Bool)

(declare-fun e!760901 () Bool)

(assert (=> d!143577 e!760901))

(declare-fun res!886684 () Bool)

(assert (=> d!143577 (=> res!886684 e!760901)))

(declare-fun lt!592654 () Bool)

(assert (=> d!143577 (= res!886684 (not lt!592654))))

(declare-fun lt!592652 () Bool)

(assert (=> d!143577 (= lt!592654 lt!592652)))

(declare-fun lt!592655 () Unit!43831)

(declare-fun e!760900 () Unit!43831)

(assert (=> d!143577 (= lt!592655 e!760900)))

(declare-fun c!125940 () Bool)

(assert (=> d!143577 (= c!125940 lt!592652)))

(assert (=> d!143577 (= lt!592652 (containsKey!735 (toList!10871 lt!592510) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!143577 (= (contains!8970 lt!592510 #b1000000000000000000000000000000000000000000000000000000000000000) lt!592654)))

(declare-fun b!1335984 () Bool)

(declare-fun lt!592653 () Unit!43831)

(assert (=> b!1335984 (= e!760900 lt!592653)))

(assert (=> b!1335984 (= lt!592653 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 lt!592510) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1335984 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592510) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1335985 () Bool)

(declare-fun Unit!43844 () Unit!43831)

(assert (=> b!1335985 (= e!760900 Unit!43844)))

(declare-fun b!1335986 () Bool)

(assert (=> b!1335986 (= e!760901 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592510) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143577 c!125940) b!1335984))

(assert (= (and d!143577 (not c!125940)) b!1335985))

(assert (= (and d!143577 (not res!886684)) b!1335986))

(declare-fun m!1224153 () Bool)

(assert (=> d!143577 m!1224153))

(declare-fun m!1224155 () Bool)

(assert (=> b!1335984 m!1224155))

(assert (=> b!1335984 m!1224121))

(assert (=> b!1335984 m!1224121))

(declare-fun m!1224157 () Bool)

(assert (=> b!1335984 m!1224157))

(assert (=> b!1335986 m!1224121))

(assert (=> b!1335986 m!1224121))

(assert (=> b!1335986 m!1224157))

(assert (=> bm!64845 d!143577))

(declare-fun d!143579 () Bool)

(assert (=> d!143579 (= (apply!1067 lt!592510 #b0000000000000000000000000000000000000000000000000000000000000000) (get!22120 (getValueByKey!717 (toList!10871 lt!592510) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!38254 () Bool)

(assert (= bs!38254 d!143579))

(assert (=> bs!38254 m!1224115))

(assert (=> bs!38254 m!1224115))

(declare-fun m!1224159 () Bool)

(assert (=> bs!38254 m!1224159))

(assert (=> b!1335764 d!143579))

(declare-fun d!143581 () Bool)

(declare-fun e!760903 () Bool)

(assert (=> d!143581 e!760903))

(declare-fun res!886685 () Bool)

(assert (=> d!143581 (=> res!886685 e!760903)))

(declare-fun lt!592658 () Bool)

(assert (=> d!143581 (= res!886685 (not lt!592658))))

(declare-fun lt!592656 () Bool)

(assert (=> d!143581 (= lt!592658 lt!592656)))

(declare-fun lt!592659 () Unit!43831)

(declare-fun e!760902 () Unit!43831)

(assert (=> d!143581 (= lt!592659 e!760902)))

(declare-fun c!125941 () Bool)

(assert (=> d!143581 (= c!125941 lt!592656)))

(assert (=> d!143581 (= lt!592656 (containsKey!735 (toList!10871 lt!592418) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> d!143581 (= (contains!8970 lt!592418 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) lt!592658)))

(declare-fun b!1335987 () Bool)

(declare-fun lt!592657 () Unit!43831)

(assert (=> b!1335987 (= e!760902 lt!592657)))

(assert (=> b!1335987 (= lt!592657 (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 lt!592418) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(assert (=> b!1335987 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592418) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1335988 () Bool)

(declare-fun Unit!43845 () Unit!43831)

(assert (=> b!1335988 (= e!760902 Unit!43845)))

(declare-fun b!1335989 () Bool)

(assert (=> b!1335989 (= e!760903 (isDefined!520 (getValueByKey!717 (toList!10871 lt!592418) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (= (and d!143581 c!125941) b!1335987))

(assert (= (and d!143581 (not c!125941)) b!1335988))

(assert (= (and d!143581 (not res!886685)) b!1335989))

(declare-fun m!1224161 () Bool)

(assert (=> d!143581 m!1224161))

(declare-fun m!1224163 () Bool)

(assert (=> b!1335987 m!1224163))

(assert (=> b!1335987 m!1223681))

(assert (=> b!1335987 m!1223681))

(declare-fun m!1224165 () Bool)

(assert (=> b!1335987 m!1224165))

(assert (=> b!1335989 m!1223681))

(assert (=> b!1335989 m!1223681))

(assert (=> b!1335989 m!1224165))

(assert (=> d!143445 d!143581))

(declare-fun b!1335990 () Bool)

(declare-fun e!760904 () Option!768)

(assert (=> b!1335990 (= e!760904 (Some!767 (_2!12031 (h!32416 lt!592417))))))

(declare-fun d!143583 () Bool)

(declare-fun c!125942 () Bool)

(assert (=> d!143583 (= c!125942 (and ((_ is Cons!31207) lt!592417) (= (_1!12031 (h!32416 lt!592417)) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143583 (= (getValueByKey!717 lt!592417 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) e!760904)))

(declare-fun b!1335992 () Bool)

(declare-fun e!760905 () Option!768)

(assert (=> b!1335992 (= e!760905 (getValueByKey!717 (t!45486 lt!592417) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1335993 () Bool)

(assert (=> b!1335993 (= e!760905 None!766)))

(declare-fun b!1335991 () Bool)

(assert (=> b!1335991 (= e!760904 e!760905)))

(declare-fun c!125943 () Bool)

(assert (=> b!1335991 (= c!125943 (and ((_ is Cons!31207) lt!592417) (not (= (_1!12031 (h!32416 lt!592417)) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))))

(assert (= (and d!143583 c!125942) b!1335990))

(assert (= (and d!143583 (not c!125942)) b!1335991))

(assert (= (and b!1335991 c!125943) b!1335992))

(assert (= (and b!1335991 (not c!125943)) b!1335993))

(declare-fun m!1224167 () Bool)

(assert (=> b!1335992 m!1224167))

(assert (=> d!143445 d!143583))

(declare-fun d!143585 () Bool)

(assert (=> d!143585 (= (getValueByKey!717 lt!592417 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) (Some!767 (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun lt!592660 () Unit!43831)

(assert (=> d!143585 (= lt!592660 (choose!1968 lt!592417 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun e!760906 () Bool)

(assert (=> d!143585 e!760906))

(declare-fun res!886686 () Bool)

(assert (=> d!143585 (=> (not res!886686) (not e!760906))))

(assert (=> d!143585 (= res!886686 (isStrictlySorted!875 lt!592417))))

(assert (=> d!143585 (= (lemmaContainsTupThenGetReturnValue!360 lt!592417 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) lt!592660)))

(declare-fun b!1335994 () Bool)

(declare-fun res!886687 () Bool)

(assert (=> b!1335994 (=> (not res!886687) (not e!760906))))

(assert (=> b!1335994 (= res!886687 (containsKey!735 lt!592417 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1335995 () Bool)

(assert (=> b!1335995 (= e!760906 (contains!8971 lt!592417 (tuple2!24043 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (= (and d!143585 res!886686) b!1335994))

(assert (= (and b!1335994 res!886687) b!1335995))

(assert (=> d!143585 m!1223675))

(declare-fun m!1224169 () Bool)

(assert (=> d!143585 m!1224169))

(declare-fun m!1224171 () Bool)

(assert (=> d!143585 m!1224171))

(declare-fun m!1224173 () Bool)

(assert (=> b!1335994 m!1224173))

(declare-fun m!1224175 () Bool)

(assert (=> b!1335995 m!1224175))

(assert (=> d!143445 d!143585))

(declare-fun b!1335996 () Bool)

(declare-fun c!125944 () Bool)

(assert (=> b!1335996 (= c!125944 (and ((_ is Cons!31207) (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (bvsgt (_1!12031 (h!32416 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun e!760907 () List!31211)

(declare-fun e!760909 () List!31211)

(assert (=> b!1335996 (= e!760907 e!760909)))

(declare-fun c!125945 () Bool)

(declare-fun call!64861 () List!31211)

(declare-fun e!760908 () List!31211)

(declare-fun bm!64858 () Bool)

(assert (=> bm!64858 (= call!64861 ($colon$colon!672 e!760908 (ite c!125945 (h!32416 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (tuple2!24043 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))))

(declare-fun c!125946 () Bool)

(assert (=> bm!64858 (= c!125946 c!125945)))

(declare-fun b!1335998 () Bool)

(declare-fun call!64863 () List!31211)

(assert (=> b!1335998 (= e!760909 call!64863)))

(declare-fun b!1335999 () Bool)

(declare-fun e!760911 () Bool)

(declare-fun lt!592661 () List!31211)

(assert (=> b!1335999 (= e!760911 (contains!8971 lt!592661 (tuple2!24043 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun b!1336000 () Bool)

(declare-fun e!760910 () List!31211)

(assert (=> b!1336000 (= e!760910 call!64861)))

(declare-fun b!1336001 () Bool)

(assert (=> b!1336001 (= e!760908 (insertStrictlySorted!489 (t!45486 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun bm!64859 () Bool)

(declare-fun call!64862 () List!31211)

(assert (=> bm!64859 (= call!64863 call!64862)))

(declare-fun b!1336002 () Bool)

(declare-fun res!886689 () Bool)

(assert (=> b!1336002 (=> (not res!886689) (not e!760911))))

(assert (=> b!1336002 (= res!886689 (containsKey!735 lt!592661 (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1336003 () Bool)

(assert (=> b!1336003 (= e!760907 call!64862)))

(declare-fun b!1336004 () Bool)

(assert (=> b!1336004 (= e!760909 call!64863)))

(declare-fun b!1335997 () Bool)

(assert (=> b!1335997 (= e!760910 e!760907)))

(declare-fun c!125947 () Bool)

(assert (=> b!1335997 (= c!125947 (and ((_ is Cons!31207) (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (= (_1!12031 (h!32416 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(declare-fun d!143587 () Bool)

(assert (=> d!143587 e!760911))

(declare-fun res!886688 () Bool)

(assert (=> d!143587 (=> (not res!886688) (not e!760911))))

(assert (=> d!143587 (= res!886688 (isStrictlySorted!875 lt!592661))))

(assert (=> d!143587 (= lt!592661 e!760910)))

(assert (=> d!143587 (= c!125945 (and ((_ is Cons!31207) (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (bvslt (_1!12031 (h!32416 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))))

(assert (=> d!143587 (isStrictlySorted!875 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!143587 (= (insertStrictlySorted!489 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))) (_1!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) (_2!12031 (tuple2!24043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))) lt!592661)))

(declare-fun b!1336005 () Bool)

(assert (=> b!1336005 (= e!760908 (ite c!125947 (t!45486 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (ite c!125944 (Cons!31207 (h!32416 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (t!45486 (toList!10871 (+!4703 (getCurrentListMapNoExtraKeys!6426 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!24043 (select (arr!43776 _keys!1590) from!1980) (get!22117 (select (arr!43777 _values!1320) from!1980) (dynLambda!3740 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))) Nil!31208)))))

(declare-fun bm!64860 () Bool)

(assert (=> bm!64860 (= call!64862 call!64861)))

(assert (= (and d!143587 c!125945) b!1336000))

(assert (= (and d!143587 (not c!125945)) b!1335997))

(assert (= (and b!1335997 c!125947) b!1336003))

(assert (= (and b!1335997 (not c!125947)) b!1335996))

(assert (= (and b!1335996 c!125944) b!1335998))

(assert (= (and b!1335996 (not c!125944)) b!1336004))

(assert (= (or b!1335998 b!1336004) bm!64859))

(assert (= (or b!1336003 bm!64859) bm!64860))

(assert (= (or b!1336000 bm!64860) bm!64858))

(assert (= (and bm!64858 c!125946) b!1336001))

(assert (= (and bm!64858 (not c!125946)) b!1336005))

(assert (= (and d!143587 res!886688) b!1336002))

(assert (= (and b!1336002 res!886689) b!1335999))

(declare-fun m!1224177 () Bool)

(assert (=> b!1336001 m!1224177))

(declare-fun m!1224179 () Bool)

(assert (=> d!143587 m!1224179))

(declare-fun m!1224181 () Bool)

(assert (=> d!143587 m!1224181))

(declare-fun m!1224183 () Bool)

(assert (=> bm!64858 m!1224183))

(declare-fun m!1224185 () Bool)

(assert (=> b!1335999 m!1224185))

(declare-fun m!1224187 () Bool)

(assert (=> b!1336002 m!1224187))

(assert (=> d!143445 d!143587))

(declare-fun b!1336006 () Bool)

(declare-fun e!760915 () Bool)

(declare-fun e!760912 () Bool)

(assert (=> b!1336006 (= e!760915 e!760912)))

(declare-fun c!125948 () Bool)

(assert (=> b!1336006 (= c!125948 (validKeyInArray!0 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1336007 () Bool)

(declare-fun e!760914 () Bool)

(assert (=> b!1336007 (= e!760914 e!760915)))

(declare-fun res!886692 () Bool)

(assert (=> b!1336007 (=> (not res!886692) (not e!760915))))

(declare-fun e!760913 () Bool)

(assert (=> b!1336007 (= res!886692 (not e!760913))))

(declare-fun res!886690 () Bool)

(assert (=> b!1336007 (=> (not res!886690) (not e!760913))))

(assert (=> b!1336007 (= res!886690 (validKeyInArray!0 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1336008 () Bool)

(assert (=> b!1336008 (= e!760913 (contains!8972 (ite c!125867 (Cons!31208 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) Nil!31209) Nil!31209) (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1336009 () Bool)

(declare-fun call!64864 () Bool)

(assert (=> b!1336009 (= e!760912 call!64864)))

(declare-fun b!1336010 () Bool)

(assert (=> b!1336010 (= e!760912 call!64864)))

(declare-fun bm!64861 () Bool)

(assert (=> bm!64861 (= call!64864 (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!125948 (Cons!31208 (select (arr!43776 _keys!1590) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!125867 (Cons!31208 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) Nil!31209) Nil!31209)) (ite c!125867 (Cons!31208 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) Nil!31209) Nil!31209))))))

(declare-fun d!143589 () Bool)

(declare-fun res!886691 () Bool)

(assert (=> d!143589 (=> res!886691 e!760914)))

(assert (=> d!143589 (= res!886691 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!44327 _keys!1590)))))

(assert (=> d!143589 (= (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125867 (Cons!31208 (select (arr!43776 _keys!1590) #b00000000000000000000000000000000) Nil!31209) Nil!31209)) e!760914)))

(assert (= (and d!143589 (not res!886691)) b!1336007))

(assert (= (and b!1336007 res!886690) b!1336008))

(assert (= (and b!1336007 res!886692) b!1336006))

(assert (= (and b!1336006 c!125948) b!1336009))

(assert (= (and b!1336006 (not c!125948)) b!1336010))

(assert (= (or b!1336009 b!1336010) bm!64861))

(assert (=> b!1336006 m!1223809))

(assert (=> b!1336006 m!1223809))

(assert (=> b!1336006 m!1223811))

(assert (=> b!1336007 m!1223809))

(assert (=> b!1336007 m!1223809))

(assert (=> b!1336007 m!1223811))

(assert (=> b!1336008 m!1223809))

(assert (=> b!1336008 m!1223809))

(declare-fun m!1224189 () Bool)

(assert (=> b!1336008 m!1224189))

(assert (=> bm!64861 m!1223809))

(declare-fun m!1224191 () Bool)

(assert (=> bm!64861 m!1224191))

(assert (=> bm!64824 d!143589))

(assert (=> b!1335781 d!143453))

(declare-fun d!143591 () Bool)

(assert (=> d!143591 (isDefined!520 (getValueByKey!717 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun lt!592662 () Unit!43831)

(assert (=> d!143591 (= lt!592662 (choose!1964 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun e!760916 () Bool)

(assert (=> d!143591 e!760916))

(declare-fun res!886693 () Bool)

(assert (=> d!143591 (=> (not res!886693) (not e!760916))))

(assert (=> d!143591 (= res!886693 (isStrictlySorted!875 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))))

(assert (=> d!143591 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!480 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153) lt!592662)))

(declare-fun b!1336011 () Bool)

(assert (=> b!1336011 (= e!760916 (containsKey!735 (toList!10871 (getCurrentListMap!5781 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (= (and d!143591 res!886693) b!1336011))

(assert (=> d!143591 m!1223745))

(assert (=> d!143591 m!1223745))

(assert (=> d!143591 m!1223747))

(declare-fun m!1224193 () Bool)

(assert (=> d!143591 m!1224193))

(declare-fun m!1224195 () Bool)

(assert (=> d!143591 m!1224195))

(assert (=> b!1336011 m!1223741))

(assert (=> b!1335716 d!143591))

(assert (=> b!1335716 d!143481))

(assert (=> b!1335716 d!143483))

(declare-fun condMapEmpty!57026 () Bool)

(declare-fun mapDefault!57026 () ValueCell!17550)

(assert (=> mapNonEmpty!57025 (= condMapEmpty!57026 (= mapRest!57025 ((as const (Array (_ BitVec 32) ValueCell!17550)) mapDefault!57026)))))

(declare-fun e!760917 () Bool)

(declare-fun mapRes!57026 () Bool)

(assert (=> mapNonEmpty!57025 (= tp!108608 (and e!760917 mapRes!57026))))

(declare-fun mapIsEmpty!57026 () Bool)

(assert (=> mapIsEmpty!57026 mapRes!57026))

(declare-fun mapNonEmpty!57026 () Bool)

(declare-fun tp!108609 () Bool)

(declare-fun e!760918 () Bool)

(assert (=> mapNonEmpty!57026 (= mapRes!57026 (and tp!108609 e!760918))))

(declare-fun mapKey!57026 () (_ BitVec 32))

(declare-fun mapValue!57026 () ValueCell!17550)

(declare-fun mapRest!57026 () (Array (_ BitVec 32) ValueCell!17550))

(assert (=> mapNonEmpty!57026 (= mapRest!57025 (store mapRest!57026 mapKey!57026 mapValue!57026))))

(declare-fun b!1336013 () Bool)

(assert (=> b!1336013 (= e!760917 tp_is_empty!36897)))

(declare-fun b!1336012 () Bool)

(assert (=> b!1336012 (= e!760918 tp_is_empty!36897)))

(assert (= (and mapNonEmpty!57025 condMapEmpty!57026) mapIsEmpty!57026))

(assert (= (and mapNonEmpty!57025 (not condMapEmpty!57026)) mapNonEmpty!57026))

(assert (= (and mapNonEmpty!57026 ((_ is ValueCellFull!17550) mapValue!57026)) b!1336012))

(assert (= (and mapNonEmpty!57025 ((_ is ValueCellFull!17550) mapDefault!57026)) b!1336013))

(declare-fun m!1224197 () Bool)

(assert (=> mapNonEmpty!57026 m!1224197))

(declare-fun b_lambda!24151 () Bool)

(assert (= b_lambda!24147 (or (and start!112628 b_free!30987) b_lambda!24151)))

(declare-fun b_lambda!24153 () Bool)

(assert (= b_lambda!24143 (or (and start!112628 b_free!30987) b_lambda!24153)))

(declare-fun b_lambda!24155 () Bool)

(assert (= b_lambda!24149 (or (and start!112628 b_free!30987) b_lambda!24155)))

(declare-fun b_lambda!24157 () Bool)

(assert (= b_lambda!24145 (or (and start!112628 b_free!30987) b_lambda!24157)))

(check-sat (not d!143465) (not b!1336011) (not b!1335826) (not b_lambda!24153) (not b!1335992) (not d!143525) (not b!1335881) (not b!1335995) (not b!1335810) (not d!143511) (not d!143485) (not b!1335946) (not d!143463) (not b!1335936) (not b!1336002) (not d!143531) (not d!143591) (not b!1335910) (not b!1335921) (not b!1336008) (not b!1335987) (not d!143517) (not d!143509) (not d!143587) (not b!1335868) (not b!1335908) (not b!1335903) (not b!1335901) tp_is_empty!36897 (not d!143491) (not b!1335977) (not b!1335869) (not d!143539) (not b!1335937) (not d!143579) (not b_lambda!24129) (not b!1335832) (not d!143563) (not d!143553) (not b!1335856) (not b_next!30987) (not d!143541) (not bm!64846) (not b_lambda!24141) (not b!1335803) (not b_lambda!24139) (not b!1335893) (not b!1335984) (not b!1335886) (not b!1335986) (not b!1335863) (not b!1335853) (not b!1335938) (not b!1335926) (not b!1335882) (not b!1335919) (not b!1335999) (not b!1335792) (not d!143475) (not d!143559) (not b!1335877) (not b!1335878) (not b!1335848) (not d!143569) (not b!1335807) (not b!1335821) b_and!49927 (not bm!64855) (not b!1335931) (not d!143545) (not b!1335930) (not d!143501) (not b!1335902) (not b!1335823) (not b!1335917) (not bm!64847) (not b_lambda!24137) (not b!1335905) (not d!143573) (not b!1335809) (not d!143521) (not b!1335924) (not b_lambda!24157) (not b!1335979) (not b!1335870) (not b!1335994) (not d!143577) (not b!1335943) (not d!143565) (not b!1335889) (not d!143575) (not b!1335890) (not b!1335891) (not b!1335873) (not b!1336006) (not b!1335883) (not b!1335953) (not bm!64848) (not b!1335871) (not b!1335909) (not d!143489) (not d!143537) (not b!1335940) (not d!143529) (not d!143481) (not d!143567) (not d!143561) (not bm!64861) (not d!143555) (not d!143507) (not b!1335923) (not b!1335900) (not d!143533) (not d!143505) (not d!143527) (not bm!64858) (not b!1335899) (not b!1335885) (not b!1335808) (not b!1335859) (not d!143535) (not b!1335819) (not b_lambda!24155) (not d!143547) (not b!1335861) (not b!1335876) (not b!1335880) (not b!1335980) (not d!143585) (not d!143515) (not b_lambda!24151) (not d!143495) (not d!143473) (not d!143479) (not b!1335952) (not d!143523) (not d!143519) (not d!143557) (not mapNonEmpty!57026) (not b!1335824) (not d!143581) (not b!1336001) (not d!143513) (not b!1335929) (not b!1335941) (not b!1335927) (not b!1336007) (not b!1335989) (not b!1335855) (not b!1335920) (not b!1335816))
(check-sat b_and!49927 (not b_next!30987))
