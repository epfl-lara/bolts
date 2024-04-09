; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74830 () Bool)

(assert start!74830)

(declare-fun b_free!15379 () Bool)

(declare-fun b_next!15379 () Bool)

(assert (=> start!74830 (= b_free!15379 (not b_next!15379))))

(declare-fun tp!53834 () Bool)

(declare-fun b_and!25443 () Bool)

(assert (=> start!74830 (= tp!53834 b_and!25443)))

(declare-fun b!881626 () Bool)

(declare-fun e!490680 () Bool)

(declare-fun e!490685 () Bool)

(assert (=> b!881626 (= e!490680 e!490685)))

(declare-fun res!599059 () Bool)

(assert (=> b!881626 (=> (not res!599059) (not e!490685))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!881626 (= res!599059 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!28545 0))(
  ( (V!28546 (val!8859 Int)) )
))
(declare-datatypes ((ValueCell!8372 0))(
  ( (ValueCellFull!8372 (v!11315 V!28545)) (EmptyCell!8372) )
))
(declare-datatypes ((array!51356 0))(
  ( (array!51357 (arr!24695 (Array (_ BitVec 32) ValueCell!8372)) (size!25136 (_ BitVec 32))) )
))
(declare-fun lt!398804 () array!51356)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51358 0))(
  ( (array!51359 (arr!24696 (Array (_ BitVec 32) (_ BitVec 64))) (size!25137 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51358)

(declare-fun minValue!654 () V!28545)

(declare-fun zeroValue!654 () V!28545)

(declare-datatypes ((tuple2!11758 0))(
  ( (tuple2!11759 (_1!5889 (_ BitVec 64)) (_2!5889 V!28545)) )
))
(declare-datatypes ((List!17625 0))(
  ( (Nil!17622) (Cons!17621 (h!18752 tuple2!11758) (t!24814 List!17625)) )
))
(declare-datatypes ((ListLongMap!10541 0))(
  ( (ListLongMap!10542 (toList!5286 List!17625)) )
))
(declare-fun lt!398807 () ListLongMap!10541)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3246 (array!51358 array!51356 (_ BitVec 32) (_ BitVec 32) V!28545 V!28545 (_ BitVec 32) Int) ListLongMap!10541)

(assert (=> b!881626 (= lt!398807 (getCurrentListMapNoExtraKeys!3246 _keys!868 lt!398804 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28545)

(declare-fun _values!688 () array!51356)

(assert (=> b!881626 (= lt!398804 (array!51357 (store (arr!24695 _values!688) i!612 (ValueCellFull!8372 v!557)) (size!25136 _values!688)))))

(declare-fun lt!398808 () ListLongMap!10541)

(assert (=> b!881626 (= lt!398808 (getCurrentListMapNoExtraKeys!3246 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!881627 () Bool)

(declare-fun res!599056 () Bool)

(assert (=> b!881627 (=> (not res!599056) (not e!490680))))

(assert (=> b!881627 (= res!599056 (and (= (size!25136 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25137 _keys!868) (size!25136 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!881628 () Bool)

(declare-fun e!490684 () Bool)

(declare-fun tp_is_empty!17623 () Bool)

(assert (=> b!881628 (= e!490684 tp_is_empty!17623)))

(declare-fun mapNonEmpty!28065 () Bool)

(declare-fun mapRes!28065 () Bool)

(declare-fun tp!53835 () Bool)

(assert (=> mapNonEmpty!28065 (= mapRes!28065 (and tp!53835 e!490684))))

(declare-fun mapValue!28065 () ValueCell!8372)

(declare-fun mapRest!28065 () (Array (_ BitVec 32) ValueCell!8372))

(declare-fun mapKey!28065 () (_ BitVec 32))

(assert (=> mapNonEmpty!28065 (= (arr!24695 _values!688) (store mapRest!28065 mapKey!28065 mapValue!28065))))

(declare-fun b!881629 () Bool)

(declare-fun e!490682 () Bool)

(declare-fun e!490679 () Bool)

(assert (=> b!881629 (= e!490682 e!490679)))

(declare-fun res!599055 () Bool)

(assert (=> b!881629 (=> res!599055 e!490679)))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!881629 (= res!599055 (not (= (select (arr!24696 _keys!868) from!1053) k!854)))))

(declare-fun lt!398809 () ListLongMap!10541)

(declare-fun +!2492 (ListLongMap!10541 tuple2!11758) ListLongMap!10541)

(declare-fun get!13013 (ValueCell!8372 V!28545) V!28545)

(declare-fun dynLambda!1252 (Int (_ BitVec 64)) V!28545)

(assert (=> b!881629 (= lt!398807 (+!2492 lt!398809 (tuple2!11759 (select (arr!24696 _keys!868) from!1053) (get!13013 (select (arr!24695 _values!688) from!1053) (dynLambda!1252 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!599057 () Bool)

(assert (=> start!74830 (=> (not res!599057) (not e!490680))))

(assert (=> start!74830 (= res!599057 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25137 _keys!868))))))

(assert (=> start!74830 e!490680))

(assert (=> start!74830 tp_is_empty!17623))

(assert (=> start!74830 true))

(assert (=> start!74830 tp!53834))

(declare-fun array_inv!19434 (array!51358) Bool)

(assert (=> start!74830 (array_inv!19434 _keys!868)))

(declare-fun e!490681 () Bool)

(declare-fun array_inv!19435 (array!51356) Bool)

(assert (=> start!74830 (and (array_inv!19435 _values!688) e!490681)))

(declare-fun b!881630 () Bool)

(declare-fun res!599051 () Bool)

(assert (=> b!881630 (=> (not res!599051) (not e!490680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!881630 (= res!599051 (validMask!0 mask!1196))))

(declare-fun b!881631 () Bool)

(assert (=> b!881631 (= e!490685 (not e!490682))))

(declare-fun res!599050 () Bool)

(assert (=> b!881631 (=> res!599050 e!490682)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881631 (= res!599050 (not (validKeyInArray!0 (select (arr!24696 _keys!868) from!1053))))))

(declare-fun lt!398811 () ListLongMap!10541)

(assert (=> b!881631 (= lt!398811 lt!398809)))

(declare-fun lt!398805 () ListLongMap!10541)

(assert (=> b!881631 (= lt!398809 (+!2492 lt!398805 (tuple2!11759 k!854 v!557)))))

(assert (=> b!881631 (= lt!398811 (getCurrentListMapNoExtraKeys!3246 _keys!868 lt!398804 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!881631 (= lt!398805 (getCurrentListMapNoExtraKeys!3246 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30060 0))(
  ( (Unit!30061) )
))
(declare-fun lt!398812 () Unit!30060)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!721 (array!51358 array!51356 (_ BitVec 32) (_ BitVec 32) V!28545 V!28545 (_ BitVec 32) (_ BitVec 64) V!28545 (_ BitVec 32) Int) Unit!30060)

(assert (=> b!881631 (= lt!398812 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!721 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881632 () Bool)

(declare-fun e!490683 () Bool)

(assert (=> b!881632 (= e!490683 tp_is_empty!17623)))

(declare-fun b!881633 () Bool)

(declare-fun res!599053 () Bool)

(assert (=> b!881633 (=> (not res!599053) (not e!490680))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51358 (_ BitVec 32)) Bool)

(assert (=> b!881633 (= res!599053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!881634 () Bool)

(declare-fun res!599052 () Bool)

(assert (=> b!881634 (=> (not res!599052) (not e!490680))))

(assert (=> b!881634 (= res!599052 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!28065 () Bool)

(assert (=> mapIsEmpty!28065 mapRes!28065))

(declare-fun b!881635 () Bool)

(declare-fun res!599049 () Bool)

(assert (=> b!881635 (=> (not res!599049) (not e!490680))))

(declare-datatypes ((List!17626 0))(
  ( (Nil!17623) (Cons!17622 (h!18753 (_ BitVec 64)) (t!24815 List!17626)) )
))
(declare-fun arrayNoDuplicates!0 (array!51358 (_ BitVec 32) List!17626) Bool)

(assert (=> b!881635 (= res!599049 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17623))))

(declare-fun b!881636 () Bool)

(assert (=> b!881636 (= e!490681 (and e!490683 mapRes!28065))))

(declare-fun condMapEmpty!28065 () Bool)

(declare-fun mapDefault!28065 () ValueCell!8372)

