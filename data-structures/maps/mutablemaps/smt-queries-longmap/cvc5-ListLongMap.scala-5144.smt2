; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69808 () Bool)

(assert start!69808)

(declare-fun res!554928 () Bool)

(declare-fun e!449486 () Bool)

(assert (=> start!69808 (=> (not res!554928) (not e!449486))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69808 (= res!554928 (validMask!0 mask!1312))))

(assert (=> start!69808 e!449486))

(declare-datatypes ((array!44156 0))(
  ( (array!44157 (arr!21141 (Array (_ BitVec 32) (_ BitVec 64))) (size!21562 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44156)

(declare-fun array_inv!16915 (array!44156) Bool)

(assert (=> start!69808 (array_inv!16915 _keys!976)))

(assert (=> start!69808 true))

(declare-datatypes ((V!23643 0))(
  ( (V!23644 (val!7038 Int)) )
))
(declare-datatypes ((ValueCell!6575 0))(
  ( (ValueCellFull!6575 (v!9460 V!23643)) (EmptyCell!6575) )
))
(declare-datatypes ((array!44158 0))(
  ( (array!44159 (arr!21142 (Array (_ BitVec 32) ValueCell!6575)) (size!21563 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44158)

(declare-fun e!449489 () Bool)

(declare-fun array_inv!16916 (array!44158) Bool)

(assert (=> start!69808 (and (array_inv!16916 _values!788) e!449489)))

(declare-fun b!811745 () Bool)

(declare-fun e!449488 () Bool)

(declare-fun mapRes!22531 () Bool)

(assert (=> b!811745 (= e!449489 (and e!449488 mapRes!22531))))

(declare-fun condMapEmpty!22531 () Bool)

(declare-fun mapDefault!22531 () ValueCell!6575)

