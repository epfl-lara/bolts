; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39910 () Bool)

(assert start!39910)

(declare-fun b_free!10169 () Bool)

(declare-fun b_next!10169 () Bool)

(assert (=> start!39910 (= b_free!10169 (not b_next!10169))))

(declare-fun tp!36035 () Bool)

(declare-fun b_and!18015 () Bool)

(assert (=> start!39910 (= tp!36035 b_and!18015)))

(declare-fun b!432245 () Bool)

(declare-fun res!254327 () Bool)

(declare-fun e!255685 () Bool)

(assert (=> b!432245 (=> (not res!254327) (not e!255685))))

(declare-datatypes ((array!26453 0))(
  ( (array!26454 (arr!12673 (Array (_ BitVec 32) (_ BitVec 64))) (size!13025 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26453)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432245 (= res!254327 (or (= (select (arr!12673 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12673 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432246 () Bool)

(declare-fun res!254338 () Bool)

(assert (=> b!432246 (=> (not res!254338) (not e!255685))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26453 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!432246 (= res!254338 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!432247 () Bool)

(declare-datatypes ((Unit!12729 0))(
  ( (Unit!12730) )
))
(declare-fun e!255686 () Unit!12729)

(declare-fun Unit!12731 () Unit!12729)

(assert (=> b!432247 (= e!255686 Unit!12731)))

(declare-fun lt!198281 () Unit!12729)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26453 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12729)

(assert (=> b!432247 (= lt!198281 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432247 false))

(declare-fun b!432248 () Bool)

(declare-fun e!255687 () Bool)

(declare-fun tp_is_empty!11321 () Bool)

(assert (=> b!432248 (= e!255687 tp_is_empty!11321)))

(declare-fun b!432249 () Bool)

(declare-fun Unit!12732 () Unit!12729)

(assert (=> b!432249 (= e!255686 Unit!12732)))

(declare-fun b!432250 () Bool)

(declare-fun res!254328 () Bool)

(assert (=> b!432250 (=> (not res!254328) (not e!255685))))

(declare-datatypes ((List!7517 0))(
  ( (Nil!7514) (Cons!7513 (h!8369 (_ BitVec 64)) (t!13143 List!7517)) )
))
(declare-fun arrayNoDuplicates!0 (array!26453 (_ BitVec 32) List!7517) Bool)

(assert (=> b!432250 (= res!254328 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7514))))

(declare-fun mapIsEmpty!18603 () Bool)

(declare-fun mapRes!18603 () Bool)

(assert (=> mapIsEmpty!18603 mapRes!18603))

(declare-fun b!432251 () Bool)

(declare-fun e!255692 () Bool)

(declare-fun e!255694 () Bool)

(assert (=> b!432251 (= e!255692 e!255694)))

(declare-fun res!254332 () Bool)

(assert (=> b!432251 (=> (not res!254332) (not e!255694))))

(assert (=> b!432251 (= res!254332 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16199 0))(
  ( (V!16200 (val!5705 Int)) )
))
(declare-datatypes ((ValueCell!5317 0))(
  ( (ValueCellFull!5317 (v!7948 V!16199)) (EmptyCell!5317) )
))
(declare-datatypes ((array!26455 0))(
  ( (array!26456 (arr!12674 (Array (_ BitVec 32) ValueCell!5317)) (size!13026 (_ BitVec 32))) )
))
(declare-fun lt!198282 () array!26455)

(declare-fun minValue!515 () V!16199)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((tuple2!7464 0))(
  ( (tuple2!7465 (_1!3742 (_ BitVec 64)) (_2!3742 V!16199)) )
))
(declare-datatypes ((List!7518 0))(
  ( (Nil!7515) (Cons!7514 (h!8370 tuple2!7464) (t!13144 List!7518)) )
))
(declare-datatypes ((ListLongMap!6391 0))(
  ( (ListLongMap!6392 (toList!3211 List!7518)) )
))
(declare-fun lt!198278 () ListLongMap!6391)

(declare-fun lt!198280 () array!26453)

(declare-fun zeroValue!515 () V!16199)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1404 (array!26453 array!26455 (_ BitVec 32) (_ BitVec 32) V!16199 V!16199 (_ BitVec 32) Int) ListLongMap!6391)

(assert (=> b!432251 (= lt!198278 (getCurrentListMapNoExtraKeys!1404 lt!198280 lt!198282 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26455)

(declare-fun v!412 () V!16199)

(assert (=> b!432251 (= lt!198282 (array!26456 (store (arr!12674 _values!549) i!563 (ValueCellFull!5317 v!412)) (size!13026 _values!549)))))

(declare-fun lt!198272 () ListLongMap!6391)

(assert (=> b!432251 (= lt!198272 (getCurrentListMapNoExtraKeys!1404 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!432252 () Bool)

(declare-fun e!255690 () Bool)

(declare-fun e!255691 () Bool)

(assert (=> b!432252 (= e!255690 e!255691)))

(declare-fun res!254339 () Bool)

(assert (=> b!432252 (=> res!254339 e!255691)))

(assert (=> b!432252 (= res!254339 (= k!794 (select (arr!12673 _keys!709) from!863)))))

(assert (=> b!432252 (not (= (select (arr!12673 _keys!709) from!863) k!794))))

(declare-fun lt!198273 () Unit!12729)

(assert (=> b!432252 (= lt!198273 e!255686)))

(declare-fun c!55514 () Bool)

(assert (=> b!432252 (= c!55514 (= (select (arr!12673 _keys!709) from!863) k!794))))

(declare-fun lt!198271 () ListLongMap!6391)

(assert (=> b!432252 (= lt!198278 lt!198271)))

(declare-fun lt!198276 () ListLongMap!6391)

(declare-fun lt!198270 () tuple2!7464)

(declare-fun +!1357 (ListLongMap!6391 tuple2!7464) ListLongMap!6391)

(assert (=> b!432252 (= lt!198271 (+!1357 lt!198276 lt!198270))))

(declare-fun lt!198277 () V!16199)

(assert (=> b!432252 (= lt!198270 (tuple2!7465 (select (arr!12673 _keys!709) from!863) lt!198277))))

(declare-fun get!6305 (ValueCell!5317 V!16199) V!16199)

(declare-fun dynLambda!796 (Int (_ BitVec 64)) V!16199)

(assert (=> b!432252 (= lt!198277 (get!6305 (select (arr!12674 _values!549) from!863) (dynLambda!796 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!432253 () Bool)

(declare-fun res!254334 () Bool)

(assert (=> b!432253 (=> (not res!254334) (not e!255692))))

(assert (=> b!432253 (= res!254334 (bvsle from!863 i!563))))

(declare-fun b!432254 () Bool)

(assert (=> b!432254 (= e!255691 true)))

(declare-fun lt!198275 () tuple2!7464)

(declare-fun lt!198274 () ListLongMap!6391)

(assert (=> b!432254 (= lt!198271 (+!1357 (+!1357 lt!198274 lt!198270) lt!198275))))

(declare-fun lt!198269 () Unit!12729)

(declare-fun addCommutativeForDiffKeys!369 (ListLongMap!6391 (_ BitVec 64) V!16199 (_ BitVec 64) V!16199) Unit!12729)

(assert (=> b!432254 (= lt!198269 (addCommutativeForDiffKeys!369 lt!198274 k!794 v!412 (select (arr!12673 _keys!709) from!863) lt!198277))))

(declare-fun b!432255 () Bool)

(declare-fun res!254337 () Bool)

(assert (=> b!432255 (=> (not res!254337) (not e!255685))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26453 (_ BitVec 32)) Bool)

(assert (=> b!432255 (= res!254337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun mapNonEmpty!18603 () Bool)

(declare-fun tp!36036 () Bool)

(assert (=> mapNonEmpty!18603 (= mapRes!18603 (and tp!36036 e!255687))))

(declare-fun mapRest!18603 () (Array (_ BitVec 32) ValueCell!5317))

(declare-fun mapValue!18603 () ValueCell!5317)

(declare-fun mapKey!18603 () (_ BitVec 32))

(assert (=> mapNonEmpty!18603 (= (arr!12674 _values!549) (store mapRest!18603 mapKey!18603 mapValue!18603))))

(declare-fun b!432256 () Bool)

(declare-fun res!254336 () Bool)

(assert (=> b!432256 (=> (not res!254336) (not e!255685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432256 (= res!254336 (validMask!0 mask!1025))))

(declare-fun b!432257 () Bool)

(assert (=> b!432257 (= e!255694 (not e!255690))))

(declare-fun res!254335 () Bool)

(assert (=> b!432257 (=> res!254335 e!255690)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432257 (= res!254335 (not (validKeyInArray!0 (select (arr!12673 _keys!709) from!863))))))

(declare-fun lt!198268 () ListLongMap!6391)

(assert (=> b!432257 (= lt!198268 lt!198276)))

(assert (=> b!432257 (= lt!198276 (+!1357 lt!198274 lt!198275))))

(assert (=> b!432257 (= lt!198268 (getCurrentListMapNoExtraKeys!1404 lt!198280 lt!198282 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!432257 (= lt!198275 (tuple2!7465 k!794 v!412))))

(assert (=> b!432257 (= lt!198274 (getCurrentListMapNoExtraKeys!1404 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!198279 () Unit!12729)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!548 (array!26453 array!26455 (_ BitVec 32) (_ BitVec 32) V!16199 V!16199 (_ BitVec 32) (_ BitVec 64) V!16199 (_ BitVec 32) Int) Unit!12729)

(assert (=> b!432257 (= lt!198279 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!548 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!432258 () Bool)

(declare-fun res!254329 () Bool)

(assert (=> b!432258 (=> (not res!254329) (not e!255685))))

(assert (=> b!432258 (= res!254329 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13025 _keys!709))))))

(declare-fun b!432259 () Bool)

(declare-fun e!255689 () Bool)

(assert (=> b!432259 (= e!255689 tp_is_empty!11321)))

(declare-fun b!432260 () Bool)

(declare-fun res!254340 () Bool)

(assert (=> b!432260 (=> (not res!254340) (not e!255685))))

(assert (=> b!432260 (= res!254340 (and (= (size!13026 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13025 _keys!709) (size!13026 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!432261 () Bool)

(declare-fun res!254331 () Bool)

(assert (=> b!432261 (=> (not res!254331) (not e!255685))))

(assert (=> b!432261 (= res!254331 (validKeyInArray!0 k!794))))

(declare-fun b!432262 () Bool)

(declare-fun e!255688 () Bool)

(assert (=> b!432262 (= e!255688 (and e!255689 mapRes!18603))))

(declare-fun condMapEmpty!18603 () Bool)

(declare-fun mapDefault!18603 () ValueCell!5317)

