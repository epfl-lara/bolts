; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7330 () Bool)

(assert start!7330)

(declare-fun b!47092 () Bool)

(declare-fun e!30077 () Bool)

(declare-fun e!30079 () Bool)

(declare-fun mapRes!2027 () Bool)

(assert (=> b!47092 (= e!30077 (and e!30079 mapRes!2027))))

(declare-fun condMapEmpty!2027 () Bool)

(declare-datatypes ((V!2399 0))(
  ( (V!2400 (val!1038 Int)) )
))
(declare-datatypes ((ValueCell!710 0))(
  ( (ValueCellFull!710 (v!2097 V!2399)) (EmptyCell!710) )
))
(declare-datatypes ((array!3058 0))(
  ( (array!3059 (arr!1468 (Array (_ BitVec 32) ValueCell!710)) (size!1690 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3058)

(declare-fun mapDefault!2027 () ValueCell!710)

