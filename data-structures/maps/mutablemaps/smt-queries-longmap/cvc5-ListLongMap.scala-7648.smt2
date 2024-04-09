; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96244 () Bool)

(assert start!96244)

(declare-fun b_free!22861 () Bool)

(declare-fun b_next!22861 () Bool)

(assert (=> start!96244 (= b_free!22861 (not b_next!22861))))

(declare-fun tp!80432 () Bool)

(declare-fun b_and!36415 () Bool)

(assert (=> start!96244 (= tp!80432 b_and!36415)))

(declare-fun b!1092583 () Bool)

(declare-fun e!623980 () Bool)

(declare-fun tp_is_empty!26863 () Bool)

(assert (=> b!1092583 (= e!623980 tp_is_empty!26863)))

(declare-fun b!1092584 () Bool)

(declare-fun res!729148 () Bool)

(declare-fun e!623977 () Bool)

(assert (=> b!1092584 (=> (not res!729148) (not e!623977))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70604 0))(
  ( (array!70605 (arr!33972 (Array (_ BitVec 32) (_ BitVec 64))) (size!34509 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70604)

(declare-datatypes ((V!40945 0))(
  ( (V!40946 (val!13488 Int)) )
))
(declare-datatypes ((ValueCell!12722 0))(
  ( (ValueCellFull!12722 (v!16110 V!40945)) (EmptyCell!12722) )
))
(declare-datatypes ((array!70606 0))(
  ( (array!70607 (arr!33973 (Array (_ BitVec 32) ValueCell!12722)) (size!34510 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70606)

(assert (=> b!1092584 (= res!729148 (and (= (size!34510 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34509 _keys!1070) (size!34510 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1092585 () Bool)

(declare-fun res!729141 () Bool)

(declare-fun e!623978 () Bool)

(assert (=> b!1092585 (=> (not res!729141) (not e!623978))))

(declare-fun lt!488393 () array!70604)

(declare-datatypes ((List!23870 0))(
  ( (Nil!23867) (Cons!23866 (h!25075 (_ BitVec 64)) (t!33796 List!23870)) )
))
(declare-fun arrayNoDuplicates!0 (array!70604 (_ BitVec 32) List!23870) Bool)

(assert (=> b!1092585 (= res!729141 (arrayNoDuplicates!0 lt!488393 #b00000000000000000000000000000000 Nil!23867))))

(declare-fun b!1092586 () Bool)

(declare-fun res!729142 () Bool)

(assert (=> b!1092586 (=> (not res!729142) (not e!623977))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1092586 (= res!729142 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34509 _keys!1070))))))

(declare-fun b!1092587 () Bool)

(declare-fun e!623975 () Bool)

(assert (=> b!1092587 (= e!623975 tp_is_empty!26863)))

(declare-fun b!1092588 () Bool)

(declare-fun res!729143 () Bool)

(assert (=> b!1092588 (=> (not res!729143) (not e!623977))))

(assert (=> b!1092588 (= res!729143 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23867))))

(declare-fun b!1092589 () Bool)

(declare-fun res!729147 () Bool)

(assert (=> b!1092589 (=> (not res!729147) (not e!623977))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1092589 (= res!729147 (validKeyInArray!0 k!904))))

(declare-fun b!1092590 () Bool)

(declare-fun e!623979 () Bool)

(declare-fun mapRes!42049 () Bool)

(assert (=> b!1092590 (= e!623979 (and e!623975 mapRes!42049))))

(declare-fun condMapEmpty!42049 () Bool)

(declare-fun mapDefault!42049 () ValueCell!12722)

