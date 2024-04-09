; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96658 () Bool)

(assert start!96658)

(declare-fun b_free!23095 () Bool)

(declare-fun b_next!23095 () Bool)

(assert (=> start!96658 (= b_free!23095 (not b_next!23095))))

(declare-fun tp!81225 () Bool)

(declare-fun b_and!36927 () Bool)

(assert (=> start!96658 (= tp!81225 b_and!36927)))

(declare-fun b!1098732 () Bool)

(declare-fun e!627158 () Bool)

(declare-fun e!627157 () Bool)

(assert (=> b!1098732 (= e!627158 e!627157)))

(declare-fun res!733312 () Bool)

(assert (=> b!1098732 (=> (not res!733312) (not e!627157))))

(declare-datatypes ((array!71158 0))(
  ( (array!71159 (arr!34243 (Array (_ BitVec 32) (_ BitVec 64))) (size!34780 (_ BitVec 32))) )
))
(declare-fun lt!491655 () array!71158)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71158 (_ BitVec 32)) Bool)

(assert (=> b!1098732 (= res!733312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!491655 mask!1414))))

(declare-fun _keys!1070 () array!71158)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1098732 (= lt!491655 (array!71159 (store (arr!34243 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34780 _keys!1070)))))

(declare-fun b!1098733 () Bool)

(declare-fun e!627160 () Bool)

(assert (=> b!1098733 (= e!627160 true)))

(declare-datatypes ((V!41321 0))(
  ( (V!41322 (val!13629 Int)) )
))
(declare-datatypes ((tuple2!17380 0))(
  ( (tuple2!17381 (_1!8700 (_ BitVec 64)) (_2!8700 V!41321)) )
))
(declare-datatypes ((List!24057 0))(
  ( (Nil!24054) (Cons!24053 (h!25262 tuple2!17380) (t!34205 List!24057)) )
))
(declare-datatypes ((ListLongMap!15361 0))(
  ( (ListLongMap!15362 (toList!7696 List!24057)) )
))
(declare-fun lt!491654 () ListLongMap!15361)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!491659 () ListLongMap!15361)

(declare-fun lt!491643 () tuple2!17380)

(declare-fun -!941 (ListLongMap!15361 (_ BitVec 64)) ListLongMap!15361)

(declare-fun +!3331 (ListLongMap!15361 tuple2!17380) ListLongMap!15361)

(assert (=> b!1098733 (= (-!941 lt!491654 k!904) (+!3331 lt!491659 lt!491643))))

(declare-fun minValue!831 () V!41321)

(declare-datatypes ((Unit!36069 0))(
  ( (Unit!36070) )
))
(declare-fun lt!491657 () Unit!36069)

(declare-fun lt!491645 () ListLongMap!15361)

(declare-fun addRemoveCommutativeForDiffKeys!122 (ListLongMap!15361 (_ BitVec 64) V!41321 (_ BitVec 64)) Unit!36069)

(assert (=> b!1098733 (= lt!491657 (addRemoveCommutativeForDiffKeys!122 lt!491645 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun mapIsEmpty!42490 () Bool)

(declare-fun mapRes!42490 () Bool)

(assert (=> mapIsEmpty!42490 mapRes!42490))

(declare-fun b!1098734 () Bool)

(declare-fun e!627163 () Bool)

(declare-fun e!627161 () Bool)

(assert (=> b!1098734 (= e!627163 (and e!627161 mapRes!42490))))

(declare-fun condMapEmpty!42490 () Bool)

(declare-datatypes ((ValueCell!12863 0))(
  ( (ValueCellFull!12863 (v!16255 V!41321)) (EmptyCell!12863) )
))
(declare-datatypes ((array!71160 0))(
  ( (array!71161 (arr!34244 (Array (_ BitVec 32) ValueCell!12863)) (size!34781 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71160)

(declare-fun mapDefault!42490 () ValueCell!12863)

