; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39660 () Bool)

(assert start!39660)

(declare-fun b_free!9919 () Bool)

(declare-fun b_next!9919 () Bool)

(assert (=> start!39660 (= b_free!9919 (not b_next!9919))))

(declare-fun tp!35286 () Bool)

(declare-fun b_and!17593 () Bool)

(assert (=> start!39660 (= tp!35286 b_and!17593)))

(declare-fun b!425276 () Bool)

(declare-fun res!249075 () Bool)

(declare-fun e!252469 () Bool)

(assert (=> b!425276 (=> (not res!249075) (not e!252469))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!25969 0))(
  ( (array!25970 (arr!12431 (Array (_ BitVec 32) (_ BitVec 64))) (size!12783 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25969)

(assert (=> b!425276 (= res!249075 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12783 _keys!709))))))

(declare-fun b!425277 () Bool)

(declare-fun res!249067 () Bool)

(assert (=> b!425277 (=> (not res!249067) (not e!252469))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((V!15867 0))(
  ( (V!15868 (val!5580 Int)) )
))
(declare-datatypes ((ValueCell!5192 0))(
  ( (ValueCellFull!5192 (v!7823 V!15867)) (EmptyCell!5192) )
))
(declare-datatypes ((array!25971 0))(
  ( (array!25972 (arr!12432 (Array (_ BitVec 32) ValueCell!5192)) (size!12784 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25971)

(assert (=> b!425277 (= res!249067 (and (= (size!12784 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12783 _keys!709) (size!12784 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!425278 () Bool)

(declare-fun res!249076 () Bool)

(assert (=> b!425278 (=> (not res!249076) (not e!252469))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!425278 (= res!249076 (validKeyInArray!0 k!794))))

(declare-fun b!425279 () Bool)

(declare-fun e!252474 () Bool)

(declare-fun e!252472 () Bool)

(assert (=> b!425279 (= e!252474 e!252472)))

(declare-fun res!249078 () Bool)

(assert (=> b!425279 (=> (not res!249078) (not e!252472))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!425279 (= res!249078 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!15867)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!15867)

(declare-fun lt!194625 () array!25969)

(declare-fun lt!194624 () array!25971)

(declare-datatypes ((tuple2!7268 0))(
  ( (tuple2!7269 (_1!3644 (_ BitVec 64)) (_2!3644 V!15867)) )
))
(declare-datatypes ((List!7312 0))(
  ( (Nil!7309) (Cons!7308 (h!8164 tuple2!7268) (t!12764 List!7312)) )
))
(declare-datatypes ((ListLongMap!6195 0))(
  ( (ListLongMap!6196 (toList!3113 List!7312)) )
))
(declare-fun lt!194622 () ListLongMap!6195)

(declare-fun getCurrentListMapNoExtraKeys!1314 (array!25969 array!25971 (_ BitVec 32) (_ BitVec 32) V!15867 V!15867 (_ BitVec 32) Int) ListLongMap!6195)

(assert (=> b!425279 (= lt!194622 (getCurrentListMapNoExtraKeys!1314 lt!194625 lt!194624 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15867)

(assert (=> b!425279 (= lt!194624 (array!25972 (store (arr!12432 _values!549) i!563 (ValueCellFull!5192 v!412)) (size!12784 _values!549)))))

(declare-fun lt!194623 () ListLongMap!6195)

(assert (=> b!425279 (= lt!194623 (getCurrentListMapNoExtraKeys!1314 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!425280 () Bool)

(declare-fun res!249069 () Bool)

(assert (=> b!425280 (=> (not res!249069) (not e!252469))))

(declare-fun arrayContainsKey!0 (array!25969 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!425280 (= res!249069 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!425281 () Bool)

(declare-fun res!249074 () Bool)

(assert (=> b!425281 (=> (not res!249074) (not e!252469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!425281 (= res!249074 (validMask!0 mask!1025))))

(declare-fun b!425282 () Bool)

(declare-fun res!249073 () Bool)

(assert (=> b!425282 (=> (not res!249073) (not e!252474))))

(declare-datatypes ((List!7313 0))(
  ( (Nil!7310) (Cons!7309 (h!8165 (_ BitVec 64)) (t!12765 List!7313)) )
))
(declare-fun arrayNoDuplicates!0 (array!25969 (_ BitVec 32) List!7313) Bool)

(assert (=> b!425282 (= res!249073 (arrayNoDuplicates!0 lt!194625 #b00000000000000000000000000000000 Nil!7310))))

(declare-fun b!425283 () Bool)

(assert (=> b!425283 (= e!252469 e!252474)))

(declare-fun res!249071 () Bool)

(assert (=> b!425283 (=> (not res!249071) (not e!252474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25969 (_ BitVec 32)) Bool)

(assert (=> b!425283 (= res!249071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!194625 mask!1025))))

(assert (=> b!425283 (= lt!194625 (array!25970 (store (arr!12431 _keys!709) i!563 k!794) (size!12783 _keys!709)))))

(declare-fun b!425284 () Bool)

(declare-fun e!252470 () Bool)

(declare-fun tp_is_empty!11071 () Bool)

(assert (=> b!425284 (= e!252470 tp_is_empty!11071)))

(declare-fun b!425286 () Bool)

(assert (=> b!425286 (= e!252472 (not true))))

(declare-fun +!1271 (ListLongMap!6195 tuple2!7268) ListLongMap!6195)

(assert (=> b!425286 (= (getCurrentListMapNoExtraKeys!1314 lt!194625 lt!194624 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1271 (getCurrentListMapNoExtraKeys!1314 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7269 k!794 v!412)))))

(declare-datatypes ((Unit!12445 0))(
  ( (Unit!12446) )
))
(declare-fun lt!194621 () Unit!12445)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!473 (array!25969 array!25971 (_ BitVec 32) (_ BitVec 32) V!15867 V!15867 (_ BitVec 32) (_ BitVec 64) V!15867 (_ BitVec 32) Int) Unit!12445)

(assert (=> b!425286 (= lt!194621 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!473 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapIsEmpty!18228 () Bool)

(declare-fun mapRes!18228 () Bool)

(assert (=> mapIsEmpty!18228 mapRes!18228))

(declare-fun b!425287 () Bool)

(declare-fun e!252473 () Bool)

(assert (=> b!425287 (= e!252473 (and e!252470 mapRes!18228))))

(declare-fun condMapEmpty!18228 () Bool)

(declare-fun mapDefault!18228 () ValueCell!5192)

