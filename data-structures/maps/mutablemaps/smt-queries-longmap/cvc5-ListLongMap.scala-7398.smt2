; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94200 () Bool)

(assert start!94200)

(declare-fun b_free!21565 () Bool)

(declare-fun b_next!21565 () Bool)

(assert (=> start!94200 (= b_free!21565 (not b_next!21565))))

(declare-fun tp!76130 () Bool)

(declare-fun b_and!34333 () Bool)

(assert (=> start!94200 (= tp!76130 b_and!34333)))

(declare-fun res!710924 () Bool)

(declare-fun e!606996 () Bool)

(assert (=> start!94200 (=> (not res!710924) (not e!606996))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94200 (= res!710924 (validMask!0 mask!1515))))

(assert (=> start!94200 e!606996))

(assert (=> start!94200 true))

(declare-fun tp_is_empty!25375 () Bool)

(assert (=> start!94200 tp_is_empty!25375))

(declare-datatypes ((V!38969 0))(
  ( (V!38970 (val!12738 Int)) )
))
(declare-datatypes ((ValueCell!11984 0))(
  ( (ValueCellFull!11984 (v!15351 V!38969)) (EmptyCell!11984) )
))
(declare-datatypes ((array!67712 0))(
  ( (array!67713 (arr!32556 (Array (_ BitVec 32) ValueCell!11984)) (size!33093 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67712)

(declare-fun e!606991 () Bool)

(declare-fun array_inv!25046 (array!67712) Bool)

(assert (=> start!94200 (and (array_inv!25046 _values!955) e!606991)))

(assert (=> start!94200 tp!76130))

(declare-datatypes ((array!67714 0))(
  ( (array!67715 (arr!32557 (Array (_ BitVec 32) (_ BitVec 64))) (size!33094 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67714)

(declare-fun array_inv!25047 (array!67714) Bool)

(assert (=> start!94200 (array_inv!25047 _keys!1163)))

(declare-fun mapIsEmpty!39745 () Bool)

(declare-fun mapRes!39745 () Bool)

(assert (=> mapIsEmpty!39745 mapRes!39745))

(declare-fun b!1064826 () Bool)

(declare-fun e!606994 () Bool)

(assert (=> b!1064826 (= e!606994 tp_is_empty!25375)))

(declare-fun b!1064827 () Bool)

(declare-fun e!606993 () Bool)

(assert (=> b!1064827 (= e!606996 (not e!606993))))

(declare-fun res!710926 () Bool)

(assert (=> b!1064827 (=> res!710926 e!606993)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064827 (= res!710926 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16222 0))(
  ( (tuple2!16223 (_1!8121 (_ BitVec 64)) (_2!8121 V!38969)) )
))
(declare-datatypes ((List!22822 0))(
  ( (Nil!22819) (Cons!22818 (h!24027 tuple2!16222) (t!32146 List!22822)) )
))
(declare-datatypes ((ListLongMap!14203 0))(
  ( (ListLongMap!14204 (toList!7117 List!22822)) )
))
(declare-fun lt!469398 () ListLongMap!14203)

(declare-fun lt!469397 () ListLongMap!14203)

(assert (=> b!1064827 (= lt!469398 lt!469397)))

(declare-fun zeroValueBefore!47 () V!38969)

(declare-fun minValue!907 () V!38969)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((Unit!34895 0))(
  ( (Unit!34896) )
))
(declare-fun lt!469396 () Unit!34895)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38969)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!707 (array!67714 array!67712 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38969 V!38969 V!38969 V!38969 (_ BitVec 32) Int) Unit!34895)

(assert (=> b!1064827 (= lt!469396 (lemmaNoChangeToArrayThenSameMapNoExtras!707 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3668 (array!67714 array!67712 (_ BitVec 32) (_ BitVec 32) V!38969 V!38969 (_ BitVec 32) Int) ListLongMap!14203)

(assert (=> b!1064827 (= lt!469397 (getCurrentListMapNoExtraKeys!3668 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064827 (= lt!469398 (getCurrentListMapNoExtraKeys!3668 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064828 () Bool)

(assert (=> b!1064828 (= e!606993 true)))

(declare-fun lt!469395 () ListLongMap!14203)

(declare-fun getCurrentListMap!4040 (array!67714 array!67712 (_ BitVec 32) (_ BitVec 32) V!38969 V!38969 (_ BitVec 32) Int) ListLongMap!14203)

(assert (=> b!1064828 (= lt!469395 (getCurrentListMap!4040 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064829 () Bool)

(declare-fun res!710925 () Bool)

(assert (=> b!1064829 (=> (not res!710925) (not e!606996))))

(assert (=> b!1064829 (= res!710925 (and (= (size!33093 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33094 _keys!1163) (size!33093 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064830 () Bool)

(declare-fun res!710922 () Bool)

(assert (=> b!1064830 (=> (not res!710922) (not e!606996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67714 (_ BitVec 32)) Bool)

(assert (=> b!1064830 (= res!710922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064831 () Bool)

(declare-fun res!710923 () Bool)

(assert (=> b!1064831 (=> (not res!710923) (not e!606996))))

(declare-datatypes ((List!22823 0))(
  ( (Nil!22820) (Cons!22819 (h!24028 (_ BitVec 64)) (t!32147 List!22823)) )
))
(declare-fun arrayNoDuplicates!0 (array!67714 (_ BitVec 32) List!22823) Bool)

(assert (=> b!1064831 (= res!710923 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22820))))

(declare-fun mapNonEmpty!39745 () Bool)

(declare-fun tp!76131 () Bool)

(declare-fun e!606992 () Bool)

(assert (=> mapNonEmpty!39745 (= mapRes!39745 (and tp!76131 e!606992))))

(declare-fun mapKey!39745 () (_ BitVec 32))

(declare-fun mapRest!39745 () (Array (_ BitVec 32) ValueCell!11984))

(declare-fun mapValue!39745 () ValueCell!11984)

(assert (=> mapNonEmpty!39745 (= (arr!32556 _values!955) (store mapRest!39745 mapKey!39745 mapValue!39745))))

(declare-fun b!1064832 () Bool)

(assert (=> b!1064832 (= e!606991 (and e!606994 mapRes!39745))))

(declare-fun condMapEmpty!39745 () Bool)

(declare-fun mapDefault!39745 () ValueCell!11984)

