; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95662 () Bool)

(assert start!95662)

(declare-fun b_free!22279 () Bool)

(declare-fun b_next!22279 () Bool)

(assert (=> start!95662 (= b_free!22279 (not b_next!22279))))

(declare-fun tp!78686 () Bool)

(declare-fun b_and!35275 () Bool)

(assert (=> start!95662 (= tp!78686 b_and!35275)))

(declare-fun res!720226 () Bool)

(declare-fun e!617702 () Bool)

(assert (=> start!95662 (=> (not res!720226) (not e!617702))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95662 (= res!720226 (validMask!0 mask!1414))))

(assert (=> start!95662 e!617702))

(assert (=> start!95662 tp!78686))

(assert (=> start!95662 true))

(declare-fun tp_is_empty!26281 () Bool)

(assert (=> start!95662 tp_is_empty!26281))

(declare-datatypes ((array!69468 0))(
  ( (array!69469 (arr!33404 (Array (_ BitVec 32) (_ BitVec 64))) (size!33941 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69468)

(declare-fun array_inv!25652 (array!69468) Bool)

(assert (=> start!95662 (array_inv!25652 _keys!1070)))

(declare-datatypes ((V!40169 0))(
  ( (V!40170 (val!13197 Int)) )
))
(declare-datatypes ((ValueCell!12431 0))(
  ( (ValueCellFull!12431 (v!15819 V!40169)) (EmptyCell!12431) )
))
(declare-datatypes ((array!69470 0))(
  ( (array!69471 (arr!33405 (Array (_ BitVec 32) ValueCell!12431)) (size!33942 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69470)

(declare-fun e!617703 () Bool)

(declare-fun array_inv!25653 (array!69470) Bool)

(assert (=> start!95662 (and (array_inv!25653 _values!874) e!617703)))

(declare-fun b!1080487 () Bool)

(declare-fun res!720222 () Bool)

(assert (=> b!1080487 (=> (not res!720222) (not e!617702))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080487 (= res!720222 (validKeyInArray!0 k!904))))

(declare-fun b!1080488 () Bool)

(declare-fun e!617707 () Bool)

(assert (=> b!1080488 (= e!617707 tp_is_empty!26281)))

(declare-fun b!1080489 () Bool)

(declare-fun e!617706 () Bool)

(assert (=> b!1080489 (= e!617702 e!617706)))

(declare-fun res!720224 () Bool)

(assert (=> b!1080489 (=> (not res!720224) (not e!617706))))

(declare-fun lt!479020 () array!69468)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69468 (_ BitVec 32)) Bool)

(assert (=> b!1080489 (= res!720224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479020 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080489 (= lt!479020 (array!69469 (store (arr!33404 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33941 _keys!1070)))))

(declare-fun b!1080490 () Bool)

(declare-fun res!720230 () Bool)

(assert (=> b!1080490 (=> (not res!720230) (not e!617702))))

(assert (=> b!1080490 (= res!720230 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33941 _keys!1070))))))

(declare-fun b!1080491 () Bool)

(declare-fun res!720227 () Bool)

(assert (=> b!1080491 (=> (not res!720227) (not e!617702))))

(assert (=> b!1080491 (= res!720227 (= (select (arr!33404 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!41176 () Bool)

(declare-fun mapRes!41176 () Bool)

(declare-fun tp!78687 () Bool)

(declare-fun e!617705 () Bool)

(assert (=> mapNonEmpty!41176 (= mapRes!41176 (and tp!78687 e!617705))))

(declare-fun mapRest!41176 () (Array (_ BitVec 32) ValueCell!12431))

(declare-fun mapKey!41176 () (_ BitVec 32))

(declare-fun mapValue!41176 () ValueCell!12431)

(assert (=> mapNonEmpty!41176 (= (arr!33405 _values!874) (store mapRest!41176 mapKey!41176 mapValue!41176))))

(declare-fun b!1080492 () Bool)

(assert (=> b!1080492 (= e!617705 tp_is_empty!26281)))

(declare-fun b!1080493 () Bool)

(declare-fun res!720229 () Bool)

(assert (=> b!1080493 (=> (not res!720229) (not e!617702))))

(assert (=> b!1080493 (= res!720229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080494 () Bool)

(declare-fun res!720223 () Bool)

(assert (=> b!1080494 (=> (not res!720223) (not e!617702))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1080494 (= res!720223 (and (= (size!33942 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33941 _keys!1070) (size!33942 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080495 () Bool)

(declare-fun res!720228 () Bool)

(assert (=> b!1080495 (=> (not res!720228) (not e!617706))))

(declare-datatypes ((List!23407 0))(
  ( (Nil!23404) (Cons!23403 (h!24612 (_ BitVec 64)) (t!32773 List!23407)) )
))
(declare-fun arrayNoDuplicates!0 (array!69468 (_ BitVec 32) List!23407) Bool)

(assert (=> b!1080495 (= res!720228 (arrayNoDuplicates!0 lt!479020 #b00000000000000000000000000000000 Nil!23404))))

(declare-fun mapIsEmpty!41176 () Bool)

(assert (=> mapIsEmpty!41176 mapRes!41176))

(declare-fun b!1080496 () Bool)

(declare-fun res!720225 () Bool)

(assert (=> b!1080496 (=> (not res!720225) (not e!617702))))

(assert (=> b!1080496 (= res!720225 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23404))))

(declare-fun b!1080497 () Bool)

(assert (=> b!1080497 (= e!617706 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16784 0))(
  ( (tuple2!16785 (_1!8402 (_ BitVec 64)) (_2!8402 V!40169)) )
))
(declare-datatypes ((List!23408 0))(
  ( (Nil!23405) (Cons!23404 (h!24613 tuple2!16784) (t!32774 List!23408)) )
))
(declare-datatypes ((ListLongMap!14765 0))(
  ( (ListLongMap!14766 (toList!7398 List!23408)) )
))
(declare-fun lt!479021 () ListLongMap!14765)

(declare-fun minValue!831 () V!40169)

(declare-fun zeroValue!831 () V!40169)

(declare-fun getCurrentListMapNoExtraKeys!3909 (array!69468 array!69470 (_ BitVec 32) (_ BitVec 32) V!40169 V!40169 (_ BitVec 32) Int) ListLongMap!14765)

(assert (=> b!1080497 (= lt!479021 (getCurrentListMapNoExtraKeys!3909 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080497 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35475 0))(
  ( (Unit!35476) )
))
(declare-fun lt!479019 () Unit!35475)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69468 (_ BitVec 64) (_ BitVec 32)) Unit!35475)

(assert (=> b!1080497 (= lt!479019 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1080498 () Bool)

(assert (=> b!1080498 (= e!617703 (and e!617707 mapRes!41176))))

(declare-fun condMapEmpty!41176 () Bool)

(declare-fun mapDefault!41176 () ValueCell!12431)

