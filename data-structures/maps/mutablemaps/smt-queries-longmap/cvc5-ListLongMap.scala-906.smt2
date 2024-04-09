; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20544 () Bool)

(assert start!20544)

(declare-fun b_free!5191 () Bool)

(declare-fun b_next!5191 () Bool)

(assert (=> start!20544 (= b_free!5191 (not b_next!5191))))

(declare-fun tp!18604 () Bool)

(declare-fun b_and!11955 () Bool)

(assert (=> start!20544 (= tp!18604 b_and!11955)))

(declare-fun b!204031 () Bool)

(declare-fun e!133535 () Bool)

(declare-fun tp_is_empty!5047 () Bool)

(assert (=> b!204031 (= e!133535 tp_is_empty!5047)))

(declare-fun res!98231 () Bool)

(declare-fun e!133539 () Bool)

(assert (=> start!20544 (=> (not res!98231) (not e!133539))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20544 (= res!98231 (validMask!0 mask!1149))))

(assert (=> start!20544 e!133539))

(declare-datatypes ((V!6377 0))(
  ( (V!6378 (val!2568 Int)) )
))
(declare-datatypes ((ValueCell!2180 0))(
  ( (ValueCellFull!2180 (v!4534 V!6377)) (EmptyCell!2180) )
))
(declare-datatypes ((array!9312 0))(
  ( (array!9313 (arr!4406 (Array (_ BitVec 32) ValueCell!2180)) (size!4731 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9312)

(declare-fun e!133537 () Bool)

(declare-fun array_inv!2901 (array!9312) Bool)

(assert (=> start!20544 (and (array_inv!2901 _values!649) e!133537)))

(assert (=> start!20544 true))

(assert (=> start!20544 tp_is_empty!5047))

(declare-datatypes ((array!9314 0))(
  ( (array!9315 (arr!4407 (Array (_ BitVec 32) (_ BitVec 64))) (size!4732 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9314)

(declare-fun array_inv!2902 (array!9314) Bool)

(assert (=> start!20544 (array_inv!2902 _keys!825)))

(assert (=> start!20544 tp!18604))

(declare-fun b!204032 () Bool)

(declare-fun e!133536 () Bool)

(assert (=> b!204032 (= e!133539 (not e!133536))))

(declare-fun res!98225 () Bool)

(assert (=> b!204032 (=> res!98225 e!133536)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204032 (= res!98225 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3892 0))(
  ( (tuple2!3893 (_1!1956 (_ BitVec 64)) (_2!1956 V!6377)) )
))
(declare-datatypes ((List!2816 0))(
  ( (Nil!2813) (Cons!2812 (h!3454 tuple2!3892) (t!7755 List!2816)) )
))
(declare-datatypes ((ListLongMap!2819 0))(
  ( (ListLongMap!2820 (toList!1425 List!2816)) )
))
(declare-fun lt!103279 () ListLongMap!2819)

(declare-fun zeroValue!615 () V!6377)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6377)

(declare-fun getCurrentListMap!994 (array!9314 array!9312 (_ BitVec 32) (_ BitVec 32) V!6377 V!6377 (_ BitVec 32) Int) ListLongMap!2819)

(assert (=> b!204032 (= lt!103279 (getCurrentListMap!994 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103282 () array!9312)

(declare-fun lt!103277 () ListLongMap!2819)

(assert (=> b!204032 (= lt!103277 (getCurrentListMap!994 _keys!825 lt!103282 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103285 () ListLongMap!2819)

(declare-fun lt!103280 () ListLongMap!2819)

(assert (=> b!204032 (and (= lt!103285 lt!103280) (= lt!103280 lt!103285))))

(declare-fun lt!103275 () ListLongMap!2819)

(declare-fun lt!103278 () tuple2!3892)

(declare-fun +!442 (ListLongMap!2819 tuple2!3892) ListLongMap!2819)

(assert (=> b!204032 (= lt!103280 (+!442 lt!103275 lt!103278))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6377)

(assert (=> b!204032 (= lt!103278 (tuple2!3893 k!843 v!520))))

(declare-datatypes ((Unit!6185 0))(
  ( (Unit!6186) )
))
(declare-fun lt!103283 () Unit!6185)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!107 (array!9314 array!9312 (_ BitVec 32) (_ BitVec 32) V!6377 V!6377 (_ BitVec 32) (_ BitVec 64) V!6377 (_ BitVec 32) Int) Unit!6185)

(assert (=> b!204032 (= lt!103283 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!107 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!365 (array!9314 array!9312 (_ BitVec 32) (_ BitVec 32) V!6377 V!6377 (_ BitVec 32) Int) ListLongMap!2819)

(assert (=> b!204032 (= lt!103285 (getCurrentListMapNoExtraKeys!365 _keys!825 lt!103282 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204032 (= lt!103282 (array!9313 (store (arr!4406 _values!649) i!601 (ValueCellFull!2180 v!520)) (size!4731 _values!649)))))

(assert (=> b!204032 (= lt!103275 (getCurrentListMapNoExtraKeys!365 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204033 () Bool)

(declare-fun mapRes!8639 () Bool)

(assert (=> b!204033 (= e!133537 (and e!133535 mapRes!8639))))

(declare-fun condMapEmpty!8639 () Bool)

(declare-fun mapDefault!8639 () ValueCell!2180)

