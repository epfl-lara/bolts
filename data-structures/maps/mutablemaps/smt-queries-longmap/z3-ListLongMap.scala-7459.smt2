; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94700 () Bool)

(assert start!94700)

(declare-fun b_free!21933 () Bool)

(declare-fun b_next!21933 () Bool)

(assert (=> start!94700 (= b_free!21933 (not b_next!21933))))

(declare-fun tp!77255 () Bool)

(declare-fun b_and!34771 () Bool)

(assert (=> start!94700 (= tp!77255 b_and!34771)))

(declare-fun mapNonEmpty!40318 () Bool)

(declare-fun mapRes!40318 () Bool)

(declare-fun tp!77256 () Bool)

(declare-fun e!610959 () Bool)

(assert (=> mapNonEmpty!40318 (= mapRes!40318 (and tp!77256 e!610959))))

(declare-fun mapKey!40318 () (_ BitVec 32))

(declare-datatypes ((V!39459 0))(
  ( (V!39460 (val!12922 Int)) )
))
(declare-datatypes ((ValueCell!12168 0))(
  ( (ValueCellFull!12168 (v!15539 V!39459)) (EmptyCell!12168) )
))
(declare-fun mapValue!40318 () ValueCell!12168)

(declare-fun mapRest!40318 () (Array (_ BitVec 32) ValueCell!12168))

(declare-datatypes ((array!68430 0))(
  ( (array!68431 (arr!32908 (Array (_ BitVec 32) ValueCell!12168)) (size!33445 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68430)

(assert (=> mapNonEmpty!40318 (= (arr!32908 _values!955) (store mapRest!40318 mapKey!40318 mapValue!40318))))

(declare-fun b!1070251 () Bool)

(declare-fun e!610956 () Bool)

(declare-fun e!610955 () Bool)

(assert (=> b!1070251 (= e!610956 (and e!610955 mapRes!40318))))

(declare-fun condMapEmpty!40318 () Bool)

(declare-fun mapDefault!40318 () ValueCell!12168)

(assert (=> b!1070251 (= condMapEmpty!40318 (= (arr!32908 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12168)) mapDefault!40318)))))

(declare-fun b!1070252 () Bool)

(declare-fun e!610957 () Bool)

(assert (=> b!1070252 (= e!610957 true)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39459)

(declare-datatypes ((tuple2!16500 0))(
  ( (tuple2!16501 (_1!8260 (_ BitVec 64)) (_2!8260 V!39459)) )
))
(declare-datatypes ((List!23086 0))(
  ( (Nil!23083) (Cons!23082 (h!24291 tuple2!16500) (t!32424 List!23086)) )
))
(declare-datatypes ((ListLongMap!14481 0))(
  ( (ListLongMap!14482 (toList!7256 List!23086)) )
))
(declare-fun lt!472980 () ListLongMap!14481)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39459)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68432 0))(
  ( (array!68433 (arr!32909 (Array (_ BitVec 32) (_ BitVec 64))) (size!33446 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68432)

(declare-fun getCurrentListMap!4122 (array!68432 array!68430 (_ BitVec 32) (_ BitVec 32) V!39459 V!39459 (_ BitVec 32) Int) ListLongMap!14481)

(assert (=> b!1070252 (= lt!472980 (getCurrentListMap!4122 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40318 () Bool)

(assert (=> mapIsEmpty!40318 mapRes!40318))

(declare-fun b!1070253 () Bool)

(declare-fun e!610958 () Bool)

(assert (=> b!1070253 (= e!610958 (not e!610957))))

(declare-fun res!714098 () Bool)

(assert (=> b!1070253 (=> res!714098 e!610957)))

(assert (=> b!1070253 (= res!714098 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!472982 () ListLongMap!14481)

(declare-fun lt!472979 () ListLongMap!14481)

(assert (=> b!1070253 (= lt!472982 lt!472979)))

(declare-datatypes ((Unit!35176 0))(
  ( (Unit!35177) )
))
(declare-fun lt!472981 () Unit!35176)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39459)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!831 (array!68432 array!68430 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39459 V!39459 V!39459 V!39459 (_ BitVec 32) Int) Unit!35176)

(assert (=> b!1070253 (= lt!472981 (lemmaNoChangeToArrayThenSameMapNoExtras!831 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3792 (array!68432 array!68430 (_ BitVec 32) (_ BitVec 32) V!39459 V!39459 (_ BitVec 32) Int) ListLongMap!14481)

(assert (=> b!1070253 (= lt!472979 (getCurrentListMapNoExtraKeys!3792 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070253 (= lt!472982 (getCurrentListMapNoExtraKeys!3792 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070254 () Bool)

(declare-fun tp_is_empty!25743 () Bool)

(assert (=> b!1070254 (= e!610955 tp_is_empty!25743)))

(declare-fun res!714099 () Bool)

(assert (=> start!94700 (=> (not res!714099) (not e!610958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94700 (= res!714099 (validMask!0 mask!1515))))

(assert (=> start!94700 e!610958))

(assert (=> start!94700 true))

(assert (=> start!94700 tp_is_empty!25743))

(declare-fun array_inv!25304 (array!68430) Bool)

(assert (=> start!94700 (and (array_inv!25304 _values!955) e!610956)))

(assert (=> start!94700 tp!77255))

(declare-fun array_inv!25305 (array!68432) Bool)

(assert (=> start!94700 (array_inv!25305 _keys!1163)))

(declare-fun b!1070255 () Bool)

(declare-fun res!714100 () Bool)

(assert (=> b!1070255 (=> (not res!714100) (not e!610958))))

(assert (=> b!1070255 (= res!714100 (and (= (size!33445 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33446 _keys!1163) (size!33445 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070256 () Bool)

(declare-fun res!714101 () Bool)

(assert (=> b!1070256 (=> (not res!714101) (not e!610958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68432 (_ BitVec 32)) Bool)

(assert (=> b!1070256 (= res!714101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070257 () Bool)

(assert (=> b!1070257 (= e!610959 tp_is_empty!25743)))

(declare-fun b!1070258 () Bool)

(declare-fun res!714097 () Bool)

(assert (=> b!1070258 (=> (not res!714097) (not e!610958))))

(declare-datatypes ((List!23087 0))(
  ( (Nil!23084) (Cons!23083 (h!24292 (_ BitVec 64)) (t!32425 List!23087)) )
))
(declare-fun arrayNoDuplicates!0 (array!68432 (_ BitVec 32) List!23087) Bool)

(assert (=> b!1070258 (= res!714097 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23084))))

(assert (= (and start!94700 res!714099) b!1070255))

(assert (= (and b!1070255 res!714100) b!1070256))

(assert (= (and b!1070256 res!714101) b!1070258))

(assert (= (and b!1070258 res!714097) b!1070253))

(assert (= (and b!1070253 (not res!714098)) b!1070252))

(assert (= (and b!1070251 condMapEmpty!40318) mapIsEmpty!40318))

(assert (= (and b!1070251 (not condMapEmpty!40318)) mapNonEmpty!40318))

(get-info :version)

(assert (= (and mapNonEmpty!40318 ((_ is ValueCellFull!12168) mapValue!40318)) b!1070257))

(assert (= (and b!1070251 ((_ is ValueCellFull!12168) mapDefault!40318)) b!1070254))

(assert (= start!94700 b!1070251))

(declare-fun m!988759 () Bool)

(assert (=> b!1070253 m!988759))

(declare-fun m!988761 () Bool)

(assert (=> b!1070253 m!988761))

(declare-fun m!988763 () Bool)

(assert (=> b!1070253 m!988763))

(declare-fun m!988765 () Bool)

(assert (=> mapNonEmpty!40318 m!988765))

(declare-fun m!988767 () Bool)

(assert (=> b!1070258 m!988767))

(declare-fun m!988769 () Bool)

(assert (=> b!1070252 m!988769))

(declare-fun m!988771 () Bool)

(assert (=> b!1070256 m!988771))

(declare-fun m!988773 () Bool)

(assert (=> start!94700 m!988773))

(declare-fun m!988775 () Bool)

(assert (=> start!94700 m!988775))

(declare-fun m!988777 () Bool)

(assert (=> start!94700 m!988777))

(check-sat (not b!1070253) tp_is_empty!25743 (not b_next!21933) b_and!34771 (not mapNonEmpty!40318) (not b!1070258) (not b!1070252) (not start!94700) (not b!1070256))
(check-sat b_and!34771 (not b_next!21933))
