; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96456 () Bool)

(assert start!96456)

(declare-fun b_free!22999 () Bool)

(declare-fun b_next!22999 () Bool)

(assert (=> start!96456 (= b_free!22999 (not b_next!22999))))

(declare-fun tp!80924 () Bool)

(declare-fun b_and!36679 () Bool)

(assert (=> start!96456 (= tp!80924 b_and!36679)))

(declare-fun b!1096016 () Bool)

(declare-fun res!731569 () Bool)

(declare-fun e!625699 () Bool)

(assert (=> b!1096016 (=> (not res!731569) (not e!625699))))

(declare-datatypes ((array!70960 0))(
  ( (array!70961 (arr!34148 (Array (_ BitVec 32) (_ BitVec 64))) (size!34685 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70960)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1096016 (= res!731569 (= (select (arr!34148 _keys!1070) i!650) k!904))))

(declare-fun mapIsEmpty!42334 () Bool)

(declare-fun mapRes!42334 () Bool)

(assert (=> mapIsEmpty!42334 mapRes!42334))

(declare-fun b!1096017 () Bool)

(declare-fun res!731568 () Bool)

(assert (=> b!1096017 (=> (not res!731568) (not e!625699))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41193 0))(
  ( (V!41194 (val!13581 Int)) )
))
(declare-datatypes ((ValueCell!12815 0))(
  ( (ValueCellFull!12815 (v!16203 V!41193)) (EmptyCell!12815) )
))
(declare-datatypes ((array!70962 0))(
  ( (array!70963 (arr!34149 (Array (_ BitVec 32) ValueCell!12815)) (size!34686 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70962)

(assert (=> b!1096017 (= res!731568 (and (= (size!34686 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34685 _keys!1070) (size!34686 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096018 () Bool)

(declare-fun e!625698 () Bool)

(declare-fun e!625696 () Bool)

(assert (=> b!1096018 (= e!625698 (and e!625696 mapRes!42334))))

(declare-fun condMapEmpty!42334 () Bool)

(declare-fun mapDefault!42334 () ValueCell!12815)

