; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20656 () Bool)

(assert start!20656)

(declare-fun b_free!5303 () Bool)

(declare-fun b_next!5303 () Bool)

(assert (=> start!20656 (= b_free!5303 (not b_next!5303))))

(declare-fun tp!18940 () Bool)

(declare-fun b_and!12067 () Bool)

(assert (=> start!20656 (= tp!18940 b_and!12067)))

(declare-fun res!99747 () Bool)

(declare-fun e!134713 () Bool)

(assert (=> start!20656 (=> (not res!99747) (not e!134713))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20656 (= res!99747 (validMask!0 mask!1149))))

(assert (=> start!20656 e!134713))

(declare-datatypes ((V!6525 0))(
  ( (V!6526 (val!2624 Int)) )
))
(declare-datatypes ((ValueCell!2236 0))(
  ( (ValueCellFull!2236 (v!4590 V!6525)) (EmptyCell!2236) )
))
(declare-datatypes ((array!9528 0))(
  ( (array!9529 (arr!4514 (Array (_ BitVec 32) ValueCell!2236)) (size!4839 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9528)

(declare-fun e!134716 () Bool)

(declare-fun array_inv!2973 (array!9528) Bool)

(assert (=> start!20656 (and (array_inv!2973 _values!649) e!134716)))

(assert (=> start!20656 true))

(declare-fun tp_is_empty!5159 () Bool)

(assert (=> start!20656 tp_is_empty!5159))

(declare-datatypes ((array!9530 0))(
  ( (array!9531 (arr!4515 (Array (_ BitVec 32) (_ BitVec 64))) (size!4840 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9530)

(declare-fun array_inv!2974 (array!9530) Bool)

(assert (=> start!20656 (array_inv!2974 _keys!825)))

(assert (=> start!20656 tp!18940))

(declare-fun b!206056 () Bool)

(declare-fun res!99753 () Bool)

(assert (=> b!206056 (=> (not res!99753) (not e!134713))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!206056 (= res!99753 (and (= (size!4839 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4840 _keys!825) (size!4839 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!206057 () Bool)

(declare-fun e!134715 () Bool)

(assert (=> b!206057 (= e!134713 (not e!134715))))

(declare-fun res!99746 () Bool)

(assert (=> b!206057 (=> res!99746 e!134715)))

(assert (=> b!206057 (= res!99746 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3980 0))(
  ( (tuple2!3981 (_1!2000 (_ BitVec 64)) (_2!2000 V!6525)) )
))
(declare-datatypes ((List!2896 0))(
  ( (Nil!2893) (Cons!2892 (h!3534 tuple2!3980) (t!7835 List!2896)) )
))
(declare-datatypes ((ListLongMap!2907 0))(
  ( (ListLongMap!2908 (toList!1469 List!2896)) )
))
(declare-fun lt!105261 () ListLongMap!2907)

(declare-fun zeroValue!615 () V!6525)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6525)

(declare-fun getCurrentListMap!1033 (array!9530 array!9528 (_ BitVec 32) (_ BitVec 32) V!6525 V!6525 (_ BitVec 32) Int) ListLongMap!2907)

(assert (=> b!206057 (= lt!105261 (getCurrentListMap!1033 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105263 () ListLongMap!2907)

(declare-fun lt!105259 () array!9528)

(assert (=> b!206057 (= lt!105263 (getCurrentListMap!1033 _keys!825 lt!105259 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!105257 () ListLongMap!2907)

(declare-fun lt!105260 () ListLongMap!2907)

(assert (=> b!206057 (and (= lt!105257 lt!105260) (= lt!105260 lt!105257))))

(declare-fun lt!105256 () ListLongMap!2907)

(declare-fun lt!105265 () tuple2!3980)

(declare-fun +!486 (ListLongMap!2907 tuple2!3980) ListLongMap!2907)

(assert (=> b!206057 (= lt!105260 (+!486 lt!105256 lt!105265))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6525)

(assert (=> b!206057 (= lt!105265 (tuple2!3981 k!843 v!520))))

(declare-datatypes ((Unit!6267 0))(
  ( (Unit!6268) )
))
(declare-fun lt!105264 () Unit!6267)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!146 (array!9530 array!9528 (_ BitVec 32) (_ BitVec 32) V!6525 V!6525 (_ BitVec 32) (_ BitVec 64) V!6525 (_ BitVec 32) Int) Unit!6267)

(assert (=> b!206057 (= lt!105264 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!146 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!404 (array!9530 array!9528 (_ BitVec 32) (_ BitVec 32) V!6525 V!6525 (_ BitVec 32) Int) ListLongMap!2907)

(assert (=> b!206057 (= lt!105257 (getCurrentListMapNoExtraKeys!404 _keys!825 lt!105259 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!206057 (= lt!105259 (array!9529 (store (arr!4514 _values!649) i!601 (ValueCellFull!2236 v!520)) (size!4839 _values!649)))))

(assert (=> b!206057 (= lt!105256 (getCurrentListMapNoExtraKeys!404 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!206058 () Bool)

(declare-fun e!134714 () Bool)

(assert (=> b!206058 (= e!134714 tp_is_empty!5159)))

(declare-fun b!206059 () Bool)

(declare-fun res!99751 () Bool)

(assert (=> b!206059 (=> (not res!99751) (not e!134713))))

(assert (=> b!206059 (= res!99751 (= (select (arr!4515 _keys!825) i!601) k!843))))

(declare-fun b!206060 () Bool)

(declare-fun e!134710 () Bool)

(assert (=> b!206060 (= e!134715 e!134710)))

(declare-fun res!99749 () Bool)

(assert (=> b!206060 (=> res!99749 e!134710)))

(assert (=> b!206060 (= res!99749 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!105254 () ListLongMap!2907)

(assert (=> b!206060 (= lt!105261 lt!105254)))

(declare-fun lt!105262 () tuple2!3980)

(assert (=> b!206060 (= lt!105254 (+!486 lt!105256 lt!105262))))

(declare-fun lt!105258 () ListLongMap!2907)

(assert (=> b!206060 (= lt!105263 lt!105258)))

(assert (=> b!206060 (= lt!105258 (+!486 lt!105260 lt!105262))))

(assert (=> b!206060 (= lt!105263 (+!486 lt!105257 lt!105262))))

(assert (=> b!206060 (= lt!105262 (tuple2!3981 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206061 () Bool)

(declare-fun res!99752 () Bool)

(assert (=> b!206061 (=> (not res!99752) (not e!134713))))

(declare-datatypes ((List!2897 0))(
  ( (Nil!2894) (Cons!2893 (h!3535 (_ BitVec 64)) (t!7836 List!2897)) )
))
(declare-fun arrayNoDuplicates!0 (array!9530 (_ BitVec 32) List!2897) Bool)

(assert (=> b!206061 (= res!99752 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2894))))

(declare-fun mapNonEmpty!8807 () Bool)

(declare-fun mapRes!8807 () Bool)

(declare-fun tp!18941 () Bool)

(assert (=> mapNonEmpty!8807 (= mapRes!8807 (and tp!18941 e!134714))))

(declare-fun mapKey!8807 () (_ BitVec 32))

(declare-fun mapValue!8807 () ValueCell!2236)

(declare-fun mapRest!8807 () (Array (_ BitVec 32) ValueCell!2236))

(assert (=> mapNonEmpty!8807 (= (arr!4514 _values!649) (store mapRest!8807 mapKey!8807 mapValue!8807))))

(declare-fun b!206062 () Bool)

(assert (=> b!206062 (= e!134710 true)))

(assert (=> b!206062 (= lt!105258 (+!486 lt!105254 lt!105265))))

(declare-fun lt!105255 () Unit!6267)

(declare-fun addCommutativeForDiffKeys!184 (ListLongMap!2907 (_ BitVec 64) V!6525 (_ BitVec 64) V!6525) Unit!6267)

(assert (=> b!206062 (= lt!105255 (addCommutativeForDiffKeys!184 lt!105256 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!206063 () Bool)

(declare-fun e!134711 () Bool)

(assert (=> b!206063 (= e!134716 (and e!134711 mapRes!8807))))

(declare-fun condMapEmpty!8807 () Bool)

(declare-fun mapDefault!8807 () ValueCell!2236)

