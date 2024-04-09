; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95666 () Bool)

(assert start!95666)

(declare-fun b_free!22283 () Bool)

(declare-fun b_next!22283 () Bool)

(assert (=> start!95666 (= b_free!22283 (not b_next!22283))))

(declare-fun tp!78699 () Bool)

(declare-fun b_and!35279 () Bool)

(assert (=> start!95666 (= tp!78699 b_and!35279)))

(declare-fun b!1080559 () Bool)

(declare-fun res!720276 () Bool)

(declare-fun e!617741 () Bool)

(assert (=> b!1080559 (=> (not res!720276) (not e!617741))))

(declare-datatypes ((array!69476 0))(
  ( (array!69477 (arr!33408 (Array (_ BitVec 32) (_ BitVec 64))) (size!33945 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69476)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69476 (_ BitVec 32)) Bool)

(assert (=> b!1080559 (= res!720276 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080560 () Bool)

(declare-fun res!720284 () Bool)

(assert (=> b!1080560 (=> (not res!720284) (not e!617741))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080560 (= res!720284 (= (select (arr!33408 _keys!1070) i!650) k!904))))

(declare-fun mapNonEmpty!41182 () Bool)

(declare-fun mapRes!41182 () Bool)

(declare-fun tp!78698 () Bool)

(declare-fun e!617743 () Bool)

(assert (=> mapNonEmpty!41182 (= mapRes!41182 (and tp!78698 e!617743))))

(declare-fun mapKey!41182 () (_ BitVec 32))

(declare-datatypes ((V!40173 0))(
  ( (V!40174 (val!13199 Int)) )
))
(declare-datatypes ((ValueCell!12433 0))(
  ( (ValueCellFull!12433 (v!15821 V!40173)) (EmptyCell!12433) )
))
(declare-datatypes ((array!69478 0))(
  ( (array!69479 (arr!33409 (Array (_ BitVec 32) ValueCell!12433)) (size!33946 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69478)

(declare-fun mapRest!41182 () (Array (_ BitVec 32) ValueCell!12433))

(declare-fun mapValue!41182 () ValueCell!12433)

(assert (=> mapNonEmpty!41182 (= (arr!33409 _values!874) (store mapRest!41182 mapKey!41182 mapValue!41182))))

(declare-fun b!1080562 () Bool)

(declare-fun e!617742 () Bool)

(assert (=> b!1080562 (= e!617741 e!617742)))

(declare-fun res!720279 () Bool)

(assert (=> b!1080562 (=> (not res!720279) (not e!617742))))

(declare-fun lt!479038 () array!69476)

(assert (=> b!1080562 (= res!720279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479038 mask!1414))))

(assert (=> b!1080562 (= lt!479038 (array!69477 (store (arr!33408 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33945 _keys!1070)))))

(declare-fun b!1080563 () Bool)

(assert (=> b!1080563 (= e!617742 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16788 0))(
  ( (tuple2!16789 (_1!8404 (_ BitVec 64)) (_2!8404 V!40173)) )
))
(declare-datatypes ((List!23411 0))(
  ( (Nil!23408) (Cons!23407 (h!24616 tuple2!16788) (t!32777 List!23411)) )
))
(declare-datatypes ((ListLongMap!14769 0))(
  ( (ListLongMap!14770 (toList!7400 List!23411)) )
))
(declare-fun lt!479039 () ListLongMap!14769)

(declare-fun minValue!831 () V!40173)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40173)

(declare-fun getCurrentListMapNoExtraKeys!3911 (array!69476 array!69478 (_ BitVec 32) (_ BitVec 32) V!40173 V!40173 (_ BitVec 32) Int) ListLongMap!14769)

(assert (=> b!1080563 (= lt!479039 (getCurrentListMapNoExtraKeys!3911 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080563 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35479 0))(
  ( (Unit!35480) )
))
(declare-fun lt!479037 () Unit!35479)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69476 (_ BitVec 64) (_ BitVec 32)) Unit!35479)

(assert (=> b!1080563 (= lt!479037 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1080564 () Bool)

(declare-fun res!720280 () Bool)

(assert (=> b!1080564 (=> (not res!720280) (not e!617741))))

(declare-datatypes ((List!23412 0))(
  ( (Nil!23409) (Cons!23408 (h!24617 (_ BitVec 64)) (t!32778 List!23412)) )
))
(declare-fun arrayNoDuplicates!0 (array!69476 (_ BitVec 32) List!23412) Bool)

(assert (=> b!1080564 (= res!720280 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23409))))

(declare-fun b!1080565 () Bool)

(declare-fun res!720283 () Bool)

(assert (=> b!1080565 (=> (not res!720283) (not e!617741))))

(assert (=> b!1080565 (= res!720283 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33945 _keys!1070))))))

(declare-fun b!1080566 () Bool)

(declare-fun res!720277 () Bool)

(assert (=> b!1080566 (=> (not res!720277) (not e!617741))))

(assert (=> b!1080566 (= res!720277 (and (= (size!33946 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33945 _keys!1070) (size!33946 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41182 () Bool)

(assert (=> mapIsEmpty!41182 mapRes!41182))

(declare-fun b!1080567 () Bool)

(declare-fun res!720281 () Bool)

(assert (=> b!1080567 (=> (not res!720281) (not e!617741))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080567 (= res!720281 (validKeyInArray!0 k!904))))

(declare-fun b!1080568 () Bool)

(declare-fun tp_is_empty!26285 () Bool)

(assert (=> b!1080568 (= e!617743 tp_is_empty!26285)))

(declare-fun b!1080569 () Bool)

(declare-fun res!720282 () Bool)

(assert (=> b!1080569 (=> (not res!720282) (not e!617742))))

(assert (=> b!1080569 (= res!720282 (arrayNoDuplicates!0 lt!479038 #b00000000000000000000000000000000 Nil!23409))))

(declare-fun b!1080570 () Bool)

(declare-fun e!617739 () Bool)

(assert (=> b!1080570 (= e!617739 tp_is_empty!26285)))

(declare-fun b!1080561 () Bool)

(declare-fun e!617740 () Bool)

(assert (=> b!1080561 (= e!617740 (and e!617739 mapRes!41182))))

(declare-fun condMapEmpty!41182 () Bool)

(declare-fun mapDefault!41182 () ValueCell!12433)

