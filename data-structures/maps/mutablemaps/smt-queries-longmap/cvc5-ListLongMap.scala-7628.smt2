; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96124 () Bool)

(assert start!96124)

(declare-fun b_free!22741 () Bool)

(declare-fun b_next!22741 () Bool)

(assert (=> start!96124 (= b_free!22741 (not b_next!22741))))

(declare-fun tp!80073 () Bool)

(declare-fun b_and!36175 () Bool)

(assert (=> start!96124 (= tp!80073 b_and!36175)))

(declare-fun mapIsEmpty!41869 () Bool)

(declare-fun mapRes!41869 () Bool)

(assert (=> mapIsEmpty!41869 mapRes!41869))

(declare-fun b!1090001 () Bool)

(declare-fun res!727222 () Bool)

(declare-fun e!622600 () Bool)

(assert (=> b!1090001 (=> (not res!727222) (not e!622600))))

(declare-datatypes ((array!70374 0))(
  ( (array!70375 (arr!33857 (Array (_ BitVec 32) (_ BitVec 64))) (size!34394 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70374)

(declare-datatypes ((List!23778 0))(
  ( (Nil!23775) (Cons!23774 (h!24983 (_ BitVec 64)) (t!33584 List!23778)) )
))
(declare-fun arrayNoDuplicates!0 (array!70374 (_ BitVec 32) List!23778) Bool)

(assert (=> b!1090001 (= res!727222 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23775))))

(declare-fun b!1090002 () Bool)

(declare-fun e!622593 () Bool)

(declare-fun e!622594 () Bool)

(assert (=> b!1090002 (= e!622593 (and e!622594 mapRes!41869))))

(declare-fun condMapEmpty!41869 () Bool)

(declare-datatypes ((V!40785 0))(
  ( (V!40786 (val!13428 Int)) )
))
(declare-datatypes ((ValueCell!12662 0))(
  ( (ValueCellFull!12662 (v!16050 V!40785)) (EmptyCell!12662) )
))
(declare-datatypes ((array!70376 0))(
  ( (array!70377 (arr!33858 (Array (_ BitVec 32) ValueCell!12662)) (size!34395 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70376)

(declare-fun mapDefault!41869 () ValueCell!12662)

