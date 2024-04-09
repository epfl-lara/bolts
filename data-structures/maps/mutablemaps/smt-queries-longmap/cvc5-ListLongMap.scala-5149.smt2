; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69870 () Bool)

(assert start!69870)

(declare-fun b!812072 () Bool)

(declare-fun res!555070 () Bool)

(declare-fun e!449772 () Bool)

(assert (=> b!812072 (=> (not res!555070) (not e!449772))))

(declare-datatypes ((array!44222 0))(
  ( (array!44223 (arr!21170 (Array (_ BitVec 32) (_ BitVec 64))) (size!21591 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44222)

(assert (=> b!812072 (= res!555070 (and (bvsle #b00000000000000000000000000000000 (size!21591 _keys!976)) (bvslt (size!21591 _keys!976) #b01111111111111111111111111111111)))))

(declare-fun res!555075 () Bool)

(assert (=> start!69870 (=> (not res!555075) (not e!449772))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69870 (= res!555075 (validMask!0 mask!1312))))

(assert (=> start!69870 e!449772))

(declare-fun array_inv!16937 (array!44222) Bool)

(assert (=> start!69870 (array_inv!16937 _keys!976)))

(assert (=> start!69870 true))

(declare-datatypes ((V!23683 0))(
  ( (V!23684 (val!7053 Int)) )
))
(declare-datatypes ((ValueCell!6590 0))(
  ( (ValueCellFull!6590 (v!9475 V!23683)) (EmptyCell!6590) )
))
(declare-datatypes ((array!44224 0))(
  ( (array!44225 (arr!21171 (Array (_ BitVec 32) ValueCell!6590)) (size!21592 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44224)

(declare-fun e!449771 () Bool)

(declare-fun array_inv!16938 (array!44224) Bool)

(assert (=> start!69870 (and (array_inv!16938 _values!788) e!449771)))

(declare-fun b!812073 () Bool)

(declare-fun e!449773 () Bool)

(declare-fun mapRes!22588 () Bool)

(assert (=> b!812073 (= e!449771 (and e!449773 mapRes!22588))))

(declare-fun condMapEmpty!22588 () Bool)

(declare-fun mapDefault!22588 () ValueCell!6590)

