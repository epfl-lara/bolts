; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95854 () Bool)

(assert start!95854)

(declare-fun b_free!22471 () Bool)

(declare-fun b_next!22471 () Bool)

(assert (=> start!95854 (= b_free!22471 (not b_next!22471))))

(declare-fun tp!79262 () Bool)

(declare-fun b_and!35635 () Bool)

(assert (=> start!95854 (= tp!79262 b_and!35635)))

(declare-fun b!1084111 () Bool)

(declare-fun e!619430 () Bool)

(declare-fun tp_is_empty!26473 () Bool)

(assert (=> b!1084111 (= e!619430 tp_is_empty!26473)))

(declare-fun b!1084112 () Bool)

(declare-fun e!619434 () Bool)

(assert (=> b!1084112 (= e!619434 tp_is_empty!26473)))

(declare-fun b!1084113 () Bool)

(declare-fun res!722817 () Bool)

(declare-fun e!619435 () Bool)

(assert (=> b!1084113 (=> (not res!722817) (not e!619435))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69848 0))(
  ( (array!69849 (arr!33594 (Array (_ BitVec 32) (_ BitVec 64))) (size!34131 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69848)

(declare-datatypes ((V!40425 0))(
  ( (V!40426 (val!13293 Int)) )
))
(declare-datatypes ((ValueCell!12527 0))(
  ( (ValueCellFull!12527 (v!15915 V!40425)) (EmptyCell!12527) )
))
(declare-datatypes ((array!69850 0))(
  ( (array!69851 (arr!33595 (Array (_ BitVec 32) ValueCell!12527)) (size!34132 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69850)

(assert (=> b!1084113 (= res!722817 (and (= (size!34132 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34131 _keys!1070) (size!34132 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41464 () Bool)

(declare-fun mapRes!41464 () Bool)

(declare-fun tp!79263 () Bool)

(assert (=> mapNonEmpty!41464 (= mapRes!41464 (and tp!79263 e!619430))))

(declare-fun mapValue!41464 () ValueCell!12527)

(declare-fun mapRest!41464 () (Array (_ BitVec 32) ValueCell!12527))

(declare-fun mapKey!41464 () (_ BitVec 32))

(assert (=> mapNonEmpty!41464 (= (arr!33595 _values!874) (store mapRest!41464 mapKey!41464 mapValue!41464))))

(declare-fun b!1084114 () Bool)

(declare-fun res!722815 () Bool)

(assert (=> b!1084114 (=> (not res!722815) (not e!619435))))

(declare-datatypes ((List!23552 0))(
  ( (Nil!23549) (Cons!23548 (h!24757 (_ BitVec 64)) (t!33088 List!23552)) )
))
(declare-fun arrayNoDuplicates!0 (array!69848 (_ BitVec 32) List!23552) Bool)

(assert (=> b!1084114 (= res!722815 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23549))))

(declare-fun b!1084115 () Bool)

(declare-fun res!722814 () Bool)

(assert (=> b!1084115 (=> (not res!722814) (not e!619435))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1084115 (= res!722814 (validKeyInArray!0 k!904))))

(declare-fun b!1084116 () Bool)

(declare-fun e!619431 () Bool)

(assert (=> b!1084116 (= e!619431 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40425)

(declare-fun lt!480491 () array!69850)

(declare-datatypes ((tuple2!16910 0))(
  ( (tuple2!16911 (_1!8465 (_ BitVec 64)) (_2!8465 V!40425)) )
))
(declare-datatypes ((List!23553 0))(
  ( (Nil!23550) (Cons!23549 (h!24758 tuple2!16910) (t!33089 List!23553)) )
))
(declare-datatypes ((ListLongMap!14891 0))(
  ( (ListLongMap!14892 (toList!7461 List!23553)) )
))
(declare-fun lt!480490 () ListLongMap!14891)

(declare-fun zeroValue!831 () V!40425)

(declare-fun lt!480489 () array!69848)

(declare-fun getCurrentListMap!4220 (array!69848 array!69850 (_ BitVec 32) (_ BitVec 32) V!40425 V!40425 (_ BitVec 32) Int) ListLongMap!14891)

(assert (=> b!1084116 (= lt!480490 (getCurrentListMap!4220 lt!480489 lt!480491 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!480493 () ListLongMap!14891)

(declare-fun lt!480487 () ListLongMap!14891)

(assert (=> b!1084116 (and (= lt!480493 lt!480487) (= lt!480487 lt!480493))))

(declare-fun lt!480488 () ListLongMap!14891)

(declare-fun -!743 (ListLongMap!14891 (_ BitVec 64)) ListLongMap!14891)

(assert (=> b!1084116 (= lt!480487 (-!743 lt!480488 k!904))))

(declare-datatypes ((Unit!35601 0))(
  ( (Unit!35602) )
))
(declare-fun lt!480492 () Unit!35601)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!26 (array!69848 array!69850 (_ BitVec 32) (_ BitVec 32) V!40425 V!40425 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35601)

(assert (=> b!1084116 (= lt!480492 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!26 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3972 (array!69848 array!69850 (_ BitVec 32) (_ BitVec 32) V!40425 V!40425 (_ BitVec 32) Int) ListLongMap!14891)

(assert (=> b!1084116 (= lt!480493 (getCurrentListMapNoExtraKeys!3972 lt!480489 lt!480491 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2108 (Int (_ BitVec 64)) V!40425)

(assert (=> b!1084116 (= lt!480491 (array!69851 (store (arr!33595 _values!874) i!650 (ValueCellFull!12527 (dynLambda!2108 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34132 _values!874)))))

(assert (=> b!1084116 (= lt!480488 (getCurrentListMapNoExtraKeys!3972 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1084116 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!480494 () Unit!35601)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69848 (_ BitVec 64) (_ BitVec 32)) Unit!35601)

(assert (=> b!1084116 (= lt!480494 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1084117 () Bool)

(declare-fun res!722822 () Bool)

(assert (=> b!1084117 (=> (not res!722822) (not e!619435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69848 (_ BitVec 32)) Bool)

(assert (=> b!1084117 (= res!722822 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1084119 () Bool)

(declare-fun e!619432 () Bool)

(assert (=> b!1084119 (= e!619432 (and e!619434 mapRes!41464))))

(declare-fun condMapEmpty!41464 () Bool)

(declare-fun mapDefault!41464 () ValueCell!12527)

