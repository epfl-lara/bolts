; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77904 () Bool)

(assert start!77904)

(declare-fun b_free!16435 () Bool)

(declare-fun b_next!16435 () Bool)

(assert (=> start!77904 (= b_free!16435 (not b_next!16435))))

(declare-fun tp!57570 () Bool)

(declare-fun b_and!27021 () Bool)

(assert (=> start!77904 (= tp!57570 b_and!27021)))

(declare-fun b!909178 () Bool)

(declare-fun res!613759 () Bool)

(declare-fun e!509652 () Bool)

(assert (=> b!909178 (=> (not res!613759) (not e!509652))))

(declare-datatypes ((array!53724 0))(
  ( (array!53725 (arr!25816 (Array (_ BitVec 32) (_ BitVec 64))) (size!26276 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53724)

(declare-datatypes ((List!18235 0))(
  ( (Nil!18232) (Cons!18231 (h!19377 (_ BitVec 64)) (t!25824 List!18235)) )
))
(declare-fun arrayNoDuplicates!0 (array!53724 (_ BitVec 32) List!18235) Bool)

(assert (=> b!909178 (= res!613759 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18232))))

(declare-fun b!909179 () Bool)

(declare-fun e!509650 () Bool)

(declare-fun e!509651 () Bool)

(declare-fun mapRes!29995 () Bool)

(assert (=> b!909179 (= e!509650 (and e!509651 mapRes!29995))))

(declare-fun condMapEmpty!29995 () Bool)

(declare-datatypes ((V!30103 0))(
  ( (V!30104 (val!9477 Int)) )
))
(declare-datatypes ((ValueCell!8945 0))(
  ( (ValueCellFull!8945 (v!11984 V!30103)) (EmptyCell!8945) )
))
(declare-datatypes ((array!53726 0))(
  ( (array!53727 (arr!25817 (Array (_ BitVec 32) ValueCell!8945)) (size!26277 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53726)

(declare-fun mapDefault!29995 () ValueCell!8945)

