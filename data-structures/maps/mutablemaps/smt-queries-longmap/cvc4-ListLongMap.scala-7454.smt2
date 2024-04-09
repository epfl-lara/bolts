; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94658 () Bool)

(assert start!94658)

(declare-fun b_free!21905 () Bool)

(declare-fun b_next!21905 () Bool)

(assert (=> start!94658 (= b_free!21905 (not b_next!21905))))

(declare-fun tp!77169 () Bool)

(declare-fun b_and!34735 () Bool)

(assert (=> start!94658 (= tp!77169 b_and!34735)))

(declare-fun b!1069840 () Bool)

(declare-fun res!713868 () Bool)

(declare-fun e!610661 () Bool)

(assert (=> b!1069840 (=> (not res!713868) (not e!610661))))

(declare-datatypes ((array!68376 0))(
  ( (array!68377 (arr!32882 (Array (_ BitVec 32) (_ BitVec 64))) (size!33419 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68376)

(declare-datatypes ((List!23069 0))(
  ( (Nil!23066) (Cons!23065 (h!24274 (_ BitVec 64)) (t!32405 List!23069)) )
))
(declare-fun arrayNoDuplicates!0 (array!68376 (_ BitVec 32) List!23069) Bool)

(assert (=> b!1069840 (= res!713868 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23066))))

(declare-fun b!1069841 () Bool)

(assert (=> b!1069841 (= e!610661 (not true))))

(declare-datatypes ((V!39421 0))(
  ( (V!39422 (val!12908 Int)) )
))
(declare-datatypes ((tuple2!16482 0))(
  ( (tuple2!16483 (_1!8251 (_ BitVec 64)) (_2!8251 V!39421)) )
))
(declare-datatypes ((List!23070 0))(
  ( (Nil!23067) (Cons!23066 (h!24275 tuple2!16482) (t!32406 List!23070)) )
))
(declare-datatypes ((ListLongMap!14463 0))(
  ( (ListLongMap!14464 (toList!7247 List!23070)) )
))
(declare-fun lt!472781 () ListLongMap!14463)

(declare-fun lt!472782 () ListLongMap!14463)

(assert (=> b!1069841 (= lt!472781 lt!472782)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39421)

(declare-datatypes ((Unit!35160 0))(
  ( (Unit!35161) )
))
(declare-fun lt!472783 () Unit!35160)

(declare-datatypes ((ValueCell!12154 0))(
  ( (ValueCellFull!12154 (v!15525 V!39421)) (EmptyCell!12154) )
))
(declare-datatypes ((array!68378 0))(
  ( (array!68379 (arr!32883 (Array (_ BitVec 32) ValueCell!12154)) (size!33420 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68378)

(declare-fun minValue!907 () V!39421)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39421)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!823 (array!68376 array!68378 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39421 V!39421 V!39421 V!39421 (_ BitVec 32) Int) Unit!35160)

(assert (=> b!1069841 (= lt!472783 (lemmaNoChangeToArrayThenSameMapNoExtras!823 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3784 (array!68376 array!68378 (_ BitVec 32) (_ BitVec 32) V!39421 V!39421 (_ BitVec 32) Int) ListLongMap!14463)

(assert (=> b!1069841 (= lt!472782 (getCurrentListMapNoExtraKeys!3784 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069841 (= lt!472781 (getCurrentListMapNoExtraKeys!3784 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069842 () Bool)

(declare-fun res!713867 () Bool)

(assert (=> b!1069842 (=> (not res!713867) (not e!610661))))

(assert (=> b!1069842 (= res!713867 (and (= (size!33420 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33419 _keys!1163) (size!33420 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069843 () Bool)

(declare-fun e!610659 () Bool)

(declare-fun e!610657 () Bool)

(declare-fun mapRes!40273 () Bool)

(assert (=> b!1069843 (= e!610659 (and e!610657 mapRes!40273))))

(declare-fun condMapEmpty!40273 () Bool)

(declare-fun mapDefault!40273 () ValueCell!12154)

