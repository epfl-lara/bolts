; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77910 () Bool)

(assert start!77910)

(declare-fun b_free!16441 () Bool)

(declare-fun b_next!16441 () Bool)

(assert (=> start!77910 (= b_free!16441 (not b_next!16441))))

(declare-fun tp!57589 () Bool)

(declare-fun b_and!27027 () Bool)

(assert (=> start!77910 (= tp!57589 b_and!27027)))

(declare-fun b!909241 () Bool)

(declare-fun res!613797 () Bool)

(declare-fun e!509698 () Bool)

(assert (=> b!909241 (=> (not res!613797) (not e!509698))))

(declare-datatypes ((array!53736 0))(
  ( (array!53737 (arr!25822 (Array (_ BitVec 32) (_ BitVec 64))) (size!26282 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53736)

(declare-datatypes ((List!18239 0))(
  ( (Nil!18236) (Cons!18235 (h!19381 (_ BitVec 64)) (t!25828 List!18239)) )
))
(declare-fun arrayNoDuplicates!0 (array!53736 (_ BitVec 32) List!18239) Bool)

(assert (=> b!909241 (= res!613797 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18236))))

(declare-fun b!909242 () Bool)

(declare-fun e!509696 () Bool)

(declare-fun e!509697 () Bool)

(declare-fun mapRes!30004 () Bool)

(assert (=> b!909242 (= e!509696 (and e!509697 mapRes!30004))))

(declare-fun condMapEmpty!30004 () Bool)

(declare-datatypes ((V!30111 0))(
  ( (V!30112 (val!9480 Int)) )
))
(declare-datatypes ((ValueCell!8948 0))(
  ( (ValueCellFull!8948 (v!11987 V!30111)) (EmptyCell!8948) )
))
(declare-datatypes ((array!53738 0))(
  ( (array!53739 (arr!25823 (Array (_ BitVec 32) ValueCell!8948)) (size!26283 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53738)

(declare-fun mapDefault!30004 () ValueCell!8948)

