; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39424 () Bool)

(assert start!39424)

(declare-fun b_free!9683 () Bool)

(declare-fun b_next!9683 () Bool)

(assert (=> start!39424 (= b_free!9683 (not b_next!9683))))

(declare-fun tp!34578 () Bool)

(declare-fun b_and!17259 () Bool)

(assert (=> start!39424 (= tp!34578 b_and!17259)))

(declare-fun b!419241 () Bool)

(declare-fun e!249868 () Bool)

(declare-fun e!249870 () Bool)

(assert (=> b!419241 (= e!249868 (not e!249870))))

(declare-fun res!244484 () Bool)

(assert (=> b!419241 (=> res!244484 e!249870)))

(declare-datatypes ((array!25501 0))(
  ( (array!25502 (arr!12197 (Array (_ BitVec 32) (_ BitVec 64))) (size!12549 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25501)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419241 (= res!244484 (validKeyInArray!0 (select (arr!12197 _keys!709) from!863)))))

(declare-fun e!249863 () Bool)

(assert (=> b!419241 e!249863))

(declare-fun c!55163 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419241 (= c!55163 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15551 0))(
  ( (V!15552 (val!5462 Int)) )
))
(declare-fun minValue!515 () V!15551)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5074 0))(
  ( (ValueCellFull!5074 (v!7705 V!15551)) (EmptyCell!5074) )
))
(declare-datatypes ((array!25503 0))(
  ( (array!25504 (arr!12198 (Array (_ BitVec 32) ValueCell!5074)) (size!12550 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25503)

(declare-fun zeroValue!515 () V!15551)

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((Unit!12347 0))(
  ( (Unit!12348) )
))
(declare-fun lt!192311 () Unit!12347)

(declare-fun v!412 () V!15551)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!429 (array!25501 array!25503 (_ BitVec 32) (_ BitVec 32) V!15551 V!15551 (_ BitVec 32) (_ BitVec 64) V!15551 (_ BitVec 32) Int) Unit!12347)

(assert (=> b!419241 (= lt!192311 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!429 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419242 () Bool)

(declare-fun res!244487 () Bool)

(declare-fun e!249864 () Bool)

(assert (=> b!419242 (=> (not res!244487) (not e!249864))))

(assert (=> b!419242 (= res!244487 (or (= (select (arr!12197 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12197 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!419243 () Bool)

(declare-fun res!244493 () Bool)

(declare-fun e!249869 () Bool)

(assert (=> b!419243 (=> (not res!244493) (not e!249869))))

(declare-fun lt!192307 () array!25501)

(declare-datatypes ((List!7123 0))(
  ( (Nil!7120) (Cons!7119 (h!7975 (_ BitVec 64)) (t!12479 List!7123)) )
))
(declare-fun arrayNoDuplicates!0 (array!25501 (_ BitVec 32) List!7123) Bool)

(assert (=> b!419243 (= res!244493 (arrayNoDuplicates!0 lt!192307 #b00000000000000000000000000000000 Nil!7120))))

(declare-fun lt!192310 () array!25503)

(declare-fun bm!29221 () Bool)

(declare-datatypes ((tuple2!7078 0))(
  ( (tuple2!7079 (_1!3549 (_ BitVec 64)) (_2!3549 V!15551)) )
))
(declare-datatypes ((List!7124 0))(
  ( (Nil!7121) (Cons!7120 (h!7976 tuple2!7078) (t!12480 List!7124)) )
))
(declare-datatypes ((ListLongMap!6005 0))(
  ( (ListLongMap!6006 (toList!3018 List!7124)) )
))
(declare-fun call!29224 () ListLongMap!6005)

(declare-fun getCurrentListMapNoExtraKeys!1219 (array!25501 array!25503 (_ BitVec 32) (_ BitVec 32) V!15551 V!15551 (_ BitVec 32) Int) ListLongMap!6005)

(assert (=> bm!29221 (= call!29224 (getCurrentListMapNoExtraKeys!1219 (ite c!55163 lt!192307 _keys!709) (ite c!55163 lt!192310 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419244 () Bool)

(declare-fun res!244481 () Bool)

(assert (=> b!419244 (=> (not res!244481) (not e!249864))))

(assert (=> b!419244 (= res!244481 (validKeyInArray!0 k!794))))

(declare-fun b!419245 () Bool)

(declare-fun res!244488 () Bool)

(assert (=> b!419245 (=> (not res!244488) (not e!249864))))

(assert (=> b!419245 (= res!244488 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7120))))

(declare-fun b!419246 () Bool)

(declare-fun res!244491 () Bool)

(assert (=> b!419246 (=> (not res!244491) (not e!249869))))

(assert (=> b!419246 (= res!244491 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17874 () Bool)

(declare-fun mapRes!17874 () Bool)

(declare-fun tp!34577 () Bool)

(declare-fun e!249871 () Bool)

(assert (=> mapNonEmpty!17874 (= mapRes!17874 (and tp!34577 e!249871))))

(declare-fun mapRest!17874 () (Array (_ BitVec 32) ValueCell!5074))

(declare-fun mapValue!17874 () ValueCell!5074)

(declare-fun mapKey!17874 () (_ BitVec 32))

(assert (=> mapNonEmpty!17874 (= (arr!12198 _values!549) (store mapRest!17874 mapKey!17874 mapValue!17874))))

(declare-fun b!419247 () Bool)

(declare-fun res!244494 () Bool)

(assert (=> b!419247 (=> (not res!244494) (not e!249864))))

(assert (=> b!419247 (= res!244494 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12549 _keys!709))))))

(declare-fun b!419248 () Bool)

(assert (=> b!419248 (= e!249869 e!249868)))

(declare-fun res!244486 () Bool)

(assert (=> b!419248 (=> (not res!244486) (not e!249868))))

(assert (=> b!419248 (= res!244486 (= from!863 i!563))))

(declare-fun lt!192313 () ListLongMap!6005)

(assert (=> b!419248 (= lt!192313 (getCurrentListMapNoExtraKeys!1219 lt!192307 lt!192310 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!419248 (= lt!192310 (array!25504 (store (arr!12198 _values!549) i!563 (ValueCellFull!5074 v!412)) (size!12550 _values!549)))))

(declare-fun lt!192309 () ListLongMap!6005)

(assert (=> b!419248 (= lt!192309 (getCurrentListMapNoExtraKeys!1219 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!419249 () Bool)

(declare-fun e!249866 () Bool)

(declare-fun tp_is_empty!10835 () Bool)

(assert (=> b!419249 (= e!249866 tp_is_empty!10835)))

(declare-fun b!419250 () Bool)

(declare-fun res!244490 () Bool)

(assert (=> b!419250 (=> (not res!244490) (not e!249864))))

(declare-fun arrayContainsKey!0 (array!25501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!419250 (= res!244490 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!419251 () Bool)

(declare-fun res!244489 () Bool)

(assert (=> b!419251 (=> (not res!244489) (not e!249864))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!419251 (= res!244489 (validMask!0 mask!1025))))

(declare-fun b!419252 () Bool)

(assert (=> b!419252 (= e!249871 tp_is_empty!10835)))

(declare-fun b!419253 () Bool)

(declare-fun call!29225 () ListLongMap!6005)

(assert (=> b!419253 (= e!249863 (= call!29225 call!29224))))

(declare-fun mapIsEmpty!17874 () Bool)

(assert (=> mapIsEmpty!17874 mapRes!17874))

(declare-fun b!419254 () Bool)

(declare-fun e!249865 () Bool)

(assert (=> b!419254 (= e!249865 (and e!249866 mapRes!17874))))

(declare-fun condMapEmpty!17874 () Bool)

(declare-fun mapDefault!17874 () ValueCell!5074)

