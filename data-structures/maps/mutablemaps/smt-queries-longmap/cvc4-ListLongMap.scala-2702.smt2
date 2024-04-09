; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40042 () Bool)

(assert start!40042)

(declare-fun b_free!10301 () Bool)

(declare-fun b_next!10301 () Bool)

(assert (=> start!40042 (= b_free!10301 (not b_next!10301))))

(declare-fun tp!36431 () Bool)

(declare-fun b_and!18279 () Bool)

(assert (=> start!40042 (= tp!36431 b_and!18279)))

(declare-fun b!436337 () Bool)

(declare-fun res!257303 () Bool)

(declare-fun e!257669 () Bool)

(assert (=> b!436337 (=> (not res!257303) (not e!257669))))

(declare-datatypes ((array!26707 0))(
  ( (array!26708 (arr!12800 (Array (_ BitVec 32) (_ BitVec 64))) (size!13152 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26707)

(declare-datatypes ((List!7621 0))(
  ( (Nil!7618) (Cons!7617 (h!8473 (_ BitVec 64)) (t!13379 List!7621)) )
))
(declare-fun arrayNoDuplicates!0 (array!26707 (_ BitVec 32) List!7621) Bool)

(assert (=> b!436337 (= res!257303 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7618))))

(declare-fun b!436338 () Bool)

(declare-fun res!257309 () Bool)

(assert (=> b!436338 (=> (not res!257309) (not e!257669))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26707 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436338 (= res!257309 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!436339 () Bool)

(declare-fun e!257665 () Bool)

(declare-fun e!257670 () Bool)

(assert (=> b!436339 (= e!257665 (not e!257670))))

(declare-fun res!257301 () Bool)

(assert (=> b!436339 (=> res!257301 e!257670)))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436339 (= res!257301 (not (validKeyInArray!0 (select (arr!12800 _keys!709) from!863))))))

(declare-datatypes ((V!16375 0))(
  ( (V!16376 (val!5771 Int)) )
))
(declare-datatypes ((tuple2!7578 0))(
  ( (tuple2!7579 (_1!3799 (_ BitVec 64)) (_2!3799 V!16375)) )
))
(declare-datatypes ((List!7622 0))(
  ( (Nil!7619) (Cons!7618 (h!8474 tuple2!7578) (t!13380 List!7622)) )
))
(declare-datatypes ((ListLongMap!6505 0))(
  ( (ListLongMap!6506 (toList!3268 List!7622)) )
))
(declare-fun lt!201250 () ListLongMap!6505)

(declare-fun lt!201247 () ListLongMap!6505)

(assert (=> b!436339 (= lt!201250 lt!201247)))

(declare-fun lt!201240 () ListLongMap!6505)

(declare-fun lt!201244 () tuple2!7578)

(declare-fun +!1412 (ListLongMap!6505 tuple2!7578) ListLongMap!6505)

(assert (=> b!436339 (= lt!201247 (+!1412 lt!201240 lt!201244))))

(declare-fun minValue!515 () V!16375)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5383 0))(
  ( (ValueCellFull!5383 (v!8014 V!16375)) (EmptyCell!5383) )
))
(declare-datatypes ((array!26709 0))(
  ( (array!26710 (arr!12801 (Array (_ BitVec 32) ValueCell!5383)) (size!13153 (_ BitVec 32))) )
))
(declare-fun lt!201243 () array!26709)

(declare-fun zeroValue!515 () V!16375)

(declare-fun lt!201252 () array!26707)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1450 (array!26707 array!26709 (_ BitVec 32) (_ BitVec 32) V!16375 V!16375 (_ BitVec 32) Int) ListLongMap!6505)

(assert (=> b!436339 (= lt!201250 (getCurrentListMapNoExtraKeys!1450 lt!201252 lt!201243 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16375)

(assert (=> b!436339 (= lt!201244 (tuple2!7579 k!794 v!412))))

(declare-fun _values!549 () array!26709)

(assert (=> b!436339 (= lt!201240 (getCurrentListMapNoExtraKeys!1450 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!12935 0))(
  ( (Unit!12936) )
))
(declare-fun lt!201239 () Unit!12935)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!590 (array!26707 array!26709 (_ BitVec 32) (_ BitVec 32) V!16375 V!16375 (_ BitVec 32) (_ BitVec 64) V!16375 (_ BitVec 32) Int) Unit!12935)

(assert (=> b!436339 (= lt!201239 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!590 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!436340 () Bool)

(declare-fun res!257297 () Bool)

(assert (=> b!436340 (=> (not res!257297) (not e!257669))))

(assert (=> b!436340 (= res!257297 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13152 _keys!709))))))

(declare-fun res!257300 () Bool)

(assert (=> start!40042 (=> (not res!257300) (not e!257669))))

(assert (=> start!40042 (= res!257300 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13152 _keys!709))))))

(assert (=> start!40042 e!257669))

(declare-fun tp_is_empty!11453 () Bool)

(assert (=> start!40042 tp_is_empty!11453))

(assert (=> start!40042 tp!36431))

(assert (=> start!40042 true))

(declare-fun e!257672 () Bool)

(declare-fun array_inv!9296 (array!26709) Bool)

(assert (=> start!40042 (and (array_inv!9296 _values!549) e!257672)))

(declare-fun array_inv!9297 (array!26707) Bool)

(assert (=> start!40042 (array_inv!9297 _keys!709)))

(declare-fun b!436341 () Bool)

(declare-fun e!257668 () Bool)

(assert (=> b!436341 (= e!257668 true)))

(declare-fun lt!201241 () ListLongMap!6505)

(declare-fun lt!201249 () tuple2!7578)

(assert (=> b!436341 (= lt!201241 (+!1412 (+!1412 lt!201240 lt!201249) lt!201244))))

(declare-fun lt!201246 () V!16375)

(declare-fun lt!201251 () Unit!12935)

(declare-fun addCommutativeForDiffKeys!415 (ListLongMap!6505 (_ BitVec 64) V!16375 (_ BitVec 64) V!16375) Unit!12935)

(assert (=> b!436341 (= lt!201251 (addCommutativeForDiffKeys!415 lt!201240 k!794 v!412 (select (arr!12800 _keys!709) from!863) lt!201246))))

(declare-fun b!436342 () Bool)

(declare-fun res!257305 () Bool)

(assert (=> b!436342 (=> (not res!257305) (not e!257669))))

(assert (=> b!436342 (= res!257305 (and (= (size!13153 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13152 _keys!709) (size!13153 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436343 () Bool)

(declare-fun e!257671 () Bool)

(assert (=> b!436343 (= e!257671 tp_is_empty!11453)))

(declare-fun b!436344 () Bool)

(declare-fun e!257666 () Bool)

(assert (=> b!436344 (= e!257669 e!257666)))

(declare-fun res!257310 () Bool)

(assert (=> b!436344 (=> (not res!257310) (not e!257666))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26707 (_ BitVec 32)) Bool)

(assert (=> b!436344 (= res!257310 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201252 mask!1025))))

(assert (=> b!436344 (= lt!201252 (array!26708 (store (arr!12800 _keys!709) i!563 k!794) (size!13152 _keys!709)))))

(declare-fun mapNonEmpty!18801 () Bool)

(declare-fun mapRes!18801 () Bool)

(declare-fun tp!36432 () Bool)

(assert (=> mapNonEmpty!18801 (= mapRes!18801 (and tp!36432 e!257671))))

(declare-fun mapRest!18801 () (Array (_ BitVec 32) ValueCell!5383))

(declare-fun mapValue!18801 () ValueCell!5383)

(declare-fun mapKey!18801 () (_ BitVec 32))

(assert (=> mapNonEmpty!18801 (= (arr!12801 _values!549) (store mapRest!18801 mapKey!18801 mapValue!18801))))

(declare-fun b!436345 () Bool)

(declare-fun res!257298 () Bool)

(assert (=> b!436345 (=> (not res!257298) (not e!257669))))

(assert (=> b!436345 (= res!257298 (validKeyInArray!0 k!794))))

(declare-fun b!436346 () Bool)

(assert (=> b!436346 (= e!257670 e!257668)))

(declare-fun res!257308 () Bool)

(assert (=> b!436346 (=> res!257308 e!257668)))

(assert (=> b!436346 (= res!257308 (= k!794 (select (arr!12800 _keys!709) from!863)))))

(assert (=> b!436346 (not (= (select (arr!12800 _keys!709) from!863) k!794))))

(declare-fun lt!201238 () Unit!12935)

(declare-fun e!257674 () Unit!12935)

(assert (=> b!436346 (= lt!201238 e!257674)))

(declare-fun c!55712 () Bool)

(assert (=> b!436346 (= c!55712 (= (select (arr!12800 _keys!709) from!863) k!794))))

(declare-fun lt!201245 () ListLongMap!6505)

(assert (=> b!436346 (= lt!201245 lt!201241)))

(assert (=> b!436346 (= lt!201241 (+!1412 lt!201247 lt!201249))))

(assert (=> b!436346 (= lt!201249 (tuple2!7579 (select (arr!12800 _keys!709) from!863) lt!201246))))

(declare-fun get!6391 (ValueCell!5383 V!16375) V!16375)

(declare-fun dynLambda!838 (Int (_ BitVec 64)) V!16375)

(assert (=> b!436346 (= lt!201246 (get!6391 (select (arr!12801 _values!549) from!863) (dynLambda!838 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436347 () Bool)

(declare-fun Unit!12937 () Unit!12935)

(assert (=> b!436347 (= e!257674 Unit!12937)))

(declare-fun lt!201242 () Unit!12935)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26707 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12935)

(assert (=> b!436347 (= lt!201242 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!436347 false))

(declare-fun b!436348 () Bool)

(assert (=> b!436348 (= e!257666 e!257665)))

(declare-fun res!257296 () Bool)

(assert (=> b!436348 (=> (not res!257296) (not e!257665))))

(assert (=> b!436348 (= res!257296 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!436348 (= lt!201245 (getCurrentListMapNoExtraKeys!1450 lt!201252 lt!201243 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!436348 (= lt!201243 (array!26710 (store (arr!12801 _values!549) i!563 (ValueCellFull!5383 v!412)) (size!13153 _values!549)))))

(declare-fun lt!201248 () ListLongMap!6505)

(assert (=> b!436348 (= lt!201248 (getCurrentListMapNoExtraKeys!1450 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436349 () Bool)

(declare-fun res!257304 () Bool)

(assert (=> b!436349 (=> (not res!257304) (not e!257666))))

(assert (=> b!436349 (= res!257304 (arrayNoDuplicates!0 lt!201252 #b00000000000000000000000000000000 Nil!7618))))

(declare-fun b!436350 () Bool)

(declare-fun res!257306 () Bool)

(assert (=> b!436350 (=> (not res!257306) (not e!257669))))

(assert (=> b!436350 (= res!257306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436351 () Bool)

(declare-fun res!257307 () Bool)

(assert (=> b!436351 (=> (not res!257307) (not e!257669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436351 (= res!257307 (validMask!0 mask!1025))))

(declare-fun b!436352 () Bool)

(declare-fun Unit!12938 () Unit!12935)

(assert (=> b!436352 (= e!257674 Unit!12938)))

(declare-fun b!436353 () Bool)

(declare-fun e!257673 () Bool)

(assert (=> b!436353 (= e!257672 (and e!257673 mapRes!18801))))

(declare-fun condMapEmpty!18801 () Bool)

(declare-fun mapDefault!18801 () ValueCell!5383)

