; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112502 () Bool)

(assert start!112502)

(declare-fun b_free!30861 () Bool)

(declare-fun b_next!30861 () Bool)

(assert (=> start!112502 (= b_free!30861 (not b_next!30861))))

(declare-fun tp!108221 () Bool)

(declare-fun b_and!49733 () Bool)

(assert (=> start!112502 (= tp!108221 b_and!49733)))

(declare-fun b!1333497 () Bool)

(declare-fun res!885032 () Bool)

(declare-fun e!759648 () Bool)

(assert (=> b!1333497 (=> (not res!885032) (not e!759648))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90389 0))(
  ( (array!90390 (arr!43656 (Array (_ BitVec 32) (_ BitVec 64))) (size!44207 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90389)

(declare-fun defaultEntry!1323 () Int)

(declare-datatypes ((V!54131 0))(
  ( (V!54132 (val!18460 Int)) )
))
(declare-fun minValue!1262 () V!54131)

(declare-fun zeroValue!1262 () V!54131)

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17487 0))(
  ( (ValueCellFull!17487 (v!21095 V!54131)) (EmptyCell!17487) )
))
(declare-datatypes ((array!90391 0))(
  ( (array!90392 (arr!43657 (Array (_ BitVec 32) ValueCell!17487)) (size!44208 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90391)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-datatypes ((tuple2!23950 0))(
  ( (tuple2!23951 (_1!11985 (_ BitVec 64)) (_2!11985 V!54131)) )
))
(declare-datatypes ((List!31126 0))(
  ( (Nil!31123) (Cons!31122 (h!32331 tuple2!23950) (t!45353 List!31126)) )
))
(declare-datatypes ((ListLongMap!21619 0))(
  ( (ListLongMap!21620 (toList!10825 List!31126)) )
))
(declare-fun contains!8925 (ListLongMap!21619 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5745 (array!90389 array!90391 (_ BitVec 32) (_ BitVec 32) V!54131 V!54131 (_ BitVec 32) Int) ListLongMap!21619)

(assert (=> b!1333497 (= res!885032 (contains!8925 (getCurrentListMap!5745 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1333498 () Bool)

(declare-fun res!885041 () Bool)

(assert (=> b!1333498 (=> (not res!885041) (not e!759648))))

(declare-datatypes ((List!31127 0))(
  ( (Nil!31124) (Cons!31123 (h!32332 (_ BitVec 64)) (t!45354 List!31127)) )
))
(declare-fun arrayNoDuplicates!0 (array!90389 (_ BitVec 32) List!31127) Bool)

(assert (=> b!1333498 (= res!885041 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31124))))

(declare-fun b!1333499 () Bool)

(declare-fun res!885036 () Bool)

(assert (=> b!1333499 (=> (not res!885036) (not e!759648))))

(assert (=> b!1333499 (= res!885036 (not (= (select (arr!43656 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1333500 () Bool)

(declare-fun e!759646 () Bool)

(declare-fun e!759649 () Bool)

(declare-fun mapRes!56830 () Bool)

(assert (=> b!1333500 (= e!759646 (and e!759649 mapRes!56830))))

(declare-fun condMapEmpty!56830 () Bool)

(declare-fun mapDefault!56830 () ValueCell!17487)

(assert (=> b!1333500 (= condMapEmpty!56830 (= (arr!43657 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17487)) mapDefault!56830)))))

(declare-fun b!1333501 () Bool)

(declare-fun res!885031 () Bool)

(assert (=> b!1333501 (=> (not res!885031) (not e!759648))))

(assert (=> b!1333501 (= res!885031 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun b!1333502 () Bool)

(declare-fun e!759645 () Bool)

(declare-fun tp_is_empty!36771 () Bool)

(assert (=> b!1333502 (= e!759645 tp_is_empty!36771)))

(declare-fun b!1333503 () Bool)

(declare-fun res!885037 () Bool)

(assert (=> b!1333503 (=> (not res!885037) (not e!759648))))

(assert (=> b!1333503 (= res!885037 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44207 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1333504 () Bool)

(assert (=> b!1333504 (= e!759649 tp_is_empty!36771)))

(declare-fun res!885039 () Bool)

(assert (=> start!112502 (=> (not res!885039) (not e!759648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112502 (= res!885039 (validMask!0 mask!1998))))

(assert (=> start!112502 e!759648))

(declare-fun array_inv!32869 (array!90391) Bool)

(assert (=> start!112502 (and (array_inv!32869 _values!1320) e!759646)))

(assert (=> start!112502 true))

(declare-fun array_inv!32870 (array!90389) Bool)

(assert (=> start!112502 (array_inv!32870 _keys!1590)))

(assert (=> start!112502 tp!108221))

(assert (=> start!112502 tp_is_empty!36771))

(declare-fun b!1333505 () Bool)

(declare-fun e!759644 () Bool)

(assert (=> b!1333505 (= e!759648 e!759644)))

(declare-fun res!885034 () Bool)

(assert (=> b!1333505 (=> (not res!885034) (not e!759644))))

(declare-fun lt!592096 () ListLongMap!21619)

(declare-fun lt!592095 () V!54131)

(declare-fun +!4689 (ListLongMap!21619 tuple2!23950) ListLongMap!21619)

(assert (=> b!1333505 (= res!885034 (contains!8925 (+!4689 lt!592096 (tuple2!23951 (select (arr!43656 _keys!1590) from!1980) lt!592095)) k0!1153))))

(declare-fun getCurrentListMapNoExtraKeys!6407 (array!90389 array!90391 (_ BitVec 32) (_ BitVec 32) V!54131 V!54131 (_ BitVec 32) Int) ListLongMap!21619)

(assert (=> b!1333505 (= lt!592096 (getCurrentListMapNoExtraKeys!6407 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22061 (ValueCell!17487 V!54131) V!54131)

(declare-fun dynLambda!3726 (Int (_ BitVec 64)) V!54131)

(assert (=> b!1333505 (= lt!592095 (get!22061 (select (arr!43657 _values!1320) from!1980) (dynLambda!3726 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!56830 () Bool)

(assert (=> mapIsEmpty!56830 mapRes!56830))

(declare-fun b!1333506 () Bool)

(declare-fun res!885040 () Bool)

(assert (=> b!1333506 (=> (not res!885040) (not e!759644))))

(assert (=> b!1333506 (= res!885040 (not (= k0!1153 (select (arr!43656 _keys!1590) from!1980))))))

(declare-fun mapNonEmpty!56830 () Bool)

(declare-fun tp!108220 () Bool)

(assert (=> mapNonEmpty!56830 (= mapRes!56830 (and tp!108220 e!759645))))

(declare-fun mapValue!56830 () ValueCell!17487)

(declare-fun mapRest!56830 () (Array (_ BitVec 32) ValueCell!17487))

(declare-fun mapKey!56830 () (_ BitVec 32))

(assert (=> mapNonEmpty!56830 (= (arr!43657 _values!1320) (store mapRest!56830 mapKey!56830 mapValue!56830))))

(declare-fun b!1333507 () Bool)

(assert (=> b!1333507 (= e!759644 (not true))))

(assert (=> b!1333507 (contains!8925 lt!592096 k0!1153)))

(declare-datatypes ((Unit!43799 0))(
  ( (Unit!43800) )
))
(declare-fun lt!592097 () Unit!43799)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!291 ((_ BitVec 64) (_ BitVec 64) V!54131 ListLongMap!21619) Unit!43799)

(assert (=> b!1333507 (= lt!592097 (lemmaInListMapAfterAddingDiffThenInBefore!291 k0!1153 (select (arr!43656 _keys!1590) from!1980) lt!592095 lt!592096))))

(declare-fun b!1333508 () Bool)

(declare-fun res!885033 () Bool)

(assert (=> b!1333508 (=> (not res!885033) (not e!759648))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90389 (_ BitVec 32)) Bool)

(assert (=> b!1333508 (= res!885033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333509 () Bool)

(declare-fun res!885038 () Bool)

(assert (=> b!1333509 (=> (not res!885038) (not e!759648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1333509 (= res!885038 (validKeyInArray!0 (select (arr!43656 _keys!1590) from!1980)))))

(declare-fun b!1333510 () Bool)

(declare-fun res!885035 () Bool)

(assert (=> b!1333510 (=> (not res!885035) (not e!759648))))

(assert (=> b!1333510 (= res!885035 (and (= (size!44208 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44207 _keys!1590) (size!44208 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(assert (= (and start!112502 res!885039) b!1333510))

(assert (= (and b!1333510 res!885035) b!1333508))

(assert (= (and b!1333508 res!885033) b!1333498))

(assert (= (and b!1333498 res!885041) b!1333503))

(assert (= (and b!1333503 res!885037) b!1333497))

(assert (= (and b!1333497 res!885032) b!1333499))

(assert (= (and b!1333499 res!885036) b!1333509))

(assert (= (and b!1333509 res!885038) b!1333501))

(assert (= (and b!1333501 res!885031) b!1333505))

(assert (= (and b!1333505 res!885034) b!1333506))

(assert (= (and b!1333506 res!885040) b!1333507))

(assert (= (and b!1333500 condMapEmpty!56830) mapIsEmpty!56830))

(assert (= (and b!1333500 (not condMapEmpty!56830)) mapNonEmpty!56830))

(get-info :version)

(assert (= (and mapNonEmpty!56830 ((_ is ValueCellFull!17487) mapValue!56830)) b!1333502))

(assert (= (and b!1333500 ((_ is ValueCellFull!17487) mapDefault!56830)) b!1333504))

(assert (= start!112502 b!1333500))

(declare-fun b_lambda!24077 () Bool)

(assert (=> (not b_lambda!24077) (not b!1333505)))

(declare-fun t!45352 () Bool)

(declare-fun tb!12031 () Bool)

(assert (=> (and start!112502 (= defaultEntry!1323 defaultEntry!1323) t!45352) tb!12031))

(declare-fun result!25125 () Bool)

(assert (=> tb!12031 (= result!25125 tp_is_empty!36771)))

(assert (=> b!1333505 t!45352))

(declare-fun b_and!49735 () Bool)

(assert (= b_and!49733 (and (=> t!45352 result!25125) b_and!49735)))

(declare-fun m!1222059 () Bool)

(assert (=> b!1333505 m!1222059))

(declare-fun m!1222061 () Bool)

(assert (=> b!1333505 m!1222061))

(assert (=> b!1333505 m!1222059))

(declare-fun m!1222063 () Bool)

(assert (=> b!1333505 m!1222063))

(declare-fun m!1222065 () Bool)

(assert (=> b!1333505 m!1222065))

(assert (=> b!1333505 m!1222065))

(declare-fun m!1222067 () Bool)

(assert (=> b!1333505 m!1222067))

(declare-fun m!1222069 () Bool)

(assert (=> b!1333505 m!1222069))

(assert (=> b!1333505 m!1222061))

(declare-fun m!1222071 () Bool)

(assert (=> b!1333505 m!1222071))

(declare-fun m!1222073 () Bool)

(assert (=> b!1333497 m!1222073))

(assert (=> b!1333497 m!1222073))

(declare-fun m!1222075 () Bool)

(assert (=> b!1333497 m!1222075))

(declare-fun m!1222077 () Bool)

(assert (=> mapNonEmpty!56830 m!1222077))

(assert (=> b!1333499 m!1222071))

(assert (=> b!1333509 m!1222071))

(assert (=> b!1333509 m!1222071))

(declare-fun m!1222079 () Bool)

(assert (=> b!1333509 m!1222079))

(declare-fun m!1222081 () Bool)

(assert (=> b!1333498 m!1222081))

(declare-fun m!1222083 () Bool)

(assert (=> start!112502 m!1222083))

(declare-fun m!1222085 () Bool)

(assert (=> start!112502 m!1222085))

(declare-fun m!1222087 () Bool)

(assert (=> start!112502 m!1222087))

(assert (=> b!1333506 m!1222071))

(declare-fun m!1222089 () Bool)

(assert (=> b!1333508 m!1222089))

(declare-fun m!1222091 () Bool)

(assert (=> b!1333507 m!1222091))

(assert (=> b!1333507 m!1222071))

(assert (=> b!1333507 m!1222071))

(declare-fun m!1222093 () Bool)

(assert (=> b!1333507 m!1222093))

(check-sat b_and!49735 (not b!1333505) (not b_next!30861) (not b!1333507) (not start!112502) (not b!1333509) (not b_lambda!24077) tp_is_empty!36771 (not b!1333508) (not mapNonEmpty!56830) (not b!1333497) (not b!1333498))
(check-sat b_and!49735 (not b_next!30861))
