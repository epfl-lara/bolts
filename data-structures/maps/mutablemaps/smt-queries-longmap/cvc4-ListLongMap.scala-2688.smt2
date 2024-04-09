; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39958 () Bool)

(assert start!39958)

(declare-fun b_free!10217 () Bool)

(declare-fun b_next!10217 () Bool)

(assert (=> start!39958 (= b_free!10217 (not b_next!10217))))

(declare-fun tp!36179 () Bool)

(declare-fun b_and!18111 () Bool)

(assert (=> start!39958 (= tp!36179 b_and!18111)))

(declare-fun b!433733 () Bool)

(declare-datatypes ((Unit!12808 0))(
  ( (Unit!12809) )
))
(declare-fun e!256405 () Unit!12808)

(declare-fun Unit!12810 () Unit!12808)

(assert (=> b!433733 (= e!256405 Unit!12810)))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26547 0))(
  ( (array!26548 (arr!12720 (Array (_ BitVec 32) (_ BitVec 64))) (size!13072 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26547)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lt!199353 () Unit!12808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26547 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12808)

(assert (=> b!433733 (= lt!199353 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!433733 false))

(declare-fun mapIsEmpty!18675 () Bool)

(declare-fun mapRes!18675 () Bool)

(assert (=> mapIsEmpty!18675 mapRes!18675))

(declare-fun b!433734 () Bool)

(declare-fun res!255414 () Bool)

(declare-fun e!256413 () Bool)

(assert (=> b!433734 (=> (not res!255414) (not e!256413))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!433734 (= res!255414 (validMask!0 mask!1025))))

(declare-fun b!433735 () Bool)

(declare-fun e!256406 () Bool)

(declare-fun e!256411 () Bool)

(assert (=> b!433735 (= e!256406 (not e!256411))))

(declare-fun res!255412 () Bool)

(assert (=> b!433735 (=> res!255412 e!256411)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!433735 (= res!255412 (not (validKeyInArray!0 (select (arr!12720 _keys!709) from!863))))))

(declare-datatypes ((V!16263 0))(
  ( (V!16264 (val!5729 Int)) )
))
(declare-datatypes ((tuple2!7508 0))(
  ( (tuple2!7509 (_1!3764 (_ BitVec 64)) (_2!3764 V!16263)) )
))
(declare-datatypes ((List!7557 0))(
  ( (Nil!7554) (Cons!7553 (h!8409 tuple2!7508) (t!13231 List!7557)) )
))
(declare-datatypes ((ListLongMap!6435 0))(
  ( (ListLongMap!6436 (toList!3233 List!7557)) )
))
(declare-fun lt!199352 () ListLongMap!6435)

(declare-fun lt!199349 () ListLongMap!6435)

(assert (=> b!433735 (= lt!199352 lt!199349)))

(declare-fun lt!199354 () ListLongMap!6435)

(declare-fun lt!199351 () tuple2!7508)

(declare-fun +!1379 (ListLongMap!6435 tuple2!7508) ListLongMap!6435)

(assert (=> b!433735 (= lt!199349 (+!1379 lt!199354 lt!199351))))

(declare-datatypes ((ValueCell!5341 0))(
  ( (ValueCellFull!5341 (v!7972 V!16263)) (EmptyCell!5341) )
))
(declare-datatypes ((array!26549 0))(
  ( (array!26550 (arr!12721 (Array (_ BitVec 32) ValueCell!5341)) (size!13073 (_ BitVec 32))) )
))
(declare-fun lt!199362 () array!26549)

(declare-fun minValue!515 () V!16263)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!199360 () array!26547)

(declare-fun zeroValue!515 () V!16263)

(declare-fun getCurrentListMapNoExtraKeys!1422 (array!26547 array!26549 (_ BitVec 32) (_ BitVec 32) V!16263 V!16263 (_ BitVec 32) Int) ListLongMap!6435)

(assert (=> b!433735 (= lt!199352 (getCurrentListMapNoExtraKeys!1422 lt!199360 lt!199362 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!16263)

(assert (=> b!433735 (= lt!199351 (tuple2!7509 k!794 v!412))))

(declare-fun _values!549 () array!26549)

(assert (=> b!433735 (= lt!199354 (getCurrentListMapNoExtraKeys!1422 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!199359 () Unit!12808)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!566 (array!26547 array!26549 (_ BitVec 32) (_ BitVec 32) V!16263 V!16263 (_ BitVec 32) (_ BitVec 64) V!16263 (_ BitVec 32) Int) Unit!12808)

(assert (=> b!433735 (= lt!199359 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!566 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!433736 () Bool)

(declare-fun e!256408 () Bool)

(assert (=> b!433736 (= e!256408 e!256406)))

(declare-fun res!255411 () Bool)

(assert (=> b!433736 (=> (not res!255411) (not e!256406))))

(assert (=> b!433736 (= res!255411 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!199348 () ListLongMap!6435)

(assert (=> b!433736 (= lt!199348 (getCurrentListMapNoExtraKeys!1422 lt!199360 lt!199362 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!433736 (= lt!199362 (array!26550 (store (arr!12721 _values!549) i!563 (ValueCellFull!5341 v!412)) (size!13073 _values!549)))))

(declare-fun lt!199357 () ListLongMap!6435)

(assert (=> b!433736 (= lt!199357 (getCurrentListMapNoExtraKeys!1422 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!433737 () Bool)

(declare-fun res!255408 () Bool)

(assert (=> b!433737 (=> (not res!255408) (not e!256408))))

(assert (=> b!433737 (= res!255408 (bvsle from!863 i!563))))

(declare-fun b!433738 () Bool)

(assert (=> b!433738 (= e!256413 e!256408)))

(declare-fun res!255409 () Bool)

(assert (=> b!433738 (=> (not res!255409) (not e!256408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26547 (_ BitVec 32)) Bool)

(assert (=> b!433738 (= res!255409 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!199360 mask!1025))))

(assert (=> b!433738 (= lt!199360 (array!26548 (store (arr!12720 _keys!709) i!563 k!794) (size!13072 _keys!709)))))

(declare-fun b!433739 () Bool)

(declare-fun res!255418 () Bool)

(assert (=> b!433739 (=> (not res!255418) (not e!256413))))

(assert (=> b!433739 (= res!255418 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13072 _keys!709))))))

(declare-fun b!433740 () Bool)

(declare-fun Unit!12811 () Unit!12808)

(assert (=> b!433740 (= e!256405 Unit!12811)))

(declare-fun b!433741 () Bool)

(declare-fun e!256410 () Bool)

(assert (=> b!433741 (= e!256411 e!256410)))

(declare-fun res!255413 () Bool)

(assert (=> b!433741 (=> res!255413 e!256410)))

(assert (=> b!433741 (= res!255413 (= k!794 (select (arr!12720 _keys!709) from!863)))))

(assert (=> b!433741 (not (= (select (arr!12720 _keys!709) from!863) k!794))))

(declare-fun lt!199356 () Unit!12808)

(assert (=> b!433741 (= lt!199356 e!256405)))

(declare-fun c!55586 () Bool)

(assert (=> b!433741 (= c!55586 (= (select (arr!12720 _keys!709) from!863) k!794))))

(declare-fun lt!199355 () ListLongMap!6435)

(assert (=> b!433741 (= lt!199348 lt!199355)))

(declare-fun lt!199358 () tuple2!7508)

(assert (=> b!433741 (= lt!199355 (+!1379 lt!199349 lt!199358))))

(declare-fun lt!199361 () V!16263)

(assert (=> b!433741 (= lt!199358 (tuple2!7509 (select (arr!12720 _keys!709) from!863) lt!199361))))

(declare-fun get!6336 (ValueCell!5341 V!16263) V!16263)

(declare-fun dynLambda!811 (Int (_ BitVec 64)) V!16263)

(assert (=> b!433741 (= lt!199361 (get!6336 (select (arr!12721 _values!549) from!863) (dynLambda!811 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433742 () Bool)

(declare-fun e!256414 () Bool)

(declare-fun tp_is_empty!11369 () Bool)

(assert (=> b!433742 (= e!256414 tp_is_empty!11369)))

(declare-fun b!433743 () Bool)

(declare-fun res!255416 () Bool)

(assert (=> b!433743 (=> (not res!255416) (not e!256413))))

(assert (=> b!433743 (= res!255416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!433744 () Bool)

(declare-fun res!255407 () Bool)

(assert (=> b!433744 (=> (not res!255407) (not e!256413))))

(assert (=> b!433744 (= res!255407 (validKeyInArray!0 k!794))))

(declare-fun res!255420 () Bool)

(assert (=> start!39958 (=> (not res!255420) (not e!256413))))

(assert (=> start!39958 (= res!255420 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13072 _keys!709))))))

(assert (=> start!39958 e!256413))

(assert (=> start!39958 tp_is_empty!11369))

(assert (=> start!39958 tp!36179))

(assert (=> start!39958 true))

(declare-fun e!256407 () Bool)

(declare-fun array_inv!9248 (array!26549) Bool)

(assert (=> start!39958 (and (array_inv!9248 _values!549) e!256407)))

(declare-fun array_inv!9249 (array!26547) Bool)

(assert (=> start!39958 (array_inv!9249 _keys!709)))

(declare-fun b!433745 () Bool)

(declare-fun res!255415 () Bool)

(assert (=> b!433745 (=> (not res!255415) (not e!256413))))

(assert (=> b!433745 (= res!255415 (and (= (size!13073 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13072 _keys!709) (size!13073 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!433746 () Bool)

(declare-fun e!256409 () Bool)

(assert (=> b!433746 (= e!256409 tp_is_empty!11369)))

(declare-fun b!433747 () Bool)

(declare-fun res!255419 () Bool)

(assert (=> b!433747 (=> (not res!255419) (not e!256413))))

(declare-fun arrayContainsKey!0 (array!26547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!433747 (= res!255419 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!433748 () Bool)

(assert (=> b!433748 (= e!256410 true)))

(assert (=> b!433748 (= lt!199355 (+!1379 (+!1379 lt!199354 lt!199358) lt!199351))))

(declare-fun lt!199350 () Unit!12808)

(declare-fun addCommutativeForDiffKeys!388 (ListLongMap!6435 (_ BitVec 64) V!16263 (_ BitVec 64) V!16263) Unit!12808)

(assert (=> b!433748 (= lt!199350 (addCommutativeForDiffKeys!388 lt!199354 k!794 v!412 (select (arr!12720 _keys!709) from!863) lt!199361))))

(declare-fun b!433749 () Bool)

(declare-fun res!255406 () Bool)

(assert (=> b!433749 (=> (not res!255406) (not e!256413))))

(assert (=> b!433749 (= res!255406 (or (= (select (arr!12720 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12720 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!433750 () Bool)

(declare-fun res!255417 () Bool)

(assert (=> b!433750 (=> (not res!255417) (not e!256408))))

(declare-datatypes ((List!7558 0))(
  ( (Nil!7555) (Cons!7554 (h!8410 (_ BitVec 64)) (t!13232 List!7558)) )
))
(declare-fun arrayNoDuplicates!0 (array!26547 (_ BitVec 32) List!7558) Bool)

(assert (=> b!433750 (= res!255417 (arrayNoDuplicates!0 lt!199360 #b00000000000000000000000000000000 Nil!7555))))

(declare-fun b!433751 () Bool)

(assert (=> b!433751 (= e!256407 (and e!256409 mapRes!18675))))

(declare-fun condMapEmpty!18675 () Bool)

(declare-fun mapDefault!18675 () ValueCell!5341)

