; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20490 () Bool)

(assert start!20490)

(declare-fun b_free!5137 () Bool)

(declare-fun b_next!5137 () Bool)

(assert (=> start!20490 (= b_free!5137 (not b_next!5137))))

(declare-fun tp!18442 () Bool)

(declare-fun b_and!11901 () Bool)

(assert (=> start!20490 (= tp!18442 b_and!11901)))

(declare-fun mapNonEmpty!8558 () Bool)

(declare-fun mapRes!8558 () Bool)

(declare-fun tp!18443 () Bool)

(declare-fun e!132968 () Bool)

(assert (=> mapNonEmpty!8558 (= mapRes!8558 (and tp!18443 e!132968))))

(declare-datatypes ((V!6305 0))(
  ( (V!6306 (val!2541 Int)) )
))
(declare-datatypes ((ValueCell!2153 0))(
  ( (ValueCellFull!2153 (v!4507 V!6305)) (EmptyCell!2153) )
))
(declare-fun mapValue!8558 () ValueCell!2153)

(declare-datatypes ((array!9210 0))(
  ( (array!9211 (arr!4355 (Array (_ BitVec 32) ValueCell!2153)) (size!4680 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9210)

(declare-fun mapRest!8558 () (Array (_ BitVec 32) ValueCell!2153))

(declare-fun mapKey!8558 () (_ BitVec 32))

(assert (=> mapNonEmpty!8558 (= (arr!4355 _values!649) (store mapRest!8558 mapKey!8558 mapValue!8558))))

(declare-fun b!203059 () Bool)

(declare-fun res!97501 () Bool)

(declare-fun e!132970 () Bool)

(assert (=> b!203059 (=> (not res!97501) (not e!132970))))

(declare-datatypes ((array!9212 0))(
  ( (array!9213 (arr!4356 (Array (_ BitVec 32) (_ BitVec 64))) (size!4681 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9212)

(declare-datatypes ((List!2778 0))(
  ( (Nil!2775) (Cons!2774 (h!3416 (_ BitVec 64)) (t!7717 List!2778)) )
))
(declare-fun arrayNoDuplicates!0 (array!9212 (_ BitVec 32) List!2778) Bool)

(assert (=> b!203059 (= res!97501 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2775))))

(declare-fun b!203060 () Bool)

(declare-fun e!132967 () Bool)

(declare-fun e!132973 () Bool)

(assert (=> b!203060 (= e!132967 e!132973)))

(declare-fun res!97497 () Bool)

(assert (=> b!203060 (=> res!97497 e!132973)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!203060 (= res!97497 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3850 0))(
  ( (tuple2!3851 (_1!1935 (_ BitVec 64)) (_2!1935 V!6305)) )
))
(declare-datatypes ((List!2779 0))(
  ( (Nil!2776) (Cons!2775 (h!3417 tuple2!3850) (t!7718 List!2779)) )
))
(declare-datatypes ((ListLongMap!2777 0))(
  ( (ListLongMap!2778 (toList!1404 List!2779)) )
))
(declare-fun lt!102303 () ListLongMap!2777)

(declare-fun lt!102311 () ListLongMap!2777)

(assert (=> b!203060 (= lt!102303 lt!102311)))

(declare-fun lt!102307 () ListLongMap!2777)

(declare-fun lt!102310 () tuple2!3850)

(declare-fun +!421 (ListLongMap!2777 tuple2!3850) ListLongMap!2777)

(assert (=> b!203060 (= lt!102311 (+!421 lt!102307 lt!102310))))

(declare-fun lt!102309 () ListLongMap!2777)

(declare-fun lt!102308 () ListLongMap!2777)

(assert (=> b!203060 (= lt!102309 lt!102308)))

(declare-fun lt!102302 () ListLongMap!2777)

(assert (=> b!203060 (= lt!102308 (+!421 lt!102302 lt!102310))))

(declare-fun lt!102313 () ListLongMap!2777)

(assert (=> b!203060 (= lt!102303 (+!421 lt!102313 lt!102310))))

(declare-fun zeroValue!615 () V!6305)

(assert (=> b!203060 (= lt!102310 (tuple2!3851 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203061 () Bool)

(declare-fun res!97504 () Bool)

(assert (=> b!203061 (=> (not res!97504) (not e!132970))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9212 (_ BitVec 32)) Bool)

(assert (=> b!203061 (= res!97504 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203062 () Bool)

(declare-fun res!97500 () Bool)

(assert (=> b!203062 (=> (not res!97500) (not e!132970))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203062 (= res!97500 (= (select (arr!4356 _keys!825) i!601) k!843))))

(declare-fun res!97503 () Bool)

(assert (=> start!20490 (=> (not res!97503) (not e!132970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20490 (= res!97503 (validMask!0 mask!1149))))

(assert (=> start!20490 e!132970))

(declare-fun e!132969 () Bool)

(declare-fun array_inv!2869 (array!9210) Bool)

(assert (=> start!20490 (and (array_inv!2869 _values!649) e!132969)))

(assert (=> start!20490 true))

(declare-fun tp_is_empty!4993 () Bool)

(assert (=> start!20490 tp_is_empty!4993))

(declare-fun array_inv!2870 (array!9212) Bool)

(assert (=> start!20490 (array_inv!2870 _keys!825)))

(assert (=> start!20490 tp!18442))

(declare-fun mapIsEmpty!8558 () Bool)

(assert (=> mapIsEmpty!8558 mapRes!8558))

(declare-fun b!203063 () Bool)

(declare-fun res!97499 () Bool)

(assert (=> b!203063 (=> (not res!97499) (not e!132970))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203063 (= res!97499 (and (= (size!4680 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4681 _keys!825) (size!4680 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203064 () Bool)

(assert (=> b!203064 (= e!132970 (not e!132967))))

(declare-fun res!97502 () Bool)

(assert (=> b!203064 (=> res!97502 e!132967)))

(assert (=> b!203064 (= res!97502 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6305)

(declare-fun getCurrentListMap!976 (array!9212 array!9210 (_ BitVec 32) (_ BitVec 32) V!6305 V!6305 (_ BitVec 32) Int) ListLongMap!2777)

(assert (=> b!203064 (= lt!102309 (getCurrentListMap!976 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102312 () array!9210)

(assert (=> b!203064 (= lt!102303 (getCurrentListMap!976 _keys!825 lt!102312 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203064 (and (= lt!102313 lt!102307) (= lt!102307 lt!102313))))

(declare-fun lt!102304 () tuple2!3850)

(assert (=> b!203064 (= lt!102307 (+!421 lt!102302 lt!102304))))

(declare-fun v!520 () V!6305)

(assert (=> b!203064 (= lt!102304 (tuple2!3851 k!843 v!520))))

(declare-datatypes ((Unit!6143 0))(
  ( (Unit!6144) )
))
(declare-fun lt!102305 () Unit!6143)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!89 (array!9212 array!9210 (_ BitVec 32) (_ BitVec 32) V!6305 V!6305 (_ BitVec 32) (_ BitVec 64) V!6305 (_ BitVec 32) Int) Unit!6143)

(assert (=> b!203064 (= lt!102305 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!89 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!347 (array!9212 array!9210 (_ BitVec 32) (_ BitVec 32) V!6305 V!6305 (_ BitVec 32) Int) ListLongMap!2777)

(assert (=> b!203064 (= lt!102313 (getCurrentListMapNoExtraKeys!347 _keys!825 lt!102312 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203064 (= lt!102312 (array!9211 (store (arr!4355 _values!649) i!601 (ValueCellFull!2153 v!520)) (size!4680 _values!649)))))

(assert (=> b!203064 (= lt!102302 (getCurrentListMapNoExtraKeys!347 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203065 () Bool)

(declare-fun e!132971 () Bool)

(assert (=> b!203065 (= e!132969 (and e!132971 mapRes!8558))))

(declare-fun condMapEmpty!8558 () Bool)

(declare-fun mapDefault!8558 () ValueCell!2153)

