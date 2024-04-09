; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78974 () Bool)

(assert start!78974)

(declare-fun b_free!17159 () Bool)

(declare-fun b_next!17159 () Bool)

(assert (=> start!78974 (= b_free!17159 (not b_next!17159))))

(declare-fun tp!59919 () Bool)

(declare-fun b_and!28073 () Bool)

(assert (=> start!78974 (= tp!59919 b_and!28073)))

(declare-fun b!923359 () Bool)

(declare-datatypes ((Unit!31154 0))(
  ( (Unit!31155) )
))
(declare-fun e!518117 () Unit!31154)

(declare-fun Unit!31156 () Unit!31154)

(assert (=> b!923359 (= e!518117 Unit!31156)))

(declare-fun b!923360 () Bool)

(declare-fun e!518113 () Unit!31154)

(assert (=> b!923360 (= e!518117 e!518113)))

(declare-fun lt!414879 () (_ BitVec 64))

(declare-datatypes ((array!55320 0))(
  ( (array!55321 (arr!26601 (Array (_ BitVec 32) (_ BitVec 64))) (size!27061 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55320)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!923360 (= lt!414879 (select (arr!26601 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96192 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923360 (= c!96192 (validKeyInArray!0 lt!414879))))

(declare-fun b!923361 () Bool)

(declare-fun e!518123 () Bool)

(declare-fun e!518124 () Bool)

(assert (=> b!923361 (= e!518123 e!518124)))

(declare-fun res!622692 () Bool)

(assert (=> b!923361 (=> (not res!622692) (not e!518124))))

(assert (=> b!923361 (= res!622692 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27061 _keys!1487)))))

(declare-fun lt!414868 () Unit!31154)

(assert (=> b!923361 (= lt!414868 e!518117)))

(declare-fun c!96194 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!923361 (= c!96194 (validKeyInArray!0 k!1099))))

(declare-fun e!518122 () Bool)

(declare-fun b!923363 () Bool)

(declare-fun arrayContainsKey!0 (array!55320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923363 (= e!518122 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!923364 () Bool)

(declare-fun Unit!31157 () Unit!31154)

(assert (=> b!923364 (= e!518113 Unit!31157)))

(declare-fun b!923365 () Bool)

(declare-fun e!518115 () Bool)

(declare-fun tp_is_empty!19667 () Bool)

(assert (=> b!923365 (= e!518115 tp_is_empty!19667)))

(declare-fun b!923366 () Bool)

(declare-fun res!622694 () Bool)

(declare-fun e!518120 () Bool)

(assert (=> b!923366 (=> (not res!622694) (not e!518120))))

(assert (=> b!923366 (= res!622694 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27061 _keys!1487))))))

(declare-fun mapIsEmpty!31257 () Bool)

(declare-fun mapRes!31257 () Bool)

(assert (=> mapIsEmpty!31257 mapRes!31257))

(declare-fun b!923367 () Bool)

(declare-fun e!518119 () Bool)

(assert (=> b!923367 (= e!518120 e!518119)))

(declare-fun res!622691 () Bool)

(assert (=> b!923367 (=> (not res!622691) (not e!518119))))

(declare-datatypes ((V!31187 0))(
  ( (V!31188 (val!9884 Int)) )
))
(declare-datatypes ((tuple2!12976 0))(
  ( (tuple2!12977 (_1!6498 (_ BitVec 64)) (_2!6498 V!31187)) )
))
(declare-datatypes ((List!18812 0))(
  ( (Nil!18809) (Cons!18808 (h!19954 tuple2!12976) (t!26709 List!18812)) )
))
(declare-datatypes ((ListLongMap!11687 0))(
  ( (ListLongMap!11688 (toList!5859 List!18812)) )
))
(declare-fun lt!414870 () ListLongMap!11687)

(declare-fun contains!4883 (ListLongMap!11687 (_ BitVec 64)) Bool)

(assert (=> b!923367 (= res!622691 (contains!4883 lt!414870 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9352 0))(
  ( (ValueCellFull!9352 (v!12402 V!31187)) (EmptyCell!9352) )
))
(declare-datatypes ((array!55322 0))(
  ( (array!55323 (arr!26602 (Array (_ BitVec 32) ValueCell!9352)) (size!27062 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55322)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31187)

(declare-fun minValue!1173 () V!31187)

(declare-fun getCurrentListMap!3077 (array!55320 array!55322 (_ BitVec 32) (_ BitVec 32) V!31187 V!31187 (_ BitVec 32) Int) ListLongMap!11687)

(assert (=> b!923367 (= lt!414870 (getCurrentListMap!3077 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923368 () Bool)

(declare-fun res!622695 () Bool)

(assert (=> b!923368 (=> (not res!622695) (not e!518120))))

(declare-datatypes ((List!18813 0))(
  ( (Nil!18810) (Cons!18809 (h!19955 (_ BitVec 64)) (t!26710 List!18813)) )
))
(declare-fun arrayNoDuplicates!0 (array!55320 (_ BitVec 32) List!18813) Bool)

(assert (=> b!923368 (= res!622695 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18810))))

(declare-fun b!923369 () Bool)

(assert (=> b!923369 (= e!518122 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31257 () Bool)

(declare-fun tp!59918 () Bool)

(assert (=> mapNonEmpty!31257 (= mapRes!31257 (and tp!59918 e!518115))))

(declare-fun mapKey!31257 () (_ BitVec 32))

(declare-fun mapRest!31257 () (Array (_ BitVec 32) ValueCell!9352))

(declare-fun mapValue!31257 () ValueCell!9352)

(assert (=> mapNonEmpty!31257 (= (arr!26602 _values!1231) (store mapRest!31257 mapKey!31257 mapValue!31257))))

(declare-fun b!923370 () Bool)

(declare-fun res!622697 () Bool)

(assert (=> b!923370 (=> (not res!622697) (not e!518120))))

(assert (=> b!923370 (= res!622697 (and (= (size!27062 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27061 _keys!1487) (size!27062 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923371 () Bool)

(declare-fun res!622690 () Bool)

(assert (=> b!923371 (=> (not res!622690) (not e!518120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55320 (_ BitVec 32)) Bool)

(assert (=> b!923371 (= res!622690 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!923372 () Bool)

(declare-fun e!518116 () Bool)

(assert (=> b!923372 (= e!518116 tp_is_empty!19667)))

(declare-fun b!923373 () Bool)

(declare-fun lt!414876 () ListLongMap!11687)

(declare-fun lt!414869 () V!31187)

(declare-fun apply!662 (ListLongMap!11687 (_ BitVec 64)) V!31187)

(assert (=> b!923373 (= (apply!662 lt!414876 k!1099) lt!414869)))

(declare-fun lt!414878 () Unit!31154)

(declare-fun lt!414880 () V!31187)

(declare-fun addApplyDifferent!355 (ListLongMap!11687 (_ BitVec 64) V!31187 (_ BitVec 64)) Unit!31154)

(assert (=> b!923373 (= lt!414878 (addApplyDifferent!355 lt!414870 lt!414879 lt!414880 k!1099))))

(assert (=> b!923373 (not (= lt!414879 k!1099))))

(declare-fun lt!414881 () Unit!31154)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55320 (_ BitVec 64) (_ BitVec 32) List!18813) Unit!31154)

(assert (=> b!923373 (= lt!414881 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18810))))

(assert (=> b!923373 e!518122))

(declare-fun c!96193 () Bool)

(assert (=> b!923373 (= c!96193 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414871 () Unit!31154)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!215 (array!55320 array!55322 (_ BitVec 32) (_ BitVec 32) V!31187 V!31187 (_ BitVec 64) (_ BitVec 32) Int) Unit!31154)

(assert (=> b!923373 (= lt!414871 (lemmaListMapContainsThenArrayContainsFrom!215 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!923373 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18810)))

(declare-fun lt!414872 () Unit!31154)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55320 (_ BitVec 32) (_ BitVec 32)) Unit!31154)

(assert (=> b!923373 (= lt!414872 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!923373 (contains!4883 lt!414876 k!1099)))

(declare-fun lt!414877 () tuple2!12976)

(declare-fun +!2669 (ListLongMap!11687 tuple2!12976) ListLongMap!11687)

(assert (=> b!923373 (= lt!414876 (+!2669 lt!414870 lt!414877))))

(declare-fun lt!414874 () Unit!31154)

(declare-fun addStillContains!431 (ListLongMap!11687 (_ BitVec 64) V!31187 (_ BitVec 64)) Unit!31154)

(assert (=> b!923373 (= lt!414874 (addStillContains!431 lt!414870 lt!414879 lt!414880 k!1099))))

(assert (=> b!923373 (= (getCurrentListMap!3077 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2669 (getCurrentListMap!3077 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414877))))

(assert (=> b!923373 (= lt!414877 (tuple2!12977 lt!414879 lt!414880))))

(declare-fun get!14000 (ValueCell!9352 V!31187) V!31187)

(declare-fun dynLambda!1508 (Int (_ BitVec 64)) V!31187)

(assert (=> b!923373 (= lt!414880 (get!14000 (select (arr!26602 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1508 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414882 () Unit!31154)

(declare-fun lemmaListMapRecursiveValidKeyArray!104 (array!55320 array!55322 (_ BitVec 32) (_ BitVec 32) V!31187 V!31187 (_ BitVec 32) Int) Unit!31154)

(assert (=> b!923373 (= lt!414882 (lemmaListMapRecursiveValidKeyArray!104 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!923373 (= e!518113 lt!414878)))

(declare-fun b!923374 () Bool)

(declare-fun e!518118 () Bool)

(assert (=> b!923374 (= e!518118 false)))

(declare-fun lt!414875 () V!31187)

(declare-fun lt!414873 () ListLongMap!11687)

(assert (=> b!923374 (= lt!414875 (apply!662 lt!414873 k!1099))))

(declare-fun b!923362 () Bool)

(assert (=> b!923362 (= e!518124 e!518118)))

(declare-fun res!622696 () Bool)

(assert (=> b!923362 (=> (not res!622696) (not e!518118))))

(assert (=> b!923362 (= res!622696 (contains!4883 lt!414873 k!1099))))

(assert (=> b!923362 (= lt!414873 (getCurrentListMap!3077 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!622693 () Bool)

(assert (=> start!78974 (=> (not res!622693) (not e!518120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78974 (= res!622693 (validMask!0 mask!1881))))

(assert (=> start!78974 e!518120))

(assert (=> start!78974 true))

(assert (=> start!78974 tp_is_empty!19667))

(declare-fun e!518114 () Bool)

(declare-fun array_inv!20710 (array!55322) Bool)

(assert (=> start!78974 (and (array_inv!20710 _values!1231) e!518114)))

(assert (=> start!78974 tp!59919))

(declare-fun array_inv!20711 (array!55320) Bool)

(assert (=> start!78974 (array_inv!20711 _keys!1487)))

(declare-fun b!923375 () Bool)

(assert (=> b!923375 (= e!518114 (and e!518116 mapRes!31257))))

(declare-fun condMapEmpty!31257 () Bool)

(declare-fun mapDefault!31257 () ValueCell!9352)

