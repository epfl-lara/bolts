; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72984 () Bool)

(assert start!72984)

(declare-fun b_free!13871 () Bool)

(declare-fun b_next!13871 () Bool)

(assert (=> start!72984 (= b_free!13871 (not b_next!13871))))

(declare-fun tp!49118 () Bool)

(declare-fun b_and!22975 () Bool)

(assert (=> start!72984 (= tp!49118 b_and!22975)))

(declare-fun b!847105 () Bool)

(declare-fun res!575681 () Bool)

(declare-fun e!472738 () Bool)

(assert (=> b!847105 (=> (not res!575681) (not e!472738))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!48210 0))(
  ( (array!48211 (arr!23132 (Array (_ BitVec 32) (_ BitVec 64))) (size!23573 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48210)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!847105 (= res!575681 (and (= (select (arr!23132 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!847106 () Bool)

(assert (=> b!847106 (= e!472738 false)))

(declare-datatypes ((V!26389 0))(
  ( (V!26390 (val!8051 Int)) )
))
(declare-datatypes ((tuple2!10530 0))(
  ( (tuple2!10531 (_1!5275 (_ BitVec 64)) (_2!5275 V!26389)) )
))
(declare-datatypes ((List!16444 0))(
  ( (Nil!16441) (Cons!16440 (h!17571 tuple2!10530) (t!22823 List!16444)) )
))
(declare-datatypes ((ListLongMap!9313 0))(
  ( (ListLongMap!9314 (toList!4672 List!16444)) )
))
(declare-fun lt!381629 () ListLongMap!9313)

(declare-fun v!557 () V!26389)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7564 0))(
  ( (ValueCellFull!7564 (v!10472 V!26389)) (EmptyCell!7564) )
))
(declare-datatypes ((array!48212 0))(
  ( (array!48213 (arr!23133 (Array (_ BitVec 32) ValueCell!7564)) (size!23574 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48212)

(declare-fun minValue!654 () V!26389)

(declare-fun zeroValue!654 () V!26389)

(declare-fun getCurrentListMapNoExtraKeys!2661 (array!48210 array!48212 (_ BitVec 32) (_ BitVec 32) V!26389 V!26389 (_ BitVec 32) Int) ListLongMap!9313)

(assert (=> b!847106 (= lt!381629 (getCurrentListMapNoExtraKeys!2661 _keys!868 (array!48213 (store (arr!23133 _values!688) i!612 (ValueCellFull!7564 v!557)) (size!23574 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!381630 () ListLongMap!9313)

(assert (=> b!847106 (= lt!381630 (getCurrentListMapNoExtraKeys!2661 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847107 () Bool)

(declare-fun res!575677 () Bool)

(assert (=> b!847107 (=> (not res!575677) (not e!472738))))

(assert (=> b!847107 (= res!575677 (and (= (size!23574 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23573 _keys!868) (size!23574 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!847108 () Bool)

(declare-fun e!472740 () Bool)

(declare-fun tp_is_empty!16007 () Bool)

(assert (=> b!847108 (= e!472740 tp_is_empty!16007)))

(declare-fun b!847109 () Bool)

(declare-fun res!575679 () Bool)

(assert (=> b!847109 (=> (not res!575679) (not e!472738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48210 (_ BitVec 32)) Bool)

(assert (=> b!847109 (= res!575679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!847110 () Bool)

(declare-fun res!575680 () Bool)

(assert (=> b!847110 (=> (not res!575680) (not e!472738))))

(declare-datatypes ((List!16445 0))(
  ( (Nil!16442) (Cons!16441 (h!17572 (_ BitVec 64)) (t!22824 List!16445)) )
))
(declare-fun arrayNoDuplicates!0 (array!48210 (_ BitVec 32) List!16445) Bool)

(assert (=> b!847110 (= res!575680 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16442))))

(declare-fun b!847111 () Bool)

(declare-fun e!472737 () Bool)

(assert (=> b!847111 (= e!472737 tp_is_empty!16007)))

(declare-fun b!847112 () Bool)

(declare-fun res!575675 () Bool)

(assert (=> b!847112 (=> (not res!575675) (not e!472738))))

(assert (=> b!847112 (= res!575675 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23573 _keys!868))))))

(declare-fun b!847113 () Bool)

(declare-fun res!575678 () Bool)

(assert (=> b!847113 (=> (not res!575678) (not e!472738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847113 (= res!575678 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!25610 () Bool)

(declare-fun mapRes!25610 () Bool)

(assert (=> mapIsEmpty!25610 mapRes!25610))

(declare-fun b!847115 () Bool)

(declare-fun e!472736 () Bool)

(assert (=> b!847115 (= e!472736 (and e!472740 mapRes!25610))))

(declare-fun condMapEmpty!25610 () Bool)

(declare-fun mapDefault!25610 () ValueCell!7564)

