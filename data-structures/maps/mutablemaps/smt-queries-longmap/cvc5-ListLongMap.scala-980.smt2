; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21190 () Bool)

(assert start!21190)

(declare-fun b_free!5629 () Bool)

(declare-fun b_next!5629 () Bool)

(assert (=> start!21190 (= b_free!5629 (not b_next!5629))))

(declare-fun tp!19958 () Bool)

(declare-fun b_and!12513 () Bool)

(assert (=> start!21190 (= tp!19958 b_and!12513)))

(declare-fun mapNonEmpty!9335 () Bool)

(declare-fun mapRes!9335 () Bool)

(declare-fun tp!19957 () Bool)

(declare-fun e!138715 () Bool)

(assert (=> mapNonEmpty!9335 (= mapRes!9335 (and tp!19957 e!138715))))

(declare-fun mapKey!9335 () (_ BitVec 32))

(declare-datatypes ((V!6969 0))(
  ( (V!6970 (val!2790 Int)) )
))
(declare-datatypes ((ValueCell!2402 0))(
  ( (ValueCellFull!2402 (v!4796 V!6969)) (EmptyCell!2402) )
))
(declare-fun mapRest!9335 () (Array (_ BitVec 32) ValueCell!2402))

(declare-datatypes ((array!10186 0))(
  ( (array!10187 (arr!4833 (Array (_ BitVec 32) ValueCell!2402)) (size!5158 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10186)

(declare-fun mapValue!9335 () ValueCell!2402)

(assert (=> mapNonEmpty!9335 (= (arr!4833 _values!649) (store mapRest!9335 mapKey!9335 mapValue!9335))))

(declare-fun res!104368 () Bool)

(declare-fun e!138718 () Bool)

(assert (=> start!21190 (=> (not res!104368) (not e!138718))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21190 (= res!104368 (validMask!0 mask!1149))))

(assert (=> start!21190 e!138718))

(declare-fun e!138719 () Bool)

(declare-fun array_inv!3187 (array!10186) Bool)

(assert (=> start!21190 (and (array_inv!3187 _values!649) e!138719)))

(assert (=> start!21190 true))

(declare-fun tp_is_empty!5491 () Bool)

(assert (=> start!21190 tp_is_empty!5491))

(declare-datatypes ((array!10188 0))(
  ( (array!10189 (arr!4834 (Array (_ BitVec 32) (_ BitVec 64))) (size!5159 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10188)

(declare-fun array_inv!3188 (array!10188) Bool)

(assert (=> start!21190 (array_inv!3188 _keys!825)))

(assert (=> start!21190 tp!19958))

(declare-fun b!213252 () Bool)

(declare-fun e!138713 () Bool)

(assert (=> b!213252 (= e!138713 tp_is_empty!5491)))

(declare-fun b!213253 () Bool)

(declare-fun res!104371 () Bool)

(assert (=> b!213253 (=> (not res!104371) (not e!138718))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!213253 (= res!104371 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5159 _keys!825))))))

(declare-fun b!213254 () Bool)

(declare-fun res!104375 () Bool)

(assert (=> b!213254 (=> (not res!104375) (not e!138718))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!213254 (= res!104375 (= (select (arr!4834 _keys!825) i!601) k!843))))

(declare-fun e!138716 () Bool)

(declare-fun b!213255 () Bool)

(declare-datatypes ((tuple2!4222 0))(
  ( (tuple2!4223 (_1!2121 (_ BitVec 64)) (_2!2121 V!6969)) )
))
(declare-datatypes ((List!3132 0))(
  ( (Nil!3129) (Cons!3128 (h!3770 tuple2!4222) (t!8091 List!3132)) )
))
(declare-datatypes ((ListLongMap!3149 0))(
  ( (ListLongMap!3150 (toList!1590 List!3132)) )
))
(declare-fun lt!110199 () ListLongMap!3149)

(declare-fun lt!110204 () ListLongMap!3149)

(declare-fun lt!110197 () tuple2!4222)

(declare-fun +!583 (ListLongMap!3149 tuple2!4222) ListLongMap!3149)

(assert (=> b!213255 (= e!138716 (= (+!583 lt!110199 lt!110197) lt!110204))))

(declare-fun lt!110205 () ListLongMap!3149)

(declare-fun lt!110196 () ListLongMap!3149)

(assert (=> b!213255 (= lt!110205 (+!583 lt!110196 lt!110197))))

(declare-fun minValue!615 () V!6969)

(declare-fun lt!110200 () ListLongMap!3149)

(declare-fun v!520 () V!6969)

(declare-datatypes ((Unit!6465 0))(
  ( (Unit!6466) )
))
(declare-fun lt!110201 () Unit!6465)

(declare-fun addCommutativeForDiffKeys!205 (ListLongMap!3149 (_ BitVec 64) V!6969 (_ BitVec 64) V!6969) Unit!6465)

(assert (=> b!213255 (= lt!110201 (addCommutativeForDiffKeys!205 lt!110200 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!213256 () Bool)

(declare-fun res!104369 () Bool)

(assert (=> b!213256 (=> (not res!104369) (not e!138718))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!213256 (= res!104369 (and (= (size!5158 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5159 _keys!825) (size!5158 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!213257 () Bool)

(declare-fun e!138717 () Bool)

(assert (=> b!213257 (= e!138717 e!138716)))

(declare-fun res!104370 () Bool)

(assert (=> b!213257 (=> res!104370 e!138716)))

(assert (=> b!213257 (= res!104370 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!213257 (= lt!110199 lt!110196)))

(declare-fun lt!110207 () tuple2!4222)

(assert (=> b!213257 (= lt!110196 (+!583 lt!110200 lt!110207))))

(assert (=> b!213257 (= lt!110204 lt!110205)))

(declare-fun lt!110202 () ListLongMap!3149)

(assert (=> b!213257 (= lt!110205 (+!583 lt!110202 lt!110207))))

(declare-fun lt!110206 () ListLongMap!3149)

(assert (=> b!213257 (= lt!110204 (+!583 lt!110206 lt!110207))))

(assert (=> b!213257 (= lt!110207 (tuple2!4223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun mapIsEmpty!9335 () Bool)

(assert (=> mapIsEmpty!9335 mapRes!9335))

(declare-fun b!213258 () Bool)

(declare-fun res!104372 () Bool)

(assert (=> b!213258 (=> (not res!104372) (not e!138718))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213258 (= res!104372 (validKeyInArray!0 k!843))))

(declare-fun b!213259 () Bool)

(assert (=> b!213259 (= e!138715 tp_is_empty!5491)))

(declare-fun b!213260 () Bool)

(declare-fun res!104373 () Bool)

(assert (=> b!213260 (=> (not res!104373) (not e!138718))))

(declare-datatypes ((List!3133 0))(
  ( (Nil!3130) (Cons!3129 (h!3771 (_ BitVec 64)) (t!8092 List!3133)) )
))
(declare-fun arrayNoDuplicates!0 (array!10188 (_ BitVec 32) List!3133) Bool)

(assert (=> b!213260 (= res!104373 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3130))))

(declare-fun b!213261 () Bool)

(assert (=> b!213261 (= e!138718 (not e!138717))))

(declare-fun res!104374 () Bool)

(assert (=> b!213261 (=> res!104374 e!138717)))

(assert (=> b!213261 (= res!104374 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6969)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1113 (array!10188 array!10186 (_ BitVec 32) (_ BitVec 32) V!6969 V!6969 (_ BitVec 32) Int) ListLongMap!3149)

(assert (=> b!213261 (= lt!110199 (getCurrentListMap!1113 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110203 () array!10186)

(assert (=> b!213261 (= lt!110204 (getCurrentListMap!1113 _keys!825 lt!110203 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213261 (and (= lt!110206 lt!110202) (= lt!110202 lt!110206))))

(assert (=> b!213261 (= lt!110202 (+!583 lt!110200 lt!110197))))

(assert (=> b!213261 (= lt!110197 (tuple2!4223 k!843 v!520))))

(declare-fun lt!110198 () Unit!6465)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!230 (array!10188 array!10186 (_ BitVec 32) (_ BitVec 32) V!6969 V!6969 (_ BitVec 32) (_ BitVec 64) V!6969 (_ BitVec 32) Int) Unit!6465)

(assert (=> b!213261 (= lt!110198 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!230 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!512 (array!10188 array!10186 (_ BitVec 32) (_ BitVec 32) V!6969 V!6969 (_ BitVec 32) Int) ListLongMap!3149)

(assert (=> b!213261 (= lt!110206 (getCurrentListMapNoExtraKeys!512 _keys!825 lt!110203 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213261 (= lt!110203 (array!10187 (store (arr!4833 _values!649) i!601 (ValueCellFull!2402 v!520)) (size!5158 _values!649)))))

(assert (=> b!213261 (= lt!110200 (getCurrentListMapNoExtraKeys!512 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213262 () Bool)

(assert (=> b!213262 (= e!138719 (and e!138713 mapRes!9335))))

(declare-fun condMapEmpty!9335 () Bool)

(declare-fun mapDefault!9335 () ValueCell!2402)

