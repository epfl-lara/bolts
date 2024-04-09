; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78906 () Bool)

(assert start!78906)

(declare-fun b_free!17091 () Bool)

(declare-fun b_next!17091 () Bool)

(assert (=> start!78906 (= b_free!17091 (not b_next!17091))))

(declare-fun tp!59714 () Bool)

(declare-fun b_and!27937 () Bool)

(assert (=> start!78906 (= tp!59714 b_and!27937)))

(declare-fun mapNonEmpty!31155 () Bool)

(declare-fun mapRes!31155 () Bool)

(declare-fun tp!59715 () Bool)

(declare-fun e!517231 () Bool)

(assert (=> mapNonEmpty!31155 (= mapRes!31155 (and tp!59715 e!517231))))

(declare-fun mapKey!31155 () (_ BitVec 32))

(declare-datatypes ((V!31097 0))(
  ( (V!31098 (val!9850 Int)) )
))
(declare-datatypes ((ValueCell!9318 0))(
  ( (ValueCellFull!9318 (v!12368 V!31097)) (EmptyCell!9318) )
))
(declare-fun mapValue!31155 () ValueCell!9318)

(declare-fun mapRest!31155 () (Array (_ BitVec 32) ValueCell!9318))

(declare-datatypes ((array!55186 0))(
  ( (array!55187 (arr!26534 (Array (_ BitVec 32) ValueCell!9318)) (size!26994 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55186)

(assert (=> mapNonEmpty!31155 (= (arr!26534 _values!1231) (store mapRest!31155 mapKey!31155 mapValue!31155))))

(declare-fun mapIsEmpty!31155 () Bool)

(assert (=> mapIsEmpty!31155 mapRes!31155))

(declare-fun b!921710 () Bool)

(declare-fun res!621694 () Bool)

(declare-fun e!517232 () Bool)

(assert (=> b!921710 (=> (not res!621694) (not e!517232))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31097)

(declare-datatypes ((tuple2!12910 0))(
  ( (tuple2!12911 (_1!6465 (_ BitVec 64)) (_2!6465 V!31097)) )
))
(declare-datatypes ((List!18750 0))(
  ( (Nil!18747) (Cons!18746 (h!19892 tuple2!12910) (t!26579 List!18750)) )
))
(declare-datatypes ((ListLongMap!11621 0))(
  ( (ListLongMap!11622 (toList!5826 List!18750)) )
))
(declare-fun lt!413855 () ListLongMap!11621)

(declare-fun apply!632 (ListLongMap!11621 (_ BitVec 64)) V!31097)

(assert (=> b!921710 (= res!621694 (= (apply!632 lt!413855 k0!1099) v!791))))

(declare-fun b!921711 () Bool)

(declare-fun tp_is_empty!19599 () Bool)

(assert (=> b!921711 (= e!517231 tp_is_empty!19599)))

(declare-fun res!621689 () Bool)

(declare-fun e!517236 () Bool)

(assert (=> start!78906 (=> (not res!621689) (not e!517236))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78906 (= res!621689 (validMask!0 mask!1881))))

(assert (=> start!78906 e!517236))

(assert (=> start!78906 true))

(assert (=> start!78906 tp_is_empty!19599))

(declare-fun e!517234 () Bool)

(declare-fun array_inv!20656 (array!55186) Bool)

(assert (=> start!78906 (and (array_inv!20656 _values!1231) e!517234)))

(assert (=> start!78906 tp!59714))

(declare-datatypes ((array!55188 0))(
  ( (array!55189 (arr!26535 (Array (_ BitVec 32) (_ BitVec 64))) (size!26995 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55188)

(declare-fun array_inv!20657 (array!55188) Bool)

(assert (=> start!78906 (array_inv!20657 _keys!1487)))

(declare-fun b!921712 () Bool)

(declare-fun res!621688 () Bool)

(assert (=> b!921712 (=> (not res!621688) (not e!517232))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!921712 (= res!621688 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!921713 () Bool)

(declare-fun e!517235 () Bool)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!921713 (= e!517235 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!921714 () Bool)

(declare-fun res!621693 () Bool)

(assert (=> b!921714 (=> (not res!621693) (not e!517236))))

(assert (=> b!921714 (= res!621693 (and (= (size!26994 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26995 _keys!1487) (size!26994 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!921715 () Bool)

(declare-fun e!517230 () Bool)

(assert (=> b!921715 (= e!517230 (not true))))

(declare-fun lt!413852 () (_ BitVec 64))

(assert (=> b!921715 (not (= lt!413852 k0!1099))))

(declare-datatypes ((Unit!31089 0))(
  ( (Unit!31090) )
))
(declare-fun lt!413854 () Unit!31089)

(declare-datatypes ((List!18751 0))(
  ( (Nil!18748) (Cons!18747 (h!19893 (_ BitVec 64)) (t!26580 List!18751)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55188 (_ BitVec 64) (_ BitVec 32) List!18751) Unit!31089)

(assert (=> b!921715 (= lt!413854 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18748))))

(assert (=> b!921715 e!517235))

(declare-fun c!96056 () Bool)

(assert (=> b!921715 (= c!96056 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!1173 () V!31097)

(declare-fun minValue!1173 () V!31097)

(declare-fun lt!413850 () Unit!31089)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!187 (array!55188 array!55186 (_ BitVec 32) (_ BitVec 32) V!31097 V!31097 (_ BitVec 64) (_ BitVec 32) Int) Unit!31089)

(assert (=> b!921715 (= lt!413850 (lemmaListMapContainsThenArrayContainsFrom!187 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55188 (_ BitVec 32) List!18751) Bool)

(assert (=> b!921715 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18748)))

(declare-fun lt!413856 () Unit!31089)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55188 (_ BitVec 32) (_ BitVec 32)) Unit!31089)

(assert (=> b!921715 (= lt!413856 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!413853 () tuple2!12910)

(declare-fun contains!4854 (ListLongMap!11621 (_ BitVec 64)) Bool)

(declare-fun +!2641 (ListLongMap!11621 tuple2!12910) ListLongMap!11621)

(assert (=> b!921715 (contains!4854 (+!2641 lt!413855 lt!413853) k0!1099)))

(declare-fun lt!413849 () V!31097)

(declare-fun lt!413851 () Unit!31089)

(declare-fun addStillContains!403 (ListLongMap!11621 (_ BitVec 64) V!31097 (_ BitVec 64)) Unit!31089)

(assert (=> b!921715 (= lt!413851 (addStillContains!403 lt!413855 lt!413852 lt!413849 k0!1099))))

(declare-fun getCurrentListMap!3048 (array!55188 array!55186 (_ BitVec 32) (_ BitVec 32) V!31097 V!31097 (_ BitVec 32) Int) ListLongMap!11621)

(assert (=> b!921715 (= (getCurrentListMap!3048 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2641 (getCurrentListMap!3048 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!413853))))

(assert (=> b!921715 (= lt!413853 (tuple2!12911 lt!413852 lt!413849))))

(declare-fun get!13950 (ValueCell!9318 V!31097) V!31097)

(declare-fun dynLambda!1480 (Int (_ BitVec 64)) V!31097)

(assert (=> b!921715 (= lt!413849 (get!13950 (select (arr!26534 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1480 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!413848 () Unit!31089)

(declare-fun lemmaListMapRecursiveValidKeyArray!76 (array!55188 array!55186 (_ BitVec 32) (_ BitVec 32) V!31097 V!31097 (_ BitVec 32) Int) Unit!31089)

(assert (=> b!921715 (= lt!413848 (lemmaListMapRecursiveValidKeyArray!76 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!921716 () Bool)

(assert (=> b!921716 (= e!517236 e!517232)))

(declare-fun res!621686 () Bool)

(assert (=> b!921716 (=> (not res!621686) (not e!517232))))

(assert (=> b!921716 (= res!621686 (contains!4854 lt!413855 k0!1099))))

(assert (=> b!921716 (= lt!413855 (getCurrentListMap!3048 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!921717 () Bool)

(declare-fun res!621691 () Bool)

(assert (=> b!921717 (=> (not res!621691) (not e!517236))))

(assert (=> b!921717 (= res!621691 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18748))))

(declare-fun b!921718 () Bool)

(declare-fun res!621692 () Bool)

(assert (=> b!921718 (=> (not res!621692) (not e!517236))))

(assert (=> b!921718 (= res!621692 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26995 _keys!1487))))))

(declare-fun b!921719 () Bool)

(assert (=> b!921719 (= e!517232 e!517230)))

(declare-fun res!621695 () Bool)

(assert (=> b!921719 (=> (not res!621695) (not e!517230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!921719 (= res!621695 (validKeyInArray!0 lt!413852))))

(assert (=> b!921719 (= lt!413852 (select (arr!26535 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!921720 () Bool)

(declare-fun e!517229 () Bool)

(assert (=> b!921720 (= e!517229 tp_is_empty!19599)))

(declare-fun b!921721 () Bool)

(assert (=> b!921721 (= e!517234 (and e!517229 mapRes!31155))))

(declare-fun condMapEmpty!31155 () Bool)

(declare-fun mapDefault!31155 () ValueCell!9318)

(assert (=> b!921721 (= condMapEmpty!31155 (= (arr!26534 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9318)) mapDefault!31155)))))

(declare-fun b!921722 () Bool)

(declare-fun arrayContainsKey!0 (array!55188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!921722 (= e!517235 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!921723 () Bool)

(declare-fun res!621690 () Bool)

(assert (=> b!921723 (=> (not res!621690) (not e!517232))))

(assert (=> b!921723 (= res!621690 (validKeyInArray!0 k0!1099))))

(declare-fun b!921724 () Bool)

(declare-fun res!621687 () Bool)

(assert (=> b!921724 (=> (not res!621687) (not e!517236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55188 (_ BitVec 32)) Bool)

(assert (=> b!921724 (= res!621687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!78906 res!621689) b!921714))

(assert (= (and b!921714 res!621693) b!921724))

(assert (= (and b!921724 res!621687) b!921717))

(assert (= (and b!921717 res!621691) b!921718))

(assert (= (and b!921718 res!621692) b!921716))

(assert (= (and b!921716 res!621686) b!921710))

(assert (= (and b!921710 res!621694) b!921712))

(assert (= (and b!921712 res!621688) b!921723))

(assert (= (and b!921723 res!621690) b!921719))

(assert (= (and b!921719 res!621695) b!921715))

(assert (= (and b!921715 c!96056) b!921722))

(assert (= (and b!921715 (not c!96056)) b!921713))

(assert (= (and b!921721 condMapEmpty!31155) mapIsEmpty!31155))

(assert (= (and b!921721 (not condMapEmpty!31155)) mapNonEmpty!31155))

(get-info :version)

(assert (= (and mapNonEmpty!31155 ((_ is ValueCellFull!9318) mapValue!31155)) b!921711))

(assert (= (and b!921721 ((_ is ValueCellFull!9318) mapDefault!31155)) b!921720))

(assert (= start!78906 b!921721))

(declare-fun b_lambda!13623 () Bool)

(assert (=> (not b_lambda!13623) (not b!921715)))

(declare-fun t!26578 () Bool)

(declare-fun tb!5679 () Bool)

(assert (=> (and start!78906 (= defaultEntry!1235 defaultEntry!1235) t!26578) tb!5679))

(declare-fun result!11173 () Bool)

(assert (=> tb!5679 (= result!11173 tp_is_empty!19599)))

(assert (=> b!921715 t!26578))

(declare-fun b_and!27939 () Bool)

(assert (= b_and!27937 (and (=> t!26578 result!11173) b_and!27939)))

(declare-fun m!855799 () Bool)

(assert (=> b!921724 m!855799))

(declare-fun m!855801 () Bool)

(assert (=> b!921715 m!855801))

(declare-fun m!855803 () Bool)

(assert (=> b!921715 m!855803))

(declare-fun m!855805 () Bool)

(assert (=> b!921715 m!855805))

(declare-fun m!855807 () Bool)

(assert (=> b!921715 m!855807))

(assert (=> b!921715 m!855803))

(assert (=> b!921715 m!855805))

(declare-fun m!855809 () Bool)

(assert (=> b!921715 m!855809))

(declare-fun m!855811 () Bool)

(assert (=> b!921715 m!855811))

(declare-fun m!855813 () Bool)

(assert (=> b!921715 m!855813))

(declare-fun m!855815 () Bool)

(assert (=> b!921715 m!855815))

(declare-fun m!855817 () Bool)

(assert (=> b!921715 m!855817))

(declare-fun m!855819 () Bool)

(assert (=> b!921715 m!855819))

(declare-fun m!855821 () Bool)

(assert (=> b!921715 m!855821))

(assert (=> b!921715 m!855817))

(declare-fun m!855823 () Bool)

(assert (=> b!921715 m!855823))

(declare-fun m!855825 () Bool)

(assert (=> b!921715 m!855825))

(assert (=> b!921715 m!855815))

(declare-fun m!855827 () Bool)

(assert (=> b!921715 m!855827))

(declare-fun m!855829 () Bool)

(assert (=> b!921710 m!855829))

(declare-fun m!855831 () Bool)

(assert (=> mapNonEmpty!31155 m!855831))

(declare-fun m!855833 () Bool)

(assert (=> b!921716 m!855833))

(declare-fun m!855835 () Bool)

(assert (=> b!921716 m!855835))

(declare-fun m!855837 () Bool)

(assert (=> b!921719 m!855837))

(declare-fun m!855839 () Bool)

(assert (=> b!921719 m!855839))

(declare-fun m!855841 () Bool)

(assert (=> start!78906 m!855841))

(declare-fun m!855843 () Bool)

(assert (=> start!78906 m!855843))

(declare-fun m!855845 () Bool)

(assert (=> start!78906 m!855845))

(declare-fun m!855847 () Bool)

(assert (=> b!921723 m!855847))

(declare-fun m!855849 () Bool)

(assert (=> b!921717 m!855849))

(declare-fun m!855851 () Bool)

(assert (=> b!921722 m!855851))

(check-sat (not mapNonEmpty!31155) (not b_next!17091) (not b!921715) (not b!921722) (not b!921719) (not b!921723) (not start!78906) (not b!921710) (not b!921716) b_and!27939 (not b!921717) tp_is_empty!19599 (not b!921724) (not b_lambda!13623))
(check-sat b_and!27939 (not b_next!17091))
