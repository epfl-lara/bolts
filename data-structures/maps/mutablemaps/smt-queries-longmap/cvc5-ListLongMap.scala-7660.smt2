; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96316 () Bool)

(assert start!96316)

(declare-fun b_free!22933 () Bool)

(declare-fun b_next!22933 () Bool)

(assert (=> start!96316 (= b_free!22933 (not b_next!22933))))

(declare-fun tp!80649 () Bool)

(declare-fun b_and!36559 () Bool)

(assert (=> start!96316 (= tp!80649 b_and!36559)))

(declare-fun b!1093951 () Bool)

(declare-fun res!730121 () Bool)

(declare-fun e!624623 () Bool)

(assert (=> b!1093951 (=> (not res!730121) (not e!624623))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093951 (= res!730121 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!42157 () Bool)

(declare-fun mapRes!42157 () Bool)

(declare-fun tp!80648 () Bool)

(declare-fun e!624627 () Bool)

(assert (=> mapNonEmpty!42157 (= mapRes!42157 (and tp!80648 e!624627))))

(declare-datatypes ((V!41041 0))(
  ( (V!41042 (val!13524 Int)) )
))
(declare-datatypes ((ValueCell!12758 0))(
  ( (ValueCellFull!12758 (v!16146 V!41041)) (EmptyCell!12758) )
))
(declare-fun mapRest!42157 () (Array (_ BitVec 32) ValueCell!12758))

(declare-datatypes ((array!70742 0))(
  ( (array!70743 (arr!34041 (Array (_ BitVec 32) ValueCell!12758)) (size!34578 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70742)

(declare-fun mapKey!42157 () (_ BitVec 32))

(declare-fun mapValue!42157 () ValueCell!12758)

(assert (=> mapNonEmpty!42157 (= (arr!34041 _values!874) (store mapRest!42157 mapKey!42157 mapValue!42157))))

(declare-fun b!1093952 () Bool)

(declare-fun res!730115 () Bool)

(assert (=> b!1093952 (=> (not res!730115) (not e!624623))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70744 0))(
  ( (array!70745 (arr!34042 (Array (_ BitVec 32) (_ BitVec 64))) (size!34579 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70744)

(assert (=> b!1093952 (= res!730115 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34579 _keys!1070))))))

(declare-fun mapIsEmpty!42157 () Bool)

(assert (=> mapIsEmpty!42157 mapRes!42157))

(declare-fun b!1093953 () Bool)

(declare-fun e!624628 () Bool)

(declare-fun tp_is_empty!26935 () Bool)

(assert (=> b!1093953 (= e!624628 tp_is_empty!26935)))

(declare-fun b!1093954 () Bool)

(declare-fun e!624624 () Bool)

(assert (=> b!1093954 (= e!624624 (and e!624628 mapRes!42157))))

(declare-fun condMapEmpty!42157 () Bool)

(declare-fun mapDefault!42157 () ValueCell!12758)

