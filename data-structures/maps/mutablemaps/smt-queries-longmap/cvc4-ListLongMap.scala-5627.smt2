; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73578 () Bool)

(assert start!73578)

(declare-fun b_free!14465 () Bool)

(declare-fun b_next!14465 () Bool)

(assert (=> start!73578 (= b_free!14465 (not b_next!14465))))

(declare-fun tp!50899 () Bool)

(declare-fun b_and!23927 () Bool)

(assert (=> start!73578 (= tp!50899 b_and!23927)))

(declare-fun mapIsEmpty!26501 () Bool)

(declare-fun mapRes!26501 () Bool)

(assert (=> mapIsEmpty!26501 mapRes!26501))

(declare-fun b!859769 () Bool)

(declare-fun e!479146 () Bool)

(declare-fun e!479147 () Bool)

(assert (=> b!859769 (= e!479146 e!479147)))

(declare-fun res!584348 () Bool)

(assert (=> b!859769 (=> (not res!584348) (not e!479147))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!859769 (= res!584348 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27181 0))(
  ( (V!27182 (val!8348 Int)) )
))
(declare-datatypes ((tuple2!11018 0))(
  ( (tuple2!11019 (_1!5519 (_ BitVec 64)) (_2!5519 V!27181)) )
))
(declare-datatypes ((List!16890 0))(
  ( (Nil!16887) (Cons!16886 (h!18017 tuple2!11018) (t!23629 List!16890)) )
))
(declare-datatypes ((ListLongMap!9801 0))(
  ( (ListLongMap!9802 (toList!4916 List!16890)) )
))
(declare-fun lt!387489 () ListLongMap!9801)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49360 0))(
  ( (array!49361 (arr!23707 (Array (_ BitVec 32) (_ BitVec 64))) (size!24148 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49360)

(declare-fun minValue!654 () V!27181)

(declare-fun zeroValue!654 () V!27181)

(declare-datatypes ((ValueCell!7861 0))(
  ( (ValueCellFull!7861 (v!10769 V!27181)) (EmptyCell!7861) )
))
(declare-datatypes ((array!49362 0))(
  ( (array!49363 (arr!23708 (Array (_ BitVec 32) ValueCell!7861)) (size!24149 (_ BitVec 32))) )
))
(declare-fun lt!387486 () array!49362)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2896 (array!49360 array!49362 (_ BitVec 32) (_ BitVec 32) V!27181 V!27181 (_ BitVec 32) Int) ListLongMap!9801)

(assert (=> b!859769 (= lt!387489 (getCurrentListMapNoExtraKeys!2896 _keys!868 lt!387486 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!49362)

(declare-fun v!557 () V!27181)

(assert (=> b!859769 (= lt!387486 (array!49363 (store (arr!23708 _values!688) i!612 (ValueCellFull!7861 v!557)) (size!24149 _values!688)))))

(declare-fun lt!387480 () ListLongMap!9801)

(assert (=> b!859769 (= lt!387480 (getCurrentListMapNoExtraKeys!2896 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859770 () Bool)

(declare-fun e!479141 () Bool)

(assert (=> b!859770 (= e!479141 true)))

(declare-fun lt!387483 () Bool)

(declare-datatypes ((List!16891 0))(
  ( (Nil!16888) (Cons!16887 (h!18018 (_ BitVec 64)) (t!23630 List!16891)) )
))
(declare-fun contains!4226 (List!16891 (_ BitVec 64)) Bool)

(assert (=> b!859770 (= lt!387483 (contains!4226 Nil!16888 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859771 () Bool)

(declare-fun e!479143 () Bool)

(assert (=> b!859771 (= e!479143 e!479141)))

(declare-fun res!584341 () Bool)

(assert (=> b!859771 (=> res!584341 e!479141)))

(assert (=> b!859771 (= res!584341 (or (bvsge (size!24148 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24148 _keys!868)) (bvsge from!1053 (size!24148 _keys!868))))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!49360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859771 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!29282 0))(
  ( (Unit!29283) )
))
(declare-fun lt!387482 () Unit!29282)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49360 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29282)

(assert (=> b!859771 (= lt!387482 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayNoDuplicates!0 (array!49360 (_ BitVec 32) List!16891) Bool)

(assert (=> b!859771 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16888)))

(declare-fun lt!387488 () Unit!29282)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49360 (_ BitVec 32) (_ BitVec 32)) Unit!29282)

(assert (=> b!859771 (= lt!387488 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859772 () Bool)

(declare-fun res!584336 () Bool)

(assert (=> b!859772 (=> (not res!584336) (not e!479146))))

(assert (=> b!859772 (= res!584336 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24148 _keys!868))))))

(declare-fun b!859773 () Bool)

(declare-fun e!479145 () Bool)

(declare-fun tp_is_empty!16601 () Bool)

(assert (=> b!859773 (= e!479145 tp_is_empty!16601)))

(declare-fun mapNonEmpty!26501 () Bool)

(declare-fun tp!50900 () Bool)

(declare-fun e!479142 () Bool)

(assert (=> mapNonEmpty!26501 (= mapRes!26501 (and tp!50900 e!479142))))

(declare-fun mapRest!26501 () (Array (_ BitVec 32) ValueCell!7861))

(declare-fun mapValue!26501 () ValueCell!7861)

(declare-fun mapKey!26501 () (_ BitVec 32))

(assert (=> mapNonEmpty!26501 (= (arr!23708 _values!688) (store mapRest!26501 mapKey!26501 mapValue!26501))))

(declare-fun b!859775 () Bool)

(declare-fun res!584338 () Bool)

(assert (=> b!859775 (=> (not res!584338) (not e!479146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859775 (= res!584338 (validMask!0 mask!1196))))

(declare-fun b!859776 () Bool)

(declare-fun res!584339 () Bool)

(assert (=> b!859776 (=> (not res!584339) (not e!479146))))

(assert (=> b!859776 (= res!584339 (and (= (size!24149 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24148 _keys!868) (size!24149 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859777 () Bool)

(declare-fun e!479148 () Bool)

(assert (=> b!859777 (= e!479148 e!479143)))

(declare-fun res!584343 () Bool)

(assert (=> b!859777 (=> res!584343 e!479143)))

(assert (=> b!859777 (= res!584343 (not (= (select (arr!23707 _keys!868) from!1053) k!854)))))

(declare-fun lt!387487 () ListLongMap!9801)

(declare-fun +!2219 (ListLongMap!9801 tuple2!11018) ListLongMap!9801)

(declare-fun get!12508 (ValueCell!7861 V!27181) V!27181)

(declare-fun dynLambda!1104 (Int (_ BitVec 64)) V!27181)

(assert (=> b!859777 (= lt!387489 (+!2219 lt!387487 (tuple2!11019 (select (arr!23707 _keys!868) from!1053) (get!12508 (select (arr!23708 _values!688) from!1053) (dynLambda!1104 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859778 () Bool)

(declare-fun res!584347 () Bool)

(assert (=> b!859778 (=> (not res!584347) (not e!479146))))

(assert (=> b!859778 (= res!584347 (and (= (select (arr!23707 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!859779 () Bool)

(declare-fun res!584342 () Bool)

(assert (=> b!859779 (=> (not res!584342) (not e!479146))))

(assert (=> b!859779 (= res!584342 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16888))))

(declare-fun b!859774 () Bool)

(declare-fun e!479140 () Bool)

(assert (=> b!859774 (= e!479140 (and e!479145 mapRes!26501))))

(declare-fun condMapEmpty!26501 () Bool)

(declare-fun mapDefault!26501 () ValueCell!7861)

