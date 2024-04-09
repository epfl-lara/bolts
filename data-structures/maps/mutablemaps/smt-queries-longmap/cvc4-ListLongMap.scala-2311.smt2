; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37340 () Bool)

(assert start!37340)

(declare-fun b_free!8459 () Bool)

(declare-fun b_next!8459 () Bool)

(assert (=> start!37340 (= b_free!8459 (not b_next!8459))))

(declare-fun tp!30093 () Bool)

(declare-fun b_and!15719 () Bool)

(assert (=> start!37340 (= tp!30093 b_and!15719)))

(declare-fun b!378585 () Bool)

(declare-fun e!230400 () Bool)

(declare-fun tp_is_empty!9107 () Bool)

(assert (=> b!378585 (= e!230400 tp_is_empty!9107)))

(declare-fun b!378586 () Bool)

(declare-fun res!214575 () Bool)

(declare-fun e!230396 () Bool)

(assert (=> b!378586 (=> (not res!214575) (not e!230396))))

(declare-datatypes ((array!22111 0))(
  ( (array!22112 (arr!10521 (Array (_ BitVec 32) (_ BitVec 64))) (size!10873 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22111)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378586 (= res!214575 (or (= (select (arr!10521 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10521 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378587 () Bool)

(declare-fun res!214581 () Bool)

(assert (=> b!378587 (=> (not res!214581) (not e!230396))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378587 (= res!214581 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!378588 () Bool)

(declare-fun res!214577 () Bool)

(assert (=> b!378588 (=> (not res!214577) (not e!230396))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22111 (_ BitVec 32)) Bool)

(assert (=> b!378588 (= res!214577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15225 () Bool)

(declare-fun mapRes!15225 () Bool)

(assert (=> mapIsEmpty!15225 mapRes!15225))

(declare-fun b!378589 () Bool)

(declare-fun res!214585 () Bool)

(assert (=> b!378589 (=> (not res!214585) (not e!230396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378589 (= res!214585 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!15225 () Bool)

(declare-fun tp!30092 () Bool)

(declare-fun e!230402 () Bool)

(assert (=> mapNonEmpty!15225 (= mapRes!15225 (and tp!30092 e!230402))))

(declare-datatypes ((V!13247 0))(
  ( (V!13248 (val!4598 Int)) )
))
(declare-datatypes ((ValueCell!4210 0))(
  ( (ValueCellFull!4210 (v!6791 V!13247)) (EmptyCell!4210) )
))
(declare-datatypes ((array!22113 0))(
  ( (array!22114 (arr!10522 (Array (_ BitVec 32) ValueCell!4210)) (size!10874 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22113)

(declare-fun mapRest!15225 () (Array (_ BitVec 32) ValueCell!4210))

(declare-fun mapValue!15225 () ValueCell!4210)

(declare-fun mapKey!15225 () (_ BitVec 32))

(assert (=> mapNonEmpty!15225 (= (arr!10522 _values!506) (store mapRest!15225 mapKey!15225 mapValue!15225))))

(declare-fun b!378590 () Bool)

(declare-fun e!230398 () Bool)

(declare-fun e!230403 () Bool)

(assert (=> b!378590 (= e!230398 e!230403)))

(declare-fun res!214583 () Bool)

(assert (=> b!378590 (=> res!214583 e!230403)))

(assert (=> b!378590 (= res!214583 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6112 0))(
  ( (tuple2!6113 (_1!3066 (_ BitVec 64)) (_2!3066 V!13247)) )
))
(declare-datatypes ((List!5984 0))(
  ( (Nil!5981) (Cons!5980 (h!6836 tuple2!6112) (t!11142 List!5984)) )
))
(declare-datatypes ((ListLongMap!5039 0))(
  ( (ListLongMap!5040 (toList!2535 List!5984)) )
))
(declare-fun lt!176582 () ListLongMap!5039)

(declare-fun lt!176584 () ListLongMap!5039)

(assert (=> b!378590 (= lt!176582 lt!176584)))

(declare-fun lt!176585 () ListLongMap!5039)

(declare-fun lt!176586 () tuple2!6112)

(declare-fun +!876 (ListLongMap!5039 tuple2!6112) ListLongMap!5039)

(assert (=> b!378590 (= lt!176584 (+!876 lt!176585 lt!176586))))

(declare-fun lt!176581 () ListLongMap!5039)

(declare-fun lt!176580 () ListLongMap!5039)

(assert (=> b!378590 (= lt!176581 lt!176580)))

(declare-fun lt!176575 () ListLongMap!5039)

(assert (=> b!378590 (= lt!176580 (+!876 lt!176575 lt!176586))))

(declare-fun lt!176587 () ListLongMap!5039)

(assert (=> b!378590 (= lt!176581 (+!876 lt!176587 lt!176586))))

(declare-fun minValue!472 () V!13247)

(assert (=> b!378590 (= lt!176586 (tuple2!6113 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378591 () Bool)

(declare-fun res!214578 () Bool)

(assert (=> b!378591 (=> (not res!214578) (not e!230396))))

(assert (=> b!378591 (= res!214578 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10873 _keys!658))))))

(declare-fun b!378592 () Bool)

(declare-fun res!214586 () Bool)

(declare-fun e!230401 () Bool)

(assert (=> b!378592 (=> (not res!214586) (not e!230401))))

(declare-fun lt!176579 () array!22111)

(declare-datatypes ((List!5985 0))(
  ( (Nil!5982) (Cons!5981 (h!6837 (_ BitVec 64)) (t!11143 List!5985)) )
))
(declare-fun arrayNoDuplicates!0 (array!22111 (_ BitVec 32) List!5985) Bool)

(assert (=> b!378592 (= res!214586 (arrayNoDuplicates!0 lt!176579 #b00000000000000000000000000000000 Nil!5982))))

(declare-fun b!378593 () Bool)

(declare-fun res!214579 () Bool)

(assert (=> b!378593 (=> (not res!214579) (not e!230396))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378593 (= res!214579 (and (= (size!10874 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10873 _keys!658) (size!10874 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378594 () Bool)

(assert (=> b!378594 (= e!230402 tp_is_empty!9107)))

(declare-fun res!214580 () Bool)

(assert (=> start!37340 (=> (not res!214580) (not e!230396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37340 (= res!214580 (validMask!0 mask!970))))

(assert (=> start!37340 e!230396))

(declare-fun e!230397 () Bool)

(declare-fun array_inv!7742 (array!22113) Bool)

(assert (=> start!37340 (and (array_inv!7742 _values!506) e!230397)))

(assert (=> start!37340 tp!30093))

(assert (=> start!37340 true))

(assert (=> start!37340 tp_is_empty!9107))

(declare-fun array_inv!7743 (array!22111) Bool)

(assert (=> start!37340 (array_inv!7743 _keys!658)))

(declare-fun b!378595 () Bool)

(assert (=> b!378595 (= e!230401 (not e!230398))))

(declare-fun res!214582 () Bool)

(assert (=> b!378595 (=> res!214582 e!230398)))

(assert (=> b!378595 (= res!214582 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13247)

(declare-fun getCurrentListMap!1966 (array!22111 array!22113 (_ BitVec 32) (_ BitVec 32) V!13247 V!13247 (_ BitVec 32) Int) ListLongMap!5039)

(assert (=> b!378595 (= lt!176582 (getCurrentListMap!1966 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176583 () array!22113)

(assert (=> b!378595 (= lt!176581 (getCurrentListMap!1966 lt!176579 lt!176583 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378595 (and (= lt!176587 lt!176575) (= lt!176575 lt!176587))))

(declare-fun lt!176576 () tuple2!6112)

(assert (=> b!378595 (= lt!176575 (+!876 lt!176585 lt!176576))))

(declare-fun v!373 () V!13247)

(assert (=> b!378595 (= lt!176576 (tuple2!6113 k!778 v!373))))

(declare-datatypes ((Unit!11649 0))(
  ( (Unit!11650) )
))
(declare-fun lt!176578 () Unit!11649)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!117 (array!22111 array!22113 (_ BitVec 32) (_ BitVec 32) V!13247 V!13247 (_ BitVec 32) (_ BitVec 64) V!13247 (_ BitVec 32) Int) Unit!11649)

(assert (=> b!378595 (= lt!176578 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!117 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!784 (array!22111 array!22113 (_ BitVec 32) (_ BitVec 32) V!13247 V!13247 (_ BitVec 32) Int) ListLongMap!5039)

(assert (=> b!378595 (= lt!176587 (getCurrentListMapNoExtraKeys!784 lt!176579 lt!176583 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378595 (= lt!176583 (array!22114 (store (arr!10522 _values!506) i!548 (ValueCellFull!4210 v!373)) (size!10874 _values!506)))))

(assert (=> b!378595 (= lt!176585 (getCurrentListMapNoExtraKeys!784 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!378596 () Bool)

(assert (=> b!378596 (= e!230403 true)))

(assert (=> b!378596 (= lt!176580 (+!876 lt!176584 lt!176576))))

(declare-fun lt!176577 () Unit!11649)

(declare-fun addCommutativeForDiffKeys!291 (ListLongMap!5039 (_ BitVec 64) V!13247 (_ BitVec 64) V!13247) Unit!11649)

(assert (=> b!378596 (= lt!176577 (addCommutativeForDiffKeys!291 lt!176585 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378597 () Bool)

(declare-fun res!214576 () Bool)

(assert (=> b!378597 (=> (not res!214576) (not e!230396))))

(assert (=> b!378597 (= res!214576 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5982))))

(declare-fun b!378598 () Bool)

(assert (=> b!378598 (= e!230397 (and e!230400 mapRes!15225))))

(declare-fun condMapEmpty!15225 () Bool)

(declare-fun mapDefault!15225 () ValueCell!4210)

