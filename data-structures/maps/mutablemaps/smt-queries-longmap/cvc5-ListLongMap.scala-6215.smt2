; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79452 () Bool)

(assert start!79452)

(declare-fun b_free!17611 () Bool)

(declare-fun b_next!17611 () Bool)

(assert (=> start!79452 (= b_free!17611 (not b_next!17611))))

(declare-fun tp!61278 () Bool)

(declare-fun b_and!28799 () Bool)

(assert (=> start!79452 (= tp!61278 b_and!28799)))

(declare-fun b!933361 () Bool)

(declare-fun res!628781 () Bool)

(declare-fun e!524127 () Bool)

(assert (=> b!933361 (=> (not res!628781) (not e!524127))))

(declare-datatypes ((array!56198 0))(
  ( (array!56199 (arr!27039 (Array (_ BitVec 32) (_ BitVec 64))) (size!27499 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56198)

(declare-datatypes ((List!19168 0))(
  ( (Nil!19165) (Cons!19164 (h!20310 (_ BitVec 64)) (t!27331 List!19168)) )
))
(declare-fun arrayNoDuplicates!0 (array!56198 (_ BitVec 32) List!19168) Bool)

(assert (=> b!933361 (= res!628781 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19165))))

(declare-fun b!933362 () Bool)

(declare-fun res!628783 () Bool)

(declare-fun e!524128 () Bool)

(assert (=> b!933362 (=> (not res!628783) (not e!524128))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31791 0))(
  ( (V!31792 (val!10110 Int)) )
))
(declare-datatypes ((tuple2!13360 0))(
  ( (tuple2!13361 (_1!6690 (_ BitVec 64)) (_2!6690 V!31791)) )
))
(declare-datatypes ((List!19169 0))(
  ( (Nil!19166) (Cons!19165 (h!20311 tuple2!13360) (t!27332 List!19169)) )
))
(declare-datatypes ((ListLongMap!12071 0))(
  ( (ListLongMap!12072 (toList!6051 List!19169)) )
))
(declare-fun lt!420384 () ListLongMap!12071)

(declare-fun v!791 () V!31791)

(declare-fun apply!833 (ListLongMap!12071 (_ BitVec 64)) V!31791)

(assert (=> b!933362 (= res!628783 (= (apply!833 lt!420384 k!1099) v!791))))

(declare-fun b!933363 () Bool)

(declare-fun e!524131 () Bool)

(assert (=> b!933363 (= e!524131 (not true))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!933363 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19165)))

(declare-datatypes ((Unit!31492 0))(
  ( (Unit!31493) )
))
(declare-fun lt!420386 () Unit!31492)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56198 (_ BitVec 32) (_ BitVec 32)) Unit!31492)

(assert (=> b!933363 (= lt!420386 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420388 () tuple2!13360)

(declare-fun contains!5050 (ListLongMap!12071 (_ BitVec 64)) Bool)

(declare-fun +!2752 (ListLongMap!12071 tuple2!13360) ListLongMap!12071)

(assert (=> b!933363 (contains!5050 (+!2752 lt!420384 lt!420388) k!1099)))

(declare-fun lt!420385 () (_ BitVec 64))

(declare-fun lt!420382 () V!31791)

(declare-fun lt!420383 () Unit!31492)

(declare-fun addStillContains!508 (ListLongMap!12071 (_ BitVec 64) V!31791 (_ BitVec 64)) Unit!31492)

(assert (=> b!933363 (= lt!420383 (addStillContains!508 lt!420384 lt!420385 lt!420382 k!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9578 0))(
  ( (ValueCellFull!9578 (v!12629 V!31791)) (EmptyCell!9578) )
))
(declare-datatypes ((array!56200 0))(
  ( (array!56201 (arr!27040 (Array (_ BitVec 32) ValueCell!9578)) (size!27500 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56200)

(declare-fun defaultEntry!1235 () Int)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31791)

(declare-fun minValue!1173 () V!31791)

(declare-fun getCurrentListMap!3243 (array!56198 array!56200 (_ BitVec 32) (_ BitVec 32) V!31791 V!31791 (_ BitVec 32) Int) ListLongMap!12071)

(assert (=> b!933363 (= (getCurrentListMap!3243 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2752 (getCurrentListMap!3243 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420388))))

(assert (=> b!933363 (= lt!420388 (tuple2!13361 lt!420385 lt!420382))))

(declare-fun get!14238 (ValueCell!9578 V!31791) V!31791)

(declare-fun dynLambda!1591 (Int (_ BitVec 64)) V!31791)

(assert (=> b!933363 (= lt!420382 (get!14238 (select (arr!27040 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1591 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420387 () Unit!31492)

(declare-fun lemmaListMapRecursiveValidKeyArray!187 (array!56198 array!56200 (_ BitVec 32) (_ BitVec 32) V!31791 V!31791 (_ BitVec 32) Int) Unit!31492)

(assert (=> b!933363 (= lt!420387 (lemmaListMapRecursiveValidKeyArray!187 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31938 () Bool)

(declare-fun mapRes!31938 () Bool)

(assert (=> mapIsEmpty!31938 mapRes!31938))

(declare-fun b!933364 () Bool)

(declare-fun e!524129 () Bool)

(declare-fun tp_is_empty!20119 () Bool)

(assert (=> b!933364 (= e!524129 tp_is_empty!20119)))

(declare-fun b!933365 () Bool)

(declare-fun res!628787 () Bool)

(assert (=> b!933365 (=> (not res!628787) (not e!524127))))

(assert (=> b!933365 (= res!628787 (and (= (size!27500 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27499 _keys!1487) (size!27500 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!933366 () Bool)

(declare-fun res!628786 () Bool)

(assert (=> b!933366 (=> (not res!628786) (not e!524127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56198 (_ BitVec 32)) Bool)

(assert (=> b!933366 (= res!628786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!933367 () Bool)

(declare-fun res!628778 () Bool)

(assert (=> b!933367 (=> (not res!628778) (not e!524128))))

(assert (=> b!933367 (= res!628778 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!31938 () Bool)

(declare-fun tp!61277 () Bool)

(declare-fun e!524130 () Bool)

(assert (=> mapNonEmpty!31938 (= mapRes!31938 (and tp!61277 e!524130))))

(declare-fun mapKey!31938 () (_ BitVec 32))

(declare-fun mapRest!31938 () (Array (_ BitVec 32) ValueCell!9578))

(declare-fun mapValue!31938 () ValueCell!9578)

(assert (=> mapNonEmpty!31938 (= (arr!27040 _values!1231) (store mapRest!31938 mapKey!31938 mapValue!31938))))

(declare-fun b!933369 () Bool)

(declare-fun res!628784 () Bool)

(assert (=> b!933369 (=> (not res!628784) (not e!524127))))

(assert (=> b!933369 (= res!628784 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27499 _keys!1487))))))

(declare-fun b!933370 () Bool)

(declare-fun res!628779 () Bool)

(assert (=> b!933370 (=> (not res!628779) (not e!524128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933370 (= res!628779 (validKeyInArray!0 k!1099))))

(declare-fun b!933371 () Bool)

(declare-fun e!524132 () Bool)

(assert (=> b!933371 (= e!524132 (and e!524129 mapRes!31938))))

(declare-fun condMapEmpty!31938 () Bool)

(declare-fun mapDefault!31938 () ValueCell!9578)

