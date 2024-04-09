; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95846 () Bool)

(assert start!95846)

(declare-fun b_free!22463 () Bool)

(declare-fun b_next!22463 () Bool)

(assert (=> start!95846 (= b_free!22463 (not b_next!22463))))

(declare-fun tp!79238 () Bool)

(declare-fun b_and!35619 () Bool)

(assert (=> start!95846 (= tp!79238 b_and!35619)))

(declare-fun b!1083959 () Bool)

(declare-fun e!619361 () Bool)

(assert (=> b!1083959 (= e!619361 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((array!69832 0))(
  ( (array!69833 (arr!33586 (Array (_ BitVec 32) (_ BitVec 64))) (size!34123 (_ BitVec 32))) )
))
(declare-fun lt!480396 () array!69832)

(declare-datatypes ((V!40413 0))(
  ( (V!40414 (val!13289 Int)) )
))
(declare-datatypes ((ValueCell!12523 0))(
  ( (ValueCellFull!12523 (v!15911 V!40413)) (EmptyCell!12523) )
))
(declare-datatypes ((array!69834 0))(
  ( (array!69835 (arr!33587 (Array (_ BitVec 32) ValueCell!12523)) (size!34124 (_ BitVec 32))) )
))
(declare-fun lt!480398 () array!69834)

(declare-fun minValue!831 () V!40413)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16906 0))(
  ( (tuple2!16907 (_1!8463 (_ BitVec 64)) (_2!8463 V!40413)) )
))
(declare-datatypes ((List!23546 0))(
  ( (Nil!23543) (Cons!23542 (h!24751 tuple2!16906) (t!33074 List!23546)) )
))
(declare-datatypes ((ListLongMap!14887 0))(
  ( (ListLongMap!14888 (toList!7459 List!23546)) )
))
(declare-fun lt!480397 () ListLongMap!14887)

(declare-fun zeroValue!831 () V!40413)

(declare-fun getCurrentListMap!4218 (array!69832 array!69834 (_ BitVec 32) (_ BitVec 32) V!40413 V!40413 (_ BitVec 32) Int) ListLongMap!14887)

(assert (=> b!1083959 (= lt!480397 (getCurrentListMap!4218 lt!480396 lt!480398 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480391 () ListLongMap!14887)

(declare-fun lt!480392 () ListLongMap!14887)

(assert (=> b!1083959 (and (= lt!480391 lt!480392) (= lt!480392 lt!480391))))

(declare-fun lt!480393 () ListLongMap!14887)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!741 (ListLongMap!14887 (_ BitVec 64)) ListLongMap!14887)

(assert (=> b!1083959 (= lt!480392 (-!741 lt!480393 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69832)

(declare-datatypes ((Unit!35597 0))(
  ( (Unit!35598) )
))
(declare-fun lt!480394 () Unit!35597)

(declare-fun _values!874 () array!69834)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!24 (array!69832 array!69834 (_ BitVec 32) (_ BitVec 32) V!40413 V!40413 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35597)

(assert (=> b!1083959 (= lt!480394 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!24 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3970 (array!69832 array!69834 (_ BitVec 32) (_ BitVec 32) V!40413 V!40413 (_ BitVec 32) Int) ListLongMap!14887)

(assert (=> b!1083959 (= lt!480391 (getCurrentListMapNoExtraKeys!3970 lt!480396 lt!480398 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2106 (Int (_ BitVec 64)) V!40413)

(assert (=> b!1083959 (= lt!480398 (array!69835 (store (arr!33587 _values!874) i!650 (ValueCellFull!12523 (dynLambda!2106 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34124 _values!874)))))

(assert (=> b!1083959 (= lt!480393 (getCurrentListMapNoExtraKeys!3970 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083959 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480395 () Unit!35597)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69832 (_ BitVec 64) (_ BitVec 32)) Unit!35597)

(assert (=> b!1083959 (= lt!480395 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1083960 () Bool)

(declare-fun res!722706 () Bool)

(declare-fun e!619362 () Bool)

(assert (=> b!1083960 (=> (not res!722706) (not e!619362))))

(assert (=> b!1083960 (= res!722706 (and (= (size!34124 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34123 _keys!1070) (size!34124 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083961 () Bool)

(declare-fun res!722708 () Bool)

(assert (=> b!1083961 (=> (not res!722708) (not e!619362))))

(declare-datatypes ((List!23547 0))(
  ( (Nil!23544) (Cons!23543 (h!24752 (_ BitVec 64)) (t!33075 List!23547)) )
))
(declare-fun arrayNoDuplicates!0 (array!69832 (_ BitVec 32) List!23547) Bool)

(assert (=> b!1083961 (= res!722708 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23544))))

(declare-fun b!1083962 () Bool)

(declare-fun res!722714 () Bool)

(assert (=> b!1083962 (=> (not res!722714) (not e!619362))))

(assert (=> b!1083962 (= res!722714 (= (select (arr!33586 _keys!1070) i!650) k!904))))

(declare-fun b!1083963 () Bool)

(declare-fun res!722713 () Bool)

(assert (=> b!1083963 (=> (not res!722713) (not e!619362))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69832 (_ BitVec 32)) Bool)

(assert (=> b!1083963 (= res!722713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1083964 () Bool)

(declare-fun res!722707 () Bool)

(assert (=> b!1083964 (=> (not res!722707) (not e!619361))))

(assert (=> b!1083964 (= res!722707 (arrayNoDuplicates!0 lt!480396 #b00000000000000000000000000000000 Nil!23544))))

(declare-fun b!1083965 () Bool)

(declare-fun res!722709 () Bool)

(assert (=> b!1083965 (=> (not res!722709) (not e!619362))))

(assert (=> b!1083965 (= res!722709 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34123 _keys!1070))))))

(declare-fun b!1083966 () Bool)

(declare-fun e!619359 () Bool)

(declare-fun tp_is_empty!26465 () Bool)

(assert (=> b!1083966 (= e!619359 tp_is_empty!26465)))

(declare-fun res!722710 () Bool)

(assert (=> start!95846 (=> (not res!722710) (not e!619362))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95846 (= res!722710 (validMask!0 mask!1414))))

(assert (=> start!95846 e!619362))

(assert (=> start!95846 tp!79238))

(assert (=> start!95846 true))

(assert (=> start!95846 tp_is_empty!26465))

(declare-fun array_inv!25774 (array!69832) Bool)

(assert (=> start!95846 (array_inv!25774 _keys!1070)))

(declare-fun e!619363 () Bool)

(declare-fun array_inv!25775 (array!69834) Bool)

(assert (=> start!95846 (and (array_inv!25775 _values!874) e!619363)))

(declare-fun mapIsEmpty!41452 () Bool)

(declare-fun mapRes!41452 () Bool)

(assert (=> mapIsEmpty!41452 mapRes!41452))

(declare-fun b!1083967 () Bool)

(assert (=> b!1083967 (= e!619362 e!619361)))

(declare-fun res!722712 () Bool)

(assert (=> b!1083967 (=> (not res!722712) (not e!619361))))

(assert (=> b!1083967 (= res!722712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!480396 mask!1414))))

(assert (=> b!1083967 (= lt!480396 (array!69833 (store (arr!33586 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34123 _keys!1070)))))

(declare-fun mapNonEmpty!41452 () Bool)

(declare-fun tp!79239 () Bool)

(assert (=> mapNonEmpty!41452 (= mapRes!41452 (and tp!79239 e!619359))))

(declare-fun mapRest!41452 () (Array (_ BitVec 32) ValueCell!12523))

(declare-fun mapValue!41452 () ValueCell!12523)

(declare-fun mapKey!41452 () (_ BitVec 32))

(assert (=> mapNonEmpty!41452 (= (arr!33587 _values!874) (store mapRest!41452 mapKey!41452 mapValue!41452))))

(declare-fun b!1083968 () Bool)

(declare-fun e!619358 () Bool)

(assert (=> b!1083968 (= e!619358 tp_is_empty!26465)))

(declare-fun b!1083969 () Bool)

(assert (=> b!1083969 (= e!619363 (and e!619358 mapRes!41452))))

(declare-fun condMapEmpty!41452 () Bool)

(declare-fun mapDefault!41452 () ValueCell!12523)

