; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74172 () Bool)

(assert start!74172)

(declare-fun res!592841 () Bool)

(declare-fun e!485628 () Bool)

(assert (=> start!74172 (=> (not res!592841) (not e!485628))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50492 0))(
  ( (array!50493 (arr!24272 (Array (_ BitVec 32) (_ BitVec 64))) (size!24713 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50492)

(assert (=> start!74172 (= res!592841 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24713 _keys!868))))))

(assert (=> start!74172 e!485628))

(assert (=> start!74172 true))

(declare-fun array_inv!19136 (array!50492) Bool)

(assert (=> start!74172 (array_inv!19136 _keys!868)))

(declare-datatypes ((V!27957 0))(
  ( (V!27958 (val!8639 Int)) )
))
(declare-datatypes ((ValueCell!8152 0))(
  ( (ValueCellFull!8152 (v!11060 V!27957)) (EmptyCell!8152) )
))
(declare-datatypes ((array!50494 0))(
  ( (array!50495 (arr!24273 (Array (_ BitVec 32) ValueCell!8152)) (size!24714 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50494)

(declare-fun e!485626 () Bool)

(declare-fun array_inv!19137 (array!50494) Bool)

(assert (=> start!74172 (and (array_inv!19137 _values!688) e!485626)))

(declare-fun b!872065 () Bool)

(declare-fun e!485627 () Bool)

(declare-fun mapRes!27377 () Bool)

(assert (=> b!872065 (= e!485626 (and e!485627 mapRes!27377))))

(declare-fun condMapEmpty!27377 () Bool)

(declare-fun mapDefault!27377 () ValueCell!8152)

