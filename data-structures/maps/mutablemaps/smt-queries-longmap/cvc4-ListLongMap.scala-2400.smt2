; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38008 () Bool)

(assert start!38008)

(declare-fun b_free!8969 () Bool)

(declare-fun b_next!8969 () Bool)

(assert (=> start!38008 (= b_free!8969 (not b_next!8969))))

(declare-fun tp!31676 () Bool)

(declare-fun b_and!16301 () Bool)

(assert (=> start!38008 (= tp!31676 b_and!16301)))

(declare-fun res!223725 () Bool)

(declare-fun e!236731 () Bool)

(assert (=> start!38008 (=> (not res!223725) (not e!236731))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38008 (= res!223725 (validMask!0 mask!970))))

(assert (=> start!38008 e!236731))

(declare-datatypes ((V!13959 0))(
  ( (V!13960 (val!4865 Int)) )
))
(declare-datatypes ((ValueCell!4477 0))(
  ( (ValueCellFull!4477 (v!7082 V!13959)) (EmptyCell!4477) )
))
(declare-datatypes ((array!23159 0))(
  ( (array!23160 (arr!11039 (Array (_ BitVec 32) ValueCell!4477)) (size!11391 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23159)

(declare-fun e!236732 () Bool)

(declare-fun array_inv!8094 (array!23159) Bool)

(assert (=> start!38008 (and (array_inv!8094 _values!506) e!236732)))

(assert (=> start!38008 tp!31676))

(assert (=> start!38008 true))

(declare-fun tp_is_empty!9641 () Bool)

(assert (=> start!38008 tp_is_empty!9641))

(declare-datatypes ((array!23161 0))(
  ( (array!23162 (arr!11040 (Array (_ BitVec 32) (_ BitVec 64))) (size!11392 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23161)

(declare-fun array_inv!8095 (array!23161) Bool)

(assert (=> start!38008 (array_inv!8095 _keys!658)))

(declare-fun b!390803 () Bool)

(declare-fun e!236729 () Bool)

(declare-fun mapRes!16044 () Bool)

(assert (=> b!390803 (= e!236732 (and e!236729 mapRes!16044))))

(declare-fun condMapEmpty!16044 () Bool)

(declare-fun mapDefault!16044 () ValueCell!4477)

