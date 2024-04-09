; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37394 () Bool)

(assert start!37394)

(declare-fun b_free!8513 () Bool)

(declare-fun b_next!8513 () Bool)

(assert (=> start!37394 (= b_free!8513 (not b_next!8513))))

(declare-fun tp!30254 () Bool)

(declare-fun b_and!15773 () Bool)

(assert (=> start!37394 (= tp!30254 b_and!15773)))

(declare-fun b!379800 () Bool)

(declare-fun res!215556 () Bool)

(declare-fun e!231046 () Bool)

(assert (=> b!379800 (=> (not res!215556) (not e!231046))))

(declare-datatypes ((array!22219 0))(
  ( (array!22220 (arr!10575 (Array (_ BitVec 32) (_ BitVec 64))) (size!10927 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22219)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379800 (= res!215556 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379801 () Bool)

(declare-fun res!215551 () Bool)

(assert (=> b!379801 (=> (not res!215551) (not e!231046))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379801 (= res!215551 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10927 _keys!658))))))

(declare-fun mapNonEmpty!15306 () Bool)

(declare-fun mapRes!15306 () Bool)

(declare-fun tp!30255 () Bool)

(declare-fun e!231044 () Bool)

(assert (=> mapNonEmpty!15306 (= mapRes!15306 (and tp!30255 e!231044))))

(declare-datatypes ((V!13319 0))(
  ( (V!13320 (val!4625 Int)) )
))
(declare-datatypes ((ValueCell!4237 0))(
  ( (ValueCellFull!4237 (v!6818 V!13319)) (EmptyCell!4237) )
))
(declare-datatypes ((array!22221 0))(
  ( (array!22222 (arr!10576 (Array (_ BitVec 32) ValueCell!4237)) (size!10928 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22221)

(declare-fun mapKey!15306 () (_ BitVec 32))

(declare-fun mapRest!15306 () (Array (_ BitVec 32) ValueCell!4237))

(declare-fun mapValue!15306 () ValueCell!4237)

(assert (=> mapNonEmpty!15306 (= (arr!10576 _values!506) (store mapRest!15306 mapKey!15306 mapValue!15306))))

(declare-fun b!379803 () Bool)

(declare-fun res!215547 () Bool)

(declare-fun e!231045 () Bool)

(assert (=> b!379803 (=> (not res!215547) (not e!231045))))

(declare-fun lt!177640 () array!22219)

(declare-datatypes ((List!6032 0))(
  ( (Nil!6029) (Cons!6028 (h!6884 (_ BitVec 64)) (t!11190 List!6032)) )
))
(declare-fun arrayNoDuplicates!0 (array!22219 (_ BitVec 32) List!6032) Bool)

(assert (=> b!379803 (= res!215547 (arrayNoDuplicates!0 lt!177640 #b00000000000000000000000000000000 Nil!6029))))

(declare-fun b!379804 () Bool)

(declare-fun res!215558 () Bool)

(assert (=> b!379804 (=> (not res!215558) (not e!231046))))

(assert (=> b!379804 (= res!215558 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6029))))

(declare-fun b!379805 () Bool)

(declare-fun e!231050 () Bool)

(declare-fun tp_is_empty!9161 () Bool)

(assert (=> b!379805 (= e!231050 tp_is_empty!9161)))

(declare-fun b!379806 () Bool)

(declare-fun res!215548 () Bool)

(assert (=> b!379806 (=> (not res!215548) (not e!231046))))

(assert (=> b!379806 (= res!215548 (or (= (select (arr!10575 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10575 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379807 () Bool)

(declare-fun e!231051 () Bool)

(assert (=> b!379807 (= e!231045 (not e!231051))))

(declare-fun res!215552 () Bool)

(assert (=> b!379807 (=> res!215552 e!231051)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379807 (= res!215552 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13319)

(declare-fun mask!970 () (_ BitVec 32))

(declare-datatypes ((tuple2!6160 0))(
  ( (tuple2!6161 (_1!3090 (_ BitVec 64)) (_2!3090 V!13319)) )
))
(declare-datatypes ((List!6033 0))(
  ( (Nil!6030) (Cons!6029 (h!6885 tuple2!6160) (t!11191 List!6033)) )
))
(declare-datatypes ((ListLongMap!5087 0))(
  ( (ListLongMap!5088 (toList!2559 List!6033)) )
))
(declare-fun lt!177637 () ListLongMap!5087)

(declare-fun minValue!472 () V!13319)

(declare-fun getCurrentListMap!1984 (array!22219 array!22221 (_ BitVec 32) (_ BitVec 32) V!13319 V!13319 (_ BitVec 32) Int) ListLongMap!5087)

(assert (=> b!379807 (= lt!177637 (getCurrentListMap!1984 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177629 () array!22221)

(declare-fun lt!177630 () ListLongMap!5087)

(assert (=> b!379807 (= lt!177630 (getCurrentListMap!1984 lt!177640 lt!177629 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177639 () ListLongMap!5087)

(declare-fun lt!177631 () ListLongMap!5087)

(assert (=> b!379807 (and (= lt!177639 lt!177631) (= lt!177631 lt!177639))))

(declare-fun lt!177633 () ListLongMap!5087)

(declare-fun lt!177636 () tuple2!6160)

(declare-fun +!900 (ListLongMap!5087 tuple2!6160) ListLongMap!5087)

(assert (=> b!379807 (= lt!177631 (+!900 lt!177633 lt!177636))))

(declare-fun v!373 () V!13319)

(assert (=> b!379807 (= lt!177636 (tuple2!6161 k!778 v!373))))

(declare-datatypes ((Unit!11695 0))(
  ( (Unit!11696) )
))
(declare-fun lt!177634 () Unit!11695)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!135 (array!22219 array!22221 (_ BitVec 32) (_ BitVec 32) V!13319 V!13319 (_ BitVec 32) (_ BitVec 64) V!13319 (_ BitVec 32) Int) Unit!11695)

(assert (=> b!379807 (= lt!177634 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!135 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!802 (array!22219 array!22221 (_ BitVec 32) (_ BitVec 32) V!13319 V!13319 (_ BitVec 32) Int) ListLongMap!5087)

(assert (=> b!379807 (= lt!177639 (getCurrentListMapNoExtraKeys!802 lt!177640 lt!177629 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379807 (= lt!177629 (array!22222 (store (arr!10576 _values!506) i!548 (ValueCellFull!4237 v!373)) (size!10928 _values!506)))))

(assert (=> b!379807 (= lt!177633 (getCurrentListMapNoExtraKeys!802 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15306 () Bool)

(assert (=> mapIsEmpty!15306 mapRes!15306))

(declare-fun b!379802 () Bool)

(declare-fun e!231047 () Bool)

(assert (=> b!379802 (= e!231047 (and e!231050 mapRes!15306))))

(declare-fun condMapEmpty!15306 () Bool)

(declare-fun mapDefault!15306 () ValueCell!4237)

