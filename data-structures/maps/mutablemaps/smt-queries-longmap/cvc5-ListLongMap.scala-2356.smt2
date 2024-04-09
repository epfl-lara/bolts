; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37606 () Bool)

(assert start!37606)

(declare-fun b_free!8725 () Bool)

(declare-fun b_next!8725 () Bool)

(assert (=> start!37606 (= b_free!8725 (not b_next!8725))))

(declare-fun tp!30891 () Bool)

(declare-fun b_and!15985 () Bool)

(assert (=> start!37606 (= tp!30891 b_and!15985)))

(declare-fun res!219116 () Bool)

(declare-fun e!233335 () Bool)

(assert (=> start!37606 (=> (not res!219116) (not e!233335))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37606 (= res!219116 (validMask!0 mask!970))))

(assert (=> start!37606 e!233335))

(declare-datatypes ((V!13603 0))(
  ( (V!13604 (val!4731 Int)) )
))
(declare-datatypes ((ValueCell!4343 0))(
  ( (ValueCellFull!4343 (v!6924 V!13603)) (EmptyCell!4343) )
))
(declare-datatypes ((array!22633 0))(
  ( (array!22634 (arr!10782 (Array (_ BitVec 32) ValueCell!4343)) (size!11134 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22633)

(declare-fun e!233339 () Bool)

(declare-fun array_inv!7918 (array!22633) Bool)

(assert (=> start!37606 (and (array_inv!7918 _values!506) e!233339)))

(assert (=> start!37606 tp!30891))

(assert (=> start!37606 true))

(declare-fun tp_is_empty!9373 () Bool)

(assert (=> start!37606 tp_is_empty!9373))

(declare-datatypes ((array!22635 0))(
  ( (array!22636 (arr!10783 (Array (_ BitVec 32) (_ BitVec 64))) (size!11135 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22635)

(declare-fun array_inv!7919 (array!22635) Bool)

(assert (=> start!37606 (array_inv!7919 _keys!658)))

(declare-fun b!384316 () Bool)

(declare-fun e!233334 () Bool)

(declare-fun e!233336 () Bool)

(assert (=> b!384316 (= e!233334 (not e!233336))))

(declare-fun res!219111 () Bool)

(assert (=> b!384316 (=> res!219111 e!233336)))

(declare-fun lt!180904 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384316 (= res!219111 (or (and (not lt!180904) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180904) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180904)))))

(assert (=> b!384316 (= lt!180904 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6324 0))(
  ( (tuple2!6325 (_1!3172 (_ BitVec 64)) (_2!3172 V!13603)) )
))
(declare-datatypes ((List!6190 0))(
  ( (Nil!6187) (Cons!6186 (h!7042 tuple2!6324) (t!11348 List!6190)) )
))
(declare-datatypes ((ListLongMap!5251 0))(
  ( (ListLongMap!5252 (toList!2641 List!6190)) )
))
(declare-fun lt!180903 () ListLongMap!5251)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13603)

(declare-fun minValue!472 () V!13603)

(declare-fun getCurrentListMap!2057 (array!22635 array!22633 (_ BitVec 32) (_ BitVec 32) V!13603 V!13603 (_ BitVec 32) Int) ListLongMap!5251)

(assert (=> b!384316 (= lt!180903 (getCurrentListMap!2057 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180912 () ListLongMap!5251)

(declare-fun lt!180906 () array!22633)

(declare-fun lt!180908 () array!22635)

(assert (=> b!384316 (= lt!180912 (getCurrentListMap!2057 lt!180908 lt!180906 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180905 () ListLongMap!5251)

(declare-fun lt!180910 () ListLongMap!5251)

(assert (=> b!384316 (and (= lt!180905 lt!180910) (= lt!180910 lt!180905))))

(declare-fun lt!180911 () ListLongMap!5251)

(declare-fun lt!180907 () tuple2!6324)

(declare-fun +!977 (ListLongMap!5251 tuple2!6324) ListLongMap!5251)

(assert (=> b!384316 (= lt!180910 (+!977 lt!180911 lt!180907))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun v!373 () V!13603)

(assert (=> b!384316 (= lt!180907 (tuple2!6325 k!778 v!373))))

(declare-datatypes ((Unit!11843 0))(
  ( (Unit!11844) )
))
(declare-fun lt!180909 () Unit!11843)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!208 (array!22635 array!22633 (_ BitVec 32) (_ BitVec 32) V!13603 V!13603 (_ BitVec 32) (_ BitVec 64) V!13603 (_ BitVec 32) Int) Unit!11843)

(assert (=> b!384316 (= lt!180909 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!208 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!875 (array!22635 array!22633 (_ BitVec 32) (_ BitVec 32) V!13603 V!13603 (_ BitVec 32) Int) ListLongMap!5251)

(assert (=> b!384316 (= lt!180905 (getCurrentListMapNoExtraKeys!875 lt!180908 lt!180906 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384316 (= lt!180906 (array!22634 (store (arr!10782 _values!506) i!548 (ValueCellFull!4343 v!373)) (size!11134 _values!506)))))

(assert (=> b!384316 (= lt!180911 (getCurrentListMapNoExtraKeys!875 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384317 () Bool)

(declare-fun e!233338 () Bool)

(assert (=> b!384317 (= e!233338 tp_is_empty!9373)))

(declare-fun b!384318 () Bool)

(assert (=> b!384318 (= e!233336 true)))

(declare-fun lt!180913 () ListLongMap!5251)

(assert (=> b!384318 (= lt!180913 (+!977 lt!180903 lt!180907))))

(assert (=> b!384318 (= lt!180912 lt!180905)))

(declare-fun b!384319 () Bool)

(declare-fun res!219119 () Bool)

(assert (=> b!384319 (=> (not res!219119) (not e!233335))))

(assert (=> b!384319 (= res!219119 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11135 _keys!658))))))

(declare-fun b!384320 () Bool)

(declare-fun res!219109 () Bool)

(assert (=> b!384320 (=> (not res!219109) (not e!233335))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22635 (_ BitVec 32)) Bool)

(assert (=> b!384320 (= res!219109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!384321 () Bool)

(declare-fun res!219114 () Bool)

(assert (=> b!384321 (=> (not res!219114) (not e!233335))))

(assert (=> b!384321 (= res!219114 (and (= (size!11134 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11135 _keys!658) (size!11134 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!384322 () Bool)

(declare-fun res!219118 () Bool)

(assert (=> b!384322 (=> (not res!219118) (not e!233335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384322 (= res!219118 (validKeyInArray!0 k!778))))

(declare-fun b!384323 () Bool)

(declare-fun res!219110 () Bool)

(assert (=> b!384323 (=> (not res!219110) (not e!233335))))

(declare-fun arrayContainsKey!0 (array!22635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!384323 (= res!219110 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!384324 () Bool)

(declare-fun e!233337 () Bool)

(assert (=> b!384324 (= e!233337 tp_is_empty!9373)))

(declare-fun b!384325 () Bool)

(declare-fun mapRes!15624 () Bool)

(assert (=> b!384325 (= e!233339 (and e!233337 mapRes!15624))))

(declare-fun condMapEmpty!15624 () Bool)

(declare-fun mapDefault!15624 () ValueCell!4343)

