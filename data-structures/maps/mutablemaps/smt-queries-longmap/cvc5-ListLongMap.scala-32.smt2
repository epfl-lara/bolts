; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!624 () Bool)

(assert start!624)

(declare-fun b_free!97 () Bool)

(declare-fun b_next!97 () Bool)

(assert (=> start!624 (= b_free!97 (not b_next!97))))

(declare-fun tp!508 () Bool)

(declare-fun b_and!235 () Bool)

(assert (=> start!624 (= tp!508 b_and!235)))

(declare-fun b!3952 () Bool)

(declare-fun e!2030 () Bool)

(declare-fun tp_is_empty!175 () Bool)

(assert (=> b!3952 (= e!2030 tp_is_empty!175)))

(declare-fun b!3953 () Bool)

(declare-fun res!5464 () Bool)

(declare-fun e!2028 () Bool)

(assert (=> b!3953 (=> (not res!5464) (not e!2028))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!411 0))(
  ( (V!412 (val!93 Int)) )
))
(declare-datatypes ((ValueCell!71 0))(
  ( (ValueCellFull!71 (v!1180 V!411)) (EmptyCell!71) )
))
(declare-datatypes ((array!283 0))(
  ( (array!284 (arr!134 (Array (_ BitVec 32) ValueCell!71)) (size!196 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!283)

(declare-datatypes ((array!285 0))(
  ( (array!286 (arr!135 (Array (_ BitVec 32) (_ BitVec 64))) (size!197 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!285)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3953 (= res!5464 (and (= (size!196 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!197 _keys!1806) (size!196 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!3954 () Bool)

(declare-fun e!2029 () Bool)

(declare-fun mapRes!221 () Bool)

(assert (=> b!3954 (= e!2029 (and e!2030 mapRes!221))))

(declare-fun condMapEmpty!221 () Bool)

(declare-fun mapDefault!221 () ValueCell!71)

