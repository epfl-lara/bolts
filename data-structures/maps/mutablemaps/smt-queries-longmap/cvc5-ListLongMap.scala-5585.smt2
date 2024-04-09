; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73322 () Bool)

(assert start!73322)

(declare-fun b_free!14209 () Bool)

(declare-fun b_next!14209 () Bool)

(assert (=> start!73322 (= b_free!14209 (not b_next!14209))))

(declare-fun tp!50131 () Bool)

(declare-fun b_and!23583 () Bool)

(assert (=> start!73322 (= tp!50131 b_and!23583)))

(declare-fun b!854824 () Bool)

(declare-fun e!476657 () Bool)

(assert (=> b!854824 (= e!476657 false)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48868 0))(
  ( (array!48869 (arr!23461 (Array (_ BitVec 32) (_ BitVec 64))) (size!23902 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48868)

(declare-datatypes ((V!26841 0))(
  ( (V!26842 (val!8220 Int)) )
))
(declare-datatypes ((ValueCell!7733 0))(
  ( (ValueCellFull!7733 (v!10641 V!26841)) (EmptyCell!7733) )
))
(declare-datatypes ((array!48870 0))(
  ( (array!48871 (arr!23462 (Array (_ BitVec 32) ValueCell!7733)) (size!23903 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48870)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26841)

(declare-fun zeroValue!654 () V!26841)

(declare-fun v!557 () V!26841)

(declare-datatypes ((tuple2!10822 0))(
  ( (tuple2!10823 (_1!5421 (_ BitVec 64)) (_2!5421 V!26841)) )
))
(declare-datatypes ((List!16696 0))(
  ( (Nil!16693) (Cons!16692 (h!17823 tuple2!10822) (t!23345 List!16696)) )
))
(declare-datatypes ((ListLongMap!9605 0))(
  ( (ListLongMap!9606 (toList!4818 List!16696)) )
))
(declare-fun lt!385559 () ListLongMap!9605)

(declare-fun getCurrentListMapNoExtraKeys!2800 (array!48868 array!48870 (_ BitVec 32) (_ BitVec 32) V!26841 V!26841 (_ BitVec 32) Int) ListLongMap!9605)

(assert (=> b!854824 (= lt!385559 (getCurrentListMapNoExtraKeys!2800 _keys!868 (array!48871 (store (arr!23462 _values!688) i!612 (ValueCellFull!7733 v!557)) (size!23903 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385560 () ListLongMap!9605)

(assert (=> b!854824 (= lt!385560 (getCurrentListMapNoExtraKeys!2800 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854826 () Bool)

(declare-fun res!580635 () Bool)

(assert (=> b!854826 (=> (not res!580635) (not e!476657))))

(assert (=> b!854826 (= res!580635 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23902 _keys!868))))))

(declare-fun b!854827 () Bool)

(declare-fun res!580636 () Bool)

(assert (=> b!854827 (=> (not res!580636) (not e!476657))))

(declare-datatypes ((List!16697 0))(
  ( (Nil!16694) (Cons!16693 (h!17824 (_ BitVec 64)) (t!23346 List!16697)) )
))
(declare-fun arrayNoDuplicates!0 (array!48868 (_ BitVec 32) List!16697) Bool)

(assert (=> b!854827 (= res!580636 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16694))))

(declare-fun mapIsEmpty!26117 () Bool)

(declare-fun mapRes!26117 () Bool)

(assert (=> mapIsEmpty!26117 mapRes!26117))

(declare-fun b!854828 () Bool)

(declare-fun res!580631 () Bool)

(assert (=> b!854828 (=> (not res!580631) (not e!476657))))

(assert (=> b!854828 (= res!580631 (and (= (size!23903 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23902 _keys!868) (size!23903 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854829 () Bool)

(declare-fun e!476659 () Bool)

(declare-fun tp_is_empty!16345 () Bool)

(assert (=> b!854829 (= e!476659 tp_is_empty!16345)))

(declare-fun b!854830 () Bool)

(declare-fun res!580638 () Bool)

(assert (=> b!854830 (=> (not res!580638) (not e!476657))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48868 (_ BitVec 32)) Bool)

(assert (=> b!854830 (= res!580638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26117 () Bool)

(declare-fun tp!50132 () Bool)

(declare-fun e!476661 () Bool)

(assert (=> mapNonEmpty!26117 (= mapRes!26117 (and tp!50132 e!476661))))

(declare-fun mapValue!26117 () ValueCell!7733)

(declare-fun mapRest!26117 () (Array (_ BitVec 32) ValueCell!7733))

(declare-fun mapKey!26117 () (_ BitVec 32))

(assert (=> mapNonEmpty!26117 (= (arr!23462 _values!688) (store mapRest!26117 mapKey!26117 mapValue!26117))))

(declare-fun res!580633 () Bool)

(assert (=> start!73322 (=> (not res!580633) (not e!476657))))

(assert (=> start!73322 (= res!580633 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23902 _keys!868))))))

(assert (=> start!73322 e!476657))

(assert (=> start!73322 tp_is_empty!16345))

(assert (=> start!73322 true))

(assert (=> start!73322 tp!50131))

(declare-fun array_inv!18576 (array!48868) Bool)

(assert (=> start!73322 (array_inv!18576 _keys!868)))

(declare-fun e!476660 () Bool)

(declare-fun array_inv!18577 (array!48870) Bool)

(assert (=> start!73322 (and (array_inv!18577 _values!688) e!476660)))

(declare-fun b!854825 () Bool)

(declare-fun res!580637 () Bool)

(assert (=> b!854825 (=> (not res!580637) (not e!476657))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!854825 (= res!580637 (and (= (select (arr!23461 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!854831 () Bool)

(assert (=> b!854831 (= e!476660 (and e!476659 mapRes!26117))))

(declare-fun condMapEmpty!26117 () Bool)

(declare-fun mapDefault!26117 () ValueCell!7733)

