; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39466 () Bool)

(assert start!39466)

(declare-fun b_free!9725 () Bool)

(declare-fun b_next!9725 () Bool)

(assert (=> start!39466 (= b_free!9725 (not b_next!9725))))

(declare-fun tp!34704 () Bool)

(declare-fun b_and!17343 () Bool)

(assert (=> start!39466 (= tp!34704 b_and!17343)))

(declare-fun b!420480 () Bool)

(declare-fun res!245363 () Bool)

(declare-fun e!250434 () Bool)

(assert (=> b!420480 (=> (not res!245363) (not e!250434))))

(declare-datatypes ((array!25581 0))(
  ( (array!25582 (arr!12237 (Array (_ BitVec 32) (_ BitVec 64))) (size!12589 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25581)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420480 (= res!245363 (or (= (select (arr!12237 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12237 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!17937 () Bool)

(declare-fun mapRes!17937 () Bool)

(declare-fun tp!34703 () Bool)

(declare-fun e!250435 () Bool)

(assert (=> mapNonEmpty!17937 (= mapRes!17937 (and tp!34703 e!250435))))

(declare-datatypes ((V!15607 0))(
  ( (V!15608 (val!5483 Int)) )
))
(declare-datatypes ((ValueCell!5095 0))(
  ( (ValueCellFull!5095 (v!7726 V!15607)) (EmptyCell!5095) )
))
(declare-fun mapRest!17937 () (Array (_ BitVec 32) ValueCell!5095))

(declare-datatypes ((array!25583 0))(
  ( (array!25584 (arr!12238 (Array (_ BitVec 32) ValueCell!5095)) (size!12590 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25583)

(declare-fun mapValue!17937 () ValueCell!5095)

(declare-fun mapKey!17937 () (_ BitVec 32))

(assert (=> mapNonEmpty!17937 (= (arr!12238 _values!549) (store mapRest!17937 mapKey!17937 mapValue!17937))))

(declare-fun b!420481 () Bool)

(declare-fun e!250432 () Bool)

(assert (=> b!420481 (= e!250432 true)))

(declare-fun lt!193005 () V!15607)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((tuple2!7112 0))(
  ( (tuple2!7113 (_1!3566 (_ BitVec 64)) (_2!3566 V!15607)) )
))
(declare-fun lt!192998 () tuple2!7112)

(declare-datatypes ((List!7157 0))(
  ( (Nil!7154) (Cons!7153 (h!8009 tuple2!7112) (t!12555 List!7157)) )
))
(declare-datatypes ((ListLongMap!6039 0))(
  ( (ListLongMap!6040 (toList!3035 List!7157)) )
))
(declare-fun lt!193003 () ListLongMap!6039)

(declare-fun +!1240 (ListLongMap!6039 tuple2!7112) ListLongMap!6039)

(assert (=> b!420481 (= (+!1240 lt!193003 lt!192998) (+!1240 (+!1240 lt!193003 (tuple2!7113 k!794 lt!193005)) lt!192998))))

(declare-fun lt!193001 () V!15607)

(assert (=> b!420481 (= lt!192998 (tuple2!7113 k!794 lt!193001))))

(declare-datatypes ((Unit!12379 0))(
  ( (Unit!12380) )
))
(declare-fun lt!193008 () Unit!12379)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!58 (ListLongMap!6039 (_ BitVec 64) V!15607 V!15607) Unit!12379)

(assert (=> b!420481 (= lt!193008 (addSameAsAddTwiceSameKeyDiffValues!58 lt!193003 k!794 lt!193005 lt!193001))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!193000 () V!15607)

(declare-fun get!6081 (ValueCell!5095 V!15607) V!15607)

(assert (=> b!420481 (= lt!193005 (get!6081 (select (arr!12238 _values!549) from!863) lt!193000))))

(declare-fun lt!193004 () array!25581)

(declare-fun lt!193007 () ListLongMap!6039)

(assert (=> b!420481 (= lt!193007 (+!1240 lt!193003 (tuple2!7113 (select (arr!12237 lt!193004) from!863) lt!193001)))))

(declare-fun v!412 () V!15607)

(assert (=> b!420481 (= lt!193001 (get!6081 (select (store (arr!12238 _values!549) i!563 (ValueCellFull!5095 v!412)) from!863) lt!193000))))

(declare-fun defaultEntry!557 () Int)

(declare-fun dynLambda!720 (Int (_ BitVec 64)) V!15607)

(assert (=> b!420481 (= lt!193000 (dynLambda!720 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun minValue!515 () V!15607)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!193002 () array!25583)

(declare-fun zeroValue!515 () V!15607)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1236 (array!25581 array!25583 (_ BitVec 32) (_ BitVec 32) V!15607 V!15607 (_ BitVec 32) Int) ListLongMap!6039)

(assert (=> b!420481 (= lt!193003 (getCurrentListMapNoExtraKeys!1236 lt!193004 lt!193002 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420482 () Bool)

(declare-fun e!250433 () Bool)

(declare-fun tp_is_empty!10877 () Bool)

(assert (=> b!420482 (= e!250433 tp_is_empty!10877)))

(declare-fun b!420483 () Bool)

(declare-fun e!250437 () Bool)

(assert (=> b!420483 (= e!250437 (not e!250432))))

(declare-fun res!245364 () Bool)

(assert (=> b!420483 (=> res!245364 e!250432)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420483 (= res!245364 (validKeyInArray!0 (select (arr!12237 _keys!709) from!863)))))

(declare-fun e!250436 () Bool)

(assert (=> b!420483 e!250436))

(declare-fun c!55226 () Bool)

(assert (=> b!420483 (= c!55226 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun lt!192999 () Unit!12379)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!444 (array!25581 array!25583 (_ BitVec 32) (_ BitVec 32) V!15607 V!15607 (_ BitVec 32) (_ BitVec 64) V!15607 (_ BitVec 32) Int) Unit!12379)

(assert (=> b!420483 (= lt!192999 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!444 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun bm!29347 () Bool)

(declare-fun call!29350 () ListLongMap!6039)

(assert (=> bm!29347 (= call!29350 (getCurrentListMapNoExtraKeys!1236 (ite c!55226 _keys!709 lt!193004) (ite c!55226 _values!549 lt!193002) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420484 () Bool)

(declare-fun res!245372 () Bool)

(assert (=> b!420484 (=> (not res!245372) (not e!250434))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25581 (_ BitVec 32)) Bool)

(assert (=> b!420484 (= res!245372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420485 () Bool)

(declare-fun e!250438 () Bool)

(assert (=> b!420485 (= e!250438 (and e!250433 mapRes!17937))))

(declare-fun condMapEmpty!17937 () Bool)

(declare-fun mapDefault!17937 () ValueCell!5095)

