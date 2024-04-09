; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94040 () Bool)

(assert start!94040)

(declare-fun b_free!21441 () Bool)

(declare-fun b_next!21441 () Bool)

(assert (=> start!94040 (= b_free!21441 (not b_next!21441))))

(declare-fun tp!75752 () Bool)

(declare-fun b_and!34191 () Bool)

(assert (=> start!94040 (= tp!75752 b_and!34191)))

(declare-fun b!1063138 () Bool)

(declare-fun e!605764 () Bool)

(declare-fun e!605762 () Bool)

(declare-fun mapRes!39553 () Bool)

(assert (=> b!1063138 (= e!605764 (and e!605762 mapRes!39553))))

(declare-fun condMapEmpty!39553 () Bool)

(declare-datatypes ((V!38803 0))(
  ( (V!38804 (val!12676 Int)) )
))
(declare-datatypes ((ValueCell!11922 0))(
  ( (ValueCellFull!11922 (v!15288 V!38803)) (EmptyCell!11922) )
))
(declare-datatypes ((array!67478 0))(
  ( (array!67479 (arr!32441 (Array (_ BitVec 32) ValueCell!11922)) (size!32978 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67478)

(declare-fun mapDefault!39553 () ValueCell!11922)

(assert (=> b!1063138 (= condMapEmpty!39553 (= (arr!32441 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11922)) mapDefault!39553)))))

(declare-fun b!1063139 () Bool)

(declare-fun res!709944 () Bool)

(declare-fun e!605767 () Bool)

(assert (=> b!1063139 (=> (not res!709944) (not e!605767))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67480 0))(
  ( (array!67481 (arr!32442 (Array (_ BitVec 32) (_ BitVec 64))) (size!32979 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67480)

(assert (=> b!1063139 (= res!709944 (and (= (size!32978 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32979 _keys!1163) (size!32978 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063140 () Bool)

(declare-fun e!605761 () Bool)

(assert (=> b!1063140 (= e!605761 true)))

(declare-datatypes ((tuple2!16136 0))(
  ( (tuple2!16137 (_1!8078 (_ BitVec 64)) (_2!8078 V!38803)) )
))
(declare-datatypes ((List!22742 0))(
  ( (Nil!22739) (Cons!22738 (h!23947 tuple2!16136) (t!32062 List!22742)) )
))
(declare-datatypes ((ListLongMap!14117 0))(
  ( (ListLongMap!14118 (toList!7074 List!22742)) )
))
(declare-fun lt!468532 () ListLongMap!14117)

(declare-fun -!583 (ListLongMap!14117 (_ BitVec 64)) ListLongMap!14117)

(assert (=> b!1063140 (= (-!583 lt!468532 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468532)))

(declare-datatypes ((Unit!34813 0))(
  ( (Unit!34814) )
))
(declare-fun lt!468528 () Unit!34813)

(declare-fun removeNotPresentStillSame!29 (ListLongMap!14117 (_ BitVec 64)) Unit!34813)

(assert (=> b!1063140 (= lt!468528 (removeNotPresentStillSame!29 lt!468532 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063141 () Bool)

(declare-fun e!605765 () Bool)

(declare-fun tp_is_empty!25251 () Bool)

(assert (=> b!1063141 (= e!605765 tp_is_empty!25251)))

(declare-fun mapNonEmpty!39553 () Bool)

(declare-fun tp!75753 () Bool)

(assert (=> mapNonEmpty!39553 (= mapRes!39553 (and tp!75753 e!605765))))

(declare-fun mapRest!39553 () (Array (_ BitVec 32) ValueCell!11922))

(declare-fun mapKey!39553 () (_ BitVec 32))

(declare-fun mapValue!39553 () ValueCell!11922)

(assert (=> mapNonEmpty!39553 (= (arr!32441 _values!955) (store mapRest!39553 mapKey!39553 mapValue!39553))))

(declare-fun mapIsEmpty!39553 () Bool)

(assert (=> mapIsEmpty!39553 mapRes!39553))

(declare-fun res!709945 () Bool)

(assert (=> start!94040 (=> (not res!709945) (not e!605767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94040 (= res!709945 (validMask!0 mask!1515))))

(assert (=> start!94040 e!605767))

(assert (=> start!94040 true))

(assert (=> start!94040 tp_is_empty!25251))

(declare-fun array_inv!24968 (array!67478) Bool)

(assert (=> start!94040 (and (array_inv!24968 _values!955) e!605764)))

(assert (=> start!94040 tp!75752))

(declare-fun array_inv!24969 (array!67480) Bool)

(assert (=> start!94040 (array_inv!24969 _keys!1163)))

(declare-fun b!1063137 () Bool)

(declare-fun res!709941 () Bool)

(assert (=> b!1063137 (=> (not res!709941) (not e!605767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67480 (_ BitVec 32)) Bool)

(assert (=> b!1063137 (= res!709941 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1063142 () Bool)

(declare-fun res!709942 () Bool)

(assert (=> b!1063142 (=> (not res!709942) (not e!605767))))

(declare-datatypes ((List!22743 0))(
  ( (Nil!22740) (Cons!22739 (h!23948 (_ BitVec 64)) (t!32063 List!22743)) )
))
(declare-fun arrayNoDuplicates!0 (array!67480 (_ BitVec 32) List!22743) Bool)

(assert (=> b!1063142 (= res!709942 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22740))))

(declare-fun b!1063143 () Bool)

(assert (=> b!1063143 (= e!605762 tp_is_empty!25251)))

(declare-fun b!1063144 () Bool)

(declare-fun e!605763 () Bool)

(assert (=> b!1063144 (= e!605763 e!605761)))

(declare-fun res!709946 () Bool)

(assert (=> b!1063144 (=> res!709946 e!605761)))

(declare-fun contains!6270 (ListLongMap!14117 (_ BitVec 64)) Bool)

(assert (=> b!1063144 (= res!709946 (contains!6270 lt!468532 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38803)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38803)

(declare-fun getCurrentListMap!4019 (array!67480 array!67478 (_ BitVec 32) (_ BitVec 32) V!38803 V!38803 (_ BitVec 32) Int) ListLongMap!14117)

(assert (=> b!1063144 (= lt!468532 (getCurrentListMap!4019 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063145 () Bool)

(assert (=> b!1063145 (= e!605767 (not e!605763))))

(declare-fun res!709943 () Bool)

(assert (=> b!1063145 (=> res!709943 e!605763)))

(assert (=> b!1063145 (= res!709943 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468531 () ListLongMap!14117)

(declare-fun lt!468530 () ListLongMap!14117)

(assert (=> b!1063145 (= lt!468531 lt!468530)))

(declare-fun lt!468529 () Unit!34813)

(declare-fun zeroValueAfter!47 () V!38803)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!668 (array!67480 array!67478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38803 V!38803 V!38803 V!38803 (_ BitVec 32) Int) Unit!34813)

(assert (=> b!1063145 (= lt!468529 (lemmaNoChangeToArrayThenSameMapNoExtras!668 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3629 (array!67480 array!67478 (_ BitVec 32) (_ BitVec 32) V!38803 V!38803 (_ BitVec 32) Int) ListLongMap!14117)

(assert (=> b!1063145 (= lt!468530 (getCurrentListMapNoExtraKeys!3629 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063145 (= lt!468531 (getCurrentListMapNoExtraKeys!3629 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (= (and start!94040 res!709945) b!1063139))

(assert (= (and b!1063139 res!709944) b!1063137))

(assert (= (and b!1063137 res!709941) b!1063142))

(assert (= (and b!1063142 res!709942) b!1063145))

(assert (= (and b!1063145 (not res!709943)) b!1063144))

(assert (= (and b!1063144 (not res!709946)) b!1063140))

(assert (= (and b!1063138 condMapEmpty!39553) mapIsEmpty!39553))

(assert (= (and b!1063138 (not condMapEmpty!39553)) mapNonEmpty!39553))

(get-info :version)

(assert (= (and mapNonEmpty!39553 ((_ is ValueCellFull!11922) mapValue!39553)) b!1063141))

(assert (= (and b!1063138 ((_ is ValueCellFull!11922) mapDefault!39553)) b!1063143))

(assert (= start!94040 b!1063138))

(declare-fun m!981973 () Bool)

(assert (=> b!1063144 m!981973))

(declare-fun m!981975 () Bool)

(assert (=> b!1063144 m!981975))

(declare-fun m!981977 () Bool)

(assert (=> start!94040 m!981977))

(declare-fun m!981979 () Bool)

(assert (=> start!94040 m!981979))

(declare-fun m!981981 () Bool)

(assert (=> start!94040 m!981981))

(declare-fun m!981983 () Bool)

(assert (=> b!1063142 m!981983))

(declare-fun m!981985 () Bool)

(assert (=> b!1063137 m!981985))

(declare-fun m!981987 () Bool)

(assert (=> b!1063145 m!981987))

(declare-fun m!981989 () Bool)

(assert (=> b!1063145 m!981989))

(declare-fun m!981991 () Bool)

(assert (=> b!1063145 m!981991))

(declare-fun m!981993 () Bool)

(assert (=> mapNonEmpty!39553 m!981993))

(declare-fun m!981995 () Bool)

(assert (=> b!1063140 m!981995))

(declare-fun m!981997 () Bool)

(assert (=> b!1063140 m!981997))

(check-sat (not b!1063140) (not b!1063142) (not mapNonEmpty!39553) tp_is_empty!25251 (not start!94040) (not b_next!21441) (not b!1063145) b_and!34191 (not b!1063137) (not b!1063144))
(check-sat b_and!34191 (not b_next!21441))
