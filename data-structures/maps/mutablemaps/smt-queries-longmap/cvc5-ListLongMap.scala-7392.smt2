; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94164 () Bool)

(assert start!94164)

(declare-fun b_free!21529 () Bool)

(declare-fun b_next!21529 () Bool)

(assert (=> start!94164 (= b_free!21529 (not b_next!21529))))

(declare-fun tp!76022 () Bool)

(declare-fun b_and!34297 () Bool)

(assert (=> start!94164 (= tp!76022 b_and!34297)))

(declare-fun b!1064394 () Bool)

(declare-fun res!710656 () Bool)

(declare-fun e!606668 () Bool)

(assert (=> b!1064394 (=> (not res!710656) (not e!606668))))

(declare-datatypes ((array!67642 0))(
  ( (array!67643 (arr!32521 (Array (_ BitVec 32) (_ BitVec 64))) (size!33058 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67642)

(declare-datatypes ((List!22794 0))(
  ( (Nil!22791) (Cons!22790 (h!23999 (_ BitVec 64)) (t!32118 List!22794)) )
))
(declare-fun arrayNoDuplicates!0 (array!67642 (_ BitVec 32) List!22794) Bool)

(assert (=> b!1064394 (= res!710656 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22791))))

(declare-fun b!1064395 () Bool)

(declare-fun res!710654 () Bool)

(assert (=> b!1064395 (=> (not res!710654) (not e!606668))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67642 (_ BitVec 32)) Bool)

(assert (=> b!1064395 (= res!710654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064396 () Bool)

(declare-fun e!606667 () Bool)

(declare-fun tp_is_empty!25339 () Bool)

(assert (=> b!1064396 (= e!606667 tp_is_empty!25339)))

(declare-fun mapNonEmpty!39691 () Bool)

(declare-fun mapRes!39691 () Bool)

(declare-fun tp!76023 () Bool)

(declare-fun e!606670 () Bool)

(assert (=> mapNonEmpty!39691 (= mapRes!39691 (and tp!76023 e!606670))))

(declare-datatypes ((V!38921 0))(
  ( (V!38922 (val!12720 Int)) )
))
(declare-datatypes ((ValueCell!11966 0))(
  ( (ValueCellFull!11966 (v!15333 V!38921)) (EmptyCell!11966) )
))
(declare-fun mapRest!39691 () (Array (_ BitVec 32) ValueCell!11966))

(declare-fun mapValue!39691 () ValueCell!11966)

(declare-datatypes ((array!67644 0))(
  ( (array!67645 (arr!32522 (Array (_ BitVec 32) ValueCell!11966)) (size!33059 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67644)

(declare-fun mapKey!39691 () (_ BitVec 32))

(assert (=> mapNonEmpty!39691 (= (arr!32522 _values!955) (store mapRest!39691 mapKey!39691 mapValue!39691))))

(declare-fun b!1064398 () Bool)

(assert (=> b!1064398 (= e!606670 tp_is_empty!25339)))

(declare-fun b!1064399 () Bool)

(declare-fun res!710653 () Bool)

(assert (=> b!1064399 (=> (not res!710653) (not e!606668))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1064399 (= res!710653 (and (= (size!33059 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33058 _keys!1163) (size!33059 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1064400 () Bool)

(declare-fun e!606671 () Bool)

(assert (=> b!1064400 (= e!606668 (not e!606671))))

(declare-fun res!710655 () Bool)

(assert (=> b!1064400 (=> res!710655 e!606671)))

(assert (=> b!1064400 (= res!710655 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16192 0))(
  ( (tuple2!16193 (_1!8106 (_ BitVec 64)) (_2!8106 V!38921)) )
))
(declare-datatypes ((List!22795 0))(
  ( (Nil!22792) (Cons!22791 (h!24000 tuple2!16192) (t!32119 List!22795)) )
))
(declare-datatypes ((ListLongMap!14173 0))(
  ( (ListLongMap!14174 (toList!7102 List!22795)) )
))
(declare-fun lt!469182 () ListLongMap!14173)

(declare-fun lt!469181 () ListLongMap!14173)

(assert (=> b!1064400 (= lt!469182 lt!469181)))

(declare-fun zeroValueBefore!47 () V!38921)

(declare-fun minValue!907 () V!38921)

(declare-datatypes ((Unit!34871 0))(
  ( (Unit!34872) )
))
(declare-fun lt!469180 () Unit!34871)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38921)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!695 (array!67642 array!67644 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38921 V!38921 V!38921 V!38921 (_ BitVec 32) Int) Unit!34871)

(assert (=> b!1064400 (= lt!469180 (lemmaNoChangeToArrayThenSameMapNoExtras!695 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3656 (array!67642 array!67644 (_ BitVec 32) (_ BitVec 32) V!38921 V!38921 (_ BitVec 32) Int) ListLongMap!14173)

(assert (=> b!1064400 (= lt!469181 (getCurrentListMapNoExtraKeys!3656 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064400 (= lt!469182 (getCurrentListMapNoExtraKeys!3656 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064397 () Bool)

(assert (=> b!1064397 (= e!606671 true)))

(declare-fun lt!469179 () ListLongMap!14173)

(declare-fun getCurrentListMap!4028 (array!67642 array!67644 (_ BitVec 32) (_ BitVec 32) V!38921 V!38921 (_ BitVec 32) Int) ListLongMap!14173)

(assert (=> b!1064397 (= lt!469179 (getCurrentListMap!4028 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!710652 () Bool)

(assert (=> start!94164 (=> (not res!710652) (not e!606668))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94164 (= res!710652 (validMask!0 mask!1515))))

(assert (=> start!94164 e!606668))

(assert (=> start!94164 true))

(assert (=> start!94164 tp_is_empty!25339))

(declare-fun e!606672 () Bool)

(declare-fun array_inv!25020 (array!67644) Bool)

(assert (=> start!94164 (and (array_inv!25020 _values!955) e!606672)))

(assert (=> start!94164 tp!76022))

(declare-fun array_inv!25021 (array!67642) Bool)

(assert (=> start!94164 (array_inv!25021 _keys!1163)))

(declare-fun b!1064401 () Bool)

(assert (=> b!1064401 (= e!606672 (and e!606667 mapRes!39691))))

(declare-fun condMapEmpty!39691 () Bool)

(declare-fun mapDefault!39691 () ValueCell!11966)

