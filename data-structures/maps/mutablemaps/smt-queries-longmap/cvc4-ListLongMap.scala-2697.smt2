; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40012 () Bool)

(assert start!40012)

(declare-fun b_free!10271 () Bool)

(declare-fun b_next!10271 () Bool)

(assert (=> start!40012 (= b_free!10271 (not b_next!10271))))

(declare-fun tp!36342 () Bool)

(declare-fun b_and!18219 () Bool)

(assert (=> start!40012 (= tp!36342 b_and!18219)))

(declare-fun b!435407 () Bool)

(declare-fun e!257224 () Bool)

(declare-fun e!257223 () Bool)

(assert (=> b!435407 (= e!257224 e!257223)))

(declare-fun res!256623 () Bool)

(assert (=> b!435407 (=> res!256623 e!257223)))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26649 0))(
  ( (array!26650 (arr!12771 (Array (_ BitVec 32) (_ BitVec 64))) (size!13123 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26649)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!435407 (= res!256623 (= k!794 (select (arr!12771 _keys!709) from!863)))))

(assert (=> b!435407 (not (= (select (arr!12771 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12891 0))(
  ( (Unit!12892) )
))
(declare-fun lt!200572 () Unit!12891)

(declare-fun e!257218 () Unit!12891)

(assert (=> b!435407 (= lt!200572 e!257218)))

(declare-fun c!55667 () Bool)

(assert (=> b!435407 (= c!55667 (= (select (arr!12771 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16335 0))(
  ( (V!16336 (val!5756 Int)) )
))
(declare-datatypes ((tuple2!7554 0))(
  ( (tuple2!7555 (_1!3787 (_ BitVec 64)) (_2!3787 V!16335)) )
))
(declare-datatypes ((List!7599 0))(
  ( (Nil!7596) (Cons!7595 (h!8451 tuple2!7554) (t!13327 List!7599)) )
))
(declare-datatypes ((ListLongMap!6481 0))(
  ( (ListLongMap!6482 (toList!3256 List!7599)) )
))
(declare-fun lt!200575 () ListLongMap!6481)

(declare-fun lt!200566 () ListLongMap!6481)

(assert (=> b!435407 (= lt!200575 lt!200566)))

(declare-fun lt!200569 () ListLongMap!6481)

(declare-fun lt!200565 () tuple2!7554)

(declare-fun +!1401 (ListLongMap!6481 tuple2!7554) ListLongMap!6481)

(assert (=> b!435407 (= lt!200566 (+!1401 lt!200569 lt!200565))))

(declare-fun lt!200571 () V!16335)

(assert (=> b!435407 (= lt!200565 (tuple2!7555 (select (arr!12771 _keys!709) from!863) lt!200571))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5368 0))(
  ( (ValueCellFull!5368 (v!7999 V!16335)) (EmptyCell!5368) )
))
(declare-datatypes ((array!26651 0))(
  ( (array!26652 (arr!12772 (Array (_ BitVec 32) ValueCell!5368)) (size!13124 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26651)

(declare-fun get!6372 (ValueCell!5368 V!16335) V!16335)

(declare-fun dynLambda!829 (Int (_ BitVec 64)) V!16335)

(assert (=> b!435407 (= lt!200571 (get!6372 (select (arr!12772 _values!549) from!863) (dynLambda!829 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435408 () Bool)

(declare-fun res!256624 () Bool)

(declare-fun e!257215 () Bool)

(assert (=> b!435408 (=> (not res!256624) (not e!257215))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!435408 (= res!256624 (and (= (size!13124 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13123 _keys!709) (size!13124 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!435409 () Bool)

(assert (=> b!435409 (= e!257223 true)))

(declare-fun lt!200574 () tuple2!7554)

(declare-fun lt!200576 () ListLongMap!6481)

(assert (=> b!435409 (= lt!200566 (+!1401 (+!1401 lt!200576 lt!200565) lt!200574))))

(declare-fun lt!200568 () Unit!12891)

(declare-fun v!412 () V!16335)

(declare-fun addCommutativeForDiffKeys!406 (ListLongMap!6481 (_ BitVec 64) V!16335 (_ BitVec 64) V!16335) Unit!12891)

(assert (=> b!435409 (= lt!200568 (addCommutativeForDiffKeys!406 lt!200576 k!794 v!412 (select (arr!12771 _keys!709) from!863) lt!200571))))

(declare-fun b!435410 () Bool)

(declare-fun res!256631 () Bool)

(assert (=> b!435410 (=> (not res!256631) (not e!257215))))

(declare-datatypes ((List!7600 0))(
  ( (Nil!7597) (Cons!7596 (h!8452 (_ BitVec 64)) (t!13328 List!7600)) )
))
(declare-fun arrayNoDuplicates!0 (array!26649 (_ BitVec 32) List!7600) Bool)

(assert (=> b!435410 (= res!256631 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7597))))

(declare-fun b!435411 () Bool)

(declare-fun res!256621 () Bool)

(assert (=> b!435411 (=> (not res!256621) (not e!257215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!435411 (= res!256621 (validMask!0 mask!1025))))

(declare-fun b!435412 () Bool)

(declare-fun e!257219 () Bool)

(assert (=> b!435412 (= e!257215 e!257219)))

(declare-fun res!256629 () Bool)

(assert (=> b!435412 (=> (not res!256629) (not e!257219))))

(declare-fun lt!200564 () array!26649)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26649 (_ BitVec 32)) Bool)

(assert (=> b!435412 (= res!256629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!200564 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!435412 (= lt!200564 (array!26650 (store (arr!12771 _keys!709) i!563 k!794) (size!13123 _keys!709)))))

(declare-fun b!435413 () Bool)

(declare-fun res!256630 () Bool)

(assert (=> b!435413 (=> (not res!256630) (not e!257219))))

(assert (=> b!435413 (= res!256630 (arrayNoDuplicates!0 lt!200564 #b00000000000000000000000000000000 Nil!7597))))

(declare-fun b!435414 () Bool)

(declare-fun res!256628 () Bool)

(assert (=> b!435414 (=> (not res!256628) (not e!257215))))

(assert (=> b!435414 (= res!256628 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13123 _keys!709))))))

(declare-fun b!435415 () Bool)

(declare-fun e!257221 () Bool)

(assert (=> b!435415 (= e!257221 (not e!257224))))

(declare-fun res!256625 () Bool)

(assert (=> b!435415 (=> res!256625 e!257224)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435415 (= res!256625 (not (validKeyInArray!0 (select (arr!12771 _keys!709) from!863))))))

(declare-fun lt!200567 () ListLongMap!6481)

(assert (=> b!435415 (= lt!200567 lt!200569)))

(assert (=> b!435415 (= lt!200569 (+!1401 lt!200576 lt!200574))))

(declare-fun minValue!515 () V!16335)

(declare-fun zeroValue!515 () V!16335)

(declare-fun lt!200577 () array!26651)

(declare-fun getCurrentListMapNoExtraKeys!1440 (array!26649 array!26651 (_ BitVec 32) (_ BitVec 32) V!16335 V!16335 (_ BitVec 32) Int) ListLongMap!6481)

(assert (=> b!435415 (= lt!200567 (getCurrentListMapNoExtraKeys!1440 lt!200564 lt!200577 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!435415 (= lt!200574 (tuple2!7555 k!794 v!412))))

(assert (=> b!435415 (= lt!200576 (getCurrentListMapNoExtraKeys!1440 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!200573 () Unit!12891)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!581 (array!26649 array!26651 (_ BitVec 32) (_ BitVec 32) V!16335 V!16335 (_ BitVec 32) (_ BitVec 64) V!16335 (_ BitVec 32) Int) Unit!12891)

(assert (=> b!435415 (= lt!200573 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!581 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!435416 () Bool)

(declare-fun Unit!12893 () Unit!12891)

(assert (=> b!435416 (= e!257218 Unit!12893)))

(declare-fun lt!200570 () Unit!12891)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26649 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12891)

(assert (=> b!435416 (= lt!200570 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!435416 false))

(declare-fun b!435417 () Bool)

(declare-fun e!257222 () Bool)

(declare-fun tp_is_empty!11423 () Bool)

(assert (=> b!435417 (= e!257222 tp_is_empty!11423)))

(declare-fun b!435418 () Bool)

(declare-fun e!257217 () Bool)

(declare-fun mapRes!18756 () Bool)

(assert (=> b!435418 (= e!257217 (and e!257222 mapRes!18756))))

(declare-fun condMapEmpty!18756 () Bool)

(declare-fun mapDefault!18756 () ValueCell!5368)

