; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73440 () Bool)

(assert start!73440)

(declare-fun b_free!14327 () Bool)

(declare-fun b_next!14327 () Bool)

(assert (=> start!73440 (= b_free!14327 (not b_next!14327))))

(declare-fun tp!50486 () Bool)

(declare-fun b_and!23701 () Bool)

(assert (=> start!73440 (= tp!50486 b_and!23701)))

(declare-fun b!856860 () Bool)

(declare-fun res!582142 () Bool)

(declare-fun e!477632 () Bool)

(assert (=> b!856860 (=> (not res!582142) (not e!477632))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49094 0))(
  ( (array!49095 (arr!23574 (Array (_ BitVec 32) (_ BitVec 64))) (size!24015 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49094)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!856860 (= res!582142 (and (= (select (arr!23574 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!582140 () Bool)

(assert (=> start!73440 (=> (not res!582140) (not e!477632))))

(assert (=> start!73440 (= res!582140 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24015 _keys!868))))))

(assert (=> start!73440 e!477632))

(declare-fun tp_is_empty!16463 () Bool)

(assert (=> start!73440 tp_is_empty!16463))

(assert (=> start!73440 true))

(assert (=> start!73440 tp!50486))

(declare-fun array_inv!18660 (array!49094) Bool)

(assert (=> start!73440 (array_inv!18660 _keys!868)))

(declare-datatypes ((V!26997 0))(
  ( (V!26998 (val!8279 Int)) )
))
(declare-datatypes ((ValueCell!7792 0))(
  ( (ValueCellFull!7792 (v!10700 V!26997)) (EmptyCell!7792) )
))
(declare-datatypes ((array!49096 0))(
  ( (array!49097 (arr!23575 (Array (_ BitVec 32) ValueCell!7792)) (size!24016 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49096)

(declare-fun e!477635 () Bool)

(declare-fun array_inv!18661 (array!49096) Bool)

(assert (=> start!73440 (and (array_inv!18661 _values!688) e!477635)))

(declare-fun b!856861 () Bool)

(declare-fun res!582141 () Bool)

(assert (=> b!856861 (=> (not res!582141) (not e!477632))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856861 (= res!582141 (validMask!0 mask!1196))))

(declare-fun b!856862 () Bool)

(declare-fun e!477631 () Bool)

(assert (=> b!856862 (= e!477631 tp_is_empty!16463)))

(declare-fun b!856863 () Bool)

(declare-fun e!477633 () Bool)

(assert (=> b!856863 (= e!477633 tp_is_empty!16463)))

(declare-fun b!856864 () Bool)

(declare-fun e!477636 () Bool)

(assert (=> b!856864 (= e!477636 (not true))))

(declare-fun v!557 () V!26997)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26997)

(declare-fun zeroValue!654 () V!26997)

(declare-fun lt!386092 () array!49096)

(declare-datatypes ((tuple2!10908 0))(
  ( (tuple2!10909 (_1!5464 (_ BitVec 64)) (_2!5464 V!26997)) )
))
(declare-datatypes ((List!16780 0))(
  ( (Nil!16777) (Cons!16776 (h!17907 tuple2!10908) (t!23429 List!16780)) )
))
(declare-datatypes ((ListLongMap!9691 0))(
  ( (ListLongMap!9692 (toList!4861 List!16780)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2843 (array!49094 array!49096 (_ BitVec 32) (_ BitVec 32) V!26997 V!26997 (_ BitVec 32) Int) ListLongMap!9691)

(declare-fun +!2170 (ListLongMap!9691 tuple2!10908) ListLongMap!9691)

(assert (=> b!856864 (= (getCurrentListMapNoExtraKeys!2843 _keys!868 lt!386092 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2170 (getCurrentListMapNoExtraKeys!2843 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10909 k!854 v!557)))))

(declare-datatypes ((Unit!29182 0))(
  ( (Unit!29183) )
))
(declare-fun lt!386093 () Unit!29182)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!430 (array!49094 array!49096 (_ BitVec 32) (_ BitVec 32) V!26997 V!26997 (_ BitVec 32) (_ BitVec 64) V!26997 (_ BitVec 32) Int) Unit!29182)

(assert (=> b!856864 (= lt!386093 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!430 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856865 () Bool)

(declare-fun res!582138 () Bool)

(assert (=> b!856865 (=> (not res!582138) (not e!477632))))

(declare-datatypes ((List!16781 0))(
  ( (Nil!16778) (Cons!16777 (h!17908 (_ BitVec 64)) (t!23430 List!16781)) )
))
(declare-fun arrayNoDuplicates!0 (array!49094 (_ BitVec 32) List!16781) Bool)

(assert (=> b!856865 (= res!582138 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16778))))

(declare-fun mapIsEmpty!26294 () Bool)

(declare-fun mapRes!26294 () Bool)

(assert (=> mapIsEmpty!26294 mapRes!26294))

(declare-fun b!856866 () Bool)

(assert (=> b!856866 (= e!477635 (and e!477631 mapRes!26294))))

(declare-fun condMapEmpty!26294 () Bool)

(declare-fun mapDefault!26294 () ValueCell!7792)

