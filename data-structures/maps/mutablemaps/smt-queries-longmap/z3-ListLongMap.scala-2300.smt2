; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37272 () Bool)

(assert start!37272)

(declare-fun b_free!8391 () Bool)

(declare-fun b_next!8391 () Bool)

(assert (=> start!37272 (= b_free!8391 (not b_next!8391))))

(declare-fun tp!29889 () Bool)

(declare-fun b_and!15651 () Bool)

(assert (=> start!37272 (= tp!29889 b_and!15651)))

(declare-fun b!377046 () Bool)

(declare-fun res!213342 () Bool)

(declare-fun e!229581 () Bool)

(assert (=> b!377046 (=> (not res!213342) (not e!229581))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13157 0))(
  ( (V!13158 (val!4564 Int)) )
))
(declare-datatypes ((ValueCell!4176 0))(
  ( (ValueCellFull!4176 (v!6757 V!13157)) (EmptyCell!4176) )
))
(declare-datatypes ((array!21977 0))(
  ( (array!21978 (arr!10454 (Array (_ BitVec 32) ValueCell!4176)) (size!10806 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21977)

(declare-datatypes ((array!21979 0))(
  ( (array!21980 (arr!10455 (Array (_ BitVec 32) (_ BitVec 64))) (size!10807 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21979)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!377046 (= res!213342 (and (= (size!10806 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10807 _keys!658) (size!10806 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!213352 () Bool)

(assert (=> start!37272 (=> (not res!213352) (not e!229581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37272 (= res!213352 (validMask!0 mask!970))))

(assert (=> start!37272 e!229581))

(declare-fun e!229580 () Bool)

(declare-fun array_inv!7698 (array!21977) Bool)

(assert (=> start!37272 (and (array_inv!7698 _values!506) e!229580)))

(assert (=> start!37272 tp!29889))

(assert (=> start!37272 true))

(declare-fun tp_is_empty!9039 () Bool)

(assert (=> start!37272 tp_is_empty!9039))

(declare-fun array_inv!7699 (array!21979) Bool)

(assert (=> start!37272 (array_inv!7699 _keys!658)))

(declare-fun b!377047 () Bool)

(declare-fun e!229584 () Bool)

(assert (=> b!377047 (= e!229581 e!229584)))

(declare-fun res!213353 () Bool)

(assert (=> b!377047 (=> (not res!213353) (not e!229584))))

(declare-fun lt!175287 () array!21979)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21979 (_ BitVec 32)) Bool)

(assert (=> b!377047 (= res!213353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175287 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377047 (= lt!175287 (array!21980 (store (arr!10455 _keys!658) i!548 k0!778) (size!10807 _keys!658)))))

(declare-fun b!377048 () Bool)

(declare-fun e!229587 () Bool)

(assert (=> b!377048 (= e!229587 tp_is_empty!9039)))

(declare-fun b!377049 () Bool)

(declare-fun e!229583 () Bool)

(assert (=> b!377049 (= e!229584 (not e!229583))))

(declare-fun res!213348 () Bool)

(assert (=> b!377049 (=> res!213348 e!229583)))

(assert (=> b!377049 (= res!213348 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6058 0))(
  ( (tuple2!6059 (_1!3039 (_ BitVec 64)) (_2!3039 V!13157)) )
))
(declare-datatypes ((List!5927 0))(
  ( (Nil!5924) (Cons!5923 (h!6779 tuple2!6058) (t!11085 List!5927)) )
))
(declare-datatypes ((ListLongMap!4985 0))(
  ( (ListLongMap!4986 (toList!2508 List!5927)) )
))
(declare-fun lt!175286 () ListLongMap!4985)

(declare-fun zeroValue!472 () V!13157)

(declare-fun minValue!472 () V!13157)

(declare-fun getCurrentListMap!1945 (array!21979 array!21977 (_ BitVec 32) (_ BitVec 32) V!13157 V!13157 (_ BitVec 32) Int) ListLongMap!4985)

(assert (=> b!377049 (= lt!175286 (getCurrentListMap!1945 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175288 () ListLongMap!4985)

(declare-fun lt!175293 () array!21977)

(assert (=> b!377049 (= lt!175288 (getCurrentListMap!1945 lt!175287 lt!175293 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175292 () ListLongMap!4985)

(declare-fun lt!175295 () ListLongMap!4985)

(assert (=> b!377049 (and (= lt!175292 lt!175295) (= lt!175295 lt!175292))))

(declare-fun lt!175289 () ListLongMap!4985)

(declare-fun lt!175285 () tuple2!6058)

(declare-fun +!849 (ListLongMap!4985 tuple2!6058) ListLongMap!4985)

(assert (=> b!377049 (= lt!175295 (+!849 lt!175289 lt!175285))))

(declare-fun v!373 () V!13157)

(assert (=> b!377049 (= lt!175285 (tuple2!6059 k0!778 v!373))))

(declare-datatypes ((Unit!11599 0))(
  ( (Unit!11600) )
))
(declare-fun lt!175294 () Unit!11599)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!96 (array!21979 array!21977 (_ BitVec 32) (_ BitVec 32) V!13157 V!13157 (_ BitVec 32) (_ BitVec 64) V!13157 (_ BitVec 32) Int) Unit!11599)

(assert (=> b!377049 (= lt!175294 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!96 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!763 (array!21979 array!21977 (_ BitVec 32) (_ BitVec 32) V!13157 V!13157 (_ BitVec 32) Int) ListLongMap!4985)

(assert (=> b!377049 (= lt!175292 (getCurrentListMapNoExtraKeys!763 lt!175287 lt!175293 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377049 (= lt!175293 (array!21978 (store (arr!10454 _values!506) i!548 (ValueCellFull!4176 v!373)) (size!10806 _values!506)))))

(assert (=> b!377049 (= lt!175289 (getCurrentListMapNoExtraKeys!763 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377050 () Bool)

(declare-fun res!213349 () Bool)

(assert (=> b!377050 (=> (not res!213349) (not e!229581))))

(assert (=> b!377050 (= res!213349 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10807 _keys!658))))))

(declare-fun b!377051 () Bool)

(declare-fun res!213344 () Bool)

(assert (=> b!377051 (=> (not res!213344) (not e!229581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!377051 (= res!213344 (validKeyInArray!0 k0!778))))

(declare-fun b!377052 () Bool)

(declare-fun res!213350 () Bool)

(assert (=> b!377052 (=> (not res!213350) (not e!229581))))

(declare-fun arrayContainsKey!0 (array!21979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!377052 (= res!213350 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!377053 () Bool)

(declare-fun res!213343 () Bool)

(assert (=> b!377053 (=> (not res!213343) (not e!229581))))

(assert (=> b!377053 (= res!213343 (or (= (select (arr!10455 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10455 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!377054 () Bool)

(declare-fun e!229585 () Bool)

(assert (=> b!377054 (= e!229583 e!229585)))

(declare-fun res!213346 () Bool)

(assert (=> b!377054 (=> res!213346 e!229585)))

(assert (=> b!377054 (= res!213346 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!175291 () ListLongMap!4985)

(assert (=> b!377054 (= lt!175288 lt!175291)))

(declare-fun lt!175297 () tuple2!6058)

(assert (=> b!377054 (= lt!175291 (+!849 lt!175295 lt!175297))))

(declare-fun lt!175296 () ListLongMap!4985)

(assert (=> b!377054 (= lt!175286 lt!175296)))

(assert (=> b!377054 (= lt!175296 (+!849 lt!175289 lt!175297))))

(assert (=> b!377054 (= lt!175288 (+!849 lt!175292 lt!175297))))

(assert (=> b!377054 (= lt!175297 (tuple2!6059 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377055 () Bool)

(declare-fun res!213351 () Bool)

(assert (=> b!377055 (=> (not res!213351) (not e!229581))))

(declare-datatypes ((List!5928 0))(
  ( (Nil!5925) (Cons!5924 (h!6780 (_ BitVec 64)) (t!11086 List!5928)) )
))
(declare-fun arrayNoDuplicates!0 (array!21979 (_ BitVec 32) List!5928) Bool)

(assert (=> b!377055 (= res!213351 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5925))))

(declare-fun b!377056 () Bool)

(assert (=> b!377056 (= e!229585 true)))

(assert (=> b!377056 (= lt!175291 (+!849 lt!175296 lt!175285))))

(declare-fun lt!175290 () Unit!11599)

(declare-fun addCommutativeForDiffKeys!271 (ListLongMap!4985 (_ BitVec 64) V!13157 (_ BitVec 64) V!13157) Unit!11599)

(assert (=> b!377056 (= lt!175290 (addCommutativeForDiffKeys!271 lt!175289 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377057 () Bool)

(declare-fun e!229586 () Bool)

(declare-fun mapRes!15123 () Bool)

(assert (=> b!377057 (= e!229580 (and e!229586 mapRes!15123))))

(declare-fun condMapEmpty!15123 () Bool)

(declare-fun mapDefault!15123 () ValueCell!4176)

(assert (=> b!377057 (= condMapEmpty!15123 (= (arr!10454 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4176)) mapDefault!15123)))))

(declare-fun b!377058 () Bool)

(declare-fun res!213347 () Bool)

(assert (=> b!377058 (=> (not res!213347) (not e!229584))))

(assert (=> b!377058 (= res!213347 (arrayNoDuplicates!0 lt!175287 #b00000000000000000000000000000000 Nil!5925))))

(declare-fun b!377059 () Bool)

(assert (=> b!377059 (= e!229586 tp_is_empty!9039)))

(declare-fun b!377060 () Bool)

(declare-fun res!213345 () Bool)

(assert (=> b!377060 (=> (not res!213345) (not e!229581))))

(assert (=> b!377060 (= res!213345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapNonEmpty!15123 () Bool)

(declare-fun tp!29888 () Bool)

(assert (=> mapNonEmpty!15123 (= mapRes!15123 (and tp!29888 e!229587))))

(declare-fun mapRest!15123 () (Array (_ BitVec 32) ValueCell!4176))

(declare-fun mapValue!15123 () ValueCell!4176)

(declare-fun mapKey!15123 () (_ BitVec 32))

(assert (=> mapNonEmpty!15123 (= (arr!10454 _values!506) (store mapRest!15123 mapKey!15123 mapValue!15123))))

(declare-fun mapIsEmpty!15123 () Bool)

(assert (=> mapIsEmpty!15123 mapRes!15123))

(assert (= (and start!37272 res!213352) b!377046))

(assert (= (and b!377046 res!213342) b!377060))

(assert (= (and b!377060 res!213345) b!377055))

(assert (= (and b!377055 res!213351) b!377050))

(assert (= (and b!377050 res!213349) b!377051))

(assert (= (and b!377051 res!213344) b!377053))

(assert (= (and b!377053 res!213343) b!377052))

(assert (= (and b!377052 res!213350) b!377047))

(assert (= (and b!377047 res!213353) b!377058))

(assert (= (and b!377058 res!213347) b!377049))

(assert (= (and b!377049 (not res!213348)) b!377054))

(assert (= (and b!377054 (not res!213346)) b!377056))

(assert (= (and b!377057 condMapEmpty!15123) mapIsEmpty!15123))

(assert (= (and b!377057 (not condMapEmpty!15123)) mapNonEmpty!15123))

(get-info :version)

(assert (= (and mapNonEmpty!15123 ((_ is ValueCellFull!4176) mapValue!15123)) b!377048))

(assert (= (and b!377057 ((_ is ValueCellFull!4176) mapDefault!15123)) b!377059))

(assert (= start!37272 b!377057))

(declare-fun m!373841 () Bool)

(assert (=> b!377051 m!373841))

(declare-fun m!373843 () Bool)

(assert (=> b!377049 m!373843))

(declare-fun m!373845 () Bool)

(assert (=> b!377049 m!373845))

(declare-fun m!373847 () Bool)

(assert (=> b!377049 m!373847))

(declare-fun m!373849 () Bool)

(assert (=> b!377049 m!373849))

(declare-fun m!373851 () Bool)

(assert (=> b!377049 m!373851))

(declare-fun m!373853 () Bool)

(assert (=> b!377049 m!373853))

(declare-fun m!373855 () Bool)

(assert (=> b!377049 m!373855))

(declare-fun m!373857 () Bool)

(assert (=> start!37272 m!373857))

(declare-fun m!373859 () Bool)

(assert (=> start!37272 m!373859))

(declare-fun m!373861 () Bool)

(assert (=> start!37272 m!373861))

(declare-fun m!373863 () Bool)

(assert (=> b!377047 m!373863))

(declare-fun m!373865 () Bool)

(assert (=> b!377047 m!373865))

(declare-fun m!373867 () Bool)

(assert (=> b!377056 m!373867))

(declare-fun m!373869 () Bool)

(assert (=> b!377056 m!373869))

(declare-fun m!373871 () Bool)

(assert (=> b!377058 m!373871))

(declare-fun m!373873 () Bool)

(assert (=> b!377052 m!373873))

(declare-fun m!373875 () Bool)

(assert (=> b!377053 m!373875))

(declare-fun m!373877 () Bool)

(assert (=> b!377055 m!373877))

(declare-fun m!373879 () Bool)

(assert (=> b!377054 m!373879))

(declare-fun m!373881 () Bool)

(assert (=> b!377054 m!373881))

(declare-fun m!373883 () Bool)

(assert (=> b!377054 m!373883))

(declare-fun m!373885 () Bool)

(assert (=> mapNonEmpty!15123 m!373885))

(declare-fun m!373887 () Bool)

(assert (=> b!377060 m!373887))

(check-sat (not b!377047) (not mapNonEmpty!15123) (not b!377052) tp_is_empty!9039 (not b!377051) (not b!377058) (not b!377049) (not b!377055) (not b_next!8391) (not b!377054) (not b!377056) (not start!37272) (not b!377060) b_and!15651)
(check-sat b_and!15651 (not b_next!8391))
