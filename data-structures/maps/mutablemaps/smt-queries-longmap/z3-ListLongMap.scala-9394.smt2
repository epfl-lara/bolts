; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111838 () Bool)

(assert start!111838)

(declare-fun b_free!30459 () Bool)

(declare-fun b_next!30459 () Bool)

(assert (=> start!111838 (= b_free!30459 (not b_next!30459))))

(declare-fun tp!106854 () Bool)

(declare-fun b_and!49009 () Bool)

(assert (=> start!111838 (= tp!106854 b_and!49009)))

(declare-fun b!1324801 () Bool)

(declare-fun res!879437 () Bool)

(declare-fun e!755256 () Bool)

(assert (=> b!1324801 (=> (not res!879437) (not e!755256))))

(declare-datatypes ((array!89425 0))(
  ( (array!89426 (arr!43182 (Array (_ BitVec 32) (_ BitVec 64))) (size!43733 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89425)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53475 0))(
  ( (V!53476 (val!18214 Int)) )
))
(declare-fun zeroValue!1279 () V!53475)

(declare-datatypes ((ValueCell!17241 0))(
  ( (ValueCellFull!17241 (v!20842 V!53475)) (EmptyCell!17241) )
))
(declare-datatypes ((array!89427 0))(
  ( (array!89428 (arr!43183 (Array (_ BitVec 32) ValueCell!17241)) (size!43734 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89427)

(declare-fun minValue!1279 () V!53475)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23640 0))(
  ( (tuple2!23641 (_1!11830 (_ BitVec 64)) (_2!11830 V!53475)) )
))
(declare-datatypes ((List!30810 0))(
  ( (Nil!30807) (Cons!30806 (h!32015 tuple2!23640) (t!44747 List!30810)) )
))
(declare-datatypes ((ListLongMap!21309 0))(
  ( (ListLongMap!21310 (toList!10670 List!30810)) )
))
(declare-fun contains!8761 (ListLongMap!21309 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5607 (array!89425 array!89427 (_ BitVec 32) (_ BitVec 32) V!53475 V!53475 (_ BitVec 32) Int) ListLongMap!21309)

(assert (=> b!1324801 (= res!879437 (contains!8761 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1324802 () Bool)

(declare-fun res!879442 () Bool)

(assert (=> b!1324802 (=> (not res!879442) (not e!755256))))

(assert (=> b!1324802 (= res!879442 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43733 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324803 () Bool)

(declare-fun res!879440 () Bool)

(assert (=> b!1324803 (=> (not res!879440) (not e!755256))))

(assert (=> b!1324803 (= res!879440 (not (= (select (arr!43182 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1324804 () Bool)

(declare-fun +!4586 (ListLongMap!21309 tuple2!23640) ListLongMap!21309)

(declare-fun getCurrentListMapNoExtraKeys!6304 (array!89425 array!89427 (_ BitVec 32) (_ BitVec 32) V!53475 V!53475 (_ BitVec 32) Int) ListLongMap!21309)

(declare-fun get!21786 (ValueCell!17241 V!53475) V!53475)

(declare-fun dynLambda!3623 (Int (_ BitVec 64)) V!53475)

(assert (=> b!1324804 (= e!755256 (not (contains!8761 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164)))))

(declare-fun mapNonEmpty!56066 () Bool)

(declare-fun mapRes!56066 () Bool)

(declare-fun tp!106853 () Bool)

(declare-fun e!755257 () Bool)

(assert (=> mapNonEmpty!56066 (= mapRes!56066 (and tp!106853 e!755257))))

(declare-fun mapKey!56066 () (_ BitVec 32))

(declare-fun mapValue!56066 () ValueCell!17241)

(declare-fun mapRest!56066 () (Array (_ BitVec 32) ValueCell!17241))

(assert (=> mapNonEmpty!56066 (= (arr!43183 _values!1337) (store mapRest!56066 mapKey!56066 mapValue!56066))))

(declare-fun res!879439 () Bool)

(assert (=> start!111838 (=> (not res!879439) (not e!755256))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111838 (= res!879439 (validMask!0 mask!2019))))

(assert (=> start!111838 e!755256))

(declare-fun array_inv!32537 (array!89425) Bool)

(assert (=> start!111838 (array_inv!32537 _keys!1609)))

(assert (=> start!111838 true))

(declare-fun tp_is_empty!36279 () Bool)

(assert (=> start!111838 tp_is_empty!36279))

(declare-fun e!755253 () Bool)

(declare-fun array_inv!32538 (array!89427) Bool)

(assert (=> start!111838 (and (array_inv!32538 _values!1337) e!755253)))

(assert (=> start!111838 tp!106854))

(declare-fun b!1324805 () Bool)

(declare-fun res!879438 () Bool)

(assert (=> b!1324805 (=> (not res!879438) (not e!755256))))

(declare-datatypes ((List!30811 0))(
  ( (Nil!30808) (Cons!30807 (h!32016 (_ BitVec 64)) (t!44748 List!30811)) )
))
(declare-fun arrayNoDuplicates!0 (array!89425 (_ BitVec 32) List!30811) Bool)

(assert (=> b!1324805 (= res!879438 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30808))))

(declare-fun b!1324806 () Bool)

(declare-fun res!879436 () Bool)

(assert (=> b!1324806 (=> (not res!879436) (not e!755256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1324806 (= res!879436 (validKeyInArray!0 (select (arr!43182 _keys!1609) from!2000)))))

(declare-fun b!1324807 () Bool)

(assert (=> b!1324807 (= e!755257 tp_is_empty!36279)))

(declare-fun b!1324808 () Bool)

(declare-fun e!755254 () Bool)

(assert (=> b!1324808 (= e!755253 (and e!755254 mapRes!56066))))

(declare-fun condMapEmpty!56066 () Bool)

(declare-fun mapDefault!56066 () ValueCell!17241)

(assert (=> b!1324808 (= condMapEmpty!56066 (= (arr!43183 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17241)) mapDefault!56066)))))

(declare-fun b!1324809 () Bool)

(assert (=> b!1324809 (= e!755254 tp_is_empty!36279)))

(declare-fun b!1324810 () Bool)

(declare-fun res!879441 () Bool)

(assert (=> b!1324810 (=> (not res!879441) (not e!755256))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89425 (_ BitVec 32)) Bool)

(assert (=> b!1324810 (= res!879441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapIsEmpty!56066 () Bool)

(assert (=> mapIsEmpty!56066 mapRes!56066))

(declare-fun b!1324811 () Bool)

(declare-fun res!879435 () Bool)

(assert (=> b!1324811 (=> (not res!879435) (not e!755256))))

(assert (=> b!1324811 (= res!879435 (and (= (size!43734 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43733 _keys!1609) (size!43734 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(assert (= (and start!111838 res!879439) b!1324811))

(assert (= (and b!1324811 res!879435) b!1324810))

(assert (= (and b!1324810 res!879441) b!1324805))

(assert (= (and b!1324805 res!879438) b!1324802))

(assert (= (and b!1324802 res!879442) b!1324801))

(assert (= (and b!1324801 res!879437) b!1324803))

(assert (= (and b!1324803 res!879440) b!1324806))

(assert (= (and b!1324806 res!879436) b!1324804))

(assert (= (and b!1324808 condMapEmpty!56066) mapIsEmpty!56066))

(assert (= (and b!1324808 (not condMapEmpty!56066)) mapNonEmpty!56066))

(get-info :version)

(assert (= (and mapNonEmpty!56066 ((_ is ValueCellFull!17241) mapValue!56066)) b!1324807))

(assert (= (and b!1324808 ((_ is ValueCellFull!17241) mapDefault!56066)) b!1324809))

(assert (= start!111838 b!1324808))

(declare-fun b_lambda!23717 () Bool)

(assert (=> (not b_lambda!23717) (not b!1324804)))

(declare-fun t!44746 () Bool)

(declare-fun tb!11741 () Bool)

(assert (=> (and start!111838 (= defaultEntry!1340 defaultEntry!1340) t!44746) tb!11741))

(declare-fun result!24529 () Bool)

(assert (=> tb!11741 (= result!24529 tp_is_empty!36279)))

(assert (=> b!1324804 t!44746))

(declare-fun b_and!49011 () Bool)

(assert (= b_and!49009 (and (=> t!44746 result!24529) b_and!49011)))

(declare-fun m!1213551 () Bool)

(assert (=> b!1324801 m!1213551))

(assert (=> b!1324801 m!1213551))

(declare-fun m!1213553 () Bool)

(assert (=> b!1324801 m!1213553))

(declare-fun m!1213555 () Bool)

(assert (=> start!111838 m!1213555))

(declare-fun m!1213557 () Bool)

(assert (=> start!111838 m!1213557))

(declare-fun m!1213559 () Bool)

(assert (=> start!111838 m!1213559))

(declare-fun m!1213561 () Bool)

(assert (=> b!1324806 m!1213561))

(assert (=> b!1324806 m!1213561))

(declare-fun m!1213563 () Bool)

(assert (=> b!1324806 m!1213563))

(declare-fun m!1213565 () Bool)

(assert (=> b!1324810 m!1213565))

(declare-fun m!1213567 () Bool)

(assert (=> b!1324804 m!1213567))

(declare-fun m!1213569 () Bool)

(assert (=> b!1324804 m!1213569))

(assert (=> b!1324804 m!1213567))

(declare-fun m!1213571 () Bool)

(assert (=> b!1324804 m!1213571))

(declare-fun m!1213573 () Bool)

(assert (=> b!1324804 m!1213573))

(declare-fun m!1213575 () Bool)

(assert (=> b!1324804 m!1213575))

(declare-fun m!1213577 () Bool)

(assert (=> b!1324804 m!1213577))

(assert (=> b!1324804 m!1213571))

(declare-fun m!1213579 () Bool)

(assert (=> b!1324804 m!1213579))

(assert (=> b!1324804 m!1213561))

(assert (=> b!1324804 m!1213579))

(assert (=> b!1324804 m!1213573))

(assert (=> b!1324804 m!1213577))

(assert (=> b!1324804 m!1213569))

(declare-fun m!1213581 () Bool)

(assert (=> b!1324804 m!1213581))

(assert (=> b!1324803 m!1213561))

(declare-fun m!1213583 () Bool)

(assert (=> mapNonEmpty!56066 m!1213583))

(declare-fun m!1213585 () Bool)

(assert (=> b!1324805 m!1213585))

(check-sat (not b!1324805) (not b!1324801) (not b!1324810) b_and!49011 tp_is_empty!36279 (not b!1324806) (not mapNonEmpty!56066) (not start!111838) (not b_lambda!23717) (not b_next!30459) (not b!1324804))
(check-sat b_and!49011 (not b_next!30459))
(get-model)

(declare-fun b_lambda!23721 () Bool)

(assert (= b_lambda!23717 (or (and start!111838 b_free!30459) b_lambda!23721)))

(check-sat (not b!1324805) (not b!1324801) (not b!1324810) b_and!49011 tp_is_empty!36279 (not b!1324806) (not b_lambda!23721) (not mapNonEmpty!56066) (not start!111838) (not b_next!30459) (not b!1324804))
(check-sat b_and!49011 (not b_next!30459))
(get-model)

(declare-fun d!142811 () Bool)

(assert (=> d!142811 (= (validMask!0 mask!2019) (and (or (= mask!2019 #b00000000000000000000000000000111) (= mask!2019 #b00000000000000000000000000001111) (= mask!2019 #b00000000000000000000000000011111) (= mask!2019 #b00000000000000000000000000111111) (= mask!2019 #b00000000000000000000000001111111) (= mask!2019 #b00000000000000000000000011111111) (= mask!2019 #b00000000000000000000000111111111) (= mask!2019 #b00000000000000000000001111111111) (= mask!2019 #b00000000000000000000011111111111) (= mask!2019 #b00000000000000000000111111111111) (= mask!2019 #b00000000000000000001111111111111) (= mask!2019 #b00000000000000000011111111111111) (= mask!2019 #b00000000000000000111111111111111) (= mask!2019 #b00000000000000001111111111111111) (= mask!2019 #b00000000000000011111111111111111) (= mask!2019 #b00000000000000111111111111111111) (= mask!2019 #b00000000000001111111111111111111) (= mask!2019 #b00000000000011111111111111111111) (= mask!2019 #b00000000000111111111111111111111) (= mask!2019 #b00000000001111111111111111111111) (= mask!2019 #b00000000011111111111111111111111) (= mask!2019 #b00000000111111111111111111111111) (= mask!2019 #b00000001111111111111111111111111) (= mask!2019 #b00000011111111111111111111111111) (= mask!2019 #b00000111111111111111111111111111) (= mask!2019 #b00001111111111111111111111111111) (= mask!2019 #b00011111111111111111111111111111) (= mask!2019 #b00111111111111111111111111111111)) (bvsle mask!2019 #b00111111111111111111111111111111)))))

(assert (=> start!111838 d!142811))

(declare-fun d!142813 () Bool)

(assert (=> d!142813 (= (array_inv!32537 _keys!1609) (bvsge (size!43733 _keys!1609) #b00000000000000000000000000000000))))

(assert (=> start!111838 d!142813))

(declare-fun d!142815 () Bool)

(assert (=> d!142815 (= (array_inv!32538 _values!1337) (bvsge (size!43734 _values!1337) #b00000000000000000000000000000000))))

(assert (=> start!111838 d!142815))

(declare-fun bm!64680 () Bool)

(declare-fun call!64683 () Bool)

(assert (=> bm!64680 (= call!64683 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1609 mask!2019))))

(declare-fun b!1324857 () Bool)

(declare-fun e!755280 () Bool)

(assert (=> b!1324857 (= e!755280 call!64683)))

(declare-fun b!1324858 () Bool)

(declare-fun e!755279 () Bool)

(declare-fun e!755281 () Bool)

(assert (=> b!1324858 (= e!755279 e!755281)))

(declare-fun c!125585 () Bool)

(assert (=> b!1324858 (= c!125585 (validKeyInArray!0 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun d!142817 () Bool)

(declare-fun res!879472 () Bool)

(assert (=> d!142817 (=> res!879472 e!755279)))

(assert (=> d!142817 (= res!879472 (bvsge #b00000000000000000000000000000000 (size!43733 _keys!1609)))))

(assert (=> d!142817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019) e!755279)))

(declare-fun b!1324859 () Bool)

(assert (=> b!1324859 (= e!755281 call!64683)))

(declare-fun b!1324860 () Bool)

(assert (=> b!1324860 (= e!755281 e!755280)))

(declare-fun lt!589446 () (_ BitVec 64))

(assert (=> b!1324860 (= lt!589446 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!43572 0))(
  ( (Unit!43573) )
))
(declare-fun lt!589445 () Unit!43572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!89425 (_ BitVec 64) (_ BitVec 32)) Unit!43572)

(assert (=> b!1324860 (= lt!589445 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!589446 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!89425 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1324860 (arrayContainsKey!0 _keys!1609 lt!589446 #b00000000000000000000000000000000)))

(declare-fun lt!589447 () Unit!43572)

(assert (=> b!1324860 (= lt!589447 lt!589445)))

(declare-fun res!879471 () Bool)

(declare-datatypes ((SeekEntryResult!10037 0))(
  ( (MissingZero!10037 (index!42518 (_ BitVec 32))) (Found!10037 (index!42519 (_ BitVec 32))) (Intermediate!10037 (undefined!10849 Bool) (index!42520 (_ BitVec 32)) (x!118100 (_ BitVec 32))) (Undefined!10037) (MissingVacant!10037 (index!42521 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!89425 (_ BitVec 32)) SeekEntryResult!10037)

(assert (=> b!1324860 (= res!879471 (= (seekEntryOrOpen!0 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019) (Found!10037 #b00000000000000000000000000000000)))))

(assert (=> b!1324860 (=> (not res!879471) (not e!755280))))

(assert (= (and d!142817 (not res!879472)) b!1324858))

(assert (= (and b!1324858 c!125585) b!1324860))

(assert (= (and b!1324858 (not c!125585)) b!1324859))

(assert (= (and b!1324860 res!879471) b!1324857))

(assert (= (or b!1324857 b!1324859) bm!64680))

(declare-fun m!1213623 () Bool)

(assert (=> bm!64680 m!1213623))

(declare-fun m!1213625 () Bool)

(assert (=> b!1324858 m!1213625))

(assert (=> b!1324858 m!1213625))

(declare-fun m!1213627 () Bool)

(assert (=> b!1324858 m!1213627))

(assert (=> b!1324860 m!1213625))

(declare-fun m!1213629 () Bool)

(assert (=> b!1324860 m!1213629))

(declare-fun m!1213631 () Bool)

(assert (=> b!1324860 m!1213631))

(assert (=> b!1324860 m!1213625))

(declare-fun m!1213633 () Bool)

(assert (=> b!1324860 m!1213633))

(assert (=> b!1324810 d!142817))

(declare-fun d!142819 () Bool)

(declare-fun e!755287 () Bool)

(assert (=> d!142819 e!755287))

(declare-fun res!879475 () Bool)

(assert (=> d!142819 (=> res!879475 e!755287)))

(declare-fun lt!589459 () Bool)

(assert (=> d!142819 (= res!879475 (not lt!589459))))

(declare-fun lt!589456 () Bool)

(assert (=> d!142819 (= lt!589459 lt!589456)))

(declare-fun lt!589458 () Unit!43572)

(declare-fun e!755286 () Unit!43572)

(assert (=> d!142819 (= lt!589458 e!755286)))

(declare-fun c!125588 () Bool)

(assert (=> d!142819 (= c!125588 lt!589456)))

(declare-fun containsKey!732 (List!30810 (_ BitVec 64)) Bool)

(assert (=> d!142819 (= lt!589456 (containsKey!732 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))

(assert (=> d!142819 (= (contains!8761 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164) lt!589459)))

(declare-fun b!1324867 () Bool)

(declare-fun lt!589457 () Unit!43572)

(assert (=> b!1324867 (= e!755286 lt!589457)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!477 (List!30810 (_ BitVec 64)) Unit!43572)

(assert (=> b!1324867 (= lt!589457 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))

(declare-datatypes ((Option!765 0))(
  ( (Some!764 (v!20844 V!53475)) (None!763) )
))
(declare-fun isDefined!517 (Option!765) Bool)

(declare-fun getValueByKey!714 (List!30810 (_ BitVec 64)) Option!765)

(assert (=> b!1324867 (isDefined!517 (getValueByKey!714 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))

(declare-fun b!1324868 () Bool)

(declare-fun Unit!43574 () Unit!43572)

(assert (=> b!1324868 (= e!755286 Unit!43574)))

(declare-fun b!1324869 () Bool)

(assert (=> b!1324869 (= e!755287 (isDefined!517 (getValueByKey!714 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164)))))

(assert (= (and d!142819 c!125588) b!1324867))

(assert (= (and d!142819 (not c!125588)) b!1324868))

(assert (= (and d!142819 (not res!879475)) b!1324869))

(declare-fun m!1213635 () Bool)

(assert (=> d!142819 m!1213635))

(declare-fun m!1213637 () Bool)

(assert (=> b!1324867 m!1213637))

(declare-fun m!1213639 () Bool)

(assert (=> b!1324867 m!1213639))

(assert (=> b!1324867 m!1213639))

(declare-fun m!1213641 () Bool)

(assert (=> b!1324867 m!1213641))

(assert (=> b!1324869 m!1213639))

(assert (=> b!1324869 m!1213639))

(assert (=> b!1324869 m!1213641))

(assert (=> b!1324804 d!142819))

(declare-fun d!142821 () Bool)

(declare-fun e!755290 () Bool)

(assert (=> d!142821 e!755290))

(declare-fun res!879480 () Bool)

(assert (=> d!142821 (=> (not res!879480) (not e!755290))))

(declare-fun lt!589469 () ListLongMap!21309)

(assert (=> d!142821 (= res!879480 (contains!8761 lt!589469 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!589468 () List!30810)

(assert (=> d!142821 (= lt!589469 (ListLongMap!21310 lt!589468))))

(declare-fun lt!589470 () Unit!43572)

(declare-fun lt!589471 () Unit!43572)

(assert (=> d!142821 (= lt!589470 lt!589471)))

(assert (=> d!142821 (= (getValueByKey!714 lt!589468 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!764 (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!357 (List!30810 (_ BitVec 64) V!53475) Unit!43572)

(assert (=> d!142821 (= lt!589471 (lemmaContainsTupThenGetReturnValue!357 lt!589468 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!486 (List!30810 (_ BitVec 64) V!53475) List!30810)

(assert (=> d!142821 (= lt!589468 (insertStrictlySorted!486 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142821 (= (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!589469)))

(declare-fun b!1324874 () Bool)

(declare-fun res!879481 () Bool)

(assert (=> b!1324874 (=> (not res!879481) (not e!755290))))

(assert (=> b!1324874 (= res!879481 (= (getValueByKey!714 (toList!10670 lt!589469) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!764 (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1324875 () Bool)

(declare-fun contains!8763 (List!30810 tuple2!23640) Bool)

(assert (=> b!1324875 (= e!755290 (contains!8763 (toList!10670 lt!589469) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!142821 res!879480) b!1324874))

(assert (= (and b!1324874 res!879481) b!1324875))

(declare-fun m!1213643 () Bool)

(assert (=> d!142821 m!1213643))

(declare-fun m!1213645 () Bool)

(assert (=> d!142821 m!1213645))

(declare-fun m!1213647 () Bool)

(assert (=> d!142821 m!1213647))

(declare-fun m!1213649 () Bool)

(assert (=> d!142821 m!1213649))

(declare-fun m!1213651 () Bool)

(assert (=> b!1324874 m!1213651))

(declare-fun m!1213653 () Bool)

(assert (=> b!1324875 m!1213653))

(assert (=> b!1324804 d!142821))

(declare-fun d!142823 () Bool)

(declare-fun c!125591 () Bool)

(assert (=> d!142823 (= c!125591 ((_ is ValueCellFull!17241) (select (arr!43183 _values!1337) from!2000)))))

(declare-fun e!755293 () V!53475)

(assert (=> d!142823 (= (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)) e!755293)))

(declare-fun b!1324880 () Bool)

(declare-fun get!21788 (ValueCell!17241 V!53475) V!53475)

(assert (=> b!1324880 (= e!755293 (get!21788 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1324881 () Bool)

(declare-fun get!21789 (ValueCell!17241 V!53475) V!53475)

(assert (=> b!1324881 (= e!755293 (get!21789 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142823 c!125591) b!1324880))

(assert (= (and d!142823 (not c!125591)) b!1324881))

(assert (=> b!1324880 m!1213577))

(assert (=> b!1324880 m!1213569))

(declare-fun m!1213655 () Bool)

(assert (=> b!1324880 m!1213655))

(assert (=> b!1324881 m!1213577))

(assert (=> b!1324881 m!1213569))

(declare-fun m!1213657 () Bool)

(assert (=> b!1324881 m!1213657))

(assert (=> b!1324804 d!142823))

(declare-fun e!755312 () Bool)

(declare-fun b!1324906 () Bool)

(declare-fun lt!589490 () ListLongMap!21309)

(assert (=> b!1324906 (= e!755312 (= lt!589490 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) defaultEntry!1340)))))

(declare-fun b!1324907 () Bool)

(declare-fun e!755308 () Bool)

(declare-fun e!755309 () Bool)

(assert (=> b!1324907 (= e!755308 e!755309)))

(assert (=> b!1324907 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43733 _keys!1609)))))

(declare-fun res!879490 () Bool)

(assert (=> b!1324907 (= res!879490 (contains!8761 lt!589490 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1324907 (=> (not res!879490) (not e!755309))))

(declare-fun b!1324908 () Bool)

(declare-fun isEmpty!1078 (ListLongMap!21309) Bool)

(assert (=> b!1324908 (= e!755312 (isEmpty!1078 lt!589490))))

(declare-fun b!1324909 () Bool)

(declare-fun e!755310 () Bool)

(assert (=> b!1324909 (= e!755310 e!755308)))

(declare-fun c!125602 () Bool)

(declare-fun e!755311 () Bool)

(assert (=> b!1324909 (= c!125602 e!755311)))

(declare-fun res!879491 () Bool)

(assert (=> b!1324909 (=> (not res!879491) (not e!755311))))

(assert (=> b!1324909 (= res!879491 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43733 _keys!1609)))))

(declare-fun b!1324910 () Bool)

(declare-fun e!755313 () ListLongMap!21309)

(assert (=> b!1324910 (= e!755313 (ListLongMap!21310 Nil!30807))))

(declare-fun b!1324911 () Bool)

(declare-fun e!755314 () ListLongMap!21309)

(declare-fun call!64686 () ListLongMap!21309)

(assert (=> b!1324911 (= e!755314 call!64686)))

(declare-fun b!1324912 () Bool)

(declare-fun lt!589492 () Unit!43572)

(declare-fun lt!589489 () Unit!43572)

(assert (=> b!1324912 (= lt!589492 lt!589489)))

(declare-fun lt!589487 () (_ BitVec 64))

(declare-fun lt!589488 () ListLongMap!21309)

(declare-fun lt!589491 () (_ BitVec 64))

(declare-fun lt!589486 () V!53475)

(assert (=> b!1324912 (not (contains!8761 (+!4586 lt!589488 (tuple2!23641 lt!589487 lt!589486)) lt!589491))))

(declare-fun addStillNotContains!502 (ListLongMap!21309 (_ BitVec 64) V!53475 (_ BitVec 64)) Unit!43572)

(assert (=> b!1324912 (= lt!589489 (addStillNotContains!502 lt!589488 lt!589487 lt!589486 lt!589491))))

(assert (=> b!1324912 (= lt!589491 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1324912 (= lt!589486 (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1324912 (= lt!589487 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))

(assert (=> b!1324912 (= lt!589488 call!64686)))

(assert (=> b!1324912 (= e!755314 (+!4586 call!64686 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1324913 () Bool)

(declare-fun res!879493 () Bool)

(assert (=> b!1324913 (=> (not res!879493) (not e!755310))))

(assert (=> b!1324913 (= res!879493 (not (contains!8761 lt!589490 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1324914 () Bool)

(assert (=> b!1324914 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43733 _keys!1609)))))

(assert (=> b!1324914 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43734 _values!1337)))))

(declare-fun apply!1064 (ListLongMap!21309 (_ BitVec 64)) V!53475)

(assert (=> b!1324914 (= e!755309 (= (apply!1064 lt!589490 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!142825 () Bool)

(assert (=> d!142825 e!755310))

(declare-fun res!879492 () Bool)

(assert (=> d!142825 (=> (not res!879492) (not e!755310))))

(assert (=> d!142825 (= res!879492 (not (contains!8761 lt!589490 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!142825 (= lt!589490 e!755313)))

(declare-fun c!125601 () Bool)

(assert (=> d!142825 (= c!125601 (bvsge (bvadd #b00000000000000000000000000000001 from!2000) (size!43733 _keys!1609)))))

(assert (=> d!142825 (validMask!0 mask!2019)))

(assert (=> d!142825 (= (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) lt!589490)))

(declare-fun b!1324915 () Bool)

(assert (=> b!1324915 (= e!755311 (validKeyInArray!0 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1324915 (bvsge (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000)))

(declare-fun bm!64683 () Bool)

(assert (=> bm!64683 (= call!64686 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) defaultEntry!1340))))

(declare-fun b!1324916 () Bool)

(assert (=> b!1324916 (= e!755308 e!755312)))

(declare-fun c!125600 () Bool)

(assert (=> b!1324916 (= c!125600 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) (size!43733 _keys!1609)))))

(declare-fun b!1324917 () Bool)

(assert (=> b!1324917 (= e!755313 e!755314)))

(declare-fun c!125603 () Bool)

(assert (=> b!1324917 (= c!125603 (validKeyInArray!0 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (= (and d!142825 c!125601) b!1324910))

(assert (= (and d!142825 (not c!125601)) b!1324917))

(assert (= (and b!1324917 c!125603) b!1324912))

(assert (= (and b!1324917 (not c!125603)) b!1324911))

(assert (= (or b!1324912 b!1324911) bm!64683))

(assert (= (and d!142825 res!879492) b!1324913))

(assert (= (and b!1324913 res!879493) b!1324909))

(assert (= (and b!1324909 res!879491) b!1324915))

(assert (= (and b!1324909 c!125602) b!1324907))

(assert (= (and b!1324909 (not c!125602)) b!1324916))

(assert (= (and b!1324907 res!879490) b!1324914))

(assert (= (and b!1324916 c!125600) b!1324906))

(assert (= (and b!1324916 (not c!125600)) b!1324908))

(declare-fun b_lambda!23723 () Bool)

(assert (=> (not b_lambda!23723) (not b!1324912)))

(assert (=> b!1324912 t!44746))

(declare-fun b_and!49017 () Bool)

(assert (= b_and!49011 (and (=> t!44746 result!24529) b_and!49017)))

(declare-fun b_lambda!23725 () Bool)

(assert (=> (not b_lambda!23725) (not b!1324914)))

(assert (=> b!1324914 t!44746))

(declare-fun b_and!49019 () Bool)

(assert (= b_and!49017 (and (=> t!44746 result!24529) b_and!49019)))

(declare-fun m!1213659 () Bool)

(assert (=> b!1324912 m!1213659))

(declare-fun m!1213661 () Bool)

(assert (=> b!1324912 m!1213661))

(assert (=> b!1324912 m!1213659))

(declare-fun m!1213663 () Bool)

(assert (=> b!1324912 m!1213663))

(declare-fun m!1213665 () Bool)

(assert (=> b!1324912 m!1213665))

(declare-fun m!1213667 () Bool)

(assert (=> b!1324912 m!1213667))

(declare-fun m!1213669 () Bool)

(assert (=> b!1324912 m!1213669))

(assert (=> b!1324912 m!1213569))

(declare-fun m!1213671 () Bool)

(assert (=> b!1324912 m!1213671))

(assert (=> b!1324912 m!1213669))

(assert (=> b!1324912 m!1213569))

(declare-fun m!1213673 () Bool)

(assert (=> d!142825 m!1213673))

(assert (=> d!142825 m!1213555))

(assert (=> b!1324915 m!1213667))

(assert (=> b!1324915 m!1213667))

(declare-fun m!1213675 () Bool)

(assert (=> b!1324915 m!1213675))

(assert (=> b!1324914 m!1213667))

(declare-fun m!1213677 () Bool)

(assert (=> b!1324914 m!1213677))

(assert (=> b!1324914 m!1213667))

(assert (=> b!1324914 m!1213669))

(assert (=> b!1324914 m!1213569))

(assert (=> b!1324914 m!1213671))

(assert (=> b!1324914 m!1213669))

(assert (=> b!1324914 m!1213569))

(declare-fun m!1213679 () Bool)

(assert (=> b!1324913 m!1213679))

(declare-fun m!1213681 () Bool)

(assert (=> b!1324906 m!1213681))

(assert (=> bm!64683 m!1213681))

(assert (=> b!1324917 m!1213667))

(assert (=> b!1324917 m!1213667))

(assert (=> b!1324917 m!1213675))

(declare-fun m!1213683 () Bool)

(assert (=> b!1324908 m!1213683))

(assert (=> b!1324907 m!1213667))

(assert (=> b!1324907 m!1213667))

(declare-fun m!1213685 () Bool)

(assert (=> b!1324907 m!1213685))

(assert (=> b!1324804 d!142825))

(declare-fun d!142827 () Bool)

(declare-fun e!755315 () Bool)

(assert (=> d!142827 e!755315))

(declare-fun res!879494 () Bool)

(assert (=> d!142827 (=> (not res!879494) (not e!755315))))

(declare-fun lt!589494 () ListLongMap!21309)

(assert (=> d!142827 (= res!879494 (contains!8761 lt!589494 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun lt!589493 () List!30810)

(assert (=> d!142827 (= lt!589494 (ListLongMap!21310 lt!589493))))

(declare-fun lt!589495 () Unit!43572)

(declare-fun lt!589496 () Unit!43572)

(assert (=> d!142827 (= lt!589495 lt!589496)))

(assert (=> d!142827 (= (getValueByKey!714 lt!589493 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!764 (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!142827 (= lt!589496 (lemmaContainsTupThenGetReturnValue!357 lt!589493 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!142827 (= lt!589493 (insertStrictlySorted!486 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!142827 (= (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) lt!589494)))

(declare-fun b!1324918 () Bool)

(declare-fun res!879495 () Bool)

(assert (=> b!1324918 (=> (not res!879495) (not e!755315))))

(assert (=> b!1324918 (= res!879495 (= (getValueByKey!714 (toList!10670 lt!589494) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!764 (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun b!1324919 () Bool)

(assert (=> b!1324919 (= e!755315 (contains!8763 (toList!10670 lt!589494) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(assert (= (and d!142827 res!879494) b!1324918))

(assert (= (and b!1324918 res!879495) b!1324919))

(declare-fun m!1213687 () Bool)

(assert (=> d!142827 m!1213687))

(declare-fun m!1213689 () Bool)

(assert (=> d!142827 m!1213689))

(declare-fun m!1213691 () Bool)

(assert (=> d!142827 m!1213691))

(declare-fun m!1213693 () Bool)

(assert (=> d!142827 m!1213693))

(declare-fun m!1213695 () Bool)

(assert (=> b!1324918 m!1213695))

(declare-fun m!1213697 () Bool)

(assert (=> b!1324919 m!1213697))

(assert (=> b!1324804 d!142827))

(declare-fun d!142829 () Bool)

(declare-fun e!755316 () Bool)

(assert (=> d!142829 e!755316))

(declare-fun res!879496 () Bool)

(assert (=> d!142829 (=> (not res!879496) (not e!755316))))

(declare-fun lt!589498 () ListLongMap!21309)

(assert (=> d!142829 (= res!879496 (contains!8761 lt!589498 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(declare-fun lt!589497 () List!30810)

(assert (=> d!142829 (= lt!589498 (ListLongMap!21310 lt!589497))))

(declare-fun lt!589499 () Unit!43572)

(declare-fun lt!589500 () Unit!43572)

(assert (=> d!142829 (= lt!589499 lt!589500)))

(assert (=> d!142829 (= (getValueByKey!714 lt!589497 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) (Some!764 (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(assert (=> d!142829 (= lt!589500 (lemmaContainsTupThenGetReturnValue!357 lt!589497 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(assert (=> d!142829 (= lt!589497 (insertStrictlySorted!486 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(assert (=> d!142829 (= (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) lt!589498)))

(declare-fun b!1324920 () Bool)

(declare-fun res!879497 () Bool)

(assert (=> b!1324920 (=> (not res!879497) (not e!755316))))

(assert (=> b!1324920 (= res!879497 (= (getValueByKey!714 (toList!10670 lt!589498) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) (Some!764 (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))))

(declare-fun b!1324921 () Bool)

(assert (=> b!1324921 (= e!755316 (contains!8763 (toList!10670 lt!589498) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (= (and d!142829 res!879496) b!1324920))

(assert (= (and b!1324920 res!879497) b!1324921))

(declare-fun m!1213699 () Bool)

(assert (=> d!142829 m!1213699))

(declare-fun m!1213701 () Bool)

(assert (=> d!142829 m!1213701))

(declare-fun m!1213703 () Bool)

(assert (=> d!142829 m!1213703))

(declare-fun m!1213705 () Bool)

(assert (=> d!142829 m!1213705))

(declare-fun m!1213707 () Bool)

(assert (=> b!1324920 m!1213707))

(declare-fun m!1213709 () Bool)

(assert (=> b!1324921 m!1213709))

(assert (=> b!1324804 d!142829))

(declare-fun b!1324932 () Bool)

(declare-fun e!755326 () Bool)

(declare-fun contains!8764 (List!30811 (_ BitVec 64)) Bool)

(assert (=> b!1324932 (= e!755326 (contains!8764 Nil!30808 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun d!142831 () Bool)

(declare-fun res!879504 () Bool)

(declare-fun e!755325 () Bool)

(assert (=> d!142831 (=> res!879504 e!755325)))

(assert (=> d!142831 (= res!879504 (bvsge #b00000000000000000000000000000000 (size!43733 _keys!1609)))))

(assert (=> d!142831 (= (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30808) e!755325)))

(declare-fun b!1324933 () Bool)

(declare-fun e!755328 () Bool)

(assert (=> b!1324933 (= e!755325 e!755328)))

(declare-fun res!879505 () Bool)

(assert (=> b!1324933 (=> (not res!879505) (not e!755328))))

(assert (=> b!1324933 (= res!879505 (not e!755326))))

(declare-fun res!879506 () Bool)

(assert (=> b!1324933 (=> (not res!879506) (not e!755326))))

(assert (=> b!1324933 (= res!879506 (validKeyInArray!0 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun b!1324934 () Bool)

(declare-fun e!755327 () Bool)

(assert (=> b!1324934 (= e!755328 e!755327)))

(declare-fun c!125606 () Bool)

(assert (=> b!1324934 (= c!125606 (validKeyInArray!0 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun bm!64686 () Bool)

(declare-fun call!64689 () Bool)

(assert (=> bm!64686 (= call!64689 (arrayNoDuplicates!0 _keys!1609 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125606 (Cons!30807 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) Nil!30808) Nil!30808)))))

(declare-fun b!1324935 () Bool)

(assert (=> b!1324935 (= e!755327 call!64689)))

(declare-fun b!1324936 () Bool)

(assert (=> b!1324936 (= e!755327 call!64689)))

(assert (= (and d!142831 (not res!879504)) b!1324933))

(assert (= (and b!1324933 res!879506) b!1324932))

(assert (= (and b!1324933 res!879505) b!1324934))

(assert (= (and b!1324934 c!125606) b!1324936))

(assert (= (and b!1324934 (not c!125606)) b!1324935))

(assert (= (or b!1324936 b!1324935) bm!64686))

(assert (=> b!1324932 m!1213625))

(assert (=> b!1324932 m!1213625))

(declare-fun m!1213711 () Bool)

(assert (=> b!1324932 m!1213711))

(assert (=> b!1324933 m!1213625))

(assert (=> b!1324933 m!1213625))

(assert (=> b!1324933 m!1213627))

(assert (=> b!1324934 m!1213625))

(assert (=> b!1324934 m!1213625))

(assert (=> b!1324934 m!1213627))

(assert (=> bm!64686 m!1213625))

(declare-fun m!1213713 () Bool)

(assert (=> bm!64686 m!1213713))

(assert (=> b!1324805 d!142831))

(declare-fun d!142833 () Bool)

(declare-fun e!755330 () Bool)

(assert (=> d!142833 e!755330))

(declare-fun res!879507 () Bool)

(assert (=> d!142833 (=> res!879507 e!755330)))

(declare-fun lt!589504 () Bool)

(assert (=> d!142833 (= res!879507 (not lt!589504))))

(declare-fun lt!589501 () Bool)

(assert (=> d!142833 (= lt!589504 lt!589501)))

(declare-fun lt!589503 () Unit!43572)

(declare-fun e!755329 () Unit!43572)

(assert (=> d!142833 (= lt!589503 e!755329)))

(declare-fun c!125607 () Bool)

(assert (=> d!142833 (= c!125607 lt!589501)))

(assert (=> d!142833 (= lt!589501 (containsKey!732 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(assert (=> d!142833 (= (contains!8761 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164) lt!589504)))

(declare-fun b!1324937 () Bool)

(declare-fun lt!589502 () Unit!43572)

(assert (=> b!1324937 (= e!755329 lt!589502)))

(assert (=> b!1324937 (= lt!589502 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(assert (=> b!1324937 (isDefined!517 (getValueByKey!714 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(declare-fun b!1324938 () Bool)

(declare-fun Unit!43575 () Unit!43572)

(assert (=> b!1324938 (= e!755329 Unit!43575)))

(declare-fun b!1324939 () Bool)

(assert (=> b!1324939 (= e!755330 (isDefined!517 (getValueByKey!714 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164)))))

(assert (= (and d!142833 c!125607) b!1324937))

(assert (= (and d!142833 (not c!125607)) b!1324938))

(assert (= (and d!142833 (not res!879507)) b!1324939))

(declare-fun m!1213715 () Bool)

(assert (=> d!142833 m!1213715))

(declare-fun m!1213717 () Bool)

(assert (=> b!1324937 m!1213717))

(declare-fun m!1213719 () Bool)

(assert (=> b!1324937 m!1213719))

(assert (=> b!1324937 m!1213719))

(declare-fun m!1213721 () Bool)

(assert (=> b!1324937 m!1213721))

(assert (=> b!1324939 m!1213719))

(assert (=> b!1324939 m!1213719))

(assert (=> b!1324939 m!1213721))

(assert (=> b!1324801 d!142833))

(declare-fun b!1324982 () Bool)

(declare-fun e!755364 () ListLongMap!21309)

(declare-fun call!64710 () ListLongMap!21309)

(assert (=> b!1324982 (= e!755364 call!64710)))

(declare-fun b!1324983 () Bool)

(declare-fun e!755369 () ListLongMap!21309)

(assert (=> b!1324983 (= e!755369 call!64710)))

(declare-fun b!1324984 () Bool)

(declare-fun e!755366 () Unit!43572)

(declare-fun Unit!43576 () Unit!43572)

(assert (=> b!1324984 (= e!755366 Unit!43576)))

(declare-fun bm!64701 () Bool)

(declare-fun call!64705 () Bool)

(declare-fun lt!589570 () ListLongMap!21309)

(assert (=> bm!64701 (= call!64705 (contains!8761 lt!589570 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!755357 () Bool)

(declare-fun b!1324985 () Bool)

(assert (=> b!1324985 (= e!755357 (= (apply!1064 lt!589570 (select (arr!43182 _keys!1609) from!2000)) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1324985 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43734 _values!1337)))))

(assert (=> b!1324985 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43733 _keys!1609)))))

(declare-fun b!1324986 () Bool)

(declare-fun e!755362 () Bool)

(assert (=> b!1324986 (= e!755362 (validKeyInArray!0 (select (arr!43182 _keys!1609) from!2000)))))

(declare-fun b!1324987 () Bool)

(declare-fun e!755363 () Bool)

(assert (=> b!1324987 (= e!755363 (= (apply!1064 lt!589570 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1279))))

(declare-fun b!1324988 () Bool)

(declare-fun c!125625 () Bool)

(assert (=> b!1324988 (= c!125625 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1324988 (= e!755369 e!755364)))

(declare-fun b!1324989 () Bool)

(declare-fun res!879528 () Bool)

(declare-fun e!755358 () Bool)

(assert (=> b!1324989 (=> (not res!879528) (not e!755358))))

(declare-fun e!755368 () Bool)

(assert (=> b!1324989 (= res!879528 e!755368)))

(declare-fun c!125621 () Bool)

(assert (=> b!1324989 (= c!125621 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1324990 () Bool)

(declare-fun e!755360 () Bool)

(assert (=> b!1324990 (= e!755360 e!755357)))

(declare-fun res!879529 () Bool)

(assert (=> b!1324990 (=> (not res!879529) (not e!755357))))

(assert (=> b!1324990 (= res!879529 (contains!8761 lt!589570 (select (arr!43182 _keys!1609) from!2000)))))

(assert (=> b!1324990 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43733 _keys!1609)))))

(declare-fun bm!64702 () Bool)

(declare-fun call!64707 () Bool)

(assert (=> bm!64702 (= call!64707 (contains!8761 lt!589570 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!64703 () Bool)

(declare-fun call!64708 () ListLongMap!21309)

(assert (=> bm!64703 (= call!64710 call!64708)))

(declare-fun b!1324992 () Bool)

(declare-fun e!755361 () ListLongMap!21309)

(assert (=> b!1324992 (= e!755361 e!755369)))

(declare-fun c!125623 () Bool)

(assert (=> b!1324992 (= c!125623 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!64706 () ListLongMap!21309)

(declare-fun bm!64704 () Bool)

(assert (=> bm!64704 (= call!64706 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun b!1324993 () Bool)

(declare-fun call!64709 () ListLongMap!21309)

(assert (=> b!1324993 (= e!755364 call!64709)))

(declare-fun b!1324994 () Bool)

(declare-fun e!755367 () Bool)

(assert (=> b!1324994 (= e!755367 (= (apply!1064 lt!589570 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1279))))

(declare-fun b!1324995 () Bool)

(declare-fun e!755359 () Bool)

(assert (=> b!1324995 (= e!755359 e!755367)))

(declare-fun res!879534 () Bool)

(assert (=> b!1324995 (= res!879534 call!64705)))

(assert (=> b!1324995 (=> (not res!879534) (not e!755367))))

(declare-fun b!1324996 () Bool)

(declare-fun e!755365 () Bool)

(assert (=> b!1324996 (= e!755365 (validKeyInArray!0 (select (arr!43182 _keys!1609) from!2000)))))

(declare-fun b!1324997 () Bool)

(declare-fun lt!589560 () Unit!43572)

(assert (=> b!1324997 (= e!755366 lt!589560)))

(declare-fun lt!589569 () ListLongMap!21309)

(assert (=> b!1324997 (= lt!589569 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!589549 () (_ BitVec 64))

(assert (=> b!1324997 (= lt!589549 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!589556 () (_ BitVec 64))

(assert (=> b!1324997 (= lt!589556 (select (arr!43182 _keys!1609) from!2000))))

(declare-fun lt!589555 () Unit!43572)

(declare-fun addStillContains!1167 (ListLongMap!21309 (_ BitVec 64) V!53475 (_ BitVec 64)) Unit!43572)

(assert (=> b!1324997 (= lt!589555 (addStillContains!1167 lt!589569 lt!589549 zeroValue!1279 lt!589556))))

(assert (=> b!1324997 (contains!8761 (+!4586 lt!589569 (tuple2!23641 lt!589549 zeroValue!1279)) lt!589556)))

(declare-fun lt!589562 () Unit!43572)

(assert (=> b!1324997 (= lt!589562 lt!589555)))

(declare-fun lt!589568 () ListLongMap!21309)

(assert (=> b!1324997 (= lt!589568 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!589563 () (_ BitVec 64))

(assert (=> b!1324997 (= lt!589563 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!589559 () (_ BitVec 64))

(assert (=> b!1324997 (= lt!589559 (select (arr!43182 _keys!1609) from!2000))))

(declare-fun lt!589551 () Unit!43572)

(declare-fun addApplyDifferent!567 (ListLongMap!21309 (_ BitVec 64) V!53475 (_ BitVec 64)) Unit!43572)

(assert (=> b!1324997 (= lt!589551 (addApplyDifferent!567 lt!589568 lt!589563 minValue!1279 lt!589559))))

(assert (=> b!1324997 (= (apply!1064 (+!4586 lt!589568 (tuple2!23641 lt!589563 minValue!1279)) lt!589559) (apply!1064 lt!589568 lt!589559))))

(declare-fun lt!589566 () Unit!43572)

(assert (=> b!1324997 (= lt!589566 lt!589551)))

(declare-fun lt!589557 () ListLongMap!21309)

(assert (=> b!1324997 (= lt!589557 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!589553 () (_ BitVec 64))

(assert (=> b!1324997 (= lt!589553 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!589564 () (_ BitVec 64))

(assert (=> b!1324997 (= lt!589564 (select (arr!43182 _keys!1609) from!2000))))

(declare-fun lt!589565 () Unit!43572)

(assert (=> b!1324997 (= lt!589565 (addApplyDifferent!567 lt!589557 lt!589553 zeroValue!1279 lt!589564))))

(assert (=> b!1324997 (= (apply!1064 (+!4586 lt!589557 (tuple2!23641 lt!589553 zeroValue!1279)) lt!589564) (apply!1064 lt!589557 lt!589564))))

(declare-fun lt!589550 () Unit!43572)

(assert (=> b!1324997 (= lt!589550 lt!589565)))

(declare-fun lt!589558 () ListLongMap!21309)

(assert (=> b!1324997 (= lt!589558 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))

(declare-fun lt!589561 () (_ BitVec 64))

(assert (=> b!1324997 (= lt!589561 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!589552 () (_ BitVec 64))

(assert (=> b!1324997 (= lt!589552 (select (arr!43182 _keys!1609) from!2000))))

(assert (=> b!1324997 (= lt!589560 (addApplyDifferent!567 lt!589558 lt!589561 minValue!1279 lt!589552))))

(assert (=> b!1324997 (= (apply!1064 (+!4586 lt!589558 (tuple2!23641 lt!589561 minValue!1279)) lt!589552) (apply!1064 lt!589558 lt!589552))))

(declare-fun b!1324998 () Bool)

(assert (=> b!1324998 (= e!755358 e!755359)))

(declare-fun c!125620 () Bool)

(assert (=> b!1324998 (= c!125620 (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!64705 () Bool)

(declare-fun call!64704 () ListLongMap!21309)

(assert (=> bm!64705 (= call!64709 call!64704)))

(declare-fun d!142835 () Bool)

(assert (=> d!142835 e!755358))

(declare-fun res!879533 () Bool)

(assert (=> d!142835 (=> (not res!879533) (not e!755358))))

(assert (=> d!142835 (= res!879533 (or (bvsge from!2000 (size!43733 _keys!1609)) (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43733 _keys!1609)))))))

(declare-fun lt!589554 () ListLongMap!21309)

(assert (=> d!142835 (= lt!589570 lt!589554)))

(declare-fun lt!589567 () Unit!43572)

(assert (=> d!142835 (= lt!589567 e!755366)))

(declare-fun c!125622 () Bool)

(assert (=> d!142835 (= c!125622 e!755365)))

(declare-fun res!879527 () Bool)

(assert (=> d!142835 (=> (not res!879527) (not e!755365))))

(assert (=> d!142835 (= res!879527 (bvslt from!2000 (size!43733 _keys!1609)))))

(assert (=> d!142835 (= lt!589554 e!755361)))

(declare-fun c!125624 () Bool)

(assert (=> d!142835 (= c!125624 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!142835 (validMask!0 mask!2019)))

(assert (=> d!142835 (= (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) lt!589570)))

(declare-fun b!1324991 () Bool)

(assert (=> b!1324991 (= e!755368 e!755363)))

(declare-fun res!879532 () Bool)

(assert (=> b!1324991 (= res!879532 call!64707)))

(assert (=> b!1324991 (=> (not res!879532) (not e!755363))))

(declare-fun b!1324999 () Bool)

(assert (=> b!1324999 (= e!755359 (not call!64705))))

(declare-fun b!1325000 () Bool)

(assert (=> b!1325000 (= e!755361 (+!4586 call!64708 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(declare-fun b!1325001 () Bool)

(declare-fun res!879530 () Bool)

(assert (=> b!1325001 (=> (not res!879530) (not e!755358))))

(assert (=> b!1325001 (= res!879530 e!755360)))

(declare-fun res!879531 () Bool)

(assert (=> b!1325001 (=> res!879531 e!755360)))

(assert (=> b!1325001 (= res!879531 (not e!755362))))

(declare-fun res!879526 () Bool)

(assert (=> b!1325001 (=> (not res!879526) (not e!755362))))

(assert (=> b!1325001 (= res!879526 (bvslt from!2000 (size!43733 _keys!1609)))))

(declare-fun b!1325002 () Bool)

(assert (=> b!1325002 (= e!755368 (not call!64707))))

(declare-fun bm!64706 () Bool)

(assert (=> bm!64706 (= call!64704 call!64706)))

(declare-fun bm!64707 () Bool)

(assert (=> bm!64707 (= call!64708 (+!4586 (ite c!125624 call!64706 (ite c!125623 call!64704 call!64709)) (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (= (and d!142835 c!125624) b!1325000))

(assert (= (and d!142835 (not c!125624)) b!1324992))

(assert (= (and b!1324992 c!125623) b!1324983))

(assert (= (and b!1324992 (not c!125623)) b!1324988))

(assert (= (and b!1324988 c!125625) b!1324982))

(assert (= (and b!1324988 (not c!125625)) b!1324993))

(assert (= (or b!1324982 b!1324993) bm!64705))

(assert (= (or b!1324983 bm!64705) bm!64706))

(assert (= (or b!1324983 b!1324982) bm!64703))

(assert (= (or b!1325000 bm!64706) bm!64704))

(assert (= (or b!1325000 bm!64703) bm!64707))

(assert (= (and d!142835 res!879527) b!1324996))

(assert (= (and d!142835 c!125622) b!1324997))

(assert (= (and d!142835 (not c!125622)) b!1324984))

(assert (= (and d!142835 res!879533) b!1325001))

(assert (= (and b!1325001 res!879526) b!1324986))

(assert (= (and b!1325001 (not res!879531)) b!1324990))

(assert (= (and b!1324990 res!879529) b!1324985))

(assert (= (and b!1325001 res!879530) b!1324989))

(assert (= (and b!1324989 c!125621) b!1324991))

(assert (= (and b!1324989 (not c!125621)) b!1325002))

(assert (= (and b!1324991 res!879532) b!1324987))

(assert (= (or b!1324991 b!1325002) bm!64702))

(assert (= (and b!1324989 res!879528) b!1324998))

(assert (= (and b!1324998 c!125620) b!1324995))

(assert (= (and b!1324998 (not c!125620)) b!1324999))

(assert (= (and b!1324995 res!879534) b!1324994))

(assert (= (or b!1324995 b!1324999) bm!64701))

(declare-fun b_lambda!23727 () Bool)

(assert (=> (not b_lambda!23727) (not b!1324985)))

(assert (=> b!1324985 t!44746))

(declare-fun b_and!49021 () Bool)

(assert (= b_and!49019 (and (=> t!44746 result!24529) b_and!49021)))

(assert (=> d!142835 m!1213555))

(assert (=> b!1324996 m!1213561))

(assert (=> b!1324996 m!1213561))

(assert (=> b!1324996 m!1213563))

(declare-fun m!1213723 () Bool)

(assert (=> bm!64704 m!1213723))

(declare-fun m!1213725 () Bool)

(assert (=> bm!64702 m!1213725))

(declare-fun m!1213727 () Bool)

(assert (=> b!1324987 m!1213727))

(declare-fun m!1213729 () Bool)

(assert (=> b!1324997 m!1213729))

(declare-fun m!1213731 () Bool)

(assert (=> b!1324997 m!1213731))

(declare-fun m!1213733 () Bool)

(assert (=> b!1324997 m!1213733))

(declare-fun m!1213735 () Bool)

(assert (=> b!1324997 m!1213735))

(declare-fun m!1213737 () Bool)

(assert (=> b!1324997 m!1213737))

(assert (=> b!1324997 m!1213561))

(declare-fun m!1213739 () Bool)

(assert (=> b!1324997 m!1213739))

(assert (=> b!1324997 m!1213729))

(declare-fun m!1213741 () Bool)

(assert (=> b!1324997 m!1213741))

(declare-fun m!1213743 () Bool)

(assert (=> b!1324997 m!1213743))

(declare-fun m!1213745 () Bool)

(assert (=> b!1324997 m!1213745))

(declare-fun m!1213747 () Bool)

(assert (=> b!1324997 m!1213747))

(assert (=> b!1324997 m!1213743))

(declare-fun m!1213749 () Bool)

(assert (=> b!1324997 m!1213749))

(declare-fun m!1213751 () Bool)

(assert (=> b!1324997 m!1213751))

(assert (=> b!1324997 m!1213749))

(assert (=> b!1324997 m!1213723))

(assert (=> b!1324997 m!1213737))

(declare-fun m!1213753 () Bool)

(assert (=> b!1324997 m!1213753))

(declare-fun m!1213755 () Bool)

(assert (=> b!1324997 m!1213755))

(declare-fun m!1213757 () Bool)

(assert (=> b!1324997 m!1213757))

(declare-fun m!1213759 () Bool)

(assert (=> b!1325000 m!1213759))

(declare-fun m!1213761 () Bool)

(assert (=> bm!64701 m!1213761))

(assert (=> b!1324985 m!1213577))

(assert (=> b!1324985 m!1213569))

(assert (=> b!1324985 m!1213581))

(assert (=> b!1324985 m!1213561))

(assert (=> b!1324985 m!1213561))

(declare-fun m!1213763 () Bool)

(assert (=> b!1324985 m!1213763))

(assert (=> b!1324985 m!1213577))

(assert (=> b!1324985 m!1213569))

(assert (=> b!1324986 m!1213561))

(assert (=> b!1324986 m!1213561))

(assert (=> b!1324986 m!1213563))

(declare-fun m!1213765 () Bool)

(assert (=> b!1324994 m!1213765))

(declare-fun m!1213767 () Bool)

(assert (=> bm!64707 m!1213767))

(assert (=> b!1324990 m!1213561))

(assert (=> b!1324990 m!1213561))

(declare-fun m!1213769 () Bool)

(assert (=> b!1324990 m!1213769))

(assert (=> b!1324801 d!142835))

(declare-fun d!142837 () Bool)

(assert (=> d!142837 (= (validKeyInArray!0 (select (arr!43182 _keys!1609) from!2000)) (and (not (= (select (arr!43182 _keys!1609) from!2000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43182 _keys!1609) from!2000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1324806 d!142837))

(declare-fun b!1325010 () Bool)

(declare-fun e!755374 () Bool)

(assert (=> b!1325010 (= e!755374 tp_is_empty!36279)))

(declare-fun mapIsEmpty!56072 () Bool)

(declare-fun mapRes!56072 () Bool)

(assert (=> mapIsEmpty!56072 mapRes!56072))

(declare-fun condMapEmpty!56072 () Bool)

(declare-fun mapDefault!56072 () ValueCell!17241)

(assert (=> mapNonEmpty!56066 (= condMapEmpty!56072 (= mapRest!56066 ((as const (Array (_ BitVec 32) ValueCell!17241)) mapDefault!56072)))))

(assert (=> mapNonEmpty!56066 (= tp!106853 (and e!755374 mapRes!56072))))

(declare-fun b!1325009 () Bool)

(declare-fun e!755375 () Bool)

(assert (=> b!1325009 (= e!755375 tp_is_empty!36279)))

(declare-fun mapNonEmpty!56072 () Bool)

(declare-fun tp!106863 () Bool)

(assert (=> mapNonEmpty!56072 (= mapRes!56072 (and tp!106863 e!755375))))

(declare-fun mapValue!56072 () ValueCell!17241)

(declare-fun mapKey!56072 () (_ BitVec 32))

(declare-fun mapRest!56072 () (Array (_ BitVec 32) ValueCell!17241))

(assert (=> mapNonEmpty!56072 (= mapRest!56066 (store mapRest!56072 mapKey!56072 mapValue!56072))))

(assert (= (and mapNonEmpty!56066 condMapEmpty!56072) mapIsEmpty!56072))

(assert (= (and mapNonEmpty!56066 (not condMapEmpty!56072)) mapNonEmpty!56072))

(assert (= (and mapNonEmpty!56072 ((_ is ValueCellFull!17241) mapValue!56072)) b!1325009))

(assert (= (and mapNonEmpty!56066 ((_ is ValueCellFull!17241) mapDefault!56072)) b!1325010))

(declare-fun m!1213771 () Bool)

(assert (=> mapNonEmpty!56072 m!1213771))

(declare-fun b_lambda!23729 () Bool)

(assert (= b_lambda!23723 (or (and start!111838 b_free!30459) b_lambda!23729)))

(declare-fun b_lambda!23731 () Bool)

(assert (= b_lambda!23727 (or (and start!111838 b_free!30459) b_lambda!23731)))

(declare-fun b_lambda!23733 () Bool)

(assert (= b_lambda!23725 (or (and start!111838 b_free!30459) b_lambda!23733)))

(check-sat (not b_lambda!23733) (not b!1324920) (not b!1324913) (not b!1324986) (not d!142827) (not b!1324994) (not b!1324912) (not b!1324997) (not d!142821) (not b!1324987) (not bm!64704) (not d!142833) (not b!1324867) (not bm!64683) (not b!1324875) (not mapNonEmpty!56072) (not b!1324860) (not b!1324918) (not d!142825) (not d!142829) (not b!1324933) (not b!1324921) (not b!1324919) (not b!1324908) (not bm!64701) (not d!142835) (not b!1324917) tp_is_empty!36279 (not b!1324880) (not bm!64680) (not b_lambda!23729) (not b!1324874) b_and!49021 (not bm!64702) (not d!142819) (not b_lambda!23721) (not b!1324934) (not b!1324881) (not b!1324985) (not b_lambda!23731) (not bm!64686) (not b!1324937) (not b!1324914) (not b!1324906) (not b!1324915) (not b!1325000) (not bm!64707) (not b!1324869) (not b!1324907) (not b!1324932) (not b!1324990) (not b!1324858) (not b_next!30459) (not b!1324939) (not b!1324996))
(check-sat b_and!49021 (not b_next!30459))
(get-model)

(declare-fun d!142839 () Bool)

(declare-fun res!879539 () Bool)

(declare-fun e!755380 () Bool)

(assert (=> d!142839 (=> res!879539 e!755380)))

(assert (=> d!142839 (= res!879539 (and ((_ is Cons!30806) (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) (= (_1!11830 (h!32015 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164)))))

(assert (=> d!142839 (= (containsKey!732 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164) e!755380)))

(declare-fun b!1325015 () Bool)

(declare-fun e!755381 () Bool)

(assert (=> b!1325015 (= e!755380 e!755381)))

(declare-fun res!879540 () Bool)

(assert (=> b!1325015 (=> (not res!879540) (not e!755381))))

(assert (=> b!1325015 (= res!879540 (and (or (not ((_ is Cons!30806) (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) (bvsle (_1!11830 (h!32015 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164)) ((_ is Cons!30806) (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) (bvslt (_1!11830 (h!32015 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164)))))

(declare-fun b!1325016 () Bool)

(assert (=> b!1325016 (= e!755381 (containsKey!732 (t!44747 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) k0!1164))))

(assert (= (and d!142839 (not res!879539)) b!1325015))

(assert (= (and b!1325015 res!879540) b!1325016))

(declare-fun m!1213773 () Bool)

(assert (=> b!1325016 m!1213773))

(assert (=> d!142833 d!142839))

(assert (=> d!142835 d!142811))

(assert (=> b!1324996 d!142837))

(declare-fun d!142841 () Bool)

(declare-fun isEmpty!1079 (List!30810) Bool)

(assert (=> d!142841 (= (isEmpty!1078 lt!589490) (isEmpty!1079 (toList!10670 lt!589490)))))

(declare-fun bs!37888 () Bool)

(assert (= bs!37888 d!142841))

(declare-fun m!1213775 () Bool)

(assert (=> bs!37888 m!1213775))

(assert (=> b!1324908 d!142841))

(declare-fun d!142843 () Bool)

(declare-fun get!21790 (Option!765) V!53475)

(assert (=> d!142843 (= (apply!1064 lt!589558 lt!589552) (get!21790 (getValueByKey!714 (toList!10670 lt!589558) lt!589552)))))

(declare-fun bs!37889 () Bool)

(assert (= bs!37889 d!142843))

(declare-fun m!1213777 () Bool)

(assert (=> bs!37889 m!1213777))

(assert (=> bs!37889 m!1213777))

(declare-fun m!1213779 () Bool)

(assert (=> bs!37889 m!1213779))

(assert (=> b!1324997 d!142843))

(declare-fun d!142845 () Bool)

(assert (=> d!142845 (= (apply!1064 lt!589568 lt!589559) (get!21790 (getValueByKey!714 (toList!10670 lt!589568) lt!589559)))))

(declare-fun bs!37890 () Bool)

(assert (= bs!37890 d!142845))

(declare-fun m!1213781 () Bool)

(assert (=> bs!37890 m!1213781))

(assert (=> bs!37890 m!1213781))

(declare-fun m!1213783 () Bool)

(assert (=> bs!37890 m!1213783))

(assert (=> b!1324997 d!142845))

(declare-fun d!142847 () Bool)

(declare-fun e!755382 () Bool)

(assert (=> d!142847 e!755382))

(declare-fun res!879541 () Bool)

(assert (=> d!142847 (=> (not res!879541) (not e!755382))))

(declare-fun lt!589572 () ListLongMap!21309)

(assert (=> d!142847 (= res!879541 (contains!8761 lt!589572 (_1!11830 (tuple2!23641 lt!589563 minValue!1279))))))

(declare-fun lt!589571 () List!30810)

(assert (=> d!142847 (= lt!589572 (ListLongMap!21310 lt!589571))))

(declare-fun lt!589573 () Unit!43572)

(declare-fun lt!589574 () Unit!43572)

(assert (=> d!142847 (= lt!589573 lt!589574)))

(assert (=> d!142847 (= (getValueByKey!714 lt!589571 (_1!11830 (tuple2!23641 lt!589563 minValue!1279))) (Some!764 (_2!11830 (tuple2!23641 lt!589563 minValue!1279))))))

(assert (=> d!142847 (= lt!589574 (lemmaContainsTupThenGetReturnValue!357 lt!589571 (_1!11830 (tuple2!23641 lt!589563 minValue!1279)) (_2!11830 (tuple2!23641 lt!589563 minValue!1279))))))

(assert (=> d!142847 (= lt!589571 (insertStrictlySorted!486 (toList!10670 lt!589568) (_1!11830 (tuple2!23641 lt!589563 minValue!1279)) (_2!11830 (tuple2!23641 lt!589563 minValue!1279))))))

(assert (=> d!142847 (= (+!4586 lt!589568 (tuple2!23641 lt!589563 minValue!1279)) lt!589572)))

(declare-fun b!1325017 () Bool)

(declare-fun res!879542 () Bool)

(assert (=> b!1325017 (=> (not res!879542) (not e!755382))))

(assert (=> b!1325017 (= res!879542 (= (getValueByKey!714 (toList!10670 lt!589572) (_1!11830 (tuple2!23641 lt!589563 minValue!1279))) (Some!764 (_2!11830 (tuple2!23641 lt!589563 minValue!1279)))))))

(declare-fun b!1325018 () Bool)

(assert (=> b!1325018 (= e!755382 (contains!8763 (toList!10670 lt!589572) (tuple2!23641 lt!589563 minValue!1279)))))

(assert (= (and d!142847 res!879541) b!1325017))

(assert (= (and b!1325017 res!879542) b!1325018))

(declare-fun m!1213785 () Bool)

(assert (=> d!142847 m!1213785))

(declare-fun m!1213787 () Bool)

(assert (=> d!142847 m!1213787))

(declare-fun m!1213789 () Bool)

(assert (=> d!142847 m!1213789))

(declare-fun m!1213791 () Bool)

(assert (=> d!142847 m!1213791))

(declare-fun m!1213793 () Bool)

(assert (=> b!1325017 m!1213793))

(declare-fun m!1213795 () Bool)

(assert (=> b!1325018 m!1213795))

(assert (=> b!1324997 d!142847))

(declare-fun d!142849 () Bool)

(assert (=> d!142849 (= (apply!1064 (+!4586 lt!589558 (tuple2!23641 lt!589561 minValue!1279)) lt!589552) (apply!1064 lt!589558 lt!589552))))

(declare-fun lt!589577 () Unit!43572)

(declare-fun choose!1954 (ListLongMap!21309 (_ BitVec 64) V!53475 (_ BitVec 64)) Unit!43572)

(assert (=> d!142849 (= lt!589577 (choose!1954 lt!589558 lt!589561 minValue!1279 lt!589552))))

(declare-fun e!755385 () Bool)

(assert (=> d!142849 e!755385))

(declare-fun res!879545 () Bool)

(assert (=> d!142849 (=> (not res!879545) (not e!755385))))

(assert (=> d!142849 (= res!879545 (contains!8761 lt!589558 lt!589552))))

(assert (=> d!142849 (= (addApplyDifferent!567 lt!589558 lt!589561 minValue!1279 lt!589552) lt!589577)))

(declare-fun b!1325022 () Bool)

(assert (=> b!1325022 (= e!755385 (not (= lt!589552 lt!589561)))))

(assert (= (and d!142849 res!879545) b!1325022))

(assert (=> d!142849 m!1213755))

(assert (=> d!142849 m!1213729))

(assert (=> d!142849 m!1213731))

(assert (=> d!142849 m!1213729))

(declare-fun m!1213797 () Bool)

(assert (=> d!142849 m!1213797))

(declare-fun m!1213799 () Bool)

(assert (=> d!142849 m!1213799))

(assert (=> b!1324997 d!142849))

(declare-fun d!142851 () Bool)

(assert (=> d!142851 (= (apply!1064 (+!4586 lt!589558 (tuple2!23641 lt!589561 minValue!1279)) lt!589552) (get!21790 (getValueByKey!714 (toList!10670 (+!4586 lt!589558 (tuple2!23641 lt!589561 minValue!1279))) lt!589552)))))

(declare-fun bs!37891 () Bool)

(assert (= bs!37891 d!142851))

(declare-fun m!1213801 () Bool)

(assert (=> bs!37891 m!1213801))

(assert (=> bs!37891 m!1213801))

(declare-fun m!1213803 () Bool)

(assert (=> bs!37891 m!1213803))

(assert (=> b!1324997 d!142851))

(declare-fun d!142853 () Bool)

(declare-fun e!755386 () Bool)

(assert (=> d!142853 e!755386))

(declare-fun res!879546 () Bool)

(assert (=> d!142853 (=> (not res!879546) (not e!755386))))

(declare-fun lt!589579 () ListLongMap!21309)

(assert (=> d!142853 (= res!879546 (contains!8761 lt!589579 (_1!11830 (tuple2!23641 lt!589549 zeroValue!1279))))))

(declare-fun lt!589578 () List!30810)

(assert (=> d!142853 (= lt!589579 (ListLongMap!21310 lt!589578))))

(declare-fun lt!589580 () Unit!43572)

(declare-fun lt!589581 () Unit!43572)

(assert (=> d!142853 (= lt!589580 lt!589581)))

(assert (=> d!142853 (= (getValueByKey!714 lt!589578 (_1!11830 (tuple2!23641 lt!589549 zeroValue!1279))) (Some!764 (_2!11830 (tuple2!23641 lt!589549 zeroValue!1279))))))

(assert (=> d!142853 (= lt!589581 (lemmaContainsTupThenGetReturnValue!357 lt!589578 (_1!11830 (tuple2!23641 lt!589549 zeroValue!1279)) (_2!11830 (tuple2!23641 lt!589549 zeroValue!1279))))))

(assert (=> d!142853 (= lt!589578 (insertStrictlySorted!486 (toList!10670 lt!589569) (_1!11830 (tuple2!23641 lt!589549 zeroValue!1279)) (_2!11830 (tuple2!23641 lt!589549 zeroValue!1279))))))

(assert (=> d!142853 (= (+!4586 lt!589569 (tuple2!23641 lt!589549 zeroValue!1279)) lt!589579)))

(declare-fun b!1325023 () Bool)

(declare-fun res!879547 () Bool)

(assert (=> b!1325023 (=> (not res!879547) (not e!755386))))

(assert (=> b!1325023 (= res!879547 (= (getValueByKey!714 (toList!10670 lt!589579) (_1!11830 (tuple2!23641 lt!589549 zeroValue!1279))) (Some!764 (_2!11830 (tuple2!23641 lt!589549 zeroValue!1279)))))))

(declare-fun b!1325024 () Bool)

(assert (=> b!1325024 (= e!755386 (contains!8763 (toList!10670 lt!589579) (tuple2!23641 lt!589549 zeroValue!1279)))))

(assert (= (and d!142853 res!879546) b!1325023))

(assert (= (and b!1325023 res!879547) b!1325024))

(declare-fun m!1213805 () Bool)

(assert (=> d!142853 m!1213805))

(declare-fun m!1213807 () Bool)

(assert (=> d!142853 m!1213807))

(declare-fun m!1213809 () Bool)

(assert (=> d!142853 m!1213809))

(declare-fun m!1213811 () Bool)

(assert (=> d!142853 m!1213811))

(declare-fun m!1213813 () Bool)

(assert (=> b!1325023 m!1213813))

(declare-fun m!1213815 () Bool)

(assert (=> b!1325024 m!1213815))

(assert (=> b!1324997 d!142853))

(declare-fun d!142855 () Bool)

(assert (=> d!142855 (= (apply!1064 (+!4586 lt!589557 (tuple2!23641 lt!589553 zeroValue!1279)) lt!589564) (apply!1064 lt!589557 lt!589564))))

(declare-fun lt!589582 () Unit!43572)

(assert (=> d!142855 (= lt!589582 (choose!1954 lt!589557 lt!589553 zeroValue!1279 lt!589564))))

(declare-fun e!755387 () Bool)

(assert (=> d!142855 e!755387))

(declare-fun res!879548 () Bool)

(assert (=> d!142855 (=> (not res!879548) (not e!755387))))

(assert (=> d!142855 (= res!879548 (contains!8761 lt!589557 lt!589564))))

(assert (=> d!142855 (= (addApplyDifferent!567 lt!589557 lt!589553 zeroValue!1279 lt!589564) lt!589582)))

(declare-fun b!1325025 () Bool)

(assert (=> b!1325025 (= e!755387 (not (= lt!589564 lt!589553)))))

(assert (= (and d!142855 res!879548) b!1325025))

(assert (=> d!142855 m!1213757))

(assert (=> d!142855 m!1213749))

(assert (=> d!142855 m!1213751))

(assert (=> d!142855 m!1213749))

(declare-fun m!1213817 () Bool)

(assert (=> d!142855 m!1213817))

(declare-fun m!1213819 () Bool)

(assert (=> d!142855 m!1213819))

(assert (=> b!1324997 d!142855))

(declare-fun d!142857 () Bool)

(declare-fun e!755388 () Bool)

(assert (=> d!142857 e!755388))

(declare-fun res!879549 () Bool)

(assert (=> d!142857 (=> (not res!879549) (not e!755388))))

(declare-fun lt!589584 () ListLongMap!21309)

(assert (=> d!142857 (= res!879549 (contains!8761 lt!589584 (_1!11830 (tuple2!23641 lt!589561 minValue!1279))))))

(declare-fun lt!589583 () List!30810)

(assert (=> d!142857 (= lt!589584 (ListLongMap!21310 lt!589583))))

(declare-fun lt!589585 () Unit!43572)

(declare-fun lt!589586 () Unit!43572)

(assert (=> d!142857 (= lt!589585 lt!589586)))

(assert (=> d!142857 (= (getValueByKey!714 lt!589583 (_1!11830 (tuple2!23641 lt!589561 minValue!1279))) (Some!764 (_2!11830 (tuple2!23641 lt!589561 minValue!1279))))))

(assert (=> d!142857 (= lt!589586 (lemmaContainsTupThenGetReturnValue!357 lt!589583 (_1!11830 (tuple2!23641 lt!589561 minValue!1279)) (_2!11830 (tuple2!23641 lt!589561 minValue!1279))))))

(assert (=> d!142857 (= lt!589583 (insertStrictlySorted!486 (toList!10670 lt!589558) (_1!11830 (tuple2!23641 lt!589561 minValue!1279)) (_2!11830 (tuple2!23641 lt!589561 minValue!1279))))))

(assert (=> d!142857 (= (+!4586 lt!589558 (tuple2!23641 lt!589561 minValue!1279)) lt!589584)))

(declare-fun b!1325026 () Bool)

(declare-fun res!879550 () Bool)

(assert (=> b!1325026 (=> (not res!879550) (not e!755388))))

(assert (=> b!1325026 (= res!879550 (= (getValueByKey!714 (toList!10670 lt!589584) (_1!11830 (tuple2!23641 lt!589561 minValue!1279))) (Some!764 (_2!11830 (tuple2!23641 lt!589561 minValue!1279)))))))

(declare-fun b!1325027 () Bool)

(assert (=> b!1325027 (= e!755388 (contains!8763 (toList!10670 lt!589584) (tuple2!23641 lt!589561 minValue!1279)))))

(assert (= (and d!142857 res!879549) b!1325026))

(assert (= (and b!1325026 res!879550) b!1325027))

(declare-fun m!1213821 () Bool)

(assert (=> d!142857 m!1213821))

(declare-fun m!1213823 () Bool)

(assert (=> d!142857 m!1213823))

(declare-fun m!1213825 () Bool)

(assert (=> d!142857 m!1213825))

(declare-fun m!1213827 () Bool)

(assert (=> d!142857 m!1213827))

(declare-fun m!1213829 () Bool)

(assert (=> b!1325026 m!1213829))

(declare-fun m!1213831 () Bool)

(assert (=> b!1325027 m!1213831))

(assert (=> b!1324997 d!142857))

(declare-fun d!142859 () Bool)

(assert (=> d!142859 (= (apply!1064 (+!4586 lt!589557 (tuple2!23641 lt!589553 zeroValue!1279)) lt!589564) (get!21790 (getValueByKey!714 (toList!10670 (+!4586 lt!589557 (tuple2!23641 lt!589553 zeroValue!1279))) lt!589564)))))

(declare-fun bs!37892 () Bool)

(assert (= bs!37892 d!142859))

(declare-fun m!1213833 () Bool)

(assert (=> bs!37892 m!1213833))

(assert (=> bs!37892 m!1213833))

(declare-fun m!1213835 () Bool)

(assert (=> bs!37892 m!1213835))

(assert (=> b!1324997 d!142859))

(declare-fun d!142861 () Bool)

(assert (=> d!142861 (= (apply!1064 (+!4586 lt!589568 (tuple2!23641 lt!589563 minValue!1279)) lt!589559) (apply!1064 lt!589568 lt!589559))))

(declare-fun lt!589587 () Unit!43572)

(assert (=> d!142861 (= lt!589587 (choose!1954 lt!589568 lt!589563 minValue!1279 lt!589559))))

(declare-fun e!755389 () Bool)

(assert (=> d!142861 e!755389))

(declare-fun res!879551 () Bool)

(assert (=> d!142861 (=> (not res!879551) (not e!755389))))

(assert (=> d!142861 (= res!879551 (contains!8761 lt!589568 lt!589559))))

(assert (=> d!142861 (= (addApplyDifferent!567 lt!589568 lt!589563 minValue!1279 lt!589559) lt!589587)))

(declare-fun b!1325028 () Bool)

(assert (=> b!1325028 (= e!755389 (not (= lt!589559 lt!589563)))))

(assert (= (and d!142861 res!879551) b!1325028))

(assert (=> d!142861 m!1213735))

(assert (=> d!142861 m!1213737))

(assert (=> d!142861 m!1213753))

(assert (=> d!142861 m!1213737))

(declare-fun m!1213837 () Bool)

(assert (=> d!142861 m!1213837))

(declare-fun m!1213839 () Bool)

(assert (=> d!142861 m!1213839))

(assert (=> b!1324997 d!142861))

(declare-fun d!142863 () Bool)

(assert (=> d!142863 (= (apply!1064 lt!589557 lt!589564) (get!21790 (getValueByKey!714 (toList!10670 lt!589557) lt!589564)))))

(declare-fun bs!37893 () Bool)

(assert (= bs!37893 d!142863))

(declare-fun m!1213841 () Bool)

(assert (=> bs!37893 m!1213841))

(assert (=> bs!37893 m!1213841))

(declare-fun m!1213843 () Bool)

(assert (=> bs!37893 m!1213843))

(assert (=> b!1324997 d!142863))

(declare-fun d!142865 () Bool)

(declare-fun e!755390 () Bool)

(assert (=> d!142865 e!755390))

(declare-fun res!879552 () Bool)

(assert (=> d!142865 (=> (not res!879552) (not e!755390))))

(declare-fun lt!589589 () ListLongMap!21309)

(assert (=> d!142865 (= res!879552 (contains!8761 lt!589589 (_1!11830 (tuple2!23641 lt!589553 zeroValue!1279))))))

(declare-fun lt!589588 () List!30810)

(assert (=> d!142865 (= lt!589589 (ListLongMap!21310 lt!589588))))

(declare-fun lt!589590 () Unit!43572)

(declare-fun lt!589591 () Unit!43572)

(assert (=> d!142865 (= lt!589590 lt!589591)))

(assert (=> d!142865 (= (getValueByKey!714 lt!589588 (_1!11830 (tuple2!23641 lt!589553 zeroValue!1279))) (Some!764 (_2!11830 (tuple2!23641 lt!589553 zeroValue!1279))))))

(assert (=> d!142865 (= lt!589591 (lemmaContainsTupThenGetReturnValue!357 lt!589588 (_1!11830 (tuple2!23641 lt!589553 zeroValue!1279)) (_2!11830 (tuple2!23641 lt!589553 zeroValue!1279))))))

(assert (=> d!142865 (= lt!589588 (insertStrictlySorted!486 (toList!10670 lt!589557) (_1!11830 (tuple2!23641 lt!589553 zeroValue!1279)) (_2!11830 (tuple2!23641 lt!589553 zeroValue!1279))))))

(assert (=> d!142865 (= (+!4586 lt!589557 (tuple2!23641 lt!589553 zeroValue!1279)) lt!589589)))

(declare-fun b!1325029 () Bool)

(declare-fun res!879553 () Bool)

(assert (=> b!1325029 (=> (not res!879553) (not e!755390))))

(assert (=> b!1325029 (= res!879553 (= (getValueByKey!714 (toList!10670 lt!589589) (_1!11830 (tuple2!23641 lt!589553 zeroValue!1279))) (Some!764 (_2!11830 (tuple2!23641 lt!589553 zeroValue!1279)))))))

(declare-fun b!1325030 () Bool)

(assert (=> b!1325030 (= e!755390 (contains!8763 (toList!10670 lt!589589) (tuple2!23641 lt!589553 zeroValue!1279)))))

(assert (= (and d!142865 res!879552) b!1325029))

(assert (= (and b!1325029 res!879553) b!1325030))

(declare-fun m!1213845 () Bool)

(assert (=> d!142865 m!1213845))

(declare-fun m!1213847 () Bool)

(assert (=> d!142865 m!1213847))

(declare-fun m!1213849 () Bool)

(assert (=> d!142865 m!1213849))

(declare-fun m!1213851 () Bool)

(assert (=> d!142865 m!1213851))

(declare-fun m!1213853 () Bool)

(assert (=> b!1325029 m!1213853))

(declare-fun m!1213855 () Bool)

(assert (=> b!1325030 m!1213855))

(assert (=> b!1324997 d!142865))

(declare-fun d!142867 () Bool)

(assert (=> d!142867 (= (apply!1064 (+!4586 lt!589568 (tuple2!23641 lt!589563 minValue!1279)) lt!589559) (get!21790 (getValueByKey!714 (toList!10670 (+!4586 lt!589568 (tuple2!23641 lt!589563 minValue!1279))) lt!589559)))))

(declare-fun bs!37894 () Bool)

(assert (= bs!37894 d!142867))

(declare-fun m!1213857 () Bool)

(assert (=> bs!37894 m!1213857))

(assert (=> bs!37894 m!1213857))

(declare-fun m!1213859 () Bool)

(assert (=> bs!37894 m!1213859))

(assert (=> b!1324997 d!142867))

(declare-fun d!142869 () Bool)

(assert (=> d!142869 (contains!8761 (+!4586 lt!589569 (tuple2!23641 lt!589549 zeroValue!1279)) lt!589556)))

(declare-fun lt!589594 () Unit!43572)

(declare-fun choose!1955 (ListLongMap!21309 (_ BitVec 64) V!53475 (_ BitVec 64)) Unit!43572)

(assert (=> d!142869 (= lt!589594 (choose!1955 lt!589569 lt!589549 zeroValue!1279 lt!589556))))

(assert (=> d!142869 (contains!8761 lt!589569 lt!589556)))

(assert (=> d!142869 (= (addStillContains!1167 lt!589569 lt!589549 zeroValue!1279 lt!589556) lt!589594)))

(declare-fun bs!37895 () Bool)

(assert (= bs!37895 d!142869))

(assert (=> bs!37895 m!1213743))

(assert (=> bs!37895 m!1213743))

(assert (=> bs!37895 m!1213745))

(declare-fun m!1213861 () Bool)

(assert (=> bs!37895 m!1213861))

(declare-fun m!1213863 () Bool)

(assert (=> bs!37895 m!1213863))

(assert (=> b!1324997 d!142869))

(declare-fun d!142871 () Bool)

(declare-fun e!755392 () Bool)

(assert (=> d!142871 e!755392))

(declare-fun res!879554 () Bool)

(assert (=> d!142871 (=> res!879554 e!755392)))

(declare-fun lt!589598 () Bool)

(assert (=> d!142871 (= res!879554 (not lt!589598))))

(declare-fun lt!589595 () Bool)

(assert (=> d!142871 (= lt!589598 lt!589595)))

(declare-fun lt!589597 () Unit!43572)

(declare-fun e!755391 () Unit!43572)

(assert (=> d!142871 (= lt!589597 e!755391)))

(declare-fun c!125626 () Bool)

(assert (=> d!142871 (= c!125626 lt!589595)))

(assert (=> d!142871 (= lt!589595 (containsKey!732 (toList!10670 (+!4586 lt!589569 (tuple2!23641 lt!589549 zeroValue!1279))) lt!589556))))

(assert (=> d!142871 (= (contains!8761 (+!4586 lt!589569 (tuple2!23641 lt!589549 zeroValue!1279)) lt!589556) lt!589598)))

(declare-fun b!1325032 () Bool)

(declare-fun lt!589596 () Unit!43572)

(assert (=> b!1325032 (= e!755391 lt!589596)))

(assert (=> b!1325032 (= lt!589596 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 (+!4586 lt!589569 (tuple2!23641 lt!589549 zeroValue!1279))) lt!589556))))

(assert (=> b!1325032 (isDefined!517 (getValueByKey!714 (toList!10670 (+!4586 lt!589569 (tuple2!23641 lt!589549 zeroValue!1279))) lt!589556))))

(declare-fun b!1325033 () Bool)

(declare-fun Unit!43577 () Unit!43572)

(assert (=> b!1325033 (= e!755391 Unit!43577)))

(declare-fun b!1325034 () Bool)

(assert (=> b!1325034 (= e!755392 (isDefined!517 (getValueByKey!714 (toList!10670 (+!4586 lt!589569 (tuple2!23641 lt!589549 zeroValue!1279))) lt!589556)))))

(assert (= (and d!142871 c!125626) b!1325032))

(assert (= (and d!142871 (not c!125626)) b!1325033))

(assert (= (and d!142871 (not res!879554)) b!1325034))

(declare-fun m!1213865 () Bool)

(assert (=> d!142871 m!1213865))

(declare-fun m!1213867 () Bool)

(assert (=> b!1325032 m!1213867))

(declare-fun m!1213869 () Bool)

(assert (=> b!1325032 m!1213869))

(assert (=> b!1325032 m!1213869))

(declare-fun m!1213871 () Bool)

(assert (=> b!1325032 m!1213871))

(assert (=> b!1325034 m!1213869))

(assert (=> b!1325034 m!1213869))

(assert (=> b!1325034 m!1213871))

(assert (=> b!1324997 d!142871))

(declare-fun lt!589603 () ListLongMap!21309)

(declare-fun b!1325035 () Bool)

(declare-fun e!755397 () Bool)

(assert (=> b!1325035 (= e!755397 (= lt!589603 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd from!2000 #b00000000000000000000000000000001) defaultEntry!1340)))))

(declare-fun b!1325036 () Bool)

(declare-fun e!755393 () Bool)

(declare-fun e!755394 () Bool)

(assert (=> b!1325036 (= e!755393 e!755394)))

(assert (=> b!1325036 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43733 _keys!1609)))))

(declare-fun res!879555 () Bool)

(assert (=> b!1325036 (= res!879555 (contains!8761 lt!589603 (select (arr!43182 _keys!1609) from!2000)))))

(assert (=> b!1325036 (=> (not res!879555) (not e!755394))))

(declare-fun b!1325037 () Bool)

(assert (=> b!1325037 (= e!755397 (isEmpty!1078 lt!589603))))

(declare-fun b!1325038 () Bool)

(declare-fun e!755395 () Bool)

(assert (=> b!1325038 (= e!755395 e!755393)))

(declare-fun c!125629 () Bool)

(declare-fun e!755396 () Bool)

(assert (=> b!1325038 (= c!125629 e!755396)))

(declare-fun res!879556 () Bool)

(assert (=> b!1325038 (=> (not res!879556) (not e!755396))))

(assert (=> b!1325038 (= res!879556 (bvslt from!2000 (size!43733 _keys!1609)))))

(declare-fun b!1325039 () Bool)

(declare-fun e!755398 () ListLongMap!21309)

(assert (=> b!1325039 (= e!755398 (ListLongMap!21310 Nil!30807))))

(declare-fun b!1325040 () Bool)

(declare-fun e!755399 () ListLongMap!21309)

(declare-fun call!64711 () ListLongMap!21309)

(assert (=> b!1325040 (= e!755399 call!64711)))

(declare-fun b!1325041 () Bool)

(declare-fun lt!589605 () Unit!43572)

(declare-fun lt!589602 () Unit!43572)

(assert (=> b!1325041 (= lt!589605 lt!589602)))

(declare-fun lt!589600 () (_ BitVec 64))

(declare-fun lt!589601 () ListLongMap!21309)

(declare-fun lt!589599 () V!53475)

(declare-fun lt!589604 () (_ BitVec 64))

(assert (=> b!1325041 (not (contains!8761 (+!4586 lt!589601 (tuple2!23641 lt!589600 lt!589599)) lt!589604))))

(assert (=> b!1325041 (= lt!589602 (addStillNotContains!502 lt!589601 lt!589600 lt!589599 lt!589604))))

(assert (=> b!1325041 (= lt!589604 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1325041 (= lt!589599 (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1325041 (= lt!589600 (select (arr!43182 _keys!1609) from!2000))))

(assert (=> b!1325041 (= lt!589601 call!64711)))

(assert (=> b!1325041 (= e!755399 (+!4586 call!64711 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1325042 () Bool)

(declare-fun res!879558 () Bool)

(assert (=> b!1325042 (=> (not res!879558) (not e!755395))))

(assert (=> b!1325042 (= res!879558 (not (contains!8761 lt!589603 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1325043 () Bool)

(assert (=> b!1325043 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43733 _keys!1609)))))

(assert (=> b!1325043 (and (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43734 _values!1337)))))

(assert (=> b!1325043 (= e!755394 (= (apply!1064 lt!589603 (select (arr!43182 _keys!1609) from!2000)) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!142873 () Bool)

(assert (=> d!142873 e!755395))

(declare-fun res!879557 () Bool)

(assert (=> d!142873 (=> (not res!879557) (not e!755395))))

(assert (=> d!142873 (= res!879557 (not (contains!8761 lt!589603 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!142873 (= lt!589603 e!755398)))

(declare-fun c!125628 () Bool)

(assert (=> d!142873 (= c!125628 (bvsge from!2000 (size!43733 _keys!1609)))))

(assert (=> d!142873 (validMask!0 mask!2019)))

(assert (=> d!142873 (= (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) lt!589603)))

(declare-fun b!1325044 () Bool)

(assert (=> b!1325044 (= e!755396 (validKeyInArray!0 (select (arr!43182 _keys!1609) from!2000)))))

(assert (=> b!1325044 (bvsge from!2000 #b00000000000000000000000000000000)))

(declare-fun bm!64708 () Bool)

(assert (=> bm!64708 (= call!64711 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd from!2000 #b00000000000000000000000000000001) defaultEntry!1340))))

(declare-fun b!1325045 () Bool)

(assert (=> b!1325045 (= e!755393 e!755397)))

(declare-fun c!125627 () Bool)

(assert (=> b!1325045 (= c!125627 (bvslt from!2000 (size!43733 _keys!1609)))))

(declare-fun b!1325046 () Bool)

(assert (=> b!1325046 (= e!755398 e!755399)))

(declare-fun c!125630 () Bool)

(assert (=> b!1325046 (= c!125630 (validKeyInArray!0 (select (arr!43182 _keys!1609) from!2000)))))

(assert (= (and d!142873 c!125628) b!1325039))

(assert (= (and d!142873 (not c!125628)) b!1325046))

(assert (= (and b!1325046 c!125630) b!1325041))

(assert (= (and b!1325046 (not c!125630)) b!1325040))

(assert (= (or b!1325041 b!1325040) bm!64708))

(assert (= (and d!142873 res!879557) b!1325042))

(assert (= (and b!1325042 res!879558) b!1325038))

(assert (= (and b!1325038 res!879556) b!1325044))

(assert (= (and b!1325038 c!125629) b!1325036))

(assert (= (and b!1325038 (not c!125629)) b!1325045))

(assert (= (and b!1325036 res!879555) b!1325043))

(assert (= (and b!1325045 c!125627) b!1325035))

(assert (= (and b!1325045 (not c!125627)) b!1325037))

(declare-fun b_lambda!23735 () Bool)

(assert (=> (not b_lambda!23735) (not b!1325041)))

(assert (=> b!1325041 t!44746))

(declare-fun b_and!49023 () Bool)

(assert (= b_and!49021 (and (=> t!44746 result!24529) b_and!49023)))

(declare-fun b_lambda!23737 () Bool)

(assert (=> (not b_lambda!23737) (not b!1325043)))

(assert (=> b!1325043 t!44746))

(declare-fun b_and!49025 () Bool)

(assert (= b_and!49023 (and (=> t!44746 result!24529) b_and!49025)))

(declare-fun m!1213873 () Bool)

(assert (=> b!1325041 m!1213873))

(declare-fun m!1213875 () Bool)

(assert (=> b!1325041 m!1213875))

(assert (=> b!1325041 m!1213873))

(declare-fun m!1213877 () Bool)

(assert (=> b!1325041 m!1213877))

(declare-fun m!1213879 () Bool)

(assert (=> b!1325041 m!1213879))

(assert (=> b!1325041 m!1213561))

(assert (=> b!1325041 m!1213577))

(assert (=> b!1325041 m!1213569))

(assert (=> b!1325041 m!1213581))

(assert (=> b!1325041 m!1213577))

(assert (=> b!1325041 m!1213569))

(declare-fun m!1213881 () Bool)

(assert (=> d!142873 m!1213881))

(assert (=> d!142873 m!1213555))

(assert (=> b!1325044 m!1213561))

(assert (=> b!1325044 m!1213561))

(assert (=> b!1325044 m!1213563))

(assert (=> b!1325043 m!1213561))

(declare-fun m!1213883 () Bool)

(assert (=> b!1325043 m!1213883))

(assert (=> b!1325043 m!1213561))

(assert (=> b!1325043 m!1213577))

(assert (=> b!1325043 m!1213569))

(assert (=> b!1325043 m!1213581))

(assert (=> b!1325043 m!1213577))

(assert (=> b!1325043 m!1213569))

(declare-fun m!1213885 () Bool)

(assert (=> b!1325042 m!1213885))

(declare-fun m!1213887 () Bool)

(assert (=> b!1325035 m!1213887))

(assert (=> bm!64708 m!1213887))

(assert (=> b!1325046 m!1213561))

(assert (=> b!1325046 m!1213561))

(assert (=> b!1325046 m!1213563))

(declare-fun m!1213889 () Bool)

(assert (=> b!1325037 m!1213889))

(assert (=> b!1325036 m!1213561))

(assert (=> b!1325036 m!1213561))

(declare-fun m!1213891 () Bool)

(assert (=> b!1325036 m!1213891))

(assert (=> b!1324997 d!142873))

(declare-fun b!1325047 () Bool)

(declare-fun lt!589610 () ListLongMap!21309)

(declare-fun e!755404 () Bool)

(assert (=> b!1325047 (= e!755404 (= lt!589610 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1340)))))

(declare-fun b!1325048 () Bool)

(declare-fun e!755400 () Bool)

(declare-fun e!755401 () Bool)

(assert (=> b!1325048 (= e!755400 e!755401)))

(assert (=> b!1325048 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) (size!43733 _keys!1609)))))

(declare-fun res!879559 () Bool)

(assert (=> b!1325048 (= res!879559 (contains!8761 lt!589610 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001))))))

(assert (=> b!1325048 (=> (not res!879559) (not e!755401))))

(declare-fun b!1325049 () Bool)

(assert (=> b!1325049 (= e!755404 (isEmpty!1078 lt!589610))))

(declare-fun b!1325050 () Bool)

(declare-fun e!755402 () Bool)

(assert (=> b!1325050 (= e!755402 e!755400)))

(declare-fun c!125633 () Bool)

(declare-fun e!755403 () Bool)

(assert (=> b!1325050 (= c!125633 e!755403)))

(declare-fun res!879560 () Bool)

(assert (=> b!1325050 (=> (not res!879560) (not e!755403))))

(assert (=> b!1325050 (= res!879560 (bvslt (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) (size!43733 _keys!1609)))))

(declare-fun b!1325051 () Bool)

(declare-fun e!755405 () ListLongMap!21309)

(assert (=> b!1325051 (= e!755405 (ListLongMap!21310 Nil!30807))))

(declare-fun b!1325052 () Bool)

(declare-fun e!755406 () ListLongMap!21309)

(declare-fun call!64712 () ListLongMap!21309)

(assert (=> b!1325052 (= e!755406 call!64712)))

(declare-fun b!1325053 () Bool)

(declare-fun lt!589612 () Unit!43572)

(declare-fun lt!589609 () Unit!43572)

(assert (=> b!1325053 (= lt!589612 lt!589609)))

(declare-fun lt!589607 () (_ BitVec 64))

(declare-fun lt!589608 () ListLongMap!21309)

(declare-fun lt!589611 () (_ BitVec 64))

(declare-fun lt!589606 () V!53475)

(assert (=> b!1325053 (not (contains!8761 (+!4586 lt!589608 (tuple2!23641 lt!589607 lt!589606)) lt!589611))))

(assert (=> b!1325053 (= lt!589609 (addStillNotContains!502 lt!589608 lt!589607 lt!589606 lt!589611))))

(assert (=> b!1325053 (= lt!589611 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1325053 (= lt!589606 (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1325053 (= lt!589607 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001)))))

(assert (=> b!1325053 (= lt!589608 call!64712)))

(assert (=> b!1325053 (= e!755406 (+!4586 call!64712 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1325054 () Bool)

(declare-fun res!879562 () Bool)

(assert (=> b!1325054 (=> (not res!879562) (not e!755402))))

(assert (=> b!1325054 (= res!879562 (not (contains!8761 lt!589610 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1325055 () Bool)

(assert (=> b!1325055 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) (size!43733 _keys!1609)))))

(assert (=> b!1325055 (and (bvsge (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) (size!43734 _values!1337)))))

(assert (=> b!1325055 (= e!755401 (= (apply!1064 lt!589610 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001))) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun d!142875 () Bool)

(assert (=> d!142875 e!755402))

(declare-fun res!879561 () Bool)

(assert (=> d!142875 (=> (not res!879561) (not e!755402))))

(assert (=> d!142875 (= res!879561 (not (contains!8761 lt!589610 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!142875 (= lt!589610 e!755405)))

(declare-fun c!125632 () Bool)

(assert (=> d!142875 (= c!125632 (bvsge (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) (size!43733 _keys!1609)))))

(assert (=> d!142875 (validMask!0 mask!2019)))

(assert (=> d!142875 (= (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) defaultEntry!1340) lt!589610)))

(declare-fun b!1325056 () Bool)

(assert (=> b!1325056 (= e!755403 (validKeyInArray!0 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001))))))

(assert (=> b!1325056 (bvsge (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun bm!64709 () Bool)

(assert (=> bm!64709 (= call!64712 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) defaultEntry!1340))))

(declare-fun b!1325057 () Bool)

(assert (=> b!1325057 (= e!755400 e!755404)))

(declare-fun c!125631 () Bool)

(assert (=> b!1325057 (= c!125631 (bvslt (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001) (size!43733 _keys!1609)))))

(declare-fun b!1325058 () Bool)

(assert (=> b!1325058 (= e!755405 e!755406)))

(declare-fun c!125634 () Bool)

(assert (=> b!1325058 (= c!125634 (validKeyInArray!0 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000 #b00000000000000000000000000000001))))))

(assert (= (and d!142875 c!125632) b!1325051))

(assert (= (and d!142875 (not c!125632)) b!1325058))

(assert (= (and b!1325058 c!125634) b!1325053))

(assert (= (and b!1325058 (not c!125634)) b!1325052))

(assert (= (or b!1325053 b!1325052) bm!64709))

(assert (= (and d!142875 res!879561) b!1325054))

(assert (= (and b!1325054 res!879562) b!1325050))

(assert (= (and b!1325050 res!879560) b!1325056))

(assert (= (and b!1325050 c!125633) b!1325048))

(assert (= (and b!1325050 (not c!125633)) b!1325057))

(assert (= (and b!1325048 res!879559) b!1325055))

(assert (= (and b!1325057 c!125631) b!1325047))

(assert (= (and b!1325057 (not c!125631)) b!1325049))

(declare-fun b_lambda!23739 () Bool)

(assert (=> (not b_lambda!23739) (not b!1325053)))

(assert (=> b!1325053 t!44746))

(declare-fun b_and!49027 () Bool)

(assert (= b_and!49025 (and (=> t!44746 result!24529) b_and!49027)))

(declare-fun b_lambda!23741 () Bool)

(assert (=> (not b_lambda!23741) (not b!1325055)))

(assert (=> b!1325055 t!44746))

(declare-fun b_and!49029 () Bool)

(assert (= b_and!49027 (and (=> t!44746 result!24529) b_and!49029)))

(declare-fun m!1213893 () Bool)

(assert (=> b!1325053 m!1213893))

(declare-fun m!1213895 () Bool)

(assert (=> b!1325053 m!1213895))

(assert (=> b!1325053 m!1213893))

(declare-fun m!1213897 () Bool)

(assert (=> b!1325053 m!1213897))

(declare-fun m!1213899 () Bool)

(assert (=> b!1325053 m!1213899))

(declare-fun m!1213901 () Bool)

(assert (=> b!1325053 m!1213901))

(declare-fun m!1213903 () Bool)

(assert (=> b!1325053 m!1213903))

(assert (=> b!1325053 m!1213569))

(declare-fun m!1213905 () Bool)

(assert (=> b!1325053 m!1213905))

(assert (=> b!1325053 m!1213903))

(assert (=> b!1325053 m!1213569))

(declare-fun m!1213907 () Bool)

(assert (=> d!142875 m!1213907))

(assert (=> d!142875 m!1213555))

(assert (=> b!1325056 m!1213901))

(assert (=> b!1325056 m!1213901))

(declare-fun m!1213909 () Bool)

(assert (=> b!1325056 m!1213909))

(assert (=> b!1325055 m!1213901))

(declare-fun m!1213911 () Bool)

(assert (=> b!1325055 m!1213911))

(assert (=> b!1325055 m!1213901))

(assert (=> b!1325055 m!1213903))

(assert (=> b!1325055 m!1213569))

(assert (=> b!1325055 m!1213905))

(assert (=> b!1325055 m!1213903))

(assert (=> b!1325055 m!1213569))

(declare-fun m!1213913 () Bool)

(assert (=> b!1325054 m!1213913))

(declare-fun m!1213915 () Bool)

(assert (=> b!1325047 m!1213915))

(assert (=> bm!64709 m!1213915))

(assert (=> b!1325058 m!1213901))

(assert (=> b!1325058 m!1213901))

(assert (=> b!1325058 m!1213909))

(declare-fun m!1213917 () Bool)

(assert (=> b!1325049 m!1213917))

(assert (=> b!1325048 m!1213901))

(assert (=> b!1325048 m!1213901))

(declare-fun m!1213919 () Bool)

(assert (=> b!1325048 m!1213919))

(assert (=> b!1324906 d!142875))

(declare-fun d!142877 () Bool)

(assert (=> d!142877 (arrayContainsKey!0 _keys!1609 lt!589446 #b00000000000000000000000000000000)))

(declare-fun lt!589615 () Unit!43572)

(declare-fun choose!13 (array!89425 (_ BitVec 64) (_ BitVec 32)) Unit!43572)

(assert (=> d!142877 (= lt!589615 (choose!13 _keys!1609 lt!589446 #b00000000000000000000000000000000))))

(assert (=> d!142877 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!142877 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!589446 #b00000000000000000000000000000000) lt!589615)))

(declare-fun bs!37896 () Bool)

(assert (= bs!37896 d!142877))

(assert (=> bs!37896 m!1213631))

(declare-fun m!1213921 () Bool)

(assert (=> bs!37896 m!1213921))

(assert (=> b!1324860 d!142877))

(declare-fun d!142879 () Bool)

(declare-fun res!879567 () Bool)

(declare-fun e!755411 () Bool)

(assert (=> d!142879 (=> res!879567 e!755411)))

(assert (=> d!142879 (= res!879567 (= (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) lt!589446))))

(assert (=> d!142879 (= (arrayContainsKey!0 _keys!1609 lt!589446 #b00000000000000000000000000000000) e!755411)))

(declare-fun b!1325063 () Bool)

(declare-fun e!755412 () Bool)

(assert (=> b!1325063 (= e!755411 e!755412)))

(declare-fun res!879568 () Bool)

(assert (=> b!1325063 (=> (not res!879568) (not e!755412))))

(assert (=> b!1325063 (= res!879568 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!43733 _keys!1609)))))

(declare-fun b!1325064 () Bool)

(assert (=> b!1325064 (= e!755412 (arrayContainsKey!0 _keys!1609 lt!589446 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!142879 (not res!879567)) b!1325063))

(assert (= (and b!1325063 res!879568) b!1325064))

(assert (=> d!142879 m!1213625))

(declare-fun m!1213923 () Bool)

(assert (=> b!1325064 m!1213923))

(assert (=> b!1324860 d!142879))

(declare-fun b!1325077 () Bool)

(declare-fun c!125642 () Bool)

(declare-fun lt!589622 () (_ BitVec 64))

(assert (=> b!1325077 (= c!125642 (= lt!589622 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!755419 () SeekEntryResult!10037)

(declare-fun e!755420 () SeekEntryResult!10037)

(assert (=> b!1325077 (= e!755419 e!755420)))

(declare-fun b!1325078 () Bool)

(declare-fun lt!589623 () SeekEntryResult!10037)

(assert (=> b!1325078 (= e!755419 (Found!10037 (index!42520 lt!589623)))))

(declare-fun d!142881 () Bool)

(declare-fun lt!589624 () SeekEntryResult!10037)

(assert (=> d!142881 (and (or ((_ is Undefined!10037) lt!589624) (not ((_ is Found!10037) lt!589624)) (and (bvsge (index!42519 lt!589624) #b00000000000000000000000000000000) (bvslt (index!42519 lt!589624) (size!43733 _keys!1609)))) (or ((_ is Undefined!10037) lt!589624) ((_ is Found!10037) lt!589624) (not ((_ is MissingZero!10037) lt!589624)) (and (bvsge (index!42518 lt!589624) #b00000000000000000000000000000000) (bvslt (index!42518 lt!589624) (size!43733 _keys!1609)))) (or ((_ is Undefined!10037) lt!589624) ((_ is Found!10037) lt!589624) ((_ is MissingZero!10037) lt!589624) (not ((_ is MissingVacant!10037) lt!589624)) (and (bvsge (index!42521 lt!589624) #b00000000000000000000000000000000) (bvslt (index!42521 lt!589624) (size!43733 _keys!1609)))) (or ((_ is Undefined!10037) lt!589624) (ite ((_ is Found!10037) lt!589624) (= (select (arr!43182 _keys!1609) (index!42519 lt!589624)) (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!10037) lt!589624) (= (select (arr!43182 _keys!1609) (index!42518 lt!589624)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10037) lt!589624) (= (select (arr!43182 _keys!1609) (index!42521 lt!589624)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!755421 () SeekEntryResult!10037)

(assert (=> d!142881 (= lt!589624 e!755421)))

(declare-fun c!125641 () Bool)

(assert (=> d!142881 (= c!125641 (and ((_ is Intermediate!10037) lt!589623) (undefined!10849 lt!589623)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!89425 (_ BitVec 32)) SeekEntryResult!10037)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!142881 (= lt!589623 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) mask!2019) (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019))))

(assert (=> d!142881 (validMask!0 mask!2019)))

(assert (=> d!142881 (= (seekEntryOrOpen!0 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019) lt!589624)))

(declare-fun b!1325079 () Bool)

(assert (=> b!1325079 (= e!755420 (MissingZero!10037 (index!42520 lt!589623)))))

(declare-fun b!1325080 () Bool)

(assert (=> b!1325080 (= e!755421 Undefined!10037)))

(declare-fun b!1325081 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!89425 (_ BitVec 32)) SeekEntryResult!10037)

(assert (=> b!1325081 (= e!755420 (seekKeyOrZeroReturnVacant!0 (x!118100 lt!589623) (index!42520 lt!589623) (index!42520 lt!589623) (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) _keys!1609 mask!2019))))

(declare-fun b!1325082 () Bool)

(assert (=> b!1325082 (= e!755421 e!755419)))

(assert (=> b!1325082 (= lt!589622 (select (arr!43182 _keys!1609) (index!42520 lt!589623)))))

(declare-fun c!125643 () Bool)

(assert (=> b!1325082 (= c!125643 (= lt!589622 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)))))

(assert (= (and d!142881 c!125641) b!1325080))

(assert (= (and d!142881 (not c!125641)) b!1325082))

(assert (= (and b!1325082 c!125643) b!1325078))

(assert (= (and b!1325082 (not c!125643)) b!1325077))

(assert (= (and b!1325077 c!125642) b!1325079))

(assert (= (and b!1325077 (not c!125642)) b!1325081))

(declare-fun m!1213925 () Bool)

(assert (=> d!142881 m!1213925))

(declare-fun m!1213927 () Bool)

(assert (=> d!142881 m!1213927))

(assert (=> d!142881 m!1213625))

(declare-fun m!1213929 () Bool)

(assert (=> d!142881 m!1213929))

(declare-fun m!1213931 () Bool)

(assert (=> d!142881 m!1213931))

(assert (=> d!142881 m!1213555))

(declare-fun m!1213933 () Bool)

(assert (=> d!142881 m!1213933))

(assert (=> d!142881 m!1213625))

(assert (=> d!142881 m!1213927))

(assert (=> b!1325081 m!1213625))

(declare-fun m!1213935 () Bool)

(assert (=> b!1325081 m!1213935))

(declare-fun m!1213937 () Bool)

(assert (=> b!1325082 m!1213937))

(assert (=> b!1324860 d!142881))

(declare-fun d!142883 () Bool)

(declare-fun e!755423 () Bool)

(assert (=> d!142883 e!755423))

(declare-fun res!879569 () Bool)

(assert (=> d!142883 (=> res!879569 e!755423)))

(declare-fun lt!589628 () Bool)

(assert (=> d!142883 (= res!879569 (not lt!589628))))

(declare-fun lt!589625 () Bool)

(assert (=> d!142883 (= lt!589628 lt!589625)))

(declare-fun lt!589627 () Unit!43572)

(declare-fun e!755422 () Unit!43572)

(assert (=> d!142883 (= lt!589627 e!755422)))

(declare-fun c!125644 () Bool)

(assert (=> d!142883 (= c!125644 lt!589625)))

(assert (=> d!142883 (= lt!589625 (containsKey!732 (toList!10670 lt!589490) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142883 (= (contains!8761 lt!589490 #b0000000000000000000000000000000000000000000000000000000000000000) lt!589628)))

(declare-fun b!1325083 () Bool)

(declare-fun lt!589626 () Unit!43572)

(assert (=> b!1325083 (= e!755422 lt!589626)))

(assert (=> b!1325083 (= lt!589626 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 lt!589490) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1325083 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589490) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1325084 () Bool)

(declare-fun Unit!43578 () Unit!43572)

(assert (=> b!1325084 (= e!755422 Unit!43578)))

(declare-fun b!1325085 () Bool)

(assert (=> b!1325085 (= e!755423 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589490) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142883 c!125644) b!1325083))

(assert (= (and d!142883 (not c!125644)) b!1325084))

(assert (= (and d!142883 (not res!879569)) b!1325085))

(declare-fun m!1213939 () Bool)

(assert (=> d!142883 m!1213939))

(declare-fun m!1213941 () Bool)

(assert (=> b!1325083 m!1213941))

(declare-fun m!1213943 () Bool)

(assert (=> b!1325083 m!1213943))

(assert (=> b!1325083 m!1213943))

(declare-fun m!1213945 () Bool)

(assert (=> b!1325083 m!1213945))

(assert (=> b!1325085 m!1213943))

(assert (=> b!1325085 m!1213943))

(assert (=> b!1325085 m!1213945))

(assert (=> d!142825 d!142883))

(assert (=> d!142825 d!142811))

(declare-fun d!142885 () Bool)

(declare-fun e!755425 () Bool)

(assert (=> d!142885 e!755425))

(declare-fun res!879570 () Bool)

(assert (=> d!142885 (=> res!879570 e!755425)))

(declare-fun lt!589632 () Bool)

(assert (=> d!142885 (= res!879570 (not lt!589632))))

(declare-fun lt!589629 () Bool)

(assert (=> d!142885 (= lt!589632 lt!589629)))

(declare-fun lt!589631 () Unit!43572)

(declare-fun e!755424 () Unit!43572)

(assert (=> d!142885 (= lt!589631 e!755424)))

(declare-fun c!125645 () Bool)

(assert (=> d!142885 (= c!125645 lt!589629)))

(assert (=> d!142885 (= lt!589629 (containsKey!732 (toList!10670 lt!589490) (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> d!142885 (= (contains!8761 lt!589490 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) lt!589632)))

(declare-fun b!1325086 () Bool)

(declare-fun lt!589630 () Unit!43572)

(assert (=> b!1325086 (= e!755424 lt!589630)))

(assert (=> b!1325086 (= lt!589630 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 lt!589490) (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(assert (=> b!1325086 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589490) (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))))))

(declare-fun b!1325087 () Bool)

(declare-fun Unit!43579 () Unit!43572)

(assert (=> b!1325087 (= e!755424 Unit!43579)))

(declare-fun b!1325088 () Bool)

(assert (=> b!1325088 (= e!755425 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589490) (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))))

(assert (= (and d!142885 c!125645) b!1325086))

(assert (= (and d!142885 (not c!125645)) b!1325087))

(assert (= (and d!142885 (not res!879570)) b!1325088))

(assert (=> d!142885 m!1213667))

(declare-fun m!1213947 () Bool)

(assert (=> d!142885 m!1213947))

(assert (=> b!1325086 m!1213667))

(declare-fun m!1213949 () Bool)

(assert (=> b!1325086 m!1213949))

(assert (=> b!1325086 m!1213667))

(declare-fun m!1213951 () Bool)

(assert (=> b!1325086 m!1213951))

(assert (=> b!1325086 m!1213951))

(declare-fun m!1213953 () Bool)

(assert (=> b!1325086 m!1213953))

(assert (=> b!1325088 m!1213667))

(assert (=> b!1325088 m!1213951))

(assert (=> b!1325088 m!1213951))

(assert (=> b!1325088 m!1213953))

(assert (=> b!1324907 d!142885))

(declare-fun d!142887 () Bool)

(assert (=> d!142887 (= (apply!1064 lt!589570 #b1000000000000000000000000000000000000000000000000000000000000000) (get!21790 (getValueByKey!714 (toList!10670 lt!589570) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37897 () Bool)

(assert (= bs!37897 d!142887))

(declare-fun m!1213955 () Bool)

(assert (=> bs!37897 m!1213955))

(assert (=> bs!37897 m!1213955))

(declare-fun m!1213957 () Bool)

(assert (=> bs!37897 m!1213957))

(assert (=> b!1324994 d!142887))

(declare-fun d!142889 () Bool)

(declare-fun isEmpty!1080 (Option!765) Bool)

(assert (=> d!142889 (= (isDefined!517 (getValueByKey!714 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164)) (not (isEmpty!1080 (getValueByKey!714 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))))

(declare-fun bs!37898 () Bool)

(assert (= bs!37898 d!142889))

(assert (=> bs!37898 m!1213639))

(declare-fun m!1213959 () Bool)

(assert (=> bs!37898 m!1213959))

(assert (=> b!1324869 d!142889))

(declare-fun e!755430 () Option!765)

(declare-fun b!1325097 () Bool)

(assert (=> b!1325097 (= e!755430 (Some!764 (_2!11830 (h!32015 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))))

(declare-fun b!1325100 () Bool)

(declare-fun e!755431 () Option!765)

(assert (=> b!1325100 (= e!755431 None!763)))

(declare-fun b!1325098 () Bool)

(assert (=> b!1325098 (= e!755430 e!755431)))

(declare-fun c!125651 () Bool)

(assert (=> b!1325098 (= c!125651 (and ((_ is Cons!30806) (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (not (= (_1!11830 (h!32015 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))) k0!1164))))))

(declare-fun b!1325099 () Bool)

(assert (=> b!1325099 (= e!755431 (getValueByKey!714 (t!44747 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) k0!1164))))

(declare-fun d!142891 () Bool)

(declare-fun c!125650 () Bool)

(assert (=> d!142891 (= c!125650 (and ((_ is Cons!30806) (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (= (_1!11830 (h!32015 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))) k0!1164)))))

(assert (=> d!142891 (= (getValueByKey!714 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164) e!755430)))

(assert (= (and d!142891 c!125650) b!1325097))

(assert (= (and d!142891 (not c!125650)) b!1325098))

(assert (= (and b!1325098 c!125651) b!1325099))

(assert (= (and b!1325098 (not c!125651)) b!1325100))

(declare-fun m!1213961 () Bool)

(assert (=> b!1325099 m!1213961))

(assert (=> b!1324869 d!142891))

(declare-fun d!142893 () Bool)

(assert (=> d!142893 (= (apply!1064 lt!589490 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) (get!21790 (getValueByKey!714 (toList!10670 lt!589490) (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)))))))

(declare-fun bs!37899 () Bool)

(assert (= bs!37899 d!142893))

(assert (=> bs!37899 m!1213667))

(assert (=> bs!37899 m!1213951))

(assert (=> bs!37899 m!1213951))

(declare-fun m!1213963 () Bool)

(assert (=> bs!37899 m!1213963))

(assert (=> b!1324914 d!142893))

(declare-fun d!142895 () Bool)

(declare-fun c!125652 () Bool)

(assert (=> d!142895 (= c!125652 ((_ is ValueCellFull!17241) (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000))))))

(declare-fun e!755432 () V!53475)

(assert (=> d!142895 (= (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)) e!755432)))

(declare-fun b!1325101 () Bool)

(assert (=> b!1325101 (= e!755432 (get!21788 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1325102 () Bool)

(assert (=> b!1325102 (= e!755432 (get!21789 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142895 c!125652) b!1325101))

(assert (= (and d!142895 (not c!125652)) b!1325102))

(assert (=> b!1325101 m!1213669))

(assert (=> b!1325101 m!1213569))

(declare-fun m!1213965 () Bool)

(assert (=> b!1325101 m!1213965))

(assert (=> b!1325102 m!1213669))

(assert (=> b!1325102 m!1213569))

(declare-fun m!1213967 () Bool)

(assert (=> b!1325102 m!1213967))

(assert (=> b!1324914 d!142895))

(declare-fun d!142897 () Bool)

(declare-fun e!755434 () Bool)

(assert (=> d!142897 e!755434))

(declare-fun res!879571 () Bool)

(assert (=> d!142897 (=> res!879571 e!755434)))

(declare-fun lt!589636 () Bool)

(assert (=> d!142897 (= res!879571 (not lt!589636))))

(declare-fun lt!589633 () Bool)

(assert (=> d!142897 (= lt!589636 lt!589633)))

(declare-fun lt!589635 () Unit!43572)

(declare-fun e!755433 () Unit!43572)

(assert (=> d!142897 (= lt!589635 e!755433)))

(declare-fun c!125653 () Bool)

(assert (=> d!142897 (= c!125653 lt!589633)))

(assert (=> d!142897 (= lt!589633 (containsKey!732 (toList!10670 lt!589494) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!142897 (= (contains!8761 lt!589494 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) lt!589636)))

(declare-fun b!1325103 () Bool)

(declare-fun lt!589634 () Unit!43572)

(assert (=> b!1325103 (= e!755433 lt!589634)))

(assert (=> b!1325103 (= lt!589634 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 lt!589494) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> b!1325103 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589494) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun b!1325104 () Bool)

(declare-fun Unit!43580 () Unit!43572)

(assert (=> b!1325104 (= e!755433 Unit!43580)))

(declare-fun b!1325105 () Bool)

(assert (=> b!1325105 (= e!755434 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589494) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (= (and d!142897 c!125653) b!1325103))

(assert (= (and d!142897 (not c!125653)) b!1325104))

(assert (= (and d!142897 (not res!879571)) b!1325105))

(declare-fun m!1213969 () Bool)

(assert (=> d!142897 m!1213969))

(declare-fun m!1213971 () Bool)

(assert (=> b!1325103 m!1213971))

(assert (=> b!1325103 m!1213695))

(assert (=> b!1325103 m!1213695))

(declare-fun m!1213973 () Bool)

(assert (=> b!1325103 m!1213973))

(assert (=> b!1325105 m!1213695))

(assert (=> b!1325105 m!1213695))

(assert (=> b!1325105 m!1213973))

(assert (=> d!142827 d!142897))

(declare-fun b!1325106 () Bool)

(declare-fun e!755435 () Option!765)

(assert (=> b!1325106 (= e!755435 (Some!764 (_2!11830 (h!32015 lt!589493))))))

(declare-fun b!1325109 () Bool)

(declare-fun e!755436 () Option!765)

(assert (=> b!1325109 (= e!755436 None!763)))

(declare-fun b!1325107 () Bool)

(assert (=> b!1325107 (= e!755435 e!755436)))

(declare-fun c!125655 () Bool)

(assert (=> b!1325107 (= c!125655 (and ((_ is Cons!30806) lt!589493) (not (= (_1!11830 (h!32015 lt!589493)) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))))

(declare-fun b!1325108 () Bool)

(assert (=> b!1325108 (= e!755436 (getValueByKey!714 (t!44747 lt!589493) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun d!142899 () Bool)

(declare-fun c!125654 () Bool)

(assert (=> d!142899 (= c!125654 (and ((_ is Cons!30806) lt!589493) (= (_1!11830 (h!32015 lt!589493)) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!142899 (= (getValueByKey!714 lt!589493 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) e!755435)))

(assert (= (and d!142899 c!125654) b!1325106))

(assert (= (and d!142899 (not c!125654)) b!1325107))

(assert (= (and b!1325107 c!125655) b!1325108))

(assert (= (and b!1325107 (not c!125655)) b!1325109))

(declare-fun m!1213975 () Bool)

(assert (=> b!1325108 m!1213975))

(assert (=> d!142827 d!142899))

(declare-fun d!142901 () Bool)

(assert (=> d!142901 (= (getValueByKey!714 lt!589493 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!764 (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun lt!589639 () Unit!43572)

(declare-fun choose!1956 (List!30810 (_ BitVec 64) V!53475) Unit!43572)

(assert (=> d!142901 (= lt!589639 (choose!1956 lt!589493 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun e!755439 () Bool)

(assert (=> d!142901 e!755439))

(declare-fun res!879576 () Bool)

(assert (=> d!142901 (=> (not res!879576) (not e!755439))))

(declare-fun isStrictlySorted!873 (List!30810) Bool)

(assert (=> d!142901 (= res!879576 (isStrictlySorted!873 lt!589493))))

(assert (=> d!142901 (= (lemmaContainsTupThenGetReturnValue!357 lt!589493 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) lt!589639)))

(declare-fun b!1325114 () Bool)

(declare-fun res!879577 () Bool)

(assert (=> b!1325114 (=> (not res!879577) (not e!755439))))

(assert (=> b!1325114 (= res!879577 (containsKey!732 lt!589493 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun b!1325115 () Bool)

(assert (=> b!1325115 (= e!755439 (contains!8763 lt!589493 (tuple2!23641 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (= (and d!142901 res!879576) b!1325114))

(assert (= (and b!1325114 res!879577) b!1325115))

(assert (=> d!142901 m!1213689))

(declare-fun m!1213977 () Bool)

(assert (=> d!142901 m!1213977))

(declare-fun m!1213979 () Bool)

(assert (=> d!142901 m!1213979))

(declare-fun m!1213981 () Bool)

(assert (=> b!1325114 m!1213981))

(declare-fun m!1213983 () Bool)

(assert (=> b!1325115 m!1213983))

(assert (=> d!142827 d!142901))

(declare-fun c!125666 () Bool)

(declare-fun call!64720 () List!30810)

(declare-fun e!755452 () List!30810)

(declare-fun bm!64716 () Bool)

(declare-fun $colon$colon!671 (List!30810 tuple2!23640) List!30810)

(assert (=> bm!64716 (= call!64720 ($colon$colon!671 e!755452 (ite c!125666 (h!32015 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))) (tuple2!23641 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))))

(declare-fun c!125667 () Bool)

(assert (=> bm!64716 (= c!125667 c!125666)))

(declare-fun b!1325136 () Bool)

(declare-fun e!755450 () Bool)

(declare-fun lt!589642 () List!30810)

(assert (=> b!1325136 (= e!755450 (contains!8763 lt!589642 (tuple2!23641 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun b!1325137 () Bool)

(declare-fun e!755451 () List!30810)

(declare-fun call!64719 () List!30810)

(assert (=> b!1325137 (= e!755451 call!64719)))

(declare-fun bm!64717 () Bool)

(declare-fun call!64721 () List!30810)

(assert (=> bm!64717 (= call!64721 call!64719)))

(declare-fun c!125665 () Bool)

(declare-fun b!1325139 () Bool)

(declare-fun c!125664 () Bool)

(assert (=> b!1325139 (= e!755452 (ite c!125664 (t!44747 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))) (ite c!125665 (Cons!30806 (h!32015 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))) (t!44747 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))) Nil!30807)))))

(declare-fun b!1325140 () Bool)

(declare-fun e!755454 () List!30810)

(assert (=> b!1325140 (= e!755454 e!755451)))

(assert (=> b!1325140 (= c!125664 (and ((_ is Cons!30806) (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))) (= (_1!11830 (h!32015 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun b!1325141 () Bool)

(assert (=> b!1325141 (= c!125665 (and ((_ is Cons!30806) (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))) (bvsgt (_1!11830 (h!32015 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun e!755453 () List!30810)

(assert (=> b!1325141 (= e!755451 e!755453)))

(declare-fun b!1325142 () Bool)

(assert (=> b!1325142 (= e!755453 call!64721)))

(declare-fun b!1325138 () Bool)

(assert (=> b!1325138 (= e!755453 call!64721)))

(declare-fun d!142903 () Bool)

(assert (=> d!142903 e!755450))

(declare-fun res!879582 () Bool)

(assert (=> d!142903 (=> (not res!879582) (not e!755450))))

(assert (=> d!142903 (= res!879582 (isStrictlySorted!873 lt!589642))))

(assert (=> d!142903 (= lt!589642 e!755454)))

(assert (=> d!142903 (= c!125666 (and ((_ is Cons!30806) (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))) (bvslt (_1!11830 (h!32015 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!142903 (isStrictlySorted!873 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(assert (=> d!142903 (= (insertStrictlySorted!486 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) lt!589642)))

(declare-fun b!1325143 () Bool)

(assert (=> b!1325143 (= e!755452 (insertStrictlySorted!486 (t!44747 (toList!10670 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun bm!64718 () Bool)

(assert (=> bm!64718 (= call!64719 call!64720)))

(declare-fun b!1325144 () Bool)

(assert (=> b!1325144 (= e!755454 call!64720)))

(declare-fun b!1325145 () Bool)

(declare-fun res!879583 () Bool)

(assert (=> b!1325145 (=> (not res!879583) (not e!755450))))

(assert (=> b!1325145 (= res!879583 (containsKey!732 lt!589642 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (= (and d!142903 c!125666) b!1325144))

(assert (= (and d!142903 (not c!125666)) b!1325140))

(assert (= (and b!1325140 c!125664) b!1325137))

(assert (= (and b!1325140 (not c!125664)) b!1325141))

(assert (= (and b!1325141 c!125665) b!1325142))

(assert (= (and b!1325141 (not c!125665)) b!1325138))

(assert (= (or b!1325142 b!1325138) bm!64717))

(assert (= (or b!1325137 bm!64717) bm!64718))

(assert (= (or b!1325144 bm!64718) bm!64716))

(assert (= (and bm!64716 c!125667) b!1325143))

(assert (= (and bm!64716 (not c!125667)) b!1325139))

(assert (= (and d!142903 res!879582) b!1325145))

(assert (= (and b!1325145 res!879583) b!1325136))

(declare-fun m!1213985 () Bool)

(assert (=> b!1325145 m!1213985))

(declare-fun m!1213987 () Bool)

(assert (=> b!1325136 m!1213987))

(declare-fun m!1213989 () Bool)

(assert (=> bm!64716 m!1213989))

(declare-fun m!1213991 () Bool)

(assert (=> b!1325143 m!1213991))

(declare-fun m!1213993 () Bool)

(assert (=> d!142903 m!1213993))

(declare-fun m!1213995 () Bool)

(assert (=> d!142903 m!1213995))

(assert (=> d!142827 d!142903))

(declare-fun d!142905 () Bool)

(declare-fun e!755455 () Bool)

(assert (=> d!142905 e!755455))

(declare-fun res!879584 () Bool)

(assert (=> d!142905 (=> (not res!879584) (not e!755455))))

(declare-fun lt!589644 () ListLongMap!21309)

(assert (=> d!142905 (= res!879584 (contains!8761 lt!589644 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun lt!589643 () List!30810)

(assert (=> d!142905 (= lt!589644 (ListLongMap!21310 lt!589643))))

(declare-fun lt!589645 () Unit!43572)

(declare-fun lt!589646 () Unit!43572)

(assert (=> d!142905 (= lt!589645 lt!589646)))

(assert (=> d!142905 (= (getValueByKey!714 lt!589643 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!764 (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!142905 (= lt!589646 (lemmaContainsTupThenGetReturnValue!357 lt!589643 (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!142905 (= lt!589643 (insertStrictlySorted!486 (toList!10670 call!64708) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (=> d!142905 (= (+!4586 call!64708 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) lt!589644)))

(declare-fun b!1325146 () Bool)

(declare-fun res!879585 () Bool)

(assert (=> b!1325146 (=> (not res!879585) (not e!755455))))

(assert (=> b!1325146 (= res!879585 (= (getValueByKey!714 (toList!10670 lt!589644) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (Some!764 (_2!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun b!1325147 () Bool)

(assert (=> b!1325147 (= e!755455 (contains!8763 (toList!10670 lt!589644) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(assert (= (and d!142905 res!879584) b!1325146))

(assert (= (and b!1325146 res!879585) b!1325147))

(declare-fun m!1213997 () Bool)

(assert (=> d!142905 m!1213997))

(declare-fun m!1213999 () Bool)

(assert (=> d!142905 m!1213999))

(declare-fun m!1214001 () Bool)

(assert (=> d!142905 m!1214001))

(declare-fun m!1214003 () Bool)

(assert (=> d!142905 m!1214003))

(declare-fun m!1214005 () Bool)

(assert (=> b!1325146 m!1214005))

(declare-fun m!1214007 () Bool)

(assert (=> b!1325147 m!1214007))

(assert (=> b!1325000 d!142905))

(declare-fun d!142907 () Bool)

(declare-fun e!755457 () Bool)

(assert (=> d!142907 e!755457))

(declare-fun res!879586 () Bool)

(assert (=> d!142907 (=> res!879586 e!755457)))

(declare-fun lt!589650 () Bool)

(assert (=> d!142907 (= res!879586 (not lt!589650))))

(declare-fun lt!589647 () Bool)

(assert (=> d!142907 (= lt!589650 lt!589647)))

(declare-fun lt!589649 () Unit!43572)

(declare-fun e!755456 () Unit!43572)

(assert (=> d!142907 (= lt!589649 e!755456)))

(declare-fun c!125668 () Bool)

(assert (=> d!142907 (= c!125668 lt!589647)))

(assert (=> d!142907 (= lt!589647 (containsKey!732 (toList!10670 lt!589490) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142907 (= (contains!8761 lt!589490 #b1000000000000000000000000000000000000000000000000000000000000000) lt!589650)))

(declare-fun b!1325148 () Bool)

(declare-fun lt!589648 () Unit!43572)

(assert (=> b!1325148 (= e!755456 lt!589648)))

(assert (=> b!1325148 (= lt!589648 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 lt!589490) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1325148 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589490) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1325149 () Bool)

(declare-fun Unit!43581 () Unit!43572)

(assert (=> b!1325149 (= e!755456 Unit!43581)))

(declare-fun b!1325150 () Bool)

(assert (=> b!1325150 (= e!755457 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589490) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142907 c!125668) b!1325148))

(assert (= (and d!142907 (not c!125668)) b!1325149))

(assert (= (and d!142907 (not res!879586)) b!1325150))

(declare-fun m!1214009 () Bool)

(assert (=> d!142907 m!1214009))

(declare-fun m!1214011 () Bool)

(assert (=> b!1325148 m!1214011))

(declare-fun m!1214013 () Bool)

(assert (=> b!1325148 m!1214013))

(assert (=> b!1325148 m!1214013))

(declare-fun m!1214015 () Bool)

(assert (=> b!1325148 m!1214015))

(assert (=> b!1325150 m!1214013))

(assert (=> b!1325150 m!1214013))

(assert (=> b!1325150 m!1214015))

(assert (=> b!1324913 d!142907))

(declare-fun d!142909 () Bool)

(assert (=> d!142909 (= (validKeyInArray!0 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000))) (and (not (= (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1324915 d!142909))

(declare-fun d!142911 () Bool)

(declare-fun e!755459 () Bool)

(assert (=> d!142911 e!755459))

(declare-fun res!879587 () Bool)

(assert (=> d!142911 (=> res!879587 e!755459)))

(declare-fun lt!589654 () Bool)

(assert (=> d!142911 (= res!879587 (not lt!589654))))

(declare-fun lt!589651 () Bool)

(assert (=> d!142911 (= lt!589654 lt!589651)))

(declare-fun lt!589653 () Unit!43572)

(declare-fun e!755458 () Unit!43572)

(assert (=> d!142911 (= lt!589653 e!755458)))

(declare-fun c!125669 () Bool)

(assert (=> d!142911 (= c!125669 lt!589651)))

(assert (=> d!142911 (= lt!589651 (containsKey!732 (toList!10670 lt!589498) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(assert (=> d!142911 (= (contains!8761 lt!589498 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) lt!589654)))

(declare-fun b!1325151 () Bool)

(declare-fun lt!589652 () Unit!43572)

(assert (=> b!1325151 (= e!755458 lt!589652)))

(assert (=> b!1325151 (= lt!589652 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 lt!589498) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(assert (=> b!1325151 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589498) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(declare-fun b!1325152 () Bool)

(declare-fun Unit!43582 () Unit!43572)

(assert (=> b!1325152 (= e!755458 Unit!43582)))

(declare-fun b!1325153 () Bool)

(assert (=> b!1325153 (= e!755459 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589498) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))))

(assert (= (and d!142911 c!125669) b!1325151))

(assert (= (and d!142911 (not c!125669)) b!1325152))

(assert (= (and d!142911 (not res!879587)) b!1325153))

(declare-fun m!1214017 () Bool)

(assert (=> d!142911 m!1214017))

(declare-fun m!1214019 () Bool)

(assert (=> b!1325151 m!1214019))

(assert (=> b!1325151 m!1213707))

(assert (=> b!1325151 m!1213707))

(declare-fun m!1214021 () Bool)

(assert (=> b!1325151 m!1214021))

(assert (=> b!1325153 m!1213707))

(assert (=> b!1325153 m!1213707))

(assert (=> b!1325153 m!1214021))

(assert (=> d!142829 d!142911))

(declare-fun b!1325154 () Bool)

(declare-fun e!755460 () Option!765)

(assert (=> b!1325154 (= e!755460 (Some!764 (_2!11830 (h!32015 lt!589497))))))

(declare-fun b!1325157 () Bool)

(declare-fun e!755461 () Option!765)

(assert (=> b!1325157 (= e!755461 None!763)))

(declare-fun b!1325155 () Bool)

(assert (=> b!1325155 (= e!755460 e!755461)))

(declare-fun c!125671 () Bool)

(assert (=> b!1325155 (= c!125671 (and ((_ is Cons!30806) lt!589497) (not (= (_1!11830 (h!32015 lt!589497)) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))))

(declare-fun b!1325156 () Bool)

(assert (=> b!1325156 (= e!755461 (getValueByKey!714 (t!44747 lt!589497) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(declare-fun d!142913 () Bool)

(declare-fun c!125670 () Bool)

(assert (=> d!142913 (= c!125670 (and ((_ is Cons!30806) lt!589497) (= (_1!11830 (h!32015 lt!589497)) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))))

(assert (=> d!142913 (= (getValueByKey!714 lt!589497 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) e!755460)))

(assert (= (and d!142913 c!125670) b!1325154))

(assert (= (and d!142913 (not c!125670)) b!1325155))

(assert (= (and b!1325155 c!125671) b!1325156))

(assert (= (and b!1325155 (not c!125671)) b!1325157))

(declare-fun m!1214023 () Bool)

(assert (=> b!1325156 m!1214023))

(assert (=> d!142829 d!142913))

(declare-fun d!142915 () Bool)

(assert (=> d!142915 (= (getValueByKey!714 lt!589497 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) (Some!764 (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(declare-fun lt!589655 () Unit!43572)

(assert (=> d!142915 (= lt!589655 (choose!1956 lt!589497 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(declare-fun e!755462 () Bool)

(assert (=> d!142915 e!755462))

(declare-fun res!879588 () Bool)

(assert (=> d!142915 (=> (not res!879588) (not e!755462))))

(assert (=> d!142915 (= res!879588 (isStrictlySorted!873 lt!589497))))

(assert (=> d!142915 (= (lemmaContainsTupThenGetReturnValue!357 lt!589497 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) lt!589655)))

(declare-fun b!1325158 () Bool)

(declare-fun res!879589 () Bool)

(assert (=> b!1325158 (=> (not res!879589) (not e!755462))))

(assert (=> b!1325158 (= res!879589 (containsKey!732 lt!589497 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(declare-fun b!1325159 () Bool)

(assert (=> b!1325159 (= e!755462 (contains!8763 lt!589497 (tuple2!23641 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))))

(assert (= (and d!142915 res!879588) b!1325158))

(assert (= (and b!1325158 res!879589) b!1325159))

(assert (=> d!142915 m!1213701))

(declare-fun m!1214025 () Bool)

(assert (=> d!142915 m!1214025))

(declare-fun m!1214027 () Bool)

(assert (=> d!142915 m!1214027))

(declare-fun m!1214029 () Bool)

(assert (=> b!1325158 m!1214029))

(declare-fun m!1214031 () Bool)

(assert (=> b!1325159 m!1214031))

(assert (=> d!142829 d!142915))

(declare-fun bm!64719 () Bool)

(declare-fun c!125674 () Bool)

(declare-fun e!755465 () List!30810)

(declare-fun call!64723 () List!30810)

(assert (=> bm!64719 (= call!64723 ($colon$colon!671 e!755465 (ite c!125674 (h!32015 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (tuple2!23641 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))))

(declare-fun c!125675 () Bool)

(assert (=> bm!64719 (= c!125675 c!125674)))

(declare-fun b!1325160 () Bool)

(declare-fun e!755463 () Bool)

(declare-fun lt!589656 () List!30810)

(assert (=> b!1325160 (= e!755463 (contains!8763 lt!589656 (tuple2!23641 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))))

(declare-fun b!1325161 () Bool)

(declare-fun e!755464 () List!30810)

(declare-fun call!64722 () List!30810)

(assert (=> b!1325161 (= e!755464 call!64722)))

(declare-fun bm!64720 () Bool)

(declare-fun call!64724 () List!30810)

(assert (=> bm!64720 (= call!64724 call!64722)))

(declare-fun c!125672 () Bool)

(declare-fun c!125673 () Bool)

(declare-fun b!1325163 () Bool)

(assert (=> b!1325163 (= e!755465 (ite c!125672 (t!44747 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (ite c!125673 (Cons!30806 (h!32015 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (t!44747 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))) Nil!30807)))))

(declare-fun b!1325164 () Bool)

(declare-fun e!755467 () List!30810)

(assert (=> b!1325164 (= e!755467 e!755464)))

(assert (=> b!1325164 (= c!125672 (and ((_ is Cons!30806) (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (= (_1!11830 (h!32015 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))))

(declare-fun b!1325165 () Bool)

(assert (=> b!1325165 (= c!125673 (and ((_ is Cons!30806) (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (bvsgt (_1!11830 (h!32015 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))))

(declare-fun e!755466 () List!30810)

(assert (=> b!1325165 (= e!755464 e!755466)))

(declare-fun b!1325166 () Bool)

(assert (=> b!1325166 (= e!755466 call!64724)))

(declare-fun b!1325162 () Bool)

(assert (=> b!1325162 (= e!755466 call!64724)))

(declare-fun d!142917 () Bool)

(assert (=> d!142917 e!755463))

(declare-fun res!879590 () Bool)

(assert (=> d!142917 (=> (not res!879590) (not e!755463))))

(assert (=> d!142917 (= res!879590 (isStrictlySorted!873 lt!589656))))

(assert (=> d!142917 (= lt!589656 e!755467)))

(assert (=> d!142917 (= c!125674 (and ((_ is Cons!30806) (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (bvslt (_1!11830 (h!32015 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))))

(assert (=> d!142917 (isStrictlySorted!873 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142917 (= (insertStrictlySorted!486 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) lt!589656)))

(declare-fun b!1325167 () Bool)

(assert (=> b!1325167 (= e!755465 (insertStrictlySorted!486 (t!44747 (toList!10670 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (_2!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(declare-fun bm!64721 () Bool)

(assert (=> bm!64721 (= call!64722 call!64723)))

(declare-fun b!1325168 () Bool)

(assert (=> b!1325168 (= e!755467 call!64723)))

(declare-fun b!1325169 () Bool)

(declare-fun res!879591 () Bool)

(assert (=> b!1325169 (=> (not res!879591) (not e!755463))))

(assert (=> b!1325169 (= res!879591 (containsKey!732 lt!589656 (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(assert (= (and d!142917 c!125674) b!1325168))

(assert (= (and d!142917 (not c!125674)) b!1325164))

(assert (= (and b!1325164 c!125672) b!1325161))

(assert (= (and b!1325164 (not c!125672)) b!1325165))

(assert (= (and b!1325165 c!125673) b!1325166))

(assert (= (and b!1325165 (not c!125673)) b!1325162))

(assert (= (or b!1325166 b!1325162) bm!64720))

(assert (= (or b!1325161 bm!64720) bm!64721))

(assert (= (or b!1325168 bm!64721) bm!64719))

(assert (= (and bm!64719 c!125675) b!1325167))

(assert (= (and bm!64719 (not c!125675)) b!1325163))

(assert (= (and d!142917 res!879590) b!1325169))

(assert (= (and b!1325169 res!879591) b!1325160))

(declare-fun m!1214033 () Bool)

(assert (=> b!1325169 m!1214033))

(declare-fun m!1214035 () Bool)

(assert (=> b!1325160 m!1214035))

(declare-fun m!1214037 () Bool)

(assert (=> bm!64719 m!1214037))

(declare-fun m!1214039 () Bool)

(assert (=> b!1325167 m!1214039))

(declare-fun m!1214041 () Bool)

(assert (=> d!142917 m!1214041))

(declare-fun m!1214043 () Bool)

(assert (=> d!142917 m!1214043))

(assert (=> d!142829 d!142917))

(declare-fun d!142919 () Bool)

(declare-fun e!755469 () Bool)

(assert (=> d!142919 e!755469))

(declare-fun res!879592 () Bool)

(assert (=> d!142919 (=> res!879592 e!755469)))

(declare-fun lt!589660 () Bool)

(assert (=> d!142919 (= res!879592 (not lt!589660))))

(declare-fun lt!589657 () Bool)

(assert (=> d!142919 (= lt!589660 lt!589657)))

(declare-fun lt!589659 () Unit!43572)

(declare-fun e!755468 () Unit!43572)

(assert (=> d!142919 (= lt!589659 e!755468)))

(declare-fun c!125676 () Bool)

(assert (=> d!142919 (= c!125676 lt!589657)))

(assert (=> d!142919 (= lt!589657 (containsKey!732 (toList!10670 lt!589570) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142919 (= (contains!8761 lt!589570 #b1000000000000000000000000000000000000000000000000000000000000000) lt!589660)))

(declare-fun b!1325170 () Bool)

(declare-fun lt!589658 () Unit!43572)

(assert (=> b!1325170 (= e!755468 lt!589658)))

(assert (=> b!1325170 (= lt!589658 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 lt!589570) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1325170 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589570) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1325171 () Bool)

(declare-fun Unit!43583 () Unit!43572)

(assert (=> b!1325171 (= e!755468 Unit!43583)))

(declare-fun b!1325172 () Bool)

(assert (=> b!1325172 (= e!755469 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589570) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142919 c!125676) b!1325170))

(assert (= (and d!142919 (not c!125676)) b!1325171))

(assert (= (and d!142919 (not res!879592)) b!1325172))

(declare-fun m!1214045 () Bool)

(assert (=> d!142919 m!1214045))

(declare-fun m!1214047 () Bool)

(assert (=> b!1325170 m!1214047))

(assert (=> b!1325170 m!1213955))

(assert (=> b!1325170 m!1213955))

(declare-fun m!1214049 () Bool)

(assert (=> b!1325170 m!1214049))

(assert (=> b!1325172 m!1213955))

(assert (=> b!1325172 m!1213955))

(assert (=> b!1325172 m!1214049))

(assert (=> bm!64701 d!142919))

(declare-fun b!1325173 () Bool)

(declare-fun e!755470 () Option!765)

(assert (=> b!1325173 (= e!755470 (Some!764 (_2!11830 (h!32015 (toList!10670 lt!589469)))))))

(declare-fun b!1325176 () Bool)

(declare-fun e!755471 () Option!765)

(assert (=> b!1325176 (= e!755471 None!763)))

(declare-fun b!1325174 () Bool)

(assert (=> b!1325174 (= e!755470 e!755471)))

(declare-fun c!125678 () Bool)

(assert (=> b!1325174 (= c!125678 (and ((_ is Cons!30806) (toList!10670 lt!589469)) (not (= (_1!11830 (h!32015 (toList!10670 lt!589469))) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!1325175 () Bool)

(assert (=> b!1325175 (= e!755471 (getValueByKey!714 (t!44747 (toList!10670 lt!589469)) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!125677 () Bool)

(declare-fun d!142921 () Bool)

(assert (=> d!142921 (= c!125677 (and ((_ is Cons!30806) (toList!10670 lt!589469)) (= (_1!11830 (h!32015 (toList!10670 lt!589469))) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!142921 (= (getValueByKey!714 (toList!10670 lt!589469) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!755470)))

(assert (= (and d!142921 c!125677) b!1325173))

(assert (= (and d!142921 (not c!125677)) b!1325174))

(assert (= (and b!1325174 c!125678) b!1325175))

(assert (= (and b!1325174 (not c!125678)) b!1325176))

(declare-fun m!1214051 () Bool)

(assert (=> b!1325175 m!1214051))

(assert (=> b!1324874 d!142921))

(declare-fun d!142923 () Bool)

(declare-fun lt!589663 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!660 (List!30810) (InoxSet tuple2!23640))

(assert (=> d!142923 (= lt!589663 (select (content!660 (toList!10670 lt!589469)) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!755476 () Bool)

(assert (=> d!142923 (= lt!589663 e!755476)))

(declare-fun res!879598 () Bool)

(assert (=> d!142923 (=> (not res!879598) (not e!755476))))

(assert (=> d!142923 (= res!879598 ((_ is Cons!30806) (toList!10670 lt!589469)))))

(assert (=> d!142923 (= (contains!8763 (toList!10670 lt!589469) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!589663)))

(declare-fun b!1325181 () Bool)

(declare-fun e!755477 () Bool)

(assert (=> b!1325181 (= e!755476 e!755477)))

(declare-fun res!879597 () Bool)

(assert (=> b!1325181 (=> res!879597 e!755477)))

(assert (=> b!1325181 (= res!879597 (= (h!32015 (toList!10670 lt!589469)) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1325182 () Bool)

(assert (=> b!1325182 (= e!755477 (contains!8763 (t!44747 (toList!10670 lt!589469)) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!142923 res!879598) b!1325181))

(assert (= (and b!1325181 (not res!879597)) b!1325182))

(declare-fun m!1214053 () Bool)

(assert (=> d!142923 m!1214053))

(declare-fun m!1214055 () Bool)

(assert (=> d!142923 m!1214055))

(declare-fun m!1214057 () Bool)

(assert (=> b!1325182 m!1214057))

(assert (=> b!1324875 d!142923))

(declare-fun d!142925 () Bool)

(assert (=> d!142925 (isDefined!517 (getValueByKey!714 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))

(declare-fun lt!589666 () Unit!43572)

(declare-fun choose!1957 (List!30810 (_ BitVec 64)) Unit!43572)

(assert (=> d!142925 (= lt!589666 (choose!1957 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))

(declare-fun e!755480 () Bool)

(assert (=> d!142925 e!755480))

(declare-fun res!879601 () Bool)

(assert (=> d!142925 (=> (not res!879601) (not e!755480))))

(assert (=> d!142925 (= res!879601 (isStrictlySorted!873 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!142925 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164) lt!589666)))

(declare-fun b!1325185 () Bool)

(assert (=> b!1325185 (= e!755480 (containsKey!732 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164))))

(assert (= (and d!142925 res!879601) b!1325185))

(assert (=> d!142925 m!1213639))

(assert (=> d!142925 m!1213639))

(assert (=> d!142925 m!1213641))

(declare-fun m!1214059 () Bool)

(assert (=> d!142925 m!1214059))

(declare-fun m!1214061 () Bool)

(assert (=> d!142925 m!1214061))

(assert (=> b!1325185 m!1213635))

(assert (=> b!1324867 d!142925))

(assert (=> b!1324867 d!142889))

(assert (=> b!1324867 d!142891))

(declare-fun d!142927 () Bool)

(declare-fun e!755482 () Bool)

(assert (=> d!142927 e!755482))

(declare-fun res!879602 () Bool)

(assert (=> d!142927 (=> res!879602 e!755482)))

(declare-fun lt!589670 () Bool)

(assert (=> d!142927 (= res!879602 (not lt!589670))))

(declare-fun lt!589667 () Bool)

(assert (=> d!142927 (= lt!589670 lt!589667)))

(declare-fun lt!589669 () Unit!43572)

(declare-fun e!755481 () Unit!43572)

(assert (=> d!142927 (= lt!589669 e!755481)))

(declare-fun c!125679 () Bool)

(assert (=> d!142927 (= c!125679 lt!589667)))

(assert (=> d!142927 (= lt!589667 (containsKey!732 (toList!10670 (+!4586 lt!589488 (tuple2!23641 lt!589487 lt!589486))) lt!589491))))

(assert (=> d!142927 (= (contains!8761 (+!4586 lt!589488 (tuple2!23641 lt!589487 lt!589486)) lt!589491) lt!589670)))

(declare-fun b!1325186 () Bool)

(declare-fun lt!589668 () Unit!43572)

(assert (=> b!1325186 (= e!755481 lt!589668)))

(assert (=> b!1325186 (= lt!589668 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 (+!4586 lt!589488 (tuple2!23641 lt!589487 lt!589486))) lt!589491))))

(assert (=> b!1325186 (isDefined!517 (getValueByKey!714 (toList!10670 (+!4586 lt!589488 (tuple2!23641 lt!589487 lt!589486))) lt!589491))))

(declare-fun b!1325187 () Bool)

(declare-fun Unit!43584 () Unit!43572)

(assert (=> b!1325187 (= e!755481 Unit!43584)))

(declare-fun b!1325188 () Bool)

(assert (=> b!1325188 (= e!755482 (isDefined!517 (getValueByKey!714 (toList!10670 (+!4586 lt!589488 (tuple2!23641 lt!589487 lt!589486))) lt!589491)))))

(assert (= (and d!142927 c!125679) b!1325186))

(assert (= (and d!142927 (not c!125679)) b!1325187))

(assert (= (and d!142927 (not res!879602)) b!1325188))

(declare-fun m!1214063 () Bool)

(assert (=> d!142927 m!1214063))

(declare-fun m!1214065 () Bool)

(assert (=> b!1325186 m!1214065))

(declare-fun m!1214067 () Bool)

(assert (=> b!1325186 m!1214067))

(assert (=> b!1325186 m!1214067))

(declare-fun m!1214069 () Bool)

(assert (=> b!1325186 m!1214069))

(assert (=> b!1325188 m!1214067))

(assert (=> b!1325188 m!1214067))

(assert (=> b!1325188 m!1214069))

(assert (=> b!1324912 d!142927))

(declare-fun d!142929 () Bool)

(assert (=> d!142929 (not (contains!8761 (+!4586 lt!589488 (tuple2!23641 lt!589487 lt!589486)) lt!589491))))

(declare-fun lt!589673 () Unit!43572)

(declare-fun choose!1958 (ListLongMap!21309 (_ BitVec 64) V!53475 (_ BitVec 64)) Unit!43572)

(assert (=> d!142929 (= lt!589673 (choose!1958 lt!589488 lt!589487 lt!589486 lt!589491))))

(declare-fun e!755485 () Bool)

(assert (=> d!142929 e!755485))

(declare-fun res!879605 () Bool)

(assert (=> d!142929 (=> (not res!879605) (not e!755485))))

(assert (=> d!142929 (= res!879605 (not (contains!8761 lt!589488 lt!589491)))))

(assert (=> d!142929 (= (addStillNotContains!502 lt!589488 lt!589487 lt!589486 lt!589491) lt!589673)))

(declare-fun b!1325192 () Bool)

(assert (=> b!1325192 (= e!755485 (not (= lt!589487 lt!589491)))))

(assert (= (and d!142929 res!879605) b!1325192))

(assert (=> d!142929 m!1213659))

(assert (=> d!142929 m!1213659))

(assert (=> d!142929 m!1213663))

(declare-fun m!1214071 () Bool)

(assert (=> d!142929 m!1214071))

(declare-fun m!1214073 () Bool)

(assert (=> d!142929 m!1214073))

(assert (=> b!1324912 d!142929))

(declare-fun d!142931 () Bool)

(declare-fun e!755486 () Bool)

(assert (=> d!142931 e!755486))

(declare-fun res!879606 () Bool)

(assert (=> d!142931 (=> (not res!879606) (not e!755486))))

(declare-fun lt!589675 () ListLongMap!21309)

(assert (=> d!142931 (= res!879606 (contains!8761 lt!589675 (_1!11830 (tuple2!23641 lt!589487 lt!589486))))))

(declare-fun lt!589674 () List!30810)

(assert (=> d!142931 (= lt!589675 (ListLongMap!21310 lt!589674))))

(declare-fun lt!589676 () Unit!43572)

(declare-fun lt!589677 () Unit!43572)

(assert (=> d!142931 (= lt!589676 lt!589677)))

(assert (=> d!142931 (= (getValueByKey!714 lt!589674 (_1!11830 (tuple2!23641 lt!589487 lt!589486))) (Some!764 (_2!11830 (tuple2!23641 lt!589487 lt!589486))))))

(assert (=> d!142931 (= lt!589677 (lemmaContainsTupThenGetReturnValue!357 lt!589674 (_1!11830 (tuple2!23641 lt!589487 lt!589486)) (_2!11830 (tuple2!23641 lt!589487 lt!589486))))))

(assert (=> d!142931 (= lt!589674 (insertStrictlySorted!486 (toList!10670 lt!589488) (_1!11830 (tuple2!23641 lt!589487 lt!589486)) (_2!11830 (tuple2!23641 lt!589487 lt!589486))))))

(assert (=> d!142931 (= (+!4586 lt!589488 (tuple2!23641 lt!589487 lt!589486)) lt!589675)))

(declare-fun b!1325193 () Bool)

(declare-fun res!879607 () Bool)

(assert (=> b!1325193 (=> (not res!879607) (not e!755486))))

(assert (=> b!1325193 (= res!879607 (= (getValueByKey!714 (toList!10670 lt!589675) (_1!11830 (tuple2!23641 lt!589487 lt!589486))) (Some!764 (_2!11830 (tuple2!23641 lt!589487 lt!589486)))))))

(declare-fun b!1325194 () Bool)

(assert (=> b!1325194 (= e!755486 (contains!8763 (toList!10670 lt!589675) (tuple2!23641 lt!589487 lt!589486)))))

(assert (= (and d!142931 res!879606) b!1325193))

(assert (= (and b!1325193 res!879607) b!1325194))

(declare-fun m!1214075 () Bool)

(assert (=> d!142931 m!1214075))

(declare-fun m!1214077 () Bool)

(assert (=> d!142931 m!1214077))

(declare-fun m!1214079 () Bool)

(assert (=> d!142931 m!1214079))

(declare-fun m!1214081 () Bool)

(assert (=> d!142931 m!1214081))

(declare-fun m!1214083 () Bool)

(assert (=> b!1325193 m!1214083))

(declare-fun m!1214085 () Bool)

(assert (=> b!1325194 m!1214085))

(assert (=> b!1324912 d!142931))

(declare-fun d!142933 () Bool)

(declare-fun e!755487 () Bool)

(assert (=> d!142933 e!755487))

(declare-fun res!879608 () Bool)

(assert (=> d!142933 (=> (not res!879608) (not e!755487))))

(declare-fun lt!589679 () ListLongMap!21309)

(assert (=> d!142933 (= res!879608 (contains!8761 lt!589679 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!589678 () List!30810)

(assert (=> d!142933 (= lt!589679 (ListLongMap!21310 lt!589678))))

(declare-fun lt!589680 () Unit!43572)

(declare-fun lt!589681 () Unit!43572)

(assert (=> d!142933 (= lt!589680 lt!589681)))

(assert (=> d!142933 (= (getValueByKey!714 lt!589678 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!764 (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142933 (= lt!589681 (lemmaContainsTupThenGetReturnValue!357 lt!589678 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142933 (= lt!589678 (insertStrictlySorted!486 (toList!10670 call!64686) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142933 (= (+!4586 call!64686 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!589679)))

(declare-fun b!1325195 () Bool)

(declare-fun res!879609 () Bool)

(assert (=> b!1325195 (=> (not res!879609) (not e!755487))))

(assert (=> b!1325195 (= res!879609 (= (getValueByKey!714 (toList!10670 lt!589679) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!764 (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1325196 () Bool)

(assert (=> b!1325196 (= e!755487 (contains!8763 (toList!10670 lt!589679) (tuple2!23641 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000001 from!2000)) (get!21786 (select (arr!43183 _values!1337) (bvadd #b00000000000000000000000000000001 from!2000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!142933 res!879608) b!1325195))

(assert (= (and b!1325195 res!879609) b!1325196))

(declare-fun m!1214087 () Bool)

(assert (=> d!142933 m!1214087))

(declare-fun m!1214089 () Bool)

(assert (=> d!142933 m!1214089))

(declare-fun m!1214091 () Bool)

(assert (=> d!142933 m!1214091))

(declare-fun m!1214093 () Bool)

(assert (=> d!142933 m!1214093))

(declare-fun m!1214095 () Bool)

(assert (=> b!1325195 m!1214095))

(declare-fun m!1214097 () Bool)

(assert (=> b!1325196 m!1214097))

(assert (=> b!1324912 d!142933))

(assert (=> b!1324912 d!142895))

(declare-fun d!142935 () Bool)

(declare-fun lt!589684 () Bool)

(declare-fun content!661 (List!30811) (InoxSet (_ BitVec 64)))

(assert (=> d!142935 (= lt!589684 (select (content!661 Nil!30808) (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun e!755492 () Bool)

(assert (=> d!142935 (= lt!589684 e!755492)))

(declare-fun res!879614 () Bool)

(assert (=> d!142935 (=> (not res!879614) (not e!755492))))

(assert (=> d!142935 (= res!879614 ((_ is Cons!30807) Nil!30808))))

(assert (=> d!142935 (= (contains!8764 Nil!30808 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)) lt!589684)))

(declare-fun b!1325201 () Bool)

(declare-fun e!755493 () Bool)

(assert (=> b!1325201 (= e!755492 e!755493)))

(declare-fun res!879615 () Bool)

(assert (=> b!1325201 (=> res!879615 e!755493)))

(assert (=> b!1325201 (= res!879615 (= (h!32016 Nil!30808) (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)))))

(declare-fun b!1325202 () Bool)

(assert (=> b!1325202 (= e!755493 (contains!8764 (t!44748 Nil!30808) (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)))))

(assert (= (and d!142935 res!879614) b!1325201))

(assert (= (and b!1325201 (not res!879615)) b!1325202))

(declare-fun m!1214099 () Bool)

(assert (=> d!142935 m!1214099))

(assert (=> d!142935 m!1213625))

(declare-fun m!1214101 () Bool)

(assert (=> d!142935 m!1214101))

(assert (=> b!1325202 m!1213625))

(declare-fun m!1214103 () Bool)

(assert (=> b!1325202 m!1214103))

(assert (=> b!1324932 d!142935))

(declare-fun d!142937 () Bool)

(declare-fun e!755495 () Bool)

(assert (=> d!142937 e!755495))

(declare-fun res!879616 () Bool)

(assert (=> d!142937 (=> res!879616 e!755495)))

(declare-fun lt!589688 () Bool)

(assert (=> d!142937 (= res!879616 (not lt!589688))))

(declare-fun lt!589685 () Bool)

(assert (=> d!142937 (= lt!589688 lt!589685)))

(declare-fun lt!589687 () Unit!43572)

(declare-fun e!755494 () Unit!43572)

(assert (=> d!142937 (= lt!589687 e!755494)))

(declare-fun c!125680 () Bool)

(assert (=> d!142937 (= c!125680 lt!589685)))

(assert (=> d!142937 (= lt!589685 (containsKey!732 (toList!10670 lt!589570) (select (arr!43182 _keys!1609) from!2000)))))

(assert (=> d!142937 (= (contains!8761 lt!589570 (select (arr!43182 _keys!1609) from!2000)) lt!589688)))

(declare-fun b!1325203 () Bool)

(declare-fun lt!589686 () Unit!43572)

(assert (=> b!1325203 (= e!755494 lt!589686)))

(assert (=> b!1325203 (= lt!589686 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 lt!589570) (select (arr!43182 _keys!1609) from!2000)))))

(assert (=> b!1325203 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589570) (select (arr!43182 _keys!1609) from!2000)))))

(declare-fun b!1325204 () Bool)

(declare-fun Unit!43585 () Unit!43572)

(assert (=> b!1325204 (= e!755494 Unit!43585)))

(declare-fun b!1325205 () Bool)

(assert (=> b!1325205 (= e!755495 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589570) (select (arr!43182 _keys!1609) from!2000))))))

(assert (= (and d!142937 c!125680) b!1325203))

(assert (= (and d!142937 (not c!125680)) b!1325204))

(assert (= (and d!142937 (not res!879616)) b!1325205))

(assert (=> d!142937 m!1213561))

(declare-fun m!1214105 () Bool)

(assert (=> d!142937 m!1214105))

(assert (=> b!1325203 m!1213561))

(declare-fun m!1214107 () Bool)

(assert (=> b!1325203 m!1214107))

(assert (=> b!1325203 m!1213561))

(declare-fun m!1214109 () Bool)

(assert (=> b!1325203 m!1214109))

(assert (=> b!1325203 m!1214109))

(declare-fun m!1214111 () Bool)

(assert (=> b!1325203 m!1214111))

(assert (=> b!1325205 m!1213561))

(assert (=> b!1325205 m!1214109))

(assert (=> b!1325205 m!1214109))

(assert (=> b!1325205 m!1214111))

(assert (=> b!1324990 d!142937))

(declare-fun d!142939 () Bool)

(assert (=> d!142939 (= (get!21788 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!20842 (select (arr!43183 _values!1337) from!2000)))))

(assert (=> b!1324880 d!142939))

(declare-fun d!142941 () Bool)

(assert (=> d!142941 (= (validKeyInArray!0 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000)) (and (not (= (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1324933 d!142941))

(declare-fun d!142943 () Bool)

(declare-fun res!879617 () Bool)

(declare-fun e!755496 () Bool)

(assert (=> d!142943 (=> res!879617 e!755496)))

(assert (=> d!142943 (= res!879617 (and ((_ is Cons!30806) (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (= (_1!11830 (h!32015 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))) k0!1164)))))

(assert (=> d!142943 (= (containsKey!732 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) k0!1164) e!755496)))

(declare-fun b!1325206 () Bool)

(declare-fun e!755497 () Bool)

(assert (=> b!1325206 (= e!755496 e!755497)))

(declare-fun res!879618 () Bool)

(assert (=> b!1325206 (=> (not res!879618) (not e!755497))))

(assert (=> b!1325206 (= res!879618 (and (or (not ((_ is Cons!30806) (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))) (bvsle (_1!11830 (h!32015 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))) k0!1164)) ((_ is Cons!30806) (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (bvslt (_1!11830 (h!32015 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))) k0!1164)))))

(declare-fun b!1325207 () Bool)

(assert (=> b!1325207 (= e!755497 (containsKey!732 (t!44747 (toList!10670 (+!4586 (+!4586 (+!4586 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) k0!1164))))

(assert (= (and d!142943 (not res!879617)) b!1325206))

(assert (= (and b!1325206 res!879618) b!1325207))

(declare-fun m!1214113 () Bool)

(assert (=> b!1325207 m!1214113))

(assert (=> d!142819 d!142943))

(declare-fun d!142945 () Bool)

(assert (=> d!142945 (= (isDefined!517 (getValueByKey!714 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164)) (not (isEmpty!1080 (getValueByKey!714 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))))

(declare-fun bs!37900 () Bool)

(assert (= bs!37900 d!142945))

(assert (=> bs!37900 m!1213719))

(declare-fun m!1214115 () Bool)

(assert (=> bs!37900 m!1214115))

(assert (=> b!1324939 d!142945))

(declare-fun b!1325208 () Bool)

(declare-fun e!755498 () Option!765)

(assert (=> b!1325208 (= e!755498 (Some!764 (_2!11830 (h!32015 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))))))

(declare-fun b!1325211 () Bool)

(declare-fun e!755499 () Option!765)

(assert (=> b!1325211 (= e!755499 None!763)))

(declare-fun b!1325209 () Bool)

(assert (=> b!1325209 (= e!755498 e!755499)))

(declare-fun c!125682 () Bool)

(assert (=> b!1325209 (= c!125682 (and ((_ is Cons!30806) (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) (not (= (_1!11830 (h!32015 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164))))))

(declare-fun b!1325210 () Bool)

(assert (=> b!1325210 (= e!755499 (getValueByKey!714 (t!44747 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) k0!1164))))

(declare-fun c!125681 () Bool)

(declare-fun d!142947 () Bool)

(assert (=> d!142947 (= c!125681 (and ((_ is Cons!30806) (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))) (= (_1!11830 (h!32015 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)))) k0!1164)))))

(assert (=> d!142947 (= (getValueByKey!714 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164) e!755498)))

(assert (= (and d!142947 c!125681) b!1325208))

(assert (= (and d!142947 (not c!125681)) b!1325209))

(assert (= (and b!1325209 c!125682) b!1325210))

(assert (= (and b!1325209 (not c!125682)) b!1325211))

(declare-fun m!1214117 () Bool)

(assert (=> b!1325210 m!1214117))

(assert (=> b!1324939 d!142947))

(assert (=> b!1324986 d!142837))

(assert (=> bm!64683 d!142875))

(declare-fun d!142949 () Bool)

(assert (=> d!142949 (= (apply!1064 lt!589570 (select (arr!43182 _keys!1609) from!2000)) (get!21790 (getValueByKey!714 (toList!10670 lt!589570) (select (arr!43182 _keys!1609) from!2000))))))

(declare-fun bs!37901 () Bool)

(assert (= bs!37901 d!142949))

(assert (=> bs!37901 m!1213561))

(assert (=> bs!37901 m!1214109))

(assert (=> bs!37901 m!1214109))

(declare-fun m!1214119 () Bool)

(assert (=> bs!37901 m!1214119))

(assert (=> b!1324985 d!142949))

(assert (=> b!1324985 d!142823))

(assert (=> b!1324917 d!142909))

(declare-fun d!142951 () Bool)

(assert (=> d!142951 (isDefined!517 (getValueByKey!714 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(declare-fun lt!589689 () Unit!43572)

(assert (=> d!142951 (= lt!589689 (choose!1957 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(declare-fun e!755500 () Bool)

(assert (=> d!142951 e!755500))

(declare-fun res!879619 () Bool)

(assert (=> d!142951 (=> (not res!879619) (not e!755500))))

(assert (=> d!142951 (= res!879619 (isStrictlySorted!873 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340))))))

(assert (=> d!142951 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164) lt!589689)))

(declare-fun b!1325212 () Bool)

(assert (=> b!1325212 (= e!755500 (containsKey!732 (toList!10670 (getCurrentListMap!5607 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340)) k0!1164))))

(assert (= (and d!142951 res!879619) b!1325212))

(assert (=> d!142951 m!1213719))

(assert (=> d!142951 m!1213719))

(assert (=> d!142951 m!1213721))

(declare-fun m!1214121 () Bool)

(assert (=> d!142951 m!1214121))

(declare-fun m!1214123 () Bool)

(assert (=> d!142951 m!1214123))

(assert (=> b!1325212 m!1213715))

(assert (=> b!1324937 d!142951))

(assert (=> b!1324937 d!142945))

(assert (=> b!1324937 d!142947))

(declare-fun d!142953 () Bool)

(assert (=> d!142953 (= (apply!1064 lt!589570 #b0000000000000000000000000000000000000000000000000000000000000000) (get!21790 (getValueByKey!714 (toList!10670 lt!589570) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!37902 () Bool)

(assert (= bs!37902 d!142953))

(declare-fun m!1214125 () Bool)

(assert (=> bs!37902 m!1214125))

(assert (=> bs!37902 m!1214125))

(declare-fun m!1214127 () Bool)

(assert (=> bs!37902 m!1214127))

(assert (=> b!1324987 d!142953))

(declare-fun d!142955 () Bool)

(declare-fun e!755501 () Bool)

(assert (=> d!142955 e!755501))

(declare-fun res!879620 () Bool)

(assert (=> d!142955 (=> (not res!879620) (not e!755501))))

(declare-fun lt!589691 () ListLongMap!21309)

(assert (=> d!142955 (= res!879620 (contains!8761 lt!589691 (_1!11830 (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(declare-fun lt!589690 () List!30810)

(assert (=> d!142955 (= lt!589691 (ListLongMap!21310 lt!589690))))

(declare-fun lt!589692 () Unit!43572)

(declare-fun lt!589693 () Unit!43572)

(assert (=> d!142955 (= lt!589692 lt!589693)))

(assert (=> d!142955 (= (getValueByKey!714 lt!589690 (_1!11830 (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (Some!764 (_2!11830 (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!142955 (= lt!589693 (lemmaContainsTupThenGetReturnValue!357 lt!589690 (_1!11830 (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (_2!11830 (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!142955 (= lt!589690 (insertStrictlySorted!486 (toList!10670 (ite c!125624 call!64706 (ite c!125623 call!64704 call!64709))) (_1!11830 (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) (_2!11830 (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!142955 (= (+!4586 (ite c!125624 call!64706 (ite c!125623 call!64704 call!64709)) (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) lt!589691)))

(declare-fun b!1325213 () Bool)

(declare-fun res!879621 () Bool)

(assert (=> b!1325213 (=> (not res!879621) (not e!755501))))

(assert (=> b!1325213 (= res!879621 (= (getValueByKey!714 (toList!10670 lt!589691) (_1!11830 (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))) (Some!764 (_2!11830 (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))))

(declare-fun b!1325214 () Bool)

(assert (=> b!1325214 (= e!755501 (contains!8763 (toList!10670 lt!589691) (ite (or c!125624 c!125623) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(assert (= (and d!142955 res!879620) b!1325213))

(assert (= (and b!1325213 res!879621) b!1325214))

(declare-fun m!1214129 () Bool)

(assert (=> d!142955 m!1214129))

(declare-fun m!1214131 () Bool)

(assert (=> d!142955 m!1214131))

(declare-fun m!1214133 () Bool)

(assert (=> d!142955 m!1214133))

(declare-fun m!1214135 () Bool)

(assert (=> d!142955 m!1214135))

(declare-fun m!1214137 () Bool)

(assert (=> b!1325213 m!1214137))

(declare-fun m!1214139 () Bool)

(assert (=> b!1325214 m!1214139))

(assert (=> bm!64707 d!142955))

(declare-fun d!142957 () Bool)

(declare-fun e!755503 () Bool)

(assert (=> d!142957 e!755503))

(declare-fun res!879622 () Bool)

(assert (=> d!142957 (=> res!879622 e!755503)))

(declare-fun lt!589697 () Bool)

(assert (=> d!142957 (= res!879622 (not lt!589697))))

(declare-fun lt!589694 () Bool)

(assert (=> d!142957 (= lt!589697 lt!589694)))

(declare-fun lt!589696 () Unit!43572)

(declare-fun e!755502 () Unit!43572)

(assert (=> d!142957 (= lt!589696 e!755502)))

(declare-fun c!125683 () Bool)

(assert (=> d!142957 (= c!125683 lt!589694)))

(assert (=> d!142957 (= lt!589694 (containsKey!732 (toList!10670 lt!589469) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!142957 (= (contains!8761 lt!589469 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!589697)))

(declare-fun b!1325215 () Bool)

(declare-fun lt!589695 () Unit!43572)

(assert (=> b!1325215 (= e!755502 lt!589695)))

(assert (=> b!1325215 (= lt!589695 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 lt!589469) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!1325215 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589469) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1325216 () Bool)

(declare-fun Unit!43586 () Unit!43572)

(assert (=> b!1325216 (= e!755502 Unit!43586)))

(declare-fun b!1325217 () Bool)

(assert (=> b!1325217 (= e!755503 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589469) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!142957 c!125683) b!1325215))

(assert (= (and d!142957 (not c!125683)) b!1325216))

(assert (= (and d!142957 (not res!879622)) b!1325217))

(declare-fun m!1214141 () Bool)

(assert (=> d!142957 m!1214141))

(declare-fun m!1214143 () Bool)

(assert (=> b!1325215 m!1214143))

(assert (=> b!1325215 m!1213651))

(assert (=> b!1325215 m!1213651))

(declare-fun m!1214145 () Bool)

(assert (=> b!1325215 m!1214145))

(assert (=> b!1325217 m!1213651))

(assert (=> b!1325217 m!1213651))

(assert (=> b!1325217 m!1214145))

(assert (=> d!142821 d!142957))

(declare-fun b!1325218 () Bool)

(declare-fun e!755504 () Option!765)

(assert (=> b!1325218 (= e!755504 (Some!764 (_2!11830 (h!32015 lt!589468))))))

(declare-fun b!1325221 () Bool)

(declare-fun e!755505 () Option!765)

(assert (=> b!1325221 (= e!755505 None!763)))

(declare-fun b!1325219 () Bool)

(assert (=> b!1325219 (= e!755504 e!755505)))

(declare-fun c!125685 () Bool)

(assert (=> b!1325219 (= c!125685 (and ((_ is Cons!30806) lt!589468) (not (= (_1!11830 (h!32015 lt!589468)) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun b!1325220 () Bool)

(assert (=> b!1325220 (= e!755505 (getValueByKey!714 (t!44747 lt!589468) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun d!142959 () Bool)

(declare-fun c!125684 () Bool)

(assert (=> d!142959 (= c!125684 (and ((_ is Cons!30806) lt!589468) (= (_1!11830 (h!32015 lt!589468)) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!142959 (= (getValueByKey!714 lt!589468 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) e!755504)))

(assert (= (and d!142959 c!125684) b!1325218))

(assert (= (and d!142959 (not c!125684)) b!1325219))

(assert (= (and b!1325219 c!125685) b!1325220))

(assert (= (and b!1325219 (not c!125685)) b!1325221))

(declare-fun m!1214147 () Bool)

(assert (=> b!1325220 m!1214147))

(assert (=> d!142821 d!142959))

(declare-fun d!142961 () Bool)

(assert (=> d!142961 (= (getValueByKey!714 lt!589468 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!764 (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!589698 () Unit!43572)

(assert (=> d!142961 (= lt!589698 (choose!1956 lt!589468 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!755506 () Bool)

(assert (=> d!142961 e!755506))

(declare-fun res!879623 () Bool)

(assert (=> d!142961 (=> (not res!879623) (not e!755506))))

(assert (=> d!142961 (= res!879623 (isStrictlySorted!873 lt!589468))))

(assert (=> d!142961 (= (lemmaContainsTupThenGetReturnValue!357 lt!589468 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!589698)))

(declare-fun b!1325222 () Bool)

(declare-fun res!879624 () Bool)

(assert (=> b!1325222 (=> (not res!879624) (not e!755506))))

(assert (=> b!1325222 (= res!879624 (containsKey!732 lt!589468 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1325223 () Bool)

(assert (=> b!1325223 (= e!755506 (contains!8763 lt!589468 (tuple2!23641 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (= (and d!142961 res!879623) b!1325222))

(assert (= (and b!1325222 res!879624) b!1325223))

(assert (=> d!142961 m!1213645))

(declare-fun m!1214149 () Bool)

(assert (=> d!142961 m!1214149))

(declare-fun m!1214151 () Bool)

(assert (=> d!142961 m!1214151))

(declare-fun m!1214153 () Bool)

(assert (=> b!1325222 m!1214153))

(declare-fun m!1214155 () Bool)

(assert (=> b!1325223 m!1214155))

(assert (=> d!142821 d!142961))

(declare-fun call!64726 () List!30810)

(declare-fun e!755509 () List!30810)

(declare-fun c!125688 () Bool)

(declare-fun bm!64722 () Bool)

(assert (=> bm!64722 (= call!64726 ($colon$colon!671 e!755509 (ite c!125688 (h!32015 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (tuple2!23641 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))))

(declare-fun c!125689 () Bool)

(assert (=> bm!64722 (= c!125689 c!125688)))

(declare-fun lt!589699 () List!30810)

(declare-fun e!755507 () Bool)

(declare-fun b!1325224 () Bool)

(assert (=> b!1325224 (= e!755507 (contains!8763 lt!589699 (tuple2!23641 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1325225 () Bool)

(declare-fun e!755508 () List!30810)

(declare-fun call!64725 () List!30810)

(assert (=> b!1325225 (= e!755508 call!64725)))

(declare-fun bm!64723 () Bool)

(declare-fun call!64727 () List!30810)

(assert (=> bm!64723 (= call!64727 call!64725)))

(declare-fun c!125686 () Bool)

(declare-fun c!125687 () Bool)

(declare-fun b!1325227 () Bool)

(assert (=> b!1325227 (= e!755509 (ite c!125686 (t!44747 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (ite c!125687 (Cons!30806 (h!32015 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (t!44747 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) Nil!30807)))))

(declare-fun b!1325228 () Bool)

(declare-fun e!755511 () List!30810)

(assert (=> b!1325228 (= e!755511 e!755508)))

(assert (=> b!1325228 (= c!125686 (and ((_ is Cons!30806) (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (= (_1!11830 (h!32015 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!1325229 () Bool)

(assert (=> b!1325229 (= c!125687 (and ((_ is Cons!30806) (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (bvsgt (_1!11830 (h!32015 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun e!755510 () List!30810)

(assert (=> b!1325229 (= e!755508 e!755510)))

(declare-fun b!1325230 () Bool)

(assert (=> b!1325230 (= e!755510 call!64727)))

(declare-fun b!1325226 () Bool)

(assert (=> b!1325226 (= e!755510 call!64727)))

(declare-fun d!142963 () Bool)

(assert (=> d!142963 e!755507))

(declare-fun res!879625 () Bool)

(assert (=> d!142963 (=> (not res!879625) (not e!755507))))

(assert (=> d!142963 (= res!879625 (isStrictlySorted!873 lt!589699))))

(assert (=> d!142963 (= lt!589699 e!755511)))

(assert (=> d!142963 (= c!125688 (and ((_ is Cons!30806) (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (bvslt (_1!11830 (h!32015 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(assert (=> d!142963 (isStrictlySorted!873 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)))))

(assert (=> d!142963 (= (insertStrictlySorted!486 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340)) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))) lt!589699)))

(declare-fun b!1325231 () Bool)

(assert (=> b!1325231 (= e!755509 (insertStrictlySorted!486 (t!44747 (toList!10670 (getCurrentListMapNoExtraKeys!6304 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))) (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun bm!64724 () Bool)

(assert (=> bm!64724 (= call!64725 call!64726)))

(declare-fun b!1325232 () Bool)

(assert (=> b!1325232 (= e!755511 call!64726)))

(declare-fun b!1325233 () Bool)

(declare-fun res!879626 () Bool)

(assert (=> b!1325233 (=> (not res!879626) (not e!755507))))

(assert (=> b!1325233 (= res!879626 (containsKey!732 lt!589699 (_1!11830 (tuple2!23641 (select (arr!43182 _keys!1609) from!2000) (get!21786 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!142963 c!125688) b!1325232))

(assert (= (and d!142963 (not c!125688)) b!1325228))

(assert (= (and b!1325228 c!125686) b!1325225))

(assert (= (and b!1325228 (not c!125686)) b!1325229))

(assert (= (and b!1325229 c!125687) b!1325230))

(assert (= (and b!1325229 (not c!125687)) b!1325226))

(assert (= (or b!1325230 b!1325226) bm!64723))

(assert (= (or b!1325225 bm!64723) bm!64724))

(assert (= (or b!1325232 bm!64724) bm!64722))

(assert (= (and bm!64722 c!125689) b!1325231))

(assert (= (and bm!64722 (not c!125689)) b!1325227))

(assert (= (and d!142963 res!879625) b!1325233))

(assert (= (and b!1325233 res!879626) b!1325224))

(declare-fun m!1214157 () Bool)

(assert (=> b!1325233 m!1214157))

(declare-fun m!1214159 () Bool)

(assert (=> b!1325224 m!1214159))

(declare-fun m!1214161 () Bool)

(assert (=> bm!64722 m!1214161))

(declare-fun m!1214163 () Bool)

(assert (=> b!1325231 m!1214163))

(declare-fun m!1214165 () Bool)

(assert (=> d!142963 m!1214165))

(declare-fun m!1214167 () Bool)

(assert (=> d!142963 m!1214167))

(assert (=> d!142821 d!142963))

(declare-fun d!142965 () Bool)

(declare-fun lt!589700 () Bool)

(assert (=> d!142965 (= lt!589700 (select (content!660 (toList!10670 lt!589498)) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun e!755512 () Bool)

(assert (=> d!142965 (= lt!589700 e!755512)))

(declare-fun res!879628 () Bool)

(assert (=> d!142965 (=> (not res!879628) (not e!755512))))

(assert (=> d!142965 (= res!879628 ((_ is Cons!30806) (toList!10670 lt!589498)))))

(assert (=> d!142965 (= (contains!8763 (toList!10670 lt!589498) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) lt!589700)))

(declare-fun b!1325234 () Bool)

(declare-fun e!755513 () Bool)

(assert (=> b!1325234 (= e!755512 e!755513)))

(declare-fun res!879627 () Bool)

(assert (=> b!1325234 (=> res!879627 e!755513)))

(assert (=> b!1325234 (= res!879627 (= (h!32015 (toList!10670 lt!589498)) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1325235 () Bool)

(assert (=> b!1325235 (= e!755513 (contains!8763 (t!44747 (toList!10670 lt!589498)) (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(assert (= (and d!142965 res!879628) b!1325234))

(assert (= (and b!1325234 (not res!879627)) b!1325235))

(declare-fun m!1214169 () Bool)

(assert (=> d!142965 m!1214169))

(declare-fun m!1214171 () Bool)

(assert (=> d!142965 m!1214171))

(declare-fun m!1214173 () Bool)

(assert (=> b!1325235 m!1214173))

(assert (=> b!1324921 d!142965))

(assert (=> bm!64704 d!142873))

(assert (=> b!1324858 d!142941))

(declare-fun b!1325236 () Bool)

(declare-fun e!755515 () Bool)

(assert (=> b!1325236 (= e!755515 (contains!8764 (ite c!125606 (Cons!30807 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) Nil!30808) Nil!30808) (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!142967 () Bool)

(declare-fun res!879629 () Bool)

(declare-fun e!755514 () Bool)

(assert (=> d!142967 (=> res!879629 e!755514)))

(assert (=> d!142967 (= res!879629 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!43733 _keys!1609)))))

(assert (=> d!142967 (= (arrayNoDuplicates!0 _keys!1609 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!125606 (Cons!30807 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) Nil!30808) Nil!30808)) e!755514)))

(declare-fun b!1325237 () Bool)

(declare-fun e!755517 () Bool)

(assert (=> b!1325237 (= e!755514 e!755517)))

(declare-fun res!879630 () Bool)

(assert (=> b!1325237 (=> (not res!879630) (not e!755517))))

(assert (=> b!1325237 (= res!879630 (not e!755515))))

(declare-fun res!879631 () Bool)

(assert (=> b!1325237 (=> (not res!879631) (not e!755515))))

(assert (=> b!1325237 (= res!879631 (validKeyInArray!0 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1325238 () Bool)

(declare-fun e!755516 () Bool)

(assert (=> b!1325238 (= e!755517 e!755516)))

(declare-fun c!125690 () Bool)

(assert (=> b!1325238 (= c!125690 (validKeyInArray!0 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!64725 () Bool)

(declare-fun call!64728 () Bool)

(assert (=> bm!64725 (= call!64728 (arrayNoDuplicates!0 _keys!1609 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!125690 (Cons!30807 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!125606 (Cons!30807 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) Nil!30808) Nil!30808)) (ite c!125606 (Cons!30807 (select (arr!43182 _keys!1609) #b00000000000000000000000000000000) Nil!30808) Nil!30808))))))

(declare-fun b!1325239 () Bool)

(assert (=> b!1325239 (= e!755516 call!64728)))

(declare-fun b!1325240 () Bool)

(assert (=> b!1325240 (= e!755516 call!64728)))

(assert (= (and d!142967 (not res!879629)) b!1325237))

(assert (= (and b!1325237 res!879631) b!1325236))

(assert (= (and b!1325237 res!879630) b!1325238))

(assert (= (and b!1325238 c!125690) b!1325240))

(assert (= (and b!1325238 (not c!125690)) b!1325239))

(assert (= (or b!1325240 b!1325239) bm!64725))

(declare-fun m!1214175 () Bool)

(assert (=> b!1325236 m!1214175))

(assert (=> b!1325236 m!1214175))

(declare-fun m!1214177 () Bool)

(assert (=> b!1325236 m!1214177))

(assert (=> b!1325237 m!1214175))

(assert (=> b!1325237 m!1214175))

(declare-fun m!1214179 () Bool)

(assert (=> b!1325237 m!1214179))

(assert (=> b!1325238 m!1214175))

(assert (=> b!1325238 m!1214175))

(assert (=> b!1325238 m!1214179))

(assert (=> bm!64725 m!1214175))

(declare-fun m!1214181 () Bool)

(assert (=> bm!64725 m!1214181))

(assert (=> bm!64686 d!142967))

(declare-fun d!142969 () Bool)

(declare-fun e!755519 () Bool)

(assert (=> d!142969 e!755519))

(declare-fun res!879632 () Bool)

(assert (=> d!142969 (=> res!879632 e!755519)))

(declare-fun lt!589704 () Bool)

(assert (=> d!142969 (= res!879632 (not lt!589704))))

(declare-fun lt!589701 () Bool)

(assert (=> d!142969 (= lt!589704 lt!589701)))

(declare-fun lt!589703 () Unit!43572)

(declare-fun e!755518 () Unit!43572)

(assert (=> d!142969 (= lt!589703 e!755518)))

(declare-fun c!125691 () Bool)

(assert (=> d!142969 (= c!125691 lt!589701)))

(assert (=> d!142969 (= lt!589701 (containsKey!732 (toList!10670 lt!589570) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!142969 (= (contains!8761 lt!589570 #b0000000000000000000000000000000000000000000000000000000000000000) lt!589704)))

(declare-fun b!1325241 () Bool)

(declare-fun lt!589702 () Unit!43572)

(assert (=> b!1325241 (= e!755518 lt!589702)))

(assert (=> b!1325241 (= lt!589702 (lemmaContainsKeyImpliesGetValueByKeyDefined!477 (toList!10670 lt!589570) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1325241 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589570) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1325242 () Bool)

(declare-fun Unit!43587 () Unit!43572)

(assert (=> b!1325242 (= e!755518 Unit!43587)))

(declare-fun b!1325243 () Bool)

(assert (=> b!1325243 (= e!755519 (isDefined!517 (getValueByKey!714 (toList!10670 lt!589570) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!142969 c!125691) b!1325241))

(assert (= (and d!142969 (not c!125691)) b!1325242))

(assert (= (and d!142969 (not res!879632)) b!1325243))

(declare-fun m!1214183 () Bool)

(assert (=> d!142969 m!1214183))

(declare-fun m!1214185 () Bool)

(assert (=> b!1325241 m!1214185))

(assert (=> b!1325241 m!1214125))

(assert (=> b!1325241 m!1214125))

(declare-fun m!1214187 () Bool)

(assert (=> b!1325241 m!1214187))

(assert (=> b!1325243 m!1214125))

(assert (=> b!1325243 m!1214125))

(assert (=> b!1325243 m!1214187))

(assert (=> bm!64702 d!142969))

(declare-fun b!1325244 () Bool)

(declare-fun e!755520 () Option!765)

(assert (=> b!1325244 (= e!755520 (Some!764 (_2!11830 (h!32015 (toList!10670 lt!589494)))))))

(declare-fun b!1325247 () Bool)

(declare-fun e!755521 () Option!765)

(assert (=> b!1325247 (= e!755521 None!763)))

(declare-fun b!1325245 () Bool)

(assert (=> b!1325245 (= e!755520 e!755521)))

(declare-fun c!125693 () Bool)

(assert (=> b!1325245 (= c!125693 (and ((_ is Cons!30806) (toList!10670 lt!589494)) (not (= (_1!11830 (h!32015 (toList!10670 lt!589494))) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))))

(declare-fun b!1325246 () Bool)

(assert (=> b!1325246 (= e!755521 (getValueByKey!714 (t!44747 (toList!10670 lt!589494)) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))))))

(declare-fun d!142971 () Bool)

(declare-fun c!125692 () Bool)

(assert (=> d!142971 (= c!125692 (and ((_ is Cons!30806) (toList!10670 lt!589494)) (= (_1!11830 (h!32015 (toList!10670 lt!589494))) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))))

(assert (=> d!142971 (= (getValueByKey!714 (toList!10670 lt!589494) (_1!11830 (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279))) e!755520)))

(assert (= (and d!142971 c!125692) b!1325244))

(assert (= (and d!142971 (not c!125692)) b!1325245))

(assert (= (and b!1325245 c!125693) b!1325246))

(assert (= (and b!1325245 (not c!125693)) b!1325247))

(declare-fun m!1214189 () Bool)

(assert (=> b!1325246 m!1214189))

(assert (=> b!1324918 d!142971))

(declare-fun d!142973 () Bool)

(assert (=> d!142973 (= (get!21789 (select (arr!43183 _values!1337) from!2000) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!3623 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1324881 d!142973))

(assert (=> b!1324934 d!142941))

(declare-fun bm!64726 () Bool)

(declare-fun call!64729 () Bool)

(assert (=> bm!64726 (= call!64729 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1609 mask!2019))))

(declare-fun b!1325248 () Bool)

(declare-fun e!755523 () Bool)

(assert (=> b!1325248 (= e!755523 call!64729)))

(declare-fun b!1325249 () Bool)

(declare-fun e!755522 () Bool)

(declare-fun e!755524 () Bool)

(assert (=> b!1325249 (= e!755522 e!755524)))

(declare-fun c!125694 () Bool)

(assert (=> b!1325249 (= c!125694 (validKeyInArray!0 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!142975 () Bool)

(declare-fun res!879634 () Bool)

(assert (=> d!142975 (=> res!879634 e!755522)))

(assert (=> d!142975 (= res!879634 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!43733 _keys!1609)))))

(assert (=> d!142975 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1609 mask!2019) e!755522)))

(declare-fun b!1325250 () Bool)

(assert (=> b!1325250 (= e!755524 call!64729)))

(declare-fun b!1325251 () Bool)

(assert (=> b!1325251 (= e!755524 e!755523)))

(declare-fun lt!589706 () (_ BitVec 64))

(assert (=> b!1325251 (= lt!589706 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!589705 () Unit!43572)

(assert (=> b!1325251 (= lt!589705 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1609 lt!589706 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1325251 (arrayContainsKey!0 _keys!1609 lt!589706 #b00000000000000000000000000000000)))

(declare-fun lt!589707 () Unit!43572)

(assert (=> b!1325251 (= lt!589707 lt!589705)))

(declare-fun res!879633 () Bool)

(assert (=> b!1325251 (= res!879633 (= (seekEntryOrOpen!0 (select (arr!43182 _keys!1609) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1609 mask!2019) (Found!10037 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1325251 (=> (not res!879633) (not e!755523))))

(assert (= (and d!142975 (not res!879634)) b!1325249))

(assert (= (and b!1325249 c!125694) b!1325251))

(assert (= (and b!1325249 (not c!125694)) b!1325250))

(assert (= (and b!1325251 res!879633) b!1325248))

(assert (= (or b!1325248 b!1325250) bm!64726))

(declare-fun m!1214191 () Bool)

(assert (=> bm!64726 m!1214191))

(assert (=> b!1325249 m!1214175))

(assert (=> b!1325249 m!1214175))

(assert (=> b!1325249 m!1214179))

(assert (=> b!1325251 m!1214175))

(declare-fun m!1214193 () Bool)

(assert (=> b!1325251 m!1214193))

(declare-fun m!1214195 () Bool)

(assert (=> b!1325251 m!1214195))

(assert (=> b!1325251 m!1214175))

(declare-fun m!1214197 () Bool)

(assert (=> b!1325251 m!1214197))

(assert (=> bm!64680 d!142975))

(declare-fun b!1325252 () Bool)

(declare-fun e!755525 () Option!765)

(assert (=> b!1325252 (= e!755525 (Some!764 (_2!11830 (h!32015 (toList!10670 lt!589498)))))))

(declare-fun b!1325255 () Bool)

(declare-fun e!755526 () Option!765)

(assert (=> b!1325255 (= e!755526 None!763)))

(declare-fun b!1325253 () Bool)

(assert (=> b!1325253 (= e!755525 e!755526)))

(declare-fun c!125696 () Bool)

(assert (=> b!1325253 (= c!125696 (and ((_ is Cons!30806) (toList!10670 lt!589498)) (not (= (_1!11830 (h!32015 (toList!10670 lt!589498))) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))))

(declare-fun b!1325254 () Bool)

(assert (=> b!1325254 (= e!755526 (getValueByKey!714 (t!44747 (toList!10670 lt!589498)) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))))

(declare-fun d!142977 () Bool)

(declare-fun c!125695 () Bool)

(assert (=> d!142977 (= c!125695 (and ((_ is Cons!30806) (toList!10670 lt!589498)) (= (_1!11830 (h!32015 (toList!10670 lt!589498))) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))))

(assert (=> d!142977 (= (getValueByKey!714 (toList!10670 lt!589498) (_1!11830 (tuple2!23641 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))) e!755525)))

(assert (= (and d!142977 c!125695) b!1325252))

(assert (= (and d!142977 (not c!125695)) b!1325253))

(assert (= (and b!1325253 c!125696) b!1325254))

(assert (= (and b!1325253 (not c!125696)) b!1325255))

(declare-fun m!1214199 () Bool)

(assert (=> b!1325254 m!1214199))

(assert (=> b!1324920 d!142977))

(declare-fun d!142979 () Bool)

(declare-fun lt!589708 () Bool)

(assert (=> d!142979 (= lt!589708 (select (content!660 (toList!10670 lt!589494)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(declare-fun e!755527 () Bool)

(assert (=> d!142979 (= lt!589708 e!755527)))

(declare-fun res!879636 () Bool)

(assert (=> d!142979 (=> (not res!879636) (not e!755527))))

(assert (=> d!142979 (= res!879636 ((_ is Cons!30806) (toList!10670 lt!589494)))))

(assert (=> d!142979 (= (contains!8763 (toList!10670 lt!589494) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) lt!589708)))

(declare-fun b!1325256 () Bool)

(declare-fun e!755528 () Bool)

(assert (=> b!1325256 (= e!755527 e!755528)))

(declare-fun res!879635 () Bool)

(assert (=> b!1325256 (=> res!879635 e!755528)))

(assert (=> b!1325256 (= res!879635 (= (h!32015 (toList!10670 lt!589494)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(declare-fun b!1325257 () Bool)

(assert (=> b!1325257 (= e!755528 (contains!8763 (t!44747 (toList!10670 lt!589494)) (tuple2!23641 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)))))

(assert (= (and d!142979 res!879636) b!1325256))

(assert (= (and b!1325256 (not res!879635)) b!1325257))

(declare-fun m!1214201 () Bool)

(assert (=> d!142979 m!1214201))

(declare-fun m!1214203 () Bool)

(assert (=> d!142979 m!1214203))

(declare-fun m!1214205 () Bool)

(assert (=> b!1325257 m!1214205))

(assert (=> b!1324919 d!142979))

(declare-fun b!1325259 () Bool)

(declare-fun e!755529 () Bool)

(assert (=> b!1325259 (= e!755529 tp_is_empty!36279)))

(declare-fun mapIsEmpty!56073 () Bool)

(declare-fun mapRes!56073 () Bool)

(assert (=> mapIsEmpty!56073 mapRes!56073))

(declare-fun condMapEmpty!56073 () Bool)

(declare-fun mapDefault!56073 () ValueCell!17241)

(assert (=> mapNonEmpty!56072 (= condMapEmpty!56073 (= mapRest!56072 ((as const (Array (_ BitVec 32) ValueCell!17241)) mapDefault!56073)))))

(assert (=> mapNonEmpty!56072 (= tp!106863 (and e!755529 mapRes!56073))))

(declare-fun b!1325258 () Bool)

(declare-fun e!755530 () Bool)

(assert (=> b!1325258 (= e!755530 tp_is_empty!36279)))

(declare-fun mapNonEmpty!56073 () Bool)

(declare-fun tp!106864 () Bool)

(assert (=> mapNonEmpty!56073 (= mapRes!56073 (and tp!106864 e!755530))))

(declare-fun mapValue!56073 () ValueCell!17241)

(declare-fun mapKey!56073 () (_ BitVec 32))

(declare-fun mapRest!56073 () (Array (_ BitVec 32) ValueCell!17241))

(assert (=> mapNonEmpty!56073 (= mapRest!56072 (store mapRest!56073 mapKey!56073 mapValue!56073))))

(assert (= (and mapNonEmpty!56072 condMapEmpty!56073) mapIsEmpty!56073))

(assert (= (and mapNonEmpty!56072 (not condMapEmpty!56073)) mapNonEmpty!56073))

(assert (= (and mapNonEmpty!56073 ((_ is ValueCellFull!17241) mapValue!56073)) b!1325258))

(assert (= (and mapNonEmpty!56072 ((_ is ValueCellFull!17241) mapDefault!56073)) b!1325259))

(declare-fun m!1214207 () Bool)

(assert (=> mapNonEmpty!56073 m!1214207))

(declare-fun b_lambda!23743 () Bool)

(assert (= b_lambda!23741 (or (and start!111838 b_free!30459) b_lambda!23743)))

(declare-fun b_lambda!23745 () Bool)

(assert (= b_lambda!23735 (or (and start!111838 b_free!30459) b_lambda!23745)))

(declare-fun b_lambda!23747 () Bool)

(assert (= b_lambda!23737 (or (and start!111838 b_free!30459) b_lambda!23747)))

(declare-fun b_lambda!23749 () Bool)

(assert (= b_lambda!23739 (or (and start!111838 b_free!30459) b_lambda!23749)))

(check-sat (not d!142855) (not b!1325217) (not b!1325237) (not b!1325158) (not d!142901) (not b!1325249) (not b!1325238) (not d!142889) (not b!1325151) (not d!142887) (not b_lambda!23733) (not d!142867) (not d!142953) (not b!1325214) (not b!1325058) (not b!1325136) (not b!1325150) (not d!142863) (not b!1325213) (not b!1325241) (not d!142963) (not b!1325224) (not d!142915) (not b!1325185) (not b_lambda!23747) (not d!142869) (not d!142961) (not d!142883) (not d!142923) (not b!1325160) (not d!142865) (not b!1325018) (not bm!64709) (not b!1325083) (not b!1325034) (not b!1325195) (not b!1325170) (not b!1325099) (not b!1325115) (not d!142951) (not b!1325085) (not b!1325026) (not b!1325049) (not d!142903) (not b!1325088) (not d!142893) (not b!1325042) (not b!1325231) (not d!142949) (not b!1325047) (not b!1325196) (not d!142955) (not d!142945) (not b!1325037) (not b!1325205) (not d!142925) (not b!1325243) (not b!1325182) (not b!1325167) (not b!1325235) (not b!1325016) (not d!142937) (not d!142877) (not d!142929) (not b!1325103) (not b!1325017) (not b!1325029) (not bm!64725) (not d!142935) (not bm!64719) (not b!1325145) (not d!142897) (not b!1325114) (not b!1325055) (not b!1325210) (not b!1325203) (not b!1325035) (not b!1325220) (not b!1325086) (not b!1325156) (not bm!64722) (not b!1325153) (not d!142933) (not b!1325024) (not b!1325053) (not b!1325169) tp_is_empty!36279 (not b_lambda!23743) (not b!1325172) (not b!1325044) (not b!1325148) (not b!1325202) (not d!142919) (not b!1325215) (not d!142873) (not b!1325143) (not d!142881) (not b!1325159) (not b!1325246) (not d!142859) (not b!1325222) (not b!1325043) (not d!142875) (not b!1325254) (not d!142853) (not b!1325251) (not b!1325064) (not mapNonEmpty!56073) (not b!1325023) (not b!1325036) (not b_lambda!23729) (not b!1325102) (not d!142857) (not d!142849) (not d!142885) (not d!142861) (not b!1325257) (not b_lambda!23749) (not b_lambda!23745) (not b!1325105) (not b!1325032) (not b!1325194) (not d!142957) (not d!142905) (not d!142979) (not b!1325212) (not b!1325101) (not b!1325054) (not b_lambda!23721) (not bm!64708) (not b_lambda!23731) (not d!142851) (not d!142927) (not b!1325146) (not b!1325046) (not b!1325056) (not b!1325048) (not bm!64716) (not d!142965) (not d!142841) (not b!1325175) (not b!1325188) (not b!1325030) (not d!142845) (not b!1325193) (not b!1325041) (not b!1325236) (not b!1325108) (not b!1325186) (not d!142917) (not d!142843) b_and!49029 (not b!1325081) (not d!142907) (not bm!64726) (not b!1325147) (not b!1325207) (not b!1325233) (not b_next!30459) (not b!1325223) (not d!142847) (not d!142969) (not d!142871) (not d!142931) (not d!142911) (not b!1325027))
(check-sat b_and!49029 (not b_next!30459))
