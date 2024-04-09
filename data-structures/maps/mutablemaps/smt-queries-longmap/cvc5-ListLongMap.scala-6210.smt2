; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79422 () Bool)

(assert start!79422)

(declare-fun b_free!17581 () Bool)

(declare-fun b_next!17581 () Bool)

(assert (=> start!79422 (= b_free!17581 (not b_next!17581))))

(declare-fun tp!61187 () Bool)

(declare-fun b_and!28739 () Bool)

(assert (=> start!79422 (= tp!61187 b_and!28739)))

(declare-fun b!932746 () Bool)

(declare-fun res!628332 () Bool)

(declare-fun e!523815 () Bool)

(assert (=> b!932746 (=> (not res!628332) (not e!523815))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31751 0))(
  ( (V!31752 (val!10095 Int)) )
))
(declare-fun v!791 () V!31751)

(declare-datatypes ((tuple2!13334 0))(
  ( (tuple2!13335 (_1!6677 (_ BitVec 64)) (_2!6677 V!31751)) )
))
(declare-datatypes ((List!19142 0))(
  ( (Nil!19139) (Cons!19138 (h!20284 tuple2!13334) (t!27275 List!19142)) )
))
(declare-datatypes ((ListLongMap!12045 0))(
  ( (ListLongMap!12046 (toList!6038 List!19142)) )
))
(declare-fun lt!420067 () ListLongMap!12045)

(declare-fun apply!822 (ListLongMap!12045 (_ BitVec 64)) V!31751)

(assert (=> b!932746 (= res!628332 (= (apply!822 lt!420067 k!1099) v!791))))

(declare-fun mapNonEmpty!31893 () Bool)

(declare-fun mapRes!31893 () Bool)

(declare-fun tp!61188 () Bool)

(declare-fun e!523812 () Bool)

(assert (=> mapNonEmpty!31893 (= mapRes!31893 (and tp!61188 e!523812))))

(declare-datatypes ((ValueCell!9563 0))(
  ( (ValueCellFull!9563 (v!12614 V!31751)) (EmptyCell!9563) )
))
(declare-datatypes ((array!56138 0))(
  ( (array!56139 (arr!27009 (Array (_ BitVec 32) ValueCell!9563)) (size!27469 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56138)

(declare-fun mapKey!31893 () (_ BitVec 32))

(declare-fun mapValue!31893 () ValueCell!9563)

(declare-fun mapRest!31893 () (Array (_ BitVec 32) ValueCell!9563))

(assert (=> mapNonEmpty!31893 (= (arr!27009 _values!1231) (store mapRest!31893 mapKey!31893 mapValue!31893))))

(declare-fun b!932747 () Bool)

(declare-fun res!628328 () Bool)

(declare-fun e!523817 () Bool)

(assert (=> b!932747 (=> (not res!628328) (not e!523817))))

(declare-datatypes ((array!56140 0))(
  ( (array!56141 (arr!27010 (Array (_ BitVec 32) (_ BitVec 64))) (size!27470 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56140)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56140 (_ BitVec 32)) Bool)

(assert (=> b!932747 (= res!628328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932748 () Bool)

(declare-fun e!523811 () Bool)

(declare-fun tp_is_empty!20089 () Bool)

(assert (=> b!932748 (= e!523811 tp_is_empty!20089)))

(declare-fun b!932749 () Bool)

(declare-fun res!628329 () Bool)

(assert (=> b!932749 (=> (not res!628329) (not e!523815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932749 (= res!628329 (validKeyInArray!0 k!1099))))

(declare-fun b!932750 () Bool)

(declare-fun res!628331 () Bool)

(assert (=> b!932750 (=> (not res!628331) (not e!523815))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932750 (= res!628331 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932751 () Bool)

(declare-fun res!628334 () Bool)

(assert (=> b!932751 (=> (not res!628334) (not e!523817))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!932751 (= res!628334 (and (= (size!27469 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27470 _keys!1487) (size!27469 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!932752 () Bool)

(declare-fun e!523813 () Bool)

(assert (=> b!932752 (= e!523813 (not true))))

(declare-datatypes ((List!19143 0))(
  ( (Nil!19140) (Cons!19139 (h!20285 (_ BitVec 64)) (t!27276 List!19143)) )
))
(declare-fun arrayNoDuplicates!0 (array!56140 (_ BitVec 32) List!19143) Bool)

(assert (=> b!932752 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19140)))

(declare-datatypes ((Unit!31472 0))(
  ( (Unit!31473) )
))
(declare-fun lt!420071 () Unit!31472)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56140 (_ BitVec 32) (_ BitVec 32)) Unit!31472)

(assert (=> b!932752 (= lt!420071 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420072 () tuple2!13334)

(declare-fun contains!5038 (ListLongMap!12045 (_ BitVec 64)) Bool)

(declare-fun +!2742 (ListLongMap!12045 tuple2!13334) ListLongMap!12045)

(assert (=> b!932752 (contains!5038 (+!2742 lt!420067 lt!420072) k!1099)))

(declare-fun lt!420068 () V!31751)

(declare-fun lt!420070 () Unit!31472)

(declare-fun lt!420069 () (_ BitVec 64))

(declare-fun addStillContains!498 (ListLongMap!12045 (_ BitVec 64) V!31751 (_ BitVec 64)) Unit!31472)

(assert (=> b!932752 (= lt!420070 (addStillContains!498 lt!420067 lt!420069 lt!420068 k!1099))))

(declare-fun zeroValue!1173 () V!31751)

(declare-fun minValue!1173 () V!31751)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3231 (array!56140 array!56138 (_ BitVec 32) (_ BitVec 32) V!31751 V!31751 (_ BitVec 32) Int) ListLongMap!12045)

(assert (=> b!932752 (= (getCurrentListMap!3231 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2742 (getCurrentListMap!3231 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420072))))

(assert (=> b!932752 (= lt!420072 (tuple2!13335 lt!420069 lt!420068))))

(declare-fun get!14218 (ValueCell!9563 V!31751) V!31751)

(declare-fun dynLambda!1581 (Int (_ BitVec 64)) V!31751)

(assert (=> b!932752 (= lt!420068 (get!14218 (select (arr!27009 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1581 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420073 () Unit!31472)

(declare-fun lemmaListMapRecursiveValidKeyArray!177 (array!56140 array!56138 (_ BitVec 32) (_ BitVec 32) V!31751 V!31751 (_ BitVec 32) Int) Unit!31472)

(assert (=> b!932752 (= lt!420073 (lemmaListMapRecursiveValidKeyArray!177 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932753 () Bool)

(assert (=> b!932753 (= e!523815 e!523813)))

(declare-fun res!628337 () Bool)

(assert (=> b!932753 (=> (not res!628337) (not e!523813))))

(assert (=> b!932753 (= res!628337 (validKeyInArray!0 lt!420069))))

(assert (=> b!932753 (= lt!420069 (select (arr!27010 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun res!628330 () Bool)

(assert (=> start!79422 (=> (not res!628330) (not e!523817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79422 (= res!628330 (validMask!0 mask!1881))))

(assert (=> start!79422 e!523817))

(assert (=> start!79422 true))

(assert (=> start!79422 tp_is_empty!20089))

(declare-fun e!523814 () Bool)

(declare-fun array_inv!20988 (array!56138) Bool)

(assert (=> start!79422 (and (array_inv!20988 _values!1231) e!523814)))

(assert (=> start!79422 tp!61187))

(declare-fun array_inv!20989 (array!56140) Bool)

(assert (=> start!79422 (array_inv!20989 _keys!1487)))

(declare-fun b!932754 () Bool)

(declare-fun res!628336 () Bool)

(assert (=> b!932754 (=> (not res!628336) (not e!523817))))

(assert (=> b!932754 (= res!628336 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27470 _keys!1487))))))

(declare-fun b!932755 () Bool)

(declare-fun res!628335 () Bool)

(assert (=> b!932755 (=> (not res!628335) (not e!523817))))

(assert (=> b!932755 (= res!628335 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19140))))

(declare-fun b!932756 () Bool)

(assert (=> b!932756 (= e!523812 tp_is_empty!20089)))

(declare-fun b!932757 () Bool)

(assert (=> b!932757 (= e!523814 (and e!523811 mapRes!31893))))

(declare-fun condMapEmpty!31893 () Bool)

(declare-fun mapDefault!31893 () ValueCell!9563)

