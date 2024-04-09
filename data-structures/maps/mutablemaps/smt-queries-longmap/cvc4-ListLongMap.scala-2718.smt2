; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40138 () Bool)

(assert start!40138)

(declare-fun b_free!10397 () Bool)

(declare-fun b_next!10397 () Bool)

(assert (=> start!40138 (= b_free!10397 (not b_next!10397))))

(declare-fun tp!36719 () Bool)

(declare-fun b_and!18383 () Bool)

(assert (=> start!40138 (= tp!36719 b_and!18383)))

(declare-fun b!438689 () Bool)

(declare-fun e!258703 () Bool)

(declare-fun e!258705 () Bool)

(assert (=> b!438689 (= e!258703 e!258705)))

(declare-fun res!259192 () Bool)

(assert (=> b!438689 (=> (not res!259192) (not e!258705))))

(declare-datatypes ((array!26891 0))(
  ( (array!26892 (arr!12892 (Array (_ BitVec 32) (_ BitVec 64))) (size!13244 (_ BitVec 32))) )
))
(declare-fun lt!202058 () array!26891)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26891 (_ BitVec 32)) Bool)

(assert (=> b!438689 (= res!259192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!202058 mask!1025))))

(declare-fun _keys!709 () array!26891)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438689 (= lt!202058 (array!26892 (store (arr!12892 _keys!709) i!563 k!794) (size!13244 _keys!709)))))

(declare-fun b!438690 () Bool)

(declare-fun e!258707 () Bool)

(assert (=> b!438690 (= e!258707 (not true))))

(declare-datatypes ((V!16503 0))(
  ( (V!16504 (val!5819 Int)) )
))
(declare-fun minValue!515 () V!16503)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5431 0))(
  ( (ValueCellFull!5431 (v!8062 V!16503)) (EmptyCell!5431) )
))
(declare-datatypes ((array!26893 0))(
  ( (array!26894 (arr!12893 (Array (_ BitVec 32) ValueCell!5431)) (size!13245 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26893)

(declare-fun zeroValue!515 () V!16503)

(declare-fun lt!202061 () array!26893)

(declare-fun v!412 () V!16503)

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((tuple2!7650 0))(
  ( (tuple2!7651 (_1!3835 (_ BitVec 64)) (_2!3835 V!16503)) )
))
(declare-datatypes ((List!7693 0))(
  ( (Nil!7690) (Cons!7689 (h!8545 tuple2!7650) (t!13457 List!7693)) )
))
(declare-datatypes ((ListLongMap!6577 0))(
  ( (ListLongMap!6578 (toList!3304 List!7693)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1486 (array!26891 array!26893 (_ BitVec 32) (_ BitVec 32) V!16503 V!16503 (_ BitVec 32) Int) ListLongMap!6577)

(declare-fun +!1444 (ListLongMap!6577 tuple2!7650) ListLongMap!6577)

(assert (=> b!438690 (= (getCurrentListMapNoExtraKeys!1486 lt!202058 lt!202061 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1444 (getCurrentListMapNoExtraKeys!1486 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7651 k!794 v!412)))))

(declare-datatypes ((Unit!13003 0))(
  ( (Unit!13004) )
))
(declare-fun lt!202060 () Unit!13003)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!622 (array!26891 array!26893 (_ BitVec 32) (_ BitVec 32) V!16503 V!16503 (_ BitVec 32) (_ BitVec 64) V!16503 (_ BitVec 32) Int) Unit!13003)

(assert (=> b!438690 (= lt!202060 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!622 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!438691 () Bool)

(declare-fun res!259194 () Bool)

(assert (=> b!438691 (=> (not res!259194) (not e!258703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438691 (= res!259194 (validMask!0 mask!1025))))

(declare-fun b!438692 () Bool)

(declare-fun res!259199 () Bool)

(assert (=> b!438692 (=> (not res!259199) (not e!258705))))

(assert (=> b!438692 (= res!259199 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!18945 () Bool)

(declare-fun mapRes!18945 () Bool)

(declare-fun tp!36720 () Bool)

(declare-fun e!258708 () Bool)

(assert (=> mapNonEmpty!18945 (= mapRes!18945 (and tp!36720 e!258708))))

(declare-fun mapKey!18945 () (_ BitVec 32))

(declare-fun mapValue!18945 () ValueCell!5431)

(declare-fun mapRest!18945 () (Array (_ BitVec 32) ValueCell!5431))

(assert (=> mapNonEmpty!18945 (= (arr!12893 _values!549) (store mapRest!18945 mapKey!18945 mapValue!18945))))

(declare-fun b!438693 () Bool)

(declare-fun e!258704 () Bool)

(declare-fun tp_is_empty!11549 () Bool)

(assert (=> b!438693 (= e!258704 tp_is_empty!11549)))

(declare-fun b!438694 () Bool)

(assert (=> b!438694 (= e!258708 tp_is_empty!11549)))

(declare-fun b!438695 () Bool)

(declare-fun res!259197 () Bool)

(assert (=> b!438695 (=> (not res!259197) (not e!258703))))

(assert (=> b!438695 (= res!259197 (or (= (select (arr!12892 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12892 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438696 () Bool)

(declare-fun e!258706 () Bool)

(assert (=> b!438696 (= e!258706 (and e!258704 mapRes!18945))))

(declare-fun condMapEmpty!18945 () Bool)

(declare-fun mapDefault!18945 () ValueCell!5431)

