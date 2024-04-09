; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20392 () Bool)

(assert start!20392)

(declare-fun b_free!5039 () Bool)

(declare-fun b_next!5039 () Bool)

(assert (=> start!20392 (= b_free!5039 (not b_next!5039))))

(declare-fun tp!18148 () Bool)

(declare-fun b_and!11803 () Bool)

(assert (=> start!20392 (= tp!18148 b_and!11803)))

(declare-fun b!201286 () Bool)

(declare-fun e!131943 () Bool)

(declare-fun e!131938 () Bool)

(assert (=> b!201286 (= e!131943 (not e!131938))))

(declare-fun res!96170 () Bool)

(assert (=> b!201286 (=> res!96170 e!131938)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!201286 (= res!96170 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6173 0))(
  ( (V!6174 (val!2492 Int)) )
))
(declare-datatypes ((ValueCell!2104 0))(
  ( (ValueCellFull!2104 (v!4458 V!6173)) (EmptyCell!2104) )
))
(declare-datatypes ((array!9018 0))(
  ( (array!9019 (arr!4259 (Array (_ BitVec 32) ValueCell!2104)) (size!4584 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9018)

(declare-datatypes ((tuple2!3768 0))(
  ( (tuple2!3769 (_1!1894 (_ BitVec 64)) (_2!1894 V!6173)) )
))
(declare-datatypes ((List!2707 0))(
  ( (Nil!2704) (Cons!2703 (h!3345 tuple2!3768) (t!7646 List!2707)) )
))
(declare-datatypes ((ListLongMap!2695 0))(
  ( (ListLongMap!2696 (toList!1363 List!2707)) )
))
(declare-fun lt!100261 () ListLongMap!2695)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6173)

(declare-datatypes ((array!9020 0))(
  ( (array!9021 (arr!4260 (Array (_ BitVec 32) (_ BitVec 64))) (size!4585 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9020)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6173)

(declare-fun getCurrentListMap!947 (array!9020 array!9018 (_ BitVec 32) (_ BitVec 32) V!6173 V!6173 (_ BitVec 32) Int) ListLongMap!2695)

(assert (=> b!201286 (= lt!100261 (getCurrentListMap!947 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100254 () array!9018)

(declare-fun lt!100247 () ListLongMap!2695)

(assert (=> b!201286 (= lt!100247 (getCurrentListMap!947 _keys!825 lt!100254 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100256 () ListLongMap!2695)

(declare-fun lt!100260 () ListLongMap!2695)

(assert (=> b!201286 (and (= lt!100256 lt!100260) (= lt!100260 lt!100256))))

(declare-fun lt!100250 () ListLongMap!2695)

(declare-fun lt!100251 () tuple2!3768)

(declare-fun +!380 (ListLongMap!2695 tuple2!3768) ListLongMap!2695)

(assert (=> b!201286 (= lt!100260 (+!380 lt!100250 lt!100251))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6173)

(assert (=> b!201286 (= lt!100251 (tuple2!3769 k!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6067 0))(
  ( (Unit!6068) )
))
(declare-fun lt!100249 () Unit!6067)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!60 (array!9020 array!9018 (_ BitVec 32) (_ BitVec 32) V!6173 V!6173 (_ BitVec 32) (_ BitVec 64) V!6173 (_ BitVec 32) Int) Unit!6067)

(assert (=> b!201286 (= lt!100249 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!60 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!318 (array!9020 array!9018 (_ BitVec 32) (_ BitVec 32) V!6173 V!6173 (_ BitVec 32) Int) ListLongMap!2695)

(assert (=> b!201286 (= lt!100256 (getCurrentListMapNoExtraKeys!318 _keys!825 lt!100254 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201286 (= lt!100254 (array!9019 (store (arr!4259 _values!649) i!601 (ValueCellFull!2104 v!520)) (size!4584 _values!649)))))

(assert (=> b!201286 (= lt!100250 (getCurrentListMapNoExtraKeys!318 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201287 () Bool)

(declare-fun e!131939 () Bool)

(assert (=> b!201287 (= e!131938 e!131939)))

(declare-fun res!96166 () Bool)

(assert (=> b!201287 (=> res!96166 e!131939)))

(assert (=> b!201287 (= res!96166 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!100255 () ListLongMap!2695)

(declare-fun lt!100258 () ListLongMap!2695)

(assert (=> b!201287 (= lt!100255 lt!100258)))

(declare-fun lt!100252 () ListLongMap!2695)

(assert (=> b!201287 (= lt!100258 (+!380 lt!100252 lt!100251))))

(declare-fun lt!100259 () Unit!6067)

(declare-fun addCommutativeForDiffKeys!101 (ListLongMap!2695 (_ BitVec 64) V!6173 (_ BitVec 64) V!6173) Unit!6067)

(assert (=> b!201287 (= lt!100259 (addCommutativeForDiffKeys!101 lt!100250 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!100253 () tuple2!3768)

(assert (=> b!201287 (= lt!100247 (+!380 lt!100255 lt!100253))))

(declare-fun lt!100246 () tuple2!3768)

(assert (=> b!201287 (= lt!100255 (+!380 lt!100260 lt!100246))))

(declare-fun lt!100257 () ListLongMap!2695)

(assert (=> b!201287 (= lt!100261 lt!100257)))

(assert (=> b!201287 (= lt!100257 (+!380 lt!100252 lt!100253))))

(assert (=> b!201287 (= lt!100252 (+!380 lt!100250 lt!100246))))

(assert (=> b!201287 (= lt!100247 (+!380 (+!380 lt!100256 lt!100246) lt!100253))))

(assert (=> b!201287 (= lt!100253 (tuple2!3769 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!201287 (= lt!100246 (tuple2!3769 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!201288 () Bool)

(declare-fun e!131944 () Bool)

(declare-fun tp_is_empty!4895 () Bool)

(assert (=> b!201288 (= e!131944 tp_is_empty!4895)))

(declare-fun res!96169 () Bool)

(assert (=> start!20392 (=> (not res!96169) (not e!131943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20392 (= res!96169 (validMask!0 mask!1149))))

(assert (=> start!20392 e!131943))

(declare-fun e!131942 () Bool)

(declare-fun array_inv!2799 (array!9018) Bool)

(assert (=> start!20392 (and (array_inv!2799 _values!649) e!131942)))

(assert (=> start!20392 true))

(assert (=> start!20392 tp_is_empty!4895))

(declare-fun array_inv!2800 (array!9020) Bool)

(assert (=> start!20392 (array_inv!2800 _keys!825)))

(assert (=> start!20392 tp!18148))

(declare-fun b!201289 () Bool)

(declare-fun res!96167 () Bool)

(assert (=> b!201289 (=> (not res!96167) (not e!131943))))

(assert (=> b!201289 (= res!96167 (and (= (size!4584 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4585 _keys!825) (size!4584 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201290 () Bool)

(assert (=> b!201290 (= e!131939 (bvsle #b00000000000000000000000000000000 (size!4585 _keys!825)))))

(assert (=> b!201290 (= (+!380 lt!100258 lt!100253) (+!380 lt!100257 lt!100251))))

(declare-fun lt!100248 () Unit!6067)

(assert (=> b!201290 (= lt!100248 (addCommutativeForDiffKeys!101 lt!100252 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201291 () Bool)

(declare-fun res!96172 () Bool)

(assert (=> b!201291 (=> (not res!96172) (not e!131943))))

(assert (=> b!201291 (= res!96172 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4585 _keys!825))))))

(declare-fun b!201292 () Bool)

(declare-fun mapRes!8411 () Bool)

(assert (=> b!201292 (= e!131942 (and e!131944 mapRes!8411))))

(declare-fun condMapEmpty!8411 () Bool)

(declare-fun mapDefault!8411 () ValueCell!2104)

