; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37634 () Bool)

(assert start!37634)

(declare-fun b_free!8753 () Bool)

(declare-fun b_next!8753 () Bool)

(assert (=> start!37634 (= b_free!8753 (not b_next!8753))))

(declare-fun tp!30974 () Bool)

(declare-fun b_and!16013 () Bool)

(assert (=> start!37634 (= tp!30974 b_and!16013)))

(declare-fun res!219572 () Bool)

(declare-fun e!233633 () Bool)

(assert (=> start!37634 (=> (not res!219572) (not e!233633))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37634 (= res!219572 (validMask!0 mask!970))))

(assert (=> start!37634 e!233633))

(declare-datatypes ((V!13639 0))(
  ( (V!13640 (val!4745 Int)) )
))
(declare-datatypes ((ValueCell!4357 0))(
  ( (ValueCellFull!4357 (v!6938 V!13639)) (EmptyCell!4357) )
))
(declare-datatypes ((array!22687 0))(
  ( (array!22688 (arr!10809 (Array (_ BitVec 32) ValueCell!4357)) (size!11161 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22687)

(declare-fun e!233629 () Bool)

(declare-fun array_inv!7940 (array!22687) Bool)

(assert (=> start!37634 (and (array_inv!7940 _values!506) e!233629)))

(assert (=> start!37634 tp!30974))

(assert (=> start!37634 true))

(declare-fun tp_is_empty!9401 () Bool)

(assert (=> start!37634 tp_is_empty!9401))

(declare-datatypes ((array!22689 0))(
  ( (array!22690 (arr!10810 (Array (_ BitVec 32) (_ BitVec 64))) (size!11162 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22689)

(declare-fun array_inv!7941 (array!22689) Bool)

(assert (=> start!37634 (array_inv!7941 _keys!658)))

(declare-fun b!384904 () Bool)

(declare-fun res!219579 () Bool)

(assert (=> b!384904 (=> (not res!219579) (not e!233633))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384904 (= res!219579 (validKeyInArray!0 k!778))))

(declare-fun b!384905 () Bool)

(declare-fun res!219573 () Bool)

(assert (=> b!384905 (=> (not res!219573) (not e!233633))))

(declare-fun arrayContainsKey!0 (array!22689 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384905 (= res!219573 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!384906 () Bool)

(declare-fun e!233631 () Bool)

(assert (=> b!384906 (= e!233631 tp_is_empty!9401)))

(declare-fun b!384907 () Bool)

(declare-fun e!233630 () Bool)

(assert (=> b!384907 (= e!233630 true)))

(declare-datatypes ((tuple2!6344 0))(
  ( (tuple2!6345 (_1!3182 (_ BitVec 64)) (_2!3182 V!13639)) )
))
(declare-datatypes ((List!6210 0))(
  ( (Nil!6207) (Cons!6206 (h!7062 tuple2!6344) (t!11368 List!6210)) )
))
(declare-datatypes ((ListLongMap!5271 0))(
  ( (ListLongMap!5272 (toList!2651 List!6210)) )
))
(declare-fun lt!181374 () ListLongMap!5271)

(declare-fun lt!181367 () ListLongMap!5271)

(declare-fun lt!181366 () tuple2!6344)

(declare-fun +!987 (ListLongMap!5271 tuple2!6344) ListLongMap!5271)

(assert (=> b!384907 (= lt!181374 (+!987 lt!181367 lt!181366))))

(declare-fun lt!181368 () ListLongMap!5271)

(declare-fun lt!181373 () ListLongMap!5271)

(assert (=> b!384907 (= lt!181368 lt!181373)))

(declare-fun b!384908 () Bool)

(declare-fun res!219580 () Bool)

(assert (=> b!384908 (=> (not res!219580) (not e!233633))))

(declare-datatypes ((List!6211 0))(
  ( (Nil!6208) (Cons!6207 (h!7063 (_ BitVec 64)) (t!11369 List!6211)) )
))
(declare-fun arrayNoDuplicates!0 (array!22689 (_ BitVec 32) List!6211) Bool)

(assert (=> b!384908 (= res!219580 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6208))))

(declare-fun b!384909 () Bool)

(declare-fun res!219574 () Bool)

(assert (=> b!384909 (=> (not res!219574) (not e!233633))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384909 (= res!219574 (or (= (select (arr!10810 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10810 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384910 () Bool)

(declare-fun res!219575 () Bool)

(declare-fun e!233632 () Bool)

(assert (=> b!384910 (=> (not res!219575) (not e!233632))))

(declare-fun lt!181365 () array!22689)

(assert (=> b!384910 (= res!219575 (arrayNoDuplicates!0 lt!181365 #b00000000000000000000000000000000 Nil!6208))))

(declare-fun b!384911 () Bool)

(assert (=> b!384911 (= e!233632 (not e!233630))))

(declare-fun res!219571 () Bool)

(assert (=> b!384911 (=> res!219571 e!233630)))

(declare-fun lt!181369 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384911 (= res!219571 (or (and (not lt!181369) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181369) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181369)))))

(assert (=> b!384911 (= lt!181369 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13639)

(declare-fun minValue!472 () V!13639)

(declare-fun getCurrentListMap!2067 (array!22689 array!22687 (_ BitVec 32) (_ BitVec 32) V!13639 V!13639 (_ BitVec 32) Int) ListLongMap!5271)

(assert (=> b!384911 (= lt!181367 (getCurrentListMap!2067 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181375 () array!22687)

(assert (=> b!384911 (= lt!181368 (getCurrentListMap!2067 lt!181365 lt!181375 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181371 () ListLongMap!5271)

(assert (=> b!384911 (and (= lt!181373 lt!181371) (= lt!181371 lt!181373))))

(declare-fun lt!181370 () ListLongMap!5271)

(assert (=> b!384911 (= lt!181371 (+!987 lt!181370 lt!181366))))

(declare-fun v!373 () V!13639)

(assert (=> b!384911 (= lt!181366 (tuple2!6345 k!778 v!373))))

(declare-datatypes ((Unit!11863 0))(
  ( (Unit!11864) )
))
(declare-fun lt!181372 () Unit!11863)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!218 (array!22689 array!22687 (_ BitVec 32) (_ BitVec 32) V!13639 V!13639 (_ BitVec 32) (_ BitVec 64) V!13639 (_ BitVec 32) Int) Unit!11863)

(assert (=> b!384911 (= lt!181372 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!218 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!885 (array!22689 array!22687 (_ BitVec 32) (_ BitVec 32) V!13639 V!13639 (_ BitVec 32) Int) ListLongMap!5271)

(assert (=> b!384911 (= lt!181373 (getCurrentListMapNoExtraKeys!885 lt!181365 lt!181375 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384911 (= lt!181375 (array!22688 (store (arr!10809 _values!506) i!548 (ValueCellFull!4357 v!373)) (size!11161 _values!506)))))

(assert (=> b!384911 (= lt!181370 (getCurrentListMapNoExtraKeys!885 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384912 () Bool)

(declare-fun e!233634 () Bool)

(assert (=> b!384912 (= e!233634 tp_is_empty!9401)))

(declare-fun b!384913 () Bool)

(declare-fun res!219581 () Bool)

(assert (=> b!384913 (=> (not res!219581) (not e!233633))))

(assert (=> b!384913 (= res!219581 (and (= (size!11161 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11162 _keys!658) (size!11161 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384914 () Bool)

(declare-fun mapRes!15666 () Bool)

(assert (=> b!384914 (= e!233629 (and e!233631 mapRes!15666))))

(declare-fun condMapEmpty!15666 () Bool)

(declare-fun mapDefault!15666 () ValueCell!4357)

