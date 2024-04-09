; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96134 () Bool)

(assert start!96134)

(declare-fun b_free!22751 () Bool)

(declare-fun b_next!22751 () Bool)

(assert (=> start!96134 (= b_free!22751 (not b_next!22751))))

(declare-fun tp!80102 () Bool)

(declare-fun b_and!36195 () Bool)

(assert (=> start!96134 (= tp!80102 b_and!36195)))

(declare-fun b!1090221 () Bool)

(declare-fun res!727391 () Bool)

(declare-fun e!622716 () Bool)

(assert (=> b!1090221 (=> (not res!727391) (not e!622716))))

(declare-datatypes ((array!70394 0))(
  ( (array!70395 (arr!33867 (Array (_ BitVec 32) (_ BitVec 64))) (size!34404 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70394)

(declare-datatypes ((List!23785 0))(
  ( (Nil!23782) (Cons!23781 (h!24990 (_ BitVec 64)) (t!33601 List!23785)) )
))
(declare-fun arrayNoDuplicates!0 (array!70394 (_ BitVec 32) List!23785) Bool)

(assert (=> b!1090221 (= res!727391 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23782))))

(declare-fun b!1090222 () Bool)

(declare-fun e!622714 () Bool)

(declare-fun tp_is_empty!26753 () Bool)

(assert (=> b!1090222 (= e!622714 tp_is_empty!26753)))

(declare-fun b!1090223 () Bool)

(declare-fun res!727384 () Bool)

(assert (=> b!1090223 (=> (not res!727384) (not e!622716))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090223 (= res!727384 (validKeyInArray!0 k!904))))

(declare-fun b!1090224 () Bool)

(declare-fun e!622720 () Bool)

(declare-fun e!622719 () Bool)

(assert (=> b!1090224 (= e!622720 e!622719)))

(declare-fun res!727387 () Bool)

(assert (=> b!1090224 (=> res!727387 e!622719)))

(assert (=> b!1090224 (= res!727387 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40797 0))(
  ( (V!40798 (val!13433 Int)) )
))
(declare-datatypes ((tuple2!17146 0))(
  ( (tuple2!17147 (_1!8583 (_ BitVec 64)) (_2!8583 V!40797)) )
))
(declare-datatypes ((List!23786 0))(
  ( (Nil!23783) (Cons!23782 (h!24991 tuple2!17146) (t!33602 List!23786)) )
))
(declare-datatypes ((ListLongMap!15127 0))(
  ( (ListLongMap!15128 (toList!7579 List!23786)) )
))
(declare-fun lt!486373 () ListLongMap!15127)

(declare-fun lt!486370 () ListLongMap!15127)

(assert (=> b!1090224 (= lt!486373 lt!486370)))

(declare-fun lt!486365 () ListLongMap!15127)

(declare-fun lt!486369 () tuple2!17146)

(declare-fun +!3289 (ListLongMap!15127 tuple2!17146) ListLongMap!15127)

(assert (=> b!1090224 (= lt!486370 (+!3289 lt!486365 lt!486369))))

(declare-fun lt!486372 () ListLongMap!15127)

(declare-fun lt!486366 () ListLongMap!15127)

(assert (=> b!1090224 (= lt!486372 lt!486366)))

(declare-fun lt!486362 () ListLongMap!15127)

(assert (=> b!1090224 (= lt!486366 (+!3289 lt!486362 lt!486369))))

(declare-fun lt!486363 () ListLongMap!15127)

(assert (=> b!1090224 (= lt!486372 (+!3289 lt!486363 lt!486369))))

(declare-fun minValue!831 () V!40797)

(assert (=> b!1090224 (= lt!486369 (tuple2!17147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090225 () Bool)

(declare-fun res!727390 () Bool)

(assert (=> b!1090225 (=> (not res!727390) (not e!622716))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090225 (= res!727390 (= (select (arr!33867 _keys!1070) i!650) k!904))))

(declare-fun b!1090226 () Bool)

(declare-fun res!727394 () Bool)

(assert (=> b!1090226 (=> (not res!727394) (not e!622716))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70394 (_ BitVec 32)) Bool)

(assert (=> b!1090226 (= res!727394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090227 () Bool)

(declare-fun res!727389 () Bool)

(assert (=> b!1090227 (=> (not res!727389) (not e!622716))))

(assert (=> b!1090227 (= res!727389 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34404 _keys!1070))))))

(declare-fun b!1090228 () Bool)

(declare-fun e!622718 () Bool)

(assert (=> b!1090228 (= e!622718 tp_is_empty!26753)))

(declare-fun b!1090229 () Bool)

(declare-fun res!727386 () Bool)

(declare-fun e!622717 () Bool)

(assert (=> b!1090229 (=> (not res!727386) (not e!622717))))

(declare-fun lt!486367 () array!70394)

(assert (=> b!1090229 (= res!727386 (arrayNoDuplicates!0 lt!486367 #b00000000000000000000000000000000 Nil!23782))))

(declare-fun b!1090230 () Bool)

(assert (=> b!1090230 (= e!622716 e!622717)))

(declare-fun res!727385 () Bool)

(assert (=> b!1090230 (=> (not res!727385) (not e!622717))))

(assert (=> b!1090230 (= res!727385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486367 mask!1414))))

(assert (=> b!1090230 (= lt!486367 (array!70395 (store (arr!33867 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34404 _keys!1070)))))

(declare-fun mapNonEmpty!41884 () Bool)

(declare-fun mapRes!41884 () Bool)

(declare-fun tp!80103 () Bool)

(assert (=> mapNonEmpty!41884 (= mapRes!41884 (and tp!80103 e!622714))))

(declare-datatypes ((ValueCell!12667 0))(
  ( (ValueCellFull!12667 (v!16055 V!40797)) (EmptyCell!12667) )
))
(declare-fun mapValue!41884 () ValueCell!12667)

(declare-fun mapKey!41884 () (_ BitVec 32))

(declare-datatypes ((array!70396 0))(
  ( (array!70397 (arr!33868 (Array (_ BitVec 32) ValueCell!12667)) (size!34405 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70396)

(declare-fun mapRest!41884 () (Array (_ BitVec 32) ValueCell!12667))

(assert (=> mapNonEmpty!41884 (= (arr!33868 _values!874) (store mapRest!41884 mapKey!41884 mapValue!41884))))

(declare-fun b!1090231 () Bool)

(assert (=> b!1090231 (= e!622719 true)))

(declare-fun -!857 (ListLongMap!15127 (_ BitVec 64)) ListLongMap!15127)

(assert (=> b!1090231 (= (-!857 lt!486370 k!904) lt!486366)))

(declare-datatypes ((Unit!35829 0))(
  ( (Unit!35830) )
))
(declare-fun lt!486368 () Unit!35829)

(declare-fun addRemoveCommutativeForDiffKeys!86 (ListLongMap!15127 (_ BitVec 64) V!40797 (_ BitVec 64)) Unit!35829)

(assert (=> b!1090231 (= lt!486368 (addRemoveCommutativeForDiffKeys!86 lt!486365 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1090232 () Bool)

(declare-fun res!727392 () Bool)

(assert (=> b!1090232 (=> (not res!727392) (not e!622716))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090232 (= res!727392 (and (= (size!34405 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34404 _keys!1070) (size!34405 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090233 () Bool)

(assert (=> b!1090233 (= e!622717 (not e!622720))))

(declare-fun res!727388 () Bool)

(assert (=> b!1090233 (=> res!727388 e!622720)))

(assert (=> b!1090233 (= res!727388 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!831 () V!40797)

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4320 (array!70394 array!70396 (_ BitVec 32) (_ BitVec 32) V!40797 V!40797 (_ BitVec 32) Int) ListLongMap!15127)

(assert (=> b!1090233 (= lt!486373 (getCurrentListMap!4320 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486364 () array!70396)

(assert (=> b!1090233 (= lt!486372 (getCurrentListMap!4320 lt!486367 lt!486364 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1090233 (and (= lt!486363 lt!486362) (= lt!486362 lt!486363))))

(assert (=> b!1090233 (= lt!486362 (-!857 lt!486365 k!904))))

(declare-fun lt!486371 () Unit!35829)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!126 (array!70394 array!70396 (_ BitVec 32) (_ BitVec 32) V!40797 V!40797 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35829)

(assert (=> b!1090233 (= lt!486371 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!126 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4072 (array!70394 array!70396 (_ BitVec 32) (_ BitVec 32) V!40797 V!40797 (_ BitVec 32) Int) ListLongMap!15127)

(assert (=> b!1090233 (= lt!486363 (getCurrentListMapNoExtraKeys!4072 lt!486367 lt!486364 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2208 (Int (_ BitVec 64)) V!40797)

(assert (=> b!1090233 (= lt!486364 (array!70397 (store (arr!33868 _values!874) i!650 (ValueCellFull!12667 (dynLambda!2208 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34405 _values!874)))))

(assert (=> b!1090233 (= lt!486365 (getCurrentListMapNoExtraKeys!4072 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090233 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486374 () Unit!35829)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70394 (_ BitVec 64) (_ BitVec 32)) Unit!35829)

(assert (=> b!1090233 (= lt!486374 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1090234 () Bool)

(declare-fun e!622715 () Bool)

(assert (=> b!1090234 (= e!622715 (and e!622718 mapRes!41884))))

(declare-fun condMapEmpty!41884 () Bool)

(declare-fun mapDefault!41884 () ValueCell!12667)

