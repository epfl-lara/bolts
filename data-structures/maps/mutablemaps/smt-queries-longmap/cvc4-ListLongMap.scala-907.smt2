; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20554 () Bool)

(assert start!20554)

(declare-fun b_free!5201 () Bool)

(declare-fun b_next!5201 () Bool)

(assert (=> start!20554 (= b_free!5201 (not b_next!5201))))

(declare-fun tp!18634 () Bool)

(declare-fun b_and!11965 () Bool)

(assert (=> start!20554 (= tp!18634 b_and!11965)))

(declare-fun b!204211 () Bool)

(declare-fun e!133643 () Bool)

(declare-fun e!133642 () Bool)

(assert (=> b!204211 (= e!133643 e!133642)))

(declare-fun res!98361 () Bool)

(assert (=> b!204211 (=> res!98361 e!133642)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!204211 (= res!98361 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6389 0))(
  ( (V!6390 (val!2573 Int)) )
))
(declare-datatypes ((tuple2!3900 0))(
  ( (tuple2!3901 (_1!1960 (_ BitVec 64)) (_2!1960 V!6389)) )
))
(declare-datatypes ((List!2824 0))(
  ( (Nil!2821) (Cons!2820 (h!3462 tuple2!3900) (t!7763 List!2824)) )
))
(declare-datatypes ((ListLongMap!2827 0))(
  ( (ListLongMap!2828 (toList!1429 List!2824)) )
))
(declare-fun lt!103460 () ListLongMap!2827)

(declare-fun lt!103465 () ListLongMap!2827)

(assert (=> b!204211 (= lt!103460 lt!103465)))

(declare-fun lt!103458 () ListLongMap!2827)

(declare-fun lt!103455 () tuple2!3900)

(declare-fun +!446 (ListLongMap!2827 tuple2!3900) ListLongMap!2827)

(assert (=> b!204211 (= lt!103465 (+!446 lt!103458 lt!103455))))

(declare-fun lt!103454 () ListLongMap!2827)

(declare-fun lt!103464 () ListLongMap!2827)

(assert (=> b!204211 (= lt!103454 lt!103464)))

(declare-fun lt!103456 () ListLongMap!2827)

(assert (=> b!204211 (= lt!103464 (+!446 lt!103456 lt!103455))))

(declare-fun lt!103461 () ListLongMap!2827)

(assert (=> b!204211 (= lt!103460 (+!446 lt!103461 lt!103455))))

(declare-fun zeroValue!615 () V!6389)

(assert (=> b!204211 (= lt!103455 (tuple2!3901 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!204212 () Bool)

(declare-fun e!133644 () Bool)

(declare-fun e!133640 () Bool)

(declare-fun mapRes!8654 () Bool)

(assert (=> b!204212 (= e!133644 (and e!133640 mapRes!8654))))

(declare-fun condMapEmpty!8654 () Bool)

(declare-datatypes ((ValueCell!2185 0))(
  ( (ValueCellFull!2185 (v!4539 V!6389)) (EmptyCell!2185) )
))
(declare-datatypes ((array!9332 0))(
  ( (array!9333 (arr!4416 (Array (_ BitVec 32) ValueCell!2185)) (size!4741 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9332)

(declare-fun mapDefault!8654 () ValueCell!2185)

