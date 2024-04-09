; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40128 () Bool)

(assert start!40128)

(declare-fun b_free!10387 () Bool)

(declare-fun b_next!10387 () Bool)

(assert (=> start!40128 (= b_free!10387 (not b_next!10387))))

(declare-fun tp!36689 () Bool)

(declare-fun b_and!18373 () Bool)

(assert (=> start!40128 (= tp!36689 b_and!18373)))

(declare-fun b!438449 () Bool)

(declare-fun res!259004 () Bool)

(declare-fun e!258599 () Bool)

(assert (=> b!438449 (=> (not res!259004) (not e!258599))))

(declare-fun i!563 () (_ BitVec 32))

(declare-datatypes ((array!26871 0))(
  ( (array!26872 (arr!12882 (Array (_ BitVec 32) (_ BitVec 64))) (size!13234 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26871)

(assert (=> b!438449 (= res!259004 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13234 _keys!709))))))

(declare-fun b!438450 () Bool)

(declare-fun e!258602 () Bool)

(assert (=> b!438450 (= e!258602 (not true))))

(declare-datatypes ((V!16491 0))(
  ( (V!16492 (val!5814 Int)) )
))
(declare-fun minValue!515 () V!16491)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((ValueCell!5426 0))(
  ( (ValueCellFull!5426 (v!8057 V!16491)) (EmptyCell!5426) )
))
(declare-datatypes ((array!26873 0))(
  ( (array!26874 (arr!12883 (Array (_ BitVec 32) ValueCell!5426)) (size!13235 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26873)

(declare-fun zeroValue!515 () V!16491)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!201985 () array!26871)

(declare-fun v!412 () V!16491)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!201987 () array!26873)

(declare-datatypes ((tuple2!7642 0))(
  ( (tuple2!7643 (_1!3831 (_ BitVec 64)) (_2!3831 V!16491)) )
))
(declare-datatypes ((List!7684 0))(
  ( (Nil!7681) (Cons!7680 (h!8536 tuple2!7642) (t!13448 List!7684)) )
))
(declare-datatypes ((ListLongMap!6569 0))(
  ( (ListLongMap!6570 (toList!3300 List!7684)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1482 (array!26871 array!26873 (_ BitVec 32) (_ BitVec 32) V!16491 V!16491 (_ BitVec 32) Int) ListLongMap!6569)

(declare-fun +!1440 (ListLongMap!6569 tuple2!7642) ListLongMap!6569)

(assert (=> b!438450 (= (getCurrentListMapNoExtraKeys!1482 lt!201985 lt!201987 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1440 (getCurrentListMapNoExtraKeys!1482 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!7643 k!794 v!412)))))

(declare-datatypes ((Unit!12995 0))(
  ( (Unit!12996) )
))
(declare-fun lt!201983 () Unit!12995)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!618 (array!26871 array!26873 (_ BitVec 32) (_ BitVec 32) V!16491 V!16491 (_ BitVec 32) (_ BitVec 64) V!16491 (_ BitVec 32) Int) Unit!12995)

(assert (=> b!438450 (= lt!201983 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!618 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!438451 () Bool)

(declare-fun res!258995 () Bool)

(assert (=> b!438451 (=> (not res!258995) (not e!258599))))

(declare-fun arrayContainsKey!0 (array!26871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!438451 (= res!258995 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!438452 () Bool)

(declare-fun e!258598 () Bool)

(assert (=> b!438452 (= e!258598 e!258602)))

(declare-fun res!259003 () Bool)

(assert (=> b!438452 (=> (not res!259003) (not e!258602))))

(assert (=> b!438452 (= res!259003 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!201986 () ListLongMap!6569)

(assert (=> b!438452 (= lt!201986 (getCurrentListMapNoExtraKeys!1482 lt!201985 lt!201987 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!438452 (= lt!201987 (array!26874 (store (arr!12883 _values!549) i!563 (ValueCellFull!5426 v!412)) (size!13235 _values!549)))))

(declare-fun lt!201984 () ListLongMap!6569)

(assert (=> b!438452 (= lt!201984 (getCurrentListMapNoExtraKeys!1482 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!438453 () Bool)

(declare-fun res!258993 () Bool)

(assert (=> b!438453 (=> (not res!258993) (not e!258598))))

(declare-datatypes ((List!7685 0))(
  ( (Nil!7682) (Cons!7681 (h!8537 (_ BitVec 64)) (t!13449 List!7685)) )
))
(declare-fun arrayNoDuplicates!0 (array!26871 (_ BitVec 32) List!7685) Bool)

(assert (=> b!438453 (= res!258993 (arrayNoDuplicates!0 lt!201985 #b00000000000000000000000000000000 Nil!7682))))

(declare-fun mapIsEmpty!18930 () Bool)

(declare-fun mapRes!18930 () Bool)

(assert (=> mapIsEmpty!18930 mapRes!18930))

(declare-fun b!438454 () Bool)

(declare-fun res!259000 () Bool)

(assert (=> b!438454 (=> (not res!259000) (not e!258599))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26871 (_ BitVec 32)) Bool)

(assert (=> b!438454 (= res!259000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!438455 () Bool)

(declare-fun e!258603 () Bool)

(declare-fun tp_is_empty!11539 () Bool)

(assert (=> b!438455 (= e!258603 tp_is_empty!11539)))

(declare-fun b!438456 () Bool)

(declare-fun res!259005 () Bool)

(assert (=> b!438456 (=> (not res!259005) (not e!258599))))

(assert (=> b!438456 (= res!259005 (and (= (size!13235 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13234 _keys!709) (size!13235 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!438457 () Bool)

(assert (=> b!438457 (= e!258599 e!258598)))

(declare-fun res!258996 () Bool)

(assert (=> b!438457 (=> (not res!258996) (not e!258598))))

(assert (=> b!438457 (= res!258996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!201985 mask!1025))))

(assert (=> b!438457 (= lt!201985 (array!26872 (store (arr!12882 _keys!709) i!563 k!794) (size!13234 _keys!709)))))

(declare-fun b!438458 () Bool)

(declare-fun res!258994 () Bool)

(assert (=> b!438458 (=> (not res!258994) (not e!258598))))

(assert (=> b!438458 (= res!258994 (bvsle from!863 i!563))))

(declare-fun b!438459 () Bool)

(declare-fun res!258999 () Bool)

(assert (=> b!438459 (=> (not res!258999) (not e!258599))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!438459 (= res!258999 (validKeyInArray!0 k!794))))

(declare-fun b!438460 () Bool)

(declare-fun e!258600 () Bool)

(assert (=> b!438460 (= e!258600 tp_is_empty!11539)))

(declare-fun mapNonEmpty!18930 () Bool)

(declare-fun tp!36690 () Bool)

(assert (=> mapNonEmpty!18930 (= mapRes!18930 (and tp!36690 e!258600))))

(declare-fun mapValue!18930 () ValueCell!5426)

(declare-fun mapRest!18930 () (Array (_ BitVec 32) ValueCell!5426))

(declare-fun mapKey!18930 () (_ BitVec 32))

(assert (=> mapNonEmpty!18930 (= (arr!12883 _values!549) (store mapRest!18930 mapKey!18930 mapValue!18930))))

(declare-fun res!259002 () Bool)

(assert (=> start!40128 (=> (not res!259002) (not e!258599))))

(assert (=> start!40128 (= res!259002 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13234 _keys!709))))))

(assert (=> start!40128 e!258599))

(assert (=> start!40128 tp_is_empty!11539))

(assert (=> start!40128 tp!36689))

(assert (=> start!40128 true))

(declare-fun e!258601 () Bool)

(declare-fun array_inv!9350 (array!26873) Bool)

(assert (=> start!40128 (and (array_inv!9350 _values!549) e!258601)))

(declare-fun array_inv!9351 (array!26871) Bool)

(assert (=> start!40128 (array_inv!9351 _keys!709)))

(declare-fun b!438461 () Bool)

(assert (=> b!438461 (= e!258601 (and e!258603 mapRes!18930))))

(declare-fun condMapEmpty!18930 () Bool)

(declare-fun mapDefault!18930 () ValueCell!5426)

