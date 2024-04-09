; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94850 () Bool)

(assert start!94850)

(declare-fun b_free!22043 () Bool)

(declare-fun b_next!22043 () Bool)

(assert (=> start!94850 (= b_free!22043 (not b_next!22043))))

(declare-fun tp!77591 () Bool)

(declare-fun b_and!34903 () Bool)

(assert (=> start!94850 (= tp!77591 b_and!34903)))

(declare-fun res!715191 () Bool)

(declare-fun e!612278 () Bool)

(assert (=> start!94850 (=> (not res!715191) (not e!612278))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94850 (= res!715191 (validMask!0 mask!1515))))

(assert (=> start!94850 e!612278))

(assert (=> start!94850 true))

(declare-fun tp_is_empty!25853 () Bool)

(assert (=> start!94850 tp_is_empty!25853))

(declare-datatypes ((V!39605 0))(
  ( (V!39606 (val!12977 Int)) )
))
(declare-datatypes ((ValueCell!12223 0))(
  ( (ValueCellFull!12223 (v!15595 V!39605)) (EmptyCell!12223) )
))
(declare-datatypes ((array!68636 0))(
  ( (array!68637 (arr!33009 (Array (_ BitVec 32) ValueCell!12223)) (size!33546 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68636)

(declare-fun e!612282 () Bool)

(declare-fun array_inv!25376 (array!68636) Bool)

(assert (=> start!94850 (and (array_inv!25376 _values!955) e!612282)))

(assert (=> start!94850 tp!77591))

(declare-datatypes ((array!68638 0))(
  ( (array!68639 (arr!33010 (Array (_ BitVec 32) (_ BitVec 64))) (size!33547 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68638)

(declare-fun array_inv!25377 (array!68638) Bool)

(assert (=> start!94850 (array_inv!25377 _keys!1163)))

(declare-fun mapIsEmpty!40489 () Bool)

(declare-fun mapRes!40489 () Bool)

(assert (=> mapIsEmpty!40489 mapRes!40489))

(declare-fun b!1072027 () Bool)

(declare-fun res!715188 () Bool)

(assert (=> b!1072027 (=> (not res!715188) (not e!612278))))

(declare-datatypes ((List!23165 0))(
  ( (Nil!23162) (Cons!23161 (h!24370 (_ BitVec 64)) (t!32507 List!23165)) )
))
(declare-fun arrayNoDuplicates!0 (array!68638 (_ BitVec 32) List!23165) Bool)

(assert (=> b!1072027 (= res!715188 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23162))))

(declare-fun b!1072028 () Bool)

(declare-fun res!715190 () Bool)

(assert (=> b!1072028 (=> (not res!715190) (not e!612278))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072028 (= res!715190 (and (= (size!33546 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33547 _keys!1163) (size!33546 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072029 () Bool)

(declare-fun e!612279 () Bool)

(assert (=> b!1072029 (= e!612279 true)))

(declare-datatypes ((tuple2!16584 0))(
  ( (tuple2!16585 (_1!8302 (_ BitVec 64)) (_2!8302 V!39605)) )
))
(declare-datatypes ((List!23166 0))(
  ( (Nil!23163) (Cons!23162 (h!24371 tuple2!16584) (t!32508 List!23166)) )
))
(declare-datatypes ((ListLongMap!14565 0))(
  ( (ListLongMap!14566 (toList!7298 List!23166)) )
))
(declare-fun lt!474863 () ListLongMap!14565)

(declare-fun lt!474868 () ListLongMap!14565)

(declare-fun -!689 (ListLongMap!14565 (_ BitVec 64)) ListLongMap!14565)

(assert (=> b!1072029 (= lt!474863 (-!689 lt!474868 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474859 () ListLongMap!14565)

(declare-fun lt!474867 () ListLongMap!14565)

(assert (=> b!1072029 (= lt!474859 lt!474867)))

(declare-fun zeroValueBefore!47 () V!39605)

(declare-fun minValue!907 () V!39605)

(declare-fun lt!474857 () ListLongMap!14565)

(declare-datatypes ((Unit!35259 0))(
  ( (Unit!35260) )
))
(declare-fun lt!474856 () Unit!35259)

(declare-fun addCommutativeForDiffKeys!733 (ListLongMap!14565 (_ BitVec 64) V!39605 (_ BitVec 64) V!39605) Unit!35259)

(assert (=> b!1072029 (= lt!474856 (addCommutativeForDiffKeys!733 lt!474857 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474865 () ListLongMap!14565)

(assert (=> b!1072029 (= (-!689 lt!474867 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474865)))

(declare-fun lt!474860 () tuple2!16584)

(declare-fun +!3153 (ListLongMap!14565 tuple2!16584) ListLongMap!14565)

(assert (=> b!1072029 (= lt!474867 (+!3153 lt!474865 lt!474860))))

(declare-fun lt!474862 () Unit!35259)

(declare-fun addThenRemoveForNewKeyIsSame!63 (ListLongMap!14565 (_ BitVec 64) V!39605) Unit!35259)

(assert (=> b!1072029 (= lt!474862 (addThenRemoveForNewKeyIsSame!63 lt!474865 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474858 () tuple2!16584)

(assert (=> b!1072029 (= lt!474865 (+!3153 lt!474857 lt!474858))))

(declare-fun e!612281 () Bool)

(assert (=> b!1072029 e!612281))

(declare-fun res!715186 () Bool)

(assert (=> b!1072029 (=> (not res!715186) (not e!612281))))

(assert (=> b!1072029 (= res!715186 (= lt!474868 lt!474859))))

(assert (=> b!1072029 (= lt!474859 (+!3153 (+!3153 lt!474857 lt!474860) lt!474858))))

(assert (=> b!1072029 (= lt!474858 (tuple2!16585 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072029 (= lt!474860 (tuple2!16585 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!474866 () ListLongMap!14565)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39605)

(declare-fun getCurrentListMap!4161 (array!68638 array!68636 (_ BitVec 32) (_ BitVec 32) V!39605 V!39605 (_ BitVec 32) Int) ListLongMap!14565)

(assert (=> b!1072029 (= lt!474866 (getCurrentListMap!4161 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072029 (= lt!474868 (getCurrentListMap!4161 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072030 () Bool)

(declare-fun e!612280 () Bool)

(assert (=> b!1072030 (= e!612280 tp_is_empty!25853)))

(declare-fun b!1072031 () Bool)

(assert (=> b!1072031 (= e!612278 (not e!612279))))

(declare-fun res!715189 () Bool)

(assert (=> b!1072031 (=> res!715189 e!612279)))

(assert (=> b!1072031 (= res!715189 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!474864 () ListLongMap!14565)

(assert (=> b!1072031 (= lt!474857 lt!474864)))

(declare-fun lt!474861 () Unit!35259)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!869 (array!68638 array!68636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39605 V!39605 V!39605 V!39605 (_ BitVec 32) Int) Unit!35259)

(assert (=> b!1072031 (= lt!474861 (lemmaNoChangeToArrayThenSameMapNoExtras!869 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3830 (array!68638 array!68636 (_ BitVec 32) (_ BitVec 32) V!39605 V!39605 (_ BitVec 32) Int) ListLongMap!14565)

(assert (=> b!1072031 (= lt!474864 (getCurrentListMapNoExtraKeys!3830 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072031 (= lt!474857 (getCurrentListMapNoExtraKeys!3830 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!40489 () Bool)

(declare-fun tp!77592 () Bool)

(assert (=> mapNonEmpty!40489 (= mapRes!40489 (and tp!77592 e!612280))))

(declare-fun mapKey!40489 () (_ BitVec 32))

(declare-fun mapRest!40489 () (Array (_ BitVec 32) ValueCell!12223))

(declare-fun mapValue!40489 () ValueCell!12223)

(assert (=> mapNonEmpty!40489 (= (arr!33009 _values!955) (store mapRest!40489 mapKey!40489 mapValue!40489))))

(declare-fun b!1072032 () Bool)

(declare-fun e!612277 () Bool)

(assert (=> b!1072032 (= e!612277 tp_is_empty!25853)))

(declare-fun b!1072033 () Bool)

(declare-fun res!715187 () Bool)

(assert (=> b!1072033 (=> (not res!715187) (not e!612278))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68638 (_ BitVec 32)) Bool)

(assert (=> b!1072033 (= res!715187 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1072034 () Bool)

(assert (=> b!1072034 (= e!612282 (and e!612277 mapRes!40489))))

(declare-fun condMapEmpty!40489 () Bool)

(declare-fun mapDefault!40489 () ValueCell!12223)

