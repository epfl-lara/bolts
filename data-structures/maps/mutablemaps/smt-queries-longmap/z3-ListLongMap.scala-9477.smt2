; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112508 () Bool)

(assert start!112508)

(declare-fun b_free!30867 () Bool)

(declare-fun b_next!30867 () Bool)

(assert (=> start!112508 (= b_free!30867 (not b_next!30867))))

(declare-fun tp!108238 () Bool)

(declare-fun b_and!49745 () Bool)

(assert (=> start!112508 (= tp!108238 b_and!49745)))

(declare-fun b!1333629 () Bool)

(declare-fun res!885130 () Bool)

(declare-fun e!759702 () Bool)

(assert (=> b!1333629 (=> (not res!885130) (not e!759702))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1333629 (= res!885130 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333630 () Bool)

(declare-fun res!885136 () Bool)

(assert (=> b!1333630 (=> (not res!885136) (not e!759702))))

(declare-datatypes ((array!90401 0))(
  ( (array!90402 (arr!43662 (Array (_ BitVec 32) (_ BitVec 64))) (size!44213 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90401)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333630 (= res!885136 (validKeyInArray!0 (select (arr!43662 _keys!1590) from!1980)))))

(declare-fun b!1333631 () Bool)

(declare-fun e!759701 () Bool)

(declare-fun tp_is_empty!36777 () Bool)

(assert (=> b!1333631 (= e!759701 tp_is_empty!36777)))

(declare-fun b!1333632 () Bool)

(declare-fun res!885133 () Bool)

(assert (=> b!1333632 (=> (not res!885133) (not e!759702))))

(declare-datatypes ((List!31132 0))(
  ( (Nil!31129) (Cons!31128 (h!32337 (_ BitVec 64)) (t!45365 List!31132)) )
))
(declare-fun arrayNoDuplicates!0 (array!90401 (_ BitVec 32) List!31132) Bool)

(assert (=> b!1333632 (= res!885133 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31129))))

(declare-fun mapNonEmpty!56839 () Bool)

(declare-fun mapRes!56839 () Bool)

(declare-fun tp!108239 () Bool)

(declare-fun e!759703 () Bool)

(assert (=> mapNonEmpty!56839 (= mapRes!56839 (and tp!108239 e!759703))))

(declare-datatypes ((V!54139 0))(
  ( (V!54140 (val!18463 Int)) )
))
(declare-datatypes ((ValueCell!17490 0))(
  ( (ValueCellFull!17490 (v!21098 V!54139)) (EmptyCell!17490) )
))
(declare-datatypes ((array!90403 0))(
  ( (array!90404 (arr!43663 (Array (_ BitVec 32) ValueCell!17490)) (size!44214 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90403)

(declare-fun mapRest!56839 () (Array (_ BitVec 32) ValueCell!17490))

(declare-fun mapKey!56839 () (_ BitVec 32))

(declare-fun mapValue!56839 () ValueCell!17490)

(assert (=> mapNonEmpty!56839 (= (arr!43663 _values!1320) (store mapRest!56839 mapKey!56839 mapValue!56839))))

(declare-fun b!1333633 () Bool)

(declare-fun res!885135 () Bool)

(declare-fun e!759698 () Bool)

(assert (=> b!1333633 (=> (not res!885135) (not e!759698))))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1333633 (= res!885135 (not (= k0!1153 (select (arr!43662 _keys!1590) from!1980))))))

(declare-fun mapIsEmpty!56839 () Bool)

(assert (=> mapIsEmpty!56839 mapRes!56839))

(declare-fun b!1333635 () Bool)

(declare-fun res!885132 () Bool)

(assert (=> b!1333635 (=> (not res!885132) (not e!759702))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90401 (_ BitVec 32)) Bool)

(assert (=> b!1333635 (= res!885132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333636 () Bool)

(assert (=> b!1333636 (= e!759703 tp_is_empty!36777)))

(declare-fun b!1333637 () Bool)

(declare-fun res!885131 () Bool)

(assert (=> b!1333637 (=> (not res!885131) (not e!759702))))

(declare-fun minValue!1262 () V!54139)

(declare-fun zeroValue!1262 () V!54139)

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((tuple2!23956 0))(
  ( (tuple2!23957 (_1!11988 (_ BitVec 64)) (_2!11988 V!54139)) )
))
(declare-datatypes ((List!31133 0))(
  ( (Nil!31130) (Cons!31129 (h!32338 tuple2!23956) (t!45366 List!31133)) )
))
(declare-datatypes ((ListLongMap!21625 0))(
  ( (ListLongMap!21626 (toList!10828 List!31133)) )
))
(declare-fun contains!8928 (ListLongMap!21625 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5747 (array!90401 array!90403 (_ BitVec 32) (_ BitVec 32) V!54139 V!54139 (_ BitVec 32) Int) ListLongMap!21625)

(assert (=> b!1333637 (= res!885131 (contains!8928 (getCurrentListMap!5747 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1333638 () Bool)

(assert (=> b!1333638 (= e!759698 (not true))))

(declare-fun lt!592123 () ListLongMap!21625)

(assert (=> b!1333638 (contains!8928 lt!592123 k0!1153)))

(declare-datatypes ((Unit!43803 0))(
  ( (Unit!43804) )
))
(declare-fun lt!592122 () Unit!43803)

(declare-fun lt!592124 () V!54139)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!293 ((_ BitVec 64) (_ BitVec 64) V!54139 ListLongMap!21625) Unit!43803)

(assert (=> b!1333638 (= lt!592122 (lemmaInListMapAfterAddingDiffThenInBefore!293 k0!1153 (select (arr!43662 _keys!1590) from!1980) lt!592124 lt!592123))))

(declare-fun b!1333634 () Bool)

(declare-fun res!885139 () Bool)

(assert (=> b!1333634 (=> (not res!885139) (not e!759702))))

(assert (=> b!1333634 (= res!885139 (not (= (select (arr!43662 _keys!1590) from!1980) k0!1153)))))

(declare-fun res!885138 () Bool)

(assert (=> start!112508 (=> (not res!885138) (not e!759702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112508 (= res!885138 (validMask!0 mask!1998))))

(assert (=> start!112508 e!759702))

(declare-fun e!759700 () Bool)

(declare-fun array_inv!32873 (array!90403) Bool)

(assert (=> start!112508 (and (array_inv!32873 _values!1320) e!759700)))

(assert (=> start!112508 true))

(declare-fun array_inv!32874 (array!90401) Bool)

(assert (=> start!112508 (array_inv!32874 _keys!1590)))

(assert (=> start!112508 tp!108238))

(assert (=> start!112508 tp_is_empty!36777))

(declare-fun b!1333639 () Bool)

(assert (=> b!1333639 (= e!759702 e!759698)))

(declare-fun res!885134 () Bool)

(assert (=> b!1333639 (=> (not res!885134) (not e!759698))))

(declare-fun +!4692 (ListLongMap!21625 tuple2!23956) ListLongMap!21625)

(assert (=> b!1333639 (= res!885134 (contains!8928 (+!4692 lt!592123 (tuple2!23957 (select (arr!43662 _keys!1590) from!1980) lt!592124)) k0!1153))))

(declare-fun getCurrentListMapNoExtraKeys!6410 (array!90401 array!90403 (_ BitVec 32) (_ BitVec 32) V!54139 V!54139 (_ BitVec 32) Int) ListLongMap!21625)

(assert (=> b!1333639 (= lt!592123 (getCurrentListMapNoExtraKeys!6410 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22066 (ValueCell!17490 V!54139) V!54139)

(declare-fun dynLambda!3729 (Int (_ BitVec 64)) V!54139)

(assert (=> b!1333639 (= lt!592124 (get!22066 (select (arr!43663 _values!1320) from!1980) (dynLambda!3729 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1333640 () Bool)

(declare-fun res!885137 () Bool)

(assert (=> b!1333640 (=> (not res!885137) (not e!759702))))

(assert (=> b!1333640 (= res!885137 (and (= (size!44214 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44213 _keys!1590) (size!44214 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1333641 () Bool)

(declare-fun res!885140 () Bool)

(assert (=> b!1333641 (=> (not res!885140) (not e!759702))))

(assert (=> b!1333641 (= res!885140 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44213 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333642 () Bool)

(assert (=> b!1333642 (= e!759700 (and e!759701 mapRes!56839))))

(declare-fun condMapEmpty!56839 () Bool)

(declare-fun mapDefault!56839 () ValueCell!17490)

(assert (=> b!1333642 (= condMapEmpty!56839 (= (arr!43663 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17490)) mapDefault!56839)))))

(assert (= (and start!112508 res!885138) b!1333640))

(assert (= (and b!1333640 res!885137) b!1333635))

(assert (= (and b!1333635 res!885132) b!1333632))

(assert (= (and b!1333632 res!885133) b!1333641))

(assert (= (and b!1333641 res!885140) b!1333637))

(assert (= (and b!1333637 res!885131) b!1333634))

(assert (= (and b!1333634 res!885139) b!1333630))

(assert (= (and b!1333630 res!885136) b!1333629))

(assert (= (and b!1333629 res!885130) b!1333639))

(assert (= (and b!1333639 res!885134) b!1333633))

(assert (= (and b!1333633 res!885135) b!1333638))

(assert (= (and b!1333642 condMapEmpty!56839) mapIsEmpty!56839))

(assert (= (and b!1333642 (not condMapEmpty!56839)) mapNonEmpty!56839))

(get-info :version)

(assert (= (and mapNonEmpty!56839 ((_ is ValueCellFull!17490) mapValue!56839)) b!1333636))

(assert (= (and b!1333642 ((_ is ValueCellFull!17490) mapDefault!56839)) b!1333631))

(assert (= start!112508 b!1333642))

(declare-fun b_lambda!24083 () Bool)

(assert (=> (not b_lambda!24083) (not b!1333639)))

(declare-fun t!45364 () Bool)

(declare-fun tb!12037 () Bool)

(assert (=> (and start!112508 (= defaultEntry!1323 defaultEntry!1323) t!45364) tb!12037))

(declare-fun result!25137 () Bool)

(assert (=> tb!12037 (= result!25137 tp_is_empty!36777)))

(assert (=> b!1333639 t!45364))

(declare-fun b_and!49747 () Bool)

(assert (= b_and!49745 (and (=> t!45364 result!25137) b_and!49747)))

(declare-fun m!1222167 () Bool)

(assert (=> b!1333639 m!1222167))

(declare-fun m!1222169 () Bool)

(assert (=> b!1333639 m!1222169))

(declare-fun m!1222171 () Bool)

(assert (=> b!1333639 m!1222171))

(declare-fun m!1222173 () Bool)

(assert (=> b!1333639 m!1222173))

(assert (=> b!1333639 m!1222171))

(declare-fun m!1222175 () Bool)

(assert (=> b!1333639 m!1222175))

(assert (=> b!1333639 m!1222167))

(declare-fun m!1222177 () Bool)

(assert (=> b!1333639 m!1222177))

(assert (=> b!1333639 m!1222173))

(declare-fun m!1222179 () Bool)

(assert (=> b!1333639 m!1222179))

(assert (=> b!1333633 m!1222179))

(declare-fun m!1222181 () Bool)

(assert (=> b!1333635 m!1222181))

(assert (=> b!1333634 m!1222179))

(declare-fun m!1222183 () Bool)

(assert (=> start!112508 m!1222183))

(declare-fun m!1222185 () Bool)

(assert (=> start!112508 m!1222185))

(declare-fun m!1222187 () Bool)

(assert (=> start!112508 m!1222187))

(assert (=> b!1333630 m!1222179))

(assert (=> b!1333630 m!1222179))

(declare-fun m!1222189 () Bool)

(assert (=> b!1333630 m!1222189))

(declare-fun m!1222191 () Bool)

(assert (=> b!1333638 m!1222191))

(assert (=> b!1333638 m!1222179))

(assert (=> b!1333638 m!1222179))

(declare-fun m!1222193 () Bool)

(assert (=> b!1333638 m!1222193))

(declare-fun m!1222195 () Bool)

(assert (=> mapNonEmpty!56839 m!1222195))

(declare-fun m!1222197 () Bool)

(assert (=> b!1333632 m!1222197))

(declare-fun m!1222199 () Bool)

(assert (=> b!1333637 m!1222199))

(assert (=> b!1333637 m!1222199))

(declare-fun m!1222201 () Bool)

(assert (=> b!1333637 m!1222201))

(check-sat (not b!1333635) (not mapNonEmpty!56839) (not b!1333639) (not b_next!30867) (not b!1333630) b_and!49747 (not start!112508) tp_is_empty!36777 (not b!1333637) (not b_lambda!24083) (not b!1333632) (not b!1333638))
(check-sat b_and!49747 (not b_next!30867))
