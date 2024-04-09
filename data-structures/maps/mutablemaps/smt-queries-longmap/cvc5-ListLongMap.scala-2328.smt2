; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37438 () Bool)

(assert start!37438)

(declare-fun b_free!8557 () Bool)

(declare-fun b_next!8557 () Bool)

(assert (=> start!37438 (= b_free!8557 (not b_next!8557))))

(declare-fun tp!30387 () Bool)

(declare-fun b_and!15817 () Bool)

(assert (=> start!37438 (= tp!30387 b_and!15817)))

(declare-fun b!380779 () Bool)

(declare-fun e!231561 () Bool)

(declare-fun e!231563 () Bool)

(assert (=> b!380779 (= e!231561 e!231563)))

(declare-fun res!216328 () Bool)

(assert (=> b!380779 (=> (not res!216328) (not e!231563))))

(declare-datatypes ((array!22303 0))(
  ( (array!22304 (arr!10617 (Array (_ BitVec 32) (_ BitVec 64))) (size!10969 (_ BitVec 32))) )
))
(declare-fun lt!178443 () array!22303)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22303 (_ BitVec 32)) Bool)

(assert (=> b!380779 (= res!216328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178443 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22303)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!380779 (= lt!178443 (array!22304 (store (arr!10617 _keys!658) i!548 k!778) (size!10969 _keys!658)))))

(declare-fun b!380780 () Bool)

(declare-fun res!216332 () Bool)

(assert (=> b!380780 (=> (not res!216332) (not e!231561))))

(declare-datatypes ((List!6063 0))(
  ( (Nil!6060) (Cons!6059 (h!6915 (_ BitVec 64)) (t!11221 List!6063)) )
))
(declare-fun arrayNoDuplicates!0 (array!22303 (_ BitVec 32) List!6063) Bool)

(assert (=> b!380780 (= res!216332 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6060))))

(declare-fun b!380781 () Bool)

(declare-fun res!216329 () Bool)

(assert (=> b!380781 (=> (not res!216329) (not e!231561))))

(assert (=> b!380781 (= res!216329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380782 () Bool)

(declare-fun e!231567 () Bool)

(declare-fun tp_is_empty!9205 () Bool)

(assert (=> b!380782 (= e!231567 tp_is_empty!9205)))

(declare-fun b!380783 () Bool)

(declare-fun res!216336 () Bool)

(assert (=> b!380783 (=> (not res!216336) (not e!231561))))

(assert (=> b!380783 (= res!216336 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10969 _keys!658))))))

(declare-fun b!380784 () Bool)

(declare-fun e!231562 () Bool)

(assert (=> b!380784 (= e!231563 (not e!231562))))

(declare-fun res!216334 () Bool)

(assert (=> b!380784 (=> res!216334 e!231562)))

(declare-fun lt!178448 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!380784 (= res!216334 (or (and (not lt!178448) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!178448) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!178448)))))

(assert (=> b!380784 (= lt!178448 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((V!13379 0))(
  ( (V!13380 (val!4647 Int)) )
))
(declare-datatypes ((tuple2!6192 0))(
  ( (tuple2!6193 (_1!3106 (_ BitVec 64)) (_2!3106 V!13379)) )
))
(declare-datatypes ((List!6064 0))(
  ( (Nil!6061) (Cons!6060 (h!6916 tuple2!6192) (t!11222 List!6064)) )
))
(declare-datatypes ((ListLongMap!5119 0))(
  ( (ListLongMap!5120 (toList!2575 List!6064)) )
))
(declare-fun lt!178444 () ListLongMap!5119)

(declare-datatypes ((ValueCell!4259 0))(
  ( (ValueCellFull!4259 (v!6840 V!13379)) (EmptyCell!4259) )
))
(declare-datatypes ((array!22305 0))(
  ( (array!22306 (arr!10618 (Array (_ BitVec 32) ValueCell!4259)) (size!10970 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22305)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13379)

(declare-fun minValue!472 () V!13379)

(declare-fun getCurrentListMap!1998 (array!22303 array!22305 (_ BitVec 32) (_ BitVec 32) V!13379 V!13379 (_ BitVec 32) Int) ListLongMap!5119)

(assert (=> b!380784 (= lt!178444 (getCurrentListMap!1998 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178450 () ListLongMap!5119)

(declare-fun lt!178445 () array!22305)

(assert (=> b!380784 (= lt!178450 (getCurrentListMap!1998 lt!178443 lt!178445 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178447 () ListLongMap!5119)

(declare-fun lt!178446 () ListLongMap!5119)

(assert (=> b!380784 (and (= lt!178447 lt!178446) (= lt!178446 lt!178447))))

(declare-fun v!373 () V!13379)

(declare-fun lt!178449 () ListLongMap!5119)

(declare-fun +!916 (ListLongMap!5119 tuple2!6192) ListLongMap!5119)

(assert (=> b!380784 (= lt!178446 (+!916 lt!178449 (tuple2!6193 k!778 v!373)))))

(declare-datatypes ((Unit!11725 0))(
  ( (Unit!11726) )
))
(declare-fun lt!178442 () Unit!11725)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!149 (array!22303 array!22305 (_ BitVec 32) (_ BitVec 32) V!13379 V!13379 (_ BitVec 32) (_ BitVec 64) V!13379 (_ BitVec 32) Int) Unit!11725)

(assert (=> b!380784 (= lt!178442 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!149 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!816 (array!22303 array!22305 (_ BitVec 32) (_ BitVec 32) V!13379 V!13379 (_ BitVec 32) Int) ListLongMap!5119)

(assert (=> b!380784 (= lt!178447 (getCurrentListMapNoExtraKeys!816 lt!178443 lt!178445 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380784 (= lt!178445 (array!22306 (store (arr!10618 _values!506) i!548 (ValueCellFull!4259 v!373)) (size!10970 _values!506)))))

(assert (=> b!380784 (= lt!178449 (getCurrentListMapNoExtraKeys!816 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapIsEmpty!15372 () Bool)

(declare-fun mapRes!15372 () Bool)

(assert (=> mapIsEmpty!15372 mapRes!15372))

(declare-fun mapNonEmpty!15372 () Bool)

(declare-fun tp!30386 () Bool)

(declare-fun e!231566 () Bool)

(assert (=> mapNonEmpty!15372 (= mapRes!15372 (and tp!30386 e!231566))))

(declare-fun mapRest!15372 () (Array (_ BitVec 32) ValueCell!4259))

(declare-fun mapValue!15372 () ValueCell!4259)

(declare-fun mapKey!15372 () (_ BitVec 32))

(assert (=> mapNonEmpty!15372 (= (arr!10618 _values!506) (store mapRest!15372 mapKey!15372 mapValue!15372))))

(declare-fun b!380786 () Bool)

(assert (=> b!380786 (= e!231566 tp_is_empty!9205)))

(declare-fun b!380787 () Bool)

(assert (=> b!380787 (= e!231562 true)))

(assert (=> b!380787 (= lt!178450 lt!178447)))

(declare-fun b!380788 () Bool)

(declare-fun e!231565 () Bool)

(assert (=> b!380788 (= e!231565 (and e!231567 mapRes!15372))))

(declare-fun condMapEmpty!15372 () Bool)

(declare-fun mapDefault!15372 () ValueCell!4259)

