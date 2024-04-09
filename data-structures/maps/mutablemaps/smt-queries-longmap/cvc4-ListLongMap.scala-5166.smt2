; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69998 () Bool)

(assert start!69998)

(declare-fun b_free!12407 () Bool)

(declare-fun b_next!12407 () Bool)

(assert (=> start!69998 (= b_free!12407 (not b_next!12407))))

(declare-fun tp!43933 () Bool)

(declare-fun b_and!21193 () Bool)

(assert (=> start!69998 (= tp!43933 b_and!21193)))

(declare-fun res!555685 () Bool)

(declare-fun e!450630 () Bool)

(assert (=> start!69998 (=> (not res!555685) (not e!450630))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69998 (= res!555685 (validMask!0 mask!1312))))

(assert (=> start!69998 e!450630))

(declare-fun tp_is_empty!14117 () Bool)

(assert (=> start!69998 tp_is_empty!14117))

(declare-datatypes ((array!44422 0))(
  ( (array!44423 (arr!21268 (Array (_ BitVec 32) (_ BitVec 64))) (size!21689 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44422)

(declare-fun array_inv!17009 (array!44422) Bool)

(assert (=> start!69998 (array_inv!17009 _keys!976)))

(assert (=> start!69998 true))

(declare-datatypes ((V!23823 0))(
  ( (V!23824 (val!7106 Int)) )
))
(declare-datatypes ((ValueCell!6643 0))(
  ( (ValueCellFull!6643 (v!9529 V!23823)) (EmptyCell!6643) )
))
(declare-datatypes ((array!44424 0))(
  ( (array!44425 (arr!21269 (Array (_ BitVec 32) ValueCell!6643)) (size!21690 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44424)

(declare-fun e!450629 () Bool)

(declare-fun array_inv!17010 (array!44424) Bool)

(assert (=> start!69998 (and (array_inv!17010 _values!788) e!450629)))

(assert (=> start!69998 tp!43933))

(declare-fun b!813196 () Bool)

(declare-fun e!450631 () Bool)

(declare-fun mapRes!22753 () Bool)

(assert (=> b!813196 (= e!450629 (and e!450631 mapRes!22753))))

(declare-fun condMapEmpty!22753 () Bool)

(declare-fun mapDefault!22753 () ValueCell!6643)

