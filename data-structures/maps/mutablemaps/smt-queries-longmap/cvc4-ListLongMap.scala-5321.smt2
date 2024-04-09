; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71194 () Bool)

(assert start!71194)

(declare-fun b_free!13337 () Bool)

(declare-fun b_next!13337 () Bool)

(assert (=> start!71194 (= b_free!13337 (not b_next!13337))))

(declare-fun tp!46771 () Bool)

(declare-fun b_and!22281 () Bool)

(assert (=> start!71194 (= tp!46771 b_and!22281)))

(declare-fun b!826565 () Bool)

(declare-fun res!563572 () Bool)

(declare-fun e!460374 () Bool)

(assert (=> b!826565 (=> (not res!563572) (not e!460374))))

(declare-datatypes ((array!46234 0))(
  ( (array!46235 (arr!22158 (Array (_ BitVec 32) (_ BitVec 64))) (size!22579 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46234)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46234 (_ BitVec 32)) Bool)

(assert (=> b!826565 (= res!563572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!826566 () Bool)

(declare-fun e!460376 () Bool)

(declare-fun e!460372 () Bool)

(declare-fun mapRes!24196 () Bool)

(assert (=> b!826566 (= e!460376 (and e!460372 mapRes!24196))))

(declare-fun condMapEmpty!24196 () Bool)

(declare-datatypes ((V!25063 0))(
  ( (V!25064 (val!7571 Int)) )
))
(declare-datatypes ((ValueCell!7108 0))(
  ( (ValueCellFull!7108 (v!10001 V!25063)) (EmptyCell!7108) )
))
(declare-datatypes ((array!46236 0))(
  ( (array!46237 (arr!22159 (Array (_ BitVec 32) ValueCell!7108)) (size!22580 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46236)

(declare-fun mapDefault!24196 () ValueCell!7108)

