; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37544 () Bool)

(assert start!37544)

(declare-fun b_free!8663 () Bool)

(declare-fun b_next!8663 () Bool)

(assert (=> start!37544 (= b_free!8663 (not b_next!8663))))

(declare-fun tp!30705 () Bool)

(declare-fun b_and!15923 () Bool)

(assert (=> start!37544 (= tp!30705 b_and!15923)))

(declare-fun b!383005 () Bool)

(declare-fun res!218084 () Bool)

(declare-fun e!232675 () Bool)

(assert (=> b!383005 (=> (not res!218084) (not e!232675))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((array!22513 0))(
  ( (array!22514 (arr!10722 (Array (_ BitVec 32) (_ BitVec 64))) (size!11074 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22513)

(declare-fun mask!970 () (_ BitVec 32))

(declare-datatypes ((V!13519 0))(
  ( (V!13520 (val!4700 Int)) )
))
(declare-datatypes ((ValueCell!4312 0))(
  ( (ValueCellFull!4312 (v!6893 V!13519)) (EmptyCell!4312) )
))
(declare-datatypes ((array!22515 0))(
  ( (array!22516 (arr!10723 (Array (_ BitVec 32) ValueCell!4312)) (size!11075 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22515)

(assert (=> b!383005 (= res!218084 (and (= (size!11075 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11074 _keys!658) (size!11075 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!383007 () Bool)

(declare-fun e!232674 () Bool)

(assert (=> b!383007 (= e!232675 e!232674)))

(declare-fun res!218081 () Bool)

(assert (=> b!383007 (=> (not res!218081) (not e!232674))))

(declare-fun lt!179896 () array!22513)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22513 (_ BitVec 32)) Bool)

(assert (=> b!383007 (= res!218081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179896 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383007 (= lt!179896 (array!22514 (store (arr!10722 _keys!658) i!548 k!778) (size!11074 _keys!658)))))

(declare-fun b!383008 () Bool)

(declare-fun res!218077 () Bool)

(assert (=> b!383008 (=> (not res!218077) (not e!232675))))

(declare-fun arrayContainsKey!0 (array!22513 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383008 (= res!218077 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15531 () Bool)

(declare-fun mapRes!15531 () Bool)

(assert (=> mapIsEmpty!15531 mapRes!15531))

(declare-fun b!383009 () Bool)

(declare-fun res!218085 () Bool)

(assert (=> b!383009 (=> (not res!218085) (not e!232675))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383009 (= res!218085 (validKeyInArray!0 k!778))))

(declare-fun b!383010 () Bool)

(declare-fun e!232679 () Bool)

(assert (=> b!383010 (= e!232674 (not e!232679))))

(declare-fun res!218080 () Bool)

(assert (=> b!383010 (=> res!218080 e!232679)))

(declare-fun lt!179899 () Bool)

(assert (=> b!383010 (= res!218080 (or (and (not lt!179899) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179899) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179899)))))

(assert (=> b!383010 (= lt!179899 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6274 0))(
  ( (tuple2!6275 (_1!3147 (_ BitVec 64)) (_2!3147 V!13519)) )
))
(declare-datatypes ((List!6141 0))(
  ( (Nil!6138) (Cons!6137 (h!6993 tuple2!6274) (t!11299 List!6141)) )
))
(declare-datatypes ((ListLongMap!5201 0))(
  ( (ListLongMap!5202 (toList!2616 List!6141)) )
))
(declare-fun lt!179897 () ListLongMap!5201)

(declare-fun zeroValue!472 () V!13519)

(declare-fun minValue!472 () V!13519)

(declare-fun getCurrentListMap!2034 (array!22513 array!22515 (_ BitVec 32) (_ BitVec 32) V!13519 V!13519 (_ BitVec 32) Int) ListLongMap!5201)

(assert (=> b!383010 (= lt!179897 (getCurrentListMap!2034 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179890 () ListLongMap!5201)

(declare-fun lt!179894 () array!22515)

(assert (=> b!383010 (= lt!179890 (getCurrentListMap!2034 lt!179896 lt!179894 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179895 () ListLongMap!5201)

(declare-fun lt!179898 () ListLongMap!5201)

(assert (=> b!383010 (and (= lt!179895 lt!179898) (= lt!179898 lt!179895))))

(declare-fun lt!179889 () ListLongMap!5201)

(declare-fun lt!179893 () tuple2!6274)

(declare-fun +!952 (ListLongMap!5201 tuple2!6274) ListLongMap!5201)

(assert (=> b!383010 (= lt!179898 (+!952 lt!179889 lt!179893))))

(declare-fun v!373 () V!13519)

(assert (=> b!383010 (= lt!179893 (tuple2!6275 k!778 v!373))))

(declare-datatypes ((Unit!11797 0))(
  ( (Unit!11798) )
))
(declare-fun lt!179891 () Unit!11797)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!185 (array!22513 array!22515 (_ BitVec 32) (_ BitVec 32) V!13519 V!13519 (_ BitVec 32) (_ BitVec 64) V!13519 (_ BitVec 32) Int) Unit!11797)

(assert (=> b!383010 (= lt!179891 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!185 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!852 (array!22513 array!22515 (_ BitVec 32) (_ BitVec 32) V!13519 V!13519 (_ BitVec 32) Int) ListLongMap!5201)

(assert (=> b!383010 (= lt!179895 (getCurrentListMapNoExtraKeys!852 lt!179896 lt!179894 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383010 (= lt!179894 (array!22516 (store (arr!10723 _values!506) i!548 (ValueCellFull!4312 v!373)) (size!11075 _values!506)))))

(assert (=> b!383010 (= lt!179889 (getCurrentListMapNoExtraKeys!852 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383011 () Bool)

(declare-fun res!218083 () Bool)

(assert (=> b!383011 (=> (not res!218083) (not e!232675))))

(declare-datatypes ((List!6142 0))(
  ( (Nil!6139) (Cons!6138 (h!6994 (_ BitVec 64)) (t!11300 List!6142)) )
))
(declare-fun arrayNoDuplicates!0 (array!22513 (_ BitVec 32) List!6142) Bool)

(assert (=> b!383011 (= res!218083 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6139))))

(declare-fun b!383012 () Bool)

(assert (=> b!383012 (= e!232679 true)))

(declare-fun lt!179892 () ListLongMap!5201)

(assert (=> b!383012 (= lt!179892 (+!952 lt!179897 lt!179893))))

(assert (=> b!383012 (= lt!179890 lt!179895)))

(declare-fun b!383006 () Bool)

(declare-fun res!218082 () Bool)

(assert (=> b!383006 (=> (not res!218082) (not e!232675))))

(assert (=> b!383006 (= res!218082 (or (= (select (arr!10722 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10722 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!218079 () Bool)

(assert (=> start!37544 (=> (not res!218079) (not e!232675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37544 (= res!218079 (validMask!0 mask!970))))

(assert (=> start!37544 e!232675))

(declare-fun e!232677 () Bool)

(declare-fun array_inv!7874 (array!22515) Bool)

(assert (=> start!37544 (and (array_inv!7874 _values!506) e!232677)))

(assert (=> start!37544 tp!30705))

(assert (=> start!37544 true))

(declare-fun tp_is_empty!9311 () Bool)

(assert (=> start!37544 tp_is_empty!9311))

(declare-fun array_inv!7875 (array!22513) Bool)

(assert (=> start!37544 (array_inv!7875 _keys!658)))

(declare-fun b!383013 () Bool)

(declare-fun e!232678 () Bool)

(assert (=> b!383013 (= e!232678 tp_is_empty!9311)))

(declare-fun b!383014 () Bool)

(declare-fun e!232680 () Bool)

(assert (=> b!383014 (= e!232680 tp_is_empty!9311)))

(declare-fun b!383015 () Bool)

(declare-fun res!218078 () Bool)

(assert (=> b!383015 (=> (not res!218078) (not e!232675))))

(assert (=> b!383015 (= res!218078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383016 () Bool)

(declare-fun res!218087 () Bool)

(assert (=> b!383016 (=> (not res!218087) (not e!232674))))

(assert (=> b!383016 (= res!218087 (arrayNoDuplicates!0 lt!179896 #b00000000000000000000000000000000 Nil!6139))))

(declare-fun mapNonEmpty!15531 () Bool)

(declare-fun tp!30704 () Bool)

(assert (=> mapNonEmpty!15531 (= mapRes!15531 (and tp!30704 e!232680))))

(declare-fun mapRest!15531 () (Array (_ BitVec 32) ValueCell!4312))

(declare-fun mapKey!15531 () (_ BitVec 32))

(declare-fun mapValue!15531 () ValueCell!4312)

(assert (=> mapNonEmpty!15531 (= (arr!10723 _values!506) (store mapRest!15531 mapKey!15531 mapValue!15531))))

(declare-fun b!383017 () Bool)

(assert (=> b!383017 (= e!232677 (and e!232678 mapRes!15531))))

(declare-fun condMapEmpty!15531 () Bool)

(declare-fun mapDefault!15531 () ValueCell!4312)

