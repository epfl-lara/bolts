; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78976 () Bool)

(assert start!78976)

(declare-fun b_free!17161 () Bool)

(declare-fun b_next!17161 () Bool)

(assert (=> start!78976 (= b_free!17161 (not b_next!17161))))

(declare-fun tp!59925 () Bool)

(declare-fun b_and!28077 () Bool)

(assert (=> start!78976 (= tp!59925 b_and!28077)))

(declare-fun res!622718 () Bool)

(declare-fun e!518159 () Bool)

(assert (=> start!78976 (=> (not res!622718) (not e!518159))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78976 (= res!622718 (validMask!0 mask!1881))))

(assert (=> start!78976 e!518159))

(assert (=> start!78976 true))

(declare-fun tp_is_empty!19669 () Bool)

(assert (=> start!78976 tp_is_empty!19669))

(declare-datatypes ((V!31191 0))(
  ( (V!31192 (val!9885 Int)) )
))
(declare-datatypes ((ValueCell!9353 0))(
  ( (ValueCellFull!9353 (v!12403 V!31191)) (EmptyCell!9353) )
))
(declare-datatypes ((array!55324 0))(
  ( (array!55325 (arr!26603 (Array (_ BitVec 32) ValueCell!9353)) (size!27063 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55324)

(declare-fun e!518155 () Bool)

(declare-fun array_inv!20712 (array!55324) Bool)

(assert (=> start!78976 (and (array_inv!20712 _values!1231) e!518155)))

(assert (=> start!78976 tp!59925))

(declare-datatypes ((array!55326 0))(
  ( (array!55327 (arr!26604 (Array (_ BitVec 32) (_ BitVec 64))) (size!27064 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55326)

(declare-fun array_inv!20713 (array!55326) Bool)

(assert (=> start!78976 (array_inv!20713 _keys!1487)))

(declare-fun b!923415 () Bool)

(declare-fun res!622716 () Bool)

(assert (=> b!923415 (=> (not res!622716) (not e!518159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55326 (_ BitVec 32)) Bool)

(assert (=> b!923415 (= res!622716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapIsEmpty!31260 () Bool)

(declare-fun mapRes!31260 () Bool)

(assert (=> mapIsEmpty!31260 mapRes!31260))

(declare-fun mapNonEmpty!31260 () Bool)

(declare-fun tp!59924 () Bool)

(declare-fun e!518149 () Bool)

(assert (=> mapNonEmpty!31260 (= mapRes!31260 (and tp!59924 e!518149))))

(declare-fun mapKey!31260 () (_ BitVec 32))

(declare-fun mapValue!31260 () ValueCell!9353)

(declare-fun mapRest!31260 () (Array (_ BitVec 32) ValueCell!9353))

(assert (=> mapNonEmpty!31260 (= (arr!26603 _values!1231) (store mapRest!31260 mapKey!31260 mapValue!31260))))

(declare-fun b!923416 () Bool)

(declare-fun e!518152 () Bool)

(assert (=> b!923416 (= e!518152 false)))

(declare-fun lt!414926 () V!31191)

(declare-datatypes ((tuple2!12978 0))(
  ( (tuple2!12979 (_1!6499 (_ BitVec 64)) (_2!6499 V!31191)) )
))
(declare-datatypes ((List!18814 0))(
  ( (Nil!18811) (Cons!18810 (h!19956 tuple2!12978) (t!26713 List!18814)) )
))
(declare-datatypes ((ListLongMap!11689 0))(
  ( (ListLongMap!11690 (toList!5860 List!18814)) )
))
(declare-fun lt!414917 () ListLongMap!11689)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun apply!663 (ListLongMap!11689 (_ BitVec 64)) V!31191)

(assert (=> b!923416 (= lt!414926 (apply!663 lt!414917 k!1099))))

(declare-fun b!923417 () Bool)

(declare-fun e!518150 () Bool)

(declare-fun e!518156 () Bool)

(assert (=> b!923417 (= e!518150 e!518156)))

(declare-fun res!622721 () Bool)

(assert (=> b!923417 (=> (not res!622721) (not e!518156))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun v!791 () V!31191)

(declare-fun lt!414914 () V!31191)

(assert (=> b!923417 (= res!622721 (and (= lt!414914 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!414915 () ListLongMap!11689)

(assert (=> b!923417 (= lt!414914 (apply!663 lt!414915 k!1099))))

(declare-fun e!518160 () Bool)

(declare-fun b!923418 () Bool)

(declare-fun arrayContainsKey!0 (array!55326 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!923418 (= e!518160 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!923419 () Bool)

(declare-fun lt!414920 () ListLongMap!11689)

(assert (=> b!923419 (= (apply!663 lt!414920 k!1099) lt!414914)))

(declare-fun lt!414922 () V!31191)

(declare-datatypes ((Unit!31158 0))(
  ( (Unit!31159) )
))
(declare-fun lt!414923 () Unit!31158)

(declare-fun lt!414924 () (_ BitVec 64))

(declare-fun addApplyDifferent!356 (ListLongMap!11689 (_ BitVec 64) V!31191 (_ BitVec 64)) Unit!31158)

(assert (=> b!923419 (= lt!414923 (addApplyDifferent!356 lt!414915 lt!414924 lt!414922 k!1099))))

(assert (=> b!923419 (not (= lt!414924 k!1099))))

(declare-fun lt!414927 () Unit!31158)

(declare-datatypes ((List!18815 0))(
  ( (Nil!18812) (Cons!18811 (h!19957 (_ BitVec 64)) (t!26714 List!18815)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55326 (_ BitVec 64) (_ BitVec 32) List!18815) Unit!31158)

(assert (=> b!923419 (= lt!414927 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18812))))

(assert (=> b!923419 e!518160))

(declare-fun c!96201 () Bool)

(assert (=> b!923419 (= c!96201 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414918 () Unit!31158)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31191)

(declare-fun minValue!1173 () V!31191)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!216 (array!55326 array!55324 (_ BitVec 32) (_ BitVec 32) V!31191 V!31191 (_ BitVec 64) (_ BitVec 32) Int) Unit!31158)

(assert (=> b!923419 (= lt!414918 (lemmaListMapContainsThenArrayContainsFrom!216 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55326 (_ BitVec 32) List!18815) Bool)

(assert (=> b!923419 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18812)))

(declare-fun lt!414921 () Unit!31158)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55326 (_ BitVec 32) (_ BitVec 32)) Unit!31158)

(assert (=> b!923419 (= lt!414921 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4884 (ListLongMap!11689 (_ BitVec 64)) Bool)

(assert (=> b!923419 (contains!4884 lt!414920 k!1099)))

(declare-fun lt!414916 () tuple2!12978)

(declare-fun +!2670 (ListLongMap!11689 tuple2!12978) ListLongMap!11689)

(assert (=> b!923419 (= lt!414920 (+!2670 lt!414915 lt!414916))))

(declare-fun lt!414913 () Unit!31158)

(declare-fun addStillContains!432 (ListLongMap!11689 (_ BitVec 64) V!31191 (_ BitVec 64)) Unit!31158)

(assert (=> b!923419 (= lt!414913 (addStillContains!432 lt!414915 lt!414924 lt!414922 k!1099))))

(declare-fun getCurrentListMap!3078 (array!55326 array!55324 (_ BitVec 32) (_ BitVec 32) V!31191 V!31191 (_ BitVec 32) Int) ListLongMap!11689)

(assert (=> b!923419 (= (getCurrentListMap!3078 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2670 (getCurrentListMap!3078 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414916))))

(assert (=> b!923419 (= lt!414916 (tuple2!12979 lt!414924 lt!414922))))

(declare-fun get!14003 (ValueCell!9353 V!31191) V!31191)

(declare-fun dynLambda!1509 (Int (_ BitVec 64)) V!31191)

(assert (=> b!923419 (= lt!414922 (get!14003 (select (arr!26603 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1509 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414925 () Unit!31158)

(declare-fun lemmaListMapRecursiveValidKeyArray!105 (array!55326 array!55324 (_ BitVec 32) (_ BitVec 32) V!31191 V!31191 (_ BitVec 32) Int) Unit!31158)

(assert (=> b!923419 (= lt!414925 (lemmaListMapRecursiveValidKeyArray!105 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!518154 () Unit!31158)

(assert (=> b!923419 (= e!518154 lt!414923)))

(declare-fun b!923420 () Bool)

(assert (=> b!923420 (= e!518159 e!518150)))

(declare-fun res!622722 () Bool)

(assert (=> b!923420 (=> (not res!622722) (not e!518150))))

(assert (=> b!923420 (= res!622722 (contains!4884 lt!414915 k!1099))))

(assert (=> b!923420 (= lt!414915 (getCurrentListMap!3078 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923421 () Bool)

(declare-fun res!622723 () Bool)

(assert (=> b!923421 (=> (not res!622723) (not e!518159))))

(assert (=> b!923421 (= res!622723 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27064 _keys!1487))))))

(declare-fun b!923422 () Bool)

(declare-fun e!518158 () Unit!31158)

(assert (=> b!923422 (= e!518158 e!518154)))

(assert (=> b!923422 (= lt!414924 (select (arr!26604 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96203 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!923422 (= c!96203 (validKeyInArray!0 lt!414924))))

(declare-fun b!923423 () Bool)

(declare-fun e!518157 () Bool)

(assert (=> b!923423 (= e!518157 tp_is_empty!19669)))

(declare-fun b!923424 () Bool)

(declare-fun e!518153 () Bool)

(assert (=> b!923424 (= e!518156 e!518153)))

(declare-fun res!622724 () Bool)

(assert (=> b!923424 (=> (not res!622724) (not e!518153))))

(assert (=> b!923424 (= res!622724 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27064 _keys!1487)))))

(declare-fun lt!414919 () Unit!31158)

(assert (=> b!923424 (= lt!414919 e!518158)))

(declare-fun c!96202 () Bool)

(assert (=> b!923424 (= c!96202 (validKeyInArray!0 k!1099))))

(declare-fun b!923425 () Bool)

(assert (=> b!923425 (= e!518149 tp_is_empty!19669)))

(declare-fun b!923426 () Bool)

(assert (=> b!923426 (= e!518160 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!923427 () Bool)

(declare-fun res!622720 () Bool)

(assert (=> b!923427 (=> (not res!622720) (not e!518159))))

(assert (=> b!923427 (= res!622720 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18812))))

(declare-fun b!923428 () Bool)

(declare-fun Unit!31160 () Unit!31158)

(assert (=> b!923428 (= e!518154 Unit!31160)))

(declare-fun b!923429 () Bool)

(declare-fun res!622717 () Bool)

(assert (=> b!923429 (=> (not res!622717) (not e!518159))))

(assert (=> b!923429 (= res!622717 (and (= (size!27063 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27064 _keys!1487) (size!27063 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!923430 () Bool)

(assert (=> b!923430 (= e!518153 e!518152)))

(declare-fun res!622719 () Bool)

(assert (=> b!923430 (=> (not res!622719) (not e!518152))))

(assert (=> b!923430 (= res!622719 (contains!4884 lt!414917 k!1099))))

(assert (=> b!923430 (= lt!414917 (getCurrentListMap!3078 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!923431 () Bool)

(declare-fun Unit!31161 () Unit!31158)

(assert (=> b!923431 (= e!518158 Unit!31161)))

(declare-fun b!923432 () Bool)

(assert (=> b!923432 (= e!518155 (and e!518157 mapRes!31260))))

(declare-fun condMapEmpty!31260 () Bool)

(declare-fun mapDefault!31260 () ValueCell!9353)

