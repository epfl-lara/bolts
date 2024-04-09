; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95764 () Bool)

(assert start!95764)

(declare-fun b_free!22381 () Bool)

(declare-fun b_next!22381 () Bool)

(assert (=> start!95764 (= b_free!22381 (not b_next!22381))))

(declare-fun tp!78993 () Bool)

(declare-fun b_and!35455 () Bool)

(assert (=> start!95764 (= tp!78993 b_and!35455)))

(declare-fun mapIsEmpty!41329 () Bool)

(declare-fun mapRes!41329 () Bool)

(assert (=> mapIsEmpty!41329 mapRes!41329))

(declare-fun b!1082401 () Bool)

(declare-fun e!618624 () Bool)

(declare-fun tp_is_empty!26383 () Bool)

(assert (=> b!1082401 (= e!618624 tp_is_empty!26383)))

(declare-fun b!1082402 () Bool)

(declare-fun res!721604 () Bool)

(declare-fun e!618620 () Bool)

(assert (=> b!1082402 (=> (not res!721604) (not e!618620))))

(declare-datatypes ((array!69670 0))(
  ( (array!69671 (arr!33505 (Array (_ BitVec 32) (_ BitVec 64))) (size!34042 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69670)

(declare-datatypes ((List!23487 0))(
  ( (Nil!23484) (Cons!23483 (h!24692 (_ BitVec 64)) (t!32933 List!23487)) )
))
(declare-fun arrayNoDuplicates!0 (array!69670 (_ BitVec 32) List!23487) Bool)

(assert (=> b!1082402 (= res!721604 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23484))))

(declare-fun b!1082403 () Bool)

(declare-fun res!721606 () Bool)

(assert (=> b!1082403 (=> (not res!721606) (not e!618620))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40305 0))(
  ( (V!40306 (val!13248 Int)) )
))
(declare-datatypes ((ValueCell!12482 0))(
  ( (ValueCellFull!12482 (v!15870 V!40305)) (EmptyCell!12482) )
))
(declare-datatypes ((array!69672 0))(
  ( (array!69673 (arr!33506 (Array (_ BitVec 32) ValueCell!12482)) (size!34043 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69672)

(assert (=> b!1082403 (= res!721606 (and (= (size!34043 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34042 _keys!1070) (size!34043 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41329 () Bool)

(declare-fun tp!78992 () Bool)

(assert (=> mapNonEmpty!41329 (= mapRes!41329 (and tp!78992 e!618624))))

(declare-fun mapValue!41329 () ValueCell!12482)

(declare-fun mapRest!41329 () (Array (_ BitVec 32) ValueCell!12482))

(declare-fun mapKey!41329 () (_ BitVec 32))

(assert (=> mapNonEmpty!41329 (= (arr!33506 _values!874) (store mapRest!41329 mapKey!41329 mapValue!41329))))

(declare-fun b!1082404 () Bool)

(declare-fun res!721607 () Bool)

(declare-fun e!618625 () Bool)

(assert (=> b!1082404 (=> (not res!721607) (not e!618625))))

(declare-fun lt!479598 () array!69670)

(assert (=> b!1082404 (= res!721607 (arrayNoDuplicates!0 lt!479598 #b00000000000000000000000000000000 Nil!23484))))

(declare-fun b!1082405 () Bool)

(assert (=> b!1082405 (= e!618625 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40305)

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((tuple2!16854 0))(
  ( (tuple2!16855 (_1!8437 (_ BitVec 64)) (_2!8437 V!40305)) )
))
(declare-datatypes ((List!23488 0))(
  ( (Nil!23485) (Cons!23484 (h!24693 tuple2!16854) (t!32934 List!23488)) )
))
(declare-datatypes ((ListLongMap!14835 0))(
  ( (ListLongMap!14836 (toList!7433 List!23488)) )
))
(declare-fun lt!479599 () ListLongMap!14835)

(declare-fun zeroValue!831 () V!40305)

(declare-fun getCurrentListMapNoExtraKeys!3944 (array!69670 array!69672 (_ BitVec 32) (_ BitVec 32) V!40305 V!40305 (_ BitVec 32) Int) ListLongMap!14835)

(declare-fun dynLambda!2080 (Int (_ BitVec 64)) V!40305)

(assert (=> b!1082405 (= lt!479599 (getCurrentListMapNoExtraKeys!3944 lt!479598 (array!69673 (store (arr!33506 _values!874) i!650 (ValueCellFull!12482 (dynLambda!2080 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34043 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479600 () ListLongMap!14835)

(assert (=> b!1082405 (= lt!479600 (getCurrentListMapNoExtraKeys!3944 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082405 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35545 0))(
  ( (Unit!35546) )
))
(declare-fun lt!479597 () Unit!35545)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69670 (_ BitVec 64) (_ BitVec 32)) Unit!35545)

(assert (=> b!1082405 (= lt!479597 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1082406 () Bool)

(declare-fun res!721601 () Bool)

(assert (=> b!1082406 (=> (not res!721601) (not e!618620))))

(assert (=> b!1082406 (= res!721601 (= (select (arr!33505 _keys!1070) i!650) k!904))))

(declare-fun b!1082407 () Bool)

(declare-fun res!721599 () Bool)

(assert (=> b!1082407 (=> (not res!721599) (not e!618620))))

(assert (=> b!1082407 (= res!721599 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34042 _keys!1070))))))

(declare-fun b!1082408 () Bool)

(declare-fun res!721603 () Bool)

(assert (=> b!1082408 (=> (not res!721603) (not e!618620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69670 (_ BitVec 32)) Bool)

(assert (=> b!1082408 (= res!721603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082410 () Bool)

(declare-fun e!618621 () Bool)

(declare-fun e!618622 () Bool)

(assert (=> b!1082410 (= e!618621 (and e!618622 mapRes!41329))))

(declare-fun condMapEmpty!41329 () Bool)

(declare-fun mapDefault!41329 () ValueCell!12482)

