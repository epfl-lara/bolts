; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38192 () Bool)

(assert start!38192)

(declare-fun b_free!9043 () Bool)

(declare-fun b_next!9043 () Bool)

(assert (=> start!38192 (= b_free!9043 (not b_next!9043))))

(declare-fun tp!31914 () Bool)

(declare-fun b_and!16435 () Bool)

(assert (=> start!38192 (= tp!31914 b_and!16435)))

(declare-fun b!393463 () Bool)

(declare-fun res!225492 () Bool)

(declare-fun e!238233 () Bool)

(assert (=> b!393463 (=> (not res!225492) (not e!238233))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!14059 0))(
  ( (V!14060 (val!4902 Int)) )
))
(declare-datatypes ((ValueCell!4514 0))(
  ( (ValueCellFull!4514 (v!7139 V!14059)) (EmptyCell!4514) )
))
(declare-datatypes ((array!23313 0))(
  ( (array!23314 (arr!11111 (Array (_ BitVec 32) ValueCell!4514)) (size!11463 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23313)

(declare-datatypes ((array!23315 0))(
  ( (array!23316 (arr!11112 (Array (_ BitVec 32) (_ BitVec 64))) (size!11464 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23315)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!393463 (= res!225492 (and (= (size!11463 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11464 _keys!658) (size!11463 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!393464 () Bool)

(declare-fun res!225487 () Bool)

(assert (=> b!393464 (=> (not res!225487) (not e!238233))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!393464 (= res!225487 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11464 _keys!658))))))

(declare-fun b!393465 () Bool)

(declare-fun res!225488 () Bool)

(assert (=> b!393465 (=> (not res!225488) (not e!238233))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!23315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!393465 (= res!225488 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!393466 () Bool)

(declare-fun e!238237 () Bool)

(declare-fun e!238236 () Bool)

(assert (=> b!393466 (= e!238237 (not e!238236))))

(declare-fun res!225485 () Bool)

(assert (=> b!393466 (=> res!225485 e!238236)))

(declare-fun lt!186328 () Bool)

(assert (=> b!393466 (= res!225485 (or (and (not lt!186328) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!186328) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!186328)))))

(assert (=> b!393466 (= lt!186328 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6550 0))(
  ( (tuple2!6551 (_1!3285 (_ BitVec 64)) (_2!3285 V!14059)) )
))
(declare-datatypes ((List!6432 0))(
  ( (Nil!6429) (Cons!6428 (h!7284 tuple2!6550) (t!11612 List!6432)) )
))
(declare-datatypes ((ListLongMap!5477 0))(
  ( (ListLongMap!5478 (toList!2754 List!6432)) )
))
(declare-fun lt!186323 () ListLongMap!5477)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!14059)

(declare-fun minValue!472 () V!14059)

(declare-fun getCurrentListMap!2114 (array!23315 array!23313 (_ BitVec 32) (_ BitVec 32) V!14059 V!14059 (_ BitVec 32) Int) ListLongMap!5477)

(assert (=> b!393466 (= lt!186323 (getCurrentListMap!2114 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186327 () array!23313)

(declare-fun lt!186320 () array!23315)

(declare-fun lt!186325 () ListLongMap!5477)

(assert (=> b!393466 (= lt!186325 (getCurrentListMap!2114 lt!186320 lt!186327 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!186321 () ListLongMap!5477)

(declare-fun lt!186322 () ListLongMap!5477)

(assert (=> b!393466 (and (= lt!186321 lt!186322) (= lt!186322 lt!186321))))

(declare-fun lt!186326 () ListLongMap!5477)

(declare-fun v!373 () V!14059)

(declare-fun +!1052 (ListLongMap!5477 tuple2!6550) ListLongMap!5477)

(assert (=> b!393466 (= lt!186322 (+!1052 lt!186326 (tuple2!6551 k!778 v!373)))))

(declare-datatypes ((Unit!12001 0))(
  ( (Unit!12002) )
))
(declare-fun lt!186324 () Unit!12001)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!271 (array!23315 array!23313 (_ BitVec 32) (_ BitVec 32) V!14059 V!14059 (_ BitVec 32) (_ BitVec 64) V!14059 (_ BitVec 32) Int) Unit!12001)

(assert (=> b!393466 (= lt!186324 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!271 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!976 (array!23315 array!23313 (_ BitVec 32) (_ BitVec 32) V!14059 V!14059 (_ BitVec 32) Int) ListLongMap!5477)

(assert (=> b!393466 (= lt!186321 (getCurrentListMapNoExtraKeys!976 lt!186320 lt!186327 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!393466 (= lt!186327 (array!23314 (store (arr!11111 _values!506) i!548 (ValueCellFull!4514 v!373)) (size!11463 _values!506)))))

(assert (=> b!393466 (= lt!186326 (getCurrentListMapNoExtraKeys!976 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!393467 () Bool)

(declare-fun res!225495 () Bool)

(assert (=> b!393467 (=> (not res!225495) (not e!238233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393467 (= res!225495 (validKeyInArray!0 k!778))))

(declare-fun b!393468 () Bool)

(declare-fun e!238234 () Bool)

(declare-fun tp_is_empty!9715 () Bool)

(assert (=> b!393468 (= e!238234 tp_is_empty!9715)))

(declare-fun b!393469 () Bool)

(declare-fun res!225489 () Bool)

(assert (=> b!393469 (=> (not res!225489) (not e!238233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23315 (_ BitVec 32)) Bool)

(assert (=> b!393469 (= res!225489 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!393470 () Bool)

(declare-fun res!225486 () Bool)

(assert (=> b!393470 (=> (not res!225486) (not e!238233))))

(assert (=> b!393470 (= res!225486 (or (= (select (arr!11112 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11112 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!393471 () Bool)

(declare-fun e!238232 () Bool)

(assert (=> b!393471 (= e!238232 tp_is_empty!9715)))

(declare-fun mapNonEmpty!16170 () Bool)

(declare-fun mapRes!16170 () Bool)

(declare-fun tp!31913 () Bool)

(assert (=> mapNonEmpty!16170 (= mapRes!16170 (and tp!31913 e!238232))))

(declare-fun mapKey!16170 () (_ BitVec 32))

(declare-fun mapRest!16170 () (Array (_ BitVec 32) ValueCell!4514))

(declare-fun mapValue!16170 () ValueCell!4514)

(assert (=> mapNonEmpty!16170 (= (arr!11111 _values!506) (store mapRest!16170 mapKey!16170 mapValue!16170))))

(declare-fun b!393472 () Bool)

(assert (=> b!393472 (= e!238233 e!238237)))

(declare-fun res!225491 () Bool)

(assert (=> b!393472 (=> (not res!225491) (not e!238237))))

(assert (=> b!393472 (= res!225491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!186320 mask!970))))

(assert (=> b!393472 (= lt!186320 (array!23316 (store (arr!11112 _keys!658) i!548 k!778) (size!11464 _keys!658)))))

(declare-fun b!393473 () Bool)

(declare-fun res!225493 () Bool)

(assert (=> b!393473 (=> (not res!225493) (not e!238237))))

(declare-datatypes ((List!6433 0))(
  ( (Nil!6430) (Cons!6429 (h!7285 (_ BitVec 64)) (t!11613 List!6433)) )
))
(declare-fun arrayNoDuplicates!0 (array!23315 (_ BitVec 32) List!6433) Bool)

(assert (=> b!393473 (= res!225493 (arrayNoDuplicates!0 lt!186320 #b00000000000000000000000000000000 Nil!6430))))

(declare-fun b!393474 () Bool)

(declare-fun res!225490 () Bool)

(assert (=> b!393474 (=> (not res!225490) (not e!238233))))

(assert (=> b!393474 (= res!225490 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6430))))

(declare-fun b!393475 () Bool)

(declare-fun e!238238 () Bool)

(assert (=> b!393475 (= e!238238 (and e!238234 mapRes!16170))))

(declare-fun condMapEmpty!16170 () Bool)

(declare-fun mapDefault!16170 () ValueCell!4514)

