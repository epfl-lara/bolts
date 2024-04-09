; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94286 () Bool)

(assert start!94286)

(declare-fun b_free!21635 () Bool)

(declare-fun b_next!21635 () Bool)

(assert (=> start!94286 (= b_free!21635 (not b_next!21635))))

(declare-fun tp!76344 () Bool)

(declare-fun b_and!34413 () Bool)

(assert (=> start!94286 (= tp!76344 b_and!34413)))

(declare-fun b!1065831 () Bool)

(declare-fun e!607735 () Bool)

(declare-fun e!607738 () Bool)

(assert (=> b!1065831 (= e!607735 (not e!607738))))

(declare-fun res!711527 () Bool)

(assert (=> b!1065831 (=> res!711527 e!607738)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1065831 (= res!711527 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39061 0))(
  ( (V!39062 (val!12773 Int)) )
))
(declare-datatypes ((tuple2!16278 0))(
  ( (tuple2!16279 (_1!8149 (_ BitVec 64)) (_2!8149 V!39061)) )
))
(declare-datatypes ((List!22876 0))(
  ( (Nil!22873) (Cons!22872 (h!24081 tuple2!16278) (t!32202 List!22876)) )
))
(declare-datatypes ((ListLongMap!14259 0))(
  ( (ListLongMap!14260 (toList!7145 List!22876)) )
))
(declare-fun lt!470257 () ListLongMap!14259)

(declare-fun lt!470251 () ListLongMap!14259)

(assert (=> b!1065831 (= lt!470257 lt!470251)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39061)

(declare-datatypes ((Unit!34952 0))(
  ( (Unit!34953) )
))
(declare-fun lt!470255 () Unit!34952)

(declare-datatypes ((ValueCell!12019 0))(
  ( (ValueCellFull!12019 (v!15386 V!39061)) (EmptyCell!12019) )
))
(declare-datatypes ((array!67848 0))(
  ( (array!67849 (arr!32623 (Array (_ BitVec 32) ValueCell!12019)) (size!33160 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67848)

(declare-fun minValue!907 () V!39061)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39061)

(declare-datatypes ((array!67850 0))(
  ( (array!67851 (arr!32624 (Array (_ BitVec 32) (_ BitVec 64))) (size!33161 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67850)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!732 (array!67850 array!67848 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39061 V!39061 V!39061 V!39061 (_ BitVec 32) Int) Unit!34952)

(assert (=> b!1065831 (= lt!470255 (lemmaNoChangeToArrayThenSameMapNoExtras!732 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3693 (array!67850 array!67848 (_ BitVec 32) (_ BitVec 32) V!39061 V!39061 (_ BitVec 32) Int) ListLongMap!14259)

(assert (=> b!1065831 (= lt!470251 (getCurrentListMapNoExtraKeys!3693 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1065831 (= lt!470257 (getCurrentListMapNoExtraKeys!3693 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1065832 () Bool)

(declare-fun e!607732 () Bool)

(declare-fun e!607734 () Bool)

(declare-fun mapRes!39853 () Bool)

(assert (=> b!1065832 (= e!607732 (and e!607734 mapRes!39853))))

(declare-fun condMapEmpty!39853 () Bool)

(declare-fun mapDefault!39853 () ValueCell!12019)

