; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94640 () Bool)

(assert start!94640)

(declare-fun b_free!21887 () Bool)

(declare-fun b_next!21887 () Bool)

(assert (=> start!94640 (= b_free!21887 (not b_next!21887))))

(declare-fun tp!77114 () Bool)

(declare-fun b_and!34717 () Bool)

(assert (=> start!94640 (= tp!77114 b_and!34717)))

(declare-fun b!1069651 () Bool)

(declare-fun e!610526 () Bool)

(declare-fun tp_is_empty!25697 () Bool)

(assert (=> b!1069651 (= e!610526 tp_is_empty!25697)))

(declare-fun b!1069652 () Bool)

(declare-fun res!713761 () Bool)

(declare-fun e!610525 () Bool)

(assert (=> b!1069652 (=> (not res!713761) (not e!610525))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39397 0))(
  ( (V!39398 (val!12899 Int)) )
))
(declare-datatypes ((ValueCell!12145 0))(
  ( (ValueCellFull!12145 (v!15516 V!39397)) (EmptyCell!12145) )
))
(declare-datatypes ((array!68342 0))(
  ( (array!68343 (arr!32865 (Array (_ BitVec 32) ValueCell!12145)) (size!33402 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68342)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68344 0))(
  ( (array!68345 (arr!32866 (Array (_ BitVec 32) (_ BitVec 64))) (size!33403 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68344)

(assert (=> b!1069652 (= res!713761 (and (= (size!33402 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33403 _keys!1163) (size!33402 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069653 () Bool)

(assert (=> b!1069653 (= e!610525 (not true))))

(declare-datatypes ((tuple2!16468 0))(
  ( (tuple2!16469 (_1!8244 (_ BitVec 64)) (_2!8244 V!39397)) )
))
(declare-datatypes ((List!23056 0))(
  ( (Nil!23053) (Cons!23052 (h!24261 tuple2!16468) (t!32392 List!23056)) )
))
(declare-datatypes ((ListLongMap!14449 0))(
  ( (ListLongMap!14450 (toList!7240 List!23056)) )
))
(declare-fun lt!472700 () ListLongMap!14449)

(declare-fun lt!472701 () ListLongMap!14449)

(assert (=> b!1069653 (= lt!472700 lt!472701)))

(declare-fun zeroValueBefore!47 () V!39397)

(declare-fun minValue!907 () V!39397)

(declare-datatypes ((Unit!35146 0))(
  ( (Unit!35147) )
))
(declare-fun lt!472702 () Unit!35146)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39397)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!816 (array!68344 array!68342 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39397 V!39397 V!39397 V!39397 (_ BitVec 32) Int) Unit!35146)

(assert (=> b!1069653 (= lt!472702 (lemmaNoChangeToArrayThenSameMapNoExtras!816 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3777 (array!68344 array!68342 (_ BitVec 32) (_ BitVec 32) V!39397 V!39397 (_ BitVec 32) Int) ListLongMap!14449)

(assert (=> b!1069653 (= lt!472701 (getCurrentListMapNoExtraKeys!3777 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069653 (= lt!472700 (getCurrentListMapNoExtraKeys!3777 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40246 () Bool)

(declare-fun mapRes!40246 () Bool)

(assert (=> mapIsEmpty!40246 mapRes!40246))

(declare-fun res!713759 () Bool)

(assert (=> start!94640 (=> (not res!713759) (not e!610525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94640 (= res!713759 (validMask!0 mask!1515))))

(assert (=> start!94640 e!610525))

(assert (=> start!94640 true))

(assert (=> start!94640 tp_is_empty!25697))

(declare-fun e!610524 () Bool)

(declare-fun array_inv!25278 (array!68342) Bool)

(assert (=> start!94640 (and (array_inv!25278 _values!955) e!610524)))

(assert (=> start!94640 tp!77114))

(declare-fun array_inv!25279 (array!68344) Bool)

(assert (=> start!94640 (array_inv!25279 _keys!1163)))

(declare-fun b!1069654 () Bool)

(assert (=> b!1069654 (= e!610524 (and e!610526 mapRes!40246))))

(declare-fun condMapEmpty!40246 () Bool)

(declare-fun mapDefault!40246 () ValueCell!12145)

