; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37246 () Bool)

(assert start!37246)

(declare-fun b_free!8365 () Bool)

(declare-fun b_next!8365 () Bool)

(assert (=> start!37246 (= b_free!8365 (not b_next!8365))))

(declare-fun tp!29810 () Bool)

(declare-fun b_and!15625 () Bool)

(assert (=> start!37246 (= tp!29810 b_and!15625)))

(declare-fun res!212879 () Bool)

(declare-fun e!229274 () Bool)

(assert (=> start!37246 (=> (not res!212879) (not e!229274))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37246 (= res!212879 (validMask!0 mask!970))))

(assert (=> start!37246 e!229274))

(declare-datatypes ((V!13123 0))(
  ( (V!13124 (val!4551 Int)) )
))
(declare-datatypes ((ValueCell!4163 0))(
  ( (ValueCellFull!4163 (v!6744 V!13123)) (EmptyCell!4163) )
))
(declare-datatypes ((array!21925 0))(
  ( (array!21926 (arr!10428 (Array (_ BitVec 32) ValueCell!4163)) (size!10780 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21925)

(declare-fun e!229271 () Bool)

(declare-fun array_inv!7678 (array!21925) Bool)

(assert (=> start!37246 (and (array_inv!7678 _values!506) e!229271)))

(assert (=> start!37246 tp!29810))

(assert (=> start!37246 true))

(declare-fun tp_is_empty!9013 () Bool)

(assert (=> start!37246 tp_is_empty!9013))

(declare-datatypes ((array!21927 0))(
  ( (array!21928 (arr!10429 (Array (_ BitVec 32) (_ BitVec 64))) (size!10781 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21927)

(declare-fun array_inv!7679 (array!21927) Bool)

(assert (=> start!37246 (array_inv!7679 _keys!658)))

(declare-fun b!376461 () Bool)

(declare-fun e!229268 () Bool)

(declare-fun mapRes!15084 () Bool)

(assert (=> b!376461 (= e!229271 (and e!229268 mapRes!15084))))

(declare-fun condMapEmpty!15084 () Bool)

(declare-fun mapDefault!15084 () ValueCell!4163)

