; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71398 () Bool)

(assert start!71398)

(declare-fun b_free!13455 () Bool)

(declare-fun b_next!13455 () Bool)

(assert (=> start!71398 (= b_free!13455 (not b_next!13455))))

(declare-fun tp!47140 () Bool)

(declare-fun b_and!22455 () Bool)

(assert (=> start!71398 (= tp!47140 b_and!22455)))

(declare-fun mapNonEmpty!24388 () Bool)

(declare-fun mapRes!24388 () Bool)

(declare-fun tp!47139 () Bool)

(declare-fun e!461917 () Bool)

(assert (=> mapNonEmpty!24388 (= mapRes!24388 (and tp!47139 e!461917))))

(declare-datatypes ((V!25221 0))(
  ( (V!25222 (val!7630 Int)) )
))
(declare-datatypes ((ValueCell!7167 0))(
  ( (ValueCellFull!7167 (v!10064 V!25221)) (EmptyCell!7167) )
))
(declare-fun mapRest!24388 () (Array (_ BitVec 32) ValueCell!7167))

(declare-datatypes ((array!46470 0))(
  ( (array!46471 (arr!22271 (Array (_ BitVec 32) ValueCell!7167)) (size!22692 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46470)

(declare-fun mapValue!24388 () ValueCell!7167)

(declare-fun mapKey!24388 () (_ BitVec 32))

(assert (=> mapNonEmpty!24388 (= (arr!22271 _values!788) (store mapRest!24388 mapKey!24388 mapValue!24388))))

(declare-datatypes ((tuple2!10140 0))(
  ( (tuple2!10141 (_1!5080 (_ BitVec 64)) (_2!5080 V!25221)) )
))
(declare-datatypes ((List!15974 0))(
  ( (Nil!15971) (Cons!15970 (h!17099 tuple2!10140) (t!22339 List!15974)) )
))
(declare-datatypes ((ListLongMap!8977 0))(
  ( (ListLongMap!8978 (toList!4504 List!15974)) )
))
(declare-fun lt!375699 () ListLongMap!8977)

(declare-fun zeroValueAfter!34 () V!25221)

(declare-fun b!828766 () Bool)

(declare-fun lt!375700 () ListLongMap!8977)

(declare-fun e!461919 () Bool)

(declare-fun +!1937 (ListLongMap!8977 tuple2!10140) ListLongMap!8977)

(assert (=> b!828766 (= e!461919 (= lt!375699 (+!1937 lt!375700 (tuple2!10141 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!828767 () Bool)

(declare-fun tp_is_empty!15165 () Bool)

(assert (=> b!828767 (= e!461917 tp_is_empty!15165)))

(declare-fun b!828768 () Bool)

(declare-fun res!564778 () Bool)

(declare-fun e!461922 () Bool)

(assert (=> b!828768 (=> (not res!564778) (not e!461922))))

(declare-datatypes ((array!46472 0))(
  ( (array!46473 (arr!22272 (Array (_ BitVec 32) (_ BitVec 64))) (size!22693 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46472)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!828768 (= res!564778 (and (= (size!22692 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22693 _keys!976) (size!22692 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!828769 () Bool)

(declare-fun lt!375705 () ListLongMap!8977)

(declare-fun e!461920 () Bool)

(declare-fun lt!375703 () tuple2!10140)

(assert (=> b!828769 (= e!461920 (= (+!1937 lt!375705 lt!375703) lt!375699))))

(declare-fun b!828770 () Bool)

(declare-fun e!461918 () Bool)

(declare-fun e!461916 () Bool)

(assert (=> b!828770 (= e!461918 (and e!461916 mapRes!24388))))

(declare-fun condMapEmpty!24388 () Bool)

(declare-fun mapDefault!24388 () ValueCell!7167)

(assert (=> b!828770 (= condMapEmpty!24388 (= (arr!22271 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7167)) mapDefault!24388)))))

(declare-fun res!564776 () Bool)

(assert (=> start!71398 (=> (not res!564776) (not e!461922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71398 (= res!564776 (validMask!0 mask!1312))))

(assert (=> start!71398 e!461922))

(assert (=> start!71398 tp_is_empty!15165))

(declare-fun array_inv!17721 (array!46472) Bool)

(assert (=> start!71398 (array_inv!17721 _keys!976)))

(assert (=> start!71398 true))

(declare-fun array_inv!17722 (array!46470) Bool)

(assert (=> start!71398 (and (array_inv!17722 _values!788) e!461918)))

(assert (=> start!71398 tp!47140))

(declare-fun b!828771 () Bool)

(declare-fun e!461915 () Bool)

(assert (=> b!828771 (= e!461922 (not e!461915))))

(declare-fun res!564781 () Bool)

(assert (=> b!828771 (=> res!564781 e!461915)))

(assert (=> b!828771 (= res!564781 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!375702 () ListLongMap!8977)

(assert (=> b!828771 (= lt!375702 lt!375700)))

(declare-datatypes ((Unit!28397 0))(
  ( (Unit!28398) )
))
(declare-fun lt!375701 () Unit!28397)

(declare-fun zeroValueBefore!34 () V!25221)

(declare-fun minValue!754 () V!25221)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!596 (array!46472 array!46470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25221 V!25221 V!25221 V!25221 (_ BitVec 32) Int) Unit!28397)

(assert (=> b!828771 (= lt!375701 (lemmaNoChangeToArrayThenSameMapNoExtras!596 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2506 (array!46472 array!46470 (_ BitVec 32) (_ BitVec 32) V!25221 V!25221 (_ BitVec 32) Int) ListLongMap!8977)

(assert (=> b!828771 (= lt!375700 (getCurrentListMapNoExtraKeys!2506 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828771 (= lt!375702 (getCurrentListMapNoExtraKeys!2506 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!828772 () Bool)

(assert (=> b!828772 (= e!461916 tp_is_empty!15165)))

(declare-fun b!828773 () Bool)

(declare-fun res!564775 () Bool)

(assert (=> b!828773 (=> (not res!564775) (not e!461922))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46472 (_ BitVec 32)) Bool)

(assert (=> b!828773 (= res!564775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24388 () Bool)

(assert (=> mapIsEmpty!24388 mapRes!24388))

(declare-fun b!828774 () Bool)

(declare-fun res!564777 () Bool)

(assert (=> b!828774 (=> (not res!564777) (not e!461922))))

(declare-datatypes ((List!15975 0))(
  ( (Nil!15972) (Cons!15971 (h!17100 (_ BitVec 64)) (t!22340 List!15975)) )
))
(declare-fun arrayNoDuplicates!0 (array!46472 (_ BitVec 32) List!15975) Bool)

(assert (=> b!828774 (= res!564777 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15972))))

(declare-fun b!828775 () Bool)

(assert (=> b!828775 (= e!461915 e!461920)))

(declare-fun res!564779 () Bool)

(assert (=> b!828775 (=> res!564779 e!461920)))

(declare-fun lt!375704 () tuple2!10140)

(assert (=> b!828775 (= res!564779 (not (= lt!375699 (+!1937 (+!1937 lt!375700 lt!375704) lt!375703))))))

(declare-fun lt!375697 () ListLongMap!8977)

(assert (=> b!828775 (= (+!1937 lt!375702 lt!375703) (+!1937 lt!375697 lt!375703))))

(declare-fun lt!375698 () Unit!28397)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!246 (ListLongMap!8977 (_ BitVec 64) V!25221 V!25221) Unit!28397)

(assert (=> b!828775 (= lt!375698 (addSameAsAddTwiceSameKeyDiffValues!246 lt!375702 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!828775 (= lt!375703 (tuple2!10141 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!828775 e!461919))

(declare-fun res!564780 () Bool)

(assert (=> b!828775 (=> (not res!564780) (not e!461919))))

(assert (=> b!828775 (= res!564780 (= lt!375705 lt!375697))))

(assert (=> b!828775 (= lt!375697 (+!1937 lt!375702 lt!375704))))

(assert (=> b!828775 (= lt!375704 (tuple2!10141 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2579 (array!46472 array!46470 (_ BitVec 32) (_ BitVec 32) V!25221 V!25221 (_ BitVec 32) Int) ListLongMap!8977)

(assert (=> b!828775 (= lt!375699 (getCurrentListMap!2579 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!828775 (= lt!375705 (getCurrentListMap!2579 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!71398 res!564776) b!828768))

(assert (= (and b!828768 res!564778) b!828773))

(assert (= (and b!828773 res!564775) b!828774))

(assert (= (and b!828774 res!564777) b!828771))

(assert (= (and b!828771 (not res!564781)) b!828775))

(assert (= (and b!828775 res!564780) b!828766))

(assert (= (and b!828775 (not res!564779)) b!828769))

(assert (= (and b!828770 condMapEmpty!24388) mapIsEmpty!24388))

(assert (= (and b!828770 (not condMapEmpty!24388)) mapNonEmpty!24388))

(get-info :version)

(assert (= (and mapNonEmpty!24388 ((_ is ValueCellFull!7167) mapValue!24388)) b!828767))

(assert (= (and b!828770 ((_ is ValueCellFull!7167) mapDefault!24388)) b!828772))

(assert (= start!71398 b!828770))

(declare-fun m!771823 () Bool)

(assert (=> b!828769 m!771823))

(declare-fun m!771825 () Bool)

(assert (=> b!828771 m!771825))

(declare-fun m!771827 () Bool)

(assert (=> b!828771 m!771827))

(declare-fun m!771829 () Bool)

(assert (=> b!828771 m!771829))

(declare-fun m!771831 () Bool)

(assert (=> b!828774 m!771831))

(declare-fun m!771833 () Bool)

(assert (=> b!828773 m!771833))

(declare-fun m!771835 () Bool)

(assert (=> start!71398 m!771835))

(declare-fun m!771837 () Bool)

(assert (=> start!71398 m!771837))

(declare-fun m!771839 () Bool)

(assert (=> start!71398 m!771839))

(declare-fun m!771841 () Bool)

(assert (=> b!828766 m!771841))

(declare-fun m!771843 () Bool)

(assert (=> mapNonEmpty!24388 m!771843))

(declare-fun m!771845 () Bool)

(assert (=> b!828775 m!771845))

(declare-fun m!771847 () Bool)

(assert (=> b!828775 m!771847))

(declare-fun m!771849 () Bool)

(assert (=> b!828775 m!771849))

(assert (=> b!828775 m!771845))

(declare-fun m!771851 () Bool)

(assert (=> b!828775 m!771851))

(declare-fun m!771853 () Bool)

(assert (=> b!828775 m!771853))

(declare-fun m!771855 () Bool)

(assert (=> b!828775 m!771855))

(declare-fun m!771857 () Bool)

(assert (=> b!828775 m!771857))

(declare-fun m!771859 () Bool)

(assert (=> b!828775 m!771859))

(check-sat (not b!828769) (not start!71398) (not b_next!13455) tp_is_empty!15165 (not mapNonEmpty!24388) (not b!828766) (not b!828773) (not b!828771) (not b!828775) (not b!828774) b_and!22455)
(check-sat b_and!22455 (not b_next!13455))
