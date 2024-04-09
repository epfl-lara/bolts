; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94848 () Bool)

(assert start!94848)

(declare-fun b_free!22041 () Bool)

(declare-fun b_next!22041 () Bool)

(assert (=> start!94848 (= b_free!22041 (not b_next!22041))))

(declare-fun tp!77585 () Bool)

(declare-fun b_and!34901 () Bool)

(assert (=> start!94848 (= tp!77585 b_and!34901)))

(declare-fun b!1072000 () Bool)

(declare-fun res!715169 () Bool)

(declare-fun e!612258 () Bool)

(assert (=> b!1072000 (=> (not res!715169) (not e!612258))))

(declare-datatypes ((array!68632 0))(
  ( (array!68633 (arr!33007 (Array (_ BitVec 32) (_ BitVec 64))) (size!33544 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68632)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68632 (_ BitVec 32)) Bool)

(assert (=> b!1072000 (= res!715169 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40486 () Bool)

(declare-fun mapRes!40486 () Bool)

(declare-fun tp!77586 () Bool)

(declare-fun e!612260 () Bool)

(assert (=> mapNonEmpty!40486 (= mapRes!40486 (and tp!77586 e!612260))))

(declare-fun mapKey!40486 () (_ BitVec 32))

(declare-datatypes ((V!39603 0))(
  ( (V!39604 (val!12976 Int)) )
))
(declare-datatypes ((ValueCell!12222 0))(
  ( (ValueCellFull!12222 (v!15594 V!39603)) (EmptyCell!12222) )
))
(declare-fun mapValue!40486 () ValueCell!12222)

(declare-fun mapRest!40486 () (Array (_ BitVec 32) ValueCell!12222))

(declare-datatypes ((array!68634 0))(
  ( (array!68635 (arr!33008 (Array (_ BitVec 32) ValueCell!12222)) (size!33545 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68634)

(assert (=> mapNonEmpty!40486 (= (arr!33008 _values!955) (store mapRest!40486 mapKey!40486 mapValue!40486))))

(declare-fun mapIsEmpty!40486 () Bool)

(assert (=> mapIsEmpty!40486 mapRes!40486))

(declare-fun b!1072001 () Bool)

(declare-fun res!715172 () Bool)

(assert (=> b!1072001 (=> (not res!715172) (not e!612258))))

(declare-datatypes ((List!23163 0))(
  ( (Nil!23160) (Cons!23159 (h!24368 (_ BitVec 64)) (t!32505 List!23163)) )
))
(declare-fun arrayNoDuplicates!0 (array!68632 (_ BitVec 32) List!23163) Bool)

(assert (=> b!1072001 (= res!715172 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23160))))

(declare-datatypes ((tuple2!16582 0))(
  ( (tuple2!16583 (_1!8301 (_ BitVec 64)) (_2!8301 V!39603)) )
))
(declare-datatypes ((List!23164 0))(
  ( (Nil!23161) (Cons!23160 (h!24369 tuple2!16582) (t!32506 List!23164)) )
))
(declare-datatypes ((ListLongMap!14563 0))(
  ( (ListLongMap!14564 (toList!7297 List!23164)) )
))
(declare-fun lt!474822 () ListLongMap!14563)

(declare-fun e!612262 () Bool)

(declare-fun b!1072002 () Bool)

(declare-fun lt!474825 () ListLongMap!14563)

(declare-fun lt!474821 () tuple2!16582)

(declare-fun +!3152 (ListLongMap!14563 tuple2!16582) ListLongMap!14563)

(assert (=> b!1072002 (= e!612262 (= lt!474825 (+!3152 lt!474822 lt!474821)))))

(declare-fun b!1072004 () Bool)

(declare-fun e!612259 () Bool)

(declare-fun e!612261 () Bool)

(assert (=> b!1072004 (= e!612259 (and e!612261 mapRes!40486))))

(declare-fun condMapEmpty!40486 () Bool)

(declare-fun mapDefault!40486 () ValueCell!12222)

(assert (=> b!1072004 (= condMapEmpty!40486 (= (arr!33008 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12222)) mapDefault!40486)))))

(declare-fun b!1072005 () Bool)

(declare-fun res!715170 () Bool)

(assert (=> b!1072005 (=> (not res!715170) (not e!612258))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072005 (= res!715170 (and (= (size!33545 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33544 _keys!1163) (size!33545 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072006 () Bool)

(declare-fun e!612256 () Bool)

(assert (=> b!1072006 (= e!612256 true)))

(declare-fun lt!474820 () ListLongMap!14563)

(declare-fun lt!474826 () ListLongMap!14563)

(declare-fun -!688 (ListLongMap!14563 (_ BitVec 64)) ListLongMap!14563)

(assert (=> b!1072006 (= lt!474820 (-!688 lt!474826 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474819 () ListLongMap!14563)

(declare-fun lt!474827 () ListLongMap!14563)

(assert (=> b!1072006 (= lt!474819 lt!474827)))

(declare-fun zeroValueBefore!47 () V!39603)

(declare-datatypes ((Unit!35257 0))(
  ( (Unit!35258) )
))
(declare-fun lt!474823 () Unit!35257)

(declare-fun lt!474818 () ListLongMap!14563)

(declare-fun minValue!907 () V!39603)

(declare-fun addCommutativeForDiffKeys!732 (ListLongMap!14563 (_ BitVec 64) V!39603 (_ BitVec 64) V!39603) Unit!35257)

(assert (=> b!1072006 (= lt!474823 (addCommutativeForDiffKeys!732 lt!474818 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474817 () ListLongMap!14563)

(assert (=> b!1072006 (= (-!688 lt!474827 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474817)))

(declare-fun lt!474828 () tuple2!16582)

(assert (=> b!1072006 (= lt!474827 (+!3152 lt!474817 lt!474828))))

(declare-fun lt!474829 () Unit!35257)

(declare-fun addThenRemoveForNewKeyIsSame!62 (ListLongMap!14563 (_ BitVec 64) V!39603) Unit!35257)

(assert (=> b!1072006 (= lt!474829 (addThenRemoveForNewKeyIsSame!62 lt!474817 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1072006 (= lt!474817 (+!3152 lt!474818 lt!474821))))

(assert (=> b!1072006 e!612262))

(declare-fun res!715171 () Bool)

(assert (=> b!1072006 (=> (not res!715171) (not e!612262))))

(assert (=> b!1072006 (= res!715171 (= lt!474826 lt!474819))))

(assert (=> b!1072006 (= lt!474819 (+!3152 (+!3152 lt!474818 lt!474828) lt!474821))))

(assert (=> b!1072006 (= lt!474821 (tuple2!16583 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072006 (= lt!474828 (tuple2!16583 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39603)

(declare-fun getCurrentListMap!4160 (array!68632 array!68634 (_ BitVec 32) (_ BitVec 32) V!39603 V!39603 (_ BitVec 32) Int) ListLongMap!14563)

(assert (=> b!1072006 (= lt!474825 (getCurrentListMap!4160 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072006 (= lt!474826 (getCurrentListMap!4160 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072007 () Bool)

(assert (=> b!1072007 (= e!612258 (not e!612256))))

(declare-fun res!715168 () Bool)

(assert (=> b!1072007 (=> res!715168 e!612256)))

(assert (=> b!1072007 (= res!715168 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1072007 (= lt!474818 lt!474822)))

(declare-fun lt!474824 () Unit!35257)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!868 (array!68632 array!68634 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39603 V!39603 V!39603 V!39603 (_ BitVec 32) Int) Unit!35257)

(assert (=> b!1072007 (= lt!474824 (lemmaNoChangeToArrayThenSameMapNoExtras!868 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3829 (array!68632 array!68634 (_ BitVec 32) (_ BitVec 32) V!39603 V!39603 (_ BitVec 32) Int) ListLongMap!14563)

(assert (=> b!1072007 (= lt!474822 (getCurrentListMapNoExtraKeys!3829 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072007 (= lt!474818 (getCurrentListMapNoExtraKeys!3829 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072008 () Bool)

(declare-fun tp_is_empty!25851 () Bool)

(assert (=> b!1072008 (= e!612261 tp_is_empty!25851)))

(declare-fun b!1072003 () Bool)

(assert (=> b!1072003 (= e!612260 tp_is_empty!25851)))

(declare-fun res!715173 () Bool)

(assert (=> start!94848 (=> (not res!715173) (not e!612258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94848 (= res!715173 (validMask!0 mask!1515))))

(assert (=> start!94848 e!612258))

(assert (=> start!94848 true))

(assert (=> start!94848 tp_is_empty!25851))

(declare-fun array_inv!25374 (array!68634) Bool)

(assert (=> start!94848 (and (array_inv!25374 _values!955) e!612259)))

(assert (=> start!94848 tp!77585))

(declare-fun array_inv!25375 (array!68632) Bool)

(assert (=> start!94848 (array_inv!25375 _keys!1163)))

(assert (= (and start!94848 res!715173) b!1072005))

(assert (= (and b!1072005 res!715170) b!1072000))

(assert (= (and b!1072000 res!715169) b!1072001))

(assert (= (and b!1072001 res!715172) b!1072007))

(assert (= (and b!1072007 (not res!715168)) b!1072006))

(assert (= (and b!1072006 res!715171) b!1072002))

(assert (= (and b!1072004 condMapEmpty!40486) mapIsEmpty!40486))

(assert (= (and b!1072004 (not condMapEmpty!40486)) mapNonEmpty!40486))

(get-info :version)

(assert (= (and mapNonEmpty!40486 ((_ is ValueCellFull!12222) mapValue!40486)) b!1072003))

(assert (= (and b!1072004 ((_ is ValueCellFull!12222) mapDefault!40486)) b!1072008))

(assert (= start!94848 b!1072004))

(declare-fun m!990899 () Bool)

(assert (=> start!94848 m!990899))

(declare-fun m!990901 () Bool)

(assert (=> start!94848 m!990901))

(declare-fun m!990903 () Bool)

(assert (=> start!94848 m!990903))

(declare-fun m!990905 () Bool)

(assert (=> mapNonEmpty!40486 m!990905))

(declare-fun m!990907 () Bool)

(assert (=> b!1072000 m!990907))

(declare-fun m!990909 () Bool)

(assert (=> b!1072001 m!990909))

(declare-fun m!990911 () Bool)

(assert (=> b!1072002 m!990911))

(declare-fun m!990913 () Bool)

(assert (=> b!1072007 m!990913))

(declare-fun m!990915 () Bool)

(assert (=> b!1072007 m!990915))

(declare-fun m!990917 () Bool)

(assert (=> b!1072007 m!990917))

(declare-fun m!990919 () Bool)

(assert (=> b!1072006 m!990919))

(declare-fun m!990921 () Bool)

(assert (=> b!1072006 m!990921))

(declare-fun m!990923 () Bool)

(assert (=> b!1072006 m!990923))

(declare-fun m!990925 () Bool)

(assert (=> b!1072006 m!990925))

(declare-fun m!990927 () Bool)

(assert (=> b!1072006 m!990927))

(declare-fun m!990929 () Bool)

(assert (=> b!1072006 m!990929))

(assert (=> b!1072006 m!990921))

(declare-fun m!990931 () Bool)

(assert (=> b!1072006 m!990931))

(declare-fun m!990933 () Bool)

(assert (=> b!1072006 m!990933))

(declare-fun m!990935 () Bool)

(assert (=> b!1072006 m!990935))

(declare-fun m!990937 () Bool)

(assert (=> b!1072006 m!990937))

(check-sat (not b_next!22041) b_and!34901 (not b!1072006) (not b!1072002) (not start!94848) (not b!1072001) tp_is_empty!25851 (not b!1072000) (not b!1072007) (not mapNonEmpty!40486))
(check-sat b_and!34901 (not b_next!22041))
