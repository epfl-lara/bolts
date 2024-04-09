; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20470 () Bool)

(assert start!20470)

(declare-fun b_free!5117 () Bool)

(declare-fun b_next!5117 () Bool)

(assert (=> start!20470 (= b_free!5117 (not b_next!5117))))

(declare-fun tp!18382 () Bool)

(declare-fun b_and!11881 () Bool)

(assert (=> start!20470 (= tp!18382 b_and!11881)))

(declare-fun b!202699 () Bool)

(declare-fun res!97226 () Bool)

(declare-fun e!132762 () Bool)

(assert (=> b!202699 (=> (not res!97226) (not e!132762))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9170 0))(
  ( (array!9171 (arr!4335 (Array (_ BitVec 32) (_ BitVec 64))) (size!4660 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9170)

(assert (=> b!202699 (= res!97226 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4660 _keys!825))))))

(declare-fun b!202700 () Bool)

(declare-fun e!132759 () Bool)

(declare-fun tp_is_empty!4973 () Bool)

(assert (=> b!202700 (= e!132759 tp_is_empty!4973)))

(declare-fun b!202701 () Bool)

(declare-fun res!97231 () Bool)

(assert (=> b!202701 (=> (not res!97231) (not e!132762))))

(declare-datatypes ((List!2763 0))(
  ( (Nil!2760) (Cons!2759 (h!3401 (_ BitVec 64)) (t!7702 List!2763)) )
))
(declare-fun arrayNoDuplicates!0 (array!9170 (_ BitVec 32) List!2763) Bool)

(assert (=> b!202701 (= res!97231 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2760))))

(declare-fun b!202702 () Bool)

(declare-fun res!97233 () Bool)

(assert (=> b!202702 (=> (not res!97233) (not e!132762))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!202702 (= res!97233 (= (select (arr!4335 _keys!825) i!601) k!843))))

(declare-fun mapNonEmpty!8528 () Bool)

(declare-fun mapRes!8528 () Bool)

(declare-fun tp!18383 () Bool)

(assert (=> mapNonEmpty!8528 (= mapRes!8528 (and tp!18383 e!132759))))

(declare-datatypes ((V!6277 0))(
  ( (V!6278 (val!2531 Int)) )
))
(declare-datatypes ((ValueCell!2143 0))(
  ( (ValueCellFull!2143 (v!4497 V!6277)) (EmptyCell!2143) )
))
(declare-datatypes ((array!9172 0))(
  ( (array!9173 (arr!4336 (Array (_ BitVec 32) ValueCell!2143)) (size!4661 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9172)

(declare-fun mapValue!8528 () ValueCell!2143)

(declare-fun mapKey!8528 () (_ BitVec 32))

(declare-fun mapRest!8528 () (Array (_ BitVec 32) ValueCell!2143))

(assert (=> mapNonEmpty!8528 (= (arr!4336 _values!649) (store mapRest!8528 mapKey!8528 mapValue!8528))))

(declare-fun b!202703 () Bool)

(declare-fun e!132758 () Bool)

(assert (=> b!202703 (= e!132758 true)))

(declare-datatypes ((tuple2!3836 0))(
  ( (tuple2!3837 (_1!1928 (_ BitVec 64)) (_2!1928 V!6277)) )
))
(declare-datatypes ((List!2764 0))(
  ( (Nil!2761) (Cons!2760 (h!3402 tuple2!3836) (t!7703 List!2764)) )
))
(declare-datatypes ((ListLongMap!2763 0))(
  ( (ListLongMap!2764 (toList!1397 List!2764)) )
))
(declare-fun lt!101952 () ListLongMap!2763)

(declare-fun lt!101942 () ListLongMap!2763)

(declare-fun lt!101953 () tuple2!3836)

(declare-fun +!414 (ListLongMap!2763 tuple2!3836) ListLongMap!2763)

(assert (=> b!202703 (= lt!101952 (+!414 lt!101942 lt!101953))))

(declare-fun v!520 () V!6277)

(declare-datatypes ((Unit!6129 0))(
  ( (Unit!6130) )
))
(declare-fun lt!101944 () Unit!6129)

(declare-fun zeroValue!615 () V!6277)

(declare-fun lt!101946 () ListLongMap!2763)

(declare-fun addCommutativeForDiffKeys!130 (ListLongMap!2763 (_ BitVec 64) V!6277 (_ BitVec 64) V!6277) Unit!6129)

(assert (=> b!202703 (= lt!101944 (addCommutativeForDiffKeys!130 lt!101946 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202704 () Bool)

(declare-fun e!132761 () Bool)

(assert (=> b!202704 (= e!132762 (not e!132761))))

(declare-fun res!97230 () Bool)

(assert (=> b!202704 (=> res!97230 e!132761)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202704 (= res!97230 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!101948 () ListLongMap!2763)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6277)

(declare-fun getCurrentListMap!971 (array!9170 array!9172 (_ BitVec 32) (_ BitVec 32) V!6277 V!6277 (_ BitVec 32) Int) ListLongMap!2763)

(assert (=> b!202704 (= lt!101948 (getCurrentListMap!971 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101945 () array!9172)

(declare-fun lt!101947 () ListLongMap!2763)

(assert (=> b!202704 (= lt!101947 (getCurrentListMap!971 _keys!825 lt!101945 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101949 () ListLongMap!2763)

(declare-fun lt!101950 () ListLongMap!2763)

(assert (=> b!202704 (and (= lt!101949 lt!101950) (= lt!101950 lt!101949))))

(assert (=> b!202704 (= lt!101950 (+!414 lt!101946 lt!101953))))

(assert (=> b!202704 (= lt!101953 (tuple2!3837 k!843 v!520))))

(declare-fun lt!101951 () Unit!6129)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!84 (array!9170 array!9172 (_ BitVec 32) (_ BitVec 32) V!6277 V!6277 (_ BitVec 32) (_ BitVec 64) V!6277 (_ BitVec 32) Int) Unit!6129)

(assert (=> b!202704 (= lt!101951 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!84 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!342 (array!9170 array!9172 (_ BitVec 32) (_ BitVec 32) V!6277 V!6277 (_ BitVec 32) Int) ListLongMap!2763)

(assert (=> b!202704 (= lt!101949 (getCurrentListMapNoExtraKeys!342 _keys!825 lt!101945 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202704 (= lt!101945 (array!9173 (store (arr!4336 _values!649) i!601 (ValueCellFull!2143 v!520)) (size!4661 _values!649)))))

(assert (=> b!202704 (= lt!101946 (getCurrentListMapNoExtraKeys!342 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202705 () Bool)

(assert (=> b!202705 (= e!132761 e!132758)))

(declare-fun res!97232 () Bool)

(assert (=> b!202705 (=> res!97232 e!132758)))

(assert (=> b!202705 (= res!97232 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!202705 (= lt!101947 lt!101952)))

(declare-fun lt!101943 () tuple2!3836)

(assert (=> b!202705 (= lt!101952 (+!414 lt!101950 lt!101943))))

(assert (=> b!202705 (= lt!101948 lt!101942)))

(assert (=> b!202705 (= lt!101942 (+!414 lt!101946 lt!101943))))

(assert (=> b!202705 (= lt!101947 (+!414 lt!101949 lt!101943))))

(assert (=> b!202705 (= lt!101943 (tuple2!3837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapIsEmpty!8528 () Bool)

(assert (=> mapIsEmpty!8528 mapRes!8528))

(declare-fun b!202706 () Bool)

(declare-fun e!132763 () Bool)

(assert (=> b!202706 (= e!132763 tp_is_empty!4973)))

(declare-fun b!202707 () Bool)

(declare-fun e!132757 () Bool)

(assert (=> b!202707 (= e!132757 (and e!132763 mapRes!8528))))

(declare-fun condMapEmpty!8528 () Bool)

(declare-fun mapDefault!8528 () ValueCell!2143)

