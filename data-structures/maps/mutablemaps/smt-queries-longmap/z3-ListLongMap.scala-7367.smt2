; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93958 () Bool)

(assert start!93958)

(declare-fun b_free!21381 () Bool)

(declare-fun b_next!21381 () Bool)

(assert (=> start!93958 (= b_free!21381 (not b_next!21381))))

(declare-fun tp!75570 () Bool)

(declare-fun b_and!34121 () Bool)

(assert (=> start!93958 (= tp!75570 b_and!34121)))

(declare-fun mapNonEmpty!39460 () Bool)

(declare-fun mapRes!39460 () Bool)

(declare-fun tp!75569 () Bool)

(declare-fun e!605037 () Bool)

(assert (=> mapNonEmpty!39460 (= mapRes!39460 (and tp!75569 e!605037))))

(declare-fun mapKey!39460 () (_ BitVec 32))

(declare-datatypes ((V!38723 0))(
  ( (V!38724 (val!12646 Int)) )
))
(declare-datatypes ((ValueCell!11892 0))(
  ( (ValueCellFull!11892 (v!15257 V!38723)) (EmptyCell!11892) )
))
(declare-datatypes ((array!67360 0))(
  ( (array!67361 (arr!32383 (Array (_ BitVec 32) ValueCell!11892)) (size!32920 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67360)

(declare-fun mapRest!39460 () (Array (_ BitVec 32) ValueCell!11892))

(declare-fun mapValue!39460 () ValueCell!11892)

(assert (=> mapNonEmpty!39460 (= (arr!32383 _values!955) (store mapRest!39460 mapKey!39460 mapValue!39460))))

(declare-fun b!1062171 () Bool)

(declare-fun tp_is_empty!25191 () Bool)

(assert (=> b!1062171 (= e!605037 tp_is_empty!25191)))

(declare-fun b!1062172 () Bool)

(declare-fun res!709342 () Bool)

(declare-fun e!605036 () Bool)

(assert (=> b!1062172 (=> (not res!709342) (not e!605036))))

(declare-datatypes ((array!67362 0))(
  ( (array!67363 (arr!32384 (Array (_ BitVec 32) (_ BitVec 64))) (size!32921 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67362)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67362 (_ BitVec 32)) Bool)

(assert (=> b!1062172 (= res!709342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39460 () Bool)

(assert (=> mapIsEmpty!39460 mapRes!39460))

(declare-fun b!1062173 () Bool)

(declare-fun e!605031 () Bool)

(assert (=> b!1062173 (= e!605036 (not e!605031))))

(declare-fun res!709345 () Bool)

(assert (=> b!1062173 (=> res!709345 e!605031)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062173 (= res!709345 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16084 0))(
  ( (tuple2!16085 (_1!8052 (_ BitVec 64)) (_2!8052 V!38723)) )
))
(declare-datatypes ((List!22696 0))(
  ( (Nil!22693) (Cons!22692 (h!23901 tuple2!16084) (t!32014 List!22696)) )
))
(declare-datatypes ((ListLongMap!14065 0))(
  ( (ListLongMap!14066 (toList!7048 List!22696)) )
))
(declare-fun lt!467955 () ListLongMap!14065)

(declare-fun lt!467958 () ListLongMap!14065)

(assert (=> b!1062173 (= lt!467955 lt!467958)))

(declare-fun zeroValueBefore!47 () V!38723)

(declare-datatypes ((Unit!34769 0))(
  ( (Unit!34770) )
))
(declare-fun lt!467954 () Unit!34769)

(declare-fun minValue!907 () V!38723)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38723)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!650 (array!67362 array!67360 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38723 V!38723 V!38723 V!38723 (_ BitVec 32) Int) Unit!34769)

(assert (=> b!1062173 (= lt!467954 (lemmaNoChangeToArrayThenSameMapNoExtras!650 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3611 (array!67362 array!67360 (_ BitVec 32) (_ BitVec 32) V!38723 V!38723 (_ BitVec 32) Int) ListLongMap!14065)

(assert (=> b!1062173 (= lt!467958 (getCurrentListMapNoExtraKeys!3611 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062173 (= lt!467955 (getCurrentListMapNoExtraKeys!3611 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062174 () Bool)

(declare-fun e!605035 () Bool)

(assert (=> b!1062174 (= e!605031 e!605035)))

(declare-fun res!709344 () Bool)

(assert (=> b!1062174 (=> res!709344 e!605035)))

(declare-fun lt!467956 () ListLongMap!14065)

(declare-fun contains!6244 (ListLongMap!14065 (_ BitVec 64)) Bool)

(assert (=> b!1062174 (= res!709344 (contains!6244 lt!467956 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!3994 (array!67362 array!67360 (_ BitVec 32) (_ BitVec 32) V!38723 V!38723 (_ BitVec 32) Int) ListLongMap!14065)

(assert (=> b!1062174 (= lt!467956 (getCurrentListMap!3994 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062175 () Bool)

(declare-fun res!709340 () Bool)

(assert (=> b!1062175 (=> (not res!709340) (not e!605036))))

(declare-datatypes ((List!22697 0))(
  ( (Nil!22694) (Cons!22693 (h!23902 (_ BitVec 64)) (t!32015 List!22697)) )
))
(declare-fun arrayNoDuplicates!0 (array!67362 (_ BitVec 32) List!22697) Bool)

(assert (=> b!1062175 (= res!709340 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22694))))

(declare-fun b!1062176 () Bool)

(declare-fun e!605033 () Bool)

(assert (=> b!1062176 (= e!605033 tp_is_empty!25191)))

(declare-fun b!1062170 () Bool)

(declare-fun e!605034 () Bool)

(assert (=> b!1062170 (= e!605034 (and e!605033 mapRes!39460))))

(declare-fun condMapEmpty!39460 () Bool)

(declare-fun mapDefault!39460 () ValueCell!11892)

(assert (=> b!1062170 (= condMapEmpty!39460 (= (arr!32383 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11892)) mapDefault!39460)))))

(declare-fun res!709343 () Bool)

(assert (=> start!93958 (=> (not res!709343) (not e!605036))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93958 (= res!709343 (validMask!0 mask!1515))))

(assert (=> start!93958 e!605036))

(assert (=> start!93958 true))

(assert (=> start!93958 tp_is_empty!25191))

(declare-fun array_inv!24924 (array!67360) Bool)

(assert (=> start!93958 (and (array_inv!24924 _values!955) e!605034)))

(assert (=> start!93958 tp!75570))

(declare-fun array_inv!24925 (array!67362) Bool)

(assert (=> start!93958 (array_inv!24925 _keys!1163)))

(declare-fun b!1062177 () Bool)

(declare-fun res!709341 () Bool)

(assert (=> b!1062177 (=> (not res!709341) (not e!605036))))

(assert (=> b!1062177 (= res!709341 (and (= (size!32920 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32921 _keys!1163) (size!32920 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062178 () Bool)

(assert (=> b!1062178 (= e!605035 true)))

(declare-fun -!563 (ListLongMap!14065 (_ BitVec 64)) ListLongMap!14065)

(assert (=> b!1062178 (= (-!563 lt!467956 #b0000000000000000000000000000000000000000000000000000000000000000) lt!467956)))

(declare-fun lt!467957 () Unit!34769)

(declare-fun removeNotPresentStillSame!9 (ListLongMap!14065 (_ BitVec 64)) Unit!34769)

(assert (=> b!1062178 (= lt!467957 (removeNotPresentStillSame!9 lt!467956 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!93958 res!709343) b!1062177))

(assert (= (and b!1062177 res!709341) b!1062172))

(assert (= (and b!1062172 res!709342) b!1062175))

(assert (= (and b!1062175 res!709340) b!1062173))

(assert (= (and b!1062173 (not res!709345)) b!1062174))

(assert (= (and b!1062174 (not res!709344)) b!1062178))

(assert (= (and b!1062170 condMapEmpty!39460) mapIsEmpty!39460))

(assert (= (and b!1062170 (not condMapEmpty!39460)) mapNonEmpty!39460))

(get-info :version)

(assert (= (and mapNonEmpty!39460 ((_ is ValueCellFull!11892) mapValue!39460)) b!1062171))

(assert (= (and b!1062170 ((_ is ValueCellFull!11892) mapDefault!39460)) b!1062176))

(assert (= start!93958 b!1062170))

(declare-fun m!981067 () Bool)

(assert (=> start!93958 m!981067))

(declare-fun m!981069 () Bool)

(assert (=> start!93958 m!981069))

(declare-fun m!981071 () Bool)

(assert (=> start!93958 m!981071))

(declare-fun m!981073 () Bool)

(assert (=> b!1062174 m!981073))

(declare-fun m!981075 () Bool)

(assert (=> b!1062174 m!981075))

(declare-fun m!981077 () Bool)

(assert (=> mapNonEmpty!39460 m!981077))

(declare-fun m!981079 () Bool)

(assert (=> b!1062173 m!981079))

(declare-fun m!981081 () Bool)

(assert (=> b!1062173 m!981081))

(declare-fun m!981083 () Bool)

(assert (=> b!1062173 m!981083))

(declare-fun m!981085 () Bool)

(assert (=> b!1062175 m!981085))

(declare-fun m!981087 () Bool)

(assert (=> b!1062178 m!981087))

(declare-fun m!981089 () Bool)

(assert (=> b!1062178 m!981089))

(declare-fun m!981091 () Bool)

(assert (=> b!1062172 m!981091))

(check-sat b_and!34121 (not b!1062174) (not b_next!21381) tp_is_empty!25191 (not b!1062175) (not b!1062172) (not start!93958) (not b!1062173) (not mapNonEmpty!39460) (not b!1062178))
(check-sat b_and!34121 (not b_next!21381))
