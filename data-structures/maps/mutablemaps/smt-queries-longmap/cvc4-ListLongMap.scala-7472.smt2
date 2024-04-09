; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94796 () Bool)

(assert start!94796)

(declare-fun b_free!22013 () Bool)

(declare-fun b_next!22013 () Bool)

(assert (=> start!94796 (= b_free!22013 (not b_next!22013))))

(declare-fun tp!77498 () Bool)

(declare-fun b_and!34861 () Bool)

(assert (=> start!94796 (= tp!77498 b_and!34861)))

(declare-fun mapIsEmpty!40441 () Bool)

(declare-fun mapRes!40441 () Bool)

(assert (=> mapIsEmpty!40441 mapRes!40441))

(declare-fun b!1071430 () Bool)

(declare-fun res!714830 () Bool)

(declare-fun e!611845 () Bool)

(assert (=> b!1071430 (=> (not res!714830) (not e!611845))))

(declare-datatypes ((V!39565 0))(
  ( (V!39566 (val!12962 Int)) )
))
(declare-datatypes ((ValueCell!12208 0))(
  ( (ValueCellFull!12208 (v!15579 V!39565)) (EmptyCell!12208) )
))
(declare-datatypes ((array!68576 0))(
  ( (array!68577 (arr!32980 (Array (_ BitVec 32) ValueCell!12208)) (size!33517 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68576)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68578 0))(
  ( (array!68579 (arr!32981 (Array (_ BitVec 32) (_ BitVec 64))) (size!33518 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68578)

(assert (=> b!1071430 (= res!714830 (and (= (size!33517 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33518 _keys!1163) (size!33517 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!40441 () Bool)

(declare-fun tp!77499 () Bool)

(declare-fun e!611843 () Bool)

(assert (=> mapNonEmpty!40441 (= mapRes!40441 (and tp!77499 e!611843))))

(declare-fun mapValue!40441 () ValueCell!12208)

(declare-fun mapRest!40441 () (Array (_ BitVec 32) ValueCell!12208))

(declare-fun mapKey!40441 () (_ BitVec 32))

(assert (=> mapNonEmpty!40441 (= (arr!32980 _values!955) (store mapRest!40441 mapKey!40441 mapValue!40441))))

(declare-fun b!1071431 () Bool)

(declare-datatypes ((tuple2!16558 0))(
  ( (tuple2!16559 (_1!8289 (_ BitVec 64)) (_2!8289 V!39565)) )
))
(declare-datatypes ((List!23141 0))(
  ( (Nil!23138) (Cons!23137 (h!24346 tuple2!16558) (t!32481 List!23141)) )
))
(declare-datatypes ((ListLongMap!14539 0))(
  ( (ListLongMap!14540 (toList!7285 List!23141)) )
))
(declare-fun lt!474124 () ListLongMap!14539)

(declare-fun e!611842 () Bool)

(declare-fun lt!474121 () tuple2!16558)

(declare-fun lt!474118 () ListLongMap!14539)

(declare-fun +!3141 (ListLongMap!14539 tuple2!16558) ListLongMap!14539)

(assert (=> b!1071431 (= e!611842 (= lt!474124 (+!3141 lt!474118 lt!474121)))))

(declare-fun b!1071432 () Bool)

(declare-fun e!611841 () Bool)

(assert (=> b!1071432 (= e!611841 true)))

(declare-fun lt!474116 () ListLongMap!14539)

(declare-fun lt!474122 () ListLongMap!14539)

(declare-fun -!678 (ListLongMap!14539 (_ BitVec 64)) ListLongMap!14539)

(assert (=> b!1071432 (= lt!474116 (-!678 lt!474122 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474115 () ListLongMap!14539)

(declare-fun lt!474123 () ListLongMap!14539)

(assert (=> b!1071432 (= lt!474115 lt!474123)))

(declare-fun zeroValueBefore!47 () V!39565)

(declare-datatypes ((Unit!35233 0))(
  ( (Unit!35234) )
))
(declare-fun lt!474117 () Unit!35233)

(declare-fun minValue!907 () V!39565)

(declare-fun lt!474120 () ListLongMap!14539)

(declare-fun addCommutativeForDiffKeys!722 (ListLongMap!14539 (_ BitVec 64) V!39565 (_ BitVec 64) V!39565) Unit!35233)

(assert (=> b!1071432 (= lt!474117 (addCommutativeForDiffKeys!722 lt!474120 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474126 () ListLongMap!14539)

(assert (=> b!1071432 (= (-!678 lt!474123 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474126)))

(declare-fun lt!474119 () tuple2!16558)

(assert (=> b!1071432 (= lt!474123 (+!3141 lt!474126 lt!474119))))

(declare-fun lt!474114 () Unit!35233)

(declare-fun addThenRemoveForNewKeyIsSame!52 (ListLongMap!14539 (_ BitVec 64) V!39565) Unit!35233)

(assert (=> b!1071432 (= lt!474114 (addThenRemoveForNewKeyIsSame!52 lt!474126 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1071432 (= lt!474126 (+!3141 lt!474120 lt!474121))))

(assert (=> b!1071432 e!611842))

(declare-fun res!714831 () Bool)

(assert (=> b!1071432 (=> (not res!714831) (not e!611842))))

(assert (=> b!1071432 (= res!714831 (= lt!474122 lt!474115))))

(assert (=> b!1071432 (= lt!474115 (+!3141 (+!3141 lt!474120 lt!474119) lt!474121))))

(assert (=> b!1071432 (= lt!474121 (tuple2!16559 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1071432 (= lt!474119 (tuple2!16559 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39565)

(declare-fun getCurrentListMap!4150 (array!68578 array!68576 (_ BitVec 32) (_ BitVec 32) V!39565 V!39565 (_ BitVec 32) Int) ListLongMap!14539)

(assert (=> b!1071432 (= lt!474124 (getCurrentListMap!4150 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071432 (= lt!474122 (getCurrentListMap!4150 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!714827 () Bool)

(assert (=> start!94796 (=> (not res!714827) (not e!611845))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94796 (= res!714827 (validMask!0 mask!1515))))

(assert (=> start!94796 e!611845))

(assert (=> start!94796 true))

(declare-fun tp_is_empty!25823 () Bool)

(assert (=> start!94796 tp_is_empty!25823))

(declare-fun e!611844 () Bool)

(declare-fun array_inv!25356 (array!68576) Bool)

(assert (=> start!94796 (and (array_inv!25356 _values!955) e!611844)))

(assert (=> start!94796 tp!77498))

(declare-fun array_inv!25357 (array!68578) Bool)

(assert (=> start!94796 (array_inv!25357 _keys!1163)))

(declare-fun b!1071433 () Bool)

(assert (=> b!1071433 (= e!611845 (not e!611841))))

(declare-fun res!714826 () Bool)

(assert (=> b!1071433 (=> res!714826 e!611841)))

(assert (=> b!1071433 (= res!714826 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1071433 (= lt!474120 lt!474118)))

(declare-fun lt!474125 () Unit!35233)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!858 (array!68578 array!68576 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39565 V!39565 V!39565 V!39565 (_ BitVec 32) Int) Unit!35233)

(assert (=> b!1071433 (= lt!474125 (lemmaNoChangeToArrayThenSameMapNoExtras!858 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3819 (array!68578 array!68576 (_ BitVec 32) (_ BitVec 32) V!39565 V!39565 (_ BitVec 32) Int) ListLongMap!14539)

(assert (=> b!1071433 (= lt!474118 (getCurrentListMapNoExtraKeys!3819 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1071433 (= lt!474120 (getCurrentListMapNoExtraKeys!3819 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1071434 () Bool)

(declare-fun res!714828 () Bool)

(assert (=> b!1071434 (=> (not res!714828) (not e!611845))))

(declare-datatypes ((List!23142 0))(
  ( (Nil!23139) (Cons!23138 (h!24347 (_ BitVec 64)) (t!32482 List!23142)) )
))
(declare-fun arrayNoDuplicates!0 (array!68578 (_ BitVec 32) List!23142) Bool)

(assert (=> b!1071434 (= res!714828 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23139))))

(declare-fun b!1071435 () Bool)

(declare-fun e!611839 () Bool)

(assert (=> b!1071435 (= e!611844 (and e!611839 mapRes!40441))))

(declare-fun condMapEmpty!40441 () Bool)

(declare-fun mapDefault!40441 () ValueCell!12208)

