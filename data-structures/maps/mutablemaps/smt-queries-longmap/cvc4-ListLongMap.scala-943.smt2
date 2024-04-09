; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20770 () Bool)

(assert start!20770)

(declare-fun b_free!5417 () Bool)

(declare-fun b_next!5417 () Bool)

(assert (=> start!20770 (= b_free!5417 (not b_next!5417))))

(declare-fun tp!19283 () Bool)

(declare-fun b_and!12181 () Bool)

(assert (=> start!20770 (= tp!19283 b_and!12181)))

(declare-fun res!100999 () Bool)

(declare-fun e!135622 () Bool)

(assert (=> start!20770 (=> (not res!100999) (not e!135622))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20770 (= res!100999 (validMask!0 mask!1149))))

(assert (=> start!20770 e!135622))

(declare-datatypes ((V!6677 0))(
  ( (V!6678 (val!2681 Int)) )
))
(declare-datatypes ((ValueCell!2293 0))(
  ( (ValueCellFull!2293 (v!4647 V!6677)) (EmptyCell!2293) )
))
(declare-datatypes ((array!9750 0))(
  ( (array!9751 (arr!4625 (Array (_ BitVec 32) ValueCell!2293)) (size!4950 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9750)

(declare-fun e!135625 () Bool)

(declare-fun array_inv!3055 (array!9750) Bool)

(assert (=> start!20770 (and (array_inv!3055 _values!649) e!135625)))

(assert (=> start!20770 true))

(declare-fun tp_is_empty!5273 () Bool)

(assert (=> start!20770 tp_is_empty!5273))

(declare-datatypes ((array!9752 0))(
  ( (array!9753 (arr!4626 (Array (_ BitVec 32) (_ BitVec 64))) (size!4951 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9752)

(declare-fun array_inv!3056 (array!9752) Bool)

(assert (=> start!20770 (array_inv!3056 _keys!825)))

(assert (=> start!20770 tp!19283))

(declare-fun b!207822 () Bool)

(declare-fun res!101004 () Bool)

(assert (=> b!207822 (=> (not res!101004) (not e!135622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9752 (_ BitVec 32)) Bool)

(assert (=> b!207822 (= res!101004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!207823 () Bool)

(declare-fun res!101001 () Bool)

(assert (=> b!207823 (=> (not res!101001) (not e!135622))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!207823 (= res!101001 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!8978 () Bool)

(declare-fun mapRes!8978 () Bool)

(declare-fun tp!19282 () Bool)

(declare-fun e!135624 () Bool)

(assert (=> mapNonEmpty!8978 (= mapRes!8978 (and tp!19282 e!135624))))

(declare-fun mapRest!8978 () (Array (_ BitVec 32) ValueCell!2293))

(declare-fun mapKey!8978 () (_ BitVec 32))

(declare-fun mapValue!8978 () ValueCell!2293)

(assert (=> mapNonEmpty!8978 (= (arr!4625 _values!649) (store mapRest!8978 mapKey!8978 mapValue!8978))))

(declare-fun b!207824 () Bool)

(declare-fun res!101000 () Bool)

(assert (=> b!207824 (=> (not res!101000) (not e!135622))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!207824 (= res!101000 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4951 _keys!825))))))

(declare-fun b!207825 () Bool)

(declare-fun res!101005 () Bool)

(assert (=> b!207825 (=> (not res!101005) (not e!135622))))

(declare-datatypes ((List!2980 0))(
  ( (Nil!2977) (Cons!2976 (h!3618 (_ BitVec 64)) (t!7919 List!2980)) )
))
(declare-fun arrayNoDuplicates!0 (array!9752 (_ BitVec 32) List!2980) Bool)

(assert (=> b!207825 (= res!101005 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2977))))

(declare-fun b!207826 () Bool)

(declare-fun e!135621 () Bool)

(assert (=> b!207826 (= e!135621 tp_is_empty!5273)))

(declare-fun b!207827 () Bool)

(declare-fun res!101003 () Bool)

(assert (=> b!207827 (=> (not res!101003) (not e!135622))))

(assert (=> b!207827 (= res!101003 (= (select (arr!4626 _keys!825) i!601) k!843))))

(declare-fun b!207828 () Bool)

(assert (=> b!207828 (= e!135622 (not true))))

(declare-datatypes ((tuple2!4064 0))(
  ( (tuple2!4065 (_1!2042 (_ BitVec 64)) (_2!2042 V!6677)) )
))
(declare-datatypes ((List!2981 0))(
  ( (Nil!2978) (Cons!2977 (h!3619 tuple2!4064) (t!7920 List!2981)) )
))
(declare-datatypes ((ListLongMap!2991 0))(
  ( (ListLongMap!2992 (toList!1511 List!2981)) )
))
(declare-fun lt!106604 () ListLongMap!2991)

(declare-fun zeroValue!615 () V!6677)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6677)

(declare-fun getCurrentListMap!1073 (array!9752 array!9750 (_ BitVec 32) (_ BitVec 32) V!6677 V!6677 (_ BitVec 32) Int) ListLongMap!2991)

(assert (=> b!207828 (= lt!106604 (getCurrentListMap!1073 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106602 () array!9750)

(declare-fun lt!106605 () ListLongMap!2991)

(assert (=> b!207828 (= lt!106605 (getCurrentListMap!1073 _keys!825 lt!106602 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!106603 () ListLongMap!2991)

(declare-fun lt!106601 () ListLongMap!2991)

(assert (=> b!207828 (and (= lt!106603 lt!106601) (= lt!106601 lt!106603))))

(declare-fun lt!106600 () ListLongMap!2991)

(declare-fun v!520 () V!6677)

(declare-fun +!528 (ListLongMap!2991 tuple2!4064) ListLongMap!2991)

(assert (=> b!207828 (= lt!106601 (+!528 lt!106600 (tuple2!4065 k!843 v!520)))))

(declare-datatypes ((Unit!6351 0))(
  ( (Unit!6352) )
))
(declare-fun lt!106606 () Unit!6351)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!186 (array!9752 array!9750 (_ BitVec 32) (_ BitVec 32) V!6677 V!6677 (_ BitVec 32) (_ BitVec 64) V!6677 (_ BitVec 32) Int) Unit!6351)

(assert (=> b!207828 (= lt!106606 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!186 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!444 (array!9752 array!9750 (_ BitVec 32) (_ BitVec 32) V!6677 V!6677 (_ BitVec 32) Int) ListLongMap!2991)

(assert (=> b!207828 (= lt!106603 (getCurrentListMapNoExtraKeys!444 _keys!825 lt!106602 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!207828 (= lt!106602 (array!9751 (store (arr!4625 _values!649) i!601 (ValueCellFull!2293 v!520)) (size!4950 _values!649)))))

(assert (=> b!207828 (= lt!106600 (getCurrentListMapNoExtraKeys!444 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!207829 () Bool)

(assert (=> b!207829 (= e!135625 (and e!135621 mapRes!8978))))

(declare-fun condMapEmpty!8978 () Bool)

(declare-fun mapDefault!8978 () ValueCell!2293)

