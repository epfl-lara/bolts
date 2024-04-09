; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79682 () Bool)

(assert start!79682)

(declare-fun b_free!17703 () Bool)

(declare-fun b_next!17703 () Bool)

(assert (=> start!79682 (= b_free!17703 (not b_next!17703))))

(declare-fun tp!61565 () Bool)

(declare-fun b_and!29015 () Bool)

(assert (=> start!79682 (= tp!61565 b_and!29015)))

(declare-fun b!936388 () Bool)

(declare-fun e!525819 () Bool)

(declare-fun e!525820 () Bool)

(declare-fun mapRes!32088 () Bool)

(assert (=> b!936388 (= e!525819 (and e!525820 mapRes!32088))))

(declare-fun condMapEmpty!32088 () Bool)

(declare-datatypes ((V!31913 0))(
  ( (V!31914 (val!10156 Int)) )
))
(declare-datatypes ((ValueCell!9624 0))(
  ( (ValueCellFull!9624 (v!12681 V!31913)) (EmptyCell!9624) )
))
(declare-datatypes ((array!56386 0))(
  ( (array!56387 (arr!27129 (Array (_ BitVec 32) ValueCell!9624)) (size!27589 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56386)

(declare-fun mapDefault!32088 () ValueCell!9624)

(assert (=> b!936388 (= condMapEmpty!32088 (= (arr!27129 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9624)) mapDefault!32088)))))

(declare-fun b!936389 () Bool)

(declare-fun res!630591 () Bool)

(declare-fun e!525816 () Bool)

(assert (=> b!936389 (=> (not res!630591) (not e!525816))))

(declare-datatypes ((array!56388 0))(
  ( (array!56389 (arr!27130 (Array (_ BitVec 32) (_ BitVec 64))) (size!27590 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56388)

(declare-datatypes ((List!19246 0))(
  ( (Nil!19243) (Cons!19242 (h!20388 (_ BitVec 64)) (t!27501 List!19246)) )
))
(declare-fun arrayNoDuplicates!0 (array!56388 (_ BitVec 32) List!19246) Bool)

(assert (=> b!936389 (= res!630591 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19243))))

(declare-fun b!936390 () Bool)

(declare-fun e!525815 () Bool)

(assert (=> b!936390 (= e!525816 e!525815)))

(declare-fun res!630589 () Bool)

(assert (=> b!936390 (=> (not res!630589) (not e!525815))))

(declare-datatypes ((tuple2!13440 0))(
  ( (tuple2!13441 (_1!6730 (_ BitVec 64)) (_2!6730 V!31913)) )
))
(declare-datatypes ((List!19247 0))(
  ( (Nil!19244) (Cons!19243 (h!20389 tuple2!13440) (t!27502 List!19247)) )
))
(declare-datatypes ((ListLongMap!12151 0))(
  ( (ListLongMap!12152 (toList!6091 List!19247)) )
))
(declare-fun lt!422246 () ListLongMap!12151)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5101 (ListLongMap!12151 (_ BitVec 64)) Bool)

(assert (=> b!936390 (= res!630589 (contains!5101 lt!422246 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31913)

(declare-fun minValue!1173 () V!31913)

(declare-fun getCurrentListMap!3280 (array!56388 array!56386 (_ BitVec 32) (_ BitVec 32) V!31913 V!31913 (_ BitVec 32) Int) ListLongMap!12151)

(assert (=> b!936390 (= lt!422246 (getCurrentListMap!3280 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!936391 () Bool)

(declare-fun e!525818 () Bool)

(assert (=> b!936391 (= e!525815 e!525818)))

(declare-fun res!630590 () Bool)

(assert (=> b!936391 (=> (not res!630590) (not e!525818))))

(declare-fun v!791 () V!31913)

(declare-fun lt!422251 () V!31913)

(assert (=> b!936391 (= res!630590 (and (= lt!422251 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun apply!869 (ListLongMap!12151 (_ BitVec 64)) V!31913)

(assert (=> b!936391 (= lt!422251 (apply!869 lt!422246 k0!1099))))

(declare-fun res!630592 () Bool)

(assert (=> start!79682 (=> (not res!630592) (not e!525816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79682 (= res!630592 (validMask!0 mask!1881))))

(assert (=> start!79682 e!525816))

(assert (=> start!79682 true))

(declare-fun tp_is_empty!20211 () Bool)

(assert (=> start!79682 tp_is_empty!20211))

(declare-fun array_inv!21066 (array!56386) Bool)

(assert (=> start!79682 (and (array_inv!21066 _values!1231) e!525819)))

(assert (=> start!79682 tp!61565))

(declare-fun array_inv!21067 (array!56388) Bool)

(assert (=> start!79682 (array_inv!21067 _keys!1487)))

(declare-fun b!936392 () Bool)

(declare-fun e!525817 () Bool)

(declare-fun arrayContainsKey!0 (array!56388 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936392 (= e!525817 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun mapNonEmpty!32088 () Bool)

(declare-fun tp!61566 () Bool)

(declare-fun e!525824 () Bool)

(assert (=> mapNonEmpty!32088 (= mapRes!32088 (and tp!61566 e!525824))))

(declare-fun mapValue!32088 () ValueCell!9624)

(declare-fun mapKey!32088 () (_ BitVec 32))

(declare-fun mapRest!32088 () (Array (_ BitVec 32) ValueCell!9624))

(assert (=> mapNonEmpty!32088 (= (arr!27129 _values!1231) (store mapRest!32088 mapKey!32088 mapValue!32088))))

(declare-fun b!936393 () Bool)

(declare-fun res!630587 () Bool)

(assert (=> b!936393 (=> (not res!630587) (not e!525816))))

(assert (=> b!936393 (= res!630587 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27590 _keys!1487))))))

(declare-fun b!936394 () Bool)

(assert (=> b!936394 (= e!525824 tp_is_empty!20211)))

(declare-fun b!936395 () Bool)

(declare-fun res!630588 () Bool)

(assert (=> b!936395 (=> (not res!630588) (not e!525816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56388 (_ BitVec 32)) Bool)

(assert (=> b!936395 (= res!630588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!936396 () Bool)

(assert (=> b!936396 (= e!525817 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936397 () Bool)

(declare-fun res!630593 () Bool)

(assert (=> b!936397 (=> (not res!630593) (not e!525816))))

(assert (=> b!936397 (= res!630593 (and (= (size!27589 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27590 _keys!1487) (size!27589 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936398 () Bool)

(declare-datatypes ((Unit!31592 0))(
  ( (Unit!31593) )
))
(declare-fun e!525823 () Unit!31592)

(declare-fun e!525822 () Unit!31592)

(assert (=> b!936398 (= e!525823 e!525822)))

(declare-fun lt!422253 () (_ BitVec 64))

(assert (=> b!936398 (= lt!422253 (select (arr!27130 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97333 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936398 (= c!97333 (validKeyInArray!0 lt!422253))))

(declare-fun b!936399 () Bool)

(declare-fun lt!422250 () ListLongMap!12151)

(assert (=> b!936399 (= (apply!869 lt!422250 k0!1099) lt!422251)))

(declare-fun lt!422255 () Unit!31592)

(declare-fun lt!422247 () V!31913)

(declare-fun addApplyDifferent!417 (ListLongMap!12151 (_ BitVec 64) V!31913 (_ BitVec 64)) Unit!31592)

(assert (=> b!936399 (= lt!422255 (addApplyDifferent!417 lt!422246 lt!422253 lt!422247 k0!1099))))

(assert (=> b!936399 (not (= lt!422253 k0!1099))))

(declare-fun lt!422254 () Unit!31592)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56388 (_ BitVec 64) (_ BitVec 32) List!19246) Unit!31592)

(assert (=> b!936399 (= lt!422254 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19243))))

(assert (=> b!936399 e!525817))

(declare-fun c!97332 () Bool)

(assert (=> b!936399 (= c!97332 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422252 () Unit!31592)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!300 (array!56388 array!56386 (_ BitVec 32) (_ BitVec 32) V!31913 V!31913 (_ BitVec 64) (_ BitVec 32) Int) Unit!31592)

(assert (=> b!936399 (= lt!422252 (lemmaListMapContainsThenArrayContainsFrom!300 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!936399 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19243)))

(declare-fun lt!422248 () Unit!31592)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56388 (_ BitVec 32) (_ BitVec 32)) Unit!31592)

(assert (=> b!936399 (= lt!422248 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!936399 (contains!5101 lt!422250 k0!1099)))

(declare-fun lt!422249 () tuple2!13440)

(declare-fun +!2787 (ListLongMap!12151 tuple2!13440) ListLongMap!12151)

(assert (=> b!936399 (= lt!422250 (+!2787 lt!422246 lt!422249))))

(declare-fun lt!422257 () Unit!31592)

(declare-fun addStillContains!543 (ListLongMap!12151 (_ BitVec 64) V!31913 (_ BitVec 64)) Unit!31592)

(assert (=> b!936399 (= lt!422257 (addStillContains!543 lt!422246 lt!422253 lt!422247 k0!1099))))

(assert (=> b!936399 (= (getCurrentListMap!3280 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2787 (getCurrentListMap!3280 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422249))))

(assert (=> b!936399 (= lt!422249 (tuple2!13441 lt!422253 lt!422247))))

(declare-fun get!14315 (ValueCell!9624 V!31913) V!31913)

(declare-fun dynLambda!1626 (Int (_ BitVec 64)) V!31913)

(assert (=> b!936399 (= lt!422247 (get!14315 (select (arr!27129 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1626 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422256 () Unit!31592)

(declare-fun lemmaListMapRecursiveValidKeyArray!222 (array!56388 array!56386 (_ BitVec 32) (_ BitVec 32) V!31913 V!31913 (_ BitVec 32) Int) Unit!31592)

(assert (=> b!936399 (= lt!422256 (lemmaListMapRecursiveValidKeyArray!222 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!936399 (= e!525822 lt!422255)))

(declare-fun b!936400 () Bool)

(assert (=> b!936400 (= e!525820 tp_is_empty!20211)))

(declare-fun mapIsEmpty!32088 () Bool)

(assert (=> mapIsEmpty!32088 mapRes!32088))

(declare-fun b!936401 () Bool)

(declare-fun Unit!31594 () Unit!31592)

(assert (=> b!936401 (= e!525823 Unit!31594)))

(declare-fun b!936402 () Bool)

(assert (=> b!936402 (= e!525818 false)))

(declare-fun lt!422245 () Unit!31592)

(assert (=> b!936402 (= lt!422245 e!525823)))

(declare-fun c!97334 () Bool)

(assert (=> b!936402 (= c!97334 (validKeyInArray!0 k0!1099))))

(declare-fun b!936403 () Bool)

(declare-fun Unit!31595 () Unit!31592)

(assert (=> b!936403 (= e!525822 Unit!31595)))

(assert (= (and start!79682 res!630592) b!936397))

(assert (= (and b!936397 res!630593) b!936395))

(assert (= (and b!936395 res!630588) b!936389))

(assert (= (and b!936389 res!630591) b!936393))

(assert (= (and b!936393 res!630587) b!936390))

(assert (= (and b!936390 res!630589) b!936391))

(assert (= (and b!936391 res!630590) b!936402))

(assert (= (and b!936402 c!97334) b!936398))

(assert (= (and b!936402 (not c!97334)) b!936401))

(assert (= (and b!936398 c!97333) b!936399))

(assert (= (and b!936398 (not c!97333)) b!936403))

(assert (= (and b!936399 c!97332) b!936392))

(assert (= (and b!936399 (not c!97332)) b!936396))

(assert (= (and b!936388 condMapEmpty!32088) mapIsEmpty!32088))

(assert (= (and b!936388 (not condMapEmpty!32088)) mapNonEmpty!32088))

(get-info :version)

(assert (= (and mapNonEmpty!32088 ((_ is ValueCellFull!9624) mapValue!32088)) b!936394))

(assert (= (and b!936388 ((_ is ValueCellFull!9624) mapDefault!32088)) b!936400))

(assert (= start!79682 b!936388))

(declare-fun b_lambda!14139 () Bool)

(assert (=> (not b_lambda!14139) (not b!936399)))

(declare-fun t!27500 () Bool)

(declare-fun tb!6105 () Bool)

(assert (=> (and start!79682 (= defaultEntry!1235 defaultEntry!1235) t!27500) tb!6105))

(declare-fun result!12035 () Bool)

(assert (=> tb!6105 (= result!12035 tp_is_empty!20211)))

(assert (=> b!936399 t!27500))

(declare-fun b_and!29017 () Bool)

(assert (= b_and!29015 (and (=> t!27500 result!12035) b_and!29017)))

(declare-fun m!871113 () Bool)

(assert (=> mapNonEmpty!32088 m!871113))

(declare-fun m!871115 () Bool)

(assert (=> b!936392 m!871115))

(declare-fun m!871117 () Bool)

(assert (=> b!936398 m!871117))

(declare-fun m!871119 () Bool)

(assert (=> b!936398 m!871119))

(declare-fun m!871121 () Bool)

(assert (=> b!936389 m!871121))

(declare-fun m!871123 () Bool)

(assert (=> b!936391 m!871123))

(declare-fun m!871125 () Bool)

(assert (=> start!79682 m!871125))

(declare-fun m!871127 () Bool)

(assert (=> start!79682 m!871127))

(declare-fun m!871129 () Bool)

(assert (=> start!79682 m!871129))

(declare-fun m!871131 () Bool)

(assert (=> b!936390 m!871131))

(declare-fun m!871133 () Bool)

(assert (=> b!936390 m!871133))

(declare-fun m!871135 () Bool)

(assert (=> b!936402 m!871135))

(declare-fun m!871137 () Bool)

(assert (=> b!936399 m!871137))

(declare-fun m!871139 () Bool)

(assert (=> b!936399 m!871139))

(declare-fun m!871141 () Bool)

(assert (=> b!936399 m!871141))

(declare-fun m!871143 () Bool)

(assert (=> b!936399 m!871143))

(declare-fun m!871145 () Bool)

(assert (=> b!936399 m!871145))

(declare-fun m!871147 () Bool)

(assert (=> b!936399 m!871147))

(assert (=> b!936399 m!871145))

(assert (=> b!936399 m!871147))

(declare-fun m!871149 () Bool)

(assert (=> b!936399 m!871149))

(declare-fun m!871151 () Bool)

(assert (=> b!936399 m!871151))

(declare-fun m!871153 () Bool)

(assert (=> b!936399 m!871153))

(declare-fun m!871155 () Bool)

(assert (=> b!936399 m!871155))

(declare-fun m!871157 () Bool)

(assert (=> b!936399 m!871157))

(declare-fun m!871159 () Bool)

(assert (=> b!936399 m!871159))

(declare-fun m!871161 () Bool)

(assert (=> b!936399 m!871161))

(assert (=> b!936399 m!871137))

(declare-fun m!871163 () Bool)

(assert (=> b!936399 m!871163))

(declare-fun m!871165 () Bool)

(assert (=> b!936399 m!871165))

(declare-fun m!871167 () Bool)

(assert (=> b!936399 m!871167))

(declare-fun m!871169 () Bool)

(assert (=> b!936395 m!871169))

(check-sat b_and!29017 (not start!79682) (not b!936395) (not b!936392) (not b!936399) (not b_lambda!14139) (not b!936402) (not b!936391) (not b!936389) (not b_next!17703) tp_is_empty!20211 (not mapNonEmpty!32088) (not b!936398) (not b!936390))
(check-sat b_and!29017 (not b_next!17703))
