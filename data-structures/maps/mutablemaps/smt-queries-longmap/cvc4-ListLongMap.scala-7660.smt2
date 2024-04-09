; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96320 () Bool)

(assert start!96320)

(declare-fun b_free!22937 () Bool)

(declare-fun b_next!22937 () Bool)

(assert (=> start!96320 (= b_free!22937 (not b_next!22937))))

(declare-fun tp!80661 () Bool)

(declare-fun b_and!36567 () Bool)

(assert (=> start!96320 (= tp!80661 b_and!36567)))

(declare-fun b!1094027 () Bool)

(declare-fun res!730172 () Bool)

(declare-fun e!624663 () Bool)

(assert (=> b!1094027 (=> (not res!730172) (not e!624663))))

(declare-datatypes ((array!70750 0))(
  ( (array!70751 (arr!34045 (Array (_ BitVec 32) (_ BitVec 64))) (size!34582 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70750)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094027 (= res!730172 (= (select (arr!34045 _keys!1070) i!650) k!904))))

(declare-fun b!1094028 () Bool)

(declare-fun res!730169 () Bool)

(assert (=> b!1094028 (=> (not res!730169) (not e!624663))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70750 (_ BitVec 32)) Bool)

(assert (=> b!1094028 (= res!730169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1094029 () Bool)

(declare-fun e!624664 () Bool)

(declare-fun tp_is_empty!26939 () Bool)

(assert (=> b!1094029 (= e!624664 tp_is_empty!26939)))

(declare-fun res!730175 () Bool)

(assert (=> start!96320 (=> (not res!730175) (not e!624663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96320 (= res!730175 (validMask!0 mask!1414))))

(assert (=> start!96320 e!624663))

(assert (=> start!96320 tp!80661))

(assert (=> start!96320 true))

(assert (=> start!96320 tp_is_empty!26939))

(declare-fun array_inv!26090 (array!70750) Bool)

(assert (=> start!96320 (array_inv!26090 _keys!1070)))

(declare-datatypes ((V!41045 0))(
  ( (V!41046 (val!13526 Int)) )
))
(declare-datatypes ((ValueCell!12760 0))(
  ( (ValueCellFull!12760 (v!16148 V!41045)) (EmptyCell!12760) )
))
(declare-datatypes ((array!70752 0))(
  ( (array!70753 (arr!34046 (Array (_ BitVec 32) ValueCell!12760)) (size!34583 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70752)

(declare-fun e!624659 () Bool)

(declare-fun array_inv!26091 (array!70752) Bool)

(assert (=> start!96320 (and (array_inv!26091 _values!874) e!624659)))

(declare-fun mapIsEmpty!42163 () Bool)

(declare-fun mapRes!42163 () Bool)

(assert (=> mapIsEmpty!42163 mapRes!42163))

(declare-fun b!1094030 () Bool)

(declare-fun e!624660 () Bool)

(assert (=> b!1094030 (= e!624660 tp_is_empty!26939)))

(declare-fun b!1094031 () Bool)

(declare-fun e!624662 () Bool)

(assert (=> b!1094031 (= e!624663 e!624662)))

(declare-fun res!730174 () Bool)

(assert (=> b!1094031 (=> (not res!730174) (not e!624662))))

(declare-fun lt!489426 () array!70750)

(assert (=> b!1094031 (= res!730174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489426 mask!1414))))

(assert (=> b!1094031 (= lt!489426 (array!70751 (store (arr!34045 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34582 _keys!1070)))))

(declare-fun mapNonEmpty!42163 () Bool)

(declare-fun tp!80660 () Bool)

(assert (=> mapNonEmpty!42163 (= mapRes!42163 (and tp!80660 e!624660))))

(declare-fun mapValue!42163 () ValueCell!12760)

(declare-fun mapKey!42163 () (_ BitVec 32))

(declare-fun mapRest!42163 () (Array (_ BitVec 32) ValueCell!12760))

(assert (=> mapNonEmpty!42163 (= (arr!34046 _values!874) (store mapRest!42163 mapKey!42163 mapValue!42163))))

(declare-fun b!1094032 () Bool)

(declare-fun res!730167 () Bool)

(assert (=> b!1094032 (=> (not res!730167) (not e!624663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094032 (= res!730167 (validKeyInArray!0 k!904))))

(declare-fun b!1094033 () Bool)

(declare-fun res!730168 () Bool)

(assert (=> b!1094033 (=> (not res!730168) (not e!624662))))

(declare-datatypes ((List!23924 0))(
  ( (Nil!23921) (Cons!23920 (h!25129 (_ BitVec 64)) (t!33926 List!23924)) )
))
(declare-fun arrayNoDuplicates!0 (array!70750 (_ BitVec 32) List!23924) Bool)

(assert (=> b!1094033 (= res!730168 (arrayNoDuplicates!0 lt!489426 #b00000000000000000000000000000000 Nil!23921))))

(declare-fun b!1094034 () Bool)

(declare-fun res!730170 () Bool)

(assert (=> b!1094034 (=> (not res!730170) (not e!624663))))

(assert (=> b!1094034 (= res!730170 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34582 _keys!1070))))))

(declare-fun b!1094035 () Bool)

(declare-fun res!730173 () Bool)

(assert (=> b!1094035 (=> (not res!730173) (not e!624663))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094035 (= res!730173 (and (= (size!34583 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34582 _keys!1070) (size!34583 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094036 () Bool)

(declare-fun res!730171 () Bool)

(assert (=> b!1094036 (=> (not res!730171) (not e!624663))))

(assert (=> b!1094036 (= res!730171 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23921))))

(declare-fun b!1094037 () Bool)

(assert (=> b!1094037 (= e!624659 (and e!624664 mapRes!42163))))

(declare-fun condMapEmpty!42163 () Bool)

(declare-fun mapDefault!42163 () ValueCell!12760)

