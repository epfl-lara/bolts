; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37230 () Bool)

(assert start!37230)

(declare-fun b_free!8349 () Bool)

(declare-fun b_next!8349 () Bool)

(assert (=> start!37230 (= b_free!8349 (not b_next!8349))))

(declare-fun tp!29763 () Bool)

(declare-fun b_and!15609 () Bool)

(assert (=> start!37230 (= tp!29763 b_and!15609)))

(declare-fun b!376101 () Bool)

(declare-fun res!212592 () Bool)

(declare-fun e!229080 () Bool)

(assert (=> b!376101 (=> (not res!212592) (not e!229080))))

(declare-datatypes ((array!21893 0))(
  ( (array!21894 (arr!10412 (Array (_ BitVec 32) (_ BitVec 64))) (size!10764 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21893)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376101 (= res!212592 (or (= (select (arr!10412 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10412 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376102 () Bool)

(declare-fun e!229082 () Bool)

(assert (=> b!376102 (= e!229082 true)))

(declare-datatypes ((V!13101 0))(
  ( (V!13102 (val!4543 Int)) )
))
(declare-datatypes ((tuple2!6022 0))(
  ( (tuple2!6023 (_1!3021 (_ BitVec 64)) (_2!3021 V!13101)) )
))
(declare-datatypes ((List!5893 0))(
  ( (Nil!5890) (Cons!5889 (h!6745 tuple2!6022) (t!11051 List!5893)) )
))
(declare-datatypes ((ListLongMap!4949 0))(
  ( (ListLongMap!4950 (toList!2490 List!5893)) )
))
(declare-fun lt!174468 () ListLongMap!4949)

(declare-fun lt!174466 () ListLongMap!4949)

(declare-fun lt!174471 () tuple2!6022)

(declare-fun +!831 (ListLongMap!4949 tuple2!6022) ListLongMap!4949)

(assert (=> b!376102 (= lt!174468 (+!831 lt!174466 lt!174471))))

(declare-fun v!373 () V!13101)

(declare-fun lt!174469 () ListLongMap!4949)

(declare-datatypes ((Unit!11565 0))(
  ( (Unit!11566) )
))
(declare-fun lt!174472 () Unit!11565)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun zeroValue!472 () V!13101)

(declare-fun addCommutativeForDiffKeys!256 (ListLongMap!4949 (_ BitVec 64) V!13101 (_ BitVec 64) V!13101) Unit!11565)

(assert (=> b!376102 (= lt!174472 (addCommutativeForDiffKeys!256 lt!174469 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapIsEmpty!15060 () Bool)

(declare-fun mapRes!15060 () Bool)

(assert (=> mapIsEmpty!15060 mapRes!15060))

(declare-fun b!376103 () Bool)

(declare-fun e!229079 () Bool)

(assert (=> b!376103 (= e!229080 e!229079)))

(declare-fun res!212595 () Bool)

(assert (=> b!376103 (=> (not res!212595) (not e!229079))))

(declare-fun lt!174467 () array!21893)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21893 (_ BitVec 32)) Bool)

(assert (=> b!376103 (= res!212595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174467 mask!970))))

(assert (=> b!376103 (= lt!174467 (array!21894 (store (arr!10412 _keys!658) i!548 k0!778) (size!10764 _keys!658)))))

(declare-fun b!376104 () Bool)

(declare-fun res!212590 () Bool)

(assert (=> b!376104 (=> (not res!212590) (not e!229080))))

(declare-datatypes ((List!5894 0))(
  ( (Nil!5891) (Cons!5890 (h!6746 (_ BitVec 64)) (t!11052 List!5894)) )
))
(declare-fun arrayNoDuplicates!0 (array!21893 (_ BitVec 32) List!5894) Bool)

(assert (=> b!376104 (= res!212590 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5891))))

(declare-fun b!376106 () Bool)

(declare-fun res!212597 () Bool)

(assert (=> b!376106 (=> (not res!212597) (not e!229080))))

(declare-fun arrayContainsKey!0 (array!21893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376106 (= res!212597 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!376107 () Bool)

(declare-fun res!212594 () Bool)

(assert (=> b!376107 (=> (not res!212594) (not e!229079))))

(assert (=> b!376107 (= res!212594 (arrayNoDuplicates!0 lt!174467 #b00000000000000000000000000000000 Nil!5891))))

(declare-fun b!376108 () Bool)

(declare-fun e!229083 () Bool)

(declare-fun e!229077 () Bool)

(assert (=> b!376108 (= e!229083 (and e!229077 mapRes!15060))))

(declare-fun condMapEmpty!15060 () Bool)

(declare-datatypes ((ValueCell!4155 0))(
  ( (ValueCellFull!4155 (v!6736 V!13101)) (EmptyCell!4155) )
))
(declare-datatypes ((array!21895 0))(
  ( (array!21896 (arr!10413 (Array (_ BitVec 32) ValueCell!4155)) (size!10765 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21895)

(declare-fun mapDefault!15060 () ValueCell!4155)

(assert (=> b!376108 (= condMapEmpty!15060 (= (arr!10413 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4155)) mapDefault!15060)))))

(declare-fun b!376109 () Bool)

(declare-fun res!212588 () Bool)

(assert (=> b!376109 (=> (not res!212588) (not e!229080))))

(assert (=> b!376109 (= res!212588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!376110 () Bool)

(declare-fun res!212596 () Bool)

(assert (=> b!376110 (=> (not res!212596) (not e!229080))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376110 (= res!212596 (and (= (size!10765 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10764 _keys!658) (size!10765 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!15060 () Bool)

(declare-fun tp!29762 () Bool)

(declare-fun e!229076 () Bool)

(assert (=> mapNonEmpty!15060 (= mapRes!15060 (and tp!29762 e!229076))))

(declare-fun mapRest!15060 () (Array (_ BitVec 32) ValueCell!4155))

(declare-fun mapKey!15060 () (_ BitVec 32))

(declare-fun mapValue!15060 () ValueCell!4155)

(assert (=> mapNonEmpty!15060 (= (arr!10413 _values!506) (store mapRest!15060 mapKey!15060 mapValue!15060))))

(declare-fun b!376111 () Bool)

(declare-fun res!212589 () Bool)

(assert (=> b!376111 (=> (not res!212589) (not e!229080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376111 (= res!212589 (validKeyInArray!0 k0!778))))

(declare-fun b!376112 () Bool)

(declare-fun res!212593 () Bool)

(assert (=> b!376112 (=> (not res!212593) (not e!229080))))

(assert (=> b!376112 (= res!212593 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10764 _keys!658))))))

(declare-fun b!376113 () Bool)

(declare-fun e!229078 () Bool)

(assert (=> b!376113 (= e!229078 e!229082)))

(declare-fun res!212586 () Bool)

(assert (=> b!376113 (=> res!212586 e!229082)))

(assert (=> b!376113 (= res!212586 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!174470 () ListLongMap!4949)

(assert (=> b!376113 (= lt!174470 lt!174468)))

(declare-fun lt!174476 () ListLongMap!4949)

(declare-fun lt!174474 () tuple2!6022)

(assert (=> b!376113 (= lt!174468 (+!831 lt!174476 lt!174474))))

(declare-fun lt!174477 () ListLongMap!4949)

(assert (=> b!376113 (= lt!174477 lt!174466)))

(assert (=> b!376113 (= lt!174466 (+!831 lt!174469 lt!174474))))

(declare-fun lt!174473 () ListLongMap!4949)

(assert (=> b!376113 (= lt!174470 (+!831 lt!174473 lt!174474))))

(assert (=> b!376113 (= lt!174474 (tuple2!6023 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376114 () Bool)

(declare-fun tp_is_empty!8997 () Bool)

(assert (=> b!376114 (= e!229077 tp_is_empty!8997)))

(declare-fun b!376115 () Bool)

(assert (=> b!376115 (= e!229076 tp_is_empty!8997)))

(declare-fun res!212591 () Bool)

(assert (=> start!37230 (=> (not res!212591) (not e!229080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37230 (= res!212591 (validMask!0 mask!970))))

(assert (=> start!37230 e!229080))

(declare-fun array_inv!7668 (array!21895) Bool)

(assert (=> start!37230 (and (array_inv!7668 _values!506) e!229083)))

(assert (=> start!37230 tp!29763))

(assert (=> start!37230 true))

(assert (=> start!37230 tp_is_empty!8997))

(declare-fun array_inv!7669 (array!21893) Bool)

(assert (=> start!37230 (array_inv!7669 _keys!658)))

(declare-fun b!376105 () Bool)

(assert (=> b!376105 (= e!229079 (not e!229078))))

(declare-fun res!212587 () Bool)

(assert (=> b!376105 (=> res!212587 e!229078)))

(assert (=> b!376105 (= res!212587 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13101)

(declare-fun getCurrentListMap!1929 (array!21893 array!21895 (_ BitVec 32) (_ BitVec 32) V!13101 V!13101 (_ BitVec 32) Int) ListLongMap!4949)

(assert (=> b!376105 (= lt!174477 (getCurrentListMap!1929 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174478 () array!21895)

(assert (=> b!376105 (= lt!174470 (getCurrentListMap!1929 lt!174467 lt!174478 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376105 (and (= lt!174473 lt!174476) (= lt!174476 lt!174473))))

(assert (=> b!376105 (= lt!174476 (+!831 lt!174469 lt!174471))))

(assert (=> b!376105 (= lt!174471 (tuple2!6023 k0!778 v!373))))

(declare-fun lt!174475 () Unit!11565)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!80 (array!21893 array!21895 (_ BitVec 32) (_ BitVec 32) V!13101 V!13101 (_ BitVec 32) (_ BitVec 64) V!13101 (_ BitVec 32) Int) Unit!11565)

(assert (=> b!376105 (= lt!174475 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!80 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!747 (array!21893 array!21895 (_ BitVec 32) (_ BitVec 32) V!13101 V!13101 (_ BitVec 32) Int) ListLongMap!4949)

(assert (=> b!376105 (= lt!174473 (getCurrentListMapNoExtraKeys!747 lt!174467 lt!174478 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376105 (= lt!174478 (array!21896 (store (arr!10413 _values!506) i!548 (ValueCellFull!4155 v!373)) (size!10765 _values!506)))))

(assert (=> b!376105 (= lt!174469 (getCurrentListMapNoExtraKeys!747 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!37230 res!212591) b!376110))

(assert (= (and b!376110 res!212596) b!376109))

(assert (= (and b!376109 res!212588) b!376104))

(assert (= (and b!376104 res!212590) b!376112))

(assert (= (and b!376112 res!212593) b!376111))

(assert (= (and b!376111 res!212589) b!376101))

(assert (= (and b!376101 res!212592) b!376106))

(assert (= (and b!376106 res!212597) b!376103))

(assert (= (and b!376103 res!212595) b!376107))

(assert (= (and b!376107 res!212594) b!376105))

(assert (= (and b!376105 (not res!212587)) b!376113))

(assert (= (and b!376113 (not res!212586)) b!376102))

(assert (= (and b!376108 condMapEmpty!15060) mapIsEmpty!15060))

(assert (= (and b!376108 (not condMapEmpty!15060)) mapNonEmpty!15060))

(get-info :version)

(assert (= (and mapNonEmpty!15060 ((_ is ValueCellFull!4155) mapValue!15060)) b!376115))

(assert (= (and b!376108 ((_ is ValueCellFull!4155) mapDefault!15060)) b!376114))

(assert (= start!37230 b!376108))

(declare-fun m!372833 () Bool)

(assert (=> b!376104 m!372833))

(declare-fun m!372835 () Bool)

(assert (=> b!376106 m!372835))

(declare-fun m!372837 () Bool)

(assert (=> b!376113 m!372837))

(declare-fun m!372839 () Bool)

(assert (=> b!376113 m!372839))

(declare-fun m!372841 () Bool)

(assert (=> b!376113 m!372841))

(declare-fun m!372843 () Bool)

(assert (=> b!376105 m!372843))

(declare-fun m!372845 () Bool)

(assert (=> b!376105 m!372845))

(declare-fun m!372847 () Bool)

(assert (=> b!376105 m!372847))

(declare-fun m!372849 () Bool)

(assert (=> b!376105 m!372849))

(declare-fun m!372851 () Bool)

(assert (=> b!376105 m!372851))

(declare-fun m!372853 () Bool)

(assert (=> b!376105 m!372853))

(declare-fun m!372855 () Bool)

(assert (=> b!376105 m!372855))

(declare-fun m!372857 () Bool)

(assert (=> b!376102 m!372857))

(declare-fun m!372859 () Bool)

(assert (=> b!376102 m!372859))

(declare-fun m!372861 () Bool)

(assert (=> b!376101 m!372861))

(declare-fun m!372863 () Bool)

(assert (=> start!37230 m!372863))

(declare-fun m!372865 () Bool)

(assert (=> start!37230 m!372865))

(declare-fun m!372867 () Bool)

(assert (=> start!37230 m!372867))

(declare-fun m!372869 () Bool)

(assert (=> b!376107 m!372869))

(declare-fun m!372871 () Bool)

(assert (=> mapNonEmpty!15060 m!372871))

(declare-fun m!372873 () Bool)

(assert (=> b!376111 m!372873))

(declare-fun m!372875 () Bool)

(assert (=> b!376103 m!372875))

(declare-fun m!372877 () Bool)

(assert (=> b!376103 m!372877))

(declare-fun m!372879 () Bool)

(assert (=> b!376109 m!372879))

(check-sat (not b!376107) (not b!376102) b_and!15609 (not b!376113) (not b_next!8349) (not start!37230) (not b!376104) (not b!376111) (not b!376103) (not b!376109) (not mapNonEmpty!15060) tp_is_empty!8997 (not b!376106) (not b!376105))
(check-sat b_and!15609 (not b_next!8349))
