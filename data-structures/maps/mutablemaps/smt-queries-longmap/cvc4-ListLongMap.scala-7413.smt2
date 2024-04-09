; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94332 () Bool)

(assert start!94332)

(declare-fun b_free!21659 () Bool)

(declare-fun b_next!21659 () Bool)

(assert (=> start!94332 (= b_free!21659 (not b_next!21659))))

(declare-fun tp!76418 () Bool)

(declare-fun b_and!34449 () Bool)

(assert (=> start!94332 (= tp!76418 b_and!34449)))

(declare-fun b!1066295 () Bool)

(declare-fun res!711779 () Bool)

(declare-fun e!608061 () Bool)

(assert (=> b!1066295 (=> (not res!711779) (not e!608061))))

(declare-datatypes ((array!67896 0))(
  ( (array!67897 (arr!32646 (Array (_ BitVec 32) (_ BitVec 64))) (size!33183 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67896)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67896 (_ BitVec 32)) Bool)

(assert (=> b!1066295 (= res!711779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1066296 () Bool)

(declare-fun res!711776 () Bool)

(assert (=> b!1066296 (=> (not res!711776) (not e!608061))))

(declare-datatypes ((List!22895 0))(
  ( (Nil!22892) (Cons!22891 (h!24100 (_ BitVec 64)) (t!32223 List!22895)) )
))
(declare-fun arrayNoDuplicates!0 (array!67896 (_ BitVec 32) List!22895) Bool)

(assert (=> b!1066296 (= res!711776 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22892))))

(declare-fun mapIsEmpty!39892 () Bool)

(declare-fun mapRes!39892 () Bool)

(assert (=> mapIsEmpty!39892 mapRes!39892))

(declare-fun b!1066297 () Bool)

(declare-fun e!608059 () Bool)

(assert (=> b!1066297 (= e!608059 true)))

(declare-datatypes ((V!39093 0))(
  ( (V!39094 (val!12785 Int)) )
))
(declare-datatypes ((tuple2!16300 0))(
  ( (tuple2!16301 (_1!8160 (_ BitVec 64)) (_2!8160 V!39093)) )
))
(declare-datatypes ((List!22896 0))(
  ( (Nil!22893) (Cons!22892 (h!24101 tuple2!16300) (t!32224 List!22896)) )
))
(declare-datatypes ((ListLongMap!14281 0))(
  ( (ListLongMap!14282 (toList!7156 List!22896)) )
))
(declare-fun lt!470688 () ListLongMap!14281)

(declare-fun lt!470689 () ListLongMap!14281)

(declare-fun -!616 (ListLongMap!14281 (_ BitVec 64)) ListLongMap!14281)

(assert (=> b!1066297 (= lt!470688 (-!616 lt!470689 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!470685 () ListLongMap!14281)

(declare-fun lt!470691 () ListLongMap!14281)

(assert (=> b!1066297 (= (-!616 lt!470685 #b0000000000000000000000000000000000000000000000000000000000000000) lt!470691)))

(declare-datatypes ((Unit!34976 0))(
  ( (Unit!34977) )
))
(declare-fun lt!470686 () Unit!34976)

(declare-fun zeroValueBefore!47 () V!39093)

(declare-fun addThenRemoveForNewKeyIsSame!25 (ListLongMap!14281 (_ BitVec 64) V!39093) Unit!34976)

(assert (=> b!1066297 (= lt!470686 (addThenRemoveForNewKeyIsSame!25 lt!470691 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun lt!470692 () ListLongMap!14281)

(declare-fun lt!470687 () ListLongMap!14281)

(assert (=> b!1066297 (and (= lt!470689 lt!470685) (= lt!470692 lt!470687))))

(declare-fun +!3107 (ListLongMap!14281 tuple2!16300) ListLongMap!14281)

(assert (=> b!1066297 (= lt!470685 (+!3107 lt!470691 (tuple2!16301 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(declare-datatypes ((ValueCell!12031 0))(
  ( (ValueCellFull!12031 (v!15399 V!39093)) (EmptyCell!12031) )
))
(declare-datatypes ((array!67898 0))(
  ( (array!67899 (arr!32647 (Array (_ BitVec 32) ValueCell!12031)) (size!33184 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67898)

(declare-fun minValue!907 () V!39093)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39093)

(declare-fun getCurrentListMap!4070 (array!67896 array!67898 (_ BitVec 32) (_ BitVec 32) V!39093 V!39093 (_ BitVec 32) Int) ListLongMap!14281)

(assert (=> b!1066297 (= lt!470692 (getCurrentListMap!4070 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1066297 (= lt!470689 (getCurrentListMap!4070 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!711778 () Bool)

(assert (=> start!94332 (=> (not res!711778) (not e!608061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94332 (= res!711778 (validMask!0 mask!1515))))

(assert (=> start!94332 e!608061))

(assert (=> start!94332 true))

(declare-fun tp_is_empty!25469 () Bool)

(assert (=> start!94332 tp_is_empty!25469))

(declare-fun e!608062 () Bool)

(declare-fun array_inv!25112 (array!67898) Bool)

(assert (=> start!94332 (and (array_inv!25112 _values!955) e!608062)))

(assert (=> start!94332 tp!76418))

(declare-fun array_inv!25113 (array!67896) Bool)

(assert (=> start!94332 (array_inv!25113 _keys!1163)))

(declare-fun b!1066298 () Bool)

(declare-fun e!608064 () Bool)

(assert (=> b!1066298 (= e!608064 tp_is_empty!25469)))

(declare-fun b!1066299 () Bool)

(declare-fun res!711777 () Bool)

(assert (=> b!1066299 (=> (not res!711777) (not e!608061))))

(assert (=> b!1066299 (= res!711777 (and (= (size!33184 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33183 _keys!1163) (size!33184 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1066300 () Bool)

(assert (=> b!1066300 (= e!608061 (not e!608059))))

(declare-fun res!711780 () Bool)

(assert (=> b!1066300 (=> res!711780 e!608059)))

(assert (=> b!1066300 (= res!711780 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1066300 (= lt!470691 lt!470687)))

(declare-fun lt!470690 () Unit!34976)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!742 (array!67896 array!67898 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39093 V!39093 V!39093 V!39093 (_ BitVec 32) Int) Unit!34976)

(assert (=> b!1066300 (= lt!470690 (lemmaNoChangeToArrayThenSameMapNoExtras!742 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3703 (array!67896 array!67898 (_ BitVec 32) (_ BitVec 32) V!39093 V!39093 (_ BitVec 32) Int) ListLongMap!14281)

(assert (=> b!1066300 (= lt!470687 (getCurrentListMapNoExtraKeys!3703 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1066300 (= lt!470691 (getCurrentListMapNoExtraKeys!3703 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39892 () Bool)

(declare-fun tp!76419 () Bool)

(assert (=> mapNonEmpty!39892 (= mapRes!39892 (and tp!76419 e!608064))))

(declare-fun mapValue!39892 () ValueCell!12031)

(declare-fun mapKey!39892 () (_ BitVec 32))

(declare-fun mapRest!39892 () (Array (_ BitVec 32) ValueCell!12031))

(assert (=> mapNonEmpty!39892 (= (arr!32647 _values!955) (store mapRest!39892 mapKey!39892 mapValue!39892))))

(declare-fun b!1066301 () Bool)

(declare-fun e!608063 () Bool)

(assert (=> b!1066301 (= e!608063 tp_is_empty!25469)))

(declare-fun b!1066302 () Bool)

(assert (=> b!1066302 (= e!608062 (and e!608063 mapRes!39892))))

(declare-fun condMapEmpty!39892 () Bool)

(declare-fun mapDefault!39892 () ValueCell!12031)

