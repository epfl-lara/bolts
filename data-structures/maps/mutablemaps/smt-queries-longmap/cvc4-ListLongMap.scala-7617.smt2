; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96062 () Bool)

(assert start!96062)

(declare-fun b_free!22679 () Bool)

(declare-fun b_next!22679 () Bool)

(assert (=> start!96062 (= b_free!22679 (not b_next!22679))))

(declare-fun tp!79887 () Bool)

(declare-fun b_and!36051 () Bool)

(assert (=> start!96062 (= tp!79887 b_and!36051)))

(declare-fun b!1088628 () Bool)

(declare-fun e!621850 () Bool)

(declare-fun tp_is_empty!26681 () Bool)

(assert (=> b!1088628 (= e!621850 tp_is_empty!26681)))

(declare-fun b!1088629 () Bool)

(declare-fun res!726197 () Bool)

(declare-fun e!621852 () Bool)

(assert (=> b!1088629 (=> (not res!726197) (not e!621852))))

(declare-datatypes ((array!70254 0))(
  ( (array!70255 (arr!33797 (Array (_ BitVec 32) (_ BitVec 64))) (size!34334 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70254)

(declare-datatypes ((List!23723 0))(
  ( (Nil!23720) (Cons!23719 (h!24928 (_ BitVec 64)) (t!33467 List!23723)) )
))
(declare-fun arrayNoDuplicates!0 (array!70254 (_ BitVec 32) List!23723) Bool)

(assert (=> b!1088629 (= res!726197 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23720))))

(declare-fun b!1088630 () Bool)

(declare-fun res!726189 () Bool)

(assert (=> b!1088630 (=> (not res!726189) (not e!621852))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088630 (= res!726189 (= (select (arr!33797 _keys!1070) i!650) k!904))))

(declare-fun b!1088631 () Bool)

(declare-fun res!726187 () Bool)

(declare-fun e!621851 () Bool)

(assert (=> b!1088631 (=> (not res!726187) (not e!621851))))

(declare-fun lt!484992 () array!70254)

(assert (=> b!1088631 (= res!726187 (arrayNoDuplicates!0 lt!484992 #b00000000000000000000000000000000 Nil!23720))))

(declare-fun b!1088632 () Bool)

(declare-fun res!726188 () Bool)

(assert (=> b!1088632 (=> (not res!726188) (not e!621852))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40701 0))(
  ( (V!40702 (val!13397 Int)) )
))
(declare-datatypes ((ValueCell!12631 0))(
  ( (ValueCellFull!12631 (v!16019 V!40701)) (EmptyCell!12631) )
))
(declare-datatypes ((array!70256 0))(
  ( (array!70257 (arr!33798 (Array (_ BitVec 32) ValueCell!12631)) (size!34335 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70256)

(assert (=> b!1088632 (= res!726188 (and (= (size!34335 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34334 _keys!1070) (size!34335 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1088633 () Bool)

(declare-fun e!621855 () Bool)

(declare-fun e!621856 () Bool)

(assert (=> b!1088633 (= e!621855 e!621856)))

(declare-fun res!726194 () Bool)

(assert (=> b!1088633 (=> res!726194 e!621856)))

(assert (=> b!1088633 (= res!726194 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-datatypes ((tuple2!17084 0))(
  ( (tuple2!17085 (_1!8552 (_ BitVec 64)) (_2!8552 V!40701)) )
))
(declare-datatypes ((List!23724 0))(
  ( (Nil!23721) (Cons!23720 (h!24929 tuple2!17084) (t!33468 List!23724)) )
))
(declare-datatypes ((ListLongMap!15065 0))(
  ( (ListLongMap!15066 (toList!7548 List!23724)) )
))
(declare-fun lt!484987 () ListLongMap!15065)

(declare-fun lt!484995 () ListLongMap!15065)

(assert (=> b!1088633 (= lt!484987 lt!484995)))

(declare-fun lt!484988 () ListLongMap!15065)

(declare-fun lt!484989 () tuple2!17084)

(declare-fun +!3267 (ListLongMap!15065 tuple2!17084) ListLongMap!15065)

(assert (=> b!1088633 (= lt!484995 (+!3267 lt!484988 lt!484989))))

(declare-fun lt!484990 () ListLongMap!15065)

(declare-fun lt!484991 () ListLongMap!15065)

(assert (=> b!1088633 (= lt!484990 lt!484991)))

(declare-fun lt!484994 () ListLongMap!15065)

(assert (=> b!1088633 (= lt!484991 (+!3267 lt!484994 lt!484989))))

(declare-fun lt!484997 () ListLongMap!15065)

(assert (=> b!1088633 (= lt!484987 (+!3267 lt!484997 lt!484989))))

(declare-fun zeroValue!831 () V!40701)

(assert (=> b!1088633 (= lt!484989 (tuple2!17085 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088634 () Bool)

(declare-fun res!726196 () Bool)

(assert (=> b!1088634 (=> (not res!726196) (not e!621852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70254 (_ BitVec 32)) Bool)

(assert (=> b!1088634 (= res!726196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1088635 () Bool)

(declare-fun res!726193 () Bool)

(assert (=> b!1088635 (=> (not res!726193) (not e!621852))))

(assert (=> b!1088635 (= res!726193 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34334 _keys!1070))))))

(declare-fun b!1088636 () Bool)

(declare-fun res!726190 () Bool)

(assert (=> b!1088636 (=> (not res!726190) (not e!621852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088636 (= res!726190 (validKeyInArray!0 k!904))))

(declare-fun mapIsEmpty!41776 () Bool)

(declare-fun mapRes!41776 () Bool)

(assert (=> mapIsEmpty!41776 mapRes!41776))

(declare-fun mapNonEmpty!41776 () Bool)

(declare-fun tp!79886 () Bool)

(assert (=> mapNonEmpty!41776 (= mapRes!41776 (and tp!79886 e!621850))))

(declare-fun mapKey!41776 () (_ BitVec 32))

(declare-fun mapRest!41776 () (Array (_ BitVec 32) ValueCell!12631))

(declare-fun mapValue!41776 () ValueCell!12631)

(assert (=> mapNonEmpty!41776 (= (arr!33798 _values!874) (store mapRest!41776 mapKey!41776 mapValue!41776))))

(declare-fun res!726192 () Bool)

(assert (=> start!96062 (=> (not res!726192) (not e!621852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96062 (= res!726192 (validMask!0 mask!1414))))

(assert (=> start!96062 e!621852))

(assert (=> start!96062 tp!79887))

(assert (=> start!96062 true))

(assert (=> start!96062 tp_is_empty!26681))

(declare-fun array_inv!25932 (array!70254) Bool)

(assert (=> start!96062 (array_inv!25932 _keys!1070)))

(declare-fun e!621849 () Bool)

(declare-fun array_inv!25933 (array!70256) Bool)

(assert (=> start!96062 (and (array_inv!25933 _values!874) e!621849)))

(declare-fun b!1088637 () Bool)

(assert (=> b!1088637 (= e!621851 (not e!621855))))

(declare-fun res!726191 () Bool)

(assert (=> b!1088637 (=> res!726191 e!621855)))

(assert (=> b!1088637 (= res!726191 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40701)

(declare-fun getCurrentListMap!4297 (array!70254 array!70256 (_ BitVec 32) (_ BitVec 32) V!40701 V!40701 (_ BitVec 32) Int) ListLongMap!15065)

(assert (=> b!1088637 (= lt!484990 (getCurrentListMap!4297 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484993 () array!70256)

(assert (=> b!1088637 (= lt!484987 (getCurrentListMap!4297 lt!484992 lt!484993 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1088637 (and (= lt!484997 lt!484988) (= lt!484988 lt!484997))))

(declare-fun -!828 (ListLongMap!15065 (_ BitVec 64)) ListLongMap!15065)

(assert (=> b!1088637 (= lt!484988 (-!828 lt!484994 k!904))))

(declare-datatypes ((Unit!35771 0))(
  ( (Unit!35772) )
))
(declare-fun lt!484985 () Unit!35771)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!103 (array!70254 array!70256 (_ BitVec 32) (_ BitVec 32) V!40701 V!40701 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35771)

(assert (=> b!1088637 (= lt!484985 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!103 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4049 (array!70254 array!70256 (_ BitVec 32) (_ BitVec 32) V!40701 V!40701 (_ BitVec 32) Int) ListLongMap!15065)

(assert (=> b!1088637 (= lt!484997 (getCurrentListMapNoExtraKeys!4049 lt!484992 lt!484993 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2185 (Int (_ BitVec 64)) V!40701)

(assert (=> b!1088637 (= lt!484993 (array!70257 (store (arr!33798 _values!874) i!650 (ValueCellFull!12631 (dynLambda!2185 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34335 _values!874)))))

(assert (=> b!1088637 (= lt!484994 (getCurrentListMapNoExtraKeys!4049 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1088637 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484986 () Unit!35771)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70254 (_ BitVec 64) (_ BitVec 32)) Unit!35771)

(assert (=> b!1088637 (= lt!484986 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1088638 () Bool)

(declare-fun e!621854 () Bool)

(assert (=> b!1088638 (= e!621854 tp_is_empty!26681)))

(declare-fun b!1088639 () Bool)

(assert (=> b!1088639 (= e!621852 e!621851)))

(declare-fun res!726195 () Bool)

(assert (=> b!1088639 (=> (not res!726195) (not e!621851))))

(assert (=> b!1088639 (= res!726195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484992 mask!1414))))

(assert (=> b!1088639 (= lt!484992 (array!70255 (store (arr!33797 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34334 _keys!1070)))))

(declare-fun b!1088640 () Bool)

(assert (=> b!1088640 (= e!621849 (and e!621854 mapRes!41776))))

(declare-fun condMapEmpty!41776 () Bool)

(declare-fun mapDefault!41776 () ValueCell!12631)

