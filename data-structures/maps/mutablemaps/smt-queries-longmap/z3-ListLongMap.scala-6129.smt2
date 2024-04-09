; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78912 () Bool)

(assert start!78912)

(declare-fun b_free!17097 () Bool)

(declare-fun b_next!17097 () Bool)

(assert (=> start!78912 (= b_free!17097 (not b_next!17097))))

(declare-fun tp!59733 () Bool)

(declare-fun b_and!27949 () Bool)

(assert (=> start!78912 (= tp!59733 b_and!27949)))

(declare-fun mapIsEmpty!31164 () Bool)

(declare-fun mapRes!31164 () Bool)

(assert (=> mapIsEmpty!31164 mapRes!31164))

(declare-fun b!921851 () Bool)

(declare-fun res!621783 () Bool)

(declare-fun e!517304 () Bool)

(assert (=> b!921851 (=> (not res!621783) (not e!517304))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921851 (= res!621783 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921852 () Bool)

(declare-fun res!621782 () Bool)

(declare-fun e!517308 () Bool)

(assert (=> b!921852 (=> (not res!621782) (not e!517308))))

(declare-datatypes ((array!55198 0))(
  ( (array!55199 (arr!26540 (Array (_ BitVec 32) (_ BitVec 64))) (size!27000 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55198)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((V!31105 0))(
  ( (V!31106 (val!9853 Int)) )
))
(declare-datatypes ((ValueCell!9321 0))(
  ( (ValueCellFull!9321 (v!12371 V!31105)) (EmptyCell!9321) )
))
(declare-datatypes ((array!55200 0))(
  ( (array!55201 (arr!26541 (Array (_ BitVec 32) ValueCell!9321)) (size!27001 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55200)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!921852 (= res!621782 (and (= (size!27001 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27000 _keys!1487) (size!27001 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!921853 () Bool)

(declare-fun res!621779 () Bool)

(assert (=> b!921853 (=> (not res!621779) (not e!517308))))

(declare-datatypes ((List!18755 0))(
  ( (Nil!18752) (Cons!18751 (h!19897 (_ BitVec 64)) (t!26590 List!18755)) )
))
(declare-fun arrayNoDuplicates!0 (array!55198 (_ BitVec 32) List!18755) Bool)

(assert (=> b!921853 (= res!621779 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18752))))

(declare-fun b!921854 () Bool)

(declare-fun res!621780 () Bool)

(assert (=> b!921854 (=> (not res!621780) (not e!517304))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31105)

(declare-datatypes ((tuple2!12916 0))(
  ( (tuple2!12917 (_1!6468 (_ BitVec 64)) (_2!6468 V!31105)) )
))
(declare-datatypes ((List!18756 0))(
  ( (Nil!18753) (Cons!18752 (h!19898 tuple2!12916) (t!26591 List!18756)) )
))
(declare-datatypes ((ListLongMap!11627 0))(
  ( (ListLongMap!11628 (toList!5829 List!18756)) )
))
(declare-fun lt!413936 () ListLongMap!11627)

(declare-fun apply!635 (ListLongMap!11627 (_ BitVec 64)) V!31105)

(assert (=> b!921854 (= res!621780 (= (apply!635 lt!413936 k0!1099) v!791))))

(declare-fun b!921855 () Bool)

(declare-fun e!517305 () Bool)

(assert (=> b!921855 (= e!517305 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31164 () Bool)

(declare-fun tp!59732 () Bool)

(declare-fun e!517303 () Bool)

(assert (=> mapNonEmpty!31164 (= mapRes!31164 (and tp!59732 e!517303))))

(declare-fun mapRest!31164 () (Array (_ BitVec 32) ValueCell!9321))

(declare-fun mapKey!31164 () (_ BitVec 32))

(declare-fun mapValue!31164 () ValueCell!9321)

(assert (=> mapNonEmpty!31164 (= (arr!26541 _values!1231) (store mapRest!31164 mapKey!31164 mapValue!31164))))

(declare-fun b!921856 () Bool)

(declare-fun res!621784 () Bool)

(assert (=> b!921856 (=> (not res!621784) (not e!517308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55198 (_ BitVec 32)) Bool)

(assert (=> b!921856 (= res!621784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!621776 () Bool)

(assert (=> start!78912 (=> (not res!621776) (not e!517308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78912 (= res!621776 (validMask!0 mask!1881))))

(assert (=> start!78912 e!517308))

(assert (=> start!78912 true))

(declare-fun tp_is_empty!19605 () Bool)

(assert (=> start!78912 tp_is_empty!19605))

(declare-fun e!517307 () Bool)

(declare-fun array_inv!20662 (array!55200) Bool)

(assert (=> start!78912 (and (array_inv!20662 _values!1231) e!517307)))

(assert (=> start!78912 tp!59733))

(declare-fun array_inv!20663 (array!55198) Bool)

(assert (=> start!78912 (array_inv!20663 _keys!1487)))

(declare-fun b!921857 () Bool)

(declare-fun e!517301 () Bool)

(assert (=> b!921857 (= e!517301 tp_is_empty!19605)))

(declare-fun b!921858 () Bool)

(declare-fun arrayContainsKey!0 (array!55198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921858 (= e!517305 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!921859 () Bool)

(declare-fun res!621778 () Bool)

(assert (=> b!921859 (=> (not res!621778) (not e!517308))))

(assert (=> b!921859 (= res!621778 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27000 _keys!1487))))))

(declare-fun b!921860 () Bool)

(declare-fun e!517302 () Bool)

(assert (=> b!921860 (= e!517302 (not true))))

(declare-fun lt!413929 () (_ BitVec 64))

(assert (=> b!921860 (not (= lt!413929 k0!1099))))

(declare-datatypes ((Unit!31093 0))(
  ( (Unit!31094) )
))
(declare-fun lt!413935 () Unit!31093)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55198 (_ BitVec 64) (_ BitVec 32) List!18755) Unit!31093)

(assert (=> b!921860 (= lt!413935 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18752))))

(assert (=> b!921860 e!517305))

(declare-fun c!96065 () Bool)

(assert (=> b!921860 (= c!96065 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!413931 () Unit!31093)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31105)

(declare-fun minValue!1173 () V!31105)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!189 (array!55198 array!55200 (_ BitVec 32) (_ BitVec 32) V!31105 V!31105 (_ BitVec 64) (_ BitVec 32) Int) Unit!31093)

(assert (=> b!921860 (= lt!413931 (lemmaListMapContainsThenArrayContainsFrom!189 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!921860 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18752)))

(declare-fun lt!413930 () Unit!31093)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55198 (_ BitVec 32) (_ BitVec 32)) Unit!31093)

(assert (=> b!921860 (= lt!413930 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413937 () tuple2!12916)

(declare-fun contains!4856 (ListLongMap!11627 (_ BitVec 64)) Bool)

(declare-fun +!2643 (ListLongMap!11627 tuple2!12916) ListLongMap!11627)

(assert (=> b!921860 (contains!4856 (+!2643 lt!413936 lt!413937) k0!1099)))

(declare-fun lt!413934 () V!31105)

(declare-fun lt!413933 () Unit!31093)

(declare-fun addStillContains!405 (ListLongMap!11627 (_ BitVec 64) V!31105 (_ BitVec 64)) Unit!31093)

(assert (=> b!921860 (= lt!413933 (addStillContains!405 lt!413936 lt!413929 lt!413934 k0!1099))))

(declare-fun getCurrentListMap!3050 (array!55198 array!55200 (_ BitVec 32) (_ BitVec 32) V!31105 V!31105 (_ BitVec 32) Int) ListLongMap!11627)

(assert (=> b!921860 (= (getCurrentListMap!3050 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2643 (getCurrentListMap!3050 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413937))))

(assert (=> b!921860 (= lt!413937 (tuple2!12917 lt!413929 lt!413934))))

(declare-fun get!13954 (ValueCell!9321 V!31105) V!31105)

(declare-fun dynLambda!1482 (Int (_ BitVec 64)) V!31105)

(assert (=> b!921860 (= lt!413934 (get!13954 (select (arr!26541 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1482 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413932 () Unit!31093)

(declare-fun lemmaListMapRecursiveValidKeyArray!78 (array!55198 array!55200 (_ BitVec 32) (_ BitVec 32) V!31105 V!31105 (_ BitVec 32) Int) Unit!31093)

(assert (=> b!921860 (= lt!413932 (lemmaListMapRecursiveValidKeyArray!78 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!921861 () Bool)

(assert (=> b!921861 (= e!517304 e!517302)))

(declare-fun res!621785 () Bool)

(assert (=> b!921861 (=> (not res!621785) (not e!517302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921861 (= res!621785 (validKeyInArray!0 lt!413929))))

(assert (=> b!921861 (= lt!413929 (select (arr!26540 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921862 () Bool)

(assert (=> b!921862 (= e!517308 e!517304)))

(declare-fun res!621777 () Bool)

(assert (=> b!921862 (=> (not res!621777) (not e!517304))))

(assert (=> b!921862 (= res!621777 (contains!4856 lt!413936 k0!1099))))

(assert (=> b!921862 (= lt!413936 (getCurrentListMap!3050 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921863 () Bool)

(assert (=> b!921863 (= e!517307 (and e!517301 mapRes!31164))))

(declare-fun condMapEmpty!31164 () Bool)

(declare-fun mapDefault!31164 () ValueCell!9321)

(assert (=> b!921863 (= condMapEmpty!31164 (= (arr!26541 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9321)) mapDefault!31164)))))

(declare-fun b!921864 () Bool)

(assert (=> b!921864 (= e!517303 tp_is_empty!19605)))

(declare-fun b!921865 () Bool)

(declare-fun res!621781 () Bool)

(assert (=> b!921865 (=> (not res!621781) (not e!517304))))

(assert (=> b!921865 (= res!621781 (validKeyInArray!0 k0!1099))))

(assert (= (and start!78912 res!621776) b!921852))

(assert (= (and b!921852 res!621782) b!921856))

(assert (= (and b!921856 res!621784) b!921853))

(assert (= (and b!921853 res!621779) b!921859))

(assert (= (and b!921859 res!621778) b!921862))

(assert (= (and b!921862 res!621777) b!921854))

(assert (= (and b!921854 res!621780) b!921851))

(assert (= (and b!921851 res!621783) b!921865))

(assert (= (and b!921865 res!621781) b!921861))

(assert (= (and b!921861 res!621785) b!921860))

(assert (= (and b!921860 c!96065) b!921858))

(assert (= (and b!921860 (not c!96065)) b!921855))

(assert (= (and b!921863 condMapEmpty!31164) mapIsEmpty!31164))

(assert (= (and b!921863 (not condMapEmpty!31164)) mapNonEmpty!31164))

(get-info :version)

(assert (= (and mapNonEmpty!31164 ((_ is ValueCellFull!9321) mapValue!31164)) b!921864))

(assert (= (and b!921863 ((_ is ValueCellFull!9321) mapDefault!31164)) b!921857))

(assert (= start!78912 b!921863))

(declare-fun b_lambda!13629 () Bool)

(assert (=> (not b_lambda!13629) (not b!921860)))

(declare-fun t!26589 () Bool)

(declare-fun tb!5685 () Bool)

(assert (=> (and start!78912 (= defaultEntry!1235 defaultEntry!1235) t!26589) tb!5685))

(declare-fun result!11185 () Bool)

(assert (=> tb!5685 (= result!11185 tp_is_empty!19605)))

(assert (=> b!921860 t!26589))

(declare-fun b_and!27951 () Bool)

(assert (= b_and!27949 (and (=> t!26589 result!11185) b_and!27951)))

(declare-fun m!855961 () Bool)

(assert (=> b!921858 m!855961))

(declare-fun m!855963 () Bool)

(assert (=> b!921865 m!855963))

(declare-fun m!855965 () Bool)

(assert (=> b!921860 m!855965))

(declare-fun m!855967 () Bool)

(assert (=> b!921860 m!855967))

(declare-fun m!855969 () Bool)

(assert (=> b!921860 m!855969))

(declare-fun m!855971 () Bool)

(assert (=> b!921860 m!855971))

(assert (=> b!921860 m!855969))

(assert (=> b!921860 m!855971))

(declare-fun m!855973 () Bool)

(assert (=> b!921860 m!855973))

(declare-fun m!855975 () Bool)

(assert (=> b!921860 m!855975))

(declare-fun m!855977 () Bool)

(assert (=> b!921860 m!855977))

(declare-fun m!855979 () Bool)

(assert (=> b!921860 m!855979))

(declare-fun m!855981 () Bool)

(assert (=> b!921860 m!855981))

(declare-fun m!855983 () Bool)

(assert (=> b!921860 m!855983))

(declare-fun m!855985 () Bool)

(assert (=> b!921860 m!855985))

(declare-fun m!855987 () Bool)

(assert (=> b!921860 m!855987))

(assert (=> b!921860 m!855977))

(declare-fun m!855989 () Bool)

(assert (=> b!921860 m!855989))

(declare-fun m!855991 () Bool)

(assert (=> b!921860 m!855991))

(assert (=> b!921860 m!855983))

(declare-fun m!855993 () Bool)

(assert (=> mapNonEmpty!31164 m!855993))

(declare-fun m!855995 () Bool)

(assert (=> b!921862 m!855995))

(declare-fun m!855997 () Bool)

(assert (=> b!921862 m!855997))

(declare-fun m!855999 () Bool)

(assert (=> b!921854 m!855999))

(declare-fun m!856001 () Bool)

(assert (=> b!921856 m!856001))

(declare-fun m!856003 () Bool)

(assert (=> b!921861 m!856003))

(declare-fun m!856005 () Bool)

(assert (=> b!921861 m!856005))

(declare-fun m!856007 () Bool)

(assert (=> start!78912 m!856007))

(declare-fun m!856009 () Bool)

(assert (=> start!78912 m!856009))

(declare-fun m!856011 () Bool)

(assert (=> start!78912 m!856011))

(declare-fun m!856013 () Bool)

(assert (=> b!921853 m!856013))

(check-sat (not start!78912) b_and!27951 (not b!921853) (not b!921856) (not mapNonEmpty!31164) tp_is_empty!19605 (not b!921861) (not b!921862) (not b!921854) (not b!921865) (not b_next!17097) (not b!921858) (not b!921860) (not b_lambda!13629))
(check-sat b_and!27951 (not b_next!17097))
