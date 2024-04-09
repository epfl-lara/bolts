; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37576 () Bool)

(assert start!37576)

(declare-fun b_free!8695 () Bool)

(declare-fun b_next!8695 () Bool)

(assert (=> start!37576 (= b_free!8695 (not b_next!8695))))

(declare-fun tp!30801 () Bool)

(declare-fun b_and!15955 () Bool)

(assert (=> start!37576 (= tp!30801 b_and!15955)))

(declare-fun b!383677 () Bool)

(declare-fun res!218609 () Bool)

(declare-fun e!233015 () Bool)

(assert (=> b!383677 (=> (not res!218609) (not e!233015))))

(declare-datatypes ((array!22577 0))(
  ( (array!22578 (arr!10754 (Array (_ BitVec 32) (_ BitVec 64))) (size!11106 (_ BitVec 32))) )
))
(declare-fun lt!180420 () array!22577)

(declare-datatypes ((List!6169 0))(
  ( (Nil!6166) (Cons!6165 (h!7021 (_ BitVec 64)) (t!11327 List!6169)) )
))
(declare-fun arrayNoDuplicates!0 (array!22577 (_ BitVec 32) List!6169) Bool)

(assert (=> b!383677 (= res!218609 (arrayNoDuplicates!0 lt!180420 #b00000000000000000000000000000000 Nil!6166))))

(declare-fun b!383678 () Bool)

(declare-fun e!233016 () Bool)

(assert (=> b!383678 (= e!233016 true)))

(declare-datatypes ((V!13563 0))(
  ( (V!13564 (val!4716 Int)) )
))
(declare-datatypes ((tuple2!6300 0))(
  ( (tuple2!6301 (_1!3160 (_ BitVec 64)) (_2!3160 V!13563)) )
))
(declare-datatypes ((List!6170 0))(
  ( (Nil!6167) (Cons!6166 (h!7022 tuple2!6300) (t!11328 List!6170)) )
))
(declare-datatypes ((ListLongMap!5227 0))(
  ( (ListLongMap!5228 (toList!2629 List!6170)) )
))
(declare-fun lt!180426 () ListLongMap!5227)

(declare-fun lt!180417 () ListLongMap!5227)

(declare-fun lt!180419 () tuple2!6300)

(declare-fun +!965 (ListLongMap!5227 tuple2!6300) ListLongMap!5227)

(assert (=> b!383678 (= lt!180426 (+!965 lt!180417 lt!180419))))

(declare-fun lt!180422 () ListLongMap!5227)

(declare-fun lt!180427 () ListLongMap!5227)

(assert (=> b!383678 (= lt!180422 lt!180427)))

(declare-fun mapNonEmpty!15579 () Bool)

(declare-fun mapRes!15579 () Bool)

(declare-fun tp!30800 () Bool)

(declare-fun e!233010 () Bool)

(assert (=> mapNonEmpty!15579 (= mapRes!15579 (and tp!30800 e!233010))))

(declare-datatypes ((ValueCell!4328 0))(
  ( (ValueCellFull!4328 (v!6909 V!13563)) (EmptyCell!4328) )
))
(declare-fun mapRest!15579 () (Array (_ BitVec 32) ValueCell!4328))

(declare-datatypes ((array!22579 0))(
  ( (array!22580 (arr!10755 (Array (_ BitVec 32) ValueCell!4328)) (size!11107 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22579)

(declare-fun mapKey!15579 () (_ BitVec 32))

(declare-fun mapValue!15579 () ValueCell!4328)

(assert (=> mapNonEmpty!15579 (= (arr!10755 _values!506) (store mapRest!15579 mapKey!15579 mapValue!15579))))

(declare-fun b!383679 () Bool)

(declare-fun res!218612 () Bool)

(declare-fun e!233014 () Bool)

(assert (=> b!383679 (=> (not res!218612) (not e!233014))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383679 (= res!218612 (validKeyInArray!0 k!778))))

(declare-fun b!383680 () Bool)

(declare-fun res!218608 () Bool)

(assert (=> b!383680 (=> (not res!218608) (not e!233014))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!22577)

(assert (=> b!383680 (= res!218608 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11106 _keys!658))))))

(declare-fun mapIsEmpty!15579 () Bool)

(assert (=> mapIsEmpty!15579 mapRes!15579))

(declare-fun b!383681 () Bool)

(declare-fun tp_is_empty!9343 () Bool)

(assert (=> b!383681 (= e!233010 tp_is_empty!9343)))

(declare-fun res!218611 () Bool)

(assert (=> start!37576 (=> (not res!218611) (not e!233014))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37576 (= res!218611 (validMask!0 mask!970))))

(assert (=> start!37576 e!233014))

(declare-fun e!233012 () Bool)

(declare-fun array_inv!7898 (array!22579) Bool)

(assert (=> start!37576 (and (array_inv!7898 _values!506) e!233012)))

(assert (=> start!37576 tp!30801))

(assert (=> start!37576 true))

(assert (=> start!37576 tp_is_empty!9343))

(declare-fun array_inv!7899 (array!22577) Bool)

(assert (=> start!37576 (array_inv!7899 _keys!658)))

(declare-fun b!383682 () Bool)

(assert (=> b!383682 (= e!233015 (not e!233016))))

(declare-fun res!218605 () Bool)

(assert (=> b!383682 (=> res!218605 e!233016)))

(declare-fun lt!180421 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383682 (= res!218605 (or (and (not lt!180421) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180421) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180421)))))

(assert (=> b!383682 (= lt!180421 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13563)

(declare-fun minValue!472 () V!13563)

(declare-fun getCurrentListMap!2046 (array!22577 array!22579 (_ BitVec 32) (_ BitVec 32) V!13563 V!13563 (_ BitVec 32) Int) ListLongMap!5227)

(assert (=> b!383682 (= lt!180417 (getCurrentListMap!2046 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180425 () array!22579)

(assert (=> b!383682 (= lt!180422 (getCurrentListMap!2046 lt!180420 lt!180425 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180424 () ListLongMap!5227)

(assert (=> b!383682 (and (= lt!180427 lt!180424) (= lt!180424 lt!180427))))

(declare-fun lt!180418 () ListLongMap!5227)

(assert (=> b!383682 (= lt!180424 (+!965 lt!180418 lt!180419))))

(declare-fun v!373 () V!13563)

(assert (=> b!383682 (= lt!180419 (tuple2!6301 k!778 v!373))))

(declare-datatypes ((Unit!11821 0))(
  ( (Unit!11822) )
))
(declare-fun lt!180423 () Unit!11821)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!197 (array!22577 array!22579 (_ BitVec 32) (_ BitVec 32) V!13563 V!13563 (_ BitVec 32) (_ BitVec 64) V!13563 (_ BitVec 32) Int) Unit!11821)

(assert (=> b!383682 (= lt!180423 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!197 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!864 (array!22577 array!22579 (_ BitVec 32) (_ BitVec 32) V!13563 V!13563 (_ BitVec 32) Int) ListLongMap!5227)

(assert (=> b!383682 (= lt!180427 (getCurrentListMapNoExtraKeys!864 lt!180420 lt!180425 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383682 (= lt!180425 (array!22580 (store (arr!10755 _values!506) i!548 (ValueCellFull!4328 v!373)) (size!11107 _values!506)))))

(assert (=> b!383682 (= lt!180418 (getCurrentListMapNoExtraKeys!864 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383683 () Bool)

(declare-fun res!218606 () Bool)

(assert (=> b!383683 (=> (not res!218606) (not e!233014))))

(assert (=> b!383683 (= res!218606 (and (= (size!11107 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11106 _keys!658) (size!11107 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383684 () Bool)

(declare-fun res!218614 () Bool)

(assert (=> b!383684 (=> (not res!218614) (not e!233014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22577 (_ BitVec 32)) Bool)

(assert (=> b!383684 (= res!218614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383685 () Bool)

(declare-fun res!218610 () Bool)

(assert (=> b!383685 (=> (not res!218610) (not e!233014))))

(assert (=> b!383685 (= res!218610 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6166))))

(declare-fun b!383686 () Bool)

(declare-fun e!233013 () Bool)

(assert (=> b!383686 (= e!233012 (and e!233013 mapRes!15579))))

(declare-fun condMapEmpty!15579 () Bool)

(declare-fun mapDefault!15579 () ValueCell!4328)

