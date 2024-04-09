; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112256 () Bool)

(assert start!112256)

(declare-fun b_free!30615 () Bool)

(declare-fun b_next!30615 () Bool)

(assert (=> start!112256 (= b_free!30615 (not b_next!30615))))

(declare-fun tp!107482 () Bool)

(declare-fun b_and!49295 () Bool)

(assert (=> start!112256 (= tp!107482 b_and!49295)))

(declare-fun b!1329146 () Bool)

(declare-fun e!757787 () Bool)

(declare-fun e!757786 () Bool)

(declare-fun mapRes!56461 () Bool)

(assert (=> b!1329146 (= e!757787 (and e!757786 mapRes!56461))))

(declare-fun condMapEmpty!56461 () Bool)

(declare-datatypes ((V!53803 0))(
  ( (V!53804 (val!18337 Int)) )
))
(declare-datatypes ((ValueCell!17364 0))(
  ( (ValueCellFull!17364 (v!20972 V!53803)) (EmptyCell!17364) )
))
(declare-datatypes ((array!89905 0))(
  ( (array!89906 (arr!43414 (Array (_ BitVec 32) ValueCell!17364)) (size!43965 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89905)

(declare-fun mapDefault!56461 () ValueCell!17364)

(assert (=> b!1329146 (= condMapEmpty!56461 (= (arr!43414 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17364)) mapDefault!56461)))))

(declare-fun b!1329147 () Bool)

(declare-fun res!881979 () Bool)

(declare-fun e!757785 () Bool)

(assert (=> b!1329147 (=> (not res!881979) (not e!757785))))

(declare-datatypes ((array!89907 0))(
  ( (array!89908 (arr!43415 (Array (_ BitVec 32) (_ BitVec 64))) (size!43966 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89907)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329147 (= res!881979 (validKeyInArray!0 (select (arr!43415 _keys!1590) from!1980)))))

(declare-fun res!881985 () Bool)

(assert (=> start!112256 (=> (not res!881985) (not e!757785))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112256 (= res!881985 (validMask!0 mask!1998))))

(assert (=> start!112256 e!757785))

(declare-fun array_inv!32705 (array!89905) Bool)

(assert (=> start!112256 (and (array_inv!32705 _values!1320) e!757787)))

(assert (=> start!112256 true))

(declare-fun array_inv!32706 (array!89907) Bool)

(assert (=> start!112256 (array_inv!32706 _keys!1590)))

(assert (=> start!112256 tp!107482))

(declare-fun tp_is_empty!36525 () Bool)

(assert (=> start!112256 tp_is_empty!36525))

(declare-fun b!1329148 () Bool)

(declare-fun res!881980 () Bool)

(assert (=> b!1329148 (=> (not res!881980) (not e!757785))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89907 (_ BitVec 32)) Bool)

(assert (=> b!1329148 (= res!881980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1329149 () Bool)

(declare-fun res!881981 () Bool)

(assert (=> b!1329149 (=> (not res!881981) (not e!757785))))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1329149 (= res!881981 (not (= (select (arr!43415 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1329150 () Bool)

(declare-fun res!881984 () Bool)

(assert (=> b!1329150 (=> (not res!881984) (not e!757785))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!53803)

(declare-fun zeroValue!1262 () V!53803)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((tuple2!23752 0))(
  ( (tuple2!23753 (_1!11886 (_ BitVec 64)) (_2!11886 V!53803)) )
))
(declare-datatypes ((List!30942 0))(
  ( (Nil!30939) (Cons!30938 (h!32147 tuple2!23752) (t!44977 List!30942)) )
))
(declare-datatypes ((ListLongMap!21421 0))(
  ( (ListLongMap!21422 (toList!10726 List!30942)) )
))
(declare-fun contains!8826 (ListLongMap!21421 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5658 (array!89907 array!89905 (_ BitVec 32) (_ BitVec 32) V!53803 V!53803 (_ BitVec 32) Int) ListLongMap!21421)

(assert (=> b!1329150 (= res!881984 (contains!8826 (getCurrentListMap!5658 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1329151 () Bool)

(declare-fun res!881982 () Bool)

(assert (=> b!1329151 (=> (not res!881982) (not e!757785))))

(declare-datatypes ((List!30943 0))(
  ( (Nil!30940) (Cons!30939 (h!32148 (_ BitVec 64)) (t!44978 List!30943)) )
))
(declare-fun arrayNoDuplicates!0 (array!89907 (_ BitVec 32) List!30943) Bool)

(assert (=> b!1329151 (= res!881982 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30940))))

(declare-fun mapNonEmpty!56461 () Bool)

(declare-fun tp!107483 () Bool)

(declare-fun e!757789 () Bool)

(assert (=> mapNonEmpty!56461 (= mapRes!56461 (and tp!107483 e!757789))))

(declare-fun mapValue!56461 () ValueCell!17364)

(declare-fun mapRest!56461 () (Array (_ BitVec 32) ValueCell!17364))

(declare-fun mapKey!56461 () (_ BitVec 32))

(assert (=> mapNonEmpty!56461 (= (arr!43414 _values!1320) (store mapRest!56461 mapKey!56461 mapValue!56461))))

(declare-fun b!1329152 () Bool)

(assert (=> b!1329152 (= e!757786 tp_is_empty!36525)))

(declare-fun b!1329153 () Bool)

(declare-fun res!881986 () Bool)

(assert (=> b!1329153 (=> (not res!881986) (not e!757785))))

(assert (=> b!1329153 (= res!881986 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!56461 () Bool)

(assert (=> mapIsEmpty!56461 mapRes!56461))

(declare-fun b!1329154 () Bool)

(assert (=> b!1329154 (= e!757785 (not true))))

(declare-fun lt!590857 () ListLongMap!21421)

(assert (=> b!1329154 (contains!8826 lt!590857 k0!1153)))

(declare-datatypes ((Unit!43673 0))(
  ( (Unit!43674) )
))
(declare-fun lt!590858 () Unit!43673)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!228 ((_ BitVec 64) (_ BitVec 64) V!53803 ListLongMap!21421) Unit!43673)

(assert (=> b!1329154 (= lt!590858 (lemmaInListMapAfterAddingDiffThenInBefore!228 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!590857))))

(declare-fun +!4623 (ListLongMap!21421 tuple2!23752) ListLongMap!21421)

(declare-fun getCurrentListMapNoExtraKeys!6341 (array!89907 array!89905 (_ BitVec 32) (_ BitVec 32) V!53803 V!53803 (_ BitVec 32) Int) ListLongMap!21421)

(declare-fun get!21913 (ValueCell!17364 V!53803) V!53803)

(declare-fun dynLambda!3660 (Int (_ BitVec 64)) V!53803)

(assert (=> b!1329154 (= lt!590857 (+!4623 (getCurrentListMapNoExtraKeys!6341 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) (tuple2!23753 (select (arr!43415 _keys!1590) from!1980) (get!21913 (select (arr!43414 _values!1320) from!1980) (dynLambda!3660 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1329155 () Bool)

(assert (=> b!1329155 (= e!757789 tp_is_empty!36525)))

(declare-fun b!1329156 () Bool)

(declare-fun res!881987 () Bool)

(assert (=> b!1329156 (=> (not res!881987) (not e!757785))))

(assert (=> b!1329156 (= res!881987 (and (= (size!43965 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43966 _keys!1590) (size!43965 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1329157 () Bool)

(declare-fun res!881983 () Bool)

(assert (=> b!1329157 (=> (not res!881983) (not e!757785))))

(assert (=> b!1329157 (= res!881983 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43966 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!112256 res!881985) b!1329156))

(assert (= (and b!1329156 res!881987) b!1329148))

(assert (= (and b!1329148 res!881980) b!1329151))

(assert (= (and b!1329151 res!881982) b!1329157))

(assert (= (and b!1329157 res!881983) b!1329150))

(assert (= (and b!1329150 res!881984) b!1329149))

(assert (= (and b!1329149 res!881981) b!1329147))

(assert (= (and b!1329147 res!881979) b!1329153))

(assert (= (and b!1329153 res!881986) b!1329154))

(assert (= (and b!1329146 condMapEmpty!56461) mapIsEmpty!56461))

(assert (= (and b!1329146 (not condMapEmpty!56461)) mapNonEmpty!56461))

(get-info :version)

(assert (= (and mapNonEmpty!56461 ((_ is ValueCellFull!17364) mapValue!56461)) b!1329155))

(assert (= (and b!1329146 ((_ is ValueCellFull!17364) mapDefault!56461)) b!1329152))

(assert (= start!112256 b!1329146))

(declare-fun b_lambda!23885 () Bool)

(assert (=> (not b_lambda!23885) (not b!1329154)))

(declare-fun t!44976 () Bool)

(declare-fun tb!11839 () Bool)

(assert (=> (and start!112256 (= defaultEntry!1323 defaultEntry!1323) t!44976) tb!11839))

(declare-fun result!24741 () Bool)

(assert (=> tb!11839 (= result!24741 tp_is_empty!36525)))

(assert (=> b!1329154 t!44976))

(declare-fun b_and!49297 () Bool)

(assert (= b_and!49295 (and (=> t!44976 result!24741) b_and!49297)))

(declare-fun m!1217965 () Bool)

(assert (=> b!1329151 m!1217965))

(declare-fun m!1217967 () Bool)

(assert (=> start!112256 m!1217967))

(declare-fun m!1217969 () Bool)

(assert (=> start!112256 m!1217969))

(declare-fun m!1217971 () Bool)

(assert (=> start!112256 m!1217971))

(declare-fun m!1217973 () Bool)

(assert (=> b!1329154 m!1217973))

(declare-fun m!1217975 () Bool)

(assert (=> b!1329154 m!1217975))

(declare-fun m!1217977 () Bool)

(assert (=> b!1329154 m!1217977))

(declare-fun m!1217979 () Bool)

(assert (=> b!1329154 m!1217979))

(assert (=> b!1329154 m!1217973))

(declare-fun m!1217981 () Bool)

(assert (=> b!1329154 m!1217981))

(assert (=> b!1329154 m!1217975))

(declare-fun m!1217983 () Bool)

(assert (=> b!1329154 m!1217983))

(assert (=> b!1329154 m!1217979))

(declare-fun m!1217985 () Bool)

(assert (=> b!1329154 m!1217985))

(declare-fun m!1217987 () Bool)

(assert (=> b!1329154 m!1217987))

(declare-fun m!1217989 () Bool)

(assert (=> b!1329150 m!1217989))

(assert (=> b!1329150 m!1217989))

(declare-fun m!1217991 () Bool)

(assert (=> b!1329150 m!1217991))

(declare-fun m!1217993 () Bool)

(assert (=> b!1329148 m!1217993))

(assert (=> b!1329149 m!1217987))

(declare-fun m!1217995 () Bool)

(assert (=> mapNonEmpty!56461 m!1217995))

(assert (=> b!1329147 m!1217987))

(assert (=> b!1329147 m!1217987))

(declare-fun m!1217997 () Bool)

(assert (=> b!1329147 m!1217997))

(check-sat (not mapNonEmpty!56461) (not b!1329154) (not b!1329147) b_and!49297 (not b!1329151) tp_is_empty!36525 (not b!1329148) (not b_next!30615) (not start!112256) (not b!1329150) (not b_lambda!23885))
(check-sat b_and!49297 (not b_next!30615))
