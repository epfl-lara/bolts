; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112334 () Bool)

(assert start!112334)

(declare-fun b_free!30693 () Bool)

(declare-fun b_next!30693 () Bool)

(assert (=> start!112334 (= b_free!30693 (not b_next!30693))))

(declare-fun tp!107716 () Bool)

(declare-fun b_and!49451 () Bool)

(assert (=> start!112334 (= tp!107716 b_and!49451)))

(declare-fun b!1330628 () Bool)

(declare-fun res!883040 () Bool)

(declare-fun e!758373 () Bool)

(assert (=> b!1330628 (=> (not res!883040) (not e!758373))))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1330628 (= res!883040 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1330629 () Bool)

(declare-fun res!883034 () Bool)

(assert (=> b!1330629 (=> (not res!883034) (not e!758373))))

(declare-datatypes ((array!90059 0))(
  ( (array!90060 (arr!43491 (Array (_ BitVec 32) (_ BitVec 64))) (size!44042 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90059)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1330629 (= res!883034 (validKeyInArray!0 (select (arr!43491 _keys!1590) from!1980)))))

(declare-fun b!1330630 () Bool)

(declare-fun e!758371 () Bool)

(declare-fun tp_is_empty!36603 () Bool)

(assert (=> b!1330630 (= e!758371 tp_is_empty!36603)))

(declare-fun b!1330631 () Bool)

(declare-fun res!883038 () Bool)

(assert (=> b!1330631 (=> (not res!883038) (not e!758373))))

(declare-datatypes ((V!53907 0))(
  ( (V!53908 (val!18376 Int)) )
))
(declare-datatypes ((ValueCell!17403 0))(
  ( (ValueCellFull!17403 (v!21011 V!53907)) (EmptyCell!17403) )
))
(declare-datatypes ((array!90061 0))(
  ( (array!90062 (arr!43492 (Array (_ BitVec 32) ValueCell!17403)) (size!44043 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90061)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53907)

(declare-fun zeroValue!1262 () V!53907)

(declare-datatypes ((tuple2!23814 0))(
  ( (tuple2!23815 (_1!11917 (_ BitVec 64)) (_2!11917 V!53907)) )
))
(declare-datatypes ((List!31001 0))(
  ( (Nil!30998) (Cons!30997 (h!32206 tuple2!23814) (t!45114 List!31001)) )
))
(declare-datatypes ((ListLongMap!21483 0))(
  ( (ListLongMap!21484 (toList!10757 List!31001)) )
))
(declare-fun contains!8857 (ListLongMap!21483 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5683 (array!90059 array!90061 (_ BitVec 32) (_ BitVec 32) V!53907 V!53907 (_ BitVec 32) Int) ListLongMap!21483)

(assert (=> b!1330631 (= res!883038 (contains!8857 (getCurrentListMap!5683 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun res!883039 () Bool)

(assert (=> start!112334 (=> (not res!883039) (not e!758373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112334 (= res!883039 (validMask!0 mask!1998))))

(assert (=> start!112334 e!758373))

(declare-fun e!758372 () Bool)

(declare-fun array_inv!32761 (array!90061) Bool)

(assert (=> start!112334 (and (array_inv!32761 _values!1320) e!758372)))

(assert (=> start!112334 true))

(declare-fun array_inv!32762 (array!90059) Bool)

(assert (=> start!112334 (array_inv!32762 _keys!1590)))

(assert (=> start!112334 tp!107716))

(assert (=> start!112334 tp_is_empty!36603))

(declare-fun b!1330632 () Bool)

(declare-fun res!883035 () Bool)

(assert (=> b!1330632 (=> (not res!883035) (not e!758373))))

(assert (=> b!1330632 (= res!883035 (not (= (select (arr!43491 _keys!1590) from!1980) k0!1153)))))

(declare-fun mapIsEmpty!56578 () Bool)

(declare-fun mapRes!56578 () Bool)

(assert (=> mapIsEmpty!56578 mapRes!56578))

(declare-fun b!1330633 () Bool)

(declare-fun res!883033 () Bool)

(assert (=> b!1330633 (=> (not res!883033) (not e!758373))))

(assert (=> b!1330633 (= res!883033 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44042 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1330634 () Bool)

(declare-fun res!883032 () Bool)

(assert (=> b!1330634 (=> (not res!883032) (not e!758373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90059 (_ BitVec 32)) Bool)

(assert (=> b!1330634 (= res!883032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1330635 () Bool)

(declare-fun e!758374 () Bool)

(assert (=> b!1330635 (= e!758372 (and e!758374 mapRes!56578))))

(declare-fun condMapEmpty!56578 () Bool)

(declare-fun mapDefault!56578 () ValueCell!17403)

(assert (=> b!1330635 (= condMapEmpty!56578 (= (arr!43492 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17403)) mapDefault!56578)))))

(declare-fun b!1330636 () Bool)

(declare-fun res!883037 () Bool)

(assert (=> b!1330636 (=> (not res!883037) (not e!758373))))

(declare-datatypes ((List!31002 0))(
  ( (Nil!30999) (Cons!30998 (h!32207 (_ BitVec 64)) (t!45115 List!31002)) )
))
(declare-fun arrayNoDuplicates!0 (array!90059 (_ BitVec 32) List!31002) Bool)

(assert (=> b!1330636 (= res!883037 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30999))))

(declare-fun b!1330637 () Bool)

(assert (=> b!1330637 (= e!758374 tp_is_empty!36603)))

(declare-fun mapNonEmpty!56578 () Bool)

(declare-fun tp!107717 () Bool)

(assert (=> mapNonEmpty!56578 (= mapRes!56578 (and tp!107717 e!758371))))

(declare-fun mapKey!56578 () (_ BitVec 32))

(declare-fun mapValue!56578 () ValueCell!17403)

(declare-fun mapRest!56578 () (Array (_ BitVec 32) ValueCell!17403))

(assert (=> mapNonEmpty!56578 (= (arr!43492 _values!1320) (store mapRest!56578 mapKey!56578 mapValue!56578))))

(declare-fun b!1330638 () Bool)

(declare-fun res!883036 () Bool)

(assert (=> b!1330638 (=> (not res!883036) (not e!758373))))

(assert (=> b!1330638 (= res!883036 (and (= (size!44043 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44042 _keys!1590) (size!44043 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1330639 () Bool)

(assert (=> b!1330639 (= e!758373 (not true))))

(declare-fun lt!591190 () ListLongMap!21483)

(assert (=> b!1330639 (contains!8857 lt!591190 k0!1153)))

(declare-fun lt!591189 () V!53907)

(declare-datatypes ((Unit!43725 0))(
  ( (Unit!43726) )
))
(declare-fun lt!591191 () Unit!43725)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!254 ((_ BitVec 64) (_ BitVec 64) V!53907 ListLongMap!21483) Unit!43725)

(assert (=> b!1330639 (= lt!591191 (lemmaInListMapAfterAddingDiffThenInBefore!254 k0!1153 (select (arr!43491 _keys!1590) from!1980) lt!591189 lt!591190))))

(declare-fun lt!591187 () ListLongMap!21483)

(assert (=> b!1330639 (contains!8857 lt!591187 k0!1153)))

(declare-fun lt!591188 () Unit!43725)

(assert (=> b!1330639 (= lt!591188 (lemmaInListMapAfterAddingDiffThenInBefore!254 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591187))))

(declare-fun +!4649 (ListLongMap!21483 tuple2!23814) ListLongMap!21483)

(assert (=> b!1330639 (= lt!591187 (+!4649 lt!591190 (tuple2!23815 (select (arr!43491 _keys!1590) from!1980) lt!591189)))))

(declare-fun get!21965 (ValueCell!17403 V!53907) V!53907)

(declare-fun dynLambda!3686 (Int (_ BitVec 64)) V!53907)

(assert (=> b!1330639 (= lt!591189 (get!21965 (select (arr!43492 _values!1320) from!1980) (dynLambda!3686 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6367 (array!90059 array!90061 (_ BitVec 32) (_ BitVec 32) V!53907 V!53907 (_ BitVec 32) Int) ListLongMap!21483)

(assert (=> b!1330639 (= lt!591190 (getCurrentListMapNoExtraKeys!6367 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(assert (= (and start!112334 res!883039) b!1330638))

(assert (= (and b!1330638 res!883036) b!1330634))

(assert (= (and b!1330634 res!883032) b!1330636))

(assert (= (and b!1330636 res!883037) b!1330633))

(assert (= (and b!1330633 res!883033) b!1330631))

(assert (= (and b!1330631 res!883038) b!1330632))

(assert (= (and b!1330632 res!883035) b!1330629))

(assert (= (and b!1330629 res!883034) b!1330628))

(assert (= (and b!1330628 res!883040) b!1330639))

(assert (= (and b!1330635 condMapEmpty!56578) mapIsEmpty!56578))

(assert (= (and b!1330635 (not condMapEmpty!56578)) mapNonEmpty!56578))

(get-info :version)

(assert (= (and mapNonEmpty!56578 ((_ is ValueCellFull!17403) mapValue!56578)) b!1330630))

(assert (= (and b!1330635 ((_ is ValueCellFull!17403) mapDefault!56578)) b!1330637))

(assert (= start!112334 b!1330635))

(declare-fun b_lambda!23963 () Bool)

(assert (=> (not b_lambda!23963) (not b!1330639)))

(declare-fun t!45113 () Bool)

(declare-fun tb!11917 () Bool)

(assert (=> (and start!112334 (= defaultEntry!1323 defaultEntry!1323) t!45113) tb!11917))

(declare-fun result!24897 () Bool)

(assert (=> tb!11917 (= result!24897 tp_is_empty!36603)))

(assert (=> b!1330639 t!45113))

(declare-fun b_and!49453 () Bool)

(assert (= b_and!49451 (and (=> t!45113 result!24897) b_and!49453)))

(declare-fun m!1219331 () Bool)

(assert (=> b!1330639 m!1219331))

(declare-fun m!1219333 () Bool)

(assert (=> b!1330639 m!1219333))

(declare-fun m!1219335 () Bool)

(assert (=> b!1330639 m!1219335))

(assert (=> b!1330639 m!1219333))

(declare-fun m!1219337 () Bool)

(assert (=> b!1330639 m!1219337))

(declare-fun m!1219339 () Bool)

(assert (=> b!1330639 m!1219339))

(declare-fun m!1219341 () Bool)

(assert (=> b!1330639 m!1219341))

(assert (=> b!1330639 m!1219335))

(declare-fun m!1219343 () Bool)

(assert (=> b!1330639 m!1219343))

(declare-fun m!1219345 () Bool)

(assert (=> b!1330639 m!1219345))

(declare-fun m!1219347 () Bool)

(assert (=> b!1330639 m!1219347))

(declare-fun m!1219349 () Bool)

(assert (=> b!1330639 m!1219349))

(assert (=> b!1330639 m!1219347))

(declare-fun m!1219351 () Bool)

(assert (=> b!1330636 m!1219351))

(declare-fun m!1219353 () Bool)

(assert (=> start!112334 m!1219353))

(declare-fun m!1219355 () Bool)

(assert (=> start!112334 m!1219355))

(declare-fun m!1219357 () Bool)

(assert (=> start!112334 m!1219357))

(declare-fun m!1219359 () Bool)

(assert (=> mapNonEmpty!56578 m!1219359))

(declare-fun m!1219361 () Bool)

(assert (=> b!1330634 m!1219361))

(assert (=> b!1330632 m!1219347))

(declare-fun m!1219363 () Bool)

(assert (=> b!1330631 m!1219363))

(assert (=> b!1330631 m!1219363))

(declare-fun m!1219365 () Bool)

(assert (=> b!1330631 m!1219365))

(assert (=> b!1330629 m!1219347))

(assert (=> b!1330629 m!1219347))

(declare-fun m!1219367 () Bool)

(assert (=> b!1330629 m!1219367))

(check-sat (not b!1330634) tp_is_empty!36603 (not b_lambda!23963) (not b!1330631) (not b_next!30693) (not b!1330636) (not start!112334) b_and!49453 (not b!1330629) (not mapNonEmpty!56578) (not b!1330639))
(check-sat b_and!49453 (not b_next!30693))
