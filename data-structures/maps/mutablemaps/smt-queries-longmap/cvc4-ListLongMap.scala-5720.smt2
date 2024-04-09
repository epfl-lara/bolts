; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74136 () Bool)

(assert start!74136)

(declare-fun b!871775 () Bool)

(declare-fun res!592682 () Bool)

(declare-fun e!485420 () Bool)

(assert (=> b!871775 (=> (not res!592682) (not e!485420))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871775 (= res!592682 (validKeyInArray!0 k!854))))

(declare-fun b!871776 () Bool)

(declare-fun e!485419 () Bool)

(declare-fun tp_is_empty!17159 () Bool)

(assert (=> b!871776 (= e!485419 tp_is_empty!17159)))

(declare-fun mapIsEmpty!27338 () Bool)

(declare-fun mapRes!27338 () Bool)

(assert (=> mapIsEmpty!27338 mapRes!27338))

(declare-fun b!871777 () Bool)

(declare-fun res!592679 () Bool)

(assert (=> b!871777 (=> (not res!592679) (not e!485420))))

(declare-datatypes ((array!50446 0))(
  ( (array!50447 (arr!24250 (Array (_ BitVec 32) (_ BitVec 64))) (size!24691 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50446)

(declare-datatypes ((List!17311 0))(
  ( (Nil!17308) (Cons!17307 (h!18438 (_ BitVec 64)) (t!24356 List!17311)) )
))
(declare-fun arrayNoDuplicates!0 (array!50446 (_ BitVec 32) List!17311) Bool)

(assert (=> b!871777 (= res!592679 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17308))))

(declare-fun b!871778 () Bool)

(declare-fun res!592683 () Bool)

(assert (=> b!871778 (=> (not res!592683) (not e!485420))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871778 (= res!592683 (validMask!0 mask!1196))))

(declare-fun b!871779 () Bool)

(declare-fun res!592678 () Bool)

(assert (=> b!871779 (=> (not res!592678) (not e!485420))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!871779 (= res!592678 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24691 _keys!868))))))

(declare-fun b!871781 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!871781 (= e!485420 (and (= (select (arr!24250 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24691 _keys!868)) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!27338 () Bool)

(declare-fun tp!52538 () Bool)

(assert (=> mapNonEmpty!27338 (= mapRes!27338 (and tp!52538 e!485419))))

(declare-fun mapKey!27338 () (_ BitVec 32))

(declare-datatypes ((V!27925 0))(
  ( (V!27926 (val!8627 Int)) )
))
(declare-datatypes ((ValueCell!8140 0))(
  ( (ValueCellFull!8140 (v!11048 V!27925)) (EmptyCell!8140) )
))
(declare-fun mapRest!27338 () (Array (_ BitVec 32) ValueCell!8140))

(declare-fun mapValue!27338 () ValueCell!8140)

(declare-datatypes ((array!50448 0))(
  ( (array!50449 (arr!24251 (Array (_ BitVec 32) ValueCell!8140)) (size!24692 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50448)

(assert (=> mapNonEmpty!27338 (= (arr!24251 _values!688) (store mapRest!27338 mapKey!27338 mapValue!27338))))

(declare-fun b!871782 () Bool)

(declare-fun e!485421 () Bool)

(declare-fun e!485418 () Bool)

(assert (=> b!871782 (= e!485421 (and e!485418 mapRes!27338))))

(declare-fun condMapEmpty!27338 () Bool)

(declare-fun mapDefault!27338 () ValueCell!8140)

