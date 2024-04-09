; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37618 () Bool)

(assert start!37618)

(declare-fun b_free!8737 () Bool)

(declare-fun b_next!8737 () Bool)

(assert (=> start!37618 (= b_free!8737 (not b_next!8737))))

(declare-fun tp!30927 () Bool)

(declare-fun b_and!15997 () Bool)

(assert (=> start!37618 (= tp!30927 b_and!15997)))

(declare-fun b!384568 () Bool)

(declare-fun res!219311 () Bool)

(declare-fun e!233465 () Bool)

(assert (=> b!384568 (=> (not res!219311) (not e!233465))))

(declare-datatypes ((array!22655 0))(
  ( (array!22656 (arr!10793 (Array (_ BitVec 32) (_ BitVec 64))) (size!11145 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22655)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!384568 (= res!219311 (or (= (select (arr!10793 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10793 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!384569 () Bool)

(declare-fun e!233462 () Bool)

(assert (=> b!384569 (= e!233465 e!233462)))

(declare-fun res!219312 () Bool)

(assert (=> b!384569 (=> (not res!219312) (not e!233462))))

(declare-fun lt!181101 () array!22655)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22655 (_ BitVec 32)) Bool)

(assert (=> b!384569 (= res!219312 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181101 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!384569 (= lt!181101 (array!22656 (store (arr!10793 _keys!658) i!548 k!778) (size!11145 _keys!658)))))

(declare-fun b!384570 () Bool)

(declare-fun res!219314 () Bool)

(assert (=> b!384570 (=> (not res!219314) (not e!233465))))

(declare-datatypes ((List!6198 0))(
  ( (Nil!6195) (Cons!6194 (h!7050 (_ BitVec 64)) (t!11356 List!6198)) )
))
(declare-fun arrayNoDuplicates!0 (array!22655 (_ BitVec 32) List!6198) Bool)

(assert (=> b!384570 (= res!219314 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6195))))

(declare-fun b!384571 () Bool)

(declare-fun e!233460 () Bool)

(assert (=> b!384571 (= e!233462 (not e!233460))))

(declare-fun res!219308 () Bool)

(assert (=> b!384571 (=> res!219308 e!233460)))

(declare-fun lt!181106 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!384571 (= res!219308 (or (and (not lt!181106) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!181106) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!181106)))))

(assert (=> b!384571 (= lt!181106 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((V!13619 0))(
  ( (V!13620 (val!4737 Int)) )
))
(declare-fun zeroValue!472 () V!13619)

(declare-datatypes ((tuple2!6332 0))(
  ( (tuple2!6333 (_1!3176 (_ BitVec 64)) (_2!3176 V!13619)) )
))
(declare-datatypes ((List!6199 0))(
  ( (Nil!6196) (Cons!6195 (h!7051 tuple2!6332) (t!11357 List!6199)) )
))
(declare-datatypes ((ListLongMap!5259 0))(
  ( (ListLongMap!5260 (toList!2645 List!6199)) )
))
(declare-fun lt!181110 () ListLongMap!5259)

(declare-datatypes ((ValueCell!4349 0))(
  ( (ValueCellFull!4349 (v!6930 V!13619)) (EmptyCell!4349) )
))
(declare-datatypes ((array!22657 0))(
  ( (array!22658 (arr!10794 (Array (_ BitVec 32) ValueCell!4349)) (size!11146 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22657)

(declare-fun minValue!472 () V!13619)

(declare-fun getCurrentListMap!2061 (array!22655 array!22657 (_ BitVec 32) (_ BitVec 32) V!13619 V!13619 (_ BitVec 32) Int) ListLongMap!5259)

(assert (=> b!384571 (= lt!181110 (getCurrentListMap!2061 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181102 () array!22657)

(declare-fun lt!181111 () ListLongMap!5259)

(assert (=> b!384571 (= lt!181111 (getCurrentListMap!2061 lt!181101 lt!181102 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181105 () ListLongMap!5259)

(declare-fun lt!181108 () ListLongMap!5259)

(assert (=> b!384571 (and (= lt!181105 lt!181108) (= lt!181108 lt!181105))))

(declare-fun lt!181104 () ListLongMap!5259)

(declare-fun lt!181107 () tuple2!6332)

(declare-fun +!981 (ListLongMap!5259 tuple2!6332) ListLongMap!5259)

(assert (=> b!384571 (= lt!181108 (+!981 lt!181104 lt!181107))))

(declare-fun v!373 () V!13619)

(assert (=> b!384571 (= lt!181107 (tuple2!6333 k!778 v!373))))

(declare-datatypes ((Unit!11851 0))(
  ( (Unit!11852) )
))
(declare-fun lt!181103 () Unit!11851)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!212 (array!22655 array!22657 (_ BitVec 32) (_ BitVec 32) V!13619 V!13619 (_ BitVec 32) (_ BitVec 64) V!13619 (_ BitVec 32) Int) Unit!11851)

(assert (=> b!384571 (= lt!181103 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!212 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!879 (array!22655 array!22657 (_ BitVec 32) (_ BitVec 32) V!13619 V!13619 (_ BitVec 32) Int) ListLongMap!5259)

(assert (=> b!384571 (= lt!181105 (getCurrentListMapNoExtraKeys!879 lt!181101 lt!181102 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!384571 (= lt!181102 (array!22658 (store (arr!10794 _values!506) i!548 (ValueCellFull!4349 v!373)) (size!11146 _values!506)))))

(assert (=> b!384571 (= lt!181104 (getCurrentListMapNoExtraKeys!879 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!384572 () Bool)

(declare-fun res!219309 () Bool)

(assert (=> b!384572 (=> (not res!219309) (not e!233465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!384572 (= res!219309 (validKeyInArray!0 k!778))))

(declare-fun res!219316 () Bool)

(assert (=> start!37618 (=> (not res!219316) (not e!233465))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37618 (= res!219316 (validMask!0 mask!970))))

(assert (=> start!37618 e!233465))

(declare-fun e!233464 () Bool)

(declare-fun array_inv!7928 (array!22657) Bool)

(assert (=> start!37618 (and (array_inv!7928 _values!506) e!233464)))

(assert (=> start!37618 tp!30927))

(assert (=> start!37618 true))

(declare-fun tp_is_empty!9385 () Bool)

(assert (=> start!37618 tp_is_empty!9385))

(declare-fun array_inv!7929 (array!22655) Bool)

(assert (=> start!37618 (array_inv!7929 _keys!658)))

(declare-fun b!384573 () Bool)

(assert (=> b!384573 (= e!233460 true)))

(declare-fun lt!181109 () ListLongMap!5259)

(assert (=> b!384573 (= lt!181109 (+!981 lt!181110 lt!181107))))

(assert (=> b!384573 (= lt!181111 lt!181105)))

(declare-fun b!384574 () Bool)

(declare-fun e!233461 () Bool)

(declare-fun mapRes!15642 () Bool)

(assert (=> b!384574 (= e!233464 (and e!233461 mapRes!15642))))

(declare-fun condMapEmpty!15642 () Bool)

(declare-fun mapDefault!15642 () ValueCell!4349)

