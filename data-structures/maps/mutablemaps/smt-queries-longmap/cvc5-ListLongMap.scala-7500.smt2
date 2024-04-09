; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95078 () Bool)

(assert start!95078)

(declare-fun b_free!22177 () Bool)

(declare-fun b_next!22177 () Bool)

(assert (=> start!95078 (= b_free!22177 (not b_next!22177))))

(declare-fun tp!78008 () Bool)

(declare-fun b_and!35091 () Bool)

(assert (=> start!95078 (= tp!78008 b_and!35091)))

(declare-fun res!716486 () Bool)

(declare-fun e!613957 () Bool)

(assert (=> start!95078 (=> (not res!716486) (not e!613957))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95078 (= res!716486 (validMask!0 mask!1515))))

(assert (=> start!95078 e!613957))

(assert (=> start!95078 true))

(declare-fun tp_is_empty!25987 () Bool)

(assert (=> start!95078 tp_is_empty!25987))

(declare-datatypes ((V!39785 0))(
  ( (V!39786 (val!13044 Int)) )
))
(declare-datatypes ((ValueCell!12290 0))(
  ( (ValueCellFull!12290 (v!15666 V!39785)) (EmptyCell!12290) )
))
(declare-datatypes ((array!68904 0))(
  ( (array!68905 (arr!33138 (Array (_ BitVec 32) ValueCell!12290)) (size!33675 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68904)

(declare-fun e!613953 () Bool)

(declare-fun array_inv!25464 (array!68904) Bool)

(assert (=> start!95078 (and (array_inv!25464 _values!955) e!613953)))

(assert (=> start!95078 tp!78008))

(declare-datatypes ((array!68906 0))(
  ( (array!68907 (arr!33139 (Array (_ BitVec 32) (_ BitVec 64))) (size!33676 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68906)

(declare-fun array_inv!25465 (array!68906) Bool)

(assert (=> start!95078 (array_inv!25465 _keys!1163)))

(declare-fun zeroValueBefore!47 () V!39785)

(declare-fun b!1074391 () Bool)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39785)

(declare-fun e!613956 () Bool)

(declare-datatypes ((tuple2!16682 0))(
  ( (tuple2!16683 (_1!8351 (_ BitVec 64)) (_2!8351 V!39785)) )
))
(declare-datatypes ((List!23257 0))(
  ( (Nil!23254) (Cons!23253 (h!24462 tuple2!16682) (t!32609 List!23257)) )
))
(declare-datatypes ((ListLongMap!14663 0))(
  ( (ListLongMap!14664 (toList!7347 List!23257)) )
))
(declare-fun lt!476634 () ListLongMap!14663)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMap!4185 (array!68906 array!68904 (_ BitVec 32) (_ BitVec 32) V!39785 V!39785 (_ BitVec 32) Int) ListLongMap!14663)

(declare-fun +!3176 (ListLongMap!14663 tuple2!16682) ListLongMap!14663)

(assert (=> b!1074391 (= e!613956 (= (getCurrentListMap!4185 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3176 lt!476634 (tuple2!16683 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun mapNonEmpty!40705 () Bool)

(declare-fun mapRes!40705 () Bool)

(declare-fun tp!78009 () Bool)

(declare-fun e!613960 () Bool)

(assert (=> mapNonEmpty!40705 (= mapRes!40705 (and tp!78009 e!613960))))

(declare-fun mapRest!40705 () (Array (_ BitVec 32) ValueCell!12290))

(declare-fun mapValue!40705 () ValueCell!12290)

(declare-fun mapKey!40705 () (_ BitVec 32))

(assert (=> mapNonEmpty!40705 (= (arr!33138 _values!955) (store mapRest!40705 mapKey!40705 mapValue!40705))))

(declare-fun b!1074392 () Bool)

(assert (=> b!1074392 (= e!613960 tp_is_empty!25987)))

(declare-fun b!1074393 () Bool)

(declare-fun e!613958 () Bool)

(assert (=> b!1074393 (= e!613958 tp_is_empty!25987)))

(declare-fun b!1074394 () Bool)

(declare-fun e!613954 () Bool)

(assert (=> b!1074394 (= e!613957 (not e!613954))))

(declare-fun res!716487 () Bool)

(assert (=> b!1074394 (=> res!716487 e!613954)))

(assert (=> b!1074394 (= res!716487 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!613959 () Bool)

(assert (=> b!1074394 e!613959))

(declare-fun res!716488 () Bool)

(assert (=> b!1074394 (=> (not res!716488) (not e!613959))))

(declare-fun lt!476635 () ListLongMap!14663)

(assert (=> b!1074394 (= res!716488 (= lt!476634 lt!476635))))

(declare-datatypes ((Unit!35320 0))(
  ( (Unit!35321) )
))
(declare-fun lt!476636 () Unit!35320)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39785)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!893 (array!68906 array!68904 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39785 V!39785 V!39785 V!39785 (_ BitVec 32) Int) Unit!35320)

(assert (=> b!1074394 (= lt!476636 (lemmaNoChangeToArrayThenSameMapNoExtras!893 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3874 (array!68906 array!68904 (_ BitVec 32) (_ BitVec 32) V!39785 V!39785 (_ BitVec 32) Int) ListLongMap!14663)

(assert (=> b!1074394 (= lt!476635 (getCurrentListMapNoExtraKeys!3874 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074394 (= lt!476634 (getCurrentListMapNoExtraKeys!3874 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074395 () Bool)

(assert (=> b!1074395 (= e!613959 e!613956)))

(declare-fun res!716491 () Bool)

(assert (=> b!1074395 (=> res!716491 e!613956)))

(assert (=> b!1074395 (= res!716491 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074396 () Bool)

(assert (=> b!1074396 (= e!613953 (and e!613958 mapRes!40705))))

(declare-fun condMapEmpty!40705 () Bool)

(declare-fun mapDefault!40705 () ValueCell!12290)

