; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94034 () Bool)

(assert start!94034)

(declare-fun b_free!21435 () Bool)

(declare-fun b_next!21435 () Bool)

(assert (=> start!94034 (= b_free!21435 (not b_next!21435))))

(declare-fun tp!75734 () Bool)

(declare-fun b_and!34185 () Bool)

(assert (=> start!94034 (= tp!75734 b_and!34185)))

(declare-fun b!1063056 () Bool)

(declare-fun e!605702 () Bool)

(declare-fun e!605699 () Bool)

(declare-fun mapRes!39544 () Bool)

(assert (=> b!1063056 (= e!605702 (and e!605699 mapRes!39544))))

(declare-fun condMapEmpty!39544 () Bool)

(declare-datatypes ((V!38795 0))(
  ( (V!38796 (val!12673 Int)) )
))
(declare-datatypes ((ValueCell!11919 0))(
  ( (ValueCellFull!11919 (v!15285 V!38795)) (EmptyCell!11919) )
))
(declare-datatypes ((array!67466 0))(
  ( (array!67467 (arr!32435 (Array (_ BitVec 32) ValueCell!11919)) (size!32972 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67466)

(declare-fun mapDefault!39544 () ValueCell!11919)

(assert (=> b!1063056 (= condMapEmpty!39544 (= (arr!32435 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11919)) mapDefault!39544)))))

(declare-fun mapNonEmpty!39544 () Bool)

(declare-fun tp!75735 () Bool)

(declare-fun e!605700 () Bool)

(assert (=> mapNonEmpty!39544 (= mapRes!39544 (and tp!75735 e!605700))))

(declare-fun mapRest!39544 () (Array (_ BitVec 32) ValueCell!11919))

(declare-fun mapKey!39544 () (_ BitVec 32))

(declare-fun mapValue!39544 () ValueCell!11919)

(assert (=> mapNonEmpty!39544 (= (arr!32435 _values!955) (store mapRest!39544 mapKey!39544 mapValue!39544))))

(declare-fun b!1063058 () Bool)

(declare-fun e!605701 () Bool)

(declare-fun e!605703 () Bool)

(assert (=> b!1063058 (= e!605701 (not e!605703))))

(declare-fun res!709891 () Bool)

(assert (=> b!1063058 (=> res!709891 e!605703)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063058 (= res!709891 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16130 0))(
  ( (tuple2!16131 (_1!8075 (_ BitVec 64)) (_2!8075 V!38795)) )
))
(declare-datatypes ((List!22737 0))(
  ( (Nil!22734) (Cons!22733 (h!23942 tuple2!16130) (t!32057 List!22737)) )
))
(declare-datatypes ((ListLongMap!14111 0))(
  ( (ListLongMap!14112 (toList!7071 List!22737)) )
))
(declare-fun lt!468486 () ListLongMap!14111)

(declare-fun lt!468487 () ListLongMap!14111)

(assert (=> b!1063058 (= lt!468486 lt!468487)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!38795)

(declare-datatypes ((Unit!34807 0))(
  ( (Unit!34808) )
))
(declare-fun lt!468484 () Unit!34807)

(declare-fun minValue!907 () V!38795)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38795)

(declare-datatypes ((array!67468 0))(
  ( (array!67469 (arr!32436 (Array (_ BitVec 32) (_ BitVec 64))) (size!32973 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67468)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!665 (array!67468 array!67466 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38795 V!38795 V!38795 V!38795 (_ BitVec 32) Int) Unit!34807)

(assert (=> b!1063058 (= lt!468484 (lemmaNoChangeToArrayThenSameMapNoExtras!665 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3626 (array!67468 array!67466 (_ BitVec 32) (_ BitVec 32) V!38795 V!38795 (_ BitVec 32) Int) ListLongMap!14111)

(assert (=> b!1063058 (= lt!468487 (getCurrentListMapNoExtraKeys!3626 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063058 (= lt!468486 (getCurrentListMapNoExtraKeys!3626 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39544 () Bool)

(assert (=> mapIsEmpty!39544 mapRes!39544))

(declare-fun b!1063059 () Bool)

(declare-fun tp_is_empty!25245 () Bool)

(assert (=> b!1063059 (= e!605700 tp_is_empty!25245)))

(declare-fun b!1063060 () Bool)

(declare-fun res!709892 () Bool)

(assert (=> b!1063060 (=> (not res!709892) (not e!605701))))

(assert (=> b!1063060 (= res!709892 (and (= (size!32972 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32973 _keys!1163) (size!32972 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063061 () Bool)

(declare-fun e!605704 () Bool)

(assert (=> b!1063061 (= e!605704 true)))

(declare-fun lt!468483 () ListLongMap!14111)

(declare-fun -!581 (ListLongMap!14111 (_ BitVec 64)) ListLongMap!14111)

(assert (=> b!1063061 (= (-!581 lt!468483 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468483)))

(declare-fun lt!468485 () Unit!34807)

(declare-fun removeNotPresentStillSame!27 (ListLongMap!14111 (_ BitVec 64)) Unit!34807)

(assert (=> b!1063061 (= lt!468485 (removeNotPresentStillSame!27 lt!468483 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063062 () Bool)

(declare-fun res!709888 () Bool)

(assert (=> b!1063062 (=> (not res!709888) (not e!605701))))

(declare-datatypes ((List!22738 0))(
  ( (Nil!22735) (Cons!22734 (h!23943 (_ BitVec 64)) (t!32058 List!22738)) )
))
(declare-fun arrayNoDuplicates!0 (array!67468 (_ BitVec 32) List!22738) Bool)

(assert (=> b!1063062 (= res!709888 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22735))))

(declare-fun b!1063057 () Bool)

(declare-fun res!709890 () Bool)

(assert (=> b!1063057 (=> (not res!709890) (not e!605701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67468 (_ BitVec 32)) Bool)

(assert (=> b!1063057 (= res!709890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!709887 () Bool)

(assert (=> start!94034 (=> (not res!709887) (not e!605701))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94034 (= res!709887 (validMask!0 mask!1515))))

(assert (=> start!94034 e!605701))

(assert (=> start!94034 true))

(assert (=> start!94034 tp_is_empty!25245))

(declare-fun array_inv!24964 (array!67466) Bool)

(assert (=> start!94034 (and (array_inv!24964 _values!955) e!605702)))

(assert (=> start!94034 tp!75734))

(declare-fun array_inv!24965 (array!67468) Bool)

(assert (=> start!94034 (array_inv!24965 _keys!1163)))

(declare-fun b!1063063 () Bool)

(assert (=> b!1063063 (= e!605703 e!605704)))

(declare-fun res!709889 () Bool)

(assert (=> b!1063063 (=> res!709889 e!605704)))

(declare-fun contains!6267 (ListLongMap!14111 (_ BitVec 64)) Bool)

(assert (=> b!1063063 (= res!709889 (contains!6267 lt!468483 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4016 (array!67468 array!67466 (_ BitVec 32) (_ BitVec 32) V!38795 V!38795 (_ BitVec 32) Int) ListLongMap!14111)

(assert (=> b!1063063 (= lt!468483 (getCurrentListMap!4016 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063064 () Bool)

(assert (=> b!1063064 (= e!605699 tp_is_empty!25245)))

(assert (= (and start!94034 res!709887) b!1063060))

(assert (= (and b!1063060 res!709892) b!1063057))

(assert (= (and b!1063057 res!709890) b!1063062))

(assert (= (and b!1063062 res!709888) b!1063058))

(assert (= (and b!1063058 (not res!709891)) b!1063063))

(assert (= (and b!1063063 (not res!709889)) b!1063061))

(assert (= (and b!1063056 condMapEmpty!39544) mapIsEmpty!39544))

(assert (= (and b!1063056 (not condMapEmpty!39544)) mapNonEmpty!39544))

(get-info :version)

(assert (= (and mapNonEmpty!39544 ((_ is ValueCellFull!11919) mapValue!39544)) b!1063059))

(assert (= (and b!1063056 ((_ is ValueCellFull!11919) mapDefault!39544)) b!1063064))

(assert (= start!94034 b!1063056))

(declare-fun m!981895 () Bool)

(assert (=> b!1063057 m!981895))

(declare-fun m!981897 () Bool)

(assert (=> b!1063062 m!981897))

(declare-fun m!981899 () Bool)

(assert (=> b!1063061 m!981899))

(declare-fun m!981901 () Bool)

(assert (=> b!1063061 m!981901))

(declare-fun m!981903 () Bool)

(assert (=> b!1063058 m!981903))

(declare-fun m!981905 () Bool)

(assert (=> b!1063058 m!981905))

(declare-fun m!981907 () Bool)

(assert (=> b!1063058 m!981907))

(declare-fun m!981909 () Bool)

(assert (=> mapNonEmpty!39544 m!981909))

(declare-fun m!981911 () Bool)

(assert (=> start!94034 m!981911))

(declare-fun m!981913 () Bool)

(assert (=> start!94034 m!981913))

(declare-fun m!981915 () Bool)

(assert (=> start!94034 m!981915))

(declare-fun m!981917 () Bool)

(assert (=> b!1063063 m!981917))

(declare-fun m!981919 () Bool)

(assert (=> b!1063063 m!981919))

(check-sat (not start!94034) (not mapNonEmpty!39544) (not b!1063062) (not b!1063058) b_and!34185 (not b!1063061) tp_is_empty!25245 (not b_next!21435) (not b!1063057) (not b!1063063))
(check-sat b_and!34185 (not b_next!21435))
