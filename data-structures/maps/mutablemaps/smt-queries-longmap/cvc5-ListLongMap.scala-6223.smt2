; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79566 () Bool)

(assert start!79566)

(declare-fun b_free!17659 () Bool)

(declare-fun b_next!17659 () Bool)

(assert (=> start!79566 (= b_free!17659 (not b_next!17659))))

(declare-fun tp!61428 () Bool)

(declare-fun b_and!28911 () Bool)

(assert (=> start!79566 (= tp!61428 b_and!28911)))

(declare-fun b!934852 () Bool)

(declare-fun e!524960 () Bool)

(declare-fun tp_is_empty!20167 () Bool)

(assert (=> b!934852 (= e!524960 tp_is_empty!20167)))

(declare-fun b!934853 () Bool)

(declare-fun res!629697 () Bool)

(declare-fun e!524953 () Bool)

(assert (=> b!934853 (=> (not res!629697) (not e!524953))))

(declare-datatypes ((array!56294 0))(
  ( (array!56295 (arr!27085 (Array (_ BitVec 32) (_ BitVec 64))) (size!27545 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56294)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56294 (_ BitVec 32)) Bool)

(assert (=> b!934853 (= res!629697 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934854 () Bool)

(declare-fun e!524957 () Bool)

(declare-datatypes ((List!19209 0))(
  ( (Nil!19206) (Cons!19205 (h!20351 (_ BitVec 64)) (t!27420 List!19209)) )
))
(declare-fun contains!5075 (List!19209 (_ BitVec 64)) Bool)

(assert (=> b!934854 (= e!524957 (not (contains!5075 Nil!19206 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!934855 () Bool)

(declare-fun res!629692 () Bool)

(declare-fun e!524959 () Bool)

(assert (=> b!934855 (=> res!629692 e!524959)))

(declare-fun noDuplicate!1354 (List!19209) Bool)

(assert (=> b!934855 (= res!629692 (not (noDuplicate!1354 Nil!19206)))))

(declare-fun mapIsEmpty!32016 () Bool)

(declare-fun mapRes!32016 () Bool)

(assert (=> mapIsEmpty!32016 mapRes!32016))

(declare-fun b!934856 () Bool)

(declare-fun res!629688 () Bool)

(declare-fun e!524958 () Bool)

(assert (=> b!934856 (=> (not res!629688) (not e!524958))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!934856 (= res!629688 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934857 () Bool)

(declare-fun res!629690 () Bool)

(assert (=> b!934857 (=> (not res!629690) (not e!524953))))

(assert (=> b!934857 (= res!629690 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27545 _keys!1487))))))

(declare-fun b!934858 () Bool)

(declare-fun res!629691 () Bool)

(assert (=> b!934858 (=> (not res!629691) (not e!524953))))

(declare-fun arrayNoDuplicates!0 (array!56294 (_ BitVec 32) List!19209) Bool)

(assert (=> b!934858 (= res!629691 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19206))))

(declare-fun b!934859 () Bool)

(declare-fun e!524955 () Bool)

(assert (=> b!934859 (= e!524958 e!524955)))

(declare-fun res!629687 () Bool)

(assert (=> b!934859 (=> (not res!629687) (not e!524955))))

(declare-fun lt!421275 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934859 (= res!629687 (validKeyInArray!0 lt!421275))))

(assert (=> b!934859 (= lt!421275 (select (arr!27085 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!934861 () Bool)

(assert (=> b!934861 (= e!524955 (not e!524959))))

(declare-fun res!629693 () Bool)

(assert (=> b!934861 (=> res!629693 e!524959)))

(assert (=> b!934861 (= res!629693 (or (bvsge (size!27545 _keys!1487) #b01111111111111111111111111111111) (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27545 _keys!1487))))))

(declare-fun e!524954 () Bool)

(assert (=> b!934861 e!524954))

(declare-fun c!97144 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(assert (=> b!934861 (= c!97144 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!31855 0))(
  ( (V!31856 (val!10134 Int)) )
))
(declare-datatypes ((ValueCell!9602 0))(
  ( (ValueCellFull!9602 (v!12655 V!31855)) (EmptyCell!9602) )
))
(declare-datatypes ((array!56296 0))(
  ( (array!56297 (arr!27086 (Array (_ BitVec 32) ValueCell!9602)) (size!27546 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56296)

(declare-fun defaultEntry!1235 () Int)

(declare-datatypes ((Unit!31540 0))(
  ( (Unit!31541) )
))
(declare-fun lt!421271 () Unit!31540)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31855)

(declare-fun minValue!1173 () V!31855)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!284 (array!56294 array!56296 (_ BitVec 32) (_ BitVec 32) V!31855 V!31855 (_ BitVec 64) (_ BitVec 32) Int) Unit!31540)

(assert (=> b!934861 (= lt!421271 (lemmaListMapContainsThenArrayContainsFrom!284 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!934861 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19206)))

(declare-fun lt!421273 () Unit!31540)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56294 (_ BitVec 32) (_ BitVec 32)) Unit!31540)

(assert (=> b!934861 (= lt!421273 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-datatypes ((tuple2!13402 0))(
  ( (tuple2!13403 (_1!6711 (_ BitVec 64)) (_2!6711 V!31855)) )
))
(declare-datatypes ((List!19210 0))(
  ( (Nil!19207) (Cons!19206 (h!20352 tuple2!13402) (t!27421 List!19210)) )
))
(declare-datatypes ((ListLongMap!12113 0))(
  ( (ListLongMap!12114 (toList!6072 List!19210)) )
))
(declare-fun lt!421272 () ListLongMap!12113)

(declare-fun lt!421269 () tuple2!13402)

(declare-fun contains!5076 (ListLongMap!12113 (_ BitVec 64)) Bool)

(declare-fun +!2771 (ListLongMap!12113 tuple2!13402) ListLongMap!12113)

(assert (=> b!934861 (contains!5076 (+!2771 lt!421272 lt!421269) k!1099)))

(declare-fun lt!421274 () Unit!31540)

(declare-fun lt!421270 () V!31855)

(declare-fun addStillContains!527 (ListLongMap!12113 (_ BitVec 64) V!31855 (_ BitVec 64)) Unit!31540)

(assert (=> b!934861 (= lt!421274 (addStillContains!527 lt!421272 lt!421275 lt!421270 k!1099))))

(declare-fun getCurrentListMap!3264 (array!56294 array!56296 (_ BitVec 32) (_ BitVec 32) V!31855 V!31855 (_ BitVec 32) Int) ListLongMap!12113)

(assert (=> b!934861 (= (getCurrentListMap!3264 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2771 (getCurrentListMap!3264 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!421269))))

(assert (=> b!934861 (= lt!421269 (tuple2!13403 lt!421275 lt!421270))))

(declare-fun get!14279 (ValueCell!9602 V!31855) V!31855)

(declare-fun dynLambda!1610 (Int (_ BitVec 64)) V!31855)

(assert (=> b!934861 (= lt!421270 (get!14279 (select (arr!27086 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1610 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!421268 () Unit!31540)

(declare-fun lemmaListMapRecursiveValidKeyArray!206 (array!56294 array!56296 (_ BitVec 32) (_ BitVec 32) V!31855 V!31855 (_ BitVec 32) Int) Unit!31540)

(assert (=> b!934861 (= lt!421268 (lemmaListMapRecursiveValidKeyArray!206 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934862 () Bool)

(declare-fun res!629694 () Bool)

(assert (=> b!934862 (=> (not res!629694) (not e!524958))))

(declare-fun v!791 () V!31855)

(declare-fun apply!851 (ListLongMap!12113 (_ BitVec 64)) V!31855)

(assert (=> b!934862 (= res!629694 (= (apply!851 lt!421272 k!1099) v!791))))

(declare-fun b!934863 () Bool)

(declare-fun res!629698 () Bool)

(assert (=> b!934863 (=> (not res!629698) (not e!524958))))

(assert (=> b!934863 (= res!629698 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!32016 () Bool)

(declare-fun tp!61427 () Bool)

(assert (=> mapNonEmpty!32016 (= mapRes!32016 (and tp!61427 e!524960))))

(declare-fun mapValue!32016 () ValueCell!9602)

(declare-fun mapRest!32016 () (Array (_ BitVec 32) ValueCell!9602))

(declare-fun mapKey!32016 () (_ BitVec 32))

(assert (=> mapNonEmpty!32016 (= (arr!27086 _values!1231) (store mapRest!32016 mapKey!32016 mapValue!32016))))

(declare-fun b!934864 () Bool)

(assert (=> b!934864 (= e!524953 e!524958)))

(declare-fun res!629695 () Bool)

(assert (=> b!934864 (=> (not res!629695) (not e!524958))))

(assert (=> b!934864 (= res!629695 (contains!5076 lt!421272 k!1099))))

(assert (=> b!934864 (= lt!421272 (getCurrentListMap!3264 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934865 () Bool)

(declare-fun res!629689 () Bool)

(assert (=> b!934865 (=> (not res!629689) (not e!524953))))

(assert (=> b!934865 (= res!629689 (and (= (size!27546 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27545 _keys!1487) (size!27546 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934866 () Bool)

(assert (=> b!934866 (= e!524959 e!524957)))

(declare-fun res!629699 () Bool)

(assert (=> b!934866 (=> (not res!629699) (not e!524957))))

(assert (=> b!934866 (= res!629699 (not (contains!5075 Nil!19206 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!934867 () Bool)

(declare-fun arrayContainsKey!0 (array!56294 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934867 (= e!524954 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!934868 () Bool)

(declare-fun e!524956 () Bool)

(declare-fun e!524951 () Bool)

(assert (=> b!934868 (= e!524956 (and e!524951 mapRes!32016))))

(declare-fun condMapEmpty!32016 () Bool)

(declare-fun mapDefault!32016 () ValueCell!9602)

