; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96202 () Bool)

(assert start!96202)

(declare-fun b_free!22819 () Bool)

(declare-fun b_next!22819 () Bool)

(assert (=> start!96202 (= b_free!22819 (not b_next!22819))))

(declare-fun tp!80306 () Bool)

(declare-fun b_and!36331 () Bool)

(assert (=> start!96202 (= tp!80306 b_and!36331)))

(declare-fun b!1091717 () Bool)

(declare-fun e!623529 () Bool)

(declare-fun tp_is_empty!26821 () Bool)

(assert (=> b!1091717 (= e!623529 tp_is_empty!26821)))

(declare-fun mapIsEmpty!41986 () Bool)

(declare-fun mapRes!41986 () Bool)

(assert (=> mapIsEmpty!41986 mapRes!41986))

(declare-fun mapNonEmpty!41986 () Bool)

(declare-fun tp!80307 () Bool)

(declare-fun e!623534 () Bool)

(assert (=> mapNonEmpty!41986 (= mapRes!41986 (and tp!80307 e!623534))))

(declare-datatypes ((V!40889 0))(
  ( (V!40890 (val!13467 Int)) )
))
(declare-datatypes ((ValueCell!12701 0))(
  ( (ValueCellFull!12701 (v!16089 V!40889)) (EmptyCell!12701) )
))
(declare-fun mapValue!41986 () ValueCell!12701)

(declare-datatypes ((array!70526 0))(
  ( (array!70527 (arr!33933 (Array (_ BitVec 32) ValueCell!12701)) (size!34470 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70526)

(declare-fun mapKey!41986 () (_ BitVec 32))

(declare-fun mapRest!41986 () (Array (_ BitVec 32) ValueCell!12701))

(assert (=> mapNonEmpty!41986 (= (arr!33933 _values!874) (store mapRest!41986 mapKey!41986 mapValue!41986))))

(declare-fun b!1091719 () Bool)

(declare-fun e!623531 () Bool)

(declare-fun e!623533 () Bool)

(assert (=> b!1091719 (= e!623531 (not e!623533))))

(declare-fun res!728516 () Bool)

(assert (=> b!1091719 (=> res!728516 e!623533)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091719 (= res!728516 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40889)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17202 0))(
  ( (tuple2!17203 (_1!8611 (_ BitVec 64)) (_2!8611 V!40889)) )
))
(declare-datatypes ((List!23842 0))(
  ( (Nil!23839) (Cons!23838 (h!25047 tuple2!17202) (t!33726 List!23842)) )
))
(declare-datatypes ((ListLongMap!15183 0))(
  ( (ListLongMap!15184 (toList!7607 List!23842)) )
))
(declare-fun lt!487696 () ListLongMap!15183)

(declare-fun zeroValue!831 () V!40889)

(declare-datatypes ((array!70528 0))(
  ( (array!70529 (arr!33934 (Array (_ BitVec 32) (_ BitVec 64))) (size!34471 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70528)

(declare-fun getCurrentListMap!4343 (array!70528 array!70526 (_ BitVec 32) (_ BitVec 32) V!40889 V!40889 (_ BitVec 32) Int) ListLongMap!15183)

(assert (=> b!1091719 (= lt!487696 (getCurrentListMap!4343 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487691 () array!70528)

(declare-fun lt!487700 () ListLongMap!15183)

(declare-fun lt!487689 () array!70526)

(assert (=> b!1091719 (= lt!487700 (getCurrentListMap!4343 lt!487691 lt!487689 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487688 () ListLongMap!15183)

(declare-fun lt!487699 () ListLongMap!15183)

(assert (=> b!1091719 (and (= lt!487688 lt!487699) (= lt!487699 lt!487688))))

(declare-fun lt!487690 () ListLongMap!15183)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!884 (ListLongMap!15183 (_ BitVec 64)) ListLongMap!15183)

(assert (=> b!1091719 (= lt!487699 (-!884 lt!487690 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35883 0))(
  ( (Unit!35884) )
))
(declare-fun lt!487694 () Unit!35883)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!149 (array!70528 array!70526 (_ BitVec 32) (_ BitVec 32) V!40889 V!40889 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35883)

(assert (=> b!1091719 (= lt!487694 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!149 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4095 (array!70528 array!70526 (_ BitVec 32) (_ BitVec 32) V!40889 V!40889 (_ BitVec 32) Int) ListLongMap!15183)

(assert (=> b!1091719 (= lt!487688 (getCurrentListMapNoExtraKeys!4095 lt!487691 lt!487689 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2231 (Int (_ BitVec 64)) V!40889)

(assert (=> b!1091719 (= lt!487689 (array!70527 (store (arr!33933 _values!874) i!650 (ValueCellFull!12701 (dynLambda!2231 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34470 _values!874)))))

(assert (=> b!1091719 (= lt!487690 (getCurrentListMapNoExtraKeys!4095 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70528 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091719 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!487695 () Unit!35883)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70528 (_ BitVec 64) (_ BitVec 32)) Unit!35883)

(assert (=> b!1091719 (= lt!487695 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1091720 () Bool)

(declare-fun res!728509 () Bool)

(declare-fun e!623536 () Bool)

(assert (=> b!1091720 (=> (not res!728509) (not e!623536))))

(assert (=> b!1091720 (= res!728509 (= (select (arr!33934 _keys!1070) i!650) k!904))))

(declare-fun b!1091721 () Bool)

(declare-fun res!728513 () Bool)

(assert (=> b!1091721 (=> (not res!728513) (not e!623536))))

(assert (=> b!1091721 (= res!728513 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34471 _keys!1070))))))

(declare-fun b!1091722 () Bool)

(assert (=> b!1091722 (= e!623536 e!623531)))

(declare-fun res!728515 () Bool)

(assert (=> b!1091722 (=> (not res!728515) (not e!623531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70528 (_ BitVec 32)) Bool)

(assert (=> b!1091722 (= res!728515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487691 mask!1414))))

(assert (=> b!1091722 (= lt!487691 (array!70529 (store (arr!33934 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34471 _keys!1070)))))

(declare-fun b!1091723 () Bool)

(declare-fun e!623530 () Bool)

(assert (=> b!1091723 (= e!623530 true)))

(declare-fun lt!487693 () ListLongMap!15183)

(declare-fun lt!487697 () ListLongMap!15183)

(assert (=> b!1091723 (= (-!884 lt!487693 k!904) lt!487697)))

(declare-fun lt!487698 () Unit!35883)

(declare-fun addRemoveCommutativeForDiffKeys!112 (ListLongMap!15183 (_ BitVec 64) V!40889 (_ BitVec 64)) Unit!35883)

(assert (=> b!1091723 (= lt!487698 (addRemoveCommutativeForDiffKeys!112 lt!487690 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1091724 () Bool)

(declare-fun e!623532 () Bool)

(assert (=> b!1091724 (= e!623532 (and e!623529 mapRes!41986))))

(declare-fun condMapEmpty!41986 () Bool)

(declare-fun mapDefault!41986 () ValueCell!12701)

