; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39354 () Bool)

(assert start!39354)

(declare-fun b_free!9613 () Bool)

(declare-fun b_next!9613 () Bool)

(assert (=> start!39354 (= b_free!9613 (not b_next!9613))))

(declare-fun tp!34368 () Bool)

(declare-fun b_and!17119 () Bool)

(assert (=> start!39354 (= tp!34368 b_and!17119)))

(declare-fun b!417176 () Bool)

(declare-fun e!248918 () Bool)

(declare-fun e!248924 () Bool)

(assert (=> b!417176 (= e!248918 e!248924)))

(declare-fun res!243011 () Bool)

(assert (=> b!417176 (=> (not res!243011) (not e!248924))))

(declare-datatypes ((array!25365 0))(
  ( (array!25366 (arr!12129 (Array (_ BitVec 32) (_ BitVec 64))) (size!12481 (_ BitVec 32))) )
))
(declare-fun lt!191157 () array!25365)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25365 (_ BitVec 32)) Bool)

(assert (=> b!417176 (= res!243011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!191157 mask!1025))))

(declare-fun _keys!709 () array!25365)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!417176 (= lt!191157 (array!25366 (store (arr!12129 _keys!709) i!563 k!794) (size!12481 _keys!709)))))

(declare-fun b!417177 () Bool)

(declare-fun e!248920 () Bool)

(declare-fun e!248923 () Bool)

(declare-fun mapRes!17769 () Bool)

(assert (=> b!417177 (= e!248920 (and e!248923 mapRes!17769))))

(declare-fun condMapEmpty!17769 () Bool)

(declare-datatypes ((V!15459 0))(
  ( (V!15460 (val!5427 Int)) )
))
(declare-datatypes ((ValueCell!5039 0))(
  ( (ValueCellFull!5039 (v!7670 V!15459)) (EmptyCell!5039) )
))
(declare-datatypes ((array!25367 0))(
  ( (array!25368 (arr!12130 (Array (_ BitVec 32) ValueCell!5039)) (size!12482 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25367)

(declare-fun mapDefault!17769 () ValueCell!5039)

