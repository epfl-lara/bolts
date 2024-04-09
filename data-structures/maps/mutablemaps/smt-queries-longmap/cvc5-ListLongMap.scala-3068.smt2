; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43268 () Bool)

(assert start!43268)

(declare-fun b_free!12127 () Bool)

(declare-fun b_next!12127 () Bool)

(assert (=> start!43268 (= b_free!12127 (not b_next!12127))))

(declare-fun tp!42652 () Bool)

(declare-fun b_and!20897 () Bool)

(assert (=> start!43268 (= tp!42652 b_and!20897)))

(declare-fun mapIsEmpty!22156 () Bool)

(declare-fun mapRes!22156 () Bool)

(assert (=> mapIsEmpty!22156 mapRes!22156))

(declare-fun b!479105 () Bool)

(declare-fun e!281863 () Bool)

(declare-fun tp_is_empty!13639 () Bool)

(assert (=> b!479105 (= e!281863 tp_is_empty!13639)))

(declare-fun b!479106 () Bool)

(declare-fun res!285864 () Bool)

(declare-fun e!281859 () Bool)

(assert (=> b!479106 (=> (not res!285864) (not e!281859))))

(declare-datatypes ((array!30917 0))(
  ( (array!30918 (arr!14862 (Array (_ BitVec 32) (_ BitVec 64))) (size!15220 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30917)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30917 (_ BitVec 32)) Bool)

(assert (=> b!479106 (= res!285864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479107 () Bool)

(declare-fun e!281862 () Bool)

(declare-fun e!281860 () Bool)

(assert (=> b!479107 (= e!281862 (and e!281860 mapRes!22156))))

(declare-fun condMapEmpty!22156 () Bool)

(declare-datatypes ((V!19257 0))(
  ( (V!19258 (val!6867 Int)) )
))
(declare-datatypes ((ValueCell!6458 0))(
  ( (ValueCellFull!6458 (v!9152 V!19257)) (EmptyCell!6458) )
))
(declare-datatypes ((array!30919 0))(
  ( (array!30920 (arr!14863 (Array (_ BitVec 32) ValueCell!6458)) (size!15221 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30919)

(declare-fun mapDefault!22156 () ValueCell!6458)

