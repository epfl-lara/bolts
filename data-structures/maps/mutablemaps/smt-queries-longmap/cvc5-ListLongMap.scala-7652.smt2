; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96268 () Bool)

(assert start!96268)

(declare-fun b_free!22885 () Bool)

(declare-fun b_next!22885 () Bool)

(assert (=> start!96268 (= b_free!22885 (not b_next!22885))))

(declare-fun tp!80505 () Bool)

(declare-fun b_and!36463 () Bool)

(assert (=> start!96268 (= tp!80505 b_and!36463)))

(declare-fun b!1093039 () Bool)

(declare-fun res!729467 () Bool)

(declare-fun e!624195 () Bool)

(assert (=> b!1093039 (=> (not res!729467) (not e!624195))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70648 0))(
  ( (array!70649 (arr!33994 (Array (_ BitVec 32) (_ BitVec 64))) (size!34531 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70648)

(assert (=> b!1093039 (= res!729467 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34531 _keys!1070))))))

(declare-fun res!729471 () Bool)

(assert (=> start!96268 (=> (not res!729471) (not e!624195))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96268 (= res!729471 (validMask!0 mask!1414))))

(assert (=> start!96268 e!624195))

(assert (=> start!96268 tp!80505))

(assert (=> start!96268 true))

(declare-fun tp_is_empty!26887 () Bool)

(assert (=> start!96268 tp_is_empty!26887))

(declare-fun array_inv!26054 (array!70648) Bool)

(assert (=> start!96268 (array_inv!26054 _keys!1070)))

(declare-datatypes ((V!40977 0))(
  ( (V!40978 (val!13500 Int)) )
))
(declare-datatypes ((ValueCell!12734 0))(
  ( (ValueCellFull!12734 (v!16122 V!40977)) (EmptyCell!12734) )
))
(declare-datatypes ((array!70650 0))(
  ( (array!70651 (arr!33995 (Array (_ BitVec 32) ValueCell!12734)) (size!34532 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70650)

(declare-fun e!624192 () Bool)

(declare-fun array_inv!26055 (array!70650) Bool)

(assert (=> start!96268 (and (array_inv!26055 _values!874) e!624192)))

(declare-fun b!1093040 () Bool)

(declare-fun e!624196 () Bool)

(assert (=> b!1093040 (= e!624196 tp_is_empty!26887)))

(declare-fun b!1093041 () Bool)

(declare-fun e!624193 () Bool)

(assert (=> b!1093041 (= e!624193 tp_is_empty!26887)))

(declare-fun b!1093042 () Bool)

(declare-fun res!729466 () Bool)

(assert (=> b!1093042 (=> (not res!729466) (not e!624195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70648 (_ BitVec 32)) Bool)

(assert (=> b!1093042 (= res!729466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1093043 () Bool)

(declare-fun res!729469 () Bool)

(assert (=> b!1093043 (=> (not res!729469) (not e!624195))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1093043 (= res!729469 (and (= (size!34532 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34531 _keys!1070) (size!34532 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1093044 () Bool)

(declare-fun res!729470 () Bool)

(declare-fun e!624191 () Bool)

(assert (=> b!1093044 (=> (not res!729470) (not e!624191))))

(declare-fun lt!488720 () array!70648)

(declare-datatypes ((List!23885 0))(
  ( (Nil!23882) (Cons!23881 (h!25090 (_ BitVec 64)) (t!33835 List!23885)) )
))
(declare-fun arrayNoDuplicates!0 (array!70648 (_ BitVec 32) List!23885) Bool)

(assert (=> b!1093044 (= res!729470 (arrayNoDuplicates!0 lt!488720 #b00000000000000000000000000000000 Nil!23882))))

(declare-fun b!1093045 () Bool)

(assert (=> b!1093045 (= e!624191 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40977)

(declare-datatypes ((tuple2!17242 0))(
  ( (tuple2!17243 (_1!8631 (_ BitVec 64)) (_2!8631 V!40977)) )
))
(declare-datatypes ((List!23886 0))(
  ( (Nil!23883) (Cons!23882 (h!25091 tuple2!17242) (t!33836 List!23886)) )
))
(declare-datatypes ((ListLongMap!15223 0))(
  ( (ListLongMap!15224 (toList!7627 List!23886)) )
))
(declare-fun lt!488718 () ListLongMap!15223)

(declare-fun zeroValue!831 () V!40977)

(declare-fun getCurrentListMap!4362 (array!70648 array!70650 (_ BitVec 32) (_ BitVec 32) V!40977 V!40977 (_ BitVec 32) Int) ListLongMap!15223)

(assert (=> b!1093045 (= lt!488718 (getCurrentListMap!4362 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488717 () ListLongMap!15223)

(declare-fun lt!488715 () array!70650)

(assert (=> b!1093045 (= lt!488717 (getCurrentListMap!4362 lt!488720 lt!488715 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!488722 () ListLongMap!15223)

(declare-fun lt!488716 () ListLongMap!15223)

(assert (=> b!1093045 (and (= lt!488722 lt!488716) (= lt!488716 lt!488722))))

(declare-fun lt!488719 () ListLongMap!15223)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!903 (ListLongMap!15223 (_ BitVec 64)) ListLongMap!15223)

(assert (=> b!1093045 (= lt!488716 (-!903 lt!488719 k!904))))

(declare-datatypes ((Unit!35921 0))(
  ( (Unit!35922) )
))
(declare-fun lt!488721 () Unit!35921)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!168 (array!70648 array!70650 (_ BitVec 32) (_ BitVec 32) V!40977 V!40977 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35921)

(assert (=> b!1093045 (= lt!488721 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!168 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4114 (array!70648 array!70650 (_ BitVec 32) (_ BitVec 32) V!40977 V!40977 (_ BitVec 32) Int) ListLongMap!15223)

(assert (=> b!1093045 (= lt!488722 (getCurrentListMapNoExtraKeys!4114 lt!488720 lt!488715 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2250 (Int (_ BitVec 64)) V!40977)

(assert (=> b!1093045 (= lt!488715 (array!70651 (store (arr!33995 _values!874) i!650 (ValueCellFull!12734 (dynLambda!2250 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34532 _values!874)))))

(assert (=> b!1093045 (= lt!488719 (getCurrentListMapNoExtraKeys!4114 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1093045 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!488723 () Unit!35921)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70648 (_ BitVec 64) (_ BitVec 32)) Unit!35921)

(assert (=> b!1093045 (= lt!488723 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1093046 () Bool)

(declare-fun res!729465 () Bool)

(assert (=> b!1093046 (=> (not res!729465) (not e!624195))))

(assert (=> b!1093046 (= res!729465 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23882))))

(declare-fun mapIsEmpty!42085 () Bool)

(declare-fun mapRes!42085 () Bool)

(assert (=> mapIsEmpty!42085 mapRes!42085))

(declare-fun b!1093047 () Bool)

(declare-fun res!729473 () Bool)

(assert (=> b!1093047 (=> (not res!729473) (not e!624195))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1093047 (= res!729473 (validKeyInArray!0 k!904))))

(declare-fun b!1093048 () Bool)

(assert (=> b!1093048 (= e!624192 (and e!624193 mapRes!42085))))

(declare-fun condMapEmpty!42085 () Bool)

(declare-fun mapDefault!42085 () ValueCell!12734)

