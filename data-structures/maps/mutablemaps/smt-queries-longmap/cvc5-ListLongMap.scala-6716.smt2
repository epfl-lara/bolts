; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84296 () Bool)

(assert start!84296)

(declare-fun res!659714 () Bool)

(declare-fun e!555691 () Bool)

(assert (=> start!84296 (=> (not res!659714) (not e!555691))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84296 (= res!659714 (validMask!0 mask!1948))))

(assert (=> start!84296 e!555691))

(assert (=> start!84296 true))

(declare-datatypes ((V!35745 0))(
  ( (V!35746 (val!11586 Int)) )
))
(declare-datatypes ((ValueCell!11054 0))(
  ( (ValueCellFull!11054 (v!14148 V!35745)) (EmptyCell!11054) )
))
(declare-datatypes ((array!62105 0))(
  ( (array!62106 (arr!29906 (Array (_ BitVec 32) ValueCell!11054)) (size!30386 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62105)

(declare-fun e!555695 () Bool)

(declare-fun array_inv!22981 (array!62105) Bool)

(assert (=> start!84296 (and (array_inv!22981 _values!1278) e!555695)))

(declare-datatypes ((array!62107 0))(
  ( (array!62108 (arr!29907 (Array (_ BitVec 32) (_ BitVec 64))) (size!30387 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!62107)

(declare-fun array_inv!22982 (array!62107) Bool)

(assert (=> start!84296 (array_inv!22982 _keys!1544)))

(declare-fun mapIsEmpty!36635 () Bool)

(declare-fun mapRes!36635 () Bool)

(assert (=> mapIsEmpty!36635 mapRes!36635))

(declare-fun b!985735 () Bool)

(declare-fun e!555693 () Bool)

(assert (=> b!985735 (= e!555695 (and e!555693 mapRes!36635))))

(declare-fun condMapEmpty!36635 () Bool)

(declare-fun mapDefault!36635 () ValueCell!11054)

