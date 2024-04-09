; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78918 () Bool)

(assert start!78918)

(declare-fun b_free!17103 () Bool)

(declare-fun b_next!17103 () Bool)

(assert (=> start!78918 (= b_free!17103 (not b_next!17103))))

(declare-fun tp!59750 () Bool)

(declare-fun b_and!27961 () Bool)

(assert (=> start!78918 (= tp!59750 b_and!27961)))

(declare-fun b!921992 () Bool)

(declare-fun res!621868 () Bool)

(declare-fun e!517374 () Bool)

(assert (=> b!921992 (=> (not res!621868) (not e!517374))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((V!31113 0))(
  ( (V!31114 (val!9856 Int)) )
))
(declare-fun v!791 () V!31113)

(declare-datatypes ((tuple2!12920 0))(
  ( (tuple2!12921 (_1!6470 (_ BitVec 64)) (_2!6470 V!31113)) )
))
(declare-datatypes ((List!18759 0))(
  ( (Nil!18756) (Cons!18755 (h!19901 tuple2!12920) (t!26600 List!18759)) )
))
(declare-datatypes ((ListLongMap!11631 0))(
  ( (ListLongMap!11632 (toList!5831 List!18759)) )
))
(declare-fun lt!414015 () ListLongMap!11631)

(declare-fun apply!637 (ListLongMap!11631 (_ BitVec 64)) V!31113)

(assert (=> b!921992 (= res!621868 (= (apply!637 lt!414015 k0!1099) v!791))))

(declare-fun b!921993 () Bool)

(declare-fun e!517376 () Bool)

(assert (=> b!921993 (= e!517376 e!517374)))

(declare-fun res!621871 () Bool)

(assert (=> b!921993 (=> (not res!621871) (not e!517374))))

(declare-fun contains!4858 (ListLongMap!11631 (_ BitVec 64)) Bool)

(assert (=> b!921993 (= res!621871 (contains!4858 lt!414015 k0!1099))))

(declare-datatypes ((array!55210 0))(
  ( (array!55211 (arr!26546 (Array (_ BitVec 32) (_ BitVec 64))) (size!27006 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55210)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9324 0))(
  ( (ValueCellFull!9324 (v!12374 V!31113)) (EmptyCell!9324) )
))
(declare-datatypes ((array!55212 0))(
  ( (array!55213 (arr!26547 (Array (_ BitVec 32) ValueCell!9324)) (size!27007 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55212)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31113)

(declare-fun minValue!1173 () V!31113)

(declare-fun getCurrentListMap!3052 (array!55210 array!55212 (_ BitVec 32) (_ BitVec 32) V!31113 V!31113 (_ BitVec 32) Int) ListLongMap!11631)

(assert (=> b!921993 (= lt!414015 (getCurrentListMap!3052 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921994 () Bool)

(declare-fun e!517375 () Bool)

(assert (=> b!921994 (= e!517375 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921995 () Bool)

(declare-fun e!517373 () Bool)

(declare-fun tp_is_empty!19611 () Bool)

(assert (=> b!921995 (= e!517373 tp_is_empty!19611)))

(declare-fun res!621875 () Bool)

(assert (=> start!78918 (=> (not res!621875) (not e!517376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78918 (= res!621875 (validMask!0 mask!1881))))

(assert (=> start!78918 e!517376))

(assert (=> start!78918 true))

(assert (=> start!78918 tp_is_empty!19611))

(declare-fun e!517377 () Bool)

(declare-fun array_inv!20666 (array!55212) Bool)

(assert (=> start!78918 (and (array_inv!20666 _values!1231) e!517377)))

(assert (=> start!78918 tp!59750))

(declare-fun array_inv!20667 (array!55210) Bool)

(assert (=> start!78918 (array_inv!20667 _keys!1487)))

(declare-fun b!921996 () Bool)

(declare-fun e!517378 () Bool)

(assert (=> b!921996 (= e!517378 (not true))))

(declare-fun lt!414011 () (_ BitVec 64))

(assert (=> b!921996 (not (= lt!414011 k0!1099))))

(declare-datatypes ((Unit!31097 0))(
  ( (Unit!31098) )
))
(declare-fun lt!414016 () Unit!31097)

(declare-datatypes ((List!18760 0))(
  ( (Nil!18757) (Cons!18756 (h!19902 (_ BitVec 64)) (t!26601 List!18760)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55210 (_ BitVec 64) (_ BitVec 32) List!18760) Unit!31097)

(assert (=> b!921996 (= lt!414016 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18757))))

(assert (=> b!921996 e!517375))

(declare-fun c!96074 () Bool)

(assert (=> b!921996 (= c!96074 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414010 () Unit!31097)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!191 (array!55210 array!55212 (_ BitVec 32) (_ BitVec 32) V!31113 V!31113 (_ BitVec 64) (_ BitVec 32) Int) Unit!31097)

(assert (=> b!921996 (= lt!414010 (lemmaListMapContainsThenArrayContainsFrom!191 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55210 (_ BitVec 32) List!18760) Bool)

(assert (=> b!921996 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18757)))

(declare-fun lt!414018 () Unit!31097)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55210 (_ BitVec 32) (_ BitVec 32)) Unit!31097)

(assert (=> b!921996 (= lt!414018 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414012 () tuple2!12920)

(declare-fun +!2645 (ListLongMap!11631 tuple2!12920) ListLongMap!11631)

(assert (=> b!921996 (contains!4858 (+!2645 lt!414015 lt!414012) k0!1099)))

(declare-fun lt!414014 () Unit!31097)

(declare-fun lt!414017 () V!31113)

(declare-fun addStillContains!407 (ListLongMap!11631 (_ BitVec 64) V!31113 (_ BitVec 64)) Unit!31097)

(assert (=> b!921996 (= lt!414014 (addStillContains!407 lt!414015 lt!414011 lt!414017 k0!1099))))

(assert (=> b!921996 (= (getCurrentListMap!3052 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2645 (getCurrentListMap!3052 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414012))))

(assert (=> b!921996 (= lt!414012 (tuple2!12921 lt!414011 lt!414017))))

(declare-fun get!13958 (ValueCell!9324 V!31113) V!31113)

(declare-fun dynLambda!1484 (Int (_ BitVec 64)) V!31113)

(assert (=> b!921996 (= lt!414017 (get!13958 (select (arr!26547 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1484 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414013 () Unit!31097)

(declare-fun lemmaListMapRecursiveValidKeyArray!80 (array!55210 array!55212 (_ BitVec 32) (_ BitVec 32) V!31113 V!31113 (_ BitVec 32) Int) Unit!31097)

(assert (=> b!921996 (= lt!414013 (lemmaListMapRecursiveValidKeyArray!80 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!921997 () Bool)

(declare-fun res!621870 () Bool)

(assert (=> b!921997 (=> (not res!621870) (not e!517376))))

(assert (=> b!921997 (= res!621870 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18757))))

(declare-fun mapNonEmpty!31173 () Bool)

(declare-fun mapRes!31173 () Bool)

(declare-fun tp!59751 () Bool)

(assert (=> mapNonEmpty!31173 (= mapRes!31173 (and tp!59751 e!517373))))

(declare-fun mapRest!31173 () (Array (_ BitVec 32) ValueCell!9324))

(declare-fun mapKey!31173 () (_ BitVec 32))

(declare-fun mapValue!31173 () ValueCell!9324)

(assert (=> mapNonEmpty!31173 (= (arr!26547 _values!1231) (store mapRest!31173 mapKey!31173 mapValue!31173))))

(declare-fun b!921998 () Bool)

(declare-fun res!621874 () Bool)

(assert (=> b!921998 (=> (not res!621874) (not e!517376))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55210 (_ BitVec 32)) Bool)

(assert (=> b!921998 (= res!621874 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31173 () Bool)

(assert (=> mapIsEmpty!31173 mapRes!31173))

(declare-fun b!921999 () Bool)

(declare-fun res!621873 () Bool)

(assert (=> b!921999 (=> (not res!621873) (not e!517376))))

(assert (=> b!921999 (= res!621873 (and (= (size!27007 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27006 _keys!1487) (size!27007 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922000 () Bool)

(declare-fun res!621867 () Bool)

(assert (=> b!922000 (=> (not res!621867) (not e!517376))))

(assert (=> b!922000 (= res!621867 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27006 _keys!1487))))))

(declare-fun b!922001 () Bool)

(declare-fun res!621866 () Bool)

(assert (=> b!922001 (=> (not res!621866) (not e!517374))))

(assert (=> b!922001 (= res!621866 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922002 () Bool)

(declare-fun res!621872 () Bool)

(assert (=> b!922002 (=> (not res!621872) (not e!517374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922002 (= res!621872 (validKeyInArray!0 k0!1099))))

(declare-fun b!922003 () Bool)

(declare-fun e!517380 () Bool)

(assert (=> b!922003 (= e!517380 tp_is_empty!19611)))

(declare-fun b!922004 () Bool)

(assert (=> b!922004 (= e!517374 e!517378)))

(declare-fun res!621869 () Bool)

(assert (=> b!922004 (=> (not res!621869) (not e!517378))))

(assert (=> b!922004 (= res!621869 (validKeyInArray!0 lt!414011))))

(assert (=> b!922004 (= lt!414011 (select (arr!26546 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922005 () Bool)

(assert (=> b!922005 (= e!517377 (and e!517380 mapRes!31173))))

(declare-fun condMapEmpty!31173 () Bool)

(declare-fun mapDefault!31173 () ValueCell!9324)

(assert (=> b!922005 (= condMapEmpty!31173 (= (arr!26547 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9324)) mapDefault!31173)))))

(declare-fun b!922006 () Bool)

(declare-fun arrayContainsKey!0 (array!55210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922006 (= e!517375 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(assert (= (and start!78918 res!621875) b!921999))

(assert (= (and b!921999 res!621873) b!921998))

(assert (= (and b!921998 res!621874) b!921997))

(assert (= (and b!921997 res!621870) b!922000))

(assert (= (and b!922000 res!621867) b!921993))

(assert (= (and b!921993 res!621871) b!921992))

(assert (= (and b!921992 res!621868) b!922001))

(assert (= (and b!922001 res!621866) b!922002))

(assert (= (and b!922002 res!621872) b!922004))

(assert (= (and b!922004 res!621869) b!921996))

(assert (= (and b!921996 c!96074) b!922006))

(assert (= (and b!921996 (not c!96074)) b!921994))

(assert (= (and b!922005 condMapEmpty!31173) mapIsEmpty!31173))

(assert (= (and b!922005 (not condMapEmpty!31173)) mapNonEmpty!31173))

(get-info :version)

(assert (= (and mapNonEmpty!31173 ((_ is ValueCellFull!9324) mapValue!31173)) b!921995))

(assert (= (and b!922005 ((_ is ValueCellFull!9324) mapDefault!31173)) b!922003))

(assert (= start!78918 b!922005))

(declare-fun b_lambda!13635 () Bool)

(assert (=> (not b_lambda!13635) (not b!921996)))

(declare-fun t!26599 () Bool)

(declare-fun tb!5691 () Bool)

(assert (=> (and start!78918 (= defaultEntry!1235 defaultEntry!1235) t!26599) tb!5691))

(declare-fun result!11197 () Bool)

(assert (=> tb!5691 (= result!11197 tp_is_empty!19611)))

(assert (=> b!921996 t!26599))

(declare-fun b_and!27963 () Bool)

(assert (= b_and!27961 (and (=> t!26599 result!11197) b_and!27963)))

(declare-fun m!856123 () Bool)

(assert (=> mapNonEmpty!31173 m!856123))

(declare-fun m!856125 () Bool)

(assert (=> b!921997 m!856125))

(declare-fun m!856127 () Bool)

(assert (=> b!922004 m!856127))

(declare-fun m!856129 () Bool)

(assert (=> b!922004 m!856129))

(declare-fun m!856131 () Bool)

(assert (=> b!921992 m!856131))

(declare-fun m!856133 () Bool)

(assert (=> b!922002 m!856133))

(declare-fun m!856135 () Bool)

(assert (=> start!78918 m!856135))

(declare-fun m!856137 () Bool)

(assert (=> start!78918 m!856137))

(declare-fun m!856139 () Bool)

(assert (=> start!78918 m!856139))

(declare-fun m!856141 () Bool)

(assert (=> b!921998 m!856141))

(declare-fun m!856143 () Bool)

(assert (=> b!922006 m!856143))

(declare-fun m!856145 () Bool)

(assert (=> b!921996 m!856145))

(declare-fun m!856147 () Bool)

(assert (=> b!921996 m!856147))

(declare-fun m!856149 () Bool)

(assert (=> b!921996 m!856149))

(declare-fun m!856151 () Bool)

(assert (=> b!921996 m!856151))

(declare-fun m!856153 () Bool)

(assert (=> b!921996 m!856153))

(declare-fun m!856155 () Bool)

(assert (=> b!921996 m!856155))

(assert (=> b!921996 m!856149))

(assert (=> b!921996 m!856155))

(declare-fun m!856157 () Bool)

(assert (=> b!921996 m!856157))

(declare-fun m!856159 () Bool)

(assert (=> b!921996 m!856159))

(declare-fun m!856161 () Bool)

(assert (=> b!921996 m!856161))

(declare-fun m!856163 () Bool)

(assert (=> b!921996 m!856163))

(declare-fun m!856165 () Bool)

(assert (=> b!921996 m!856165))

(declare-fun m!856167 () Bool)

(assert (=> b!921996 m!856167))

(declare-fun m!856169 () Bool)

(assert (=> b!921996 m!856169))

(assert (=> b!921996 m!856151))

(assert (=> b!921996 m!856167))

(declare-fun m!856171 () Bool)

(assert (=> b!921996 m!856171))

(declare-fun m!856173 () Bool)

(assert (=> b!921993 m!856173))

(declare-fun m!856175 () Bool)

(assert (=> b!921993 m!856175))

(check-sat (not b!922006) (not b!922002) (not mapNonEmpty!31173) tp_is_empty!19611 (not b_lambda!13635) (not b!921992) (not b!921997) (not b!921998) (not b_next!17103) (not b!921996) (not b!922004) b_and!27963 (not start!78918) (not b!921993))
(check-sat b_and!27963 (not b_next!17103))
