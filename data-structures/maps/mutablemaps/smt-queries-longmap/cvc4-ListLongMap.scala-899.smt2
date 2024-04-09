; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20506 () Bool)

(assert start!20506)

(declare-fun b_free!5153 () Bool)

(declare-fun b_next!5153 () Bool)

(assert (=> start!20506 (= b_free!5153 (not b_next!5153))))

(declare-fun tp!18490 () Bool)

(declare-fun b_and!11917 () Bool)

(assert (=> start!20506 (= tp!18490 b_and!11917)))

(declare-fun b!203348 () Bool)

(declare-fun res!97713 () Bool)

(declare-fun e!133140 () Bool)

(assert (=> b!203348 (=> (not res!97713) (not e!133140))))

(declare-datatypes ((array!9240 0))(
  ( (array!9241 (arr!4370 (Array (_ BitVec 32) (_ BitVec 64))) (size!4695 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9240)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9240 (_ BitVec 32)) Bool)

(assert (=> b!203348 (= res!97713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203349 () Bool)

(declare-fun e!133135 () Bool)

(assert (=> b!203349 (= e!133140 (not e!133135))))

(declare-fun res!97720 () Bool)

(assert (=> b!203349 (=> res!97720 e!133135)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203349 (= res!97720 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6325 0))(
  ( (V!6326 (val!2549 Int)) )
))
(declare-datatypes ((tuple2!3864 0))(
  ( (tuple2!3865 (_1!1942 (_ BitVec 64)) (_2!1942 V!6325)) )
))
(declare-datatypes ((List!2790 0))(
  ( (Nil!2787) (Cons!2786 (h!3428 tuple2!3864) (t!7729 List!2790)) )
))
(declare-datatypes ((ListLongMap!2791 0))(
  ( (ListLongMap!2792 (toList!1411 List!2790)) )
))
(declare-fun lt!102590 () ListLongMap!2791)

(declare-datatypes ((ValueCell!2161 0))(
  ( (ValueCellFull!2161 (v!4515 V!6325)) (EmptyCell!2161) )
))
(declare-datatypes ((array!9242 0))(
  ( (array!9243 (arr!4371 (Array (_ BitVec 32) ValueCell!2161)) (size!4696 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9242)

(declare-fun zeroValue!615 () V!6325)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6325)

(declare-fun getCurrentListMap!981 (array!9240 array!9242 (_ BitVec 32) (_ BitVec 32) V!6325 V!6325 (_ BitVec 32) Int) ListLongMap!2791)

(assert (=> b!203349 (= lt!102590 (getCurrentListMap!981 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102596 () array!9242)

(declare-fun lt!102601 () ListLongMap!2791)

(assert (=> b!203349 (= lt!102601 (getCurrentListMap!981 _keys!825 lt!102596 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102600 () ListLongMap!2791)

(declare-fun lt!102597 () ListLongMap!2791)

(assert (=> b!203349 (and (= lt!102600 lt!102597) (= lt!102597 lt!102600))))

(declare-fun lt!102598 () ListLongMap!2791)

(declare-fun lt!102599 () tuple2!3864)

(declare-fun +!428 (ListLongMap!2791 tuple2!3864) ListLongMap!2791)

(assert (=> b!203349 (= lt!102597 (+!428 lt!102598 lt!102599))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6325)

(assert (=> b!203349 (= lt!102599 (tuple2!3865 k!843 v!520))))

(declare-datatypes ((Unit!6157 0))(
  ( (Unit!6158) )
))
(declare-fun lt!102595 () Unit!6157)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!94 (array!9240 array!9242 (_ BitVec 32) (_ BitVec 32) V!6325 V!6325 (_ BitVec 32) (_ BitVec 64) V!6325 (_ BitVec 32) Int) Unit!6157)

(assert (=> b!203349 (= lt!102595 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!94 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!352 (array!9240 array!9242 (_ BitVec 32) (_ BitVec 32) V!6325 V!6325 (_ BitVec 32) Int) ListLongMap!2791)

(assert (=> b!203349 (= lt!102600 (getCurrentListMapNoExtraKeys!352 _keys!825 lt!102596 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203349 (= lt!102596 (array!9243 (store (arr!4371 _values!649) i!601 (ValueCellFull!2161 v!520)) (size!4696 _values!649)))))

(assert (=> b!203349 (= lt!102598 (getCurrentListMapNoExtraKeys!352 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8582 () Bool)

(declare-fun mapRes!8582 () Bool)

(assert (=> mapIsEmpty!8582 mapRes!8582))

(declare-fun b!203350 () Bool)

(declare-fun res!97714 () Bool)

(assert (=> b!203350 (=> (not res!97714) (not e!133140))))

(declare-datatypes ((List!2791 0))(
  ( (Nil!2788) (Cons!2787 (h!3429 (_ BitVec 64)) (t!7730 List!2791)) )
))
(declare-fun arrayNoDuplicates!0 (array!9240 (_ BitVec 32) List!2791) Bool)

(assert (=> b!203350 (= res!97714 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2788))))

(declare-fun b!203351 () Bool)

(declare-fun e!133141 () Bool)

(declare-fun e!133136 () Bool)

(assert (=> b!203351 (= e!133141 (and e!133136 mapRes!8582))))

(declare-fun condMapEmpty!8582 () Bool)

(declare-fun mapDefault!8582 () ValueCell!2161)

