; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77920 () Bool)

(assert start!77920)

(declare-fun b_free!16451 () Bool)

(declare-fun b_next!16451 () Bool)

(assert (=> start!77920 (= b_free!16451 (not b_next!16451))))

(declare-fun tp!57618 () Bool)

(declare-fun b_and!27037 () Bool)

(assert (=> start!77920 (= tp!57618 b_and!27037)))

(declare-fun b!909346 () Bool)

(declare-fun res!613858 () Bool)

(declare-fun e!509770 () Bool)

(assert (=> b!909346 (=> (not res!613858) (not e!509770))))

(declare-datatypes ((array!53754 0))(
  ( (array!53755 (arr!25831 (Array (_ BitVec 32) (_ BitVec 64))) (size!26291 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53754)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53754 (_ BitVec 32)) Bool)

(assert (=> b!909346 (= res!613858 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909347 () Bool)

(declare-fun res!613857 () Bool)

(assert (=> b!909347 (=> (not res!613857) (not e!509770))))

(declare-datatypes ((V!30123 0))(
  ( (V!30124 (val!9485 Int)) )
))
(declare-datatypes ((ValueCell!8953 0))(
  ( (ValueCellFull!8953 (v!11992 V!30123)) (EmptyCell!8953) )
))
(declare-datatypes ((array!53756 0))(
  ( (array!53757 (arr!25832 (Array (_ BitVec 32) ValueCell!8953)) (size!26292 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53756)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!909347 (= res!613857 (and (= (size!26292 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26291 _keys!1386) (size!26292 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909348 () Bool)

(declare-fun e!509771 () Bool)

(declare-fun tp_is_empty!18869 () Bool)

(assert (=> b!909348 (= e!509771 tp_is_empty!18869)))

(declare-fun b!909349 () Bool)

(declare-fun e!509773 () Bool)

(declare-fun mapRes!30019 () Bool)

(assert (=> b!909349 (= e!509773 (and e!509771 mapRes!30019))))

(declare-fun condMapEmpty!30019 () Bool)

(declare-fun mapDefault!30019 () ValueCell!8953)

