; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71168 () Bool)

(assert start!71168)

(declare-fun b_free!13311 () Bool)

(declare-fun b_next!13311 () Bool)

(assert (=> start!71168 (= b_free!13311 (not b_next!13311))))

(declare-fun tp!46692 () Bool)

(declare-fun b_and!22255 () Bool)

(assert (=> start!71168 (= tp!46692 b_and!22255)))

(declare-fun b!826175 () Bool)

(declare-fun e!460060 () Bool)

(declare-fun tp_is_empty!15021 () Bool)

(assert (=> b!826175 (= e!460060 tp_is_empty!15021)))

(declare-fun b!826176 () Bool)

(declare-fun e!460059 () Bool)

(assert (=> b!826176 (= e!460059 true)))

(declare-datatypes ((V!25029 0))(
  ( (V!25030 (val!7558 Int)) )
))
(declare-datatypes ((tuple2!10018 0))(
  ( (tuple2!10019 (_1!5019 (_ BitVec 64)) (_2!5019 V!25029)) )
))
(declare-datatypes ((List!15858 0))(
  ( (Nil!15855) (Cons!15854 (h!16983 tuple2!10018) (t!22213 List!15858)) )
))
(declare-datatypes ((ListLongMap!8855 0))(
  ( (ListLongMap!8856 (toList!4443 List!15858)) )
))
(declare-fun lt!373763 () ListLongMap!8855)

(declare-fun lt!373771 () tuple2!10018)

(declare-fun lt!373768 () ListLongMap!8855)

(declare-fun lt!373770 () tuple2!10018)

(declare-fun +!1904 (ListLongMap!8855 tuple2!10018) ListLongMap!8855)

(assert (=> b!826176 (= lt!373763 (+!1904 (+!1904 lt!373768 lt!373770) lt!373771))))

(declare-fun lt!373772 () ListLongMap!8855)

(declare-fun lt!373761 () ListLongMap!8855)

(declare-fun lt!373765 () ListLongMap!8855)

(assert (=> b!826176 (and (= lt!373772 lt!373761) (= lt!373765 lt!373761) (= lt!373765 lt!373772))))

(declare-fun lt!373762 () ListLongMap!8855)

(assert (=> b!826176 (= lt!373761 (+!1904 lt!373762 lt!373770))))

(declare-fun lt!373766 () ListLongMap!8855)

(assert (=> b!826176 (= lt!373772 (+!1904 lt!373766 lt!373770))))

(declare-fun zeroValueAfter!34 () V!25029)

(declare-datatypes ((Unit!28323 0))(
  ( (Unit!28324) )
))
(declare-fun lt!373767 () Unit!28323)

(declare-fun zeroValueBefore!34 () V!25029)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!228 (ListLongMap!8855 (_ BitVec 64) V!25029 V!25029) Unit!28323)

(assert (=> b!826176 (= lt!373767 (addSameAsAddTwiceSameKeyDiffValues!228 lt!373766 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(declare-fun e!460061 () Bool)

(assert (=> b!826176 e!460061))

(declare-fun res!563297 () Bool)

(assert (=> b!826176 (=> (not res!563297) (not e!460061))))

(declare-fun lt!373764 () ListLongMap!8855)

(assert (=> b!826176 (= res!563297 (= lt!373764 lt!373762))))

(declare-fun lt!373773 () tuple2!10018)

(assert (=> b!826176 (= lt!373762 (+!1904 lt!373766 lt!373773))))

(assert (=> b!826176 (= lt!373766 (+!1904 lt!373768 lt!373771))))

(assert (=> b!826176 (= lt!373770 (tuple2!10019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!460065 () Bool)

(assert (=> b!826176 e!460065))

(declare-fun res!563294 () Bool)

(assert (=> b!826176 (=> (not res!563294) (not e!460065))))

(assert (=> b!826176 (= res!563294 (= lt!373764 (+!1904 (+!1904 lt!373768 lt!373773) lt!373771)))))

(declare-fun minValue!754 () V!25029)

(assert (=> b!826176 (= lt!373771 (tuple2!10019 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!826176 (= lt!373773 (tuple2!10019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-datatypes ((array!46184 0))(
  ( (array!46185 (arr!22133 (Array (_ BitVec 32) (_ BitVec 64))) (size!22554 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46184)

(declare-datatypes ((ValueCell!7095 0))(
  ( (ValueCellFull!7095 (v!9988 V!25029)) (EmptyCell!7095) )
))
(declare-datatypes ((array!46186 0))(
  ( (array!46187 (arr!22134 (Array (_ BitVec 32) ValueCell!7095)) (size!22555 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46186)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2550 (array!46184 array!46186 (_ BitVec 32) (_ BitVec 32) V!25029 V!25029 (_ BitVec 32) Int) ListLongMap!8855)

(assert (=> b!826176 (= lt!373765 (getCurrentListMap!2550 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!826176 (= lt!373764 (getCurrentListMap!2550 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24157 () Bool)

(declare-fun mapRes!24157 () Bool)

(declare-fun tp!46693 () Bool)

(assert (=> mapNonEmpty!24157 (= mapRes!24157 (and tp!46693 e!460060))))

(declare-fun mapValue!24157 () ValueCell!7095)

(declare-fun mapRest!24157 () (Array (_ BitVec 32) ValueCell!7095))

(declare-fun mapKey!24157 () (_ BitVec 32))

(assert (=> mapNonEmpty!24157 (= (arr!22134 _values!788) (store mapRest!24157 mapKey!24157 mapValue!24157))))

(declare-fun b!826177 () Bool)

(declare-fun res!563299 () Bool)

(declare-fun e!460063 () Bool)

(assert (=> b!826177 (=> (not res!563299) (not e!460063))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46184 (_ BitVec 32)) Bool)

(assert (=> b!826177 (= res!563299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun lt!373760 () ListLongMap!8855)

(declare-fun b!826178 () Bool)

(assert (=> b!826178 (= e!460061 (= lt!373765 (+!1904 (+!1904 lt!373760 lt!373771) lt!373770)))))

(declare-fun mapIsEmpty!24157 () Bool)

(assert (=> mapIsEmpty!24157 mapRes!24157))

(declare-fun b!826179 () Bool)

(declare-fun res!563295 () Bool)

(assert (=> b!826179 (=> (not res!563295) (not e!460063))))

(assert (=> b!826179 (= res!563295 (and (= (size!22555 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22554 _keys!976) (size!22555 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!826180 () Bool)

(assert (=> b!826180 (= e!460063 (not e!460059))))

(declare-fun res!563296 () Bool)

(assert (=> b!826180 (=> res!563296 e!460059)))

(assert (=> b!826180 (= res!563296 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!826180 (= lt!373768 lt!373760)))

(declare-fun lt!373769 () Unit!28323)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!571 (array!46184 array!46186 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25029 V!25029 V!25029 V!25029 (_ BitVec 32) Int) Unit!28323)

(assert (=> b!826180 (= lt!373769 (lemmaNoChangeToArrayThenSameMapNoExtras!571 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2455 (array!46184 array!46186 (_ BitVec 32) (_ BitVec 32) V!25029 V!25029 (_ BitVec 32) Int) ListLongMap!8855)

(assert (=> b!826180 (= lt!373760 (getCurrentListMapNoExtraKeys!2455 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!826180 (= lt!373768 (getCurrentListMapNoExtraKeys!2455 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!826181 () Bool)

(declare-fun e!460058 () Bool)

(assert (=> b!826181 (= e!460058 tp_is_empty!15021)))

(declare-fun b!826182 () Bool)

(assert (=> b!826182 (= e!460065 (= lt!373765 (+!1904 (+!1904 lt!373760 (tuple2!10019 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!373771)))))

(declare-fun b!826183 () Bool)

(declare-fun e!460062 () Bool)

(assert (=> b!826183 (= e!460062 (and e!460058 mapRes!24157))))

(declare-fun condMapEmpty!24157 () Bool)

(declare-fun mapDefault!24157 () ValueCell!7095)

(assert (=> b!826183 (= condMapEmpty!24157 (= (arr!22134 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7095)) mapDefault!24157)))))

(declare-fun res!563300 () Bool)

(assert (=> start!71168 (=> (not res!563300) (not e!460063))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71168 (= res!563300 (validMask!0 mask!1312))))

(assert (=> start!71168 e!460063))

(assert (=> start!71168 tp_is_empty!15021))

(declare-fun array_inv!17629 (array!46184) Bool)

(assert (=> start!71168 (array_inv!17629 _keys!976)))

(assert (=> start!71168 true))

(declare-fun array_inv!17630 (array!46186) Bool)

(assert (=> start!71168 (and (array_inv!17630 _values!788) e!460062)))

(assert (=> start!71168 tp!46692))

(declare-fun b!826184 () Bool)

(declare-fun res!563298 () Bool)

(assert (=> b!826184 (=> (not res!563298) (not e!460063))))

(declare-datatypes ((List!15859 0))(
  ( (Nil!15856) (Cons!15855 (h!16984 (_ BitVec 64)) (t!22214 List!15859)) )
))
(declare-fun arrayNoDuplicates!0 (array!46184 (_ BitVec 32) List!15859) Bool)

(assert (=> b!826184 (= res!563298 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15856))))

(assert (= (and start!71168 res!563300) b!826179))

(assert (= (and b!826179 res!563295) b!826177))

(assert (= (and b!826177 res!563299) b!826184))

(assert (= (and b!826184 res!563298) b!826180))

(assert (= (and b!826180 (not res!563296)) b!826176))

(assert (= (and b!826176 res!563294) b!826182))

(assert (= (and b!826176 res!563297) b!826178))

(assert (= (and b!826183 condMapEmpty!24157) mapIsEmpty!24157))

(assert (= (and b!826183 (not condMapEmpty!24157)) mapNonEmpty!24157))

(get-info :version)

(assert (= (and mapNonEmpty!24157 ((_ is ValueCellFull!7095) mapValue!24157)) b!826175))

(assert (= (and b!826183 ((_ is ValueCellFull!7095) mapDefault!24157)) b!826181))

(assert (= start!71168 b!826183))

(declare-fun m!768945 () Bool)

(assert (=> b!826182 m!768945))

(assert (=> b!826182 m!768945))

(declare-fun m!768947 () Bool)

(assert (=> b!826182 m!768947))

(declare-fun m!768949 () Bool)

(assert (=> mapNonEmpty!24157 m!768949))

(declare-fun m!768951 () Bool)

(assert (=> b!826178 m!768951))

(assert (=> b!826178 m!768951))

(declare-fun m!768953 () Bool)

(assert (=> b!826178 m!768953))

(declare-fun m!768955 () Bool)

(assert (=> b!826184 m!768955))

(declare-fun m!768957 () Bool)

(assert (=> b!826176 m!768957))

(declare-fun m!768959 () Bool)

(assert (=> b!826176 m!768959))

(declare-fun m!768961 () Bool)

(assert (=> b!826176 m!768961))

(declare-fun m!768963 () Bool)

(assert (=> b!826176 m!768963))

(declare-fun m!768965 () Bool)

(assert (=> b!826176 m!768965))

(declare-fun m!768967 () Bool)

(assert (=> b!826176 m!768967))

(declare-fun m!768969 () Bool)

(assert (=> b!826176 m!768969))

(declare-fun m!768971 () Bool)

(assert (=> b!826176 m!768971))

(declare-fun m!768973 () Bool)

(assert (=> b!826176 m!768973))

(declare-fun m!768975 () Bool)

(assert (=> b!826176 m!768975))

(assert (=> b!826176 m!768967))

(declare-fun m!768977 () Bool)

(assert (=> b!826176 m!768977))

(assert (=> b!826176 m!768957))

(declare-fun m!768979 () Bool)

(assert (=> start!71168 m!768979))

(declare-fun m!768981 () Bool)

(assert (=> start!71168 m!768981))

(declare-fun m!768983 () Bool)

(assert (=> start!71168 m!768983))

(declare-fun m!768985 () Bool)

(assert (=> b!826180 m!768985))

(declare-fun m!768987 () Bool)

(assert (=> b!826180 m!768987))

(declare-fun m!768989 () Bool)

(assert (=> b!826180 m!768989))

(declare-fun m!768991 () Bool)

(assert (=> b!826177 m!768991))

(check-sat (not mapNonEmpty!24157) (not b!826182) (not b_next!13311) b_and!22255 (not b!826184) (not b!826180) (not start!71168) (not b!826176) (not b!826177) tp_is_empty!15021 (not b!826178))
(check-sat b_and!22255 (not b_next!13311))
