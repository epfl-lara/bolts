; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37526 () Bool)

(assert start!37526)

(declare-fun b_free!8645 () Bool)

(declare-fun b_next!8645 () Bool)

(assert (=> start!37526 (= b_free!8645 (not b_next!8645))))

(declare-fun tp!30650 () Bool)

(declare-fun b_and!15905 () Bool)

(assert (=> start!37526 (= tp!30650 b_and!15905)))

(declare-fun b!382627 () Bool)

(declare-fun e!232485 () Bool)

(declare-fun e!232488 () Bool)

(assert (=> b!382627 (= e!232485 e!232488)))

(declare-fun res!217782 () Bool)

(assert (=> b!382627 (=> (not res!217782) (not e!232488))))

(declare-datatypes ((array!22477 0))(
  ( (array!22478 (arr!10704 (Array (_ BitVec 32) (_ BitVec 64))) (size!11056 (_ BitVec 32))) )
))
(declare-fun lt!179631 () array!22477)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22477 (_ BitVec 32)) Bool)

(assert (=> b!382627 (= res!217782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179631 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22477)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!382627 (= lt!179631 (array!22478 (store (arr!10704 _keys!658) i!548 k!778) (size!11056 _keys!658)))))

(declare-fun b!382628 () Bool)

(declare-fun res!217784 () Bool)

(assert (=> b!382628 (=> (not res!217784) (not e!232485))))

(declare-datatypes ((List!6127 0))(
  ( (Nil!6124) (Cons!6123 (h!6979 (_ BitVec 64)) (t!11285 List!6127)) )
))
(declare-fun arrayNoDuplicates!0 (array!22477 (_ BitVec 32) List!6127) Bool)

(assert (=> b!382628 (= res!217784 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6124))))

(declare-fun b!382629 () Bool)

(declare-fun res!217783 () Bool)

(assert (=> b!382629 (=> (not res!217783) (not e!232485))))

(assert (=> b!382629 (= res!217783 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11056 _keys!658))))))

(declare-fun res!217786 () Bool)

(assert (=> start!37526 (=> (not res!217786) (not e!232485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37526 (= res!217786 (validMask!0 mask!970))))

(assert (=> start!37526 e!232485))

(declare-datatypes ((V!13495 0))(
  ( (V!13496 (val!4691 Int)) )
))
(declare-datatypes ((ValueCell!4303 0))(
  ( (ValueCellFull!4303 (v!6884 V!13495)) (EmptyCell!4303) )
))
(declare-datatypes ((array!22479 0))(
  ( (array!22480 (arr!10705 (Array (_ BitVec 32) ValueCell!4303)) (size!11057 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22479)

(declare-fun e!232490 () Bool)

(declare-fun array_inv!7860 (array!22479) Bool)

(assert (=> start!37526 (and (array_inv!7860 _values!506) e!232490)))

(assert (=> start!37526 tp!30650))

(assert (=> start!37526 true))

(declare-fun tp_is_empty!9293 () Bool)

(assert (=> start!37526 tp_is_empty!9293))

(declare-fun array_inv!7861 (array!22477) Bool)

(assert (=> start!37526 (array_inv!7861 _keys!658)))

(declare-fun b!382630 () Bool)

(declare-fun e!232491 () Bool)

(assert (=> b!382630 (= e!232491 tp_is_empty!9293)))

(declare-fun b!382631 () Bool)

(declare-fun res!217789 () Bool)

(assert (=> b!382631 (=> (not res!217789) (not e!232485))))

(assert (=> b!382631 (= res!217789 (or (= (select (arr!10704 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10704 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!382632 () Bool)

(declare-fun e!232489 () Bool)

(assert (=> b!382632 (= e!232488 (not e!232489))))

(declare-fun res!217781 () Bool)

(assert (=> b!382632 (=> res!217781 e!232489)))

(declare-fun lt!179636 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382632 (= res!217781 (or (and (not lt!179636) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179636) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179636)))))

(assert (=> b!382632 (= lt!179636 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6260 0))(
  ( (tuple2!6261 (_1!3140 (_ BitVec 64)) (_2!3140 V!13495)) )
))
(declare-datatypes ((List!6128 0))(
  ( (Nil!6125) (Cons!6124 (h!6980 tuple2!6260) (t!11286 List!6128)) )
))
(declare-datatypes ((ListLongMap!5187 0))(
  ( (ListLongMap!5188 (toList!2609 List!6128)) )
))
(declare-fun lt!179633 () ListLongMap!5187)

(declare-fun zeroValue!472 () V!13495)

(declare-fun minValue!472 () V!13495)

(declare-fun getCurrentListMap!2027 (array!22477 array!22479 (_ BitVec 32) (_ BitVec 32) V!13495 V!13495 (_ BitVec 32) Int) ListLongMap!5187)

(assert (=> b!382632 (= lt!179633 (getCurrentListMap!2027 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179630 () ListLongMap!5187)

(declare-fun lt!179634 () array!22479)

(assert (=> b!382632 (= lt!179630 (getCurrentListMap!2027 lt!179631 lt!179634 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179637 () ListLongMap!5187)

(declare-fun lt!179638 () ListLongMap!5187)

(assert (=> b!382632 (and (= lt!179637 lt!179638) (= lt!179638 lt!179637))))

(declare-fun v!373 () V!13495)

(declare-fun lt!179632 () ListLongMap!5187)

(declare-fun +!945 (ListLongMap!5187 tuple2!6260) ListLongMap!5187)

(assert (=> b!382632 (= lt!179638 (+!945 lt!179632 (tuple2!6261 k!778 v!373)))))

(declare-datatypes ((Unit!11783 0))(
  ( (Unit!11784) )
))
(declare-fun lt!179635 () Unit!11783)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!178 (array!22477 array!22479 (_ BitVec 32) (_ BitVec 32) V!13495 V!13495 (_ BitVec 32) (_ BitVec 64) V!13495 (_ BitVec 32) Int) Unit!11783)

(assert (=> b!382632 (= lt!179635 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!178 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!845 (array!22477 array!22479 (_ BitVec 32) (_ BitVec 32) V!13495 V!13495 (_ BitVec 32) Int) ListLongMap!5187)

(assert (=> b!382632 (= lt!179637 (getCurrentListMapNoExtraKeys!845 lt!179631 lt!179634 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382632 (= lt!179634 (array!22480 (store (arr!10705 _values!506) i!548 (ValueCellFull!4303 v!373)) (size!11057 _values!506)))))

(assert (=> b!382632 (= lt!179632 (getCurrentListMapNoExtraKeys!845 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382633 () Bool)

(declare-fun e!232486 () Bool)

(declare-fun mapRes!15504 () Bool)

(assert (=> b!382633 (= e!232490 (and e!232486 mapRes!15504))))

(declare-fun condMapEmpty!15504 () Bool)

(declare-fun mapDefault!15504 () ValueCell!4303)

