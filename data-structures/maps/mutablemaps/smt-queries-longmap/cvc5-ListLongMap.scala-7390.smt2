; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94138 () Bool)

(assert start!94138)

(declare-fun b_free!21517 () Bool)

(declare-fun b_next!21517 () Bool)

(assert (=> start!94138 (= b_free!21517 (not b_next!21517))))

(declare-fun tp!75984 () Bool)

(declare-fun b_and!34277 () Bool)

(assert (=> start!94138 (= tp!75984 b_and!34277)))

(declare-fun b!1064172 () Bool)

(declare-fun res!710540 () Bool)

(declare-fun e!606511 () Bool)

(assert (=> b!1064172 (=> (not res!710540) (not e!606511))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38905 0))(
  ( (V!38906 (val!12714 Int)) )
))
(declare-datatypes ((ValueCell!11960 0))(
  ( (ValueCellFull!11960 (v!15327 V!38905)) (EmptyCell!11960) )
))
(declare-datatypes ((array!67618 0))(
  ( (array!67619 (arr!32510 (Array (_ BitVec 32) ValueCell!11960)) (size!33047 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67618)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67620 0))(
  ( (array!67621 (arr!32511 (Array (_ BitVec 32) (_ BitVec 64))) (size!33048 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67620)

(assert (=> b!1064172 (= res!710540 (and (= (size!33047 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33048 _keys!1163) (size!33047 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39670 () Bool)

(declare-fun mapRes!39670 () Bool)

(assert (=> mapIsEmpty!39670 mapRes!39670))

(declare-fun res!710538 () Bool)

(assert (=> start!94138 (=> (not res!710538) (not e!606511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94138 (= res!710538 (validMask!0 mask!1515))))

(assert (=> start!94138 e!606511))

(assert (=> start!94138 true))

(declare-fun tp_is_empty!25327 () Bool)

(assert (=> start!94138 tp_is_empty!25327))

(declare-fun e!606515 () Bool)

(declare-fun array_inv!25012 (array!67618) Bool)

(assert (=> start!94138 (and (array_inv!25012 _values!955) e!606515)))

(assert (=> start!94138 tp!75984))

(declare-fun array_inv!25013 (array!67620) Bool)

(assert (=> start!94138 (array_inv!25013 _keys!1163)))

(declare-fun b!1064173 () Bool)

(assert (=> b!1064173 (= e!606511 (not (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!33048 _keys!1163)))))))

(declare-datatypes ((tuple2!16186 0))(
  ( (tuple2!16187 (_1!8103 (_ BitVec 64)) (_2!8103 V!38905)) )
))
(declare-datatypes ((List!22788 0))(
  ( (Nil!22785) (Cons!22784 (h!23993 tuple2!16186) (t!32110 List!22788)) )
))
(declare-datatypes ((ListLongMap!14167 0))(
  ( (ListLongMap!14168 (toList!7099 List!22788)) )
))
(declare-fun lt!469074 () ListLongMap!14167)

(declare-fun lt!469076 () ListLongMap!14167)

(assert (=> b!1064173 (= lt!469074 lt!469076)))

(declare-fun zeroValueBefore!47 () V!38905)

(declare-datatypes ((Unit!34865 0))(
  ( (Unit!34866) )
))
(declare-fun lt!469075 () Unit!34865)

(declare-fun minValue!907 () V!38905)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38905)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!692 (array!67620 array!67618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38905 V!38905 V!38905 V!38905 (_ BitVec 32) Int) Unit!34865)

(assert (=> b!1064173 (= lt!469075 (lemmaNoChangeToArrayThenSameMapNoExtras!692 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3653 (array!67620 array!67618 (_ BitVec 32) (_ BitVec 32) V!38905 V!38905 (_ BitVec 32) Int) ListLongMap!14167)

(assert (=> b!1064173 (= lt!469076 (getCurrentListMapNoExtraKeys!3653 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1064173 (= lt!469074 (getCurrentListMapNoExtraKeys!3653 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1064174 () Bool)

(declare-fun e!606512 () Bool)

(assert (=> b!1064174 (= e!606512 tp_is_empty!25327)))

(declare-fun b!1064175 () Bool)

(declare-fun res!710541 () Bool)

(assert (=> b!1064175 (=> (not res!710541) (not e!606511))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67620 (_ BitVec 32)) Bool)

(assert (=> b!1064175 (= res!710541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1064176 () Bool)

(declare-fun res!710539 () Bool)

(assert (=> b!1064176 (=> (not res!710539) (not e!606511))))

(declare-datatypes ((List!22789 0))(
  ( (Nil!22786) (Cons!22785 (h!23994 (_ BitVec 64)) (t!32111 List!22789)) )
))
(declare-fun arrayNoDuplicates!0 (array!67620 (_ BitVec 32) List!22789) Bool)

(assert (=> b!1064176 (= res!710539 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22786))))

(declare-fun mapNonEmpty!39670 () Bool)

(declare-fun tp!75983 () Bool)

(assert (=> mapNonEmpty!39670 (= mapRes!39670 (and tp!75983 e!606512))))

(declare-fun mapValue!39670 () ValueCell!11960)

(declare-fun mapKey!39670 () (_ BitVec 32))

(declare-fun mapRest!39670 () (Array (_ BitVec 32) ValueCell!11960))

(assert (=> mapNonEmpty!39670 (= (arr!32510 _values!955) (store mapRest!39670 mapKey!39670 mapValue!39670))))

(declare-fun b!1064177 () Bool)

(declare-fun e!606513 () Bool)

(assert (=> b!1064177 (= e!606515 (and e!606513 mapRes!39670))))

(declare-fun condMapEmpty!39670 () Bool)

(declare-fun mapDefault!39670 () ValueCell!11960)

