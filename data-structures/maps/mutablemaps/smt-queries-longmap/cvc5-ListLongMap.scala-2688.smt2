; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39954 () Bool)

(assert start!39954)

(declare-fun b_free!10213 () Bool)

(declare-fun b_next!10213 () Bool)

(assert (=> start!39954 (= b_free!10213 (not b_next!10213))))

(declare-fun tp!36167 () Bool)

(declare-fun b_and!18103 () Bool)

(assert (=> start!39954 (= tp!36167 b_and!18103)))

(declare-fun b!433609 () Bool)

(declare-fun res!255321 () Bool)

(declare-fun e!256351 () Bool)

(assert (=> b!433609 (=> (not res!255321) (not e!256351))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433609 (= res!255321 (validKeyInArray!0 k!794))))

(declare-fun b!433610 () Bool)

(declare-fun res!255330 () Bool)

(declare-fun e!256349 () Bool)

(assert (=> b!433610 (=> (not res!255330) (not e!256349))))

(declare-datatypes ((array!26539 0))(
  ( (array!26540 (arr!12716 (Array (_ BitVec 32) (_ BitVec 64))) (size!13068 (_ BitVec 32))) )
))
(declare-fun lt!199260 () array!26539)

(declare-datatypes ((List!7553 0))(
  ( (Nil!7550) (Cons!7549 (h!8405 (_ BitVec 64)) (t!13223 List!7553)) )
))
(declare-fun arrayNoDuplicates!0 (array!26539 (_ BitVec 32) List!7553) Bool)

(assert (=> b!433610 (= res!255330 (arrayNoDuplicates!0 lt!199260 #b00000000000000000000000000000000 Nil!7550))))

(declare-fun mapNonEmpty!18669 () Bool)

(declare-fun mapRes!18669 () Bool)

(declare-fun tp!36168 () Bool)

(declare-fun e!256350 () Bool)

(assert (=> mapNonEmpty!18669 (= mapRes!18669 (and tp!36168 e!256350))))

(declare-datatypes ((V!16259 0))(
  ( (V!16260 (val!5727 Int)) )
))
(declare-datatypes ((ValueCell!5339 0))(
  ( (ValueCellFull!5339 (v!7970 V!16259)) (EmptyCell!5339) )
))
(declare-fun mapValue!18669 () ValueCell!5339)

(declare-fun mapKey!18669 () (_ BitVec 32))

(declare-datatypes ((array!26541 0))(
  ( (array!26542 (arr!12717 (Array (_ BitVec 32) ValueCell!5339)) (size!13069 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26541)

(declare-fun mapRest!18669 () (Array (_ BitVec 32) ValueCell!5339))

(assert (=> mapNonEmpty!18669 (= (arr!12717 _values!549) (store mapRest!18669 mapKey!18669 mapValue!18669))))

(declare-fun b!433611 () Bool)

(declare-fun e!256345 () Bool)

(declare-fun tp_is_empty!11365 () Bool)

(assert (=> b!433611 (= e!256345 tp_is_empty!11365)))

(declare-fun b!433612 () Bool)

(declare-fun e!256346 () Bool)

(declare-fun e!256348 () Bool)

(assert (=> b!433612 (= e!256346 e!256348)))

(declare-fun res!255324 () Bool)

(assert (=> b!433612 (=> res!255324 e!256348)))

(declare-fun _keys!709 () array!26539)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!433612 (= res!255324 (= k!794 (select (arr!12716 _keys!709) from!863)))))

(assert (=> b!433612 (not (= (select (arr!12716 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12801 0))(
  ( (Unit!12802) )
))
(declare-fun lt!199268 () Unit!12801)

(declare-fun e!256353 () Unit!12801)

(assert (=> b!433612 (= lt!199268 e!256353)))

(declare-fun c!55580 () Bool)

(assert (=> b!433612 (= c!55580 (= (select (arr!12716 _keys!709) from!863) k!794))))

(declare-datatypes ((tuple2!7504 0))(
  ( (tuple2!7505 (_1!3762 (_ BitVec 64)) (_2!3762 V!16259)) )
))
(declare-datatypes ((List!7554 0))(
  ( (Nil!7551) (Cons!7550 (h!8406 tuple2!7504) (t!13224 List!7554)) )
))
(declare-datatypes ((ListLongMap!6431 0))(
  ( (ListLongMap!6432 (toList!3231 List!7554)) )
))
(declare-fun lt!199266 () ListLongMap!6431)

(declare-fun lt!199262 () ListLongMap!6431)

(assert (=> b!433612 (= lt!199266 lt!199262)))

(declare-fun lt!199269 () ListLongMap!6431)

(declare-fun lt!199271 () tuple2!7504)

(declare-fun +!1377 (ListLongMap!6431 tuple2!7504) ListLongMap!6431)

(assert (=> b!433612 (= lt!199262 (+!1377 lt!199269 lt!199271))))

(declare-fun lt!199264 () V!16259)

(assert (=> b!433612 (= lt!199271 (tuple2!7505 (select (arr!12716 _keys!709) from!863) lt!199264))))

(declare-fun defaultEntry!557 () Int)

(declare-fun get!6334 (ValueCell!5339 V!16259) V!16259)

(declare-fun dynLambda!809 (Int (_ BitVec 64)) V!16259)

(assert (=> b!433612 (= lt!199264 (get!6334 (select (arr!12717 _values!549) from!863) (dynLambda!809 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433613 () Bool)

(declare-fun Unit!12803 () Unit!12801)

(assert (=> b!433613 (= e!256353 Unit!12803)))

(declare-fun b!433614 () Bool)

(declare-fun res!255327 () Bool)

(assert (=> b!433614 (=> (not res!255327) (not e!256351))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!433614 (= res!255327 (or (= (select (arr!12716 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12716 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433615 () Bool)

(declare-fun res!255318 () Bool)

(assert (=> b!433615 (=> (not res!255318) (not e!256351))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433615 (= res!255318 (validMask!0 mask!1025))))

(declare-fun b!433616 () Bool)

(declare-fun e!256352 () Bool)

(assert (=> b!433616 (= e!256352 (not e!256346))))

(declare-fun res!255328 () Bool)

(assert (=> b!433616 (=> res!255328 e!256346)))

(assert (=> b!433616 (= res!255328 (not (validKeyInArray!0 (select (arr!12716 _keys!709) from!863))))))

(declare-fun lt!199258 () ListLongMap!6431)

(assert (=> b!433616 (= lt!199258 lt!199269)))

(declare-fun lt!199259 () ListLongMap!6431)

(declare-fun lt!199270 () tuple2!7504)

(assert (=> b!433616 (= lt!199269 (+!1377 lt!199259 lt!199270))))

(declare-fun minValue!515 () V!16259)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!199265 () array!26541)

(declare-fun zeroValue!515 () V!16259)

(declare-fun getCurrentListMapNoExtraKeys!1420 (array!26539 array!26541 (_ BitVec 32) (_ BitVec 32) V!16259 V!16259 (_ BitVec 32) Int) ListLongMap!6431)

(assert (=> b!433616 (= lt!199258 (getCurrentListMapNoExtraKeys!1420 lt!199260 lt!199265 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16259)

(assert (=> b!433616 (= lt!199270 (tuple2!7505 k!794 v!412))))

(assert (=> b!433616 (= lt!199259 (getCurrentListMapNoExtraKeys!1420 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199267 () Unit!12801)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!564 (array!26539 array!26541 (_ BitVec 32) (_ BitVec 32) V!16259 V!16259 (_ BitVec 32) (_ BitVec 64) V!16259 (_ BitVec 32) Int) Unit!12801)

(assert (=> b!433616 (= lt!199267 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!564 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!433618 () Bool)

(declare-fun e!256354 () Bool)

(assert (=> b!433618 (= e!256354 (and e!256345 mapRes!18669))))

(declare-fun condMapEmpty!18669 () Bool)

(declare-fun mapDefault!18669 () ValueCell!5339)

