; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4450 () Bool)

(assert start!4450)

(declare-fun b_free!1213 () Bool)

(declare-fun b_next!1213 () Bool)

(assert (=> start!4450 (= b_free!1213 (not b_next!1213))))

(declare-fun tp!5076 () Bool)

(declare-fun b_and!2037 () Bool)

(assert (=> start!4450 (= tp!5076 b_and!2037)))

(declare-fun b!34440 () Bool)

(declare-fun e!21850 () Bool)

(declare-fun e!21848 () Bool)

(declare-fun mapRes!1897 () Bool)

(assert (=> b!34440 (= e!21850 (and e!21848 mapRes!1897))))

(declare-fun condMapEmpty!1897 () Bool)

(declare-datatypes ((V!1915 0))(
  ( (V!1916 (val!810 Int)) )
))
(declare-datatypes ((ValueCell!584 0))(
  ( (ValueCellFull!584 (v!1905 V!1915)) (EmptyCell!584) )
))
(declare-datatypes ((array!2341 0))(
  ( (array!2342 (arr!1118 (Array (_ BitVec 32) ValueCell!584)) (size!1219 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2341)

(declare-fun mapDefault!1897 () ValueCell!584)

