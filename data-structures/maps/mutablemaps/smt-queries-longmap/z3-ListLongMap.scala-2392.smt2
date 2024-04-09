; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37868 () Bool)

(assert start!37868)

(declare-fun b_free!8919 () Bool)

(declare-fun b_next!8919 () Bool)

(assert (=> start!37868 (= b_free!8919 (not b_next!8919))))

(declare-fun tp!31515 () Bool)

(declare-fun b_and!16203 () Bool)

(assert (=> start!37868 (= tp!31515 b_and!16203)))

(declare-fun b!388868 () Bool)

(declare-fun e!235624 () Bool)

(declare-fun e!235626 () Bool)

(assert (=> b!388868 (= e!235624 e!235626)))

(declare-fun res!222461 () Bool)

(assert (=> b!388868 (=> (not res!222461) (not e!235626))))

(declare-datatypes ((array!23053 0))(
  ( (array!23054 (arr!10990 (Array (_ BitVec 32) (_ BitVec 64))) (size!11342 (_ BitVec 32))) )
))
(declare-fun lt!182780 () array!23053)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23053 (_ BitVec 32)) Bool)

(assert (=> b!388868 (= res!222461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182780 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!23053)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!388868 (= lt!182780 (array!23054 (store (arr!10990 _keys!658) i!548 k0!778) (size!11342 _keys!658)))))

(declare-fun b!388869 () Bool)

(declare-fun res!222464 () Bool)

(assert (=> b!388869 (=> (not res!222464) (not e!235624))))

(assert (=> b!388869 (= res!222464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!388870 () Bool)

(declare-fun res!222463 () Bool)

(assert (=> b!388870 (=> (not res!222463) (not e!235626))))

(declare-datatypes ((List!6335 0))(
  ( (Nil!6332) (Cons!6331 (h!7187 (_ BitVec 64)) (t!11497 List!6335)) )
))
(declare-fun arrayNoDuplicates!0 (array!23053 (_ BitVec 32) List!6335) Bool)

(assert (=> b!388870 (= res!222463 (arrayNoDuplicates!0 lt!182780 #b00000000000000000000000000000000 Nil!6332))))

(declare-fun b!388871 () Bool)

(declare-fun e!235622 () Bool)

(declare-fun tp_is_empty!9591 () Bool)

(assert (=> b!388871 (= e!235622 tp_is_empty!9591)))

(declare-fun mapNonEmpty!15957 () Bool)

(declare-fun mapRes!15957 () Bool)

(declare-fun tp!31514 () Bool)

(declare-fun e!235627 () Bool)

(assert (=> mapNonEmpty!15957 (= mapRes!15957 (and tp!31514 e!235627))))

(declare-datatypes ((V!13893 0))(
  ( (V!13894 (val!4840 Int)) )
))
(declare-datatypes ((ValueCell!4452 0))(
  ( (ValueCellFull!4452 (v!7041 V!13893)) (EmptyCell!4452) )
))
(declare-fun mapValue!15957 () ValueCell!4452)

(declare-datatypes ((array!23055 0))(
  ( (array!23056 (arr!10991 (Array (_ BitVec 32) ValueCell!4452)) (size!11343 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23055)

(declare-fun mapKey!15957 () (_ BitVec 32))

(declare-fun mapRest!15957 () (Array (_ BitVec 32) ValueCell!4452))

(assert (=> mapNonEmpty!15957 (= (arr!10991 _values!506) (store mapRest!15957 mapKey!15957 mapValue!15957))))

(declare-fun b!388872 () Bool)

(declare-fun res!222467 () Bool)

(assert (=> b!388872 (=> (not res!222467) (not e!235624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!388872 (= res!222467 (validKeyInArray!0 k0!778))))

(declare-datatypes ((tuple2!6452 0))(
  ( (tuple2!6453 (_1!3236 (_ BitVec 64)) (_2!3236 V!13893)) )
))
(declare-datatypes ((List!6336 0))(
  ( (Nil!6333) (Cons!6332 (h!7188 tuple2!6452) (t!11498 List!6336)) )
))
(declare-datatypes ((ListLongMap!5379 0))(
  ( (ListLongMap!5380 (toList!2705 List!6336)) )
))
(declare-fun lt!182788 () ListLongMap!5379)

(declare-fun lt!182785 () ListLongMap!5379)

(declare-fun lt!182782 () tuple2!6452)

(declare-fun lt!182783 () tuple2!6452)

(declare-fun e!235623 () Bool)

(declare-fun b!388873 () Bool)

(declare-fun +!1003 (ListLongMap!5379 tuple2!6452) ListLongMap!5379)

(assert (=> b!388873 (= e!235623 (= lt!182785 (+!1003 (+!1003 lt!182788 lt!182782) lt!182783)))))

(declare-fun b!388874 () Bool)

(declare-fun e!235628 () Bool)

(assert (=> b!388874 (= e!235626 (not e!235628))))

(declare-fun res!222457 () Bool)

(assert (=> b!388874 (=> res!222457 e!235628)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!388874 (= res!222457 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13893)

(declare-fun minValue!472 () V!13893)

(declare-fun getCurrentListMap!2076 (array!23053 array!23055 (_ BitVec 32) (_ BitVec 32) V!13893 V!13893 (_ BitVec 32) Int) ListLongMap!5379)

(assert (=> b!388874 (= lt!182785 (getCurrentListMap!2076 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182781 () ListLongMap!5379)

(declare-fun lt!182787 () array!23055)

(assert (=> b!388874 (= lt!182781 (getCurrentListMap!2076 lt!182780 lt!182787 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182784 () ListLongMap!5379)

(declare-fun lt!182789 () ListLongMap!5379)

(assert (=> b!388874 (and (= lt!182784 lt!182789) (= lt!182789 lt!182784))))

(declare-fun v!373 () V!13893)

(assert (=> b!388874 (= lt!182789 (+!1003 lt!182788 (tuple2!6453 k0!778 v!373)))))

(declare-datatypes ((Unit!11897 0))(
  ( (Unit!11898) )
))
(declare-fun lt!182786 () Unit!11897)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!233 (array!23053 array!23055 (_ BitVec 32) (_ BitVec 32) V!13893 V!13893 (_ BitVec 32) (_ BitVec 64) V!13893 (_ BitVec 32) Int) Unit!11897)

(assert (=> b!388874 (= lt!182786 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!233 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!938 (array!23053 array!23055 (_ BitVec 32) (_ BitVec 32) V!13893 V!13893 (_ BitVec 32) Int) ListLongMap!5379)

(assert (=> b!388874 (= lt!182784 (getCurrentListMapNoExtraKeys!938 lt!182780 lt!182787 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!388874 (= lt!182787 (array!23056 (store (arr!10991 _values!506) i!548 (ValueCellFull!4452 v!373)) (size!11343 _values!506)))))

(assert (=> b!388874 (= lt!182788 (getCurrentListMapNoExtraKeys!938 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!388875 () Bool)

(declare-fun res!222456 () Bool)

(assert (=> b!388875 (=> (not res!222456) (not e!235624))))

(declare-fun arrayContainsKey!0 (array!23053 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!388875 (= res!222456 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!388876 () Bool)

(declare-fun res!222462 () Bool)

(assert (=> b!388876 (=> (not res!222462) (not e!235624))))

(assert (=> b!388876 (= res!222462 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6332))))

(declare-fun b!388877 () Bool)

(assert (=> b!388877 (= e!235627 tp_is_empty!9591)))

(declare-fun res!222458 () Bool)

(assert (=> start!37868 (=> (not res!222458) (not e!235624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37868 (= res!222458 (validMask!0 mask!970))))

(assert (=> start!37868 e!235624))

(declare-fun e!235629 () Bool)

(declare-fun array_inv!8056 (array!23055) Bool)

(assert (=> start!37868 (and (array_inv!8056 _values!506) e!235629)))

(assert (=> start!37868 tp!31515))

(assert (=> start!37868 true))

(assert (=> start!37868 tp_is_empty!9591))

(declare-fun array_inv!8057 (array!23053) Bool)

(assert (=> start!37868 (array_inv!8057 _keys!658)))

(declare-fun b!388878 () Bool)

(declare-fun res!222459 () Bool)

(assert (=> b!388878 (=> (not res!222459) (not e!235624))))

(assert (=> b!388878 (= res!222459 (or (= (select (arr!10990 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10990 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15957 () Bool)

(assert (=> mapIsEmpty!15957 mapRes!15957))

(declare-fun b!388879 () Bool)

(assert (=> b!388879 (= e!235629 (and e!235622 mapRes!15957))))

(declare-fun condMapEmpty!15957 () Bool)

(declare-fun mapDefault!15957 () ValueCell!4452)

(assert (=> b!388879 (= condMapEmpty!15957 (= (arr!10991 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4452)) mapDefault!15957)))))

(declare-fun b!388880 () Bool)

(declare-fun res!222465 () Bool)

(assert (=> b!388880 (=> (not res!222465) (not e!235624))))

(assert (=> b!388880 (= res!222465 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11342 _keys!658))))))

(declare-fun b!388881 () Bool)

(declare-fun res!222460 () Bool)

(assert (=> b!388881 (=> (not res!222460) (not e!235624))))

(assert (=> b!388881 (= res!222460 (and (= (size!11343 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11342 _keys!658) (size!11343 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!388882 () Bool)

(assert (=> b!388882 (= e!235628 (= lt!182781 (+!1003 (+!1003 lt!182789 lt!182782) lt!182783)))))

(assert (=> b!388882 e!235623))

(declare-fun res!222466 () Bool)

(assert (=> b!388882 (=> (not res!222466) (not e!235623))))

(assert (=> b!388882 (= res!222466 (= lt!182781 (+!1003 (+!1003 lt!182784 lt!182782) lt!182783)))))

(assert (=> b!388882 (= lt!182783 (tuple2!6453 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!388882 (= lt!182782 (tuple2!6453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (= (and start!37868 res!222458) b!388881))

(assert (= (and b!388881 res!222460) b!388869))

(assert (= (and b!388869 res!222464) b!388876))

(assert (= (and b!388876 res!222462) b!388880))

(assert (= (and b!388880 res!222465) b!388872))

(assert (= (and b!388872 res!222467) b!388878))

(assert (= (and b!388878 res!222459) b!388875))

(assert (= (and b!388875 res!222456) b!388868))

(assert (= (and b!388868 res!222461) b!388870))

(assert (= (and b!388870 res!222463) b!388874))

(assert (= (and b!388874 (not res!222457)) b!388882))

(assert (= (and b!388882 res!222466) b!388873))

(assert (= (and b!388879 condMapEmpty!15957) mapIsEmpty!15957))

(assert (= (and b!388879 (not condMapEmpty!15957)) mapNonEmpty!15957))

(get-info :version)

(assert (= (and mapNonEmpty!15957 ((_ is ValueCellFull!4452) mapValue!15957)) b!388877))

(assert (= (and b!388879 ((_ is ValueCellFull!4452) mapDefault!15957)) b!388871))

(assert (= start!37868 b!388879))

(declare-fun m!384915 () Bool)

(assert (=> start!37868 m!384915))

(declare-fun m!384917 () Bool)

(assert (=> start!37868 m!384917))

(declare-fun m!384919 () Bool)

(assert (=> start!37868 m!384919))

(declare-fun m!384921 () Bool)

(assert (=> b!388873 m!384921))

(assert (=> b!388873 m!384921))

(declare-fun m!384923 () Bool)

(assert (=> b!388873 m!384923))

(declare-fun m!384925 () Bool)

(assert (=> mapNonEmpty!15957 m!384925))

(declare-fun m!384927 () Bool)

(assert (=> b!388872 m!384927))

(declare-fun m!384929 () Bool)

(assert (=> b!388868 m!384929))

(declare-fun m!384931 () Bool)

(assert (=> b!388868 m!384931))

(declare-fun m!384933 () Bool)

(assert (=> b!388882 m!384933))

(assert (=> b!388882 m!384933))

(declare-fun m!384935 () Bool)

(assert (=> b!388882 m!384935))

(declare-fun m!384937 () Bool)

(assert (=> b!388882 m!384937))

(assert (=> b!388882 m!384937))

(declare-fun m!384939 () Bool)

(assert (=> b!388882 m!384939))

(declare-fun m!384941 () Bool)

(assert (=> b!388869 m!384941))

(declare-fun m!384943 () Bool)

(assert (=> b!388870 m!384943))

(declare-fun m!384945 () Bool)

(assert (=> b!388874 m!384945))

(declare-fun m!384947 () Bool)

(assert (=> b!388874 m!384947))

(declare-fun m!384949 () Bool)

(assert (=> b!388874 m!384949))

(declare-fun m!384951 () Bool)

(assert (=> b!388874 m!384951))

(declare-fun m!384953 () Bool)

(assert (=> b!388874 m!384953))

(declare-fun m!384955 () Bool)

(assert (=> b!388874 m!384955))

(declare-fun m!384957 () Bool)

(assert (=> b!388874 m!384957))

(declare-fun m!384959 () Bool)

(assert (=> b!388878 m!384959))

(declare-fun m!384961 () Bool)

(assert (=> b!388875 m!384961))

(declare-fun m!384963 () Bool)

(assert (=> b!388876 m!384963))

(check-sat b_and!16203 (not b!388870) (not b!388876) (not b!388873) (not b!388869) (not b!388875) (not b!388874) tp_is_empty!9591 (not b!388872) (not mapNonEmpty!15957) (not b!388868) (not b!388882) (not start!37868) (not b_next!8919))
(check-sat b_and!16203 (not b_next!8919))
