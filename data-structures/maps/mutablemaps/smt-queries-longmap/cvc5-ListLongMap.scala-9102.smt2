; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109432 () Bool)

(assert start!109432)

(declare-fun b_free!28885 () Bool)

(declare-fun b_next!28885 () Bool)

(assert (=> start!109432 (= b_free!28885 (not b_next!28885))))

(declare-fun tp!101774 () Bool)

(declare-fun b_and!46985 () Bool)

(assert (=> start!109432 (= tp!101774 b_and!46985)))

(declare-fun mapNonEmpty!53348 () Bool)

(declare-fun mapRes!53348 () Bool)

(declare-fun tp!101775 () Bool)

(declare-fun e!738919 () Bool)

(assert (=> mapNonEmpty!53348 (= mapRes!53348 (and tp!101775 e!738919))))

(declare-datatypes ((V!51137 0))(
  ( (V!51138 (val!17337 Int)) )
))
(declare-datatypes ((ValueCell!16364 0))(
  ( (ValueCellFull!16364 (v!19938 V!51137)) (EmptyCell!16364) )
))
(declare-fun mapRest!53348 () (Array (_ BitVec 32) ValueCell!16364))

(declare-fun mapKey!53348 () (_ BitVec 32))

(declare-datatypes ((array!86035 0))(
  ( (array!86036 (arr!41514 (Array (_ BitVec 32) ValueCell!16364)) (size!42065 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86035)

(declare-fun mapValue!53348 () ValueCell!16364)

(assert (=> mapNonEmpty!53348 (= (arr!41514 _values!1445) (store mapRest!53348 mapKey!53348 mapValue!53348))))

(declare-fun b!1294953 () Bool)

(declare-fun e!738914 () Bool)

(declare-fun e!738917 () Bool)

(assert (=> b!1294953 (= e!738914 (and e!738917 mapRes!53348))))

(declare-fun condMapEmpty!53348 () Bool)

(declare-fun mapDefault!53348 () ValueCell!16364)

