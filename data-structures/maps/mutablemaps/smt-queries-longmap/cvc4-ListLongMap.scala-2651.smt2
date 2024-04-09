; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39736 () Bool)

(assert start!39736)

(declare-fun b_free!9995 () Bool)

(declare-fun b_next!9995 () Bool)

(assert (=> start!39736 (= b_free!9995 (not b_next!9995))))

(declare-fun tp!35513 () Bool)

(declare-fun b_and!17669 () Bool)

(assert (=> start!39736 (= tp!35513 b_and!17669)))

(declare-fun b!427108 () Bool)

(declare-fun res!250564 () Bool)

(declare-fun e!253282 () Bool)

(assert (=> b!427108 (=> (not res!250564) (not e!253282))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!427108 (= res!250564 (validMask!0 mask!1025))))

(declare-fun b!427109 () Bool)

(declare-fun res!250567 () Bool)

(assert (=> b!427109 (=> (not res!250567) (not e!253282))))

(declare-datatypes ((array!26113 0))(
  ( (array!26114 (arr!12503 (Array (_ BitVec 32) (_ BitVec 64))) (size!12855 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26113)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!427109 (= res!250567 (or (= (select (arr!12503 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12503 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!427110 () Bool)

(declare-fun res!250569 () Bool)

(assert (=> b!427110 (=> (not res!250569) (not e!253282))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!427110 (= res!250569 (validKeyInArray!0 k!794))))

(declare-fun b!427111 () Bool)

(declare-fun e!253279 () Bool)

(declare-fun e!253276 () Bool)

(declare-fun mapRes!18342 () Bool)

(assert (=> b!427111 (= e!253279 (and e!253276 mapRes!18342))))

(declare-fun condMapEmpty!18342 () Bool)

(declare-datatypes ((V!15967 0))(
  ( (V!15968 (val!5618 Int)) )
))
(declare-datatypes ((ValueCell!5230 0))(
  ( (ValueCellFull!5230 (v!7861 V!15967)) (EmptyCell!5230) )
))
(declare-datatypes ((array!26115 0))(
  ( (array!26116 (arr!12504 (Array (_ BitVec 32) ValueCell!5230)) (size!12856 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26115)

(declare-fun mapDefault!18342 () ValueCell!5230)

