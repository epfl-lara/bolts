; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96332 () Bool)

(assert start!96332)

(declare-fun b_free!22949 () Bool)

(declare-fun b_next!22949 () Bool)

(assert (=> start!96332 (= b_free!22949 (not b_next!22949))))

(declare-fun tp!80696 () Bool)

(declare-fun b_and!36591 () Bool)

(assert (=> start!96332 (= tp!80696 b_and!36591)))

(declare-fun b!1094255 () Bool)

(declare-fun res!730336 () Bool)

(declare-fun e!624772 () Bool)

(assert (=> b!1094255 (=> (not res!730336) (not e!624772))))

(declare-datatypes ((array!70774 0))(
  ( (array!70775 (arr!34057 (Array (_ BitVec 32) (_ BitVec 64))) (size!34594 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70774)

(declare-datatypes ((List!23933 0))(
  ( (Nil!23930) (Cons!23929 (h!25138 (_ BitVec 64)) (t!33947 List!23933)) )
))
(declare-fun arrayNoDuplicates!0 (array!70774 (_ BitVec 32) List!23933) Bool)

(assert (=> b!1094255 (= res!730336 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23930))))

(declare-fun b!1094256 () Bool)

(declare-fun res!730333 () Bool)

(declare-fun e!624768 () Bool)

(assert (=> b!1094256 (=> (not res!730333) (not e!624768))))

(declare-fun lt!489600 () array!70774)

(assert (=> b!1094256 (= res!730333 (arrayNoDuplicates!0 lt!489600 #b00000000000000000000000000000000 Nil!23930))))

(declare-fun mapIsEmpty!42181 () Bool)

(declare-fun mapRes!42181 () Bool)

(assert (=> mapIsEmpty!42181 mapRes!42181))

(declare-fun b!1094257 () Bool)

(declare-fun res!730329 () Bool)

(assert (=> b!1094257 (=> (not res!730329) (not e!624772))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!41061 0))(
  ( (V!41062 (val!13532 Int)) )
))
(declare-datatypes ((ValueCell!12766 0))(
  ( (ValueCellFull!12766 (v!16154 V!41061)) (EmptyCell!12766) )
))
(declare-datatypes ((array!70776 0))(
  ( (array!70777 (arr!34058 (Array (_ BitVec 32) ValueCell!12766)) (size!34595 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70776)

(assert (=> b!1094257 (= res!730329 (and (= (size!34595 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34594 _keys!1070) (size!34595 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094258 () Bool)

(assert (=> b!1094258 (= e!624772 e!624768)))

(declare-fun res!730337 () Bool)

(assert (=> b!1094258 (=> (not res!730337) (not e!624768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70774 (_ BitVec 32)) Bool)

(assert (=> b!1094258 (= res!730337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489600 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094258 (= lt!489600 (array!70775 (store (arr!34057 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34594 _keys!1070)))))

(declare-fun b!1094259 () Bool)

(declare-fun res!730330 () Bool)

(assert (=> b!1094259 (=> (not res!730330) (not e!624772))))

(assert (=> b!1094259 (= res!730330 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34594 _keys!1070))))))

(declare-fun res!730332 () Bool)

(assert (=> start!96332 (=> (not res!730332) (not e!624772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96332 (= res!730332 (validMask!0 mask!1414))))

(assert (=> start!96332 e!624772))

(assert (=> start!96332 tp!80696))

(assert (=> start!96332 true))

(declare-fun tp_is_empty!26951 () Bool)

(assert (=> start!96332 tp_is_empty!26951))

(declare-fun array_inv!26098 (array!70774) Bool)

(assert (=> start!96332 (array_inv!26098 _keys!1070)))

(declare-fun e!624770 () Bool)

(declare-fun array_inv!26099 (array!70776) Bool)

(assert (=> start!96332 (and (array_inv!26099 _values!874) e!624770)))

(declare-fun b!1094260 () Bool)

(declare-fun e!624771 () Bool)

(assert (=> b!1094260 (= e!624771 tp_is_empty!26951)))

(declare-fun mapNonEmpty!42181 () Bool)

(declare-fun tp!80697 () Bool)

(declare-fun e!624769 () Bool)

(assert (=> mapNonEmpty!42181 (= mapRes!42181 (and tp!80697 e!624769))))

(declare-fun mapRest!42181 () (Array (_ BitVec 32) ValueCell!12766))

(declare-fun mapKey!42181 () (_ BitVec 32))

(declare-fun mapValue!42181 () ValueCell!12766)

(assert (=> mapNonEmpty!42181 (= (arr!34058 _values!874) (store mapRest!42181 mapKey!42181 mapValue!42181))))

(declare-fun b!1094261 () Bool)

(declare-fun res!730334 () Bool)

(assert (=> b!1094261 (=> (not res!730334) (not e!624772))))

(assert (=> b!1094261 (= res!730334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094262 () Bool)

(declare-fun res!730331 () Bool)

(assert (=> b!1094262 (=> (not res!730331) (not e!624772))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094262 (= res!730331 (validKeyInArray!0 k!904))))

(declare-fun b!1094263 () Bool)

(assert (=> b!1094263 (= e!624770 (and e!624771 mapRes!42181))))

(declare-fun condMapEmpty!42181 () Bool)

(declare-fun mapDefault!42181 () ValueCell!12766)

