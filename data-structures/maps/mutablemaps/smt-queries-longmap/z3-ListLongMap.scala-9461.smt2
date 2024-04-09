; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112412 () Bool)

(assert start!112412)

(declare-fun b_free!30771 () Bool)

(declare-fun b_next!30771 () Bool)

(assert (=> start!112412 (= b_free!30771 (not b_next!30771))))

(declare-fun tp!107950 () Bool)

(declare-fun b_and!49607 () Bool)

(assert (=> start!112412 (= tp!107950 b_and!49607)))

(declare-fun b!1332110 () Bool)

(declare-fun res!884088 () Bool)

(declare-fun e!758959 () Bool)

(assert (=> b!1332110 (=> (not res!884088) (not e!758959))))

(declare-datatypes ((array!90211 0))(
  ( (array!90212 (arr!43567 (Array (_ BitVec 32) (_ BitVec 64))) (size!44118 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90211)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1332110 (= res!884088 (validKeyInArray!0 (select (arr!43567 _keys!1590) from!1980)))))

(declare-fun b!1332111 () Bool)

(declare-fun res!884089 () Bool)

(assert (=> b!1332111 (=> (not res!884089) (not e!758959))))

(declare-fun k0!1153 () (_ BitVec 64))

(assert (=> b!1332111 (= res!884089 (not (= (select (arr!43567 _keys!1590) from!1980) k0!1153)))))

(declare-fun mapIsEmpty!56695 () Bool)

(declare-fun mapRes!56695 () Bool)

(assert (=> mapIsEmpty!56695 mapRes!56695))

(declare-fun b!1332112 () Bool)

(declare-fun e!758955 () Bool)

(declare-fun tp_is_empty!36681 () Bool)

(assert (=> b!1332112 (= e!758955 tp_is_empty!36681)))

(declare-fun b!1332113 () Bool)

(declare-fun res!884091 () Bool)

(assert (=> b!1332113 (=> (not res!884091) (not e!758959))))

(declare-datatypes ((List!31057 0))(
  ( (Nil!31054) (Cons!31053 (h!32262 (_ BitVec 64)) (t!45248 List!31057)) )
))
(declare-fun arrayNoDuplicates!0 (array!90211 (_ BitVec 32) List!31057) Bool)

(assert (=> b!1332113 (= res!884091 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31054))))

(declare-fun b!1332114 () Bool)

(declare-fun res!884093 () Bool)

(assert (=> b!1332114 (=> (not res!884093) (not e!758959))))

(declare-datatypes ((V!54011 0))(
  ( (V!54012 (val!18415 Int)) )
))
(declare-datatypes ((ValueCell!17442 0))(
  ( (ValueCellFull!17442 (v!21050 V!54011)) (EmptyCell!17442) )
))
(declare-datatypes ((array!90213 0))(
  ( (array!90214 (arr!43568 (Array (_ BitVec 32) ValueCell!17442)) (size!44119 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90213)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54011)

(declare-fun zeroValue!1262 () V!54011)

(declare-datatypes ((tuple2!23878 0))(
  ( (tuple2!23879 (_1!11949 (_ BitVec 64)) (_2!11949 V!54011)) )
))
(declare-datatypes ((List!31058 0))(
  ( (Nil!31055) (Cons!31054 (h!32263 tuple2!23878) (t!45249 List!31058)) )
))
(declare-datatypes ((ListLongMap!21547 0))(
  ( (ListLongMap!21548 (toList!10789 List!31058)) )
))
(declare-fun contains!8889 (ListLongMap!21547 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5711 (array!90211 array!90213 (_ BitVec 32) (_ BitVec 32) V!54011 V!54011 (_ BitVec 32) Int) ListLongMap!21547)

(assert (=> b!1332114 (= res!884093 (contains!8889 (getCurrentListMap!5711 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1332116 () Bool)

(declare-fun res!884092 () Bool)

(assert (=> b!1332116 (=> (not res!884092) (not e!758959))))

(assert (=> b!1332116 (= res!884092 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44118 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1332117 () Bool)

(declare-fun res!884087 () Bool)

(assert (=> b!1332117 (=> (not res!884087) (not e!758959))))

(assert (=> b!1332117 (= res!884087 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1332118 () Bool)

(declare-fun e!758956 () Bool)

(assert (=> b!1332118 (= e!758956 tp_is_empty!36681)))

(declare-fun mapNonEmpty!56695 () Bool)

(declare-fun tp!107951 () Bool)

(assert (=> mapNonEmpty!56695 (= mapRes!56695 (and tp!107951 e!758956))))

(declare-fun mapRest!56695 () (Array (_ BitVec 32) ValueCell!17442))

(declare-fun mapKey!56695 () (_ BitVec 32))

(declare-fun mapValue!56695 () ValueCell!17442)

(assert (=> mapNonEmpty!56695 (= (arr!43568 _values!1320) (store mapRest!56695 mapKey!56695 mapValue!56695))))

(declare-fun b!1332119 () Bool)

(declare-fun res!884086 () Bool)

(assert (=> b!1332119 (=> (not res!884086) (not e!758959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90211 (_ BitVec 32)) Bool)

(assert (=> b!1332119 (= res!884086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1332120 () Bool)

(assert (=> b!1332120 (= e!758959 (not true))))

(declare-fun lt!591834 () ListLongMap!21547)

(declare-fun +!4677 (ListLongMap!21547 tuple2!23878) ListLongMap!21547)

(assert (=> b!1332120 (contains!8889 (+!4677 lt!591834 (tuple2!23879 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)) k0!1153)))

(declare-datatypes ((Unit!43781 0))(
  ( (Unit!43782) )
))
(declare-fun lt!591831 () Unit!43781)

(declare-fun addStillContains!1187 (ListLongMap!21547 (_ BitVec 64) V!54011 (_ BitVec 64)) Unit!43781)

(assert (=> b!1332120 (= lt!591831 (addStillContains!1187 lt!591834 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 k0!1153))))

(assert (=> b!1332120 (contains!8889 lt!591834 k0!1153)))

(declare-fun lt!591836 () Unit!43781)

(declare-fun lt!591832 () V!54011)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!282 ((_ BitVec 64) (_ BitVec 64) V!54011 ListLongMap!21547) Unit!43781)

(assert (=> b!1332120 (= lt!591836 (lemmaInListMapAfterAddingDiffThenInBefore!282 k0!1153 (select (arr!43567 _keys!1590) from!1980) lt!591832 lt!591834))))

(declare-fun lt!591835 () ListLongMap!21547)

(assert (=> b!1332120 (contains!8889 lt!591835 k0!1153)))

(declare-fun lt!591833 () Unit!43781)

(assert (=> b!1332120 (= lt!591833 (lemmaInListMapAfterAddingDiffThenInBefore!282 k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262 lt!591835))))

(assert (=> b!1332120 (= lt!591835 (+!4677 lt!591834 (tuple2!23879 (select (arr!43567 _keys!1590) from!1980) lt!591832)))))

(declare-fun get!22019 (ValueCell!17442 V!54011) V!54011)

(declare-fun dynLambda!3714 (Int (_ BitVec 64)) V!54011)

(assert (=> b!1332120 (= lt!591832 (get!22019 (select (arr!43568 _values!1320) from!1980) (dynLambda!3714 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6395 (array!90211 array!90213 (_ BitVec 32) (_ BitVec 32) V!54011 V!54011 (_ BitVec 32) Int) ListLongMap!21547)

(assert (=> b!1332120 (= lt!591834 (getCurrentListMapNoExtraKeys!6395 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1332121 () Bool)

(declare-fun res!884085 () Bool)

(assert (=> b!1332121 (=> (not res!884085) (not e!758959))))

(assert (=> b!1332121 (= res!884085 (and (= (size!44119 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44118 _keys!1590) (size!44119 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1332115 () Bool)

(declare-fun e!758958 () Bool)

(assert (=> b!1332115 (= e!758958 (and e!758955 mapRes!56695))))

(declare-fun condMapEmpty!56695 () Bool)

(declare-fun mapDefault!56695 () ValueCell!17442)

(assert (=> b!1332115 (= condMapEmpty!56695 (= (arr!43568 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17442)) mapDefault!56695)))))

(declare-fun res!884090 () Bool)

(assert (=> start!112412 (=> (not res!884090) (not e!758959))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112412 (= res!884090 (validMask!0 mask!1998))))

(assert (=> start!112412 e!758959))

(declare-fun array_inv!32813 (array!90213) Bool)

(assert (=> start!112412 (and (array_inv!32813 _values!1320) e!758958)))

(assert (=> start!112412 true))

(declare-fun array_inv!32814 (array!90211) Bool)

(assert (=> start!112412 (array_inv!32814 _keys!1590)))

(assert (=> start!112412 tp!107950))

(assert (=> start!112412 tp_is_empty!36681))

(assert (= (and start!112412 res!884090) b!1332121))

(assert (= (and b!1332121 res!884085) b!1332119))

(assert (= (and b!1332119 res!884086) b!1332113))

(assert (= (and b!1332113 res!884091) b!1332116))

(assert (= (and b!1332116 res!884092) b!1332114))

(assert (= (and b!1332114 res!884093) b!1332111))

(assert (= (and b!1332111 res!884089) b!1332110))

(assert (= (and b!1332110 res!884088) b!1332117))

(assert (= (and b!1332117 res!884087) b!1332120))

(assert (= (and b!1332115 condMapEmpty!56695) mapIsEmpty!56695))

(assert (= (and b!1332115 (not condMapEmpty!56695)) mapNonEmpty!56695))

(get-info :version)

(assert (= (and mapNonEmpty!56695 ((_ is ValueCellFull!17442) mapValue!56695)) b!1332118))

(assert (= (and b!1332115 ((_ is ValueCellFull!17442) mapDefault!56695)) b!1332112))

(assert (= start!112412 b!1332115))

(declare-fun b_lambda!24041 () Bool)

(assert (=> (not b_lambda!24041) (not b!1332120)))

(declare-fun t!45247 () Bool)

(declare-fun tb!11995 () Bool)

(assert (=> (and start!112412 (= defaultEntry!1323 defaultEntry!1323) t!45247) tb!11995))

(declare-fun result!25053 () Bool)

(assert (=> tb!11995 (= result!25053 tp_is_empty!36681)))

(assert (=> b!1332120 t!45247))

(declare-fun b_and!49609 () Bool)

(assert (= b_and!49607 (and (=> t!45247 result!25053) b_and!49609)))

(declare-fun m!1220927 () Bool)

(assert (=> b!1332111 m!1220927))

(declare-fun m!1220929 () Bool)

(assert (=> b!1332113 m!1220929))

(declare-fun m!1220931 () Bool)

(assert (=> b!1332114 m!1220931))

(assert (=> b!1332114 m!1220931))

(declare-fun m!1220933 () Bool)

(assert (=> b!1332114 m!1220933))

(declare-fun m!1220935 () Bool)

(assert (=> b!1332120 m!1220935))

(declare-fun m!1220937 () Bool)

(assert (=> b!1332120 m!1220937))

(declare-fun m!1220939 () Bool)

(assert (=> b!1332120 m!1220939))

(declare-fun m!1220941 () Bool)

(assert (=> b!1332120 m!1220941))

(assert (=> b!1332120 m!1220939))

(declare-fun m!1220943 () Bool)

(assert (=> b!1332120 m!1220943))

(assert (=> b!1332120 m!1220941))

(declare-fun m!1220945 () Bool)

(assert (=> b!1332120 m!1220945))

(assert (=> b!1332120 m!1220927))

(assert (=> b!1332120 m!1220927))

(declare-fun m!1220947 () Bool)

(assert (=> b!1332120 m!1220947))

(assert (=> b!1332120 m!1220945))

(declare-fun m!1220949 () Bool)

(assert (=> b!1332120 m!1220949))

(declare-fun m!1220951 () Bool)

(assert (=> b!1332120 m!1220951))

(declare-fun m!1220953 () Bool)

(assert (=> b!1332120 m!1220953))

(declare-fun m!1220955 () Bool)

(assert (=> b!1332120 m!1220955))

(declare-fun m!1220957 () Bool)

(assert (=> b!1332120 m!1220957))

(assert (=> b!1332110 m!1220927))

(assert (=> b!1332110 m!1220927))

(declare-fun m!1220959 () Bool)

(assert (=> b!1332110 m!1220959))

(declare-fun m!1220961 () Bool)

(assert (=> mapNonEmpty!56695 m!1220961))

(declare-fun m!1220963 () Bool)

(assert (=> b!1332119 m!1220963))

(declare-fun m!1220965 () Bool)

(assert (=> start!112412 m!1220965))

(declare-fun m!1220967 () Bool)

(assert (=> start!112412 m!1220967))

(declare-fun m!1220969 () Bool)

(assert (=> start!112412 m!1220969))

(check-sat (not b!1332113) tp_is_empty!36681 (not mapNonEmpty!56695) (not b!1332120) (not b!1332119) (not b_next!30771) b_and!49609 (not b!1332110) (not b_lambda!24041) (not start!112412) (not b!1332114))
(check-sat b_and!49609 (not b_next!30771))
