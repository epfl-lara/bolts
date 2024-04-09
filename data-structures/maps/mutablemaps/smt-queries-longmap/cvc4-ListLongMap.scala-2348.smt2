; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37562 () Bool)

(assert start!37562)

(declare-fun b_free!8681 () Bool)

(declare-fun b_next!8681 () Bool)

(assert (=> start!37562 (= b_free!8681 (not b_next!8681))))

(declare-fun tp!30759 () Bool)

(declare-fun b_and!15941 () Bool)

(assert (=> start!37562 (= tp!30759 b_and!15941)))

(declare-fun b!383383 () Bool)

(declare-fun res!218379 () Bool)

(declare-fun e!232866 () Bool)

(assert (=> b!383383 (=> (not res!218379) (not e!232866))))

(declare-datatypes ((array!22549 0))(
  ( (array!22550 (arr!10740 (Array (_ BitVec 32) (_ BitVec 64))) (size!11092 (_ BitVec 32))) )
))
(declare-fun lt!180191 () array!22549)

(declare-datatypes ((List!6158 0))(
  ( (Nil!6155) (Cons!6154 (h!7010 (_ BitVec 64)) (t!11316 List!6158)) )
))
(declare-fun arrayNoDuplicates!0 (array!22549 (_ BitVec 32) List!6158) Bool)

(assert (=> b!383383 (= res!218379 (arrayNoDuplicates!0 lt!180191 #b00000000000000000000000000000000 Nil!6155))))

(declare-fun b!383385 () Bool)

(declare-fun res!218376 () Bool)

(declare-fun e!232868 () Bool)

(assert (=> b!383385 (=> (not res!218376) (not e!232868))))

(declare-fun _keys!658 () array!22549)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383385 (= res!218376 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!383386 () Bool)

(declare-fun res!218375 () Bool)

(assert (=> b!383386 (=> (not res!218375) (not e!232868))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383386 (= res!218375 (or (= (select (arr!10740 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10740 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383387 () Bool)

(declare-fun res!218378 () Bool)

(assert (=> b!383387 (=> (not res!218378) (not e!232868))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383387 (= res!218378 (validKeyInArray!0 k!778))))

(declare-fun b!383388 () Bool)

(declare-fun e!232865 () Bool)

(assert (=> b!383388 (= e!232865 true)))

(declare-datatypes ((V!13543 0))(
  ( (V!13544 (val!4709 Int)) )
))
(declare-datatypes ((tuple2!6290 0))(
  ( (tuple2!6291 (_1!3155 (_ BitVec 64)) (_2!3155 V!13543)) )
))
(declare-datatypes ((List!6159 0))(
  ( (Nil!6156) (Cons!6155 (h!7011 tuple2!6290) (t!11317 List!6159)) )
))
(declare-datatypes ((ListLongMap!5217 0))(
  ( (ListLongMap!5218 (toList!2624 List!6159)) )
))
(declare-fun lt!180189 () ListLongMap!5217)

(declare-fun lt!180194 () ListLongMap!5217)

(declare-fun lt!180196 () tuple2!6290)

(declare-fun +!960 (ListLongMap!5217 tuple2!6290) ListLongMap!5217)

(assert (=> b!383388 (= lt!180189 (+!960 lt!180194 lt!180196))))

(declare-fun lt!180193 () ListLongMap!5217)

(declare-fun lt!180195 () ListLongMap!5217)

(assert (=> b!383388 (= lt!180193 lt!180195)))

(declare-fun b!383389 () Bool)

(assert (=> b!383389 (= e!232868 e!232866)))

(declare-fun res!218381 () Bool)

(assert (=> b!383389 (=> (not res!218381) (not e!232866))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22549 (_ BitVec 32)) Bool)

(assert (=> b!383389 (= res!218381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180191 mask!970))))

(assert (=> b!383389 (= lt!180191 (array!22550 (store (arr!10740 _keys!658) i!548 k!778) (size!11092 _keys!658)))))

(declare-fun b!383390 () Bool)

(declare-fun e!232867 () Bool)

(declare-fun tp_is_empty!9329 () Bool)

(assert (=> b!383390 (= e!232867 tp_is_empty!9329)))

(declare-fun b!383391 () Bool)

(declare-fun res!218384 () Bool)

(assert (=> b!383391 (=> (not res!218384) (not e!232868))))

(assert (=> b!383391 (= res!218384 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15558 () Bool)

(declare-fun mapRes!15558 () Bool)

(assert (=> mapIsEmpty!15558 mapRes!15558))

(declare-fun b!383392 () Bool)

(declare-fun e!232863 () Bool)

(assert (=> b!383392 (= e!232863 tp_is_empty!9329)))

(declare-fun b!383393 () Bool)

(assert (=> b!383393 (= e!232866 (not e!232865))))

(declare-fun res!218383 () Bool)

(assert (=> b!383393 (=> res!218383 e!232865)))

(declare-fun lt!180192 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383393 (= res!218383 (or (and (not lt!180192) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180192) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180192)))))

(assert (=> b!383393 (= lt!180192 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((ValueCell!4321 0))(
  ( (ValueCellFull!4321 (v!6902 V!13543)) (EmptyCell!4321) )
))
(declare-datatypes ((array!22551 0))(
  ( (array!22552 (arr!10741 (Array (_ BitVec 32) ValueCell!4321)) (size!11093 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22551)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13543)

(declare-fun minValue!472 () V!13543)

(declare-fun getCurrentListMap!2041 (array!22549 array!22551 (_ BitVec 32) (_ BitVec 32) V!13543 V!13543 (_ BitVec 32) Int) ListLongMap!5217)

(assert (=> b!383393 (= lt!180194 (getCurrentListMap!2041 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180187 () array!22551)

(assert (=> b!383393 (= lt!180193 (getCurrentListMap!2041 lt!180191 lt!180187 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180190 () ListLongMap!5217)

(assert (=> b!383393 (and (= lt!180195 lt!180190) (= lt!180190 lt!180195))))

(declare-fun lt!180186 () ListLongMap!5217)

(assert (=> b!383393 (= lt!180190 (+!960 lt!180186 lt!180196))))

(declare-fun v!373 () V!13543)

(assert (=> b!383393 (= lt!180196 (tuple2!6291 k!778 v!373))))

(declare-datatypes ((Unit!11811 0))(
  ( (Unit!11812) )
))
(declare-fun lt!180188 () Unit!11811)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!192 (array!22549 array!22551 (_ BitVec 32) (_ BitVec 32) V!13543 V!13543 (_ BitVec 32) (_ BitVec 64) V!13543 (_ BitVec 32) Int) Unit!11811)

(assert (=> b!383393 (= lt!180188 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!192 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!859 (array!22549 array!22551 (_ BitVec 32) (_ BitVec 32) V!13543 V!13543 (_ BitVec 32) Int) ListLongMap!5217)

(assert (=> b!383393 (= lt!180195 (getCurrentListMapNoExtraKeys!859 lt!180191 lt!180187 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383393 (= lt!180187 (array!22552 (store (arr!10741 _values!506) i!548 (ValueCellFull!4321 v!373)) (size!11093 _values!506)))))

(assert (=> b!383393 (= lt!180186 (getCurrentListMapNoExtraKeys!859 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383394 () Bool)

(declare-fun e!232864 () Bool)

(assert (=> b!383394 (= e!232864 (and e!232863 mapRes!15558))))

(declare-fun condMapEmpty!15558 () Bool)

(declare-fun mapDefault!15558 () ValueCell!4321)

