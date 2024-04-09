; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78962 () Bool)

(assert start!78962)

(declare-fun b_free!17147 () Bool)

(declare-fun b_next!17147 () Bool)

(assert (=> start!78962 (= b_free!17147 (not b_next!17147))))

(declare-fun tp!59883 () Bool)

(declare-fun b_and!28049 () Bool)

(assert (=> start!78962 (= tp!59883 b_and!28049)))

(declare-fun b!923026 () Bool)

(declare-fun e!517908 () Bool)

(declare-fun e!517902 () Bool)

(assert (=> b!923026 (= e!517908 e!517902)))

(declare-fun res!622526 () Bool)

(assert (=> b!923026 (=> (not res!622526) (not e!517902))))

(declare-datatypes ((V!31171 0))(
  ( (V!31172 (val!9878 Int)) )
))
(declare-datatypes ((tuple2!12964 0))(
  ( (tuple2!12965 (_1!6492 (_ BitVec 64)) (_2!6492 V!31171)) )
))
(declare-datatypes ((List!18801 0))(
  ( (Nil!18798) (Cons!18797 (h!19943 tuple2!12964) (t!26686 List!18801)) )
))
(declare-datatypes ((ListLongMap!11675 0))(
  ( (ListLongMap!11676 (toList!5853 List!18801)) )
))
(declare-fun lt!414612 () ListLongMap!11675)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4878 (ListLongMap!11675 (_ BitVec 64)) Bool)

(assert (=> b!923026 (= res!622526 (contains!4878 lt!414612 k!1099))))

(declare-datatypes ((array!55296 0))(
  ( (array!55297 (arr!26589 (Array (_ BitVec 32) (_ BitVec 64))) (size!27049 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55296)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9346 0))(
  ( (ValueCellFull!9346 (v!12396 V!31171)) (EmptyCell!9346) )
))
(declare-datatypes ((array!55298 0))(
  ( (array!55299 (arr!26590 (Array (_ BitVec 32) ValueCell!9346)) (size!27050 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55298)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31171)

(declare-fun minValue!1173 () V!31171)

(declare-fun getCurrentListMap!3072 (array!55296 array!55298 (_ BitVec 32) (_ BitVec 32) V!31171 V!31171 (_ BitVec 32) Int) ListLongMap!11675)

(assert (=> b!923026 (= lt!414612 (getCurrentListMap!3072 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!923027 () Bool)

(declare-fun e!517901 () Bool)

(declare-fun tp_is_empty!19655 () Bool)

(assert (=> b!923027 (= e!517901 tp_is_empty!19655)))

(declare-fun b!923028 () Bool)

(declare-fun res!622532 () Bool)

(assert (=> b!923028 (=> (not res!622532) (not e!517908))))

(assert (=> b!923028 (= res!622532 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27049 _keys!1487))))))

(declare-fun b!923029 () Bool)

(declare-fun e!517906 () Bool)

(assert (=> b!923029 (= e!517906 (not true))))

(declare-fun lt!414610 () (_ BitVec 64))

(assert (=> b!923029 (not (= lt!414610 k!1099))))

(declare-datatypes ((Unit!31137 0))(
  ( (Unit!31138) )
))
(declare-fun lt!414607 () Unit!31137)

(declare-datatypes ((List!18802 0))(
  ( (Nil!18799) (Cons!18798 (h!19944 (_ BitVec 64)) (t!26687 List!18802)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55296 (_ BitVec 64) (_ BitVec 32) List!18802) Unit!31137)

(assert (=> b!923029 (= lt!414607 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18799))))

(declare-fun e!517907 () Bool)

(assert (=> b!923029 e!517907))

(declare-fun c!96140 () Bool)

(assert (=> b!923029 (= c!96140 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414611 () Unit!31137)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!211 (array!55296 array!55298 (_ BitVec 32) (_ BitVec 32) V!31171 V!31171 (_ BitVec 64) (_ BitVec 32) Int) Unit!31137)

(assert (=> b!923029 (= lt!414611 (lemmaListMapContainsThenArrayContainsFrom!211 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55296 (_ BitVec 32) List!18802) Bool)

(assert (=> b!923029 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18799)))

(declare-fun lt!414609 () Unit!31137)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55296 (_ BitVec 32) (_ BitVec 32)) Unit!31137)

(assert (=> b!923029 (= lt!414609 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414606 () tuple2!12964)

(declare-fun +!2665 (ListLongMap!11675 tuple2!12964) ListLongMap!11675)

(assert (=> b!923029 (contains!4878 (+!2665 lt!414612 lt!414606) k!1099)))

(declare-fun lt!414608 () V!31171)

(declare-fun lt!414604 () Unit!31137)

(declare-fun addStillContains!427 (ListLongMap!11675 (_ BitVec 64) V!31171 (_ BitVec 64)) Unit!31137)

(assert (=> b!923029 (= lt!414604 (addStillContains!427 lt!414612 lt!414610 lt!414608 k!1099))))

(assert (=> b!923029 (= (getCurrentListMap!3072 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2665 (getCurrentListMap!3072 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414606))))

(assert (=> b!923029 (= lt!414606 (tuple2!12965 lt!414610 lt!414608))))

(declare-fun get!13992 (ValueCell!9346 V!31171) V!31171)

(declare-fun dynLambda!1504 (Int (_ BitVec 64)) V!31171)

(assert (=> b!923029 (= lt!414608 (get!13992 (select (arr!26590 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1504 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414605 () Unit!31137)

(declare-fun lemmaListMapRecursiveValidKeyArray!100 (array!55296 array!55298 (_ BitVec 32) (_ BitVec 32) V!31171 V!31171 (_ BitVec 32) Int) Unit!31137)

(assert (=> b!923029 (= lt!414605 (lemmaListMapRecursiveValidKeyArray!100 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun res!622535 () Bool)

(assert (=> start!78962 (=> (not res!622535) (not e!517908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78962 (= res!622535 (validMask!0 mask!1881))))

(assert (=> start!78962 e!517908))

(assert (=> start!78962 true))

(assert (=> start!78962 tp_is_empty!19655))

(declare-fun e!517905 () Bool)

(declare-fun array_inv!20702 (array!55298) Bool)

(assert (=> start!78962 (and (array_inv!20702 _values!1231) e!517905)))

(assert (=> start!78962 tp!59883))

(declare-fun array_inv!20703 (array!55296) Bool)

(assert (=> start!78962 (array_inv!20703 _keys!1487)))

(declare-fun b!923030 () Bool)

(declare-fun e!517903 () Bool)

(declare-fun mapRes!31239 () Bool)

(assert (=> b!923030 (= e!517905 (and e!517903 mapRes!31239))))

(declare-fun condMapEmpty!31239 () Bool)

(declare-fun mapDefault!31239 () ValueCell!9346)

