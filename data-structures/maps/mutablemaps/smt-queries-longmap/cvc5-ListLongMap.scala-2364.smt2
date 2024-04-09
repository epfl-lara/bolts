; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37654 () Bool)

(assert start!37654)

(declare-fun b!385245 () Bool)

(declare-fun e!233826 () Bool)

(assert (=> b!385245 (= e!233826 false)))

(declare-fun lt!181576 () Bool)

(declare-datatypes ((array!22721 0))(
  ( (array!22722 (arr!10826 (Array (_ BitVec 32) (_ BitVec 64))) (size!11178 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22721)

(declare-datatypes ((List!6221 0))(
  ( (Nil!6218) (Cons!6217 (h!7073 (_ BitVec 64)) (t!11379 List!6221)) )
))
(declare-fun arrayNoDuplicates!0 (array!22721 (_ BitVec 32) List!6221) Bool)

(assert (=> b!385245 (= lt!181576 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6218))))

(declare-fun mapIsEmpty!15696 () Bool)

(declare-fun mapRes!15696 () Bool)

(assert (=> mapIsEmpty!15696 mapRes!15696))

(declare-fun b!385246 () Bool)

(declare-fun res!219824 () Bool)

(assert (=> b!385246 (=> (not res!219824) (not e!233826))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22721 (_ BitVec 32)) Bool)

(assert (=> b!385246 (= res!219824 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385247 () Bool)

(declare-fun e!233827 () Bool)

(declare-fun tp_is_empty!9421 () Bool)

(assert (=> b!385247 (= e!233827 tp_is_empty!9421)))

(declare-fun b!385248 () Bool)

(declare-fun e!233825 () Bool)

(declare-fun e!233829 () Bool)

(assert (=> b!385248 (= e!233825 (and e!233829 mapRes!15696))))

(declare-fun condMapEmpty!15696 () Bool)

(declare-datatypes ((V!13667 0))(
  ( (V!13668 (val!4755 Int)) )
))
(declare-datatypes ((ValueCell!4367 0))(
  ( (ValueCellFull!4367 (v!6948 V!13667)) (EmptyCell!4367) )
))
(declare-datatypes ((array!22723 0))(
  ( (array!22724 (arr!10827 (Array (_ BitVec 32) ValueCell!4367)) (size!11179 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22723)

(declare-fun mapDefault!15696 () ValueCell!4367)

