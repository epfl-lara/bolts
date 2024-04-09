; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20436 () Bool)

(assert start!20436)

(declare-fun b_free!5083 () Bool)

(declare-fun b_next!5083 () Bool)

(assert (=> start!20436 (= b_free!5083 (not b_next!5083))))

(declare-fun tp!18280 () Bool)

(declare-fun b_and!11847 () Bool)

(assert (=> start!20436 (= tp!18280 b_and!11847)))

(declare-fun b!202078 () Bool)

(declare-fun e!132404 () Bool)

(assert (=> b!202078 (= e!132404 true)))

(declare-datatypes ((V!6233 0))(
  ( (V!6234 (val!2514 Int)) )
))
(declare-datatypes ((tuple2!3804 0))(
  ( (tuple2!3805 (_1!1912 (_ BitVec 64)) (_2!1912 V!6233)) )
))
(declare-datatypes ((List!2738 0))(
  ( (Nil!2735) (Cons!2734 (h!3376 tuple2!3804) (t!7677 List!2738)) )
))
(declare-datatypes ((ListLongMap!2731 0))(
  ( (ListLongMap!2732 (toList!1381 List!2738)) )
))
(declare-fun lt!101309 () ListLongMap!2731)

(declare-fun lt!101317 () tuple2!3804)

(declare-fun lt!101303 () ListLongMap!2731)

(declare-fun lt!101315 () tuple2!3804)

(declare-fun +!398 (ListLongMap!2731 tuple2!3804) ListLongMap!2731)

(assert (=> b!202078 (= (+!398 lt!101303 lt!101315) (+!398 lt!101309 lt!101317))))

(declare-fun minValue!615 () V!6233)

(declare-fun v!520 () V!6233)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun lt!101305 () ListLongMap!2731)

(declare-datatypes ((Unit!6103 0))(
  ( (Unit!6104) )
))
(declare-fun lt!101307 () Unit!6103)

(declare-fun addCommutativeForDiffKeys!119 (ListLongMap!2731 (_ BitVec 64) V!6233 (_ BitVec 64) V!6233) Unit!6103)

(assert (=> b!202078 (= lt!101307 (addCommutativeForDiffKeys!119 lt!101305 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!202079 () Bool)

(declare-fun res!96762 () Bool)

(declare-fun e!132406 () Bool)

(assert (=> b!202079 (=> (not res!96762) (not e!132406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202079 (= res!96762 (validKeyInArray!0 k!843))))

(declare-fun b!202080 () Bool)

(declare-fun e!132400 () Bool)

(assert (=> b!202080 (= e!132400 e!132404)))

(declare-fun res!96758 () Bool)

(assert (=> b!202080 (=> res!96758 e!132404)))

(assert (=> b!202080 (= res!96758 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!101316 () ListLongMap!2731)

(assert (=> b!202080 (= lt!101316 lt!101303)))

(assert (=> b!202080 (= lt!101303 (+!398 lt!101305 lt!101317))))

(declare-fun lt!101314 () ListLongMap!2731)

(declare-fun lt!101313 () Unit!6103)

(declare-fun zeroValue!615 () V!6233)

(assert (=> b!202080 (= lt!101313 (addCommutativeForDiffKeys!119 lt!101314 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!101308 () ListLongMap!2731)

(assert (=> b!202080 (= lt!101308 (+!398 lt!101316 lt!101315))))

(declare-fun lt!101306 () ListLongMap!2731)

(declare-fun lt!101312 () tuple2!3804)

(assert (=> b!202080 (= lt!101316 (+!398 lt!101306 lt!101312))))

(declare-fun lt!101304 () ListLongMap!2731)

(assert (=> b!202080 (= lt!101304 lt!101309)))

(assert (=> b!202080 (= lt!101309 (+!398 lt!101305 lt!101315))))

(assert (=> b!202080 (= lt!101305 (+!398 lt!101314 lt!101312))))

(declare-fun lt!101310 () ListLongMap!2731)

(assert (=> b!202080 (= lt!101308 (+!398 (+!398 lt!101310 lt!101312) lt!101315))))

(assert (=> b!202080 (= lt!101315 (tuple2!3805 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!202080 (= lt!101312 (tuple2!3805 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202081 () Bool)

(declare-fun e!132405 () Bool)

(declare-fun e!132401 () Bool)

(declare-fun mapRes!8477 () Bool)

(assert (=> b!202081 (= e!132405 (and e!132401 mapRes!8477))))

(declare-fun condMapEmpty!8477 () Bool)

(declare-datatypes ((ValueCell!2126 0))(
  ( (ValueCellFull!2126 (v!4480 V!6233)) (EmptyCell!2126) )
))
(declare-datatypes ((array!9104 0))(
  ( (array!9105 (arr!4302 (Array (_ BitVec 32) ValueCell!2126)) (size!4627 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9104)

(declare-fun mapDefault!8477 () ValueCell!2126)

