; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94570 () Bool)

(assert start!94570)

(declare-fun b_free!21839 () Bool)

(declare-fun b_next!21839 () Bool)

(assert (=> start!94570 (= b_free!21839 (not b_next!21839))))

(declare-fun tp!76968 () Bool)

(declare-fun b_and!34659 () Bool)

(assert (=> start!94570 (= tp!76968 b_and!34659)))

(declare-fun mapNonEmpty!40171 () Bool)

(declare-fun mapRes!40171 () Bool)

(declare-fun tp!76967 () Bool)

(declare-fun e!610012 () Bool)

(assert (=> mapNonEmpty!40171 (= mapRes!40171 (and tp!76967 e!610012))))

(declare-fun mapKey!40171 () (_ BitVec 32))

(declare-datatypes ((V!39333 0))(
  ( (V!39334 (val!12875 Int)) )
))
(declare-datatypes ((ValueCell!12121 0))(
  ( (ValueCellFull!12121 (v!15491 V!39333)) (EmptyCell!12121) )
))
(declare-fun mapRest!40171 () (Array (_ BitVec 32) ValueCell!12121))

(declare-datatypes ((array!68248 0))(
  ( (array!68249 (arr!32819 (Array (_ BitVec 32) ValueCell!12121)) (size!33356 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68248)

(declare-fun mapValue!40171 () ValueCell!12121)

(assert (=> mapNonEmpty!40171 (= (arr!32819 _values!955) (store mapRest!40171 mapKey!40171 mapValue!40171))))

(declare-fun mapIsEmpty!40171 () Bool)

(assert (=> mapIsEmpty!40171 mapRes!40171))

(declare-fun res!713355 () Bool)

(declare-fun e!610007 () Bool)

(assert (=> start!94570 (=> (not res!713355) (not e!610007))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94570 (= res!713355 (validMask!0 mask!1515))))

(assert (=> start!94570 e!610007))

(assert (=> start!94570 true))

(declare-fun tp_is_empty!25649 () Bool)

(assert (=> start!94570 tp_is_empty!25649))

(declare-fun e!610009 () Bool)

(declare-fun array_inv!25242 (array!68248) Bool)

(assert (=> start!94570 (and (array_inv!25242 _values!955) e!610009)))

(assert (=> start!94570 tp!76968))

(declare-datatypes ((array!68250 0))(
  ( (array!68251 (arr!32820 (Array (_ BitVec 32) (_ BitVec 64))) (size!33357 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68250)

(declare-fun array_inv!25243 (array!68250) Bool)

(assert (=> start!94570 (array_inv!25243 _keys!1163)))

(declare-fun b!1068934 () Bool)

(declare-fun e!610006 () Bool)

(assert (=> b!1068934 (= e!610007 (not e!610006))))

(declare-fun res!713353 () Bool)

(assert (=> b!1068934 (=> res!713353 e!610006)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1068934 (= res!713353 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!16432 0))(
  ( (tuple2!16433 (_1!8226 (_ BitVec 64)) (_2!8226 V!39333)) )
))
(declare-datatypes ((List!23020 0))(
  ( (Nil!23017) (Cons!23016 (h!24225 tuple2!16432) (t!32354 List!23020)) )
))
(declare-datatypes ((ListLongMap!14413 0))(
  ( (ListLongMap!14414 (toList!7222 List!23020)) )
))
(declare-fun lt!472305 () ListLongMap!14413)

(declare-fun lt!472308 () ListLongMap!14413)

(assert (=> b!1068934 (= lt!472305 lt!472308)))

(declare-fun zeroValueBefore!47 () V!39333)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39333)

(declare-fun minValue!907 () V!39333)

(declare-datatypes ((Unit!35108 0))(
  ( (Unit!35109) )
))
(declare-fun lt!472306 () Unit!35108)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!799 (array!68250 array!68248 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39333 V!39333 V!39333 V!39333 (_ BitVec 32) Int) Unit!35108)

(assert (=> b!1068934 (= lt!472306 (lemmaNoChangeToArrayThenSameMapNoExtras!799 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3760 (array!68250 array!68248 (_ BitVec 32) (_ BitVec 32) V!39333 V!39333 (_ BitVec 32) Int) ListLongMap!14413)

(assert (=> b!1068934 (= lt!472308 (getCurrentListMapNoExtraKeys!3760 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068934 (= lt!472305 (getCurrentListMapNoExtraKeys!3760 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068935 () Bool)

(declare-fun e!610011 () Bool)

(assert (=> b!1068935 (= e!610011 tp_is_empty!25649)))

(declare-fun b!1068936 () Bool)

(assert (=> b!1068936 (= e!610009 (and e!610011 mapRes!40171))))

(declare-fun condMapEmpty!40171 () Bool)

(declare-fun mapDefault!40171 () ValueCell!12121)

