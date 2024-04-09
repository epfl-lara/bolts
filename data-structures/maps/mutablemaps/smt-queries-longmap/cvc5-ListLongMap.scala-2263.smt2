; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37048 () Bool)

(assert start!37048)

(declare-fun b_free!8167 () Bool)

(declare-fun b_next!8167 () Bool)

(assert (=> start!37048 (= b_free!8167 (not b_next!8167))))

(declare-fun tp!29217 () Bool)

(declare-fun b_and!15427 () Bool)

(assert (=> start!37048 (= tp!29217 b_and!15427)))

(declare-fun b!372101 () Bool)

(declare-fun res!209409 () Bool)

(declare-fun e!227009 () Bool)

(assert (=> b!372101 (=> (not res!209409) (not e!227009))))

(declare-datatypes ((array!21539 0))(
  ( (array!21540 (arr!10235 (Array (_ BitVec 32) (_ BitVec 64))) (size!10587 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21539)

(declare-datatypes ((List!5755 0))(
  ( (Nil!5752) (Cons!5751 (h!6607 (_ BitVec 64)) (t!10913 List!5755)) )
))
(declare-fun arrayNoDuplicates!0 (array!21539 (_ BitVec 32) List!5755) Bool)

(assert (=> b!372101 (= res!209409 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5752))))

(declare-fun mapNonEmpty!14787 () Bool)

(declare-fun mapRes!14787 () Bool)

(declare-fun tp!29216 () Bool)

(declare-fun e!227008 () Bool)

(assert (=> mapNonEmpty!14787 (= mapRes!14787 (and tp!29216 e!227008))))

(declare-datatypes ((V!12859 0))(
  ( (V!12860 (val!4452 Int)) )
))
(declare-datatypes ((ValueCell!4064 0))(
  ( (ValueCellFull!4064 (v!6645 V!12859)) (EmptyCell!4064) )
))
(declare-fun mapValue!14787 () ValueCell!4064)

(declare-datatypes ((array!21541 0))(
  ( (array!21542 (arr!10236 (Array (_ BitVec 32) ValueCell!4064)) (size!10588 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21541)

(declare-fun mapRest!14787 () (Array (_ BitVec 32) ValueCell!4064))

(declare-fun mapKey!14787 () (_ BitVec 32))

(assert (=> mapNonEmpty!14787 (= (arr!10236 _values!506) (store mapRest!14787 mapKey!14787 mapValue!14787))))

(declare-fun b!372102 () Bool)

(declare-fun res!209412 () Bool)

(assert (=> b!372102 (=> (not res!209412) (not e!227009))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!372102 (= res!209412 (or (= (select (arr!10235 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10235 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!372103 () Bool)

(declare-fun e!227006 () Bool)

(assert (=> b!372103 (= e!227006 (not true))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5882 0))(
  ( (tuple2!5883 (_1!2951 (_ BitVec 64)) (_2!2951 V!12859)) )
))
(declare-datatypes ((List!5756 0))(
  ( (Nil!5753) (Cons!5752 (h!6608 tuple2!5882) (t!10914 List!5756)) )
))
(declare-datatypes ((ListLongMap!4809 0))(
  ( (ListLongMap!4810 (toList!2420 List!5756)) )
))
(declare-fun lt!170639 () ListLongMap!4809)

(declare-fun lt!170641 () array!21541)

(declare-fun lt!170635 () array!21539)

(declare-fun zeroValue!472 () V!12859)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!12859)

(declare-fun getCurrentListMap!1870 (array!21539 array!21541 (_ BitVec 32) (_ BitVec 32) V!12859 V!12859 (_ BitVec 32) Int) ListLongMap!4809)

(assert (=> b!372103 (= lt!170639 (getCurrentListMap!1870 lt!170635 lt!170641 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170636 () ListLongMap!4809)

(declare-fun lt!170638 () ListLongMap!4809)

(assert (=> b!372103 (and (= lt!170636 lt!170638) (= lt!170638 lt!170636))))

(declare-fun v!373 () V!12859)

(declare-fun lt!170640 () ListLongMap!4809)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun +!761 (ListLongMap!4809 tuple2!5882) ListLongMap!4809)

(assert (=> b!372103 (= lt!170638 (+!761 lt!170640 (tuple2!5883 k!778 v!373)))))

(declare-datatypes ((Unit!11427 0))(
  ( (Unit!11428) )
))
(declare-fun lt!170637 () Unit!11427)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!21 (array!21539 array!21541 (_ BitVec 32) (_ BitVec 32) V!12859 V!12859 (_ BitVec 32) (_ BitVec 64) V!12859 (_ BitVec 32) Int) Unit!11427)

(assert (=> b!372103 (= lt!170637 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!21 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!688 (array!21539 array!21541 (_ BitVec 32) (_ BitVec 32) V!12859 V!12859 (_ BitVec 32) Int) ListLongMap!4809)

(assert (=> b!372103 (= lt!170636 (getCurrentListMapNoExtraKeys!688 lt!170635 lt!170641 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!372103 (= lt!170641 (array!21542 (store (arr!10236 _values!506) i!548 (ValueCellFull!4064 v!373)) (size!10588 _values!506)))))

(assert (=> b!372103 (= lt!170640 (getCurrentListMapNoExtraKeys!688 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!372104 () Bool)

(declare-fun tp_is_empty!8815 () Bool)

(assert (=> b!372104 (= e!227008 tp_is_empty!8815)))

(declare-fun b!372105 () Bool)

(declare-fun res!209406 () Bool)

(assert (=> b!372105 (=> (not res!209406) (not e!227009))))

(assert (=> b!372105 (= res!209406 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10587 _keys!658))))))

(declare-fun b!372106 () Bool)

(declare-fun res!209413 () Bool)

(assert (=> b!372106 (=> (not res!209413) (not e!227009))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!372106 (= res!209413 (validKeyInArray!0 k!778))))

(declare-fun res!209411 () Bool)

(assert (=> start!37048 (=> (not res!209411) (not e!227009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37048 (= res!209411 (validMask!0 mask!970))))

(assert (=> start!37048 e!227009))

(declare-fun e!227005 () Bool)

(declare-fun array_inv!7558 (array!21541) Bool)

(assert (=> start!37048 (and (array_inv!7558 _values!506) e!227005)))

(assert (=> start!37048 tp!29217))

(assert (=> start!37048 true))

(assert (=> start!37048 tp_is_empty!8815))

(declare-fun array_inv!7559 (array!21539) Bool)

(assert (=> start!37048 (array_inv!7559 _keys!658)))

(declare-fun b!372107 () Bool)

(assert (=> b!372107 (= e!227009 e!227006)))

(declare-fun res!209405 () Bool)

(assert (=> b!372107 (=> (not res!209405) (not e!227006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21539 (_ BitVec 32)) Bool)

(assert (=> b!372107 (= res!209405 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170635 mask!970))))

(assert (=> b!372107 (= lt!170635 (array!21540 (store (arr!10235 _keys!658) i!548 k!778) (size!10587 _keys!658)))))

(declare-fun b!372108 () Bool)

(declare-fun res!209407 () Bool)

(assert (=> b!372108 (=> (not res!209407) (not e!227009))))

(assert (=> b!372108 (= res!209407 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!372109 () Bool)

(declare-fun res!209408 () Bool)

(assert (=> b!372109 (=> (not res!209408) (not e!227006))))

(assert (=> b!372109 (= res!209408 (arrayNoDuplicates!0 lt!170635 #b00000000000000000000000000000000 Nil!5752))))

(declare-fun b!372110 () Bool)

(declare-fun res!209414 () Bool)

(assert (=> b!372110 (=> (not res!209414) (not e!227009))))

(declare-fun arrayContainsKey!0 (array!21539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!372110 (= res!209414 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!372111 () Bool)

(declare-fun e!227007 () Bool)

(assert (=> b!372111 (= e!227007 tp_is_empty!8815)))

(declare-fun b!372112 () Bool)

(assert (=> b!372112 (= e!227005 (and e!227007 mapRes!14787))))

(declare-fun condMapEmpty!14787 () Bool)

(declare-fun mapDefault!14787 () ValueCell!4064)

