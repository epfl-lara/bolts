; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20502 () Bool)

(assert start!20502)

(declare-fun b_free!5149 () Bool)

(declare-fun b_next!5149 () Bool)

(assert (=> start!20502 (= b_free!5149 (not b_next!5149))))

(declare-fun tp!18478 () Bool)

(declare-fun b_and!11913 () Bool)

(assert (=> start!20502 (= tp!18478 b_and!11913)))

(declare-fun res!97666 () Bool)

(declare-fun e!133098 () Bool)

(assert (=> start!20502 (=> (not res!97666) (not e!133098))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20502 (= res!97666 (validMask!0 mask!1149))))

(assert (=> start!20502 e!133098))

(declare-datatypes ((V!6321 0))(
  ( (V!6322 (val!2547 Int)) )
))
(declare-datatypes ((ValueCell!2159 0))(
  ( (ValueCellFull!2159 (v!4513 V!6321)) (EmptyCell!2159) )
))
(declare-datatypes ((array!9232 0))(
  ( (array!9233 (arr!4366 (Array (_ BitVec 32) ValueCell!2159)) (size!4691 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9232)

(declare-fun e!133093 () Bool)

(declare-fun array_inv!2877 (array!9232) Bool)

(assert (=> start!20502 (and (array_inv!2877 _values!649) e!133093)))

(assert (=> start!20502 true))

(declare-fun tp_is_empty!5005 () Bool)

(assert (=> start!20502 tp_is_empty!5005))

(declare-datatypes ((array!9234 0))(
  ( (array!9235 (arr!4367 (Array (_ BitVec 32) (_ BitVec 64))) (size!4692 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9234)

(declare-fun array_inv!2878 (array!9234) Bool)

(assert (=> start!20502 (array_inv!2878 _keys!825)))

(assert (=> start!20502 tp!18478))

(declare-fun b!203275 () Bool)

(declare-fun res!97661 () Bool)

(assert (=> b!203275 (=> (not res!97661) (not e!133098))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203275 (= res!97661 (and (= (size!4691 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4692 _keys!825) (size!4691 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203276 () Bool)

(declare-fun res!97662 () Bool)

(assert (=> b!203276 (=> (not res!97662) (not e!133098))))

(declare-datatypes ((List!2786 0))(
  ( (Nil!2783) (Cons!2782 (h!3424 (_ BitVec 64)) (t!7725 List!2786)) )
))
(declare-fun arrayNoDuplicates!0 (array!9234 (_ BitVec 32) List!2786) Bool)

(assert (=> b!203276 (= res!97662 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2783))))

(declare-fun b!203277 () Bool)

(declare-fun res!97665 () Bool)

(assert (=> b!203277 (=> (not res!97665) (not e!133098))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203277 (= res!97665 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4692 _keys!825))))))

(declare-fun b!203278 () Bool)

(declare-fun res!97658 () Bool)

(assert (=> b!203278 (=> (not res!97658) (not e!133098))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203278 (= res!97658 (validKeyInArray!0 k!843))))

(declare-fun b!203279 () Bool)

(declare-fun e!133094 () Bool)

(assert (=> b!203279 (= e!133094 tp_is_empty!5005)))

(declare-fun b!203280 () Bool)

(declare-fun res!97660 () Bool)

(assert (=> b!203280 (=> (not res!97660) (not e!133098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9234 (_ BitVec 32)) Bool)

(assert (=> b!203280 (= res!97660 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203281 () Bool)

(declare-fun e!133099 () Bool)

(assert (=> b!203281 (= e!133098 (not e!133099))))

(declare-fun res!97659 () Bool)

(assert (=> b!203281 (=> res!97659 e!133099)))

(assert (=> b!203281 (= res!97659 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3860 0))(
  ( (tuple2!3861 (_1!1940 (_ BitVec 64)) (_2!1940 V!6321)) )
))
(declare-datatypes ((List!2787 0))(
  ( (Nil!2784) (Cons!2783 (h!3425 tuple2!3860) (t!7726 List!2787)) )
))
(declare-datatypes ((ListLongMap!2787 0))(
  ( (ListLongMap!2788 (toList!1409 List!2787)) )
))
(declare-fun lt!102528 () ListLongMap!2787)

(declare-fun zeroValue!615 () V!6321)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6321)

(declare-fun getCurrentListMap!979 (array!9234 array!9232 (_ BitVec 32) (_ BitVec 32) V!6321 V!6321 (_ BitVec 32) Int) ListLongMap!2787)

(assert (=> b!203281 (= lt!102528 (getCurrentListMap!979 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102521 () ListLongMap!2787)

(declare-fun lt!102518 () array!9232)

(assert (=> b!203281 (= lt!102521 (getCurrentListMap!979 _keys!825 lt!102518 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102523 () ListLongMap!2787)

(declare-fun lt!102527 () ListLongMap!2787)

(assert (=> b!203281 (and (= lt!102523 lt!102527) (= lt!102527 lt!102523))))

(declare-fun lt!102525 () ListLongMap!2787)

(declare-fun lt!102522 () tuple2!3860)

(declare-fun +!426 (ListLongMap!2787 tuple2!3860) ListLongMap!2787)

(assert (=> b!203281 (= lt!102527 (+!426 lt!102525 lt!102522))))

(declare-fun v!520 () V!6321)

(assert (=> b!203281 (= lt!102522 (tuple2!3861 k!843 v!520))))

(declare-datatypes ((Unit!6153 0))(
  ( (Unit!6154) )
))
(declare-fun lt!102524 () Unit!6153)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!92 (array!9234 array!9232 (_ BitVec 32) (_ BitVec 32) V!6321 V!6321 (_ BitVec 32) (_ BitVec 64) V!6321 (_ BitVec 32) Int) Unit!6153)

(assert (=> b!203281 (= lt!102524 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!92 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!350 (array!9234 array!9232 (_ BitVec 32) (_ BitVec 32) V!6321 V!6321 (_ BitVec 32) Int) ListLongMap!2787)

(assert (=> b!203281 (= lt!102523 (getCurrentListMapNoExtraKeys!350 _keys!825 lt!102518 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203281 (= lt!102518 (array!9233 (store (arr!4366 _values!649) i!601 (ValueCellFull!2159 v!520)) (size!4691 _values!649)))))

(assert (=> b!203281 (= lt!102525 (getCurrentListMapNoExtraKeys!350 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203282 () Bool)

(declare-fun e!133097 () Bool)

(assert (=> b!203282 (= e!133099 e!133097)))

(declare-fun res!97664 () Bool)

(assert (=> b!203282 (=> res!97664 e!133097)))

(assert (=> b!203282 (= res!97664 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!102519 () ListLongMap!2787)

(assert (=> b!203282 (= lt!102521 lt!102519)))

(declare-fun lt!102520 () tuple2!3860)

(assert (=> b!203282 (= lt!102519 (+!426 lt!102527 lt!102520))))

(declare-fun lt!102526 () ListLongMap!2787)

(assert (=> b!203282 (= lt!102528 lt!102526)))

(assert (=> b!203282 (= lt!102526 (+!426 lt!102525 lt!102520))))

(assert (=> b!203282 (= lt!102521 (+!426 lt!102523 lt!102520))))

(assert (=> b!203282 (= lt!102520 (tuple2!3861 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapNonEmpty!8576 () Bool)

(declare-fun mapRes!8576 () Bool)

(declare-fun tp!18479 () Bool)

(declare-fun e!133096 () Bool)

(assert (=> mapNonEmpty!8576 (= mapRes!8576 (and tp!18479 e!133096))))

(declare-fun mapRest!8576 () (Array (_ BitVec 32) ValueCell!2159))

(declare-fun mapKey!8576 () (_ BitVec 32))

(declare-fun mapValue!8576 () ValueCell!2159)

(assert (=> mapNonEmpty!8576 (= (arr!4366 _values!649) (store mapRest!8576 mapKey!8576 mapValue!8576))))

(declare-fun b!203283 () Bool)

(assert (=> b!203283 (= e!133096 tp_is_empty!5005)))

(declare-fun b!203284 () Bool)

(assert (=> b!203284 (= e!133093 (and e!133094 mapRes!8576))))

(declare-fun condMapEmpty!8576 () Bool)

(declare-fun mapDefault!8576 () ValueCell!2159)

