; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96148 () Bool)

(assert start!96148)

(declare-fun b_free!22765 () Bool)

(declare-fun b_next!22765 () Bool)

(assert (=> start!96148 (= b_free!22765 (not b_next!22765))))

(declare-fun tp!80144 () Bool)

(declare-fun b_and!36223 () Bool)

(assert (=> start!96148 (= tp!80144 b_and!36223)))

(declare-fun b!1090529 () Bool)

(declare-fun res!727622 () Bool)

(declare-fun e!622888 () Bool)

(assert (=> b!1090529 (=> (not res!727622) (not e!622888))))

(declare-datatypes ((array!70422 0))(
  ( (array!70423 (arr!33881 (Array (_ BitVec 32) (_ BitVec 64))) (size!34418 (_ BitVec 32))) )
))
(declare-fun lt!486638 () array!70422)

(declare-datatypes ((List!23795 0))(
  ( (Nil!23792) (Cons!23791 (h!25000 (_ BitVec 64)) (t!33625 List!23795)) )
))
(declare-fun arrayNoDuplicates!0 (array!70422 (_ BitVec 32) List!23795) Bool)

(assert (=> b!1090529 (= res!727622 (arrayNoDuplicates!0 lt!486638 #b00000000000000000000000000000000 Nil!23792))))

(declare-fun mapIsEmpty!41905 () Bool)

(declare-fun mapRes!41905 () Bool)

(assert (=> mapIsEmpty!41905 mapRes!41905))

(declare-fun b!1090530 () Bool)

(declare-fun e!622884 () Bool)

(declare-fun e!622882 () Bool)

(assert (=> b!1090530 (= e!622884 e!622882)))

(declare-fun res!727618 () Bool)

(assert (=> b!1090530 (=> res!727618 e!622882)))

(declare-fun k!904 () (_ BitVec 64))

(assert (=> b!1090530 (= res!727618 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((V!40817 0))(
  ( (V!40818 (val!13440 Int)) )
))
(declare-datatypes ((tuple2!17156 0))(
  ( (tuple2!17157 (_1!8588 (_ BitVec 64)) (_2!8588 V!40817)) )
))
(declare-datatypes ((List!23796 0))(
  ( (Nil!23793) (Cons!23792 (h!25001 tuple2!17156) (t!33626 List!23796)) )
))
(declare-datatypes ((ListLongMap!15137 0))(
  ( (ListLongMap!15138 (toList!7584 List!23796)) )
))
(declare-fun lt!486647 () ListLongMap!15137)

(declare-fun lt!486640 () ListLongMap!15137)

(assert (=> b!1090530 (= lt!486647 lt!486640)))

(declare-fun lt!486639 () ListLongMap!15137)

(declare-fun lt!486636 () tuple2!17156)

(declare-fun +!3293 (ListLongMap!15137 tuple2!17156) ListLongMap!15137)

(assert (=> b!1090530 (= lt!486640 (+!3293 lt!486639 lt!486636))))

(declare-fun lt!486635 () ListLongMap!15137)

(declare-fun lt!486643 () ListLongMap!15137)

(assert (=> b!1090530 (= lt!486635 lt!486643)))

(declare-fun lt!486642 () ListLongMap!15137)

(assert (=> b!1090530 (= lt!486643 (+!3293 lt!486642 lt!486636))))

(declare-fun lt!486645 () ListLongMap!15137)

(assert (=> b!1090530 (= lt!486635 (+!3293 lt!486645 lt!486636))))

(declare-fun minValue!831 () V!40817)

(assert (=> b!1090530 (= lt!486636 (tuple2!17157 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090531 () Bool)

(assert (=> b!1090531 (= e!622888 (not e!622884))))

(declare-fun res!727623 () Bool)

(assert (=> b!1090531 (=> res!727623 e!622884)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090531 (= res!727623 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40817)

(declare-fun _keys!1070 () array!70422)

(declare-datatypes ((ValueCell!12674 0))(
  ( (ValueCellFull!12674 (v!16062 V!40817)) (EmptyCell!12674) )
))
(declare-datatypes ((array!70424 0))(
  ( (array!70425 (arr!33882 (Array (_ BitVec 32) ValueCell!12674)) (size!34419 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70424)

(declare-fun getCurrentListMap!4325 (array!70422 array!70424 (_ BitVec 32) (_ BitVec 32) V!40817 V!40817 (_ BitVec 32) Int) ListLongMap!15137)

(assert (=> b!1090531 (= lt!486647 (getCurrentListMap!4325 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486641 () array!70424)

(assert (=> b!1090531 (= lt!486635 (getCurrentListMap!4325 lt!486638 lt!486641 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1090531 (and (= lt!486645 lt!486642) (= lt!486642 lt!486645))))

(declare-fun -!862 (ListLongMap!15137 (_ BitVec 64)) ListLongMap!15137)

(assert (=> b!1090531 (= lt!486642 (-!862 lt!486639 k!904))))

(declare-datatypes ((Unit!35839 0))(
  ( (Unit!35840) )
))
(declare-fun lt!486644 () Unit!35839)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!131 (array!70422 array!70424 (_ BitVec 32) (_ BitVec 32) V!40817 V!40817 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35839)

(assert (=> b!1090531 (= lt!486644 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!131 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4077 (array!70422 array!70424 (_ BitVec 32) (_ BitVec 32) V!40817 V!40817 (_ BitVec 32) Int) ListLongMap!15137)

(assert (=> b!1090531 (= lt!486645 (getCurrentListMapNoExtraKeys!4077 lt!486638 lt!486641 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2213 (Int (_ BitVec 64)) V!40817)

(assert (=> b!1090531 (= lt!486641 (array!70425 (store (arr!33882 _values!874) i!650 (ValueCellFull!12674 (dynLambda!2213 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34419 _values!874)))))

(assert (=> b!1090531 (= lt!486639 (getCurrentListMapNoExtraKeys!4077 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090531 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!486646 () Unit!35839)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70422 (_ BitVec 64) (_ BitVec 32)) Unit!35839)

(assert (=> b!1090531 (= lt!486646 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1090532 () Bool)

(declare-fun res!727620 () Bool)

(declare-fun e!622883 () Bool)

(assert (=> b!1090532 (=> (not res!727620) (not e!622883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090532 (= res!727620 (validKeyInArray!0 k!904))))

(declare-fun b!1090533 () Bool)

(declare-fun e!622886 () Bool)

(declare-fun tp_is_empty!26767 () Bool)

(assert (=> b!1090533 (= e!622886 tp_is_empty!26767)))

(declare-fun b!1090534 () Bool)

(declare-fun res!727624 () Bool)

(assert (=> b!1090534 (=> (not res!727624) (not e!622883))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70422 (_ BitVec 32)) Bool)

(assert (=> b!1090534 (= res!727624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090535 () Bool)

(assert (=> b!1090535 (= e!622882 true)))

(assert (=> b!1090535 (= (-!862 lt!486640 k!904) lt!486643)))

(declare-fun lt!486637 () Unit!35839)

(declare-fun addRemoveCommutativeForDiffKeys!90 (ListLongMap!15137 (_ BitVec 64) V!40817 (_ BitVec 64)) Unit!35839)

(assert (=> b!1090535 (= lt!486637 (addRemoveCommutativeForDiffKeys!90 lt!486639 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1090536 () Bool)

(declare-fun e!622887 () Bool)

(assert (=> b!1090536 (= e!622887 tp_is_empty!26767)))

(declare-fun mapNonEmpty!41905 () Bool)

(declare-fun tp!80145 () Bool)

(assert (=> mapNonEmpty!41905 (= mapRes!41905 (and tp!80145 e!622887))))

(declare-fun mapRest!41905 () (Array (_ BitVec 32) ValueCell!12674))

(declare-fun mapKey!41905 () (_ BitVec 32))

(declare-fun mapValue!41905 () ValueCell!12674)

(assert (=> mapNonEmpty!41905 (= (arr!33882 _values!874) (store mapRest!41905 mapKey!41905 mapValue!41905))))

(declare-fun b!1090538 () Bool)

(declare-fun res!727615 () Bool)

(assert (=> b!1090538 (=> (not res!727615) (not e!622883))))

(assert (=> b!1090538 (= res!727615 (= (select (arr!33881 _keys!1070) i!650) k!904))))

(declare-fun b!1090539 () Bool)

(assert (=> b!1090539 (= e!622883 e!622888)))

(declare-fun res!727616 () Bool)

(assert (=> b!1090539 (=> (not res!727616) (not e!622888))))

(assert (=> b!1090539 (= res!727616 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486638 mask!1414))))

(assert (=> b!1090539 (= lt!486638 (array!70423 (store (arr!33881 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34418 _keys!1070)))))

(declare-fun b!1090540 () Bool)

(declare-fun e!622885 () Bool)

(assert (=> b!1090540 (= e!622885 (and e!622886 mapRes!41905))))

(declare-fun condMapEmpty!41905 () Bool)

(declare-fun mapDefault!41905 () ValueCell!12674)

