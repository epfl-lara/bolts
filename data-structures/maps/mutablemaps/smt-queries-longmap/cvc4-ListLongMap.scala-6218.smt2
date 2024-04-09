; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79506 () Bool)

(assert start!79506)

(declare-fun b_free!17633 () Bool)

(declare-fun b_next!17633 () Bool)

(assert (=> start!79506 (= b_free!17633 (not b_next!17633))))

(declare-fun tp!61346 () Bool)

(declare-fun b_and!28851 () Bool)

(assert (=> start!79506 (= tp!61346 b_and!28851)))

(declare-fun b!934033 () Bool)

(declare-fun e!524503 () Bool)

(declare-fun e!524504 () Bool)

(assert (=> b!934033 (= e!524503 e!524504)))

(declare-fun res!629195 () Bool)

(assert (=> b!934033 (=> (not res!629195) (not e!524504))))

(declare-datatypes ((V!31819 0))(
  ( (V!31820 (val!10121 Int)) )
))
(declare-datatypes ((tuple2!13378 0))(
  ( (tuple2!13379 (_1!6699 (_ BitVec 64)) (_2!6699 V!31819)) )
))
(declare-datatypes ((List!19185 0))(
  ( (Nil!19182) (Cons!19181 (h!20327 tuple2!13378) (t!27370 List!19185)) )
))
(declare-datatypes ((ListLongMap!12089 0))(
  ( (ListLongMap!12090 (toList!6060 List!19185)) )
))
(declare-fun lt!420798 () ListLongMap!12089)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5061 (ListLongMap!12089 (_ BitVec 64)) Bool)

(assert (=> b!934033 (= res!629195 (contains!5061 lt!420798 k!1099))))

(declare-datatypes ((array!56240 0))(
  ( (array!56241 (arr!27059 (Array (_ BitVec 32) (_ BitVec 64))) (size!27519 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56240)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9589 0))(
  ( (ValueCellFull!9589 (v!12641 V!31819)) (EmptyCell!9589) )
))
(declare-datatypes ((array!56242 0))(
  ( (array!56243 (arr!27060 (Array (_ BitVec 32) ValueCell!9589)) (size!27520 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56242)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31819)

(declare-fun minValue!1173 () V!31819)

(declare-fun getCurrentListMap!3252 (array!56240 array!56242 (_ BitVec 32) (_ BitVec 32) V!31819 V!31819 (_ BitVec 32) Int) ListLongMap!12089)

(assert (=> b!934033 (= lt!420798 (getCurrentListMap!3252 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934034 () Bool)

(declare-fun e!524498 () Bool)

(declare-fun arrayContainsKey!0 (array!56240 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934034 (= e!524498 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!934035 () Bool)

(declare-fun res!629194 () Bool)

(assert (=> b!934035 (=> (not res!629194) (not e!524503))))

(declare-datatypes ((List!19186 0))(
  ( (Nil!19183) (Cons!19182 (h!20328 (_ BitVec 64)) (t!27371 List!19186)) )
))
(declare-fun arrayNoDuplicates!0 (array!56240 (_ BitVec 32) List!19186) Bool)

(assert (=> b!934035 (= res!629194 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19183))))

(declare-fun b!934036 () Bool)

(declare-fun res!629201 () Bool)

(assert (=> b!934036 (=> (not res!629201) (not e!524503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56240 (_ BitVec 32)) Bool)

(assert (=> b!934036 (= res!629201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31974 () Bool)

(declare-fun mapRes!31974 () Bool)

(declare-fun tp!61347 () Bool)

(declare-fun e!524497 () Bool)

(assert (=> mapNonEmpty!31974 (= mapRes!31974 (and tp!61347 e!524497))))

(declare-fun mapValue!31974 () ValueCell!9589)

(declare-fun mapRest!31974 () (Array (_ BitVec 32) ValueCell!9589))

(declare-fun mapKey!31974 () (_ BitVec 32))

(assert (=> mapNonEmpty!31974 (= (arr!27060 _values!1231) (store mapRest!31974 mapKey!31974 mapValue!31974))))

(declare-fun b!934037 () Bool)

(declare-fun res!629199 () Bool)

(assert (=> b!934037 (=> (not res!629199) (not e!524504))))

(assert (=> b!934037 (= res!629199 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934038 () Bool)

(declare-fun res!629198 () Bool)

(assert (=> b!934038 (=> (not res!629198) (not e!524503))))

(assert (=> b!934038 (= res!629198 (and (= (size!27520 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27519 _keys!1487) (size!27520 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934039 () Bool)

(declare-fun res!629200 () Bool)

(assert (=> b!934039 (=> (not res!629200) (not e!524504))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934039 (= res!629200 (validKeyInArray!0 k!1099))))

(declare-fun res!629197 () Bool)

(assert (=> start!79506 (=> (not res!629197) (not e!524503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79506 (= res!629197 (validMask!0 mask!1881))))

(assert (=> start!79506 e!524503))

(assert (=> start!79506 true))

(declare-fun tp_is_empty!20141 () Bool)

(assert (=> start!79506 tp_is_empty!20141))

(declare-fun e!524501 () Bool)

(declare-fun array_inv!21012 (array!56242) Bool)

(assert (=> start!79506 (and (array_inv!21012 _values!1231) e!524501)))

(assert (=> start!79506 tp!61346))

(declare-fun array_inv!21013 (array!56240) Bool)

(assert (=> start!79506 (array_inv!21013 _keys!1487)))

(declare-fun b!934040 () Bool)

(declare-fun res!629193 () Bool)

(assert (=> b!934040 (=> (not res!629193) (not e!524504))))

(declare-fun v!791 () V!31819)

(declare-fun apply!841 (ListLongMap!12089 (_ BitVec 64)) V!31819)

(assert (=> b!934040 (= res!629193 (= (apply!841 lt!420798 k!1099) v!791))))

(declare-fun b!934041 () Bool)

(declare-fun res!629196 () Bool)

(assert (=> b!934041 (=> (not res!629196) (not e!524503))))

(assert (=> b!934041 (= res!629196 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27519 _keys!1487))))))

(declare-fun b!934042 () Bool)

(declare-fun e!524500 () Bool)

(assert (=> b!934042 (= e!524500 (not true))))

(assert (=> b!934042 e!524498))

(declare-fun c!97058 () Bool)

(assert (=> b!934042 (= c!97058 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31513 0))(
  ( (Unit!31514) )
))
(declare-fun lt!420794 () Unit!31513)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!273 (array!56240 array!56242 (_ BitVec 32) (_ BitVec 32) V!31819 V!31819 (_ BitVec 64) (_ BitVec 32) Int) Unit!31513)

(assert (=> b!934042 (= lt!420794 (lemmaListMapContainsThenArrayContainsFrom!273 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!934042 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19183)))

(declare-fun lt!420797 () Unit!31513)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56240 (_ BitVec 32) (_ BitVec 32)) Unit!31513)

(assert (=> b!934042 (= lt!420797 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420795 () tuple2!13378)

(declare-fun +!2760 (ListLongMap!12089 tuple2!13378) ListLongMap!12089)

(assert (=> b!934042 (contains!5061 (+!2760 lt!420798 lt!420795) k!1099)))

(declare-fun lt!420799 () Unit!31513)

(declare-fun lt!420796 () V!31819)

(declare-fun lt!420793 () (_ BitVec 64))

(declare-fun addStillContains!516 (ListLongMap!12089 (_ BitVec 64) V!31819 (_ BitVec 64)) Unit!31513)

(assert (=> b!934042 (= lt!420799 (addStillContains!516 lt!420798 lt!420793 lt!420796 k!1099))))

(assert (=> b!934042 (= (getCurrentListMap!3252 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2760 (getCurrentListMap!3252 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420795))))

(assert (=> b!934042 (= lt!420795 (tuple2!13379 lt!420793 lt!420796))))

(declare-fun get!14255 (ValueCell!9589 V!31819) V!31819)

(declare-fun dynLambda!1599 (Int (_ BitVec 64)) V!31819)

(assert (=> b!934042 (= lt!420796 (get!14255 (select (arr!27060 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1599 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420800 () Unit!31513)

(declare-fun lemmaListMapRecursiveValidKeyArray!195 (array!56240 array!56242 (_ BitVec 32) (_ BitVec 32) V!31819 V!31819 (_ BitVec 32) Int) Unit!31513)

(assert (=> b!934042 (= lt!420800 (lemmaListMapRecursiveValidKeyArray!195 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934043 () Bool)

(declare-fun e!524499 () Bool)

(assert (=> b!934043 (= e!524499 tp_is_empty!20141)))

(declare-fun mapIsEmpty!31974 () Bool)

(assert (=> mapIsEmpty!31974 mapRes!31974))

(declare-fun b!934044 () Bool)

(assert (=> b!934044 (= e!524504 e!524500)))

(declare-fun res!629192 () Bool)

(assert (=> b!934044 (=> (not res!629192) (not e!524500))))

(assert (=> b!934044 (= res!629192 (validKeyInArray!0 lt!420793))))

(assert (=> b!934044 (= lt!420793 (select (arr!27059 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!934045 () Bool)

(assert (=> b!934045 (= e!524501 (and e!524499 mapRes!31974))))

(declare-fun condMapEmpty!31974 () Bool)

(declare-fun mapDefault!31974 () ValueCell!9589)

