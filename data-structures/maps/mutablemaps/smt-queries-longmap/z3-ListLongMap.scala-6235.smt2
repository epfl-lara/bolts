; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79712 () Bool)

(assert start!79712)

(declare-fun b_free!17733 () Bool)

(declare-fun b_next!17733 () Bool)

(assert (=> start!79712 (= b_free!17733 (not b_next!17733))))

(declare-fun tp!61656 () Bool)

(declare-fun b_and!29075 () Bool)

(assert (=> start!79712 (= tp!61656 b_and!29075)))

(declare-fun b!937138 () Bool)

(declare-fun e!526271 () Bool)

(declare-fun e!526267 () Bool)

(declare-fun mapRes!32133 () Bool)

(assert (=> b!937138 (= e!526271 (and e!526267 mapRes!32133))))

(declare-fun condMapEmpty!32133 () Bool)

(declare-datatypes ((V!31953 0))(
  ( (V!31954 (val!10171 Int)) )
))
(declare-datatypes ((ValueCell!9639 0))(
  ( (ValueCellFull!9639 (v!12696 V!31953)) (EmptyCell!9639) )
))
(declare-datatypes ((array!56446 0))(
  ( (array!56447 (arr!27159 (Array (_ BitVec 32) ValueCell!9639)) (size!27619 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56446)

(declare-fun mapDefault!32133 () ValueCell!9639)

(assert (=> b!937138 (= condMapEmpty!32133 (= (arr!27159 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9639)) mapDefault!32133)))))

(declare-fun b!937139 () Bool)

(declare-fun e!526269 () Bool)

(declare-fun e!526274 () Bool)

(assert (=> b!937139 (= e!526269 e!526274)))

(declare-fun res!630903 () Bool)

(assert (=> b!937139 (=> (not res!630903) (not e!526274))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun v!791 () V!31953)

(declare-fun lt!422836 () V!31953)

(assert (=> b!937139 (= res!630903 (and (= lt!422836 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13466 0))(
  ( (tuple2!13467 (_1!6743 (_ BitVec 64)) (_2!6743 V!31953)) )
))
(declare-datatypes ((List!19274 0))(
  ( (Nil!19271) (Cons!19270 (h!20416 tuple2!13466) (t!27559 List!19274)) )
))
(declare-datatypes ((ListLongMap!12177 0))(
  ( (ListLongMap!12178 (toList!6104 List!19274)) )
))
(declare-fun lt!422833 () ListLongMap!12177)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!882 (ListLongMap!12177 (_ BitVec 64)) V!31953)

(assert (=> b!937139 (= lt!422836 (apply!882 lt!422833 k0!1099))))

(declare-fun b!937140 () Bool)

(declare-fun e!526272 () Bool)

(declare-fun tp_is_empty!20241 () Bool)

(assert (=> b!937140 (= e!526272 tp_is_empty!20241)))

(declare-fun b!937141 () Bool)

(declare-fun res!630908 () Bool)

(declare-fun e!526265 () Bool)

(assert (=> b!937141 (=> (not res!630908) (not e!526265))))

(declare-datatypes ((array!56448 0))(
  ( (array!56449 (arr!27160 (Array (_ BitVec 32) (_ BitVec 64))) (size!27620 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56448)

(assert (=> b!937141 (= res!630908 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27620 _keys!1487))))))

(declare-fun b!937142 () Bool)

(declare-datatypes ((Unit!31645 0))(
  ( (Unit!31646) )
))
(declare-fun e!526270 () Unit!31645)

(declare-fun Unit!31647 () Unit!31645)

(assert (=> b!937142 (= e!526270 Unit!31647)))

(declare-fun b!937143 () Bool)

(declare-fun res!630902 () Bool)

(assert (=> b!937143 (=> (not res!630902) (not e!526265))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!937143 (= res!630902 (and (= (size!27619 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27620 _keys!1487) (size!27619 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!937144 () Bool)

(assert (=> b!937144 (= e!526274 false)))

(declare-fun lt!422831 () Unit!31645)

(declare-fun e!526273 () Unit!31645)

(assert (=> b!937144 (= lt!422831 e!526273)))

(declare-fun c!97468 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937144 (= c!97468 (validKeyInArray!0 k0!1099))))

(declare-fun res!630904 () Bool)

(assert (=> start!79712 (=> (not res!630904) (not e!526265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79712 (= res!630904 (validMask!0 mask!1881))))

(assert (=> start!79712 e!526265))

(assert (=> start!79712 true))

(assert (=> start!79712 tp_is_empty!20241))

(declare-fun array_inv!21086 (array!56446) Bool)

(assert (=> start!79712 (and (array_inv!21086 _values!1231) e!526271)))

(assert (=> start!79712 tp!61656))

(declare-fun array_inv!21087 (array!56448) Bool)

(assert (=> start!79712 (array_inv!21087 _keys!1487)))

(declare-fun b!937145 () Bool)

(declare-fun e!526266 () Bool)

(assert (=> b!937145 (= e!526266 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!937146 () Bool)

(declare-fun lt!422837 () ListLongMap!12177)

(assert (=> b!937146 (= (apply!882 lt!422837 k0!1099) lt!422836)))

(declare-fun lt!422835 () V!31953)

(declare-fun lt!422832 () (_ BitVec 64))

(declare-fun lt!422834 () Unit!31645)

(declare-fun addApplyDifferent!430 (ListLongMap!12177 (_ BitVec 64) V!31953 (_ BitVec 64)) Unit!31645)

(assert (=> b!937146 (= lt!422834 (addApplyDifferent!430 lt!422833 lt!422832 lt!422835 k0!1099))))

(assert (=> b!937146 (not (= lt!422832 k0!1099))))

(declare-fun lt!422840 () Unit!31645)

(declare-datatypes ((List!19275 0))(
  ( (Nil!19272) (Cons!19271 (h!20417 (_ BitVec 64)) (t!27560 List!19275)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56448 (_ BitVec 64) (_ BitVec 32) List!19275) Unit!31645)

(assert (=> b!937146 (= lt!422840 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19272))))

(assert (=> b!937146 e!526266))

(declare-fun c!97467 () Bool)

(assert (=> b!937146 (= c!97467 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun lt!422839 () Unit!31645)

(declare-fun zeroValue!1173 () V!31953)

(declare-fun minValue!1173 () V!31953)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!313 (array!56448 array!56446 (_ BitVec 32) (_ BitVec 32) V!31953 V!31953 (_ BitVec 64) (_ BitVec 32) Int) Unit!31645)

(assert (=> b!937146 (= lt!422839 (lemmaListMapContainsThenArrayContainsFrom!313 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56448 (_ BitVec 32) List!19275) Bool)

(assert (=> b!937146 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19272)))

(declare-fun lt!422842 () Unit!31645)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56448 (_ BitVec 32) (_ BitVec 32)) Unit!31645)

(assert (=> b!937146 (= lt!422842 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5114 (ListLongMap!12177 (_ BitVec 64)) Bool)

(assert (=> b!937146 (contains!5114 lt!422837 k0!1099)))

(declare-fun lt!422830 () tuple2!13466)

(declare-fun +!2800 (ListLongMap!12177 tuple2!13466) ListLongMap!12177)

(assert (=> b!937146 (= lt!422837 (+!2800 lt!422833 lt!422830))))

(declare-fun lt!422838 () Unit!31645)

(declare-fun addStillContains!556 (ListLongMap!12177 (_ BitVec 64) V!31953 (_ BitVec 64)) Unit!31645)

(assert (=> b!937146 (= lt!422838 (addStillContains!556 lt!422833 lt!422832 lt!422835 k0!1099))))

(declare-fun getCurrentListMap!3293 (array!56448 array!56446 (_ BitVec 32) (_ BitVec 32) V!31953 V!31953 (_ BitVec 32) Int) ListLongMap!12177)

(assert (=> b!937146 (= (getCurrentListMap!3293 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2800 (getCurrentListMap!3293 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422830))))

(assert (=> b!937146 (= lt!422830 (tuple2!13467 lt!422832 lt!422835))))

(declare-fun get!14338 (ValueCell!9639 V!31953) V!31953)

(declare-fun dynLambda!1639 (Int (_ BitVec 64)) V!31953)

(assert (=> b!937146 (= lt!422835 (get!14338 (select (arr!27159 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1639 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422841 () Unit!31645)

(declare-fun lemmaListMapRecursiveValidKeyArray!235 (array!56448 array!56446 (_ BitVec 32) (_ BitVec 32) V!31953 V!31953 (_ BitVec 32) Int) Unit!31645)

(assert (=> b!937146 (= lt!422841 (lemmaListMapRecursiveValidKeyArray!235 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!937146 (= e!526270 lt!422834)))

(declare-fun mapNonEmpty!32133 () Bool)

(declare-fun tp!61655 () Bool)

(assert (=> mapNonEmpty!32133 (= mapRes!32133 (and tp!61655 e!526272))))

(declare-fun mapKey!32133 () (_ BitVec 32))

(declare-fun mapRest!32133 () (Array (_ BitVec 32) ValueCell!9639))

(declare-fun mapValue!32133 () ValueCell!9639)

(assert (=> mapNonEmpty!32133 (= (arr!27159 _values!1231) (store mapRest!32133 mapKey!32133 mapValue!32133))))

(declare-fun b!937147 () Bool)

(assert (=> b!937147 (= e!526273 e!526270)))

(assert (=> b!937147 (= lt!422832 (select (arr!27160 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97469 () Bool)

(assert (=> b!937147 (= c!97469 (validKeyInArray!0 lt!422832))))

(declare-fun b!937148 () Bool)

(declare-fun arrayContainsKey!0 (array!56448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!937148 (= e!526266 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!937149 () Bool)

(declare-fun res!630907 () Bool)

(assert (=> b!937149 (=> (not res!630907) (not e!526265))))

(assert (=> b!937149 (= res!630907 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19272))))

(declare-fun b!937150 () Bool)

(assert (=> b!937150 (= e!526267 tp_is_empty!20241)))

(declare-fun b!937151 () Bool)

(declare-fun Unit!31648 () Unit!31645)

(assert (=> b!937151 (= e!526273 Unit!31648)))

(declare-fun mapIsEmpty!32133 () Bool)

(assert (=> mapIsEmpty!32133 mapRes!32133))

(declare-fun b!937152 () Bool)

(declare-fun res!630906 () Bool)

(assert (=> b!937152 (=> (not res!630906) (not e!526265))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56448 (_ BitVec 32)) Bool)

(assert (=> b!937152 (= res!630906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!937153 () Bool)

(assert (=> b!937153 (= e!526265 e!526269)))

(declare-fun res!630905 () Bool)

(assert (=> b!937153 (=> (not res!630905) (not e!526269))))

(assert (=> b!937153 (= res!630905 (contains!5114 lt!422833 k0!1099))))

(assert (=> b!937153 (= lt!422833 (getCurrentListMap!3293 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!79712 res!630904) b!937143))

(assert (= (and b!937143 res!630902) b!937152))

(assert (= (and b!937152 res!630906) b!937149))

(assert (= (and b!937149 res!630907) b!937141))

(assert (= (and b!937141 res!630908) b!937153))

(assert (= (and b!937153 res!630905) b!937139))

(assert (= (and b!937139 res!630903) b!937144))

(assert (= (and b!937144 c!97468) b!937147))

(assert (= (and b!937144 (not c!97468)) b!937151))

(assert (= (and b!937147 c!97469) b!937146))

(assert (= (and b!937147 (not c!97469)) b!937142))

(assert (= (and b!937146 c!97467) b!937148))

(assert (= (and b!937146 (not c!97467)) b!937145))

(assert (= (and b!937138 condMapEmpty!32133) mapIsEmpty!32133))

(assert (= (and b!937138 (not condMapEmpty!32133)) mapNonEmpty!32133))

(get-info :version)

(assert (= (and mapNonEmpty!32133 ((_ is ValueCellFull!9639) mapValue!32133)) b!937140))

(assert (= (and b!937138 ((_ is ValueCellFull!9639) mapDefault!32133)) b!937150))

(assert (= start!79712 b!937138))

(declare-fun b_lambda!14169 () Bool)

(assert (=> (not b_lambda!14169) (not b!937146)))

(declare-fun t!27558 () Bool)

(declare-fun tb!6135 () Bool)

(assert (=> (and start!79712 (= defaultEntry!1235 defaultEntry!1235) t!27558) tb!6135))

(declare-fun result!12095 () Bool)

(assert (=> tb!6135 (= result!12095 tp_is_empty!20241)))

(assert (=> b!937146 t!27558))

(declare-fun b_and!29077 () Bool)

(assert (= b_and!29075 (and (=> t!27558 result!12095) b_and!29077)))

(declare-fun m!871983 () Bool)

(assert (=> b!937146 m!871983))

(declare-fun m!871985 () Bool)

(assert (=> b!937146 m!871985))

(declare-fun m!871987 () Bool)

(assert (=> b!937146 m!871987))

(declare-fun m!871989 () Bool)

(assert (=> b!937146 m!871989))

(declare-fun m!871991 () Bool)

(assert (=> b!937146 m!871991))

(declare-fun m!871993 () Bool)

(assert (=> b!937146 m!871993))

(declare-fun m!871995 () Bool)

(assert (=> b!937146 m!871995))

(assert (=> b!937146 m!871991))

(assert (=> b!937146 m!871993))

(declare-fun m!871997 () Bool)

(assert (=> b!937146 m!871997))

(declare-fun m!871999 () Bool)

(assert (=> b!937146 m!871999))

(declare-fun m!872001 () Bool)

(assert (=> b!937146 m!872001))

(declare-fun m!872003 () Bool)

(assert (=> b!937146 m!872003))

(declare-fun m!872005 () Bool)

(assert (=> b!937146 m!872005))

(declare-fun m!872007 () Bool)

(assert (=> b!937146 m!872007))

(declare-fun m!872009 () Bool)

(assert (=> b!937146 m!872009))

(declare-fun m!872011 () Bool)

(assert (=> b!937146 m!872011))

(assert (=> b!937146 m!872007))

(declare-fun m!872013 () Bool)

(assert (=> b!937146 m!872013))

(declare-fun m!872015 () Bool)

(assert (=> b!937153 m!872015))

(declare-fun m!872017 () Bool)

(assert (=> b!937153 m!872017))

(declare-fun m!872019 () Bool)

(assert (=> b!937139 m!872019))

(declare-fun m!872021 () Bool)

(assert (=> mapNonEmpty!32133 m!872021))

(declare-fun m!872023 () Bool)

(assert (=> b!937152 m!872023))

(declare-fun m!872025 () Bool)

(assert (=> b!937149 m!872025))

(declare-fun m!872027 () Bool)

(assert (=> b!937147 m!872027))

(declare-fun m!872029 () Bool)

(assert (=> b!937147 m!872029))

(declare-fun m!872031 () Bool)

(assert (=> start!79712 m!872031))

(declare-fun m!872033 () Bool)

(assert (=> start!79712 m!872033))

(declare-fun m!872035 () Bool)

(assert (=> start!79712 m!872035))

(declare-fun m!872037 () Bool)

(assert (=> b!937144 m!872037))

(declare-fun m!872039 () Bool)

(assert (=> b!937148 m!872039))

(check-sat b_and!29077 (not b!937152) tp_is_empty!20241 (not start!79712) (not b!937153) (not b!937139) (not b!937148) (not b!937147) (not b!937146) (not b!937149) (not mapNonEmpty!32133) (not b!937144) (not b_next!17733) (not b_lambda!14169))
(check-sat b_and!29077 (not b_next!17733))
