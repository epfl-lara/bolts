; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20520 () Bool)

(assert start!20520)

(declare-fun b_free!5167 () Bool)

(declare-fun b_next!5167 () Bool)

(assert (=> start!20520 (= b_free!5167 (not b_next!5167))))

(declare-fun tp!18532 () Bool)

(declare-fun b_and!11931 () Bool)

(assert (=> start!20520 (= tp!18532 b_and!11931)))

(declare-fun b!203599 () Bool)

(declare-fun e!133283 () Bool)

(declare-fun e!133282 () Bool)

(assert (=> b!203599 (= e!133283 (not e!133282))))

(declare-fun res!97904 () Bool)

(assert (=> b!203599 (=> res!97904 e!133282)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203599 (= res!97904 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6345 0))(
  ( (V!6346 (val!2556 Int)) )
))
(declare-datatypes ((ValueCell!2168 0))(
  ( (ValueCellFull!2168 (v!4522 V!6345)) (EmptyCell!2168) )
))
(declare-datatypes ((array!9268 0))(
  ( (array!9269 (arr!4384 (Array (_ BitVec 32) ValueCell!2168)) (size!4709 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9268)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((tuple2!3874 0))(
  ( (tuple2!3875 (_1!1947 (_ BitVec 64)) (_2!1947 V!6345)) )
))
(declare-datatypes ((List!2800 0))(
  ( (Nil!2797) (Cons!2796 (h!3438 tuple2!3874) (t!7739 List!2800)) )
))
(declare-datatypes ((ListLongMap!2801 0))(
  ( (ListLongMap!2802 (toList!1416 List!2800)) )
))
(declare-fun lt!102847 () ListLongMap!2801)

(declare-fun zeroValue!615 () V!6345)

(declare-datatypes ((array!9270 0))(
  ( (array!9271 (arr!4385 (Array (_ BitVec 32) (_ BitVec 64))) (size!4710 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9270)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6345)

(declare-fun getCurrentListMap!986 (array!9270 array!9268 (_ BitVec 32) (_ BitVec 32) V!6345 V!6345 (_ BitVec 32) Int) ListLongMap!2801)

(assert (=> b!203599 (= lt!102847 (getCurrentListMap!986 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102845 () ListLongMap!2801)

(declare-fun lt!102849 () array!9268)

(assert (=> b!203599 (= lt!102845 (getCurrentListMap!986 _keys!825 lt!102849 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102850 () ListLongMap!2801)

(declare-fun lt!102853 () ListLongMap!2801)

(assert (=> b!203599 (and (= lt!102850 lt!102853) (= lt!102853 lt!102850))))

(declare-fun lt!102846 () ListLongMap!2801)

(declare-fun lt!102848 () tuple2!3874)

(declare-fun +!433 (ListLongMap!2801 tuple2!3874) ListLongMap!2801)

(assert (=> b!203599 (= lt!102853 (+!433 lt!102846 lt!102848))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6345)

(assert (=> b!203599 (= lt!102848 (tuple2!3875 k!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6167 0))(
  ( (Unit!6168) )
))
(declare-fun lt!102852 () Unit!6167)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!99 (array!9270 array!9268 (_ BitVec 32) (_ BitVec 32) V!6345 V!6345 (_ BitVec 32) (_ BitVec 64) V!6345 (_ BitVec 32) Int) Unit!6167)

(assert (=> b!203599 (= lt!102852 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!99 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!357 (array!9270 array!9268 (_ BitVec 32) (_ BitVec 32) V!6345 V!6345 (_ BitVec 32) Int) ListLongMap!2801)

(assert (=> b!203599 (= lt!102850 (getCurrentListMapNoExtraKeys!357 _keys!825 lt!102849 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203599 (= lt!102849 (array!9269 (store (arr!4384 _values!649) i!601 (ValueCellFull!2168 v!520)) (size!4709 _values!649)))))

(assert (=> b!203599 (= lt!102846 (getCurrentListMapNoExtraKeys!357 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!203600 () Bool)

(declare-fun e!133284 () Bool)

(declare-fun e!133288 () Bool)

(declare-fun mapRes!8603 () Bool)

(assert (=> b!203600 (= e!133284 (and e!133288 mapRes!8603))))

(declare-fun condMapEmpty!8603 () Bool)

(declare-fun mapDefault!8603 () ValueCell!2168)

