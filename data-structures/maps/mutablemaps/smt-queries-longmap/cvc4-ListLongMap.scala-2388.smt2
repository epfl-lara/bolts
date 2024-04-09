; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37802 () Bool)

(assert start!37802)

(declare-fun b_free!8897 () Bool)

(declare-fun b_next!8897 () Bool)

(assert (=> start!37802 (= b_free!8897 (not b_next!8897))))

(declare-fun tp!31442 () Bool)

(declare-fun b_and!16157 () Bool)

(assert (=> start!37802 (= tp!31442 b_and!16157)))

(declare-fun b!388001 () Bool)

(declare-fun e!235133 () Bool)

(assert (=> b!388001 (= e!235133 (not true))))

(declare-datatypes ((V!13863 0))(
  ( (V!13864 (val!4829 Int)) )
))
(declare-datatypes ((tuple2!6432 0))(
  ( (tuple2!6433 (_1!3226 (_ BitVec 64)) (_2!3226 V!13863)) )
))
(declare-datatypes ((List!6317 0))(
  ( (Nil!6314) (Cons!6313 (h!7169 tuple2!6432) (t!11475 List!6317)) )
))
(declare-datatypes ((ListLongMap!5359 0))(
  ( (ListLongMap!5360 (toList!2695 List!6317)) )
))
(declare-fun lt!182210 () ListLongMap!5359)

(declare-fun lt!182212 () ListLongMap!5359)

(assert (=> b!388001 (and (= lt!182210 lt!182212) (= lt!182212 lt!182210))))

(declare-fun v!373 () V!13863)

(declare-fun lt!182208 () ListLongMap!5359)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!993 (ListLongMap!5359 tuple2!6432) ListLongMap!5359)

(assert (=> b!388001 (= lt!182212 (+!993 lt!182208 (tuple2!6433 k!778 v!373)))))

(declare-datatypes ((ValueCell!4441 0))(
  ( (ValueCellFull!4441 (v!7022 V!13863)) (EmptyCell!4441) )
))
(declare-datatypes ((array!23007 0))(
  ( (array!23008 (arr!10969 (Array (_ BitVec 32) ValueCell!4441)) (size!11321 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23007)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((Unit!11875 0))(
  ( (Unit!11876) )
))
(declare-fun lt!182209 () Unit!11875)

(declare-fun zeroValue!472 () V!13863)

(declare-datatypes ((array!23009 0))(
  ( (array!23010 (arr!10970 (Array (_ BitVec 32) (_ BitVec 64))) (size!11322 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23009)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13863)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!224 (array!23009 array!23007 (_ BitVec 32) (_ BitVec 32) V!13863 V!13863 (_ BitVec 32) (_ BitVec 64) V!13863 (_ BitVec 32) Int) Unit!11875)

(assert (=> b!388001 (= lt!182209 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!224 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182211 () array!23009)

(declare-fun getCurrentListMapNoExtraKeys!929 (array!23009 array!23007 (_ BitVec 32) (_ BitVec 32) V!13863 V!13863 (_ BitVec 32) Int) ListLongMap!5359)

(assert (=> b!388001 (= lt!182210 (getCurrentListMapNoExtraKeys!929 lt!182211 (array!23008 (store (arr!10969 _values!506) i!548 (ValueCellFull!4441 v!373)) (size!11321 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388001 (= lt!182208 (getCurrentListMapNoExtraKeys!929 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388002 () Bool)

(declare-fun res!221913 () Bool)

(declare-fun e!235137 () Bool)

(assert (=> b!388002 (=> (not res!221913) (not e!235137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388002 (= res!221913 (validKeyInArray!0 k!778))))

(declare-fun mapIsEmpty!15918 () Bool)

(declare-fun mapRes!15918 () Bool)

(assert (=> mapIsEmpty!15918 mapRes!15918))

(declare-fun b!388003 () Bool)

(declare-fun e!235132 () Bool)

(declare-fun tp_is_empty!9569 () Bool)

(assert (=> b!388003 (= e!235132 tp_is_empty!9569)))

(declare-fun b!388004 () Bool)

(declare-fun e!235135 () Bool)

(declare-fun e!235136 () Bool)

(assert (=> b!388004 (= e!235135 (and e!235136 mapRes!15918))))

(declare-fun condMapEmpty!15918 () Bool)

(declare-fun mapDefault!15918 () ValueCell!4441)

