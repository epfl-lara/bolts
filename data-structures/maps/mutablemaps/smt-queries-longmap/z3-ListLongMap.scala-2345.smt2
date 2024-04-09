; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37542 () Bool)

(assert start!37542)

(declare-fun b_free!8661 () Bool)

(declare-fun b_next!8661 () Bool)

(assert (=> start!37542 (= b_free!8661 (not b_next!8661))))

(declare-fun tp!30699 () Bool)

(declare-fun b_and!15921 () Bool)

(assert (=> start!37542 (= tp!30699 b_and!15921)))

(declare-fun b!382963 () Bool)

(declare-fun res!218049 () Bool)

(declare-fun e!232654 () Bool)

(assert (=> b!382963 (=> (not res!218049) (not e!232654))))

(declare-datatypes ((array!22509 0))(
  ( (array!22510 (arr!10720 (Array (_ BitVec 32) (_ BitVec 64))) (size!11072 (_ BitVec 32))) )
))
(declare-fun lt!179860 () array!22509)

(declare-datatypes ((List!6139 0))(
  ( (Nil!6136) (Cons!6135 (h!6991 (_ BitVec 64)) (t!11297 List!6139)) )
))
(declare-fun arrayNoDuplicates!0 (array!22509 (_ BitVec 32) List!6139) Bool)

(assert (=> b!382963 (= res!218049 (arrayNoDuplicates!0 lt!179860 #b00000000000000000000000000000000 Nil!6136))))

(declare-fun b!382964 () Bool)

(declare-fun res!218047 () Bool)

(declare-fun e!232659 () Bool)

(assert (=> b!382964 (=> (not res!218047) (not e!232659))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!22509)

(assert (=> b!382964 (= res!218047 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11072 _keys!658))))))

(declare-fun b!382965 () Bool)

(declare-fun res!218046 () Bool)

(assert (=> b!382965 (=> (not res!218046) (not e!232659))))

(assert (=> b!382965 (= res!218046 (or (= (select (arr!10720 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10720 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!382966 () Bool)

(declare-fun e!232656 () Bool)

(declare-fun e!232653 () Bool)

(declare-fun mapRes!15528 () Bool)

(assert (=> b!382966 (= e!232656 (and e!232653 mapRes!15528))))

(declare-fun condMapEmpty!15528 () Bool)

(declare-datatypes ((V!13517 0))(
  ( (V!13518 (val!4699 Int)) )
))
(declare-datatypes ((ValueCell!4311 0))(
  ( (ValueCellFull!4311 (v!6892 V!13517)) (EmptyCell!4311) )
))
(declare-datatypes ((array!22511 0))(
  ( (array!22512 (arr!10721 (Array (_ BitVec 32) ValueCell!4311)) (size!11073 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22511)

(declare-fun mapDefault!15528 () ValueCell!4311)

(assert (=> b!382966 (= condMapEmpty!15528 (= (arr!10721 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4311)) mapDefault!15528)))))

(declare-fun b!382967 () Bool)

(assert (=> b!382967 (= e!232659 e!232654)))

(declare-fun res!218048 () Bool)

(assert (=> b!382967 (=> (not res!218048) (not e!232654))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22509 (_ BitVec 32)) Bool)

(assert (=> b!382967 (= res!218048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!179860 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!382967 (= lt!179860 (array!22510 (store (arr!10720 _keys!658) i!548 k0!778) (size!11072 _keys!658)))))

(declare-fun b!382968 () Bool)

(declare-fun res!218052 () Bool)

(assert (=> b!382968 (=> (not res!218052) (not e!232659))))

(declare-fun arrayContainsKey!0 (array!22509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!382968 (= res!218052 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun res!218051 () Bool)

(assert (=> start!37542 (=> (not res!218051) (not e!232659))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37542 (= res!218051 (validMask!0 mask!970))))

(assert (=> start!37542 e!232659))

(declare-fun array_inv!7872 (array!22511) Bool)

(assert (=> start!37542 (and (array_inv!7872 _values!506) e!232656)))

(assert (=> start!37542 tp!30699))

(assert (=> start!37542 true))

(declare-fun tp_is_empty!9309 () Bool)

(assert (=> start!37542 tp_is_empty!9309))

(declare-fun array_inv!7873 (array!22509) Bool)

(assert (=> start!37542 (array_inv!7873 _keys!658)))

(declare-fun mapIsEmpty!15528 () Bool)

(assert (=> mapIsEmpty!15528 mapRes!15528))

(declare-fun b!382969 () Bool)

(declare-fun e!232657 () Bool)

(assert (=> b!382969 (= e!232657 tp_is_empty!9309)))

(declare-fun b!382970 () Bool)

(declare-fun res!218054 () Bool)

(assert (=> b!382970 (=> (not res!218054) (not e!232659))))

(assert (=> b!382970 (= res!218054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!382971 () Bool)

(declare-fun e!232655 () Bool)

(assert (=> b!382971 (= e!232654 (not e!232655))))

(declare-fun res!218045 () Bool)

(assert (=> b!382971 (=> res!218045 e!232655)))

(declare-fun lt!179865 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!382971 (= res!218045 (or (and (not lt!179865) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!179865) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!179865)))))

(assert (=> b!382971 (= lt!179865 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6272 0))(
  ( (tuple2!6273 (_1!3146 (_ BitVec 64)) (_2!3146 V!13517)) )
))
(declare-datatypes ((List!6140 0))(
  ( (Nil!6137) (Cons!6136 (h!6992 tuple2!6272) (t!11298 List!6140)) )
))
(declare-datatypes ((ListLongMap!5199 0))(
  ( (ListLongMap!5200 (toList!2615 List!6140)) )
))
(declare-fun lt!179856 () ListLongMap!5199)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13517)

(declare-fun minValue!472 () V!13517)

(declare-fun getCurrentListMap!2033 (array!22509 array!22511 (_ BitVec 32) (_ BitVec 32) V!13517 V!13517 (_ BitVec 32) Int) ListLongMap!5199)

(assert (=> b!382971 (= lt!179856 (getCurrentListMap!2033 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179866 () array!22511)

(declare-fun lt!179857 () ListLongMap!5199)

(assert (=> b!382971 (= lt!179857 (getCurrentListMap!2033 lt!179860 lt!179866 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!179859 () ListLongMap!5199)

(declare-fun lt!179864 () ListLongMap!5199)

(assert (=> b!382971 (and (= lt!179859 lt!179864) (= lt!179864 lt!179859))))

(declare-fun lt!179861 () ListLongMap!5199)

(declare-fun lt!179862 () tuple2!6272)

(declare-fun +!951 (ListLongMap!5199 tuple2!6272) ListLongMap!5199)

(assert (=> b!382971 (= lt!179864 (+!951 lt!179861 lt!179862))))

(declare-fun v!373 () V!13517)

(assert (=> b!382971 (= lt!179862 (tuple2!6273 k0!778 v!373))))

(declare-datatypes ((Unit!11795 0))(
  ( (Unit!11796) )
))
(declare-fun lt!179863 () Unit!11795)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!184 (array!22509 array!22511 (_ BitVec 32) (_ BitVec 32) V!13517 V!13517 (_ BitVec 32) (_ BitVec 64) V!13517 (_ BitVec 32) Int) Unit!11795)

(assert (=> b!382971 (= lt!179863 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!184 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!851 (array!22509 array!22511 (_ BitVec 32) (_ BitVec 32) V!13517 V!13517 (_ BitVec 32) Int) ListLongMap!5199)

(assert (=> b!382971 (= lt!179859 (getCurrentListMapNoExtraKeys!851 lt!179860 lt!179866 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!382971 (= lt!179866 (array!22512 (store (arr!10721 _values!506) i!548 (ValueCellFull!4311 v!373)) (size!11073 _values!506)))))

(assert (=> b!382971 (= lt!179861 (getCurrentListMapNoExtraKeys!851 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!382972 () Bool)

(declare-fun res!218053 () Bool)

(assert (=> b!382972 (=> (not res!218053) (not e!232659))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!382972 (= res!218053 (validKeyInArray!0 k0!778))))

(declare-fun b!382973 () Bool)

(declare-fun res!218044 () Bool)

(assert (=> b!382973 (=> (not res!218044) (not e!232659))))

(assert (=> b!382973 (= res!218044 (and (= (size!11073 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11072 _keys!658) (size!11073 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!382974 () Bool)

(assert (=> b!382974 (= e!232655 true)))

(declare-fun lt!179858 () ListLongMap!5199)

(assert (=> b!382974 (= lt!179858 (+!951 lt!179856 lt!179862))))

(assert (=> b!382974 (= lt!179857 lt!179859)))

(declare-fun mapNonEmpty!15528 () Bool)

(declare-fun tp!30698 () Bool)

(assert (=> mapNonEmpty!15528 (= mapRes!15528 (and tp!30698 e!232657))))

(declare-fun mapRest!15528 () (Array (_ BitVec 32) ValueCell!4311))

(declare-fun mapValue!15528 () ValueCell!4311)

(declare-fun mapKey!15528 () (_ BitVec 32))

(assert (=> mapNonEmpty!15528 (= (arr!10721 _values!506) (store mapRest!15528 mapKey!15528 mapValue!15528))))

(declare-fun b!382975 () Bool)

(declare-fun res!218050 () Bool)

(assert (=> b!382975 (=> (not res!218050) (not e!232659))))

(assert (=> b!382975 (= res!218050 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6136))))

(declare-fun b!382976 () Bool)

(assert (=> b!382976 (= e!232653 tp_is_empty!9309)))

(assert (= (and start!37542 res!218051) b!382973))

(assert (= (and b!382973 res!218044) b!382970))

(assert (= (and b!382970 res!218054) b!382975))

(assert (= (and b!382975 res!218050) b!382964))

(assert (= (and b!382964 res!218047) b!382972))

(assert (= (and b!382972 res!218053) b!382965))

(assert (= (and b!382965 res!218046) b!382968))

(assert (= (and b!382968 res!218052) b!382967))

(assert (= (and b!382967 res!218048) b!382963))

(assert (= (and b!382963 res!218049) b!382971))

(assert (= (and b!382971 (not res!218045)) b!382974))

(assert (= (and b!382966 condMapEmpty!15528) mapIsEmpty!15528))

(assert (= (and b!382966 (not condMapEmpty!15528)) mapNonEmpty!15528))

(get-info :version)

(assert (= (and mapNonEmpty!15528 ((_ is ValueCellFull!4311) mapValue!15528)) b!382969))

(assert (= (and b!382966 ((_ is ValueCellFull!4311) mapDefault!15528)) b!382976))

(assert (= start!37542 b!382966))

(declare-fun m!379761 () Bool)

(assert (=> b!382974 m!379761))

(declare-fun m!379763 () Bool)

(assert (=> b!382970 m!379763))

(declare-fun m!379765 () Bool)

(assert (=> mapNonEmpty!15528 m!379765))

(declare-fun m!379767 () Bool)

(assert (=> b!382968 m!379767))

(declare-fun m!379769 () Bool)

(assert (=> b!382965 m!379769))

(declare-fun m!379771 () Bool)

(assert (=> start!37542 m!379771))

(declare-fun m!379773 () Bool)

(assert (=> start!37542 m!379773))

(declare-fun m!379775 () Bool)

(assert (=> start!37542 m!379775))

(declare-fun m!379777 () Bool)

(assert (=> b!382963 m!379777))

(declare-fun m!379779 () Bool)

(assert (=> b!382971 m!379779))

(declare-fun m!379781 () Bool)

(assert (=> b!382971 m!379781))

(declare-fun m!379783 () Bool)

(assert (=> b!382971 m!379783))

(declare-fun m!379785 () Bool)

(assert (=> b!382971 m!379785))

(declare-fun m!379787 () Bool)

(assert (=> b!382971 m!379787))

(declare-fun m!379789 () Bool)

(assert (=> b!382971 m!379789))

(declare-fun m!379791 () Bool)

(assert (=> b!382971 m!379791))

(declare-fun m!379793 () Bool)

(assert (=> b!382972 m!379793))

(declare-fun m!379795 () Bool)

(assert (=> b!382967 m!379795))

(declare-fun m!379797 () Bool)

(assert (=> b!382967 m!379797))

(declare-fun m!379799 () Bool)

(assert (=> b!382975 m!379799))

(check-sat tp_is_empty!9309 (not b!382968) (not b!382975) (not b!382970) (not b!382974) (not start!37542) (not b_next!8661) (not b!382972) (not b!382971) (not b!382963) b_and!15921 (not mapNonEmpty!15528) (not b!382967))
(check-sat b_and!15921 (not b_next!8661))
