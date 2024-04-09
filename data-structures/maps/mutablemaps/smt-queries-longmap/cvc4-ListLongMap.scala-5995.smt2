; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77854 () Bool)

(assert start!77854)

(declare-fun b_free!16385 () Bool)

(declare-fun b_next!16385 () Bool)

(assert (=> start!77854 (= b_free!16385 (not b_next!16385))))

(declare-fun tp!57421 () Bool)

(declare-fun b_and!26945 () Bool)

(assert (=> start!77854 (= tp!57421 b_and!26945)))

(declare-fun b!908405 () Bool)

(declare-fun e!509170 () Bool)

(declare-fun e!509164 () Bool)

(declare-fun mapRes!29920 () Bool)

(assert (=> b!908405 (= e!509170 (and e!509164 mapRes!29920))))

(declare-fun condMapEmpty!29920 () Bool)

(declare-datatypes ((V!30035 0))(
  ( (V!30036 (val!9452 Int)) )
))
(declare-datatypes ((ValueCell!8920 0))(
  ( (ValueCellFull!8920 (v!11959 V!30035)) (EmptyCell!8920) )
))
(declare-datatypes ((array!53632 0))(
  ( (array!53633 (arr!25770 (Array (_ BitVec 32) ValueCell!8920)) (size!26230 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53632)

(declare-fun mapDefault!29920 () ValueCell!8920)

