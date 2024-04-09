; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94326 () Bool)

(assert start!94326)

(declare-fun b_free!21653 () Bool)

(declare-fun b_next!21653 () Bool)

(assert (=> start!94326 (= b_free!21653 (not b_next!21653))))

(declare-fun tp!76400 () Bool)

(declare-fun b_and!34443 () Bool)

(assert (=> start!94326 (= tp!76400 b_and!34443)))

(declare-fun b!1066224 () Bool)

(declare-fun res!711734 () Bool)

(declare-fun e!608008 () Bool)

(assert (=> b!1066224 (=> (not res!711734) (not e!608008))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39085 0))(
  ( (V!39086 (val!12782 Int)) )
))
(declare-datatypes ((ValueCell!12028 0))(
  ( (ValueCellFull!12028 (v!15396 V!39085)) (EmptyCell!12028) )
))
(declare-datatypes ((array!67884 0))(
  ( (array!67885 (arr!32640 (Array (_ BitVec 32) ValueCell!12028)) (size!33177 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67884)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67886 0))(
  ( (array!67887 (arr!32641 (Array (_ BitVec 32) (_ BitVec 64))) (size!33178 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67886)

(assert (=> b!1066224 (= res!711734 (and (= (size!33177 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33178 _keys!1163) (size!33177 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39883 () Bool)

(declare-fun mapRes!39883 () Bool)

(assert (=> mapIsEmpty!39883 mapRes!39883))

(declare-fun b!1066225 () Bool)

(declare-fun res!711732 () Bool)

(assert (=> b!1066225 (=> (not res!711732) (not e!608008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67886 (_ BitVec 32)) Bool)

(assert (=> b!1066225 (= res!711732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066226 () Bool)

(declare-fun e!608009 () Bool)

(assert (=> b!1066226 (= e!608008 (not e!608009))))

(declare-fun res!711733 () Bool)

(assert (=> b!1066226 (=> res!711733 e!608009)))

(assert (=> b!1066226 (= res!711733 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16294 0))(
  ( (tuple2!16295 (_1!8157 (_ BitVec 64)) (_2!8157 V!39085)) )
))
(declare-datatypes ((List!22890 0))(
  ( (Nil!22887) (Cons!22886 (h!24095 tuple2!16294) (t!32218 List!22890)) )
))
(declare-datatypes ((ListLongMap!14275 0))(
  ( (ListLongMap!14276 (toList!7153 List!22890)) )
))
(declare-fun lt!470616 () ListLongMap!14275)

(declare-fun lt!470620 () ListLongMap!14275)

(assert (=> b!1066226 (= lt!470616 lt!470620)))

(declare-fun zeroValueBefore!47 () V!39085)

(declare-datatypes ((Unit!34970 0))(
  ( (Unit!34971) )
))
(declare-fun lt!470614 () Unit!34970)

(declare-fun minValue!907 () V!39085)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39085)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!740 (array!67886 array!67884 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39085 V!39085 V!39085 V!39085 (_ BitVec 32) Int) Unit!34970)

(assert (=> b!1066226 (= lt!470614 (lemmaNoChangeToArrayThenSameMapNoExtras!740 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3701 (array!67886 array!67884 (_ BitVec 32) (_ BitVec 32) V!39085 V!39085 (_ BitVec 32) Int) ListLongMap!14275)

(assert (=> b!1066226 (= lt!470620 (getCurrentListMapNoExtraKeys!3701 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066226 (= lt!470616 (getCurrentListMapNoExtraKeys!3701 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1066227 () Bool)

(declare-fun e!608010 () Bool)

(declare-fun e!608007 () Bool)

(assert (=> b!1066227 (= e!608010 (and e!608007 mapRes!39883))))

(declare-fun condMapEmpty!39883 () Bool)

(declare-fun mapDefault!39883 () ValueCell!12028)

