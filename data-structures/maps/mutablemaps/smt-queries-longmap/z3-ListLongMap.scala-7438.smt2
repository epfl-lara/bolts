; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94538 () Bool)

(assert start!94538)

(declare-fun b_free!21807 () Bool)

(declare-fun b_next!21807 () Bool)

(assert (=> start!94538 (= b_free!21807 (not b_next!21807))))

(declare-fun tp!76872 () Bool)

(declare-fun b_and!34627 () Bool)

(assert (=> start!94538 (= tp!76872 b_and!34627)))

(declare-fun b!1068502 () Bool)

(declare-fun res!713068 () Bool)

(declare-fun e!609672 () Bool)

(assert (=> b!1068502 (=> (not res!713068) (not e!609672))))

(declare-datatypes ((array!68188 0))(
  ( (array!68189 (arr!32789 (Array (_ BitVec 32) (_ BitVec 64))) (size!33326 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68188)

(declare-datatypes ((List!22997 0))(
  ( (Nil!22994) (Cons!22993 (h!24202 (_ BitVec 64)) (t!32331 List!22997)) )
))
(declare-fun arrayNoDuplicates!0 (array!68188 (_ BitVec 32) List!22997) Bool)

(assert (=> b!1068502 (= res!713068 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22994))))

(declare-fun b!1068503 () Bool)

(declare-fun res!713066 () Bool)

(assert (=> b!1068503 (=> (not res!713066) (not e!609672))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39291 0))(
  ( (V!39292 (val!12859 Int)) )
))
(declare-datatypes ((ValueCell!12105 0))(
  ( (ValueCellFull!12105 (v!15475 V!39291)) (EmptyCell!12105) )
))
(declare-datatypes ((array!68190 0))(
  ( (array!68191 (arr!32790 (Array (_ BitVec 32) ValueCell!12105)) (size!33327 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68190)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1068503 (= res!713066 (and (= (size!33327 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33326 _keys!1163) (size!33327 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1068504 () Bool)

(declare-fun e!609676 () Bool)

(declare-fun e!609671 () Bool)

(assert (=> b!1068504 (= e!609676 e!609671)))

(declare-fun res!713067 () Bool)

(assert (=> b!1068504 (=> res!713067 e!609671)))

(declare-datatypes ((tuple2!16406 0))(
  ( (tuple2!16407 (_1!8213 (_ BitVec 64)) (_2!8213 V!39291)) )
))
(declare-datatypes ((List!22998 0))(
  ( (Nil!22995) (Cons!22994 (h!24203 tuple2!16406) (t!32332 List!22998)) )
))
(declare-datatypes ((ListLongMap!14387 0))(
  ( (ListLongMap!14388 (toList!7209 List!22998)) )
))
(declare-fun lt!472066 () ListLongMap!14387)

(declare-fun contains!6312 (ListLongMap!14387 (_ BitVec 64)) Bool)

(assert (=> b!1068504 (= res!713067 (contains!6312 lt!472066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39291)

(declare-fun minValue!907 () V!39291)

(declare-fun defaultEntry!963 () Int)

(declare-fun getCurrentListMap!4101 (array!68188 array!68190 (_ BitVec 32) (_ BitVec 32) V!39291 V!39291 (_ BitVec 32) Int) ListLongMap!14387)

(assert (=> b!1068504 (= lt!472066 (getCurrentListMap!4101 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!713069 () Bool)

(assert (=> start!94538 (=> (not res!713069) (not e!609672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94538 (= res!713069 (validMask!0 mask!1515))))

(assert (=> start!94538 e!609672))

(assert (=> start!94538 true))

(declare-fun tp_is_empty!25617 () Bool)

(assert (=> start!94538 tp_is_empty!25617))

(declare-fun e!609673 () Bool)

(declare-fun array_inv!25222 (array!68190) Bool)

(assert (=> start!94538 (and (array_inv!25222 _values!955) e!609673)))

(assert (=> start!94538 tp!76872))

(declare-fun array_inv!25223 (array!68188) Bool)

(assert (=> start!94538 (array_inv!25223 _keys!1163)))

(declare-fun mapNonEmpty!40123 () Bool)

(declare-fun mapRes!40123 () Bool)

(declare-fun tp!76871 () Bool)

(declare-fun e!609675 () Bool)

(assert (=> mapNonEmpty!40123 (= mapRes!40123 (and tp!76871 e!609675))))

(declare-fun mapValue!40123 () ValueCell!12105)

(declare-fun mapRest!40123 () (Array (_ BitVec 32) ValueCell!12105))

(declare-fun mapKey!40123 () (_ BitVec 32))

(assert (=> mapNonEmpty!40123 (= (arr!32790 _values!955) (store mapRest!40123 mapKey!40123 mapValue!40123))))

(declare-fun b!1068505 () Bool)

(assert (=> b!1068505 (= e!609672 (not e!609676))))

(declare-fun res!713070 () Bool)

(assert (=> b!1068505 (=> res!713070 e!609676)))

(assert (=> b!1068505 (= res!713070 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472064 () ListLongMap!14387)

(declare-fun lt!472065 () ListLongMap!14387)

(assert (=> b!1068505 (= lt!472064 lt!472065)))

(declare-datatypes ((Unit!35084 0))(
  ( (Unit!35085) )
))
(declare-fun lt!472068 () Unit!35084)

(declare-fun zeroValueAfter!47 () V!39291)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!791 (array!68188 array!68190 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39291 V!39291 V!39291 V!39291 (_ BitVec 32) Int) Unit!35084)

(assert (=> b!1068505 (= lt!472068 (lemmaNoChangeToArrayThenSameMapNoExtras!791 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3752 (array!68188 array!68190 (_ BitVec 32) (_ BitVec 32) V!39291 V!39291 (_ BitVec 32) Int) ListLongMap!14387)

(assert (=> b!1068505 (= lt!472065 (getCurrentListMapNoExtraKeys!3752 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1068505 (= lt!472064 (getCurrentListMapNoExtraKeys!3752 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1068506 () Bool)

(declare-fun res!713065 () Bool)

(assert (=> b!1068506 (=> (not res!713065) (not e!609672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68188 (_ BitVec 32)) Bool)

(assert (=> b!1068506 (= res!713065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1068507 () Bool)

(declare-fun e!609670 () Bool)

(assert (=> b!1068507 (= e!609670 tp_is_empty!25617)))

(declare-fun b!1068508 () Bool)

(assert (=> b!1068508 (= e!609671 true)))

(declare-fun -!646 (ListLongMap!14387 (_ BitVec 64)) ListLongMap!14387)

(assert (=> b!1068508 (= (-!646 lt!472066 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472066)))

(declare-fun lt!472067 () Unit!35084)

(declare-fun removeNotPresentStillSame!55 (ListLongMap!14387 (_ BitVec 64)) Unit!35084)

(assert (=> b!1068508 (= lt!472067 (removeNotPresentStillSame!55 lt!472066 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1068509 () Bool)

(assert (=> b!1068509 (= e!609675 tp_is_empty!25617)))

(declare-fun mapIsEmpty!40123 () Bool)

(assert (=> mapIsEmpty!40123 mapRes!40123))

(declare-fun b!1068510 () Bool)

(assert (=> b!1068510 (= e!609673 (and e!609670 mapRes!40123))))

(declare-fun condMapEmpty!40123 () Bool)

(declare-fun mapDefault!40123 () ValueCell!12105)

(assert (=> b!1068510 (= condMapEmpty!40123 (= (arr!32790 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12105)) mapDefault!40123)))))

(assert (= (and start!94538 res!713069) b!1068503))

(assert (= (and b!1068503 res!713066) b!1068506))

(assert (= (and b!1068506 res!713065) b!1068502))

(assert (= (and b!1068502 res!713068) b!1068505))

(assert (= (and b!1068505 (not res!713070)) b!1068504))

(assert (= (and b!1068504 (not res!713067)) b!1068508))

(assert (= (and b!1068510 condMapEmpty!40123) mapIsEmpty!40123))

(assert (= (and b!1068510 (not condMapEmpty!40123)) mapNonEmpty!40123))

(get-info :version)

(assert (= (and mapNonEmpty!40123 ((_ is ValueCellFull!12105) mapValue!40123)) b!1068509))

(assert (= (and b!1068510 ((_ is ValueCellFull!12105) mapDefault!40123)) b!1068507))

(assert (= start!94538 b!1068510))

(declare-fun m!987205 () Bool)

(assert (=> b!1068506 m!987205))

(declare-fun m!987207 () Bool)

(assert (=> b!1068508 m!987207))

(declare-fun m!987209 () Bool)

(assert (=> b!1068508 m!987209))

(declare-fun m!987211 () Bool)

(assert (=> b!1068504 m!987211))

(declare-fun m!987213 () Bool)

(assert (=> b!1068504 m!987213))

(declare-fun m!987215 () Bool)

(assert (=> b!1068502 m!987215))

(declare-fun m!987217 () Bool)

(assert (=> start!94538 m!987217))

(declare-fun m!987219 () Bool)

(assert (=> start!94538 m!987219))

(declare-fun m!987221 () Bool)

(assert (=> start!94538 m!987221))

(declare-fun m!987223 () Bool)

(assert (=> mapNonEmpty!40123 m!987223))

(declare-fun m!987225 () Bool)

(assert (=> b!1068505 m!987225))

(declare-fun m!987227 () Bool)

(assert (=> b!1068505 m!987227))

(declare-fun m!987229 () Bool)

(assert (=> b!1068505 m!987229))

(check-sat (not b!1068502) (not b!1068505) (not b!1068508) (not b!1068506) (not mapNonEmpty!40123) (not b_next!21807) tp_is_empty!25617 (not b!1068504) (not start!94538) b_and!34627)
(check-sat b_and!34627 (not b_next!21807))
