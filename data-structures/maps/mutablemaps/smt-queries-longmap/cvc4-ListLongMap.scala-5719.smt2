; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74130 () Bool)

(assert start!74130)

(declare-fun b!871688 () Bool)

(declare-fun res!592620 () Bool)

(declare-fun e!485373 () Bool)

(assert (=> b!871688 (=> (not res!592620) (not e!485373))))

(declare-datatypes ((array!50434 0))(
  ( (array!50435 (arr!24244 (Array (_ BitVec 32) (_ BitVec 64))) (size!24685 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50434)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50434 (_ BitVec 32)) Bool)

(assert (=> b!871688 (= res!592620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871689 () Bool)

(declare-fun res!592619 () Bool)

(assert (=> b!871689 (=> (not res!592619) (not e!485373))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871689 (= res!592619 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27329 () Bool)

(declare-fun mapRes!27329 () Bool)

(assert (=> mapIsEmpty!27329 mapRes!27329))

(declare-fun b!871690 () Bool)

(declare-fun e!485374 () Bool)

(declare-fun e!485376 () Bool)

(assert (=> b!871690 (= e!485374 (and e!485376 mapRes!27329))))

(declare-fun condMapEmpty!27329 () Bool)

(declare-datatypes ((V!27917 0))(
  ( (V!27918 (val!8624 Int)) )
))
(declare-datatypes ((ValueCell!8137 0))(
  ( (ValueCellFull!8137 (v!11045 V!27917)) (EmptyCell!8137) )
))
(declare-datatypes ((array!50436 0))(
  ( (array!50437 (arr!24245 (Array (_ BitVec 32) ValueCell!8137)) (size!24686 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50436)

(declare-fun mapDefault!27329 () ValueCell!8137)

