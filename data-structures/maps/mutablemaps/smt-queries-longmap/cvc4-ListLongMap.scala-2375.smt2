; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37724 () Bool)

(assert start!37724)

(declare-fun b_free!8819 () Bool)

(declare-fun b_next!8819 () Bool)

(assert (=> start!37724 (= b_free!8819 (not b_next!8819))))

(declare-fun tp!31209 () Bool)

(declare-fun b_and!16079 () Bool)

(assert (=> start!37724 (= tp!31209 b_and!16079)))

(declare-fun b!386480 () Bool)

(declare-fun res!220746 () Bool)

(declare-fun e!234432 () Bool)

(assert (=> b!386480 (=> (not res!220746) (not e!234432))))

(declare-datatypes ((array!22853 0))(
  ( (array!22854 (arr!10892 (Array (_ BitVec 32) (_ BitVec 64))) (size!11244 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22853)

(declare-datatypes ((List!6263 0))(
  ( (Nil!6260) (Cons!6259 (h!7115 (_ BitVec 64)) (t!11421 List!6263)) )
))
(declare-fun arrayNoDuplicates!0 (array!22853 (_ BitVec 32) List!6263) Bool)

(assert (=> b!386480 (= res!220746 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6260))))

(declare-fun b!386481 () Bool)

(declare-fun res!220750 () Bool)

(declare-fun e!234431 () Bool)

(assert (=> b!386481 (=> (not res!220750) (not e!234431))))

(declare-fun lt!181824 () array!22853)

(assert (=> b!386481 (= res!220750 (arrayNoDuplicates!0 lt!181824 #b00000000000000000000000000000000 Nil!6260))))

(declare-fun mapIsEmpty!15801 () Bool)

(declare-fun mapRes!15801 () Bool)

(assert (=> mapIsEmpty!15801 mapRes!15801))

(declare-fun b!386482 () Bool)

(declare-fun e!234430 () Bool)

(declare-fun e!234433 () Bool)

(assert (=> b!386482 (= e!234430 (and e!234433 mapRes!15801))))

(declare-fun condMapEmpty!15801 () Bool)

(declare-datatypes ((V!13759 0))(
  ( (V!13760 (val!4790 Int)) )
))
(declare-datatypes ((ValueCell!4402 0))(
  ( (ValueCellFull!4402 (v!6983 V!13759)) (EmptyCell!4402) )
))
(declare-datatypes ((array!22855 0))(
  ( (array!22856 (arr!10893 (Array (_ BitVec 32) ValueCell!4402)) (size!11245 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22855)

(declare-fun mapDefault!15801 () ValueCell!4402)

