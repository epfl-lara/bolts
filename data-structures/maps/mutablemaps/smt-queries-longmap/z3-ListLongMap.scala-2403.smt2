; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38046 () Bool)

(assert start!38046)

(declare-fun b_free!8985 () Bool)

(declare-fun b_next!8985 () Bool)

(assert (=> start!38046 (= b_free!8985 (not b_next!8985))))

(declare-fun tp!31728 () Bool)

(declare-fun b_and!16329 () Bool)

(assert (=> start!38046 (= tp!31728 b_and!16329)))

(declare-fun b!391377 () Bool)

(declare-fun e!237057 () Bool)

(declare-fun tp_is_empty!9657 () Bool)

(assert (=> b!391377 (= e!237057 tp_is_empty!9657)))

(declare-fun b!391378 () Bool)

(declare-fun e!237055 () Bool)

(assert (=> b!391378 (= e!237055 tp_is_empty!9657)))

(declare-fun b!391379 () Bool)

(declare-fun res!224119 () Bool)

(declare-fun e!237056 () Bool)

(assert (=> b!391379 (=> (not res!224119) (not e!237056))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!23193 0))(
  ( (array!23194 (arr!11055 (Array (_ BitVec 32) (_ BitVec 64))) (size!11407 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23193)

(assert (=> b!391379 (= res!224119 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11407 _keys!658))))))

(declare-fun b!391380 () Bool)

(declare-fun e!237054 () Bool)

(declare-datatypes ((V!13981 0))(
  ( (V!13982 (val!4873 Int)) )
))
(declare-datatypes ((ValueCell!4485 0))(
  ( (ValueCellFull!4485 (v!7094 V!13981)) (EmptyCell!4485) )
))
(declare-datatypes ((array!23195 0))(
  ( (array!23196 (arr!11056 (Array (_ BitVec 32) ValueCell!4485)) (size!11408 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23195)

(assert (=> b!391380 (= e!237054 (bvslt i!548 (size!11408 _values!506)))))

(declare-datatypes ((tuple2!6504 0))(
  ( (tuple2!6505 (_1!3262 (_ BitVec 64)) (_2!3262 V!13981)) )
))
(declare-datatypes ((List!6387 0))(
  ( (Nil!6384) (Cons!6383 (h!7239 tuple2!6504) (t!11559 List!6387)) )
))
(declare-datatypes ((ListLongMap!5431 0))(
  ( (ListLongMap!5432 (toList!2731 List!6387)) )
))
(declare-fun lt!184798 () ListLongMap!5431)

(declare-fun lt!184793 () ListLongMap!5431)

(declare-fun lt!184791 () tuple2!6504)

(declare-fun +!1029 (ListLongMap!5431 tuple2!6504) ListLongMap!5431)

(assert (=> b!391380 (= lt!184798 (+!1029 lt!184793 lt!184791))))

(declare-fun v!373 () V!13981)

(declare-fun lt!184797 () ListLongMap!5431)

(declare-datatypes ((Unit!11951 0))(
  ( (Unit!11952) )
))
(declare-fun lt!184789 () Unit!11951)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun zeroValue!472 () V!13981)

(declare-fun addCommutativeForDiffKeys!336 (ListLongMap!5431 (_ BitVec 64) V!13981 (_ BitVec 64) V!13981) Unit!11951)

(assert (=> b!391380 (= lt!184789 (addCommutativeForDiffKeys!336 lt!184797 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun res!224117 () Bool)

(assert (=> start!38046 (=> (not res!224117) (not e!237056))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38046 (= res!224117 (validMask!0 mask!970))))

(assert (=> start!38046 e!237056))

(declare-fun e!237052 () Bool)

(declare-fun array_inv!8104 (array!23195) Bool)

(assert (=> start!38046 (and (array_inv!8104 _values!506) e!237052)))

(assert (=> start!38046 tp!31728))

(assert (=> start!38046 true))

(assert (=> start!38046 tp_is_empty!9657))

(declare-fun array_inv!8105 (array!23193) Bool)

(assert (=> start!38046 (array_inv!8105 _keys!658)))

(declare-fun b!391381 () Bool)

(declare-fun res!224111 () Bool)

(assert (=> b!391381 (=> (not res!224111) (not e!237056))))

(declare-datatypes ((List!6388 0))(
  ( (Nil!6385) (Cons!6384 (h!7240 (_ BitVec 64)) (t!11560 List!6388)) )
))
(declare-fun arrayNoDuplicates!0 (array!23193 (_ BitVec 32) List!6388) Bool)

(assert (=> b!391381 (= res!224111 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6385))))

(declare-fun b!391382 () Bool)

(declare-fun res!224115 () Bool)

(assert (=> b!391382 (=> (not res!224115) (not e!237056))))

(assert (=> b!391382 (= res!224115 (or (= (select (arr!11055 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11055 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!391383 () Bool)

(declare-fun e!237058 () Bool)

(declare-fun e!237053 () Bool)

(assert (=> b!391383 (= e!237058 (not e!237053))))

(declare-fun res!224114 () Bool)

(assert (=> b!391383 (=> res!224114 e!237053)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!391383 (= res!224114 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!184790 () ListLongMap!5431)

(declare-fun minValue!472 () V!13981)

(declare-fun getCurrentListMap!2097 (array!23193 array!23195 (_ BitVec 32) (_ BitVec 32) V!13981 V!13981 (_ BitVec 32) Int) ListLongMap!5431)

(assert (=> b!391383 (= lt!184790 (getCurrentListMap!2097 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184786 () array!23195)

(declare-fun lt!184796 () array!23193)

(declare-fun lt!184787 () ListLongMap!5431)

(assert (=> b!391383 (= lt!184787 (getCurrentListMap!2097 lt!184796 lt!184786 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184794 () ListLongMap!5431)

(declare-fun lt!184795 () ListLongMap!5431)

(assert (=> b!391383 (and (= lt!184794 lt!184795) (= lt!184795 lt!184794))))

(assert (=> b!391383 (= lt!184795 (+!1029 lt!184797 lt!184791))))

(assert (=> b!391383 (= lt!184791 (tuple2!6505 k0!778 v!373))))

(declare-fun lt!184792 () Unit!11951)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!254 (array!23193 array!23195 (_ BitVec 32) (_ BitVec 32) V!13981 V!13981 (_ BitVec 32) (_ BitVec 64) V!13981 (_ BitVec 32) Int) Unit!11951)

(assert (=> b!391383 (= lt!184792 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!254 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!959 (array!23193 array!23195 (_ BitVec 32) (_ BitVec 32) V!13981 V!13981 (_ BitVec 32) Int) ListLongMap!5431)

(assert (=> b!391383 (= lt!184794 (getCurrentListMapNoExtraKeys!959 lt!184796 lt!184786 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391383 (= lt!184786 (array!23196 (store (arr!11056 _values!506) i!548 (ValueCellFull!4485 v!373)) (size!11408 _values!506)))))

(assert (=> b!391383 (= lt!184797 (getCurrentListMapNoExtraKeys!959 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391384 () Bool)

(declare-fun res!224113 () Bool)

(assert (=> b!391384 (=> (not res!224113) (not e!237056))))

(declare-fun arrayContainsKey!0 (array!23193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!391384 (= res!224113 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!391385 () Bool)

(assert (=> b!391385 (= e!237056 e!237058)))

(declare-fun res!224109 () Bool)

(assert (=> b!391385 (=> (not res!224109) (not e!237058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23193 (_ BitVec 32)) Bool)

(assert (=> b!391385 (= res!224109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184796 mask!970))))

(assert (=> b!391385 (= lt!184796 (array!23194 (store (arr!11055 _keys!658) i!548 k0!778) (size!11407 _keys!658)))))

(declare-fun b!391386 () Bool)

(assert (=> b!391386 (= e!237053 e!237054)))

(declare-fun res!224118 () Bool)

(assert (=> b!391386 (=> res!224118 e!237054)))

(assert (=> b!391386 (= res!224118 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!391386 (= lt!184787 lt!184798)))

(declare-fun lt!184788 () tuple2!6504)

(assert (=> b!391386 (= lt!184798 (+!1029 lt!184795 lt!184788))))

(assert (=> b!391386 (= lt!184790 lt!184793)))

(assert (=> b!391386 (= lt!184793 (+!1029 lt!184797 lt!184788))))

(assert (=> b!391386 (= lt!184787 (+!1029 lt!184794 lt!184788))))

(assert (=> b!391386 (= lt!184788 (tuple2!6505 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!391387 () Bool)

(declare-fun res!224116 () Bool)

(assert (=> b!391387 (=> (not res!224116) (not e!237056))))

(assert (=> b!391387 (= res!224116 (and (= (size!11408 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11407 _keys!658) (size!11408 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!391388 () Bool)

(declare-fun mapRes!16071 () Bool)

(assert (=> b!391388 (= e!237052 (and e!237057 mapRes!16071))))

(declare-fun condMapEmpty!16071 () Bool)

(declare-fun mapDefault!16071 () ValueCell!4485)

(assert (=> b!391388 (= condMapEmpty!16071 (= (arr!11056 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4485)) mapDefault!16071)))))

(declare-fun b!391389 () Bool)

(declare-fun res!224108 () Bool)

(assert (=> b!391389 (=> (not res!224108) (not e!237058))))

(assert (=> b!391389 (= res!224108 (arrayNoDuplicates!0 lt!184796 #b00000000000000000000000000000000 Nil!6385))))

(declare-fun mapNonEmpty!16071 () Bool)

(declare-fun tp!31727 () Bool)

(assert (=> mapNonEmpty!16071 (= mapRes!16071 (and tp!31727 e!237055))))

(declare-fun mapValue!16071 () ValueCell!4485)

(declare-fun mapKey!16071 () (_ BitVec 32))

(declare-fun mapRest!16071 () (Array (_ BitVec 32) ValueCell!4485))

(assert (=> mapNonEmpty!16071 (= (arr!11056 _values!506) (store mapRest!16071 mapKey!16071 mapValue!16071))))

(declare-fun b!391390 () Bool)

(declare-fun res!224112 () Bool)

(assert (=> b!391390 (=> (not res!224112) (not e!237056))))

(assert (=> b!391390 (= res!224112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391391 () Bool)

(declare-fun res!224110 () Bool)

(assert (=> b!391391 (=> (not res!224110) (not e!237056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!391391 (= res!224110 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!16071 () Bool)

(assert (=> mapIsEmpty!16071 mapRes!16071))

(assert (= (and start!38046 res!224117) b!391387))

(assert (= (and b!391387 res!224116) b!391390))

(assert (= (and b!391390 res!224112) b!391381))

(assert (= (and b!391381 res!224111) b!391379))

(assert (= (and b!391379 res!224119) b!391391))

(assert (= (and b!391391 res!224110) b!391382))

(assert (= (and b!391382 res!224115) b!391384))

(assert (= (and b!391384 res!224113) b!391385))

(assert (= (and b!391385 res!224109) b!391389))

(assert (= (and b!391389 res!224108) b!391383))

(assert (= (and b!391383 (not res!224114)) b!391386))

(assert (= (and b!391386 (not res!224118)) b!391380))

(assert (= (and b!391388 condMapEmpty!16071) mapIsEmpty!16071))

(assert (= (and b!391388 (not condMapEmpty!16071)) mapNonEmpty!16071))

(get-info :version)

(assert (= (and mapNonEmpty!16071 ((_ is ValueCellFull!4485) mapValue!16071)) b!391378))

(assert (= (and b!391388 ((_ is ValueCellFull!4485) mapDefault!16071)) b!391377))

(assert (= start!38046 b!391388))

(declare-fun m!387793 () Bool)

(assert (=> b!391383 m!387793))

(declare-fun m!387795 () Bool)

(assert (=> b!391383 m!387795))

(declare-fun m!387797 () Bool)

(assert (=> b!391383 m!387797))

(declare-fun m!387799 () Bool)

(assert (=> b!391383 m!387799))

(declare-fun m!387801 () Bool)

(assert (=> b!391383 m!387801))

(declare-fun m!387803 () Bool)

(assert (=> b!391383 m!387803))

(declare-fun m!387805 () Bool)

(assert (=> b!391383 m!387805))

(declare-fun m!387807 () Bool)

(assert (=> b!391382 m!387807))

(declare-fun m!387809 () Bool)

(assert (=> b!391390 m!387809))

(declare-fun m!387811 () Bool)

(assert (=> b!391391 m!387811))

(declare-fun m!387813 () Bool)

(assert (=> b!391389 m!387813))

(declare-fun m!387815 () Bool)

(assert (=> b!391380 m!387815))

(declare-fun m!387817 () Bool)

(assert (=> b!391380 m!387817))

(declare-fun m!387819 () Bool)

(assert (=> b!391385 m!387819))

(declare-fun m!387821 () Bool)

(assert (=> b!391385 m!387821))

(declare-fun m!387823 () Bool)

(assert (=> mapNonEmpty!16071 m!387823))

(declare-fun m!387825 () Bool)

(assert (=> b!391386 m!387825))

(declare-fun m!387827 () Bool)

(assert (=> b!391386 m!387827))

(declare-fun m!387829 () Bool)

(assert (=> b!391386 m!387829))

(declare-fun m!387831 () Bool)

(assert (=> start!38046 m!387831))

(declare-fun m!387833 () Bool)

(assert (=> start!38046 m!387833))

(declare-fun m!387835 () Bool)

(assert (=> start!38046 m!387835))

(declare-fun m!387837 () Bool)

(assert (=> b!391381 m!387837))

(declare-fun m!387839 () Bool)

(assert (=> b!391384 m!387839))

(check-sat b_and!16329 (not b!391385) (not start!38046) (not b!391391) (not b!391381) (not b_next!8985) (not b!391380) (not b!391389) (not b!391384) (not b!391390) (not b!391386) tp_is_empty!9657 (not b!391383) (not mapNonEmpty!16071))
(check-sat b_and!16329 (not b_next!8985))
