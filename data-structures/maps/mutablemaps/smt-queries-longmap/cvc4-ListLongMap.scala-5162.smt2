; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!69974 () Bool)

(assert start!69974)

(declare-fun b_free!12383 () Bool)

(declare-fun b_next!12383 () Bool)

(assert (=> start!69974 (= b_free!12383 (not b_next!12383))))

(declare-fun tp!43861 () Bool)

(declare-fun b_and!21169 () Bool)

(assert (=> start!69974 (= tp!43861 b_and!21169)))

(declare-fun b!812944 () Bool)

(declare-fun e!450449 () Bool)

(declare-fun tp_is_empty!14093 () Bool)

(assert (=> b!812944 (= e!450449 tp_is_empty!14093)))

(declare-fun mapIsEmpty!22717 () Bool)

(declare-fun mapRes!22717 () Bool)

(assert (=> mapIsEmpty!22717 mapRes!22717))

(declare-fun b!812945 () Bool)

(declare-fun e!450448 () Bool)

(assert (=> b!812945 (= e!450448 false)))

(declare-datatypes ((V!23791 0))(
  ( (V!23792 (val!7094 Int)) )
))
(declare-datatypes ((tuple2!9294 0))(
  ( (tuple2!9295 (_1!4657 (_ BitVec 64)) (_2!4657 V!23791)) )
))
(declare-datatypes ((List!15165 0))(
  ( (Nil!15162) (Cons!15161 (h!16290 tuple2!9294) (t!21488 List!15165)) )
))
(declare-datatypes ((ListLongMap!8131 0))(
  ( (ListLongMap!8132 (toList!4081 List!15165)) )
))
(declare-fun lt!364181 () ListLongMap!8131)

(declare-fun zeroValueBefore!34 () V!23791)

(declare-datatypes ((array!44376 0))(
  ( (array!44377 (arr!21245 (Array (_ BitVec 32) (_ BitVec 64))) (size!21666 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44376)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!23791)

(declare-datatypes ((ValueCell!6631 0))(
  ( (ValueCellFull!6631 (v!9517 V!23791)) (EmptyCell!6631) )
))
(declare-datatypes ((array!44378 0))(
  ( (array!44379 (arr!21246 (Array (_ BitVec 32) ValueCell!6631)) (size!21667 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44378)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2130 (array!44376 array!44378 (_ BitVec 32) (_ BitVec 32) V!23791 V!23791 (_ BitVec 32) Int) ListLongMap!8131)

(assert (=> b!812945 (= lt!364181 (getCurrentListMapNoExtraKeys!2130 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!812946 () Bool)

(declare-fun res!555542 () Bool)

(assert (=> b!812946 (=> (not res!555542) (not e!450448))))

(declare-datatypes ((List!15166 0))(
  ( (Nil!15163) (Cons!15162 (h!16291 (_ BitVec 64)) (t!21489 List!15166)) )
))
(declare-fun arrayNoDuplicates!0 (array!44376 (_ BitVec 32) List!15166) Bool)

(assert (=> b!812946 (= res!555542 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15163))))

(declare-fun b!812947 () Bool)

(declare-fun e!450450 () Bool)

(assert (=> b!812947 (= e!450450 (and e!450449 mapRes!22717))))

(declare-fun condMapEmpty!22717 () Bool)

(declare-fun mapDefault!22717 () ValueCell!6631)

