; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94346 () Bool)

(assert start!94346)

(declare-fun b_free!21673 () Bool)

(declare-fun b_next!21673 () Bool)

(assert (=> start!94346 (= b_free!21673 (not b_next!21673))))

(declare-fun tp!76460 () Bool)

(declare-fun b_and!34463 () Bool)

(assert (=> start!94346 (= tp!76460 b_and!34463)))

(declare-fun b!1066463 () Bool)

(declare-fun e!608189 () Bool)

(declare-fun tp_is_empty!25483 () Bool)

(assert (=> b!1066463 (= e!608189 tp_is_empty!25483)))

(declare-fun b!1066464 () Bool)

(declare-fun e!608185 () Bool)

(assert (=> b!1066464 (= e!608185 tp_is_empty!25483)))

(declare-fun b!1066465 () Bool)

(declare-fun e!608190 () Bool)

(assert (=> b!1066465 (= e!608190 true)))

(declare-datatypes ((V!39113 0))(
  ( (V!39114 (val!12792 Int)) )
))
(declare-datatypes ((tuple2!16312 0))(
  ( (tuple2!16313 (_1!8166 (_ BitVec 64)) (_2!8166 V!39113)) )
))
(declare-datatypes ((List!22905 0))(
  ( (Nil!22902) (Cons!22901 (h!24110 tuple2!16312) (t!32233 List!22905)) )
))
(declare-datatypes ((ListLongMap!14293 0))(
  ( (ListLongMap!14294 (toList!7162 List!22905)) )
))
(declare-fun lt!470855 () ListLongMap!14293)

(declare-fun lt!470857 () ListLongMap!14293)

(declare-fun -!620 (ListLongMap!14293 (_ BitVec 64)) ListLongMap!14293)

(assert (=> b!1066465 (= lt!470855 (-!620 lt!470857 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470856 () ListLongMap!14293)

(declare-fun lt!470854 () ListLongMap!14293)

(assert (=> b!1066465 (= (-!620 lt!470856 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470854)))

(declare-datatypes ((Unit!34988 0))(
  ( (Unit!34989) )
))
(declare-fun lt!470859 () Unit!34988)

(declare-fun zeroValueBefore!47 () V!39113)

(declare-fun addThenRemoveForNewKeyIsSame!29 (ListLongMap!14293 (_ BitVec 64) V!39113) Unit!34988)

(assert (=> b!1066465 (= lt!470859 (addThenRemoveForNewKeyIsSame!29 lt!470854 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470860 () ListLongMap!14293)

(declare-fun lt!470858 () ListLongMap!14293)

(assert (=> b!1066465 (and (= lt!470857 lt!470856) (= lt!470860 lt!470858))))

(declare-fun +!3111 (ListLongMap!14293 tuple2!16312) ListLongMap!14293)

(assert (=> b!1066465 (= lt!470856 (+!3111 lt!470854 (tuple2!16313 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12038 0))(
  ( (ValueCellFull!12038 (v!15406 V!39113)) (EmptyCell!12038) )
))
(declare-datatypes ((array!67924 0))(
  ( (array!67925 (arr!32660 (Array (_ BitVec 32) ValueCell!12038)) (size!33197 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67924)

(declare-fun minValue!907 () V!39113)

(declare-datatypes ((array!67926 0))(
  ( (array!67927 (arr!32661 (Array (_ BitVec 32) (_ BitVec 64))) (size!33198 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67926)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39113)

(declare-fun getCurrentListMap!4074 (array!67926 array!67924 (_ BitVec 32) (_ BitVec 32) V!39113 V!39113 (_ BitVec 32) Int) ListLongMap!14293)

(assert (=> b!1066465 (= lt!470860 (getCurrentListMap!4074 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066465 (= lt!470857 (getCurrentListMap!4074 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066466 () Bool)

(declare-fun res!711881 () Bool)

(declare-fun e!608186 () Bool)

(assert (=> b!1066466 (=> (not res!711881) (not e!608186))))

(assert (=> b!1066466 (= res!711881 (and (= (size!33197 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33198 _keys!1163) (size!33197 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!711882 () Bool)

(assert (=> start!94346 (=> (not res!711882) (not e!608186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94346 (= res!711882 (validMask!0 mask!1515))))

(assert (=> start!94346 e!608186))

(assert (=> start!94346 true))

(assert (=> start!94346 tp_is_empty!25483))

(declare-fun e!608188 () Bool)

(declare-fun array_inv!25124 (array!67924) Bool)

(assert (=> start!94346 (and (array_inv!25124 _values!955) e!608188)))

(assert (=> start!94346 tp!76460))

(declare-fun array_inv!25125 (array!67926) Bool)

(assert (=> start!94346 (array_inv!25125 _keys!1163)))

(declare-fun b!1066467 () Bool)

(declare-fun res!711884 () Bool)

(assert (=> b!1066467 (=> (not res!711884) (not e!608186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67926 (_ BitVec 32)) Bool)

(assert (=> b!1066467 (= res!711884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066468 () Bool)

(assert (=> b!1066468 (= e!608186 (not e!608190))))

(declare-fun res!711885 () Bool)

(assert (=> b!1066468 (=> res!711885 e!608190)))

(assert (=> b!1066468 (= res!711885 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066468 (= lt!470854 lt!470858)))

(declare-fun lt!470853 () Unit!34988)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!748 (array!67926 array!67924 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39113 V!39113 V!39113 V!39113 (_ BitVec 32) Int) Unit!34988)

(assert (=> b!1066468 (= lt!470853 (lemmaNoChangeToArrayThenSameMapNoExtras!748 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3709 (array!67926 array!67924 (_ BitVec 32) (_ BitVec 32) V!39113 V!39113 (_ BitVec 32) Int) ListLongMap!14293)

(assert (=> b!1066468 (= lt!470858 (getCurrentListMapNoExtraKeys!3709 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066468 (= lt!470854 (getCurrentListMapNoExtraKeys!3709 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!39913 () Bool)

(declare-fun mapRes!39913 () Bool)

(assert (=> mapIsEmpty!39913 mapRes!39913))

(declare-fun mapNonEmpty!39913 () Bool)

(declare-fun tp!76461 () Bool)

(assert (=> mapNonEmpty!39913 (= mapRes!39913 (and tp!76461 e!608189))))

(declare-fun mapRest!39913 () (Array (_ BitVec 32) ValueCell!12038))

(declare-fun mapValue!39913 () ValueCell!12038)

(declare-fun mapKey!39913 () (_ BitVec 32))

(assert (=> mapNonEmpty!39913 (= (arr!32660 _values!955) (store mapRest!39913 mapKey!39913 mapValue!39913))))

(declare-fun b!1066469 () Bool)

(assert (=> b!1066469 (= e!608188 (and e!608185 mapRes!39913))))

(declare-fun condMapEmpty!39913 () Bool)

(declare-fun mapDefault!39913 () ValueCell!12038)

