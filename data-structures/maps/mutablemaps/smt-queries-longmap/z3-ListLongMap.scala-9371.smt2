; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111700 () Bool)

(assert start!111700)

(declare-fun b_free!30321 () Bool)

(declare-fun b_next!30321 () Bool)

(assert (=> start!111700 (= b_free!30321 (not b_next!30321))))

(declare-fun tp!106440 () Bool)

(declare-fun b_and!48811 () Bool)

(assert (=> start!111700 (= tp!106440 b_and!48811)))

(declare-fun b!1322735 () Bool)

(declare-fun e!754218 () Bool)

(assert (=> b!1322735 (= e!754218 (not true))))

(declare-datatypes ((V!53291 0))(
  ( (V!53292 (val!18145 Int)) )
))
(declare-datatypes ((tuple2!23544 0))(
  ( (tuple2!23545 (_1!11782 (_ BitVec 64)) (_2!11782 V!53291)) )
))
(declare-datatypes ((List!30718 0))(
  ( (Nil!30715) (Cons!30714 (h!31923 tuple2!23544) (t!44595 List!30718)) )
))
(declare-datatypes ((ListLongMap!21213 0))(
  ( (ListLongMap!21214 (toList!10622 List!30718)) )
))
(declare-fun lt!588406 () ListLongMap!21213)

(declare-fun lt!588411 () tuple2!23544)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8713 (ListLongMap!21213 (_ BitVec 64)) Bool)

(declare-fun +!4570 (ListLongMap!21213 tuple2!23544) ListLongMap!21213)

(assert (=> b!1322735 (contains!8713 (+!4570 lt!588406 lt!588411) k0!1164)))

(declare-fun zeroValue!1279 () V!53291)

(declare-datatypes ((Unit!43540 0))(
  ( (Unit!43541) )
))
(declare-fun lt!588412 () Unit!43540)

(declare-fun addStillContains!1151 (ListLongMap!21213 (_ BitVec 64) V!53291 (_ BitVec 64)) Unit!43540)

(assert (=> b!1322735 (= lt!588412 (addStillContains!1151 lt!588406 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 k0!1164))))

(assert (=> b!1322735 (contains!8713 lt!588406 k0!1164)))

(declare-datatypes ((array!89159 0))(
  ( (array!89160 (arr!43049 (Array (_ BitVec 32) (_ BitVec 64))) (size!43600 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89159)

(declare-fun lt!588407 () Unit!43540)

(declare-fun lt!588404 () V!53291)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!185 ((_ BitVec 64) (_ BitVec 64) V!53291 ListLongMap!21213) Unit!43540)

(assert (=> b!1322735 (= lt!588407 (lemmaInListMapAfterAddingDiffThenInBefore!185 k0!1164 (select (arr!43049 _keys!1609) from!2000) lt!588404 lt!588406))))

(declare-fun lt!588408 () ListLongMap!21213)

(assert (=> b!1322735 (contains!8713 lt!588408 k0!1164)))

(declare-fun lt!588410 () Unit!43540)

(assert (=> b!1322735 (= lt!588410 (lemmaInListMapAfterAddingDiffThenInBefore!185 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!588408))))

(declare-fun lt!588409 () ListLongMap!21213)

(assert (=> b!1322735 (contains!8713 lt!588409 k0!1164)))

(declare-fun lt!588405 () Unit!43540)

(declare-fun minValue!1279 () V!53291)

(assert (=> b!1322735 (= lt!588405 (lemmaInListMapAfterAddingDiffThenInBefore!185 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!588409))))

(assert (=> b!1322735 (= lt!588409 (+!4570 lt!588408 lt!588411))))

(assert (=> b!1322735 (= lt!588411 (tuple2!23545 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279))))

(assert (=> b!1322735 (= lt!588408 (+!4570 lt!588406 (tuple2!23545 (select (arr!43049 _keys!1609) from!2000) lt!588404)))))

(declare-datatypes ((ValueCell!17172 0))(
  ( (ValueCellFull!17172 (v!20773 V!53291)) (EmptyCell!17172) )
))
(declare-datatypes ((array!89161 0))(
  ( (array!89162 (arr!43050 (Array (_ BitVec 32) ValueCell!17172)) (size!43601 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89161)

(declare-fun defaultEntry!1340 () Int)

(declare-fun get!21724 (ValueCell!17172 V!53291) V!53291)

(declare-fun dynLambda!3607 (Int (_ BitVec 64)) V!53291)

(assert (=> b!1322735 (= lt!588404 (get!21724 (select (arr!43050 _values!1337) from!2000) (dynLambda!3607 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6285 (array!89159 array!89161 (_ BitVec 32) (_ BitVec 32) V!53291 V!53291 (_ BitVec 32) Int) ListLongMap!21213)

(assert (=> b!1322735 (= lt!588406 (getCurrentListMapNoExtraKeys!6285 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun b!1322736 () Bool)

(declare-fun e!754219 () Bool)

(declare-fun tp_is_empty!36141 () Bool)

(assert (=> b!1322736 (= e!754219 tp_is_empty!36141)))

(declare-fun b!1322737 () Bool)

(declare-fun e!754221 () Bool)

(declare-fun e!754220 () Bool)

(declare-fun mapRes!55859 () Bool)

(assert (=> b!1322737 (= e!754221 (and e!754220 mapRes!55859))))

(declare-fun condMapEmpty!55859 () Bool)

(declare-fun mapDefault!55859 () ValueCell!17172)

(assert (=> b!1322737 (= condMapEmpty!55859 (= (arr!43050 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17172)) mapDefault!55859)))))

(declare-fun b!1322738 () Bool)

(declare-fun res!878051 () Bool)

(assert (=> b!1322738 (=> (not res!878051) (not e!754218))))

(declare-datatypes ((List!30719 0))(
  ( (Nil!30716) (Cons!30715 (h!31924 (_ BitVec 64)) (t!44596 List!30719)) )
))
(declare-fun arrayNoDuplicates!0 (array!89159 (_ BitVec 32) List!30719) Bool)

(assert (=> b!1322738 (= res!878051 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30716))))

(declare-fun b!1322739 () Bool)

(declare-fun res!878055 () Bool)

(assert (=> b!1322739 (=> (not res!878055) (not e!754218))))

(declare-fun getCurrentListMap!5562 (array!89159 array!89161 (_ BitVec 32) (_ BitVec 32) V!53291 V!53291 (_ BitVec 32) Int) ListLongMap!21213)

(assert (=> b!1322739 (= res!878055 (contains!8713 (getCurrentListMap!5562 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1322740 () Bool)

(declare-fun res!878049 () Bool)

(assert (=> b!1322740 (=> (not res!878049) (not e!754218))))

(assert (=> b!1322740 (= res!878049 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43600 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55859 () Bool)

(declare-fun tp!106439 () Bool)

(assert (=> mapNonEmpty!55859 (= mapRes!55859 (and tp!106439 e!754219))))

(declare-fun mapKey!55859 () (_ BitVec 32))

(declare-fun mapRest!55859 () (Array (_ BitVec 32) ValueCell!17172))

(declare-fun mapValue!55859 () ValueCell!17172)

(assert (=> mapNonEmpty!55859 (= (arr!43050 _values!1337) (store mapRest!55859 mapKey!55859 mapValue!55859))))

(declare-fun b!1322741 () Bool)

(assert (=> b!1322741 (= e!754220 tp_is_empty!36141)))

(declare-fun b!1322742 () Bool)

(declare-fun res!878056 () Bool)

(assert (=> b!1322742 (=> (not res!878056) (not e!754218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1322742 (= res!878056 (validKeyInArray!0 (select (arr!43049 _keys!1609) from!2000)))))

(declare-fun b!1322734 () Bool)

(declare-fun res!878053 () Bool)

(assert (=> b!1322734 (=> (not res!878053) (not e!754218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89159 (_ BitVec 32)) Bool)

(assert (=> b!1322734 (= res!878053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun res!878054 () Bool)

(assert (=> start!111700 (=> (not res!878054) (not e!754218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111700 (= res!878054 (validMask!0 mask!2019))))

(assert (=> start!111700 e!754218))

(declare-fun array_inv!32457 (array!89159) Bool)

(assert (=> start!111700 (array_inv!32457 _keys!1609)))

(assert (=> start!111700 true))

(assert (=> start!111700 tp_is_empty!36141))

(declare-fun array_inv!32458 (array!89161) Bool)

(assert (=> start!111700 (and (array_inv!32458 _values!1337) e!754221)))

(assert (=> start!111700 tp!106440))

(declare-fun b!1322743 () Bool)

(declare-fun res!878052 () Bool)

(assert (=> b!1322743 (=> (not res!878052) (not e!754218))))

(assert (=> b!1322743 (= res!878052 (and (= (size!43601 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43600 _keys!1609) (size!43601 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!55859 () Bool)

(assert (=> mapIsEmpty!55859 mapRes!55859))

(declare-fun b!1322744 () Bool)

(declare-fun res!878050 () Bool)

(assert (=> b!1322744 (=> (not res!878050) (not e!754218))))

(assert (=> b!1322744 (= res!878050 (not (= (select (arr!43049 _keys!1609) from!2000) k0!1164)))))

(assert (= (and start!111700 res!878054) b!1322743))

(assert (= (and b!1322743 res!878052) b!1322734))

(assert (= (and b!1322734 res!878053) b!1322738))

(assert (= (and b!1322738 res!878051) b!1322740))

(assert (= (and b!1322740 res!878049) b!1322739))

(assert (= (and b!1322739 res!878055) b!1322744))

(assert (= (and b!1322744 res!878050) b!1322742))

(assert (= (and b!1322742 res!878056) b!1322735))

(assert (= (and b!1322737 condMapEmpty!55859) mapIsEmpty!55859))

(assert (= (and b!1322737 (not condMapEmpty!55859)) mapNonEmpty!55859))

(get-info :version)

(assert (= (and mapNonEmpty!55859 ((_ is ValueCellFull!17172) mapValue!55859)) b!1322736))

(assert (= (and b!1322737 ((_ is ValueCellFull!17172) mapDefault!55859)) b!1322741))

(assert (= start!111700 b!1322737))

(declare-fun b_lambda!23657 () Bool)

(assert (=> (not b_lambda!23657) (not b!1322735)))

(declare-fun t!44594 () Bool)

(declare-fun tb!11681 () Bool)

(assert (=> (and start!111700 (= defaultEntry!1340 defaultEntry!1340) t!44594) tb!11681))

(declare-fun result!24409 () Bool)

(assert (=> tb!11681 (= result!24409 tp_is_empty!36141)))

(assert (=> b!1322735 t!44594))

(declare-fun b_and!48813 () Bool)

(assert (= b_and!48811 (and (=> t!44594 result!24409) b_and!48813)))

(declare-fun m!1211231 () Bool)

(assert (=> b!1322742 m!1211231))

(assert (=> b!1322742 m!1211231))

(declare-fun m!1211233 () Bool)

(assert (=> b!1322742 m!1211233))

(declare-fun m!1211235 () Bool)

(assert (=> start!111700 m!1211235))

(declare-fun m!1211237 () Bool)

(assert (=> start!111700 m!1211237))

(declare-fun m!1211239 () Bool)

(assert (=> start!111700 m!1211239))

(declare-fun m!1211241 () Bool)

(assert (=> b!1322735 m!1211241))

(declare-fun m!1211243 () Bool)

(assert (=> b!1322735 m!1211243))

(assert (=> b!1322735 m!1211231))

(declare-fun m!1211245 () Bool)

(assert (=> b!1322735 m!1211245))

(declare-fun m!1211247 () Bool)

(assert (=> b!1322735 m!1211247))

(declare-fun m!1211249 () Bool)

(assert (=> b!1322735 m!1211249))

(declare-fun m!1211251 () Bool)

(assert (=> b!1322735 m!1211251))

(declare-fun m!1211253 () Bool)

(assert (=> b!1322735 m!1211253))

(declare-fun m!1211255 () Bool)

(assert (=> b!1322735 m!1211255))

(declare-fun m!1211257 () Bool)

(assert (=> b!1322735 m!1211257))

(assert (=> b!1322735 m!1211231))

(declare-fun m!1211259 () Bool)

(assert (=> b!1322735 m!1211259))

(declare-fun m!1211261 () Bool)

(assert (=> b!1322735 m!1211261))

(declare-fun m!1211263 () Bool)

(assert (=> b!1322735 m!1211263))

(declare-fun m!1211265 () Bool)

(assert (=> b!1322735 m!1211265))

(assert (=> b!1322735 m!1211241))

(assert (=> b!1322735 m!1211251))

(assert (=> b!1322735 m!1211249))

(declare-fun m!1211267 () Bool)

(assert (=> b!1322735 m!1211267))

(declare-fun m!1211269 () Bool)

(assert (=> b!1322735 m!1211269))

(declare-fun m!1211271 () Bool)

(assert (=> b!1322739 m!1211271))

(assert (=> b!1322739 m!1211271))

(declare-fun m!1211273 () Bool)

(assert (=> b!1322739 m!1211273))

(declare-fun m!1211275 () Bool)

(assert (=> b!1322734 m!1211275))

(declare-fun m!1211277 () Bool)

(assert (=> mapNonEmpty!55859 m!1211277))

(declare-fun m!1211279 () Bool)

(assert (=> b!1322738 m!1211279))

(assert (=> b!1322744 m!1211231))

(check-sat (not b_lambda!23657) (not b!1322742) (not mapNonEmpty!55859) (not b_next!30321) (not b!1322734) (not start!111700) b_and!48813 (not b!1322738) (not b!1322735) (not b!1322739) tp_is_empty!36141)
(check-sat b_and!48813 (not b_next!30321))
