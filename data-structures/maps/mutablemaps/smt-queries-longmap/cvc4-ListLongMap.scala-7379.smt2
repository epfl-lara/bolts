; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94054 () Bool)

(assert start!94054)

(declare-fun b_free!21455 () Bool)

(declare-fun b_next!21455 () Bool)

(assert (=> start!94054 (= b_free!21455 (not b_next!21455))))

(declare-fun tp!75795 () Bool)

(declare-fun b_and!34205 () Bool)

(assert (=> start!94054 (= tp!75795 b_and!34205)))

(declare-fun mapNonEmpty!39574 () Bool)

(declare-fun mapRes!39574 () Bool)

(declare-fun tp!75794 () Bool)

(declare-fun e!605912 () Bool)

(assert (=> mapNonEmpty!39574 (= mapRes!39574 (and tp!75794 e!605912))))

(declare-datatypes ((V!38821 0))(
  ( (V!38822 (val!12683 Int)) )
))
(declare-datatypes ((ValueCell!11929 0))(
  ( (ValueCellFull!11929 (v!15295 V!38821)) (EmptyCell!11929) )
))
(declare-fun mapRest!39574 () (Array (_ BitVec 32) ValueCell!11929))

(declare-datatypes ((array!67504 0))(
  ( (array!67505 (arr!32454 (Array (_ BitVec 32) ValueCell!11929)) (size!32991 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67504)

(declare-fun mapValue!39574 () ValueCell!11929)

(declare-fun mapKey!39574 () (_ BitVec 32))

(assert (=> mapNonEmpty!39574 (= (arr!32454 _values!955) (store mapRest!39574 mapKey!39574 mapValue!39574))))

(declare-fun b!1063326 () Bool)

(declare-fun res!710071 () Bool)

(declare-fun e!605909 () Bool)

(assert (=> b!1063326 (=> (not res!710071) (not e!605909))))

(declare-datatypes ((array!67506 0))(
  ( (array!67507 (arr!32455 (Array (_ BitVec 32) (_ BitVec 64))) (size!32992 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67506)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67506 (_ BitVec 32)) Bool)

(assert (=> b!1063326 (= res!710071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!710072 () Bool)

(assert (=> start!94054 (=> (not res!710072) (not e!605909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94054 (= res!710072 (validMask!0 mask!1515))))

(assert (=> start!94054 e!605909))

(assert (=> start!94054 true))

(declare-fun tp_is_empty!25265 () Bool)

(assert (=> start!94054 tp_is_empty!25265))

(declare-fun e!605911 () Bool)

(declare-fun array_inv!24976 (array!67504) Bool)

(assert (=> start!94054 (and (array_inv!24976 _values!955) e!605911)))

(assert (=> start!94054 tp!75795))

(declare-fun array_inv!24977 (array!67506) Bool)

(assert (=> start!94054 (array_inv!24977 _keys!1163)))

(declare-fun b!1063327 () Bool)

(declare-fun e!605914 () Bool)

(assert (=> b!1063327 (= e!605909 (not e!605914))))

(declare-fun res!710067 () Bool)

(assert (=> b!1063327 (=> res!710067 e!605914)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1063327 (= res!710067 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16146 0))(
  ( (tuple2!16147 (_1!8083 (_ BitVec 64)) (_2!8083 V!38821)) )
))
(declare-datatypes ((List!22752 0))(
  ( (Nil!22749) (Cons!22748 (h!23957 tuple2!16146) (t!32072 List!22752)) )
))
(declare-datatypes ((ListLongMap!14127 0))(
  ( (ListLongMap!14128 (toList!7079 List!22752)) )
))
(declare-fun lt!468637 () ListLongMap!14127)

(declare-fun lt!468633 () ListLongMap!14127)

(assert (=> b!1063327 (= lt!468637 lt!468633)))

(declare-fun zeroValueBefore!47 () V!38821)

(declare-datatypes ((Unit!34823 0))(
  ( (Unit!34824) )
))
(declare-fun lt!468635 () Unit!34823)

(declare-fun minValue!907 () V!38821)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38821)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!673 (array!67506 array!67504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38821 V!38821 V!38821 V!38821 (_ BitVec 32) Int) Unit!34823)

(assert (=> b!1063327 (= lt!468635 (lemmaNoChangeToArrayThenSameMapNoExtras!673 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3634 (array!67506 array!67504 (_ BitVec 32) (_ BitVec 32) V!38821 V!38821 (_ BitVec 32) Int) ListLongMap!14127)

(assert (=> b!1063327 (= lt!468633 (getCurrentListMapNoExtraKeys!3634 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1063327 (= lt!468637 (getCurrentListMapNoExtraKeys!3634 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063328 () Bool)

(assert (=> b!1063328 (= e!605912 tp_is_empty!25265)))

(declare-fun b!1063329 () Bool)

(declare-fun res!710069 () Bool)

(assert (=> b!1063329 (=> (not res!710069) (not e!605909))))

(declare-datatypes ((List!22753 0))(
  ( (Nil!22750) (Cons!22749 (h!23958 (_ BitVec 64)) (t!32073 List!22753)) )
))
(declare-fun arrayNoDuplicates!0 (array!67506 (_ BitVec 32) List!22753) Bool)

(assert (=> b!1063329 (= res!710069 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22750))))

(declare-fun b!1063330 () Bool)

(declare-fun e!605913 () Bool)

(assert (=> b!1063330 (= e!605913 tp_is_empty!25265)))

(declare-fun b!1063331 () Bool)

(declare-fun e!605908 () Bool)

(assert (=> b!1063331 (= e!605914 e!605908)))

(declare-fun res!710068 () Bool)

(assert (=> b!1063331 (=> res!710068 e!605908)))

(declare-fun lt!468636 () ListLongMap!14127)

(declare-fun contains!6274 (ListLongMap!14127 (_ BitVec 64)) Bool)

(assert (=> b!1063331 (= res!710068 (contains!6274 lt!468636 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4023 (array!67506 array!67504 (_ BitVec 32) (_ BitVec 32) V!38821 V!38821 (_ BitVec 32) Int) ListLongMap!14127)

(assert (=> b!1063331 (= lt!468636 (getCurrentListMap!4023 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1063332 () Bool)

(assert (=> b!1063332 (= e!605908 true)))

(declare-fun -!587 (ListLongMap!14127 (_ BitVec 64)) ListLongMap!14127)

(assert (=> b!1063332 (= (-!587 lt!468636 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468636)))

(declare-fun lt!468634 () Unit!34823)

(declare-fun removeNotPresentStillSame!33 (ListLongMap!14127 (_ BitVec 64)) Unit!34823)

(assert (=> b!1063332 (= lt!468634 (removeNotPresentStillSame!33 lt!468636 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1063333 () Bool)

(declare-fun res!710070 () Bool)

(assert (=> b!1063333 (=> (not res!710070) (not e!605909))))

(assert (=> b!1063333 (= res!710070 (and (= (size!32991 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32992 _keys!1163) (size!32991 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1063334 () Bool)

(assert (=> b!1063334 (= e!605911 (and e!605913 mapRes!39574))))

(declare-fun condMapEmpty!39574 () Bool)

(declare-fun mapDefault!39574 () ValueCell!11929)

