; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37522 () Bool)

(assert start!37522)

(declare-fun b_free!8641 () Bool)

(declare-fun b_next!8641 () Bool)

(assert (=> start!37522 (= b_free!8641 (not b_next!8641))))

(declare-fun tp!30639 () Bool)

(declare-fun b_and!15901 () Bool)

(assert (=> start!37522 (= tp!30639 b_and!15901)))

(declare-fun b!382543 () Bool)

(declare-fun e!232449 () Bool)

(declare-fun e!232445 () Bool)

(assert (=> b!382543 (= e!232449 e!232445)))

(declare-fun res!217714 () Bool)

(assert (=> b!382543 (=> (not res!217714) (not e!232445))))

(declare-datatypes ((array!22469 0))(
  ( (array!22470 (arr!10700 (Array (_ BitVec 32) (_ BitVec 64))) (size!11052 (_ BitVec 32))) )
))
(declare-fun lt!179578 () array!22469)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22469 (_ BitVec 32)) Bool)

(assert (=> b!382543 (= res!217714 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179578 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22469)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382543 (= lt!179578 (array!22470 (store (arr!10700 _keys!658) i!548 k!778) (size!11052 _keys!658)))))

(declare-fun b!382544 () Bool)

(declare-fun e!232446 () Bool)

(assert (=> b!382544 (= e!232446 true)))

(declare-datatypes ((V!13491 0))(
  ( (V!13492 (val!4689 Int)) )
))
(declare-datatypes ((tuple2!6256 0))(
  ( (tuple2!6257 (_1!3138 (_ BitVec 64)) (_2!3138 V!13491)) )
))
(declare-datatypes ((List!6124 0))(
  ( (Nil!6121) (Cons!6120 (h!6976 tuple2!6256) (t!11282 List!6124)) )
))
(declare-datatypes ((ListLongMap!5183 0))(
  ( (ListLongMap!5184 (toList!2607 List!6124)) )
))
(declare-fun lt!179579 () ListLongMap!5183)

(declare-fun lt!179577 () ListLongMap!5183)

(assert (=> b!382544 (= lt!179579 lt!179577)))

(declare-fun b!382545 () Bool)

(declare-fun res!217720 () Bool)

(assert (=> b!382545 (=> (not res!217720) (not e!232449))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4301 0))(
  ( (ValueCellFull!4301 (v!6882 V!13491)) (EmptyCell!4301) )
))
(declare-datatypes ((array!22471 0))(
  ( (array!22472 (arr!10701 (Array (_ BitVec 32) ValueCell!4301)) (size!11053 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22471)

(assert (=> b!382545 (= res!217720 (and (= (size!11053 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11052 _keys!658) (size!11053 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382546 () Bool)

(declare-fun res!217722 () Bool)

(assert (=> b!382546 (=> (not res!217722) (not e!232449))))

(assert (=> b!382546 (= res!217722 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11052 _keys!658))))))

(declare-fun b!382547 () Bool)

(declare-fun res!217721 () Bool)

(assert (=> b!382547 (=> (not res!217721) (not e!232449))))

(assert (=> b!382547 (= res!217721 (or (= (select (arr!10700 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10700 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15498 () Bool)

(declare-fun mapRes!15498 () Bool)

(assert (=> mapIsEmpty!15498 mapRes!15498))

(declare-fun b!382548 () Bool)

(declare-fun e!232447 () Bool)

(declare-fun tp_is_empty!9289 () Bool)

(assert (=> b!382548 (= e!232447 tp_is_empty!9289)))

(declare-fun b!382549 () Bool)

(assert (=> b!382549 (= e!232445 (not e!232446))))

(declare-fun res!217718 () Bool)

(assert (=> b!382549 (=> res!217718 e!232446)))

(declare-fun lt!179584 () Bool)

(assert (=> b!382549 (= res!217718 (or (and (not lt!179584) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179584) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179584)))))

(assert (=> b!382549 (= lt!179584 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13491)

(declare-fun lt!179583 () ListLongMap!5183)

(declare-fun minValue!472 () V!13491)

(declare-fun getCurrentListMap!2025 (array!22469 array!22471 (_ BitVec 32) (_ BitVec 32) V!13491 V!13491 (_ BitVec 32) Int) ListLongMap!5183)

(assert (=> b!382549 (= lt!179583 (getCurrentListMap!2025 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179582 () array!22471)

(assert (=> b!382549 (= lt!179579 (getCurrentListMap!2025 lt!179578 lt!179582 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179580 () ListLongMap!5183)

(assert (=> b!382549 (and (= lt!179577 lt!179580) (= lt!179580 lt!179577))))

(declare-fun v!373 () V!13491)

(declare-fun lt!179581 () ListLongMap!5183)

(declare-fun +!943 (ListLongMap!5183 tuple2!6256) ListLongMap!5183)

(assert (=> b!382549 (= lt!179580 (+!943 lt!179581 (tuple2!6257 k!778 v!373)))))

(declare-datatypes ((Unit!11779 0))(
  ( (Unit!11780) )
))
(declare-fun lt!179576 () Unit!11779)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!176 (array!22469 array!22471 (_ BitVec 32) (_ BitVec 32) V!13491 V!13491 (_ BitVec 32) (_ BitVec 64) V!13491 (_ BitVec 32) Int) Unit!11779)

(assert (=> b!382549 (= lt!179576 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!176 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!843 (array!22469 array!22471 (_ BitVec 32) (_ BitVec 32) V!13491 V!13491 (_ BitVec 32) Int) ListLongMap!5183)

(assert (=> b!382549 (= lt!179577 (getCurrentListMapNoExtraKeys!843 lt!179578 lt!179582 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382549 (= lt!179582 (array!22472 (store (arr!10701 _values!506) i!548 (ValueCellFull!4301 v!373)) (size!11053 _values!506)))))

(assert (=> b!382549 (= lt!179581 (getCurrentListMapNoExtraKeys!843 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!15498 () Bool)

(declare-fun tp!30638 () Bool)

(declare-fun e!232443 () Bool)

(assert (=> mapNonEmpty!15498 (= mapRes!15498 (and tp!30638 e!232443))))

(declare-fun mapKey!15498 () (_ BitVec 32))

(declare-fun mapValue!15498 () ValueCell!4301)

(declare-fun mapRest!15498 () (Array (_ BitVec 32) ValueCell!4301))

(assert (=> mapNonEmpty!15498 (= (arr!10701 _values!506) (store mapRest!15498 mapKey!15498 mapValue!15498))))

(declare-fun b!382550 () Bool)

(declare-fun e!232448 () Bool)

(assert (=> b!382550 (= e!232448 (and e!232447 mapRes!15498))))

(declare-fun condMapEmpty!15498 () Bool)

(declare-fun mapDefault!15498 () ValueCell!4301)

