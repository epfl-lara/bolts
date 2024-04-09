; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40084 () Bool)

(assert start!40084)

(declare-fun b_free!10343 () Bool)

(declare-fun b_next!10343 () Bool)

(assert (=> start!40084 (= b_free!10343 (not b_next!10343))))

(declare-fun tp!36557 () Bool)

(declare-fun b_and!18329 () Bool)

(assert (=> start!40084 (= tp!36557 b_and!18329)))

(declare-fun b!437393 () Bool)

(declare-fun e!258138 () Bool)

(declare-fun tp_is_empty!11495 () Bool)

(assert (=> b!437393 (= e!258138 tp_is_empty!11495)))

(declare-fun b!437394 () Bool)

(declare-fun res!258143 () Bool)

(declare-fun e!258137 () Bool)

(assert (=> b!437394 (=> (not res!258143) (not e!258137))))

(declare-datatypes ((array!26787 0))(
  ( (array!26788 (arr!12840 (Array (_ BitVec 32) (_ BitVec 64))) (size!13192 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26787)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437394 (= res!258143 (or (= (select (arr!12840 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12840 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!437395 () Bool)

(declare-fun res!258144 () Bool)

(declare-fun e!258139 () Bool)

(assert (=> b!437395 (=> (not res!258144) (not e!258139))))

(declare-fun lt!201657 () array!26787)

(declare-datatypes ((List!7653 0))(
  ( (Nil!7650) (Cons!7649 (h!8505 (_ BitVec 64)) (t!13417 List!7653)) )
))
(declare-fun arrayNoDuplicates!0 (array!26787 (_ BitVec 32) List!7653) Bool)

(assert (=> b!437395 (= res!258144 (arrayNoDuplicates!0 lt!201657 #b00000000000000000000000000000000 Nil!7650))))

(declare-fun res!258139 () Bool)

(assert (=> start!40084 (=> (not res!258139) (not e!258137))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40084 (= res!258139 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13192 _keys!709))))))

(assert (=> start!40084 e!258137))

(assert (=> start!40084 tp_is_empty!11495))

(assert (=> start!40084 tp!36557))

(assert (=> start!40084 true))

(declare-datatypes ((V!16431 0))(
  ( (V!16432 (val!5792 Int)) )
))
(declare-datatypes ((ValueCell!5404 0))(
  ( (ValueCellFull!5404 (v!8035 V!16431)) (EmptyCell!5404) )
))
(declare-datatypes ((array!26789 0))(
  ( (array!26790 (arr!12841 (Array (_ BitVec 32) ValueCell!5404)) (size!13193 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26789)

(declare-fun e!258136 () Bool)

(declare-fun array_inv!9326 (array!26789) Bool)

(assert (=> start!40084 (and (array_inv!9326 _values!549) e!258136)))

(declare-fun array_inv!9327 (array!26787) Bool)

(assert (=> start!40084 (array_inv!9327 _keys!709)))

(declare-fun b!437396 () Bool)

(declare-fun res!258147 () Bool)

(assert (=> b!437396 (=> (not res!258147) (not e!258137))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26787 (_ BitVec 32)) Bool)

(assert (=> b!437396 (= res!258147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!437397 () Bool)

(declare-fun e!258142 () Bool)

(assert (=> b!437397 (= e!258142 tp_is_empty!11495)))

(declare-fun mapNonEmpty!18864 () Bool)

(declare-fun mapRes!18864 () Bool)

(declare-fun tp!36558 () Bool)

(assert (=> mapNonEmpty!18864 (= mapRes!18864 (and tp!36558 e!258142))))

(declare-fun mapRest!18864 () (Array (_ BitVec 32) ValueCell!5404))

(declare-fun mapKey!18864 () (_ BitVec 32))

(declare-fun mapValue!18864 () ValueCell!5404)

(assert (=> mapNonEmpty!18864 (= (arr!12841 _values!549) (store mapRest!18864 mapKey!18864 mapValue!18864))))

(declare-fun b!437398 () Bool)

(declare-fun res!258142 () Bool)

(assert (=> b!437398 (=> (not res!258142) (not e!258137))))

(assert (=> b!437398 (= res!258142 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13192 _keys!709))))))

(declare-fun b!437399 () Bool)

(declare-fun res!258135 () Bool)

(assert (=> b!437399 (=> (not res!258135) (not e!258137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437399 (= res!258135 (validMask!0 mask!1025))))

(declare-fun b!437400 () Bool)

(declare-fun res!258145 () Bool)

(assert (=> b!437400 (=> (not res!258145) (not e!258137))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437400 (= res!258145 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!437401 () Bool)

(declare-fun e!258140 () Bool)

(assert (=> b!437401 (= e!258139 e!258140)))

(declare-fun res!258141 () Bool)

(assert (=> b!437401 (=> (not res!258141) (not e!258140))))

(assert (=> b!437401 (= res!258141 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16431)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!201655 () array!26789)

(declare-fun zeroValue!515 () V!16431)

(declare-datatypes ((tuple2!7610 0))(
  ( (tuple2!7611 (_1!3815 (_ BitVec 64)) (_2!3815 V!16431)) )
))
(declare-datatypes ((List!7654 0))(
  ( (Nil!7651) (Cons!7650 (h!8506 tuple2!7610) (t!13418 List!7654)) )
))
(declare-datatypes ((ListLongMap!6537 0))(
  ( (ListLongMap!6538 (toList!3284 List!7654)) )
))
(declare-fun lt!201653 () ListLongMap!6537)

(declare-fun getCurrentListMapNoExtraKeys!1466 (array!26787 array!26789 (_ BitVec 32) (_ BitVec 32) V!16431 V!16431 (_ BitVec 32) Int) ListLongMap!6537)

(assert (=> b!437401 (= lt!201653 (getCurrentListMapNoExtraKeys!1466 lt!201657 lt!201655 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16431)

(assert (=> b!437401 (= lt!201655 (array!26790 (store (arr!12841 _values!549) i!563 (ValueCellFull!5404 v!412)) (size!13193 _values!549)))))

(declare-fun lt!201654 () ListLongMap!6537)

(assert (=> b!437401 (= lt!201654 (getCurrentListMapNoExtraKeys!1466 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapIsEmpty!18864 () Bool)

(assert (=> mapIsEmpty!18864 mapRes!18864))

(declare-fun b!437402 () Bool)

(assert (=> b!437402 (= e!258140 (not true))))

(declare-fun +!1428 (ListLongMap!6537 tuple2!7610) ListLongMap!6537)

(assert (=> b!437402 (= (getCurrentListMapNoExtraKeys!1466 lt!201657 lt!201655 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1428 (getCurrentListMapNoExtraKeys!1466 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7611 k!794 v!412)))))

(declare-datatypes ((Unit!12971 0))(
  ( (Unit!12972) )
))
(declare-fun lt!201656 () Unit!12971)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!606 (array!26787 array!26789 (_ BitVec 32) (_ BitVec 32) V!16431 V!16431 (_ BitVec 32) (_ BitVec 64) V!16431 (_ BitVec 32) Int) Unit!12971)

(assert (=> b!437402 (= lt!201656 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!606 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!437403 () Bool)

(declare-fun res!258136 () Bool)

(assert (=> b!437403 (=> (not res!258136) (not e!258137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!437403 (= res!258136 (validKeyInArray!0 k!794))))

(declare-fun b!437404 () Bool)

(assert (=> b!437404 (= e!258137 e!258139)))

(declare-fun res!258146 () Bool)

(assert (=> b!437404 (=> (not res!258146) (not e!258139))))

(assert (=> b!437404 (= res!258146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201657 mask!1025))))

(assert (=> b!437404 (= lt!201657 (array!26788 (store (arr!12840 _keys!709) i!563 k!794) (size!13192 _keys!709)))))

(declare-fun b!437405 () Bool)

(declare-fun res!258137 () Bool)

(assert (=> b!437405 (=> (not res!258137) (not e!258137))))

(assert (=> b!437405 (= res!258137 (and (= (size!13193 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13192 _keys!709) (size!13193 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!437406 () Bool)

(assert (=> b!437406 (= e!258136 (and e!258138 mapRes!18864))))

(declare-fun condMapEmpty!18864 () Bool)

(declare-fun mapDefault!18864 () ValueCell!5404)

