; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84246 () Bool)

(assert start!84246)

(declare-fun b_free!19919 () Bool)

(declare-fun b_next!19919 () Bool)

(assert (=> start!84246 (= b_free!19919 (not b_next!19919))))

(declare-fun tp!69361 () Bool)

(declare-fun b_and!31933 () Bool)

(assert (=> start!84246 (= tp!69361 b_and!31933)))

(declare-fun b!984972 () Bool)

(declare-fun e!555262 () Bool)

(declare-fun e!555266 () Bool)

(declare-fun mapRes!36560 () Bool)

(assert (=> b!984972 (= e!555262 (and e!555266 mapRes!36560))))

(declare-fun condMapEmpty!36560 () Bool)

(declare-datatypes ((V!35677 0))(
  ( (V!35678 (val!11561 Int)) )
))
(declare-datatypes ((ValueCell!11029 0))(
  ( (ValueCellFull!11029 (v!14123 V!35677)) (EmptyCell!11029) )
))
(declare-datatypes ((array!62009 0))(
  ( (array!62010 (arr!29858 (Array (_ BitVec 32) ValueCell!11029)) (size!30338 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62009)

(declare-fun mapDefault!36560 () ValueCell!11029)

