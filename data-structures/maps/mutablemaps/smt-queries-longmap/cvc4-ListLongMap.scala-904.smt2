; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20536 () Bool)

(assert start!20536)

(declare-fun b_free!5183 () Bool)

(declare-fun b_next!5183 () Bool)

(assert (=> start!20536 (= b_free!5183 (not b_next!5183))))

(declare-fun tp!18581 () Bool)

(declare-fun b_and!11947 () Bool)

(assert (=> start!20536 (= tp!18581 b_and!11947)))

(declare-fun b!203887 () Bool)

(declare-fun res!98119 () Bool)

(declare-fun e!133453 () Bool)

(assert (=> b!203887 (=> (not res!98119) (not e!133453))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203887 (= res!98119 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!8627 () Bool)

(declare-fun mapRes!8627 () Bool)

(assert (=> mapIsEmpty!8627 mapRes!8627))

(declare-fun b!203888 () Bool)

(declare-fun res!98122 () Bool)

(assert (=> b!203888 (=> (not res!98122) (not e!133453))))

(declare-datatypes ((array!9296 0))(
  ( (array!9297 (arr!4398 (Array (_ BitVec 32) (_ BitVec 64))) (size!4723 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9296)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9296 (_ BitVec 32)) Bool)

(assert (=> b!203888 (= res!98122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapNonEmpty!8627 () Bool)

(declare-fun tp!18580 () Bool)

(declare-fun e!133454 () Bool)

(assert (=> mapNonEmpty!8627 (= mapRes!8627 (and tp!18580 e!133454))))

(declare-datatypes ((V!6365 0))(
  ( (V!6366 (val!2564 Int)) )
))
(declare-datatypes ((ValueCell!2176 0))(
  ( (ValueCellFull!2176 (v!4530 V!6365)) (EmptyCell!2176) )
))
(declare-fun mapValue!8627 () ValueCell!2176)

(declare-fun mapRest!8627 () (Array (_ BitVec 32) ValueCell!2176))

(declare-datatypes ((array!9298 0))(
  ( (array!9299 (arr!4399 (Array (_ BitVec 32) ValueCell!2176)) (size!4724 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9298)

(declare-fun mapKey!8627 () (_ BitVec 32))

(assert (=> mapNonEmpty!8627 (= (arr!4399 _values!649) (store mapRest!8627 mapKey!8627 mapValue!8627))))

(declare-fun res!98123 () Bool)

(assert (=> start!20536 (=> (not res!98123) (not e!133453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20536 (= res!98123 (validMask!0 mask!1149))))

(assert (=> start!20536 e!133453))

(declare-fun e!133456 () Bool)

(declare-fun array_inv!2895 (array!9298) Bool)

(assert (=> start!20536 (and (array_inv!2895 _values!649) e!133456)))

(assert (=> start!20536 true))

(declare-fun tp_is_empty!5039 () Bool)

(assert (=> start!20536 tp_is_empty!5039))

(declare-fun array_inv!2896 (array!9296) Bool)

(assert (=> start!20536 (array_inv!2896 _keys!825)))

(assert (=> start!20536 tp!18581))

(declare-fun b!203889 () Bool)

(declare-fun res!98117 () Bool)

(assert (=> b!203889 (=> (not res!98117) (not e!133453))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203889 (= res!98117 (= (select (arr!4398 _keys!825) i!601) k!843))))

(declare-fun b!203890 () Bool)

(declare-fun res!98125 () Bool)

(assert (=> b!203890 (=> (not res!98125) (not e!133453))))

(declare-datatypes ((List!2808 0))(
  ( (Nil!2805) (Cons!2804 (h!3446 (_ BitVec 64)) (t!7747 List!2808)) )
))
(declare-fun arrayNoDuplicates!0 (array!9296 (_ BitVec 32) List!2808) Bool)

(assert (=> b!203890 (= res!98125 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2805))))

(declare-fun b!203891 () Bool)

(declare-fun e!133452 () Bool)

(declare-fun e!133455 () Bool)

(assert (=> b!203891 (= e!133452 e!133455)))

(declare-fun res!98124 () Bool)

(assert (=> b!203891 (=> res!98124 e!133455)))

(assert (=> b!203891 (= res!98124 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3884 0))(
  ( (tuple2!3885 (_1!1952 (_ BitVec 64)) (_2!1952 V!6365)) )
))
(declare-datatypes ((List!2809 0))(
  ( (Nil!2806) (Cons!2805 (h!3447 tuple2!3884) (t!7748 List!2809)) )
))
(declare-datatypes ((ListLongMap!2811 0))(
  ( (ListLongMap!2812 (toList!1421 List!2809)) )
))
(declare-fun lt!103137 () ListLongMap!2811)

(declare-fun lt!103133 () ListLongMap!2811)

(assert (=> b!203891 (= lt!103137 lt!103133)))

(declare-fun lt!103130 () ListLongMap!2811)

(declare-fun lt!103140 () tuple2!3884)

(declare-fun +!438 (ListLongMap!2811 tuple2!3884) ListLongMap!2811)

(assert (=> b!203891 (= lt!103133 (+!438 lt!103130 lt!103140))))

(declare-fun lt!103134 () ListLongMap!2811)

(declare-fun lt!103138 () ListLongMap!2811)

(assert (=> b!203891 (= lt!103134 lt!103138)))

(declare-fun lt!103141 () ListLongMap!2811)

(assert (=> b!203891 (= lt!103138 (+!438 lt!103141 lt!103140))))

(declare-fun lt!103132 () ListLongMap!2811)

(assert (=> b!203891 (= lt!103137 (+!438 lt!103132 lt!103140))))

(declare-fun zeroValue!615 () V!6365)

(assert (=> b!203891 (= lt!103140 (tuple2!3885 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203892 () Bool)

(declare-fun res!98118 () Bool)

(assert (=> b!203892 (=> (not res!98118) (not e!133453))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203892 (= res!98118 (and (= (size!4724 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4723 _keys!825) (size!4724 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203893 () Bool)

(assert (=> b!203893 (= e!133454 tp_is_empty!5039)))

(declare-fun b!203894 () Bool)

(assert (=> b!203894 (= e!133453 (not e!133452))))

(declare-fun res!98120 () Bool)

(assert (=> b!203894 (=> res!98120 e!133452)))

(assert (=> b!203894 (= res!98120 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6365)

(declare-fun getCurrentListMap!990 (array!9296 array!9298 (_ BitVec 32) (_ BitVec 32) V!6365 V!6365 (_ BitVec 32) Int) ListLongMap!2811)

(assert (=> b!203894 (= lt!103134 (getCurrentListMap!990 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103139 () array!9298)

(assert (=> b!203894 (= lt!103137 (getCurrentListMap!990 _keys!825 lt!103139 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203894 (and (= lt!103132 lt!103130) (= lt!103130 lt!103132))))

(declare-fun lt!103136 () tuple2!3884)

(assert (=> b!203894 (= lt!103130 (+!438 lt!103141 lt!103136))))

(declare-fun v!520 () V!6365)

(assert (=> b!203894 (= lt!103136 (tuple2!3885 k!843 v!520))))

(declare-datatypes ((Unit!6177 0))(
  ( (Unit!6178) )
))
(declare-fun lt!103135 () Unit!6177)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!103 (array!9296 array!9298 (_ BitVec 32) (_ BitVec 32) V!6365 V!6365 (_ BitVec 32) (_ BitVec 64) V!6365 (_ BitVec 32) Int) Unit!6177)

(assert (=> b!203894 (= lt!103135 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!103 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!361 (array!9296 array!9298 (_ BitVec 32) (_ BitVec 32) V!6365 V!6365 (_ BitVec 32) Int) ListLongMap!2811)

(assert (=> b!203894 (= lt!103132 (getCurrentListMapNoExtraKeys!361 _keys!825 lt!103139 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203894 (= lt!103139 (array!9299 (store (arr!4399 _values!649) i!601 (ValueCellFull!2176 v!520)) (size!4724 _values!649)))))

(assert (=> b!203894 (= lt!103141 (getCurrentListMapNoExtraKeys!361 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203895 () Bool)

(declare-fun e!133450 () Bool)

(assert (=> b!203895 (= e!133456 (and e!133450 mapRes!8627))))

(declare-fun condMapEmpty!8627 () Bool)

(declare-fun mapDefault!8627 () ValueCell!2176)

