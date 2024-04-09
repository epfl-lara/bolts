; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72368 () Bool)

(assert start!72368)

(declare-fun b!837941 () Bool)

(declare-fun res!569931 () Bool)

(declare-fun e!467793 () Bool)

(assert (=> b!837941 (=> (not res!569931) (not e!467793))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837941 (= res!569931 (validMask!0 mask!1196))))

(declare-fun b!837942 () Bool)

(declare-fun e!467792 () Bool)

(declare-fun tp_is_empty!15391 () Bool)

(assert (=> b!837942 (= e!467792 tp_is_empty!15391)))

(declare-fun b!837943 () Bool)

(declare-fun e!467796 () Bool)

(declare-fun e!467795 () Bool)

(declare-fun mapRes!24686 () Bool)

(assert (=> b!837943 (= e!467796 (and e!467795 mapRes!24686))))

(declare-fun condMapEmpty!24686 () Bool)

(declare-datatypes ((V!25569 0))(
  ( (V!25570 (val!7743 Int)) )
))
(declare-datatypes ((ValueCell!7256 0))(
  ( (ValueCellFull!7256 (v!10164 V!25569)) (EmptyCell!7256) )
))
(declare-datatypes ((array!47038 0))(
  ( (array!47039 (arr!22546 (Array (_ BitVec 32) ValueCell!7256)) (size!22987 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47038)

(declare-fun mapDefault!24686 () ValueCell!7256)

