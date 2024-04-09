; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37314 () Bool)

(assert start!37314)

(declare-fun b_free!8433 () Bool)

(declare-fun b_next!8433 () Bool)

(assert (=> start!37314 (= b_free!8433 (not b_next!8433))))

(declare-fun tp!30015 () Bool)

(declare-fun b_and!15693 () Bool)

(assert (=> start!37314 (= tp!30015 b_and!15693)))

(declare-fun b!377991 () Bool)

(declare-fun res!214108 () Bool)

(declare-fun e!230084 () Bool)

(assert (=> b!377991 (=> (not res!214108) (not e!230084))))

(declare-datatypes ((array!22061 0))(
  ( (array!22062 (arr!10496 (Array (_ BitVec 32) (_ BitVec 64))) (size!10848 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22061)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22061 (_ BitVec 32)) Bool)

(assert (=> b!377991 (= res!214108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun res!214103 () Bool)

(assert (=> start!37314 (=> (not res!214103) (not e!230084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37314 (= res!214103 (validMask!0 mask!970))))

(assert (=> start!37314 e!230084))

(declare-datatypes ((V!13213 0))(
  ( (V!13214 (val!4585 Int)) )
))
(declare-datatypes ((ValueCell!4197 0))(
  ( (ValueCellFull!4197 (v!6778 V!13213)) (EmptyCell!4197) )
))
(declare-datatypes ((array!22063 0))(
  ( (array!22064 (arr!10497 (Array (_ BitVec 32) ValueCell!4197)) (size!10849 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22063)

(declare-fun e!230090 () Bool)

(declare-fun array_inv!7722 (array!22063) Bool)

(assert (=> start!37314 (and (array_inv!7722 _values!506) e!230090)))

(assert (=> start!37314 tp!30015))

(assert (=> start!37314 true))

(declare-fun tp_is_empty!9081 () Bool)

(assert (=> start!37314 tp_is_empty!9081))

(declare-fun array_inv!7723 (array!22061) Bool)

(assert (=> start!37314 (array_inv!7723 _keys!658)))

(declare-fun mapNonEmpty!15186 () Bool)

(declare-fun mapRes!15186 () Bool)

(declare-fun tp!30014 () Bool)

(declare-fun e!230091 () Bool)

(assert (=> mapNonEmpty!15186 (= mapRes!15186 (and tp!30014 e!230091))))

(declare-fun mapRest!15186 () (Array (_ BitVec 32) ValueCell!4197))

(declare-fun mapValue!15186 () ValueCell!4197)

(declare-fun mapKey!15186 () (_ BitVec 32))

(assert (=> mapNonEmpty!15186 (= (arr!10497 _values!506) (store mapRest!15186 mapKey!15186 mapValue!15186))))

(declare-fun b!377992 () Bool)

(declare-fun e!230085 () Bool)

(assert (=> b!377992 (= e!230085 (bvsle #b00000000000000000000000000000000 (size!10848 _keys!658)))))

(declare-datatypes ((tuple2!6092 0))(
  ( (tuple2!6093 (_1!3056 (_ BitVec 64)) (_2!3056 V!13213)) )
))
(declare-datatypes ((List!5964 0))(
  ( (Nil!5961) (Cons!5960 (h!6816 tuple2!6092) (t!11122 List!5964)) )
))
(declare-datatypes ((ListLongMap!5019 0))(
  ( (ListLongMap!5020 (toList!2525 List!5964)) )
))
(declare-fun lt!176104 () ListLongMap!5019)

(declare-fun lt!176106 () ListLongMap!5019)

(declare-fun lt!176109 () tuple2!6092)

(declare-fun +!866 (ListLongMap!5019 tuple2!6092) ListLongMap!5019)

(assert (=> b!377992 (= lt!176104 (+!866 lt!176106 lt!176109))))

(declare-fun lt!176116 () ListLongMap!5019)

(declare-fun zeroValue!472 () V!13213)

(declare-fun v!373 () V!13213)

(declare-datatypes ((Unit!11631 0))(
  ( (Unit!11632) )
))
(declare-fun lt!176110 () Unit!11631)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!283 (ListLongMap!5019 (_ BitVec 64) V!13213 (_ BitVec 64) V!13213) Unit!11631)

(assert (=> b!377992 (= lt!176110 (addCommutativeForDiffKeys!283 lt!176116 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377993 () Bool)

(declare-fun res!214102 () Bool)

(assert (=> b!377993 (=> (not res!214102) (not e!230084))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!377993 (= res!214102 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10848 _keys!658))))))

(declare-fun b!377994 () Bool)

(declare-fun e!230089 () Bool)

(declare-fun e!230087 () Bool)

(assert (=> b!377994 (= e!230089 (not e!230087))))

(declare-fun res!214105 () Bool)

(assert (=> b!377994 (=> res!214105 e!230087)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!377994 (= res!214105 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun lt!176113 () ListLongMap!5019)

(declare-fun minValue!472 () V!13213)

(declare-fun getCurrentListMap!1959 (array!22061 array!22063 (_ BitVec 32) (_ BitVec 32) V!13213 V!13213 (_ BitVec 32) Int) ListLongMap!5019)

(assert (=> b!377994 (= lt!176113 (getCurrentListMap!1959 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176114 () array!22061)

(declare-fun lt!176108 () array!22063)

(declare-fun lt!176115 () ListLongMap!5019)

(assert (=> b!377994 (= lt!176115 (getCurrentListMap!1959 lt!176114 lt!176108 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176107 () ListLongMap!5019)

(declare-fun lt!176105 () ListLongMap!5019)

(assert (=> b!377994 (and (= lt!176107 lt!176105) (= lt!176105 lt!176107))))

(assert (=> b!377994 (= lt!176105 (+!866 lt!176116 lt!176109))))

(assert (=> b!377994 (= lt!176109 (tuple2!6093 k0!778 v!373))))

(declare-fun lt!176111 () Unit!11631)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!110 (array!22061 array!22063 (_ BitVec 32) (_ BitVec 32) V!13213 V!13213 (_ BitVec 32) (_ BitVec 64) V!13213 (_ BitVec 32) Int) Unit!11631)

(assert (=> b!377994 (= lt!176111 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!110 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!777 (array!22061 array!22063 (_ BitVec 32) (_ BitVec 32) V!13213 V!13213 (_ BitVec 32) Int) ListLongMap!5019)

(assert (=> b!377994 (= lt!176107 (getCurrentListMapNoExtraKeys!777 lt!176114 lt!176108 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!377994 (= lt!176108 (array!22064 (store (arr!10497 _values!506) i!548 (ValueCellFull!4197 v!373)) (size!10849 _values!506)))))

(assert (=> b!377994 (= lt!176116 (getCurrentListMapNoExtraKeys!777 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!377995 () Bool)

(assert (=> b!377995 (= e!230087 e!230085)))

(declare-fun res!214107 () Bool)

(assert (=> b!377995 (=> res!214107 e!230085)))

(assert (=> b!377995 (= res!214107 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!377995 (= lt!176115 lt!176104)))

(declare-fun lt!176112 () tuple2!6092)

(assert (=> b!377995 (= lt!176104 (+!866 lt!176105 lt!176112))))

(assert (=> b!377995 (= lt!176113 lt!176106)))

(assert (=> b!377995 (= lt!176106 (+!866 lt!176116 lt!176112))))

(assert (=> b!377995 (= lt!176115 (+!866 lt!176107 lt!176112))))

(assert (=> b!377995 (= lt!176112 (tuple2!6093 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!377996 () Bool)

(declare-fun res!214106 () Bool)

(assert (=> b!377996 (=> (not res!214106) (not e!230089))))

(declare-datatypes ((List!5965 0))(
  ( (Nil!5962) (Cons!5961 (h!6817 (_ BitVec 64)) (t!11123 List!5965)) )
))
(declare-fun arrayNoDuplicates!0 (array!22061 (_ BitVec 32) List!5965) Bool)

(assert (=> b!377996 (= res!214106 (arrayNoDuplicates!0 lt!176114 #b00000000000000000000000000000000 Nil!5962))))

(declare-fun b!377997 () Bool)

(declare-fun e!230086 () Bool)

(assert (=> b!377997 (= e!230090 (and e!230086 mapRes!15186))))

(declare-fun condMapEmpty!15186 () Bool)

(declare-fun mapDefault!15186 () ValueCell!4197)

(assert (=> b!377997 (= condMapEmpty!15186 (= (arr!10497 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4197)) mapDefault!15186)))))

(declare-fun b!377998 () Bool)

(assert (=> b!377998 (= e!230086 tp_is_empty!9081)))

(declare-fun b!377999 () Bool)

(declare-fun res!214101 () Bool)

(assert (=> b!377999 (=> (not res!214101) (not e!230084))))

(assert (=> b!377999 (= res!214101 (and (= (size!10849 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10848 _keys!658) (size!10849 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378000 () Bool)

(assert (=> b!378000 (= e!230091 tp_is_empty!9081)))

(declare-fun mapIsEmpty!15186 () Bool)

(assert (=> mapIsEmpty!15186 mapRes!15186))

(declare-fun b!378001 () Bool)

(declare-fun res!214104 () Bool)

(assert (=> b!378001 (=> (not res!214104) (not e!230084))))

(assert (=> b!378001 (= res!214104 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5962))))

(declare-fun b!378002 () Bool)

(assert (=> b!378002 (= e!230084 e!230089)))

(declare-fun res!214099 () Bool)

(assert (=> b!378002 (=> (not res!214099) (not e!230089))))

(assert (=> b!378002 (= res!214099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176114 mask!970))))

(assert (=> b!378002 (= lt!176114 (array!22062 (store (arr!10496 _keys!658) i!548 k0!778) (size!10848 _keys!658)))))

(declare-fun b!378003 () Bool)

(declare-fun res!214100 () Bool)

(assert (=> b!378003 (=> (not res!214100) (not e!230084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378003 (= res!214100 (validKeyInArray!0 k0!778))))

(declare-fun b!378004 () Bool)

(declare-fun res!214109 () Bool)

(assert (=> b!378004 (=> (not res!214109) (not e!230084))))

(assert (=> b!378004 (= res!214109 (or (= (select (arr!10496 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10496 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!378005 () Bool)

(declare-fun res!214098 () Bool)

(assert (=> b!378005 (=> (not res!214098) (not e!230084))))

(declare-fun arrayContainsKey!0 (array!22061 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378005 (= res!214098 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(assert (= (and start!37314 res!214103) b!377999))

(assert (= (and b!377999 res!214101) b!377991))

(assert (= (and b!377991 res!214108) b!378001))

(assert (= (and b!378001 res!214104) b!377993))

(assert (= (and b!377993 res!214102) b!378003))

(assert (= (and b!378003 res!214100) b!378004))

(assert (= (and b!378004 res!214109) b!378005))

(assert (= (and b!378005 res!214098) b!378002))

(assert (= (and b!378002 res!214099) b!377996))

(assert (= (and b!377996 res!214106) b!377994))

(assert (= (and b!377994 (not res!214105)) b!377995))

(assert (= (and b!377995 (not res!214107)) b!377992))

(assert (= (and b!377997 condMapEmpty!15186) mapIsEmpty!15186))

(assert (= (and b!377997 (not condMapEmpty!15186)) mapNonEmpty!15186))

(get-info :version)

(assert (= (and mapNonEmpty!15186 ((_ is ValueCellFull!4197) mapValue!15186)) b!378000))

(assert (= (and b!377997 ((_ is ValueCellFull!4197) mapDefault!15186)) b!377998))

(assert (= start!37314 b!377997))

(declare-fun m!374849 () Bool)

(assert (=> b!378003 m!374849))

(declare-fun m!374851 () Bool)

(assert (=> start!37314 m!374851))

(declare-fun m!374853 () Bool)

(assert (=> start!37314 m!374853))

(declare-fun m!374855 () Bool)

(assert (=> start!37314 m!374855))

(declare-fun m!374857 () Bool)

(assert (=> b!377991 m!374857))

(declare-fun m!374859 () Bool)

(assert (=> b!378001 m!374859))

(declare-fun m!374861 () Bool)

(assert (=> b!377995 m!374861))

(declare-fun m!374863 () Bool)

(assert (=> b!377995 m!374863))

(declare-fun m!374865 () Bool)

(assert (=> b!377995 m!374865))

(declare-fun m!374867 () Bool)

(assert (=> b!377994 m!374867))

(declare-fun m!374869 () Bool)

(assert (=> b!377994 m!374869))

(declare-fun m!374871 () Bool)

(assert (=> b!377994 m!374871))

(declare-fun m!374873 () Bool)

(assert (=> b!377994 m!374873))

(declare-fun m!374875 () Bool)

(assert (=> b!377994 m!374875))

(declare-fun m!374877 () Bool)

(assert (=> b!377994 m!374877))

(declare-fun m!374879 () Bool)

(assert (=> b!377994 m!374879))

(declare-fun m!374881 () Bool)

(assert (=> mapNonEmpty!15186 m!374881))

(declare-fun m!374883 () Bool)

(assert (=> b!378005 m!374883))

(declare-fun m!374885 () Bool)

(assert (=> b!377992 m!374885))

(declare-fun m!374887 () Bool)

(assert (=> b!377992 m!374887))

(declare-fun m!374889 () Bool)

(assert (=> b!378002 m!374889))

(declare-fun m!374891 () Bool)

(assert (=> b!378002 m!374891))

(declare-fun m!374893 () Bool)

(assert (=> b!378004 m!374893))

(declare-fun m!374895 () Bool)

(assert (=> b!377996 m!374895))

(check-sat (not b!378005) (not b!377991) tp_is_empty!9081 (not b!377995) b_and!15693 (not start!37314) (not b_next!8433) (not b!377992) (not b!378003) (not b!377996) (not mapNonEmpty!15186) (not b!377994) (not b!378001) (not b!378002))
(check-sat b_and!15693 (not b_next!8433))
