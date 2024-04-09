; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40056 () Bool)

(assert start!40056)

(declare-fun b_free!10315 () Bool)

(declare-fun b_next!10315 () Bool)

(assert (=> start!40056 (= b_free!10315 (not b_next!10315))))

(declare-fun tp!36473 () Bool)

(declare-fun b_and!18301 () Bool)

(assert (=> start!40056 (= tp!36473 b_and!18301)))

(declare-fun res!257600 () Bool)

(declare-fun e!257845 () Bool)

(assert (=> start!40056 (=> (not res!257600) (not e!257845))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!26735 0))(
  ( (array!26736 (arr!12814 (Array (_ BitVec 32) (_ BitVec 64))) (size!13166 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26735)

(assert (=> start!40056 (= res!257600 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13166 _keys!709))))))

(assert (=> start!40056 e!257845))

(declare-fun tp_is_empty!11467 () Bool)

(assert (=> start!40056 tp_is_empty!11467))

(assert (=> start!40056 tp!36473))

(assert (=> start!40056 true))

(declare-datatypes ((V!16395 0))(
  ( (V!16396 (val!5778 Int)) )
))
(declare-datatypes ((ValueCell!5390 0))(
  ( (ValueCellFull!5390 (v!8021 V!16395)) (EmptyCell!5390) )
))
(declare-datatypes ((array!26737 0))(
  ( (array!26738 (arr!12815 (Array (_ BitVec 32) ValueCell!5390)) (size!13167 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26737)

(declare-fun e!257843 () Bool)

(declare-fun array_inv!9308 (array!26737) Bool)

(assert (=> start!40056 (and (array_inv!9308 _values!549) e!257843)))

(declare-fun array_inv!9309 (array!26735) Bool)

(assert (=> start!40056 (array_inv!9309 _keys!709)))

(declare-fun b!436721 () Bool)

(declare-fun res!257599 () Bool)

(assert (=> b!436721 (=> (not res!257599) (not e!257845))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!436721 (= res!257599 (and (= (size!13167 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13166 _keys!709) (size!13167 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!436722 () Bool)

(declare-fun e!257848 () Bool)

(assert (=> b!436722 (= e!257848 tp_is_empty!11467)))

(declare-fun b!436723 () Bool)

(declare-fun res!257596 () Bool)

(declare-fun e!257846 () Bool)

(assert (=> b!436723 (=> (not res!257596) (not e!257846))))

(declare-fun lt!201443 () array!26735)

(declare-datatypes ((List!7631 0))(
  ( (Nil!7628) (Cons!7627 (h!8483 (_ BitVec 64)) (t!13395 List!7631)) )
))
(declare-fun arrayNoDuplicates!0 (array!26735 (_ BitVec 32) List!7631) Bool)

(assert (=> b!436723 (= res!257596 (arrayNoDuplicates!0 lt!201443 #b00000000000000000000000000000000 Nil!7628))))

(declare-fun b!436724 () Bool)

(declare-fun res!257593 () Bool)

(assert (=> b!436724 (=> (not res!257593) (not e!257845))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26735 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!436724 (= res!257593 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!436725 () Bool)

(declare-fun res!257590 () Bool)

(assert (=> b!436725 (=> (not res!257590) (not e!257845))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!436725 (= res!257590 (validKeyInArray!0 k!794))))

(declare-fun b!436726 () Bool)

(declare-fun res!257595 () Bool)

(assert (=> b!436726 (=> (not res!257595) (not e!257845))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!436726 (= res!257595 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13166 _keys!709))))))

(declare-fun b!436727 () Bool)

(declare-fun res!257598 () Bool)

(assert (=> b!436727 (=> (not res!257598) (not e!257845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26735 (_ BitVec 32)) Bool)

(assert (=> b!436727 (= res!257598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!436728 () Bool)

(declare-fun res!257589 () Bool)

(assert (=> b!436728 (=> (not res!257589) (not e!257846))))

(assert (=> b!436728 (= res!257589 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18822 () Bool)

(declare-fun mapRes!18822 () Bool)

(assert (=> mapIsEmpty!18822 mapRes!18822))

(declare-fun b!436729 () Bool)

(declare-fun res!257592 () Bool)

(assert (=> b!436729 (=> (not res!257592) (not e!257845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!436729 (= res!257592 (validMask!0 mask!1025))))

(declare-fun b!436730 () Bool)

(declare-fun e!257847 () Bool)

(assert (=> b!436730 (= e!257847 tp_is_empty!11467)))

(declare-fun b!436731 () Bool)

(assert (=> b!436731 (= e!257845 e!257846)))

(declare-fun res!257591 () Bool)

(assert (=> b!436731 (=> (not res!257591) (not e!257846))))

(assert (=> b!436731 (= res!257591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201443 mask!1025))))

(assert (=> b!436731 (= lt!201443 (array!26736 (store (arr!12814 _keys!709) i!563 k!794) (size!13166 _keys!709)))))

(declare-fun b!436732 () Bool)

(declare-fun res!257601 () Bool)

(assert (=> b!436732 (=> (not res!257601) (not e!257845))))

(assert (=> b!436732 (= res!257601 (or (= (select (arr!12814 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12814 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!436733 () Bool)

(declare-fun e!257844 () Bool)

(assert (=> b!436733 (= e!257846 e!257844)))

(declare-fun res!257594 () Bool)

(assert (=> b!436733 (=> (not res!257594) (not e!257844))))

(assert (=> b!436733 (= res!257594 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16395)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!201446 () array!26737)

(declare-datatypes ((tuple2!7588 0))(
  ( (tuple2!7589 (_1!3804 (_ BitVec 64)) (_2!3804 V!16395)) )
))
(declare-datatypes ((List!7632 0))(
  ( (Nil!7629) (Cons!7628 (h!8484 tuple2!7588) (t!13396 List!7632)) )
))
(declare-datatypes ((ListLongMap!6515 0))(
  ( (ListLongMap!6516 (toList!3273 List!7632)) )
))
(declare-fun lt!201444 () ListLongMap!6515)

(declare-fun zeroValue!515 () V!16395)

(declare-fun getCurrentListMapNoExtraKeys!1455 (array!26735 array!26737 (_ BitVec 32) (_ BitVec 32) V!16395 V!16395 (_ BitVec 32) Int) ListLongMap!6515)

(assert (=> b!436733 (= lt!201444 (getCurrentListMapNoExtraKeys!1455 lt!201443 lt!201446 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16395)

(assert (=> b!436733 (= lt!201446 (array!26738 (store (arr!12815 _values!549) i!563 (ValueCellFull!5390 v!412)) (size!13167 _values!549)))))

(declare-fun lt!201445 () ListLongMap!6515)

(assert (=> b!436733 (= lt!201445 (getCurrentListMapNoExtraKeys!1455 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!436734 () Bool)

(declare-fun res!257597 () Bool)

(assert (=> b!436734 (=> (not res!257597) (not e!257845))))

(assert (=> b!436734 (= res!257597 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7628))))

(declare-fun mapNonEmpty!18822 () Bool)

(declare-fun tp!36474 () Bool)

(assert (=> mapNonEmpty!18822 (= mapRes!18822 (and tp!36474 e!257848))))

(declare-fun mapKey!18822 () (_ BitVec 32))

(declare-fun mapRest!18822 () (Array (_ BitVec 32) ValueCell!5390))

(declare-fun mapValue!18822 () ValueCell!5390)

(assert (=> mapNonEmpty!18822 (= (arr!12815 _values!549) (store mapRest!18822 mapKey!18822 mapValue!18822))))

(declare-fun b!436735 () Bool)

(assert (=> b!436735 (= e!257844 (not true))))

(declare-fun +!1417 (ListLongMap!6515 tuple2!7588) ListLongMap!6515)

(assert (=> b!436735 (= (getCurrentListMapNoExtraKeys!1455 lt!201443 lt!201446 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1417 (getCurrentListMapNoExtraKeys!1455 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7589 k!794 v!412)))))

(declare-datatypes ((Unit!12949 0))(
  ( (Unit!12950) )
))
(declare-fun lt!201447 () Unit!12949)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!595 (array!26735 array!26737 (_ BitVec 32) (_ BitVec 32) V!16395 V!16395 (_ BitVec 32) (_ BitVec 64) V!16395 (_ BitVec 32) Int) Unit!12949)

(assert (=> b!436735 (= lt!201447 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!595 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!436736 () Bool)

(assert (=> b!436736 (= e!257843 (and e!257847 mapRes!18822))))

(declare-fun condMapEmpty!18822 () Bool)

(declare-fun mapDefault!18822 () ValueCell!5390)

