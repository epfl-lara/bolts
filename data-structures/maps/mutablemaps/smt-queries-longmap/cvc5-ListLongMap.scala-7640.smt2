; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96196 () Bool)

(assert start!96196)

(declare-fun b_free!22813 () Bool)

(declare-fun b_next!22813 () Bool)

(assert (=> start!96196 (= b_free!22813 (not b_next!22813))))

(declare-fun tp!80288 () Bool)

(declare-fun b_and!36319 () Bool)

(assert (=> start!96196 (= tp!80288 b_and!36319)))

(declare-fun mapNonEmpty!41977 () Bool)

(declare-fun mapRes!41977 () Bool)

(declare-fun tp!80289 () Bool)

(declare-fun e!623457 () Bool)

(assert (=> mapNonEmpty!41977 (= mapRes!41977 (and tp!80289 e!623457))))

(declare-datatypes ((V!40881 0))(
  ( (V!40882 (val!13464 Int)) )
))
(declare-datatypes ((ValueCell!12698 0))(
  ( (ValueCellFull!12698 (v!16086 V!40881)) (EmptyCell!12698) )
))
(declare-datatypes ((array!70514 0))(
  ( (array!70515 (arr!33927 (Array (_ BitVec 32) ValueCell!12698)) (size!34464 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70514)

(declare-fun mapRest!41977 () (Array (_ BitVec 32) ValueCell!12698))

(declare-fun mapValue!41977 () ValueCell!12698)

(declare-fun mapKey!41977 () (_ BitVec 32))

(assert (=> mapNonEmpty!41977 (= (arr!33927 _values!874) (store mapRest!41977 mapKey!41977 mapValue!41977))))

(declare-fun b!1091585 () Bool)

(declare-fun e!623463 () Bool)

(declare-fun tp_is_empty!26815 () Bool)

(assert (=> b!1091585 (= e!623463 tp_is_empty!26815)))

(declare-fun b!1091586 () Bool)

(declare-fun res!728408 () Bool)

(declare-fun e!623461 () Bool)

(assert (=> b!1091586 (=> (not res!728408) (not e!623461))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!70516 0))(
  ( (array!70517 (arr!33928 (Array (_ BitVec 32) (_ BitVec 64))) (size!34465 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70516)

(assert (=> b!1091586 (= res!728408 (and (= (size!34464 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34465 _keys!1070) (size!34464 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091587 () Bool)

(declare-fun e!623459 () Bool)

(assert (=> b!1091587 (= e!623459 true)))

(declare-datatypes ((tuple2!17198 0))(
  ( (tuple2!17199 (_1!8609 (_ BitVec 64)) (_2!8609 V!40881)) )
))
(declare-datatypes ((List!23838 0))(
  ( (Nil!23835) (Cons!23834 (h!25043 tuple2!17198) (t!33716 List!23838)) )
))
(declare-datatypes ((ListLongMap!15179 0))(
  ( (ListLongMap!15180 (toList!7605 List!23838)) )
))
(declare-fun lt!487576 () ListLongMap!15179)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun lt!487577 () ListLongMap!15179)

(declare-fun -!882 (ListLongMap!15179 (_ BitVec 64)) ListLongMap!15179)

(assert (=> b!1091587 (= (-!882 lt!487576 k!904) lt!487577)))

(declare-fun minValue!831 () V!40881)

(declare-datatypes ((Unit!35879 0))(
  ( (Unit!35880) )
))
(declare-fun lt!487582 () Unit!35879)

(declare-fun lt!487571 () ListLongMap!15179)

(declare-fun addRemoveCommutativeForDiffKeys!110 (ListLongMap!15179 (_ BitVec 64) V!40881 (_ BitVec 64)) Unit!35879)

(assert (=> b!1091587 (= lt!487582 (addRemoveCommutativeForDiffKeys!110 lt!487571 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun mapIsEmpty!41977 () Bool)

(assert (=> mapIsEmpty!41977 mapRes!41977))

(declare-fun b!1091589 () Bool)

(declare-fun e!623460 () Bool)

(assert (=> b!1091589 (= e!623460 e!623459)))

(declare-fun res!728407 () Bool)

(assert (=> b!1091589 (=> res!728407 e!623459)))

(assert (=> b!1091589 (= res!728407 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!487583 () ListLongMap!15179)

(assert (=> b!1091589 (= lt!487583 lt!487576)))

(declare-fun lt!487574 () tuple2!17198)

(declare-fun +!3309 (ListLongMap!15179 tuple2!17198) ListLongMap!15179)

(assert (=> b!1091589 (= lt!487576 (+!3309 lt!487571 lt!487574))))

(declare-fun lt!487581 () ListLongMap!15179)

(assert (=> b!1091589 (= lt!487581 lt!487577)))

(declare-fun lt!487579 () ListLongMap!15179)

(assert (=> b!1091589 (= lt!487577 (+!3309 lt!487579 lt!487574))))

(declare-fun lt!487572 () ListLongMap!15179)

(assert (=> b!1091589 (= lt!487581 (+!3309 lt!487572 lt!487574))))

(assert (=> b!1091589 (= lt!487574 (tuple2!17199 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1091590 () Bool)

(declare-fun res!728411 () Bool)

(assert (=> b!1091590 (=> (not res!728411) (not e!623461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70516 (_ BitVec 32)) Bool)

(assert (=> b!1091590 (= res!728411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091591 () Bool)

(assert (=> b!1091591 (= e!623457 tp_is_empty!26815)))

(declare-fun b!1091592 () Bool)

(declare-fun res!728416 () Bool)

(assert (=> b!1091592 (=> (not res!728416) (not e!623461))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1091592 (= res!728416 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34465 _keys!1070))))))

(declare-fun b!1091593 () Bool)

(declare-fun e!623462 () Bool)

(assert (=> b!1091593 (= e!623462 (not e!623460))))

(declare-fun res!728409 () Bool)

(assert (=> b!1091593 (=> res!728409 e!623460)))

(assert (=> b!1091593 (= res!728409 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40881)

(declare-fun getCurrentListMap!4341 (array!70516 array!70514 (_ BitVec 32) (_ BitVec 32) V!40881 V!40881 (_ BitVec 32) Int) ListLongMap!15179)

(assert (=> b!1091593 (= lt!487583 (getCurrentListMap!4341 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487578 () array!70514)

(declare-fun lt!487580 () array!70516)

(assert (=> b!1091593 (= lt!487581 (getCurrentListMap!4341 lt!487580 lt!487578 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1091593 (and (= lt!487572 lt!487579) (= lt!487579 lt!487572))))

(assert (=> b!1091593 (= lt!487579 (-!882 lt!487571 k!904))))

(declare-fun lt!487573 () Unit!35879)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!147 (array!70516 array!70514 (_ BitVec 32) (_ BitVec 32) V!40881 V!40881 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35879)

(assert (=> b!1091593 (= lt!487573 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!147 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4093 (array!70516 array!70514 (_ BitVec 32) (_ BitVec 32) V!40881 V!40881 (_ BitVec 32) Int) ListLongMap!15179)

(assert (=> b!1091593 (= lt!487572 (getCurrentListMapNoExtraKeys!4093 lt!487580 lt!487578 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2229 (Int (_ BitVec 64)) V!40881)

(assert (=> b!1091593 (= lt!487578 (array!70515 (store (arr!33927 _values!874) i!650 (ValueCellFull!12698 (dynLambda!2229 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34464 _values!874)))))

(assert (=> b!1091593 (= lt!487571 (getCurrentListMapNoExtraKeys!4093 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70516 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091593 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!487575 () Unit!35879)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70516 (_ BitVec 64) (_ BitVec 32)) Unit!35879)

(assert (=> b!1091593 (= lt!487575 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1091594 () Bool)

(declare-fun e!623464 () Bool)

(assert (=> b!1091594 (= e!623464 (and e!623463 mapRes!41977))))

(declare-fun condMapEmpty!41977 () Bool)

(declare-fun mapDefault!41977 () ValueCell!12698)

