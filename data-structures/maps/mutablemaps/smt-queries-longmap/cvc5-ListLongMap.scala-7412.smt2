; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94322 () Bool)

(assert start!94322)

(declare-fun b_free!21649 () Bool)

(declare-fun b_next!21649 () Bool)

(assert (=> start!94322 (= b_free!21649 (not b_next!21649))))

(declare-fun tp!76389 () Bool)

(declare-fun b_and!34439 () Bool)

(assert (=> start!94322 (= tp!76389 b_and!34439)))

(declare-fun b!1066175 () Bool)

(declare-fun res!711705 () Bool)

(declare-fun e!607969 () Bool)

(assert (=> b!1066175 (=> (not res!711705) (not e!607969))))

(declare-datatypes ((array!67876 0))(
  ( (array!67877 (arr!32636 (Array (_ BitVec 32) (_ BitVec 64))) (size!33173 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67876)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67876 (_ BitVec 32)) Bool)

(assert (=> b!1066175 (= res!711705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066176 () Bool)

(declare-fun e!607972 () Bool)

(assert (=> b!1066176 (= e!607969 (not e!607972))))

(declare-fun res!711704 () Bool)

(assert (=> b!1066176 (=> res!711704 e!607972)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066176 (= res!711704 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39081 0))(
  ( (V!39082 (val!12780 Int)) )
))
(declare-datatypes ((tuple2!16290 0))(
  ( (tuple2!16291 (_1!8155 (_ BitVec 64)) (_2!8155 V!39081)) )
))
(declare-datatypes ((List!22886 0))(
  ( (Nil!22883) (Cons!22882 (h!24091 tuple2!16290) (t!32214 List!22886)) )
))
(declare-datatypes ((ListLongMap!14271 0))(
  ( (ListLongMap!14272 (toList!7151 List!22886)) )
))
(declare-fun lt!470568 () ListLongMap!14271)

(declare-fun lt!470567 () ListLongMap!14271)

(assert (=> b!1066176 (= lt!470568 lt!470567)))

(declare-fun zeroValueBefore!47 () V!39081)

(declare-fun minValue!907 () V!39081)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12026 0))(
  ( (ValueCellFull!12026 (v!15394 V!39081)) (EmptyCell!12026) )
))
(declare-datatypes ((array!67878 0))(
  ( (array!67879 (arr!32637 (Array (_ BitVec 32) ValueCell!12026)) (size!33174 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67878)

(declare-datatypes ((Unit!34966 0))(
  ( (Unit!34967) )
))
(declare-fun lt!470572 () Unit!34966)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39081)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!738 (array!67876 array!67878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39081 V!39081 V!39081 V!39081 (_ BitVec 32) Int) Unit!34966)

(assert (=> b!1066176 (= lt!470572 (lemmaNoChangeToArrayThenSameMapNoExtras!738 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3699 (array!67876 array!67878 (_ BitVec 32) (_ BitVec 32) V!39081 V!39081 (_ BitVec 32) Int) ListLongMap!14271)

(assert (=> b!1066176 (= lt!470567 (getCurrentListMapNoExtraKeys!3699 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066176 (= lt!470568 (getCurrentListMapNoExtraKeys!3699 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066177 () Bool)

(declare-fun res!711701 () Bool)

(assert (=> b!1066177 (=> (not res!711701) (not e!607969))))

(declare-datatypes ((List!22887 0))(
  ( (Nil!22884) (Cons!22883 (h!24092 (_ BitVec 64)) (t!32215 List!22887)) )
))
(declare-fun arrayNoDuplicates!0 (array!67876 (_ BitVec 32) List!22887) Bool)

(assert (=> b!1066177 (= res!711701 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22884))))

(declare-fun mapNonEmpty!39877 () Bool)

(declare-fun mapRes!39877 () Bool)

(declare-fun tp!76388 () Bool)

(declare-fun e!607973 () Bool)

(assert (=> mapNonEmpty!39877 (= mapRes!39877 (and tp!76388 e!607973))))

(declare-fun mapRest!39877 () (Array (_ BitVec 32) ValueCell!12026))

(declare-fun mapKey!39877 () (_ BitVec 32))

(declare-fun mapValue!39877 () ValueCell!12026)

(assert (=> mapNonEmpty!39877 (= (arr!32637 _values!955) (store mapRest!39877 mapKey!39877 mapValue!39877))))

(declare-fun b!1066178 () Bool)

(declare-fun e!607970 () Bool)

(declare-fun e!607974 () Bool)

(assert (=> b!1066178 (= e!607970 (and e!607974 mapRes!39877))))

(declare-fun condMapEmpty!39877 () Bool)

(declare-fun mapDefault!39877 () ValueCell!12026)

