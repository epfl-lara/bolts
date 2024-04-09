; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40104 () Bool)

(assert start!40104)

(declare-fun b_free!10363 () Bool)

(declare-fun b_next!10363 () Bool)

(assert (=> start!40104 (= b_free!10363 (not b_next!10363))))

(declare-fun tp!36617 () Bool)

(declare-fun b_and!18349 () Bool)

(assert (=> start!40104 (= tp!36617 b_and!18349)))

(declare-fun b!437873 () Bool)

(declare-fun e!258350 () Bool)

(declare-fun e!258351 () Bool)

(assert (=> b!437873 (= e!258350 e!258351)))

(declare-fun res!258528 () Bool)

(assert (=> b!437873 (=> (not res!258528) (not e!258351))))

(declare-datatypes ((array!26827 0))(
  ( (array!26828 (arr!12860 (Array (_ BitVec 32) (_ BitVec 64))) (size!13212 (_ BitVec 32))) )
))
(declare-fun lt!201807 () array!26827)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26827 (_ BitVec 32)) Bool)

(assert (=> b!437873 (= res!258528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201807 mask!1025))))

(declare-fun _keys!709 () array!26827)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!437873 (= lt!201807 (array!26828 (store (arr!12860 _keys!709) i!563 k!794) (size!13212 _keys!709)))))

(declare-fun b!437874 () Bool)

(declare-fun res!258532 () Bool)

(assert (=> b!437874 (=> (not res!258532) (not e!258350))))

(declare-fun arrayContainsKey!0 (array!26827 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!437874 (= res!258532 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!437875 () Bool)

(declare-fun res!258531 () Bool)

(assert (=> b!437875 (=> (not res!258531) (not e!258350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!437875 (= res!258531 (validMask!0 mask!1025))))

(declare-fun b!437876 () Bool)

(declare-fun e!258347 () Bool)

(declare-fun tp_is_empty!11515 () Bool)

(assert (=> b!437876 (= e!258347 tp_is_empty!11515)))

(declare-fun b!437877 () Bool)

(declare-fun e!258348 () Bool)

(assert (=> b!437877 (= e!258351 e!258348)))

(declare-fun res!258535 () Bool)

(assert (=> b!437877 (=> (not res!258535) (not e!258348))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!437877 (= res!258535 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((V!16459 0))(
  ( (V!16460 (val!5802 Int)) )
))
(declare-fun minValue!515 () V!16459)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16459)

(declare-datatypes ((tuple2!7622 0))(
  ( (tuple2!7623 (_1!3821 (_ BitVec 64)) (_2!3821 V!16459)) )
))
(declare-datatypes ((List!7666 0))(
  ( (Nil!7663) (Cons!7662 (h!8518 tuple2!7622) (t!13430 List!7666)) )
))
(declare-datatypes ((ListLongMap!6549 0))(
  ( (ListLongMap!6550 (toList!3290 List!7666)) )
))
(declare-fun lt!201803 () ListLongMap!6549)

(declare-datatypes ((ValueCell!5414 0))(
  ( (ValueCellFull!5414 (v!8045 V!16459)) (EmptyCell!5414) )
))
(declare-datatypes ((array!26829 0))(
  ( (array!26830 (arr!12861 (Array (_ BitVec 32) ValueCell!5414)) (size!13213 (_ BitVec 32))) )
))
(declare-fun lt!201805 () array!26829)

(declare-fun getCurrentListMapNoExtraKeys!1472 (array!26827 array!26829 (_ BitVec 32) (_ BitVec 32) V!16459 V!16459 (_ BitVec 32) Int) ListLongMap!6549)

(assert (=> b!437877 (= lt!201803 (getCurrentListMapNoExtraKeys!1472 lt!201807 lt!201805 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun _values!549 () array!26829)

(declare-fun v!412 () V!16459)

(assert (=> b!437877 (= lt!201805 (array!26830 (store (arr!12861 _values!549) i!563 (ValueCellFull!5414 v!412)) (size!13213 _values!549)))))

(declare-fun lt!201804 () ListLongMap!6549)

(assert (=> b!437877 (= lt!201804 (getCurrentListMapNoExtraKeys!1472 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!437878 () Bool)

(assert (=> b!437878 (= e!258348 (not true))))

(declare-fun +!1433 (ListLongMap!6549 tuple2!7622) ListLongMap!6549)

(assert (=> b!437878 (= (getCurrentListMapNoExtraKeys!1472 lt!201807 lt!201805 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1433 (getCurrentListMapNoExtraKeys!1472 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7623 k!794 v!412)))))

(declare-datatypes ((Unit!12981 0))(
  ( (Unit!12982) )
))
(declare-fun lt!201806 () Unit!12981)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!611 (array!26827 array!26829 (_ BitVec 32) (_ BitVec 32) V!16459 V!16459 (_ BitVec 32) (_ BitVec 64) V!16459 (_ BitVec 32) Int) Unit!12981)

(assert (=> b!437878 (= lt!201806 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!611 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun mapNonEmpty!18894 () Bool)

(declare-fun mapRes!18894 () Bool)

(declare-fun tp!36618 () Bool)

(assert (=> mapNonEmpty!18894 (= mapRes!18894 (and tp!36618 e!258347))))

(declare-fun mapKey!18894 () (_ BitVec 32))

(declare-fun mapValue!18894 () ValueCell!5414)

(declare-fun mapRest!18894 () (Array (_ BitVec 32) ValueCell!5414))

(assert (=> mapNonEmpty!18894 (= (arr!12861 _values!549) (store mapRest!18894 mapKey!18894 mapValue!18894))))

(declare-fun b!437879 () Bool)

(declare-fun res!258537 () Bool)

(assert (=> b!437879 (=> (not res!258537) (not e!258350))))

(assert (=> b!437879 (= res!258537 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13212 _keys!709))))))

(declare-fun b!437880 () Bool)

(declare-fun res!258536 () Bool)

(assert (=> b!437880 (=> (not res!258536) (not e!258351))))

(assert (=> b!437880 (= res!258536 (bvsle from!863 i!563))))

(declare-fun b!437881 () Bool)

(declare-fun res!258527 () Bool)

(assert (=> b!437881 (=> (not res!258527) (not e!258351))))

(declare-datatypes ((List!7667 0))(
  ( (Nil!7664) (Cons!7663 (h!8519 (_ BitVec 64)) (t!13431 List!7667)) )
))
(declare-fun arrayNoDuplicates!0 (array!26827 (_ BitVec 32) List!7667) Bool)

(assert (=> b!437881 (= res!258527 (arrayNoDuplicates!0 lt!201807 #b00000000000000000000000000000000 Nil!7664))))

(declare-fun b!437882 () Bool)

(declare-fun e!258352 () Bool)

(declare-fun e!258346 () Bool)

(assert (=> b!437882 (= e!258352 (and e!258346 mapRes!18894))))

(declare-fun condMapEmpty!18894 () Bool)

(declare-fun mapDefault!18894 () ValueCell!5414)

