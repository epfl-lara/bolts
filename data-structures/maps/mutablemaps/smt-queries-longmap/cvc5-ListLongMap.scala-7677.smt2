; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96444 () Bool)

(assert start!96444)

(declare-fun b_free!22987 () Bool)

(declare-fun b_next!22987 () Bool)

(assert (=> start!96444 (= b_free!22987 (not b_next!22987))))

(declare-fun tp!80889 () Bool)

(declare-fun b_and!36655 () Bool)

(assert (=> start!96444 (= tp!80889 b_and!36655)))

(declare-fun b!1095788 () Bool)

(declare-fun e!625592 () Bool)

(declare-fun tp_is_empty!27037 () Bool)

(assert (=> b!1095788 (= e!625592 tp_is_empty!27037)))

(declare-fun b!1095789 () Bool)

(declare-fun res!731402 () Bool)

(declare-fun e!625593 () Bool)

(assert (=> b!1095789 (=> (not res!731402) (not e!625593))))

(declare-datatypes ((array!70940 0))(
  ( (array!70941 (arr!34138 (Array (_ BitVec 32) (_ BitVec 64))) (size!34675 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70940)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1095789 (= res!731402 (= (select (arr!34138 _keys!1070) i!650) k!904))))

(declare-fun b!1095790 () Bool)

(declare-fun res!731409 () Bool)

(assert (=> b!1095790 (=> (not res!731409) (not e!625593))))

(assert (=> b!1095790 (= res!731409 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34675 _keys!1070))))))

(declare-fun b!1095791 () Bool)

(declare-fun e!625591 () Bool)

(assert (=> b!1095791 (= e!625591 tp_is_empty!27037)))

(declare-fun b!1095792 () Bool)

(declare-fun e!625588 () Bool)

(declare-fun mapRes!42316 () Bool)

(assert (=> b!1095792 (= e!625588 (and e!625592 mapRes!42316))))

(declare-fun condMapEmpty!42316 () Bool)

(declare-datatypes ((V!41177 0))(
  ( (V!41178 (val!13575 Int)) )
))
(declare-datatypes ((ValueCell!12809 0))(
  ( (ValueCellFull!12809 (v!16197 V!41177)) (EmptyCell!12809) )
))
(declare-datatypes ((array!70942 0))(
  ( (array!70943 (arr!34139 (Array (_ BitVec 32) ValueCell!12809)) (size!34676 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70942)

(declare-fun mapDefault!42316 () ValueCell!12809)

