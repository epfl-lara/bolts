; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95692 () Bool)

(assert start!95692)

(declare-fun b_free!22309 () Bool)

(declare-fun b_next!22309 () Bool)

(assert (=> start!95692 (= b_free!22309 (not b_next!22309))))

(declare-fun tp!78776 () Bool)

(declare-fun b_and!35311 () Bool)

(assert (=> start!95692 (= tp!78776 b_and!35311)))

(declare-fun b!1081033 () Bool)

(declare-fun e!617977 () Bool)

(declare-fun e!617976 () Bool)

(assert (=> b!1081033 (= e!617977 e!617976)))

(declare-fun res!720634 () Bool)

(assert (=> b!1081033 (=> (not res!720634) (not e!617976))))

(declare-datatypes ((array!69526 0))(
  ( (array!69527 (arr!33433 (Array (_ BitVec 32) (_ BitVec 64))) (size!33970 (_ BitVec 32))) )
))
(declare-fun lt!479165 () array!69526)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69526 (_ BitVec 32)) Bool)

(assert (=> b!1081033 (= res!720634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479165 mask!1414))))

(declare-fun _keys!1070 () array!69526)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081033 (= lt!479165 (array!69527 (store (arr!33433 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33970 _keys!1070)))))

(declare-fun b!1081034 () Bool)

(declare-fun res!720627 () Bool)

(assert (=> b!1081034 (=> (not res!720627) (not e!617976))))

(declare-datatypes ((List!23432 0))(
  ( (Nil!23429) (Cons!23428 (h!24637 (_ BitVec 64)) (t!32806 List!23432)) )
))
(declare-fun arrayNoDuplicates!0 (array!69526 (_ BitVec 32) List!23432) Bool)

(assert (=> b!1081034 (= res!720627 (arrayNoDuplicates!0 lt!479165 #b00000000000000000000000000000000 Nil!23429))))

(declare-fun b!1081035 () Bool)

(assert (=> b!1081035 (= e!617976 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40209 0))(
  ( (V!40210 (val!13212 Int)) )
))
(declare-datatypes ((ValueCell!12446 0))(
  ( (ValueCellFull!12446 (v!15834 V!40209)) (EmptyCell!12446) )
))
(declare-datatypes ((array!69528 0))(
  ( (array!69529 (arr!33434 (Array (_ BitVec 32) ValueCell!12446)) (size!33971 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69528)

(declare-fun minValue!831 () V!40209)

(declare-datatypes ((tuple2!16806 0))(
  ( (tuple2!16807 (_1!8413 (_ BitVec 64)) (_2!8413 V!40209)) )
))
(declare-datatypes ((List!23433 0))(
  ( (Nil!23430) (Cons!23429 (h!24638 tuple2!16806) (t!32807 List!23433)) )
))
(declare-datatypes ((ListLongMap!14787 0))(
  ( (ListLongMap!14788 (toList!7409 List!23433)) )
))
(declare-fun lt!479168 () ListLongMap!14787)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40209)

(declare-fun getCurrentListMapNoExtraKeys!3920 (array!69526 array!69528 (_ BitVec 32) (_ BitVec 32) V!40209 V!40209 (_ BitVec 32) Int) ListLongMap!14787)

(declare-fun dynLambda!2056 (Int (_ BitVec 64)) V!40209)

(assert (=> b!1081035 (= lt!479168 (getCurrentListMapNoExtraKeys!3920 lt!479165 (array!69529 (store (arr!33434 _values!874) i!650 (ValueCellFull!12446 (dynLambda!2056 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33971 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479167 () ListLongMap!14787)

(assert (=> b!1081035 (= lt!479167 (getCurrentListMapNoExtraKeys!3920 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081035 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35497 0))(
  ( (Unit!35498) )
))
(declare-fun lt!479166 () Unit!35497)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69526 (_ BitVec 64) (_ BitVec 32)) Unit!35497)

(assert (=> b!1081035 (= lt!479166 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1081037 () Bool)

(declare-fun res!720630 () Bool)

(assert (=> b!1081037 (=> (not res!720630) (not e!617977))))

(assert (=> b!1081037 (= res!720630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081038 () Bool)

(declare-fun res!720633 () Bool)

(assert (=> b!1081038 (=> (not res!720633) (not e!617977))))

(assert (=> b!1081038 (= res!720633 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33970 _keys!1070))))))

(declare-fun mapNonEmpty!41221 () Bool)

(declare-fun mapRes!41221 () Bool)

(declare-fun tp!78777 () Bool)

(declare-fun e!617975 () Bool)

(assert (=> mapNonEmpty!41221 (= mapRes!41221 (and tp!78777 e!617975))))

(declare-fun mapValue!41221 () ValueCell!12446)

(declare-fun mapKey!41221 () (_ BitVec 32))

(declare-fun mapRest!41221 () (Array (_ BitVec 32) ValueCell!12446))

(assert (=> mapNonEmpty!41221 (= (arr!33434 _values!874) (store mapRest!41221 mapKey!41221 mapValue!41221))))

(declare-fun b!1081039 () Bool)

(declare-fun e!617974 () Bool)

(declare-fun tp_is_empty!26311 () Bool)

(assert (=> b!1081039 (= e!617974 tp_is_empty!26311)))

(declare-fun b!1081040 () Bool)

(assert (=> b!1081040 (= e!617975 tp_is_empty!26311)))

(declare-fun b!1081041 () Bool)

(declare-fun res!720635 () Bool)

(assert (=> b!1081041 (=> (not res!720635) (not e!617977))))

(assert (=> b!1081041 (= res!720635 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23429))))

(declare-fun b!1081036 () Bool)

(declare-fun res!720631 () Bool)

(assert (=> b!1081036 (=> (not res!720631) (not e!617977))))

(assert (=> b!1081036 (= res!720631 (and (= (size!33971 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33970 _keys!1070) (size!33971 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun res!720629 () Bool)

(assert (=> start!95692 (=> (not res!720629) (not e!617977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95692 (= res!720629 (validMask!0 mask!1414))))

(assert (=> start!95692 e!617977))

(assert (=> start!95692 tp!78776))

(assert (=> start!95692 true))

(assert (=> start!95692 tp_is_empty!26311))

(declare-fun array_inv!25674 (array!69526) Bool)

(assert (=> start!95692 (array_inv!25674 _keys!1070)))

(declare-fun e!617973 () Bool)

(declare-fun array_inv!25675 (array!69528) Bool)

(assert (=> start!95692 (and (array_inv!25675 _values!874) e!617973)))

(declare-fun mapIsEmpty!41221 () Bool)

(assert (=> mapIsEmpty!41221 mapRes!41221))

(declare-fun b!1081042 () Bool)

(declare-fun res!720628 () Bool)

(assert (=> b!1081042 (=> (not res!720628) (not e!617977))))

(assert (=> b!1081042 (= res!720628 (= (select (arr!33433 _keys!1070) i!650) k!904))))

(declare-fun b!1081043 () Bool)

(assert (=> b!1081043 (= e!617973 (and e!617974 mapRes!41221))))

(declare-fun condMapEmpty!41221 () Bool)

(declare-fun mapDefault!41221 () ValueCell!12446)

