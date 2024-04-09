; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74132 () Bool)

(assert start!74132)

(declare-fun b!871715 () Bool)

(declare-fun res!592640 () Bool)

(declare-fun e!485387 () Bool)

(assert (=> b!871715 (=> (not res!592640) (not e!485387))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50438 0))(
  ( (array!50439 (arr!24246 (Array (_ BitVec 32) (_ BitVec 64))) (size!24687 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50438)

(declare-datatypes ((V!27921 0))(
  ( (V!27922 (val!8625 Int)) )
))
(declare-datatypes ((ValueCell!8138 0))(
  ( (ValueCellFull!8138 (v!11046 V!27921)) (EmptyCell!8138) )
))
(declare-datatypes ((array!50440 0))(
  ( (array!50441 (arr!24247 (Array (_ BitVec 32) ValueCell!8138)) (size!24688 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50440)

(assert (=> b!871715 (= res!592640 (and (= (size!24688 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24687 _keys!868) (size!24688 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27332 () Bool)

(declare-fun mapRes!27332 () Bool)

(declare-fun tp!52532 () Bool)

(declare-fun e!485391 () Bool)

(assert (=> mapNonEmpty!27332 (= mapRes!27332 (and tp!52532 e!485391))))

(declare-fun mapValue!27332 () ValueCell!8138)

(declare-fun mapKey!27332 () (_ BitVec 32))

(declare-fun mapRest!27332 () (Array (_ BitVec 32) ValueCell!8138))

(assert (=> mapNonEmpty!27332 (= (arr!24247 _values!688) (store mapRest!27332 mapKey!27332 mapValue!27332))))

(declare-fun b!871716 () Bool)

(declare-fun res!592639 () Bool)

(assert (=> b!871716 (=> (not res!592639) (not e!485387))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!871716 (= res!592639 (validKeyInArray!0 k!854))))

(declare-fun b!871717 () Bool)

(declare-fun res!592635 () Bool)

(assert (=> b!871717 (=> (not res!592635) (not e!485387))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871717 (= res!592635 (validMask!0 mask!1196))))

(declare-fun res!592637 () Bool)

(assert (=> start!74132 (=> (not res!592637) (not e!485387))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74132 (= res!592637 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24687 _keys!868))))))

(assert (=> start!74132 e!485387))

(assert (=> start!74132 true))

(declare-fun array_inv!19116 (array!50438) Bool)

(assert (=> start!74132 (array_inv!19116 _keys!868)))

(declare-fun e!485390 () Bool)

(declare-fun array_inv!19117 (array!50440) Bool)

(assert (=> start!74132 (and (array_inv!19117 _values!688) e!485390)))

(declare-fun b!871718 () Bool)

(declare-fun res!592638 () Bool)

(assert (=> b!871718 (=> (not res!592638) (not e!485387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50438 (_ BitVec 32)) Bool)

(assert (=> b!871718 (= res!592638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun b!871719 () Bool)

(assert (=> b!871719 (= e!485387 (and (= (select (arr!24246 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24687 _keys!868)) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!871720 () Bool)

(declare-fun res!592636 () Bool)

(assert (=> b!871720 (=> (not res!592636) (not e!485387))))

(declare-datatypes ((List!17309 0))(
  ( (Nil!17306) (Cons!17305 (h!18436 (_ BitVec 64)) (t!24354 List!17309)) )
))
(declare-fun arrayNoDuplicates!0 (array!50438 (_ BitVec 32) List!17309) Bool)

(assert (=> b!871720 (= res!592636 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17306))))

(declare-fun b!871721 () Bool)

(declare-fun res!592641 () Bool)

(assert (=> b!871721 (=> (not res!592641) (not e!485387))))

(assert (=> b!871721 (= res!592641 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24687 _keys!868))))))

(declare-fun b!871722 () Bool)

(declare-fun e!485389 () Bool)

(assert (=> b!871722 (= e!485390 (and e!485389 mapRes!27332))))

(declare-fun condMapEmpty!27332 () Bool)

(declare-fun mapDefault!27332 () ValueCell!8138)

