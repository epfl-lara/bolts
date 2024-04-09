; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96278 () Bool)

(assert start!96278)

(declare-fun b_free!22895 () Bool)

(declare-fun b_next!22895 () Bool)

(assert (=> start!96278 (= b_free!22895 (not b_next!22895))))

(declare-fun tp!80535 () Bool)

(declare-fun b_and!36483 () Bool)

(assert (=> start!96278 (= tp!80535 b_and!36483)))

(declare-fun mapIsEmpty!42100 () Bool)

(declare-fun mapRes!42100 () Bool)

(assert (=> mapIsEmpty!42100 mapRes!42100))

(declare-fun b!1093229 () Bool)

(declare-fun e!624283 () Bool)

(declare-fun tp_is_empty!26897 () Bool)

(assert (=> b!1093229 (= e!624283 tp_is_empty!26897)))

(declare-fun b!1093230 () Bool)

(declare-fun res!729605 () Bool)

(declare-fun e!624282 () Bool)

(assert (=> b!1093230 (=> (not res!729605) (not e!624282))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093230 (= res!729605 (validKeyInArray!0 k!904))))

(declare-fun b!1093231 () Bool)

(declare-fun e!624284 () Bool)

(assert (=> b!1093231 (= e!624282 e!624284)))

(declare-fun res!729607 () Bool)

(assert (=> b!1093231 (=> (not res!729607) (not e!624284))))

(declare-datatypes ((array!70668 0))(
  ( (array!70669 (arr!34004 (Array (_ BitVec 32) (_ BitVec 64))) (size!34541 (_ BitVec 32))) )
))
(declare-fun lt!488861 () array!70668)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70668 (_ BitVec 32)) Bool)

(assert (=> b!1093231 (= res!729607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!488861 mask!1414))))

(declare-fun _keys!1070 () array!70668)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1093231 (= lt!488861 (array!70669 (store (arr!34004 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34541 _keys!1070)))))

(declare-fun b!1093233 () Bool)

(declare-fun res!729601 () Bool)

(assert (=> b!1093233 (=> (not res!729601) (not e!624282))))

(declare-datatypes ((List!23893 0))(
  ( (Nil!23890) (Cons!23889 (h!25098 (_ BitVec 64)) (t!33853 List!23893)) )
))
(declare-fun arrayNoDuplicates!0 (array!70668 (_ BitVec 32) List!23893) Bool)

(assert (=> b!1093233 (= res!729601 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23890))))

(declare-fun b!1093234 () Bool)

(declare-fun res!729600 () Bool)

(assert (=> b!1093234 (=> (not res!729600) (not e!624282))))

(assert (=> b!1093234 (= res!729600 (= (select (arr!34004 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!42100 () Bool)

(declare-fun tp!80534 () Bool)

(declare-fun e!624286 () Bool)

(assert (=> mapNonEmpty!42100 (= mapRes!42100 (and tp!80534 e!624286))))

(declare-datatypes ((V!40989 0))(
  ( (V!40990 (val!13505 Int)) )
))
(declare-datatypes ((ValueCell!12739 0))(
  ( (ValueCellFull!12739 (v!16127 V!40989)) (EmptyCell!12739) )
))
(declare-datatypes ((array!70670 0))(
  ( (array!70671 (arr!34005 (Array (_ BitVec 32) ValueCell!12739)) (size!34542 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70670)

(declare-fun mapValue!42100 () ValueCell!12739)

(declare-fun mapRest!42100 () (Array (_ BitVec 32) ValueCell!12739))

(declare-fun mapKey!42100 () (_ BitVec 32))

(assert (=> mapNonEmpty!42100 (= (arr!34005 _values!874) (store mapRest!42100 mapKey!42100 mapValue!42100))))

(declare-fun b!1093235 () Bool)

(declare-fun e!624285 () Bool)

(assert (=> b!1093235 (= e!624285 (and e!624283 mapRes!42100))))

(declare-fun condMapEmpty!42100 () Bool)

(declare-fun mapDefault!42100 () ValueCell!12739)

