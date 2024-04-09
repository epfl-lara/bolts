; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94268 () Bool)

(assert start!94268)

(declare-fun b_free!21617 () Bool)

(declare-fun b_next!21617 () Bool)

(assert (=> start!94268 (= b_free!21617 (not b_next!21617))))

(declare-fun tp!76290 () Bool)

(declare-fun b_and!34395 () Bool)

(assert (=> start!94268 (= tp!76290 b_and!34395)))

(declare-fun b!1065607 () Bool)

(declare-fun e!607564 () Bool)

(declare-fun e!607563 () Bool)

(assert (=> b!1065607 (= e!607564 (not e!607563))))

(declare-fun res!711381 () Bool)

(assert (=> b!1065607 (=> res!711381 e!607563)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065607 (= res!711381 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39037 0))(
  ( (V!39038 (val!12764 Int)) )
))
(declare-datatypes ((tuple2!16262 0))(
  ( (tuple2!16263 (_1!8141 (_ BitVec 64)) (_2!8141 V!39037)) )
))
(declare-datatypes ((List!22862 0))(
  ( (Nil!22859) (Cons!22858 (h!24067 tuple2!16262) (t!32188 List!22862)) )
))
(declare-datatypes ((ListLongMap!14243 0))(
  ( (ListLongMap!14244 (toList!7137 List!22862)) )
))
(declare-fun lt!470044 () ListLongMap!14243)

(declare-fun lt!470048 () ListLongMap!14243)

(assert (=> b!1065607 (= lt!470044 lt!470048)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39037)

(declare-datatypes ((Unit!34936 0))(
  ( (Unit!34937) )
))
(declare-fun lt!470043 () Unit!34936)

(declare-datatypes ((ValueCell!12010 0))(
  ( (ValueCellFull!12010 (v!15377 V!39037)) (EmptyCell!12010) )
))
(declare-datatypes ((array!67812 0))(
  ( (array!67813 (arr!32605 (Array (_ BitVec 32) ValueCell!12010)) (size!33142 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67812)

(declare-fun minValue!907 () V!39037)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39037)

(declare-datatypes ((array!67814 0))(
  ( (array!67815 (arr!32606 (Array (_ BitVec 32) (_ BitVec 64))) (size!33143 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67814)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!725 (array!67814 array!67812 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39037 V!39037 V!39037 V!39037 (_ BitVec 32) Int) Unit!34936)

(assert (=> b!1065607 (= lt!470043 (lemmaNoChangeToArrayThenSameMapNoExtras!725 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3686 (array!67814 array!67812 (_ BitVec 32) (_ BitVec 32) V!39037 V!39037 (_ BitVec 32) Int) ListLongMap!14243)

(assert (=> b!1065607 (= lt!470048 (getCurrentListMapNoExtraKeys!3686 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065607 (= lt!470044 (getCurrentListMapNoExtraKeys!3686 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065608 () Bool)

(declare-fun res!711382 () Bool)

(assert (=> b!1065608 (=> (not res!711382) (not e!607564))))

(assert (=> b!1065608 (= res!711382 (and (= (size!33142 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33143 _keys!1163) (size!33142 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1065609 () Bool)

(declare-fun e!607566 () Bool)

(declare-fun tp_is_empty!25427 () Bool)

(assert (=> b!1065609 (= e!607566 tp_is_empty!25427)))

(declare-fun b!1065610 () Bool)

(declare-fun e!607567 () Bool)

(declare-fun mapRes!39826 () Bool)

(assert (=> b!1065610 (= e!607567 (and e!607566 mapRes!39826))))

(declare-fun condMapEmpty!39826 () Bool)

(declare-fun mapDefault!39826 () ValueCell!12010)

