; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74610 () Bool)

(assert start!74610)

(declare-fun b_free!15271 () Bool)

(declare-fun b_next!15271 () Bool)

(assert (=> start!74610 (= b_free!15271 (not b_next!15271))))

(declare-fun tp!53495 () Bool)

(declare-fun b_and!25165 () Bool)

(assert (=> start!74610 (= tp!53495 b_and!25165)))

(declare-fun b!878670 () Bool)

(declare-fun res!597076 () Bool)

(declare-fun e!489028 () Bool)

(assert (=> b!878670 (=> (not res!597076) (not e!489028))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51136 0))(
  ( (array!51137 (arr!24590 (Array (_ BitVec 32) (_ BitVec 64))) (size!25031 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51136)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!878670 (= res!597076 (and (= (select (arr!24590 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!878671 () Bool)

(declare-fun res!597084 () Bool)

(assert (=> b!878671 (=> (not res!597084) (not e!489028))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!878671 (= res!597084 (validMask!0 mask!1196))))

(declare-fun b!878672 () Bool)

(declare-fun res!597080 () Bool)

(assert (=> b!878672 (=> (not res!597080) (not e!489028))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28401 0))(
  ( (V!28402 (val!8805 Int)) )
))
(declare-datatypes ((ValueCell!8318 0))(
  ( (ValueCellFull!8318 (v!11241 V!28401)) (EmptyCell!8318) )
))
(declare-datatypes ((array!51138 0))(
  ( (array!51139 (arr!24591 (Array (_ BitVec 32) ValueCell!8318)) (size!25032 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51138)

(assert (=> b!878672 (= res!597080 (and (= (size!25032 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25031 _keys!868) (size!25032 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!878673 () Bool)

(declare-fun res!597078 () Bool)

(assert (=> b!878673 (=> (not res!597078) (not e!489028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51136 (_ BitVec 32)) Bool)

(assert (=> b!878673 (= res!597078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!878674 () Bool)

(declare-fun e!489030 () Bool)

(assert (=> b!878674 (= e!489028 e!489030)))

(declare-fun res!597075 () Bool)

(assert (=> b!878674 (=> (not res!597075) (not e!489030))))

(assert (=> b!878674 (= res!597075 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11662 0))(
  ( (tuple2!11663 (_1!5841 (_ BitVec 64)) (_2!5841 V!28401)) )
))
(declare-datatypes ((List!17541 0))(
  ( (Nil!17538) (Cons!17537 (h!18668 tuple2!11662) (t!24638 List!17541)) )
))
(declare-datatypes ((ListLongMap!10445 0))(
  ( (ListLongMap!10446 (toList!5238 List!17541)) )
))
(declare-fun lt!397292 () ListLongMap!10445)

(declare-fun minValue!654 () V!28401)

(declare-fun zeroValue!654 () V!28401)

(declare-fun lt!397289 () array!51138)

(declare-fun getCurrentListMapNoExtraKeys!3200 (array!51136 array!51138 (_ BitVec 32) (_ BitVec 32) V!28401 V!28401 (_ BitVec 32) Int) ListLongMap!10445)

(assert (=> b!878674 (= lt!397292 (getCurrentListMapNoExtraKeys!3200 _keys!868 lt!397289 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28401)

(assert (=> b!878674 (= lt!397289 (array!51139 (store (arr!24591 _values!688) i!612 (ValueCellFull!8318 v!557)) (size!25032 _values!688)))))

(declare-fun lt!397290 () ListLongMap!10445)

(assert (=> b!878674 (= lt!397290 (getCurrentListMapNoExtraKeys!3200 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!878675 () Bool)

(declare-fun e!489033 () Bool)

(assert (=> b!878675 (= e!489033 (bvslt i!612 (size!25032 _values!688)))))

(declare-fun res!597083 () Bool)

(assert (=> start!74610 (=> (not res!597083) (not e!489028))))

(assert (=> start!74610 (= res!597083 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25031 _keys!868))))))

(assert (=> start!74610 e!489028))

(declare-fun tp_is_empty!17515 () Bool)

(assert (=> start!74610 tp_is_empty!17515))

(assert (=> start!74610 true))

(assert (=> start!74610 tp!53495))

(declare-fun array_inv!19356 (array!51136) Bool)

(assert (=> start!74610 (array_inv!19356 _keys!868)))

(declare-fun e!489032 () Bool)

(declare-fun array_inv!19357 (array!51138) Bool)

(assert (=> start!74610 (and (array_inv!19357 _values!688) e!489032)))

(declare-fun b!878676 () Bool)

(declare-fun res!597081 () Bool)

(assert (=> b!878676 (=> (not res!597081) (not e!489028))))

(declare-datatypes ((List!17542 0))(
  ( (Nil!17539) (Cons!17538 (h!18669 (_ BitVec 64)) (t!24639 List!17542)) )
))
(declare-fun arrayNoDuplicates!0 (array!51136 (_ BitVec 32) List!17542) Bool)

(assert (=> b!878676 (= res!597081 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17539))))

(declare-fun b!878677 () Bool)

(declare-fun e!489029 () Bool)

(declare-fun mapRes!27888 () Bool)

(assert (=> b!878677 (= e!489032 (and e!489029 mapRes!27888))))

(declare-fun condMapEmpty!27888 () Bool)

(declare-fun mapDefault!27888 () ValueCell!8318)

