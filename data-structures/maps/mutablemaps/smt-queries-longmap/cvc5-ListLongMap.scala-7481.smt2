; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94870 () Bool)

(assert start!94870)

(declare-fun b_free!22063 () Bool)

(declare-fun b_next!22063 () Bool)

(assert (=> start!94870 (= b_free!22063 (not b_next!22063))))

(declare-fun tp!77652 () Bool)

(declare-fun b_and!34923 () Bool)

(assert (=> start!94870 (= tp!77652 b_and!34923)))

(declare-fun b!1072297 () Bool)

(declare-fun e!612492 () Bool)

(assert (=> b!1072297 (= e!612492 true)))

(declare-datatypes ((V!39633 0))(
  ( (V!39634 (val!12987 Int)) )
))
(declare-datatypes ((tuple2!16602 0))(
  ( (tuple2!16603 (_1!8311 (_ BitVec 64)) (_2!8311 V!39633)) )
))
(declare-datatypes ((List!23181 0))(
  ( (Nil!23178) (Cons!23177 (h!24386 tuple2!16602) (t!32523 List!23181)) )
))
(declare-datatypes ((ListLongMap!14583 0))(
  ( (ListLongMap!14584 (toList!7307 List!23181)) )
))
(declare-fun lt!475253 () ListLongMap!14583)

(declare-fun lt!475247 () ListLongMap!14583)

(declare-fun -!697 (ListLongMap!14583 (_ BitVec 64)) ListLongMap!14583)

(assert (=> b!1072297 (= lt!475253 (-!697 lt!475247 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475249 () ListLongMap!14583)

(declare-fun lt!475255 () ListLongMap!14583)

(assert (=> b!1072297 (= lt!475249 lt!475255)))

(declare-fun zeroValueBefore!47 () V!39633)

(declare-datatypes ((Unit!35275 0))(
  ( (Unit!35276) )
))
(declare-fun lt!475246 () Unit!35275)

(declare-fun minValue!907 () V!39633)

(declare-fun lt!475254 () ListLongMap!14583)

(declare-fun addCommutativeForDiffKeys!741 (ListLongMap!14583 (_ BitVec 64) V!39633 (_ BitVec 64) V!39633) Unit!35275)

(assert (=> b!1072297 (= lt!475246 (addCommutativeForDiffKeys!741 lt!475254 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475252 () ListLongMap!14583)

(assert (=> b!1072297 (= (-!697 lt!475255 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475252)))

(declare-fun lt!475257 () tuple2!16602)

(declare-fun +!3162 (ListLongMap!14583 tuple2!16602) ListLongMap!14583)

(assert (=> b!1072297 (= lt!475255 (+!3162 lt!475252 lt!475257))))

(declare-fun lt!475251 () Unit!35275)

(declare-fun addThenRemoveForNewKeyIsSame!71 (ListLongMap!14583 (_ BitVec 64) V!39633) Unit!35275)

(assert (=> b!1072297 (= lt!475251 (addThenRemoveForNewKeyIsSame!71 lt!475252 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!475258 () tuple2!16602)

(assert (=> b!1072297 (= lt!475252 (+!3162 lt!475254 lt!475258))))

(declare-fun e!612490 () Bool)

(assert (=> b!1072297 e!612490))

(declare-fun res!715367 () Bool)

(assert (=> b!1072297 (=> (not res!715367) (not e!612490))))

(assert (=> b!1072297 (= res!715367 (= lt!475247 lt!475249))))

(assert (=> b!1072297 (= lt!475249 (+!3162 (+!3162 lt!475254 lt!475257) lt!475258))))

(assert (=> b!1072297 (= lt!475258 (tuple2!16603 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072297 (= lt!475257 (tuple2!16603 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun lt!475250 () ListLongMap!14583)

(declare-datatypes ((ValueCell!12233 0))(
  ( (ValueCellFull!12233 (v!15605 V!39633)) (EmptyCell!12233) )
))
(declare-datatypes ((array!68674 0))(
  ( (array!68675 (arr!33028 (Array (_ BitVec 32) ValueCell!12233)) (size!33565 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68674)

(declare-datatypes ((array!68676 0))(
  ( (array!68677 (arr!33029 (Array (_ BitVec 32) (_ BitVec 64))) (size!33566 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68676)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39633)

(declare-fun getCurrentListMap!4169 (array!68676 array!68674 (_ BitVec 32) (_ BitVec 32) V!39633 V!39633 (_ BitVec 32) Int) ListLongMap!14583)

(assert (=> b!1072297 (= lt!475250 (getCurrentListMap!4169 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072297 (= lt!475247 (getCurrentListMap!4169 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072298 () Bool)

(declare-fun res!715371 () Bool)

(declare-fun e!612488 () Bool)

(assert (=> b!1072298 (=> (not res!715371) (not e!612488))))

(assert (=> b!1072298 (= res!715371 (and (= (size!33565 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33566 _keys!1163) (size!33565 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072299 () Bool)

(declare-fun res!715369 () Bool)

(assert (=> b!1072299 (=> (not res!715369) (not e!612488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68676 (_ BitVec 32)) Bool)

(assert (=> b!1072299 (= res!715369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!715366 () Bool)

(assert (=> start!94870 (=> (not res!715366) (not e!612488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94870 (= res!715366 (validMask!0 mask!1515))))

(assert (=> start!94870 e!612488))

(assert (=> start!94870 true))

(declare-fun tp_is_empty!25873 () Bool)

(assert (=> start!94870 tp_is_empty!25873))

(declare-fun e!612491 () Bool)

(declare-fun array_inv!25390 (array!68674) Bool)

(assert (=> start!94870 (and (array_inv!25390 _values!955) e!612491)))

(assert (=> start!94870 tp!77652))

(declare-fun array_inv!25391 (array!68676) Bool)

(assert (=> start!94870 (array_inv!25391 _keys!1163)))

(declare-fun b!1072300 () Bool)

(declare-fun e!612489 () Bool)

(assert (=> b!1072300 (= e!612489 tp_is_empty!25873)))

(declare-fun b!1072301 () Bool)

(declare-fun e!612493 () Bool)

(assert (=> b!1072301 (= e!612493 tp_is_empty!25873)))

(declare-fun b!1072302 () Bool)

(assert (=> b!1072302 (= e!612488 (not e!612492))))

(declare-fun res!715368 () Bool)

(assert (=> b!1072302 (=> res!715368 e!612492)))

(assert (=> b!1072302 (= res!715368 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!475248 () ListLongMap!14583)

(assert (=> b!1072302 (= lt!475254 lt!475248)))

(declare-fun lt!475256 () Unit!35275)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!876 (array!68676 array!68674 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39633 V!39633 V!39633 V!39633 (_ BitVec 32) Int) Unit!35275)

(assert (=> b!1072302 (= lt!475256 (lemmaNoChangeToArrayThenSameMapNoExtras!876 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3837 (array!68676 array!68674 (_ BitVec 32) (_ BitVec 32) V!39633 V!39633 (_ BitVec 32) Int) ListLongMap!14583)

(assert (=> b!1072302 (= lt!475248 (getCurrentListMapNoExtraKeys!3837 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072302 (= lt!475254 (getCurrentListMapNoExtraKeys!3837 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072303 () Bool)

(declare-fun mapRes!40519 () Bool)

(assert (=> b!1072303 (= e!612491 (and e!612493 mapRes!40519))))

(declare-fun condMapEmpty!40519 () Bool)

(declare-fun mapDefault!40519 () ValueCell!12233)

