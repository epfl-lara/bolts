; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40044 () Bool)

(assert start!40044)

(declare-fun b_free!10303 () Bool)

(declare-fun b_next!10303 () Bool)

(assert (=> start!40044 (= b_free!10303 (not b_next!10303))))

(declare-fun tp!36437 () Bool)

(declare-fun b_and!18283 () Bool)

(assert (=> start!40044 (= tp!36437 b_and!18283)))

(declare-fun b!436399 () Bool)

(declare-fun res!257353 () Bool)

(declare-fun e!257700 () Bool)

(assert (=> b!436399 (=> (not res!257353) (not e!257700))))

(declare-datatypes ((array!26711 0))(
  ( (array!26712 (arr!12802 (Array (_ BitVec 32) (_ BitVec 64))) (size!13154 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26711)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16379 0))(
  ( (V!16380 (val!5772 Int)) )
))
(declare-datatypes ((ValueCell!5384 0))(
  ( (ValueCellFull!5384 (v!8015 V!16379)) (EmptyCell!5384) )
))
(declare-datatypes ((array!26713 0))(
  ( (array!26714 (arr!12803 (Array (_ BitVec 32) ValueCell!5384)) (size!13155 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26713)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!436399 (= res!257353 (and (= (size!13155 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13154 _keys!709) (size!13155 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436400 () Bool)

(declare-fun e!257702 () Bool)

(declare-fun e!257697 () Bool)

(assert (=> b!436400 (= e!257702 e!257697)))

(declare-fun res!257354 () Bool)

(assert (=> b!436400 (=> (not res!257354) (not e!257697))))

(declare-fun from!863 () (_ BitVec 32))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436400 (= res!257354 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!201284 () array!26711)

(declare-fun zeroValue!515 () V!16379)

(declare-datatypes ((tuple2!7580 0))(
  ( (tuple2!7581 (_1!3800 (_ BitVec 64)) (_2!3800 V!16379)) )
))
(declare-datatypes ((List!7623 0))(
  ( (Nil!7620) (Cons!7619 (h!8475 tuple2!7580) (t!13383 List!7623)) )
))
(declare-datatypes ((ListLongMap!6507 0))(
  ( (ListLongMap!6508 (toList!3269 List!7623)) )
))
(declare-fun lt!201297 () ListLongMap!6507)

(declare-fun minValue!515 () V!16379)

(declare-fun lt!201290 () array!26713)

(declare-fun getCurrentListMapNoExtraKeys!1451 (array!26711 array!26713 (_ BitVec 32) (_ BitVec 32) V!16379 V!16379 (_ BitVec 32) Int) ListLongMap!6507)

(assert (=> b!436400 (= lt!201297 (getCurrentListMapNoExtraKeys!1451 lt!201284 lt!201290 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16379)

(assert (=> b!436400 (= lt!201290 (array!26714 (store (arr!12803 _values!549) i!563 (ValueCellFull!5384 v!412)) (size!13155 _values!549)))))

(declare-fun lt!201289 () ListLongMap!6507)

(assert (=> b!436400 (= lt!201289 (getCurrentListMapNoExtraKeys!1451 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436401 () Bool)

(declare-fun e!257701 () Bool)

(assert (=> b!436401 (= e!257697 (not e!257701))))

(declare-fun res!257345 () Bool)

(assert (=> b!436401 (=> res!257345 e!257701)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436401 (= res!257345 (not (validKeyInArray!0 (select (arr!12802 _keys!709) from!863))))))

(declare-fun lt!201293 () ListLongMap!6507)

(declare-fun lt!201295 () ListLongMap!6507)

(assert (=> b!436401 (= lt!201293 lt!201295)))

(declare-fun lt!201294 () ListLongMap!6507)

(declare-fun lt!201285 () tuple2!7580)

(declare-fun +!1413 (ListLongMap!6507 tuple2!7580) ListLongMap!6507)

(assert (=> b!436401 (= lt!201295 (+!1413 lt!201294 lt!201285))))

(assert (=> b!436401 (= lt!201293 (getCurrentListMapNoExtraKeys!1451 lt!201284 lt!201290 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!436401 (= lt!201285 (tuple2!7581 k!794 v!412))))

(assert (=> b!436401 (= lt!201294 (getCurrentListMapNoExtraKeys!1451 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!12939 0))(
  ( (Unit!12940) )
))
(declare-fun lt!201283 () Unit!12939)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!591 (array!26711 array!26713 (_ BitVec 32) (_ BitVec 32) V!16379 V!16379 (_ BitVec 32) (_ BitVec 64) V!16379 (_ BitVec 32) Int) Unit!12939)

(assert (=> b!436401 (= lt!201283 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!591 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!257355 () Bool)

(assert (=> start!40044 (=> (not res!257355) (not e!257700))))

(assert (=> start!40044 (= res!257355 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13154 _keys!709))))))

(assert (=> start!40044 e!257700))

(declare-fun tp_is_empty!11455 () Bool)

(assert (=> start!40044 tp_is_empty!11455))

(assert (=> start!40044 tp!36437))

(assert (=> start!40044 true))

(declare-fun e!257698 () Bool)

(declare-fun array_inv!9298 (array!26713) Bool)

(assert (=> start!40044 (and (array_inv!9298 _values!549) e!257698)))

(declare-fun array_inv!9299 (array!26711) Bool)

(assert (=> start!40044 (array_inv!9299 _keys!709)))

(declare-fun b!436402 () Bool)

(declare-fun e!257703 () Bool)

(declare-fun mapRes!18804 () Bool)

(assert (=> b!436402 (= e!257698 (and e!257703 mapRes!18804))))

(declare-fun condMapEmpty!18804 () Bool)

(declare-fun mapDefault!18804 () ValueCell!5384)

