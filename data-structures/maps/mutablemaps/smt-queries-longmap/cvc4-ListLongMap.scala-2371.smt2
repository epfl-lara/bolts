; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37700 () Bool)

(assert start!37700)

(declare-fun b_free!8795 () Bool)

(declare-fun b_next!8795 () Bool)

(assert (=> start!37700 (= b_free!8795 (not b_next!8795))))

(declare-fun tp!31137 () Bool)

(declare-fun b_and!16055 () Bool)

(assert (=> start!37700 (= tp!31137 b_and!16055)))

(declare-fun b!386012 () Bool)

(declare-fun res!220383 () Bool)

(declare-fun e!234219 () Bool)

(assert (=> b!386012 (=> (not res!220383) (not e!234219))))

(declare-datatypes ((array!22809 0))(
  ( (array!22810 (arr!10870 (Array (_ BitVec 32) (_ BitVec 64))) (size!11222 (_ BitVec 32))) )
))
(declare-fun lt!181717 () array!22809)

(declare-datatypes ((List!6249 0))(
  ( (Nil!6246) (Cons!6245 (h!7101 (_ BitVec 64)) (t!11407 List!6249)) )
))
(declare-fun arrayNoDuplicates!0 (array!22809 (_ BitVec 32) List!6249) Bool)

(assert (=> b!386012 (= res!220383 (arrayNoDuplicates!0 lt!181717 #b00000000000000000000000000000000 Nil!6246))))

(declare-fun b!386013 () Bool)

(declare-fun e!234216 () Bool)

(declare-fun tp_is_empty!9467 () Bool)

(assert (=> b!386013 (= e!234216 tp_is_empty!9467)))

(declare-fun mapIsEmpty!15765 () Bool)

(declare-fun mapRes!15765 () Bool)

(assert (=> mapIsEmpty!15765 mapRes!15765))

(declare-fun b!386014 () Bool)

(declare-fun e!234218 () Bool)

(assert (=> b!386014 (= e!234218 (and e!234216 mapRes!15765))))

(declare-fun condMapEmpty!15765 () Bool)

(declare-datatypes ((V!13727 0))(
  ( (V!13728 (val!4778 Int)) )
))
(declare-datatypes ((ValueCell!4390 0))(
  ( (ValueCellFull!4390 (v!6971 V!13727)) (EmptyCell!4390) )
))
(declare-datatypes ((array!22811 0))(
  ( (array!22812 (arr!10871 (Array (_ BitVec 32) ValueCell!4390)) (size!11223 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22811)

(declare-fun mapDefault!15765 () ValueCell!4390)

