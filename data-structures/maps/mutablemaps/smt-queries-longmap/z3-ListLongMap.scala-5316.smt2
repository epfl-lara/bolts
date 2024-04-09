; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71162 () Bool)

(assert start!71162)

(declare-fun b_free!13305 () Bool)

(declare-fun b_next!13305 () Bool)

(assert (=> start!71162 (= b_free!13305 (not b_next!13305))))

(declare-fun tp!46675 () Bool)

(declare-fun b_and!22249 () Bool)

(assert (=> start!71162 (= tp!46675 b_and!22249)))

(declare-datatypes ((V!25021 0))(
  ( (V!25022 (val!7555 Int)) )
))
(declare-datatypes ((tuple2!10012 0))(
  ( (tuple2!10013 (_1!5016 (_ BitVec 64)) (_2!5016 V!25021)) )
))
(declare-datatypes ((List!15853 0))(
  ( (Nil!15850) (Cons!15849 (h!16978 tuple2!10012) (t!22208 List!15853)) )
))
(declare-datatypes ((ListLongMap!8849 0))(
  ( (ListLongMap!8850 (toList!4440 List!15853)) )
))
(declare-fun lt!373641 () ListLongMap!8849)

(declare-fun lt!373639 () ListLongMap!8849)

(declare-fun zeroValueAfter!34 () V!25021)

(declare-fun b!826085 () Bool)

(declare-fun e!459993 () Bool)

(declare-fun lt!373647 () tuple2!10012)

(declare-fun +!1901 (ListLongMap!8849 tuple2!10012) ListLongMap!8849)

(assert (=> b!826085 (= e!459993 (= lt!373639 (+!1901 (+!1901 lt!373641 (tuple2!10013 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373647)))))

(declare-fun b!826086 () Bool)

(declare-fun e!459992 () Bool)

(assert (=> b!826086 (= e!459992 true)))

(declare-fun lt!373637 () ListLongMap!8849)

(declare-fun lt!373644 () tuple2!10012)

(declare-fun lt!373638 () ListLongMap!8849)

(assert (=> b!826086 (= lt!373637 (+!1901 (+!1901 lt!373638 lt!373644) lt!373647))))

(declare-fun lt!373646 () ListLongMap!8849)

(declare-fun lt!373645 () ListLongMap!8849)

(assert (=> b!826086 (and (= lt!373646 lt!373645) (= lt!373639 lt!373645) (= lt!373639 lt!373646))))

(declare-fun lt!373643 () ListLongMap!8849)

(assert (=> b!826086 (= lt!373645 (+!1901 lt!373643 lt!373644))))

(declare-fun lt!373635 () ListLongMap!8849)

(assert (=> b!826086 (= lt!373646 (+!1901 lt!373635 lt!373644))))

(declare-datatypes ((Unit!28319 0))(
  ( (Unit!28320) )
))
(declare-fun lt!373640 () Unit!28319)

(declare-fun zeroValueBefore!34 () V!25021)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!226 (ListLongMap!8849 (_ BitVec 64) V!25021 V!25021) Unit!28319)

(assert (=> b!826086 (= lt!373640 (addSameAsAddTwiceSameKeyDiffValues!226 lt!373635 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!459987 () Bool)

(assert (=> b!826086 e!459987))

(declare-fun res!563234 () Bool)

(assert (=> b!826086 (=> (not res!563234) (not e!459987))))

(declare-fun lt!373636 () ListLongMap!8849)

(assert (=> b!826086 (= res!563234 (= lt!373636 lt!373643))))

(declare-fun lt!373642 () tuple2!10012)

(assert (=> b!826086 (= lt!373643 (+!1901 lt!373635 lt!373642))))

(assert (=> b!826086 (= lt!373635 (+!1901 lt!373638 lt!373647))))

(assert (=> b!826086 (= lt!373644 (tuple2!10013 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!826086 e!459993))

(declare-fun res!563236 () Bool)

(assert (=> b!826086 (=> (not res!563236) (not e!459993))))

(assert (=> b!826086 (= res!563236 (= lt!373636 (+!1901 (+!1901 lt!373638 lt!373642) lt!373647)))))

(declare-fun minValue!754 () V!25021)

(assert (=> b!826086 (= lt!373647 (tuple2!10013 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826086 (= lt!373642 (tuple2!10013 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46172 0))(
  ( (array!46173 (arr!22127 (Array (_ BitVec 32) (_ BitVec 64))) (size!22548 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46172)

(declare-datatypes ((ValueCell!7092 0))(
  ( (ValueCellFull!7092 (v!9985 V!25021)) (EmptyCell!7092) )
))
(declare-datatypes ((array!46174 0))(
  ( (array!46175 (arr!22128 (Array (_ BitVec 32) ValueCell!7092)) (size!22549 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46174)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2548 (array!46172 array!46174 (_ BitVec 32) (_ BitVec 32) V!25021 V!25021 (_ BitVec 32) Int) ListLongMap!8849)

(assert (=> b!826086 (= lt!373639 (getCurrentListMap!2548 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826086 (= lt!373636 (getCurrentListMap!2548 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826087 () Bool)

(declare-fun res!563237 () Bool)

(declare-fun e!459986 () Bool)

(assert (=> b!826087 (=> (not res!563237) (not e!459986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46172 (_ BitVec 32)) Bool)

(assert (=> b!826087 (= res!563237 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!24148 () Bool)

(declare-fun mapRes!24148 () Bool)

(declare-fun tp!46674 () Bool)

(declare-fun e!459991 () Bool)

(assert (=> mapNonEmpty!24148 (= mapRes!24148 (and tp!46674 e!459991))))

(declare-fun mapKey!24148 () (_ BitVec 32))

(declare-fun mapRest!24148 () (Array (_ BitVec 32) ValueCell!7092))

(declare-fun mapValue!24148 () ValueCell!7092)

(assert (=> mapNonEmpty!24148 (= (arr!22128 _values!788) (store mapRest!24148 mapKey!24148 mapValue!24148))))

(declare-fun res!563233 () Bool)

(assert (=> start!71162 (=> (not res!563233) (not e!459986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71162 (= res!563233 (validMask!0 mask!1312))))

(assert (=> start!71162 e!459986))

(declare-fun tp_is_empty!15015 () Bool)

(assert (=> start!71162 tp_is_empty!15015))

(declare-fun array_inv!17625 (array!46172) Bool)

(assert (=> start!71162 (array_inv!17625 _keys!976)))

(assert (=> start!71162 true))

(declare-fun e!459988 () Bool)

(declare-fun array_inv!17626 (array!46174) Bool)

(assert (=> start!71162 (and (array_inv!17626 _values!788) e!459988)))

(assert (=> start!71162 tp!46675))

(declare-fun b!826088 () Bool)

(assert (=> b!826088 (= e!459986 (not e!459992))))

(declare-fun res!563232 () Bool)

(assert (=> b!826088 (=> res!563232 e!459992)))

(assert (=> b!826088 (= res!563232 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!826088 (= lt!373638 lt!373641)))

(declare-fun lt!373634 () Unit!28319)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!569 (array!46172 array!46174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25021 V!25021 V!25021 V!25021 (_ BitVec 32) Int) Unit!28319)

(assert (=> b!826088 (= lt!373634 (lemmaNoChangeToArrayThenSameMapNoExtras!569 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2453 (array!46172 array!46174 (_ BitVec 32) (_ BitVec 32) V!25021 V!25021 (_ BitVec 32) Int) ListLongMap!8849)

(assert (=> b!826088 (= lt!373641 (getCurrentListMapNoExtraKeys!2453 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826088 (= lt!373638 (getCurrentListMapNoExtraKeys!2453 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826089 () Bool)

(declare-fun res!563235 () Bool)

(assert (=> b!826089 (=> (not res!563235) (not e!459986))))

(declare-datatypes ((List!15854 0))(
  ( (Nil!15851) (Cons!15850 (h!16979 (_ BitVec 64)) (t!22209 List!15854)) )
))
(declare-fun arrayNoDuplicates!0 (array!46172 (_ BitVec 32) List!15854) Bool)

(assert (=> b!826089 (= res!563235 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15851))))

(declare-fun b!826090 () Bool)

(declare-fun e!459990 () Bool)

(assert (=> b!826090 (= e!459988 (and e!459990 mapRes!24148))))

(declare-fun condMapEmpty!24148 () Bool)

(declare-fun mapDefault!24148 () ValueCell!7092)

(assert (=> b!826090 (= condMapEmpty!24148 (= (arr!22128 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7092)) mapDefault!24148)))))

(declare-fun mapIsEmpty!24148 () Bool)

(assert (=> mapIsEmpty!24148 mapRes!24148))

(declare-fun b!826091 () Bool)

(assert (=> b!826091 (= e!459991 tp_is_empty!15015)))

(declare-fun b!826092 () Bool)

(assert (=> b!826092 (= e!459987 (= lt!373639 (+!1901 (+!1901 lt!373641 lt!373647) lt!373644)))))

(declare-fun b!826093 () Bool)

(assert (=> b!826093 (= e!459990 tp_is_empty!15015)))

(declare-fun b!826094 () Bool)

(declare-fun res!563231 () Bool)

(assert (=> b!826094 (=> (not res!563231) (not e!459986))))

(assert (=> b!826094 (= res!563231 (and (= (size!22549 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22548 _keys!976) (size!22549 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!71162 res!563233) b!826094))

(assert (= (and b!826094 res!563231) b!826087))

(assert (= (and b!826087 res!563237) b!826089))

(assert (= (and b!826089 res!563235) b!826088))

(assert (= (and b!826088 (not res!563232)) b!826086))

(assert (= (and b!826086 res!563236) b!826085))

(assert (= (and b!826086 res!563234) b!826092))

(assert (= (and b!826090 condMapEmpty!24148) mapIsEmpty!24148))

(assert (= (and b!826090 (not condMapEmpty!24148)) mapNonEmpty!24148))

(get-info :version)

(assert (= (and mapNonEmpty!24148 ((_ is ValueCellFull!7092) mapValue!24148)) b!826091))

(assert (= (and b!826090 ((_ is ValueCellFull!7092) mapDefault!24148)) b!826093))

(assert (= start!71162 b!826090))

(declare-fun m!768801 () Bool)

(assert (=> mapNonEmpty!24148 m!768801))

(declare-fun m!768803 () Bool)

(assert (=> b!826085 m!768803))

(assert (=> b!826085 m!768803))

(declare-fun m!768805 () Bool)

(assert (=> b!826085 m!768805))

(declare-fun m!768807 () Bool)

(assert (=> b!826088 m!768807))

(declare-fun m!768809 () Bool)

(assert (=> b!826088 m!768809))

(declare-fun m!768811 () Bool)

(assert (=> b!826088 m!768811))

(declare-fun m!768813 () Bool)

(assert (=> b!826087 m!768813))

(declare-fun m!768815 () Bool)

(assert (=> start!71162 m!768815))

(declare-fun m!768817 () Bool)

(assert (=> start!71162 m!768817))

(declare-fun m!768819 () Bool)

(assert (=> start!71162 m!768819))

(declare-fun m!768821 () Bool)

(assert (=> b!826089 m!768821))

(declare-fun m!768823 () Bool)

(assert (=> b!826092 m!768823))

(assert (=> b!826092 m!768823))

(declare-fun m!768825 () Bool)

(assert (=> b!826092 m!768825))

(declare-fun m!768827 () Bool)

(assert (=> b!826086 m!768827))

(declare-fun m!768829 () Bool)

(assert (=> b!826086 m!768829))

(declare-fun m!768831 () Bool)

(assert (=> b!826086 m!768831))

(declare-fun m!768833 () Bool)

(assert (=> b!826086 m!768833))

(declare-fun m!768835 () Bool)

(assert (=> b!826086 m!768835))

(declare-fun m!768837 () Bool)

(assert (=> b!826086 m!768837))

(declare-fun m!768839 () Bool)

(assert (=> b!826086 m!768839))

(assert (=> b!826086 m!768829))

(declare-fun m!768841 () Bool)

(assert (=> b!826086 m!768841))

(declare-fun m!768843 () Bool)

(assert (=> b!826086 m!768843))

(declare-fun m!768845 () Bool)

(assert (=> b!826086 m!768845))

(assert (=> b!826086 m!768837))

(declare-fun m!768847 () Bool)

(assert (=> b!826086 m!768847))

(check-sat (not mapNonEmpty!24148) (not start!71162) (not b!826088) (not b!826086) (not b!826089) (not b!826092) (not b_next!13305) (not b!826087) tp_is_empty!15015 (not b!826085) b_and!22249)
(check-sat b_and!22249 (not b_next!13305))
