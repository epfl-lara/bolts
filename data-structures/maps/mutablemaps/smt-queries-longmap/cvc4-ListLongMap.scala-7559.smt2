; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95714 () Bool)

(assert start!95714)

(declare-fun b_free!22331 () Bool)

(declare-fun b_next!22331 () Bool)

(assert (=> start!95714 (= b_free!22331 (not b_next!22331))))

(declare-fun tp!78843 () Bool)

(declare-fun b_and!35355 () Bool)

(assert (=> start!95714 (= tp!78843 b_and!35355)))

(declare-fun mapIsEmpty!41254 () Bool)

(declare-fun mapRes!41254 () Bool)

(assert (=> mapIsEmpty!41254 mapRes!41254))

(declare-fun b!1081451 () Bool)

(declare-fun e!618173 () Bool)

(declare-fun tp_is_empty!26333 () Bool)

(assert (=> b!1081451 (= e!618173 tp_is_empty!26333)))

(declare-fun b!1081452 () Bool)

(declare-fun e!618170 () Bool)

(assert (=> b!1081452 (= e!618170 (not true))))

(declare-datatypes ((V!40237 0))(
  ( (V!40238 (val!13223 Int)) )
))
(declare-datatypes ((ValueCell!12457 0))(
  ( (ValueCellFull!12457 (v!15845 V!40237)) (EmptyCell!12457) )
))
(declare-datatypes ((array!69570 0))(
  ( (array!69571 (arr!33455 (Array (_ BitVec 32) ValueCell!12457)) (size!33992 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69570)

(declare-fun minValue!831 () V!40237)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69572 0))(
  ( (array!69573 (arr!33456 (Array (_ BitVec 32) (_ BitVec 64))) (size!33993 (_ BitVec 32))) )
))
(declare-fun lt!479297 () array!69572)

(declare-fun zeroValue!831 () V!40237)

(declare-datatypes ((tuple2!16824 0))(
  ( (tuple2!16825 (_1!8422 (_ BitVec 64)) (_2!8422 V!40237)) )
))
(declare-datatypes ((List!23451 0))(
  ( (Nil!23448) (Cons!23447 (h!24656 tuple2!16824) (t!32847 List!23451)) )
))
(declare-datatypes ((ListLongMap!14805 0))(
  ( (ListLongMap!14806 (toList!7418 List!23451)) )
))
(declare-fun lt!479300 () ListLongMap!14805)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMapNoExtraKeys!3929 (array!69572 array!69570 (_ BitVec 32) (_ BitVec 32) V!40237 V!40237 (_ BitVec 32) Int) ListLongMap!14805)

(declare-fun dynLambda!2065 (Int (_ BitVec 64)) V!40237)

(assert (=> b!1081452 (= lt!479300 (getCurrentListMapNoExtraKeys!3929 lt!479297 (array!69571 (store (arr!33455 _values!874) i!650 (ValueCellFull!12457 (dynLambda!2065 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33992 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479298 () ListLongMap!14805)

(declare-fun _keys!1070 () array!69572)

(assert (=> b!1081452 (= lt!479298 (getCurrentListMapNoExtraKeys!3929 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69572 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1081452 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35515 0))(
  ( (Unit!35516) )
))
(declare-fun lt!479299 () Unit!35515)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69572 (_ BitVec 64) (_ BitVec 32)) Unit!35515)

(assert (=> b!1081452 (= lt!479299 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1081453 () Bool)

(declare-fun res!720930 () Bool)

(declare-fun e!618174 () Bool)

(assert (=> b!1081453 (=> (not res!720930) (not e!618174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69572 (_ BitVec 32)) Bool)

(assert (=> b!1081453 (= res!720930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun res!720925 () Bool)

(assert (=> start!95714 (=> (not res!720925) (not e!618174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95714 (= res!720925 (validMask!0 mask!1414))))

(assert (=> start!95714 e!618174))

(assert (=> start!95714 tp!78843))

(assert (=> start!95714 true))

(assert (=> start!95714 tp_is_empty!26333))

(declare-fun array_inv!25686 (array!69572) Bool)

(assert (=> start!95714 (array_inv!25686 _keys!1070)))

(declare-fun e!618171 () Bool)

(declare-fun array_inv!25687 (array!69570) Bool)

(assert (=> start!95714 (and (array_inv!25687 _values!874) e!618171)))

(declare-fun b!1081454 () Bool)

(declare-fun res!720928 () Bool)

(assert (=> b!1081454 (=> (not res!720928) (not e!618174))))

(declare-datatypes ((List!23452 0))(
  ( (Nil!23449) (Cons!23448 (h!24657 (_ BitVec 64)) (t!32848 List!23452)) )
))
(declare-fun arrayNoDuplicates!0 (array!69572 (_ BitVec 32) List!23452) Bool)

(assert (=> b!1081454 (= res!720928 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23449))))

(declare-fun b!1081455 () Bool)

(declare-fun res!720932 () Bool)

(assert (=> b!1081455 (=> (not res!720932) (not e!618170))))

(assert (=> b!1081455 (= res!720932 (arrayNoDuplicates!0 lt!479297 #b00000000000000000000000000000000 Nil!23449))))

(declare-fun mapNonEmpty!41254 () Bool)

(declare-fun tp!78842 () Bool)

(assert (=> mapNonEmpty!41254 (= mapRes!41254 (and tp!78842 e!618173))))

(declare-fun mapValue!41254 () ValueCell!12457)

(declare-fun mapKey!41254 () (_ BitVec 32))

(declare-fun mapRest!41254 () (Array (_ BitVec 32) ValueCell!12457))

(assert (=> mapNonEmpty!41254 (= (arr!33455 _values!874) (store mapRest!41254 mapKey!41254 mapValue!41254))))

(declare-fun b!1081456 () Bool)

(declare-fun res!720931 () Bool)

(assert (=> b!1081456 (=> (not res!720931) (not e!618174))))

(assert (=> b!1081456 (= res!720931 (and (= (size!33992 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33993 _keys!1070) (size!33992 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1081457 () Bool)

(declare-fun res!720929 () Bool)

(assert (=> b!1081457 (=> (not res!720929) (not e!618174))))

(assert (=> b!1081457 (= res!720929 (= (select (arr!33456 _keys!1070) i!650) k!904))))

(declare-fun b!1081458 () Bool)

(declare-fun e!618175 () Bool)

(assert (=> b!1081458 (= e!618175 tp_is_empty!26333)))

(declare-fun b!1081459 () Bool)

(declare-fun res!720926 () Bool)

(assert (=> b!1081459 (=> (not res!720926) (not e!618174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081459 (= res!720926 (validKeyInArray!0 k!904))))

(declare-fun b!1081460 () Bool)

(assert (=> b!1081460 (= e!618171 (and e!618175 mapRes!41254))))

(declare-fun condMapEmpty!41254 () Bool)

(declare-fun mapDefault!41254 () ValueCell!12457)

