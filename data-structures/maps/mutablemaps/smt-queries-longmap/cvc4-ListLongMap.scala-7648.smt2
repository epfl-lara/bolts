; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96248 () Bool)

(assert start!96248)

(declare-fun b_free!22865 () Bool)

(declare-fun b_next!22865 () Bool)

(assert (=> start!96248 (= b_free!22865 (not b_next!22865))))

(declare-fun tp!80444 () Bool)

(declare-fun b_and!36423 () Bool)

(assert (=> start!96248 (= tp!80444 b_and!36423)))

(declare-fun b!1092659 () Bool)

(declare-fun res!729202 () Bool)

(declare-fun e!624011 () Bool)

(assert (=> b!1092659 (=> (not res!729202) (not e!624011))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70612 0))(
  ( (array!70613 (arr!33976 (Array (_ BitVec 32) (_ BitVec 64))) (size!34513 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70612)

(assert (=> b!1092659 (= res!729202 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34513 _keys!1070))))))

(declare-fun b!1092660 () Bool)

(declare-fun res!729203 () Bool)

(assert (=> b!1092660 (=> (not res!729203) (not e!624011))))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1092660 (= res!729203 (= (select (arr!33976 _keys!1070) i!650) k!904))))

(declare-fun b!1092661 () Bool)

(declare-fun e!624012 () Bool)

(declare-fun tp_is_empty!26867 () Bool)

(assert (=> b!1092661 (= e!624012 tp_is_empty!26867)))

(declare-fun b!1092662 () Bool)

(declare-fun res!729200 () Bool)

(assert (=> b!1092662 (=> (not res!729200) (not e!624011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092662 (= res!729200 (validKeyInArray!0 k!904))))

(declare-fun b!1092663 () Bool)

(declare-fun e!624014 () Bool)

(declare-fun mapRes!42055 () Bool)

(assert (=> b!1092663 (= e!624014 (and e!624012 mapRes!42055))))

(declare-fun condMapEmpty!42055 () Bool)

(declare-datatypes ((V!40949 0))(
  ( (V!40950 (val!13490 Int)) )
))
(declare-datatypes ((ValueCell!12724 0))(
  ( (ValueCellFull!12724 (v!16112 V!40949)) (EmptyCell!12724) )
))
(declare-datatypes ((array!70614 0))(
  ( (array!70615 (arr!33977 (Array (_ BitVec 32) ValueCell!12724)) (size!34514 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70614)

(declare-fun mapDefault!42055 () ValueCell!12724)

