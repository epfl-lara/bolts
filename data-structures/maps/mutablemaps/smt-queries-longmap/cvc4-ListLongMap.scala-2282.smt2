; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37166 () Bool)

(assert start!37166)

(declare-fun b_free!8285 () Bool)

(declare-fun b_next!8285 () Bool)

(assert (=> start!37166 (= b_free!8285 (not b_next!8285))))

(declare-fun tp!29571 () Bool)

(declare-fun b_and!15545 () Bool)

(assert (=> start!37166 (= tp!29571 b_and!15545)))

(declare-fun b!374652 () Bool)

(declare-fun res!211429 () Bool)

(declare-fun e!228311 () Bool)

(assert (=> b!374652 (=> (not res!211429) (not e!228311))))

(declare-datatypes ((array!21765 0))(
  ( (array!21766 (arr!10348 (Array (_ BitVec 32) (_ BitVec 64))) (size!10700 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21765)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21765 (_ BitVec 32)) Bool)

(assert (=> b!374652 (= res!211429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!14964 () Bool)

(declare-fun mapRes!14964 () Bool)

(declare-fun tp!29570 () Bool)

(declare-fun e!228312 () Bool)

(assert (=> mapNonEmpty!14964 (= mapRes!14964 (and tp!29570 e!228312))))

(declare-datatypes ((V!13015 0))(
  ( (V!13016 (val!4511 Int)) )
))
(declare-datatypes ((ValueCell!4123 0))(
  ( (ValueCellFull!4123 (v!6704 V!13015)) (EmptyCell!4123) )
))
(declare-fun mapValue!14964 () ValueCell!4123)

(declare-datatypes ((array!21767 0))(
  ( (array!21768 (arr!10349 (Array (_ BitVec 32) ValueCell!4123)) (size!10701 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21767)

(declare-fun mapRest!14964 () (Array (_ BitVec 32) ValueCell!4123))

(declare-fun mapKey!14964 () (_ BitVec 32))

(assert (=> mapNonEmpty!14964 (= (arr!10349 _values!506) (store mapRest!14964 mapKey!14964 mapValue!14964))))

(declare-fun mapIsEmpty!14964 () Bool)

(assert (=> mapIsEmpty!14964 mapRes!14964))

(declare-fun b!374653 () Bool)

(declare-fun e!228315 () Bool)

(assert (=> b!374653 (= e!228311 e!228315)))

(declare-fun res!211436 () Bool)

(assert (=> b!374653 (=> (not res!211436) (not e!228315))))

(declare-fun lt!173046 () array!21765)

(assert (=> b!374653 (= res!211436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173046 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!374653 (= lt!173046 (array!21766 (store (arr!10348 _keys!658) i!548 k!778) (size!10700 _keys!658)))))

(declare-fun b!374654 () Bool)

(declare-fun res!211435 () Bool)

(assert (=> b!374654 (=> (not res!211435) (not e!228311))))

(declare-fun arrayContainsKey!0 (array!21765 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374654 (= res!211435 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!374655 () Bool)

(declare-fun e!228310 () Bool)

(assert (=> b!374655 (= e!228315 (not e!228310))))

(declare-fun res!211434 () Bool)

(assert (=> b!374655 (=> res!211434 e!228310)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!374655 (= res!211434 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13015)

(declare-datatypes ((tuple2!5974 0))(
  ( (tuple2!5975 (_1!2997 (_ BitVec 64)) (_2!2997 V!13015)) )
))
(declare-datatypes ((List!5844 0))(
  ( (Nil!5841) (Cons!5840 (h!6696 tuple2!5974) (t!11002 List!5844)) )
))
(declare-datatypes ((ListLongMap!4901 0))(
  ( (ListLongMap!4902 (toList!2466 List!5844)) )
))
(declare-fun lt!173045 () ListLongMap!4901)

(declare-fun minValue!472 () V!13015)

(declare-fun getCurrentListMap!1909 (array!21765 array!21767 (_ BitVec 32) (_ BitVec 32) V!13015 V!13015 (_ BitVec 32) Int) ListLongMap!4901)

(assert (=> b!374655 (= lt!173045 (getCurrentListMap!1909 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173044 () ListLongMap!4901)

(declare-fun lt!173036 () array!21767)

(assert (=> b!374655 (= lt!173044 (getCurrentListMap!1909 lt!173046 lt!173036 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!173035 () ListLongMap!4901)

(declare-fun lt!173049 () ListLongMap!4901)

(assert (=> b!374655 (and (= lt!173035 lt!173049) (= lt!173049 lt!173035))))

(declare-fun lt!173048 () ListLongMap!4901)

(declare-fun lt!173050 () tuple2!5974)

(declare-fun +!807 (ListLongMap!4901 tuple2!5974) ListLongMap!4901)

(assert (=> b!374655 (= lt!173049 (+!807 lt!173048 lt!173050))))

(declare-fun v!373 () V!13015)

(assert (=> b!374655 (= lt!173050 (tuple2!5975 k!778 v!373))))

(declare-datatypes ((Unit!11517 0))(
  ( (Unit!11518) )
))
(declare-fun lt!173034 () Unit!11517)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!60 (array!21765 array!21767 (_ BitVec 32) (_ BitVec 32) V!13015 V!13015 (_ BitVec 32) (_ BitVec 64) V!13015 (_ BitVec 32) Int) Unit!11517)

(assert (=> b!374655 (= lt!173034 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!60 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!727 (array!21765 array!21767 (_ BitVec 32) (_ BitVec 32) V!13015 V!13015 (_ BitVec 32) Int) ListLongMap!4901)

(assert (=> b!374655 (= lt!173035 (getCurrentListMapNoExtraKeys!727 lt!173046 lt!173036 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!374655 (= lt!173036 (array!21768 (store (arr!10349 _values!506) i!548 (ValueCellFull!4123 v!373)) (size!10701 _values!506)))))

(assert (=> b!374655 (= lt!173048 (getCurrentListMapNoExtraKeys!727 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!374656 () Bool)

(declare-fun e!228313 () Bool)

(assert (=> b!374656 (= e!228310 e!228313)))

(declare-fun res!211431 () Bool)

(assert (=> b!374656 (=> res!211431 e!228313)))

(assert (=> b!374656 (= res!211431 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!173040 () ListLongMap!4901)

(declare-fun lt!173041 () ListLongMap!4901)

(assert (=> b!374656 (= lt!173040 lt!173041)))

(declare-fun lt!173039 () ListLongMap!4901)

(assert (=> b!374656 (= lt!173041 (+!807 lt!173039 lt!173050))))

(declare-fun lt!173047 () Unit!11517)

(declare-fun addCommutativeForDiffKeys!236 (ListLongMap!4901 (_ BitVec 64) V!13015 (_ BitVec 64) V!13015) Unit!11517)

(assert (=> b!374656 (= lt!173047 (addCommutativeForDiffKeys!236 lt!173048 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun lt!173043 () tuple2!5974)

(assert (=> b!374656 (= lt!173044 (+!807 lt!173040 lt!173043))))

(declare-fun lt!173038 () tuple2!5974)

(assert (=> b!374656 (= lt!173040 (+!807 lt!173049 lt!173038))))

(declare-fun lt!173037 () ListLongMap!4901)

(assert (=> b!374656 (= lt!173045 lt!173037)))

(assert (=> b!374656 (= lt!173037 (+!807 lt!173039 lt!173043))))

(assert (=> b!374656 (= lt!173039 (+!807 lt!173048 lt!173038))))

(assert (=> b!374656 (= lt!173044 (+!807 (+!807 lt!173035 lt!173038) lt!173043))))

(assert (=> b!374656 (= lt!173043 (tuple2!5975 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!374656 (= lt!173038 (tuple2!5975 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!374658 () Bool)

(declare-fun e!228309 () Bool)

(declare-fun tp_is_empty!8933 () Bool)

(assert (=> b!374658 (= e!228309 tp_is_empty!8933)))

(declare-fun b!374659 () Bool)

(assert (=> b!374659 (= e!228313 true)))

(assert (=> b!374659 (= (+!807 lt!173041 lt!173043) (+!807 lt!173037 lt!173050))))

(declare-fun lt!173042 () Unit!11517)

(assert (=> b!374659 (= lt!173042 (addCommutativeForDiffKeys!236 lt!173039 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!374660 () Bool)

(assert (=> b!374660 (= e!228312 tp_is_empty!8933)))

(declare-fun b!374661 () Bool)

(declare-fun res!211428 () Bool)

(assert (=> b!374661 (=> (not res!211428) (not e!228311))))

(assert (=> b!374661 (= res!211428 (or (= (select (arr!10348 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10348 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!374662 () Bool)

(declare-fun res!211433 () Bool)

(assert (=> b!374662 (=> (not res!211433) (not e!228311))))

(assert (=> b!374662 (= res!211433 (and (= (size!10701 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10700 _keys!658) (size!10701 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!374663 () Bool)

(declare-fun e!228308 () Bool)

(assert (=> b!374663 (= e!228308 (and e!228309 mapRes!14964))))

(declare-fun condMapEmpty!14964 () Bool)

(declare-fun mapDefault!14964 () ValueCell!4123)

