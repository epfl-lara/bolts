; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39462 () Bool)

(assert start!39462)

(declare-fun b_free!9721 () Bool)

(declare-fun b_next!9721 () Bool)

(assert (=> start!39462 (= b_free!9721 (not b_next!9721))))

(declare-fun tp!34691 () Bool)

(declare-fun b_and!17335 () Bool)

(assert (=> start!39462 (= tp!34691 b_and!17335)))

(declare-fun b!420362 () Bool)

(declare-fun res!245280 () Bool)

(declare-fun e!250381 () Bool)

(assert (=> b!420362 (=> (not res!245280) (not e!250381))))

(declare-datatypes ((array!25573 0))(
  ( (array!25574 (arr!12233 (Array (_ BitVec 32) (_ BitVec 64))) (size!12585 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25573)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420362 (= res!245280 (or (= (select (arr!12233 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12233 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!420363 () Bool)

(declare-fun res!245291 () Bool)

(assert (=> b!420363 (=> (not res!245291) (not e!250381))))

(assert (=> b!420363 (= res!245291 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12585 _keys!709))))))

(declare-fun b!420364 () Bool)

(declare-fun res!245284 () Bool)

(assert (=> b!420364 (=> (not res!245284) (not e!250381))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420364 (= res!245284 (validMask!0 mask!1025))))

(declare-fun b!420365 () Bool)

(declare-fun res!245287 () Bool)

(assert (=> b!420365 (=> (not res!245287) (not e!250381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25573 (_ BitVec 32)) Bool)

(assert (=> b!420365 (= res!245287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-datatypes ((V!15603 0))(
  ( (V!15604 (val!5481 Int)) )
))
(declare-fun minValue!515 () V!15603)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5093 0))(
  ( (ValueCellFull!5093 (v!7724 V!15603)) (EmptyCell!5093) )
))
(declare-datatypes ((array!25575 0))(
  ( (array!25576 (arr!12234 (Array (_ BitVec 32) ValueCell!5093)) (size!12586 (_ BitVec 32))) )
))
(declare-fun lt!192939 () array!25575)

(declare-fun _values!549 () array!25575)

(declare-fun zeroValue!515 () V!15603)

(declare-fun bm!29335 () Bool)

(declare-datatypes ((tuple2!7108 0))(
  ( (tuple2!7109 (_1!3564 (_ BitVec 64)) (_2!3564 V!15603)) )
))
(declare-datatypes ((List!7153 0))(
  ( (Nil!7150) (Cons!7149 (h!8005 tuple2!7108) (t!12547 List!7153)) )
))
(declare-datatypes ((ListLongMap!6035 0))(
  ( (ListLongMap!6036 (toList!3033 List!7153)) )
))
(declare-fun call!29338 () ListLongMap!6035)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!192940 () array!25573)

(declare-fun c!55220 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!1234 (array!25573 array!25575 (_ BitVec 32) (_ BitVec 32) V!15603 V!15603 (_ BitVec 32) Int) ListLongMap!6035)

(assert (=> bm!29335 (= call!29338 (getCurrentListMapNoExtraKeys!1234 (ite c!55220 _keys!709 lt!192940) (ite c!55220 _values!549 lt!192939) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!17931 () Bool)

(declare-fun mapRes!17931 () Bool)

(declare-fun tp!34692 () Bool)

(declare-fun e!250378 () Bool)

(assert (=> mapNonEmpty!17931 (= mapRes!17931 (and tp!34692 e!250378))))

(declare-fun mapRest!17931 () (Array (_ BitVec 32) ValueCell!5093))

(declare-fun mapKey!17931 () (_ BitVec 32))

(declare-fun mapValue!17931 () ValueCell!5093)

(assert (=> mapNonEmpty!17931 (= (arr!12234 _values!549) (store mapRest!17931 mapKey!17931 mapValue!17931))))

(declare-fun b!420366 () Bool)

(declare-fun res!245290 () Bool)

(declare-fun e!250383 () Bool)

(assert (=> b!420366 (=> (not res!245290) (not e!250383))))

(assert (=> b!420366 (= res!245290 (bvsle from!863 i!563))))

(declare-fun b!420367 () Bool)

(declare-fun res!245286 () Bool)

(assert (=> b!420367 (=> (not res!245286) (not e!250383))))

(declare-datatypes ((List!7154 0))(
  ( (Nil!7151) (Cons!7150 (h!8006 (_ BitVec 64)) (t!12548 List!7154)) )
))
(declare-fun arrayNoDuplicates!0 (array!25573 (_ BitVec 32) List!7154) Bool)

(assert (=> b!420367 (= res!245286 (arrayNoDuplicates!0 lt!192940 #b00000000000000000000000000000000 Nil!7151))))

(declare-fun res!245279 () Bool)

(assert (=> start!39462 (=> (not res!245279) (not e!250381))))

(assert (=> start!39462 (= res!245279 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12585 _keys!709))))))

(assert (=> start!39462 e!250381))

(declare-fun tp_is_empty!10873 () Bool)

(assert (=> start!39462 tp_is_empty!10873))

(assert (=> start!39462 tp!34691))

(assert (=> start!39462 true))

(declare-fun e!250379 () Bool)

(declare-fun array_inv!8912 (array!25575) Bool)

(assert (=> start!39462 (and (array_inv!8912 _values!549) e!250379)))

(declare-fun array_inv!8913 (array!25573) Bool)

(assert (=> start!39462 (array_inv!8913 _keys!709)))

(declare-fun call!29339 () ListLongMap!6035)

(declare-fun bm!29336 () Bool)

(assert (=> bm!29336 (= call!29339 (getCurrentListMapNoExtraKeys!1234 (ite c!55220 lt!192940 _keys!709) (ite c!55220 lt!192939 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420368 () Bool)

(declare-fun e!250382 () Bool)

(assert (=> b!420368 (= e!250382 tp_is_empty!10873)))

(declare-fun b!420369 () Bool)

(declare-fun e!250376 () Bool)

(assert (=> b!420369 (= e!250376 true)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!192934 () ListLongMap!6035)

(declare-fun lt!192935 () tuple2!7108)

(declare-fun lt!192938 () V!15603)

(declare-fun +!1238 (ListLongMap!6035 tuple2!7108) ListLongMap!6035)

(assert (=> b!420369 (= (+!1238 lt!192934 lt!192935) (+!1238 (+!1238 lt!192934 (tuple2!7109 k!794 lt!192938)) lt!192935))))

(declare-fun lt!192941 () V!15603)

(assert (=> b!420369 (= lt!192935 (tuple2!7109 k!794 lt!192941))))

(declare-datatypes ((Unit!12375 0))(
  ( (Unit!12376) )
))
(declare-fun lt!192942 () Unit!12375)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!56 (ListLongMap!6035 (_ BitVec 64) V!15603 V!15603) Unit!12375)

(assert (=> b!420369 (= lt!192942 (addSameAsAddTwiceSameKeyDiffValues!56 lt!192934 k!794 lt!192938 lt!192941))))

(declare-fun lt!192936 () V!15603)

(declare-fun get!6079 (ValueCell!5093 V!15603) V!15603)

(assert (=> b!420369 (= lt!192938 (get!6079 (select (arr!12234 _values!549) from!863) lt!192936))))

(declare-fun lt!192933 () ListLongMap!6035)

(assert (=> b!420369 (= lt!192933 (+!1238 lt!192934 (tuple2!7109 (select (arr!12233 lt!192940) from!863) lt!192941)))))

(declare-fun v!412 () V!15603)

(assert (=> b!420369 (= lt!192941 (get!6079 (select (store (arr!12234 _values!549) i!563 (ValueCellFull!5093 v!412)) from!863) lt!192936))))

(declare-fun dynLambda!718 (Int (_ BitVec 64)) V!15603)

(assert (=> b!420369 (= lt!192936 (dynLambda!718 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!420369 (= lt!192934 (getCurrentListMapNoExtraKeys!1234 lt!192940 lt!192939 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420370 () Bool)

(declare-fun res!245283 () Bool)

(assert (=> b!420370 (=> (not res!245283) (not e!250381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420370 (= res!245283 (validKeyInArray!0 k!794))))

(declare-fun b!420371 () Bool)

(declare-fun res!245281 () Bool)

(assert (=> b!420371 (=> (not res!245281) (not e!250381))))

(assert (=> b!420371 (= res!245281 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7151))))

(declare-fun b!420372 () Bool)

(declare-fun e!250384 () Bool)

(assert (=> b!420372 (= e!250383 e!250384)))

(declare-fun res!245292 () Bool)

(assert (=> b!420372 (=> (not res!245292) (not e!250384))))

(assert (=> b!420372 (= res!245292 (= from!863 i!563))))

(assert (=> b!420372 (= lt!192933 (getCurrentListMapNoExtraKeys!1234 lt!192940 lt!192939 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!420372 (= lt!192939 (array!25576 (store (arr!12234 _values!549) i!563 (ValueCellFull!5093 v!412)) (size!12586 _values!549)))))

(declare-fun lt!192932 () ListLongMap!6035)

(assert (=> b!420372 (= lt!192932 (getCurrentListMapNoExtraKeys!1234 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun e!250380 () Bool)

(declare-fun b!420373 () Bool)

(assert (=> b!420373 (= e!250380 (= call!29339 (+!1238 call!29338 (tuple2!7109 k!794 v!412))))))

(declare-fun b!420374 () Bool)

(assert (=> b!420374 (= e!250378 tp_is_empty!10873)))

(declare-fun b!420375 () Bool)

(assert (=> b!420375 (= e!250381 e!250383)))

(declare-fun res!245289 () Bool)

(assert (=> b!420375 (=> (not res!245289) (not e!250383))))

(assert (=> b!420375 (= res!245289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!192940 mask!1025))))

(assert (=> b!420375 (= lt!192940 (array!25574 (store (arr!12233 _keys!709) i!563 k!794) (size!12585 _keys!709)))))

(declare-fun b!420376 () Bool)

(assert (=> b!420376 (= e!250380 (= call!29338 call!29339))))

(declare-fun mapIsEmpty!17931 () Bool)

(assert (=> mapIsEmpty!17931 mapRes!17931))

(declare-fun b!420377 () Bool)

(assert (=> b!420377 (= e!250379 (and e!250382 mapRes!17931))))

(declare-fun condMapEmpty!17931 () Bool)

(declare-fun mapDefault!17931 () ValueCell!5093)

