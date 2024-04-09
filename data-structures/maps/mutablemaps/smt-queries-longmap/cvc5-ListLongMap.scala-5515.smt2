; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72902 () Bool)

(assert start!72902)

(declare-fun b_free!13789 () Bool)

(declare-fun b_next!13789 () Bool)

(assert (=> start!72902 (= b_free!13789 (not b_next!13789))))

(declare-fun tp!48871 () Bool)

(declare-fun b_and!22893 () Bool)

(assert (=> start!72902 (= tp!48871 b_and!22893)))

(declare-fun b!845752 () Bool)

(declare-fun res!574696 () Bool)

(declare-fun e!472125 () Bool)

(assert (=> b!845752 (=> (not res!574696) (not e!472125))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48050 0))(
  ( (array!48051 (arr!23052 (Array (_ BitVec 32) (_ BitVec 64))) (size!23493 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48050)

(declare-datatypes ((V!26281 0))(
  ( (V!26282 (val!8010 Int)) )
))
(declare-datatypes ((ValueCell!7523 0))(
  ( (ValueCellFull!7523 (v!10431 V!26281)) (EmptyCell!7523) )
))
(declare-datatypes ((array!48052 0))(
  ( (array!48053 (arr!23053 (Array (_ BitVec 32) ValueCell!7523)) (size!23494 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48052)

(assert (=> b!845752 (= res!574696 (and (= (size!23494 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23493 _keys!868) (size!23494 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25487 () Bool)

(declare-fun mapRes!25487 () Bool)

(assert (=> mapIsEmpty!25487 mapRes!25487))

(declare-fun b!845753 () Bool)

(assert (=> b!845753 (= e!472125 false)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26281)

(declare-fun zeroValue!654 () V!26281)

(declare-datatypes ((tuple2!10480 0))(
  ( (tuple2!10481 (_1!5250 (_ BitVec 64)) (_2!5250 V!26281)) )
))
(declare-datatypes ((List!16391 0))(
  ( (Nil!16388) (Cons!16387 (h!17518 tuple2!10480) (t!22770 List!16391)) )
))
(declare-datatypes ((ListLongMap!9263 0))(
  ( (ListLongMap!9264 (toList!4647 List!16391)) )
))
(declare-fun lt!381399 () ListLongMap!9263)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2636 (array!48050 array!48052 (_ BitVec 32) (_ BitVec 32) V!26281 V!26281 (_ BitVec 32) Int) ListLongMap!9263)

(assert (=> b!845753 (= lt!381399 (getCurrentListMapNoExtraKeys!2636 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!574694 () Bool)

(assert (=> start!72902 (=> (not res!574694) (not e!472125))))

(assert (=> start!72902 (= res!574694 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23493 _keys!868))))))

(assert (=> start!72902 e!472125))

(assert (=> start!72902 true))

(assert (=> start!72902 tp!48871))

(declare-fun array_inv!18298 (array!48050) Bool)

(assert (=> start!72902 (array_inv!18298 _keys!868)))

(declare-fun e!472121 () Bool)

(declare-fun array_inv!18299 (array!48052) Bool)

(assert (=> start!72902 (and (array_inv!18299 _values!688) e!472121)))

(declare-fun tp_is_empty!15925 () Bool)

(assert (=> start!72902 tp_is_empty!15925))

(declare-fun b!845754 () Bool)

(declare-fun res!574695 () Bool)

(assert (=> b!845754 (=> (not res!574695) (not e!472125))))

(declare-datatypes ((List!16392 0))(
  ( (Nil!16389) (Cons!16388 (h!17519 (_ BitVec 64)) (t!22771 List!16392)) )
))
(declare-fun arrayNoDuplicates!0 (array!48050 (_ BitVec 32) List!16392) Bool)

(assert (=> b!845754 (= res!574695 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16389))))

(declare-fun mapNonEmpty!25487 () Bool)

(declare-fun tp!48872 () Bool)

(declare-fun e!472124 () Bool)

(assert (=> mapNonEmpty!25487 (= mapRes!25487 (and tp!48872 e!472124))))

(declare-fun mapValue!25487 () ValueCell!7523)

(declare-fun mapKey!25487 () (_ BitVec 32))

(declare-fun mapRest!25487 () (Array (_ BitVec 32) ValueCell!7523))

(assert (=> mapNonEmpty!25487 (= (arr!23053 _values!688) (store mapRest!25487 mapKey!25487 mapValue!25487))))

(declare-fun b!845755 () Bool)

(declare-fun e!472123 () Bool)

(assert (=> b!845755 (= e!472123 tp_is_empty!15925)))

(declare-fun b!845756 () Bool)

(assert (=> b!845756 (= e!472124 tp_is_empty!15925)))

(declare-fun b!845757 () Bool)

(declare-fun res!574691 () Bool)

(assert (=> b!845757 (=> (not res!574691) (not e!472125))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!845757 (= res!574691 (validKeyInArray!0 k!854))))

(declare-fun b!845758 () Bool)

(assert (=> b!845758 (= e!472121 (and e!472123 mapRes!25487))))

(declare-fun condMapEmpty!25487 () Bool)

(declare-fun mapDefault!25487 () ValueCell!7523)

