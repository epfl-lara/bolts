; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37288 () Bool)

(assert start!37288)

(declare-fun b_free!8407 () Bool)

(declare-fun b_next!8407 () Bool)

(assert (=> start!37288 (= b_free!8407 (not b_next!8407))))

(declare-fun tp!29936 () Bool)

(declare-fun b_and!15667 () Bool)

(assert (=> start!37288 (= tp!29936 b_and!15667)))

(declare-fun b!377406 () Bool)

(declare-fun e!229777 () Bool)

(declare-fun tp_is_empty!9055 () Bool)

(assert (=> b!377406 (= e!229777 tp_is_empty!9055)))

(declare-fun b!377407 () Bool)

(declare-fun e!229778 () Bool)

(declare-fun e!229775 () Bool)

(assert (=> b!377407 (= e!229778 e!229775)))

(declare-fun res!213641 () Bool)

(assert (=> b!377407 (=> (not res!213641) (not e!229775))))

(declare-datatypes ((array!22009 0))(
  ( (array!22010 (arr!10470 (Array (_ BitVec 32) (_ BitVec 64))) (size!10822 (_ BitVec 32))) )
))
(declare-fun lt!175598 () array!22009)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22009 (_ BitVec 32)) Bool)

(assert (=> b!377407 (= res!213641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175598 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22009)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377407 (= lt!175598 (array!22010 (store (arr!10470 _keys!658) i!548 k!778) (size!10822 _keys!658)))))

(declare-fun b!377408 () Bool)

(declare-fun e!229779 () Bool)

(assert (=> b!377408 (= e!229779 true)))

(declare-datatypes ((V!13179 0))(
  ( (V!13180 (val!4572 Int)) )
))
(declare-datatypes ((tuple2!6072 0))(
  ( (tuple2!6073 (_1!3046 (_ BitVec 64)) (_2!3046 V!13179)) )
))
(declare-datatypes ((List!5941 0))(
  ( (Nil!5938) (Cons!5937 (h!6793 tuple2!6072) (t!11099 List!5941)) )
))
(declare-datatypes ((ListLongMap!4999 0))(
  ( (ListLongMap!5000 (toList!2515 List!5941)) )
))
(declare-fun lt!175607 () ListLongMap!4999)

(declare-fun lt!175602 () ListLongMap!4999)

(declare-fun lt!175601 () tuple2!6072)

(declare-fun +!856 (ListLongMap!4999 tuple2!6072) ListLongMap!4999)

(assert (=> b!377408 (= lt!175607 (+!856 lt!175602 lt!175601))))

(declare-fun v!373 () V!13179)

(declare-datatypes ((Unit!11611 0))(
  ( (Unit!11612) )
))
(declare-fun lt!175609 () Unit!11611)

(declare-fun lt!175605 () ListLongMap!4999)

(declare-fun zeroValue!472 () V!13179)

(declare-fun addCommutativeForDiffKeys!276 (ListLongMap!4999 (_ BitVec 64) V!13179 (_ BitVec 64) V!13179) Unit!11611)

(assert (=> b!377408 (= lt!175609 (addCommutativeForDiffKeys!276 lt!175605 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377409 () Bool)

(declare-fun res!213632 () Bool)

(assert (=> b!377409 (=> (not res!213632) (not e!229778))))

(assert (=> b!377409 (= res!213632 (or (= (select (arr!10470 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10470 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377410 () Bool)

(declare-fun res!213635 () Bool)

(assert (=> b!377410 (=> (not res!213635) (not e!229778))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4184 0))(
  ( (ValueCellFull!4184 (v!6765 V!13179)) (EmptyCell!4184) )
))
(declare-datatypes ((array!22011 0))(
  ( (array!22012 (arr!10471 (Array (_ BitVec 32) ValueCell!4184)) (size!10823 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22011)

(assert (=> b!377410 (= res!213635 (and (= (size!10823 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10822 _keys!658) (size!10823 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!213630 () Bool)

(assert (=> start!37288 (=> (not res!213630) (not e!229778))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37288 (= res!213630 (validMask!0 mask!970))))

(assert (=> start!37288 e!229778))

(declare-fun e!229776 () Bool)

(declare-fun array_inv!7710 (array!22011) Bool)

(assert (=> start!37288 (and (array_inv!7710 _values!506) e!229776)))

(assert (=> start!37288 tp!29936))

(assert (=> start!37288 true))

(assert (=> start!37288 tp_is_empty!9055))

(declare-fun array_inv!7711 (array!22009) Bool)

(assert (=> start!37288 (array_inv!7711 _keys!658)))

(declare-fun b!377411 () Bool)

(declare-fun res!213633 () Bool)

(assert (=> b!377411 (=> (not res!213633) (not e!229775))))

(declare-datatypes ((List!5942 0))(
  ( (Nil!5939) (Cons!5938 (h!6794 (_ BitVec 64)) (t!11100 List!5942)) )
))
(declare-fun arrayNoDuplicates!0 (array!22009 (_ BitVec 32) List!5942) Bool)

(assert (=> b!377411 (= res!213633 (arrayNoDuplicates!0 lt!175598 #b00000000000000000000000000000000 Nil!5939))))

(declare-fun b!377412 () Bool)

(declare-fun res!213638 () Bool)

(assert (=> b!377412 (=> (not res!213638) (not e!229778))))

(assert (=> b!377412 (= res!213638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!377413 () Bool)

(declare-fun res!213631 () Bool)

(assert (=> b!377413 (=> (not res!213631) (not e!229778))))

(declare-fun arrayContainsKey!0 (array!22009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377413 (= res!213631 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15147 () Bool)

(declare-fun mapRes!15147 () Bool)

(declare-fun tp!29937 () Bool)

(declare-fun e!229772 () Bool)

(assert (=> mapNonEmpty!15147 (= mapRes!15147 (and tp!29937 e!229772))))

(declare-fun mapKey!15147 () (_ BitVec 32))

(declare-fun mapRest!15147 () (Array (_ BitVec 32) ValueCell!4184))

(declare-fun mapValue!15147 () ValueCell!4184)

(assert (=> mapNonEmpty!15147 (= (arr!10471 _values!506) (store mapRest!15147 mapKey!15147 mapValue!15147))))

(declare-fun b!377414 () Bool)

(declare-fun res!213639 () Bool)

(assert (=> b!377414 (=> (not res!213639) (not e!229778))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377414 (= res!213639 (validKeyInArray!0 k!778))))

(declare-fun b!377415 () Bool)

(declare-fun res!213634 () Bool)

(assert (=> b!377415 (=> (not res!213634) (not e!229778))))

(assert (=> b!377415 (= res!213634 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5939))))

(declare-fun b!377416 () Bool)

(assert (=> b!377416 (= e!229772 tp_is_empty!9055)))

(declare-fun b!377417 () Bool)

(declare-fun e!229774 () Bool)

(assert (=> b!377417 (= e!229775 (not e!229774))))

(declare-fun res!213637 () Bool)

(assert (=> b!377417 (=> res!213637 e!229774)))

(assert (=> b!377417 (= res!213637 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!175600 () ListLongMap!4999)

(declare-fun minValue!472 () V!13179)

(declare-fun getCurrentListMap!1950 (array!22009 array!22011 (_ BitVec 32) (_ BitVec 32) V!13179 V!13179 (_ BitVec 32) Int) ListLongMap!4999)

(assert (=> b!377417 (= lt!175600 (getCurrentListMap!1950 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175608 () array!22011)

(declare-fun lt!175597 () ListLongMap!4999)

(assert (=> b!377417 (= lt!175597 (getCurrentListMap!1950 lt!175598 lt!175608 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175603 () ListLongMap!4999)

(declare-fun lt!175599 () ListLongMap!4999)

(assert (=> b!377417 (and (= lt!175603 lt!175599) (= lt!175599 lt!175603))))

(assert (=> b!377417 (= lt!175599 (+!856 lt!175605 lt!175601))))

(assert (=> b!377417 (= lt!175601 (tuple2!6073 k!778 v!373))))

(declare-fun lt!175604 () Unit!11611)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!101 (array!22009 array!22011 (_ BitVec 32) (_ BitVec 32) V!13179 V!13179 (_ BitVec 32) (_ BitVec 64) V!13179 (_ BitVec 32) Int) Unit!11611)

(assert (=> b!377417 (= lt!175604 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!101 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!768 (array!22009 array!22011 (_ BitVec 32) (_ BitVec 32) V!13179 V!13179 (_ BitVec 32) Int) ListLongMap!4999)

(assert (=> b!377417 (= lt!175603 (getCurrentListMapNoExtraKeys!768 lt!175598 lt!175608 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377417 (= lt!175608 (array!22012 (store (arr!10471 _values!506) i!548 (ValueCellFull!4184 v!373)) (size!10823 _values!506)))))

(assert (=> b!377417 (= lt!175605 (getCurrentListMapNoExtraKeys!768 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377418 () Bool)

(declare-fun res!213636 () Bool)

(assert (=> b!377418 (=> (not res!213636) (not e!229778))))

(assert (=> b!377418 (= res!213636 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10822 _keys!658))))))

(declare-fun b!377419 () Bool)

(assert (=> b!377419 (= e!229776 (and e!229777 mapRes!15147))))

(declare-fun condMapEmpty!15147 () Bool)

(declare-fun mapDefault!15147 () ValueCell!4184)

