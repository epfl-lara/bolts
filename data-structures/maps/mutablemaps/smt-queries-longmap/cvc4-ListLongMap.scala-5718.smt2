; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74124 () Bool)

(assert start!74124)

(declare-fun b!871625 () Bool)

(declare-fun e!485329 () Bool)

(declare-fun tp_is_empty!17147 () Bool)

(assert (=> b!871625 (= e!485329 tp_is_empty!17147)))

(declare-fun b!871626 () Bool)

(declare-fun res!592582 () Bool)

(declare-fun e!485327 () Bool)

(assert (=> b!871626 (=> (not res!592582) (not e!485327))))

(declare-datatypes ((array!50422 0))(
  ( (array!50423 (arr!24238 (Array (_ BitVec 32) (_ BitVec 64))) (size!24679 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50422)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50422 (_ BitVec 32)) Bool)

(assert (=> b!871626 (= res!592582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871627 () Bool)

(declare-fun e!485328 () Bool)

(declare-fun mapRes!27320 () Bool)

(assert (=> b!871627 (= e!485328 (and e!485329 mapRes!27320))))

(declare-fun condMapEmpty!27320 () Bool)

(declare-datatypes ((V!27909 0))(
  ( (V!27910 (val!8621 Int)) )
))
(declare-datatypes ((ValueCell!8134 0))(
  ( (ValueCellFull!8134 (v!11042 V!27909)) (EmptyCell!8134) )
))
(declare-datatypes ((array!50424 0))(
  ( (array!50425 (arr!24239 (Array (_ BitVec 32) ValueCell!8134)) (size!24680 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50424)

(declare-fun mapDefault!27320 () ValueCell!8134)

