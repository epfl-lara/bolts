; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78756 () Bool)

(assert start!78756)

(declare-fun b_free!16941 () Bool)

(declare-fun b_next!16941 () Bool)

(assert (=> start!78756 (= b_free!16941 (not b_next!16941))))

(declare-fun tp!59264 () Bool)

(declare-fun b_and!27637 () Bool)

(assert (=> start!78756 (= tp!59264 b_and!27637)))

(declare-fun b!918220 () Bool)

(declare-fun e!515490 () Bool)

(declare-fun tp_is_empty!19449 () Bool)

(assert (=> b!918220 (= e!515490 tp_is_empty!19449)))

(declare-fun b!918221 () Bool)

(declare-fun res!619195 () Bool)

(declare-fun e!515492 () Bool)

(assert (=> b!918221 (=> (not res!619195) (not e!515492))))

(declare-datatypes ((array!54890 0))(
  ( (array!54891 (arr!26386 (Array (_ BitVec 32) (_ BitVec 64))) (size!26846 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54890)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54890 (_ BitVec 32)) Bool)

(assert (=> b!918221 (= res!619195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!918222 () Bool)

(declare-fun res!619197 () Bool)

(declare-fun e!515489 () Bool)

(assert (=> b!918222 (=> (not res!619197) (not e!515489))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!918222 (= res!619197 (validKeyInArray!0 k0!1099))))

(declare-fun b!918223 () Bool)

(declare-fun e!515491 () Bool)

(declare-fun mapRes!30930 () Bool)

(assert (=> b!918223 (= e!515491 (and e!515490 mapRes!30930))))

(declare-fun condMapEmpty!30930 () Bool)

(declare-datatypes ((V!30897 0))(
  ( (V!30898 (val!9775 Int)) )
))
(declare-datatypes ((ValueCell!9243 0))(
  ( (ValueCellFull!9243 (v!12293 V!30897)) (EmptyCell!9243) )
))
(declare-datatypes ((array!54892 0))(
  ( (array!54893 (arr!26387 (Array (_ BitVec 32) ValueCell!9243)) (size!26847 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54892)

(declare-fun mapDefault!30930 () ValueCell!9243)

(assert (=> b!918223 (= condMapEmpty!30930 (= (arr!26387 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9243)) mapDefault!30930)))))

(declare-fun res!619196 () Bool)

(assert (=> start!78756 (=> (not res!619196) (not e!515492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78756 (= res!619196 (validMask!0 mask!1881))))

(assert (=> start!78756 e!515492))

(assert (=> start!78756 true))

(assert (=> start!78756 tp_is_empty!19449))

(declare-fun array_inv!20560 (array!54892) Bool)

(assert (=> start!78756 (and (array_inv!20560 _values!1231) e!515491)))

(assert (=> start!78756 tp!59264))

(declare-fun array_inv!20561 (array!54890) Bool)

(assert (=> start!78756 (array_inv!20561 _keys!1487)))

(declare-fun b!918224 () Bool)

(declare-fun e!515488 () Bool)

(assert (=> b!918224 (= e!515488 tp_is_empty!19449)))

(declare-fun mapNonEmpty!30930 () Bool)

(declare-fun tp!59265 () Bool)

(assert (=> mapNonEmpty!30930 (= mapRes!30930 (and tp!59265 e!515488))))

(declare-fun mapValue!30930 () ValueCell!9243)

(declare-fun mapKey!30930 () (_ BitVec 32))

(declare-fun mapRest!30930 () (Array (_ BitVec 32) ValueCell!9243))

(assert (=> mapNonEmpty!30930 (= (arr!26387 _values!1231) (store mapRest!30930 mapKey!30930 mapValue!30930))))

(declare-fun b!918225 () Bool)

(declare-fun res!619198 () Bool)

(assert (=> b!918225 (=> (not res!619198) (not e!515492))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!918225 (= res!619198 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26846 _keys!1487))))))

(declare-fun b!918226 () Bool)

(declare-fun res!619201 () Bool)

(assert (=> b!918226 (=> (not res!619201) (not e!515489))))

(assert (=> b!918226 (= res!619201 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!918227 () Bool)

(declare-fun res!619199 () Bool)

(assert (=> b!918227 (=> (not res!619199) (not e!515492))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!918227 (= res!619199 (and (= (size!26847 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26846 _keys!1487) (size!26847 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!30930 () Bool)

(assert (=> mapIsEmpty!30930 mapRes!30930))

(declare-fun b!918228 () Bool)

(declare-fun res!619200 () Bool)

(assert (=> b!918228 (=> (not res!619200) (not e!515492))))

(declare-datatypes ((List!18621 0))(
  ( (Nil!18618) (Cons!18617 (h!19763 (_ BitVec 64)) (t!26300 List!18621)) )
))
(declare-fun arrayNoDuplicates!0 (array!54890 (_ BitVec 32) List!18621) Bool)

(assert (=> b!918228 (= res!619200 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18618))))

(declare-fun b!918229 () Bool)

(declare-fun res!619193 () Bool)

(assert (=> b!918229 (=> (not res!619193) (not e!515489))))

(declare-fun v!791 () V!30897)

(declare-datatypes ((tuple2!12776 0))(
  ( (tuple2!12777 (_1!6398 (_ BitVec 64)) (_2!6398 V!30897)) )
))
(declare-datatypes ((List!18622 0))(
  ( (Nil!18619) (Cons!18618 (h!19764 tuple2!12776) (t!26301 List!18622)) )
))
(declare-datatypes ((ListLongMap!11487 0))(
  ( (ListLongMap!11488 (toList!5759 List!18622)) )
))
(declare-fun lt!412163 () ListLongMap!11487)

(declare-fun apply!579 (ListLongMap!11487 (_ BitVec 64)) V!30897)

(assert (=> b!918229 (= res!619193 (= (apply!579 lt!412163 k0!1099) v!791))))

(declare-fun b!918230 () Bool)

(declare-fun e!515487 () Bool)

(assert (=> b!918230 (= e!515489 e!515487)))

(declare-fun res!619194 () Bool)

(assert (=> b!918230 (=> (not res!619194) (not e!515487))))

(declare-fun lt!412162 () (_ BitVec 64))

(assert (=> b!918230 (= res!619194 (validKeyInArray!0 lt!412162))))

(assert (=> b!918230 (= lt!412162 (select (arr!26386 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!918231 () Bool)

(assert (=> b!918231 (= e!515487 (not true))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30897)

(declare-fun minValue!1173 () V!30897)

(declare-fun getCurrentListMap!2985 (array!54890 array!54892 (_ BitVec 32) (_ BitVec 32) V!30897 V!30897 (_ BitVec 32) Int) ListLongMap!11487)

(declare-fun +!2589 (ListLongMap!11487 tuple2!12776) ListLongMap!11487)

(declare-fun get!13848 (ValueCell!9243 V!30897) V!30897)

(declare-fun dynLambda!1428 (Int (_ BitVec 64)) V!30897)

(assert (=> b!918231 (= (getCurrentListMap!2985 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2589 (getCurrentListMap!2985 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!12777 lt!412162 (get!13848 (select (arr!26387 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1428 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!30985 0))(
  ( (Unit!30986) )
))
(declare-fun lt!412164 () Unit!30985)

(declare-fun lemmaListMapRecursiveValidKeyArray!24 (array!54890 array!54892 (_ BitVec 32) (_ BitVec 32) V!30897 V!30897 (_ BitVec 32) Int) Unit!30985)

(assert (=> b!918231 (= lt!412164 (lemmaListMapRecursiveValidKeyArray!24 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!918232 () Bool)

(assert (=> b!918232 (= e!515492 e!515489)))

(declare-fun res!619202 () Bool)

(assert (=> b!918232 (=> (not res!619202) (not e!515489))))

(declare-fun contains!4773 (ListLongMap!11487 (_ BitVec 64)) Bool)

(assert (=> b!918232 (= res!619202 (contains!4773 lt!412163 k0!1099))))

(assert (=> b!918232 (= lt!412163 (getCurrentListMap!2985 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(assert (= (and start!78756 res!619196) b!918227))

(assert (= (and b!918227 res!619199) b!918221))

(assert (= (and b!918221 res!619195) b!918228))

(assert (= (and b!918228 res!619200) b!918225))

(assert (= (and b!918225 res!619198) b!918232))

(assert (= (and b!918232 res!619202) b!918229))

(assert (= (and b!918229 res!619193) b!918226))

(assert (= (and b!918226 res!619201) b!918222))

(assert (= (and b!918222 res!619197) b!918230))

(assert (= (and b!918230 res!619194) b!918231))

(assert (= (and b!918223 condMapEmpty!30930) mapIsEmpty!30930))

(assert (= (and b!918223 (not condMapEmpty!30930)) mapNonEmpty!30930))

(get-info :version)

(assert (= (and mapNonEmpty!30930 ((_ is ValueCellFull!9243) mapValue!30930)) b!918224))

(assert (= (and b!918223 ((_ is ValueCellFull!9243) mapDefault!30930)) b!918220))

(assert (= start!78756 b!918223))

(declare-fun b_lambda!13473 () Bool)

(assert (=> (not b_lambda!13473) (not b!918231)))

(declare-fun t!26299 () Bool)

(declare-fun tb!5529 () Bool)

(assert (=> (and start!78756 (= defaultEntry!1235 defaultEntry!1235) t!26299) tb!5529))

(declare-fun result!10873 () Bool)

(assert (=> tb!5529 (= result!10873 tp_is_empty!19449)))

(assert (=> b!918231 t!26299))

(declare-fun b_and!27639 () Bool)

(assert (= b_and!27637 (and (=> t!26299 result!10873) b_and!27639)))

(declare-fun m!852003 () Bool)

(assert (=> b!918221 m!852003))

(declare-fun m!852005 () Bool)

(assert (=> b!918232 m!852005))

(declare-fun m!852007 () Bool)

(assert (=> b!918232 m!852007))

(declare-fun m!852009 () Bool)

(assert (=> b!918231 m!852009))

(declare-fun m!852011 () Bool)

(assert (=> b!918231 m!852011))

(declare-fun m!852013 () Bool)

(assert (=> b!918231 m!852013))

(declare-fun m!852015 () Bool)

(assert (=> b!918231 m!852015))

(assert (=> b!918231 m!852013))

(assert (=> b!918231 m!852015))

(declare-fun m!852017 () Bool)

(assert (=> b!918231 m!852017))

(declare-fun m!852019 () Bool)

(assert (=> b!918231 m!852019))

(assert (=> b!918231 m!852009))

(declare-fun m!852021 () Bool)

(assert (=> b!918231 m!852021))

(declare-fun m!852023 () Bool)

(assert (=> b!918229 m!852023))

(declare-fun m!852025 () Bool)

(assert (=> b!918222 m!852025))

(declare-fun m!852027 () Bool)

(assert (=> start!78756 m!852027))

(declare-fun m!852029 () Bool)

(assert (=> start!78756 m!852029))

(declare-fun m!852031 () Bool)

(assert (=> start!78756 m!852031))

(declare-fun m!852033 () Bool)

(assert (=> b!918230 m!852033))

(declare-fun m!852035 () Bool)

(assert (=> b!918230 m!852035))

(declare-fun m!852037 () Bool)

(assert (=> b!918228 m!852037))

(declare-fun m!852039 () Bool)

(assert (=> mapNonEmpty!30930 m!852039))

(check-sat (not b!918222) (not mapNonEmpty!30930) (not start!78756) (not b!918230) (not b!918221) tp_is_empty!19449 (not b_next!16941) (not b!918231) b_and!27639 (not b_lambda!13473) (not b!918229) (not b!918228) (not b!918232))
(check-sat b_and!27639 (not b_next!16941))
