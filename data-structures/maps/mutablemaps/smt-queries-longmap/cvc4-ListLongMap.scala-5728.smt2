; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74196 () Bool)

(assert start!74196)

(declare-fun mapIsEmpty!27413 () Bool)

(declare-fun mapRes!27413 () Bool)

(assert (=> mapIsEmpty!27413 mapRes!27413))

(declare-fun b!872317 () Bool)

(declare-fun res!592984 () Bool)

(declare-fun e!485806 () Bool)

(assert (=> b!872317 (=> (not res!592984) (not e!485806))))

(declare-datatypes ((array!50536 0))(
  ( (array!50537 (arr!24294 (Array (_ BitVec 32) (_ BitVec 64))) (size!24735 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50536)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50536 (_ BitVec 32)) Bool)

(assert (=> b!872317 (= res!592984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872318 () Bool)

(declare-fun res!592986 () Bool)

(assert (=> b!872318 (=> (not res!592986) (not e!485806))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27989 0))(
  ( (V!27990 (val!8651 Int)) )
))
(declare-datatypes ((ValueCell!8164 0))(
  ( (ValueCellFull!8164 (v!11072 V!27989)) (EmptyCell!8164) )
))
(declare-datatypes ((array!50538 0))(
  ( (array!50539 (arr!24295 (Array (_ BitVec 32) ValueCell!8164)) (size!24736 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50538)

(assert (=> b!872318 (= res!592986 (and (= (size!24736 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24735 _keys!868) (size!24736 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872319 () Bool)

(declare-fun e!485805 () Bool)

(declare-fun tp_is_empty!17207 () Bool)

(assert (=> b!872319 (= e!485805 tp_is_empty!17207)))

(declare-fun b!872320 () Bool)

(assert (=> b!872320 (= e!485806 false)))

(declare-fun lt!395571 () Bool)

(declare-datatypes ((List!17328 0))(
  ( (Nil!17325) (Cons!17324 (h!18455 (_ BitVec 64)) (t!24373 List!17328)) )
))
(declare-fun arrayNoDuplicates!0 (array!50536 (_ BitVec 32) List!17328) Bool)

(assert (=> b!872320 (= lt!395571 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17325))))

(declare-fun res!592985 () Bool)

(assert (=> start!74196 (=> (not res!592985) (not e!485806))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74196 (= res!592985 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24735 _keys!868))))))

(assert (=> start!74196 e!485806))

(assert (=> start!74196 true))

(declare-fun array_inv!19152 (array!50536) Bool)

(assert (=> start!74196 (array_inv!19152 _keys!868)))

(declare-fun e!485807 () Bool)

(declare-fun array_inv!19153 (array!50538) Bool)

(assert (=> start!74196 (and (array_inv!19153 _values!688) e!485807)))

(declare-fun b!872321 () Bool)

(declare-fun e!485808 () Bool)

(assert (=> b!872321 (= e!485807 (and e!485808 mapRes!27413))))

(declare-fun condMapEmpty!27413 () Bool)

(declare-fun mapDefault!27413 () ValueCell!8164)

