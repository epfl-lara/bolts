; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39460 () Bool)

(assert start!39460)

(declare-fun b_free!9719 () Bool)

(declare-fun b_next!9719 () Bool)

(assert (=> start!39460 (= b_free!9719 (not b_next!9719))))

(declare-fun tp!34686 () Bool)

(declare-fun b_and!17331 () Bool)

(assert (=> start!39460 (= tp!34686 b_and!17331)))

(declare-fun b!420303 () Bool)

(declare-fun res!245240 () Bool)

(declare-fun e!250351 () Bool)

(assert (=> b!420303 (=> (not res!245240) (not e!250351))))

(declare-datatypes ((array!25569 0))(
  ( (array!25570 (arr!12231 (Array (_ BitVec 32) (_ BitVec 64))) (size!12583 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25569)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15599 0))(
  ( (V!15600 (val!5480 Int)) )
))
(declare-datatypes ((ValueCell!5092 0))(
  ( (ValueCellFull!5092 (v!7723 V!15599)) (EmptyCell!5092) )
))
(declare-datatypes ((array!25571 0))(
  ( (array!25572 (arr!12232 (Array (_ BitVec 32) ValueCell!5092)) (size!12584 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25571)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!420303 (= res!245240 (and (= (size!12584 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12583 _keys!709) (size!12584 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!420304 () Bool)

(declare-fun e!250357 () Bool)

(declare-fun e!250353 () Bool)

(assert (=> b!420304 (= e!250357 (not e!250353))))

(declare-fun res!245246 () Bool)

(assert (=> b!420304 (=> res!245246 e!250353)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420304 (= res!245246 (validKeyInArray!0 (select (arr!12231 _keys!709) from!863)))))

(declare-fun e!250352 () Bool)

(assert (=> b!420304 e!250352))

(declare-fun c!55217 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420304 (= c!55217 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-fun minValue!515 () V!15599)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15599)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12373 0))(
  ( (Unit!12374) )
))
(declare-fun lt!192902 () Unit!12373)

(declare-fun v!412 () V!15599)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!442 (array!25569 array!25571 (_ BitVec 32) (_ BitVec 32) V!15599 V!15599 (_ BitVec 32) (_ BitVec 64) V!15599 (_ BitVec 32) Int) Unit!12373)

(assert (=> b!420304 (= lt!192902 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!442 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420305 () Bool)

(declare-fun res!245249 () Bool)

(assert (=> b!420305 (=> (not res!245249) (not e!250351))))

(declare-datatypes ((List!7151 0))(
  ( (Nil!7148) (Cons!7147 (h!8003 (_ BitVec 64)) (t!12543 List!7151)) )
))
(declare-fun arrayNoDuplicates!0 (array!25569 (_ BitVec 32) List!7151) Bool)

(assert (=> b!420305 (= res!245249 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7148))))

(declare-datatypes ((tuple2!7106 0))(
  ( (tuple2!7107 (_1!3563 (_ BitVec 64)) (_2!3563 V!15599)) )
))
(declare-datatypes ((List!7152 0))(
  ( (Nil!7149) (Cons!7148 (h!8004 tuple2!7106) (t!12544 List!7152)) )
))
(declare-datatypes ((ListLongMap!6033 0))(
  ( (ListLongMap!6034 (toList!3032 List!7152)) )
))
(declare-fun call!29333 () ListLongMap!6033)

(declare-fun bm!29329 () Bool)

(declare-fun lt!192899 () array!25571)

(declare-fun lt!192907 () array!25569)

(declare-fun getCurrentListMapNoExtraKeys!1233 (array!25569 array!25571 (_ BitVec 32) (_ BitVec 32) V!15599 V!15599 (_ BitVec 32) Int) ListLongMap!6033)

(assert (=> bm!29329 (= call!29333 (getCurrentListMapNoExtraKeys!1233 (ite c!55217 _keys!709 lt!192907) (ite c!55217 _values!549 lt!192899) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420307 () Bool)

(declare-fun res!245248 () Bool)

(declare-fun e!250354 () Bool)

(assert (=> b!420307 (=> (not res!245248) (not e!250354))))

(assert (=> b!420307 (= res!245248 (bvsle from!863 i!563))))

(declare-fun b!420308 () Bool)

(declare-fun call!29332 () ListLongMap!6033)

(assert (=> b!420308 (= e!250352 (= call!29333 call!29332))))

(declare-fun b!420309 () Bool)

(declare-fun res!245242 () Bool)

(assert (=> b!420309 (=> (not res!245242) (not e!250351))))

(assert (=> b!420309 (= res!245242 (or (= (select (arr!12231 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12231 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!29330 () Bool)

(assert (=> bm!29330 (= call!29332 (getCurrentListMapNoExtraKeys!1233 (ite c!55217 lt!192907 _keys!709) (ite c!55217 lt!192899 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420310 () Bool)

(declare-fun +!1237 (ListLongMap!6033 tuple2!7106) ListLongMap!6033)

(assert (=> b!420310 (= e!250352 (= call!29332 (+!1237 call!29333 (tuple2!7107 k!794 v!412))))))

(declare-fun b!420311 () Bool)

(declare-fun res!245243 () Bool)

(assert (=> b!420311 (=> (not res!245243) (not e!250351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25569 (_ BitVec 32)) Bool)

(assert (=> b!420311 (= res!245243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420312 () Bool)

(declare-fun res!245245 () Bool)

(assert (=> b!420312 (=> (not res!245245) (not e!250354))))

(assert (=> b!420312 (= res!245245 (arrayNoDuplicates!0 lt!192907 #b00000000000000000000000000000000 Nil!7148))))

(declare-fun b!420313 () Bool)

(declare-fun e!250350 () Bool)

(declare-fun e!250349 () Bool)

(declare-fun mapRes!17928 () Bool)

(assert (=> b!420313 (= e!250350 (and e!250349 mapRes!17928))))

(declare-fun condMapEmpty!17928 () Bool)

(declare-fun mapDefault!17928 () ValueCell!5092)

