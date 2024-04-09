; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96250 () Bool)

(assert start!96250)

(declare-fun b_free!22867 () Bool)

(declare-fun b_next!22867 () Bool)

(assert (=> start!96250 (= b_free!22867 (not b_next!22867))))

(declare-fun tp!80450 () Bool)

(declare-fun b_and!36427 () Bool)

(assert (=> start!96250 (= tp!80450 b_and!36427)))

(declare-fun b!1092697 () Bool)

(declare-fun e!624031 () Bool)

(declare-fun tp_is_empty!26869 () Bool)

(assert (=> b!1092697 (= e!624031 tp_is_empty!26869)))

(declare-fun mapNonEmpty!42058 () Bool)

(declare-fun mapRes!42058 () Bool)

(declare-fun tp!80451 () Bool)

(assert (=> mapNonEmpty!42058 (= mapRes!42058 (and tp!80451 e!624031))))

(declare-datatypes ((V!40953 0))(
  ( (V!40954 (val!13491 Int)) )
))
(declare-datatypes ((ValueCell!12725 0))(
  ( (ValueCellFull!12725 (v!16113 V!40953)) (EmptyCell!12725) )
))
(declare-datatypes ((array!70616 0))(
  ( (array!70617 (arr!33978 (Array (_ BitVec 32) ValueCell!12725)) (size!34515 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70616)

(declare-fun mapKey!42058 () (_ BitVec 32))

(declare-fun mapRest!42058 () (Array (_ BitVec 32) ValueCell!12725))

(declare-fun mapValue!42058 () ValueCell!12725)

(assert (=> mapNonEmpty!42058 (= (arr!33978 _values!874) (store mapRest!42058 mapKey!42058 mapValue!42058))))

(declare-fun b!1092698 () Bool)

(declare-fun e!624030 () Bool)

(assert (=> b!1092698 (= e!624030 tp_is_empty!26869)))

(declare-fun b!1092700 () Bool)

(declare-fun e!624034 () Bool)

(assert (=> b!1092700 (= e!624034 (and e!624030 mapRes!42058))))

(declare-fun condMapEmpty!42058 () Bool)

(declare-fun mapDefault!42058 () ValueCell!12725)

