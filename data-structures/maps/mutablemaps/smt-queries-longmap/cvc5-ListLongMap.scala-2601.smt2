; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39432 () Bool)

(assert start!39432)

(declare-fun b_free!9691 () Bool)

(declare-fun b_next!9691 () Bool)

(assert (=> start!39432 (= b_free!9691 (not b_next!9691))))

(declare-fun tp!34601 () Bool)

(declare-fun b_and!17275 () Bool)

(assert (=> start!39432 (= tp!34601 b_and!17275)))

(declare-fun b!419477 () Bool)

(declare-fun e!249973 () Bool)

(declare-fun e!249978 () Bool)

(assert (=> b!419477 (= e!249973 (not e!249978))))

(declare-fun res!244655 () Bool)

(assert (=> b!419477 (=> res!244655 e!249978)))

(declare-datatypes ((array!25517 0))(
  ( (array!25518 (arr!12205 (Array (_ BitVec 32) (_ BitVec 64))) (size!12557 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25517)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!419477 (= res!244655 (validKeyInArray!0 (select (arr!12205 _keys!709) from!863)))))

(declare-fun e!249971 () Bool)

(assert (=> b!419477 e!249971))

(declare-fun c!55175 () Bool)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!419477 (= c!55175 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((V!15563 0))(
  ( (V!15564 (val!5466 Int)) )
))
(declare-fun minValue!515 () V!15563)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5078 0))(
  ( (ValueCellFull!5078 (v!7709 V!15563)) (EmptyCell!5078) )
))
(declare-datatypes ((array!25519 0))(
  ( (array!25520 (arr!12206 (Array (_ BitVec 32) ValueCell!5078)) (size!12558 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25519)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun v!412 () V!15563)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((Unit!12353 0))(
  ( (Unit!12354) )
))
(declare-fun lt!192445 () Unit!12353)

(declare-fun zeroValue!515 () V!15563)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!432 (array!25517 array!25519 (_ BitVec 32) (_ BitVec 32) V!15563 V!15563 (_ BitVec 32) (_ BitVec 64) V!15563 (_ BitVec 32) Int) Unit!12353)

(assert (=> b!419477 (= lt!192445 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!432 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419478 () Bool)

(declare-fun e!249976 () Bool)

(declare-fun tp_is_empty!10843 () Bool)

(assert (=> b!419478 (= e!249976 tp_is_empty!10843)))

(declare-fun b!419479 () Bool)

(declare-fun res!244656 () Bool)

(declare-fun e!249979 () Bool)

(assert (=> b!419479 (=> (not res!244656) (not e!249979))))

(assert (=> b!419479 (= res!244656 (and (= (size!12558 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12557 _keys!709) (size!12558 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-datatypes ((tuple2!7086 0))(
  ( (tuple2!7087 (_1!3553 (_ BitVec 64)) (_2!3553 V!15563)) )
))
(declare-datatypes ((List!7131 0))(
  ( (Nil!7128) (Cons!7127 (h!7983 tuple2!7086) (t!12495 List!7131)) )
))
(declare-datatypes ((ListLongMap!6013 0))(
  ( (ListLongMap!6014 (toList!3022 List!7131)) )
))
(declare-fun call!29248 () ListLongMap!6013)

(declare-fun bm!29245 () Bool)

(declare-fun lt!192447 () array!25517)

(declare-fun lt!192446 () array!25519)

(declare-fun getCurrentListMapNoExtraKeys!1223 (array!25517 array!25519 (_ BitVec 32) (_ BitVec 32) V!15563 V!15563 (_ BitVec 32) Int) ListLongMap!6013)

(assert (=> bm!29245 (= call!29248 (getCurrentListMapNoExtraKeys!1223 (ite c!55175 _keys!709 lt!192447) (ite c!55175 _values!549 lt!192446) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419480 () Bool)

(assert (=> b!419480 (= e!249978 true)))

(declare-fun lt!192444 () tuple2!7086)

(declare-fun lt!192440 () ListLongMap!6013)

(declare-fun lt!192442 () V!15563)

(declare-fun +!1227 (ListLongMap!6013 tuple2!7086) ListLongMap!6013)

(assert (=> b!419480 (= (+!1227 lt!192440 lt!192444) (+!1227 (+!1227 lt!192440 (tuple2!7087 k!794 lt!192442)) lt!192444))))

(declare-fun lt!192438 () V!15563)

(assert (=> b!419480 (= lt!192444 (tuple2!7087 k!794 lt!192438))))

(declare-fun lt!192443 () Unit!12353)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!46 (ListLongMap!6013 (_ BitVec 64) V!15563 V!15563) Unit!12353)

(assert (=> b!419480 (= lt!192443 (addSameAsAddTwiceSameKeyDiffValues!46 lt!192440 k!794 lt!192442 lt!192438))))

(declare-fun lt!192439 () V!15563)

(declare-fun get!6059 (ValueCell!5078 V!15563) V!15563)

(assert (=> b!419480 (= lt!192442 (get!6059 (select (arr!12206 _values!549) from!863) lt!192439))))

(declare-fun lt!192441 () ListLongMap!6013)

(assert (=> b!419480 (= lt!192441 (+!1227 lt!192440 (tuple2!7087 (select (arr!12205 lt!192447) from!863) lt!192438)))))

(assert (=> b!419480 (= lt!192438 (get!6059 (select (store (arr!12206 _values!549) i!563 (ValueCellFull!5078 v!412)) from!863) lt!192439))))

(declare-fun dynLambda!708 (Int (_ BitVec 64)) V!15563)

(assert (=> b!419480 (= lt!192439 (dynLambda!708 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!419480 (= lt!192440 (getCurrentListMapNoExtraKeys!1223 lt!192447 lt!192446 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!419481 () Bool)

(declare-fun e!249977 () Bool)

(declare-fun e!249975 () Bool)

(declare-fun mapRes!17886 () Bool)

(assert (=> b!419481 (= e!249977 (and e!249975 mapRes!17886))))

(declare-fun condMapEmpty!17886 () Bool)

(declare-fun mapDefault!17886 () ValueCell!5078)

