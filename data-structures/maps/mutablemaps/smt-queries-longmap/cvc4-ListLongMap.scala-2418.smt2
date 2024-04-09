; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38248 () Bool)

(assert start!38248)

(declare-fun b_free!9077 () Bool)

(declare-fun b_next!9077 () Bool)

(assert (=> start!38248 (= b_free!9077 (not b_next!9077))))

(declare-fun tp!32019 () Bool)

(declare-fun b_and!16481 () Bool)

(assert (=> start!38248 (= tp!32019 b_and!16481)))

(declare-fun b!394387 () Bool)

(declare-fun res!226149 () Bool)

(declare-fun e!238728 () Bool)

(assert (=> b!394387 (=> (not res!226149) (not e!238728))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!14103 0))(
  ( (V!14104 (val!4919 Int)) )
))
(declare-datatypes ((ValueCell!4531 0))(
  ( (ValueCellFull!4531 (v!7160 V!14103)) (EmptyCell!4531) )
))
(declare-datatypes ((array!23383 0))(
  ( (array!23384 (arr!11145 (Array (_ BitVec 32) ValueCell!4531)) (size!11497 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23383)

(declare-fun mask!970 () (_ BitVec 32))

(declare-datatypes ((array!23385 0))(
  ( (array!23386 (arr!11146 (Array (_ BitVec 32) (_ BitVec 64))) (size!11498 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23385)

(assert (=> b!394387 (= res!226149 (and (= (size!11497 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11498 _keys!658) (size!11497 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!394388 () Bool)

(declare-fun res!226152 () Bool)

(assert (=> b!394388 (=> (not res!226152) (not e!238728))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!394388 (= res!226152 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11498 _keys!658))))))

(declare-fun b!394389 () Bool)

(declare-fun e!238731 () Bool)

(declare-fun tp_is_empty!9749 () Bool)

(assert (=> b!394389 (= e!238731 tp_is_empty!9749)))

(declare-fun res!226144 () Bool)

(assert (=> start!38248 (=> (not res!226144) (not e!238728))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38248 (= res!226144 (validMask!0 mask!970))))

(assert (=> start!38248 e!238728))

(declare-fun e!238734 () Bool)

(declare-fun array_inv!8160 (array!23383) Bool)

(assert (=> start!38248 (and (array_inv!8160 _values!506) e!238734)))

(assert (=> start!38248 tp!32019))

(assert (=> start!38248 true))

(assert (=> start!38248 tp_is_empty!9749))

(declare-fun array_inv!8161 (array!23385) Bool)

(assert (=> start!38248 (array_inv!8161 _keys!658)))

(declare-fun mapNonEmpty!16224 () Bool)

(declare-fun mapRes!16224 () Bool)

(declare-fun tp!32018 () Bool)

(assert (=> mapNonEmpty!16224 (= mapRes!16224 (and tp!32018 e!238731))))

(declare-fun mapValue!16224 () ValueCell!4531)

(declare-fun mapKey!16224 () (_ BitVec 32))

(declare-fun mapRest!16224 () (Array (_ BitVec 32) ValueCell!4531))

(assert (=> mapNonEmpty!16224 (= (arr!11145 _values!506) (store mapRest!16224 mapKey!16224 mapValue!16224))))

(declare-fun b!394390 () Bool)

(declare-fun e!238733 () Bool)

(declare-fun e!238730 () Bool)

(assert (=> b!394390 (= e!238733 (not e!238730))))

(declare-fun res!226150 () Bool)

(assert (=> b!394390 (=> res!226150 e!238730)))

(declare-fun lt!186979 () Bool)

(assert (=> b!394390 (= res!226150 (or (and (not lt!186979) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186979) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186979)))))

(assert (=> b!394390 (= lt!186979 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6572 0))(
  ( (tuple2!6573 (_1!3296 (_ BitVec 64)) (_2!3296 V!14103)) )
))
(declare-datatypes ((List!6456 0))(
  ( (Nil!6453) (Cons!6452 (h!7308 tuple2!6572) (t!11638 List!6456)) )
))
(declare-datatypes ((ListLongMap!5499 0))(
  ( (ListLongMap!5500 (toList!2765 List!6456)) )
))
(declare-fun lt!186986 () ListLongMap!5499)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14103)

(declare-fun minValue!472 () V!14103)

(declare-fun getCurrentListMap!2122 (array!23385 array!23383 (_ BitVec 32) (_ BitVec 32) V!14103 V!14103 (_ BitVec 32) Int) ListLongMap!5499)

(assert (=> b!394390 (= lt!186986 (getCurrentListMap!2122 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186982 () array!23383)

(declare-fun lt!186980 () array!23385)

(declare-fun lt!186985 () ListLongMap!5499)

(assert (=> b!394390 (= lt!186985 (getCurrentListMap!2122 lt!186980 lt!186982 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186978 () ListLongMap!5499)

(declare-fun lt!186984 () ListLongMap!5499)

(assert (=> b!394390 (and (= lt!186978 lt!186984) (= lt!186984 lt!186978))))

(declare-fun lt!186988 () ListLongMap!5499)

(declare-fun lt!186983 () tuple2!6572)

(declare-fun +!1063 (ListLongMap!5499 tuple2!6572) ListLongMap!5499)

(assert (=> b!394390 (= lt!186984 (+!1063 lt!186988 lt!186983))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!14103)

(assert (=> b!394390 (= lt!186983 (tuple2!6573 k!778 v!373))))

(declare-datatypes ((Unit!12019 0))(
  ( (Unit!12020) )
))
(declare-fun lt!186987 () Unit!12019)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!279 (array!23385 array!23383 (_ BitVec 32) (_ BitVec 32) V!14103 V!14103 (_ BitVec 32) (_ BitVec 64) V!14103 (_ BitVec 32) Int) Unit!12019)

(assert (=> b!394390 (= lt!186987 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!279 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!984 (array!23385 array!23383 (_ BitVec 32) (_ BitVec 32) V!14103 V!14103 (_ BitVec 32) Int) ListLongMap!5499)

(assert (=> b!394390 (= lt!186978 (getCurrentListMapNoExtraKeys!984 lt!186980 lt!186982 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!394390 (= lt!186982 (array!23384 (store (arr!11145 _values!506) i!548 (ValueCellFull!4531 v!373)) (size!11497 _values!506)))))

(assert (=> b!394390 (= lt!186988 (getCurrentListMapNoExtraKeys!984 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!394391 () Bool)

(declare-fun res!226146 () Bool)

(assert (=> b!394391 (=> (not res!226146) (not e!238728))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23385 (_ BitVec 32)) Bool)

(assert (=> b!394391 (= res!226146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!394392 () Bool)

(assert (=> b!394392 (= e!238730 true)))

(declare-fun lt!186981 () ListLongMap!5499)

(assert (=> b!394392 (= lt!186981 (+!1063 lt!186986 lt!186983))))

(assert (=> b!394392 (= lt!186985 lt!186978)))

(declare-fun b!394393 () Bool)

(declare-fun e!238732 () Bool)

(assert (=> b!394393 (= e!238732 tp_is_empty!9749)))

(declare-fun b!394394 () Bool)

(assert (=> b!394394 (= e!238734 (and e!238732 mapRes!16224))))

(declare-fun condMapEmpty!16224 () Bool)

(declare-fun mapDefault!16224 () ValueCell!4531)

