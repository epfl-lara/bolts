; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40126 () Bool)

(assert start!40126)

(declare-fun b_free!10385 () Bool)

(declare-fun b_next!10385 () Bool)

(assert (=> start!40126 (= b_free!10385 (not b_next!10385))))

(declare-fun tp!36683 () Bool)

(declare-fun b_and!18371 () Bool)

(assert (=> start!40126 (= tp!36683 b_and!18371)))

(declare-fun mapNonEmpty!18927 () Bool)

(declare-fun mapRes!18927 () Bool)

(declare-fun tp!36684 () Bool)

(declare-fun e!258579 () Bool)

(assert (=> mapNonEmpty!18927 (= mapRes!18927 (and tp!36684 e!258579))))

(declare-datatypes ((V!16487 0))(
  ( (V!16488 (val!5813 Int)) )
))
(declare-datatypes ((ValueCell!5425 0))(
  ( (ValueCellFull!5425 (v!8056 V!16487)) (EmptyCell!5425) )
))
(declare-fun mapValue!18927 () ValueCell!5425)

(declare-fun mapKey!18927 () (_ BitVec 32))

(declare-fun mapRest!18927 () (Array (_ BitVec 32) ValueCell!5425))

(declare-datatypes ((array!26867 0))(
  ( (array!26868 (arr!12880 (Array (_ BitVec 32) ValueCell!5425)) (size!13232 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26867)

(assert (=> mapNonEmpty!18927 (= (arr!12880 _values!549) (store mapRest!18927 mapKey!18927 mapValue!18927))))

(declare-fun b!438401 () Bool)

(declare-fun res!258964 () Bool)

(declare-fun e!258581 () Bool)

(assert (=> b!438401 (=> (not res!258964) (not e!258581))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!438401 (= res!258964 (validMask!0 mask!1025))))

(declare-fun b!438402 () Bool)

(declare-fun res!258954 () Bool)

(assert (=> b!438402 (=> (not res!258954) (not e!258581))))

(declare-datatypes ((array!26869 0))(
  ( (array!26870 (arr!12881 (Array (_ BitVec 32) (_ BitVec 64))) (size!13233 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26869)

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!438402 (= res!258954 (or (= (select (arr!12881 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12881 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!438403 () Bool)

(declare-fun res!258965 () Bool)

(assert (=> b!438403 (=> (not res!258965) (not e!258581))))

(assert (=> b!438403 (= res!258965 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13233 _keys!709))))))

(declare-fun b!438404 () Bool)

(declare-fun e!258580 () Bool)

(declare-fun e!258583 () Bool)

(assert (=> b!438404 (= e!258580 e!258583)))

(declare-fun res!258960 () Bool)

(assert (=> b!438404 (=> (not res!258960) (not e!258583))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!438404 (= res!258960 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((tuple2!7640 0))(
  ( (tuple2!7641 (_1!3830 (_ BitVec 64)) (_2!3830 V!16487)) )
))
(declare-datatypes ((List!7683 0))(
  ( (Nil!7680) (Cons!7679 (h!8535 tuple2!7640) (t!13447 List!7683)) )
))
(declare-datatypes ((ListLongMap!6567 0))(
  ( (ListLongMap!6568 (toList!3299 List!7683)) )
))
(declare-fun lt!201971 () ListLongMap!6567)

(declare-fun minValue!515 () V!16487)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!201969 () array!26867)

(declare-fun zeroValue!515 () V!16487)

(declare-fun lt!201968 () array!26869)

(declare-fun getCurrentListMapNoExtraKeys!1481 (array!26869 array!26867 (_ BitVec 32) (_ BitVec 32) V!16487 V!16487 (_ BitVec 32) Int) ListLongMap!6567)

(assert (=> b!438404 (= lt!201971 (getCurrentListMapNoExtraKeys!1481 lt!201968 lt!201969 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16487)

(assert (=> b!438404 (= lt!201969 (array!26868 (store (arr!12880 _values!549) i!563 (ValueCellFull!5425 v!412)) (size!13232 _values!549)))))

(declare-fun lt!201972 () ListLongMap!6567)

(assert (=> b!438404 (= lt!201972 (getCurrentListMapNoExtraKeys!1481 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438405 () Bool)

(declare-fun res!258955 () Bool)

(assert (=> b!438405 (=> (not res!258955) (not e!258581))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438405 (= res!258955 (validKeyInArray!0 k!794))))

(declare-fun b!438406 () Bool)

(declare-fun res!258959 () Bool)

(assert (=> b!438406 (=> (not res!258959) (not e!258580))))

(assert (=> b!438406 (= res!258959 (bvsle from!863 i!563))))

(declare-fun mapIsEmpty!18927 () Bool)

(assert (=> mapIsEmpty!18927 mapRes!18927))

(declare-fun b!438407 () Bool)

(declare-fun res!258962 () Bool)

(assert (=> b!438407 (=> (not res!258962) (not e!258581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26869 (_ BitVec 32)) Bool)

(assert (=> b!438407 (= res!258962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438409 () Bool)

(declare-fun e!258582 () Bool)

(declare-fun e!258577 () Bool)

(assert (=> b!438409 (= e!258582 (and e!258577 mapRes!18927))))

(declare-fun condMapEmpty!18927 () Bool)

(declare-fun mapDefault!18927 () ValueCell!5425)

