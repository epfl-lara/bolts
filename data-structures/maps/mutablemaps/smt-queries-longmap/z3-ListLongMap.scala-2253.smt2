; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36990 () Bool)

(assert start!36990)

(declare-fun b_free!8109 () Bool)

(declare-fun b_next!8109 () Bool)

(assert (=> start!36990 (= b_free!8109 (not b_next!8109))))

(declare-fun tp!29043 () Bool)

(declare-fun b_and!15369 () Bool)

(assert (=> start!36990 (= tp!29043 b_and!15369)))

(declare-fun b!370970 () Bool)

(declare-fun e!226485 () Bool)

(declare-fun e!226483 () Bool)

(declare-fun mapRes!14700 () Bool)

(assert (=> b!370970 (= e!226485 (and e!226483 mapRes!14700))))

(declare-fun condMapEmpty!14700 () Bool)

(declare-datatypes ((V!12781 0))(
  ( (V!12782 (val!4423 Int)) )
))
(declare-datatypes ((ValueCell!4035 0))(
  ( (ValueCellFull!4035 (v!6616 V!12781)) (EmptyCell!4035) )
))
(declare-datatypes ((array!21427 0))(
  ( (array!21428 (arr!10179 (Array (_ BitVec 32) ValueCell!4035)) (size!10531 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21427)

(declare-fun mapDefault!14700 () ValueCell!4035)

(assert (=> b!370970 (= condMapEmpty!14700 (= (arr!10179 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4035)) mapDefault!14700)))))

(declare-fun b!370971 () Bool)

(declare-fun res!208541 () Bool)

(declare-fun e!226488 () Bool)

(assert (=> b!370971 (=> (not res!208541) (not e!226488))))

(declare-datatypes ((array!21429 0))(
  ( (array!21430 (arr!10180 (Array (_ BitVec 32) (_ BitVec 64))) (size!10532 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21429)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21429 (_ BitVec 32)) Bool)

(assert (=> b!370971 (= res!208541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370972 () Bool)

(declare-fun e!226487 () Bool)

(assert (=> b!370972 (= e!226487 (not true))))

(declare-datatypes ((tuple2!5848 0))(
  ( (tuple2!5849 (_1!2934 (_ BitVec 64)) (_2!2934 V!12781)) )
))
(declare-datatypes ((List!5717 0))(
  ( (Nil!5714) (Cons!5713 (h!6569 tuple2!5848) (t!10875 List!5717)) )
))
(declare-datatypes ((ListLongMap!4775 0))(
  ( (ListLongMap!4776 (toList!2403 List!5717)) )
))
(declare-fun lt!170142 () ListLongMap!4775)

(declare-fun lt!170146 () ListLongMap!4775)

(assert (=> b!370972 (and (= lt!170142 lt!170146) (= lt!170146 lt!170142))))

(declare-fun lt!170145 () ListLongMap!4775)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!12781)

(declare-fun +!744 (ListLongMap!4775 tuple2!5848) ListLongMap!4775)

(assert (=> b!370972 (= lt!170146 (+!744 lt!170145 (tuple2!5849 k0!778 v!373)))))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((Unit!11393 0))(
  ( (Unit!11394) )
))
(declare-fun lt!170143 () Unit!11393)

(declare-fun zeroValue!472 () V!12781)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12781)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!4 (array!21429 array!21427 (_ BitVec 32) (_ BitVec 32) V!12781 V!12781 (_ BitVec 32) (_ BitVec 64) V!12781 (_ BitVec 32) Int) Unit!11393)

(assert (=> b!370972 (= lt!170143 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!4 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!170144 () array!21429)

(declare-fun getCurrentListMapNoExtraKeys!671 (array!21429 array!21427 (_ BitVec 32) (_ BitVec 32) V!12781 V!12781 (_ BitVec 32) Int) ListLongMap!4775)

(assert (=> b!370972 (= lt!170142 (getCurrentListMapNoExtraKeys!671 lt!170144 (array!21428 (store (arr!10179 _values!506) i!548 (ValueCellFull!4035 v!373)) (size!10531 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!370972 (= lt!170145 (getCurrentListMapNoExtraKeys!671 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!208535 () Bool)

(assert (=> start!36990 (=> (not res!208535) (not e!226488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36990 (= res!208535 (validMask!0 mask!970))))

(assert (=> start!36990 e!226488))

(declare-fun array_inv!7516 (array!21427) Bool)

(assert (=> start!36990 (and (array_inv!7516 _values!506) e!226485)))

(assert (=> start!36990 tp!29043))

(assert (=> start!36990 true))

(declare-fun tp_is_empty!8757 () Bool)

(assert (=> start!36990 tp_is_empty!8757))

(declare-fun array_inv!7517 (array!21429) Bool)

(assert (=> start!36990 (array_inv!7517 _keys!658)))

(declare-fun b!370973 () Bool)

(declare-fun res!208542 () Bool)

(assert (=> b!370973 (=> (not res!208542) (not e!226488))))

(declare-datatypes ((List!5718 0))(
  ( (Nil!5715) (Cons!5714 (h!6570 (_ BitVec 64)) (t!10876 List!5718)) )
))
(declare-fun arrayNoDuplicates!0 (array!21429 (_ BitVec 32) List!5718) Bool)

(assert (=> b!370973 (= res!208542 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5715))))

(declare-fun b!370974 () Bool)

(declare-fun res!208536 () Bool)

(assert (=> b!370974 (=> (not res!208536) (not e!226488))))

(assert (=> b!370974 (= res!208536 (or (= (select (arr!10180 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10180 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14700 () Bool)

(assert (=> mapIsEmpty!14700 mapRes!14700))

(declare-fun b!370975 () Bool)

(declare-fun res!208540 () Bool)

(assert (=> b!370975 (=> (not res!208540) (not e!226488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370975 (= res!208540 (validKeyInArray!0 k0!778))))

(declare-fun b!370976 () Bool)

(declare-fun res!208538 () Bool)

(assert (=> b!370976 (=> (not res!208538) (not e!226488))))

(assert (=> b!370976 (= res!208538 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10532 _keys!658))))))

(declare-fun b!370977 () Bool)

(declare-fun res!208543 () Bool)

(assert (=> b!370977 (=> (not res!208543) (not e!226487))))

(assert (=> b!370977 (= res!208543 (arrayNoDuplicates!0 lt!170144 #b00000000000000000000000000000000 Nil!5715))))

(declare-fun b!370978 () Bool)

(declare-fun e!226486 () Bool)

(assert (=> b!370978 (= e!226486 tp_is_empty!8757)))

(declare-fun b!370979 () Bool)

(assert (=> b!370979 (= e!226488 e!226487)))

(declare-fun res!208537 () Bool)

(assert (=> b!370979 (=> (not res!208537) (not e!226487))))

(assert (=> b!370979 (= res!208537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170144 mask!970))))

(assert (=> b!370979 (= lt!170144 (array!21430 (store (arr!10180 _keys!658) i!548 k0!778) (size!10532 _keys!658)))))

(declare-fun mapNonEmpty!14700 () Bool)

(declare-fun tp!29042 () Bool)

(assert (=> mapNonEmpty!14700 (= mapRes!14700 (and tp!29042 e!226486))))

(declare-fun mapRest!14700 () (Array (_ BitVec 32) ValueCell!4035))

(declare-fun mapValue!14700 () ValueCell!4035)

(declare-fun mapKey!14700 () (_ BitVec 32))

(assert (=> mapNonEmpty!14700 (= (arr!10179 _values!506) (store mapRest!14700 mapKey!14700 mapValue!14700))))

(declare-fun b!370980 () Bool)

(assert (=> b!370980 (= e!226483 tp_is_empty!8757)))

(declare-fun b!370981 () Bool)

(declare-fun res!208539 () Bool)

(assert (=> b!370981 (=> (not res!208539) (not e!226488))))

(declare-fun arrayContainsKey!0 (array!21429 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370981 (= res!208539 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!370982 () Bool)

(declare-fun res!208544 () Bool)

(assert (=> b!370982 (=> (not res!208544) (not e!226488))))

(assert (=> b!370982 (= res!208544 (and (= (size!10531 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10532 _keys!658) (size!10531 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!36990 res!208535) b!370982))

(assert (= (and b!370982 res!208544) b!370971))

(assert (= (and b!370971 res!208541) b!370973))

(assert (= (and b!370973 res!208542) b!370976))

(assert (= (and b!370976 res!208538) b!370975))

(assert (= (and b!370975 res!208540) b!370974))

(assert (= (and b!370974 res!208536) b!370981))

(assert (= (and b!370981 res!208539) b!370979))

(assert (= (and b!370979 res!208537) b!370977))

(assert (= (and b!370977 res!208543) b!370972))

(assert (= (and b!370970 condMapEmpty!14700) mapIsEmpty!14700))

(assert (= (and b!370970 (not condMapEmpty!14700)) mapNonEmpty!14700))

(get-info :version)

(assert (= (and mapNonEmpty!14700 ((_ is ValueCellFull!4035) mapValue!14700)) b!370978))

(assert (= (and b!370970 ((_ is ValueCellFull!4035) mapDefault!14700)) b!370980))

(assert (= start!36990 b!370970))

(declare-fun m!367017 () Bool)

(assert (=> b!370973 m!367017))

(declare-fun m!367019 () Bool)

(assert (=> b!370974 m!367019))

(declare-fun m!367021 () Bool)

(assert (=> start!36990 m!367021))

(declare-fun m!367023 () Bool)

(assert (=> start!36990 m!367023))

(declare-fun m!367025 () Bool)

(assert (=> start!36990 m!367025))

(declare-fun m!367027 () Bool)

(assert (=> b!370977 m!367027))

(declare-fun m!367029 () Bool)

(assert (=> b!370979 m!367029))

(declare-fun m!367031 () Bool)

(assert (=> b!370979 m!367031))

(declare-fun m!367033 () Bool)

(assert (=> b!370981 m!367033))

(declare-fun m!367035 () Bool)

(assert (=> b!370971 m!367035))

(declare-fun m!367037 () Bool)

(assert (=> b!370975 m!367037))

(declare-fun m!367039 () Bool)

(assert (=> b!370972 m!367039))

(declare-fun m!367041 () Bool)

(assert (=> b!370972 m!367041))

(declare-fun m!367043 () Bool)

(assert (=> b!370972 m!367043))

(declare-fun m!367045 () Bool)

(assert (=> b!370972 m!367045))

(declare-fun m!367047 () Bool)

(assert (=> b!370972 m!367047))

(declare-fun m!367049 () Bool)

(assert (=> mapNonEmpty!14700 m!367049))

(check-sat (not b!370981) (not b!370972) (not start!36990) (not b!370973) (not b!370977) (not b!370971) tp_is_empty!8757 (not b!370975) (not mapNonEmpty!14700) (not b_next!8109) (not b!370979) b_and!15369)
(check-sat b_and!15369 (not b_next!8109))
