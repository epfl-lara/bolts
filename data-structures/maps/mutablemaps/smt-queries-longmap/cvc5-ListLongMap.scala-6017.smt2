; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77998 () Bool)

(assert start!77998)

(declare-fun b_free!16513 () Bool)

(declare-fun b_next!16513 () Bool)

(assert (=> start!77998 (= b_free!16513 (not b_next!16513))))

(declare-fun tp!57808 () Bool)

(declare-fun b_and!27101 () Bool)

(assert (=> start!77998 (= tp!57808 b_and!27101)))

(declare-fun b!910124 () Bool)

(declare-fun res!614293 () Bool)

(declare-fun e!510307 () Bool)

(assert (=> b!910124 (=> (not res!614293) (not e!510307))))

(declare-datatypes ((array!53876 0))(
  ( (array!53877 (arr!25891 (Array (_ BitVec 32) (_ BitVec 64))) (size!26351 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53876)

(declare-datatypes ((List!18290 0))(
  ( (Nil!18287) (Cons!18286 (h!19432 (_ BitVec 64)) (t!25881 List!18290)) )
))
(declare-fun arrayNoDuplicates!0 (array!53876 (_ BitVec 32) List!18290) Bool)

(assert (=> b!910124 (= res!614293 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18287))))

(declare-fun b!910125 () Bool)

(declare-fun e!510311 () Bool)

(declare-fun e!510308 () Bool)

(declare-fun mapRes!30115 () Bool)

(assert (=> b!910125 (= e!510311 (and e!510308 mapRes!30115))))

(declare-fun condMapEmpty!30115 () Bool)

(declare-datatypes ((V!30207 0))(
  ( (V!30208 (val!9516 Int)) )
))
(declare-datatypes ((ValueCell!8984 0))(
  ( (ValueCellFull!8984 (v!12024 V!30207)) (EmptyCell!8984) )
))
(declare-datatypes ((array!53878 0))(
  ( (array!53879 (arr!25892 (Array (_ BitVec 32) ValueCell!8984)) (size!26352 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53878)

(declare-fun mapDefault!30115 () ValueCell!8984)

