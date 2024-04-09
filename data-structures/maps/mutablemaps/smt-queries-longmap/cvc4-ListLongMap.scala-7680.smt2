; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96466 () Bool)

(assert start!96466)

(declare-fun b_free!23009 () Bool)

(declare-fun b_next!23009 () Bool)

(assert (=> start!96466 (= b_free!23009 (not b_next!23009))))

(declare-fun tp!80954 () Bool)

(declare-fun b_and!36699 () Bool)

(assert (=> start!96466 (= tp!80954 b_and!36699)))

(declare-fun mapNonEmpty!42349 () Bool)

(declare-fun mapRes!42349 () Bool)

(declare-fun tp!80955 () Bool)

(declare-fun e!625786 () Bool)

(assert (=> mapNonEmpty!42349 (= mapRes!42349 (and tp!80955 e!625786))))

(declare-datatypes ((V!41205 0))(
  ( (V!41206 (val!13586 Int)) )
))
(declare-datatypes ((ValueCell!12820 0))(
  ( (ValueCellFull!12820 (v!16208 V!41205)) (EmptyCell!12820) )
))
(declare-datatypes ((array!70978 0))(
  ( (array!70979 (arr!34157 (Array (_ BitVec 32) ValueCell!12820)) (size!34694 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70978)

(declare-fun mapRest!42349 () (Array (_ BitVec 32) ValueCell!12820))

(declare-fun mapValue!42349 () ValueCell!12820)

(declare-fun mapKey!42349 () (_ BitVec 32))

(assert (=> mapNonEmpty!42349 (= (arr!34157 _values!874) (store mapRest!42349 mapKey!42349 mapValue!42349))))

(declare-fun res!731700 () Bool)

(declare-fun e!625787 () Bool)

(assert (=> start!96466 (=> (not res!731700) (not e!625787))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96466 (= res!731700 (validMask!0 mask!1414))))

(assert (=> start!96466 e!625787))

(assert (=> start!96466 tp!80954))

(assert (=> start!96466 true))

(declare-fun tp_is_empty!27059 () Bool)

(assert (=> start!96466 tp_is_empty!27059))

(declare-datatypes ((array!70980 0))(
  ( (array!70981 (arr!34158 (Array (_ BitVec 32) (_ BitVec 64))) (size!34695 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70980)

(declare-fun array_inv!26172 (array!70980) Bool)

(assert (=> start!96466 (array_inv!26172 _keys!1070)))

(declare-fun e!625788 () Bool)

(declare-fun array_inv!26173 (array!70978) Bool)

(assert (=> start!96466 (and (array_inv!26173 _values!874) e!625788)))

(declare-fun b!1096206 () Bool)

(declare-fun res!731706 () Bool)

(assert (=> b!1096206 (=> (not res!731706) (not e!625787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70980 (_ BitVec 32)) Bool)

(assert (=> b!1096206 (= res!731706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1096207 () Bool)

(declare-fun res!731698 () Bool)

(assert (=> b!1096207 (=> (not res!731698) (not e!625787))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1096207 (= res!731698 (and (= (size!34694 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34695 _keys!1070) (size!34694 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1096208 () Bool)

(declare-fun res!731705 () Bool)

(assert (=> b!1096208 (=> (not res!731705) (not e!625787))))

(declare-datatypes ((List!23988 0))(
  ( (Nil!23985) (Cons!23984 (h!25193 (_ BitVec 64)) (t!34050 List!23988)) )
))
(declare-fun arrayNoDuplicates!0 (array!70980 (_ BitVec 32) List!23988) Bool)

(assert (=> b!1096208 (= res!731705 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23985))))

(declare-fun b!1096209 () Bool)

(declare-fun res!731703 () Bool)

(assert (=> b!1096209 (=> (not res!731703) (not e!625787))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1096209 (= res!731703 (validKeyInArray!0 k!904))))

(declare-fun b!1096210 () Bool)

(declare-fun e!625789 () Bool)

(assert (=> b!1096210 (= e!625788 (and e!625789 mapRes!42349))))

(declare-fun condMapEmpty!42349 () Bool)

(declare-fun mapDefault!42349 () ValueCell!12820)

