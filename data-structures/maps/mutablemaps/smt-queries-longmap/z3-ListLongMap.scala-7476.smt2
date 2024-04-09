; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94842 () Bool)

(assert start!94842)

(declare-fun b_free!22035 () Bool)

(declare-fun b_next!22035 () Bool)

(assert (=> start!94842 (= b_free!22035 (not b_next!22035))))

(declare-fun tp!77567 () Bool)

(declare-fun b_and!34895 () Bool)

(assert (=> start!94842 (= tp!77567 b_and!34895)))

(declare-fun b!1071919 () Bool)

(declare-fun e!612197 () Bool)

(declare-datatypes ((V!39595 0))(
  ( (V!39596 (val!12973 Int)) )
))
(declare-datatypes ((tuple2!16576 0))(
  ( (tuple2!16577 (_1!8298 (_ BitVec 64)) (_2!8298 V!39595)) )
))
(declare-fun lt!474710 () tuple2!16576)

(declare-datatypes ((List!23158 0))(
  ( (Nil!23155) (Cons!23154 (h!24363 tuple2!16576) (t!32500 List!23158)) )
))
(declare-datatypes ((ListLongMap!14557 0))(
  ( (ListLongMap!14558 (toList!7294 List!23158)) )
))
(declare-fun lt!474707 () ListLongMap!14557)

(declare-fun lt!474712 () ListLongMap!14557)

(declare-fun +!3149 (ListLongMap!14557 tuple2!16576) ListLongMap!14557)

(assert (=> b!1071919 (= e!612197 (= lt!474712 (+!3149 lt!474707 lt!474710)))))

(declare-fun b!1071920 () Bool)

(declare-fun res!715116 () Bool)

(declare-fun e!612196 () Bool)

(assert (=> b!1071920 (=> (not res!715116) (not e!612196))))

(declare-datatypes ((array!68620 0))(
  ( (array!68621 (arr!33001 (Array (_ BitVec 32) (_ BitVec 64))) (size!33538 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68620)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68620 (_ BitVec 32)) Bool)

(assert (=> b!1071920 (= res!715116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1071921 () Bool)

(declare-fun res!715114 () Bool)

(assert (=> b!1071921 (=> (not res!715114) (not e!612196))))

(declare-datatypes ((List!23159 0))(
  ( (Nil!23156) (Cons!23155 (h!24364 (_ BitVec 64)) (t!32501 List!23159)) )
))
(declare-fun arrayNoDuplicates!0 (array!68620 (_ BitVec 32) List!23159) Bool)

(assert (=> b!1071921 (= res!715114 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23156))))

(declare-fun b!1071922 () Bool)

(declare-fun e!612199 () Bool)

(declare-fun tp_is_empty!25845 () Bool)

(assert (=> b!1071922 (= e!612199 tp_is_empty!25845)))

(declare-fun b!1071923 () Bool)

(declare-fun e!612195 () Bool)

(assert (=> b!1071923 (= e!612196 (not e!612195))))

(declare-fun res!715118 () Bool)

(assert (=> b!1071923 (=> res!715118 e!612195)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1071923 (= res!715118 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!474706 () ListLongMap!14557)

(assert (=> b!1071923 (= lt!474706 lt!474707)))

(declare-fun zeroValueBefore!47 () V!39595)

(declare-datatypes ((Unit!35251 0))(
  ( (Unit!35252) )
))
(declare-fun lt!474701 () Unit!35251)

(declare-datatypes ((ValueCell!12219 0))(
  ( (ValueCellFull!12219 (v!15591 V!39595)) (EmptyCell!12219) )
))
(declare-datatypes ((array!68622 0))(
  ( (array!68623 (arr!33002 (Array (_ BitVec 32) ValueCell!12219)) (size!33539 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68622)

(declare-fun minValue!907 () V!39595)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39595)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!865 (array!68620 array!68622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39595 V!39595 V!39595 V!39595 (_ BitVec 32) Int) Unit!35251)

(assert (=> b!1071923 (= lt!474701 (lemmaNoChangeToArrayThenSameMapNoExtras!865 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3826 (array!68620 array!68622 (_ BitVec 32) (_ BitVec 32) V!39595 V!39595 (_ BitVec 32) Int) ListLongMap!14557)

(assert (=> b!1071923 (= lt!474707 (getCurrentListMapNoExtraKeys!3826 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071923 (= lt!474706 (getCurrentListMapNoExtraKeys!3826 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40477 () Bool)

(declare-fun mapRes!40477 () Bool)

(declare-fun tp!77568 () Bool)

(assert (=> mapNonEmpty!40477 (= mapRes!40477 (and tp!77568 e!612199))))

(declare-fun mapValue!40477 () ValueCell!12219)

(declare-fun mapRest!40477 () (Array (_ BitVec 32) ValueCell!12219))

(declare-fun mapKey!40477 () (_ BitVec 32))

(assert (=> mapNonEmpty!40477 (= (arr!33002 _values!955) (store mapRest!40477 mapKey!40477 mapValue!40477))))

(declare-fun b!1071924 () Bool)

(declare-fun e!612193 () Bool)

(assert (=> b!1071924 (= e!612193 tp_is_empty!25845)))

(declare-fun b!1071925 () Bool)

(declare-fun res!715117 () Bool)

(assert (=> b!1071925 (=> (not res!715117) (not e!612196))))

(assert (=> b!1071925 (= res!715117 (and (= (size!33539 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33538 _keys!1163) (size!33539 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!715119 () Bool)

(assert (=> start!94842 (=> (not res!715119) (not e!612196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94842 (= res!715119 (validMask!0 mask!1515))))

(assert (=> start!94842 e!612196))

(assert (=> start!94842 true))

(assert (=> start!94842 tp_is_empty!25845))

(declare-fun e!612194 () Bool)

(declare-fun array_inv!25370 (array!68622) Bool)

(assert (=> start!94842 (and (array_inv!25370 _values!955) e!612194)))

(assert (=> start!94842 tp!77567))

(declare-fun array_inv!25371 (array!68620) Bool)

(assert (=> start!94842 (array_inv!25371 _keys!1163)))

(declare-fun mapIsEmpty!40477 () Bool)

(assert (=> mapIsEmpty!40477 mapRes!40477))

(declare-fun b!1071926 () Bool)

(assert (=> b!1071926 (= e!612195 true)))

(declare-fun lt!474700 () ListLongMap!14557)

(declare-fun lt!474711 () ListLongMap!14557)

(declare-fun -!685 (ListLongMap!14557 (_ BitVec 64)) ListLongMap!14557)

(assert (=> b!1071926 (= lt!474700 (-!685 lt!474711 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474703 () ListLongMap!14557)

(declare-fun lt!474702 () ListLongMap!14557)

(assert (=> b!1071926 (= lt!474703 lt!474702)))

(declare-fun lt!474708 () Unit!35251)

(declare-fun addCommutativeForDiffKeys!729 (ListLongMap!14557 (_ BitVec 64) V!39595 (_ BitVec 64) V!39595) Unit!35251)

(assert (=> b!1071926 (= lt!474708 (addCommutativeForDiffKeys!729 lt!474706 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474704 () ListLongMap!14557)

(assert (=> b!1071926 (= (-!685 lt!474702 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474704)))

(declare-fun lt!474709 () tuple2!16576)

(assert (=> b!1071926 (= lt!474702 (+!3149 lt!474704 lt!474709))))

(declare-fun lt!474705 () Unit!35251)

(declare-fun addThenRemoveForNewKeyIsSame!59 (ListLongMap!14557 (_ BitVec 64) V!39595) Unit!35251)

(assert (=> b!1071926 (= lt!474705 (addThenRemoveForNewKeyIsSame!59 lt!474704 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071926 (= lt!474704 (+!3149 lt!474706 lt!474710))))

(assert (=> b!1071926 e!612197))

(declare-fun res!715115 () Bool)

(assert (=> b!1071926 (=> (not res!715115) (not e!612197))))

(assert (=> b!1071926 (= res!715115 (= lt!474711 lt!474703))))

(assert (=> b!1071926 (= lt!474703 (+!3149 (+!3149 lt!474706 lt!474709) lt!474710))))

(assert (=> b!1071926 (= lt!474710 (tuple2!16577 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071926 (= lt!474709 (tuple2!16577 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4157 (array!68620 array!68622 (_ BitVec 32) (_ BitVec 32) V!39595 V!39595 (_ BitVec 32) Int) ListLongMap!14557)

(assert (=> b!1071926 (= lt!474712 (getCurrentListMap!4157 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071926 (= lt!474711 (getCurrentListMap!4157 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071927 () Bool)

(assert (=> b!1071927 (= e!612194 (and e!612193 mapRes!40477))))

(declare-fun condMapEmpty!40477 () Bool)

(declare-fun mapDefault!40477 () ValueCell!12219)

(assert (=> b!1071927 (= condMapEmpty!40477 (= (arr!33002 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12219)) mapDefault!40477)))))

(assert (= (and start!94842 res!715119) b!1071925))

(assert (= (and b!1071925 res!715117) b!1071920))

(assert (= (and b!1071920 res!715116) b!1071921))

(assert (= (and b!1071921 res!715114) b!1071923))

(assert (= (and b!1071923 (not res!715118)) b!1071926))

(assert (= (and b!1071926 res!715115) b!1071919))

(assert (= (and b!1071927 condMapEmpty!40477) mapIsEmpty!40477))

(assert (= (and b!1071927 (not condMapEmpty!40477)) mapNonEmpty!40477))

(get-info :version)

(assert (= (and mapNonEmpty!40477 ((_ is ValueCellFull!12219) mapValue!40477)) b!1071922))

(assert (= (and b!1071927 ((_ is ValueCellFull!12219) mapDefault!40477)) b!1071924))

(assert (= start!94842 b!1071927))

(declare-fun m!990779 () Bool)

(assert (=> b!1071920 m!990779))

(declare-fun m!990781 () Bool)

(assert (=> b!1071921 m!990781))

(declare-fun m!990783 () Bool)

(assert (=> mapNonEmpty!40477 m!990783))

(declare-fun m!990785 () Bool)

(assert (=> b!1071923 m!990785))

(declare-fun m!990787 () Bool)

(assert (=> b!1071923 m!990787))

(declare-fun m!990789 () Bool)

(assert (=> b!1071923 m!990789))

(declare-fun m!990791 () Bool)

(assert (=> start!94842 m!990791))

(declare-fun m!990793 () Bool)

(assert (=> start!94842 m!990793))

(declare-fun m!990795 () Bool)

(assert (=> start!94842 m!990795))

(declare-fun m!990797 () Bool)

(assert (=> b!1071919 m!990797))

(declare-fun m!990799 () Bool)

(assert (=> b!1071926 m!990799))

(declare-fun m!990801 () Bool)

(assert (=> b!1071926 m!990801))

(declare-fun m!990803 () Bool)

(assert (=> b!1071926 m!990803))

(declare-fun m!990805 () Bool)

(assert (=> b!1071926 m!990805))

(declare-fun m!990807 () Bool)

(assert (=> b!1071926 m!990807))

(declare-fun m!990809 () Bool)

(assert (=> b!1071926 m!990809))

(declare-fun m!990811 () Bool)

(assert (=> b!1071926 m!990811))

(declare-fun m!990813 () Bool)

(assert (=> b!1071926 m!990813))

(declare-fun m!990815 () Bool)

(assert (=> b!1071926 m!990815))

(assert (=> b!1071926 m!990803))

(declare-fun m!990817 () Bool)

(assert (=> b!1071926 m!990817))

(check-sat (not b!1071921) (not mapNonEmpty!40477) tp_is_empty!25845 (not b_next!22035) (not b!1071920) (not b!1071926) b_and!34895 (not b!1071919) (not start!94842) (not b!1071923))
(check-sat b_and!34895 (not b_next!22035))
