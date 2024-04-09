; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40204 () Bool)

(assert start!40204)

(declare-fun b_free!10463 () Bool)

(declare-fun b_next!10463 () Bool)

(assert (=> start!40204 (= b_free!10463 (not b_next!10463))))

(declare-fun tp!36918 () Bool)

(declare-fun b_and!18449 () Bool)

(assert (=> start!40204 (= tp!36918 b_and!18449)))

(declare-fun b!440273 () Bool)

(declare-fun e!259397 () Bool)

(declare-fun tp_is_empty!11615 () Bool)

(assert (=> b!440273 (= e!259397 tp_is_empty!11615)))

(declare-fun b!440274 () Bool)

(declare-fun e!259400 () Bool)

(assert (=> b!440274 (= e!259400 (not true))))

(declare-datatypes ((array!27019 0))(
  ( (array!27020 (arr!12956 (Array (_ BitVec 32) (_ BitVec 64))) (size!13308 (_ BitVec 32))) )
))
(declare-fun lt!202556 () array!27019)

(declare-datatypes ((V!16591 0))(
  ( (V!16592 (val!5852 Int)) )
))
(declare-fun minValue!515 () V!16591)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5464 0))(
  ( (ValueCellFull!5464 (v!8095 V!16591)) (EmptyCell!5464) )
))
(declare-datatypes ((array!27021 0))(
  ( (array!27022 (arr!12957 (Array (_ BitVec 32) ValueCell!5464)) (size!13309 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27021)

(declare-fun zeroValue!515 () V!16591)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!202557 () array!27021)

(declare-fun v!412 () V!16591)

(declare-fun _keys!709 () array!27019)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-datatypes ((tuple2!7702 0))(
  ( (tuple2!7703 (_1!3861 (_ BitVec 64)) (_2!3861 V!16591)) )
))
(declare-datatypes ((List!7743 0))(
  ( (Nil!7740) (Cons!7739 (h!8595 tuple2!7702) (t!13507 List!7743)) )
))
(declare-datatypes ((ListLongMap!6629 0))(
  ( (ListLongMap!6630 (toList!3330 List!7743)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1512 (array!27019 array!27021 (_ BitVec 32) (_ BitVec 32) V!16591 V!16591 (_ BitVec 32) Int) ListLongMap!6629)

(declare-fun +!1466 (ListLongMap!6629 tuple2!7702) ListLongMap!6629)

(assert (=> b!440274 (= (getCurrentListMapNoExtraKeys!1512 lt!202556 lt!202557 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1466 (getCurrentListMapNoExtraKeys!1512 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7703 k!794 v!412)))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((Unit!13047 0))(
  ( (Unit!13048) )
))
(declare-fun lt!202553 () Unit!13047)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!644 (array!27019 array!27021 (_ BitVec 32) (_ BitVec 32) V!16591 V!16591 (_ BitVec 32) (_ BitVec 64) V!16591 (_ BitVec 32) Int) Unit!13047)

(assert (=> b!440274 (= lt!202553 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!644 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!440275 () Bool)

(declare-fun e!259396 () Bool)

(assert (=> b!440275 (= e!259396 e!259400)))

(declare-fun res!260485 () Bool)

(assert (=> b!440275 (=> (not res!260485) (not e!259400))))

(assert (=> b!440275 (= res!260485 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!202554 () ListLongMap!6629)

(assert (=> b!440275 (= lt!202554 (getCurrentListMapNoExtraKeys!1512 lt!202556 lt!202557 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!440275 (= lt!202557 (array!27022 (store (arr!12957 _values!549) i!563 (ValueCellFull!5464 v!412)) (size!13309 _values!549)))))

(declare-fun lt!202555 () ListLongMap!6629)

(assert (=> b!440275 (= lt!202555 (getCurrentListMapNoExtraKeys!1512 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!440276 () Bool)

(declare-fun res!260482 () Bool)

(declare-fun e!259401 () Bool)

(assert (=> b!440276 (=> (not res!260482) (not e!259401))))

(assert (=> b!440276 (= res!260482 (and (= (size!13309 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13308 _keys!709) (size!13309 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!440277 () Bool)

(declare-fun res!260475 () Bool)

(assert (=> b!440277 (=> (not res!260475) (not e!259401))))

(assert (=> b!440277 (= res!260475 (or (= (select (arr!12956 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12956 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!440278 () Bool)

(declare-fun e!259398 () Bool)

(declare-fun e!259402 () Bool)

(declare-fun mapRes!19044 () Bool)

(assert (=> b!440278 (= e!259398 (and e!259402 mapRes!19044))))

(declare-fun condMapEmpty!19044 () Bool)

(declare-fun mapDefault!19044 () ValueCell!5464)

