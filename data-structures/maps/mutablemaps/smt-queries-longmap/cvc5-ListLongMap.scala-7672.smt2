; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96414 () Bool)

(assert start!96414)

(declare-fun b_free!22957 () Bool)

(declare-fun b_next!22957 () Bool)

(assert (=> start!96414 (= b_free!22957 (not b_next!22957))))

(declare-fun tp!80798 () Bool)

(declare-fun b_and!36601 () Bool)

(assert (=> start!96414 (= tp!80798 b_and!36601)))

(declare-fun mapIsEmpty!42271 () Bool)

(declare-fun mapRes!42271 () Bool)

(assert (=> mapIsEmpty!42271 mapRes!42271))

(declare-fun b!1095225 () Bool)

(declare-fun e!625322 () Bool)

(declare-fun tp_is_empty!27007 () Bool)

(assert (=> b!1095225 (= e!625322 tp_is_empty!27007)))

(declare-fun b!1095226 () Bool)

(declare-fun e!625321 () Bool)

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((V!41137 0))(
  ( (V!41138 (val!13560 Int)) )
))
(declare-datatypes ((ValueCell!12794 0))(
  ( (ValueCellFull!12794 (v!16182 V!41137)) (EmptyCell!12794) )
))
(declare-datatypes ((array!70882 0))(
  ( (array!70883 (arr!34109 (Array (_ BitVec 32) ValueCell!12794)) (size!34646 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70882)

(assert (=> b!1095226 (= e!625321 (not (bvslt i!650 (size!34646 _values!874))))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!17286 0))(
  ( (tuple2!17287 (_1!8653 (_ BitVec 64)) (_2!8653 V!41137)) )
))
(declare-datatypes ((List!23956 0))(
  ( (Nil!23953) (Cons!23952 (h!25161 tuple2!17286) (t!33970 List!23956)) )
))
(declare-datatypes ((ListLongMap!15267 0))(
  ( (ListLongMap!15268 (toList!7649 List!23956)) )
))
(declare-fun lt!489763 () ListLongMap!15267)

(declare-fun minValue!831 () V!41137)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!41137)

(declare-datatypes ((array!70884 0))(
  ( (array!70885 (arr!34110 (Array (_ BitVec 32) (_ BitVec 64))) (size!34647 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70884)

(declare-fun getCurrentListMapNoExtraKeys!4136 (array!70884 array!70882 (_ BitVec 32) (_ BitVec 32) V!41137 V!41137 (_ BitVec 32) Int) ListLongMap!15267)

(assert (=> b!1095226 (= lt!489763 (getCurrentListMapNoExtraKeys!4136 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!70884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095226 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35971 0))(
  ( (Unit!35972) )
))
(declare-fun lt!489764 () Unit!35971)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70884 (_ BitVec 64) (_ BitVec 32)) Unit!35971)

(assert (=> b!1095226 (= lt!489764 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1095227 () Bool)

(declare-fun res!731001 () Bool)

(declare-fun e!625323 () Bool)

(assert (=> b!1095227 (=> (not res!731001) (not e!625323))))

(assert (=> b!1095227 (= res!731001 (and (= (size!34646 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34647 _keys!1070) (size!34646 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1095228 () Bool)

(declare-fun res!730997 () Bool)

(assert (=> b!1095228 (=> (not res!730997) (not e!625323))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70884 (_ BitVec 32)) Bool)

(assert (=> b!1095228 (= res!730997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1095229 () Bool)

(declare-fun res!731002 () Bool)

(assert (=> b!1095229 (=> (not res!731002) (not e!625323))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1095229 (= res!731002 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!42271 () Bool)

(declare-fun tp!80799 () Bool)

(declare-fun e!625320 () Bool)

(assert (=> mapNonEmpty!42271 (= mapRes!42271 (and tp!80799 e!625320))))

(declare-fun mapValue!42271 () ValueCell!12794)

(declare-fun mapRest!42271 () (Array (_ BitVec 32) ValueCell!12794))

(declare-fun mapKey!42271 () (_ BitVec 32))

(assert (=> mapNonEmpty!42271 (= (arr!34109 _values!874) (store mapRest!42271 mapKey!42271 mapValue!42271))))

(declare-fun b!1095230 () Bool)

(declare-fun e!625319 () Bool)

(assert (=> b!1095230 (= e!625319 (and e!625322 mapRes!42271))))

(declare-fun condMapEmpty!42271 () Bool)

(declare-fun mapDefault!42271 () ValueCell!12794)

