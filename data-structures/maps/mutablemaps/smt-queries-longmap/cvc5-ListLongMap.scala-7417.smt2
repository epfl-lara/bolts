; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94352 () Bool)

(assert start!94352)

(declare-fun b_free!21679 () Bool)

(declare-fun b_next!21679 () Bool)

(assert (=> start!94352 (= b_free!21679 (not b_next!21679))))

(declare-fun tp!76479 () Bool)

(declare-fun b_and!34469 () Bool)

(assert (=> start!94352 (= tp!76479 b_and!34469)))

(declare-fun b!1066535 () Bool)

(declare-fun e!608242 () Bool)

(assert (=> b!1066535 (= e!608242 true)))

(declare-datatypes ((V!39121 0))(
  ( (V!39122 (val!12795 Int)) )
))
(declare-datatypes ((tuple2!16318 0))(
  ( (tuple2!16319 (_1!8169 (_ BitVec 64)) (_2!8169 V!39121)) )
))
(declare-datatypes ((List!22910 0))(
  ( (Nil!22907) (Cons!22906 (h!24115 tuple2!16318) (t!32238 List!22910)) )
))
(declare-datatypes ((ListLongMap!14299 0))(
  ( (ListLongMap!14300 (toList!7165 List!22910)) )
))
(declare-fun lt!470931 () ListLongMap!14299)

(declare-fun lt!470927 () ListLongMap!14299)

(declare-fun -!623 (ListLongMap!14299 (_ BitVec 64)) ListLongMap!14299)

(assert (=> b!1066535 (= lt!470931 (-!623 lt!470927 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470926 () ListLongMap!14299)

(declare-fun lt!470932 () ListLongMap!14299)

(assert (=> b!1066535 (= (-!623 lt!470926 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470932)))

(declare-datatypes ((Unit!34994 0))(
  ( (Unit!34995) )
))
(declare-fun lt!470925 () Unit!34994)

(declare-fun zeroValueBefore!47 () V!39121)

(declare-fun addThenRemoveForNewKeyIsSame!32 (ListLongMap!14299 (_ BitVec 64) V!39121) Unit!34994)

(assert (=> b!1066535 (= lt!470925 (addThenRemoveForNewKeyIsSame!32 lt!470932 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470929 () ListLongMap!14299)

(declare-fun lt!470928 () ListLongMap!14299)

(assert (=> b!1066535 (and (= lt!470927 lt!470926) (= lt!470929 lt!470928))))

(declare-fun +!3114 (ListLongMap!14299 tuple2!16318) ListLongMap!14299)

(assert (=> b!1066535 (= lt!470926 (+!3114 lt!470932 (tuple2!16319 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun minValue!907 () V!39121)

(declare-datatypes ((array!67936 0))(
  ( (array!67937 (arr!32666 (Array (_ BitVec 32) (_ BitVec 64))) (size!33203 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67936)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12041 0))(
  ( (ValueCellFull!12041 (v!15409 V!39121)) (EmptyCell!12041) )
))
(declare-datatypes ((array!67938 0))(
  ( (array!67939 (arr!32667 (Array (_ BitVec 32) ValueCell!12041)) (size!33204 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67938)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39121)

(declare-fun getCurrentListMap!4077 (array!67936 array!67938 (_ BitVec 32) (_ BitVec 32) V!39121 V!39121 (_ BitVec 32) Int) ListLongMap!14299)

(assert (=> b!1066535 (= lt!470929 (getCurrentListMap!4077 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066535 (= lt!470927 (getCurrentListMap!4077 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066536 () Bool)

(declare-fun res!711930 () Bool)

(declare-fun e!608243 () Bool)

(assert (=> b!1066536 (=> (not res!711930) (not e!608243))))

(declare-datatypes ((List!22911 0))(
  ( (Nil!22908) (Cons!22907 (h!24116 (_ BitVec 64)) (t!32239 List!22911)) )
))
(declare-fun arrayNoDuplicates!0 (array!67936 (_ BitVec 32) List!22911) Bool)

(assert (=> b!1066536 (= res!711930 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22908))))

(declare-fun res!711927 () Bool)

(assert (=> start!94352 (=> (not res!711927) (not e!608243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94352 (= res!711927 (validMask!0 mask!1515))))

(assert (=> start!94352 e!608243))

(assert (=> start!94352 true))

(declare-fun tp_is_empty!25489 () Bool)

(assert (=> start!94352 tp_is_empty!25489))

(declare-fun e!608241 () Bool)

(declare-fun array_inv!25130 (array!67938) Bool)

(assert (=> start!94352 (and (array_inv!25130 _values!955) e!608241)))

(assert (=> start!94352 tp!76479))

(declare-fun array_inv!25131 (array!67936) Bool)

(assert (=> start!94352 (array_inv!25131 _keys!1163)))

(declare-fun mapNonEmpty!39922 () Bool)

(declare-fun mapRes!39922 () Bool)

(declare-fun tp!76478 () Bool)

(declare-fun e!608244 () Bool)

(assert (=> mapNonEmpty!39922 (= mapRes!39922 (and tp!76478 e!608244))))

(declare-fun mapKey!39922 () (_ BitVec 32))

(declare-fun mapRest!39922 () (Array (_ BitVec 32) ValueCell!12041))

(declare-fun mapValue!39922 () ValueCell!12041)

(assert (=> mapNonEmpty!39922 (= (arr!32667 _values!955) (store mapRest!39922 mapKey!39922 mapValue!39922))))

(declare-fun b!1066537 () Bool)

(assert (=> b!1066537 (= e!608244 tp_is_empty!25489)))

(declare-fun b!1066538 () Bool)

(declare-fun e!608240 () Bool)

(assert (=> b!1066538 (= e!608240 tp_is_empty!25489)))

(declare-fun b!1066539 () Bool)

(declare-fun res!711929 () Bool)

(assert (=> b!1066539 (=> (not res!711929) (not e!608243))))

(assert (=> b!1066539 (= res!711929 (and (= (size!33204 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33203 _keys!1163) (size!33204 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39922 () Bool)

(assert (=> mapIsEmpty!39922 mapRes!39922))

(declare-fun b!1066540 () Bool)

(assert (=> b!1066540 (= e!608243 (not e!608242))))

(declare-fun res!711926 () Bool)

(assert (=> b!1066540 (=> res!711926 e!608242)))

(assert (=> b!1066540 (= res!711926 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066540 (= lt!470932 lt!470928)))

(declare-fun lt!470930 () Unit!34994)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!751 (array!67936 array!67938 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39121 V!39121 V!39121 V!39121 (_ BitVec 32) Int) Unit!34994)

(assert (=> b!1066540 (= lt!470930 (lemmaNoChangeToArrayThenSameMapNoExtras!751 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3712 (array!67936 array!67938 (_ BitVec 32) (_ BitVec 32) V!39121 V!39121 (_ BitVec 32) Int) ListLongMap!14299)

(assert (=> b!1066540 (= lt!470928 (getCurrentListMapNoExtraKeys!3712 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066540 (= lt!470932 (getCurrentListMapNoExtraKeys!3712 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066541 () Bool)

(declare-fun res!711928 () Bool)

(assert (=> b!1066541 (=> (not res!711928) (not e!608243))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67936 (_ BitVec 32)) Bool)

(assert (=> b!1066541 (= res!711928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066542 () Bool)

(assert (=> b!1066542 (= e!608241 (and e!608240 mapRes!39922))))

(declare-fun condMapEmpty!39922 () Bool)

(declare-fun mapDefault!39922 () ValueCell!12041)

