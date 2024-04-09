; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37236 () Bool)

(assert start!37236)

(declare-fun b_free!8355 () Bool)

(declare-fun b_next!8355 () Bool)

(assert (=> start!37236 (= b_free!8355 (not b_next!8355))))

(declare-fun tp!29780 () Bool)

(declare-fun b_and!15615 () Bool)

(assert (=> start!37236 (= tp!29780 b_and!15615)))

(declare-fun b!376236 () Bool)

(declare-fun e!229152 () Bool)

(declare-fun e!229150 () Bool)

(declare-fun mapRes!15069 () Bool)

(assert (=> b!376236 (= e!229152 (and e!229150 mapRes!15069))))

(declare-fun condMapEmpty!15069 () Bool)

(declare-datatypes ((V!13109 0))(
  ( (V!13110 (val!4546 Int)) )
))
(declare-datatypes ((ValueCell!4158 0))(
  ( (ValueCellFull!4158 (v!6739 V!13109)) (EmptyCell!4158) )
))
(declare-datatypes ((array!21905 0))(
  ( (array!21906 (arr!10418 (Array (_ BitVec 32) ValueCell!4158)) (size!10770 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21905)

(declare-fun mapDefault!15069 () ValueCell!4158)

(assert (=> b!376236 (= condMapEmpty!15069 (= (arr!10418 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4158)) mapDefault!15069)))))

(declare-fun b!376237 () Bool)

(declare-fun e!229153 () Bool)

(declare-fun e!229151 () Bool)

(assert (=> b!376237 (= e!229153 (not e!229151))))

(declare-fun res!212705 () Bool)

(assert (=> b!376237 (=> res!212705 e!229151)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376237 (= res!212705 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13109)

(declare-datatypes ((tuple2!6026 0))(
  ( (tuple2!6027 (_1!3023 (_ BitVec 64)) (_2!3023 V!13109)) )
))
(declare-datatypes ((List!5897 0))(
  ( (Nil!5894) (Cons!5893 (h!6749 tuple2!6026) (t!11055 List!5897)) )
))
(declare-datatypes ((ListLongMap!4953 0))(
  ( (ListLongMap!4954 (toList!2492 List!5897)) )
))
(declare-fun lt!174591 () ListLongMap!4953)

(declare-datatypes ((array!21907 0))(
  ( (array!21908 (arr!10419 (Array (_ BitVec 32) (_ BitVec 64))) (size!10771 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21907)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13109)

(declare-fun getCurrentListMap!1931 (array!21907 array!21905 (_ BitVec 32) (_ BitVec 32) V!13109 V!13109 (_ BitVec 32) Int) ListLongMap!4953)

(assert (=> b!376237 (= lt!174591 (getCurrentListMap!1931 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174592 () ListLongMap!4953)

(declare-fun lt!174587 () array!21905)

(declare-fun lt!174589 () array!21907)

(assert (=> b!376237 (= lt!174592 (getCurrentListMap!1931 lt!174589 lt!174587 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174590 () ListLongMap!4953)

(declare-fun lt!174583 () ListLongMap!4953)

(assert (=> b!376237 (and (= lt!174590 lt!174583) (= lt!174583 lt!174590))))

(declare-fun lt!174593 () ListLongMap!4953)

(declare-fun lt!174595 () tuple2!6026)

(declare-fun +!833 (ListLongMap!4953 tuple2!6026) ListLongMap!4953)

(assert (=> b!376237 (= lt!174583 (+!833 lt!174593 lt!174595))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!13109)

(assert (=> b!376237 (= lt!174595 (tuple2!6027 k0!778 v!373))))

(declare-datatypes ((Unit!11569 0))(
  ( (Unit!11570) )
))
(declare-fun lt!174584 () Unit!11569)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!82 (array!21907 array!21905 (_ BitVec 32) (_ BitVec 32) V!13109 V!13109 (_ BitVec 32) (_ BitVec 64) V!13109 (_ BitVec 32) Int) Unit!11569)

(assert (=> b!376237 (= lt!174584 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!82 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!749 (array!21907 array!21905 (_ BitVec 32) (_ BitVec 32) V!13109 V!13109 (_ BitVec 32) Int) ListLongMap!4953)

(assert (=> b!376237 (= lt!174590 (getCurrentListMapNoExtraKeys!749 lt!174589 lt!174587 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376237 (= lt!174587 (array!21906 (store (arr!10418 _values!506) i!548 (ValueCellFull!4158 v!373)) (size!10770 _values!506)))))

(assert (=> b!376237 (= lt!174593 (getCurrentListMapNoExtraKeys!749 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376238 () Bool)

(declare-fun res!212701 () Bool)

(declare-fun e!229149 () Bool)

(assert (=> b!376238 (=> (not res!212701) (not e!229149))))

(assert (=> b!376238 (= res!212701 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10771 _keys!658))))))

(declare-fun b!376239 () Bool)

(declare-fun e!229154 () Bool)

(assert (=> b!376239 (= e!229151 e!229154)))

(declare-fun res!212702 () Bool)

(assert (=> b!376239 (=> res!212702 e!229154)))

(assert (=> b!376239 (= res!212702 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!174585 () ListLongMap!4953)

(assert (=> b!376239 (= lt!174592 lt!174585)))

(declare-fun lt!174588 () tuple2!6026)

(assert (=> b!376239 (= lt!174585 (+!833 lt!174583 lt!174588))))

(declare-fun lt!174586 () ListLongMap!4953)

(assert (=> b!376239 (= lt!174591 lt!174586)))

(assert (=> b!376239 (= lt!174586 (+!833 lt!174593 lt!174588))))

(assert (=> b!376239 (= lt!174592 (+!833 lt!174590 lt!174588))))

(assert (=> b!376239 (= lt!174588 (tuple2!6027 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376240 () Bool)

(declare-fun res!212697 () Bool)

(assert (=> b!376240 (=> (not res!212697) (not e!229149))))

(assert (=> b!376240 (= res!212697 (and (= (size!10770 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10771 _keys!658) (size!10770 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376241 () Bool)

(assert (=> b!376241 (= e!229149 e!229153)))

(declare-fun res!212698 () Bool)

(assert (=> b!376241 (=> (not res!212698) (not e!229153))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21907 (_ BitVec 32)) Bool)

(assert (=> b!376241 (= res!212698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174589 mask!970))))

(assert (=> b!376241 (= lt!174589 (array!21908 (store (arr!10419 _keys!658) i!548 k0!778) (size!10771 _keys!658)))))

(declare-fun b!376242 () Bool)

(declare-fun res!212695 () Bool)

(assert (=> b!376242 (=> (not res!212695) (not e!229149))))

(assert (=> b!376242 (= res!212695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!376243 () Bool)

(assert (=> b!376243 (= e!229154 true)))

(assert (=> b!376243 (= lt!174585 (+!833 lt!174586 lt!174595))))

(declare-fun lt!174594 () Unit!11569)

(declare-fun addCommutativeForDiffKeys!258 (ListLongMap!4953 (_ BitVec 64) V!13109 (_ BitVec 64) V!13109) Unit!11569)

(assert (=> b!376243 (= lt!174594 (addCommutativeForDiffKeys!258 lt!174593 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376244 () Bool)

(declare-fun e!229155 () Bool)

(declare-fun tp_is_empty!9003 () Bool)

(assert (=> b!376244 (= e!229155 tp_is_empty!9003)))

(declare-fun mapIsEmpty!15069 () Bool)

(assert (=> mapIsEmpty!15069 mapRes!15069))

(declare-fun b!376246 () Bool)

(declare-fun res!212703 () Bool)

(assert (=> b!376246 (=> (not res!212703) (not e!229149))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376246 (= res!212703 (validKeyInArray!0 k0!778))))

(declare-fun b!376247 () Bool)

(declare-fun res!212699 () Bool)

(assert (=> b!376247 (=> (not res!212699) (not e!229149))))

(declare-datatypes ((List!5898 0))(
  ( (Nil!5895) (Cons!5894 (h!6750 (_ BitVec 64)) (t!11056 List!5898)) )
))
(declare-fun arrayNoDuplicates!0 (array!21907 (_ BitVec 32) List!5898) Bool)

(assert (=> b!376247 (= res!212699 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5895))))

(declare-fun mapNonEmpty!15069 () Bool)

(declare-fun tp!29781 () Bool)

(assert (=> mapNonEmpty!15069 (= mapRes!15069 (and tp!29781 e!229155))))

(declare-fun mapValue!15069 () ValueCell!4158)

(declare-fun mapKey!15069 () (_ BitVec 32))

(declare-fun mapRest!15069 () (Array (_ BitVec 32) ValueCell!4158))

(assert (=> mapNonEmpty!15069 (= (arr!10418 _values!506) (store mapRest!15069 mapKey!15069 mapValue!15069))))

(declare-fun b!376248 () Bool)

(declare-fun res!212694 () Bool)

(assert (=> b!376248 (=> (not res!212694) (not e!229149))))

(assert (=> b!376248 (= res!212694 (or (= (select (arr!10419 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10419 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!212700 () Bool)

(assert (=> start!37236 (=> (not res!212700) (not e!229149))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37236 (= res!212700 (validMask!0 mask!970))))

(assert (=> start!37236 e!229149))

(declare-fun array_inv!7672 (array!21905) Bool)

(assert (=> start!37236 (and (array_inv!7672 _values!506) e!229152)))

(assert (=> start!37236 tp!29780))

(assert (=> start!37236 true))

(assert (=> start!37236 tp_is_empty!9003))

(declare-fun array_inv!7673 (array!21907) Bool)

(assert (=> start!37236 (array_inv!7673 _keys!658)))

(declare-fun b!376245 () Bool)

(declare-fun res!212704 () Bool)

(assert (=> b!376245 (=> (not res!212704) (not e!229149))))

(declare-fun arrayContainsKey!0 (array!21907 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376245 (= res!212704 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!376249 () Bool)

(declare-fun res!212696 () Bool)

(assert (=> b!376249 (=> (not res!212696) (not e!229153))))

(assert (=> b!376249 (= res!212696 (arrayNoDuplicates!0 lt!174589 #b00000000000000000000000000000000 Nil!5895))))

(declare-fun b!376250 () Bool)

(assert (=> b!376250 (= e!229150 tp_is_empty!9003)))

(assert (= (and start!37236 res!212700) b!376240))

(assert (= (and b!376240 res!212697) b!376242))

(assert (= (and b!376242 res!212695) b!376247))

(assert (= (and b!376247 res!212699) b!376238))

(assert (= (and b!376238 res!212701) b!376246))

(assert (= (and b!376246 res!212703) b!376248))

(assert (= (and b!376248 res!212694) b!376245))

(assert (= (and b!376245 res!212704) b!376241))

(assert (= (and b!376241 res!212698) b!376249))

(assert (= (and b!376249 res!212696) b!376237))

(assert (= (and b!376237 (not res!212705)) b!376239))

(assert (= (and b!376239 (not res!212702)) b!376243))

(assert (= (and b!376236 condMapEmpty!15069) mapIsEmpty!15069))

(assert (= (and b!376236 (not condMapEmpty!15069)) mapNonEmpty!15069))

(get-info :version)

(assert (= (and mapNonEmpty!15069 ((_ is ValueCellFull!4158) mapValue!15069)) b!376244))

(assert (= (and b!376236 ((_ is ValueCellFull!4158) mapDefault!15069)) b!376250))

(assert (= start!37236 b!376236))

(declare-fun m!372977 () Bool)

(assert (=> b!376249 m!372977))

(declare-fun m!372979 () Bool)

(assert (=> b!376242 m!372979))

(declare-fun m!372981 () Bool)

(assert (=> b!376245 m!372981))

(declare-fun m!372983 () Bool)

(assert (=> b!376247 m!372983))

(declare-fun m!372985 () Bool)

(assert (=> b!376246 m!372985))

(declare-fun m!372987 () Bool)

(assert (=> b!376241 m!372987))

(declare-fun m!372989 () Bool)

(assert (=> b!376241 m!372989))

(declare-fun m!372991 () Bool)

(assert (=> mapNonEmpty!15069 m!372991))

(declare-fun m!372993 () Bool)

(assert (=> b!376248 m!372993))

(declare-fun m!372995 () Bool)

(assert (=> b!376243 m!372995))

(declare-fun m!372997 () Bool)

(assert (=> b!376243 m!372997))

(declare-fun m!372999 () Bool)

(assert (=> b!376239 m!372999))

(declare-fun m!373001 () Bool)

(assert (=> b!376239 m!373001))

(declare-fun m!373003 () Bool)

(assert (=> b!376239 m!373003))

(declare-fun m!373005 () Bool)

(assert (=> start!37236 m!373005))

(declare-fun m!373007 () Bool)

(assert (=> start!37236 m!373007))

(declare-fun m!373009 () Bool)

(assert (=> start!37236 m!373009))

(declare-fun m!373011 () Bool)

(assert (=> b!376237 m!373011))

(declare-fun m!373013 () Bool)

(assert (=> b!376237 m!373013))

(declare-fun m!373015 () Bool)

(assert (=> b!376237 m!373015))

(declare-fun m!373017 () Bool)

(assert (=> b!376237 m!373017))

(declare-fun m!373019 () Bool)

(assert (=> b!376237 m!373019))

(declare-fun m!373021 () Bool)

(assert (=> b!376237 m!373021))

(declare-fun m!373023 () Bool)

(assert (=> b!376237 m!373023))

(check-sat (not b!376239) (not b!376243) (not b!376246) (not b!376247) tp_is_empty!9003 (not b!376241) b_and!15615 (not b!376237) (not b!376245) (not b!376242) (not b_next!8355) (not start!37236) (not mapNonEmpty!15069) (not b!376249))
(check-sat b_and!15615 (not b_next!8355))
