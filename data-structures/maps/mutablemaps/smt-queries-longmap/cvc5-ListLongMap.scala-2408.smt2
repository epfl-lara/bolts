; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38118 () Bool)

(assert start!38118)

(declare-fun b_free!9013 () Bool)

(declare-fun b_next!9013 () Bool)

(assert (=> start!38118 (= b_free!9013 (not b_next!9013))))

(declare-fun tp!31818 () Bool)

(declare-fun b_and!16381 () Bool)

(assert (=> start!38118 (= tp!31818 b_and!16381)))

(declare-fun b!392398 () Bool)

(declare-fun e!237634 () Bool)

(declare-fun e!237635 () Bool)

(assert (=> b!392398 (= e!237634 (not e!237635))))

(declare-fun res!224782 () Bool)

(assert (=> b!392398 (=> res!224782 e!237635)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392398 (= res!224782 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!14019 0))(
  ( (V!14020 (val!4887 Int)) )
))
(declare-datatypes ((ValueCell!4499 0))(
  ( (ValueCellFull!4499 (v!7116 V!14019)) (EmptyCell!4499) )
))
(declare-datatypes ((array!23249 0))(
  ( (array!23250 (arr!11081 (Array (_ BitVec 32) ValueCell!4499)) (size!11433 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23249)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6524 0))(
  ( (tuple2!6525 (_1!3272 (_ BitVec 64)) (_2!3272 V!14019)) )
))
(declare-datatypes ((List!6407 0))(
  ( (Nil!6404) (Cons!6403 (h!7259 tuple2!6524) (t!11583 List!6407)) )
))
(declare-datatypes ((ListLongMap!5451 0))(
  ( (ListLongMap!5452 (toList!2741 List!6407)) )
))
(declare-fun lt!185516 () ListLongMap!5451)

(declare-datatypes ((array!23251 0))(
  ( (array!23252 (arr!11082 (Array (_ BitVec 32) (_ BitVec 64))) (size!11434 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23251)

(declare-fun zeroValue!472 () V!14019)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!14019)

(declare-fun getCurrentListMap!2105 (array!23251 array!23249 (_ BitVec 32) (_ BitVec 32) V!14019 V!14019 (_ BitVec 32) Int) ListLongMap!5451)

(assert (=> b!392398 (= lt!185516 (getCurrentListMap!2105 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185510 () ListLongMap!5451)

(declare-fun lt!185513 () array!23251)

(declare-fun lt!185517 () array!23249)

(assert (=> b!392398 (= lt!185510 (getCurrentListMap!2105 lt!185513 lt!185517 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!185511 () ListLongMap!5451)

(declare-fun lt!185515 () ListLongMap!5451)

(assert (=> b!392398 (and (= lt!185511 lt!185515) (= lt!185515 lt!185511))))

(declare-fun lt!185514 () ListLongMap!5451)

(declare-fun v!373 () V!14019)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!1039 (ListLongMap!5451 tuple2!6524) ListLongMap!5451)

(assert (=> b!392398 (= lt!185515 (+!1039 lt!185514 (tuple2!6525 k!778 v!373)))))

(declare-datatypes ((Unit!11971 0))(
  ( (Unit!11972) )
))
(declare-fun lt!185509 () Unit!11971)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!262 (array!23251 array!23249 (_ BitVec 32) (_ BitVec 32) V!14019 V!14019 (_ BitVec 32) (_ BitVec 64) V!14019 (_ BitVec 32) Int) Unit!11971)

(assert (=> b!392398 (= lt!185509 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!262 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!967 (array!23251 array!23249 (_ BitVec 32) (_ BitVec 32) V!14019 V!14019 (_ BitVec 32) Int) ListLongMap!5451)

(assert (=> b!392398 (= lt!185511 (getCurrentListMapNoExtraKeys!967 lt!185513 lt!185517 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!392398 (= lt!185517 (array!23250 (store (arr!11081 _values!506) i!548 (ValueCellFull!4499 v!373)) (size!11433 _values!506)))))

(assert (=> b!392398 (= lt!185514 (getCurrentListMapNoExtraKeys!967 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!392399 () Bool)

(declare-fun res!224780 () Bool)

(declare-fun e!237638 () Bool)

(assert (=> b!392399 (=> (not res!224780) (not e!237638))))

(assert (=> b!392399 (= res!224780 (or (= (select (arr!11082 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11082 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392400 () Bool)

(declare-fun e!237637 () Bool)

(declare-fun tp_is_empty!9685 () Bool)

(assert (=> b!392400 (= e!237637 tp_is_empty!9685)))

(declare-fun mapIsEmpty!16119 () Bool)

(declare-fun mapRes!16119 () Bool)

(assert (=> mapIsEmpty!16119 mapRes!16119))

(declare-fun b!392401 () Bool)

(declare-fun res!224785 () Bool)

(assert (=> b!392401 (=> (not res!224785) (not e!237638))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23251 (_ BitVec 32)) Bool)

(assert (=> b!392401 (= res!224785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!392402 () Bool)

(declare-fun e!237636 () Bool)

(declare-fun e!237631 () Bool)

(assert (=> b!392402 (= e!237636 (and e!237631 mapRes!16119))))

(declare-fun condMapEmpty!16119 () Bool)

(declare-fun mapDefault!16119 () ValueCell!4499)

